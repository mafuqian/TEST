create table MBT_210_HIS_CHG_BAK
(
    DATA_ID                   CHAR(32) not null primary key,
    DATA_DATE                 CHAR(8),
    CORP_ID                   VARCHAR2(14),
    ORG_ID                    VARCHAR2(14),
    GROUP_ID                  VARCHAR2(14),
    INQ_ORG_ID                CHAR(24),
    INQ_GROUP_ID              CHAR(24),
    REF_NO                    VARCHAR2(65),
    B_INF_REC_TYPE            CHAR(3),
    B_ACCT_TYPE               VARCHAR2(2),
    B_ACCT_CODE               VARCHAR2(60),
    B_RPT_DATE                CHAR(8),
    B_RPT_DATE_CODE           CHAR(2),
    B_NAME                    NVARCHAR2(30),
    B_ID_TYPE                 VARCHAR2(2),
    B_ID_NUM                  NVARCHAR2(20),
    B_MNGMT_ORG_CODE          VARCHAR2(14),
    C_BUSI_LINES              CHAR,
    C_BUSI_DTL_LINES          CHAR(2),
    C_OPEN_DATE               CHAR(8),
    C_CY                      CHAR(3),
    C_ACCT_CRED_LINE_AMT      NUMBER(15),
    C_LOAN_AMT                NUMBER(15),
    C_FLAG                    CHAR,
    C_DUE_DATE                CHAR(8),
    C_REPAY_MODE              CHAR(2),
    C_REPAY_FREQCY            VARCHAR2(2),
    C_REPAY_PRD               NUMBER(3),
    C_APPLY_BUSI_DIST         CHAR(6),
    C_GUAR_MODE               CHAR,
    C_OTH_REPY_GUAR_WAY       CHAR(2),
    C_ASSET_TRAND_FLAG        CHAR,
    C_FUND_SOU                VARCHAR2(2),
    C_LOAN_FORM               CHAR,
    C_CREDIT_ID               VARCHAR2(4),
    F_MCC                     VARCHAR2(60),
    G_INIT_CRED_NAME          NVARCHAR2(80),
    G_INIT_CRED_ORG_NM        VARCHAR2(18),
    G_ORIG_DBT_CATE           CHAR,
    G_INIT_RPY_STS            CHAR,
    H_MONTH                   CHAR(7),
    H_SETT_DATE               CHAR(8),
    H_ACCT_STATUS             VARCHAR2(2),
    H_ACCT_BAL                NUMBER(15),
    H_PRID_ACCT_BAL           NUMBER(15),
    H_USED_AMT                NUMBER(15),
    H_NOTLSU_BAL              NUMBER(15),
    H_REM_REP_PRD             NUMBER(3),
    H_FIVE_CATE               CHAR,
    H_FIVE_CATE_ADJ_DATE      CHAR(8),
    H_RPY_STATUS              CHAR,
    H_RPY_PRCT                NUMBER(3),
    H_OVERD_PRD               NUMBER(3),
    H_TOT_OVERD               NUMBER(15),
    H_OVAER_PRINC             NUMBER(15),
    H_OVERD31_60PRINC         NUMBER(15),
    H_OVERD61_90PRINC         NUMBER(15),
    H_OVERD91_180PRINC        NUMBER(15),
    H_OVERD_PRINC180          NUMBER(15),
    H_OVERD_RAW_BA_OVE180     NUMBER(15),
    H_CUR_RPY_AMT             NUMBER(15),
    H_ACT_RPY_AMT             NUMBER(15),
    H_LAT_RPY_DATE            CHAR(8),
    H_CLOSE_DATE              CHAR(8),
    I_SPEC_LINE               NUMBER(15),
    I_SPEC_EFCT_DATE          CHAR(8),
    I_SPEC_END_DATE           CHAR(8),
    I_USED_INST_AMT           NUMBER(15),
    J_ACCT_STATUS             VARCHAR2(2),
    J_ACCT_BAL                NUMBER(15),
    J_FIVE_CATE               CHAR,
    J_FIVE_CATE_ADJ_DATE      CHAR(8),
    J_REM_REP_PRD             NUMBER(3),
    J_RPY_STATUS              CHAR,
    J_OVERD_PRD               NUMBER(3),
    J_TOT_OVERD               NUMBER(15),
    J_LAT_RPY_AMT             NUMBER(15),
    J_LAT_RPY_DATE            CHAR(8),
    J_CLOSE_DATE              CHAR(8),
    DATA_DESC                 NVARCHAR2(256),
    REMARKS                   VARCHAR2(512),
    CHECK_FLAG                CHAR,
    CHECK_DESC                VARCHAR2(512),
    CHECK_ERR_TYPE            CHAR,
    NEXT_ACTION               CHAR(2),
    DATA_STATUS               CHAR(2),
    DATA_FLAG                 CHAR,
    DATA_SOURCE               CHAR,
    DATA_VERSION              NUMBER(8),
    DATA_REJ_DESC             VARCHAR2(128),
    DATA_DEL_DESC             VARCHAR2(128),
    DATA_CRT_USER             VARCHAR2(20),
    DATA_CRT_DATE             CHAR(8),
    DATA_CRT_TIME             CHAR(14),
    DATA_CHG_USER             VARCHAR2(20),
    DATA_CHG_DATE             CHAR(8),
    DATA_CHG_TIME             CHAR(14),
    DATA_APV_USER             VARCHAR2(20),
    DATA_APV_DATE             CHAR(8),
    DATA_APV_TIME             CHAR(14),
    RSV1                      VARCHAR2(180),
    RSV2                      VARCHAR2(180),
    RSV3                      VARCHAR2(180),
    RSV4                      VARCHAR2(180),
    RSV5                      VARCHAR2(180),
    ODS_DATA_ID               CHAR(32),
    HIS_DATE                  CHAR(8),
    HIS_DATE_TIME             CHAR(14),
    IS_RPT                    CHAR(64),
    CUST_NO                   VARCHAR2(32),
    MON_SETTLE_DATE           CHAR(8),
    FB_STATUS                 CHAR(2),
    RPT_FILE_NAME             VARCHAR2(512),
    C_LOAN_CON_CODE           VARCHAR2(200),
    C_FIRST_HOU_LOAN_FLAG     CHAR(2),
    C_ACCT_CRED_LINE_AMT_LCY  NUMBER(15),
    J_LAT_RPY_AMT_LCY         NUMBER(15),
    H_ACCT_BAL_LCY            NUMBER(15),
    H_PRID_ACCT_BAL_LCY       NUMBER(15),
    H_USED_AMT_LCY            NUMBER(15),
    H_NOTLSU_BAL_LCY          NUMBER(15),
    H_TOT_OVERD_LCY           NUMBER(15),
    H_OVAER_PRINC_LCY         NUMBER(15),
    H_OVERD31_60PRINC_LCY     NUMBER(15),
    H_OVERD61_90PRINC_LCY     NUMBER(15),
    H_OVERD91_180PRINC_LCY    NUMBER(15),
    H_OVERD_PRINC180_LCY      NUMBER(15),
    H_OVERD_RAW_BA_OVE180_LCY NUMBER(15),
    H_CUR_RPY_AMT_LCY         NUMBER(15),
    H_ACT_RPY_AMT_LCY         NUMBER(15),
    I_SPEC_LINE_LCY           NUMBER(15),
    I_USED_INST_AMT_LCY       NUMBER(15),
    J_ACCT_BAL_LCY            NUMBER(15),
    J_TOT_OVERD_LCY           NUMBER(15),
    C_LOAN_AMT_LCY            NUMBER(15),
    J_LAT_RPY_AMT_ORG         NUMBER(15),
    J_TOT_OVERD_ORG           NUMBER(15),
    J_ACCT_BAL_ORG            NUMBER(15),
    I_USED_INST_AMT_ORG       NUMBER(15),
    I_SPEC_LINE_ORG           NUMBER(15),
    H_ACT_RPY_AMT_ORG         NUMBER(15),
    H_CUR_RPY_AMT_ORG         NUMBER(15),
    H_OVERD_RAW_BA_OVE180_ORG NUMBER(15),
    H_OVERD_PRINC180_ORG      NUMBER(15),
    H_OVERD91_180PRINC_ORG    NUMBER(15),
    H_OVERD61_90PRINC_ORG     NUMBER(15),
    H_OVERD31_60PRINC_ORG     NUMBER(15),
    H_OVAER_PRINC_ORG         NUMBER(15),
    H_TOT_OVERD_ORG           NUMBER(15),
    H_NOTLSU_BAL_ORG          NUMBER(15),
    H_USED_AMT_ORG            NUMBER(15),
    H_PRID_ACCT_BAL_ORG       NUMBER(15),
    H_ACCT_BAL_ORG            NUMBER(15),
    C_LOAN_AMT_ORG            NUMBER(15),
    C_ACCT_CRED_LINE_AMT_ORG  NUMBER(15)
);
comment on column MBT_210_HIS_CHG_BAK.DATA_ID is '主键';
comment on column MBT_210_HIS_CHG_BAK.DATA_DATE is '数据日期';
comment on column MBT_210_HIS_CHG_BAK.CORP_ID is '法人机构号';
comment on column MBT_210_HIS_CHG_BAK.ORG_ID is '分行机构号';
comment on column MBT_210_HIS_CHG_BAK.GROUP_ID is '部门编号';
comment on column MBT_210_HIS_CHG_BAK.INQ_ORG_ID is '查询机构号';
comment on column MBT_210_HIS_CHG_BAK.INQ_GROUP_ID is '查询组号';
comment on column MBT_210_HIS_CHG_BAK.REF_NO is '客户号';
comment on column MBT_210_HIS_CHG_BAK.B_INF_REC_TYPE is '信息记录类型';
comment on column MBT_210_HIS_CHG_BAK.B_ACCT_TYPE is '账户类型';
comment on column MBT_210_HIS_CHG_BAK.B_ACCT_CODE is '账户标识码';
comment on column MBT_210_HIS_CHG_BAK.B_RPT_DATE is '信息报告日期';
comment on column MBT_210_HIS_CHG_BAK.B_RPT_DATE_CODE is '报告时点说明代码';
comment on column MBT_210_HIS_CHG_BAK.B_NAME is '借款人姓名';
comment on column MBT_210_HIS_CHG_BAK.B_ID_TYPE is '借款人证件类型  ';
comment on column MBT_210_HIS_CHG_BAK.B_ID_NUM is '借款人证件号码';
comment on column MBT_210_HIS_CHG_BAK.B_MNGMT_ORG_CODE is '业务管理机构代码';
comment on column MBT_210_HIS_CHG_BAK.C_BUSI_LINES is '借贷业务大类';
comment on column MBT_210_HIS_CHG_BAK.C_BUSI_DTL_LINES is '借贷业务种类细分';
comment on column MBT_210_HIS_CHG_BAK.C_OPEN_DATE is '开户日期';
comment on column MBT_210_HIS_CHG_BAK.C_CY is '币种';
comment on column MBT_210_HIS_CHG_BAK.C_ACCT_CRED_LINE_AMT is '信用额度';
comment on column MBT_210_HIS_CHG_BAK.C_LOAN_AMT is '借款金额';
comment on column MBT_210_HIS_CHG_BAK.C_FLAG is '分次放款标志';
comment on column MBT_210_HIS_CHG_BAK.C_DUE_DATE is '到期日期';
comment on column MBT_210_HIS_CHG_BAK.C_REPAY_MODE is '还款方式';
comment on column MBT_210_HIS_CHG_BAK.C_REPAY_FREQCY is '还款频率';
comment on column MBT_210_HIS_CHG_BAK.C_REPAY_PRD is '还款期数';
comment on column MBT_210_HIS_CHG_BAK.C_APPLY_BUSI_DIST is '业务申请地行政区划代码';
comment on column MBT_210_HIS_CHG_BAK.C_GUAR_MODE is '担保方式';
comment on column MBT_210_HIS_CHG_BAK.C_OTH_REPY_GUAR_WAY is '其他还款保证方式';
comment on column MBT_210_HIS_CHG_BAK.C_ASSET_TRAND_FLAG is '资产转让标志';
comment on column MBT_210_HIS_CHG_BAK.C_FUND_SOU is '业务经营类型';
comment on column MBT_210_HIS_CHG_BAK.C_LOAN_FORM is '贷款发放形式';
comment on column MBT_210_HIS_CHG_BAK.C_CREDIT_ID is '卡片标识号';
comment on column MBT_210_HIS_CHG_BAK.F_MCC is '授信协议标识码';
comment on column MBT_210_HIS_CHG_BAK.G_INIT_CRED_NAME is '初始债权人名称';
comment on column MBT_210_HIS_CHG_BAK.G_INIT_CRED_ORG_NM is '初始债权人机构代码';
comment on column MBT_210_HIS_CHG_BAK.G_ORIG_DBT_CATE is '原债务种类';
comment on column MBT_210_HIS_CHG_BAK.G_INIT_RPY_STS is '债权转移时的还款状态';
comment on column MBT_210_HIS_CHG_BAK.H_MONTH is '月份';
comment on column MBT_210_HIS_CHG_BAK.H_SETT_DATE is '结算/应还款日';
comment on column MBT_210_HIS_CHG_BAK.H_ACCT_STATUS is '账户状态';
comment on column MBT_210_HIS_CHG_BAK.H_ACCT_BAL is '余额';
comment on column MBT_210_HIS_CHG_BAK.H_PRID_ACCT_BAL is '本期账单余额';
comment on column MBT_210_HIS_CHG_BAK.H_USED_AMT is '已使用额度  ';
comment on column MBT_210_HIS_CHG_BAK.H_NOTLSU_BAL is '未出单的大额专项分期余额';
comment on column MBT_210_HIS_CHG_BAK.H_REM_REP_PRD is '剩余还款期数';
comment on column MBT_210_HIS_CHG_BAK.H_FIVE_CATE is '五级分类';
comment on column MBT_210_HIS_CHG_BAK.H_FIVE_CATE_ADJ_DATE is '五级分类认定日期';
comment on column MBT_210_HIS_CHG_BAK.H_RPY_STATUS is '当前还款状态';
comment on column MBT_210_HIS_CHG_BAK.H_RPY_PRCT is '实际还款百分比';
comment on column MBT_210_HIS_CHG_BAK.H_OVERD_PRD is '当前逾期期数';
comment on column MBT_210_HIS_CHG_BAK.H_TOT_OVERD is '当前逾期总额';
comment on column MBT_210_HIS_CHG_BAK.H_OVAER_PRINC is '当前逾期本金';
comment on column MBT_210_HIS_CHG_BAK.H_OVERD31_60PRINC is '逾期 31-60 天未归还本金';
comment on column MBT_210_HIS_CHG_BAK.H_OVERD61_90PRINC is '逾期 61-90 天未归还本金';
comment on column MBT_210_HIS_CHG_BAK.H_OVERD91_180PRINC is '逾期 91-180 天未归还本金';
comment on column MBT_210_HIS_CHG_BAK.H_OVERD_PRINC180 is '逾期 180 天以上未归还本金';
comment on column MBT_210_HIS_CHG_BAK.H_OVERD_RAW_BA_OVE180 is '透支 180 天以上未还余额  ';
comment on column MBT_210_HIS_CHG_BAK.H_CUR_RPY_AMT is '本月应还款金额';
comment on column MBT_210_HIS_CHG_BAK.H_ACT_RPY_AMT is '本月实际还款金额';
comment on column MBT_210_HIS_CHG_BAK.H_LAT_RPY_DATE is '最近一次实际还款日期';
comment on column MBT_210_HIS_CHG_BAK.H_CLOSE_DATE is '账户关闭日期';
comment on column MBT_210_HIS_CHG_BAK.I_SPEC_LINE is '大额专项分期额度';
comment on column MBT_210_HIS_CHG_BAK.I_SPEC_EFCT_DATE is '分期额度生效日期';
comment on column MBT_210_HIS_CHG_BAK.I_SPEC_END_DATE is '分期额度到期日期';
comment on column MBT_210_HIS_CHG_BAK.I_USED_INST_AMT is '已用分期金额 ';
comment on column MBT_210_HIS_CHG_BAK.J_ACCT_STATUS is '账户状态';
comment on column MBT_210_HIS_CHG_BAK.J_ACCT_BAL is '余额';
comment on column MBT_210_HIS_CHG_BAK.J_FIVE_CATE is '五级分类';
comment on column MBT_210_HIS_CHG_BAK.J_FIVE_CATE_ADJ_DATE is '五级分类认定日期';
comment on column MBT_210_HIS_CHG_BAK.J_REM_REP_PRD is '剩余还款期数';
comment on column MBT_210_HIS_CHG_BAK.J_RPY_STATUS is '当前还款状态';
comment on column MBT_210_HIS_CHG_BAK.J_OVERD_PRD is '当前逾期期数';
comment on column MBT_210_HIS_CHG_BAK.J_TOT_OVERD is '当前逾期总额';
comment on column MBT_210_HIS_CHG_BAK.J_LAT_RPY_AMT is '最近一次实际还款金额';
comment on column MBT_210_HIS_CHG_BAK.J_LAT_RPY_DATE is '最近一次实际还款日期';
comment on column MBT_210_HIS_CHG_BAK.J_CLOSE_DATE is '账户关闭日期';
comment on column MBT_210_HIS_CHG_BAK.DATA_DESC is '记录描述';
comment on column MBT_210_HIS_CHG_BAK.REMARKS is '备注';
comment on column MBT_210_HIS_CHG_BAK.CHECK_FLAG is '校验标识';
comment on column MBT_210_HIS_CHG_BAK.CHECK_DESC is '校验结果';
comment on column MBT_210_HIS_CHG_BAK.CHECK_ERR_TYPE is '校验失败类型';
comment on column MBT_210_HIS_CHG_BAK.NEXT_ACTION is '下一动作';
comment on column MBT_210_HIS_CHG_BAK.DATA_STATUS is '数据状态';
comment on column MBT_210_HIS_CHG_BAK.DATA_FLAG is '数据是否已删除';
comment on column MBT_210_HIS_CHG_BAK.DATA_SOURCE is '数据来源';
comment on column MBT_210_HIS_CHG_BAK.DATA_VERSION is '数据版本号';
comment on column MBT_210_HIS_CHG_BAK.DATA_REJ_DESC is '数据审核拒绝描述';
comment on column MBT_210_HIS_CHG_BAK.DATA_DEL_DESC is '数据删除描述';
comment on column MBT_210_HIS_CHG_BAK.DATA_CRT_USER is '数据创建/导入用户';
comment on column MBT_210_HIS_CHG_BAK.DATA_CRT_DATE is '数据创建/导入日期';
comment on column MBT_210_HIS_CHG_BAK.DATA_CRT_TIME is '数据创建/导入时间';
comment on column MBT_210_HIS_CHG_BAK.DATA_CHG_USER is '数据修改/删除用户';
comment on column MBT_210_HIS_CHG_BAK.DATA_CHG_DATE is '数据修改/删除日期';
comment on column MBT_210_HIS_CHG_BAK.DATA_CHG_TIME is '数据修改/删除时间';
comment on column MBT_210_HIS_CHG_BAK.DATA_APV_USER is '数据审核/拒绝用户';
comment on column MBT_210_HIS_CHG_BAK.DATA_APV_DATE is '数据审核/拒绝日期';
comment on column MBT_210_HIS_CHG_BAK.DATA_APV_TIME is '数据审核/拒绝时间';
comment on column MBT_210_HIS_CHG_BAK.RSV1 is '扩展字段1';
comment on column MBT_210_HIS_CHG_BAK.RSV2 is '扩展字段2';
comment on column MBT_210_HIS_CHG_BAK.RSV3 is '扩展字段3';
comment on column MBT_210_HIS_CHG_BAK.RSV4 is '扩展字段4';
comment on column MBT_210_HIS_CHG_BAK.RSV5 is '扩展字段5';
comment on column MBT_210_HIS_CHG_BAK.ODS_DATA_ID is 'ODS数据ID';
comment on column MBT_210_HIS_CHG_BAK.HIS_DATE is '信息同步日期';
comment on column MBT_210_HIS_CHG_BAK.HIS_DATE_TIME is '信息同步时间';
comment on column MBT_210_HIS_CHG_BAK.IS_RPT is '是否上报';
comment on column MBT_210_HIS_CHG_BAK.CUST_NO is '客户号';
comment on column MBT_210_HIS_CHG_BAK.MON_SETTLE_DATE is '月度结算日';
comment on column MBT_210_HIS_CHG_BAK.FB_STATUS is '反馈状态';
comment on column MBT_210_HIS_CHG_BAK.RPT_FILE_NAME is '上报文件名';
comment on column MBT_210_HIS_CHG_BAK.C_LOAN_CON_CODE is '贷款合同编号';
comment on column MBT_210_HIS_CHG_BAK.C_FIRST_HOU_LOAN_FLAG is '是否为首套住房贷款';
comment on column MBT_210_HIS_CHG_BAK.J_LAT_RPY_AMT_ORG is '最近一次实际还款金额_原始数据金额';
comment on column MBT_210_HIS_CHG_BAK.J_TOT_OVERD_ORG is '当前逾期总额_原始数据金额';
comment on column MBT_210_HIS_CHG_BAK.J_ACCT_BAL_ORG is '余额_原始数据金额';
comment on column MBT_210_HIS_CHG_BAK.I_USED_INST_AMT_ORG is '已用分期金额_原始数据金额';
comment on column MBT_210_HIS_CHG_BAK.I_SPEC_LINE_ORG is '大额专项分期额度_原始数据金额';
comment on column MBT_210_HIS_CHG_BAK.H_ACT_RPY_AMT_ORG is '本月实际还款金额_原始数据金额';
comment on column MBT_210_HIS_CHG_BAK.H_CUR_RPY_AMT_ORG is '本月应还款金额_原始数据金额';
comment on column MBT_210_HIS_CHG_BAK.H_OVERD_RAW_BA_OVE180_ORG is '透支 180 天以上未还余额_原始数据金额';
comment on column MBT_210_HIS_CHG_BAK.H_OVERD_PRINC180_ORG is '逾期 180 天以上未归还本金_原始数据金额';
comment on column MBT_210_HIS_CHG_BAK.H_OVERD91_180PRINC_ORG is '逾期 91-180 天未归还本金_原始数据金额';
comment on column MBT_210_HIS_CHG_BAK.H_OVERD61_90PRINC_ORG is '逾期 61-90 天未归还本金_原始数据金额';
comment on column MBT_210_HIS_CHG_BAK.H_OVERD31_60PRINC_ORG is '逾期 31-60 天未归还本金_原始数据金额';
comment on column MBT_210_HIS_CHG_BAK.H_OVAER_PRINC_ORG is '当前逾期本金_原始数据金额';
comment on column MBT_210_HIS_CHG_BAK.H_TOT_OVERD_ORG is '当前逾期总额_原始数据金额';
comment on column MBT_210_HIS_CHG_BAK.H_NOTLSU_BAL_ORG is '未出单的大额专项分期余额_原始数据金额';
comment on column MBT_210_HIS_CHG_BAK.H_USED_AMT_ORG is '已使用额度_原始数据金额';
comment on column MBT_210_HIS_CHG_BAK.H_PRID_ACCT_BAL_ORG is '本期账单余额_原始数据金额';
comment on column MBT_210_HIS_CHG_BAK.H_ACCT_BAL_ORG is '余额_原始数据金额';
comment on column MBT_210_HIS_CHG_BAK.C_LOAN_AMT_ORG is '借款金额_原始数据金额';
comment on column MBT_210_HIS_CHG_BAK.C_ACCT_CRED_LINE_AMT_ORG is '信用额度_原始数据金额';


