CREATE OR REPLACE PROCEDURE "SP_ODS_MBT_230"(ERRCODE IN OUT VARCHAR,
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
    --D_ARRAYLIST   VARCHAR2(400);
    E_ARRAYLIST   VARCHAR2(400);
    F_ARRAYLIST   VARCHAR2(400);
    IS_RPT_OUT    VARCHAR2(64);
    V_T_DATE      VARCHAR2(8);
    ODS_COUNT     INT;
    B_UPDATE_FLAG CHAR(1);
    C_UPDATE_FLAG CHAR(1);
    D_UPDATE_FLAG CHAR(1);

BEGIN
    --B_ARRAYLIST := 'B_NAME,B_ID_TYPE,B_ID_NUM,B_CUST_NO,B_MNGMT_ORG_CODE';
    --C_ARRAYLIST := 'C_BUSI_LINES,C_OPEN_DATE,C_ACCT_CRED_LINE,C_CY,C_DUE_DATE,C_GUAR_MODE,C_OTH_REPY_GUAR_WAY,C_SEC_DEP,C_CTRCT_TXT_CD';
    --D_ARRAYLIST := 'D_ACCT_STATUS,D_LOAN_AMT,D_REPAY_PRD,D_FIVE_CATE,D_FIVE_CATE_ADJ_DATE,D_RI_EX,D_COMP_ADV_FLAG,D_CLOSE_DATE';
    E_ARRAYLIST := 'INFO_ID_TYPE,ARLP_NAME,ARLP_TYPE,ARLP_AMT,WARTY_SIGN,MAX_GUAR_MCC';
    F_ARRAYLIST := 'CCC';

    CURRENTDATE := TO_CHAR(SYSDATE, 'YYYYMMDD');
    CURRENTTIME := TO_CHAR(SYSDATE, 'YYYYMMDDHH24MISS');
    BEGINTIME := TO_CHAR(SYSDATE, 'YYYY-MM-DD HH24:MI:SS');

    DSC := '##=======MBT230�洢����==��ʼ' || BEGINTIME || '========##';
    DBMS_OUTPUT.PUT_LINE(DSC);
    BEGIN
        DSC := '##��ʼ��##';
        DBMS_OUTPUT.PUT_LINE(DSC);
        BEGIN
            V_T_DATE := GET_T_DAY();
        END;
        /**
          �ѱ��͹�20-�˻��رյ����ݲ��ɱ���
         */

        IF TABLE_KEY IS NOT NULL THEN
            --�����ҳ���������� ����ʱ��
            BEGIN
                DSC := '##����ʱ�㡢�仯��' || TABLE_KEY || '##';
                DBMS_OUTPUT.PUT_LINE(DSC);
                BEGIN
                    SELECT DISTINCT CASE
                                        --��������=tday ��û�ϱ������ڱ�������Ϣ�Ρ��˻�״̬�� <> '2-�ر�'
                                        WHEN --A.C_OPEN_DATE = V_DATE AND
                                                B.DATA_ID IS NULL AND
                                                A.D_ACCT_STATUS <> '2' THEN
                                            '10'
                                        --�ڱ�������Ϣ�Ρ��˻�״̬�� = '2-�ر�'��δ�ϱ���20-�˻��ر����й��ϱ���¼
                                        WHEN A.D_ACCT_STATUS = '2' AND B.DATA_ID IS NOT NULL THEN
                                            '20'
                                        --�ڱ������ڱ����仯���ڱ��������һ���ϱ�����з����仯��δ�ϱ���20-�˻��ر����й��ϱ���¼
                                        WHEN B.DATA_ID IS NOT NULL AND
                                             NVL(A.D_LOAN_AMT || A.D_REPAY_PRD, 0) <>
                                             NVL(B.D_LOAN_AMT || B.D_REPAY_PRD, 0)
                                            THEN
                                            '30'
                                        --�ڱ�������Ϣ�Ρ��弶���࡯ ���������һ���ϱ�����з����仯��δ�ϱ���20-�˻��ر����й��ϱ���¼
                                        WHEN B.DATA_ID IS NOT NULL AND NVL(A.D_FIVE_CATE, 0) <> NVL(B.D_FIVE_CATE, 0)
                                            THEN
                                            '40'
                                        --������Ϣ�λ���ػ�����������Ϣ�λ�֣��ʣ�Ѻ����Ϣ����Ϣ���������һ���ϱ�����з����仯��δ�ϱ���20-�˻��ر����й��ϱ���¼
                                        WHEN B.DATA_ID IS NOT NULL AND
                                             NVL(A.C_BUSI_LINES || A.C_BUSI_DTIL_LINES || A.C_OPEN_DATE ||
                                                 A.C_ACCT_CRED_LINE || A.C_CY || A.C_DUE_DATE || A.C_GUAR_MODE ||
                                                 A.C_OTH_REPY_GUAR_WAY || FLOOR(A.C_SEC_DEP) || A.C_CTRCT_TXT_CD, 0) <>
                                             NVL(B.C_BUSI_LINES || B.C_BUSI_DTIL_LINES || B.C_OPEN_DATE ||
                                                 B.C_ACCT_CRED_LINE || B.C_CY || B.C_DUE_DATE ||
                                                 B.C_GUAR_MODE || B.C_OTH_REPY_GUAR_WAY || FLOOR(B.C_SEC_DEP) ||
                                                 B.C_CTRCT_TXT_CD, 0)
                                            OR C.FLAG = 1 OR D.FLAG = 1
                                            THEN
                                            '50'
                                        ELSE
                                            '99'
                                        END,
                                    --B��
                                    CASE
                                        WHEN TRIM(A.B_NAME || A.B_ID_TYPE || A.B_ID_NUM || A.B_CUST_NO ||
                                                  A.B_MNGMT_ORG_CODE
                                                 ) IS NOT NULL THEN
                                            CASE
                                                WHEN B.DATA_ID IS NOT NULL AND
                                                     nvl(B.B_NAME || B.B_ID_TYPE || B.B_ID_NUM || B.B_CUST_NO ||
                                                         B.B_MNGMT_ORG_CODE, 0) <>
                                                     nvl(A.B_NAME || A.B_ID_TYPE || A.B_ID_NUM || A.B_CUST_NO ||
                                                         A.B_MNGMT_ORG_CODE, 0)
                                                    THEN
                                                    '1'
                                                ELSE
                                                    '0'
                                                END
                                        ELSE
                                            '0'
                                        END,
                                    --C��
                                    CASE
                                        WHEN TRIM(A.C_BUSI_LINES || A.C_BUSI_DTIL_LINES || A.C_OPEN_DATE ||
                                                  A.C_ACCT_CRED_LINE || A.C_CY || A.C_DUE_DATE || A.C_GUAR_MODE ||
                                                  A.C_OTH_REPY_GUAR_WAY || FLOOR(A.C_SEC_DEP) ||
                                                  A.C_CTRCT_TXT_CD) IS NOT NULL THEN
                                            CASE
                                                WHEN B.DATA_ID IS NOT NULL AND
                                                     NVL(A.C_BUSI_LINES || A.C_BUSI_DTIL_LINES || A.C_OPEN_DATE ||
                                                         A.C_ACCT_CRED_LINE || A.C_CY || A.C_DUE_DATE ||
                                                         A.C_GUAR_MODE ||
                                                         A.C_OTH_REPY_GUAR_WAY || FLOOR(A.C_SEC_DEP) ||
                                                         A.C_CTRCT_TXT_CD,
                                                         0) <>
                                                     NVL(B.C_BUSI_LINES || B.C_BUSI_DTIL_LINES || B.C_OPEN_DATE ||
                                                         B.C_ACCT_CRED_LINE || B.C_CY || B.C_DUE_DATE ||
                                                         B.C_GUAR_MODE || B.C_OTH_REPY_GUAR_WAY || FLOOR(B.C_SEC_DEP) ||
                                                         B.C_CTRCT_TXT_CD, 0)
                                                    THEN
                                                    '1'
                                                ELSE
                                                    '0'
                                                END
                                        ELSE
                                            '0'
                                        END,
                                    --D��
                                    CASE
                                        WHEN TRIM(A.D_ACCT_STATUS || A.D_LOAN_AMT || A.D_REPAY_PRD || A.D_FIVE_CATE ||
                                                  A.D_FIVE_CATE_ADJ_DATE || A.D_RI_EX || A.D_COMP_ADV_FLAG ||
                                                  A.D_CLOSE_DATE) IS NOT NULL THEN
                                            CASE
                                                WHEN B.DATA_ID IS NOT NULL AND
                                                     NVL(A.D_ACCT_STATUS || A.D_LOAN_AMT || A.D_REPAY_PRD ||
                                                         A.D_FIVE_CATE || A.D_FIVE_CATE_ADJ_DATE || A.D_RI_EX ||
                                                         A.D_COMP_ADV_FLAG || A.D_CLOSE_DATE,
                                                         0) <>
                                                     NVL(B.D_ACCT_STATUS || B.D_LOAN_AMT || B.D_REPAY_PRD ||
                                                         B.D_FIVE_CATE || B.D_FIVE_CATE_ADJ_DATE || B.D_RI_EX ||
                                                         B.D_COMP_ADV_FLAG || B.D_CLOSE_DATE, 0)
                                                    THEN
                                                    '1'
                                                ELSE
                                                    '0'
                                                END
                                        ELSE
                                            '0'
                                        END
                    INTO RPT_DATE_CODE_OUT, B_UPDATE_FLAG, C_UPDATE_FLAG, D_UPDATE_FLAG
                    FROM MBT_230 A
                             LEFT JOIN (SELECT *
                                        FROM (SELECT ROW_NUMBER() OVER (PARTITION BY B_ACCT_CODE ORDER BY B_RPT_DATE DESC) RN,
                                                     T.*
                                              FROM MBT_230_RPT T
                                              WHERE DATA_STATUS = '27')
                                        WHERE RN = 1) B
                                       ON A.B_ACCT_CODE = B.B_ACCT_CODE
                             LEFT JOIN (SELECT '1' AS FLAG, B_ACCT_CODE
                                        FROM (
                                                 SELECT CASE
                                                            WHEN nvl(A.INFO_ID_TYPE || A.ARLP_NAME ||
                                                                     A.ARLP_CERT_TYPE ||
                                                                     A.ARLP_CERT_NUM || A.ARLP_TYPE ||
                                                                     A.ARLP_AMT || A.WARTY_SIGN || A.MAX_GUAR_MCC, 0) <>
                                                                 nvl(B.INFO_ID_TYPE || B.ARLP_NAME ||
                                                                     B.ARLP_CERT_TYPE ||
                                                                     B.ARLP_CERT_NUM || B.ARLP_TYPE ||
                                                                     B.ARLP_AMT || B.WARTY_SIGN || B.MAX_GUAR_MCC, 0)
                                                                THEN '1'
                                                            ELSE '0' END AS FLAG, --�Ƚ�ֵ����mbt�ñ�ʶ�µ��Ӷμ�¼�����ӡ����١��仯���������˱仯��Ϊ1
                                                        A.B_ACCT_CODE
                                                 FROM MBT_230_E A
                                                          LEFT JOIN
                                                      (SELECT A.*
                                                       FROM MBT_230_E_RPT A,
                                                            (SELECT *
                                                             FROM (SELECT ROW_NUMBER()
                                                                                  OVER (PARTITION BY B_ACCT_CODE ORDER BY B_RPT_DATE DESC) RN,
                                                                          T.*
                                                                   FROM MBT_230_RPT T
                                                                   WHERE B_RPT_DATE_CODE <> '20'
                                                                     AND DATA_STATUS = '27')
                                                             WHERE RN = 1
                                                            ) B
                                                       WHERE A.PDATA_ID = B.DATA_ID) B
                                                      ON A.B_ACCT_CODE = B.B_ACCT_CODE
                                             )
                                        WHERE FLAG > 0
                                        GROUP BY B_ACCT_CODE
                    ) C
                                       ON A.B_ACCT_CODE = C.B_ACCT_CODE
                             LEFT JOIN (SELECT '1' AS FLAG, B_ACCT_CODE
                                        FROM (
                                                 SELECT CASE
                                                            WHEN nvl(A.CCC, 0) <> nvl(B.CCC, 0) THEN '1'
                                                            ELSE '0' END AS FLAG, --�Ƚ�ֵ����mbt�ñ�ʶ�µ��Ӷμ�¼�����ӡ����١��仯���������˱仯��Ϊ1
                                                        A.B_ACCT_CODE
                                                 FROM MBT_230_F A
                                                          LEFT JOIN
                                                      (SELECT A.*
                                                       FROM MBT_230_F_RPT A,
                                                            (SELECT *
                                                             FROM (SELECT ROW_NUMBER()
                                                                                  OVER (PARTITION BY B_ACCT_CODE ORDER BY B_RPT_DATE DESC) RN,
                                                                          T.*
                                                                   FROM MBT_230_RPT T
                                                                   WHERE B_RPT_DATE_CODE <> '20'
                                                                     AND DATA_STATUS = '27')
                                                             WHERE RN = 1
                                                            ) B
                                                       WHERE A.PDATA_ID = B.DATA_ID) B
                                                      ON A.B_ACCT_CODE = B.B_ACCT_CODE
                                             )
                                        WHERE FLAG > 0
                                        GROUP BY B_ACCT_CODE
                    ) D
                                       ON A.B_ACCT_CODE = D.B_ACCT_CODE
                    WHERE NOT
                        EXISTS(--�����˻��رյļ�¼
                                SELECT 1
                                FROM MBT_230_RPT B
                                WHERE A.B_ACCT_CODE = B.B_ACCT_CODE
                                  AND B.DATA_STATUS = '27'
                                  AND B.B_RPT_DATE_CODE = '20')
                      AND A.DATA_ID = TABLE_KEY;

                    SELECT IS_RPT INTO IS_RPT_OUT FROM MBT_210 WHERE DATA_ID = TABLE_KEY;
                    UPDATE MBT_210
                    SET IS_RPT = GET_ISRPT_CHANGE(IS_RPT_OUT,
                                                  (B_UPDATE_FLAG || C_UPDATE_FLAG || D_UPDATE_FLAG || '|'))
                    WHERE DATA_ID = TABLE_KEY;
                END;

                DSC := '##�޸��ӱ�[MBT_230_E] IS_RPT##';
                DBMS_OUTPUT.PUT_LINE(DSC);
                BEGIN
                    SP_ODS_MBT_CAL_RPT_PROC3('MBT_230_E',
                                             '1 == 1',
                                             E_ARRAYLIST,
                                             'B_ACCT_CODE',
                                             5,
                                             'MBT_230',
                                             TABLE_KEY);
                END;

                DSC := '##�޸��ӱ�[MBT_230_F] IS_RPT##';
                DBMS_OUTPUT.PUT_LINE(DSC);
                BEGIN
                    SP_ODS_MBT_CAL_RPT_PROC3('MBT_230_F',
                                             '1 == 1',
                                             F_ARRAYLIST,
                                             'B_ACCT_CODE',
                                             6,
                                             'MBT_230',
                                             TABLE_KEY);
                END;

                DSC := '##�������ü�������ϱ���ʶ' || TABLE_KEY || '##';
                DBMS_OUTPUT.PUT_LINE(DSC);
                BEGIN
                    SP_ODS_MBT_CAL_RPT_PROC2('MBT_230',
                                             'T1.B_INF_REC_TYPE = T3.INF_REC_TYPE
                                     AND T3.B_ACCT_TYPE IS NULL
                                     AND T1.B_RPT_DATE_CODE = T3.RPT_DATE_CODE',
                                             TABLE_KEY);
                END;
            END;
        ELSE
            DSC := '##ods���ݴ���##';
            DBMS_OUTPUT.PUT_LINE(DSC);
            BEGIN
                SELECT COUNT(*) INTO ODS_COUNT FROM ODS_MBT_230;
                IF ODS_COUNT = 0 THEN
                    DSC := '##odsû������##';
                    DBMS_OUTPUT.PUT_LINE(DSC);
                ELSE
                    DSC := '##����mbt����##';
                    DBMS_OUTPUT.PUT_LINE(DSC);
                    BEGIN
                        EXECUTE IMMEDIATE 'TRUNCATE TABLE MBT_230_TODAY_BAK';
                        INSERT INTO MBT_230_TODAY_BAK
                        SELECT *
                        FROM MBT_230;

                        EXECUTE IMMEDIATE 'TRUNCATE TABLE MBT_230_E_TODAY_BAK';
                        INSERT INTO MBT_230_E_TODAY_BAK
                        SELECT *
                        FROM MBT_230_E;

                        EXECUTE IMMEDIATE 'TRUNCATE TABLE MBT_230_F_TODAY_BAK';
                        INSERT INTO MBT_230_F_TODAY_BAK
                        SELECT *
                        FROM MBT_230_F;
                    END;

                    DSC := '##���������������޸ģ������ϱ���ʶ##';
                    DBMS_OUTPUT.PUT_LINE(DSC);
                    BEGIN
                        MERGE INTO MBT_230 T1
                        USING (SELECT A.*,
                                      --ods��������mbt��û��
                                      --������ϱ���ʶ,����ֵ��ʶΪ1��ûֵ��ʶΪ0
                                      --B��
                                      CASE
                                          WHEN D.DATA_ID IS NULL AND
                                               TRIM(A.B_NAME || A.B_ID_TYPE || A.B_ID_NUM || A.B_MNGMT_ORG_CODE) IS NULL
                                              THEN
                                              '0'
                                          ELSE
                                              '1'
                                          END                                             AS N_B_UPDATE_FALG,
                                      --C��
                                      CASE
                                          WHEN D.DATA_ID IS NULL AND
                                               TRIM(A.C_BUSI_LINES || A.C_BUSI_DTIL_LINES || A.C_OPEN_DATE ||
                                                    A.C_ACCT_CRED_LINE || A.C_CY || A.C_DUE_DATE || A.C_GUAR_MODE ||
                                                    A.C_OTH_REPY_GUAR_WAY || FLOOR(A.C_SEC_DEP) ||
                                                    A.C_CTRCT_TXT_CD) IS NULL
                                              THEN
                                              '0'
                                          ELSE
                                              '1'
                                          END                                             AS N_C_UPDATE_FALG,
                                      --D��
                                      CASE
                                          WHEN D.DATA_ID IS NULL AND
                                               TRIM(A.D_ACCT_STATUS || A.D_LOAN_AMT || A.D_REPAY_PRD || A.D_FIVE_CATE ||
                                                    A.D_FIVE_CATE_ADJ_DATE || A.D_RI_EX || A.D_COMP_ADV_FLAG ||
                                                    A.D_CLOSE_DATE) IS NULL
                                              THEN
                                              '0'
                                          ELSE
                                              '1'
                                          END                                             AS N_D_UPDATE_FALG,
                                      --��ʼ������
                                      CASE WHEN D.DATA_ID IS NULL THEN E.SECTION_CODE END AS SECTION_CODE,
                                      --ods��������mbt����
                                      --������ϱ���ʶ
                                      --B��
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
                                      --C��
                                      CASE
                                          WHEN NVL(B.C_BUSI_LINES || B.C_BUSI_DTIL_LINES || B.C_OPEN_DATE ||
                                                   B.C_ACCT_CRED_LINE || B.C_CY || B.C_DUE_DATE ||
                                                   B.C_GUAR_MODE || B.C_OTH_REPY_GUAR_WAY || FLOOR(B.C_SEC_DEP) ||
                                                   B.C_CTRCT_TXT_CD, 0) <>
                                               NVL(A.C_BUSI_LINES || A.C_BUSI_DTIL_LINES || A.C_OPEN_DATE ||
                                                   A.C_ACCT_CRED_LINE || A.C_CY || A.C_DUE_DATE ||
                                                   A.C_GUAR_MODE ||
                                                   A.C_OTH_REPY_GUAR_WAY || FLOOR(A.C_SEC_DEP) ||
                                                   A.C_CTRCT_TXT_CD,
                                                   0)
                                              THEN
                                              CASE
                                                  WHEN nvl(C.C_BUSI_LINES || C.C_BUSI_DTIL_LINES || C.C_OPEN_DATE ||
                                                           C.C_ACCT_CRED_LINE || C.C_CY || C.C_DUE_DATE ||
                                                           C.C_GUAR_MODE || C.C_OTH_REPY_GUAR_WAY ||
                                                           FLOOR(C.C_SEC_DEP) || C.C_CTRCT_TXT_CD, 0) <>
                                                       nvl(A.C_BUSI_LINES || A.C_BUSI_DTIL_LINES || A.C_OPEN_DATE ||
                                                           A.C_ACCT_CRED_LINE || A.C_CY || A.C_DUE_DATE ||
                                                           A.C_GUAR_MODE ||
                                                           A.C_OTH_REPY_GUAR_WAY || FLOOR(A.C_SEC_DEP) ||
                                                           A.C_CTRCT_TXT_CD, 0)
                                                      THEN
                                                      '1'
                                                  ELSE
                                                      '0'
                                                  END
                                          ELSE
                                              '0'
                                          END                                             AS C_UPDATE_FLAG,
                                      --D��
                                      CASE
                                          WHEN NVL(B.D_ACCT_STATUS || B.D_LOAN_AMT || B.D_REPAY_PRD ||
                                                   B.D_FIVE_CATE || B.D_FIVE_CATE_ADJ_DATE || B.D_RI_EX ||
                                                   B.D_COMP_ADV_FLAG || B.D_CLOSE_DATE, 0) <>
                                               NVL(A.D_ACCT_STATUS || A.D_LOAN_AMT || A.D_REPAY_PRD ||
                                                   A.D_FIVE_CATE || A.D_FIVE_CATE_ADJ_DATE || A.D_RI_EX ||
                                                   A.D_COMP_ADV_FLAG || A.D_CLOSE_DATE, 0)
                                              THEN
                                              CASE
                                                  WHEN NVL(C.D_ACCT_STATUS || C.D_LOAN_AMT || C.D_REPAY_PRD ||
                                                           C.D_FIVE_CATE || C.D_FIVE_CATE_ADJ_DATE || C.D_RI_EX ||
                                                           C.D_COMP_ADV_FLAG || C.D_CLOSE_DATE, 0) <>
                                                       NVL(A.D_ACCT_STATUS || A.D_LOAN_AMT || A.D_REPAY_PRD ||
                                                           A.D_FIVE_CATE || A.D_FIVE_CATE_ADJ_DATE || A.D_RI_EX ||
                                                           A.D_COMP_ADV_FLAG || A.D_CLOSE_DATE,
                                                           0)
                                                      THEN
                                                      '1'
                                                  ELSE
                                                      '0'
                                                  END
                                          ELSE
                                              '0'
                                          END                                             AS D_UPDATE_FLAG
                               FROM ODS_MBT_230 A
                                        LEFT JOIN --��ods�ϴ����ݱȽ�
                                   (SELECT *
                                    FROM (
                                             SELECT ROW_NUMBER()
                                                            OVER (PARTITION BY B_ACCT_CODE ORDER BY DATA_LOAD_TIME DESC) RN,
                                                    T.*
                                             FROM ODS_MBT_230_HIS T
                                             ORDER BY DATA_LOAD_TIME DESC
                                         )
                                    WHERE RN = 1
                                   ) B
                                                  ON A.B_ACCT_CODE = B.B_ACCT_CODE
                                        LEFT JOIN --�������Ƿ��ѱ��͹�
                                   (SELECT *
                                    FROM (SELECT ROW_NUMBER()
                                                         OVER (PARTITION BY B_ACCT_CODE ORDER BY T.B_RPT_DATE DESC) RN,
                                                 T.*
                                          FROM MBT_230_RPT T
                                          WHERE DATA_STATUS = '27')
                                    WHERE RN = 1
                                   ) C
                                                  ON A.B_ACCT_CODE = C.B_ACCT_CODE
                                        LEFT JOIN --��Ҫ����mbt�������û������ĺ�ods��һ��������
                                   MBT_230 D
                                                  ON A.B_ACCT_CODE = D.B_ACCT_CODE
                                        LEFT JOIN --�����������Ϊ������ֵ
                                   MBT_SECTION_CODE E
                                                  ON D.ORG_ID = E.ORG_ID
                        ) T2
                        ON (T1.B_ACCT_CODE = T2.B_ACCT_CODE)
                        WHEN MATCHED THEN
                            UPDATE
                            SET T1.B_NAME               = CASE
                                                              WHEN T2.B_UPDATE_FLAG = '1' THEN T2.B_NAME
                                                              WHEN T2.B_UPDATE_FLAG = '0' THEN T1.B_NAME END,
                                T1.B_ID_TYPE            = CASE
                                                              WHEN T2.B_UPDATE_FLAG = '1' THEN T2.B_ID_TYPE
                                                              WHEN T2.B_UPDATE_FLAG = '0' THEN T1.B_ID_TYPE END,
                                T1.B_ID_NUM             = CASE
                                                              WHEN T2.B_UPDATE_FLAG = '1' THEN T2.B_ID_NUM
                                                              WHEN T2.B_UPDATE_FLAG = '0' THEN T1.B_ID_NUM END,
                                T1.B_CUST_NO            = CASE
                                                              WHEN T2.B_UPDATE_FLAG = '1' THEN T2.B_CUST_NO
                                                              WHEN T2.B_UPDATE_FLAG = '0' THEN T1.B_CUST_NO END,
                                T1.B_MNGMT_ORG_CODE     = CASE
                                                              WHEN T2.B_UPDATE_FLAG = '1' THEN T2.B_MNGMT_ORG_CODE
                                                              WHEN T2.B_UPDATE_FLAG = '0' THEN T1.B_MNGMT_ORG_CODE END,
                                T1.C_BUSI_LINES         = CASE
                                                              WHEN T2.C_UPDATE_FLAG = '1' THEN T2.C_BUSI_LINES
                                                              WHEN T2.C_UPDATE_FLAG = '0' THEN T1.C_BUSI_LINES END,
                                T1.C_BUSI_DTIL_LINES    = CASE
                                                              WHEN T2.C_UPDATE_FLAG = '1' THEN T2.C_BUSI_DTIL_LINES
                                                              WHEN T2.C_UPDATE_FLAG = '0' THEN T1.C_BUSI_DTIL_LINES END,
                                T1.C_OPEN_DATE          = CASE
                                                              WHEN T2.C_UPDATE_FLAG = '1' THEN T2.C_OPEN_DATE
                                                              WHEN T2.C_UPDATE_FLAG = '0' THEN T1.C_OPEN_DATE END,
                                T1.C_ACCT_CRED_LINE     = CASE
                                                              WHEN T2.C_UPDATE_FLAG = '1' THEN T2.C_ACCT_CRED_LINE
                                                              WHEN T2.C_UPDATE_FLAG = '0' THEN T1.C_ACCT_CRED_LINE END,
                                T1.C_CY                 = CASE
                                                              WHEN T2.C_UPDATE_FLAG = '1' THEN T2.C_CY
                                                              WHEN T2.C_UPDATE_FLAG = '0' THEN T1.C_CY END,
                                T1.C_DUE_DATE           = CASE
                                                              WHEN T2.C_UPDATE_FLAG = '1' THEN T2.C_DUE_DATE
                                                              WHEN T2.C_UPDATE_FLAG = '0' THEN T1.C_DUE_DATE END,
                                T1.C_GUAR_MODE          = CASE
                                                              WHEN T2.C_UPDATE_FLAG = '1' THEN T2.C_GUAR_MODE
                                                              WHEN T2.C_UPDATE_FLAG = '0' THEN T1.C_GUAR_MODE END,
                                T1.C_OTH_REPY_GUAR_WAY  = CASE
                                                              WHEN T2.C_UPDATE_FLAG = '1' THEN T2.C_OTH_REPY_GUAR_WAY
                                                              WHEN T2.C_UPDATE_FLAG = '0'
                                                                  THEN T1.C_OTH_REPY_GUAR_WAY END,
                                T1.C_SEC_DEP            = CASE
                                                              WHEN T2.C_UPDATE_FLAG = '1' THEN FLOOR(T2.C_SEC_DEP)
                                                              WHEN T2.C_UPDATE_FLAG = '0' THEN T1.C_SEC_DEP END,
                                T1.C_CTRCT_TXT_CD       = CASE
                                                              WHEN T2.C_UPDATE_FLAG = '1' THEN T2.C_CTRCT_TXT_CD
                                                              WHEN T2.C_UPDATE_FLAG = '0' THEN T1.C_CTRCT_TXT_CD END,
                                T1.D_ACCT_STATUS        = CASE
                                                              WHEN T2.D_UPDATE_FLAG = '1' THEN T2.D_ACCT_STATUS
                                                              WHEN T2.D_UPDATE_FLAG = '0' THEN T1.D_ACCT_STATUS END,
                                T1.D_LOAN_AMT           = CASE
                                                              WHEN T2.D_UPDATE_FLAG = '1' THEN T2.D_LOAN_AMT
                                                              WHEN T2.D_UPDATE_FLAG = '0' THEN T1.D_LOAN_AMT END,
                                T1.D_REPAY_PRD          = CASE
                                                              WHEN T2.D_UPDATE_FLAG = '1' THEN T2.D_REPAY_PRD
                                                              WHEN T2.D_UPDATE_FLAG = '0' THEN T1.D_REPAY_PRD END,
                                T1.D_FIVE_CATE          = CASE
                                                              WHEN T2.D_UPDATE_FLAG = '1' THEN T2.D_FIVE_CATE
                                                              WHEN T2.D_UPDATE_FLAG = '0' THEN T1.D_FIVE_CATE END,
                                T1.D_FIVE_CATE_ADJ_DATE = CASE
                                                              WHEN T2.D_UPDATE_FLAG = '1' THEN T2.D_FIVE_CATE_ADJ_DATE
                                                              WHEN T2.D_UPDATE_FLAG = '0'
                                                                  THEN T1.D_FIVE_CATE_ADJ_DATE END,
                                T1.D_RI_EX              = CASE
                                                              WHEN T2.D_UPDATE_FLAG = '1' THEN T2.D_RI_EX
                                                              WHEN T2.D_UPDATE_FLAG = '0' THEN T1.D_RI_EX END,
                                T1.D_COMP_ADV_FLAG      = CASE
                                                              WHEN T2.D_UPDATE_FLAG = '1' THEN T2.D_COMP_ADV_FLAG
                                                              WHEN T2.D_UPDATE_FLAG = '0' THEN T1.D_COMP_ADV_FLAG END,
                                T1.D_CLOSE_DATE         = CASE
                                                              WHEN T2.D_UPDATE_FLAG = '1' THEN T2.D_CLOSE_DATE
                                                              WHEN T2.D_UPDATE_FLAG = '0' THEN T1.D_CLOSE_DATE END,
                                T1.IS_RPT               = GET_ISRPT_CHANGE(T1.IS_RPT,
                                                                           (T2.B_UPDATE_FLAG || T2.C_UPDATE_FLAG ||
                                                                            T2.D_UPDATE_FLAG ||
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
                             T1.GROUP_ID,
                             T1.INQ_ORG_ID,
                             T1.INQ_GROUP_ID,
                             T1.B_ACCT_TYPE,
                             T1.B_ACCT_CODE,
                             T1.B_RPT_DATE,
                             T1.B_RPT_DATE_CODE,
                             T1.B_INF_REC_TYPE,
                             T1.B_NAME,
                             T1.B_ID_TYPE,
                             T1.B_ID_NUM,
                             T1.B_MNGMT_ORG_CODE,
                             T1.B_CUST_NO,
                             T1.C_BUSI_LINES,
                             T1.C_BUSI_DTIL_LINES,
                             T1.C_OPEN_DATE,
                             T1.C_ACCT_CRED_LINE,
                             T1.C_CY,
                             T1.C_DUE_DATE,
                             T1.C_GUAR_MODE,
                             T1.C_OTH_REPY_GUAR_WAY,
                             T1.C_SEC_DEP,
                             T1.C_CTRCT_TXT_CD,
                             T1.D_ACCT_STATUS,
                             T1.D_LOAN_AMT,
                             T1.D_REPAY_PRD,
                             T1.D_FIVE_CATE,
                             T1.D_FIVE_CATE_ADJ_DATE,
                             T1.D_RI_EX,
                             T1.D_COMP_ADV_FLAG,
                             T1.D_CLOSE_DATE,
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
                                    T2.B_ACCT_TYPE,
                                    T2.B_ACCT_CODE,
                                    V_T_DATE,
                                    '10',
                                    '230',
                                    T2.B_NAME,
                                    T2.B_ID_TYPE,
                                    T2.B_ID_NUM,
                                    T2.B_MNGMT_ORG_CODE,
                                    T2.B_CUST_NO,
                                    T2.C_BUSI_LINES,
                                    T2.C_BUSI_DTIL_LINES,
                                    T2.C_OPEN_DATE,
                                    T2.C_ACCT_CRED_LINE,
                                    T2.C_CY,
                                    T2.C_DUE_DATE,
                                    T2.C_GUAR_MODE,
                                    T2.C_OTH_REPY_GUAR_WAY,
                                    FLOOR(T2.C_SEC_DEP),
                                    T2.C_CTRCT_TXT_CD,
                                    T2.D_ACCT_STATUS,
                                    T2.D_LOAN_AMT,
                                    T2.D_REPAY_PRD,
                                    T2.D_FIVE_CATE,
                                    T2.D_FIVE_CATE_ADJ_DATE,
                                    T2.D_RI_EX,
                                    T2.D_COMP_ADV_FLAG,
                                    T2.D_CLOSE_DATE,
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
                                    (N_B_UPDATE_FALG || N_C_UPDATE_FALG || N_D_UPDATE_FALG || '|'));
                        COMMIT;
                    END;

                    DSC := '##�ӱ�[MBT_230_E]�����������޸�##';
                    DBMS_OUTPUT.PUT_LINE(DSC);
                    BEGIN
                        -- ��ɾ������������� Ȼ�����²���
                        DELETE
                        FROM MBT_230_E
                        WHERE B_ACCT_CODE IN
                              (SELECT DISTINCT B_ACCT_CODE FROM ODS_MBT_230);
                        --��������
                        MERGE INTO MBT_230_E T1
                        USING (SELECT A.DATA_ID,
                                      A.DATA_DATE,
                                      A.INFO_ID_TYPE,
                                      A.ARLP_NAME,
                                      A.ARLP_CERT_TYPE,
                                      A.ARLP_CERT_NUM,
                                      A.ARLP_TYPE,
                                      A.ARLP_AMT,
                                      A.WARTY_SIGN,
                                      A.MAX_GUAR_MCC,
                                      A.RSV1,
                                      A.RSV2,
                                      A.RSV3,
                                      A.RSV4,
                                      A.RSV5,
                                      A.B_ACCT_CODE,
                                      B.DATA_ID AS PDATA_ID
                               FROM ODS_MBT_230_E A
                                        LEFT JOIN MBT_230 B
                                                  ON A.B_ACCT_CODE = B.B_ACCT_CODE) T2
                        ON (T1.ARLP_NAME = T2.ARLP_NAME
                            AND T1.ARLP_CERT_TYPE = T2.ARLP_CERT_TYPE
                            AND T1.ARLP_CERT_NUM = T2.ARLP_CERT_NUM
                            -- add
                            AND T1.INFO_ID_TYPE = T2.INFO_ID_TYPE
                            AND T1.ARLP_TYPE = T2.ARLP_TYPE
                            AND T1.WARTY_SIGN = T2.WARTY_SIGN
                            AND T1.MAX_GUAR_MCC = T2.MAX_GUAR_MCC
                            AND T1.B_ACCT_CODE = T2.B_ACCT_CODE
                            )
                        WHEN NOT MATCHED THEN
                            INSERT
                            (T1.DATA_ID,
                             T1.PDATA_ID,
                             T1.DATA_DATE,
                             T1.INFO_ID_TYPE,
                             T1.ARLP_NAME,
                             T1.ARLP_CERT_TYPE,
                             T1.ARLP_CERT_NUM,
                             T1.ARLP_TYPE,
                             T1.ARLP_AMT,
                             T1.WARTY_SIGN,
                             T1.MAX_GUAR_MCC,
                             T1.DATA_SOURE,
                             T1.DATA_CRT_USER,
                             T1.DATA_CRT_DATE,
                             T1.DATA_CRT_TIME,
                             T1.RSV1,
                             T1.RSV2,
                             T1.RSV3,
                             T1.RSV4,
                             T1.RSV5,
                             T1.B_ACCT_CODE)
                            VALUES (T2.DATA_ID,
                                    T2.PDATA_ID,
                                    T2.DATA_DATE,
                                    T2.INFO_ID_TYPE,
                                    T2.ARLP_NAME,
                                    T2.ARLP_CERT_TYPE,
                                    T2.ARLP_CERT_NUM,
                                    T2.ARLP_TYPE,
                                    T2.ARLP_AMT,
                                    T2.WARTY_SIGN,
                                    T2.MAX_GUAR_MCC,
                                    '2',
                                    'SYSTEM',
                                    CURRENTDATE,
                                    CURRENTTIME,
                                    T2.RSV1,
                                    T2.RSV2,
                                    T2.RSV3,
                                    T2.RSV4,
                                    'FLAG',
                                    T2.B_ACCT_CODE);
                    END;

                    DSC := '##������������״̬##';
                    DBMS_OUTPUT.PUT_LINE(DSC);
                    BEGIN
                        MERGE INTO MBT_230 T1
                        USING (SELECT DISTINCT B.DATA_ID
                               FROM MBT_230_E A
                                        LEFT JOIN MBT_230 B
                                                  ON A.PDATA_ID = B.DATA_ID
                               WHERE A.RSV5 = 'FLAG') T2
                        ON (T1.DATA_ID = T2.DATA_ID)
                        WHEN MATCHED THEN
                            UPDATE SET T1.DATA_STATUS = '00';
                    END;

                    DSC := '##�����ӱ�[MBT_230_E]����״̬##';
                    DBMS_OUTPUT.PUT_LINE(DSC);
                    BEGIN
                        UPDATE MBT_230_E SET RSV5 = NULL WHERE RSV5 = 'FLAG';
                    END;

                    DSC := '##�ӱ�[MBT_230_F]�����������޸�##';
                    DBMS_OUTPUT.PUT_LINE(DSC);
                    BEGIN
                        -- ��ɾ������������� Ȼ�����²���
                        DELETE
                        FROM MBT_230_F
                        WHERE B_ACCT_CODE IN
                              (SELECT DISTINCT B_ACCT_CODE FROM ODS_MBT_230);

                        MERGE INTO MBT_230_F T1
                        USING (SELECT A.DATA_ID,
                                      A.DATA_DATE,
                                      A.CCC,
                                      A.RSV1,
                                      A.RSV2,
                                      A.RSV3,
                                      A.RSV4,
                                      A.RSV5,
                                      A.B_ACCT_CODE,
                                      B.DATA_ID AS PDATA_ID
                               FROM ODS_MBT_230_F A
                                        LEFT JOIN MBT_230 B
                                                  ON A.B_ACCT_CODE = B.B_ACCT_CODE) T2
                        ON (T1.CCC = T2.CCC)
                        WHEN NOT MATCHED THEN
                            INSERT
                            (T1.DATA_ID,
                             T1.PDATA_ID,
                             T1.DATA_DATE,
                             T1.CCC,
                             T1.DATA_SOURE,
                             T1.DATA_CRT_USER,
                             T1.DATA_CRT_DATE,
                             T1.DATA_CRT_TIME,
                             T1.RSV1,
                             T1.RSV2,
                             T1.RSV3,
                             T1.RSV4,
                             T1.RSV5,
                             T1.B_ACCT_CODE)
                            VALUES (T2.DATA_ID,
                                    T2.PDATA_ID,
                                    T2.DATA_DATE,
                                    T2.CCC,
                                    '2',
                                    'SYSTEM',
                                    CURRENTDATE,
                                    CURRENTTIME,
                                    T2.RSV1,
                                    T2.RSV2,
                                    T2.RSV3,
                                    T2.RSV4,
                                    'FLAG',
                                    T2.B_ACCT_CODE);
                    END;

                    DSC := '##������������״̬##';
                    DBMS_OUTPUT.PUT_LINE(DSC);
                    BEGIN
                        MERGE INTO MBT_230 T1
                        USING (SELECT DISTINCT B.DATA_ID
                               FROM MBT_230_F A
                                        LEFT JOIN MBT_230 B
                                                  ON A.PDATA_ID = B.DATA_ID
                               WHERE A.RSV5 = 'FLAG') T2
                        ON (T1.DATA_ID = T2.DATA_ID)
                        WHEN MATCHED THEN
                            UPDATE SET T1.DATA_STATUS = '00';
                    END;

                    DSC := '##�����ӱ�[MBT_230_E]����״̬##';
                    DBMS_OUTPUT.PUT_LINE(DSC);
                    BEGIN
                        UPDATE MBT_230_F SET RSV5 = NULL WHERE RSV5 = 'FLAG';
                    END;

                    DSC := '##���±���ʱ��##';
                    DBMS_OUTPUT.PUT_LINE(DSC);
                    BEGIN
                        MERGE INTO MBT_230 T1
                        USING (
                            SELECT DISTINCT A.DATA_ID,
                                            CASE
                                                --��������=tday ��û�ϱ������ڱ�������Ϣ�Ρ��˻�״̬�� <> '2-�ر�'
                                                WHEN --A.C_OPEN_DATE = V_DATE AND
                                                        B.DATA_ID IS NULL AND
                                                        A.D_ACCT_STATUS <> '2' THEN
                                                    '10'
                                                --�ڱ�������Ϣ�Ρ��˻�״̬�� = '2-�ر�'��δ�ϱ���20-�˻��ر����й��ϱ���¼
                                                WHEN A.D_ACCT_STATUS = '2' AND B.DATA_ID IS NOT NULL THEN
                                                    '20'
                                                --�ڱ������ڱ����仯���ڱ��������һ���ϱ�����з����仯��δ�ϱ���20-�˻��ر����й��ϱ���¼
                                                WHEN B.DATA_ID IS NOT NULL AND
                                                     NVL(A.D_LOAN_AMT || A.D_REPAY_PRD, 0) <>
                                                     NVL(B.D_LOAN_AMT || B.D_REPAY_PRD, 0)
                                                    THEN
                                                    '30'
                                                --�ڱ�������Ϣ�Ρ��弶���࡯ ���������һ���ϱ�����з����仯��δ�ϱ���20-�˻��ر����й��ϱ���¼
                                                WHEN B.DATA_ID IS NOT NULL AND
                                                     NVL(A.D_FIVE_CATE, 0) <> NVL(B.D_FIVE_CATE, 0)
                                                    THEN
                                                    '40'
                                                --������Ϣ�λ���ػ�����������Ϣ�λ�֣��ʣ�Ѻ����Ϣ����Ϣ���������һ���ϱ�����з����仯��δ�ϱ���20-�˻��ر����й��ϱ���¼
                                                WHEN B.DATA_ID IS NOT NULL AND
                                                     NVL(A.C_BUSI_LINES || A.C_BUSI_DTIL_LINES || A.C_OPEN_DATE ||
                                                         A.C_ACCT_CRED_LINE || A.C_CY || A.C_DUE_DATE ||
                                                         A.C_GUAR_MODE ||
                                                         A.C_OTH_REPY_GUAR_WAY || FLOOR(A.C_SEC_DEP) ||
                                                         A.C_CTRCT_TXT_CD, 0) <>
                                                     NVL(B.C_BUSI_LINES || B.C_BUSI_DTIL_LINES || B.C_OPEN_DATE ||
                                                         B.C_ACCT_CRED_LINE || B.C_CY || B.C_DUE_DATE ||
                                                         B.C_GUAR_MODE || B.C_OTH_REPY_GUAR_WAY || FLOOR(B.C_SEC_DEP) ||
                                                         B.C_CTRCT_TXT_CD, 0)
                                                    OR C.FLAG = 1 OR D.FLAG = 1
                                                    THEN
                                                    '50'
                                                ELSE
                                                    '99'
                                                END AS NEW_B_RPT_DATE_CODE
                            FROM MBT_230 A
                                     LEFT JOIN (SELECT *
                                                FROM (SELECT ROW_NUMBER() OVER (PARTITION BY B_ACCT_CODE ORDER BY B_RPT_DATE DESC) RN,
                                                             T.*
                                                      FROM MBT_230_RPT T
                                                      WHERE DATA_STATUS = '27')
                                                WHERE RN = 1) B
                                               ON A.B_ACCT_CODE = B.B_ACCT_CODE
                                     LEFT JOIN (SELECT '1' AS FLAG, B_ACCT_CODE
                                                FROM (
                                                         SELECT CASE
                                                                    WHEN nvl(A.INFO_ID_TYPE || A.ARLP_NAME ||
                                                                             A.ARLP_CERT_TYPE ||
                                                                             A.ARLP_CERT_NUM || A.ARLP_TYPE ||
                                                                             A.ARLP_AMT || A.WARTY_SIGN ||
                                                                             A.MAX_GUAR_MCC, 0) <>
                                                                         nvl(B.INFO_ID_TYPE || B.ARLP_NAME ||
                                                                             B.ARLP_CERT_TYPE ||
                                                                             B.ARLP_CERT_NUM || B.ARLP_TYPE ||
                                                                             B.ARLP_AMT || B.WARTY_SIGN ||
                                                                             B.MAX_GUAR_MCC, 0)
                                                                        THEN '1'
                                                                    ELSE '0' END AS FLAG, --�Ƚ�ֵ����mbt�ñ�ʶ�µ��Ӷμ�¼�����ӡ����١��仯���������˱仯��Ϊ1
                                                                A.B_ACCT_CODE
                                                         FROM MBT_230_E A
                                                                  LEFT JOIN
                                                              (SELECT A.*
                                                               FROM MBT_230_E_RPT A,
                                                                    (SELECT *
                                                                     FROM (SELECT ROW_NUMBER()
                                                                                          OVER (PARTITION BY B_ACCT_CODE ORDER BY B_RPT_DATE DESC) RN,
                                                                                  T.*
                                                                           FROM MBT_230_RPT T
                                                                           WHERE B_RPT_DATE_CODE <> '20'
                                                                             AND DATA_STATUS = '27')
                                                                     WHERE RN = 1
                                                                    ) B
                                                               WHERE A.PDATA_ID = B.DATA_ID) B
                                                              ON A.B_ACCT_CODE = B.B_ACCT_CODE
                                                     )
                                                WHERE FLAG > 0
                                                GROUP BY B_ACCT_CODE
                            ) C
                                               ON A.B_ACCT_CODE = C.B_ACCT_CODE
                                     LEFT JOIN (SELECT '1' AS FLAG, B_ACCT_CODE
                                                FROM (
                                                         SELECT CASE
                                                                    WHEN nvl(A.CCC, 0) <> nvl(B.CCC, 0) THEN '1'
                                                                    ELSE '0' END AS FLAG, --�Ƚ�ֵ����mbt�ñ�ʶ�µ��Ӷμ�¼�����ӡ����١��仯���������˱仯��Ϊ1
                                                                A.B_ACCT_CODE
                                                         FROM MBT_230_F A
                                                                  LEFT JOIN
                                                              (SELECT A.*
                                                               FROM MBT_230_F_RPT A,
                                                                    (SELECT *
                                                                     FROM (SELECT ROW_NUMBER()
                                                                                          OVER (PARTITION BY B_ACCT_CODE ORDER BY B_RPT_DATE DESC) RN,
                                                                                  T.*
                                                                           FROM MBT_230_RPT T
                                                                           WHERE B_RPT_DATE_CODE <> '20'
                                                                             AND DATA_STATUS = '27')
                                                                     WHERE RN = 1
                                                                    ) B
                                                               WHERE A.PDATA_ID = B.DATA_ID) B
                                                              ON A.B_ACCT_CODE = B.B_ACCT_CODE
                                                     )
                                                WHERE FLAG > 0
                                                GROUP BY B_ACCT_CODE
                            ) D
                                               ON A.B_ACCT_CODE = D.B_ACCT_CODE
                            WHERE NOT
                                EXISTS(--�����˻��رյļ�¼
                                        SELECT 1
                                        FROM MBT_230_RPT B
                                        WHERE A.B_ACCT_CODE = B.B_ACCT_CODE
                                          AND B.DATA_STATUS = '27'
                                          AND B.B_RPT_DATE_CODE = '20')
                              AND A.DATA_STATUS = '00'
                              AND A.DATA_SOURCE = '2'
                        ) T2
                        ON (T1.DATA_ID = T2.DATA_ID)
                        WHEN MATCHED THEN
                            UPDATE SET T1.B_RPT_DATE_CODE = T2.NEW_B_RPT_DATE_CODE;
                    END;

                    DSC := '##�޸��ӱ�[MBT_230_E] IS_RPT##';
                    DBMS_OUTPUT.PUT_LINE(DSC);
                    BEGIN
                        SP_ODS_MBT_CAL_RPT_PROC3('MBT_230_E',
                                                 '1 == 1',
                                                 E_ARRAYLIST,
                                                 'B_ACCT_CODE',
                                                 5,
                                                 'MBT_230',
                                                 NULL);
                    END;

                    DSC := '##�޸��ӱ�[MBT_230_F] IS_RPT##';
                    DBMS_OUTPUT.PUT_LINE(DSC);
                    BEGIN
                        SP_ODS_MBT_CAL_RPT_PROC3('MBT_230_F',
                                                 '1 == 1',
                                                 F_ARRAYLIST,
                                                 'B_ACCT_CODE',
                                                 6,
                                                 'MBT_230',
                                                 NULL);
                    END;

                    DSC := '##�������ü�������ϱ���ʶ##';
                    DBMS_OUTPUT.PUT_LINE(DSC);
                    BEGIN
                        SP_ODS_MBT_CAL_RPT_PROC2('MBT_230',
                                                 'T1.B_INF_REC_TYPE = T3.INF_REC_TYPE
                                         AND T3.B_ACCT_TYPE IS NULL
                                         AND T1.B_RPT_DATE_CODE = T3.RPT_DATE_CODE',
                                                 NULL);
                    END;

                    DSC := '##ODS�������ݲ�����ʷ��Ȼ��ɾ��ODS��##';
                    DBMS_OUTPUT.PUT_LINE(DSC);
                    BEGIN
                        --���ݲ�����ʷ��Ȼ��ɾ��ODS��
                        INSERT INTO ODS_MBT_230_HIS
                        SELECT *
                        FROM ODS_MBT_230;
                        DELETE FROM ODS_MBT_230;
                        --���ݲ�����ʷ��Ȼ��ɾ��ODS��
                        INSERT INTO ODS_MBT_230_E_HIS
                        SELECT *
                        FROM ODS_MBT_230_E;
                        DELETE FROM ODS_MBT_230_E;
                        --���ݲ�����ʷ��Ȼ��ɾ��ODS��
                        INSERT INTO ODS_MBT_230_F_HIS
                        SELECT *
                        FROM ODS_MBT_230_F;
                        DELETE FROM ODS_MBT_230_F;
                    END;
                    DSC := '##������ʱ�������88��99��ֱ�����ͨ������У���޸�ΪУ��ͨ��##';
                    DBMS_OUTPUT.PUT_LINE(DSC);
                    BEGIN
                        UPDATE mbt_230
                        SET DATA_STATUS = '21',
                            CHECK_FLAG  = 'Y'
                        WHERE DATA_DATE <= CURRENTDATE
                          AND (B_RPT_DATE_CODE = '88' OR B_RPT_DATE_CODE = '99')
                          AND DATA_STATUS = '00';
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
                       'SP_ODS_MBT_230',
                       'ERROR23001',
                       'SP_ODS_MBT_230ʧ�ܣ�' || ERRMSG,
                       ERRCODE,
                       ERRMSG);
            ROLLBACK;
            RETURN;
    END;

    ENDTIME := TO_CHAR(SYSDATE, 'YYYY-MM-DD HH24:MI:SS');
    DSC := '##=======MBT230�洢����==����' || ENDTIME || '========##';
    DBMS_OUTPUT.PUT_LINE(DSC);
END;
/
