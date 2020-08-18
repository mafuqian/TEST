CREATE TABLE CCRS_PM_TYCDYE(
    DATA_ID VARCHAR2(64) NOT NULL,
    DATA_DATE CHAR(8),
    DATA_RPT_DATE CHAR(8),
    CORP_ID VARCHAR2(14),
    ORG_ID VARCHAR2(14),
    GROUP_ID VARCHAR2(14),
    INQ_ORG_ID CHAR(24),
    INQ_GROUP_ID CHAR(24),
    SJRQ_DATE CHAR(8),
    JRJGBM CHAR(14),
    JYDSMC VARCHAR2(300),
    CDXYDM VARCHAR2(150),
    CDMC VARCHAR2(300),
    CDXYQSRQ_DATE CHAR(8),
    CDXYDQRQ_DATE CHAR(8),
    CDSJDQRQ_DATE CHAR(8),
    BZ CHAR(3),
    CDFXGM_AMT NUMBER,
    LLSFGD CHAR(4),
    LLSP NUMBER,
    TYCDQXLX CHAR(2),
    JZLLZL CHAR(2),
    FXPL CHAR(2),
    CDYE_AMT NUMBER,
    REMARKS VARCHAR2(14),
    CHECK_FLAG CHAR(1),
    CHECK_DESC VARCHAR2(512),
    CHECK_ERR_TYPE CHAR(1),
    NEXT_ACTION CHAR(2),
    DATA_STATUS CHAR(2),
    DATA_FLAG CHAR(1),
    DATA_SOURCE CHAR(1),
    DATA_VERSION NUMBER(8),
    DATA_REJ_DESC VARCHAR2(128),
    DATA_DEL_DESC VARCHAR2(128),
    DATA_CRT_USER VARCHAR2(20),
    DATA_CRT_DATE CHAR(8),
    DATA_CRT_TIME CHAR(14),
    DATA_CHG_USER VARCHAR2(20),
    DATA_CHG_DATE CHAR(8),
    DATA_CHG_TIME CHAR(14),
    DATA_APV_USER VARCHAR2(20),
    DATA_APV_DATE CHAR(8),
    DATA_APV_TIME CHAR(14),
    RSV1 VARCHAR2(180),
    RSV2 VARCHAR2(180),
    RSV3 VARCHAR2(180),
    RSV4 VARCHAR2(180),
    RSV5 VARCHAR2(180),
    PRIMARY KEY (DATA_ID)
);