create table MBT_210_D_HIS_CHG_BAK
(
    DATA_ID          CHAR(32) not null primary key,
    PDATA_ID         CHAR(32) not null ,
    D_ARLP_ID_TYPE   CHAR,
    D_ARLP_NAME      NVARCHAR2(80),
    D_ARLP_CERT_TYPE VARCHAR2(2),
    D_ARLP_CERT_NUM  NVARCHAR2(40),
    D_ARLP_TYPE      CHAR,
    D_ARLP_AMT       NUMBER(15),
    D_WARTY_SIGN     CHAR,
    D_MAX_GUAR_MCC   VARCHAR2(60),
    ODS_DATA_ID      CHAR(32),
    HIS_DATE         CHAR(8),
    HIS_DATE_TIME    CHAR(14),
    DATA_DATE        CHAR(8),
    CORP_ID          VARCHAR2(14),
    ORG_ID           VARCHAR2(14),
    GROUP_ID         VARCHAR2(14),
    INQ_ORG_ID       CHAR(24),
    INQ_GROUP_ID     CHAR(24),
    DATA_DESC        NVARCHAR2(256),
    REMARKS          NVARCHAR2(512),
    CHECK_FLAG       CHAR,
    CHECK_DESC       NVARCHAR2(512),
    CHECK_ERR_TYPE   CHAR,
    NEXT_ACTION      CHAR(2),
    DATA_FLAG        CHAR,
    DATA_SOURE       CHAR,
    DATA_VERSION     NUMBER(8),
    DATA_REJ_DESC    NVARCHAR2(128),
    DATA_DEL_DESC    NVARCHAR2(128),
    DATA_CRT_USER    NVARCHAR2(20),
    DATA_CRT_DATE    CHAR(8),
    DATA_CRT_TIME    CHAR(14),
    DATA_CHG_USER    NVARCHAR2(20),
    DATA_CHG_DATE    CHAR(8),
    DATA_CHG_TIME    CHAR(14),
    DATA_APV_USER    NVARCHAR2(20),
    DATA_APV_DATE    CHAR(8),
    DATA_APV_TIME    CHAR(14),
    RSV1             NVARCHAR2(180),
    RSV2             NVARCHAR2(180),
    RSV3             NVARCHAR2(180),
    RSV4             NVARCHAR2(180),
    RSV5             NVARCHAR2(180),
    B_ACCT_CODE      VARCHAR2(60),
    D_ARLP_AMT_ORG   NUMBER(15)
);
comment on column MBT_210_D_HIS_CHG_BAK.DATA_ID is '主键';
comment on column MBT_210_D_HIS_CHG_BAK.PDATA_ID is '外键';
comment on column MBT_210_D_HIS_CHG_BAK.D_ARLP_ID_TYPE is '身份类别';
comment on column MBT_210_D_HIS_CHG_BAK.D_ARLP_NAME is '责任人名称';
comment on column MBT_210_D_HIS_CHG_BAK.D_ARLP_CERT_TYPE is '责任人身份标识类型';
comment on column MBT_210_D_HIS_CHG_BAK.D_ARLP_CERT_NUM is '责任人身份标识号码';
comment on column MBT_210_D_HIS_CHG_BAK.D_ARLP_TYPE is '还款责任人类型';
comment on column MBT_210_D_HIS_CHG_BAK.D_ARLP_AMT is '还款责任金额';
comment on column MBT_210_D_HIS_CHG_BAK.D_WARTY_SIGN is '联保标志';
comment on column MBT_210_D_HIS_CHG_BAK.D_MAX_GUAR_MCC is '保证合同编号';
comment on column MBT_210_D_HIS_CHG_BAK.ODS_DATA_ID is 'ODS数据ID';
comment on column MBT_210_D_HIS_CHG_BAK.HIS_DATE is '信息同步日期';
comment on column MBT_210_D_HIS_CHG_BAK.HIS_DATE_TIME is '信息同步时间';
comment on column MBT_210_D_HIS_CHG_BAK.DATA_DATE is '数据日期';
comment on column MBT_210_D_HIS_CHG_BAK.CORP_ID is '法人机构号';
comment on column MBT_210_D_HIS_CHG_BAK.ORG_ID is '分行机构号';
comment on column MBT_210_D_HIS_CHG_BAK.GROUP_ID is '部门编号';
comment on column MBT_210_D_HIS_CHG_BAK.INQ_ORG_ID is '查询机构号';
comment on column MBT_210_D_HIS_CHG_BAK.INQ_GROUP_ID is '查询组号';
comment on column MBT_210_D_HIS_CHG_BAK.DATA_DESC is '记录描述';
comment on column MBT_210_D_HIS_CHG_BAK.REMARKS is '备注';
comment on column MBT_210_D_HIS_CHG_BAK.CHECK_FLAG is '校验标识';
comment on column MBT_210_D_HIS_CHG_BAK.CHECK_DESC is '校验结果';
comment on column MBT_210_D_HIS_CHG_BAK.CHECK_ERR_TYPE is '校验失败类型';
comment on column MBT_210_D_HIS_CHG_BAK.NEXT_ACTION is '下一动作';
comment on column MBT_210_D_HIS_CHG_BAK.DATA_FLAG is '数据是否已删除';
comment on column MBT_210_D_HIS_CHG_BAK.DATA_SOURE is '数据来源';
comment on column MBT_210_D_HIS_CHG_BAK.DATA_VERSION is '数据版本号';
comment on column MBT_210_D_HIS_CHG_BAK.DATA_REJ_DESC is '数据审核拒绝描述';
comment on column MBT_210_D_HIS_CHG_BAK.DATA_DEL_DESC is '数据删除描述';
comment on column MBT_210_D_HIS_CHG_BAK.DATA_CRT_USER is '数据创建/导入用户';
comment on column MBT_210_D_HIS_CHG_BAK.DATA_CRT_DATE is '数据创建/导入日期';
comment on column MBT_210_D_HIS_CHG_BAK.DATA_CRT_TIME is '数据创建/导入时间';
comment on column MBT_210_D_HIS_CHG_BAK.DATA_CHG_USER is '数据修改/删除用户';
comment on column MBT_210_D_HIS_CHG_BAK.DATA_CHG_DATE is '数据修改/删除日期';
comment on column MBT_210_D_HIS_CHG_BAK.DATA_CHG_TIME is '数据修改/删除时间';
comment on column MBT_210_D_HIS_CHG_BAK.DATA_APV_USER is '数据审核/拒绝用户';
comment on column MBT_210_D_HIS_CHG_BAK.DATA_APV_DATE is '数据审核/拒绝日期';
comment on column MBT_210_D_HIS_CHG_BAK.DATA_APV_TIME is '数据审核/拒绝时间';
comment on column MBT_210_D_HIS_CHG_BAK.RSV1 is '扩展字段1';
comment on column MBT_210_D_HIS_CHG_BAK.RSV2 is '扩展字段2';
comment on column MBT_210_D_HIS_CHG_BAK.RSV3 is '扩展字段3';
comment on column MBT_210_D_HIS_CHG_BAK.RSV4 is '扩展字段4';
comment on column MBT_210_D_HIS_CHG_BAK.RSV5 is '扩展字段5';
comment on column MBT_210_D_HIS_CHG_BAK.B_ACCT_CODE is '账户标识码';


create table MBT_210_E_HIS_CHG_BAK
(
    DATA_ID        CHAR(32) not null primary key,
    PDATA_ID       CHAR(32) not null ,
    E_CCC          VARCHAR2(60),
    ODS_DATA_ID    CHAR(32),
    HIS_DATE       CHAR(8),
    HIS_DATE_TIME  CHAR(14),
    DATA_DATE      CHAR(8),
    CORP_ID        VARCHAR2(14),
    ORG_ID         VARCHAR2(14),
    GROUP_ID       VARCHAR2(14),
    INQ_ORG_ID     CHAR(24),
    INQ_GROUP_ID   CHAR(24),
    DATA_DESC      NVARCHAR2(256),
    REMARKS        NVARCHAR2(512),
    CHECK_FLAG     CHAR,
    CHECK_DESC     NVARCHAR2(512),
    CHECK_ERR_TYPE CHAR,
    NEXT_ACTION    CHAR(2),
    DATA_FLAG      CHAR,
    DATA_SOURE     CHAR,
    DATA_VERSION   NUMBER(8),
    DATA_REJ_DESC  NVARCHAR2(128),
    DATA_DEL_DESC  NVARCHAR2(128),
    DATA_CRT_USER  NVARCHAR2(20),
    DATA_CRT_DATE  CHAR(8),
    DATA_CRT_TIME  CHAR(14),
    DATA_CHG_USER  NVARCHAR2(20),
    DATA_CHG_DATE  CHAR(8),
    DATA_CHG_TIME  CHAR(14),
    DATA_APV_USER  NVARCHAR2(20),
    DATA_APV_DATE  CHAR(8),
    DATA_APV_TIME  CHAR(14),
    RSV1           NVARCHAR2(180),
    RSV2           NVARCHAR2(180),
    RSV3           NVARCHAR2(180),
    RSV4           NVARCHAR2(180),
    RSV5           NVARCHAR2(180),
    B_ACCT_CODE    VARCHAR2(60)
);
comment on column MBT_210_E_HIS_CHG_BAK.DATA_ID is '主键';
comment on column MBT_210_E_HIS_CHG_BAK.PDATA_ID is '外键';
comment on column MBT_210_E_HIS_CHG_BAK.E_CCC is '抵（质）押合同标识码';
comment on column MBT_210_E_HIS_CHG_BAK.ODS_DATA_ID is 'ODS数据ID';
comment on column MBT_210_E_HIS_CHG_BAK.HIS_DATE is '信息同步日期';
comment on column MBT_210_E_HIS_CHG_BAK.HIS_DATE_TIME is '信息同步时间';
comment on column MBT_210_E_HIS_CHG_BAK.DATA_DATE is '数据日期';
comment on column MBT_210_E_HIS_CHG_BAK.CORP_ID is '法人机构号';
comment on column MBT_210_E_HIS_CHG_BAK.ORG_ID is '分行机构号';
comment on column MBT_210_E_HIS_CHG_BAK.GROUP_ID is '部门编号';
comment on column MBT_210_E_HIS_CHG_BAK.INQ_ORG_ID is '查询机构号';
comment on column MBT_210_E_HIS_CHG_BAK.INQ_GROUP_ID is '查询组号';
comment on column MBT_210_E_HIS_CHG_BAK.DATA_DESC is '记录描述';
comment on column MBT_210_E_HIS_CHG_BAK.REMARKS is '备注';
comment on column MBT_210_E_HIS_CHG_BAK.CHECK_FLAG is '校验标识';
comment on column MBT_210_E_HIS_CHG_BAK.CHECK_DESC is '校验结果';
comment on column MBT_210_E_HIS_CHG_BAK.CHECK_ERR_TYPE is '校验失败类型';
comment on column MBT_210_E_HIS_CHG_BAK.NEXT_ACTION is '下一动作';
comment on column MBT_210_E_HIS_CHG_BAK.DATA_FLAG is '数据是否已删除';
comment on column MBT_210_E_HIS_CHG_BAK.DATA_SOURE is '数据来源';
comment on column MBT_210_E_HIS_CHG_BAK.DATA_VERSION is '数据版本号';
comment on column MBT_210_E_HIS_CHG_BAK.DATA_REJ_DESC is '数据审核拒绝描述';
comment on column MBT_210_E_HIS_CHG_BAK.DATA_DEL_DESC is '数据删除描述';
comment on column MBT_210_E_HIS_CHG_BAK.DATA_CRT_USER is '数据创建/导入用户';
comment on column MBT_210_E_HIS_CHG_BAK.DATA_CRT_DATE is '数据创建/导入日期';
comment on column MBT_210_E_HIS_CHG_BAK.DATA_CRT_TIME is '数据创建/导入时间';
comment on column MBT_210_E_HIS_CHG_BAK.DATA_CHG_USER is '数据修改/删除用户';
comment on column MBT_210_E_HIS_CHG_BAK.DATA_CHG_DATE is '数据修改/删除日期';
comment on column MBT_210_E_HIS_CHG_BAK.DATA_CHG_TIME is '数据修改/删除时间';
comment on column MBT_210_E_HIS_CHG_BAK.DATA_APV_USER is '数据审核/拒绝用户';
comment on column MBT_210_E_HIS_CHG_BAK.DATA_APV_DATE is '数据审核/拒绝日期';
comment on column MBT_210_E_HIS_CHG_BAK.DATA_APV_TIME is '数据审核/拒绝时间';
comment on column MBT_210_E_HIS_CHG_BAK.RSV1 is '扩展字段1';
comment on column MBT_210_E_HIS_CHG_BAK.RSV2 is '扩展字段2';
comment on column MBT_210_E_HIS_CHG_BAK.RSV3 is '扩展字段3';
comment on column MBT_210_E_HIS_CHG_BAK.RSV4 is '扩展字段4';
comment on column MBT_210_E_HIS_CHG_BAK.RSV5 is '扩展字段5';
comment on column MBT_210_E_HIS_CHG_BAK.B_ACCT_CODE is '账户标识码';


