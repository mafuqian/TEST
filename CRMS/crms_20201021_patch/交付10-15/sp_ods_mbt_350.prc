CREATE OR REPLACE PROCEDURE SP_ODS_MBT_350(ERRCODE IN OUT VARCHAR,
                                           ERRMSG IN OUT VARCHAR,
                                           TABLE_KEY IN VARCHAR2) AS
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

    DSC := '##=======MBT350�洢����==��ʼ' || BEGINTIME || '========##';
    DBMS_OUTPUT.PUT_LINE(DSC);
    DBMS_OUTPUT.PUT_LINE(DSC);
    BEGIN
        DSC := '##��ʼ��##';
        DBMS_OUTPUT.PUT_LINE(DSC);
        BEGIN
            V_T_DATE := GET_T_DAY();
        END;
        IF TABLE_KEY IS NOT NULL THEN
            --��ʱ�����
            BEGIN
                MERGE INTO MBT_350 T1
                USING (SELECT A.*,
                              CASE
                                  WHEN TRIM(A.B_ENT_NAME || A.B_ASSO_ENT_NAME || A.B_ASSO_TYPE || A.B_ASSO_SIGN)
                                      IS NOT NULL
                                      THEN
                                      CASE
                                          WHEN B.DATA_ID IS NOT NULL AND
                                               nvl(B.B_ENT_NAME || B.B_ASSO_ENT_NAME || B.B_ASSO_TYPE || B.B_ASSO_SIGN,
                                                   0) <>
                                               nvl(A.B_ENT_NAME || A.B_ASSO_ENT_NAME || A.B_ASSO_TYPE || A.B_ASSO_SIGN,
                                                   0)
                                              THEN
                                              '1'
                                          ELSE
                                              '0'
                                          END
                                  ELSE
                                      '0'
                                  END AS UPDATE_FLAG
                       FROM MBT_350 A
                                LEFT JOIN (SELECT *
                                           FROM (SELECT T.*,
                                                        ROW_NUMBER()
                                                                OVER (PARTITION BY B_ENT_CERT_TYPE, B_ENT_CERT_NUM, B_ASSO_ENT_CERT_TYPE, B_ASSO_ENT_CERT_NUM, B_ASSO_TYPE ORDER BY B_RPT_DATE DESC) RM
                                                 FROM MBT_350_RPT T)
                                           WHERE RM = 1
                       ) B
                                          ON A.B_ENT_CERT_TYPE = B.B_ENT_CERT_TYPE
                                              AND A.B_ENT_CERT_NUM = B.B_ENT_CERT_NUM
                                              AND A.B_ASSO_ENT_CERT_TYPE = B.B_ASSO_ENT_CERT_TYPE
                                              AND A.B_ASSO_ENT_CERT_NUM = B.B_ASSO_ENT_CERT_NUM) T2
                ON (T1.B_ENT_CERT_TYPE = T2.B_ENT_CERT_TYPE AND T1.B_ENT_CERT_NUM = T2.B_ENT_CERT_NUM AND
                    T1.B_ASSO_ENT_CERT_TYPE = T2.B_ASSO_ENT_CERT_TYPE AND
                    T1.B_ASSO_ENT_CERT_NUM = T2.B_ASSO_ENT_CERT_NUM AND T1.B_ASSO_TYPE = T2.B_ASSO_TYPE)
                WHEN MATCHED THEN
                    UPDATE SET T1.IS_RPT = T2.UPDATE_FLAG;
            END;
        ELSE
            --�����ODS����������
            DSC := '##ods���ݴ���##';
            DBMS_OUTPUT.PUT_LINE(DSC);
            BEGIN
                SELECT COUNT(*) INTO ODS_COUNT FROM ODS_MBT_350;
                IF ODS_COUNT = 0 THEN
                    DSC := '##odsû������##';
                    DBMS_OUTPUT.PUT_LINE(DSC);
                ELSE
                    DSC := '##����mbt����##';
                    DBMS_OUTPUT.PUT_LINE(DSC);
                    BEGIN
                        EXECUTE IMMEDIATE 'TRUNCATE TABLE MBT_350_TODAY_BAK';
                        INSERT INTO MBT_350_TODAY_BAK
                        SELECT *
                        FROM MBT_350;
                    END;

                    DSC := '##���������������޸ģ������ϱ���ʶ##';
                    DBMS_OUTPUT.PUT_LINE(DSC);
                    BEGIN
                        MERGE INTO MBT_350 T1
                        USING (SELECT A.*,
                                      --ods��������mbt��û��
                                      --������ϱ���ʶ,����ֵ��ʶΪ1��ûֵ��ʶΪ0
                                      CASE
                                          WHEN D.DATA_ID IS NULL AND
                                               TRIM(
                                                       A.B_ENT_NAME || A.B_ASSO_ENT_NAME || A.B_ASSO_TYPE || A.B_ASSO_SIGN) IS NULL
                                              THEN
                                              '0'
                                          ELSE
                                              '1'
                                          END                                             AS N_UPDATE_FALG,
                                      --��ʼ������
                                      CASE WHEN D.DATA_ID IS NULL THEN E.SECTION_CODE END AS SECTION_CODE,
                                      --ods��������mbt����
                                      --������ϱ���ʶ
                                      --B��
                                      CASE
                                          WHEN nvl(B.B_ENT_NAME || B.B_ASSO_ENT_NAME || B.B_ASSO_TYPE || B.B_ASSO_SIGN,
                                                   0) <>
                                               nvl(A.B_ENT_NAME || A.B_ASSO_ENT_NAME || A.B_ASSO_TYPE || A.B_ASSO_SIGN,
                                                   0)
                                              THEN
                                              CASE
                                                  WHEN nvl(
                                                               C.B_ENT_NAME || C.B_ASSO_ENT_NAME || C.B_ASSO_TYPE || C.B_ASSO_SIGN,
                                                               0) <>
                                                       nvl(
                                                               A.B_ENT_NAME || A.B_ASSO_ENT_NAME || A.B_ASSO_TYPE || A.B_ASSO_SIGN,
                                                               0)
                                                      THEN
                                                      '1'
                                                  ELSE
                                                      '0'
                                                  END
                                          ELSE
                                              '0'
                                          END                                             AS UPDATE_FLAG
                               FROM ODS_MBT_350 A
                                        LEFT JOIN --��ods�ϴ����ݱȽ�
                                   (SELECT *
                                    FROM (
                                             SELECT ROW_NUMBER()
                                                            OVER (PARTITION BY B_ENT_CERT_TYPE, B_ENT_CERT_NUM, B_ASSO_ENT_CERT_TYPE, B_ASSO_ENT_CERT_NUM ORDER BY DATA_LOAD_TIME DESC) RN,
                                                    T.*
                                             FROM ODS_MBT_350_HIS T
                                             ORDER BY DATA_LOAD_TIME DESC
                                         )
                                    WHERE RN = 1
                                   ) B
                                                  ON A.B_ENT_CERT_TYPE = B.B_ENT_CERT_TYPE
                                                      AND A.B_ENT_CERT_NUM = B.B_ENT_CERT_NUM
                                                      AND A.B_ASSO_ENT_CERT_TYPE = B.B_ASSO_ENT_CERT_TYPE
                                                      AND A.B_ASSO_ENT_CERT_NUM = B.B_ASSO_ENT_CERT_NUM
                                        LEFT JOIN --�������Ƿ��ѱ��͹�
                                   (SELECT *
                                    FROM (SELECT ROW_NUMBER()
                                                         OVER (PARTITION BY B_ENT_CERT_TYPE, B_ENT_CERT_NUM, B_ASSO_ENT_CERT_TYPE, B_ASSO_ENT_CERT_NUM ORDER BY T.B_RPT_DATE DESC) RN,
                                                 T.*
                                          FROM MBT_350_RPT T
                                          WHERE DATA_STATUS = '27')
                                    WHERE RN = 1
                                   ) C
                                                  ON A.B_ENT_CERT_TYPE = C.B_ENT_CERT_TYPE
                                                      AND A.B_ENT_CERT_NUM = C.B_ENT_CERT_NUM
                                                      AND A.B_ASSO_ENT_CERT_TYPE = C.B_ASSO_ENT_CERT_TYPE
                                                      AND A.B_ASSO_ENT_CERT_NUM = C.B_ASSO_ENT_CERT_NUM
                                        LEFT JOIN --��Ҫ����mbt�������û������ĺ�ods��һ��������
                                   MBT_350 D
                                                  ON A.B_ENT_CERT_TYPE = D.B_ENT_CERT_TYPE
                                                      AND A.B_ENT_CERT_NUM = D.B_ENT_CERT_NUM
                                                      AND A.B_ASSO_ENT_CERT_TYPE = D.B_ASSO_ENT_CERT_TYPE
                                                      AND A.B_ASSO_ENT_CERT_NUM = D.B_ASSO_ENT_CERT_NUM
                                        LEFT JOIN --�����������Ϊ������ֵ
                                   MBT_SECTION_CODE E
                                                  ON D.ORG_ID = E.ORG_ID) T2
                        ON (T1.B_ENT_CERT_TYPE = T2.B_ENT_CERT_TYPE AND T1.B_ENT_CERT_NUM = T2.B_ENT_CERT_NUM AND
                            T1.B_ASSO_ENT_CERT_TYPE = T2.B_ASSO_ENT_CERT_TYPE AND
                            T1.B_ASSO_ENT_CERT_NUM = T2.B_ASSO_ENT_CERT_NUM)
                        WHEN MATCHED THEN
                            UPDATE
                            SET T1.B_ENT_NAME      = T2.B_ENT_NAME,
                                T1.B_ASSO_ENT_NAME = T2.B_ASSO_ENT_NAME,
                                T1.B_ASSO_SIGN     = T2.B_ASSO_SIGN,
                                T1.DATA_STATUS     = '00',
                                T1.DATA_CHG_USER   = 'SYSTEM',
                                T1.DATA_SOURCE     = '2',
                                T1.DATA_CHG_DATE   = CURRENTDATE,
                                T1.DATA_CHG_TIME   = CURRENTTIME,
                                T1.B_RPT_DATE      = V_T_DATE,
                                T1.CHECK_FLAG      = 'N',
                                T1.IS_RPT          = UPDATE_FLAG
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
                             T1.B_ENT_NAME,
                             T1.B_ENT_CERT_TYPE,
                             T1.B_ENT_CERT_NUM,
                             T1.B_ASSO_ENT_NAME,
                             T1.B_ASSO_ENT_CERT_TYPE,
                             T1.B_ASSO_ENT_CERT_NUM,
                             T1.B_ASSO_TYPE,
                             T1.B_ASSO_SIGN,
                             T1.B_RPT_DATE,
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
                                    '350',
                                    T2.B_ENT_NAME,
                                    T2.B_ENT_CERT_TYPE,
                                    T2.B_ENT_CERT_NUM,
                                    T2.B_ASSO_ENT_NAME,
                                    T2.B_ASSO_ENT_CERT_TYPE,
                                    T2.B_ASSO_ENT_CERT_NUM,
                                    T2.B_ASSO_TYPE,
                                    T2.B_ASSO_SIGN,
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
                                    T2.N_UPDATE_FALG);
                    END;

                    COMMIT;
                    DSC := '##ODS�������ݲ�����ʷ��Ȼ��ɾ��ODS��##';
                    DBMS_OUTPUT.PUT_LINE(DSC);
                    BEGIN
                        --���ݲ�����ʷ��Ȼ��ɾ��ODS��
                        INSERT INTO ODS_MBT_350_HIS
                        SELECT *
                        FROM ODS_MBT_350;
                        DELETE FROM ODS_MBT_350;
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
                       'SP_ODS_MBT_350',
                       'ERROR35001',
                       'ʧ�ܣ�' || ERRMSG,
                       ERRCODE,
                       ERRMSG);
            ROLLBACK;
            RETURN;
    END;
    ENDTIME := TO_CHAR(SYSDATE, 'YYYY-MM-DD HH24:MI:SS');
    DSC := '##=======MBT350�洢����==����' || ENDTIME || '========##';
    DBMS_OUTPUT.PUT_LINE(DSC);

END;
/
