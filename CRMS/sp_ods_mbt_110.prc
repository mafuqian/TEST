CREATE OR REPLACE PROCEDURE "SP_ODS_MBT_110"(ERRCODE IN OUT VARCHAR,
                                             ERRMSG IN OUT VARCHAR,
                                             TABLE_KEY IN VARCHAR2,
                                             RPT_DATE_CODE_OUT IN OUT VARCHAR2) AS
    DSC         VARCHAR2(1000);
    BEGINTIME   VARCHAR2(20);
    ENDTIME     VARCHAR2(20);
    CURRENTDATE VARCHAR2(8);
    CURRENTTIME VARCHAR2(14);
    V_DATE      VARCHAR2(8);
    V_T_DATE    VARCHAR2(8);
    ODS_COUNT   INT;
    C_ARRAYLIST VARCHAR2(200);
BEGIN
    CURRENTDATE := TO_CHAR(SYSDATE, 'YYYYMMDD');
    CURRENTTIME := TO_CHAR(SYSDATE, 'YYYYMMDDHH24MISS');
    BEGINTIME := TO_CHAR(SYSDATE, 'YYYY-MM-DD HH24:MI:SS');
    C_ARRAYLIST := 'ALIAS,OTH_ID_TYPE,OTH_ID_NUM';

    DSC := '##=======MBT110存储过程==开始' || BEGINTIME || '========##';
    DBMS_OUTPUT.PUT_LINE(DSC);
    BEGIN

        DSC := '##初始化##';
        DBMS_OUTPUT.PUT_LINE(DSC);
        BEGIN
            V_DATE := GET_NEW_DAY(CURRENTDATE);
            V_T_DATE := GET_WORKDAY(CURRENTDATE);
        END;


        IF TABLE_KEY IS NOT NULL THEN

            DSC := '##计算主表上报标识、时点' || TABLE_KEY || '##';
            DBMS_OUTPUT.PUT_LINE(DSC);
            BEGIN
                /**
                  页面提交的数据与上报表比较，存在则比对各段，比对不一致则上报标识为1，一致，则上报标识为0；
                  不存在，则提交的段中有值,标识为1，无值，则标识为0；
                 */
                MERGE INTO MBT_110 T1
                USING (SELECT A.*,
                              --B段
                              CASE
                                  WHEN TRIM(A.B_NAME || A.B_CUSTOMER_TYPE) IS NOT NULL THEN
                                      CASE
                                          WHEN B.DATA_ID IS NOT NULL AND
                                               nvl(B.B_NAME || B.B_CUSTOMER_TYPE, 0) <>
                                               nvl(A.B_NAME || A.B_CUSTOMER_TYPE, 0)
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
                                  WHEN TRIM(A.D_SEX || A.D_DOB || A.D_NATION || A.D_HOUSE_ADD || A.D_HH_DIST ||
                                            A.D_CELL_PHONE || A.D_EMAIL) IS NOT NULL THEN
                                      CASE
                                          WHEN B.DATA_ID IS NOT NULL AND
                                               nvl(B.D_SEX || B.D_DOB || B.D_NATION || B.D_HOUSE_ADD || B.D_HH_DIST ||
                                                   B.D_CELL_PHONE || B.D_EMAIL, 0) <>
                                               nvl(A.D_SEX || A.D_DOB || A.D_NATION || A.D_HOUSE_ADD || A.D_HH_DIST ||
                                                   A.D_CELL_PHONE || A.D_EMAIL, 0)
                                              THEN
                                              '1'
                                          ELSE
                                              '0'
                                          END
                                  ELSE
                                      '0'
                                  END AS D_UPDATE_FLAG,
                              --E段
                              CASE
                                  WHEN TRIM(A.E_MARI_STATUS || A.E_SPO_NAME || A.E_SPO_ID_TYPE || A.E_SPO_ID_NUM ||
                                            A.E_SPO_TEL || A.E_SPS_CMPY_NM || A.F_EDU_LEVEL) IS NOT NULL
                                      THEN
                                      CASE
                                          WHEN B.DATA_ID IS NOT NULL AND
                                               nvl(B.E_MARI_STATUS || B.E_SPO_NAME || B.E_SPO_ID_TYPE ||
                                                   B.E_SPO_ID_NUM || B.E_SPO_TEL || B.E_SPS_CMPY_NM || B.F_EDU_LEVEL, 0)
                                                   <>
                                               nvl(A.E_MARI_STATUS || A.E_SPO_NAME || A.E_SPO_ID_TYPE ||
                                                   A.E_SPO_ID_NUM || A.E_SPO_TEL || A.E_SPS_CMPY_NM || A.F_EDU_LEVEL, 0)
                                              THEN
                                              '1'
                                          ELSE
                                              '0'
                                          END
                                  ELSE
                                      '0'
                                  END AS E_UPDATE_FLAG,
                              --F段
                              CASE
                                  WHEN TRIM(A.F_EDU_LEVEL || A.F_ACA_DEGREE) IS NOT NULL THEN
                                      CASE
                                          WHEN B.DATA_ID IS NOT NULL AND
                                               nvl(B.F_EDU_LEVEL || B.F_ACA_DEGREE, 0) <>
                                               nvl(A.F_EDU_LEVEL || A.F_ACA_DEGREE, 0)
                                              THEN
                                              '1'
                                          ELSE
                                              '0'
                                          END
                                  ELSE
                                      '0'
                                  END AS F_UPDATE_FLAG,
                              --G段
                              CASE
                                  WHEN TRIM(A.G_EMP_STATUS || A.G_CPN_NAME || A.G_CPN_TYPE || A.G_INDUSTRY ||
                                            A.G_CPN_ADDR || A.G_CPN_PC || A.G_CPN_DIST || A.G_CPN_TEL ||
                                            A.G_OCCUPATION || A.G_TITLE || A.G_TECH_TITLE ||
                                            A.G_WORK_START_DATE) IS NOT NULL
                                      THEN
                                      CASE
                                          WHEN B.DATA_ID IS NOT NULL AND
                                               nvl(B.G_EMP_STATUS || B.G_CPN_NAME || B.G_CPN_TYPE || B.G_INDUSTRY ||
                                                   B.G_CPN_ADDR || B.G_CPN_PC || B.G_CPN_DIST || B.G_CPN_TEL ||
                                                   B.G_OCCUPATION || B.G_TITLE || B.G_TECH_TITLE || B.G_WORK_START_DATE,
                                                   0) <>
                                               nvl(A.G_EMP_STATUS || A.G_CPN_NAME || A.G_CPN_TYPE || A.G_INDUSTRY ||
                                                   A.G_CPN_ADDR || A.G_CPN_PC || A.G_CPN_DIST || A.G_CPN_TEL ||
                                                   A.G_OCCUPATION || A.G_TITLE || A.G_TECH_TITLE || A.G_WORK_START_DATE,
                                                   0)
                                              THEN
                                              '1'
                                          ELSE
                                              '0'
                                          END
                                  ELSE
                                      '0'
                                  END AS G_UPDATE_FLAG,
                              --H段
                              CASE
                                  WHEN TRIM(A.H_RESI_STATUS || A.H_RESI_ADDR || A.H_RESI_PC || A.H_RESI_DIST ||
                                            A.H_HOME_TEL) IS NOT NULL
                                      THEN
                                      CASE
                                          WHEN B.DATA_ID IS NOT NULL AND
                                               nvl(B.H_RESI_STATUS || B.H_RESI_ADDR || B.H_RESI_PC || B.H_RESI_DIST ||
                                                   B.H_HOME_TEL, 0) <>
                                               nvl(A.H_RESI_STATUS || A.H_RESI_ADDR || A.H_RESI_PC || A.H_RESI_DIST ||
                                                   A.H_HOME_TEL, 0)
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
                                  WHEN TRIM(A.I_MAIL_ADDR || A.I_MAIL_PC || A.I_MAIL_DIST) IS NOT NULL
                                      THEN
                                      CASE
                                          WHEN B.DATA_ID IS NOT NULL AND
                                               nvl(B.I_MAIL_ADDR || B.I_MAIL_PC || B.I_MAIL_DIST, 0) <>
                                               nvl(A.I_MAIL_ADDR || A.I_MAIL_PC || A.I_MAIL_DIST, 0)
                                              THEN
                                              '1'
                                          ELSE
                                              '0'
                                          END
                                  ELSE
                                      '0'
                                  END AS I_UPDATE_FLAG,
                              --J段
                              CASE
                                  WHEN TRIM(A.J_ANNL_INC || A.J_TAX_INCOME) IS NOT NULL
                                      THEN
                                      CASE
                                          WHEN B.DATA_ID IS NOT NULL AND
                                               nvl(B.J_ANNL_INC || B.J_TAX_INCOME, 0) <>
                                               nvl(A.J_ANNL_INC || A.J_TAX_INCOME, 0)
                                              THEN
                                              '1'
                                          ELSE
                                              '0'
                                          END
                                  ELSE
                                      '0'
                                  END AS J_UPDATE_FLAG,
                              CASE
                                  WHEN B.DATA_ID IS NULL THEN
                                      '10'
                                  WHEN (NVL(B.B_INF_REC_TYPE || B.B_NAME || B.B_ID_TYPE || B.B_ID_NUM ||
                                            B.B_INF_SURC_CODE || B.B_RPT_DATE || B.B_CIMOC ||
                                            B.B_CUSTOMER_TYPE || B.C_ID_INFO_UP_DATE || B.D_SEX ||
                                            B.D_DOB || B.D_NATION || B.D_HOUSE_ADD || B.D_HH_DIST ||
                                            B.D_CELL_PHONE || B.D_EMAIL || B.D_FCS_INFO_UP_DATE ||
                                            B.E_MARI_STATUS || B.E_SPO_NAME || B.E_SPO_ID_TYPE ||
                                            B.E_SPO_ID_NUM || B.E_SPO_TEL || B.E_SPS_CMPY_NM ||
                                            B.E_SPS_INFO_UP_DATE || B.F_EDU_LEVEL || B.F_ACA_DEGREE ||
                                            B.F_EDU_INFO_UP_DATE || B.G_EMP_STATUS || B.G_CPN_NAME ||
                                            B.G_CPN_TYPE || B.G_INDUSTRY || B.G_CPN_ADDR || B.G_CPN_PC ||
                                            B.G_CPN_DIST || B.G_CPN_TEL || B.G_OCCUPATION || B.G_TITLE ||
                                            B.G_TECH_TITLE || B.G_WORK_START_DATE ||
                                            B.G_OCTPN_INFO_UP_DATE || B.H_RESI_STATUS || B.H_RESI_ADDR ||
                                            B.H_RESI_PC || B.H_RESI_DIST || B.H_HOME_TEL ||
                                            B.H_RESI_INFO_UP_DATE || B.I_MAIL_ADDR || B.I_MAIL_PC ||
                                            B.I_MAIL_DIST || B.I_MLG_INFO_UP_DATE || B.J_ANNL_INC ||
                                            B.J_TAX_INCOME || B.J_INC_INFO_UP_DATE, 0)
                                      <>
                                        NVL(A.B_INF_REC_TYPE || A.B_NAME || A.B_ID_TYPE || A.B_ID_NUM ||
                                            A.B_INF_SURC_CODE || A.B_RPT_DATE || A.B_CIMOC ||
                                            A.B_CUSTOMER_TYPE || A.C_ID_INFO_UP_DATE || A.D_SEX ||
                                            A.D_DOB || A.D_NATION || A.D_HOUSE_ADD || A.D_HH_DIST ||
                                            A.D_CELL_PHONE || A.D_EMAIL || A.D_FCS_INFO_UP_DATE ||
                                            A.E_MARI_STATUS || A.E_SPO_NAME || A.E_SPO_ID_TYPE ||
                                            A.E_SPO_ID_NUM || A.E_SPO_TEL || A.E_SPS_CMPY_NM ||
                                            A.E_SPS_INFO_UP_DATE || A.F_EDU_LEVEL || A.F_ACA_DEGREE ||
                                            A.F_EDU_INFO_UP_DATE || A.G_EMP_STATUS || A.G_CPN_NAME ||
                                            A.G_CPN_TYPE || A.G_INDUSTRY || A.G_CPN_ADDR || A.G_CPN_PC ||
                                            A.G_CPN_DIST || A.G_CPN_TEL || A.G_OCCUPATION || A.G_TITLE ||
                                            A.G_TECH_TITLE || A.G_WORK_START_DATE ||
                                            A.G_OCTPN_INFO_UP_DATE || A.H_RESI_STATUS || A.H_RESI_ADDR ||
                                            A.H_RESI_PC || A.H_RESI_DIST || A.H_HOME_TEL ||
                                            A.H_RESI_INFO_UP_DATE || A.I_MAIL_ADDR || A.I_MAIL_PC ||
                                            A.I_MAIL_DIST || A.I_MLG_INFO_UP_DATE || A.J_ANNL_INC ||
                                            A.J_TAX_INCOME || A.J_INC_INFO_UP_DATE, 0)) OR CC.FLAG = 1
                                      THEN
                                      '20'
                                  ELSE
                                      '99'
                                  END
                                      AS RPT_DATE_CODE_OUT
                       FROM MBT_110 A
                                LEFT JOIN (
                           SELECT *
                           FROM (
                                    SELECT ROW_NUMBER()
                                                   OVER (PARTITION BY B_ID_TYPE, B_ID_NUM, B_INF_SURC_CODE ORDER BY B_RPT_DATE DESC) RN,
                                           T.*
                                    FROM MBT_110_RPT T
                                    WHERE DATA_STATUS = '27'
                                )
                           WHERE RN = 1
                       ) B
                                          ON A.B_ID_TYPE = B.B_ID_TYPE AND A.B_ID_NUM = B.B_ID_NUM AND
                                             A.B_INF_SURC_CODE = B.B_INF_SURC_CODE
                                LEFT JOIN (
                           SELECT '1' AS FLAG, B_ID_TYPE, B_ID_NUM, B_INF_SURC_CODE
                           FROM (SELECT CASE
                                            WHEN NVL(A.OTH_ID_TYPE || A.OTH_ID_NUM || A.ALIAS, 0) <>
                                                 NVL(B.OTH_ID_TYPE || B.OTH_ID_NUM || B.ALIAS, 0)
                                                THEN '1'
                                            ELSE '0' END AS FLAG, --比较值，若mbt该标识下的子段记录有增加、减少、变化，即发送了变化，为1
                                        A.B_ID_TYPE,
                                        A.B_ID_NUM,
                                        A.B_INF_SURC_CODE
                                 FROM MBT_110_C A
                                          LEFT JOIN
                                      (SELECT A.*
                                       FROM MBT_110_C_RPT A,
                                            (SELECT *
                                             FROM (SELECT ROW_NUMBER()
                                                                  OVER (PARTITION BY B_ID_TYPE, B_ID_NUM, B_INF_SURC_CODE ORDER BY B_RPT_DATE DESC) RN,
                                                          T.*
                                                   FROM MBT_110_RPT T
                                                   WHERE DATA_STATUS = '27')
                                             WHERE RN = 1
                                            ) B
                                       WHERE A.PDATA_ID = B.DATA_ID) B
                                      ON A.B_ID_TYPE = B.B_ID_TYPE AND A.B_ID_NUM = B.B_ID_NUM AND
                                         A.B_INF_SURC_CODE = B.B_INF_SURC_CODE
                                )
                           WHERE FLAG > 0
                           GROUP BY B_ID_TYPE, B_ID_NUM, B_INF_SURC_CODE
                       ) CC
                                          ON A.B_ID_TYPE = CC.B_ID_TYPE AND A.B_ID_NUM = CC.B_ID_NUM AND
                                             A.B_INF_SURC_CODE = CC.B_INF_SURC_CODE
                ) T2
                ON (T2.B_ID_TYPE = T1.B_ID_TYPE AND T2.B_ID_NUM = T1.B_ID_NUM AND
                    T1.B_INF_SURC_CODE = T2.B_INF_SURC_CODE AND T1.DATA_ID = TABLE_KEY)
                WHEN MATCHED THEN
                    UPDATE
                    SET T1.IS_RPT          = GET_ISRPT_CHANGE(T1.IS_RPT,
                                                              (T2.B_UPDATE_FLAG || T2.D_UPDATE_FLAG ||
                                                               T2.E_UPDATE_FLAG || T2.F_UPDATE_FLAG ||
                                                               T2.G_UPDATE_FLAG || T2.H_UPDATE_FLAG ||
                                                               T2.I_UPDATE_FLAG || T2.J_UPDATE_FLAG || '|')),
                        T1.B_RPT_DATE_CODE = T2.RPT_DATE_CODE_OUT
                    WHERE T1.DATA_ID = TABLE_KEY;
                SELECT B_RPT_DATE_CODE INTO RPT_DATE_CODE_OUT FROM MBT_110 WHERE DATA_ID = TABLE_KEY;
            END;

            DSC := '##修改子表[MBT_110_C] IS_RPT##';
            DBMS_OUTPUT.PUT_LINE(DSC);
            BEGIN
                SP_ODS_MBT_CAL_RPT_PROC3('MBT_110_C',
                                         '1 = 1',
                                         C_ARRAYLIST,
                                         'B_ID_TYPE,B_ID_NUM,B_INF_SURC_CODE',
                                         10,
                                         'MBT_110',
                                         TABLE_KEY);
            END;

            DSC := '##根据配置计算各段上报标识' || TABLE_KEY || '##';
            DBMS_OUTPUT.PUT_LINE(DSC);
            BEGIN
                SP_ODS_MBT_CAL_RPT_PROC2('MBT_110',
                                         'T1.B_INF_REC_TYPE = T3.INF_REC_TYPE
                                AND T3.ACCT_TYPE IS NULL
                                AND T1.B_RPT_DATE_CODE = T3.RPT_DATE_CODE',
                                         TABLE_KEY);

            END;


        ELSE
            --处理从ODS表来的数据
            /*
            有如下几种情况：
            1、本次ods数据在mbt中没有，则插入mbt，时点为新增，段上报标识：段有值为1，无值为0
            2、本次ods数据在mbt中有，且本次ods数据与上次ods数据一样，则不处理（即不覆盖mbt数据）
            3、本次ods数据在mbt中有，且本次ods数据与上次ods数据不一样，再看是否在上报记录中有，
               有，与上报表记录比对，
                    比对不一样，则覆盖mbt数据，段上报标识为1，
                    比对一样，则不覆盖，段上报标识为0（即此次抽取数据已经处理上报过，当前以mbt为准）
               没有，段有值，标识为1，段没值，标识为0（即只覆盖有值的部分）
            4、覆盖mbt数据，计算时点，若已上报过，则时点为更新，没上报过，则时点为新增
            5、至于时点里段标识是必报、有变化报、不报，通过配置信息再次更改
            */
            DSC := '##ods数据处理##';
            DBMS_OUTPUT.PUT_LINE(DSC);
            BEGIN
                SELECT COUNT(*) INTO ODS_COUNT FROM ODS_MBT_110;
                IF ODS_COUNT = 0 THEN
                    DSC := '##ods没有数据##';
                    DBMS_OUTPUT.PUT_LINE(DSC);
                ELSE
                    DSC := '##备份数据[MBT_110_TODAY_BAK,MBT_110_C_TODAY_BAK]##';
                    DBMS_OUTPUT.PUT_LINE(DSC);
                    BEGIN
                        EXECUTE IMMEDIATE 'TRUNCATE TABLE MBT_110_TODAY_BAK';
                        INSERT INTO MBT_110_TODAY_BAK
                        SELECT *
                        FROM MBT_110;

                        EXECUTE IMMEDIATE 'TRUNCATE TABLE MBT_110_C_TODAY_BAK';
                        INSERT INTO MBT_110_C_TODAY_BAK SELECT * FROM MBT_110_C;
                    END;

                    DSC := '##主表数据新增或修改，计算上报标识##';
                    DBMS_OUTPUT.PUT_LINE(DSC);
                    BEGIN
                        MERGE INTO MBT_110 T1
                        USING (
                            SELECT A.*,
                                   --ods的数据在mbt中没有
                                   --计算段上报标识,段有值标识为1，没值标识为0
                                   --B段
                                   CASE
                                       WHEN D.DATA_ID IS NULL AND TRIM(A.B_NAME || A.B_CUSTOMER_TYPE) IS NULL THEN
                                           '0'
                                       ELSE
                                           '1'
                                       END                                             AS N_B_UPDATE_FLAG,
                                   --D段
                                   CASE
                                       WHEN D.DATA_ID IS NULL AND
                                            TRIM(A.D_SEX || A.D_DOB || A.D_NATION || A.D_HOUSE_ADD || A.D_HH_DIST ||
                                                 A.D_CELL_PHONE ||
                                                 A.D_EMAIL) IS NULL
                                           THEN
                                           '0'
                                       ELSE
                                           '1'
                                       END                                             AS N_D_UPDATE_FLAG,
                                   --E段
                                   CASE
                                       WHEN D.DATA_ID IS NULL AND
                                            TRIM(A.E_MARI_STATUS || A.E_SPO_NAME || A.E_SPO_ID_TYPE || A.E_SPO_ID_NUM ||
                                                 A.E_SPO_TEL || A.E_SPS_CMPY_NM || A.F_EDU_LEVEL) IS NULL
                                           THEN
                                           '0'
                                       ELSE
                                           '1'
                                       END                                             AS N_E_UPDATE_FLAG,
                                   --F段
                                   CASE
                                       WHEN D.DATA_ID IS NULL AND TRIM(A.F_EDU_LEVEL || A.F_ACA_DEGREE) IS NULL THEN
                                           '0'
                                       ELSE
                                           '1'
                                       END                                             AS N_F_UPDATE_FLAG,
                                   --G段
                                   CASE
                                       WHEN D.DATA_ID IS NULL AND
                                            TRIM(A.G_EMP_STATUS || A.G_CPN_NAME || A.G_CPN_TYPE || A.G_INDUSTRY ||
                                                 A.G_CPN_ADDR || A.G_CPN_PC || A.G_CPN_DIST || A.G_CPN_TEL ||
                                                 A.G_OCCUPATION || A.G_TITLE || A.G_TECH_TITLE ||
                                                 A.G_WORK_START_DATE) IS NULL
                                           THEN
                                           '0'
                                       ELSE
                                           '1'
                                       END                                             AS N_G_UPDATE_FLAG,
                                   --H段
                                   CASE
                                       WHEN D.DATA_ID IS NULL AND
                                            TRIM(A.H_RESI_STATUS || A.H_RESI_ADDR || A.H_RESI_PC || A.H_RESI_DIST ||
                                                 A.H_HOME_TEL) IS NULL
                                           THEN
                                           '0'
                                       ELSE
                                           '1'
                                       END                                             AS N_H_UPDATE_FLAG,
                                   --I段
                                   CASE
                                       WHEN D.DATA_ID IS NULL AND
                                            TRIM(A.I_MAIL_ADDR || A.I_MAIL_PC || A.I_MAIL_DIST) IS NULL
                                           THEN
                                           '0'
                                       ELSE
                                           '1'
                                       END                                             AS N_I_UPDATE_FLAG,
                                   --J段
                                   CASE
                                       WHEN D.DATA_ID IS NULL AND TRIM(A.J_ANNL_INC || A.J_TAX_INCOME) IS NULL
                                           THEN
                                           '0'
                                       ELSE
                                           '1'
                                       END                                             AS N_J_UPDATE_FLAG,
                                   --初始化机构
                                   CASE WHEN D.DATA_ID IS NULL THEN E.SECTION_CODE END AS SECTION_CODE,
                                   --ods的数据在mbt中有
                                   --计算段上报标识
                                   --B段
                                /*CASE
                                    WHEN D.DATA_ID IS NOT NULL AND TRIM(A.B_NAME || A.B_CUSTOMER_TYPE) IS NOT NULL
                                        THEN*/
                                   CASE
                                       WHEN nvl(B.B_NAME || B.B_CUSTOMER_TYPE, 0) <>
                                            nvl(A.B_NAME || A.B_CUSTOMER_TYPE, 0)
                                           THEN
                                           CASE
                                               WHEN nvl(C.B_NAME || C.B_CUSTOMER_TYPE, 0) <>
                                                    nvl(A.B_NAME || A.B_CUSTOMER_TYPE, 0)
                                                   THEN
                                                   '1'
                                               ELSE
                                                   '0'
                                               END
                                       ELSE
                                           '0'
                                       END
                                       /*ELSE
                                           '0'
                                       END*/    AS B_UPDATE_FLAG,
                                   --D段
                                /*CASE
                                    WHEN D.DATA_ID IS NOT NULL AND
                                         TRIM(A.D_SEX || A.D_DOB || A.D_NATION || A.D_HOUSE_ADD || A.D_HH_DIST ||
                                              A.D_CELL_PHONE ||
                                              A.D_EMAIL) IS NOT NULL THEN*/
                                   CASE
                                       WHEN nvl(B.D_SEX || B.D_DOB || B.D_NATION || B.D_HOUSE_ADD ||
                                                B.D_HH_DIST || B.D_CELL_PHONE || B.D_EMAIL, 0)
                                           <>
                                            nvl(A.D_SEX || A.D_DOB || A.D_NATION || A.D_HOUSE_ADD ||
                                                A.D_HH_DIST || A.D_CELL_PHONE || A.D_EMAIL, 0)
                                           THEN
                                           CASE
                                               WHEN nvl(C.D_SEX || C.D_DOB || C.D_NATION || C.D_HOUSE_ADD ||
                                                        C.D_HH_DIST || C.D_CELL_PHONE || C.D_EMAIL, 0)
                                                   <>
                                                    nvl(A.D_SEX || A.D_DOB || A.D_NATION || A.D_HOUSE_ADD ||
                                                        A.D_HH_DIST || A.D_CELL_PHONE || A.D_EMAIL, 0)
                                                   THEN
                                                   '1'
                                               ELSE
                                                   '0'
                                               END
                                       ELSE
                                           '0'
                                       END
                                       /*ELSE
                                           '0'
                                       END*/    AS D_UPDATE_FLAG,
                                   --E段
                                /*CASE
                                    WHEN D.DATA_ID IS NOT NULL AND
                                         TRIM(A.E_MARI_STATUS || A.E_SPO_NAME || A.E_SPO_ID_TYPE || A.E_SPO_ID_NUM ||
                                              A.E_SPO_TEL || A.E_SPS_CMPY_NM || A.F_EDU_LEVEL) IS NOT NULL THEN*/
                                   CASE
                                       WHEN nvl(B.E_MARI_STATUS || B.E_SPO_NAME || B.E_SPO_ID_TYPE ||
                                                B.E_SPO_ID_NUM || B.E_SPO_TEL || B.E_SPS_CMPY_NM || B.F_EDU_LEVEL, 0)
                                           <>
                                            nvl(A.E_MARI_STATUS || A.E_SPO_NAME || A.E_SPO_ID_TYPE ||
                                                A.E_SPO_ID_NUM || A.E_SPO_TEL || A.E_SPS_CMPY_NM || A.F_EDU_LEVEL, 0)
                                           THEN
                                           CASE
                                               WHEN nvl(C.E_MARI_STATUS || C.E_SPO_NAME || C.E_SPO_ID_TYPE ||
                                                        C.E_SPO_ID_NUM || C.E_SPO_TEL || C.E_SPS_CMPY_NM ||
                                                        C.F_EDU_LEVEL, 0)
                                                   <>
                                                    nvl(A.E_MARI_STATUS || A.E_SPO_NAME || A.E_SPO_ID_TYPE ||
                                                        A.E_SPO_ID_NUM || A.E_SPO_TEL || A.E_SPS_CMPY_NM ||
                                                        A.F_EDU_LEVEL, 0)
                                                   THEN
                                                   '1'
                                               ELSE
                                                   '0'
                                               END
                                       ELSE
                                           '0'
                                       END
                                       /*ELSE
                                           '0'
                                       END*/    AS E_UPDATE_FLAG,
                                   --F段
                                /*CASE
                                    WHEN D.DATA_ID IS NOT NULL AND
                                         TRIM(A.F_EDU_LEVEL || A.F_ACA_DEGREE) IS NOT NULL THEN*/
                                   CASE
                                       WHEN nvl(B.F_EDU_LEVEL || B.F_ACA_DEGREE, 0) <>
                                            nvl(A.F_EDU_LEVEL || A.F_ACA_DEGREE, 0)
                                           THEN
                                           CASE
                                               WHEN nvl(C.F_EDU_LEVEL || C.F_ACA_DEGREE, 0) <>
                                                    nvl(A.F_EDU_LEVEL || A.F_ACA_DEGREE, 0)
                                                   THEN
                                                   '1'
                                               ELSE
                                                   '0'
                                               END
                                       ELSE
                                           '0'
                                       END
                                       /*ELSE
                                           '0'
                                       END*/    AS F_UPDATE_FLAG,
                                   --G段
                                /*CASE
                                    WHEN D.DATA_ID IS NOT NULL AND
                                         TRIM(A.G_EMP_STATUS || A.G_CPN_NAME ||
                                              A.G_CPN_TYPE || A.G_INDUSTRY || A.G_CPN_ADDR ||
                                              A.G_CPN_PC || A.G_CPN_DIST || A.G_CPN_TEL ||
                                              A.G_OCCUPATION || A.G_TITLE || A.G_TECH_TITLE ||
                                              A.G_WORK_START_DATE) IS NOT NULL THEN*/
                                   CASE
                                       WHEN nvl(B.G_EMP_STATUS || B.G_CPN_NAME || B.G_CPN_TYPE || B.G_INDUSTRY ||
                                                B.G_CPN_ADDR || B.G_CPN_PC || B.G_CPN_DIST || B.G_CPN_TEL ||
                                                B.G_OCCUPATION || B.G_TITLE || B.G_TECH_TITLE || B.G_WORK_START_DATE, 0)
                                           <>
                                            nvl(A.G_EMP_STATUS || A.G_CPN_NAME || A.G_CPN_TYPE || A.G_INDUSTRY ||
                                                A.G_CPN_ADDR || A.G_CPN_PC || A.G_CPN_DIST || A.G_CPN_TEL ||
                                                A.G_OCCUPATION || A.G_TITLE || A.G_TECH_TITLE || A.G_WORK_START_DATE, 0)
                                           THEN
                                           CASE
                                               WHEN nvl(C.G_EMP_STATUS || C.G_CPN_NAME || C.G_CPN_TYPE ||
                                                        C.G_INDUSTRY || C.G_CPN_ADDR || C.G_CPN_PC || C.G_CPN_DIST ||
                                                        C.G_CPN_TEL || C.G_OCCUPATION || C.G_TITLE || C.G_TECH_TITLE ||
                                                        C.G_WORK_START_DATE, 0)
                                                   <>
                                                    nvl(A.G_EMP_STATUS || A.G_CPN_NAME || A.G_CPN_TYPE ||
                                                        A.G_INDUSTRY || A.G_CPN_ADDR || A.G_CPN_PC || A.G_CPN_DIST ||
                                                        A.G_CPN_TEL || A.G_OCCUPATION || A.G_TITLE || A.G_TECH_TITLE ||
                                                        A.G_WORK_START_DATE, 0)
                                                   THEN
                                                   '1'
                                               ELSE
                                                   '0'
                                               END
                                       ELSE
                                           '0'
                                       END
                                       /*ELSE
                                           '0'
                                       END*/    AS G_UPDATE_FLAG,
                                   --H段
                                /*CASE
                                    WHEN D.DATA_ID IS NOT NULL AND
                                         TRIM(A.H_RESI_STATUS || A.H_RESI_ADDR ||
                                              A.H_RESI_PC || A.H_RESI_DIST || A.H_HOME_TEL) IS NOT NULL THEN*/
                                   CASE
                                       WHEN nvl(B.H_RESI_STATUS || B.H_RESI_ADDR ||
                                                B.H_RESI_PC || B.H_RESI_DIST || B.H_HOME_TEL, 0)
                                           <>
                                            nvl(A.H_RESI_STATUS || A.H_RESI_ADDR ||
                                                A.H_RESI_PC || A.H_RESI_DIST || A.H_HOME_TEL, 0)
                                           THEN
                                           CASE
                                               WHEN nvl(C.H_RESI_STATUS || C.H_RESI_ADDR ||
                                                        C.H_RESI_PC || C.H_RESI_DIST || C.H_HOME_TEL, 0)
                                                   <>
                                                    nvl(A.H_RESI_STATUS || A.H_RESI_ADDR ||
                                                        A.H_RESI_PC || A.H_RESI_DIST || A.H_HOME_TEL, 0)
                                                   THEN
                                                   '1'
                                               ELSE
                                                   '0'
                                               END
                                       ELSE
                                           '0'
                                       END
                                       /*ELSE
                                           '0'
                                       END*/    AS H_UPDATE_FLAG,
                                   --I段
                                /*CASE
                                    WHEN D.DATA_ID IS NOT NULL AND
                                         TRIM(A.I_MAIL_ADDR || A.I_MAIL_PC || A.I_MAIL_DIST) IS NOT NULL THEN*/
                                   CASE
                                       WHEN nvl(B.I_MAIL_ADDR || B.I_MAIL_PC || B.I_MAIL_DIST, 0)
                                           <>
                                            nvl(A.I_MAIL_ADDR || A.I_MAIL_PC || A.I_MAIL_DIST, 0)
                                           THEN
                                           CASE
                                               WHEN nvl(C.I_MAIL_ADDR || C.I_MAIL_PC || C.I_MAIL_DIST, 0)
                                                   <>
                                                    nvl(A.I_MAIL_ADDR || A.I_MAIL_PC || A.I_MAIL_DIST, 0)
                                                   THEN
                                                   '1'
                                               ELSE
                                                   '0'
                                               END
                                       ELSE
                                           '0'
                                       END
                                       /*ELSE
                                           '0'
                                       END*/    AS I_UPDATE_FLAG,
                                   --J段
                                /*CASE
                                    WHEN D.DATA_ID IS NOT NULL AND
                                         TRIM(A.J_ANNL_INC || A.J_TAX_INCOME) IS NOT NULL THEN*/
                                   CASE
                                       WHEN nvl(B.J_ANNL_INC || B.J_TAX_INCOME, 0) <>
                                            nvl(A.J_ANNL_INC || A.J_TAX_INCOME, 0)
                                           THEN
                                           CASE
                                               WHEN nvl(C.J_ANNL_INC || C.J_TAX_INCOME, 0) <>
                                                    nvl(A.J_ANNL_INC || A.J_TAX_INCOME, 0)
                                                   THEN
                                                   '1'
                                               ELSE
                                                   '0'
                                               END
                                       ELSE
                                           '0'
                                       END
                                       /*ELSE
                                           '0'
                                       END*/    AS J_UPDATE_FLAG

                            FROM ODS_MBT_110 A
                                     LEFT JOIN --与ods上次数据比较
                                (SELECT *
                                 FROM (
                                          SELECT ROW_NUMBER()
                                                         OVER (PARTITION BY T.B_ID_TYPE, T.B_ID_NUM, T.B_INF_SURC_CODE ORDER BY DATA_LOAD_TIME DESC) RN,
                                                 T.*
                                          FROM ODS_MBT_110_HIS T
                                          ORDER BY DATA_LOAD_TIME DESC
                                      )
                                 WHERE RN = 1
                                ) B
                                               ON A.B_ID_TYPE = B.B_ID_TYPE AND A.B_ID_NUM = B.B_ID_NUM AND
                                                  A.B_INF_SURC_CODE = B.B_INF_SURC_CODE
                                     LEFT JOIN --看数据是否已报送过
                                (SELECT *
                                 FROM (SELECT ROW_NUMBER()
                                                      OVER (PARTITION BY B_ID_TYPE, B_ID_NUM, B_INF_SURC_CODE ORDER BY T.B_RPT_DATE DESC) RN,
                                              T.*
                                       FROM MBT_110_RPT T
                                       WHERE DATA_STATUS = '27')
                                 WHERE RN = 1
                                ) C
                                               ON A.B_ID_TYPE = C.B_ID_TYPE AND A.B_ID_NUM = C.B_ID_NUM AND
                                                  A.B_INF_SURC_CODE = C.B_INF_SURC_CODE
                                     LEFT JOIN --需要考虑mbt表中有用户新增的和ods中一样的数据
                                MBT_110 D
                                               ON A.B_ID_TYPE = D.B_ID_TYPE AND A.B_ID_NUM = D.B_ID_NUM AND
                                                  A.B_INF_SURC_CODE = D.B_INF_SURC_CODE
                                     LEFT JOIN --新增的情况，为机构赋值
                                MBT_SECTION_CODE E
                                               ON D.ORG_ID = E.ORG_ID
                        ) T2
                        ON (T1.B_ID_TYPE = T2.B_ID_TYPE AND T1.B_ID_NUM = T2.B_ID_NUM AND
                            T1.B_INF_SURC_CODE = T2.B_INF_SURC_CODE)
                        WHEN MATCHED THEN
                            UPDATE
                            SET T1.B_NAME               = CASE
                                                              WHEN T2.B_UPDATE_FLAG = '1'
                                                                  THEN T2.B_NAME
                                                              WHEN T2.B_UPDATE_FLAG = '0' THEN T1.B_NAME END,
                                T1.B_CUSTOMER_TYPE      = CASE
                                                              WHEN T2.B_UPDATE_FLAG = '1'
                                                                  THEN T2.B_CUSTOMER_TYPE
                                                              WHEN T2.B_UPDATE_FLAG = '0' THEN T1.B_CUSTOMER_TYPE END,
                                T1.D_SEX                = CASE
                                                              WHEN T2.D_UPDATE_FLAG = '1'
                                                                  THEN T2.D_SEX
                                                              WHEN T2.D_UPDATE_FLAG = '0' THEN T1.D_SEX END,
                                T1.D_DOB                = CASE
                                                              WHEN T2.D_UPDATE_FLAG = '1'
                                                                  THEN T2.D_DOB
                                                              WHEN T2.D_UPDATE_FLAG = '0' THEN T1.D_DOB END,
                                T1.D_NATION             = CASE
                                                              WHEN T2.D_UPDATE_FLAG = '1'
                                                                  THEN T2.D_NATION
                                                              WHEN T2.D_UPDATE_FLAG = '0' THEN T1.D_NATION END,
                                T1.D_HOUSE_ADD          = CASE
                                                              WHEN T2.D_UPDATE_FLAG = '1'
                                                                  THEN T2.D_HOUSE_ADD
                                                              WHEN T2.D_UPDATE_FLAG = '0' THEN T1.D_HOUSE_ADD END,
                                T1.D_HH_DIST            = CASE
                                                              WHEN T2.D_UPDATE_FLAG = '1'
                                                                  THEN T2.D_HH_DIST
                                                              WHEN T2.D_UPDATE_FLAG = '0' THEN T1.D_HH_DIST END,
                                T1.D_CELL_PHONE         = CASE
                                                              WHEN T2.D_UPDATE_FLAG = '1'
                                                                  THEN T2.D_CELL_PHONE
                                                              WHEN T2.D_UPDATE_FLAG = '0' THEN T1.D_CELL_PHONE END,
                                T1.D_EMAIL              = CASE
                                                              WHEN T2.D_UPDATE_FLAG = '1'
                                                                  THEN T2.D_EMAIL
                                                              WHEN T2.D_UPDATE_FLAG = '0' THEN T1.D_EMAIL END,
                                T1.D_FCS_INFO_UP_DATE   = CASE
                                                              WHEN T2.D_UPDATE_FLAG = '1' THEN V_DATE
                                                              WHEN T2.D_UPDATE_FLAG = '0'
                                                                  THEN T1.D_FCS_INFO_UP_DATE END,
                                T1.E_MARI_STATUS        = CASE
                                                              WHEN T2.E_UPDATE_FLAG = '1'
                                                                  THEN T2.E_MARI_STATUS
                                                              WHEN T2.E_UPDATE_FLAG = '0' THEN T1.E_MARI_STATUS END,
                                T1.E_SPO_NAME           = CASE
                                                              WHEN T2.E_UPDATE_FLAG = '1'
                                                                  THEN T2.E_SPO_NAME
                                                              WHEN T2.E_UPDATE_FLAG = '0' THEN T1.E_SPO_NAME END,
                                T1.E_SPO_ID_TYPE        = CASE
                                                              WHEN T2.E_UPDATE_FLAG = '1'
                                                                  THEN T2.E_SPO_ID_TYPE
                                                              WHEN T2.E_UPDATE_FLAG = '0' THEN T1.E_SPO_ID_TYPE END,
                                T1.E_SPO_ID_NUM         = CASE
                                                              WHEN T2.E_UPDATE_FLAG = '1'
                                                                  THEN T2.E_SPO_ID_NUM
                                                              WHEN T2.E_UPDATE_FLAG = '0' THEN T1.E_SPO_ID_NUM END,
                                T1.E_SPO_TEL            = CASE
                                                              WHEN T2.E_UPDATE_FLAG = '1'
                                                                  THEN T2.E_SPO_TEL
                                                              WHEN T2.E_UPDATE_FLAG = '0' THEN T1.E_SPO_TEL END,
                                T1.E_SPS_CMPY_NM        = CASE
                                                              WHEN T2.E_UPDATE_FLAG = '1'
                                                                  THEN T2.E_SPS_CMPY_NM
                                                              WHEN T2.E_UPDATE_FLAG = '0' THEN T1.E_SPS_CMPY_NM END,
                                T1.E_SPS_INFO_UP_DATE   = CASE
                                                              WHEN T2.E_UPDATE_FLAG = '1' THEN V_DATE
                                                              WHEN T2.E_UPDATE_FLAG = '0'
                                                                  THEN T1.E_SPS_INFO_UP_DATE END,
                                T1.F_EDU_LEVEL          = CASE
                                                              WHEN T2.F_UPDATE_FLAG = '1'
                                                                  THEN T2.F_EDU_LEVEL
                                                              WHEN T2.F_UPDATE_FLAG = '0' THEN T1.F_EDU_LEVEL END,
                                T1.F_ACA_DEGREE         = CASE
                                                              WHEN T2.F_UPDATE_FLAG = '1'
                                                                  THEN T2.F_ACA_DEGREE
                                                              WHEN T2.F_UPDATE_FLAG = '0' THEN T1.F_ACA_DEGREE END,
                                T1.F_EDU_INFO_UP_DATE   = CASE
                                                              WHEN T2.F_UPDATE_FLAG = '1' THEN V_DATE
                                                              WHEN T2.F_UPDATE_FLAG = '0'
                                                                  THEN T1.F_EDU_INFO_UP_DATE END,
                                T1.G_EMP_STATUS         = CASE
                                                              WHEN T2.G_UPDATE_FLAG = '1'
                                                                  THEN T2.G_EMP_STATUS
                                                              WHEN T2.G_UPDATE_FLAG = '0' THEN T1.G_EMP_STATUS END,
                                T1.G_CPN_NAME           = CASE
                                                              WHEN T2.G_UPDATE_FLAG = '1'
                                                                  THEN T2.G_CPN_NAME
                                                              WHEN T2.G_UPDATE_FLAG = '0' THEN T1.G_CPN_NAME END,
                                T1.G_CPN_TYPE           = CASE
                                                              WHEN T2.G_UPDATE_FLAG = '1'
                                                                  THEN T2.G_CPN_TYPE
                                                              WHEN T2.G_UPDATE_FLAG = '0' THEN T1.G_CPN_TYPE END,
                                T1.G_INDUSTRY           = CASE
                                                              WHEN T2.G_UPDATE_FLAG = '1'
                                                                  THEN T2.G_INDUSTRY
                                                              WHEN T2.G_UPDATE_FLAG = '0' THEN T1.G_INDUSTRY END,
                                T1.G_CPN_ADDR           = CASE
                                                              WHEN T2.G_UPDATE_FLAG = '1'
                                                                  THEN T2.G_CPN_ADDR
                                                              WHEN T2.G_UPDATE_FLAG = '0' THEN T1.G_CPN_ADDR END,
                                T1.G_CPN_PC             = CASE
                                                              WHEN T2.G_UPDATE_FLAG = '1'
                                                                  THEN T2.G_CPN_PC
                                                              WHEN T2.G_UPDATE_FLAG = '0' THEN T1.G_CPN_PC END,
                                T1.G_CPN_DIST           = CASE
                                                              WHEN T2.G_UPDATE_FLAG = '1'
                                                                  THEN T2.G_CPN_DIST
                                                              WHEN T2.G_UPDATE_FLAG = '0' THEN T1.G_CPN_DIST END,
                                T1.G_CPN_TEL            = CASE
                                                              WHEN T2.G_UPDATE_FLAG = '1'
                                                                  THEN T2.G_CPN_TEL
                                                              WHEN T2.G_UPDATE_FLAG = '0' THEN T1.G_CPN_TEL END,
                                T1.G_OCCUPATION         = CASE
                                                              WHEN T2.G_UPDATE_FLAG = '1'
                                                                  THEN T2.G_OCCUPATION
                                                              WHEN T2.G_UPDATE_FLAG = '0' THEN T1.G_OCCUPATION END,
                                T1.G_TITLE              = CASE
                                                              WHEN T2.G_UPDATE_FLAG = '1'
                                                                  THEN T2.G_TITLE
                                                              WHEN T2.G_UPDATE_FLAG = '0' THEN T1.G_TITLE END,
                                T1.G_TECH_TITLE         = CASE
                                                              WHEN T2.G_UPDATE_FLAG = '1'
                                                                  THEN T2.G_TECH_TITLE
                                                              WHEN T2.G_UPDATE_FLAG = '0' THEN T1.G_TECH_TITLE END,
                                T1.G_WORK_START_DATE    = CASE
                                                              WHEN T2.G_UPDATE_FLAG = '1'
                                                                  THEN T2.G_WORK_START_DATE
                                                              WHEN T2.G_UPDATE_FLAG = '0' THEN T1.G_WORK_START_DATE END,
                                T1.G_OCTPN_INFO_UP_DATE = CASE
                                                              WHEN T2.G_UPDATE_FLAG = '1' THEN V_DATE
                                                              WHEN T2.G_UPDATE_FLAG = '0'
                                                                  THEN T1.G_OCTPN_INFO_UP_DATE END,
                                T1.H_RESI_STATUS        = CASE
                                                              WHEN T2.H_UPDATE_FLAG = '1'
                                                                  THEN T2.H_RESI_STATUS
                                                              WHEN T2.H_UPDATE_FLAG = '0' THEN T1.H_RESI_STATUS END,
                                T1.H_RESI_ADDR          = CASE
                                                              WHEN T2.H_UPDATE_FLAG = '1'
                                                                  THEN T2.H_RESI_ADDR
                                                              WHEN T2.H_UPDATE_FLAG = '0' THEN T1.H_RESI_ADDR END,
                                T1.H_RESI_PC            = CASE
                                                              WHEN T2.H_UPDATE_FLAG = '1'
                                                                  THEN T2.H_RESI_PC
                                                              WHEN T2.H_UPDATE_FLAG = '0' THEN T1.H_RESI_PC END,
                                T1.H_RESI_DIST          = CASE
                                                              WHEN T2.H_UPDATE_FLAG = '1'
                                                                  THEN T2.H_RESI_DIST
                                                              WHEN T2.H_UPDATE_FLAG = '0' THEN T1.H_RESI_DIST END,
                                T1.H_HOME_TEL           = CASE
                                                              WHEN T2.H_UPDATE_FLAG = '1'
                                                                  THEN T2.H_HOME_TEL
                                                              WHEN T2.H_UPDATE_FLAG = '0' THEN T1.H_HOME_TEL END,
                                T1.H_RESI_INFO_UP_DATE  = CASE
                                                              WHEN T2.H_UPDATE_FLAG = '1' THEN V_DATE
                                                              WHEN T2.H_UPDATE_FLAG = '0'
                                                                  THEN T1.H_RESI_INFO_UP_DATE END,
                                T1.I_MAIL_ADDR          = CASE
                                                              WHEN T2.I_UPDATE_FLAG = '1'
                                                                  THEN T2.I_MAIL_ADDR
                                                              WHEN T2.I_UPDATE_FLAG = '0' THEN T1.I_MAIL_ADDR END,
                                T1.I_MAIL_PC            = CASE
                                                              WHEN T2.I_UPDATE_FLAG = '1'
                                                                  THEN T2.I_MAIL_PC
                                                              WHEN T2.I_UPDATE_FLAG = '0' THEN T1.I_MAIL_PC END,
                                T1.I_MAIL_DIST          = CASE
                                                              WHEN T2.I_UPDATE_FLAG = '1'
                                                                  THEN T2.I_MAIL_DIST
                                                              WHEN T2.I_UPDATE_FLAG = '0' THEN T1.I_MAIL_DIST END,
                                T1.I_MLG_INFO_UP_DATE   = CASE
                                                              WHEN T2.I_UPDATE_FLAG = '1' THEN V_DATE
                                                              WHEN T2.I_UPDATE_FLAG = '0'
                                                                  THEN T1.I_MLG_INFO_UP_DATE END,
                                T1.J_ANNL_INC           = CASE
                                                              WHEN T2.J_UPDATE_FLAG = '1'
                                                                  THEN T2.J_ANNL_INC
                                                              WHEN T2.J_UPDATE_FLAG = '0' THEN T1.J_ANNL_INC END,
                                T1.J_TAX_INCOME         = CASE
                                                              WHEN T2.J_UPDATE_FLAG = '1'
                                                                  THEN T2.J_TAX_INCOME
                                                              WHEN T2.J_UPDATE_FLAG = '0' THEN T1.J_TAX_INCOME END,
                                T1.J_INC_INFO_UP_DATE   = CASE
                                                              WHEN T2.J_UPDATE_FLAG = '1' THEN V_DATE
                                                              WHEN T2.J_UPDATE_FLAG = '0'
                                                                  THEN T1.J_INC_INFO_UP_DATE END,
                                T1.IS_RPT               = GET_ISRPT_CHANGE(T1.IS_RPT,
                                                                           (T2.B_UPDATE_FLAG || T2.D_UPDATE_FLAG ||
                                                                            T2.E_UPDATE_FLAG || T2.F_UPDATE_FLAG ||
                                                                            T2.G_UPDATE_FLAG || T2.H_UPDATE_FLAG ||
                                                                            T2.I_UPDATE_FLAG || T2.J_UPDATE_FLAG ||
                                                                            '|')),
                                T1.DATA_STATUS          = '00',
                                T1.DATA_SOURCE          = '2',
                                T1.DATA_CHG_USER        = 'SYSTEM',
                                T1.DATA_CHG_DATE        = CURRENTDATE,
                                T1.DATA_CHG_TIME        = CURRENTTIME,
                                T1.B_RPT_DATE           = V_T_DATE,
                                T1.CHECK_FLAG           = 'N'
                        WHEN NOT MATCHED THEN
                            INSERT
                            (T1.DATA_ID,
                             T1.DATA_DATE,
                             T1.CORP_ID,
                             T1.ORG_ID,
                             T1.CUST_NO,
                             T1.GROUP_ID,
                             T1.INQ_ORG_ID,
                             T1.INQ_GROUP_ID,
                             T1.B_INF_REC_TYPE,
                             T1.B_NAME,
                             T1.B_ID_TYPE,
                             T1.B_ID_NUM,
                             T1.B_INF_SURC_CODE,
                             T1.B_RPT_DATE,
                             T1.B_RPT_DATE_CODE,
                             T1.B_CIMOC,
                             T1.B_CUSTOMER_TYPE,
                             T1.C_ID_INFO_UP_DATE,
                             T1.D_SEX,
                             T1.D_DOB,
                             T1.D_NATION,
                             T1.D_HOUSE_ADD,
                             T1.D_HH_DIST,
                             T1.D_CELL_PHONE,
                             T1.D_EMAIL,
                             T1.D_FCS_INFO_UP_DATE,
                             T1.E_MARI_STATUS,
                             T1.E_SPO_NAME,
                             T1.E_SPO_ID_TYPE,
                             T1.E_SPO_ID_NUM,
                             T1.E_SPO_TEL,
                             T1.E_SPS_CMPY_NM,
                             T1.E_SPS_INFO_UP_DATE,
                             T1.F_EDU_LEVEL,
                             T1.F_ACA_DEGREE,
                             T1.F_EDU_INFO_UP_DATE,
                             T1.G_EMP_STATUS,
                             T1.G_CPN_NAME,
                             T1.G_CPN_TYPE,
                             T1.G_INDUSTRY,
                             T1.G_CPN_ADDR,
                             T1.G_CPN_PC,
                             T1.G_CPN_DIST,
                             T1.G_CPN_TEL,
                             T1.G_OCCUPATION,
                             T1.G_TITLE,
                             T1.G_TECH_TITLE,
                             T1.G_WORK_START_DATE,
                             T1.G_OCTPN_INFO_UP_DATE,
                             T1.H_RESI_STATUS,
                             T1.H_RESI_ADDR,
                             T1.H_RESI_PC,
                             T1.H_RESI_DIST,
                             T1.H_HOME_TEL,
                             T1.H_RESI_INFO_UP_DATE,
                             T1.I_MAIL_ADDR,
                             T1.I_MAIL_PC,
                             T1.I_MAIL_DIST,
                             T1.I_MLG_INFO_UP_DATE,
                             T1.J_ANNL_INC,
                             T1.J_TAX_INCOME,
                             T1.J_INC_INFO_UP_DATE,
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
                                    T2.CUST_NO,
                                    T2.GROUP_ID,
                                    T2.ORG_ID,
                                    T2.ORG_ID,
                                    '110',
                                    T2.B_NAME,
                                    T2.B_ID_TYPE,
                                    T2.B_ID_NUM,
                                    T2.B_INF_SURC_CODE,
                                    V_T_DATE,
                                    '10',
                                    T2.B_CIMOC,
                                    T2.B_CUSTOMER_TYPE,
                                    V_DATE,
                                    T2.D_SEX,
                                    T2.D_DOB,
                                    T2.D_NATION,
                                    T2.D_HOUSE_ADD,
                                    T2.D_HH_DIST,
                                    T2.D_CELL_PHONE,
                                    T2.D_EMAIL,
                                    V_DATE,
                                    T2.E_MARI_STATUS,
                                    T2.E_SPO_NAME,
                                    T2.E_SPO_ID_TYPE,
                                    T2.E_SPO_ID_NUM,
                                    T2.E_SPO_TEL,
                                    T2.E_SPS_CMPY_NM,
                                    V_DATE,
                                    T2.F_EDU_LEVEL,
                                    T2.F_ACA_DEGREE,
                                    V_DATE,
                                    T2.G_EMP_STATUS,
                                    T2.G_CPN_NAME,
                                    T2.G_CPN_TYPE,
                                    T2.G_INDUSTRY,
                                    T2.G_CPN_ADDR,
                                    T2.G_CPN_PC,
                                    T2.G_CPN_DIST,
                                    T2.G_CPN_TEL,
                                    T2.G_OCCUPATION,
                                    T2.G_TITLE,
                                    T2.G_TECH_TITLE,
                                    T2.G_WORK_START_DATE,
                                    V_DATE,
                                    T2.H_RESI_STATUS,
                                    T2.H_RESI_ADDR,
                                    T2.H_RESI_PC,
                                    T2.H_RESI_DIST,
                                    T2.H_HOME_TEL,
                                    V_DATE,
                                    T2.I_MAIL_ADDR,
                                    T2.I_MAIL_PC,
                                    T2.I_MAIL_DIST,
                                    V_DATE,
                                    T2.J_ANNL_INC,
                                    T2.J_TAX_INCOME,
                                    V_DATE,
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
                                    (T2.N_B_UPDATE_FLAG || T2.N_D_UPDATE_FLAG ||
                                     T2.N_E_UPDATE_FLAG || T2.N_F_UPDATE_FLAG ||
                                     T2.N_G_UPDATE_FLAG || T2.N_H_UPDATE_FLAG ||
                                     T2.N_I_UPDATE_FLAG || T2.N_J_UPDATE_FLAG || '|'));

                    END;

                    DSC := '##子表数据新增或修改##';
                    DBMS_OUTPUT.PUT_LINE(DSC);
                    BEGIN
                        DELETE
                        FROM MBT_110_C
                        WHERE PDATA_ID IN (
                            SELECT B.DATA_ID
                            FROM ODS_MBT_110 A
                                     LEFT JOIN MBT_110 B
                                               ON A.B_ID_TYPE = B.B_ID_TYPE AND A.B_ID_NUM = B.B_ID_NUM AND
                                                  A.B_INF_SURC_CODE = B.B_INF_SURC_CODE);
                        --然后重新插入
                        MERGE INTO MBT_110_C T1
                        USING (SELECT A.DATA_ID,
                                      A.DATA_DATE,
                                      A.ALIAS,
                                      A.OTH_ID_TYPE,
                                      A.OTH_ID_NUM,
                                      A.RSV1,
                                      A.RSV2,
                                      A.RSV3,
                                      A.RSV4,
                                      A.RSV5,
                                      B.DATA_ID AS PDATA_ID,
                                      A.B_ID_TYPE,
                                      A.B_ID_NUM,
                                      A.B_INF_SURC_CODE
                               FROM ODS_MBT_110_C A
                                        INNER JOIN MBT_110 B
                                                   ON A.PDATA_ID = B.DATA_ID
                        ) T2
                        ON (T1.OTH_ID_TYPE = T2.OTH_ID_TYPE AND T1.OTH_ID_NUM = T2.OTH_ID_NUM)
                        WHEN NOT MATCHED THEN
                            INSERT
                            (T1.DATA_ID,
                             T1.PDATA_ID,
                             T1.DATA_DATE,
                             T1.ALIAS,
                             T1.OTH_ID_TYPE,
                             T1.OTH_ID_NUM,
                             T1.ODS_DATA_ID,
                             T1.DATA_SOURE,
                             T1.DATA_CRT_USER,
                             T1.DATA_CRT_DATE,
                             T1.DATA_CRT_TIME,
                             T1.RSV1,
                             T1.RSV2,
                             T1.RSV3,
                             T1.RSV4,
                             T1.RSV5,
                             T1.B_ID_TYPE,
                             T1.B_ID_NUM,
                             T1.B_INF_SURC_CODE)
                            VALUES (T2.DATA_ID,
                                    T2.PDATA_ID,
                                    T2.DATA_DATE,
                                    T2.ALIAS,
                                    T2.OTH_ID_TYPE,
                                    T2.OTH_ID_NUM,
                                    T2.DATA_ID,
                                    '2',
                                    'SYSEM',
                                    CURRENTDATE,
                                    CURRENTTIME,
                                    T2.RSV1,
                                    T2.RSV2,
                                    T2.RSV3,
                                    T2.RSV4,
                                    'FLAG',
                                    T2.B_ID_TYPE,
                                    T2.B_ID_NUM,
                                    T2.B_INF_SURC_CODE);
                    END;

                    DSC := '##更改主表数据状态##';
                    DBMS_OUTPUT.PUT_LINE(DSC);
                    BEGIN
                        MERGE INTO MBT_110 T1
                        USING (SELECT DISTINCT B.DATA_ID
                               FROM MBT_110_C A
                                        LEFT JOIN MBT_110 B
                                                  ON A.PDATA_ID = B.DATA_ID
                               WHERE A.RSV5 = 'FLAG') T2
                        ON (T1.DATA_ID = T2.DATA_ID)
                        WHEN MATCHED THEN
                            UPDATE SET T1.DATA_STATUS = '00';
                    END;

                    DSC := '##更改子表数据状态##';
                    DBMS_OUTPUT.PUT_LINE(DSC);
                    BEGIN
                        UPDATE MBT_110_C SET RSV5 = NULL WHERE RSV5 = 'FLAG';
                    END;

                    DSC := '##更新报告时点##';
                    DBMS_OUTPUT.PUT_LINE(DSC);
                    BEGIN
                        MERGE INTO MBT_110 T1
                        USING (SELECT A.DATA_ID,
                                      CASE
                                          WHEN B.DATA_ID IS NULL THEN
                                              '10'
                                          WHEN (NVL(B.B_INF_REC_TYPE || B.B_NAME || B.B_ID_TYPE || B.B_ID_NUM ||
                                                    B.B_INF_SURC_CODE || B.B_RPT_DATE || B.B_CIMOC ||
                                                    B.B_CUSTOMER_TYPE || B.C_ID_INFO_UP_DATE || B.D_SEX ||
                                                    B.D_DOB || B.D_NATION || B.D_HOUSE_ADD || B.D_HH_DIST ||
                                                    B.D_CELL_PHONE || B.D_EMAIL || B.D_FCS_INFO_UP_DATE ||
                                                    B.E_MARI_STATUS || B.E_SPO_NAME || B.E_SPO_ID_TYPE ||
                                                    B.E_SPO_ID_NUM || B.E_SPO_TEL || B.E_SPS_CMPY_NM ||
                                                    B.E_SPS_INFO_UP_DATE || B.F_EDU_LEVEL || B.F_ACA_DEGREE ||
                                                    B.F_EDU_INFO_UP_DATE || B.G_EMP_STATUS || B.G_CPN_NAME ||
                                                    B.G_CPN_TYPE || B.G_INDUSTRY || B.G_CPN_ADDR || B.G_CPN_PC ||
                                                    B.G_CPN_DIST || B.G_CPN_TEL || B.G_OCCUPATION || B.G_TITLE ||
                                                    B.G_TECH_TITLE || B.G_WORK_START_DATE ||
                                                    B.G_OCTPN_INFO_UP_DATE || B.H_RESI_STATUS || B.H_RESI_ADDR ||
                                                    B.H_RESI_PC || B.H_RESI_DIST || B.H_HOME_TEL ||
                                                    B.H_RESI_INFO_UP_DATE || B.I_MAIL_ADDR || B.I_MAIL_PC ||
                                                    B.I_MAIL_DIST || B.I_MLG_INFO_UP_DATE || B.J_ANNL_INC ||
                                                    B.J_TAX_INCOME || B.J_INC_INFO_UP_DATE, 0)
                                              <>
                                                NVL(A.B_INF_REC_TYPE || A.B_NAME || A.B_ID_TYPE || A.B_ID_NUM ||
                                                    A.B_INF_SURC_CODE || A.B_RPT_DATE || A.B_CIMOC ||
                                                    A.B_CUSTOMER_TYPE || A.C_ID_INFO_UP_DATE || A.D_SEX ||
                                                    A.D_DOB || A.D_NATION || A.D_HOUSE_ADD || A.D_HH_DIST ||
                                                    A.D_CELL_PHONE || A.D_EMAIL || A.D_FCS_INFO_UP_DATE ||
                                                    A.E_MARI_STATUS || A.E_SPO_NAME || A.E_SPO_ID_TYPE ||
                                                    A.E_SPO_ID_NUM || A.E_SPO_TEL || A.E_SPS_CMPY_NM ||
                                                    A.E_SPS_INFO_UP_DATE || A.F_EDU_LEVEL || A.F_ACA_DEGREE ||
                                                    A.F_EDU_INFO_UP_DATE || A.G_EMP_STATUS || A.G_CPN_NAME ||
                                                    A.G_CPN_TYPE || A.G_INDUSTRY || A.G_CPN_ADDR || A.G_CPN_PC ||
                                                    A.G_CPN_DIST || A.G_CPN_TEL || A.G_OCCUPATION || A.G_TITLE ||
                                                    A.G_TECH_TITLE || A.G_WORK_START_DATE ||
                                                    A.G_OCTPN_INFO_UP_DATE || A.H_RESI_STATUS || A.H_RESI_ADDR ||
                                                    A.H_RESI_PC || A.H_RESI_DIST || A.H_HOME_TEL ||
                                                    A.H_RESI_INFO_UP_DATE || A.I_MAIL_ADDR || A.I_MAIL_PC ||
                                                    A.I_MAIL_DIST || A.I_MLG_INFO_UP_DATE || A.J_ANNL_INC ||
                                                    A.J_TAX_INCOME || A.J_INC_INFO_UP_DATE, 0)) OR CC.FLAG = 1
                                              THEN
                                              '20'
                                          ELSE
                                              '99'
                                          END AS B_RPT_DATE_CODE
                               FROM MBT_110 A
                                        LEFT JOIN (SELECT *
                                                   FROM (SELECT ROW_NUMBER()
                                                                        OVER (PARTITION BY B_ID_TYPE, B_ID_NUM, B_INF_SURC_CODE ORDER BY B_RPT_DATE DESC) RN,
                                                                T.*
                                                         FROM MBT_110_RPT T
                                                         WHERE DATA_STATUS = '27')
                                                   WHERE RN = 1
                               ) B ON A.B_ID_TYPE = B.B_ID_TYPE AND A.B_ID_NUM = B.B_ID_NUM AND
                                      A.B_INF_SURC_CODE = B.B_INF_SURC_CODE
                                        LEFT JOIN (SELECT '1' AS FLAG, B_ID_TYPE, B_ID_NUM, B_INF_SURC_CODE
                                                   FROM (SELECT CASE
                                                                    WHEN NVL(A.OTH_ID_TYPE || A.OTH_ID_NUM || A.ALIAS, 0) <>
                                                                         NVL(B.OTH_ID_TYPE || B.OTH_ID_NUM || B.ALIAS, 0)
                                                                        THEN '1'
                                                                    ELSE '0' END AS FLAG, --比较值，若mbt该标识下的子段记录有增加、减少、变化，即发送了变化，为1
                                                                A.B_ID_TYPE,
                                                                A.B_ID_NUM,
                                                                A.B_INF_SURC_CODE
                                                         FROM MBT_110_C A
                                                                  LEFT JOIN
                                                              (SELECT A.*
                                                               FROM MBT_110_C_RPT A,
                                                                    (SELECT *
                                                                     FROM (SELECT ROW_NUMBER()
                                                                                          OVER (PARTITION BY B_ID_TYPE, B_ID_NUM, B_INF_SURC_CODE ORDER BY B_RPT_DATE DESC) RN,
                                                                                  T.*
                                                                           FROM MBT_110_RPT T
                                                                           WHERE DATA_STATUS = '27')
                                                                     WHERE RN = 1
                                                                    ) B
                                                               WHERE A.PDATA_ID = B.DATA_ID) B
                                                              ON A.B_ID_TYPE = B.B_ID_TYPE AND
                                                                 A.B_ID_NUM = B.B_ID_NUM AND
                                                                 A.B_INF_SURC_CODE = B.B_INF_SURC_CODE
                                                        )
                                                   WHERE FLAG > 0
                                                   GROUP BY B_ID_TYPE, B_ID_NUM, B_INF_SURC_CODE
                               ) CC
                                                  ON A.B_ID_TYPE = CC.B_ID_TYPE AND A.B_ID_NUM = CC.B_ID_NUM AND
                                                     A.B_INF_SURC_CODE = CC.B_INF_SURC_CODE
                               WHERE A.DATA_STATUS = '00'
                                 AND A.DATA_SOURCE = '2'
                        ) T2
                        ON (T1.DATA_ID = T2.DATA_ID)
                        WHEN MATCHED THEN
                            UPDATE
                            SET T1.B_RPT_DATE_CODE = T2.B_RPT_DATE_CODE,
                                T1.CHECK_FLAG      = 'N';
                    END;

                    DSC := '##修改子表[MBT_110_C] IS_RPT##';
                    DBMS_OUTPUT.PUT_LINE(DSC);
                    BEGIN
                        SP_ODS_MBT_CAL_RPT_PROC3('MBT_110_C',
                                                 '1 = 1',
                                                 C_ARRAYLIST,
                                                 'B_ID_TYPE,B_ID_NUM,B_INF_SURC_CODE',
                                                 10,
                                                 'MBT_110',
                                                 NULL);
                    END;

                    DSC := '##更新IS_RPT##';
                    DBMS_OUTPUT.PUT_LINE(DSC);
                    BEGIN
                        SP_ODS_MBT_CAL_RPT_PROC2('MBT_110',
                                                 'T1.B_INF_REC_TYPE = T3.INF_REC_TYPE
                                     AND T3.ACCT_TYPE IS NULL
                                     AND T1.B_RPT_DATE_CODE = T3.RPT_DATE_CODE',
                                                 NULL);
                    END;

                    DSC := '##ODS主表数据插入历史表，然后删除ODS表##';
                    DBMS_OUTPUT.PUT_LINE(DSC);
                    BEGIN
                        INSERT INTO ODS_MBT_110_HIS
                        SELECT *
                        FROM ODS_MBT_110;
                        DELETE FROM ODS_MBT_110;
                    END;

                    DSC := '##ODS子表数据插入历史表，然后删除ODS表##';
                    DBMS_OUTPUT.PUT_LINE(DSC);
                    BEGIN
                        INSERT INTO ODS_MBT_110_C_HIS
                        SELECT *
                        FROM ODS_MBT_110_C;
                        DELETE FROM ODS_MBT_110_C;
                    END;

                    DSC := '##将报告时点代码是88或99的直接审核通过并将校验修改为校验通过##';
                    DBMS_OUTPUT.PUT_LINE(DSC);
                    BEGIN
                        --update by wuxy
                        UPDATE mbt_110
                        SET DATA_STATUS = '21',
                            CHECK_FLAG  = 'Y'
                        WHERE DATA_CRT_DATE <= CURRENTDATE
                          AND (B_RPT_DATE_CODE = '88' OR B_RPT_DATE_CODE = '99');
                        --update end
                        --将报告时点代码非88或99的校验修改为未交验 ZHAO
                        /*UPDATE mbt_110
                        SET CHECK_FLAG = 'N'
                        WHERE DATA_CRT_DATE <= CURRENTDATE
                          AND (B_RPT_DATE_CODE NOT IN ('99', '88'))
                          AND DATA_STATUS = '00';*/
                        --update end
                    END;
                END IF;
            END;
        END IF;
        COMMIT;

    EXCEPTION
        WHEN
            OTHERS THEN
            ERRCODE := SQLCODE;
            ERRMSG := SUBSTR(SQLERRM, 1, 200);
            SP_MBT_LOG
                (1,
                 'SP_ODS_MBT_110',
                 'ERROR11001',
                 'SP_ODS_MBT_110失败：' || ERRMSG,
                 ERRCODE,
                 ERRMSG);
            ROLLBACK;
            RETURN;
    END;
    ENDTIME := TO_CHAR(SYSDATE, 'YYYY-MM-DD HH24:MI:SS');
    DSC := '##=======MBT110存储过程==结束' || ENDTIME || '========##';
    DBMS_OUTPUT.PUT_LINE(DSC);
END;
/