create table MBT_210_K_HIS_CHG_BAK
(
    DATA_ID          CHAR(32) not null primary key,
    PDATA_ID         CHAR(32) not null ,
    REF_NO           VARCHAR2(65),
    K_CHAN_TRAN_TYPE VARCHAR2(2),
    K_TRAN_DATE      CHAR(8),
    K_TRAN_AMT       NUMBER(15),
    K_DUE_TRAN_MON   NUMBER(3),
    K_DET_INFO       NVARCHAR2(200),
    ODS_DATA_ID      CHAR(32),
    HIS_DATE         CHAR(8),
    HIS_DATE_TIME    CHAR(14),
    DATA_DATE        CHAR(8),
    CORP_ID          VARCHAR2(14),
    ORG_ID           VARCHAR2(14),
    GROUP_ID         VARCHAR2(14),
    INQ_ORG_ID       CHAR(24),
    INQ_GROUP_ID     CHAR(24),
    DATA_DESC        NVARCHAR2(256),
    REMARKS          NVARCHAR2(512),
    CHECK_FLAG       CHAR,
    CHECK_DESC       NVARCHAR2(512),
    CHECK_ERR_TYPE   CHAR,
    NEXT_ACTION      CHAR(2),
    DATA_FLAG        CHAR,
    DATA_SOURE       CHAR,
    DATA_VERSION     NUMBER(8),
    DATA_REJ_DESC    NVARCHAR2(128),
    DATA_DEL_DESC    NVARCHAR2(128),
    DATA_CRT_USER    NVARCHAR2(20),
    DATA_CRT_DATE    CHAR(8),
    DATA_CRT_TIME    CHAR(14),
    DATA_CHG_USER    NVARCHAR2(20),
    DATA_CHG_DATE    CHAR(8),
    DATA_CHG_TIME    CHAR(14),
    DATA_APV_USER    NVARCHAR2(20),
    DATA_APV_DATE    CHAR(8),
    DATA_APV_TIME    CHAR(14),
    RSV1             NVARCHAR2(180),
    RSV2             NVARCHAR2(180),
    RSV3             NVARCHAR2(180),
    RSV4             NVARCHAR2(180),
    RSV5             NVARCHAR2(180),
    B_ACCT_CODE      VARCHAR2(60),
    K_TRAN_AMT_ORG   NUMBER(15)
);
comment on column MBT_210_K_HIS_CHG_BAK.DATA_ID is '主键';
comment on column MBT_210_K_HIS_CHG_BAK.PDATA_ID is '外键';
comment on column MBT_210_K_HIS_CHG_BAK.REF_NO is '交易流水';
comment on column MBT_210_K_HIS_CHG_BAK.K_CHAN_TRAN_TYPE is '交易类型';
comment on column MBT_210_K_HIS_CHG_BAK.K_TRAN_DATE is '交易日期';
comment on column MBT_210_K_HIS_CHG_BAK.K_TRAN_AMT is '交易金额';
comment on column MBT_210_K_HIS_CHG_BAK.K_DUE_TRAN_MON is '到期日期变更月数';
comment on column MBT_210_K_HIS_CHG_BAK.K_DET_INFO is '交易明细信息';
comment on column MBT_210_K_HIS_CHG_BAK.ODS_DATA_ID is 'ODS数据ID';
comment on column MBT_210_K_HIS_CHG_BAK.HIS_DATE is '信息同步日期';
comment on column MBT_210_K_HIS_CHG_BAK.HIS_DATE_TIME is '信息同步时间';
comment on column MBT_210_K_HIS_CHG_BAK.DATA_DATE is '数据日期';
comment on column MBT_210_K_HIS_CHG_BAK.CORP_ID is '法人机构号';
comment on column MBT_210_K_HIS_CHG_BAK.ORG_ID is '分行机构号';
comment on column MBT_210_K_HIS_CHG_BAK.GROUP_ID is '部门编号';
comment on column MBT_210_K_HIS_CHG_BAK.INQ_ORG_ID is '查询机构号';
comment on column MBT_210_K_HIS_CHG_BAK.INQ_GROUP_ID is '查询组号';
comment on column MBT_210_K_HIS_CHG_BAK.DATA_DESC is '记录描述';
comment on column MBT_210_K_HIS_CHG_BAK.REMARKS is '备注';
comment on column MBT_210_K_HIS_CHG_BAK.CHECK_FLAG is '校验标识';
comment on column MBT_210_K_HIS_CHG_BAK.CHECK_DESC is '校验结果';
comment on column MBT_210_K_HIS_CHG_BAK.CHECK_ERR_TYPE is '校验失败类型';
comment on column MBT_210_K_HIS_CHG_BAK.NEXT_ACTION is '下一动作';
comment on column MBT_210_K_HIS_CHG_BAK.DATA_FLAG is '数据是否已删除';
comment on column MBT_210_K_HIS_CHG_BAK.DATA_SOURE is '数据来源';
comment on column MBT_210_K_HIS_CHG_BAK.DATA_VERSION is '数据版本号';
comment on column MBT_210_K_HIS_CHG_BAK.DATA_REJ_DESC is '数据审核拒绝描述';
comment on column MBT_210_K_HIS_CHG_BAK.DATA_DEL_DESC is '数据删除描述';
comment on column MBT_210_K_HIS_CHG_BAK.DATA_CRT_USER is '数据创建/导入用户';
comment on column MBT_210_K_HIS_CHG_BAK.DATA_CRT_DATE is '数据创建/导入日期';
comment on column MBT_210_K_HIS_CHG_BAK.DATA_CRT_TIME is '数据创建/导入时间';
comment on column MBT_210_K_HIS_CHG_BAK.DATA_CHG_USER is '数据修改/删除用户';
comment on column MBT_210_K_HIS_CHG_BAK.DATA_CHG_DATE is '数据修改/删除日期';
comment on column MBT_210_K_HIS_CHG_BAK.DATA_CHG_TIME is '数据修改/删除时间';
comment on column MBT_210_K_HIS_CHG_BAK.DATA_APV_USER is '数据审核/拒绝用户';
comment on column MBT_210_K_HIS_CHG_BAK.DATA_APV_DATE is '数据审核/拒绝日期';
comment on column MBT_210_K_HIS_CHG_BAK.DATA_APV_TIME is '数据审核/拒绝时间';
comment on column MBT_210_K_HIS_CHG_BAK.RSV1 is '扩展字段1';
comment on column MBT_210_K_HIS_CHG_BAK.RSV2 is '扩展字段2';
comment on column MBT_210_K_HIS_CHG_BAK.RSV3 is '扩展字段3';
comment on column MBT_210_K_HIS_CHG_BAK.RSV4 is '扩展字段4';
comment on column MBT_210_K_HIS_CHG_BAK.RSV5 is '扩展字段5';
comment on column MBT_210_K_HIS_CHG_BAK.B_ACCT_CODE is '账户标识码';

create table MBT_220_HIS_CHG_BAK
(
    DATA_ID            CHAR(32) not null primary key,
    DATA_DATE          CHAR(8),
    CORP_ID            VARCHAR2(14),
    ORG_ID             VARCHAR2(14),
    GROUP_ID           VARCHAR2(14),
    INQ_ORG_ID         CHAR(24),
    INQ_GROUP_ID       CHAR(24),
    B_INF_REC_TYPE     CHAR(3),
    B_CONTRACT_CODE    VARCHAR2(60),
    B_RPT_DATE         CHAR(8),
    B_RPT_DATE_CODE    CHAR(2),
    B_NAME             NVARCHAR2(80),
    B_ID_TYPE          VARCHAR2(10),
    B_ID_NUM           VARCHAR2(40),
    B_MNGMT_ORG_CODE   VARCHAR2(14),
    B_CONTRACT_NO      VARCHAR2(32),
    D_CREDIT_LIM_TYPE  VARCHAR2(2),
    D_LIM_LOOP_FLG     CHAR,
    D_CREDIT_LIM       NUMBER(15),
    D_CY               CHAR(3),
    D_CON_EFF_DATE     CHAR(8),
    D_CON_EXP_DATE     CHAR(8),
    D_CON_STATUS       CHAR(2),
    D_CREDIT_REST      NUMBER(15),
    D_CREDIT_REST_CODE VARCHAR2(60),
    F_DATA_DESC        NVARCHAR2(256),
    REMARKS            NVARCHAR2(512),
    CHECK_FLAG         CHAR,
    CHECK_DESC         VARCHAR2(512),
    CHECK_ERR_TYPE     CHAR,
    NEXT_ACTION        CHAR(2),
    DATA_STATUS        CHAR(2),
    DATA_FLAG          CHAR,
    DATA_SOURCE        CHAR,
    DATA_VERSION       NUMBER(8),
    DATA_REJ_DESC      NVARCHAR2(128),
    DATA_DEL_DESC      NVARCHAR2(128),
    DATA_CRT_USER      VARCHAR2(20),
    DATA_CRT_DATE      CHAR(8),
    DATA_CRT_TIME      CHAR(14),
    DATA_CHG_USER      VARCHAR2(20),
    DATA_CHG_DATE      CHAR(8),
    DATA_CHG_TIME      CHAR(14),
    DATA_APV_USER      VARCHAR2(20),
    DATA_APV_DATE      CHAR(8),
    DATA_APV_TIME      CHAR(14),
    RSV1               VARCHAR2(180),
    RSV2               VARCHAR2(180),
    RSV3               VARCHAR2(180),
    RSV4               VARCHAR2(180),
    RSV5               VARCHAR2(180),
    ODS_DATA_ID        CHAR(32),
    HIS_DATE           CHAR(8),
    HIS_TIME           CHAR(14),
    CUST_NO            VARCHAR2(32),
    IS_RPT             VARCHAR2(64),
    FB_STATUS          CHAR(2),
    RPT_FILE_NAME      VARCHAR2(512),
    D_CREDIT_REST_LCY  NUMBER(15),
    D_CREDIT_LIM_LCY   NUMBER(15),
    D_CREDIT_REST_ORG  NUMBER(15),
    D_CREDIT_LIM_ORG   NUMBER(15)
);
comment on column MBT_220_HIS_CHG_BAK.DATA_ID is '主键';
comment on column MBT_220_HIS_CHG_BAK.DATA_DATE is '数据日期';
comment on column MBT_220_HIS_CHG_BAK.CORP_ID is '法人机构号';
comment on column MBT_220_HIS_CHG_BAK.ORG_ID is '分行机构号';
comment on column MBT_220_HIS_CHG_BAK.GROUP_ID is '部门编号';
comment on column MBT_220_HIS_CHG_BAK.INQ_ORG_ID is '查询机构号';
comment on column MBT_220_HIS_CHG_BAK.INQ_GROUP_ID is '查询组号';
comment on column MBT_220_HIS_CHG_BAK.B_INF_REC_TYPE is '信息记录类型';
comment on column MBT_220_HIS_CHG_BAK.B_CONTRACT_CODE is '授信协议标识码';
comment on column MBT_220_HIS_CHG_BAK.B_RPT_DATE is '信息报告日期';
comment on column MBT_220_HIS_CHG_BAK.B_RPT_DATE_CODE is '报告时点说明代码';
comment on column MBT_220_HIS_CHG_BAK.B_NAME is '受信人名称';
comment on column MBT_220_HIS_CHG_BAK.B_ID_TYPE is '受信人身份标识类型';
comment on column MBT_220_HIS_CHG_BAK.B_ID_NUM is '受信人身份标识证件号码';
comment on column MBT_220_HIS_CHG_BAK.B_MNGMT_ORG_CODE is '业务管理机构代码';
comment on column MBT_220_HIS_CHG_BAK.B_CONTRACT_NO is '授信协议编号';
comment on column MBT_220_HIS_CHG_BAK.D_CREDIT_LIM_TYPE is '授信额度类型';
comment on column MBT_220_HIS_CHG_BAK.D_LIM_LOOP_FLG is '额度循环标志';
comment on column MBT_220_HIS_CHG_BAK.D_CREDIT_LIM is '授信额度';
comment on column MBT_220_HIS_CHG_BAK.D_CY is '币种';
comment on column MBT_220_HIS_CHG_BAK.D_CON_EFF_DATE is '额度生效日期';
comment on column MBT_220_HIS_CHG_BAK.D_CON_EXP_DATE is '额度到期日期';
comment on column MBT_220_HIS_CHG_BAK.D_CON_STATUS is '额度状态';
comment on column MBT_220_HIS_CHG_BAK.D_CREDIT_REST is '授信限额';
comment on column MBT_220_HIS_CHG_BAK.D_CREDIT_REST_CODE is '授信限额编号';
comment on column MBT_220_HIS_CHG_BAK.F_DATA_DESC is '记录描述';
comment on column MBT_220_HIS_CHG_BAK.REMARKS is '备注';
comment on column MBT_220_HIS_CHG_BAK.CHECK_FLAG is '校验标识';
comment on column MBT_220_HIS_CHG_BAK.CHECK_DESC is '校验结果';
comment on column MBT_220_HIS_CHG_BAK.CHECK_ERR_TYPE is '校验失败类型';
comment on column MBT_220_HIS_CHG_BAK.NEXT_ACTION is '下一动作';
comment on column MBT_220_HIS_CHG_BAK.DATA_STATUS is '数据状态';
comment on column MBT_220_HIS_CHG_BAK.DATA_FLAG is '数据是否已删除';
comment on column MBT_220_HIS_CHG_BAK.DATA_SOURCE is '数据来源';
comment on column MBT_220_HIS_CHG_BAK.DATA_VERSION is '数据版本号';
comment on column MBT_220_HIS_CHG_BAK.DATA_REJ_DESC is '数据审核拒绝描述';
comment on column MBT_220_HIS_CHG_BAK.DATA_DEL_DESC is '数据删除描述';
comment on column MBT_220_HIS_CHG_BAK.DATA_CRT_USER is '数据创建/导入用户';
comment on column MBT_220_HIS_CHG_BAK.DATA_CRT_DATE is '数据创建/导入日期';
comment on column MBT_220_HIS_CHG_BAK.DATA_CRT_TIME is '数据创建/导入时间';
comment on column MBT_220_HIS_CHG_BAK.DATA_CHG_USER is '数据修改/删除用户';
comment on column MBT_220_HIS_CHG_BAK.DATA_CHG_DATE is '数据修改/删除日期';
comment on column MBT_220_HIS_CHG_BAK.DATA_CHG_TIME is '数据修改/删除时间';
comment on column MBT_220_HIS_CHG_BAK.DATA_APV_USER is '数据审核/拒绝用户';
comment on column MBT_220_HIS_CHG_BAK.DATA_APV_DATE is '数据审核/拒绝日期';
comment on column MBT_220_HIS_CHG_BAK.DATA_APV_TIME is '数据审核/拒绝时间';
comment on column MBT_220_HIS_CHG_BAK.RSV1 is '扩展字段1';
comment on column MBT_220_HIS_CHG_BAK.RSV2 is '扩展字段2';
comment on column MBT_220_HIS_CHG_BAK.RSV3 is '扩展字段3';
comment on column MBT_220_HIS_CHG_BAK.RSV4 is '扩展字段4';
comment on column MBT_220_HIS_CHG_BAK.RSV5 is '扩展字段5';
comment on column MBT_220_HIS_CHG_BAK.ODS_DATA_ID is 'ODS数据ID';
comment on column MBT_220_HIS_CHG_BAK.HIS_DATE is '信息同步日期';
comment on column MBT_220_HIS_CHG_BAK.CUST_NO is '客户号';
comment on column MBT_220_HIS_CHG_BAK.IS_RPT is '是否上报';
comment on column MBT_220_HIS_CHG_BAK.FB_STATUS is '反馈状态';
comment on column MBT_220_HIS_CHG_BAK.RPT_FILE_NAME is '上报文件名';
comment on column MBT_220_HIS_CHG_BAK.D_CREDIT_REST_ORG is '授信限额_原始数据金额';
comment on column MBT_220_HIS_CHG_BAK.D_CREDIT_LIM_ORG is '授信额度_原始数据金额';

create table MBT_220_C_HIS_CHG_BAK
(
    DATA_ID            CHAR(32) not null primary key,
    PDATA_ID           CHAR(32) not null,
    C_BRER_TYPE        CHAR,
    C_CERT_REL_NAME    NVARCHAR2(80),
    C_CERT_REL_ID_TYPE VARCHAR2(2),
    C_CERT_REL_ID_NUM  VARCHAR2(40),
    ODS_DATA_ID        CHAR(32),
    HIS_DATE           CHAR(8),
    HIS_TIME           CHAR(14),
    DATA_DATE          CHAR(8),
    CORP_ID            VARCHAR2(14),
    ORG_ID             VARCHAR2(14),
    GROUP_ID           VARCHAR2(14),
    INQ_ORG_ID         CHAR(24),
    INQ_GROUP_ID       CHAR(24),
    DATA_DESC          NVARCHAR2(256),
    REMARKS            NVARCHAR2(512),
    CHECK_FLAG         CHAR,
    CHECK_DESC         NVARCHAR2(512),
    CHECK_ERR_TYPE     CHAR,
    NEXT_ACTION        CHAR(2),
    DATA_FLAG          CHAR,
    DATA_SOURE         CHAR,
    DATA_VERSION       NUMBER(8),
    DATA_REJ_DESC      NVARCHAR2(128),
    DATA_DEL_DESC      NVARCHAR2(128),
    DATA_CRT_USER      NVARCHAR2(20),
    DATA_CRT_DATE      CHAR(8),
    DATA_CRT_TIME      CHAR(14),
    DATA_CHG_USER      NVARCHAR2(20),
    DATA_CHG_DATE      CHAR(8),
    DATA_CHG_TIME      CHAR(14),
    DATA_APV_USER      NVARCHAR2(20),
    DATA_APV_DATE      CHAR(8),
    DATA_APV_TIME      CHAR(14),
    RSV1               NVARCHAR2(180),
    RSV2               NVARCHAR2(180),
    RSV3               NVARCHAR2(180),
    RSV4               NVARCHAR2(180),
    RSV5               NVARCHAR2(180),
    B_CONTRACT_CODE    VARCHAR2(60)
);
comment on column MBT_220_C_HIS_CHG_BAK.DATA_ID is '主键';
comment on column MBT_220_C_HIS_CHG_BAK.PDATA_ID is '外键';
comment on column MBT_220_C_HIS_CHG_BAK.C_BRER_TYPE is '共同受信人身份类别';
comment on column MBT_220_C_HIS_CHG_BAK.C_CERT_REL_NAME is '共同受信人名称';
comment on column MBT_220_C_HIS_CHG_BAK.C_CERT_REL_ID_TYPE is '共同受信人身份标识类型';
comment on column MBT_220_C_HIS_CHG_BAK.C_CERT_REL_ID_NUM is '共同受信人身份标识号码';
comment on column MBT_220_C_HIS_CHG_BAK.ODS_DATA_ID is 'ODS数据ID';
comment on column MBT_220_C_HIS_CHG_BAK.HIS_DATE is '信息同步日期';
comment on column MBT_220_C_HIS_CHG_BAK.DATA_DATE is '数据日期';
comment on column MBT_220_C_HIS_CHG_BAK.CORP_ID is '法人机构号';
comment on column MBT_220_C_HIS_CHG_BAK.ORG_ID is '分行机构号';
comment on column MBT_220_C_HIS_CHG_BAK.GROUP_ID is '部门编号';
comment on column MBT_220_C_HIS_CHG_BAK.INQ_ORG_ID is '查询机构号';
comment on column MBT_220_C_HIS_CHG_BAK.INQ_GROUP_ID is '查询组号';
comment on column MBT_220_C_HIS_CHG_BAK.DATA_DESC is '记录描述';
comment on column MBT_220_C_HIS_CHG_BAK.REMARKS is '备注';
comment on column MBT_220_C_HIS_CHG_BAK.CHECK_FLAG is '校验标识';
comment on column MBT_220_C_HIS_CHG_BAK.CHECK_DESC is '校验结果';
comment on column MBT_220_C_HIS_CHG_BAK.CHECK_ERR_TYPE is '校验失败类型';
comment on column MBT_220_C_HIS_CHG_BAK.NEXT_ACTION is '下一动作';
comment on column MBT_220_C_HIS_CHG_BAK.DATA_FLAG is '数据是否已删除';
comment on column MBT_220_C_HIS_CHG_BAK.DATA_SOURE is '数据来源';
comment on column MBT_220_C_HIS_CHG_BAK.DATA_VERSION is '数据版本号';
comment on column MBT_220_C_HIS_CHG_BAK.DATA_REJ_DESC is '数据审核拒绝描述';
comment on column MBT_220_C_HIS_CHG_BAK.DATA_DEL_DESC is '数据删除描述';
comment on column MBT_220_C_HIS_CHG_BAK.DATA_CRT_USER is '数据创建/导入用户';
comment on column MBT_220_C_HIS_CHG_BAK.DATA_CRT_DATE is '数据创建/导入日期';
comment on column MBT_220_C_HIS_CHG_BAK.DATA_CRT_TIME is '数据创建/导入时间';
comment on column MBT_220_C_HIS_CHG_BAK.DATA_CHG_USER is '数据修改/删除用户';
comment on column MBT_220_C_HIS_CHG_BAK.DATA_CHG_DATE is '数据修改/删除日期';
comment on column MBT_220_C_HIS_CHG_BAK.DATA_CHG_TIME is '数据修改/删除时间';
comment on column MBT_220_C_HIS_CHG_BAK.DATA_APV_USER is '数据审核/拒绝用户';
comment on column MBT_220_C_HIS_CHG_BAK.DATA_APV_DATE is '数据审核/拒绝日期';
comment on column MBT_220_C_HIS_CHG_BAK.DATA_APV_TIME is '数据审核/拒绝时间';
comment on column MBT_220_C_HIS_CHG_BAK.RSV1 is '扩展字段1';
comment on column MBT_220_C_HIS_CHG_BAK.RSV2 is '扩展字段2';
comment on column MBT_220_C_HIS_CHG_BAK.RSV3 is '扩展字段3';
comment on column MBT_220_C_HIS_CHG_BAK.RSV4 is '扩展字段4';
comment on column MBT_220_C_HIS_CHG_BAK.RSV5 is '扩展字段5';
comment on column MBT_220_C_HIS_CHG_BAK.B_CONTRACT_CODE is '授信协议标识码';


