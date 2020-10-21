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

    DSC := '##=======MBT220�洢����==��ʼ' || BEGINTIME || '========##';
    DBMS_OUTPUT.PUT_LINE(DSC);
    BEGIN
        DSC := '##��ʼ��##';
        DBMS_OUTPUT.PUT_LINE(DSC);
        BEGIN
            V_T_DATE := GET_T_DAY(); -- �������� DATA_DATE
        END;
        /**
          �ѱ��͹�20-���ŵ���/ʧЧ�����ݲ��ɱ���
         */
        IF TABLE_KEY IS NOT NULL THEN
            --�����ҳ���������� ����ʱ��
            BEGIN
                DSC := '##����ʱ�㡢�仯��' || TABLE_KEY || '##';
                DBMS_OUTPUT.PUT_LINE(DSC);
                BEGIN
                    SELECT CASE
                               --û���ϱ����Ҷ��״̬��Ϊ2-����/ʧЧ  --- 10
                               WHEN B.DATA_ID IS NULL AND A.D_CON_STATUS <> '2' THEN
                                   '10'
                               --�Ѿ��ϱ�����¼��û�ϱ���20-���ŵ���/ʧЧ�Ҷ��״̬Ϊ2-����/ʧЧ
                               WHEN B.DATA_ID IS NOT NULL AND A.D_CON_STATUS = '2' THEN
                                   '20'
                               --�Ѿ��ϱ�����¼��û�ϱ���20-���ŵ���/ʧЧ�ҵ�ǰ�����Ŷ�����ϴ��ϱ��ɹ������Ŷ������е���
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
                               --���������Ϊ99
                               ELSE
                                   '99'
                               END,
                           --B��
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
                           --D��
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
                    WHERE NOT EXISTS(--�������ŵ���/ʧЧ�ļ�¼
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

                DSC := '##�޸��ӱ�[MBT_220_C] IS_RPT##';
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
                DSC := '##�������ü�������ϱ���ʶ' || TABLE_KEY || '##';
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
            --�����ODS����������
            DSC := '##ods���ݴ���##';
            DBMS_OUTPUT.PUT_LINE(DSC);
            BEGIN
                SELECT COUNT(*) INTO ODS_COUNT FROM ODS_MBT_220;
                IF ODS_COUNT = 0 THEN
                    DSC := '##odsû������##';
                    DBMS_OUTPUT.PUT_LINE(DSC);
                ELSE
                    DSC := '##����mbt����##';
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

                    DSC := '##���������������޸ģ������ϱ���ʶ##';
                    DBMS_OUTPUT.PUT_LINE(DSC);
                    BEGIN
                        MERGE INTO MBT_220 T1
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
                                      --D��
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
                                      --D��
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
                                        LEFT JOIN --��ods�ϴ����ݱȽ�
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
                                        LEFT JOIN --�������Ƿ��ѱ��͹�
                                   (SELECT *
                                    FROM (SELECT ROW_NUMBER()
                                                         OVER (PARTITION BY B_CONTRACT_CODE ORDER BY T.B_RPT_DATE DESC) RN,
                                                 T.*
                                          FROM MBT_220_RPT T
                                          WHERE DATA_STATUS = '27')
                                    WHERE RN = 1
                                   ) C
                                                  ON A.B_CONTRACT_CODE = C.B_CONTRACT_CODE
                                        LEFT JOIN --��Ҫ����mbt�������û������ĺ�ods��һ��������
                                   MBT_220 D
                                                  ON A.B_CONTRACT_CODE = D.B_CONTRACT_CODE
                                        LEFT JOIN --�����������Ϊ������ֵ
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

                    DSC := '##�ӱ������������޸�##';
                    DBMS_OUTPUT.PUT_LINE(DSC);
                    BEGIN
                        -- ��ɾ������������� Ȼ�����²���
                        DELETE
                        FROM MBT_220_C
                        WHERE B_CONTRACT_CODE IN
                              (SELECT DISTINCT B_CONTRACT_CODE FROM ODS_MBT_220);
                        --��������
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

                    DSC := '##������������״̬##';
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

                    DSC := '##�����ӱ�����״̬##';
                    DBMS_OUTPUT.PUT_LINE(DSC);
                    BEGIN
                        UPDATE MBT_220_C SET RSV5 = NULL WHERE RSV5 = 'FLAG';
                    END;

                    DSC := '##���±���ʱ��##';
                    DBMS_OUTPUT.PUT_LINE(DSC);
                    DSC := '##����ʱ�㡢�仯��' || TABLE_KEY || '##';
                    DBMS_OUTPUT.PUT_LINE(DSC);
                    BEGIN
                        MERGE INTO MBT_220 T1
                        USING (SELECT DISTINCT A.DATA_ID,
                                               CASE
                                                   --û���ϱ����Ҷ��״̬��Ϊ2-����/ʧЧ  --- 10
                                                   WHEN B.DATA_ID IS NULL AND A.D_CON_STATUS <> '2' THEN
                                                       '10'
                                                   --�Ѿ��ϱ�����¼��û�ϱ���20-���ŵ���/ʧЧ�Ҷ��״̬Ϊ2-����/ʧЧ
                                                   WHEN B.DATA_ID IS NOT NULL AND A.D_CON_STATUS = '2' THEN
                                                       '20'
                                                   --�Ѿ��ϱ�����¼��û�ϱ���20-���ŵ���/ʧЧ�ҵ�ǰ�����Ŷ�����ϴ��ϱ��ɹ������Ŷ������е���
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
                                                   --���������Ϊ99
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
                               WHERE NOT EXISTS(--�������ŵ���/ʧЧ�ļ�¼
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

                    DSC := '##�޸��ӱ�[MBT_220_C] IS_RPT##';
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

                    DSC := '##�������ü�������ϱ���ʶ' || TABLE_KEY || '##';
                    DBMS_OUTPUT.PUT_LINE(DSC);
                    BEGIN
                        SP_ODS_MBT_CAL_RPT_PROC2('MBT_220',
                                                 'T1.B_INF_REC_TYPE = T3.INF_REC_TYPE
                                         AND T3.B_ACCT_TYPE IS NULL
                                         AND T1.B_RPT_DATE_CODE = T3.RPT_DATE_CODE',
                                                 NULL);
                    END;

                    DSC := '##ODS�������ݲ�����ʷ��Ȼ��ɾ��ODS��##';
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

                    DSC := '##������ʱ�������88��99��ֱ�����ͨ������У���޸�ΪУ��ͨ��##';
                    DBMS_OUTPUT.PUT_LINE(DSC);
                    BEGIN
                        UPDATE MBT_220
                        SET DATA_STATUS = '21',
                            CHECK_FLAG  = 'Y'
                        WHERE DATA_DATE <= CURRENTDATE
                          AND (B_RPT_DATE_CODE = '88' OR B_RPT_DATE_CODE = '99')
                          AND DATA_STATUS = '00';

                        --������ʱ����벻��88��99�Ľ�У���޸�ΪδУ��ZHAO
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
                       'SP_ODS_MBT_220ʧ�ܣ�' || ERRMSG,
                       ERRCODE,
                       ERRMSG);
            ROLLBACK;
            RETURN;
    END;

    ENDTIME := TO_CHAR(SYSDATE, 'YYYY-MM-DD HH24:MI:SS');
    DSC := '##=======MBT220�洢����==����' || ENDTIME || '========##';
    DBMS_OUTPUT.PUT_LINE(DSC);
END;