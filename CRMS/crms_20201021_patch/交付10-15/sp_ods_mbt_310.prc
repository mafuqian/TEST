CREATE OR REPLACE PROCEDURE "SP_ODS_MBT_310"(ERRCODE IN OUT VARCHAR,
                                             ERRMSG IN OUT VARCHAR,
                                             TABLE_KEY IN VARCHAR2,
                                             RPT_DATE_CODE_OUT IN OUT VARCHAR2) AS
    DSC               VARCHAR2(1000);
    BEGINTIME         VARCHAR2(20);
    ENDTIME           VARCHAR2(20);
    CURRENTDATE       VARCHAR2(8);
    CURRENTTIME       VARCHAR2(14);
    /*B_ARRAYLIST       VARCHAR2(4000);
    D_ARRAYLIST       VARCHAR2(4000);
    F_ARRAYLIST       VARCHAR2(4000);
    H_ARRAYLIST       VARCHAR2(4000);
    I_ARRAYLIST       VARCHAR2(4000);*/
    CHILD_C_ARRAYLIST VARCHAR2(4000);
    CHILD_E_ARRAYLIST VARCHAR2(4000);
    CHILD_F_ARRAYLIST VARCHAR2(4000);
    CHILD_G_ARRAYLIST VARCHAR2(4000);
    IS_RPT_OUT        VARCHAR2(64);
    V_T_DATE          VARCHAR2(8);
    ODS_COUNT         INT;
    B_UPDATE_FLAG     CHAR(1);
    D_UPDATE_FLAG     CHAR(1);
    F_UPDATE_FLAG     CHAR(1);
    H_UPDATE_FLAG     CHAR(1);
    I_UPDATE_FLAG     CHAR(1);

