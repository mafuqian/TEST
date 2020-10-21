CREATE OR REPLACE PROCEDURE "SP_ODS_MBT_120"(ERRCODE IN OUT VARCHAR,
                                             ERRMSG IN OUT VARCHAR,
                                             TABLE_KEY IN VARCHAR2,
                                             RPT_DATE_CODE_OUT IN OUT VARCHAR2) AS
    DSC         VARCHAR2(1000);
    BEGINTIME   VARCHAR2(20);
    ENDTIME     VARCHAR2(20);
    CURRENTDATE VARCHAR2(8);
    CURRENTTIME VARCHAR2(14);
    V_T_DATE    VARCHAR2(8);
    ODS_COUNT   INT;

BEGIN
    CURRENTDATE := TO_CHAR(SYSDATE, 'YYYYMMDD');
    CURRENTTIME := TO_CHAR(SYSDATE, 'YYYYMMDDHH24MISS');
    BEGINTIME := TO_CHAR(SYSDATE, 'YYYY-MM-DD HH24:MI:SS');

    DSC := '##=======MBT120存储过程==开始' || BEGINTIME || '========##';
    DBMS_OUTPUT.PUT_LINE(DSC);
    BEGIN
        DSC := '##初始化##';
        DBMS_OUTPUT.PUT_LINE(DSC);
        BEGIN
            V_T_DATE := GET_WORKDAY(CURRENTDATE);
        END;
        /**
          以【A证件类型、A证件号码、B证件类型、B证件号码、信息来源编码】为业务标识
          如果不确定业务标识，此报表就只有新增情况
         */
        IF TABLE_KEY IS NOT NULL THEN
            DSC := '##计算上报标识##';
            DBMS_OUTPUT.PUT_LINE(DSC);
            BEGIN
                MERGE INTO MBT_120 T1
                USING (SELECT A.*,
                              CASE
                                  WHEN TRIM(A.NAME || A.FAM_MEM_NAME || A.FAM_REL || A.FAM_RELA_ASS_FLAG) IS NOT NULL
                                      THEN
                                      CASE
                                          WHEN B.DATA_ID IS NOT NULL AND
                                               nvl(B.NAME || B.FAM_MEM_NAME || B.FAM_REL || B.FAM_RELA_ASS_FLAG, 0) <>
                                               nvl(A.NAME || A.FAM_MEM_NAME || A.FAM_REL || A.FAM_RELA_ASS_FLAG, 0)
                                              THEN
                                              '1'
                                          ELSE
                                              '0'
                                          END

                                  ELSE
                                      '0'
                                  END AS UPDATE_FLAG
                       FROM ODS_MBT_120 A
                                LEFT JOIN (SELECT *
                                           FROM (SELECT T.*,
                                                        ROW_NUMBER()
                                                                OVER (PARTITION BY ID_TYPE, ID_NUM, FAM_MEM_CET_TYPE, FAM_MEM_CERT_NUM, INF_SURC_CODE ORDER BY T.RPT_DATE DESC) RM
                                                 FROM MBT_120_RPT T)
                                           WHERE RM = 1) B
                                          ON A.ID_TYPE = B.ID_TYPE
                                              AND A.ID_NUM = B.ID_NUM
                                              AND A.FAM_MEM_CET_TYPE = B.FAM_MEM_CET_TYPE
                                              AND A.FAM_MEM_CERT_NUM = B.FAM_MEM_CERT_NUM
                                              AND A.INF_SURC_CODE = B.INF_SURC_CODE
                ) T2
                ON (T1.ID_TYPE = T2.ID_TYPE AND T1.ID_NUM = T2.ID_NUM AND T1.FAM_MEM_CET_TYPE = T2.FAM_MEM_CET_TYPE AND
                    T1.FAM_MEM_CERT_NUM = T2.FAM_MEM_CERT_NUM AND T1.INF_SURC_CODE = T2.INF_SURC_CODE)
                WHEN MATCHED THEN
                    UPDATE SET T1.IS_RPT = T2.UPDATE_FLAG;
            END;

        ELSE
            DSC := '##ods数据处理##';
            DBMS_OUTPUT.PUT_LINE(DSC);
            BEGIN
                SELECT COUNT(*) INTO ODS_COUNT FROM ODS_MBT_120;
                IF ODS_COUNT = 0 THEN
                    DSC := '##ods没有数据##';
                    DBMS_OUTPUT.PUT_LINE(DSC);
                ELSE

                    DSC := '##备份数据[MBT_120_TODAY_BAK]##';
                    DBMS_OUTPUT.PUT_LINE(DSC);
                    BEGIN
                        EXECUTE IMMEDIATE 'TRUNCATE TABLE MBT_120_TODAY_BAK';
                        INSERT INTO MBT_120_TODAY_BAK
                        SELECT *
                        FROM MBT_120;
                    END;

                    DSC := '##数据新增或修改，计算上报标识##';
                    DBMS_OUTPUT.PUT_LINE(DSC);
                    BEGIN
                        MERGE INTO MBT_120 T1
                        USING (SELECT A.*,
                                      --ods的数据在mbt中没有
                                      --计算段上报标识,段有值标识为1，没值标识为0
                                      CASE
                                          WHEN D.DATA_ID IS NULL AND
                                               TRIM(A.NAME || A.FAM_MEM_NAME || A.FAM_REL || A.FAM_RELA_ASS_FLAG) IS NULL
                                              THEN
                                              '0'
                                          ELSE
                                              '1'
                                          END                                             AS N_UPDATE_FLAG,
                                      --初始化机构
                                      CASE WHEN D.DATA_ID IS NULL THEN E.SECTION_CODE END AS SECTION_CODE,
                                      --ods的数据在mbt中有
                                      --计算段上报标识
                                      CASE
                                          WHEN nvl(B.NAME || B.FAM_MEM_NAME || B.FAM_REL || B.FAM_RELA_ASS_FLAG, 0) <>
                                               nvl(A.NAME || A.FAM_MEM_NAME || A.FAM_REL || A.FAM_RELA_ASS_FLAG, 0)
                                              THEN
                                              CASE
                                                  WHEN nvl(C.NAME || C.FAM_MEM_NAME || C.FAM_REL || C.FAM_RELA_ASS_FLAG, 0) <>
                                                       nvl(A.NAME || A.FAM_MEM_NAME || A.FAM_REL || A.FAM_RELA_ASS_FLAG, 0)
                                                      THEN
                                                      '1'
                                                  ELSE
                                                      '0'
                                                  END
                                          ELSE
                                              '0'
                                          END                                             AS UPDATE_FLAG
                               FROM ODS_MBT_120 A
                                        LEFT JOIN (SELECT *
                                                   FROM (SELECT T.*,
                                                                ROW_NUMBER()
                                                                        OVER (PARTITION BY ID_TYPE, ID_NUM, FAM_MEM_CET_TYPE, FAM_MEM_CERT_NUM, INF_SURC_CODE ORDER BY T.DATA_LOAD_TIME DESC) RM
                                                         FROM ODS_MBT_120_HIS T)
                                                   WHERE RM = 1) B
                                                  ON A.ID_TYPE = B.ID_TYPE
                                                      AND A.ID_NUM = B.ID_NUM
                                                      AND A.FAM_MEM_CET_TYPE = B.FAM_MEM_CET_TYPE
                                                      AND A.FAM_MEM_CERT_NUM = B.FAM_MEM_CERT_NUM
                                                      AND A.INF_SURC_CODE = B.INF_SURC_CODE
                                        LEFT JOIN (SELECT *
                                                   FROM (SELECT T.*,
                                                                ROW_NUMBER()
                                                                        OVER (PARTITION BY ID_TYPE, ID_NUM, FAM_MEM_CET_TYPE, FAM_MEM_CERT_NUM, INF_SURC_CODE ORDER BY T.RPT_DATE DESC) RM
                                                         FROM MBT_120_RPT T)
                                                   WHERE RM = 1) C
                                                  ON A.ID_TYPE = C.ID_TYPE
                                                      AND A.ID_NUM = C.ID_NUM
                                                      AND A.FAM_MEM_CET_TYPE = C.FAM_MEM_CET_TYPE
                                                      AND A.FAM_MEM_CERT_NUM = C.FAM_MEM_CERT_NUM
                                                      AND A.INF_SURC_CODE = C.INF_SURC_CODE
                                        LEFT JOIN MBT_120 D
                                                  ON A.ID_TYPE = D.ID_TYPE
                                                      AND A.ID_NUM = D.ID_NUM
                                                      AND A.FAM_MEM_CET_TYPE = D.FAM_MEM_CET_TYPE
                                                      AND A.FAM_MEM_CERT_NUM = D.FAM_MEM_CERT_NUM
                                                      AND A.INF_SURC_CODE = D.INF_SURC_CODE
                                        LEFT JOIN --新增的情况，为机构赋值
                                   MBT_SECTION_CODE E
                                                  ON D.ORG_ID = E.ORG_ID
                        ) T2
                        ON (T1.ID_TYPE = T2.ID_TYPE AND T1.ID_NUM = T2.ID_NUM AND
                            T1.FAM_MEM_CET_TYPE = T2.FAM_MEM_CET_TYPE AND
                            T1.FAM_MEM_CERT_NUM = T2.FAM_MEM_CERT_NUM AND T1.INF_SURC_CODE = T2.INF_SURC_CODE)
                        WHEN MATCHED THEN
                            UPDATE
                            SET T1.DATA_CHG_USER     = 'SYSTEM',
                                T1.DATA_CHG_DATE     = CURRENTDATE,
                                T1.DATA_CHG_TIME     = CURRENTTIME,
                                T1.NAME              = CASE
                                                           WHEN T2.UPDATE_FLAG = '1' THEN T2.NAME
                                                           WHEN T2.UPDATE_FLAG = '0' THEN T1.NAME END,
                                T1.FAM_MEM_NAME      = CASE
                                                           WHEN T2.UPDATE_FLAG = '1' THEN T2.FAM_MEM_NAME
                                                           WHEN T2.UPDATE_FLAG = '0' THEN T1.FAM_MEM_NAME END,
                                T1.FAM_REL           = CASE
                                                           WHEN T2.UPDATE_FLAG = '1' THEN T2.FAM_REL
                                                           WHEN T2.UPDATE_FLAG = '0' THEN T1.FAM_REL END,
                                T1.FAM_RELA_ASS_FLAG = CASE
                                                           WHEN T2.UPDATE_FLAG = '1' THEN T2.FAM_RELA_ASS_FLAG
                                                           WHEN T2.UPDATE_FLAG = '0' THEN T1.FAM_RELA_ASS_FLAG END,
                                T1.RPT_DATE          = V_T_DATE,
								T1.DATA_STATUS	 	 = '00',
								T1.DATA_SOURCE	 	 = '2',
                                T1.CHECK_FLAG        = 'N',
                                T1.IS_RPT            = T2.UPDATE_FLAG
                        WHEN NOT MATCHED THEN
                            INSERT
                            (T1.DATA_ID,
                             T1.DATA_DATE,
                             T1.CORP_ID,
                             T1.ORG_ID,
                             T1.GROUP_ID,
                             T1.INQ_ORG_ID,
                             T1.INQ_GROUP_ID,
                             T1.INF_REC_TYPE,
                             T1.NAME,
                             T1.ID_TYPE,
                             T1.ID_NUM,
                             T1.FAM_MEM_NAME,
                             T1.FAM_MEM_CET_TYPE,
                             T1.FAM_MEM_CERT_NUM,
                             T1.FAM_REL,
                             T1.FAM_RELA_ASS_FLAG,
                             T1.INF_SURC_CODE,
                             T1.RPT_DATE,
                             T1.DATA_STATUS,
                             T1.DATA_SOURCE,
                             T1.DATA_CRT_USER,
                             T1.DATA_CRT_DATE,
                             T1.DATA_CRT_TIME,
                             T1.RSV1,
                             T1.RSV2,
                             T1.RSV3,
                             T1.RSV4,
                             T1.RSV5,
                             T1.IS_RPT)
                            VALUES (T2.DATA_ID,
                                    T2.DATA_DATE,
                                    T2.CORP_ID,
                                    T2.ORG_ID,
                                    T2.GROUP_ID,
                                    T2.ORG_ID,
                                    T2.ORG_ID,
                                    '120',
                                    T2.NAME,
                                    T2.ID_TYPE,
                                    T2.ID_NUM,
                                    T2.FAM_MEM_NAME,
                                    T2.FAM_MEM_CET_TYPE,
                                    T2.FAM_MEM_CERT_NUM,
                                    T2.FAM_REL,
                                    T2.FAM_RELA_ASS_FLAG,
                                    T2.SECTION_CODE || T2.INF_SURC_CODE,
                                    V_T_DATE,
                                    '00',
                                    '2',
                                    'SYSTEM',
                                    CURRENTDATE,
                                    CURRENTTIME,
                                    T2.RSV1,
                                    T2.RSV2,
                                    T2.RSV3,
                                    T2.RSV4,
                                    T2.RSV5,
                                    T2.UPDATE_FLAG);
                    END;

                    DSC := '##数据插入历史表，然后删除ODS表##';
                    DBMS_OUTPUT.PUT_LINE(DSC);
                    BEGIN
                        INSERT INTO ODS_MBT_120_HIS
                        SELECT *
                        FROM ODS_MBT_120;
                        DELETE FROM ODS_MBT_120;
                        COMMIT;
                    END;
                END IF;
            END;
        END IF;
        COMMIT;
    EXCEPTION
        WHEN OTHERS THEN
            ERRCODE := SQLCODE;
            ERRMSG := SUBSTR(SQLERRM, 1, 200);
            SP_MBT_LOG(1,
                       'SP_ODS_MBT_120',
                       'ERROR12001',
                       '失败：' || ERRMSG,
                       ERRCODE,
                       ERRMSG);
            ROLLBACK;
            RETURN;
    END;
    ENDTIME := TO_CHAR(SYSDATE, 'YYYY-MM-DD HH24:MI:SS');
    DSC := '##=======MBT120存储过程==结束' || ENDTIME || '========##';
    DBMS_OUTPUT.PUT_LINE(DSC);
END;
/