create table MBT_230_HIS_CHG_BAK
(
    DATA_ID              VARCHAR2(32) not null primary key,
    DATA_DATE            CHAR(8),
    CORP_ID              VARCHAR2(16),
    ORG_ID               VARCHAR2(16),
    GROUP_ID             VARCHAR2(16),
    INQ_ORG_ID           CHAR(24),
    INQ_GROUP_ID         CHAR(24),
    B_ACCT_TYPE          VARCHAR2(2),
    B_ACCT_CODE          VARCHAR2(60),
    B_RPT_DATE           CHAR(8),
    B_RPT_DATE_CODE      CHAR(2),
    B_INF_REC_TYPE       CHAR(3),
    B_NAME               NVARCHAR2(30),
    B_ID_TYPE            VARCHAR2(2),
    B_ID_NUM             NVARCHAR2(20),
    B_MNGMT_ORG_CODE     VARCHAR2(14),
    B_CUST_NO            VARCHAR2(32),
    C_BUSI_LINES         CHAR,
    C_BUSI_DTIL_LINES    CHAR(2),
    C_OPEN_DATE          CHAR(8),
    C_ACCT_CRED_LINE     NUMBER(15),
    C_CY                 CHAR(3),
    C_DUE_DATE           CHAR(8),
    C_GUAR_MODE          CHAR,
    C_OTH_REPY_GUAR_WAY  CHAR,
    C_SEC_DEP            NUMBER(3),
    C_CTRCT_TXT_CD       NVARCHAR2(60),
    D_ACCT_STATUS        CHAR,
    D_LOAN_AMT           NUMBER(15),
    D_REPAY_PRD          CHAR(8),
    D_FIVE_CATE          CHAR,
    D_FIVE_CATE_ADJ_DATE CHAR(8),
    D_RI_EX              NUMBER(15),
    D_COMP_ADV_FLAG      CHAR,
    D_CLOSE_DATE         CHAR(8),
    CHECK_FLAG           CHAR(2),
    CHECK_DESC           NVARCHAR2(512),
    CHECK_ERR_TYPE       VARCHAR2(2),
    NEXT_ACTION          CHAR(2),
    DATA_STATUS          CHAR(2),
    DATA_FLAG            CHAR,
    DATA_SOURCE          CHAR,
    DATA_VERSION         NUMBER,
    DATA_REJ_DESC        NVARCHAR2(512),
    DATA_DEL_DESC        NVARCHAR2(512),
    DATA_CRT_USER        NVARCHAR2(32),
    DATA_CRT_DATE        CHAR(8),
    DATA_CRT_TIME        CHAR(14),
    DATA_CHG_USER        NVARCHAR2(32),
    DATA_CHG_DATE        CHAR(8),
    DATA_CHG_TIME        CHAR(14),
    DATA_APV_USER        NVARCHAR2(32),
    DATA_APV_DATE        CHAR(8),
    DATA_APV_TIME        CHAR(14),
    REF_NO               VARCHAR2(65),
    DATA_DESC            NVARCHAR2(256),
    RSV1                 NVARCHAR2(180),
    RSV2                 NVARCHAR2(180),
    RSV3                 NVARCHAR2(180),
    RSV4                 NVARCHAR2(180),
    RSV5                 NVARCHAR2(180),
    ODS_DATA_ID          CHAR(32),
    HIS_DATE             CHAR(8),
    HIS_TIME             CHAR(14),
    INF_REC_TYPE         CHAR(3),
    IS_RPT               VARCHAR2(64),
    FB_STATUS            CHAR(2),
    RPT_FILE_NAME        VARCHAR2(512),
    C_ACCT_CRED_LINE_LCY NUMBER(15),
    D_LOAN_AMT_LCY       NUMBER(15),
    D_RI_EX_LCY          NUMBER(15),
    D_RI_EX_ORG          NUMBER(15),
    D_LOAN_AMT_ORG       NUMBER(15),
    C_ACCT_CRED_LINE_ORG NUMBER(15)
);
comment on column MBT_230_HIS_CHG_BAK.DATA_ID is '主键';
comment on column MBT_230_HIS_CHG_BAK.DATA_DATE is '数据日期';
comment on column MBT_230_HIS_CHG_BAK.CORP_ID is '法人机构号';
comment on column MBT_230_HIS_CHG_BAK.ORG_ID is '分行机构号';
comment on column MBT_230_HIS_CHG_BAK.GROUP_ID is '部门编号';
comment on column MBT_230_HIS_CHG_BAK.INQ_ORG_ID is '查询机构号';
comment on column MBT_230_HIS_CHG_BAK.INQ_GROUP_ID is '查询组号';
comment on column MBT_230_HIS_CHG_BAK.B_ACCT_TYPE is '账户类型';
comment on column MBT_230_HIS_CHG_BAK.B_ACCT_CODE is '账户标识码';
comment on column MBT_230_HIS_CHG_BAK.B_RPT_DATE is '信息报告日期';
comment on column MBT_230_HIS_CHG_BAK.B_RPT_DATE_CODE is '报告时点说明代码';
comment on column MBT_230_HIS_CHG_BAK.B_INF_REC_TYPE is '信息记录类型';
comment on column MBT_230_HIS_CHG_BAK.B_NAME is '债务人姓名';
comment on column MBT_230_HIS_CHG_BAK.B_ID_TYPE is '债务人证件类型';
comment on column MBT_230_HIS_CHG_BAK.B_ID_NUM is '债务人证件号码';
comment on column MBT_230_HIS_CHG_BAK.B_MNGMT_ORG_CODE is '业务管理机构代码';
comment on column MBT_230_HIS_CHG_BAK.B_CUST_NO is '债务人编号';
comment on column MBT_230_HIS_CHG_BAK.C_BUSI_LINES is '担保业务大类  ';
comment on column MBT_230_HIS_CHG_BAK.C_BUSI_DTIL_LINES is '担保业务种类细分  ';
comment on column MBT_230_HIS_CHG_BAK.C_OPEN_DATE is '开户日期';
comment on column MBT_230_HIS_CHG_BAK.C_ACCT_CRED_LINE is '担保金额  ';
comment on column MBT_230_HIS_CHG_BAK.C_CY is '币种  ';
comment on column MBT_230_HIS_CHG_BAK.C_DUE_DATE is '到期日期  ';
comment on column MBT_230_HIS_CHG_BAK.C_GUAR_MODE is '反担保方式';
comment on column MBT_230_HIS_CHG_BAK.C_OTH_REPY_GUAR_WAY is '其他还款保证方式';
comment on column MBT_230_HIS_CHG_BAK.C_SEC_DEP is '保证金百分比';
comment on column MBT_230_HIS_CHG_BAK.C_CTRCT_TXT_CD is '担保合同文本编号';
comment on column MBT_230_HIS_CHG_BAK.D_ACCT_STATUS is '账户状态';
comment on column MBT_230_HIS_CHG_BAK.D_LOAN_AMT is '在保余额';
comment on column MBT_230_HIS_CHG_BAK.D_REPAY_PRD is '余额变化日期';
comment on column MBT_230_HIS_CHG_BAK.D_FIVE_CATE is '五级分类';
comment on column MBT_230_HIS_CHG_BAK.D_FIVE_CATE_ADJ_DATE is '五级分类认定日期';
comment on column MBT_230_HIS_CHG_BAK.D_RI_EX is '风险敞口  ';
comment on column MBT_230_HIS_CHG_BAK.D_COMP_ADV_FLAG is '代偿（垫款）标志';
comment on column MBT_230_HIS_CHG_BAK.D_CLOSE_DATE is '账户关闭日期';
comment on column MBT_230_HIS_CHG_BAK.CHECK_FLAG is '校验标识';
comment on column MBT_230_HIS_CHG_BAK.CHECK_DESC is '校验结果';
comment on column MBT_230_HIS_CHG_BAK.CHECK_ERR_TYPE is '校验失败类型';
comment on column MBT_230_HIS_CHG_BAK.NEXT_ACTION is '下一动作';
comment on column MBT_230_HIS_CHG_BAK.DATA_STATUS is '数据状态';
comment on column MBT_230_HIS_CHG_BAK.DATA_FLAG is '数据是否已删除';
comment on column MBT_230_HIS_CHG_BAK.DATA_SOURCE is '数据来源';
comment on column MBT_230_HIS_CHG_BAK.DATA_VERSION is '数据版本号';
comment on column MBT_230_HIS_CHG_BAK.DATA_REJ_DESC is '数据审核拒绝描述';
comment on column MBT_230_HIS_CHG_BAK.DATA_DEL_DESC is '数据删除描述';
comment on column MBT_230_HIS_CHG_BAK.DATA_CRT_USER is '数据创建/导入用户';
comment on column MBT_230_HIS_CHG_BAK.DATA_CRT_DATE is '数据创建/导入日期';
comment on column MBT_230_HIS_CHG_BAK.DATA_CRT_TIME is '数据创建/导入时间';
comment on column MBT_230_HIS_CHG_BAK.DATA_CHG_USER is '数据修改/删除用户';
comment on column MBT_230_HIS_CHG_BAK.DATA_CHG_DATE is '数据修改/删除日期';
comment on column MBT_230_HIS_CHG_BAK.DATA_CHG_TIME is '数据修改/删除时间';
comment on column MBT_230_HIS_CHG_BAK.DATA_APV_USER is '数据审核/拒绝用户';
comment on column MBT_230_HIS_CHG_BAK.DATA_APV_DATE is '数据审核/拒绝日期';
comment on column MBT_230_HIS_CHG_BAK.DATA_APV_TIME is '数据审核/拒绝时间';
comment on column MBT_230_HIS_CHG_BAK.DATA_DESC is '记录描述';
comment on column MBT_230_HIS_CHG_BAK.RSV1 is '扩展字段1';
comment on column MBT_230_HIS_CHG_BAK.RSV2 is '扩展字段2';
comment on column MBT_230_HIS_CHG_BAK.RSV3 is '扩展字段3';
comment on column MBT_230_HIS_CHG_BAK.RSV4 is '扩展字段4';
comment on column MBT_230_HIS_CHG_BAK.RSV5 is '扩展字段5';
comment on column MBT_230_HIS_CHG_BAK.ODS_DATA_ID is 'ODS数据ID';
comment on column MBT_230_HIS_CHG_BAK.HIS_DATE is '信息同步日期';
comment on column MBT_230_HIS_CHG_BAK.INF_REC_TYPE is '信息记录类型';
comment on column MBT_230_HIS_CHG_BAK.IS_RPT is '是否上报';
comment on column MBT_230_HIS_CHG_BAK.FB_STATUS is '反馈状态';
comment on column MBT_230_HIS_CHG_BAK.RPT_FILE_NAME is '上报文件名';
comment on column MBT_230_HIS_CHG_BAK.D_RI_EX_ORG is '风险敞口_原始数据金额';
comment on column MBT_230_HIS_CHG_BAK.D_LOAN_AMT_ORG is '在保余额_原始数据金额';
comment on column MBT_230_HIS_CHG_BAK.C_ACCT_CRED_LINE_ORG is '担保金额_原始数据金额';

create table MBT_230_E_HIS_CHG_BAK
(
    DATA_ID        VARCHAR2(32) not null primary key,
    PDATA_ID       VARCHAR2(32) not null,
    INFO_ID_TYPE   CHAR,
    ARLP_NAME      NVARCHAR2(80),
    ARLP_CERT_TYPE VARCHAR2(2),
    ARLP_CERT_NUM  NVARCHAR2(40),
    ARLP_TYPE      CHAR,
    ARLP_AMT       NUMBER(15),
    WARTY_SIGN     CHAR,
    MAX_GUAR_MCC   VARCHAR2(60),
    ODS_DATA_ID    CHAR(32),
    HIS_DATE       CHAR(8),
    HIS_TIME       CHAR(14),
    DATA_DATE      CHAR(8),
    CORP_ID        VARCHAR2(14),
    ORG_ID         VARCHAR2(14),
    GROUP_ID       VARCHAR2(14),
    INQ_ORG_ID     CHAR(24),
    INQ_GROUP_ID   CHAR(24),
    DATA_DESC      NVARCHAR2(256),
    REMARKS        NVARCHAR2(512),
    CHECK_FLAG     CHAR,
    CHECK_DESC     NVARCHAR2(512),
    CHECK_ERR_TYPE CHAR,
    NEXT_ACTION    CHAR(2),
    DATA_FLAG      CHAR,
    DATA_SOURE     CHAR,
    DATA_VERSION   NUMBER(8),
    DATA_REJ_DESC  NVARCHAR2(128),
    DATA_DEL_DESC  NVARCHAR2(128),
    DATA_CRT_USER  NVARCHAR2(20),
    DATA_CRT_DATE  CHAR(8),
    DATA_CRT_TIME  CHAR(14),
    DATA_CHG_USER  NVARCHAR2(20),
    DATA_CHG_DATE  CHAR(8),
    DATA_CHG_TIME  CHAR(14),
    DATA_APV_USER  NVARCHAR2(20),
    DATA_APV_DATE  CHAR(8),
    DATA_APV_TIME  CHAR(14),
    RSV1           NVARCHAR2(180),
    RSV2           NVARCHAR2(180),
    RSV3           NVARCHAR2(180),
    RSV4           NVARCHAR2(180),
    RSV5           NVARCHAR2(180),
    B_ACCT_CODE    VARCHAR2(60),
    ARLP_AMT_ORG   NUMBER(15)
);
comment on column MBT_230_E_HIS_CHG_BAK.DATA_ID is '主键';
comment on column MBT_230_E_HIS_CHG_BAK.PDATA_ID is '外键';
comment on column MBT_230_E_HIS_CHG_BAK.INFO_ID_TYPE is '身份类别';
comment on column MBT_230_E_HIS_CHG_BAK.ARLP_NAME is '责任人名称';
comment on column MBT_230_E_HIS_CHG_BAK.ARLP_CERT_TYPE is '责任人身份标识类型';
comment on column MBT_230_E_HIS_CHG_BAK.ARLP_CERT_NUM is '责任人身份标识号码';
comment on column MBT_230_E_HIS_CHG_BAK.ARLP_TYPE is '还款责任人类型';
comment on column MBT_230_E_HIS_CHG_BAK.ARLP_AMT is '还款责任金额';
comment on column MBT_230_E_HIS_CHG_BAK.WARTY_SIGN is '联保标志';
comment on column MBT_230_E_HIS_CHG_BAK.MAX_GUAR_MCC is '保证合同编号';
comment on column MBT_230_E_HIS_CHG_BAK.ODS_DATA_ID is 'ODS数据ID';
comment on column MBT_230_E_HIS_CHG_BAK.HIS_DATE is '信息同步日期';
comment on column MBT_230_E_HIS_CHG_BAK.DATA_DATE is '数据日期';
comment on column MBT_230_E_HIS_CHG_BAK.CORP_ID is '法人机构号';
comment on column MBT_230_E_HIS_CHG_BAK.ORG_ID is '分行机构号';
comment on column MBT_230_E_HIS_CHG_BAK.GROUP_ID is '部门编号';
comment on column MBT_230_E_HIS_CHG_BAK.INQ_ORG_ID is '查询机构号';
comment on column MBT_230_E_HIS_CHG_BAK.INQ_GROUP_ID is '查询组号';
comment on column MBT_230_E_HIS_CHG_BAK.DATA_DESC is '记录描述';
comment on column MBT_230_E_HIS_CHG_BAK.REMARKS is '备注';
comment on column MBT_230_E_HIS_CHG_BAK.CHECK_FLAG is '校验标识';
comment on column MBT_230_E_HIS_CHG_BAK.CHECK_DESC is '校验结果';
comment on column MBT_230_E_HIS_CHG_BAK.CHECK_ERR_TYPE is '校验失败类型';
comment on column MBT_230_E_HIS_CHG_BAK.NEXT_ACTION is '下一动作';
comment on column MBT_230_E_HIS_CHG_BAK.DATA_FLAG is '数据是否已删除';
comment on column MBT_230_E_HIS_CHG_BAK.DATA_SOURE is '数据来源';
comment on column MBT_230_E_HIS_CHG_BAK.DATA_VERSION is '数据版本号';
comment on column MBT_230_E_HIS_CHG_BAK.DATA_REJ_DESC is '数据审核拒绝描述';
comment on column MBT_230_E_HIS_CHG_BAK.DATA_DEL_DESC is '数据删除描述';
comment on column MBT_230_E_HIS_CHG_BAK.DATA_CRT_USER is '数据创建/导入用户';
comment on column MBT_230_E_HIS_CHG_BAK.DATA_CRT_DATE is '数据创建/导入日期';
comment on column MBT_230_E_HIS_CHG_BAK.DATA_CRT_TIME is '数据创建/导入时间';
comment on column MBT_230_E_HIS_CHG_BAK.DATA_CHG_USER is '数据修改/删除用户';
comment on column MBT_230_E_HIS_CHG_BAK.DATA_CHG_DATE is '数据修改/删除日期';
comment on column MBT_230_E_HIS_CHG_BAK.DATA_CHG_TIME is '数据修改/删除时间';
comment on column MBT_230_E_HIS_CHG_BAK.DATA_APV_USER is '数据审核/拒绝用户';
comment on column MBT_230_E_HIS_CHG_BAK.DATA_APV_DATE is '数据审核/拒绝日期';
comment on column MBT_230_E_HIS_CHG_BAK.DATA_APV_TIME is '数据审核/拒绝时间';
comment on column MBT_230_E_HIS_CHG_BAK.RSV1 is '扩展字段1';
comment on column MBT_230_E_HIS_CHG_BAK.RSV2 is '扩展字段2';
comment on column MBT_230_E_HIS_CHG_BAK.RSV3 is '扩展字段3';
comment on column MBT_230_E_HIS_CHG_BAK.RSV4 is '扩展字段4';
comment on column MBT_230_E_HIS_CHG_BAK.RSV5 is '扩展字段5';
comment on column MBT_230_E_HIS_CHG_BAK.B_ACCT_CODE is '账户标识码';


