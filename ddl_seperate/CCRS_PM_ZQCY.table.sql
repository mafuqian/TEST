CREATE TABLE CCRS_PM_ZQCY(
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
    ZQDM VARCHAR2(20),
    ZQJC VARCHAR2(300),
    ZQLX VARCHAR2(4),
    ZQCYRQ_DATE CHAR(8),
    ZQCYDQRQ_DATE CHAR(8),
    JYDSMC VARCHAR2(300),
    ZQJYFS VARCHAR2(4),
    CCBZ CHAR(3),
    ZQPMJE_AMT NUMBER,
    JYJJ_AMT NUMBER,
    TJSDGZJJ_AMT NUMBER,
    ZQFXRMC VARCHAR2(300),
    ZQFXRZJLX CHAR(2),
    ZQFXRDM VARCHAR2(50),
    ZQFXRKGLX VARCHAR2(5),
    ZQFXRZTHYLB CHAR(1),
    ZQFXRQ_DATE CHAR(8),
    ZQDQRQ_DATE CHAR(8),
    ZQFXRSCJYQK CHAR(2),
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

COMMENT ON TABLE CCRS_PM_ZQCY IS '债券持有报文';
COMMENT ON COLUMN CCRS_PM_ZQCY.DATA_ID IS '数据ID';
COMMENT ON COLUMN CCRS_PM_ZQCY.DATA_DATE IS '数据日期';
COMMENT ON COLUMN CCRS_PM_ZQCY.DATA_RPT_DATE IS '报表日期';
COMMENT ON COLUMN CCRS_PM_ZQCY.CORP_ID IS '法人机构号';
COMMENT ON COLUMN CCRS_PM_ZQCY.ORG_ID IS '机构号';
COMMENT ON COLUMN CCRS_PM_ZQCY.GROUP_ID IS '部门编号';
COMMENT ON COLUMN CCRS_PM_ZQCY.INQ_ORG_ID IS '查询机构号';
COMMENT ON COLUMN CCRS_PM_ZQCY.INQ_GROUP_ID IS '查询组号';
COMMENT ON COLUMN CCRS_PM_ZQCY.SJRQ_DATE IS '数据日期';
COMMENT ON COLUMN CCRS_PM_ZQCY.JRJGBM IS '金融机构编码';
COMMENT ON COLUMN CCRS_PM_ZQCY.ZQDM IS '债券代码';
COMMENT ON COLUMN CCRS_PM_ZQCY.ZQJC IS '债券简称';
COMMENT ON COLUMN CCRS_PM_ZQCY.ZQLX IS '债券类型';
COMMENT ON COLUMN CCRS_PM_ZQCY.ZQCYRQ_DATE IS '债券持有日期';
COMMENT ON COLUMN CCRS_PM_ZQCY.ZQCYDQRQ_DATE IS '债券持有到期日期';
COMMENT ON COLUMN CCRS_PM_ZQCY.JYDSMC IS '交易对手名称';
COMMENT ON COLUMN CCRS_PM_ZQCY.ZQJYFS IS '债券交易方式';
COMMENT ON COLUMN CCRS_PM_ZQCY.CCBZ IS '持仓币种';
COMMENT ON COLUMN CCRS_PM_ZQCY.ZQPMJE_AMT IS '债券票面金额';
COMMENT ON COLUMN CCRS_PM_ZQCY.JYJJ_AMT IS '交易净价';
COMMENT ON COLUMN CCRS_PM_ZQCY.TJSDGZJJ_AMT IS '统计时点估值净价';
COMMENT ON COLUMN CCRS_PM_ZQCY.ZQFXRMC IS '债券发行人名称';
COMMENT ON COLUMN CCRS_PM_ZQCY.ZQFXRZJLX IS '债券发行人证件类型';
COMMENT ON COLUMN CCRS_PM_ZQCY.ZQFXRDM IS '债券发行人代码';
COMMENT ON COLUMN CCRS_PM_ZQCY.ZQFXRKGLX IS '债券发行人控股类型';
COMMENT ON COLUMN CCRS_PM_ZQCY.ZQFXRZTHYLB IS '债券发行人主体行业类别';
COMMENT ON COLUMN CCRS_PM_ZQCY.ZQFXRQ_DATE IS '债券发行日期';
COMMENT ON COLUMN CCRS_PM_ZQCY.ZQDQRQ_DATE IS '债券到期日期';
COMMENT ON COLUMN CCRS_PM_ZQCY.ZQFXRSCJYQK IS '债券发行人生产经营情况';
COMMENT ON COLUMN CCRS_PM_ZQCY.REMARKS IS '备注';
COMMENT ON COLUMN CCRS_PM_ZQCY.CHECK_FLAG IS '校验标识';
COMMENT ON COLUMN CCRS_PM_ZQCY.CHECK_DESC IS '校验结果';
COMMENT ON COLUMN CCRS_PM_ZQCY.CHECK_ERR_TYPE IS '校验失败类型';
COMMENT ON COLUMN CCRS_PM_ZQCY.NEXT_ACTION IS '下一动作';
COMMENT ON COLUMN CCRS_PM_ZQCY.DATA_STATUS IS '数据状态';
COMMENT ON COLUMN CCRS_PM_ZQCY.DATA_FLAG IS '数据是否已删除';
COMMENT ON COLUMN CCRS_PM_ZQCY.DATA_SOURCE IS '数据来源';
COMMENT ON COLUMN CCRS_PM_ZQCY.DATA_VERSION IS '数据版本';
COMMENT ON COLUMN CCRS_PM_ZQCY.DATA_REJ_DESC IS '数据审核拒绝原因';
COMMENT ON COLUMN CCRS_PM_ZQCY.DATA_DEL_DESC IS '数据删除描述';
COMMENT ON COLUMN CCRS_PM_ZQCY.DATA_CRT_USER IS '数据创建/导入用户';
COMMENT ON COLUMN CCRS_PM_ZQCY.DATA_CRT_DATE IS '数据创建/导入日期';
COMMENT ON COLUMN CCRS_PM_ZQCY.DATA_CRT_TIME IS '数据创建/导入时间';
COMMENT ON COLUMN CCRS_PM_ZQCY.DATA_CHG_USER IS '数据修改/删除用户';
COMMENT ON COLUMN CCRS_PM_ZQCY.DATA_CHG_DATE IS '数据修改/删除日期';
COMMENT ON COLUMN CCRS_PM_ZQCY.DATA_CHG_TIME IS '数据修改/删除时间';
COMMENT ON COLUMN CCRS_PM_ZQCY.DATA_APV_USER IS '数据审核/拒绝用户';
COMMENT ON COLUMN CCRS_PM_ZQCY.DATA_APV_DATE IS '数据审核/拒绝日期';
COMMENT ON COLUMN CCRS_PM_ZQCY.DATA_APV_TIME IS '数据审核/拒绝时间';
COMMENT ON COLUMN CCRS_PM_ZQCY.RSV1 IS '备用1';
COMMENT ON COLUMN CCRS_PM_ZQCY.RSV2 IS '备用2';
COMMENT ON COLUMN CCRS_PM_ZQCY.RSV3 IS '备用3';
COMMENT ON COLUMN CCRS_PM_ZQCY.RSV4 IS '备用4';
COMMENT ON COLUMN CCRS_PM_ZQCY.RSV5 IS '备用5';

CREATE UNIQUE INDEX U_ZQCY ON CCRS_PM_ZQCY(DATA_RPT_DATE,SJRQ_DATE,ZQDM);
