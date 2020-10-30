CREATE OR REPLACE PROCEDURE "SP_ODS_MBT_510"(ERRCODE IN OUT VARCHAR,
                                             ERRMSG IN OUT VARCHAR,
                                             TABLE_KEY IN VARCHAR2,
                                             RPT_DATE_CODE_OUT IN OUT VARCHAR2) AS
    DSC           VARCHAR2(1000);
    BEGINTIME     VARCHAR2(20);
    ENDTIME       VARCHAR2(20);
    CURRENTDATE   VARCHAR2(8);
    CURRENTTIME   VARCHAR2(14);
    --B_ARRAYLIST   VARCHAR2(400);
    --C_ARRAYLIST   VARCHAR2(400);
    D_ARRAYLIST   VARCHAR2(400);
    --E_ARRAYLIST   VARCHAR2(400);
    --F_ARRAYLIST   VARCHAR2(400);
    --IS_RPT_OUT    VARCHAR2(64);
    --INSPECT_RESULT NUMBER;
    V_T_DATE      VARCHAR2(8);
    ODS_COUNT     INT;
    B_UPDATE_FLAG CHAR(1);
    C_UPDATE_FLAG CHAR(1);
BEGIN
    --B_ARRAYLIST := 'B_INFO_ID_TYPE,B_NAME,B_CERT_TYPE,B_CERT_NUM,B_CUST_NO,CUST_TYPE,B_MNGMT_ORG_CODE';
    --C_ARRAYLIST := 'C_GUAR_TYPE,C_CC_AMT,C_CY,C_CC_VAL_DATE,C_CC_EXP_DATE,C_MAX_GUAR,C_CC_STATUS';
    D_ARRAYLIST := 'D_INFO_ID_TYPE,D_GUAR_NAME,D_GUAR_CERT_TYPE,D_GUAR_CERT_NUM,D_GUAR_NO';
    --E_ARRAYLIST := 'E_PLE_TYPE,E_MOTGA_PROPT_ID_TYPE,E_PLE_CERT_ID,E_PLE_DISTR,E_PLE_VALUE,E_PLE_CY,E_VAL_ORG_TYPE,E_VAL_DATE,E_PLEDGOR_TYPE,E_PLEDGOR_NAME,E_PLEOR_CERT_TYPE,E_PLEOR_CERT_NUM,E_PLE_DESC';
    --F_ARRAYLIST := 'F_IMP_TYPE,F_IMP_VAL,F_IMP_CY,F_IPPC,F_PAWN_NAME,F_PAWN_CERT_TYPE,F_PAWN_CERT_NUM';

    CURRENTDATE := TO_CHAR(SYSDATE, 'YYYYMMDD');
    CURRENTTIME := TO_CHAR(SYSDATE, 'YYYYMMDDHH24MISS');
    BEGINTIME := TO_CHAR(SYSDATE, 'YYYY-MM-DD HH24:MI:SS');

    DSC := '##=======MBT510存储过程==开始' || BEGINTIME || '========##';
    DBMS_OUTPUT.PUT_LINE(DSC);
    BEGIN
        DSC := '##初始化##';
        DBMS_OUTPUT.PUT_LINE(DSC);
        BEGIN
            V_T_DATE := GET_T_DAY(); -- 数据日期 DATA_DATE
        END;
        --校验ODS数据 合同类型为：
        --                       1-抵押合同的  不应该有ODS_MBT_510_F质押表信息
        --                       2-质押合同的  不应该有ODS_MBT_510_E抵押表信息

        IF TABLE_KEY IS NOT NULL THEN
            --处理从页面来的数据
            BEGIN
                DSC := '##计算时点、变化量' || TABLE_KEY || '##';
                DBMS_OUTPUT.PUT_LINE(DSC);
                BEGIN
                    SELECT CASE
                               -- 未上报过且‘抵(质)押合同状态'<> '2-到期/失效’
                               WHEN B.DATA_ID IS NULL AND A.C_CC_STATUS <> '2' THEN
                                   '10'
                               --已上报过且‘抵(质)押合同状态'= '2-到期/失效’ 且未上报过’20-合同到期/失效’时点
                               WHEN B.DATA_ID IS NOT NULL AND A.C_CC_STATUS = '2' THEN
                                   '20'
                               --已报送过且未上报过’20-合同到期/失效’时点且（抵押物信息段和最新一次的抵押物信息段信息不一致或质押物信息段和最新一次的质押物信息段信息不一致）
                               WHEN B.DATA_ID IS NOT NULL AND
                                    ((A.C_GUAR_TYPE = '1' AND EE.FLAG = 1) OR (A.C_GUAR_TYPE = '2' AND FF.FLAG = 1))
                                   THEN
                                   '30'
                               ELSE
                                   '99'
                               END
                        /*--B段
                        CASE
                            WHEN TRIM(A.B_INFO_ID_TYPE || A.B_NAME || A.B_CERT_TYPE || A.B_CERT_NUM || A.B_CUST_NO ||
                                      A.CUST_TYPE || A.B_MNGMT_ORG_CODE) IS NOT NULL THEN
                                CASE
                                    WHEN --B.DATA_ID IS NOT NULL AND
                                            NVL(B.B_INFO_ID_TYPE || B.B_NAME || B.B_CERT_TYPE || B.B_CERT_NUM ||
                                                B.B_CUST_NO || B.CUST_TYPE || B.B_MNGMT_ORG_CODE, 0) <>
                                            NVL(A.B_INFO_ID_TYPE || A.B_NAME || A.B_CERT_TYPE || A.B_CERT_NUM ||
                                                A.B_CUST_NO || A.CUST_TYPE || A.B_MNGMT_ORG_CODE, 0)
                                        THEN
                                        '1'
                                    ELSE
                                        '0'
                                    END
                            ELSE
                                '0'
                            END,
                        --C段
                        CASE
                            WHEN TRIM(A.C_GUAR_TYPE || A.C_CC_AMT || A.C_CY || A.C_CC_VAL_DATE || A.C_CC_EXP_DATE ||
                                      A.C_MAX_GUAR || A.C_CC_STATUS) IS NOT NULL THEN
                                CASE
                                    WHEN --B.DATA_ID IS NOT NULL AND
                                            NVL(B.C_GUAR_TYPE || B.C_CC_AMT || B.C_CY || B.C_CC_VAL_DATE ||
                                                B.C_CC_EXP_DATE || B.C_MAX_GUAR || B.C_CC_STATUS, 0) <>
                                            NVL(A.C_GUAR_TYPE || A.C_CC_AMT || A.C_CY || A.C_CC_VAL_DATE ||
                                                A.C_CC_EXP_DATE || A.C_MAX_GUAR || A.C_CC_STATUS, 0)
                                        THEN
                                        '1'
                                    ELSE
                                        '0'
                                    END
                            ELSE
                                '0'
                            END*/
                    INTO RPT_DATE_CODE_OUT--, B_UPDATE_FLAG, C_UPDATE_FLAG
                    FROM MBT_510 A
                             LEFT JOIN (SELECT *
                                        FROM MBT_510_HIS
                                        WHERE DATA_ID IN (
                                            SELECT ODS_DATA_ID
                                            FROM (SELECT ROW_NUMBER() OVER (PARTITION BY B_CC_CODE ORDER BY B_RPT_DATE DESC) RN,
                                                         T.*
                                                  FROM MBT_510_RPT T
                                                  WHERE DATA_STATUS = '27')
                                            WHERE RN = 1)) B
                                       ON A.B_CC_CODE = B.B_CC_CODE
                             LEFT JOIN (SELECT '1' AS FLAG, B_CC_CODE
                                        FROM (SELECT CASE
                                                         WHEN NVL(A.E_PLE_TYPE || A.E_MOTGA_PROPT_ID_TYPE ||
                                                                  A.E_PLE_CERT_ID || A.E_PLE_DISTR ||
                                                                  A.E_PLE_VALUE || A.E_PLE_CY || A.E_VAL_ORG_TYPE ||
                                                                  A.E_VAL_DATE || A.E_PLEDGOR_TYPE ||
                                                                  A.E_PLEDGOR_NAME || A.E_PLEOR_CERT_TYPE ||
                                                                  A.E_PLEOR_CERT_NUM || A.E_PLE_DESC, 0) <>
                                                              NVL(B.E_PLE_TYPE || B.E_MOTGA_PROPT_ID_TYPE ||
                                                                  B.E_PLE_CERT_ID || B.E_PLE_DISTR ||
                                                                  B.E_PLE_VALUE || B.E_PLE_CY || B.E_VAL_ORG_TYPE ||
                                                                  B.E_VAL_DATE || B.E_PLEDGOR_TYPE ||
                                                                  B.E_PLEDGOR_NAME || B.E_PLEOR_CERT_TYPE ||
                                                                  B.E_PLEOR_CERT_NUM || B.E_PLE_DESC, 0)
                                                             THEN '1'
                                                         ELSE '0' END AS           FLAG,
                                                     NVL(A.B_CC_CODE, B.B_CC_CODE) B_CC_CODE
                                              FROM MBT_510_E A
                                                       FULL JOIN (SELECT A.*
                                                                  FROM MBT_510_E_RPT A,
                                                                       (SELECT *
                                                                        FROM (SELECT ROW_NUMBER() OVER (PARTITION BY B_CC_CODE ORDER BY B_RPT_DATE DESC) RN,
                                                                                     T.*
                                                                              FROM MBT_510_RPT T
                                                                              WHERE 1 = 1
                                                                                AND DATA_STATUS = '27')
                                                                        WHERE RN = 1) B
                                                                  WHERE A.PDATA_ID = B.DATA_ID) B
                                                                 ON NVL(A.E_PLE_TYPE, '0') = NVL(B.E_PLE_TYPE, '0') AND
                                                                    NVL(A.E_MOTGA_PROPT_ID_TYPE, '0') =
                                                                    NVL(B.E_MOTGA_PROPT_ID_TYPE, '0') AND
                                                                    NVL(A.E_PLE_CERT_ID, '0') = NVL(B.E_PLE_CERT_ID, '0') AND
                                                                    NVL(A.E_PLE_DISTR, '0') = NVL(B.E_PLE_DISTR, '0') AND
                                                                    NVL(A.E_PLE_VALUE, '0') = NVL(B.E_PLE_VALUE, '0') AND
                                                                    NVL(A.E_PLE_CY, '0') = NVL(B.E_PLE_CY, '0') AND
                                                                    NVL(A.E_VAL_ORG_TYPE, '0') = NVL(B.E_VAL_ORG_TYPE, '0') AND
                                                                    NVL(A.E_VAL_DATE, '0') = NVL(B.E_VAL_DATE, '0') AND
                                                                    NVL(A.E_PLEDGOR_TYPE, '0') = NVL(B.E_PLEDGOR_TYPE, '0') AND
                                                                    NVL(A.E_PLEDGOR_NAME, '0') = NVL(B.E_PLEDGOR_NAME, '0') AND
                                                                    NVL(A.E_PLEOR_CERT_TYPE, '0') = NVL(B.E_PLEOR_CERT_TYPE, '0') AND
                                                                    NVL(A.E_PLEOR_CERT_NUM, '0') = NVL(B.E_PLEOR_CERT_NUM, '0') AND
                                                                    NVL(A.E_PLE_DESC, '0') = NVL(B.E_PLE_DESC, '0') AND
                                                                    A.B_CC_CODE = B.B_CC_CODE)
                                        WHERE FLAG > 0
                                        GROUP BY B_CC_CODE) EE
                                       ON A.B_CC_CODE = EE.B_CC_CODE
                             LEFT JOIN (SELECT '1' AS FLAG, B_CC_CODE
                                        FROM (SELECT CASE
                                                         WHEN NVL(A.F_IMP_TYPE || A.F_IMP_VAL || A.F_IMP_CY ||
                                                                  A.F_IPPC || A.F_PAWN_NAME ||
                                                                  A.F_PAWN_CERT_TYPE || A.F_PAWN_CERT_NUM, 0) <>
                                                              NVL(B.F_IMP_TYPE || B.F_IMP_VAL || B.F_IMP_CY ||
                                                                  B.F_IPPC || B.F_PAWN_NAME ||
                                                                  B.F_PAWN_CERT_TYPE || B.F_PAWN_CERT_NUM, 0) THEN '1'
                                                         ELSE '0' END AS           FLAG,
                                                     NVL(A.B_CC_CODE, B.B_CC_CODE) B_CC_CODE
                                              FROM MBT_510_F A
                                                       FULL JOIN (SELECT A.*
                                                                  FROM MBT_510_F_RPT A,
                                                                       (SELECT *
                                                                        FROM (SELECT ROW_NUMBER() OVER (PARTITION BY B_CC_CODE ORDER BY B_RPT_DATE DESC) RN,
                                                                                     T.*
                                                                              FROM MBT_510_RPT T
                                                                              WHERE 1 = 1
                                                                                AND DATA_STATUS = '27')
                                                                        WHERE RN = 1) B
                                                                  WHERE A.PDATA_ID = B.DATA_ID) B
                                                                 ON NVL(A.F_IMP_TYPE, '0') = NVL(B.F_IMP_TYPE, '0') AND
                                                                    NVL(A.F_IMP_VAL, '0') = NVL(B.F_IMP_VAL, '0') AND
                                                                    NVL(A.F_IMP_CY, '0') = NVL(B.F_IMP_CY, '0') AND
                                                                    NVL(A.F_IPPC, '0') = NVL(B.F_IPPC, '0') AND
                                                                    NVL(A.F_PAWN_NAME, '0') = NVL(B.F_PAWN_NAME, '0') AND
                                                                    NVL(A.F_PAWN_CERT_TYPE, '0') = NVL(B.F_PAWN_CERT_TYPE, '0') AND
                                                                    NVL(A.F_PAWN_CERT_NUM, '0') = NVL(B.F_PAWN_CERT_NUM, '0') AND
                                                                    A.B_CC_CODE = B.B_CC_CODE)
                                        WHERE FLAG > 0
                                        GROUP BY B_CC_CODE) FF
                                       ON A.B_CC_CODE = FF.B_CC_CODE
                    WHERE NOT EXISTS(--过滤账户关闭的记录
                            SELECT 1
                            FROM MBT_510_RPT B
                            WHERE A.B_CC_CODE = B.B_CC_CODE
                              AND B.DATA_STATUS = '27'
                              AND B.B_RPT_DATE_CODE = '20')
                      AND A.DATA_ID = TABLE_KEY;

                    MERGE INTO MBT_510 T1
                    USING (SELECT A.DATA_ID, CASE WHEN A.C_GUAR_TYPE = '1' THEN '11|110' ELSE '11|101' END AS ISRPT
                           FROM MBT_510 A) T2
                    ON (T1.DATA_ID = T2.DATA_ID)
                    WHEN MATCHED THEN
                        UPDATE
                        SET T1.IS_RPT = T2.ISRPT
                        WHERE T1.DATA_ID = TABLE_KEY;
                END;

                DSC := '##修改子表[MBT_510_D] IS_RPT##';
                DBMS_OUTPUT.PUT_LINE(DSC);
                BEGIN
                    SP_ODS_MBT_CAL_RPT_PROC3('MBT_510_D',
                                             '1 = 1',
                                             D_ARRAYLIST,
                                             'B_CC_CODE',
                                             4,
                                             'MBT_510',
                                             NULL,
                                             TABLE_KEY);
                END;
                /*
                DSC := '##修改子表[MBT_510_E] IS_RPT##';
                DBMS_OUTPUT.PUT_LINE(DSC);
                BEGIN
                    SP_ODS_MBT_CAL_RPT_PROC3('MBT_510_E',
                                             '1 = 1',
                                             E_ARRAYLIST,
                                             'B_CC_CODE',
                                             5,
                                             'MBT_510',
                                             NULL,
                                             TABLE_KEY);
                END;

                DSC := '##修改子表[MBT_510_F] IS_RPT##';
                DBMS_OUTPUT.PUT_LINE(DSC);
                BEGIN
                    SP_ODS_MBT_CAL_RPT_PROC3('MBT_510_F',
                                             '1 = 1',
                                             F_ARRAYLIST,
                                             'B_CC_CODE',
                                             6,
                                             'MBT_510',
                                             NULL,
                                             TABLE_KEY);
                END;

                DSC := '##根据配置计算各段上报标识' || TABLE_KEY || '##';
                DBMS_OUTPUT.PUT_LINE(DSC);
                BEGIN
                    SP_ODS_MBT_CAL_RPT_PROC2('MBT_510',
                                             'T1.B_INF_REC_TYPE = T3.INF_REC_TYPE
                                     AND T3.ACCT_TYPE IS NULL
                                     AND T1.B_RPT_DATE_CODE = T3.RPT_DATE_CODE',
                                             TABLE_KEY);
                END;*/
            END;

        ELSE
            DSC := '##ods数据处理##';
            DBMS_OUTPUT.PUT_LINE(DSC);
            BEGIN
                SELECT COUNT(*) INTO ODS_COUNT FROM ODS_MBT_510;
                IF ODS_COUNT = 0 THEN
                    DSC := '##ods没有数据##';
                    DBMS_OUTPUT.PUT_LINE(DSC);
                ELSE

                    DSC := '##备份mbt数据##';
                    DBMS_OUTPUT.PUT_LINE(DSC);
                    BEGIN
                        EXECUTE IMMEDIATE 'TRUNCATE TABLE MBT_510_TODAY_BAK';
                        INSERT INTO MBT_510_TODAY_BAK
                        SELECT *
                        FROM MBT_510;

                        EXECUTE IMMEDIATE 'TRUNCATE TABLE MBT_510_D_TODAY_BAK';
                        INSERT INTO MBT_510_D_TODAY_BAK
                        SELECT *
                        FROM MBT_510_D;

                        EXECUTE IMMEDIATE 'TRUNCATE TABLE MBT_510_E_TODAY_BAK';
                        INSERT INTO MBT_510_E_TODAY_BAK
                        SELECT *
                        FROM MBT_510_E;

                        EXECUTE IMMEDIATE 'TRUNCATE TABLE MBT_510_F_TODAY_BAK';
                        INSERT INTO MBT_510_F_TODAY_BAK
                        SELECT *
                        FROM MBT_510_F;
                    END;
                    DSC := '##主表数据新增或修改，计算上报标识##';
                    DBMS_OUTPUT.PUT_LINE(DSC);
                    BEGIN
                        MERGE INTO MBT_510 T1
                        USING (SELECT A.*,
                                      --ods的数据在mbt中没有
                                      --计算段上报标识,段有值标识为1，没值标识为0
                                      --B段
                                      CASE
                                          WHEN D.DATA_ID IS NULL AND
                                               TRIM(A.B_INFO_ID_TYPE || A.B_NAME || A.B_CERT_TYPE || A.B_CERT_NUM ||
                                                    A.B_CUST_NO || A.CUST_TYPE || A.B_MNGMT_ORG_CODE) IS NOT NULL
                                              THEN
                                              '1'
                                          ELSE
                                              '0'
                                          END                                             AS N_B_UPDATE_FALG,
                                      --B段
                                      CASE
                                          WHEN D.DATA_ID IS NULL AND
                                               TRIM(A.C_GUAR_TYPE || A.C_CC_AMT || A.C_CY || A.C_CC_VAL_DATE ||
                                                    A.C_CC_EXP_DATE || A.C_MAX_GUAR || A.C_CC_STATUS) IS NOT NULL
                                              THEN
                                              '1'
                                          ELSE
                                              '0'
                                          END                                             AS N_C_UPDATE_FALG,
                                      --初始化机构
                                      CASE WHEN D.DATA_ID IS NULL THEN E.SECTION_CODE END AS SECTION_CODE,
                                      --ods的数据在mbt中有
                                      --计算段上报标识
                                      --B段
                                      CASE
                                          WHEN NVL(B.B_INFO_ID_TYPE || B.B_NAME || B.B_CERT_TYPE || B.B_CERT_NUM ||
                                                   B.B_CUST_NO || B.CUST_TYPE || B.B_MNGMT_ORG_CODE, 0) <>
                                               NVL(A.B_INFO_ID_TYPE || A.B_NAME || A.B_CERT_TYPE || A.B_CERT_NUM ||
                                                   A.B_CUST_NO || A.CUST_TYPE || A.B_MNGMT_ORG_CODE, 0)
                                              THEN
                                              CASE
                                                  WHEN NVL(C.B_INFO_ID_TYPE || C.B_NAME || C.B_CERT_TYPE ||
                                                           C.B_CERT_NUM || C.B_CUST_NO || C.CUST_TYPE ||
                                                           C.B_MNGMT_ORG_CODE, 0) <>
                                                       NVL(A.B_INFO_ID_TYPE || A.B_NAME || A.B_CERT_TYPE ||
                                                           A.B_CERT_NUM || A.B_CUST_NO || A.CUST_TYPE ||
                                                           A.B_MNGMT_ORG_CODE, 0)
                                                      THEN
                                                      '1'
                                                  ELSE
                                                      '0'
                                                  END
                                          ELSE
                                              '0'
                                          END                                             AS B_UPDATE_FLAG,
                                      --C段
                                      CASE
                                          WHEN NVL(B.C_GUAR_TYPE || B.C_CC_AMT || B.C_CY || B.C_CC_VAL_DATE ||
                                                   B.C_CC_EXP_DATE || B.C_MAX_GUAR || B.C_CC_STATUS, 0) <>
                                               NVL(A.C_GUAR_TYPE || A.C_CC_AMT || A.C_CY || A.C_CC_VAL_DATE ||
                                                   A.C_CC_EXP_DATE || A.C_MAX_GUAR || A.C_CC_STATUS, 0)
                                              THEN
                                              CASE
                                                  WHEN NVL(C.C_GUAR_TYPE || C.C_CC_AMT || C.C_CY || C.C_CC_VAL_DATE ||
                                                           C.C_CC_EXP_DATE || C.C_MAX_GUAR || C.C_CC_STATUS, 0) <>
                                                       NVL(A.C_GUAR_TYPE || A.C_CC_AMT || A.C_CY || A.C_CC_VAL_DATE ||
                                                           A.C_CC_EXP_DATE || A.C_MAX_GUAR || A.C_CC_STATUS, 0)
                                                      THEN
                                                      '1'
                                                  ELSE
                                                      '0'
                                                  END
                                          ELSE
                                              '0'
                                          END                                             AS C_UPDATE_FLAG
                               FROM ODS_MBT_510 A
                                        LEFT JOIN (SELECT *
                                                   FROM (SELECT ROW_NUMBER()
                                                                        OVER (PARTITION BY B_CC_CODE ORDER BY DATA_LOAD_TIME DESC) RN,
                                                                T.*
                                                         FROM ODS_MBT_510_HIS T
                                                         ORDER BY DATA_LOAD_TIME DESC
                                                        )
                                                   WHERE RN = 1) B --与ods上次数据比较
                                                  ON A.B_CC_CODE = B.B_CC_CODE
                                        LEFT JOIN (SELECT *
                                                   FROM MBT_510_HIS
                                                   WHERE DATA_ID IN (
                                                       SELECT ODS_DATA_ID
                                                       FROM (SELECT ROW_NUMBER()
                                                                            OVER (PARTITION BY B_CC_CODE ORDER BY T.B_RPT_DATE DESC) RN,
                                                                    T.*
                                                             FROM MBT_510_RPT T
                                                             WHERE DATA_STATUS = '27')
                                                       WHERE RN = 1)) C --看数据是否已报送过
                                                  ON A.B_CC_CODE = C.B_CC_CODE
                                        LEFT JOIN MBT_510 D --需要考虑mbt表中有用户新增的和ods中一样的数据
                                                  ON A.B_CC_CODE = D.B_CC_CODE
                                        LEFT JOIN MBT_SECTION_CODE E --新增的情况，为机构赋值
                                                  ON D.ORG_ID = E.ORG_ID
                               WHERE NOT EXISTS(--过滤账户关闭的记录
                                       SELECT 1
                                       FROM MBT_510_RPT B
                                       WHERE A.B_CC_CODE = B.B_CC_CODE
                                         AND B.DATA_STATUS = '27'
                                         AND B.B_RPT_DATE_CODE = '20')
                        ) T2
                        ON (T1.B_CC_CODE = T2.B_CC_CODE)
                        WHEN MATCHED THEN
                            UPDATE
                            SET T1.B_INFO_ID_TYPE   = CASE
                                                          WHEN T2.B_UPDATE_FLAG = '1' THEN T2.B_INFO_ID_TYPE
                                                          WHEN T2.B_UPDATE_FLAG = '0' THEN T1.B_INFO_ID_TYPE END,
                                T1.B_NAME           = CASE
                                                          WHEN T2.B_UPDATE_FLAG = '1' THEN T2.B_NAME
                                                          WHEN T2.B_UPDATE_FLAG = '0' THEN T1.B_NAME END,
                                T1.B_CERT_TYPE      = CASE
                                                          WHEN T2.B_UPDATE_FLAG = '1' THEN T2.B_CERT_TYPE
                                                          WHEN T2.B_UPDATE_FLAG = '0' THEN T1.B_CERT_TYPE END,
                                T1.B_CERT_NUM       = CASE
                                                          WHEN T2.B_UPDATE_FLAG = '1' THEN T2.B_CERT_NUM
                                                          WHEN T2.B_UPDATE_FLAG = '0' THEN T1.B_CERT_NUM END,
                                T1.B_MNGMT_ORG_CODE = CASE
                                                          WHEN T2.B_UPDATE_FLAG = '1' THEN T2.B_MNGMT_ORG_CODE
                                                          WHEN T2.B_UPDATE_FLAG = '0' THEN T1.B_MNGMT_ORG_CODE END,
                                T1.C_GUAR_TYPE      = CASE
                                                          WHEN T2.C_UPDATE_FLAG = '1' THEN T2.C_GUAR_TYPE
                                                          WHEN T2.C_UPDATE_FLAG = '0' THEN T1.C_GUAR_TYPE END,
                                T1.C_CC_AMT         = CASE
                                                          WHEN T2.C_UPDATE_FLAG = '1' THEN T2.C_CC_AMT
                                                          WHEN T2.C_UPDATE_FLAG = '0' THEN T1.C_CC_AMT END,
                                T1.C_CY             = CASE
                                                          WHEN T2.C_UPDATE_FLAG = '1' THEN T2.C_CY
                                                          WHEN T2.C_UPDATE_FLAG = '0' THEN T1.C_CY END,
                                T1.C_CC_VAL_DATE    = CASE
                                                          WHEN T2.C_UPDATE_FLAG = '1' THEN T2.C_CC_VAL_DATE
                                                          WHEN T2.C_UPDATE_FLAG = '0' THEN T1.C_CC_VAL_DATE END,
                                T1.C_CC_EXP_DATE    = CASE
                                                          WHEN T2.C_UPDATE_FLAG = '1' THEN T2.C_CC_EXP_DATE
                                                          WHEN T2.C_UPDATE_FLAG = '0' THEN T1.C_CC_EXP_DATE END,
                                T1.C_MAX_GUAR       = CASE
                                                          WHEN T2.C_UPDATE_FLAG = '1' THEN T2.C_MAX_GUAR
                                                          WHEN T2.C_UPDATE_FLAG = '0' THEN T1.C_MAX_GUAR END,
                                T1.C_CC_STATUS      = CASE
                                                          WHEN T2.C_UPDATE_FLAG = '1' THEN T2.C_CC_STATUS
                                                          WHEN T2.C_UPDATE_FLAG = '0' THEN T1.C_CC_STATUS END,
                                --T1.IS_RPT           = (B_UPDATE_FLAG || C_UPDATE_FLAG || '|'),
                                T1.CUST_TYPE        = T2.CUST_TYPE,
                                T1.DATA_STATUS      = '00',
                                T1.DATA_SOURCE      = '2',
                                T1.DATA_CHG_USER    = 'SYSTEM',
                                T1.DATA_CHG_DATE    = CURRENTDATE,
                                T1.DATA_CHG_TIME    = CURRENTTIME,
                                T1.B_RPT_DATE       = V_T_DATE,
                                T1.CHECK_FLAG       = 'N'
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
                             T1.B_CC_CODE,
                             T1.B_RPT_DATE,
                             T1.B_RPT_DATE_CODE,
                             T1.B_INFO_ID_TYPE,
                             T1.B_NAME,
                             T1.B_CERT_TYPE,
                             T1.B_CERT_NUM,
                             T1.B_MNGMT_ORG_CODE,
                             T1.B_CUST_NO,
                             T1.C_GUAR_TYPE,
                             T1.C_CC_AMT,
                             T1.C_CY,
                             T1.C_CC_VAL_DATE,
                             T1.C_CC_EXP_DATE,
                             T1.C_MAX_GUAR,
                             T1.C_CC_STATUS,
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
                             T1.IS_RPT,
                             T1.CUST_TYPE)
                            VALUES (T2.DATA_ID,
                                    T2.DATA_DATE,
                                    T2.CORP_ID,
                                    T2.ORG_ID,
                                    T2.GROUP_ID,
                                    T2.ORG_ID,
                                    T2.ORG_ID,
                                    '510',
                                    T2.B_CC_CODE,
                                    V_T_DATE,
                                    '10',
                                    T2.B_INFO_ID_TYPE,
                                    T2.B_NAME,
                                    T2.B_CERT_TYPE,
                                    T2.B_CERT_NUM,
                                    T2.B_MNGMT_ORG_CODE,
                                    T2.B_CUST_NO,
                                    T2.C_GUAR_TYPE,
                                    T2.C_CC_AMT,
                                    T2.C_CY,
                                    T2.C_CC_VAL_DATE,
                                    T2.C_CC_EXP_DATE,
                                    T2.C_MAX_GUAR,
                                    T2.C_CC_STATUS,
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
                                    '',--(N_B_UPDATE_FALG || N_C_UPDATE_FALG || '|'),
                                    T2.CUST_TYPE);
                    END;

                    DSC := '##子表[MBT_510_D]数据新增或修改##';
                    DBMS_OUTPUT.PUT_LINE(DSC);
                    BEGIN
                        -- 先删除所有相关数据 然后重新插入
                        DELETE
                        FROM MBT_510_D
                        WHERE B_CC_CODE IN (SELECT DISTINCT B_CC_CODE FROM ODS_MBT_510);
                        --新增数据
                        MERGE INTO MBT_510_D T1
                        USING (SELECT A.DATA_ID,
                                      A.DATA_DATE,
                                      A.D_INFO_ID_TYPE,
                                      A.D_GUAR_NAME,
                                      A.D_GUAR_CERT_TYPE,
                                      A.D_GUAR_CERT_NUM,
                                      A.D_GUAR_NO,
                                      A.RSV1,
                                      A.RSV2,
                                      A.RSV3,
                                      A.RSV4,
                                      A.RSV5,
                                      A.B_CC_CODE,
                                      C.DATA_ID AS PDATA_ID
                               FROM ODS_MBT_510_D A
                                        LEFT JOIN MBT_510 C
                                                  ON A.B_CC_CODE = C.B_CC_CODE
                               WHERE NOT EXISTS(--过滤账户关闭的记录
                                       SELECT 1
                                       FROM MBT_510_RPT B
                                       WHERE A.B_CC_CODE = B.B_CC_CODE
                                         AND B.DATA_STATUS = '27'
                                         AND B.B_RPT_DATE_CODE = '20')) T2
                        ON (T1.B_CC_CODE = T2.B_CC_CODE AND T1.D_INFO_ID_TYPE = T2.D_INFO_ID_TYPE AND
                            T1.D_GUAR_CERT_TYPE = T2.D_GUAR_CERT_TYPE AND T1.D_GUAR_CERT_NUM = T2.D_GUAR_CERT_NUM)
                        WHEN NOT MATCHED THEN
                            INSERT
                            (T1.DATA_ID,
                             T1.PDATA_ID,
                             T1.DATA_DATE,
                             T1.B_CC_CODE,
                             T1.D_INFO_ID_TYPE,
                             T1.D_GUAR_NAME,
                             T1.D_GUAR_CERT_TYPE,
                             T1.D_GUAR_CERT_NUM,
                             T1.D_GUAR_NO,
                             T1.DATA_SOURE,
                             T1.DATA_CRT_USER,
                             T1.DATA_CRT_DATE,
                             T1.DATA_CRT_TIME,
                             T1.RSV1,
                             T1.RSV2,
                             T1.RSV3,
                             T1.RSV4,
                             T1.RSV5)
                            VALUES (T2.DATA_ID,
                                    T2.PDATA_ID,
                                    T2.DATA_DATE,
                                    T2.B_CC_CODE,
                                    T2.D_INFO_ID_TYPE,
                                    T2.D_GUAR_NAME,
                                    T2.D_GUAR_CERT_TYPE,
                                    T2.D_GUAR_CERT_NUM,
                                    T2.D_GUAR_NO,
                                    '2',
                                    'SYSEM',
                                    CURRENTDATE,
                                    CURRENTTIME,
                                    T2.RSV1,
                                    T2.RSV2,
                                    T2.RSV3,
                                    T2.RSV4,
                                    'FLAG');
                    END;

                    DSC := '##更改主表数据状态##';
                    DBMS_OUTPUT.PUT_LINE(DSC);
                    BEGIN
                        MERGE INTO MBT_510 T1
                        USING (SELECT DISTINCT B.DATA_ID
                               FROM MBT_510_D A
                                        LEFT JOIN MBT_510 B
                                                  ON A.PDATA_ID = B.DATA_ID
                               WHERE A.RSV5 = 'FLAG') T2
                        ON (T1.DATA_ID = T2.DATA_ID)
                        WHEN MATCHED THEN
                            UPDATE SET T1.DATA_STATUS = '00';
                    END;
                    DSC := '##更改子表[MBT_510_E]数据状态##';
                    DBMS_OUTPUT.PUT_LINE(DSC);
                    BEGIN
                        UPDATE MBT_510_D SET RSV5 = NULL WHERE RSV5 = 'FLAG';
                    END;
                    DSC := '##子表[MBT_510_E]数据新增或修改##';
                    DBMS_OUTPUT.PUT_LINE(DSC);
                    BEGIN
                        -- 先删除所有相关数据 然后重新插入
                        DELETE
                        FROM MBT_510_E
                        WHERE B_CC_CODE IN (SELECT DISTINCT B_CC_CODE FROM ODS_MBT_510);
                        --新增数据
                        MERGE INTO MBT_510_E T1
                        USING (SELECT A.DATA_ID,
                                      A.DATA_DATE,
                                      A.E_PLE_TYPE,
                                      A.E_MOTGA_PROPT_ID_TYPE,
                                      A.E_PLE_CERT_ID,
                                      A.E_PLE_DISTR,
                                      A.E_PLE_VALUE,
                                      A.E_PLE_CY,
                                      A.E_VAL_ORG_TYPE,
                                      A.E_VAL_DATE,
                                      A.E_PLEDGOR_TYPE,
                                      A.E_PLEDGOR_NAME,
                                      A.E_PLEOR_CERT_TYPE,
                                      A.E_PLEOR_CERT_NUM,
                                      A.E_PLE_DESC,
                                      A.RSV1,
                                      A.RSV2,
                                      A.RSV3,
                                      A.RSV4,
                                      A.RSV5,
                                      A.B_CC_CODE,
                                      C.DATA_ID AS PDATA_ID
                               FROM ODS_MBT_510_E A
                                        LEFT JOIN MBT_510 C
                                                  ON A.B_CC_CODE = C.B_CC_CODE
                               WHERE NOT EXISTS(--过滤账户关闭的记录
                                       SELECT 1
                                       FROM MBT_510_RPT B
                                       WHERE A.B_CC_CODE = B.B_CC_CODE
                                         AND B.DATA_STATUS = '27'
                                         AND B.B_RPT_DATE_CODE = '20')
                                 AND C.C_GUAR_TYPE = '1') T2
                        ON (T1.B_CC_CODE = T2.B_CC_CODE
                            AND T1.E_PLE_TYPE = T2.E_PLE_TYPE
                            AND T1.E_PLE_CERT_ID = T2.E_PLE_CERT_ID
                            AND T1.E_PLEDGOR_TYPE = T2.E_PLEDGOR_TYPE
                            AND T1.E_PLEOR_CERT_TYPE = T2.E_PLEOR_CERT_TYPE
                            AND T1.E_PLEOR_CERT_NUM = T2.E_PLEOR_CERT_NUM)
                        WHEN NOT MATCHED THEN
                            INSERT
                            (T1.DATA_ID,
                             T1.PDATA_ID,
                             T1.DATA_DATE,
                             T1.B_CC_CODE,
                             T1.E_PLE_TYPE,
                             T1.E_MOTGA_PROPT_ID_TYPE,
                             T1.E_PLE_CERT_ID,
                             T1.E_PLE_DISTR,
                             T1.E_PLE_VALUE,
                             T1.E_PLE_CY,
                             T1.E_VAL_ORG_TYPE,
                             T1.E_VAL_DATE,
                             T1.E_PLEDGOR_TYPE,
                             T1.E_PLEDGOR_NAME,
                             T1.E_PLEOR_CERT_TYPE,
                             T1.E_PLEOR_CERT_NUM,
                             T1.E_PLE_DESC,
                             T1.DATA_SOURE,
                             T1.DATA_CRT_USER,
                             T1.DATA_CRT_DATE,
                             T1.DATA_CRT_TIME,
                             T1.RSV1,
                             T1.RSV2,
                             T1.RSV3,
                             T1.RSV4,
                             T1.RSV5)
                            VALUES (T2.DATA_ID,
                                    T2.PDATA_ID,
                                    T2.DATA_DATE,
                                    T2.B_CC_CODE,
                                    T2.E_PLE_TYPE,
                                    T2.E_MOTGA_PROPT_ID_TYPE,
                                    T2.E_PLE_CERT_ID,
                                    T2.E_PLE_DISTR,
                                    T2.E_PLE_VALUE,
                                    T2.E_PLE_CY,
                                    T2.E_VAL_ORG_TYPE,
                                    T2.E_VAL_DATE,
                                    T2.E_PLEDGOR_TYPE,
                                    T2.E_PLEDGOR_NAME,
                                    T2.E_PLEOR_CERT_TYPE,
                                    T2.E_PLEOR_CERT_NUM,
                                    T2.E_PLE_DESC,
                                    '2',
                                    'SYSEM',
                                    CURRENTDATE,
                                    CURRENTTIME,
                                    T2.RSV1,
                                    T2.RSV2,
                                    T2.RSV3,
                                    T2.RSV4,
                                    'FLAG');
                    END;

                    DSC := '##更改主表数据状态##';
                    DBMS_OUTPUT.PUT_LINE(DSC);
                    BEGIN
                        MERGE INTO MBT_510 T1
                        USING (SELECT DISTINCT B.DATA_ID
                               FROM MBT_510_E A
                                        LEFT JOIN MBT_510 B
                                                  ON A.PDATA_ID = B.DATA_ID
                               WHERE A.RSV5 = 'FLAG') T2
                        ON (T1.DATA_ID = T2.DATA_ID)
                        WHEN MATCHED THEN
                            UPDATE SET T1.DATA_STATUS = '00';
                    END;
                    DSC := '##更改子表[MBT_510_E]数据状态##';
                    DBMS_OUTPUT.PUT_LINE(DSC);
                    BEGIN
                        UPDATE MBT_510_E SET RSV5 = NULL WHERE RSV5 = 'FLAG';
                    END;

                    DSC := '##子表[MBT_510_F]数据新增或修改##';
                    DBMS_OUTPUT.PUT_LINE(DSC);
                    BEGIN
                        -- 先删除所有相关数据 然后重新插入
                        DELETE
                        FROM MBT_510_F
                        WHERE B_CC_CODE IN (SELECT DISTINCT B_CC_CODE FROM ODS_MBT_510);
                        --新增数据
                        MERGE INTO MBT_510_F T1
                        USING (SELECT A.DATA_ID,
                                      A.DATA_DATE,
                                      A.F_IMP_TYPE,
                                      A.F_IMP_VAL,
                                      A.F_IMP_CY,
                                      A.F_IPPC,
                                      A.F_PAWN_NAME,
                                      A.F_PAWN_CERT_TYPE,
                                      A.F_PAWN_CERT_NUM,
                                      A.RSV1,
                                      A.RSV2,
                                      A.RSV3,
                                      A.RSV4,
                                      A.RSV5,
                                      A.B_CC_CODE,
                                      C.DATA_ID AS PDATA_ID
                               FROM ODS_MBT_510_F A
                                        LEFT JOIN MBT_510 C
                                                  ON A.B_CC_CODE = C.B_CC_CODE
                               WHERE NOT EXISTS(--过滤账户关闭的记录
                                       SELECT 1
                                       FROM MBT_510_RPT B
                                       WHERE A.B_CC_CODE = B.B_CC_CODE
                                         AND B.DATA_STATUS = '27'
                                         AND B.B_RPT_DATE_CODE = '20')
                                 AND C.C_GUAR_TYPE = '2') T2
                        ON (T1.B_CC_CODE = T2.B_CC_CODE AND T1.F_IMP_TYPE = T2.F_IMP_TYPE AND T1.F_IPPC = T2.F_IPPC AND
                            T1.F_PAWN_CERT_TYPE = T2.F_PAWN_CERT_TYPE AND T1.F_PAWN_CERT_NUM = T2.F_PAWN_CERT_NUM)
                        WHEN NOT MATCHED THEN
                            INSERT
                            (T1.DATA_ID,
                             T1.PDATA_ID,
                             T1.DATA_DATE,
                             T1.B_CC_CODE,
                             T1.F_IMP_TYPE,
                             T1.F_IMP_VAL,
                             T1.F_IMP_CY,
                             T1.F_IPPC,
                             T1.F_PAWN_NAME,
                             T1.F_PAWN_CERT_TYPE,
                             T1.F_PAWN_CERT_NUM,
                             T1.DATA_SOURE,
                             T1.DATA_CRT_USER,
                             T1.DATA_CRT_DATE,
                             T1.DATA_CRT_TIME,
                             T1.RSV1,
                             T1.RSV2,
                             T1.RSV3,
                             T1.RSV4,
                             T1.RSV5)
                            VALUES (T2.DATA_ID,
                                    T2.PDATA_ID,
                                    T2.DATA_DATE,
                                    T2.B_CC_CODE,
                                    T2.F_IMP_TYPE,
                                    T2.F_IMP_VAL,
                                    T2.F_IMP_CY,
                                    T2.F_IPPC,
                                    T2.F_PAWN_NAME,
                                    T2.F_PAWN_CERT_TYPE,
                                    T2.F_PAWN_CERT_NUM,
                                    '2',
                                    'SYSEM',
                                    CURRENTDATE,
                                    CURRENTTIME,
                                    T2.RSV1,
                                    T2.RSV2,
                                    T2.RSV3,
                                    T2.RSV4,
                                    'FLAG');
                    END;

                    DSC := '##更改主表数据状态##';
                    DBMS_OUTPUT.PUT_LINE(DSC);
                    BEGIN
                        MERGE INTO MBT_510 T1
                        USING (SELECT DISTINCT B.DATA_ID
                               FROM MBT_510_F A
                                        LEFT JOIN MBT_510 B
                                                  ON A.PDATA_ID = B.DATA_ID
                               WHERE A.RSV5 = 'FLAG') T2
                        ON (T1.DATA_ID = T2.DATA_ID)
                        WHEN MATCHED THEN
                            UPDATE SET T1.DATA_STATUS = '00';
                    END;

                    DSC := '##更改子表[MBT_510_E]数据状态##';
                    DBMS_OUTPUT.PUT_LINE(DSC);
                    BEGIN
                        UPDATE MBT_510_F SET RSV5 = NULL WHERE RSV5 = 'FLAG';
                    END;
                    DSC := '##更新报告时点##';
                    DBMS_OUTPUT.PUT_LINE(DSC);
                    BEGIN
                        MERGE INTO MBT_510 T1
                        USING (SELECT A.*,
                                      CASE
                                          -- 未上报过且‘抵(质)押合同状态'<> '2-到期/失效’
                                          WHEN B.DATA_ID IS NULL AND A.C_CC_STATUS <> '2' THEN
                                              '10'
                                          --已上报过且‘抵(质)押合同状态'= '2-到期/失效’ 且未上报过’20-合同到期/失效’时点
                                          WHEN B.DATA_ID IS NOT NULL AND A.C_CC_STATUS = '2' THEN
                                              '20'
                                          --已报送过且未上报过’20-合同到期/失效’时点且（抵押物信息段和最新一次的抵押物信息段信息不一致或质押物信息段和最新一次的质押物信息段信息不一致）
                                          WHEN B.DATA_ID IS NOT NULL AND ((A.C_GUAR_TYPE = '1' AND EE.FLAG = 1) OR
                                                                          (A.C_GUAR_TYPE = '2' AND FF.FLAG = 1)) THEN
                                              '30'
                                          ELSE
                                              '99'
                                          END AS RPT_DATE_CODE_OUT
                               FROM MBT_510 A
                                        LEFT JOIN (SELECT *
                                                   FROM MBT_510_HIS
                                                   WHERE DATA_ID IN (
                                                       SELECT ODS_DATA_ID
                                                       FROM (SELECT ROW_NUMBER() OVER (PARTITION BY B_CC_CODE ORDER BY B_RPT_DATE DESC) RN,
                                                                    T.*
                                                             FROM MBT_510_RPT T
                                                             WHERE DATA_STATUS = '27')
                                                       WHERE RN = 1)) B
                                                  ON A.B_CC_CODE = B.B_CC_CODE
                                        LEFT JOIN (SELECT '1' AS FLAG, B_CC_CODE
                                                   FROM (SELECT CASE
                                                                    WHEN NVL(A.E_PLE_TYPE || A.E_MOTGA_PROPT_ID_TYPE ||
                                                                             A.E_PLE_CERT_ID || A.E_PLE_DISTR ||
                                                                             A.E_PLE_VALUE || A.E_PLE_CY ||
                                                                             A.E_VAL_ORG_TYPE ||
                                                                             A.E_VAL_DATE || A.E_PLEDGOR_TYPE ||
                                                                             A.E_PLEDGOR_NAME || A.E_PLEOR_CERT_TYPE ||
                                                                             A.E_PLEOR_CERT_NUM || A.E_PLE_DESC, 0) <>
                                                                         NVL(B.E_PLE_TYPE || B.E_MOTGA_PROPT_ID_TYPE ||
                                                                             B.E_PLE_CERT_ID || B.E_PLE_DISTR ||
                                                                             B.E_PLE_VALUE || B.E_PLE_CY ||
                                                                             B.E_VAL_ORG_TYPE ||
                                                                             B.E_VAL_DATE || B.E_PLEDGOR_TYPE ||
                                                                             B.E_PLEDGOR_NAME || B.E_PLEOR_CERT_TYPE ||
                                                                             B.E_PLEOR_CERT_NUM || B.E_PLE_DESC, 0)
                                                                        THEN '1'
                                                                    ELSE '0' END AS           FLAG,
                                                                NVL(A.B_CC_CODE, B.B_CC_CODE) B_CC_CODE
                                                         FROM MBT_510_E A
                                                                  FULL JOIN (SELECT A.*
                                                                             FROM MBT_510_E_RPT A,
                                                                                  (SELECT *
                                                                                   FROM (SELECT ROW_NUMBER() OVER (PARTITION BY B_CC_CODE ORDER BY B_RPT_DATE DESC) RN,
                                                                                                T.*
                                                                                         FROM MBT_510_RPT T
                                                                                         WHERE 1 = 1
                                                                                           AND DATA_STATUS = '27')
                                                                                   WHERE RN = 1) B
                                                                             WHERE A.PDATA_ID = B.DATA_ID) B
                                                                            ON NVL(A.E_PLE_TYPE, '0') = NVL(B.E_PLE_TYPE, '0') AND
                                                                               NVL(A.E_MOTGA_PROPT_ID_TYPE, '0') =
                                                                               NVL(B.E_MOTGA_PROPT_ID_TYPE, '0') AND
                                                                               NVL(A.E_PLE_CERT_ID, '0') = NVL(B.E_PLE_CERT_ID, '0') AND
                                                                               NVL(A.E_PLE_DISTR, '0') = NVL(B.E_PLE_DISTR, '0') AND
                                                                               NVL(A.E_PLE_VALUE, '0') = NVL(B.E_PLE_VALUE, '0') AND
                                                                               NVL(A.E_PLE_CY, '0') = NVL(B.E_PLE_CY, '0') AND
                                                                               NVL(A.E_VAL_ORG_TYPE, '0') = NVL(B.E_VAL_ORG_TYPE, '0') AND
                                                                               NVL(A.E_VAL_DATE, '0') = NVL(B.E_VAL_DATE, '0') AND
                                                                               NVL(A.E_PLEDGOR_TYPE, '0') = NVL(B.E_PLEDGOR_TYPE, '0') AND
                                                                               NVL(A.E_PLEDGOR_NAME, '0') = NVL(B.E_PLEDGOR_NAME, '0') AND
                                                                               NVL(A.E_PLEOR_CERT_TYPE, '0') = NVL(B.E_PLEOR_CERT_TYPE, '0') AND
                                                                               NVL(A.E_PLEOR_CERT_NUM, '0') = NVL(B.E_PLEOR_CERT_NUM, '0') AND
                                                                               NVL(A.E_PLE_DESC, '0') = NVL(B.E_PLE_DESC, '0') AND
                                                                               A.B_CC_CODE = B.B_CC_CODE)
                                                   WHERE FLAG > 0
                                                   GROUP BY B_CC_CODE) EE
                                                  ON A.B_CC_CODE = EE.B_CC_CODE
                                        LEFT JOIN (SELECT '1' AS FLAG, B_CC_CODE
                                                   FROM (SELECT CASE
                                                                    WHEN NVL(A.F_IMP_TYPE || A.F_IMP_VAL ||
                                                                             A.F_IMP_CY ||
                                                                             A.F_IPPC || A.F_PAWN_NAME ||
                                                                             A.F_PAWN_CERT_TYPE || A.F_PAWN_CERT_NUM,
                                                                             0) <>
                                                                         NVL(B.F_IMP_TYPE || B.F_IMP_VAL ||
                                                                             B.F_IMP_CY ||
                                                                             B.F_IPPC || B.F_PAWN_NAME ||
                                                                             B.F_PAWN_CERT_TYPE || B.F_PAWN_CERT_NUM, 0)
                                                                        THEN '1'
                                                                    ELSE '0' END AS           FLAG,
                                                                NVL(A.B_CC_CODE, B.B_CC_CODE) B_CC_CODE
                                                         FROM MBT_510_F A
                                                                  FULL JOIN (SELECT A.*
                                                                             FROM MBT_510_F_RPT A,
                                                                                  (SELECT *
                                                                                   FROM (SELECT ROW_NUMBER() OVER (PARTITION BY B_CC_CODE ORDER BY B_RPT_DATE DESC) RN,
                                                                                                T.*
                                                                                         FROM MBT_510_RPT T
                                                                                         WHERE 1 = 1
                                                                                           AND DATA_STATUS = '27')
                                                                                   WHERE RN = 1) B
                                                                             WHERE A.PDATA_ID = B.DATA_ID) B
                                                                            ON NVL(A.F_IMP_TYPE, '0') = NVL(B.F_IMP_TYPE, '0') AND
                                                                               NVL(A.F_IMP_VAL, '0') = NVL(B.F_IMP_VAL, '0') AND
                                                                               NVL(A.F_IMP_CY, '0') = NVL(B.F_IMP_CY, '0') AND
                                                                               NVL(A.F_IPPC, '0') = NVL(B.F_IPPC, '0') AND
                                                                               NVL(A.F_PAWN_NAME, '0') = NVL(B.F_PAWN_NAME, '0') AND
                                                                               NVL(A.F_PAWN_CERT_TYPE, '0') = NVL(B.F_PAWN_CERT_TYPE, '0') AND
                                                                               NVL(A.F_PAWN_CERT_NUM, '0') = NVL(B.F_PAWN_CERT_NUM, '0') AND
                                                                               A.B_CC_CODE = B.B_CC_CODE)
                                                   WHERE FLAG > 0
                                                   GROUP BY B_CC_CODE) FF
                                                  ON A.B_CC_CODE = FF.B_CC_CODE
                               WHERE NOT EXISTS(--过滤账户关闭的记录
                                       SELECT 1
                                       FROM MBT_510_RPT B
                                       WHERE A.B_CC_CODE = B.B_CC_CODE
                                         AND B.DATA_STATUS = '27'
                                         AND B.B_RPT_DATE_CODE = '20')
                        ) T2
                        ON (T1.DATA_ID = T2.DATA_ID)
                        WHEN MATCHED THEN
                            UPDATE SET T1.B_RPT_DATE_CODE = T2.RPT_DATE_CODE_OUT;
                    END;

                    DSC := '##根据合同类型修改上报标识##';
                    DBMS_OUTPUT.PUT_LINE(DSC);
                    BEGIN
                        MERGE INTO MBT_510 T1
                        USING (SELECT A.DATA_ID, CASE WHEN A.C_GUAR_TYPE = '1' THEN '11|110' ELSE '11|101' END AS ISRPT
                               FROM MBT_510 A) T2
                        ON (T1.DATA_ID = T2.DATA_ID)
                        WHEN MATCHED THEN
                            UPDATE
                            SET T1.IS_RPT = T2.ISRPT;
                    END;

                    DSC := '##修改子表[MBT_510_D] IS_RPT##';
                    DBMS_OUTPUT.PUT_LINE(DSC);
                    BEGIN
                        SP_ODS_MBT_CAL_RPT_PROC3('MBT_510_D',
                                                 '1 = 1',
                                                 D_ARRAYLIST,
                                                 'B_CC_CODE',
                                                 4,
                                                 'MBT_510',
                                                 'A.DATA_SOURCE = ''2'' AND A.DATA_STATUS = ''00''',
                                                 NULL);
                    END;
                    /*
                    DSC := '##修改子表[MBT_510_E] IS_RPT##';
                    DBMS_OUTPUT.PUT_LINE(DSC);
                    BEGIN
                        SP_ODS_MBT_CAL_RPT_PROC3('MBT_510_E',
                                                 '1 = 1',
                                                 E_ARRAYLIST,
                                                 'B_CC_CODE',
                                                 5,
                                                 'MBT_510',
                                                 'A.DATA_SOURCE = ''2'' AND A.DATA_STATUS = ''00''',
                                                 NULL);
                    END;

                    DSC := '##修改子表[MBT_510_F] IS_RPT##';
                    DBMS_OUTPUT.PUT_LINE(DSC);
                    BEGIN
                        SP_ODS_MBT_CAL_RPT_PROC3('MBT_510_F',
                                                 '1 = 1',
                                                 F_ARRAYLIST,
                                                 'B_CC_CODE',
                                                 6,
                                                 'MBT_510',
                                                 'A.DATA_SOURCE = ''2'' AND A.DATA_STATUS = ''00''',
                                                 NULL);
                    END;

                    DSC := '##根据配置计算各段上报标识##';
                    DBMS_OUTPUT.PUT_LINE(DSC);
                    BEGIN
                        SP_ODS_MBT_CAL_RPT_PROC2('MBT_510',
                                                 'T1.B_INF_REC_TYPE = T3.INF_REC_TYPE
                                         AND T3.ACCT_TYPE IS NULL
                                         AND T1.B_RPT_DATE_CODE = T3.RPT_DATE_CODE',
                                                 NULL);
                    END;*/


                    DSC := '##ODS主表数据插入历史表，然后删除ODS表##';
                    DBMS_OUTPUT.PUT_LINE(DSC);
                    BEGIN
                        INSERT INTO ODS_MBT_510_HIS
                        SELECT *
                        FROM ODS_MBT_510;
                        DELETE FROM ODS_MBT_510;
                        --数据插入历史表，然后删除ODS表
                        INSERT INTO ODS_MBT_510_D_HIS
                        SELECT *
                        FROM ODS_MBT_510_D;
                        DELETE FROM ODS_MBT_510_D;
                        --数据插入历史表，然后删除ODS表
                        INSERT INTO ODS_MBT_510_E_HIS
                        SELECT *
                        FROM ODS_MBT_510_E;
                        DELETE FROM ODS_MBT_510_E;
                        --数据插入历史表，然后删除ODS表
                        INSERT INTO ODS_MBT_510_F_HIS
                        SELECT *
                        FROM ODS_MBT_510_F;
                        DELETE FROM ODS_MBT_510_F;
                    END;

                    DSC := '##将报告时点代码是88或99的直接审核通过并将校验修改为校验通过##';
                    DBMS_OUTPUT.PUT_LINE(DSC);
                    BEGIN
                        UPDATE MBT_510
                        SET DATA_STATUS = '21',
                            CHECK_FLAG  = 'Y'
                        WHERE DATA_DATE <= CURRENTDATE
                          AND (B_RPT_DATE_CODE = '88' OR B_RPT_DATE_CODE = '99')
                          AND DATA_STATUS = '00';

                        /*--将报告时点代码不是88或99的校验修改为未校验,信息报告日期改成TDAY ZHAO
                       UPDATE MBT_510
                       SET CHECK_FLAG = 'N',
                           B_RPT_DATE = V_T_DATE
                       WHERE 1 = 1
                         AND B_CC_CODE IN
                             (SELECT B_CC_CODE FROM ODS_MBT_510 WHERE B_CC_CODE IS NOT NULL)
                         AND DATA_DATE <= CURRENTDATE
                         AND (B_RPT_DATE_CODE NOT IN ('88', '99'))
                         AND DATA_STATUS = '00'*/
                        /*  AND CUST_TYPE='P'*/
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
                       'SP_ODS_MBT_510',
                       'ERROR51001',
                       'SP_ODS_MBT_510失败：' || ERRMSG,
                       ERRCODE,
                       ERRMSG);
            ROLLBACK;
    END;
    ENDTIME := TO_CHAR(SYSDATE, 'YYYY-MM-DD HH24:MI:SS');
    DSC := '##=======MBT510存储过程==结束' || ENDTIME || '========##';
    DBMS_OUTPUT.PUT_LINE(DSC);
END;
/