create table MBT_230_F_HIS_CHG_BAK
(
    DATA_ID        VARCHAR2(32) not null primary key,
    PDATA_ID       VARCHAR2(32) not null,
    CCC            VARCHAR2(60),
    ODS_DATA_ID    CHAR(32),
    HIS_DATE       CHAR(8),
    HIS_TIME       CHAR(14),
    DATA_DATE      CHAR(8),
    CORP_ID        VARCHAR2(14),
    ORG_ID         VARCHAR2(14),
    GROUP_ID       VARCHAR2(14),
    INQ_ORG_ID     CHAR(24),
    INQ_GROUP_ID   CHAR(24),
    DATA_DESC      NVARCHAR2(256),
    REMARKS        NVARCHAR2(512),
    CHECK_FLAG     CHAR,
    CHECK_DESC     NVARCHAR2(512),
    CHECK_ERR_TYPE CHAR,
    NEXT_ACTION    CHAR(2),
    DATA_FLAG      CHAR,
    DATA_SOURE     CHAR,
    DATA_VERSION   NUMBER(8),
    DATA_REJ_DESC  NVARCHAR2(128),
    DATA_DEL_DESC  NVARCHAR2(128),
    DATA_CRT_USER  NVARCHAR2(20),
    DATA_CRT_DATE  CHAR(8),
    DATA_CRT_TIME  CHAR(14),
    DATA_CHG_USER  NVARCHAR2(20),
    DATA_CHG_DATE  CHAR(8),
    DATA_CHG_TIME  CHAR(14),
    DATA_APV_USER  NVARCHAR2(20),
    DATA_APV_DATE  CHAR(8),
    DATA_APV_TIME  CHAR(14),
    RSV1           NVARCHAR2(180),
    RSV2           NVARCHAR2(180),
    RSV3           NVARCHAR2(180),
    RSV4           NVARCHAR2(180),
    RSV5           NVARCHAR2(180),
    B_ACCT_CODE    VARCHAR2(60)
);
comment on column MBT_230_F_HIS_CHG_BAK.DATA_ID is '主键';
comment on column MBT_230_F_HIS_CHG_BAK.PDATA_ID is '外键';
comment on column MBT_230_F_HIS_CHG_BAK.CCC is '抵（质）押合同标识码';
comment on column MBT_230_F_HIS_CHG_BAK.ODS_DATA_ID is 'ODS数据ID';
comment on column MBT_230_F_HIS_CHG_BAK.HIS_DATE is '信息同步日期';
comment on column MBT_230_F_HIS_CHG_BAK.DATA_DATE is '数据日期';
comment on column MBT_230_F_HIS_CHG_BAK.CORP_ID is '法人机构号';
comment on column MBT_230_F_HIS_CHG_BAK.ORG_ID is '分行机构号';
comment on column MBT_230_F_HIS_CHG_BAK.GROUP_ID is '部门编号';
comment on column MBT_230_F_HIS_CHG_BAK.INQ_ORG_ID is '查询机构号';
comment on column MBT_230_F_HIS_CHG_BAK.INQ_GROUP_ID is '查询组号';
comment on column MBT_230_F_HIS_CHG_BAK.DATA_DESC is '记录描述';
comment on column MBT_230_F_HIS_CHG_BAK.REMARKS is '备注';
comment on column MBT_230_F_HIS_CHG_BAK.CHECK_FLAG is '校验标识';
comment on column MBT_230_F_HIS_CHG_BAK.CHECK_DESC is '校验结果';
comment on column MBT_230_F_HIS_CHG_BAK.CHECK_ERR_TYPE is '校验失败类型';
comment on column MBT_230_F_HIS_CHG_BAK.NEXT_ACTION is '下一动作';
comment on column MBT_230_F_HIS_CHG_BAK.DATA_FLAG is '数据是否已删除';
comment on column MBT_230_F_HIS_CHG_BAK.DATA_SOURE is '数据来源';
comment on column MBT_230_F_HIS_CHG_BAK.DATA_VERSION is '数据版本号';
comment on column MBT_230_F_HIS_CHG_BAK.DATA_REJ_DESC is '数据审核拒绝描述';
comment on column MBT_230_F_HIS_CHG_BAK.DATA_DEL_DESC is '数据删除描述';
comment on column MBT_230_F_HIS_CHG_BAK.DATA_CRT_USER is '数据创建/导入用户';
comment on column MBT_230_F_HIS_CHG_BAK.DATA_CRT_DATE is '数据创建/导入日期';
comment on column MBT_230_F_HIS_CHG_BAK.DATA_CRT_TIME is '数据创建/导入时间';
comment on column MBT_230_F_HIS_CHG_BAK.DATA_CHG_USER is '数据修改/删除用户';
comment on column MBT_230_F_HIS_CHG_BAK.DATA_CHG_DATE is '数据修改/删除日期';
comment on column MBT_230_F_HIS_CHG_BAK.DATA_CHG_TIME is '数据修改/删除时间';
comment on column MBT_230_F_HIS_CHG_BAK.DATA_APV_USER is '数据审核/拒绝用户';
comment on column MBT_230_F_HIS_CHG_BAK.DATA_APV_DATE is '数据审核/拒绝日期';
comment on column MBT_230_F_HIS_CHG_BAK.DATA_APV_TIME is '数据审核/拒绝时间';
comment on column MBT_230_F_HIS_CHG_BAK.RSV1 is '扩展字段1';
comment on column MBT_230_F_HIS_CHG_BAK.RSV2 is '扩展字段2';
comment on column MBT_230_F_HIS_CHG_BAK.RSV3 is '扩展字段3';
comment on column MBT_230_F_HIS_CHG_BAK.RSV4 is '扩展字段4';
comment on column MBT_230_F_HIS_CHG_BAK.RSV5 is '扩展字段5';
comment on column MBT_230_F_HIS_CHG_BAK.B_ACCT_CODE is '账户标识码';


create table MBT_410_HIS_CHG_BAK
(
    DATA_ID                  CHAR(32) not null primary key,
    DATA_DATE                CHAR(8),
    CORP_ID                  VARCHAR2(14),
    ORG_ID                   VARCHAR2(14),
    GROUP_ID                 VARCHAR2(14),
    INQ_ORG_ID               CHAR(24),
    INQ_GROUP_ID             CHAR(24),
    REF_NO                   VARCHAR2(65),
    B_INF_REC_TYPE           CHAR(3),
    B_ACCT_TYPE              VARCHAR2(2),
    B_ACCT_CODE              VARCHAR2(60),
    B_RPT_DATE               CHAR(8),
    B_RPT_DATE_CODE          CHAR(2),
    B_NAME                   NVARCHAR2(80),
    B_ID_TYPE                VARCHAR2(2),
    B_ID_NUM                 NVARCHAR2(40),
    B_MNGMT_ORG_CODE         VARCHAR2(14),
    C_BUSI_LINES             CHAR(2),
    C_BUSI_DTL_LINES         CHAR(2),
    C_OPEN_DATE              CHAR(8),
    C_CY                     CHAR(3),
    C_ACCT_CRED_LINE_AMT     NUMBER(15),
    C_LOAN_AMT               NUMBER(15),
    C_FLAG                   CHAR,
    C_DUE_DATE               CHAR(8),
    C_REPAY_MODE             CHAR(2),
    C_REPAY_FREQCY           VARCHAR2(2),
    C_APPLY_BUSI_DIST        CHAR(6),
    C_GUAR_MODE              CHAR,
    C_OTH_REPY_GUAR_WAY      CHAR,
    C_LOAN_TIME_LIM_CAT      CHAR(2),
    C_LOA_FRM                CHAR,
    C_ACT_INVEST             CHAR(5),
    C_FUND_SOU               VARCHAR2(2),
    C_ASSET_TRAND_FLAG       CHAR,
    F_MCC                    VARCHAR2(60),
    G_INIT_CRED_NAME         NVARCHAR2(80),
    G_INIT_CED_ORG_CODE      VARCHAR2(18),
    G_ORIG_DBT_CATE          CHAR(2),
    G_INIT_RPY_STS           CHAR,
    H_ACCT_STATUS            VARCHAR2(2),
    H_ACCT_BAL               NUMBER(15),
    H_BAL_CHG_DATE           CHAR(8),
    H_FIVE_CATE              CHAR,
    H_FIVE_CATE_ADJ_DATE     CHAR(8),
    H_PYMT_PRD               NUMBER(3),
    H_TOT_OVERD              NUMBER(15),
    H_OVERD_PRINC            NUMBER(15),
    H_OVERD_DY               NUMBER(3),
    H_LAT_RPY_DATE           CHAR(8),
    H_LAT_RPY_AMT            NUMBER(15),
    H_LAT_RPY_PRINC_AMT      NUMBER(15),
    H_RPMT_TYPE              VARCHAR2(2),
    H_LAT_AGRR_RPY_DATE      CHAR(8),
    H_LAT_AGRR_RPY_AMT       NUMBER(15),
    H_NXT_AGRR_RPY_DATE      CHAR(8),
    H_CLOSE_DATE             CHAR(8),
    DATA_DESC                NVARCHAR2(256),
    REMARKS                  VARCHAR2(512),
    CHECK_FLAG               CHAR,
    CHECK_DESC               VARCHAR2(512),
    CHECK_ERR_TYPE           CHAR,
    NEXT_ACTION              CHAR(2),
    DATA_STATUS              CHAR(2),
    DATA_FLAG                CHAR,
    DATA_SOURCE              CHAR,
    DATA_VERSION             NUMBER(8),
    DATA_REJ_DESC            VARCHAR2(128),
    DATA_DEL_DESC            VARCHAR2(128),
    DATA_CRT_USER            VARCHAR2(20),
    DATA_CRT_DATE            CHAR(8),
    DATA_CRT_TIME            CHAR(14),
    DATA_CHG_USER            VARCHAR2(20),
    DATA_CHG_DATE            CHAR(8),
    DATA_CHG_TIME            CHAR(14),
    DATA_APV_USER            VARCHAR2(20),
    DATA_APV_DATE            CHAR(8),
    DATA_APV_TIME            CHAR(14),
    RSV1                     VARCHAR2(180),
    RSV2                     VARCHAR2(180),
    RSV3                     VARCHAR2(180),
    RSV4                     VARCHAR2(180),
    RSV5                     VARCHAR2(180),
    ODS_DATA_ID              CHAR(32),
    HIS_DATE                 CHAR(8),
    HIS_TIME                 CHAR(14),
    B_CUST_NO                NVARCHAR2(32),
    B_INFO_UP_DATE           CHAR(8),
    B_MONTH                  CHAR(8),
    IS_RPT                   VARCHAR2(64),
    FB_STATUS                CHAR(2),
    RPT_FILE_NAME            VARCHAR2(512),
    C_ACCT_CRED_LINE_AMT_LCY NUMBER(15),
    C_LOAN_AMT_LCY           NUMBER(15),
    H_ACCT_BAL_LCY           NUMBER(15),
    H_TOT_OVERD_LCY          NUMBER(15),
    H_OVERD_PRINC_LCY        NUMBER(15),
    H_LAT_RPY_AMT_LCY        NUMBER(15),
    H_LAT_RPY_PRINC_AMT_LCY  NUMBER(15),
    H_LAT_AGRR_RPY_AMT_LCY   NUMBER(15)
);
comment on column MBT_410_HIS_CHG_BAK.DATA_ID is '主键';
comment on column MBT_410_HIS_CHG_BAK.DATA_DATE is '数据日期';
comment on column MBT_410_HIS_CHG_BAK.CORP_ID is '法人机构号';
comment on column MBT_410_HIS_CHG_BAK.ORG_ID is '分行机构号';
comment on column MBT_410_HIS_CHG_BAK.GROUP_ID is '部门编号';
comment on column MBT_410_HIS_CHG_BAK.INQ_ORG_ID is '查询机构号';
comment on column MBT_410_HIS_CHG_BAK.INQ_GROUP_ID is '查询组号';
comment on column MBT_410_HIS_CHG_BAK.B_INF_REC_TYPE is '信息记录类型';
comment on column MBT_410_HIS_CHG_BAK.B_ACCT_TYPE is '账户类型';
comment on column MBT_410_HIS_CHG_BAK.B_ACCT_CODE is '账户标识码';
comment on column MBT_410_HIS_CHG_BAK.B_RPT_DATE is '信息报告日期';
comment on column MBT_410_HIS_CHG_BAK.B_RPT_DATE_CODE is '报告时点说明代码';
comment on column MBT_410_HIS_CHG_BAK.B_NAME is '借款人名称';
comment on column MBT_410_HIS_CHG_BAK.B_ID_TYPE is '借款人身份标识类型';
comment on column MBT_410_HIS_CHG_BAK.B_ID_NUM is '借款人身份标识号码';
comment on column MBT_410_HIS_CHG_BAK.B_MNGMT_ORG_CODE is '业务管理机构代码';
comment on column MBT_410_HIS_CHG_BAK.C_BUSI_LINES is '借贷业务大类';
comment on column MBT_410_HIS_CHG_BAK.C_BUSI_DTL_LINES is '借贷业务种类细分';
comment on column MBT_410_HIS_CHG_BAK.C_OPEN_DATE is '开户日期';
comment on column MBT_410_HIS_CHG_BAK.C_CY is '币种';
comment on column MBT_410_HIS_CHG_BAK.C_ACCT_CRED_LINE_AMT is '信用额度';
comment on column MBT_410_HIS_CHG_BAK.C_LOAN_AMT is '借款金额';
comment on column MBT_410_HIS_CHG_BAK.C_FLAG is '分次放款标志';
comment on column MBT_410_HIS_CHG_BAK.C_DUE_DATE is '到期日期';
comment on column MBT_410_HIS_CHG_BAK.C_REPAY_MODE is '还款方式';
comment on column MBT_410_HIS_CHG_BAK.C_REPAY_FREQCY is '还款频率';
comment on column MBT_410_HIS_CHG_BAK.C_APPLY_BUSI_DIST is '业务申请地行政区划代码';
comment on column MBT_410_HIS_CHG_BAK.C_GUAR_MODE is '担保方式';
comment on column MBT_410_HIS_CHG_BAK.C_OTH_REPY_GUAR_WAY is '其他还款保证方式';
comment on column MBT_410_HIS_CHG_BAK.C_LOAN_TIME_LIM_CAT is '借款期限分类';
comment on column MBT_410_HIS_CHG_BAK.C_LOA_FRM is '贷款发放形式';
comment on column MBT_410_HIS_CHG_BAK.C_ACT_INVEST is '贷款实际投向';
comment on column MBT_410_HIS_CHG_BAK.C_FUND_SOU is '业务经营类型';
comment on column MBT_410_HIS_CHG_BAK.C_ASSET_TRAND_FLAG is '资产转让标志';
comment on column MBT_410_HIS_CHG_BAK.F_MCC is '授信协议标识码';
comment on column MBT_410_HIS_CHG_BAK.G_INIT_CRED_NAME is '初始债权人名称';
comment on column MBT_410_HIS_CHG_BAK.G_INIT_CED_ORG_CODE is '初始债权人机构代码';
comment on column MBT_410_HIS_CHG_BAK.G_ORIG_DBT_CATE is '原债务种类';
comment on column MBT_410_HIS_CHG_BAK.G_INIT_RPY_STS is '债权转移时的还款状态';
comment on column MBT_410_HIS_CHG_BAK.H_ACCT_STATUS is '账户状态';
comment on column MBT_410_HIS_CHG_BAK.H_ACCT_BAL is '余额';
comment on column MBT_410_HIS_CHG_BAK.H_BAL_CHG_DATE is '余额变化日期';
comment on column MBT_410_HIS_CHG_BAK.H_FIVE_CATE is '五级分类';
comment on column MBT_410_HIS_CHG_BAK.H_FIVE_CATE_ADJ_DATE is '五级分类认定日期';
comment on column MBT_410_HIS_CHG_BAK.H_PYMT_PRD is '剩余还款月数';
comment on column MBT_410_HIS_CHG_BAK.H_TOT_OVERD is '当前逾期总额';
comment on column MBT_410_HIS_CHG_BAK.H_OVERD_PRINC is '当前逾期本金';
comment on column MBT_410_HIS_CHG_BAK.H_OVERD_DY is '当前逾期天数';
comment on column MBT_410_HIS_CHG_BAK.H_LAT_RPY_DATE is '最近一次实际还款日期';
comment on column MBT_410_HIS_CHG_BAK.H_LAT_RPY_AMT is '最近一次实际还款金额';
comment on column MBT_410_HIS_CHG_BAK.H_LAT_RPY_PRINC_AMT is '最近一次实际归还本金';
comment on column MBT_410_HIS_CHG_BAK.H_RPMT_TYPE is '还款形式';
comment on column MBT_410_HIS_CHG_BAK.H_LAT_AGRR_RPY_DATE is '最近一次约定还款日';
comment on column MBT_410_HIS_CHG_BAK.H_LAT_AGRR_RPY_AMT is '最近一次约定还款金额';
comment on column MBT_410_HIS_CHG_BAK.H_NXT_AGRR_RPY_DATE is '下一次约定还款日期';
comment on column MBT_410_HIS_CHG_BAK.H_CLOSE_DATE is '账户关闭日期';
comment on column MBT_410_HIS_CHG_BAK.DATA_DESC is '记录描述';
comment on column MBT_410_HIS_CHG_BAK.REMARKS is '备注';
comment on column MBT_410_HIS_CHG_BAK.CHECK_FLAG is '校验标识';
comment on column MBT_410_HIS_CHG_BAK.CHECK_DESC is '校验结果';
comment on column MBT_410_HIS_CHG_BAK.CHECK_ERR_TYPE is '校验失败类型';
comment on column MBT_410_HIS_CHG_BAK.NEXT_ACTION is '下一动作';
comment on column MBT_410_HIS_CHG_BAK.DATA_STATUS is '数据状态';
comment on column MBT_410_HIS_CHG_BAK.DATA_FLAG is '数据是否已删除';
comment on column MBT_410_HIS_CHG_BAK.DATA_SOURCE is '数据来源';
comment on column MBT_410_HIS_CHG_BAK.DATA_VERSION is '数据版本号';
comment on column MBT_410_HIS_CHG_BAK.DATA_REJ_DESC is '数据审核拒绝描述';
comment on column MBT_410_HIS_CHG_BAK.DATA_DEL_DESC is '数据删除描述';
comment on column MBT_410_HIS_CHG_BAK.DATA_CRT_USER is '数据创建/导入用户';
comment on column MBT_410_HIS_CHG_BAK.DATA_CRT_DATE is '数据创建/导入日期';
comment on column MBT_410_HIS_CHG_BAK.DATA_CRT_TIME is '数据创建/导入时间';
comment on column MBT_410_HIS_CHG_BAK.DATA_CHG_USER is '数据修改/删除用户';
comment on column MBT_410_HIS_CHG_BAK.DATA_CHG_DATE is '数据修改/删除日期';
comment on column MBT_410_HIS_CHG_BAK.DATA_CHG_TIME is '数据修改/删除时间';
comment on column MBT_410_HIS_CHG_BAK.DATA_APV_USER is '数据审核/拒绝用户';
comment on column MBT_410_HIS_CHG_BAK.DATA_APV_DATE is '数据审核/拒绝日期';
comment on column MBT_410_HIS_CHG_BAK.DATA_APV_TIME is '数据审核/拒绝时间';
comment on column MBT_410_HIS_CHG_BAK.RSV1 is '扩展字段1';
comment on column MBT_410_HIS_CHG_BAK.RSV2 is '扩展字段2';
comment on column MBT_410_HIS_CHG_BAK.RSV3 is '扩展字段3';
comment on column MBT_410_HIS_CHG_BAK.RSV4 is '扩展字段4';
comment on column MBT_410_HIS_CHG_BAK.RSV5 is '扩展字段5';
comment on column MBT_410_HIS_CHG_BAK.ODS_DATA_ID is 'ODS数据ID';
comment on column MBT_410_HIS_CHG_BAK.HIS_DATE is '信息同步日期';
comment on column MBT_410_HIS_CHG_BAK.B_CUST_NO is '客户号';
comment on column MBT_410_HIS_CHG_BAK.B_INFO_UP_DATE is '信息更新日期';
comment on column MBT_410_HIS_CHG_BAK.B_MONTH is '月结日';
comment on column MBT_410_HIS_CHG_BAK.IS_RPT is '是否上报';
comment on column MBT_410_HIS_CHG_BAK.FB_STATUS is '反馈状态';
comment on column MBT_410_HIS_CHG_BAK.RPT_FILE_NAME is '上报文件名';