COMMENT ON TABLE CCRS_PM_TYCDYE IS '同业存单余额报文';
COMMENT ON COLUMN CCRS_PM_TYCDYE.DATA_ID IS '数据ID';
COMMENT ON COLUMN CCRS_PM_TYCDYE.DATA_DATE IS '数据日期';
COMMENT ON COLUMN CCRS_PM_TYCDYE.DATA_RPT_DATE IS '报表日期';
COMMENT ON COLUMN CCRS_PM_TYCDYE.CORP_ID IS '法人机构号';
COMMENT ON COLUMN CCRS_PM_TYCDYE.ORG_ID IS '机构号';
COMMENT ON COLUMN CCRS_PM_TYCDYE.GROUP_ID IS '部门编号';
COMMENT ON COLUMN CCRS_PM_TYCDYE.INQ_ORG_ID IS '查询机构号';
COMMENT ON COLUMN CCRS_PM_TYCDYE.INQ_GROUP_ID IS '查询组号';
COMMENT ON COLUMN CCRS_PM_TYCDYE.SJRQ_DATE IS '数据日期';
COMMENT ON COLUMN CCRS_PM_TYCDYE.JRJGBM IS '金融机构编码';
COMMENT ON COLUMN CCRS_PM_TYCDYE.JYDSMC IS '交易对手名称';
COMMENT ON COLUMN CCRS_PM_TYCDYE.CDXYDM IS '存单协议代码';
COMMENT ON COLUMN CCRS_PM_TYCDYE.CDMC IS '存单名称';
COMMENT ON COLUMN CCRS_PM_TYCDYE.CDXYQSRQ_DATE IS '存单协议起始日期';
COMMENT ON COLUMN CCRS_PM_TYCDYE.CDXYDQRQ_DATE IS '存单协议到期日期';
COMMENT ON COLUMN CCRS_PM_TYCDYE.CDSJDQRQ_DATE IS '存单实际到期日期';
COMMENT ON COLUMN CCRS_PM_TYCDYE.BZ IS '币种';
COMMENT ON COLUMN CCRS_PM_TYCDYE.CDFXGM_AMT IS '存单发行规模';
COMMENT ON COLUMN CCRS_PM_TYCDYE.LLSFGD IS '利率是否固定';
COMMENT ON COLUMN CCRS_PM_TYCDYE.LLSP IS '利率水平';
COMMENT ON COLUMN CCRS_PM_TYCDYE.TYCDQXLX IS '同业存单期限类型';
COMMENT ON COLUMN CCRS_PM_TYCDYE.JZLLZL IS '基准利率种类';
COMMENT ON COLUMN CCRS_PM_TYCDYE.FXPL IS '付息频率';
COMMENT ON COLUMN CCRS_PM_TYCDYE.CDYE_AMT IS '存单余额';
COMMENT ON COLUMN CCRS_PM_TYCDYE.REMARKS IS '备注';
COMMENT ON COLUMN CCRS_PM_TYCDYE.CHECK_FLAG IS '校验标识';
COMMENT ON COLUMN CCRS_PM_TYCDYE.CHECK_DESC IS '校验结果';
COMMENT ON COLUMN CCRS_PM_TYCDYE.CHECK_ERR_TYPE IS '校验失败类型';
COMMENT ON COLUMN CCRS_PM_TYCDYE.NEXT_ACTION IS '下一动作';
COMMENT ON COLUMN CCRS_PM_TYCDYE.DATA_STATUS IS '数据状态';
COMMENT ON COLUMN CCRS_PM_TYCDYE.DATA_FLAG IS '数据是否已删除';
COMMENT ON COLUMN CCRS_PM_TYCDYE.DATA_SOURCE IS '数据来源';
COMMENT ON COLUMN CCRS_PM_TYCDYE.DATA_VERSION IS '数据版本';
COMMENT ON COLUMN CCRS_PM_TYCDYE.DATA_REJ_DESC IS '数据审核拒绝原因';
COMMENT ON COLUMN CCRS_PM_TYCDYE.DATA_DEL_DESC IS '数据删除描述';
COMMENT ON COLUMN CCRS_PM_TYCDYE.DATA_CRT_USER IS '数据创建/导入用户';
COMMENT ON COLUMN CCRS_PM_TYCDYE.DATA_CRT_DATE IS '数据创建/导入日期';
COMMENT ON COLUMN CCRS_PM_TYCDYE.DATA_CRT_TIME IS '数据创建/导入时间';
COMMENT ON COLUMN CCRS_PM_TYCDYE.DATA_CHG_USER IS '数据修改/删除用户';
COMMENT ON COLUMN CCRS_PM_TYCDYE.DATA_CHG_DATE IS '数据修改/删除日期';
COMMENT ON COLUMN CCRS_PM_TYCDYE.DATA_CHG_TIME IS '数据修改/删除时间';
COMMENT ON COLUMN CCRS_PM_TYCDYE.DATA_APV_USER IS '数据审核/拒绝用户';
COMMENT ON COLUMN CCRS_PM_TYCDYE.DATA_APV_DATE IS '数据审核/拒绝日期';
COMMENT ON COLUMN CCRS_PM_TYCDYE.DATA_APV_TIME IS '数据审核/拒绝时间';
COMMENT ON COLUMN CCRS_PM_TYCDYE.RSV1 IS '备用1';
COMMENT ON COLUMN CCRS_PM_TYCDYE.RSV2 IS '备用2';
COMMENT ON COLUMN CCRS_PM_TYCDYE.RSV3 IS '备用3';
COMMENT ON COLUMN CCRS_PM_TYCDYE.RSV4 IS '备用4';
COMMENT ON COLUMN CCRS_PM_TYCDYE.RSV5 IS '备用5';

CREATE UNIQUE INDEX U_TYCDYE ON CCRS_PM_TYCDYE(DATA_RPT_DATE,SJRQ_DATE,CDXYDM);
