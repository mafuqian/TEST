create sequence DATA_ID_SEQ
    maxvalue 9999999999
    cycle
    cache 100
/

create table GFDR_BM_CHK_ERRORS
(
    DATA_ID       VARCHAR2(64) not null
        constraint GFDR_BM_CHECK_ERROR_K
            primary key,
    ORG_ID        VARCHAR2(14),
    GROUP_ID      VARCHAR2(14),
    DATA_RPT_DATE VARCHAR2(32),
    TABLE_NAME    VARCHAR2(32),
    FIELD_NAME    VARCHAR2(32),
    RULE_ID       VARCHAR2(32),
    WEAK_RULE     VARCHAR2(1),
    CHECK_TIME    CHAR(14),
    RECORD_ID     VARCHAR2(32),
    RSV1          VARCHAR2(180),
    RSV2          VARCHAR2(180),
    RSV3          VARCHAR2(180),
    RSV4          VARCHAR2(180),
    RSV5          VARCHAR2(180),
    C_RSV1        VARCHAR2(180),
    C_RSV2        VARCHAR2(180),
    C_RSV3        VARCHAR2(180),
    C_RSV4        VARCHAR2(180),
    C_RSV5        VARCHAR2(180)
)
/

comment on table GFDR_BM_CHK_ERRORS is 'GFDR_BM_CHECK_ERROR'
/

comment on column GFDR_BM_CHK_ERRORS.DATA_ID is '数据ID'
/

comment on column GFDR_BM_CHK_ERRORS.ORG_ID is '分行机构号'
/

comment on column GFDR_BM_CHK_ERRORS.GROUP_ID is '部门编号'
/

comment on column GFDR_BM_CHK_ERRORS.DATA_RPT_DATE is 'DATA_RPT_DATE'
/

comment on column GFDR_BM_CHK_ERRORS.TABLE_NAME is 'TABLE_NAME'
/

comment on column GFDR_BM_CHK_ERRORS.FIELD_NAME is 'FIELD_NAME'
/

comment on column GFDR_BM_CHK_ERRORS.RULE_ID is 'RULE_ID'
/

comment on column GFDR_BM_CHK_ERRORS.WEAK_RULE is 'WEAK_RULE'
/

comment on column GFDR_BM_CHK_ERRORS.CHECK_TIME is 'CHECK_TIME'
/

comment on column GFDR_BM_CHK_ERRORS.RECORD_ID is 'RECORD_ID'
/

create table GFDR_BM_CHK_E_CLDWDK
(
    DATA_ID       VARCHAR2(64),
    ORG_ID        VARCHAR2(14),
    GROUP_ID      VARCHAR2(14),
    DATA_RPT_DATE VARCHAR2(32),
    TABLE_NAME    VARCHAR2(32),
    FIELD_NAME    VARCHAR2(32),
    RULE_ID       VARCHAR2(32),
    WEAK_RULE     VARCHAR2(1),
    CHECK_TIME    CHAR(14),
    RECORD_ID     VARCHAR2(32),
    RSV1          VARCHAR2(180),
    RSV2          VARCHAR2(180),
    RSV3          VARCHAR2(180),
    RSV4          VARCHAR2(180),
    RSV5          VARCHAR2(180),
    C_RSV1        VARCHAR2(180),
    C_RSV2        VARCHAR2(180),
    C_RSV3        VARCHAR2(180),
    C_RSV4        VARCHAR2(180),
    C_RSV5        VARCHAR2(180)
)
/

create table GFDR_BM_CHK_E_DBHTXX
(
    DATA_ID       VARCHAR2(64),
    ORG_ID        VARCHAR2(14),
    GROUP_ID      VARCHAR2(14),
    DATA_RPT_DATE VARCHAR2(32),
    TABLE_NAME    VARCHAR2(32),
    FIELD_NAME    VARCHAR2(32),
    RULE_ID       VARCHAR2(32),
    WEAK_RULE     VARCHAR2(1),
    CHECK_TIME    CHAR(14),
    RECORD_ID     VARCHAR2(32),
    RSV1          VARCHAR2(180),
    RSV2          VARCHAR2(180),
    RSV3          VARCHAR2(180),
    RSV4          VARCHAR2(180),
    RSV5          VARCHAR2(180),
    C_RSV1        VARCHAR2(180),
    C_RSV2        VARCHAR2(180),
    C_RSV3        VARCHAR2(180),
    C_RSV4        VARCHAR2(180),
    C_RSV5        VARCHAR2(180)
)
/

create table GFDR_BM_CHK_E_DBWXX
(
    DATA_ID       VARCHAR2(64),
    ORG_ID        VARCHAR2(14),
    GROUP_ID      VARCHAR2(14),
    DATA_RPT_DATE VARCHAR2(32),
    TABLE_NAME    VARCHAR2(32),
    FIELD_NAME    VARCHAR2(32),
    RULE_ID       VARCHAR2(32),
    WEAK_RULE     VARCHAR2(1),
    CHECK_TIME    CHAR(14),
    RECORD_ID     VARCHAR2(32),
    RSV1          VARCHAR2(180),
    RSV2          VARCHAR2(180),
    RSV3          VARCHAR2(180),
    RSV4          VARCHAR2(180),
    RSV5          VARCHAR2(180),
    C_RSV1        VARCHAR2(180),
    C_RSV2        VARCHAR2(180),
    C_RSV3        VARCHAR2(180),
    C_RSV4        VARCHAR2(180),
    C_RSV5        VARCHAR2(180)
)
/

create table GFDR_BM_CHK_E_DWDKFS
(
    DATA_ID       VARCHAR2(64),
    ORG_ID        VARCHAR2(14),
    GROUP_ID      VARCHAR2(14),
    DATA_RPT_DATE VARCHAR2(32),
    TABLE_NAME    VARCHAR2(32),
    FIELD_NAME    VARCHAR2(32),
    RULE_ID       VARCHAR2(32),
    WEAK_RULE     VARCHAR2(1),
    CHECK_TIME    CHAR(14),
    RECORD_ID     VARCHAR2(32),
    RSV1          VARCHAR2(180),
    RSV2          VARCHAR2(180),
    RSV3          VARCHAR2(180),
    RSV4          VARCHAR2(180),
    RSV5          VARCHAR2(180),
    C_RSV1        VARCHAR2(180),
    C_RSV2        VARCHAR2(180),
    C_RSV3        VARCHAR2(180),
    C_RSV4        VARCHAR2(180),
    C_RSV5        VARCHAR2(180)
)
/

create table GFDR_BM_CHK_E_FTYKHX
(
    DATA_ID       VARCHAR2(64),
    ORG_ID        VARCHAR2(14),
    GROUP_ID      VARCHAR2(14),
    DATA_RPT_DATE VARCHAR2(32),
    TABLE_NAME    VARCHAR2(32),
    FIELD_NAME    VARCHAR2(32),
    RULE_ID       VARCHAR2(32),
    WEAK_RULE     VARCHAR2(1),
    CHECK_TIME    CHAR(14),
    RECORD_ID     VARCHAR2(32),
    RSV1          VARCHAR2(180),
    RSV2          VARCHAR2(180),
    RSV3          VARCHAR2(180),
    RSV4          VARCHAR2(180),
    RSV5          VARCHAR2(180),
    C_RSV1        VARCHAR2(180),
    C_RSV2        VARCHAR2(180),
    C_RSV3        VARCHAR2(180),
    C_RSV4        VARCHAR2(180),
    C_RSV5        VARCHAR2(180)
)
/

create table GFDR_BM_CHK_E_JRJGFR
(
    DATA_ID       VARCHAR2(64),
    ORG_ID        VARCHAR2(14),
    GROUP_ID      VARCHAR2(14),
    DATA_RPT_DATE VARCHAR2(32),
    TABLE_NAME    VARCHAR2(32),
    FIELD_NAME    VARCHAR2(32),
    RULE_ID       VARCHAR2(32),
    WEAK_RULE     VARCHAR2(1),
    CHECK_TIME    CHAR(14),
    RECORD_ID     VARCHAR2(32),
    RSV1          VARCHAR2(180),
    RSV2          VARCHAR2(180),
    RSV3          VARCHAR2(180),
    RSV4          VARCHAR2(180),
    RSV5          VARCHAR2(180),
    C_RSV1        VARCHAR2(180),
    C_RSV2        VARCHAR2(180),
    C_RSV3        VARCHAR2(180),
    C_RSV4        VARCHAR2(180),
    C_RSV5        VARCHAR2(180)
)
/

create table GFDR_BM_CHK_E_JRJGFZ
(
    DATA_ID       VARCHAR2(64),
    ORG_ID        VARCHAR2(14),
    GROUP_ID      VARCHAR2(14),
    DATA_RPT_DATE VARCHAR2(32),
    TABLE_NAME    VARCHAR2(32),
    FIELD_NAME    VARCHAR2(32),
    RULE_ID       VARCHAR2(32),
    WEAK_RULE     VARCHAR2(1),
    CHECK_TIME    CHAR(14),
    RECORD_ID     VARCHAR2(32),
    RSV1          VARCHAR2(180),
    RSV2          VARCHAR2(180),
    RSV3          VARCHAR2(180),
    RSV4          VARCHAR2(180),
    RSV5          VARCHAR2(180),
    C_RSV1        VARCHAR2(180),
    C_RSV2        VARCHAR2(180),
    C_RSV3        VARCHAR2(180),
    C_RSV4        VARCHAR2(180),
    C_RSV5        VARCHAR2(180)
)
/

create table GFDR_BM_EX_RATE
(
    DATA_ID        VARCHAR2(64) not null
        constraint GFDR_BM_EX_RATE_K
            primary key,
    DATA_DATE      CHAR(8),
    CORP_ID        VARCHAR2(14),
    ORG_ID         VARCHAR2(14),
    GROUP_ID       VARCHAR2(14),
    DATA_RPT_DATE  CHAR(8),
    CODE           CHAR(3),
    NAME           VARCHAR2(64),
    UNIT           VARCHAR2(64),
    TO_USD         NUMBER(10, 6),
    REMARKS        VARCHAR2(512),
    CHECK_FLAG     CHAR,
    CHECK_DESC     VARCHAR2(512),
    CHECK_ERR_TYPE CHAR,
    NEXT_ACTION    CHAR(2),
    DATA_STATUS    CHAR(2),
    DATA_FLAG      CHAR,
    DATA_SOURCE    CHAR,
    DATA_VERSION   NUMBER(8),
    DATA_REJ_DESC  VARCHAR2(128),
    DATA_DEL_DESC  VARCHAR2(128),
    DATA_CRT_USER  VARCHAR2(20),
    DATA_CRT_DATE  CHAR(8),
    DATA_CRT_TIME  CHAR(14),
    DATA_CHG_USER  VARCHAR2(20),
    DATA_CHG_DATE  CHAR(8),
    DATA_CHG_TIME  CHAR(14),
    DATA_APV_USER  VARCHAR2(20),
    DATA_APV_DATE  CHAR(8),
    DATA_APV_TIME  CHAR(14),
    RSV1           VARCHAR2(180),
    RSV2           VARCHAR2(180),
    RSV3           VARCHAR2(180),
    RSV4           VARCHAR2(180),
    RSV5           VARCHAR2(180),
    C_RSV1         VARCHAR2(180),
    C_RSV2         VARCHAR2(180),
    C_RSV3         VARCHAR2(180),
    C_RSV4         VARCHAR2(180),
    C_RSV5         VARCHAR2(180)
)
/

comment on table GFDR_BM_EX_RATE is '各种货币对美元折算率表'
/

comment on column GFDR_BM_EX_RATE.DATA_ID is '数据ID'
/

comment on column GFDR_BM_EX_RATE.DATA_DATE is '数据日期'
/

comment on column GFDR_BM_EX_RATE.CORP_ID is '法人机构号'
/

comment on column GFDR_BM_EX_RATE.ORG_ID is '分行机构号'
/

comment on column GFDR_BM_EX_RATE.GROUP_ID is '部门编号'
/

comment on column GFDR_BM_EX_RATE.DATA_RPT_DATE is '报表日期'
/

comment on column GFDR_BM_EX_RATE.CODE is '货币编码'
/

comment on column GFDR_BM_EX_RATE.NAME is '货币名称'
/

comment on column GFDR_BM_EX_RATE.UNIT is '货币单位'
/

comment on column GFDR_BM_EX_RATE.TO_USD is '对美元折算率'
/

comment on column GFDR_BM_EX_RATE.REMARKS is '备注'
/

comment on column GFDR_BM_EX_RATE.CHECK_FLAG is '校验标识'
/

comment on column GFDR_BM_EX_RATE.CHECK_DESC is '校验结果'
/

comment on column GFDR_BM_EX_RATE.CHECK_ERR_TYPE is '校验失败类型'
/

comment on column GFDR_BM_EX_RATE.NEXT_ACTION is '下一动作'
/

comment on column GFDR_BM_EX_RATE.DATA_STATUS is '数据状态'
/

comment on column GFDR_BM_EX_RATE.DATA_FLAG is '数据是否已删除'
/

comment on column GFDR_BM_EX_RATE.DATA_SOURCE is '数据来源'
/

comment on column GFDR_BM_EX_RATE.DATA_VERSION is '数据版本号'
/

comment on column GFDR_BM_EX_RATE.DATA_REJ_DESC is '数据审核拒绝描述'
/

comment on column GFDR_BM_EX_RATE.DATA_DEL_DESC is '数据删除描述'
/

comment on column GFDR_BM_EX_RATE.DATA_CRT_USER is '数据创建/导入用户'
/

comment on column GFDR_BM_EX_RATE.DATA_CRT_DATE is '数据创建/导入日期'
/

comment on column GFDR_BM_EX_RATE.DATA_CRT_TIME is '数据创建/导入时间'
/

comment on column GFDR_BM_EX_RATE.DATA_CHG_USER is '数据修改/删除用户'
/

comment on column GFDR_BM_EX_RATE.DATA_CHG_DATE is '数据修改/删除日期'
/

comment on column GFDR_BM_EX_RATE.DATA_CHG_TIME is '数据修改/删除时间'
/

comment on column GFDR_BM_EX_RATE.DATA_APV_USER is '数据审核/拒绝用户'
/

comment on column GFDR_BM_EX_RATE.DATA_APV_DATE is '数据审核/拒绝日期'
/

comment on column GFDR_BM_EX_RATE.DATA_APV_TIME is '数据审核/拒绝时间'
/

create unique index GFDR_BM_EX_RATE_UINDEX
    on GFDR_BM_EX_RATE (DATA_RPT_DATE, CODE, NAME)
/

create table GFDR_BM_RPT_CBRC_CFG
(
    DATA_ID    VARCHAR2(64) not null
        constraint GFDR_BM_RPT_CBRC_CFG_K
            primary key,
    DATA_DATE  CHAR(8),
    CORP_ID    VARCHAR2(14),
    ORG_ID     VARCHAR2(14),
    GROUP_ID   VARCHAR2(14),
    CJRQ_DATE  VARCHAR2(8),
    P_NBJGH    VARCHAR2(32),
    REAL_NBJGH VARCHAR2(32),
    IS_REPORT  VARCHAR2(2),
    YXJGDM     VARCHAR2(30),
    NBJGH      VARCHAR2(30),
    JRXKZH     VARCHAR2(30),
    YXJGMC     VARCHAR2(200),
    REMARKS    VARCHAR2(512),
    RSV1       VARCHAR2(180),
    RSV2       VARCHAR2(180),
    RSV3       VARCHAR2(180),
    RSV4       VARCHAR2(180),
    RSV5       VARCHAR2(180)
)
/

comment on table GFDR_BM_RPT_CBRC_CFG is 'GFDR_BM_RPT_CBRC_CFG'
/

comment on column GFDR_BM_RPT_CBRC_CFG.DATA_ID is '数据ID'
/

comment on column GFDR_BM_RPT_CBRC_CFG.DATA_DATE is '数据日期'
/

comment on column GFDR_BM_RPT_CBRC_CFG.CORP_ID is '法人机构号'
/

comment on column GFDR_BM_RPT_CBRC_CFG.ORG_ID is '分行机构号'
/

comment on column GFDR_BM_RPT_CBRC_CFG.GROUP_ID is '部门编号'
/

comment on column GFDR_BM_RPT_CBRC_CFG.CJRQ_DATE is 'CJRQ_DATE'
/

comment on column GFDR_BM_RPT_CBRC_CFG.P_NBJGH is 'P_NBJGH'
/

comment on column GFDR_BM_RPT_CBRC_CFG.REAL_NBJGH is 'REAL_NBJGH'
/

comment on column GFDR_BM_RPT_CBRC_CFG.IS_REPORT is 'IS_REPORT'
/

comment on column GFDR_BM_RPT_CBRC_CFG.YXJGDM is 'YXJGDM'
/

comment on column GFDR_BM_RPT_CBRC_CFG.NBJGH is 'NBJGH'
/

comment on column GFDR_BM_RPT_CBRC_CFG.JRXKZH is 'JRXKZH'
/

comment on column GFDR_BM_RPT_CBRC_CFG.YXJGMC is 'YXJGMC'
/

comment on column GFDR_BM_RPT_CBRC_CFG.REMARKS is '备注'
/

create table GFDR_BM_RPT_CFG
(
    DATA_ID        VARCHAR2(64) not null
        primary key,
    DATA_DATE      CHAR(8),
    CORP_ID        VARCHAR2(14),
    ORG_ID         VARCHAR2(14),
    GROUP_ID       VARCHAR2(14),
    INQ_ORG_ID     CHAR(24),
    INQ_GROUP_ID   CHAR(24),
    REPORT_CODE    VARCHAR2(80),
    REPORT_NAME    VARCHAR2(200),
    TABLE_NAME     VARCHAR2(80),
    COLLECT_MODE   VARCHAR2(2),
    REPORT_PERIOD  VARCHAR2(2),
    IS_DAYLY       VARCHAR2(2),
    IS_MONTHLY     VARCHAR2(2),
    IS_QUARTERLY   VARCHAR2(2),
    IS_HALF_YEARLY VARCHAR2(2),
    IS_YEARLY      VARCHAR2(2),
    FILE_TYPE      VARCHAR2(20),
    REPORT_TYPE    VARCHAR2(200),
    SEPARATOR      VARCHAR2(20),
    QUERY_FUNCID   VARCHAR2(20),
    REVISE_FUNCID  VARCHAR2(20),
    FILE_FUNCID    VARCHAR2(20),
    DIVIDE_COLUMN  VARCHAR2(30),
    DIVIDE_RULE    VARCHAR2(2),
    REPLEACE_RULE  VARCHAR2(4000),
    REPORT_STATUS  VARCHAR2(2),
    CHECK_FLAG     CHAR,
    CHECK_DESC     VARCHAR2(512),
    CHECK_ERR_TYPE CHAR,
    NEXT_ACTION    CHAR(2),
    DATA_STATUS    CHAR(2),
    DATA_FLAG      CHAR,
    DATA_OP        CHAR,
    DATA_SOURCE    CHAR,
    DATA_VERSION   NUMBER(8),
    DATA_HASH      VARCHAR2(64),
    DATA_REJ_DESC  VARCHAR2(128),
    DATA_DEL_DESC  VARCHAR2(128),
    DATA_CRT_USER  VARCHAR2(20),
    DATA_CRT_DATE  CHAR(8),
    DATA_CRT_TIME  CHAR(14),
    DATA_CHG_USER  VARCHAR2(20),
    DATA_CHG_DATE  CHAR(8),
    DATA_CHG_TIME  CHAR(14),
    DATA_APV_USER  VARCHAR2(20),
    DATA_APV_DATE  CHAR(8),
    DATA_APV_TIME  CHAR(14),
    RSV1           VARCHAR2(180),
    RSV2           VARCHAR2(180),
    RSV3           VARCHAR2(180),
    RSV4           VARCHAR2(180),
    RSV5           VARCHAR2(180),
    HAND_OUT_TASK  VARCHAR2(2),
    PROVID_FILE    VARCHAR2(2)
)
/

comment on table GFDR_BM_RPT_CFG is '上报报表配置'
/

comment on column GFDR_BM_RPT_CFG.DATA_ID is '数据ID'
/

comment on column GFDR_BM_RPT_CFG.DATA_DATE is '数据日期'
/

comment on column GFDR_BM_RPT_CFG.CORP_ID is '法人机构号'
/

comment on column GFDR_BM_RPT_CFG.ORG_ID is '机构号'
/

comment on column GFDR_BM_RPT_CFG.GROUP_ID is '部门编号'
/

comment on column GFDR_BM_RPT_CFG.INQ_ORG_ID is '查询机构号'
/

comment on column GFDR_BM_RPT_CFG.INQ_GROUP_ID is '查询组号'
/

comment on column GFDR_BM_RPT_CFG.REPORT_CODE is '报表编码'
/

comment on column GFDR_BM_RPT_CFG.REPORT_NAME is '报表名称'
/

comment on column GFDR_BM_RPT_CFG.TABLE_NAME is '数据库表名'
/

comment on column GFDR_BM_RPT_CFG.COLLECT_MODE is '采集模式1-变化量 2-增量 3-全量 '
/

comment on column GFDR_BM_RPT_CFG.REPORT_PERIOD is '报送周期,1-日报,2-月报,3-季报,4-半年报,5-年报'
/

comment on column GFDR_BM_RPT_CFG.IS_DAYLY is '是否日报0否1是'
/

comment on column GFDR_BM_RPT_CFG.IS_MONTHLY is '是否月报0否1是'
/

comment on column GFDR_BM_RPT_CFG.IS_QUARTERLY is '是否季报0否1是'
/

comment on column GFDR_BM_RPT_CFG.IS_HALF_YEARLY is '是否半年报0否1是'
/

comment on column GFDR_BM_RPT_CFG.IS_YEARLY is '是否年报0否1是'
/

comment on column GFDR_BM_RPT_CFG.FILE_TYPE is '生成文件类型1-TXT 2-EXCEL 3-CSV'
/

comment on column GFDR_BM_RPT_CFG.REPORT_TYPE is '报表类别,公共信息，客户信息等'
/

comment on column GFDR_BM_RPT_CFG.SEPARATOR is '字段分隔符'
/

comment on column GFDR_BM_RPT_CFG.QUERY_FUNCID is '查询页面ID'
/

comment on column GFDR_BM_RPT_CFG.REVISE_FUNCID is '补录页面ID'
/

comment on column GFDR_BM_RPT_CFG.FILE_FUNCID is 'FILE查询页面ID'
/

comment on column GFDR_BM_RPT_CFG.DIVIDE_COLUMN is '拆分字段'
/

comment on column GFDR_BM_RPT_CFG.DIVIDE_RULE is '拆分规则,1-按拆分字段正常拆分,2-总行维护分行替换部分字段上报，3-总行维护全行上报相同数据'
/

comment on column GFDR_BM_RPT_CFG.REPLEACE_RULE is '替换规则'
/

comment on column GFDR_BM_RPT_CFG.REPORT_STATUS is '报表状态1-有效 0-无效'
/

comment on column GFDR_BM_RPT_CFG.CHECK_FLAG is '校验标识'
/

comment on column GFDR_BM_RPT_CFG.CHECK_DESC is '校验结果'
/

comment on column GFDR_BM_RPT_CFG.CHECK_ERR_TYPE is '校验失败类型'
/

comment on column GFDR_BM_RPT_CFG.NEXT_ACTION is '下一动作'
/

comment on column GFDR_BM_RPT_CFG.DATA_STATUS is '数据状态'
/

comment on column GFDR_BM_RPT_CFG.DATA_FLAG is '数据是否已删除'
/

comment on column GFDR_BM_RPT_CFG.DATA_OP is '数据操作 A：新增，D:删除, M:修改'
/

comment on column GFDR_BM_RPT_CFG.DATA_SOURCE is '数据来源'
/

comment on column GFDR_BM_RPT_CFG.DATA_VERSION is '数据版本'
/

comment on column GFDR_BM_RPT_CFG.DATA_HASH is '记录HASH值'
/

comment on column GFDR_BM_RPT_CFG.DATA_REJ_DESC is '数据审核拒绝原因'
/

comment on column GFDR_BM_RPT_CFG.DATA_DEL_DESC is '数据删除描述'
/

comment on column GFDR_BM_RPT_CFG.DATA_CRT_USER is '数据创建/导入用户'
/

comment on column GFDR_BM_RPT_CFG.DATA_CRT_DATE is '数据创建/导入日期'
/

comment on column GFDR_BM_RPT_CFG.DATA_CRT_TIME is '数据创建/导入时间'
/

comment on column GFDR_BM_RPT_CFG.DATA_CHG_USER is '数据修改/删除用户'
/

comment on column GFDR_BM_RPT_CFG.DATA_CHG_DATE is '数据修改/删除日期'
/

comment on column GFDR_BM_RPT_CFG.DATA_CHG_TIME is '数据修改/删除时间'
/

comment on column GFDR_BM_RPT_CFG.DATA_APV_USER is '数据审核/拒绝用户'
/

comment on column GFDR_BM_RPT_CFG.DATA_APV_DATE is '数据审核/拒绝日期'
/

comment on column GFDR_BM_RPT_CFG.DATA_APV_TIME is '数据审核/拒绝时间'
/

comment on column GFDR_BM_RPT_CFG.RSV1 is '备用1'
/

comment on column GFDR_BM_RPT_CFG.RSV2 is '备用2'
/

comment on column GFDR_BM_RPT_CFG.RSV3 is '备用3'
/

comment on column GFDR_BM_RPT_CFG.RSV4 is '备用4'
/

comment on column GFDR_BM_RPT_CFG.RSV5 is '备用5'
/

comment on column GFDR_BM_RPT_CFG.HAND_OUT_TASK is '是否下发任务1 需要 0 不需要'
/

comment on column GFDR_BM_RPT_CFG.PROVID_FILE is '是否生成文件 1需要 0 不需要'
/

create table GFDR_BM_RPT_CFG_BAK
(
    DATA_ID         VARCHAR2(64) not null
        constraint GFDR_BM_RPT_CFG_K
            primary key,
    DATA_DATE       CHAR(8),
    CORP_ID         VARCHAR2(14),
    ORG_ID          VARCHAR2(14),
    GROUP_ID        VARCHAR2(14),
    INQ_ORG_ID      VARCHAR2(32),
    INQ_GROUP_ID    VARCHAR2(32),
    FILE_NAME       VARCHAR2(64),
    TABLE_NAME      VARCHAR2(64),
    CON_MODE        CHAR,
    LAST_MODE       CHAR,
    IS_MONTH        CHAR,
    IS_QUARTER      CHAR,
    IS_HALF         CHAR,
    IS_YEAR         CHAR,
    SEPARATOR       VARCHAR2(12),
    TEMP_TABLE_NAME VARCHAR2(100),
    REPORT_TYPE     VARCHAR2(50),
    QUERY_FUNCID    VARCHAR2(20),
    REVISE_FUNCID   VARCHAR2(20),
    FILE_FUNCID     VARCHAR2(20),
    DIVIDE_COLUMN   VARCHAR2(64),
    DIVIDE_RULE     VARCHAR2(20),
    CJRQ_FLAG       VARCHAR2(2),
    REMARKS         VARCHAR2(512),
    CHECK_FLAG      CHAR,
    CHECK_DESC      VARCHAR2(512),
    CHECK_ERR_TYPE  CHAR,
    NEXT_ACTION     CHAR(2),
    DATA_STATUS     CHAR(2),
    DATA_FLAG       CHAR,
    DATA_SOURCE     CHAR,
    DATA_VERSION    NUMBER(8),
    DATA_REJ_DESC   VARCHAR2(128),
    DATA_DEL_DESC   VARCHAR2(128),
    DATA_CRT_USER   VARCHAR2(20),
    DATA_CRT_DATE   CHAR(8),
    DATA_CRT_TIME   CHAR(14),
    DATA_CHG_USER   VARCHAR2(20),
    DATA_CHG_DATE   CHAR(8),
    DATA_CHG_TIME   CHAR(14),
    DATA_APV_USER   VARCHAR2(20),
    DATA_APV_DATE   CHAR(8),
    DATA_APV_TIME   CHAR(14),
    RSV1            VARCHAR2(180),
    RSV2            VARCHAR2(180),
    RSV3            VARCHAR2(180),
    RSV4            VARCHAR2(180),
    RSV5            VARCHAR2(180)
)
/

comment on table GFDR_BM_RPT_CFG_BAK is 'GFDR_BM_RPT_CFG'
/

comment on column GFDR_BM_RPT_CFG_BAK.DATA_ID is '数据ID'
/

comment on column GFDR_BM_RPT_CFG_BAK.DATA_DATE is '数据日期'
/

comment on column GFDR_BM_RPT_CFG_BAK.CORP_ID is '法人机构号'
/

comment on column GFDR_BM_RPT_CFG_BAK.ORG_ID is '分行机构号'
/

comment on column GFDR_BM_RPT_CFG_BAK.GROUP_ID is '部门编号'
/

comment on column GFDR_BM_RPT_CFG_BAK.INQ_ORG_ID is '分行机构号'
/

comment on column GFDR_BM_RPT_CFG_BAK.INQ_GROUP_ID is '部门编号'
/

comment on column GFDR_BM_RPT_CFG_BAK.FILE_NAME is '文件名'
/

comment on column GFDR_BM_RPT_CFG_BAK.TABLE_NAME is '表名'
/

comment on column GFDR_BM_RPT_CFG_BAK.CON_MODE is '集中采集模式'
/

comment on column GFDR_BM_RPT_CFG_BAK.LAST_MODE is '持续采集模式'
/

comment on column GFDR_BM_RPT_CFG_BAK.IS_MONTH is '是否月报'
/

comment on column GFDR_BM_RPT_CFG_BAK.IS_QUARTER is '是否季报'
/

comment on column GFDR_BM_RPT_CFG_BAK.IS_HALF is '是否半年报'
/

comment on column GFDR_BM_RPT_CFG_BAK.IS_YEAR is '是否年报'
/

comment on column GFDR_BM_RPT_CFG_BAK.SEPARATOR is '分割符'
/

comment on column GFDR_BM_RPT_CFG_BAK.TEMP_TABLE_NAME is '上报临时表表名'
/

comment on column GFDR_BM_RPT_CFG_BAK.REPORT_TYPE is '报表类型'
/

comment on column GFDR_BM_RPT_CFG_BAK.QUERY_FUNCID is '查询页面菜单ID'
/

comment on column GFDR_BM_RPT_CFG_BAK.REVISE_FUNCID is '补录页面菜单ID'
/

comment on column GFDR_BM_RPT_CFG_BAK.FILE_FUNCID is '上报文件查询菜单ID'
/

comment on column GFDR_BM_RPT_CFG_BAK.DIVIDE_COLUMN is '拆分字段'
/

comment on column GFDR_BM_RPT_CFG_BAK.DIVIDE_RULE is '拆分规则'
/

comment on column GFDR_BM_RPT_CFG_BAK.CJRQ_FLAG is '采集日期规则'
/

comment on column GFDR_BM_RPT_CFG_BAK.REMARKS is '备注'
/

comment on column GFDR_BM_RPT_CFG_BAK.CHECK_FLAG is '校验标识'
/

comment on column GFDR_BM_RPT_CFG_BAK.CHECK_DESC is '校验结果'
/

comment on column GFDR_BM_RPT_CFG_BAK.CHECK_ERR_TYPE is '校验失败类型'
/

comment on column GFDR_BM_RPT_CFG_BAK.NEXT_ACTION is '下一动作'
/

comment on column GFDR_BM_RPT_CFG_BAK.DATA_STATUS is '数据状态'
/

comment on column GFDR_BM_RPT_CFG_BAK.DATA_FLAG is '数据是否已删除'
/

comment on column GFDR_BM_RPT_CFG_BAK.DATA_SOURCE is '数据来源'
/

comment on column GFDR_BM_RPT_CFG_BAK.DATA_VERSION is '数据版本号'
/

comment on column GFDR_BM_RPT_CFG_BAK.DATA_REJ_DESC is '数据审核拒绝描述'
/

comment on column GFDR_BM_RPT_CFG_BAK.DATA_DEL_DESC is '数据删除描述'
/

comment on column GFDR_BM_RPT_CFG_BAK.DATA_CRT_USER is '数据创建/导入用户'
/

comment on column GFDR_BM_RPT_CFG_BAK.DATA_CRT_DATE is '数据创建/导入日期'
/

comment on column GFDR_BM_RPT_CFG_BAK.DATA_CRT_TIME is '数据创建/导入时间'
/

comment on column GFDR_BM_RPT_CFG_BAK.DATA_CHG_USER is '数据修改/删除用户'
/

comment on column GFDR_BM_RPT_CFG_BAK.DATA_CHG_DATE is '数据修改/删除日期'
/

comment on column GFDR_BM_RPT_CFG_BAK.DATA_CHG_TIME is '数据修改/删除时间'
/

comment on column GFDR_BM_RPT_CFG_BAK.DATA_APV_USER is '数据审核/拒绝用户'
/

comment on column GFDR_BM_RPT_CFG_BAK.DATA_APV_DATE is '数据审核/拒绝日期'
/

comment on column GFDR_BM_RPT_CFG_BAK.DATA_APV_TIME is '数据审核/拒绝时间'
/

create table GFDR_BM_RPT_CFG_DTL
(
    DATA_ID         VARCHAR2(64) not null
        constraint GFDR_BM_RPT_CFG_DTL_K
            primary key,
    DATA_DATE       CHAR(8),
    CORP_ID         VARCHAR2(14),
    ORG_ID          VARCHAR2(14),
    GROUP_ID        VARCHAR2(14),
    INQ_ORG_ID      VARCHAR2(32),
    INQ_GROUP_ID    VARCHAR2(32),
    RPT_CFG_DATA_ID CHAR(32),
    COLUMN_NAME     VARCHAR2(64),
    COLUMN_TYPE     VARCHAR2(12),
    SEQ_NO          CHAR(3),
    SECRET_MODE     VARCHAR2(200),
    STATUS          CHAR,
    KZYY            VARCHAR2(2000),
    JJFA            VARCHAR2(2000),
    JJJD            VARCHAR2(2000),
    REMARKS         VARCHAR2(512),
    CHECK_FLAG      CHAR,
    CHECK_DESC      VARCHAR2(512),
    CHECK_ERR_TYPE  CHAR,
    NEXT_ACTION     CHAR(2),
    DATA_STATUS     CHAR(2),
    DATA_FLAG       CHAR,
    DATA_SOURCE     CHAR,
    DATA_VERSION    NUMBER(8),
    DATA_REJ_DESC   VARCHAR2(128),
    DATA_DEL_DESC   VARCHAR2(128),
    DATA_CRT_USER   VARCHAR2(20),
    DATA_CRT_DATE   CHAR(8),
    DATA_CRT_TIME   CHAR(14),
    DATA_CHG_USER   VARCHAR2(20),
    DATA_CHG_DATE   CHAR(8),
    DATA_CHG_TIME   CHAR(14),
    DATA_APV_USER   VARCHAR2(20),
    DATA_APV_DATE   CHAR(8),
    DATA_APV_TIME   CHAR(14),
    RSV1            VARCHAR2(180),
    RSV2            VARCHAR2(180),
    RSV3            VARCHAR2(180),
    RSV4            VARCHAR2(180),
    RSV5            VARCHAR2(180),
    FIELD_TYPE      CHAR
)
/

comment on table GFDR_BM_RPT_CFG_DTL is 'GFDR_BM_RPT_CFG_DTL'
/

comment on column GFDR_BM_RPT_CFG_DTL.DATA_ID is '数据ID'
/

comment on column GFDR_BM_RPT_CFG_DTL.DATA_DATE is '数据日期'
/

comment on column GFDR_BM_RPT_CFG_DTL.CORP_ID is '法人机构号'
/

comment on column GFDR_BM_RPT_CFG_DTL.ORG_ID is '分行机构号'
/

comment on column GFDR_BM_RPT_CFG_DTL.GROUP_ID is '部门编号'
/

comment on column GFDR_BM_RPT_CFG_DTL.INQ_ORG_ID is '分行机构号'
/

comment on column GFDR_BM_RPT_CFG_DTL.INQ_GROUP_ID is '部门编号'
/

comment on column GFDR_BM_RPT_CFG_DTL.RPT_CFG_DATA_ID is '报文生成配置表ID'
/

comment on column GFDR_BM_RPT_CFG_DTL.COLUMN_NAME is '字段名'
/

comment on column GFDR_BM_RPT_CFG_DTL.COLUMN_TYPE is '字段类型'
/

comment on column GFDR_BM_RPT_CFG_DTL.SEQ_NO is '字段顺序'
/

comment on column GFDR_BM_RPT_CFG_DTL.SECRET_MODE is '隐私处理模式'
/

comment on column GFDR_BM_RPT_CFG_DTL.STATUS is '是否有效'
/

comment on column GFDR_BM_RPT_CFG_DTL.KZYY is '空值原因'
/

comment on column GFDR_BM_RPT_CFG_DTL.JJFA is '解决方案'
/

comment on column GFDR_BM_RPT_CFG_DTL.JJJD is '解决进度'
/

comment on column GFDR_BM_RPT_CFG_DTL.REMARKS is '备注'
/

comment on column GFDR_BM_RPT_CFG_DTL.CHECK_FLAG is '校验标识'
/

comment on column GFDR_BM_RPT_CFG_DTL.CHECK_DESC is '校验结果'
/

comment on column GFDR_BM_RPT_CFG_DTL.CHECK_ERR_TYPE is '校验失败类型'
/

comment on column GFDR_BM_RPT_CFG_DTL.NEXT_ACTION is '下一动作'
/

comment on column GFDR_BM_RPT_CFG_DTL.DATA_STATUS is '数据状态'
/

comment on column GFDR_BM_RPT_CFG_DTL.DATA_FLAG is '数据是否已删除'
/

comment on column GFDR_BM_RPT_CFG_DTL.DATA_SOURCE is '数据来源'
/

comment on column GFDR_BM_RPT_CFG_DTL.DATA_VERSION is '数据版本号'
/

comment on column GFDR_BM_RPT_CFG_DTL.DATA_REJ_DESC is '数据审核拒绝描述'
/

comment on column GFDR_BM_RPT_CFG_DTL.DATA_DEL_DESC is '数据删除描述'
/

comment on column GFDR_BM_RPT_CFG_DTL.DATA_CRT_USER is '数据创建/导入用户'
/

comment on column GFDR_BM_RPT_CFG_DTL.DATA_CRT_DATE is '数据创建/导入日期'
/

comment on column GFDR_BM_RPT_CFG_DTL.DATA_CRT_TIME is '数据创建/导入时间'
/

comment on column GFDR_BM_RPT_CFG_DTL.DATA_CHG_USER is '数据修改/删除用户'
/

comment on column GFDR_BM_RPT_CFG_DTL.DATA_CHG_DATE is '数据修改/删除日期'
/

comment on column GFDR_BM_RPT_CFG_DTL.DATA_CHG_TIME is '数据修改/删除时间'
/

comment on column GFDR_BM_RPT_CFG_DTL.DATA_APV_USER is '数据审核/拒绝用户'
/

comment on column GFDR_BM_RPT_CFG_DTL.DATA_APV_DATE is '数据审核/拒绝日期'
/

comment on column GFDR_BM_RPT_CFG_DTL.DATA_APV_TIME is '数据审核/拒绝时间'
/

create table GFDR_BM_RPT_CONDITION
(
    DATA_ID         VARCHAR2(64) not null
        constraint GFDR_BM_RPT_CONDITION_K
            primary key,
    DATA_DATE       CHAR(8),
    CORP_ID         VARCHAR2(14),
    ORG_ID          VARCHAR2(14),
    GROUP_ID        VARCHAR2(14),
    NBJGH           VARCHAR2(30),
    FILE_NAME       VARCHAR2(64),
    DIVIDE_RULE     VARCHAR2(2),
    WHERE_CONDITION VARCHAR2(400),
    RSV1            VARCHAR2(180),
    RSV2            VARCHAR2(180),
    RSV3            VARCHAR2(180),
    RSV4            VARCHAR2(180),
    RSV5            VARCHAR2(180)
)
/

comment on table GFDR_BM_RPT_CONDITION is 'GFDR_BM_RPT_CONDITION'
/

comment on column GFDR_BM_RPT_CONDITION.DATA_ID is '数据ID'
/

comment on column GFDR_BM_RPT_CONDITION.DATA_DATE is '数据日期'
/

comment on column GFDR_BM_RPT_CONDITION.CORP_ID is '法人机构号'
/

comment on column GFDR_BM_RPT_CONDITION.ORG_ID is '分行机构号'
/

comment on column GFDR_BM_RPT_CONDITION.GROUP_ID is '部门编号'
/

comment on column GFDR_BM_RPT_CONDITION.NBJGH is 'NBJGH'
/

comment on column GFDR_BM_RPT_CONDITION.FILE_NAME is 'FILE_NAME'
/

comment on column GFDR_BM_RPT_CONDITION.DIVIDE_RULE is 'DIVIDE_RULE'
/

comment on column GFDR_BM_RPT_CONDITION.WHERE_CONDITION is 'WHERE_CONDITION'
/

create table GFDR_BM_RPT_DEPART_REL
(
    DATA_ID            CHAR(32) not null
        constraint GFDR_BM_RPT_DEPART_REL
            primary key,
    DATA_DATE          CHAR(8),
    CORP_ID            VARCHAR2(14),
    ORG_ID             VARCHAR2(14),
    GROUP_ID           VARCHAR2(14),
    INQ_ORG_ID         CHAR(24),
    INQ_GROUP_ID       CHAR(24),
    REPORT_CODE        VARCHAR2(32),
    REPORT_NAME        VARCHAR2(256),
    BUSINESS_LINE      VARCHAR2(4000),
    BUSINESS_LINE_NAME VARCHAR2(4000),
    REMARKS            VARCHAR2(512),
    CHECK_FLAG         CHAR,
    CHECK_DESC         VARCHAR2(512),
    CHECK_ERR_TYPE     CHAR,
    NEXT_ACTION        CHAR(2),
    DATA_STATUS        CHAR(2),
    DATA_FLAG          CHAR,
    DATA_SOURCE        CHAR,
    DATA_VERSION       NUMBER(8),
    DATA_REJ_DESC      VARCHAR2(128),
    DATA_DEL_DESC      VARCHAR2(128),
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
    C_RSV1             VARCHAR2(180),
    C_RSV2             VARCHAR2(180),
    C_RSV3             VARCHAR2(180),
    C_RSV4             VARCHAR2(180),
    C_RSV5             VARCHAR2(180)
)
/

comment on column GFDR_BM_RPT_DEPART_REL.DATA_ID is '数据ID'
/

comment on column GFDR_BM_RPT_DEPART_REL.DATA_DATE is '数据日期'
/

comment on column GFDR_BM_RPT_DEPART_REL.CORP_ID is '法人机构号'
/

comment on column GFDR_BM_RPT_DEPART_REL.ORG_ID is '分行机构号'
/

comment on column GFDR_BM_RPT_DEPART_REL.GROUP_ID is '部门编号'
/

comment on column GFDR_BM_RPT_DEPART_REL.INQ_ORG_ID is '查询机构号'
/

comment on column GFDR_BM_RPT_DEPART_REL.INQ_GROUP_ID is '查询组号'
/

comment on column GFDR_BM_RPT_DEPART_REL.REPORT_CODE is '报表编号'
/

comment on column GFDR_BM_RPT_DEPART_REL.REPORT_NAME is '报表名称'
/

comment on column GFDR_BM_RPT_DEPART_REL.BUSINESS_LINE is '业务线条'
/

comment on column GFDR_BM_RPT_DEPART_REL.BUSINESS_LINE_NAME is '业务线条名称'
/

comment on column GFDR_BM_RPT_DEPART_REL.REMARKS is '备注'
/

comment on column GFDR_BM_RPT_DEPART_REL.CHECK_FLAG is '校验标识'
/

comment on column GFDR_BM_RPT_DEPART_REL.CHECK_DESC is '校验结果'
/

comment on column GFDR_BM_RPT_DEPART_REL.CHECK_ERR_TYPE is '校验失败类型'
/

comment on column GFDR_BM_RPT_DEPART_REL.NEXT_ACTION is '下一动作'
/

comment on column GFDR_BM_RPT_DEPART_REL.DATA_STATUS is '数据状态'
/

comment on column GFDR_BM_RPT_DEPART_REL.DATA_FLAG is '数据是否已删除'
/

comment on column GFDR_BM_RPT_DEPART_REL.DATA_SOURCE is '数据来源'
/

comment on column GFDR_BM_RPT_DEPART_REL.DATA_VERSION is '数据版本'
/

comment on column GFDR_BM_RPT_DEPART_REL.DATA_REJ_DESC is '数据审核拒绝描述'
/

comment on column GFDR_BM_RPT_DEPART_REL.DATA_DEL_DESC is '数据删除描述'
/

comment on column GFDR_BM_RPT_DEPART_REL.DATA_CRT_USER is '数据创建/导入用户'
/

comment on column GFDR_BM_RPT_DEPART_REL.DATA_CRT_DATE is '数据创建/导入日期'
/

comment on column GFDR_BM_RPT_DEPART_REL.DATA_CRT_TIME is '数据创建/导入时间'
/

comment on column GFDR_BM_RPT_DEPART_REL.DATA_CHG_USER is '数据修改/删除用户'
/

comment on column GFDR_BM_RPT_DEPART_REL.DATA_CHG_DATE is '数据修改/删除日期'
/

comment on column GFDR_BM_RPT_DEPART_REL.DATA_CHG_TIME is '数据修改/删除时间'
/

comment on column GFDR_BM_RPT_DEPART_REL.DATA_APV_USER is '数据审核/拒绝用户'
/

comment on column GFDR_BM_RPT_DEPART_REL.DATA_APV_DATE is '数据审核/拒绝日期'
/

comment on column GFDR_BM_RPT_DEPART_REL.DATA_APV_TIME is '数据审核/拒绝时间'
/

comment on column GFDR_BM_RPT_DEPART_REL.RSV1 is '备用1'
/

comment on column GFDR_BM_RPT_DEPART_REL.RSV2 is '备用2'
/

comment on column GFDR_BM_RPT_DEPART_REL.RSV3 is '备用3'
/

comment on column GFDR_BM_RPT_DEPART_REL.RSV4 is '备用4'
/

comment on column GFDR_BM_RPT_DEPART_REL.RSV5 is '备用5'
/

comment on column GFDR_BM_RPT_DEPART_REL.C_RSV1 is '扩展字段1'
/

comment on column GFDR_BM_RPT_DEPART_REL.C_RSV2 is '扩展字段2'
/

comment on column GFDR_BM_RPT_DEPART_REL.C_RSV3 is '扩展字段3'
/

comment on column GFDR_BM_RPT_DEPART_REL.C_RSV4 is '扩展字段4'
/

comment on column GFDR_BM_RPT_DEPART_REL.C_RSV5 is '扩展字段5'
/

create table GFDR_BM_RPT_QRYCOL_REL
(
    DATA_ID              VARCHAR2(64) not null
        constraint GFDR_BM_RPT_QRYCOL_REL_K
            primary key,
    DATA_DATE            CHAR(8),
    CORP_ID              VARCHAR2(14),
    ORG_ID               VARCHAR2(14),
    GROUP_ID             VARCHAR2(14),
    INQ_ORG_ID           VARCHAR2(32),
    INQ_GROUP_ID         VARCHAR2(32),
    REPORT_CODE          VARCHAR2(32),
    REPORT_NAME          VARCHAR2(256),
    QUERY_COLUMN_NAME    VARCHAR2(4000),
    QUERY_COLUMN_COMMENT VARCHAR2(4000),
    QUERY_TYPE           VARCHAR2(32),
    REQUIRE              VARCHAR2(32),
    EDIT_TYPE            VARCHAR2(32),
    DATA_TYPE            VARCHAR2(32),
    COLUMN_LENGTH        VARCHAR2(32),
    READONLY             VARCHAR2(32),
    DATA_DIC             VARCHAR2(32),
    CQ_QUERY             VARCHAR2(512),
    REMARKS              VARCHAR2(512),
    CHECK_FLAG           CHAR,
    CHECK_DESC           VARCHAR2(512),
    CHECK_ERR_TYPE       CHAR,
    NEXT_ACTION          CHAR(2),
    DATA_STATUS          CHAR(2),
    DATA_FLAG            CHAR,
    DATA_SOURCE          CHAR,
    DATA_VERSION         NUMBER(8),
    DATA_REJ_DESC        VARCHAR2(128),
    DATA_DEL_DESC        VARCHAR2(128),
    DATA_CRT_USER        VARCHAR2(20),
    DATA_CRT_DATE        CHAR(8),
    DATA_CRT_TIME        CHAR(14),
    DATA_CHG_USER        VARCHAR2(20),
    DATA_CHG_DATE        CHAR(8),
    DATA_CHG_TIME        CHAR(14),
    DATA_APV_USER        VARCHAR2(20),
    DATA_APV_DATE        CHAR(8),
    DATA_APV_TIME        CHAR(14),
    RSV1                 VARCHAR2(180),
    RSV2                 VARCHAR2(180),
    RSV3                 VARCHAR2(180),
    RSV4                 VARCHAR2(180),
    RSV5                 VARCHAR2(180)
)
/

comment on table GFDR_BM_RPT_QRYCOL_REL is 'GFDR_BM_RPT_QRYCOL_REL'
/

comment on column GFDR_BM_RPT_QRYCOL_REL.DATA_ID is '数据ID'
/

comment on column GFDR_BM_RPT_QRYCOL_REL.DATA_DATE is '数据日期'
/

comment on column GFDR_BM_RPT_QRYCOL_REL.CORP_ID is '法人机构号'
/

comment on column GFDR_BM_RPT_QRYCOL_REL.ORG_ID is '分行机构号'
/

comment on column GFDR_BM_RPT_QRYCOL_REL.GROUP_ID is '部门编号'
/

comment on column GFDR_BM_RPT_QRYCOL_REL.INQ_ORG_ID is '分行机构号'
/

comment on column GFDR_BM_RPT_QRYCOL_REL.INQ_GROUP_ID is '部门编号'
/

comment on column GFDR_BM_RPT_QRYCOL_REL.REPORT_CODE is '报表编号'
/

comment on column GFDR_BM_RPT_QRYCOL_REL.REPORT_NAME is '报表名称'
/

comment on column GFDR_BM_RPT_QRYCOL_REL.QUERY_COLUMN_NAME is '查询字段名'
/

comment on column GFDR_BM_RPT_QRYCOL_REL.QUERY_COLUMN_COMMENT is '查询字段中文名'
/

comment on column GFDR_BM_RPT_QRYCOL_REL.QUERY_TYPE is '查询方式'
/

comment on column GFDR_BM_RPT_QRYCOL_REL.REQUIRE is '是否必填'
/

comment on column GFDR_BM_RPT_QRYCOL_REL.EDIT_TYPE is '编辑类型'
/

comment on column GFDR_BM_RPT_QRYCOL_REL.DATA_TYPE is '数据类型'
/

comment on column GFDR_BM_RPT_QRYCOL_REL.COLUMN_LENGTH is '允许最大长度'
/

comment on column GFDR_BM_RPT_QRYCOL_REL.READONLY is '只读状态'
/

comment on column GFDR_BM_RPT_QRYCOL_REL.DATA_DIC is '数据字典'
/

comment on column GFDR_BM_RPT_QRYCOL_REL.CQ_QUERY is 'CQ查询'
/

comment on column GFDR_BM_RPT_QRYCOL_REL.REMARKS is '备注'
/

comment on column GFDR_BM_RPT_QRYCOL_REL.CHECK_FLAG is '校验标识'
/

comment on column GFDR_BM_RPT_QRYCOL_REL.CHECK_DESC is '校验结果'
/

comment on column GFDR_BM_RPT_QRYCOL_REL.CHECK_ERR_TYPE is '校验失败类型'
/

comment on column GFDR_BM_RPT_QRYCOL_REL.NEXT_ACTION is '下一动作'
/

comment on column GFDR_BM_RPT_QRYCOL_REL.DATA_STATUS is '数据状态'
/

comment on column GFDR_BM_RPT_QRYCOL_REL.DATA_FLAG is '数据是否已删除'
/

comment on column GFDR_BM_RPT_QRYCOL_REL.DATA_SOURCE is '数据来源'
/

comment on column GFDR_BM_RPT_QRYCOL_REL.DATA_VERSION is '数据版本号'
/

comment on column GFDR_BM_RPT_QRYCOL_REL.DATA_REJ_DESC is '数据审核拒绝描述'
/

comment on column GFDR_BM_RPT_QRYCOL_REL.DATA_DEL_DESC is '数据删除描述'
/

comment on column GFDR_BM_RPT_QRYCOL_REL.DATA_CRT_USER is '数据创建/导入用户'
/

comment on column GFDR_BM_RPT_QRYCOL_REL.DATA_CRT_DATE is '数据创建/导入日期'
/

comment on column GFDR_BM_RPT_QRYCOL_REL.DATA_CRT_TIME is '数据创建/导入时间'
/

comment on column GFDR_BM_RPT_QRYCOL_REL.DATA_CHG_USER is '数据修改/删除用户'
/

comment on column GFDR_BM_RPT_QRYCOL_REL.DATA_CHG_DATE is '数据修改/删除日期'
/

comment on column GFDR_BM_RPT_QRYCOL_REL.DATA_CHG_TIME is '数据修改/删除时间'
/

comment on column GFDR_BM_RPT_QRYCOL_REL.DATA_APV_USER is '数据审核/拒绝用户'
/

comment on column GFDR_BM_RPT_QRYCOL_REL.DATA_APV_DATE is '数据审核/拒绝日期'
/

comment on column GFDR_BM_RPT_QRYCOL_REL.DATA_APV_TIME is '数据审核/拒绝时间'
/

create table GFDR_BM_RPT_TASK
(
    DATA_ID          VARCHAR2(64) not null
        primary key,
    DATA_DATE        CHAR(8),
    CORP_ID          VARCHAR2(14),
    ORG_ID           VARCHAR2(14),
    GROUP_ID         VARCHAR2(14),
    INQ_ORG_ID       CHAR(24),
    INQ_GROUP_ID     CHAR(24),
    DATA_RPT_DATE    VARCHAR2(8),
    NBJGH            VARCHAR2(20),
    FILE_PATH        VARCHAR2(200),
    FILE_NAME        VARCHAR2(200),
    REPORT_CODE      VARCHAR2(80),
    REPORT_NAME      VARCHAR2(200),
    REPORT_PERIOD    VARCHAR2(2),
    PROCESS_SQL      VARCHAR2(4000),
    WRITE_FILE_SQL   VARCHAR2(4000),
    VALIDATE_SQL     VARCHAR2(4000),
    REPORT_BM_NAME   VARCHAR2(80),
    REPORT_FILE_NAME VARCHAR2(80),
    TASK_STATUS      VARCHAR2(2),
    CJ_START_DATE    VARCHAR2(8),
    CJ_END_DATE      VARCHAR2(8),
    CHECK_FLAG       CHAR,
    CHECK_DESC       VARCHAR2(512),
    CHECK_ERR_TYPE   CHAR,
    NEXT_ACTION      CHAR(2),
    DATA_STATUS      CHAR(2),
    DATA_FLAG        CHAR,
    DATA_OP          CHAR,
    DATA_SOURCE      CHAR,
    DATA_VERSION     NUMBER(8),
    DATA_HASH        VARCHAR2(64),
    DATA_REJ_DESC    VARCHAR2(128),
    DATA_DEL_DESC    VARCHAR2(128),
    DATA_CRT_USER    VARCHAR2(20),
    DATA_CRT_DATE    CHAR(8),
    DATA_CRT_TIME    CHAR(14),
    DATA_CHG_USER    VARCHAR2(20),
    DATA_CHG_DATE    CHAR(8),
    DATA_CHG_TIME    CHAR(14),
    DATA_APV_USER    VARCHAR2(20),
    DATA_APV_DATE    CHAR(8),
    DATA_APV_TIME    CHAR(14),
    RSV1             VARCHAR2(180),
    RSV2             VARCHAR2(180),
    RSV3             VARCHAR2(180),
    RSV4             VARCHAR2(180),
    RSV5             VARCHAR2(180)
)
/

create table GFDR_BM_TODO_TASK
(
    DATA_ID         VARCHAR2(64) not null
        constraint GFDR_BM_TODO_TASK_K
            primary key,
    DATA_DATE       CHAR(8),
    CORP_ID         VARCHAR2(14),
    ORG_ID          VARCHAR2(14),
    GROUP_ID        VARCHAR2(14),
    REPORT_TYPE     VARCHAR2(128),
    REPORT_CODE     VARCHAR2(32),
    REPORT_NAME     VARCHAR2(128),
    REPORT_DATE     VARCHAR2(32),
    TASK_TYPE       CHAR,
    P_TASK_ID       VARCHAR2(32),
    CHECK_STATUS    VARCHAR2(2),
    TASK_STATUS     CHAR(2),
    REVISE_FUNC_ID  VARCHAR2(64),
    REVIEW_FUNC_ID  VARCHAR2(64),
    APPROVE_FUNC_ID VARCHAR2(64),
    PACKAGE_FUNC_ID VARCHAR2(64),
    TASK_NAME       VARCHAR2(100),
    TASK_ID         VARCHAR2(100),
    TASK_MODULE     VARCHAR2(100),
    REMARKS         VARCHAR2(512),
    CHECK_FLAG      CHAR,
    CHECK_DESC      VARCHAR2(512),
    CHECK_ERR_TYPE  CHAR,
    NEXT_ACTION     CHAR(2),
    DATA_STATUS     CHAR(2),
    DATA_FLAG       CHAR,
    DATA_SOURCE     CHAR,
    DATA_VERSION    NUMBER(8),
    DATA_REJ_DESC   VARCHAR2(128),
    DATA_DEL_DESC   VARCHAR2(128),
    DATA_CRT_USER   VARCHAR2(20),
    DATA_CRT_DATE   CHAR(8),
    DATA_CRT_TIME   CHAR(14),
    DATA_CHG_USER   VARCHAR2(20),
    DATA_CHG_DATE   CHAR(8),
    DATA_CHG_TIME   CHAR(14),
    DATA_APV_USER   VARCHAR2(20),
    DATA_APV_DATE   CHAR(8),
    DATA_APV_TIME   CHAR(14),
    RSV1            VARCHAR2(180),
    RSV2            VARCHAR2(180),
    RSV3            VARCHAR2(180),
    RSV4            VARCHAR2(180),
    RSV5            VARCHAR2(180),
    C_RSV1          VARCHAR2(180),
    C_RSV2          VARCHAR2(180),
    C_RSV3          VARCHAR2(180),
    C_RSV4          VARCHAR2(180),
    C_RSV5          VARCHAR2(180)
)
/

comment on table GFDR_BM_TODO_TASK is 'GFDR_BM_TODO_TASK'
/

comment on column GFDR_BM_TODO_TASK.DATA_ID is '数据ID'
/

comment on column GFDR_BM_TODO_TASK.DATA_DATE is '数据日期'
/

comment on column GFDR_BM_TODO_TASK.CORP_ID is '法人机构号'
/

comment on column GFDR_BM_TODO_TASK.ORG_ID is '分行机构号'
/

comment on column GFDR_BM_TODO_TASK.GROUP_ID is '部门编号'
/

comment on column GFDR_BM_TODO_TASK.REPORT_TYPE is '报表类型'
/

comment on column GFDR_BM_TODO_TASK.REPORT_CODE is '报表编码'
/

comment on column GFDR_BM_TODO_TASK.REPORT_NAME is '报表名称'
/

comment on column GFDR_BM_TODO_TASK.REPORT_DATE is '报表日期'
/

comment on column GFDR_BM_TODO_TASK.TASK_TYPE is '任务类型'
/

comment on column GFDR_BM_TODO_TASK.P_TASK_ID is '主任务任务ID'
/

comment on column GFDR_BM_TODO_TASK.CHECK_STATUS is '校验状态'
/

comment on column GFDR_BM_TODO_TASK.TASK_STATUS is '任务状态'
/

comment on column GFDR_BM_TODO_TASK.REVISE_FUNC_ID is '补录页面菜单ID'
/

comment on column GFDR_BM_TODO_TASK.REVIEW_FUNC_ID is '复核页面菜单ID'
/

comment on column GFDR_BM_TODO_TASK.APPROVE_FUNC_ID is '审核页面菜单ID'
/

comment on column GFDR_BM_TODO_TASK.PACKAGE_FUNC_ID is '打包页面菜单ID'
/

comment on column GFDR_BM_TODO_TASK.TASK_NAME is '任务名称'
/

comment on column GFDR_BM_TODO_TASK.TASK_ID is '任务ID'
/

comment on column GFDR_BM_TODO_TASK.TASK_MODULE is '任务模块'
/

comment on column GFDR_BM_TODO_TASK.REMARKS is '备注'
/

comment on column GFDR_BM_TODO_TASK.CHECK_FLAG is '校验标识'
/

comment on column GFDR_BM_TODO_TASK.CHECK_DESC is '校验结果'
/

comment on column GFDR_BM_TODO_TASK.CHECK_ERR_TYPE is '校验失败类型'
/

comment on column GFDR_BM_TODO_TASK.NEXT_ACTION is '下一动作'
/

comment on column GFDR_BM_TODO_TASK.DATA_STATUS is '数据状态'
/

comment on column GFDR_BM_TODO_TASK.DATA_FLAG is '数据是否已删除'
/

comment on column GFDR_BM_TODO_TASK.DATA_SOURCE is '数据来源'
/

comment on column GFDR_BM_TODO_TASK.DATA_VERSION is '数据版本号'
/

comment on column GFDR_BM_TODO_TASK.DATA_REJ_DESC is '数据审核拒绝描述'
/

comment on column GFDR_BM_TODO_TASK.DATA_DEL_DESC is '数据删除描述'
/

comment on column GFDR_BM_TODO_TASK.DATA_CRT_USER is '数据创建/导入用户'
/

comment on column GFDR_BM_TODO_TASK.DATA_CRT_DATE is '数据创建/导入日期'
/

comment on column GFDR_BM_TODO_TASK.DATA_CRT_TIME is '数据创建/导入时间'
/

comment on column GFDR_BM_TODO_TASK.DATA_CHG_USER is '数据修改/删除用户'
/

comment on column GFDR_BM_TODO_TASK.DATA_CHG_DATE is '数据修改/删除日期'
/

comment on column GFDR_BM_TODO_TASK.DATA_CHG_TIME is '数据修改/删除时间'
/

comment on column GFDR_BM_TODO_TASK.DATA_APV_USER is '数据审核/拒绝用户'
/

comment on column GFDR_BM_TODO_TASK.DATA_APV_DATE is '数据审核/拒绝日期'
/

comment on column GFDR_BM_TODO_TASK.DATA_APV_TIME is '数据审核/拒绝时间'
/

create table GFDR_BM_TODO_TASK_CFG
(
    DATA_ID          VARCHAR2(32) not null
        constraint GFDR_BM_TODO_TASK_CFG_PK
            primary key,
    DATA_DATE        CHAR(8),
    CORP_ID          VARCHAR2(14),
    ORG_ID           VARCHAR2(14),
    GROUP_ID         VARCHAR2(14),
    TASK_MODULE      VARCHAR2(256),
    TASK_ID          VARCHAR2(32),
    TASK_NAME        VARCHAR2(256),
    TASK_STATUS      VARCHAR2(32),
    TASK_TYPE        VARCHAR2(32),
    P_TASK_ID        VARCHAR2(32),
    REPORT_ORG_ID    VARCHAR2(256),
    OPERATION_ORG_ID VARCHAR2(256),
    BUSINESS_LINE    VARCHAR2(256),
    REPORT_CODE      VARCHAR2(32),
    REMARKS          VARCHAR2(512),
    NEXT_ACTION      CHAR(2),
    DATA_STATUS      CHAR(2),
    DATA_FLAG        CHAR,
    DATA_SOURCE      CHAR,
    CHECK_FLAG       CHAR,
    CHECK_DESC       VARCHAR2(512),
    CHECK_ERR_TYPE   CHAR,
    DATA_VERSION     NUMBER(8),
    DATA_REJ_DESC    VARCHAR2(128),
    DATA_DEL_DESC    VARCHAR2(128),
    DATA_CRT_USER    VARCHAR2(20),
    DATA_CRT_DATE    CHAR(8),
    DATA_CRT_TIME    CHAR(14),
    DATA_CHG_USER    VARCHAR2(20),
    DATA_CHG_DATE    CHAR(8),
    DATA_CHG_TIME    CHAR(14),
    DATA_APV_USER    VARCHAR2(20),
    DATA_APV_DATE    CHAR(8),
    DATA_APV_TIME    CHAR(14),
    RSV1             VARCHAR2(180),
    RSV2             VARCHAR2(180),
    RSV3             VARCHAR2(180),
    RSV4             VARCHAR2(180),
    RSV5             VARCHAR2(180)
)
/

comment on column GFDR_BM_TODO_TASK_CFG.DATA_ID is '数据ID'
/

comment on column GFDR_BM_TODO_TASK_CFG.DATA_DATE is '数据日期'
/

comment on column GFDR_BM_TODO_TASK_CFG.CORP_ID is '法人机构号'
/

comment on column GFDR_BM_TODO_TASK_CFG.ORG_ID is '分行机构号'
/

comment on column GFDR_BM_TODO_TASK_CFG.GROUP_ID is '部门编号'
/

comment on column GFDR_BM_TODO_TASK_CFG.TASK_MODULE is '任务模块'
/

comment on column GFDR_BM_TODO_TASK_CFG.TASK_ID is '任务ID'
/

comment on column GFDR_BM_TODO_TASK_CFG.TASK_NAME is '任务名称'
/

comment on column GFDR_BM_TODO_TASK_CFG.TASK_STATUS is '任务状态'
/

comment on column GFDR_BM_TODO_TASK_CFG.TASK_TYPE is '任务类型'
/

comment on column GFDR_BM_TODO_TASK_CFG.P_TASK_ID is '上级任务ID'
/

comment on column GFDR_BM_TODO_TASK_CFG.REPORT_ORG_ID is '上报机构'
/

comment on column GFDR_BM_TODO_TASK_CFG.OPERATION_ORG_ID is '操作机构'
/

comment on column GFDR_BM_TODO_TASK_CFG.BUSINESS_LINE is '业务条线'
/

comment on column GFDR_BM_TODO_TASK_CFG.REPORT_CODE is '报表编号'
/

comment on column GFDR_BM_TODO_TASK_CFG.REMARKS is '备注'
/

comment on column GFDR_BM_TODO_TASK_CFG.NEXT_ACTION is '下一动作'
/

comment on column GFDR_BM_TODO_TASK_CFG.DATA_STATUS is '数据状态'
/

comment on column GFDR_BM_TODO_TASK_CFG.DATA_FLAG is '数据是否已删除'
/

comment on column GFDR_BM_TODO_TASK_CFG.DATA_SOURCE is '数据来源'
/

comment on column GFDR_BM_TODO_TASK_CFG.CHECK_FLAG is '校验标识'
/

comment on column GFDR_BM_TODO_TASK_CFG.CHECK_DESC is '校验结果'
/

comment on column GFDR_BM_TODO_TASK_CFG.CHECK_ERR_TYPE is '校验失败类型'
/

comment on column GFDR_BM_TODO_TASK_CFG.DATA_VERSION is '数据版本号'
/

comment on column GFDR_BM_TODO_TASK_CFG.DATA_REJ_DESC is '数据审核拒绝描述'
/

comment on column GFDR_BM_TODO_TASK_CFG.DATA_DEL_DESC is '数据删除描述'
/

comment on column GFDR_BM_TODO_TASK_CFG.DATA_CRT_USER is '数据创建/导入用户'
/

comment on column GFDR_BM_TODO_TASK_CFG.DATA_CRT_DATE is '数据创建/导入日期'
/

comment on column GFDR_BM_TODO_TASK_CFG.DATA_CRT_TIME is '数据创建/导入时间'
/

comment on column GFDR_BM_TODO_TASK_CFG.DATA_CHG_USER is '数据修改/删除用户'
/

comment on column GFDR_BM_TODO_TASK_CFG.DATA_CHG_DATE is '数据修改/删除日期'
/

comment on column GFDR_BM_TODO_TASK_CFG.DATA_CHG_TIME is '数据修改/删除时间'
/

comment on column GFDR_BM_TODO_TASK_CFG.DATA_APV_USER is '数据审核/拒绝用户'
/

comment on column GFDR_BM_TODO_TASK_CFG.DATA_APV_DATE is '数据审核/拒绝日期'
/

comment on column GFDR_BM_TODO_TASK_CFG.DATA_APV_TIME is '数据审核/拒绝时间'
/

comment on column GFDR_BM_TODO_TASK_CFG.RSV1 is '备用1'
/

comment on column GFDR_BM_TODO_TASK_CFG.RSV2 is '备用2'
/

comment on column GFDR_BM_TODO_TASK_CFG.RSV3 is '备用3'
/

comment on column GFDR_BM_TODO_TASK_CFG.RSV4 is '备用4'
/

comment on column GFDR_BM_TODO_TASK_CFG.RSV5 is '备用5'
/

create index GFDR_BM_TODO_TASK_CFG_INDEX1
    on GFDR_BM_TODO_TASK_CFG (ORG_ID, GROUP_ID, REPORT_CODE)
/

create table GFDR_CK_ZB_DTL
(
    DATA_ID        VARCHAR2(64) not null
        constraint GFDR_CK_ZB_DTL_K
            primary key,
    DATA_DATE      CHAR(8),
    CORP_ID        VARCHAR2(14),
    ORG_ID         VARCHAR2(14),
    GROUP_ID       VARCHAR2(14),
    DATA_RPT_DATE  CHAR(8),
    JRJGDM         VARCHAR2(60),
    JKRHY          CHAR(3),
    DKCPLB         VARCHAR2(4),
    DKBZ           CHAR(3),
    DKJJYE_AMT     NUMBER(20, 2),
    DKJJZRMBYE_AMT NUMBER(20, 2),
    USD_AMT        NUMBER(20, 2),
    REMARKS        VARCHAR2(512),
    CHECK_FLAG     CHAR,
    CHECK_DESC     VARCHAR2(512),
    CHECK_ERR_TYPE CHAR,
    NEXT_ACTION    CHAR(2),
    DATA_STATUS    CHAR(2),
    DATA_FLAG      CHAR,
    DATA_SOURCE    CHAR,
    DATA_VERSION   NUMBER(8),
    DATA_REJ_DESC  VARCHAR2(128),
    DATA_DEL_DESC  VARCHAR2(128),
    DATA_CRT_USER  VARCHAR2(20),
    DATA_CRT_DATE  CHAR(8),
    DATA_CRT_TIME  CHAR(14),
    DATA_CHG_USER  VARCHAR2(20),
    DATA_CHG_DATE  CHAR(8),
    DATA_CHG_TIME  CHAR(14),
    DATA_APV_USER  VARCHAR2(20),
    DATA_APV_DATE  CHAR(8),
    DATA_APV_TIME  CHAR(14),
    RSV1           VARCHAR2(180),
    RSV2           VARCHAR2(180),
    RSV3           VARCHAR2(180),
    RSV4           VARCHAR2(180),
    RSV5           VARCHAR2(180),
    C_RSV1         VARCHAR2(180),
    C_RSV2         VARCHAR2(180),
    C_RSV3         VARCHAR2(180),
    C_RSV4         VARCHAR2(180),
    C_RSV5         VARCHAR2(180)
)
/

comment on table GFDR_CK_ZB_DTL is '指标校验明细表'
/

comment on column GFDR_CK_ZB_DTL.DATA_ID is '数据ID'
/

comment on column GFDR_CK_ZB_DTL.DATA_DATE is '数据日期'
/

comment on column GFDR_CK_ZB_DTL.CORP_ID is '法人机构号'
/

comment on column GFDR_CK_ZB_DTL.ORG_ID is '分行机构号'
/

comment on column GFDR_CK_ZB_DTL.GROUP_ID is '部门编号'
/

comment on column GFDR_CK_ZB_DTL.DATA_RPT_DATE is '报表日期'
/

comment on column GFDR_CK_ZB_DTL.JRJGDM is '金融机构代码'
/

comment on column GFDR_CK_ZB_DTL.JKRHY is '借款人行业'
/

comment on column GFDR_CK_ZB_DTL.DKCPLB is '贷款产品类别'
/

comment on column GFDR_CK_ZB_DTL.DKBZ is '贷款币种'
/

comment on column GFDR_CK_ZB_DTL.DKJJYE_AMT is '贷款借据余额'
/

comment on column GFDR_CK_ZB_DTL.DKJJZRMBYE_AMT is '贷款借据折人民币余额'
/

comment on column GFDR_CK_ZB_DTL.USD_AMT is '美元余额'
/

comment on column GFDR_CK_ZB_DTL.REMARKS is '备注'
/

comment on column GFDR_CK_ZB_DTL.CHECK_FLAG is '校验标识'
/

comment on column GFDR_CK_ZB_DTL.CHECK_DESC is '校验结果'
/

comment on column GFDR_CK_ZB_DTL.CHECK_ERR_TYPE is '校验失败类型'
/

comment on column GFDR_CK_ZB_DTL.NEXT_ACTION is '下一动作'
/

comment on column GFDR_CK_ZB_DTL.DATA_STATUS is '数据状态'
/

comment on column GFDR_CK_ZB_DTL.DATA_FLAG is '数据是否已删除'
/

comment on column GFDR_CK_ZB_DTL.DATA_SOURCE is '数据来源'
/

comment on column GFDR_CK_ZB_DTL.DATA_VERSION is '数据版本号'
/

comment on column GFDR_CK_ZB_DTL.DATA_REJ_DESC is '数据审核拒绝描述'
/

comment on column GFDR_CK_ZB_DTL.DATA_DEL_DESC is '数据删除描述'
/

comment on column GFDR_CK_ZB_DTL.DATA_CRT_USER is '数据创建/导入用户'
/

comment on column GFDR_CK_ZB_DTL.DATA_CRT_DATE is '数据创建/导入日期'
/

comment on column GFDR_CK_ZB_DTL.DATA_CRT_TIME is '数据创建/导入时间'
/

comment on column GFDR_CK_ZB_DTL.DATA_CHG_USER is '数据修改/删除用户'
/

comment on column GFDR_CK_ZB_DTL.DATA_CHG_DATE is '数据修改/删除日期'
/

comment on column GFDR_CK_ZB_DTL.DATA_CHG_TIME is '数据修改/删除时间'
/

comment on column GFDR_CK_ZB_DTL.DATA_APV_USER is '数据审核/拒绝用户'
/

comment on column GFDR_CK_ZB_DTL.DATA_APV_DATE is '数据审核/拒绝日期'
/

comment on column GFDR_CK_ZB_DTL.DATA_APV_TIME is '数据审核/拒绝时间'
/

create table GFDR_CK_ZB_HZ
(
    DATA_ID        VARCHAR2(64) not null
        constraint GFDR_CK_ZB_HZ_K
            primary key,
    DATA_DATE      CHAR(8),
    CORP_ID        VARCHAR2(14),
    ORG_ID         VARCHAR2(14),
    GROUP_ID       VARCHAR2(14),
    DATA_RPT_DATE  CHAR(8),
    JRJGDM         VARCHAR2(60),
    JKRHY          CHAR(3),
    DKCPLB         VARCHAR2(4),
    DKBZ           CHAR(3),
    DKJJYE_AMT     NUMBER(20, 2),
    DKJJZRMBYE_AMT NUMBER(20, 2),
    USD_AMT        NUMBER(20, 2),
    REMARKS        VARCHAR2(512),
    CHECK_FLAG     CHAR,
    CHECK_DESC     VARCHAR2(512),
    CHECK_ERR_TYPE CHAR,
    NEXT_ACTION    CHAR(2),
    DATA_STATUS    CHAR(2),
    DATA_FLAG      CHAR,
    DATA_SOURCE    CHAR,
    DATA_VERSION   NUMBER(8),
    DATA_REJ_DESC  VARCHAR2(128),
    DATA_DEL_DESC  VARCHAR2(128),
    DATA_CRT_USER  VARCHAR2(20),
    DATA_CRT_DATE  CHAR(8),
    DATA_CRT_TIME  CHAR(14),
    DATA_CHG_USER  VARCHAR2(20),
    DATA_CHG_DATE  CHAR(8),
    DATA_CHG_TIME  CHAR(14),
    DATA_APV_USER  VARCHAR2(20),
    DATA_APV_DATE  CHAR(8),
    DATA_APV_TIME  CHAR(14),
    RSV1           VARCHAR2(180),
    RSV2           VARCHAR2(180),
    RSV3           VARCHAR2(180),
    RSV4           VARCHAR2(180),
    RSV5           VARCHAR2(180),
    C_RSV1         VARCHAR2(180),
    C_RSV2         VARCHAR2(180),
    C_RSV3         VARCHAR2(180),
    C_RSV4         VARCHAR2(180),
    C_RSV5         VARCHAR2(180)
)
/

comment on table GFDR_CK_ZB_HZ is '指标校验最终表'
/

comment on column GFDR_CK_ZB_HZ.DATA_ID is '数据ID'
/

comment on column GFDR_CK_ZB_HZ.DATA_DATE is '数据日期'
/

comment on column GFDR_CK_ZB_HZ.CORP_ID is '法人机构号'
/

comment on column GFDR_CK_ZB_HZ.ORG_ID is '分行机构号'
/

comment on column GFDR_CK_ZB_HZ.GROUP_ID is '部门编号'
/

comment on column GFDR_CK_ZB_HZ.DATA_RPT_DATE is '报表日期'
/

comment on column GFDR_CK_ZB_HZ.JRJGDM is '金融机构代码'
/

comment on column GFDR_CK_ZB_HZ.JKRHY is '借款人行业'
/

comment on column GFDR_CK_ZB_HZ.DKCPLB is '贷款产品类别'
/

comment on column GFDR_CK_ZB_HZ.DKBZ is '贷款币种'
/

comment on column GFDR_CK_ZB_HZ.DKJJYE_AMT is '贷款借据余额'
/

comment on column GFDR_CK_ZB_HZ.DKJJZRMBYE_AMT is '贷款借据折人民币余额'
/

comment on column GFDR_CK_ZB_HZ.USD_AMT is '美元余额'
/

comment on column GFDR_CK_ZB_HZ.REMARKS is '备注'
/

comment on column GFDR_CK_ZB_HZ.CHECK_FLAG is '校验标识'
/

comment on column GFDR_CK_ZB_HZ.CHECK_DESC is '校验结果'
/

comment on column GFDR_CK_ZB_HZ.CHECK_ERR_TYPE is '校验失败类型'
/

comment on column GFDR_CK_ZB_HZ.NEXT_ACTION is '下一动作'
/

comment on column GFDR_CK_ZB_HZ.DATA_STATUS is '数据状态'
/

comment on column GFDR_CK_ZB_HZ.DATA_FLAG is '数据是否已删除'
/

comment on column GFDR_CK_ZB_HZ.DATA_SOURCE is '数据来源'
/

comment on column GFDR_CK_ZB_HZ.DATA_VERSION is '数据版本号'
/

comment on column GFDR_CK_ZB_HZ.DATA_REJ_DESC is '数据审核拒绝描述'
/

comment on column GFDR_CK_ZB_HZ.DATA_DEL_DESC is '数据删除描述'
/

comment on column GFDR_CK_ZB_HZ.DATA_CRT_USER is '数据创建/导入用户'
/

comment on column GFDR_CK_ZB_HZ.DATA_CRT_DATE is '数据创建/导入日期'
/

comment on column GFDR_CK_ZB_HZ.DATA_CRT_TIME is '数据创建/导入时间'
/

comment on column GFDR_CK_ZB_HZ.DATA_CHG_USER is '数据修改/删除用户'
/

comment on column GFDR_CK_ZB_HZ.DATA_CHG_DATE is '数据修改/删除日期'
/

comment on column GFDR_CK_ZB_HZ.DATA_CHG_TIME is '数据修改/删除时间'
/

comment on column GFDR_CK_ZB_HZ.DATA_APV_USER is '数据审核/拒绝用户'
/

comment on column GFDR_CK_ZB_HZ.DATA_APV_DATE is '数据审核/拒绝日期'
/

comment on column GFDR_CK_ZB_HZ.DATA_APV_TIME is '数据审核/拒绝时间'
/

create table GFDR_CK_ZB_RESULT
(
    DATA_ID        VARCHAR2(64) not null
        constraint GFDR_CK_ZB_RESULT_K
            primary key,
    DATA_DATE      CHAR(8),
    CORP_ID        VARCHAR2(14),
    ORG_ID         VARCHAR2(14),
    GROUP_ID       VARCHAR2(14),
    DATA_RPT_DATE  CHAR(8),
    JRJGDM         VARCHAR2(60),
    JKRHY          CHAR(3),
    DKCPLB         VARCHAR2(4),
    DKBZ           CHAR(3),
    DKJJYE_AMT     NUMBER(20, 2),
    DKJJZRMBYE_AMT NUMBER(20, 2),
    ZBBH           VARCHAR2(128),
    ZBMC           VARCHAR2(128),
    YE_AMT         NUMBER(20, 2),
    CK_AMT         NUMBER(20, 2),
    CK_PER         NUMBER(8, 4),
    REMARKS        VARCHAR2(512),
    CHECK_FLAG     CHAR,
    CHECK_DESC     VARCHAR2(512),
    CHECK_ERR_TYPE CHAR,
    NEXT_ACTION    CHAR(2),
    DATA_STATUS    CHAR(2),
    DATA_FLAG      CHAR,
    DATA_SOURCE    CHAR,
    DATA_VERSION   NUMBER(8),
    DATA_REJ_DESC  VARCHAR2(128),
    DATA_DEL_DESC  VARCHAR2(128),
    DATA_CRT_USER  VARCHAR2(20),
    DATA_CRT_DATE  CHAR(8),
    DATA_CRT_TIME  CHAR(14),
    DATA_CHG_USER  VARCHAR2(20),
    DATA_CHG_DATE  CHAR(8),
    DATA_CHG_TIME  CHAR(14),
    DATA_APV_USER  VARCHAR2(20),
    DATA_APV_DATE  CHAR(8),
    DATA_APV_TIME  CHAR(14),
    RSV1           VARCHAR2(180),
    RSV2           VARCHAR2(180),
    RSV3           VARCHAR2(180),
    RSV4           VARCHAR2(180),
    RSV5           VARCHAR2(180),
    C_RSV1         VARCHAR2(180),
    C_RSV2         VARCHAR2(180),
    C_RSV3         VARCHAR2(180),
    C_RSV4         VARCHAR2(180),
    C_RSV5         VARCHAR2(180)
)
/

comment on table GFDR_CK_ZB_RESULT is '指标校验结果表'
/

comment on column GFDR_CK_ZB_RESULT.DATA_ID is '数据ID'
/

comment on column GFDR_CK_ZB_RESULT.DATA_DATE is '数据日期'
/

comment on column GFDR_CK_ZB_RESULT.CORP_ID is '法人机构号'
/

comment on column GFDR_CK_ZB_RESULT.ORG_ID is '分行机构号'
/

comment on column GFDR_CK_ZB_RESULT.GROUP_ID is '部门编号'
/

comment on column GFDR_CK_ZB_RESULT.DATA_RPT_DATE is '报表日期'
/

comment on column GFDR_CK_ZB_RESULT.JRJGDM is '金融机构代码'
/

comment on column GFDR_CK_ZB_RESULT.JKRHY is '借款人行业'
/

comment on column GFDR_CK_ZB_RESULT.DKCPLB is '贷款产品类别'
/

comment on column GFDR_CK_ZB_RESULT.DKBZ is '贷款币种'
/

comment on column GFDR_CK_ZB_RESULT.DKJJYE_AMT is '贷款借据余额'
/

comment on column GFDR_CK_ZB_RESULT.DKJJZRMBYE_AMT is '贷款借据折人民币余额'
/

comment on column GFDR_CK_ZB_RESULT.ZBBH is '指标编号'
/

comment on column GFDR_CK_ZB_RESULT.ZBMC is '指标名称'
/

comment on column GFDR_CK_ZB_RESULT.YE_AMT is '余额'
/

comment on column GFDR_CK_ZB_RESULT.CK_AMT is '差额'
/

comment on column GFDR_CK_ZB_RESULT.CK_PER is '偏差比例'
/

comment on column GFDR_CK_ZB_RESULT.REMARKS is '备注'
/

comment on column GFDR_CK_ZB_RESULT.CHECK_FLAG is '校验标识'
/

comment on column GFDR_CK_ZB_RESULT.CHECK_DESC is '校验结果'
/

comment on column GFDR_CK_ZB_RESULT.CHECK_ERR_TYPE is '校验失败类型'
/

comment on column GFDR_CK_ZB_RESULT.NEXT_ACTION is '下一动作'
/

comment on column GFDR_CK_ZB_RESULT.DATA_STATUS is '数据状态'
/

comment on column GFDR_CK_ZB_RESULT.DATA_FLAG is '数据是否已删除'
/

comment on column GFDR_CK_ZB_RESULT.DATA_SOURCE is '数据来源'
/

comment on column GFDR_CK_ZB_RESULT.DATA_VERSION is '数据版本号'
/

comment on column GFDR_CK_ZB_RESULT.DATA_REJ_DESC is '数据审核拒绝描述'
/

comment on column GFDR_CK_ZB_RESULT.DATA_DEL_DESC is '数据删除描述'
/

comment on column GFDR_CK_ZB_RESULT.DATA_CRT_USER is '数据创建/导入用户'
/

comment on column GFDR_CK_ZB_RESULT.DATA_CRT_DATE is '数据创建/导入日期'
/

comment on column GFDR_CK_ZB_RESULT.DATA_CRT_TIME is '数据创建/导入时间'
/

comment on column GFDR_CK_ZB_RESULT.DATA_CHG_USER is '数据修改/删除用户'
/

comment on column GFDR_CK_ZB_RESULT.DATA_CHG_DATE is '数据修改/删除日期'
/

comment on column GFDR_CK_ZB_RESULT.DATA_CHG_TIME is '数据修改/删除时间'
/

comment on column GFDR_CK_ZB_RESULT.DATA_APV_USER is '数据审核/拒绝用户'
/

comment on column GFDR_CK_ZB_RESULT.DATA_APV_DATE is '数据审核/拒绝日期'
/

comment on column GFDR_CK_ZB_RESULT.DATA_APV_TIME is '数据审核/拒绝时间'
/

create table GFDR_ITF_CLDWDK
(
    DATA_ID        VARCHAR2(64) not null,
    DATA_DATE      VARCHAR2(10),
    DATA_RPT_DATE  VARCHAR2(10),
    CORP_ID        VARCHAR2(14),
    ORG_ID         VARCHAR2(14),
    GROUP_ID       VARCHAR2(14),
    INQ_ORG_ID     VARCHAR2(32),
    INQ_GROUP_ID   VARCHAR2(32),
    JRJGDM         VARCHAR2(18),
    NBJGH          VARCHAR2(30),
    JRJGDQDM       CHAR(6),
    JKRZJLX        CHAR(3),
    JKRZJDM        VARCHAR2(60),
    JKRGMJJBM      CHAR(3),
    JKRHY          CHAR(3),
    JKRDQDM        CHAR(6),
    JKRJJCF        VARCHAR2(5),
    JKRQYGM        CHAR(4),
    DKJJBM         VARCHAR2(100),
    DKHTBM         VARCHAR2(100),
    DKCPLB         VARCHAR2(6),
    DKSJTX         CHAR(4),
    DKFFRQ_DATE    VARCHAR2(10),
    DKDQRQ_DATE    VARCHAR2(10),
    DKZQDQRQ_DATE  VARCHAR2(10),
    BZ             CHAR(3),
    DKYE_AMT       NUMBER(20, 2),
    DKYEZRMBYE_AMT NUMBER(20, 2),
    LLSFGD         CHAR(4),
    LLSP           NUMBER(10, 5),
    DKDJJZLX       CHAR(4),
    JZLL           NUMBER(10, 5),
    DKCZFCFS       VARCHAR2(5),
    DKLLZXDJR_DATE VARCHAR2(10),
    DKDBFS         VARCHAR2(3),
    SFSCDK         CHAR,
    DKZL           CHAR(4),
    DKZT           CHAR(4),
    YQLX           CHAR(2),
    DKYT           VARCHAR2(1000),
    REMARKS        VARCHAR2(14),
    CHECK_FLAG     CHAR,
    CHECK_DESC     VARCHAR2(3072),
    CHECK_ERR_TYPE CHAR,
    NEXT_ACTION    CHAR(2),
    DATA_STATUS    CHAR(2),
    DATA_FLAG      CHAR,
    DATA_SOURCE    CHAR,
    DATA_VERSION   NUMBER(8),
    DATA_REJ_DESC  VARCHAR2(128),
    DATA_DEL_DESC  VARCHAR2(128),
    DATA_CRT_USER  VARCHAR2(20),
    DATA_CRT_DATE  VARCHAR2(10),
    DATA_CRT_TIME  CHAR(14),
    DATA_CHG_USER  VARCHAR2(20),
    DATA_CHG_DATE  VARCHAR2(10),
    DATA_CHG_TIME  CHAR(14),
    DATA_APV_USER  VARCHAR2(20),
    DATA_APV_DATE  VARCHAR2(10),
    DATA_APV_TIME  CHAR(14),
    RSV1           VARCHAR2(180),
    RSV2           VARCHAR2(180),
    RSV3           VARCHAR2(180),
    RSV4           VARCHAR2(180),
    RSV5           VARCHAR2(180)
)
/

create table GFDR_ITF_DBHTXX
(
    DATA_ID        VARCHAR2(64) not null,
    DATA_DATE      VARCHAR2(10),
    DATA_RPT_DATE  VARCHAR2(10),
    CORP_ID        VARCHAR2(14),
    ORG_ID         VARCHAR2(14),
    GROUP_ID       VARCHAR2(14),
    INQ_ORG_ID     VARCHAR2(32),
    INQ_GROUP_ID   VARCHAR2(32),
    JRJGDM         VARCHAR2(18),
    NBJGH          VARCHAR2(30),
    DBHTBM         VARCHAR2(100),
    BDBHTBM        VARCHAR2(100),
    DBHTLX         CHAR(2),
    JYLX           VARCHAR2(60),
    DBHTQSRQ_DATE  VARCHAR2(10),
    DBHTDQRQ_DATE  VARCHAR2(10),
    BZ             CHAR(3),
    DBHTJE         NUMBER(20, 2),
    DBHTJEZRMB_AMT NUMBER(20, 2),
    DZYL           NUMBER(10, 2),
    DBRZJLX        CHAR(3),
    DBRZJDM        VARCHAR2(60),
    DBRGMJJBM      CHAR(3),
    DBRHY          CHAR(3),
    DBRDQDM        CHAR(6),
    DBRQYGM        CHAR(4),
    REMARKS        VARCHAR2(14),
    CHECK_FLAG     CHAR,
    CHECK_DESC     VARCHAR2(3072),
    CHECK_ERR_TYPE CHAR,
    NEXT_ACTION    CHAR(2),
    DATA_STATUS    CHAR(2),
    DATA_FLAG      CHAR,
    DATA_SOURCE    CHAR,
    DATA_VERSION   NUMBER(8),
    DATA_REJ_DESC  VARCHAR2(128),
    DATA_DEL_DESC  VARCHAR2(128),
    DATA_CRT_USER  VARCHAR2(20),
    DATA_CRT_DATE  VARCHAR2(10),
    DATA_CRT_TIME  CHAR(14),
    DATA_CHG_USER  VARCHAR2(20),
    DATA_CHG_DATE  VARCHAR2(10),
    DATA_CHG_TIME  CHAR(14),
    DATA_APV_USER  VARCHAR2(20),
    DATA_APV_DATE  VARCHAR2(10),
    DATA_APV_TIME  CHAR(14),
    RSV1           VARCHAR2(180),
    RSV2           VARCHAR2(180),
    RSV3           VARCHAR2(180),
    RSV4           VARCHAR2(180),
    RSV5           VARCHAR2(180)
)
/

create table GFDR_ITF_DBWXX
(
    DATA_ID        VARCHAR2(64) not null,
    DATA_DATE      VARCHAR2(10),
    DATA_RPT_DATE  VARCHAR2(10),
    CORP_ID        VARCHAR2(14),
    ORG_ID         VARCHAR2(14),
    GROUP_ID       VARCHAR2(14),
    INQ_ORG_ID     VARCHAR2(32),
    INQ_GROUP_ID   VARCHAR2(32),
    JRJGDM         VARCHAR2(18),
    NBJGH          VARCHAR2(30),
    DBHTBM         VARCHAR2(100),
    BDBHTBM        VARCHAR2(100),
    DBWBM          VARCHAR2(100),
    DBWLB          CHAR(3),
    QZBH           VARCHAR2(500),
    SFDYSW         CHAR,
    PGFS           CHAR(3),
    PGFF           CHAR(2),
    PGJZ           NUMBER(20, 2),
    PGJZR_DATE     VARCHAR2(10),
    DBWPMJZ_AMT    NUMBER(20, 2),
    YXSCQSE_AMT    NUMBER(20, 2),
    GZZQ           CHAR(2),
    REMARKS        VARCHAR2(14),
    CHECK_FLAG     CHAR,
    CHECK_DESC     VARCHAR2(3072),
    CHECK_ERR_TYPE CHAR,
    NEXT_ACTION    CHAR(2),
    DATA_STATUS    CHAR(2),
    DATA_FLAG      CHAR,
    DATA_SOURCE    CHAR,
    DATA_VERSION   NUMBER(8),
    DATA_REJ_DESC  VARCHAR2(128),
    DATA_DEL_DESC  VARCHAR2(128),
    DATA_CRT_USER  VARCHAR2(20),
    DATA_CRT_DATE  VARCHAR2(10),
    DATA_CRT_TIME  CHAR(14),
    DATA_CHG_USER  VARCHAR2(20),
    DATA_CHG_DATE  VARCHAR2(10),
    DATA_CHG_TIME  CHAR(14),
    DATA_APV_USER  VARCHAR2(20),
    DATA_APV_DATE  VARCHAR2(10),
    DATA_APV_TIME  CHAR(14),
    RSV1           VARCHAR2(180),
    RSV2           VARCHAR2(180),
    RSV3           VARCHAR2(180),
    RSV4           VARCHAR2(180),
    RSV5           VARCHAR2(180)
)
/

create table GFDR_ITF_DWDKFS
(
    DATA_ID        VARCHAR2(64) not null,
    DATA_DATE      VARCHAR2(10),
    DATA_RPT_DATE  VARCHAR2(10),
    CORP_ID        VARCHAR2(14),
    ORG_ID         VARCHAR2(14),
    GROUP_ID       VARCHAR2(14),
    INQ_ORG_ID     VARCHAR2(32),
    INQ_GROUP_ID   VARCHAR2(32),
    JRJGDM         VARCHAR2(18),
    NBJGH          VARCHAR2(30),
    JRJGDQDM       CHAR(6),
    JKRZJLX        CHAR(3),
    JKRZJDM        VARCHAR2(60),
    JKRGMJJBM      CHAR(3),
    JKRHY          CHAR(3),
    JKRDQDM        CHAR(6),
    JKRJJCF        VARCHAR2(5),
    JKRQYGM        CHAR(4),
    DKJJBM         VARCHAR2(100),
    DKHTBM         VARCHAR2(100),
    DKCPLB         VARCHAR2(6),
    DKSJTX         CHAR(4),
    DKFFRQ_DATE    VARCHAR2(10),
    DKDQRQ_DATE    VARCHAR2(10),
    DKSJZZRQ_DATE  VARCHAR2(10),
    BZ             CHAR(3),
    DKFSJE_AMT     NUMBER(20, 2),
    DKFSJEZRMB_AMT NUMBER(20, 2),
    LLSFGD         CHAR(4),
    LLSP           NUMBER(10, 5),
    DKDJJZLX       CHAR(4),
    JZLL           NUMBER(10, 5),
    DKCZFCFS       VARCHAR2(5),
    DKLLZXDJR_DATE VARCHAR2(10),
    DKDBFS         VARCHAR2(3),
    SFSCDK         CHAR,
    DKZT           CHAR(4),
    ZCZQHCPDM      VARCHAR2(400),
    DKCZFS         CHAR(2),
    FFSHBS         CHAR,
    JYLSH          VARCHAR2(60),
    DKYT           VARCHAR2(1000),
    REMARKS        VARCHAR2(14),
    CHECK_FLAG     CHAR,
    CHECK_DESC     VARCHAR2(3072),
    CHECK_ERR_TYPE CHAR,
    NEXT_ACTION    CHAR(2),
    DATA_STATUS    CHAR(2),
    DATA_FLAG      CHAR,
    DATA_SOURCE    CHAR,
    DATA_VERSION   NUMBER(8),
    DATA_REJ_DESC  VARCHAR2(128),
    DATA_DEL_DESC  VARCHAR2(128),
    DATA_CRT_USER  VARCHAR2(20),
    DATA_CRT_DATE  VARCHAR2(10),
    DATA_CRT_TIME  CHAR(14),
    DATA_CHG_USER  VARCHAR2(20),
    DATA_CHG_DATE  VARCHAR2(10),
    DATA_CHG_TIME  CHAR(14),
    DATA_APV_USER  VARCHAR2(20),
    DATA_APV_DATE  VARCHAR2(10),
    DATA_APV_TIME  CHAR(14),
    RSV1           VARCHAR2(180),
    RSV2           VARCHAR2(180),
    RSV3           VARCHAR2(180),
    RSV4           VARCHAR2(180),
    RSV5           VARCHAR2(180)
)
/

create table GFDR_ITF_FTYKHX
(
    DATA_ID         VARCHAR2(64) not null,
    DATA_DATE       VARCHAR2(10),
    DATA_RPT_DATE   VARCHAR2(10),
    CORP_ID         VARCHAR2(14),
    ORG_ID          VARCHAR2(14),
    GROUP_ID        VARCHAR2(14),
    INQ_ORG_ID      VARCHAR2(32),
    INQ_GROUP_ID    VARCHAR2(32),
    JRJGDM          VARCHAR2(18),
    KHMC            VARCHAR2(200),
    KHZJLX          CHAR(3),
    KHZJDM          VARCHAR2(60),
    JBCKZH          VARCHAR2(60),
    JBZHKHHMC       VARCHAR2(200),
    JYFW            VARCHAR2(1000),
    ZCZB            NUMBER(20, 2),
    SSZB            NUMBER(20, 2),
    ZZC_AMT         NUMBER(20, 2),
    YYSR            NUMBER(20, 2),
    CYRYS           NUMBER(10),
    SFSSGS          CHAR,
    SCJLXDGXRQ_DATE VARCHAR2(10),
    ZCDZ            VARCHAR2(400),
    DQDM            CHAR(6),
    JYZT            CHAR(2),
    CLRQ_DATE       VARCHAR2(10),
    SSHY            CHAR(3),
    QYGM            CHAR(4),
    KHJJCF          VARCHAR2(5),
    KHGMJJBM        CHAR(3),
    SXED_AMT        NUMBER(20, 2),
    YYED_AMT        NUMBER(20, 2),
    SFGLF           CHAR,
    SJKZRZJLX       VARCHAR2(60),
    SJKZRZJDM       VARCHAR2(400),
    KHXYJBZDJS      NUMBER(3),
    KHXYPJ          NUMBER(3),
    REMARKS         VARCHAR2(14),
    CHECK_FLAG      CHAR,
    CHECK_DESC      VARCHAR2(3072),
    CHECK_ERR_TYPE  CHAR,
    NEXT_ACTION     CHAR(2),
    DATA_STATUS     CHAR(2),
    DATA_FLAG       CHAR,
    DATA_SOURCE     CHAR,
    DATA_VERSION    NUMBER(8),
    DATA_REJ_DESC   VARCHAR2(128),
    DATA_DEL_DESC   VARCHAR2(128),
    DATA_CRT_USER   VARCHAR2(20),
    DATA_CRT_DATE   VARCHAR2(10),
    DATA_CRT_TIME   CHAR(14),
    DATA_CHG_USER   VARCHAR2(20),
    DATA_CHG_DATE   VARCHAR2(10),
    DATA_CHG_TIME   CHAR(14),
    DATA_APV_USER   VARCHAR2(20),
    DATA_APV_DATE   VARCHAR2(10),
    DATA_APV_TIME   CHAR(14),
    RSV1            VARCHAR2(180),
    RSV2            VARCHAR2(180),
    RSV3            VARCHAR2(180),
    RSV4            VARCHAR2(180),
    RSV5            VARCHAR2(180)
)
/

create table GFDR_ITF_JRJGFR
(
    DATA_ID        VARCHAR2(64) not null,
    DATA_DATE      VARCHAR2(10),
    DATA_RPT_DATE  VARCHAR2(10),
    CORP_ID        VARCHAR2(14),
    ORG_ID         VARCHAR2(14),
    GROUP_ID       VARCHAR2(14),
    INQ_ORG_ID     VARCHAR2(32),
    INQ_GROUP_ID   VARCHAR2(32),
    JRJGDM         VARCHAR2(60),
    JCXXLX         VARCHAR2(128),
    ZBBM           CHAR(8),
    ZBMC           VARCHAR2(128),
    ZBZ            VARCHAR2(512),
    REMARKS        VARCHAR2(14),
    CHECK_FLAG     CHAR,
    CHECK_DESC     VARCHAR2(3072),
    CHECK_ERR_TYPE CHAR,
    NEXT_ACTION    CHAR(2),
    DATA_STATUS    CHAR(2),
    DATA_FLAG      CHAR,
    DATA_SOURCE    CHAR,
    DATA_VERSION   NUMBER(8),
    DATA_REJ_DESC  VARCHAR2(128),
    DATA_DEL_DESC  VARCHAR2(128),
    DATA_CRT_USER  VARCHAR2(20),
    DATA_CRT_DATE  VARCHAR2(10),
    DATA_CRT_TIME  CHAR(14),
    DATA_CHG_USER  VARCHAR2(20),
    DATA_CHG_DATE  VARCHAR2(10),
    DATA_CHG_TIME  CHAR(14),
    DATA_APV_USER  VARCHAR2(20),
    DATA_APV_DATE  VARCHAR2(10),
    DATA_APV_TIME  CHAR(14),
    RSV1           VARCHAR2(180),
    RSV2           VARCHAR2(180),
    RSV3           VARCHAR2(180),
    RSV4           VARCHAR2(180),
    RSV5           VARCHAR2(180)
)
/

create table GFDR_ITF_JRJGFZ
(
    DATA_ID        VARCHAR2(64) not null,
    DATA_DATE      VARCHAR2(10),
    DATA_RPT_DATE  VARCHAR2(10),
    CORP_ID        VARCHAR2(14),
    ORG_ID         VARCHAR2(14),
    GROUP_ID       VARCHAR2(14),
    INQ_ORG_ID     VARCHAR2(32),
    INQ_GROUP_ID   VARCHAR2(32),
    JRJGMC         VARCHAR2(200),
    JRJGDM         VARCHAR2(18),
    JRJGBM         CHAR(14),
    NBJGH          VARCHAR2(30),
    XKZH           VARCHAR2(30),
    ZFHH           VARCHAR2(30),
    JGJB           CHAR(2),
    ZSSJGLJGMC     VARCHAR2(200),
    ZSSJGLJGJRJGBM CHAR(14),
    ZSSJGLJGNBJGH  VARCHAR2(30),
    ZCDZ           VARCHAR2(400),
    DQDM           CHAR(6),
    CLSJ_DATE      VARCHAR2(10),
    YYZT           CHAR(2),
    REMARKS        VARCHAR2(14),
    CHECK_FLAG     CHAR,
    CHECK_DESC     VARCHAR2(3072),
    CHECK_ERR_TYPE CHAR,
    NEXT_ACTION    CHAR(2),
    DATA_STATUS    CHAR(2),
    DATA_FLAG      CHAR,
    DATA_SOURCE    CHAR,
    DATA_VERSION   NUMBER(8),
    DATA_REJ_DESC  VARCHAR2(128),
    DATA_DEL_DESC  VARCHAR2(128),
    DATA_CRT_USER  VARCHAR2(20),
    DATA_CRT_DATE  VARCHAR2(10),
    DATA_CRT_TIME  CHAR(14),
    DATA_CHG_USER  VARCHAR2(20),
    DATA_CHG_DATE  VARCHAR2(10),
    DATA_CHG_TIME  CHAR(14),
    DATA_APV_USER  VARCHAR2(20),
    DATA_APV_DATE  VARCHAR2(10),
    DATA_APV_TIME  CHAR(14),
    RSV1           VARCHAR2(180),
    RSV2           VARCHAR2(180),
    RSV3           VARCHAR2(180),
    RSV4           VARCHAR2(180),
    RSV5           VARCHAR2(180)
)
/

create table GFDR_PM_A1411
(
    DATA_ID        VARCHAR2(64) not null
        primary key,
    DATA_DATE      CHAR(8),
    DATA_RPT_DATE  CHAR(8),
    CORP_ID        VARCHAR2(14),
    ORG_ID         VARCHAR2(14),
    GROUP_ID       VARCHAR2(14),
    INQ_ORG_ID     VARCHAR2(32),
    INQ_GROUP_ID   VARCHAR2(32),
    JRJGDM         VARCHAR2(60),
    ZBBH           CHAR(5),
    ZBMC           VARCHAR2(128),
    YE_AMT         NUMBER(20, 2),
    REMARKS        VARCHAR2(14),
    CHECK_FLAG     CHAR,
    CHECK_DESC     VARCHAR2(3072),
    CHECK_ERR_TYPE CHAR,
    NEXT_ACTION    CHAR(2),
    DATA_STATUS    CHAR(2),
    DATA_FLAG      CHAR,
    DATA_SOURCE    CHAR,
    DATA_VERSION   NUMBER(8),
    DATA_REJ_DESC  VARCHAR2(128),
    DATA_DEL_DESC  VARCHAR2(128),
    DATA_CRT_USER  VARCHAR2(20),
    DATA_CRT_DATE  CHAR(8),
    DATA_CRT_TIME  CHAR(14),
    DATA_CHG_USER  VARCHAR2(20),
    DATA_CHG_DATE  CHAR(8),
    DATA_CHG_TIME  CHAR(14),
    DATA_APV_USER  VARCHAR2(20),
    DATA_APV_DATE  CHAR(8),
    DATA_APV_TIME  CHAR(14),
    RSV1           VARCHAR2(180),
    RSV2           VARCHAR2(180),
    RSV3           VARCHAR2(180),
    RSV4           VARCHAR2(180),
    RSV5           VARCHAR2(180)
)
/

comment on table GFDR_PM_A1411 is 'A1411资产负债项目月报表'
/

comment on column GFDR_PM_A1411.DATA_ID is '数据ID'
/

comment on column GFDR_PM_A1411.DATA_DATE is '数据日期'
/

comment on column GFDR_PM_A1411.DATA_RPT_DATE is '报表日期'
/

comment on column GFDR_PM_A1411.CORP_ID is '法人机构号'
/

comment on column GFDR_PM_A1411.ORG_ID is '机构号'
/

comment on column GFDR_PM_A1411.GROUP_ID is '部门编号'
/

comment on column GFDR_PM_A1411.INQ_ORG_ID is '查询机构号'
/

comment on column GFDR_PM_A1411.INQ_GROUP_ID is '查询组号'
/

comment on column GFDR_PM_A1411.JRJGDM is '金融机构代码'
/

comment on column GFDR_PM_A1411.ZBBH is '指标编号'
/

comment on column GFDR_PM_A1411.ZBMC is '指标名称'
/

comment on column GFDR_PM_A1411.YE_AMT is '余额'
/

comment on column GFDR_PM_A1411.REMARKS is '备注'
/

comment on column GFDR_PM_A1411.CHECK_FLAG is '校验标识'
/

comment on column GFDR_PM_A1411.CHECK_DESC is '校验结果'
/

comment on column GFDR_PM_A1411.CHECK_ERR_TYPE is '校验失败类型'
/

comment on column GFDR_PM_A1411.NEXT_ACTION is '下一动作'
/

comment on column GFDR_PM_A1411.DATA_STATUS is '数据状态'
/

comment on column GFDR_PM_A1411.DATA_FLAG is '数据是否已删除'
/

comment on column GFDR_PM_A1411.DATA_SOURCE is '数据来源'
/

comment on column GFDR_PM_A1411.DATA_VERSION is '数据版本'
/

comment on column GFDR_PM_A1411.DATA_REJ_DESC is '数据审核拒绝原因'
/

comment on column GFDR_PM_A1411.DATA_DEL_DESC is '数据删除描述'
/

comment on column GFDR_PM_A1411.DATA_CRT_USER is '数据创建/导入用户'
/

comment on column GFDR_PM_A1411.DATA_CRT_DATE is '数据创建/导入日期'
/

comment on column GFDR_PM_A1411.DATA_CRT_TIME is '数据创建/导入时间'
/

comment on column GFDR_PM_A1411.DATA_CHG_USER is '数据修改/删除用户'
/

comment on column GFDR_PM_A1411.DATA_CHG_DATE is '数据修改/删除日期'
/

comment on column GFDR_PM_A1411.DATA_CHG_TIME is '数据修改/删除时间'
/

comment on column GFDR_PM_A1411.DATA_APV_USER is '数据审核/拒绝用户'
/

comment on column GFDR_PM_A1411.DATA_APV_DATE is '数据审核/拒绝日期'
/

comment on column GFDR_PM_A1411.DATA_APV_TIME is '数据审核/拒绝时间'
/

comment on column GFDR_PM_A1411.RSV1 is '备用1'
/

comment on column GFDR_PM_A1411.RSV2 is '备用2'
/

comment on column GFDR_PM_A1411.RSV3 is '备用3'
/

comment on column GFDR_PM_A1411.RSV4 is '备用4'
/

comment on column GFDR_PM_A1411.RSV5 is '备用5'
/

create unique index U_A1411
    on GFDR_PM_A1411 (DATA_RPT_DATE, JRJGDM, ZBBH)
/

create table GFDR_PM_A2411
(
    DATA_ID        VARCHAR2(64) not null
        primary key,
    DATA_DATE      CHAR(8),
    DATA_RPT_DATE  CHAR(8),
    CORP_ID        VARCHAR2(14),
    ORG_ID         VARCHAR2(14),
    GROUP_ID       VARCHAR2(14),
    INQ_ORG_ID     VARCHAR2(32),
    INQ_GROUP_ID   VARCHAR2(32),
    JRJGDM         VARCHAR2(60),
    ZBBH           CHAR(5),
    ZBMC           VARCHAR2(128),
    YE_AMT         NUMBER(20, 2),
    REMARKS        VARCHAR2(14),
    CHECK_FLAG     CHAR,
    CHECK_DESC     VARCHAR2(3072),
    CHECK_ERR_TYPE CHAR,
    NEXT_ACTION    CHAR(2),
    DATA_STATUS    CHAR(2),
    DATA_FLAG      CHAR,
    DATA_SOURCE    CHAR,
    DATA_VERSION   NUMBER(8),
    DATA_REJ_DESC  VARCHAR2(128),
    DATA_DEL_DESC  VARCHAR2(128),
    DATA_CRT_USER  VARCHAR2(20),
    DATA_CRT_DATE  CHAR(8),
    DATA_CRT_TIME  CHAR(14),
    DATA_CHG_USER  VARCHAR2(20),
    DATA_CHG_DATE  CHAR(8),
    DATA_CHG_TIME  CHAR(14),
    DATA_APV_USER  VARCHAR2(20),
    DATA_APV_DATE  CHAR(8),
    DATA_APV_TIME  CHAR(14),
    RSV1           VARCHAR2(180),
    RSV2           VARCHAR2(180),
    RSV3           VARCHAR2(180),
    RSV4           VARCHAR2(180),
    RSV5           VARCHAR2(180)
)
/

comment on table GFDR_PM_A2411 is 'A2411资产负债项目月报表'
/

comment on column GFDR_PM_A2411.DATA_ID is '数据ID'
/

comment on column GFDR_PM_A2411.DATA_DATE is '数据日期'
/

comment on column GFDR_PM_A2411.DATA_RPT_DATE is '报表日期'
/

comment on column GFDR_PM_A2411.CORP_ID is '法人机构号'
/

comment on column GFDR_PM_A2411.ORG_ID is '机构号'
/

comment on column GFDR_PM_A2411.GROUP_ID is '部门编号'
/

comment on column GFDR_PM_A2411.INQ_ORG_ID is '查询机构号'
/

comment on column GFDR_PM_A2411.INQ_GROUP_ID is '查询组号'
/

comment on column GFDR_PM_A2411.JRJGDM is '金融机构代码'
/

comment on column GFDR_PM_A2411.ZBBH is '指标编号'
/

comment on column GFDR_PM_A2411.ZBMC is '指标名称'
/

comment on column GFDR_PM_A2411.YE_AMT is '余额'
/

comment on column GFDR_PM_A2411.REMARKS is '备注'
/

comment on column GFDR_PM_A2411.CHECK_FLAG is '校验标识'
/

comment on column GFDR_PM_A2411.CHECK_DESC is '校验结果'
/

comment on column GFDR_PM_A2411.CHECK_ERR_TYPE is '校验失败类型'
/

comment on column GFDR_PM_A2411.NEXT_ACTION is '下一动作'
/

comment on column GFDR_PM_A2411.DATA_STATUS is '数据状态'
/

comment on column GFDR_PM_A2411.DATA_FLAG is '数据是否已删除'
/

comment on column GFDR_PM_A2411.DATA_SOURCE is '数据来源'
/

comment on column GFDR_PM_A2411.DATA_VERSION is '数据版本'
/

comment on column GFDR_PM_A2411.DATA_REJ_DESC is '数据审核拒绝原因'
/

comment on column GFDR_PM_A2411.DATA_DEL_DESC is '数据删除描述'
/

comment on column GFDR_PM_A2411.DATA_CRT_USER is '数据创建/导入用户'
/

comment on column GFDR_PM_A2411.DATA_CRT_DATE is '数据创建/导入日期'
/

comment on column GFDR_PM_A2411.DATA_CRT_TIME is '数据创建/导入时间'
/

comment on column GFDR_PM_A2411.DATA_CHG_USER is '数据修改/删除用户'
/

comment on column GFDR_PM_A2411.DATA_CHG_DATE is '数据修改/删除日期'
/

comment on column GFDR_PM_A2411.DATA_CHG_TIME is '数据修改/删除时间'
/

comment on column GFDR_PM_A2411.DATA_APV_USER is '数据审核/拒绝用户'
/

comment on column GFDR_PM_A2411.DATA_APV_DATE is '数据审核/拒绝日期'
/

comment on column GFDR_PM_A2411.DATA_APV_TIME is '数据审核/拒绝时间'
/

comment on column GFDR_PM_A2411.RSV1 is '备用1'
/

comment on column GFDR_PM_A2411.RSV2 is '备用2'
/

comment on column GFDR_PM_A2411.RSV3 is '备用3'
/

comment on column GFDR_PM_A2411.RSV4 is '备用4'
/

comment on column GFDR_PM_A2411.RSV5 is '备用5'
/

create unique index U_A2411
    on GFDR_PM_A2411 (DATA_RPT_DATE, JRJGDM, ZBBH)
/

create table GFDR_PM_CLDWDK
(
    DATA_ID        VARCHAR2(64) not null
        primary key,
    DATA_DATE      CHAR(8),
    DATA_RPT_DATE  CHAR(8),
    CORP_ID        VARCHAR2(14),
    ORG_ID         VARCHAR2(14),
    GROUP_ID       VARCHAR2(14),
    INQ_ORG_ID     VARCHAR2(32),
    INQ_GROUP_ID   VARCHAR2(32),
    JRJGDM         VARCHAR2(18),
    NBJGH          VARCHAR2(30),
    JRJGDQDM       CHAR(6),
    JKRZJLX        CHAR(3),
    JKRZJDM        VARCHAR2(60),
    JKRGMJJBM      CHAR(3),
    JKRHY          CHAR(3),
    JKRDQDM        CHAR(6),
    JKRJJCF        VARCHAR2(5),
    JKRQYGM        CHAR(4),
    DKJJBM         VARCHAR2(100),
    DKHTBM         VARCHAR2(100),
    DKCPLB         VARCHAR2(6),
    DKSJTX         CHAR(4),
    DKFFRQ_DATE    CHAR(8),
    DKDQRQ_DATE    CHAR(8),
    DKZQDQRQ_DATE  CHAR(8),
    BZ             CHAR(3),
    DKYE_AMT       NUMBER(20, 2),
    DKYEZRMBYE_AMT NUMBER(20, 2),
    LLSFGD         CHAR(4),
    LLSP           NUMBER(10, 5),
    DKDJJZLX       CHAR(4),
    JZLL           NUMBER(10, 5),
    DKCZFCFS       VARCHAR2(5),
    DKLLZXDJR_DATE CHAR(8),
    DKDBFS         VARCHAR2(3),
    SFSCDK         CHAR,
    DKZL           CHAR(4),
    DKZT           CHAR(4),
    YQLX           CHAR(2),
    DKYT           VARCHAR2(1000),
    REMARKS        VARCHAR2(14),
    CHECK_FLAG     CHAR,
    CHECK_DESC     VARCHAR2(3072),
    CHECK_ERR_TYPE CHAR,
    NEXT_ACTION    CHAR(2),
    DATA_STATUS    CHAR(2),
    DATA_FLAG      CHAR,
    DATA_SOURCE    CHAR,
    DATA_VERSION   NUMBER(8),
    DATA_REJ_DESC  VARCHAR2(128),
    DATA_DEL_DESC  VARCHAR2(128),
    DATA_CRT_USER  VARCHAR2(20),
    DATA_CRT_DATE  CHAR(8),
    DATA_CRT_TIME  CHAR(14),
    DATA_CHG_USER  VARCHAR2(20),
    DATA_CHG_DATE  CHAR(8),
    DATA_CHG_TIME  CHAR(14),
    DATA_APV_USER  VARCHAR2(20),
    DATA_APV_DATE  CHAR(8),
    DATA_APV_TIME  CHAR(14),
    RSV1           VARCHAR2(180),
    RSV2           VARCHAR2(180),
    RSV3           VARCHAR2(180),
    RSV4           VARCHAR2(180),
    RSV5           VARCHAR2(180)
)
/

comment on table GFDR_PM_CLDWDK is '存量单位贷款信息'
/

comment on column GFDR_PM_CLDWDK.DATA_ID is '数据ID'
/

comment on column GFDR_PM_CLDWDK.DATA_DATE is '数据日期'
/

comment on column GFDR_PM_CLDWDK.DATA_RPT_DATE is '报表日期'
/

comment on column GFDR_PM_CLDWDK.CORP_ID is '法人机构号'
/

comment on column GFDR_PM_CLDWDK.ORG_ID is '机构号'
/

comment on column GFDR_PM_CLDWDK.GROUP_ID is '部门编号'
/

comment on column GFDR_PM_CLDWDK.INQ_ORG_ID is '查询机构号'
/

comment on column GFDR_PM_CLDWDK.INQ_GROUP_ID is '查询组号'
/

comment on column GFDR_PM_CLDWDK.JRJGDM is '金融机构代码'
/

comment on column GFDR_PM_CLDWDK.NBJGH is '内部机构号'
/

comment on column GFDR_PM_CLDWDK.JRJGDQDM is '金融机构地区代码'
/

comment on column GFDR_PM_CLDWDK.JKRZJLX is '借款人证件类型'
/

comment on column GFDR_PM_CLDWDK.JKRZJDM is '借款人证件代码'
/

comment on column GFDR_PM_CLDWDK.JKRGMJJBM is '借款人国民经济部门'
/

comment on column GFDR_PM_CLDWDK.JKRHY is '借款人行业'
/

comment on column GFDR_PM_CLDWDK.JKRDQDM is '借款人地区代码'
/

comment on column GFDR_PM_CLDWDK.JKRJJCF is '借款人经济成分'
/

comment on column GFDR_PM_CLDWDK.JKRQYGM is '借款人企业规模'
/

comment on column GFDR_PM_CLDWDK.DKJJBM is '贷款借据编码'
/

comment on column GFDR_PM_CLDWDK.DKHTBM is '贷款合同编码'
/

comment on column GFDR_PM_CLDWDK.DKCPLB is '贷款产品类别'
/

comment on column GFDR_PM_CLDWDK.DKSJTX is '贷款实际投向'
/

comment on column GFDR_PM_CLDWDK.DKFFRQ_DATE is '贷款发放日期'
/

comment on column GFDR_PM_CLDWDK.DKDQRQ_DATE is '贷款到期日期'
/

comment on column GFDR_PM_CLDWDK.DKZQDQRQ_DATE is '贷款展期到期日期'
/

comment on column GFDR_PM_CLDWDK.BZ is '币种'
/

comment on column GFDR_PM_CLDWDK.DKYE_AMT is '贷款余额'
/

comment on column GFDR_PM_CLDWDK.DKYEZRMBYE_AMT is '贷款余额折人民币余额'
/

comment on column GFDR_PM_CLDWDK.LLSFGD is '利率是否固定'
/

comment on column GFDR_PM_CLDWDK.LLSP is '利率水平'
/

comment on column GFDR_PM_CLDWDK.DKDJJZLX is '贷款定价基准类型'
/

comment on column GFDR_PM_CLDWDK.JZLL is '基准利率'
/

comment on column GFDR_PM_CLDWDK.DKCZFCFS is '贷款财政扶持方式'
/

comment on column GFDR_PM_CLDWDK.DKLLZXDJR_DATE is '贷款利率重新定价日'
/

comment on column GFDR_PM_CLDWDK.DKDBFS is '贷款担保方式'
/

comment on column GFDR_PM_CLDWDK.SFSCDK is '是否首次贷款'
/

comment on column GFDR_PM_CLDWDK.DKZL is '贷款质量'
/

comment on column GFDR_PM_CLDWDK.DKZT is '贷款状态'
/

comment on column GFDR_PM_CLDWDK.YQLX is '逾期类型'
/

comment on column GFDR_PM_CLDWDK.DKYT is '贷款用途'
/

comment on column GFDR_PM_CLDWDK.REMARKS is '备注'
/

comment on column GFDR_PM_CLDWDK.CHECK_FLAG is '校验标识'
/

comment on column GFDR_PM_CLDWDK.CHECK_DESC is '校验结果'
/

comment on column GFDR_PM_CLDWDK.CHECK_ERR_TYPE is '校验失败类型'
/

comment on column GFDR_PM_CLDWDK.NEXT_ACTION is '下一动作'
/

comment on column GFDR_PM_CLDWDK.DATA_STATUS is '数据状态'
/

comment on column GFDR_PM_CLDWDK.DATA_FLAG is '数据是否已删除'
/

comment on column GFDR_PM_CLDWDK.DATA_SOURCE is '数据来源'
/

comment on column GFDR_PM_CLDWDK.DATA_VERSION is '数据版本'
/

comment on column GFDR_PM_CLDWDK.DATA_REJ_DESC is '数据审核拒绝原因'
/

comment on column GFDR_PM_CLDWDK.DATA_DEL_DESC is '数据删除描述'
/

comment on column GFDR_PM_CLDWDK.DATA_CRT_USER is '数据创建/导入用户'
/

comment on column GFDR_PM_CLDWDK.DATA_CRT_DATE is '数据创建/导入日期'
/

comment on column GFDR_PM_CLDWDK.DATA_CRT_TIME is '数据创建/导入时间'
/

comment on column GFDR_PM_CLDWDK.DATA_CHG_USER is '数据修改/删除用户'
/

comment on column GFDR_PM_CLDWDK.DATA_CHG_DATE is '数据修改/删除日期'
/

comment on column GFDR_PM_CLDWDK.DATA_CHG_TIME is '数据修改/删除时间'
/

comment on column GFDR_PM_CLDWDK.DATA_APV_USER is '数据审核/拒绝用户'
/

comment on column GFDR_PM_CLDWDK.DATA_APV_DATE is '数据审核/拒绝日期'
/

comment on column GFDR_PM_CLDWDK.DATA_APV_TIME is '数据审核/拒绝时间'
/

comment on column GFDR_PM_CLDWDK.RSV1 is '备用1'
/

comment on column GFDR_PM_CLDWDK.RSV2 is '备用2'
/

comment on column GFDR_PM_CLDWDK.RSV3 is '备用3'
/

comment on column GFDR_PM_CLDWDK.RSV4 is '备用4'
/

comment on column GFDR_PM_CLDWDK.RSV5 is '备用5'
/

create unique index U_CLDWDK
    on GFDR_PM_CLDWDK (DATA_RPT_DATE, JRJGDM, DKJJBM, DKHTBM)
/

create table GFDR_PM_DBHTXX
(
    DATA_ID        VARCHAR2(64) not null
        primary key,
    DATA_DATE      CHAR(8),
    DATA_RPT_DATE  CHAR(8),
    CORP_ID        VARCHAR2(14),
    ORG_ID         VARCHAR2(14),
    GROUP_ID       VARCHAR2(14),
    INQ_ORG_ID     VARCHAR2(32),
    INQ_GROUP_ID   VARCHAR2(32),
    JRJGDM         VARCHAR2(18),
    NBJGH          VARCHAR2(30),
    DBHTBM         VARCHAR2(100),
    BDBHTBM        VARCHAR2(100),
    DBHTLX         CHAR(2),
    JYLX           VARCHAR2(60),
    DBHTQSRQ_DATE  CHAR(8),
    DBHTDQRQ_DATE  CHAR(8),
    BZ             CHAR(3),
    DBHTJE         NUMBER(20, 2),
    DBHTJEZRMB_AMT NUMBER(20, 2),
    DZYL           NUMBER(10, 2),
    DBRZJLX        CHAR(3),
    DBRZJDM        VARCHAR2(60),
    DBRGMJJBM      CHAR(3),
    DBRHY          CHAR(3),
    DBRDQDM        CHAR(6),
    DBRQYGM        CHAR(4),
    REMARKS        VARCHAR2(14),
    CHECK_FLAG     CHAR,
    CHECK_DESC     VARCHAR2(3072),
    CHECK_ERR_TYPE CHAR,
    NEXT_ACTION    CHAR(2),
    DATA_STATUS    CHAR(2),
    DATA_FLAG      CHAR,
    DATA_SOURCE    CHAR,
    DATA_VERSION   NUMBER(8),
    DATA_REJ_DESC  VARCHAR2(128),
    DATA_DEL_DESC  VARCHAR2(128),
    DATA_CRT_USER  VARCHAR2(20),
    DATA_CRT_DATE  CHAR(8),
    DATA_CRT_TIME  CHAR(14),
    DATA_CHG_USER  VARCHAR2(20),
    DATA_CHG_DATE  CHAR(8),
    DATA_CHG_TIME  CHAR(14),
    DATA_APV_USER  VARCHAR2(20),
    DATA_APV_DATE  CHAR(8),
    DATA_APV_TIME  CHAR(14),
    RSV1           VARCHAR2(180),
    RSV2           VARCHAR2(180),
    RSV3           VARCHAR2(180),
    RSV4           VARCHAR2(180),
    RSV5           VARCHAR2(180)
)
/

comment on table GFDR_PM_DBHTXX is '担保合同信息'
/

comment on column GFDR_PM_DBHTXX.DATA_ID is '数据ID'
/

comment on column GFDR_PM_DBHTXX.DATA_DATE is '数据日期'
/

comment on column GFDR_PM_DBHTXX.DATA_RPT_DATE is '报表日期'
/

comment on column GFDR_PM_DBHTXX.CORP_ID is '法人机构号'
/

comment on column GFDR_PM_DBHTXX.ORG_ID is '机构号'
/

comment on column GFDR_PM_DBHTXX.GROUP_ID is '部门编号'
/

comment on column GFDR_PM_DBHTXX.INQ_ORG_ID is '查询机构号'
/

comment on column GFDR_PM_DBHTXX.INQ_GROUP_ID is '查询组号'
/

comment on column GFDR_PM_DBHTXX.JRJGDM is '金融机构代码'
/

comment on column GFDR_PM_DBHTXX.NBJGH is '内部机构号'
/

comment on column GFDR_PM_DBHTXX.DBHTBM is '担保合同编码'
/

comment on column GFDR_PM_DBHTXX.BDBHTBM is '被担保合同编码'
/

comment on column GFDR_PM_DBHTXX.DBHTLX is '担保合同类型'
/

comment on column GFDR_PM_DBHTXX.JYLX is '交易类型'
/

comment on column GFDR_PM_DBHTXX.DBHTQSRQ_DATE is '担保合同起始日期'
/

comment on column GFDR_PM_DBHTXX.DBHTDQRQ_DATE is '担保合同到期日期'
/

comment on column GFDR_PM_DBHTXX.BZ is '币种'
/

comment on column GFDR_PM_DBHTXX.DBHTJE is '担保合同金额'
/

comment on column GFDR_PM_DBHTXX.DBHTJEZRMB_AMT is '担保合同金额折人民币'
/

comment on column GFDR_PM_DBHTXX.DZYL is '抵质押率'
/

comment on column GFDR_PM_DBHTXX.DBRZJLX is '担保人证件类型'
/

comment on column GFDR_PM_DBHTXX.DBRZJDM is '担保人证件代码'
/

comment on column GFDR_PM_DBHTXX.DBRGMJJBM is '担保人国民经济部门'
/

comment on column GFDR_PM_DBHTXX.DBRHY is '担保人行业'
/

comment on column GFDR_PM_DBHTXX.DBRDQDM is '担保人地区代码'
/

comment on column GFDR_PM_DBHTXX.DBRQYGM is '担保人企业规模'
/

comment on column GFDR_PM_DBHTXX.REMARKS is '备注'
/

comment on column GFDR_PM_DBHTXX.CHECK_FLAG is '校验标识'
/

comment on column GFDR_PM_DBHTXX.CHECK_DESC is '校验结果'
/

comment on column GFDR_PM_DBHTXX.CHECK_ERR_TYPE is '校验失败类型'
/

comment on column GFDR_PM_DBHTXX.NEXT_ACTION is '下一动作'
/

comment on column GFDR_PM_DBHTXX.DATA_STATUS is '数据状态'
/

comment on column GFDR_PM_DBHTXX.DATA_FLAG is '数据是否已删除'
/

comment on column GFDR_PM_DBHTXX.DATA_SOURCE is '数据来源'
/

comment on column GFDR_PM_DBHTXX.DATA_VERSION is '数据版本'
/

comment on column GFDR_PM_DBHTXX.DATA_REJ_DESC is '数据审核拒绝原因'
/

comment on column GFDR_PM_DBHTXX.DATA_DEL_DESC is '数据删除描述'
/

comment on column GFDR_PM_DBHTXX.DATA_CRT_USER is '数据创建/导入用户'
/

comment on column GFDR_PM_DBHTXX.DATA_CRT_DATE is '数据创建/导入日期'
/

comment on column GFDR_PM_DBHTXX.DATA_CRT_TIME is '数据创建/导入时间'
/

comment on column GFDR_PM_DBHTXX.DATA_CHG_USER is '数据修改/删除用户'
/

comment on column GFDR_PM_DBHTXX.DATA_CHG_DATE is '数据修改/删除日期'
/

comment on column GFDR_PM_DBHTXX.DATA_CHG_TIME is '数据修改/删除时间'
/

comment on column GFDR_PM_DBHTXX.DATA_APV_USER is '数据审核/拒绝用户'
/

comment on column GFDR_PM_DBHTXX.DATA_APV_DATE is '数据审核/拒绝日期'
/

comment on column GFDR_PM_DBHTXX.DATA_APV_TIME is '数据审核/拒绝时间'
/

comment on column GFDR_PM_DBHTXX.RSV1 is '备用1'
/

comment on column GFDR_PM_DBHTXX.RSV2 is '备用2'
/

comment on column GFDR_PM_DBHTXX.RSV3 is '备用3'
/

comment on column GFDR_PM_DBHTXX.RSV4 is '备用4'
/

comment on column GFDR_PM_DBHTXX.RSV5 is '备用5'
/

create unique index U_DBHTXX
    on GFDR_PM_DBHTXX (DATA_RPT_DATE, JRJGDM, NBJGH, DBHTBM, BDBHTBM, DBRZJLX, DBRZJDM)
/

create table GFDR_PM_DBWXX
(
    DATA_ID        VARCHAR2(64) not null
        primary key,
    DATA_DATE      CHAR(8),
    DATA_RPT_DATE  CHAR(8),
    CORP_ID        VARCHAR2(14),
    ORG_ID         VARCHAR2(14),
    GROUP_ID       VARCHAR2(14),
    INQ_ORG_ID     VARCHAR2(32),
    INQ_GROUP_ID   VARCHAR2(32),
    JRJGDM         VARCHAR2(18),
    NBJGH          VARCHAR2(30),
    DBHTBM         VARCHAR2(100),
    BDBHTBM        VARCHAR2(100),
    DBWBM          VARCHAR2(100),
    DBWLB          CHAR(3),
    QZBH           VARCHAR2(500),
    SFDYSW         CHAR,
    PGFS           CHAR(3),
    PGFF           CHAR(2),
    PGJZ           NUMBER(20, 2),
    PGJZR_DATE     CHAR(8),
    DBWPMJZ_AMT    NUMBER(20, 2),
    YXSCQSE_AMT    NUMBER(20, 2),
    GZZQ           CHAR(2),
    REMARKS        VARCHAR2(14),
    CHECK_FLAG     CHAR,
    CHECK_DESC     VARCHAR2(3072),
    CHECK_ERR_TYPE CHAR,
    NEXT_ACTION    CHAR(2),
    DATA_STATUS    CHAR(2),
    DATA_FLAG      CHAR,
    DATA_SOURCE    CHAR,
    DATA_VERSION   NUMBER(8),
    DATA_REJ_DESC  VARCHAR2(128),
    DATA_DEL_DESC  VARCHAR2(128),
    DATA_CRT_USER  VARCHAR2(20),
    DATA_CRT_DATE  CHAR(8),
    DATA_CRT_TIME  CHAR(14),
    DATA_CHG_USER  VARCHAR2(20),
    DATA_CHG_DATE  CHAR(8),
    DATA_CHG_TIME  CHAR(14),
    DATA_APV_USER  VARCHAR2(20),
    DATA_APV_DATE  CHAR(8),
    DATA_APV_TIME  CHAR(14),
    RSV1           VARCHAR2(180),
    RSV2           VARCHAR2(180),
    RSV3           VARCHAR2(180),
    RSV4           VARCHAR2(180),
    RSV5           VARCHAR2(180)
)
/

comment on table GFDR_PM_DBWXX is '担保物信息'
/

comment on column GFDR_PM_DBWXX.DATA_ID is '数据ID'
/

comment on column GFDR_PM_DBWXX.DATA_DATE is '数据日期'
/

comment on column GFDR_PM_DBWXX.DATA_RPT_DATE is '报表日期'
/

comment on column GFDR_PM_DBWXX.CORP_ID is '法人机构号'
/

comment on column GFDR_PM_DBWXX.ORG_ID is '机构号'
/

comment on column GFDR_PM_DBWXX.GROUP_ID is '部门编号'
/

comment on column GFDR_PM_DBWXX.INQ_ORG_ID is '查询机构号'
/

comment on column GFDR_PM_DBWXX.INQ_GROUP_ID is '查询组号'
/

comment on column GFDR_PM_DBWXX.JRJGDM is '金融机构代码'
/

comment on column GFDR_PM_DBWXX.NBJGH is '内部机构号'
/

comment on column GFDR_PM_DBWXX.DBHTBM is '担保合同编码'
/

comment on column GFDR_PM_DBWXX.BDBHTBM is '被担保合同编码'
/

comment on column GFDR_PM_DBWXX.DBWBM is '担保物编码'
/

comment on column GFDR_PM_DBWXX.DBWLB is '担保物类别'
/

comment on column GFDR_PM_DBWXX.QZBH is '权证编号'
/

comment on column GFDR_PM_DBWXX.SFDYSW is '是否第一顺位'
/

comment on column GFDR_PM_DBWXX.PGFS is '评估方式'
/

comment on column GFDR_PM_DBWXX.PGFF is '评估方法'
/

comment on column GFDR_PM_DBWXX.PGJZ is '评估价值'
/

comment on column GFDR_PM_DBWXX.PGJZR_DATE is '评估基准日'
/

comment on column GFDR_PM_DBWXX.DBWPMJZ_AMT is '担保物票面价值'
/

comment on column GFDR_PM_DBWXX.YXSCQSE_AMT is '优先受偿权数额'
/

comment on column GFDR_PM_DBWXX.GZZQ is '估值周期'
/

comment on column GFDR_PM_DBWXX.REMARKS is '备注'
/

comment on column GFDR_PM_DBWXX.CHECK_FLAG is '校验标识'
/

comment on column GFDR_PM_DBWXX.CHECK_DESC is '校验结果'
/

comment on column GFDR_PM_DBWXX.CHECK_ERR_TYPE is '校验失败类型'
/

comment on column GFDR_PM_DBWXX.NEXT_ACTION is '下一动作'
/

comment on column GFDR_PM_DBWXX.DATA_STATUS is '数据状态'
/

comment on column GFDR_PM_DBWXX.DATA_FLAG is '数据是否已删除'
/

comment on column GFDR_PM_DBWXX.DATA_SOURCE is '数据来源'
/

comment on column GFDR_PM_DBWXX.DATA_VERSION is '数据版本'
/

comment on column GFDR_PM_DBWXX.DATA_REJ_DESC is '数据审核拒绝原因'
/

comment on column GFDR_PM_DBWXX.DATA_DEL_DESC is '数据删除描述'
/

comment on column GFDR_PM_DBWXX.DATA_CRT_USER is '数据创建/导入用户'
/

comment on column GFDR_PM_DBWXX.DATA_CRT_DATE is '数据创建/导入日期'
/

comment on column GFDR_PM_DBWXX.DATA_CRT_TIME is '数据创建/导入时间'
/

comment on column GFDR_PM_DBWXX.DATA_CHG_USER is '数据修改/删除用户'
/

comment on column GFDR_PM_DBWXX.DATA_CHG_DATE is '数据修改/删除日期'
/

comment on column GFDR_PM_DBWXX.DATA_CHG_TIME is '数据修改/删除时间'
/

comment on column GFDR_PM_DBWXX.DATA_APV_USER is '数据审核/拒绝用户'
/

comment on column GFDR_PM_DBWXX.DATA_APV_DATE is '数据审核/拒绝日期'
/

comment on column GFDR_PM_DBWXX.DATA_APV_TIME is '数据审核/拒绝时间'
/

comment on column GFDR_PM_DBWXX.RSV1 is '备用1'
/

comment on column GFDR_PM_DBWXX.RSV2 is '备用2'
/

comment on column GFDR_PM_DBWXX.RSV3 is '备用3'
/

comment on column GFDR_PM_DBWXX.RSV4 is '备用4'
/

comment on column GFDR_PM_DBWXX.RSV5 is '备用5'
/

create table GFDR_PM_DWDKFS
(
    DATA_ID        VARCHAR2(64) not null
        primary key,
    DATA_DATE      CHAR(8),
    DATA_RPT_DATE  CHAR(8),
    CORP_ID        VARCHAR2(14),
    ORG_ID         VARCHAR2(14),
    GROUP_ID       VARCHAR2(14),
    INQ_ORG_ID     VARCHAR2(32),
    INQ_GROUP_ID   VARCHAR2(32),
    JRJGDM         VARCHAR2(18),
    NBJGH          VARCHAR2(30),
    JRJGDQDM       CHAR(6),
    JKRZJLX        CHAR(3),
    JKRZJDM        VARCHAR2(60),
    JKRGMJJBM      CHAR(3),
    JKRHY          CHAR(3),
    JKRDQDM        CHAR(6),
    JKRJJCF        VARCHAR2(5),
    JKRQYGM        CHAR(4),
    DKJJBM         VARCHAR2(100),
    DKHTBM         VARCHAR2(100),
    DKCPLB         VARCHAR2(6),
    DKSJTX         CHAR(4),
    DKFFRQ_DATE    CHAR(8),
    DKDQRQ_DATE    CHAR(8),
    DKSJZZRQ_DATE  CHAR(8),
    BZ             CHAR(3),
    DKFSJE_AMT     NUMBER(20, 2),
    DKFSJEZRMB_AMT NUMBER(20, 2),
    LLSFGD         CHAR(4),
    LLSP           NUMBER(10, 5),
    DKDJJZLX       CHAR(4),
    JZLL           NUMBER(10, 5),
    DKCZFCFS       VARCHAR2(5),
    DKLLZXDJR_DATE CHAR(8),
    DKDBFS         VARCHAR2(3),
    SFSCDK         CHAR,
    DKZT           CHAR(4),
    ZCZQHCPDM      VARCHAR2(400),
    DKCZFS         CHAR(2),
    FFSHBS         CHAR,
    JYLSH          VARCHAR2(60),
    DKYT           VARCHAR2(1000),
    REMARKS        VARCHAR2(14),
    CHECK_FLAG     CHAR,
    CHECK_DESC     VARCHAR2(3072),
    CHECK_ERR_TYPE CHAR,
    NEXT_ACTION    CHAR(2),
    DATA_STATUS    CHAR(2),
    DATA_FLAG      CHAR,
    DATA_SOURCE    CHAR,
    DATA_VERSION   NUMBER(8),
    DATA_REJ_DESC  VARCHAR2(128),
    DATA_DEL_DESC  VARCHAR2(128),
    DATA_CRT_USER  VARCHAR2(20),
    DATA_CRT_DATE  CHAR(8),
    DATA_CRT_TIME  CHAR(14),
    DATA_CHG_USER  VARCHAR2(20),
    DATA_CHG_DATE  CHAR(8),
    DATA_CHG_TIME  CHAR(14),
    DATA_APV_USER  VARCHAR2(20),
    DATA_APV_DATE  CHAR(8),
    DATA_APV_TIME  CHAR(14),
    RSV1           VARCHAR2(180),
    RSV2           VARCHAR2(180),
    RSV3           VARCHAR2(180),
    RSV4           VARCHAR2(180),
    RSV5           VARCHAR2(180)
)
/

comment on table GFDR_PM_DWDKFS is '单位贷款发生额信息'
/

comment on column GFDR_PM_DWDKFS.DATA_ID is '数据ID'
/

comment on column GFDR_PM_DWDKFS.DATA_DATE is '数据日期'
/

comment on column GFDR_PM_DWDKFS.DATA_RPT_DATE is '报表日期'
/

comment on column GFDR_PM_DWDKFS.CORP_ID is '法人机构号'
/

comment on column GFDR_PM_DWDKFS.ORG_ID is '机构号'
/

comment on column GFDR_PM_DWDKFS.GROUP_ID is '部门编号'
/

comment on column GFDR_PM_DWDKFS.INQ_ORG_ID is '查询机构号'
/

comment on column GFDR_PM_DWDKFS.INQ_GROUP_ID is '查询组号'
/

comment on column GFDR_PM_DWDKFS.JRJGDM is '金融机构代码'
/

comment on column GFDR_PM_DWDKFS.NBJGH is '内部机构号'
/

comment on column GFDR_PM_DWDKFS.JRJGDQDM is '金融机构地区代码'
/

comment on column GFDR_PM_DWDKFS.JKRZJLX is '借款人证件类型'
/

comment on column GFDR_PM_DWDKFS.JKRZJDM is '借款人证件代码'
/

comment on column GFDR_PM_DWDKFS.JKRGMJJBM is '借款人国民经济部门'
/

comment on column GFDR_PM_DWDKFS.JKRHY is '借款人行业'
/

comment on column GFDR_PM_DWDKFS.JKRDQDM is '借款人地区代码'
/

comment on column GFDR_PM_DWDKFS.JKRJJCF is '借款人经济成分'
/

comment on column GFDR_PM_DWDKFS.JKRQYGM is '借款人企业规模'
/

comment on column GFDR_PM_DWDKFS.DKJJBM is '贷款借据编码'
/

comment on column GFDR_PM_DWDKFS.DKHTBM is '贷款合同编码'
/

comment on column GFDR_PM_DWDKFS.DKCPLB is '贷款产品类别'
/

comment on column GFDR_PM_DWDKFS.DKSJTX is '贷款实际投向'
/

comment on column GFDR_PM_DWDKFS.DKFFRQ_DATE is '贷款发放日期'
/

comment on column GFDR_PM_DWDKFS.DKDQRQ_DATE is '贷款到期日期'
/

comment on column GFDR_PM_DWDKFS.DKSJZZRQ_DATE is '贷款实际终止日期'
/

comment on column GFDR_PM_DWDKFS.BZ is '币种'
/

comment on column GFDR_PM_DWDKFS.DKFSJE_AMT is '贷款发生金额'
/

comment on column GFDR_PM_DWDKFS.DKFSJEZRMB_AMT is '贷款发生金额折人民币'
/

comment on column GFDR_PM_DWDKFS.LLSFGD is '利率是否固定'
/

comment on column GFDR_PM_DWDKFS.LLSP is '利率水平'
/

comment on column GFDR_PM_DWDKFS.DKDJJZLX is '贷款定价基准类型'
/

comment on column GFDR_PM_DWDKFS.JZLL is '基准利率'
/

comment on column GFDR_PM_DWDKFS.DKCZFCFS is '贷款财政扶持方式'
/

comment on column GFDR_PM_DWDKFS.DKLLZXDJR_DATE is '贷款利率重新定价日'
/

comment on column GFDR_PM_DWDKFS.DKDBFS is '贷款担保方式'
/

comment on column GFDR_PM_DWDKFS.SFSCDK is '是否首次贷款'
/

comment on column GFDR_PM_DWDKFS.DKZT is '贷款状态'
/

comment on column GFDR_PM_DWDKFS.ZCZQHCPDM is '资产证券化产品代码'
/

comment on column GFDR_PM_DWDKFS.DKCZFS is '贷款重组方式'
/

comment on column GFDR_PM_DWDKFS.FFSHBS is '发放/收回标识'
/

comment on column GFDR_PM_DWDKFS.JYLSH is '交易流水号'
/

comment on column GFDR_PM_DWDKFS.DKYT is '贷款用途'
/

comment on column GFDR_PM_DWDKFS.REMARKS is '备注'
/

comment on column GFDR_PM_DWDKFS.CHECK_FLAG is '校验标识'
/

comment on column GFDR_PM_DWDKFS.CHECK_DESC is '校验结果'
/

comment on column GFDR_PM_DWDKFS.CHECK_ERR_TYPE is '校验失败类型'
/

comment on column GFDR_PM_DWDKFS.NEXT_ACTION is '下一动作'
/

comment on column GFDR_PM_DWDKFS.DATA_STATUS is '数据状态'
/

comment on column GFDR_PM_DWDKFS.DATA_FLAG is '数据是否已删除'
/

comment on column GFDR_PM_DWDKFS.DATA_SOURCE is '数据来源'
/

comment on column GFDR_PM_DWDKFS.DATA_VERSION is '数据版本'
/

comment on column GFDR_PM_DWDKFS.DATA_REJ_DESC is '数据审核拒绝原因'
/

comment on column GFDR_PM_DWDKFS.DATA_DEL_DESC is '数据删除描述'
/

comment on column GFDR_PM_DWDKFS.DATA_CRT_USER is '数据创建/导入用户'
/

comment on column GFDR_PM_DWDKFS.DATA_CRT_DATE is '数据创建/导入日期'
/

comment on column GFDR_PM_DWDKFS.DATA_CRT_TIME is '数据创建/导入时间'
/

comment on column GFDR_PM_DWDKFS.DATA_CHG_USER is '数据修改/删除用户'
/

comment on column GFDR_PM_DWDKFS.DATA_CHG_DATE is '数据修改/删除日期'
/

comment on column GFDR_PM_DWDKFS.DATA_CHG_TIME is '数据修改/删除时间'
/

comment on column GFDR_PM_DWDKFS.DATA_APV_USER is '数据审核/拒绝用户'
/

comment on column GFDR_PM_DWDKFS.DATA_APV_DATE is '数据审核/拒绝日期'
/

comment on column GFDR_PM_DWDKFS.DATA_APV_TIME is '数据审核/拒绝时间'
/

comment on column GFDR_PM_DWDKFS.RSV1 is '备用1'
/

comment on column GFDR_PM_DWDKFS.RSV2 is '备用2'
/

comment on column GFDR_PM_DWDKFS.RSV3 is '备用3'
/

comment on column GFDR_PM_DWDKFS.RSV4 is '备用4'
/

comment on column GFDR_PM_DWDKFS.RSV5 is '备用5'
/

create unique index U_DWDKFS
    on GFDR_PM_DWDKFS (DATA_RPT_DATE, JRJGDM, NBJGH, DKJJBM, DKHTBM, FFSHBS, JYLSH)
/

create table GFDR_PM_FTYKHX
(
    DATA_ID         VARCHAR2(64) not null
        primary key,
    DATA_DATE       CHAR(8),
    DATA_RPT_DATE   CHAR(8),
    CORP_ID         VARCHAR2(14),
    ORG_ID          VARCHAR2(14),
    GROUP_ID        VARCHAR2(14),
    INQ_ORG_ID      VARCHAR2(32),
    INQ_GROUP_ID    VARCHAR2(32),
    JRJGDM          VARCHAR2(18),
    KHMC            VARCHAR2(200),
    KHZJLX          CHAR(3),
    KHZJDM          VARCHAR2(60),
    JBCKZH          VARCHAR2(60),
    JBZHKHHMC       VARCHAR2(200),
    JYFW            VARCHAR2(1000),
    ZCZB            NUMBER(20, 2),
    SSZB            NUMBER(20, 2),
    ZZC_AMT         NUMBER(20, 2),
    YYSR            NUMBER(20, 2),
    CYRYS           NUMBER(10),
    SFSSGS          CHAR,
    SCJLXDGXRQ_DATE CHAR(8),
    ZCDZ            VARCHAR2(400),
    DQDM            CHAR(6),
    JYZT            CHAR(2),
    CLRQ_DATE       CHAR(8),
    SSHY            CHAR(3),
    QYGM            CHAR(4),
    KHJJCF          VARCHAR2(5),
    KHGMJJBM        CHAR(3),
    SXED_AMT        NUMBER(20, 2),
    YYED_AMT        NUMBER(20, 2),
    SFGLF           CHAR,
    SJKZRZJLX       VARCHAR2(60),
    SJKZRZJDM       VARCHAR2(400),
    KHXYJBZDJS      NUMBER(3),
    KHXYPJ          NUMBER(3),
    REMARKS         VARCHAR2(14),
    CHECK_FLAG      CHAR,
    CHECK_DESC      VARCHAR2(3072),
    CHECK_ERR_TYPE  CHAR,
    NEXT_ACTION     CHAR(2),
    DATA_STATUS     CHAR(2),
    DATA_FLAG       CHAR,
    DATA_SOURCE     CHAR,
    DATA_VERSION    NUMBER(8),
    DATA_REJ_DESC   VARCHAR2(128),
    DATA_DEL_DESC   VARCHAR2(128),
    DATA_CRT_USER   VARCHAR2(20),
    DATA_CRT_DATE   CHAR(8),
    DATA_CRT_TIME   CHAR(14),
    DATA_CHG_USER   VARCHAR2(20),
    DATA_CHG_DATE   CHAR(8),
    DATA_CHG_TIME   CHAR(14),
    DATA_APV_USER   VARCHAR2(20),
    DATA_APV_DATE   CHAR(8),
    DATA_APV_TIME   CHAR(14),
    RSV1            VARCHAR2(180),
    RSV2            VARCHAR2(180),
    RSV3            VARCHAR2(180),
    RSV4            VARCHAR2(180),
    RSV5            VARCHAR2(180)
)
/

comment on table GFDR_PM_FTYKHX is '非同业单位客户基础信息'
/

comment on column GFDR_PM_FTYKHX.DATA_ID is '数据ID'
/

comment on column GFDR_PM_FTYKHX.DATA_DATE is '数据日期'
/

comment on column GFDR_PM_FTYKHX.DATA_RPT_DATE is '报表日期'
/

comment on column GFDR_PM_FTYKHX.CORP_ID is '法人机构号'
/

comment on column GFDR_PM_FTYKHX.ORG_ID is '机构号'
/

comment on column GFDR_PM_FTYKHX.GROUP_ID is '部门编号'
/

comment on column GFDR_PM_FTYKHX.INQ_ORG_ID is '查询机构号'
/

comment on column GFDR_PM_FTYKHX.INQ_GROUP_ID is '查询组号'
/

comment on column GFDR_PM_FTYKHX.JRJGDM is '金融机构代码'
/

comment on column GFDR_PM_FTYKHX.KHMC is '客户名称'
/

comment on column GFDR_PM_FTYKHX.KHZJLX is '客户证件类型'
/

comment on column GFDR_PM_FTYKHX.KHZJDM is '客户证件代码'
/

comment on column GFDR_PM_FTYKHX.JBCKZH is '基本存款账号'
/

comment on column GFDR_PM_FTYKHX.JBZHKHHMC is '基本账户开户行名称'
/

comment on column GFDR_PM_FTYKHX.JYFW is '经营范围'
/

comment on column GFDR_PM_FTYKHX.ZCZB is '注册资本'
/

comment on column GFDR_PM_FTYKHX.SSZB is '实收资本'
/

comment on column GFDR_PM_FTYKHX.ZZC_AMT is '总资产'
/

comment on column GFDR_PM_FTYKHX.YYSR is '营业收入'
/

comment on column GFDR_PM_FTYKHX.CYRYS is '从业人员数'
/

comment on column GFDR_PM_FTYKHX.SFSSGS is '是否上市公司'
/

comment on column GFDR_PM_FTYKHX.SCJLXDGXRQ_DATE is '首次建立信贷关系日期'
/

comment on column GFDR_PM_FTYKHX.ZCDZ is '注册地址'
/

comment on column GFDR_PM_FTYKHX.DQDM is '地区代码'
/

comment on column GFDR_PM_FTYKHX.JYZT is '经营状态'
/

comment on column GFDR_PM_FTYKHX.CLRQ_DATE is '成立日期'
/

comment on column GFDR_PM_FTYKHX.SSHY is '所属行业'
/

comment on column GFDR_PM_FTYKHX.QYGM is '企业规模'
/

comment on column GFDR_PM_FTYKHX.KHJJCF is '客户经济成分'
/

comment on column GFDR_PM_FTYKHX.KHGMJJBM is '客户国民经济部门'
/

comment on column GFDR_PM_FTYKHX.SXED_AMT is '授信额度'
/

comment on column GFDR_PM_FTYKHX.YYED_AMT is '已用额度'
/

comment on column GFDR_PM_FTYKHX.SFGLF is '是否关联方'
/

comment on column GFDR_PM_FTYKHX.SJKZRZJLX is '实际控制人证件类型'
/

comment on column GFDR_PM_FTYKHX.SJKZRZJDM is '实际控制人证件代码'
/

comment on column GFDR_PM_FTYKHX.KHXYJBZDJS is '客户信用级别总等级数'
/

comment on column GFDR_PM_FTYKHX.KHXYPJ is '客户信用评级'
/

comment on column GFDR_PM_FTYKHX.REMARKS is '备注'
/

comment on column GFDR_PM_FTYKHX.CHECK_FLAG is '校验标识'
/

comment on column GFDR_PM_FTYKHX.CHECK_DESC is '校验结果'
/

comment on column GFDR_PM_FTYKHX.CHECK_ERR_TYPE is '校验失败类型'
/

comment on column GFDR_PM_FTYKHX.NEXT_ACTION is '下一动作'
/

comment on column GFDR_PM_FTYKHX.DATA_STATUS is '数据状态'
/

comment on column GFDR_PM_FTYKHX.DATA_FLAG is '数据是否已删除'
/

comment on column GFDR_PM_FTYKHX.DATA_SOURCE is '数据来源'
/

comment on column GFDR_PM_FTYKHX.DATA_VERSION is '数据版本'
/

comment on column GFDR_PM_FTYKHX.DATA_REJ_DESC is '数据审核拒绝原因'
/

comment on column GFDR_PM_FTYKHX.DATA_DEL_DESC is '数据删除描述'
/

comment on column GFDR_PM_FTYKHX.DATA_CRT_USER is '数据创建/导入用户'
/

comment on column GFDR_PM_FTYKHX.DATA_CRT_DATE is '数据创建/导入日期'
/

comment on column GFDR_PM_FTYKHX.DATA_CRT_TIME is '数据创建/导入时间'
/

comment on column GFDR_PM_FTYKHX.DATA_CHG_USER is '数据修改/删除用户'
/

comment on column GFDR_PM_FTYKHX.DATA_CHG_DATE is '数据修改/删除日期'
/

comment on column GFDR_PM_FTYKHX.DATA_CHG_TIME is '数据修改/删除时间'
/

comment on column GFDR_PM_FTYKHX.DATA_APV_USER is '数据审核/拒绝用户'
/

comment on column GFDR_PM_FTYKHX.DATA_APV_DATE is '数据审核/拒绝日期'
/

comment on column GFDR_PM_FTYKHX.DATA_APV_TIME is '数据审核/拒绝时间'
/

comment on column GFDR_PM_FTYKHX.RSV1 is '备用1'
/

comment on column GFDR_PM_FTYKHX.RSV2 is '备用2'
/

comment on column GFDR_PM_FTYKHX.RSV3 is '备用3'
/

comment on column GFDR_PM_FTYKHX.RSV4 is '备用4'
/

comment on column GFDR_PM_FTYKHX.RSV5 is '备用5'
/

create unique index U_FTYKHX
    on GFDR_PM_FTYKHX (DATA_RPT_DATE, JRJGDM, KHZJLX, KHZJDM)
/

create table GFDR_PM_JRJGFR
(
    DATA_ID        VARCHAR2(64) not null
        primary key,
    DATA_DATE      CHAR(8),
    DATA_RPT_DATE  CHAR(8),
    CORP_ID        VARCHAR2(14),
    ORG_ID         VARCHAR2(14),
    GROUP_ID       VARCHAR2(14),
    INQ_ORG_ID     VARCHAR2(32),
    INQ_GROUP_ID   VARCHAR2(32),
    JRJGDM         VARCHAR2(60),
    JCXXLX         VARCHAR2(128),
    ZBBM           CHAR(8),
    ZBMC           VARCHAR2(128),
    ZBZ            VARCHAR2(512),
    REMARKS        VARCHAR2(14),
    CHECK_FLAG     CHAR,
    CHECK_DESC     VARCHAR2(3072),
    CHECK_ERR_TYPE CHAR,
    NEXT_ACTION    CHAR(2),
    DATA_STATUS    CHAR(2),
    DATA_FLAG      CHAR,
    DATA_SOURCE    CHAR,
    DATA_VERSION   NUMBER(8),
    DATA_REJ_DESC  VARCHAR2(128),
    DATA_DEL_DESC  VARCHAR2(128),
    DATA_CRT_USER  VARCHAR2(20),
    DATA_CRT_DATE  CHAR(8),
    DATA_CRT_TIME  CHAR(14),
    DATA_CHG_USER  VARCHAR2(20),
    DATA_CHG_DATE  CHAR(8),
    DATA_CHG_TIME  CHAR(14),
    DATA_APV_USER  VARCHAR2(20),
    DATA_APV_DATE  CHAR(8),
    DATA_APV_TIME  CHAR(14),
    RSV1           VARCHAR2(180),
    RSV2           VARCHAR2(180),
    RSV3           VARCHAR2(180),
    RSV4           VARCHAR2(180),
    RSV5           VARCHAR2(180)
)
/

comment on table GFDR_PM_JRJGFR is '金融机构法人基础信息'
/

comment on column GFDR_PM_JRJGFR.DATA_ID is '数据ID'
/

comment on column GFDR_PM_JRJGFR.DATA_DATE is '数据日期'
/

comment on column GFDR_PM_JRJGFR.DATA_RPT_DATE is '报表日期'
/

comment on column GFDR_PM_JRJGFR.CORP_ID is '法人机构号'
/

comment on column GFDR_PM_JRJGFR.ORG_ID is '机构号'
/

comment on column GFDR_PM_JRJGFR.GROUP_ID is '部门编号'
/

comment on column GFDR_PM_JRJGFR.INQ_ORG_ID is '查询机构号'
/

comment on column GFDR_PM_JRJGFR.INQ_GROUP_ID is '查询组号'
/

comment on column GFDR_PM_JRJGFR.JRJGDM is '金融机构代码'
/

comment on column GFDR_PM_JRJGFR.JCXXLX is '基础信息类型'
/

comment on column GFDR_PM_JRJGFR.ZBBM is '指标编码'
/

comment on column GFDR_PM_JRJGFR.ZBMC is '指标名称'
/

comment on column GFDR_PM_JRJGFR.ZBZ is '指标值'
/

comment on column GFDR_PM_JRJGFR.REMARKS is '备注'
/

comment on column GFDR_PM_JRJGFR.CHECK_FLAG is '校验标识'
/

comment on column GFDR_PM_JRJGFR.CHECK_DESC is '校验结果'
/

comment on column GFDR_PM_JRJGFR.CHECK_ERR_TYPE is '校验失败类型'
/

comment on column GFDR_PM_JRJGFR.NEXT_ACTION is '下一动作'
/

comment on column GFDR_PM_JRJGFR.DATA_STATUS is '数据状态'
/

comment on column GFDR_PM_JRJGFR.DATA_FLAG is '数据是否已删除'
/

comment on column GFDR_PM_JRJGFR.DATA_SOURCE is '数据来源'
/

comment on column GFDR_PM_JRJGFR.DATA_VERSION is '数据版本'
/

comment on column GFDR_PM_JRJGFR.DATA_REJ_DESC is '数据审核拒绝原因'
/

comment on column GFDR_PM_JRJGFR.DATA_DEL_DESC is '数据删除描述'
/

comment on column GFDR_PM_JRJGFR.DATA_CRT_USER is '数据创建/导入用户'
/

comment on column GFDR_PM_JRJGFR.DATA_CRT_DATE is '数据创建/导入日期'
/

comment on column GFDR_PM_JRJGFR.DATA_CRT_TIME is '数据创建/导入时间'
/

comment on column GFDR_PM_JRJGFR.DATA_CHG_USER is '数据修改/删除用户'
/

comment on column GFDR_PM_JRJGFR.DATA_CHG_DATE is '数据修改/删除日期'
/

comment on column GFDR_PM_JRJGFR.DATA_CHG_TIME is '数据修改/删除时间'
/

comment on column GFDR_PM_JRJGFR.DATA_APV_USER is '数据审核/拒绝用户'
/

comment on column GFDR_PM_JRJGFR.DATA_APV_DATE is '数据审核/拒绝日期'
/

comment on column GFDR_PM_JRJGFR.DATA_APV_TIME is '数据审核/拒绝时间'
/

comment on column GFDR_PM_JRJGFR.RSV1 is '备用1'
/

comment on column GFDR_PM_JRJGFR.RSV2 is '备用2'
/

comment on column GFDR_PM_JRJGFR.RSV3 is '备用3'
/

comment on column GFDR_PM_JRJGFR.RSV4 is '备用4'
/

comment on column GFDR_PM_JRJGFR.RSV5 is '备用5'
/

create unique index U_JRJGFR
    on GFDR_PM_JRJGFR (DATA_RPT_DATE, JRJGDM, JCXXLX, ZBBM)
/

create table GFDR_PM_JRJGFZ
(
    DATA_ID        VARCHAR2(64) not null
        primary key,
    DATA_DATE      CHAR(8),
    DATA_RPT_DATE  CHAR(8),
    CORP_ID        VARCHAR2(14),
    ORG_ID         VARCHAR2(14),
    GROUP_ID       VARCHAR2(14),
    INQ_ORG_ID     VARCHAR2(32),
    INQ_GROUP_ID   VARCHAR2(32),
    JRJGMC         VARCHAR2(200),
    JRJGDM         VARCHAR2(18),
    JRJGBM         CHAR(14),
    NBJGH          VARCHAR2(30),
    XKZH           VARCHAR2(30),
    ZFHH           VARCHAR2(30),
    JGJB           CHAR(2),
    ZSSJGLJGMC     VARCHAR2(200),
    ZSSJGLJGJRJGBM CHAR(14),
    ZSSJGLJGNBJGH  VARCHAR2(30),
    ZCDZ           VARCHAR2(400),
    DQDM           CHAR(6),
    CLSJ_DATE      CHAR(8),
    YYZT           CHAR(2),
    REMARKS        VARCHAR2(14),
    CHECK_FLAG     CHAR,
    CHECK_DESC     VARCHAR2(3072),
    CHECK_ERR_TYPE CHAR,
    NEXT_ACTION    CHAR(2),
    DATA_STATUS    CHAR(2),
    DATA_FLAG      CHAR,
    DATA_SOURCE    CHAR,
    DATA_VERSION   NUMBER(8),
    DATA_REJ_DESC  VARCHAR2(128),
    DATA_DEL_DESC  VARCHAR2(128),
    DATA_CRT_USER  VARCHAR2(20),
    DATA_CRT_DATE  CHAR(8),
    DATA_CRT_TIME  CHAR(14),
    DATA_CHG_USER  VARCHAR2(20),
    DATA_CHG_DATE  CHAR(8),
    DATA_CHG_TIME  CHAR(14),
    DATA_APV_USER  VARCHAR2(20),
    DATA_APV_DATE  CHAR(8),
    DATA_APV_TIME  CHAR(14),
    RSV1           VARCHAR2(180),
    RSV2           VARCHAR2(180),
    RSV3           VARCHAR2(180),
    RSV4           VARCHAR2(180),
    RSV5           VARCHAR2(180)
)
/

comment on table GFDR_PM_JRJGFZ is '金融机构分支机构基础信息'
/

comment on column GFDR_PM_JRJGFZ.DATA_ID is '数据ID'
/

comment on column GFDR_PM_JRJGFZ.DATA_DATE is '数据日期'
/

comment on column GFDR_PM_JRJGFZ.DATA_RPT_DATE is '报表日期'
/

comment on column GFDR_PM_JRJGFZ.CORP_ID is '法人机构号'
/

comment on column GFDR_PM_JRJGFZ.ORG_ID is '机构号'
/

comment on column GFDR_PM_JRJGFZ.GROUP_ID is '部门编号'
/

comment on column GFDR_PM_JRJGFZ.INQ_ORG_ID is '查询机构号'
/

comment on column GFDR_PM_JRJGFZ.INQ_GROUP_ID is '查询组号'
/

comment on column GFDR_PM_JRJGFZ.JRJGMC is '金融机构名称'
/

comment on column GFDR_PM_JRJGFZ.JRJGDM is '金融机构代码'
/

comment on column GFDR_PM_JRJGFZ.JRJGBM is '金融机构编码'
/

comment on column GFDR_PM_JRJGFZ.NBJGH is '内部机构号'
/

comment on column GFDR_PM_JRJGFZ.XKZH is '许可证号'
/

comment on column GFDR_PM_JRJGFZ.ZFHH is '支付行号'
/

comment on column GFDR_PM_JRJGFZ.JGJB is '机构级别'
/

comment on column GFDR_PM_JRJGFZ.ZSSJGLJGMC is '直属上级管理机构名称'
/

comment on column GFDR_PM_JRJGFZ.ZSSJGLJGJRJGBM is '直属上级管理机构金融机构编码'
/

comment on column GFDR_PM_JRJGFZ.ZSSJGLJGNBJGH is '直属上级管理机构内部机构号'
/

comment on column GFDR_PM_JRJGFZ.ZCDZ is '注册地址'
/

comment on column GFDR_PM_JRJGFZ.DQDM is '地区代码'
/

comment on column GFDR_PM_JRJGFZ.CLSJ_DATE is '成立时间'
/

comment on column GFDR_PM_JRJGFZ.YYZT is '营业状态'
/

comment on column GFDR_PM_JRJGFZ.REMARKS is '备注'
/

comment on column GFDR_PM_JRJGFZ.CHECK_FLAG is '校验标识'
/

comment on column GFDR_PM_JRJGFZ.CHECK_DESC is '校验结果'
/

comment on column GFDR_PM_JRJGFZ.CHECK_ERR_TYPE is '校验失败类型'
/

comment on column GFDR_PM_JRJGFZ.NEXT_ACTION is '下一动作'
/

comment on column GFDR_PM_JRJGFZ.DATA_STATUS is '数据状态'
/

comment on column GFDR_PM_JRJGFZ.DATA_FLAG is '数据是否已删除'
/

comment on column GFDR_PM_JRJGFZ.DATA_SOURCE is '数据来源'
/

comment on column GFDR_PM_JRJGFZ.DATA_VERSION is '数据版本'
/

comment on column GFDR_PM_JRJGFZ.DATA_REJ_DESC is '数据审核拒绝原因'
/

comment on column GFDR_PM_JRJGFZ.DATA_DEL_DESC is '数据删除描述'
/

comment on column GFDR_PM_JRJGFZ.DATA_CRT_USER is '数据创建/导入用户'
/

comment on column GFDR_PM_JRJGFZ.DATA_CRT_DATE is '数据创建/导入日期'
/

comment on column GFDR_PM_JRJGFZ.DATA_CRT_TIME is '数据创建/导入时间'
/

comment on column GFDR_PM_JRJGFZ.DATA_CHG_USER is '数据修改/删除用户'
/

comment on column GFDR_PM_JRJGFZ.DATA_CHG_DATE is '数据修改/删除日期'
/

comment on column GFDR_PM_JRJGFZ.DATA_CHG_TIME is '数据修改/删除时间'
/

comment on column GFDR_PM_JRJGFZ.DATA_APV_USER is '数据审核/拒绝用户'
/

comment on column GFDR_PM_JRJGFZ.DATA_APV_DATE is '数据审核/拒绝日期'
/

comment on column GFDR_PM_JRJGFZ.DATA_APV_TIME is '数据审核/拒绝时间'
/

comment on column GFDR_PM_JRJGFZ.RSV1 is '备用1'
/

comment on column GFDR_PM_JRJGFZ.RSV2 is '备用2'
/

comment on column GFDR_PM_JRJGFZ.RSV3 is '备用3'
/

comment on column GFDR_PM_JRJGFZ.RSV4 is '备用4'
/

comment on column GFDR_PM_JRJGFZ.RSV5 is '备用5'
/

create unique index U_JRJGFZ
    on GFDR_PM_JRJGFZ (DATA_RPT_DATE, JRJGDM, NBJGH)
/

create table GP_BM_AUDIT_LOG
(
    DATA_ID           VARCHAR2(64) not null
        primary key,
    FUNC_ID           VARCHAR2(20) not null,
    FUNC_NAME         VARCHAR2(60),
    ORG_ID            VARCHAR2(14),
    DEPART_ID         VARCHAR2(14),
    WORK_DATE         VARCHAR2(8),
    TLRNO             VARCHAR2(20),
    OP_TYPE           VARCHAR2(10),
    VALUE_OBJECT_NAME VARCHAR2(128),
    VALUE_BEFORE      CLOB,
    VALUE_AFTER       CLOB,
    VALUE_META        CLOB,
    OP_TIME           VARCHAR2(20),
    IP                VARCHAR2(64),
    RSV1              VARCHAR2(180),
    RSV2              VARCHAR2(180),
    RSV3              VARCHAR2(180),
    RSV4              VARCHAR2(180),
    RSV5              VARCHAR2(180)
)
/

comment on table GP_BM_AUDIT_LOG is '审计日志表'
/

comment on column GP_BM_AUDIT_LOG.DATA_ID is '数据ID'
/

comment on column GP_BM_AUDIT_LOG.FUNC_ID is '菜单号'
/

comment on column GP_BM_AUDIT_LOG.FUNC_NAME is '菜单名'
/

comment on column GP_BM_AUDIT_LOG.ORG_ID is '机构ID'
/

comment on column GP_BM_AUDIT_LOG.DEPART_ID is '部门号'
/

comment on column GP_BM_AUDIT_LOG.WORK_DATE is '工作日期'
/

comment on column GP_BM_AUDIT_LOG.TLRNO is '操作员号'
/

comment on column GP_BM_AUDIT_LOG.OP_TYPE is '操作类型'
/

comment on column GP_BM_AUDIT_LOG.VALUE_OBJECT_NAME is '数据对象名'
/

comment on column GP_BM_AUDIT_LOG.VALUE_BEFORE is '修改前的值'
/

comment on column GP_BM_AUDIT_LOG.VALUE_AFTER is '修改后的值'
/

comment on column GP_BM_AUDIT_LOG.VALUE_META is '操作数据元数据'
/

comment on column GP_BM_AUDIT_LOG.OP_TIME is '修改时间'
/

comment on column GP_BM_AUDIT_LOG.IP is '操作员IP'
/

comment on column GP_BM_AUDIT_LOG.RSV1 is '备用1'
/

comment on column GP_BM_AUDIT_LOG.RSV2 is '备用2'
/

comment on column GP_BM_AUDIT_LOG.RSV3 is '备用3'
/

comment on column GP_BM_AUDIT_LOG.RSV4 is '备用4'
/

comment on column GP_BM_AUDIT_LOG.RSV5 is '备用5'
/

create table GP_BM_BATCH_DATE
(
    DATA_ID        VARCHAR2(64) not null,
    DATA_DATE      CHAR(8),
    CORP_ID        VARCHAR2(14),
    ORG_ID         VARCHAR2(14),
    GROUP_ID       VARCHAR2(14),
    BATCH_MODULE   VARCHAR2(32),
    BATCH_YEAR     NUMBER(8),
    BATCH_MONTH    VARCHAR2(8),
    BATCH_DATE     VARCHAR2(8),
    NEXT_ACTION    CHAR(2),
    DATA_STATUS    CHAR(2),
    DATA_FLAG      CHAR,
    DATA_SOURCE    CHAR,
    CHECK_FLAG     CHAR,
    CHECK_DESC     VARCHAR2(512),
    CHECK_ERR_TYPE CHAR,
    DATA_VERSION   NUMBER(8),
    DATA_REJ_DESC  VARCHAR2(128),
    DATA_DEL_DESC  VARCHAR2(128),
    DATA_CRT_USER  VARCHAR2(20),
    DATA_CRT_DATE  CHAR(8),
    DATA_CRT_TIME  CHAR(14),
    DATA_CHG_USER  VARCHAR2(20),
    DATA_CHG_DATE  CHAR(8),
    DATA_CHG_TIME  CHAR(14),
    DATA_APV_USER  VARCHAR2(20),
    DATA_APV_DATE  CHAR(8),
    DATA_APV_TIME  CHAR(14),
    RSV1           VARCHAR2(180),
    RSV2           VARCHAR2(180),
    RSV3           VARCHAR2(180),
    RSV4           VARCHAR2(180),
    RSV5           VARCHAR2(180),
    REMARKS        VARCHAR2(180)
)
/

comment on table GP_BM_BATCH_DATE is '批量日期表'
/

comment on column GP_BM_BATCH_DATE.DATA_ID is '数据ID'
/

comment on column GP_BM_BATCH_DATE.DATA_DATE is '数据日期'
/

comment on column GP_BM_BATCH_DATE.CORP_ID is '法人机构号'
/

comment on column GP_BM_BATCH_DATE.ORG_ID is '机构号'
/

comment on column GP_BM_BATCH_DATE.GROUP_ID is '部门编号'
/

comment on column GP_BM_BATCH_DATE.BATCH_MODULE is '跑批模块'
/

comment on column GP_BM_BATCH_DATE.BATCH_YEAR is '跑批日期'
/

comment on column GP_BM_BATCH_DATE.NEXT_ACTION is '下一动作'
/

comment on column GP_BM_BATCH_DATE.DATA_STATUS is '数据状态'
/

comment on column GP_BM_BATCH_DATE.DATA_FLAG is '数据是否已删除'
/

comment on column GP_BM_BATCH_DATE.DATA_SOURCE is '数据来源'
/

comment on column GP_BM_BATCH_DATE.CHECK_FLAG is '校验标识'
/

comment on column GP_BM_BATCH_DATE.CHECK_DESC is '校验结果'
/

comment on column GP_BM_BATCH_DATE.CHECK_ERR_TYPE is '校验失败类型'
/

comment on column GP_BM_BATCH_DATE.DATA_VERSION is '数据版本'
/

comment on column GP_BM_BATCH_DATE.DATA_REJ_DESC is '数据审核拒绝原因'
/

comment on column GP_BM_BATCH_DATE.DATA_DEL_DESC is '数据删除描述'
/

comment on column GP_BM_BATCH_DATE.DATA_CRT_USER is '数据创建/导入用户'
/

comment on column GP_BM_BATCH_DATE.DATA_CRT_DATE is '数据创建/导入日期'
/

comment on column GP_BM_BATCH_DATE.DATA_CRT_TIME is '数据创建/导入时间'
/

comment on column GP_BM_BATCH_DATE.DATA_CHG_USER is '数据修改/删除用户'
/

comment on column GP_BM_BATCH_DATE.DATA_CHG_DATE is '数据修改/删除日期'
/

comment on column GP_BM_BATCH_DATE.DATA_CHG_TIME is '数据修改/删除时间'
/

comment on column GP_BM_BATCH_DATE.DATA_APV_USER is '数据审核/拒绝用户'
/

comment on column GP_BM_BATCH_DATE.DATA_APV_DATE is '数据审核/拒绝日期'
/

comment on column GP_BM_BATCH_DATE.DATA_APV_TIME is '数据审核/拒绝时间'
/

comment on column GP_BM_BATCH_DATE.RSV1 is '备用1'
/

comment on column GP_BM_BATCH_DATE.RSV2 is '备用2'
/

comment on column GP_BM_BATCH_DATE.RSV3 is '备用3'
/

comment on column GP_BM_BATCH_DATE.RSV4 is '备用4'
/

comment on column GP_BM_BATCH_DATE.RSV5 is '备用5'
/

comment on column GP_BM_BATCH_DATE.REMARKS is '备注'
/

create table GP_BM_BATCH_HOLIDAY
(
    DATA_ID        VARCHAR2(64) not null,
    DATA_DATE      CHAR(8),
    CORP_ID        VARCHAR2(14),
    ORG_ID         VARCHAR2(14),
    GROUP_ID       VARCHAR2(14),
    BATCH_MODULE   VARCHAR2(32),
    YEAR           NUMBER(8),
    HOLIDAY_DEF    VARCHAR2(366),
    LAST_UPD_TIME  CHAR(14),
    NEXT_ACTION    CHAR(2),
    DATA_STATUS    CHAR(2),
    DATA_FLAG      CHAR,
    DATA_SOURCE    CHAR,
    CHECK_FLAG     CHAR,
    CHECK_DESC     VARCHAR2(512),
    CHECK_ERR_TYPE CHAR,
    DATA_VERSION   NUMBER(8),
    DATA_REJ_DESC  VARCHAR2(128),
    DATA_DEL_DESC  VARCHAR2(128),
    DATA_CRT_USER  VARCHAR2(20),
    DATA_CRT_DATE  CHAR(8),
    DATA_CRT_TIME  CHAR(14),
    DATA_CHG_USER  VARCHAR2(20),
    DATA_CHG_DATE  CHAR(8),
    DATA_CHG_TIME  CHAR(14),
    DATA_APV_USER  VARCHAR2(20),
    DATA_APV_DATE  CHAR(8),
    DATA_APV_TIME  CHAR(14),
    RSV1           VARCHAR2(180),
    RSV2           VARCHAR2(180),
    RSV3           VARCHAR2(180),
    RSV4           VARCHAR2(180),
    RSV5           VARCHAR2(180),
    REMARKS        VARCHAR2(180)
)
/

comment on table GP_BM_BATCH_HOLIDAY is '批量节假日表'
/

comment on column GP_BM_BATCH_HOLIDAY.DATA_ID is '数据ID'
/

comment on column GP_BM_BATCH_HOLIDAY.DATA_DATE is '数据日期'
/

comment on column GP_BM_BATCH_HOLIDAY.CORP_ID is '法人机构号'
/

comment on column GP_BM_BATCH_HOLIDAY.ORG_ID is '机构号'
/

comment on column GP_BM_BATCH_HOLIDAY.GROUP_ID is '部门编号'
/

comment on column GP_BM_BATCH_HOLIDAY.BATCH_MODULE is '跑批模块'
/

comment on column GP_BM_BATCH_HOLIDAY.YEAR is '年'
/

comment on column GP_BM_BATCH_HOLIDAY.NEXT_ACTION is '下一动作'
/

comment on column GP_BM_BATCH_HOLIDAY.DATA_STATUS is '数据状态'
/

comment on column GP_BM_BATCH_HOLIDAY.DATA_FLAG is '数据是否已删除'
/

comment on column GP_BM_BATCH_HOLIDAY.DATA_SOURCE is '数据来源'
/

comment on column GP_BM_BATCH_HOLIDAY.CHECK_FLAG is '校验标识'
/

comment on column GP_BM_BATCH_HOLIDAY.CHECK_DESC is '校验结果'
/

comment on column GP_BM_BATCH_HOLIDAY.CHECK_ERR_TYPE is '校验失败类型'
/

comment on column GP_BM_BATCH_HOLIDAY.DATA_VERSION is '数据版本'
/

comment on column GP_BM_BATCH_HOLIDAY.DATA_REJ_DESC is '数据审核拒绝原因'
/

comment on column GP_BM_BATCH_HOLIDAY.DATA_DEL_DESC is '数据删除描述'
/

comment on column GP_BM_BATCH_HOLIDAY.DATA_CRT_USER is '数据创建/导入用户'
/

comment on column GP_BM_BATCH_HOLIDAY.DATA_CRT_DATE is '数据创建/导入日期'
/

comment on column GP_BM_BATCH_HOLIDAY.DATA_CRT_TIME is '数据创建/导入时间'
/

comment on column GP_BM_BATCH_HOLIDAY.DATA_CHG_USER is '数据修改/删除用户'
/

comment on column GP_BM_BATCH_HOLIDAY.DATA_CHG_DATE is '数据修改/删除日期'
/

comment on column GP_BM_BATCH_HOLIDAY.DATA_CHG_TIME is '数据修改/删除时间'
/

comment on column GP_BM_BATCH_HOLIDAY.DATA_APV_USER is '数据审核/拒绝用户'
/

comment on column GP_BM_BATCH_HOLIDAY.DATA_APV_DATE is '数据审核/拒绝日期'
/

comment on column GP_BM_BATCH_HOLIDAY.DATA_APV_TIME is '数据审核/拒绝时间'
/

comment on column GP_BM_BATCH_HOLIDAY.RSV1 is '备用1'
/

comment on column GP_BM_BATCH_HOLIDAY.RSV2 is '备用2'
/

comment on column GP_BM_BATCH_HOLIDAY.RSV3 is '备用3'
/

comment on column GP_BM_BATCH_HOLIDAY.RSV4 is '备用4'
/

comment on column GP_BM_BATCH_HOLIDAY.RSV5 is '备用5'
/

comment on column GP_BM_BATCH_HOLIDAY.REMARKS is '备注'
/

create table GP_BM_BIZ_LOG
(
    DATA_ID        VARCHAR2(64) not null,
    DATA_DATE      CHAR(8),
    CORP_ID        VARCHAR2(14),
    ORG_ID         VARCHAR2(14),
    GROUP_ID       VARCHAR2(14),
    TXN_DATE       CHAR(8),
    TXN_START_TIME CHAR(14),
    TXN_END_TIME   CHAR(14),
    TXN_RUN_TIME   CHAR(14),
    BRCODE         VARCHAR2(20),
    OP_TYPE        VARCHAR2(20),
    OPRCODE        VARCHAR2(20),
    IP_ADR         VARCHAR2(20),
    FUNCID         VARCHAR2(20),
    OPRTXNCD       VARCHAR2(100),
    TXN_BIZ_LOG1   VARCHAR2(2048),
    TXN_BIZ_LOG2   VARCHAR2(2048),
    TXN_STATUS     CHAR(2),
    TXN_FAIL_LOG   VARCHAR2(4000),
    NEXT_ACTION    CHAR(2),
    DATA_STATUS    CHAR(2),
    DATA_FLAG      CHAR,
    DATA_SOURCE    CHAR,
    CHECK_FLAG     CHAR,
    CHECK_DESC     VARCHAR2(512),
    CHECK_ERR_TYPE CHAR,
    DATA_VERSION   NUMBER(8),
    DATA_REJ_DESC  VARCHAR2(128),
    DATA_DEL_DESC  VARCHAR2(128),
    DATA_CRT_USER  VARCHAR2(20),
    DATA_CRT_DATE  CHAR(8),
    DATA_CRT_TIME  CHAR(14),
    DATA_CHG_USER  VARCHAR2(20),
    DATA_CHG_DATE  CHAR(8),
    DATA_CHG_TIME  CHAR(14),
    DATA_APV_USER  VARCHAR2(20),
    DATA_APV_DATE  CHAR(8),
    DATA_APV_TIME  CHAR(14),
    RSV1           VARCHAR2(180),
    RSV2           VARCHAR2(180),
    RSV3           VARCHAR2(180),
    RSV4           VARCHAR2(180),
    RSV5           VARCHAR2(180),
    REMARKS        VARCHAR2(180),
    REF_ID         VARCHAR2(128)
)
/

comment on table GP_BM_BIZ_LOG is '操作日志表'
/

comment on column GP_BM_BIZ_LOG.DATA_ID is '数据ID'
/

comment on column GP_BM_BIZ_LOG.DATA_DATE is '数据日期'
/

comment on column GP_BM_BIZ_LOG.CORP_ID is '法人机构号'
/

comment on column GP_BM_BIZ_LOG.ORG_ID is '机构号'
/

comment on column GP_BM_BIZ_LOG.GROUP_ID is '部门编号'
/

comment on column GP_BM_BIZ_LOG.TXN_DATE is '交易日期'
/

comment on column GP_BM_BIZ_LOG.TXN_START_TIME is '交易开始时间'
/

comment on column GP_BM_BIZ_LOG.TXN_END_TIME is '交易结束时间'
/

comment on column GP_BM_BIZ_LOG.TXN_RUN_TIME is '交易执行时间'
/

comment on column GP_BM_BIZ_LOG.BRCODE is '交易机构'
/

comment on column GP_BM_BIZ_LOG.OP_TYPE is '操作类型'
/

comment on column GP_BM_BIZ_LOG.OPRCODE is '交易操作员'
/

comment on column GP_BM_BIZ_LOG.IP_ADR is 'IP'
/

comment on column GP_BM_BIZ_LOG.FUNCID is '交易码'
/

comment on column GP_BM_BIZ_LOG.OPRTXNCD is '操作码'
/

comment on column GP_BM_BIZ_LOG.TXN_BIZ_LOG1 is '操作日志1'
/

comment on column GP_BM_BIZ_LOG.TXN_BIZ_LOG2 is '操作日志2'
/

comment on column GP_BM_BIZ_LOG.TXN_STATUS is '交易状态'
/

comment on column GP_BM_BIZ_LOG.TXN_FAIL_LOG is '失败信息'
/

comment on column GP_BM_BIZ_LOG.NEXT_ACTION is '下一动作'
/

comment on column GP_BM_BIZ_LOG.DATA_STATUS is '数据状态'
/

comment on column GP_BM_BIZ_LOG.DATA_FLAG is '数据是否已删除'
/

comment on column GP_BM_BIZ_LOG.DATA_SOURCE is '数据来源'
/

comment on column GP_BM_BIZ_LOG.CHECK_FLAG is '校验标识'
/

comment on column GP_BM_BIZ_LOG.CHECK_DESC is '校验结果'
/

comment on column GP_BM_BIZ_LOG.CHECK_ERR_TYPE is '校验失败类型'
/

comment on column GP_BM_BIZ_LOG.DATA_VERSION is '数据版本'
/

comment on column GP_BM_BIZ_LOG.DATA_REJ_DESC is '数据审核拒绝原因'
/

comment on column GP_BM_BIZ_LOG.DATA_DEL_DESC is '数据删除描述'
/

comment on column GP_BM_BIZ_LOG.DATA_CRT_USER is '数据创建/导入用户'
/

comment on column GP_BM_BIZ_LOG.DATA_CRT_DATE is '数据创建/导入日期'
/

comment on column GP_BM_BIZ_LOG.DATA_CRT_TIME is '数据创建/导入时间'
/

comment on column GP_BM_BIZ_LOG.DATA_CHG_USER is '数据修改/删除用户'
/

comment on column GP_BM_BIZ_LOG.DATA_CHG_DATE is '数据修改/删除日期'
/

comment on column GP_BM_BIZ_LOG.DATA_CHG_TIME is '数据修改/删除时间'
/

comment on column GP_BM_BIZ_LOG.DATA_APV_USER is '数据审核/拒绝用户'
/

comment on column GP_BM_BIZ_LOG.DATA_APV_DATE is '数据审核/拒绝日期'
/

comment on column GP_BM_BIZ_LOG.DATA_APV_TIME is '数据审核/拒绝时间'
/

comment on column GP_BM_BIZ_LOG.RSV1 is '备用1'
/

comment on column GP_BM_BIZ_LOG.RSV2 is '备用2'
/

comment on column GP_BM_BIZ_LOG.RSV3 is '备用3'
/

comment on column GP_BM_BIZ_LOG.RSV4 is '备用4'
/

comment on column GP_BM_BIZ_LOG.RSV5 is '备用5'
/

comment on column GP_BM_BIZ_LOG.REMARKS is '备注'
/

comment on column GP_BM_BIZ_LOG.REF_ID is '业务关联ID'
/

create table GP_BM_BMS_BATCH
(
    DATA_ID        VARCHAR2(64) not null
        primary key,
    DATA_DATE      CHAR(8),
    CORP_ID        VARCHAR2(14),
    ORG_ID         VARCHAR2(14),
    GROUP_ID       VARCHAR2(14),
    BATCH_NAME     VARCHAR2(60),
    RUN_PLAN       VARCHAR2(18),
    STATUS         CHAR,
    CFG_STATUS     CHAR,
    NEXT_TIME      CHAR(14),
    LAST_TIME      CHAR(14),
    NEXT_ACTION    CHAR(2),
    DATA_STATUS    CHAR(2),
    DATA_FLAG      CHAR,
    DATA_SOURCE    CHAR,
    CHECK_FLAG     CHAR,
    CHECK_DESC     VARCHAR2(512),
    CHECK_ERR_TYPE CHAR,
    DATA_VERSION   NUMBER(8),
    DATA_REJ_DESC  VARCHAR2(128),
    DATA_DEL_DESC  VARCHAR2(128),
    DATA_CRT_USER  VARCHAR2(20),
    DATA_CRT_DATE  CHAR(8),
    DATA_CRT_TIME  CHAR(14),
    DATA_CHG_USER  VARCHAR2(20),
    DATA_CHG_DATE  CHAR(8),
    DATA_CHG_TIME  CHAR(14),
    DATA_APV_USER  VARCHAR2(20),
    DATA_APV_DATE  CHAR(8),
    DATA_APV_TIME  CHAR(14),
    RSV1           VARCHAR2(180),
    RSV2           VARCHAR2(180),
    RSV3           VARCHAR2(180),
    RSV4           VARCHAR2(180),
    RSV5           VARCHAR2(180),
    REMARKS        VARCHAR2(180)
)
/

comment on table GP_BM_BMS_BATCH is '批量定义表'
/

comment on column GP_BM_BMS_BATCH.DATA_ID is '数据ID'
/

comment on column GP_BM_BMS_BATCH.DATA_DATE is '数据日期'
/

comment on column GP_BM_BMS_BATCH.CORP_ID is '法人机构号'
/

comment on column GP_BM_BMS_BATCH.ORG_ID is '机构号'
/

comment on column GP_BM_BMS_BATCH.GROUP_ID is '部门编号'
/

comment on column GP_BM_BMS_BATCH.BATCH_NAME is '批量作业名称'
/

comment on column GP_BM_BMS_BATCH.RUN_PLAN is '执行计划ID'
/

comment on column GP_BM_BMS_BATCH.STATUS is '运行状态'
/

comment on column GP_BM_BMS_BATCH.NEXT_TIME is '最近执行时间'
/

comment on column GP_BM_BMS_BATCH.NEXT_ACTION is '下一动作'
/

comment on column GP_BM_BMS_BATCH.DATA_STATUS is '数据状态'
/

comment on column GP_BM_BMS_BATCH.DATA_FLAG is '数据是否已删除'
/

comment on column GP_BM_BMS_BATCH.DATA_SOURCE is '数据来源'
/

comment on column GP_BM_BMS_BATCH.CHECK_FLAG is '校验标识'
/

comment on column GP_BM_BMS_BATCH.CHECK_DESC is '校验结果'
/

comment on column GP_BM_BMS_BATCH.CHECK_ERR_TYPE is '校验失败类型'
/

comment on column GP_BM_BMS_BATCH.DATA_VERSION is '数据版本'
/

comment on column GP_BM_BMS_BATCH.DATA_REJ_DESC is '数据审核拒绝原因'
/

comment on column GP_BM_BMS_BATCH.DATA_DEL_DESC is '数据删除描述'
/

comment on column GP_BM_BMS_BATCH.DATA_CRT_USER is '数据创建/导入用户'
/

comment on column GP_BM_BMS_BATCH.DATA_CRT_DATE is '数据创建/导入日期'
/

comment on column GP_BM_BMS_BATCH.DATA_CRT_TIME is '数据创建/导入时间'
/

comment on column GP_BM_BMS_BATCH.DATA_CHG_USER is '数据修改/删除用户'
/

comment on column GP_BM_BMS_BATCH.DATA_CHG_DATE is '数据修改/删除日期'
/

comment on column GP_BM_BMS_BATCH.DATA_CHG_TIME is '数据修改/删除时间'
/

comment on column GP_BM_BMS_BATCH.DATA_APV_USER is '数据审核/拒绝用户'
/

comment on column GP_BM_BMS_BATCH.DATA_APV_DATE is '数据审核/拒绝日期'
/

comment on column GP_BM_BMS_BATCH.DATA_APV_TIME is '数据审核/拒绝时间'
/

comment on column GP_BM_BMS_BATCH.RSV1 is '备用1'
/

comment on column GP_BM_BMS_BATCH.RSV2 is '备用2'
/

comment on column GP_BM_BMS_BATCH.RSV3 is '备用3'
/

comment on column GP_BM_BMS_BATCH.RSV4 is '备用4'
/

comment on column GP_BM_BMS_BATCH.RSV5 is '备用5'
/

comment on column GP_BM_BMS_BATCH.REMARKS is '备注'
/

create table GP_BM_BMS_BATCH_CONDITION
(
    DATA_ID        VARCHAR2(64) not null,
    DATA_DATE      CHAR(8),
    CORP_ID        VARCHAR2(14),
    ORG_ID         VARCHAR2(14),
    GROUP_ID       VARCHAR2(14),
    BATCH_NAME     VARCHAR2(60),
    BATCH_ID       VARCHAR2(32),
    BATCH_STATUS   CHAR,
    BATCH_FLAG     CHAR,
    BATCH_DATE     CHAR,
    BATH_DESC      VARCHAR2(128),
    NEXT_ACTION    CHAR(2),
    DATA_STATUS    CHAR(2),
    DATA_FLAG      CHAR,
    DATA_SOURCE    CHAR,
    CHECK_FLAG     CHAR,
    CHECK_DESC     VARCHAR2(512),
    CHECK_ERR_TYPE CHAR,
    DATA_VERSION   NUMBER(8),
    DATA_REJ_DESC  VARCHAR2(128),
    DATA_DEL_DESC  VARCHAR2(128),
    DATA_CRT_USER  VARCHAR2(20),
    DATA_CRT_DATE  CHAR(8),
    DATA_CRT_TIME  CHAR(14),
    DATA_CHG_USER  VARCHAR2(20),
    DATA_CHG_DATE  CHAR(8),
    DATA_CHG_TIME  CHAR(14),
    DATA_APV_USER  VARCHAR2(20),
    DATA_APV_DATE  CHAR(8),
    DATA_APV_TIME  CHAR(14),
    RSV1           VARCHAR2(180),
    RSV2           VARCHAR2(180),
    RSV3           VARCHAR2(180),
    RSV4           VARCHAR2(180),
    RSV5           VARCHAR2(180)
)
/

comment on table GP_BM_BMS_BATCH_CONDITION is '批量条件表'
/

comment on column GP_BM_BMS_BATCH_CONDITION.DATA_ID is '数据ID'
/

comment on column GP_BM_BMS_BATCH_CONDITION.DATA_DATE is '数据日期'
/

comment on column GP_BM_BMS_BATCH_CONDITION.CORP_ID is '法人机构号'
/

comment on column GP_BM_BMS_BATCH_CONDITION.ORG_ID is '机构号'
/

comment on column GP_BM_BMS_BATCH_CONDITION.GROUP_ID is '部门编号'
/

comment on column GP_BM_BMS_BATCH_CONDITION.NEXT_ACTION is '下一动作'
/

comment on column GP_BM_BMS_BATCH_CONDITION.DATA_STATUS is '数据状态'
/

comment on column GP_BM_BMS_BATCH_CONDITION.DATA_FLAG is '数据是否已删除'
/

comment on column GP_BM_BMS_BATCH_CONDITION.DATA_SOURCE is '数据来源'
/

comment on column GP_BM_BMS_BATCH_CONDITION.CHECK_FLAG is '校验标识'
/

comment on column GP_BM_BMS_BATCH_CONDITION.CHECK_DESC is '校验结果'
/

comment on column GP_BM_BMS_BATCH_CONDITION.CHECK_ERR_TYPE is '校验失败类型'
/

comment on column GP_BM_BMS_BATCH_CONDITION.DATA_VERSION is '数据版本'
/

comment on column GP_BM_BMS_BATCH_CONDITION.DATA_REJ_DESC is '数据审核拒绝原因'
/

comment on column GP_BM_BMS_BATCH_CONDITION.DATA_DEL_DESC is '数据删除描述'
/

comment on column GP_BM_BMS_BATCH_CONDITION.DATA_CRT_USER is '数据创建/导入用户'
/

comment on column GP_BM_BMS_BATCH_CONDITION.DATA_CRT_DATE is '数据创建/导入日期'
/

comment on column GP_BM_BMS_BATCH_CONDITION.DATA_CRT_TIME is '数据创建/导入时间'
/

comment on column GP_BM_BMS_BATCH_CONDITION.DATA_CHG_USER is '数据修改/删除用户'
/

comment on column GP_BM_BMS_BATCH_CONDITION.DATA_CHG_DATE is '数据修改/删除日期'
/

comment on column GP_BM_BMS_BATCH_CONDITION.DATA_CHG_TIME is '数据修改/删除时间'
/

comment on column GP_BM_BMS_BATCH_CONDITION.DATA_APV_USER is '数据审核/拒绝用户'
/

comment on column GP_BM_BMS_BATCH_CONDITION.DATA_APV_DATE is '数据审核/拒绝日期'
/

comment on column GP_BM_BMS_BATCH_CONDITION.DATA_APV_TIME is '数据审核/拒绝时间'
/

comment on column GP_BM_BMS_BATCH_CONDITION.RSV1 is '备用1'
/

comment on column GP_BM_BMS_BATCH_CONDITION.RSV2 is '备用2'
/

comment on column GP_BM_BMS_BATCH_CONDITION.RSV3 is '备用3'
/

comment on column GP_BM_BMS_BATCH_CONDITION.RSV4 is '备用4'
/

comment on column GP_BM_BMS_BATCH_CONDITION.RSV5 is '备用5'
/

create table GP_BM_BMS_BATCH_LOG
(
    DATA_ID       VARCHAR2(64) not null
        primary key,
    DATA_DATE     CHAR(8),
    CORP_ID       VARCHAR2(14),
    ORG_ID        VARCHAR2(14),
    GROUP_ID      VARCHAR2(14),
    BATCH_ID      VARCHAR2(35),
    STATUS        CHAR,
    C_CODE        CHAR(2),
    E_CODE        VARCHAR2(8),
    E_MSG         VARCHAR2(512),
    REMARKS       VARCHAR2(512),
    START_TIME    CHAR(14),
    END_TIME      CHAR(14),
    DATA_VERSION  NUMBER(8),
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
    RSV1          VARCHAR2(180),
    RSV2          VARCHAR2(180),
    RSV3          VARCHAR2(180),
    RSV4          VARCHAR2(180),
    RSV5          VARCHAR2(180)
)
/

comment on table GP_BM_BMS_BATCH_LOG is '批量日志表'
/

comment on column GP_BM_BMS_BATCH_LOG.DATA_ID is '数据ID'
/

comment on column GP_BM_BMS_BATCH_LOG.DATA_DATE is '数据日期'
/

comment on column GP_BM_BMS_BATCH_LOG.CORP_ID is '法人机构号'
/

comment on column GP_BM_BMS_BATCH_LOG.ORG_ID is '机构号'
/

comment on column GP_BM_BMS_BATCH_LOG.GROUP_ID is '部门编号'
/

comment on column GP_BM_BMS_BATCH_LOG.DATA_VERSION is '数据版本'
/

comment on column GP_BM_BMS_BATCH_LOG.DATA_REJ_DESC is '数据审核拒绝原因'
/

comment on column GP_BM_BMS_BATCH_LOG.DATA_DEL_DESC is '数据删除描述'
/

comment on column GP_BM_BMS_BATCH_LOG.DATA_CRT_USER is '数据创建/导入用户'
/

comment on column GP_BM_BMS_BATCH_LOG.DATA_CRT_DATE is '数据创建/导入日期'
/

comment on column GP_BM_BMS_BATCH_LOG.DATA_CRT_TIME is '数据创建/导入时间'
/

comment on column GP_BM_BMS_BATCH_LOG.DATA_CHG_USER is '数据修改/删除用户'
/

comment on column GP_BM_BMS_BATCH_LOG.DATA_CHG_DATE is '数据修改/删除日期'
/

comment on column GP_BM_BMS_BATCH_LOG.DATA_CHG_TIME is '数据修改/删除时间'
/

comment on column GP_BM_BMS_BATCH_LOG.DATA_APV_USER is '数据审核/拒绝用户'
/

comment on column GP_BM_BMS_BATCH_LOG.DATA_APV_DATE is '数据审核/拒绝日期'
/

comment on column GP_BM_BMS_BATCH_LOG.DATA_APV_TIME is '数据审核/拒绝时间'
/

comment on column GP_BM_BMS_BATCH_LOG.RSV1 is '备用1'
/

comment on column GP_BM_BMS_BATCH_LOG.RSV2 is '备用2'
/

comment on column GP_BM_BMS_BATCH_LOG.RSV3 is '备用3'
/

comment on column GP_BM_BMS_BATCH_LOG.RSV4 is '备用4'
/

comment on column GP_BM_BMS_BATCH_LOG.RSV5 is '备用5'
/

create table GP_BM_BMS_BATCH_LOG_DTL
(
    DATA_ID       VARCHAR2(64) not null
        primary key,
    DATA_DATE     CHAR(8),
    CORP_ID       VARCHAR2(14),
    ORG_ID        VARCHAR2(14),
    GROUP_ID      VARCHAR2(14),
    BATCH_ID      VARCHAR2(35),
    STATUS        CHAR,
    C_CODE        CHAR(2),
    E_CODE        VARCHAR2(8),
    E_MSG         VARCHAR2(512),
    REMARKS       VARCHAR2(512),
    START_TIME    CHAR(14),
    END_TIME      CHAR(14),
    DATA_VERSION  NUMBER(8),
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
    RSV1          VARCHAR2(180),
    RSV2          VARCHAR2(180),
    RSV3          VARCHAR2(180),
    RSV4          VARCHAR2(180),
    RSV5          VARCHAR2(180)
)
/

comment on table GP_BM_BMS_BATCH_LOG_DTL is '批量日志明细表'
/

comment on column GP_BM_BMS_BATCH_LOG_DTL.DATA_ID is '数据ID'
/

comment on column GP_BM_BMS_BATCH_LOG_DTL.DATA_DATE is '数据日期'
/

comment on column GP_BM_BMS_BATCH_LOG_DTL.CORP_ID is '法人机构号'
/

comment on column GP_BM_BMS_BATCH_LOG_DTL.ORG_ID is '机构号'
/

comment on column GP_BM_BMS_BATCH_LOG_DTL.GROUP_ID is '部门编号'
/

comment on column GP_BM_BMS_BATCH_LOG_DTL.DATA_VERSION is '数据版本'
/

comment on column GP_BM_BMS_BATCH_LOG_DTL.DATA_REJ_DESC is '数据审核拒绝原因'
/

comment on column GP_BM_BMS_BATCH_LOG_DTL.DATA_DEL_DESC is '数据删除描述'
/

comment on column GP_BM_BMS_BATCH_LOG_DTL.DATA_CRT_USER is '数据创建/导入用户'
/

comment on column GP_BM_BMS_BATCH_LOG_DTL.DATA_CRT_DATE is '数据创建/导入日期'
/

comment on column GP_BM_BMS_BATCH_LOG_DTL.DATA_CRT_TIME is '数据创建/导入时间'
/

comment on column GP_BM_BMS_BATCH_LOG_DTL.DATA_CHG_USER is '数据修改/删除用户'
/

comment on column GP_BM_BMS_BATCH_LOG_DTL.DATA_CHG_DATE is '数据修改/删除日期'
/

comment on column GP_BM_BMS_BATCH_LOG_DTL.DATA_CHG_TIME is '数据修改/删除时间'
/

comment on column GP_BM_BMS_BATCH_LOG_DTL.DATA_APV_USER is '数据审核/拒绝用户'
/

comment on column GP_BM_BMS_BATCH_LOG_DTL.DATA_APV_DATE is '数据审核/拒绝日期'
/

comment on column GP_BM_BMS_BATCH_LOG_DTL.DATA_APV_TIME is '数据审核/拒绝时间'
/

comment on column GP_BM_BMS_BATCH_LOG_DTL.RSV1 is '备用1'
/

comment on column GP_BM_BMS_BATCH_LOG_DTL.RSV2 is '备用2'
/

comment on column GP_BM_BMS_BATCH_LOG_DTL.RSV3 is '备用3'
/

comment on column GP_BM_BMS_BATCH_LOG_DTL.RSV4 is '备用4'
/

comment on column GP_BM_BMS_BATCH_LOG_DTL.RSV5 is '备用5'
/

create table GP_BM_BMS_BATCH_METHOD
(
    DATA_ID        VARCHAR2(64) not null
        primary key,
    DATA_DATE      CHAR(8),
    CORP_ID        VARCHAR2(14),
    ORG_ID         VARCHAR2(14),
    GROUP_ID       VARCHAR2(14),
    BATCH_NAME     VARCHAR2(60),
    JOB_TYPE       VARCHAR2(60),
    ARGS           VARCHAR2(256),
    BATCH_SEQ      VARCHAR2(60),
    BATCH_ID       VARCHAR2(32),
    BATCH_STATUS   CHAR,
    BATCH_FLAG     CHAR,
    BATCH_DATE     CHAR,
    BATH_DESC      VARCHAR2(128),
    NEXT_ACTION    CHAR(2),
    DATA_STATUS    CHAR(2),
    DATA_FLAG      CHAR,
    DATA_SOURCE    CHAR,
    CHECK_FLAG     CHAR,
    CHECK_DESC     VARCHAR2(512),
    CHECK_ERR_TYPE CHAR,
    DATA_VERSION   NUMBER(8),
    DATA_REJ_DESC  VARCHAR2(128),
    DATA_DEL_DESC  VARCHAR2(128),
    DATA_CRT_USER  VARCHAR2(20),
    DATA_CRT_DATE  CHAR(8),
    DATA_CRT_TIME  CHAR(14),
    DATA_CHG_USER  VARCHAR2(20),
    DATA_CHG_DATE  CHAR(8),
    DATA_CHG_TIME  CHAR(14),
    DATA_APV_USER  VARCHAR2(20),
    DATA_APV_DATE  CHAR(8),
    DATA_APV_TIME  CHAR(14),
    RSV1           VARCHAR2(180),
    RSV2           VARCHAR2(180),
    RSV3           VARCHAR2(180),
    RSV4           VARCHAR2(180),
    RSV5           VARCHAR2(180)
)
/

comment on table GP_BM_BMS_BATCH_METHOD is '批量函数表'
/

comment on column GP_BM_BMS_BATCH_METHOD.DATA_ID is '数据ID'
/

comment on column GP_BM_BMS_BATCH_METHOD.DATA_DATE is '数据日期'
/

comment on column GP_BM_BMS_BATCH_METHOD.CORP_ID is '法人机构号'
/

comment on column GP_BM_BMS_BATCH_METHOD.ORG_ID is '机构号'
/

comment on column GP_BM_BMS_BATCH_METHOD.GROUP_ID is '部门编号'
/

comment on column GP_BM_BMS_BATCH_METHOD.NEXT_ACTION is '下一动作'
/

comment on column GP_BM_BMS_BATCH_METHOD.DATA_STATUS is '数据状态'
/

comment on column GP_BM_BMS_BATCH_METHOD.DATA_FLAG is '数据是否已删除'
/

comment on column GP_BM_BMS_BATCH_METHOD.DATA_SOURCE is '数据来源'
/

comment on column GP_BM_BMS_BATCH_METHOD.CHECK_FLAG is '校验标识'
/

comment on column GP_BM_BMS_BATCH_METHOD.CHECK_DESC is '校验结果'
/

comment on column GP_BM_BMS_BATCH_METHOD.CHECK_ERR_TYPE is '校验失败类型'
/

comment on column GP_BM_BMS_BATCH_METHOD.DATA_VERSION is '数据版本'
/

comment on column GP_BM_BMS_BATCH_METHOD.DATA_REJ_DESC is '数据审核拒绝原因'
/

comment on column GP_BM_BMS_BATCH_METHOD.DATA_DEL_DESC is '数据删除描述'
/

comment on column GP_BM_BMS_BATCH_METHOD.DATA_CRT_USER is '数据创建/导入用户'
/

comment on column GP_BM_BMS_BATCH_METHOD.DATA_CRT_DATE is '数据创建/导入日期'
/

comment on column GP_BM_BMS_BATCH_METHOD.DATA_CRT_TIME is '数据创建/导入时间'
/

comment on column GP_BM_BMS_BATCH_METHOD.DATA_CHG_USER is '数据修改/删除用户'
/

comment on column GP_BM_BMS_BATCH_METHOD.DATA_CHG_DATE is '数据修改/删除日期'
/

comment on column GP_BM_BMS_BATCH_METHOD.DATA_CHG_TIME is '数据修改/删除时间'
/

comment on column GP_BM_BMS_BATCH_METHOD.DATA_APV_USER is '数据审核/拒绝用户'
/

comment on column GP_BM_BMS_BATCH_METHOD.DATA_APV_DATE is '数据审核/拒绝日期'
/

comment on column GP_BM_BMS_BATCH_METHOD.DATA_APV_TIME is '数据审核/拒绝时间'
/

comment on column GP_BM_BMS_BATCH_METHOD.RSV1 is '备用1'
/

comment on column GP_BM_BMS_BATCH_METHOD.RSV2 is '备用2'
/

comment on column GP_BM_BMS_BATCH_METHOD.RSV3 is '备用3'
/

comment on column GP_BM_BMS_BATCH_METHOD.RSV4 is '备用4'
/

comment on column GP_BM_BMS_BATCH_METHOD.RSV5 is '备用5'
/

create table GP_BM_BMS_CTL_CFG
(
    DATA_ID        VARCHAR2(64) not null
        primary key,
    DATA_DATE      CHAR(8),
    CORP_ID        VARCHAR2(14),
    ORG_ID         VARCHAR2(14),
    GROUP_ID       VARCHAR2(14),
    RUN_ORDER      NUMBER(8),
    JOB_ID         VARCHAR2(64),
    COND           VARCHAR2(300),
    WORKER_ID      CHAR(18),
    ARGS           VARCHAR2(4000),
    STATUS         CHAR,
    CHECK_FLAG     CHAR,
    CHECK_DESC     VARCHAR2(512),
    CHECK_ERR_TYPE CHAR,
    NEXT_ACTION    CHAR(2),
    DATA_STATUS    CHAR(2),
    DATA_FLAG      CHAR,
    DATA_SOURCE    CHAR,
    DATA_VERSION   NUMBER(8),
    DATA_REJ_DESC  VARCHAR2(128),
    DATA_DEL_DESC  VARCHAR2(128),
    DATA_CRT_USER  VARCHAR2(20),
    DATA_CRT_DATE  CHAR(8),
    DATA_CRT_TIME  CHAR(14),
    DATA_CHG_USER  VARCHAR2(20),
    DATA_CHG_DATE  CHAR(8),
    DATA_CHG_TIME  CHAR(14),
    DATA_APV_USER  VARCHAR2(20),
    DATA_APV_DATE  CHAR(8),
    DATA_APV_TIME  CHAR(14),
    RSV1           VARCHAR2(180),
    RSV2           VARCHAR2(180),
    RSV3           VARCHAR2(180),
    RSV4           VARCHAR2(180),
    RSV5           VARCHAR2(180),
    REMARKS        VARCHAR2(180),
    BATCH_ID       VARCHAR2(35),
    NEXT_0         VARCHAR2(300),
    NEXT_1         VARCHAR2(300),
    NEXT_2         VARCHAR2(300),
    NEXT_3         VARCHAR2(300),
    NEXT_4         VARCHAR2(300),
    JOB_TYPE       VARCHAR2(10)
)
/

comment on table GP_BM_BMS_CTL_CFG is '批量定义控制表'
/

comment on column GP_BM_BMS_CTL_CFG.DATA_ID is '数据ID'
/

comment on column GP_BM_BMS_CTL_CFG.DATA_DATE is '数据日期'
/

comment on column GP_BM_BMS_CTL_CFG.CORP_ID is '法人机构号'
/

comment on column GP_BM_BMS_CTL_CFG.ORG_ID is '机构号'
/

comment on column GP_BM_BMS_CTL_CFG.GROUP_ID is '部门编号'
/

comment on column GP_BM_BMS_CTL_CFG.CHECK_FLAG is '校验标识'
/

comment on column GP_BM_BMS_CTL_CFG.CHECK_DESC is '校验结果'
/

comment on column GP_BM_BMS_CTL_CFG.CHECK_ERR_TYPE is '校验失败类型'
/

comment on column GP_BM_BMS_CTL_CFG.NEXT_ACTION is '下一动作'
/

comment on column GP_BM_BMS_CTL_CFG.DATA_STATUS is '数据状态'
/

comment on column GP_BM_BMS_CTL_CFG.DATA_FLAG is '数据是否已删除'
/

comment on column GP_BM_BMS_CTL_CFG.DATA_SOURCE is '数据来源'
/

comment on column GP_BM_BMS_CTL_CFG.DATA_VERSION is '数据版本'
/

comment on column GP_BM_BMS_CTL_CFG.DATA_REJ_DESC is '数据审核拒绝原因'
/

comment on column GP_BM_BMS_CTL_CFG.DATA_DEL_DESC is '数据删除描述'
/

comment on column GP_BM_BMS_CTL_CFG.DATA_CRT_USER is '数据创建/导入用户'
/

comment on column GP_BM_BMS_CTL_CFG.DATA_CRT_DATE is '数据创建/导入日期'
/

comment on column GP_BM_BMS_CTL_CFG.DATA_CRT_TIME is '数据创建/导入时间'
/

comment on column GP_BM_BMS_CTL_CFG.DATA_CHG_USER is '数据修改/删除用户'
/

comment on column GP_BM_BMS_CTL_CFG.DATA_CHG_DATE is '数据修改/删除日期'
/

comment on column GP_BM_BMS_CTL_CFG.DATA_CHG_TIME is '数据修改/删除时间'
/

comment on column GP_BM_BMS_CTL_CFG.DATA_APV_USER is '数据审核/拒绝用户'
/

comment on column GP_BM_BMS_CTL_CFG.DATA_APV_DATE is '数据审核/拒绝日期'
/

comment on column GP_BM_BMS_CTL_CFG.DATA_APV_TIME is '数据审核/拒绝时间'
/

comment on column GP_BM_BMS_CTL_CFG.RSV1 is '备用1'
/

comment on column GP_BM_BMS_CTL_CFG.RSV2 is '备用2'
/

comment on column GP_BM_BMS_CTL_CFG.RSV3 is '备用3'
/

comment on column GP_BM_BMS_CTL_CFG.RSV4 is '备用4'
/

comment on column GP_BM_BMS_CTL_CFG.RSV5 is '备用5'
/

comment on column GP_BM_BMS_CTL_CFG.REMARKS is '备注'
/

comment on column GP_BM_BMS_CTL_CFG.JOB_TYPE is '任务类型'
/

create table GP_BM_BMS_CTL_LOG
(
    DATA_ID       VARCHAR2(64) not null
        primary key,
    DATA_DATE     CHAR(8),
    CORP_ID       VARCHAR2(14),
    ORG_ID        VARCHAR2(14),
    GROUP_ID      VARCHAR2(14),
    BATCH_ID      VARCHAR2(35),
    STATUS        CHAR,
    C_CODE        CHAR(2),
    E_CODE        VARCHAR2(8),
    E_MSG         VARCHAR2(512),
    REMARKS       VARCHAR2(512),
    START_TIME    CHAR(14),
    END_TIME      CHAR(14),
    DATA_VERSION  NUMBER(8),
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
    RSV1          VARCHAR2(180),
    RSV2          VARCHAR2(180),
    RSV3          VARCHAR2(180),
    RSV4          VARCHAR2(180),
    RSV5          VARCHAR2(180)
)
/

comment on table GP_BM_BMS_CTL_LOG is '批量作业日志表'
/

comment on column GP_BM_BMS_CTL_LOG.DATA_ID is '数据ID'
/

comment on column GP_BM_BMS_CTL_LOG.DATA_DATE is '数据日期'
/

comment on column GP_BM_BMS_CTL_LOG.CORP_ID is '法人机构号'
/

comment on column GP_BM_BMS_CTL_LOG.ORG_ID is '机构号'
/

comment on column GP_BM_BMS_CTL_LOG.GROUP_ID is '部门编号'
/

comment on column GP_BM_BMS_CTL_LOG.BATCH_ID is '批量'
/

comment on column GP_BM_BMS_CTL_LOG.STATUS is '运行状态 0-未运行  1-运行中   2-运行完成'
/

comment on column GP_BM_BMS_CTL_LOG.C_CODE is '完成码'
/

comment on column GP_BM_BMS_CTL_LOG.E_CODE is '错误码'
/

comment on column GP_BM_BMS_CTL_LOG.E_MSG is '错误信息'
/

comment on column GP_BM_BMS_CTL_LOG.REMARKS is '备注'
/

comment on column GP_BM_BMS_CTL_LOG.START_TIME is '开始时间'
/

comment on column GP_BM_BMS_CTL_LOG.END_TIME is '结束时间'
/

comment on column GP_BM_BMS_CTL_LOG.DATA_VERSION is '数据版本'
/

comment on column GP_BM_BMS_CTL_LOG.DATA_REJ_DESC is '数据审核拒绝原因'
/

comment on column GP_BM_BMS_CTL_LOG.DATA_DEL_DESC is '数据删除描述'
/

comment on column GP_BM_BMS_CTL_LOG.DATA_CRT_USER is '数据创建/导入用户'
/

comment on column GP_BM_BMS_CTL_LOG.DATA_CRT_DATE is '数据创建/导入日期'
/

comment on column GP_BM_BMS_CTL_LOG.DATA_CRT_TIME is '数据创建/导入时间'
/

comment on column GP_BM_BMS_CTL_LOG.DATA_CHG_USER is '数据修改/删除用户'
/

comment on column GP_BM_BMS_CTL_LOG.DATA_CHG_DATE is '数据修改/删除日期'
/

comment on column GP_BM_BMS_CTL_LOG.DATA_CHG_TIME is '数据修改/删除时间'
/

comment on column GP_BM_BMS_CTL_LOG.DATA_APV_USER is '数据审核/拒绝用户'
/

comment on column GP_BM_BMS_CTL_LOG.DATA_APV_DATE is '数据审核/拒绝日期'
/

comment on column GP_BM_BMS_CTL_LOG.DATA_APV_TIME is '数据审核/拒绝时间'
/

comment on column GP_BM_BMS_CTL_LOG.RSV1 is '备用1'
/

comment on column GP_BM_BMS_CTL_LOG.RSV2 is '备用2'
/

comment on column GP_BM_BMS_CTL_LOG.RSV3 is '备用3'
/

comment on column GP_BM_BMS_CTL_LOG.RSV4 is '备用4'
/

comment on column GP_BM_BMS_CTL_LOG.RSV5 is '备用5'
/

create table GP_BM_BMS_CTL_LOG_HIS
(
    DATA_ID       VARCHAR2(64) not null,
    DATA_DATE     CHAR(8),
    CORP_ID       VARCHAR2(14),
    ORG_ID        VARCHAR2(14),
    GROUP_ID      VARCHAR2(14),
    BATCH_ID      VARCHAR2(35),
    STATUS        CHAR,
    C_CODE        CHAR(2),
    E_CODE        VARCHAR2(8),
    E_MSG         VARCHAR2(512),
    REMARKS       VARCHAR2(512),
    START_TIME    CHAR(14),
    END_TIME      CHAR(14),
    DATA_VERSION  NUMBER(8),
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
    RSV1          VARCHAR2(180),
    RSV2          VARCHAR2(180),
    RSV3          VARCHAR2(180),
    RSV4          VARCHAR2(180),
    RSV5          VARCHAR2(180)
)
/

comment on table GP_BM_BMS_CTL_LOG_HIS is '批量作业日志历史表'
/

comment on column GP_BM_BMS_CTL_LOG_HIS.DATA_ID is '数据ID'
/

comment on column GP_BM_BMS_CTL_LOG_HIS.DATA_DATE is '数据日期'
/

comment on column GP_BM_BMS_CTL_LOG_HIS.CORP_ID is '法人机构号'
/

comment on column GP_BM_BMS_CTL_LOG_HIS.ORG_ID is '机构号'
/

comment on column GP_BM_BMS_CTL_LOG_HIS.GROUP_ID is '部门编号'
/

comment on column GP_BM_BMS_CTL_LOG_HIS.DATA_VERSION is '数据版本'
/

comment on column GP_BM_BMS_CTL_LOG_HIS.DATA_REJ_DESC is '数据审核拒绝原因'
/

comment on column GP_BM_BMS_CTL_LOG_HIS.DATA_DEL_DESC is '数据删除描述'
/

comment on column GP_BM_BMS_CTL_LOG_HIS.DATA_CRT_USER is '数据创建/导入用户'
/

comment on column GP_BM_BMS_CTL_LOG_HIS.DATA_CRT_DATE is '数据创建/导入日期'
/

comment on column GP_BM_BMS_CTL_LOG_HIS.DATA_CRT_TIME is '数据创建/导入时间'
/

comment on column GP_BM_BMS_CTL_LOG_HIS.DATA_CHG_USER is '数据修改/删除用户'
/

comment on column GP_BM_BMS_CTL_LOG_HIS.DATA_CHG_DATE is '数据修改/删除日期'
/

comment on column GP_BM_BMS_CTL_LOG_HIS.DATA_CHG_TIME is '数据修改/删除时间'
/

comment on column GP_BM_BMS_CTL_LOG_HIS.DATA_APV_USER is '数据审核/拒绝用户'
/

comment on column GP_BM_BMS_CTL_LOG_HIS.DATA_APV_DATE is '数据审核/拒绝日期'
/

comment on column GP_BM_BMS_CTL_LOG_HIS.DATA_APV_TIME is '数据审核/拒绝时间'
/

comment on column GP_BM_BMS_CTL_LOG_HIS.RSV1 is '备用1'
/

comment on column GP_BM_BMS_CTL_LOG_HIS.RSV2 is '备用2'
/

comment on column GP_BM_BMS_CTL_LOG_HIS.RSV3 is '备用3'
/

comment on column GP_BM_BMS_CTL_LOG_HIS.RSV4 is '备用4'
/

comment on column GP_BM_BMS_CTL_LOG_HIS.RSV5 is '备用5'
/

create table GP_BM_BMS_CTL_SESSION
(
    DATA_ID       VARCHAR2(64) not null
        primary key,
    DATA_DATE     CHAR(8),
    CORP_ID       VARCHAR2(14),
    ORG_ID        VARCHAR2(14),
    GROUP_ID      VARCHAR2(14),
    SESSION_ID    VARCHAR2(35),
    BATCH_ID      VARCHAR2(35),
    JOB_ID        VARCHAR2(64),
    P_JOB_ID      VARCHAR2(64),
    P_C_CODE      CHAR(2),
    STATUS        CHAR,
    C_CODE        CHAR(2),
    E_CODE        VARCHAR2(8),
    E_MSG         VARCHAR2(512),
    START_TIME    CHAR(14),
    END_TIME      CHAR(14),
    NEXT_JOB_ID   VARCHAR2(35),
    OUTPUT_1      VARCHAR2(512),
    OUTPUT_2      VARCHAR2(512),
    OUTPUT_3      VARCHAR2(512),
    OUTPUT_4      VARCHAR2(512),
    OUTPUT_5      VARCHAR2(512),
    REMARKS       VARCHAR2(512),
    DATA_VERSION  NUMBER(8),
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
    RSV1          VARCHAR2(180),
    RSV2          VARCHAR2(180),
    RSV3          VARCHAR2(180),
    RSV4          VARCHAR2(180),
    RSV5          VARCHAR2(180),
    RUN_ORDER     NUMBER(8)
)
/

comment on table GP_BM_BMS_CTL_SESSION is '批量作业状态表'
/

comment on column GP_BM_BMS_CTL_SESSION.DATA_ID is '数据ID'
/

comment on column GP_BM_BMS_CTL_SESSION.DATA_DATE is '数据日期'
/

comment on column GP_BM_BMS_CTL_SESSION.CORP_ID is '法人机构号'
/

comment on column GP_BM_BMS_CTL_SESSION.ORG_ID is '机构号'
/

comment on column GP_BM_BMS_CTL_SESSION.GROUP_ID is '部门编号'
/

comment on column GP_BM_BMS_CTL_SESSION.DATA_VERSION is '数据版本'
/

comment on column GP_BM_BMS_CTL_SESSION.DATA_REJ_DESC is '数据审核拒绝原因'
/

comment on column GP_BM_BMS_CTL_SESSION.DATA_DEL_DESC is '数据删除描述'
/

comment on column GP_BM_BMS_CTL_SESSION.DATA_CRT_USER is '数据创建/导入用户'
/

comment on column GP_BM_BMS_CTL_SESSION.DATA_CRT_DATE is '数据创建/导入日期'
/

comment on column GP_BM_BMS_CTL_SESSION.DATA_CRT_TIME is '数据创建/导入时间'
/

comment on column GP_BM_BMS_CTL_SESSION.DATA_CHG_USER is '数据修改/删除用户'
/

comment on column GP_BM_BMS_CTL_SESSION.DATA_CHG_DATE is '数据修改/删除日期'
/

comment on column GP_BM_BMS_CTL_SESSION.DATA_CHG_TIME is '数据修改/删除时间'
/

comment on column GP_BM_BMS_CTL_SESSION.DATA_APV_USER is '数据审核/拒绝用户'
/

comment on column GP_BM_BMS_CTL_SESSION.DATA_APV_DATE is '数据审核/拒绝日期'
/

comment on column GP_BM_BMS_CTL_SESSION.DATA_APV_TIME is '数据审核/拒绝时间'
/

comment on column GP_BM_BMS_CTL_SESSION.RSV1 is '备用1'
/

comment on column GP_BM_BMS_CTL_SESSION.RSV2 is '备用2'
/

comment on column GP_BM_BMS_CTL_SESSION.RSV3 is '备用3'
/

comment on column GP_BM_BMS_CTL_SESSION.RSV4 is '备用4'
/

comment on column GP_BM_BMS_CTL_SESSION.RSV5 is '备用5'
/

comment on column GP_BM_BMS_CTL_SESSION.RUN_ORDER is '0-未运行  1-运行中   2-运行完成'
/

create index IDX_GP_BM_BMS_CTL_SESSION_01
    on GP_BM_BMS_CTL_SESSION (SESSION_ID)
/

create table GP_BM_BMS_CTL_SESSION_HIS
(
    DATA_ID       VARCHAR2(64) not null,
    DATA_DATE     CHAR(8),
    CORP_ID       VARCHAR2(14),
    ORG_ID        VARCHAR2(14),
    GROUP_ID      VARCHAR2(14),
    SESSION_ID    VARCHAR2(35),
    BATCH_ID      VARCHAR2(35),
    JOB_ID        VARCHAR2(64),
    P_JOB_ID      VARCHAR2(64),
    P_C_CODE      CHAR(2),
    STATUS        CHAR,
    C_CODE        CHAR(2),
    E_CODE        VARCHAR2(8),
    E_MSG         VARCHAR2(512),
    START_TIME    CHAR(14),
    END_TIME      CHAR(14),
    NEXT_JOB_ID   VARCHAR2(35),
    OUTPUT_1      VARCHAR2(512),
    OUTPUT_2      VARCHAR2(512),
    OUTPUT_3      VARCHAR2(512),
    OUTPUT_4      VARCHAR2(512),
    OUTPUT_5      VARCHAR2(512),
    REMARKS       VARCHAR2(512),
    DATA_VERSION  NUMBER(8),
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
    RSV1          VARCHAR2(180),
    RSV2          VARCHAR2(180),
    RSV3          VARCHAR2(180),
    RSV4          VARCHAR2(180),
    RSV5          VARCHAR2(180),
    RUN_ORDER     NUMBER(8)
)
/

comment on table GP_BM_BMS_CTL_SESSION_HIS is '批量作业状态历史表'
/

comment on column GP_BM_BMS_CTL_SESSION_HIS.DATA_ID is '数据ID'
/

comment on column GP_BM_BMS_CTL_SESSION_HIS.DATA_DATE is '数据日期'
/

comment on column GP_BM_BMS_CTL_SESSION_HIS.CORP_ID is '法人机构号'
/

comment on column GP_BM_BMS_CTL_SESSION_HIS.ORG_ID is '机构号'
/

comment on column GP_BM_BMS_CTL_SESSION_HIS.GROUP_ID is '部门编号'
/

comment on column GP_BM_BMS_CTL_SESSION_HIS.DATA_VERSION is '数据版本'
/

comment on column GP_BM_BMS_CTL_SESSION_HIS.DATA_REJ_DESC is '数据审核拒绝原因'
/

comment on column GP_BM_BMS_CTL_SESSION_HIS.DATA_DEL_DESC is '数据删除描述'
/

comment on column GP_BM_BMS_CTL_SESSION_HIS.DATA_CRT_USER is '数据创建/导入用户'
/

comment on column GP_BM_BMS_CTL_SESSION_HIS.DATA_CRT_DATE is '数据创建/导入日期'
/

comment on column GP_BM_BMS_CTL_SESSION_HIS.DATA_CRT_TIME is '数据创建/导入时间'
/

comment on column GP_BM_BMS_CTL_SESSION_HIS.DATA_CHG_USER is '数据修改/删除用户'
/

comment on column GP_BM_BMS_CTL_SESSION_HIS.DATA_CHG_DATE is '数据修改/删除日期'
/

comment on column GP_BM_BMS_CTL_SESSION_HIS.DATA_CHG_TIME is '数据修改/删除时间'
/

comment on column GP_BM_BMS_CTL_SESSION_HIS.DATA_APV_USER is '数据审核/拒绝用户'
/

comment on column GP_BM_BMS_CTL_SESSION_HIS.DATA_APV_DATE is '数据审核/拒绝日期'
/

comment on column GP_BM_BMS_CTL_SESSION_HIS.DATA_APV_TIME is '数据审核/拒绝时间'
/

comment on column GP_BM_BMS_CTL_SESSION_HIS.RSV1 is '备用1'
/

comment on column GP_BM_BMS_CTL_SESSION_HIS.RSV2 is '备用2'
/

comment on column GP_BM_BMS_CTL_SESSION_HIS.RSV3 is '备用3'
/

comment on column GP_BM_BMS_CTL_SESSION_HIS.RSV4 is '备用4'
/

comment on column GP_BM_BMS_CTL_SESSION_HIS.RSV5 is '备用5'
/

create table GP_BM_BMS_RUN_PLAN
(
    DATA_ID        VARCHAR2(64) not null
        primary key,
    DATA_DATE      CHAR(8),
    CORP_ID        VARCHAR2(14),
    ORG_ID         VARCHAR2(14),
    GROUP_ID       VARCHAR2(14),
    PLAN_ID        VARCHAR2(18),
    BASE_DAY       CHAR(3),
    CALENDAR_NO    VARCHAR2(30),
    OFFSET_D       NUMBER,
    OFFSET_U       CHAR,
    START_TIME     VARCHAR2(6),
    END_TIME       VARCHAR2(6),
    INTERAL        NUMBER(8),
    CFG_STATUS     CHAR,
    STATUS         CHAR,
    REMARKS        VARCHAR2(180),
    CHECK_FLAG     CHAR,
    CHECK_DESC     VARCHAR2(512),
    CHECK_ERR_TYPE CHAR,
    NEXT_ACTION    CHAR(2),
    DATA_STATUS    CHAR(2),
    DATA_FLAG      CHAR,
    DATA_SOURCE    CHAR,
    DATA_VERSION   NUMBER(8),
    DATA_REJ_DESC  VARCHAR2(128),
    DATA_DEL_DESC  VARCHAR2(128),
    DATA_CRT_USER  VARCHAR2(20),
    DATA_CRT_DATE  CHAR(8),
    DATA_CRT_TIME  CHAR(14),
    DATA_CHG_USER  VARCHAR2(20),
    DATA_CHG_DATE  CHAR(8),
    DATA_CHG_TIME  CHAR(14),
    DATA_APV_USER  VARCHAR2(20),
    DATA_APV_DATE  CHAR(8),
    DATA_APV_TIME  CHAR(14),
    RSV1           VARCHAR2(180),
    RSV2           VARCHAR2(180),
    RSV3           VARCHAR2(180),
    RSV4           VARCHAR2(180),
    RSV5           VARCHAR2(180)
)
/

comment on table GP_BM_BMS_RUN_PLAN is '执行计划表'
/

comment on column GP_BM_BMS_RUN_PLAN.DATA_ID is '数据ID'
/

comment on column GP_BM_BMS_RUN_PLAN.DATA_DATE is '数据日期'
/

comment on column GP_BM_BMS_RUN_PLAN.CORP_ID is '法人机构号'
/

comment on column GP_BM_BMS_RUN_PLAN.ORG_ID is '机构号'
/

comment on column GP_BM_BMS_RUN_PLAN.GROUP_ID is '部门编号'
/

comment on column GP_BM_BMS_RUN_PLAN.PLAN_ID is '执行计划ID'
/

comment on column GP_BM_BMS_RUN_PLAN.BASE_DAY is '基准日期'
/

comment on column GP_BM_BMS_RUN_PLAN.CALENDAR_NO is '工作日历'
/

comment on column GP_BM_BMS_RUN_PLAN.OFFSET_D is '日期偏差值'
/

comment on column GP_BM_BMS_RUN_PLAN.OFFSET_U is '日期偏差单位'
/

comment on column GP_BM_BMS_RUN_PLAN.START_TIME is '开始时间'
/

comment on column GP_BM_BMS_RUN_PLAN.END_TIME is '结束时间'
/

comment on column GP_BM_BMS_RUN_PLAN.INTERAL is '执行时间间隔'
/

comment on column GP_BM_BMS_RUN_PLAN.CFG_STATUS is '配置状态'
/

comment on column GP_BM_BMS_RUN_PLAN.STATUS is '状态'
/

comment on column GP_BM_BMS_RUN_PLAN.REMARKS is '备注'
/

comment on column GP_BM_BMS_RUN_PLAN.CHECK_FLAG is '校验标识'
/

comment on column GP_BM_BMS_RUN_PLAN.CHECK_DESC is '校验结果'
/

comment on column GP_BM_BMS_RUN_PLAN.CHECK_ERR_TYPE is '校验失败类型'
/

comment on column GP_BM_BMS_RUN_PLAN.NEXT_ACTION is '下一动作'
/

comment on column GP_BM_BMS_RUN_PLAN.DATA_STATUS is '数据状态'
/

comment on column GP_BM_BMS_RUN_PLAN.DATA_FLAG is '数据是否已删除'
/

comment on column GP_BM_BMS_RUN_PLAN.DATA_SOURCE is '数据来源'
/

comment on column GP_BM_BMS_RUN_PLAN.DATA_VERSION is '数据版本'
/

comment on column GP_BM_BMS_RUN_PLAN.DATA_REJ_DESC is '数据审核拒绝原因'
/

comment on column GP_BM_BMS_RUN_PLAN.DATA_DEL_DESC is '数据删除描述'
/

comment on column GP_BM_BMS_RUN_PLAN.DATA_CRT_USER is '数据创建/导入用户'
/

comment on column GP_BM_BMS_RUN_PLAN.DATA_CRT_DATE is '数据创建/导入日期'
/

comment on column GP_BM_BMS_RUN_PLAN.DATA_CRT_TIME is '数据创建/导入时间'
/

comment on column GP_BM_BMS_RUN_PLAN.DATA_CHG_USER is '数据修改/删除用户'
/

comment on column GP_BM_BMS_RUN_PLAN.DATA_CHG_DATE is '数据修改/删除日期'
/

comment on column GP_BM_BMS_RUN_PLAN.DATA_CHG_TIME is '数据修改/删除时间'
/

comment on column GP_BM_BMS_RUN_PLAN.DATA_APV_USER is '数据审核/拒绝用户'
/

comment on column GP_BM_BMS_RUN_PLAN.DATA_APV_DATE is '数据审核/拒绝日期'
/

comment on column GP_BM_BMS_RUN_PLAN.DATA_APV_TIME is '数据审核/拒绝时间'
/

comment on column GP_BM_BMS_RUN_PLAN.RSV1 is '备用1'
/

comment on column GP_BM_BMS_RUN_PLAN.RSV2 is '备用2'
/

comment on column GP_BM_BMS_RUN_PLAN.RSV3 is '备用3'
/

comment on column GP_BM_BMS_RUN_PLAN.RSV4 is '备用4'
/

comment on column GP_BM_BMS_RUN_PLAN.RSV5 is '备用5'
/

create table GP_BM_BMS_WORKER_DEFINE
(
    DATA_ID        VARCHAR2(64) not null,
    DATA_DATE      CHAR(8),
    CORP_ID        VARCHAR2(14),
    ORG_ID         VARCHAR2(14),
    GROUP_ID       VARCHAR2(14),
    NAME           VARCHAR2(60),
    CLASS          VARCHAR2(256),
    ARGS           VARCHAR2(4000),
    NEXT_ACTION    CHAR(2),
    DATA_STATUS    CHAR(2),
    DATA_FLAG      CHAR,
    DATA_SOURCE    CHAR,
    CHECK_FLAG     CHAR,
    CHECK_DESC     VARCHAR2(512),
    CHECK_ERR_TYPE CHAR,
    DATA_VERSION   NUMBER(8),
    DATA_REJ_DESC  VARCHAR2(128),
    DATA_DEL_DESC  VARCHAR2(128),
    DATA_CRT_USER  VARCHAR2(20),
    DATA_CRT_DATE  CHAR(8),
    DATA_CRT_TIME  CHAR(14),
    DATA_CHG_USER  VARCHAR2(20),
    DATA_CHG_DATE  CHAR(8),
    DATA_CHG_TIME  CHAR(14),
    DATA_APV_USER  VARCHAR2(20),
    DATA_APV_DATE  CHAR(8),
    DATA_APV_TIME  CHAR(14),
    RSV1           VARCHAR2(180),
    RSV2           VARCHAR2(180),
    RSV3           VARCHAR2(180),
    RSV4           VARCHAR2(180),
    RSV5           VARCHAR2(180),
    REMARKS        VARCHAR2(180)
)
/

comment on table GP_BM_BMS_WORKER_DEFINE is '批量定义明细表'
/

comment on column GP_BM_BMS_WORKER_DEFINE.DATA_ID is '数据ID'
/

comment on column GP_BM_BMS_WORKER_DEFINE.DATA_DATE is '数据日期'
/

comment on column GP_BM_BMS_WORKER_DEFINE.CORP_ID is '法人机构号'
/

comment on column GP_BM_BMS_WORKER_DEFINE.ORG_ID is '机构号'
/

comment on column GP_BM_BMS_WORKER_DEFINE.GROUP_ID is '部门编号'
/

comment on column GP_BM_BMS_WORKER_DEFINE.NEXT_ACTION is '下一动作'
/

comment on column GP_BM_BMS_WORKER_DEFINE.DATA_STATUS is '数据状态'
/

comment on column GP_BM_BMS_WORKER_DEFINE.DATA_FLAG is '数据是否已删除'
/

comment on column GP_BM_BMS_WORKER_DEFINE.DATA_SOURCE is '数据来源'
/

comment on column GP_BM_BMS_WORKER_DEFINE.CHECK_FLAG is '校验标识'
/

comment on column GP_BM_BMS_WORKER_DEFINE.CHECK_DESC is '校验结果'
/

comment on column GP_BM_BMS_WORKER_DEFINE.CHECK_ERR_TYPE is '校验失败类型'
/

comment on column GP_BM_BMS_WORKER_DEFINE.DATA_VERSION is '数据版本'
/

comment on column GP_BM_BMS_WORKER_DEFINE.DATA_REJ_DESC is '数据审核拒绝原因'
/

comment on column GP_BM_BMS_WORKER_DEFINE.DATA_DEL_DESC is '数据删除描述'
/

comment on column GP_BM_BMS_WORKER_DEFINE.DATA_CRT_USER is '数据创建/导入用户'
/

comment on column GP_BM_BMS_WORKER_DEFINE.DATA_CRT_DATE is '数据创建/导入日期'
/

comment on column GP_BM_BMS_WORKER_DEFINE.DATA_CRT_TIME is '数据创建/导入时间'
/

comment on column GP_BM_BMS_WORKER_DEFINE.DATA_CHG_USER is '数据修改/删除用户'
/

comment on column GP_BM_BMS_WORKER_DEFINE.DATA_CHG_DATE is '数据修改/删除日期'
/

comment on column GP_BM_BMS_WORKER_DEFINE.DATA_CHG_TIME is '数据修改/删除时间'
/

comment on column GP_BM_BMS_WORKER_DEFINE.DATA_APV_USER is '数据审核/拒绝用户'
/

comment on column GP_BM_BMS_WORKER_DEFINE.DATA_APV_DATE is '数据审核/拒绝日期'
/

comment on column GP_BM_BMS_WORKER_DEFINE.DATA_APV_TIME is '数据审核/拒绝时间'
/

comment on column GP_BM_BMS_WORKER_DEFINE.RSV1 is '备用1'
/

comment on column GP_BM_BMS_WORKER_DEFINE.RSV2 is '备用2'
/

comment on column GP_BM_BMS_WORKER_DEFINE.RSV3 is '备用3'
/

comment on column GP_BM_BMS_WORKER_DEFINE.RSV4 is '备用4'
/

comment on column GP_BM_BMS_WORKER_DEFINE.RSV5 is '备用5'
/

comment on column GP_BM_BMS_WORKER_DEFINE.REMARKS is '备注'
/

create table GP_BM_BRANCH
(
    DATA_ID           VARCHAR2(64) not null
        primary key,
    DATA_DATE         CHAR(8),
    CORP_ID           VARCHAR2(14),
    ORG_ID            VARCHAR2(14),
    GROUP_ID          VARCHAR2(14),
    BRCODE            VARCHAR2(20),
    BRNO              VARCHAR2(20),
    BRNAME            VARCHAR2(60),
    BRCLASS           CHAR,
    BRATTR            CHAR,
    BLN_BRANCH_CLASS  CHAR,
    BLN_BRANCH_BRCODE VARCHAR2(20),
    BLN_MANAGE_BRCODE VARCHAR2(20),
    BLN_UP_BRCODE     VARCHAR2(20),
    LINKMAN           VARCHAR2(20),
    TELENO            VARCHAR2(20),
    ADDRESS           VARCHAR2(100),
    POSTNO            CHAR(10),
    OTHER_AREA_FLAG   CHAR,
    REGIONALISM       CHAR(6),
    FINANCE_CODE      CHAR(14),
    STATUS            CHAR,
    MISCFLGS          CHAR,
    MISC              VARCHAR2(256),
    LAST_UPD_TLR      CHAR(8),
    LAST_UPD_FUNC     CHAR(10),
    LAST_UPD_TIME     CHAR(17),
    ST                CHAR,
    IS_LOCK           CHAR,
    IS_DEL            CHAR,
    NEXT_ACTION       CHAR(2),
    DATA_STATUS       CHAR(2),
    DATA_FLAG         CHAR,
    DATA_SOURCE       CHAR,
    CHECK_FLAG        CHAR,
    CHECK_DESC        VARCHAR2(512),
    CHECK_ERR_TYPE    CHAR,
    DATA_VERSION      NUMBER(8),
    DATA_REJ_DESC     VARCHAR2(128),
    DATA_DEL_DESC     VARCHAR2(128),
    DATA_CRT_USER     VARCHAR2(20),
    DATA_CRT_DATE     CHAR(8),
    DATA_CRT_TIME     CHAR(14),
    DATA_CHG_USER     VARCHAR2(20),
    DATA_CHG_DATE     CHAR(8),
    DATA_CHG_TIME     CHAR(14),
    DATA_APV_USER     VARCHAR2(20),
    DATA_APV_DATE     CHAR(8),
    DATA_APV_TIME     CHAR(14),
    RSV1              VARCHAR2(180),
    RSV2              VARCHAR2(180),
    RSV3              VARCHAR2(180),
    RSV4              VARCHAR2(180),
    RSV5              VARCHAR2(180),
    REMARKS           VARCHAR2(180),
    C_CBRC_ID         VARCHAR2(14),
    GPMS_NEXTACTION   VARCHAR2(8),
    BUSINESS_LINE     VARCHAR2(256)
)
/

comment on table GP_BM_BRANCH is '机构信息表'
/

comment on column GP_BM_BRANCH.DATA_ID is '数据ID'
/

comment on column GP_BM_BRANCH.DATA_DATE is '数据日期'
/

comment on column GP_BM_BRANCH.CORP_ID is '法人机构号'
/

comment on column GP_BM_BRANCH.ORG_ID is '机构号'
/

comment on column GP_BM_BRANCH.GROUP_ID is '部门编号'
/

comment on column GP_BM_BRANCH.BRCODE is '内部机构号'
/

comment on column GP_BM_BRANCH.BRNO is '机构代码'
/

comment on column GP_BM_BRANCH.BRNAME is '机构名称'
/

comment on column GP_BM_BRANCH.BRCLASS is '机构级别'
/

comment on column GP_BM_BRANCH.BRATTR is '机构属性'
/

comment on column GP_BM_BRANCH.BLN_BRANCH_BRCODE is '归属分行'
/

comment on column GP_BM_BRANCH.BLN_MANAGE_BRCODE is '账务机构'
/

comment on column GP_BM_BRANCH.BLN_UP_BRCODE is '上级机构'
/

comment on column GP_BM_BRANCH.LINKMAN is '联系人'
/

comment on column GP_BM_BRANCH.TELENO is '联系电话'
/

comment on column GP_BM_BRANCH.ADDRESS is '联系地址'
/

comment on column GP_BM_BRANCH.POSTNO is '邮编'
/

comment on column GP_BM_BRANCH.OTHER_AREA_FLAG is '异地行标识'
/

comment on column GP_BM_BRANCH.REGIONALISM is '行政区划代码'
/

comment on column GP_BM_BRANCH.FINANCE_CODE is '金融机构代码'
/

comment on column GP_BM_BRANCH.STATUS is '有效标识'
/

comment on column GP_BM_BRANCH.MISCFLGS is '扩展标识'
/

comment on column GP_BM_BRANCH.MISC is '扩展域'
/

comment on column GP_BM_BRANCH.LAST_UPD_TLR is '最后更新操作员'
/

comment on column GP_BM_BRANCH.LAST_UPD_FUNC is '最后修改交易码'
/

comment on column GP_BM_BRANCH.LAST_UPD_TIME is '最后更新时间'
/

comment on column GP_BM_BRANCH.ST is '有效标识'
/

comment on column GP_BM_BRANCH.IS_LOCK is '是否锁定'
/

comment on column GP_BM_BRANCH.IS_DEL is '是否已删除'
/

comment on column GP_BM_BRANCH.NEXT_ACTION is '下一动作'
/

comment on column GP_BM_BRANCH.DATA_STATUS is '数据状态'
/

comment on column GP_BM_BRANCH.DATA_FLAG is '数据是否已删除'
/

comment on column GP_BM_BRANCH.DATA_SOURCE is '数据来源'
/

comment on column GP_BM_BRANCH.CHECK_FLAG is '校验标识'
/

comment on column GP_BM_BRANCH.CHECK_DESC is '校验结果'
/

comment on column GP_BM_BRANCH.CHECK_ERR_TYPE is '校验失败类型'
/

comment on column GP_BM_BRANCH.DATA_VERSION is '数据版本'
/

comment on column GP_BM_BRANCH.DATA_REJ_DESC is '数据审核拒绝原因'
/

comment on column GP_BM_BRANCH.DATA_DEL_DESC is '数据删除描述'
/

comment on column GP_BM_BRANCH.DATA_CRT_USER is '数据创建/导入用户'
/

comment on column GP_BM_BRANCH.DATA_CRT_DATE is '数据创建/导入日期'
/

comment on column GP_BM_BRANCH.DATA_CRT_TIME is '数据创建/导入时间'
/

comment on column GP_BM_BRANCH.DATA_CHG_USER is '数据修改/删除用户'
/

comment on column GP_BM_BRANCH.DATA_CHG_DATE is '数据修改/删除日期'
/

comment on column GP_BM_BRANCH.DATA_CHG_TIME is '数据修改/删除时间'
/

comment on column GP_BM_BRANCH.DATA_APV_USER is '数据审核/拒绝用户'
/

comment on column GP_BM_BRANCH.DATA_APV_DATE is '数据审核/拒绝日期'
/

comment on column GP_BM_BRANCH.DATA_APV_TIME is '数据审核/拒绝时间'
/

comment on column GP_BM_BRANCH.RSV1 is '备用1'
/

comment on column GP_BM_BRANCH.RSV2 is '备用2'
/

comment on column GP_BM_BRANCH.RSV3 is '备用3'
/

comment on column GP_BM_BRANCH.RSV4 is '备用4'
/

comment on column GP_BM_BRANCH.RSV5 is '备用5'
/

comment on column GP_BM_BRANCH.REMARKS is '备注'
/

create unique index IDX_GP_BM_BRANCH_01
    on GP_BM_BRANCH (BRNO)
/

create table GP_BM_BRANCH_PENDING
(
    DATA_ID           VARCHAR2(64) not null
        primary key,
    DATA_DATE         CHAR(8),
    CORP_ID           VARCHAR2(14),
    ORG_ID            VARCHAR2(14),
    GROUP_ID          VARCHAR2(14),
    BRCODE            VARCHAR2(20),
    BRNO              VARCHAR2(20),
    BRNAME            VARCHAR2(60),
    BRCLASS           CHAR,
    BRATTR            CHAR,
    BLN_BRANCH_CLASS  CHAR,
    BLN_BRANCH_BRCODE VARCHAR2(20),
    BLN_MANAGE_BRCODE VARCHAR2(20),
    BLN_UP_BRCODE     VARCHAR2(20),
    LINKMAN           VARCHAR2(20),
    TELENO            VARCHAR2(20),
    ADDRESS           VARCHAR2(100),
    POSTNO            CHAR(10),
    OTHER_AREA_FLAG   CHAR,
    REGIONALISM       CHAR(6),
    FINANCE_CODE      CHAR(14),
    STATUS            CHAR,
    MISCFLGS          CHAR,
    MISC              VARCHAR2(256),
    LAST_UPD_TLR      CHAR(8),
    LAST_UPD_FUNC     CHAR(10),
    LAST_UPD_TIME     CHAR(17),
    ST                CHAR,
    IS_LOCK           CHAR,
    IS_DEL            CHAR,
    NEXT_ACTION       CHAR(2),
    DATA_STATUS       CHAR(2),
    DATA_FLAG         CHAR,
    DATA_SOURCE       CHAR,
    CHECK_FLAG        CHAR,
    CHECK_DESC        VARCHAR2(512),
    CHECK_ERR_TYPE    CHAR,
    DATA_VERSION      NUMBER(8),
    DATA_REJ_DESC     VARCHAR2(128),
    DATA_DEL_DESC     VARCHAR2(128),
    DATA_CRT_USER     VARCHAR2(20),
    DATA_CRT_DATE     CHAR(8),
    DATA_CRT_TIME     CHAR(14),
    DATA_CHG_USER     VARCHAR2(20),
    DATA_CHG_DATE     CHAR(8),
    DATA_CHG_TIME     CHAR(14),
    DATA_APV_USER     VARCHAR2(20),
    DATA_APV_DATE     CHAR(8),
    DATA_APV_TIME     CHAR(14),
    RSV1              VARCHAR2(180),
    RSV2              VARCHAR2(180),
    RSV3              VARCHAR2(180),
    RSV4              VARCHAR2(180),
    RSV5              VARCHAR2(180),
    REMARKS           VARCHAR2(180),
    C_CBRC_ID         VARCHAR2(8),
    GPMS_NEXTACTION   VARCHAR2(8),
    BUSINESS_LINE     VARCHAR2(256)
)
/

comment on table GP_BM_BRANCH_PENDING is '机构信息pending表'
/

comment on column GP_BM_BRANCH_PENDING.DATA_ID is '数据ID'
/

comment on column GP_BM_BRANCH_PENDING.DATA_DATE is '数据日期'
/

comment on column GP_BM_BRANCH_PENDING.CORP_ID is '法人机构号'
/

comment on column GP_BM_BRANCH_PENDING.ORG_ID is '机构号'
/

comment on column GP_BM_BRANCH_PENDING.GROUP_ID is '部门编号'
/

comment on column GP_BM_BRANCH_PENDING.NEXT_ACTION is '下一动作'
/

comment on column GP_BM_BRANCH_PENDING.DATA_STATUS is '数据状态'
/

comment on column GP_BM_BRANCH_PENDING.DATA_FLAG is '数据是否已删除'
/

comment on column GP_BM_BRANCH_PENDING.DATA_SOURCE is '数据来源'
/

comment on column GP_BM_BRANCH_PENDING.CHECK_FLAG is '校验标识'
/

comment on column GP_BM_BRANCH_PENDING.CHECK_DESC is '校验结果'
/

comment on column GP_BM_BRANCH_PENDING.CHECK_ERR_TYPE is '校验失败类型'
/

comment on column GP_BM_BRANCH_PENDING.DATA_VERSION is '数据版本'
/

comment on column GP_BM_BRANCH_PENDING.DATA_REJ_DESC is '数据审核拒绝原因'
/

comment on column GP_BM_BRANCH_PENDING.DATA_DEL_DESC is '数据删除描述'
/

comment on column GP_BM_BRANCH_PENDING.DATA_CRT_USER is '数据创建/导入用户'
/

comment on column GP_BM_BRANCH_PENDING.DATA_CRT_DATE is '数据创建/导入日期'
/

comment on column GP_BM_BRANCH_PENDING.DATA_CRT_TIME is '数据创建/导入时间'
/

comment on column GP_BM_BRANCH_PENDING.DATA_CHG_USER is '数据修改/删除用户'
/

comment on column GP_BM_BRANCH_PENDING.DATA_CHG_DATE is '数据修改/删除日期'
/

comment on column GP_BM_BRANCH_PENDING.DATA_CHG_TIME is '数据修改/删除时间'
/

comment on column GP_BM_BRANCH_PENDING.DATA_APV_USER is '数据审核/拒绝用户'
/

comment on column GP_BM_BRANCH_PENDING.DATA_APV_DATE is '数据审核/拒绝日期'
/

comment on column GP_BM_BRANCH_PENDING.DATA_APV_TIME is '数据审核/拒绝时间'
/

comment on column GP_BM_BRANCH_PENDING.RSV1 is '备用1'
/

comment on column GP_BM_BRANCH_PENDING.RSV2 is '备用2'
/

comment on column GP_BM_BRANCH_PENDING.RSV3 is '备用3'
/

comment on column GP_BM_BRANCH_PENDING.RSV4 is '备用4'
/

comment on column GP_BM_BRANCH_PENDING.RSV5 is '备用5'
/

create table GP_BM_BUSINESS_LINE
(
    DATA_ID            VARCHAR2(64) not null
        primary key,
    DATA_DATE          CHAR(8),
    CORP_ID            VARCHAR2(14),
    ORG_ID             VARCHAR2(14),
    GROUP_ID           VARCHAR2(14),
    INQ_ORG_ID         CHAR(24),
    INQ_GROUP_ID       CHAR(24),
    BUSINESS_LINE      VARCHAR2(32),
    BUSINESS_LINE_NAME VARCHAR2(256),
    STATUS             VARCHAR2(1),
    REMARKS            VARCHAR2(512),
    CHECK_FLAG         CHAR,
    CHECK_DESC         VARCHAR2(512),
    CHECK_ERR_TYPE     CHAR,
    NEXT_ACTION        CHAR(2),
    DATA_STATUS        CHAR(2),
    DATA_FLAG          CHAR,
    DATA_SOURCE        CHAR,
    DATA_VERSION       NUMBER(8),
    DATA_REJ_DESC      VARCHAR2(128),
    DATA_DEL_DESC      VARCHAR2(128),
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
    GPMS_NEXT_ACTION   VARCHAR2(2)
)
/

comment on table GP_BM_BUSINESS_LINE is '业务条线表'
/

comment on column GP_BM_BUSINESS_LINE.DATA_ID is '数据ID'
/

comment on column GP_BM_BUSINESS_LINE.DATA_DATE is '数据日期'
/

comment on column GP_BM_BUSINESS_LINE.CORP_ID is '法人机构号'
/

comment on column GP_BM_BUSINESS_LINE.ORG_ID is '机构号'
/

comment on column GP_BM_BUSINESS_LINE.GROUP_ID is '部门编号'
/

comment on column GP_BM_BUSINESS_LINE.INQ_ORG_ID is '查询机构号'
/

comment on column GP_BM_BUSINESS_LINE.INQ_GROUP_ID is '查询组号'
/

comment on column GP_BM_BUSINESS_LINE.BUSINESS_LINE is '业务线'
/

comment on column GP_BM_BUSINESS_LINE.BUSINESS_LINE_NAME is '业务线名称'
/

comment on column GP_BM_BUSINESS_LINE.STATUS is '是否有效'
/

comment on column GP_BM_BUSINESS_LINE.REMARKS is '备注'
/

comment on column GP_BM_BUSINESS_LINE.CHECK_FLAG is '校验标识'
/

comment on column GP_BM_BUSINESS_LINE.CHECK_DESC is '校验结果'
/

comment on column GP_BM_BUSINESS_LINE.CHECK_ERR_TYPE is '校验失败类型'
/

comment on column GP_BM_BUSINESS_LINE.NEXT_ACTION is '下一动作'
/

comment on column GP_BM_BUSINESS_LINE.DATA_STATUS is '数据状态'
/

comment on column GP_BM_BUSINESS_LINE.DATA_FLAG is '数据是否已删除'
/

comment on column GP_BM_BUSINESS_LINE.DATA_SOURCE is '数据来源'
/

comment on column GP_BM_BUSINESS_LINE.DATA_VERSION is '数据版本'
/

comment on column GP_BM_BUSINESS_LINE.DATA_REJ_DESC is '数据审核拒绝原因'
/

comment on column GP_BM_BUSINESS_LINE.DATA_DEL_DESC is '数据删除描述'
/

comment on column GP_BM_BUSINESS_LINE.DATA_CRT_USER is '数据创建/导入用户'
/

comment on column GP_BM_BUSINESS_LINE.DATA_CRT_DATE is '数据创建/导入日期'
/

comment on column GP_BM_BUSINESS_LINE.DATA_CRT_TIME is '数据创建/导入时间'
/

comment on column GP_BM_BUSINESS_LINE.DATA_CHG_USER is '数据修改/删除用户'
/

comment on column GP_BM_BUSINESS_LINE.DATA_CHG_DATE is '数据修改/删除日期'
/

comment on column GP_BM_BUSINESS_LINE.DATA_CHG_TIME is '数据修改/删除时间'
/

comment on column GP_BM_BUSINESS_LINE.DATA_APV_USER is '数据审核/拒绝用户'
/

comment on column GP_BM_BUSINESS_LINE.DATA_APV_DATE is '数据审核/拒绝日期'
/

comment on column GP_BM_BUSINESS_LINE.DATA_APV_TIME is '数据审核/拒绝时间'
/

comment on column GP_BM_BUSINESS_LINE.RSV1 is '备用1'
/

comment on column GP_BM_BUSINESS_LINE.RSV2 is '备用2'
/

comment on column GP_BM_BUSINESS_LINE.RSV3 is '备用3'
/

comment on column GP_BM_BUSINESS_LINE.RSV4 is '备用4'
/

comment on column GP_BM_BUSINESS_LINE.RSV5 is '备用5'
/

create table GP_BM_BUSINESS_LINE_PENDING
(
    DATA_ID            VARCHAR2(64) not null
        primary key,
    DATA_DATE          CHAR(8),
    CORP_ID            VARCHAR2(14),
    ORG_ID             VARCHAR2(14),
    GROUP_ID           VARCHAR2(14),
    INQ_ORG_ID         CHAR(24),
    INQ_GROUP_ID       CHAR(24),
    BUSINESS_LINE      VARCHAR2(32),
    BUSINESS_LINE_NAME VARCHAR2(256),
    STATUS             VARCHAR2(1),
    REMARKS            VARCHAR2(512),
    CHECK_FLAG         CHAR,
    CHECK_DESC         VARCHAR2(512),
    CHECK_ERR_TYPE     CHAR,
    NEXT_ACTION        CHAR(2),
    DATA_STATUS        CHAR(2),
    DATA_FLAG          CHAR,
    DATA_SOURCE        CHAR,
    DATA_VERSION       NUMBER(8),
    DATA_REJ_DESC      VARCHAR2(128),
    DATA_DEL_DESC      VARCHAR2(128),
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
    GPMS_NEXT_ACTION   VARCHAR2(2)
)
/

comment on table GP_BM_BUSINESS_LINE_PENDING is '业务条线pending表'
/

comment on column GP_BM_BUSINESS_LINE_PENDING.DATA_ID is '数据ID'
/

comment on column GP_BM_BUSINESS_LINE_PENDING.DATA_DATE is '数据日期'
/

comment on column GP_BM_BUSINESS_LINE_PENDING.CORP_ID is '法人机构号'
/

comment on column GP_BM_BUSINESS_LINE_PENDING.ORG_ID is '机构号'
/

comment on column GP_BM_BUSINESS_LINE_PENDING.GROUP_ID is '部门编号'
/

comment on column GP_BM_BUSINESS_LINE_PENDING.INQ_ORG_ID is '查询机构号'
/

comment on column GP_BM_BUSINESS_LINE_PENDING.INQ_GROUP_ID is '查询组号'
/

comment on column GP_BM_BUSINESS_LINE_PENDING.BUSINESS_LINE is '业务线'
/

comment on column GP_BM_BUSINESS_LINE_PENDING.BUSINESS_LINE_NAME is '业务线名称'
/

comment on column GP_BM_BUSINESS_LINE_PENDING.STATUS is '是否有效'
/

comment on column GP_BM_BUSINESS_LINE_PENDING.REMARKS is '备注'
/

comment on column GP_BM_BUSINESS_LINE_PENDING.CHECK_FLAG is '校验标识'
/

comment on column GP_BM_BUSINESS_LINE_PENDING.CHECK_DESC is '校验结果'
/

comment on column GP_BM_BUSINESS_LINE_PENDING.CHECK_ERR_TYPE is '校验失败类型'
/

comment on column GP_BM_BUSINESS_LINE_PENDING.NEXT_ACTION is '下一动作'
/

comment on column GP_BM_BUSINESS_LINE_PENDING.DATA_STATUS is '数据状态'
/

comment on column GP_BM_BUSINESS_LINE_PENDING.DATA_FLAG is '数据是否已删除'
/

comment on column GP_BM_BUSINESS_LINE_PENDING.DATA_SOURCE is '数据来源'
/

comment on column GP_BM_BUSINESS_LINE_PENDING.DATA_VERSION is '数据版本'
/

comment on column GP_BM_BUSINESS_LINE_PENDING.DATA_REJ_DESC is '数据审核拒绝原因'
/

comment on column GP_BM_BUSINESS_LINE_PENDING.DATA_DEL_DESC is '数据删除描述'
/

comment on column GP_BM_BUSINESS_LINE_PENDING.DATA_CRT_USER is '数据创建/导入用户'
/

comment on column GP_BM_BUSINESS_LINE_PENDING.DATA_CRT_DATE is '数据创建/导入日期'
/

comment on column GP_BM_BUSINESS_LINE_PENDING.DATA_CRT_TIME is '数据创建/导入时间'
/

comment on column GP_BM_BUSINESS_LINE_PENDING.DATA_CHG_USER is '数据修改/删除用户'
/

comment on column GP_BM_BUSINESS_LINE_PENDING.DATA_CHG_DATE is '数据修改/删除日期'
/

comment on column GP_BM_BUSINESS_LINE_PENDING.DATA_CHG_TIME is '数据修改/删除时间'
/

comment on column GP_BM_BUSINESS_LINE_PENDING.DATA_APV_USER is '数据审核/拒绝用户'
/

comment on column GP_BM_BUSINESS_LINE_PENDING.DATA_APV_DATE is '数据审核/拒绝日期'
/

comment on column GP_BM_BUSINESS_LINE_PENDING.DATA_APV_TIME is '数据审核/拒绝时间'
/

comment on column GP_BM_BUSINESS_LINE_PENDING.RSV1 is '备用1'
/

comment on column GP_BM_BUSINESS_LINE_PENDING.RSV2 is '备用2'
/

comment on column GP_BM_BUSINESS_LINE_PENDING.RSV3 is '备用3'
/

comment on column GP_BM_BUSINESS_LINE_PENDING.RSV4 is '备用4'
/

comment on column GP_BM_BUSINESS_LINE_PENDING.RSV5 is '备用5'
/

create table GP_BM_BUSINESS_PARAM
(
    DATA_ID        VARCHAR2(64)  not null,
    DATA_DATE      CHAR(8),
    CORP_ID        VARCHAR2(14),
    ORG_ID         VARCHAR2(14),
    GROUP_ID       VARCHAR2(14),
    PARAM_ID       VARCHAR2(30),
    PARAM_GROUP_ID VARCHAR2(20),
    PARAM_START_DT CHAR(8),
    PARAM_END_DT   CHAR(8),
    PARAM_NAME     VARCHAR2(512),
    PARAM_VALUE    VARCHAR2(512) not null,
    LOAD_TYPE      CHAR,
    IF_CANMODIFY   CHAR,
    CATALOG        VARCHAR2(100),
    LAST_UPD_TLR   CHAR(8),
    LAST_UPD_FUNC  VARCHAR2(10),
    LAST_UPD_DATE  CHAR(8),
    NEXT_ACTION    CHAR(2),
    DATA_STATUS    CHAR(2),
    DATA_FLAG      CHAR,
    DATA_SOURCE    CHAR,
    CHECK_FLAG     CHAR,
    CHECK_DESC     VARCHAR2(512),
    CHECK_ERR_TYPE CHAR,
    DATA_VERSION   NUMBER(8),
    DATA_REJ_DESC  VARCHAR2(128),
    DATA_DEL_DESC  VARCHAR2(128),
    DATA_CRT_USER  VARCHAR2(20),
    DATA_CRT_DATE  CHAR(8),
    DATA_CRT_TIME  CHAR(14),
    DATA_CHG_USER  VARCHAR2(20),
    DATA_CHG_DATE  CHAR(8),
    DATA_CHG_TIME  CHAR(14),
    DATA_APV_USER  VARCHAR2(20),
    DATA_APV_DATE  CHAR(8),
    DATA_APV_TIME  CHAR(14),
    RSV1           VARCHAR2(180),
    RSV2           VARCHAR2(180),
    RSV3           VARCHAR2(180),
    RSV4           VARCHAR2(180),
    RSV5           VARCHAR2(180),
    REMARKS        VARCHAR2(180)
)
/

comment on table GP_BM_BUSINESS_PARAM is '业务条线参数表'
/

comment on column GP_BM_BUSINESS_PARAM.DATA_ID is '数据ID'
/

comment on column GP_BM_BUSINESS_PARAM.DATA_DATE is '数据日期'
/

comment on column GP_BM_BUSINESS_PARAM.CORP_ID is '法人机构号'
/

comment on column GP_BM_BUSINESS_PARAM.ORG_ID is '机构号'
/

comment on column GP_BM_BUSINESS_PARAM.GROUP_ID is '部门编号'
/

comment on column GP_BM_BUSINESS_PARAM.PARAM_ID is '参数ID'
/

comment on column GP_BM_BUSINESS_PARAM.PARAM_GROUP_ID is '参数组号'
/

comment on column GP_BM_BUSINESS_PARAM.PARAM_START_DT is '有效期起'
/

comment on column GP_BM_BUSINESS_PARAM.PARAM_END_DT is '有效止日'
/

comment on column GP_BM_BUSINESS_PARAM.PARAM_NAME is '参数名称'
/

comment on column GP_BM_BUSINESS_PARAM.PARAM_VALUE is '参数值'
/

comment on column GP_BM_BUSINESS_PARAM.LOAD_TYPE is '加载方式'
/

comment on column GP_BM_BUSINESS_PARAM.IF_CANMODIFY is '是否可修改'
/

comment on column GP_BM_BUSINESS_PARAM.CATALOG is '参数分类'
/

comment on column GP_BM_BUSINESS_PARAM.LAST_UPD_TLR is '最后更新操作员'
/

comment on column GP_BM_BUSINESS_PARAM.LAST_UPD_FUNC is '最后修改交易码'
/

comment on column GP_BM_BUSINESS_PARAM.LAST_UPD_DATE is '最后更新时间'
/

comment on column GP_BM_BUSINESS_PARAM.NEXT_ACTION is '下一动作'
/

comment on column GP_BM_BUSINESS_PARAM.DATA_STATUS is '数据状态'
/

comment on column GP_BM_BUSINESS_PARAM.DATA_FLAG is '数据是否已删除'
/

comment on column GP_BM_BUSINESS_PARAM.DATA_SOURCE is '数据来源'
/

comment on column GP_BM_BUSINESS_PARAM.CHECK_FLAG is '校验标识'
/

comment on column GP_BM_BUSINESS_PARAM.CHECK_DESC is '校验结果'
/

comment on column GP_BM_BUSINESS_PARAM.CHECK_ERR_TYPE is '校验失败类型'
/

comment on column GP_BM_BUSINESS_PARAM.DATA_VERSION is '数据版本'
/

comment on column GP_BM_BUSINESS_PARAM.DATA_REJ_DESC is '数据审核拒绝原因'
/

comment on column GP_BM_BUSINESS_PARAM.DATA_DEL_DESC is '数据删除描述'
/

comment on column GP_BM_BUSINESS_PARAM.DATA_CRT_USER is '数据创建/导入用户'
/

comment on column GP_BM_BUSINESS_PARAM.DATA_CRT_DATE is '数据创建/导入日期'
/

comment on column GP_BM_BUSINESS_PARAM.DATA_CRT_TIME is '数据创建/导入时间'
/

comment on column GP_BM_BUSINESS_PARAM.DATA_CHG_USER is '数据修改/删除用户'
/

comment on column GP_BM_BUSINESS_PARAM.DATA_CHG_DATE is '数据修改/删除日期'
/

comment on column GP_BM_BUSINESS_PARAM.DATA_CHG_TIME is '数据修改/删除时间'
/

comment on column GP_BM_BUSINESS_PARAM.DATA_APV_USER is '数据审核/拒绝用户'
/

comment on column GP_BM_BUSINESS_PARAM.DATA_APV_DATE is '数据审核/拒绝日期'
/

comment on column GP_BM_BUSINESS_PARAM.DATA_APV_TIME is '数据审核/拒绝时间'
/

comment on column GP_BM_BUSINESS_PARAM.RSV1 is '备用1'
/

comment on column GP_BM_BUSINESS_PARAM.RSV2 is '备用2'
/

comment on column GP_BM_BUSINESS_PARAM.RSV3 is '备用3'
/

comment on column GP_BM_BUSINESS_PARAM.RSV4 is '备用4'
/

comment on column GP_BM_BUSINESS_PARAM.RSV5 is '备用5'
/

comment on column GP_BM_BUSINESS_PARAM.REMARKS is '备注'
/

create table GP_BM_CHECK_CONFIG
(
    DATA_ID               VARCHAR2(64) not null
        primary key,
    DATA_DATE             CHAR(8),
    CORP_ID               VARCHAR2(14),
    ORG_ID                VARCHAR2(14),
    GROUP_ID              VARCHAR2(14),
    INQ_ORG_ID            CHAR(24),
    INQ_GROUP_ID          CHAR(24),
    CK_GROUP              VARCHAR2(32) not null,
    CK_COLUMN             VARCHAR2(128),
    CK_DATATYPE           CHAR,
    CK_CHAR_SET           CHAR,
    CK_LENGTH             VARCHAR2(64),
    CK_BORDER             VARCHAR2(128),
    CK_NULL_TYPE          CHAR,
    CK_NULL_FUN           VARCHAR2(1024),
    CK_REG_EXPRESS        VARCHAR2(512),
    CK_VALIDITY_TYPE      CHAR,
    CK_VALIDITY_FUN       VARCHAR2(1000),
    CK_IF_CHAR_FLAG       CHAR,
    CK_IF_CHAR_SET        CHAR,
    CK_IF_LENGTH          VARCHAR2(64),
    CK_RETURN_MESSAGE     VARCHAR2(1024),
    CK_COLUMN_XML         VARCHAR2(1024),
    CK_COLUMN_COMMENT     VARCHAR2(1024),
    CK_NULL_MESSAGE       VARCHAR2(1024),
    CK_VALIDITY_MESSAGE   VARCHAR2(1024),
    SYS_ID                VARCHAR2(32),
    REMARKS               VARCHAR2(512),
    CHECK_FLAG            CHAR,
    CHECK_DESC            VARCHAR2(512),
    CHECK_ERR_TYPE        CHAR,
    NEXT_ACTION           CHAR(2),
    DATA_STATUS           CHAR(2),
    DATA_FLAG             CHAR,
    DATA_SOURCE           CHAR,
    DATA_VERSION          NUMBER(8),
    DATA_REJ_DESC         VARCHAR2(128),
    DATA_DEL_DESC         VARCHAR2(128),
    DATA_CRT_USER         VARCHAR2(20),
    DATA_CRT_DATE         CHAR(8),
    DATA_CRT_TIME         CHAR(14),
    DATA_CHG_USER         VARCHAR2(20),
    DATA_CHG_DATE         CHAR(8),
    DATA_CHG_TIME         CHAR(14),
    DATA_APV_USER         VARCHAR2(20),
    DATA_APV_DATE         CHAR(8),
    DATA_APV_TIME         CHAR(14),
    RSV1                  VARCHAR2(180),
    RSV2                  VARCHAR2(180),
    RSV3                  VARCHAR2(180),
    RSV4                  VARCHAR2(180),
    RSV5                  VARCHAR2(180),
    CK_COLUMN_BATCH       VARCHAR2(128),
    CK_NULL_FUN_BATCH     VARCHAR2(256),
    CK_VALIDITY_FUN_BATCH VARCHAR2(256),
    CHECK_RULE_NO         VARCHAR2(32),
    CHECK_TYPE            VARCHAR2(32),
    CK_TABLE_NAME_CN      VARCHAR2(128),
    CK_TABLE_NAME_EN      VARCHAR2(128)
)
/

comment on table GP_BM_CHECK_CONFIG is '校验表'
/

comment on column GP_BM_CHECK_CONFIG.DATA_ID is '数据ID'
/

comment on column GP_BM_CHECK_CONFIG.DATA_DATE is '数据日期'
/

comment on column GP_BM_CHECK_CONFIG.CORP_ID is '法人机构号'
/

comment on column GP_BM_CHECK_CONFIG.ORG_ID is '机构号'
/

comment on column GP_BM_CHECK_CONFIG.GROUP_ID is '部门编号'
/

comment on column GP_BM_CHECK_CONFIG.INQ_ORG_ID is '查询机构号'
/

comment on column GP_BM_CHECK_CONFIG.INQ_GROUP_ID is '查询组号'
/

comment on column GP_BM_CHECK_CONFIG.CK_GROUP is '检验组'
/

comment on column GP_BM_CHECK_CONFIG.CK_COLUMN is '校验列'
/

comment on column GP_BM_CHECK_CONFIG.CK_DATATYPE is '数据类型'
/

comment on column GP_BM_CHECK_CONFIG.CK_CHAR_SET is '数据字符类型'
/

comment on column GP_BM_CHECK_CONFIG.CK_LENGTH is '数据长度'
/

comment on column GP_BM_CHECK_CONFIG.CK_BORDER is '数据的上下线'
/

comment on column GP_BM_CHECK_CONFIG.CK_NULL_TYPE is '必填项检查类型'
/

comment on column GP_BM_CHECK_CONFIG.CK_NULL_FUN is '必填项检查方法'
/

comment on column GP_BM_CHECK_CONFIG.CK_REG_EXPRESS is '正则表达式'
/

comment on column GP_BM_CHECK_CONFIG.CK_VALIDITY_TYPE is '有效性检查类型'
/

comment on column GP_BM_CHECK_CONFIG.CK_VALIDITY_FUN is '有效性检查方法'
/

comment on column GP_BM_CHECK_CONFIG.CK_IF_CHAR_FLAG is '接口字符集校验'
/

comment on column GP_BM_CHECK_CONFIG.CK_IF_CHAR_SET is '接口字符集类型'
/

comment on column GP_BM_CHECK_CONFIG.CK_IF_LENGTH is '接口数据长度'
/

comment on column GP_BM_CHECK_CONFIG.CK_RETURN_MESSAGE is '校验结果'
/

comment on column GP_BM_CHECK_CONFIG.CK_COLUMN_XML is '返回信息'
/

comment on column GP_BM_CHECK_CONFIG.CK_COLUMN_COMMENT is '返回信息'
/

comment on column GP_BM_CHECK_CONFIG.CK_NULL_MESSAGE is '校验结果'
/

comment on column GP_BM_CHECK_CONFIG.CK_VALIDITY_MESSAGE is '校验结果'
/

comment on column GP_BM_CHECK_CONFIG.SYS_ID is '系统标识'
/

comment on column GP_BM_CHECK_CONFIG.REMARKS is '备注'
/

comment on column GP_BM_CHECK_CONFIG.CHECK_FLAG is '校验标识'
/

comment on column GP_BM_CHECK_CONFIG.CHECK_DESC is '校验结果'
/

comment on column GP_BM_CHECK_CONFIG.CHECK_ERR_TYPE is '校验失败类型'
/

comment on column GP_BM_CHECK_CONFIG.NEXT_ACTION is '下一动作'
/

comment on column GP_BM_CHECK_CONFIG.DATA_STATUS is '数据状态'
/

comment on column GP_BM_CHECK_CONFIG.DATA_FLAG is '数据是否已删除'
/

comment on column GP_BM_CHECK_CONFIG.DATA_SOURCE is '数据来源'
/

comment on column GP_BM_CHECK_CONFIG.DATA_VERSION is '数据版本'
/

comment on column GP_BM_CHECK_CONFIG.DATA_REJ_DESC is '数据审核拒绝原因'
/

comment on column GP_BM_CHECK_CONFIG.DATA_DEL_DESC is '数据删除描述'
/

comment on column GP_BM_CHECK_CONFIG.DATA_CRT_USER is '数据创建/导入用户'
/

comment on column GP_BM_CHECK_CONFIG.DATA_CRT_DATE is '数据创建/导入日期'
/

comment on column GP_BM_CHECK_CONFIG.DATA_CRT_TIME is '数据创建/导入时间'
/

comment on column GP_BM_CHECK_CONFIG.DATA_CHG_USER is '数据修改/删除用户'
/

comment on column GP_BM_CHECK_CONFIG.DATA_CHG_DATE is '数据修改/删除日期'
/

comment on column GP_BM_CHECK_CONFIG.DATA_CHG_TIME is '数据修改/删除时间'
/

comment on column GP_BM_CHECK_CONFIG.DATA_APV_USER is '数据审核/拒绝用户'
/

comment on column GP_BM_CHECK_CONFIG.DATA_APV_DATE is '数据审核/拒绝日期'
/

comment on column GP_BM_CHECK_CONFIG.DATA_APV_TIME is '数据审核/拒绝时间'
/

comment on column GP_BM_CHECK_CONFIG.RSV1 is '备用1'
/

comment on column GP_BM_CHECK_CONFIG.RSV2 is '备用2'
/

comment on column GP_BM_CHECK_CONFIG.RSV3 is '备用3'
/

comment on column GP_BM_CHECK_CONFIG.RSV4 is '备用4'
/

comment on column GP_BM_CHECK_CONFIG.RSV5 is '备用5'
/

comment on column GP_BM_CHECK_CONFIG.CHECK_RULE_NO is '人行校验编号'
/

comment on column GP_BM_CHECK_CONFIG.CHECK_TYPE is '人行校验类型'
/

comment on column GP_BM_CHECK_CONFIG.CK_TABLE_NAME_CN is '表名中文名'
/

comment on column GP_BM_CHECK_CONFIG.CK_TABLE_NAME_EN is '表名英文名'
/

create table GP_BM_CHG_ORG_CFG
(
    DATA_ID         VARCHAR2(64) not null
        primary key,
    DATA_DATE       CHAR(8),
    CORP_ID         VARCHAR2(14),
    ORG_ID          VARCHAR2(14),
    GROUP_ID        VARCHAR2(14),
    USER_ID         VARCHAR2(32),
    CHG_ORG_ID      VARCHAR2(32),
    REMARK          VARCHAR2(512),
    NEXT_ACTION     CHAR(2),
    DATA_STATUS     CHAR(2),
    DATA_FLAG       CHAR,
    DATA_SOURCE     CHAR,
    CHECK_FLAG      CHAR,
    CHECK_DESC      VARCHAR2(512),
    CHECK_ERR_TYPE  CHAR,
    DATA_VERSION    NUMBER(8),
    DATA_REJ_DESC   VARCHAR2(128),
    DATA_DEL_DESC   VARCHAR2(128),
    DATA_CRT_USER   VARCHAR2(20),
    DATA_CRT_DATE   CHAR(8),
    DATA_CRT_TIME   CHAR(14),
    DATA_CHG_USER   VARCHAR2(20),
    DATA_CHG_DATE   CHAR(8),
    DATA_CHG_TIME   CHAR(14),
    DATA_APV_USER   VARCHAR2(20),
    DATA_APV_DATE   CHAR(8),
    DATA_APV_TIME   CHAR(14),
    RSV1            VARCHAR2(180),
    RSV2            VARCHAR2(180),
    RSV3            VARCHAR2(180),
    RSV4            VARCHAR2(180),
    RSV5            VARCHAR2(180),
    GPMS_NEXTACTION VARCHAR2(2)
)
/

comment on table GP_BM_CHG_ORG_CFG is '机构切换配置表'
/

comment on column GP_BM_CHG_ORG_CFG.DATA_ID is '数据ID'
/

comment on column GP_BM_CHG_ORG_CFG.DATA_DATE is '数据日期'
/

comment on column GP_BM_CHG_ORG_CFG.CORP_ID is '法人机构号'
/

comment on column GP_BM_CHG_ORG_CFG.ORG_ID is '机构号'
/

comment on column GP_BM_CHG_ORG_CFG.GROUP_ID is '部门编号'
/

comment on column GP_BM_CHG_ORG_CFG.USER_ID is '用户ID'
/

comment on column GP_BM_CHG_ORG_CFG.CHG_ORG_ID is '机构ID'
/

comment on column GP_BM_CHG_ORG_CFG.REMARK is '备注'
/

comment on column GP_BM_CHG_ORG_CFG.NEXT_ACTION is '下一动作'
/

comment on column GP_BM_CHG_ORG_CFG.DATA_STATUS is '数据状态'
/

comment on column GP_BM_CHG_ORG_CFG.DATA_FLAG is '数据是否已删除'
/

comment on column GP_BM_CHG_ORG_CFG.DATA_SOURCE is '数据来源'
/

comment on column GP_BM_CHG_ORG_CFG.CHECK_FLAG is '校验标识'
/

comment on column GP_BM_CHG_ORG_CFG.CHECK_DESC is '校验结果'
/

comment on column GP_BM_CHG_ORG_CFG.CHECK_ERR_TYPE is '校验失败类型'
/

comment on column GP_BM_CHG_ORG_CFG.DATA_VERSION is '数据版本'
/

comment on column GP_BM_CHG_ORG_CFG.DATA_REJ_DESC is '数据审核拒绝原因'
/

comment on column GP_BM_CHG_ORG_CFG.DATA_DEL_DESC is '数据删除描述'
/

comment on column GP_BM_CHG_ORG_CFG.DATA_CRT_USER is '数据创建/导入用户'
/

comment on column GP_BM_CHG_ORG_CFG.DATA_CRT_DATE is '数据创建/导入日期'
/

comment on column GP_BM_CHG_ORG_CFG.DATA_CRT_TIME is '数据创建/导入时间'
/

comment on column GP_BM_CHG_ORG_CFG.DATA_CHG_USER is '数据修改/删除用户'
/

comment on column GP_BM_CHG_ORG_CFG.DATA_CHG_DATE is '数据修改/删除日期'
/

comment on column GP_BM_CHG_ORG_CFG.DATA_CHG_TIME is '数据修改/删除时间'
/

comment on column GP_BM_CHG_ORG_CFG.DATA_APV_USER is '数据审核/拒绝用户'
/

comment on column GP_BM_CHG_ORG_CFG.DATA_APV_DATE is '数据审核/拒绝日期'
/

comment on column GP_BM_CHG_ORG_CFG.DATA_APV_TIME is '数据审核/拒绝时间'
/

comment on column GP_BM_CHG_ORG_CFG.RSV1 is '备用1'
/

comment on column GP_BM_CHG_ORG_CFG.RSV2 is '备用2'
/

comment on column GP_BM_CHG_ORG_CFG.RSV3 is '备用3'
/

comment on column GP_BM_CHG_ORG_CFG.RSV4 is '备用4'
/

comment on column GP_BM_CHG_ORG_CFG.RSV5 is '备用5'
/

create table GP_BM_CHG_ORG_CFG_PENDING
(
    DATA_ID         VARCHAR2(64) not null
        primary key,
    DATA_DATE       CHAR(8),
    CORP_ID         VARCHAR2(14),
    ORG_ID          VARCHAR2(14),
    GROUP_ID        VARCHAR2(14),
    USER_ID         VARCHAR2(32),
    CHG_ORG_ID      VARCHAR2(32),
    REMARK          VARCHAR2(512),
    NEXT_ACTION     CHAR(2),
    DATA_STATUS     CHAR(2),
    DATA_FLAG       CHAR,
    DATA_SOURCE     CHAR,
    CHECK_FLAG      CHAR,
    CHECK_DESC      VARCHAR2(512),
    CHECK_ERR_TYPE  CHAR,
    DATA_VERSION    NUMBER(8),
    DATA_REJ_DESC   VARCHAR2(128),
    DATA_DEL_DESC   VARCHAR2(128),
    DATA_CRT_USER   VARCHAR2(20),
    DATA_CRT_DATE   CHAR(8),
    DATA_CRT_TIME   CHAR(14),
    DATA_CHG_USER   VARCHAR2(20),
    DATA_CHG_DATE   CHAR(8),
    DATA_CHG_TIME   CHAR(14),
    DATA_APV_USER   VARCHAR2(20),
    DATA_APV_DATE   CHAR(8),
    DATA_APV_TIME   CHAR(14),
    RSV1            VARCHAR2(180),
    RSV2            VARCHAR2(180),
    RSV3            VARCHAR2(180),
    RSV4            VARCHAR2(180),
    RSV5            VARCHAR2(180),
    GPMS_NEXTACTION VARCHAR2(2)
)
/

comment on table GP_BM_CHG_ORG_CFG_PENDING is '机构切换配置pending表'
/

comment on column GP_BM_CHG_ORG_CFG_PENDING.DATA_ID is '数据ID'
/

comment on column GP_BM_CHG_ORG_CFG_PENDING.DATA_DATE is '数据日期'
/

comment on column GP_BM_CHG_ORG_CFG_PENDING.CORP_ID is '法人机构号'
/

comment on column GP_BM_CHG_ORG_CFG_PENDING.ORG_ID is '机构号'
/

comment on column GP_BM_CHG_ORG_CFG_PENDING.GROUP_ID is '部门编号'
/

comment on column GP_BM_CHG_ORG_CFG_PENDING.USER_ID is '用户ID'
/

comment on column GP_BM_CHG_ORG_CFG_PENDING.CHG_ORG_ID is '机构ID'
/

comment on column GP_BM_CHG_ORG_CFG_PENDING.REMARK is '备注'
/

comment on column GP_BM_CHG_ORG_CFG_PENDING.NEXT_ACTION is '下一动作'
/

comment on column GP_BM_CHG_ORG_CFG_PENDING.DATA_STATUS is '数据状态'
/

comment on column GP_BM_CHG_ORG_CFG_PENDING.DATA_FLAG is '数据是否已删除'
/

comment on column GP_BM_CHG_ORG_CFG_PENDING.DATA_SOURCE is '数据来源'
/

comment on column GP_BM_CHG_ORG_CFG_PENDING.CHECK_FLAG is '校验标识'
/

comment on column GP_BM_CHG_ORG_CFG_PENDING.CHECK_DESC is '校验结果'
/

comment on column GP_BM_CHG_ORG_CFG_PENDING.CHECK_ERR_TYPE is '校验失败类型'
/

comment on column GP_BM_CHG_ORG_CFG_PENDING.DATA_VERSION is '数据版本'
/

comment on column GP_BM_CHG_ORG_CFG_PENDING.DATA_REJ_DESC is '数据审核拒绝原因'
/

comment on column GP_BM_CHG_ORG_CFG_PENDING.DATA_DEL_DESC is '数据删除描述'
/

comment on column GP_BM_CHG_ORG_CFG_PENDING.DATA_CRT_USER is '数据创建/导入用户'
/

comment on column GP_BM_CHG_ORG_CFG_PENDING.DATA_CRT_DATE is '数据创建/导入日期'
/

comment on column GP_BM_CHG_ORG_CFG_PENDING.DATA_CRT_TIME is '数据创建/导入时间'
/

comment on column GP_BM_CHG_ORG_CFG_PENDING.DATA_CHG_USER is '数据修改/删除用户'
/

comment on column GP_BM_CHG_ORG_CFG_PENDING.DATA_CHG_DATE is '数据修改/删除日期'
/

comment on column GP_BM_CHG_ORG_CFG_PENDING.DATA_CHG_TIME is '数据修改/删除时间'
/

comment on column GP_BM_CHG_ORG_CFG_PENDING.DATA_APV_USER is '数据审核/拒绝用户'
/

comment on column GP_BM_CHG_ORG_CFG_PENDING.DATA_APV_DATE is '数据审核/拒绝日期'
/

comment on column GP_BM_CHG_ORG_CFG_PENDING.DATA_APV_TIME is '数据审核/拒绝时间'
/

comment on column GP_BM_CHG_ORG_CFG_PENDING.RSV1 is '备用1'
/

comment on column GP_BM_CHG_ORG_CFG_PENDING.RSV2 is '备用2'
/

comment on column GP_BM_CHG_ORG_CFG_PENDING.RSV3 is '备用3'
/

comment on column GP_BM_CHG_ORG_CFG_PENDING.RSV4 is '备用4'
/

comment on column GP_BM_CHG_ORG_CFG_PENDING.RSV5 is '备用5'
/

create table GP_BM_CODE_LIST
(
    DATA_ID        VARCHAR2(64) not null,
    DATA_DATE      CHAR(8),
    CORP_ID        VARCHAR2(14),
    ORG_ID         VARCHAR2(14),
    GROUP_ID       VARCHAR2(14),
    CODE_SCHEMA    VARCHAR2(30),
    CODE_ITEM      VARCHAR2(30),
    CODE_VALUE     VARCHAR2(60),
    CODE_NAME      VARCHAR2(180),
    P_CODE_VALUE   VARCHAR2(60),
    REMARKS        VARCHAR2(180),
    CHECK_FLAG     CHAR,
    CHECK_DESC     VARCHAR2(512),
    CHECK_ERR_TYPE CHAR,
    NEXT_ACTION    CHAR(2),
    DATA_STATUS    CHAR(2),
    DATA_FLAG      CHAR,
    DATA_SOURCE    CHAR,
    DATA_VERSION   NUMBER(8),
    DATA_REJ_DESC  VARCHAR2(128),
    DATA_DEL_DESC  VARCHAR2(128),
    DATA_CRT_USER  VARCHAR2(20),
    DATA_CRT_DATE  CHAR(8),
    DATA_CRT_TIME  CHAR(14),
    DATA_CHG_USER  VARCHAR2(20),
    DATA_CHG_DATE  CHAR(8),
    DATA_CHG_TIME  CHAR(14),
    DATA_APV_USER  VARCHAR2(20),
    DATA_APV_DATE  CHAR(8),
    DATA_APV_TIME  CHAR(14),
    RSV1           VARCHAR2(180),
    RSV2           VARCHAR2(180),
    RSV3           VARCHAR2(180),
    RSV4           VARCHAR2(180),
    RSV5           VARCHAR2(180)
)
/

comment on table GP_BM_CODE_LIST is '数据编码列表'
/

comment on column GP_BM_CODE_LIST.DATA_ID is '数据ID'
/

comment on column GP_BM_CODE_LIST.DATA_DATE is '数据日期'
/

comment on column GP_BM_CODE_LIST.CORP_ID is '法人机构号'
/

comment on column GP_BM_CODE_LIST.ORG_ID is '机构号'
/

comment on column GP_BM_CODE_LIST.GROUP_ID is '部门编号'
/

comment on column GP_BM_CODE_LIST.CODE_SCHEMA is '编码集'
/

comment on column GP_BM_CODE_LIST.CODE_ITEM is '编码项目'
/

comment on column GP_BM_CODE_LIST.CODE_VALUE is '数据编码'
/

comment on column GP_BM_CODE_LIST.CODE_NAME is '数据编码名称'
/

comment on column GP_BM_CODE_LIST.P_CODE_VALUE is '父级数据编码'
/

comment on column GP_BM_CODE_LIST.REMARKS is '备注'
/

comment on column GP_BM_CODE_LIST.CHECK_FLAG is '校验标识'
/

comment on column GP_BM_CODE_LIST.CHECK_DESC is '校验结果'
/

comment on column GP_BM_CODE_LIST.CHECK_ERR_TYPE is '校验失败类型'
/

comment on column GP_BM_CODE_LIST.NEXT_ACTION is '下一动作'
/

comment on column GP_BM_CODE_LIST.DATA_STATUS is '数据状态'
/

comment on column GP_BM_CODE_LIST.DATA_FLAG is '数据是否已删除'
/

comment on column GP_BM_CODE_LIST.DATA_SOURCE is '数据来源'
/

comment on column GP_BM_CODE_LIST.DATA_VERSION is '数据版本'
/

comment on column GP_BM_CODE_LIST.DATA_REJ_DESC is '数据审核拒绝原因'
/

comment on column GP_BM_CODE_LIST.DATA_DEL_DESC is '数据删除描述'
/

comment on column GP_BM_CODE_LIST.DATA_CRT_USER is '数据创建/导入用户'
/

comment on column GP_BM_CODE_LIST.DATA_CRT_DATE is '数据创建/导入日期'
/

comment on column GP_BM_CODE_LIST.DATA_CRT_TIME is '数据创建/导入时间'
/

comment on column GP_BM_CODE_LIST.DATA_CHG_USER is '数据修改/删除用户'
/

comment on column GP_BM_CODE_LIST.DATA_CHG_DATE is '数据修改/删除日期'
/

comment on column GP_BM_CODE_LIST.DATA_CHG_TIME is '数据修改/删除时间'
/

comment on column GP_BM_CODE_LIST.DATA_APV_USER is '数据审核/拒绝用户'
/

comment on column GP_BM_CODE_LIST.DATA_APV_DATE is '数据审核/拒绝日期'
/

comment on column GP_BM_CODE_LIST.DATA_APV_TIME is '数据审核/拒绝时间'
/

comment on column GP_BM_CODE_LIST.RSV1 is '备用1'
/

comment on column GP_BM_CODE_LIST.RSV2 is '备用2'
/

comment on column GP_BM_CODE_LIST.RSV3 is '备用3'
/

comment on column GP_BM_CODE_LIST.RSV4 is '备用4'
/

comment on column GP_BM_CODE_LIST.RSV5 is '备用5'
/

create table GP_BM_CODE_SCHEMA
(
    DATA_ID          VARCHAR2(64) not null
        primary key,
    DATA_DATE        CHAR(8),
    CORP_ID          VARCHAR2(14),
    ORG_ID           VARCHAR2(14),
    GROUP_ID         VARCHAR2(14),
    CODE_SCHEMA      VARCHAR2(30),
    CODE_SCHEMA_NAME VARCHAR2(180),
    SCHEMA_TYPE      VARCHAR2(1),
    SQL_STRING       VARCHAR2(4000),
    REMARKS          VARCHAR2(180),
    DATA_REJ_DESC    VARCHAR2(128),
    DATA_DEL_DESC    VARCHAR2(128),
    DATA_CRT_USER    VARCHAR2(20),
    DATA_CRT_DATE    CHAR(8),
    DATA_CRT_TIME    CHAR(14),
    DATA_CHG_USER    VARCHAR2(20),
    DATA_CHG_DATE    CHAR(8),
    DATA_CHG_TIME    CHAR(14),
    DATA_APV_USER    VARCHAR2(20),
    DATA_APV_DATE    CHAR(8),
    DATA_APV_TIME    CHAR(14),
    NEXT_ACTION      CHAR(2),
    DATA_STATUS      CHAR(2),
    DATA_FLAG        CHAR,
    DATA_SOURCE      CHAR,
    CHECK_FLAG       CHAR,
    CHECK_DESC       VARCHAR2(512),
    CHECK_ERR_TYPE   CHAR,
    DATA_VERSION     NUMBER(8),
    RSV1             VARCHAR2(180),
    RSV2             VARCHAR2(180),
    RSV3             VARCHAR2(180),
    RSV4             VARCHAR2(180),
    RSV5             VARCHAR2(180)
)
/

comment on table GP_BM_CODE_SCHEMA is '数据编码方案表'
/

comment on column GP_BM_CODE_SCHEMA.DATA_ID is '数据ID'
/

comment on column GP_BM_CODE_SCHEMA.DATA_DATE is '数据日期'
/

comment on column GP_BM_CODE_SCHEMA.CORP_ID is '法人机构号'
/

comment on column GP_BM_CODE_SCHEMA.ORG_ID is '机构号'
/

comment on column GP_BM_CODE_SCHEMA.GROUP_ID is '部门编号'
/

comment on column GP_BM_CODE_SCHEMA.CODE_SCHEMA is '编码方案'
/

comment on column GP_BM_CODE_SCHEMA.CODE_SCHEMA_NAME is '方案名称'
/

comment on column GP_BM_CODE_SCHEMA.SCHEMA_TYPE is '方案类型 1-精细控制模式；2-简化控制模式'
/

comment on column GP_BM_CODE_SCHEMA.SQL_STRING is '权限串 sql语句'
/

comment on column GP_BM_CODE_SCHEMA.REMARKS is '备注'
/

comment on column GP_BM_CODE_SCHEMA.DATA_REJ_DESC is '数据审核拒绝原因'
/

comment on column GP_BM_CODE_SCHEMA.DATA_DEL_DESC is '数据删除描述'
/

comment on column GP_BM_CODE_SCHEMA.DATA_CRT_USER is '数据创建/导入用户'
/

comment on column GP_BM_CODE_SCHEMA.DATA_CRT_DATE is '数据创建/导入日期'
/

comment on column GP_BM_CODE_SCHEMA.DATA_CRT_TIME is '数据创建/导入时间'
/

comment on column GP_BM_CODE_SCHEMA.DATA_CHG_USER is '数据修改/删除用户'
/

comment on column GP_BM_CODE_SCHEMA.DATA_CHG_DATE is '数据修改/删除日期'
/

comment on column GP_BM_CODE_SCHEMA.DATA_CHG_TIME is '数据修改/删除时间'
/

comment on column GP_BM_CODE_SCHEMA.DATA_APV_USER is '数据审核/拒绝用户'
/

comment on column GP_BM_CODE_SCHEMA.DATA_APV_DATE is '数据审核/拒绝日期'
/

comment on column GP_BM_CODE_SCHEMA.DATA_APV_TIME is '数据审核/拒绝时间'
/

comment on column GP_BM_CODE_SCHEMA.NEXT_ACTION is '下一动作'
/

comment on column GP_BM_CODE_SCHEMA.DATA_STATUS is '数据状态'
/

comment on column GP_BM_CODE_SCHEMA.DATA_FLAG is '数据是否已删除'
/

comment on column GP_BM_CODE_SCHEMA.DATA_SOURCE is '数据来源'
/

comment on column GP_BM_CODE_SCHEMA.CHECK_FLAG is '校验标识'
/

comment on column GP_BM_CODE_SCHEMA.CHECK_DESC is '校验结果'
/

comment on column GP_BM_CODE_SCHEMA.CHECK_ERR_TYPE is '校验失败类型'
/

comment on column GP_BM_CODE_SCHEMA.DATA_VERSION is '数据版本'
/

comment on column GP_BM_CODE_SCHEMA.RSV1 is '备用1'
/

comment on column GP_BM_CODE_SCHEMA.RSV2 is '备用2'
/

comment on column GP_BM_CODE_SCHEMA.RSV3 is '备用3'
/

comment on column GP_BM_CODE_SCHEMA.RSV4 is '备用4'
/

comment on column GP_BM_CODE_SCHEMA.RSV5 is '备用5'
/

create table GP_BM_CODE_SCHEMA_ITEM
(
    DATA_ID        VARCHAR2(64) not null,
    DATA_DATE      CHAR(8),
    CORP_ID        VARCHAR2(14),
    ORG_ID         VARCHAR2(14),
    GROUP_ID       VARCHAR2(14),
    CODE_SCHEMA    VARCHAR2(30),
    CODE_ITEM      VARCHAR2(30),
    CODE_ITEM_NAME VARCHAR2(180),
    P_CODE_ITEM    VARCHAR2(30),
    REMARKS        VARCHAR2(180),
    CHECK_FLAG     CHAR,
    CHECK_DESC     VARCHAR2(512),
    CHECK_ERR_TYPE CHAR,
    NEXT_ACTION    CHAR(2),
    DATA_STATUS    CHAR(2),
    DATA_FLAG      CHAR,
    DATA_SOURCE    CHAR,
    DATA_VERSION   NUMBER(8),
    DATA_REJ_DESC  VARCHAR2(128),
    DATA_DEL_DESC  VARCHAR2(128),
    DATA_CRT_USER  VARCHAR2(20),
    DATA_CRT_DATE  CHAR(8),
    DATA_CRT_TIME  CHAR(14),
    DATA_CHG_USER  VARCHAR2(20),
    DATA_CHG_DATE  CHAR(8),
    DATA_CHG_TIME  CHAR(14),
    DATA_APV_USER  VARCHAR2(20),
    DATA_APV_DATE  CHAR(8),
    DATA_APV_TIME  CHAR(14),
    RSV1           VARCHAR2(180),
    RSV2           VARCHAR2(180),
    RSV3           VARCHAR2(180),
    RSV4           VARCHAR2(180),
    RSV5           VARCHAR2(180)
)
/

comment on table GP_BM_CODE_SCHEMA_ITEM is '数据编码方案编码项定义表'
/

comment on column GP_BM_CODE_SCHEMA_ITEM.DATA_ID is '数据ID'
/

comment on column GP_BM_CODE_SCHEMA_ITEM.DATA_DATE is '数据日期'
/

comment on column GP_BM_CODE_SCHEMA_ITEM.CORP_ID is '法人机构号'
/

comment on column GP_BM_CODE_SCHEMA_ITEM.ORG_ID is '机构号'
/

comment on column GP_BM_CODE_SCHEMA_ITEM.GROUP_ID is '部门编号'
/

comment on column GP_BM_CODE_SCHEMA_ITEM.CODE_SCHEMA is '编码方案'
/

comment on column GP_BM_CODE_SCHEMA_ITEM.CODE_ITEM is '编码项'
/

comment on column GP_BM_CODE_SCHEMA_ITEM.CODE_ITEM_NAME is '编码项名称'
/

comment on column GP_BM_CODE_SCHEMA_ITEM.P_CODE_ITEM is '父级数据编码'
/

comment on column GP_BM_CODE_SCHEMA_ITEM.REMARKS is '备注'
/

comment on column GP_BM_CODE_SCHEMA_ITEM.CHECK_FLAG is '校验标识'
/

comment on column GP_BM_CODE_SCHEMA_ITEM.CHECK_DESC is '校验结果'
/

comment on column GP_BM_CODE_SCHEMA_ITEM.CHECK_ERR_TYPE is '校验失败类型'
/

comment on column GP_BM_CODE_SCHEMA_ITEM.NEXT_ACTION is '下一动作'
/

comment on column GP_BM_CODE_SCHEMA_ITEM.DATA_STATUS is '数据状态'
/

comment on column GP_BM_CODE_SCHEMA_ITEM.DATA_FLAG is '数据是否已删除'
/

comment on column GP_BM_CODE_SCHEMA_ITEM.DATA_SOURCE is '数据来源'
/

comment on column GP_BM_CODE_SCHEMA_ITEM.DATA_VERSION is '数据版本'
/

comment on column GP_BM_CODE_SCHEMA_ITEM.DATA_REJ_DESC is '数据审核拒绝原因'
/

comment on column GP_BM_CODE_SCHEMA_ITEM.DATA_DEL_DESC is '数据删除描述'
/

comment on column GP_BM_CODE_SCHEMA_ITEM.DATA_CRT_USER is '数据创建/导入用户'
/

comment on column GP_BM_CODE_SCHEMA_ITEM.DATA_CRT_DATE is '数据创建/导入日期'
/

comment on column GP_BM_CODE_SCHEMA_ITEM.DATA_CRT_TIME is '数据创建/导入时间'
/

comment on column GP_BM_CODE_SCHEMA_ITEM.DATA_CHG_USER is '数据修改/删除用户'
/

comment on column GP_BM_CODE_SCHEMA_ITEM.DATA_CHG_DATE is '数据修改/删除日期'
/

comment on column GP_BM_CODE_SCHEMA_ITEM.DATA_CHG_TIME is '数据修改/删除时间'
/

comment on column GP_BM_CODE_SCHEMA_ITEM.DATA_APV_USER is '数据审核/拒绝用户'
/

comment on column GP_BM_CODE_SCHEMA_ITEM.DATA_APV_DATE is '数据审核/拒绝日期'
/

comment on column GP_BM_CODE_SCHEMA_ITEM.DATA_APV_TIME is '数据审核/拒绝时间'
/

comment on column GP_BM_CODE_SCHEMA_ITEM.RSV1 is '备用1'
/

comment on column GP_BM_CODE_SCHEMA_ITEM.RSV2 is '备用2'
/

comment on column GP_BM_CODE_SCHEMA_ITEM.RSV3 is '备用3'
/

comment on column GP_BM_CODE_SCHEMA_ITEM.RSV4 is '备用4'
/

comment on column GP_BM_CODE_SCHEMA_ITEM.RSV5 is '备用5'
/

create table GP_BM_DATA_DIC
(
    DATA_ID        VARCHAR2(64)  not null
        primary key,
    DATA_DATE      CHAR(8),
    CORP_ID        VARCHAR2(14),
    ORG_ID         VARCHAR2(14),
    GROUP_ID       VARCHAR2(14),
    DATA_TYPE_NO   NUMBER        not null,
    DATA_NO        VARCHAR2(180) not null,
    DATA_TYPE_NAME VARCHAR2(80)  not null,
    DATA_NO_LEN    NUMBER,
    DATA_NAME      VARCHAR2(512) not null,
    LIMIT_FLAG     CHAR,
    HIGH_LIMIT     VARCHAR2(20),
    LOW_LIMIT      VARCHAR2(20),
    EFFECT_DATE    CHAR(8),
    EXPIRE_DATE    CHAR(8),
    MISCFLGS       VARCHAR2(20),
    NEXT_ACTION    CHAR(2),
    DATA_STATUS    CHAR(2),
    DATA_FLAG      CHAR,
    DATA_SOURCE    CHAR,
    CHECK_FLAG     CHAR,
    CHECK_DESC     VARCHAR2(512),
    CHECK_ERR_TYPE CHAR,
    DATA_VERSION   NUMBER(8),
    DATA_REJ_DESC  VARCHAR2(128),
    DATA_DEL_DESC  VARCHAR2(128),
    DATA_CRT_USER  VARCHAR2(20),
    DATA_CRT_DATE  CHAR(8),
    DATA_CRT_TIME  CHAR(14),
    DATA_CHG_USER  VARCHAR2(20),
    DATA_CHG_DATE  CHAR(8),
    DATA_CHG_TIME  CHAR(14),
    DATA_APV_USER  VARCHAR2(20),
    DATA_APV_DATE  CHAR(8),
    DATA_APV_TIME  CHAR(14),
    RSV1           VARCHAR2(180),
    RSV2           VARCHAR2(180),
    RSV3           VARCHAR2(180),
    RSV4           VARCHAR2(180),
    RSV5           VARCHAR2(180),
    REMARKS        VARCHAR2(180)
)
/

comment on table GP_BM_DATA_DIC is '数据字典表'
/

comment on column GP_BM_DATA_DIC.DATA_ID is '数据ID'
/

comment on column GP_BM_DATA_DIC.DATA_DATE is '数据日期'
/

comment on column GP_BM_DATA_DIC.CORP_ID is '法人机构号'
/

comment on column GP_BM_DATA_DIC.ORG_ID is '机构号'
/

comment on column GP_BM_DATA_DIC.GROUP_ID is '部门编号'
/

comment on column GP_BM_DATA_DIC.DATA_TYPE_NO is '数据类型编号'
/

comment on column GP_BM_DATA_DIC.DATA_NO is '数据编号'
/

comment on column GP_BM_DATA_DIC.DATA_TYPE_NAME is '数据类型名称'
/

comment on column GP_BM_DATA_DIC.DATA_NO_LEN is '数据编号长度'
/

comment on column GP_BM_DATA_DIC.DATA_NAME is '数据内容'
/

comment on column GP_BM_DATA_DIC.LIMIT_FLAG is '是否有上下限标志'
/

comment on column GP_BM_DATA_DIC.HIGH_LIMIT is '上限'
/

comment on column GP_BM_DATA_DIC.LOW_LIMIT is '下限'
/

comment on column GP_BM_DATA_DIC.EFFECT_DATE is '生效日期'
/

comment on column GP_BM_DATA_DIC.EXPIRE_DATE is '失效日期'
/

comment on column GP_BM_DATA_DIC.MISCFLGS is '扩展标志位'
/

comment on column GP_BM_DATA_DIC.NEXT_ACTION is '下一动作'
/

comment on column GP_BM_DATA_DIC.DATA_STATUS is '数据状态'
/

comment on column GP_BM_DATA_DIC.DATA_FLAG is '数据是否已删除'
/

comment on column GP_BM_DATA_DIC.DATA_SOURCE is '数据来源'
/

comment on column GP_BM_DATA_DIC.CHECK_FLAG is '校验标识'
/

comment on column GP_BM_DATA_DIC.CHECK_DESC is '校验结果'
/

comment on column GP_BM_DATA_DIC.CHECK_ERR_TYPE is '校验失败类型'
/

comment on column GP_BM_DATA_DIC.DATA_VERSION is '数据版本'
/

comment on column GP_BM_DATA_DIC.DATA_REJ_DESC is '数据审核拒绝原因'
/

comment on column GP_BM_DATA_DIC.DATA_DEL_DESC is '数据删除描述'
/

comment on column GP_BM_DATA_DIC.DATA_CRT_USER is '数据创建/导入用户'
/

comment on column GP_BM_DATA_DIC.DATA_CRT_DATE is '数据创建/导入日期'
/

comment on column GP_BM_DATA_DIC.DATA_CRT_TIME is '数据创建/导入时间'
/

comment on column GP_BM_DATA_DIC.DATA_CHG_USER is '数据修改/删除用户'
/

comment on column GP_BM_DATA_DIC.DATA_CHG_DATE is '数据修改/删除日期'
/

comment on column GP_BM_DATA_DIC.DATA_CHG_TIME is '数据修改/删除时间'
/

comment on column GP_BM_DATA_DIC.DATA_APV_USER is '数据审核/拒绝用户'
/

comment on column GP_BM_DATA_DIC.DATA_APV_DATE is '数据审核/拒绝日期'
/

comment on column GP_BM_DATA_DIC.DATA_APV_TIME is '数据审核/拒绝时间'
/

comment on column GP_BM_DATA_DIC.RSV1 is '备用1'
/

comment on column GP_BM_DATA_DIC.RSV2 is '备用2'
/

comment on column GP_BM_DATA_DIC.RSV3 is '备用3'
/

comment on column GP_BM_DATA_DIC.RSV4 is '备用4'
/

comment on column GP_BM_DATA_DIC.RSV5 is '备用5'
/

comment on column GP_BM_DATA_DIC.REMARKS is '备注'
/

create index IDX_GP_BM_DATA_DIC_01
    on GP_BM_DATA_DIC (DATA_TYPE_NO, DATA_NO)
/

create table GP_BM_DATA_RULES
(
    DATA_ID          VARCHAR2(64) not null,
    DATA_DATE        CHAR(8),
    QUERY_ID         VARCHAR2(256),
    OPERATION_ID     CHAR(14),
    COLUMN_NAME      CHAR(14),
    DATA_TYPE        VARCHAR2(20),
    VAL_KIND         CHAR(2),
    VAL_TYPE         VARCHAR2(4),
    IS_NULL          CHAR,
    MAX_VALUE        VARCHAR2(255),
    MIN_VALUE        VARCHAR2(255),
    MAX_LENGTH       VARCHAR2(255),
    MIN_LENGTH       VARCHAR2(255),
    REG_EXPRESS      VARCHAR2(255),
    EXPRESS          VARCHAR2(255),
    VALIDITY_MESSAGE VARCHAR2(255)
)
/

comment on table GP_BM_DATA_RULES is '数据校验表'
/

comment on column GP_BM_DATA_RULES.DATA_ID is '数据ID'
/

comment on column GP_BM_DATA_RULES.DATA_DATE is '数据日期'
/

create table GP_BM_DEPART
(
    DATA_ID          VARCHAR2(64) not null
        primary key,
    DATA_DATE        CHAR(8),
    CORP_ID          VARCHAR2(14),
    ORG_ID           VARCHAR2(14),
    GROUP_ID         VARCHAR2(14),
    INQ_ORG_ID       CHAR(24),
    INQ_GROUP_ID     CHAR(24),
    DEPART           VARCHAR2(32),
    DEPART_NAME      VARCHAR2(180),
    P_DEPART         VARCHAR2(32),
    STATUS           VARCHAR2(1),
    REMARKS          VARCHAR2(512),
    CHECK_FLAG       CHAR,
    CHECK_DESC       VARCHAR2(512),
    CHECK_ERR_TYPE   CHAR,
    NEXT_ACTION      CHAR(2),
    DATA_STATUS      CHAR(2),
    DATA_FLAG        CHAR,
    DATA_SOURCE      CHAR,
    DATA_VERSION     NUMBER(8),
    DATA_REJ_DESC    VARCHAR2(128),
    DATA_DEL_DESC    VARCHAR2(128),
    DATA_CRT_USER    VARCHAR2(20),
    DATA_CRT_DATE    CHAR(8),
    DATA_CRT_TIME    CHAR(14),
    DATA_CHG_USER    VARCHAR2(20),
    DATA_CHG_DATE    CHAR(8),
    DATA_CHG_TIME    CHAR(14),
    DATA_APV_USER    VARCHAR2(20),
    DATA_APV_DATE    CHAR(8),
    DATA_APV_TIME    CHAR(14),
    RSV1             VARCHAR2(180),
    RSV2             VARCHAR2(180),
    RSV3             VARCHAR2(180),
    RSV4             VARCHAR2(180),
    RSV5             VARCHAR2(180),
    GPMS_NEXT_ACTION VARCHAR2(2)
)
/

comment on column GP_BM_DEPART.DATA_ID is '数据ID'
/

comment on column GP_BM_DEPART.DATA_DATE is '数据日期'
/

comment on column GP_BM_DEPART.CORP_ID is '法人机构号'
/

comment on column GP_BM_DEPART.ORG_ID is '机构号'
/

comment on column GP_BM_DEPART.GROUP_ID is '部门编号'
/

comment on column GP_BM_DEPART.INQ_ORG_ID is '查询机构号'
/

comment on column GP_BM_DEPART.INQ_GROUP_ID is '查询组号'
/

comment on column GP_BM_DEPART.DEPART is '部门编号'
/

comment on column GP_BM_DEPART.DEPART_NAME is '部门名称'
/

comment on column GP_BM_DEPART.P_DEPART is '上级部门编号'
/

comment on column GP_BM_DEPART.STATUS is '是否有效'
/

comment on column GP_BM_DEPART.REMARKS is '备注'
/

comment on column GP_BM_DEPART.CHECK_FLAG is '校验标识'
/

comment on column GP_BM_DEPART.CHECK_DESC is '校验结果'
/

comment on column GP_BM_DEPART.CHECK_ERR_TYPE is '校验失败类型'
/

comment on column GP_BM_DEPART.NEXT_ACTION is '下一动作'
/

comment on column GP_BM_DEPART.DATA_STATUS is '数据状态'
/

comment on column GP_BM_DEPART.DATA_FLAG is '数据是否已删除'
/

comment on column GP_BM_DEPART.DATA_SOURCE is '数据来源'
/

comment on column GP_BM_DEPART.DATA_VERSION is '数据版本'
/

comment on column GP_BM_DEPART.DATA_REJ_DESC is '数据审核拒绝原因'
/

comment on column GP_BM_DEPART.DATA_DEL_DESC is '数据删除描述'
/

comment on column GP_BM_DEPART.DATA_CRT_USER is '数据创建/导入用户'
/

comment on column GP_BM_DEPART.DATA_CRT_DATE is '数据创建/导入日期'
/

comment on column GP_BM_DEPART.DATA_CRT_TIME is '数据创建/导入时间'
/

comment on column GP_BM_DEPART.DATA_CHG_USER is '数据修改/删除用户'
/

comment on column GP_BM_DEPART.DATA_CHG_DATE is '数据修改/删除日期'
/

comment on column GP_BM_DEPART.DATA_CHG_TIME is '数据修改/删除时间'
/

comment on column GP_BM_DEPART.DATA_APV_USER is '数据审核/拒绝用户'
/

comment on column GP_BM_DEPART.DATA_APV_DATE is '数据审核/拒绝日期'
/

comment on column GP_BM_DEPART.DATA_APV_TIME is '数据审核/拒绝时间'
/

comment on column GP_BM_DEPART.RSV1 is '备用1'
/

comment on column GP_BM_DEPART.RSV2 is '备用2'
/

comment on column GP_BM_DEPART.RSV3 is '备用3'
/

comment on column GP_BM_DEPART.RSV4 is '备用4'
/

comment on column GP_BM_DEPART.RSV5 is '备用5'
/

create table GP_BM_DEPART_NEXT_ACTION
(
    DATA_ID        VARCHAR2(64) not null,
    DATA_DATE      CHAR(8),
    CORP_ID        VARCHAR2(14),
    ORG_ID         VARCHAR2(14),
    GROUP_ID       VARCHAR2(14),
    INQ_ORG_ID     CHAR(24),
    INQ_GROUP_ID   CHAR(24),
    O_DATA_ID      VARCHAR2(32),
    FUNCID         VARCHAR2(50),
    DEPART         VARCHAR2(30),
    GROUP_NUM      VARCHAR2(3),
    REMARKS        VARCHAR2(512),
    CHECK_FLAG     CHAR,
    CHECK_DESC     VARCHAR2(512),
    CHECK_ERR_TYPE CHAR,
    NEXT_ACTION    CHAR(2),
    DATA_STATUS    CHAR(2),
    DATA_FLAG      CHAR,
    DATA_SOURCE    CHAR,
    DATA_VERSION   NUMBER(8),
    DATA_REJ_DESC  VARCHAR2(128),
    DATA_DEL_DESC  VARCHAR2(128),
    DATA_CRT_USER  VARCHAR2(20),
    DATA_CRT_DATE  CHAR(8),
    DATA_CRT_TIME  CHAR(14),
    DATA_CHG_USER  VARCHAR2(20),
    DATA_CHG_DATE  CHAR(8),
    DATA_CHG_TIME  CHAR(14),
    DATA_APV_USER  VARCHAR2(20),
    DATA_APV_DATE  CHAR(8),
    DATA_APV_TIME  CHAR(14),
    RSV1           VARCHAR2(180),
    RSV2           VARCHAR2(180),
    RSV3           VARCHAR2(180),
    RSV4           VARCHAR2(180),
    RSV5           VARCHAR2(180)
)
/

comment on column GP_BM_DEPART_NEXT_ACTION.DATA_ID is '数据ID'
/

comment on column GP_BM_DEPART_NEXT_ACTION.DATA_DATE is '数据日期'
/

comment on column GP_BM_DEPART_NEXT_ACTION.CORP_ID is '法人机构号'
/

comment on column GP_BM_DEPART_NEXT_ACTION.ORG_ID is '机构号'
/

comment on column GP_BM_DEPART_NEXT_ACTION.GROUP_ID is '部门编号'
/

comment on column GP_BM_DEPART_NEXT_ACTION.INQ_ORG_ID is '查询机构号'
/

comment on column GP_BM_DEPART_NEXT_ACTION.INQ_GROUP_ID is '查询组号'
/

comment on column GP_BM_DEPART_NEXT_ACTION.O_DATA_ID is '数据iD'
/

comment on column GP_BM_DEPART_NEXT_ACTION.FUNCID is '菜单名'
/

comment on column GP_BM_DEPART_NEXT_ACTION.DEPART is '部门编号'
/

comment on column GP_BM_DEPART_NEXT_ACTION.GROUP_NUM is '组别号'
/

comment on column GP_BM_DEPART_NEXT_ACTION.REMARKS is '备注'
/

comment on column GP_BM_DEPART_NEXT_ACTION.CHECK_FLAG is '校验标识'
/

comment on column GP_BM_DEPART_NEXT_ACTION.CHECK_DESC is '校验结果'
/

comment on column GP_BM_DEPART_NEXT_ACTION.CHECK_ERR_TYPE is '校验失败类型'
/

comment on column GP_BM_DEPART_NEXT_ACTION.NEXT_ACTION is '下一动作'
/

comment on column GP_BM_DEPART_NEXT_ACTION.DATA_STATUS is '数据状态'
/

comment on column GP_BM_DEPART_NEXT_ACTION.DATA_FLAG is '数据是否已删除'
/

comment on column GP_BM_DEPART_NEXT_ACTION.DATA_SOURCE is '数据来源'
/

comment on column GP_BM_DEPART_NEXT_ACTION.DATA_VERSION is '数据版本'
/

comment on column GP_BM_DEPART_NEXT_ACTION.DATA_REJ_DESC is '数据审核拒绝原因'
/

comment on column GP_BM_DEPART_NEXT_ACTION.DATA_DEL_DESC is '数据删除描述'
/

comment on column GP_BM_DEPART_NEXT_ACTION.DATA_CRT_USER is '数据创建/导入用户'
/

comment on column GP_BM_DEPART_NEXT_ACTION.DATA_CRT_DATE is '数据创建/导入日期'
/

comment on column GP_BM_DEPART_NEXT_ACTION.DATA_CRT_TIME is '数据创建/导入时间'
/

comment on column GP_BM_DEPART_NEXT_ACTION.DATA_CHG_USER is '数据修改/删除用户'
/

comment on column GP_BM_DEPART_NEXT_ACTION.DATA_CHG_DATE is '数据修改/删除日期'
/

comment on column GP_BM_DEPART_NEXT_ACTION.DATA_CHG_TIME is '数据修改/删除时间'
/

comment on column GP_BM_DEPART_NEXT_ACTION.DATA_APV_USER is '数据审核/拒绝用户'
/

comment on column GP_BM_DEPART_NEXT_ACTION.DATA_APV_DATE is '数据审核/拒绝日期'
/

comment on column GP_BM_DEPART_NEXT_ACTION.DATA_APV_TIME is '数据审核/拒绝时间'
/

comment on column GP_BM_DEPART_NEXT_ACTION.RSV1 is '备用1'
/

comment on column GP_BM_DEPART_NEXT_ACTION.RSV2 is '备用2'
/

comment on column GP_BM_DEPART_NEXT_ACTION.RSV3 is '备用3'
/

comment on column GP_BM_DEPART_NEXT_ACTION.RSV4 is '备用4'
/

comment on column GP_BM_DEPART_NEXT_ACTION.RSV5 is '备用5'
/

create table GP_BM_DEPART_PENDING
(
    DATA_ID          VARCHAR2(64) not null,
    DATA_DATE        CHAR(8),
    CORP_ID          VARCHAR2(14),
    ORG_ID           VARCHAR2(14),
    GROUP_ID         VARCHAR2(14),
    INQ_ORG_ID       CHAR(24),
    INQ_GROUP_ID     CHAR(24),
    DEPART           VARCHAR2(32),
    DEPART_NAME      VARCHAR2(180),
    P_DEPART         VARCHAR2(32),
    STATUS           VARCHAR2(1),
    REMARKS          VARCHAR2(512),
    CHECK_FLAG       CHAR,
    CHECK_DESC       VARCHAR2(512),
    CHECK_ERR_TYPE   CHAR,
    NEXT_ACTION      CHAR(2),
    DATA_STATUS      CHAR(2),
    DATA_FLAG        CHAR,
    DATA_SOURCE      CHAR,
    DATA_VERSION     NUMBER(8),
    DATA_REJ_DESC    VARCHAR2(128),
    DATA_DEL_DESC    VARCHAR2(128),
    DATA_CRT_USER    VARCHAR2(20),
    DATA_CRT_DATE    CHAR(8),
    DATA_CRT_TIME    CHAR(14),
    DATA_CHG_USER    VARCHAR2(20),
    DATA_CHG_DATE    CHAR(8),
    DATA_CHG_TIME    CHAR(14),
    DATA_APV_USER    VARCHAR2(20),
    DATA_APV_DATE    CHAR(8),
    DATA_APV_TIME    CHAR(14),
    RSV1             VARCHAR2(180),
    RSV2             VARCHAR2(180),
    RSV3             VARCHAR2(180),
    RSV4             VARCHAR2(180),
    RSV5             VARCHAR2(180),
    GPMS_NEXT_ACTION VARCHAR2(2)
)
/

comment on column GP_BM_DEPART_PENDING.DATA_ID is '数据ID'
/

comment on column GP_BM_DEPART_PENDING.DATA_DATE is '数据日期'
/

comment on column GP_BM_DEPART_PENDING.CORP_ID is '法人机构号'
/

comment on column GP_BM_DEPART_PENDING.ORG_ID is '机构号'
/

comment on column GP_BM_DEPART_PENDING.GROUP_ID is '部门编号'
/

comment on column GP_BM_DEPART_PENDING.INQ_ORG_ID is '查询机构号'
/

comment on column GP_BM_DEPART_PENDING.INQ_GROUP_ID is '查询组号'
/

comment on column GP_BM_DEPART_PENDING.DEPART is '部门编号'
/

comment on column GP_BM_DEPART_PENDING.DEPART_NAME is '部门名称'
/

comment on column GP_BM_DEPART_PENDING.P_DEPART is '上级部门编号'
/

comment on column GP_BM_DEPART_PENDING.STATUS is '是否有效'
/

comment on column GP_BM_DEPART_PENDING.REMARKS is '备注'
/

comment on column GP_BM_DEPART_PENDING.CHECK_FLAG is '校验标识'
/

comment on column GP_BM_DEPART_PENDING.CHECK_DESC is '校验结果'
/

comment on column GP_BM_DEPART_PENDING.CHECK_ERR_TYPE is '校验失败类型'
/

comment on column GP_BM_DEPART_PENDING.NEXT_ACTION is '下一动作'
/

comment on column GP_BM_DEPART_PENDING.DATA_STATUS is '数据状态'
/

comment on column GP_BM_DEPART_PENDING.DATA_FLAG is '数据是否已删除'
/

comment on column GP_BM_DEPART_PENDING.DATA_SOURCE is '数据来源'
/

comment on column GP_BM_DEPART_PENDING.DATA_VERSION is '数据版本'
/

comment on column GP_BM_DEPART_PENDING.DATA_REJ_DESC is '数据审核拒绝原因'
/

comment on column GP_BM_DEPART_PENDING.DATA_DEL_DESC is '数据删除描述'
/

comment on column GP_BM_DEPART_PENDING.DATA_CRT_USER is '数据创建/导入用户'
/

comment on column GP_BM_DEPART_PENDING.DATA_CRT_DATE is '数据创建/导入日期'
/

comment on column GP_BM_DEPART_PENDING.DATA_CRT_TIME is '数据创建/导入时间'
/

comment on column GP_BM_DEPART_PENDING.DATA_CHG_USER is '数据修改/删除用户'
/

comment on column GP_BM_DEPART_PENDING.DATA_CHG_DATE is '数据修改/删除日期'
/

comment on column GP_BM_DEPART_PENDING.DATA_CHG_TIME is '数据修改/删除时间'
/

comment on column GP_BM_DEPART_PENDING.DATA_APV_USER is '数据审核/拒绝用户'
/

comment on column GP_BM_DEPART_PENDING.DATA_APV_DATE is '数据审核/拒绝日期'
/

comment on column GP_BM_DEPART_PENDING.DATA_APV_TIME is '数据审核/拒绝时间'
/

comment on column GP_BM_DEPART_PENDING.RSV1 is '备用1'
/

comment on column GP_BM_DEPART_PENDING.RSV2 is '备用2'
/

comment on column GP_BM_DEPART_PENDING.RSV3 is '备用3'
/

comment on column GP_BM_DEPART_PENDING.RSV4 is '备用4'
/

comment on column GP_BM_DEPART_PENDING.RSV5 is '备用5'
/

create table GP_BM_EMAIL_LOG
(
    DATA_ID     VARCHAR2(64) not null,
    SEND_DATE   CHAR(8),
    SEND_TIME   CHAR(14),
    SEND_EMAIL  VARCHAR2(64),
    RECE_EMAIL  VARCHAR2(64),
    RECE_TLR_NO VARCHAR2(64),
    TITLE       VARCHAR2(200),
    MESS        VARCHAR2(4000),
    STATUS      CHAR,
    RSV1        VARCHAR2(180),
    RSV2        VARCHAR2(180),
    RSV3        VARCHAR2(180),
    RSV4        VARCHAR2(180),
    RSV5        VARCHAR2(180),
    CORP_ID     VARCHAR2(14)
)
/

comment on table GP_BM_EMAIL_LOG is '邮件日志表'
/

comment on column GP_BM_EMAIL_LOG.DATA_ID is '数据ID'
/

comment on column GP_BM_EMAIL_LOG.RSV1 is '备用1'
/

comment on column GP_BM_EMAIL_LOG.RSV2 is '备用2'
/

comment on column GP_BM_EMAIL_LOG.RSV3 is '备用3'
/

comment on column GP_BM_EMAIL_LOG.RSV4 is '备用4'
/

comment on column GP_BM_EMAIL_LOG.RSV5 is '备用5'
/

comment on column GP_BM_EMAIL_LOG.CORP_ID is '法人机构号'
/

create unique index SYS_C00245249
    on GP_BM_EMAIL_LOG (DATA_ID)
/

create table GP_BM_FILE_EXPORT_TSK_INF
(
    TSK_ID          CHAR(36) not null,
    TSK_NM          VARCHAR2(50),
    TSK_START_TMS   CHAR(14),
    TSK_START_OP    VARCHAR2(40),
    TSK_DESC        VARCHAR2(200),
    TSK_PARAM1      VARCHAR2(2048),
    TSK_PARAM2      VARCHAR2(2048),
    TSK_OWNER       VARCHAR2(40),
    TSK_END_TMS     CHAR(14),
    TSK_RUN_CLASS   CHAR(2),
    EXP_FILE_NM     VARCHAR2(4000),
    EXP_RCD_NUM     NUMBER,
    EXP_RCD_SUM_NUM NUMBER,
    EXP_FILE_SIZE   NUMBER,
    TSK_STAT        CHAR
)
/

comment on table GP_BM_FILE_EXPORT_TSK_INF is '文件批量导出任务表'
/

create table GP_BM_FUNCTION
(
    DATA_ID        VARCHAR2(64) not null
        primary key,
    DATA_DATE      CHAR(8),
    CORP_ID        VARCHAR2(14),
    ORG_ID         VARCHAR2(14),
    GROUP_ID       VARCHAR2(14),
    FUNCID         VARCHAR2(32),
    FUNCNAME       VARCHAR2(256),
    PAGEPATH       VARCHAR2(100),
    LOCATION       NUMBER,
    ISDIRECTORY    NUMBER,
    LASTDIRECTORY  VARCHAR2(32),
    SHOWSEQ        NUMBER,
    SYS_NUM        VARCHAR2(20),
    FUNC_CLASS     CHAR,
    FUNC_TYPE      CHAR,
    WORKFLOW_FLAG  CHAR,
    UP_FUNC_CODE   CHAR(10),
    FUNC_DESC      VARCHAR2(60),
    STATUS         CHAR,
    EFFECT_DATE    CHAR(8),
    EXPIRE_DATE    CHAR(8),
    TIMESTAMPS     VARCHAR2(100),
    MISCFLGS       CHAR(20),
    MISC           VARCHAR2(256),
    ICON_CLS       VARCHAR2(50),
    NEXT_ACTION    CHAR(2),
    DATA_STATUS    CHAR(2),
    DATA_FLAG      CHAR,
    DATA_SOURCE    CHAR,
    CHECK_FLAG     CHAR,
    CHECK_DESC     VARCHAR2(512),
    CHECK_ERR_TYPE CHAR,
    DATA_VERSION   NUMBER(8),
    DATA_REJ_DESC  VARCHAR2(128),
    DATA_DEL_DESC  VARCHAR2(128),
    DATA_CRT_USER  VARCHAR2(20),
    DATA_CRT_DATE  CHAR(8),
    DATA_CRT_TIME  CHAR(14),
    DATA_CHG_USER  VARCHAR2(20),
    DATA_CHG_DATE  CHAR(8),
    DATA_CHG_TIME  CHAR(14),
    DATA_APV_USER  VARCHAR2(20),
    DATA_APV_DATE  CHAR(8),
    DATA_APV_TIME  CHAR(14),
    RSV1           VARCHAR2(180),
    RSV2           VARCHAR2(180),
    RSV3           VARCHAR2(180),
    RSV4           VARCHAR2(180),
    RSV5           VARCHAR2(180),
    REMARKS        VARCHAR2(180)
)
/

comment on table GP_BM_FUNCTION is '菜单权限表'
/

comment on column GP_BM_FUNCTION.DATA_ID is '数据ID'
/

comment on column GP_BM_FUNCTION.DATA_DATE is '数据日期'
/

comment on column GP_BM_FUNCTION.CORP_ID is '法人机构号'
/

comment on column GP_BM_FUNCTION.ORG_ID is '机构号'
/

comment on column GP_BM_FUNCTION.GROUP_ID is '部门编号'
/

comment on column GP_BM_FUNCTION.FUNCNAME is '权限名/菜单名'
/

comment on column GP_BM_FUNCTION.PAGEPATH is '访问路径(相对路径)'
/

comment on column GP_BM_FUNCTION.LOCATION is '1－在左侧树菜单；2－在上面导航条'
/

comment on column GP_BM_FUNCTION.ISDIRECTORY is '目录节点：1是；0否'
/

comment on column GP_BM_FUNCTION.LASTDIRECTORY is '指定上级FUNCID，0为根节点'
/

comment on column GP_BM_FUNCTION.FUNC_CLASS is '目前不使用'
/

comment on column GP_BM_FUNCTION.FUNC_TYPE is '目前不使用'
/

comment on column GP_BM_FUNCTION.WORKFLOW_FLAG is '目前不使用'
/

comment on column GP_BM_FUNCTION.UP_FUNC_CODE is '目前不使用'
/

comment on column GP_BM_FUNCTION.STATUS is '1有效，0无效'
/

comment on column GP_BM_FUNCTION.ICON_CLS is '引用的图标名称'
/

comment on column GP_BM_FUNCTION.NEXT_ACTION is '下一动作'
/

comment on column GP_BM_FUNCTION.DATA_STATUS is '数据状态'
/

comment on column GP_BM_FUNCTION.DATA_FLAG is '数据是否已删除'
/

comment on column GP_BM_FUNCTION.DATA_SOURCE is '数据来源'
/

comment on column GP_BM_FUNCTION.CHECK_FLAG is '校验标识'
/

comment on column GP_BM_FUNCTION.CHECK_DESC is '校验结果'
/

comment on column GP_BM_FUNCTION.CHECK_ERR_TYPE is '校验失败类型'
/

comment on column GP_BM_FUNCTION.DATA_VERSION is '数据版本'
/

comment on column GP_BM_FUNCTION.DATA_REJ_DESC is '数据审核拒绝原因'
/

comment on column GP_BM_FUNCTION.DATA_DEL_DESC is '数据删除描述'
/

comment on column GP_BM_FUNCTION.DATA_CRT_USER is '数据创建/导入用户'
/

comment on column GP_BM_FUNCTION.DATA_CRT_DATE is '数据创建/导入日期'
/

comment on column GP_BM_FUNCTION.DATA_CRT_TIME is '数据创建/导入时间'
/

comment on column GP_BM_FUNCTION.DATA_CHG_USER is '数据修改/删除用户'
/

comment on column GP_BM_FUNCTION.DATA_CHG_DATE is '数据修改/删除日期'
/

comment on column GP_BM_FUNCTION.DATA_CHG_TIME is '数据修改/删除时间'
/

comment on column GP_BM_FUNCTION.DATA_APV_USER is '数据审核/拒绝用户'
/

comment on column GP_BM_FUNCTION.DATA_APV_DATE is '数据审核/拒绝日期'
/

comment on column GP_BM_FUNCTION.DATA_APV_TIME is '数据审核/拒绝时间'
/

comment on column GP_BM_FUNCTION.RSV1 is '备用1'
/

comment on column GP_BM_FUNCTION.RSV2 is '备用2'
/

comment on column GP_BM_FUNCTION.RSV3 is '备用3'
/

comment on column GP_BM_FUNCTION.RSV4 is '备用4'
/

comment on column GP_BM_FUNCTION.RSV5 is '备用5'
/

create table GP_BM_FUNCTION_TABLE
(
    DATA_ID        VARCHAR2(64) not null,
    DATA_DATE      CHAR(8),
    FUNCID         VARCHAR2(20),
    STATUS         CHAR,
    TIMESTAMPS     VARCHAR2(100),
    NEXT_ACTION    CHAR(2),
    DATA_STATUS    CHAR(2),
    DATA_FLAG      CHAR,
    DATA_SOURCE    CHAR,
    CHECK_FLAG     CHAR,
    CHECK_DESC     VARCHAR2(512),
    CHECK_ERR_TYPE CHAR,
    DATA_VERSION   NUMBER(8),
    DATA_REJ_DESC  VARCHAR2(128),
    DATA_DEL_DESC  VARCHAR2(128),
    DATA_CRT_USER  VARCHAR2(20),
    DATA_CRT_DATE  CHAR(8),
    DATA_CRT_TIME  CHAR(14),
    DATA_CHG_USER  VARCHAR2(20),
    DATA_CHG_DATE  CHAR(8),
    DATA_CHG_TIME  CHAR(14),
    DATA_APV_USER  VARCHAR2(20),
    DATA_APV_DATE  CHAR(8),
    DATA_APV_TIME  CHAR(14),
    RSV1           VARCHAR2(180),
    RSV2           VARCHAR2(180),
    RSV3           VARCHAR2(180),
    RSV4           VARCHAR2(180),
    RSV5           VARCHAR2(180),
    REMARKS        VARCHAR2(180),
    TABLENAME      VARCHAR2(60),
    FUNCNAME       VARCHAR2(180)
)
/

comment on table GP_BM_FUNCTION_TABLE is '菜单数据库表映射表'
/

comment on column GP_BM_FUNCTION_TABLE.DATA_ID is '数据ID'
/

comment on column GP_BM_FUNCTION_TABLE.DATA_DATE is '数据日期'
/

comment on column GP_BM_FUNCTION_TABLE.NEXT_ACTION is '下一动作'
/

comment on column GP_BM_FUNCTION_TABLE.DATA_STATUS is '数据状态'
/

comment on column GP_BM_FUNCTION_TABLE.DATA_FLAG is '数据是否已删除'
/

comment on column GP_BM_FUNCTION_TABLE.DATA_SOURCE is '数据来源'
/

comment on column GP_BM_FUNCTION_TABLE.CHECK_FLAG is '校验标识'
/

comment on column GP_BM_FUNCTION_TABLE.CHECK_DESC is '校验结果'
/

comment on column GP_BM_FUNCTION_TABLE.CHECK_ERR_TYPE is '校验失败类型'
/

comment on column GP_BM_FUNCTION_TABLE.DATA_VERSION is '数据版本'
/

comment on column GP_BM_FUNCTION_TABLE.DATA_REJ_DESC is '数据审核拒绝原因'
/

comment on column GP_BM_FUNCTION_TABLE.DATA_DEL_DESC is '数据删除描述'
/

comment on column GP_BM_FUNCTION_TABLE.DATA_CRT_USER is '数据创建/导入用户'
/

comment on column GP_BM_FUNCTION_TABLE.DATA_CRT_DATE is '数据创建/导入日期'
/

comment on column GP_BM_FUNCTION_TABLE.DATA_CRT_TIME is '数据创建/导入时间'
/

comment on column GP_BM_FUNCTION_TABLE.DATA_CHG_USER is '数据修改/删除用户'
/

comment on column GP_BM_FUNCTION_TABLE.DATA_CHG_DATE is '数据修改/删除日期'
/

comment on column GP_BM_FUNCTION_TABLE.DATA_CHG_TIME is '数据修改/删除时间'
/

comment on column GP_BM_FUNCTION_TABLE.DATA_APV_USER is '数据审核/拒绝用户'
/

comment on column GP_BM_FUNCTION_TABLE.DATA_APV_DATE is '数据审核/拒绝日期'
/

comment on column GP_BM_FUNCTION_TABLE.DATA_APV_TIME is '数据审核/拒绝时间'
/

comment on column GP_BM_FUNCTION_TABLE.RSV1 is '备用1'
/

comment on column GP_BM_FUNCTION_TABLE.RSV2 is '备用2'
/

comment on column GP_BM_FUNCTION_TABLE.RSV3 is '备用3'
/

comment on column GP_BM_FUNCTION_TABLE.RSV4 is '备用4'
/

comment on column GP_BM_FUNCTION_TABLE.RSV5 is '备用5'
/

create unique index SYS_C00244964
    on GP_BM_FUNCTION_TABLE (DATA_ID)
/

create table GP_BM_GLOBAL_INFO
(
    ID          NUMBER not null
        primary key,
    SYSTEM_NAME VARCHAR2(20),
    TBSDY       CHAR(8),
    BHDATE      CHAR(8),
    LBHDATE     CHAR(8),
    STATUS      CHAR,
    SYSTEM_TYPE CHAR(2),
    MISCFLGS    VARCHAR2(20),
    DATA_HASH   VARCHAR2(32)
)
/

comment on table GP_BM_GLOBAL_INFO is '全局信息表'
/

comment on column GP_BM_GLOBAL_INFO.DATA_HASH is '记录Hash值'
/

create table GP_BM_GNO_CHL
(
    DATA_ID        VARCHAR2(64) not null
        primary key,
    DATA_DATE      CHAR(8),
    CORP_ID        VARCHAR2(14),
    ORG_ID         VARCHAR2(14),
    GROUP_ID       VARCHAR2(14),
    CHL_ID         VARCHAR2(32),
    CHL_TYPE       CHAR,
    SERVICE_ID     VARCHAR2(32),
    RADDR          VARCHAR2(32),
    STATUS         VARCHAR2(2),
    REMARKS        VARCHAR2(180),
    CHECK_FLAG     CHAR,
    CHECK_DESC     VARCHAR2(512),
    CHECK_ERR_TYPE CHAR,
    NEXT_ACTION    CHAR(2),
    DATA_STATUS    CHAR(2),
    DATA_FLAG      CHAR,
    DATA_SOURCE    CHAR,
    DATA_VERSION   NUMBER(8),
    DATA_REJ_DESC  VARCHAR2(128),
    DATA_DEL_DESC  VARCHAR2(128),
    DATA_CRT_USER  VARCHAR2(20),
    DATA_CRT_DATE  CHAR(8),
    DATA_CRT_TIME  CHAR(14),
    DATA_CHG_USER  VARCHAR2(20),
    DATA_CHG_DATE  CHAR(8),
    DATA_CHG_TIME  CHAR(14),
    DATA_APV_USER  VARCHAR2(20),
    DATA_APV_DATE  CHAR(8),
    DATA_APV_TIME  CHAR(14),
    RSV1           VARCHAR2(180),
    RSV2           VARCHAR2(180),
    RSV3           VARCHAR2(180),
    RSV4           VARCHAR2(180),
    RSV5           VARCHAR2(180)
)
/

comment on table GP_BM_GNO_CHL is '通知渠道'
/

comment on column GP_BM_GNO_CHL.DATA_ID is '数据ID'
/

comment on column GP_BM_GNO_CHL.DATA_DATE is '数据日期'
/

comment on column GP_BM_GNO_CHL.CORP_ID is '法人机构号'
/

comment on column GP_BM_GNO_CHL.ORG_ID is '机构号'
/

comment on column GP_BM_GNO_CHL.GROUP_ID is '部门编号'
/

comment on column GP_BM_GNO_CHL.CHL_ID is '渠道ID'
/

comment on column GP_BM_GNO_CHL.CHL_TYPE is '渠道类型'
/

comment on column GP_BM_GNO_CHL.SERVICE_ID is '渠道服务'
/

comment on column GP_BM_GNO_CHL.RADDR is '目标地址'
/

comment on column GP_BM_GNO_CHL.STATUS is '状态'
/

comment on column GP_BM_GNO_CHL.REMARKS is '说明'
/

comment on column GP_BM_GNO_CHL.CHECK_FLAG is '校验标识'
/

comment on column GP_BM_GNO_CHL.CHECK_DESC is '校验结果'
/

comment on column GP_BM_GNO_CHL.CHECK_ERR_TYPE is '校验失败类型'
/

comment on column GP_BM_GNO_CHL.NEXT_ACTION is '下一动作'
/

comment on column GP_BM_GNO_CHL.DATA_STATUS is '数据状态'
/

comment on column GP_BM_GNO_CHL.DATA_FLAG is '数据是否已删除'
/

comment on column GP_BM_GNO_CHL.DATA_SOURCE is '数据来源'
/

comment on column GP_BM_GNO_CHL.DATA_VERSION is '数据版本'
/

comment on column GP_BM_GNO_CHL.DATA_REJ_DESC is '数据审核拒绝原因'
/

comment on column GP_BM_GNO_CHL.DATA_DEL_DESC is '数据删除描述'
/

comment on column GP_BM_GNO_CHL.DATA_CRT_USER is '数据创建/导入用户'
/

comment on column GP_BM_GNO_CHL.DATA_CRT_DATE is '数据创建/导入日期'
/

comment on column GP_BM_GNO_CHL.DATA_CRT_TIME is '数据创建/导入时间'
/

comment on column GP_BM_GNO_CHL.DATA_CHG_USER is '数据修改/删除用户'
/

comment on column GP_BM_GNO_CHL.DATA_CHG_DATE is '数据修改/删除日期'
/

comment on column GP_BM_GNO_CHL.DATA_CHG_TIME is '数据修改/删除时间'
/

comment on column GP_BM_GNO_CHL.DATA_APV_USER is '数据审核/拒绝用户'
/

comment on column GP_BM_GNO_CHL.DATA_APV_DATE is '数据审核/拒绝日期'
/

comment on column GP_BM_GNO_CHL.DATA_APV_TIME is '数据审核/拒绝时间'
/

comment on column GP_BM_GNO_CHL.RSV1 is '备用1'
/

comment on column GP_BM_GNO_CHL.RSV2 is '备用2'
/

comment on column GP_BM_GNO_CHL.RSV3 is '备用3'
/

comment on column GP_BM_GNO_CHL.RSV4 is '备用4'
/

comment on column GP_BM_GNO_CHL.RSV5 is '备用5'
/

create table GP_BM_GNO_DIC
(
    DATA_ID        VARCHAR2(64) not null,
    DATA_DATE      CHAR(8),
    CORP_ID        VARCHAR2(14),
    ORG_ID         VARCHAR2(14),
    GROUP_ID       VARCHAR2(14),
    DIC_ID         VARCHAR2(64),
    DATA_VALUE     VARCHAR2(64),
    DATA_DESC      VARCHAR2(384),
    DATA_TYPE      VARCHAR2(64),
    IDX            NUMBER(8),
    REMARKS        VARCHAR2(180),
    SYSTEM         VARCHAR2(128),
    CHECK_FLAG     CHAR,
    CHECK_DESC     VARCHAR2(512),
    CHECK_ERR_TYPE CHAR,
    NEXT_ACTION    CHAR(2),
    DATA_STATUS    CHAR(2),
    DATA_FLAG      CHAR,
    DATA_SOURCE    CHAR,
    DATA_VERSION   NUMBER(8),
    DATA_REJ_DESC  VARCHAR2(128),
    DATA_DEL_DESC  VARCHAR2(128),
    DATA_CRT_USER  VARCHAR2(20),
    DATA_CRT_DATE  CHAR(8),
    DATA_CRT_TIME  CHAR(14),
    DATA_CHG_USER  VARCHAR2(20),
    DATA_CHG_DATE  CHAR(8),
    DATA_CHG_TIME  CHAR(14),
    DATA_APV_USER  VARCHAR2(20),
    DATA_APV_DATE  CHAR(8),
    DATA_APV_TIME  CHAR(14),
    RSV1           VARCHAR2(180),
    RSV2           VARCHAR2(180),
    RSV3           VARCHAR2(180),
    RSV4           VARCHAR2(180),
    RSV5           VARCHAR2(180)
)
/

comment on table GP_BM_GNO_DIC is '数据字典表'
/

comment on column GP_BM_GNO_DIC.DATA_ID is '数据ID'
/

comment on column GP_BM_GNO_DIC.DATA_DATE is '数据日期'
/

comment on column GP_BM_GNO_DIC.CORP_ID is '法人机构号'
/

comment on column GP_BM_GNO_DIC.ORG_ID is '机构号'
/

comment on column GP_BM_GNO_DIC.GROUP_ID is '部门编号'
/

comment on column GP_BM_GNO_DIC.DIC_ID is '数据类型'
/

comment on column GP_BM_GNO_DIC.DATA_VALUE is '数据值'
/

comment on column GP_BM_GNO_DIC.DATA_DESC is '值描述'
/

comment on column GP_BM_GNO_DIC.DATA_TYPE is '数据类型'
/

comment on column GP_BM_GNO_DIC.IDX is '数据排序'
/

comment on column GP_BM_GNO_DIC.REMARKS is '类型说明'
/

comment on column GP_BM_GNO_DIC.SYSTEM is '所属系统'
/

comment on column GP_BM_GNO_DIC.CHECK_FLAG is '校验标识'
/

comment on column GP_BM_GNO_DIC.CHECK_DESC is '校验结果'
/

comment on column GP_BM_GNO_DIC.CHECK_ERR_TYPE is '校验失败类型'
/

comment on column GP_BM_GNO_DIC.NEXT_ACTION is '下一动作'
/

comment on column GP_BM_GNO_DIC.DATA_STATUS is '数据状态'
/

comment on column GP_BM_GNO_DIC.DATA_FLAG is '数据是否已删除'
/

comment on column GP_BM_GNO_DIC.DATA_SOURCE is '数据来源'
/

comment on column GP_BM_GNO_DIC.DATA_VERSION is '数据版本'
/

comment on column GP_BM_GNO_DIC.DATA_REJ_DESC is '数据审核拒绝原因'
/

comment on column GP_BM_GNO_DIC.DATA_DEL_DESC is '数据删除描述'
/

comment on column GP_BM_GNO_DIC.DATA_CRT_USER is '数据创建/导入用户'
/

comment on column GP_BM_GNO_DIC.DATA_CRT_DATE is '数据创建/导入日期'
/

comment on column GP_BM_GNO_DIC.DATA_CRT_TIME is '数据创建/导入时间'
/

comment on column GP_BM_GNO_DIC.DATA_CHG_USER is '数据修改/删除用户'
/

comment on column GP_BM_GNO_DIC.DATA_CHG_DATE is '数据修改/删除日期'
/

comment on column GP_BM_GNO_DIC.DATA_CHG_TIME is '数据修改/删除时间'
/

comment on column GP_BM_GNO_DIC.DATA_APV_USER is '数据审核/拒绝用户'
/

comment on column GP_BM_GNO_DIC.DATA_APV_DATE is '数据审核/拒绝日期'
/

comment on column GP_BM_GNO_DIC.DATA_APV_TIME is '数据审核/拒绝时间'
/

comment on column GP_BM_GNO_DIC.RSV1 is '备用1'
/

comment on column GP_BM_GNO_DIC.RSV2 is '备用2'
/

comment on column GP_BM_GNO_DIC.RSV3 is '备用3'
/

comment on column GP_BM_GNO_DIC.RSV4 is '备用4'
/

comment on column GP_BM_GNO_DIC.RSV5 is '备用5'
/

create table GP_BM_GNO_FIELD_DIC
(
    DATA_ID        VARCHAR2(64) not null,
    DATA_DATE      CHAR(8),
    CORP_ID        VARCHAR2(14),
    ORG_ID         VARCHAR2(14),
    GROUP_ID       VARCHAR2(14),
    FIELD_NAME     VARCHAR2(60),
    FIELD_ID       VARCHAR2(20),
    FIELD_TYPE     VARCHAR2(20),
    FIELD_LEN      VARCHAR2(8),
    FIELD_TBL_SIZE VARCHAR2(8),
    CHECK_FLAG     CHAR,
    CHECK_DESC     VARCHAR2(512),
    CHECK_ERR_TYPE CHAR,
    NEXT_ACTION    CHAR(2),
    DATA_STATUS    CHAR(2),
    DATA_FLAG      CHAR,
    DATA_SOURCE    CHAR,
    DATA_VERSION   NUMBER(8),
    DATA_REJ_DESC  VARCHAR2(128),
    DATA_DEL_DESC  VARCHAR2(128),
    DATA_CRT_USER  VARCHAR2(20),
    DATA_CRT_DATE  CHAR(8),
    DATA_CRT_TIME  CHAR(14),
    DATA_CHG_USER  VARCHAR2(20),
    DATA_CHG_DATE  CHAR(8),
    DATA_CHG_TIME  CHAR(14),
    DATA_APV_USER  VARCHAR2(20),
    DATA_APV_DATE  CHAR(8),
    DATA_APV_TIME  CHAR(14),
    RSV1           VARCHAR2(180),
    RSV2           VARCHAR2(180),
    RSV3           VARCHAR2(180),
    RSV4           VARCHAR2(180),
    RSV5           VARCHAR2(180)
)
/

comment on table GP_BM_GNO_FIELD_DIC is '表字段名称字典'
/

comment on column GP_BM_GNO_FIELD_DIC.DATA_ID is '数据ID'
/

comment on column GP_BM_GNO_FIELD_DIC.DATA_DATE is '数据日期'
/

comment on column GP_BM_GNO_FIELD_DIC.CORP_ID is '法人机构号'
/

comment on column GP_BM_GNO_FIELD_DIC.ORG_ID is '机构号'
/

comment on column GP_BM_GNO_FIELD_DIC.GROUP_ID is '部门编号'
/

comment on column GP_BM_GNO_FIELD_DIC.FIELD_NAME is '字段名字'
/

comment on column GP_BM_GNO_FIELD_DIC.FIELD_ID is '字段标识'
/

comment on column GP_BM_GNO_FIELD_DIC.FIELD_TYPE is '字段类型（默认）'
/

comment on column GP_BM_GNO_FIELD_DIC.FIELD_LEN is '字段长度（默认）'
/

comment on column GP_BM_GNO_FIELD_DIC.FIELD_TBL_SIZE is '字段表长度（默认）'
/

comment on column GP_BM_GNO_FIELD_DIC.CHECK_FLAG is '校验标识'
/

comment on column GP_BM_GNO_FIELD_DIC.CHECK_DESC is '校验结果'
/

comment on column GP_BM_GNO_FIELD_DIC.CHECK_ERR_TYPE is '校验失败类型'
/

comment on column GP_BM_GNO_FIELD_DIC.NEXT_ACTION is '下一动作'
/

comment on column GP_BM_GNO_FIELD_DIC.DATA_STATUS is '数据状态'
/

comment on column GP_BM_GNO_FIELD_DIC.DATA_FLAG is '数据是否已删除'
/

comment on column GP_BM_GNO_FIELD_DIC.DATA_SOURCE is '数据来源'
/

comment on column GP_BM_GNO_FIELD_DIC.DATA_VERSION is '数据版本'
/

comment on column GP_BM_GNO_FIELD_DIC.DATA_REJ_DESC is '数据审核拒绝原因'
/

comment on column GP_BM_GNO_FIELD_DIC.DATA_DEL_DESC is '数据删除描述'
/

comment on column GP_BM_GNO_FIELD_DIC.DATA_CRT_USER is '数据创建/导入用户'
/

comment on column GP_BM_GNO_FIELD_DIC.DATA_CRT_DATE is '数据创建/导入日期'
/

comment on column GP_BM_GNO_FIELD_DIC.DATA_CRT_TIME is '数据创建/导入时间'
/

comment on column GP_BM_GNO_FIELD_DIC.DATA_CHG_USER is '数据修改/删除用户'
/

comment on column GP_BM_GNO_FIELD_DIC.DATA_CHG_DATE is '数据修改/删除日期'
/

comment on column GP_BM_GNO_FIELD_DIC.DATA_CHG_TIME is '数据修改/删除时间'
/

comment on column GP_BM_GNO_FIELD_DIC.DATA_APV_USER is '数据审核/拒绝用户'
/

comment on column GP_BM_GNO_FIELD_DIC.DATA_APV_DATE is '数据审核/拒绝日期'
/

comment on column GP_BM_GNO_FIELD_DIC.DATA_APV_TIME is '数据审核/拒绝时间'
/

comment on column GP_BM_GNO_FIELD_DIC.RSV1 is '备用1'
/

comment on column GP_BM_GNO_FIELD_DIC.RSV2 is '备用2'
/

comment on column GP_BM_GNO_FIELD_DIC.RSV3 is '备用3'
/

comment on column GP_BM_GNO_FIELD_DIC.RSV4 is '备用4'
/

comment on column GP_BM_GNO_FIELD_DIC.RSV5 is '备用5'
/

create table GP_BM_GNO_MSG
(
    DATA_ID        VARCHAR2(64) not null
        primary key,
    DATA_DATE      CHAR(8),
    CORP_ID        VARCHAR2(14),
    ORG_ID         VARCHAR2(14),
    GROUP_ID       VARCHAR2(14),
    MSG_ID         VARCHAR2(64),
    SEQ_NO         VARCHAR2(32),
    MSG_SENDER     VARCHAR2(32),
    MSG_CODE       VARCHAR2(32),
    MSG_TYPE       VARCHAR2(32),
    MSG_FMT        VARCHAR2(20),
    SEND_DATE      CHAR(8),
    SEND_NODE      VARCHAR2(32),
    REF_ID         VARCHAR2(32),
    MSG_FILE       VARCHAR2(512),
    DATA_FILE      VARCHAR2(512),
    TOPIC          VARCHAR2(32),
    TPL_ID         VARCHAR2(32),
    CHECK_FLAG     CHAR,
    CHECK_DESC     VARCHAR2(512),
    CHECK_ERR_TYPE CHAR,
    NEXT_ACTION    CHAR(2),
    DATA_STATUS    CHAR(2),
    DATA_FLAG      CHAR,
    DATA_SOURCE    CHAR,
    DATA_VERSION   NUMBER(8),
    DATA_REJ_DESC  VARCHAR2(128),
    DATA_DEL_DESC  VARCHAR2(128),
    DATA_CRT_USER  VARCHAR2(20),
    DATA_CRT_DATE  CHAR(8),
    DATA_CRT_TIME  CHAR(14),
    DATA_CHG_USER  VARCHAR2(20),
    DATA_CHG_DATE  CHAR(8),
    DATA_CHG_TIME  CHAR(14),
    DATA_APV_USER  VARCHAR2(20),
    DATA_APV_DATE  CHAR(8),
    DATA_APV_TIME  CHAR(14),
    RSV1           VARCHAR2(180),
    RSV2           VARCHAR2(180),
    RSV3           VARCHAR2(180),
    RSV4           VARCHAR2(180),
    RSV5           VARCHAR2(180)
)
/

comment on table GP_BM_GNO_MSG is '通知消息'
/

comment on column GP_BM_GNO_MSG.DATA_ID is '数据ID'
/

comment on column GP_BM_GNO_MSG.DATA_DATE is '数据日期'
/

comment on column GP_BM_GNO_MSG.CORP_ID is '法人机构号'
/

comment on column GP_BM_GNO_MSG.ORG_ID is '机构号'
/

comment on column GP_BM_GNO_MSG.GROUP_ID is '部门编号'
/

comment on column GP_BM_GNO_MSG.MSG_ID is '数据ID'
/

comment on column GP_BM_GNO_MSG.SEQ_NO is '消息序号'
/

comment on column GP_BM_GNO_MSG.MSG_SENDER is '数据发送者'
/

comment on column GP_BM_GNO_MSG.MSG_CODE is '消息编码'
/

comment on column GP_BM_GNO_MSG.MSG_TYPE is '消息类型'
/

comment on column GP_BM_GNO_MSG.MSG_FMT is '报文格式'
/

comment on column GP_BM_GNO_MSG.SEND_DATE is '消息发送日期'
/

comment on column GP_BM_GNO_MSG.SEND_NODE is '发送节点'
/

comment on column GP_BM_GNO_MSG.REF_ID is '关联ID'
/

comment on column GP_BM_GNO_MSG.MSG_FILE is '消息文件'
/

comment on column GP_BM_GNO_MSG.DATA_FILE is '数据文件'
/

comment on column GP_BM_GNO_MSG.TOPIC is '消息主题'
/

comment on column GP_BM_GNO_MSG.TPL_ID is '模板ID'
/

comment on column GP_BM_GNO_MSG.CHECK_FLAG is '校验标识'
/

comment on column GP_BM_GNO_MSG.CHECK_DESC is '校验结果'
/

comment on column GP_BM_GNO_MSG.CHECK_ERR_TYPE is '校验失败类型'
/

comment on column GP_BM_GNO_MSG.NEXT_ACTION is '下一动作'
/

comment on column GP_BM_GNO_MSG.DATA_STATUS is '数据状态'
/

comment on column GP_BM_GNO_MSG.DATA_FLAG is '数据是否已删除'
/

comment on column GP_BM_GNO_MSG.DATA_SOURCE is '数据来源'
/

comment on column GP_BM_GNO_MSG.DATA_VERSION is '数据版本'
/

comment on column GP_BM_GNO_MSG.DATA_REJ_DESC is '数据审核拒绝原因'
/

comment on column GP_BM_GNO_MSG.DATA_DEL_DESC is '数据删除描述'
/

comment on column GP_BM_GNO_MSG.DATA_CRT_USER is '数据创建/导入用户'
/

comment on column GP_BM_GNO_MSG.DATA_CRT_DATE is '数据创建/导入日期'
/

comment on column GP_BM_GNO_MSG.DATA_CRT_TIME is '数据创建/导入时间'
/

comment on column GP_BM_GNO_MSG.DATA_CHG_USER is '数据修改/删除用户'
/

comment on column GP_BM_GNO_MSG.DATA_CHG_DATE is '数据修改/删除日期'
/

comment on column GP_BM_GNO_MSG.DATA_CHG_TIME is '数据修改/删除时间'
/

comment on column GP_BM_GNO_MSG.DATA_APV_USER is '数据审核/拒绝用户'
/

comment on column GP_BM_GNO_MSG.DATA_APV_DATE is '数据审核/拒绝日期'
/

comment on column GP_BM_GNO_MSG.DATA_APV_TIME is '数据审核/拒绝时间'
/

comment on column GP_BM_GNO_MSG.RSV1 is '备用1'
/

comment on column GP_BM_GNO_MSG.RSV2 is '备用2'
/

comment on column GP_BM_GNO_MSG.RSV3 is '备用3'
/

comment on column GP_BM_GNO_MSG.RSV4 is '备用4'
/

comment on column GP_BM_GNO_MSG.RSV5 is '备用5'
/

create table GP_BM_GNO_Q
(
    DATA_ID        VARCHAR2(64) not null
        primary key,
    DATA_DATE      CHAR(8),
    CORP_ID        VARCHAR2(14),
    ORG_ID         VARCHAR2(14),
    GROUP_ID       VARCHAR2(14),
    USER_ID        VARCHAR2(32),
    MSG_ID         VARCHAR2(64),
    CHL_ID         VARCHAR2(32),
    STATUS         CHAR(2),
    MSG_TYPE       VARCHAR2(10),
    MSG_FMT        VARCHAR2(10),
    MSG_TITLE      VARCHAR2(180),
    TRY_NUM        NUMBER(8),
    MSG_STATUS     CHAR(2),
    TO_ADDR        VARCHAR2(512),
    CC_ADDR        VARCHAR2(512),
    CHECK_FLAG     CHAR,
    CHECK_DESC     VARCHAR2(512),
    CHECK_ERR_TYPE CHAR,
    NEXT_ACTION    CHAR(2),
    DATA_STATUS    CHAR(2),
    DATA_FLAG      CHAR,
    DATA_SOURCE    CHAR,
    DATA_VERSION   NUMBER(8),
    DATA_REJ_DESC  VARCHAR2(128),
    DATA_DEL_DESC  VARCHAR2(128),
    DATA_CRT_USER  VARCHAR2(20),
    DATA_CRT_DATE  CHAR(8),
    DATA_CRT_TIME  CHAR(14),
    DATA_CHG_USER  VARCHAR2(20),
    DATA_CHG_DATE  CHAR(8),
    DATA_CHG_TIME  CHAR(14),
    DATA_APV_USER  VARCHAR2(20),
    DATA_APV_DATE  CHAR(8),
    DATA_APV_TIME  CHAR(14),
    RSV1           VARCHAR2(180),
    RSV2           VARCHAR2(180),
    RSV3           VARCHAR2(180),
    RSV4           VARCHAR2(180),
    RSV5           VARCHAR2(180),
    MSG_CONTENT    CLOB
)
/

comment on table GP_BM_GNO_Q is '通知队列'
/

comment on column GP_BM_GNO_Q.DATA_ID is '数据ID'
/

comment on column GP_BM_GNO_Q.DATA_DATE is '数据日期'
/

comment on column GP_BM_GNO_Q.CORP_ID is '法人机构号'
/

comment on column GP_BM_GNO_Q.ORG_ID is '机构号'
/

comment on column GP_BM_GNO_Q.GROUP_ID is '部门编号'
/

comment on column GP_BM_GNO_Q.USER_ID is '用户ID'
/

comment on column GP_BM_GNO_Q.MSG_ID is '消息ID'
/

comment on column GP_BM_GNO_Q.CHL_ID is '渠道ID'
/

comment on column GP_BM_GNO_Q.STATUS is '状态'
/

comment on column GP_BM_GNO_Q.MSG_TYPE is '消息类型'
/

comment on column GP_BM_GNO_Q.MSG_FMT is '消息格式'
/

comment on column GP_BM_GNO_Q.MSG_TITLE is '消息标题'
/

comment on column GP_BM_GNO_Q.TRY_NUM is '重试次数'
/

comment on column GP_BM_GNO_Q.MSG_STATUS is '阅读状态'
/

comment on column GP_BM_GNO_Q.TO_ADDR is '接收目的地址'
/

comment on column GP_BM_GNO_Q.CC_ADDR is '抄送地址'
/

comment on column GP_BM_GNO_Q.CHECK_FLAG is '校验标识'
/

comment on column GP_BM_GNO_Q.CHECK_DESC is '校验结果'
/

comment on column GP_BM_GNO_Q.CHECK_ERR_TYPE is '校验失败类型'
/

comment on column GP_BM_GNO_Q.NEXT_ACTION is '下一动作'
/

comment on column GP_BM_GNO_Q.DATA_STATUS is '数据状态'
/

comment on column GP_BM_GNO_Q.DATA_FLAG is '数据是否已删除'
/

comment on column GP_BM_GNO_Q.DATA_SOURCE is '数据来源'
/

comment on column GP_BM_GNO_Q.DATA_VERSION is '数据版本'
/

comment on column GP_BM_GNO_Q.DATA_REJ_DESC is '数据审核拒绝原因'
/

comment on column GP_BM_GNO_Q.DATA_DEL_DESC is '数据删除描述'
/

comment on column GP_BM_GNO_Q.DATA_CRT_USER is '数据创建/导入用户'
/

comment on column GP_BM_GNO_Q.DATA_CRT_DATE is '数据创建/导入日期'
/

comment on column GP_BM_GNO_Q.DATA_CRT_TIME is '数据创建/导入时间'
/

comment on column GP_BM_GNO_Q.DATA_CHG_USER is '数据修改/删除用户'
/

comment on column GP_BM_GNO_Q.DATA_CHG_DATE is '数据修改/删除日期'
/

comment on column GP_BM_GNO_Q.DATA_CHG_TIME is '数据修改/删除时间'
/

comment on column GP_BM_GNO_Q.DATA_APV_USER is '数据审核/拒绝用户'
/

comment on column GP_BM_GNO_Q.DATA_APV_DATE is '数据审核/拒绝日期'
/

comment on column GP_BM_GNO_Q.DATA_APV_TIME is '数据审核/拒绝时间'
/

comment on column GP_BM_GNO_Q.RSV1 is '备用1'
/

comment on column GP_BM_GNO_Q.RSV2 is '备用2'
/

comment on column GP_BM_GNO_Q.RSV3 is '备用3'
/

comment on column GP_BM_GNO_Q.RSV4 is '备用4'
/

comment on column GP_BM_GNO_Q.RSV5 is '备用5'
/

create table GP_BM_GNO_SUB
(
    DATA_ID        VARCHAR2(64) not null
        primary key,
    DATA_DATE      CHAR(8),
    CORP_ID        VARCHAR2(14),
    ORG_ID         VARCHAR2(14),
    GROUP_ID       VARCHAR2(14),
    ROLE_ID        VARCHAR2(32),
    TOPIC          VARCHAR2(32),
    CHL_ID         VARCHAR2(32),
    REMARKS        VARCHAR2(180),
    CHECK_FLAG     CHAR,
    CHECK_DESC     VARCHAR2(512),
    CHECK_ERR_TYPE CHAR,
    NEXT_ACTION    CHAR(2),
    DATA_STATUS    CHAR(2),
    DATA_FLAG      CHAR,
    DATA_SOURCE    CHAR,
    DATA_VERSION   NUMBER(8),
    DATA_REJ_DESC  VARCHAR2(128),
    DATA_DEL_DESC  VARCHAR2(128),
    DATA_CRT_USER  VARCHAR2(20),
    DATA_CRT_DATE  CHAR(8),
    DATA_CRT_TIME  CHAR(14),
    DATA_CHG_USER  VARCHAR2(20),
    DATA_CHG_DATE  CHAR(8),
    DATA_CHG_TIME  CHAR(14),
    DATA_APV_USER  VARCHAR2(20),
    DATA_APV_DATE  CHAR(8),
    DATA_APV_TIME  CHAR(14),
    RSV1           VARCHAR2(180),
    RSV2           VARCHAR2(180),
    RSV3           VARCHAR2(180),
    RSV4           VARCHAR2(180),
    RSV5           VARCHAR2(180)
)
/

comment on table GP_BM_GNO_SUB is '消息订阅'
/

comment on column GP_BM_GNO_SUB.DATA_ID is '数据ID'
/

comment on column GP_BM_GNO_SUB.DATA_DATE is '数据日期'
/

comment on column GP_BM_GNO_SUB.CORP_ID is '法人机构号'
/

comment on column GP_BM_GNO_SUB.ORG_ID is '机构号'
/

comment on column GP_BM_GNO_SUB.GROUP_ID is '部门编号'
/

comment on column GP_BM_GNO_SUB.ROLE_ID is '角色ID'
/

comment on column GP_BM_GNO_SUB.TOPIC is '消息主题'
/

comment on column GP_BM_GNO_SUB.CHL_ID is '渠道'
/

comment on column GP_BM_GNO_SUB.REMARKS is '说明'
/

comment on column GP_BM_GNO_SUB.CHECK_FLAG is '校验标识'
/

comment on column GP_BM_GNO_SUB.CHECK_DESC is '校验结果'
/

comment on column GP_BM_GNO_SUB.CHECK_ERR_TYPE is '校验失败类型'
/

comment on column GP_BM_GNO_SUB.NEXT_ACTION is '下一动作'
/

comment on column GP_BM_GNO_SUB.DATA_STATUS is '数据状态'
/

comment on column GP_BM_GNO_SUB.DATA_FLAG is '数据是否已删除'
/

comment on column GP_BM_GNO_SUB.DATA_SOURCE is '数据来源'
/

comment on column GP_BM_GNO_SUB.DATA_VERSION is '数据版本'
/

comment on column GP_BM_GNO_SUB.DATA_REJ_DESC is '数据审核拒绝原因'
/

comment on column GP_BM_GNO_SUB.DATA_DEL_DESC is '数据删除描述'
/

comment on column GP_BM_GNO_SUB.DATA_CRT_USER is '数据创建/导入用户'
/

comment on column GP_BM_GNO_SUB.DATA_CRT_DATE is '数据创建/导入日期'
/

comment on column GP_BM_GNO_SUB.DATA_CRT_TIME is '数据创建/导入时间'
/

comment on column GP_BM_GNO_SUB.DATA_CHG_USER is '数据修改/删除用户'
/

comment on column GP_BM_GNO_SUB.DATA_CHG_DATE is '数据修改/删除日期'
/

comment on column GP_BM_GNO_SUB.DATA_CHG_TIME is '数据修改/删除时间'
/

comment on column GP_BM_GNO_SUB.DATA_APV_USER is '数据审核/拒绝用户'
/

comment on column GP_BM_GNO_SUB.DATA_APV_DATE is '数据审核/拒绝日期'
/

comment on column GP_BM_GNO_SUB.DATA_APV_TIME is '数据审核/拒绝时间'
/

comment on column GP_BM_GNO_SUB.RSV1 is '备用1'
/

comment on column GP_BM_GNO_SUB.RSV2 is '备用2'
/

comment on column GP_BM_GNO_SUB.RSV3 is '备用3'
/

comment on column GP_BM_GNO_SUB.RSV4 is '备用4'
/

comment on column GP_BM_GNO_SUB.RSV5 is '备用5'
/

create table GP_BM_GNO_TOPIC
(
    DATA_ID        VARCHAR2(64) not null
        primary key,
    DATA_DATE      CHAR(8),
    CORP_ID        VARCHAR2(14),
    ORG_ID         VARCHAR2(14),
    GROUP_ID       VARCHAR2(14),
    TOPIC          VARCHAR2(32),
    TPL_ID         VARCHAR2(32),
    REMARKS        VARCHAR2(180),
    CHECK_FLAG     CHAR,
    CHECK_DESC     VARCHAR2(512),
    CHECK_ERR_TYPE CHAR,
    NEXT_ACTION    CHAR(2),
    DATA_STATUS    CHAR(2),
    DATA_FLAG      CHAR,
    DATA_SOURCE    CHAR,
    DATA_VERSION   NUMBER(8),
    DATA_REJ_DESC  VARCHAR2(128),
    DATA_DEL_DESC  VARCHAR2(128),
    DATA_CRT_USER  VARCHAR2(20),
    DATA_CRT_DATE  CHAR(8),
    DATA_CRT_TIME  CHAR(14),
    DATA_CHG_USER  VARCHAR2(20),
    DATA_CHG_DATE  CHAR(8),
    DATA_CHG_TIME  CHAR(14),
    DATA_APV_USER  VARCHAR2(20),
    DATA_APV_DATE  CHAR(8),
    DATA_APV_TIME  CHAR(14),
    RSV1           VARCHAR2(180),
    RSV2           VARCHAR2(180),
    RSV3           VARCHAR2(180),
    RSV4           VARCHAR2(180),
    RSV5           VARCHAR2(180)
)
/

comment on table GP_BM_GNO_TOPIC is '消息主题'
/

comment on column GP_BM_GNO_TOPIC.DATA_ID is '数据ID'
/

comment on column GP_BM_GNO_TOPIC.DATA_DATE is '数据日期'
/

comment on column GP_BM_GNO_TOPIC.CORP_ID is '法人机构号'
/

comment on column GP_BM_GNO_TOPIC.ORG_ID is '机构号'
/

comment on column GP_BM_GNO_TOPIC.GROUP_ID is '部门编号'
/

comment on column GP_BM_GNO_TOPIC.TOPIC is '消息主题'
/

comment on column GP_BM_GNO_TOPIC.TPL_ID is '模板ID'
/

comment on column GP_BM_GNO_TOPIC.REMARKS is '说明'
/

comment on column GP_BM_GNO_TOPIC.CHECK_FLAG is '校验标识'
/

comment on column GP_BM_GNO_TOPIC.CHECK_DESC is '校验结果'
/

comment on column GP_BM_GNO_TOPIC.CHECK_ERR_TYPE is '校验失败类型'
/

comment on column GP_BM_GNO_TOPIC.NEXT_ACTION is '下一动作'
/

comment on column GP_BM_GNO_TOPIC.DATA_STATUS is '数据状态'
/

comment on column GP_BM_GNO_TOPIC.DATA_FLAG is '数据是否已删除'
/

comment on column GP_BM_GNO_TOPIC.DATA_SOURCE is '数据来源'
/

comment on column GP_BM_GNO_TOPIC.DATA_VERSION is '数据版本'
/

comment on column GP_BM_GNO_TOPIC.DATA_REJ_DESC is '数据审核拒绝原因'
/

comment on column GP_BM_GNO_TOPIC.DATA_DEL_DESC is '数据删除描述'
/

comment on column GP_BM_GNO_TOPIC.DATA_CRT_USER is '数据创建/导入用户'
/

comment on column GP_BM_GNO_TOPIC.DATA_CRT_DATE is '数据创建/导入日期'
/

comment on column GP_BM_GNO_TOPIC.DATA_CRT_TIME is '数据创建/导入时间'
/

comment on column GP_BM_GNO_TOPIC.DATA_CHG_USER is '数据修改/删除用户'
/

comment on column GP_BM_GNO_TOPIC.DATA_CHG_DATE is '数据修改/删除日期'
/

comment on column GP_BM_GNO_TOPIC.DATA_CHG_TIME is '数据修改/删除时间'
/

comment on column GP_BM_GNO_TOPIC.DATA_APV_USER is '数据审核/拒绝用户'
/

comment on column GP_BM_GNO_TOPIC.DATA_APV_DATE is '数据审核/拒绝日期'
/

comment on column GP_BM_GNO_TOPIC.DATA_APV_TIME is '数据审核/拒绝时间'
/

comment on column GP_BM_GNO_TOPIC.RSV1 is '备用1'
/

comment on column GP_BM_GNO_TOPIC.RSV2 is '备用2'
/

comment on column GP_BM_GNO_TOPIC.RSV3 is '备用3'
/

comment on column GP_BM_GNO_TOPIC.RSV4 is '备用4'
/

comment on column GP_BM_GNO_TOPIC.RSV5 is '备用5'
/

create table GP_BM_GNO_TPL
(
    DATA_ID        VARCHAR2(64) not null
        primary key,
    DATA_DATE      CHAR(8),
    CORP_ID        VARCHAR2(14),
    ORG_ID         VARCHAR2(14),
    GROUP_ID       VARCHAR2(14),
    TPL_ID         VARCHAR2(32),
    TPL_LANG       VARCHAR2(8),
    CHL_ID         VARCHAR2(32),
    MSG_FMT        VARCHAR2(32),
    MSG_TITLE      VARCHAR2(180),
    TPL_DATA       VARCHAR2(4000),
    REMARKS        VARCHAR2(180),
    CHECK_FLAG     CHAR,
    CHECK_DESC     VARCHAR2(512),
    CHECK_ERR_TYPE CHAR,
    NEXT_ACTION    CHAR(2),
    DATA_STATUS    CHAR(2),
    DATA_FLAG      CHAR,
    DATA_SOURCE    CHAR,
    DATA_VERSION   NUMBER(8),
    DATA_REJ_DESC  VARCHAR2(128),
    DATA_DEL_DESC  VARCHAR2(128),
    DATA_CRT_USER  VARCHAR2(20),
    DATA_CRT_DATE  CHAR(8),
    DATA_CRT_TIME  CHAR(14),
    DATA_CHG_USER  VARCHAR2(20),
    DATA_CHG_DATE  CHAR(8),
    DATA_CHG_TIME  CHAR(14),
    DATA_APV_USER  VARCHAR2(20),
    DATA_APV_DATE  CHAR(8),
    DATA_APV_TIME  CHAR(14),
    RSV1           VARCHAR2(180),
    RSV2           VARCHAR2(180),
    RSV3           VARCHAR2(180),
    RSV4           VARCHAR2(180),
    RSV5           VARCHAR2(180)
)
/

comment on table GP_BM_GNO_TPL is '通知消息模板'
/

comment on column GP_BM_GNO_TPL.DATA_ID is '数据ID'
/

comment on column GP_BM_GNO_TPL.DATA_DATE is '数据日期'
/

comment on column GP_BM_GNO_TPL.CORP_ID is '法人机构号'
/

comment on column GP_BM_GNO_TPL.ORG_ID is '机构号'
/

comment on column GP_BM_GNO_TPL.GROUP_ID is '部门编号'
/

comment on column GP_BM_GNO_TPL.TPL_ID is '模板ID'
/

comment on column GP_BM_GNO_TPL.TPL_LANG is '模板语言'
/

comment on column GP_BM_GNO_TPL.CHL_ID is '渠道'
/

comment on column GP_BM_GNO_TPL.MSG_FMT is '报文格式'
/

comment on column GP_BM_GNO_TPL.MSG_TITLE is '消息标题'
/

comment on column GP_BM_GNO_TPL.TPL_DATA is '模板数据'
/

comment on column GP_BM_GNO_TPL.REMARKS is '备注'
/

comment on column GP_BM_GNO_TPL.CHECK_FLAG is '校验标识'
/

comment on column GP_BM_GNO_TPL.CHECK_DESC is '校验结果'
/

comment on column GP_BM_GNO_TPL.CHECK_ERR_TYPE is '校验失败类型'
/

comment on column GP_BM_GNO_TPL.NEXT_ACTION is '下一动作'
/

comment on column GP_BM_GNO_TPL.DATA_STATUS is '数据状态'
/

comment on column GP_BM_GNO_TPL.DATA_FLAG is '数据是否已删除'
/

comment on column GP_BM_GNO_TPL.DATA_SOURCE is '数据来源'
/

comment on column GP_BM_GNO_TPL.DATA_VERSION is '数据版本'
/

comment on column GP_BM_GNO_TPL.DATA_REJ_DESC is '数据审核拒绝原因'
/

comment on column GP_BM_GNO_TPL.DATA_DEL_DESC is '数据删除描述'
/

comment on column GP_BM_GNO_TPL.DATA_CRT_USER is '数据创建/导入用户'
/

comment on column GP_BM_GNO_TPL.DATA_CRT_DATE is '数据创建/导入日期'
/

comment on column GP_BM_GNO_TPL.DATA_CRT_TIME is '数据创建/导入时间'
/

comment on column GP_BM_GNO_TPL.DATA_CHG_USER is '数据修改/删除用户'
/

comment on column GP_BM_GNO_TPL.DATA_CHG_DATE is '数据修改/删除日期'
/

comment on column GP_BM_GNO_TPL.DATA_CHG_TIME is '数据修改/删除时间'
/

comment on column GP_BM_GNO_TPL.DATA_APV_USER is '数据审核/拒绝用户'
/

comment on column GP_BM_GNO_TPL.DATA_APV_DATE is '数据审核/拒绝日期'
/

comment on column GP_BM_GNO_TPL.DATA_APV_TIME is '数据审核/拒绝时间'
/

comment on column GP_BM_GNO_TPL.RSV1 is '备用1'
/

comment on column GP_BM_GNO_TPL.RSV2 is '备用2'
/

comment on column GP_BM_GNO_TPL.RSV3 is '备用3'
/

comment on column GP_BM_GNO_TPL.RSV4 is '备用4'
/

comment on column GP_BM_GNO_TPL.RSV5 is '备用5'
/

create table GP_BM_GROUP
(
    DATA_ID        VARCHAR2(64) not null,
    DATA_DATE      CHAR(8),
    CORP_ID        VARCHAR2(14),
    ORG_ID         VARCHAR2(14),
    GROUP_ID       VARCHAR2(14),
    DEPART_ID      VARCHAR2(32),
    GROUP_NAME     VARCHAR2(128),
    PGROUP_ID      VARCHAR2(32),
    GROUP_CONTACT  VARCHAR2(64),
    NEXT_ACTION    CHAR(2),
    DATA_STATUS    CHAR(2),
    DATA_FLAG      CHAR,
    DATA_SOURCE    CHAR,
    CHECK_FLAG     CHAR,
    CHECK_DESC     VARCHAR2(512),
    CHECK_ERR_TYPE CHAR,
    DATA_VERSION   NUMBER(8),
    DATA_REJ_DESC  VARCHAR2(128),
    DATA_DEL_DESC  VARCHAR2(128),
    DATA_CRT_USER  VARCHAR2(20),
    DATA_CRT_DATE  CHAR(8),
    DATA_CRT_TIME  CHAR(14),
    DATA_CHG_USER  VARCHAR2(20),
    DATA_CHG_DATE  CHAR(8),
    DATA_CHG_TIME  CHAR(14),
    DATA_APV_USER  VARCHAR2(20),
    DATA_APV_DATE  CHAR(8),
    DATA_APV_TIME  CHAR(14),
    RSV1           VARCHAR2(180),
    RSV2           VARCHAR2(180),
    RSV3           VARCHAR2(180),
    RSV4           VARCHAR2(180),
    RSV5           VARCHAR2(180),
    REMARKS        VARCHAR2(180)
)
/

comment on table GP_BM_GROUP is '部门信息表'
/

comment on column GP_BM_GROUP.DATA_ID is '数据ID'
/

comment on column GP_BM_GROUP.DATA_DATE is '数据日期'
/

comment on column GP_BM_GROUP.CORP_ID is '法人机构号'
/

comment on column GP_BM_GROUP.ORG_ID is '机构号'
/

comment on column GP_BM_GROUP.GROUP_ID is '部门编号'
/

comment on column GP_BM_GROUP.DEPART_ID is '机构id'
/

comment on column GP_BM_GROUP.GROUP_NAME is '部门名称'
/

comment on column GP_BM_GROUP.NEXT_ACTION is '下一动作'
/

comment on column GP_BM_GROUP.DATA_STATUS is '数据状态'
/

comment on column GP_BM_GROUP.DATA_FLAG is '数据是否已删除'
/

comment on column GP_BM_GROUP.DATA_SOURCE is '数据来源'
/

comment on column GP_BM_GROUP.CHECK_FLAG is '校验标识'
/

comment on column GP_BM_GROUP.CHECK_DESC is '校验结果'
/

comment on column GP_BM_GROUP.CHECK_ERR_TYPE is '校验失败类型'
/

comment on column GP_BM_GROUP.DATA_VERSION is '数据版本'
/

comment on column GP_BM_GROUP.DATA_REJ_DESC is '数据审核拒绝原因'
/

comment on column GP_BM_GROUP.DATA_DEL_DESC is '数据删除描述'
/

comment on column GP_BM_GROUP.DATA_CRT_USER is '数据创建/导入用户'
/

comment on column GP_BM_GROUP.DATA_CRT_DATE is '数据创建/导入日期'
/

comment on column GP_BM_GROUP.DATA_CRT_TIME is '数据创建/导入时间'
/

comment on column GP_BM_GROUP.DATA_CHG_USER is '数据修改/删除用户'
/

comment on column GP_BM_GROUP.DATA_CHG_DATE is '数据修改/删除日期'
/

comment on column GP_BM_GROUP.DATA_CHG_TIME is '数据修改/删除时间'
/

comment on column GP_BM_GROUP.DATA_APV_USER is '数据审核/拒绝用户'
/

comment on column GP_BM_GROUP.DATA_APV_DATE is '数据审核/拒绝日期'
/

comment on column GP_BM_GROUP.DATA_APV_TIME is '数据审核/拒绝时间'
/

comment on column GP_BM_GROUP.RSV1 is '备用1'
/

comment on column GP_BM_GROUP.RSV2 is '备用2'
/

comment on column GP_BM_GROUP.RSV3 is '备用3'
/

comment on column GP_BM_GROUP.RSV4 is '备用4'
/

comment on column GP_BM_GROUP.RSV5 is '备用5'
/

comment on column GP_BM_GROUP.REMARKS is '备注'
/

create table GP_BM_GROUP_CFG
(
    DATA_ID        VARCHAR2(64) not null,
    DATA_DATE      CHAR(8),
    CORP_ID        VARCHAR2(14),
    ORG_ID         VARCHAR2(14),
    GROUP_ID       VARCHAR2(14),
    INQ_ORG_ID     CHAR(24),
    INQ_GROUP_ID   CHAR(24),
    FUNCID         VARCHAR2(50),
    DEPART         VARCHAR2(30),
    GROUP_NUM      VARCHAR2(3),
    GROUP_NAME     VARCHAR2(120),
    REMARKS        VARCHAR2(512),
    CHECK_FLAG     CHAR,
    CHECK_DESC     VARCHAR2(512),
    CHECK_ERR_TYPE CHAR,
    NEXT_ACTION    CHAR(2),
    DATA_STATUS    CHAR(2),
    DATA_FLAG      CHAR,
    DATA_SOURCE    CHAR,
    DATA_VERSION   NUMBER(8),
    DATA_REJ_DESC  VARCHAR2(128),
    DATA_DEL_DESC  VARCHAR2(128),
    DATA_CRT_USER  VARCHAR2(20),
    DATA_CRT_DATE  CHAR(8),
    DATA_CRT_TIME  CHAR(14),
    DATA_CHG_USER  VARCHAR2(20),
    DATA_CHG_DATE  CHAR(8),
    DATA_CHG_TIME  CHAR(14),
    DATA_APV_USER  VARCHAR2(20),
    DATA_APV_DATE  CHAR(8),
    DATA_APV_TIME  CHAR(14),
    RSV1           VARCHAR2(180),
    RSV2           VARCHAR2(180),
    RSV3           VARCHAR2(180),
    RSV4           VARCHAR2(180),
    RSV5           VARCHAR2(180)
)
/

comment on column GP_BM_GROUP_CFG.DATA_ID is '数据ID'
/

comment on column GP_BM_GROUP_CFG.DATA_DATE is '数据日期'
/

comment on column GP_BM_GROUP_CFG.CORP_ID is '法人机构号'
/

comment on column GP_BM_GROUP_CFG.ORG_ID is '机构号'
/

comment on column GP_BM_GROUP_CFG.GROUP_ID is '部门编号'
/

comment on column GP_BM_GROUP_CFG.INQ_ORG_ID is '查询机构号'
/

comment on column GP_BM_GROUP_CFG.INQ_GROUP_ID is '查询组号'
/

comment on column GP_BM_GROUP_CFG.FUNCID is '菜单名'
/

comment on column GP_BM_GROUP_CFG.DEPART is '部门编号'
/

comment on column GP_BM_GROUP_CFG.GROUP_NUM is '组别号'
/

comment on column GP_BM_GROUP_CFG.GROUP_NAME is '组别名'
/

comment on column GP_BM_GROUP_CFG.REMARKS is '备注'
/

comment on column GP_BM_GROUP_CFG.CHECK_FLAG is '校验标识'
/

comment on column GP_BM_GROUP_CFG.CHECK_DESC is '校验结果'
/

comment on column GP_BM_GROUP_CFG.CHECK_ERR_TYPE is '校验失败类型'
/

comment on column GP_BM_GROUP_CFG.NEXT_ACTION is '下一动作'
/

comment on column GP_BM_GROUP_CFG.DATA_STATUS is '数据状态'
/

comment on column GP_BM_GROUP_CFG.DATA_FLAG is '数据是否已删除'
/

comment on column GP_BM_GROUP_CFG.DATA_SOURCE is '数据来源'
/

comment on column GP_BM_GROUP_CFG.DATA_VERSION is '数据版本'
/

comment on column GP_BM_GROUP_CFG.DATA_REJ_DESC is '数据审核拒绝原因'
/

comment on column GP_BM_GROUP_CFG.DATA_DEL_DESC is '数据删除描述'
/

comment on column GP_BM_GROUP_CFG.DATA_CRT_USER is '数据创建/导入用户'
/

comment on column GP_BM_GROUP_CFG.DATA_CRT_DATE is '数据创建/导入日期'
/

comment on column GP_BM_GROUP_CFG.DATA_CRT_TIME is '数据创建/导入时间'
/

comment on column GP_BM_GROUP_CFG.DATA_CHG_USER is '数据修改/删除用户'
/

comment on column GP_BM_GROUP_CFG.DATA_CHG_DATE is '数据修改/删除日期'
/

comment on column GP_BM_GROUP_CFG.DATA_CHG_TIME is '数据修改/删除时间'
/

comment on column GP_BM_GROUP_CFG.DATA_APV_USER is '数据审核/拒绝用户'
/

comment on column GP_BM_GROUP_CFG.DATA_APV_DATE is '数据审核/拒绝日期'
/

comment on column GP_BM_GROUP_CFG.DATA_APV_TIME is '数据审核/拒绝时间'
/

comment on column GP_BM_GROUP_CFG.RSV1 is '备用1'
/

comment on column GP_BM_GROUP_CFG.RSV2 is '备用2'
/

comment on column GP_BM_GROUP_CFG.RSV3 is '备用3'
/

comment on column GP_BM_GROUP_CFG.RSV4 is '备用4'
/

comment on column GP_BM_GROUP_CFG.RSV5 is '备用5'
/

create table GP_BM_HOLIDAY
(
    DATA_ID        VARCHAR2(64) not null
        primary key,
    DATA_DATE      CHAR(8),
    CORP_ID        VARCHAR2(14),
    ORG_ID         VARCHAR2(14),
    GROUP_ID       VARCHAR2(14),
    YEAR           NUMBER(8),
    HOLIDAY_DEF    VARCHAR2(366),
    LAST_UPD_TIME  CHAR(14),
    NEXT_ACTION    CHAR(2),
    DATA_STATUS    CHAR(2),
    DATA_FLAG      CHAR,
    DATA_SOURCE    CHAR,
    CHECK_FLAG     CHAR,
    CHECK_DESC     VARCHAR2(512),
    CHECK_ERR_TYPE CHAR,
    DATA_VERSION   NUMBER(8),
    DATA_REJ_DESC  VARCHAR2(128),
    DATA_DEL_DESC  VARCHAR2(128),
    DATA_CRT_USER  VARCHAR2(20),
    DATA_CRT_DATE  CHAR(8),
    DATA_CRT_TIME  CHAR(14),
    DATA_CHG_USER  VARCHAR2(20),
    DATA_CHG_DATE  CHAR(8),
    DATA_CHG_TIME  CHAR(14),
    DATA_APV_USER  VARCHAR2(20),
    DATA_APV_DATE  CHAR(8),
    DATA_APV_TIME  CHAR(14),
    RSV1           VARCHAR2(180),
    RSV2           VARCHAR2(180),
    RSV3           VARCHAR2(180),
    RSV4           VARCHAR2(180),
    RSV5           VARCHAR2(180),
    REMARKS        VARCHAR2(180)
)
/

comment on table GP_BM_HOLIDAY is '工作日历表'
/

comment on column GP_BM_HOLIDAY.DATA_ID is '数据ID'
/

comment on column GP_BM_HOLIDAY.DATA_DATE is '数据日期'
/

comment on column GP_BM_HOLIDAY.CORP_ID is '法人机构号'
/

comment on column GP_BM_HOLIDAY.ORG_ID is '机构号'
/

comment on column GP_BM_HOLIDAY.GROUP_ID is '部门编号'
/

comment on column GP_BM_HOLIDAY.YEAR is '年'
/

comment on column GP_BM_HOLIDAY.NEXT_ACTION is '下一动作'
/

comment on column GP_BM_HOLIDAY.DATA_STATUS is '数据状态'
/

comment on column GP_BM_HOLIDAY.DATA_FLAG is '数据是否已删除'
/

comment on column GP_BM_HOLIDAY.DATA_SOURCE is '数据来源'
/

comment on column GP_BM_HOLIDAY.CHECK_FLAG is '校验标识'
/

comment on column GP_BM_HOLIDAY.CHECK_DESC is '校验结果'
/

comment on column GP_BM_HOLIDAY.CHECK_ERR_TYPE is '校验失败类型'
/

comment on column GP_BM_HOLIDAY.DATA_VERSION is '数据版本'
/

comment on column GP_BM_HOLIDAY.DATA_REJ_DESC is '数据审核拒绝原因'
/

comment on column GP_BM_HOLIDAY.DATA_DEL_DESC is '数据删除描述'
/

comment on column GP_BM_HOLIDAY.DATA_CRT_USER is '数据创建/导入用户'
/

comment on column GP_BM_HOLIDAY.DATA_CRT_DATE is '数据创建/导入日期'
/

comment on column GP_BM_HOLIDAY.DATA_CRT_TIME is '数据创建/导入时间'
/

comment on column GP_BM_HOLIDAY.DATA_CHG_USER is '数据修改/删除用户'
/

comment on column GP_BM_HOLIDAY.DATA_CHG_DATE is '数据修改/删除日期'
/

comment on column GP_BM_HOLIDAY.DATA_CHG_TIME is '数据修改/删除时间'
/

comment on column GP_BM_HOLIDAY.DATA_APV_USER is '数据审核/拒绝用户'
/

comment on column GP_BM_HOLIDAY.DATA_APV_DATE is '数据审核/拒绝日期'
/

comment on column GP_BM_HOLIDAY.DATA_APV_TIME is '数据审核/拒绝时间'
/

comment on column GP_BM_HOLIDAY.RSV1 is '备用1'
/

comment on column GP_BM_HOLIDAY.RSV2 is '备用2'
/

comment on column GP_BM_HOLIDAY.RSV3 is '备用3'
/

comment on column GP_BM_HOLIDAY.RSV4 is '备用4'
/

comment on column GP_BM_HOLIDAY.RSV5 is '备用5'
/

comment on column GP_BM_HOLIDAY.REMARKS is '备注'
/

create table GP_BM_ID_FIELDDATA
(
    GUID             VARCHAR2(32)   not null
        primary key,
    FIELD_NAME       VARCHAR2(40)   not null,
    UMW_EXPRESSION   VARCHAR2(1024) not null,
    U_DATATYPE       VARCHAR2(1),
    UPDATE_WAY       VARCHAR2(1),
    UNIQUEKEY_FLAG   VARCHAR2(1),
    UPDATE_FLAG      VARCHAR2(1),
    FILTER_FLAG      VARCHAR2(1),
    FILLER1          VARCHAR2(255),
    FILLER2          VARCHAR2(255),
    FILLER3          VARCHAR2(255),
    PGUID            VARCHAR2(32),
    LIMIT_FLAG       VARCHAR2(1),
    BUSINESSKEY_FLAG VARCHAR2(1),
    FIELD_COMMENTS   VARCHAR2(255)
)
/

comment on table GP_BM_ID_FIELDDATA is '数据导入配置表'
/

comment on column GP_BM_ID_FIELDDATA.GUID is 'UUID'
/

create table GP_BM_ID_FILEDATA
(
    GUID            VARCHAR2(32)  not null
        primary key,
    DEPART_ID       VARCHAR2(32)  not null,
    FILE_NAME       VARCHAR2(128) not null,
    TABLE_NAME      VARCHAR2(128) not null,
    BATCH_NO        NUMBER        not null,
    FILE_OWNER      VARCHAR2(32)  not null,
    FORMAT_TYPE     VARCHAR2(1)   not null,
    LIST_SEPARATOR  VARCHAR2(10),
    SEQUENCE_NO     NUMBER,
    IMPORT_TIME     VARCHAR2(2),
    KEY_FLAG        VARCHAR2(1),
    START_ROW       NUMBER,
    START_COLUMN    NUMBER,
    ENDROW_FLAG     VARCHAR2(1),
    END_COLUMN      NUMBER,
    SHEET_NUM       NUMBER,
    MAIN_FLAG       VARCHAR2(2),
    FUID            VARCHAR2(32),
    COMMENTS        VARCHAR2(255),
    FILLER1         VARCHAR2(255),
    FILLER2         VARCHAR2(255),
    FILLER3         VARCHAR2(255),
    FILENAME_FORMAT VARCHAR2(200),
    AUTOIMPORTFLAG  VARCHAR2(2),
    FUNCNAME        VARCHAR2(60),
    FUNCID          VARCHAR2(60),
    CHECK_TABLE     VARCHAR2(20),
    IMPORT_TYPE     VARCHAR2(2),
    JOB_TYPE        VARCHAR2(2),
    ARGS            VARCHAR2(30),
    END_ROW         NUMBER,
    TABLE_COMMENTS  VARCHAR2(128),
    PDATA_ID        VARCHAR2(64)
)
/

comment on table GP_BM_ID_FILEDATA is '数据导入表'
/

comment on column GP_BM_ID_FILEDATA.GUID is 'UUID'
/

create table GP_BM_ID_FILTERDATA
(
    GUID              VARCHAR2(32)  not null,
    FIELD_NAME        VARCHAR2(128) not null,
    DATA_TYPE         VARCHAR2(1),
    FILTER_EXPRESSION VARCHAR2(1024),
    FILLER1           VARCHAR2(255),
    FILLER2           VARCHAR2(255),
    FILLER3           VARCHAR2(255)
)
/

comment on table GP_BM_ID_FILTERDATA is '导入数据过滤表'
/

create table GP_BM_ID_FUNCTIONDATA
(
    FUNC_NAME VARCHAR2(128) not null
        primary key,
    FUNC_FLAG VARCHAR2(1)   not null,
    FUNC_DESC VARCHAR2(510) not null,
    FILLER1   VARCHAR2(255),
    FILLER2   VARCHAR2(255),
    FILLER3   VARCHAR2(255),
    DATA_HASH VARCHAR2(32)
)
/

comment on table GP_BM_ID_FUNCTIONDATA is '导入函数信息表'
/

create table GP_BM_ID_IMPORTLOG
(
    GUID             VARCHAR2(32) not null,
    WORK_DATE        CHAR(8)      not null,
    FILE_OWNER       VARCHAR2(32) not null,
    SERICAL_NO       NUMBER       not null,
    IMPORT_STATUS    VARCHAR2(1)  not null,
    ERROR_NUMBER     NUMBER,
    ERROR_MESSAGE    VARCHAR2(1024),
    TOTAL_ROWS       NUMBER,
    CORRECT_ROWS     NUMBER,
    FILTER_ROWS      NUMBER,
    BEGIN_TIME       CHAR(14),
    ERR_FILENAMEPATH VARCHAR2(256),
    ERR_FILENAME     VARCHAR2(128),
    MOD_FLG          VARCHAR2(2),
    END_TIME         VARCHAR2(20),
    FILE_NAME        VARCHAR2(256),
    FILLER2          VARCHAR2(255),
    FILLER3          VARCHAR2(255)
)
/

comment on table GP_BM_ID_IMPORTLOG is '导入日志表'
/

create table GP_BM_ID_IMPORTLOGDTL
(
    GUID          VARCHAR2(32) not null,
    WORK_DATE     VARCHAR2(8)  not null,
    FILE_OWNER    VARCHAR2(32) not null,
    SERICAL_NO    NUMBER       not null,
    LINE_NO       NUMBER       not null,
    POS_NO        VARCHAR2(32),
    ERROR_MESSAGE VARCHAR2(1024),
    MOD_FLG       VARCHAR2(2),
    BEGIN_TIME    VARCHAR2(20),
    END_TIME      VARCHAR2(20),
    ERR_FILENAME  VARCHAR2(128),
    FILE_NAME     VARCHAR2(255),
    FILLER2       VARCHAR2(255),
    FILLER3       VARCHAR2(255)
)
/

comment on table GP_BM_ID_IMPORTLOGDTL is '导入日志明细表'
/

create table GP_BM_ID_MULTIFILEDATA
(
    DATA_ID         VARCHAR2(64) not null
        primary key,
    FILE_NAME       VARCHAR2(128),
    FILENAME_FORMAT VARCHAR2(200),
    DATA_DATE       CHAR(8),
    CORP_ID         VARCHAR2(14),
    ORG_ID          VARCHAR2(14),
    GROUP_ID        VARCHAR2(14),
    INQ_ORG_ID      CHAR(24),
    INQ_GROUP_ID    CHAR(24),
    CHECK_FLAG      CHAR,
    CHECK_DESC      VARCHAR2(512),
    CHECK_ERR_TYPE  CHAR,
    NEXT_ACTION     CHAR(2),
    DATA_STATUS     CHAR(2),
    DATA_FLAG       CHAR,
    DATA_OP         CHAR,
    DATA_SOURCE     CHAR,
    DATA_VERSION    NUMBER(8),
    DATA_REJ_DESC   VARCHAR2(128),
    DATA_DEL_DESC   VARCHAR2(128),
    DATA_CRT_USER   VARCHAR2(20),
    DATA_CRT_DATE   CHAR(8),
    DATA_CRT_TIME   CHAR(14),
    DATA_CHG_USER   VARCHAR2(20),
    DATA_CHG_DATE   CHAR(8),
    DATA_CHG_TIME   CHAR(14),
    DATA_APV_USER   VARCHAR2(20),
    DATA_APV_DATE   CHAR(8),
    DATA_APV_TIME   CHAR(14),
    RSV1            VARCHAR2(180),
    RSV2            VARCHAR2(180),
    RSV3            VARCHAR2(180),
    RSV4            VARCHAR2(180),
    RSV5            VARCHAR2(180),
    DATA_HASH       VARCHAR2(64)
)
/

comment on table GP_BM_ID_MULTIFILEDATA is '多文件或excel多sheet导入配置'
/

comment on column GP_BM_ID_MULTIFILEDATA.DATA_ID is '数据ID'
/

comment on column GP_BM_ID_MULTIFILEDATA.FILE_NAME is '导入文件名'
/

comment on column GP_BM_ID_MULTIFILEDATA.FILENAME_FORMAT is '文件名格式'
/

comment on column GP_BM_ID_MULTIFILEDATA.DATA_DATE is '数据日期'
/

comment on column GP_BM_ID_MULTIFILEDATA.CORP_ID is '法人机构号'
/

comment on column GP_BM_ID_MULTIFILEDATA.ORG_ID is '机构号'
/

comment on column GP_BM_ID_MULTIFILEDATA.GROUP_ID is '部门编号'
/

comment on column GP_BM_ID_MULTIFILEDATA.INQ_ORG_ID is '查询机构号'
/

comment on column GP_BM_ID_MULTIFILEDATA.INQ_GROUP_ID is '查询组号'
/

comment on column GP_BM_ID_MULTIFILEDATA.CHECK_FLAG is '校验标识'
/

comment on column GP_BM_ID_MULTIFILEDATA.CHECK_DESC is '校验结果'
/

comment on column GP_BM_ID_MULTIFILEDATA.CHECK_ERR_TYPE is '校验失败类型'
/

comment on column GP_BM_ID_MULTIFILEDATA.NEXT_ACTION is '下一动作'
/

comment on column GP_BM_ID_MULTIFILEDATA.DATA_STATUS is '数据状态'
/

comment on column GP_BM_ID_MULTIFILEDATA.DATA_FLAG is '数据是否已删除'
/

comment on column GP_BM_ID_MULTIFILEDATA.DATA_OP is '数据操作 A：新增，D:删除, M:修改'
/

comment on column GP_BM_ID_MULTIFILEDATA.DATA_SOURCE is '数据来源'
/

comment on column GP_BM_ID_MULTIFILEDATA.DATA_VERSION is '数据版本'
/

comment on column GP_BM_ID_MULTIFILEDATA.DATA_REJ_DESC is '数据审核拒绝原因'
/

comment on column GP_BM_ID_MULTIFILEDATA.DATA_DEL_DESC is '数据删除描述'
/

comment on column GP_BM_ID_MULTIFILEDATA.DATA_CRT_USER is '数据创建/导入用户'
/

comment on column GP_BM_ID_MULTIFILEDATA.DATA_CRT_DATE is '数据创建/导入日期'
/

comment on column GP_BM_ID_MULTIFILEDATA.DATA_CRT_TIME is '数据创建/导入时间'
/

comment on column GP_BM_ID_MULTIFILEDATA.DATA_CHG_USER is '数据修改/删除用户'
/

comment on column GP_BM_ID_MULTIFILEDATA.DATA_CHG_DATE is '数据修改/删除日期'
/

comment on column GP_BM_ID_MULTIFILEDATA.DATA_CHG_TIME is '数据修改/删除时间'
/

comment on column GP_BM_ID_MULTIFILEDATA.DATA_APV_USER is '数据审核/拒绝用户'
/

comment on column GP_BM_ID_MULTIFILEDATA.DATA_APV_DATE is '数据审核/拒绝日期'
/

comment on column GP_BM_ID_MULTIFILEDATA.DATA_APV_TIME is '数据审核/拒绝时间'
/

comment on column GP_BM_ID_MULTIFILEDATA.RSV1 is '备用1'
/

comment on column GP_BM_ID_MULTIFILEDATA.RSV2 is '备用2'
/

comment on column GP_BM_ID_MULTIFILEDATA.RSV3 is '备用3'
/

comment on column GP_BM_ID_MULTIFILEDATA.RSV4 is '备用4'
/

comment on column GP_BM_ID_MULTIFILEDATA.RSV5 is '备用5'
/

comment on column GP_BM_ID_MULTIFILEDATA.DATA_HASH is '记录HASH值'
/

create table GP_BM_ID_MULTIFILE_MAPPING
(
    DATA_ID                 VARCHAR2(64) not null
        primary key,
    DATA_DATE               CHAR(8),
    MULTI_GUID              VARCHAR2(64),
    PARENT_GUID             VARCHAR2(64),
    PARENT_TABLE_NAME       VARCHAR2(64),
    PARENT_PK_COLUMN        VARCHAR2(64),
    PARENT_LINK_COLUMN_NAME VARCHAR2(64),
    CHILD_GUID              VARCHAR2(64),
    CHILD_TABLE_NAME        VARCHAR2(64),
    CHILD_LINK_COLUMN_NAME  VARCHAR2(64),
    CHILD_FK_COLUMN         VARCHAR2(64),
    CORP_ID                 VARCHAR2(14),
    ORG_ID                  VARCHAR2(14),
    GROUP_ID                VARCHAR2(14),
    INQ_ORG_ID              CHAR(24),
    INQ_GROUP_ID            CHAR(24),
    CHECK_FLAG              CHAR,
    CHECK_DESC              VARCHAR2(512),
    CHECK_ERR_TYPE          CHAR,
    NEXT_ACTION             CHAR(2),
    DATA_STATUS             CHAR(2),
    DATA_FLAG               CHAR,
    DATA_OP                 CHAR,
    DATA_SOURCE             CHAR,
    DATA_VERSION            NUMBER(8),
    DATA_REJ_DESC           VARCHAR2(128),
    DATA_DEL_DESC           VARCHAR2(128),
    DATA_CRT_USER           VARCHAR2(20),
    DATA_CRT_DATE           CHAR(8),
    DATA_CRT_TIME           CHAR(14),
    DATA_CHG_USER           VARCHAR2(20),
    DATA_CHG_DATE           CHAR(8),
    DATA_CHG_TIME           CHAR(14),
    DATA_APV_USER           VARCHAR2(20),
    DATA_APV_DATE           CHAR(8),
    DATA_APV_TIME           CHAR(14),
    RSV1                    VARCHAR2(180),
    RSV2                    VARCHAR2(180),
    RSV3                    VARCHAR2(180),
    RSV4                    VARCHAR2(180),
    RSV5                    VARCHAR2(180),
    DATA_HASH               VARCHAR2(64)
)
/

comment on table GP_BM_ID_MULTIFILE_MAPPING is '导入文件关系配置'
/

comment on column GP_BM_ID_MULTIFILE_MAPPING.DATA_ID is '数据ID'
/

comment on column GP_BM_ID_MULTIFILE_MAPPING.DATA_DATE is '数据日期'
/

comment on column GP_BM_ID_MULTIFILE_MAPPING.MULTI_GUID is 'MULTI文件GUID'
/

comment on column GP_BM_ID_MULTIFILE_MAPPING.PARENT_GUID is '主表所在文件GUID'
/

comment on column GP_BM_ID_MULTIFILE_MAPPING.PARENT_TABLE_NAME is '主表名称'
/

comment on column GP_BM_ID_MULTIFILE_MAPPING.PARENT_PK_COLUMN is '主表主键'
/

comment on column GP_BM_ID_MULTIFILE_MAPPING.PARENT_LINK_COLUMN_NAME is '主表所在关联字段'
/

comment on column GP_BM_ID_MULTIFILE_MAPPING.CHILD_GUID is '附表文件GUID'
/

comment on column GP_BM_ID_MULTIFILE_MAPPING.CHILD_TABLE_NAME is '附表名称'
/

comment on column GP_BM_ID_MULTIFILE_MAPPING.CHILD_LINK_COLUMN_NAME is '附表关联字段'
/

comment on column GP_BM_ID_MULTIFILE_MAPPING.CHILD_FK_COLUMN is '附表外键'
/

comment on column GP_BM_ID_MULTIFILE_MAPPING.CORP_ID is '法人机构号'
/

comment on column GP_BM_ID_MULTIFILE_MAPPING.ORG_ID is '机构号'
/

comment on column GP_BM_ID_MULTIFILE_MAPPING.GROUP_ID is '部门编号'
/

comment on column GP_BM_ID_MULTIFILE_MAPPING.INQ_ORG_ID is '查询机构号'
/

comment on column GP_BM_ID_MULTIFILE_MAPPING.INQ_GROUP_ID is '查询组号'
/

comment on column GP_BM_ID_MULTIFILE_MAPPING.CHECK_FLAG is '校验标识'
/

comment on column GP_BM_ID_MULTIFILE_MAPPING.CHECK_DESC is '校验结果'
/

comment on column GP_BM_ID_MULTIFILE_MAPPING.CHECK_ERR_TYPE is '校验失败类型'
/

comment on column GP_BM_ID_MULTIFILE_MAPPING.NEXT_ACTION is '下一动作'
/

comment on column GP_BM_ID_MULTIFILE_MAPPING.DATA_STATUS is '数据状态'
/

comment on column GP_BM_ID_MULTIFILE_MAPPING.DATA_FLAG is '数据是否已删除'
/

comment on column GP_BM_ID_MULTIFILE_MAPPING.DATA_OP is '数据操作 A：新增，D:删除, M:修改'
/

comment on column GP_BM_ID_MULTIFILE_MAPPING.DATA_SOURCE is '数据来源'
/

comment on column GP_BM_ID_MULTIFILE_MAPPING.DATA_VERSION is '数据版本'
/

comment on column GP_BM_ID_MULTIFILE_MAPPING.DATA_REJ_DESC is '数据审核拒绝原因'
/

comment on column GP_BM_ID_MULTIFILE_MAPPING.DATA_DEL_DESC is '数据删除描述'
/

comment on column GP_BM_ID_MULTIFILE_MAPPING.DATA_CRT_USER is '数据创建/导入用户'
/

comment on column GP_BM_ID_MULTIFILE_MAPPING.DATA_CRT_DATE is '数据创建/导入日期'
/

comment on column GP_BM_ID_MULTIFILE_MAPPING.DATA_CRT_TIME is '数据创建/导入时间'
/

comment on column GP_BM_ID_MULTIFILE_MAPPING.DATA_CHG_USER is '数据修改/删除用户'
/

comment on column GP_BM_ID_MULTIFILE_MAPPING.DATA_CHG_DATE is '数据修改/删除日期'
/

comment on column GP_BM_ID_MULTIFILE_MAPPING.DATA_CHG_TIME is '数据修改/删除时间'
/

comment on column GP_BM_ID_MULTIFILE_MAPPING.DATA_APV_USER is '数据审核/拒绝用户'
/

comment on column GP_BM_ID_MULTIFILE_MAPPING.DATA_APV_DATE is '数据审核/拒绝日期'
/

comment on column GP_BM_ID_MULTIFILE_MAPPING.DATA_APV_TIME is '数据审核/拒绝时间'
/

comment on column GP_BM_ID_MULTIFILE_MAPPING.RSV1 is '备用1'
/

comment on column GP_BM_ID_MULTIFILE_MAPPING.RSV2 is '备用2'
/

comment on column GP_BM_ID_MULTIFILE_MAPPING.RSV3 is '备用3'
/

comment on column GP_BM_ID_MULTIFILE_MAPPING.RSV4 is '备用4'
/

comment on column GP_BM_ID_MULTIFILE_MAPPING.RSV5 is '备用5'
/

comment on column GP_BM_ID_MULTIFILE_MAPPING.DATA_HASH is '记录HASH值'
/

create table GP_BM_ID_UPLOADLOG
(
    UPLOAD_GUID   VARCHAR2(32) not null,
    WORK_DATE     VARCHAR2(8),
    FILE_NAME     VARCHAR2(256),
    TARGET_PATH   VARCHAR2(200),
    SND_IP        VARCHAR2(20),
    REC_IP        VARCHAR2(20),
    UPLOAD_TIME   VARCHAR2(14),
    UPLOADER      VARCHAR2(64),
    FILLER1       VARCHAR2(60),
    FILLER2       VARCHAR2(60),
    FILLER3       VARCHAR2(60),
    UPLOAD_ORG_ID VARCHAR2(60),
    STORE_NAME    VARCHAR2(80),
    DATA_RPT_DATE CHAR(8),
    REPORT_CODE   VARCHAR2(32)
)
/

comment on table GP_BM_ID_UPLOADLOG is '上传日志表'
/

comment on column GP_BM_ID_UPLOADLOG.UPLOAD_GUID is 'UUID'
/

create table GP_BM_ID_XMLDATA
(
    PUID          VARCHAR2(32)   not null,
    FUID          VARCHAR2(32)   not null,
    GUID          VARCHAR2(32)   not null,
    NODES_NAME    VARCHAR2(128)  not null,
    NODE_ORDER    VARCHAR2(2)    not null,
    NODE_XPATH    VARCHAR2(1024) not null,
    NODE_PROPERTY VARCHAR2(1)    not null,
    NODE_GETVAL   VARCHAR2(1)    not null,
    NODE_RTVAL    VARCHAR2(1),
    FILLER1       VARCHAR2(255),
    FILLER2       VARCHAR2(255),
    FILLER3       VARCHAR2(255)
)
/

comment on table GP_BM_ID_XMLDATA is 'XML配置表'
/

create table GP_BM_INQ_CFG
(
    DATA_ID           VARCHAR2(64) not null
        primary key,
    DATA_DATE         CHAR(8),
    CORP_ID           VARCHAR2(14),
    ORG_ID            VARCHAR2(14),
    GROUP_ID          VARCHAR2(14),
    NEXT_ACTION       CHAR(2),
    DATA_STATUS       CHAR(2),
    DATA_FLAG         CHAR,
    DATA_SOURCE       CHAR,
    CHECK_FLAG        CHAR,
    CHECK_DESC        VARCHAR2(512),
    CHECK_ERR_TYPE    CHAR,
    DATA_VERSION      NUMBER(8),
    DATA_REJ_DESC     VARCHAR2(128),
    DATA_DEL_DESC     VARCHAR2(128),
    DATA_CRT_USER     VARCHAR2(20),
    DATA_CRT_DATE     CHAR(8),
    DATA_CRT_TIME     CHAR(14),
    DATA_CHG_USER     VARCHAR2(20),
    DATA_CHG_DATE     CHAR(8),
    DATA_CHG_TIME     CHAR(14),
    DATA_APV_USER     VARCHAR2(20),
    DATA_APV_DATE     CHAR(8),
    DATA_APV_TIME     CHAR(14),
    RSV1              VARCHAR2(180),
    RSV2              VARCHAR2(180),
    RSV3              VARCHAR2(180),
    RSV4              VARCHAR2(180),
    RSV5              VARCHAR2(180),
    REMARK            VARCHAR2(512),
    SQL_ID            VARCHAR2(64),
    SQL_STRING        VARCHAR2(4000),
    DETAIL_SQL_STRING VARCHAR2(4000),
    SYSTEM            VARCHAR2(32)
)
/

comment on table GP_BM_INQ_CFG is '通用查询配置表'
/

comment on column GP_BM_INQ_CFG.DATA_ID is '数据ID'
/

comment on column GP_BM_INQ_CFG.DATA_DATE is '数据日期'
/

comment on column GP_BM_INQ_CFG.CORP_ID is '法人机构号'
/

comment on column GP_BM_INQ_CFG.ORG_ID is '机构号'
/

comment on column GP_BM_INQ_CFG.GROUP_ID is '部门编号'
/

comment on column GP_BM_INQ_CFG.NEXT_ACTION is '下一动作'
/

comment on column GP_BM_INQ_CFG.DATA_STATUS is '数据状态'
/

comment on column GP_BM_INQ_CFG.DATA_FLAG is '数据是否已删除'
/

comment on column GP_BM_INQ_CFG.DATA_SOURCE is '数据来源'
/

comment on column GP_BM_INQ_CFG.CHECK_FLAG is '校验标识'
/

comment on column GP_BM_INQ_CFG.CHECK_DESC is '校验结果'
/

comment on column GP_BM_INQ_CFG.CHECK_ERR_TYPE is '校验失败类型'
/

comment on column GP_BM_INQ_CFG.DATA_VERSION is '数据版本'
/

comment on column GP_BM_INQ_CFG.DATA_REJ_DESC is '数据审核拒绝原因'
/

comment on column GP_BM_INQ_CFG.DATA_DEL_DESC is '数据删除描述'
/

comment on column GP_BM_INQ_CFG.DATA_CRT_USER is '数据创建/导入用户'
/

comment on column GP_BM_INQ_CFG.DATA_CRT_DATE is '数据创建/导入日期'
/

comment on column GP_BM_INQ_CFG.DATA_CRT_TIME is '数据创建/导入时间'
/

comment on column GP_BM_INQ_CFG.DATA_CHG_USER is '数据修改/删除用户'
/

comment on column GP_BM_INQ_CFG.DATA_CHG_DATE is '数据修改/删除日期'
/

comment on column GP_BM_INQ_CFG.DATA_CHG_TIME is '数据修改/删除时间'
/

comment on column GP_BM_INQ_CFG.DATA_APV_USER is '数据审核/拒绝用户'
/

comment on column GP_BM_INQ_CFG.DATA_APV_DATE is '数据审核/拒绝日期'
/

comment on column GP_BM_INQ_CFG.DATA_APV_TIME is '数据审核/拒绝时间'
/

comment on column GP_BM_INQ_CFG.RSV1 is '备用1'
/

comment on column GP_BM_INQ_CFG.RSV2 is '备用2'
/

comment on column GP_BM_INQ_CFG.RSV3 is '备用3'
/

comment on column GP_BM_INQ_CFG.RSV4 is '备用4'
/

comment on column GP_BM_INQ_CFG.RSV5 is '备用5'
/

comment on column GP_BM_INQ_CFG.REMARK is '备注'
/

create unique index UNIQUE_INQ_CFG
    on GP_BM_INQ_CFG (SQL_ID)
/

create table GP_BM_JOB
(
    DATA_ID          VARCHAR2(64) not null
        primary key,
    DATA_DATE        CHAR(8),
    CORP_ID          VARCHAR2(14),
    ORG_ID           VARCHAR2(14),
    GROUP_ID         VARCHAR2(14),
    JOB_GROUP        VARCHAR2(256),
    JOB_ID           VARCHAR2(256),
    TYPE             VARCHAR2(20),
    EXPRESSION       VARCHAR2(2000),
    DATA             VARCHAR2(2000),
    IS_TRANSACTIONAL CHAR,
    IS_CONCURRENT    CHAR,
    DESCRIPTION      VARCHAR2(256),
    NEXT_ACTION      CHAR(2),
    DATA_STATUS      CHAR(2),
    DATA_FLAG        CHAR,
    DATA_SOURCE      CHAR,
    CHECK_FLAG       CHAR,
    CHECK_DESC       VARCHAR2(512),
    CHECK_ERR_TYPE   CHAR,
    DATA_VERSION     NUMBER(8),
    DATA_REJ_DESC    VARCHAR2(128),
    DATA_DEL_DESC    VARCHAR2(128),
    DATA_CRT_USER    VARCHAR2(20),
    DATA_CRT_DATE    CHAR(8),
    DATA_CRT_TIME    CHAR(14),
    DATA_CHG_USER    VARCHAR2(20),
    DATA_CHG_DATE    CHAR(8),
    DATA_CHG_TIME    CHAR(14),
    DATA_APV_USER    VARCHAR2(20),
    DATA_APV_DATE    CHAR(8),
    DATA_APV_TIME    CHAR(14),
    RSV1             VARCHAR2(180),
    RSV2             VARCHAR2(180),
    RSV3             VARCHAR2(180),
    RSV4             VARCHAR2(180),
    RSV5             VARCHAR2(180),
    REMARKS          VARCHAR2(180)
)
/

comment on table GP_BM_JOB is '定时任务表'
/

comment on column GP_BM_JOB.DATA_ID is '数据ID'
/

comment on column GP_BM_JOB.DATA_DATE is '数据日期'
/

comment on column GP_BM_JOB.CORP_ID is '法人机构号'
/

comment on column GP_BM_JOB.ORG_ID is '机构号'
/

comment on column GP_BM_JOB.GROUP_ID is '部门编号'
/

comment on column GP_BM_JOB.NEXT_ACTION is '下一动作'
/

comment on column GP_BM_JOB.DATA_STATUS is '数据状态'
/

comment on column GP_BM_JOB.DATA_FLAG is '数据是否已删除'
/

comment on column GP_BM_JOB.DATA_SOURCE is '数据来源'
/

comment on column GP_BM_JOB.CHECK_FLAG is '校验标识'
/

comment on column GP_BM_JOB.CHECK_DESC is '校验结果'
/

comment on column GP_BM_JOB.CHECK_ERR_TYPE is '校验失败类型'
/

comment on column GP_BM_JOB.DATA_VERSION is '数据版本'
/

comment on column GP_BM_JOB.DATA_REJ_DESC is '数据审核拒绝原因'
/

comment on column GP_BM_JOB.DATA_DEL_DESC is '数据删除描述'
/

comment on column GP_BM_JOB.DATA_CRT_USER is '数据创建/导入用户'
/

comment on column GP_BM_JOB.DATA_CRT_DATE is '数据创建/导入日期'
/

comment on column GP_BM_JOB.DATA_CRT_TIME is '数据创建/导入时间'
/

comment on column GP_BM_JOB.DATA_CHG_USER is '数据修改/删除用户'
/

comment on column GP_BM_JOB.DATA_CHG_DATE is '数据修改/删除日期'
/

comment on column GP_BM_JOB.DATA_CHG_TIME is '数据修改/删除时间'
/

comment on column GP_BM_JOB.DATA_APV_USER is '数据审核/拒绝用户'
/

comment on column GP_BM_JOB.DATA_APV_DATE is '数据审核/拒绝日期'
/

comment on column GP_BM_JOB.DATA_APV_TIME is '数据审核/拒绝时间'
/

comment on column GP_BM_JOB.RSV1 is '备用1'
/

comment on column GP_BM_JOB.RSV2 is '备用2'
/

comment on column GP_BM_JOB.RSV3 is '备用3'
/

comment on column GP_BM_JOB.RSV4 is '备用4'
/

comment on column GP_BM_JOB.RSV5 is '备用5'
/

create table GP_BM_JOB_LOG
(
    DATA_ID     VARCHAR2(64) not null
        primary key,
    JOB_GROUP   VARCHAR2(256),
    JOB_ID      VARCHAR2(256),
    START_TIME  CHAR(14),
    END_TIME    CHAR(14),
    STATUS      VARCHAR2(20),
    MESSAGE     VARCHAR2(4000),
    STACK_TRACE VARCHAR2(4000)
)
/

comment on table GP_BM_JOB_LOG is '定时任务日志表'
/

comment on column GP_BM_JOB_LOG.DATA_ID is '数据ID'
/

create table GP_BM_JOB_SCHEDULE
(
    DATA_ID          VARCHAR2(64) not null
        primary key,
    DATA_DATE        CHAR(8),
    CORP_ID          VARCHAR2(14),
    ORG_ID           VARCHAR2(14),
    GROUP_ID         VARCHAR2(14),
    JOB_GROUP        VARCHAR2(256),
    JOB_ID           VARCHAR2(256),
    DESCRIPTION      VARCHAR2(256),
    STATUS           VARCHAR2(20),
    RUN_SECOND       VARCHAR2(255),
    RUN_MINUTE       VARCHAR2(255),
    RUN_HOUR         VARCHAR2(255),
    RUN_DAY_IN_MONTH VARCHAR2(255),
    RUN_MONTH        VARCHAR2(255),
    RUN_DAY_IN_WEEK  VARCHAR2(255),
    RUN_YEAR         VARCHAR2(255),
    NEXT_ACTION      CHAR(2),
    DATA_STATUS      CHAR(2),
    DATA_FLAG        CHAR,
    DATA_SOURCE      CHAR,
    CHECK_FLAG       CHAR,
    CHECK_DESC       VARCHAR2(512),
    CHECK_ERR_TYPE   CHAR,
    DATA_VERSION     NUMBER(8),
    DATA_REJ_DESC    VARCHAR2(128),
    DATA_DEL_DESC    VARCHAR2(128),
    DATA_CRT_USER    VARCHAR2(20),
    DATA_CRT_DATE    CHAR(8),
    DATA_CRT_TIME    CHAR(14),
    DATA_CHG_USER    VARCHAR2(20),
    DATA_CHG_DATE    CHAR(8),
    DATA_CHG_TIME    CHAR(14),
    DATA_APV_USER    VARCHAR2(20),
    DATA_APV_DATE    CHAR(8),
    DATA_APV_TIME    CHAR(14),
    RSV1             VARCHAR2(180),
    RSV2             VARCHAR2(180),
    RSV3             VARCHAR2(180),
    RSV4             VARCHAR2(180),
    RSV5             VARCHAR2(180),
    REMARKS          VARCHAR2(180)
)
/

comment on table GP_BM_JOB_SCHEDULE is '定时任务计划表'
/

comment on column GP_BM_JOB_SCHEDULE.DATA_ID is '数据ID'
/

comment on column GP_BM_JOB_SCHEDULE.DATA_DATE is '数据日期'
/

comment on column GP_BM_JOB_SCHEDULE.CORP_ID is '法人机构号'
/

comment on column GP_BM_JOB_SCHEDULE.ORG_ID is '机构号'
/

comment on column GP_BM_JOB_SCHEDULE.GROUP_ID is '部门编号'
/

comment on column GP_BM_JOB_SCHEDULE.STATUS is 'RUNNING，STOP'
/

comment on column GP_BM_JOB_SCHEDULE.NEXT_ACTION is '下一动作'
/

comment on column GP_BM_JOB_SCHEDULE.DATA_STATUS is '数据状态'
/

comment on column GP_BM_JOB_SCHEDULE.DATA_FLAG is '数据是否已删除'
/

comment on column GP_BM_JOB_SCHEDULE.DATA_SOURCE is '数据来源'
/

comment on column GP_BM_JOB_SCHEDULE.CHECK_FLAG is '校验标识'
/

comment on column GP_BM_JOB_SCHEDULE.CHECK_DESC is '校验结果'
/

comment on column GP_BM_JOB_SCHEDULE.CHECK_ERR_TYPE is '校验失败类型'
/

comment on column GP_BM_JOB_SCHEDULE.DATA_VERSION is '数据版本'
/

comment on column GP_BM_JOB_SCHEDULE.DATA_REJ_DESC is '数据审核拒绝原因'
/

comment on column GP_BM_JOB_SCHEDULE.DATA_DEL_DESC is '数据删除描述'
/

comment on column GP_BM_JOB_SCHEDULE.DATA_CRT_USER is '数据创建/导入用户'
/

comment on column GP_BM_JOB_SCHEDULE.DATA_CRT_DATE is '数据创建/导入日期'
/

comment on column GP_BM_JOB_SCHEDULE.DATA_CRT_TIME is '数据创建/导入时间'
/

comment on column GP_BM_JOB_SCHEDULE.DATA_CHG_USER is '数据修改/删除用户'
/

comment on column GP_BM_JOB_SCHEDULE.DATA_CHG_DATE is '数据修改/删除日期'
/

comment on column GP_BM_JOB_SCHEDULE.DATA_CHG_TIME is '数据修改/删除时间'
/

comment on column GP_BM_JOB_SCHEDULE.DATA_APV_USER is '数据审核/拒绝用户'
/

comment on column GP_BM_JOB_SCHEDULE.DATA_APV_DATE is '数据审核/拒绝日期'
/

comment on column GP_BM_JOB_SCHEDULE.DATA_APV_TIME is '数据审核/拒绝时间'
/

comment on column GP_BM_JOB_SCHEDULE.RSV1 is '备用1'
/

comment on column GP_BM_JOB_SCHEDULE.RSV2 is '备用2'
/

comment on column GP_BM_JOB_SCHEDULE.RSV3 is '备用3'
/

comment on column GP_BM_JOB_SCHEDULE.RSV4 is '备用4'
/

comment on column GP_BM_JOB_SCHEDULE.RSV5 is '备用5'
/

create table GP_BM_LOGIN_LOG
(
    DATA_ID        VARCHAR2(64) not null
        primary key,
    DATA_DATE      CHAR(8),
    CORP_ID        VARCHAR2(14),
    ORG_ID         VARCHAR2(14),
    GROUP_ID       VARCHAR2(14),
    NEXT_ACTION    CHAR(2),
    DATA_STATUS    CHAR(2),
    DATA_FLAG      CHAR,
    DATA_SOURCE    CHAR,
    CHECK_FLAG     CHAR,
    CHECK_DESC     VARCHAR2(512),
    CHECK_ERR_TYPE CHAR,
    DATA_VERSION   NUMBER(8),
    DATA_REJ_DESC  VARCHAR2(128),
    DATA_DEL_DESC  VARCHAR2(128),
    DATA_CRT_USER  VARCHAR2(20),
    DATA_CRT_DATE  CHAR(8),
    DATA_CRT_TIME  CHAR(14),
    DATA_CHG_USER  VARCHAR2(20),
    DATA_CHG_DATE  CHAR(8),
    DATA_CHG_TIME  CHAR(14),
    DATA_APV_USER  VARCHAR2(20),
    DATA_APV_DATE  CHAR(8),
    DATA_APV_TIME  CHAR(14),
    RSV1           VARCHAR2(180),
    RSV2           VARCHAR2(180),
    RSV3           VARCHAR2(180),
    RSV4           VARCHAR2(180),
    RSV5           VARCHAR2(180),
    REMARKS        VARCHAR2(180),
    TLR_NO         VARCHAR2(20),
    BR_NO          VARCHAR2(20),
    LOGIN_SUC_TM   CHAR(14),
    LOGIN_OUT_TM   CHAR(14),
    LOGIN_FAIL_TM  CHAR(14),
    LOGIN_ADDR     VARCHAR2(20),
    LOGIN_REMARK   VARCHAR2(256),
    SESSION_ID     VARCHAR2(32),
    CRT_TM         CHAR(14)
)
/

comment on table GP_BM_LOGIN_LOG is '操作员登陆日志表'
/

comment on column GP_BM_LOGIN_LOG.DATA_ID is '数据ID'
/

comment on column GP_BM_LOGIN_LOG.DATA_DATE is '数据日期'
/

comment on column GP_BM_LOGIN_LOG.CORP_ID is '法人机构号'
/

comment on column GP_BM_LOGIN_LOG.ORG_ID is '机构号'
/

comment on column GP_BM_LOGIN_LOG.GROUP_ID is '部门编号'
/

comment on column GP_BM_LOGIN_LOG.NEXT_ACTION is '下一动作'
/

comment on column GP_BM_LOGIN_LOG.DATA_STATUS is '数据状态'
/

comment on column GP_BM_LOGIN_LOG.DATA_FLAG is '数据是否已删除'
/

comment on column GP_BM_LOGIN_LOG.DATA_SOURCE is '数据来源'
/

comment on column GP_BM_LOGIN_LOG.CHECK_FLAG is '校验标识'
/

comment on column GP_BM_LOGIN_LOG.CHECK_DESC is '校验结果'
/

comment on column GP_BM_LOGIN_LOG.CHECK_ERR_TYPE is '校验失败类型'
/

comment on column GP_BM_LOGIN_LOG.DATA_VERSION is '数据版本'
/

comment on column GP_BM_LOGIN_LOG.DATA_REJ_DESC is '数据审核拒绝原因'
/

comment on column GP_BM_LOGIN_LOG.DATA_DEL_DESC is '数据删除描述'
/

comment on column GP_BM_LOGIN_LOG.DATA_CRT_USER is '数据创建/导入用户'
/

comment on column GP_BM_LOGIN_LOG.DATA_CRT_DATE is '数据创建/导入日期'
/

comment on column GP_BM_LOGIN_LOG.DATA_CRT_TIME is '数据创建/导入时间'
/

comment on column GP_BM_LOGIN_LOG.DATA_CHG_USER is '数据修改/删除用户'
/

comment on column GP_BM_LOGIN_LOG.DATA_CHG_DATE is '数据修改/删除日期'
/

comment on column GP_BM_LOGIN_LOG.DATA_CHG_TIME is '数据修改/删除时间'
/

comment on column GP_BM_LOGIN_LOG.DATA_APV_USER is '数据审核/拒绝用户'
/

comment on column GP_BM_LOGIN_LOG.DATA_APV_DATE is '数据审核/拒绝日期'
/

comment on column GP_BM_LOGIN_LOG.DATA_APV_TIME is '数据审核/拒绝时间'
/

comment on column GP_BM_LOGIN_LOG.RSV1 is '备用1'
/

comment on column GP_BM_LOGIN_LOG.RSV2 is '备用2'
/

comment on column GP_BM_LOGIN_LOG.RSV3 is '备用3'
/

comment on column GP_BM_LOGIN_LOG.RSV4 is '备用4'
/

comment on column GP_BM_LOGIN_LOG.RSV5 is '备用5'
/

comment on column GP_BM_LOGIN_LOG.REMARKS is '备注'
/

comment on column GP_BM_LOGIN_LOG.TLR_NO is '操作员编号'
/

comment on column GP_BM_LOGIN_LOG.BR_NO is '部门编号'
/

comment on column GP_BM_LOGIN_LOG.LOGIN_SUC_TM is '登录时间'
/

comment on column GP_BM_LOGIN_LOG.LOGIN_OUT_TM is '退出时间'
/

comment on column GP_BM_LOGIN_LOG.LOGIN_FAIL_TM is '登录失败时间'
/

comment on column GP_BM_LOGIN_LOG.LOGIN_ADDR is 'IP'
/

comment on column GP_BM_LOGIN_LOG.LOGIN_REMARK is '登录信息'
/

comment on column GP_BM_LOGIN_LOG.CRT_TM is '创建时间'
/

create table GP_BM_MON_CONFIG
(
    MONITOR_NAME VARCHAR2(512) not null,
    MONITOR_BEAN VARCHAR2(512),
    TOPIC        VARCHAR2(32),
    STATUS       VARCHAR2(1)
)
/

comment on table GP_BM_MON_CONFIG is '监控配置表'
/

create table GP_BM_MSG_SUB_GROUP
(
    DATA_ID        VARCHAR2(64) not null
        primary key,
    DATA_DATE      CHAR(8),
    CORP_ID        VARCHAR2(14),
    ORG_ID         VARCHAR2(14),
    GROUP_ID       VARCHAR2(14),
    INQ_ORG_ID     CHAR(24),
    INQ_GROUP_ID   CHAR(24),
    SUB_GROUP_ID   VARCHAR2(32),
    SUB_GROUP_NAME VARCHAR2(256),
    SUB_TYPE       VARCHAR2(2),
    TOPIC          VARCHAR2(32),
    CHL_ID         VARCHAR2(32),
    REMARKS        VARCHAR2(512),
    CHECK_FLAG     CHAR,
    CHECK_DESC     VARCHAR2(512),
    CHECK_ERR_TYPE CHAR,
    NEXT_ACTION    CHAR(2),
    DATA_STATUS    CHAR(2),
    DATA_FLAG      CHAR,
    DATA_SOURCE    CHAR,
    DATA_VERSION   NUMBER(8),
    DATA_REJ_DESC  VARCHAR2(128),
    DATA_DEL_DESC  VARCHAR2(128),
    DATA_CRT_USER  VARCHAR2(20),
    DATA_CRT_DATE  CHAR(8),
    DATA_CRT_TIME  CHAR(14),
    DATA_CHG_USER  VARCHAR2(20),
    DATA_CHG_DATE  CHAR(8),
    DATA_CHG_TIME  CHAR(14),
    DATA_APV_USER  VARCHAR2(20),
    DATA_APV_DATE  CHAR(8),
    DATA_APV_TIME  CHAR(14),
    RSV1           VARCHAR2(180),
    RSV2           VARCHAR2(180),
    RSV3           VARCHAR2(180),
    RSV4           VARCHAR2(180),
    RSV5           VARCHAR2(180)
)
/

comment on column GP_BM_MSG_SUB_GROUP.DATA_ID is '数据ID'
/

comment on column GP_BM_MSG_SUB_GROUP.DATA_DATE is '数据日期'
/

comment on column GP_BM_MSG_SUB_GROUP.CORP_ID is '法人机构号'
/

comment on column GP_BM_MSG_SUB_GROUP.ORG_ID is '机构号'
/

comment on column GP_BM_MSG_SUB_GROUP.GROUP_ID is '部门编号'
/

comment on column GP_BM_MSG_SUB_GROUP.INQ_ORG_ID is '查询机构号'
/

comment on column GP_BM_MSG_SUB_GROUP.INQ_GROUP_ID is '查询组号'
/

comment on column GP_BM_MSG_SUB_GROUP.SUB_GROUP_ID is '订阅用户/邮件组ID'
/

comment on column GP_BM_MSG_SUB_GROUP.SUB_GROUP_NAME is '订阅用户/邮件组姓名'
/

comment on column GP_BM_MSG_SUB_GROUP.SUB_TYPE is '订阅组类型'
/

comment on column GP_BM_MSG_SUB_GROUP.TOPIC is '消息主题'
/

comment on column GP_BM_MSG_SUB_GROUP.CHL_ID is '渠道'
/

comment on column GP_BM_MSG_SUB_GROUP.REMARKS is '备注'
/

comment on column GP_BM_MSG_SUB_GROUP.CHECK_FLAG is '校验标识'
/

comment on column GP_BM_MSG_SUB_GROUP.CHECK_DESC is '校验结果'
/

comment on column GP_BM_MSG_SUB_GROUP.CHECK_ERR_TYPE is '校验失败类型'
/

comment on column GP_BM_MSG_SUB_GROUP.NEXT_ACTION is '下一动作'
/

comment on column GP_BM_MSG_SUB_GROUP.DATA_STATUS is '数据状态'
/

comment on column GP_BM_MSG_SUB_GROUP.DATA_FLAG is '数据是否已删除'
/

comment on column GP_BM_MSG_SUB_GROUP.DATA_SOURCE is '数据来源'
/

comment on column GP_BM_MSG_SUB_GROUP.DATA_VERSION is '数据版本'
/

comment on column GP_BM_MSG_SUB_GROUP.DATA_REJ_DESC is '数据审核拒绝原因'
/

comment on column GP_BM_MSG_SUB_GROUP.DATA_DEL_DESC is '数据删除描述'
/

comment on column GP_BM_MSG_SUB_GROUP.DATA_CRT_USER is '数据创建/导入用户'
/

comment on column GP_BM_MSG_SUB_GROUP.DATA_CRT_DATE is '数据创建/导入日期'
/

comment on column GP_BM_MSG_SUB_GROUP.DATA_CRT_TIME is '数据创建/导入时间'
/

comment on column GP_BM_MSG_SUB_GROUP.DATA_CHG_USER is '数据修改/删除用户'
/

comment on column GP_BM_MSG_SUB_GROUP.DATA_CHG_DATE is '数据修改/删除日期'
/

comment on column GP_BM_MSG_SUB_GROUP.DATA_CHG_TIME is '数据修改/删除时间'
/

comment on column GP_BM_MSG_SUB_GROUP.DATA_APV_USER is '数据审核/拒绝用户'
/

comment on column GP_BM_MSG_SUB_GROUP.DATA_APV_DATE is '数据审核/拒绝日期'
/

comment on column GP_BM_MSG_SUB_GROUP.DATA_APV_TIME is '数据审核/拒绝时间'
/

comment on column GP_BM_MSG_SUB_GROUP.RSV1 is '备用1'
/

comment on column GP_BM_MSG_SUB_GROUP.RSV2 is '备用2'
/

comment on column GP_BM_MSG_SUB_GROUP.RSV3 is '备用3'
/

comment on column GP_BM_MSG_SUB_GROUP.RSV4 is '备用4'
/

comment on column GP_BM_MSG_SUB_GROUP.RSV5 is '备用5'
/

create table GP_BM_MSG_SUB_GROUP_DTL
(
    DATA_ID        VARCHAR2(64) not null
        primary key,
    DATA_DATE      CHAR(8),
    CORP_ID        VARCHAR2(14),
    ORG_ID         VARCHAR2(14),
    GROUP_ID       VARCHAR2(14),
    INQ_ORG_ID     CHAR(24),
    INQ_GROUP_ID   CHAR(24),
    SUB_GROUP_ID   VARCHAR2(32),
    TLRNO          VARCHAR2(20),
    EMAIL_ADDRESS  VARCHAR2(256),
    REMARKS        VARCHAR2(512),
    CHECK_FLAG     CHAR,
    CHECK_DESC     VARCHAR2(512),
    CHECK_ERR_TYPE CHAR,
    NEXT_ACTION    CHAR(2),
    DATA_STATUS    CHAR(2),
    DATA_FLAG      CHAR,
    DATA_SOURCE    CHAR,
    DATA_VERSION   NUMBER(8),
    DATA_REJ_DESC  VARCHAR2(128),
    DATA_DEL_DESC  VARCHAR2(128),
    DATA_CRT_USER  VARCHAR2(20),
    DATA_CRT_DATE  CHAR(8),
    DATA_CRT_TIME  CHAR(14),
    DATA_CHG_USER  VARCHAR2(20),
    DATA_CHG_DATE  CHAR(8),
    DATA_CHG_TIME  CHAR(14),
    DATA_APV_USER  VARCHAR2(20),
    DATA_APV_DATE  CHAR(8),
    DATA_APV_TIME  CHAR(14),
    RSV1           VARCHAR2(180),
    RSV2           VARCHAR2(180),
    RSV3           VARCHAR2(180),
    RSV4           VARCHAR2(180),
    RSV5           VARCHAR2(180)
)
/

comment on column GP_BM_MSG_SUB_GROUP_DTL.DATA_ID is '数据ID'
/

comment on column GP_BM_MSG_SUB_GROUP_DTL.DATA_DATE is '数据日期'
/

comment on column GP_BM_MSG_SUB_GROUP_DTL.CORP_ID is '法人机构号'
/

comment on column GP_BM_MSG_SUB_GROUP_DTL.ORG_ID is '机构号'
/

comment on column GP_BM_MSG_SUB_GROUP_DTL.GROUP_ID is '部门编号'
/

comment on column GP_BM_MSG_SUB_GROUP_DTL.INQ_ORG_ID is '查询机构号'
/

comment on column GP_BM_MSG_SUB_GROUP_DTL.INQ_GROUP_ID is '查询组号'
/

comment on column GP_BM_MSG_SUB_GROUP_DTL.SUB_GROUP_ID is '订阅用户/邮件组ID'
/

comment on column GP_BM_MSG_SUB_GROUP_DTL.TLRNO is '用户名'
/

comment on column GP_BM_MSG_SUB_GROUP_DTL.EMAIL_ADDRESS is '邮箱地址'
/

comment on column GP_BM_MSG_SUB_GROUP_DTL.REMARKS is '备注'
/

comment on column GP_BM_MSG_SUB_GROUP_DTL.CHECK_FLAG is '校验标识'
/

comment on column GP_BM_MSG_SUB_GROUP_DTL.CHECK_DESC is '校验结果'
/

comment on column GP_BM_MSG_SUB_GROUP_DTL.CHECK_ERR_TYPE is '校验失败类型'
/

comment on column GP_BM_MSG_SUB_GROUP_DTL.NEXT_ACTION is '下一动作'
/

comment on column GP_BM_MSG_SUB_GROUP_DTL.DATA_STATUS is '数据状态'
/

comment on column GP_BM_MSG_SUB_GROUP_DTL.DATA_FLAG is '数据是否已删除'
/

comment on column GP_BM_MSG_SUB_GROUP_DTL.DATA_SOURCE is '数据来源'
/

comment on column GP_BM_MSG_SUB_GROUP_DTL.DATA_VERSION is '数据版本'
/

comment on column GP_BM_MSG_SUB_GROUP_DTL.DATA_REJ_DESC is '数据审核拒绝原因'
/

comment on column GP_BM_MSG_SUB_GROUP_DTL.DATA_DEL_DESC is '数据删除描述'
/

comment on column GP_BM_MSG_SUB_GROUP_DTL.DATA_CRT_USER is '数据创建/导入用户'
/

comment on column GP_BM_MSG_SUB_GROUP_DTL.DATA_CRT_DATE is '数据创建/导入日期'
/

comment on column GP_BM_MSG_SUB_GROUP_DTL.DATA_CRT_TIME is '数据创建/导入时间'
/

comment on column GP_BM_MSG_SUB_GROUP_DTL.DATA_CHG_USER is '数据修改/删除用户'
/

comment on column GP_BM_MSG_SUB_GROUP_DTL.DATA_CHG_DATE is '数据修改/删除日期'
/

comment on column GP_BM_MSG_SUB_GROUP_DTL.DATA_CHG_TIME is '数据修改/删除时间'
/

comment on column GP_BM_MSG_SUB_GROUP_DTL.DATA_APV_USER is '数据审核/拒绝用户'
/

comment on column GP_BM_MSG_SUB_GROUP_DTL.DATA_APV_DATE is '数据审核/拒绝日期'
/

comment on column GP_BM_MSG_SUB_GROUP_DTL.DATA_APV_TIME is '数据审核/拒绝时间'
/

comment on column GP_BM_MSG_SUB_GROUP_DTL.RSV1 is '备用1'
/

comment on column GP_BM_MSG_SUB_GROUP_DTL.RSV2 is '备用2'
/

comment on column GP_BM_MSG_SUB_GROUP_DTL.RSV3 is '备用3'
/

comment on column GP_BM_MSG_SUB_GROUP_DTL.RSV4 is '备用4'
/

comment on column GP_BM_MSG_SUB_GROUP_DTL.RSV5 is '备用5'
/

create table GP_BM_NEXT_ACTION
(
    DATA_ID          VARCHAR2(64) not null
        primary key,
    CORP_ID          VARCHAR2(14) not null,
    CURR_DATA_STATUS CHAR(2)      not null,
    ACTION_ID        VARCHAR2(64) not null,
    CONDITION_ID     VARCHAR2(64) not null,
    FLOW_ID          VARCHAR2(64),
    DATA_STATUS      CHAR(2),
    NEXT_ACTION      CHAR(2),
    RSV1             VARCHAR2(180),
    RSV2             VARCHAR2(180),
    RSV3             VARCHAR2(180),
    RSV4             VARCHAR2(180),
    RSV5             VARCHAR2(180),
    NEXT_ORG_ID      VARCHAR2(14),
    NEXT_OPER        VARCHAR2(60),
    IS_END           CHAR,
    SYS_ID           VARCHAR2(32),
    DATA_BAK_FLAG    VARCHAR2(32)
)
/

comment on table GP_BM_NEXT_ACTION is '数据流表'
/

comment on column GP_BM_NEXT_ACTION.DATA_ID is '数据ID'
/

comment on column GP_BM_NEXT_ACTION.CORP_ID is '法人机构号'
/

comment on column GP_BM_NEXT_ACTION.DATA_STATUS is '数据状态'
/

comment on column GP_BM_NEXT_ACTION.NEXT_ACTION is '下一动作'
/

comment on column GP_BM_NEXT_ACTION.RSV1 is '备用1'
/

comment on column GP_BM_NEXT_ACTION.RSV2 is '备用2'
/

comment on column GP_BM_NEXT_ACTION.RSV3 is '备用3'
/

comment on column GP_BM_NEXT_ACTION.RSV4 is '备用4'
/

comment on column GP_BM_NEXT_ACTION.RSV5 is '备用5'
/

create table GP_BM_NOTICE
(
    DATA_ID        VARCHAR2(64) not null,
    DATA_DATE      CHAR(8),
    CORP_ID        VARCHAR2(14),
    ORG_ID         VARCHAR2(14),
    GROUP_ID       VARCHAR2(14),
    NEXT_ACTION    CHAR(2),
    DATA_STATUS    CHAR(2),
    DATA_FLAG      CHAR,
    DATA_SOURCE    CHAR,
    CHECK_FLAG     CHAR,
    CHECK_DESC     VARCHAR2(512),
    CHECK_ERR_TYPE CHAR,
    DATA_VERSION   NUMBER(8),
    INQ_ORG_ID     CHAR(24),
    INQ_GROUP_ID   CHAR(24),
    TOPIC          VARCHAR2(32),
    TPL_ID         VARCHAR2(32),
    REMARKS        VARCHAR2(180),
    DATA_REJ_DESC  VARCHAR2(128),
    DATA_DEL_DESC  VARCHAR2(128),
    DATA_CRT_USER  VARCHAR2(20),
    DATA_CRT_DATE  CHAR(8),
    DATA_CRT_TIME  CHAR(14),
    DATA_CHG_USER  VARCHAR2(20),
    DATA_CHG_DATE  CHAR(8),
    DATA_CHG_TIME  CHAR(14),
    DATA_APV_USER  VARCHAR2(20),
    DATA_APV_DATE  CHAR(8),
    DATA_APV_TIME  CHAR(14),
    RSV1           VARCHAR2(180),
    RSV2           VARCHAR2(180),
    RSV3           VARCHAR2(180),
    RSV4           VARCHAR2(180),
    RSV5           VARCHAR2(180)
)
/

comment on table GP_BM_NOTICE is '消息通知表'
/

comment on column GP_BM_NOTICE.DATA_ID is '数据ID'
/

comment on column GP_BM_NOTICE.DATA_DATE is '数据日期'
/

comment on column GP_BM_NOTICE.CORP_ID is '法人机构号'
/

comment on column GP_BM_NOTICE.ORG_ID is '机构号'
/

comment on column GP_BM_NOTICE.GROUP_ID is '部门编号'
/

comment on column GP_BM_NOTICE.NEXT_ACTION is '下一动作'
/

comment on column GP_BM_NOTICE.DATA_STATUS is '数据状态'
/

comment on column GP_BM_NOTICE.DATA_FLAG is '数据是否已删除'
/

comment on column GP_BM_NOTICE.DATA_SOURCE is '数据来源'
/

comment on column GP_BM_NOTICE.CHECK_FLAG is '校验标识'
/

comment on column GP_BM_NOTICE.CHECK_DESC is '校验结果'
/

comment on column GP_BM_NOTICE.CHECK_ERR_TYPE is '校验失败类型'
/

comment on column GP_BM_NOTICE.DATA_VERSION is '数据版本'
/

comment on column GP_BM_NOTICE.INQ_ORG_ID is '查询机构号'
/

comment on column GP_BM_NOTICE.INQ_GROUP_ID is '查询组号'
/

comment on column GP_BM_NOTICE.DATA_REJ_DESC is '数据审核拒绝原因'
/

comment on column GP_BM_NOTICE.DATA_DEL_DESC is '数据删除描述'
/

comment on column GP_BM_NOTICE.DATA_CRT_USER is '数据创建/导入用户'
/

comment on column GP_BM_NOTICE.DATA_CRT_DATE is '数据创建/导入日期'
/

comment on column GP_BM_NOTICE.DATA_CRT_TIME is '数据创建/导入时间'
/

comment on column GP_BM_NOTICE.DATA_CHG_USER is '数据修改/删除用户'
/

comment on column GP_BM_NOTICE.DATA_CHG_DATE is '数据修改/删除日期'
/

comment on column GP_BM_NOTICE.DATA_CHG_TIME is '数据修改/删除时间'
/

comment on column GP_BM_NOTICE.DATA_APV_USER is '数据审核/拒绝用户'
/

comment on column GP_BM_NOTICE.DATA_APV_DATE is '数据审核/拒绝日期'
/

comment on column GP_BM_NOTICE.DATA_APV_TIME is '数据审核/拒绝时间'
/

comment on column GP_BM_NOTICE.RSV1 is '备用1'
/

comment on column GP_BM_NOTICE.RSV2 is '备用2'
/

comment on column GP_BM_NOTICE.RSV3 is '备用3'
/

comment on column GP_BM_NOTICE.RSV4 is '备用4'
/

comment on column GP_BM_NOTICE.RSV5 is '备用5'
/

create table GP_BM_NOTICE_PUBLISH
(
    DATA_ID        VARCHAR2(64) not null,
    DATA_DATE      CHAR(8),
    CORP_ID        VARCHAR2(14),
    ORG_ID         VARCHAR2(14),
    GROUP_ID       VARCHAR2(14),
    MODULE         CHAR(30),
    MENU           CHAR(30),
    RANK           CHAR,
    TYPE           CHAR,
    PUBLISH_DATE   CHAR(8),
    EFFECTIVE_DATE CHAR(8),
    NOTICE_CONTENT VARCHAR2(4000),
    CHECK_FLAG     CHAR,
    CHECK_DESC     VARCHAR2(512),
    CHECK_ERR_TYPE CHAR,
    NEXT_ACTION    CHAR(2),
    DATA_STATUS    CHAR(2),
    DATA_FLAG      CHAR,
    DATA_SOURCE    CHAR,
    DATA_VERSION   NUMBER(8),
    DATA_REJ_DESC  VARCHAR2(128),
    DATA_DEL_DESC  VARCHAR2(128),
    DATA_CRT_USER  VARCHAR2(20),
    DATA_CRT_DATE  CHAR(8),
    DATA_CRT_TIME  CHAR(14),
    DATA_CHG_USER  VARCHAR2(20),
    DATA_CHG_DATE  CHAR(8),
    DATA_CHG_TIME  CHAR(14),
    DATA_APV_USER  VARCHAR2(20),
    DATA_APV_DATE  CHAR(8),
    DATA_APV_TIME  CHAR(14),
    RSV1           VARCHAR2(180),
    RSV2           VARCHAR2(180),
    RSV3           VARCHAR2(180),
    RSV4           VARCHAR2(180),
    RSV5           VARCHAR2(180),
    SCOPE          CHAR,
    TITLE          VARCHAR2(200)
)
/

comment on table GP_BM_NOTICE_PUBLISH is '公告表'
/

comment on column GP_BM_NOTICE_PUBLISH.DATA_ID is '数据ID'
/

comment on column GP_BM_NOTICE_PUBLISH.DATA_DATE is '数据日期'
/

comment on column GP_BM_NOTICE_PUBLISH.CORP_ID is '法人机构号'
/

comment on column GP_BM_NOTICE_PUBLISH.ORG_ID is '机构号'
/

comment on column GP_BM_NOTICE_PUBLISH.GROUP_ID is '部门编号'
/

comment on column GP_BM_NOTICE_PUBLISH.CHECK_FLAG is '校验标识'
/

comment on column GP_BM_NOTICE_PUBLISH.CHECK_DESC is '校验结果'
/

comment on column GP_BM_NOTICE_PUBLISH.CHECK_ERR_TYPE is '校验失败类型'
/

comment on column GP_BM_NOTICE_PUBLISH.NEXT_ACTION is '下一动作'
/

comment on column GP_BM_NOTICE_PUBLISH.DATA_STATUS is '数据状态'
/

comment on column GP_BM_NOTICE_PUBLISH.DATA_FLAG is '数据是否已删除'
/

comment on column GP_BM_NOTICE_PUBLISH.DATA_SOURCE is '数据来源'
/

comment on column GP_BM_NOTICE_PUBLISH.DATA_VERSION is '数据版本'
/

comment on column GP_BM_NOTICE_PUBLISH.DATA_REJ_DESC is '数据审核拒绝原因'
/

comment on column GP_BM_NOTICE_PUBLISH.DATA_DEL_DESC is '数据删除描述'
/

comment on column GP_BM_NOTICE_PUBLISH.DATA_CRT_USER is '数据创建/导入用户'
/

comment on column GP_BM_NOTICE_PUBLISH.DATA_CRT_DATE is '数据创建/导入日期'
/

comment on column GP_BM_NOTICE_PUBLISH.DATA_CRT_TIME is '数据创建/导入时间'
/

comment on column GP_BM_NOTICE_PUBLISH.DATA_CHG_USER is '数据修改/删除用户'
/

comment on column GP_BM_NOTICE_PUBLISH.DATA_CHG_DATE is '数据修改/删除日期'
/

comment on column GP_BM_NOTICE_PUBLISH.DATA_CHG_TIME is '数据修改/删除时间'
/

comment on column GP_BM_NOTICE_PUBLISH.DATA_APV_USER is '数据审核/拒绝用户'
/

comment on column GP_BM_NOTICE_PUBLISH.DATA_APV_DATE is '数据审核/拒绝日期'
/

comment on column GP_BM_NOTICE_PUBLISH.DATA_APV_TIME is '数据审核/拒绝时间'
/

comment on column GP_BM_NOTICE_PUBLISH.RSV1 is '备用1'
/

comment on column GP_BM_NOTICE_PUBLISH.RSV2 is '备用2'
/

comment on column GP_BM_NOTICE_PUBLISH.RSV3 is '备用3'
/

comment on column GP_BM_NOTICE_PUBLISH.RSV4 is '备用4'
/

comment on column GP_BM_NOTICE_PUBLISH.RSV5 is '备用5'
/

create table GP_BM_NOTICE_PUBLISH_SCOPE
(
    DATA_ID        VARCHAR2(64) not null,
    DATA_DATE      CHAR(8),
    CORP_ID        VARCHAR2(14),
    ORG_ID         VARCHAR2(14),
    GROUP_ID       VARCHAR2(14),
    NOTICE_ID      CHAR(32),
    DEPART_ID      VARCHAR2(32),
    CHECK_FLAG     CHAR,
    CHECK_DESC     VARCHAR2(512),
    CHECK_ERR_TYPE CHAR,
    NEXT_ACTION    CHAR(2),
    DATA_STATUS    CHAR(2),
    DATA_FLAG      CHAR,
    DATA_SOURCE    CHAR,
    DATA_VERSION   NUMBER(8),
    DATA_REJ_DESC  VARCHAR2(128),
    DATA_DEL_DESC  VARCHAR2(128),
    DATA_CRT_USER  VARCHAR2(20),
    DATA_CRT_DATE  CHAR(8),
    DATA_CRT_TIME  CHAR(14),
    DATA_CHG_USER  VARCHAR2(20),
    DATA_CHG_DATE  CHAR(8),
    DATA_CHG_TIME  CHAR(14),
    DATA_APV_USER  VARCHAR2(20),
    DATA_APV_DATE  CHAR(8),
    DATA_APV_TIME  CHAR(14),
    RSV1           VARCHAR2(180),
    RSV2           VARCHAR2(180),
    RSV3           VARCHAR2(180),
    RSV4           VARCHAR2(180),
    RSV5           VARCHAR2(180)
)
/

comment on table GP_BM_NOTICE_PUBLISH_SCOPE is '公告关联机构表'
/

comment on column GP_BM_NOTICE_PUBLISH_SCOPE.DATA_ID is '数据ID'
/

comment on column GP_BM_NOTICE_PUBLISH_SCOPE.DATA_DATE is '数据日期'
/

comment on column GP_BM_NOTICE_PUBLISH_SCOPE.CORP_ID is '法人机构号'
/

comment on column GP_BM_NOTICE_PUBLISH_SCOPE.ORG_ID is '机构号'
/

comment on column GP_BM_NOTICE_PUBLISH_SCOPE.GROUP_ID is '部门编号'
/

comment on column GP_BM_NOTICE_PUBLISH_SCOPE.CHECK_FLAG is '校验标识'
/

comment on column GP_BM_NOTICE_PUBLISH_SCOPE.CHECK_DESC is '校验结果'
/

comment on column GP_BM_NOTICE_PUBLISH_SCOPE.CHECK_ERR_TYPE is '校验失败类型'
/

comment on column GP_BM_NOTICE_PUBLISH_SCOPE.NEXT_ACTION is '下一动作'
/

comment on column GP_BM_NOTICE_PUBLISH_SCOPE.DATA_STATUS is '数据状态'
/

comment on column GP_BM_NOTICE_PUBLISH_SCOPE.DATA_FLAG is '数据是否已删除'
/

comment on column GP_BM_NOTICE_PUBLISH_SCOPE.DATA_SOURCE is '数据来源'
/

comment on column GP_BM_NOTICE_PUBLISH_SCOPE.DATA_VERSION is '数据版本'
/

comment on column GP_BM_NOTICE_PUBLISH_SCOPE.DATA_REJ_DESC is '数据审核拒绝原因'
/

comment on column GP_BM_NOTICE_PUBLISH_SCOPE.DATA_DEL_DESC is '数据删除描述'
/

comment on column GP_BM_NOTICE_PUBLISH_SCOPE.DATA_CRT_USER is '数据创建/导入用户'
/

comment on column GP_BM_NOTICE_PUBLISH_SCOPE.DATA_CRT_DATE is '数据创建/导入日期'
/

comment on column GP_BM_NOTICE_PUBLISH_SCOPE.DATA_CRT_TIME is '数据创建/导入时间'
/

comment on column GP_BM_NOTICE_PUBLISH_SCOPE.DATA_CHG_USER is '数据修改/删除用户'
/

comment on column GP_BM_NOTICE_PUBLISH_SCOPE.DATA_CHG_DATE is '数据修改/删除日期'
/

comment on column GP_BM_NOTICE_PUBLISH_SCOPE.DATA_CHG_TIME is '数据修改/删除时间'
/

comment on column GP_BM_NOTICE_PUBLISH_SCOPE.DATA_APV_USER is '数据审核/拒绝用户'
/

comment on column GP_BM_NOTICE_PUBLISH_SCOPE.DATA_APV_DATE is '数据审核/拒绝日期'
/

comment on column GP_BM_NOTICE_PUBLISH_SCOPE.DATA_APV_TIME is '数据审核/拒绝时间'
/

comment on column GP_BM_NOTICE_PUBLISH_SCOPE.RSV1 is '备用1'
/

comment on column GP_BM_NOTICE_PUBLISH_SCOPE.RSV2 is '备用2'
/

comment on column GP_BM_NOTICE_PUBLISH_SCOPE.RSV3 is '备用3'
/

comment on column GP_BM_NOTICE_PUBLISH_SCOPE.RSV4 is '备用4'
/

comment on column GP_BM_NOTICE_PUBLISH_SCOPE.RSV5 is '备用5'
/

create table GP_BM_PAGE_DETAIL
(
    DATA_ID        VARCHAR2(64) not null,
    DATA_DATE      CHAR(8),
    CORP_ID        VARCHAR2(14),
    ORG_ID         VARCHAR2(14),
    GROUP_ID       VARCHAR2(14),
    NEXT_ACTION    CHAR(2),
    DATA_STATUS    CHAR(2),
    DATA_FLAG      CHAR,
    DATA_SOURCE    CHAR,
    CHECK_FLAG     CHAR,
    CHECK_DESC     VARCHAR2(512),
    CHECK_ERR_TYPE CHAR,
    DATA_VERSION   NUMBER(8),
    DATA_REJ_DESC  VARCHAR2(128),
    DATA_DEL_DESC  VARCHAR2(128),
    DATA_CRT_USER  VARCHAR2(20),
    DATA_CRT_DATE  CHAR(8),
    DATA_CRT_TIME  CHAR(14),
    DATA_CHG_USER  VARCHAR2(20),
    DATA_CHG_DATE  CHAR(8),
    DATA_CHG_TIME  CHAR(14),
    DATA_APV_USER  VARCHAR2(20),
    DATA_APV_DATE  CHAR(8),
    DATA_APV_TIME  CHAR(14),
    RSV1           VARCHAR2(180),
    RSV2           VARCHAR2(180),
    RSV3           VARCHAR2(180),
    RSV4           VARCHAR2(180),
    RSV5           VARCHAR2(180),
    REMARK         VARCHAR2(512),
    NAME           VARCHAR2(256),
    DESC_INFO      VARCHAR2(512),
    PAGFE_URL      VARCHAR2(256),
    PARAM_LIST     VARCHAR2(512),
    PARENT         CHAR(32),
    UPID           CHAR(32),
    SEQID          NUMBER,
    OPT_DETAILS    VARCHAR2(512),
    STATUS         CHAR,
    LAST_UPD_TLR   VARCHAR2(20),
    LAST_UPD_TIME  CHAR(17)
)
/

comment on table GP_BM_PAGE_DETAIL is '页面组合明细表'
/

comment on column GP_BM_PAGE_DETAIL.DATA_ID is '数据ID'
/

comment on column GP_BM_PAGE_DETAIL.DATA_DATE is '数据日期'
/

comment on column GP_BM_PAGE_DETAIL.CORP_ID is '法人机构号'
/

comment on column GP_BM_PAGE_DETAIL.ORG_ID is '机构号'
/

comment on column GP_BM_PAGE_DETAIL.GROUP_ID is '部门编号'
/

comment on column GP_BM_PAGE_DETAIL.NEXT_ACTION is '下一动作'
/

comment on column GP_BM_PAGE_DETAIL.DATA_STATUS is '数据状态'
/

comment on column GP_BM_PAGE_DETAIL.DATA_FLAG is '数据是否已删除'
/

comment on column GP_BM_PAGE_DETAIL.DATA_SOURCE is '数据来源'
/

comment on column GP_BM_PAGE_DETAIL.CHECK_FLAG is '校验标识'
/

comment on column GP_BM_PAGE_DETAIL.CHECK_DESC is '校验结果'
/

comment on column GP_BM_PAGE_DETAIL.CHECK_ERR_TYPE is '校验失败类型'
/

comment on column GP_BM_PAGE_DETAIL.DATA_VERSION is '数据版本'
/

comment on column GP_BM_PAGE_DETAIL.DATA_REJ_DESC is '数据审核拒绝原因'
/

comment on column GP_BM_PAGE_DETAIL.DATA_DEL_DESC is '数据删除描述'
/

comment on column GP_BM_PAGE_DETAIL.DATA_CRT_USER is '数据创建/导入用户'
/

comment on column GP_BM_PAGE_DETAIL.DATA_CRT_DATE is '数据创建/导入日期'
/

comment on column GP_BM_PAGE_DETAIL.DATA_CRT_TIME is '数据创建/导入时间'
/

comment on column GP_BM_PAGE_DETAIL.DATA_CHG_USER is '数据修改/删除用户'
/

comment on column GP_BM_PAGE_DETAIL.DATA_CHG_DATE is '数据修改/删除日期'
/

comment on column GP_BM_PAGE_DETAIL.DATA_CHG_TIME is '数据修改/删除时间'
/

comment on column GP_BM_PAGE_DETAIL.DATA_APV_USER is '数据审核/拒绝用户'
/

comment on column GP_BM_PAGE_DETAIL.DATA_APV_DATE is '数据审核/拒绝日期'
/

comment on column GP_BM_PAGE_DETAIL.DATA_APV_TIME is '数据审核/拒绝时间'
/

comment on column GP_BM_PAGE_DETAIL.RSV1 is '备用1'
/

comment on column GP_BM_PAGE_DETAIL.RSV2 is '备用2'
/

comment on column GP_BM_PAGE_DETAIL.RSV3 is '备用3'
/

comment on column GP_BM_PAGE_DETAIL.RSV4 is '备用4'
/

comment on column GP_BM_PAGE_DETAIL.RSV5 is '备用5'
/

comment on column GP_BM_PAGE_DETAIL.REMARK is '备注'
/

comment on column GP_BM_PAGE_DETAIL.NAME is '类型名称'
/

comment on column GP_BM_PAGE_DETAIL.DESC_INFO is '类型描述'
/

comment on column GP_BM_PAGE_DETAIL.PAGFE_URL is '关联页面url'
/

comment on column GP_BM_PAGE_DETAIL.PARAM_LIST is '页面参数'
/

comment on column GP_BM_PAGE_DETAIL.PARENT is '上级ITEM'
/

comment on column GP_BM_PAGE_DETAIL.UPID is '上级明细对象ID'
/

comment on column GP_BM_PAGE_DETAIL.SEQID is '显示顺序'
/

comment on column GP_BM_PAGE_DETAIL.OPT_DETAILS is '关联动作'
/

comment on column GP_BM_PAGE_DETAIL.STATUS is '状态'
/

comment on column GP_BM_PAGE_DETAIL.LAST_UPD_TLR is '最后更新人'
/

comment on column GP_BM_PAGE_DETAIL.LAST_UPD_TIME is '最后更新时间'
/

create table GP_BM_PAGE_ITEM
(
    DATA_ID        VARCHAR2(64) not null,
    DATA_DATE      CHAR(8),
    CORP_ID        VARCHAR2(14),
    ORG_ID         VARCHAR2(14),
    GROUP_ID       VARCHAR2(14),
    NEXT_ACTION    CHAR(2),
    DATA_STATUS    CHAR(2),
    DATA_FLAG      CHAR,
    DATA_SOURCE    CHAR,
    CHECK_FLAG     CHAR,
    CHECK_DESC     VARCHAR2(512),
    CHECK_ERR_TYPE CHAR,
    DATA_VERSION   NUMBER(8),
    DATA_REJ_DESC  VARCHAR2(128),
    DATA_DEL_DESC  VARCHAR2(128),
    DATA_CRT_USER  VARCHAR2(20),
    DATA_CRT_DATE  CHAR(8),
    DATA_CRT_TIME  CHAR(14),
    DATA_CHG_USER  VARCHAR2(20),
    DATA_CHG_DATE  CHAR(8),
    DATA_CHG_TIME  CHAR(14),
    DATA_APV_USER  VARCHAR2(20),
    DATA_APV_DATE  CHAR(8),
    DATA_APV_TIME  CHAR(14),
    RSV1           VARCHAR2(180),
    RSV2           VARCHAR2(180),
    RSV3           VARCHAR2(180),
    RSV4           VARCHAR2(180),
    RSV5           VARCHAR2(180),
    REMARK         VARCHAR2(512),
    NAME           VARCHAR2(256),
    DESC_INFO      VARCHAR2(512),
    TYPEID         CHAR(32),
    VIEWTYPE       CHAR,
    DEFAULTNO      CHAR(32),
    OP_ITEM_ID     CHAR(32),
    STATUS         CHAR,
    LAST_UPD_TLR   VARCHAR2(20),
    LAST_UPD_TIME  CHAR(17)
)
/

comment on table GP_BM_PAGE_ITEM is '页面组合表'
/

comment on column GP_BM_PAGE_ITEM.DATA_ID is '数据ID'
/

comment on column GP_BM_PAGE_ITEM.DATA_DATE is '数据日期'
/

comment on column GP_BM_PAGE_ITEM.CORP_ID is '法人机构号'
/

comment on column GP_BM_PAGE_ITEM.ORG_ID is '机构号'
/

comment on column GP_BM_PAGE_ITEM.GROUP_ID is '部门编号'
/

comment on column GP_BM_PAGE_ITEM.NEXT_ACTION is '下一动作'
/

comment on column GP_BM_PAGE_ITEM.DATA_STATUS is '数据状态'
/

comment on column GP_BM_PAGE_ITEM.DATA_FLAG is '数据是否已删除'
/

comment on column GP_BM_PAGE_ITEM.DATA_SOURCE is '数据来源'
/

comment on column GP_BM_PAGE_ITEM.CHECK_FLAG is '校验标识'
/

comment on column GP_BM_PAGE_ITEM.CHECK_DESC is '校验结果'
/

comment on column GP_BM_PAGE_ITEM.CHECK_ERR_TYPE is '校验失败类型'
/

comment on column GP_BM_PAGE_ITEM.DATA_VERSION is '数据版本'
/

comment on column GP_BM_PAGE_ITEM.DATA_REJ_DESC is '数据审核拒绝原因'
/

comment on column GP_BM_PAGE_ITEM.DATA_DEL_DESC is '数据删除描述'
/

comment on column GP_BM_PAGE_ITEM.DATA_CRT_USER is '数据创建/导入用户'
/

comment on column GP_BM_PAGE_ITEM.DATA_CRT_DATE is '数据创建/导入日期'
/

comment on column GP_BM_PAGE_ITEM.DATA_CRT_TIME is '数据创建/导入时间'
/

comment on column GP_BM_PAGE_ITEM.DATA_CHG_USER is '数据修改/删除用户'
/

comment on column GP_BM_PAGE_ITEM.DATA_CHG_DATE is '数据修改/删除日期'
/

comment on column GP_BM_PAGE_ITEM.DATA_CHG_TIME is '数据修改/删除时间'
/

comment on column GP_BM_PAGE_ITEM.DATA_APV_USER is '数据审核/拒绝用户'
/

comment on column GP_BM_PAGE_ITEM.DATA_APV_DATE is '数据审核/拒绝日期'
/

comment on column GP_BM_PAGE_ITEM.DATA_APV_TIME is '数据审核/拒绝时间'
/

comment on column GP_BM_PAGE_ITEM.RSV1 is '备用1'
/

comment on column GP_BM_PAGE_ITEM.RSV2 is '备用2'
/

comment on column GP_BM_PAGE_ITEM.RSV3 is '备用3'
/

comment on column GP_BM_PAGE_ITEM.RSV4 is '备用4'
/

comment on column GP_BM_PAGE_ITEM.RSV5 is '备用5'
/

comment on column GP_BM_PAGE_ITEM.REMARK is '备注'
/

comment on column GP_BM_PAGE_ITEM.NAME is '组合对象名称'
/

comment on column GP_BM_PAGE_ITEM.DESC_INFO is '描述信息'
/

comment on column GP_BM_PAGE_ITEM.TYPEID is '类型ID'
/

comment on column GP_BM_PAGE_ITEM.VIEWTYPE is '组装类型 0,tab;1,accordion;2,tree'
/

comment on column GP_BM_PAGE_ITEM.DEFAULTNO is '默认进入'
/

comment on column GP_BM_PAGE_ITEM.OP_ITEM_ID is '关联功能组Id'
/

comment on column GP_BM_PAGE_ITEM.STATUS is '状态'
/

comment on column GP_BM_PAGE_ITEM.LAST_UPD_TLR is '最后更新人'
/

comment on column GP_BM_PAGE_ITEM.LAST_UPD_TIME is '最后更新时间'
/

create table GP_BM_PAGE_OPT_DETAIL
(
    DATA_ID        VARCHAR2(64) not null,
    DATA_DATE      CHAR(8),
    CORP_ID        VARCHAR2(14),
    ORG_ID         VARCHAR2(14),
    GROUP_ID       VARCHAR2(14),
    NEXT_ACTION    CHAR(2),
    DATA_STATUS    CHAR(2),
    DATA_FLAG      CHAR,
    DATA_SOURCE    CHAR,
    CHECK_FLAG     CHAR,
    CHECK_DESC     VARCHAR2(512),
    CHECK_ERR_TYPE CHAR,
    DATA_VERSION   NUMBER(8),
    DATA_REJ_DESC  VARCHAR2(128),
    DATA_DEL_DESC  VARCHAR2(128),
    DATA_CRT_USER  VARCHAR2(20),
    DATA_CRT_DATE  CHAR(8),
    DATA_CRT_TIME  CHAR(14),
    DATA_CHG_USER  VARCHAR2(20),
    DATA_CHG_DATE  CHAR(8),
    DATA_CHG_TIME  CHAR(14),
    DATA_APV_USER  VARCHAR2(20),
    DATA_APV_DATE  CHAR(8),
    DATA_APV_TIME  CHAR(14),
    RSV1           VARCHAR2(180),
    RSV2           VARCHAR2(180),
    RSV3           VARCHAR2(180),
    RSV4           VARCHAR2(180),
    RSV5           VARCHAR2(180),
    REMARK         VARCHAR2(512),
    NAME           VARCHAR2(256),
    DESC_INFO      VARCHAR2(512),
    OPERATION      CHAR,
    OPT_CLAZZ      VARCHAR2(256),
    OPT_SCRIPT     VARCHAR2(1024),
    DEFAULT_CQID   VARCHAR2(64),
    PARENT         CHAR(32),
    STATUS         CHAR,
    SEQID          NUMBER,
    ICON           VARCHAR2(30),
    LAST_UPD_TLR   VARCHAR2(20),
    LAST_UPD_TIME  CHAR(17)
)
/

comment on table GP_BM_PAGE_OPT_DETAIL is '页面动作明细表'
/

comment on column GP_BM_PAGE_OPT_DETAIL.DATA_ID is '数据ID'
/

comment on column GP_BM_PAGE_OPT_DETAIL.DATA_DATE is '数据日期'
/

comment on column GP_BM_PAGE_OPT_DETAIL.CORP_ID is '法人机构号'
/

comment on column GP_BM_PAGE_OPT_DETAIL.ORG_ID is '机构号'
/

comment on column GP_BM_PAGE_OPT_DETAIL.GROUP_ID is '部门编号'
/

comment on column GP_BM_PAGE_OPT_DETAIL.NEXT_ACTION is '下一动作'
/

comment on column GP_BM_PAGE_OPT_DETAIL.DATA_STATUS is '数据状态'
/

comment on column GP_BM_PAGE_OPT_DETAIL.DATA_FLAG is '数据是否已删除'
/

comment on column GP_BM_PAGE_OPT_DETAIL.DATA_SOURCE is '数据来源'
/

comment on column GP_BM_PAGE_OPT_DETAIL.CHECK_FLAG is '校验标识'
/

comment on column GP_BM_PAGE_OPT_DETAIL.CHECK_DESC is '校验结果'
/

comment on column GP_BM_PAGE_OPT_DETAIL.CHECK_ERR_TYPE is '校验失败类型'
/

comment on column GP_BM_PAGE_OPT_DETAIL.DATA_VERSION is '数据版本'
/

comment on column GP_BM_PAGE_OPT_DETAIL.DATA_REJ_DESC is '数据审核拒绝原因'
/

comment on column GP_BM_PAGE_OPT_DETAIL.DATA_DEL_DESC is '数据删除描述'
/

comment on column GP_BM_PAGE_OPT_DETAIL.DATA_CRT_USER is '数据创建/导入用户'
/

comment on column GP_BM_PAGE_OPT_DETAIL.DATA_CRT_DATE is '数据创建/导入日期'
/

comment on column GP_BM_PAGE_OPT_DETAIL.DATA_CRT_TIME is '数据创建/导入时间'
/

comment on column GP_BM_PAGE_OPT_DETAIL.DATA_CHG_USER is '数据修改/删除用户'
/

comment on column GP_BM_PAGE_OPT_DETAIL.DATA_CHG_DATE is '数据修改/删除日期'
/

comment on column GP_BM_PAGE_OPT_DETAIL.DATA_CHG_TIME is '数据修改/删除时间'
/

comment on column GP_BM_PAGE_OPT_DETAIL.DATA_APV_USER is '数据审核/拒绝用户'
/

comment on column GP_BM_PAGE_OPT_DETAIL.DATA_APV_DATE is '数据审核/拒绝日期'
/

comment on column GP_BM_PAGE_OPT_DETAIL.DATA_APV_TIME is '数据审核/拒绝时间'
/

comment on column GP_BM_PAGE_OPT_DETAIL.RSV1 is '备用1'
/

comment on column GP_BM_PAGE_OPT_DETAIL.RSV2 is '备用2'
/

comment on column GP_BM_PAGE_OPT_DETAIL.RSV3 is '备用3'
/

comment on column GP_BM_PAGE_OPT_DETAIL.RSV4 is '备用4'
/

comment on column GP_BM_PAGE_OPT_DETAIL.RSV5 is '备用5'
/

comment on column GP_BM_PAGE_OPT_DETAIL.REMARK is '备注'
/

comment on column GP_BM_PAGE_OPT_DETAIL.NAME is '类型名称'
/

comment on column GP_BM_PAGE_OPT_DETAIL.DESC_INFO is '类型描述'
/

comment on column GP_BM_PAGE_OPT_DETAIL.OPERATION is '动作类型 0,自定义;1,数据提交;2,数据查询;3,超链接'
/

comment on column GP_BM_PAGE_OPT_DETAIL.OPT_CLAZZ is '执行CLASS'
/

comment on column GP_BM_PAGE_OPT_DETAIL.OPT_SCRIPT is '动作事件脚本'
/

comment on column GP_BM_PAGE_OPT_DETAIL.DEFAULT_CQID is '默认数据集ID'
/

comment on column GP_BM_PAGE_OPT_DETAIL.PARENT is '上级ID'
/

comment on column GP_BM_PAGE_OPT_DETAIL.STATUS is '状态'
/

comment on column GP_BM_PAGE_OPT_DETAIL.SEQID is '显示顺序'
/

comment on column GP_BM_PAGE_OPT_DETAIL.ICON is '图标'
/

comment on column GP_BM_PAGE_OPT_DETAIL.LAST_UPD_TLR is '最后更新人'
/

comment on column GP_BM_PAGE_OPT_DETAIL.LAST_UPD_TIME is '最后更新时间'
/

create table GP_BM_PAGE_OPT_ITEM
(
    DATA_ID        VARCHAR2(64) not null,
    DATA_DATE      CHAR(8),
    CORP_ID        VARCHAR2(14),
    ORG_ID         VARCHAR2(14),
    GROUP_ID       VARCHAR2(14),
    NEXT_ACTION    CHAR(2),
    DATA_STATUS    CHAR(2),
    DATA_FLAG      CHAR,
    DATA_SOURCE    CHAR,
    CHECK_FLAG     CHAR,
    CHECK_DESC     VARCHAR2(512),
    CHECK_ERR_TYPE CHAR,
    DATA_VERSION   NUMBER(8),
    DATA_REJ_DESC  VARCHAR2(128),
    DATA_DEL_DESC  VARCHAR2(128),
    DATA_CRT_USER  VARCHAR2(20),
    DATA_CRT_DATE  CHAR(8),
    DATA_CRT_TIME  CHAR(14),
    DATA_CHG_USER  VARCHAR2(20),
    DATA_CHG_DATE  CHAR(8),
    DATA_CHG_TIME  CHAR(14),
    DATA_APV_USER  VARCHAR2(20),
    DATA_APV_DATE  CHAR(8),
    DATA_APV_TIME  CHAR(14),
    RSV1           VARCHAR2(180),
    RSV2           VARCHAR2(180),
    RSV3           VARCHAR2(180),
    RSV4           VARCHAR2(180),
    RSV5           VARCHAR2(180),
    REMARK         VARCHAR2(512),
    NAME           VARCHAR2(256),
    DESC_INFO      VARCHAR2(512),
    TYPEID         CHAR(32),
    VIEWTYPE       CHAR,
    STATUS         CHAR,
    LAST_UPD_TLR   VARCHAR2(20),
    LAST_UPD_TIME  CHAR(17)
)
/

comment on table GP_BM_PAGE_OPT_ITEM is '页面动作表'
/

comment on column GP_BM_PAGE_OPT_ITEM.DATA_ID is '数据ID'
/

comment on column GP_BM_PAGE_OPT_ITEM.DATA_DATE is '数据日期'
/

comment on column GP_BM_PAGE_OPT_ITEM.CORP_ID is '法人机构号'
/

comment on column GP_BM_PAGE_OPT_ITEM.ORG_ID is '机构号'
/

comment on column GP_BM_PAGE_OPT_ITEM.GROUP_ID is '部门编号'
/

comment on column GP_BM_PAGE_OPT_ITEM.NEXT_ACTION is '下一动作'
/

comment on column GP_BM_PAGE_OPT_ITEM.DATA_STATUS is '数据状态'
/

comment on column GP_BM_PAGE_OPT_ITEM.DATA_FLAG is '数据是否已删除'
/

comment on column GP_BM_PAGE_OPT_ITEM.DATA_SOURCE is '数据来源'
/

comment on column GP_BM_PAGE_OPT_ITEM.CHECK_FLAG is '校验标识'
/

comment on column GP_BM_PAGE_OPT_ITEM.CHECK_DESC is '校验结果'
/

comment on column GP_BM_PAGE_OPT_ITEM.CHECK_ERR_TYPE is '校验失败类型'
/

comment on column GP_BM_PAGE_OPT_ITEM.DATA_VERSION is '数据版本'
/

comment on column GP_BM_PAGE_OPT_ITEM.DATA_REJ_DESC is '数据审核拒绝原因'
/

comment on column GP_BM_PAGE_OPT_ITEM.DATA_DEL_DESC is '数据删除描述'
/

comment on column GP_BM_PAGE_OPT_ITEM.DATA_CRT_USER is '数据创建/导入用户'
/

comment on column GP_BM_PAGE_OPT_ITEM.DATA_CRT_DATE is '数据创建/导入日期'
/

comment on column GP_BM_PAGE_OPT_ITEM.DATA_CRT_TIME is '数据创建/导入时间'
/

comment on column GP_BM_PAGE_OPT_ITEM.DATA_CHG_USER is '数据修改/删除用户'
/

comment on column GP_BM_PAGE_OPT_ITEM.DATA_CHG_DATE is '数据修改/删除日期'
/

comment on column GP_BM_PAGE_OPT_ITEM.DATA_CHG_TIME is '数据修改/删除时间'
/

comment on column GP_BM_PAGE_OPT_ITEM.DATA_APV_USER is '数据审核/拒绝用户'
/

comment on column GP_BM_PAGE_OPT_ITEM.DATA_APV_DATE is '数据审核/拒绝日期'
/

comment on column GP_BM_PAGE_OPT_ITEM.DATA_APV_TIME is '数据审核/拒绝时间'
/

comment on column GP_BM_PAGE_OPT_ITEM.RSV1 is '备用1'
/

comment on column GP_BM_PAGE_OPT_ITEM.RSV2 is '备用2'
/

comment on column GP_BM_PAGE_OPT_ITEM.RSV3 is '备用3'
/

comment on column GP_BM_PAGE_OPT_ITEM.RSV4 is '备用4'
/

comment on column GP_BM_PAGE_OPT_ITEM.RSV5 is '备用5'
/

comment on column GP_BM_PAGE_OPT_ITEM.REMARK is '备注'
/

comment on column GP_BM_PAGE_OPT_ITEM.NAME is '动作组标识'
/

comment on column GP_BM_PAGE_OPT_ITEM.DESC_INFO is '描述信息'
/

comment on column GP_BM_PAGE_OPT_ITEM.TYPEID is '类型ID'
/

comment on column GP_BM_PAGE_OPT_ITEM.VIEWTYPE is '组装类型'
/

comment on column GP_BM_PAGE_OPT_ITEM.STATUS is '状态'
/

comment on column GP_BM_PAGE_OPT_ITEM.LAST_UPD_TLR is '最后更新人'
/

comment on column GP_BM_PAGE_OPT_ITEM.LAST_UPD_TIME is '最后更新时间'
/

create table GP_BM_PAGE_TYPE
(
    DATA_ID        VARCHAR2(64) not null,
    DATA_DATE      CHAR(8),
    CORP_ID        VARCHAR2(14),
    ORG_ID         VARCHAR2(14),
    GROUP_ID       VARCHAR2(14),
    NEXT_ACTION    CHAR(2),
    DATA_STATUS    CHAR(2),
    DATA_FLAG      CHAR,
    DATA_SOURCE    CHAR,
    CHECK_FLAG     CHAR,
    CHECK_DESC     VARCHAR2(512),
    CHECK_ERR_TYPE CHAR,
    DATA_VERSION   NUMBER(8),
    DATA_REJ_DESC  VARCHAR2(128),
    DATA_DEL_DESC  VARCHAR2(128),
    DATA_CRT_USER  VARCHAR2(20),
    DATA_CRT_DATE  CHAR(8),
    DATA_CRT_TIME  CHAR(14),
    DATA_CHG_USER  VARCHAR2(20),
    DATA_CHG_DATE  CHAR(8),
    DATA_CHG_TIME  CHAR(14),
    DATA_APV_USER  VARCHAR2(20),
    DATA_APV_DATE  CHAR(8),
    DATA_APV_TIME  CHAR(14),
    RSV1           VARCHAR2(180),
    RSV2           VARCHAR2(180),
    RSV3           VARCHAR2(180),
    RSV4           VARCHAR2(180),
    RSV5           VARCHAR2(180),
    REMARK         VARCHAR2(512),
    NAME           VARCHAR2(256),
    DESC_INFO      VARCHAR2(512),
    TYPE           CHAR,
    PARENT         CHAR(32),
    FUN_ID         CHAR(32),
    STATUS         CHAR,
    LAST_UPD_TLR   VARCHAR2(20),
    LAST_UPD_TIME  CHAR(17)
)
/

comment on table GP_BM_PAGE_TYPE is '页面配置类型表'
/

comment on column GP_BM_PAGE_TYPE.DATA_ID is '数据ID'
/

comment on column GP_BM_PAGE_TYPE.DATA_DATE is '数据日期'
/

comment on column GP_BM_PAGE_TYPE.CORP_ID is '法人机构号'
/

comment on column GP_BM_PAGE_TYPE.ORG_ID is '机构号'
/

comment on column GP_BM_PAGE_TYPE.GROUP_ID is '部门编号'
/

comment on column GP_BM_PAGE_TYPE.NEXT_ACTION is '下一动作'
/

comment on column GP_BM_PAGE_TYPE.DATA_STATUS is '数据状态'
/

comment on column GP_BM_PAGE_TYPE.DATA_FLAG is '数据是否已删除'
/

comment on column GP_BM_PAGE_TYPE.DATA_SOURCE is '数据来源'
/

comment on column GP_BM_PAGE_TYPE.CHECK_FLAG is '校验标识'
/

comment on column GP_BM_PAGE_TYPE.CHECK_DESC is '校验结果'
/

comment on column GP_BM_PAGE_TYPE.CHECK_ERR_TYPE is '校验失败类型'
/

comment on column GP_BM_PAGE_TYPE.DATA_VERSION is '数据版本'
/

comment on column GP_BM_PAGE_TYPE.DATA_REJ_DESC is '数据审核拒绝原因'
/

comment on column GP_BM_PAGE_TYPE.DATA_DEL_DESC is '数据删除描述'
/

comment on column GP_BM_PAGE_TYPE.DATA_CRT_USER is '数据创建/导入用户'
/

comment on column GP_BM_PAGE_TYPE.DATA_CRT_DATE is '数据创建/导入日期'
/

comment on column GP_BM_PAGE_TYPE.DATA_CRT_TIME is '数据创建/导入时间'
/

comment on column GP_BM_PAGE_TYPE.DATA_CHG_USER is '数据修改/删除用户'
/

comment on column GP_BM_PAGE_TYPE.DATA_CHG_DATE is '数据修改/删除日期'
/

comment on column GP_BM_PAGE_TYPE.DATA_CHG_TIME is '数据修改/删除时间'
/

comment on column GP_BM_PAGE_TYPE.DATA_APV_USER is '数据审核/拒绝用户'
/

comment on column GP_BM_PAGE_TYPE.DATA_APV_DATE is '数据审核/拒绝日期'
/

comment on column GP_BM_PAGE_TYPE.DATA_APV_TIME is '数据审核/拒绝时间'
/

comment on column GP_BM_PAGE_TYPE.RSV1 is '备用1'
/

comment on column GP_BM_PAGE_TYPE.RSV2 is '备用2'
/

comment on column GP_BM_PAGE_TYPE.RSV3 is '备用3'
/

comment on column GP_BM_PAGE_TYPE.RSV4 is '备用4'
/

comment on column GP_BM_PAGE_TYPE.RSV5 is '备用5'
/

comment on column GP_BM_PAGE_TYPE.REMARK is '备注'
/

comment on column GP_BM_PAGE_TYPE.NAME is '类型名称'
/

comment on column GP_BM_PAGE_TYPE.DESC_INFO is '类型描述'
/

comment on column GP_BM_PAGE_TYPE.TYPE is '类别 0,目录;1,页面组装;2,功能组装'
/

comment on column GP_BM_PAGE_TYPE.PARENT is '上级'
/

comment on column GP_BM_PAGE_TYPE.FUN_ID is '菜单ID'
/

comment on column GP_BM_PAGE_TYPE.STATUS is '状态 0,无效;1,有效'
/

comment on column GP_BM_PAGE_TYPE.LAST_UPD_TLR is '最后更新人'
/

comment on column GP_BM_PAGE_TYPE.LAST_UPD_TIME is '最后更新时间'
/

create table GP_BM_PASSWORD_HIS
(
    DATA_ID        VARCHAR2(64) not null
        primary key,
    DATA_DATE      CHAR(8),
    CORP_ID        VARCHAR2(14),
    ORG_ID         VARCHAR2(14),
    GROUP_ID       VARCHAR2(14),
    INQ_ORG_ID     CHAR(24),
    INQ_GROUP_ID   CHAR(24),
    CHECK_FLAG     CHAR,
    TLR_NO         VARCHAR2(20),
    PASSWORD       VARCHAR2(80),
    PASSWD_ENC     VARCHAR2(10),
    MODIFIED_TIME  CHAR(14),
    CHECK_DESC     VARCHAR2(512),
    CHECK_ERR_TYPE CHAR,
    NEXT_ACTION    CHAR(2),
    DATA_STATUS    CHAR(2),
    DATA_FLAG      CHAR,
    DATA_OP        CHAR,
    DATA_SOURCE    CHAR,
    DATA_VERSION   NUMBER(8),
    DATA_REJ_DESC  VARCHAR2(128),
    DATA_DEL_DESC  VARCHAR2(128),
    DATA_CRT_USER  VARCHAR2(20),
    DATA_CRT_DATE  CHAR(8),
    DATA_CRT_TIME  CHAR(14),
    DATA_CHG_USER  VARCHAR2(20),
    DATA_CHG_DATE  CHAR(8),
    DATA_CHG_TIME  CHAR(14),
    DATA_APV_USER  VARCHAR2(20),
    DATA_APV_DATE  CHAR(8),
    DATA_APV_TIME  CHAR(14),
    RSV1           VARCHAR2(180),
    RSV2           VARCHAR2(180),
    RSV3           VARCHAR2(180),
    RSV4           VARCHAR2(180),
    RSV5           VARCHAR2(180),
    DATA_HASH      VARCHAR2(64)
)
/

comment on table GP_BM_PASSWORD_HIS is '记录用户密码的修改历史'
/

comment on column GP_BM_PASSWORD_HIS.DATA_ID is '数据ID'
/

comment on column GP_BM_PASSWORD_HIS.DATA_DATE is '数据日期'
/

comment on column GP_BM_PASSWORD_HIS.CORP_ID is '法人机构号'
/

comment on column GP_BM_PASSWORD_HIS.ORG_ID is '机构号'
/

comment on column GP_BM_PASSWORD_HIS.GROUP_ID is '部门编号'
/

comment on column GP_BM_PASSWORD_HIS.INQ_ORG_ID is '查询机构号'
/

comment on column GP_BM_PASSWORD_HIS.INQ_GROUP_ID is '查询组号'
/

comment on column GP_BM_PASSWORD_HIS.CHECK_FLAG is '校验标识'
/

comment on column GP_BM_PASSWORD_HIS.TLR_NO is '操作员ID'
/

comment on column GP_BM_PASSWORD_HIS.PASSWORD is '密码'
/

comment on column GP_BM_PASSWORD_HIS.PASSWD_ENC is '密码加密算法'
/

comment on column GP_BM_PASSWORD_HIS.MODIFIED_TIME is '修改时间'
/

comment on column GP_BM_PASSWORD_HIS.CHECK_DESC is '校验结果'
/

comment on column GP_BM_PASSWORD_HIS.CHECK_ERR_TYPE is '校验失败类型'
/

comment on column GP_BM_PASSWORD_HIS.NEXT_ACTION is '下一动作'
/

comment on column GP_BM_PASSWORD_HIS.DATA_STATUS is '数据状态'
/

comment on column GP_BM_PASSWORD_HIS.DATA_FLAG is '数据是否已删除'
/

comment on column GP_BM_PASSWORD_HIS.DATA_OP is '数据操作 A：新增，D:删除, M:修改'
/

comment on column GP_BM_PASSWORD_HIS.DATA_SOURCE is '数据来源'
/

comment on column GP_BM_PASSWORD_HIS.DATA_VERSION is '数据版本'
/

comment on column GP_BM_PASSWORD_HIS.DATA_REJ_DESC is '数据审核拒绝原因'
/

comment on column GP_BM_PASSWORD_HIS.DATA_DEL_DESC is '数据删除描述'
/

comment on column GP_BM_PASSWORD_HIS.DATA_CRT_USER is '数据创建/导入用户'
/

comment on column GP_BM_PASSWORD_HIS.DATA_CRT_DATE is '数据创建/导入日期'
/

comment on column GP_BM_PASSWORD_HIS.DATA_CRT_TIME is '数据创建/导入时间'
/

comment on column GP_BM_PASSWORD_HIS.DATA_CHG_USER is '数据修改/删除用户'
/

comment on column GP_BM_PASSWORD_HIS.DATA_CHG_DATE is '数据修改/删除日期'
/

comment on column GP_BM_PASSWORD_HIS.DATA_CHG_TIME is '数据修改/删除时间'
/

comment on column GP_BM_PASSWORD_HIS.DATA_APV_USER is '数据审核/拒绝用户'
/

comment on column GP_BM_PASSWORD_HIS.DATA_APV_DATE is '数据审核/拒绝日期'
/

comment on column GP_BM_PASSWORD_HIS.DATA_APV_TIME is '数据审核/拒绝时间'
/

comment on column GP_BM_PASSWORD_HIS.RSV1 is '备用1'
/

comment on column GP_BM_PASSWORD_HIS.RSV2 is '备用2'
/

comment on column GP_BM_PASSWORD_HIS.RSV3 is '备用3'
/

comment on column GP_BM_PASSWORD_HIS.RSV4 is '备用4'
/

comment on column GP_BM_PASSWORD_HIS.RSV5 is '备用5'
/

comment on column GP_BM_PASSWORD_HIS.DATA_HASH is '记录HASH值'
/

create table GP_BM_PRIV_F_DEFINE
(
    DATA_ID        VARCHAR2(64) not null
        primary key,
    DATA_DATE      CHAR(8),
    CORP_ID        VARCHAR2(14),
    ORG_ID         VARCHAR2(14),
    GROUP_ID       VARCHAR2(14),
    F_ID           VARCHAR2(60),
    F_TYPE         CHAR,
    CODE_SCHEMA    VARCHAR2(30),
    ENABLE_FLAG    CHAR,
    REMARKS        VARCHAR2(180),
    CHECK_FLAG     CHAR,
    CHECK_DESC     VARCHAR2(512),
    CHECK_ERR_TYPE CHAR,
    NEXT_ACTION    CHAR(2),
    DATA_STATUS    CHAR(2),
    DATA_FLAG      CHAR,
    DATA_SOURCE    CHAR,
    DATA_VERSION   NUMBER(8),
    DATA_REJ_DESC  VARCHAR2(128),
    DATA_DEL_DESC  VARCHAR2(128),
    DATA_CRT_USER  VARCHAR2(20),
    DATA_CRT_DATE  CHAR(8),
    DATA_CRT_TIME  CHAR(14),
    DATA_CHG_USER  VARCHAR2(20),
    DATA_CHG_DATE  CHAR(8),
    DATA_CHG_TIME  CHAR(14),
    DATA_APV_USER  VARCHAR2(20),
    DATA_APV_DATE  CHAR(8),
    DATA_APV_TIME  CHAR(14),
    RSV1           VARCHAR2(180),
    RSV2           VARCHAR2(180),
    RSV3           VARCHAR2(180),
    RSV4           VARCHAR2(180),
    RSV5           VARCHAR2(180)
)
/

comment on table GP_BM_PRIV_F_DEFINE is '功能配置表'
/

comment on column GP_BM_PRIV_F_DEFINE.DATA_ID is '数据ID'
/

comment on column GP_BM_PRIV_F_DEFINE.DATA_DATE is '数据日期'
/

comment on column GP_BM_PRIV_F_DEFINE.CORP_ID is '法人机构号'
/

comment on column GP_BM_PRIV_F_DEFINE.ORG_ID is '机构号'
/

comment on column GP_BM_PRIV_F_DEFINE.GROUP_ID is '部门编号'
/

comment on column GP_BM_PRIV_F_DEFINE.F_ID is '功能ID'
/

comment on column GP_BM_PRIV_F_DEFINE.F_TYPE is '功能类型 V-画面   I-接口'
/

comment on column GP_BM_PRIV_F_DEFINE.CODE_SCHEMA is '采用的数据编码方案'
/

comment on column GP_BM_PRIV_F_DEFINE.ENABLE_FLAG is '权限启用开关 1-开启   2-关闭'
/

comment on column GP_BM_PRIV_F_DEFINE.REMARKS is '备注'
/

comment on column GP_BM_PRIV_F_DEFINE.CHECK_FLAG is '校验标识'
/

comment on column GP_BM_PRIV_F_DEFINE.CHECK_DESC is '校验结果'
/

comment on column GP_BM_PRIV_F_DEFINE.CHECK_ERR_TYPE is '校验失败类型'
/

comment on column GP_BM_PRIV_F_DEFINE.NEXT_ACTION is '下一动作'
/

comment on column GP_BM_PRIV_F_DEFINE.DATA_STATUS is '数据状态'
/

comment on column GP_BM_PRIV_F_DEFINE.DATA_FLAG is '数据是否已删除'
/

comment on column GP_BM_PRIV_F_DEFINE.DATA_SOURCE is '数据来源'
/

comment on column GP_BM_PRIV_F_DEFINE.DATA_VERSION is '数据版本'
/

comment on column GP_BM_PRIV_F_DEFINE.DATA_REJ_DESC is '数据审核拒绝原因'
/

comment on column GP_BM_PRIV_F_DEFINE.DATA_DEL_DESC is '数据删除描述'
/

comment on column GP_BM_PRIV_F_DEFINE.DATA_CRT_USER is '数据创建/导入用户'
/

comment on column GP_BM_PRIV_F_DEFINE.DATA_CRT_DATE is '数据创建/导入日期'
/

comment on column GP_BM_PRIV_F_DEFINE.DATA_CRT_TIME is '数据创建/导入时间'
/

comment on column GP_BM_PRIV_F_DEFINE.DATA_CHG_USER is '数据修改/删除用户'
/

comment on column GP_BM_PRIV_F_DEFINE.DATA_CHG_DATE is '数据修改/删除日期'
/

comment on column GP_BM_PRIV_F_DEFINE.DATA_CHG_TIME is '数据修改/删除时间'
/

comment on column GP_BM_PRIV_F_DEFINE.DATA_APV_USER is '数据审核/拒绝用户'
/

comment on column GP_BM_PRIV_F_DEFINE.DATA_APV_DATE is '数据审核/拒绝日期'
/

comment on column GP_BM_PRIV_F_DEFINE.DATA_APV_TIME is '数据审核/拒绝时间'
/

comment on column GP_BM_PRIV_F_DEFINE.RSV1 is '备用1'
/

comment on column GP_BM_PRIV_F_DEFINE.RSV2 is '备用2'
/

comment on column GP_BM_PRIV_F_DEFINE.RSV3 is '备用3'
/

comment on column GP_BM_PRIV_F_DEFINE.RSV4 is '备用4'
/

comment on column GP_BM_PRIV_F_DEFINE.RSV5 is '备用5'
/

create table GP_BM_PRIV_F_FIELDS
(
    DATA_ID        VARCHAR2(64) not null,
    DATA_DATE      CHAR(8),
    CORP_ID        VARCHAR2(14),
    ORG_ID         VARCHAR2(14),
    GROUP_ID       VARCHAR2(14),
    F_ID           VARCHAR2(20) not null,
    FIELD_ID       VARCHAR2(60) not null,
    FIELD_NAME     VARCHAR2(60) not null,
    REMARKS        VARCHAR2(180),
    CHECK_FLAG     CHAR,
    CHECK_DESC     VARCHAR2(512),
    CHECK_ERR_TYPE CHAR,
    NEXT_ACTION    CHAR(2),
    DATA_STATUS    CHAR(2),
    DATA_FLAG      CHAR,
    DATA_SOURCE    CHAR,
    DATA_VERSION   NUMBER(8),
    DATA_REJ_DESC  VARCHAR2(128),
    DATA_DEL_DESC  VARCHAR2(128),
    DATA_CRT_USER  VARCHAR2(20),
    DATA_CRT_DATE  CHAR(8),
    DATA_CRT_TIME  CHAR(14),
    DATA_CHG_USER  VARCHAR2(20),
    DATA_CHG_DATE  CHAR(8),
    DATA_CHG_TIME  CHAR(14),
    DATA_APV_USER  VARCHAR2(20),
    DATA_APV_DATE  CHAR(8),
    DATA_APV_TIME  CHAR(14),
    RSV1           VARCHAR2(180),
    RSV2           VARCHAR2(180),
    RSV3           VARCHAR2(180),
    RSV4           VARCHAR2(180),
    RSV5           VARCHAR2(180)
)
/

comment on table GP_BM_PRIV_F_FIELDS is '功能字段定义表'
/

comment on column GP_BM_PRIV_F_FIELDS.DATA_ID is '数据ID'
/

comment on column GP_BM_PRIV_F_FIELDS.DATA_DATE is '数据日期'
/

comment on column GP_BM_PRIV_F_FIELDS.CORP_ID is '法人机构号'
/

comment on column GP_BM_PRIV_F_FIELDS.ORG_ID is '机构号'
/

comment on column GP_BM_PRIV_F_FIELDS.GROUP_ID is '部门编号'
/

comment on column GP_BM_PRIV_F_FIELDS.F_ID is '功能ID'
/

comment on column GP_BM_PRIV_F_FIELDS.FIELD_ID is '字段ID'
/

comment on column GP_BM_PRIV_F_FIELDS.FIELD_NAME is '字段中文名'
/

comment on column GP_BM_PRIV_F_FIELDS.REMARKS is '备注'
/

comment on column GP_BM_PRIV_F_FIELDS.CHECK_FLAG is '校验标识'
/

comment on column GP_BM_PRIV_F_FIELDS.CHECK_DESC is '校验结果'
/

comment on column GP_BM_PRIV_F_FIELDS.CHECK_ERR_TYPE is '校验失败类型'
/

comment on column GP_BM_PRIV_F_FIELDS.NEXT_ACTION is '下一动作'
/

comment on column GP_BM_PRIV_F_FIELDS.DATA_STATUS is '数据状态'
/

comment on column GP_BM_PRIV_F_FIELDS.DATA_FLAG is '数据是否已删除'
/

comment on column GP_BM_PRIV_F_FIELDS.DATA_SOURCE is '数据来源'
/

comment on column GP_BM_PRIV_F_FIELDS.DATA_VERSION is '数据版本'
/

comment on column GP_BM_PRIV_F_FIELDS.DATA_REJ_DESC is '数据审核拒绝原因'
/

comment on column GP_BM_PRIV_F_FIELDS.DATA_DEL_DESC is '数据删除描述'
/

comment on column GP_BM_PRIV_F_FIELDS.DATA_CRT_USER is '数据创建/导入用户'
/

comment on column GP_BM_PRIV_F_FIELDS.DATA_CRT_DATE is '数据创建/导入日期'
/

comment on column GP_BM_PRIV_F_FIELDS.DATA_CRT_TIME is '数据创建/导入时间'
/

comment on column GP_BM_PRIV_F_FIELDS.DATA_CHG_USER is '数据修改/删除用户'
/

comment on column GP_BM_PRIV_F_FIELDS.DATA_CHG_DATE is '数据修改/删除日期'
/

comment on column GP_BM_PRIV_F_FIELDS.DATA_CHG_TIME is '数据修改/删除时间'
/

comment on column GP_BM_PRIV_F_FIELDS.DATA_APV_USER is '数据审核/拒绝用户'
/

comment on column GP_BM_PRIV_F_FIELDS.DATA_APV_DATE is '数据审核/拒绝日期'
/

comment on column GP_BM_PRIV_F_FIELDS.DATA_APV_TIME is '数据审核/拒绝时间'
/

comment on column GP_BM_PRIV_F_FIELDS.RSV1 is '备用1'
/

comment on column GP_BM_PRIV_F_FIELDS.RSV2 is '备用2'
/

comment on column GP_BM_PRIV_F_FIELDS.RSV3 is '备用3'
/

comment on column GP_BM_PRIV_F_FIELDS.RSV4 is '备用4'
/

comment on column GP_BM_PRIV_F_FIELDS.RSV5 is '备用5'
/

create table GP_BM_PRIV_F_MAP
(
    DATA_ID        VARCHAR2(64) not null,
    DATA_DATE      CHAR(8),
    CORP_ID        VARCHAR2(14),
    ORG_ID         VARCHAR2(14),
    GROUP_ID       VARCHAR2(14),
    F_ID           VARCHAR2(20) not null,
    FIELD_ID       VARCHAR2(60) not null,
    CODE_SCHEMA    VARCHAR2(30) not null,
    CODE_ITEM      VARCHAR2(30) not null,
    REMARKS        VARCHAR2(180),
    CHECK_FLAG     CHAR,
    CHECK_DESC     VARCHAR2(512),
    CHECK_ERR_TYPE CHAR,
    NEXT_ACTION    CHAR(2),
    DATA_STATUS    CHAR(2),
    DATA_FLAG      CHAR,
    DATA_SOURCE    CHAR,
    DATA_VERSION   NUMBER(8),
    DATA_REJ_DESC  VARCHAR2(128),
    DATA_DEL_DESC  VARCHAR2(128),
    DATA_CRT_USER  VARCHAR2(20),
    DATA_CRT_DATE  CHAR(8),
    DATA_CRT_TIME  CHAR(14),
    DATA_CHG_USER  VARCHAR2(20),
    DATA_CHG_DATE  CHAR(8),
    DATA_CHG_TIME  CHAR(14),
    DATA_APV_USER  VARCHAR2(20),
    DATA_APV_DATE  CHAR(8),
    DATA_APV_TIME  CHAR(14),
    RSV1           VARCHAR2(180),
    RSV2           VARCHAR2(180),
    RSV3           VARCHAR2(180),
    RSV4           VARCHAR2(180),
    RSV5           VARCHAR2(180)
)
/

comment on table GP_BM_PRIV_F_MAP is '功能字段与数据编码映射表'
/

comment on column GP_BM_PRIV_F_MAP.DATA_ID is '数据ID'
/

comment on column GP_BM_PRIV_F_MAP.DATA_DATE is '数据日期'
/

comment on column GP_BM_PRIV_F_MAP.CORP_ID is '法人机构号'
/

comment on column GP_BM_PRIV_F_MAP.ORG_ID is '机构号'
/

comment on column GP_BM_PRIV_F_MAP.GROUP_ID is '部门编号'
/

comment on column GP_BM_PRIV_F_MAP.F_ID is '功能ID'
/

comment on column GP_BM_PRIV_F_MAP.FIELD_ID is '字段ID'
/

comment on column GP_BM_PRIV_F_MAP.CODE_SCHEMA is '编码方案'
/

comment on column GP_BM_PRIV_F_MAP.CODE_ITEM is '数据代码'
/

comment on column GP_BM_PRIV_F_MAP.REMARKS is '备注'
/

comment on column GP_BM_PRIV_F_MAP.CHECK_FLAG is '校验标识'
/

comment on column GP_BM_PRIV_F_MAP.CHECK_DESC is '校验结果'
/

comment on column GP_BM_PRIV_F_MAP.CHECK_ERR_TYPE is '校验失败类型'
/

comment on column GP_BM_PRIV_F_MAP.NEXT_ACTION is '下一动作'
/

comment on column GP_BM_PRIV_F_MAP.DATA_STATUS is '数据状态'
/

comment on column GP_BM_PRIV_F_MAP.DATA_FLAG is '数据是否已删除'
/

comment on column GP_BM_PRIV_F_MAP.DATA_SOURCE is '数据来源'
/

comment on column GP_BM_PRIV_F_MAP.DATA_VERSION is '数据版本'
/

comment on column GP_BM_PRIV_F_MAP.DATA_REJ_DESC is '数据审核拒绝原因'
/

comment on column GP_BM_PRIV_F_MAP.DATA_DEL_DESC is '数据删除描述'
/

comment on column GP_BM_PRIV_F_MAP.DATA_CRT_USER is '数据创建/导入用户'
/

comment on column GP_BM_PRIV_F_MAP.DATA_CRT_DATE is '数据创建/导入日期'
/

comment on column GP_BM_PRIV_F_MAP.DATA_CRT_TIME is '数据创建/导入时间'
/

comment on column GP_BM_PRIV_F_MAP.DATA_CHG_USER is '数据修改/删除用户'
/

comment on column GP_BM_PRIV_F_MAP.DATA_CHG_DATE is '数据修改/删除日期'
/

comment on column GP_BM_PRIV_F_MAP.DATA_CHG_TIME is '数据修改/删除时间'
/

comment on column GP_BM_PRIV_F_MAP.DATA_APV_USER is '数据审核/拒绝用户'
/

comment on column GP_BM_PRIV_F_MAP.DATA_APV_DATE is '数据审核/拒绝日期'
/

comment on column GP_BM_PRIV_F_MAP.DATA_APV_TIME is '数据审核/拒绝时间'
/

comment on column GP_BM_PRIV_F_MAP.RSV1 is '备用1'
/

comment on column GP_BM_PRIV_F_MAP.RSV2 is '备用2'
/

comment on column GP_BM_PRIV_F_MAP.RSV3 is '备用3'
/

comment on column GP_BM_PRIV_F_MAP.RSV4 is '备用4'
/

comment on column GP_BM_PRIV_F_MAP.RSV5 is '备用5'
/

create table GP_BM_PRIV_GRANT
(
    DATA_ID        VARCHAR2(64) not null,
    DATA_DATE      CHAR(8),
    CORP_ID        VARCHAR2(14),
    ORG_ID         VARCHAR2(14),
    GROUP_ID       VARCHAR2(14),
    CODE_SCHEMA    VARCHAR2(30),
    CODE_ITEM      VARCHAR2(30),
    CODE_VALUE     VARCHAR2(30),
    DATA_ORG_ID    VARCHAR2(14),
    ENT_TYPE       CHAR,
    ENT_ID         VARCHAR2(32),
    PRIV_ALLOW     CHAR,
    GRANT_FLAG     CHAR,
    REMARKS        VARCHAR2(180),
    CHECK_FLAG     CHAR,
    CHECK_DESC     VARCHAR2(512),
    CHECK_ERR_TYPE CHAR,
    NEXT_ACTION    CHAR(2),
    DATA_STATUS    CHAR(2),
    DATA_FLAG      CHAR,
    DATA_SOURCE    CHAR,
    DATA_VERSION   NUMBER(8),
    DATA_REJ_DESC  VARCHAR2(128),
    DATA_DEL_DESC  VARCHAR2(128),
    DATA_CRT_USER  VARCHAR2(20),
    DATA_CRT_DATE  CHAR(8),
    DATA_CRT_TIME  CHAR(14),
    DATA_CHG_USER  VARCHAR2(20),
    DATA_CHG_DATE  CHAR(8),
    DATA_CHG_TIME  CHAR(14),
    DATA_APV_USER  VARCHAR2(20),
    DATA_APV_DATE  CHAR(8),
    DATA_APV_TIME  CHAR(14),
    RSV1           VARCHAR2(180),
    RSV2           VARCHAR2(180),
    RSV3           VARCHAR2(180),
    RSV4           VARCHAR2(180),
    RSV5           VARCHAR2(180)
)
/

comment on table GP_BM_PRIV_GRANT is '数据权限授权表'
/

comment on column GP_BM_PRIV_GRANT.DATA_ID is '数据ID'
/

comment on column GP_BM_PRIV_GRANT.DATA_DATE is '数据日期'
/

comment on column GP_BM_PRIV_GRANT.CORP_ID is '法人机构号'
/

comment on column GP_BM_PRIV_GRANT.ORG_ID is '机构号'
/

comment on column GP_BM_PRIV_GRANT.GROUP_ID is '部门编号'
/

comment on column GP_BM_PRIV_GRANT.CODE_SCHEMA is '编码方案'
/

comment on column GP_BM_PRIV_GRANT.CODE_ITEM is '编码项'
/

comment on column GP_BM_PRIV_GRANT.CODE_VALUE is '数据代码'
/

comment on column GP_BM_PRIV_GRANT.DATA_ORG_ID is '数据所属机构ID THIS-自己数据  CHILD-下属机构数据   机构号-机构号的数据'
/

comment on column GP_BM_PRIV_GRANT.ENT_TYPE is '组表号 U-用户  R-角色'
/

comment on column GP_BM_PRIV_GRANT.ENT_ID is '主体类型 0-一般纳税人 1-小规模纳税人 '
/

comment on column GP_BM_PRIV_GRANT.PRIV_ALLOW is '权限 N-没有权限  R-只读   W-可写'
/

comment on column GP_BM_PRIV_GRANT.GRANT_FLAG is '授权标志 N-不能向他人授权本权限  Y-可向他人授权本权限'
/

comment on column GP_BM_PRIV_GRANT.REMARKS is '备注'
/

comment on column GP_BM_PRIV_GRANT.CHECK_FLAG is '校验标识'
/

comment on column GP_BM_PRIV_GRANT.CHECK_DESC is '校验结果'
/

comment on column GP_BM_PRIV_GRANT.CHECK_ERR_TYPE is '校验失败类型'
/

comment on column GP_BM_PRIV_GRANT.NEXT_ACTION is '下一动作'
/

comment on column GP_BM_PRIV_GRANT.DATA_STATUS is '数据状态'
/

comment on column GP_BM_PRIV_GRANT.DATA_FLAG is '数据是否已删除'
/

comment on column GP_BM_PRIV_GRANT.DATA_SOURCE is '数据来源'
/

comment on column GP_BM_PRIV_GRANT.DATA_VERSION is '数据版本'
/

comment on column GP_BM_PRIV_GRANT.DATA_REJ_DESC is '数据审核拒绝原因'
/

comment on column GP_BM_PRIV_GRANT.DATA_DEL_DESC is '数据删除描述'
/

comment on column GP_BM_PRIV_GRANT.DATA_CRT_USER is '数据创建/导入用户'
/

comment on column GP_BM_PRIV_GRANT.DATA_CRT_DATE is '数据创建/导入日期'
/

comment on column GP_BM_PRIV_GRANT.DATA_CRT_TIME is '数据创建/导入时间'
/

comment on column GP_BM_PRIV_GRANT.DATA_CHG_USER is '数据修改/删除用户'
/

comment on column GP_BM_PRIV_GRANT.DATA_CHG_DATE is '数据修改/删除日期'
/

comment on column GP_BM_PRIV_GRANT.DATA_CHG_TIME is '数据修改/删除时间'
/

comment on column GP_BM_PRIV_GRANT.DATA_APV_USER is '数据审核/拒绝用户'
/

comment on column GP_BM_PRIV_GRANT.DATA_APV_DATE is '数据审核/拒绝日期'
/

comment on column GP_BM_PRIV_GRANT.DATA_APV_TIME is '数据审核/拒绝时间'
/

comment on column GP_BM_PRIV_GRANT.RSV1 is '备用1'
/

comment on column GP_BM_PRIV_GRANT.RSV2 is '备用2'
/

comment on column GP_BM_PRIV_GRANT.RSV3 is '备用3'
/

comment on column GP_BM_PRIV_GRANT.RSV4 is '备用4'
/

comment on column GP_BM_PRIV_GRANT.RSV5 is '备用5'
/

create table GP_BM_ROLE_FUNC_REL
(
    ID             CHAR(32) not null
        primary key,
    ROLE_ID        VARCHAR2(32),
    FUNCID         VARCHAR2(32),
    CORP_ID        VARCHAR2(14),
    ORG_ID         VARCHAR2(14),
    GROUP_ID       VARCHAR2(14),
    CHECK_FLAG     CHAR,
    CHECK_DESC     VARCHAR2(512),
    CHECK_ERR_TYPE CHAR,
    NEXT_ACTION    CHAR(2),
    DATA_STATUS    CHAR(2),
    DATA_FLAG      CHAR,
    DATA_SOURCE    CHAR,
    DATA_VERSION   NUMBER(8),
    DATA_REJ_DESC  VARCHAR2(128),
    DATA_DEL_DESC  VARCHAR2(128),
    DATA_CRT_USER  VARCHAR2(20),
    DATA_CRT_DATE  CHAR(8),
    DATA_CRT_TIME  CHAR(14),
    DATA_CHG_USER  VARCHAR2(20),
    DATA_CHG_DATE  CHAR(8),
    DATA_CHG_TIME  CHAR(14),
    DATA_APV_USER  VARCHAR2(20),
    DATA_APV_DATE  CHAR(8),
    DATA_APV_TIME  CHAR(14),
    RSV1           VARCHAR2(180),
    RSV2           VARCHAR2(180),
    RSV3           VARCHAR2(180),
    RSV4           VARCHAR2(180),
    RSV5           VARCHAR2(180),
    REMARKS        VARCHAR2(180)
)
/

comment on table GP_BM_ROLE_FUNC_REL is '角色资源映射表'
/

comment on column GP_BM_ROLE_FUNC_REL.ID is '数据ID'
/

comment on column GP_BM_ROLE_FUNC_REL.ROLE_ID is '角色Id'
/

comment on column GP_BM_ROLE_FUNC_REL.FUNCID is '菜单Id'
/

comment on column GP_BM_ROLE_FUNC_REL.CORP_ID is '法人机构号'
/

comment on column GP_BM_ROLE_FUNC_REL.ORG_ID is '机构号'
/

comment on column GP_BM_ROLE_FUNC_REL.GROUP_ID is '部门编号'
/

comment on column GP_BM_ROLE_FUNC_REL.CHECK_FLAG is '校验标识'
/

comment on column GP_BM_ROLE_FUNC_REL.CHECK_DESC is '校验结果'
/

comment on column GP_BM_ROLE_FUNC_REL.CHECK_ERR_TYPE is '校验失败类型'
/

comment on column GP_BM_ROLE_FUNC_REL.NEXT_ACTION is '下一动作'
/

comment on column GP_BM_ROLE_FUNC_REL.DATA_STATUS is '数据状态'
/

comment on column GP_BM_ROLE_FUNC_REL.DATA_FLAG is '数据是否已删除'
/

comment on column GP_BM_ROLE_FUNC_REL.DATA_SOURCE is '数据来源'
/

comment on column GP_BM_ROLE_FUNC_REL.DATA_VERSION is '数据版本'
/

comment on column GP_BM_ROLE_FUNC_REL.DATA_REJ_DESC is '数据审核拒绝原因'
/

comment on column GP_BM_ROLE_FUNC_REL.DATA_DEL_DESC is '数据删除描述'
/

comment on column GP_BM_ROLE_FUNC_REL.DATA_CRT_USER is '数据创建/导入用户'
/

comment on column GP_BM_ROLE_FUNC_REL.DATA_CRT_DATE is '数据创建/导入日期'
/

comment on column GP_BM_ROLE_FUNC_REL.DATA_CRT_TIME is '数据创建/导入时间'
/

comment on column GP_BM_ROLE_FUNC_REL.DATA_CHG_USER is '数据修改/删除用户'
/

comment on column GP_BM_ROLE_FUNC_REL.DATA_CHG_DATE is '数据修改/删除日期'
/

comment on column GP_BM_ROLE_FUNC_REL.DATA_CHG_TIME is '数据修改/删除时间'
/

comment on column GP_BM_ROLE_FUNC_REL.DATA_APV_USER is '数据审核/拒绝用户'
/

comment on column GP_BM_ROLE_FUNC_REL.DATA_APV_DATE is '数据审核/拒绝日期'
/

comment on column GP_BM_ROLE_FUNC_REL.DATA_APV_TIME is '数据审核/拒绝时间'
/

comment on column GP_BM_ROLE_FUNC_REL.RSV1 is '备用1'
/

comment on column GP_BM_ROLE_FUNC_REL.RSV2 is '备用2'
/

comment on column GP_BM_ROLE_FUNC_REL.RSV3 is '备用3'
/

comment on column GP_BM_ROLE_FUNC_REL.RSV4 is '备用4'
/

comment on column GP_BM_ROLE_FUNC_REL.RSV5 is '备用5'
/

create table GP_BM_ROLE_FUNC_REL_PENDING
(
    ID               CHAR(32) not null,
    ROLE_ID          VARCHAR2(32),
    FUNCID           VARCHAR2(32),
    CORP_ID          VARCHAR2(14),
    ORG_ID           VARCHAR2(14),
    GROUP_ID         VARCHAR2(14),
    CHECK_FLAG       CHAR,
    CHECK_DESC       VARCHAR2(512),
    CHECK_ERR_TYPE   CHAR,
    NEXT_ACTION      CHAR(2),
    DATA_STATUS      CHAR(2),
    DATA_FLAG        CHAR,
    DATA_SOURCE      CHAR,
    DATA_VERSION     NUMBER(8),
    DATA_REJ_DESC    VARCHAR2(128),
    DATA_DEL_DESC    VARCHAR2(128),
    DATA_CRT_USER    VARCHAR2(20),
    DATA_CRT_DATE    CHAR(8),
    DATA_CRT_TIME    CHAR(14),
    DATA_CHG_USER    VARCHAR2(20),
    DATA_CHG_DATE    CHAR(8),
    DATA_CHG_TIME    CHAR(14),
    DATA_APV_USER    VARCHAR2(20),
    DATA_APV_DATE    CHAR(8),
    DATA_APV_TIME    CHAR(14),
    RSV1             VARCHAR2(180),
    RSV2             VARCHAR2(180),
    RSV3             VARCHAR2(180),
    RSV4             VARCHAR2(180),
    RSV5             VARCHAR2(180),
    REMARKS          VARCHAR2(180),
    GPMS_NEXT_ACTION VARCHAR2(2)
)
/

comment on table GP_BM_ROLE_FUNC_REL_PENDING is '角色资源映射pending表'
/

comment on column GP_BM_ROLE_FUNC_REL_PENDING.ID is '数据ID'
/

comment on column GP_BM_ROLE_FUNC_REL_PENDING.ROLE_ID is '角色Id'
/

comment on column GP_BM_ROLE_FUNC_REL_PENDING.FUNCID is '菜单Id'
/

comment on column GP_BM_ROLE_FUNC_REL_PENDING.CORP_ID is '法人机构号'
/

comment on column GP_BM_ROLE_FUNC_REL_PENDING.ORG_ID is '机构号'
/

comment on column GP_BM_ROLE_FUNC_REL_PENDING.GROUP_ID is '部门编号'
/

comment on column GP_BM_ROLE_FUNC_REL_PENDING.CHECK_FLAG is '校验标识'
/

comment on column GP_BM_ROLE_FUNC_REL_PENDING.CHECK_DESC is '校验结果'
/

comment on column GP_BM_ROLE_FUNC_REL_PENDING.CHECK_ERR_TYPE is '校验失败类型'
/

comment on column GP_BM_ROLE_FUNC_REL_PENDING.NEXT_ACTION is '下一动作'
/

comment on column GP_BM_ROLE_FUNC_REL_PENDING.DATA_STATUS is '数据状态'
/

comment on column GP_BM_ROLE_FUNC_REL_PENDING.DATA_FLAG is '数据是否已删除'
/

comment on column GP_BM_ROLE_FUNC_REL_PENDING.DATA_SOURCE is '数据来源'
/

comment on column GP_BM_ROLE_FUNC_REL_PENDING.DATA_VERSION is '数据版本'
/

comment on column GP_BM_ROLE_FUNC_REL_PENDING.DATA_REJ_DESC is '数据审核拒绝原因'
/

comment on column GP_BM_ROLE_FUNC_REL_PENDING.DATA_DEL_DESC is '数据删除描述'
/

comment on column GP_BM_ROLE_FUNC_REL_PENDING.DATA_CRT_USER is '数据创建/导入用户'
/

comment on column GP_BM_ROLE_FUNC_REL_PENDING.DATA_CRT_DATE is '数据创建/导入日期'
/

comment on column GP_BM_ROLE_FUNC_REL_PENDING.DATA_CRT_TIME is '数据创建/导入时间'
/

comment on column GP_BM_ROLE_FUNC_REL_PENDING.DATA_CHG_USER is '数据修改/删除用户'
/

comment on column GP_BM_ROLE_FUNC_REL_PENDING.DATA_CHG_DATE is '数据修改/删除日期'
/

comment on column GP_BM_ROLE_FUNC_REL_PENDING.DATA_CHG_TIME is '数据修改/删除时间'
/

comment on column GP_BM_ROLE_FUNC_REL_PENDING.DATA_APV_USER is '数据审核/拒绝用户'
/

comment on column GP_BM_ROLE_FUNC_REL_PENDING.DATA_APV_DATE is '数据审核/拒绝日期'
/

comment on column GP_BM_ROLE_FUNC_REL_PENDING.DATA_APV_TIME is '数据审核/拒绝时间'
/

comment on column GP_BM_ROLE_FUNC_REL_PENDING.RSV1 is '备用1'
/

comment on column GP_BM_ROLE_FUNC_REL_PENDING.RSV2 is '备用2'
/

comment on column GP_BM_ROLE_FUNC_REL_PENDING.RSV3 is '备用3'
/

comment on column GP_BM_ROLE_FUNC_REL_PENDING.RSV4 is '备用4'
/

comment on column GP_BM_ROLE_FUNC_REL_PENDING.RSV5 is '备用5'
/

create table GP_BM_ROLE_INFO
(
    DATA_ID         VARCHAR2(64) not null
        primary key,
    DATA_DATE       CHAR(8),
    CORP_ID         VARCHAR2(14),
    ORG_ID          VARCHAR2(14),
    GROUP_ID        VARCHAR2(14),
    ROLE_ID         VARCHAR2(32),
    ROLE_NAME       VARCHAR2(90),
    STATUS          CHAR,
    EFFECT_DATE     CHAR(8),
    EXPIRE_DATE     CHAR(8),
    LAST_UPD_DATE   CHAR(8),
    LAST_UPD_FUNC   NUMBER,
    LAST_UPD_TLR    CHAR(8),
    MISCFLGS        CHAR(20),
    MISC            VARCHAR2(256),
    ROLE_TYPE       CHAR,
    NEXT_ACTION     CHAR(2),
    DATA_STATUS     CHAR(2),
    DATA_FLAG       CHAR,
    DATA_SOURCE     CHAR,
    CHECK_FLAG      CHAR,
    CHECK_DESC      VARCHAR2(512),
    CHECK_ERR_TYPE  CHAR,
    DATA_VERSION    NUMBER(8),
    DATA_REJ_DESC   VARCHAR2(128),
    DATA_DEL_DESC   VARCHAR2(128),
    DATA_CRT_USER   VARCHAR2(20),
    DATA_CRT_DATE   CHAR(8),
    DATA_CRT_TIME   CHAR(14),
    DATA_CHG_USER   VARCHAR2(20),
    DATA_CHG_DATE   CHAR(8),
    DATA_CHG_TIME   CHAR(14),
    DATA_APV_USER   VARCHAR2(20),
    DATA_APV_DATE   CHAR(8),
    DATA_APV_TIME   CHAR(14),
    RSV1            VARCHAR2(180),
    RSV2            VARCHAR2(180),
    RSV3            VARCHAR2(180),
    RSV4            VARCHAR2(180),
    RSV5            VARCHAR2(180),
    REMARKS         VARCHAR2(180),
    IS_LOCK         CHAR,
    ST              CHAR,
    CRT_DT          CHAR(8),
    GPMS_NEXTACTION VARCHAR2(2),
    BUSINESS_LINE   VARCHAR2(4000)
)
/

comment on table GP_BM_ROLE_INFO is '角色表'
/

comment on column GP_BM_ROLE_INFO.DATA_ID is '数据ID'
/

comment on column GP_BM_ROLE_INFO.DATA_DATE is '数据日期'
/

comment on column GP_BM_ROLE_INFO.CORP_ID is '法人机构号'
/

comment on column GP_BM_ROLE_INFO.ORG_ID is '机构号'
/

comment on column GP_BM_ROLE_INFO.GROUP_ID is '部门编号'
/

comment on column GP_BM_ROLE_INFO.ROLE_NAME is '1有效;0无效'
/

comment on column GP_BM_ROLE_INFO.NEXT_ACTION is '下一动作'
/

comment on column GP_BM_ROLE_INFO.DATA_STATUS is '数据状态'
/

comment on column GP_BM_ROLE_INFO.DATA_FLAG is '数据是否已删除'
/

comment on column GP_BM_ROLE_INFO.DATA_SOURCE is '数据来源'
/

comment on column GP_BM_ROLE_INFO.CHECK_FLAG is '校验标识'
/

comment on column GP_BM_ROLE_INFO.CHECK_DESC is '校验结果'
/

comment on column GP_BM_ROLE_INFO.CHECK_ERR_TYPE is '校验失败类型'
/

comment on column GP_BM_ROLE_INFO.DATA_VERSION is '数据版本'
/

comment on column GP_BM_ROLE_INFO.DATA_REJ_DESC is '数据审核拒绝原因'
/

comment on column GP_BM_ROLE_INFO.DATA_DEL_DESC is '数据删除描述'
/

comment on column GP_BM_ROLE_INFO.DATA_CRT_USER is '数据创建/导入用户'
/

comment on column GP_BM_ROLE_INFO.DATA_CRT_DATE is '数据创建/导入日期'
/

comment on column GP_BM_ROLE_INFO.DATA_CRT_TIME is '数据创建/导入时间'
/

comment on column GP_BM_ROLE_INFO.DATA_CHG_USER is '数据修改/删除用户'
/

comment on column GP_BM_ROLE_INFO.DATA_CHG_DATE is '数据修改/删除日期'
/

comment on column GP_BM_ROLE_INFO.DATA_CHG_TIME is '数据修改/删除时间'
/

comment on column GP_BM_ROLE_INFO.DATA_APV_USER is '数据审核/拒绝用户'
/

comment on column GP_BM_ROLE_INFO.DATA_APV_DATE is '数据审核/拒绝日期'
/

comment on column GP_BM_ROLE_INFO.DATA_APV_TIME is '数据审核/拒绝时间'
/

comment on column GP_BM_ROLE_INFO.RSV1 is '备用1'
/

comment on column GP_BM_ROLE_INFO.RSV2 is '备用2'
/

comment on column GP_BM_ROLE_INFO.RSV3 is '备用3'
/

comment on column GP_BM_ROLE_INFO.RSV4 is '备用4'
/

comment on column GP_BM_ROLE_INFO.RSV5 is '备用5'
/

create table GP_BM_ROLE_INFO_PENDING
(
    DATA_ID          VARCHAR2(64) not null
        primary key,
    DATA_DATE        CHAR(8),
    CORP_ID          VARCHAR2(14),
    ORG_ID           VARCHAR2(14),
    GROUP_ID         VARCHAR2(14),
    ROLE_ID          VARCHAR2(32),
    ROLE_NAME        VARCHAR2(90),
    STATUS           CHAR,
    EFFECT_DATE      CHAR(8),
    EXPIRE_DATE      CHAR(8),
    LAST_UPD_DATE    CHAR(8),
    LAST_UPD_FUNC    NUMBER,
    LAST_UPD_TLR     CHAR(8),
    MISCFLGS         CHAR(20),
    MISC             VARCHAR2(256),
    ROLE_TYPE        CHAR,
    NEXT_ACTION      CHAR(2),
    DATA_STATUS      CHAR(2),
    DATA_FLAG        CHAR,
    DATA_SOURCE      CHAR,
    CHECK_FLAG       CHAR,
    CHECK_DESC       VARCHAR2(512),
    CHECK_ERR_TYPE   CHAR,
    DATA_VERSION     NUMBER(8),
    DATA_REJ_DESC    VARCHAR2(128),
    DATA_DEL_DESC    VARCHAR2(128),
    DATA_CRT_USER    VARCHAR2(20),
    DATA_CRT_DATE    CHAR(8),
    DATA_CRT_TIME    CHAR(14),
    DATA_CHG_USER    VARCHAR2(20),
    DATA_CHG_DATE    CHAR(8),
    DATA_CHG_TIME    CHAR(14),
    DATA_APV_USER    VARCHAR2(20),
    DATA_APV_DATE    CHAR(8),
    DATA_APV_TIME    CHAR(14),
    RSV1             VARCHAR2(180),
    RSV2             VARCHAR2(180),
    RSV3             VARCHAR2(180),
    RSV4             VARCHAR2(180),
    RSV5             VARCHAR2(180),
    REMARKS          VARCHAR2(180),
    IS_LOCK          CHAR,
    ST               CHAR,
    CRT_DT           CHAR(8),
    GPMS_NEXT_ACTION VARCHAR2(2),
    BUSINESS_LINE    VARCHAR2(4000)
)
/

comment on table GP_BM_ROLE_INFO_PENDING is '角色pending表'
/

comment on column GP_BM_ROLE_INFO_PENDING.DATA_ID is '数据ID'
/

comment on column GP_BM_ROLE_INFO_PENDING.DATA_DATE is '数据日期'
/

comment on column GP_BM_ROLE_INFO_PENDING.CORP_ID is '法人机构号'
/

comment on column GP_BM_ROLE_INFO_PENDING.ORG_ID is '机构号'
/

comment on column GP_BM_ROLE_INFO_PENDING.GROUP_ID is '部门编号'
/

comment on column GP_BM_ROLE_INFO_PENDING.ROLE_ID is '岗位ID'
/

comment on column GP_BM_ROLE_INFO_PENDING.ROLE_NAME is '岗位名称'
/

comment on column GP_BM_ROLE_INFO_PENDING.STATUS is '状态'
/

comment on column GP_BM_ROLE_INFO_PENDING.EFFECT_DATE is '有效日期开始'
/

comment on column GP_BM_ROLE_INFO_PENDING.EXPIRE_DATE is '有效日期结束'
/

comment on column GP_BM_ROLE_INFO_PENDING.LAST_UPD_DATE is '最后更新日期'
/

comment on column GP_BM_ROLE_INFO_PENDING.LAST_UPD_FUNC is '最后更新功能ID'
/

comment on column GP_BM_ROLE_INFO_PENDING.LAST_UPD_TLR is '最后更新人'
/

comment on column GP_BM_ROLE_INFO_PENDING.MISCFLGS is '扩展标志位'
/

comment on column GP_BM_ROLE_INFO_PENDING.MISC is '扩展标志位'
/

comment on column GP_BM_ROLE_INFO_PENDING.ROLE_TYPE is '角色类型：枚举'
/

comment on column GP_BM_ROLE_INFO_PENDING.NEXT_ACTION is '下一动作'
/

comment on column GP_BM_ROLE_INFO_PENDING.DATA_STATUS is '数据状态'
/

comment on column GP_BM_ROLE_INFO_PENDING.DATA_FLAG is '数据是否已删除'
/

comment on column GP_BM_ROLE_INFO_PENDING.DATA_SOURCE is '数据来源'
/

comment on column GP_BM_ROLE_INFO_PENDING.CHECK_FLAG is '校验标识'
/

comment on column GP_BM_ROLE_INFO_PENDING.CHECK_DESC is '校验结果'
/

comment on column GP_BM_ROLE_INFO_PENDING.CHECK_ERR_TYPE is '校验失败类型'
/

comment on column GP_BM_ROLE_INFO_PENDING.DATA_VERSION is '数据版本'
/

comment on column GP_BM_ROLE_INFO_PENDING.DATA_REJ_DESC is '数据审核拒绝原因'
/

comment on column GP_BM_ROLE_INFO_PENDING.DATA_DEL_DESC is '数据删除描述'
/

comment on column GP_BM_ROLE_INFO_PENDING.DATA_CRT_USER is '数据创建/导入用户'
/

comment on column GP_BM_ROLE_INFO_PENDING.DATA_CRT_DATE is '数据创建/导入日期'
/

comment on column GP_BM_ROLE_INFO_PENDING.DATA_CRT_TIME is '数据创建/导入时间'
/

comment on column GP_BM_ROLE_INFO_PENDING.DATA_CHG_USER is '数据修改/删除用户'
/

comment on column GP_BM_ROLE_INFO_PENDING.DATA_CHG_DATE is '数据修改/删除日期'
/

comment on column GP_BM_ROLE_INFO_PENDING.DATA_CHG_TIME is '数据修改/删除时间'
/

comment on column GP_BM_ROLE_INFO_PENDING.DATA_APV_USER is '数据审核/拒绝用户'
/

comment on column GP_BM_ROLE_INFO_PENDING.DATA_APV_DATE is '数据审核/拒绝日期'
/

comment on column GP_BM_ROLE_INFO_PENDING.DATA_APV_TIME is '数据审核/拒绝时间'
/

comment on column GP_BM_ROLE_INFO_PENDING.RSV1 is '备用1'
/

comment on column GP_BM_ROLE_INFO_PENDING.RSV2 is '备用2'
/

comment on column GP_BM_ROLE_INFO_PENDING.RSV3 is '备用3'
/

comment on column GP_BM_ROLE_INFO_PENDING.RSV4 is '备用4'
/

comment on column GP_BM_ROLE_INFO_PENDING.RSV5 is '备用5'
/

comment on column GP_BM_ROLE_INFO_PENDING.REMARKS is '备注'
/

create table GP_BM_ROLE_ORG_REL
(
    DATA_ID         VARCHAR2(64) not null
        primary key,
    DATA_DATE       CHAR(8),
    CORP_ID         VARCHAR2(14),
    ORG_ID          VARCHAR2(14),
    GROUP_ID        VARCHAR2(14),
    ROLE_ID         VARCHAR2(32),
    CHG_ORG_ID      VARCHAR2(32),
    REMARK          VARCHAR2(512),
    NEXT_ACTION     CHAR(2),
    DATA_STATUS     CHAR(2),
    DATA_FLAG       CHAR,
    DATA_SOURCE     CHAR,
    CHECK_FLAG      CHAR,
    CHECK_DESC      VARCHAR2(512),
    CHECK_ERR_TYPE  CHAR,
    DATA_VERSION    NUMBER(8),
    DATA_REJ_DESC   VARCHAR2(128),
    DATA_DEL_DESC   VARCHAR2(128),
    DATA_CRT_USER   VARCHAR2(20),
    DATA_CRT_DATE   CHAR(8),
    DATA_CRT_TIME   CHAR(14),
    DATA_CHG_USER   VARCHAR2(20),
    DATA_CHG_DATE   CHAR(8),
    DATA_CHG_TIME   CHAR(14),
    DATA_APV_USER   VARCHAR2(20),
    DATA_APV_DATE   CHAR(8),
    DATA_APV_TIME   CHAR(14),
    RSV1            VARCHAR2(180),
    RSV2            VARCHAR2(180),
    RSV3            VARCHAR2(180),
    RSV4            VARCHAR2(180),
    RSV5            VARCHAR2(180),
    GPMS_NEXTACTION VARCHAR2(2)
)
/

comment on table GP_BM_ROLE_ORG_REL is '角色允许切换机构配置表'
/

comment on column GP_BM_ROLE_ORG_REL.DATA_ID is '数据ID'
/

comment on column GP_BM_ROLE_ORG_REL.DATA_DATE is '数据日期'
/

comment on column GP_BM_ROLE_ORG_REL.CORP_ID is '法人机构号'
/

comment on column GP_BM_ROLE_ORG_REL.ORG_ID is '机构号'
/

comment on column GP_BM_ROLE_ORG_REL.GROUP_ID is '部门编号'
/

comment on column GP_BM_ROLE_ORG_REL.ROLE_ID is '岗位ID'
/

comment on column GP_BM_ROLE_ORG_REL.CHG_ORG_ID is '机构ID'
/

comment on column GP_BM_ROLE_ORG_REL.REMARK is '备注'
/

comment on column GP_BM_ROLE_ORG_REL.NEXT_ACTION is '下一动作'
/

comment on column GP_BM_ROLE_ORG_REL.DATA_STATUS is '数据状态'
/

comment on column GP_BM_ROLE_ORG_REL.DATA_FLAG is '数据是否已删除'
/

comment on column GP_BM_ROLE_ORG_REL.DATA_SOURCE is '数据来源'
/

comment on column GP_BM_ROLE_ORG_REL.CHECK_FLAG is '校验标识'
/

comment on column GP_BM_ROLE_ORG_REL.CHECK_DESC is '校验结果'
/

comment on column GP_BM_ROLE_ORG_REL.CHECK_ERR_TYPE is '校验失败类型'
/

comment on column GP_BM_ROLE_ORG_REL.DATA_VERSION is '数据版本'
/

comment on column GP_BM_ROLE_ORG_REL.DATA_REJ_DESC is '数据审核拒绝原因'
/

comment on column GP_BM_ROLE_ORG_REL.DATA_DEL_DESC is '数据删除描述'
/

comment on column GP_BM_ROLE_ORG_REL.DATA_CRT_USER is '数据创建/导入用户'
/

comment on column GP_BM_ROLE_ORG_REL.DATA_CRT_DATE is '数据创建/导入日期'
/

comment on column GP_BM_ROLE_ORG_REL.DATA_CRT_TIME is '数据创建/导入时间'
/

comment on column GP_BM_ROLE_ORG_REL.DATA_CHG_USER is '数据修改/删除用户'
/

comment on column GP_BM_ROLE_ORG_REL.DATA_CHG_DATE is '数据修改/删除日期'
/

comment on column GP_BM_ROLE_ORG_REL.DATA_CHG_TIME is '数据修改/删除时间'
/

comment on column GP_BM_ROLE_ORG_REL.DATA_APV_USER is '数据审核/拒绝用户'
/

comment on column GP_BM_ROLE_ORG_REL.DATA_APV_DATE is '数据审核/拒绝日期'
/

comment on column GP_BM_ROLE_ORG_REL.DATA_APV_TIME is '数据审核/拒绝时间'
/

comment on column GP_BM_ROLE_ORG_REL.RSV1 is '备用1'
/

comment on column GP_BM_ROLE_ORG_REL.RSV2 is '备用2'
/

comment on column GP_BM_ROLE_ORG_REL.RSV3 is '备用3'
/

comment on column GP_BM_ROLE_ORG_REL.RSV4 is '备用4'
/

comment on column GP_BM_ROLE_ORG_REL.RSV5 is '备用5'
/

create table GP_BM_ROLE_ORG_REL_PENDING
(
    DATA_ID         VARCHAR2(64) not null,
    DATA_DATE       CHAR(8),
    CORP_ID         VARCHAR2(14),
    ORG_ID          VARCHAR2(14),
    GROUP_ID        VARCHAR2(14),
    ROLE_ID         VARCHAR2(32),
    CHG_ORG_ID      VARCHAR2(32),
    REMARK          VARCHAR2(512),
    NEXT_ACTION     CHAR(2),
    DATA_STATUS     CHAR(2),
    DATA_FLAG       CHAR,
    DATA_SOURCE     CHAR,
    CHECK_FLAG      CHAR,
    CHECK_DESC      VARCHAR2(512),
    CHECK_ERR_TYPE  CHAR,
    DATA_VERSION    NUMBER(8),
    DATA_REJ_DESC   VARCHAR2(128),
    DATA_DEL_DESC   VARCHAR2(128),
    DATA_CRT_USER   VARCHAR2(20),
    DATA_CRT_DATE   CHAR(8),
    DATA_CRT_TIME   CHAR(14),
    DATA_CHG_USER   VARCHAR2(20),
    DATA_CHG_DATE   CHAR(8),
    DATA_CHG_TIME   CHAR(14),
    DATA_APV_USER   VARCHAR2(20),
    DATA_APV_DATE   CHAR(8),
    DATA_APV_TIME   CHAR(14),
    RSV1            VARCHAR2(180),
    RSV2            VARCHAR2(180),
    RSV3            VARCHAR2(180),
    RSV4            VARCHAR2(180),
    RSV5            VARCHAR2(180),
    GPMS_NEXTACTION VARCHAR2(2)
)
/

comment on table GP_BM_ROLE_ORG_REL_PENDING is '角色允许切换机构配置pending表'
/

comment on column GP_BM_ROLE_ORG_REL_PENDING.DATA_ID is '数据ID'
/

comment on column GP_BM_ROLE_ORG_REL_PENDING.DATA_DATE is '数据日期'
/

comment on column GP_BM_ROLE_ORG_REL_PENDING.CORP_ID is '法人机构号'
/

comment on column GP_BM_ROLE_ORG_REL_PENDING.ORG_ID is '机构号'
/

comment on column GP_BM_ROLE_ORG_REL_PENDING.GROUP_ID is '部门编号'
/

comment on column GP_BM_ROLE_ORG_REL_PENDING.ROLE_ID is '岗位ID'
/

comment on column GP_BM_ROLE_ORG_REL_PENDING.CHG_ORG_ID is '机构ID'
/

comment on column GP_BM_ROLE_ORG_REL_PENDING.REMARK is '备注'
/

comment on column GP_BM_ROLE_ORG_REL_PENDING.NEXT_ACTION is '下一动作'
/

comment on column GP_BM_ROLE_ORG_REL_PENDING.DATA_STATUS is '数据状态'
/

comment on column GP_BM_ROLE_ORG_REL_PENDING.DATA_FLAG is '数据是否已删除'
/

comment on column GP_BM_ROLE_ORG_REL_PENDING.DATA_SOURCE is '数据来源'
/

comment on column GP_BM_ROLE_ORG_REL_PENDING.CHECK_FLAG is '校验标识'
/

comment on column GP_BM_ROLE_ORG_REL_PENDING.CHECK_DESC is '校验结果'
/

comment on column GP_BM_ROLE_ORG_REL_PENDING.CHECK_ERR_TYPE is '校验失败类型'
/

comment on column GP_BM_ROLE_ORG_REL_PENDING.DATA_VERSION is '数据版本'
/

comment on column GP_BM_ROLE_ORG_REL_PENDING.DATA_REJ_DESC is '数据审核拒绝原因'
/

comment on column GP_BM_ROLE_ORG_REL_PENDING.DATA_DEL_DESC is '数据删除描述'
/

comment on column GP_BM_ROLE_ORG_REL_PENDING.DATA_CRT_USER is '数据创建/导入用户'
/

comment on column GP_BM_ROLE_ORG_REL_PENDING.DATA_CRT_DATE is '数据创建/导入日期'
/

comment on column GP_BM_ROLE_ORG_REL_PENDING.DATA_CRT_TIME is '数据创建/导入时间'
/

comment on column GP_BM_ROLE_ORG_REL_PENDING.DATA_CHG_USER is '数据修改/删除用户'
/

comment on column GP_BM_ROLE_ORG_REL_PENDING.DATA_CHG_DATE is '数据修改/删除日期'
/

comment on column GP_BM_ROLE_ORG_REL_PENDING.DATA_CHG_TIME is '数据修改/删除时间'
/

comment on column GP_BM_ROLE_ORG_REL_PENDING.DATA_APV_USER is '数据审核/拒绝用户'
/

comment on column GP_BM_ROLE_ORG_REL_PENDING.DATA_APV_DATE is '数据审核/拒绝日期'
/

comment on column GP_BM_ROLE_ORG_REL_PENDING.DATA_APV_TIME is '数据审核/拒绝时间'
/

comment on column GP_BM_ROLE_ORG_REL_PENDING.RSV1 is '备用1'
/

comment on column GP_BM_ROLE_ORG_REL_PENDING.RSV2 is '备用2'
/

comment on column GP_BM_ROLE_ORG_REL_PENDING.RSV3 is '备用3'
/

comment on column GP_BM_ROLE_ORG_REL_PENDING.RSV4 is '备用4'
/

comment on column GP_BM_ROLE_ORG_REL_PENDING.RSV5 is '备用5'
/

create table GP_BM_SCHEDULES
(
    DATA_ID          VARCHAR2(64) not null,
    DATA_DATE        CHAR(8),
    CORP_ID          VARCHAR2(14),
    ORG_ID           VARCHAR2(14),
    GROUP_ID         VARCHAR2(14),
    ID               NUMBER,
    OBJ_VERSION      NUMBER,
    CREATED          CHAR(8),
    LAST_MODIFIED    CHAR(8),
    NAME             VARCHAR2(255),
    DESCRIPTION      VARCHAR2(255),
    TYPE             VARCHAR2(20),
    RUN_DETAIL       VARCHAR2(255),
    STATUS           VARCHAR2(20),
    RUN_SECOND       VARCHAR2(255),
    RUN_MINUTE       VARCHAR2(255),
    RUN_HOUR         VARCHAR2(255),
    RUN_DAY_IN_MONTH VARCHAR2(255),
    RUN_MONTH        VARCHAR2(255),
    RUN_DAY_IN_WEEK  VARCHAR2(255),
    RUN_YEAR         VARCHAR2(255),
    JOB_ID           NUMBER,
    RUN_STATUS       NUMBER,
    NEXT_ACTION      CHAR(2),
    DATA_STATUS      CHAR(2),
    DATA_FLAG        CHAR,
    DATA_SOURCE      CHAR,
    CHECK_FLAG       CHAR,
    CHECK_DESC       VARCHAR2(512),
    CHECK_ERR_TYPE   CHAR,
    DATA_VERSION     NUMBER(8),
    DATA_REJ_DESC    VARCHAR2(128),
    DATA_DEL_DESC    VARCHAR2(128),
    DATA_CRT_USER    VARCHAR2(20),
    DATA_CRT_DATE    CHAR(8),
    DATA_CRT_TIME    CHAR(14),
    DATA_CHG_USER    VARCHAR2(20),
    DATA_CHG_DATE    CHAR(8),
    DATA_CHG_TIME    CHAR(14),
    DATA_APV_USER    VARCHAR2(20),
    DATA_APV_DATE    CHAR(8),
    DATA_APV_TIME    CHAR(14),
    RSV1             VARCHAR2(180),
    RSV2             VARCHAR2(180),
    RSV3             VARCHAR2(180),
    RSV4             VARCHAR2(180),
    RSV5             VARCHAR2(180),
    REMARKS          VARCHAR2(180)
)
/

comment on table GP_BM_SCHEDULES is '任务执行计划表'
/

comment on column GP_BM_SCHEDULES.DATA_ID is '数据ID'
/

comment on column GP_BM_SCHEDULES.DATA_DATE is '数据日期'
/

comment on column GP_BM_SCHEDULES.CORP_ID is '法人机构号'
/

comment on column GP_BM_SCHEDULES.ORG_ID is '机构号'
/

comment on column GP_BM_SCHEDULES.GROUP_ID is '部门编号'
/

comment on column GP_BM_SCHEDULES.NEXT_ACTION is '下一动作'
/

comment on column GP_BM_SCHEDULES.DATA_STATUS is '数据状态'
/

comment on column GP_BM_SCHEDULES.DATA_FLAG is '数据是否已删除'
/

comment on column GP_BM_SCHEDULES.DATA_SOURCE is '数据来源'
/

comment on column GP_BM_SCHEDULES.CHECK_FLAG is '校验标识'
/

comment on column GP_BM_SCHEDULES.CHECK_DESC is '校验结果'
/

comment on column GP_BM_SCHEDULES.CHECK_ERR_TYPE is '校验失败类型'
/

comment on column GP_BM_SCHEDULES.DATA_VERSION is '数据版本'
/

comment on column GP_BM_SCHEDULES.DATA_REJ_DESC is '数据审核拒绝原因'
/

comment on column GP_BM_SCHEDULES.DATA_DEL_DESC is '数据删除描述'
/

comment on column GP_BM_SCHEDULES.DATA_CRT_USER is '数据创建/导入用户'
/

comment on column GP_BM_SCHEDULES.DATA_CRT_DATE is '数据创建/导入日期'
/

comment on column GP_BM_SCHEDULES.DATA_CRT_TIME is '数据创建/导入时间'
/

comment on column GP_BM_SCHEDULES.DATA_CHG_USER is '数据修改/删除用户'
/

comment on column GP_BM_SCHEDULES.DATA_CHG_DATE is '数据修改/删除日期'
/

comment on column GP_BM_SCHEDULES.DATA_CHG_TIME is '数据修改/删除时间'
/

comment on column GP_BM_SCHEDULES.DATA_APV_USER is '数据审核/拒绝用户'
/

comment on column GP_BM_SCHEDULES.DATA_APV_DATE is '数据审核/拒绝日期'
/

comment on column GP_BM_SCHEDULES.DATA_APV_TIME is '数据审核/拒绝时间'
/

comment on column GP_BM_SCHEDULES.RSV1 is '备用1'
/

comment on column GP_BM_SCHEDULES.RSV2 is '备用2'
/

comment on column GP_BM_SCHEDULES.RSV3 is '备用3'
/

comment on column GP_BM_SCHEDULES.RSV4 is '备用4'
/

comment on column GP_BM_SCHEDULES.RSV5 is '备用5'
/

comment on column GP_BM_SCHEDULES.REMARKS is '备注'
/

create table GP_BM_SYS_PARAM
(
    DATA_ID        VARCHAR2(64) not null
        primary key,
    DATA_DATE      CHAR(8),
    CORP_ID        VARCHAR2(14),
    ORG_ID         VARCHAR2(14),
    GROUP_ID       VARCHAR2(14),
    PARAM_ID       VARCHAR2(20),
    PARAM_GROUP_ID VARCHAR2(20),
    PARAM_START_DT CHAR(8),
    PARAM_END_DT   CHAR(8),
    PARAM_NAME     VARCHAR2(512),
    PARAM_VALUE    VARCHAR2(512),
    LOAD_TYPE      CHAR,
    IF_CANMODIFY   CHAR,
    LAST_UPD_TLR   CHAR(8),
    LAST_UPD_FUNC  VARCHAR2(10),
    LAST_UPD_DATE  CHAR(8),
    NEXT_ACTION    CHAR(2),
    DATA_STATUS    CHAR(2),
    DATA_FLAG      CHAR,
    DATA_SOURCE    CHAR,
    CHECK_FLAG     CHAR,
    CHECK_DESC     VARCHAR2(512),
    CHECK_ERR_TYPE CHAR,
    DATA_VERSION   NUMBER(8),
    DATA_REJ_DESC  VARCHAR2(128),
    DATA_DEL_DESC  VARCHAR2(128),
    DATA_CRT_USER  VARCHAR2(20),
    DATA_CRT_DATE  CHAR(8),
    DATA_CRT_TIME  CHAR(14),
    DATA_CHG_USER  VARCHAR2(20),
    DATA_CHG_DATE  CHAR(8),
    DATA_CHG_TIME  CHAR(14),
    DATA_APV_USER  VARCHAR2(20),
    DATA_APV_DATE  CHAR(8),
    DATA_APV_TIME  CHAR(14),
    RSV1           VARCHAR2(180),
    RSV2           VARCHAR2(180),
    RSV3           VARCHAR2(180),
    RSV4           VARCHAR2(180),
    RSV5           VARCHAR2(180),
    REMARKS        VARCHAR2(180),
    CATALOG        VARCHAR2(20)
)
/

comment on table GP_BM_SYS_PARAM is '系统参数表'
/

comment on column GP_BM_SYS_PARAM.DATA_ID is '数据ID'
/

comment on column GP_BM_SYS_PARAM.DATA_DATE is '数据日期'
/

comment on column GP_BM_SYS_PARAM.CORP_ID is '法人机构号'
/

comment on column GP_BM_SYS_PARAM.ORG_ID is '机构号'
/

comment on column GP_BM_SYS_PARAM.GROUP_ID is '部门编号'
/

comment on column GP_BM_SYS_PARAM.PARAM_ID is '参数ID'
/

comment on column GP_BM_SYS_PARAM.PARAM_GROUP_ID is '参数组号'
/

comment on column GP_BM_SYS_PARAM.PARAM_START_DT is '有效期起'
/

comment on column GP_BM_SYS_PARAM.PARAM_END_DT is '有效止日'
/

comment on column GP_BM_SYS_PARAM.PARAM_NAME is '参数名称'
/

comment on column GP_BM_SYS_PARAM.PARAM_VALUE is '参数值'
/

comment on column GP_BM_SYS_PARAM.LOAD_TYPE is '加载方式'
/

comment on column GP_BM_SYS_PARAM.IF_CANMODIFY is '是否可修改'
/

comment on column GP_BM_SYS_PARAM.LAST_UPD_TLR is '最后更新操作员'
/

comment on column GP_BM_SYS_PARAM.LAST_UPD_FUNC is '最后修改交易码'
/

comment on column GP_BM_SYS_PARAM.LAST_UPD_DATE is '最后更新时间'
/

comment on column GP_BM_SYS_PARAM.NEXT_ACTION is '下一动作'
/

comment on column GP_BM_SYS_PARAM.DATA_STATUS is '数据状态'
/

comment on column GP_BM_SYS_PARAM.DATA_FLAG is '数据是否已删除'
/

comment on column GP_BM_SYS_PARAM.DATA_SOURCE is '数据来源'
/

comment on column GP_BM_SYS_PARAM.CHECK_FLAG is '校验标识'
/

comment on column GP_BM_SYS_PARAM.CHECK_DESC is '校验结果'
/

comment on column GP_BM_SYS_PARAM.CHECK_ERR_TYPE is '校验失败类型'
/

comment on column GP_BM_SYS_PARAM.DATA_VERSION is '数据版本'
/

comment on column GP_BM_SYS_PARAM.DATA_REJ_DESC is '数据审核拒绝原因'
/

comment on column GP_BM_SYS_PARAM.DATA_DEL_DESC is '数据删除描述'
/

comment on column GP_BM_SYS_PARAM.DATA_CRT_USER is '数据创建/导入用户'
/

comment on column GP_BM_SYS_PARAM.DATA_CRT_DATE is '数据创建/导入日期'
/

comment on column GP_BM_SYS_PARAM.DATA_CRT_TIME is '数据创建/导入时间'
/

comment on column GP_BM_SYS_PARAM.DATA_CHG_USER is '数据修改/删除用户'
/

comment on column GP_BM_SYS_PARAM.DATA_CHG_DATE is '数据修改/删除日期'
/

comment on column GP_BM_SYS_PARAM.DATA_CHG_TIME is '数据修改/删除时间'
/

comment on column GP_BM_SYS_PARAM.DATA_APV_USER is '数据审核/拒绝用户'
/

comment on column GP_BM_SYS_PARAM.DATA_APV_DATE is '数据审核/拒绝日期'
/

comment on column GP_BM_SYS_PARAM.DATA_APV_TIME is '数据审核/拒绝时间'
/

comment on column GP_BM_SYS_PARAM.RSV1 is '备用1'
/

comment on column GP_BM_SYS_PARAM.RSV2 is '备用2'
/

comment on column GP_BM_SYS_PARAM.RSV3 is '备用3'
/

comment on column GP_BM_SYS_PARAM.RSV4 is '备用4'
/

comment on column GP_BM_SYS_PARAM.RSV5 is '备用5'
/

comment on column GP_BM_SYS_PARAM.REMARKS is '备注'
/

comment on column GP_BM_SYS_PARAM.CATALOG is '参数分类'
/

create table GP_BM_SYS_STAT
(
    DATA_ID          VARCHAR2(64) not null
        primary key,
    DATA_DATE        CHAR(8),
    CORP_ID          VARCHAR2(14),
    ORG_ID           VARCHAR2(14),
    GROUP_ID         VARCHAR2(14),
    SYSTEM_NAME      VARCHAR2(20),
    SYS_DATE         CHAR(8),
    LAST_WORK_DATE   CHAR(8),
    WORK_DATE        CHAR(8),
    NEXT_WORK_DATE   CHAR(8),
    BH_DATE          CHAR(8),
    REPORT_DATE      CHAR(8),
    CURR_REPORT_DATE CHAR(8),
    STATUS           CHAR,
    NEXT_ACTION      CHAR(2),
    DATA_STATUS      CHAR(2),
    DATA_FLAG        CHAR,
    DATA_SOURCE      CHAR,
    CHECK_FLAG       CHAR,
    CHECK_DESC       VARCHAR2(512),
    CHECK_ERR_TYPE   CHAR,
    DATA_VERSION     NUMBER(8),
    DATA_REJ_DESC    VARCHAR2(128),
    DATA_DEL_DESC    VARCHAR2(128),
    DATA_CRT_USER    VARCHAR2(20),
    DATA_CRT_DATE    CHAR(8),
    DATA_CRT_TIME    CHAR(14),
    DATA_CHG_USER    VARCHAR2(20),
    DATA_CHG_DATE    CHAR(8),
    DATA_CHG_TIME    CHAR(14),
    DATA_APV_USER    VARCHAR2(20),
    DATA_APV_DATE    CHAR(8),
    DATA_APV_TIME    CHAR(14),
    RSV1             VARCHAR2(180),
    RSV2             VARCHAR2(180),
    RSV3             VARCHAR2(180),
    RSV4             VARCHAR2(180),
    RSV5             VARCHAR2(180),
    REMARKS          VARCHAR2(180)
)
/

comment on table GP_BM_SYS_STAT is '系统状态表'
/

comment on column GP_BM_SYS_STAT.DATA_ID is '数据ID'
/

comment on column GP_BM_SYS_STAT.DATA_DATE is '数据日期'
/

comment on column GP_BM_SYS_STAT.CORP_ID is '法人机构号'
/

comment on column GP_BM_SYS_STAT.ORG_ID is '机构号'
/

comment on column GP_BM_SYS_STAT.GROUP_ID is '部门编号'
/

comment on column GP_BM_SYS_STAT.SYSTEM_NAME is '系统简称'
/

comment on column GP_BM_SYS_STAT.SYS_DATE is '系统日期'
/

comment on column GP_BM_SYS_STAT.LAST_WORK_DATE is '上一工作日'
/

comment on column GP_BM_SYS_STAT.WORK_DATE is '工作日'
/

comment on column GP_BM_SYS_STAT.NEXT_WORK_DATE is '下一工作日'
/

comment on column GP_BM_SYS_STAT.BH_DATE is '批量日期'
/

comment on column GP_BM_SYS_STAT.REPORT_DATE is '报告期'
/

comment on column GP_BM_SYS_STAT.CURR_REPORT_DATE is '当前报告期'
/

comment on column GP_BM_SYS_STAT.STATUS is '状态 0-联机状态；1-批量状态'
/

comment on column GP_BM_SYS_STAT.NEXT_ACTION is '下一动作'
/

comment on column GP_BM_SYS_STAT.DATA_STATUS is '数据状态'
/

comment on column GP_BM_SYS_STAT.DATA_FLAG is '数据是否已删除'
/

comment on column GP_BM_SYS_STAT.DATA_SOURCE is '数据来源'
/

comment on column GP_BM_SYS_STAT.CHECK_FLAG is '校验标识'
/

comment on column GP_BM_SYS_STAT.CHECK_DESC is '校验结果'
/

comment on column GP_BM_SYS_STAT.CHECK_ERR_TYPE is '校验失败类型'
/

comment on column GP_BM_SYS_STAT.DATA_VERSION is '数据版本'
/

comment on column GP_BM_SYS_STAT.DATA_REJ_DESC is '数据审核拒绝原因'
/

comment on column GP_BM_SYS_STAT.DATA_DEL_DESC is '数据删除描述'
/

comment on column GP_BM_SYS_STAT.DATA_CRT_USER is '数据创建/导入用户'
/

comment on column GP_BM_SYS_STAT.DATA_CRT_DATE is '数据创建/导入日期'
/

comment on column GP_BM_SYS_STAT.DATA_CRT_TIME is '数据创建/导入时间'
/

comment on column GP_BM_SYS_STAT.DATA_CHG_USER is '数据修改/删除用户'
/

comment on column GP_BM_SYS_STAT.DATA_CHG_DATE is '数据修改/删除日期'
/

comment on column GP_BM_SYS_STAT.DATA_CHG_TIME is '数据修改/删除时间'
/

comment on column GP_BM_SYS_STAT.DATA_APV_USER is '数据审核/拒绝用户'
/

comment on column GP_BM_SYS_STAT.DATA_APV_DATE is '数据审核/拒绝日期'
/

comment on column GP_BM_SYS_STAT.DATA_APV_TIME is '数据审核/拒绝时间'
/

comment on column GP_BM_SYS_STAT.RSV1 is '备用1'
/

comment on column GP_BM_SYS_STAT.RSV2 is '备用2'
/

comment on column GP_BM_SYS_STAT.RSV3 is '备用3'
/

comment on column GP_BM_SYS_STAT.RSV4 is '备用4'
/

comment on column GP_BM_SYS_STAT.RSV5 is '备用5'
/

comment on column GP_BM_SYS_STAT.REMARKS is '备注'
/

create table GP_BM_TABLE_CHECK_CONFIG
(
    DATA_ID        VARCHAR2(64) not null
        primary key,
    DATA_DATE      CHAR(8),
    CORP_ID        VARCHAR2(14),
    ORG_ID         VARCHAR2(14),
    GROUP_ID       VARCHAR2(14),
    INQ_ORG_ID     CHAR(24),
    INQ_GROUP_ID   CHAR(24),
    CK_GROUP       VARCHAR2(32) not null,
    TABLE_NAME     VARCHAR2(128),
    CHECK_FLAG     CHAR,
    SEQ_NO         NUMBER,
    CONDITIONS     VARCHAR2(512),
    NEXT_ACTION    CHAR(2),
    DATA_STATUS    CHAR(2),
    DATA_FLAG      CHAR,
    DATA_SOURCE    CHAR,
    DATA_VERSION   NUMBER(8),
    DATA_REJ_DESC  VARCHAR2(128),
    DATA_DEL_DESC  VARCHAR2(128),
    DATA_CRT_USER  VARCHAR2(20),
    DATA_CRT_DATE  CHAR(8),
    DATA_CRT_TIME  CHAR(14),
    DATA_CHG_USER  VARCHAR2(20),
    DATA_CHG_DATE  CHAR(8),
    DATA_CHG_TIME  CHAR(14),
    DATA_APV_USER  VARCHAR2(20),
    DATA_APV_DATE  CHAR(8),
    DATA_APV_TIME  CHAR(14),
    RSV1           VARCHAR2(180),
    RSV2           VARCHAR2(180),
    RSV3           VARCHAR2(180),
    RSV4           VARCHAR2(180),
    RSV5           VARCHAR2(180),
    TABLE_COMMENTS VARCHAR2(20)
)
/

comment on column GP_BM_TABLE_CHECK_CONFIG.DATA_ID is '数据ID'
/

comment on column GP_BM_TABLE_CHECK_CONFIG.DATA_DATE is '数据日期'
/

comment on column GP_BM_TABLE_CHECK_CONFIG.CORP_ID is '法人机构号'
/

comment on column GP_BM_TABLE_CHECK_CONFIG.ORG_ID is '机构号'
/

comment on column GP_BM_TABLE_CHECK_CONFIG.GROUP_ID is '部门编号'
/

comment on column GP_BM_TABLE_CHECK_CONFIG.INQ_ORG_ID is '查询机构号'
/

comment on column GP_BM_TABLE_CHECK_CONFIG.INQ_GROUP_ID is '查询组号'
/

comment on column GP_BM_TABLE_CHECK_CONFIG.CK_GROUP is '检验组'
/

comment on column GP_BM_TABLE_CHECK_CONFIG.CHECK_FLAG is '校验标识'
/

comment on column GP_BM_TABLE_CHECK_CONFIG.NEXT_ACTION is '下一动作'
/

comment on column GP_BM_TABLE_CHECK_CONFIG.DATA_STATUS is '数据状态'
/

comment on column GP_BM_TABLE_CHECK_CONFIG.DATA_FLAG is '数据是否已删除'
/

comment on column GP_BM_TABLE_CHECK_CONFIG.DATA_SOURCE is '数据来源'
/

comment on column GP_BM_TABLE_CHECK_CONFIG.DATA_VERSION is '数据版本'
/

comment on column GP_BM_TABLE_CHECK_CONFIG.DATA_REJ_DESC is '数据审核拒绝原因'
/

comment on column GP_BM_TABLE_CHECK_CONFIG.DATA_DEL_DESC is '数据删除描述'
/

comment on column GP_BM_TABLE_CHECK_CONFIG.DATA_CRT_USER is '数据创建/导入用户'
/

comment on column GP_BM_TABLE_CHECK_CONFIG.DATA_CRT_DATE is '数据创建/导入日期'
/

comment on column GP_BM_TABLE_CHECK_CONFIG.DATA_CRT_TIME is '数据创建/导入时间'
/

comment on column GP_BM_TABLE_CHECK_CONFIG.DATA_CHG_USER is '数据修改/删除用户'
/

comment on column GP_BM_TABLE_CHECK_CONFIG.DATA_CHG_DATE is '数据修改/删除日期'
/

comment on column GP_BM_TABLE_CHECK_CONFIG.DATA_CHG_TIME is '数据修改/删除时间'
/

comment on column GP_BM_TABLE_CHECK_CONFIG.DATA_APV_USER is '数据审核/拒绝用户'
/

comment on column GP_BM_TABLE_CHECK_CONFIG.DATA_APV_DATE is '数据审核/拒绝日期'
/

comment on column GP_BM_TABLE_CHECK_CONFIG.DATA_APV_TIME is '数据审核/拒绝时间'
/

comment on column GP_BM_TABLE_CHECK_CONFIG.RSV1 is '备用1'
/

comment on column GP_BM_TABLE_CHECK_CONFIG.RSV2 is '备用2'
/

comment on column GP_BM_TABLE_CHECK_CONFIG.RSV3 is '备用3'
/

comment on column GP_BM_TABLE_CHECK_CONFIG.RSV4 is '备用4'
/

comment on column GP_BM_TABLE_CHECK_CONFIG.RSV5 is '备用5'
/

create table GP_BM_TABLE_CHECK_CONFIG_DTL
(
    DATA_ID       VARCHAR2(64) not null,
    DATA_DATE     CHAR(8),
    CORP_ID       VARCHAR2(14),
    ORG_ID        VARCHAR2(14),
    GROUP_ID      VARCHAR2(14),
    INQ_ORG_ID    CHAR(24),
    INQ_GROUP_ID  CHAR(24),
    CK_GROUP      VARCHAR2(32) not null,
    CHECK_TYPE    CHAR,
    CHECK_FLAG    CHAR,
    SEQ_NO        NUMBER,
    NEXT_ACTION   CHAR(2),
    DATA_STATUS   CHAR(2),
    DATA_FLAG     CHAR,
    DATA_SOURCE   CHAR,
    DATA_VERSION  NUMBER(8),
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
    RSV1          VARCHAR2(180),
    RSV2          VARCHAR2(180),
    RSV3          VARCHAR2(180),
    RSV4          VARCHAR2(180),
    RSV5          VARCHAR2(180)
)
/

comment on column GP_BM_TABLE_CHECK_CONFIG_DTL.DATA_ID is '数据ID'
/

comment on column GP_BM_TABLE_CHECK_CONFIG_DTL.DATA_DATE is '数据日期'
/

comment on column GP_BM_TABLE_CHECK_CONFIG_DTL.CORP_ID is '法人机构号'
/

comment on column GP_BM_TABLE_CHECK_CONFIG_DTL.ORG_ID is '机构号'
/

comment on column GP_BM_TABLE_CHECK_CONFIG_DTL.GROUP_ID is '部门编号'
/

comment on column GP_BM_TABLE_CHECK_CONFIG_DTL.INQ_ORG_ID is '查询机构号'
/

comment on column GP_BM_TABLE_CHECK_CONFIG_DTL.INQ_GROUP_ID is '查询组号'
/

comment on column GP_BM_TABLE_CHECK_CONFIG_DTL.CHECK_FLAG is '校验标识'
/

comment on column GP_BM_TABLE_CHECK_CONFIG_DTL.NEXT_ACTION is '下一动作'
/

comment on column GP_BM_TABLE_CHECK_CONFIG_DTL.DATA_STATUS is '数据状态'
/

comment on column GP_BM_TABLE_CHECK_CONFIG_DTL.DATA_FLAG is '数据是否已删除'
/

comment on column GP_BM_TABLE_CHECK_CONFIG_DTL.DATA_SOURCE is '数据来源'
/

comment on column GP_BM_TABLE_CHECK_CONFIG_DTL.DATA_VERSION is '数据版本'
/

comment on column GP_BM_TABLE_CHECK_CONFIG_DTL.DATA_REJ_DESC is '数据审核拒绝原因'
/

comment on column GP_BM_TABLE_CHECK_CONFIG_DTL.DATA_DEL_DESC is '数据删除描述'
/

comment on column GP_BM_TABLE_CHECK_CONFIG_DTL.DATA_CRT_USER is '数据创建/导入用户'
/

comment on column GP_BM_TABLE_CHECK_CONFIG_DTL.DATA_CRT_DATE is '数据创建/导入日期'
/

comment on column GP_BM_TABLE_CHECK_CONFIG_DTL.DATA_CRT_TIME is '数据创建/导入时间'
/

comment on column GP_BM_TABLE_CHECK_CONFIG_DTL.DATA_CHG_USER is '数据修改/删除用户'
/

comment on column GP_BM_TABLE_CHECK_CONFIG_DTL.DATA_CHG_DATE is '数据修改/删除日期'
/

comment on column GP_BM_TABLE_CHECK_CONFIG_DTL.DATA_CHG_TIME is '数据修改/删除时间'
/

comment on column GP_BM_TABLE_CHECK_CONFIG_DTL.DATA_APV_USER is '数据审核/拒绝用户'
/

comment on column GP_BM_TABLE_CHECK_CONFIG_DTL.DATA_APV_DATE is '数据审核/拒绝日期'
/

comment on column GP_BM_TABLE_CHECK_CONFIG_DTL.DATA_APV_TIME is '数据审核/拒绝时间'
/

comment on column GP_BM_TABLE_CHECK_CONFIG_DTL.RSV1 is '备用1'
/

comment on column GP_BM_TABLE_CHECK_CONFIG_DTL.RSV2 is '备用2'
/

comment on column GP_BM_TABLE_CHECK_CONFIG_DTL.RSV3 is '备用3'
/

comment on column GP_BM_TABLE_CHECK_CONFIG_DTL.RSV4 is '备用4'
/

comment on column GP_BM_TABLE_CHECK_CONFIG_DTL.RSV5 is '备用5'
/

create unique index SYS_C00245219
    on GP_BM_TABLE_CHECK_CONFIG_DTL (DATA_ID)
/

create table GP_BM_TABLE_FIELDS
(
    SYS_ID          VARCHAR2(30) not null,
    FIELD_ID        VARCHAR2(30),
    FIELD_ALIAS     VARCHAR2(30),
    FIELD_NAME      VARCHAR2(64),
    FIELD_TYPE      VARCHAR2(14),
    FIELD_SIZE      NUMBER,
    FIELD_PRECISION NUMBER,
    FIELD_FORMULA   VARCHAR2(128),
    DEFUALT_VALUE   VARCHAR2(512),
    REMARKS         VARCHAR2(512),
    RSV1            VARCHAR2(180),
    RSV2            VARCHAR2(180),
    RSV3            VARCHAR2(180),
    RSV4            VARCHAR2(180),
    RSV5            VARCHAR2(180)
)
/

comment on table GP_BM_TABLE_FIELDS is '常用字段配置表'
/

comment on column GP_BM_TABLE_FIELDS.SYS_ID is '系统ID'
/

comment on column GP_BM_TABLE_FIELDS.FIELD_ID is '字段ID'
/

comment on column GP_BM_TABLE_FIELDS.FIELD_ALIAS is '字段别名'
/

comment on column GP_BM_TABLE_FIELDS.FIELD_NAME is '中文名称'
/

comment on column GP_BM_TABLE_FIELDS.FIELD_TYPE is '字段类型'
/

comment on column GP_BM_TABLE_FIELDS.FIELD_SIZE is '字段长度'
/

comment on column GP_BM_TABLE_FIELDS.FIELD_PRECISION is '字段精度'
/

comment on column GP_BM_TABLE_FIELDS.FIELD_FORMULA is '字段取值规则'
/

comment on column GP_BM_TABLE_FIELDS.DEFUALT_VALUE is '默认值'
/

comment on column GP_BM_TABLE_FIELDS.REMARKS is '备注'
/

comment on column GP_BM_TABLE_FIELDS.RSV1 is '备用1'
/

comment on column GP_BM_TABLE_FIELDS.RSV2 is '备用2'
/

comment on column GP_BM_TABLE_FIELDS.RSV3 is '备用3'
/

comment on column GP_BM_TABLE_FIELDS.RSV4 is '备用4'
/

comment on column GP_BM_TABLE_FIELDS.RSV5 is '备用5'
/

create table GP_BM_TASK
(
    DATA_ID        VARCHAR2(64) not null
        primary key,
    DATA_DATE      CHAR(8),
    CORP_ID        VARCHAR2(14),
    ORG_ID         VARCHAR2(14),
    GROUP_ID       VARCHAR2(14),
    INQ_ORG_ID     CHAR(24),
    INQ_GROUP_ID   CHAR(24),
    INSTANCE_NAME  VARCHAR2(32),
    USER_ID        VARCHAR2(64),
    MODULE         VARCHAR2(32),
    ACTION         VARCHAR2(32),
    REF_ID         VARCHAR2(64),
    PRIORITY       NUMBER(8),
    WEIGHT         NUMBER(8),
    CANCELLABLE    CHAR,
    PARALLELISM    NUMBER(8),
    STATUS         CHAR(2),
    RESULT         VARCHAR2(4000),
    ERROR_MESSAGE  VARCHAR2(4000),
    STACK_TRACE    VARCHAR2(4000),
    START_TIME     CHAR(14),
    END_TIME       CHAR(14),
    CHILD_TOTAL    NUMBER(8),
    CHILD_QUEUING  NUMBER(8),
    CHILD_RUNNING  NUMBER(8),
    CHILD_SUCCESS  NUMBER(8),
    CHILD_FAILURE  NUMBER(8),
    EXT1           VARCHAR2(4000),
    EXT2           VARCHAR2(4000),
    CHECK_FLAG     CHAR,
    CHECK_DESC     VARCHAR2(512),
    CHECK_ERR_TYPE CHAR,
    NEXT_ACTION    CHAR(2),
    DATA_STATUS    CHAR(2),
    DATA_FLAG      CHAR,
    DATA_OP        CHAR,
    DATA_SOURCE    CHAR,
    DATA_VERSION   NUMBER(8),
    DATA_HASH      VARCHAR2(64),
    DATA_REJ_DESC  VARCHAR2(128),
    DATA_DEL_DESC  VARCHAR2(128),
    DATA_CRT_USER  VARCHAR2(20),
    DATA_CRT_DATE  CHAR(8),
    DATA_CRT_TIME  CHAR(14),
    DATA_CHG_USER  VARCHAR2(20),
    DATA_CHG_DATE  CHAR(8),
    DATA_CHG_TIME  CHAR(14),
    DATA_APV_USER  VARCHAR2(20),
    DATA_APV_DATE  CHAR(8),
    DATA_APV_TIME  CHAR(14),
    RSV1           VARCHAR2(180),
    RSV2           VARCHAR2(180),
    RSV3           VARCHAR2(180),
    RSV4           VARCHAR2(180),
    RSV5           VARCHAR2(180)
)
/

comment on table GP_BM_TASK is '批量任务执行日志表'
/

comment on column GP_BM_TASK.DATA_ID is '数据ID'
/

comment on column GP_BM_TASK.DATA_DATE is '数据日期'
/

comment on column GP_BM_TASK.CORP_ID is '法人机构号'
/

comment on column GP_BM_TASK.ORG_ID is '机构号'
/

comment on column GP_BM_TASK.GROUP_ID is '部门编号'
/

comment on column GP_BM_TASK.INQ_ORG_ID is '查询机构号'
/

comment on column GP_BM_TASK.INQ_GROUP_ID is '查询组号'
/

comment on column GP_BM_TASK.INSTANCE_NAME is '实例名称'
/

comment on column GP_BM_TASK.USER_ID is '用户 ID'
/

comment on column GP_BM_TASK.MODULE is '模块/菜单 ID'
/

comment on column GP_BM_TASK.ACTION is '画面动作'
/

comment on column GP_BM_TASK.REF_ID is '关联 ID'
/

comment on column GP_BM_TASK.PRIORITY is '优先级'
/

comment on column GP_BM_TASK.WEIGHT is '任务重量'
/

comment on column GP_BM_TASK.CANCELLABLE is '可否取消'
/

comment on column GP_BM_TASK.PARALLELISM is '并发数量'
/

comment on column GP_BM_TASK.STATUS is '状态  0-排队 1-执行中 2-成功 3-失败'
/

comment on column GP_BM_TASK.RESULT is '运行结果'
/

comment on column GP_BM_TASK.ERROR_MESSAGE is '错误信息'
/

comment on column GP_BM_TASK.STACK_TRACE is '堆栈信息'
/

comment on column GP_BM_TASK.START_TIME is '开始时间'
/

comment on column GP_BM_TASK.END_TIME is '结束时间'
/

comment on column GP_BM_TASK.CHILD_TOTAL is '子任务总数'
/

comment on column GP_BM_TASK.CHILD_QUEUING is '子任务排队数'
/

comment on column GP_BM_TASK.CHILD_RUNNING is '子任务运行数量'
/

comment on column GP_BM_TASK.CHILD_SUCCESS is '子任务成功数量'
/

comment on column GP_BM_TASK.CHILD_FAILURE is '子任务失败数量'
/

comment on column GP_BM_TASK.EXT1 is '扩展数据1'
/

comment on column GP_BM_TASK.EXT2 is '扩展数据2'
/

comment on column GP_BM_TASK.CHECK_FLAG is '校验标识'
/

comment on column GP_BM_TASK.CHECK_DESC is '校验结果'
/

comment on column GP_BM_TASK.CHECK_ERR_TYPE is '校验失败类型'
/

comment on column GP_BM_TASK.NEXT_ACTION is '下一动作'
/

comment on column GP_BM_TASK.DATA_STATUS is '数据状态'
/

comment on column GP_BM_TASK.DATA_FLAG is '数据是否已删除'
/

comment on column GP_BM_TASK.DATA_OP is '数据操作 A：新增，D:删除, M:修改'
/

comment on column GP_BM_TASK.DATA_SOURCE is '数据来源'
/

comment on column GP_BM_TASK.DATA_VERSION is '数据版本'
/

comment on column GP_BM_TASK.DATA_HASH is '记录哈希'
/

comment on column GP_BM_TASK.DATA_REJ_DESC is '数据审核拒绝原因'
/

comment on column GP_BM_TASK.DATA_DEL_DESC is '数据删除描述'
/

comment on column GP_BM_TASK.DATA_CRT_USER is '数据创建/导入用户'
/

comment on column GP_BM_TASK.DATA_CRT_DATE is '数据创建/导入日期'
/

comment on column GP_BM_TASK.DATA_CRT_TIME is '数据创建/导入时间'
/

comment on column GP_BM_TASK.DATA_CHG_USER is '数据修改/删除用户'
/

comment on column GP_BM_TASK.DATA_CHG_DATE is '数据修改/删除日期'
/

comment on column GP_BM_TASK.DATA_CHG_TIME is '数据修改/删除时间'
/

comment on column GP_BM_TASK.DATA_APV_USER is '数据审核/拒绝用户'
/

comment on column GP_BM_TASK.DATA_APV_DATE is '数据审核/拒绝日期'
/

comment on column GP_BM_TASK.DATA_APV_TIME is '数据审核/拒绝时间'
/

comment on column GP_BM_TASK.RSV1 is '备用1'
/

comment on column GP_BM_TASK.RSV2 is '备用2'
/

comment on column GP_BM_TASK.RSV3 is '备用3'
/

comment on column GP_BM_TASK.RSV4 is '备用4'
/

comment on column GP_BM_TASK.RSV5 is '备用5'
/

create table GP_BM_TASK_CONFIG
(
    MODE_NAME VARCHAR2(150),
    BEAN_ID   VARCHAR2(150),
    DATA_ID   VARCHAR2(64) not null
        primary key,
    EXT       VARCHAR2(250)
)
/

comment on table GP_BM_TASK_CONFIG is '批量任务配置表'
/

comment on column GP_BM_TASK_CONFIG.DATA_ID is '数据ID'
/

create table GP_BM_TEMPLATE_EXPORT
(
    DATA_ID         VARCHAR2(64) not null
        primary key,
    FUNCID          VARCHAR2(32),
    FUNC_NAME       VARCHAR2(256),
    TABLE_NAME      VARCHAR2(128),
    TABLE_COMMENTS  VARCHAR2(256),
    COLUMN_NAME     VARCHAR2(256),
    COLUMN_COMMENTS VARCHAR2(256),
    IS_NEED         VARCHAR2(1),
    SEQ_NO          VARCHAR2(32),
    NUM             NUMBER,
    IS_RELATION     VARCHAR2(1),
    GUID            VARCHAR2(32),
    HAS_SQL         VARCHAR2(1),
    RSV1            VARCHAR2(180),
    RSV2            VARCHAR2(180),
    RSV3            VARCHAR2(180),
    RSV4            VARCHAR2(180),
    RSV5            VARCHAR2(180)
)
/

comment on table GP_BM_TEMPLATE_EXPORT is '文件导出配置表'
/

comment on column GP_BM_TEMPLATE_EXPORT.DATA_ID is '数据ID'
/

comment on column GP_BM_TEMPLATE_EXPORT.RSV1 is '备用1'
/

comment on column GP_BM_TEMPLATE_EXPORT.RSV2 is '备用2'
/

comment on column GP_BM_TEMPLATE_EXPORT.RSV3 is '备用3'
/

comment on column GP_BM_TEMPLATE_EXPORT.RSV4 is '备用4'
/

comment on column GP_BM_TEMPLATE_EXPORT.RSV5 is '备用5'
/

create table GP_BM_TLR_INFO
(
    DATA_ID              VARCHAR2(64) not null
        primary key,
    DATA_DATE            CHAR(8),
    CORP_ID              VARCHAR2(14),
    ORG_ID               VARCHAR2(14),
    GROUP_ID             VARCHAR2(14),
    TLRNO                VARCHAR2(20),
    TLR_NAME             VARCHAR2(30),
    TLR_TYPE             CHAR,
    AGENT_TYPE           CHAR,
    PASSWORD             VARCHAR2(80),
    PASSWD_ENC           VARCHAR2(10),
    CHEK_DPWD_FLG        CHAR,
    BRCODE               VARCHAR2(20),
    BRNO                 VARCHAR2(32),
    ROLE_ID              VARCHAR2(32),
    LOGIN_IP             VARCHAR2(20),
    STATUS               CHAR,
    ST                   CHAR,
    IS_LOCK              CHAR,
    LOCK_REASON          VARCHAR2(200),
    LAST_ACCESS_TIME     CHAR(14),
    LAST_LOGOUT_TIME     CHAR(14),
    LAST_FAILED_TIME     CHAR(14),
    PSWD_ERR_CNT         NUMBER,
    TOT_PSWD_ERR_CNT     NUMBER,
    PSWD_ERR_DATE        CHAR(8),
    FAIL_MAX_CNT         NUMBER,
    PASSWD_CHG_INTERVA   NUMBER,
    PASSWD_WARN_INTERVAL NUMBER,
    LAST_PWD_CHG_TIME    CHAR(14),
    SESSION_ID           VARCHAR2(256),
    MSRNO                NUMBER,
    FLAG                 CHAR,
    CREDATE_DATE         CHAR(8),
    LAST_UPD_OPR_ID      CHAR(20),
    LAST_UPD_TIME        CHAR(14),
    EFFECT_DATE          CHAR(8),
    EXPIRE_DATE          CHAR(8),
    EMAIL                VARCHAR2(100),
    MISC                 VARCHAR2(156),
    DEPARTMENT_CODE      VARCHAR2(32),
    EXT_TLRNO            CHAR(20),
    ID_NUMBER            VARCHAR2(35),
    JOIN_DATE            CHAR(8),
    LEAVE_DATE           CHAR(8),
    INNER_FLAG           CHAR,
    NEXT_ACTION          CHAR(2),
    DATA_STATUS          CHAR(2),
    DATA_FLAG            CHAR,
    DATA_SOURCE          CHAR,
    CHECK_FLAG           CHAR,
    CHECK_DESC           VARCHAR2(512),
    CHECK_ERR_TYPE       CHAR,
    DATA_VERSION         NUMBER(8),
    DATA_REJ_DESC        VARCHAR2(128),
    DATA_DEL_DESC        VARCHAR2(128),
    DATA_CRT_USER        VARCHAR2(20),
    DATA_CRT_DATE        CHAR(8),
    DATA_CRT_TIME        CHAR(14),
    DATA_CHG_USER        VARCHAR2(20),
    DATA_CHG_DATE        CHAR(8),
    DATA_CHG_TIME        CHAR(14),
    DATA_APV_USER        VARCHAR2(20),
    DATA_APV_DATE        CHAR(8),
    DATA_APV_TIME        CHAR(14),
    RSV1                 VARCHAR2(180),
    RSV2                 VARCHAR2(180),
    RSV3                 VARCHAR2(180),
    RSV4                 VARCHAR2(180),
    RSV5                 VARCHAR2(180),
    REMARKS              VARCHAR2(180),
    GPMS_NEXTACTION      VARCHAR2(8)
)
/

comment on table GP_BM_TLR_INFO is '操作员信息表'
/

comment on column GP_BM_TLR_INFO.DATA_ID is '数据ID'
/

comment on column GP_BM_TLR_INFO.DATA_DATE is '数据日期'
/

comment on column GP_BM_TLR_INFO.CORP_ID is '法人机构号'
/

comment on column GP_BM_TLR_INFO.ORG_ID is '机构号'
/

comment on column GP_BM_TLR_INFO.GROUP_ID is '部门编号'
/

comment on column GP_BM_TLR_INFO.TLRNO is '操作员编号'
/

comment on column GP_BM_TLR_INFO.TLR_NAME is '操作员名称'
/

comment on column GP_BM_TLR_INFO.TLR_TYPE is '操作员类型'
/

comment on column GP_BM_TLR_INFO.PASSWORD is '操作员密码'
/

comment on column GP_BM_TLR_INFO.PASSWD_ENC is '密码加密算法'
/

comment on column GP_BM_TLR_INFO.CHEK_DPWD_FLG is '是否校验动态码'
/

comment on column GP_BM_TLR_INFO.BRCODE is '内部机构号'
/

comment on column GP_BM_TLR_INFO.BRNO is '机构代码'
/

comment on column GP_BM_TLR_INFO.ROLE_ID is '默认岗位'
/

comment on column GP_BM_TLR_INFO.LOGIN_IP is '登录IP'
/

comment on column GP_BM_TLR_INFO.STATUS is '有效标识 0-签退；1-签到；2-离职'
/

comment on column GP_BM_TLR_INFO.ST is '记录状态 1-创建中；2-修改中；3-删除中；4-可用'
/

comment on column GP_BM_TLR_INFO.IS_LOCK is '是否锁定 0-未锁定;1-锁定'
/

comment on column GP_BM_TLR_INFO.LOCK_REASON is '锁定原因'
/

comment on column GP_BM_TLR_INFO.LAST_ACCESS_TIME is '上次成功登录时间'
/

comment on column GP_BM_TLR_INFO.LAST_LOGOUT_TIME is '上次登出时间'
/

comment on column GP_BM_TLR_INFO.LAST_FAILED_TIME is '上次登陆失败时间'
/

comment on column GP_BM_TLR_INFO.PSWD_ERR_CNT is '密码输入错次数'
/

comment on column GP_BM_TLR_INFO.TOT_PSWD_ERR_CNT is '密码连续错误次数'
/

comment on column GP_BM_TLR_INFO.PSWD_ERR_DATE is '密码输入错误日期'
/

comment on column GP_BM_TLR_INFO.FAIL_MAX_CNT is '最大错误输入次数'
/

comment on column GP_BM_TLR_INFO.PASSWD_CHG_INTERVA is '密码更换间隔天数'
/

comment on column GP_BM_TLR_INFO.PASSWD_WARN_INTERVAL is '密码更换提醒天数'
/

comment on column GP_BM_TLR_INFO.LAST_PWD_CHG_TIME is '上次密码修改时间'
/

comment on column GP_BM_TLR_INFO.SESSION_ID is '会话ID'
/

comment on column GP_BM_TLR_INFO.MSRNO is '机构流水号'
/

comment on column GP_BM_TLR_INFO.FLAG is '标志'
/

comment on column GP_BM_TLR_INFO.CREDATE_DATE is '创建时间'
/

comment on column GP_BM_TLR_INFO.LAST_UPD_OPR_ID is '最后更新操作员'
/

comment on column GP_BM_TLR_INFO.LAST_UPD_TIME is '最后更新时间'
/

comment on column GP_BM_TLR_INFO.EFFECT_DATE is '生效日期'
/

comment on column GP_BM_TLR_INFO.EXPIRE_DATE is '失效日期'
/

comment on column GP_BM_TLR_INFO.EMAIL is 'EMAIL'
/

comment on column GP_BM_TLR_INFO.MISC is '扩展域'
/

comment on column GP_BM_TLR_INFO.NEXT_ACTION is '下一动作'
/

comment on column GP_BM_TLR_INFO.DATA_STATUS is '数据状态'
/

comment on column GP_BM_TLR_INFO.DATA_FLAG is '数据是否已删除'
/

comment on column GP_BM_TLR_INFO.DATA_SOURCE is '数据来源'
/

comment on column GP_BM_TLR_INFO.CHECK_FLAG is '校验标识'
/

comment on column GP_BM_TLR_INFO.CHECK_DESC is '校验结果'
/

comment on column GP_BM_TLR_INFO.CHECK_ERR_TYPE is '校验失败类型'
/

comment on column GP_BM_TLR_INFO.DATA_VERSION is '数据版本'
/

comment on column GP_BM_TLR_INFO.DATA_REJ_DESC is '数据审核拒绝原因'
/

comment on column GP_BM_TLR_INFO.DATA_DEL_DESC is '数据删除描述'
/

comment on column GP_BM_TLR_INFO.DATA_CRT_USER is '数据创建/导入用户'
/

comment on column GP_BM_TLR_INFO.DATA_CRT_DATE is '数据创建/导入日期'
/

comment on column GP_BM_TLR_INFO.DATA_CRT_TIME is '数据创建/导入时间'
/

comment on column GP_BM_TLR_INFO.DATA_CHG_USER is '数据修改/删除用户'
/

comment on column GP_BM_TLR_INFO.DATA_CHG_DATE is '数据修改/删除日期'
/

comment on column GP_BM_TLR_INFO.DATA_CHG_TIME is '数据修改/删除时间'
/

comment on column GP_BM_TLR_INFO.DATA_APV_USER is '数据审核/拒绝用户'
/

comment on column GP_BM_TLR_INFO.DATA_APV_DATE is '数据审核/拒绝日期'
/

comment on column GP_BM_TLR_INFO.DATA_APV_TIME is '数据审核/拒绝时间'
/

comment on column GP_BM_TLR_INFO.RSV1 is '备用1'
/

comment on column GP_BM_TLR_INFO.RSV2 is '备用2'
/

comment on column GP_BM_TLR_INFO.RSV3 is '备用3'
/

comment on column GP_BM_TLR_INFO.RSV4 is '备用4'
/

comment on column GP_BM_TLR_INFO.RSV5 is '备用5'
/

comment on column GP_BM_TLR_INFO.REMARKS is '备注'
/

create unique index IDX_GP_BM_TLR_INFO_01
    on GP_BM_TLR_INFO (TLRNO)
/

create table GP_BM_TLR_INFO_PENDING
(
    DATA_ID              VARCHAR2(64) not null
        primary key,
    DATA_DATE            CHAR(8),
    CORP_ID              VARCHAR2(14),
    ORG_ID               VARCHAR2(14),
    GROUP_ID             VARCHAR2(14),
    TLRNO                VARCHAR2(20),
    TLR_NAME             VARCHAR2(30),
    TLR_TYPE             CHAR,
    AGENT_TYPE           CHAR,
    PASSWORD             VARCHAR2(80),
    PASSWD_ENC           VARCHAR2(10),
    CHEK_DPWD_FLG        CHAR,
    BRCODE               VARCHAR2(20),
    BRNO                 VARCHAR2(32),
    ROLE_ID              NUMBER,
    LOGIN_IP             VARCHAR2(20),
    STATUS               CHAR,
    ST                   CHAR,
    IS_LOCK              CHAR,
    LOCK_REASON          VARCHAR2(200),
    LAST_ACCESS_TIME     CHAR(14),
    LAST_LOGOUT_TIME     CHAR(14),
    LAST_FAILED_TIME     CHAR(14),
    PSWD_ERR_CNT         NUMBER,
    TOT_PSWD_ERR_CNT     NUMBER,
    PSWD_ERR_DATE        CHAR(8),
    FAIL_MAX_CNT         NUMBER,
    PASSWD_CHG_INTERVA   NUMBER,
    PASSWD_WARN_INTERVAL NUMBER,
    LAST_PWD_CHG_TIME    CHAR(14),
    SESSION_ID           VARCHAR2(256),
    MSRNO                NUMBER,
    FLAG                 CHAR,
    CREDATE_DATE         CHAR(8),
    LAST_UPD_OPR_ID      CHAR(20),
    LAST_UPD_TIME        CHAR(14),
    EFFECT_DATE          CHAR(8),
    EXPIRE_DATE          CHAR(8),
    EMAIL                VARCHAR2(100),
    MISC                 VARCHAR2(156),
    DEPARTMENT_CODE      VARCHAR2(32),
    EXT_TLRNO            CHAR(20),
    ID_NUMBER            VARCHAR2(35),
    JOIN_DATE            CHAR(8),
    LEAVE_DATE           CHAR(8),
    INNER_FLAG           CHAR,
    NEXT_ACTION          CHAR(2),
    DATA_STATUS          CHAR(2),
    DATA_FLAG            CHAR,
    DATA_SOURCE          CHAR,
    CHECK_FLAG           CHAR,
    CHECK_DESC           VARCHAR2(512),
    CHECK_ERR_TYPE       CHAR,
    DATA_VERSION         NUMBER(8),
    DATA_REJ_DESC        VARCHAR2(128),
    DATA_DEL_DESC        VARCHAR2(128),
    DATA_CRT_USER        VARCHAR2(20),
    DATA_CRT_DATE        CHAR(8),
    DATA_CRT_TIME        CHAR(14),
    DATA_CHG_USER        VARCHAR2(20),
    DATA_CHG_DATE        CHAR(8),
    DATA_CHG_TIME        CHAR(14),
    DATA_APV_USER        VARCHAR2(20),
    DATA_APV_DATE        CHAR(8),
    DATA_APV_TIME        CHAR(14),
    RSV1                 VARCHAR2(180),
    RSV2                 VARCHAR2(180),
    RSV3                 VARCHAR2(180),
    RSV4                 VARCHAR2(180),
    RSV5                 VARCHAR2(180),
    REMARKS              VARCHAR2(180),
    GPMS_NEXTACTION      VARCHAR2(8)
)
/

comment on table GP_BM_TLR_INFO_PENDING is '操作员信息pending表'
/

comment on column GP_BM_TLR_INFO_PENDING.DATA_ID is '数据ID'
/

comment on column GP_BM_TLR_INFO_PENDING.DATA_DATE is '数据日期'
/

comment on column GP_BM_TLR_INFO_PENDING.CORP_ID is '法人机构号'
/

comment on column GP_BM_TLR_INFO_PENDING.ORG_ID is '机构号'
/

comment on column GP_BM_TLR_INFO_PENDING.GROUP_ID is '部门编号'
/

comment on column GP_BM_TLR_INFO_PENDING.NEXT_ACTION is '下一动作'
/

comment on column GP_BM_TLR_INFO_PENDING.DATA_STATUS is '数据状态'
/

comment on column GP_BM_TLR_INFO_PENDING.DATA_FLAG is '数据是否已删除'
/

comment on column GP_BM_TLR_INFO_PENDING.DATA_SOURCE is '数据来源'
/

comment on column GP_BM_TLR_INFO_PENDING.CHECK_FLAG is '校验标识'
/

comment on column GP_BM_TLR_INFO_PENDING.CHECK_DESC is '校验结果'
/

comment on column GP_BM_TLR_INFO_PENDING.CHECK_ERR_TYPE is '校验失败类型'
/

comment on column GP_BM_TLR_INFO_PENDING.DATA_VERSION is '数据版本'
/

comment on column GP_BM_TLR_INFO_PENDING.DATA_REJ_DESC is '数据审核拒绝原因'
/

comment on column GP_BM_TLR_INFO_PENDING.DATA_DEL_DESC is '数据删除描述'
/

comment on column GP_BM_TLR_INFO_PENDING.DATA_CRT_USER is '数据创建/导入用户'
/

comment on column GP_BM_TLR_INFO_PENDING.DATA_CRT_DATE is '数据创建/导入日期'
/

comment on column GP_BM_TLR_INFO_PENDING.DATA_CRT_TIME is '数据创建/导入时间'
/

comment on column GP_BM_TLR_INFO_PENDING.DATA_CHG_USER is '数据修改/删除用户'
/

comment on column GP_BM_TLR_INFO_PENDING.DATA_CHG_DATE is '数据修改/删除日期'
/

comment on column GP_BM_TLR_INFO_PENDING.DATA_CHG_TIME is '数据修改/删除时间'
/

comment on column GP_BM_TLR_INFO_PENDING.DATA_APV_USER is '数据审核/拒绝用户'
/

comment on column GP_BM_TLR_INFO_PENDING.DATA_APV_DATE is '数据审核/拒绝日期'
/

comment on column GP_BM_TLR_INFO_PENDING.DATA_APV_TIME is '数据审核/拒绝时间'
/

comment on column GP_BM_TLR_INFO_PENDING.RSV1 is '备用1'
/

comment on column GP_BM_TLR_INFO_PENDING.RSV2 is '备用2'
/

comment on column GP_BM_TLR_INFO_PENDING.RSV3 is '备用3'
/

comment on column GP_BM_TLR_INFO_PENDING.RSV4 is '备用4'
/

comment on column GP_BM_TLR_INFO_PENDING.RSV5 is '备用5'
/

create table GP_BM_TLR_ROLE_REL
(
    DATA_ID        VARCHAR2(64) not null
        primary key,
    TLRNO          VARCHAR2(20),
    ROLE_ID        CHAR(32),
    STATUS         CHAR,
    RSV5           VARCHAR2(180),
    CORP_ID        VARCHAR2(14),
    ORG_ID         VARCHAR2(14),
    GROUP_ID       VARCHAR2(14),
    CHECK_FLAG     CHAR,
    CHECK_DESC     VARCHAR2(512),
    CHECK_ERR_TYPE CHAR,
    NEXT_ACTION    CHAR(2),
    DATA_STATUS    CHAR(2),
    DATA_FLAG      CHAR,
    DATA_SOURCE    CHAR,
    DATA_VERSION   NUMBER(8),
    DATA_REJ_DESC  VARCHAR2(128),
    DATA_DEL_DESC  VARCHAR2(128),
    DATA_CRT_USER  VARCHAR2(20),
    DATA_CRT_DATE  CHAR(8),
    DATA_CRT_TIME  CHAR(14),
    DATA_CHG_USER  VARCHAR2(20),
    DATA_CHG_DATE  CHAR(8),
    DATA_CHG_TIME  CHAR(14),
    DATA_APV_USER  VARCHAR2(20),
    DATA_APV_DATE  CHAR(8),
    DATA_APV_TIME  CHAR(14),
    RSV1           VARCHAR2(180),
    RSV2           VARCHAR2(180),
    RSV3           VARCHAR2(180),
    RSV4           VARCHAR2(180),
    REMARKS        VARCHAR2(150),
    DATA_DATE      CHAR(8)
)
/

comment on table GP_BM_TLR_ROLE_REL is '操作员角色映射表'
/

comment on column GP_BM_TLR_ROLE_REL.DATA_ID is '数据ID'
/

comment on column GP_BM_TLR_ROLE_REL.TLRNO is '操作员Id'
/

comment on column GP_BM_TLR_ROLE_REL.ROLE_ID is '角色Id'
/

comment on column GP_BM_TLR_ROLE_REL.STATUS is '状态'
/

comment on column GP_BM_TLR_ROLE_REL.RSV5 is '备用5'
/

comment on column GP_BM_TLR_ROLE_REL.CORP_ID is '法人机构号'
/

comment on column GP_BM_TLR_ROLE_REL.ORG_ID is '机构号'
/

comment on column GP_BM_TLR_ROLE_REL.GROUP_ID is '部门编号'
/

comment on column GP_BM_TLR_ROLE_REL.CHECK_FLAG is '校验标识'
/

comment on column GP_BM_TLR_ROLE_REL.CHECK_DESC is '校验结果'
/

comment on column GP_BM_TLR_ROLE_REL.CHECK_ERR_TYPE is '校验失败类型'
/

comment on column GP_BM_TLR_ROLE_REL.NEXT_ACTION is '下一动作'
/

comment on column GP_BM_TLR_ROLE_REL.DATA_STATUS is '数据状态'
/

comment on column GP_BM_TLR_ROLE_REL.DATA_FLAG is '数据是否已删除'
/

comment on column GP_BM_TLR_ROLE_REL.DATA_SOURCE is '数据来源'
/

comment on column GP_BM_TLR_ROLE_REL.DATA_VERSION is '数据版本'
/

comment on column GP_BM_TLR_ROLE_REL.DATA_REJ_DESC is '数据审核拒绝原因'
/

comment on column GP_BM_TLR_ROLE_REL.DATA_DEL_DESC is '数据删除描述'
/

comment on column GP_BM_TLR_ROLE_REL.DATA_CRT_USER is '数据创建/导入用户'
/

comment on column GP_BM_TLR_ROLE_REL.DATA_CRT_DATE is '数据创建/导入日期'
/

comment on column GP_BM_TLR_ROLE_REL.DATA_CRT_TIME is '数据创建/导入时间'
/

comment on column GP_BM_TLR_ROLE_REL.DATA_CHG_USER is '数据修改/删除用户'
/

comment on column GP_BM_TLR_ROLE_REL.DATA_CHG_DATE is '数据修改/删除日期'
/

comment on column GP_BM_TLR_ROLE_REL.DATA_CHG_TIME is '数据修改/删除时间'
/

comment on column GP_BM_TLR_ROLE_REL.DATA_APV_USER is '数据审核/拒绝用户'
/

comment on column GP_BM_TLR_ROLE_REL.DATA_APV_DATE is '数据审核/拒绝日期'
/

comment on column GP_BM_TLR_ROLE_REL.DATA_APV_TIME is '数据审核/拒绝时间'
/

comment on column GP_BM_TLR_ROLE_REL.RSV1 is '备用1'
/

comment on column GP_BM_TLR_ROLE_REL.RSV2 is '备用2'
/

comment on column GP_BM_TLR_ROLE_REL.RSV3 is '备用3'
/

comment on column GP_BM_TLR_ROLE_REL.RSV4 is '备用4'
/

comment on column GP_BM_TLR_ROLE_REL.DATA_DATE is '数据日期'
/

create table GP_BM_TLR_ROLE_REL_PENDING
(
    DATA_ID        VARCHAR2(64) not null
        primary key,
    TLRNO          VARCHAR2(20) not null,
    ROLE_ID        CHAR(32),
    STATUS         CHAR,
    RSV5           VARCHAR2(180),
    CORP_ID        VARCHAR2(14),
    ORG_ID         VARCHAR2(14),
    GROUP_ID       VARCHAR2(14),
    CHECK_FLAG     CHAR,
    CHECK_DESC     VARCHAR2(512),
    CHECK_ERR_TYPE CHAR,
    NEXT_ACTION    CHAR(2),
    DATA_STATUS    CHAR(2),
    DATA_FLAG      CHAR,
    DATA_SOURCE    CHAR,
    DATA_VERSION   NUMBER(8),
    DATA_REJ_DESC  VARCHAR2(128),
    DATA_DEL_DESC  VARCHAR2(128),
    DATA_CRT_USER  VARCHAR2(20),
    DATA_CRT_DATE  CHAR(8),
    DATA_CRT_TIME  CHAR(14),
    DATA_CHG_USER  VARCHAR2(20),
    DATA_CHG_DATE  CHAR(8),
    DATA_CHG_TIME  CHAR(14),
    DATA_APV_USER  VARCHAR2(20),
    DATA_APV_DATE  CHAR(8),
    DATA_APV_TIME  CHAR(14),
    RSV1           VARCHAR2(180),
    RSV2           VARCHAR2(180),
    RSV3           VARCHAR2(180),
    RSV4           VARCHAR2(180),
    REMARKS        VARCHAR2(150),
    DATA_DATE      CHAR(8)
)
/

comment on table GP_BM_TLR_ROLE_REL_PENDING is '操作员角色映射pending表'
/

comment on column GP_BM_TLR_ROLE_REL_PENDING.DATA_ID is '数据ID'
/

comment on column GP_BM_TLR_ROLE_REL_PENDING.RSV5 is '备用5'
/

comment on column GP_BM_TLR_ROLE_REL_PENDING.CORP_ID is '法人机构号'
/

comment on column GP_BM_TLR_ROLE_REL_PENDING.ORG_ID is '机构号'
/

comment on column GP_BM_TLR_ROLE_REL_PENDING.GROUP_ID is '部门编号'
/

comment on column GP_BM_TLR_ROLE_REL_PENDING.CHECK_FLAG is '校验标识'
/

comment on column GP_BM_TLR_ROLE_REL_PENDING.CHECK_DESC is '校验结果'
/

comment on column GP_BM_TLR_ROLE_REL_PENDING.CHECK_ERR_TYPE is '校验失败类型'
/

comment on column GP_BM_TLR_ROLE_REL_PENDING.NEXT_ACTION is '下一动作'
/

comment on column GP_BM_TLR_ROLE_REL_PENDING.DATA_STATUS is '数据状态'
/

comment on column GP_BM_TLR_ROLE_REL_PENDING.DATA_FLAG is '数据是否已删除'
/

comment on column GP_BM_TLR_ROLE_REL_PENDING.DATA_SOURCE is '数据来源'
/

comment on column GP_BM_TLR_ROLE_REL_PENDING.DATA_VERSION is '数据版本'
/

comment on column GP_BM_TLR_ROLE_REL_PENDING.DATA_REJ_DESC is '数据审核拒绝原因'
/

comment on column GP_BM_TLR_ROLE_REL_PENDING.DATA_DEL_DESC is '数据删除描述'
/

comment on column GP_BM_TLR_ROLE_REL_PENDING.DATA_CRT_USER is '数据创建/导入用户'
/

comment on column GP_BM_TLR_ROLE_REL_PENDING.DATA_CRT_DATE is '数据创建/导入日期'
/

comment on column GP_BM_TLR_ROLE_REL_PENDING.DATA_CRT_TIME is '数据创建/导入时间'
/

comment on column GP_BM_TLR_ROLE_REL_PENDING.DATA_CHG_USER is '数据修改/删除用户'
/

comment on column GP_BM_TLR_ROLE_REL_PENDING.DATA_CHG_DATE is '数据修改/删除日期'
/

comment on column GP_BM_TLR_ROLE_REL_PENDING.DATA_CHG_TIME is '数据修改/删除时间'
/

comment on column GP_BM_TLR_ROLE_REL_PENDING.DATA_APV_USER is '数据审核/拒绝用户'
/

comment on column GP_BM_TLR_ROLE_REL_PENDING.DATA_APV_DATE is '数据审核/拒绝日期'
/

comment on column GP_BM_TLR_ROLE_REL_PENDING.DATA_APV_TIME is '数据审核/拒绝时间'
/

comment on column GP_BM_TLR_ROLE_REL_PENDING.RSV1 is '备用1'
/

comment on column GP_BM_TLR_ROLE_REL_PENDING.RSV2 is '备用2'
/

comment on column GP_BM_TLR_ROLE_REL_PENDING.RSV3 is '备用3'
/

comment on column GP_BM_TLR_ROLE_REL_PENDING.RSV4 is '备用4'
/

comment on column GP_BM_TLR_ROLE_REL_PENDING.DATA_DATE is '数据日期'
/

create table GP_BM_UPLOAD_CFG
(
    DATA_ID         VARCHAR2(64) not null,
    DATA_DATE       CHAR(8),
    CORP_ID         VARCHAR2(14),
    ORG_ID          VARCHAR2(14),
    GROUP_ID        VARCHAR2(14),
    FILE_SERVICE    VARCHAR2(180),
    FILE_EXTS       VARCHAR2(500),
    EXCLUDE_EXTS    VARCHAR2(500),
    MAX_SIZE        NUMBER,
    FILE_CHARSET    VARCHAR2(32),
    PERMISSION_TYPE VARCHAR2(2),
    PERMISSION_DATA VARCHAR2(180),
    SAVE_PATH       VARCHAR2(300),
    FILE_NAME_TPL   VARCHAR2(180),
    JOB_TYPE        VARCHAR2(1),
    AFTER_BEAN      VARCHAR2(180),
    STATUS          VARCHAR2(2),
    REMARKS         VARCHAR2(180),
    CHECK_FLAG      CHAR,
    CHECK_DESC      VARCHAR2(512),
    CHECK_ERR_TYPE  CHAR,
    NEXT_ACTION     CHAR(2),
    DATA_STATUS     CHAR(2),
    DATA_FLAG       CHAR,
    DATA_SOURCE     CHAR,
    DATA_VERSION    NUMBER(8),
    DATA_REJ_DESC   VARCHAR2(128),
    DATA_DEL_DESC   VARCHAR2(128),
    DATA_CRT_USER   VARCHAR2(20),
    DATA_CRT_DATE   CHAR(8),
    DATA_CRT_TIME   CHAR(14),
    DATA_CHG_USER   VARCHAR2(20),
    DATA_CHG_DATE   CHAR(8),
    DATA_CHG_TIME   CHAR(14),
    DATA_APV_USER   VARCHAR2(20),
    DATA_APV_DATE   CHAR(8),
    DATA_APV_TIME   CHAR(14),
    RSV1            VARCHAR2(180),
    RSV2            VARCHAR2(180),
    RSV3            VARCHAR2(180),
    RSV4            VARCHAR2(180),
    RSV5            VARCHAR2(180)
)
/

comment on table GP_BM_UPLOAD_CFG is '文件上传配置表'
/

comment on column GP_BM_UPLOAD_CFG.DATA_ID is '数据ID'
/

comment on column GP_BM_UPLOAD_CFG.DATA_DATE is '数据日期'
/

comment on column GP_BM_UPLOAD_CFG.CORP_ID is '法人机构号'
/

comment on column GP_BM_UPLOAD_CFG.ORG_ID is '机构号'
/

comment on column GP_BM_UPLOAD_CFG.GROUP_ID is '部门编号'
/

comment on column GP_BM_UPLOAD_CFG.FILE_SERVICE is '文件服务'
/

comment on column GP_BM_UPLOAD_CFG.FILE_EXTS is '允许扩展名'
/

comment on column GP_BM_UPLOAD_CFG.EXCLUDE_EXTS is '排除文件扩展名列表'
/

comment on column GP_BM_UPLOAD_CFG.MAX_SIZE is '文件最大大小'
/

comment on column GP_BM_UPLOAD_CFG.FILE_CHARSET is '文件编码'
/

comment on column GP_BM_UPLOAD_CFG.PERMISSION_TYPE is '控制方式'
/

comment on column GP_BM_UPLOAD_CFG.PERMISSION_DATA is '控制方式数据'
/

comment on column GP_BM_UPLOAD_CFG.SAVE_PATH is '存放路径'
/

comment on column GP_BM_UPLOAD_CFG.FILE_NAME_TPL is '文件名模板'
/

comment on column GP_BM_UPLOAD_CFG.JOB_TYPE is '类型'
/

comment on column GP_BM_UPLOAD_CFG.AFTER_BEAN is '后续操作'
/

comment on column GP_BM_UPLOAD_CFG.STATUS is '启用状态'
/

comment on column GP_BM_UPLOAD_CFG.REMARKS is '备注'
/

comment on column GP_BM_UPLOAD_CFG.CHECK_FLAG is '校验标识'
/

comment on column GP_BM_UPLOAD_CFG.CHECK_DESC is '校验结果'
/

comment on column GP_BM_UPLOAD_CFG.CHECK_ERR_TYPE is '校验失败类型'
/

comment on column GP_BM_UPLOAD_CFG.NEXT_ACTION is '下一动作'
/

comment on column GP_BM_UPLOAD_CFG.DATA_STATUS is '数据状态'
/

comment on column GP_BM_UPLOAD_CFG.DATA_FLAG is '数据是否已删除'
/

comment on column GP_BM_UPLOAD_CFG.DATA_SOURCE is '数据来源'
/

comment on column GP_BM_UPLOAD_CFG.DATA_VERSION is '数据版本'
/

comment on column GP_BM_UPLOAD_CFG.DATA_REJ_DESC is '数据审核拒绝原因'
/

comment on column GP_BM_UPLOAD_CFG.DATA_DEL_DESC is '数据删除描述'
/

comment on column GP_BM_UPLOAD_CFG.DATA_CRT_USER is '数据创建/导入用户'
/

comment on column GP_BM_UPLOAD_CFG.DATA_CRT_DATE is '数据创建/导入日期'
/

comment on column GP_BM_UPLOAD_CFG.DATA_CRT_TIME is '数据创建/导入时间'
/

comment on column GP_BM_UPLOAD_CFG.DATA_CHG_USER is '数据修改/删除用户'
/

comment on column GP_BM_UPLOAD_CFG.DATA_CHG_DATE is '数据修改/删除日期'
/

comment on column GP_BM_UPLOAD_CFG.DATA_CHG_TIME is '数据修改/删除时间'
/

comment on column GP_BM_UPLOAD_CFG.DATA_APV_USER is '数据审核/拒绝用户'
/

comment on column GP_BM_UPLOAD_CFG.DATA_APV_DATE is '数据审核/拒绝日期'
/

comment on column GP_BM_UPLOAD_CFG.DATA_APV_TIME is '数据审核/拒绝时间'
/

comment on column GP_BM_UPLOAD_CFG.RSV1 is '备用1'
/

comment on column GP_BM_UPLOAD_CFG.RSV2 is '备用2'
/

comment on column GP_BM_UPLOAD_CFG.RSV3 is '备用3'
/

comment on column GP_BM_UPLOAD_CFG.RSV4 is '备用4'
/

comment on column GP_BM_UPLOAD_CFG.RSV5 is '备用5'
/

create table GP_BM_UPLOAD_LOG
(
    DATA_ID            VARCHAR2(64) not null,
    DATA_DATE          CHAR(8),
    CORP_ID            VARCHAR2(14),
    ORG_ID             VARCHAR2(14),
    GROUP_ID           VARCHAR2(14),
    FILE_SERVICE       VARCHAR2(180),
    REAL_PATH          VARCHAR2(300),
    BEFORE_UPLOAD_NAME VARCHAR2(180),
    BEGIN_TIME         VARCHAR2(14),
    END_TIME           VARCHAR2(14),
    IP                 VARCHAR2(30),
    STATUS             VARCHAR2(2),
    ERR_CODE           VARCHAR2(30),
    ERR_MSG            VARCHAR2(300),
    REMARKS            VARCHAR2(180),
    CHECK_FLAG         CHAR,
    CHECK_DESC         VARCHAR2(512),
    CHECK_ERR_TYPE     CHAR,
    NEXT_ACTION        CHAR(2),
    DATA_STATUS        CHAR(2),
    DATA_FLAG          CHAR,
    DATA_SOURCE        CHAR,
    DATA_VERSION       NUMBER(8),
    DATA_REJ_DESC      VARCHAR2(128),
    DATA_DEL_DESC      VARCHAR2(128),
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
    RSV5               VARCHAR2(180)
)
/

comment on table GP_BM_UPLOAD_LOG is '文件上传日志表'
/

comment on column GP_BM_UPLOAD_LOG.DATA_ID is '数据ID'
/

comment on column GP_BM_UPLOAD_LOG.DATA_DATE is '数据日期'
/

comment on column GP_BM_UPLOAD_LOG.CORP_ID is '法人机构号'
/

comment on column GP_BM_UPLOAD_LOG.ORG_ID is '机构号'
/

comment on column GP_BM_UPLOAD_LOG.GROUP_ID is '部门编号'
/

comment on column GP_BM_UPLOAD_LOG.FILE_SERVICE is '文件服务'
/

comment on column GP_BM_UPLOAD_LOG.REAL_PATH is '实际路径'
/

comment on column GP_BM_UPLOAD_LOG.BEFORE_UPLOAD_NAME is '上传前文件名'
/

comment on column GP_BM_UPLOAD_LOG.BEGIN_TIME is '开始上传时间'
/

comment on column GP_BM_UPLOAD_LOG.END_TIME is '结束上传时间'
/

comment on column GP_BM_UPLOAD_LOG.IP is '上传IP地址'
/

comment on column GP_BM_UPLOAD_LOG.STATUS is '状态'
/

comment on column GP_BM_UPLOAD_LOG.ERR_CODE is '错误码'
/

comment on column GP_BM_UPLOAD_LOG.ERR_MSG is '错误信息'
/

comment on column GP_BM_UPLOAD_LOG.REMARKS is '备注'
/

comment on column GP_BM_UPLOAD_LOG.CHECK_FLAG is '校验标识'
/

comment on column GP_BM_UPLOAD_LOG.CHECK_DESC is '校验结果'
/

comment on column GP_BM_UPLOAD_LOG.CHECK_ERR_TYPE is '校验失败类型'
/

comment on column GP_BM_UPLOAD_LOG.NEXT_ACTION is '下一动作'
/

comment on column GP_BM_UPLOAD_LOG.DATA_STATUS is '数据状态'
/

comment on column GP_BM_UPLOAD_LOG.DATA_FLAG is '数据是否已删除'
/

comment on column GP_BM_UPLOAD_LOG.DATA_SOURCE is '数据来源'
/

comment on column GP_BM_UPLOAD_LOG.DATA_VERSION is '数据版本'
/

comment on column GP_BM_UPLOAD_LOG.DATA_REJ_DESC is '数据审核拒绝原因'
/

comment on column GP_BM_UPLOAD_LOG.DATA_DEL_DESC is '数据删除描述'
/

comment on column GP_BM_UPLOAD_LOG.DATA_CRT_USER is '数据创建/导入用户'
/

comment on column GP_BM_UPLOAD_LOG.DATA_CRT_DATE is '数据创建/导入日期'
/

comment on column GP_BM_UPLOAD_LOG.DATA_CRT_TIME is '数据创建/导入时间'
/

comment on column GP_BM_UPLOAD_LOG.DATA_CHG_USER is '数据修改/删除用户'
/

comment on column GP_BM_UPLOAD_LOG.DATA_CHG_DATE is '数据修改/删除日期'
/

comment on column GP_BM_UPLOAD_LOG.DATA_CHG_TIME is '数据修改/删除时间'
/

comment on column GP_BM_UPLOAD_LOG.DATA_APV_USER is '数据审核/拒绝用户'
/

comment on column GP_BM_UPLOAD_LOG.DATA_APV_DATE is '数据审核/拒绝日期'
/

comment on column GP_BM_UPLOAD_LOG.DATA_APV_TIME is '数据审核/拒绝时间'
/

comment on column GP_BM_UPLOAD_LOG.RSV1 is '备用1'
/

comment on column GP_BM_UPLOAD_LOG.RSV2 is '备用2'
/

comment on column GP_BM_UPLOAD_LOG.RSV3 is '备用3'
/

comment on column GP_BM_UPLOAD_LOG.RSV4 is '备用4'
/

comment on column GP_BM_UPLOAD_LOG.RSV5 is '备用5'
/

create table GP_BM_USER_TAB_COLS
(
    DATA_ID        VARCHAR2(64) not null
        primary key,
    TABLE_NAME     VARCHAR2(30),
    COLUMN_NAME    VARCHAR2(30),
    DATA_TYPE      VARCHAR2(106),
    DATA_LENGTH    NUMBER,
    DATA_PRECISION NUMBER,
    DATA_SCALE     NUMBER,
    NULLABLE       VARCHAR2(1),
    COLUMN_ID      NUMBER,
    CHAR_LENGTH    NUMBER
)
/

comment on table GP_BM_USER_TAB_COLS is '数据库用户表属性表'
/

comment on column GP_BM_USER_TAB_COLS.DATA_ID is '数据ID'
/

create table GP_BM_WIDGET_CFG
(
    DATA_ID            VARCHAR2(64) not null,
    DATA_DATE          CHAR(8),
    CORP_ID            VARCHAR2(14),
    ORG_ID             VARCHAR2(14),
    GROUP_ID           VARCHAR2(14),
    INQ_ORG_ID         CHAR(24),
    INQ_GROUP_ID       CHAR(24),
    FUNCID             VARCHAR2(50),
    DEPART             VARCHAR2(30),
    FIELDNAME          VARCHAR2(2000),
    TYPE               VARCHAR2(1),
    REMARKS            VARCHAR2(512),
    CHECK_FLAG         CHAR,
    CHECK_DESC         VARCHAR2(512),
    CHECK_ERR_TYPE     CHAR,
    NEXT_ACTION        CHAR(2),
    DATA_STATUS        CHAR(2),
    DATA_FLAG          CHAR,
    DATA_SOURCE        CHAR,
    DATA_VERSION       NUMBER(8),
    DATA_REJ_DESC      VARCHAR2(128),
    DATA_DEL_DESC      VARCHAR2(128),
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
    USERNAMELIST       VARCHAR2(180),
    FUNCNAMELIST       VARCHAR2(180),
    FIELDPARTNAMELIST  VARCHAR2(180),
    FIELDPART          VARCHAR2(180),
    FIELDNAMEDESC      VARCHAR2(180),
    BUTTONTYPE         VARCHAR2(180),
    BUTTONPARTNAMELIST VARCHAR2(180),
    BUTTONPART         VARCHAR2(180),
    BUTTONNAME         VARCHAR2(180),
    BUTTONID           VARCHAR2(180)
)
/

comment on column GP_BM_WIDGET_CFG.DATA_ID is '数据ID'
/

comment on column GP_BM_WIDGET_CFG.DATA_DATE is '数据日期'
/

comment on column GP_BM_WIDGET_CFG.CORP_ID is '法人机构号'
/

comment on column GP_BM_WIDGET_CFG.ORG_ID is '机构号'
/

comment on column GP_BM_WIDGET_CFG.GROUP_ID is '部门编号'
/

comment on column GP_BM_WIDGET_CFG.INQ_ORG_ID is '查询机构号'
/

comment on column GP_BM_WIDGET_CFG.INQ_GROUP_ID is '查询组号'
/

comment on column GP_BM_WIDGET_CFG.TYPE is '显示类型'
/

comment on column GP_BM_WIDGET_CFG.REMARKS is '备注'
/

comment on column GP_BM_WIDGET_CFG.CHECK_FLAG is '校验标识'
/

comment on column GP_BM_WIDGET_CFG.CHECK_DESC is '校验结果'
/

comment on column GP_BM_WIDGET_CFG.CHECK_ERR_TYPE is '校验失败类型'
/

comment on column GP_BM_WIDGET_CFG.NEXT_ACTION is '下一动作'
/

comment on column GP_BM_WIDGET_CFG.DATA_STATUS is '数据状态'
/

comment on column GP_BM_WIDGET_CFG.DATA_FLAG is '数据是否已删除'
/

comment on column GP_BM_WIDGET_CFG.DATA_SOURCE is '数据来源'
/

comment on column GP_BM_WIDGET_CFG.DATA_VERSION is '数据版本'
/

comment on column GP_BM_WIDGET_CFG.DATA_REJ_DESC is '数据审核拒绝原因'
/

comment on column GP_BM_WIDGET_CFG.DATA_DEL_DESC is '数据删除描述'
/

comment on column GP_BM_WIDGET_CFG.DATA_CRT_USER is '数据创建/导入用户'
/

comment on column GP_BM_WIDGET_CFG.DATA_CRT_DATE is '数据创建/导入日期'
/

comment on column GP_BM_WIDGET_CFG.DATA_CRT_TIME is '数据创建/导入时间'
/

comment on column GP_BM_WIDGET_CFG.DATA_CHG_USER is '数据修改/删除用户'
/

comment on column GP_BM_WIDGET_CFG.DATA_CHG_DATE is '数据修改/删除日期'
/

comment on column GP_BM_WIDGET_CFG.DATA_CHG_TIME is '数据修改/删除时间'
/

comment on column GP_BM_WIDGET_CFG.DATA_APV_USER is '数据审核/拒绝用户'
/

comment on column GP_BM_WIDGET_CFG.DATA_APV_DATE is '数据审核/拒绝日期'
/

comment on column GP_BM_WIDGET_CFG.DATA_APV_TIME is '数据审核/拒绝时间'
/

comment on column GP_BM_WIDGET_CFG.RSV1 is '备用1'
/

comment on column GP_BM_WIDGET_CFG.RSV2 is '备用2'
/

comment on column GP_BM_WIDGET_CFG.RSV3 is '备用3'
/

comment on column GP_BM_WIDGET_CFG.RSV4 is '备用4'
/

comment on column GP_BM_WIDGET_CFG.RSV5 is '备用5'
/

create table GP_BM_WORKFLOW_ENTITY
(
    DATA_ID        VARCHAR2(64) not null,
    DATA_DATE      CHAR(8),
    CORP_ID        VARCHAR2(14),
    ORG_ID         VARCHAR2(14),
    GROUP_ID       VARCHAR2(14),
    NEXT_ACTION    CHAR(2),
    DATA_STATUS    CHAR(2),
    DATA_FLAG      CHAR,
    DATA_SOURCE    CHAR,
    CHECK_FLAG     CHAR,
    CHECK_DESC     VARCHAR2(512),
    CHECK_ERR_TYPE CHAR,
    DATA_VERSION   NUMBER(8),
    DATA_REJ_DESC  VARCHAR2(128),
    DATA_DEL_DESC  VARCHAR2(128),
    DATA_CRT_USER  VARCHAR2(20),
    DATA_CRT_DATE  CHAR(8),
    DATA_CRT_TIME  CHAR(14),
    DATA_CHG_USER  VARCHAR2(20),
    DATA_CHG_DATE  CHAR(8),
    DATA_CHG_TIME  CHAR(14),
    DATA_APV_USER  VARCHAR2(20),
    DATA_APV_DATE  CHAR(8),
    DATA_APV_TIME  CHAR(14),
    RSV1           VARCHAR2(180),
    RSV2           VARCHAR2(180),
    RSV3           VARCHAR2(180),
    RSV4           VARCHAR2(180),
    RSV5           VARCHAR2(180),
    REMARK         VARCHAR2(512),
    FLOW_ID        VARCHAR2(32),
    TX_TIME        VARCHAR2(16),
    TX_TYPE        VARCHAR2(32),
    TX_CODE        VARCHAR2(32),
    ACT_NO         VARCHAR2(32),
    TX_AMT         NUMBER,
    CNT_UNIT       VARCHAR2(60),
    GOOD_NUM       NUMBER,
    GOOD_AMT       NUMBER,
    OP_TYPE        CHAR,
    ENTITY_CLASS   VARCHAR2(100),
    ENTITY         CLOB,
    ENTITY_ID      VARCHAR2(32)
)
/

comment on table GP_BM_WORKFLOW_ENTITY is '工作流程实体数据表'
/

comment on column GP_BM_WORKFLOW_ENTITY.DATA_ID is '数据ID'
/

comment on column GP_BM_WORKFLOW_ENTITY.DATA_DATE is '数据日期'
/

comment on column GP_BM_WORKFLOW_ENTITY.CORP_ID is '法人机构号'
/

comment on column GP_BM_WORKFLOW_ENTITY.ORG_ID is '机构号'
/

comment on column GP_BM_WORKFLOW_ENTITY.GROUP_ID is '部门编号'
/

comment on column GP_BM_WORKFLOW_ENTITY.NEXT_ACTION is '下一动作'
/

comment on column GP_BM_WORKFLOW_ENTITY.DATA_STATUS is '数据状态'
/

comment on column GP_BM_WORKFLOW_ENTITY.DATA_FLAG is '数据是否已删除'
/

comment on column GP_BM_WORKFLOW_ENTITY.DATA_SOURCE is '数据来源'
/

comment on column GP_BM_WORKFLOW_ENTITY.CHECK_FLAG is '校验标识'
/

comment on column GP_BM_WORKFLOW_ENTITY.CHECK_DESC is '校验结果'
/

comment on column GP_BM_WORKFLOW_ENTITY.CHECK_ERR_TYPE is '校验失败类型'
/

comment on column GP_BM_WORKFLOW_ENTITY.DATA_VERSION is '数据版本'
/

comment on column GP_BM_WORKFLOW_ENTITY.DATA_REJ_DESC is '数据审核拒绝原因'
/

comment on column GP_BM_WORKFLOW_ENTITY.DATA_DEL_DESC is '数据删除描述'
/

comment on column GP_BM_WORKFLOW_ENTITY.DATA_CRT_USER is '数据创建/导入用户'
/

comment on column GP_BM_WORKFLOW_ENTITY.DATA_CRT_DATE is '数据创建/导入日期'
/

comment on column GP_BM_WORKFLOW_ENTITY.DATA_CRT_TIME is '数据创建/导入时间'
/

comment on column GP_BM_WORKFLOW_ENTITY.DATA_CHG_USER is '数据修改/删除用户'
/

comment on column GP_BM_WORKFLOW_ENTITY.DATA_CHG_DATE is '数据修改/删除日期'
/

comment on column GP_BM_WORKFLOW_ENTITY.DATA_CHG_TIME is '数据修改/删除时间'
/

comment on column GP_BM_WORKFLOW_ENTITY.DATA_APV_USER is '数据审核/拒绝用户'
/

comment on column GP_BM_WORKFLOW_ENTITY.DATA_APV_DATE is '数据审核/拒绝日期'
/

comment on column GP_BM_WORKFLOW_ENTITY.DATA_APV_TIME is '数据审核/拒绝时间'
/

comment on column GP_BM_WORKFLOW_ENTITY.RSV1 is '备用1'
/

comment on column GP_BM_WORKFLOW_ENTITY.RSV2 is '备用2'
/

comment on column GP_BM_WORKFLOW_ENTITY.RSV3 is '备用3'
/

comment on column GP_BM_WORKFLOW_ENTITY.RSV4 is '备用4'
/

comment on column GP_BM_WORKFLOW_ENTITY.RSV5 is '备用5'
/

comment on column GP_BM_WORKFLOW_ENTITY.REMARK is '备注'
/

comment on column GP_BM_WORKFLOW_ENTITY.FLOW_ID is '流程ID'
/

comment on column GP_BM_WORKFLOW_ENTITY.TX_TIME is '交易日期'
/

comment on column GP_BM_WORKFLOW_ENTITY.TX_TYPE is '交易种类'
/

comment on column GP_BM_WORKFLOW_ENTITY.TX_CODE is '交易编码'
/

comment on column GP_BM_WORKFLOW_ENTITY.ACT_NO is '账号'
/

comment on column GP_BM_WORKFLOW_ENTITY.TX_AMT is '交易金额'
/

comment on column GP_BM_WORKFLOW_ENTITY.CNT_UNIT is '单位'
/

comment on column GP_BM_WORKFLOW_ENTITY.GOOD_NUM is '数量'
/

comment on column GP_BM_WORKFLOW_ENTITY.GOOD_AMT is '单价'
/

comment on column GP_BM_WORKFLOW_ENTITY.OP_TYPE is '操作类型 A：新增，U：更新，D：删除'
/

comment on column GP_BM_WORKFLOW_ENTITY.ENTITY_CLASS is '实体类型'
/

comment on column GP_BM_WORKFLOW_ENTITY.ENTITY is '数据体'
/

comment on column GP_BM_WORKFLOW_ENTITY.ENTITY_ID is '实体数据ID'
/

create table GP_BM_WORKFLOW_INFO
(
    DATA_ID         VARCHAR2(64) not null,
    DATA_DATE       CHAR(8),
    CORP_ID         VARCHAR2(14),
    ORG_ID          VARCHAR2(14),
    GROUP_ID        VARCHAR2(14),
    NEXT_ACTION     CHAR(2),
    DATA_STATUS     CHAR(2),
    DATA_FLAG       CHAR,
    DATA_SOURCE     CHAR,
    CHECK_FLAG      CHAR,
    CHECK_DESC      VARCHAR2(512),
    CHECK_ERR_TYPE  CHAR,
    DATA_VERSION    NUMBER(8),
    DATA_REJ_DESC   VARCHAR2(128),
    DATA_DEL_DESC   VARCHAR2(128),
    DATA_CRT_USER   VARCHAR2(20),
    DATA_CRT_DATE   CHAR(8),
    DATA_CRT_TIME   CHAR(14),
    DATA_CHG_USER   VARCHAR2(20),
    DATA_CHG_DATE   CHAR(8),
    DATA_CHG_TIME   CHAR(14),
    DATA_APV_USER   VARCHAR2(20),
    DATA_APV_DATE   CHAR(8),
    DATA_APV_TIME   CHAR(14),
    RSV1            VARCHAR2(180),
    RSV2            VARCHAR2(180),
    RSV3            VARCHAR2(180),
    RSV4            VARCHAR2(180),
    RSV5            VARCHAR2(180),
    REMARK          VARCHAR2(512),
    APPLY_ID        CHAR(32),
    DRAFT_ID        CHAR(32),
    BPM_NO          CHAR(32),
    BPM_NAME        VARCHAR2(256),
    TASK_NAME       VARCHAR2(256),
    APPLY_ORG_ID    VARCHAR2(14),
    TASK_START_TIME CHAR(17),
    TASK_END_TIME   CHAR(17),
    TASK_STATUS     CHAR(2),
    FUNC_ID         CHAR(32),
    BIZ_TYPE        VARCHAR2(10),
    BUTTON_ID       VARCHAR2(32),
    ACTION_TYPE     VARCHAR2(32),
    ACTION_ID       VARCHAR2(50),
    CONDITION_ID    VARCHAR2(32)
)
/

comment on table GP_BM_WORKFLOW_INFO is '工作流程实例表'
/

comment on column GP_BM_WORKFLOW_INFO.DATA_ID is '数据ID'
/

comment on column GP_BM_WORKFLOW_INFO.DATA_DATE is '数据日期'
/

comment on column GP_BM_WORKFLOW_INFO.CORP_ID is '法人机构号'
/

comment on column GP_BM_WORKFLOW_INFO.ORG_ID is '机构号'
/

comment on column GP_BM_WORKFLOW_INFO.GROUP_ID is '部门编号'
/

comment on column GP_BM_WORKFLOW_INFO.NEXT_ACTION is '下一动作'
/

comment on column GP_BM_WORKFLOW_INFO.DATA_STATUS is '数据状态'
/

comment on column GP_BM_WORKFLOW_INFO.DATA_FLAG is '数据是否已删除'
/

comment on column GP_BM_WORKFLOW_INFO.DATA_SOURCE is '数据来源'
/

comment on column GP_BM_WORKFLOW_INFO.CHECK_FLAG is '校验标识'
/

comment on column GP_BM_WORKFLOW_INFO.CHECK_DESC is '校验结果'
/

comment on column GP_BM_WORKFLOW_INFO.CHECK_ERR_TYPE is '校验失败类型'
/

comment on column GP_BM_WORKFLOW_INFO.DATA_VERSION is '数据版本'
/

comment on column GP_BM_WORKFLOW_INFO.DATA_REJ_DESC is '数据审核拒绝原因'
/

comment on column GP_BM_WORKFLOW_INFO.DATA_DEL_DESC is '数据删除描述'
/

comment on column GP_BM_WORKFLOW_INFO.DATA_CRT_USER is '数据创建/导入用户'
/

comment on column GP_BM_WORKFLOW_INFO.DATA_CRT_DATE is '数据创建/导入日期'
/

comment on column GP_BM_WORKFLOW_INFO.DATA_CRT_TIME is '数据创建/导入时间'
/

comment on column GP_BM_WORKFLOW_INFO.DATA_CHG_USER is '数据修改/删除用户'
/

comment on column GP_BM_WORKFLOW_INFO.DATA_CHG_DATE is '数据修改/删除日期'
/

comment on column GP_BM_WORKFLOW_INFO.DATA_CHG_TIME is '数据修改/删除时间'
/

comment on column GP_BM_WORKFLOW_INFO.DATA_APV_USER is '数据审核/拒绝用户'
/

comment on column GP_BM_WORKFLOW_INFO.DATA_APV_DATE is '数据审核/拒绝日期'
/

comment on column GP_BM_WORKFLOW_INFO.DATA_APV_TIME is '数据审核/拒绝时间'
/

comment on column GP_BM_WORKFLOW_INFO.RSV1 is '备用1'
/

comment on column GP_BM_WORKFLOW_INFO.RSV2 is '备用2'
/

comment on column GP_BM_WORKFLOW_INFO.RSV3 is '备用3'
/

comment on column GP_BM_WORKFLOW_INFO.RSV4 is '备用4'
/

comment on column GP_BM_WORKFLOW_INFO.RSV5 is '备用5'
/

comment on column GP_BM_WORKFLOW_INFO.REMARK is '备注'
/

comment on column GP_BM_WORKFLOW_INFO.APPLY_ID is '申请号'
/

comment on column GP_BM_WORKFLOW_INFO.DRAFT_ID is '草稿号'
/

comment on column GP_BM_WORKFLOW_INFO.BPM_NO is '流程编号'
/

comment on column GP_BM_WORKFLOW_INFO.BPM_NAME is '流程名称'
/

comment on column GP_BM_WORKFLOW_INFO.TASK_NAME is '任务名称'
/

comment on column GP_BM_WORKFLOW_INFO.APPLY_ORG_ID is '申请机构'
/

comment on column GP_BM_WORKFLOW_INFO.TASK_START_TIME is '任务发起时间'
/

comment on column GP_BM_WORKFLOW_INFO.TASK_END_TIME is '任务结束时间'
/

comment on column GP_BM_WORKFLOW_INFO.TASK_STATUS is '任务状态'
/

comment on column GP_BM_WORKFLOW_INFO.FUNC_ID is '菜单ID'
/

comment on column GP_BM_WORKFLOW_INFO.BIZ_TYPE is '业务类型'
/

comment on column GP_BM_WORKFLOW_INFO.BUTTON_ID is '按纽ID'
/

comment on column GP_BM_WORKFLOW_INFO.ACTION_TYPE is '动作类型'
/

comment on column GP_BM_WORKFLOW_INFO.ACTION_ID is '动作Id'
/

comment on column GP_BM_WORKFLOW_INFO.CONDITION_ID is '条件ID'
/

create table GP_BM_WORKFLOW_TYPE
(
    DATA_ID     VARCHAR2(64) not null,
    FUNC_ID     VARCHAR2(32),
    BUTTON_ID   VARCHAR2(50),
    FLOW_TYPE   CHAR,
    TABLE_STYLE CHAR
)
/

comment on table GP_BM_WORKFLOW_TYPE is '工作流类型定义表'
/

comment on column GP_BM_WORKFLOW_TYPE.DATA_ID is '数据ID'
/

comment on column GP_BM_WORKFLOW_TYPE.FUNC_ID is '菜单ID'
/

comment on column GP_BM_WORKFLOW_TYPE.BUTTON_ID is '按钮ID'
/

comment on column GP_BM_WORKFLOW_TYPE.FLOW_TYPE is '流程类型N：nextaction,B：工作流'
/

comment on column GP_BM_WORKFLOW_TYPE.TABLE_STYLE is '临时表模式1:原业务表 2:单独临时表 3:公共临时表'
/

create table GP_QC_RULE_BAK
(
    DATA_ID        VARCHAR2(64) not null,
    DATA_DATE      CHAR(8),
    CORP_ID        VARCHAR2(14),
    ORG_ID         VARCHAR2(14),
    GROUP_ID       VARCHAR2(14),
    INQ_ORG_ID     VARCHAR2(24),
    INQ_GROUP_ID   VARCHAR2(24),
    RULE_DESC      VARCHAR2(512),
    RULE_MESSAGE   VARCHAR2(3072),
    RULE_TYPE      VARCHAR2(32),
    RULE_SOURCE    VARCHAR2(32),
    FIELD          VARCHAR2(128),
    FIELD_NAME     VARCHAR2(128),
    TRIMMABLE      CHAR,
    NULLABLE       CHAR,
    TYPE_ID        VARCHAR2(64),
    ENCODING       VARCHAR2(32),
    MIN_LENGTH     NUMBER(8),
    MAX_LENGTH     NUMBER(8),
    MIN_VALUE      NUMBER(32, 10),
    MAX_VALUE      NUMBER(32, 10),
    MAX_PRECISION  NUMBER(8),
    MIN_SCALE      NUMBER(8),
    MAX_SCALE      NUMBER(8),
    ENUMERATION    VARCHAR2(3072),
    PATTERN        VARCHAR2(1024),
    IN_ENTITY      VARCHAR2(128),
    IN_FIELD       VARCHAR2(128),
    SQL            VARCHAR2(3072),
    SQL_EXTRA_KEY  VARCHAR2(1024),
    SCRIPT         VARCHAR2(3072),
    BEAN           VARCHAR2(128),
    CHECK_FLAG     CHAR,
    CHECK_DESC     VARCHAR2(512),
    CHECK_ERR_TYPE CHAR,
    NEXT_ACTION    CHAR(2),
    DATA_STATUS    CHAR(2),
    DATA_FLAG      CHAR,
    DATA_OP        CHAR,
    DATA_SOURCE    CHAR,
    DATA_VERSION   NUMBER(8),
    DATA_REJ_DESC  VARCHAR2(128),
    DATA_DEL_DESC  VARCHAR2(128),
    DATA_CRT_USER  VARCHAR2(20),
    DATA_CRT_DATE  CHAR(8),
    DATA_CRT_TIME  CHAR(14),
    DATA_CHG_USER  VARCHAR2(20),
    DATA_CHG_DATE  CHAR(8),
    DATA_CHG_TIME  CHAR(14),
    DATA_APV_USER  VARCHAR2(20),
    DATA_APV_DATE  CHAR(8),
    DATA_APV_TIME  CHAR(14),
    RSV1           VARCHAR2(180),
    RSV2           VARCHAR2(180),
    RSV3           VARCHAR2(180),
    RSV4           VARCHAR2(180),
    RSV5           VARCHAR2(180)
)
/

create table RDMS_BM_RPT_CFG_DTL
(
    DATA_ID        VARCHAR2(64) not null
        primary key,
    DATA_DATE      CHAR(8),
    CORP_ID        VARCHAR2(14),
    ORG_ID         VARCHAR2(14),
    GROUP_ID       VARCHAR2(14),
    INQ_ORG_ID     CHAR(24),
    INQ_GROUP_ID   CHAR(24),
    REPORT_CODE    VARCHAR2(80),
    COLUMN_NAME    VARCHAR2(80),
    COLUMN_DESC    VARCHAR2(200),
    COLUMN_TYPE    VARCHAR2(200),
    SEQ_NO         NUMBER(8),
    HANDLE_METHOD  VARCHAR2(800),
    DEFAULT_VALUE  VARCHAR2(200),
    COLUMN_STATUS  VARCHAR2(2),
    IS_CACHE       VARCHAR2(2),
    CHECK_FLAG     CHAR,
    CHECK_DESC     VARCHAR2(512),
    CHECK_ERR_TYPE CHAR,
    NEXT_ACTION    CHAR(2),
    DATA_STATUS    CHAR(2),
    DATA_FLAG      CHAR,
    DATA_OP        CHAR,
    DATA_SOURCE    CHAR,
    DATA_VERSION   NUMBER(8),
    DATA_HASH      VARCHAR2(64),
    DATA_REJ_DESC  VARCHAR2(128),
    DATA_DEL_DESC  VARCHAR2(128),
    DATA_CRT_USER  VARCHAR2(20),
    DATA_CRT_DATE  CHAR(8),
    DATA_CRT_TIME  CHAR(14),
    DATA_CHG_USER  VARCHAR2(20),
    DATA_CHG_DATE  CHAR(8),
    DATA_CHG_TIME  CHAR(14),
    DATA_APV_USER  VARCHAR2(20),
    DATA_APV_DATE  CHAR(8),
    DATA_APV_TIME  CHAR(14),
    RSV1           VARCHAR2(180),
    RSV2           VARCHAR2(180),
    RSV3           VARCHAR2(180),
    RSV4           VARCHAR2(180),
    RSV5           VARCHAR2(180)
)
/

comment on table RDMS_BM_RPT_CFG_DTL is '上报报表字段配置'
/

comment on column RDMS_BM_RPT_CFG_DTL.DATA_ID is '数据ID'
/

comment on column RDMS_BM_RPT_CFG_DTL.DATA_DATE is '数据日期'
/

comment on column RDMS_BM_RPT_CFG_DTL.CORP_ID is '法人机构号'
/

comment on column RDMS_BM_RPT_CFG_DTL.ORG_ID is '机构号'
/

comment on column RDMS_BM_RPT_CFG_DTL.GROUP_ID is '部门编号'
/

comment on column RDMS_BM_RPT_CFG_DTL.INQ_ORG_ID is '查询机构号'
/

comment on column RDMS_BM_RPT_CFG_DTL.INQ_GROUP_ID is '查询组号'
/

comment on column RDMS_BM_RPT_CFG_DTL.REPORT_CODE is '报表编码'
/

comment on column RDMS_BM_RPT_CFG_DTL.COLUMN_NAME is '字段编码'
/

comment on column RDMS_BM_RPT_CFG_DTL.COLUMN_DESC is '字段中文名称'
/

comment on column RDMS_BM_RPT_CFG_DTL.COLUMN_TYPE is '字段类型'
/

comment on column RDMS_BM_RPT_CFG_DTL.SEQ_NO is '字段顺序'
/

comment on column RDMS_BM_RPT_CFG_DTL.HANDLE_METHOD is '处理方法'
/

comment on column RDMS_BM_RPT_CFG_DTL.DEFAULT_VALUE is '为空默认值，字符串填写''123'',数字填写 1.2'
/

comment on column RDMS_BM_RPT_CFG_DTL.COLUMN_STATUS is '是否有效0-有效 1-无效'
/

comment on column RDMS_BM_RPT_CFG_DTL.IS_CACHE is '校验时是否需要缓存，1-需要缓存 2-不需要缓存'
/

comment on column RDMS_BM_RPT_CFG_DTL.CHECK_FLAG is '校验标识'
/

comment on column RDMS_BM_RPT_CFG_DTL.CHECK_DESC is '校验结果'
/

comment on column RDMS_BM_RPT_CFG_DTL.CHECK_ERR_TYPE is '校验失败类型'
/

comment on column RDMS_BM_RPT_CFG_DTL.NEXT_ACTION is '下一动作'
/

comment on column RDMS_BM_RPT_CFG_DTL.DATA_STATUS is '数据状态'
/

comment on column RDMS_BM_RPT_CFG_DTL.DATA_FLAG is '数据是否已删除'
/

comment on column RDMS_BM_RPT_CFG_DTL.DATA_OP is '数据操作 A：新增，D:删除, M:修改'
/

comment on column RDMS_BM_RPT_CFG_DTL.DATA_SOURCE is '数据来源'
/

comment on column RDMS_BM_RPT_CFG_DTL.DATA_VERSION is '数据版本'
/

comment on column RDMS_BM_RPT_CFG_DTL.DATA_HASH is '记录HASH值'
/

comment on column RDMS_BM_RPT_CFG_DTL.DATA_REJ_DESC is '数据审核拒绝原因'
/

comment on column RDMS_BM_RPT_CFG_DTL.DATA_DEL_DESC is '数据删除描述'
/

comment on column RDMS_BM_RPT_CFG_DTL.DATA_CRT_USER is '数据创建/导入用户'
/

comment on column RDMS_BM_RPT_CFG_DTL.DATA_CRT_DATE is '数据创建/导入日期'
/

comment on column RDMS_BM_RPT_CFG_DTL.DATA_CRT_TIME is '数据创建/导入时间'
/

comment on column RDMS_BM_RPT_CFG_DTL.DATA_CHG_USER is '数据修改/删除用户'
/

comment on column RDMS_BM_RPT_CFG_DTL.DATA_CHG_DATE is '数据修改/删除日期'
/

comment on column RDMS_BM_RPT_CFG_DTL.DATA_CHG_TIME is '数据修改/删除时间'
/

comment on column RDMS_BM_RPT_CFG_DTL.DATA_APV_USER is '数据审核/拒绝用户'
/

comment on column RDMS_BM_RPT_CFG_DTL.DATA_APV_DATE is '数据审核/拒绝日期'
/

comment on column RDMS_BM_RPT_CFG_DTL.DATA_APV_TIME is '数据审核/拒绝时间'
/

comment on column RDMS_BM_RPT_CFG_DTL.RSV1 is '备用1'
/

comment on column RDMS_BM_RPT_CFG_DTL.RSV2 is '备用2'
/

comment on column RDMS_BM_RPT_CFG_DTL.RSV3 is '备用3'
/

comment on column RDMS_BM_RPT_CFG_DTL.RSV4 is '备用4'
/

comment on column RDMS_BM_RPT_CFG_DTL.RSV5 is '备用5'
/

create table RDMS_BM_RPT_CFG_DTL_TEMP
(
    DATA_ID        VARCHAR2(64) not null,
    DATA_DATE      CHAR(8),
    CORP_ID        VARCHAR2(14),
    ORG_ID         VARCHAR2(14),
    GROUP_ID       VARCHAR2(14),
    INQ_ORG_ID     CHAR(24),
    INQ_GROUP_ID   CHAR(24),
    REPORT_CODE    VARCHAR2(80),
    COLUMN_NAME    VARCHAR2(80),
    COLUMN_DESC    VARCHAR2(200),
    COLUMN_TYPE    VARCHAR2(200),
    SEQ_NO         NUMBER(8),
    HANDLE_METHOD  VARCHAR2(800),
    DEFAULT_VALUE  VARCHAR2(200),
    COLUMN_STATUS  VARCHAR2(2),
    IS_CACHE       VARCHAR2(2),
    CHECK_FLAG     CHAR,
    CHECK_DESC     VARCHAR2(512),
    CHECK_ERR_TYPE CHAR,
    NEXT_ACTION    CHAR(2),
    DATA_STATUS    CHAR(2),
    DATA_FLAG      CHAR,
    DATA_OP        CHAR,
    DATA_SOURCE    CHAR,
    DATA_VERSION   NUMBER(8),
    DATA_HASH      VARCHAR2(64),
    DATA_REJ_DESC  VARCHAR2(128),
    DATA_DEL_DESC  VARCHAR2(128),
    DATA_CRT_USER  VARCHAR2(20),
    DATA_CRT_DATE  CHAR(8),
    DATA_CRT_TIME  CHAR(14),
    DATA_CHG_USER  VARCHAR2(20),
    DATA_CHG_DATE  CHAR(8),
    DATA_CHG_TIME  CHAR(14),
    DATA_APV_USER  VARCHAR2(20),
    DATA_APV_DATE  CHAR(8),
    DATA_APV_TIME  CHAR(14),
    RSV1           VARCHAR2(180),
    RSV2           VARCHAR2(180),
    RSV3           VARCHAR2(180),
    RSV4           VARCHAR2(180),
    RSV5           VARCHAR2(180)
)
/

create table RDMS_BM_RPT_TASK
(
    DATA_ID          VARCHAR2(64) not null
        primary key,
    DATA_DATE        CHAR(8),
    CORP_ID          VARCHAR2(14),
    ORG_ID           VARCHAR2(14),
    GROUP_ID         VARCHAR2(14),
    INQ_ORG_ID       CHAR(24),
    INQ_GROUP_ID     CHAR(24),
    DATA_RPT_DATE    VARCHAR2(8),
    NBJGH            VARCHAR2(20),
    FILE_PATH        VARCHAR2(200),
    FILE_NAME        VARCHAR2(200),
    REPORT_CODE      VARCHAR2(80),
    REPORT_NAME      VARCHAR2(200),
    REPORT_PERIOD    VARCHAR2(2),
    PROCESS_SQL      VARCHAR2(4000),
    WRITE_FILE_SQL   VARCHAR2(4000),
    VALIDATE_SQL     VARCHAR2(4000),
    REPORT_BM_NAME   VARCHAR2(80),
    REPORT_FILE_NAME VARCHAR2(80),
    TASK_STATUS      VARCHAR2(2),
    CJ_START_DATE    VARCHAR2(8),
    CJ_END_DATE      VARCHAR2(8),
    CHECK_FLAG       CHAR,
    CHECK_DESC       VARCHAR2(512),
    CHECK_ERR_TYPE   CHAR,
    NEXT_ACTION      CHAR(2),
    DATA_STATUS      CHAR(2),
    DATA_FLAG        CHAR,
    DATA_OP          CHAR,
    DATA_SOURCE      CHAR,
    DATA_VERSION     NUMBER(8),
    DATA_HASH        VARCHAR2(64),
    DATA_REJ_DESC    VARCHAR2(128),
    DATA_DEL_DESC    VARCHAR2(128),
    DATA_CRT_USER    VARCHAR2(20),
    DATA_CRT_DATE    CHAR(8),
    DATA_CRT_TIME    CHAR(14),
    DATA_CHG_USER    VARCHAR2(20),
    DATA_CHG_DATE    CHAR(8),
    DATA_CHG_TIME    CHAR(14),
    DATA_APV_USER    VARCHAR2(20),
    DATA_APV_DATE    CHAR(8),
    DATA_APV_TIME    CHAR(14),
    RSV1             VARCHAR2(180),
    RSV2             VARCHAR2(180),
    RSV3             VARCHAR2(180),
    RSV4             VARCHAR2(180),
    RSV5             VARCHAR2(180)
)
/

create table CCRS_PM_CKYEKZ
(
    DATA_ID        VARCHAR2(64) not null
        primary key,
    DATA_DATE      CHAR(8),
    DATA_RPT_DATE  CHAR(8),
    CORP_ID        VARCHAR2(14),
    ORG_ID         VARCHAR2(14),
    GROUP_ID       VARCHAR2(14),
    INQ_ORG_ID     CHAR(24),
    INQ_GROUP_ID   CHAR(24),
    SJRQ_DATE      CHAR(8),
    JRJGBM         CHAR(14),
    KHMC           VARCHAR2(300),
    KHZJLX         CHAR(2),
    CKRDM          VARCHAR2(50),
    CKZHDM         VARCHAR2(60),
    CKXYDM         VARCHAR2(180),
    CKQXLX         CHAR(4),
    REMARKS        VARCHAR2(14),
    CHECK_FLAG     CHAR,
    CHECK_DESC     VARCHAR2(512),
    CHECK_ERR_TYPE CHAR,
    NEXT_ACTION    CHAR(2),
    DATA_STATUS    CHAR(2),
    DATA_FLAG      CHAR,
    DATA_SOURCE    CHAR,
    DATA_VERSION   NUMBER(8),
    DATA_REJ_DESC  VARCHAR2(128),
    DATA_DEL_DESC  VARCHAR2(128),
    DATA_CRT_USER  VARCHAR2(20),
    DATA_CRT_DATE  CHAR(8),
    DATA_CRT_TIME  CHAR(14),
    DATA_CHG_USER  VARCHAR2(20),
    DATA_CHG_DATE  CHAR(8),
    DATA_CHG_TIME  CHAR(14),
    DATA_APV_USER  VARCHAR2(20),
    DATA_APV_DATE  CHAR(8),
    DATA_APV_TIME  CHAR(14),
    RSV1           VARCHAR2(180),
    RSV2           VARCHAR2(180),
    RSV3           VARCHAR2(180),
    RSV4           VARCHAR2(180),
    RSV5           VARCHAR2(180)
)
/

comment on table CCRS_PM_CKYEKZ is '存款余额扩展报文'
/

comment on column CCRS_PM_CKYEKZ.DATA_ID is '数据ID'
/

comment on column CCRS_PM_CKYEKZ.DATA_DATE is '数据日期'
/

comment on column CCRS_PM_CKYEKZ.DATA_RPT_DATE is '报表日期'
/

comment on column CCRS_PM_CKYEKZ.CORP_ID is '法人机构号'
/

comment on column CCRS_PM_CKYEKZ.ORG_ID is '机构号'
/

comment on column CCRS_PM_CKYEKZ.GROUP_ID is '部门编号'
/

comment on column CCRS_PM_CKYEKZ.INQ_ORG_ID is '查询机构号'
/

comment on column CCRS_PM_CKYEKZ.INQ_GROUP_ID is '查询组号'
/

comment on column CCRS_PM_CKYEKZ.SJRQ_DATE is '数据日期'
/

comment on column CCRS_PM_CKYEKZ.JRJGBM is '金融机构编码'
/

comment on column CCRS_PM_CKYEKZ.KHMC is '客户名称'
/

comment on column CCRS_PM_CKYEKZ.KHZJLX is '客户证件类型'
/

comment on column CCRS_PM_CKYEKZ.CKRDM is '存款人代码'
/

comment on column CCRS_PM_CKYEKZ.CKZHDM is '存款账户代码'
/

comment on column CCRS_PM_CKYEKZ.CKXYDM is '存款协议代码'
/

comment on column CCRS_PM_CKYEKZ.CKQXLX is '存款期限类型'
/

comment on column CCRS_PM_CKYEKZ.REMARKS is '备注'
/

comment on column CCRS_PM_CKYEKZ.CHECK_FLAG is '校验标识'
/

comment on column CCRS_PM_CKYEKZ.CHECK_DESC is '校验结果'
/

comment on column CCRS_PM_CKYEKZ.CHECK_ERR_TYPE is '校验失败类型'
/

comment on column CCRS_PM_CKYEKZ.NEXT_ACTION is '下一动作'
/

comment on column CCRS_PM_CKYEKZ.DATA_STATUS is '数据状态'
/

comment on column CCRS_PM_CKYEKZ.DATA_FLAG is '数据是否已删除'
/

comment on column CCRS_PM_CKYEKZ.DATA_SOURCE is '数据来源'
/

comment on column CCRS_PM_CKYEKZ.DATA_VERSION is '数据版本'
/

comment on column CCRS_PM_CKYEKZ.DATA_REJ_DESC is '数据审核拒绝原因'
/

comment on column CCRS_PM_CKYEKZ.DATA_DEL_DESC is '数据删除描述'
/

comment on column CCRS_PM_CKYEKZ.DATA_CRT_USER is '数据创建/导入用户'
/

comment on column CCRS_PM_CKYEKZ.DATA_CRT_DATE is '数据创建/导入日期'
/

comment on column CCRS_PM_CKYEKZ.DATA_CRT_TIME is '数据创建/导入时间'
/

comment on column CCRS_PM_CKYEKZ.DATA_CHG_USER is '数据修改/删除用户'
/

comment on column CCRS_PM_CKYEKZ.DATA_CHG_DATE is '数据修改/删除日期'
/

comment on column CCRS_PM_CKYEKZ.DATA_CHG_TIME is '数据修改/删除时间'
/

comment on column CCRS_PM_CKYEKZ.DATA_APV_USER is '数据审核/拒绝用户'
/

comment on column CCRS_PM_CKYEKZ.DATA_APV_DATE is '数据审核/拒绝日期'
/

comment on column CCRS_PM_CKYEKZ.DATA_APV_TIME is '数据审核/拒绝时间'
/

comment on column CCRS_PM_CKYEKZ.RSV1 is '备用1'
/

comment on column CCRS_PM_CKYEKZ.RSV2 is '备用2'
/

comment on column CCRS_PM_CKYEKZ.RSV3 is '备用3'
/

comment on column CCRS_PM_CKYEKZ.RSV4 is '备用4'
/

comment on column CCRS_PM_CKYEKZ.RSV5 is '备用5'
/

create unique index U_CKYEKZ
    on CCRS_PM_CKYEKZ (DATA_RPT_DATE, SJRQ_DATE, CKZHDM)
/

create table CCRS_PM_DBHT
(
    DATA_ID        VARCHAR2(64) not null
        primary key,
    DATA_DATE      CHAR(8),
    DATA_RPT_DATE  CHAR(8),
    CORP_ID        VARCHAR2(14),
    ORG_ID         VARCHAR2(14),
    GROUP_ID       VARCHAR2(14),
    INQ_ORG_ID     CHAR(24),
    INQ_GROUP_ID   CHAR(24),
    SJRQ_DATE      CHAR(8),
    JRJGBM         CHAR(14),
    DBHTBH         VARCHAR2(120),
    DBHTLX         CHAR(2),
    XDHTBH         VARCHAR2(300),
    DBQSRQ_DATE    CHAR(8),
    DBDQRQ_DATE    CHAR(8),
    BZ             CHAR(3),
    DBZJE_AMT      NUMBER,
    REMARKS        VARCHAR2(14),
    CHECK_FLAG     CHAR,
    CHECK_DESC     VARCHAR2(512),
    CHECK_ERR_TYPE CHAR,
    NEXT_ACTION    CHAR(2),
    DATA_STATUS    CHAR(2),
    DATA_FLAG      CHAR,
    DATA_SOURCE    CHAR,
    DATA_VERSION   NUMBER(8),
    DATA_REJ_DESC  VARCHAR2(128),
    DATA_DEL_DESC  VARCHAR2(128),
    DATA_CRT_USER  VARCHAR2(20),
    DATA_CRT_DATE  CHAR(8),
    DATA_CRT_TIME  CHAR(14),
    DATA_CHG_USER  VARCHAR2(20),
    DATA_CHG_DATE  CHAR(8),
    DATA_CHG_TIME  CHAR(14),
    DATA_APV_USER  VARCHAR2(20),
    DATA_APV_DATE  CHAR(8),
    DATA_APV_TIME  CHAR(14),
    RSV1           VARCHAR2(180),
    RSV2           VARCHAR2(180),
    RSV3           VARCHAR2(180),
    RSV4           VARCHAR2(180),
    RSV5           VARCHAR2(180)
)
/

comment on table CCRS_PM_DBHT is '担保合同报文'
/

comment on column CCRS_PM_DBHT.DATA_ID is '数据ID'
/

comment on column CCRS_PM_DBHT.DATA_DATE is '数据日期'
/

comment on column CCRS_PM_DBHT.DATA_RPT_DATE is '报表日期'
/

comment on column CCRS_PM_DBHT.CORP_ID is '法人机构号'
/

comment on column CCRS_PM_DBHT.ORG_ID is '机构号'
/

comment on column CCRS_PM_DBHT.GROUP_ID is '部门编号'
/

comment on column CCRS_PM_DBHT.INQ_ORG_ID is '查询机构号'
/

comment on column CCRS_PM_DBHT.INQ_GROUP_ID is '查询组号'
/

comment on column CCRS_PM_DBHT.SJRQ_DATE is '数据日期'
/

comment on column CCRS_PM_DBHT.JRJGBM is '金融机构编码'
/

comment on column CCRS_PM_DBHT.DBHTBH is '担保合同编号'
/

comment on column CCRS_PM_DBHT.DBHTLX is '担保合同类型'
/

comment on column CCRS_PM_DBHT.XDHTBH is '信贷合同编号'
/

comment on column CCRS_PM_DBHT.DBQSRQ_DATE is '担保起始日期'
/

comment on column CCRS_PM_DBHT.DBDQRQ_DATE is '担保到期日期'
/

comment on column CCRS_PM_DBHT.BZ is '币种'
/

comment on column CCRS_PM_DBHT.DBZJE_AMT is '担保总金额'
/

comment on column CCRS_PM_DBHT.REMARKS is '备注'
/

comment on column CCRS_PM_DBHT.CHECK_FLAG is '校验标识'
/

comment on column CCRS_PM_DBHT.CHECK_DESC is '校验结果'
/

comment on column CCRS_PM_DBHT.CHECK_ERR_TYPE is '校验失败类型'
/

comment on column CCRS_PM_DBHT.NEXT_ACTION is '下一动作'
/

comment on column CCRS_PM_DBHT.DATA_STATUS is '数据状态'
/

comment on column CCRS_PM_DBHT.DATA_FLAG is '数据是否已删除'
/

comment on column CCRS_PM_DBHT.DATA_SOURCE is '数据来源'
/

comment on column CCRS_PM_DBHT.DATA_VERSION is '数据版本'
/

comment on column CCRS_PM_DBHT.DATA_REJ_DESC is '数据审核拒绝原因'
/

comment on column CCRS_PM_DBHT.DATA_DEL_DESC is '数据删除描述'
/

comment on column CCRS_PM_DBHT.DATA_CRT_USER is '数据创建/导入用户'
/

comment on column CCRS_PM_DBHT.DATA_CRT_DATE is '数据创建/导入日期'
/

comment on column CCRS_PM_DBHT.DATA_CRT_TIME is '数据创建/导入时间'
/

comment on column CCRS_PM_DBHT.DATA_CHG_USER is '数据修改/删除用户'
/

comment on column CCRS_PM_DBHT.DATA_CHG_DATE is '数据修改/删除日期'
/

comment on column CCRS_PM_DBHT.DATA_CHG_TIME is '数据修改/删除时间'
/

comment on column CCRS_PM_DBHT.DATA_APV_USER is '数据审核/拒绝用户'
/

comment on column CCRS_PM_DBHT.DATA_APV_DATE is '数据审核/拒绝日期'
/

comment on column CCRS_PM_DBHT.DATA_APV_TIME is '数据审核/拒绝时间'
/

comment on column CCRS_PM_DBHT.RSV1 is '备用1'
/

comment on column CCRS_PM_DBHT.RSV2 is '备用2'
/

comment on column CCRS_PM_DBHT.RSV3 is '备用3'
/

comment on column CCRS_PM_DBHT.RSV4 is '备用4'
/

comment on column CCRS_PM_DBHT.RSV5 is '备用5'
/

create unique index U_DBHT
    on CCRS_PM_DBHT (DATA_RPT_DATE, SJRQ_DATE, DBHTBH)
/

create table CCRS_PM_DBWXX
(
    DATA_ID        VARCHAR2(64) not null
        primary key,
    DATA_DATE      CHAR(8),
    DATA_RPT_DATE  CHAR(8),
    CORP_ID        VARCHAR2(14),
    ORG_ID         VARCHAR2(14),
    GROUP_ID       VARCHAR2(14),
    INQ_ORG_ID     CHAR(24),
    INQ_GROUP_ID   CHAR(24),
    SJRQ_DATE      CHAR(8),
    JRJGBM         CHAR(14),
    DBHTBH         VARCHAR2(120),
    DKDBFS         VARCHAR2(3),
    YPBH           VARCHAR2(300),
    YPMC           VARCHAR2(300),
    YPLX           VARCHAR2(4),
    DBWJZ_AMT      NUMBER,
    BZ             CHAR(3),
    DZYL           NUMBER,
    BZRMC          VARCHAR2(300),
    BZRZJLX        CHAR(2),
    BZRZJHM        VARCHAR2(50),
    REMARKS        VARCHAR2(14),
    CHECK_FLAG     CHAR,
    CHECK_DESC     VARCHAR2(512),
    CHECK_ERR_TYPE CHAR,
    NEXT_ACTION    CHAR(2),
    DATA_STATUS    CHAR(2),
    DATA_FLAG      CHAR,
    DATA_SOURCE    CHAR,
    DATA_VERSION   NUMBER(8),
    DATA_REJ_DESC  VARCHAR2(128),
    DATA_DEL_DESC  VARCHAR2(128),
    DATA_CRT_USER  VARCHAR2(20),
    DATA_CRT_DATE  CHAR(8),
    DATA_CRT_TIME  CHAR(14),
    DATA_CHG_USER  VARCHAR2(20),
    DATA_CHG_DATE  CHAR(8),
    DATA_CHG_TIME  CHAR(14),
    DATA_APV_USER  VARCHAR2(20),
    DATA_APV_DATE  CHAR(8),
    DATA_APV_TIME  CHAR(14),
    RSV1           VARCHAR2(180),
    RSV2           VARCHAR2(180),
    RSV3           VARCHAR2(180),
    RSV4           VARCHAR2(180),
    RSV5           VARCHAR2(180)
)
/

comment on table CCRS_PM_DBWXX is '担保物信息报文'
/

comment on column CCRS_PM_DBWXX.DATA_ID is '数据ID'
/

comment on column CCRS_PM_DBWXX.DATA_DATE is '数据日期'
/

comment on column CCRS_PM_DBWXX.DATA_RPT_DATE is '报表日期'
/

comment on column CCRS_PM_DBWXX.CORP_ID is '法人机构号'
/

comment on column CCRS_PM_DBWXX.ORG_ID is '机构号'
/

comment on column CCRS_PM_DBWXX.GROUP_ID is '部门编号'
/

comment on column CCRS_PM_DBWXX.INQ_ORG_ID is '查询机构号'
/

comment on column CCRS_PM_DBWXX.INQ_GROUP_ID is '查询组号'
/

comment on column CCRS_PM_DBWXX.SJRQ_DATE is '数据日期'
/

comment on column CCRS_PM_DBWXX.JRJGBM is '金融机构编码'
/

comment on column CCRS_PM_DBWXX.DBHTBH is '担保合同编号'
/

comment on column CCRS_PM_DBWXX.DKDBFS is '贷款担保方式'
/

comment on column CCRS_PM_DBWXX.YPBH is '押品编号'
/

comment on column CCRS_PM_DBWXX.YPMC is '押品名称'
/

comment on column CCRS_PM_DBWXX.YPLX is '押品类型'
/

comment on column CCRS_PM_DBWXX.DBWJZ_AMT is '担保物价值'
/

comment on column CCRS_PM_DBWXX.BZ is '币种'
/

comment on column CCRS_PM_DBWXX.DZYL is '抵质押率'
/

comment on column CCRS_PM_DBWXX.BZRMC is '保证人名称'
/

comment on column CCRS_PM_DBWXX.BZRZJLX is '保证人证件类型'
/

comment on column CCRS_PM_DBWXX.BZRZJHM is '保证人证件号码'
/

comment on column CCRS_PM_DBWXX.REMARKS is '备注'
/

comment on column CCRS_PM_DBWXX.CHECK_FLAG is '校验标识'
/

comment on column CCRS_PM_DBWXX.CHECK_DESC is '校验结果'
/

comment on column CCRS_PM_DBWXX.CHECK_ERR_TYPE is '校验失败类型'
/

comment on column CCRS_PM_DBWXX.NEXT_ACTION is '下一动作'
/

comment on column CCRS_PM_DBWXX.DATA_STATUS is '数据状态'
/

comment on column CCRS_PM_DBWXX.DATA_FLAG is '数据是否已删除'
/

comment on column CCRS_PM_DBWXX.DATA_SOURCE is '数据来源'
/

comment on column CCRS_PM_DBWXX.DATA_VERSION is '数据版本'
/

comment on column CCRS_PM_DBWXX.DATA_REJ_DESC is '数据审核拒绝原因'
/

comment on column CCRS_PM_DBWXX.DATA_DEL_DESC is '数据删除描述'
/

comment on column CCRS_PM_DBWXX.DATA_CRT_USER is '数据创建/导入用户'
/

comment on column CCRS_PM_DBWXX.DATA_CRT_DATE is '数据创建/导入日期'
/

comment on column CCRS_PM_DBWXX.DATA_CRT_TIME is '数据创建/导入时间'
/

comment on column CCRS_PM_DBWXX.DATA_CHG_USER is '数据修改/删除用户'
/

comment on column CCRS_PM_DBWXX.DATA_CHG_DATE is '数据修改/删除日期'
/

comment on column CCRS_PM_DBWXX.DATA_CHG_TIME is '数据修改/删除时间'
/

comment on column CCRS_PM_DBWXX.DATA_APV_USER is '数据审核/拒绝用户'
/

comment on column CCRS_PM_DBWXX.DATA_APV_DATE is '数据审核/拒绝日期'
/

comment on column CCRS_PM_DBWXX.DATA_APV_TIME is '数据审核/拒绝时间'
/

comment on column CCRS_PM_DBWXX.RSV1 is '备用1'
/

comment on column CCRS_PM_DBWXX.RSV2 is '备用2'
/

comment on column CCRS_PM_DBWXX.RSV3 is '备用3'
/

comment on column CCRS_PM_DBWXX.RSV4 is '备用4'
/

comment on column CCRS_PM_DBWXX.RSV5 is '备用5'
/

create unique index U_DBWXX
    on CCRS_PM_DBWXX (DATA_RPT_DATE, SJRQ_DATE, DBHTBH, YPBH, BZRZJLX, BZRZJHM)
/

create table CCRS_PM_DECDFSE
(
    DATA_ID          VARCHAR2(64) not null
        primary key,
    DATA_DATE        CHAR(8),
    DATA_RPT_DATE    CHAR(8),
    CORP_ID          VARCHAR2(14),
    ORG_ID           VARCHAR2(14),
    GROUP_ID         VARCHAR2(14),
    INQ_ORG_ID       CHAR(24),
    INQ_GROUP_ID     CHAR(24),
    SJRQ_DATE        CHAR(8),
    JRJGBM           CHAR(14),
    KHLX             CHAR,
    KHMC             VARCHAR2(300),
    KHZJLX           CHAR(2),
    KHZJHM           VARCHAR2(50),
    DQXZQHDMCDFXRZCD CHAR(12),
    CDXYDM           VARCHAR2(150),
    CDMC             VARCHAR2(300),
    CDXYQSRQ_DATE    CHAR(8),
    CDXYDQRQ_DATE    CHAR(8),
    CDSJDQRQ_DATE    CHAR(8),
    BZ               CHAR(3),
    CDFXGM_AMT       NUMBER,
    LLSFGD           CHAR(4),
    LLSP             NUMBER,
    DECDQXLX         CHAR(2),
    JZLLZL           CHAR(2),
    FXPL             CHAR(2),
    CDFSLX           CHAR(2),
    CDFSJE_AMT       NUMBER,
    REMARKS          VARCHAR2(14),
    CHECK_FLAG       CHAR,
    CHECK_DESC       VARCHAR2(512),
    CHECK_ERR_TYPE   CHAR,
    NEXT_ACTION      CHAR(2),
    DATA_STATUS      CHAR(2),
    DATA_FLAG        CHAR,
    DATA_SOURCE      CHAR,
    DATA_VERSION     NUMBER(8),
    DATA_REJ_DESC    VARCHAR2(128),
    DATA_DEL_DESC    VARCHAR2(128),
    DATA_CRT_USER    VARCHAR2(20),
    DATA_CRT_DATE    CHAR(8),
    DATA_CRT_TIME    CHAR(14),
    DATA_CHG_USER    VARCHAR2(20),
    DATA_CHG_DATE    CHAR(8),
    DATA_CHG_TIME    CHAR(14),
    DATA_APV_USER    VARCHAR2(20),
    DATA_APV_DATE    CHAR(8),
    DATA_APV_TIME    CHAR(14),
    RSV1             VARCHAR2(180),
    RSV2             VARCHAR2(180),
    RSV3             VARCHAR2(180),
    RSV4             VARCHAR2(180),
    RSV5             VARCHAR2(180)
)
/

comment on table CCRS_PM_DECDFSE is '大额存单发生额报文'
/

comment on column CCRS_PM_DECDFSE.DATA_ID is '数据ID'
/

comment on column CCRS_PM_DECDFSE.DATA_DATE is '数据日期'
/

comment on column CCRS_PM_DECDFSE.DATA_RPT_DATE is '报表日期'
/

comment on column CCRS_PM_DECDFSE.CORP_ID is '法人机构号'
/

comment on column CCRS_PM_DECDFSE.ORG_ID is '机构号'
/

comment on column CCRS_PM_DECDFSE.GROUP_ID is '部门编号'
/

comment on column CCRS_PM_DECDFSE.INQ_ORG_ID is '查询机构号'
/

comment on column CCRS_PM_DECDFSE.INQ_GROUP_ID is '查询组号'
/

comment on column CCRS_PM_DECDFSE.SJRQ_DATE is '数据日期'
/

comment on column CCRS_PM_DECDFSE.JRJGBM is '金融机构编码'
/

comment on column CCRS_PM_DECDFSE.KHLX is '客户类型'
/

comment on column CCRS_PM_DECDFSE.KHMC is '客户名称'
/

comment on column CCRS_PM_DECDFSE.KHZJLX is '客户证件类型'
/

comment on column CCRS_PM_DECDFSE.KHZJHM is '客户证件号码'
/

comment on column CCRS_PM_DECDFSE.DQXZQHDMCDFXRZCD is '地区行政区划代码（存单发行人注册地）'
/

comment on column CCRS_PM_DECDFSE.CDXYDM is '存单协议代码'
/

comment on column CCRS_PM_DECDFSE.CDMC is '存单名称'
/

comment on column CCRS_PM_DECDFSE.CDXYQSRQ_DATE is '存单协议起始日期'
/

comment on column CCRS_PM_DECDFSE.CDXYDQRQ_DATE is '存单协议到期日期'
/

comment on column CCRS_PM_DECDFSE.CDSJDQRQ_DATE is '存单实际到期日期'
/

comment on column CCRS_PM_DECDFSE.BZ is '币种'
/

comment on column CCRS_PM_DECDFSE.CDFXGM_AMT is '存单发行规模'
/

comment on column CCRS_PM_DECDFSE.LLSFGD is '利率是否固定'
/

comment on column CCRS_PM_DECDFSE.LLSP is '利率水平'
/

comment on column CCRS_PM_DECDFSE.DECDQXLX is '大额存单期限类型'
/

comment on column CCRS_PM_DECDFSE.JZLLZL is '基准利率种类'
/

comment on column CCRS_PM_DECDFSE.FXPL is '付息频率'
/

comment on column CCRS_PM_DECDFSE.CDFSLX is '存单发生类型'
/

comment on column CCRS_PM_DECDFSE.CDFSJE_AMT is '存单发生金额'
/

comment on column CCRS_PM_DECDFSE.REMARKS is '备注'
/

comment on column CCRS_PM_DECDFSE.CHECK_FLAG is '校验标识'
/

comment on column CCRS_PM_DECDFSE.CHECK_DESC is '校验结果'
/

comment on column CCRS_PM_DECDFSE.CHECK_ERR_TYPE is '校验失败类型'
/

comment on column CCRS_PM_DECDFSE.NEXT_ACTION is '下一动作'
/

comment on column CCRS_PM_DECDFSE.DATA_STATUS is '数据状态'
/

comment on column CCRS_PM_DECDFSE.DATA_FLAG is '数据是否已删除'
/

comment on column CCRS_PM_DECDFSE.DATA_SOURCE is '数据来源'
/

comment on column CCRS_PM_DECDFSE.DATA_VERSION is '数据版本'
/

comment on column CCRS_PM_DECDFSE.DATA_REJ_DESC is '数据审核拒绝原因'
/

comment on column CCRS_PM_DECDFSE.DATA_DEL_DESC is '数据删除描述'
/

comment on column CCRS_PM_DECDFSE.DATA_CRT_USER is '数据创建/导入用户'
/

comment on column CCRS_PM_DECDFSE.DATA_CRT_DATE is '数据创建/导入日期'
/

comment on column CCRS_PM_DECDFSE.DATA_CRT_TIME is '数据创建/导入时间'
/

comment on column CCRS_PM_DECDFSE.DATA_CHG_USER is '数据修改/删除用户'
/

comment on column CCRS_PM_DECDFSE.DATA_CHG_DATE is '数据修改/删除日期'
/

comment on column CCRS_PM_DECDFSE.DATA_CHG_TIME is '数据修改/删除时间'
/

comment on column CCRS_PM_DECDFSE.DATA_APV_USER is '数据审核/拒绝用户'
/

comment on column CCRS_PM_DECDFSE.DATA_APV_DATE is '数据审核/拒绝日期'
/

comment on column CCRS_PM_DECDFSE.DATA_APV_TIME is '数据审核/拒绝时间'
/

comment on column CCRS_PM_DECDFSE.RSV1 is '备用1'
/

comment on column CCRS_PM_DECDFSE.RSV2 is '备用2'
/

comment on column CCRS_PM_DECDFSE.RSV3 is '备用3'
/

comment on column CCRS_PM_DECDFSE.RSV4 is '备用4'
/

comment on column CCRS_PM_DECDFSE.RSV5 is '备用5'
/

create unique index U_DECDFSE
    on CCRS_PM_DECDFSE (DATA_RPT_DATE, SJRQ_DATE, CDXYDM)
/

create table CCRS_PM_DECDYE
(
    DATA_ID          VARCHAR2(64) not null
        primary key,
    DATA_DATE        CHAR(8),
    DATA_RPT_DATE    CHAR(8),
    CORP_ID          VARCHAR2(14),
    ORG_ID           VARCHAR2(14),
    GROUP_ID         VARCHAR2(14),
    INQ_ORG_ID       CHAR(24),
    INQ_GROUP_ID     CHAR(24),
    SJRQ_DATE        CHAR(8),
    JRJGBM           CHAR(14),
    KHLX             CHAR,
    KHMC             VARCHAR2(300),
    KHZJLX           CHAR(2),
    KHZJHM           VARCHAR2(50),
    DQXZQHDMCDFXRZCD CHAR(12),
    CDXYDM           VARCHAR2(150),
    CDMC             VARCHAR2(300),
    CDXYQSRQ_DATE    CHAR(8),
    CDXYDQRQ_DATE    CHAR(8),
    CDSJDQRQ_DATE    CHAR(8),
    BZ               CHAR(3),
    CDFXGM_AMT       NUMBER,
    LLSFGD           CHAR(4),
    LLSP             NUMBER,
    DECDQXLX         CHAR(2),
    JZLLZL           CHAR(2),
    FXPL             CHAR(2),
    CDYE_AMT         NUMBER,
    REMARKS          VARCHAR2(14),
    CHECK_FLAG       CHAR,
    CHECK_DESC       VARCHAR2(512),
    CHECK_ERR_TYPE   CHAR,
    NEXT_ACTION      CHAR(2),
    DATA_STATUS      CHAR(2),
    DATA_FLAG        CHAR,
    DATA_SOURCE      CHAR,
    DATA_VERSION     NUMBER(8),
    DATA_REJ_DESC    VARCHAR2(128),
    DATA_DEL_DESC    VARCHAR2(128),
    DATA_CRT_USER    VARCHAR2(20),
    DATA_CRT_DATE    CHAR(8),
    DATA_CRT_TIME    CHAR(14),
    DATA_CHG_USER    VARCHAR2(20),
    DATA_CHG_DATE    CHAR(8),
    DATA_CHG_TIME    CHAR(14),
    DATA_APV_USER    VARCHAR2(20),
    DATA_APV_DATE    CHAR(8),
    DATA_APV_TIME    CHAR(14),
    RSV1             VARCHAR2(180),
    RSV2             VARCHAR2(180),
    RSV3             VARCHAR2(180),
    RSV4             VARCHAR2(180),
    RSV5             VARCHAR2(180)
)
/

comment on table CCRS_PM_DECDYE is '大额存单余额报文'
/

comment on column CCRS_PM_DECDYE.DATA_ID is '数据ID'
/

comment on column CCRS_PM_DECDYE.DATA_DATE is '数据日期'
/

comment on column CCRS_PM_DECDYE.DATA_RPT_DATE is '报表日期'
/

comment on column CCRS_PM_DECDYE.CORP_ID is '法人机构号'
/

comment on column CCRS_PM_DECDYE.ORG_ID is '机构号'
/

comment on column CCRS_PM_DECDYE.GROUP_ID is '部门编号'
/

comment on column CCRS_PM_DECDYE.INQ_ORG_ID is '查询机构号'
/

comment on column CCRS_PM_DECDYE.INQ_GROUP_ID is '查询组号'
/

comment on column CCRS_PM_DECDYE.SJRQ_DATE is '数据日期'
/

comment on column CCRS_PM_DECDYE.JRJGBM is '金融机构编码'
/

comment on column CCRS_PM_DECDYE.KHLX is '客户类型'
/

comment on column CCRS_PM_DECDYE.KHMC is '客户名称'
/

comment on column CCRS_PM_DECDYE.KHZJLX is '客户证件类型'
/

comment on column CCRS_PM_DECDYE.KHZJHM is '客户证件号码'
/

comment on column CCRS_PM_DECDYE.DQXZQHDMCDFXRZCD is '地区行政区划代码（存单发行人注册地）'
/

comment on column CCRS_PM_DECDYE.CDXYDM is '存单协议代码'
/

comment on column CCRS_PM_DECDYE.CDMC is '存单名称'
/

comment on column CCRS_PM_DECDYE.CDXYQSRQ_DATE is '存单协议起始日期'
/

comment on column CCRS_PM_DECDYE.CDXYDQRQ_DATE is '存单协议到期日期'
/

comment on column CCRS_PM_DECDYE.CDSJDQRQ_DATE is '存单实际到期日期'
/

comment on column CCRS_PM_DECDYE.BZ is '币种'
/

comment on column CCRS_PM_DECDYE.CDFXGM_AMT is '存单发行规模'
/

comment on column CCRS_PM_DECDYE.LLSFGD is '利率是否固定'
/

comment on column CCRS_PM_DECDYE.LLSP is '利率水平'
/

comment on column CCRS_PM_DECDYE.DECDQXLX is '大额存单期限类型'
/

comment on column CCRS_PM_DECDYE.JZLLZL is '基准利率种类'
/

comment on column CCRS_PM_DECDYE.FXPL is '付息频率'
/

comment on column CCRS_PM_DECDYE.CDYE_AMT is '存单余额'
/

comment on column CCRS_PM_DECDYE.REMARKS is '备注'
/

comment on column CCRS_PM_DECDYE.CHECK_FLAG is '校验标识'
/

comment on column CCRS_PM_DECDYE.CHECK_DESC is '校验结果'
/

comment on column CCRS_PM_DECDYE.CHECK_ERR_TYPE is '校验失败类型'
/

comment on column CCRS_PM_DECDYE.NEXT_ACTION is '下一动作'
/

comment on column CCRS_PM_DECDYE.DATA_STATUS is '数据状态'
/

comment on column CCRS_PM_DECDYE.DATA_FLAG is '数据是否已删除'
/

comment on column CCRS_PM_DECDYE.DATA_SOURCE is '数据来源'
/

comment on column CCRS_PM_DECDYE.DATA_VERSION is '数据版本'
/

comment on column CCRS_PM_DECDYE.DATA_REJ_DESC is '数据审核拒绝原因'
/

comment on column CCRS_PM_DECDYE.DATA_DEL_DESC is '数据删除描述'
/

comment on column CCRS_PM_DECDYE.DATA_CRT_USER is '数据创建/导入用户'
/

comment on column CCRS_PM_DECDYE.DATA_CRT_DATE is '数据创建/导入日期'
/

comment on column CCRS_PM_DECDYE.DATA_CRT_TIME is '数据创建/导入时间'
/

comment on column CCRS_PM_DECDYE.DATA_CHG_USER is '数据修改/删除用户'
/

comment on column CCRS_PM_DECDYE.DATA_CHG_DATE is '数据修改/删除日期'
/

comment on column CCRS_PM_DECDYE.DATA_CHG_TIME is '数据修改/删除时间'
/

comment on column CCRS_PM_DECDYE.DATA_APV_USER is '数据审核/拒绝用户'
/

comment on column CCRS_PM_DECDYE.DATA_APV_DATE is '数据审核/拒绝日期'
/

comment on column CCRS_PM_DECDYE.DATA_APV_TIME is '数据审核/拒绝时间'
/

comment on column CCRS_PM_DECDYE.RSV1 is '备用1'
/

comment on column CCRS_PM_DECDYE.RSV2 is '备用2'
/

comment on column CCRS_PM_DECDYE.RSV3 is '备用3'
/

comment on column CCRS_PM_DECDYE.RSV4 is '备用4'
/

comment on column CCRS_PM_DECDYE.RSV5 is '备用5'
/

create unique index U_DECDYE
    on CCRS_PM_DECDYE (DATA_RPT_DATE, SJRQ_DATE, CDXYDM)
/

create table CCRS_PM_DKFSEKZ
(
    DATA_ID        VARCHAR2(64) not null
        primary key,
    DATA_DATE      CHAR(8),
    DATA_RPT_DATE  CHAR(8),
    CORP_ID        VARCHAR2(14),
    ORG_ID         VARCHAR2(14),
    GROUP_ID       VARCHAR2(14),
    INQ_ORG_ID     CHAR(24),
    INQ_GROUP_ID   CHAR(24),
    SJRQ_DATE      CHAR(8),
    JRJGBM         CHAR(14),
    DKJJBM         VARCHAR2(105),
    KHZJLX         CHAR(2),
    WJKRZCDBM      CHAR(12),
    XDHTBH         VARCHAR2(300),
    CPXX           VARCHAR2(10),
    DKYT           VARCHAR2(1500),
    FFFS           CHAR(2),
    SXBS           CHAR(2),
    RMYHDKZXJCBS   CHAR(50),
    REMARKS        VARCHAR2(14),
    CHECK_FLAG     CHAR,
    CHECK_DESC     VARCHAR2(512),
    CHECK_ERR_TYPE CHAR,
    NEXT_ACTION    CHAR(2),
    DATA_STATUS    CHAR(2),
    DATA_FLAG      CHAR,
    DATA_SOURCE    CHAR,
    DATA_VERSION   NUMBER(8),
    DATA_REJ_DESC  VARCHAR2(128),
    DATA_DEL_DESC  VARCHAR2(128),
    DATA_CRT_USER  VARCHAR2(20),
    DATA_CRT_DATE  CHAR(8),
    DATA_CRT_TIME  CHAR(14),
    DATA_CHG_USER  VARCHAR2(20),
    DATA_CHG_DATE  CHAR(8),
    DATA_CHG_TIME  CHAR(14),
    DATA_APV_USER  VARCHAR2(20),
    DATA_APV_DATE  CHAR(8),
    DATA_APV_TIME  CHAR(14),
    RSV1           VARCHAR2(180),
    RSV2           VARCHAR2(180),
    RSV3           VARCHAR2(180),
    RSV4           VARCHAR2(180),
    RSV5           VARCHAR2(180)
)
/

comment on table CCRS_PM_DKFSEKZ is '贷款发生额扩展报文'
/

comment on column CCRS_PM_DKFSEKZ.DATA_ID is '数据ID'
/

comment on column CCRS_PM_DKFSEKZ.DATA_DATE is '数据日期'
/

comment on column CCRS_PM_DKFSEKZ.DATA_RPT_DATE is '报表日期'
/

comment on column CCRS_PM_DKFSEKZ.CORP_ID is '法人机构号'
/

comment on column CCRS_PM_DKFSEKZ.ORG_ID is '机构号'
/

comment on column CCRS_PM_DKFSEKZ.GROUP_ID is '部门编号'
/

comment on column CCRS_PM_DKFSEKZ.INQ_ORG_ID is '查询机构号'
/

comment on column CCRS_PM_DKFSEKZ.INQ_GROUP_ID is '查询组号'
/

comment on column CCRS_PM_DKFSEKZ.SJRQ_DATE is '数据日期'
/

comment on column CCRS_PM_DKFSEKZ.JRJGBM is '金融机构编码'
/

comment on column CCRS_PM_DKFSEKZ.DKJJBM is '贷款借据编码'
/

comment on column CCRS_PM_DKFSEKZ.KHZJLX is '客户证件类型'
/

comment on column CCRS_PM_DKFSEKZ.WJKRZCDBM is '12位借款人注册地编码'
/

comment on column CCRS_PM_DKFSEKZ.XDHTBH is '信贷合同编号'
/

comment on column CCRS_PM_DKFSEKZ.CPXX is '产品细项'
/

comment on column CCRS_PM_DKFSEKZ.DKYT is '贷款用途'
/

comment on column CCRS_PM_DKFSEKZ.FFFS is '发放方式'
/

comment on column CCRS_PM_DKFSEKZ.SXBS is '属性标识'
/

comment on column CCRS_PM_DKFSEKZ.RMYHDKZXJCBS is '人民银行贷款专项监测标识'
/

comment on column CCRS_PM_DKFSEKZ.REMARKS is '备注'
/

comment on column CCRS_PM_DKFSEKZ.CHECK_FLAG is '校验标识'
/

comment on column CCRS_PM_DKFSEKZ.CHECK_DESC is '校验结果'
/

comment on column CCRS_PM_DKFSEKZ.CHECK_ERR_TYPE is '校验失败类型'
/

comment on column CCRS_PM_DKFSEKZ.NEXT_ACTION is '下一动作'
/

comment on column CCRS_PM_DKFSEKZ.DATA_STATUS is '数据状态'
/

comment on column CCRS_PM_DKFSEKZ.DATA_FLAG is '数据是否已删除'
/

comment on column CCRS_PM_DKFSEKZ.DATA_SOURCE is '数据来源'
/

comment on column CCRS_PM_DKFSEKZ.DATA_VERSION is '数据版本'
/

comment on column CCRS_PM_DKFSEKZ.DATA_REJ_DESC is '数据审核拒绝原因'
/

comment on column CCRS_PM_DKFSEKZ.DATA_DEL_DESC is '数据删除描述'
/

comment on column CCRS_PM_DKFSEKZ.DATA_CRT_USER is '数据创建/导入用户'
/

comment on column CCRS_PM_DKFSEKZ.DATA_CRT_DATE is '数据创建/导入日期'
/

comment on column CCRS_PM_DKFSEKZ.DATA_CRT_TIME is '数据创建/导入时间'
/

comment on column CCRS_PM_DKFSEKZ.DATA_CHG_USER is '数据修改/删除用户'
/

comment on column CCRS_PM_DKFSEKZ.DATA_CHG_DATE is '数据修改/删除日期'
/

comment on column CCRS_PM_DKFSEKZ.DATA_CHG_TIME is '数据修改/删除时间'
/

comment on column CCRS_PM_DKFSEKZ.DATA_APV_USER is '数据审核/拒绝用户'
/

comment on column CCRS_PM_DKFSEKZ.DATA_APV_DATE is '数据审核/拒绝日期'
/

comment on column CCRS_PM_DKFSEKZ.DATA_APV_TIME is '数据审核/拒绝时间'
/

comment on column CCRS_PM_DKFSEKZ.RSV1 is '备用1'
/

comment on column CCRS_PM_DKFSEKZ.RSV2 is '备用2'
/

comment on column CCRS_PM_DKFSEKZ.RSV3 is '备用3'
/

comment on column CCRS_PM_DKFSEKZ.RSV4 is '备用4'
/

comment on column CCRS_PM_DKFSEKZ.RSV5 is '备用5'
/

create unique index U_DKFSEKZ
    on CCRS_PM_DKFSEKZ (DATA_RPT_DATE, SJRQ_DATE, XDHTBH)
/

create table CCRS_PM_DKYEKZ
(
    DATA_ID        VARCHAR2(64) not null
        primary key,
    DATA_DATE      CHAR(8),
    DATA_RPT_DATE  CHAR(8),
    CORP_ID        VARCHAR2(14),
    ORG_ID         VARCHAR2(14),
    GROUP_ID       VARCHAR2(14),
    INQ_ORG_ID     CHAR(24),
    INQ_GROUP_ID   CHAR(24),
    SJRQ_DATE      CHAR(8),
    JRJGBM         CHAR(14),
    DKJJBM         VARCHAR2(105),
    KHZJLX         CHAR(2),
    WJKRZCDBM      CHAR(12),
    XDHTBH         VARCHAR2(300),
    CPXX           VARCHAR2(10),
    DKYT           VARCHAR2(1500),
    FFFS           CHAR(2),
    SXBS           CHAR(2),
    RMYHDKZXJCBS   CHAR(50),
    REMARKS        VARCHAR2(14),
    CHECK_FLAG     CHAR,
    CHECK_DESC     VARCHAR2(512),
    CHECK_ERR_TYPE CHAR,
    NEXT_ACTION    CHAR(2),
    DATA_STATUS    CHAR(2),
    DATA_FLAG      CHAR,
    DATA_SOURCE    CHAR,
    DATA_VERSION   NUMBER(8),
    DATA_REJ_DESC  VARCHAR2(128),
    DATA_DEL_DESC  VARCHAR2(128),
    DATA_CRT_USER  VARCHAR2(20),
    DATA_CRT_DATE  CHAR(8),
    DATA_CRT_TIME  CHAR(14),
    DATA_CHG_USER  VARCHAR2(20),
    DATA_CHG_DATE  CHAR(8),
    DATA_CHG_TIME  CHAR(14),
    DATA_APV_USER  VARCHAR2(20),
    DATA_APV_DATE  CHAR(8),
    DATA_APV_TIME  CHAR(14),
    RSV1           VARCHAR2(180),
    RSV2           VARCHAR2(180),
    RSV3           VARCHAR2(180),
    RSV4           VARCHAR2(180),
    RSV5           VARCHAR2(180)
)
/

comment on table CCRS_PM_DKYEKZ is '贷款余额扩展报文'
/

comment on column CCRS_PM_DKYEKZ.DATA_ID is '数据ID'
/

comment on column CCRS_PM_DKYEKZ.DATA_DATE is '数据日期'
/

comment on column CCRS_PM_DKYEKZ.DATA_RPT_DATE is '报表日期'
/

comment on column CCRS_PM_DKYEKZ.CORP_ID is '法人机构号'
/

comment on column CCRS_PM_DKYEKZ.ORG_ID is '机构号'
/

comment on column CCRS_PM_DKYEKZ.GROUP_ID is '部门编号'
/

comment on column CCRS_PM_DKYEKZ.INQ_ORG_ID is '查询机构号'
/

comment on column CCRS_PM_DKYEKZ.INQ_GROUP_ID is '查询组号'
/

comment on column CCRS_PM_DKYEKZ.SJRQ_DATE is '数据日期'
/

comment on column CCRS_PM_DKYEKZ.JRJGBM is '金融机构编码'
/

comment on column CCRS_PM_DKYEKZ.DKJJBM is '贷款借据编码'
/

comment on column CCRS_PM_DKYEKZ.KHZJLX is '客户证件类型'
/

comment on column CCRS_PM_DKYEKZ.WJKRZCDBM is '12位借款人注册地编码'
/

comment on column CCRS_PM_DKYEKZ.XDHTBH is '信贷合同编号'
/

comment on column CCRS_PM_DKYEKZ.CPXX is '产品细项'
/

comment on column CCRS_PM_DKYEKZ.DKYT is '贷款用途'
/

comment on column CCRS_PM_DKYEKZ.FFFS is '发放方式'
/

comment on column CCRS_PM_DKYEKZ.SXBS is '属性标识'
/

comment on column CCRS_PM_DKYEKZ.RMYHDKZXJCBS is '人民银行贷款专项监测标识'
/

comment on column CCRS_PM_DKYEKZ.REMARKS is '备注'
/

comment on column CCRS_PM_DKYEKZ.CHECK_FLAG is '校验标识'
/

comment on column CCRS_PM_DKYEKZ.CHECK_DESC is '校验结果'
/

comment on column CCRS_PM_DKYEKZ.CHECK_ERR_TYPE is '校验失败类型'
/

comment on column CCRS_PM_DKYEKZ.NEXT_ACTION is '下一动作'
/

comment on column CCRS_PM_DKYEKZ.DATA_STATUS is '数据状态'
/

comment on column CCRS_PM_DKYEKZ.DATA_FLAG is '数据是否已删除'
/

comment on column CCRS_PM_DKYEKZ.DATA_SOURCE is '数据来源'
/

comment on column CCRS_PM_DKYEKZ.DATA_VERSION is '数据版本'
/

comment on column CCRS_PM_DKYEKZ.DATA_REJ_DESC is '数据审核拒绝原因'
/

comment on column CCRS_PM_DKYEKZ.DATA_DEL_DESC is '数据删除描述'
/

comment on column CCRS_PM_DKYEKZ.DATA_CRT_USER is '数据创建/导入用户'
/

comment on column CCRS_PM_DKYEKZ.DATA_CRT_DATE is '数据创建/导入日期'
/

comment on column CCRS_PM_DKYEKZ.DATA_CRT_TIME is '数据创建/导入时间'
/

comment on column CCRS_PM_DKYEKZ.DATA_CHG_USER is '数据修改/删除用户'
/

comment on column CCRS_PM_DKYEKZ.DATA_CHG_DATE is '数据修改/删除日期'
/

comment on column CCRS_PM_DKYEKZ.DATA_CHG_TIME is '数据修改/删除时间'
/

comment on column CCRS_PM_DKYEKZ.DATA_APV_USER is '数据审核/拒绝用户'
/

comment on column CCRS_PM_DKYEKZ.DATA_APV_DATE is '数据审核/拒绝日期'
/

comment on column CCRS_PM_DKYEKZ.DATA_APV_TIME is '数据审核/拒绝时间'
/

comment on column CCRS_PM_DKYEKZ.RSV1 is '备用1'
/

comment on column CCRS_PM_DKYEKZ.RSV2 is '备用2'
/

comment on column CCRS_PM_DKYEKZ.RSV3 is '备用3'
/

comment on column CCRS_PM_DKYEKZ.RSV4 is '备用4'
/

comment on column CCRS_PM_DKYEKZ.RSV5 is '备用5'
/

create unique index U_DKYEKZ
    on CCRS_PM_DKYEKZ (DATA_RPT_DATE, SJRQ_DATE, XDHTBH)
/

create table CCRS_PM_DWKH
(
    DATA_ID         VARCHAR2(64) not null
        primary key,
    DATA_DATE       CHAR(8),
    DATA_RPT_DATE   CHAR(8),
    CORP_ID         VARCHAR2(14),
    ORG_ID          VARCHAR2(14),
    GROUP_ID        VARCHAR2(14),
    INQ_ORG_ID      CHAR(24),
    INQ_GROUP_ID    CHAR(24),
    SJRQ_DATE       CHAR(8),
    JRJGBM          CHAR(14),
    JRJGMC          VARCHAR2(300),
    KHBH            VARCHAR2(300),
    KHMC            VARCHAR2(300),
    DWKHLX          VARCHAR2(2),
    TYSHXYDM        CHAR(18),
    DWZJYXQX_DATE   CHAR(8),
    ZZJGDM          CHAR(10),
    YYZZZCH         VARCHAR2(18),
    QSZJLXHM        VARCHAR2(100),
    NSRSBH          VARCHAR2(20),
    TSJGDM          VARCHAR2(300),
    HY              CHAR,
    QYGM            CHAR(4),
    DWYWFW          VARCHAR2(3000),
    DWLXR           VARCHAR2(300),
    DWLXDH          VARCHAR2(20),
    DWDZYX          VARCHAR2(300),
    DWZCDZ          VARCHAR2(300),
    DQXZQHDMDWZCD   CHAR(12),
    GJ              CHAR(3),
    ZCZBBZ          CHAR(3),
    ZCZB_AMT        NUMBER,
    DWCLRQ_DATE     CHAR(8),
    FRDBMC          VARCHAR2(300),
    FRDBZJLX        CHAR(2),
    FRDBZJYXQX_DATE CHAR(8),
    FRDBZJHM        VARCHAR2(50),
    QYCZRJJCF       VARCHAR2(5),
    SYSYRMC         VARCHAR2(300),
    SYSYRZJLX       CHAR(2),
    SYSYRZJYXQ_DATE CHAR(8),
    SYSYRZJHM       VARCHAR2(50),
    REMARKS         VARCHAR2(14),
    CHECK_FLAG      CHAR,
    CHECK_DESC      VARCHAR2(512),
    CHECK_ERR_TYPE  CHAR,
    NEXT_ACTION     CHAR(2),
    DATA_STATUS     CHAR(2),
    DATA_FLAG       CHAR,
    DATA_SOURCE     CHAR,
    DATA_VERSION    NUMBER(8),
    DATA_REJ_DESC   VARCHAR2(128),
    DATA_DEL_DESC   VARCHAR2(128),
    DATA_CRT_USER   VARCHAR2(20),
    DATA_CRT_DATE   CHAR(8),
    DATA_CRT_TIME   CHAR(14),
    DATA_CHG_USER   VARCHAR2(20),
    DATA_CHG_DATE   CHAR(8),
    DATA_CHG_TIME   CHAR(14),
    DATA_APV_USER   VARCHAR2(20),
    DATA_APV_DATE   CHAR(8),
    DATA_APV_TIME   CHAR(14),
    RSV1            VARCHAR2(180),
    RSV2            VARCHAR2(180),
    RSV3            VARCHAR2(180),
    RSV4            VARCHAR2(180),
    RSV5            VARCHAR2(180),
    RECORD_TYPE     CHAR(3)
)
/

comment on table CCRS_PM_DWKH is '单位客户报文'
/

comment on column CCRS_PM_DWKH.DATA_ID is '数据ID'
/

comment on column CCRS_PM_DWKH.DATA_DATE is '数据日期'
/

comment on column CCRS_PM_DWKH.DATA_RPT_DATE is '报表日期'
/

comment on column CCRS_PM_DWKH.CORP_ID is '法人机构号'
/

comment on column CCRS_PM_DWKH.ORG_ID is '机构号'
/

comment on column CCRS_PM_DWKH.GROUP_ID is '部门编号'
/

comment on column CCRS_PM_DWKH.INQ_ORG_ID is '查询机构号'
/

comment on column CCRS_PM_DWKH.INQ_GROUP_ID is '查询组号'
/

comment on column CCRS_PM_DWKH.SJRQ_DATE is '数据日期'
/

comment on column CCRS_PM_DWKH.JRJGBM is '金融机构编码'
/

comment on column CCRS_PM_DWKH.JRJGMC is '金融机构名称'
/

comment on column CCRS_PM_DWKH.KHBH is '客户编号'
/

comment on column CCRS_PM_DWKH.KHMC is '客户名称'
/

comment on column CCRS_PM_DWKH.DWKHLX is '单位客户类型'
/

comment on column CCRS_PM_DWKH.TYSHXYDM is '统一社会信用代码'
/

comment on column CCRS_PM_DWKH.DWZJYXQX_DATE is '单位证件有效期限'
/

comment on column CCRS_PM_DWKH.ZZJGDM is '组织机构代码'
/

comment on column CCRS_PM_DWKH.YYZZZCH is '营业执照注册号'
/

comment on column CCRS_PM_DWKH.QSZJLXHM is '其他证件类型号码'
/

comment on column CCRS_PM_DWKH.NSRSBH is '纳税人识别号'
/

comment on column CCRS_PM_DWKH.TSJGDM is '特殊机构代码'
/

comment on column CCRS_PM_DWKH.HY is '行业'
/

comment on column CCRS_PM_DWKH.QYGM is '企业规模'
/

comment on column CCRS_PM_DWKH.DWYWFW is '单位业务范围'
/

comment on column CCRS_PM_DWKH.DWLXR is '单位联系人'
/

comment on column CCRS_PM_DWKH.DWLXDH is '单位联系电话'
/

comment on column CCRS_PM_DWKH.DWDZYX is '单位电子邮箱'
/

comment on column CCRS_PM_DWKH.DWZCDZ is '单位注册地址'
/

comment on column CCRS_PM_DWKH.DQXZQHDMDWZCD is '地区行政区划代码（单位注册地）'
/

comment on column CCRS_PM_DWKH.GJ is '国家'
/

comment on column CCRS_PM_DWKH.ZCZBBZ is '注册资本币种'
/

comment on column CCRS_PM_DWKH.ZCZB_AMT is '注册资本'
/

comment on column CCRS_PM_DWKH.DWCLRQ_DATE is '单位成立日期'
/

comment on column CCRS_PM_DWKH.FRDBMC is '法人代表名称'
/

comment on column CCRS_PM_DWKH.FRDBZJLX is '法人代表证件类型'
/

comment on column CCRS_PM_DWKH.FRDBZJYXQX_DATE is '法人代表证件有效期限'
/

comment on column CCRS_PM_DWKH.FRDBZJHM is '法人代表证件号码'
/

comment on column CCRS_PM_DWKH.QYCZRJJCF is '企业出资人经济成分'
/

comment on column CCRS_PM_DWKH.SYSYRMC is '受益所有人名称'
/

comment on column CCRS_PM_DWKH.SYSYRZJLX is '受益所有人证件类型'
/

comment on column CCRS_PM_DWKH.SYSYRZJYXQ_DATE is '受益所有人证件有效期'
/

comment on column CCRS_PM_DWKH.SYSYRZJHM is '受益所有人证件号码'
/

comment on column CCRS_PM_DWKH.REMARKS is '备注'
/

comment on column CCRS_PM_DWKH.CHECK_FLAG is '校验标识'
/

comment on column CCRS_PM_DWKH.CHECK_DESC is '校验结果'
/

comment on column CCRS_PM_DWKH.CHECK_ERR_TYPE is '校验失败类型'
/

comment on column CCRS_PM_DWKH.NEXT_ACTION is '下一动作'
/

comment on column CCRS_PM_DWKH.DATA_STATUS is '数据状态'
/

comment on column CCRS_PM_DWKH.DATA_FLAG is '数据是否已删除'
/

comment on column CCRS_PM_DWKH.DATA_SOURCE is '数据来源'
/

comment on column CCRS_PM_DWKH.DATA_VERSION is '数据版本'
/

comment on column CCRS_PM_DWKH.DATA_REJ_DESC is '数据审核拒绝原因'
/

comment on column CCRS_PM_DWKH.DATA_DEL_DESC is '数据删除描述'
/

comment on column CCRS_PM_DWKH.DATA_CRT_USER is '数据创建/导入用户'
/

comment on column CCRS_PM_DWKH.DATA_CRT_DATE is '数据创建/导入日期'
/

comment on column CCRS_PM_DWKH.DATA_CRT_TIME is '数据创建/导入时间'
/

comment on column CCRS_PM_DWKH.DATA_CHG_USER is '数据修改/删除用户'
/

comment on column CCRS_PM_DWKH.DATA_CHG_DATE is '数据修改/删除日期'
/

comment on column CCRS_PM_DWKH.DATA_CHG_TIME is '数据修改/删除时间'
/

comment on column CCRS_PM_DWKH.DATA_APV_USER is '数据审核/拒绝用户'
/

comment on column CCRS_PM_DWKH.DATA_APV_DATE is '数据审核/拒绝日期'
/

comment on column CCRS_PM_DWKH.DATA_APV_TIME is '数据审核/拒绝时间'
/

comment on column CCRS_PM_DWKH.RSV1 is '备用1'
/

comment on column CCRS_PM_DWKH.RSV2 is '备用2'
/

comment on column CCRS_PM_DWKH.RSV3 is '备用3'
/

comment on column CCRS_PM_DWKH.RSV4 is '备用4'
/

comment on column CCRS_PM_DWKH.RSV5 is '备用5'
/

create unique index U_DWKH
    on CCRS_PM_DWKH (DATA_RPT_DATE, SJRQ_DATE, KHBH)
/

create table CCRS_PM_DYBCDKQD
(
    DATA_ID          VARCHAR2(64) not null
        primary key,
    DATA_DATE        CHAR(8),
    DATA_RPT_DATE    CHAR(8),
    CORP_ID          VARCHAR2(14),
    ORG_ID           VARCHAR2(14),
    GROUP_ID         VARCHAR2(14),
    INQ_ORG_ID       CHAR(24),
    INQ_GROUP_ID     CHAR(24),
    SJRQ_DATE        CHAR(8),
    JRJGBM           CHAR(14),
    DKJJBM           VARCHAR2(105),
    XDHTQYRQ_DATE    CHAR(8),
    XMMC             VARCHAR2(300),
    XMSZD            VARCHAR2(300),
    XMZHTJE_AMT      NUMBER,
    SJYKDW           VARCHAR2(300),
    DYBCDKLJZFJE_AMT NUMBER,
    RMYHDYBCDKZXJCBS CHAR(50),
    REMARKS          VARCHAR2(14),
    CHECK_FLAG       CHAR,
    CHECK_DESC       VARCHAR2(512),
    CHECK_ERR_TYPE   CHAR,
    NEXT_ACTION      CHAR(2),
    DATA_STATUS      CHAR(2),
    DATA_FLAG        CHAR,
    DATA_SOURCE      CHAR,
    DATA_VERSION     NUMBER(8),
    DATA_REJ_DESC    VARCHAR2(128),
    DATA_DEL_DESC    VARCHAR2(128),
    DATA_CRT_USER    VARCHAR2(20),
    DATA_CRT_DATE    CHAR(8),
    DATA_CRT_TIME    CHAR(14),
    DATA_CHG_USER    VARCHAR2(20),
    DATA_CHG_DATE    CHAR(8),
    DATA_CHG_TIME    CHAR(14),
    DATA_APV_USER    VARCHAR2(20),
    DATA_APV_DATE    CHAR(8),
    DATA_APV_TIME    CHAR(14),
    RSV1             VARCHAR2(180),
    RSV2             VARCHAR2(180),
    RSV3             VARCHAR2(180),
    RSV4             VARCHAR2(180),
    RSV5             VARCHAR2(180)
)
/

comment on table CCRS_PM_DYBCDKQD is '抵押补充贷款清单报文'
/

comment on column CCRS_PM_DYBCDKQD.DATA_ID is '数据ID'
/

comment on column CCRS_PM_DYBCDKQD.DATA_DATE is '数据日期'
/

comment on column CCRS_PM_DYBCDKQD.DATA_RPT_DATE is '报表日期'
/

comment on column CCRS_PM_DYBCDKQD.CORP_ID is '法人机构号'
/

comment on column CCRS_PM_DYBCDKQD.ORG_ID is '机构号'
/

comment on column CCRS_PM_DYBCDKQD.GROUP_ID is '部门编号'
/

comment on column CCRS_PM_DYBCDKQD.INQ_ORG_ID is '查询机构号'
/

comment on column CCRS_PM_DYBCDKQD.INQ_GROUP_ID is '查询组号'
/

comment on column CCRS_PM_DYBCDKQD.SJRQ_DATE is '数据日期'
/

comment on column CCRS_PM_DYBCDKQD.JRJGBM is '金融机构编码'
/

comment on column CCRS_PM_DYBCDKQD.DKJJBM is '贷款借据编码'
/

comment on column CCRS_PM_DYBCDKQD.XDHTQYRQ_DATE is '信贷合同签约日期'
/

comment on column CCRS_PM_DYBCDKQD.XMMC is '项目名称'
/

comment on column CCRS_PM_DYBCDKQD.XMSZD is '项目所在地'
/

comment on column CCRS_PM_DYBCDKQD.XMZHTJE_AMT is '项目总合同金额'
/

comment on column CCRS_PM_DYBCDKQD.SJYKDW is '实际用款单位'
/

comment on column CCRS_PM_DYBCDKQD.DYBCDKLJZFJE_AMT is '抵押补充贷款累计支付金额'
/

comment on column CCRS_PM_DYBCDKQD.RMYHDYBCDKZXJCBS is '人民银行抵押补充贷款专项监测标识'
/

comment on column CCRS_PM_DYBCDKQD.REMARKS is '备注'
/

comment on column CCRS_PM_DYBCDKQD.CHECK_FLAG is '校验标识'
/

comment on column CCRS_PM_DYBCDKQD.CHECK_DESC is '校验结果'
/

comment on column CCRS_PM_DYBCDKQD.CHECK_ERR_TYPE is '校验失败类型'
/

comment on column CCRS_PM_DYBCDKQD.NEXT_ACTION is '下一动作'
/

comment on column CCRS_PM_DYBCDKQD.DATA_STATUS is '数据状态'
/

comment on column CCRS_PM_DYBCDKQD.DATA_FLAG is '数据是否已删除'
/

comment on column CCRS_PM_DYBCDKQD.DATA_SOURCE is '数据来源'
/

comment on column CCRS_PM_DYBCDKQD.DATA_VERSION is '数据版本'
/

comment on column CCRS_PM_DYBCDKQD.DATA_REJ_DESC is '数据审核拒绝原因'
/

comment on column CCRS_PM_DYBCDKQD.DATA_DEL_DESC is '数据删除描述'
/

comment on column CCRS_PM_DYBCDKQD.DATA_CRT_USER is '数据创建/导入用户'
/

comment on column CCRS_PM_DYBCDKQD.DATA_CRT_DATE is '数据创建/导入日期'
/

comment on column CCRS_PM_DYBCDKQD.DATA_CRT_TIME is '数据创建/导入时间'
/

comment on column CCRS_PM_DYBCDKQD.DATA_CHG_USER is '数据修改/删除用户'
/

comment on column CCRS_PM_DYBCDKQD.DATA_CHG_DATE is '数据修改/删除日期'
/

comment on column CCRS_PM_DYBCDKQD.DATA_CHG_TIME is '数据修改/删除时间'
/

comment on column CCRS_PM_DYBCDKQD.DATA_APV_USER is '数据审核/拒绝用户'
/

comment on column CCRS_PM_DYBCDKQD.DATA_APV_DATE is '数据审核/拒绝日期'
/

comment on column CCRS_PM_DYBCDKQD.DATA_APV_TIME is '数据审核/拒绝时间'
/

comment on column CCRS_PM_DYBCDKQD.RSV1 is '备用1'
/

comment on column CCRS_PM_DYBCDKQD.RSV2 is '备用2'
/

comment on column CCRS_PM_DYBCDKQD.RSV3 is '备用3'
/

comment on column CCRS_PM_DYBCDKQD.RSV4 is '备用4'
/

comment on column CCRS_PM_DYBCDKQD.RSV5 is '备用5'
/

create unique index U_DYBCDKQD
    on CCRS_PM_DYBCDKQD (DATA_RPT_DATE, SJRQ_DATE, DKJJBM)
/

create table CCRS_PM_GRKH
(
    DATA_ID        VARCHAR2(64) not null
        primary key,
    DATA_DATE      CHAR(8),
    DATA_RPT_DATE  CHAR(8),
    CORP_ID        VARCHAR2(14),
    ORG_ID         VARCHAR2(14),
    GROUP_ID       VARCHAR2(14),
    INQ_ORG_ID     CHAR(24),
    INQ_GROUP_ID   CHAR(24),
    SJRQ_DATE      CHAR(8),
    JRJGBM         CHAR(14),
    JRJGMC         VARCHAR2(300),
    KHBH           VARCHAR2(300),
    KHMC           VARCHAR2(300),
    GRZJLX         CHAR(2),
    GRZJYXQX_DATE  CHAR(8),
    GRZJHM         VARCHAR2(50),
    CSRQ_DATE      CHAR(8),
    GJ             CHAR(3),
    MZ             CHAR(2),
    XB             CHAR(2),
    XL             CHAR(2),
    XW             CHAR,
    HYZK           CHAR(2),
    POZJLX         CHAR(2),
    POZJHM         VARCHAR2(50),
    POXM           VARCHAR2(300),
    DQXZQHDMGRJTZZ CHAR(12),
    JTZZ           VARCHAR2(300),
    GRLXDH         VARCHAR2(20),
    ZY             CHAR(2),
    GRDWMC         VARCHAR2(300),
    GRDWDZ         VARCHAR2(300),
    SFSNH          CHAR,
    RMYHGRXXZXJCBS CHAR(50),
    HJSZD          VARCHAR2(300),
    REMARKS        VARCHAR2(14),
    CHECK_FLAG     CHAR,
    CHECK_DESC     VARCHAR2(3072),
    CHECK_ERR_TYPE CHAR,
    NEXT_ACTION    CHAR(2),
    DATA_STATUS    CHAR(2),
    DATA_FLAG      CHAR,
    DATA_SOURCE    CHAR,
    DATA_VERSION   NUMBER(8),
    DATA_REJ_DESC  VARCHAR2(128),
    DATA_DEL_DESC  VARCHAR2(128),
    DATA_CRT_USER  VARCHAR2(20),
    DATA_CRT_DATE  CHAR(8),
    DATA_CRT_TIME  CHAR(14),
    DATA_CHG_USER  VARCHAR2(20),
    DATA_CHG_DATE  CHAR(8),
    DATA_CHG_TIME  CHAR(14),
    DATA_APV_USER  VARCHAR2(20),
    DATA_APV_DATE  CHAR(8),
    DATA_APV_TIME  CHAR(14),
    RSV1           VARCHAR2(180),
    RSV2           VARCHAR2(180),
    RSV3           VARCHAR2(180),
    RSV4           VARCHAR2(180),
    RSV5           VARCHAR2(180),
    RECORD_TYPE    CHAR(3)
)
/

comment on table CCRS_PM_GRKH is '个人客户报文'
/

comment on column CCRS_PM_GRKH.DATA_ID is '数据ID'
/

comment on column CCRS_PM_GRKH.DATA_DATE is '数据日期'
/

comment on column CCRS_PM_GRKH.DATA_RPT_DATE is '报表日期'
/

comment on column CCRS_PM_GRKH.CORP_ID is '法人机构号'
/

comment on column CCRS_PM_GRKH.ORG_ID is '机构号'
/

comment on column CCRS_PM_GRKH.GROUP_ID is '部门编号'
/

comment on column CCRS_PM_GRKH.INQ_ORG_ID is '查询机构号'
/

comment on column CCRS_PM_GRKH.INQ_GROUP_ID is '查询组号'
/

comment on column CCRS_PM_GRKH.SJRQ_DATE is '数据日期'
/

comment on column CCRS_PM_GRKH.JRJGBM is '金融机构编码'
/

comment on column CCRS_PM_GRKH.JRJGMC is '金融机构名称'
/

comment on column CCRS_PM_GRKH.KHBH is '客户编号'
/

comment on column CCRS_PM_GRKH.KHMC is '客户名称'
/

comment on column CCRS_PM_GRKH.GRZJLX is '个人证件类型'
/

comment on column CCRS_PM_GRKH.GRZJYXQX_DATE is '个人证件有效期限'
/

comment on column CCRS_PM_GRKH.GRZJHM is '个人证件号码'
/

comment on column CCRS_PM_GRKH.CSRQ_DATE is '出生日期'
/

comment on column CCRS_PM_GRKH.GJ is '国籍'
/

comment on column CCRS_PM_GRKH.MZ is '民族'
/

comment on column CCRS_PM_GRKH.XB is '性别'
/

comment on column CCRS_PM_GRKH.XL is '学历'
/

comment on column CCRS_PM_GRKH.XW is '学位'
/

comment on column CCRS_PM_GRKH.HYZK is '婚姻状况'
/

comment on column CCRS_PM_GRKH.POZJLX is '配偶证件类型'
/

comment on column CCRS_PM_GRKH.POZJHM is '配偶证件号码'
/

comment on column CCRS_PM_GRKH.POXM is '配偶姓名'
/

comment on column CCRS_PM_GRKH.DQXZQHDMGRJTZZ is '地区行政区划代码（个人家庭住址）'
/

comment on column CCRS_PM_GRKH.JTZZ is '家庭住址'
/

comment on column CCRS_PM_GRKH.GRLXDH is '个人联系电话'
/

comment on column CCRS_PM_GRKH.ZY is '职业'
/

comment on column CCRS_PM_GRKH.GRDWMC is '个人单位名称'
/

comment on column CCRS_PM_GRKH.GRDWDZ is '个人单位地址'
/

comment on column CCRS_PM_GRKH.SFSNH is '是否是农户'
/

comment on column CCRS_PM_GRKH.RMYHGRXXZXJCBS is '人民银行个人信息专项监测标识'
/

comment on column CCRS_PM_GRKH.HJSZD is '户籍所在地'
/

comment on column CCRS_PM_GRKH.REMARKS is '备注'
/

comment on column CCRS_PM_GRKH.CHECK_FLAG is '校验标识'
/

comment on column CCRS_PM_GRKH.CHECK_DESC is '校验结果'
/

comment on column CCRS_PM_GRKH.CHECK_ERR_TYPE is '校验失败类型'
/

comment on column CCRS_PM_GRKH.NEXT_ACTION is '下一动作'
/

comment on column CCRS_PM_GRKH.DATA_STATUS is '数据状态'
/

comment on column CCRS_PM_GRKH.DATA_FLAG is '数据是否已删除'
/

comment on column CCRS_PM_GRKH.DATA_SOURCE is '数据来源'
/

comment on column CCRS_PM_GRKH.DATA_VERSION is '数据版本'
/

comment on column CCRS_PM_GRKH.DATA_REJ_DESC is '数据审核拒绝原因'
/

comment on column CCRS_PM_GRKH.DATA_DEL_DESC is '数据删除描述'
/

comment on column CCRS_PM_GRKH.DATA_CRT_USER is '数据创建/导入用户'
/

comment on column CCRS_PM_GRKH.DATA_CRT_DATE is '数据创建/导入日期'
/

comment on column CCRS_PM_GRKH.DATA_CRT_TIME is '数据创建/导入时间'
/

comment on column CCRS_PM_GRKH.DATA_CHG_USER is '数据修改/删除用户'
/

comment on column CCRS_PM_GRKH.DATA_CHG_DATE is '数据修改/删除日期'
/

comment on column CCRS_PM_GRKH.DATA_CHG_TIME is '数据修改/删除时间'
/

comment on column CCRS_PM_GRKH.DATA_APV_USER is '数据审核/拒绝用户'
/

comment on column CCRS_PM_GRKH.DATA_APV_DATE is '数据审核/拒绝日期'
/

comment on column CCRS_PM_GRKH.DATA_APV_TIME is '数据审核/拒绝时间'
/

comment on column CCRS_PM_GRKH.RSV1 is '备用1'
/

comment on column CCRS_PM_GRKH.RSV2 is '备用2'
/

comment on column CCRS_PM_GRKH.RSV3 is '备用3'
/

comment on column CCRS_PM_GRKH.RSV4 is '备用4'
/

comment on column CCRS_PM_GRKH.RSV5 is '备用5'
/

create unique index U_GRKH
    on CCRS_PM_GRKH (DATA_RPT_DATE, SJRQ_DATE, KHBH)
/

create table CCRS_PM_JRJGXXBCB
(
    DATA_ID           VARCHAR2(64) not null
        primary key,
    DATA_DATE         CHAR(8),
    DATA_RPT_DATE     CHAR(8),
    CORP_ID           VARCHAR2(14),
    ORG_ID            VARCHAR2(14),
    GROUP_ID          VARCHAR2(14),
    INQ_ORG_ID        CHAR(24),
    INQ_GROUP_ID      CHAR(24),
    JRJGBM            CHAR(14),
    JRJGMC            VARCHAR2(300),
    ZCDQXZQHDM        CHAR(12),
    HX1MC             CHAR(2),
    HX2MC             CHAR(2),
    JD                VARCHAR2(11),
    WD                VARCHAR2(10),
    D1DGDMC           VARCHAR2(600),
    D1DGDZJLX         CHAR(2),
    D1DGDZJHM         VARCHAR2(50),
    D1DGDZJYXQX_DATE  CHAR(8),
    D2DGDMC           VARCHAR2(600),
    D2DGDZJLX         CHAR(2),
    D2DGDZJHM         VARCHAR2(50),
    D2DGDZJYXQX_DATE  CHAR(8),
    D3DGDMC           VARCHAR2(600),
    D3DGDZJLX         CHAR(2),
    D3DGDZJHM         VARCHAR2(50),
    D3DGDZJYXQX_DATE  CHAR(8),
    D4DGDMC           VARCHAR2(600),
    D4DGDZJLX         CHAR(2),
    D4DGDZJHM         VARCHAR2(50),
    D4DGDZJYXQX_DATE  CHAR(8),
    D5DGDMC           VARCHAR2(600),
    D5DGDZJLX         CHAR(2),
    D5DGDZJHM         VARCHAR2(50),
    D5DGDZJYXQX_DATE  CHAR(8),
    D6DGDMC           VARCHAR2(600),
    D6DGDZJLX         CHAR(2),
    D6DGDZJHM         VARCHAR2(50),
    D6DGDZJYXQX_DATE  CHAR(8),
    D7DGDMC           VARCHAR2(600),
    D7DGDZJLX         CHAR(2),
    D7DGDZJHM         VARCHAR2(50),
    D7DGDZJYXQX_DATE  CHAR(8),
    D8DGDMC           VARCHAR2(600),
    D8DGDZJLX         CHAR(2),
    D8DGDZJHM         VARCHAR2(50),
    D8DGDZJYXQX_DATE  CHAR(8),
    D9DGDMC           VARCHAR2(600),
    D9DGDZJLX         CHAR(2),
    D9DGDZJHM         VARCHAR2(50),
    D9DGDZJYXQX_DATE  CHAR(8),
    D10DGDMC          VARCHAR2(600),
    D10DGDZJLX        CHAR(2),
    D10DGDZJHM        VARCHAR2(50),
    D10DGDZJYXQX_DATE CHAR(8),
    SJRQ_DATE         CHAR(8),
    REMARKS           VARCHAR2(14),
    CHECK_FLAG        CHAR,
    CHECK_DESC        VARCHAR2(512),
    CHECK_ERR_TYPE    CHAR,
    NEXT_ACTION       CHAR(2),
    DATA_STATUS       CHAR(2),
    DATA_FLAG         CHAR,
    DATA_SOURCE       CHAR,
    DATA_VERSION      NUMBER(8),
    DATA_REJ_DESC     VARCHAR2(128),
    DATA_DEL_DESC     VARCHAR2(128),
    DATA_CRT_USER     VARCHAR2(20),
    DATA_CRT_DATE     CHAR(8),
    DATA_CRT_TIME     CHAR(14),
    DATA_CHG_USER     VARCHAR2(20),
    DATA_CHG_DATE     CHAR(8),
    DATA_CHG_TIME     CHAR(14),
    DATA_APV_USER     VARCHAR2(20),
    DATA_APV_DATE     CHAR(8),
    DATA_APV_TIME     CHAR(14),
    RSV1              VARCHAR2(180),
    RSV2              VARCHAR2(180),
    RSV3              VARCHAR2(180),
    RSV4              VARCHAR2(180),
    RSV5              VARCHAR2(180)
)
/

comment on table CCRS_PM_JRJGXXBCB is '金融机构信息补充表报文'
/

comment on column CCRS_PM_JRJGXXBCB.DATA_ID is '数据ID'
/

comment on column CCRS_PM_JRJGXXBCB.DATA_DATE is '数据日期'
/

comment on column CCRS_PM_JRJGXXBCB.DATA_RPT_DATE is '报表日期'
/

comment on column CCRS_PM_JRJGXXBCB.CORP_ID is '法人机构号'
/

comment on column CCRS_PM_JRJGXXBCB.ORG_ID is '机构号'
/

comment on column CCRS_PM_JRJGXXBCB.GROUP_ID is '部门编号'
/

comment on column CCRS_PM_JRJGXXBCB.INQ_ORG_ID is '查询机构号'
/

comment on column CCRS_PM_JRJGXXBCB.INQ_GROUP_ID is '查询组号'
/

comment on column CCRS_PM_JRJGXXBCB.JRJGBM is '金融机构编码'
/

comment on column CCRS_PM_JRJGXXBCB.JRJGMC is '金融机构名称'
/

comment on column CCRS_PM_JRJGXXBCB.ZCDQXZQHDM is '注册地区行政区划代码'
/

comment on column CCRS_PM_JRJGXXBCB.HX1MC is '划型1名称'
/

comment on column CCRS_PM_JRJGXXBCB.HX2MC is '划型2名称'
/

comment on column CCRS_PM_JRJGXXBCB.JD is '经度'
/

comment on column CCRS_PM_JRJGXXBCB.WD is '纬度'
/

comment on column CCRS_PM_JRJGXXBCB.D1DGDMC is '第1大股东名称'
/

comment on column CCRS_PM_JRJGXXBCB.D1DGDZJLX is '第1大股东证件类型'
/

comment on column CCRS_PM_JRJGXXBCB.D1DGDZJHM is '第1大股东证件号码'
/

comment on column CCRS_PM_JRJGXXBCB.D1DGDZJYXQX_DATE is '第1大股东证件有效期限'
/

comment on column CCRS_PM_JRJGXXBCB.D2DGDMC is '第2大股东名称'
/

comment on column CCRS_PM_JRJGXXBCB.D2DGDZJLX is '第2大股东证件类型'
/

comment on column CCRS_PM_JRJGXXBCB.D2DGDZJHM is '第2大股东证件号码'
/

comment on column CCRS_PM_JRJGXXBCB.D2DGDZJYXQX_DATE is '第2大股东证件有效期限'
/

comment on column CCRS_PM_JRJGXXBCB.D3DGDMC is '第3大股东名称'
/

comment on column CCRS_PM_JRJGXXBCB.D3DGDZJLX is '第3大股东证件类型'
/

comment on column CCRS_PM_JRJGXXBCB.D3DGDZJHM is '第3大股东证件号码'
/

comment on column CCRS_PM_JRJGXXBCB.D3DGDZJYXQX_DATE is '第3大股东证件有效期限'
/

comment on column CCRS_PM_JRJGXXBCB.D4DGDMC is '第4大股东名称'
/

comment on column CCRS_PM_JRJGXXBCB.D4DGDZJLX is '第4大股东证件类型'
/

comment on column CCRS_PM_JRJGXXBCB.D4DGDZJHM is '第4大股东证件号码'
/

comment on column CCRS_PM_JRJGXXBCB.D4DGDZJYXQX_DATE is '第4大股东证件有效期限'
/

comment on column CCRS_PM_JRJGXXBCB.D5DGDMC is '第5大股东名称'
/

comment on column CCRS_PM_JRJGXXBCB.D5DGDZJLX is '第5大股东证件类型'
/

comment on column CCRS_PM_JRJGXXBCB.D5DGDZJHM is '第5大股东证件号码'
/

comment on column CCRS_PM_JRJGXXBCB.D5DGDZJYXQX_DATE is '第5大股东证件有效期限'
/

comment on column CCRS_PM_JRJGXXBCB.D6DGDMC is '第6大股东名称'
/

comment on column CCRS_PM_JRJGXXBCB.D6DGDZJLX is '第6大股东证件类型'
/

comment on column CCRS_PM_JRJGXXBCB.D6DGDZJHM is '第6大股东证件号码'
/

comment on column CCRS_PM_JRJGXXBCB.D6DGDZJYXQX_DATE is '第6大股东证件有效期限'
/

comment on column CCRS_PM_JRJGXXBCB.D7DGDMC is '第7大股东名称'
/

comment on column CCRS_PM_JRJGXXBCB.D7DGDZJLX is '第7大股东证件类型'
/

comment on column CCRS_PM_JRJGXXBCB.D7DGDZJHM is '第7大股东证件号码'
/

comment on column CCRS_PM_JRJGXXBCB.D7DGDZJYXQX_DATE is '第7大股东证件有效期限'
/

comment on column CCRS_PM_JRJGXXBCB.D8DGDMC is '第8大股东名称'
/

comment on column CCRS_PM_JRJGXXBCB.D8DGDZJLX is '第8大股东证件类型'
/

comment on column CCRS_PM_JRJGXXBCB.D8DGDZJHM is '第8大股东证件号码'
/

comment on column CCRS_PM_JRJGXXBCB.D8DGDZJYXQX_DATE is '第8大股东证件有效期限'
/

comment on column CCRS_PM_JRJGXXBCB.D9DGDMC is '第9大股东名称'
/

comment on column CCRS_PM_JRJGXXBCB.D9DGDZJLX is '第9大股东证件类型'
/

comment on column CCRS_PM_JRJGXXBCB.D9DGDZJHM is '第9大股东证件号码'
/

comment on column CCRS_PM_JRJGXXBCB.D9DGDZJYXQX_DATE is '第9大股东证件有效期限'
/

comment on column CCRS_PM_JRJGXXBCB.D10DGDMC is '第10大股东名称'
/

comment on column CCRS_PM_JRJGXXBCB.D10DGDZJLX is '第10大股东证件类型'
/

comment on column CCRS_PM_JRJGXXBCB.D10DGDZJHM is '第10大股东证件号码'
/

comment on column CCRS_PM_JRJGXXBCB.D10DGDZJYXQX_DATE is '第10大股东证件有效期限'
/

comment on column CCRS_PM_JRJGXXBCB.SJRQ_DATE is '数据日期'
/

comment on column CCRS_PM_JRJGXXBCB.REMARKS is '备注'
/

comment on column CCRS_PM_JRJGXXBCB.CHECK_FLAG is '校验标识'
/

comment on column CCRS_PM_JRJGXXBCB.CHECK_DESC is '校验结果'
/

comment on column CCRS_PM_JRJGXXBCB.CHECK_ERR_TYPE is '校验失败类型'
/

comment on column CCRS_PM_JRJGXXBCB.NEXT_ACTION is '下一动作'
/

comment on column CCRS_PM_JRJGXXBCB.DATA_STATUS is '数据状态'
/

comment on column CCRS_PM_JRJGXXBCB.DATA_FLAG is '数据是否已删除'
/

comment on column CCRS_PM_JRJGXXBCB.DATA_SOURCE is '数据来源'
/

comment on column CCRS_PM_JRJGXXBCB.DATA_VERSION is '数据版本'
/

comment on column CCRS_PM_JRJGXXBCB.DATA_REJ_DESC is '数据审核拒绝原因'
/

comment on column CCRS_PM_JRJGXXBCB.DATA_DEL_DESC is '数据删除描述'
/

comment on column CCRS_PM_JRJGXXBCB.DATA_CRT_USER is '数据创建/导入用户'
/

comment on column CCRS_PM_JRJGXXBCB.DATA_CRT_DATE is '数据创建/导入日期'
/

comment on column CCRS_PM_JRJGXXBCB.DATA_CRT_TIME is '数据创建/导入时间'
/

comment on column CCRS_PM_JRJGXXBCB.DATA_CHG_USER is '数据修改/删除用户'
/

comment on column CCRS_PM_JRJGXXBCB.DATA_CHG_DATE is '数据修改/删除日期'
/

comment on column CCRS_PM_JRJGXXBCB.DATA_CHG_TIME is '数据修改/删除时间'
/

comment on column CCRS_PM_JRJGXXBCB.DATA_APV_USER is '数据审核/拒绝用户'
/

comment on column CCRS_PM_JRJGXXBCB.DATA_APV_DATE is '数据审核/拒绝日期'
/

comment on column CCRS_PM_JRJGXXBCB.DATA_APV_TIME is '数据审核/拒绝时间'
/

comment on column CCRS_PM_JRJGXXBCB.RSV1 is '备用1'
/

comment on column CCRS_PM_JRJGXXBCB.RSV2 is '备用2'
/

comment on column CCRS_PM_JRJGXXBCB.RSV3 is '备用3'
/

comment on column CCRS_PM_JRJGXXBCB.RSV4 is '备用4'
/

comment on column CCRS_PM_JRJGXXBCB.RSV5 is '备用5'
/

create unique index U_JRJGXXBCB
    on CCRS_PM_JRJGXXBCB (DATA_RPT_DATE, JRJGBM, SJRQ_DATE)
/

create table CCRS_PM_PPPZDXMRZQK
(
    DATA_ID        VARCHAR2(64) not null
        primary key,
    DATA_DATE      CHAR(8),
    DATA_RPT_DATE  CHAR(8),
    CORP_ID        VARCHAR2(14),
    ORG_ID         VARCHAR2(14),
    GROUP_ID       VARCHAR2(14),
    INQ_ORG_ID     CHAR(24),
    INQ_GROUP_ID   CHAR(24),
    SJRQ_DATE      CHAR(8),
    JRJGBM         CHAR(14),
    XMMC           VARCHAR2(300),
    DKJJBM         VARCHAR2(300),
    REMARKS        VARCHAR2(14),
    CHECK_FLAG     CHAR,
    CHECK_DESC     VARCHAR2(512),
    CHECK_ERR_TYPE CHAR,
    NEXT_ACTION    CHAR(2),
    DATA_STATUS    CHAR(2),
    DATA_FLAG      CHAR,
    DATA_SOURCE    CHAR,
    DATA_VERSION   NUMBER(8),
    DATA_REJ_DESC  VARCHAR2(128),
    DATA_DEL_DESC  VARCHAR2(128),
    DATA_CRT_USER  VARCHAR2(20),
    DATA_CRT_DATE  CHAR(8),
    DATA_CRT_TIME  CHAR(14),
    DATA_CHG_USER  VARCHAR2(20),
    DATA_CHG_DATE  CHAR(8),
    DATA_CHG_TIME  CHAR(14),
    DATA_APV_USER  VARCHAR2(20),
    DATA_APV_DATE  CHAR(8),
    DATA_APV_TIME  CHAR(14),
    RSV1           VARCHAR2(180),
    RSV2           VARCHAR2(180),
    RSV3           VARCHAR2(180),
    RSV4           VARCHAR2(180),
    RSV5           VARCHAR2(180)
)
/

comment on table CCRS_PM_PPPZDXMRZQK is 'PPP重点项目融资情况报文'
/

comment on column CCRS_PM_PPPZDXMRZQK.DATA_ID is '数据ID'
/

comment on column CCRS_PM_PPPZDXMRZQK.DATA_DATE is '数据日期'
/

comment on column CCRS_PM_PPPZDXMRZQK.DATA_RPT_DATE is '报表日期'
/

comment on column CCRS_PM_PPPZDXMRZQK.CORP_ID is '法人机构号'
/

comment on column CCRS_PM_PPPZDXMRZQK.ORG_ID is '机构号'
/

comment on column CCRS_PM_PPPZDXMRZQK.GROUP_ID is '部门编号'
/

comment on column CCRS_PM_PPPZDXMRZQK.INQ_ORG_ID is '查询机构号'
/

comment on column CCRS_PM_PPPZDXMRZQK.INQ_GROUP_ID is '查询组号'
/

comment on column CCRS_PM_PPPZDXMRZQK.SJRQ_DATE is '数据日期'
/

comment on column CCRS_PM_PPPZDXMRZQK.JRJGBM is '金融机构编码'
/

comment on column CCRS_PM_PPPZDXMRZQK.XMMC is '项目名称'
/

comment on column CCRS_PM_PPPZDXMRZQK.DKJJBM is '贷款借据编码'
/

comment on column CCRS_PM_PPPZDXMRZQK.REMARKS is '备注'
/

comment on column CCRS_PM_PPPZDXMRZQK.CHECK_FLAG is '校验标识'
/

comment on column CCRS_PM_PPPZDXMRZQK.CHECK_DESC is '校验结果'
/

comment on column CCRS_PM_PPPZDXMRZQK.CHECK_ERR_TYPE is '校验失败类型'
/

comment on column CCRS_PM_PPPZDXMRZQK.NEXT_ACTION is '下一动作'
/

comment on column CCRS_PM_PPPZDXMRZQK.DATA_STATUS is '数据状态'
/

comment on column CCRS_PM_PPPZDXMRZQK.DATA_FLAG is '数据是否已删除'
/

comment on column CCRS_PM_PPPZDXMRZQK.DATA_SOURCE is '数据来源'
/

comment on column CCRS_PM_PPPZDXMRZQK.DATA_VERSION is '数据版本'
/

comment on column CCRS_PM_PPPZDXMRZQK.DATA_REJ_DESC is '数据审核拒绝原因'
/

comment on column CCRS_PM_PPPZDXMRZQK.DATA_DEL_DESC is '数据删除描述'
/

comment on column CCRS_PM_PPPZDXMRZQK.DATA_CRT_USER is '数据创建/导入用户'
/

comment on column CCRS_PM_PPPZDXMRZQK.DATA_CRT_DATE is '数据创建/导入日期'
/

comment on column CCRS_PM_PPPZDXMRZQK.DATA_CRT_TIME is '数据创建/导入时间'
/

comment on column CCRS_PM_PPPZDXMRZQK.DATA_CHG_USER is '数据修改/删除用户'
/

comment on column CCRS_PM_PPPZDXMRZQK.DATA_CHG_DATE is '数据修改/删除日期'
/

comment on column CCRS_PM_PPPZDXMRZQK.DATA_CHG_TIME is '数据修改/删除时间'
/

comment on column CCRS_PM_PPPZDXMRZQK.DATA_APV_USER is '数据审核/拒绝用户'
/

comment on column CCRS_PM_PPPZDXMRZQK.DATA_APV_DATE is '数据审核/拒绝日期'
/

comment on column CCRS_PM_PPPZDXMRZQK.DATA_APV_TIME is '数据审核/拒绝时间'
/

comment on column CCRS_PM_PPPZDXMRZQK.RSV1 is '备用1'
/

comment on column CCRS_PM_PPPZDXMRZQK.RSV2 is '备用2'
/

comment on column CCRS_PM_PPPZDXMRZQK.RSV3 is '备用3'
/

comment on column CCRS_PM_PPPZDXMRZQK.RSV4 is '备用4'
/

comment on column CCRS_PM_PPPZDXMRZQK.RSV5 is '备用5'
/

create unique index U_PPPZDXMRZQK
    on CCRS_PM_PPPZDXMRZQK (DATA_RPT_DATE, SJRQ_DATE, XMMC)
/

create table CCRS_PM_PSLDYZCQD
(
    DATA_ID          VARCHAR2(64) not null
        primary key,
    DATA_DATE        CHAR(8),
    DATA_RPT_DATE    CHAR(8),
    CORP_ID          VARCHAR2(14),
    ORG_ID           VARCHAR2(14),
    GROUP_ID         VARCHAR2(14),
    INQ_ORG_ID       CHAR(24),
    INQ_GROUP_ID     CHAR(24),
    SJRQ_DATE        CHAR(8),
    JRJGBM           CHAR(14),
    DKJJBM           VARCHAR2(105),
    SFSSZC           CHAR,
    SFBZYDJ          CHAR,
    JYNSFYWFWYHMDJL  CHAR,
    XMMC             VARCHAR2(300),
    RMYHDYBCDKZXJCBS CHAR(50),
    REMARKS          VARCHAR2(14),
    CHECK_FLAG       CHAR,
    CHECK_DESC       VARCHAR2(512),
    CHECK_ERR_TYPE   CHAR,
    NEXT_ACTION      CHAR(2),
    DATA_STATUS      CHAR(2),
    DATA_FLAG        CHAR,
    DATA_SOURCE      CHAR,
    DATA_VERSION     NUMBER(8),
    DATA_REJ_DESC    VARCHAR2(128),
    DATA_DEL_DESC    VARCHAR2(128),
    DATA_CRT_USER    VARCHAR2(20),
    DATA_CRT_DATE    CHAR(8),
    DATA_CRT_TIME    CHAR(14),
    DATA_CHG_USER    VARCHAR2(20),
    DATA_CHG_DATE    CHAR(8),
    DATA_CHG_TIME    CHAR(14),
    DATA_APV_USER    VARCHAR2(20),
    DATA_APV_DATE    CHAR(8),
    DATA_APV_TIME    CHAR(14),
    RSV1             VARCHAR2(180),
    RSV2             VARCHAR2(180),
    RSV3             VARCHAR2(180),
    RSV4             VARCHAR2(180),
    RSV5             VARCHAR2(180)
)
/

comment on table CCRS_PM_PSLDYZCQD is 'PSL已抵押资产清单报文'
/

comment on column CCRS_PM_PSLDYZCQD.DATA_ID is '数据ID'
/

comment on column CCRS_PM_PSLDYZCQD.DATA_DATE is '数据日期'
/

comment on column CCRS_PM_PSLDYZCQD.DATA_RPT_DATE is '报表日期'
/

comment on column CCRS_PM_PSLDYZCQD.CORP_ID is '法人机构号'
/

comment on column CCRS_PM_PSLDYZCQD.ORG_ID is '机构号'
/

comment on column CCRS_PM_PSLDYZCQD.GROUP_ID is '部门编号'
/

comment on column CCRS_PM_PSLDYZCQD.INQ_ORG_ID is '查询机构号'
/

comment on column CCRS_PM_PSLDYZCQD.INQ_GROUP_ID is '查询组号'
/

comment on column CCRS_PM_PSLDYZCQD.SJRQ_DATE is '数据日期'
/

comment on column CCRS_PM_PSLDYZCQD.JRJGBM is '金融机构编码'
/

comment on column CCRS_PM_PSLDYZCQD.DKJJBM is '贷款借据编码'
/

comment on column CCRS_PM_PSLDYZCQD.SFSSZC is '是否涉诉/仲裁'
/

comment on column CCRS_PM_PSLDYZCQD.SFBZYDJ is '是否被质押/冻结'
/

comment on column CCRS_PM_PSLDYZCQD.JYNSFYWFWYHMDJL is '近一年是否有违法/违约/黑名单记录'
/

comment on column CCRS_PM_PSLDYZCQD.XMMC is '项目名称'
/

comment on column CCRS_PM_PSLDYZCQD.RMYHDYBCDKZXJCBS is '人民银行抵押补充贷款专项监测标识'
/

comment on column CCRS_PM_PSLDYZCQD.REMARKS is '备注'
/

comment on column CCRS_PM_PSLDYZCQD.CHECK_FLAG is '校验标识'
/

comment on column CCRS_PM_PSLDYZCQD.CHECK_DESC is '校验结果'
/

comment on column CCRS_PM_PSLDYZCQD.CHECK_ERR_TYPE is '校验失败类型'
/

comment on column CCRS_PM_PSLDYZCQD.NEXT_ACTION is '下一动作'
/

comment on column CCRS_PM_PSLDYZCQD.DATA_STATUS is '数据状态'
/

comment on column CCRS_PM_PSLDYZCQD.DATA_FLAG is '数据是否已删除'
/

comment on column CCRS_PM_PSLDYZCQD.DATA_SOURCE is '数据来源'
/

comment on column CCRS_PM_PSLDYZCQD.DATA_VERSION is '数据版本'
/

comment on column CCRS_PM_PSLDYZCQD.DATA_REJ_DESC is '数据审核拒绝原因'
/

comment on column CCRS_PM_PSLDYZCQD.DATA_DEL_DESC is '数据删除描述'
/

comment on column CCRS_PM_PSLDYZCQD.DATA_CRT_USER is '数据创建/导入用户'
/

comment on column CCRS_PM_PSLDYZCQD.DATA_CRT_DATE is '数据创建/导入日期'
/

comment on column CCRS_PM_PSLDYZCQD.DATA_CRT_TIME is '数据创建/导入时间'
/

comment on column CCRS_PM_PSLDYZCQD.DATA_CHG_USER is '数据修改/删除用户'
/

comment on column CCRS_PM_PSLDYZCQD.DATA_CHG_DATE is '数据修改/删除日期'
/

comment on column CCRS_PM_PSLDYZCQD.DATA_CHG_TIME is '数据修改/删除时间'
/

comment on column CCRS_PM_PSLDYZCQD.DATA_APV_USER is '数据审核/拒绝用户'
/

comment on column CCRS_PM_PSLDYZCQD.DATA_APV_DATE is '数据审核/拒绝日期'
/

comment on column CCRS_PM_PSLDYZCQD.DATA_APV_TIME is '数据审核/拒绝时间'
/

comment on column CCRS_PM_PSLDYZCQD.RSV1 is '备用1'
/

comment on column CCRS_PM_PSLDYZCQD.RSV2 is '备用2'
/

comment on column CCRS_PM_PSLDYZCQD.RSV3 is '备用3'
/

comment on column CCRS_PM_PSLDYZCQD.RSV4 is '备用4'
/

comment on column CCRS_PM_PSLDYZCQD.RSV5 is '备用5'
/

create unique index U_PSLDYZCQD
    on CCRS_PM_PSLDYZCQD (DATA_RPT_DATE, SJRQ_DATE, XMMC)
/

create table CCRS_PM_RZXBH
(
    DATA_ID        VARCHAR2(64) not null
        primary key,
    DATA_DATE      CHAR(8),
    DATA_RPT_DATE  CHAR(8),
    CORP_ID        VARCHAR2(14),
    ORG_ID         VARCHAR2(14),
    GROUP_ID       VARCHAR2(14),
    INQ_ORG_ID     CHAR(24),
    INQ_GROUP_ID   CHAR(24),
    SJRQ_DATE      CHAR(8),
    JRJGBM         CHAR(14),
    SXHTBH         VARCHAR2(300),
    SQRMC          VARCHAR2(300),
    SQRZJLX        CHAR(2),
    SQRJJCF        VARCHAR2(5),
    SQRDM          VARCHAR2(50),
    BHBH           VARCHAR2(50),
    BHSXRQ_DATE    CHAR(8),
    BHDQRQ_DATE    CHAR(8),
    BHBZ           CHAR(3),
    BHJE_AMT       NUMBER,
    BHLX           CHAR(2),
    BZJBZ          CHAR(3),
    BZJJE_AMT      NUMBER,
    SXFL           NUMBER,
    REMARKS        VARCHAR2(14),
    CHECK_FLAG     CHAR,
    CHECK_DESC     VARCHAR2(512),
    CHECK_ERR_TYPE CHAR,
    NEXT_ACTION    CHAR(2),
    DATA_STATUS    CHAR(2),
    DATA_FLAG      CHAR,
    DATA_SOURCE    CHAR,
    DATA_VERSION   NUMBER(8),
    DATA_REJ_DESC  VARCHAR2(128),
    DATA_DEL_DESC  VARCHAR2(128),
    DATA_CRT_USER  VARCHAR2(20),
    DATA_CRT_DATE  CHAR(8),
    DATA_CRT_TIME  CHAR(14),
    DATA_CHG_USER  VARCHAR2(20),
    DATA_CHG_DATE  CHAR(8),
    DATA_CHG_TIME  CHAR(14),
    DATA_APV_USER  VARCHAR2(20),
    DATA_APV_DATE  CHAR(8),
    DATA_APV_TIME  CHAR(14),
    RSV1           VARCHAR2(180),
    RSV2           VARCHAR2(180),
    RSV3           VARCHAR2(180),
    RSV4           VARCHAR2(180),
    RSV5           VARCHAR2(180)
)
/

comment on table CCRS_PM_RZXBH is '融资性保函报文'
/

comment on column CCRS_PM_RZXBH.DATA_ID is '数据ID'
/

comment on column CCRS_PM_RZXBH.DATA_DATE is '数据日期'
/

comment on column CCRS_PM_RZXBH.DATA_RPT_DATE is '报表日期'
/

comment on column CCRS_PM_RZXBH.CORP_ID is '法人机构号'
/

comment on column CCRS_PM_RZXBH.ORG_ID is '机构号'
/

comment on column CCRS_PM_RZXBH.GROUP_ID is '部门编号'
/

comment on column CCRS_PM_RZXBH.INQ_ORG_ID is '查询机构号'
/

comment on column CCRS_PM_RZXBH.INQ_GROUP_ID is '查询组号'
/

comment on column CCRS_PM_RZXBH.SJRQ_DATE is '数据日期'
/

comment on column CCRS_PM_RZXBH.JRJGBM is '金融机构编码'
/

comment on column CCRS_PM_RZXBH.SXHTBH is '授信合同编号'
/

comment on column CCRS_PM_RZXBH.SQRMC is '申请人名称'
/

comment on column CCRS_PM_RZXBH.SQRZJLX is '申请人证件类型'
/

comment on column CCRS_PM_RZXBH.SQRJJCF is '申请人经济成分'
/

comment on column CCRS_PM_RZXBH.SQRDM is '申请人代码'
/

comment on column CCRS_PM_RZXBH.BHBH is '保函编号'
/

comment on column CCRS_PM_RZXBH.BHSXRQ_DATE is '保函生效日期'
/

comment on column CCRS_PM_RZXBH.BHDQRQ_DATE is '保函到期日期'
/

comment on column CCRS_PM_RZXBH.BHBZ is '保函币种'
/

comment on column CCRS_PM_RZXBH.BHJE_AMT is '保函金额'
/

comment on column CCRS_PM_RZXBH.BHLX is '保函类型'
/

comment on column CCRS_PM_RZXBH.BZJBZ is '保证金币种'
/

comment on column CCRS_PM_RZXBH.BZJJE_AMT is '保证金金额'
/

comment on column CCRS_PM_RZXBH.SXFL is '手续费率'
/

comment on column CCRS_PM_RZXBH.REMARKS is '备注'
/

comment on column CCRS_PM_RZXBH.CHECK_FLAG is '校验标识'
/

comment on column CCRS_PM_RZXBH.CHECK_DESC is '校验结果'
/

comment on column CCRS_PM_RZXBH.CHECK_ERR_TYPE is '校验失败类型'
/

comment on column CCRS_PM_RZXBH.NEXT_ACTION is '下一动作'
/

comment on column CCRS_PM_RZXBH.DATA_STATUS is '数据状态'
/

comment on column CCRS_PM_RZXBH.DATA_FLAG is '数据是否已删除'
/

comment on column CCRS_PM_RZXBH.DATA_SOURCE is '数据来源'
/

comment on column CCRS_PM_RZXBH.DATA_VERSION is '数据版本'
/

comment on column CCRS_PM_RZXBH.DATA_REJ_DESC is '数据审核拒绝原因'
/

comment on column CCRS_PM_RZXBH.DATA_DEL_DESC is '数据删除描述'
/

comment on column CCRS_PM_RZXBH.DATA_CRT_USER is '数据创建/导入用户'
/

comment on column CCRS_PM_RZXBH.DATA_CRT_DATE is '数据创建/导入日期'
/

comment on column CCRS_PM_RZXBH.DATA_CRT_TIME is '数据创建/导入时间'
/

comment on column CCRS_PM_RZXBH.DATA_CHG_USER is '数据修改/删除用户'
/

comment on column CCRS_PM_RZXBH.DATA_CHG_DATE is '数据修改/删除日期'
/

comment on column CCRS_PM_RZXBH.DATA_CHG_TIME is '数据修改/删除时间'
/

comment on column CCRS_PM_RZXBH.DATA_APV_USER is '数据审核/拒绝用户'
/

comment on column CCRS_PM_RZXBH.DATA_APV_DATE is '数据审核/拒绝日期'
/

comment on column CCRS_PM_RZXBH.DATA_APV_TIME is '数据审核/拒绝时间'
/

comment on column CCRS_PM_RZXBH.RSV1 is '备用1'
/

comment on column CCRS_PM_RZXBH.RSV2 is '备用2'
/

comment on column CCRS_PM_RZXBH.RSV3 is '备用3'
/

comment on column CCRS_PM_RZXBH.RSV4 is '备用4'
/

comment on column CCRS_PM_RZXBH.RSV5 is '备用5'
/

create unique index U_RZXBH
    on CCRS_PM_RZXBH (DATA_RPT_DATE, SJRQ_DATE, BHBH)
/

create table CCRS_PM_SXHT
(
    DATA_ID        VARCHAR2(64) not null
        primary key,
    DATA_DATE      CHAR(8),
    DATA_RPT_DATE  CHAR(8),
    CORP_ID        VARCHAR2(14),
    ORG_ID         VARCHAR2(14),
    GROUP_ID       VARCHAR2(14),
    INQ_ORG_ID     CHAR(24),
    INQ_GROUP_ID   CHAR(24),
    SJRQ_DATE      CHAR(8),
    JRJGBM         CHAR(14),
    SXHTBH         VARCHAR2(300),
    KHLX           CHAR,
    KHMC           VARCHAR2(300),
    KHBH           VARCHAR2(300),
    KHZJLX         CHAR(2),
    KHZJHM         VARCHAR2(50),
    SXLX           VARCHAR2(4),
    BZ             CHAR(3),
    SXJE_AMT       NUMBER,
    SXKSRQ_DATE    CHAR(8),
    SXDQRQ_DATE    CHAR(8),
    SFXHED         CHAR,
    SFLSED         CHAR,
    REMARKS        VARCHAR2(14),
    CHECK_FLAG     CHAR,
    CHECK_DESC     VARCHAR2(512),
    CHECK_ERR_TYPE CHAR,
    NEXT_ACTION    CHAR(2),
    DATA_STATUS    CHAR(2),
    DATA_FLAG      CHAR,
    DATA_SOURCE    CHAR,
    DATA_VERSION   NUMBER(8),
    DATA_REJ_DESC  VARCHAR2(128),
    DATA_DEL_DESC  VARCHAR2(128),
    DATA_CRT_USER  VARCHAR2(20),
    DATA_CRT_DATE  CHAR(8),
    DATA_CRT_TIME  CHAR(14),
    DATA_CHG_USER  VARCHAR2(20),
    DATA_CHG_DATE  CHAR(8),
    DATA_CHG_TIME  CHAR(14),
    DATA_APV_USER  VARCHAR2(20),
    DATA_APV_DATE  CHAR(8),
    DATA_APV_TIME  CHAR(14),
    RSV1           VARCHAR2(180),
    RSV2           VARCHAR2(180),
    RSV3           VARCHAR2(180),
    RSV4           VARCHAR2(180),
    RSV5           VARCHAR2(180)
)
/

comment on table CCRS_PM_SXHT is '授信合同报文'
/

comment on column CCRS_PM_SXHT.DATA_ID is '数据ID'
/

comment on column CCRS_PM_SXHT.DATA_DATE is '数据日期'
/

comment on column CCRS_PM_SXHT.DATA_RPT_DATE is '报表日期'
/

comment on column CCRS_PM_SXHT.CORP_ID is '法人机构号'
/

comment on column CCRS_PM_SXHT.ORG_ID is '机构号'
/

comment on column CCRS_PM_SXHT.GROUP_ID is '部门编号'
/

comment on column CCRS_PM_SXHT.INQ_ORG_ID is '查询机构号'
/

comment on column CCRS_PM_SXHT.INQ_GROUP_ID is '查询组号'
/

comment on column CCRS_PM_SXHT.SJRQ_DATE is '数据日期'
/

comment on column CCRS_PM_SXHT.JRJGBM is '金融机构编码'
/

comment on column CCRS_PM_SXHT.SXHTBH is '授信合同编号'
/

comment on column CCRS_PM_SXHT.KHLX is '客户类型'
/

comment on column CCRS_PM_SXHT.KHMC is '客户名称'
/

comment on column CCRS_PM_SXHT.KHBH is '客户编号'
/

comment on column CCRS_PM_SXHT.KHZJLX is '客户证件类型'
/

comment on column CCRS_PM_SXHT.KHZJHM is '客户证件号码'
/

comment on column CCRS_PM_SXHT.SXLX is '授信类型'
/

comment on column CCRS_PM_SXHT.BZ is '币种'
/

comment on column CCRS_PM_SXHT.SXJE_AMT is '授信金额'
/

comment on column CCRS_PM_SXHT.SXKSRQ_DATE is '授信开始日期'
/

comment on column CCRS_PM_SXHT.SXDQRQ_DATE is '授信到期日期'
/

comment on column CCRS_PM_SXHT.SFXHED is '是否循环额度'
/

comment on column CCRS_PM_SXHT.SFLSED is '是否临时额度'
/

comment on column CCRS_PM_SXHT.REMARKS is '备注'
/

comment on column CCRS_PM_SXHT.CHECK_FLAG is '校验标识'
/

comment on column CCRS_PM_SXHT.CHECK_DESC is '校验结果'
/

comment on column CCRS_PM_SXHT.CHECK_ERR_TYPE is '校验失败类型'
/

comment on column CCRS_PM_SXHT.NEXT_ACTION is '下一动作'
/

comment on column CCRS_PM_SXHT.DATA_STATUS is '数据状态'
/

comment on column CCRS_PM_SXHT.DATA_FLAG is '数据是否已删除'
/

comment on column CCRS_PM_SXHT.DATA_SOURCE is '数据来源'
/

comment on column CCRS_PM_SXHT.DATA_VERSION is '数据版本'
/

comment on column CCRS_PM_SXHT.DATA_REJ_DESC is '数据审核拒绝原因'
/

comment on column CCRS_PM_SXHT.DATA_DEL_DESC is '数据删除描述'
/

comment on column CCRS_PM_SXHT.DATA_CRT_USER is '数据创建/导入用户'
/

comment on column CCRS_PM_SXHT.DATA_CRT_DATE is '数据创建/导入日期'
/

comment on column CCRS_PM_SXHT.DATA_CRT_TIME is '数据创建/导入时间'
/

comment on column CCRS_PM_SXHT.DATA_CHG_USER is '数据修改/删除用户'
/

comment on column CCRS_PM_SXHT.DATA_CHG_DATE is '数据修改/删除日期'
/

comment on column CCRS_PM_SXHT.DATA_CHG_TIME is '数据修改/删除时间'
/

comment on column CCRS_PM_SXHT.DATA_APV_USER is '数据审核/拒绝用户'
/

comment on column CCRS_PM_SXHT.DATA_APV_DATE is '数据审核/拒绝日期'
/

comment on column CCRS_PM_SXHT.DATA_APV_TIME is '数据审核/拒绝时间'
/

comment on column CCRS_PM_SXHT.RSV1 is '备用1'
/

comment on column CCRS_PM_SXHT.RSV2 is '备用2'
/

comment on column CCRS_PM_SXHT.RSV3 is '备用3'
/

comment on column CCRS_PM_SXHT.RSV4 is '备用4'
/

comment on column CCRS_PM_SXHT.RSV5 is '备用5'
/

create unique index U_SXHT
    on CCRS_PM_SXHT (DATA_RPT_DATE, SJRQ_DATE, SXHTBH)
/

create table CCRS_PM_TXFSE
(
    DATA_ID           VARCHAR2(64) not null
        primary key,
    DATA_DATE         CHAR(8),
    DATA_RPT_DATE     CHAR(8),
    CORP_ID           VARCHAR2(14),
    ORG_ID            VARCHAR2(14),
    GROUP_ID          VARCHAR2(14),
    INQ_ORG_ID        CHAR(24),
    INQ_GROUP_ID      CHAR(24),
    SJRQ_DATE         CHAR(8),
    JRJGBM            CHAR(14),
    TXQYZJLX          CHAR(2),
    TXQYDM            VARCHAR2(50),
    TXQYMC            VARCHAR2(300),
    DQXZQHDMTXQYZCSZD CHAR(12),
    TXQYGM            CHAR(4),
    TXQYHYFL          CHAR,
    TXQYJJCF          VARCHAR2(5),
    PJBM              VARCHAR2(50),
    PJLX              CHAR(2),
    PJJZ              CHAR(2),
    TXLX              VARCHAR2(6),
    TRTCBS            CHAR(2),
    CPRQ_DATE         CHAR(8),
    PJJE_AMT          NUMBER,
    PJDQRQ_DATE       CHAR(8),
    KPQYMC            VARCHAR2(300),
    KPQYZJLX          CHAR(2),
    KPQYDM            VARCHAR2(50),
    RMYHPJZXJCBS      CHAR(50),
    FKHHH             CHAR(12),
    FKHMC             VARCHAR2(300),
    SKRMC             VARCHAR2(300),
    TXYWFSRQ_DATE     CHAR(8),
    TXLL              NUMBER,
    BZ                CHAR(3),
    BSZRCS            NUMBER(8),
    REMARKS           VARCHAR2(14),
    CHECK_FLAG        CHAR,
    CHECK_DESC        VARCHAR2(512),
    CHECK_ERR_TYPE    CHAR,
    NEXT_ACTION       CHAR(2),
    DATA_STATUS       CHAR(2),
    DATA_FLAG         CHAR,
    DATA_SOURCE       CHAR,
    DATA_VERSION      NUMBER(8),
    DATA_REJ_DESC     VARCHAR2(128),
    DATA_DEL_DESC     VARCHAR2(128),
    DATA_CRT_USER     VARCHAR2(20),
    DATA_CRT_DATE     CHAR(8),
    DATA_CRT_TIME     CHAR(14),
    DATA_CHG_USER     VARCHAR2(20),
    DATA_CHG_DATE     CHAR(8),
    DATA_CHG_TIME     CHAR(14),
    DATA_APV_USER     VARCHAR2(20),
    DATA_APV_DATE     CHAR(8),
    DATA_APV_TIME     CHAR(14),
    RSV1              VARCHAR2(180),
    RSV2              VARCHAR2(180),
    RSV3              VARCHAR2(180),
    RSV4              VARCHAR2(180),
    RSV5              VARCHAR2(180)
)
/

comment on table CCRS_PM_TXFSE is '贴现发生额报文'
/

comment on column CCRS_PM_TXFSE.DATA_ID is '数据ID'
/

comment on column CCRS_PM_TXFSE.DATA_DATE is '数据日期'
/

comment on column CCRS_PM_TXFSE.DATA_RPT_DATE is '报表日期'
/

comment on column CCRS_PM_TXFSE.CORP_ID is '法人机构号'
/

comment on column CCRS_PM_TXFSE.ORG_ID is '机构号'
/

comment on column CCRS_PM_TXFSE.GROUP_ID is '部门编号'
/

comment on column CCRS_PM_TXFSE.INQ_ORG_ID is '查询机构号'
/

comment on column CCRS_PM_TXFSE.INQ_GROUP_ID is '查询组号'
/

comment on column CCRS_PM_TXFSE.SJRQ_DATE is '数据日期'
/

comment on column CCRS_PM_TXFSE.JRJGBM is '金融机构编码'
/

comment on column CCRS_PM_TXFSE.TXQYZJLX is '贴现企业证件类型'
/

comment on column CCRS_PM_TXFSE.TXQYDM is '贴现企业代码'
/

comment on column CCRS_PM_TXFSE.TXQYMC is '贴现企业名称'
/

comment on column CCRS_PM_TXFSE.DQXZQHDMTXQYZCSZD is '地区行政区划代码（贴现企业注册所在地）'
/

comment on column CCRS_PM_TXFSE.TXQYGM is '贴现企业规模'
/

comment on column CCRS_PM_TXFSE.TXQYHYFL is '贴现企业行业分类'
/

comment on column CCRS_PM_TXFSE.TXQYJJCF is '贴现企业经济成分'
/

comment on column CCRS_PM_TXFSE.PJBM is '票据编码'
/

comment on column CCRS_PM_TXFSE.PJLX is '票据类型'
/

comment on column CCRS_PM_TXFSE.PJJZ is '票据介质'
/

comment on column CCRS_PM_TXFSE.TXLX is '贴现类型'
/

comment on column CCRS_PM_TXFSE.TRTCBS is '贴入/贴出标识'
/

comment on column CCRS_PM_TXFSE.CPRQ_DATE is '出票日期'
/

comment on column CCRS_PM_TXFSE.PJJE_AMT is '票据金额'
/

comment on column CCRS_PM_TXFSE.PJDQRQ_DATE is '票据到期日期'
/

comment on column CCRS_PM_TXFSE.KPQYMC is '开票企业名称'
/

comment on column CCRS_PM_TXFSE.KPQYZJLX is '开票企业证件类型'
/

comment on column CCRS_PM_TXFSE.KPQYDM is '开票企业代码'
/

comment on column CCRS_PM_TXFSE.RMYHPJZXJCBS is '人民银行票据专项监测标识'
/

comment on column CCRS_PM_TXFSE.FKHHH is '付款行行号'
/

comment on column CCRS_PM_TXFSE.FKHMC is '付款行名称'
/

comment on column CCRS_PM_TXFSE.SKRMC is '收款人名称'
/

comment on column CCRS_PM_TXFSE.TXYWFSRQ_DATE is '贴现业务发生日期'
/

comment on column CCRS_PM_TXFSE.TXLL is '贴现利率'
/

comment on column CCRS_PM_TXFSE.BZ is '币种'
/

comment on column CCRS_PM_TXFSE.BSZRCS is '背书转让次数'
/

comment on column CCRS_PM_TXFSE.REMARKS is '备注'
/

comment on column CCRS_PM_TXFSE.CHECK_FLAG is '校验标识'
/

comment on column CCRS_PM_TXFSE.CHECK_DESC is '校验结果'
/

comment on column CCRS_PM_TXFSE.CHECK_ERR_TYPE is '校验失败类型'
/

comment on column CCRS_PM_TXFSE.NEXT_ACTION is '下一动作'
/

comment on column CCRS_PM_TXFSE.DATA_STATUS is '数据状态'
/

comment on column CCRS_PM_TXFSE.DATA_FLAG is '数据是否已删除'
/

comment on column CCRS_PM_TXFSE.DATA_SOURCE is '数据来源'
/

comment on column CCRS_PM_TXFSE.DATA_VERSION is '数据版本'
/

comment on column CCRS_PM_TXFSE.DATA_REJ_DESC is '数据审核拒绝原因'
/

comment on column CCRS_PM_TXFSE.DATA_DEL_DESC is '数据删除描述'
/

comment on column CCRS_PM_TXFSE.DATA_CRT_USER is '数据创建/导入用户'
/

comment on column CCRS_PM_TXFSE.DATA_CRT_DATE is '数据创建/导入日期'
/

comment on column CCRS_PM_TXFSE.DATA_CRT_TIME is '数据创建/导入时间'
/

comment on column CCRS_PM_TXFSE.DATA_CHG_USER is '数据修改/删除用户'
/

comment on column CCRS_PM_TXFSE.DATA_CHG_DATE is '数据修改/删除日期'
/

comment on column CCRS_PM_TXFSE.DATA_CHG_TIME is '数据修改/删除时间'
/

comment on column CCRS_PM_TXFSE.DATA_APV_USER is '数据审核/拒绝用户'
/

comment on column CCRS_PM_TXFSE.DATA_APV_DATE is '数据审核/拒绝日期'
/

comment on column CCRS_PM_TXFSE.DATA_APV_TIME is '数据审核/拒绝时间'
/

comment on column CCRS_PM_TXFSE.RSV1 is '备用1'
/

comment on column CCRS_PM_TXFSE.RSV2 is '备用2'
/

comment on column CCRS_PM_TXFSE.RSV3 is '备用3'
/

comment on column CCRS_PM_TXFSE.RSV4 is '备用4'
/

comment on column CCRS_PM_TXFSE.RSV5 is '备用5'
/

create unique index U_TXFSE
    on CCRS_PM_TXFSE (DATA_RPT_DATE, SJRQ_DATE, PJBM)
/

create table CCRS_PM_TXYE
(
    DATA_ID           VARCHAR2(64) not null
        primary key,
    DATA_DATE         CHAR(8),
    DATA_RPT_DATE     CHAR(8),
    CORP_ID           VARCHAR2(14),
    ORG_ID            VARCHAR2(14),
    GROUP_ID          VARCHAR2(14),
    INQ_ORG_ID        CHAR(24),
    INQ_GROUP_ID      CHAR(24),
    SJRQ_DATE         CHAR(8),
    JRJGBM            CHAR(14),
    TXQYZJLX          CHAR(2),
    TXQYDM            VARCHAR2(50),
    TXQYMC            VARCHAR2(300),
    DQXZQHDMTXQYZCSZD CHAR(12),
    TXQYGM            CHAR(4),
    TXQYHYFL          CHAR,
    TXQYJJCF          VARCHAR2(5),
    PJBM              VARCHAR2(50),
    PJLX              CHAR(2),
    PJJZ              CHAR(2),
    TXLX              VARCHAR2(6),
    CPRQ_DATE         CHAR(8),
    PJJE_AMT          NUMBER,
    PJDQRQ_DATE       CHAR(8),
    KPQYMC            VARCHAR2(300),
    KPQYZJLX          CHAR(2),
    KPQYDM            VARCHAR2(50),
    RMYHPJZXJCBS      CHAR(50),
    FKHHH             CHAR(12),
    FKHMC             VARCHAR2(300),
    SKRMC             VARCHAR2(300),
    TXYWFSRQ_DATE     CHAR(8),
    TXLL              NUMBER,
    BZ                CHAR(3),
    BSZRCS            NUMBER(8),
    REMARKS           VARCHAR2(14),
    CHECK_FLAG        CHAR,
    CHECK_DESC        VARCHAR2(512),
    CHECK_ERR_TYPE    CHAR,
    NEXT_ACTION       CHAR(2),
    DATA_STATUS       CHAR(2),
    DATA_FLAG         CHAR,
    DATA_SOURCE       CHAR,
    DATA_VERSION      NUMBER(8),
    DATA_REJ_DESC     VARCHAR2(128),
    DATA_DEL_DESC     VARCHAR2(128),
    DATA_CRT_USER     VARCHAR2(20),
    DATA_CRT_DATE     CHAR(8),
    DATA_CRT_TIME     CHAR(14),
    DATA_CHG_USER     VARCHAR2(20),
    DATA_CHG_DATE     CHAR(8),
    DATA_CHG_TIME     CHAR(14),
    DATA_APV_USER     VARCHAR2(20),
    DATA_APV_DATE     CHAR(8),
    DATA_APV_TIME     CHAR(14),
    RSV1              VARCHAR2(180),
    RSV2              VARCHAR2(180),
    RSV3              VARCHAR2(180),
    RSV4              VARCHAR2(180),
    RSV5              VARCHAR2(180)
)
/

comment on table CCRS_PM_TXYE is '贴现余额报文'
/

comment on column CCRS_PM_TXYE.DATA_ID is '数据ID'
/

comment on column CCRS_PM_TXYE.DATA_DATE is '数据日期'
/

comment on column CCRS_PM_TXYE.DATA_RPT_DATE is '报表日期'
/

comment on column CCRS_PM_TXYE.CORP_ID is '法人机构号'
/

comment on column CCRS_PM_TXYE.ORG_ID is '机构号'
/

comment on column CCRS_PM_TXYE.GROUP_ID is '部门编号'
/

comment on column CCRS_PM_TXYE.INQ_ORG_ID is '查询机构号'
/

comment on column CCRS_PM_TXYE.INQ_GROUP_ID is '查询组号'
/

comment on column CCRS_PM_TXYE.SJRQ_DATE is '数据日期'
/

comment on column CCRS_PM_TXYE.JRJGBM is '金融机构编码'
/

comment on column CCRS_PM_TXYE.TXQYZJLX is '贴现企业证件类型'
/

comment on column CCRS_PM_TXYE.TXQYDM is '贴现企业代码'
/

comment on column CCRS_PM_TXYE.TXQYMC is '贴现企业名称'
/

comment on column CCRS_PM_TXYE.DQXZQHDMTXQYZCSZD is '地区行政区划代码（贴现企业注册所在地）'
/

comment on column CCRS_PM_TXYE.TXQYGM is '贴现企业规模'
/

comment on column CCRS_PM_TXYE.TXQYHYFL is '贴现企业行业分类'
/

comment on column CCRS_PM_TXYE.TXQYJJCF is '贴现企业经济成分'
/

comment on column CCRS_PM_TXYE.PJBM is '票据编码'
/

comment on column CCRS_PM_TXYE.PJLX is '票据类型'
/

comment on column CCRS_PM_TXYE.PJJZ is '票据介质'
/

comment on column CCRS_PM_TXYE.TXLX is '贴现类型'
/

comment on column CCRS_PM_TXYE.CPRQ_DATE is '出票日期'
/

comment on column CCRS_PM_TXYE.PJJE_AMT is '票据金额'
/

comment on column CCRS_PM_TXYE.PJDQRQ_DATE is '票据到期日期'
/

comment on column CCRS_PM_TXYE.KPQYMC is '开票企业名称'
/

comment on column CCRS_PM_TXYE.KPQYZJLX is '开票企业证件类型'
/

comment on column CCRS_PM_TXYE.KPQYDM is '开票企业代码'
/

comment on column CCRS_PM_TXYE.RMYHPJZXJCBS is '人民银行票据专项监测标识'
/

comment on column CCRS_PM_TXYE.FKHHH is '付款行行号'
/

comment on column CCRS_PM_TXYE.FKHMC is '付款行名称'
/

comment on column CCRS_PM_TXYE.SKRMC is '收款人名称'
/

comment on column CCRS_PM_TXYE.TXYWFSRQ_DATE is '贴现业务发生日期'
/

comment on column CCRS_PM_TXYE.TXLL is '贴现利率'
/

comment on column CCRS_PM_TXYE.BZ is '币种'
/

comment on column CCRS_PM_TXYE.BSZRCS is '背书转让次数'
/

comment on column CCRS_PM_TXYE.REMARKS is '备注'
/

comment on column CCRS_PM_TXYE.CHECK_FLAG is '校验标识'
/

comment on column CCRS_PM_TXYE.CHECK_DESC is '校验结果'
/

comment on column CCRS_PM_TXYE.CHECK_ERR_TYPE is '校验失败类型'
/

comment on column CCRS_PM_TXYE.NEXT_ACTION is '下一动作'
/

comment on column CCRS_PM_TXYE.DATA_STATUS is '数据状态'
/

comment on column CCRS_PM_TXYE.DATA_FLAG is '数据是否已删除'
/

comment on column CCRS_PM_TXYE.DATA_SOURCE is '数据来源'
/

comment on column CCRS_PM_TXYE.DATA_VERSION is '数据版本'
/

comment on column CCRS_PM_TXYE.DATA_REJ_DESC is '数据审核拒绝原因'
/

comment on column CCRS_PM_TXYE.DATA_DEL_DESC is '数据删除描述'
/

comment on column CCRS_PM_TXYE.DATA_CRT_USER is '数据创建/导入用户'
/

comment on column CCRS_PM_TXYE.DATA_CRT_DATE is '数据创建/导入日期'
/

comment on column CCRS_PM_TXYE.DATA_CRT_TIME is '数据创建/导入时间'
/

comment on column CCRS_PM_TXYE.DATA_CHG_USER is '数据修改/删除用户'
/

comment on column CCRS_PM_TXYE.DATA_CHG_DATE is '数据修改/删除日期'
/

comment on column CCRS_PM_TXYE.DATA_CHG_TIME is '数据修改/删除时间'
/

comment on column CCRS_PM_TXYE.DATA_APV_USER is '数据审核/拒绝用户'
/

comment on column CCRS_PM_TXYE.DATA_APV_DATE is '数据审核/拒绝日期'
/

comment on column CCRS_PM_TXYE.DATA_APV_TIME is '数据审核/拒绝时间'
/

comment on column CCRS_PM_TXYE.RSV1 is '备用1'
/

comment on column CCRS_PM_TXYE.RSV2 is '备用2'
/

comment on column CCRS_PM_TXYE.RSV3 is '备用3'
/

comment on column CCRS_PM_TXYE.RSV4 is '备用4'
/

comment on column CCRS_PM_TXYE.RSV5 is '备用5'
/

create unique index U_TXYE
    on CCRS_PM_TXYE (DATA_RPT_DATE, SJRQ_DATE, PJBM)
/

create table CCRS_PM_TYCDFSE
(
    DATA_ID        VARCHAR2(64) not null
        primary key,
    DATA_DATE      CHAR(8),
    DATA_RPT_DATE  CHAR(8),
    CORP_ID        VARCHAR2(14),
    ORG_ID         VARCHAR2(14),
    GROUP_ID       VARCHAR2(14),
    INQ_ORG_ID     CHAR(24),
    INQ_GROUP_ID   CHAR(24),
    SJRQ_DATE      CHAR(8),
    JRJGBM         CHAR(14),
    JYDSMC         VARCHAR2(300),
    CDXYDM         VARCHAR2(150),
    CDMC           VARCHAR2(300),
    CDXYQSRQ_DATE  CHAR(8),
    CDXYDQRQ_DATE  CHAR(8),
    CDSJDQRQ_DATE  CHAR(8),
    BZ             CHAR(3),
    CDFXGM_AMT     NUMBER,
    LLSFGD         CHAR(4),
    LLSP           NUMBER,
    TYCDQXLX       CHAR(2),
    JZLLZL         CHAR(2),
    FXPL           CHAR(2),
    CDFSLX         CHAR(2),
    TYCDDFBJ_AMT   NUMBER,
    TYCDDFLX_AMT   NUMBER,
    CDFSJE_AMT     NUMBER,
    REMARKS        VARCHAR2(14),
    CHECK_FLAG     CHAR,
    CHECK_DESC     VARCHAR2(512),
    CHECK_ERR_TYPE CHAR,
    NEXT_ACTION    CHAR(2),
    DATA_STATUS    CHAR(2),
    DATA_FLAG      CHAR,
    DATA_SOURCE    CHAR,
    DATA_VERSION   NUMBER(8),
    DATA_REJ_DESC  VARCHAR2(128),
    DATA_DEL_DESC  VARCHAR2(128),
    DATA_CRT_USER  VARCHAR2(20),
    DATA_CRT_DATE  CHAR(8),
    DATA_CRT_TIME  CHAR(14),
    DATA_CHG_USER  VARCHAR2(20),
    DATA_CHG_DATE  CHAR(8),
    DATA_CHG_TIME  CHAR(14),
    DATA_APV_USER  VARCHAR2(20),
    DATA_APV_DATE  CHAR(8),
    DATA_APV_TIME  CHAR(14),
    RSV1           VARCHAR2(180),
    RSV2           VARCHAR2(180),
    RSV3           VARCHAR2(180),
    RSV4           VARCHAR2(180),
    RSV5           VARCHAR2(180)
)
/

comment on table CCRS_PM_TYCDFSE is '同业存单发生额报文'
/

comment on column CCRS_PM_TYCDFSE.DATA_ID is '数据ID'
/

comment on column CCRS_PM_TYCDFSE.DATA_DATE is '数据日期'
/

comment on column CCRS_PM_TYCDFSE.DATA_RPT_DATE is '报表日期'
/

comment on column CCRS_PM_TYCDFSE.CORP_ID is '法人机构号'
/

comment on column CCRS_PM_TYCDFSE.ORG_ID is '机构号'
/

comment on column CCRS_PM_TYCDFSE.GROUP_ID is '部门编号'
/

comment on column CCRS_PM_TYCDFSE.INQ_ORG_ID is '查询机构号'
/

comment on column CCRS_PM_TYCDFSE.INQ_GROUP_ID is '查询组号'
/

comment on column CCRS_PM_TYCDFSE.SJRQ_DATE is '数据日期'
/

comment on column CCRS_PM_TYCDFSE.JRJGBM is '金融机构编码'
/

comment on column CCRS_PM_TYCDFSE.JYDSMC is '交易对手名称'
/

comment on column CCRS_PM_TYCDFSE.CDXYDM is '存单协议代码'
/

comment on column CCRS_PM_TYCDFSE.CDMC is '存单名称'
/

comment on column CCRS_PM_TYCDFSE.CDXYQSRQ_DATE is '存单协议起始日期'
/

comment on column CCRS_PM_TYCDFSE.CDXYDQRQ_DATE is '存单协议到期日期'
/

comment on column CCRS_PM_TYCDFSE.CDSJDQRQ_DATE is '存单实际到期日期'
/

comment on column CCRS_PM_TYCDFSE.BZ is '币种'
/

comment on column CCRS_PM_TYCDFSE.CDFXGM_AMT is '存单发行规模'
/

comment on column CCRS_PM_TYCDFSE.LLSFGD is '利率是否固定'
/

comment on column CCRS_PM_TYCDFSE.LLSP is '利率水平'
/

comment on column CCRS_PM_TYCDFSE.TYCDQXLX is '同业存单期限类型'
/

comment on column CCRS_PM_TYCDFSE.JZLLZL is '基准利率种类'
/

comment on column CCRS_PM_TYCDFSE.FXPL is '付息频率'
/

comment on column CCRS_PM_TYCDFSE.CDFSLX is '存单发生类型'
/

comment on column CCRS_PM_TYCDFSE.TYCDDFBJ_AMT is '同业存单兑付本金'
/

comment on column CCRS_PM_TYCDFSE.TYCDDFLX_AMT is '同业存单兑付利息'
/

comment on column CCRS_PM_TYCDFSE.CDFSJE_AMT is '存单发生金额'
/

comment on column CCRS_PM_TYCDFSE.REMARKS is '备注'
/

comment on column CCRS_PM_TYCDFSE.CHECK_FLAG is '校验标识'
/

comment on column CCRS_PM_TYCDFSE.CHECK_DESC is '校验结果'
/

comment on column CCRS_PM_TYCDFSE.CHECK_ERR_TYPE is '校验失败类型'
/

comment on column CCRS_PM_TYCDFSE.NEXT_ACTION is '下一动作'
/

comment on column CCRS_PM_TYCDFSE.DATA_STATUS is '数据状态'
/

comment on column CCRS_PM_TYCDFSE.DATA_FLAG is '数据是否已删除'
/

comment on column CCRS_PM_TYCDFSE.DATA_SOURCE is '数据来源'
/

comment on column CCRS_PM_TYCDFSE.DATA_VERSION is '数据版本'
/

comment on column CCRS_PM_TYCDFSE.DATA_REJ_DESC is '数据审核拒绝原因'
/

comment on column CCRS_PM_TYCDFSE.DATA_DEL_DESC is '数据删除描述'
/

comment on column CCRS_PM_TYCDFSE.DATA_CRT_USER is '数据创建/导入用户'
/

comment on column CCRS_PM_TYCDFSE.DATA_CRT_DATE is '数据创建/导入日期'
/

comment on column CCRS_PM_TYCDFSE.DATA_CRT_TIME is '数据创建/导入时间'
/

comment on column CCRS_PM_TYCDFSE.DATA_CHG_USER is '数据修改/删除用户'
/

comment on column CCRS_PM_TYCDFSE.DATA_CHG_DATE is '数据修改/删除日期'
/

comment on column CCRS_PM_TYCDFSE.DATA_CHG_TIME is '数据修改/删除时间'
/

comment on column CCRS_PM_TYCDFSE.DATA_APV_USER is '数据审核/拒绝用户'
/

comment on column CCRS_PM_TYCDFSE.DATA_APV_DATE is '数据审核/拒绝日期'
/

comment on column CCRS_PM_TYCDFSE.DATA_APV_TIME is '数据审核/拒绝时间'
/

comment on column CCRS_PM_TYCDFSE.RSV1 is '备用1'
/

comment on column CCRS_PM_TYCDFSE.RSV2 is '备用2'
/

comment on column CCRS_PM_TYCDFSE.RSV3 is '备用3'
/

comment on column CCRS_PM_TYCDFSE.RSV4 is '备用4'
/

comment on column CCRS_PM_TYCDFSE.RSV5 is '备用5'
/

create unique index U_TYCDFSE
    on CCRS_PM_TYCDFSE (DATA_RPT_DATE, SJRQ_DATE, CDXYDM)
/

create table CCRS_PM_TYCDYE
(
    DATA_ID        VARCHAR2(64) not null
        primary key,
    DATA_DATE      CHAR(8),
    DATA_RPT_DATE  CHAR(8),
    CORP_ID        VARCHAR2(14),
    ORG_ID         VARCHAR2(14),
    GROUP_ID       VARCHAR2(14),
    INQ_ORG_ID     CHAR(24),
    INQ_GROUP_ID   CHAR(24),
    SJRQ_DATE      CHAR(8),
    JRJGBM         CHAR(14),
    JYDSMC         VARCHAR2(300),
    CDXYDM         VARCHAR2(150),
    CDMC           VARCHAR2(300),
    CDXYQSRQ_DATE  CHAR(8),
    CDXYDQRQ_DATE  CHAR(8),
    CDSJDQRQ_DATE  CHAR(8),
    BZ             CHAR(3),
    CDFXGM_AMT     NUMBER,
    LLSFGD         CHAR(4),
    LLSP           NUMBER,
    TYCDQXLX       CHAR(2),
    JZLLZL         CHAR(2),
    FXPL           CHAR(2),
    CDYE_AMT       NUMBER,
    REMARKS        VARCHAR2(14),
    CHECK_FLAG     CHAR,
    CHECK_DESC     VARCHAR2(3072),
    CHECK_ERR_TYPE CHAR,
    NEXT_ACTION    CHAR(2),
    DATA_STATUS    CHAR(2),
    DATA_FLAG      CHAR,
    DATA_SOURCE    CHAR,
    DATA_VERSION   NUMBER(8),
    DATA_REJ_DESC  VARCHAR2(128),
    DATA_DEL_DESC  VARCHAR2(128),
    DATA_CRT_USER  VARCHAR2(20),
    DATA_CRT_DATE  CHAR(8),
    DATA_CRT_TIME  CHAR(14),
    DATA_CHG_USER  VARCHAR2(20),
    DATA_CHG_DATE  CHAR(8),
    DATA_CHG_TIME  CHAR(14),
    DATA_APV_USER  VARCHAR2(20),
    DATA_APV_DATE  CHAR(8),
    DATA_APV_TIME  CHAR(14),
    RSV1           VARCHAR2(180),
    RSV2           VARCHAR2(180),
    RSV3           VARCHAR2(180),
    RSV4           VARCHAR2(180),
    RSV5           VARCHAR2(180)
)
/

comment on table CCRS_PM_TYCDYE is '同业存单余额报文'
/

comment on column CCRS_PM_TYCDYE.DATA_ID is '数据ID'
/

comment on column CCRS_PM_TYCDYE.DATA_DATE is '数据日期'
/

comment on column CCRS_PM_TYCDYE.DATA_RPT_DATE is '报表日期'
/

comment on column CCRS_PM_TYCDYE.CORP_ID is '法人机构号'
/

comment on column CCRS_PM_TYCDYE.ORG_ID is '机构号'
/

comment on column CCRS_PM_TYCDYE.GROUP_ID is '部门编号'
/

comment on column CCRS_PM_TYCDYE.INQ_ORG_ID is '查询机构号'
/

comment on column CCRS_PM_TYCDYE.INQ_GROUP_ID is '查询组号'
/

comment on column CCRS_PM_TYCDYE.SJRQ_DATE is '数据日期'
/

comment on column CCRS_PM_TYCDYE.JRJGBM is '金融机构编码'
/

comment on column CCRS_PM_TYCDYE.JYDSMC is '交易对手名称'
/

comment on column CCRS_PM_TYCDYE.CDXYDM is '存单协议代码'
/

comment on column CCRS_PM_TYCDYE.CDMC is '存单名称'
/

comment on column CCRS_PM_TYCDYE.CDXYQSRQ_DATE is '存单协议起始日期'
/

comment on column CCRS_PM_TYCDYE.CDXYDQRQ_DATE is '存单协议到期日期'
/

comment on column CCRS_PM_TYCDYE.CDSJDQRQ_DATE is '存单实际到期日期'
/

comment on column CCRS_PM_TYCDYE.BZ is '币种'
/

comment on column CCRS_PM_TYCDYE.CDFXGM_AMT is '存单发行规模'
/

comment on column CCRS_PM_TYCDYE.LLSFGD is '利率是否固定'
/

comment on column CCRS_PM_TYCDYE.LLSP is '利率水平'
/

comment on column CCRS_PM_TYCDYE.TYCDQXLX is '同业存单期限类型'
/

comment on column CCRS_PM_TYCDYE.JZLLZL is '基准利率种类'
/

comment on column CCRS_PM_TYCDYE.FXPL is '付息频率'
/

comment on column CCRS_PM_TYCDYE.CDYE_AMT is '存单余额'
/

comment on column CCRS_PM_TYCDYE.REMARKS is '备注'
/

comment on column CCRS_PM_TYCDYE.CHECK_FLAG is '校验标识'
/

comment on column CCRS_PM_TYCDYE.CHECK_DESC is '校验结果'
/

comment on column CCRS_PM_TYCDYE.CHECK_ERR_TYPE is '校验失败类型'
/

comment on column CCRS_PM_TYCDYE.NEXT_ACTION is '下一动作'
/

comment on column CCRS_PM_TYCDYE.DATA_STATUS is '数据状态'
/

comment on column CCRS_PM_TYCDYE.DATA_FLAG is '数据是否已删除'
/

comment on column CCRS_PM_TYCDYE.DATA_SOURCE is '数据来源'
/

comment on column CCRS_PM_TYCDYE.DATA_VERSION is '数据版本'
/

comment on column CCRS_PM_TYCDYE.DATA_REJ_DESC is '数据审核拒绝原因'
/

comment on column CCRS_PM_TYCDYE.DATA_DEL_DESC is '数据删除描述'
/

comment on column CCRS_PM_TYCDYE.DATA_CRT_USER is '数据创建/导入用户'
/

comment on column CCRS_PM_TYCDYE.DATA_CRT_DATE is '数据创建/导入日期'
/

comment on column CCRS_PM_TYCDYE.DATA_CRT_TIME is '数据创建/导入时间'
/

comment on column CCRS_PM_TYCDYE.DATA_CHG_USER is '数据修改/删除用户'
/

comment on column CCRS_PM_TYCDYE.DATA_CHG_DATE is '数据修改/删除日期'
/

comment on column CCRS_PM_TYCDYE.DATA_CHG_TIME is '数据修改/删除时间'
/

comment on column CCRS_PM_TYCDYE.DATA_APV_USER is '数据审核/拒绝用户'
/

comment on column CCRS_PM_TYCDYE.DATA_APV_DATE is '数据审核/拒绝日期'
/

comment on column CCRS_PM_TYCDYE.DATA_APV_TIME is '数据审核/拒绝时间'
/

comment on column CCRS_PM_TYCDYE.RSV1 is '备用1'
/

comment on column CCRS_PM_TYCDYE.RSV2 is '备用2'
/

comment on column CCRS_PM_TYCDYE.RSV3 is '备用3'
/

comment on column CCRS_PM_TYCDYE.RSV4 is '备用4'
/

comment on column CCRS_PM_TYCDYE.RSV5 is '备用5'
/

create unique index U_TYCDYE
    on CCRS_PM_TYCDYE (DATA_RPT_DATE, SJRQ_DATE, CDXYDM)
/

create table CCRS_PM_WTDKFSE
(
    DATA_ID        VARCHAR2(64) not null
        primary key,
    DATA_DATE      CHAR(8),
    DATA_RPT_DATE  CHAR(8),
    CORP_ID        VARCHAR2(14),
    ORG_ID         VARCHAR2(14),
    GROUP_ID       VARCHAR2(14),
    INQ_ORG_ID     CHAR(24),
    INQ_GROUP_ID   CHAR(24),
    SJRQ_DATE      CHAR(8),
    JRJGBM         CHAR(14),
    XDHTBH         VARCHAR2(300),
    KHLX           CHAR,
    KHZJLX         CHAR(2),
    JKRDM          VARCHAR2(50),
    DKZTHYLB       CHAR,
    WJKRZCDBM      CHAR(12),
    WTRZJLX        CHAR(2),
    WTRDM          VARCHAR2(50),
    QYCZRJJCF      VARCHAR2(5),
    QYGM           CHAR(4),
    DKJJBM         VARCHAR2(105),
    CPXX           VARCHAR2(10),
    DKSJTX         CHAR(4),
    DKYT           VARCHAR2(1500),
    DKFFRQ_DATE    CHAR(8),
    FFFS           CHAR(2),
    WTDKSXFJE_AMT  NUMBER,
    DKDQRQ_DATE    CHAR(8),
    DKSJZZRQ_DATE  CHAR(8),
    BZ             CHAR(3),
    DKFSJE_AMT     NUMBER,
    LLSFGD         CHAR(4),
    LLSP           NUMBER,
    DKDBFS         VARCHAR2(3),
    DKZS           CHAR(4),
    FFSHBS         CHAR,
    SXBS           CHAR(2),
    RMYHDKZXJCBS   CHAR(50),
    REMARKS        VARCHAR2(14),
    CHECK_FLAG     CHAR,
    CHECK_DESC     VARCHAR2(512),
    CHECK_ERR_TYPE CHAR,
    NEXT_ACTION    CHAR(2),
    DATA_STATUS    CHAR(2),
    DATA_FLAG      CHAR,
    DATA_SOURCE    CHAR,
    DATA_VERSION   NUMBER(8),
    DATA_REJ_DESC  VARCHAR2(128),
    DATA_DEL_DESC  VARCHAR2(128),
    DATA_CRT_USER  VARCHAR2(20),
    DATA_CRT_DATE  CHAR(8),
    DATA_CRT_TIME  CHAR(14),
    DATA_CHG_USER  VARCHAR2(20),
    DATA_CHG_DATE  CHAR(8),
    DATA_CHG_TIME  CHAR(14),
    DATA_APV_USER  VARCHAR2(20),
    DATA_APV_DATE  CHAR(8),
    DATA_APV_TIME  CHAR(14),
    RSV1           VARCHAR2(180),
    RSV2           VARCHAR2(180),
    RSV3           VARCHAR2(180),
    RSV4           VARCHAR2(180),
    RSV5           VARCHAR2(180)
)
/

comment on table CCRS_PM_WTDKFSE is '委托贷款发生额报文'
/

comment on column CCRS_PM_WTDKFSE.DATA_ID is '数据ID'
/

comment on column CCRS_PM_WTDKFSE.DATA_DATE is '数据日期'
/

comment on column CCRS_PM_WTDKFSE.DATA_RPT_DATE is '报表日期'
/

comment on column CCRS_PM_WTDKFSE.CORP_ID is '法人机构号'
/

comment on column CCRS_PM_WTDKFSE.ORG_ID is '机构号'
/

comment on column CCRS_PM_WTDKFSE.GROUP_ID is '部门编号'
/

comment on column CCRS_PM_WTDKFSE.INQ_ORG_ID is '查询机构号'
/

comment on column CCRS_PM_WTDKFSE.INQ_GROUP_ID is '查询组号'
/

comment on column CCRS_PM_WTDKFSE.SJRQ_DATE is '数据日期'
/

comment on column CCRS_PM_WTDKFSE.JRJGBM is '金融机构编码'
/

comment on column CCRS_PM_WTDKFSE.XDHTBH is '信贷合同编号'
/

comment on column CCRS_PM_WTDKFSE.KHLX is '客户类型'
/

comment on column CCRS_PM_WTDKFSE.KHZJLX is '客户证件类型'
/

comment on column CCRS_PM_WTDKFSE.JKRDM is '借款人代码'
/

comment on column CCRS_PM_WTDKFSE.DKZTHYLB is '贷款主体行业类别'
/

comment on column CCRS_PM_WTDKFSE.WJKRZCDBM is '12位借款人注册地编码'
/

comment on column CCRS_PM_WTDKFSE.WTRZJLX is '委托人证件类型'
/

comment on column CCRS_PM_WTDKFSE.WTRDM is '委托人代码'
/

comment on column CCRS_PM_WTDKFSE.QYCZRJJCF is '企业出资人经济成分'
/

comment on column CCRS_PM_WTDKFSE.QYGM is '企业规模'
/

comment on column CCRS_PM_WTDKFSE.DKJJBM is '贷款借据编码'
/

comment on column CCRS_PM_WTDKFSE.CPXX is '产品细项'
/

comment on column CCRS_PM_WTDKFSE.DKSJTX is '贷款实际投向'
/

comment on column CCRS_PM_WTDKFSE.DKYT is '贷款用途'
/

comment on column CCRS_PM_WTDKFSE.DKFFRQ_DATE is '贷款发放日期'
/

comment on column CCRS_PM_WTDKFSE.FFFS is '发放方式'
/

comment on column CCRS_PM_WTDKFSE.WTDKSXFJE_AMT is '委托贷款手续费金额'
/

comment on column CCRS_PM_WTDKFSE.DKDQRQ_DATE is '贷款到期日期'
/

comment on column CCRS_PM_WTDKFSE.DKSJZZRQ_DATE is '贷款实际终止日期'
/

comment on column CCRS_PM_WTDKFSE.BZ is '币种'
/

comment on column CCRS_PM_WTDKFSE.DKFSJE_AMT is '贷款发生金额'
/

comment on column CCRS_PM_WTDKFSE.LLSFGD is '利率是否固定'
/

comment on column CCRS_PM_WTDKFSE.LLSP is '利率水平'
/

comment on column CCRS_PM_WTDKFSE.DKDBFS is '贷款担保方式'
/

comment on column CCRS_PM_WTDKFSE.DKZS is '贷款状态'
/

comment on column CCRS_PM_WTDKFSE.FFSHBS is '发放/收回标识'
/

comment on column CCRS_PM_WTDKFSE.SXBS is '属性标识'
/

comment on column CCRS_PM_WTDKFSE.RMYHDKZXJCBS is '人民银行贷款专项监测标识'
/

comment on column CCRS_PM_WTDKFSE.REMARKS is '备注'
/

comment on column CCRS_PM_WTDKFSE.CHECK_FLAG is '校验标识'
/

comment on column CCRS_PM_WTDKFSE.CHECK_DESC is '校验结果'
/

comment on column CCRS_PM_WTDKFSE.CHECK_ERR_TYPE is '校验失败类型'
/

comment on column CCRS_PM_WTDKFSE.NEXT_ACTION is '下一动作'
/

comment on column CCRS_PM_WTDKFSE.DATA_STATUS is '数据状态'
/

comment on column CCRS_PM_WTDKFSE.DATA_FLAG is '数据是否已删除'
/

comment on column CCRS_PM_WTDKFSE.DATA_SOURCE is '数据来源'
/

comment on column CCRS_PM_WTDKFSE.DATA_VERSION is '数据版本'
/

comment on column CCRS_PM_WTDKFSE.DATA_REJ_DESC is '数据审核拒绝原因'
/

comment on column CCRS_PM_WTDKFSE.DATA_DEL_DESC is '数据删除描述'
/

comment on column CCRS_PM_WTDKFSE.DATA_CRT_USER is '数据创建/导入用户'
/

comment on column CCRS_PM_WTDKFSE.DATA_CRT_DATE is '数据创建/导入日期'
/

comment on column CCRS_PM_WTDKFSE.DATA_CRT_TIME is '数据创建/导入时间'
/

comment on column CCRS_PM_WTDKFSE.DATA_CHG_USER is '数据修改/删除用户'
/

comment on column CCRS_PM_WTDKFSE.DATA_CHG_DATE is '数据修改/删除日期'
/

comment on column CCRS_PM_WTDKFSE.DATA_CHG_TIME is '数据修改/删除时间'
/

comment on column CCRS_PM_WTDKFSE.DATA_APV_USER is '数据审核/拒绝用户'
/

comment on column CCRS_PM_WTDKFSE.DATA_APV_DATE is '数据审核/拒绝日期'
/

comment on column CCRS_PM_WTDKFSE.DATA_APV_TIME is '数据审核/拒绝时间'
/

comment on column CCRS_PM_WTDKFSE.RSV1 is '备用1'
/

comment on column CCRS_PM_WTDKFSE.RSV2 is '备用2'
/

comment on column CCRS_PM_WTDKFSE.RSV3 is '备用3'
/

comment on column CCRS_PM_WTDKFSE.RSV4 is '备用4'
/

comment on column CCRS_PM_WTDKFSE.RSV5 is '备用5'
/

create unique index U_WTDKFSE
    on CCRS_PM_WTDKFSE (DATA_RPT_DATE, SJRQ_DATE, XDHTBH)
/

create table CCRS_PM_WTDKYE
(
    DATA_ID        VARCHAR2(64) not null
        primary key,
    DATA_DATE      CHAR(8),
    DATA_RPT_DATE  CHAR(8),
    CORP_ID        VARCHAR2(14),
    ORG_ID         VARCHAR2(14),
    GROUP_ID       VARCHAR2(14),
    INQ_ORG_ID     CHAR(24),
    INQ_GROUP_ID   CHAR(24),
    SJRQ_DATE      CHAR(8),
    JRJGBM         CHAR(14),
    XDHTBH         VARCHAR2(300),
    KHLX           CHAR,
    KHZJLX         CHAR(2),
    JKRDM          VARCHAR2(50),
    WTRZJLX        CHAR(2),
    WTRDM          VARCHAR2(50),
    DKZTHYLB       CHAR,
    WJKRZCDBM      CHAR(12),
    QYCZRJJCF      VARCHAR2(5),
    QYGM           CHAR(4),
    DKJJBM         VARCHAR2(105),
    CPXX           VARCHAR2(10),
    DKSJTX         CHAR(4),
    DKYT           VARCHAR2(1500),
    DKFFRQ_DATE    CHAR(8),
    FFFS           CHAR(2),
    WTDKSXFJE_AMT  NUMBER,
    DKDQRQ_DATE    CHAR(8),
    ZQDQRQ_DATE    CHAR(8),
    BZ             CHAR(3),
    DKYE_AMT       NUMBER,
    LLSFGD         CHAR(4),
    LLSP           NUMBER,
    DKDBFS         VARCHAR2(3),
    DKZL           CHAR(4),
    DKZS           CHAR(4),
    WTDKJJZE_AMT   NUMBER,
    SXBS           CHAR(2),
    RMYHDKZXJCBS   CHAR(50),
    REMARKS        VARCHAR2(14),
    CHECK_FLAG     CHAR,
    CHECK_DESC     VARCHAR2(512),
    CHECK_ERR_TYPE CHAR,
    NEXT_ACTION    CHAR(2),
    DATA_STATUS    CHAR(2),
    DATA_FLAG      CHAR,
    DATA_SOURCE    CHAR,
    DATA_VERSION   NUMBER(8),
    DATA_REJ_DESC  VARCHAR2(128),
    DATA_DEL_DESC  VARCHAR2(128),
    DATA_CRT_USER  VARCHAR2(20),
    DATA_CRT_DATE  CHAR(8),
    DATA_CRT_TIME  CHAR(14),
    DATA_CHG_USER  VARCHAR2(20),
    DATA_CHG_DATE  CHAR(8),
    DATA_CHG_TIME  CHAR(14),
    DATA_APV_USER  VARCHAR2(20),
    DATA_APV_DATE  CHAR(8),
    DATA_APV_TIME  CHAR(14),
    RSV1           VARCHAR2(180),
    RSV2           VARCHAR2(180),
    RSV3           VARCHAR2(180),
    RSV4           VARCHAR2(180),
    RSV5           VARCHAR2(180)
)
/

comment on table CCRS_PM_WTDKYE is '委托贷款余额报文'
/

comment on column CCRS_PM_WTDKYE.DATA_ID is '数据ID'
/

comment on column CCRS_PM_WTDKYE.DATA_DATE is '数据日期'
/

comment on column CCRS_PM_WTDKYE.DATA_RPT_DATE is '报表日期'
/

comment on column CCRS_PM_WTDKYE.CORP_ID is '法人机构号'
/

comment on column CCRS_PM_WTDKYE.ORG_ID is '机构号'
/

comment on column CCRS_PM_WTDKYE.GROUP_ID is '部门编号'
/

comment on column CCRS_PM_WTDKYE.INQ_ORG_ID is '查询机构号'
/

comment on column CCRS_PM_WTDKYE.INQ_GROUP_ID is '查询组号'
/

comment on column CCRS_PM_WTDKYE.SJRQ_DATE is '数据日期'
/

comment on column CCRS_PM_WTDKYE.JRJGBM is '金融机构编码'
/

comment on column CCRS_PM_WTDKYE.XDHTBH is '信贷合同编号'
/

comment on column CCRS_PM_WTDKYE.KHLX is '客户类型'
/

comment on column CCRS_PM_WTDKYE.KHZJLX is '客户证件类型'
/

comment on column CCRS_PM_WTDKYE.JKRDM is '借款人代码'
/

comment on column CCRS_PM_WTDKYE.WTRZJLX is '委托人证件类型'
/

comment on column CCRS_PM_WTDKYE.WTRDM is '委托人代码'
/

comment on column CCRS_PM_WTDKYE.DKZTHYLB is '贷款主体行业类别'
/

comment on column CCRS_PM_WTDKYE.WJKRZCDBM is '12位借款人注册地编码'
/

comment on column CCRS_PM_WTDKYE.QYCZRJJCF is '企业出资人经济成分'
/

comment on column CCRS_PM_WTDKYE.QYGM is '企业规模'
/

comment on column CCRS_PM_WTDKYE.DKJJBM is '贷款借据编码'
/

comment on column CCRS_PM_WTDKYE.CPXX is '产品细项'
/

comment on column CCRS_PM_WTDKYE.DKSJTX is '贷款实际投向'
/

comment on column CCRS_PM_WTDKYE.DKYT is '贷款用途'
/

comment on column CCRS_PM_WTDKYE.DKFFRQ_DATE is '贷款发放日期'
/

comment on column CCRS_PM_WTDKYE.FFFS is '发放方式'
/

comment on column CCRS_PM_WTDKYE.WTDKSXFJE_AMT is '委托贷款手续费金额'
/

comment on column CCRS_PM_WTDKYE.DKDQRQ_DATE is '贷款到期日期'
/

comment on column CCRS_PM_WTDKYE.ZQDQRQ_DATE is '展期到期日期'
/

comment on column CCRS_PM_WTDKYE.BZ is '币种'
/

comment on column CCRS_PM_WTDKYE.DKYE_AMT is '贷款余额'
/

comment on column CCRS_PM_WTDKYE.LLSFGD is '利率是否固定'
/

comment on column CCRS_PM_WTDKYE.LLSP is '利率水平'
/

comment on column CCRS_PM_WTDKYE.DKDBFS is '贷款担保方式'
/

comment on column CCRS_PM_WTDKYE.DKZL is '贷款质量'
/

comment on column CCRS_PM_WTDKYE.DKZS is '贷款状态'
/

comment on column CCRS_PM_WTDKYE.WTDKJJZE_AMT is '委托贷款基金总额'
/

comment on column CCRS_PM_WTDKYE.SXBS is '属性标识'
/

comment on column CCRS_PM_WTDKYE.RMYHDKZXJCBS is '人民银行贷款专项监测标识'
/

comment on column CCRS_PM_WTDKYE.REMARKS is '备注'
/

comment on column CCRS_PM_WTDKYE.CHECK_FLAG is '校验标识'
/

comment on column CCRS_PM_WTDKYE.CHECK_DESC is '校验结果'
/

comment on column CCRS_PM_WTDKYE.CHECK_ERR_TYPE is '校验失败类型'
/

comment on column CCRS_PM_WTDKYE.NEXT_ACTION is '下一动作'
/

comment on column CCRS_PM_WTDKYE.DATA_STATUS is '数据状态'
/

comment on column CCRS_PM_WTDKYE.DATA_FLAG is '数据是否已删除'
/

comment on column CCRS_PM_WTDKYE.DATA_SOURCE is '数据来源'
/

comment on column CCRS_PM_WTDKYE.DATA_VERSION is '数据版本'
/

comment on column CCRS_PM_WTDKYE.DATA_REJ_DESC is '数据审核拒绝原因'
/

comment on column CCRS_PM_WTDKYE.DATA_DEL_DESC is '数据删除描述'
/

comment on column CCRS_PM_WTDKYE.DATA_CRT_USER is '数据创建/导入用户'
/

comment on column CCRS_PM_WTDKYE.DATA_CRT_DATE is '数据创建/导入日期'
/

comment on column CCRS_PM_WTDKYE.DATA_CRT_TIME is '数据创建/导入时间'
/

comment on column CCRS_PM_WTDKYE.DATA_CHG_USER is '数据修改/删除用户'
/

comment on column CCRS_PM_WTDKYE.DATA_CHG_DATE is '数据修改/删除日期'
/

comment on column CCRS_PM_WTDKYE.DATA_CHG_TIME is '数据修改/删除时间'
/

comment on column CCRS_PM_WTDKYE.DATA_APV_USER is '数据审核/拒绝用户'
/

comment on column CCRS_PM_WTDKYE.DATA_APV_DATE is '数据审核/拒绝日期'
/

comment on column CCRS_PM_WTDKYE.DATA_APV_TIME is '数据审核/拒绝时间'
/

comment on column CCRS_PM_WTDKYE.RSV1 is '备用1'
/

comment on column CCRS_PM_WTDKYE.RSV2 is '备用2'
/

comment on column CCRS_PM_WTDKYE.RSV3 is '备用3'
/

comment on column CCRS_PM_WTDKYE.RSV4 is '备用4'
/

comment on column CCRS_PM_WTDKYE.RSV5 is '备用5'
/

create unique index U_WTDKYE
    on CCRS_PM_WTDKYE (DATA_RPT_DATE, SJRQ_DATE, XDHTBH)
/

create table CCRS_PM_XDHT
(
    DATA_ID          VARCHAR2(64) not null
        primary key,
    DATA_DATE        CHAR(8),
    DATA_RPT_DATE    CHAR(8),
    CORP_ID          VARCHAR2(14),
    ORG_ID           VARCHAR2(14),
    GROUP_ID         VARCHAR2(14),
    INQ_ORG_ID       CHAR(24),
    INQ_GROUP_ID     CHAR(24),
    SJRQ_DATE        CHAR(8),
    JRJGBM           CHAR(14),
    XDHTBH           VARCHAR2(300),
    KHBH             VARCHAR2(300),
    KHMC             VARCHAR2(300),
    KHLX             CHAR,
    KHZJLX           CHAR(2),
    KHZJHM           VARCHAR2(50),
    SXHTBH           VARCHAR2(300),
    CPXX             VARCHAR2(10),
    BZ               CHAR(3),
    DKHTJE_AMT       NUMBER,
    DKSJTX           CHAR(4),
    DKYT             VARCHAR2(1500),
    HTQSRQ_DATE      CHAR(8),
    HTDQRQ_DATE      CHAR(8),
    HKFS             CHAR(2),
    GRZFAJDKLX       CHAR(2),
    GRZFAJDKGFZJ_AMT NUMBER,
    SFZFDBJJDB       CHAR,
    RMYHDKZXJCBS     CHAR(50),
    REMARKS          VARCHAR2(14),
    CHECK_FLAG       CHAR,
    CHECK_DESC       VARCHAR2(512),
    CHECK_ERR_TYPE   CHAR,
    NEXT_ACTION      CHAR(2),
    DATA_STATUS      CHAR(2),
    DATA_FLAG        CHAR,
    DATA_SOURCE      CHAR,
    DATA_VERSION     NUMBER(8),
    DATA_REJ_DESC    VARCHAR2(128),
    DATA_DEL_DESC    VARCHAR2(128),
    DATA_CRT_USER    VARCHAR2(20),
    DATA_CRT_DATE    CHAR(8),
    DATA_CRT_TIME    CHAR(14),
    DATA_CHG_USER    VARCHAR2(20),
    DATA_CHG_DATE    CHAR(8),
    DATA_CHG_TIME    CHAR(14),
    DATA_APV_USER    VARCHAR2(20),
    DATA_APV_DATE    CHAR(8),
    DATA_APV_TIME    CHAR(14),
    RSV1             VARCHAR2(180),
    RSV2             VARCHAR2(180),
    RSV3             VARCHAR2(180),
    RSV4             VARCHAR2(180),
    RSV5             VARCHAR2(180)
)
/

comment on table CCRS_PM_XDHT is '信贷合同报文'
/

comment on column CCRS_PM_XDHT.DATA_ID is '数据ID'
/

comment on column CCRS_PM_XDHT.DATA_DATE is '数据日期'
/

comment on column CCRS_PM_XDHT.DATA_RPT_DATE is '报表日期'
/

comment on column CCRS_PM_XDHT.CORP_ID is '法人机构号'
/

comment on column CCRS_PM_XDHT.ORG_ID is '机构号'
/

comment on column CCRS_PM_XDHT.GROUP_ID is '部门编号'
/

comment on column CCRS_PM_XDHT.INQ_ORG_ID is '查询机构号'
/

comment on column CCRS_PM_XDHT.INQ_GROUP_ID is '查询组号'
/

comment on column CCRS_PM_XDHT.SJRQ_DATE is '数据日期'
/

comment on column CCRS_PM_XDHT.JRJGBM is '金融机构编码'
/

comment on column CCRS_PM_XDHT.XDHTBH is '信贷合同编号'
/

comment on column CCRS_PM_XDHT.KHBH is '客户编号'
/

comment on column CCRS_PM_XDHT.KHMC is '客户名称'
/

comment on column CCRS_PM_XDHT.KHLX is '客户类型'
/

comment on column CCRS_PM_XDHT.KHZJLX is '客户证件类型'
/

comment on column CCRS_PM_XDHT.KHZJHM is '客户证件号码'
/

comment on column CCRS_PM_XDHT.SXHTBH is '授信合同编号'
/

comment on column CCRS_PM_XDHT.CPXX is '产品细项'
/

comment on column CCRS_PM_XDHT.BZ is '币种'
/

comment on column CCRS_PM_XDHT.DKHTJE_AMT is '贷款合同金额'
/

comment on column CCRS_PM_XDHT.DKSJTX is '贷款实际投向'
/

comment on column CCRS_PM_XDHT.DKYT is '贷款用途'
/

comment on column CCRS_PM_XDHT.HTQSRQ_DATE is '合同起始日期'
/

comment on column CCRS_PM_XDHT.HTDQRQ_DATE is '合同到期日期'
/

comment on column CCRS_PM_XDHT.HKFS is '还款方式'
/

comment on column CCRS_PM_XDHT.GRZFAJDKLX is '个人住房按揭贷款类型'
/

comment on column CCRS_PM_XDHT.GRZFAJDKGFZJ_AMT is '个人住房按揭贷款购房总价'
/

comment on column CCRS_PM_XDHT.SFZFDBJJDB is '是否政府担保基金担保'
/

comment on column CCRS_PM_XDHT.RMYHDKZXJCBS is '人民银行贷款专项监测标识'
/

comment on column CCRS_PM_XDHT.REMARKS is '备注'
/

comment on column CCRS_PM_XDHT.CHECK_FLAG is '校验标识'
/

comment on column CCRS_PM_XDHT.CHECK_DESC is '校验结果'
/

comment on column CCRS_PM_XDHT.CHECK_ERR_TYPE is '校验失败类型'
/

comment on column CCRS_PM_XDHT.NEXT_ACTION is '下一动作'
/

comment on column CCRS_PM_XDHT.DATA_STATUS is '数据状态'
/

comment on column CCRS_PM_XDHT.DATA_FLAG is '数据是否已删除'
/

comment on column CCRS_PM_XDHT.DATA_SOURCE is '数据来源'
/

comment on column CCRS_PM_XDHT.DATA_VERSION is '数据版本'
/

comment on column CCRS_PM_XDHT.DATA_REJ_DESC is '数据审核拒绝原因'
/

comment on column CCRS_PM_XDHT.DATA_DEL_DESC is '数据删除描述'
/

comment on column CCRS_PM_XDHT.DATA_CRT_USER is '数据创建/导入用户'
/

comment on column CCRS_PM_XDHT.DATA_CRT_DATE is '数据创建/导入日期'
/

comment on column CCRS_PM_XDHT.DATA_CRT_TIME is '数据创建/导入时间'
/

comment on column CCRS_PM_XDHT.DATA_CHG_USER is '数据修改/删除用户'
/

comment on column CCRS_PM_XDHT.DATA_CHG_DATE is '数据修改/删除日期'
/

comment on column CCRS_PM_XDHT.DATA_CHG_TIME is '数据修改/删除时间'
/

comment on column CCRS_PM_XDHT.DATA_APV_USER is '数据审核/拒绝用户'
/

comment on column CCRS_PM_XDHT.DATA_APV_DATE is '数据审核/拒绝日期'
/

comment on column CCRS_PM_XDHT.DATA_APV_TIME is '数据审核/拒绝时间'
/

comment on column CCRS_PM_XDHT.RSV1 is '备用1'
/

comment on column CCRS_PM_XDHT.RSV2 is '备用2'
/

comment on column CCRS_PM_XDHT.RSV3 is '备用3'
/

comment on column CCRS_PM_XDHT.RSV4 is '备用4'
/

comment on column CCRS_PM_XDHT.RSV5 is '备用5'
/

create unique index U_XDHT
    on CCRS_PM_XDHT (DATA_RPT_DATE, SJRQ_DATE, XDHTBH)
/

create table CCRS_PM_XYZKL
(
    DATA_ID        VARCHAR2(64) not null
        primary key,
    DATA_DATE      CHAR(8),
    DATA_RPT_DATE  CHAR(8),
    CORP_ID        VARCHAR2(14),
    ORG_ID         VARCHAR2(14),
    GROUP_ID       VARCHAR2(14),
    INQ_ORG_ID     CHAR(24),
    INQ_GROUP_ID   CHAR(24),
    SJRQ_DATE      CHAR(8),
    JRJGBM         CHAR(14),
    XYZBM          VARCHAR2(50),
    SXHTBH         VARCHAR2(300),
    KZSQRMC        VARCHAR2(300),
    KZSQRZJLX      CHAR(2),
    KZSQRDM        VARCHAR2(50),
    KZSQRJJCF      VARCHAR2(5),
    BZ             CHAR(3),
    XYZJE_AMT      NUMBER,
    XYZKZRQ_DATE   CHAR(8),
    XYZDQRQ_DATE   CHAR(8),
    XYZSKRMC       VARCHAR2(300),
    XYZBZJBZ       CHAR(3),
    XYZBZJJE_AMT   NUMBER,
    REMARKS        VARCHAR2(14),
    CHECK_FLAG     CHAR,
    CHECK_DESC     VARCHAR2(512),
    CHECK_ERR_TYPE CHAR,
    NEXT_ACTION    CHAR(2),
    DATA_STATUS    CHAR(2),
    DATA_FLAG      CHAR,
    DATA_SOURCE    CHAR,
    DATA_VERSION   NUMBER(8),
    DATA_REJ_DESC  VARCHAR2(128),
    DATA_DEL_DESC  VARCHAR2(128),
    DATA_CRT_USER  VARCHAR2(20),
    DATA_CRT_DATE  CHAR(8),
    DATA_CRT_TIME  CHAR(14),
    DATA_CHG_USER  VARCHAR2(20),
    DATA_CHG_DATE  CHAR(8),
    DATA_CHG_TIME  CHAR(14),
    DATA_APV_USER  VARCHAR2(20),
    DATA_APV_DATE  CHAR(8),
    DATA_APV_TIME  CHAR(14),
    RSV1           VARCHAR2(180),
    RSV2           VARCHAR2(180),
    RSV3           VARCHAR2(180),
    RSV4           VARCHAR2(180),
    RSV5           VARCHAR2(180)
)
/

comment on table CCRS_PM_XYZKL is '信用证开立报文'
/

comment on column CCRS_PM_XYZKL.DATA_ID is '数据ID'
/

comment on column CCRS_PM_XYZKL.DATA_DATE is '数据日期'
/

comment on column CCRS_PM_XYZKL.DATA_RPT_DATE is '报表日期'
/

comment on column CCRS_PM_XYZKL.CORP_ID is '法人机构号'
/

comment on column CCRS_PM_XYZKL.ORG_ID is '机构号'
/

comment on column CCRS_PM_XYZKL.GROUP_ID is '部门编号'
/

comment on column CCRS_PM_XYZKL.INQ_ORG_ID is '查询机构号'
/

comment on column CCRS_PM_XYZKL.INQ_GROUP_ID is '查询组号'
/

comment on column CCRS_PM_XYZKL.SJRQ_DATE is '数据日期'
/

comment on column CCRS_PM_XYZKL.JRJGBM is '金融机构编码'
/

comment on column CCRS_PM_XYZKL.XYZBM is '信用证编码'
/

comment on column CCRS_PM_XYZKL.SXHTBH is '授信合同编号'
/

comment on column CCRS_PM_XYZKL.KZSQRMC is '开证申请人名称'
/

comment on column CCRS_PM_XYZKL.KZSQRZJLX is '开证申请人证件类型'
/

comment on column CCRS_PM_XYZKL.KZSQRDM is '开证申请人代码'
/

comment on column CCRS_PM_XYZKL.KZSQRJJCF is '开证申请人经济成分'
/

comment on column CCRS_PM_XYZKL.BZ is '币种'
/

comment on column CCRS_PM_XYZKL.XYZJE_AMT is '信用证金额'
/

comment on column CCRS_PM_XYZKL.XYZKZRQ_DATE is '信用证开证日期'
/

comment on column CCRS_PM_XYZKL.XYZDQRQ_DATE is '信用证到期日期'
/

comment on column CCRS_PM_XYZKL.XYZSKRMC is '信用证收款人名称'
/

comment on column CCRS_PM_XYZKL.XYZBZJBZ is '信用证保证金币种'
/

comment on column CCRS_PM_XYZKL.XYZBZJJE_AMT is '信用证保证金金额'
/

comment on column CCRS_PM_XYZKL.REMARKS is '备注'
/

comment on column CCRS_PM_XYZKL.CHECK_FLAG is '校验标识'
/

comment on column CCRS_PM_XYZKL.CHECK_DESC is '校验结果'
/

comment on column CCRS_PM_XYZKL.CHECK_ERR_TYPE is '校验失败类型'
/

comment on column CCRS_PM_XYZKL.NEXT_ACTION is '下一动作'
/

comment on column CCRS_PM_XYZKL.DATA_STATUS is '数据状态'
/

comment on column CCRS_PM_XYZKL.DATA_FLAG is '数据是否已删除'
/

comment on column CCRS_PM_XYZKL.DATA_SOURCE is '数据来源'
/

comment on column CCRS_PM_XYZKL.DATA_VERSION is '数据版本'
/

comment on column CCRS_PM_XYZKL.DATA_REJ_DESC is '数据审核拒绝原因'
/

comment on column CCRS_PM_XYZKL.DATA_DEL_DESC is '数据删除描述'
/

comment on column CCRS_PM_XYZKL.DATA_CRT_USER is '数据创建/导入用户'
/

comment on column CCRS_PM_XYZKL.DATA_CRT_DATE is '数据创建/导入日期'
/

comment on column CCRS_PM_XYZKL.DATA_CRT_TIME is '数据创建/导入时间'
/

comment on column CCRS_PM_XYZKL.DATA_CHG_USER is '数据修改/删除用户'
/

comment on column CCRS_PM_XYZKL.DATA_CHG_DATE is '数据修改/删除日期'
/

comment on column CCRS_PM_XYZKL.DATA_CHG_TIME is '数据修改/删除时间'
/

comment on column CCRS_PM_XYZKL.DATA_APV_USER is '数据审核/拒绝用户'
/

comment on column CCRS_PM_XYZKL.DATA_APV_DATE is '数据审核/拒绝日期'
/

comment on column CCRS_PM_XYZKL.DATA_APV_TIME is '数据审核/拒绝时间'
/

comment on column CCRS_PM_XYZKL.RSV1 is '备用1'
/

comment on column CCRS_PM_XYZKL.RSV2 is '备用2'
/

comment on column CCRS_PM_XYZKL.RSV3 is '备用3'
/

comment on column CCRS_PM_XYZKL.RSV4 is '备用4'
/

comment on column CCRS_PM_XYZKL.RSV5 is '备用5'
/

create unique index U_XYZKL
    on CCRS_PM_XYZKL (DATA_RPT_DATE, SJRQ_DATE, XYZBM)
/

create table CCRS_PM_YHCDHPKL
(
    DATA_ID        VARCHAR2(64) not null
        primary key,
    DATA_DATE      CHAR(8),
    DATA_RPT_DATE  CHAR(8),
    CORP_ID        VARCHAR2(14),
    ORG_ID         VARCHAR2(14),
    GROUP_ID       VARCHAR2(14),
    INQ_ORG_ID     CHAR(24),
    INQ_GROUP_ID   CHAR(24),
    SJRQ_DATE      CHAR(8),
    JRJGBM         CHAR(14),
    YHCDHPBM       VARCHAR2(30),
    SXHTBH         VARCHAR2(300),
    KPQYMC         VARCHAR2(300),
    KPQYZJLX       CHAR(2),
    KPQYDM         VARCHAR2(50),
    KPQYJJCF       VARCHAR2(5),
    BZ             CHAR(3),
    PMJE_AMT       NUMBER,
    CPRQ_DATE      CHAR(8),
    PJDQRQ_DATE    CHAR(8),
    PJSKRMC        VARCHAR2(300),
    PJDBBZ         CHAR(3),
    PJDBJE_AMT     NUMBER,
    PJDBLX         CHAR(2),
    REMARKS        VARCHAR2(14),
    CHECK_FLAG     CHAR,
    CHECK_DESC     VARCHAR2(512),
    CHECK_ERR_TYPE CHAR,
    NEXT_ACTION    CHAR(2),
    DATA_STATUS    CHAR(2),
    DATA_FLAG      CHAR,
    DATA_SOURCE    CHAR,
    DATA_VERSION   NUMBER(8),
    DATA_REJ_DESC  VARCHAR2(128),
    DATA_DEL_DESC  VARCHAR2(128),
    DATA_CRT_USER  VARCHAR2(20),
    DATA_CRT_DATE  CHAR(8),
    DATA_CRT_TIME  CHAR(14),
    DATA_CHG_USER  VARCHAR2(20),
    DATA_CHG_DATE  CHAR(8),
    DATA_CHG_TIME  CHAR(14),
    DATA_APV_USER  VARCHAR2(20),
    DATA_APV_DATE  CHAR(8),
    DATA_APV_TIME  CHAR(14),
    RSV1           VARCHAR2(180),
    RSV2           VARCHAR2(180),
    RSV3           VARCHAR2(180),
    RSV4           VARCHAR2(180),
    RSV5           VARCHAR2(180)
)
/

comment on table CCRS_PM_YHCDHPKL is '银行承兑汇票开立报文'
/

comment on column CCRS_PM_YHCDHPKL.DATA_ID is '数据ID'
/

comment on column CCRS_PM_YHCDHPKL.DATA_DATE is '数据日期'
/

comment on column CCRS_PM_YHCDHPKL.DATA_RPT_DATE is '报表日期'
/

comment on column CCRS_PM_YHCDHPKL.CORP_ID is '法人机构号'
/

comment on column CCRS_PM_YHCDHPKL.ORG_ID is '机构号'
/

comment on column CCRS_PM_YHCDHPKL.GROUP_ID is '部门编号'
/

comment on column CCRS_PM_YHCDHPKL.INQ_ORG_ID is '查询机构号'
/

comment on column CCRS_PM_YHCDHPKL.INQ_GROUP_ID is '查询组号'
/

comment on column CCRS_PM_YHCDHPKL.SJRQ_DATE is '数据日期'
/

comment on column CCRS_PM_YHCDHPKL.JRJGBM is '金融机构编码'
/

comment on column CCRS_PM_YHCDHPKL.YHCDHPBM is '银行承兑汇票编码'
/

comment on column CCRS_PM_YHCDHPKL.SXHTBH is '授信合同编号'
/

comment on column CCRS_PM_YHCDHPKL.KPQYMC is '开票企业名称'
/

comment on column CCRS_PM_YHCDHPKL.KPQYZJLX is '开票企业证件类型'
/

comment on column CCRS_PM_YHCDHPKL.KPQYDM is '开票企业代码'
/

comment on column CCRS_PM_YHCDHPKL.KPQYJJCF is '开票企业经济成分'
/

comment on column CCRS_PM_YHCDHPKL.BZ is '币种'
/

comment on column CCRS_PM_YHCDHPKL.PMJE_AMT is '票面金额'
/

comment on column CCRS_PM_YHCDHPKL.CPRQ_DATE is '出票日期'
/

comment on column CCRS_PM_YHCDHPKL.PJDQRQ_DATE is '票据到期日期'
/

comment on column CCRS_PM_YHCDHPKL.PJSKRMC is '票据收款人名称'
/

comment on column CCRS_PM_YHCDHPKL.PJDBBZ is '票据担保币种'
/

comment on column CCRS_PM_YHCDHPKL.PJDBJE_AMT is '票据担保金额'
/

comment on column CCRS_PM_YHCDHPKL.PJDBLX is '票据担保类型'
/

comment on column CCRS_PM_YHCDHPKL.REMARKS is '备注'
/

comment on column CCRS_PM_YHCDHPKL.CHECK_FLAG is '校验标识'
/

comment on column CCRS_PM_YHCDHPKL.CHECK_DESC is '校验结果'
/

comment on column CCRS_PM_YHCDHPKL.CHECK_ERR_TYPE is '校验失败类型'
/

comment on column CCRS_PM_YHCDHPKL.NEXT_ACTION is '下一动作'
/

comment on column CCRS_PM_YHCDHPKL.DATA_STATUS is '数据状态'
/

comment on column CCRS_PM_YHCDHPKL.DATA_FLAG is '数据是否已删除'
/

comment on column CCRS_PM_YHCDHPKL.DATA_SOURCE is '数据来源'
/

comment on column CCRS_PM_YHCDHPKL.DATA_VERSION is '数据版本'
/

comment on column CCRS_PM_YHCDHPKL.DATA_REJ_DESC is '数据审核拒绝原因'
/

comment on column CCRS_PM_YHCDHPKL.DATA_DEL_DESC is '数据删除描述'
/

comment on column CCRS_PM_YHCDHPKL.DATA_CRT_USER is '数据创建/导入用户'
/

comment on column CCRS_PM_YHCDHPKL.DATA_CRT_DATE is '数据创建/导入日期'
/

comment on column CCRS_PM_YHCDHPKL.DATA_CRT_TIME is '数据创建/导入时间'
/

comment on column CCRS_PM_YHCDHPKL.DATA_CHG_USER is '数据修改/删除用户'
/

comment on column CCRS_PM_YHCDHPKL.DATA_CHG_DATE is '数据修改/删除日期'
/

comment on column CCRS_PM_YHCDHPKL.DATA_CHG_TIME is '数据修改/删除时间'
/

comment on column CCRS_PM_YHCDHPKL.DATA_APV_USER is '数据审核/拒绝用户'
/

comment on column CCRS_PM_YHCDHPKL.DATA_APV_DATE is '数据审核/拒绝日期'
/

comment on column CCRS_PM_YHCDHPKL.DATA_APV_TIME is '数据审核/拒绝时间'
/

comment on column CCRS_PM_YHCDHPKL.RSV1 is '备用1'
/

comment on column CCRS_PM_YHCDHPKL.RSV2 is '备用2'
/

comment on column CCRS_PM_YHCDHPKL.RSV3 is '备用3'
/

comment on column CCRS_PM_YHCDHPKL.RSV4 is '备用4'
/

comment on column CCRS_PM_YHCDHPKL.RSV5 is '备用5'
/

create unique index U_YHCDHPKL
    on CCRS_PM_YHCDHPKL (DATA_RPT_DATE, SJRQ_DATE, YHCDHPBM)
/

create table CCRS_PM_YSZKZYDK
(
    DATA_ID          VARCHAR2(64) not null
        primary key,
    DATA_DATE        CHAR(8),
    DATA_RPT_DATE    CHAR(8),
    CORP_ID          VARCHAR2(14),
    ORG_ID           VARCHAR2(14),
    GROUP_ID         VARCHAR2(14),
    INQ_ORG_ID       CHAR(24),
    INQ_GROUP_ID     CHAR(24),
    SJRQ_DATE        CHAR(8),
    JRJGBM           CHAR(14),
    DKJJBM           VARCHAR2(105),
    ZYDBLX           CHAR(2),
    YSZKZWRMC        VARCHAR2(600),
    YSZKZWRZJLX      CHAR(2),
    YSZKZWRZJHM      VARCHAR2(50),
    YSZKZQJE_AMT     NUMBER,
    YSZKDZYL         NUMBER,
    DCRZTYDJZMWJBH   VARCHAR2(300),
    SFSYQ            CHAR,
    YSZKSFTGZZPSWCRZ CHAR,
    REMARKS          VARCHAR2(14),
    CHECK_FLAG       CHAR,
    CHECK_DESC       VARCHAR2(512),
    CHECK_ERR_TYPE   CHAR,
    NEXT_ACTION      CHAR(2),
    DATA_STATUS      CHAR(2),
    DATA_FLAG        CHAR,
    DATA_SOURCE      CHAR,
    DATA_VERSION     NUMBER(8),
    DATA_REJ_DESC    VARCHAR2(128),
    DATA_DEL_DESC    VARCHAR2(128),
    DATA_CRT_USER    VARCHAR2(20),
    DATA_CRT_DATE    CHAR(8),
    DATA_CRT_TIME    CHAR(14),
    DATA_CHG_USER    VARCHAR2(20),
    DATA_CHG_DATE    CHAR(8),
    DATA_CHG_TIME    CHAR(14),
    DATA_APV_USER    VARCHAR2(20),
    DATA_APV_DATE    CHAR(8),
    DATA_APV_TIME    CHAR(14),
    RSV1             VARCHAR2(180),
    RSV2             VARCHAR2(180),
    RSV3             VARCHAR2(180),
    RSV4             VARCHAR2(180),
    RSV5             VARCHAR2(180)
)
/

comment on table CCRS_PM_YSZKZYDK is '应收账款质押贷款报文'
/

comment on column CCRS_PM_YSZKZYDK.DATA_ID is '数据ID'
/

comment on column CCRS_PM_YSZKZYDK.DATA_DATE is '数据日期'
/

comment on column CCRS_PM_YSZKZYDK.DATA_RPT_DATE is '报表日期'
/

comment on column CCRS_PM_YSZKZYDK.CORP_ID is '法人机构号'
/

comment on column CCRS_PM_YSZKZYDK.ORG_ID is '机构号'
/

comment on column CCRS_PM_YSZKZYDK.GROUP_ID is '部门编号'
/

comment on column CCRS_PM_YSZKZYDK.INQ_ORG_ID is '查询机构号'
/

comment on column CCRS_PM_YSZKZYDK.INQ_GROUP_ID is '查询组号'
/

comment on column CCRS_PM_YSZKZYDK.SJRQ_DATE is '数据日期'
/

comment on column CCRS_PM_YSZKZYDK.JRJGBM is '金融机构编码'
/

comment on column CCRS_PM_YSZKZYDK.DKJJBM is '贷款借据编码'
/

comment on column CCRS_PM_YSZKZYDK.ZYDBLX is '质押担保类型'
/

comment on column CCRS_PM_YSZKZYDK.YSZKZWRMC is '应收账款债务人名称'
/

comment on column CCRS_PM_YSZKZYDK.YSZKZWRZJLX is '应收账款债务人证件类型'
/

comment on column CCRS_PM_YSZKZYDK.YSZKZWRZJHM is '应收账款债务人证件号码'
/

comment on column CCRS_PM_YSZKZYDK.YSZKZQJE_AMT is '应收账款债权金额'
/

comment on column CCRS_PM_YSZKZYDK.YSZKDZYL is '应收账款抵质押率'
/

comment on column CCRS_PM_YSZKZYDK.DCRZTYDJZMWJBH is '动产融资统一登记证明文件编号'
/

comment on column CCRS_PM_YSZKZYDK.SFSYQ is '是否收益权'
/

comment on column CCRS_PM_YSZKZYDK.YSZKSFTGZZPSWCRZ is '应收账款是否通过中征平台完成融资'
/

comment on column CCRS_PM_YSZKZYDK.REMARKS is '备注'
/

comment on column CCRS_PM_YSZKZYDK.CHECK_FLAG is '校验标识'
/

comment on column CCRS_PM_YSZKZYDK.CHECK_DESC is '校验结果'
/

comment on column CCRS_PM_YSZKZYDK.CHECK_ERR_TYPE is '校验失败类型'
/

comment on column CCRS_PM_YSZKZYDK.NEXT_ACTION is '下一动作'
/

comment on column CCRS_PM_YSZKZYDK.DATA_STATUS is '数据状态'
/

comment on column CCRS_PM_YSZKZYDK.DATA_FLAG is '数据是否已删除'
/

comment on column CCRS_PM_YSZKZYDK.DATA_SOURCE is '数据来源'
/

comment on column CCRS_PM_YSZKZYDK.DATA_VERSION is '数据版本'
/

comment on column CCRS_PM_YSZKZYDK.DATA_REJ_DESC is '数据审核拒绝原因'
/

comment on column CCRS_PM_YSZKZYDK.DATA_DEL_DESC is '数据删除描述'
/

comment on column CCRS_PM_YSZKZYDK.DATA_CRT_USER is '数据创建/导入用户'
/

comment on column CCRS_PM_YSZKZYDK.DATA_CRT_DATE is '数据创建/导入日期'
/

comment on column CCRS_PM_YSZKZYDK.DATA_CRT_TIME is '数据创建/导入时间'
/

comment on column CCRS_PM_YSZKZYDK.DATA_CHG_USER is '数据修改/删除用户'
/

comment on column CCRS_PM_YSZKZYDK.DATA_CHG_DATE is '数据修改/删除日期'
/

comment on column CCRS_PM_YSZKZYDK.DATA_CHG_TIME is '数据修改/删除时间'
/

comment on column CCRS_PM_YSZKZYDK.DATA_APV_USER is '数据审核/拒绝用户'
/

comment on column CCRS_PM_YSZKZYDK.DATA_APV_DATE is '数据审核/拒绝日期'
/

comment on column CCRS_PM_YSZKZYDK.DATA_APV_TIME is '数据审核/拒绝时间'
/

comment on column CCRS_PM_YSZKZYDK.RSV1 is '备用1'
/

comment on column CCRS_PM_YSZKZYDK.RSV2 is '备用2'
/

comment on column CCRS_PM_YSZKZYDK.RSV3 is '备用3'
/

comment on column CCRS_PM_YSZKZYDK.RSV4 is '备用4'
/

comment on column CCRS_PM_YSZKZYDK.RSV5 is '备用5'
/

create unique index U_YSZKZYDK
    on CCRS_PM_YSZKZYDK (DATA_RPT_DATE, SJRQ_DATE, DKJJBM)
/

create table CCRS_PM_ZDKSYQK
(
    DATA_ID        VARCHAR2(64) not null
        primary key,
    DATA_DATE      CHAR(8),
    DATA_RPT_DATE  CHAR(8),
    CORP_ID        VARCHAR2(14),
    ORG_ID         VARCHAR2(14),
    GROUP_ID       VARCHAR2(14),
    INQ_ORG_ID     CHAR(24),
    INQ_GROUP_ID   CHAR(24),
    SJRQ_DATE      CHAR(8),
    JRJGBM         CHAR(14),
    DKJJBM         VARCHAR2(105),
    ZDKLX          CHAR(2),
    WBZXFS         CHAR(2),
    DKHXXX         CHAR(2),
    DDPKRKS        NUMBER(8),
    ZDKHTBH        VARCHAR2(300),
    ZDKFFMS        CHAR(2),
    DDJDLKPKHFS    CHAR(2),
    DDFPLYLX       CHAR(2),
    RMYHZDKZXJCBS  CHAR(50),
    REMARKS        VARCHAR2(14),
    CHECK_FLAG     CHAR,
    CHECK_DESC     VARCHAR2(512),
    CHECK_ERR_TYPE CHAR,
    NEXT_ACTION    CHAR(2),
    DATA_STATUS    CHAR(2),
    DATA_FLAG      CHAR,
    DATA_SOURCE    CHAR,
    DATA_VERSION   NUMBER(8),
    DATA_REJ_DESC  VARCHAR2(128),
    DATA_DEL_DESC  VARCHAR2(128),
    DATA_CRT_USER  VARCHAR2(20),
    DATA_CRT_DATE  CHAR(8),
    DATA_CRT_TIME  CHAR(14),
    DATA_CHG_USER  VARCHAR2(20),
    DATA_CHG_DATE  CHAR(8),
    DATA_CHG_TIME  CHAR(14),
    DATA_APV_USER  VARCHAR2(20),
    DATA_APV_DATE  CHAR(8),
    DATA_APV_TIME  CHAR(14),
    RSV1           VARCHAR2(180),
    RSV2           VARCHAR2(180),
    RSV3           VARCHAR2(180),
    RSV4           VARCHAR2(180),
    RSV5           VARCHAR2(180)
)
/

comment on table CCRS_PM_ZDKSYQK is '再贷款使用情况报文'
/

comment on column CCRS_PM_ZDKSYQK.DATA_ID is '数据ID'
/

comment on column CCRS_PM_ZDKSYQK.DATA_DATE is '数据日期'
/

comment on column CCRS_PM_ZDKSYQK.DATA_RPT_DATE is '报表日期'
/

comment on column CCRS_PM_ZDKSYQK.CORP_ID is '法人机构号'
/

comment on column CCRS_PM_ZDKSYQK.ORG_ID is '机构号'
/

comment on column CCRS_PM_ZDKSYQK.GROUP_ID is '部门编号'
/

comment on column CCRS_PM_ZDKSYQK.INQ_ORG_ID is '查询机构号'
/

comment on column CCRS_PM_ZDKSYQK.INQ_GROUP_ID is '查询组号'
/

comment on column CCRS_PM_ZDKSYQK.SJRQ_DATE is '数据日期'
/

comment on column CCRS_PM_ZDKSYQK.JRJGBM is '金融机构编码'
/

comment on column CCRS_PM_ZDKSYQK.DKJJBM is '贷款借据编码'
/

comment on column CCRS_PM_ZDKSYQK.ZDKLX is '再贷款类型'
/

comment on column CCRS_PM_ZDKSYQK.WBZXFS is '外部增信方式'
/

comment on column CCRS_PM_ZDKSYQK.DKHXXX is '贷款划型细项'
/

comment on column CCRS_PM_ZDKSYQK.DDPKRKS is '带动贫困人口数'
/

comment on column CCRS_PM_ZDKSYQK.ZDKHTBH is '再贷款合同编号'
/

comment on column CCRS_PM_ZDKSYQK.ZDKFFMS is '再贷款发放模式'
/

comment on column CCRS_PM_ZDKSYQK.DDJDLKPKHFS is '带动建档立卡贫困户方式'
/

comment on column CCRS_PM_ZDKSYQK.DDFPLYLX is '定点扶贫领域类型'
/

comment on column CCRS_PM_ZDKSYQK.RMYHZDKZXJCBS is '人民银行再贷款专项监测标识'
/

comment on column CCRS_PM_ZDKSYQK.REMARKS is '备注'
/

comment on column CCRS_PM_ZDKSYQK.CHECK_FLAG is '校验标识'
/

comment on column CCRS_PM_ZDKSYQK.CHECK_DESC is '校验结果'
/

comment on column CCRS_PM_ZDKSYQK.CHECK_ERR_TYPE is '校验失败类型'
/

comment on column CCRS_PM_ZDKSYQK.NEXT_ACTION is '下一动作'
/

comment on column CCRS_PM_ZDKSYQK.DATA_STATUS is '数据状态'
/

comment on column CCRS_PM_ZDKSYQK.DATA_FLAG is '数据是否已删除'
/

comment on column CCRS_PM_ZDKSYQK.DATA_SOURCE is '数据来源'
/

comment on column CCRS_PM_ZDKSYQK.DATA_VERSION is '数据版本'
/

comment on column CCRS_PM_ZDKSYQK.DATA_REJ_DESC is '数据审核拒绝原因'
/

comment on column CCRS_PM_ZDKSYQK.DATA_DEL_DESC is '数据删除描述'
/

comment on column CCRS_PM_ZDKSYQK.DATA_CRT_USER is '数据创建/导入用户'
/

comment on column CCRS_PM_ZDKSYQK.DATA_CRT_DATE is '数据创建/导入日期'
/

comment on column CCRS_PM_ZDKSYQK.DATA_CRT_TIME is '数据创建/导入时间'
/

comment on column CCRS_PM_ZDKSYQK.DATA_CHG_USER is '数据修改/删除用户'
/

comment on column CCRS_PM_ZDKSYQK.DATA_CHG_DATE is '数据修改/删除日期'
/

comment on column CCRS_PM_ZDKSYQK.DATA_CHG_TIME is '数据修改/删除时间'
/

comment on column CCRS_PM_ZDKSYQK.DATA_APV_USER is '数据审核/拒绝用户'
/

comment on column CCRS_PM_ZDKSYQK.DATA_APV_DATE is '数据审核/拒绝日期'
/

comment on column CCRS_PM_ZDKSYQK.DATA_APV_TIME is '数据审核/拒绝时间'
/

comment on column CCRS_PM_ZDKSYQK.RSV1 is '备用1'
/

comment on column CCRS_PM_ZDKSYQK.RSV2 is '备用2'
/

comment on column CCRS_PM_ZDKSYQK.RSV3 is '备用3'
/

comment on column CCRS_PM_ZDKSYQK.RSV4 is '备用4'
/

comment on column CCRS_PM_ZDKSYQK.RSV5 is '备用5'
/

create unique index U_ZDKSYQK
    on CCRS_PM_ZDKSYQK (DATA_RPT_DATE, SJRQ_DATE, ZDKHTBH)
/

create table CCRS_PM_ZDXMZJPHJCBFSE
(
    DATA_ID        VARCHAR2(64) not null
        primary key,
    DATA_DATE      CHAR(8),
    DATA_RPT_DATE  CHAR(8),
    CORP_ID        VARCHAR2(14),
    ORG_ID         VARCHAR2(14),
    GROUP_ID       VARCHAR2(14),
    INQ_ORG_ID     CHAR(24),
    INQ_GROUP_ID   CHAR(24),
    SJRQ_DATE      CHAR(8),
    JRJGBM         CHAR(14),
    XMMC           VARCHAR2(300),
    DKJJBM         VARCHAR2(105),
    YHCDHPBM       VARCHAR2(30),
    WTDKDKJJBM     VARCHAR2(105),
    YHCXZQDM       VARCHAR2(20),
    REMARKS        VARCHAR2(14),
    CHECK_FLAG     CHAR,
    CHECK_DESC     VARCHAR2(512),
    CHECK_ERR_TYPE CHAR,
    NEXT_ACTION    CHAR(2),
    DATA_STATUS    CHAR(2),
    DATA_FLAG      CHAR,
    DATA_SOURCE    CHAR,
    DATA_VERSION   NUMBER(8),
    DATA_REJ_DESC  VARCHAR2(128),
    DATA_DEL_DESC  VARCHAR2(128),
    DATA_CRT_USER  VARCHAR2(20),
    DATA_CRT_DATE  CHAR(8),
    DATA_CRT_TIME  CHAR(14),
    DATA_CHG_USER  VARCHAR2(20),
    DATA_CHG_DATE  CHAR(8),
    DATA_CHG_TIME  CHAR(14),
    DATA_APV_USER  VARCHAR2(20),
    DATA_APV_DATE  CHAR(8),
    DATA_APV_TIME  CHAR(14),
    RSV1           VARCHAR2(180),
    RSV2           VARCHAR2(180),
    RSV3           VARCHAR2(180),
    RSV4           VARCHAR2(180),
    RSV5           VARCHAR2(180)
)
/

comment on table CCRS_PM_ZDXMZJPHJCBFSE is '重点项目资金平衡监测表发生额报文'
/

comment on column CCRS_PM_ZDXMZJPHJCBFSE.DATA_ID is '数据ID'
/

comment on column CCRS_PM_ZDXMZJPHJCBFSE.DATA_DATE is '数据日期'
/

comment on column CCRS_PM_ZDXMZJPHJCBFSE.DATA_RPT_DATE is '报表日期'
/

comment on column CCRS_PM_ZDXMZJPHJCBFSE.CORP_ID is '法人机构号'
/

comment on column CCRS_PM_ZDXMZJPHJCBFSE.ORG_ID is '机构号'
/

comment on column CCRS_PM_ZDXMZJPHJCBFSE.GROUP_ID is '部门编号'
/

comment on column CCRS_PM_ZDXMZJPHJCBFSE.INQ_ORG_ID is '查询机构号'
/

comment on column CCRS_PM_ZDXMZJPHJCBFSE.INQ_GROUP_ID is '查询组号'
/

comment on column CCRS_PM_ZDXMZJPHJCBFSE.SJRQ_DATE is '数据日期'
/

comment on column CCRS_PM_ZDXMZJPHJCBFSE.JRJGBM is '金融机构编码'
/

comment on column CCRS_PM_ZDXMZJPHJCBFSE.XMMC is '项目名称'
/

comment on column CCRS_PM_ZDXMZJPHJCBFSE.DKJJBM is '贷款借据编码'
/

comment on column CCRS_PM_ZDXMZJPHJCBFSE.YHCDHPBM is '银行承兑汇票编码'
/

comment on column CCRS_PM_ZDXMZJPHJCBFSE.WTDKDKJJBM is '委托贷款贷款借据编码'
/

comment on column CCRS_PM_ZDXMZJPHJCBFSE.YHCXZQDM is '银行承销债券代码'
/

comment on column CCRS_PM_ZDXMZJPHJCBFSE.REMARKS is '备注'
/

comment on column CCRS_PM_ZDXMZJPHJCBFSE.CHECK_FLAG is '校验标识'
/

comment on column CCRS_PM_ZDXMZJPHJCBFSE.CHECK_DESC is '校验结果'
/

comment on column CCRS_PM_ZDXMZJPHJCBFSE.CHECK_ERR_TYPE is '校验失败类型'
/

comment on column CCRS_PM_ZDXMZJPHJCBFSE.NEXT_ACTION is '下一动作'
/

comment on column CCRS_PM_ZDXMZJPHJCBFSE.DATA_STATUS is '数据状态'
/

comment on column CCRS_PM_ZDXMZJPHJCBFSE.DATA_FLAG is '数据是否已删除'
/

comment on column CCRS_PM_ZDXMZJPHJCBFSE.DATA_SOURCE is '数据来源'
/

comment on column CCRS_PM_ZDXMZJPHJCBFSE.DATA_VERSION is '数据版本'
/

comment on column CCRS_PM_ZDXMZJPHJCBFSE.DATA_REJ_DESC is '数据审核拒绝原因'
/

comment on column CCRS_PM_ZDXMZJPHJCBFSE.DATA_DEL_DESC is '数据删除描述'
/

comment on column CCRS_PM_ZDXMZJPHJCBFSE.DATA_CRT_USER is '数据创建/导入用户'
/

comment on column CCRS_PM_ZDXMZJPHJCBFSE.DATA_CRT_DATE is '数据创建/导入日期'
/

comment on column CCRS_PM_ZDXMZJPHJCBFSE.DATA_CRT_TIME is '数据创建/导入时间'
/

comment on column CCRS_PM_ZDXMZJPHJCBFSE.DATA_CHG_USER is '数据修改/删除用户'
/

comment on column CCRS_PM_ZDXMZJPHJCBFSE.DATA_CHG_DATE is '数据修改/删除日期'
/

comment on column CCRS_PM_ZDXMZJPHJCBFSE.DATA_CHG_TIME is '数据修改/删除时间'
/

comment on column CCRS_PM_ZDXMZJPHJCBFSE.DATA_APV_USER is '数据审核/拒绝用户'
/

comment on column CCRS_PM_ZDXMZJPHJCBFSE.DATA_APV_DATE is '数据审核/拒绝日期'
/

comment on column CCRS_PM_ZDXMZJPHJCBFSE.DATA_APV_TIME is '数据审核/拒绝时间'
/

comment on column CCRS_PM_ZDXMZJPHJCBFSE.RSV1 is '备用1'
/

comment on column CCRS_PM_ZDXMZJPHJCBFSE.RSV2 is '备用2'
/

comment on column CCRS_PM_ZDXMZJPHJCBFSE.RSV3 is '备用3'
/

comment on column CCRS_PM_ZDXMZJPHJCBFSE.RSV4 is '备用4'
/

comment on column CCRS_PM_ZDXMZJPHJCBFSE.RSV5 is '备用5'
/

create unique index U_ZDXMZJPHJCBFSE
    on CCRS_PM_ZDXMZJPHJCBFSE (DATA_RPT_DATE, SJRQ_DATE, XMMC)
/

create table CCRS_PM_ZQCX
(
    DATA_ID            VARCHAR2(64) not null
        primary key,
    DATA_DATE          CHAR(8),
    DATA_RPT_DATE      CHAR(8),
    CORP_ID            VARCHAR2(14),
    ORG_ID             VARCHAR2(14),
    GROUP_ID           VARCHAR2(14),
    INQ_ORG_ID         CHAR(24),
    INQ_GROUP_ID       CHAR(24),
    SJRQ_DATE          CHAR(8),
    JRJGBM             CHAR(14),
    SFZCXS             CHAR,
    ZQCXJE_AMT         NUMBER,
    ZQMC               VARCHAR2(300),
    ZQJC               VARCHAR2(300),
    ZQLX               VARCHAR2(4),
    ZQDM               VARCHAR2(20),
    ZQFXBZ             CHAR(3),
    ZQFXJE_AMT         NUMBER,
    ZQFXRZJLX          CHAR(2),
    ZQFXRDM            VARCHAR2(50),
    DQXZQHDMZQFXRZCSZD CHAR(12),
    ZQFXRKGLX          VARCHAR2(5),
    ZQFXRZTHYLB        CHAR,
    ZQFXSZTPJ          CHAR(2),
    ZXPJ               CHAR(2),
    ZQFXRQ_DATE        CHAR(8),
    ZQDQRQ_DATE        CHAR(8),
    ZQQXRQ_DATE        CHAR(8),
    ZQFXLL             NUMBER,
    REMARKS            VARCHAR2(14),
    CHECK_FLAG         CHAR,
    CHECK_DESC         VARCHAR2(512),
    CHECK_ERR_TYPE     CHAR,
    NEXT_ACTION        CHAR(2),
    DATA_STATUS        CHAR(2),
    DATA_FLAG          CHAR,
    DATA_SOURCE        CHAR,
    DATA_VERSION       NUMBER(8),
    DATA_REJ_DESC      VARCHAR2(128),
    DATA_DEL_DESC      VARCHAR2(128),
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
    RSV5               VARCHAR2(180)
)
/

comment on table CCRS_PM_ZQCX is '债券承销报文'
/

comment on column CCRS_PM_ZQCX.DATA_ID is '数据ID'
/

comment on column CCRS_PM_ZQCX.DATA_DATE is '数据日期'
/

comment on column CCRS_PM_ZQCX.DATA_RPT_DATE is '报表日期'
/

comment on column CCRS_PM_ZQCX.CORP_ID is '法人机构号'
/

comment on column CCRS_PM_ZQCX.ORG_ID is '机构号'
/

comment on column CCRS_PM_ZQCX.GROUP_ID is '部门编号'
/

comment on column CCRS_PM_ZQCX.INQ_ORG_ID is '查询机构号'
/

comment on column CCRS_PM_ZQCX.INQ_GROUP_ID is '查询组号'
/

comment on column CCRS_PM_ZQCX.SJRQ_DATE is '数据日期'
/

comment on column CCRS_PM_ZQCX.JRJGBM is '金融机构编码'
/

comment on column CCRS_PM_ZQCX.SFZCXS is '是否主承销商'
/

comment on column CCRS_PM_ZQCX.ZQCXJE_AMT is '债券承销金额'
/

comment on column CCRS_PM_ZQCX.ZQMC is '债券名称'
/

comment on column CCRS_PM_ZQCX.ZQJC is '债券简称'
/

comment on column CCRS_PM_ZQCX.ZQLX is '债券类型'
/

comment on column CCRS_PM_ZQCX.ZQDM is '债券代码'
/

comment on column CCRS_PM_ZQCX.ZQFXBZ is '债券发行币种'
/

comment on column CCRS_PM_ZQCX.ZQFXJE_AMT is '债券发行金额'
/

comment on column CCRS_PM_ZQCX.ZQFXRZJLX is '债券发行人证件类型'
/

comment on column CCRS_PM_ZQCX.ZQFXRDM is '债券发行人代码'
/

comment on column CCRS_PM_ZQCX.DQXZQHDMZQFXRZCSZD is '地区行政区划代码（债券发行人注册所在地）'
/

comment on column CCRS_PM_ZQCX.ZQFXRKGLX is '债券发行人控股类型'
/

comment on column CCRS_PM_ZQCX.ZQFXRZTHYLB is '债券发行人主体行业类别'
/

comment on column CCRS_PM_ZQCX.ZQFXSZTPJ is '债券发行时主体评级'
/

comment on column CCRS_PM_ZQCX.ZXPJ is '债项评级'
/

comment on column CCRS_PM_ZQCX.ZQFXRQ_DATE is '债券发行日期'
/

comment on column CCRS_PM_ZQCX.ZQDQRQ_DATE is '债券到期日期'
/

comment on column CCRS_PM_ZQCX.ZQQXRQ_DATE is '债券起息日期'
/

comment on column CCRS_PM_ZQCX.ZQFXLL is '债券发行利率'
/

comment on column CCRS_PM_ZQCX.REMARKS is '备注'
/

comment on column CCRS_PM_ZQCX.CHECK_FLAG is '校验标识'
/

comment on column CCRS_PM_ZQCX.CHECK_DESC is '校验结果'
/

comment on column CCRS_PM_ZQCX.CHECK_ERR_TYPE is '校验失败类型'
/

comment on column CCRS_PM_ZQCX.NEXT_ACTION is '下一动作'
/

comment on column CCRS_PM_ZQCX.DATA_STATUS is '数据状态'
/

comment on column CCRS_PM_ZQCX.DATA_FLAG is '数据是否已删除'
/

comment on column CCRS_PM_ZQCX.DATA_SOURCE is '数据来源'
/

comment on column CCRS_PM_ZQCX.DATA_VERSION is '数据版本'
/

comment on column CCRS_PM_ZQCX.DATA_REJ_DESC is '数据审核拒绝原因'
/

comment on column CCRS_PM_ZQCX.DATA_DEL_DESC is '数据删除描述'
/

comment on column CCRS_PM_ZQCX.DATA_CRT_USER is '数据创建/导入用户'
/

comment on column CCRS_PM_ZQCX.DATA_CRT_DATE is '数据创建/导入日期'
/

comment on column CCRS_PM_ZQCX.DATA_CRT_TIME is '数据创建/导入时间'
/

comment on column CCRS_PM_ZQCX.DATA_CHG_USER is '数据修改/删除用户'
/

comment on column CCRS_PM_ZQCX.DATA_CHG_DATE is '数据修改/删除日期'
/

comment on column CCRS_PM_ZQCX.DATA_CHG_TIME is '数据修改/删除时间'
/

comment on column CCRS_PM_ZQCX.DATA_APV_USER is '数据审核/拒绝用户'
/

comment on column CCRS_PM_ZQCX.DATA_APV_DATE is '数据审核/拒绝日期'
/

comment on column CCRS_PM_ZQCX.DATA_APV_TIME is '数据审核/拒绝时间'
/

comment on column CCRS_PM_ZQCX.RSV1 is '备用1'
/

comment on column CCRS_PM_ZQCX.RSV2 is '备用2'
/

comment on column CCRS_PM_ZQCX.RSV3 is '备用3'
/

comment on column CCRS_PM_ZQCX.RSV4 is '备用4'
/

comment on column CCRS_PM_ZQCX.RSV5 is '备用5'
/

create unique index U_ZQCX
    on CCRS_PM_ZQCX (DATA_RPT_DATE, SJRQ_DATE, ZQDM)
/

create table CCRS_PM_ZQCXPZ
(
    DATA_ID        VARCHAR2(64) not null
        primary key,
    DATA_DATE      CHAR(8),
    DATA_RPT_DATE  CHAR(8),
    CORP_ID        VARCHAR2(14),
    ORG_ID         VARCHAR2(14),
    GROUP_ID       VARCHAR2(14),
    INQ_ORG_ID     CHAR(24),
    INQ_GROUP_ID   CHAR(24),
    SJRQ_DATE      CHAR(8),
    JRJGBM         CHAR(14),
    ZQDM           VARCHAR2(20),
    CXPZ           CHAR(2),
    REMARKS        VARCHAR2(14),
    CHECK_FLAG     CHAR,
    CHECK_DESC     VARCHAR2(512),
    CHECK_ERR_TYPE CHAR,
    NEXT_ACTION    CHAR(2),
    DATA_STATUS    CHAR(2),
    DATA_FLAG      CHAR,
    DATA_SOURCE    CHAR,
    DATA_VERSION   NUMBER(8),
    DATA_REJ_DESC  VARCHAR2(128),
    DATA_DEL_DESC  VARCHAR2(128),
    DATA_CRT_USER  VARCHAR2(20),
    DATA_CRT_DATE  CHAR(8),
    DATA_CRT_TIME  CHAR(14),
    DATA_CHG_USER  VARCHAR2(20),
    DATA_CHG_DATE  CHAR(8),
    DATA_CHG_TIME  CHAR(14),
    DATA_APV_USER  VARCHAR2(20),
    DATA_APV_DATE  CHAR(8),
    DATA_APV_TIME  CHAR(14),
    RSV1           VARCHAR2(180),
    RSV2           VARCHAR2(180),
    RSV3           VARCHAR2(180),
    RSV4           VARCHAR2(180),
    RSV5           VARCHAR2(180)
)
/

comment on table CCRS_PM_ZQCXPZ is '债券创新品种报文'
/

comment on column CCRS_PM_ZQCXPZ.DATA_ID is '数据ID'
/

comment on column CCRS_PM_ZQCXPZ.DATA_DATE is '数据日期'
/

comment on column CCRS_PM_ZQCXPZ.DATA_RPT_DATE is '报表日期'
/

comment on column CCRS_PM_ZQCXPZ.CORP_ID is '法人机构号'
/

comment on column CCRS_PM_ZQCXPZ.ORG_ID is '机构号'
/

comment on column CCRS_PM_ZQCXPZ.GROUP_ID is '部门编号'
/

comment on column CCRS_PM_ZQCXPZ.INQ_ORG_ID is '查询机构号'
/

comment on column CCRS_PM_ZQCXPZ.INQ_GROUP_ID is '查询组号'
/

comment on column CCRS_PM_ZQCXPZ.SJRQ_DATE is '数据日期'
/

comment on column CCRS_PM_ZQCXPZ.JRJGBM is '金融机构编码'
/

comment on column CCRS_PM_ZQCXPZ.ZQDM is '债券代码'
/

comment on column CCRS_PM_ZQCXPZ.CXPZ is '创新品种'
/

comment on column CCRS_PM_ZQCXPZ.REMARKS is '备注'
/

comment on column CCRS_PM_ZQCXPZ.CHECK_FLAG is '校验标识'
/

comment on column CCRS_PM_ZQCXPZ.CHECK_DESC is '校验结果'
/

comment on column CCRS_PM_ZQCXPZ.CHECK_ERR_TYPE is '校验失败类型'
/

comment on column CCRS_PM_ZQCXPZ.NEXT_ACTION is '下一动作'
/

comment on column CCRS_PM_ZQCXPZ.DATA_STATUS is '数据状态'
/

comment on column CCRS_PM_ZQCXPZ.DATA_FLAG is '数据是否已删除'
/

comment on column CCRS_PM_ZQCXPZ.DATA_SOURCE is '数据来源'
/

comment on column CCRS_PM_ZQCXPZ.DATA_VERSION is '数据版本'
/

comment on column CCRS_PM_ZQCXPZ.DATA_REJ_DESC is '数据审核拒绝原因'
/

comment on column CCRS_PM_ZQCXPZ.DATA_DEL_DESC is '数据删除描述'
/

comment on column CCRS_PM_ZQCXPZ.DATA_CRT_USER is '数据创建/导入用户'
/

comment on column CCRS_PM_ZQCXPZ.DATA_CRT_DATE is '数据创建/导入日期'
/

comment on column CCRS_PM_ZQCXPZ.DATA_CRT_TIME is '数据创建/导入时间'
/

comment on column CCRS_PM_ZQCXPZ.DATA_CHG_USER is '数据修改/删除用户'
/

comment on column CCRS_PM_ZQCXPZ.DATA_CHG_DATE is '数据修改/删除日期'
/

comment on column CCRS_PM_ZQCXPZ.DATA_CHG_TIME is '数据修改/删除时间'
/

comment on column CCRS_PM_ZQCXPZ.DATA_APV_USER is '数据审核/拒绝用户'
/

comment on column CCRS_PM_ZQCXPZ.DATA_APV_DATE is '数据审核/拒绝日期'
/

comment on column CCRS_PM_ZQCXPZ.DATA_APV_TIME is '数据审核/拒绝时间'
/

comment on column CCRS_PM_ZQCXPZ.RSV1 is '备用1'
/

comment on column CCRS_PM_ZQCXPZ.RSV2 is '备用2'
/

comment on column CCRS_PM_ZQCXPZ.RSV3 is '备用3'
/

comment on column CCRS_PM_ZQCXPZ.RSV4 is '备用4'
/

comment on column CCRS_PM_ZQCXPZ.RSV5 is '备用5'
/

create unique index U_ZQCXPZ
    on CCRS_PM_ZQCXPZ (DATA_RPT_DATE, SJRQ_DATE, ZQDM)
/

create table CCRS_PM_ZQCY
(
    DATA_ID        VARCHAR2(64) not null
        primary key,
    DATA_DATE      CHAR(8),
    DATA_RPT_DATE  CHAR(8),
    CORP_ID        VARCHAR2(14),
    ORG_ID         VARCHAR2(14),
    GROUP_ID       VARCHAR2(14),
    INQ_ORG_ID     CHAR(24),
    INQ_GROUP_ID   CHAR(24),
    SJRQ_DATE      CHAR(8),
    JRJGBM         CHAR(14),
    ZQDM           VARCHAR2(20),
    ZQJC           VARCHAR2(300),
    ZQLX           VARCHAR2(4),
    ZQCYRQ_DATE    CHAR(8),
    ZQCYDQRQ_DATE  CHAR(8),
    JYDSMC         VARCHAR2(300),
    ZQJYFS         VARCHAR2(4),
    CCBZ           CHAR(3),
    ZQPMJE_AMT     NUMBER,
    JYJJ_AMT       NUMBER,
    TJSDGZJJ_AMT   NUMBER,
    ZQFXRMC        VARCHAR2(300),
    ZQFXRZJLX      CHAR(2),
    ZQFXRDM        VARCHAR2(50),
    ZQFXRKGLX      VARCHAR2(5),
    ZQFXRZTHYLB    CHAR,
    ZQFXRQ_DATE    CHAR(8),
    ZQDQRQ_DATE    CHAR(8),
    ZQFXRSCJYQK    CHAR(2),
    REMARKS        VARCHAR2(14),
    CHECK_FLAG     CHAR,
    CHECK_DESC     VARCHAR2(512),
    CHECK_ERR_TYPE CHAR,
    NEXT_ACTION    CHAR(2),
    DATA_STATUS    CHAR(2),
    DATA_FLAG      CHAR,
    DATA_SOURCE    CHAR,
    DATA_VERSION   NUMBER(8),
    DATA_REJ_DESC  VARCHAR2(128),
    DATA_DEL_DESC  VARCHAR2(128),
    DATA_CRT_USER  VARCHAR2(20),
    DATA_CRT_DATE  CHAR(8),
    DATA_CRT_TIME  CHAR(14),
    DATA_CHG_USER  VARCHAR2(20),
    DATA_CHG_DATE  CHAR(8),
    DATA_CHG_TIME  CHAR(14),
    DATA_APV_USER  VARCHAR2(20),
    DATA_APV_DATE  CHAR(8),
    DATA_APV_TIME  CHAR(14),
    RSV1           VARCHAR2(180),
    RSV2           VARCHAR2(180),
    RSV3           VARCHAR2(180),
    RSV4           VARCHAR2(180),
    RSV5           VARCHAR2(180)
)
/

comment on table CCRS_PM_ZQCY is '债券持有报文'
/

comment on column CCRS_PM_ZQCY.DATA_ID is '数据ID'
/

comment on column CCRS_PM_ZQCY.DATA_DATE is '数据日期'
/

comment on column CCRS_PM_ZQCY.DATA_RPT_DATE is '报表日期'
/

comment on column CCRS_PM_ZQCY.CORP_ID is '法人机构号'
/

comment on column CCRS_PM_ZQCY.ORG_ID is '机构号'
/

comment on column CCRS_PM_ZQCY.GROUP_ID is '部门编号'
/

comment on column CCRS_PM_ZQCY.INQ_ORG_ID is '查询机构号'
/

comment on column CCRS_PM_ZQCY.INQ_GROUP_ID is '查询组号'
/

comment on column CCRS_PM_ZQCY.SJRQ_DATE is '数据日期'
/

comment on column CCRS_PM_ZQCY.JRJGBM is '金融机构编码'
/

comment on column CCRS_PM_ZQCY.ZQDM is '债券代码'
/

comment on column CCRS_PM_ZQCY.ZQJC is '债券简称'
/

comment on column CCRS_PM_ZQCY.ZQLX is '债券类型'
/

comment on column CCRS_PM_ZQCY.ZQCYRQ_DATE is '债券持有日期'
/

comment on column CCRS_PM_ZQCY.ZQCYDQRQ_DATE is '债券持有到期日期'
/

comment on column CCRS_PM_ZQCY.JYDSMC is '交易对手名称'
/

comment on column CCRS_PM_ZQCY.ZQJYFS is '债券交易方式'
/

comment on column CCRS_PM_ZQCY.CCBZ is '持仓币种'
/

comment on column CCRS_PM_ZQCY.ZQPMJE_AMT is '债券票面金额'
/

comment on column CCRS_PM_ZQCY.JYJJ_AMT is '交易净价'
/

comment on column CCRS_PM_ZQCY.TJSDGZJJ_AMT is '统计时点估值净价'
/

comment on column CCRS_PM_ZQCY.ZQFXRMC is '债券发行人名称'
/

comment on column CCRS_PM_ZQCY.ZQFXRZJLX is '债券发行人证件类型'
/

comment on column CCRS_PM_ZQCY.ZQFXRDM is '债券发行人代码'
/

comment on column CCRS_PM_ZQCY.ZQFXRKGLX is '债券发行人控股类型'
/

comment on column CCRS_PM_ZQCY.ZQFXRZTHYLB is '债券发行人主体行业类别'
/

comment on column CCRS_PM_ZQCY.ZQFXRQ_DATE is '债券发行日期'
/

comment on column CCRS_PM_ZQCY.ZQDQRQ_DATE is '债券到期日期'
/

comment on column CCRS_PM_ZQCY.ZQFXRSCJYQK is '债券发行人生产经营情况'
/

comment on column CCRS_PM_ZQCY.REMARKS is '备注'
/

comment on column CCRS_PM_ZQCY.CHECK_FLAG is '校验标识'
/

comment on column CCRS_PM_ZQCY.CHECK_DESC is '校验结果'
/

comment on column CCRS_PM_ZQCY.CHECK_ERR_TYPE is '校验失败类型'
/

comment on column CCRS_PM_ZQCY.NEXT_ACTION is '下一动作'
/

comment on column CCRS_PM_ZQCY.DATA_STATUS is '数据状态'
/

comment on column CCRS_PM_ZQCY.DATA_FLAG is '数据是否已删除'
/

comment on column CCRS_PM_ZQCY.DATA_SOURCE is '数据来源'
/

comment on column CCRS_PM_ZQCY.DATA_VERSION is '数据版本'
/

comment on column CCRS_PM_ZQCY.DATA_REJ_DESC is '数据审核拒绝原因'
/

comment on column CCRS_PM_ZQCY.DATA_DEL_DESC is '数据删除描述'
/

comment on column CCRS_PM_ZQCY.DATA_CRT_USER is '数据创建/导入用户'
/

comment on column CCRS_PM_ZQCY.DATA_CRT_DATE is '数据创建/导入日期'
/

comment on column CCRS_PM_ZQCY.DATA_CRT_TIME is '数据创建/导入时间'
/

comment on column CCRS_PM_ZQCY.DATA_CHG_USER is '数据修改/删除用户'
/

comment on column CCRS_PM_ZQCY.DATA_CHG_DATE is '数据修改/删除日期'
/

comment on column CCRS_PM_ZQCY.DATA_CHG_TIME is '数据修改/删除时间'
/

comment on column CCRS_PM_ZQCY.DATA_APV_USER is '数据审核/拒绝用户'
/

comment on column CCRS_PM_ZQCY.DATA_APV_DATE is '数据审核/拒绝日期'
/

comment on column CCRS_PM_ZQCY.DATA_APV_TIME is '数据审核/拒绝时间'
/

comment on column CCRS_PM_ZQCY.RSV1 is '备用1'
/

comment on column CCRS_PM_ZQCY.RSV2 is '备用2'
/

comment on column CCRS_PM_ZQCY.RSV3 is '备用3'
/

comment on column CCRS_PM_ZQCY.RSV4 is '备用4'
/

comment on column CCRS_PM_ZQCY.RSV5 is '备用5'
/

create unique index U_ZQCY
    on CCRS_PM_ZQCY (DATA_RPT_DATE, SJRQ_DATE, ZQDM)
/

create table CCRS_PM_ZSCQZYDK
(
    DATA_ID        VARCHAR2(64) not null
        primary key,
    DATA_DATE      CHAR(8),
    DATA_RPT_DATE  CHAR(8),
    CORP_ID        VARCHAR2(14),
    ORG_ID         VARCHAR2(14),
    GROUP_ID       VARCHAR2(14),
    INQ_ORG_ID     CHAR(24),
    INQ_GROUP_ID   CHAR(24),
    SJRQ_DATE      CHAR(8),
    JRJGBM         CHAR(14),
    DKJJBM         VARCHAR2(105),
    ZYDBLX         CHAR(2),
    ZSCQLX         CHAR(2),
    ZSCQBH         VARCHAR2(600),
    ZSCQJZPGFS     CHAR(2),
    REMARKS        VARCHAR2(14),
    CHECK_FLAG     CHAR,
    CHECK_DESC     VARCHAR2(512),
    CHECK_ERR_TYPE CHAR,
    NEXT_ACTION    CHAR(2),
    DATA_STATUS    CHAR(2),
    DATA_FLAG      CHAR,
    DATA_SOURCE    CHAR,
    DATA_VERSION   NUMBER(8),
    DATA_REJ_DESC  VARCHAR2(128),
    DATA_DEL_DESC  VARCHAR2(128),
    DATA_CRT_USER  VARCHAR2(20),
    DATA_CRT_DATE  CHAR(8),
    DATA_CRT_TIME  CHAR(14),
    DATA_CHG_USER  VARCHAR2(20),
    DATA_CHG_DATE  CHAR(8),
    DATA_CHG_TIME  CHAR(14),
    DATA_APV_USER  VARCHAR2(20),
    DATA_APV_DATE  CHAR(8),
    DATA_APV_TIME  CHAR(14),
    RSV1           VARCHAR2(180),
    RSV2           VARCHAR2(180),
    RSV3           VARCHAR2(180),
    RSV4           VARCHAR2(180),
    RSV5           VARCHAR2(180)
)
/

comment on table CCRS_PM_ZSCQZYDK is '知识产权质押贷款报文'
/

comment on column CCRS_PM_ZSCQZYDK.DATA_ID is '数据ID'
/

comment on column CCRS_PM_ZSCQZYDK.DATA_DATE is '数据日期'
/

comment on column CCRS_PM_ZSCQZYDK.DATA_RPT_DATE is '报表日期'
/

comment on column CCRS_PM_ZSCQZYDK.CORP_ID is '法人机构号'
/

comment on column CCRS_PM_ZSCQZYDK.ORG_ID is '机构号'
/

comment on column CCRS_PM_ZSCQZYDK.GROUP_ID is '部门编号'
/

comment on column CCRS_PM_ZSCQZYDK.INQ_ORG_ID is '查询机构号'
/

comment on column CCRS_PM_ZSCQZYDK.INQ_GROUP_ID is '查询组号'
/

comment on column CCRS_PM_ZSCQZYDK.SJRQ_DATE is '数据日期'
/

comment on column CCRS_PM_ZSCQZYDK.JRJGBM is '金融机构编码'
/

comment on column CCRS_PM_ZSCQZYDK.DKJJBM is '贷款借据编码'
/

comment on column CCRS_PM_ZSCQZYDK.ZYDBLX is '质押担保类型'
/

comment on column CCRS_PM_ZSCQZYDK.ZSCQLX is '知识产权类型'
/

comment on column CCRS_PM_ZSCQZYDK.ZSCQBH is '知识产权编号'
/

comment on column CCRS_PM_ZSCQZYDK.ZSCQJZPGFS is '知识产权价值评估方式'
/

comment on column CCRS_PM_ZSCQZYDK.REMARKS is '备注'
/

comment on column CCRS_PM_ZSCQZYDK.CHECK_FLAG is '校验标识'
/

comment on column CCRS_PM_ZSCQZYDK.CHECK_DESC is '校验结果'
/

comment on column CCRS_PM_ZSCQZYDK.CHECK_ERR_TYPE is '校验失败类型'
/

comment on column CCRS_PM_ZSCQZYDK.NEXT_ACTION is '下一动作'
/

comment on column CCRS_PM_ZSCQZYDK.DATA_STATUS is '数据状态'
/

comment on column CCRS_PM_ZSCQZYDK.DATA_FLAG is '数据是否已删除'
/

comment on column CCRS_PM_ZSCQZYDK.DATA_SOURCE is '数据来源'
/

comment on column CCRS_PM_ZSCQZYDK.DATA_VERSION is '数据版本'
/

comment on column CCRS_PM_ZSCQZYDK.DATA_REJ_DESC is '数据审核拒绝原因'
/

comment on column CCRS_PM_ZSCQZYDK.DATA_DEL_DESC is '数据删除描述'
/

comment on column CCRS_PM_ZSCQZYDK.DATA_CRT_USER is '数据创建/导入用户'
/

comment on column CCRS_PM_ZSCQZYDK.DATA_CRT_DATE is '数据创建/导入日期'
/

comment on column CCRS_PM_ZSCQZYDK.DATA_CRT_TIME is '数据创建/导入时间'
/

comment on column CCRS_PM_ZSCQZYDK.DATA_CHG_USER is '数据修改/删除用户'
/

comment on column CCRS_PM_ZSCQZYDK.DATA_CHG_DATE is '数据修改/删除日期'
/

comment on column CCRS_PM_ZSCQZYDK.DATA_CHG_TIME is '数据修改/删除时间'
/

comment on column CCRS_PM_ZSCQZYDK.DATA_APV_USER is '数据审核/拒绝用户'
/

comment on column CCRS_PM_ZSCQZYDK.DATA_APV_DATE is '数据审核/拒绝日期'
/

comment on column CCRS_PM_ZSCQZYDK.DATA_APV_TIME is '数据审核/拒绝时间'
/

comment on column CCRS_PM_ZSCQZYDK.RSV1 is '备用1'
/

comment on column CCRS_PM_ZSCQZYDK.RSV2 is '备用2'
/

comment on column CCRS_PM_ZSCQZYDK.RSV3 is '备用3'
/

comment on column CCRS_PM_ZSCQZYDK.RSV4 is '备用4'
/

comment on column CCRS_PM_ZSCQZYDK.RSV5 is '备用5'
/

create unique index U_ZSCQZYDK
    on CCRS_PM_ZSCQZYDK (DATA_RPT_DATE, SJRQ_DATE, ZSCQBH)
/

create table CCRS_PM_ZXZQZCTDLYFZQK
(
    DATA_ID        VARCHAR2(64) not null
        primary key,
    DATA_DATE      CHAR(8),
    DATA_RPT_DATE  CHAR(8),
    CORP_ID        VARCHAR2(14),
    ORG_ID         VARCHAR2(14),
    GROUP_ID       VARCHAR2(14),
    INQ_ORG_ID     CHAR(24),
    INQ_GROUP_ID   CHAR(24),
    SJRQ_DATE      CHAR(8),
    JRJGBM         CHAR(14),
    DKJJBM         VARCHAR2(105),
    ZJLY           CHAR(2),
    ZXZQDKYT       VARCHAR2(4),
    REMARKS        VARCHAR2(14),
    CHECK_FLAG     CHAR,
    CHECK_DESC     VARCHAR2(512),
    CHECK_ERR_TYPE CHAR,
    NEXT_ACTION    CHAR(2),
    DATA_STATUS    CHAR(2),
    DATA_FLAG      CHAR,
    DATA_SOURCE    CHAR,
    DATA_VERSION   NUMBER(8),
    DATA_REJ_DESC  VARCHAR2(128),
    DATA_DEL_DESC  VARCHAR2(128),
    DATA_CRT_USER  VARCHAR2(20),
    DATA_CRT_DATE  CHAR(8),
    DATA_CRT_TIME  CHAR(14),
    DATA_CHG_USER  VARCHAR2(20),
    DATA_CHG_DATE  CHAR(8),
    DATA_CHG_TIME  CHAR(14),
    DATA_APV_USER  VARCHAR2(20),
    DATA_APV_DATE  CHAR(8),
    DATA_APV_TIME  CHAR(14),
    RSV1           VARCHAR2(180),
    RSV2           VARCHAR2(180),
    RSV3           VARCHAR2(180),
    RSV4           VARCHAR2(180),
    RSV5           VARCHAR2(180)
)
/

comment on table CCRS_PM_ZXZQZCTDLYFZQK is '专项债券支持特定领域发展情况报文'
/

comment on column CCRS_PM_ZXZQZCTDLYFZQK.DATA_ID is '数据ID'
/

comment on column CCRS_PM_ZXZQZCTDLYFZQK.DATA_DATE is '数据日期'
/

comment on column CCRS_PM_ZXZQZCTDLYFZQK.DATA_RPT_DATE is '报表日期'
/

comment on column CCRS_PM_ZXZQZCTDLYFZQK.CORP_ID is '法人机构号'
/

comment on column CCRS_PM_ZXZQZCTDLYFZQK.ORG_ID is '机构号'
/

comment on column CCRS_PM_ZXZQZCTDLYFZQK.GROUP_ID is '部门编号'
/

comment on column CCRS_PM_ZXZQZCTDLYFZQK.INQ_ORG_ID is '查询机构号'
/

comment on column CCRS_PM_ZXZQZCTDLYFZQK.INQ_GROUP_ID is '查询组号'
/

comment on column CCRS_PM_ZXZQZCTDLYFZQK.SJRQ_DATE is '数据日期'
/

comment on column CCRS_PM_ZXZQZCTDLYFZQK.JRJGBM is '金融机构编码'
/

comment on column CCRS_PM_ZXZQZCTDLYFZQK.DKJJBM is '贷款借据编码'
/

comment on column CCRS_PM_ZXZQZCTDLYFZQK.ZJLY is '资金来源'
/

comment on column CCRS_PM_ZXZQZCTDLYFZQK.ZXZQDKYT is '专项债券贷款用途'
/

comment on column CCRS_PM_ZXZQZCTDLYFZQK.REMARKS is '备注'
/

comment on column CCRS_PM_ZXZQZCTDLYFZQK.CHECK_FLAG is '校验标识'
/

comment on column CCRS_PM_ZXZQZCTDLYFZQK.CHECK_DESC is '校验结果'
/

comment on column CCRS_PM_ZXZQZCTDLYFZQK.CHECK_ERR_TYPE is '校验失败类型'
/

comment on column CCRS_PM_ZXZQZCTDLYFZQK.NEXT_ACTION is '下一动作'
/

comment on column CCRS_PM_ZXZQZCTDLYFZQK.DATA_STATUS is '数据状态'
/

comment on column CCRS_PM_ZXZQZCTDLYFZQK.DATA_FLAG is '数据是否已删除'
/

comment on column CCRS_PM_ZXZQZCTDLYFZQK.DATA_SOURCE is '数据来源'
/

comment on column CCRS_PM_ZXZQZCTDLYFZQK.DATA_VERSION is '数据版本'
/

comment on column CCRS_PM_ZXZQZCTDLYFZQK.DATA_REJ_DESC is '数据审核拒绝原因'
/

comment on column CCRS_PM_ZXZQZCTDLYFZQK.DATA_DEL_DESC is '数据删除描述'
/

comment on column CCRS_PM_ZXZQZCTDLYFZQK.DATA_CRT_USER is '数据创建/导入用户'
/

comment on column CCRS_PM_ZXZQZCTDLYFZQK.DATA_CRT_DATE is '数据创建/导入日期'
/

comment on column CCRS_PM_ZXZQZCTDLYFZQK.DATA_CRT_TIME is '数据创建/导入时间'
/

comment on column CCRS_PM_ZXZQZCTDLYFZQK.DATA_CHG_USER is '数据修改/删除用户'
/

comment on column CCRS_PM_ZXZQZCTDLYFZQK.DATA_CHG_DATE is '数据修改/删除日期'
/

comment on column CCRS_PM_ZXZQZCTDLYFZQK.DATA_CHG_TIME is '数据修改/删除时间'
/

comment on column CCRS_PM_ZXZQZCTDLYFZQK.DATA_APV_USER is '数据审核/拒绝用户'
/

comment on column CCRS_PM_ZXZQZCTDLYFZQK.DATA_APV_DATE is '数据审核/拒绝日期'
/

comment on column CCRS_PM_ZXZQZCTDLYFZQK.DATA_APV_TIME is '数据审核/拒绝时间'
/

comment on column CCRS_PM_ZXZQZCTDLYFZQK.RSV1 is '备用1'
/

comment on column CCRS_PM_ZXZQZCTDLYFZQK.RSV2 is '备用2'
/

comment on column CCRS_PM_ZXZQZCTDLYFZQK.RSV3 is '备用3'
/

comment on column CCRS_PM_ZXZQZCTDLYFZQK.RSV4 is '备用4'
/

comment on column CCRS_PM_ZXZQZCTDLYFZQK.RSV5 is '备用5'
/

create unique index U_ZXZQZCTDLYFZQK
    on CCRS_PM_ZXZQZCTDLYFZQK (DATA_RPT_DATE, SJRQ_DATE, DKJJBM)
/

create table CCRS_BM_CHK_ERRORS
(
    DATA_ID       VARCHAR2(64),
    ORG_ID        VARCHAR2(14),
    GROUP_ID      VARCHAR2(14),
    DATA_RPT_DATE VARCHAR2(32),
    TABLE_NAME    VARCHAR2(32),
    FIELD_NAME    VARCHAR2(32),
    RULE_ID       VARCHAR2(32),
    WEAK_RULE     VARCHAR2(1),
    CHECK_TIME    CHAR(14),
    RECORD_ID     VARCHAR2(32),
    RSV1          VARCHAR2(180),
    RSV2          VARCHAR2(180),
    RSV3          VARCHAR2(180),
    RSV4          VARCHAR2(180),
    RSV5          VARCHAR2(180),
    C_RSV1        VARCHAR2(180),
    C_RSV2        VARCHAR2(180),
    C_RSV3        VARCHAR2(180),
    C_RSV4        VARCHAR2(180),
    C_RSV5        VARCHAR2(180)
)
/

create table CCRS_ITF_GRKH
(
    DATA_ID        VARCHAR2(64) not null,
    DATA_DATE      VARCHAR2(10),
    DATA_RPT_DATE  VARCHAR2(10),
    CORP_ID        VARCHAR2(14),
    ORG_ID         VARCHAR2(14),
    GROUP_ID       VARCHAR2(14),
    INQ_ORG_ID     CHAR(24),
    INQ_GROUP_ID   CHAR(24),
    SJRQ_DATE      VARCHAR2(10),
    JRJGBM         CHAR(14),
    JRJGMC         VARCHAR2(300),
    KHBH           VARCHAR2(300),
    KHMC           VARCHAR2(300),
    GRZJLX         CHAR(2),
    GRZJYXQX_DATE  VARCHAR2(10),
    GRZJHM         VARCHAR2(50),
    CSRQ_DATE      VARCHAR2(10),
    GJ             CHAR(3),
    MZ             CHAR(2),
    XB             CHAR(2),
    XL             CHAR(2),
    XW             CHAR,
    HYZK           CHAR(2),
    POZJLX         CHAR(2),
    POZJHM         VARCHAR2(50),
    POXM           VARCHAR2(300),
    DQXZQHDMGRJTZZ CHAR(12),
    JTZZ           VARCHAR2(300),
    GRLXDH         VARCHAR2(20),
    ZY             CHAR(2),
    GRDWMC         VARCHAR2(300),
    GRDWDZ         VARCHAR2(300),
    SFSNH          CHAR,
    RMYHGRXXZXJCBS CHAR(50),
    HJSZD          VARCHAR2(300),
    REMARKS        VARCHAR2(14),
    CHECK_FLAG     CHAR,
    CHECK_DESC     VARCHAR2(512),
    CHECK_ERR_TYPE CHAR,
    NEXT_ACTION    CHAR(2),
    DATA_STATUS    CHAR(2),
    DATA_FLAG      CHAR,
    DATA_SOURCE    CHAR,
    DATA_VERSION   NUMBER(8),
    DATA_REJ_DESC  VARCHAR2(128),
    DATA_DEL_DESC  VARCHAR2(128),
    DATA_CRT_USER  VARCHAR2(20),
    DATA_CRT_DATE  VARCHAR2(10),
    DATA_CRT_TIME  CHAR(14),
    DATA_CHG_USER  VARCHAR2(20),
    DATA_CHG_DATE  VARCHAR2(10),
    DATA_CHG_TIME  CHAR(14),
    DATA_APV_USER  VARCHAR2(20),
    DATA_APV_DATE  VARCHAR2(10),
    DATA_APV_TIME  CHAR(14),
    RSV1           VARCHAR2(180),
    RSV2           VARCHAR2(180),
    RSV3           VARCHAR2(180),
    RSV4           VARCHAR2(180),
    RSV5           VARCHAR2(180)
)
/

create table CCRS_BM_CHK_E_GRKH
(
    DATA_ID       VARCHAR2(64),
    ORG_ID        VARCHAR2(14),
    GROUP_ID      VARCHAR2(14),
    DATA_RPT_DATE VARCHAR2(32),
    TABLE_NAME    VARCHAR2(32),
    FIELD_NAME    VARCHAR2(32),
    RULE_ID       VARCHAR2(32),
    WEAK_RULE     VARCHAR2(1),
    CHECK_TIME    CHAR(14),
    RECORD_ID     VARCHAR2(32),
    RSV1          VARCHAR2(180),
    RSV2          VARCHAR2(180),
    RSV3          VARCHAR2(180),
    RSV4          VARCHAR2(180),
    RSV5          VARCHAR2(180),
    C_RSV1        VARCHAR2(180),
    C_RSV2        VARCHAR2(180),
    C_RSV3        VARCHAR2(180),
    C_RSV4        VARCHAR2(180),
    C_RSV5        VARCHAR2(180)
)
/

create table CCRS_ITF_DWKH
(
    DATA_ID         VARCHAR2(64) not null,
    DATA_DATE       VARCHAR2(10),
    DATA_RPT_DATE   VARCHAR2(10),
    CORP_ID         VARCHAR2(14),
    ORG_ID          VARCHAR2(14),
    GROUP_ID        VARCHAR2(14),
    INQ_ORG_ID      CHAR(24),
    INQ_GROUP_ID    CHAR(24),
    SJRQ_DATE       VARCHAR2(10),
    JRJGBM          CHAR(14),
    JRJGMC          VARCHAR2(300),
    KHBH            VARCHAR2(300),
    KHMC            VARCHAR2(300),
    DWKHLX          VARCHAR2(2),
    TYSHXYDM        CHAR(18),
    DWZJYXQX_DATE   VARCHAR2(10),
    ZZJGDM          CHAR(10),
    YYZZZCH         VARCHAR2(18),
    QSZJLXHM        VARCHAR2(100),
    NSRSBH          VARCHAR2(20),
    TSJGDM          VARCHAR2(300),
    HY              CHAR,
    QYGM            CHAR(4),
    DWYWFW          VARCHAR2(3000),
    DWLXR           VARCHAR2(300),
    DWLXDH          VARCHAR2(20),
    DWDZYX          VARCHAR2(300),
    DWZCDZ          VARCHAR2(300),
    DQXZQHDMDWZCD   CHAR(12),
    GJ              CHAR(3),
    ZCZBBZ          CHAR(3),
    ZCZB_AMT        NUMBER,
    DWCLRQ_DATE     VARCHAR2(10),
    FRDBMC          VARCHAR2(300),
    FRDBZJLX        CHAR(2),
    FRDBZJYXQX_DATE VARCHAR2(10),
    FRDBZJHM        VARCHAR2(50),
    QYCZRJJCF       VARCHAR2(5),
    SYSYRMC         VARCHAR2(300),
    SYSYRZJLX       CHAR(2),
    SYSYRZJYXQ_DATE VARCHAR2(10),
    SYSYRZJHM       VARCHAR2(50),
    REMARKS         VARCHAR2(14),
    CHECK_FLAG      CHAR,
    CHECK_DESC      VARCHAR2(512),
    CHECK_ERR_TYPE  CHAR,
    NEXT_ACTION     CHAR(2),
    DATA_STATUS     CHAR(2),
    DATA_FLAG       CHAR,
    DATA_SOURCE     CHAR,
    DATA_VERSION    NUMBER(8),
    DATA_REJ_DESC   VARCHAR2(128),
    DATA_DEL_DESC   VARCHAR2(128),
    DATA_CRT_USER   VARCHAR2(20),
    DATA_CRT_DATE   VARCHAR2(10),
    DATA_CRT_TIME   CHAR(14),
    DATA_CHG_USER   VARCHAR2(20),
    DATA_CHG_DATE   VARCHAR2(10),
    DATA_CHG_TIME   CHAR(14),
    DATA_APV_USER   VARCHAR2(20),
    DATA_APV_DATE   VARCHAR2(10),
    DATA_APV_TIME   CHAR(14),
    RSV1            VARCHAR2(180),
    RSV2            VARCHAR2(180),
    RSV3            VARCHAR2(180),
    RSV4            VARCHAR2(180),
    RSV5            VARCHAR2(180)
)
/

create table CCRS_BM_CHK_E_DWKH
(
    DATA_ID       VARCHAR2(64),
    ORG_ID        VARCHAR2(14),
    GROUP_ID      VARCHAR2(14),
    DATA_RPT_DATE VARCHAR2(32),
    TABLE_NAME    VARCHAR2(32),
    FIELD_NAME    VARCHAR2(32),
    RULE_ID       VARCHAR2(32),
    WEAK_RULE     VARCHAR2(1),
    CHECK_TIME    CHAR(14),
    RECORD_ID     VARCHAR2(32),
    RSV1          VARCHAR2(180),
    RSV2          VARCHAR2(180),
    RSV3          VARCHAR2(180),
    RSV4          VARCHAR2(180),
    RSV5          VARCHAR2(180),
    C_RSV1        VARCHAR2(180),
    C_RSV2        VARCHAR2(180),
    C_RSV3        VARCHAR2(180),
    C_RSV4        VARCHAR2(180),
    C_RSV5        VARCHAR2(180)
)
/

create table CCRS_ITF_CKYEKZ
(
    DATA_ID        VARCHAR2(64) not null,
    DATA_DATE      VARCHAR2(10),
    DATA_RPT_DATE  VARCHAR2(10),
    CORP_ID        VARCHAR2(14),
    ORG_ID         VARCHAR2(14),
    GROUP_ID       VARCHAR2(14),
    INQ_ORG_ID     CHAR(24),
    INQ_GROUP_ID   CHAR(24),
    SJRQ_DATE      VARCHAR2(10),
    JRJGBM         CHAR(14),
    KHMC           VARCHAR2(300),
    KHZJLX         CHAR(2),
    CKRDM          VARCHAR2(50),
    CKZHDM         VARCHAR2(60),
    CKXYDM         VARCHAR2(180),
    CKQXLX         CHAR(4),
    REMARKS        VARCHAR2(14),
    CHECK_FLAG     CHAR,
    CHECK_DESC     VARCHAR2(512),
    CHECK_ERR_TYPE CHAR,
    NEXT_ACTION    CHAR(2),
    DATA_STATUS    CHAR(2),
    DATA_FLAG      CHAR,
    DATA_SOURCE    CHAR,
    DATA_VERSION   NUMBER(8),
    DATA_REJ_DESC  VARCHAR2(128),
    DATA_DEL_DESC  VARCHAR2(128),
    DATA_CRT_USER  VARCHAR2(20),
    DATA_CRT_DATE  VARCHAR2(10),
    DATA_CRT_TIME  CHAR(14),
    DATA_CHG_USER  VARCHAR2(20),
    DATA_CHG_DATE  VARCHAR2(10),
    DATA_CHG_TIME  CHAR(14),
    DATA_APV_USER  VARCHAR2(20),
    DATA_APV_DATE  VARCHAR2(10),
    DATA_APV_TIME  CHAR(14),
    RSV1           VARCHAR2(180),
    RSV2           VARCHAR2(180),
    RSV3           VARCHAR2(180),
    RSV4           VARCHAR2(180),
    RSV5           VARCHAR2(180)
)
/

create table CCRS_BM_CHK_E_CKYEKZ
(
    DATA_ID       VARCHAR2(64),
    ORG_ID        VARCHAR2(14),
    GROUP_ID      VARCHAR2(14),
    DATA_RPT_DATE VARCHAR2(32),
    TABLE_NAME    VARCHAR2(32),
    FIELD_NAME    VARCHAR2(32),
    RULE_ID       VARCHAR2(32),
    WEAK_RULE     VARCHAR2(1),
    CHECK_TIME    CHAR(14),
    RECORD_ID     VARCHAR2(32),
    RSV1          VARCHAR2(180),
    RSV2          VARCHAR2(180),
    RSV3          VARCHAR2(180),
    RSV4          VARCHAR2(180),
    RSV5          VARCHAR2(180),
    C_RSV1        VARCHAR2(180),
    C_RSV2        VARCHAR2(180),
    C_RSV3        VARCHAR2(180),
    C_RSV4        VARCHAR2(180),
    C_RSV5        VARCHAR2(180)
)
/

create table CCRS_ITF_TYCDYE
(
    DATA_ID        VARCHAR2(64) not null,
    DATA_DATE      VARCHAR2(10),
    DATA_RPT_DATE  VARCHAR2(10),
    CORP_ID        VARCHAR2(14),
    ORG_ID         VARCHAR2(14),
    GROUP_ID       VARCHAR2(14),
    INQ_ORG_ID     CHAR(24),
    INQ_GROUP_ID   CHAR(24),
    SJRQ_DATE      VARCHAR2(10),
    JRJGBM         CHAR(14),
    JYDSMC         VARCHAR2(300),
    CDXYDM         VARCHAR2(150),
    CDMC           VARCHAR2(300),
    CDXYQSRQ_DATE  VARCHAR2(10),
    CDXYDQRQ_DATE  VARCHAR2(10),
    CDSJDQRQ_DATE  VARCHAR2(10),
    BZ             CHAR(3),
    CDFXGM_AMT     NUMBER,
    LLSFGD         CHAR(4),
    LLSP           NUMBER,
    TYCDQXLX       CHAR(2),
    JZLLZL         CHAR(2),
    FXPL           CHAR(2),
    CDYE_AMT       NUMBER,
    REMARKS        VARCHAR2(14),
    CHECK_FLAG     CHAR,
    CHECK_DESC     VARCHAR2(512),
    CHECK_ERR_TYPE CHAR,
    NEXT_ACTION    CHAR(2),
    DATA_STATUS    CHAR(2),
    DATA_FLAG      CHAR,
    DATA_SOURCE    CHAR,
    DATA_VERSION   NUMBER(8),
    DATA_REJ_DESC  VARCHAR2(128),
    DATA_DEL_DESC  VARCHAR2(128),
    DATA_CRT_USER  VARCHAR2(20),
    DATA_CRT_DATE  VARCHAR2(10),
    DATA_CRT_TIME  CHAR(14),
    DATA_CHG_USER  VARCHAR2(20),
    DATA_CHG_DATE  VARCHAR2(10),
    DATA_CHG_TIME  CHAR(14),
    DATA_APV_USER  VARCHAR2(20),
    DATA_APV_DATE  VARCHAR2(10),
    DATA_APV_TIME  CHAR(14),
    RSV1           VARCHAR2(180),
    RSV2           VARCHAR2(180),
    RSV3           VARCHAR2(180),
    RSV4           VARCHAR2(180),
    RSV5           VARCHAR2(180)
)
/

create table CCRS_BM_CHK_E_TYCDYE
(
    DATA_ID       VARCHAR2(64),
    ORG_ID        VARCHAR2(14),
    GROUP_ID      VARCHAR2(14),
    DATA_RPT_DATE VARCHAR2(32),
    TABLE_NAME    VARCHAR2(32),
    FIELD_NAME    VARCHAR2(32),
    RULE_ID       VARCHAR2(32),
    WEAK_RULE     VARCHAR2(1),
    CHECK_TIME    CHAR(14),
    RECORD_ID     VARCHAR2(32),
    RSV1          VARCHAR2(180),
    RSV2          VARCHAR2(180),
    RSV3          VARCHAR2(180),
    RSV4          VARCHAR2(180),
    RSV5          VARCHAR2(180),
    C_RSV1        VARCHAR2(180),
    C_RSV2        VARCHAR2(180),
    C_RSV3        VARCHAR2(180),
    C_RSV4        VARCHAR2(180),
    C_RSV5        VARCHAR2(180)
)
/

create table CCRS_ITF_TYCDFSE
(
    DATA_ID        VARCHAR2(64) not null,
    DATA_DATE      VARCHAR2(10),
    DATA_RPT_DATE  VARCHAR2(10),
    CORP_ID        VARCHAR2(14),
    ORG_ID         VARCHAR2(14),
    GROUP_ID       VARCHAR2(14),
    INQ_ORG_ID     CHAR(24),
    INQ_GROUP_ID   CHAR(24),
    SJRQ_DATE      VARCHAR2(10),
    JRJGBM         CHAR(14),
    JYDSMC         VARCHAR2(300),
    CDXYDM         VARCHAR2(150),
    CDMC           VARCHAR2(300),
    CDXYQSRQ_DATE  VARCHAR2(10),
    CDXYDQRQ_DATE  VARCHAR2(10),
    CDSJDQRQ_DATE  VARCHAR2(10),
    BZ             CHAR(3),
    CDFXGM_AMT     NUMBER,
    LLSFGD         CHAR(4),
    LLSP           NUMBER,
    TYCDQXLX       CHAR(2),
    JZLLZL         CHAR(2),
    FXPL           CHAR(2),
    CDFSLX         CHAR(2),
    TYCDDFBJ_AMT   NUMBER,
    TYCDDFLX_AMT   NUMBER,
    CDFSJE_AMT     NUMBER,
    REMARKS        VARCHAR2(14),
    CHECK_FLAG     CHAR,
    CHECK_DESC     VARCHAR2(512),
    CHECK_ERR_TYPE CHAR,
    NEXT_ACTION    CHAR(2),
    DATA_STATUS    CHAR(2),
    DATA_FLAG      CHAR,
    DATA_SOURCE    CHAR,
    DATA_VERSION   NUMBER(8),
    DATA_REJ_DESC  VARCHAR2(128),
    DATA_DEL_DESC  VARCHAR2(128),
    DATA_CRT_USER  VARCHAR2(20),
    DATA_CRT_DATE  VARCHAR2(10),
    DATA_CRT_TIME  CHAR(14),
    DATA_CHG_USER  VARCHAR2(20),
    DATA_CHG_DATE  VARCHAR2(10),
    DATA_CHG_TIME  CHAR(14),
    DATA_APV_USER  VARCHAR2(20),
    DATA_APV_DATE  VARCHAR2(10),
    DATA_APV_TIME  CHAR(14),
    RSV1           VARCHAR2(180),
    RSV2           VARCHAR2(180),
    RSV3           VARCHAR2(180),
    RSV4           VARCHAR2(180),
    RSV5           VARCHAR2(180)
)
/

create table CCRS_BM_CHK_E_TYCDFSE
(
    DATA_ID       VARCHAR2(64),
    ORG_ID        VARCHAR2(14),
    GROUP_ID      VARCHAR2(14),
    DATA_RPT_DATE VARCHAR2(32),
    TABLE_NAME    VARCHAR2(32),
    FIELD_NAME    VARCHAR2(32),
    RULE_ID       VARCHAR2(32),
    WEAK_RULE     VARCHAR2(1),
    CHECK_TIME    CHAR(14),
    RECORD_ID     VARCHAR2(32),
    RSV1          VARCHAR2(180),
    RSV2          VARCHAR2(180),
    RSV3          VARCHAR2(180),
    RSV4          VARCHAR2(180),
    RSV5          VARCHAR2(180),
    C_RSV1        VARCHAR2(180),
    C_RSV2        VARCHAR2(180),
    C_RSV3        VARCHAR2(180),
    C_RSV4        VARCHAR2(180),
    C_RSV5        VARCHAR2(180)
)
/

create table CCRS_ITF_DECDYE
(
    DATA_ID          VARCHAR2(64) not null,
    DATA_DATE        VARCHAR2(10),
    DATA_RPT_DATE    VARCHAR2(10),
    CORP_ID          VARCHAR2(14),
    ORG_ID           VARCHAR2(14),
    GROUP_ID         VARCHAR2(14),
    INQ_ORG_ID       CHAR(24),
    INQ_GROUP_ID     CHAR(24),
    SJRQ_DATE        VARCHAR2(10),
    JRJGBM           CHAR(14),
    KHLX             CHAR,
    KHMC             VARCHAR2(300),
    KHZJLX           CHAR(2),
    KHZJHM           VARCHAR2(50),
    DQXZQHDMCDFXRZCD CHAR(12),
    CDXYDM           VARCHAR2(150),
    CDMC             VARCHAR2(300),
    CDXYQSRQ_DATE    VARCHAR2(10),
    CDXYDQRQ_DATE    VARCHAR2(10),
    CDSJDQRQ_DATE    VARCHAR2(10),
    BZ               CHAR(3),
    CDFXGM_AMT       NUMBER,
    LLSFGD           CHAR(4),
    LLSP             NUMBER,
    DECDQXLX         CHAR(2),
    JZLLZL           CHAR(2),
    FXPL             CHAR(2),
    CDYE_AMT         NUMBER,
    REMARKS          VARCHAR2(14),
    CHECK_FLAG       CHAR,
    CHECK_DESC       VARCHAR2(512),
    CHECK_ERR_TYPE   CHAR,
    NEXT_ACTION      CHAR(2),
    DATA_STATUS      CHAR(2),
    DATA_FLAG        CHAR,
    DATA_SOURCE      CHAR,
    DATA_VERSION     NUMBER(8),
    DATA_REJ_DESC    VARCHAR2(128),
    DATA_DEL_DESC    VARCHAR2(128),
    DATA_CRT_USER    VARCHAR2(20),
    DATA_CRT_DATE    VARCHAR2(10),
    DATA_CRT_TIME    CHAR(14),
    DATA_CHG_USER    VARCHAR2(20),
    DATA_CHG_DATE    VARCHAR2(10),
    DATA_CHG_TIME    CHAR(14),
    DATA_APV_USER    VARCHAR2(20),
    DATA_APV_DATE    VARCHAR2(10),
    DATA_APV_TIME    CHAR(14),
    RSV1             VARCHAR2(180),
    RSV2             VARCHAR2(180),
    RSV3             VARCHAR2(180),
    RSV4             VARCHAR2(180),
    RSV5             VARCHAR2(180)
)
/

create table CCRS_BM_CHK_E_DECDYE
(
    DATA_ID       VARCHAR2(64),
    ORG_ID        VARCHAR2(14),
    GROUP_ID      VARCHAR2(14),
    DATA_RPT_DATE VARCHAR2(32),
    TABLE_NAME    VARCHAR2(32),
    FIELD_NAME    VARCHAR2(32),
    RULE_ID       VARCHAR2(32),
    WEAK_RULE     VARCHAR2(1),
    CHECK_TIME    CHAR(14),
    RECORD_ID     VARCHAR2(32),
    RSV1          VARCHAR2(180),
    RSV2          VARCHAR2(180),
    RSV3          VARCHAR2(180),
    RSV4          VARCHAR2(180),
    RSV5          VARCHAR2(180),
    C_RSV1        VARCHAR2(180),
    C_RSV2        VARCHAR2(180),
    C_RSV3        VARCHAR2(180),
    C_RSV4        VARCHAR2(180),
    C_RSV5        VARCHAR2(180)
)
/

create table CCRS_ITF_DECDFSE
(
    DATA_ID          VARCHAR2(64) not null,
    DATA_DATE        VARCHAR2(10),
    DATA_RPT_DATE    VARCHAR2(10),
    CORP_ID          VARCHAR2(14),
    ORG_ID           VARCHAR2(14),
    GROUP_ID         VARCHAR2(14),
    INQ_ORG_ID       CHAR(24),
    INQ_GROUP_ID     CHAR(24),
    SJRQ_DATE        VARCHAR2(10),
    JRJGBM           CHAR(14),
    KHLX             CHAR,
    KHMC             VARCHAR2(300),
    KHZJLX           CHAR(2),
    KHZJHM           VARCHAR2(50),
    DQXZQHDMCDFXRZCD CHAR(12),
    CDXYDM           VARCHAR2(150),
    CDMC             VARCHAR2(300),
    CDXYQSRQ_DATE    VARCHAR2(10),
    CDXYDQRQ_DATE    VARCHAR2(10),
    CDSJDQRQ_DATE    VARCHAR2(10),
    BZ               CHAR(3),
    CDFXGM_AMT       NUMBER,
    LLSFGD           CHAR(4),
    LLSP             NUMBER,
    DECDQXLX         CHAR(2),
    JZLLZL           CHAR(2),
    FXPL             CHAR(2),
    CDFSLX           CHAR(2),
    CDFSJE_AMT       NUMBER,
    REMARKS          VARCHAR2(14),
    CHECK_FLAG       CHAR,
    CHECK_DESC       VARCHAR2(512),
    CHECK_ERR_TYPE   CHAR,
    NEXT_ACTION      CHAR(2),
    DATA_STATUS      CHAR(2),
    DATA_FLAG        CHAR,
    DATA_SOURCE      CHAR,
    DATA_VERSION     NUMBER(8),
    DATA_REJ_DESC    VARCHAR2(128),
    DATA_DEL_DESC    VARCHAR2(128),
    DATA_CRT_USER    VARCHAR2(20),
    DATA_CRT_DATE    VARCHAR2(10),
    DATA_CRT_TIME    CHAR(14),
    DATA_CHG_USER    VARCHAR2(20),
    DATA_CHG_DATE    VARCHAR2(10),
    DATA_CHG_TIME    CHAR(14),
    DATA_APV_USER    VARCHAR2(20),
    DATA_APV_DATE    VARCHAR2(10),
    DATA_APV_TIME    CHAR(14),
    RSV1             VARCHAR2(180),
    RSV2             VARCHAR2(180),
    RSV3             VARCHAR2(180),
    RSV4             VARCHAR2(180),
    RSV5             VARCHAR2(180)
)
/

create table CCRS_BM_CHK_E_DECDFSE
(
    DATA_ID       VARCHAR2(64),
    ORG_ID        VARCHAR2(14),
    GROUP_ID      VARCHAR2(14),
    DATA_RPT_DATE VARCHAR2(32),
    TABLE_NAME    VARCHAR2(32),
    FIELD_NAME    VARCHAR2(32),
    RULE_ID       VARCHAR2(32),
    WEAK_RULE     VARCHAR2(1),
    CHECK_TIME    CHAR(14),
    RECORD_ID     VARCHAR2(32),
    RSV1          VARCHAR2(180),
    RSV2          VARCHAR2(180),
    RSV3          VARCHAR2(180),
    RSV4          VARCHAR2(180),
    RSV5          VARCHAR2(180),
    C_RSV1        VARCHAR2(180),
    C_RSV2        VARCHAR2(180),
    C_RSV3        VARCHAR2(180),
    C_RSV4        VARCHAR2(180),
    C_RSV5        VARCHAR2(180)
)
/

create table CCRS_ITF_SXHT
(
    DATA_ID        VARCHAR2(64) not null,
    DATA_DATE      VARCHAR2(10),
    DATA_RPT_DATE  VARCHAR2(10),
    CORP_ID        VARCHAR2(14),
    ORG_ID         VARCHAR2(14),
    GROUP_ID       VARCHAR2(14),
    INQ_ORG_ID     CHAR(24),
    INQ_GROUP_ID   CHAR(24),
    SJRQ_DATE      VARCHAR2(10),
    JRJGBM         CHAR(14),
    SXHTBH         VARCHAR2(300),
    KHLX           CHAR,
    KHMC           VARCHAR2(300),
    KHBH           VARCHAR2(300),
    KHZJLX         CHAR(2),
    KHZJHM         VARCHAR2(50),
    SXLX           VARCHAR2(4),
    BZ             CHAR(3),
    SXJE_AMT       NUMBER,
    SXKSRQ_DATE    VARCHAR2(10),
    SXDQRQ_DATE    VARCHAR2(10),
    SFXHED         CHAR,
    SFLSED         CHAR,
    REMARKS        VARCHAR2(14),
    CHECK_FLAG     CHAR,
    CHECK_DESC     VARCHAR2(512),
    CHECK_ERR_TYPE CHAR,
    NEXT_ACTION    CHAR(2),
    DATA_STATUS    CHAR(2),
    DATA_FLAG      CHAR,
    DATA_SOURCE    CHAR,
    DATA_VERSION   NUMBER(8),
    DATA_REJ_DESC  VARCHAR2(128),
    DATA_DEL_DESC  VARCHAR2(128),
    DATA_CRT_USER  VARCHAR2(20),
    DATA_CRT_DATE  VARCHAR2(10),
    DATA_CRT_TIME  CHAR(14),
    DATA_CHG_USER  VARCHAR2(20),
    DATA_CHG_DATE  VARCHAR2(10),
    DATA_CHG_TIME  CHAR(14),
    DATA_APV_USER  VARCHAR2(20),
    DATA_APV_DATE  VARCHAR2(10),
    DATA_APV_TIME  CHAR(14),
    RSV1           VARCHAR2(180),
    RSV2           VARCHAR2(180),
    RSV3           VARCHAR2(180),
    RSV4           VARCHAR2(180),
    RSV5           VARCHAR2(180)
)
/

create table CCRS_BM_CHK_E_SXHT
(
    DATA_ID       VARCHAR2(64),
    ORG_ID        VARCHAR2(14),
    GROUP_ID      VARCHAR2(14),
    DATA_RPT_DATE VARCHAR2(32),
    TABLE_NAME    VARCHAR2(32),
    FIELD_NAME    VARCHAR2(32),
    RULE_ID       VARCHAR2(32),
    WEAK_RULE     VARCHAR2(1),
    CHECK_TIME    CHAR(14),
    RECORD_ID     VARCHAR2(32),
    RSV1          VARCHAR2(180),
    RSV2          VARCHAR2(180),
    RSV3          VARCHAR2(180),
    RSV4          VARCHAR2(180),
    RSV5          VARCHAR2(180),
    C_RSV1        VARCHAR2(180),
    C_RSV2        VARCHAR2(180),
    C_RSV3        VARCHAR2(180),
    C_RSV4        VARCHAR2(180),
    C_RSV5        VARCHAR2(180)
)
/

create table CCRS_ITF_XDHT
(
    DATA_ID          VARCHAR2(64) not null,
    DATA_DATE        VARCHAR2(10),
    DATA_RPT_DATE    VARCHAR2(10),
    CORP_ID          VARCHAR2(14),
    ORG_ID           VARCHAR2(14),
    GROUP_ID         VARCHAR2(14),
    INQ_ORG_ID       CHAR(24),
    INQ_GROUP_ID     CHAR(24),
    SJRQ_DATE        VARCHAR2(10),
    JRJGBM           CHAR(14),
    XDHTBH           VARCHAR2(300),
    KHBH             VARCHAR2(300),
    KHMC             VARCHAR2(300),
    KHLX             CHAR,
    KHZJLX           CHAR(2),
    KHZJHM           VARCHAR2(50),
    SXHTBH           VARCHAR2(300),
    CPXX             VARCHAR2(10),
    BZ               CHAR(3),
    DKHTJE_AMT       NUMBER,
    DKSJTX           CHAR(4),
    DKYT             VARCHAR2(1500),
    HTQSRQ_DATE      VARCHAR2(10),
    HTDQRQ_DATE      VARCHAR2(10),
    HKFS             CHAR(2),
    GRZFAJDKLX       CHAR(2),
    GRZFAJDKGFZJ_AMT NUMBER,
    SFZFDBJJDB       CHAR,
    RMYHDKZXJCBS     CHAR(50),
    REMARKS          VARCHAR2(14),
    CHECK_FLAG       CHAR,
    CHECK_DESC       VARCHAR2(512),
    CHECK_ERR_TYPE   CHAR,
    NEXT_ACTION      CHAR(2),
    DATA_STATUS      CHAR(2),
    DATA_FLAG        CHAR,
    DATA_SOURCE      CHAR,
    DATA_VERSION     NUMBER(8),
    DATA_REJ_DESC    VARCHAR2(128),
    DATA_DEL_DESC    VARCHAR2(128),
    DATA_CRT_USER    VARCHAR2(20),
    DATA_CRT_DATE    VARCHAR2(10),
    DATA_CRT_TIME    CHAR(14),
    DATA_CHG_USER    VARCHAR2(20),
    DATA_CHG_DATE    VARCHAR2(10),
    DATA_CHG_TIME    CHAR(14),
    DATA_APV_USER    VARCHAR2(20),
    DATA_APV_DATE    VARCHAR2(10),
    DATA_APV_TIME    CHAR(14),
    RSV1             VARCHAR2(180),
    RSV2             VARCHAR2(180),
    RSV3             VARCHAR2(180),
    RSV4             VARCHAR2(180),
    RSV5             VARCHAR2(180)
)
/

create table CCRS_BM_CHK_E_XDHT
(
    DATA_ID       VARCHAR2(64),
    ORG_ID        VARCHAR2(14),
    GROUP_ID      VARCHAR2(14),
    DATA_RPT_DATE VARCHAR2(32),
    TABLE_NAME    VARCHAR2(32),
    FIELD_NAME    VARCHAR2(32),
    RULE_ID       VARCHAR2(32),
    WEAK_RULE     VARCHAR2(1),
    CHECK_TIME    CHAR(14),
    RECORD_ID     VARCHAR2(32),
    RSV1          VARCHAR2(180),
    RSV2          VARCHAR2(180),
    RSV3          VARCHAR2(180),
    RSV4          VARCHAR2(180),
    RSV5          VARCHAR2(180),
    C_RSV1        VARCHAR2(180),
    C_RSV2        VARCHAR2(180),
    C_RSV3        VARCHAR2(180),
    C_RSV4        VARCHAR2(180),
    C_RSV5        VARCHAR2(180)
)
/

create table CCRS_ITF_DBHT
(
    DATA_ID        VARCHAR2(64) not null,
    DATA_DATE      VARCHAR2(10),
    DATA_RPT_DATE  VARCHAR2(10),
    CORP_ID        VARCHAR2(14),
    ORG_ID         VARCHAR2(14),
    GROUP_ID       VARCHAR2(14),
    INQ_ORG_ID     CHAR(24),
    INQ_GROUP_ID   CHAR(24),
    SJRQ_DATE      VARCHAR2(10),
    JRJGBM         CHAR(14),
    DBHTBH         VARCHAR2(120),
    DBHTLX         CHAR(2),
    XDHTBH         VARCHAR2(300),
    DBQSRQ_DATE    VARCHAR2(10),
    DBDQRQ_DATE    VARCHAR2(10),
    BZ             CHAR(3),
    DBZJE_AMT      NUMBER,
    REMARKS        VARCHAR2(14),
    CHECK_FLAG     CHAR,
    CHECK_DESC     VARCHAR2(512),
    CHECK_ERR_TYPE CHAR,
    NEXT_ACTION    CHAR(2),
    DATA_STATUS    CHAR(2),
    DATA_FLAG      CHAR,
    DATA_SOURCE    CHAR,
    DATA_VERSION   NUMBER(8),
    DATA_REJ_DESC  VARCHAR2(128),
    DATA_DEL_DESC  VARCHAR2(128),
    DATA_CRT_USER  VARCHAR2(20),
    DATA_CRT_DATE  VARCHAR2(10),
    DATA_CRT_TIME  CHAR(14),
    DATA_CHG_USER  VARCHAR2(20),
    DATA_CHG_DATE  VARCHAR2(10),
    DATA_CHG_TIME  CHAR(14),
    DATA_APV_USER  VARCHAR2(20),
    DATA_APV_DATE  VARCHAR2(10),
    DATA_APV_TIME  CHAR(14),
    RSV1           VARCHAR2(180),
    RSV2           VARCHAR2(180),
    RSV3           VARCHAR2(180),
    RSV4           VARCHAR2(180),
    RSV5           VARCHAR2(180)
)
/

create table CCRS_BM_CHK_E_DBHT
(
    DATA_ID       VARCHAR2(64),
    ORG_ID        VARCHAR2(14),
    GROUP_ID      VARCHAR2(14),
    DATA_RPT_DATE VARCHAR2(32),
    TABLE_NAME    VARCHAR2(32),
    FIELD_NAME    VARCHAR2(32),
    RULE_ID       VARCHAR2(32),
    WEAK_RULE     VARCHAR2(1),
    CHECK_TIME    CHAR(14),
    RECORD_ID     VARCHAR2(32),
    RSV1          VARCHAR2(180),
    RSV2          VARCHAR2(180),
    RSV3          VARCHAR2(180),
    RSV4          VARCHAR2(180),
    RSV5          VARCHAR2(180),
    C_RSV1        VARCHAR2(180),
    C_RSV2        VARCHAR2(180),
    C_RSV3        VARCHAR2(180),
    C_RSV4        VARCHAR2(180),
    C_RSV5        VARCHAR2(180)
)
/

create table CCRS_ITF_DBWXX
(
    DATA_ID        VARCHAR2(64) not null,
    DATA_DATE      VARCHAR2(10),
    DATA_RPT_DATE  VARCHAR2(10),
    CORP_ID        VARCHAR2(14),
    ORG_ID         VARCHAR2(14),
    GROUP_ID       VARCHAR2(14),
    INQ_ORG_ID     CHAR(24),
    INQ_GROUP_ID   CHAR(24),
    SJRQ_DATE      VARCHAR2(10),
    JRJGBM         CHAR(14),
    DBHTBH         VARCHAR2(120),
    DKDBFS         VARCHAR2(3),
    YPBH           VARCHAR2(300),
    YPMC           VARCHAR2(300),
    YPLX           VARCHAR2(4),
    DBWJZ_AMT      NUMBER,
    BZ             CHAR(3),
    DZYL           NUMBER,
    BZRMC          VARCHAR2(300),
    BZRZJLX        CHAR(2),
    BZRZJHM        VARCHAR2(50),
    REMARKS        VARCHAR2(14),
    CHECK_FLAG     CHAR,
    CHECK_DESC     VARCHAR2(512),
    CHECK_ERR_TYPE CHAR,
    NEXT_ACTION    CHAR(2),
    DATA_STATUS    CHAR(2),
    DATA_FLAG      CHAR,
    DATA_SOURCE    CHAR,
    DATA_VERSION   NUMBER(8),
    DATA_REJ_DESC  VARCHAR2(128),
    DATA_DEL_DESC  VARCHAR2(128),
    DATA_CRT_USER  VARCHAR2(20),
    DATA_CRT_DATE  VARCHAR2(10),
    DATA_CRT_TIME  CHAR(14),
    DATA_CHG_USER  VARCHAR2(20),
    DATA_CHG_DATE  VARCHAR2(10),
    DATA_CHG_TIME  CHAR(14),
    DATA_APV_USER  VARCHAR2(20),
    DATA_APV_DATE  VARCHAR2(10),
    DATA_APV_TIME  CHAR(14),
    RSV1           VARCHAR2(180),
    RSV2           VARCHAR2(180),
    RSV3           VARCHAR2(180),
    RSV4           VARCHAR2(180),
    RSV5           VARCHAR2(180)
)
/

create table CCRS_BM_CHK_E_DBWXX
(
    DATA_ID       VARCHAR2(64),
    ORG_ID        VARCHAR2(14),
    GROUP_ID      VARCHAR2(14),
    DATA_RPT_DATE VARCHAR2(32),
    TABLE_NAME    VARCHAR2(32),
    FIELD_NAME    VARCHAR2(32),
    RULE_ID       VARCHAR2(32),
    WEAK_RULE     VARCHAR2(1),
    CHECK_TIME    CHAR(14),
    RECORD_ID     VARCHAR2(32),
    RSV1          VARCHAR2(180),
    RSV2          VARCHAR2(180),
    RSV3          VARCHAR2(180),
    RSV4          VARCHAR2(180),
    RSV5          VARCHAR2(180),
    C_RSV1        VARCHAR2(180),
    C_RSV2        VARCHAR2(180),
    C_RSV3        VARCHAR2(180),
    C_RSV4        VARCHAR2(180),
    C_RSV5        VARCHAR2(180)
)
/

create table CCRS_ITF_DKYEKZ
(
    DATA_ID        VARCHAR2(64) not null,
    DATA_DATE      VARCHAR2(10),
    DATA_RPT_DATE  VARCHAR2(10),
    CORP_ID        VARCHAR2(14),
    ORG_ID         VARCHAR2(14),
    GROUP_ID       VARCHAR2(14),
    INQ_ORG_ID     CHAR(24),
    INQ_GROUP_ID   CHAR(24),
    SJRQ_DATE      VARCHAR2(10),
    JRJGBM         CHAR(14),
    DKJJBM         VARCHAR2(105),
    KHZJLX         CHAR(2),
    WJKRZCDBM      CHAR(12),
    XDHTBH         VARCHAR2(300),
    CPXX           VARCHAR2(10),
    DKYT           VARCHAR2(1500),
    FFFS           CHAR(2),
    SXBS           CHAR(2),
    RMYHDKZXJCBS   CHAR(50),
    REMARKS        VARCHAR2(14),
    CHECK_FLAG     CHAR,
    CHECK_DESC     VARCHAR2(512),
    CHECK_ERR_TYPE CHAR,
    NEXT_ACTION    CHAR(2),
    DATA_STATUS    CHAR(2),
    DATA_FLAG      CHAR,
    DATA_SOURCE    CHAR,
    DATA_VERSION   NUMBER(8),
    DATA_REJ_DESC  VARCHAR2(128),
    DATA_DEL_DESC  VARCHAR2(128),
    DATA_CRT_USER  VARCHAR2(20),
    DATA_CRT_DATE  VARCHAR2(10),
    DATA_CRT_TIME  CHAR(14),
    DATA_CHG_USER  VARCHAR2(20),
    DATA_CHG_DATE  VARCHAR2(10),
    DATA_CHG_TIME  CHAR(14),
    DATA_APV_USER  VARCHAR2(20),
    DATA_APV_DATE  VARCHAR2(10),
    DATA_APV_TIME  CHAR(14),
    RSV1           VARCHAR2(180),
    RSV2           VARCHAR2(180),
    RSV3           VARCHAR2(180),
    RSV4           VARCHAR2(180),
    RSV5           VARCHAR2(180)
)
/

create table CCRS_BM_CHK_E_DKYEKZ
(
    DATA_ID       VARCHAR2(64),
    ORG_ID        VARCHAR2(14),
    GROUP_ID      VARCHAR2(14),
    DATA_RPT_DATE VARCHAR2(32),
    TABLE_NAME    VARCHAR2(32),
    FIELD_NAME    VARCHAR2(32),
    RULE_ID       VARCHAR2(32),
    WEAK_RULE     VARCHAR2(1),
    CHECK_TIME    CHAR(14),
    RECORD_ID     VARCHAR2(32),
    RSV1          VARCHAR2(180),
    RSV2          VARCHAR2(180),
    RSV3          VARCHAR2(180),
    RSV4          VARCHAR2(180),
    RSV5          VARCHAR2(180),
    C_RSV1        VARCHAR2(180),
    C_RSV2        VARCHAR2(180),
    C_RSV3        VARCHAR2(180),
    C_RSV4        VARCHAR2(180),
    C_RSV5        VARCHAR2(180)
)
/

create table CCRS_ITF_DKFSEKZ
(
    DATA_ID        VARCHAR2(64) not null,
    DATA_DATE      VARCHAR2(10),
    DATA_RPT_DATE  VARCHAR2(10),
    CORP_ID        VARCHAR2(14),
    ORG_ID         VARCHAR2(14),
    GROUP_ID       VARCHAR2(14),
    INQ_ORG_ID     CHAR(24),
    INQ_GROUP_ID   CHAR(24),
    SJRQ_DATE      VARCHAR2(10),
    JRJGBM         CHAR(14),
    DKJJBM         VARCHAR2(105),
    KHZJLX         CHAR(2),
    WJKRZCDBM      CHAR(12),
    XDHTBH         VARCHAR2(300),
    CPXX           VARCHAR2(10),
    DKYT           VARCHAR2(1500),
    FFFS           CHAR(2),
    SXBS           CHAR(2),
    RMYHDKZXJCBS   CHAR(50),
    REMARKS        VARCHAR2(14),
    CHECK_FLAG     CHAR,
    CHECK_DESC     VARCHAR2(512),
    CHECK_ERR_TYPE CHAR,
    NEXT_ACTION    CHAR(2),
    DATA_STATUS    CHAR(2),
    DATA_FLAG      CHAR,
    DATA_SOURCE    CHAR,
    DATA_VERSION   NUMBER(8),
    DATA_REJ_DESC  VARCHAR2(128),
    DATA_DEL_DESC  VARCHAR2(128),
    DATA_CRT_USER  VARCHAR2(20),
    DATA_CRT_DATE  VARCHAR2(10),
    DATA_CRT_TIME  CHAR(14),
    DATA_CHG_USER  VARCHAR2(20),
    DATA_CHG_DATE  VARCHAR2(10),
    DATA_CHG_TIME  CHAR(14),
    DATA_APV_USER  VARCHAR2(20),
    DATA_APV_DATE  VARCHAR2(10),
    DATA_APV_TIME  CHAR(14),
    RSV1           VARCHAR2(180),
    RSV2           VARCHAR2(180),
    RSV3           VARCHAR2(180),
    RSV4           VARCHAR2(180),
    RSV5           VARCHAR2(180)
)
/

create table CCRS_BM_CHK_E_DKFSEKZ
(
    DATA_ID       VARCHAR2(64),
    ORG_ID        VARCHAR2(14),
    GROUP_ID      VARCHAR2(14),
    DATA_RPT_DATE VARCHAR2(32),
    TABLE_NAME    VARCHAR2(32),
    FIELD_NAME    VARCHAR2(32),
    RULE_ID       VARCHAR2(32),
    WEAK_RULE     VARCHAR2(1),
    CHECK_TIME    CHAR(14),
    RECORD_ID     VARCHAR2(32),
    RSV1          VARCHAR2(180),
    RSV2          VARCHAR2(180),
    RSV3          VARCHAR2(180),
    RSV4          VARCHAR2(180),
    RSV5          VARCHAR2(180),
    C_RSV1        VARCHAR2(180),
    C_RSV2        VARCHAR2(180),
    C_RSV3        VARCHAR2(180),
    C_RSV4        VARCHAR2(180),
    C_RSV5        VARCHAR2(180)
)
/

create table CCRS_ITF_TXYE
(
    DATA_ID           VARCHAR2(64) not null,
    DATA_DATE         VARCHAR2(10),
    DATA_RPT_DATE     VARCHAR2(10),
    CORP_ID           VARCHAR2(14),
    ORG_ID            VARCHAR2(14),
    GROUP_ID          VARCHAR2(14),
    INQ_ORG_ID        CHAR(24),
    INQ_GROUP_ID      CHAR(24),
    SJRQ_DATE         VARCHAR2(10),
    JRJGBM            CHAR(14),
    TXQYZJLX          CHAR(2),
    TXQYDM            VARCHAR2(50),
    TXQYMC            VARCHAR2(300),
    DQXZQHDMTXQYZCSZD CHAR(12),
    TXQYGM            CHAR(4),
    TXQYHYFL          CHAR,
    TXQYJJCF          VARCHAR2(5),
    PJBM              VARCHAR2(50),
    PJLX              CHAR(2),
    PJJZ              CHAR(2),
    TXLX              VARCHAR2(6),
    CPRQ_DATE         VARCHAR2(10),
    PJJE_AMT          NUMBER,
    PJDQRQ_DATE       VARCHAR2(10),
    KPQYMC            VARCHAR2(300),
    KPQYZJLX          CHAR(2),
    KPQYDM            VARCHAR2(50),
    RMYHPJZXJCBS      CHAR(50),
    FKHHH             CHAR(12),
    FKHMC             VARCHAR2(300),
    SKRMC             VARCHAR2(300),
    TXYWFSRQ_DATE     VARCHAR2(10),
    TXLL              NUMBER,
    BZ                CHAR(3),
    BSZRCS            NUMBER(8),
    REMARKS           VARCHAR2(14),
    CHECK_FLAG        CHAR,
    CHECK_DESC        VARCHAR2(512),
    CHECK_ERR_TYPE    CHAR,
    NEXT_ACTION       CHAR(2),
    DATA_STATUS       CHAR(2),
    DATA_FLAG         CHAR,
    DATA_SOURCE       CHAR,
    DATA_VERSION      NUMBER(8),
    DATA_REJ_DESC     VARCHAR2(128),
    DATA_DEL_DESC     VARCHAR2(128),
    DATA_CRT_USER     VARCHAR2(20),
    DATA_CRT_DATE     VARCHAR2(10),
    DATA_CRT_TIME     CHAR(14),
    DATA_CHG_USER     VARCHAR2(20),
    DATA_CHG_DATE     VARCHAR2(10),
    DATA_CHG_TIME     CHAR(14),
    DATA_APV_USER     VARCHAR2(20),
    DATA_APV_DATE     VARCHAR2(10),
    DATA_APV_TIME     CHAR(14),
    RSV1              VARCHAR2(180),
    RSV2              VARCHAR2(180),
    RSV3              VARCHAR2(180),
    RSV4              VARCHAR2(180),
    RSV5              VARCHAR2(180)
)
/

create table CCRS_BM_CHK_E_TXYE
(
    DATA_ID       VARCHAR2(64),
    ORG_ID        VARCHAR2(14),
    GROUP_ID      VARCHAR2(14),
    DATA_RPT_DATE VARCHAR2(32),
    TABLE_NAME    VARCHAR2(32),
    FIELD_NAME    VARCHAR2(32),
    RULE_ID       VARCHAR2(32),
    WEAK_RULE     VARCHAR2(1),
    CHECK_TIME    CHAR(14),
    RECORD_ID     VARCHAR2(32),
    RSV1          VARCHAR2(180),
    RSV2          VARCHAR2(180),
    RSV3          VARCHAR2(180),
    RSV4          VARCHAR2(180),
    RSV5          VARCHAR2(180),
    C_RSV1        VARCHAR2(180),
    C_RSV2        VARCHAR2(180),
    C_RSV3        VARCHAR2(180),
    C_RSV4        VARCHAR2(180),
    C_RSV5        VARCHAR2(180)
)
/

create table CCRS_ITF_TXFSE
(
    DATA_ID           VARCHAR2(64) not null,
    DATA_DATE         VARCHAR2(10),
    DATA_RPT_DATE     VARCHAR2(10),
    CORP_ID           VARCHAR2(14),
    ORG_ID            VARCHAR2(14),
    GROUP_ID          VARCHAR2(14),
    INQ_ORG_ID        CHAR(24),
    INQ_GROUP_ID      CHAR(24),
    SJRQ_DATE         VARCHAR2(10),
    JRJGBM            CHAR(14),
    TXQYZJLX          CHAR(2),
    TXQYDM            VARCHAR2(50),
    TXQYMC            VARCHAR2(300),
    DQXZQHDMTXQYZCSZD CHAR(12),
    TXQYGM            CHAR(4),
    TXQYHYFL          CHAR,
    TXQYJJCF          VARCHAR2(5),
    PJBM              VARCHAR2(50),
    PJLX              CHAR(2),
    PJJZ              CHAR(2),
    TXLX              VARCHAR2(6),
    TRTCBS            CHAR(2),
    CPRQ_DATE         VARCHAR2(10),
    PJJE_AMT          NUMBER,
    PJDQRQ_DATE       VARCHAR2(10),
    KPQYMC            VARCHAR2(300),
    KPQYZJLX          CHAR(2),
    KPQYDM            VARCHAR2(50),
    RMYHPJZXJCBS      CHAR(50),
    FKHHH             CHAR(12),
    FKHMC             VARCHAR2(300),
    SKRMC             VARCHAR2(300),
    TXYWFSRQ_DATE     VARCHAR2(10),
    TXLL              NUMBER,
    BZ                CHAR(3),
    BSZRCS            NUMBER(8),
    REMARKS           VARCHAR2(14),
    CHECK_FLAG        CHAR,
    CHECK_DESC        VARCHAR2(512),
    CHECK_ERR_TYPE    CHAR,
    NEXT_ACTION       CHAR(2),
    DATA_STATUS       CHAR(2),
    DATA_FLAG         CHAR,
    DATA_SOURCE       CHAR,
    DATA_VERSION      NUMBER(8),
    DATA_REJ_DESC     VARCHAR2(128),
    DATA_DEL_DESC     VARCHAR2(128),
    DATA_CRT_USER     VARCHAR2(20),
    DATA_CRT_DATE     VARCHAR2(10),
    DATA_CRT_TIME     CHAR(14),
    DATA_CHG_USER     VARCHAR2(20),
    DATA_CHG_DATE     VARCHAR2(10),
    DATA_CHG_TIME     CHAR(14),
    DATA_APV_USER     VARCHAR2(20),
    DATA_APV_DATE     VARCHAR2(10),
    DATA_APV_TIME     CHAR(14),
    RSV1              VARCHAR2(180),
    RSV2              VARCHAR2(180),
    RSV3              VARCHAR2(180),
    RSV4              VARCHAR2(180),
    RSV5              VARCHAR2(180)
)
/

create table CCRS_BM_CHK_E_TXFSE
(
    DATA_ID       VARCHAR2(64),
    ORG_ID        VARCHAR2(14),
    GROUP_ID      VARCHAR2(14),
    DATA_RPT_DATE VARCHAR2(32),
    TABLE_NAME    VARCHAR2(32),
    FIELD_NAME    VARCHAR2(32),
    RULE_ID       VARCHAR2(32),
    WEAK_RULE     VARCHAR2(1),
    CHECK_TIME    CHAR(14),
    RECORD_ID     VARCHAR2(32),
    RSV1          VARCHAR2(180),
    RSV2          VARCHAR2(180),
    RSV3          VARCHAR2(180),
    RSV4          VARCHAR2(180),
    RSV5          VARCHAR2(180),
    C_RSV1        VARCHAR2(180),
    C_RSV2        VARCHAR2(180),
    C_RSV3        VARCHAR2(180),
    C_RSV4        VARCHAR2(180),
    C_RSV5        VARCHAR2(180)
)
/

create table CCRS_ITF_RZXBH
(
    DATA_ID        VARCHAR2(64) not null,
    DATA_DATE      VARCHAR2(10),
    DATA_RPT_DATE  VARCHAR2(10),
    CORP_ID        VARCHAR2(14),
    ORG_ID         VARCHAR2(14),
    GROUP_ID       VARCHAR2(14),
    INQ_ORG_ID     CHAR(24),
    INQ_GROUP_ID   CHAR(24),
    SJRQ_DATE      VARCHAR2(10),
    JRJGBM         CHAR(14),
    SXHTBH         VARCHAR2(300),
    SQRMC          VARCHAR2(300),
    SQRZJLX        CHAR(2),
    SQRJJCF        VARCHAR2(5),
    SQRDM          VARCHAR2(50),
    BHBH           VARCHAR2(50),
    BHSXRQ_DATE    VARCHAR2(10),
    BHDQRQ_DATE    VARCHAR2(10),
    BHBZ           CHAR(3),
    BHJE_AMT       NUMBER,
    BHLX           CHAR(2),
    BZJBZ          CHAR(3),
    BZJJE_AMT      NUMBER,
    SXFL           NUMBER,
    REMARKS        VARCHAR2(14),
    CHECK_FLAG     CHAR,
    CHECK_DESC     VARCHAR2(512),
    CHECK_ERR_TYPE CHAR,
    NEXT_ACTION    CHAR(2),
    DATA_STATUS    CHAR(2),
    DATA_FLAG      CHAR,
    DATA_SOURCE    CHAR,
    DATA_VERSION   NUMBER(8),
    DATA_REJ_DESC  VARCHAR2(128),
    DATA_DEL_DESC  VARCHAR2(128),
    DATA_CRT_USER  VARCHAR2(20),
    DATA_CRT_DATE  VARCHAR2(10),
    DATA_CRT_TIME  CHAR(14),
    DATA_CHG_USER  VARCHAR2(20),
    DATA_CHG_DATE  VARCHAR2(10),
    DATA_CHG_TIME  CHAR(14),
    DATA_APV_USER  VARCHAR2(20),
    DATA_APV_DATE  VARCHAR2(10),
    DATA_APV_TIME  CHAR(14),
    RSV1           VARCHAR2(180),
    RSV2           VARCHAR2(180),
    RSV3           VARCHAR2(180),
    RSV4           VARCHAR2(180),
    RSV5           VARCHAR2(180)
)
/

create table CCRS_BM_CHK_E_RZXBH
(
    DATA_ID       VARCHAR2(64),
    ORG_ID        VARCHAR2(14),
    GROUP_ID      VARCHAR2(14),
    DATA_RPT_DATE VARCHAR2(32),
    TABLE_NAME    VARCHAR2(32),
    FIELD_NAME    VARCHAR2(32),
    RULE_ID       VARCHAR2(32),
    WEAK_RULE     VARCHAR2(1),
    CHECK_TIME    CHAR(14),
    RECORD_ID     VARCHAR2(32),
    RSV1          VARCHAR2(180),
    RSV2          VARCHAR2(180),
    RSV3          VARCHAR2(180),
    RSV4          VARCHAR2(180),
    RSV5          VARCHAR2(180),
    C_RSV1        VARCHAR2(180),
    C_RSV2        VARCHAR2(180),
    C_RSV3        VARCHAR2(180),
    C_RSV4        VARCHAR2(180),
    C_RSV5        VARCHAR2(180)
)
/

create table CCRS_ITF_YHCDHPKL
(
    DATA_ID        VARCHAR2(64) not null,
    DATA_DATE      VARCHAR2(10),
    DATA_RPT_DATE  VARCHAR2(10),
    CORP_ID        VARCHAR2(14),
    ORG_ID         VARCHAR2(14),
    GROUP_ID       VARCHAR2(14),
    INQ_ORG_ID     CHAR(24),
    INQ_GROUP_ID   CHAR(24),
    SJRQ_DATE      VARCHAR2(10),
    JRJGBM         CHAR(14),
    YHCDHPBM       VARCHAR2(30),
    SXHTBH         VARCHAR2(300),
    KPQYMC         VARCHAR2(300),
    KPQYZJLX       CHAR(2),
    KPQYDM         VARCHAR2(50),
    KPQYJJCF       VARCHAR2(5),
    BZ             CHAR(3),
    PMJE_AMT       NUMBER,
    CPRQ_DATE      VARCHAR2(10),
    PJDQRQ_DATE    VARCHAR2(10),
    PJSKRMC        VARCHAR2(300),
    PJDBBZ         CHAR(3),
    PJDBJE_AMT     NUMBER,
    PJDBLX         CHAR(2),
    REMARKS        VARCHAR2(14),
    CHECK_FLAG     CHAR,
    CHECK_DESC     VARCHAR2(512),
    CHECK_ERR_TYPE CHAR,
    NEXT_ACTION    CHAR(2),
    DATA_STATUS    CHAR(2),
    DATA_FLAG      CHAR,
    DATA_SOURCE    CHAR,
    DATA_VERSION   NUMBER(8),
    DATA_REJ_DESC  VARCHAR2(128),
    DATA_DEL_DESC  VARCHAR2(128),
    DATA_CRT_USER  VARCHAR2(20),
    DATA_CRT_DATE  VARCHAR2(10),
    DATA_CRT_TIME  CHAR(14),
    DATA_CHG_USER  VARCHAR2(20),
    DATA_CHG_DATE  VARCHAR2(10),
    DATA_CHG_TIME  CHAR(14),
    DATA_APV_USER  VARCHAR2(20),
    DATA_APV_DATE  VARCHAR2(10),
    DATA_APV_TIME  CHAR(14),
    RSV1           VARCHAR2(180),
    RSV2           VARCHAR2(180),
    RSV3           VARCHAR2(180),
    RSV4           VARCHAR2(180),
    RSV5           VARCHAR2(180)
)
/

create table CCRS_BM_CHK_E_YHCDHPKL
(
    DATA_ID       VARCHAR2(64),
    ORG_ID        VARCHAR2(14),
    GROUP_ID      VARCHAR2(14),
    DATA_RPT_DATE VARCHAR2(32),
    TABLE_NAME    VARCHAR2(32),
    FIELD_NAME    VARCHAR2(32),
    RULE_ID       VARCHAR2(32),
    WEAK_RULE     VARCHAR2(1),
    CHECK_TIME    CHAR(14),
    RECORD_ID     VARCHAR2(32),
    RSV1          VARCHAR2(180),
    RSV2          VARCHAR2(180),
    RSV3          VARCHAR2(180),
    RSV4          VARCHAR2(180),
    RSV5          VARCHAR2(180),
    C_RSV1        VARCHAR2(180),
    C_RSV2        VARCHAR2(180),
    C_RSV3        VARCHAR2(180),
    C_RSV4        VARCHAR2(180),
    C_RSV5        VARCHAR2(180)
)
/

create table CCRS_ITF_XYZKL
(
    DATA_ID        VARCHAR2(64) not null,
    DATA_DATE      VARCHAR2(10),
    DATA_RPT_DATE  VARCHAR2(10),
    CORP_ID        VARCHAR2(14),
    ORG_ID         VARCHAR2(14),
    GROUP_ID       VARCHAR2(14),
    INQ_ORG_ID     CHAR(24),
    INQ_GROUP_ID   CHAR(24),
    SJRQ_DATE      VARCHAR2(10),
    JRJGBM         CHAR(14),
    XYZBM          VARCHAR2(50),
    SXHTBH         VARCHAR2(300),
    KZSQRMC        VARCHAR2(300),
    KZSQRZJLX      CHAR(2),
    KZSQRDM        VARCHAR2(50),
    KZSQRJJCF      VARCHAR2(5),
    BZ             CHAR(3),
    XYZJE_AMT      NUMBER,
    XYZKZRQ_DATE   VARCHAR2(10),
    XYZDQRQ_DATE   VARCHAR2(10),
    XYZSKRMC       VARCHAR2(300),
    XYZBZJBZ       CHAR(3),
    XYZBZJJE_AMT   NUMBER,
    REMARKS        VARCHAR2(14),
    CHECK_FLAG     CHAR,
    CHECK_DESC     VARCHAR2(512),
    CHECK_ERR_TYPE CHAR,
    NEXT_ACTION    CHAR(2),
    DATA_STATUS    CHAR(2),
    DATA_FLAG      CHAR,
    DATA_SOURCE    CHAR,
    DATA_VERSION   NUMBER(8),
    DATA_REJ_DESC  VARCHAR2(128),
    DATA_DEL_DESC  VARCHAR2(128),
    DATA_CRT_USER  VARCHAR2(20),
    DATA_CRT_DATE  VARCHAR2(10),
    DATA_CRT_TIME  CHAR(14),
    DATA_CHG_USER  VARCHAR2(20),
    DATA_CHG_DATE  VARCHAR2(10),
    DATA_CHG_TIME  CHAR(14),
    DATA_APV_USER  VARCHAR2(20),
    DATA_APV_DATE  VARCHAR2(10),
    DATA_APV_TIME  CHAR(14),
    RSV1           VARCHAR2(180),
    RSV2           VARCHAR2(180),
    RSV3           VARCHAR2(180),
    RSV4           VARCHAR2(180),
    RSV5           VARCHAR2(180)
)
/

create table CCRS_BM_CHK_E_XYZKL
(
    DATA_ID       VARCHAR2(64),
    ORG_ID        VARCHAR2(14),
    GROUP_ID      VARCHAR2(14),
    DATA_RPT_DATE VARCHAR2(32),
    TABLE_NAME    VARCHAR2(32),
    FIELD_NAME    VARCHAR2(32),
    RULE_ID       VARCHAR2(32),
    WEAK_RULE     VARCHAR2(1),
    CHECK_TIME    CHAR(14),
    RECORD_ID     VARCHAR2(32),
    RSV1          VARCHAR2(180),
    RSV2          VARCHAR2(180),
    RSV3          VARCHAR2(180),
    RSV4          VARCHAR2(180),
    RSV5          VARCHAR2(180),
    C_RSV1        VARCHAR2(180),
    C_RSV2        VARCHAR2(180),
    C_RSV3        VARCHAR2(180),
    C_RSV4        VARCHAR2(180),
    C_RSV5        VARCHAR2(180)
)
/

create table CCRS_ITF_WTDKYE
(
    DATA_ID        VARCHAR2(64) not null,
    DATA_DATE      VARCHAR2(10),
    DATA_RPT_DATE  VARCHAR2(10),
    CORP_ID        VARCHAR2(14),
    ORG_ID         VARCHAR2(14),
    GROUP_ID       VARCHAR2(14),
    INQ_ORG_ID     CHAR(24),
    INQ_GROUP_ID   CHAR(24),
    SJRQ_DATE      VARCHAR2(10),
    JRJGBM         CHAR(14),
    XDHTBH         VARCHAR2(300),
    KHLX           CHAR,
    KHZJLX         CHAR(2),
    JKRDM          VARCHAR2(50),
    WTRZJLX        CHAR(2),
    WTRDM          VARCHAR2(50),
    DKZTHYLB       CHAR,
    WJKRZCDBM      CHAR(12),
    QYCZRJJCF      VARCHAR2(5),
    QYGM           CHAR(4),
    DKJJBM         VARCHAR2(105),
    CPXX           VARCHAR2(10),
    DKSJTX         CHAR(4),
    DKYT           VARCHAR2(1500),
    DKFFRQ_DATE    VARCHAR2(10),
    FFFS           CHAR(2),
    WTDKSXFJE_AMT  NUMBER,
    DKDQRQ_DATE    VARCHAR2(10),
    ZQDQRQ_DATE    VARCHAR2(10),
    BZ             CHAR(3),
    DKYE_AMT       NUMBER,
    LLSFGD         CHAR(4),
    LLSP           NUMBER,
    DKDBFS         VARCHAR2(3),
    DKZL           CHAR(4),
    DKZS           CHAR(4),
    WTDKJJZE_AMT   NUMBER,
    SXBS           CHAR(2),
    RMYHDKZXJCBS   CHAR(50),
    REMARKS        VARCHAR2(14),
    CHECK_FLAG     CHAR,
    CHECK_DESC     VARCHAR2(512),
    CHECK_ERR_TYPE CHAR,
    NEXT_ACTION    CHAR(2),
    DATA_STATUS    CHAR(2),
    DATA_FLAG      CHAR,
    DATA_SOURCE    CHAR,
    DATA_VERSION   NUMBER(8),
    DATA_REJ_DESC  VARCHAR2(128),
    DATA_DEL_DESC  VARCHAR2(128),
    DATA_CRT_USER  VARCHAR2(20),
    DATA_CRT_DATE  VARCHAR2(10),
    DATA_CRT_TIME  CHAR(14),
    DATA_CHG_USER  VARCHAR2(20),
    DATA_CHG_DATE  VARCHAR2(10),
    DATA_CHG_TIME  CHAR(14),
    DATA_APV_USER  VARCHAR2(20),
    DATA_APV_DATE  VARCHAR2(10),
    DATA_APV_TIME  CHAR(14),
    RSV1           VARCHAR2(180),
    RSV2           VARCHAR2(180),
    RSV3           VARCHAR2(180),
    RSV4           VARCHAR2(180),
    RSV5           VARCHAR2(180)
)
/

create table CCRS_BM_CHK_E_WTDKYE
(
    DATA_ID       VARCHAR2(64),
    ORG_ID        VARCHAR2(14),
    GROUP_ID      VARCHAR2(14),
    DATA_RPT_DATE VARCHAR2(32),
    TABLE_NAME    VARCHAR2(32),
    FIELD_NAME    VARCHAR2(32),
    RULE_ID       VARCHAR2(32),
    WEAK_RULE     VARCHAR2(1),
    CHECK_TIME    CHAR(14),
    RECORD_ID     VARCHAR2(32),
    RSV1          VARCHAR2(180),
    RSV2          VARCHAR2(180),
    RSV3          VARCHAR2(180),
    RSV4          VARCHAR2(180),
    RSV5          VARCHAR2(180),
    C_RSV1        VARCHAR2(180),
    C_RSV2        VARCHAR2(180),
    C_RSV3        VARCHAR2(180),
    C_RSV4        VARCHAR2(180),
    C_RSV5        VARCHAR2(180)
)
/

create table CCRS_ITF_WTDKFSE
(
    DATA_ID        VARCHAR2(64) not null,
    DATA_DATE      VARCHAR2(10),
    DATA_RPT_DATE  VARCHAR2(10),
    CORP_ID        VARCHAR2(14),
    ORG_ID         VARCHAR2(14),
    GROUP_ID       VARCHAR2(14),
    INQ_ORG_ID     CHAR(24),
    INQ_GROUP_ID   CHAR(24),
    SJRQ_DATE      VARCHAR2(10),
    JRJGBM         CHAR(14),
    XDHTBH         VARCHAR2(300),
    KHLX           CHAR,
    KHZJLX         CHAR(2),
    JKRDM          VARCHAR2(50),
    DKZTHYLB       CHAR,
    WJKRZCDBM      CHAR(12),
    WTRZJLX        CHAR(2),
    WTRDM          VARCHAR2(50),
    QYCZRJJCF      VARCHAR2(5),
    QYGM           CHAR(4),
    DKJJBM         VARCHAR2(105),
    CPXX           VARCHAR2(10),
    DKSJTX         CHAR(4),
    DKYT           VARCHAR2(1500),
    DKFFRQ_DATE    VARCHAR2(10),
    FFFS           CHAR(2),
    WTDKSXFJE_AMT  NUMBER,
    DKDQRQ_DATE    VARCHAR2(10),
    DKSJZZRQ_DATE  VARCHAR2(10),
    BZ             CHAR(3),
    DKFSJE_AMT     NUMBER,
    LLSFGD         CHAR(4),
    LLSP           NUMBER,
    DKDBFS         VARCHAR2(3),
    DKZS           CHAR(4),
    FFSHBS         CHAR,
    SXBS           CHAR(2),
    RMYHDKZXJCBS   CHAR(50),
    REMARKS        VARCHAR2(14),
    CHECK_FLAG     CHAR,
    CHECK_DESC     VARCHAR2(512),
    CHECK_ERR_TYPE CHAR,
    NEXT_ACTION    CHAR(2),
    DATA_STATUS    CHAR(2),
    DATA_FLAG      CHAR,
    DATA_SOURCE    CHAR,
    DATA_VERSION   NUMBER(8),
    DATA_REJ_DESC  VARCHAR2(128),
    DATA_DEL_DESC  VARCHAR2(128),
    DATA_CRT_USER  VARCHAR2(20),
    DATA_CRT_DATE  VARCHAR2(10),
    DATA_CRT_TIME  CHAR(14),
    DATA_CHG_USER  VARCHAR2(20),
    DATA_CHG_DATE  VARCHAR2(10),
    DATA_CHG_TIME  CHAR(14),
    DATA_APV_USER  VARCHAR2(20),
    DATA_APV_DATE  VARCHAR2(10),
    DATA_APV_TIME  CHAR(14),
    RSV1           VARCHAR2(180),
    RSV2           VARCHAR2(180),
    RSV3           VARCHAR2(180),
    RSV4           VARCHAR2(180),
    RSV5           VARCHAR2(180)
)
/

create table CCRS_BM_CHK_E_WTDKFSE
(
    DATA_ID       VARCHAR2(64),
    ORG_ID        VARCHAR2(14),
    GROUP_ID      VARCHAR2(14),
    DATA_RPT_DATE VARCHAR2(32),
    TABLE_NAME    VARCHAR2(32),
    FIELD_NAME    VARCHAR2(32),
    RULE_ID       VARCHAR2(32),
    WEAK_RULE     VARCHAR2(1),
    CHECK_TIME    CHAR(14),
    RECORD_ID     VARCHAR2(32),
    RSV1          VARCHAR2(180),
    RSV2          VARCHAR2(180),
    RSV3          VARCHAR2(180),
    RSV4          VARCHAR2(180),
    RSV5          VARCHAR2(180),
    C_RSV1        VARCHAR2(180),
    C_RSV2        VARCHAR2(180),
    C_RSV3        VARCHAR2(180),
    C_RSV4        VARCHAR2(180),
    C_RSV5        VARCHAR2(180)
)
/

create table CCRS_ITF_ZQCX
(
    DATA_ID            VARCHAR2(64) not null,
    DATA_DATE          VARCHAR2(10),
    DATA_RPT_DATE      VARCHAR2(10),
    CORP_ID            VARCHAR2(14),
    ORG_ID             VARCHAR2(14),
    GROUP_ID           VARCHAR2(14),
    INQ_ORG_ID         CHAR(24),
    INQ_GROUP_ID       CHAR(24),
    SJRQ_DATE          VARCHAR2(10),
    JRJGBM             CHAR(14),
    SFZCXS             CHAR,
    ZQCXJE_AMT         NUMBER,
    ZQMC               VARCHAR2(300),
    ZQJC               VARCHAR2(300),
    ZQLX               VARCHAR2(4),
    ZQDM               VARCHAR2(20),
    ZQFXBZ             CHAR(3),
    ZQFXJE_AMT         NUMBER,
    ZQFXRZJLX          CHAR(2),
    ZQFXRDM            VARCHAR2(50),
    DQXZQHDMZQFXRZCSZD CHAR(12),
    ZQFXRKGLX          VARCHAR2(5),
    ZQFXRZTHYLB        CHAR,
    ZQFXSZTPJ          CHAR(2),
    ZXPJ               CHAR(2),
    ZQFXRQ_DATE        VARCHAR2(10),
    ZQDQRQ_DATE        VARCHAR2(10),
    ZQQXRQ_DATE        VARCHAR2(10),
    ZQFXLL             NUMBER,
    REMARKS            VARCHAR2(14),
    CHECK_FLAG         CHAR,
    CHECK_DESC         VARCHAR2(512),
    CHECK_ERR_TYPE     CHAR,
    NEXT_ACTION        CHAR(2),
    DATA_STATUS        CHAR(2),
    DATA_FLAG          CHAR,
    DATA_SOURCE        CHAR,
    DATA_VERSION       NUMBER(8),
    DATA_REJ_DESC      VARCHAR2(128),
    DATA_DEL_DESC      VARCHAR2(128),
    DATA_CRT_USER      VARCHAR2(20),
    DATA_CRT_DATE      VARCHAR2(10),
    DATA_CRT_TIME      CHAR(14),
    DATA_CHG_USER      VARCHAR2(20),
    DATA_CHG_DATE      VARCHAR2(10),
    DATA_CHG_TIME      CHAR(14),
    DATA_APV_USER      VARCHAR2(20),
    DATA_APV_DATE      VARCHAR2(10),
    DATA_APV_TIME      CHAR(14),
    RSV1               VARCHAR2(180),
    RSV2               VARCHAR2(180),
    RSV3               VARCHAR2(180),
    RSV4               VARCHAR2(180),
    RSV5               VARCHAR2(180)
)
/

create table CCRS_BM_CHK_E_ZQCX
(
    DATA_ID       VARCHAR2(64),
    ORG_ID        VARCHAR2(14),
    GROUP_ID      VARCHAR2(14),
    DATA_RPT_DATE VARCHAR2(32),
    TABLE_NAME    VARCHAR2(32),
    FIELD_NAME    VARCHAR2(32),
    RULE_ID       VARCHAR2(32),
    WEAK_RULE     VARCHAR2(1),
    CHECK_TIME    CHAR(14),
    RECORD_ID     VARCHAR2(32),
    RSV1          VARCHAR2(180),
    RSV2          VARCHAR2(180),
    RSV3          VARCHAR2(180),
    RSV4          VARCHAR2(180),
    RSV5          VARCHAR2(180),
    C_RSV1        VARCHAR2(180),
    C_RSV2        VARCHAR2(180),
    C_RSV3        VARCHAR2(180),
    C_RSV4        VARCHAR2(180),
    C_RSV5        VARCHAR2(180)
)
/

create table CCRS_ITF_ZQCY
(
    DATA_ID        VARCHAR2(64) not null,
    DATA_DATE      VARCHAR2(10),
    DATA_RPT_DATE  VARCHAR2(10),
    CORP_ID        VARCHAR2(14),
    ORG_ID         VARCHAR2(14),
    GROUP_ID       VARCHAR2(14),
    INQ_ORG_ID     CHAR(24),
    INQ_GROUP_ID   CHAR(24),
    SJRQ_DATE      VARCHAR2(10),
    JRJGBM         CHAR(14),
    ZQDM           VARCHAR2(20),
    ZQJC           VARCHAR2(300),
    ZQLX           VARCHAR2(4),
    ZQCYRQ_DATE    VARCHAR2(10),
    ZQCYDQRQ_DATE  VARCHAR2(10),
    JYDSMC         VARCHAR2(300),
    ZQJYFS         VARCHAR2(4),
    CCBZ           CHAR(3),
    ZQPMJE_AMT     NUMBER,
    JYJJ_AMT       NUMBER,
    TJSDGZJJ_AMT   NUMBER,
    ZQFXRMC        VARCHAR2(300),
    ZQFXRZJLX      CHAR(2),
    ZQFXRDM        VARCHAR2(50),
    ZQFXRKGLX      VARCHAR2(5),
    ZQFXRZTHYLB    CHAR,
    ZQFXRQ_DATE    VARCHAR2(10),
    ZQDQRQ_DATE    VARCHAR2(10),
    ZQFXRSCJYQK    CHAR(2),
    REMARKS        VARCHAR2(14),
    CHECK_FLAG     CHAR,
    CHECK_DESC     VARCHAR2(512),
    CHECK_ERR_TYPE CHAR,
    NEXT_ACTION    CHAR(2),
    DATA_STATUS    CHAR(2),
    DATA_FLAG      CHAR,
    DATA_SOURCE    CHAR,
    DATA_VERSION   NUMBER(8),
    DATA_REJ_DESC  VARCHAR2(128),
    DATA_DEL_DESC  VARCHAR2(128),
    DATA_CRT_USER  VARCHAR2(20),
    DATA_CRT_DATE  VARCHAR2(10),
    DATA_CRT_TIME  CHAR(14),
    DATA_CHG_USER  VARCHAR2(20),
    DATA_CHG_DATE  VARCHAR2(10),
    DATA_CHG_TIME  CHAR(14),
    DATA_APV_USER  VARCHAR2(20),
    DATA_APV_DATE  VARCHAR2(10),
    DATA_APV_TIME  CHAR(14),
    RSV1           VARCHAR2(180),
    RSV2           VARCHAR2(180),
    RSV3           VARCHAR2(180),
    RSV4           VARCHAR2(180),
    RSV5           VARCHAR2(180)
)
/

create table CCRS_BM_CHK_E_ZQCY
(
    DATA_ID       VARCHAR2(64),
    ORG_ID        VARCHAR2(14),
    GROUP_ID      VARCHAR2(14),
    DATA_RPT_DATE VARCHAR2(32),
    TABLE_NAME    VARCHAR2(32),
    FIELD_NAME    VARCHAR2(32),
    RULE_ID       VARCHAR2(32),
    WEAK_RULE     VARCHAR2(1),
    CHECK_TIME    CHAR(14),
    RECORD_ID     VARCHAR2(32),
    RSV1          VARCHAR2(180),
    RSV2          VARCHAR2(180),
    RSV3          VARCHAR2(180),
    RSV4          VARCHAR2(180),
    RSV5          VARCHAR2(180),
    C_RSV1        VARCHAR2(180),
    C_RSV2        VARCHAR2(180),
    C_RSV3        VARCHAR2(180),
    C_RSV4        VARCHAR2(180),
    C_RSV5        VARCHAR2(180)
)
/

create table CCRS_ITF_JRJGXXBCB
(
    DATA_ID           VARCHAR2(64) not null,
    DATA_DATE         VARCHAR2(10),
    DATA_RPT_DATE     VARCHAR2(10),
    CORP_ID           VARCHAR2(14),
    ORG_ID            VARCHAR2(14),
    GROUP_ID          VARCHAR2(14),
    INQ_ORG_ID        CHAR(24),
    INQ_GROUP_ID      CHAR(24),
    JRJGBM            CHAR(14),
    JRJGMC            VARCHAR2(300),
    ZCDQXZQHDM        CHAR(12),
    HX1MC             CHAR(2),
    HX2MC             CHAR(2),
    JD                VARCHAR2(11),
    WD                VARCHAR2(10),
    D1DGDMC           VARCHAR2(600),
    D1DGDZJLX         CHAR(2),
    D1DGDZJHM         VARCHAR2(50),
    D1DGDZJYXQX_DATE  VARCHAR2(10),
    D2DGDMC           VARCHAR2(600),
    D2DGDZJLX         CHAR(2),
    D2DGDZJHM         VARCHAR2(50),
    D2DGDZJYXQX_DATE  VARCHAR2(10),
    D3DGDMC           VARCHAR2(600),
    D3DGDZJLX         CHAR(2),
    D3DGDZJHM         VARCHAR2(50),
    D3DGDZJYXQX_DATE  VARCHAR2(10),
    D4DGDMC           VARCHAR2(600),
    D4DGDZJLX         CHAR(2),
    D4DGDZJHM         VARCHAR2(50),
    D4DGDZJYXQX_DATE  VARCHAR2(10),
    D5DGDMC           VARCHAR2(600),
    D5DGDZJLX         CHAR(2),
    D5DGDZJHM         VARCHAR2(50),
    D5DGDZJYXQX_DATE  VARCHAR2(10),
    D6DGDMC           VARCHAR2(600),
    D6DGDZJLX         CHAR(2),
    D6DGDZJHM         VARCHAR2(50),
    D6DGDZJYXQX_DATE  VARCHAR2(10),
    D7DGDMC           VARCHAR2(600),
    D7DGDZJLX         CHAR(2),
    D7DGDZJHM         VARCHAR2(50),
    D7DGDZJYXQX_DATE  VARCHAR2(10),
    D8DGDMC           VARCHAR2(600),
    D8DGDZJLX         CHAR(2),
    D8DGDZJHM         VARCHAR2(50),
    D8DGDZJYXQX_DATE  VARCHAR2(10),
    D9DGDMC           VARCHAR2(600),
    D9DGDZJLX         CHAR(2),
    D9DGDZJHM         VARCHAR2(50),
    D9DGDZJYXQX_DATE  VARCHAR2(10),
    D10DGDMC          VARCHAR2(600),
    D10DGDZJLX        CHAR(2),
    D10DGDZJHM        VARCHAR2(50),
    D10DGDZJYXQX_DATE VARCHAR2(10),
    SJRQ_DATE         VARCHAR2(10),
    REMARKS           VARCHAR2(14),
    CHECK_FLAG        CHAR,
    CHECK_DESC        VARCHAR2(512),
    CHECK_ERR_TYPE    CHAR,
    NEXT_ACTION       CHAR(2),
    DATA_STATUS       CHAR(2),
    DATA_FLAG         CHAR,
    DATA_SOURCE       CHAR,
    DATA_VERSION      NUMBER(8),
    DATA_REJ_DESC     VARCHAR2(128),
    DATA_DEL_DESC     VARCHAR2(128),
    DATA_CRT_USER     VARCHAR2(20),
    DATA_CRT_DATE     VARCHAR2(10),
    DATA_CRT_TIME     CHAR(14),
    DATA_CHG_USER     VARCHAR2(20),
    DATA_CHG_DATE     VARCHAR2(10),
    DATA_CHG_TIME     CHAR(14),
    DATA_APV_USER     VARCHAR2(20),
    DATA_APV_DATE     VARCHAR2(10),
    DATA_APV_TIME     CHAR(14),
    RSV1              VARCHAR2(180),
    RSV2              VARCHAR2(180),
    RSV3              VARCHAR2(180),
    RSV4              VARCHAR2(180),
    RSV5              VARCHAR2(180)
)
/

create table CCRS_BM_CHK_E_JRJGXXBCB
(
    DATA_ID       VARCHAR2(64),
    ORG_ID        VARCHAR2(14),
    GROUP_ID      VARCHAR2(14),
    DATA_RPT_DATE VARCHAR2(32),
    TABLE_NAME    VARCHAR2(32),
    FIELD_NAME    VARCHAR2(32),
    RULE_ID       VARCHAR2(32),
    WEAK_RULE     VARCHAR2(1),
    CHECK_TIME    CHAR(14),
    RECORD_ID     VARCHAR2(32),
    RSV1          VARCHAR2(180),
    RSV2          VARCHAR2(180),
    RSV3          VARCHAR2(180),
    RSV4          VARCHAR2(180),
    RSV5          VARCHAR2(180),
    C_RSV1        VARCHAR2(180),
    C_RSV2        VARCHAR2(180),
    C_RSV3        VARCHAR2(180),
    C_RSV4        VARCHAR2(180),
    C_RSV5        VARCHAR2(180)
)
/

create table CCRS_ITF_ZDKSYQK
(
    DATA_ID        VARCHAR2(64) not null,
    DATA_DATE      VARCHAR2(10),
    DATA_RPT_DATE  VARCHAR2(10),
    CORP_ID        VARCHAR2(14),
    ORG_ID         VARCHAR2(14),
    GROUP_ID       VARCHAR2(14),
    INQ_ORG_ID     CHAR(24),
    INQ_GROUP_ID   CHAR(24),
    SJRQ_DATE      VARCHAR2(10),
    JRJGBM         CHAR(14),
    DKJJBM         VARCHAR2(105),
    ZDKLX          CHAR(2),
    WBZXFS         CHAR(2),
    DKHXXX         CHAR(2),
    DDPKRKS        NUMBER(8),
    ZDKHTBH        VARCHAR2(300),
    ZDKFFMS        CHAR(2),
    DDJDLKPKHFS    CHAR(2),
    DDFPLYLX       CHAR(2),
    RMYHZDKZXJCBS  CHAR(50),
    REMARKS        VARCHAR2(14),
    CHECK_FLAG     CHAR,
    CHECK_DESC     VARCHAR2(512),
    CHECK_ERR_TYPE CHAR,
    NEXT_ACTION    CHAR(2),
    DATA_STATUS    CHAR(2),
    DATA_FLAG      CHAR,
    DATA_SOURCE    CHAR,
    DATA_VERSION   NUMBER(8),
    DATA_REJ_DESC  VARCHAR2(128),
    DATA_DEL_DESC  VARCHAR2(128),
    DATA_CRT_USER  VARCHAR2(20),
    DATA_CRT_DATE  VARCHAR2(10),
    DATA_CRT_TIME  CHAR(14),
    DATA_CHG_USER  VARCHAR2(20),
    DATA_CHG_DATE  VARCHAR2(10),
    DATA_CHG_TIME  CHAR(14),
    DATA_APV_USER  VARCHAR2(20),
    DATA_APV_DATE  VARCHAR2(10),
    DATA_APV_TIME  CHAR(14),
    RSV1           VARCHAR2(180),
    RSV2           VARCHAR2(180),
    RSV3           VARCHAR2(180),
    RSV4           VARCHAR2(180),
    RSV5           VARCHAR2(180)
)
/

create table CCRS_BM_CHK_E_ZDKSYQK
(
    DATA_ID       VARCHAR2(64),
    ORG_ID        VARCHAR2(14),
    GROUP_ID      VARCHAR2(14),
    DATA_RPT_DATE VARCHAR2(32),
    TABLE_NAME    VARCHAR2(32),
    FIELD_NAME    VARCHAR2(32),
    RULE_ID       VARCHAR2(32),
    WEAK_RULE     VARCHAR2(1),
    CHECK_TIME    CHAR(14),
    RECORD_ID     VARCHAR2(32),
    RSV1          VARCHAR2(180),
    RSV2          VARCHAR2(180),
    RSV3          VARCHAR2(180),
    RSV4          VARCHAR2(180),
    RSV5          VARCHAR2(180),
    C_RSV1        VARCHAR2(180),
    C_RSV2        VARCHAR2(180),
    C_RSV3        VARCHAR2(180),
    C_RSV4        VARCHAR2(180),
    C_RSV5        VARCHAR2(180)
)
/

create table CCRS_ITF_PSLDYZCQD
(
    DATA_ID          VARCHAR2(64) not null,
    DATA_DATE        VARCHAR2(10),
    DATA_RPT_DATE    VARCHAR2(10),
    CORP_ID          VARCHAR2(14),
    ORG_ID           VARCHAR2(14),
    GROUP_ID         VARCHAR2(14),
    INQ_ORG_ID       CHAR(24),
    INQ_GROUP_ID     CHAR(24),
    SJRQ_DATE        VARCHAR2(10),
    JRJGBM           CHAR(14),
    DKJJBM           VARCHAR2(105),
    SFSSZC           CHAR,
    SFBZYDJ          CHAR,
    JYNSFYWFWYHMDJL  CHAR,
    XMMC             VARCHAR2(300),
    RMYHDYBCDKZXJCBS CHAR(50),
    REMARKS          VARCHAR2(14),
    CHECK_FLAG       CHAR,
    CHECK_DESC       VARCHAR2(512),
    CHECK_ERR_TYPE   CHAR,
    NEXT_ACTION      CHAR(2),
    DATA_STATUS      CHAR(2),
    DATA_FLAG        CHAR,
    DATA_SOURCE      CHAR,
    DATA_VERSION     NUMBER(8),
    DATA_REJ_DESC    VARCHAR2(128),
    DATA_DEL_DESC    VARCHAR2(128),
    DATA_CRT_USER    VARCHAR2(20),
    DATA_CRT_DATE    VARCHAR2(10),
    DATA_CRT_TIME    CHAR(14),
    DATA_CHG_USER    VARCHAR2(20),
    DATA_CHG_DATE    VARCHAR2(10),
    DATA_CHG_TIME    CHAR(14),
    DATA_APV_USER    VARCHAR2(20),
    DATA_APV_DATE    VARCHAR2(10),
    DATA_APV_TIME    CHAR(14),
    RSV1             VARCHAR2(180),
    RSV2             VARCHAR2(180),
    RSV3             VARCHAR2(180),
    RSV4             VARCHAR2(180),
    RSV5             VARCHAR2(180)
)
/

create table CCRS_BM_CHK_E_PSLDYZCQD
(
    DATA_ID       VARCHAR2(64),
    ORG_ID        VARCHAR2(14),
    GROUP_ID      VARCHAR2(14),
    DATA_RPT_DATE VARCHAR2(32),
    TABLE_NAME    VARCHAR2(32),
    FIELD_NAME    VARCHAR2(32),
    RULE_ID       VARCHAR2(32),
    WEAK_RULE     VARCHAR2(1),
    CHECK_TIME    CHAR(14),
    RECORD_ID     VARCHAR2(32),
    RSV1          VARCHAR2(180),
    RSV2          VARCHAR2(180),
    RSV3          VARCHAR2(180),
    RSV4          VARCHAR2(180),
    RSV5          VARCHAR2(180),
    C_RSV1        VARCHAR2(180),
    C_RSV2        VARCHAR2(180),
    C_RSV3        VARCHAR2(180),
    C_RSV4        VARCHAR2(180),
    C_RSV5        VARCHAR2(180)
)
/

create table CCRS_ITF_DYBCDKQD
(
    DATA_ID          VARCHAR2(64) not null,
    DATA_DATE        VARCHAR2(10),
    DATA_RPT_DATE    VARCHAR2(10),
    CORP_ID          VARCHAR2(14),
    ORG_ID           VARCHAR2(14),
    GROUP_ID         VARCHAR2(14),
    INQ_ORG_ID       CHAR(24),
    INQ_GROUP_ID     CHAR(24),
    SJRQ_DATE        VARCHAR2(10),
    JRJGBM           CHAR(14),
    DKJJBM           VARCHAR2(105),
    XDHTQYRQ_DATE    VARCHAR2(10),
    XMMC             VARCHAR2(300),
    XMSZD            VARCHAR2(300),
    XMZHTJE_AMT      NUMBER,
    SJYKDW           VARCHAR2(300),
    DYBCDKLJZFJE_AMT NUMBER,
    RMYHDYBCDKZXJCBS CHAR(50),
    REMARKS          VARCHAR2(14),
    CHECK_FLAG       CHAR,
    CHECK_DESC       VARCHAR2(512),
    CHECK_ERR_TYPE   CHAR,
    NEXT_ACTION      CHAR(2),
    DATA_STATUS      CHAR(2),
    DATA_FLAG        CHAR,
    DATA_SOURCE      CHAR,
    DATA_VERSION     NUMBER(8),
    DATA_REJ_DESC    VARCHAR2(128),
    DATA_DEL_DESC    VARCHAR2(128),
    DATA_CRT_USER    VARCHAR2(20),
    DATA_CRT_DATE    VARCHAR2(10),
    DATA_CRT_TIME    CHAR(14),
    DATA_CHG_USER    VARCHAR2(20),
    DATA_CHG_DATE    VARCHAR2(10),
    DATA_CHG_TIME    CHAR(14),
    DATA_APV_USER    VARCHAR2(20),
    DATA_APV_DATE    VARCHAR2(10),
    DATA_APV_TIME    CHAR(14),
    RSV1             VARCHAR2(180),
    RSV2             VARCHAR2(180),
    RSV3             VARCHAR2(180),
    RSV4             VARCHAR2(180),
    RSV5             VARCHAR2(180)
)
/

create table CCRS_BM_CHK_E_DYBCDKQD
(
    DATA_ID       VARCHAR2(64),
    ORG_ID        VARCHAR2(14),
    GROUP_ID      VARCHAR2(14),
    DATA_RPT_DATE VARCHAR2(32),
    TABLE_NAME    VARCHAR2(32),
    FIELD_NAME    VARCHAR2(32),
    RULE_ID       VARCHAR2(32),
    WEAK_RULE     VARCHAR2(1),
    CHECK_TIME    CHAR(14),
    RECORD_ID     VARCHAR2(32),
    RSV1          VARCHAR2(180),
    RSV2          VARCHAR2(180),
    RSV3          VARCHAR2(180),
    RSV4          VARCHAR2(180),
    RSV5          VARCHAR2(180),
    C_RSV1        VARCHAR2(180),
    C_RSV2        VARCHAR2(180),
    C_RSV3        VARCHAR2(180),
    C_RSV4        VARCHAR2(180),
    C_RSV5        VARCHAR2(180)
)
/

create table CCRS_ITF_ZDXMZJPHJCBFSE
(
    DATA_ID        VARCHAR2(64) not null,
    DATA_DATE      VARCHAR2(10),
    DATA_RPT_DATE  VARCHAR2(10),
    CORP_ID        VARCHAR2(14),
    ORG_ID         VARCHAR2(14),
    GROUP_ID       VARCHAR2(14),
    INQ_ORG_ID     CHAR(24),
    INQ_GROUP_ID   CHAR(24),
    SJRQ_DATE      VARCHAR2(10),
    JRJGBM         CHAR(14),
    XMMC           VARCHAR2(300),
    DKJJBM         VARCHAR2(105),
    YHCDHPBM       VARCHAR2(30),
    WTDKDKJJBM     VARCHAR2(105),
    YHCXZQDM       VARCHAR2(20),
    REMARKS        VARCHAR2(14),
    CHECK_FLAG     CHAR,
    CHECK_DESC     VARCHAR2(512),
    CHECK_ERR_TYPE CHAR,
    NEXT_ACTION    CHAR(2),
    DATA_STATUS    CHAR(2),
    DATA_FLAG      CHAR,
    DATA_SOURCE    CHAR,
    DATA_VERSION   NUMBER(8),
    DATA_REJ_DESC  VARCHAR2(128),
    DATA_DEL_DESC  VARCHAR2(128),
    DATA_CRT_USER  VARCHAR2(20),
    DATA_CRT_DATE  VARCHAR2(10),
    DATA_CRT_TIME  CHAR(14),
    DATA_CHG_USER  VARCHAR2(20),
    DATA_CHG_DATE  VARCHAR2(10),
    DATA_CHG_TIME  CHAR(14),
    DATA_APV_USER  VARCHAR2(20),
    DATA_APV_DATE  VARCHAR2(10),
    DATA_APV_TIME  CHAR(14),
    RSV1           VARCHAR2(180),
    RSV2           VARCHAR2(180),
    RSV3           VARCHAR2(180),
    RSV4           VARCHAR2(180),
    RSV5           VARCHAR2(180)
)
/

create table CCRS_BM_CHK_E_ZDXMZJPHJCBFSE
(
    DATA_ID       VARCHAR2(64),
    ORG_ID        VARCHAR2(14),
    GROUP_ID      VARCHAR2(14),
    DATA_RPT_DATE VARCHAR2(32),
    TABLE_NAME    VARCHAR2(32),
    FIELD_NAME    VARCHAR2(32),
    RULE_ID       VARCHAR2(32),
    WEAK_RULE     VARCHAR2(1),
    CHECK_TIME    CHAR(14),
    RECORD_ID     VARCHAR2(32),
    RSV1          VARCHAR2(180),
    RSV2          VARCHAR2(180),
    RSV3          VARCHAR2(180),
    RSV4          VARCHAR2(180),
    RSV5          VARCHAR2(180),
    C_RSV1        VARCHAR2(180),
    C_RSV2        VARCHAR2(180),
    C_RSV3        VARCHAR2(180),
    C_RSV4        VARCHAR2(180),
    C_RSV5        VARCHAR2(180)
)
/

create table CCRS_ITF_PPPZDXMRZQK
(
    DATA_ID        VARCHAR2(64) not null,
    DATA_DATE      VARCHAR2(10),
    DATA_RPT_DATE  VARCHAR2(10),
    CORP_ID        VARCHAR2(14),
    ORG_ID         VARCHAR2(14),
    GROUP_ID       VARCHAR2(14),
    INQ_ORG_ID     CHAR(24),
    INQ_GROUP_ID   CHAR(24),
    SJRQ_DATE      VARCHAR2(10),
    JRJGBM         CHAR(14),
    XMMC           VARCHAR2(300),
    DKJJBM         VARCHAR2(300),
    REMARKS        VARCHAR2(14),
    CHECK_FLAG     CHAR,
    CHECK_DESC     VARCHAR2(512),
    CHECK_ERR_TYPE CHAR,
    NEXT_ACTION    CHAR(2),
    DATA_STATUS    CHAR(2),
    DATA_FLAG      CHAR,
    DATA_SOURCE    CHAR,
    DATA_VERSION   NUMBER(8),
    DATA_REJ_DESC  VARCHAR2(128),
    DATA_DEL_DESC  VARCHAR2(128),
    DATA_CRT_USER  VARCHAR2(20),
    DATA_CRT_DATE  VARCHAR2(10),
    DATA_CRT_TIME  CHAR(14),
    DATA_CHG_USER  VARCHAR2(20),
    DATA_CHG_DATE  VARCHAR2(10),
    DATA_CHG_TIME  CHAR(14),
    DATA_APV_USER  VARCHAR2(20),
    DATA_APV_DATE  VARCHAR2(10),
    DATA_APV_TIME  CHAR(14),
    RSV1           VARCHAR2(180),
    RSV2           VARCHAR2(180),
    RSV3           VARCHAR2(180),
    RSV4           VARCHAR2(180),
    RSV5           VARCHAR2(180)
)
/

create table CCRS_BM_CHK_E_PPPZDXMRZQK
(
    DATA_ID       VARCHAR2(64),
    ORG_ID        VARCHAR2(14),
    GROUP_ID      VARCHAR2(14),
    DATA_RPT_DATE VARCHAR2(32),
    TABLE_NAME    VARCHAR2(32),
    FIELD_NAME    VARCHAR2(32),
    RULE_ID       VARCHAR2(32),
    WEAK_RULE     VARCHAR2(1),
    CHECK_TIME    CHAR(14),
    RECORD_ID     VARCHAR2(32),
    RSV1          VARCHAR2(180),
    RSV2          VARCHAR2(180),
    RSV3          VARCHAR2(180),
    RSV4          VARCHAR2(180),
    RSV5          VARCHAR2(180),
    C_RSV1        VARCHAR2(180),
    C_RSV2        VARCHAR2(180),
    C_RSV3        VARCHAR2(180),
    C_RSV4        VARCHAR2(180),
    C_RSV5        VARCHAR2(180)
)
/

create table CCRS_ITF_YSZKZYDK
(
    DATA_ID          VARCHAR2(64) not null,
    DATA_DATE        VARCHAR2(10),
    DATA_RPT_DATE    VARCHAR2(10),
    CORP_ID          VARCHAR2(14),
    ORG_ID           VARCHAR2(14),
    GROUP_ID         VARCHAR2(14),
    INQ_ORG_ID       CHAR(24),
    INQ_GROUP_ID     CHAR(24),
    SJRQ_DATE        VARCHAR2(10),
    JRJGBM           CHAR(14),
    DKJJBM           VARCHAR2(105),
    ZYDBLX           CHAR(2),
    YSZKZWRMC        VARCHAR2(600),
    YSZKZWRZJLX      CHAR(2),
    YSZKZWRZJHM      VARCHAR2(50),
    YSZKZQJE_AMT     NUMBER,
    YSZKDZYL         NUMBER,
    DCRZTYDJZMWJBH   VARCHAR2(300),
    SFSYQ            CHAR,
    YSZKSFTGZZPSWCRZ CHAR,
    REMARKS          VARCHAR2(14),
    CHECK_FLAG       CHAR,
    CHECK_DESC       VARCHAR2(512),
    CHECK_ERR_TYPE   CHAR,
    NEXT_ACTION      CHAR(2),
    DATA_STATUS      CHAR(2),
    DATA_FLAG        CHAR,
    DATA_SOURCE      CHAR,
    DATA_VERSION     NUMBER(8),
    DATA_REJ_DESC    VARCHAR2(128),
    DATA_DEL_DESC    VARCHAR2(128),
    DATA_CRT_USER    VARCHAR2(20),
    DATA_CRT_DATE    VARCHAR2(10),
    DATA_CRT_TIME    CHAR(14),
    DATA_CHG_USER    VARCHAR2(20),
    DATA_CHG_DATE    VARCHAR2(10),
    DATA_CHG_TIME    CHAR(14),
    DATA_APV_USER    VARCHAR2(20),
    DATA_APV_DATE    VARCHAR2(10),
    DATA_APV_TIME    CHAR(14),
    RSV1             VARCHAR2(180),
    RSV2             VARCHAR2(180),
    RSV3             VARCHAR2(180),
    RSV4             VARCHAR2(180),
    RSV5             VARCHAR2(180)
)
/

create table CCRS_BM_CHK_E_YSZKZYDK
(
    DATA_ID       VARCHAR2(64),
    ORG_ID        VARCHAR2(14),
    GROUP_ID      VARCHAR2(14),
    DATA_RPT_DATE VARCHAR2(32),
    TABLE_NAME    VARCHAR2(32),
    FIELD_NAME    VARCHAR2(32),
    RULE_ID       VARCHAR2(32),
    WEAK_RULE     VARCHAR2(1),
    CHECK_TIME    CHAR(14),
    RECORD_ID     VARCHAR2(32),
    RSV1          VARCHAR2(180),
    RSV2          VARCHAR2(180),
    RSV3          VARCHAR2(180),
    RSV4          VARCHAR2(180),
    RSV5          VARCHAR2(180),
    C_RSV1        VARCHAR2(180),
    C_RSV2        VARCHAR2(180),
    C_RSV3        VARCHAR2(180),
    C_RSV4        VARCHAR2(180),
    C_RSV5        VARCHAR2(180)
)
/

create table CCRS_ITF_ZSCQZYDK
(
    DATA_ID        VARCHAR2(64) not null,
    DATA_DATE      VARCHAR2(10),
    DATA_RPT_DATE  VARCHAR2(10),
    CORP_ID        VARCHAR2(14),
    ORG_ID         VARCHAR2(14),
    GROUP_ID       VARCHAR2(14),
    INQ_ORG_ID     CHAR(24),
    INQ_GROUP_ID   CHAR(24),
    SJRQ_DATE      VARCHAR2(10),
    JRJGBM         CHAR(14),
    DKJJBM         VARCHAR2(105),
    ZYDBLX         CHAR(2),
    ZSCQLX         CHAR(2),
    ZSCQBH         VARCHAR2(600),
    ZSCQJZPGFS     CHAR(2),
    REMARKS        VARCHAR2(14),
    CHECK_FLAG     CHAR,
    CHECK_DESC     VARCHAR2(512),
    CHECK_ERR_TYPE CHAR,
    NEXT_ACTION    CHAR(2),
    DATA_STATUS    CHAR(2),
    DATA_FLAG      CHAR,
    DATA_SOURCE    CHAR,
    DATA_VERSION   NUMBER(8),
    DATA_REJ_DESC  VARCHAR2(128),
    DATA_DEL_DESC  VARCHAR2(128),
    DATA_CRT_USER  VARCHAR2(20),
    DATA_CRT_DATE  VARCHAR2(10),
    DATA_CRT_TIME  CHAR(14),
    DATA_CHG_USER  VARCHAR2(20),
    DATA_CHG_DATE  VARCHAR2(10),
    DATA_CHG_TIME  CHAR(14),
    DATA_APV_USER  VARCHAR2(20),
    DATA_APV_DATE  VARCHAR2(10),
    DATA_APV_TIME  CHAR(14),
    RSV1           VARCHAR2(180),
    RSV2           VARCHAR2(180),
    RSV3           VARCHAR2(180),
    RSV4           VARCHAR2(180),
    RSV5           VARCHAR2(180)
)
/

create table CCRS_BM_CHK_E_ZSCQZYDK
(
    DATA_ID       VARCHAR2(64),
    ORG_ID        VARCHAR2(14),
    GROUP_ID      VARCHAR2(14),
    DATA_RPT_DATE VARCHAR2(32),
    TABLE_NAME    VARCHAR2(32),
    FIELD_NAME    VARCHAR2(32),
    RULE_ID       VARCHAR2(32),
    WEAK_RULE     VARCHAR2(1),
    CHECK_TIME    CHAR(14),
    RECORD_ID     VARCHAR2(32),
    RSV1          VARCHAR2(180),
    RSV2          VARCHAR2(180),
    RSV3          VARCHAR2(180),
    RSV4          VARCHAR2(180),
    RSV5          VARCHAR2(180),
    C_RSV1        VARCHAR2(180),
    C_RSV2        VARCHAR2(180),
    C_RSV3        VARCHAR2(180),
    C_RSV4        VARCHAR2(180),
    C_RSV5        VARCHAR2(180)
)
/

create table CCRS_ITF_ZQCXPZ
(
    DATA_ID        VARCHAR2(64) not null,
    DATA_DATE      VARCHAR2(10),
    DATA_RPT_DATE  VARCHAR2(10),
    CORP_ID        VARCHAR2(14),
    ORG_ID         VARCHAR2(14),
    GROUP_ID       VARCHAR2(14),
    INQ_ORG_ID     CHAR(24),
    INQ_GROUP_ID   CHAR(24),
    SJRQ_DATE      VARCHAR2(10),
    JRJGBM         CHAR(14),
    ZQDM           VARCHAR2(20),
    CXPZ           CHAR(2),
    REMARKS        VARCHAR2(14),
    CHECK_FLAG     CHAR,
    CHECK_DESC     VARCHAR2(512),
    CHECK_ERR_TYPE CHAR,
    NEXT_ACTION    CHAR(2),
    DATA_STATUS    CHAR(2),
    DATA_FLAG      CHAR,
    DATA_SOURCE    CHAR,
    DATA_VERSION   NUMBER(8),
    DATA_REJ_DESC  VARCHAR2(128),
    DATA_DEL_DESC  VARCHAR2(128),
    DATA_CRT_USER  VARCHAR2(20),
    DATA_CRT_DATE  VARCHAR2(10),
    DATA_CRT_TIME  CHAR(14),
    DATA_CHG_USER  VARCHAR2(20),
    DATA_CHG_DATE  VARCHAR2(10),
    DATA_CHG_TIME  CHAR(14),
    DATA_APV_USER  VARCHAR2(20),
    DATA_APV_DATE  VARCHAR2(10),
    DATA_APV_TIME  CHAR(14),
    RSV1           VARCHAR2(180),
    RSV2           VARCHAR2(180),
    RSV3           VARCHAR2(180),
    RSV4           VARCHAR2(180),
    RSV5           VARCHAR2(180)
)
/

create table CCRS_BM_CHK_E_ZQCXPZ
(
    DATA_ID       VARCHAR2(64),
    ORG_ID        VARCHAR2(14),
    GROUP_ID      VARCHAR2(14),
    DATA_RPT_DATE VARCHAR2(32),
    TABLE_NAME    VARCHAR2(32),
    FIELD_NAME    VARCHAR2(32),
    RULE_ID       VARCHAR2(32),
    WEAK_RULE     VARCHAR2(1),
    CHECK_TIME    CHAR(14),
    RECORD_ID     VARCHAR2(32),
    RSV1          VARCHAR2(180),
    RSV2          VARCHAR2(180),
    RSV3          VARCHAR2(180),
    RSV4          VARCHAR2(180),
    RSV5          VARCHAR2(180),
    C_RSV1        VARCHAR2(180),
    C_RSV2        VARCHAR2(180),
    C_RSV3        VARCHAR2(180),
    C_RSV4        VARCHAR2(180),
    C_RSV5        VARCHAR2(180)
)
/

create table CCRS_ITF_ZXZQZCTDLYFZQK
(
    DATA_ID        VARCHAR2(64) not null,
    DATA_DATE      VARCHAR2(10),
    DATA_RPT_DATE  VARCHAR2(10),
    CORP_ID        VARCHAR2(14),
    ORG_ID         VARCHAR2(14),
    GROUP_ID       VARCHAR2(14),
    INQ_ORG_ID     CHAR(24),
    INQ_GROUP_ID   CHAR(24),
    SJRQ_DATE      VARCHAR2(10),
    JRJGBM         CHAR(14),
    DKJJBM         VARCHAR2(105),
    ZJLY           CHAR(2),
    ZXZQDKYT       VARCHAR2(4),
    REMARKS        VARCHAR2(14),
    CHECK_FLAG     CHAR,
    CHECK_DESC     VARCHAR2(512),
    CHECK_ERR_TYPE CHAR,
    NEXT_ACTION    CHAR(2),
    DATA_STATUS    CHAR(2),
    DATA_FLAG      CHAR,
    DATA_SOURCE    CHAR,
    DATA_VERSION   NUMBER(8),
    DATA_REJ_DESC  VARCHAR2(128),
    DATA_DEL_DESC  VARCHAR2(128),
    DATA_CRT_USER  VARCHAR2(20),
    DATA_CRT_DATE  VARCHAR2(10),
    DATA_CRT_TIME  CHAR(14),
    DATA_CHG_USER  VARCHAR2(20),
    DATA_CHG_DATE  VARCHAR2(10),
    DATA_CHG_TIME  CHAR(14),
    DATA_APV_USER  VARCHAR2(20),
    DATA_APV_DATE  VARCHAR2(10),
    DATA_APV_TIME  CHAR(14),
    RSV1           VARCHAR2(180),
    RSV2           VARCHAR2(180),
    RSV3           VARCHAR2(180),
    RSV4           VARCHAR2(180),
    RSV5           VARCHAR2(180)
)
/

create table CCRS_BM_CHK_E_ZXZQZCTDLYFZQK
(
    DATA_ID       VARCHAR2(64),
    ORG_ID        VARCHAR2(14),
    GROUP_ID      VARCHAR2(14),
    DATA_RPT_DATE VARCHAR2(32),
    TABLE_NAME    VARCHAR2(32),
    FIELD_NAME    VARCHAR2(32),
    RULE_ID       VARCHAR2(32),
    WEAK_RULE     VARCHAR2(1),
    CHECK_TIME    CHAR(14),
    RECORD_ID     VARCHAR2(32),
    RSV1          VARCHAR2(180),
    RSV2          VARCHAR2(180),
    RSV3          VARCHAR2(180),
    RSV4          VARCHAR2(180),
    RSV5          VARCHAR2(180),
    C_RSV1        VARCHAR2(180),
    C_RSV2        VARCHAR2(180),
    C_RSV3        VARCHAR2(180),
    C_RSV4        VARCHAR2(180),
    C_RSV5        VARCHAR2(180)
)
/

create table CCRS_BM_RPT_CFG
(
    DATA_ID        VARCHAR2(64) not null,
    DATA_DATE      CHAR(8),
    CORP_ID        VARCHAR2(14),
    ORG_ID         VARCHAR2(14),
    GROUP_ID       VARCHAR2(14),
    INQ_ORG_ID     CHAR(24),
    INQ_GROUP_ID   CHAR(24),
    REPORT_CODE    VARCHAR2(80),
    REPORT_NAME    VARCHAR2(200),
    TABLE_NAME     VARCHAR2(80),
    COLLECT_MODE   VARCHAR2(2),
    REPORT_PERIOD  VARCHAR2(2),
    IS_DAYLY       VARCHAR2(2),
    IS_MONTHLY     VARCHAR2(2),
    IS_QUARTERLY   VARCHAR2(2),
    IS_HALF_YEARLY VARCHAR2(2),
    IS_YEARLY      VARCHAR2(2),
    FILE_TYPE      VARCHAR2(20),
    REPORT_TYPE    VARCHAR2(200),
    SEPARATOR_CHAR VARCHAR2(20),
    QUERY_FUNCID   VARCHAR2(20),
    REVISE_FUNCID  VARCHAR2(20),
    FILE_FUNCID    VARCHAR2(20),
    DIVIDE_COLUMN  VARCHAR2(30),
    DIVIDE_RULE    VARCHAR2(2),
    REPLEACE_RULE  VARCHAR2(4000),
    REPORT_STATUS  VARCHAR2(2),
    CHECK_FLAG     CHAR,
    CHECK_DESC     VARCHAR2(512),
    CHECK_ERR_TYPE CHAR,
    NEXT_ACTION    CHAR(2),
    DATA_STATUS    CHAR(2),
    DATA_FLAG      CHAR,
    DATA_OP        CHAR,
    DATA_SOURCE    CHAR,
    DATA_VERSION   NUMBER(8),
    DATA_HASH      VARCHAR2(64),
    DATA_REJ_DESC  VARCHAR2(128),
    DATA_DEL_DESC  VARCHAR2(128),
    DATA_CRT_USER  VARCHAR2(20),
    DATA_CRT_DATE  CHAR(8),
    DATA_CRT_TIME  CHAR(14),
    DATA_CHG_USER  VARCHAR2(20),
    DATA_CHG_DATE  CHAR(8),
    DATA_CHG_TIME  CHAR(14),
    DATA_APV_USER  VARCHAR2(20),
    DATA_APV_DATE  CHAR(8),
    DATA_APV_TIME  CHAR(14),
    RSV1           VARCHAR2(180),
    RSV2           VARCHAR2(180),
    RSV3           VARCHAR2(180),
    RSV4           VARCHAR2(180),
    RSV5           VARCHAR2(180),
    HAND_OUT_TASK  VARCHAR2(2),
    PROVID_FILE    VARCHAR2(2),
    REPORT_SCOPE   CHAR(3)
)
/

create table CCRS_BM_TODO_TASK
(
    DATA_ID         VARCHAR2(64),
    DATA_DATE       CHAR(8),
    CORP_ID         VARCHAR2(14),
    ORG_ID          VARCHAR2(14),
    GROUP_ID        VARCHAR2(14),
    REPORT_TYPE     VARCHAR2(128),
    REPORT_CODE     VARCHAR2(32),
    REPORT_NAME     VARCHAR2(128),
    REPORT_DATE     VARCHAR2(32),
    TASK_TYPE       CHAR,
    P_TASK_ID       VARCHAR2(64),
    CHECK_STATUS    VARCHAR2(2),
    TASK_STATUS     CHAR(2),
    REVISE_FUNC_ID  VARCHAR2(64),
    REVIEW_FUNC_ID  VARCHAR2(64),
    APPROVE_FUNC_ID VARCHAR2(64),
    PACKAGE_FUNC_ID VARCHAR2(64),
    TASK_NAME       VARCHAR2(100),
    TASK_ID         VARCHAR2(100),
    TASK_MODULE     VARCHAR2(100),
    REMARKS         VARCHAR2(512),
    CHECK_FLAG      CHAR,
    CHECK_DESC      VARCHAR2(512),
    CHECK_ERR_TYPE  CHAR,
    NEXT_ACTION     CHAR(2),
    DATA_STATUS     CHAR(2),
    DATA_FLAG       CHAR,
    DATA_SOURCE     CHAR,
    DATA_VERSION    NUMBER(8),
    DATA_REJ_DESC   VARCHAR2(128),
    DATA_DEL_DESC   VARCHAR2(128),
    DATA_CRT_USER   VARCHAR2(20),
    DATA_CRT_DATE   CHAR(8),
    DATA_CRT_TIME   CHAR(14),
    DATA_CHG_USER   VARCHAR2(20),
    DATA_CHG_DATE   CHAR(8),
    DATA_CHG_TIME   CHAR(14),
    DATA_APV_USER   VARCHAR2(20),
    DATA_APV_DATE   CHAR(8),
    DATA_APV_TIME   CHAR(14),
    RSV1            VARCHAR2(180),
    RSV2            VARCHAR2(180),
    RSV3            VARCHAR2(180),
    RSV4            VARCHAR2(180),
    RSV5            VARCHAR2(180),
    C_RSV1          VARCHAR2(180),
    C_RSV2          VARCHAR2(180),
    C_RSV3          VARCHAR2(180),
    C_RSV4          VARCHAR2(180),
    C_RSV5          VARCHAR2(180)
)
/

create table CCRS_BM_RPT_CBRC_CFG
(
    DATA_ID    VARCHAR2(64),
    DATA_DATE  CHAR(8),
    CORP_ID    VARCHAR2(14),
    ORG_ID     VARCHAR2(14),
    GROUP_ID   VARCHAR2(14),
    CJRQ_DATE  VARCHAR2(8),
    P_NBJGH    VARCHAR2(32),
    REAL_NBJGH VARCHAR2(32),
    IS_REPORT  VARCHAR2(2),
    YXJGDM     VARCHAR2(30),
    NBJGH      VARCHAR2(30),
    JRXKZH     VARCHAR2(30),
    YXJGMC     VARCHAR2(200),
    REMARKS    VARCHAR2(512),
    RSV1       VARCHAR2(180),
    RSV2       VARCHAR2(180),
    RSV3       VARCHAR2(180),
    RSV4       VARCHAR2(180),
    RSV5       VARCHAR2(180)
)
/

create table CCRS_BM_RPT_TASK
(
    DATA_ID          VARCHAR2(64) not null,
    DATA_DATE        CHAR(8),
    CORP_ID          VARCHAR2(14),
    ORG_ID           VARCHAR2(14),
    GROUP_ID         VARCHAR2(14),
    INQ_ORG_ID       CHAR(24),
    INQ_GROUP_ID     CHAR(24),
    DATA_RPT_DATE    VARCHAR2(8),
    NBJGH            VARCHAR2(20),
    FILE_PATH        VARCHAR2(200),
    FILE_NAME        VARCHAR2(200),
    REPORT_CODE      VARCHAR2(80),
    REPORT_NAME      VARCHAR2(200),
    REPORT_PERIOD    VARCHAR2(2),
    PROCESS_SQL      VARCHAR2(4000),
    WRITE_FILE_SQL   VARCHAR2(4000),
    VALIDATE_SQL     VARCHAR2(4000),
    REPORT_BM_NAME   VARCHAR2(80),
    REPORT_FILE_NAME VARCHAR2(80),
    TASK_STATUS      VARCHAR2(2),
    CJ_START_DATE    VARCHAR2(8),
    CJ_END_DATE      VARCHAR2(8),
    CHECK_FLAG       CHAR,
    CHECK_DESC       VARCHAR2(512),
    CHECK_ERR_TYPE   CHAR,
    NEXT_ACTION      CHAR(2),
    DATA_STATUS      CHAR(2),
    DATA_FLAG        CHAR,
    DATA_OP          CHAR,
    DATA_SOURCE      CHAR,
    DATA_VERSION     NUMBER(8),
    DATA_HASH        VARCHAR2(64),
    DATA_REJ_DESC    VARCHAR2(128),
    DATA_DEL_DESC    VARCHAR2(128),
    DATA_CRT_USER    VARCHAR2(20),
    DATA_CRT_DATE    CHAR(8),
    DATA_CRT_TIME    CHAR(14),
    DATA_CHG_USER    VARCHAR2(20),
    DATA_CHG_DATE    CHAR(8),
    DATA_CHG_TIME    CHAR(14),
    DATA_APV_USER    VARCHAR2(20),
    DATA_APV_DATE    CHAR(8),
    DATA_APV_TIME    CHAR(14),
    RSV1             VARCHAR2(180),
    RSV2             VARCHAR2(180),
    RSV3             VARCHAR2(180),
    RSV4             VARCHAR2(180),
    RSV5             VARCHAR2(180)
)
/

create table CCRS_BM_RPT_DEPART_REL
(
    DATA_ID            CHAR(32) not null,
    DATA_DATE          CHAR(8),
    CORP_ID            VARCHAR2(14),
    ORG_ID             VARCHAR2(14),
    GROUP_ID           VARCHAR2(14),
    INQ_ORG_ID         CHAR(24),
    INQ_GROUP_ID       CHAR(24),
    REPORT_CODE        VARCHAR2(32),
    REPORT_NAME        VARCHAR2(256),
    BUSINESS_LINE      VARCHAR2(4000),
    BUSINESS_LINE_NAME VARCHAR2(4000),
    REMARKS            VARCHAR2(512),
    CHECK_FLAG         CHAR,
    CHECK_DESC         VARCHAR2(512),
    CHECK_ERR_TYPE     CHAR,
    NEXT_ACTION        CHAR(2),
    DATA_STATUS        CHAR(2),
    DATA_FLAG          CHAR,
    DATA_SOURCE        CHAR,
    DATA_VERSION       NUMBER(8),
    DATA_REJ_DESC      VARCHAR2(128),
    DATA_DEL_DESC      VARCHAR2(128),
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
    C_RSV1             VARCHAR2(180),
    C_RSV2             VARCHAR2(180),
    C_RSV3             VARCHAR2(180),
    C_RSV4             VARCHAR2(180),
    C_RSV5             VARCHAR2(180)
)
/

create table CCRS_BM_TODO_TASK_CFG
(
    DATA_ID          VARCHAR2(32) not null,
    DATA_DATE        CHAR(8),
    CORP_ID          VARCHAR2(14),
    ORG_ID           VARCHAR2(14),
    GROUP_ID         VARCHAR2(14),
    TASK_MODULE      VARCHAR2(256),
    TASK_ID          VARCHAR2(32),
    TASK_NAME        VARCHAR2(256),
    TASK_STATUS      VARCHAR2(32),
    TASK_TYPE        VARCHAR2(32),
    P_TASK_ID        VARCHAR2(32),
    REPORT_ORG_ID    VARCHAR2(256),
    OPERATION_ORG_ID VARCHAR2(256),
    BUSINESS_LINE    VARCHAR2(256),
    REPORT_CODE      VARCHAR2(32),
    REMARKS          VARCHAR2(512),
    NEXT_ACTION      CHAR(2),
    DATA_STATUS      CHAR(2),
    DATA_FLAG        CHAR,
    DATA_SOURCE      CHAR,
    CHECK_FLAG       CHAR,
    CHECK_DESC       VARCHAR2(512),
    CHECK_ERR_TYPE   CHAR,
    DATA_VERSION     NUMBER(8),
    DATA_REJ_DESC    VARCHAR2(128),
    DATA_DEL_DESC    VARCHAR2(128),
    DATA_CRT_USER    VARCHAR2(20),
    DATA_CRT_DATE    CHAR(8),
    DATA_CRT_TIME    CHAR(14),
    DATA_CHG_USER    VARCHAR2(20),
    DATA_CHG_DATE    CHAR(8),
    DATA_CHG_TIME    CHAR(14),
    DATA_APV_USER    VARCHAR2(20),
    DATA_APV_DATE    CHAR(8),
    DATA_APV_TIME    CHAR(14),
    RSV1             VARCHAR2(180),
    RSV2             VARCHAR2(180),
    RSV3             VARCHAR2(180),
    RSV4             VARCHAR2(180),
    RSV5             VARCHAR2(180),
    REPORT_NAME      VARCHAR2(64)
)
/

create table CCRS_BM_RPT_CFG_DTL_BAK
(
    DATA_ID         VARCHAR2(64),
    DATA_DATE       CHAR(8),
    CORP_ID         VARCHAR2(14),
    ORG_ID          VARCHAR2(14),
    GROUP_ID        VARCHAR2(14),
    INQ_ORG_ID      VARCHAR2(32),
    INQ_GROUP_ID    VARCHAR2(32),
    RPT_CFG_DATA_ID CHAR(32),
    COLUMN_NAME     VARCHAR2(64),
    COLUMN_TYPE     VARCHAR2(12),
    SEQ_NO          CHAR(3),
    SECRET_MODE     VARCHAR2(200),
    STATUS          CHAR,
    KZYY            VARCHAR2(2000),
    JJFA            VARCHAR2(2000),
    JJJD            VARCHAR2(2000),
    REMARKS         VARCHAR2(512),
    CHECK_FLAG      CHAR,
    CHECK_DESC      VARCHAR2(512),
    CHECK_ERR_TYPE  CHAR,
    NEXT_ACTION     CHAR(2),
    DATA_STATUS     CHAR(2),
    DATA_FLAG       CHAR,
    DATA_SOURCE     CHAR,
    DATA_VERSION    NUMBER(8),
    DATA_REJ_DESC   VARCHAR2(128),
    DATA_DEL_DESC   VARCHAR2(128),
    DATA_CRT_USER   VARCHAR2(20),
    DATA_CRT_DATE   CHAR(8),
    DATA_CRT_TIME   CHAR(14),
    DATA_CHG_USER   VARCHAR2(20),
    DATA_CHG_DATE   CHAR(8),
    DATA_CHG_TIME   CHAR(14),
    DATA_APV_USER   VARCHAR2(20),
    DATA_APV_DATE   CHAR(8),
    DATA_APV_TIME   CHAR(14),
    RSV1            VARCHAR2(180),
    RSV2            VARCHAR2(180),
    RSV3            VARCHAR2(180),
    RSV4            VARCHAR2(180),
    RSV5            VARCHAR2(180)
)
/

create table CCRS_BM_RPT_CFG_DTL
(
    DATA_ID        VARCHAR2(64) not null,
    DATA_DATE      CHAR(8),
    CORP_ID        VARCHAR2(14),
    ORG_ID         VARCHAR2(14),
    GROUP_ID       VARCHAR2(14),
    INQ_ORG_ID     CHAR(24),
    INQ_GROUP_ID   CHAR(24),
    REPORT_CODE    VARCHAR2(80),
    COLUMN_NAME    VARCHAR2(80),
    COLUMN_DESC    VARCHAR2(200),
    COLUMN_TYPE    VARCHAR2(200),
    SEQ_NO         NUMBER(8),
    HANDLE_METHOD  VARCHAR2(800),
    DEFAULT_VALUE  VARCHAR2(200),
    COLUMN_STATUS  VARCHAR2(2),
    IS_CACHE       VARCHAR2(2),
    CHECK_FLAG     CHAR,
    CHECK_DESC     VARCHAR2(512),
    CHECK_ERR_TYPE CHAR,
    NEXT_ACTION    CHAR(2),
    DATA_STATUS    CHAR(2),
    DATA_FLAG      CHAR,
    DATA_OP        CHAR,
    DATA_SOURCE    CHAR,
    DATA_VERSION   NUMBER(8),
    DATA_HASH      VARCHAR2(64),
    DATA_REJ_DESC  VARCHAR2(128),
    DATA_DEL_DESC  VARCHAR2(128),
    DATA_CRT_USER  VARCHAR2(20),
    DATA_CRT_DATE  CHAR(8),
    DATA_CRT_TIME  CHAR(14),
    DATA_CHG_USER  VARCHAR2(20),
    DATA_CHG_DATE  CHAR(8),
    DATA_CHG_TIME  CHAR(14),
    DATA_APV_USER  VARCHAR2(20),
    DATA_APV_DATE  CHAR(8),
    DATA_APV_TIME  CHAR(14),
    RSV1           VARCHAR2(180),
    RSV2           VARCHAR2(180),
    RSV3           VARCHAR2(180),
    RSV4           VARCHAR2(180),
    RSV5           VARCHAR2(180),
    FIELD_TYPE     CHAR,
    NEED_INHERIT   CHAR
)
/

create table GP_QC_TYPE
(
    DATA_ID        VARCHAR2(64) not null
        primary key,
    DATA_DATE      CHAR(8),
    CORP_ID        VARCHAR2(14),
    ORG_ID         VARCHAR2(14),
    GROUP_ID       VARCHAR2(14),
    INQ_ORG_ID     VARCHAR2(24),
    INQ_GROUP_ID   VARCHAR2(24),
    TYPE_DESC      VARCHAR2(512),
    ENCODING       VARCHAR2(32),
    MIN_LENGTH     NUMBER(8),
    MAX_LENGTH     NUMBER(8),
    MIN_VALUE      NUMBER(32, 10),
    MAX_VALUE      NUMBER(32, 10),
    MAX_PRECISION  NUMBER(8),
    MIN_SCALE      NUMBER(8),
    MAX_SCALE      NUMBER(8),
    ENUMERATION    VARCHAR2(3072),
    PATTERN        VARCHAR2(1024),
    IN_ENTITY      VARCHAR2(128),
    IN_FIELD       VARCHAR2(128),
    EXISTS_SQL     VARCHAR2(3072),
    DATA_HASH      VARCHAR2(64),
    SCRIPT         VARCHAR2(3072),
    BEAN           VARCHAR2(128),
    CHECK_FLAG     CHAR,
    CHECK_DESC     VARCHAR2(512),
    CHECK_ERR_TYPE CHAR,
    NEXT_ACTION    CHAR(2),
    DATA_STATUS    CHAR(2),
    DATA_FLAG      CHAR,
    DATA_OP        CHAR,
    DATA_SOURCE    CHAR,
    DATA_VERSION   NUMBER(8),
    DATA_REJ_DESC  VARCHAR2(128),
    DATA_DEL_DESC  VARCHAR2(128),
    DATA_CRT_USER  VARCHAR2(20),
    DATA_CRT_DATE  CHAR(8),
    DATA_CRT_TIME  CHAR(14),
    DATA_CHG_USER  VARCHAR2(20),
    DATA_CHG_DATE  CHAR(8),
    DATA_CHG_TIME  CHAR(14),
    DATA_APV_USER  VARCHAR2(20),
    DATA_APV_DATE  CHAR(8),
    DATA_APV_TIME  CHAR(14),
    RSV1           VARCHAR2(180),
    RSV2           VARCHAR2(180),
    RSV3           VARCHAR2(180),
    RSV4           VARCHAR2(180),
    RSV5           VARCHAR2(180)
)
/

comment on table GP_QC_TYPE is '类型定义表'
/

comment on column GP_QC_TYPE.DATA_ID is '数据ID 类型 ID'
/

comment on column GP_QC_TYPE.DATA_DATE is '数据日期'
/

comment on column GP_QC_TYPE.CORP_ID is '法人机构号'
/

comment on column GP_QC_TYPE.ORG_ID is '机构号'
/

comment on column GP_QC_TYPE.GROUP_ID is '部门编号'
/

comment on column GP_QC_TYPE.INQ_ORG_ID is '查询机构号'
/

comment on column GP_QC_TYPE.INQ_GROUP_ID is '查询组号'
/

comment on column GP_QC_TYPE.TYPE_DESC is '类型描述'
/

comment on column GP_QC_TYPE.ENCODING is '字符编码 用于字段长度校验；为空表示校验字符个数'
/

comment on column GP_QC_TYPE.MIN_LENGTH is '字段长度下限 含下限'
/

comment on column GP_QC_TYPE.MAX_LENGTH is '字段长度上限 含上限'
/

comment on column GP_QC_TYPE.MIN_VALUE is '数值下限 含下限'
/

comment on column GP_QC_TYPE.MAX_VALUE is '数值上限 含上限'
/

comment on column GP_QC_TYPE.MAX_PRECISION is '数值总位数上限 含上限'
/

comment on column GP_QC_TYPE.MIN_SCALE is '数值小数位数下限 含下限'
/

comment on column GP_QC_TYPE.MAX_SCALE is '数值小数位数上限 含上限'
/

comment on column GP_QC_TYPE.ENUMERATION is '枚举值 以「,」分隔'
/

comment on column GP_QC_TYPE.PATTERN is '正则表达式'
/

comment on column GP_QC_TYPE.IN_ENTITY is '存在于某实体 IN_ENTITY 和 IN_FIELD 合并使用'
/

comment on column GP_QC_TYPE.IN_FIELD is '存在于某字段'
/

comment on column GP_QC_TYPE.EXISTS_SQL is 'SQL 校验 以 SQL 能否查询到结果作为校验条件'
/

comment on column GP_QC_TYPE.DATA_HASH is 'SQL 校验缓存用 key 以「,」分隔；批量校验时使用'
/

comment on column GP_QC_TYPE.SCRIPT is '校验脚本 Groovy'
/

comment on column GP_QC_TYPE.BEAN is 'Spring Bean 名称'
/

comment on column GP_QC_TYPE.CHECK_FLAG is '校验标识'
/

comment on column GP_QC_TYPE.CHECK_DESC is '校验结果'
/

comment on column GP_QC_TYPE.CHECK_ERR_TYPE is '校验失败类型'
/

comment on column GP_QC_TYPE.NEXT_ACTION is '下一动作'
/

comment on column GP_QC_TYPE.DATA_STATUS is '数据状态'
/

comment on column GP_QC_TYPE.DATA_FLAG is '数据是否已删除'
/

comment on column GP_QC_TYPE.DATA_OP is '数据操作 A：新增，D:删除, M:修改'
/

comment on column GP_QC_TYPE.DATA_SOURCE is '数据来源'
/

comment on column GP_QC_TYPE.DATA_VERSION is '数据版本'
/

comment on column GP_QC_TYPE.DATA_REJ_DESC is '数据审核拒绝原因'
/

comment on column GP_QC_TYPE.DATA_DEL_DESC is '数据删除描述'
/

comment on column GP_QC_TYPE.DATA_CRT_USER is '数据创建/导入用户'
/

comment on column GP_QC_TYPE.DATA_CRT_DATE is '数据创建/导入日期'
/

comment on column GP_QC_TYPE.DATA_CRT_TIME is '数据创建/导入时间'
/

comment on column GP_QC_TYPE.DATA_CHG_USER is '数据修改/删除用户'
/

comment on column GP_QC_TYPE.DATA_CHG_DATE is '数据修改/删除日期'
/

comment on column GP_QC_TYPE.DATA_CHG_TIME is '数据修改/删除时间'
/

comment on column GP_QC_TYPE.DATA_APV_USER is '数据审核/拒绝用户'
/

comment on column GP_QC_TYPE.DATA_APV_DATE is '数据审核/拒绝日期'
/

comment on column GP_QC_TYPE.DATA_APV_TIME is '数据审核/拒绝时间'
/

comment on column GP_QC_TYPE.RSV1 is '备用1'
/

comment on column GP_QC_TYPE.RSV2 is '备用2'
/

comment on column GP_QC_TYPE.RSV3 is '备用3'
/

comment on column GP_QC_TYPE.RSV4 is '备用4'
/

comment on column GP_QC_TYPE.RSV5 is '备用5'
/

create table GP_QC_RULE
(
    DATA_ID        VARCHAR2(64) not null
        primary key,
    DATA_DATE      CHAR(8),
    CORP_ID        VARCHAR2(14),
    ORG_ID         VARCHAR2(14),
    GROUP_ID       VARCHAR2(14),
    INQ_ORG_ID     VARCHAR2(24),
    INQ_GROUP_ID   VARCHAR2(24),
    RULE_DESC      VARCHAR2(512),
    RULE_MESSAGE   VARCHAR2(3072),
    RULE_TYPE      VARCHAR2(32),
    RULE_SOURCE    VARCHAR2(32),
    FIELD          VARCHAR2(128),
    FIELD_NAME     VARCHAR2(128),
    TRIMMABLE      CHAR,
    NULLABLE       CHAR,
    TYPE_ID        VARCHAR2(64),
    ENCODING       VARCHAR2(32),
    MIN_LENGTH     NUMBER(8),
    MAX_LENGTH     NUMBER(8),
    MIN_VALUE      NUMBER(32, 10),
    MAX_VALUE      NUMBER(32, 10),
    MAX_PRECISION  NUMBER(8),
    MIN_SCALE      NUMBER(8),
    MAX_SCALE      NUMBER(8),
    ENUMERATION    VARCHAR2(3072),
    PATTERN        VARCHAR2(1024),
    IN_ENTITY      VARCHAR2(128),
    IN_FIELD       VARCHAR2(128),
    EXISTS_SQL     VARCHAR2(3072),
    DATA_HASH      VARCHAR2(64),
    SCRIPT         VARCHAR2(3072),
    BEAN           VARCHAR2(128),
    CHECK_FLAG     CHAR,
    CHECK_DESC     VARCHAR2(512),
    CHECK_ERR_TYPE CHAR,
    NEXT_ACTION    CHAR(2),
    DATA_STATUS    CHAR(2),
    DATA_FLAG      CHAR,
    DATA_OP        CHAR,
    DATA_SOURCE    CHAR,
    DATA_VERSION   NUMBER(8),
    DATA_REJ_DESC  VARCHAR2(128),
    DATA_DEL_DESC  VARCHAR2(128),
    DATA_CRT_USER  VARCHAR2(20),
    DATA_CRT_DATE  CHAR(8),
    DATA_CRT_TIME  CHAR(14),
    DATA_CHG_USER  VARCHAR2(20),
    DATA_CHG_DATE  CHAR(8),
    DATA_CHG_TIME  CHAR(14),
    DATA_APV_USER  VARCHAR2(20),
    DATA_APV_DATE  CHAR(8),
    DATA_APV_TIME  CHAR(14),
    RSV1           VARCHAR2(180),
    RSV2           VARCHAR2(180),
    RSV3           VARCHAR2(180),
    RSV4           VARCHAR2(180),
    RSV5           VARCHAR2(180)
)
/

comment on table GP_QC_RULE is '规则配置表'
/

comment on column GP_QC_RULE.DATA_ID is '数据ID 规则 ID'
/

comment on column GP_QC_RULE.DATA_DATE is '数据日期'
/

comment on column GP_QC_RULE.CORP_ID is '法人机构号'
/

comment on column GP_QC_RULE.ORG_ID is '机构号'
/

comment on column GP_QC_RULE.GROUP_ID is '部门编号'
/

comment on column GP_QC_RULE.INQ_ORG_ID is '查询机构号'
/

comment on column GP_QC_RULE.INQ_GROUP_ID is '查询组号'
/

comment on column GP_QC_RULE.RULE_DESC is '规则描述'
/

comment on column GP_QC_RULE.RULE_MESSAGE is '校验信息 用于展示给前端用户'
/

comment on column GP_QC_RULE.RULE_TYPE is '规则类型'
/

comment on column GP_QC_RULE.RULE_SOURCE is '规则来源'
/

comment on column GP_QC_RULE.FIELD is '校验字段 推荐使用 camelCase'
/

comment on column GP_QC_RULE.FIELD_NAME is '校验字段名称'
/

comment on column GP_QC_RULE.TRIMMABLE is '校验前是否需要清理空白字符 N-不需要（默认）；R-清理右侧空白字符；L-清理左侧空白字符；A-清理两侧空白字符'
/

comment on column GP_QC_RULE.NULLABLE is '是否允许为空 Y/N；默认为N；“空”指的是 NULL 或空字符串；字段为空时忽略其他校验规则'
/

comment on column GP_QC_RULE.TYPE_ID is '类型 ID 可为空'
/

comment on column GP_QC_RULE.ENCODING is '字符编码 用于字段长度校验；为空表示校验字符个数'
/

comment on column GP_QC_RULE.MIN_LENGTH is '字段长度下限 含下限'
/

comment on column GP_QC_RULE.MAX_LENGTH is '字段长度上限 含上限'
/

comment on column GP_QC_RULE.MIN_VALUE is '数值下限 含下限'
/

comment on column GP_QC_RULE.MAX_VALUE is '数值上限 含上限'
/

comment on column GP_QC_RULE.MAX_PRECISION is '数值总位数上限 含上限'
/

comment on column GP_QC_RULE.MIN_SCALE is '数值小数位数下限 含下限'
/

comment on column GP_QC_RULE.MAX_SCALE is '数值小数位数上限 含上限'
/

comment on column GP_QC_RULE.ENUMERATION is '枚举值 以「,」分隔'
/

comment on column GP_QC_RULE.PATTERN is '正则表达式'
/

comment on column GP_QC_RULE.IN_ENTITY is '存在于某实体 IN_ENTITY 和 IN_FIELD 合并使用'
/

comment on column GP_QC_RULE.IN_FIELD is '存在于某字段'
/

comment on column GP_QC_RULE.EXISTS_SQL is 'SQL 校验 以 SQL 能否查询到结果作为校验条件'
/

comment on column GP_QC_RULE.DATA_HASH is 'SQL 校验缓存用 key 以「,」分隔；批量校验时使用'
/

comment on column GP_QC_RULE.SCRIPT is '校验脚本 Groovy'
/

comment on column GP_QC_RULE.BEAN is 'Spring Bean 名称'
/

comment on column GP_QC_RULE.CHECK_FLAG is '校验标识'
/

comment on column GP_QC_RULE.CHECK_DESC is '校验结果'
/

comment on column GP_QC_RULE.CHECK_ERR_TYPE is '校验失败类型'
/

comment on column GP_QC_RULE.NEXT_ACTION is '下一动作'
/

comment on column GP_QC_RULE.DATA_STATUS is '数据状态'
/

comment on column GP_QC_RULE.DATA_FLAG is '数据是否已删除'
/

comment on column GP_QC_RULE.DATA_OP is '数据操作 A：新增，D:删除, M:修改'
/

comment on column GP_QC_RULE.DATA_SOURCE is '数据来源'
/

comment on column GP_QC_RULE.DATA_VERSION is '数据版本'
/

comment on column GP_QC_RULE.DATA_REJ_DESC is '数据审核拒绝原因'
/

comment on column GP_QC_RULE.DATA_DEL_DESC is '数据删除描述'
/

comment on column GP_QC_RULE.DATA_CRT_USER is '数据创建/导入用户'
/

comment on column GP_QC_RULE.DATA_CRT_DATE is '数据创建/导入日期'
/

comment on column GP_QC_RULE.DATA_CRT_TIME is '数据创建/导入时间'
/

comment on column GP_QC_RULE.DATA_CHG_USER is '数据修改/删除用户'
/

comment on column GP_QC_RULE.DATA_CHG_DATE is '数据修改/删除日期'
/

comment on column GP_QC_RULE.DATA_CHG_TIME is '数据修改/删除时间'
/

comment on column GP_QC_RULE.DATA_APV_USER is '数据审核/拒绝用户'
/

comment on column GP_QC_RULE.DATA_APV_DATE is '数据审核/拒绝日期'
/

comment on column GP_QC_RULE.DATA_APV_TIME is '数据审核/拒绝时间'
/

comment on column GP_QC_RULE.RSV1 is '备用1'
/

comment on column GP_QC_RULE.RSV2 is '备用2'
/

comment on column GP_QC_RULE.RSV3 is '备用3'
/

comment on column GP_QC_RULE.RSV4 is '备用4'
/

comment on column GP_QC_RULE.RSV5 is '备用5'
/

create table GP_QC_RULE_MAP
(
    DATA_ID        VARCHAR2(64) not null
        primary key,
    DATA_DATE      CHAR(8),
    CORP_ID        VARCHAR2(14),
    ORG_ID         VARCHAR2(14),
    GROUP_ID       VARCHAR2(14),
    INQ_ORG_ID     VARCHAR2(24),
    INQ_GROUP_ID   VARCHAR2(24),
    RULE_SET_ID    VARCHAR2(64),
    RULE_ID        VARCHAR2(64),
    CHECK_FLAG     CHAR,
    CHECK_DESC     VARCHAR2(512),
    CHECK_ERR_TYPE CHAR,
    NEXT_ACTION    CHAR(2),
    DATA_STATUS    CHAR(2),
    DATA_FLAG      CHAR,
    DATA_OP        CHAR,
    DATA_SOURCE    CHAR,
    DATA_VERSION   NUMBER(8),
    DATA_REJ_DESC  VARCHAR2(128),
    DATA_DEL_DESC  VARCHAR2(128),
    DATA_CRT_USER  VARCHAR2(20),
    DATA_CRT_DATE  CHAR(8),
    DATA_CRT_TIME  CHAR(14),
    DATA_CHG_USER  VARCHAR2(20),
    DATA_CHG_DATE  CHAR(8),
    DATA_CHG_TIME  CHAR(14),
    DATA_APV_USER  VARCHAR2(20),
    DATA_APV_DATE  CHAR(8),
    DATA_APV_TIME  CHAR(14),
    RSV1           VARCHAR2(180),
    RSV2           VARCHAR2(180),
    RSV3           VARCHAR2(180),
    RSV4           VARCHAR2(180),
    RSV5           VARCHAR2(180)
)
/

comment on table GP_QC_RULE_MAP is '规则映射表'
/

comment on column GP_QC_RULE_MAP.DATA_ID is '数据ID'
/

comment on column GP_QC_RULE_MAP.DATA_DATE is '数据日期'
/

comment on column GP_QC_RULE_MAP.CORP_ID is '法人机构号'
/

comment on column GP_QC_RULE_MAP.ORG_ID is '机构号'
/

comment on column GP_QC_RULE_MAP.GROUP_ID is '部门编号'
/

comment on column GP_QC_RULE_MAP.INQ_ORG_ID is '查询机构号'
/

comment on column GP_QC_RULE_MAP.INQ_GROUP_ID is '查询组号'
/

comment on column GP_QC_RULE_MAP.RULE_SET_ID is '规则集 ID'
/

comment on column GP_QC_RULE_MAP.RULE_ID is '规则 ID'
/

comment on column GP_QC_RULE_MAP.CHECK_FLAG is '校验标识'
/

comment on column GP_QC_RULE_MAP.CHECK_DESC is '校验结果'
/

comment on column GP_QC_RULE_MAP.CHECK_ERR_TYPE is '校验失败类型'
/

comment on column GP_QC_RULE_MAP.NEXT_ACTION is '下一动作'
/

comment on column GP_QC_RULE_MAP.DATA_STATUS is '数据状态'
/

comment on column GP_QC_RULE_MAP.DATA_FLAG is '数据是否已删除'
/

comment on column GP_QC_RULE_MAP.DATA_OP is '数据操作 A：新增，D:删除, M:修改'
/

comment on column GP_QC_RULE_MAP.DATA_SOURCE is '数据来源'
/

comment on column GP_QC_RULE_MAP.DATA_VERSION is '数据版本'
/

comment on column GP_QC_RULE_MAP.DATA_REJ_DESC is '数据审核拒绝原因'
/

comment on column GP_QC_RULE_MAP.DATA_DEL_DESC is '数据删除描述'
/

comment on column GP_QC_RULE_MAP.DATA_CRT_USER is '数据创建/导入用户'
/

comment on column GP_QC_RULE_MAP.DATA_CRT_DATE is '数据创建/导入日期'
/

comment on column GP_QC_RULE_MAP.DATA_CRT_TIME is '数据创建/导入时间'
/

comment on column GP_QC_RULE_MAP.DATA_CHG_USER is '数据修改/删除用户'
/

comment on column GP_QC_RULE_MAP.DATA_CHG_DATE is '数据修改/删除日期'
/

comment on column GP_QC_RULE_MAP.DATA_CHG_TIME is '数据修改/删除时间'
/

comment on column GP_QC_RULE_MAP.DATA_APV_USER is '数据审核/拒绝用户'
/

comment on column GP_QC_RULE_MAP.DATA_APV_DATE is '数据审核/拒绝日期'
/

comment on column GP_QC_RULE_MAP.DATA_APV_TIME is '数据审核/拒绝时间'
/

comment on column GP_QC_RULE_MAP.RSV1 is '备用1'
/

comment on column GP_QC_RULE_MAP.RSV2 is '备用2'
/

comment on column GP_QC_RULE_MAP.RSV3 is '备用3'
/

comment on column GP_QC_RULE_MAP.RSV4 is '备用4'
/

comment on column GP_QC_RULE_MAP.RSV5 is '备用5'
/

create unique index GP_QC_RULE_MAP_UNIQ
    on GP_QC_RULE_MAP (RULE_SET_ID, RULE_ID)
/

create table GP_QC_RULE_SET
(
    DATA_ID        VARCHAR2(64) not null
        primary key,
    DATA_DATE      CHAR(8),
    CORP_ID        VARCHAR2(14),
    ORG_ID         VARCHAR2(14),
    GROUP_ID       VARCHAR2(14),
    INQ_ORG_ID     VARCHAR2(24),
    INQ_GROUP_ID   VARCHAR2(24),
    RULE_SET_DESC  VARCHAR2(512),
    ENTITY         VARCHAR2(128),
    MODULE         VARCHAR2(128),
    ACTION         VARCHAR2(128),
    SOURCE         VARCHAR2(128),
    VERSION        VARCHAR2(128),
    CHECK_FLAG     CHAR,
    CHECK_DESC     VARCHAR2(512),
    CHECK_ERR_TYPE CHAR,
    NEXT_ACTION    CHAR(2),
    DATA_STATUS    CHAR(2),
    DATA_FLAG      CHAR,
    DATA_OP        CHAR,
    DATA_SOURCE    CHAR,
    DATA_VERSION   NUMBER(8),
    DATA_REJ_DESC  VARCHAR2(128),
    DATA_DEL_DESC  VARCHAR2(128),
    DATA_CRT_USER  VARCHAR2(20),
    DATA_CRT_DATE  CHAR(8),
    DATA_CRT_TIME  CHAR(14),
    DATA_CHG_USER  VARCHAR2(20),
    DATA_CHG_DATE  CHAR(8),
    DATA_CHG_TIME  CHAR(14),
    DATA_APV_USER  VARCHAR2(20),
    DATA_APV_DATE  CHAR(8),
    DATA_APV_TIME  CHAR(14),
    RSV1           VARCHAR2(180),
    RSV2           VARCHAR2(180),
    RSV3           VARCHAR2(180),
    RSV4           VARCHAR2(180),
    RSV5           VARCHAR2(180)
)
/

comment on table GP_QC_RULE_SET is '规则集配置表'
/

comment on column GP_QC_RULE_SET.DATA_ID is '数据ID 规则集 ID'
/

comment on column GP_QC_RULE_SET.DATA_DATE is '数据日期'
/

comment on column GP_QC_RULE_SET.CORP_ID is '法人机构号'
/

comment on column GP_QC_RULE_SET.ORG_ID is '机构号'
/

comment on column GP_QC_RULE_SET.GROUP_ID is '部门编号'
/

comment on column GP_QC_RULE_SET.INQ_ORG_ID is '查询机构号'
/

comment on column GP_QC_RULE_SET.INQ_GROUP_ID is '查询组号'
/

comment on column GP_QC_RULE_SET.RULE_SET_DESC is '规则集描述'
/

comment on column GP_QC_RULE_SET.ENTITY is '实体名称'
/

comment on column GP_QC_RULE_SET.MODULE is '模块'
/

comment on column GP_QC_RULE_SET.ACTION is '动作'
/

comment on column GP_QC_RULE_SET.SOURCE is '来源'
/

comment on column GP_QC_RULE_SET.VERSION is '版本'
/

comment on column GP_QC_RULE_SET.CHECK_FLAG is '校验标识'
/

comment on column GP_QC_RULE_SET.CHECK_DESC is '校验结果'
/

comment on column GP_QC_RULE_SET.CHECK_ERR_TYPE is '校验失败类型'
/

comment on column GP_QC_RULE_SET.NEXT_ACTION is '下一动作'
/

comment on column GP_QC_RULE_SET.DATA_STATUS is '数据状态'
/

comment on column GP_QC_RULE_SET.DATA_FLAG is '数据是否已删除'
/

comment on column GP_QC_RULE_SET.DATA_OP is '数据操作 A：新增，D:删除, M:修改'
/

comment on column GP_QC_RULE_SET.DATA_SOURCE is '数据来源'
/

comment on column GP_QC_RULE_SET.DATA_VERSION is '数据版本'
/

comment on column GP_QC_RULE_SET.DATA_REJ_DESC is '数据审核拒绝原因'
/

comment on column GP_QC_RULE_SET.DATA_DEL_DESC is '数据删除描述'
/

comment on column GP_QC_RULE_SET.DATA_CRT_USER is '数据创建/导入用户'
/

comment on column GP_QC_RULE_SET.DATA_CRT_DATE is '数据创建/导入日期'
/

comment on column GP_QC_RULE_SET.DATA_CRT_TIME is '数据创建/导入时间'
/

comment on column GP_QC_RULE_SET.DATA_CHG_USER is '数据修改/删除用户'
/

comment on column GP_QC_RULE_SET.DATA_CHG_DATE is '数据修改/删除日期'
/

comment on column GP_QC_RULE_SET.DATA_CHG_TIME is '数据修改/删除时间'
/

comment on column GP_QC_RULE_SET.DATA_APV_USER is '数据审核/拒绝用户'
/

comment on column GP_QC_RULE_SET.DATA_APV_DATE is '数据审核/拒绝日期'
/

comment on column GP_QC_RULE_SET.DATA_APV_TIME is '数据审核/拒绝时间'
/

comment on column GP_QC_RULE_SET.RSV1 is '备用1'
/

comment on column GP_QC_RULE_SET.RSV2 is '备用2'
/

comment on column GP_QC_RULE_SET.RSV3 is '备用3'
/

comment on column GP_QC_RULE_SET.RSV4 is '备用4'
/

comment on column GP_QC_RULE_SET.RSV5 is '备用5'
/

create table CCRS_BM_RPT_QRYCOL_REL
(
    DATA_ID              VARCHAR2(64) not null
        constraint CCRS_BM_RPT_QRYCOL_REL_K
            primary key,
    DATA_DATE            CHAR(8),
    CORP_ID              VARCHAR2(14),
    ORG_ID               VARCHAR2(14),
    GROUP_ID             VARCHAR2(14),
    INQ_ORG_ID           VARCHAR2(32),
    INQ_GROUP_ID         VARCHAR2(32),
    REPORT_CODE          VARCHAR2(32),
    REPORT_NAME          VARCHAR2(256),
    QUERY_COLUMN_NAME    VARCHAR2(4000),
    QUERY_COLUMN_COMMENT VARCHAR2(4000),
    QUERY_TYPE           VARCHAR2(32),
    IS_REQUIRED          VARCHAR2(32),
    EDIT_TYPE            VARCHAR2(32),
    DATA_TYPE            VARCHAR2(32),
    COLUMN_LENGTH        VARCHAR2(32),
    READONLY             VARCHAR2(32),
    DATA_DIC             VARCHAR2(32),
    CQ_QUERY             VARCHAR2(512),
    REMARKS              VARCHAR2(512),
    CHECK_FLAG           CHAR,
    CHECK_DESC           VARCHAR2(512),
    CHECK_ERR_TYPE       CHAR,
    NEXT_ACTION          CHAR(2),
    DATA_STATUS          CHAR(2),
    DATA_FLAG            CHAR,
    DATA_SOURCE          CHAR,
    DATA_VERSION         NUMBER(8),
    DATA_REJ_DESC        VARCHAR2(128),
    DATA_DEL_DESC        VARCHAR2(128),
    DATA_CRT_USER        VARCHAR2(20),
    DATA_CRT_DATE        CHAR(8),
    DATA_CRT_TIME        CHAR(14),
    DATA_CHG_USER        VARCHAR2(20),
    DATA_CHG_DATE        CHAR(8),
    DATA_CHG_TIME        CHAR(14),
    DATA_APV_USER        VARCHAR2(20),
    DATA_APV_DATE        CHAR(8),
    DATA_APV_TIME        CHAR(14),
    RSV1                 VARCHAR2(180),
    RSV2                 VARCHAR2(180),
    RSV3                 VARCHAR2(180),
    RSV4                 VARCHAR2(180),
    RSV5                 VARCHAR2(180)
)
/

comment on table CCRS_BM_RPT_QRYCOL_REL is 'CCRS_BM_RPT_QRYCOL_REL'
/

comment on column CCRS_BM_RPT_QRYCOL_REL.DATA_ID is '数据ID'
/

comment on column CCRS_BM_RPT_QRYCOL_REL.DATA_DATE is '数据日期'
/

comment on column CCRS_BM_RPT_QRYCOL_REL.CORP_ID is '法人机构号'
/

comment on column CCRS_BM_RPT_QRYCOL_REL.ORG_ID is '分行机构号'
/

comment on column CCRS_BM_RPT_QRYCOL_REL.GROUP_ID is '部门编号'
/

comment on column CCRS_BM_RPT_QRYCOL_REL.INQ_ORG_ID is '分行机构号'
/

comment on column CCRS_BM_RPT_QRYCOL_REL.INQ_GROUP_ID is '部门编号'
/

comment on column CCRS_BM_RPT_QRYCOL_REL.REPORT_CODE is '报表编号'
/

comment on column CCRS_BM_RPT_QRYCOL_REL.REPORT_NAME is '报表名称'
/

comment on column CCRS_BM_RPT_QRYCOL_REL.QUERY_COLUMN_NAME is '查询字段名'
/

comment on column CCRS_BM_RPT_QRYCOL_REL.QUERY_COLUMN_COMMENT is '查询字段中文名'
/

comment on column CCRS_BM_RPT_QRYCOL_REL.QUERY_TYPE is '查询方式'
/

comment on column CCRS_BM_RPT_QRYCOL_REL.IS_REQUIRED is '是否必填'
/

comment on column CCRS_BM_RPT_QRYCOL_REL.EDIT_TYPE is '编辑类型'
/

comment on column CCRS_BM_RPT_QRYCOL_REL.DATA_TYPE is '数据类型'
/

comment on column CCRS_BM_RPT_QRYCOL_REL.COLUMN_LENGTH is '允许最大长度'
/

comment on column CCRS_BM_RPT_QRYCOL_REL.READONLY is '只读状态'
/

comment on column CCRS_BM_RPT_QRYCOL_REL.DATA_DIC is '数据字典'
/

comment on column CCRS_BM_RPT_QRYCOL_REL.CQ_QUERY is 'CQ查询'
/

comment on column CCRS_BM_RPT_QRYCOL_REL.REMARKS is '备注'
/

comment on column CCRS_BM_RPT_QRYCOL_REL.CHECK_FLAG is '校验标识'
/

comment on column CCRS_BM_RPT_QRYCOL_REL.CHECK_DESC is '校验结果'
/

comment on column CCRS_BM_RPT_QRYCOL_REL.CHECK_ERR_TYPE is '校验失败类型'
/

comment on column CCRS_BM_RPT_QRYCOL_REL.NEXT_ACTION is '下一动作'
/

comment on column CCRS_BM_RPT_QRYCOL_REL.DATA_STATUS is '数据状态'
/

comment on column CCRS_BM_RPT_QRYCOL_REL.DATA_FLAG is '数据是否已删除'
/

comment on column CCRS_BM_RPT_QRYCOL_REL.DATA_SOURCE is '数据来源'
/

comment on column CCRS_BM_RPT_QRYCOL_REL.DATA_VERSION is '数据版本号'
/

comment on column CCRS_BM_RPT_QRYCOL_REL.DATA_REJ_DESC is '数据审核拒绝描述'
/

comment on column CCRS_BM_RPT_QRYCOL_REL.DATA_DEL_DESC is '数据删除描述'
/

comment on column CCRS_BM_RPT_QRYCOL_REL.DATA_CRT_USER is '数据创建/导入用户'
/

comment on column CCRS_BM_RPT_QRYCOL_REL.DATA_CRT_DATE is '数据创建/导入日期'
/

comment on column CCRS_BM_RPT_QRYCOL_REL.DATA_CRT_TIME is '数据创建/导入时间'
/

comment on column CCRS_BM_RPT_QRYCOL_REL.DATA_CHG_USER is '数据修改/删除用户'
/

comment on column CCRS_BM_RPT_QRYCOL_REL.DATA_CHG_DATE is '数据修改/删除日期'
/

comment on column CCRS_BM_RPT_QRYCOL_REL.DATA_CHG_TIME is '数据修改/删除时间'
/

comment on column CCRS_BM_RPT_QRYCOL_REL.DATA_APV_USER is '数据审核/拒绝用户'
/

comment on column CCRS_BM_RPT_QRYCOL_REL.DATA_APV_DATE is '数据审核/拒绝日期'
/

comment on column CCRS_BM_RPT_QRYCOL_REL.DATA_APV_TIME is '数据审核/拒绝时间'
/

create FUNCTION "GET_DATA_ID"(P_I_DATE IN VARCHAR2)
    RETURN CHAR AS
BEGIN
    --DBMS_OUTPUT.PUT_LINE('Sample output');
    RETURN P_I_DATE || TO_CHAR(DATA_ID_SEQ.NEXTVAL, 'FM000000000000000000000000');

END;
/

create PROCEDURE "SP_GFDR_GEN_TODO_TASK"(REPORT_DATE IN VARCHAR, ERR_CODE OUT VARCHAR, ERR_MSG OUT VARCHAR) AS
    V_REPORT_DATE  VARCHAR(32);
    V_NOW          DATE;
    V_NOW_DATE     CHAR(8);
    V_NOW_DATETIME CHAR(14);
    V_P_TASK_ID    CHAR(32);
    V_SUB_TASK_ID  CHAR(32);

BEGIN
    V_NOW := SYSDATE();
    V_REPORT_DATE := REPORT_DATE;
    V_NOW_DATE := TO_CHAR(V_NOW, 'YYYYMMDD');
    V_NOW_DATETIME := TO_CHAR(V_NOW, 'YYYYMMDDHH24MISS');

    ERR_CODE := '00';
    ERR_MSG := 'OK';

    --DELETE GFDR_BM_TODO_TASK  BY REPORT_DATE 。
    DELETE FROM GFDR_BM_TODO_TASK WHERE REPORT_DATE = V_REPORT_DATE;

    BEGIN
        DECLARE
            CURSOR cur_1 is
                --查询主任务 --RSV1 为生效/无效标识，当rsv1='1'时，是系统默认下发的 有效;   rsv1='0'是用户修改为无效的。
                SELECT * FROM GFDR_BM_TODO_TASK_CFG WHERE TASK_TYPE = '0' AND RSV1 = '1';
        BEGIN
            FOR REC IN cur_1
                LOOP
                    V_P_TASK_ID := GET_DATA_ID(V_NOW_DATE);
                    insert into GFDR_BM_TODO_TASK (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID,
                                                   TASK_MODULE, TASK_ID, TASK_NAME, REPORT_CODE, REPORT_NAME,
                                                   REPORT_DATE, TASK_TYPE, P_TASK_ID, CHECK_STATUS, TASK_STATUS,
                                                   NEXT_ACTION, DATA_STATUS, DATA_VERSION, DATA_CRT_USER, DATA_CRT_DATE,
                                                   DATA_CRT_TIME, RSV1, RSV2)
                    VALUES (GET_DATA_ID(V_REPORT_DATE), V_NOW_DATE, REC.CORP_ID, REC.OPERATION_ORG_ID,
                            REC.BUSINESS_LINE,
                            REC.TASK_MODULE, V_P_TASK_ID, REC.TASK_NAME, REC.REPORT_CODE, REC.REMARKS, V_REPORT_DATE,
                            REC.TASK_TYPE, '', 'N', REC.TASK_STATUS,
                            REC.NEXT_ACTION, '00', 0, 'SYS', V_NOW_DATE, V_NOW_DATETIME, REC.TASK_ID, REC.P_TASK_ID);

                    BEGIN
                        --查询子任务。RSV1 为生效/无效标识，当rsv1='1'时，是系统默认下发的 有效;   rsv1='0'是用户修改为无效的。
                        DECLARE
                            CURSOR cur_2 is SELECT *
                                            FROM GFDR_BM_TODO_TASK_CFG
                                            WHERE P_TASK_ID = REC.TASK_ID AND RSV1 = '1';
                        BEGIN
                            FOR CHILD IN cur_2
                                LOOP
                                    V_SUB_TASK_ID := GET_DATA_ID(V_NOW_DATE);
                                    insert into GFDR_BM_TODO_TASK (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID,
                                                                   TASK_MODULE, TASK_ID, TASK_NAME, REPORT_CODE,
                                                                   REPORT_NAME, REPORT_DATE, TASK_TYPE, P_TASK_ID,
                                                                   CHECK_STATUS, TASK_STATUS,
                                                                   NEXT_ACTION, DATA_STATUS, DATA_VERSION,
                                                                   DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, RSV1,
                                                                   RSV2)
                                    VALUES (GET_DATA_ID(V_REPORT_DATE), V_NOW_DATE, CHILD.CORP_ID,
                                            CHILD.OPERATION_ORG_ID, CHILD.BUSINESS_LINE,
                                            CHILD.TASK_MODULE, V_SUB_TASK_ID, CHILD.TASK_NAME, CHILD.REPORT_CODE,
                                            CHILD.REMARKS, V_REPORT_DATE,
                                            CHILD.TASK_TYPE, V_P_TASK_ID, 'N', CHILD.TASK_STATUS,
                                            CHILD.NEXT_ACTION, '00', 0, 'SYS', V_NOW_DATE, V_NOW_DATETIME,
                                            CHILD.TASK_ID, CHILD.P_TASK_ID);
                                END LOOP;
                        END;


                    END;


                END LOOP;
        END;
    END;


    /*
        insert into GFDR_BM_TODO_TASK (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID,
                                    TASK_MODULE, TASK_ID, TASK_NAME, REPORT_CODE,REPORT_NAME, REPORT_DATE, TASK_TYPE, P_TASK_ID, CHECK_STATUS, TASK_STATUS,
                                    NEXT_ACTION, DATA_STATUS, DATA_VERSION, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME)
          SELECT
            GET_DATA_ID(V_REPORT_DATE),
            V_NOW_DATE,
            CORP_ID,
            OPERATION_ORG_ID,
            BUSINESS_LINE,
            TASK_MODULE,
            TASK_ID,
            TASK_NAME,
            REPORT_CODE,
            REMARKS,
            V_REPORT_DATE,
            TASK_TYPE,
            P_TASK_ID,
            'N',
            TASK_STATUS,
            NEXT_ACTION,
            '00',
            0,
            'SYS',
            V_NOW_DATE,
            V_NOW_DATETIME
          FROM GFDR_BM_TODO_TASK_CFG;
    */
    COMMIT;
END;
/

create PROCEDURE "SP_GFDR_GEN_TODO_TASK_CFG"(ERR_CODE OUT VARCHAR, ERR_MSG OUT VARCHAR) AS
    V_NOWDATE             VARCHAR2(8);
    V_NOWTIME             VARCHAR2(14);
    V_TASKID              VARCHAR2(32);
    V_P_TASKID            VARCHAR2(32);
    V_REPORT_ORG_ID       VARCHAR2(256);
    V_OPERATION_ORG_ID    VARCHAR2(256);
    V_TASKNAME            VARCHAR2(256);
    V_BUSINESS_LINE       VARCHAR2(256);
    V_REPORT_CODE         VARCHAR2(256);
    V_NBJGH_COUNT         NUMBER(8);
    V_BRANCH_BUSINESSLINE VARCHAR2(256);
    V_BUSINESS_COUNT      NUMBER(8);
    V_REPORT_NAME         VARCHAR2(256);


    /**
    思路：
    RSV1 为 有效/无效的标志，系统默认的标志为 有效-1 。
    RSV2 为 根据系统中上报报表，上报机构，业务线等配置 和当前 GFDR_BM_TODO_TASK_CFG配置表中的数据进行对比，已系统查到的数据为准，最后删掉RSV2没有值的配置信息。。
    1. 将GFDR_BM_TODO_TASK_CFG 表中的RSV2赋值为空。
    2. 根据循环查询的条件对主任务进行MERGE。并同时将RSV2赋值为SYS_EXISTS。
    3. 根据循环查询的条件对子任务进行MERGE。并同时将RSV2赋值为SYS_EXISTS。
     MERGE : WHEN MATCHED THEN : RSV2='SYS_EXISTS' ;
    4. 最后删除RSV2中没有赋值的数据（即：用户删除或修改了上报机构，上报报表，上报机构和业务线的关系，上报报表和业务线的关系）。
   */

BEGIN
    V_NOWDATE := TO_CHAR(SYSDATE, 'yyyymmdd');
    V_NOWTIME := TO_CHAR(SYSDATE, 'yyyymmddhh24miss');
    ERR_CODE := '00';
    ERR_MSG := 'OK';

    --1.先将RSV2赋值为空，
    UPDATE GFDR_BM_TODO_TASK_CFG SET RSV2 ='';

    --2. 循环MERGE INTO
    BEGIN

        DECLARE
            CURSOR cur1 is
                SELECT A.CORP_ID,
                       'GFDR'      TASK_MODULE,
                       ''          TASK_ID,
                       A.BRNAME    TASK_NAME,
                       ''          TASK_STATUS,
                       '0'         TASK_TYPE,
                       ''          P_TASK_ID,
                       A.BRCODE    REPORT_ORG_ID,
                       A.BRCODE    OPERATION_ORG_ID,
                       B.FILE_NAME REPORT_CODE,
                       B.REMARKS   REPORT_NAME
                FROM GP_BM_BRANCH A,
                     GFDR_BM_RPT_CFG B
                where a.BRCLASS = '2'
            --where B.REPORT_CODE in ( 'JGXXB','GYB')
            ;

            --配置待补录任务和待补录子任务。
        BEGIN
            FOR REC IN cur1
                LOOP
                    V_REPORT_ORG_ID := REC.REPORT_ORG_ID;
                    V_OPERATION_ORG_ID := REC.OPERATION_ORG_ID;
                    V_REPORT_CODE := REC.REPORT_CODE;
                    V_TASKID := GET_DATA_ID(V_NOWDATE);
                    V_TASKNAME := REC.TASK_NAME;
                    V_REPORT_NAME := REC.REPORT_NAME;

                    --待审核主任务 --NEXT_ACTION = '02' TASK_STATUS ='20'
                    MERGE INTO GFDR_BM_TODO_TASK_CFG T1
                    USING (SELECT '0'         TASK_TYPE,
                                  A.BRCODE    REPORT_ORG_ID,
                                  A.BRCODE    OPERATION_ORG_ID,
                                  B.FILE_NAME REPORT_CODE,
                                  B.REMARKS   REPORT_NAME
                           FROM GP_BM_BRANCH A,
                                GFDR_BM_RPT_CFG B
                           WHERE A.BRCLASS = '2'
                             AND A.BRCODE = V_REPORT_ORG_ID
                             AND B.FILE_NAME = V_REPORT_CODE) T2
                    ON (T1.REPORT_ORG_ID = T2.REPORT_ORG_ID AND T1.OPERATION_ORG_ID = T2.OPERATION_ORG_ID AND
                        T1.REPORT_CODE = T2.REPORT_CODE AND T1.TASK_TYPE = T2.TASK_TYPE)
                    WHEN MATCHED THEN
                        UPDATE
                        SET T1.RSV1=CASE WHEN T1.RSV1 IS NULL THEN '1' ELSE T1.RSV1 END,
                            T1.RSV2 ='SYS_EXISTS'
                    WHEN NOT MATCHED THEN
                        INSERT (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID,
                                TASK_MODULE, TASK_ID, TASK_NAME, TASK_STATUS, TASK_TYPE, P_TASK_ID,
                                REPORT_ORG_ID, OPERATION_ORG_ID, BUSINESS_LINE, REPORT_CODE,
                                REMARKS, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_SOURCE, CHECK_FLAG, CHECK_DESC,
                                CHECK_ERR_TYPE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER,
                                DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME,
                                DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME,
                                RSV1, RSV2, RSV3, RSV4, RSV5)
                        VALUES (GET_DATA_ID(V_NOWDATE), V_NOWDATE, REC.CORP_ID, '', '',
                                REC.TASK_MODULE, V_TASKID, V_TASKNAME || '-审核主任务', '20', '0', '',
                                V_REPORT_ORG_ID, V_OPERATION_ORG_ID, '', V_REPORT_CODE,
                                V_REPORT_NAME, '20', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '',
                                '',
                                '1', 'SYS_EXISTS', '', '', '');

                    --将审核主任务的TASK_ID作为补录子任务的P_TASK_ID.
                    --V_P_TASKID := V_TASKID;
                    SELECT TASK_ID
                    INTO V_P_TASKID
                    FROM GFDR_BM_TODO_TASK_CFG
                    WHERE REPORT_ORG_ID = V_REPORT_ORG_ID
                      AND OPERATION_ORG_ID = V_REPORT_ORG_ID
                      AND REPORT_CODE = V_REPORT_CODE
                      AND TASK_TYPE = '0';

                    BEGIN

                        /**
              补录子任务 --NEXT_ACTION='00' TASK_STATUS='00'
             */
                        -- 查询报送行下属所有的机构。
                        DECLARE
                            CURSOR CUR_BRNO is
                                SELECT *
                                FROM (SELECT *
                                      FROM GP_BM_BRANCH
                                      WHERE BRNO NOT IN (SELECT BRCODE
                                                         FROM GP_BM_BRANCH
                                                         WHERE BRCLASS = '2' AND BRCODE != V_REPORT_ORG_ID))
                                START WITH BRNO = V_REPORT_ORG_ID
                                CONNECT BY PRIOR BRNO = BLN_UP_BRCODE;
                        BEGIN
                            FOR V_BRANCH IN CUR_BRNO
                                LOOP
                                    V_OPERATION_ORG_ID := V_BRANCH.BRNO;
                                    V_TASKNAME := V_BRANCH.BRNAME;
                                    BEGIN
                                        --查询当前报送行和当前报表所对应的业务线。
                                        SELECT BUSINESS_LINE
                                        INTO V_BRANCH_BUSINESSLINE
                                        from GP_BM_BRANCH
                                        where BRNO = V_OPERATION_ORG_ID;
                                        --如果业务条线为空，则当前机构没有需要补录审核的业务条线，直接跳过。
                                        IF V_BRANCH_BUSINESSLINE is null
                                        THEN
                                            CONTINUE;
                                        ELSE
                                            --根据V_BRANCH_BUSINESSLINE 判断是否存在‘,’，如果有‘,’，说明存在多个业务线，需要循环遍历，否则就只有一条业务条线。
                                            --如果有多个业务线，需要使用函数将逗号转成列，再关联报表业务条线关系表进行inner join.确保查询出的业务条线不仅在机构中存在，也和报表关联。
                                            IF (INSTR(V_BRANCH_BUSINESSLINE, ',') > 0)
                                            THEN --存在多个业务线

                                                MERGE INTO GFDR_BM_TODO_TASK_CFG T1
                                                USING
                                                    (select DISTINCT A.BUSINESS_LINE
                                                     FROM (
                                                              SELECT REGEXP_SUBSTR(V_BRANCH_BUSINESSLINE, '[^,]+', 1, rownum) BUSINESS_LINE
                                                              from dual
                                                              connect by rownum <=
                                                                         LENGTH(V_BRANCH_BUSINESSLINE) -
                                                                         LENGTH(regexp_replace(V_BRANCH_BUSINESSLINE, ',', '')) +
                                                                         1
                                                          ) A
                                                              INNER JOIN
                                                          GFDR_BM_RPT_DEPART_REL B ON A.BUSINESS_LINE = B.BUSINESS_LINE
                                                     where B.REPORT_CODE = V_REPORT_CODE) T2
                                                ON (T1.TASK_TYPE = '1' AND T1.REPORT_CODE = V_REPORT_CODE AND
                                                    T1.BUSINESS_LINE = T2.BUSINESS_LINE AND
                                                    T1.REPORT_ORG_ID = V_REPORT_ORG_ID AND
                                                    T1.OPERATION_ORG_ID = V_OPERATION_ORG_ID)
                                                WHEN MATCHED THEN
                                                    UPDATE
                                                    SET T1.RSV1=CASE WHEN T1.RSV1 IS NULL THEN '1' ELSE T1.RSV1 END,
                                                        RSV2='SYS_EXISTS'
                                                WHEN NOT MATCHED THEN
                                                    INSERT
                                                    (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID,
                                                     TASK_MODULE, TASK_ID, TASK_NAME, TASK_STATUS, TASK_TYPE,
                                                     P_TASK_ID, REPORT_ORG_ID, OPERATION_ORG_ID, BUSINESS_LINE,
                                                     REPORT_CODE,
                                                     REMARKS, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_SOURCE,
                                                     CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, DATA_VERSION,
                                                     DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE,
                                                     DATA_CRT_TIME, DATA_CHG_USER,
                                                     DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE,
                                                     DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
                                                    VALUES (GET_DATA_ID(V_NOWDATE), V_NOWDATE, REC.CORP_ID, '', '',
                                                            REC.TASK_MODULE, GET_DATA_ID(V_NOWDATE),
                                                            V_TASKNAME || '-补录子任务', '00', '1',
                                                            V_P_TASKID, V_REPORT_ORG_ID, V_OPERATION_ORG_ID,
                                                            T2.BUSINESS_LINE, V_REPORT_CODE,
                                                            V_REPORT_NAME, '00', '', '', '', '', '', '', '', '', '',
                                                            'SYS', V_NOWDATE, V_NOWTIME, '',
                                                            '', '', '', '', '', '1', 'SYS_EXISTS', '', '', '');

                                                /**
                        循环插入业务线子任务。

                      DECLARE CURSOR CUR_BUSINESSLINE is
                        select A.BUSINESS_LINE
                        FROM (
                               SELECT REGEXP_SUBSTR(V_BRANCH_BUSINESSLINE, '[^,]+', 1, rownum) BUSINESS_LINE
                               from dual
                               connect by rownum <=
                                          LENGTH(V_BRANCH_BUSINESSLINE) -
                                          LENGTH(regexp_replace(V_BRANCH_BUSINESSLINE, ',', '')) + 1
                             ) A INNER JOIN
                          GFDR_BM_RPT_DEPART_REL B ON A.BUSINESS_LINE = B.BUSINESS_LINE
                        where B.REPORT_CODE = V_REPORT_CODE;
                      BEGIN
                        FOR BUS IN CUR_BUSINESSLINE LOOP
                          V_BUSINESS_LINE := BUS.BUSINESS_LINE;
                          V_TASKID := GET_DATA_ID(V_NOWDATE);
                          --补录子任务
                          INSERT INTO GFDR_BM_TODO_TASK_CFG
                          (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID,
                           TASK_MODULE, TASK_ID, TASK_NAME, TASK_STATUS, TASK_TYPE,
                           P_TASK_ID, REPORT_ORG_ID, OPERATION_ORG_ID, BUSINESS_LINE, REPORT_CODE,
                           REMARKS, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_SOURCE, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER,
                           DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
                          VALUES
                            (GET_DATA_ID(V_NOWDATE), V_NOWDATE, REC.CORP_ID, '', '',
                                                     REC.TASK_MODULE, V_TASKID, V_TASKNAME || '-补录子任务', '00', '1',
                                                     V_P_TASKID, V_REPORT_ORG_ID, V_OPERATION_ORG_ID, V_BUSINESS_LINE,V_REPORT_CODE,
                                                                 V_REPORT_NAME, '00', '', '', '', '', '', '', '', '', '', 'SYS', V_NOWDATE, V_NOWTIME,'',
                                                                                                      '', '', '', '', '', 'SYS_SET', 'SYS_EXISTS', '', '', '');
                        END LOOP;
                      END;
                      */

                                            ELSE
                                                --只有一个业务线 ,关联报表业务条线关系表进行查询.确保当前的业务条线不仅在机构中存在，也和报表关联。
                                                BEGIN
                                                    SELECT COUNT(1)
                                                    INTO V_BUSINESS_COUNT
                                                    FROM GFDR_BM_RPT_DEPART_REL B
                                                    WHERE B.BUSINESS_LINE = V_BRANCH_BUSINESSLINE
                                                      AND B.REPORT_CODE = V_REPORT_CODE;
                                                    --如果当前业务线在报表业务线关系表中不存在，则跳过。
                                                    IF V_BUSINESS_COUNT = 0 THEN
                                                        CONTINUE ;
                                                    END IF;
                                                    V_BUSINESS_LINE := V_BRANCH_BUSINESSLINE;
                                                    V_TASKID := GET_DATA_ID(V_NOWDATE);

                                                    MERGE INTO GFDR_BM_TODO_TASK_CFG T1
                                                    USING
                                                        (select DISTINCT A.BUSINESS_LINE
                                                         FROM GFDR_BM_RPT_DEPART_REL A
                                                         WHERE A.BUSINESS_LINE = V_BUSINESS_LINE
                                                           AND A.REPORT_CODE = V_REPORT_CODE) T2
                                                    ON (T1.TASK_TYPE = '1' AND T1.REPORT_CODE = V_REPORT_CODE AND
                                                        T1.BUSINESS_LINE = T2.BUSINESS_LINE AND
                                                        T1.REPORT_ORG_ID = V_REPORT_ORG_ID AND
                                                        T1.OPERATION_ORG_ID = V_OPERATION_ORG_ID)
                                                    WHEN MATCHED THEN
                                                        UPDATE
                                                        SET T1.RSV1=CASE WHEN T1.RSV1 IS NULL THEN '1' ELSE T1.RSV1 END,
                                                            RSV2='SYS_EXISTS'
                                                    WHEN NOT MATCHED THEN
                                                        INSERT
                                                        (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID,
                                                         TASK_MODULE, TASK_ID, TASK_NAME, TASK_STATUS, TASK_TYPE,
                                                         P_TASK_ID, REPORT_ORG_ID, OPERATION_ORG_ID, BUSINESS_LINE,
                                                         REPORT_CODE,
                                                         REMARKS, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_SOURCE,
                                                         CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, DATA_VERSION,
                                                         DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE,
                                                         DATA_CRT_TIME, DATA_CHG_USER,
                                                         DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE,
                                                         DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
                                                        VALUES (GET_DATA_ID(V_NOWDATE), V_NOWDATE, REC.CORP_ID, '', '',
                                                                REC.TASK_MODULE, GET_DATA_ID(V_NOWDATE),
                                                                V_TASKNAME || '-补录子任务', '00', '1',
                                                                V_P_TASKID, V_REPORT_ORG_ID, V_OPERATION_ORG_ID,
                                                                T2.BUSINESS_LINE, V_REPORT_CODE,
                                                                V_REPORT_NAME, '00', '', '', '', '', '', '', '', '', '',
                                                                'SYS', V_NOWDATE, V_NOWTIME, '',
                                                                '', '', '', '', '', '1', 'SYS_EXISTS', '', '', '');
                                                    /**
                          INSERT INTO GFDR_BM_TODO_TASK_CFG
                          (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID,
                           TASK_MODULE, TASK_ID, TASK_NAME, TASK_STATUS, TASK_TYPE,
                           P_TASK_ID, REPORT_ORG_ID, OPERATION_ORG_ID, BUSINESS_LINE, REPORT_CODE,
                           REMARKS, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_SOURCE, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER,
                           DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
                          VALUES
                            (GET_DATA_ID(V_NOWDATE), V_NOWDATE, REC.CORP_ID, '', '',
                                                     REC.TASK_MODULE, V_TASKID, V_TASKNAME || '-补录子任务', '00', '1',
                                                     V_P_TASKID, V_REPORT_ORG_ID, V_OPERATION_ORG_ID, V_BUSINESS_LINE,V_REPORT_CODE,
                                                                 V_REPORT_NAME, '00', '', '', '', '', '', '', '', '', '', 'SYS', V_NOWDATE, V_NOWTIME,'',
                                                                                                      '', '', '', '', '', '', '', '', '', '');
                        */
                                                END;
                                            END IF;
                                        END IF;

                                    END;

                                END LOOP;
                        END;

                    END;
                END LOOP;
        END;


        -- 3. 删除 RSV2 为空的数据。
        DELETE FROM GFDR_BM_TODO_TASK_CFG WHERE RSV2 IS NULL;
        commit;
        DBMS_OUTPUT.PUT_LINE('Sample output');
    END;

END;
/

create FUNCTION "MD5"(
    pass in varchar2)
    return varchar2 is
    retval varchar2(1000);
begin
    retval := utl_raw.cast_to_raw(dbms_obfuscation_toolkit.MD5(input_string => pass));
    return retval;
end;
/

create FUNCTION "FN_MASKING_ZJLB"(ZJLB_VAL VARCHAR2,
                                  COLUMN_VAL VARCHAR2)
    RETURN VARCHAR2 AS
BEGIN

    --如果证件类别为空不加密
    IF ZJLB_VAL IS NULL OR COLUMN_VAL IS NULL THEN
        RETURN COLUMN_VAL;
    END IF;

    --不加密
    IF ZJLB_VAL IN ('统一社会信用代码', '组织机构代码', '无证件', '其他') THEN
        RETURN COLUMN_VAL;
    ELSE
        IF LENGTH(COLUMN_VAL) = 18 THEN
            RETURN SUBSTRB(COLUMN_VAL, 0, 14) || LOWER(MD5(UPPER(COLUMN_VAL)));
        END IF;

        RETURN LOWER(MD5(COLUMN_VAL));
    END IF;
END FN_MASKING_ZJLB;
/

create FUNCTION FN_MASKING_ID(ID_TYPE VARCHAR2,
                              ID_NO VARCHAR2)
    RETURN VARCHAR2 AS
BEGIN

    --如果证件类别为空不脱敏
    IF ID_TYPE IS NULL OR ID_NO IS NULL THEN
        RETURN ID_NO;
    END IF;

    --企业证件不脱敏（NOTE: 99-其他证件目前不方便区分是个人还是企业，一律不脱敏)
    IF ID_TYPE in ('01', '02', '99') THEN
        RETURN ID_NO;
    ELSE
        RETURN SUBSTRB(ID_NO, 0, 6) || LOWER(MD5(UPPER(ID_NO)));
    END IF;
END FN_MASKING_ID;
/

create FUNCTION "FN_SERIALIZE_DATE"(column_val varchar2,
                                    format_str varchar2)
    return varchar2 as
    retval varchar2(1000); --隐私处理
    v_temp number(10);
begin

    if column_val is null then
        return column_val;
    end if;

    retval := column_val;

    if format_str = 'YYYY-MM-DD' and length(column_val) = 8 then
        retval := substr(column_val, 1, 4) || '-' || substr(column_val, 5, 2) || '-' || substr(column_val, 7, 2);
    end if;

    return retval;
end FN_SERIALIZE_DATE;
/

