CREATE OR REPLACE PROCEDURE SP_ODS_MBT_215(ERRCODE IN OUT VARCHAR,
                                           ERRMSG IN OUT VARCHAR) AS
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

    DSC := '##=======MBT215存储过程==开始' || BEGINTIME || '========##';
    DBMS_OUTPUT.PUT_LINE(DSC);
    BEGIN
        DSC := '##初始化##';
        DBMS_OUTPUT.PUT_LINE(DSC);
        BEGIN
            V_T_DATE := GET_WORKDAY(CURRENTDATE);
        END;
        DSC := '##ods数据处理##';
        DBMS_OUTPUT.PUT_LINE(DSC);
        BEGIN
            SELECT COUNT(*) INTO ODS_COUNT FROM ODS_MBT_215;
            IF ODS_COUNT = 0 THEN
                DSC := '##ods没有数据##';
                DBMS_OUTPUT.PUT_LINE(DSC);
            ELSE
                DSC := '##备份数据[MBT_215_TODAY_BAK]##';
                DBMS_OUTPUT.PUT_LINE(DSC);
                BEGIN
                    EXECUTE IMMEDIATE 'TRUNCATE TABLE MBT_215_TODAY_BAK';
                    INSERT INTO MBT_215_TODAY_BAK
                    SELECT *
                    FROM MBT_215;
                END;

                DSC := '##数据新增或修改，计算上报标识##';
                DBMS_OUTPUT.PUT_LINE(DSC);
                BEGIN
                    MERGE INTO MBT_215 T1
                    USING (SELECT A.*,
                                  --ods的数据在mbt中没有
                                  --计算段上报标识,段有值标识为1，没值标识为0
                                  CASE
                                      WHEN D.DATA_ID IS NULL AND
                                           TRIM(A.OPETN_TYPE || A.MONTH || A.FLAG) IS NULL
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
                                      WHEN nvl(B.OPETN_TYPE || B.MONTH || B.FLAG, 0) <>
                                           nvl(A.OPETN_TYPE || A.MONTH || A.FLAG, 0)
                                          THEN
                                          CASE
                                              WHEN nvl(C.OPETN_TYPE || C.MONTH || C.FLAG, 0) <>
                                                   nvl(A.OPETN_TYPE || A.MONTH || A.FLAG, 0)
                                                  THEN
                                                  '1'
                                              ELSE
                                                  '0'
                                              END
                                      ELSE
                                          '0'
                                      END                                             AS UPDATE_FLAG
                           FROM ODS_MBT_215 A
                                    LEFT JOIN (SELECT *
                                               FROM (SELECT T.*,
                                                            ROW_NUMBER()
                                                                    OVER (PARTITION BY ACCT_CODE ORDER BY T.DATA_LOAD_TIME DESC) RM
                                                     FROM ODS_MBT_215_HIS T)
                                               WHERE RM = 1) B
                                              ON A.ACCT_CODE = B.ACCT_CODE
                                    LEFT JOIN (SELECT *
                                               FROM (SELECT T.*,
                                                            ROW_NUMBER()
                                                                    OVER (PARTITION BY ACCT_CODE ORDER BY T.RPT_DATE DESC) RM
                                                     FROM MBT_215_RPT T)
                                               WHERE RM = 1) C
                                              ON A.ACCT_CODE = C.ACCT_CODE
                                    LEFT JOIN MBT_215 D
                                              ON A.ACCT_CODE = D.ACCT_CODE
                                    LEFT JOIN MBT_SECTION_CODE E --新增的情况，为机构赋值
                                              ON D.ORG_ID = E.ORG_ID
                    ) T2
                    ON (T1.ACCT_CODE = T2.ACCT_CODE)
                    WHEN MATCHED THEN
                        UPDATE
                        SET T1.DATA_CHG_USER = 'SYSTEM',
                            T1.DATA_CHG_DATE = CURRENTDATE,
                            T1.DATA_CHG_TIME = CURRENTTIME,
                            T1.OPETN_TYPE    = CASE
                                                   WHEN T2.UPDATE_FLAG = '1' THEN T2.OPETN_TYPE
                                                   WHEN T2.UPDATE_FLAG = '0' THEN T1.OPETN_TYPE END,
                            T1.MONTH         = CASE
                                                   WHEN T2.UPDATE_FLAG = '1' THEN T2.MONTH
                                                   WHEN T2.UPDATE_FLAG = '0' THEN T1.MONTH END,
                            T1.FLAG          = CASE
                                                   WHEN T2.UPDATE_FLAG = '1' THEN T2.FLAG
                                                   WHEN T2.UPDATE_FLAG = '0' THEN T1.FLAG END,
                            T1.RPT_DATE      = V_T_DATE,
							T1.DATA_STATUS	 = '00',
							T1.DATA_SOURCE	 = '2',
                            T1.CHECK_FLAG    = 'N',
                            T1.IS_RPT        = T2.UPDATE_FLAG
                    WHEN NOT MATCHED THEN
                        INSERT
                        (T1.DATA_ID,
                         T1.DATA_DATE,
                         T1.CORP_ID,
                         T1.ORG_ID,
                         T1.GROUP_ID,
                         T1.INQ_ORG_ID,
                         T1.INQ_GROUP_ID,
                         T1.ACCT_CODE,
                         T1.OPETN_TYPE,
                         T1.MONTH,
                         T1.FLAG,
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
                                T2.ACCT_CODE,
                                T2.OPETN_TYPE,
                                T2.MONTH,
                                T2.FLAG,
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
                    INSERT INTO ODS_MBT_215_HIS
                    SELECT *
                    FROM ODS_MBT_215;
                    DELETE FROM ODS_MBT_215;
                    COMMIT;
                END;
            END IF;

        END;
        COMMIT;
    EXCEPTION
        WHEN OTHERS THEN
            ERRCODE := SQLCODE;
            ERRMSG := SUBSTR(SQLERRM, 1, 200);
            SP_MBT_LOG(1,
                       'SP_ODS_MBT_215',
                       'ERROR21501',
                       '新增失败：' || ERRMSG,
                       ERRCODE,
                       ERRMSG);
            ROLLBACK;
    END;

    ENDTIME := TO_CHAR(SYSDATE, 'YYYY-MM-DD HH24:MI:SS');
    DSC := '##=======MBT215存储过程==结束' || ENDTIME || '========##';
    DBMS_OUTPUT.PUT_LINE(DSC);
END;
/
