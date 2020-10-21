CREATE OR REPLACE PROCEDURE "SP_ODS_MBT_220"(ERRCODE IN OUT VARCHAR,
                                             ERRMSG IN OUT VARCHAR,
                                             TABLE_KEY IN VARCHAR2,
                                             RPT_DATE_CODE_OUT IN OUT VARCHAR2) AS
    DSC           VARCHAR2(1000);
    BEGINTIME     VARCHAR2(20);
    ENDTIME       VARCHAR2(20);
    CURRENTDATE   VARCHAR2(8);
    CURRENTTIME   VARCHAR2(14);
    --B_ARRAYLIST   VARCHAR2(4000);
    C_ARRAYLIST   VARCHAR2(4000);
    --D_ARRAYLIST   VARCHAR2(4000);
    IS_RPT_OUT    VARCHAR2(64);
    V_T_DATE      VARCHAR2(8);
    ODS_COUNT     INT;
    B_UPDATE_FLAG CHAR(1);
    --C_UPDATE_FLAG CHAR(1);
    D_UPDATE_FLAG CHAR(1);
BEGIN
    --B_ARRAYLIST := 'B_NAME,B_ID_TYPE,B_ID_NUM,B_CONTRACT_NO,B_MNGMT_ORG_CODE';
    C_ARRAYLIST := 'C_BRER_TYPE,C_CERT_REL_NAME,C_CERT_REL_ID_TYPE,C_CERT_REL_ID_NUM';
    --D_ARRAYLIST := 'D_CREDIT_LIM_TYPE,D_LIM_LOOP_FLG,D_CREDIT_LIM_LCY,D_CY,D_CON_EFF_DATE,D_CON_EXP_DATE,D_CON_STATUS,D_CREDIT_REST_LCY,D_CREDIT_REST_CODE';
    CURRENTDATE := TO_CHAR(SYSDATE, 'YYYYMMDD');
    CURRENTTIME := TO_CHAR(SYSDATE, 'YYYYMMDDHH24MISS');
    BEGINTIME := TO_CHAR(SYSDATE, 'YYYY-MM-DD HH24:MI:SS');

    DSC := '##=======MBT220存储过程==开始' || BEGINTIME || '========##';
    DBMS_OUTPUT.PUT_LINE(DSC);
    BEGIN
        DSC := '##初始化##';
        DBMS_OUTPUT.PUT_LINE(DSC);
        BEGIN
            V_T_DATE := GET_T_DAY(); -- 数据日期 DATA_DATE
        END;
        /**
          已报送过20-授信到期/失效的数据不可报送
         */
        IF TABLE_KEY IS NOT NULL THEN
            --处理从页面来的数据 计算时点
            BEGIN
                DSC := '##计算时点、变化量' || TABLE_KEY || '##';
                DBMS_OUTPUT.PUT_LINE(DSC);
                BEGIN
                    SELECT CASE
                               --没有上报过且额度状态不为2-到期/失效  --- 10
                               WHEN B.DATA_ID IS NULL AND A.D_CON_STATUS <> '2' THEN
                                   '10'
                               --已经上报过记录且没上报过20-授信到期/失效且额度状态为2-到期/失效
                               WHEN B.DATA_ID IS NOT NULL AND A.D_CON_STATUS = '2' THEN
                                   '20'
                               --已经上报过记录且没上报过20-授信到期/失效且当前的授信额度与上次上报成功的授信额度相比有调整
                               WHEN B.DATA_ID IS NOT NULL AND
                                    NVL(A.D_CREDIT_LIM_TYPE || A.D_LIM_LOOP_FLG || A.D_CREDIT_LIM_LCY || A.D_CY ||
                                        A.D_CON_EFF_DATE || A.D_CON_EXP_DATE || A.D_CON_STATUS || A.D_CREDIT_REST_LCY ||
                                        A.D_CREDIT_REST_CODE, 0) <>
                                    NVL(B.D_CREDIT_LIM_TYPE || B.D_LIM_LOOP_FLG || B.D_CREDIT_LIM_LCY || B.D_CY ||
                                        B.D_CON_EFF_DATE || B.D_CON_EXP_DATE || B.D_CON_STATUS || B.D_CREDIT_REST_LCY ||
                                        B.D_CREDIT_REST_CODE, 0)
                                   --AND NVL(C.CNT, 0) = 0
                                   THEN
                                   '30'
                               --其他情况均为99
                               ELSE
                                   '99'
                               END,
                           --B段
                           CASE
                               WHEN TRIM(A.B_NAME || A.B_ID_TYPE || A.B_ID_NUM || A.B_MNGMT_ORG_CODE) IS NOT NULL THEN
                                   CASE
                                       WHEN B.DATA_ID IS NOT NULL AND
                                            nvl(B.B_NAME || B.B_ID_TYPE || B.B_ID_NUM || B.B_MNGMT_ORG_CODE, 0) <>
                                            nvl(A.B_NAME || A.B_ID_TYPE || A.B_ID_NUM || A.B_MNGMT_ORG_CODE, 0)
                                           THEN
                                           '1'
                                       ELSE
                                           '0'
                                       END

                               ELSE
                                   '0'
                               END AS B_UPDATE_FLAG,
                           --D段
                           CASE
                               WHEN TRIM(A.D_CREDIT_LIM_TYPE || A.D_LIM_LOOP_FLG || A.D_CREDIT_LIM_LCY || A.D_CY ||
                                         A.D_CON_EFF_DATE || A.D_CON_EXP_DATE || A.D_CON_STATUS ||
                                         A.D_CREDIT_REST_LCY ||
                                         A.D_CREDIT_REST_CODE) IS NOT NULL THEN
                                   CASE
                                       WHEN B.DATA_ID IS NOT NULL AND
                                            NVL(A.D_CREDIT_LIM_TYPE || A.D_LIM_LOOP_FLG || A.D_CREDIT_LIM_LCY ||
                                                A.D_CY ||
                                                A.D_CON_EFF_DATE || A.D_CON_EXP_DATE || A.D_CON_STATUS ||
                                                A.D_CREDIT_REST_LCY ||
                                                A.D_CREDIT_REST_CODE, 0) <>
                                            NVL(B.D_CREDIT_LIM_TYPE || B.D_LIM_LOOP_FLG || B.D_CREDIT_LIM_LCY ||
                                                B.D_CY ||
                                                B.D_CON_EFF_DATE || B.D_CON_EXP_DATE || B.D_CON_STATUS ||
                                                B.D_CREDIT_REST_LCY ||
                                                B.D_CREDIT_REST_CODE, 0)
                                           THEN
                                           '1'
                                       ELSE
                                           '0'
                                       END

                               ELSE
                                   '0'
                               END AS D_UPDATE_FLAG
                    INTO RPT_DATE_CODE_OUT, B_UPDATE_FLAG, D_UPDATE_FLAG
                    FROM MBT_220 A
                             LEFT JOIN (SELECT *
                                        FROM (SELECT ROW_NUMBER() OVER (PARTITION BY B_CONTRACT_CODE ORDER BY B_RPT_DATE DESC) RN,
                                                     T.*
                                              FROM MBT_220_RPT T
                                              WHERE DATA_STATUS = '27')
                                        WHERE RN = 1) B
                                       ON A.B_CONTRACT_CODE = B.B_CONTRACT_CODE
                    WHERE NOT EXISTS(--过滤授信到期/失效的记录
                            SELECT 1
                            FROM MBT_220_RPT B
                            WHERE A.B_CONTRACT_CODE = B.B_CONTRACT_CODE
                              AND B.DATA_STATUS = '27'
                              AND B.B_RPT_DATE_CODE = '20')
                      AND A.DATA_ID = TABLE_KEY;

                    SELECT IS_RPT INTO IS_RPT_OUT FROM MBT_220 WHERE DATA_ID = TABLE_KEY;
                    UPDATE MBT_220
                    SET IS_RPT = GET_ISRPT_CHANGE(IS_RPT_OUT,
                                                  (B_UPDATE_FLAG || D_UPDATE_FLAG || '|'))
                    WHERE DATA_ID = TABLE_KEY;
                END;

                DSC := '##修改子表[MBT_220_C] IS_RPT##';
                DBMS_OUTPUT.PUT_LINE(DSC);
                BEGIN
                    SP_ODS_MBT_CAL_RPT_PROC3('MBT_220_C',
                                             '1 == 1',
                                             C_ARRAYLIST,
                                             'B_CONTRACT_CODE',
                                             4,
                                             'MBT_220',
                                             TABLE_KEY);
                END;
                DSC := '##根据配置计算各段上报标识' || TABLE_KEY || '##';
                DBMS_OUTPUT.PUT_LINE(DSC);
                BEGIN
                    SP_ODS_MBT_CAL_RPT_PROC2('MBT_220',
                                             'T1.B_INF_REC_TYPE = T3.INF_REC_TYPE
                                     AND T3.B_ACCT_TYPE IS NULL
                                     AND T1.B_RPT_DATE_CODE = T3.RPT_DATE_CODE',
                                             TABLE_KEY);
                END;
            END;
        ELSE
            --处理从ODS表来的数据
            DSC := '##ods数据处理##';
            DBMS_OUTPUT.PUT_LINE(DSC);
            BEGIN
                SELECT COUNT(*) INTO ODS_COUNT FROM ODS_MBT_220;
                IF ODS_COUNT = 0 THEN
                    DSC := '##ods没有数据##';
                    DBMS_OUTPUT.PUT_LINE(DSC);
                ELSE
                    DSC := '##备份mbt数据##';
                    DBMS_OUTPUT.PUT_LINE(DSC);
                    BEGIN
                        EXECUTE IMMEDIATE 'TRUNCATE TABLE MBT_220_TODAY_BAK';
                        INSERT INTO MBT_220_TODAY_BAK
                        SELECT *
                        FROM MBT_220;

                        EXECUTE IMMEDIATE 'TRUNCATE TABLE MBT_220_C_TODAY_BAK';
                        INSERT INTO MBT_220_C_TODAY_BAK
                        SELECT *
                        FROM MBT_220_C;
                    END;

                    DSC := '##主表数据新增或修改，计算上报标识##';
                    DBMS_OUTPUT.PUT_LINE(DSC);
                    BEGIN
                        MERGE INTO MBT_220 T1
                        USING (SELECT A.*,
                                      --ods的数据在mbt中没有
                                      --计算段上报标识,段有值标识为1，没值标识为0
                                      --B段
                                      CASE
                                          WHEN D.DATA_ID IS NULL AND
                                               TRIM(A.B_NAME || A.B_ID_TYPE || A.B_ID_NUM || A.B_MNGMT_ORG_CODE) IS NULL
                                              THEN
                                              '0'
                                          ELSE
                                              '1'
                                          END                                             AS N_B_UPDATE_FALG,
                                      --D段
                                      CASE
                                          WHEN D.DATA_ID IS NULL AND
                                               TRIM(A.D_CREDIT_LIM_TYPE || A.D_LIM_LOOP_FLG || A.D_CREDIT_LIM_LCY ||
                                                    A.D_CY ||
                                                    A.D_CON_EFF_DATE || A.D_CON_EXP_DATE || A.D_CON_STATUS ||
                                                    A.D_CREDIT_REST_LCY ||
                                                    A.D_CREDIT_REST_CODE) IS NULL THEN
                                              '0'
                                          ELSE
                                              '1'
                                          END                                             AS N_D_UPDATE_FLAG,
                                      --初始化机构
                                      CASE WHEN D.DATA_ID IS NULL THEN E.SECTION_CODE END AS SECTION_CODE,
                                      --ods的数据在mbt中有
                                      --计算段上报标识
                                      --B段
                                      CASE
                                          WHEN nvl(B.B_NAME || B.B_ID_TYPE || B.B_ID_NUM || B.B_MNGMT_ORG_CODE, 0) <>
                                               nvl(A.B_NAME || A.B_ID_TYPE || A.B_ID_NUM || A.B_MNGMT_ORG_CODE, 0)
                                              THEN
                                              CASE
                                                  WHEN nvl(C.B_NAME || C.B_ID_TYPE || C.B_ID_NUM || C.B_MNGMT_ORG_CODE, 0) <>
                                                       nvl(A.B_NAME || A.B_ID_TYPE || A.B_ID_NUM || A.B_MNGMT_ORG_CODE, 0)
                                                      THEN
                                                      '1'
                                                  ELSE
                                                      '0'
                                                  END
                                          ELSE
                                              '0'
                                          END                                             AS B_UPDATE_FLAG,
                                      --D段
                                      CASE
                                          WHEN nvl(B.D_CREDIT_LIM_TYPE || B.D_LIM_LOOP_FLG || B.D_CREDIT_LIM_LCY ||
                                                   B.D_CY || B.D_CON_EFF_DATE || B.D_CON_EXP_DATE || B.D_CON_STATUS ||
                                                   B.D_CREDIT_REST_LCY || B.D_CREDIT_REST_CODE, 0) <>
                                               nvl(A.D_CREDIT_LIM_TYPE || A.D_LIM_LOOP_FLG || A.D_CREDIT_LIM_LCY ||
                                                   A.D_CY || A.D_CON_EFF_DATE || A.D_CON_EXP_DATE || A.D_CON_STATUS ||
                                                   A.D_CREDIT_REST_LCY || A.D_CREDIT_REST_CODE, 0)
                                              THEN
                                              CASE
                                                  WHEN nvl(C.D_CREDIT_LIM_TYPE || C.D_LIM_LOOP_FLG ||
                                                           C.D_CREDIT_LIM_LCY || C.D_CY ||
                                                           C.D_CON_EFF_DATE || C.D_CON_EXP_DATE || C.D_CON_STATUS ||
                                                           C.D_CREDIT_REST_LCY || C.D_CREDIT_REST_CODE, 0) <>
                                                       nvl(A.D_CREDIT_LIM_TYPE || A.D_LIM_LOOP_FLG ||
                                                           A.D_CREDIT_LIM_LCY || A.D_CY ||
                                                           A.D_CON_EFF_DATE || A.D_CON_EXP_DATE || A.D_CON_STATUS ||
                                                           A.D_CREDIT_REST_LCY || A.D_CREDIT_REST_CODE, 0)
                                                      THEN
                                                      '1'
                                                  ELSE
                                                      '0'
                                                  END
                                          ELSE
                                              '0'
                                          END                                             AS D_UPDATE_FLAG
                               FROM ODS_MBT_220 A
                                        LEFT JOIN --与ods上次数据比较
                                   (SELECT *
                                    FROM (
                                             SELECT ROW_NUMBER()
                                                            OVER (PARTITION BY B_CONTRACT_CODE ORDER BY DATA_LOAD_TIME DESC) RN,
                                                    T.*
                                             FROM ODS_MBT_220_HIS T
                                             ORDER BY DATA_LOAD_TIME DESC
                                         )
                                    WHERE RN = 1
                                   ) B
                                                  ON A.B_CONTRACT_CODE = B.B_CONTRACT_CODE
                                        LEFT JOIN --看数据是否已报送过
                                   (SELECT *
                                    FROM (SELECT ROW_NUMBER()
                                                         OVER (PARTITION BY B_CONTRACT_CODE ORDER BY T.B_RPT_DATE DESC) RN,
                                                 T.*
                                          FROM MBT_220_RPT T
                                          WHERE DATA_STATUS = '27')
                                    WHERE RN = 1
                                   ) C
                                                  ON A.B_CONTRACT_CODE = C.B_CONTRACT_CODE
                                        LEFT JOIN --需要考虑mbt表中有用户新增的和ods中一样的数据
                                   MBT_220 D
                                                  ON A.B_CONTRACT_CODE = D.B_CONTRACT_CODE
                                        LEFT JOIN --新增的情况，为机构赋值
                                   MBT_SECTION_CODE E
                                                  ON D.ORG_ID = E.ORG_ID
                        ) T2
                        ON (T1.B_CONTRACT_CODE = T2.B_CONTRACT_CODE)
                        WHEN MATCHED THEN
                            UPDATE
                            SET T1.B_NAME             = CASE
                                                            WHEN T2.B_UPDATE_FLAG = '1' THEN T2.B_NAME
                                                            WHEN T2.B_UPDATE_FLAG = '0' THEN T1.B_NAME END,
                                T1.B_ID_TYPE          = CASE
                                                            WHEN T2.B_UPDATE_FLAG = '1' THEN T2.B_ID_TYPE
                                                            WHEN T2.B_UPDATE_FLAG = '0' THEN T1.B_ID_TYPE END,
                                T1.B_ID_NUM           = CASE
                                                            WHEN T2.B_UPDATE_FLAG = '1' THEN T2.B_ID_NUM
                                                            WHEN T2.B_UPDATE_FLAG = '0' THEN T1.B_ID_NUM END,
                                T1.B_CONTRACT_NO      = CASE
                                                            WHEN T2.B_UPDATE_FLAG = '1' THEN T2.B_CONTRACT_NO
                                                            WHEN T2.B_UPDATE_FLAG = '0' THEN T1.B_CONTRACT_NO END,
                                T1.B_MNGMT_ORG_CODE   = CASE
                                                            WHEN T2.B_UPDATE_FLAG = '1' THEN T2.B_MNGMT_ORG_CODE
                                                            WHEN T2.B_UPDATE_FLAG = '0' THEN T1.B_MNGMT_ORG_CODE END,
                                T1.D_CREDIT_LIM_TYPE  = CASE
                                                            WHEN T2.D_UPDATE_FLAG = '1' THEN T2.D_CREDIT_LIM_TYPE
                                                            WHEN T2.D_UPDATE_FLAG = '0' THEN T1.D_CREDIT_LIM_TYPE END,
                                T1.D_LIM_LOOP_FLG     = CASE
                                                            WHEN T2.D_UPDATE_FLAG = '1' THEN T2.D_LIM_LOOP_FLG
                                                            WHEN T2.D_UPDATE_FLAG = '0' THEN T1.D_LIM_LOOP_FLG END,
                                T1.D_CREDIT_LIM       = CASE
                                                            WHEN T2.D_UPDATE_FLAG = '1' THEN T2.D_CREDIT_LIM
                                                            WHEN T2.D_UPDATE_FLAG = '0' THEN T1.D_CREDIT_LIM END,
                                T1.D_CREDIT_LIM_LCY   = CASE
                                                            WHEN T2.D_UPDATE_FLAG = '1' THEN T2.D_CREDIT_LIM_LCY
                                                            WHEN T2.D_UPDATE_FLAG = '0' THEN T1.D_CREDIT_LIM_LCY END,
                                T1.D_CY               = CASE
                                                            WHEN T2.D_UPDATE_FLAG = '1' THEN T2.D_CY
                                                            WHEN T2.D_UPDATE_FLAG = '0' THEN T1.D_CY END,
                                T1.D_CON_EFF_DATE     = CASE
                                                            WHEN T2.D_UPDATE_FLAG = '1' THEN T2.D_CON_EFF_DATE
                                                            WHEN T2.D_UPDATE_FLAG = '0' THEN T1.D_CON_EFF_DATE END,
                                T1.D_CON_EXP_DATE     = CASE
                                                            WHEN T2.D_UPDATE_FLAG = '1' THEN T2.D_CON_EXP_DATE
                                                            WHEN T2.D_UPDATE_FLAG = '0' THEN T1.D_CON_EXP_DATE END,
                                T1.D_CON_STATUS       = CASE
                                                            WHEN T2.D_UPDATE_FLAG = '1' THEN T2.D_CON_STATUS
                                                            WHEN T2.D_UPDATE_FLAG = '0' THEN T1.D_CON_STATUS END,
                                T1.D_CREDIT_REST      = CASE
                                                            WHEN T2.D_UPDATE_FLAG = '1' THEN T2.D_CREDIT_REST
                                                            WHEN T2.D_UPDATE_FLAG = '0' THEN T1.D_CREDIT_REST END,
                                T1.D_CREDIT_REST_LCY  = CASE
                                                            WHEN T2.D_UPDATE_FLAG = '1' THEN T2.D_CREDIT_REST_LCY
                                                            WHEN T2.D_UPDATE_FLAG = '0' THEN T1.D_CREDIT_REST_LCY END,
                                T1.D_CREDIT_REST_CODE = CASE
                                                            WHEN T2.D_UPDATE_FLAG = '1' THEN T2.D_CREDIT_REST_CODE
                                                            WHEN T2.D_UPDATE_FLAG = '0' THEN T1.D_CREDIT_REST_CODE END,
                                T1.IS_RPT             = GET_ISRPT_CHANGE(T1.IS_RPT,
                                                                         (T2.B_UPDATE_FLAG || T2.D_UPDATE_FLAG ||
                                                                          '|')),
                                T1.DATA_STATUS        = '00',
                                T1.DATA_SOURCE        = '2',
                                T1.DATA_CHG_USER      = 'SYSTEM',
                                T1.DATA_CHG_DATE      = CURRENTDATE,
                                T1.DATA_CHG_TIME      = CURRENTTIME,
                                T1.B_RPT_DATE         = V_T_DATE,
                                T1.CHECK_FLAG         = 'N'
                        WHEN NOT MATCHED THEN
                            INSERT
                            (T1.DATA_ID,
                             T1.DATA_DATE,
                             T1.CORP_ID,
                             T1.ORG_ID,
                             T1.GROUP_ID,
                             T1.INQ_ORG_ID,
                             T1.INQ_GROUP_ID,
                             T1.B_INF_REC_TYPE,
                             T1.B_CONTRACT_CODE,
                             T1.B_RPT_DATE,
                             T1.B_RPT_DATE_CODE,
                             T1.B_NAME,
                             T1.B_ID_TYPE,
                             T1.B_ID_NUM,
                             T1.B_MNGMT_ORG_CODE,
                             T1.B_CONTRACT_NO,
                             T1.D_CREDIT_LIM_TYPE,
                             T1.D_LIM_LOOP_FLG,
                             T1.D_CREDIT_LIM,
                             T1.D_CREDIT_LIM_LCY,
                             T1.D_CY,
                             T1.D_CON_EFF_DATE,
                             T1.D_CON_EXP_DATE,
                             T1.D_CON_STATUS,
                             T1.D_CREDIT_REST,
                             T1.D_CREDIT_REST_LCY,
                             T1.D_CREDIT_REST_CODE,
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
                             T1.CUST_NO,
                             T1.IS_RPT)
                            VALUES (T2.DATA_ID,
                                    T2.DATA_DATE,
                                    T2.CORP_ID,
                                    T2.ORG_ID,
                                    T2.GROUP_ID,
                                    T2.ORG_ID,
                                    T2.ORG_ID,
                                    '220',
                                    T2.B_CONTRACT_CODE,
                                    V_T_DATE,
                                    '10',
                                    T2.B_NAME,
                                    T2.B_ID_TYPE,
                                    T2.B_ID_NUM,
                                    T2.B_MNGMT_ORG_CODE,
                                    T2.B_CONTRACT_NO,
                                    T2.D_CREDIT_LIM_TYPE,
                                    T2.D_LIM_LOOP_FLG,
                                    T2.D_CREDIT_LIM,
                                    T2.D_CREDIT_LIM_LCY,
                                    T2.D_CY,
                                    T2.D_CON_EFF_DATE,
                                    T2.D_CON_EXP_DATE,
                                    T2.D_CON_STATUS,
                                    T2.D_CREDIT_REST,
                                    T2.D_CREDIT_REST_LCY,
                                    T2.D_CREDIT_REST_CODE,
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
                                    T2.CUST_NO,
                                    (N_B_UPDATE_FALG || N_D_UPDATE_FLAG || '|'));
                    END;

                    DSC := '##子表数据新增或修改##';
                    DBMS_OUTPUT.PUT_LINE(DSC);
                    BEGIN
                        -- 先删除所有相关数据 然后重新插入
                        DELETE
                        FROM MBT_220_C
                        WHERE B_CONTRACT_CODE IN
                              (SELECT DISTINCT B_CONTRACT_CODE FROM ODS_MBT_220);
                        --新增数据
                        MERGE INTO MBT_220_C T1
                        USING (SELECT A.DATA_ID,
                                      A.DATA_DATE,
                                      A.C_BRER_TYPE,
                                      A.C_CERT_REL_NAME,
                                      A.C_CERT_REL_ID_TYPE,
                                      A.C_CERT_REL_ID_NUM,
                                      A.RSV1,
                                      A.RSV2,
                                      A.RSV3,
                                      A.RSV4,
                                      A.RSV5,
                                      A.B_CONTRACT_CODE,
                                      B.DATA_ID AS PDATA_ID
                               FROM ODS_MBT_220_C A
                                        INNER JOIN MBT_220 B
                                                   ON A.B_CONTRACT_CODE = B.B_CONTRACT_CODE) T2
                        ON (T1.C_CERT_REL_ID_TYPE = T2.C_CERT_REL_ID_TYPE
                            AND T1.C_CERT_REL_ID_NUM = T2.C_CERT_REL_ID_NUM
                            AND T1.B_CONTRACT_CODE = T2.B_CONTRACT_CODE)
                        WHEN NOT MATCHED THEN
                            INSERT
                            (T1.DATA_ID,
                             T1.PDATA_ID,
                             T1.DATA_DATE,
                             T1.C_BRER_TYPE,
                             T1.C_CERT_REL_NAME,
                             T1.C_CERT_REL_ID_TYPE,
                             T1.C_CERT_REL_ID_NUM,
                             T1.DATA_SOURE,
                             T1.DATA_CRT_USER,
                             T1.DATA_CRT_DATE,
                             T1.DATA_CRT_TIME,
                             T1.RSV1,
                             T1.RSV2,
                             T1.RSV3,
                             T1.RSV4,
                             T1.RSV5,
                             T1.B_CONTRACT_CODE)
                            VALUES (T2.DATA_ID,
                                    T2.PDATA_ID,
                                    T2.DATA_DATE,
                                    T2.C_BRER_TYPE,
                                    T2.C_CERT_REL_NAME,
                                    T2.C_CERT_REL_ID_TYPE,
                                    T2.C_CERT_REL_ID_NUM,
                                    '2',
                                    'SYSEM',
                                    CURRENTDATE,
                                    CURRENTTIME,
                                    T2.RSV1,
                                    T2.RSV2,
                                    T2.RSV3,
                                    T2.RSV4,
                                    'FLAG',
                                    T2.B_CONTRACT_CODE);
                    END;

                    DSC := '##更改主表数据状态##';
                    DBMS_OUTPUT.PUT_LINE(DSC);
                    BEGIN
                        MERGE INTO MBT_220 T1
                        USING (SELECT DISTINCT B.DATA_ID
                               FROM MBT_220_C A
                                        LEFT JOIN MBT_220 B
                                                  ON A.PDATA_ID = B.DATA_ID
                               WHERE A.RSV5 = 'FLAG') T2
                        ON (T1.DATA_ID = T2.DATA_ID)
                        WHEN MATCHED THEN
                            UPDATE SET T1.DATA_STATUS = '00';
                    END;

                    DSC := '##更改子表数据状态##';
                    DBMS_OUTPUT.PUT_LINE(DSC);
                    BEGIN
                        UPDATE MBT_220_C SET RSV5 = NULL WHERE RSV5 = 'FLAG';
                    END;

                    DSC := '##更新报告时点##';
                    DBMS_OUTPUT.PUT_LINE(DSC);
                    DSC := '##计算时点、变化量' || TABLE_KEY || '##';
                    DBMS_OUTPUT.PUT_LINE(DSC);
                    BEGIN
                        MERGE INTO MBT_220 T1
                        USING (SELECT DISTINCT A.DATA_ID,
                                               CASE
                                                   --没有上报过且额度状态不为2-到期/失效  --- 10
                                                   WHEN B.DATA_ID IS NULL AND A.D_CON_STATUS <> '2' THEN
                                                       '10'
                                                   --已经上报过记录且没上报过20-授信到期/失效且额度状态为2-到期/失效
                                                   WHEN B.DATA_ID IS NOT NULL AND A.D_CON_STATUS = '2' THEN
                                                       '20'
                                                   --已经上报过记录且没上报过20-授信到期/失效且当前的授信额度与上次上报成功的授信额度相比有调整
                                                   WHEN B.DATA_ID IS NOT NULL AND
                                                        NVL(A.D_CREDIT_LIM_TYPE || A.D_LIM_LOOP_FLG ||
                                                            A.D_CREDIT_LIM_LCY ||
                                                            A.D_CY || A.D_CON_EFF_DATE || A.D_CON_EXP_DATE ||
                                                            A.D_CON_STATUS ||
                                                            A.D_CREDIT_REST_LCY || A.D_CREDIT_REST_CODE, 0) <>
                                                        NVL(B.D_CREDIT_LIM_TYPE || B.D_LIM_LOOP_FLG ||
                                                            B.D_CREDIT_LIM_LCY ||
                                                            B.D_CY || B.D_CON_EFF_DATE || B.D_CON_EXP_DATE ||
                                                            B.D_CON_STATUS ||
                                                            B.D_CREDIT_REST_LCY || B.D_CREDIT_REST_CODE, 0)
                                                       --AND NVL(C.CNT, 0) = 0
                                                       THEN
                                                       '30'
                                                   --其他情况均为99
                                                   ELSE
                                                       '99'
                                                   END AS RPT_DATE_CODE_OUT
                               FROM MBT_220 A
                                        LEFT JOIN (SELECT *
                                                   FROM (SELECT ROW_NUMBER() OVER (PARTITION BY B_CONTRACT_CODE ORDER BY B_RPT_DATE DESC) RN,
                                                                T.*
                                                         FROM MBT_220_RPT T
                                                         WHERE DATA_STATUS = '27')
                                                   WHERE RN = 1) B
                                                  ON A.B_CONTRACT_CODE = B.B_CONTRACT_CODE
                               WHERE NOT EXISTS(--过滤授信到期/失效的记录
                                       SELECT 1
                                       FROM MBT_220_RPT B
                                       WHERE A.B_CONTRACT_CODE = B.B_CONTRACT_CODE
                                         AND B.DATA_STATUS = '27'
                                         AND B.B_RPT_DATE_CODE = '20')
                                 AND A.DATA_STATUS = '00'
                                 AND A.DATA_SOURCE = '2'
                        ) T2
                        ON (T1.DATA_ID = T2.DATA_ID)
                        WHEN MATCHED THEN
                            UPDATE SET T1.B_RPT_DATE_CODE = T2.RPT_DATE_CODE_OUT;
                    END;

                    DSC := '##修改子表[MBT_220_C] IS_RPT##';
                    DBMS_OUTPUT.PUT_LINE(DSC);
                    BEGIN
                        SP_ODS_MBT_CAL_RPT_PROC3('MBT_220_C',
                                                 '1 == 1',
                                                 C_ARRAYLIST,
                                                 'B_CONTRACT_CODE',
                                                 4,
                                                 'MBT_220',
                                                 NULL);
                    END;

                    DSC := '##根据配置计算各段上报标识' || TABLE_KEY || '##';
                    DBMS_OUTPUT.PUT_LINE(DSC);
                    BEGIN
                        SP_ODS_MBT_CAL_RPT_PROC2('MBT_220',
                                                 'T1.B_INF_REC_TYPE = T3.INF_REC_TYPE
                                         AND T3.B_ACCT_TYPE IS NULL
                                         AND T1.B_RPT_DATE_CODE = T3.RPT_DATE_CODE',
                                                 NULL);
                    END;

                    DSC := '##ODS主表数据插入历史表，然后删除ODS表##';
                    DBMS_OUTPUT.PUT_LINE(DSC);
                    BEGIN
                        INSERT INTO ODS_MBT_220_HIS
                        SELECT *
                        FROM ODS_MBT_220;
                        DELETE FROM ODS_MBT_220;
                        INSERT INTO ODS_MBT_220_C_HIS
                        SELECT *
                        FROM ODS_MBT_220_C;
                        DELETE FROM ODS_MBT_220_C;
                    END;

                    DSC := '##将报告时点代码是88或99的直接审核通过并将校验修改为校验通过##';
                    DBMS_OUTPUT.PUT_LINE(DSC);
                    BEGIN
                        UPDATE MBT_220
                        SET DATA_STATUS = '21',
                            CHECK_FLAG  = 'Y'
                        WHERE DATA_DATE <= CURRENTDATE
                          AND (B_RPT_DATE_CODE = '88' OR B_RPT_DATE_CODE = '99')
                          AND DATA_STATUS = '00';

                        --将报告时点代码不是88或99的将校验修改为未校验ZHAO
                        /*  UPDATE MBT_220
                             SET CHECK_FLAG = 'N'
                           WHERE DATA_DATE <= CURRENTDATE
                             AND (B_RPT_DATE_CODE  NOT IN('88' ,'99'))
                             AND DATA_STATUS = '00';*/
                    END;
                END IF;
                COMMIT;
            END;
        END IF;
        COMMIT;
    EXCEPTION
        WHEN
            OTHERS THEN
            ERRCODE := SQLCODE;
            ERRMSG := SUBSTR(SQLERRM, 1, 200);
            SP_MBT_LOG(1,
                       'SP_ODS_MBT_220',
                       'ERROR22001',
                       'SP_ODS_MBT_220失败：' || ERRMSG,
                       ERRCODE,
                       ERRMSG);
            ROLLBACK;
            RETURN;
    END;

    ENDTIME := TO_CHAR(SYSDATE, 'YYYY-MM-DD HH24:MI:SS');
    DSC := '##=======MBT220存储过程==结束' || ENDTIME || '========##';
    DBMS_OUTPUT.PUT_LINE(DSC);
END;