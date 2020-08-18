CREATE TABLE CCRS_PM_CKYEKZ(
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
    KHMC VARCHAR2(300),
    KHZJLX CHAR(2),
    CKRDM VARCHAR2(50),
    CKZHDM VARCHAR2(60),
    CKXYDM VARCHAR2(180),
    CKQXLX CHAR(4),
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

COMMENT ON TABLE CCRS_PM_CKYEKZ IS '存款余额扩展报文';
COMMENT ON COLUMN CCRS_PM_CKYEKZ.DATA_ID IS '数据ID';
COMMENT ON COLUMN CCRS_PM_CKYEKZ.DATA_DATE IS '数据日期';
COMMENT ON COLUMN CCRS_PM_CKYEKZ.DATA_RPT_DATE IS '报表日期';
COMMENT ON COLUMN CCRS_PM_CKYEKZ.CORP_ID IS '法人机构号';
COMMENT ON COLUMN CCRS_PM_CKYEKZ.ORG_ID IS '机构号';
COMMENT ON COLUMN CCRS_PM_CKYEKZ.GROUP_ID IS '部门编号';
COMMENT ON COLUMN CCRS_PM_CKYEKZ.INQ_ORG_ID IS '查询机构号';
COMMENT ON COLUMN CCRS_PM_CKYEKZ.INQ_GROUP_ID IS '查询组号';
COMMENT ON COLUMN CCRS_PM_CKYEKZ.SJRQ_DATE IS '数据日期';
COMMENT ON COLUMN CCRS_PM_CKYEKZ.JRJGBM IS '金融机构编码';
COMMENT ON COLUMN CCRS_PM_CKYEKZ.KHMC IS '客户名称';
COMMENT ON COLUMN CCRS_PM_CKYEKZ.KHZJLX IS '客户证件类型';
COMMENT ON COLUMN CCRS_PM_CKYEKZ.CKRDM IS '存款人代码';
COMMENT ON COLUMN CCRS_PM_CKYEKZ.CKZHDM IS '存款账户代码';
COMMENT ON COLUMN CCRS_PM_CKYEKZ.CKXYDM IS '存款协议代码';
COMMENT ON COLUMN CCRS_PM_CKYEKZ.CKQXLX IS '存款期限类型';
COMMENT ON COLUMN CCRS_PM_CKYEKZ.REMARKS IS '备注';
COMMENT ON COLUMN CCRS_PM_CKYEKZ.CHECK_FLAG IS '校验标识';
COMMENT ON COLUMN CCRS_PM_CKYEKZ.CHECK_DESC IS '校验结果';
COMMENT ON COLUMN CCRS_PM_CKYEKZ.CHECK_ERR_TYPE IS '校验失败类型';
COMMENT ON COLUMN CCRS_PM_CKYEKZ.NEXT_ACTION IS '下一动作';
COMMENT ON COLUMN CCRS_PM_CKYEKZ.DATA_STATUS IS '数据状态';
COMMENT ON COLUMN CCRS_PM_CKYEKZ.DATA_FLAG IS '数据是否已删除';
COMMENT ON COLUMN CCRS_PM_CKYEKZ.DATA_SOURCE IS '数据来源';
COMMENT ON COLUMN CCRS_PM_CKYEKZ.DATA_VERSION IS '数据版本';
COMMENT ON COLUMN CCRS_PM_CKYEKZ.DATA_REJ_DESC IS '数据审核拒绝原因';
COMMENT ON COLUMN CCRS_PM_CKYEKZ.DATA_DEL_DESC IS '数据删除描述';
COMMENT ON COLUMN CCRS_PM_CKYEKZ.DATA_CRT_USER IS '数据创建/导入用户';
COMMENT ON COLUMN CCRS_PM_CKYEKZ.DATA_CRT_DATE IS '数据创建/导入日期';
COMMENT ON COLUMN CCRS_PM_CKYEKZ.DATA_CRT_TIME IS '数据创建/导入时间';
COMMENT ON COLUMN CCRS_PM_CKYEKZ.DATA_CHG_USER IS '数据修改/删除用户';
COMMENT ON COLUMN CCRS_PM_CKYEKZ.DATA_CHG_DATE IS '数据修改/删除日期';
COMMENT ON COLUMN CCRS_PM_CKYEKZ.DATA_CHG_TIME IS '数据修改/删除时间';
COMMENT ON COLUMN CCRS_PM_CKYEKZ.DATA_APV_USER IS '数据审核/拒绝用户';
COMMENT ON COLUMN CCRS_PM_CKYEKZ.DATA_APV_DATE IS '数据审核/拒绝日期';
COMMENT ON COLUMN CCRS_PM_CKYEKZ.DATA_APV_TIME IS '数据审核/拒绝时间';
COMMENT ON COLUMN CCRS_PM_CKYEKZ.RSV1 IS '备用1';
COMMENT ON COLUMN CCRS_PM_CKYEKZ.RSV2 IS '备用2';
COMMENT ON COLUMN CCRS_PM_CKYEKZ.RSV3 IS '备用3';
COMMENT ON COLUMN CCRS_PM_CKYEKZ.RSV4 IS '备用4';
COMMENT ON COLUMN CCRS_PM_CKYEKZ.RSV5 IS '备用5';

CREATE UNIQUE INDEX U_CKYEKZ ON CCRS_PM_CKYEKZ(DATA_RPT_DATE,SJRQ_DATE,CKZHDM);
