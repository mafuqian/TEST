CREATE OR REPLACE PROCEDURE "SP_ODS_MBT_210"(ERRCODE IN OUT VARCHAR,
                                             ERRMSG IN OUT VARCHAR,
                                             TABLE_KEY IN VARCHAR2,
                                             RPT_DATE_CODE_OUT IN OUT VARCHAR2) AS
    DSC           VARCHAR2(1000);
    BEGINTIME     VARCHAR2(20);
    ENDTIME       VARCHAR2(20);
    CURRENTDATE   VARCHAR2(8);
    CURRENTTIME   VARCHAR2(14);
    --B_ARRAYLIST   VARCHAR2(4000);
    --C_ARRAYLIST   VARCHAR2(4000);
    D_ARRAYLIST   VARCHAR2(4000);
    E_ARRAYLIST   VARCHAR2(40);
    --F_ARRAYLIST   VARCHAR2(4000);
    --G_ARRAYLIST   VARCHAR2(4000);
    --H_ARRAYLIST   VARCHAR2(4000);
    --I_ARRAYLIST   VARCHAR2(4000);
    --J_ARRAYLIST   VARCHAR2(4000);
    K_ARRAYLIST   VARCHAR2(4000);
    IS_RPT_OUT    VARCHAR2(64);
    --V_T_DATE        VARCHAR2(8);
    --V_YE_DATE     VARCHAR2(8);
    --V_KX_DATE     VARCHAR2(8);
    --V_YEAR_MONTH  VARCHAR2(8);
    V_T_DATE      VARCHAR2(8);
    ODS_COUNT     INT;
    --ODS_C_COUNT   INT;
    C_UPDATE_FLAG CHAR(1);
    F_UPDATE_FLAG CHAR(1);
    G_UPDATE_FLAG CHAR(1);
    H_UPDATE_FLAG CHAR(1);
    I_UPDATE_FLAG CHAR(1);
    J_UPDATE_FLAG CHAR(1);
    --ADD END