create table MBT_410_D_HIS_CHG_BAK
(
    DATA_ID                 CHAR(32) not null primary key,
    PDATA_ID                CHAR(32) not null,
    D_ARLP_ID_TYPE          CHAR,
    D_ARLP_NAME             NVARCHAR2(80),
    D_ARLP_CERT_TYPE        VARCHAR2(2),
    D_ARLP_CERT_NUM         NVARCHAR2(40),
    D_ARLP_TYPE             CHAR,
    D_ARLP_AMT              NUMBER(15),
    D_WARTY_SIGN            CHAR,
    D_MAX_GUAR_MCC          VARCHAR2(60),
    ODS_DATA_ID             CHAR(32),
    HIS_DATE                CHAR(8),
    HIS_TIME                CHAR(14),
    DATA_DATE               CHAR(8),
    ACTU_COTRL_INFO_UP_DATE CHAR(8),
    CORP_ID                 VARCHAR2(14),
    ORG_ID                  VARCHAR2(14),
    GROUP_ID                VARCHAR2(14),
    INQ_ORG_ID              CHAR(24),
    INQ_GROUP_ID            CHAR(24),
    DATA_DESC               NVARCHAR2(256),
    REMARKS                 NVARCHAR2(512),
    CHECK_FLAG              CHAR,
    CHECK_DESC              NVARCHAR2(512),
    CHECK_ERR_TYPE          CHAR,
    NEXT_ACTION             CHAR(2),
    DATA_FLAG               CHAR,
    DATA_SOURE              CHAR,
    DATA_VERSION            NUMBER(8),
    DATA_REJ_DESC           NVARCHAR2(128),
    DATA_DEL_DESC           NVARCHAR2(128),
    DATA_CRT_USER           NVARCHAR2(20),
    DATA_CRT_DATE           CHAR(8),
    DATA_CRT_TIME           CHAR(14),
    DATA_CHG_USER           NVARCHAR2(20),
    DATA_CHG_DATE           CHAR(8),
    DATA_CHG_TIME           CHAR(14),
    DATA_APV_USER           NVARCHAR2(20),
    DATA_APV_DATE           CHAR(8),
    DATA_APV_TIME           CHAR(14),
    RSV1                    NVARCHAR2(180),
    RSV2                    NVARCHAR2(180),
    RSV3                    NVARCHAR2(180),
    RSV4                    NVARCHAR2(180),
    RSV5                    NVARCHAR2(180),
    B_ACCT_CODE             VARCHAR2(60),
    D_ARLP_AMT_ORG          NUMBER(15)
);
comment on column MBT_410_D_HIS_CHG_BAK.DATA_ID is '主键';
comment on column MBT_410_D_HIS_CHG_BAK.PDATA_ID is '外键';
comment on column MBT_410_D_HIS_CHG_BAK.D_ARLP_ID_TYPE is '身份类别';
comment on column MBT_410_D_HIS_CHG_BAK.D_ARLP_NAME is '责任人名称';
comment on column MBT_410_D_HIS_CHG_BAK.D_ARLP_CERT_TYPE is '责任人身份标识类型';
comment on column MBT_410_D_HIS_CHG_BAK.D_ARLP_CERT_NUM is '责任人身份标识号码';
comment on column MBT_410_D_HIS_CHG_BAK.D_ARLP_TYPE is '还款责任人类型';
comment on column MBT_410_D_HIS_CHG_BAK.D_ARLP_AMT is '还款责任金额';
comment on column MBT_410_D_HIS_CHG_BAK.D_WARTY_SIGN is '联保标志';
comment on column MBT_410_D_HIS_CHG_BAK.D_MAX_GUAR_MCC is '保证合同编号';
comment on column MBT_410_D_HIS_CHG_BAK.ODS_DATA_ID is 'ODS数据ID';
comment on column MBT_410_D_HIS_CHG_BAK.HIS_DATE is '信息同步日期';
comment on column MBT_410_D_HIS_CHG_BAK.DATA_DATE is '数据日期';
comment on column MBT_410_D_HIS_CHG_BAK.ACTU_COTRL_INFO_UP_DATE is '信息更新日期';
comment on column MBT_410_D_HIS_CHG_BAK.CORP_ID is '法人机构号';
comment on column MBT_410_D_HIS_CHG_BAK.ORG_ID is '分行机构号';
comment on column MBT_410_D_HIS_CHG_BAK.GROUP_ID is '部门编号';
comment on column MBT_410_D_HIS_CHG_BAK.INQ_ORG_ID is '查询机构号';
comment on column MBT_410_D_HIS_CHG_BAK.INQ_GROUP_ID is '查询组号';
comment on column MBT_410_D_HIS_CHG_BAK.DATA_DESC is '记录描述';
comment on column MBT_410_D_HIS_CHG_BAK.REMARKS is '备注';
comment on column MBT_410_D_HIS_CHG_BAK.CHECK_FLAG is '校验标识';
comment on column MBT_410_D_HIS_CHG_BAK.CHECK_DESC is '校验结果';
comment on column MBT_410_D_HIS_CHG_BAK.CHECK_ERR_TYPE is '校验失败类型';
comment on column MBT_410_D_HIS_CHG_BAK.NEXT_ACTION is '下一动作';
comment on column MBT_410_D_HIS_CHG_BAK.DATA_FLAG is '数据是否已删除';
comment on column MBT_410_D_HIS_CHG_BAK.DATA_SOURE is '数据来源';
comment on column MBT_410_D_HIS_CHG_BAK.DATA_VERSION is '数据版本号';
comment on column MBT_410_D_HIS_CHG_BAK.DATA_REJ_DESC is '数据审核拒绝描述';
comment on column MBT_410_D_HIS_CHG_BAK.DATA_DEL_DESC is '数据删除描述';
comment on column MBT_410_D_HIS_CHG_BAK.DATA_CRT_USER is '数据创建/导入用户';
comment on column MBT_410_D_HIS_CHG_BAK.DATA_CRT_DATE is '数据创建/导入日期';
comment on column MBT_410_D_HIS_CHG_BAK.DATA_CRT_TIME is '数据创建/导入时间';
comment on column MBT_410_D_HIS_CHG_BAK.DATA_CHG_USER is '数据修改/删除用户';
comment on column MBT_410_D_HIS_CHG_BAK.DATA_CHG_DATE is '数据修改/删除日期';
comment on column MBT_410_D_HIS_CHG_BAK.DATA_CHG_TIME is '数据修改/删除时间';
comment on column MBT_410_D_HIS_CHG_BAK.DATA_APV_USER is '数据审核/拒绝用户';
comment on column MBT_410_D_HIS_CHG_BAK.DATA_APV_DATE is '数据审核/拒绝日期';
comment on column MBT_410_D_HIS_CHG_BAK.DATA_APV_TIME is '数据审核/拒绝时间';
comment on column MBT_410_D_HIS_CHG_BAK.RSV1 is '扩展字段1';
comment on column MBT_410_D_HIS_CHG_BAK.RSV2 is '扩展字段2';
comment on column MBT_410_D_HIS_CHG_BAK.RSV3 is '扩展字段3';
comment on column MBT_410_D_HIS_CHG_BAK.RSV4 is '扩展字段4';
comment on column MBT_410_D_HIS_CHG_BAK.RSV5 is '扩展字段5';
comment on column MBT_410_D_HIS_CHG_BAK.B_ACCT_CODE is '账户标识码';


create table MBT_410_E_HIS_CHG_BAK
(
    DATA_ID                 CHAR(32) not null primary key,
    PDATA_ID                CHAR(32) not null,
    E_CCC                   VARCHAR2(60),
    ODS_DATA_ID             CHAR(32),
    HIS_DATE                CHAR(8),
    HIS_TIME                CHAR(14),
    DATA_DATE               CHAR(8),
    ACTU_COTRL_INFO_UP_DATE CHAR(8),
    CORP_ID                 VARCHAR2(14),
    ORG_ID                  VARCHAR2(14),
    GROUP_ID                VARCHAR2(14),
    INQ_ORG_ID              CHAR(24),
    INQ_GROUP_ID            CHAR(24),
    DATA_DESC               NVARCHAR2(256),
    REMARKS                 NVARCHAR2(512),
    CHECK_FLAG              CHAR,
    CHECK_DESC              NVARCHAR2(512),
    CHECK_ERR_TYPE          CHAR,
    NEXT_ACTION             CHAR(2),
    DATA_FLAG               CHAR,
    DATA_SOURE              CHAR,
    DATA_VERSION            NUMBER(8),
    DATA_REJ_DESC           NVARCHAR2(128),
    DATA_DEL_DESC           NVARCHAR2(128),
    DATA_CRT_USER           NVARCHAR2(20),
    DATA_CRT_DATE           CHAR(8),
    DATA_CRT_TIME           CHAR(14),
    DATA_CHG_USER           NVARCHAR2(20),
    DATA_CHG_DATE           CHAR(8),
    DATA_CHG_TIME           CHAR(14),
    DATA_APV_USER           NVARCHAR2(20),
    DATA_APV_DATE           CHAR(8),
    DATA_APV_TIME           CHAR(14),
    RSV1                    NVARCHAR2(180),
    RSV2                    NVARCHAR2(180),
    RSV3                    NVARCHAR2(180),
    RSV4                    NVARCHAR2(180),
    RSV5                    NVARCHAR2(180),
    B_ACCT_CODE             VARCHAR2(60)
);
comment on column MBT_410_E_HIS_CHG_BAK.DATA_ID is '主键';
comment on column MBT_410_E_HIS_CHG_BAK.PDATA_ID is '外键';
comment on column MBT_410_E_HIS_CHG_BAK.E_CCC is '抵（质）押合同标识码';
comment on column MBT_410_E_HIS_CHG_BAK.ODS_DATA_ID is 'ODS数据ID';
comment on column MBT_410_E_HIS_CHG_BAK.HIS_DATE is '信息同步日期';
comment on column MBT_410_E_HIS_CHG_BAK.DATA_DATE is '数据日期';
comment on column MBT_410_E_HIS_CHG_BAK.ACTU_COTRL_INFO_UP_DATE is '信息更新日期';
comment on column MBT_410_E_HIS_CHG_BAK.CORP_ID is '法人机构号';
comment on column MBT_410_E_HIS_CHG_BAK.ORG_ID is '分行机构号';
comment on column MBT_410_E_HIS_CHG_BAK.GROUP_ID is '部门编号';
comment on column MBT_410_E_HIS_CHG_BAK.INQ_ORG_ID is '查询机构号';
comment on column MBT_410_E_HIS_CHG_BAK.INQ_GROUP_ID is '查询组号';
comment on column MBT_410_E_HIS_CHG_BAK.DATA_DESC is '记录描述';
comment on column MBT_410_E_HIS_CHG_BAK.REMARKS is '备注';
comment on column MBT_410_E_HIS_CHG_BAK.CHECK_FLAG is '校验标识';
comment on column MBT_410_E_HIS_CHG_BAK.CHECK_DESC is '校验结果';
comment on column MBT_410_E_HIS_CHG_BAK.CHECK_ERR_TYPE is '校验失败类型';
comment on column MBT_410_E_HIS_CHG_BAK.NEXT_ACTION is '下一动作';
comment on column MBT_410_E_HIS_CHG_BAK.DATA_FLAG is '数据是否已删除';
comment on column MBT_410_E_HIS_CHG_BAK.DATA_SOURE is '数据来源';
comment on column MBT_410_E_HIS_CHG_BAK.DATA_VERSION is '数据版本号';
comment on column MBT_410_E_HIS_CHG_BAK.DATA_REJ_DESC is '数据审核拒绝描述';
comment on column MBT_410_E_HIS_CHG_BAK.DATA_DEL_DESC is '数据删除描述';
comment on column MBT_410_E_HIS_CHG_BAK.DATA_CRT_USER is '数据创建/导入用户';
comment on column MBT_410_E_HIS_CHG_BAK.DATA_CRT_DATE is '数据创建/导入日期';
comment on column MBT_410_E_HIS_CHG_BAK.DATA_CRT_TIME is '数据创建/导入时间';
comment on column MBT_410_E_HIS_CHG_BAK.DATA_CHG_USER is '数据修改/删除用户';
comment on column MBT_410_E_HIS_CHG_BAK.DATA_CHG_DATE is '数据修改/删除日期';
comment on column MBT_410_E_HIS_CHG_BAK.DATA_CHG_TIME is '数据修改/删除时间';
comment on column MBT_410_E_HIS_CHG_BAK.DATA_APV_USER is '数据审核/拒绝用户';
comment on column MBT_410_E_HIS_CHG_BAK.DATA_APV_DATE is '数据审核/拒绝日期';
comment on column MBT_410_E_HIS_CHG_BAK.DATA_APV_TIME is '数据审核/拒绝时间';
comment on column MBT_410_E_HIS_CHG_BAK.RSV1 is '扩展字段1';
comment on column MBT_410_E_HIS_CHG_BAK.RSV2 is '扩展字段2';
comment on column MBT_410_E_HIS_CHG_BAK.RSV3 is '扩展字段3';
comment on column MBT_410_E_HIS_CHG_BAK.RSV4 is '扩展字段4';
comment on column MBT_410_E_HIS_CHG_BAK.RSV5 is '扩展字段5';
comment on column MBT_410_E_HIS_CHG_BAK.B_ACCT_CODE is '账户标识码';


create table MBT_410_I_HIS_CHG_BAK
(
    DATA_ID                 CHAR(32) not null primary key,
    PDATA_ID                CHAR(32) not null,
    REF_NO                  VARCHAR2(65),
    I_CHAN_TRAN_TYPE        VARCHAR2(2),
    I_TRAN_DATE             CHAR(8),
    I_TRAN_AMT              NUMBER(15),
    I_DUE_TRAN_MON          NUMBER(3),
    I_DET_INFO              NVARCHAR2(200),
    ODS_DATA_ID             CHAR(32),
    HIS_DATE                CHAR(8),
    HIS_TIME                CHAR(14),
    DATA_DATE               CHAR(8),
    ACTU_COTRL_INFO_UP_DATE CHAR(8),
    CORP_ID                 VARCHAR2(14),
    ORG_ID                  VARCHAR2(14),
    GROUP_ID                VARCHAR2(14),
    INQ_ORG_ID              CHAR(24),
    INQ_GROUP_ID            CHAR(24),
    DATA_DESC               NVARCHAR2(256),
    REMARKS                 NVARCHAR2(512),
    CHECK_FLAG              CHAR,
    CHECK_DESC              NVARCHAR2(512),
    CHECK_ERR_TYPE          CHAR,
    NEXT_ACTION             CHAR(2),
    DATA_FLAG               CHAR,
    DATA_SOURE              CHAR,
    DATA_VERSION            NUMBER(8),
    DATA_REJ_DESC           NVARCHAR2(128),
    DATA_DEL_DESC           NVARCHAR2(128),
    DATA_CRT_USER           NVARCHAR2(20),
    DATA_CRT_DATE           CHAR(8),
    DATA_CRT_TIME           CHAR(14),
    DATA_CHG_USER           NVARCHAR2(20),
    DATA_CHG_DATE           CHAR(8),
    DATA_CHG_TIME           CHAR(14),
    DATA_APV_USER           NVARCHAR2(20),
    DATA_APV_DATE           CHAR(8),
    DATA_APV_TIME           CHAR(14),
    RSV1                    NVARCHAR2(180),
    RSV2                    NVARCHAR2(180),
    RSV3                    NVARCHAR2(180),
    RSV4                    NVARCHAR2(180),
    RSV5                    NVARCHAR2(180),
    B_ACCT_CODE             VARCHAR2(60),
    I_TRAN_AMT_ORG          NUMBER(15)
);
comment on column MBT_410_I_HIS_CHG_BAK.DATA_ID is '主键';
comment on column MBT_410_I_HIS_CHG_BAK.PDATA_ID is '外键';
comment on column MBT_410_I_HIS_CHG_BAK.REF_NO is '交易流水';
comment on column MBT_410_I_HIS_CHG_BAK.I_CHAN_TRAN_TYPE is '交易类型';
comment on column MBT_410_I_HIS_CHG_BAK.I_TRAN_DATE is '交易日期';
comment on column MBT_410_I_HIS_CHG_BAK.I_TRAN_AMT is '交易金额';
comment on column MBT_410_I_HIS_CHG_BAK.I_DUE_TRAN_MON is '到期日期变更月数';
comment on column MBT_410_I_HIS_CHG_BAK.I_DET_INFO is '交易明细信息';
comment on column MBT_410_I_HIS_CHG_BAK.ODS_DATA_ID is 'ODS数据ID';
comment on column MBT_410_I_HIS_CHG_BAK.HIS_DATE is '信息同步日期';
comment on column MBT_410_I_HIS_CHG_BAK.DATA_DATE is '数据日期';
comment on column MBT_410_I_HIS_CHG_BAK.ACTU_COTRL_INFO_UP_DATE is '信息更新日期';
comment on column MBT_410_I_HIS_CHG_BAK.CORP_ID is '法人机构号';
comment on column MBT_410_I_HIS_CHG_BAK.ORG_ID is '分行机构号';
comment on column MBT_410_I_HIS_CHG_BAK.GROUP_ID is '部门编号';
comment on column MBT_410_I_HIS_CHG_BAK.INQ_ORG_ID is '查询机构号';
comment on column MBT_410_I_HIS_CHG_BAK.INQ_GROUP_ID is '查询组号';
comment on column MBT_410_I_HIS_CHG_BAK.DATA_DESC is '记录描述';
comment on column MBT_410_I_HIS_CHG_BAK.REMARKS is '备注';
comment on column MBT_410_I_HIS_CHG_BAK.CHECK_FLAG is '校验标识';
comment on column MBT_410_I_HIS_CHG_BAK.CHECK_DESC is '校验结果';
comment on column MBT_410_I_HIS_CHG_BAK.CHECK_ERR_TYPE is '校验失败类型';
comment on column MBT_410_I_HIS_CHG_BAK.NEXT_ACTION is '下一动作';
comment on column MBT_410_I_HIS_CHG_BAK.DATA_FLAG is '数据是否已删除';
comment on column MBT_410_I_HIS_CHG_BAK.DATA_SOURE is '数据来源';
comment on column MBT_410_I_HIS_CHG_BAK.DATA_VERSION is '数据版本号';
comment on column MBT_410_I_HIS_CHG_BAK.DATA_REJ_DESC is '数据审核拒绝描述';
comment on column MBT_410_I_HIS_CHG_BAK.DATA_DEL_DESC is '数据删除描述';
comment on column MBT_410_I_HIS_CHG_BAK.DATA_CRT_USER is '数据创建/导入用户';
comment on column MBT_410_I_HIS_CHG_BAK.DATA_CRT_DATE is '数据创建/导入日期';
comment on column MBT_410_I_HIS_CHG_BAK.DATA_CRT_TIME is '数据创建/导入时间';
comment on column MBT_410_I_HIS_CHG_BAK.DATA_CHG_USER is '数据修改/删除用户';
comment on column MBT_410_I_HIS_CHG_BAK.DATA_CHG_DATE is '数据修改/删除日期';
comment on column MBT_410_I_HIS_CHG_BAK.DATA_CHG_TIME is '数据修改/删除时间';
comment on column MBT_410_I_HIS_CHG_BAK.DATA_APV_USER is '数据审核/拒绝用户';
comment on column MBT_410_I_HIS_CHG_BAK.DATA_APV_DATE is '数据审核/拒绝日期';
comment on column MBT_410_I_HIS_CHG_BAK.DATA_APV_TIME is '数据审核/拒绝时间';
comment on column MBT_410_I_HIS_CHG_BAK.RSV1 is '扩展字段1';
comment on column MBT_410_I_HIS_CHG_BAK.RSV2 is '扩展字段2';
comment on column MBT_410_I_HIS_CHG_BAK.RSV3 is '扩展字段3';
comment on column MBT_410_I_HIS_CHG_BAK.RSV4 is '扩展字段4';
comment on column MBT_410_I_HIS_CHG_BAK.RSV5 is '扩展字段5';
comment on column MBT_410_I_HIS_CHG_BAK.B_ACCT_CODE is '账户标识码';


