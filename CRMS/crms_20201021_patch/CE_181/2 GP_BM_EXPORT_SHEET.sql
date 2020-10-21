prompt Importing table GP_BM_EXPORT_SHEET...
set feedback off
set define off
insert into GP_BM_EXPORT_SHEET (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, P_DATA_ID, SHEET_NUM, SHEET_NAME, TABLE_NAME, TABLE_COMMENTS, SQL_FLAG, SQL_ID, SQL_STRING, GUID, REMARKS, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5, SQL_CONDITION_STRING, MAIN_SHEET_FLAG, SQL_DATA_ID)
values ('6ca3beec54874a09872090da6aa6521f', '20201013', 'HSBC', 'HBCN', null, null, null, '4039c4e78c204868bf0bd9c5d19c2548', 1, '基本信息', 'MBT_210_RPT', '个人借贷上报查询基本信息', '00', 'EXPORT_MBT_210_RPT_TEMQRY1', 'select * from (select DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, REF_NO, B_INF_REC_TYPE, B_ACCT_TYPE, B_ACCT_CODE, B_RPT_DATE, B_RPT_DATE_CODE, B_NAME, B_ID_TYPE, B_ID_NUM, B_MNGMT_ORG_CODE, C_BUSI_LINES, C_BUSI_DTL_LINES, C_OPEN_DATE, C_CY, C_ACCT_CRED_LINE_AMT,C_ACCT_CRED_LINE_AMT_LCY, C_LOAN_AMT,C_LOAN_AMT_LCY, C_FLAG, C_DUE_DATE, C_REPAY_MODE, C_REPAY_FREQCY, C_REPAY_PRD, C_APPLY_BUSI_DIST, C_GUAR_MODE, C_OTH_REPY_GUAR_WAY, C_ASSET_TRAND_FLAG, C_FUND_SOU, C_LOAN_FORM, C_CREDIT_ID, F_MCC, G_INIT_CRED_NAME, G_INIT_CRED_ORG_NM, G_ORIG_DBT_CATE, G_INIT_RPY_STS, H_MONTH, H_SETT_DATE, H_ACCT_STATUS, H_ACCT_BAL,H_ACCT_BAL_LCY, H_PRID_ACCT_BAL, H_PRID_ACCT_BAL_LCY,H_USED_AMT,H_USED_AMT_LCY, H_NOTLSU_BAL, H_NOTLSU_BAL_LCY,H_REM_REP_PRD, H_FIVE_CATE, H_FIVE_CATE_ADJ_DATE, H_RPY_STATUS, H_RPY_PRCT, H_OVERD_PRD, H_TOT_OVERD, H_TOT_OVERD_LCY,H_OVAER_PRINC,H_OVAER_PRINC_LCY, H_OVERD31_60PRINC,H_OVERD31_60PRINC_LCY, H_OVERD61_90PRINC,H_OVERD61_90PRINC_LCY, H_OVERD91_180PRINC,H_OVERD91_180PRINC_LCY, H_OVERD_PRINC180,H_OVERD_PRINC180_LCY, H_OVERD_RAW_BA_OVE180, H_OVERD_RAW_BA_OVE180_LCY,H_CUR_RPY_AMT, H_CUR_RPY_AMT_LCY,H_ACT_RPY_AMT,H_ACT_RPY_AMT_LCY, H_LAT_RPY_DATE, H_CLOSE_DATE, I_SPEC_LINE, I_SPEC_LINE_LCY,I_SPEC_EFCT_DATE, I_SPEC_END_DATE, I_USED_INST_AMT,I_USED_INST_AMT_LCY, J_ACCT_STATUS, J_ACCT_BAL,J_ACCT_BAL_LCY, J_FIVE_CATE, J_FIVE_CATE_ADJ_DATE, J_REM_REP_PRD, J_RPY_STATUS, J_OVERD_PRD, J_TOT_OVERD,J_TOT_OVERD_LCY, J_LAT_RPY_AMT,J_LAT_RPY_AMT_LCY,J_LAT_RPY_DATE, J_CLOSE_DATE, DATA_DESC, REMARKS, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5, IS_RPT, CUST_NO, MON_SETTLE_DATE,C_LOAN_CON_CODE,C_FIRST_HOU_LOAN_FLAG from MBT_210_RPT 
union all
select DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, REF_NO, B_INF_REC_TYPE, B_ACCT_TYPE, B_ACCT_CODE, B_RPT_DATE, B_RPT_DATE_CODE, B_NAME, B_ID_TYPE, B_ID_NUM, B_MNGMT_ORG_CODE, C_BUSI_LINES, C_BUSI_DTL_LINES, C_OPEN_DATE, C_CY, C_ACCT_CRED_LINE_AMT,C_ACCT_CRED_LINE_AMT_LCY, C_LOAN_AMT,C_LOAN_AMT_LCY, C_FLAG, C_DUE_DATE, C_REPAY_MODE, C_REPAY_FREQCY, C_REPAY_PRD, C_APPLY_BUSI_DIST, C_GUAR_MODE, C_OTH_REPY_GUAR_WAY, C_ASSET_TRAND_FLAG, C_FUND_SOU, C_LOAN_FORM, C_CREDIT_ID, F_MCC, G_INIT_CRED_NAME, G_INIT_CRED_ORG_NM, G_ORIG_DBT_CATE, G_INIT_RPY_STS, H_MONTH, H_SETT_DATE, H_ACCT_STATUS, H_ACCT_BAL,H_ACCT_BAL_LCY, H_PRID_ACCT_BAL,H_PRID_ACCT_BAL_LCY, H_USED_AMT, H_USED_AMT_LCY,H_NOTLSU_BAL,H_NOTLSU_BAL_LCY, H_REM_REP_PRD, H_FIVE_CATE, H_FIVE_CATE_ADJ_DATE, H_RPY_STATUS, H_RPY_PRCT, H_OVERD_PRD, H_TOT_OVERD, H_TOT_OVERD_LCY,H_OVAER_PRINC,H_OVAER_PRINC_LCY, H_OVERD31_60PRINC,H_OVERD31_60PRINC_LCY, H_OVERD61_90PRINC,H_OVERD61_90PRINC_LCY, H_OVERD91_180PRINC, H_OVERD91_180PRINC_LCY,H_OVERD_PRINC180,H_OVERD_PRINC180_LCY, H_OVERD_RAW_BA_OVE180,H_OVERD_RAW_BA_OVE180_LCY, H_CUR_RPY_AMT,H_CUR_RPY_AMT_LCY, H_ACT_RPY_AMT,H_ACT_RPY_AMT_LCY, H_LAT_RPY_DATE, H_CLOSE_DATE, I_SPEC_LINE,I_SPEC_LINE_LCY, I_SPEC_EFCT_DATE, I_SPEC_END_DATE, I_USED_INST_AMT,I_USED_INST_AMT_LCY, J_ACCT_STATUS, J_ACCT_BAL,J_ACCT_BAL_LCY, J_FIVE_CATE, J_FIVE_CATE_ADJ_DATE, J_REM_REP_PRD, J_RPY_STATUS, J_OVERD_PRD, J_TOT_OVERD,J_TOT_OVERD_LCY, J_LAT_RPY_AMT, J_LAT_RPY_AMT_LCY,J_LAT_RPY_DATE, J_CLOSE_DATE, DATA_DESC, REMARKS, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5, '''', CUST_NO, MON_SETTLE_DATE,C_LOAN_CON_CODE,C_FIRST_HOU_LOAN_FLAG from MBT_210_TMP) A  where 1=1  ', '6ca3beec54874a09872090da6aa6521f', null, null, null, null, null, null, null, null, null, null, null, 'admin', null, null, 'admin', '20201013', '20201013153058', null, null, null, null, null, null, null, null, null, '01', '6c3846a585fd42baac15a158eb4f255f');

insert into GP_BM_EXPORT_SHEET (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, P_DATA_ID, SHEET_NUM, SHEET_NAME, TABLE_NAME, TABLE_COMMENTS, SQL_FLAG, SQL_ID, SQL_STRING, GUID, REMARKS, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5, SQL_CONDITION_STRING, MAIN_SHEET_FLAG, SQL_DATA_ID)
values ('ec109cfa3b5d459f96fc6c6cdc809818', '20201013', 'HSBC', 'HBCN', null, null, null, '4039c4e78c204868bf0bd9c5d19c2548', 2, '相关还款责任人段', 'MBT_210_D_RPT', '个人借贷上报相关还款责任人段', '01', 'EXPORT_MBT_210_D_RPT_TEMQRY1', 'select * from (select DATA_ID, PDATA_ID, D_ARLP_ID_TYPE, D_ARLP_NAME, D_ARLP_CERT_TYPE, D_ARLP_CERT_NUM, D_ARLP_TYPE, D_ARLP_AMT, D_ARLP_AMT_ORG,D_WARTY_SIGN, D_MAX_GUAR_MCC from MBT_210_D_RPT  union all select DATA_ID, PDATA_ID, D_ARLP_ID_TYPE, D_ARLP_NAME, D_ARLP_CERT_TYPE, D_ARLP_CERT_NUM, D_ARLP_TYPE, D_ARLP_AMT,D_ARLP_AMT_ORG, D_WARTY_SIGN, D_MAX_GUAR_MCC from MBT_210_D_TMP) A where 1=1 ', 'ec109cfa3b5d459f96fc6c6cdc809818', null, null, null, null, null, null, null, null, null, null, null, 'admin', null, null, 'admin', '20201013', '20201013153125', null, null, null, null, null, null, null, null, null, '00', '0ad2156c215843e1adf887cff40f0efe');

insert into GP_BM_EXPORT_SHEET (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, P_DATA_ID, SHEET_NUM, SHEET_NAME, TABLE_NAME, TABLE_COMMENTS, SQL_FLAG, SQL_ID, SQL_STRING, GUID, REMARKS, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5, SQL_CONDITION_STRING, MAIN_SHEET_FLAG, SQL_DATA_ID)
values ('b691ca84610748b0b684cfb477253151', '20201013', 'HSBC', 'HBCN', null, null, null, '4039c4e78c204868bf0bd9c5d19c2548', 3, '抵质押物信息段', 'MBT_210_E_RPT', '个人借贷上报查询抵质押物信息段', '01', 'EXPORT_MBT_210_E_RPT_TEMQRY1', 'select * from (select DATA_ID, PDATA_ID, E_CCC from MBT_210_E_RPT union all select DATA_ID, PDATA_ID, E_CCC from MBT_210_E_TMP) A where 1=1 ', 'b691ca84610748b0b684cfb477253151', null, null, null, null, null, null, null, null, null, null, null, 'admin', null, null, 'admin', '20201013', '20201013153134', null, null, null, null, null, null, null, null, null, '00', 'f34e12f4c167449b9d02079fcb3400ae');

insert into GP_BM_EXPORT_SHEET (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, P_DATA_ID, SHEET_NUM, SHEET_NAME, TABLE_NAME, TABLE_COMMENTS, SQL_FLAG, SQL_ID, SQL_STRING, GUID, REMARKS, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5, SQL_CONDITION_STRING, MAIN_SHEET_FLAG, SQL_DATA_ID)
values ('3e5c99c89d994a2da213fe937eda0de1', '20201013', 'HSBC', 'HBCN', null, null, null, '4039c4e78c204868bf0bd9c5d19c2548', 4, '特定交易说明段', 'MBT_210_K_RPT', '个人借贷上报查询特定交易说明段', '01', 'EXPORT_MBT_210_K_RPT_TEMQRY1', 'select * from (select DATA_ID, PDATA_ID, K_CHAN_TRAN_TYPE, K_TRAN_DATE, K_TRAN_AMT,K_TRAN_AMT_ORG, K_DUE_TRAN_MON, K_DET_INFO from MBT_210_K_RPT union all select DATA_ID, PDATA_ID, K_CHAN_TRAN_TYPE, K_TRAN_DATE, K_TRAN_AMT,K_TRAN_AMT_ORG, K_DUE_TRAN_MON, K_DET_INFO from MBT_210_K_TMP) A where 1=1 ', '3e5c99c89d994a2da213fe937eda0de1', null, null, null, null, null, null, null, null, null, null, null, 'admin', null, null, 'admin', '20201013', '20201013153142', null, null, null, null, null, null, null, null, null, '00', '319fe1338cd24e0ab9909c83d91cfa8e');

prompt Done.