BEGIN
    --B_ARRAYLIST := 'B_ENT_NAME,B_CUSTOMER_TYPE,B_ETP_STS,B_ORG_TYPE,B_CUST_NO';
    --D_ARRAYLIST := 'D_NATIONALITY,D_REG_ADD,D_ADM_DIV_OF_REG,D_ESTABLISH_DATE,D_BIZ_END_DATE,D_BIZ_RANGE,D_ECO_INDUS_CATE,D_ECO_TYPE,D_ENT_SCALE';
    --F_ARRAYLIST := 'F_REG_CAP_CURRENCY, F_REG_CAP';
    --H_ARRAYLIST := 'H_SUP_ORG_TYPE,H_SUP_ORG_NAME,H_SUP_ORG_CERT_TYPE,H_SUP_ORG_CERT_NUM';
    --I_ARRAYLIST := 'I_CON_ADD_DISTRICT_CODE,I_CON_ADD,I_CON_PHONE,I_FIN_CON_PHONE';

    CHILD_C_ARRAYLIST := 'OTH_ENT_CERT_TYPE,OTH_ENT_CERT_NUM';
    CHILD_E_ARRAYLIST := 'MMB_ALIAS,MMB_ID_TYPE,MMB_ID_NUM,MMB_PSTN';
    CHILD_F_ARRAYLIST := 'SHAR_HOD_TYPE,SHAR_HOD_CERT_TYPE,SHAR_HOD_NAME,SHAR_HOD_ID_TYPE,SHAR_HOD_ID_NUM,INV_RATIO';
    CHILD_G_ARRAYLIST := 'ACTU_COTRL_CERT_TYPE,ACTU_COTRL_NAME,ACTU_COTRL_ID_TYPE,ACTU_COTRL_ID_NUM';

    CURRENTDATE := TO_CHAR(SYSDATE, 'YYYYMMDD');
    CURRENTTIME := TO_CHAR(SYSDATE, 'YYYYMMDDHH24MISS');
    BEGINTIME := TO_CHAR(SYSDATE, 'YYYY-MM-DD HH24:MI:SS');

    DSC := '##=======MBT310存储过程==开始' || BEGINTIME || '========##';
    DBMS_OUTPUT.PUT_LINE(DSC);
    BEGIN
        DSC := '##初始化##';
        DBMS_OUTPUT.PUT_LINE(DSC);
        BEGIN
            V_T_DATE := GET_T_DAY(); -- 数据日期 DATA_DATE
        END;
        IF TABLE_KEY IS NOT NULL THEN
            --处理从页面来的数据 计算时点
            BEGIN
                DSC := '##计算时点、变化量' || TABLE_KEY || '##';
                DBMS_OUTPUT.PUT_LINE(DSC);
                BEGIN
                    SELECT
                        --B段
                        CASE
                            WHEN TRIM(A.B_ENT_NAME || A.B_CUSTOMER_TYPE || A.B_ETP_STS || A.B_ORG_TYPE ||
                                      A.B_CUST_NO)
                                IS NOT NULL THEN
                                CASE
                                    WHEN B.DATA_ID IS NOT NULL AND
                                         nvl(B.B_ENT_NAME || B.B_CUSTOMER_TYPE || B.B_ETP_STS || B.B_ORG_TYPE ||
                                             B.B_CUST_NO, 0)
                                             <>
                                         nvl(A.B_ENT_NAME || A.B_CUSTOMER_TYPE || A.B_ETP_STS || A.B_ORG_TYPE ||
                                             A.B_CUST_NO, 0)
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
                            WHEN TRIM(A.D_NATIONALITY || A.D_REG_ADD || A.D_ADM_DIV_OF_REG || A.D_ESTABLISH_DATE
                                || A.D_BIZ_END_DATE || A.D_BIZ_RANGE || A.D_ECO_INDUS_CATE
                                || A.D_ECO_TYPE || A.D_ENT_SCALE) IS NOT NULL THEN
                                CASE
                                    WHEN B.DATA_ID IS NOT NULL AND
                                         nvl(B.D_NATIONALITY || B.D_REG_ADD || B.D_ADM_DIV_OF_REG ||
                                             B.D_ESTABLISH_DATE || B.D_BIZ_END_DATE || B.D_BIZ_RANGE ||
                                             B.D_ECO_INDUS_CATE || B.D_ECO_TYPE || B.D_ENT_SCALE, 0) <>
                                         nvl(A.D_NATIONALITY || A.D_REG_ADD || A.D_ADM_DIV_OF_REG ||
                                             A.D_ESTABLISH_DATE || A.D_BIZ_END_DATE || A.D_BIZ_RANGE ||
                                             A.D_ECO_INDUS_CATE || A.D_ECO_TYPE || A.D_ENT_SCALE, 0)
                                        THEN
                                        '1'
                                    ELSE
                                        '0'
                                    END

                            ELSE
                                '0'
                            END AS B_UPDATE_FLAG,
                        --F段
                        CASE
                            WHEN TRIM(A.F_REG_CAP_CURRENCY || A.F_REG_CAP) IS NOT NULL
                                THEN
                                CASE
                                    WHEN B.DATA_ID IS NOT NULL AND
                                         nvl(B.F_REG_CAP_CURRENCY || B.F_REG_CAP, 0) <>
                                         nvl(A.F_REG_CAP_CURRENCY || A.F_REG_CAP, 0)
                                        THEN
                                        '1'
                                    ELSE
                                        '0'
                                    END

                            ELSE
                                '0'
                            END AS F_UPDATE_FLAG,
                        --H段
                        CASE
                            WHEN TRIM(A.H_SUP_ORG_TYPE || A.H_SUP_ORG_NAME || A.H_SUP_ORG_CERT_TYPE ||
                                      A.H_SUP_ORG_CERT_NUM) IS NOT NULL
                                THEN
                                CASE
                                    WHEN B.DATA_ID IS NOT NULL AND
                                         nvl(B.H_SUP_ORG_TYPE || B.H_SUP_ORG_NAME || B.H_SUP_ORG_CERT_TYPE ||
                                             B.H_SUP_ORG_CERT_NUM, 0) <>
                                         nvl(A.H_SUP_ORG_TYPE || A.H_SUP_ORG_NAME || A.H_SUP_ORG_CERT_TYPE ||
                                             A.H_SUP_ORG_CERT_NUM, 0)
                                        THEN
                                        '1'
                                    ELSE
                                        '0'
                                    END

                            ELSE
                                '0'
                            END AS H_UPDATE_FLAG,
                        --I段
                        CASE
                            WHEN TRIM(A.I_CON_ADD_DISTRICT_CODE || A.I_CON_ADD || A.I_CON_PHONE ||
                                      A.I_FIN_CON_PHONE) IS NOT NULL
                                THEN
                                CASE
                                    WHEN B.DATA_ID IS NOT NULL AND
                                         nvl(B.I_CON_ADD_DISTRICT_CODE || B.I_CON_ADD || B.I_CON_PHONE ||
                                             B.I_FIN_CON_PHONE, 0) <>
                                         nvl(A.I_CON_ADD_DISTRICT_CODE || A.I_CON_ADD || A.I_CON_PHONE ||
                                             A.I_FIN_CON_PHONE, 0)
                                        THEN
                                        '1'
                                    ELSE
                                        '0'
                                    END

                            ELSE
                                '0'
                            END AS I_UPDATE_FLAG,
                        CASE
                            WHEN B.DATA_ID IS NULL THEN
                                '10'
                            WHEN NVL(B.B_ENT_NAME || B.B_INF_SURC_CODE || B.B_CUSTOMER_TYPE ||
                                     B.B_ETP_STS || B.B_ORG_TYPE || B.D_NATIONALITY || B.D_REG_ADD ||
                                     B.D_ADM_DIV_OF_REG || B.D_ESTABLISH_DATE || B.D_BIZ_END_DATE ||
                                     B.D_BIZ_RANGE || B.D_ECO_INDUS_CATE || B.D_ECO_TYPE ||
                                     B.D_ENT_SCALE || B.F_REG_CAP_CURRENCY || B.F_REG_CAP ||
                                     B.H_SUP_ORG_TYPE || B.H_SUP_ORG_NAME || B.H_SUP_ORG_CERT_TYPE ||
                                     B.H_SUP_ORG_CERT_NUM || B.I_CON_ADD_DISTRICT_CODE ||
                                     B.I_CON_ADD || B.I_CON_PHONE || B.I_FIN_CON_PHONE, 0) <>
                                 NVL(A.B_ENT_NAME || A.B_INF_SURC_CODE || A.B_CUSTOMER_TYPE ||
                                     A.B_ETP_STS || A.B_ORG_TYPE || A.D_NATIONALITY || A.D_REG_ADD ||
                                     A.D_ADM_DIV_OF_REG || A.D_ESTABLISH_DATE || A.D_BIZ_END_DATE ||
                                     A.D_BIZ_RANGE || A.D_ECO_INDUS_CATE || A.D_ECO_TYPE ||
                                     A.D_ENT_SCALE || A.F_REG_CAP_CURRENCY || A.F_REG_CAP ||
                                     A.H_SUP_ORG_TYPE || A.H_SUP_ORG_NAME || A.H_SUP_ORG_CERT_TYPE ||
                                     A.H_SUP_ORG_CERT_NUM || A.I_CON_ADD_DISTRICT_CODE ||
                                     A.I_CON_ADD || A.I_CON_PHONE || A.I_FIN_CON_PHONE, 0)
                                OR C.FLAG = '1' OR E.FLAG = '1' OR F.FLAG = '1' OR G.FLAG = '1'
                                THEN
                                '20'
                            ELSE
                                '99'
                            END
                    INTO B_UPDATE_FLAG, D_UPDATE_FLAG, F_UPDATE_FLAG, H_UPDATE_FLAG, I_UPDATE_FLAG, RPT_DATE_CODE_OUT
                    FROM MBT_310 A
                             LEFT JOIN
                         (SELECT *
                          FROM (SELECT ROW_NUMBER()
                                               OVER (PARTITION BY B_ENT_CERT, B_ENT_CERT_NUM, B_INF_SURC_CODE ORDER BY B_RPT_DATE DESC) RN,
                                       T.*
                                FROM MBT_310_RPT T
                                WHERE DATA_STATUS = '27')
                          WHERE RN = 1
                         ) B
                         ON A.B_ENT_CERT = B.B_ENT_CERT
                             AND A.B_ENT_CERT_NUM = B.B_ENT_CERT_NUM
                             AND A.B_INF_SURC_CODE = B.B_INF_SURC_CODE
                             LEFT JOIN
                         (SELECT '1' AS FLAG, B_ENT_CERT, B_ENT_CERT_NUM, B_INF_SURC_CODE
                          FROM (SELECT CASE
                                           WHEN nvl(A.OTH_ENT_CERT_TYPE || A.OTH_ENT_CERT_NUM, 0) <>
                                                nvl(B.OTH_ENT_CERT_TYPE || B.OTH_ENT_CERT_NUM, 0)
                                               THEN '1'
                                           ELSE '0' END AS FLAG, --比较值，若mbt该标识下的子段记录有增加、减少、变化，即发送了变化，为1
                                       A.B_ENT_CERT,
                                       A.B_ENT_CERT_NUM,
                                       A.B_INF_SURC_CODE
                                FROM MBT_310_C A
                                         LEFT JOIN
                                     (SELECT A.*
                                      FROM MBT_310_C_RPT A,
                                           (SELECT *
                                            FROM (SELECT ROW_NUMBER()
                                                                 OVER (PARTITION BY B_ENT_CERT, B_ENT_CERT_NUM, B_INF_SURC_CODE ORDER BY B_RPT_DATE DESC) RN,
                                                         T.*
                                                  FROM MBT_310_RPT T
                                                  WHERE B_RPT_DATE_CODE <> '20'
                                                    AND DATA_STATUS = '27')
                                            WHERE RN = 1
                                           ) B
                                      WHERE A.PDATA_ID = B.DATA_ID) B
                                     ON A.B_ENT_CERT = B.B_ENT_CERT
                                         AND A.B_ENT_CERT_NUM = B.B_ENT_CERT_NUM
                                         AND A.B_INF_SURC_CODE = B.B_INF_SURC_CODE
                               )
                          WHERE FLAG > 0
                          GROUP BY B_ENT_CERT, B_ENT_CERT_NUM, B_INF_SURC_CODE
                         ) C
                         ON A.B_ENT_CERT = C.B_ENT_CERT
                             AND A.B_ENT_CERT_NUM = C.B_ENT_CERT_NUM
                             AND A.B_INF_SURC_CODE = C.B_INF_SURC_CODE
                             LEFT JOIN
                         (SELECT '1' AS FLAG, B_ENT_CERT, B_ENT_CERT_NUM, B_INF_SURC_CODE
                          FROM (SELECT CASE
                                           WHEN nvl(A.MMB_ALIAS || A.MMB_ID_TYPE || A.MMB_ID_NUM || A.MMB_PSTN, 0) <>
                                                nvl(B.MMB_ALIAS || B.MMB_ID_TYPE || B.MMB_ID_NUM || B.MMB_PSTN, 0)
                                               THEN '1'
                                           ELSE '0' END AS FLAG, --比较值，若mbt该标识下的子段记录有增加、减少、变化，即发送了变化，为1
                                       A.B_ENT_CERT,
                                       A.B_ENT_CERT_NUM,
                                       A.B_INF_SURC_CODE
                                FROM MBT_310_E A
                                         LEFT JOIN
                                     (SELECT A.*
                                      FROM MBT_310_E_RPT A,
                                           (SELECT *
                                            FROM (SELECT ROW_NUMBER()
                                                                 OVER (PARTITION BY B_ENT_CERT, B_ENT_CERT_NUM, B_INF_SURC_CODE ORDER BY B_RPT_DATE DESC) RN,
                                                         T.*
                                                  FROM MBT_310_RPT T
                                                  WHERE B_RPT_DATE_CODE <> '20'
                                                    AND DATA_STATUS = '27')
                                            WHERE RN = 1
                                           ) B
                                      WHERE A.PDATA_ID = B.DATA_ID) B
                                     ON A.B_ENT_CERT = B.B_ENT_CERT
                                         AND A.B_ENT_CERT_NUM = B.B_ENT_CERT_NUM
                                         AND A.B_INF_SURC_CODE = B.B_INF_SURC_CODE
                               )
                          WHERE FLAG > 0
                          GROUP BY B_ENT_CERT, B_ENT_CERT_NUM, B_INF_SURC_CODE
                         ) E
                         ON A.B_ENT_CERT = E.B_ENT_CERT
                             AND A.B_ENT_CERT_NUM = E.B_ENT_CERT_NUM
                             AND A.B_INF_SURC_CODE = E.B_INF_SURC_CODE
                             LEFT JOIN
                         (SELECT '1' AS FLAG, B_ENT_CERT, B_ENT_CERT_NUM, B_INF_SURC_CODE
                          FROM (SELECT CASE
                                           WHEN nvl(A.SHAR_HOD_TYPE || A.SHAR_HOD_CERT_TYPE ||
                                                    A.SHAR_HOD_NAME || A.SHAR_HOD_ID_TYPE ||
                                                    A.SHAR_HOD_ID_NUM || A.INV_RATIO, 0) <>
                                                nvl(B.SHAR_HOD_TYPE || B.SHAR_HOD_CERT_TYPE ||
                                                    B.SHAR_HOD_NAME || B.SHAR_HOD_ID_TYPE ||
                                                    B.SHAR_HOD_ID_NUM || B.INV_RATIO, 0)
                                               THEN '1'
                                           ELSE '0' END AS FLAG, --比较值，若mbt该标识下的子段记录有增加、减少、变化，即发送了变化，为1
                                       A.B_ENT_CERT,
                                       A.B_ENT_CERT_NUM,
                                       A.B_INF_SURC_CODE
                                FROM MBT_310_F A
                                         LEFT JOIN
                                     (SELECT A.*
                                      FROM MBT_310_F_RPT A,
                                           (SELECT *
                                            FROM (SELECT ROW_NUMBER()
                                                                 OVER (PARTITION BY B_ENT_CERT, B_ENT_CERT_NUM, B_INF_SURC_CODE ORDER BY B_RPT_DATE DESC) RN,
                                                         T.*
                                                  FROM MBT_310_RPT T
                                                  WHERE B_RPT_DATE_CODE <> '20'
                                                    AND DATA_STATUS = '27')
                                            WHERE RN = 1
                                           ) B
                                      WHERE A.PDATA_ID = B.DATA_ID) B
                                     ON A.B_ENT_CERT = B.B_ENT_CERT
                                         AND A.B_ENT_CERT_NUM = B.B_ENT_CERT_NUM
                                         AND A.B_INF_SURC_CODE = B.B_INF_SURC_CODE
                               )
                          WHERE FLAG > 0
                          GROUP BY B_ENT_CERT, B_ENT_CERT_NUM, B_INF_SURC_CODE
                         ) F
                         ON A.B_ENT_CERT = F.B_ENT_CERT
                             AND A.B_ENT_CERT_NUM = F.B_ENT_CERT_NUM
                             AND A.B_INF_SURC_CODE = F.B_INF_SURC_CODE
                             LEFT JOIN
                         (SELECT '1' AS FLAG, B_ENT_CERT, B_ENT_CERT_NUM, B_INF_SURC_CODE
                          FROM (SELECT CASE
                                           WHEN nvl(A.ACTU_COTRL_CERT_TYPE || A.ACTU_COTRL_NAME ||
                                                    A.ACTU_COTRL_ID_TYPE ||
                                                    A.ACTU_COTRL_ID_NUM, 0)
                                               <>
                                                nvl(B.ACTU_COTRL_CERT_TYPE || B.ACTU_COTRL_NAME ||
                                                    B.ACTU_COTRL_ID_TYPE ||
                                                    B.ACTU_COTRL_ID_NUM, 0)
                                               THEN '1'
                                           ELSE '0' END AS FLAG, --比较值，若mbt该标识下的子段记录有增加、减少、变化，即发送了变化，为1
                                       A.B_ENT_CERT,
                                       A.B_ENT_CERT_NUM,
                                       A.B_INF_SURC_CODE
                                FROM MBT_310_G A
                                         LEFT JOIN
                                     (SELECT A.*
                                      FROM MBT_310_G_RPT A,
                                           (SELECT *
                                            FROM (SELECT ROW_NUMBER()
                                                                 OVER (PARTITION BY B_ENT_CERT, B_ENT_CERT_NUM, B_INF_SURC_CODE ORDER BY B_RPT_DATE DESC) RN,
                                                         T.*
                                                  FROM MBT_310_RPT T
                                                  WHERE B_RPT_DATE_CODE <> '20'
                                                    AND DATA_STATUS = '27')
                                            WHERE RN = 1
                                           ) B
                                      WHERE A.PDATA_ID = B.DATA_ID) B
                                     ON A.B_ENT_CERT = B.B_ENT_CERT
                                         AND A.B_ENT_CERT_NUM = B.B_ENT_CERT_NUM
                                         AND A.B_INF_SURC_CODE = B.B_INF_SURC_CODE
                               )
                          WHERE FLAG > 0
                          GROUP BY B_ENT_CERT, B_ENT_CERT_NUM, B_INF_SURC_CODE
                         ) G
                         ON A.B_ENT_CERT = G.B_ENT_CERT
                             AND A.B_ENT_CERT_NUM = G.B_ENT_CERT_NUM
                             AND A.B_INF_SURC_CODE = G.B_INF_SURC_CODE
                    WHERE A.DATA_ID = TABLE_KEY;

                    SELECT IS_RPT INTO IS_RPT_OUT FROM MBT_310 WHERE DATA_ID = TABLE_KEY;
                    UPDATE MBT_310
                    SET IS_RPT = GET_ISRPT_CHANGE(IS_RPT_OUT,
                                                  (B_UPDATE_FLAG || D_UPDATE_FLAG || F_UPDATE_FLAG || H_UPDATE_FLAG ||
                                                   I_UPDATE_FLAG || '|'))
                    WHERE DATA_ID = TABLE_KEY;
                END;

                DSC := '##修改子表[MBT_310_C] IS_RPT##';
                DBMS_OUTPUT.PUT_LINE(DSC);
                BEGIN
                    SP_ODS_MBT_CAL_RPT_PROC3('MBT_310_C',
                                             '1 == 1',
                                             CHILD_C_ARRAYLIST,
                                             'B_ENT_CERT, B_ENT_CERT_NUM, B_INF_SURC_CODE',
                                             4,
                                             'MBT_310',
                                             TABLE_KEY);
                END;

                DSC := '##修改子表[MBT_310_E] IS_RPT##';
                DBMS_OUTPUT.PUT_LINE(DSC);
                BEGIN
                    SP_ODS_MBT_CAL_RPT_PROC3('MBT_310_E',
                                             '1 == 1',
                                             CHILD_E_ARRAYLIST,
                                             'B_ENT_CERT, B_ENT_CERT_NUM, B_INF_SURC_CODE',
                                             4,
                                             'MBT_310',
                                             TABLE_KEY);
                END;
                DSC := '##修改子表[MBT_310_F] IS_RPT##';
                DBMS_OUTPUT.PUT_LINE(DSC);
                BEGIN
                    SP_ODS_MBT_CAL_RPT_PROC3('MBT_310_F',
                                             '1 == 1',
                                             CHILD_F_ARRAYLIST,
                                             'B_ENT_CERT, B_ENT_CERT_NUM, B_INF_SURC_CODE',
                                             4,
                                             'MBT_310',
                                             TABLE_KEY);
                END;
                DSC := '##修改子表[MBT_310_G] IS_RPT##';
                DBMS_OUTPUT.PUT_LINE(DSC);
                BEGIN
                    SP_ODS_MBT_CAL_RPT_PROC3('MBT_310_G',
                                             '1 == 1',
                                             CHILD_G_ARRAYLIST,
                                             'B_ENT_CERT, B_ENT_CERT_NUM, B_INF_SURC_CODE',
                                             4,
                                             'MBT_310',
                                             TABLE_KEY);
                END;

                DSC := '##根据配置计算各段上报标识' || TABLE_KEY || '##';
                DBMS_OUTPUT.PUT_LINE(DSC);
                BEGIN
                    SP_ODS_MBT_CAL_RPT_PROC2('MBT_310',
                                             'T1.B_INF_REC_TYPE = T3.INF_REC_TYPE
                                    AND T3.ACCT_TYPE IS NULL
                                    AND T1.B_RPT_DATE_CODE = T3.RPT_DATE_CODE',
                                             TABLE_KEY);

                END;

            END;
        ELSE
            DSC := '##ods数据处理##';
            DBMS_OUTPUT.PUT_LINE(DSC);
            BEGIN
                SELECT COUNT(*) INTO ODS_COUNT FROM ODS_MBT_310;
                IF ODS_COUNT = 0 THEN
                    DSC := '##ods没有数据##';
                    DBMS_OUTPUT.PUT_LINE(DSC);
                ELSE
                    DSC := '##备份mbt数据]##';
                    DBMS_OUTPUT.PUT_LINE(DSC);
                    BEGIN
                        EXECUTE IMMEDIATE 'TRUNCATE TABLE MBT_310_TODAY_BAK';
                        INSERT INTO MBT_310_TODAY_BAK
                        SELECT *
                        FROM MBT_310;

                        EXECUTE IMMEDIATE 'TRUNCATE TABLE MBT_310_C_TODAY_BAK';
                        INSERT INTO MBT_310_C_TODAY_BAK
                        SELECT *
                        FROM MBT_310_C;

                        EXECUTE IMMEDIATE 'TRUNCATE TABLE MBT_310_E_TODAY_BAK';
                        INSERT INTO MBT_310_E_TODAY_BAK
                        SELECT *
                        FROM MBT_310_E;

                        EXECUTE IMMEDIATE 'TRUNCATE TABLE MBT_310_F_TODAY_BAK';
                        INSERT INTO MBT_310_F_TODAY_BAK
                        SELECT *
                        FROM MBT_310_F;

                        EXECUTE IMMEDIATE 'TRUNCATE TABLE MBT_310_G_TODAY_BAK';
                        INSERT INTO MBT_310_G_TODAY_BAK
                        SELECT *
                        FROM MBT_310_G;
                    END;

                    DSC := '##主表数据新增或修改，计算上报标识##';
                    DBMS_OUTPUT.PUT_LINE(DSC);
                    BEGIN
                        MERGE INTO MBT_310 T1
                        USING (SELECT A.*,
                                      --ods的数据在mbt中没有
                                      --计算段上报标识,段有值标识为1，没值标识为0
                                      --B段
                                      CASE
                                          WHEN D.DATA_ID IS NULL AND
                                               TRIM(A.B_ENT_NAME || A.B_CUSTOMER_TYPE || A.B_ETP_STS || A.B_ORG_TYPE ||
                                                    A.B_CUST_NO) IS NULL
                                              THEN
                                              '0'
                                          ELSE
                                              '1'
                                          END                                             AS N_B_UPDATE_FALG,
                                      --D段
                                      CASE
                                          WHEN D.DATA_ID IS NULL AND
                                               TRIM(A.D_NATIONALITY || A.D_REG_ADD || A.D_ADM_DIV_OF_REG ||
                                                    A.D_ESTABLISH_DATE
                                                   || A.D_BIZ_END_DATE || A.D_BIZ_RANGE || A.D_ECO_INDUS_CATE
                                                   || A.D_ECO_TYPE || A.D_ENT_SCALE) IS NULL
                                              THEN
                                              '0'
                                          ELSE
                                              '1'
                                          END                                             AS N_D_UPDATE_FALG,
                                      --F段
                                      CASE
                                          WHEN D.DATA_ID IS NULL AND
                                               TRIM(A.F_REG_CAP_CURRENCY || A.F_REG_CAP) IS NULL
                                              THEN
                                              '0'
                                          ELSE
                                              '1'
                                          END                                             AS N_F_UPDATE_FALG,
                                      --H段
                                      CASE
                                          WHEN D.DATA_ID IS NULL AND
                                               TRIM(A.H_SUP_ORG_TYPE || A.H_SUP_ORG_NAME || A.H_SUP_ORG_CERT_TYPE ||
                                                    A.H_SUP_ORG_CERT_NUM) IS NULL
                                              THEN
                                              '0'
                                          ELSE
                                              '1'
                                          END                                             AS N_H_UPDATE_FALG,
                                      --I段
                                      CASE
                                          WHEN D.DATA_ID IS NULL AND
                                               TRIM(A.I_CON_ADD_DISTRICT_CODE || A.I_CON_ADD || A.I_CON_PHONE ||
                                                    A.I_FIN_CON_PHONE) IS NULL
                                              THEN
                                              '0'
                                          ELSE
                                              '1'
                                          END                                             AS N_I_UPDATE_FALG,
                                      --初始化机构
                                      CASE WHEN D.DATA_ID IS NULL THEN E.SECTION_CODE END AS SECTION_CODE,
                                      --ods的数据在mbt中有
                                      --计算段上报标识
                                      --B段
                                      CASE
                                          WHEN nvl(B.B_ENT_NAME || B.B_CUSTOMER_TYPE || B.B_ETP_STS || B.B_ORG_TYPE ||
                                                   B.B_CUST_NO, 0)
                                              <>
                                               nvl(A.B_ENT_NAME || A.B_CUSTOMER_TYPE || A.B_ETP_STS || A.B_ORG_TYPE ||
                                                   A.B_CUST_NO, 0)
                                              THEN
                                              CASE
                                                  WHEN nvl(C.B_ENT_NAME || C.B_CUSTOMER_TYPE || C.B_ETP_STS ||
                                                           C.B_ORG_TYPE ||
                                                           C.B_CUST_NO, 0)
                                                      <>
                                                       nvl(A.B_ENT_NAME || A.B_CUSTOMER_TYPE || A.B_ETP_STS ||
                                                           A.B_ORG_TYPE ||
                                                           A.B_CUST_NO, 0)
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
                                          WHEN nvl(B.D_NATIONALITY || B.D_REG_ADD || B.D_ADM_DIV_OF_REG ||
                                                   B.D_ESTABLISH_DATE || B.D_BIZ_END_DATE || B.D_BIZ_RANGE ||
                                                   B.D_ECO_INDUS_CATE || B.D_ECO_TYPE || B.D_ENT_SCALE, 0) <>
                                               nvl(A.D_NATIONALITY || A.D_REG_ADD || A.D_ADM_DIV_OF_REG ||
                                                   A.D_ESTABLISH_DATE || A.D_BIZ_END_DATE || A.D_BIZ_RANGE ||
                                                   A.D_ECO_INDUS_CATE || A.D_ECO_TYPE || A.D_ENT_SCALE, 0)
                                              THEN
                                              CASE
                                                  WHEN nvl(C.D_NATIONALITY || C.D_REG_ADD || C.D_ADM_DIV_OF_REG ||
                                                           C.D_ESTABLISH_DATE || C.D_BIZ_END_DATE || C.D_BIZ_RANGE ||
                                                           C.D_ECO_INDUS_CATE || C.D_ECO_TYPE || C.D_ENT_SCALE, 0) <>
                                                       nvl(A.D_NATIONALITY || A.D_REG_ADD || A.D_ADM_DIV_OF_REG ||
                                                           A.D_ESTABLISH_DATE || A.D_BIZ_END_DATE || A.D_BIZ_RANGE ||
                                                           A.D_ECO_INDUS_CATE || A.D_ECO_TYPE || A.D_ENT_SCALE, 0)
                                                      THEN
                                                      '1'
                                                  ELSE
                                                      '0'
                                                  END
                                          ELSE
                                              '0'
                                          END                                             AS D_UPDATE_FLAG,
                                      --F段
                                      CASE
                                          WHEN nvl(B.F_REG_CAP_CURRENCY || B.F_REG_CAP, 0) <>
                                               nvl(A.F_REG_CAP_CURRENCY || A.F_REG_CAP, 0)
                                              THEN
                                              CASE
                                                  WHEN nvl(C.F_REG_CAP_CURRENCY || C.F_REG_CAP, 0) <>
                                                       nvl(A.F_REG_CAP_CURRENCY || A.F_REG_CAP, 0)
                                                      THEN
                                                      '1'
                                                  ELSE
                                                      '0'
                                                  END
                                          ELSE
                                              '0'
                                          END                                             AS F_UPDATE_FLAG,
                                      --H段
                                      CASE
                                          WHEN nvl(B.H_SUP_ORG_TYPE || B.H_SUP_ORG_NAME || B.H_SUP_ORG_CERT_TYPE ||
                                                   B.H_SUP_ORG_CERT_NUM, 0) <>
                                               nvl(A.H_SUP_ORG_TYPE || A.H_SUP_ORG_NAME || A.H_SUP_ORG_CERT_TYPE ||
                                                   A.H_SUP_ORG_CERT_NUM, 0)
                                              THEN
                                              CASE
                                                  WHEN nvl(C.H_SUP_ORG_TYPE || C.H_SUP_ORG_NAME ||
                                                           C.H_SUP_ORG_CERT_TYPE ||
                                                           C.H_SUP_ORG_CERT_NUM, 0) <>
                                                       nvl(A.H_SUP_ORG_TYPE || A.H_SUP_ORG_NAME ||
                                                           A.H_SUP_ORG_CERT_TYPE ||
                                                           A.H_SUP_ORG_CERT_NUM, 0)
                                                      THEN
                                                      '1'
                                                  ELSE
                                                      '0'
                                                  END
                                          ELSE
                                              '0'
                                          END                                             AS H_UPDATE_FLAG,
                                      --I段
                                      CASE
                                          WHEN nvl(B.I_CON_ADD_DISTRICT_CODE || B.I_CON_ADD || B.I_CON_PHONE ||
                                                   B.I_FIN_CON_PHONE, 0) <>
                                               nvl(A.I_CON_ADD_DISTRICT_CODE || A.I_CON_ADD || A.I_CON_PHONE ||
                                                   A.I_FIN_CON_PHONE, 0)
                                              THEN
                                              CASE
                                                  WHEN nvl(C.I_CON_ADD_DISTRICT_CODE || C.I_CON_ADD || C.I_CON_PHONE ||
                                                           C.I_FIN_CON_PHONE, 0) <>
                                                       nvl(A.I_CON_ADD_DISTRICT_CODE || A.I_CON_ADD || A.I_CON_PHONE ||
                                                           A.I_FIN_CON_PHONE, 0)
                                                      THEN
                                                      '1'
                                                  ELSE
                                                      '0'
                                                  END
                                          ELSE
                                              '0'
                                          END                                             AS I_UPDATE_FLAG
                               FROM ODS_MBT_310 A
                                        LEFT JOIN --与ods上次数据比较
                                   (SELECT *
                                    FROM (
                                             SELECT ROW_NUMBER()
                                                            OVER (PARTITION BY B_ENT_CERT, B_ENT_CERT_NUM, B_INF_SURC_CODE ORDER BY DATA_DATE DESC) RN,
                                                    T.*
                                             FROM ODS_MBT_310_HIS T
                                             ORDER BY DATA_DATE DESC
                                         )
                                    WHERE RN = 1
                                   ) B ON A.B_ENT_CERT = B.B_ENT_CERT
                                   AND A.B_ENT_CERT_NUM = B.B_ENT_CERT_NUM
                                   AND A.B_INF_SURC_CODE = B.B_INF_SURC_CODE
                                        LEFT JOIN --看数据是否已报送过(只和非逾期款项的记录进行比对)
                                   (SELECT *
                                    FROM (SELECT ROW_NUMBER()
                                                         OVER (PARTITION BY B_ENT_CERT, B_ENT_CERT_NUM, B_INF_SURC_CODE ORDER BY B_RPT_DATE DESC) RN,
                                                 T.*
                                          FROM MBT_310_RPT T
                                          WHERE B_RPT_DATE_CODE <> '40'
                                            AND DATA_STATUS = '27')
                                    WHERE RN = 1
                                   ) C ON A.B_ENT_CERT = C.B_ENT_CERT
                                   AND A.B_ENT_CERT_NUM = C.B_ENT_CERT_NUM
                                   AND A.B_INF_SURC_CODE = C.B_INF_SURC_CODE
                                        LEFT JOIN --需要考虑mbt表中有用户新增的和ods中一样的数据
                                   MBT_310 D ON A.B_ENT_CERT = D.B_ENT_CERT
                                   AND A.B_ENT_CERT_NUM = D.B_ENT_CERT_NUM
                                   AND A.B_INF_SURC_CODE = D.B_INF_SURC_CODE
                                        LEFT JOIN --新增的情况，为机构赋值
                                   MBT_SECTION_CODE E ON D.ORG_ID = E.ORG_ID
                        ) T2
                        ON (T1.B_ENT_CERT = T2.B_ENT_CERT AND T1.B_ENT_CERT_NUM = T2.B_ENT_CERT_NUM AND
                            T1.B_INF_SURC_CODE = T2.B_INF_SURC_CODE)
                        WHEN MATCHED THEN
                            UPDATE
                            SET T1.B_ENT_NAME              = CASE
                                                                 WHEN T2.B_UPDATE_FLAG = '1' THEN T2.B_ENT_NAME
                                                                 WHEN T2.B_UPDATE_FLAG = '0' THEN T1.B_ENT_NAME END,
                                T1.B_CUSTOMER_TYPE         = CASE
                                                                 WHEN T2.B_UPDATE_FLAG = '1' THEN T2.B_CUSTOMER_TYPE
                                                                 WHEN T2.B_UPDATE_FLAG = '0'
                                                                     THEN T1.B_CUSTOMER_TYPE END,
                                T1.B_ETP_STS               = CASE
                                                                 WHEN T2.B_UPDATE_FLAG = '1' THEN T2.B_ETP_STS
                                                                 WHEN T2.B_UPDATE_FLAG = '0' THEN T1.B_ETP_STS END,
                                T1.B_ORG_TYPE              = CASE
                                                                 WHEN T2.B_UPDATE_FLAG = '1' THEN T2.B_ORG_TYPE
                                                                 WHEN T2.B_UPDATE_FLAG = '0' THEN T1.B_ORG_TYPE END,
                                T1.B_CUST_NO               = CASE
                                                                 WHEN T2.B_UPDATE_FLAG = '1' THEN T2.B_CUST_NO
                                                                 WHEN T2.B_UPDATE_FLAG = '0' THEN T1.B_CUST_NO END,
                                T1.D_NATIONALITY           = CASE
                                                                 WHEN T2.D_UPDATE_FLAG = '1' THEN T2.D_NATIONALITY
                                                                 WHEN T2.D_UPDATE_FLAG = '0' THEN T1.D_NATIONALITY END,
                                T1.D_REG_ADD               = CASE
                                                                 WHEN T2.D_UPDATE_FLAG = '1' THEN T2.D_REG_ADD
                                                                 WHEN T2.D_UPDATE_FLAG = '0' THEN T1.D_REG_ADD END,
                                T1.D_ADM_DIV_OF_REG        = CASE
                                                                 WHEN T2.D_UPDATE_FLAG = '1' THEN T2.D_ADM_DIV_OF_REG
                                                                 WHEN T2.D_UPDATE_FLAG = '0'
                                                                     THEN T1.D_ADM_DIV_OF_REG END,
                                T1.D_ESTABLISH_DATE        = CASE
                                                                 WHEN T2.D_UPDATE_FLAG = '1' THEN T2.D_ESTABLISH_DATE
                                                                 WHEN T2.D_UPDATE_FLAG = '0'
                                                                     THEN T1.D_ESTABLISH_DATE END,
                                T1.D_BIZ_END_DATE          = CASE
                                                                 WHEN T2.D_UPDATE_FLAG = '1' THEN T2.D_BIZ_END_DATE
                                                                 WHEN T2.D_UPDATE_FLAG = '0' THEN T1.D_BIZ_END_DATE END,
                                T1.D_BIZ_RANGE             = CASE
                                                                 WHEN T2.D_UPDATE_FLAG = '1' THEN T2.D_BIZ_RANGE
                                                                 WHEN T2.D_UPDATE_FLAG = '0' THEN T1.D_BIZ_RANGE END,
                                T1.D_ECO_INDUS_CATE        = CASE
                                                                 WHEN T2.D_UPDATE_FLAG = '1' THEN T2.D_ECO_INDUS_CATE
                                                                 WHEN T2.D_UPDATE_FLAG = '0'
                                                                     THEN T1.D_ECO_INDUS_CATE END,
                                T1.D_ECO_TYPE              = CASE
                                                                 WHEN T2.D_UPDATE_FLAG = '1' THEN T2.D_ECO_TYPE
                                                                 WHEN T2.D_UPDATE_FLAG = '0' THEN T1.D_ECO_TYPE END,
                                T1.D_ENT_SCALE             = CASE
                                                                 WHEN T2.D_UPDATE_FLAG = '1' THEN T2.D_ENT_SCALE
                                                                 WHEN T2.D_UPDATE_FLAG = '0' THEN T1.D_ENT_SCALE END,
                                T1.D_FCS_INFO_UP_DATE      = CASE
                                                                 WHEN T2.D_UPDATE_FLAG = '1' THEN V_T_DATE
                                                                 WHEN T2.D_UPDATE_FLAG = '0'
                                                                     THEN T1.D_FCS_INFO_UP_DATE END,
                                T1.F_REG_CAP_CURRENCY      = CASE
                                                                 WHEN T2.F_UPDATE_FLAG = '1' THEN T2.F_REG_CAP_CURRENCY
                                                                 WHEN T2.F_UPDATE_FLAG = '0'
                                                                     THEN T1.F_REG_CAP_CURRENCY END,
                                T1.F_REG_CAP               = CASE
                                                                 WHEN T2.F_UPDATE_FLAG = '1' THEN T2.F_REG_CAP
                                                                 WHEN T2.F_UPDATE_FLAG = '0' THEN T1.F_REG_CAP END,
                                T1.H_SUP_ORG_TYPE          = CASE
                                                                 WHEN T2.H_UPDATE_FLAG = '1' THEN T2.H_SUP_ORG_TYPE
                                                                 WHEN T2.H_UPDATE_FLAG = '0' THEN T1.H_SUP_ORG_TYPE END,
                                T1.H_SUP_ORG_NAME          = CASE
                                                                 WHEN T2.H_UPDATE_FLAG = '1' THEN T2.H_SUP_ORG_NAME
                                                                 WHEN T2.H_UPDATE_FLAG = '0' THEN T1.H_SUP_ORG_NAME END,
                                T1.H_SUP_ORG_CERT_TYPE     = CASE
                                                                 WHEN T2.H_UPDATE_FLAG = '1' THEN T2.H_SUP_ORG_CERT_TYPE
                                                                 WHEN T2.H_UPDATE_FLAG = '0'
                                                                     THEN T1.H_SUP_ORG_CERT_TYPE END,
                                T1.H_SUP_ORG_CERT_NUM      = CASE
                                                                 WHEN T2.H_UPDATE_FLAG = '1' THEN T2.H_SUP_ORG_CERT_NUM
                                                                 WHEN T2.H_UPDATE_FLAG = '0'
                                                                     THEN T1.H_SUP_ORG_CERT_NUM END,
                                T1.H_SUP_ORG_INFO_UP_DATE  = CASE
                                                                 WHEN T2.H_UPDATE_FLAG = '1' THEN V_T_DATE
                                                                 WHEN T2.H_UPDATE_FLAG = '0'
                                                                     THEN T1.H_SUP_ORG_INFO_UP_DATE END,
                                T1.I_CON_ADD_DISTRICT_CODE = CASE
                                                                 WHEN T2.I_UPDATE_FLAG = '1'
                                                                     THEN T2.I_CON_ADD_DISTRICT_CODE
                                                                 WHEN T2.I_UPDATE_FLAG = '0'
                                                                     THEN T1.I_CON_ADD_DISTRICT_CODE END,
                                T1.I_CON_ADD               = CASE
                                                                 WHEN T2.I_UPDATE_FLAG = '1' THEN T2.I_CON_ADD
                                                                 WHEN T2.I_UPDATE_FLAG = '0' THEN T1.I_CON_ADD END,
                                T1.I_CON_PHONE             = CASE
                                                                 WHEN T2.I_UPDATE_FLAG = '1' THEN T2.I_CON_PHONE
                                                                 WHEN T2.I_UPDATE_FLAG = '0' THEN T1.I_CON_PHONE END,
                                T1.I_FIN_CON_PHONE         = CASE
                                                                 WHEN T2.I_UPDATE_FLAG = '1' THEN T2.I_FIN_CON_PHONE
                                                                 WHEN T2.I_UPDATE_FLAG = '0'
                                                                     THEN T1.I_FIN_CON_PHONE END,
                                T1.I_COTA_INFO_UP_DATE     = CASE
                                                                 WHEN T2.I_UPDATE_FLAG = '1' THEN V_T_DATE
                                                                 WHEN T2.I_UPDATE_FLAG = '0'
                                                                     THEN T1.I_COTA_INFO_UP_DATE END,
                                T1.IS_RPT                  = GET_ISRPT_CHANGE(T1.IS_RPT,
                                                                              (T2.B_UPDATE_FLAG || T2.D_UPDATE_FLAG ||
                                                                               T2.F_UPDATE_FLAG || T2.H_UPDATE_FLAG ||
                                                                               T2.I_UPDATE_FLAG || '|')),
                                T1.DATA_STATUS             = '00',
                                T1.DATA_SOURCE             = '2',
                                T1.DATA_CHG_USER           = 'SYSTEM',
                                T1.DATA_CHG_DATE           = CURRENTDATE,
                                T1.DATA_CHG_TIME           = CURRENTTIME,
                                T1.B_RPT_DATE              = V_T_DATE,
                                T1.CHECK_FLAG              = 'N'
                        WHEN NOT MATCHED THEN
                            INSERT
                            (T1.DATA_ID,
                             T1.DATA_DATE,
                             T1.CORP_ID,
                             T1.ORG_ID,
                             T1.GROUP_ID,
                             T1.INQ_ORG_ID,
                             T1.INQ_GROUP_ID,
                             T1.B_CUST_NO,
                             T1.B_INF_REC_TYPE,
                             T1.B_ENT_NAME,
                             T1.B_ENT_CERT,
                             T1.B_ENT_CERT_NUM,
                             T1.B_INF_SURC_CODE,
                             T1.B_RPT_DATE,
                             T1.B_RPT_DATE_CODE,
                             T1.B_CIMOC,
                             T1.B_CUSTOMER_TYPE,
                             T1.B_ETP_STS,
                             T1.B_ORG_TYPE,
                             T1.C_ID_INFO_UP_DATE,
                             T1.D_NATIONALITY,
                             T1.D_REG_ADD,
                             T1.D_ADM_DIV_OF_REG,
                             T1.D_ESTABLISH_DATE,
                             T1.D_BIZ_END_DATE,
                             T1.D_BIZ_RANGE,
                             T1.D_ECO_INDUS_CATE,
                             T1.D_ECO_TYPE,
                             T1.D_ENT_SCALE,
                             T1.D_FCS_INFO_UP_DATE,
                             T1.E_MN_MMB_INFO_UP_DATE,
                             T1.F_REG_CAP_CURRENCY,
                             T1.F_REG_CAP,
                             T1.F_MN_SHA_HOD_INFO_DATE,
                             T1.G_ACTU_COTRL_INFO_UP_DATE,
                             T1.H_SUP_ORG_TYPE,
                             T1.H_SUP_ORG_NAME,
                             T1.H_SUP_ORG_CERT_TYPE,
                             T1.H_SUP_ORG_CERT_NUM,
                             T1.H_SUP_ORG_INFO_UP_DATE,
                             T1.I_CON_ADD_DISTRICT_CODE,
                             T1.I_CON_ADD,
                             T1.I_CON_PHONE,
                             T1.I_FIN_CON_PHONE,
                             T1.I_COTA_INFO_UP_DATE,
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
                                    T2.B_CUST_NO,
                                    '310',
                                    T2.B_ENT_NAME,
                                    T2.B_ENT_CERT,
                                    T2.B_ENT_CERT_NUM,
                                    T2.B_INF_SURC_CODE,
                                    V_T_DATE,
                                    '10',
                                    T2.B_INF_SURC_CODE,
                                    T2.B_CUSTOMER_TYPE,
                                    T2.B_ETP_STS,
                                    T2.B_ORG_TYPE,
                                    V_T_DATE,
                                    T2.D_NATIONALITY,
                                    T2.D_REG_ADD,
                                    T2.D_ADM_DIV_OF_REG,
                                    T2.D_ESTABLISH_DATE,
                                    T2.D_BIZ_END_DATE,
                                    T2.D_BIZ_RANGE,
                                    T2.D_ECO_INDUS_CATE,
                                    T2.D_ECO_TYPE,
                                    T2.D_ENT_SCALE,
                                    V_T_DATE,
                                    V_T_DATE,
                                    T2.F_REG_CAP_CURRENCY,
                                    T2.F_REG_CAP,
                                    V_T_DATE,
                                    V_T_DATE,
                                    T2.H_SUP_ORG_TYPE,
                                    T2.H_SUP_ORG_NAME,
                                    T2.H_SUP_ORG_CERT_TYPE,
                                    T2.H_SUP_ORG_CERT_NUM,
                                    V_T_DATE,
                                    T2.I_CON_ADD_DISTRICT_CODE,
                                    T2.I_CON_ADD,
                                    T2.I_CON_PHONE,
                                    T2.I_FIN_CON_PHONE,
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
                                    (N_B_UPDATE_FALG || N_D_UPDATE_FALG || N_F_UPDATE_FALG || N_F_UPDATE_FALG ||
                                     N_H_UPDATE_FALG || N_I_UPDATE_FALG || '|'));
                    END;

                    DSC := '##子表[MBT_310_C]数据新增或修改##';
                    DBMS_OUTPUT.PUT_LINE(DSC);
                    BEGIN
                        -- 先删除所有相关数据 然后重新插入
                        DELETE
                        FROM MBT_310_C T1
                        WHERE PDATA_ID IN
                              (SELECT B.DATA_ID
                               FROM ODS_MBT_310 A
                                        LEFT JOIN MBT_310 B
                                                  ON A.B_ENT_CERT = B.B_ENT_CERT AND
                                                     A.B_ENT_CERT_NUM = B.B_ENT_CERT_NUM AND
                                                     A.B_INF_SURC_CODE = B.B_INF_SURC_CODE);
                        --新增数据
                        MERGE INTO MBT_310_C T1
                        USING (SELECT A.DATA_ID,
                                      A.DATA_DATE,
                                      A.CUST_NO,
                                      A.B_ENT_CERT,
                                      A.B_ENT_CERT_NUM,
                                      A.B_INF_SURC_CODE,
                                      A.OTH_ENT_CERT_TYPE,
                                      A.OTH_ENT_CERT_NUM,
                                      A.RSV1,
                                      A.RSV2,
                                      A.RSV3,
                                      A.RSV4,
                                      A.RSV5,
                                      B.DATA_ID AS PDATA_ID
                               FROM ODS_MBT_310_C A
                                        INNER JOIN MBT_310 B
                                                   ON A.B_ENT_CERT = B.B_ENT_CERT AND
                                                      A.B_ENT_CERT_NUM = B.B_ENT_CERT_NUM AND
                                                      A.B_INF_SURC_CODE = B.B_INF_SURC_CODE
                            /*--[20200831]客户号作为业务主键关联主表和字表
                                            ON A.CUST_NO = C.B_CUST_NO*/
                        ) T2
                        ON (T1.B_ENT_CERT = T2.B_ENT_CERT AND T1.B_ENT_CERT_NUM = T2.B_ENT_CERT_NUM AND
                            T1.B_INF_SURC_CODE = T2.B_INF_SURC_CODE)
                        WHEN NOT MATCHED THEN
                            INSERT
                            (T1.DATA_ID,
                             T1.PDATA_ID,
                             T1.DATA_DATE,
                             T1.B_ENT_CERT,
                             T1.B_ENT_CERT_NUM,
                             T1.B_INF_SURC_CODE,
                             T1.CUST_NO,
                             T1.OTH_ENT_CERT_TYPE,
                             T1.OTH_ENT_CERT_NUM,
                             T1.DATA_SOURE,
                             T1.DATA_CRT_USER,
                             T1.DATA_CRT_DATE,
                             T1.DATA_CRT_TIME,
                             T1.RSV1,
                             T1.RSV2,
                             T1.RSV3,
                             T1.RSV4,
                             T1.RSV5)
                            VALUES (CURRENTDATE || LPAD(DATA_ID_SEQ.NEXTVAL, 24, 0),
                                    T2.PDATA_ID,
                                    T2.DATA_DATE,
                                    T2.B_ENT_CERT,
                                    T2.B_ENT_CERT_NUM,
                                    T2.B_INF_SURC_CODE,
                                    T2.CUST_NO,
                                    T2.OTH_ENT_CERT_TYPE,
                                    T2.OTH_ENT_CERT_NUM,
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
                        MERGE INTO MBT_310 T1
                        USING (SELECT DISTINCT B.DATA_ID
                               FROM MBT_310_C A
                                        LEFT JOIN MBT_310 B
                                                  ON A.PDATA_ID = B.DATA_ID
                               WHERE A.RSV5 = 'FLAG') T2
                        ON (T1.DATA_ID = T2.DATA_ID)
                        WHEN MATCHED THEN
                            UPDATE SET T1.DATA_STATUS = '00';
                    END;

                    DSC := '##更改子表[MBT_310_C]数据状态##';
                    DBMS_OUTPUT.PUT_LINE(DSC);
                    BEGIN
                        UPDATE MBT_310_C SET RSV5 = NULL WHERE RSV5 = 'FLAG';
                    END;

                    DSC := '##子表[MBT_310_E]数据新增或修改##';
                    DBMS_OUTPUT.PUT_LINE(DSC);
                    BEGIN
                        -- 先删除所有相关数据 然后重新插入
                        DELETE
                        FROM MBT_310_E
                        WHERE PDATA_ID IN
                              (SELECT B.DATA_ID
                               FROM ODS_MBT_310 A
                                        LEFT JOIN MBT_310 B
                                                  ON A.B_ENT_CERT = B.B_ENT_CERT
                                                      AND A.B_ENT_CERT_NUM = B.B_ENT_CERT_NUM);
                        --新增数据
                        MERGE INTO MBT_310_E T1
                        USING (SELECT A.DATA_ID,
                                      A.DATA_DATE,
                                      A.B_ENT_CERT,
                                      A.B_ENT_CERT_NUM,
                                      A.B_INF_SURC_CODE,
                                      A.CUST_NO,
                                      A.MMB_ALIAS,
                                      A.MMB_ID_TYPE,
                                      A.MMB_ID_NUM,
                                      A.MMB_PSTN,
                                      A.RSV1,
                                      A.RSV2,
                                      A.RSV3,
                                      A.RSV4,
                                      A.RSV5,
                                      B.DATA_ID AS PDATA_ID
                               FROM ODS_MBT_310_E A
                                        INNER JOIN MBT_310 B ON
                                       A.B_ENT_CERT = B.B_ENT_CERT AND A.B_ENT_CERT_NUM = B.B_ENT_CERT_NUM AND
                                       A.B_INF_SURC_CODE = B.B_INF_SURC_CODE
                            /*--[20200831]客户号作为业务主键关联主表和字表
                                            ON A.CUST_NO = C.B_CUST_NO*/) T2
                        ON (T1.B_ENT_CERT = T2.B_ENT_CERT AND T1.B_ENT_CERT_NUM = T2.B_ENT_CERT_NUM AND
                            T1.B_INF_SURC_CODE = T2.B_INF_SURC_CODE)
                        WHEN NOT MATCHED THEN
                            INSERT
                            (T1.DATA_ID,
                             T1.PDATA_ID,
                             T1.DATA_DATE,
                             T1.B_ENT_CERT,
                             T1.B_ENT_CERT_NUM,
                             T1.B_INF_SURC_CODE,
                             T1.CUST_NO,
                             T1.MMB_ALIAS,
                             T1.MMB_ID_TYPE,
                             T1.MMB_ID_NUM,
                             T1.MMB_PSTN,
                             T1.DATA_SOURCE,
                             T1.DATA_CRT_USER,
                             T1.DATA_CRT_DATE,
                             T1.DATA_CRT_TIME,
                             T1.RSV1,
                             T1.RSV2,
                             T1.RSV3,
                             T1.RSV4,
                             T1.RSV5)
                            VALUES (CURRENTDATE || LPAD(DATA_ID_SEQ.NEXTVAL, 24, 0),
                                       --T2.DATA_ID,
                                    T2.PDATA_ID,
                                    T2.DATA_DATE,
                                    T2.B_ENT_CERT,
                                    T2.B_ENT_CERT_NUM,
                                    T2.B_INF_SURC_CODE,
                                    T2.CUST_NO,
                                    T2.MMB_ALIAS,
                                    T2.MMB_ID_TYPE,
                                    T2.MMB_ID_NUM,
                                    T2.MMB_PSTN,
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
                        MERGE INTO MBT_310 T1
                        USING (SELECT DISTINCT B.DATA_ID
                               FROM MBT_310_E A
                                        LEFT JOIN MBT_310 B
                                                  ON A.PDATA_ID = B.DATA_ID
                               WHERE A.RSV5 = 'FLAG') T2
                        ON (T1.DATA_ID = T2.DATA_ID)
                        WHEN MATCHED THEN
                            UPDATE SET T1.DATA_STATUS = '00';
                    END;

                    DSC := '##更改子表[MBT_310_E]数据状态##';
                    DBMS_OUTPUT.PUT_LINE(DSC);
                    BEGIN
                        UPDATE MBT_310_E SET RSV5 = NULL WHERE RSV5 = 'FLAG';
                    END;

                    DSC := '##子表[MBT_310_F]数据新增或修改##';
                    DBMS_OUTPUT.PUT_LINE(DSC);
                    BEGIN
                        -- 先删除所有相关数据 然后重新插入
                        DELETE
                        FROM MBT_310_F
                        WHERE PDATA_ID IN
                              (SELECT B.DATA_ID
                               FROM ODS_MBT_310 A
                                        LEFT JOIN MBT_310 B
                                                  ON A.B_ENT_CERT = B.B_ENT_CERT AND
                                                     A.B_ENT_CERT_NUM = B.B_ENT_CERT_NUM AND
                                                     A.B_INF_SURC_CODE = B.B_INF_SURC_CODE);
                        --新增数据
                        MERGE INTO MBT_310_F T1
                        USING (SELECT A.DATA_ID,
                                      A.DATA_DATE,
                                      A.B_ENT_CERT,
                                      A.B_ENT_CERT_NUM,
                                      A.B_INF_SURC_CODE,
                                      A.CUST_NO,
                                      A.SHAR_HOD_TYPE,
                                      A.SHAR_HOD_CERT_TYPE,
                                      A.SHAR_HOD_NAME,
                                      A.SHAR_HOD_ID_TYPE,
                                      A.SHAR_HOD_ID_NUM,
                                      A.INV_RATIO,
                                      A.RSV1,
                                      A.RSV2,
                                      A.RSV3,
                                      A.RSV4,
                                      A.RSV5,
                                      B.DATA_ID AS PDATA_ID
                               FROM ODS_MBT_310_F A
                                        INNER JOIN MBT_310 B ON
                                       A.B_ENT_CERT = B.B_ENT_CERT AND A.B_ENT_CERT_NUM = B.B_ENT_CERT_NUM AND
                                       A.B_INF_SURC_CODE = B.B_INF_SURC_CODE
                            /*--[20200831]客户号作为业务主键关联主表和字表
                                            ON A.CUST_NO = C.B_CUST_NO*/
                        ) T2
                        ON (T1.B_ENT_CERT = T2.B_ENT_CERT AND T1.B_ENT_CERT_NUM = T2.B_ENT_CERT_NUM AND
                            T1.B_INF_SURC_CODE = T2.B_INF_SURC_CODE)
                        WHEN NOT MATCHED THEN
                            INSERT
                            (T1.DATA_ID,
                             T1.PDATA_ID,
                             T1.DATA_DATE,
                             T1.B_ENT_CERT,
                             T1.B_ENT_CERT_NUM,
                             T1.B_INF_SURC_CODE,
                             T1.CUST_NO,
                             T1.SHAR_HOD_TYPE,
                             T1.SHAR_HOD_CERT_TYPE,
                             T1.SHAR_HOD_NAME,
                             T1.SHAR_HOD_ID_TYPE,
                             T1.SHAR_HOD_ID_NUM,
                             T1.INV_RATIO,
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
                                    T2.B_ENT_CERT,
                                    T2.B_ENT_CERT_NUM,
                                    T2.B_INF_SURC_CODE,
                                    T2.CUST_NO,
                                    T2.SHAR_HOD_TYPE,
                                    T2.SHAR_HOD_CERT_TYPE,
                                    T2.SHAR_HOD_NAME,
                                    T2.SHAR_HOD_ID_TYPE,
                                    T2.SHAR_HOD_ID_NUM,
                                    T2.INV_RATIO,
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
                        MERGE INTO MBT_310 T1
                        USING (SELECT DISTINCT B.DATA_ID
                               FROM MBT_310_F A
                                        LEFT JOIN MBT_310 B
                                                  ON A.PDATA_ID = B.DATA_ID
                               WHERE A.RSV5 = 'FLAG') T2
                        ON (T1.DATA_ID = T2.DATA_ID)
                        WHEN MATCHED THEN
                            UPDATE SET T1.DATA_STATUS = '00';
                    END;

                    DSC := '##更改子表[MBT_310_F]数据状态##';
                    DBMS_OUTPUT.PUT_LINE(DSC);
                    BEGIN
                        UPDATE MBT_310_F SET RSV5 = NULL WHERE RSV5 = 'FLAG';
                    END;

                    DSC := '##子表[MBT_310_G]数据新增或修改##';
                    DBMS_OUTPUT.PUT_LINE(DSC);
                    BEGIN
                        -- 先删除所有相关数据 然后重新插入
                        DELETE
                        FROM MBT_310_G
                        WHERE PDATA_ID IN
                              (SELECT B.DATA_ID
                               FROM ODS_MBT_310 A
                                        LEFT JOIN MBT_310 B
                                                  ON A.B_ENT_CERT = B.B_ENT_CERT AND
                                                     A.B_ENT_CERT_NUM = B.B_ENT_CERT_NUM AND
                                                     A.B_INF_SURC_CODE = B.B_INF_SURC_CODE);
                        --新增数据
                        MERGE INTO MBT_310_G T1
                        USING (SELECT A.DATA_ID,
                                      A.DATA_DATE,
                                      A.B_ENT_CERT,
                                      A.B_ENT_CERT_NUM,
                                      A.B_INF_SURC_CODE,
                                      A.CUST_NO,
                                      A.ACTU_COTRL_CERT_TYPE,
                                      A.ACTU_COTRL_NAME,
                                      A.ACTU_COTRL_ID_TYPE,
                                      A.ACTU_COTRL_ID_NUM,
                                      A.RSV1,
                                      A.RSV2,
                                      A.RSV3,
                                      A.RSV4,
                                      A.RSV5,
                                      B.DATA_ID AS PDATA_ID
                               FROM ODS_MBT_310_G A
                                        INNER JOIN MBT_310 B ON
                                       A.B_ENT_CERT = B.B_ENT_CERT AND A.B_ENT_CERT_NUM = B.B_ENT_CERT_NUM AND
                                       A.B_INF_SURC_CODE = B.B_INF_SURC_CODE
                            /*--[20200831]客户号作为业务主键关联主表和字表
                                            ON A.CUST_NO = C.B_CUST_NO*/
                        ) T2
                        ON (T1.B_ENT_CERT = T2.B_ENT_CERT AND T1.B_ENT_CERT_NUM = T2.B_ENT_CERT_NUM AND
                            T1.B_INF_SURC_CODE = T2.B_INF_SURC_CODE)
                        WHEN NOT MATCHED THEN
                            INSERT
                            (T1.DATA_ID,
                             T1.PDATA_ID,
                             T1.DATA_DATE,
                             T1.B_ENT_CERT,
                             T1.B_ENT_CERT_NUM,
                             T1.B_INF_SURC_CODE,
                             T1.CUST_NO,
                             T1.ACTU_COTRL_CERT_TYPE,
                             T1.ACTU_COTRL_NAME,
                             T1.ACTU_COTRL_ID_TYPE,
                             T1.ACTU_COTRL_ID_NUM,
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
                                    T2.B_ENT_CERT,
                                    T2.B_ENT_CERT_NUM,
                                    T2.B_INF_SURC_CODE,
                                    T2.CUST_NO,
                                    T2.ACTU_COTRL_CERT_TYPE,
                                    T2.ACTU_COTRL_NAME,
                                    T2.ACTU_COTRL_ID_TYPE,
                                    T2.ACTU_COTRL_ID_NUM,
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
                        MERGE INTO MBT_310 T1
                        USING (SELECT DISTINCT B.DATA_ID
                               FROM MBT_310_G A
                                        LEFT JOIN MBT_310 B
                                                  ON A.PDATA_ID = B.DATA_ID
                               WHERE A.RSV5 = 'FLAG') T2
                        ON (T1.DATA_ID = T2.DATA_ID)
                        WHEN MATCHED THEN
                            UPDATE SET T1.DATA_STATUS = '00';
                    END;

                    DSC := '##更改子表[MBT_310_G]数据状态##';
                    DBMS_OUTPUT.PUT_LINE(DSC);
                    BEGIN
                        UPDATE MBT_310_G SET RSV5 = NULL WHERE RSV5 = 'FLAG';
                    END;

                    DSC := '##更新报告时点##';
                    DBMS_OUTPUT.PUT_LINE(DSC);
                    BEGIN
                        MERGE INTO MBT_310 T1
                        USING (
                            SELECT A.DATA_ID,
                                   CASE
                                       WHEN B.DATA_ID IS NULL THEN
                                           '10'
                                       WHEN NVL(B.B_ENT_NAME || B.B_INF_SURC_CODE || B.B_CUSTOMER_TYPE ||
                                                B.B_ETP_STS || B.B_ORG_TYPE || B.D_NATIONALITY || B.D_REG_ADD ||
                                                B.D_ADM_DIV_OF_REG || B.D_ESTABLISH_DATE || B.D_BIZ_END_DATE ||
                                                B.D_BIZ_RANGE || B.D_ECO_INDUS_CATE || B.D_ECO_TYPE ||
                                                B.D_ENT_SCALE || B.F_REG_CAP_CURRENCY || B.F_REG_CAP ||
                                                B.H_SUP_ORG_TYPE || B.H_SUP_ORG_NAME || B.H_SUP_ORG_CERT_TYPE ||
                                                B.H_SUP_ORG_CERT_NUM || B.I_CON_ADD_DISTRICT_CODE ||
                                                B.I_CON_ADD || B.I_CON_PHONE || B.I_FIN_CON_PHONE, 0) <>
                                            NVL(A.B_ENT_NAME || A.B_INF_SURC_CODE || A.B_CUSTOMER_TYPE ||
                                                A.B_ETP_STS || A.B_ORG_TYPE || A.D_NATIONALITY || A.D_REG_ADD ||
                                                A.D_ADM_DIV_OF_REG || A.D_ESTABLISH_DATE || A.D_BIZ_END_DATE ||
                                                A.D_BIZ_RANGE || A.D_ECO_INDUS_CATE || A.D_ECO_TYPE ||
                                                A.D_ENT_SCALE || A.F_REG_CAP_CURRENCY || A.F_REG_CAP ||
                                                A.H_SUP_ORG_TYPE || A.H_SUP_ORG_NAME || A.H_SUP_ORG_CERT_TYPE ||
                                                A.H_SUP_ORG_CERT_NUM || A.I_CON_ADD_DISTRICT_CODE ||
                                                A.I_CON_ADD || A.I_CON_PHONE || A.I_FIN_CON_PHONE, 0)
                                           OR C.FLAG = '1' OR E.FLAG = '1' OR F.FLAG = '1' OR G.FLAG = '1'
                                           THEN
                                           '20'
                                       ELSE
                                           '99'
                                       END AS RPT_DATE_CODE_OUT
                            FROM MBT_310 A
                                     LEFT JOIN
                                 (SELECT *
                                  FROM (SELECT ROW_NUMBER()
                                                       OVER (PARTITION BY B_ENT_CERT, B_ENT_CERT_NUM, B_INF_SURC_CODE ORDER BY B_RPT_DATE DESC) RN,
                                               T.*
                                        FROM MBT_310_RPT T
                                        WHERE DATA_STATUS = '27')
                                  WHERE RN = 1
                                 ) B
                                 ON A.B_ENT_CERT = B.B_ENT_CERT
                                     AND A.B_ENT_CERT_NUM = B.B_ENT_CERT_NUM
                                     AND A.B_INF_SURC_CODE = B.B_INF_SURC_CODE
                                     LEFT JOIN
                                 (SELECT '1' AS FLAG, B_ENT_CERT, B_ENT_CERT_NUM, B_INF_SURC_CODE
                                  FROM (SELECT CASE
                                                   WHEN nvl(A.OTH_ENT_CERT_TYPE || A.OTH_ENT_CERT_NUM, 0) <>
                                                        nvl(B.OTH_ENT_CERT_TYPE || B.OTH_ENT_CERT_NUM, 0)
                                                       THEN '1'
                                                   ELSE '0' END AS FLAG, --比较值，若mbt该标识下的子段记录有增加、减少、变化，即发送了变化，为1
                                               A.B_ENT_CERT,
                                               A.B_ENT_CERT_NUM,
                                               A.B_INF_SURC_CODE
                                        FROM MBT_310_C A
                                                 LEFT JOIN
                                             (SELECT A.*
                                              FROM MBT_310_C_RPT A,
                                                   (SELECT *
                                                    FROM (SELECT ROW_NUMBER()
                                                                         OVER (PARTITION BY B_ENT_CERT, B_ENT_CERT_NUM, B_INF_SURC_CODE ORDER BY B_RPT_DATE DESC) RN,
                                                                 T.*
                                                          FROM MBT_310_RPT T
                                                          WHERE B_RPT_DATE_CODE <> '20'
                                                            AND DATA_STATUS = '27')
                                                    WHERE RN = 1
                                                   ) B
                                              WHERE A.PDATA_ID = B.DATA_ID) B
                                             ON A.B_ENT_CERT = B.B_ENT_CERT
                                                 AND A.B_ENT_CERT_NUM = B.B_ENT_CERT_NUM
                                                 AND A.B_INF_SURC_CODE = B.B_INF_SURC_CODE
                                       )
                                  WHERE FLAG > 0
                                  GROUP BY B_ENT_CERT, B_ENT_CERT_NUM, B_INF_SURC_CODE
                                 ) C
                                 ON A.B_ENT_CERT = C.B_ENT_CERT
                                     AND A.B_ENT_CERT_NUM = C.B_ENT_CERT_NUM
                                     AND A.B_INF_SURC_CODE = C.B_INF_SURC_CODE
                                     LEFT JOIN
                                 (SELECT '1' AS FLAG, B_ENT_CERT, B_ENT_CERT_NUM, B_INF_SURC_CODE
                                  FROM (SELECT CASE
                                                   WHEN nvl(A.MMB_ALIAS || A.MMB_ID_TYPE || A.MMB_ID_NUM || A.MMB_PSTN, 0) <>
                                                        nvl(B.MMB_ALIAS || B.MMB_ID_TYPE || B.MMB_ID_NUM || B.MMB_PSTN, 0)
                                                       THEN '1'
                                                   ELSE '0' END AS FLAG, --比较值，若mbt该标识下的子段记录有增加、减少、变化，即发送了变化，为1
                                               A.B_ENT_CERT,
                                               A.B_ENT_CERT_NUM,
                                               A.B_INF_SURC_CODE
                                        FROM MBT_310_E A
                                                 LEFT JOIN
                                             (SELECT A.*
                                              FROM MBT_310_E_RPT A,
                                                   (SELECT *
                                                    FROM (SELECT ROW_NUMBER()
                                                                         OVER (PARTITION BY B_ENT_CERT, B_ENT_CERT_NUM, B_INF_SURC_CODE ORDER BY B_RPT_DATE DESC) RN,
                                                                 T.*
                                                          FROM MBT_310_RPT T
                                                          WHERE B_RPT_DATE_CODE <> '20'
                                                            AND DATA_STATUS = '27')
                                                    WHERE RN = 1
                                                   ) B
                                              WHERE A.PDATA_ID = B.DATA_ID) B
                                             ON A.B_ENT_CERT = B.B_ENT_CERT
                                                 AND A.B_ENT_CERT_NUM = B.B_ENT_CERT_NUM
                                                 AND A.B_INF_SURC_CODE = B.B_INF_SURC_CODE
                                       )
                                  WHERE FLAG > 0
                                  GROUP BY B_ENT_CERT, B_ENT_CERT_NUM, B_INF_SURC_CODE
                                 ) E
                                 ON A.B_ENT_CERT = E.B_ENT_CERT
                                     AND A.B_ENT_CERT_NUM = E.B_ENT_CERT_NUM
                                     AND A.B_INF_SURC_CODE = E.B_INF_SURC_CODE
                                     LEFT JOIN
                                 (SELECT '1' AS FLAG, B_ENT_CERT, B_ENT_CERT_NUM, B_INF_SURC_CODE
                                  FROM (SELECT CASE
                                                   WHEN nvl(A.SHAR_HOD_TYPE || A.SHAR_HOD_CERT_TYPE ||
                                                            A.SHAR_HOD_NAME || A.SHAR_HOD_ID_TYPE ||
                                                            A.SHAR_HOD_ID_NUM || A.INV_RATIO, 0) <>
                                                        nvl(B.SHAR_HOD_TYPE || B.SHAR_HOD_CERT_TYPE ||
                                                            B.SHAR_HOD_NAME || B.SHAR_HOD_ID_TYPE ||
                                                            B.SHAR_HOD_ID_NUM || B.INV_RATIO, 0)
                                                       THEN '1'
                                                   ELSE '0' END AS FLAG, --比较值，若mbt该标识下的子段记录有增加、减少、变化，即发送了变化，为1
                                               A.B_ENT_CERT,
                                               A.B_ENT_CERT_NUM,
                                               A.B_INF_SURC_CODE
                                        FROM MBT_310_F A
                                                 LEFT JOIN
                                             (SELECT A.*
                                              FROM MBT_310_F_RPT A,
                                                   (SELECT *
                                                    FROM (SELECT ROW_NUMBER()
                                                                         OVER (PARTITION BY B_ENT_CERT, B_ENT_CERT_NUM, B_INF_SURC_CODE ORDER BY B_RPT_DATE DESC) RN,
                                                                 T.*
                                                          FROM MBT_310_RPT T
                                                          WHERE B_RPT_DATE_CODE <> '20'
                                                            AND DATA_STATUS = '27')
                                                    WHERE RN = 1
                                                   ) B
                                              WHERE A.PDATA_ID = B.DATA_ID) B
                                             ON A.B_ENT_CERT = B.B_ENT_CERT
                                                 AND A.B_ENT_CERT_NUM = B.B_ENT_CERT_NUM
                                                 AND A.B_INF_SURC_CODE = B.B_INF_SURC_CODE
                                       )
                                  WHERE FLAG > 0
                                  GROUP BY B_ENT_CERT, B_ENT_CERT_NUM, B_INF_SURC_CODE
                                 ) F
                                 ON A.B_ENT_CERT = F.B_ENT_CERT
                                     AND A.B_ENT_CERT_NUM = F.B_ENT_CERT_NUM
                                     AND A.B_INF_SURC_CODE = F.B_INF_SURC_CODE
                                     LEFT JOIN
                                 (SELECT '1' AS FLAG, B_ENT_CERT, B_ENT_CERT_NUM, B_INF_SURC_CODE
                                  FROM (SELECT CASE
                                                   WHEN nvl(A.ACTU_COTRL_CERT_TYPE || A.ACTU_COTRL_NAME ||
                                                            A.ACTU_COTRL_ID_TYPE ||
                                                            A.ACTU_COTRL_ID_NUM, 0)
                                                       <>
                                                        nvl(B.ACTU_COTRL_CERT_TYPE || B.ACTU_COTRL_NAME ||
                                                            B.ACTU_COTRL_ID_TYPE ||
                                                            B.ACTU_COTRL_ID_NUM, 0)
                                                       THEN '1'
                                                   ELSE '0' END AS FLAG, --比较值，若mbt该标识下的子段记录有增加、减少、变化，即发送了变化，为1
                                               A.B_ENT_CERT,
                                               A.B_ENT_CERT_NUM,
                                               A.B_INF_SURC_CODE
                                        FROM MBT_310_G A
                                                 LEFT JOIN
                                             (SELECT A.*
                                              FROM MBT_310_G_RPT A,
                                                   (SELECT *
                                                    FROM (SELECT ROW_NUMBER()
                                                                         OVER (PARTITION BY B_ENT_CERT, B_ENT_CERT_NUM, B_INF_SURC_CODE ORDER BY B_RPT_DATE DESC) RN,
                                                                 T.*
                                                          FROM MBT_310_RPT T
                                                          WHERE B_RPT_DATE_CODE <> '20'
                                                            AND DATA_STATUS = '27')
                                                    WHERE RN = 1
                                                   ) B
                                              WHERE A.PDATA_ID = B.DATA_ID) B
                                             ON A.B_ENT_CERT = B.B_ENT_CERT
                                                 AND A.B_ENT_CERT_NUM = B.B_ENT_CERT_NUM
                                                 AND A.B_INF_SURC_CODE = B.B_INF_SURC_CODE
                                       )
                                  WHERE FLAG > 0
                                  GROUP BY B_ENT_CERT, B_ENT_CERT_NUM, B_INF_SURC_CODE
                                 ) G
                                 ON A.B_ENT_CERT = G.B_ENT_CERT
                                     AND A.B_ENT_CERT_NUM = G.B_ENT_CERT_NUM
                                     AND A.B_INF_SURC_CODE = G.B_INF_SURC_CODE
                        ) T2
                        ON (T1.DATA_ID = T2.DATA_ID)
                        WHEN MATCHED THEN
                            UPDATE SET T1.B_RPT_DATE_CODE = T2.RPT_DATE_CODE_OUT;
                    END;

                    DSC := '##修改子表[MBT_310_C] IS_RPT##';
                    DBMS_OUTPUT.PUT_LINE(DSC);
                    BEGIN
                        SP_ODS_MBT_CAL_RPT_PROC3('MBT_310_C',
                                                 '1 == 1',
                                                 CHILD_C_ARRAYLIST,
                                                 'B_ENT_CERT, B_ENT_CERT_NUM, B_INF_SURC_CODE',
                                                 4,
                                                 'MBT_310',
                                                 NULL);
                    END;

                    DSC := '##修改子表[MBT_310_E] IS_RPT##';
                    DBMS_OUTPUT.PUT_LINE(DSC);
                    BEGIN
                        SP_ODS_MBT_CAL_RPT_PROC3('MBT_310_E',
                                                 '1 == 1',
                                                 CHILD_E_ARRAYLIST,
                                                 'B_ENT_CERT, B_ENT_CERT_NUM, B_INF_SURC_CODE',
                                                 4,
                                                 'MBT_310',
                                                 NULL);
                    END;
                    DSC := '##修改子表[MBT_310_F] IS_RPT##';
                    DBMS_OUTPUT.PUT_LINE(DSC);
                    BEGIN
                        SP_ODS_MBT_CAL_RPT_PROC3('MBT_310_F',
                                                 '1 == 1',
                                                 CHILD_F_ARRAYLIST,
                                                 'B_ENT_CERT, B_ENT_CERT_NUM, B_INF_SURC_CODE',
                                                 4,
                                                 'MBT_310',
                                                 NULL);
                    END;
                    DSC := '##修改子表[MBT_310_G] IS_RPT##';
                    DBMS_OUTPUT.PUT_LINE(DSC);
                    BEGIN
                        SP_ODS_MBT_CAL_RPT_PROC3('MBT_310_G',
                                                 '1 == 1',
                                                 CHILD_G_ARRAYLIST,
                                                 'B_ENT_CERT, B_ENT_CERT_NUM, B_INF_SURC_CODE',
                                                 4,
                                                 'MBT_310',
                                                 NULL);
                    END;

                    DSC := '##根据配置计算各段上报标识' || TABLE_KEY || '##';
                    DBMS_OUTPUT.PUT_LINE(DSC);
                    BEGIN
                        SP_ODS_MBT_CAL_RPT_PROC2('MBT_310',
                                                 'T1.B_INF_REC_TYPE = T3.INF_REC_TYPE
                                        AND T3.ACCT_TYPE IS NULL
                                        AND T1.B_RPT_DATE_CODE = T3.RPT_DATE_CODE',
                                                 NULL);
                    END;

                    DSC := '##ODS主表数据插入历史表，然后删除ODS表##';
                    DBMS_OUTPUT.PUT_LINE(DSC);
                    BEGIN
                        --数据插入历史表，然后删除ODS表
                        INSERT INTO ODS_MBT_310_HIS
                        SELECT *
                        FROM ODS_MBT_310;
                        DELETE FROM ODS_MBT_310;
                        --数据插入历史表，然后删除ODS表
                        INSERT INTO ODS_MBT_310_C_HIS
                        SELECT *
                        FROM ODS_MBT_310_C;
                        DELETE FROM ODS_MBT_310_C;
                        --数据插入历史表，然后删除ODS表
                        INSERT INTO ODS_MBT_310_E_HIS
                        SELECT *
                        FROM ODS_MBT_310_E;
                        DELETE FROM ODS_MBT_310_E;
                        --数据插入历史表，然后删除ODS表
                        INSERT INTO ODS_MBT_310_F_HIS
                        SELECT *
                        FROM ODS_MBT_310_F;
                        DELETE FROM ODS_MBT_310_F;
                        --数据插入历史表，然后删除ODS表
                        INSERT INTO ODS_MBT_310_G_HIS
                        SELECT *
                        FROM ODS_MBT_310_G;
                        DELETE FROM ODS_MBT_310_G;
                    END;

                    DSC := '##将报告时点代码是88或99的直接审核通过并将校验修改为校验通过##';
                    DBMS_OUTPUT.PUT_LINE(DSC);
                    BEGIN
                        UPDATE MBT_310
                        SET DATA_STATUS = '21',
                            CHECK_FLAG  = 'Y'
                        WHERE DATA_DATE <= CURRENTDATE
                          AND (B_RPT_DATE_CODE = '88' OR B_RPT_DATE_CODE = '99')
                          AND DATA_STATUS = '00';

                        /*UPDATE MBT_310
                        SET B_RPT_DATE = V_T_DATE,
                            CHECK_FLAG = 'N'
                        WHERE DATA_DATE <= CURRENTDATE
                          AND (B_RPT_DATE_CODE != '88' AND B_RPT_DATE_CODE != '99');*/
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
                       'SP_ODS_MBT_310',
                       'ERROR31001',
                       'SP_ODS_MBT_310失败：' || ERRMSG,
                       ERRCODE,
                       ERRMSG);
            ROLLBACK;
    END;
    ENDTIME := TO_CHAR(SYSDATE, 'YYYY-MM-DD HH24:MI:SS');
    DSC := '##=======MBT310存储过程==结束' || ENDTIME || '========##';
    DBMS_OUTPUT.PUT_LINE(DSC);
END;
/