create table MBT_420_HIS_CHG_BAK
(
    DATA_ID            CHAR(32) not null primary key,
    DATA_DATE          CHAR(8),
    CORP_ID            VARCHAR2(14),
    ORG_ID             VARCHAR2(14),
    GROUP_ID           VARCHAR2(14),
    INQ_ORG_ID         CHAR(24),
    INQ_GROUP_ID       CHAR(24),
    B_INF_REC_TYPE     CHAR(3),
    B_CONTRACT_CODE    VARCHAR2(60),
    B_RPT_DATE         CHAR(8),
    B_RPT_DATE_CODE    CHAR(2),
    B_NAME             NVARCHAR2(80),
    B_ID_TYPE          VARCHAR2(10),
    B_ID_NUM           VARCHAR2(40),
    B_MNGMT_ORG_CODE   VARCHAR2(14),
    B_CONTRACT_NO      VARCHAR2(32),
    D_CREDIT_LIM_TYPE  VARCHAR2(2),
    D_LIM_LOOP_FLG     CHAR,
    D_CREDIT_LIM       NUMBER(15),
    D_CY               CHAR(3),
    D_CON_EFF_DATE     CHAR(8),
    D_CON_EXP_DATE     CHAR(8),
    D_CON_STATUS       CHAR(2),
    D_CREDIT_REST      NUMBER(15),
    D_CREDIT_REST_CODE VARCHAR2(60),
    F_DATA_DESC        NVARCHAR2(256),
    REMARKS            NVARCHAR2(512),
    CHECK_FLAG         CHAR,
    CHECK_DESC         VARCHAR2(512),
    CHECK_ERR_TYPE     CHAR,
    NEXT_ACTION        CHAR(2),
    DATA_STATUS        CHAR(2),
    DATA_FLAG          CHAR,
    DATA_SOURCE        CHAR,
    DATA_VERSION       NUMBER(8),
    DATA_REJ_DESC      NVARCHAR2(128),
    DATA_DEL_DESC      NVARCHAR2(128),
    DATA_CRT_USER      VARCHAR2(20),
    DATA_CRT_DATE      CHAR(8),
    DATA_CRT_TIME      CHAR(14),
    DATA_CHG_USER      VARCHAR2(20),
    DATA_CHG_DATE      CHAR(8),
    DATA_CHG_TIME      CHAR(14),
    DATA_APV_USER      VARCHAR2(20),
    DATA_APV_DATE      CHAR(8),
    DATA_APV_TIME      CHAR(14),
    RSV1               VARCHAR2(180),
    RSV2               VARCHAR2(180),
    RSV3               VARCHAR2(180),
    RSV4               VARCHAR2(180),
    RSV5               VARCHAR2(180),
    ODS_DATA_ID        CHAR(32),
    HIS_DATE           CHAR(8),
    HIS_DATE_TIME      CHAR(14),
    B_CUST_NO          NVARCHAR2(32),
    B_INFO_UP_DATE     CHAR(8),
    IS_RPT             VARCHAR2(64),
    FB_STATUS          CHAR(2),
    RPT_FILE_NAME      VARCHAR2(512),
    D_CREDIT_LIM_LCY   NUMBER(15),
    D_CREDIT_REST_LCY  NUMBER(15)
);
comment on column MBT_420_HIS_CHG_BAK.DATA_ID is '主键';
comment on column MBT_420_HIS_CHG_BAK.DATA_DATE is '数据日期';
comment on column MBT_420_HIS_CHG_BAK.CORP_ID is '法人机构号';
comment on column MBT_420_HIS_CHG_BAK.ORG_ID is '分行机构号';
comment on column MBT_420_HIS_CHG_BAK.GROUP_ID is '部门编号';
comment on column MBT_420_HIS_CHG_BAK.INQ_ORG_ID is '查询机构号';
comment on column MBT_420_HIS_CHG_BAK.INQ_GROUP_ID is '查询组号';
comment on column MBT_420_HIS_CHG_BAK.B_INF_REC_TYPE is '信息记录类型';
comment on column MBT_420_HIS_CHG_BAK.B_CONTRACT_CODE is '授信协议标识码';
comment on column MBT_420_HIS_CHG_BAK.B_RPT_DATE is '信息报告日期';
comment on column MBT_420_HIS_CHG_BAK.B_RPT_DATE_CODE is '报告时点说明代码';
comment on column MBT_420_HIS_CHG_BAK.B_NAME is '受信人名称';
comment on column MBT_420_HIS_CHG_BAK.B_ID_TYPE is '受信人身份标识类型';
comment on column MBT_420_HIS_CHG_BAK.B_ID_NUM is '受信人身份标识证件号码';
comment on column MBT_420_HIS_CHG_BAK.B_MNGMT_ORG_CODE is '业务管理机构代码';
comment on column MBT_420_HIS_CHG_BAK.B_CONTRACT_NO is '授信协议编号';
comment on column MBT_420_HIS_CHG_BAK.D_CREDIT_LIM_TYPE is '授信额度类型';
comment on column MBT_420_HIS_CHG_BAK.D_LIM_LOOP_FLG is '额度循环标志';
comment on column MBT_420_HIS_CHG_BAK.D_CREDIT_LIM is '授信额度';
comment on column MBT_420_HIS_CHG_BAK.D_CY is '币种';
comment on column MBT_420_HIS_CHG_BAK.D_CON_EFF_DATE is '额度生效日期';
comment on column MBT_420_HIS_CHG_BAK.D_CON_EXP_DATE is '额度到期日期';
comment on column MBT_420_HIS_CHG_BAK.D_CON_STATUS is '额度状态';
comment on column MBT_420_HIS_CHG_BAK.D_CREDIT_REST is '授信限额';
comment on column MBT_420_HIS_CHG_BAK.D_CREDIT_REST_CODE is '授信限额编号';
comment on column MBT_420_HIS_CHG_BAK.F_DATA_DESC is '记录描述';
comment on column MBT_420_HIS_CHG_BAK.REMARKS is '备注';
comment on column MBT_420_HIS_CHG_BAK.CHECK_FLAG is '校验标识';
comment on column MBT_420_HIS_CHG_BAK.CHECK_DESC is '校验结果';
comment on column MBT_420_HIS_CHG_BAK.CHECK_ERR_TYPE is '校验失败类型';
comment on column MBT_420_HIS_CHG_BAK.NEXT_ACTION is '下一动作';
comment on column MBT_420_HIS_CHG_BAK.DATA_STATUS is '数据状态';
comment on column MBT_420_HIS_CHG_BAK.DATA_FLAG is '数据是否已删除';
comment on column MBT_420_HIS_CHG_BAK.DATA_SOURCE is '数据来源';
comment on column MBT_420_HIS_CHG_BAK.DATA_VERSION is '数据版本号';
comment on column MBT_420_HIS_CHG_BAK.DATA_REJ_DESC is '数据审核拒绝描述';
comment on column MBT_420_HIS_CHG_BAK.DATA_DEL_DESC is '数据删除描述';
comment on column MBT_420_HIS_CHG_BAK.DATA_CRT_USER is '数据创建/导入用户';
comment on column MBT_420_HIS_CHG_BAK.DATA_CRT_DATE is '数据创建/导入日期';
comment on column MBT_420_HIS_CHG_BAK.DATA_CRT_TIME is '数据创建/导入时间';
comment on column MBT_420_HIS_CHG_BAK.DATA_CHG_USER is '数据修改/删除用户';
comment on column MBT_420_HIS_CHG_BAK.DATA_CHG_DATE is '数据修改/删除日期';
comment on column MBT_420_HIS_CHG_BAK.DATA_CHG_TIME is '数据修改/删除时间';
comment on column MBT_420_HIS_CHG_BAK.DATA_APV_USER is '数据审核/拒绝用户';
comment on column MBT_420_HIS_CHG_BAK.DATA_APV_DATE is '数据审核/拒绝日期';
comment on column MBT_420_HIS_CHG_BAK.DATA_APV_TIME is '数据审核/拒绝时间';
comment on column MBT_420_HIS_CHG_BAK.RSV1 is '扩展字段1';
comment on column MBT_420_HIS_CHG_BAK.RSV2 is '扩展字段2';
comment on column MBT_420_HIS_CHG_BAK.RSV3 is '扩展字段3';
comment on column MBT_420_HIS_CHG_BAK.RSV4 is '扩展字段4';
comment on column MBT_420_HIS_CHG_BAK.RSV5 is '扩展字段5';
comment on column MBT_420_HIS_CHG_BAK.ODS_DATA_ID is 'ODS数据ID';
comment on column MBT_420_HIS_CHG_BAK.HIS_DATE is '信息同步日期';
comment on column MBT_420_HIS_CHG_BAK.HIS_DATE_TIME is '信息同步时间';
comment on column MBT_420_HIS_CHG_BAK.B_CUST_NO is '客户号';
comment on column MBT_420_HIS_CHG_BAK.B_INFO_UP_DATE is '信息更新日期';
comment on column MBT_420_HIS_CHG_BAK.IS_RPT is '是否上报';
comment on column MBT_420_HIS_CHG_BAK.FB_STATUS is '反馈状态';
comment on column MBT_420_HIS_CHG_BAK.RPT_FILE_NAME is '上报文件名';



create table MBT_420_C_HIS_CHG_BAK
(
    DATA_ID            CHAR(32) not null primary key,
    PDATA_ID           CHAR(32) not null,
    C_BRER_TYPE        CHAR,
    C_CERT_REL_NAME    NVARCHAR2(80),
    C_CERT_REL_ID_TYPE VARCHAR2(2),
    C_CERT_REL_ID_NUM  VARCHAR2(40),
    RSV2               VARCHAR2(180),
    ODS_DATA_ID        CHAR(32),
    HIS_DATE           CHAR(8),
    HIS_DATE_TIME      CHAR(14),
    B_CONTRACT_CODE    VARCHAR2(60)
);
comment on column MBT_420_C_HIS_CHG_BAK.DATA_ID is '主键';
comment on column MBT_420_C_HIS_CHG_BAK.PDATA_ID is '外键';
comment on column MBT_420_C_HIS_CHG_BAK.C_BRER_TYPE is '共同受信人身份类别';
comment on column MBT_420_C_HIS_CHG_BAK.C_CERT_REL_NAME is '共同受信人名称';
comment on column MBT_420_C_HIS_CHG_BAK.C_CERT_REL_ID_TYPE is '共同受信人身份标识类型';
comment on column MBT_420_C_HIS_CHG_BAK.C_CERT_REL_ID_NUM is '共同受信人身份标识号码';
comment on column MBT_420_C_HIS_CHG_BAK.RSV2 is '扩展字段2';
comment on column MBT_420_C_HIS_CHG_BAK.ODS_DATA_ID is 'ODS数据ID';
comment on column MBT_420_C_HIS_CHG_BAK.HIS_DATE is '信息同步日期';
comment on column MBT_420_C_HIS_CHG_BAK.HIS_DATE_TIME is '信息同步时间';
comment on column MBT_420_C_HIS_CHG_BAK.B_CONTRACT_CODE is '授信协议标识码';