BEGIN

    --YUAN
    --B_ARRAYLIST := ('B_ACCT_TYPE,B_NAME,B_ID_TYPE,B_ID_NUM,B_MNGMT_ORG_CODE');
    --C_ARRAYLIST :=
    --('C_BUSI_LINES, C_BUSI_DTL_LINES, C_OPEN_DATE, C_CY, C_ACCT_CRED_LINE_AMT_LCY, C_LOAN_AMT_LCY, C_FLAG, C_DUE_DATE, C_REPAY_MODE, C_REPAY_FREQCY,C_REPAY_PRD,C_APPLY_BUSI_DIST,C_GUAR_MODE,C_OTH_REPY_GUAR_WAY,C_ASSET_TRAND_FLAG,C_FUND_SOU,C_LOAN_FORM,C_CREDIT_ID');
    --C_ARRAYLIST :=('C_BUSI_LINES,C_BUSI_DTL_LINES,C_OPEN_DATE,C_CY,C_ACCT_CRED_LINE_AMT,C_LOAN_AMT,C_FLAG,C_DUE_DATE,C_REPAY_MODE,C_REPAY_FREQCY,C_REPAY_PRD,C_APPLY_BUSI_DIST,C_GUAR_MODE,C_OTH_REPY_GUAR_WAY,C_ASSET_TRAND_FLAG,C_FUND_SOU,C_LOAN_FORM,C_CREDIT_ID,C_LOAN_CON_CODE,C_FIRST_HOU_LOAN_FLAG,C_ACCT_CRED_LINE_AMT_LCY,C_LOAN_AMT_LCY');
    D_ARRAYLIST := ('D_ARLP_ID_TYPE,D_ARLP_NAME,D_ARLP_TYPE,D_ARLP_AMT,D_WARTY_SIGN,D_MAX_GUAR_MCC');
    E_ARRAYLIST := ('E_CCC');
    --F_ARRAYLIST := ('F_MCC');
    --G_ARRAYLIST := ('G_INIT_CRED_NAME,G_INIT_CRED_ORG_NM,G_ORIG_DBT_CATE,G_INIT_RPY_STS');
    --H_ARRAYLIST :=('H_MONTH,H_SETT_DATE,H_ACCT_STATUS,H_ACCT_BAL_LCY,H_PRID_ACCT_BAL_LCY,H_USED_AMT_LCY,H_NOTLSU_BAL_LCY,H_REM_REP_PRD,H_FIVE_CATE,H_FIVE_CATE_ADJ_DATE,H_RPY_STATUS,H_RPY_PRCT,H_OVERD_PRD,H_TOT_OVERD_LCY,H_OVAER_PRINC_LCY,H_OVERD31_60PRINC_LCY,H_OVERD61_90PRINC_LCY,H_OVERD91_180PRINC_LCY,H_OVERD_PRINC180_LCY,H_OVERD_RAW_BA_OVE180_LCY,H_CUR_RPY_AMT_LCY,H_ACT_RPY_AMT_LCY,H_LAT_RPY_DATE,H_CLOSE_DATE');
    --I_ARRAYLIST := ('I_SPEC_LINE_LCY ,I_SPEC_EFCT_DATE,I_SPEC_END_DATE,I_USED_INST_AMT_LCY');
    --J_ARRAYLIST := ('J_ACCT_STATUS,J_ACCT_BAL_LCY,J_FIVE_CATE,J_FIVE_CATE_ADJ_DATE,J_REM_REP_PRD,J_RPY_STATUS,J_OVERD_PRD,J_TOT_OVERD_LCY,J_LAT_RPY_AMT_LCY,J_LAT_RPY_DATE,J_CLOSE_DATE');
    K_ARRAYLIST := ('K_CHAN_TRAN_TYPE,K_TRAN_DATE,K_TRAN_AMT,K_DUE_TRAN_MON,K_DET_INFO');
    CURRENTDATE := TO_CHAR(SYSDATE, 'YYYYMMDD');
    CURRENTTIME := TO_CHAR(SYSDATE, 'YYYYMMDDHH24MISS');
    BEGINTIME := TO_CHAR(SYSDATE, 'YYYY-MM-DD HH24:MI:SS');


    DSC := '##=======MBT210存储过程==开始' || BEGINTIME || '========##';
    DBMS_OUTPUT.PUT_LINE(DSC);
    BEGIN
        DSC := '##初始化##';
        DBMS_OUTPUT.PUT_LINE(DSC);
        BEGIN
            V_T_DATE := GET_T_DAY();
            -- 数据日期 DATA_DATE
            --V_YE_DATE := TO_CHAR(TO_DATE(V_T_DATE, 'YYYY-MM-DD') - 1, 'YYYYMMDD');
            --V_YEAR_MONTH := SUBSTR(V_T_DATE, 0, 6);
        END;

        IF TABLE_KEY IS NOT NULL THEN
            --处理从页面来的数据 计算时点
            BEGIN
                DSC := '##计算月结日' || TABLE_KEY || '##';
                DBMS_OUTPUT.PUT_LINE(DSC);
                BEGIN
                    /**
                      月结日获取：只获取当月的发生日期，存量数据也只报当月发生的数据，旧的数据需要等符合月结日场景才能报送
                     */
                    MERGE INTO MBT_210 T1
                    USING (SELECT DISTINCT A.*,
                                           CASE
                                               WHEN A.H_SETT_DATE IS NOT NULL
                                                   -- AND SUBSTR(A.H_SETT_DATE, 1, 6) = SUBSTR(V_T_DATE, 1, 6)
                                                   THEN
                                                   GET_WORKDAY_NEW(A.H_SETT_DATE, 0)
                                               WHEN A.H_SETT_DATE IS NULL THEN
                                                   TO_CHAR(LAST_DAY(TO_DATE(V_T_DATE, 'YYYYMMDD')), 'YYYYMMDD')
                                               ELSE
                                                   NULL
                                               END AS NEW_MON_SETTLE_DATE
                           FROM MBT_210 A
                           WHERE A.DATA_ID = TABLE_KEY) T2
                    ON (T1.DATA_ID = T2.DATA_ID)
                    WHEN MATCHED THEN
                        UPDATE SET T1.MON_SETTLE_DATE = T2.NEW_MON_SETTLE_DATE;
                END;

                DSC := '##计算时点、变化量' || TABLE_KEY || '##';
                DBMS_OUTPUT.PUT_LINE(DSC);
                BEGIN
                    /**
                      过滤条件：已报送过状态关闭的数据就不再处理
                     */
                    SELECT DISTINCT CASE
                                        --对于R2/R3类账户，在激活之前不需要每月报送
                                        WHEN A.B_ACCT_TYPE IN ('R2 ', 'R3') AND
                                             A.H_ACCT_STATUS = '6' THEN
                                            '99'
                                        --新开户：数据无报送过,账户的状态不是关闭的情况，且开户日期在当前月份
                                        WHEN SUBSTR(A.C_OPEN_DATE, 1, 6) = SUBSTR(V_T_DATE, 1, 6) AND
                                             ((nvl(A.B_ACCT_TYPE, 0) <> 'C1' AND A.H_ACCT_STATUS NOT IN ('3', '4')) OR
                                              ((A.B_ACCT_TYPE = 'C1' AND nvl(A.H_ACCT_STATUS, 0) <> '2')))
                                            AND E.DATA_ID IS NULL THEN
                                            '10'
                                        --月结日首次报送存量账户：不为C1的存量账户,账户的状态不是关闭的情况，没有报送过
                                        --存量数据也只报当月发生的数据，旧的数据需要等符合月结日场景才能报送
                                        WHEN A.MON_SETTLE_DATE = V_T_DATE AND
                                             nvl(A.B_ACCT_TYPE, 0) <> 'C1' AND A.H_ACCT_STATUS NOT IN ('3', '4')
                                            AND E.DATA_ID IS NULL THEN
                                            '31'
                                        --月结日账户关闭：不为C1的数据，已报送过，账户状态为关闭，且执行日=月结日
                                        WHEN nvl(A.B_ACCT_TYPE, 0) <> 'C1' AND A.H_ACCT_STATUS IN ('3', '4') AND
                                             E.DATA_ID IS NOT NULL AND
                                             A.MON_SETTLE_DATE = V_T_DATE THEN
                                            '32'
                                        --账户关闭：已报送过，账户状态为关闭
                                        WHEN ((nvl(A.B_ACCT_TYPE, 0) <> 'C1' AND A.H_ACCT_STATUS IN ('3', '4')) OR
                                              (A.B_ACCT_TYPE = 'C1' AND A.J_ACCT_STATUS = '2')) AND
                                             E.DATA_ID IS NOT NULL THEN
                                            '20'
                                        /**
                                          收回逾期款项：非月度表现信息段里的逾期总额为0，
                                          上次报送的非（20、32、40）的（非C1的月度表现信息段中逾期总额不为0，C1的非月度表现信息段中逾期总额不为0），
                                          非月度表现信息段里的最近一次还款信息不等于月结日且最近还款日期在当月
                                          且本月没有报送过该时点
                                         */
                                        WHEN A.J_TOT_OVERD = 0 AND (J.DATA_ID IS NOT NULL AND
                                                                    ((nvl(A.B_ACCT_TYPE, 0) <> 'C1' AND nvl(J.H_TOT_OVERD, '') <> 0) OR
                                                                     (A.B_ACCT_TYPE = 'C1' AND nvl(J.J_TOT_OVERD, '') <> 0))) AND
                                             nvl(A.MON_SETTLE_DATE, 0) <> nvl(A.J_LAT_RPY_DATE, 0) AND
                                             SUBSTR(A.J_LAT_RPY_DATE, 1, 6) = SUBSTR(V_T_DATE, 1, 6) AND
                                             I.DATA_ID IS NULL
                                            THEN
                                            '40'
                                        --当C1账户上面的情况都不满足，设置为不报送
                                        WHEN A.B_ACCT_TYPE = 'C1' THEN
                                            '99'
                                        ELSE
                                            CASE
                                                WHEN E.B_RPT_DATE_CODE != '30' AND
                                                     A.MON_SETTLE_DATE IS NOT NULL AND
                                                     V_T_DATE = A.MON_SETTLE_DATE THEN
                                                    '30'
                                                ELSE
                                                    '99'
                                                END
                                        END,
                                    --C段
                                    CASE
                                        WHEN TRIM(A.C_BUSI_LINES || A.C_BUSI_DTL_LINES || A.C_OPEN_DATE || A.C_CY ||
                                                  A.C_ACCT_CRED_LINE_AMT || A.C_LOAN_AMT || A.C_FLAG || A.C_DUE_DATE ||
                                                  A.C_REPAY_MODE || A.C_REPAY_FREQCY || A.C_REPAY_PRD ||
                                                  A.C_APPLY_BUSI_DIST || A.C_GUAR_MODE || A.C_OTH_REPY_GUAR_WAY ||
                                                  A.C_ASSET_TRAND_FLAG || A.C_FUND_SOU || A.C_LOAN_FORM ||
                                                  A.C_CREDIT_ID || A.C_LOAN_CON_CODE || A.C_FIRST_HOU_LOAN_FLAG ||
                                                  A.C_ACCT_CRED_LINE_AMT_LCY || A.C_LOAN_AMT_LCY) IS NOT NULL THEN
                                            CASE
                                                WHEN J.DATA_ID IS NOT NULL AND
                                                     nvl(A.C_BUSI_LINES || A.C_BUSI_DTL_LINES || A.C_OPEN_DATE ||
                                                         A.C_CY ||
                                                         A.C_ACCT_CRED_LINE_AMT || A.C_LOAN_AMT || A.C_FLAG ||
                                                         A.C_DUE_DATE ||
                                                         A.C_REPAY_MODE || A.C_REPAY_FREQCY || A.C_REPAY_PRD ||
                                                         A.C_APPLY_BUSI_DIST || A.C_GUAR_MODE ||
                                                         A.C_OTH_REPY_GUAR_WAY ||
                                                         A.C_ASSET_TRAND_FLAG || A.C_FUND_SOU || A.C_LOAN_FORM ||
                                                         A.C_CREDIT_ID || A.C_LOAN_CON_CODE ||
                                                         A.C_FIRST_HOU_LOAN_FLAG ||
                                                         A.C_ACCT_CRED_LINE_AMT_LCY || A.C_LOAN_AMT_LCY, 0) <>
                                                     nvl(J.C_BUSI_LINES || J.C_BUSI_DTL_LINES || J.C_OPEN_DATE ||
                                                         J.C_CY ||
                                                         J.C_ACCT_CRED_LINE_AMT || J.C_LOAN_AMT || J.C_FLAG ||
                                                         J.C_DUE_DATE ||
                                                         J.C_REPAY_MODE || J.C_REPAY_FREQCY || J.C_REPAY_PRD ||
                                                         J.C_APPLY_BUSI_DIST || J.C_GUAR_MODE ||
                                                         J.C_OTH_REPY_GUAR_WAY ||
                                                         J.C_ASSET_TRAND_FLAG || J.C_FUND_SOU || J.C_LOAN_FORM ||
                                                         J.C_CREDIT_ID || J.C_LOAN_CON_CODE ||
                                                         J.C_FIRST_HOU_LOAN_FLAG ||
                                                         J.C_ACCT_CRED_LINE_AMT_LCY || J.C_LOAN_AMT_LCY, 0)
                                                    THEN
                                                    '1'
                                                ELSE
                                                    '0'
                                                END

                                        ELSE
                                            '0'
                                        END AS C_UPDATE_FLAG,
                                    --F段
                                    CASE
                                        WHEN TRIM(A.F_MCC) IS NOT NULL THEN
                                            CASE
                                                WHEN J.DATA_ID IS NOT NULL AND nvl(A.F_MCC, 0) <> nvl(J.F_MCC, 0)
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
                                        WHEN TRIM(A.G_INIT_CRED_NAME || A.G_INIT_CRED_ORG_NM || A.G_ORIG_DBT_CATE ||
                                                  A.G_INIT_RPY_STS) IS NOT NULL THEN
                                            CASE
                                                WHEN J.DATA_ID IS NOT NULL AND
                                                     nvl(A.G_INIT_CRED_NAME || A.G_INIT_CRED_ORG_NM ||
                                                         A.G_ORIG_DBT_CATE ||
                                                         A.G_INIT_RPY_STS, 0) <>
                                                     nvl(J.G_INIT_CRED_NAME || J.G_INIT_CRED_ORG_NM ||
                                                         J.G_ORIG_DBT_CATE ||
                                                         J.G_INIT_RPY_STS, 0)
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
                                        WHEN TRIM(A.H_MONTH || A.H_SETT_DATE || A.H_ACCT_STATUS || A.H_ACCT_BAL_LCY ||
                                                  A.H_PRID_ACCT_BAL_LCY || A.H_USED_AMT_LCY || A.H_NOTLSU_BAL_LCY ||
                                                  A.H_REM_REP_PRD || A.H_FIVE_CATE || A.H_FIVE_CATE_ADJ_DATE ||
                                                  A.H_RPY_STATUS || A.H_RPY_PRCT || A.H_OVERD_PRD ||
                                                  A.H_TOT_OVERD_LCY || A.H_OVAER_PRINC_LCY || A.H_OVERD31_60PRINC_LCY ||
                                                  A.H_OVERD61_90PRINC_LCY || A.H_OVERD91_180PRINC_LCY ||
                                                  A.H_OVERD_PRINC180_LCY || A.H_OVERD_RAW_BA_OVE180_LCY ||
                                                  A.H_CUR_RPY_AMT_LCY || A.H_ACT_RPY_AMT_LCY || A.H_LAT_RPY_DATE ||
                                                  A.H_CLOSE_DATE) IS NOT NULL THEN
                                            CASE
                                                WHEN J.DATA_ID IS NOT NULL AND
                                                     nvl(A.H_MONTH || A.H_SETT_DATE || A.H_ACCT_STATUS ||
                                                         A.H_ACCT_BAL_LCY ||
                                                         A.H_PRID_ACCT_BAL_LCY || A.H_USED_AMT_LCY ||
                                                         A.H_NOTLSU_BAL_LCY ||
                                                         A.H_REM_REP_PRD || A.H_FIVE_CATE || A.H_FIVE_CATE_ADJ_DATE ||
                                                         A.H_RPY_STATUS || A.H_RPY_PRCT || A.H_OVERD_PRD ||
                                                         A.H_TOT_OVERD_LCY || A.H_OVAER_PRINC_LCY ||
                                                         A.H_OVERD31_60PRINC_LCY ||
                                                         A.H_OVERD61_90PRINC_LCY || A.H_OVERD91_180PRINC_LCY ||
                                                         A.H_OVERD_PRINC180_LCY || A.H_OVERD_RAW_BA_OVE180_LCY ||
                                                         A.H_CUR_RPY_AMT_LCY || A.H_ACT_RPY_AMT_LCY ||
                                                         A.H_LAT_RPY_DATE ||
                                                         A.H_CLOSE_DATE, 0) <>
                                                     nvl(J.H_MONTH || J.H_SETT_DATE || J.H_ACCT_STATUS ||
                                                         J.H_ACCT_BAL_LCY ||
                                                         J.H_PRID_ACCT_BAL_LCY || J.H_USED_AMT_LCY ||
                                                         J.H_NOTLSU_BAL_LCY ||
                                                         J.H_REM_REP_PRD || J.H_FIVE_CATE || J.H_FIVE_CATE_ADJ_DATE ||
                                                         J.H_RPY_STATUS || J.H_RPY_PRCT || J.H_OVERD_PRD ||
                                                         J.H_TOT_OVERD_LCY || J.H_OVAER_PRINC_LCY ||
                                                         J.H_OVERD31_60PRINC_LCY ||
                                                         J.H_OVERD61_90PRINC_LCY || J.H_OVERD91_180PRINC_LCY ||
                                                         J.H_OVERD_PRINC180_LCY || J.H_OVERD_RAW_BA_OVE180_LCY ||
                                                         J.H_CUR_RPY_AMT_LCY || J.H_ACT_RPY_AMT_LCY ||
                                                         J.H_LAT_RPY_DATE ||
                                                         J.H_CLOSE_DATE, 0)
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
                                        WHEN TRIM(A.I_SPEC_LINE_LCY || A.I_SPEC_EFCT_DATE || A.I_SPEC_END_DATE ||
                                                  A.I_USED_INST_AMT_LCY) IS NOT NULL THEN
                                            CASE
                                                WHEN J.DATA_ID IS NOT NULL AND
                                                     nvl(A.I_SPEC_LINE_LCY || A.I_SPEC_EFCT_DATE || A.I_SPEC_END_DATE ||
                                                         A.I_USED_INST_AMT_LCY, 0) <>
                                                     nvl(J.I_SPEC_LINE_LCY || J.I_SPEC_EFCT_DATE || J.I_SPEC_END_DATE ||
                                                         J.I_USED_INST_AMT_LCY, 0)
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
                                        WHEN TRIM(A.J_ACCT_STATUS || A.J_ACCT_BAL_LCY || A.J_FIVE_CATE ||
                                                  A.J_FIVE_CATE_ADJ_DATE || A.J_REM_REP_PRD || A.J_RPY_STATUS ||
                                                  A.J_OVERD_PRD || A.J_TOT_OVERD_LCY || A.J_LAT_RPY_AMT_LCY ||
                                                  A.J_LAT_RPY_DATE || A.J_CLOSE_DATE) IS NOT NULL THEN
                                            CASE
                                                WHEN J.DATA_ID IS NOT NULL AND
                                                     nvl(A.J_ACCT_STATUS || A.J_ACCT_BAL_LCY || A.J_FIVE_CATE ||
                                                         A.J_FIVE_CATE_ADJ_DATE || A.J_REM_REP_PRD || A.J_RPY_STATUS ||
                                                         A.J_OVERD_PRD || A.J_TOT_OVERD_LCY || A.J_LAT_RPY_AMT_LCY ||
                                                         A.J_LAT_RPY_DATE || A.J_CLOSE_DATE, 0) <>
                                                     nvl(J.J_ACCT_STATUS || J.J_ACCT_BAL_LCY || J.J_FIVE_CATE ||
                                                         J.J_FIVE_CATE_ADJ_DATE || J.J_REM_REP_PRD || J.J_RPY_STATUS ||
                                                         J.J_OVERD_PRD || J.J_TOT_OVERD_LCY || J.J_LAT_RPY_AMT_LCY ||
                                                         J.J_LAT_RPY_DATE || J.J_CLOSE_DATE, 0)
                                                    THEN
                                                    '1'
                                                ELSE
                                                    '0'
                                                END

                                        ELSE
                                            '0'
                                        END AS J_UPDATE_FLAG
                    INTO RPT_DATE_CODE_OUT,C_UPDATE_FLAG,F_UPDATE_FLAG,G_UPDATE_FLAG,H_UPDATE_FLAG,I_UPDATE_FLAG,J_UPDATE_FLAG
                    FROM MBT_210 A
                             --用作时点判断中是否已上报过的依据 (只和非逾期款项的记录进行比对)
                             LEFT JOIN (SELECT *
                                        FROM (SELECT ROW_NUMBER() OVER (PARTITION BY B_ACCT_CODE ORDER BY B_RPT_DATE DESC) RN,
                                                     T.*
                                              FROM MBT_210_RPT T
                                              WHERE B_RPT_DATE_CODE <> '40'
                                                AND DATA_STATUS = '27')
                                        WHERE RN = 1) E
                                       ON A.B_ACCT_CODE = E.B_ACCT_CODE
                        /*用作收回逾期款项时点判断
                        本月（记录中非月度表现信息段里的最近一次实际还款日期J_LAT_RPY_DATE的月份在执行月）报送过收回逾期款项
                        */
                             LEFT JOIN MBT_210_RPT I
                                       ON A.B_ACCT_CODE = I.B_ACCT_CODE
                                           AND SUBSTR(A.J_LAT_RPY_DATE, 1, 6) = SUBSTR(CURRENTDATE, 1, 6)
                                           AND I.B_RPT_DATE_CODE = '40'
                                           AND I.DATA_STATUS = '27'
                        /**用作比较变化量依据，变化量只与非（关闭、回收逾期款项）的记录进行比较
                          查找最近一次不为（关闭、回收逾期款项）的报送记录
                         */
                             LEFT JOIN (SELECT *
                                        FROM (SELECT ROW_NUMBER() OVER (PARTITION BY B_ACCT_CODE ORDER BY B_RPT_DATE DESC) RN,
                                                     T.*
                                              FROM MBT_210_RPT T
                                              WHERE DATA_STATUS = '27'
                                                AND B_RPT_DATE_CODE NOT IN ('20', '32', '40'))
                                        WHERE RN = 1) J
                                       ON A.B_ACCT_CODE = J.B_ACCT_CODE
                    WHERE NOT EXISTS(
                            SELECT 1
                            FROM MBT_210_RPT B
                            WHERE A.B_ACCT_CODE = B.B_ACCT_CODE
                              AND B.DATA_STATUS = '27'
                              AND B.B_RPT_DATE_CODE IN ('20', '32'))
                      AND A.DATA_ID = TABLE_KEY;

                    SELECT IS_RPT INTO IS_RPT_OUT FROM MBT_210 WHERE DATA_ID = TABLE_KEY;
                    UPDATE MBT_210
                    SET IS_RPT = GET_ISRPT_CHANGE(IS_RPT_OUT,
                                                  ('1' || C_UPDATE_FLAG || F_UPDATE_FLAG || G_UPDATE_FLAG ||
                                                   H_UPDATE_FLAG ||
                                                   I_UPDATE_FLAG || J_UPDATE_FLAG || '|'))
                    WHERE DATA_ID = TABLE_KEY;
                END;

                DSC := '##修改子表[MBT_210_D] IS_RPT##';
                DBMS_OUTPUT.PUT_LINE(DSC);
                BEGIN
                    SP_ODS_MBT_CAL_RPT_PROC3('MBT_210_D',
                                             'B_RPT_DATE_CODE <> ''40''',
                                             D_ARRAYLIST,
                                             'B_ACCT_CODE',
                                             9,
                                             'MBT_210',
                                             TABLE_KEY);
                END;

                DSC := '##修改子表[MBT_210_E] IS_RPT##';
                DBMS_OUTPUT.PUT_LINE(DSC);
                BEGIN
                    SP_ODS_MBT_CAL_RPT_PROC3('MBT_210_E',
                                             'B_RPT_DATE_CODE <> ''40''',
                                             E_ARRAYLIST,
                                             'B_ACCT_CODE',
                                             10,
                                             'MBT_210',
                                             TABLE_KEY);
                END;

                DSC := '##修改子表[MBT_210_K] IS_RPT##';
                DBMS_OUTPUT.PUT_LINE(DSC);
                BEGIN
                    SP_ODS_MBT_CAL_RPT_PROC3('MBT_210_K',
                                             'B_RPT_DATE_CODE <> ''40''',
                                             K_ARRAYLIST,
                                             'B_ACCT_CODE',
                                             11,
                                             'MBT_210',
                                             TABLE_KEY);
                END;

                DSC := '##根据配置计算各段上报标识' || TABLE_KEY || '##';
                DBMS_OUTPUT.PUT_LINE(DSC);
                BEGIN
                    SP_ODS_MBT_CAL_RPT_PROC2('MBT_210',
                                             'T1.B_INF_REC_TYPE = T3.INF_REC_TYPE
                                     AND T1.B_ACCT_TYPE = T3.ACCT_TYPE
                                     AND T1.B_RPT_DATE_CODE = T3.RPT_DATE_CODE',
                                             TABLE_KEY);
                END;
            END;

        ELSE
            --处理从ODS表来的数据
            DSC := '##ods数据处理##';
            DBMS_OUTPUT.PUT_LINE(DSC);
            BEGIN
                SELECT COUNT(*) INTO ODS_COUNT FROM ODS_MBT_210;
                IF ODS_COUNT = 0 THEN
                    DSC := '##ods没有数据##';
                    DBMS_OUTPUT.PUT_LINE(DSC);
                ELSE
                    DSC := '##备份mbt数据##';
                    DBMS_OUTPUT.PUT_LINE(DSC);
                    BEGIN
                        EXECUTE IMMEDIATE 'TRUNCATE TABLE MBT_210_TODAY_BAK';
                        INSERT INTO MBT_210_TODAY_BAK
                        SELECT *
                        FROM MBT_210;

                        EXECUTE IMMEDIATE 'TRUNCATE TABLE MBT_210_D_TODAY_BAK';
                        INSERT INTO MBT_210_D_TODAY_BAK
                        SELECT *
                        FROM MBT_210_D;

                        EXECUTE IMMEDIATE 'TRUNCATE TABLE MBT_210_E_TODAY_BAK';
                        INSERT INTO MBT_210_E_TODAY_BAK
                        SELECT *
                        FROM MBT_210_E;

                        EXECUTE IMMEDIATE 'TRUNCATE TABLE MBT_210_K_TODAY_BAK';
                        INSERT INTO MBT_210_K_TODAY_BAK
                        SELECT *
                        FROM MBT_210_K;
                    END;

                    DSC := '##主表数据新增或修改，计算上报标识##';
                    DBMS_OUTPUT.PUT_LINE(DSC);
                    BEGIN
                        MERGE INTO MBT_210 T1
                        USING (SELECT A.*,
                                      CASE
                                          WHEN A.H_SETT_DATE IS NOT NULL
                                              --AND SUBSTR(A.H_SETT_DATE, 1, 6) = SUBSTR(V_T_DATE, 1, 6)
                                              THEN
                                              GET_WORKDAY_NEW(A.H_SETT_DATE, 0)
                                          WHEN A.H_SETT_DATE IS NULL THEN
                                              TO_CHAR(LAST_DAY(TO_DATE(V_T_DATE, 'YYYYMMDD')), 'YYYYMMDD')
                                          ELSE
                                              NULL
                                          END                                             AS NEW_MON_SETTLE_DATE,
                                      --ods的数据在mbt中没有
                                      --计算段上报标识,段有值标识为1，没值标识为0
                                      --C段
                                      CASE
                                          WHEN D.DATA_ID IS NULL AND
                                               TRIM(A.C_BUSI_LINES || A.C_BUSI_DTL_LINES || A.C_OPEN_DATE ||
                                                    A.C_CY ||
                                                    A.C_ACCT_CRED_LINE_AMT || A.C_LOAN_AMT || A.C_FLAG ||
                                                    A.C_DUE_DATE ||
                                                    A.C_REPAY_MODE || A.C_REPAY_FREQCY || A.C_REPAY_PRD ||
                                                    A.C_APPLY_BUSI_DIST || A.C_GUAR_MODE || A.C_OTH_REPY_GUAR_WAY ||
                                                    A.C_ASSET_TRAND_FLAG || A.C_FUND_SOU || A.C_LOAN_FORM ||
                                                    A.C_CREDIT_ID || A.C_LOAN_CON_CODE || A.C_FIRST_HOU_LOAN_FLAG ||
                                                    A.C_ACCT_CRED_LINE_AMT_LCY || A.C_LOAN_AMT_LCY) IS NULL THEN
                                              '0'
                                          ELSE
                                              '1'
                                          END                                             AS N_C_UPDATE_FLAG,
                                      --F段
                                      CASE
                                          WHEN D.DATA_ID IS NULL AND TRIM(A.F_MCC) IS NULL THEN
                                              '0'
                                          ELSE
                                              '1'
                                          END                                             AS N_F_UPDATE_FLAG,
                                      --G段
                                      CASE
                                          WHEN D.DATA_ID IS NULL AND
                                               TRIM(A.G_INIT_CRED_NAME || A.G_INIT_CRED_ORG_NM ||
                                                    A.G_ORIG_DBT_CATE ||
                                                    A.G_INIT_RPY_STS) IS NULL THEN
                                              '0'
                                          ELSE
                                              '1'
                                          END                                             AS N_G_UPDATE_FLAG,
                                      --H段
                                      CASE
                                          WHEN D.DATA_ID IS NULL AND
                                               TRIM(A.H_MONTH || A.H_SETT_DATE || A.H_ACCT_STATUS ||
                                                    A.H_ACCT_BAL_LCY ||
                                                    A.H_PRID_ACCT_BAL_LCY || A.H_USED_AMT_LCY ||
                                                    A.H_NOTLSU_BAL_LCY ||
                                                    A.H_REM_REP_PRD || A.H_FIVE_CATE || A.H_FIVE_CATE_ADJ_DATE ||
                                                    A.H_RPY_STATUS || A.H_RPY_PRCT || A.H_OVERD_PRD ||
                                                    A.H_TOT_OVERD_LCY || A.H_OVAER_PRINC_LCY ||
                                                    A.H_OVERD31_60PRINC_LCY ||
                                                    A.H_OVERD61_90PRINC_LCY || A.H_OVERD91_180PRINC_LCY ||
                                                    A.H_OVERD_PRINC180_LCY || A.H_OVERD_RAW_BA_OVE180_LCY ||
                                                    A.H_CUR_RPY_AMT_LCY || A.H_ACT_RPY_AMT_LCY ||
                                                    A.H_LAT_RPY_DATE ||
                                                    A.H_CLOSE_DATE) IS NULL THEN
                                              '0'
                                          ELSE
                                              '1'
                                          END                                             AS N_H_UPDATE_FLAG,
                                      --I段
                                      CASE
                                          WHEN D.DATA_ID IS NULL AND
                                               TRIM(A.I_SPEC_LINE_LCY || A.I_SPEC_EFCT_DATE || A.I_SPEC_END_DATE ||
                                                    A.I_USED_INST_AMT_LCY) IS NULL THEN
                                              '0'
                                          ELSE
                                              '1'
                                          END                                             AS N_I_UPDATE_FLAG,
                                      --J段
                                      CASE
                                          WHEN D.DATA_ID IS NULL AND
                                               TRIM(A.J_ACCT_STATUS || A.J_ACCT_BAL_LCY || A.J_FIVE_CATE ||
                                                    A.J_FIVE_CATE_ADJ_DATE || A.J_REM_REP_PRD || A.J_RPY_STATUS ||
                                                    A.J_OVERD_PRD || A.J_TOT_OVERD_LCY || A.J_LAT_RPY_AMT_LCY ||
                                                    A.J_LAT_RPY_DATE || A.J_CLOSE_DATE) IS NULL THEN
                                              '0'
                                          ELSE
                                              '1'
                                          END                                             AS N_J_UPDATE_FLAG,
                                      --ods的数据在mbt中有
                                      --计算段上报标识
                                      --C段
                                   /*CASE
                                       WHEN D.DATA_ID IS NOT NULL AND
                                            TRIM(A.C_BUSI_LINES || A.C_BUSI_DTL_LINES || A.C_OPEN_DATE ||
                                                 A.C_CY ||
                                                 A.C_ACCT_CRED_LINE_AMT || A.C_LOAN_AMT || A.C_FLAG ||
                                                 A.C_DUE_DATE ||
                                                 A.C_REPAY_MODE || A.C_REPAY_FREQCY || A.C_REPAY_PRD ||
                                                 A.C_APPLY_BUSI_DIST || A.C_GUAR_MODE || A.C_OTH_REPY_GUAR_WAY ||
                                                 A.C_ASSET_TRAND_FLAG || A.C_FUND_SOU || A.C_LOAN_FORM ||
                                                 A.C_CREDIT_ID || A.C_LOAN_CON_CODE || A.C_FIRST_HOU_LOAN_FLAG ||
                                                 A.C_ACCT_CRED_LINE_AMT_LCY || A.C_LOAN_AMT_LCY) IS NOT NULL THEN*/
                                      CASE
                                          WHEN nvl(A.C_BUSI_LINES || A.C_BUSI_DTL_LINES || A.C_OPEN_DATE ||
                                                   A.C_CY ||
                                                   A.C_ACCT_CRED_LINE_AMT || A.C_LOAN_AMT || A.C_FLAG ||
                                                   A.C_DUE_DATE ||
                                                   A.C_REPAY_MODE || A.C_REPAY_FREQCY || A.C_REPAY_PRD ||
                                                   A.C_APPLY_BUSI_DIST || A.C_GUAR_MODE ||
                                                   A.C_OTH_REPY_GUAR_WAY ||
                                                   A.C_ASSET_TRAND_FLAG || A.C_FUND_SOU || A.C_LOAN_FORM ||
                                                   A.C_CREDIT_ID || A.C_LOAN_CON_CODE ||
                                                   A.C_FIRST_HOU_LOAN_FLAG ||
                                                   A.C_ACCT_CRED_LINE_AMT_LCY || A.C_LOAN_AMT_LCY, 0) <>
                                               nvl(B.C_BUSI_LINES || B.C_BUSI_DTL_LINES || B.C_OPEN_DATE ||
                                                   B.C_CY ||
                                                   B.C_ACCT_CRED_LINE_AMT || B.C_LOAN_AMT || B.C_FLAG ||
                                                   B.C_DUE_DATE ||
                                                   B.C_REPAY_MODE || B.C_REPAY_FREQCY || B.C_REPAY_PRD ||
                                                   B.C_APPLY_BUSI_DIST || B.C_GUAR_MODE ||
                                                   B.C_OTH_REPY_GUAR_WAY ||
                                                   B.C_ASSET_TRAND_FLAG || B.C_FUND_SOU || B.C_LOAN_FORM ||
                                                   B.C_CREDIT_ID || B.C_LOAN_CON_CODE ||
                                                   B.C_FIRST_HOU_LOAN_FLAG ||
                                                   B.C_ACCT_CRED_LINE_AMT_LCY || B.C_LOAN_AMT_LCY, 0)
                                              THEN
                                              CASE
                                                  WHEN nvl(A.C_BUSI_LINES || A.C_BUSI_DTL_LINES ||
                                                           A.C_OPEN_DATE ||
                                                           A.C_CY ||
                                                           A.C_ACCT_CRED_LINE_AMT || A.C_LOAN_AMT ||
                                                           A.C_FLAG ||
                                                           A.C_DUE_DATE ||
                                                           A.C_REPAY_MODE || A.C_REPAY_FREQCY ||
                                                           A.C_REPAY_PRD ||
                                                           A.C_APPLY_BUSI_DIST || A.C_GUAR_MODE ||
                                                           A.C_OTH_REPY_GUAR_WAY ||
                                                           A.C_ASSET_TRAND_FLAG || A.C_FUND_SOU ||
                                                           A.C_LOAN_FORM ||
                                                           A.C_CREDIT_ID || A.C_LOAN_CON_CODE ||
                                                           A.C_FIRST_HOU_LOAN_FLAG ||
                                                           A.C_ACCT_CRED_LINE_AMT_LCY || A.C_LOAN_AMT_LCY, 0) <>
                                                       nvl(C.C_BUSI_LINES || C.C_BUSI_DTL_LINES ||
                                                           C.C_OPEN_DATE ||
                                                           C.C_CY ||
                                                           C.C_ACCT_CRED_LINE_AMT || C.C_LOAN_AMT ||
                                                           C.C_FLAG ||
                                                           C.C_DUE_DATE ||
                                                           C.C_REPAY_MODE || C.C_REPAY_FREQCY ||
                                                           C.C_REPAY_PRD ||
                                                           C.C_APPLY_BUSI_DIST || C.C_GUAR_MODE ||
                                                           C.C_OTH_REPY_GUAR_WAY ||
                                                           C.C_ASSET_TRAND_FLAG || C.C_FUND_SOU ||
                                                           C.C_LOAN_FORM ||
                                                           C.C_CREDIT_ID || C.C_LOAN_CON_CODE ||
                                                           C.C_FIRST_HOU_LOAN_FLAG ||
                                                           C.C_ACCT_CRED_LINE_AMT_LCY || C.C_LOAN_AMT_LCY, 0)
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
                                          END*/ AS C_UPDATE_FLAG,
                                      --F段
                                   /*CASE
                                       WHEN D.DATA_ID IS NOT NULL AND TRIM(A.F_MCC) IS NOT NULL THEN*/
                                      CASE
                                          WHEN nvl(A.F_MCC, 0) <> nvl(B.F_MCC, 0)
                                              THEN
                                              CASE
                                                  WHEN nvl(A.F_MCC, 0) <> nvl(C.F_MCC, 0)
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
                                          END*/ AS F_UPDATE_FLAG,
                                      --G段
                                   /*CASE
                                       WHEN D.DATA_ID IS NOT NULL AND
                                            TRIM(A.G_INIT_CRED_NAME || A.G_INIT_CRED_ORG_NM ||
                                                 A.G_ORIG_DBT_CATE ||
                                                 A.G_INIT_RPY_STS) IS NOT NULL THEN*/
                                      CASE
                                          WHEN
                                                  nvl(A.G_INIT_CRED_NAME || A.G_INIT_CRED_ORG_NM ||
                                                      A.G_ORIG_DBT_CATE ||
                                                      A.G_INIT_RPY_STS, 0) <>
                                                  nvl(B.G_INIT_CRED_NAME || B.G_INIT_CRED_ORG_NM ||
                                                      B.G_ORIG_DBT_CATE ||
                                                      B.G_INIT_RPY_STS, 0)
                                              THEN
                                              CASE
                                                  WHEN nvl(A.G_INIT_CRED_NAME || A.G_INIT_CRED_ORG_NM ||
                                                           A.G_ORIG_DBT_CATE ||
                                                           A.G_INIT_RPY_STS, 0) <>
                                                       nvl(C.G_INIT_CRED_NAME || C.G_INIT_CRED_ORG_NM ||
                                                           C.G_ORIG_DBT_CATE ||
                                                           C.G_INIT_RPY_STS, 0)
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
                                          END*/ AS G_UPDATE_FLAG,
                                      --H段
                                   /*CASE
                                       WHEN D.DATA_ID IS NOT NULL AND
                                            TRIM(A.H_MONTH || A.H_SETT_DATE || A.H_ACCT_STATUS ||
                                                 A.H_ACCT_BAL_LCY ||
                                                 A.H_PRID_ACCT_BAL_LCY || A.H_USED_AMT_LCY ||
                                                 A.H_NOTLSU_BAL_LCY ||
                                                 A.H_REM_REP_PRD || A.H_FIVE_CATE || A.H_FIVE_CATE_ADJ_DATE ||
                                                 A.H_RPY_STATUS || A.H_RPY_PRCT || A.H_OVERD_PRD ||
                                                 A.H_TOT_OVERD_LCY || A.H_OVAER_PRINC_LCY ||
                                                 A.H_OVERD31_60PRINC_LCY ||
                                                 A.H_OVERD61_90PRINC_LCY || A.H_OVERD91_180PRINC_LCY ||
                                                 A.H_OVERD_PRINC180_LCY || A.H_OVERD_RAW_BA_OVE180_LCY ||
                                                 A.H_CUR_RPY_AMT_LCY || A.H_ACT_RPY_AMT_LCY ||
                                                 A.H_LAT_RPY_DATE ||
                                                 A.H_CLOSE_DATE) IS NOT NULL THEN*/
                                      CASE
                                          WHEN
                                                  nvl(A.H_MONTH || A.H_SETT_DATE || A.H_ACCT_STATUS ||
                                                      A.H_ACCT_BAL_LCY ||
                                                      A.H_PRID_ACCT_BAL_LCY || A.H_USED_AMT_LCY ||
                                                      A.H_NOTLSU_BAL_LCY ||
                                                      A.H_REM_REP_PRD || A.H_FIVE_CATE ||
                                                      A.H_FIVE_CATE_ADJ_DATE ||
                                                      A.H_RPY_STATUS || A.H_RPY_PRCT || A.H_OVERD_PRD ||
                                                      A.H_TOT_OVERD_LCY || A.H_OVAER_PRINC_LCY ||
                                                      A.H_OVERD31_60PRINC_LCY ||
                                                      A.H_OVERD61_90PRINC_LCY || A.H_OVERD91_180PRINC_LCY ||
                                                      A.H_OVERD_PRINC180_LCY || A.H_OVERD_RAW_BA_OVE180_LCY ||
                                                      A.H_CUR_RPY_AMT_LCY || A.H_ACT_RPY_AMT_LCY ||
                                                      A.H_LAT_RPY_DATE ||
                                                      A.H_CLOSE_DATE, 0) <>
                                                  nvl(B.H_MONTH || B.H_SETT_DATE || B.H_ACCT_STATUS ||
                                                      B.H_ACCT_BAL_LCY ||
                                                      B.H_PRID_ACCT_BAL_LCY || B.H_USED_AMT_LCY ||
                                                      B.H_NOTLSU_BAL_LCY ||
                                                      B.H_REM_REP_PRD || B.H_FIVE_CATE ||
                                                      B.H_FIVE_CATE_ADJ_DATE ||
                                                      B.H_RPY_STATUS || B.H_RPY_PRCT || B.H_OVERD_PRD ||
                                                      B.H_TOT_OVERD_LCY || B.H_OVAER_PRINC_LCY ||
                                                      B.H_OVERD31_60PRINC_LCY ||
                                                      B.H_OVERD61_90PRINC_LCY || B.H_OVERD91_180PRINC_LCY ||
                                                      B.H_OVERD_PRINC180_LCY || B.H_OVERD_RAW_BA_OVE180_LCY ||
                                                      B.H_CUR_RPY_AMT_LCY || B.H_ACT_RPY_AMT_LCY ||
                                                      B.H_LAT_RPY_DATE ||
                                                      B.H_CLOSE_DATE, 0)
                                              THEN
                                              CASE
                                                  WHEN nvl(A.H_MONTH || A.H_SETT_DATE || A.H_ACCT_STATUS ||
                                                           A.H_ACCT_BAL_LCY ||
                                                           A.H_PRID_ACCT_BAL_LCY || A.H_USED_AMT_LCY ||
                                                           A.H_NOTLSU_BAL_LCY ||
                                                           A.H_REM_REP_PRD || A.H_FIVE_CATE ||
                                                           A.H_FIVE_CATE_ADJ_DATE ||
                                                           A.H_RPY_STATUS || A.H_RPY_PRCT || A.H_OVERD_PRD ||
                                                           A.H_TOT_OVERD_LCY || A.H_OVAER_PRINC_LCY ||
                                                           A.H_OVERD31_60PRINC_LCY ||
                                                           A.H_OVERD61_90PRINC_LCY ||
                                                           A.H_OVERD91_180PRINC_LCY ||
                                                           A.H_OVERD_PRINC180_LCY ||
                                                           A.H_OVERD_RAW_BA_OVE180_LCY ||
                                                           A.H_CUR_RPY_AMT_LCY || A.H_ACT_RPY_AMT_LCY ||
                                                           A.H_LAT_RPY_DATE ||
                                                           A.H_CLOSE_DATE, 0) <>
                                                       nvl(C.H_MONTH || C.H_SETT_DATE || C.H_ACCT_STATUS ||
                                                           C.H_ACCT_BAL_LCY ||
                                                           C.H_PRID_ACCT_BAL_LCY || C.H_USED_AMT_LCY ||
                                                           C.H_NOTLSU_BAL_LCY ||
                                                           C.H_REM_REP_PRD || C.H_FIVE_CATE ||
                                                           C.H_FIVE_CATE_ADJ_DATE ||
                                                           C.H_RPY_STATUS || C.H_RPY_PRCT || C.H_OVERD_PRD ||
                                                           C.H_TOT_OVERD_LCY || C.H_OVAER_PRINC_LCY ||
                                                           C.H_OVERD31_60PRINC_LCY ||
                                                           C.H_OVERD61_90PRINC_LCY ||
                                                           C.H_OVERD91_180PRINC_LCY ||
                                                           C.H_OVERD_PRINC180_LCY ||
                                                           C.H_OVERD_RAW_BA_OVE180_LCY ||
                                                           C.H_CUR_RPY_AMT_LCY || C.H_ACT_RPY_AMT_LCY ||
                                                           C.H_LAT_RPY_DATE ||
                                                           C.H_CLOSE_DATE, 0)
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
                                          END*/ AS H_UPDATE_FLAG,
                                      --I段
                                   /*CASE
                                       WHEN D.DATA_ID IS NOT NULL AND
                                            TRIM(A.I_SPEC_LINE_LCY || A.I_SPEC_EFCT_DATE || A.I_SPEC_END_DATE ||
                                                 A.I_USED_INST_AMT_LCY) IS NOT NULL THEN*/
                                      CASE
                                          WHEN
                                                  nvl(A.I_SPEC_LINE_LCY || A.I_SPEC_EFCT_DATE ||
                                                      A.I_SPEC_END_DATE ||
                                                      A.I_USED_INST_AMT_LCY, 0) <>
                                                  nvl(B.I_SPEC_LINE_LCY || B.I_SPEC_EFCT_DATE ||
                                                      B.I_SPEC_END_DATE ||
                                                      B.I_USED_INST_AMT_LCY, 0)
                                              THEN
                                              CASE
                                                  WHEN nvl(A.I_SPEC_LINE_LCY || A.I_SPEC_EFCT_DATE ||
                                                           A.I_SPEC_END_DATE ||
                                                           A.I_USED_INST_AMT_LCY, 0) <>
                                                       nvl(C.I_SPEC_LINE_LCY || C.I_SPEC_EFCT_DATE ||
                                                           C.I_SPEC_END_DATE ||
                                                           C.I_USED_INST_AMT_LCY, 0)
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
                                          END*/ AS I_UPDATE_FLAG,
                                      --J段
                                   /*CASE
                                       WHEN D.DATA_ID IS NOT NULL AND
                                            TRIM(A.J_ACCT_STATUS || A.J_ACCT_BAL_LCY || A.J_FIVE_CATE ||
                                                 A.J_FIVE_CATE_ADJ_DATE || A.J_REM_REP_PRD || A.J_RPY_STATUS ||
                                                 A.J_OVERD_PRD || A.J_TOT_OVERD_LCY || A.J_LAT_RPY_AMT_LCY ||
                                                 A.J_LAT_RPY_DATE || A.J_CLOSE_DATE) IS NOT NULL THEN*/
                                      CASE
                                          WHEN
                                                  nvl(A.J_ACCT_STATUS || A.J_ACCT_BAL_LCY || A.J_FIVE_CATE ||
                                                      A.J_FIVE_CATE_ADJ_DATE || A.J_REM_REP_PRD ||
                                                      A.J_RPY_STATUS ||
                                                      A.J_OVERD_PRD || A.J_TOT_OVERD_LCY ||
                                                      A.J_LAT_RPY_AMT_LCY ||
                                                      A.J_LAT_RPY_DATE || A.J_CLOSE_DATE, 0) <>
                                                  nvl(B.J_ACCT_STATUS || B.J_ACCT_BAL_LCY || B.J_FIVE_CATE ||
                                                      B.J_FIVE_CATE_ADJ_DATE || B.J_REM_REP_PRD ||
                                                      B.J_RPY_STATUS ||
                                                      B.J_OVERD_PRD || B.J_TOT_OVERD_LCY ||
                                                      B.J_LAT_RPY_AMT_LCY ||
                                                      B.J_LAT_RPY_DATE || B.J_CLOSE_DATE, 0)
                                              THEN
                                              CASE
                                                  WHEN nvl(A.J_ACCT_STATUS || A.J_ACCT_BAL_LCY ||
                                                           A.J_FIVE_CATE ||
                                                           A.J_FIVE_CATE_ADJ_DATE || A.J_REM_REP_PRD ||
                                                           A.J_RPY_STATUS ||
                                                           A.J_OVERD_PRD || A.J_TOT_OVERD_LCY ||
                                                           A.J_LAT_RPY_AMT_LCY ||
                                                           A.J_LAT_RPY_DATE || A.J_CLOSE_DATE, 0) <>
                                                       nvl(C.J_ACCT_STATUS || C.J_ACCT_BAL_LCY ||
                                                           C.J_FIVE_CATE ||
                                                           C.J_FIVE_CATE_ADJ_DATE || C.J_REM_REP_PRD ||
                                                           C.J_RPY_STATUS ||
                                                           C.J_OVERD_PRD || C.J_TOT_OVERD_LCY ||
                                                           C.J_LAT_RPY_AMT_LCY ||
                                                           C.J_LAT_RPY_DATE || C.J_CLOSE_DATE, 0)
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
                                          END*/ AS J_UPDATE_FLAG
                               FROM ODS_MBT_210 A
                                        LEFT JOIN --与ods上次数据比较
                                   (SELECT *
                                    FROM (
                                             SELECT ROW_NUMBER()
                                                            OVER (PARTITION BY T.B_ACCT_CODE ORDER BY DATA_DATE DESC) RN,
                                                    T.*
                                             FROM ODS_MBT_210_HIS T
                                             ORDER BY DATA_DATE DESC
                                         )
                                    WHERE RN = 1
                                   ) B ON A.B_ACCT_CODE = B.B_ACCT_CODE
                                        LEFT JOIN --看数据是否已报送过(只和非逾期款项的记录进行比对)
                                   (SELECT *
                                    FROM (SELECT ROW_NUMBER()
                                                         OVER (PARTITION BY B_ACCT_CODE ORDER BY B_RPT_DATE DESC) RN,
                                                 T.*
                                          FROM MBT_210_RPT T
                                          WHERE B_RPT_DATE_CODE <> '40'
                                            AND DATA_STATUS = '27')
                                    WHERE RN = 1
                                   ) C ON A.B_ACCT_CODE = C.B_ACCT_CODE
                                        LEFT JOIN --需要考虑mbt表中有用户新增的和ods中一样的数据
                                   MBT_210 D ON A.B_ACCT_CODE = D.B_ACCT_CODE
                                        LEFT JOIN --新增的情况，为机构赋值
                                   MBT_SECTION_CODE E
                                                  ON D.ORG_ID = E.ORG_ID
                        ) T2
                        ON (T1.B_ACCT_CODE = T2.B_ACCT_CODE)
                        WHEN MATCHED THEN
                            UPDATE
                            SET T1.B_NAME                    = T2.B_NAME,
                                T1.B_ID_TYPE                 = T2.B_ID_TYPE,
                                T1.B_ID_NUM                  = T2.B_ID_NUM,
                                T1.C_LOAN_CON_CODE           = CASE
                                                                   WHEN T2.C_UPDATE_FLAG = '1'
                                                                       THEN T2.C_LOAN_CON_CODE
                                                                   WHEN T2.C_UPDATE_FLAG = '0'
                                                                       THEN T1.C_LOAN_CON_CODE END,
                                T1.C_FIRST_HOU_LOAN_FLAG     = CASE
                                                                   WHEN T2.C_UPDATE_FLAG = '1'
                                                                       THEN T2.C_FIRST_HOU_LOAN_FLAG
                                                                   WHEN T2.C_UPDATE_FLAG = '0'
                                                                       THEN T1.C_FIRST_HOU_LOAN_FLAG END,
                                T1.C_BUSI_LINES              = CASE
                                                                   WHEN T2.C_UPDATE_FLAG = '1'
                                                                       THEN T2.C_BUSI_LINES
                                                                   WHEN T2.C_UPDATE_FLAG = '0'
                                                                       THEN T1.C_BUSI_LINES END,
                                T1.C_BUSI_DTL_LINES          = CASE
                                                                   WHEN T2.C_UPDATE_FLAG = '1'
                                                                       THEN T2.C_BUSI_DTL_LINES
                                                                   WHEN T2.C_UPDATE_FLAG = '0'
                                                                       THEN T1.C_BUSI_DTL_LINES END,
                                T1.C_OPEN_DATE               = CASE
                                                                   WHEN T2.C_UPDATE_FLAG = '1'
                                                                       THEN T2.C_OPEN_DATE
                                                                   WHEN T2.C_UPDATE_FLAG = '0'
                                                                       THEN T1.C_OPEN_DATE END,
                                T1.C_CY                      = CASE
                                                                   WHEN T2.C_UPDATE_FLAG = '1'
                                                                       THEN T2.C_CY
                                                                   WHEN T2.C_UPDATE_FLAG = '0' THEN T1.C_CY END,
                                T1.C_ACCT_CRED_LINE_AMT_LCY  = CASE
                                                                   WHEN T2.C_UPDATE_FLAG = '1'
                                                                       THEN T2.C_ACCT_CRED_LINE_AMT_LCY
                                                                   WHEN T2.C_UPDATE_FLAG = '0'
                                                                       THEN T1.C_ACCT_CRED_LINE_AMT_LCY END,
                                T1.C_ACCT_CRED_LINE_AMT      = CASE
                                                                   WHEN T2.C_UPDATE_FLAG = '1'
                                                                       THEN T2.C_ACCT_CRED_LINE_AMT
                                                                   WHEN T2.C_UPDATE_FLAG = '0'
                                                                       THEN T1.C_ACCT_CRED_LINE_AMT END,
                                T1.C_LOAN_AMT_LCY            = CASE
                                                                   WHEN T2.C_UPDATE_FLAG = '1'
                                                                       THEN T2.C_LOAN_AMT_LCY
                                                                   WHEN T2.C_UPDATE_FLAG = '0'
                                                                       THEN T1.C_LOAN_AMT_LCY END,
                                T1.C_LOAN_AMT                = CASE
                                                                   WHEN T2.C_UPDATE_FLAG = '1'
                                                                       THEN T2.C_LOAN_AMT
                                                                   WHEN T2.C_UPDATE_FLAG = '0'
                                                                       THEN T1.C_LOAN_AMT END,
                                T1.C_FLAG                    = CASE
                                                                   WHEN T2.C_UPDATE_FLAG = '1'
                                                                       THEN T2.C_FLAG
                                                                   WHEN T2.C_UPDATE_FLAG = '0' THEN T1.C_FLAG END,
                                T1.C_DUE_DATE                = CASE
                                                                   WHEN T2.C_UPDATE_FLAG = '1'
                                                                       THEN T2.C_DUE_DATE
                                                                   WHEN T2.C_UPDATE_FLAG = '0'
                                                                       THEN T1.C_DUE_DATE END,
                                T1.C_REPAY_MODE              = CASE
                                                                   WHEN T2.C_UPDATE_FLAG = '1'
                                                                       THEN T2.C_REPAY_MODE
                                                                   WHEN T2.C_UPDATE_FLAG = '0'
                                                                       THEN T1.C_REPAY_MODE END,
                                T1.C_REPAY_FREQCY            = CASE
                                                                   WHEN T2.C_UPDATE_FLAG = '1'
                                                                       THEN T2.C_REPAY_FREQCY
                                                                   WHEN T2.C_UPDATE_FLAG = '0'
                                                                       THEN T1.C_REPAY_FREQCY END,
                                T1.C_REPAY_PRD               = CASE
                                                                   WHEN T2.C_UPDATE_FLAG = '1'
                                                                       THEN T2.C_REPAY_PRD
                                                                   WHEN T2.C_UPDATE_FLAG = '0'
                                                                       THEN T1.C_REPAY_PRD END,
                                T1.C_APPLY_BUSI_DIST         = CASE
                                                                   WHEN T2.C_UPDATE_FLAG = '1'
                                                                       THEN T2.C_APPLY_BUSI_DIST
                                                                   WHEN T2.C_UPDATE_FLAG = '0'
                                                                       THEN T1.C_APPLY_BUSI_DIST END,
                                T1.C_GUAR_MODE               = CASE
                                                                   WHEN T2.C_UPDATE_FLAG = '1'
                                                                       THEN T2.C_GUAR_MODE
                                                                   WHEN T2.C_UPDATE_FLAG = '0'
                                                                       THEN T1.C_GUAR_MODE END,
                                T1.C_OTH_REPY_GUAR_WAY       = CASE
                                                                   WHEN T2.C_UPDATE_FLAG = '1'
                                                                       THEN T2.C_OTH_REPY_GUAR_WAY
                                                                   WHEN T2.C_UPDATE_FLAG = '0'
                                                                       THEN T1.C_OTH_REPY_GUAR_WAY END,
                                T1.C_ASSET_TRAND_FLAG        = CASE
                                                                   WHEN T2.C_UPDATE_FLAG = '1'
                                                                       THEN T2.C_ASSET_TRAND_FLAG
                                                                   WHEN T2.C_UPDATE_FLAG = '0'
                                                                       THEN T1.C_ASSET_TRAND_FLAG END,
                                T1.C_FUND_SOU                = CASE
                                                                   WHEN T2.C_UPDATE_FLAG = '1'
                                                                       THEN T2.C_FUND_SOU
                                                                   WHEN T2.C_UPDATE_FLAG = '0'
                                                                       THEN T1.C_FUND_SOU END,
                                T1.C_LOAN_FORM               = CASE
                                                                   WHEN T2.C_UPDATE_FLAG = '1'
                                                                       THEN T2.C_LOAN_FORM
                                                                   WHEN T2.C_UPDATE_FLAG = '0'
                                                                       THEN T1.C_LOAN_FORM END,
                                T1.C_CREDIT_ID               = CASE
                                                                   WHEN T2.C_UPDATE_FLAG = '1'
                                                                       THEN T2.C_CREDIT_ID
                                                                   WHEN T2.C_UPDATE_FLAG = '0'
                                                                       THEN T1.C_CREDIT_ID END,
                                T1.F_MCC                     = CASE
                                                                   WHEN T2.F_UPDATE_FLAG = '1'
                                                                       THEN T2.F_MCC
                                                                   WHEN T2.F_UPDATE_FLAG = '0' THEN T1.F_MCC END,
                                T1.G_INIT_CRED_NAME          = CASE
                                                                   WHEN T2.G_UPDATE_FLAG = '1'
                                                                       THEN T2.G_INIT_CRED_NAME
                                                                   WHEN T2.G_UPDATE_FLAG = '0'
                                                                       THEN T1.G_INIT_CRED_NAME END,
                                T1.G_INIT_CRED_ORG_NM        = CASE
                                                                   WHEN T2.G_UPDATE_FLAG = '1'
                                                                       THEN T2.G_INIT_CRED_ORG_NM
                                                                   WHEN T2.G_UPDATE_FLAG = '0'
                                                                       THEN T1.G_INIT_CRED_ORG_NM END,
                                T1.G_ORIG_DBT_CATE           = CASE
                                                                   WHEN T2.G_UPDATE_FLAG = '1'
                                                                       THEN T2.G_ORIG_DBT_CATE
                                                                   WHEN T2.G_UPDATE_FLAG = '0'
                                                                       THEN T1.G_ORIG_DBT_CATE END,
                                T1.G_INIT_RPY_STS            = CASE
                                                                   WHEN T2.G_UPDATE_FLAG = '1'
                                                                       THEN T2.G_INIT_RPY_STS
                                                                   WHEN T2.G_UPDATE_FLAG = '0'
                                                                       THEN T1.G_INIT_RPY_STS END,
                                T1.H_MONTH                   = CASE
                                                                   WHEN T2.H_UPDATE_FLAG = '1'
                                                                       THEN T2.H_MONTH
                                                                   WHEN T2.H_UPDATE_FLAG = '0' THEN T1.H_MONTH END,
                                T1.H_SETT_DATE               = CASE
                                                                   WHEN T2.H_UPDATE_FLAG = '1'
                                                                       THEN T2.H_SETT_DATE
                                                                   WHEN T2.H_UPDATE_FLAG = '0'
                                                                       THEN T1.H_SETT_DATE END,
                                T1.H_ACCT_STATUS             = CASE
                                                                   WHEN T2.H_UPDATE_FLAG = '1'
                                                                       THEN T2.H_ACCT_STATUS
                                                                   WHEN T2.H_UPDATE_FLAG = '0'
                                                                       THEN T1.H_ACCT_STATUS END,
                                T1.H_ACCT_BAL_LCY            = CASE
                                                                   WHEN T2.H_UPDATE_FLAG = '1'
                                                                       THEN T2.H_ACCT_BAL_LCY
                                                                   WHEN T2.H_UPDATE_FLAG = '0'
                                                                       THEN T1.H_ACCT_BAL_LCY END,
                                T1.H_ACCT_BAL                = CASE
                                                                   WHEN T2.H_UPDATE_FLAG = '1'
                                                                       THEN T2.H_ACCT_BAL
                                                                   WHEN T2.H_UPDATE_FLAG = '0'
                                                                       THEN T1.H_ACCT_BAL END,
                                T1.H_PRID_ACCT_BAL_LCY       = CASE
                                                                   WHEN T2.H_UPDATE_FLAG = '1'
                                                                       THEN T2.H_PRID_ACCT_BAL_LCY
                                                                   WHEN T2.H_UPDATE_FLAG = '0'
                                                                       THEN T1.H_PRID_ACCT_BAL_LCY END,
                                T1.H_PRID_ACCT_BAL           = CASE
                                                                   WHEN T2.H_UPDATE_FLAG = '1'
                                                                       THEN T2.H_PRID_ACCT_BAL
                                                                   WHEN T2.H_UPDATE_FLAG = '0'
                                                                       THEN T1.H_PRID_ACCT_BAL END,
                                T1.H_USED_AMT_LCY            = CASE
                                                                   WHEN T2.H_UPDATE_FLAG = '1'
                                                                       THEN T2.H_USED_AMT_LCY
                                                                   WHEN T2.H_UPDATE_FLAG = '0'
                                                                       THEN T1.H_USED_AMT_LCY END,
                                T1.H_USED_AMT                = CASE
                                                                   WHEN T2.H_UPDATE_FLAG = '1'
                                                                       THEN T2.H_USED_AMT
                                                                   WHEN T2.H_UPDATE_FLAG = '0'
                                                                       THEN T1.H_USED_AMT END,
                                T1.H_NOTLSU_BAL_LCY          = CASE
                                                                   WHEN T2.H_UPDATE_FLAG = '1'
                                                                       THEN T2.H_NOTLSU_BAL_LCY
                                                                   WHEN T2.H_UPDATE_FLAG = '0'
                                                                       THEN T1.H_NOTLSU_BAL_LCY END,
                                T1.H_NOTLSU_BAL              = CASE
                                                                   WHEN T2.H_UPDATE_FLAG = '1'
                                                                       THEN T2.H_NOTLSU_BAL
                                                                   WHEN T2.H_UPDATE_FLAG = '0'
                                                                       THEN T1.H_NOTLSU_BAL END,
                                T1.H_REM_REP_PRD             = CASE
                                                                   WHEN T2.H_UPDATE_FLAG = '1'
                                                                       THEN T2.H_REM_REP_PRD
                                                                   WHEN T2.H_UPDATE_FLAG = '0'
                                                                       THEN T1.H_REM_REP_PRD END,
                                T1.H_FIVE_CATE               = CASE
                                                                   WHEN T2.H_UPDATE_FLAG = '1'
                                                                       THEN T2.H_FIVE_CATE
                                                                   WHEN T2.H_UPDATE_FLAG = '0'
                                                                       THEN T1.H_FIVE_CATE END,
                                T1.H_FIVE_CATE_ADJ_DATE      = CASE
                                                                   WHEN T2.H_UPDATE_FLAG = '1'
                                                                       THEN T2.H_FIVE_CATE_ADJ_DATE
                                                                   WHEN T2.H_UPDATE_FLAG = '0'
                                                                       THEN T1.H_FIVE_CATE_ADJ_DATE END,
                                T1.H_RPY_STATUS              = CASE
                                                                   WHEN T2.H_UPDATE_FLAG = '1'
                                                                       THEN T2.H_RPY_STATUS
                                                                   WHEN T2.H_UPDATE_FLAG = '0'
                                                                       THEN T1.H_RPY_STATUS END,
                                T1.H_RPY_PRCT                = CASE
                                                                   WHEN T2.H_UPDATE_FLAG = '1'
                                                                       THEN T2.H_RPY_PRCT
                                                                   WHEN T2.H_UPDATE_FLAG = '0'
                                                                       THEN T1.H_RPY_PRCT END,
                                T1.H_OVERD_PRD               = CASE
                                                                   WHEN T2.H_UPDATE_FLAG = '1'
                                                                       THEN T2.H_OVERD_PRD
                                                                   WHEN T2.H_UPDATE_FLAG = '0'
                                                                       THEN T1.H_OVERD_PRD END,
                                T1.H_TOT_OVERD_LCY           = CASE
                                                                   WHEN T2.H_UPDATE_FLAG = '1'
                                                                       THEN T2.H_TOT_OVERD_LCY
                                                                   WHEN T2.H_UPDATE_FLAG = '0'
                                                                       THEN T1.H_TOT_OVERD_LCY END,
                                T1.H_TOT_OVERD               = CASE
                                                                   WHEN T2.H_UPDATE_FLAG = '1'
                                                                       THEN T2.H_TOT_OVERD
                                                                   WHEN T2.H_UPDATE_FLAG = '0'
                                                                       THEN T1.H_TOT_OVERD END,
                                T1.H_OVAER_PRINC_LCY         = CASE
                                                                   WHEN T2.H_UPDATE_FLAG = '1'
                                                                       THEN T2.H_OVAER_PRINC_LCY
                                                                   WHEN T2.H_UPDATE_FLAG = '0'
                                                                       THEN T1.H_OVAER_PRINC_LCY END,
                                T1.H_OVAER_PRINC             = CASE
                                                                   WHEN T2.H_UPDATE_FLAG = '1'
                                                                       THEN T2.H_OVAER_PRINC
                                                                   WHEN T2.H_UPDATE_FLAG = '0'
                                                                       THEN T1.H_OVAER_PRINC END,
                                T1.H_OVERD31_60PRINC_LCY     = CASE
                                                                   WHEN T2.H_UPDATE_FLAG = '1'
                                                                       THEN T2.H_OVERD31_60PRINC_LCY
                                                                   WHEN T2.H_UPDATE_FLAG = '0'
                                                                       THEN T1.H_OVERD31_60PRINC_LCY END,
                                T1.H_OVERD31_60PRINC         = CASE
                                                                   WHEN T2.H_UPDATE_FLAG = '1'
                                                                       THEN T2.H_OVERD31_60PRINC
                                                                   WHEN T2.H_UPDATE_FLAG = '0'
                                                                       THEN T1.H_OVERD31_60PRINC END,
                                T1.H_OVERD61_90PRINC_LCY     = CASE
                                                                   WHEN T2.H_UPDATE_FLAG = '1'
                                                                       THEN T2.H_OVERD61_90PRINC_LCY
                                                                   WHEN T2.H_UPDATE_FLAG = '0'
                                                                       THEN T1.H_OVERD61_90PRINC_LCY END,
                                T1.H_OVERD61_90PRINC         = CASE
                                                                   WHEN T2.H_UPDATE_FLAG = '1'
                                                                       THEN T2.H_OVERD61_90PRINC
                                                                   WHEN T2.H_UPDATE_FLAG = '0'
                                                                       THEN T1.H_OVERD61_90PRINC END,
                                T1.H_OVERD91_180PRINC_LCY    = CASE
                                                                   WHEN T2.H_UPDATE_FLAG = '1'
                                                                       THEN T2.H_OVERD91_180PRINC_LCY
                                                                   WHEN T2.H_UPDATE_FLAG = '0'
                                                                       THEN T1.H_OVERD91_180PRINC_LCY END,
                                T1.H_OVERD91_180PRINC        = CASE
                                                                   WHEN T2.H_UPDATE_FLAG = '1'
                                                                       THEN T2.H_OVERD91_180PRINC
                                                                   WHEN T2.H_UPDATE_FLAG = '0'
                                                                       THEN T1.H_OVERD91_180PRINC END,
                                T1.H_OVERD_PRINC180_LCY      = CASE
                                                                   WHEN T2.H_UPDATE_FLAG = '1'
                                                                       THEN T2.H_OVERD_PRINC180_LCY
                                                                   WHEN T2.H_UPDATE_FLAG = '0'
                                                                       THEN T1.H_OVERD_PRINC180_LCY END,
                                T1.H_OVERD_PRINC180          = CASE
                                                                   WHEN T2.H_UPDATE_FLAG = '1'
                                                                       THEN T2.H_OVERD_PRINC180
                                                                   WHEN T2.H_UPDATE_FLAG = '0'
                                                                       THEN T1.H_OVERD_PRINC180 END,
                                T1.H_OVERD_RAW_BA_OVE180_LCY = CASE
                                                                   WHEN T2.H_UPDATE_FLAG = '1'
                                                                       THEN T2.H_OVERD_RAW_BA_OVE180_LCY
                                                                   WHEN T2.H_UPDATE_FLAG = '0'
                                                                       THEN T1.H_OVERD_RAW_BA_OVE180_LCY END,
                                T1.H_OVERD_RAW_BA_OVE180     = CASE
                                                                   WHEN T2.H_UPDATE_FLAG = '1'
                                                                       THEN T2.H_OVERD_RAW_BA_OVE180
                                                                   WHEN T2.H_UPDATE_FLAG = '0'
                                                                       THEN T1.H_OVERD_RAW_BA_OVE180 END,
                                T1.H_CUR_RPY_AMT_LCY         = CASE
                                                                   WHEN T2.H_UPDATE_FLAG = '1'
                                                                       THEN T2.H_CUR_RPY_AMT_LCY
                                                                   WHEN T2.H_UPDATE_FLAG = '0'
                                                                       THEN T1.H_CUR_RPY_AMT_LCY END,
                                T1.H_CUR_RPY_AMT             = CASE
                                                                   WHEN T2.H_UPDATE_FLAG = '1'
                                                                       THEN T2.H_CUR_RPY_AMT
                                                                   WHEN T2.H_UPDATE_FLAG = '0'
                                                                       THEN T1.H_CUR_RPY_AMT END,
                                T1.H_ACT_RPY_AMT_LCY         = CASE
                                                                   WHEN T2.H_UPDATE_FLAG = '1'
                                                                       THEN T2.H_ACT_RPY_AMT_LCY
                                                                   WHEN T2.H_UPDATE_FLAG = '0'
                                                                       THEN T1.H_ACT_RPY_AMT_LCY END,
                                T1.H_ACT_RPY_AMT             = CASE
                                                                   WHEN T2.H_UPDATE_FLAG = '1'
                                                                       THEN T2.H_ACT_RPY_AMT
                                                                   WHEN T2.H_UPDATE_FLAG = '0'
                                                                       THEN T1.H_ACT_RPY_AMT END,
                                T1.H_LAT_RPY_DATE            = CASE
                                                                   WHEN T2.H_UPDATE_FLAG = '1'
                                                                       THEN T2.H_LAT_RPY_DATE
                                                                   WHEN T2.H_UPDATE_FLAG = '0'
                                                                       THEN T1.H_LAT_RPY_DATE END,
                                T1.H_CLOSE_DATE              = CASE
                                                                   WHEN T2.H_UPDATE_FLAG = '1'
                                                                       THEN T2.H_CLOSE_DATE
                                                                   WHEN T2.H_UPDATE_FLAG = '0'
                                                                       THEN T1.H_CLOSE_DATE END,
                                T1.I_SPEC_LINE_LCY           = CASE
                                                                   WHEN T2.I_UPDATE_FLAG = '1'
                                                                       THEN T2.I_SPEC_LINE_LCY
                                                                   WHEN T2.I_UPDATE_FLAG = '0'
                                                                       THEN T1.I_SPEC_LINE_LCY END,
                                T1.I_SPEC_LINE               = CASE
                                                                   WHEN T2.I_UPDATE_FLAG = '1'
                                                                       THEN T2.I_SPEC_LINE
                                                                   WHEN T2.I_UPDATE_FLAG = '0'
                                                                       THEN T1.I_SPEC_LINE END,
                                T1.I_SPEC_EFCT_DATE          = CASE
                                                                   WHEN T2.I_UPDATE_FLAG = '1'
                                                                       THEN T2.I_SPEC_EFCT_DATE
                                                                   WHEN T2.I_UPDATE_FLAG = '0'
                                                                       THEN T1.I_SPEC_EFCT_DATE END,
                                T1.I_SPEC_END_DATE           = CASE
                                                                   WHEN T2.I_UPDATE_FLAG = '1'
                                                                       THEN T2.I_SPEC_END_DATE
                                                                   WHEN T2.I_UPDATE_FLAG = '0'
                                                                       THEN T1.I_SPEC_END_DATE END,
                                T1.I_USED_INST_AMT_LCY       = CASE
                                                                   WHEN T2.I_UPDATE_FLAG = '1'
                                                                       THEN T2.I_USED_INST_AMT_LCY
                                                                   WHEN T2.I_UPDATE_FLAG = '0'
                                                                       THEN T1.I_USED_INST_AMT_LCY END,
                                T1.I_USED_INST_AMT           = CASE
                                                                   WHEN T2.I_UPDATE_FLAG = '1'
                                                                       THEN T2.I_USED_INST_AMT
                                                                   WHEN T2.I_UPDATE_FLAG = '0'
                                                                       THEN T1.I_USED_INST_AMT END,
                                T1.J_ACCT_STATUS             = CASE
                                                                   WHEN T2.J_UPDATE_FLAG = '1'
                                                                       THEN T2.J_ACCT_STATUS
                                                                   WHEN T2.J_UPDATE_FLAG = '0'
                                                                       THEN T1.J_ACCT_STATUS END,
                                T1.J_ACCT_BAL_LCY            = CASE
                                                                   WHEN T2.J_UPDATE_FLAG = '1'
                                                                       THEN T2.J_ACCT_BAL_LCY
                                                                   WHEN T2.J_UPDATE_FLAG = '0'
                                                                       THEN T1.J_ACCT_BAL_LCY END,
                                T1.J_ACCT_BAL                = CASE
                                                                   WHEN T2.J_UPDATE_FLAG = '1'
                                                                       THEN T2.J_ACCT_BAL
                                                                   WHEN T2.J_UPDATE_FLAG = '0'
                                                                       THEN T1.J_ACCT_BAL END,
                                T1.J_FIVE_CATE               = CASE
                                                                   WHEN T2.J_UPDATE_FLAG = '1'
                                                                       THEN T2.J_FIVE_CATE
                                                                   WHEN T2.J_UPDATE_FLAG = '0'
                                                                       THEN T1.J_FIVE_CATE END,
                                T1.J_FIVE_CATE_ADJ_DATE      = CASE
                                                                   WHEN T2.J_UPDATE_FLAG = '1'
                                                                       THEN T2.J_FIVE_CATE_ADJ_DATE
                                                                   WHEN T2.J_UPDATE_FLAG = '0'
                                                                       THEN T1.J_FIVE_CATE_ADJ_DATE END,
                                T1.J_REM_REP_PRD             = CASE
                                                                   WHEN T2.J_UPDATE_FLAG = '1'
                                                                       THEN T2.J_REM_REP_PRD
                                                                   WHEN T2.J_UPDATE_FLAG = '0'
                                                                       THEN T1.J_REM_REP_PRD END,
                                T1.J_RPY_STATUS              = CASE
                                                                   WHEN T2.J_UPDATE_FLAG = '1'
                                                                       THEN T2.J_RPY_STATUS
                                                                   WHEN T2.J_UPDATE_FLAG = '0'
                                                                       THEN T1.J_RPY_STATUS END,
                                T1.J_OVERD_PRD               = CASE
                                                                   WHEN T2.J_UPDATE_FLAG = '1'
                                                                       THEN T2.J_OVERD_PRD
                                                                   WHEN T2.J_UPDATE_FLAG = '0'
                                                                       THEN T1.J_OVERD_PRD END,
                                T1.J_TOT_OVERD_LCY           = CASE
                                                                   WHEN T2.J_UPDATE_FLAG = '1'
                                                                       THEN T2.J_TOT_OVERD_LCY
                                                                   WHEN T2.J_UPDATE_FLAG = '0'
                                                                       THEN T1.J_TOT_OVERD_LCY END,
                                T1.J_TOT_OVERD               = CASE
                                                                   WHEN T2.J_UPDATE_FLAG = '1'
                                                                       THEN T2.J_TOT_OVERD
                                                                   WHEN T2.J_UPDATE_FLAG = '0'
                                                                       THEN T1.J_TOT_OVERD END,
                                T1.J_LAT_RPY_AMT_LCY         = CASE
                                                                   WHEN T2.J_UPDATE_FLAG = '1'
                                                                       THEN T2.J_LAT_RPY_AMT_LCY
                                                                   WHEN T2.J_UPDATE_FLAG = '0'
                                                                       THEN T1.J_LAT_RPY_AMT_LCY END,
                                T1.J_LAT_RPY_AMT             = CASE
                                                                   WHEN T2.J_UPDATE_FLAG = '1'
                                                                       THEN T2.J_LAT_RPY_AMT
                                                                   WHEN T2.J_UPDATE_FLAG = '0'
                                                                       THEN T1.J_LAT_RPY_AMT END,
                                T1.J_LAT_RPY_DATE            = CASE
                                                                   WHEN T2.J_UPDATE_FLAG = '1'
                                                                       THEN T2.J_LAT_RPY_DATE
                                                                   WHEN T2.J_UPDATE_FLAG = '0'
                                                                       THEN T1.J_LAT_RPY_DATE END,
                                T1.J_CLOSE_DATE              = CASE
                                                                   WHEN T2.J_UPDATE_FLAG = '1'
                                                                       THEN T2.J_CLOSE_DATE
                                                                   WHEN T2.J_UPDATE_FLAG = '0'
                                                                       THEN T1.J_CLOSE_DATE END,
                                T1.IS_RPT                    = GET_ISRPT_CHANGE(T1.IS_RPT,
                                                                                ('1' || T2.C_UPDATE_FLAG ||
                                                                                 T2.F_UPDATE_FLAG ||
                                                                                 T2.G_UPDATE_FLAG ||
                                                                                 T2.H_UPDATE_FLAG ||
                                                                                 T2.I_UPDATE_FLAG ||
                                                                                 T2.J_UPDATE_FLAG ||
                                                                                 '|')),
                                T1.DATA_STATUS               = '00',
                                T1.DATA_SOURCE               = '2',
                                T1.DATA_CHG_USER             = 'SYSTEM',
                                T1.DATA_CHG_DATE             = CURRENTDATE,
                                T1.DATA_CHG_TIME             = CURRENTTIME,
                                T1.B_RPT_DATE                = V_T_DATE,
                                T1.MON_SETTLE_DATE           = T2.NEW_MON_SETTLE_DATE,
                                T1.CUST_NO                   = T2.CUST_NO,
                                T1.B_MNGMT_ORG_CODE          = T2.B_MNGMT_ORG_CODE,
                                T1.GROUP_ID                  = T2.GROUP_ID,
                                T1.CHECK_FLAG                = 'N'
                            --T1.B_RPT_DATE_CODE           = RPT_DATE_CODE_OUT;
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
                             T1.B_ACCT_TYPE,
                             T1.B_ACCT_CODE,
                             T1.B_RPT_DATE,
                             T1.B_RPT_DATE_CODE,
                             T1.B_NAME,
                             T1.B_ID_TYPE,
                             T1.B_ID_NUM,
                             T1.B_MNGMT_ORG_CODE,
                             T1.C_BUSI_LINES,
                             T1.C_BUSI_DTL_LINES,
                             T1.C_OPEN_DATE,
                             T1.C_CY,
                             T1.C_ACCT_CRED_LINE_AMT_LCY,
                             T1.C_ACCT_CRED_LINE_AMT,
                             T1.C_LOAN_AMT_LCY,
                             T1.C_LOAN_AMT,
                             T1.C_FLAG,
                             T1.C_DUE_DATE,
                             T1.C_REPAY_MODE,
                             T1.C_REPAY_FREQCY,
                             T1.C_REPAY_PRD,
                             T1.C_APPLY_BUSI_DIST,
                             T1.C_GUAR_MODE,
                             T1.C_OTH_REPY_GUAR_WAY,
                             T1.C_ASSET_TRAND_FLAG,
                             T1.C_FUND_SOU,
                             T1.C_LOAN_FORM,
                             T1.C_CREDIT_ID,
                             T1.F_MCC,
                             T1.G_INIT_CRED_NAME,
                             T1.G_INIT_CRED_ORG_NM,
                             T1.G_ORIG_DBT_CATE,
                             T1.G_INIT_RPY_STS,
                             T1.H_MONTH,
                             T1.H_SETT_DATE,
                             T1.H_ACCT_STATUS,
                             T1.H_ACCT_BAL_LCY,
                             T1.H_ACCT_BAL,
                             T1.H_PRID_ACCT_BAL_LCY,
                             T1.H_PRID_ACCT_BAL,
                             T1.H_USED_AMT_LCY,
                             T1.H_USED_AMT,
                             T1.H_NOTLSU_BAL_LCY,
                             T1.H_NOTLSU_BAL,
                             T1.H_REM_REP_PRD,
                             T1.H_FIVE_CATE,
                             T1.H_FIVE_CATE_ADJ_DATE,
                             T1.H_RPY_STATUS,
                             T1.H_RPY_PRCT,
                             T1.H_OVERD_PRD,
                             T1.H_TOT_OVERD_LCY,
                             T1.H_TOT_OVERD,
                             T1.H_OVAER_PRINC_LCY,
                             T1.H_OVAER_PRINC,
                             T1.H_OVERD31_60PRINC_LCY,
                             T1.H_OVERD31_60PRINC,
                             T1.H_OVERD61_90PRINC_LCY,
                             T1.H_OVERD61_90PRINC,
                             T1.H_OVERD91_180PRINC_LCY,
                             T1.H_OVERD91_180PRINC,
                             T1.H_OVERD_PRINC180_LCY,
                             T1.H_OVERD_PRINC180,
                             T1.H_OVERD_RAW_BA_OVE180_LCY,
                             T1.H_OVERD_RAW_BA_OVE180,
                             T1.H_CUR_RPY_AMT_LCY,
                             T1.H_CUR_RPY_AMT,
                             T1.H_ACT_RPY_AMT_LCY,
                             T1.H_ACT_RPY_AMT,
                             T1.H_LAT_RPY_DATE,
                             T1.H_CLOSE_DATE,
                             T1.I_SPEC_LINE_LCY,
                             T1.I_SPEC_LINE,
                             T1.I_SPEC_EFCT_DATE,
                             T1.I_SPEC_END_DATE,
                             T1.I_USED_INST_AMT_LCY,
                             T1.I_USED_INST_AMT,
                             T1.J_ACCT_STATUS,
                             T1.J_ACCT_BAL_LCY,
                             T1.J_ACCT_BAL,
                             T1.J_FIVE_CATE,
                             T1.J_FIVE_CATE_ADJ_DATE,
                             T1.J_REM_REP_PRD,
                             T1.J_RPY_STATUS,
                             T1.J_OVERD_PRD,
                             T1.J_TOT_OVERD_LCY,
                             T1.J_TOT_OVERD,
                             T1.J_LAT_RPY_AMT_LCY,
                             T1.J_LAT_RPY_AMT,
                             T1.J_LAT_RPY_DATE,
                             T1.J_CLOSE_DATE,
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
                             T1.MON_SETTLE_DATE,
                             T1.CUST_NO,
                                ---新增B_LOAN_CON_CODE||B_FIRST_HOU_LOAN_FLAG
                             T1.C_LOAN_CON_CODE,
                             T1.C_FIRST_HOU_LOAN_FLAG)

                            VALUES (T2.DATA_ID,
                                    T2.DATA_DATE,
                                    T2.CORP_ID,
                                    T2.ORG_ID,
                                    T2.GROUP_ID,
                                    T2.ORG_ID,
                                    T2.ORG_ID,
                                    '210',
                                    T2.B_ACCT_TYPE,
                                    T2.B_ACCT_CODE,
                                    V_T_DATE,
                                    NULL, --T2.B_RPT_DATE_CODE,
                                    T2.B_NAME,
                                    T2.B_ID_TYPE,
                                    T2.B_ID_NUM,
                                    T2.B_MNGMT_ORG_CODE,
                                    T2.C_BUSI_LINES,
                                    T2.C_BUSI_DTL_LINES,
                                    T2.C_OPEN_DATE,
                                    T2.C_CY,
                                    T2.C_ACCT_CRED_LINE_AMT_LCY,
                                    T2.C_ACCT_CRED_LINE_AMT,
                                    T2.C_LOAN_AMT_LCY,
                                    T2.C_LOAN_AMT,
                                    T2.C_FLAG,
                                    T2.C_DUE_DATE,
                                    T2.C_REPAY_MODE,
                                    T2.C_REPAY_FREQCY,
                                    T2.C_REPAY_PRD,
                                    T2.C_APPLY_BUSI_DIST,
                                    T2.C_GUAR_MODE,
                                    T2.C_OTH_REPY_GUAR_WAY,
                                    T2.C_ASSET_TRAND_FLAG,
                                    T2.C_FUND_SOU,
                                    T2.C_LOAN_FORM,
                                    T2.C_CREDIT_ID,
                                    T2.F_MCC,
                                    T2.G_INIT_CRED_NAME,
                                    T2.G_INIT_CRED_ORG_NM,
                                    T2.G_ORIG_DBT_CATE,
                                    T2.G_INIT_RPY_STS,
                                    T2.H_MONTH,
                                    T2.H_SETT_DATE,
                                    T2.H_ACCT_STATUS,
                                    T2.H_ACCT_BAL_LCY,
                                    T2.H_ACCT_BAL,
                                    T2.H_PRID_ACCT_BAL_LCY,
                                    T2.H_PRID_ACCT_BAL,
                                    T2.H_USED_AMT_LCY,
                                    T2.H_USED_AMT,
                                    T2.H_NOTLSU_BAL_LCY,
                                    T2.H_NOTLSU_BAL,
                                    T2.H_REM_REP_PRD,
                                    T2.H_FIVE_CATE,
                                    T2.H_FIVE_CATE_ADJ_DATE,
                                    T2.H_RPY_STATUS,
                                    T2.H_RPY_PRCT,
                                    T2.H_OVERD_PRD,
                                    T2.H_TOT_OVERD_LCY,
                                    T2.H_TOT_OVERD,
                                    T2.H_OVAER_PRINC_LCY,
                                    T2.H_OVAER_PRINC,
                                    T2.H_OVERD31_60PRINC_LCY,
                                    T2.H_OVERD31_60PRINC,
                                    T2.H_OVERD61_90PRINC_LCY,
                                    T2.H_OVERD61_90PRINC,
                                    T2.H_OVERD91_180PRINC_LCY,
                                    T2.H_OVERD91_180PRINC,
                                    T2.H_OVERD_PRINC180_LCY,
                                    T2.H_OVERD_PRINC180,
                                    T2.H_OVERD_RAW_BA_OVE180_LCY,
                                    T2.H_OVERD_RAW_BA_OVE180,
                                    T2.H_CUR_RPY_AMT_LCY,
                                    T2.H_CUR_RPY_AMT,
                                    T2.H_ACT_RPY_AMT_LCY,
                                    T2.H_ACT_RPY_AMT,
                                    T2.H_LAT_RPY_DATE,
                                    T2.H_CLOSE_DATE,
                                    T2.I_SPEC_LINE_LCY,
                                    T2.I_SPEC_LINE,
                                    T2.I_SPEC_EFCT_DATE,
                                    T2.I_SPEC_END_DATE,
                                    T2.I_USED_INST_AMT_LCY,
                                    T2.I_USED_INST_AMT,
                                    T2.J_ACCT_STATUS,
                                    T2.J_ACCT_BAL_LCY,
                                    T2.J_ACCT_BAL,
                                    T2.J_FIVE_CATE,
                                    T2.J_FIVE_CATE_ADJ_DATE,
                                    T2.J_REM_REP_PRD,
                                    T2.J_RPY_STATUS,
                                    T2.J_OVERD_PRD,
                                    T2.J_TOT_OVERD_LCY,
                                    T2.J_TOT_OVERD,
                                    T2.J_LAT_RPY_AMT_LCY,
                                    T2.J_LAT_RPY_AMT,
                                    T2.J_LAT_RPY_DATE,
                                    T2.J_CLOSE_DATE,
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
                                    ('1' || T2.N_C_UPDATE_FLAG || T2.N_F_UPDATE_FLAG ||
                                     T2.N_G_UPDATE_FLAG || T2.N_H_UPDATE_FLAG ||
                                     T2.N_I_UPDATE_FLAG || T2.N_J_UPDATE_FLAG || '|'),
                                    T2.NEW_MON_SETTLE_DATE,
                                    T2.CUST_NO,
                                       ---新增B_LOAN_CON_CODE||B_FIRST_HOU_LOAN_FLAG
                                    T2.C_LOAN_CON_CODE,
                                    T2.C_FIRST_HOU_LOAN_FLAG);
                    END;

                    DSC := '##修改子表[MBT_210_D]数据##';
                    DBMS_OUTPUT.PUT_LINE(DSC);
                    BEGIN
                        -- 先删除所有相关数据 然后重新插入
                        DELETE
                        FROM MBT_210_D
                        WHERE B_ACCT_CODE IN (SELECT DISTINCT B_ACCT_CODE FROM ODS_MBT_210);
                        --------------------新增数据开始--------------------
                        MERGE INTO MBT_210_D T1
                        USING (SELECT A.DATA_ID,
                                      A.DATA_DATE,
                                      A.D_ARLP_ID_TYPE,
                                      A.D_ARLP_NAME,
                                      A.D_ARLP_CERT_TYPE,
                                      A.D_ARLP_CERT_NUM,
                                      A.D_ARLP_TYPE,
                                      A.D_ARLP_AMT,
                                      A.D_ARLP_AMT_ORG,
                                      A.D_WARTY_SIGN,
                                      A.D_MAX_GUAR_MCC,
                                      A.RSV1,
                                      A.RSV2,
                                      A.RSV3,
                                      A.RSV4,
                                      A.RSV5,
                                      A.B_ACCT_CODE,
                                      C.DATA_ID AS PDATA_ID
                               FROM ODS_MBT_210_D A
                                        LEFT JOIN MBT_210 C
                                                  ON A.B_ACCT_CODE = C.B_ACCT_CODE) T2
                        ON (T1.D_ARLP_ID_TYPE = T2.D_ARLP_ID_TYPE AND T1.D_ARLP_NAME = T2.D_ARLP_NAME AND
                            T1.D_ARLP_CERT_TYPE = T2.D_ARLP_CERT_TYPE AND
                            T1.D_ARLP_CERT_NUM = T2.D_ARLP_CERT_NUM AND
                            T1.D_ARLP_TYPE = T2.D_ARLP_TYPE AND T1.D_WARTY_SIGN = T2.D_WARTY_SIGN AND
                            T1.D_MAX_GUAR_MCC = T2.D_MAX_GUAR_MCC AND T1.B_ACCT_CODE = T2.B_ACCT_CODE)
                        WHEN NOT MATCHED THEN
                            INSERT
                            (T1.DATA_ID,
                             T1.DATA_DATE,
                             T1.PDATA_ID,
                             T1.D_ARLP_ID_TYPE,
                             T1.D_ARLP_NAME,
                             T1.D_ARLP_CERT_TYPE,
                             T1.D_ARLP_CERT_NUM,
                             T1.D_ARLP_TYPE,
                             T1.D_ARLP_AMT,
                             T1.D_ARLP_AMT_ORG,
                             T1.D_WARTY_SIGN,
                             T1.D_MAX_GUAR_MCC,
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
                                    T2.DATA_DATE,
                                    T2.PDATA_ID,
                                    T2.D_ARLP_ID_TYPE,
                                    T2.D_ARLP_NAME,
                                    T2.D_ARLP_CERT_TYPE,
                                    T2.D_ARLP_CERT_NUM,
                                    T2.D_ARLP_TYPE,
                                    T2.D_ARLP_AMT,
                                    T2.D_ARLP_AMT_ORG,
                                    T2.D_WARTY_SIGN,
                                    T2.D_MAX_GUAR_MCC,
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

                        --更改主表数据状态
                        MERGE INTO MBT_210 T1
                        USING (SELECT DISTINCT B.DATA_ID
                               FROM MBT_210_D A
                                        LEFT JOIN MBT_210 B
                                                  ON A.PDATA_ID = B.DATA_ID
                               WHERE A.RSV5 = 'FLAG') T2
                        ON (T1.DATA_ID = T2.DATA_ID)
                        WHEN MATCHED THEN
                            UPDATE SET T1.DATA_STATUS = '00';

                        UPDATE MBT_210_D SET RSV5 = NULL WHERE RSV5 = 'FLAG';
                    END;


                    DSC := '##修改子表[MBT_210_E]数据##';
                    DBMS_OUTPUT.PUT_LINE(DSC);
                    BEGIN
                        -- 先删除所有相关数据 然后重新插入
                        DELETE
                        FROM MBT_210_E
                        WHERE B_ACCT_CODE IN (SELECT DISTINCT B_ACCT_CODE FROM ODS_MBT_210);
                        --------------------新增数据开始--------------------
                        MERGE INTO MBT_210_E T1
                        USING (SELECT A.DATA_ID,
                                      A.DATA_DATE,
                                      A.E_CCC,
                                      A.RSV1,
                                      A.RSV2,
                                      A.RSV3,
                                      A.RSV4,
                                      A.RSV5,
                                      A.B_ACCT_CODE,
                                      C.DATA_ID AS PDATA_ID
                               FROM ODS_MBT_210_E A
                                        LEFT JOIN MBT_210 C
                                                  ON A.B_ACCT_CODE = C.B_ACCT_CODE) T2
                        ON (T1.E_CCC = T2.E_CCC)
                        WHEN NOT MATCHED THEN
                            INSERT
                            (T1.DATA_ID,
                             T1.PDATA_ID,
                             T1.DATA_DATE,
                             T1.E_CCC,
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
                                    T2.E_CCC,
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

                        --更改主表数据状态
                        MERGE INTO MBT_210 T1
                        USING (SELECT DISTINCT B.DATA_ID
                               FROM MBT_210_E A
                                        LEFT JOIN MBT_210 B
                                                  ON A.PDATA_ID = B.DATA_ID
                               WHERE A.RSV5 = 'FLAG') T2
                        ON (T1.DATA_ID = T2.DATA_ID)
                        WHEN MATCHED THEN
                            UPDATE SET T1.DATA_STATUS = '00';

                        UPDATE MBT_210_E SET RSV5 = NULL WHERE RSV5 = 'FLAG';
                    END;


                    DSC := '##修改子表[MBT_210_K]数据##';
                    DBMS_OUTPUT.PUT_LINE(DSC);
                    BEGIN
                        -- 先删除所有相关数据 然后重新插入
                        DELETE
                        FROM MBT_210_K
                        WHERE B_ACCT_CODE IN (SELECT DISTINCT B_ACCT_CODE FROM ODS_MBT_210);
                        --------------------新增数据开始--------------------
                        MERGE INTO MBT_210_K T1
                        USING (SELECT A.DATA_ID,
                                      A.DATA_DATE,
                                      A.REF_NO,
                                      A.K_CHAN_TRAN_TYPE,
                                      A.K_TRAN_DATE,
                                      A.K_TRAN_AMT,
                                      A.K_TRAN_AMT_ORG,
                                      A.K_DUE_TRAN_MON,
                                      A.K_DET_INFO,
                                      A.RSV1,
                                      A.RSV2,
                                      A.RSV3,
                                      A.RSV4,
                                      A.RSV5,
                                      A.B_ACCT_CODE,
                                      C.DATA_ID AS PDATA_ID
                               FROM ODS_MBT_210_K A
                                        LEFT JOIN MBT_210 C
                                                  ON A.B_ACCT_CODE = C.B_ACCT_CODE) T2
                        ON (T1.REF_NO = T2.REF_NO)
                        WHEN NOT MATCHED THEN
                            INSERT
                            (T1.DATA_ID,
                             T1.DATA_DATE,
                             T1.PDATA_ID,
                             T1.REF_NO,
                             T1.K_CHAN_TRAN_TYPE,
                             T1.K_TRAN_DATE,
                             T1.K_TRAN_AMT,
                             T1.K_TRAN_AMT_ORG,
                             T1.K_DUE_TRAN_MON,
                             T1.K_DET_INFO,
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
                                    T2.DATA_DATE,
                                    T2.PDATA_ID,
                                    T2.REF_NO,
                                    T2.K_CHAN_TRAN_TYPE,
                                    T2.K_TRAN_DATE,
                                    T2.K_TRAN_AMT,
                                    T2.K_TRAN_AMT_ORG,
                                    T2.K_DUE_TRAN_MON,
                                    T2.K_DET_INFO,
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

                        --更改主表数据状态
                        MERGE INTO MBT_210 T1
                        USING (SELECT DISTINCT B.DATA_ID
                               FROM MBT_210_K A
                                        LEFT JOIN MBT_210 B
                                                  ON A.PDATA_ID = B.DATA_ID
                               WHERE A.RSV5 = 'FLAG') T2
                        ON (T1.DATA_ID = T2.DATA_ID)
                        WHEN MATCHED THEN
                            UPDATE SET T1.DATA_STATUS = '00';

                        UPDATE MBT_210_K SET RSV5 = NULL WHERE RSV5 = 'FLAG';
                    END;

                    DSC := '##修改报告时点##';
                    DBMS_OUTPUT.PUT_LINE(DSC);
                    BEGIN
                        MERGE INTO MBT_210 T1
                        USING (SELECT A.*,
                                      CASE
                                          --对于R2/R3类账户，在激活之前不需要每月报送
                                          WHEN A.B_ACCT_TYPE IN ('R2 ', 'R3') AND
                                               A.H_ACCT_STATUS = '6' THEN
                                              '99'
                                          --新开户：数据无报送过,账户的状态不是关闭的情况，且开户日期在当前月份
                                          WHEN SUBSTR(A.C_OPEN_DATE, 1, 6) = SUBSTR(V_T_DATE, 1, 6) AND
                                               ((nvl(A.B_ACCT_TYPE, 0) <> 'C1' AND A.H_ACCT_STATUS NOT IN ('3', '4')) OR
                                                ((A.B_ACCT_TYPE = 'C1' AND nvl(A.H_ACCT_STATUS, 0) <> '2')))
                                              AND E.DATA_ID IS NULL THEN
                                              '10'
                                          --月结日首次报送存量账户：不为C1的存量账户,账户的状态不是关闭的情况，没有报送过
                                          --存量数据也只报当月发生的数据，旧的数据需要等符合月结日场景才能报送
                                          WHEN A.MON_SETTLE_DATE = V_T_DATE AND
                                               nvl(A.B_ACCT_TYPE, 0) <> 'C1' AND A.H_ACCT_STATUS NOT IN ('3', '4')
                                              AND E.DATA_ID IS NULL THEN
                                              '31'
                                          --月结日账户关闭：不为C1的数据，已报送过，账户状态为关闭，且执行日=月结日
                                          WHEN nvl(A.B_ACCT_TYPE, 0) <> 'C1' AND A.H_ACCT_STATUS IN ('3', '4') AND
                                               E.DATA_ID IS NOT NULL AND
                                               A.MON_SETTLE_DATE = V_T_DATE THEN
                                              '32'
                                          --账户关闭：已报送过，账户状态为关闭
                                          WHEN ((nvl(A.B_ACCT_TYPE, 0) <> 'C1' AND A.H_ACCT_STATUS IN ('3', '4')) OR
                                                (A.B_ACCT_TYPE = 'C1' AND A.J_ACCT_STATUS = '2')) AND
                                               E.DATA_ID IS NOT NULL THEN
                                              '20'
                                          /**
                                            收回逾期款项：非月度表现信息段里的逾期总额为0，
                                            上次报送的非（20、32、40）的（非C1的月度表现信息段中逾期总额不为0，C1的非月度表现信息段中逾期总额不为0），
                                            非月度表现信息段里的最近一次还款信息不等于月结日且最近还款日期在当月
                                            且本月没有报送过该时点
                                           */
                                          WHEN A.J_TOT_OVERD = 0 AND (J.DATA_ID IS NOT NULL AND
                                                                      ((nvl(A.B_ACCT_TYPE, 0) <> 'C1' AND nvl(J.H_TOT_OVERD, '') <> 0) OR
                                                                       (A.B_ACCT_TYPE = 'C1' AND nvl(J.J_TOT_OVERD, '') <> 0))) AND
                                               nvl(A.MON_SETTLE_DATE, 0) <> nvl(A.J_LAT_RPY_DATE, 0) AND
                                               SUBSTR(A.J_LAT_RPY_DATE, 1, 6) = SUBSTR(V_T_DATE, 1, 6) AND
                                               I.DATA_ID IS NULL
                                              THEN
                                              '40'
                                          --当C1账户上面的情况都不满足，设置为不报送
                                          WHEN A.B_ACCT_TYPE = 'C1' THEN
                                              '99'
                                          ELSE
                                              CASE
                                                  WHEN E.B_RPT_DATE_CODE != '30' AND
                                                       A.MON_SETTLE_DATE IS NOT NULL AND
                                                       V_T_DATE = A.MON_SETTLE_DATE THEN
                                                      '30'
                                                  ELSE
                                                      '99'
                                                  END
                                          END
                                          AS RPT_DATE_CODE_OUT
                               FROM MBT_210 A
                                        LEFT JOIN (SELECT *
                                                   FROM (SELECT ROW_NUMBER() OVER (PARTITION BY B_ACCT_CODE ORDER BY B_RPT_DATE DESC) RN,
                                                                T.*
                                                         FROM MBT_210_RPT T
                                                         WHERE DATA_STATUS = '27')
                                                   WHERE RN = 1) E
                                                  ON A.B_ACCT_CODE = E.B_ACCT_CODE
                                        LEFT JOIN MBT_210_RPT I --本月（记录中非月度表现信息段里的最近一次实际还款日期J_LAT_RPY_DATE的月份在执行月）报送过收回逾期款项
                                                  ON A.B_ACCT_CODE = I.B_ACCT_CODE
                                                      AND SUBSTR(A.J_LAT_RPY_DATE, 1, 6) = SUBSTR(CURRENTDATE, 1, 6)
                                                      AND I.B_RPT_DATE_CODE = '40'
                                                      AND I.DATA_STATUS = '27'
                                        LEFT JOIN (SELECT *
                                                   FROM (SELECT ROW_NUMBER() OVER (PARTITION BY B_ACCT_CODE ORDER BY B_RPT_DATE DESC) RN,
                                                                T.*
                                                         FROM MBT_210_RPT T
                                                         WHERE DATA_STATUS = '27'
                                                           AND B_RPT_DATE_CODE NOT IN ('20', '32', '40'))
                                                   WHERE RN = 1) J --查找最近一次不为（关闭、回收逾期款项）的报送记录
                                                  ON A.B_ACCT_CODE = J.B_ACCT_CODE
                               WHERE NOT EXISTS(
                                       SELECT 1
                                       FROM MBT_210_RPT B
                                       WHERE A.B_ACCT_CODE = B.B_ACCT_CODE
                                         AND B.DATA_STATUS = '27'
                                         AND B.B_RPT_DATE_CODE IN ('20', '32'))
                                 AND A.DATA_STATUS = '00'
                                 AND A.DATA_SOURCE = '2'
                        ) T2
                        ON (T1.DATA_ID = T2.DATA_ID)
                        WHEN MATCHED THEN
                            UPDATE SET T1.B_RPT_DATE_CODE = T2.RPT_DATE_CODE_OUT;
                    END;


                    DSC := '##修改子表[MBT_210_D] IS_RPT##';
                    DBMS_OUTPUT.PUT_LINE(DSC);
                    BEGIN
                        SP_ODS_MBT_CAL_RPT_PROC3('MBT_210_D',
                                                 'B_RPT_DATE_CODE <> ''40''',
                                                 D_ARRAYLIST,
                                                 'B_ACCT_CODE',
                                                 9,
                                                 'MBT_210',
                                                 NULL);
                    END;

                    DSC := '##修改子表[MBT_210_E] IS_RPT##';
                    DBMS_OUTPUT.PUT_LINE(DSC);
                    BEGIN
                        SP_ODS_MBT_CAL_RPT_PROC3('MBT_210_E',
                                                 'B_RPT_DATE_CODE <> ''40''',
                                                 E_ARRAYLIST,
                                                 'B_ACCT_CODE',
                                                 10,
                                                 'MBT_210',
                                                 NULL);
                    END;

                    DSC := '##修改子表[MBT_210_K] IS_RPT##';
                    DBMS_OUTPUT.PUT_LINE(DSC);
                    BEGIN
                        SP_ODS_MBT_CAL_RPT_PROC3('MBT_210_K',
                                                 'B_RPT_DATE_CODE <> ''40''',
                                                 K_ARRAYLIST,
                                                 'B_ACCT_CODE',
                                                 11,
                                                 'MBT_210',
                                                 NULL);
                    END;

                    DSC := '##根据配置计算各段上报标识' || TABLE_KEY || '##';
                    DBMS_OUTPUT.PUT_LINE(DSC);
                    BEGIN
                        SP_ODS_MBT_CAL_RPT_PROC2('MBT_210',
                                                 'T1.B_INF_REC_TYPE = T3.INF_REC_TYPE
                                         AND T1.B_ACCT_TYPE = T3.ACCT_TYPE
                                         AND T1.B_RPT_DATE_CODE = T3.RPT_DATE_CODE',
                                                 TABLE_KEY);

                    END;

                    DSC := '##处理RPT_DATE##';
                    DBMS_OUTPUT.PUT_LINE(DSC);
                    BEGIN
                        --只处理从ODS来的数据并且今天插入或者今天修改的数据
                        --采集时点为账户关闭时，若已经报送过账户关闭日期所在月的月度表现信息段，
                        --则本次报送该段落中“月份”数据项填写账户关闭日期所在月次月,同时'结算/应还款日'填空
                        MERGE INTO MBT_210 T1
                        USING (SELECT A.DATA_ID,
                                      CASE
                                          WHEN A.B_RPT_DATE_CODE = '20' THEN
                                              CASE
                                                  WHEN C.DATA_ID IS NOT NULL THEN
                                                      TO_CHAR(ADD_MONTHS(TO_DATE(A.H_CLOSE_DATE, 'YYYYMMDD'),
                                                                         1),
                                                              'YYYYMMDD')
                                                  ELSE
                                                      A.H_CLOSE_DATE
                                                  END
                                          ELSE
                                              A.H_CLOSE_DATE
                                          END AS H_CLOSE_DATE
                               FROM MBT_210 A
                                        JOIN MBT_210_RPT C
                                             ON A.B_ACCT_CODE = C.B_ACCT_CODE
                                                 AND SUBSTR(C.B_RPT_DATE, 1, 6) =
                                                     SUBSTR(A.H_CLOSE_DATE, 1, 6)
                                                 AND C.DATA_STATUS = '27') T2
                        ON (T1.DATA_ID = T2.DATA_ID AND T1.DATA_SOURCE = '2' AND
                            (T1.DATA_CRT_DATE = CURRENTDATE OR T1.DATA_CHG_DATE = CURRENTDATE))
                        WHEN MATCHED THEN
                            UPDATE
                            SET T1.H_MONTH     = SUBSTR(T2.H_CLOSE_DATE, 1, 6),
                                T1.H_SETT_DATE = NULL;
                    END;


                    DSC := '##ODS表数据插入历史表，然后删除ODS表##';
                    DBMS_OUTPUT.PUT_LINE(DSC);
                    BEGIN
                        --不能清空
                        /*   --若时点不是月结日，需要清除月结日的值
                        UPDATE MBT_210
                           SET MON_SETTLE_DATE = NULL
                         WHERE B_RPT_DATE_CODE NOT IN ('30', '31', '32');*/

                        --数据插入历史表，然后删除ODS表
                        INSERT INTO ODS_MBT_210_HIS
                        SELECT *
                        FROM ODS_MBT_210;
                        DELETE FROM ODS_MBT_210;

                        INSERT INTO ODS_MBT_210_D_HIS
                        SELECT *
                        FROM ODS_MBT_210_D;
                        DELETE FROM ODS_MBT_210_D;

                        INSERT INTO ODS_MBT_210_E_HIS
                        SELECT *
                        FROM ODS_MBT_210_E;
                        DELETE FROM ODS_MBT_210_E;

                        INSERT INTO ODS_MBT_210_K_HIS
                        SELECT *
                        FROM ODS_MBT_210_K;
                        DELETE FROM ODS_MBT_210_K;
                    END;

                    DSC := '##将报告时点代码是88或99的直接审核通过并将校验修改为校验通过##';
                    DBMS_OUTPUT.PUT_LINE(DSC);
                    BEGIN
                        UPDATE MBT_210
                        SET DATA_STATUS = '21',
                            CHECK_FLAG  = 'Y'
                        WHERE DATA_DATE <= CURRENTDATE
                          AND (B_RPT_DATE_CODE = '88' OR B_RPT_DATE_CODE = '99')
                          AND DATA_STATUS = '00';
                        /*  --RBWM 需求月结日默认取宽限期最后一天，信息报告日期也要更新成月结日
                        UPDATE MBT_210 SET B_RPT_DATE = V_T_DATE WHERE B_RPT_DATE_CODE = '30';*/
                        --将报告时点代码不是88或99的校验修改为未校验,并更新信息报告日期ZHAO
                        /*UPDATE MBT_210
                        SET CHECK_FLAG = 'N',
                            B_RPT_DATE = V_T_DATE
                        WHERE DATA_DATE <= CURRENTDATE
                          AND (B_RPT_DATE_CODE NOT IN ('88', '99'));*/
                    END;
                END IF;
            END;
        END IF;
        /*UPDATE MBT_210
        SET IS_RPT = SUBSTR(IS_RPT, 0, 2) || 0 || SUBSTR(IS_RPT, 4, 8)
        WHERE B_RPT_DATE_CODE <> '40'
          AND B_RPT_DATE_CODE <> '88'
          AND B_RPT_DATE_CODE <> '99'
          AND B_ACCT_TYPE = 'D1'
          AND C_FLAG = '0'
          AND LENGTH(NVL(IS_RPT, '-')) = 11;*/

        COMMIT;
    EXCEPTION
        WHEN
            OTHERS THEN
            ERRCODE := SQLCODE;
            ERRMSG := SUBSTR(SQLERRM, 1, 200);
            SP_MBT_LOG(1,
                       'SP_ODS_MBT_210',
                       'ERROR21001',
                       '失败：' || ERRMSG,
                       ERRCODE,
                       ERRMSG);
            ROLLBACK;
    END;

    ENDTIME := TO_CHAR(SYSDATE, 'YYYY-MM-DD HH24:MI:SS');
    DSC := '##=======MBT210存储过程==结束' || ENDTIME || '========##';
    DBMS_OUTPUT.PUT_LINE(DSC);
    DBMS_OUTPUT.PUT_LINE(DBMS_UTILITY.FORMAT_ERROR_BACKTRACE());
END;
/