create table MBT_440_HIS_CHG_BAK
(
    DATA_ID              CHAR(32) not null primary key,
    DATA_DATE            CHAR(8),
    CORP_ID              VARCHAR2(14),
    ORG_ID               VARCHAR2(14),
    GROUP_ID             VARCHAR2(14),
    INQ_ORG_ID           CHAR(24),
    INQ_GROUP_ID         CHAR(24),
    B_ACCT_TYPE          VARCHAR2(2),
    B_ACCT_CODE          VARCHAR2(60),
    B_RPT_DATE           CHAR(8),
    B_RPT_DATE_CODE      CHAR(2),
    B_NAME               NVARCHAR2(80),
    B_ID_TYPE            VARCHAR2(2),
    B_INF_REC_TYPE       CHAR(3),
    B_ID_NUM             NVARCHAR2(40),
    B_MNGMT_ORG_CODE     CHAR(14),
    B_CUST_NO            VARCHAR2(32),
    C_BUSI_LINES         CHAR,
    C_BUSI_DTIL_LINES    CHAR(2),
    C_OPEN_DATE          CHAR(8),
    C_GUAR_AMT           NUMBER(15),
    C_CY                 CHAR(3),
    C_DUE_DATE           CHAR(8),
    C_GUAR_MODE          CHAR,
    C_OTH_REPY_GUAR_WAY  CHAR,
    C_SEC_DEP            NUMBER(10),
    C_CTRCT_TXT_CODE     NVARCHAR2(60),
    F_MCC                VARCHAR2(60),
    G_ACCT_STATUS        CHAR,
    G_LOAN_AMT           NUMBER(15),
    G_REPAY_PRD          CHAR(8),
    G_FIVE_CATE          CHAR,
    G_FIVE_CATE_ADJ_DATE CHAR(8),
    G_RI_EX              NUMBER(19),
    G_COMP_ADV_FLAG      CHAR,
    G_CLOSE_DATE         CHAR(8),
    REMARKS              NVARCHAR2(512),
    CHECK_FLAG           CHAR,
    CHECK_DESC           NVARCHAR2(512),
    CHECK_ERR_TYPE       CHAR,
    NEXT_ACTION          CHAR(2),
    DATA_STATUS          CHAR(2),
    DATA_FLAG            CHAR,
    DATA_SOURCE          CHAR,
    DATA_VERSION         CHAR(8),
    DATA_REJ_DESC        NVARCHAR2(128),
    DATA_DEL_DESC        NVARCHAR2(128),
    DATA_CRT_USER        NVARCHAR2(20),
    DATA_CRT_DATE        CHAR(8),
    DATA_CRT_TIME        CHAR(14),
    DATA_CHG_USER        NVARCHAR2(20),
    DATA_CHG_DATE        CHAR(8),
    DATA_CHG_TIME        CHAR(14),
    DATA_APV_USER        NVARCHAR2(20),
    DATA_APV_DATE        CHAR(8),
    DATA_APV_TIME        CHAR(14),
    DATA_DESC            NVARCHAR2(256),
    REF_NO               VARCHAR2(65),
    RSV1                 NVARCHAR2(180),
    RSV2                 NVARCHAR2(180),
    RSV3                 NVARCHAR2(180),
    RSV4                 NVARCHAR2(180),
    RSV5                 NVARCHAR2(180),
    ODS_DATA_ID          CHAR(32),
    HIS_DATE             CHAR(8),
    HIS_TIME             CHAR(14),
    INF_REC_TYPE         CHAR(3),
    B_INFO_UP_DATE       CHAR(8),
    IS_RPT               VARCHAR2(64),
    FB_STATUS            CHAR(2),
    RPT_FILE_NAME        VARCHAR2(512),
    G_LOAN_AMT_LCY       NUMBER(15),
    C_GUAR_AMT_LCY       NUMBER(15),
    G_RI_EX_LCY          NUMBER(19)
);
comment on column MBT_440_HIS_CHG_BAK.DATA_ID is '主键';
comment on column MBT_440_HIS_CHG_BAK.DATA_DATE is '数据日期';
comment on column MBT_440_HIS_CHG_BAK.CORP_ID is '法人机构号';
comment on column MBT_440_HIS_CHG_BAK.ORG_ID is '分行机构号';
comment on column MBT_440_HIS_CHG_BAK.GROUP_ID is '部门编号';
comment on column MBT_440_HIS_CHG_BAK.INQ_ORG_ID is '查询机构号';
comment on column MBT_440_HIS_CHG_BAK.INQ_GROUP_ID is '查询组号';
comment on column MBT_440_HIS_CHG_BAK.B_ACCT_TYPE is '账户类型';
comment on column MBT_440_HIS_CHG_BAK.B_ACCT_CODE is '账户标识码';
comment on column MBT_440_HIS_CHG_BAK.B_RPT_DATE is '信息报告日期';
comment on column MBT_440_HIS_CHG_BAK.B_RPT_DATE_CODE is '报告时点说明代码';
comment on column MBT_440_HIS_CHG_BAK.B_NAME is '债务人名称';
comment on column MBT_440_HIS_CHG_BAK.B_ID_TYPE is '债务人身份标识类型';
comment on column MBT_440_HIS_CHG_BAK.B_INF_REC_TYPE is '信息记录类型';
comment on column MBT_440_HIS_CHG_BAK.B_ID_NUM is '债务人身份标识号码';
comment on column MBT_440_HIS_CHG_BAK.B_MNGMT_ORG_CODE is '业务管理机构代码';
comment on column MBT_440_HIS_CHG_BAK.B_CUST_NO is '客户号';
comment on column MBT_440_HIS_CHG_BAK.C_BUSI_LINES is '担保业务大类';
comment on column MBT_440_HIS_CHG_BAK.C_BUSI_DTIL_LINES is '担保业务种类细分';
comment on column MBT_440_HIS_CHG_BAK.C_OPEN_DATE is '开户日期';
comment on column MBT_440_HIS_CHG_BAK.C_GUAR_AMT is '担保金额';
comment on column MBT_440_HIS_CHG_BAK.C_CY is '币种';
comment on column MBT_440_HIS_CHG_BAK.C_DUE_DATE is '到期日期';
comment on column MBT_440_HIS_CHG_BAK.C_GUAR_MODE is '反担保方式';
comment on column MBT_440_HIS_CHG_BAK.C_OTH_REPY_GUAR_WAY is '其他还款保证方式';
comment on column MBT_440_HIS_CHG_BAK.C_SEC_DEP is '保证金百分比';
comment on column MBT_440_HIS_CHG_BAK.C_CTRCT_TXT_CODE is '担保合同文本编号';
comment on column MBT_440_HIS_CHG_BAK.F_MCC is '授信协议标识码';
comment on column MBT_440_HIS_CHG_BAK.G_ACCT_STATUS is '账户状态';
comment on column MBT_440_HIS_CHG_BAK.G_LOAN_AMT is '在保余额';
comment on column MBT_440_HIS_CHG_BAK.G_REPAY_PRD is '余额变化日期';
comment on column MBT_440_HIS_CHG_BAK.G_FIVE_CATE is '五级分类';
comment on column MBT_440_HIS_CHG_BAK.G_FIVE_CATE_ADJ_DATE is '五级分类认定日期';
comment on column MBT_440_HIS_CHG_BAK.G_RI_EX is '风险敞口';
comment on column MBT_440_HIS_CHG_BAK.G_COMP_ADV_FLAG is '代偿（垫款）标识';
comment on column MBT_440_HIS_CHG_BAK.G_CLOSE_DATE is '账户关闭日期';
comment on column MBT_440_HIS_CHG_BAK.REMARKS is '备注';
comment on column MBT_440_HIS_CHG_BAK.CHECK_FLAG is '校验标识';
comment on column MBT_440_HIS_CHG_BAK.CHECK_DESC is '校验结果';
comment on column MBT_440_HIS_CHG_BAK.CHECK_ERR_TYPE is '校验失败类型';
comment on column MBT_440_HIS_CHG_BAK.NEXT_ACTION is '下一动作';
comment on column MBT_440_HIS_CHG_BAK.DATA_STATUS is '数据状态';
comment on column MBT_440_HIS_CHG_BAK.DATA_FLAG is '数据是否已删除';
comment on column MBT_440_HIS_CHG_BAK.DATA_SOURCE is '数据来源';
comment on column MBT_440_HIS_CHG_BAK.DATA_VERSION is '数据版本号';
comment on column MBT_440_HIS_CHG_BAK.DATA_REJ_DESC is '数据审核拒绝描述';
comment on column MBT_440_HIS_CHG_BAK.DATA_DEL_DESC is '数据删除描述';
comment on column MBT_440_HIS_CHG_BAK.DATA_CRT_USER is '数据创建/导入用户';
comment on column MBT_440_HIS_CHG_BAK.DATA_CRT_DATE is '数据创建/导入日期';
comment on column MBT_440_HIS_CHG_BAK.DATA_CRT_TIME is '数据创建/导入时间';
comment on column MBT_440_HIS_CHG_BAK.DATA_CHG_USER is '数据修改/删除用户';
comment on column MBT_440_HIS_CHG_BAK.DATA_CHG_DATE is '数据修改/删除日期';
comment on column MBT_440_HIS_CHG_BAK.DATA_CHG_TIME is '数据修改/删除时间';
comment on column MBT_440_HIS_CHG_BAK.DATA_APV_USER is '数据审核/拒绝用户';
comment on column MBT_440_HIS_CHG_BAK.DATA_APV_DATE is '数据审核/拒绝日期';
comment on column MBT_440_HIS_CHG_BAK.DATA_APV_TIME is '数据审核/拒绝时间';
comment on column MBT_440_HIS_CHG_BAK.DATA_DESC is '记录描述';
comment on column MBT_440_HIS_CHG_BAK.RSV1 is '扩展字段1';
comment on column MBT_440_HIS_CHG_BAK.RSV2 is '扩展字段2';
comment on column MBT_440_HIS_CHG_BAK.RSV3 is '扩展字段3';
comment on column MBT_440_HIS_CHG_BAK.RSV4 is '扩展字段4';
comment on column MBT_440_HIS_CHG_BAK.RSV5 is '扩展字段5';
comment on column MBT_440_HIS_CHG_BAK.ODS_DATA_ID is 'ODS数据ID';
comment on column MBT_440_HIS_CHG_BAK.HIS_DATE is '信息同步日期';
comment on column MBT_440_HIS_CHG_BAK.INF_REC_TYPE is '信息记录类型';
comment on column MBT_440_HIS_CHG_BAK.B_INFO_UP_DATE is '信息更新日期';
comment on column MBT_440_HIS_CHG_BAK.IS_RPT is '是否上报';
comment on column MBT_440_HIS_CHG_BAK.FB_STATUS is '反馈状态';
comment on column MBT_440_HIS_CHG_BAK.RPT_FILE_NAME is '上报文件名';



create table MBT_440_D_HIS_CHG_BAK
(
    DATA_ID                 CHAR(32)   not null primary key,
    PDATA_ID                CHAR(32)   not null,
    INFO_ID_TYPE            CHAR,
    ARLP_NAME               NVARCHAR2(80),
    ARLP_CERT_TYPE          VARCHAR2(2),
    ARLP_CERT_NUM           NVARCHAR2(40),
    ARLP_AMT                NUMBER(15) not null,
    ARLP_TYPE               CHAR,
    WARTY_SIGN              CHAR,
    MAX_GUAR_MCC            VARCHAR2(60),
    ODS_DATA_ID             CHAR(32),
    HIS_DATE                CHAR(8),
    HIS_TIME                CHAR(14),
    DATA_DATE               CHAR(8),
    ACTU_COTRL_INFO_UP_DATE CHAR(8),
    CORP_ID                 VARCHAR2(14),
    ORG_ID                  VARCHAR2(14),
    GROUP_ID                VARCHAR2(14),
    INQ_ORG_ID              CHAR(24),
    INQ_GROUP_ID            CHAR(24),
    DATA_DESC               NVARCHAR2(256),
    REMARKS                 NVARCHAR2(512),
    CHECK_FLAG              CHAR,
    CHECK_DESC              NVARCHAR2(512),
    CHECK_ERR_TYPE          CHAR,
    NEXT_ACTION             CHAR(2),
    DATA_FLAG               CHAR,
    DATA_SOURE              CHAR,
    DATA_VERSION            NUMBER(8),
    DATA_REJ_DESC           NVARCHAR2(128),
    DATA_DEL_DESC           NVARCHAR2(128),
    DATA_CRT_USER           NVARCHAR2(20),
    DATA_CRT_DATE           CHAR(8),
    DATA_CRT_TIME           CHAR(14),
    DATA_CHG_USER           NVARCHAR2(20),
    DATA_CHG_DATE           CHAR(8),
    DATA_CHG_TIME           CHAR(14),
    DATA_APV_USER           NVARCHAR2(20),
    DATA_APV_DATE           CHAR(8),
    DATA_APV_TIME           CHAR(14),
    RSV1                    NVARCHAR2(180),
    RSV2                    NVARCHAR2(180),
    RSV3                    NVARCHAR2(180),
    RSV4                    NVARCHAR2(180),
    RSV5                    NVARCHAR2(180),
    B_ACCT_CODE             VARCHAR2(60),
    ARLP_AMT_ORG            NUMBER(15)
);
comment on column MBT_440_D_HIS_CHG_BAK.DATA_ID is '主键';
comment on column MBT_440_D_HIS_CHG_BAK.PDATA_ID is '外键';
comment on column MBT_440_D_HIS_CHG_BAK.INFO_ID_TYPE is '身份类别';
comment on column MBT_440_D_HIS_CHG_BAK.ARLP_NAME is '责任人名称';
comment on column MBT_440_D_HIS_CHG_BAK.ARLP_CERT_TYPE is '责任人身份标识类型';
comment on column MBT_440_D_HIS_CHG_BAK.ARLP_CERT_NUM is '责任人身份标识号码';
comment on column MBT_440_D_HIS_CHG_BAK.ARLP_AMT is '还款责任金额';
comment on column MBT_440_D_HIS_CHG_BAK.ARLP_TYPE is '还款责任人类型';
comment on column MBT_440_D_HIS_CHG_BAK.WARTY_SIGN is '联保标志';
comment on column MBT_440_D_HIS_CHG_BAK.MAX_GUAR_MCC is '保证合同编号';
comment on column MBT_440_D_HIS_CHG_BAK.ODS_DATA_ID is 'ODS数据ID';
comment on column MBT_440_D_HIS_CHG_BAK.HIS_DATE is '信息同步日期';
comment on column MBT_440_D_HIS_CHG_BAK.DATA_DATE is '数据日期';
comment on column MBT_440_D_HIS_CHG_BAK.ACTU_COTRL_INFO_UP_DATE is '信息更新日期';
comment on column MBT_440_D_HIS_CHG_BAK.CORP_ID is '法人机构号';
comment on column MBT_440_D_HIS_CHG_BAK.ORG_ID is '分行机构号';
comment on column MBT_440_D_HIS_CHG_BAK.GROUP_ID is '部门编号';
comment on column MBT_440_D_HIS_CHG_BAK.INQ_ORG_ID is '查询机构号';
comment on column MBT_440_D_HIS_CHG_BAK.INQ_GROUP_ID is '查询组号';
comment on column MBT_440_D_HIS_CHG_BAK.DATA_DESC is '记录描述';
comment on column MBT_440_D_HIS_CHG_BAK.REMARKS is '备注';
comment on column MBT_440_D_HIS_CHG_BAK.CHECK_FLAG is '校验标识';
comment on column MBT_440_D_HIS_CHG_BAK.CHECK_DESC is '校验结果';
comment on column MBT_440_D_HIS_CHG_BAK.CHECK_ERR_TYPE is '校验失败类型';
comment on column MBT_440_D_HIS_CHG_BAK.NEXT_ACTION is '下一动作';
comment on column MBT_440_D_HIS_CHG_BAK.DATA_FLAG is '数据是否已删除';
comment on column MBT_440_D_HIS_CHG_BAK.DATA_SOURE is '数据来源';
comment on column MBT_440_D_HIS_CHG_BAK.DATA_VERSION is '数据版本号';
comment on column MBT_440_D_HIS_CHG_BAK.DATA_REJ_DESC is '数据审核拒绝描述';
comment on column MBT_440_D_HIS_CHG_BAK.DATA_DEL_DESC is '数据删除描述';
comment on column MBT_440_D_HIS_CHG_BAK.DATA_CRT_USER is '数据创建/导入用户';
comment on column MBT_440_D_HIS_CHG_BAK.DATA_CRT_DATE is '数据创建/导入日期';
comment on column MBT_440_D_HIS_CHG_BAK.DATA_CRT_TIME is '数据创建/导入时间';
comment on column MBT_440_D_HIS_CHG_BAK.DATA_CHG_USER is '数据修改/删除用户';
comment on column MBT_440_D_HIS_CHG_BAK.DATA_CHG_DATE is '数据修改/删除日期';
comment on column MBT_440_D_HIS_CHG_BAK.DATA_CHG_TIME is '数据修改/删除时间';
comment on column MBT_440_D_HIS_CHG_BAK.DATA_APV_USER is '数据审核/拒绝用户';
comment on column MBT_440_D_HIS_CHG_BAK.DATA_APV_DATE is '数据审核/拒绝日期';
comment on column MBT_440_D_HIS_CHG_BAK.DATA_APV_TIME is '数据审核/拒绝时间';
comment on column MBT_440_D_HIS_CHG_BAK.RSV1 is '扩展字段1';
comment on column MBT_440_D_HIS_CHG_BAK.RSV2 is '扩展字段2';
comment on column MBT_440_D_HIS_CHG_BAK.RSV3 is '扩展字段3';
comment on column MBT_440_D_HIS_CHG_BAK.RSV4 is '扩展字段4';
comment on column MBT_440_D_HIS_CHG_BAK.RSV5 is '扩展字段5';
comment on column MBT_440_D_HIS_CHG_BAK.B_ACCT_CODE is '账户标识码';


create table MBT_440_E_HIS_CHG_BAK
(
    DATA_ID                 CHAR(32) not null primary key,
    PDATA_ID                CHAR(32) not null,
    CCC                     VARCHAR2(60),
    ODS_DATA_ID             CHAR(32),
    HIS_DATE                CHAR(8),
    HIS_TIME                CHAR(14),
    DATA_DATE               CHAR(8),
    ACTU_COTRL_INFO_UP_DATE CHAR(8),
    CORP_ID                 VARCHAR2(14),
    ORG_ID                  VARCHAR2(14),
    GROUP_ID                VARCHAR2(14),
    INQ_ORG_ID              CHAR(24),
    INQ_GROUP_ID            CHAR(24),
    DATA_DESC               NVARCHAR2(256),
    REMARKS                 NVARCHAR2(512),
    CHECK_FLAG              CHAR,
    CHECK_DESC              NVARCHAR2(512),
    CHECK_ERR_TYPE          CHAR,
    NEXT_ACTION             CHAR(2),
    DATA_FLAG               CHAR,
    DATA_SOURE              CHAR,
    DATA_VERSION            NUMBER(8),
    DATA_REJ_DESC           NVARCHAR2(128),
    DATA_DEL_DESC           NVARCHAR2(128),
    DATA_CRT_USER           NVARCHAR2(20),
    DATA_CRT_DATE           CHAR(8),
    DATA_CRT_TIME           CHAR(14),
    DATA_CHG_USER           NVARCHAR2(20),
    DATA_CHG_DATE           CHAR(8),
    DATA_CHG_TIME           CHAR(14),
    DATA_APV_USER           NVARCHAR2(20),
    DATA_APV_DATE           CHAR(8),
    DATA_APV_TIME           CHAR(14),
    RSV1                    NVARCHAR2(180),
    RSV2                    NVARCHAR2(180),
    RSV3                    NVARCHAR2(180),
    RSV4                    NVARCHAR2(180),
    RSV5                    NVARCHAR2(180),
    B_ACCT_CODE             VARCHAR2(60)
);
comment on column MBT_440_E_HIS_CHG_BAK.DATA_ID is '主键';
comment on column MBT_440_E_HIS_CHG_BAK.PDATA_ID is '外键';
comment on column MBT_440_E_HIS_CHG_BAK.CCC is '抵质押合同标识码';
comment on column MBT_440_E_HIS_CHG_BAK.ODS_DATA_ID is 'ODS数据ID';
comment on column MBT_440_E_HIS_CHG_BAK.HIS_DATE is '信息同步日期';
comment on column MBT_440_E_HIS_CHG_BAK.DATA_DATE is '数据日期';
comment on column MBT_440_E_HIS_CHG_BAK.ACTU_COTRL_INFO_UP_DATE is '信息更新日期';
comment on column MBT_440_E_HIS_CHG_BAK.CORP_ID is '法人机构号';
comment on column MBT_440_E_HIS_CHG_BAK.ORG_ID is '分行机构号';
comment on column MBT_440_E_HIS_CHG_BAK.GROUP_ID is '部门编号';
comment on column MBT_440_E_HIS_CHG_BAK.INQ_ORG_ID is '查询机构号';
comment on column MBT_440_E_HIS_CHG_BAK.INQ_GROUP_ID is '查询组号';
comment on column MBT_440_E_HIS_CHG_BAK.DATA_DESC is '记录描述';
comment on column MBT_440_E_HIS_CHG_BAK.REMARKS is '备注';
comment on column MBT_440_E_HIS_CHG_BAK.CHECK_FLAG is '校验标识';
comment on column MBT_440_E_HIS_CHG_BAK.CHECK_DESC is '校验结果';
comment on column MBT_440_E_HIS_CHG_BAK.CHECK_ERR_TYPE is '校验失败类型';
comment on column MBT_440_E_HIS_CHG_BAK.NEXT_ACTION is '下一动作';
comment on column MBT_440_E_HIS_CHG_BAK.DATA_FLAG is '数据是否已删除';
comment on column MBT_440_E_HIS_CHG_BAK.DATA_SOURE is '数据来源';
comment on column MBT_440_E_HIS_CHG_BAK.DATA_VERSION is '数据版本号';
comment on column MBT_440_E_HIS_CHG_BAK.DATA_REJ_DESC is '数据审核拒绝描述';
comment on column MBT_440_E_HIS_CHG_BAK.DATA_DEL_DESC is '数据删除描述';
comment on column MBT_440_E_HIS_CHG_BAK.DATA_CRT_USER is '数据创建/导入用户';
comment on column MBT_440_E_HIS_CHG_BAK.DATA_CRT_DATE is '数据创建/导入日期';
comment on column MBT_440_E_HIS_CHG_BAK.DATA_CRT_TIME is '数据创建/导入时间';
comment on column MBT_440_E_HIS_CHG_BAK.DATA_CHG_USER is '数据修改/删除用户';
comment on column MBT_440_E_HIS_CHG_BAK.DATA_CHG_DATE is '数据修改/删除日期';
comment on column MBT_440_E_HIS_CHG_BAK.DATA_CHG_TIME is '数据修改/删除时间';
comment on column MBT_440_E_HIS_CHG_BAK.DATA_APV_USER is '数据审核/拒绝用户';
comment on column MBT_440_E_HIS_CHG_BAK.DATA_APV_DATE is '数据审核/拒绝日期';
comment on column MBT_440_E_HIS_CHG_BAK.DATA_APV_TIME is '数据审核/拒绝时间';
comment on column MBT_440_E_HIS_CHG_BAK.RSV1 is '扩展字段1';
comment on column MBT_440_E_HIS_CHG_BAK.RSV2 is '扩展字段2';
comment on column MBT_440_E_HIS_CHG_BAK.RSV3 is '扩展字段3';
comment on column MBT_440_E_HIS_CHG_BAK.RSV4 is '扩展字段4';
comment on column MBT_440_E_HIS_CHG_BAK.RSV5 is '扩展字段5';
comment on column MBT_440_E_HIS_CHG_BAK.B_ACCT_CODE is '账户标识码';

