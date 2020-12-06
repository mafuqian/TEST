create table MBT_110_HIS_BAK
(
    DATA_ID              CHAR(32) not null primary key,
    DATA_DATE            CHAR(8),
    CORP_ID              VARCHAR2(14),
    ORG_ID               VARCHAR2(14),
    CUST_NO              VARCHAR2(32),
    GROUP_ID             VARCHAR2(14),
    INQ_ORG_ID           CHAR(24),
    INQ_GROUP_ID         CHAR(24),
    B_INF_REC_TYPE       CHAR(3),
    B_NAME               NVARCHAR2(30),
    B_ID_TYPE            VARCHAR2(2),
    B_ID_NUM             NVARCHAR2(20),
    B_INF_SURC_CODE      VARCHAR2(20),
    B_RPT_DATE           CHAR(8),
    B_RPT_DATE_CODE      CHAR(2),
    B_CIMOC              VARCHAR2(14),
    B_CUSTOMER_TYPE      VARCHAR2(2),
    C_ID_INFO_UP_DATE    CHAR(8),
    D_SEX                CHAR,
    D_DOB                CHAR(8),
    D_NATION             CHAR(3),
    D_HOUSE_ADD          NVARCHAR2(100),
    D_HH_DIST            CHAR(6),
    D_CELL_PHONE         CHAR(11),
    D_EMAIL              NVARCHAR2(60),
    D_FCS_INFO_UP_DATE   CHAR(8),
    E_MARI_STATUS        CHAR(2),
    E_SPO_NAME           NVARCHAR2(30),
    E_SPO_ID_TYPE        VARCHAR2(2),
    E_SPO_ID_NUM         NVARCHAR2(20),
    E_SPO_TEL            NVARCHAR2(25),
    E_SPS_CMPY_NM        NVARCHAR2(80),
    E_SPS_INFO_UP_DATE   CHAR(8),
    F_EDU_LEVEL          CHAR(2),
    F_ACA_DEGREE         CHAR,
    F_EDU_INFO_UP_DATE   CHAR(8),
    G_EMP_STATUS         CHAR(2),
    G_CPN_NAME           NVARCHAR2(80),
    G_CPN_TYPE           VARCHAR2(2),
    G_INDUSTRY           CHAR,
    G_CPN_ADDR           NVARCHAR2(100),
    G_CPN_PC             CHAR(6),
    G_CPN_DIST           CHAR(6),
    G_CPN_TEL            NVARCHAR2(25),
    G_OCCUPATION         CHAR,
    G_TITLE              CHAR,
    G_TECH_TITLE         CHAR,
    G_WORK_START_DATE    CHAR(4),
    G_OCTPN_INFO_UP_DATE CHAR(8),
    H_RESI_STATUS        VARCHAR2(2),
    H_RESI_ADDR          NVARCHAR2(100),
    H_RESI_PC            CHAR(6),
    H_RESI_DIST          CHAR(6),
    H_HOME_TEL           NVARCHAR2(25),
    H_RESI_INFO_UP_DATE  CHAR(8),
    I_MAIL_ADDR          NVARCHAR2(100),
    I_MAIL_PC            CHAR(6),
    I_MAIL_DIST          CHAR(6),
    I_MLG_INFO_UP_DATE   CHAR(8),
    J_ANNL_INC           NUMBER(15),
    J_TAX_INCOME         NUMBER(15),
    J_INC_INFO_UP_DATE   CHAR(8),
    REMARKS              NVARCHAR2(512),
    CHECK_FLAG           CHAR,
    CHECK_DESC           NVARCHAR2(512),
    CHECK_ERR_TYPE       CHAR,
    NEXT_ACTION          CHAR(2),
    DATA_STATUS          CHAR(2),
    DATA_FLAG            CHAR,
    DATA_SOURCE          CHAR,
    DATA_VERSION         NUMBER(8),
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
    RSV1                 NVARCHAR2(180),
    RSV2                 NVARCHAR2(180),
    RSV3                 NVARCHAR2(180),
    RSV4                 NVARCHAR2(180),
    RSV5                 NVARCHAR2(180),
    DATA_DESC            NVARCHAR2(256),
    ODS_DATA_ID          CHAR(32),
    HIS_DATE             CHAR(8),
    HIS_DATE_TIME        CHAR(14),
    IS_RPT               VARCHAR2(64),
    FB_STATUS            CHAR(2),
    RPT_FILE_NAME        VARCHAR2(512),
    J_ANNL_INC_LCY       NUMBER(15),
    J_TAX_INCOME_LCY     NUMBER(15)
);
comment on column MBT_110_HIS_BAK.DATA_ID is '数据ID';
comment on column MBT_110_HIS_BAK.DATA_DATE is '数据日期';
comment on column MBT_110_HIS_BAK.CORP_ID is '法人机构号';
comment on column MBT_110_HIS_BAK.ORG_ID is '分行机构号';
comment on column MBT_110_HIS_BAK.CUST_NO is '客户号';
comment on column MBT_110_HIS_BAK.GROUP_ID is '部门编号';
comment on column MBT_110_HIS_BAK.INQ_ORG_ID is '查询机构号';
comment on column MBT_110_HIS_BAK.INQ_GROUP_ID is '查询组号';
comment on column MBT_110_HIS_BAK.B_INF_REC_TYPE is '信息记录类型';
comment on column MBT_110_HIS_BAK.B_NAME is '姓名';
comment on column MBT_110_HIS_BAK.B_ID_TYPE is '证件类型';
comment on column MBT_110_HIS_BAK.B_ID_NUM is '证件号码';
comment on column MBT_110_HIS_BAK.B_INF_SURC_CODE is '信息来源编码';
comment on column MBT_110_HIS_BAK.B_RPT_DATE is '信息报告日期';
comment on column MBT_110_HIS_BAK.B_RPT_DATE_CODE is '报告时点说明代码';
comment on column MBT_110_HIS_BAK.B_CIMOC is '客户资料维护机构代码';
comment on column MBT_110_HIS_BAK.B_CUSTOMER_TYPE is '客户资料类型';
comment on column MBT_110_HIS_BAK.C_ID_INFO_UP_DATE is '信息更新日期';
comment on column MBT_110_HIS_BAK.D_SEX is '性别';
comment on column MBT_110_HIS_BAK.D_DOB is '出生日期';
comment on column MBT_110_HIS_BAK.D_NATION is '国籍';
comment on column MBT_110_HIS_BAK.D_HOUSE_ADD is '户籍地址';
comment on column MBT_110_HIS_BAK.D_HH_DIST is '户籍所在地行政区划';
comment on column MBT_110_HIS_BAK.D_CELL_PHONE is '手机号码';
comment on column MBT_110_HIS_BAK.D_EMAIL is '电子邮箱';
comment on column MBT_110_HIS_BAK.D_FCS_INFO_UP_DATE is '信息更新日期';
comment on column MBT_110_HIS_BAK.E_MARI_STATUS is '婚姻状况';
comment on column MBT_110_HIS_BAK.E_SPO_NAME is '配偶姓名';
comment on column MBT_110_HIS_BAK.E_SPO_ID_TYPE is '配偶证件类型';
comment on column MBT_110_HIS_BAK.E_SPO_ID_NUM is '配偶证件号码';
comment on column MBT_110_HIS_BAK.E_SPO_TEL is '配偶联系电话';
comment on column MBT_110_HIS_BAK.E_SPS_CMPY_NM is '配偶工作单位';
comment on column MBT_110_HIS_BAK.E_SPS_INFO_UP_DATE is '信息更新日期';
comment on column MBT_110_HIS_BAK.F_EDU_LEVEL is '学历';
comment on column MBT_110_HIS_BAK.F_ACA_DEGREE is '学位';
comment on column MBT_110_HIS_BAK.F_EDU_INFO_UP_DATE is '信息更新日期';
comment on column MBT_110_HIS_BAK.G_EMP_STATUS is '就业状况';
comment on column MBT_110_HIS_BAK.G_CPN_NAME is '单位名称';
comment on column MBT_110_HIS_BAK.G_CPN_TYPE is '单位性质';
comment on column MBT_110_HIS_BAK.G_INDUSTRY is '单位所属行业';
comment on column MBT_110_HIS_BAK.G_CPN_ADDR is '单位详细地址';
comment on column MBT_110_HIS_BAK.G_CPN_PC is '单位所在地邮编';
comment on column MBT_110_HIS_BAK.G_CPN_DIST is '单位所在地行政区划';
comment on column MBT_110_HIS_BAK.G_CPN_TEL is '单位电话';
comment on column MBT_110_HIS_BAK.G_OCCUPATION is '职业';
comment on column MBT_110_HIS_BAK.G_TITLE is '职务';
comment on column MBT_110_HIS_BAK.G_TECH_TITLE is '职称';
comment on column MBT_110_HIS_BAK.G_WORK_START_DATE is '本单位工作起始年份';
comment on column MBT_110_HIS_BAK.G_OCTPN_INFO_UP_DATE is '信息更新日期';
comment on column MBT_110_HIS_BAK.H_RESI_STATUS is '居住状况';
comment on column MBT_110_HIS_BAK.H_RESI_ADDR is '居住地详细地址';
comment on column MBT_110_HIS_BAK.H_RESI_PC is '居住地邮编';
comment on column MBT_110_HIS_BAK.H_RESI_DIST is '居住地行政区划';
comment on column MBT_110_HIS_BAK.H_HOME_TEL is '住宅电话';
comment on column MBT_110_HIS_BAK.H_RESI_INFO_UP_DATE is '信息更新日期';
comment on column MBT_110_HIS_BAK.I_MAIL_ADDR is '通讯地址';
comment on column MBT_110_HIS_BAK.I_MAIL_PC is '通讯地邮编';
comment on column MBT_110_HIS_BAK.I_MAIL_DIST is '通讯地行政区划';
comment on column MBT_110_HIS_BAK.I_MLG_INFO_UP_DATE is '信息更新日期';
comment on column MBT_110_HIS_BAK.J_ANNL_INC is '自报年收入';
comment on column MBT_110_HIS_BAK.J_TAX_INCOME is '纳税年收入';
comment on column MBT_110_HIS_BAK.J_INC_INFO_UP_DATE is '信息更新日期';
comment on column MBT_110_HIS_BAK.REMARKS is '备注';
comment on column MBT_110_HIS_BAK.CHECK_FLAG is '校验标识';
comment on column MBT_110_HIS_BAK.CHECK_DESC is '校验结果';
comment on column MBT_110_HIS_BAK.CHECK_ERR_TYPE is '校验失败类型';
comment on column MBT_110_HIS_BAK.NEXT_ACTION is '下一动作';
comment on column MBT_110_HIS_BAK.DATA_STATUS is '数据状态';
comment on column MBT_110_HIS_BAK.DATA_FLAG is '数据是否已删除';
comment on column MBT_110_HIS_BAK.DATA_SOURCE is '数据来源';
comment on column MBT_110_HIS_BAK.DATA_VERSION is '数据版本号';
comment on column MBT_110_HIS_BAK.DATA_REJ_DESC is '数据审核拒绝描述';
comment on column MBT_110_HIS_BAK.DATA_DEL_DESC is '数据删除描述';
comment on column MBT_110_HIS_BAK.DATA_CRT_USER is '数据创建/导入用户';
comment on column MBT_110_HIS_BAK.DATA_CRT_DATE is '数据创建/导入日期';
comment on column MBT_110_HIS_BAK.DATA_CRT_TIME is '数据创建/导入时间';
comment on column MBT_110_HIS_BAK.DATA_CHG_USER is '数据修改/删除用户';
comment on column MBT_110_HIS_BAK.DATA_CHG_DATE is '数据修改/删除日期';
comment on column MBT_110_HIS_BAK.DATA_CHG_TIME is '数据修改/删除时间';
comment on column MBT_110_HIS_BAK.DATA_APV_USER is '数据审核/拒绝用户';
comment on column MBT_110_HIS_BAK.DATA_APV_DATE is '数据审核/拒绝日期';
comment on column MBT_110_HIS_BAK.DATA_APV_TIME is '数据审核/拒绝时间';
comment on column MBT_110_HIS_BAK.RSV1 is '扩展字段1';
comment on column MBT_110_HIS_BAK.RSV2 is '扩展字段2';
comment on column MBT_110_HIS_BAK.RSV3 is '扩展字段3';
comment on column MBT_110_HIS_BAK.RSV4 is '扩展字段4';
comment on column MBT_110_HIS_BAK.RSV5 is '扩展字段5';
comment on column MBT_110_HIS_BAK.DATA_DESC is '记录描述';
comment on column MBT_110_HIS_BAK.ODS_DATA_ID is 'ODS数据ID';
comment on column MBT_110_HIS_BAK.HIS_DATE is '信息同步日期';
comment on column MBT_110_HIS_BAK.HIS_DATE_TIME is '信息同步时间';
comment on column MBT_110_HIS_BAK.IS_RPT is '是否上报';
comment on column MBT_110_HIS_BAK.FB_STATUS is '反馈状态';
comment on column MBT_110_HIS_BAK.RPT_FILE_NAME is '上报文件名';

create table MBT_110_C_HIS_BAK
(
    DATA_ID         CHAR(32) not null primary key,
    PDATA_ID        CHAR(32),
    ALIAS           NVARCHAR2(30),
    OTH_ID_TYPE     VARCHAR2(2),
    OTH_ID_NUM      NVARCHAR2(20),
    ID_INFO_UPDATE  CHAR(8),
    ODS_DATA_ID     CHAR(32),
    HIS_DATE        CHAR(8),
    HIS_TIME        CHAR(14),
    DATA_DATE       CHAR(8),
    CORP_ID         VARCHAR2(14),
    ORG_ID          VARCHAR2(14),
    GROUP_ID        VARCHAR2(14),
    INQ_ORG_ID      CHAR(24),
    INQ_GROUP_ID    CHAR(24),
    DATA_DESC       NVARCHAR2(256),
    REMARKS         NVARCHAR2(512),
    CHECK_FLAG      CHAR,
    CHECK_DESC      NVARCHAR2(512),
    CHECK_ERR_TYPE  CHAR,
    NEXT_ACTION     CHAR(2),
    DATA_FLAG       CHAR,
    DATA_SOURE      CHAR,
    DATA_VERSION    NUMBER(8),
    DATA_REJ_DESC   NVARCHAR2(128),
    DATA_DEL_DESC   NVARCHAR2(128),
    DATA_CRT_USER   NVARCHAR2(20),
    DATA_CRT_DATE   CHAR(8),
    DATA_CRT_TIME   CHAR(14),
    DATA_CHG_USER   NVARCHAR2(20),
    DATA_CHG_DATE   CHAR(8),
    DATA_CHG_TIME   CHAR(14),
    DATA_APV_USER   NVARCHAR2(20),
    DATA_APV_DATE   CHAR(8),
    DATA_APV_TIME   CHAR(14),
    RSV1            NVARCHAR2(180),
    RSV2            NVARCHAR2(180),
    RSV3            NVARCHAR2(180),
    RSV4            NVARCHAR2(180),
    RSV5            NVARCHAR2(180),
    ID_INFO_UP_DATE CHAR(8)
);
comment on column MBT_110_C_HIS_BAK.DATA_ID is '主键';
comment on column MBT_110_C_HIS_BAK.PDATA_ID is '外键';
comment on column MBT_110_C_HIS_BAK.ALIAS is '姓名';
comment on column MBT_110_C_HIS_BAK.OTH_ID_TYPE is '证件类型';
comment on column MBT_110_C_HIS_BAK.OTH_ID_NUM is '证件号码';
comment on column MBT_110_C_HIS_BAK.ID_INFO_UPDATE is '信息更新日期';
comment on column MBT_110_C_HIS_BAK.ODS_DATA_ID is 'ODS数据ID';
comment on column MBT_110_C_HIS_BAK.HIS_DATE is '信息同步日期';
comment on column MBT_110_C_HIS_BAK.DATA_DATE is '数据日期';
comment on column MBT_110_C_HIS_BAK.CORP_ID is '法人机构号';
comment on column MBT_110_C_HIS_BAK.ORG_ID is '分行机构号';
comment on column MBT_110_C_HIS_BAK.GROUP_ID is '部门编号';
comment on column MBT_110_C_HIS_BAK.INQ_ORG_ID is '查询机构号';
comment on column MBT_110_C_HIS_BAK.INQ_GROUP_ID is '查询组号';
comment on column MBT_110_C_HIS_BAK.DATA_DESC is '记录描述';
comment on column MBT_110_C_HIS_BAK.REMARKS is '备注';
comment on column MBT_110_C_HIS_BAK.CHECK_FLAG is '校验标识';
comment on column MBT_110_C_HIS_BAK.CHECK_DESC is '校验结果';
comment on column MBT_110_C_HIS_BAK.CHECK_ERR_TYPE is '校验失败类型';
comment on column MBT_110_C_HIS_BAK.NEXT_ACTION is '下一动作';
comment on column MBT_110_C_HIS_BAK.DATA_FLAG is '数据是否已删除';
comment on column MBT_110_C_HIS_BAK.DATA_SOURE is '数据来源';
comment on column MBT_110_C_HIS_BAK.DATA_VERSION is '数据版本号';
comment on column MBT_110_C_HIS_BAK.DATA_REJ_DESC is '数据审核拒绝描述';
comment on column MBT_110_C_HIS_BAK.DATA_DEL_DESC is '数据删除描述';
comment on column MBT_110_C_HIS_BAK.DATA_CRT_USER is '数据创建/导入用户';
comment on column MBT_110_C_HIS_BAK.DATA_CRT_DATE is '数据创建/导入日期';
comment on column MBT_110_C_HIS_BAK.DATA_CRT_TIME is '数据创建/导入时间';
comment on column MBT_110_C_HIS_BAK.DATA_CHG_USER is '数据修改/删除用户';
comment on column MBT_110_C_HIS_BAK.DATA_CHG_DATE is '数据修改/删除日期';
comment on column MBT_110_C_HIS_BAK.DATA_CHG_TIME is '数据修改/删除时间';
comment on column MBT_110_C_HIS_BAK.DATA_APV_USER is '数据审核/拒绝用户';
comment on column MBT_110_C_HIS_BAK.DATA_APV_DATE is '数据审核/拒绝日期';
comment on column MBT_110_C_HIS_BAK.DATA_APV_TIME is '数据审核/拒绝时间';
comment on column MBT_110_C_HIS_BAK.RSV1 is '扩展字段1';
comment on column MBT_110_C_HIS_BAK.RSV2 is '扩展字段2';
comment on column MBT_110_C_HIS_BAK.RSV3 is '扩展字段3';
comment on column MBT_110_C_HIS_BAK.RSV4 is '扩展字段4';
comment on column MBT_110_C_HIS_BAK.RSV5 is '扩展字段5';
comment on column MBT_110_C_HIS_BAK.ID_INFO_UP_DATE is '信息更新日期';

-- auto-generated definition
create table MBT_130_HIS_BAK
(
    DATA_DATE      CHAR(8),
    CORP_ID        VARCHAR2(14),
    ORG_ID         VARCHAR2(14),
    GROUP_ID       VARCHAR2(14),
    INQ_ORG_ID     CHAR(24),
    INQ_GROUP_ID   CHAR(24),
    DATA_ID        CHAR(32) not null primary key,
    INF_REC_TYPE   CHAR(3),
    NAME           NVARCHAR2(30),
    ID_TYPE        VARCHAR2(2),
    ID_NUM         NVARCHAR2(20),
    ID_EFCT_DATE   CHAR(8),
    ID_DUE_DATE    CHAR(8),
    ID_ORG_NAME    NVARCHAR2(80),
    ID_DIST        CHAR(6),
    CIMOC          VARCHAR2(14),
    INF_SURC_CODE  VARCHAR2(20),
    RPT_DATE       CHAR(8),
    DATA_DESC      NVARCHAR2(256),
    REMARKS        NVARCHAR2(512),
    CHECK_FLAG     CHAR,
    CHECK_DESC     VARCHAR2(512),
    CHECK_ERR_TYPE CHAR,
    NEXT_ACTION    CHAR(2),
    DATA_STATUS    CHAR(2),
    DATA_FLAG      CHAR,
    DATA_SOURCE    CHAR,
    DATA_VERSION   NUMBER(8),
    DATA_REJ_DESC  NVARCHAR2(128),
    DATA_DEL_DESC  NVARCHAR2(128),
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
    ODS_DATA_ID    CHAR(32),
    HIS_DATE       CHAR(8),
    HIS_DATE_TIME  CHAR(14),
    IS_RPT         CHAR(64),
    FB_STATUS      CHAR(2),
    RPT_FILE_NAME  VARCHAR2(512)
);
comment on column MBT_130_HIS_BAK.DATA_DATE is '数据日期';
comment on column MBT_130_HIS_BAK.CORP_ID is '法人机构号';
comment on column MBT_130_HIS_BAK.ORG_ID is '分行机构号';
comment on column MBT_130_HIS_BAK.GROUP_ID is '部门编号';
comment on column MBT_130_HIS_BAK.INQ_ORG_ID is '查询机构号';
comment on column MBT_130_HIS_BAK.INQ_GROUP_ID is '查询组号';
comment on column MBT_130_HIS_BAK.DATA_ID is '数据ID';
comment on column MBT_130_HIS_BAK.INF_REC_TYPE is '信息记录类型';
comment on column MBT_130_HIS_BAK.NAME is 'A 姓名';
comment on column MBT_130_HIS_BAK.ID_TYPE is 'A 证件类型';
comment on column MBT_130_HIS_BAK.ID_NUM is 'A 证件号码';
comment on column MBT_130_HIS_BAK.ID_EFCT_DATE is '证件有效期起始日期';
comment on column MBT_130_HIS_BAK.ID_DUE_DATE is '证件有效期终止日期';
comment on column MBT_130_HIS_BAK.ID_ORG_NAME is '证件签发机关名称';
comment on column MBT_130_HIS_BAK.ID_DIST is '证件签发机关所在地行政区划';
comment on column MBT_130_HIS_BAK.CIMOC is '客户资料维护机构代码';
comment on column MBT_130_HIS_BAK.INF_SURC_CODE is '信息来源编码';
comment on column MBT_130_HIS_BAK.RPT_DATE is '上报数据日期';
comment on column MBT_130_HIS_BAK.DATA_DESC is '记录描述';
comment on column MBT_130_HIS_BAK.REMARKS is '备注';
comment on column MBT_130_HIS_BAK.CHECK_FLAG is '校验标识';
comment on column MBT_130_HIS_BAK.CHECK_DESC is '校验结果';
comment on column MBT_130_HIS_BAK.CHECK_ERR_TYPE is '校验失败类型';
comment on column MBT_130_HIS_BAK.NEXT_ACTION is '下一动作';
comment on column MBT_130_HIS_BAK.DATA_STATUS is '数据状态';
comment on column MBT_130_HIS_BAK.DATA_FLAG is '数据是否已删除';
comment on column MBT_130_HIS_BAK.DATA_SOURCE is '数据来源';
comment on column MBT_130_HIS_BAK.DATA_VERSION is '数据版本号';
comment on column MBT_130_HIS_BAK.DATA_REJ_DESC is '数据审核拒绝描述';
comment on column MBT_130_HIS_BAK.DATA_DEL_DESC is '数据删除描述';
comment on column MBT_130_HIS_BAK.DATA_CRT_USER is '数据创建/导入用户';
comment on column MBT_130_HIS_BAK.DATA_CRT_DATE is '数据创建/导入日期';
comment on column MBT_130_HIS_BAK.DATA_CRT_TIME is '数据创建/导入时间';
comment on column MBT_130_HIS_BAK.DATA_CHG_USER is '数据修改/删除用户';
comment on column MBT_130_HIS_BAK.DATA_CHG_DATE is '数据修改/删除日期';
comment on column MBT_130_HIS_BAK.DATA_CHG_TIME is '数据修改/删除时间';
comment on column MBT_130_HIS_BAK.DATA_APV_USER is '数据审核/拒绝用户';
comment on column MBT_130_HIS_BAK.DATA_APV_DATE is '数据审核/拒绝日期';
comment on column MBT_130_HIS_BAK.DATA_APV_TIME is '数据审核/拒绝时间';
comment on column MBT_130_HIS_BAK.RSV1 is '扩展字段1';
comment on column MBT_130_HIS_BAK.RSV2 is '扩展字段2';
comment on column MBT_130_HIS_BAK.RSV3 is '扩展字段3';
comment on column MBT_130_HIS_BAK.RSV4 is '扩展字段4';
comment on column MBT_130_HIS_BAK.RSV5 is '扩展字段5';
comment on column MBT_130_HIS_BAK.ODS_DATA_ID is 'ODS数据ID';
comment on column MBT_130_HIS_BAK.HIS_DATE is '信息同步日期';
comment on column MBT_130_HIS_BAK.HIS_DATE_TIME is '信息同步时间';
comment on column MBT_130_HIS_BAK.IS_RPT is '是否上报';
comment on column MBT_130_HIS_BAK.FB_STATUS is '反馈状态';
comment on column MBT_130_HIS_BAK.RPT_FILE_NAME is '上报文件名';


create table MBT_210_HIS_BAK
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
comment on column MBT_210_HIS_BAK.DATA_ID is '主键';
comment on column MBT_210_HIS_BAK.DATA_DATE is '数据日期';
comment on column MBT_210_HIS_BAK.CORP_ID is '法人机构号';
comment on column MBT_210_HIS_BAK.ORG_ID is '分行机构号';
comment on column MBT_210_HIS_BAK.GROUP_ID is '部门编号';
comment on column MBT_210_HIS_BAK.INQ_ORG_ID is '查询机构号';
comment on column MBT_210_HIS_BAK.INQ_GROUP_ID is '查询组号';
comment on column MBT_210_HIS_BAK.REF_NO is '客户号';
comment on column MBT_210_HIS_BAK.B_INF_REC_TYPE is '信息记录类型';
comment on column MBT_210_HIS_BAK.B_ACCT_TYPE is '账户类型';
comment on column MBT_210_HIS_BAK.B_ACCT_CODE is '账户标识码';
comment on column MBT_210_HIS_BAK.B_RPT_DATE is '信息报告日期';
comment on column MBT_210_HIS_BAK.B_RPT_DATE_CODE is '报告时点说明代码';
comment on column MBT_210_HIS_BAK.B_NAME is '借款人姓名';
comment on column MBT_210_HIS_BAK.B_ID_TYPE is '借款人证件类型  ';
comment on column MBT_210_HIS_BAK.B_ID_NUM is '借款人证件号码';
comment on column MBT_210_HIS_BAK.B_MNGMT_ORG_CODE is '业务管理机构代码';
comment on column MBT_210_HIS_BAK.C_BUSI_LINES is '借贷业务大类';
comment on column MBT_210_HIS_BAK.C_BUSI_DTL_LINES is '借贷业务种类细分';
comment on column MBT_210_HIS_BAK.C_OPEN_DATE is '开户日期';
comment on column MBT_210_HIS_BAK.C_CY is '币种';
comment on column MBT_210_HIS_BAK.C_ACCT_CRED_LINE_AMT is '信用额度';
comment on column MBT_210_HIS_BAK.C_LOAN_AMT is '借款金额';
comment on column MBT_210_HIS_BAK.C_FLAG is '分次放款标志';
comment on column MBT_210_HIS_BAK.C_DUE_DATE is '到期日期';
comment on column MBT_210_HIS_BAK.C_REPAY_MODE is '还款方式';
comment on column MBT_210_HIS_BAK.C_REPAY_FREQCY is '还款频率';
comment on column MBT_210_HIS_BAK.C_REPAY_PRD is '还款期数';
comment on column MBT_210_HIS_BAK.C_APPLY_BUSI_DIST is '业务申请地行政区划代码';
comment on column MBT_210_HIS_BAK.C_GUAR_MODE is '担保方式';
comment on column MBT_210_HIS_BAK.C_OTH_REPY_GUAR_WAY is '其他还款保证方式';
comment on column MBT_210_HIS_BAK.C_ASSET_TRAND_FLAG is '资产转让标志';
comment on column MBT_210_HIS_BAK.C_FUND_SOU is '业务经营类型';
comment on column MBT_210_HIS_BAK.C_LOAN_FORM is '贷款发放形式';
comment on column MBT_210_HIS_BAK.C_CREDIT_ID is '卡片标识号';
comment on column MBT_210_HIS_BAK.F_MCC is '授信协议标识码';
comment on column MBT_210_HIS_BAK.G_INIT_CRED_NAME is '初始债权人名称';
comment on column MBT_210_HIS_BAK.G_INIT_CRED_ORG_NM is '初始债权人机构代码';
comment on column MBT_210_HIS_BAK.G_ORIG_DBT_CATE is '原债务种类';
comment on column MBT_210_HIS_BAK.G_INIT_RPY_STS is '债权转移时的还款状态';
comment on column MBT_210_HIS_BAK.H_MONTH is '月份';
comment on column MBT_210_HIS_BAK.H_SETT_DATE is '结算/应还款日';
comment on column MBT_210_HIS_BAK.H_ACCT_STATUS is '账户状态';
comment on column MBT_210_HIS_BAK.H_ACCT_BAL is '余额';
comment on column MBT_210_HIS_BAK.H_PRID_ACCT_BAL is '本期账单余额';
comment on column MBT_210_HIS_BAK.H_USED_AMT is '已使用额度  ';
comment on column MBT_210_HIS_BAK.H_NOTLSU_BAL is '未出单的大额专项分期余额';
comment on column MBT_210_HIS_BAK.H_REM_REP_PRD is '剩余还款期数';
comment on column MBT_210_HIS_BAK.H_FIVE_CATE is '五级分类';
comment on column MBT_210_HIS_BAK.H_FIVE_CATE_ADJ_DATE is '五级分类认定日期';
comment on column MBT_210_HIS_BAK.H_RPY_STATUS is '当前还款状态';
comment on column MBT_210_HIS_BAK.H_RPY_PRCT is '实际还款百分比';
comment on column MBT_210_HIS_BAK.H_OVERD_PRD is '当前逾期期数';
comment on column MBT_210_HIS_BAK.H_TOT_OVERD is '当前逾期总额';
comment on column MBT_210_HIS_BAK.H_OVAER_PRINC is '当前逾期本金';
comment on column MBT_210_HIS_BAK.H_OVERD31_60PRINC is '逾期 31-60 天未归还本金';
comment on column MBT_210_HIS_BAK.H_OVERD61_90PRINC is '逾期 61-90 天未归还本金';
comment on column MBT_210_HIS_BAK.H_OVERD91_180PRINC is '逾期 91-180 天未归还本金';
comment on column MBT_210_HIS_BAK.H_OVERD_PRINC180 is '逾期 180 天以上未归还本金';
comment on column MBT_210_HIS_BAK.H_OVERD_RAW_BA_OVE180 is '透支 180 天以上未还余额  ';
comment on column MBT_210_HIS_BAK.H_CUR_RPY_AMT is '本月应还款金额';
comment on column MBT_210_HIS_BAK.H_ACT_RPY_AMT is '本月实际还款金额';
comment on column MBT_210_HIS_BAK.H_LAT_RPY_DATE is '最近一次实际还款日期';
comment on column MBT_210_HIS_BAK.H_CLOSE_DATE is '账户关闭日期';
comment on column MBT_210_HIS_BAK.I_SPEC_LINE is '大额专项分期额度';
comment on column MBT_210_HIS_BAK.I_SPEC_EFCT_DATE is '分期额度生效日期';
comment on column MBT_210_HIS_BAK.I_SPEC_END_DATE is '分期额度到期日期';
comment on column MBT_210_HIS_BAK.I_USED_INST_AMT is '已用分期金额 ';
comment on column MBT_210_HIS_BAK.J_ACCT_STATUS is '账户状态';
comment on column MBT_210_HIS_BAK.J_ACCT_BAL is '余额';
comment on column MBT_210_HIS_BAK.J_FIVE_CATE is '五级分类';
comment on column MBT_210_HIS_BAK.J_FIVE_CATE_ADJ_DATE is '五级分类认定日期';
comment on column MBT_210_HIS_BAK.J_REM_REP_PRD is '剩余还款期数';
comment on column MBT_210_HIS_BAK.J_RPY_STATUS is '当前还款状态';
comment on column MBT_210_HIS_BAK.J_OVERD_PRD is '当前逾期期数';
comment on column MBT_210_HIS_BAK.J_TOT_OVERD is '当前逾期总额';
comment on column MBT_210_HIS_BAK.J_LAT_RPY_AMT is '最近一次实际还款金额';
comment on column MBT_210_HIS_BAK.J_LAT_RPY_DATE is '最近一次实际还款日期';
comment on column MBT_210_HIS_BAK.J_CLOSE_DATE is '账户关闭日期';
comment on column MBT_210_HIS_BAK.DATA_DESC is '记录描述';
comment on column MBT_210_HIS_BAK.REMARKS is '备注';
comment on column MBT_210_HIS_BAK.CHECK_FLAG is '校验标识';
comment on column MBT_210_HIS_BAK.CHECK_DESC is '校验结果';
comment on column MBT_210_HIS_BAK.CHECK_ERR_TYPE is '校验失败类型';
comment on column MBT_210_HIS_BAK.NEXT_ACTION is '下一动作';
comment on column MBT_210_HIS_BAK.DATA_STATUS is '数据状态';
comment on column MBT_210_HIS_BAK.DATA_FLAG is '数据是否已删除';
comment on column MBT_210_HIS_BAK.DATA_SOURCE is '数据来源';
comment on column MBT_210_HIS_BAK.DATA_VERSION is '数据版本号';
comment on column MBT_210_HIS_BAK.DATA_REJ_DESC is '数据审核拒绝描述';
comment on column MBT_210_HIS_BAK.DATA_DEL_DESC is '数据删除描述';
comment on column MBT_210_HIS_BAK.DATA_CRT_USER is '数据创建/导入用户';
comment on column MBT_210_HIS_BAK.DATA_CRT_DATE is '数据创建/导入日期';
comment on column MBT_210_HIS_BAK.DATA_CRT_TIME is '数据创建/导入时间';
comment on column MBT_210_HIS_BAK.DATA_CHG_USER is '数据修改/删除用户';
comment on column MBT_210_HIS_BAK.DATA_CHG_DATE is '数据修改/删除日期';
comment on column MBT_210_HIS_BAK.DATA_CHG_TIME is '数据修改/删除时间';
comment on column MBT_210_HIS_BAK.DATA_APV_USER is '数据审核/拒绝用户';
comment on column MBT_210_HIS_BAK.DATA_APV_DATE is '数据审核/拒绝日期';
comment on column MBT_210_HIS_BAK.DATA_APV_TIME is '数据审核/拒绝时间';
comment on column MBT_210_HIS_BAK.RSV1 is '扩展字段1';
comment on column MBT_210_HIS_BAK.RSV2 is '扩展字段2';
comment on column MBT_210_HIS_BAK.RSV3 is '扩展字段3';
comment on column MBT_210_HIS_BAK.RSV4 is '扩展字段4';
comment on column MBT_210_HIS_BAK.RSV5 is '扩展字段5';
comment on column MBT_210_HIS_BAK.ODS_DATA_ID is 'ODS数据ID';
comment on column MBT_210_HIS_BAK.HIS_DATE is '信息同步日期';
comment on column MBT_210_HIS_BAK.HIS_DATE_TIME is '信息同步时间';
comment on column MBT_210_HIS_BAK.IS_RPT is '是否上报';
comment on column MBT_210_HIS_BAK.CUST_NO is '客户号';
comment on column MBT_210_HIS_BAK.MON_SETTLE_DATE is '月度结算日';
comment on column MBT_210_HIS_BAK.FB_STATUS is '反馈状态';
comment on column MBT_210_HIS_BAK.RPT_FILE_NAME is '上报文件名';
comment on column MBT_210_HIS_BAK.C_LOAN_CON_CODE is '贷款合同编号';
comment on column MBT_210_HIS_BAK.C_FIRST_HOU_LOAN_FLAG is '是否为首套住房贷款';
comment on column MBT_210_HIS_BAK.J_LAT_RPY_AMT_ORG is '最近一次实际还款金额_原始数据金额';
comment on column MBT_210_HIS_BAK.J_TOT_OVERD_ORG is '当前逾期总额_原始数据金额';
comment on column MBT_210_HIS_BAK.J_ACCT_BAL_ORG is '余额_原始数据金额';
comment on column MBT_210_HIS_BAK.I_USED_INST_AMT_ORG is '已用分期金额_原始数据金额';
comment on column MBT_210_HIS_BAK.I_SPEC_LINE_ORG is '大额专项分期额度_原始数据金额';
comment on column MBT_210_HIS_BAK.H_ACT_RPY_AMT_ORG is '本月实际还款金额_原始数据金额';
comment on column MBT_210_HIS_BAK.H_CUR_RPY_AMT_ORG is '本月应还款金额_原始数据金额';
comment on column MBT_210_HIS_BAK.H_OVERD_RAW_BA_OVE180_ORG is '透支 180 天以上未还余额_原始数据金额';
comment on column MBT_210_HIS_BAK.H_OVERD_PRINC180_ORG is '逾期 180 天以上未归还本金_原始数据金额';
comment on column MBT_210_HIS_BAK.H_OVERD91_180PRINC_ORG is '逾期 91-180 天未归还本金_原始数据金额';
comment on column MBT_210_HIS_BAK.H_OVERD61_90PRINC_ORG is '逾期 61-90 天未归还本金_原始数据金额';
comment on column MBT_210_HIS_BAK.H_OVERD31_60PRINC_ORG is '逾期 31-60 天未归还本金_原始数据金额';
comment on column MBT_210_HIS_BAK.H_OVAER_PRINC_ORG is '当前逾期本金_原始数据金额';
comment on column MBT_210_HIS_BAK.H_TOT_OVERD_ORG is '当前逾期总额_原始数据金额';
comment on column MBT_210_HIS_BAK.H_NOTLSU_BAL_ORG is '未出单的大额专项分期余额_原始数据金额';
comment on column MBT_210_HIS_BAK.H_USED_AMT_ORG is '已使用额度_原始数据金额';
comment on column MBT_210_HIS_BAK.H_PRID_ACCT_BAL_ORG is '本期账单余额_原始数据金额';
comment on column MBT_210_HIS_BAK.H_ACCT_BAL_ORG is '余额_原始数据金额';
comment on column MBT_210_HIS_BAK.C_LOAN_AMT_ORG is '借款金额_原始数据金额';
comment on column MBT_210_HIS_BAK.C_ACCT_CRED_LINE_AMT_ORG is '信用额度_原始数据金额';


create table MBT_210_D_HIS_BAK
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
comment on column MBT_210_D_HIS_BAK.DATA_ID is '主键';
comment on column MBT_210_D_HIS_BAK.PDATA_ID is '外键';
comment on column MBT_210_D_HIS_BAK.D_ARLP_ID_TYPE is '身份类别';
comment on column MBT_210_D_HIS_BAK.D_ARLP_NAME is '责任人名称';
comment on column MBT_210_D_HIS_BAK.D_ARLP_CERT_TYPE is '责任人身份标识类型';
comment on column MBT_210_D_HIS_BAK.D_ARLP_CERT_NUM is '责任人身份标识号码';
comment on column MBT_210_D_HIS_BAK.D_ARLP_TYPE is '还款责任人类型';
comment on column MBT_210_D_HIS_BAK.D_ARLP_AMT is '还款责任金额';
comment on column MBT_210_D_HIS_BAK.D_WARTY_SIGN is '联保标志';
comment on column MBT_210_D_HIS_BAK.D_MAX_GUAR_MCC is '保证合同编号';
comment on column MBT_210_D_HIS_BAK.ODS_DATA_ID is 'ODS数据ID';
comment on column MBT_210_D_HIS_BAK.HIS_DATE is '信息同步日期';
comment on column MBT_210_D_HIS_BAK.HIS_DATE_TIME is '信息同步时间';
comment on column MBT_210_D_HIS_BAK.DATA_DATE is '数据日期';
comment on column MBT_210_D_HIS_BAK.CORP_ID is '法人机构号';
comment on column MBT_210_D_HIS_BAK.ORG_ID is '分行机构号';
comment on column MBT_210_D_HIS_BAK.GROUP_ID is '部门编号';
comment on column MBT_210_D_HIS_BAK.INQ_ORG_ID is '查询机构号';
comment on column MBT_210_D_HIS_BAK.INQ_GROUP_ID is '查询组号';
comment on column MBT_210_D_HIS_BAK.DATA_DESC is '记录描述';
comment on column MBT_210_D_HIS_BAK.REMARKS is '备注';
comment on column MBT_210_D_HIS_BAK.CHECK_FLAG is '校验标识';
comment on column MBT_210_D_HIS_BAK.CHECK_DESC is '校验结果';
comment on column MBT_210_D_HIS_BAK.CHECK_ERR_TYPE is '校验失败类型';
comment on column MBT_210_D_HIS_BAK.NEXT_ACTION is '下一动作';
comment on column MBT_210_D_HIS_BAK.DATA_FLAG is '数据是否已删除';
comment on column MBT_210_D_HIS_BAK.DATA_SOURE is '数据来源';
comment on column MBT_210_D_HIS_BAK.DATA_VERSION is '数据版本号';
comment on column MBT_210_D_HIS_BAK.DATA_REJ_DESC is '数据审核拒绝描述';
comment on column MBT_210_D_HIS_BAK.DATA_DEL_DESC is '数据删除描述';
comment on column MBT_210_D_HIS_BAK.DATA_CRT_USER is '数据创建/导入用户';
comment on column MBT_210_D_HIS_BAK.DATA_CRT_DATE is '数据创建/导入日期';
comment on column MBT_210_D_HIS_BAK.DATA_CRT_TIME is '数据创建/导入时间';
comment on column MBT_210_D_HIS_BAK.DATA_CHG_USER is '数据修改/删除用户';
comment on column MBT_210_D_HIS_BAK.DATA_CHG_DATE is '数据修改/删除日期';
comment on column MBT_210_D_HIS_BAK.DATA_CHG_TIME is '数据修改/删除时间';
comment on column MBT_210_D_HIS_BAK.DATA_APV_USER is '数据审核/拒绝用户';
comment on column MBT_210_D_HIS_BAK.DATA_APV_DATE is '数据审核/拒绝日期';
comment on column MBT_210_D_HIS_BAK.DATA_APV_TIME is '数据审核/拒绝时间';
comment on column MBT_210_D_HIS_BAK.RSV1 is '扩展字段1';
comment on column MBT_210_D_HIS_BAK.RSV2 is '扩展字段2';
comment on column MBT_210_D_HIS_BAK.RSV3 is '扩展字段3';
comment on column MBT_210_D_HIS_BAK.RSV4 is '扩展字段4';
comment on column MBT_210_D_HIS_BAK.RSV5 is '扩展字段5';
comment on column MBT_210_D_HIS_BAK.B_ACCT_CODE is '账户标识码';


create table MBT_210_E_HIS_BAK
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
comment on column MBT_210_E_HIS_BAK.DATA_ID is '主键';
comment on column MBT_210_E_HIS_BAK.PDATA_ID is '外键';
comment on column MBT_210_E_HIS_BAK.E_CCC is '抵（质）押合同标识码';
comment on column MBT_210_E_HIS_BAK.ODS_DATA_ID is 'ODS数据ID';
comment on column MBT_210_E_HIS_BAK.HIS_DATE is '信息同步日期';
comment on column MBT_210_E_HIS_BAK.HIS_DATE_TIME is '信息同步时间';
comment on column MBT_210_E_HIS_BAK.DATA_DATE is '数据日期';
comment on column MBT_210_E_HIS_BAK.CORP_ID is '法人机构号';
comment on column MBT_210_E_HIS_BAK.ORG_ID is '分行机构号';
comment on column MBT_210_E_HIS_BAK.GROUP_ID is '部门编号';
comment on column MBT_210_E_HIS_BAK.INQ_ORG_ID is '查询机构号';
comment on column MBT_210_E_HIS_BAK.INQ_GROUP_ID is '查询组号';
comment on column MBT_210_E_HIS_BAK.DATA_DESC is '记录描述';
comment on column MBT_210_E_HIS_BAK.REMARKS is '备注';
comment on column MBT_210_E_HIS_BAK.CHECK_FLAG is '校验标识';
comment on column MBT_210_E_HIS_BAK.CHECK_DESC is '校验结果';
comment on column MBT_210_E_HIS_BAK.CHECK_ERR_TYPE is '校验失败类型';
comment on column MBT_210_E_HIS_BAK.NEXT_ACTION is '下一动作';
comment on column MBT_210_E_HIS_BAK.DATA_FLAG is '数据是否已删除';
comment on column MBT_210_E_HIS_BAK.DATA_SOURE is '数据来源';
comment on column MBT_210_E_HIS_BAK.DATA_VERSION is '数据版本号';
comment on column MBT_210_E_HIS_BAK.DATA_REJ_DESC is '数据审核拒绝描述';
comment on column MBT_210_E_HIS_BAK.DATA_DEL_DESC is '数据删除描述';
comment on column MBT_210_E_HIS_BAK.DATA_CRT_USER is '数据创建/导入用户';
comment on column MBT_210_E_HIS_BAK.DATA_CRT_DATE is '数据创建/导入日期';
comment on column MBT_210_E_HIS_BAK.DATA_CRT_TIME is '数据创建/导入时间';
comment on column MBT_210_E_HIS_BAK.DATA_CHG_USER is '数据修改/删除用户';
comment on column MBT_210_E_HIS_BAK.DATA_CHG_DATE is '数据修改/删除日期';
comment on column MBT_210_E_HIS_BAK.DATA_CHG_TIME is '数据修改/删除时间';
comment on column MBT_210_E_HIS_BAK.DATA_APV_USER is '数据审核/拒绝用户';
comment on column MBT_210_E_HIS_BAK.DATA_APV_DATE is '数据审核/拒绝日期';
comment on column MBT_210_E_HIS_BAK.DATA_APV_TIME is '数据审核/拒绝时间';
comment on column MBT_210_E_HIS_BAK.RSV1 is '扩展字段1';
comment on column MBT_210_E_HIS_BAK.RSV2 is '扩展字段2';
comment on column MBT_210_E_HIS_BAK.RSV3 is '扩展字段3';
comment on column MBT_210_E_HIS_BAK.RSV4 is '扩展字段4';
comment on column MBT_210_E_HIS_BAK.RSV5 is '扩展字段5';
comment on column MBT_210_E_HIS_BAK.B_ACCT_CODE is '账户标识码';


create table MBT_210_K_HIS_BAK
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
comment on column MBT_210_K_HIS_BAK.DATA_ID is '主键';
comment on column MBT_210_K_HIS_BAK.PDATA_ID is '外键';
comment on column MBT_210_K_HIS_BAK.REF_NO is '交易流水';
comment on column MBT_210_K_HIS_BAK.K_CHAN_TRAN_TYPE is '交易类型';
comment on column MBT_210_K_HIS_BAK.K_TRAN_DATE is '交易日期';
comment on column MBT_210_K_HIS_BAK.K_TRAN_AMT is '交易金额';
comment on column MBT_210_K_HIS_BAK.K_DUE_TRAN_MON is '到期日期变更月数';
comment on column MBT_210_K_HIS_BAK.K_DET_INFO is '交易明细信息';
comment on column MBT_210_K_HIS_BAK.ODS_DATA_ID is 'ODS数据ID';
comment on column MBT_210_K_HIS_BAK.HIS_DATE is '信息同步日期';
comment on column MBT_210_K_HIS_BAK.HIS_DATE_TIME is '信息同步时间';
comment on column MBT_210_K_HIS_BAK.DATA_DATE is '数据日期';
comment on column MBT_210_K_HIS_BAK.CORP_ID is '法人机构号';
comment on column MBT_210_K_HIS_BAK.ORG_ID is '分行机构号';
comment on column MBT_210_K_HIS_BAK.GROUP_ID is '部门编号';
comment on column MBT_210_K_HIS_BAK.INQ_ORG_ID is '查询机构号';
comment on column MBT_210_K_HIS_BAK.INQ_GROUP_ID is '查询组号';
comment on column MBT_210_K_HIS_BAK.DATA_DESC is '记录描述';
comment on column MBT_210_K_HIS_BAK.REMARKS is '备注';
comment on column MBT_210_K_HIS_BAK.CHECK_FLAG is '校验标识';
comment on column MBT_210_K_HIS_BAK.CHECK_DESC is '校验结果';
comment on column MBT_210_K_HIS_BAK.CHECK_ERR_TYPE is '校验失败类型';
comment on column MBT_210_K_HIS_BAK.NEXT_ACTION is '下一动作';
comment on column MBT_210_K_HIS_BAK.DATA_FLAG is '数据是否已删除';
comment on column MBT_210_K_HIS_BAK.DATA_SOURE is '数据来源';
comment on column MBT_210_K_HIS_BAK.DATA_VERSION is '数据版本号';
comment on column MBT_210_K_HIS_BAK.DATA_REJ_DESC is '数据审核拒绝描述';
comment on column MBT_210_K_HIS_BAK.DATA_DEL_DESC is '数据删除描述';
comment on column MBT_210_K_HIS_BAK.DATA_CRT_USER is '数据创建/导入用户';
comment on column MBT_210_K_HIS_BAK.DATA_CRT_DATE is '数据创建/导入日期';
comment on column MBT_210_K_HIS_BAK.DATA_CRT_TIME is '数据创建/导入时间';
comment on column MBT_210_K_HIS_BAK.DATA_CHG_USER is '数据修改/删除用户';
comment on column MBT_210_K_HIS_BAK.DATA_CHG_DATE is '数据修改/删除日期';
comment on column MBT_210_K_HIS_BAK.DATA_CHG_TIME is '数据修改/删除时间';
comment on column MBT_210_K_HIS_BAK.DATA_APV_USER is '数据审核/拒绝用户';
comment on column MBT_210_K_HIS_BAK.DATA_APV_DATE is '数据审核/拒绝日期';
comment on column MBT_210_K_HIS_BAK.DATA_APV_TIME is '数据审核/拒绝时间';
comment on column MBT_210_K_HIS_BAK.RSV1 is '扩展字段1';
comment on column MBT_210_K_HIS_BAK.RSV2 is '扩展字段2';
comment on column MBT_210_K_HIS_BAK.RSV3 is '扩展字段3';
comment on column MBT_210_K_HIS_BAK.RSV4 is '扩展字段4';
comment on column MBT_210_K_HIS_BAK.RSV5 is '扩展字段5';
comment on column MBT_210_K_HIS_BAK.B_ACCT_CODE is '账户标识码';


create table MBT_210_RPT_BAK
(
    DATA_ID                   CHAR(32) not null
        primary key,
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
    RPT_TIME                  CHAR(14),
    RPT_DATE                  CHAR(8),
    IS_RPT                    CHAR(64),
    CUST_NO                   VARCHAR2(32),
    MON_SETTLE_DATE           CHAR(8),
    ROW_NUM                   NUMBER,
    FB_STATUS                 CHAR(2),
    RPT_FILE_NAME             VARCHAR2(512),
    FB_MSG                    VARCHAR2(1024),
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
comment on column MBT_210_RPT_BAK.DATA_ID is '主键';
comment on column MBT_210_RPT_BAK.DATA_DATE is '数据日期';
comment on column MBT_210_RPT_BAK.CORP_ID is '法人机构号';
comment on column MBT_210_RPT_BAK.ORG_ID is '分行机构号';
comment on column MBT_210_RPT_BAK.GROUP_ID is '部门编号';
comment on column MBT_210_RPT_BAK.INQ_ORG_ID is '查询机构号';
comment on column MBT_210_RPT_BAK.INQ_GROUP_ID is '查询组号';
comment on column MBT_210_RPT_BAK.REF_NO is '客户号';
comment on column MBT_210_RPT_BAK.B_INF_REC_TYPE is '信息记录类型';
comment on column MBT_210_RPT_BAK.B_ACCT_TYPE is '账户类型';
comment on column MBT_210_RPT_BAK.B_ACCT_CODE is '账户标识码';
comment on column MBT_210_RPT_BAK.B_RPT_DATE is '信息报告日期';
comment on column MBT_210_RPT_BAK.B_RPT_DATE_CODE is '报告时点说明代码';
comment on column MBT_210_RPT_BAK.B_NAME is '借款人姓名';
comment on column MBT_210_RPT_BAK.B_ID_TYPE is '借款人证件类型  ';
comment on column MBT_210_RPT_BAK.B_ID_NUM is '借款人证件号码';
comment on column MBT_210_RPT_BAK.B_MNGMT_ORG_CODE is '业务管理机构代码';
comment on column MBT_210_RPT_BAK.C_BUSI_LINES is '借贷业务大类';
comment on column MBT_210_RPT_BAK.C_BUSI_DTL_LINES is '借贷业务种类细分';
comment on column MBT_210_RPT_BAK.C_OPEN_DATE is '开户日期';
comment on column MBT_210_RPT_BAK.C_CY is '币种';
comment on column MBT_210_RPT_BAK.C_ACCT_CRED_LINE_AMT is '信用额度';
comment on column MBT_210_RPT_BAK.C_LOAN_AMT is '借款金额';
comment on column MBT_210_RPT_BAK.C_FLAG is '分次放款标志';
comment on column MBT_210_RPT_BAK.C_DUE_DATE is '到期日期';
comment on column MBT_210_RPT_BAK.C_REPAY_MODE is '还款方式';
comment on column MBT_210_RPT_BAK.C_REPAY_FREQCY is '还款频率';
comment on column MBT_210_RPT_BAK.C_REPAY_PRD is '还款期数';
comment on column MBT_210_RPT_BAK.C_APPLY_BUSI_DIST is '业务申请地行政区划代码';
comment on column MBT_210_RPT_BAK.C_GUAR_MODE is '担保方式';
comment on column MBT_210_RPT_BAK.C_OTH_REPY_GUAR_WAY is '其他还款保证方式';
comment on column MBT_210_RPT_BAK.C_ASSET_TRAND_FLAG is '资产转让标志';
comment on column MBT_210_RPT_BAK.C_FUND_SOU is '业务经营类型';
comment on column MBT_210_RPT_BAK.C_LOAN_FORM is '贷款发放形式';
comment on column MBT_210_RPT_BAK.C_CREDIT_ID is '卡片标识号';
comment on column MBT_210_RPT_BAK.F_MCC is '授信协议标识码';
comment on column MBT_210_RPT_BAK.G_INIT_CRED_NAME is '初始债权人名称';
comment on column MBT_210_RPT_BAK.G_INIT_CRED_ORG_NM is '初始债权人机构代码';
comment on column MBT_210_RPT_BAK.G_ORIG_DBT_CATE is '原债务种类';
comment on column MBT_210_RPT_BAK.G_INIT_RPY_STS is '债权转移时的还款状态';
comment on column MBT_210_RPT_BAK.H_MONTH is '月份';
comment on column MBT_210_RPT_BAK.H_SETT_DATE is '结算/应还款日';
comment on column MBT_210_RPT_BAK.H_ACCT_STATUS is '账户状态';
comment on column MBT_210_RPT_BAK.H_ACCT_BAL is '余额';
comment on column MBT_210_RPT_BAK.H_PRID_ACCT_BAL is '本期账单余额';
comment on column MBT_210_RPT_BAK.H_USED_AMT is '已使用额度  ';
comment on column MBT_210_RPT_BAK.H_NOTLSU_BAL is '未出单的大额专项分期余额';
comment on column MBT_210_RPT_BAK.H_REM_REP_PRD is '剩余还款期数';
comment on column MBT_210_RPT_BAK.H_FIVE_CATE is '五级分类';
comment on column MBT_210_RPT_BAK.H_FIVE_CATE_ADJ_DATE is '五级分类认定日期';
comment on column MBT_210_RPT_BAK.H_RPY_STATUS is '当前还款状态';
comment on column MBT_210_RPT_BAK.H_RPY_PRCT is '实际还款百分比';
comment on column MBT_210_RPT_BAK.H_OVERD_PRD is '当前逾期期数';
comment on column MBT_210_RPT_BAK.H_TOT_OVERD is '当前逾期总额';
comment on column MBT_210_RPT_BAK.H_OVAER_PRINC is '当前逾期本金';
comment on column MBT_210_RPT_BAK.H_OVERD31_60PRINC is '逾期 31-60 天未归还本金';
comment on column MBT_210_RPT_BAK.H_OVERD61_90PRINC is '逾期 61-90 天未归还本金';
comment on column MBT_210_RPT_BAK.H_OVERD91_180PRINC is '逾期 91-180 天未归还本金';
comment on column MBT_210_RPT_BAK.H_OVERD_PRINC180 is '逾期 180 天以上未归还本金';
comment on column MBT_210_RPT_BAK.H_OVERD_RAW_BA_OVE180 is '透支 180 天以上未还余额  ';
comment on column MBT_210_RPT_BAK.H_CUR_RPY_AMT is '本月应还款金额';
comment on column MBT_210_RPT_BAK.H_ACT_RPY_AMT is '本月实际还款金额';
comment on column MBT_210_RPT_BAK.H_LAT_RPY_DATE is '最近一次实际还款日期';
comment on column MBT_210_RPT_BAK.H_CLOSE_DATE is '账户关闭日期';
comment on column MBT_210_RPT_BAK.I_SPEC_LINE is '大额专项分期额度';
comment on column MBT_210_RPT_BAK.I_SPEC_EFCT_DATE is '分期额度生效日期';
comment on column MBT_210_RPT_BAK.I_SPEC_END_DATE is '分期额度到期日期';
comment on column MBT_210_RPT_BAK.I_USED_INST_AMT is '已用分期金额 ';
comment on column MBT_210_RPT_BAK.J_ACCT_STATUS is '账户状态';
comment on column MBT_210_RPT_BAK.J_ACCT_BAL is '余额';
comment on column MBT_210_RPT_BAK.J_FIVE_CATE is '五级分类';
comment on column MBT_210_RPT_BAK.J_FIVE_CATE_ADJ_DATE is '五级分类认定日期';
comment on column MBT_210_RPT_BAK.J_REM_REP_PRD is '剩余还款期数';
comment on column MBT_210_RPT_BAK.J_RPY_STATUS is '当前还款状态';
comment on column MBT_210_RPT_BAK.J_OVERD_PRD is '当前逾期期数';
comment on column MBT_210_RPT_BAK.J_TOT_OVERD is '当前逾期总额';
comment on column MBT_210_RPT_BAK.J_LAT_RPY_AMT is '最近一次实际还款金额';
comment on column MBT_210_RPT_BAK.J_LAT_RPY_DATE is '最近一次实际还款日期';
comment on column MBT_210_RPT_BAK.J_CLOSE_DATE is '账户关闭日期';
comment on column MBT_210_RPT_BAK.DATA_DESC is '记录描述';
comment on column MBT_210_RPT_BAK.REMARKS is '备注';
comment on column MBT_210_RPT_BAK.CHECK_FLAG is '校验标识';
comment on column MBT_210_RPT_BAK.CHECK_DESC is '校验结果';
comment on column MBT_210_RPT_BAK.CHECK_ERR_TYPE is '校验失败类型';
comment on column MBT_210_RPT_BAK.NEXT_ACTION is '下一动作';
comment on column MBT_210_RPT_BAK.DATA_STATUS is '数据状态';
comment on column MBT_210_RPT_BAK.DATA_FLAG is '数据是否已删除';
comment on column MBT_210_RPT_BAK.DATA_SOURCE is '数据来源';
comment on column MBT_210_RPT_BAK.DATA_VERSION is '数据版本号';
comment on column MBT_210_RPT_BAK.DATA_REJ_DESC is '数据审核拒绝描述';
comment on column MBT_210_RPT_BAK.DATA_DEL_DESC is '数据删除描述';
comment on column MBT_210_RPT_BAK.DATA_CRT_USER is '数据创建/导入用户';
comment on column MBT_210_RPT_BAK.DATA_CRT_DATE is '数据创建/导入日期';
comment on column MBT_210_RPT_BAK.DATA_CRT_TIME is '数据创建/导入时间';
comment on column MBT_210_RPT_BAK.DATA_CHG_USER is '数据修改/删除用户';
comment on column MBT_210_RPT_BAK.DATA_CHG_DATE is '数据修改/删除日期';
comment on column MBT_210_RPT_BAK.DATA_CHG_TIME is '数据修改/删除时间';
comment on column MBT_210_RPT_BAK.DATA_APV_USER is '数据审核/拒绝用户';
comment on column MBT_210_RPT_BAK.DATA_APV_DATE is '数据审核/拒绝日期';
comment on column MBT_210_RPT_BAK.DATA_APV_TIME is '数据审核/拒绝时间';
comment on column MBT_210_RPT_BAK.RSV1 is '扩展字段1';
comment on column MBT_210_RPT_BAK.RSV2 is '扩展字段2';
comment on column MBT_210_RPT_BAK.RSV3 is '扩展字段3';
comment on column MBT_210_RPT_BAK.RSV4 is '扩展字段4';
comment on column MBT_210_RPT_BAK.RSV5 is '扩展字段5';
comment on column MBT_210_RPT_BAK.ODS_DATA_ID is 'ODS数据ID';
comment on column MBT_210_RPT_BAK.RPT_TIME is '上报数据时间';
comment on column MBT_210_RPT_BAK.RPT_DATE is '上报数据日期';
comment on column MBT_210_RPT_BAK.IS_RPT is '是否上报';
comment on column MBT_210_RPT_BAK.CUST_NO is '客户号';
comment on column MBT_210_RPT_BAK.MON_SETTLE_DATE is '月度结算日';
comment on column MBT_210_RPT_BAK.FB_STATUS is '反馈状态';
comment on column MBT_210_RPT_BAK.RPT_FILE_NAME is '上报文件名';
comment on column MBT_210_RPT_BAK.FB_MSG is '反馈信息';
comment on column MBT_210_RPT_BAK.C_LOAN_CON_CODE is '贷款合同编号';
comment on column MBT_210_RPT_BAK.C_FIRST_HOU_LOAN_FLAG is '是否为首套住房贷款';
comment on column MBT_210_RPT_BAK.J_LAT_RPY_AMT_ORG is '最近一次实际还款金额_原始数据金额';
comment on column MBT_210_RPT_BAK.J_TOT_OVERD_ORG is '当前逾期总额_原始数据金额';
comment on column MBT_210_RPT_BAK.J_ACCT_BAL_ORG is '余额_原始数据金额';
comment on column MBT_210_RPT_BAK.I_USED_INST_AMT_ORG is '已用分期金额_原始数据金额';
comment on column MBT_210_RPT_BAK.I_SPEC_LINE_ORG is '大额专项分期额度_原始数据金额';
comment on column MBT_210_RPT_BAK.H_ACT_RPY_AMT_ORG is '本月实际还款金额_原始数据金额';
comment on column MBT_210_RPT_BAK.H_CUR_RPY_AMT_ORG is '本月应还款金额_原始数据金额';
comment on column MBT_210_RPT_BAK.H_OVERD_RAW_BA_OVE180_ORG is '透支 180 天以上未还余额_原始数据金额';
comment on column MBT_210_RPT_BAK.H_OVERD_PRINC180_ORG is '逾期 180 天以上未归还本金_原始数据金额';
comment on column MBT_210_RPT_BAK.H_OVERD91_180PRINC_ORG is '逾期 91-180 天未归还本金_原始数据金额';
comment on column MBT_210_RPT_BAK.H_OVERD61_90PRINC_ORG is '逾期 61-90 天未归还本金_原始数据金额';
comment on column MBT_210_RPT_BAK.H_OVERD31_60PRINC_ORG is '逾期 31-60 天未归还本金_原始数据金额';
comment on column MBT_210_RPT_BAK.H_OVAER_PRINC_ORG is '当前逾期本金_原始数据金额';
comment on column MBT_210_RPT_BAK.H_TOT_OVERD_ORG is '当前逾期总额_原始数据金额';
comment on column MBT_210_RPT_BAK.H_NOTLSU_BAL_ORG is '未出单的大额专项分期余额_原始数据金额';
comment on column MBT_210_RPT_BAK.H_USED_AMT_ORG is '已使用额度_原始数据金额';
comment on column MBT_210_RPT_BAK.H_PRID_ACCT_BAL_ORG is '本期账单余额_原始数据金额';
comment on column MBT_210_RPT_BAK.H_ACCT_BAL_ORG is '余额_原始数据金额';
comment on column MBT_210_RPT_BAK.C_LOAN_AMT_ORG is '借款金额_原始数据金额';
comment on column MBT_210_RPT_BAK.C_ACCT_CRED_LINE_AMT_ORG is '信用额度_原始数据金额';


create table MBT_210_D_RPT_BAK
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
    RPT_TIME         CHAR(14),
    RPT_DATE         CHAR(8),
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
comment on column MBT_210_D_RPT_BAK.DATA_ID is '主键';
comment on column MBT_210_D_RPT_BAK.PDATA_ID is '外键';
comment on column MBT_210_D_RPT_BAK.D_ARLP_ID_TYPE is '身份类别';
comment on column MBT_210_D_RPT_BAK.D_ARLP_NAME is '责任人名称';
comment on column MBT_210_D_RPT_BAK.D_ARLP_CERT_TYPE is '责任人身份标识类型';
comment on column MBT_210_D_RPT_BAK.D_ARLP_CERT_NUM is '责任人身份标识号码';
comment on column MBT_210_D_RPT_BAK.D_ARLP_TYPE is '还款责任人类型';
comment on column MBT_210_D_RPT_BAK.D_ARLP_AMT is '还款责任金额';
comment on column MBT_210_D_RPT_BAK.D_WARTY_SIGN is '联保标志';
comment on column MBT_210_D_RPT_BAK.D_MAX_GUAR_MCC is '保证合同编号';
comment on column MBT_210_D_RPT_BAK.ODS_DATA_ID is 'ODS数据ID';
comment on column MBT_210_D_RPT_BAK.RPT_TIME is '上报数据时间';
comment on column MBT_210_D_RPT_BAK.RPT_DATE is '上报数据日期';
comment on column MBT_210_D_RPT_BAK.DATA_DATE is '数据日期';
comment on column MBT_210_D_RPT_BAK.CORP_ID is '法人机构号';
comment on column MBT_210_D_RPT_BAK.ORG_ID is '分行机构号';
comment on column MBT_210_D_RPT_BAK.GROUP_ID is '部门编号';
comment on column MBT_210_D_RPT_BAK.INQ_ORG_ID is '查询机构号';
comment on column MBT_210_D_RPT_BAK.INQ_GROUP_ID is '查询组号';
comment on column MBT_210_D_RPT_BAK.DATA_DESC is '记录描述';
comment on column MBT_210_D_RPT_BAK.REMARKS is '备注';
comment on column MBT_210_D_RPT_BAK.CHECK_FLAG is '校验标识';
comment on column MBT_210_D_RPT_BAK.CHECK_DESC is '校验结果';
comment on column MBT_210_D_RPT_BAK.CHECK_ERR_TYPE is '校验失败类型';
comment on column MBT_210_D_RPT_BAK.NEXT_ACTION is '下一动作';
comment on column MBT_210_D_RPT_BAK.DATA_FLAG is '数据是否已删除';
comment on column MBT_210_D_RPT_BAK.DATA_SOURE is '数据来源';
comment on column MBT_210_D_RPT_BAK.DATA_VERSION is '数据版本号';
comment on column MBT_210_D_RPT_BAK.DATA_REJ_DESC is '数据审核拒绝描述';
comment on column MBT_210_D_RPT_BAK.DATA_DEL_DESC is '数据删除描述';
comment on column MBT_210_D_RPT_BAK.DATA_CRT_USER is '数据创建/导入用户';
comment on column MBT_210_D_RPT_BAK.DATA_CRT_DATE is '数据创建/导入日期';
comment on column MBT_210_D_RPT_BAK.DATA_CRT_TIME is '数据创建/导入时间';
comment on column MBT_210_D_RPT_BAK.DATA_CHG_USER is '数据修改/删除用户';
comment on column MBT_210_D_RPT_BAK.DATA_CHG_DATE is '数据修改/删除日期';
comment on column MBT_210_D_RPT_BAK.DATA_CHG_TIME is '数据修改/删除时间';
comment on column MBT_210_D_RPT_BAK.DATA_APV_USER is '数据审核/拒绝用户';
comment on column MBT_210_D_RPT_BAK.DATA_APV_DATE is '数据审核/拒绝日期';
comment on column MBT_210_D_RPT_BAK.DATA_APV_TIME is '数据审核/拒绝时间';
comment on column MBT_210_D_RPT_BAK.RSV1 is '扩展字段1';
comment on column MBT_210_D_RPT_BAK.RSV2 is '扩展字段2';
comment on column MBT_210_D_RPT_BAK.RSV3 is '扩展字段3';
comment on column MBT_210_D_RPT_BAK.RSV4 is '扩展字段4';
comment on column MBT_210_D_RPT_BAK.RSV5 is '扩展字段5';
comment on column MBT_210_D_RPT_BAK.B_ACCT_CODE is '账户标识码';


create table MBT_210_E_RPT_BAK
(
    DATA_ID        CHAR(32) not null primary key,
    PDATA_ID       CHAR(32) not null ,
    E_CCC          VARCHAR2(60),
    ODS_DATA_ID    CHAR(32),
    RPT_TIME       CHAR(14),
    RPT_DATE       CHAR(8),
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
comment on column MBT_210_E_RPT_BAK.DATA_ID is '主键';
comment on column MBT_210_E_RPT_BAK.PDATA_ID is '外键';
comment on column MBT_210_E_RPT_BAK.E_CCC is '抵（质）押合同标识码';
comment on column MBT_210_E_RPT_BAK.ODS_DATA_ID is 'ODS数据ID';
comment on column MBT_210_E_RPT_BAK.RPT_TIME is '上报数据时间';
comment on column MBT_210_E_RPT_BAK.RPT_DATE is '上报数据日期';
comment on column MBT_210_E_RPT_BAK.DATA_DATE is '数据日期';
comment on column MBT_210_E_RPT_BAK.CORP_ID is '法人机构号';
comment on column MBT_210_E_RPT_BAK.ORG_ID is '分行机构号';
comment on column MBT_210_E_RPT_BAK.GROUP_ID is '部门编号';
comment on column MBT_210_E_RPT_BAK.INQ_ORG_ID is '查询机构号';
comment on column MBT_210_E_RPT_BAK.INQ_GROUP_ID is '查询组号';
comment on column MBT_210_E_RPT_BAK.DATA_DESC is '记录描述';
comment on column MBT_210_E_RPT_BAK.REMARKS is '备注';
comment on column MBT_210_E_RPT_BAK.CHECK_FLAG is '校验标识';
comment on column MBT_210_E_RPT_BAK.CHECK_DESC is '校验结果';
comment on column MBT_210_E_RPT_BAK.CHECK_ERR_TYPE is '校验失败类型';
comment on column MBT_210_E_RPT_BAK.NEXT_ACTION is '下一动作';
comment on column MBT_210_E_RPT_BAK.DATA_FLAG is '数据是否已删除';
comment on column MBT_210_E_RPT_BAK.DATA_SOURE is '数据来源';
comment on column MBT_210_E_RPT_BAK.DATA_VERSION is '数据版本号';
comment on column MBT_210_E_RPT_BAK.DATA_REJ_DESC is '数据审核拒绝描述';
comment on column MBT_210_E_RPT_BAK.DATA_DEL_DESC is '数据删除描述';
comment on column MBT_210_E_RPT_BAK.DATA_CRT_USER is '数据创建/导入用户';
comment on column MBT_210_E_RPT_BAK.DATA_CRT_DATE is '数据创建/导入日期';
comment on column MBT_210_E_RPT_BAK.DATA_CRT_TIME is '数据创建/导入时间';
comment on column MBT_210_E_RPT_BAK.DATA_CHG_USER is '数据修改/删除用户';
comment on column MBT_210_E_RPT_BAK.DATA_CHG_DATE is '数据修改/删除日期';
comment on column MBT_210_E_RPT_BAK.DATA_CHG_TIME is '数据修改/删除时间';
comment on column MBT_210_E_RPT_BAK.DATA_APV_USER is '数据审核/拒绝用户';
comment on column MBT_210_E_RPT_BAK.DATA_APV_DATE is '数据审核/拒绝日期';
comment on column MBT_210_E_RPT_BAK.DATA_APV_TIME is '数据审核/拒绝时间';
comment on column MBT_210_E_RPT_BAK.RSV1 is '扩展字段1';
comment on column MBT_210_E_RPT_BAK.RSV2 is '扩展字段2';
comment on column MBT_210_E_RPT_BAK.RSV3 is '扩展字段3';
comment on column MBT_210_E_RPT_BAK.RSV4 is '扩展字段4';
comment on column MBT_210_E_RPT_BAK.RSV5 is '扩展字段5';
comment on column MBT_210_E_RPT_BAK.B_ACCT_CODE is '账户标识码';


create table MBT_210_K_RPT_BAK
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
    RPT_TIME         CHAR(14),
    RPT_DATE         CHAR(8),
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
comment on column MBT_210_K_RPT_BAK.DATA_ID is '主键';
comment on column MBT_210_K_RPT_BAK.PDATA_ID is '外键';
comment on column MBT_210_K_RPT_BAK.REF_NO is '交易流水';
comment on column MBT_210_K_RPT_BAK.K_CHAN_TRAN_TYPE is '交易类型';
comment on column MBT_210_K_RPT_BAK.K_TRAN_DATE is '交易日期';
comment on column MBT_210_K_RPT_BAK.K_TRAN_AMT is '交易金额';
comment on column MBT_210_K_RPT_BAK.K_DUE_TRAN_MON is '到期日期变更月数';
comment on column MBT_210_K_RPT_BAK.K_DET_INFO is '交易明细信息';
comment on column MBT_210_K_RPT_BAK.ODS_DATA_ID is 'ODS数据ID';
comment on column MBT_210_K_RPT_BAK.RPT_TIME is '上报数据时间';
comment on column MBT_210_K_RPT_BAK.RPT_DATE is '上报数据日期';
comment on column MBT_210_K_RPT_BAK.DATA_DATE is '数据日期';
comment on column MBT_210_K_RPT_BAK.CORP_ID is '法人机构号';
comment on column MBT_210_K_RPT_BAK.ORG_ID is '分行机构号';
comment on column MBT_210_K_RPT_BAK.GROUP_ID is '部门编号';
comment on column MBT_210_K_RPT_BAK.INQ_ORG_ID is '查询机构号';
comment on column MBT_210_K_RPT_BAK.INQ_GROUP_ID is '查询组号';
comment on column MBT_210_K_RPT_BAK.DATA_DESC is '记录描述';
comment on column MBT_210_K_RPT_BAK.REMARKS is '备注';
comment on column MBT_210_K_RPT_BAK.CHECK_FLAG is '校验标识';
comment on column MBT_210_K_RPT_BAK.CHECK_DESC is '校验结果';
comment on column MBT_210_K_RPT_BAK.CHECK_ERR_TYPE is '校验失败类型';
comment on column MBT_210_K_RPT_BAK.NEXT_ACTION is '下一动作';
comment on column MBT_210_K_RPT_BAK.DATA_FLAG is '数据是否已删除';
comment on column MBT_210_K_RPT_BAK.DATA_SOURE is '数据来源';
comment on column MBT_210_K_RPT_BAK.DATA_VERSION is '数据版本号';
comment on column MBT_210_K_RPT_BAK.DATA_REJ_DESC is '数据审核拒绝描述';
comment on column MBT_210_K_RPT_BAK.DATA_DEL_DESC is '数据删除描述';
comment on column MBT_210_K_RPT_BAK.DATA_CRT_USER is '数据创建/导入用户';
comment on column MBT_210_K_RPT_BAK.DATA_CRT_DATE is '数据创建/导入日期';
comment on column MBT_210_K_RPT_BAK.DATA_CRT_TIME is '数据创建/导入时间';
comment on column MBT_210_K_RPT_BAK.DATA_CHG_USER is '数据修改/删除用户';
comment on column MBT_210_K_RPT_BAK.DATA_CHG_DATE is '数据修改/删除日期';
comment on column MBT_210_K_RPT_BAK.DATA_CHG_TIME is '数据修改/删除时间';
comment on column MBT_210_K_RPT_BAK.DATA_APV_USER is '数据审核/拒绝用户';
comment on column MBT_210_K_RPT_BAK.DATA_APV_DATE is '数据审核/拒绝日期';
comment on column MBT_210_K_RPT_BAK.DATA_APV_TIME is '数据审核/拒绝时间';
comment on column MBT_210_K_RPT_BAK.RSV1 is '扩展字段1';
comment on column MBT_210_K_RPT_BAK.RSV2 is '扩展字段2';
comment on column MBT_210_K_RPT_BAK.RSV3 is '扩展字段3';
comment on column MBT_210_K_RPT_BAK.RSV4 is '扩展字段4';
comment on column MBT_210_K_RPT_BAK.RSV5 is '扩展字段5';
comment on column MBT_210_K_RPT_BAK.B_ACCT_CODE is '账户标识码';

create table MBT_220_HIS_BAK
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
comment on column MBT_220_HIS_BAK.DATA_ID is '主键';
comment on column MBT_220_HIS_BAK.DATA_DATE is '数据日期';
comment on column MBT_220_HIS_BAK.CORP_ID is '法人机构号';
comment on column MBT_220_HIS_BAK.ORG_ID is '分行机构号';
comment on column MBT_220_HIS_BAK.GROUP_ID is '部门编号';
comment on column MBT_220_HIS_BAK.INQ_ORG_ID is '查询机构号';
comment on column MBT_220_HIS_BAK.INQ_GROUP_ID is '查询组号';
comment on column MBT_220_HIS_BAK.B_INF_REC_TYPE is '信息记录类型';
comment on column MBT_220_HIS_BAK.B_CONTRACT_CODE is '授信协议标识码';
comment on column MBT_220_HIS_BAK.B_RPT_DATE is '信息报告日期';
comment on column MBT_220_HIS_BAK.B_RPT_DATE_CODE is '报告时点说明代码';
comment on column MBT_220_HIS_BAK.B_NAME is '受信人名称';
comment on column MBT_220_HIS_BAK.B_ID_TYPE is '受信人身份标识类型';
comment on column MBT_220_HIS_BAK.B_ID_NUM is '受信人身份标识证件号码';
comment on column MBT_220_HIS_BAK.B_MNGMT_ORG_CODE is '业务管理机构代码';
comment on column MBT_220_HIS_BAK.B_CONTRACT_NO is '授信协议编号';
comment on column MBT_220_HIS_BAK.D_CREDIT_LIM_TYPE is '授信额度类型';
comment on column MBT_220_HIS_BAK.D_LIM_LOOP_FLG is '额度循环标志';
comment on column MBT_220_HIS_BAK.D_CREDIT_LIM is '授信额度';
comment on column MBT_220_HIS_BAK.D_CY is '币种';
comment on column MBT_220_HIS_BAK.D_CON_EFF_DATE is '额度生效日期';
comment on column MBT_220_HIS_BAK.D_CON_EXP_DATE is '额度到期日期';
comment on column MBT_220_HIS_BAK.D_CON_STATUS is '额度状态';
comment on column MBT_220_HIS_BAK.D_CREDIT_REST is '授信限额';
comment on column MBT_220_HIS_BAK.D_CREDIT_REST_CODE is '授信限额编号';
comment on column MBT_220_HIS_BAK.F_DATA_DESC is '记录描述';
comment on column MBT_220_HIS_BAK.REMARKS is '备注';
comment on column MBT_220_HIS_BAK.CHECK_FLAG is '校验标识';
comment on column MBT_220_HIS_BAK.CHECK_DESC is '校验结果';
comment on column MBT_220_HIS_BAK.CHECK_ERR_TYPE is '校验失败类型';
comment on column MBT_220_HIS_BAK.NEXT_ACTION is '下一动作';
comment on column MBT_220_HIS_BAK.DATA_STATUS is '数据状态';
comment on column MBT_220_HIS_BAK.DATA_FLAG is '数据是否已删除';
comment on column MBT_220_HIS_BAK.DATA_SOURCE is '数据来源';
comment on column MBT_220_HIS_BAK.DATA_VERSION is '数据版本号';
comment on column MBT_220_HIS_BAK.DATA_REJ_DESC is '数据审核拒绝描述';
comment on column MBT_220_HIS_BAK.DATA_DEL_DESC is '数据删除描述';
comment on column MBT_220_HIS_BAK.DATA_CRT_USER is '数据创建/导入用户';
comment on column MBT_220_HIS_BAK.DATA_CRT_DATE is '数据创建/导入日期';
comment on column MBT_220_HIS_BAK.DATA_CRT_TIME is '数据创建/导入时间';
comment on column MBT_220_HIS_BAK.DATA_CHG_USER is '数据修改/删除用户';
comment on column MBT_220_HIS_BAK.DATA_CHG_DATE is '数据修改/删除日期';
comment on column MBT_220_HIS_BAK.DATA_CHG_TIME is '数据修改/删除时间';
comment on column MBT_220_HIS_BAK.DATA_APV_USER is '数据审核/拒绝用户';
comment on column MBT_220_HIS_BAK.DATA_APV_DATE is '数据审核/拒绝日期';
comment on column MBT_220_HIS_BAK.DATA_APV_TIME is '数据审核/拒绝时间';
comment on column MBT_220_HIS_BAK.RSV1 is '扩展字段1';
comment on column MBT_220_HIS_BAK.RSV2 is '扩展字段2';
comment on column MBT_220_HIS_BAK.RSV3 is '扩展字段3';
comment on column MBT_220_HIS_BAK.RSV4 is '扩展字段4';
comment on column MBT_220_HIS_BAK.RSV5 is '扩展字段5';
comment on column MBT_220_HIS_BAK.ODS_DATA_ID is 'ODS数据ID';
comment on column MBT_220_HIS_BAK.HIS_DATE is '信息同步日期';
comment on column MBT_220_HIS_BAK.CUST_NO is '客户号';
comment on column MBT_220_HIS_BAK.IS_RPT is '是否上报';
comment on column MBT_220_HIS_BAK.FB_STATUS is '反馈状态';
comment on column MBT_220_HIS_BAK.RPT_FILE_NAME is '上报文件名';
comment on column MBT_220_HIS_BAK.D_CREDIT_REST_ORG is '授信限额_原始数据金额';
comment on column MBT_220_HIS_BAK.D_CREDIT_LIM_ORG is '授信额度_原始数据金额';

create table MBT_220_C_HIS_BAK
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
comment on column MBT_220_C_HIS_BAK.DATA_ID is '主键';
comment on column MBT_220_C_HIS_BAK.PDATA_ID is '外键';
comment on column MBT_220_C_HIS_BAK.C_BRER_TYPE is '共同受信人身份类别';
comment on column MBT_220_C_HIS_BAK.C_CERT_REL_NAME is '共同受信人名称';
comment on column MBT_220_C_HIS_BAK.C_CERT_REL_ID_TYPE is '共同受信人身份标识类型';
comment on column MBT_220_C_HIS_BAK.C_CERT_REL_ID_NUM is '共同受信人身份标识号码';
comment on column MBT_220_C_HIS_BAK.ODS_DATA_ID is 'ODS数据ID';
comment on column MBT_220_C_HIS_BAK.HIS_DATE is '信息同步日期';
comment on column MBT_220_C_HIS_BAK.DATA_DATE is '数据日期';
comment on column MBT_220_C_HIS_BAK.CORP_ID is '法人机构号';
comment on column MBT_220_C_HIS_BAK.ORG_ID is '分行机构号';
comment on column MBT_220_C_HIS_BAK.GROUP_ID is '部门编号';
comment on column MBT_220_C_HIS_BAK.INQ_ORG_ID is '查询机构号';
comment on column MBT_220_C_HIS_BAK.INQ_GROUP_ID is '查询组号';
comment on column MBT_220_C_HIS_BAK.DATA_DESC is '记录描述';
comment on column MBT_220_C_HIS_BAK.REMARKS is '备注';
comment on column MBT_220_C_HIS_BAK.CHECK_FLAG is '校验标识';
comment on column MBT_220_C_HIS_BAK.CHECK_DESC is '校验结果';
comment on column MBT_220_C_HIS_BAK.CHECK_ERR_TYPE is '校验失败类型';
comment on column MBT_220_C_HIS_BAK.NEXT_ACTION is '下一动作';
comment on column MBT_220_C_HIS_BAK.DATA_FLAG is '数据是否已删除';
comment on column MBT_220_C_HIS_BAK.DATA_SOURE is '数据来源';
comment on column MBT_220_C_HIS_BAK.DATA_VERSION is '数据版本号';
comment on column MBT_220_C_HIS_BAK.DATA_REJ_DESC is '数据审核拒绝描述';
comment on column MBT_220_C_HIS_BAK.DATA_DEL_DESC is '数据删除描述';
comment on column MBT_220_C_HIS_BAK.DATA_CRT_USER is '数据创建/导入用户';
comment on column MBT_220_C_HIS_BAK.DATA_CRT_DATE is '数据创建/导入日期';
comment on column MBT_220_C_HIS_BAK.DATA_CRT_TIME is '数据创建/导入时间';
comment on column MBT_220_C_HIS_BAK.DATA_CHG_USER is '数据修改/删除用户';
comment on column MBT_220_C_HIS_BAK.DATA_CHG_DATE is '数据修改/删除日期';
comment on column MBT_220_C_HIS_BAK.DATA_CHG_TIME is '数据修改/删除时间';
comment on column MBT_220_C_HIS_BAK.DATA_APV_USER is '数据审核/拒绝用户';
comment on column MBT_220_C_HIS_BAK.DATA_APV_DATE is '数据审核/拒绝日期';
comment on column MBT_220_C_HIS_BAK.DATA_APV_TIME is '数据审核/拒绝时间';
comment on column MBT_220_C_HIS_BAK.RSV1 is '扩展字段1';
comment on column MBT_220_C_HIS_BAK.RSV2 is '扩展字段2';
comment on column MBT_220_C_HIS_BAK.RSV3 is '扩展字段3';
comment on column MBT_220_C_HIS_BAK.RSV4 is '扩展字段4';
comment on column MBT_220_C_HIS_BAK.RSV5 is '扩展字段5';
comment on column MBT_220_C_HIS_BAK.B_CONTRACT_CODE is '授信协议标识码';


create table MBT_230_HIS_BAK
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
comment on column MBT_230_HIS_BAK.DATA_ID is '主键';
comment on column MBT_230_HIS_BAK.DATA_DATE is '数据日期';
comment on column MBT_230_HIS_BAK.CORP_ID is '法人机构号';
comment on column MBT_230_HIS_BAK.ORG_ID is '分行机构号';
comment on column MBT_230_HIS_BAK.GROUP_ID is '部门编号';
comment on column MBT_230_HIS_BAK.INQ_ORG_ID is '查询机构号';
comment on column MBT_230_HIS_BAK.INQ_GROUP_ID is '查询组号';
comment on column MBT_230_HIS_BAK.B_ACCT_TYPE is '账户类型';
comment on column MBT_230_HIS_BAK.B_ACCT_CODE is '账户标识码';
comment on column MBT_230_HIS_BAK.B_RPT_DATE is '信息报告日期';
comment on column MBT_230_HIS_BAK.B_RPT_DATE_CODE is '报告时点说明代码';
comment on column MBT_230_HIS_BAK.B_INF_REC_TYPE is '信息记录类型';
comment on column MBT_230_HIS_BAK.B_NAME is '债务人姓名';
comment on column MBT_230_HIS_BAK.B_ID_TYPE is '债务人证件类型';
comment on column MBT_230_HIS_BAK.B_ID_NUM is '债务人证件号码';
comment on column MBT_230_HIS_BAK.B_MNGMT_ORG_CODE is '业务管理机构代码';
comment on column MBT_230_HIS_BAK.B_CUST_NO is '债务人编号';
comment on column MBT_230_HIS_BAK.C_BUSI_LINES is '担保业务大类  ';
comment on column MBT_230_HIS_BAK.C_BUSI_DTIL_LINES is '担保业务种类细分  ';
comment on column MBT_230_HIS_BAK.C_OPEN_DATE is '开户日期';
comment on column MBT_230_HIS_BAK.C_ACCT_CRED_LINE is '担保金额  ';
comment on column MBT_230_HIS_BAK.C_CY is '币种  ';
comment on column MBT_230_HIS_BAK.C_DUE_DATE is '到期日期  ';
comment on column MBT_230_HIS_BAK.C_GUAR_MODE is '反担保方式';
comment on column MBT_230_HIS_BAK.C_OTH_REPY_GUAR_WAY is '其他还款保证方式';
comment on column MBT_230_HIS_BAK.C_SEC_DEP is '保证金百分比';
comment on column MBT_230_HIS_BAK.C_CTRCT_TXT_CD is '担保合同文本编号';
comment on column MBT_230_HIS_BAK.D_ACCT_STATUS is '账户状态';
comment on column MBT_230_HIS_BAK.D_LOAN_AMT is '在保余额';
comment on column MBT_230_HIS_BAK.D_REPAY_PRD is '余额变化日期';
comment on column MBT_230_HIS_BAK.D_FIVE_CATE is '五级分类';
comment on column MBT_230_HIS_BAK.D_FIVE_CATE_ADJ_DATE is '五级分类认定日期';
comment on column MBT_230_HIS_BAK.D_RI_EX is '风险敞口  ';
comment on column MBT_230_HIS_BAK.D_COMP_ADV_FLAG is '代偿（垫款）标志';
comment on column MBT_230_HIS_BAK.D_CLOSE_DATE is '账户关闭日期';
comment on column MBT_230_HIS_BAK.CHECK_FLAG is '校验标识';
comment on column MBT_230_HIS_BAK.CHECK_DESC is '校验结果';
comment on column MBT_230_HIS_BAK.CHECK_ERR_TYPE is '校验失败类型';
comment on column MBT_230_HIS_BAK.NEXT_ACTION is '下一动作';
comment on column MBT_230_HIS_BAK.DATA_STATUS is '数据状态';
comment on column MBT_230_HIS_BAK.DATA_FLAG is '数据是否已删除';
comment on column MBT_230_HIS_BAK.DATA_SOURCE is '数据来源';
comment on column MBT_230_HIS_BAK.DATA_VERSION is '数据版本号';
comment on column MBT_230_HIS_BAK.DATA_REJ_DESC is '数据审核拒绝描述';
comment on column MBT_230_HIS_BAK.DATA_DEL_DESC is '数据删除描述';
comment on column MBT_230_HIS_BAK.DATA_CRT_USER is '数据创建/导入用户';
comment on column MBT_230_HIS_BAK.DATA_CRT_DATE is '数据创建/导入日期';
comment on column MBT_230_HIS_BAK.DATA_CRT_TIME is '数据创建/导入时间';
comment on column MBT_230_HIS_BAK.DATA_CHG_USER is '数据修改/删除用户';
comment on column MBT_230_HIS_BAK.DATA_CHG_DATE is '数据修改/删除日期';
comment on column MBT_230_HIS_BAK.DATA_CHG_TIME is '数据修改/删除时间';
comment on column MBT_230_HIS_BAK.DATA_APV_USER is '数据审核/拒绝用户';
comment on column MBT_230_HIS_BAK.DATA_APV_DATE is '数据审核/拒绝日期';
comment on column MBT_230_HIS_BAK.DATA_APV_TIME is '数据审核/拒绝时间';
comment on column MBT_230_HIS_BAK.DATA_DESC is '记录描述';
comment on column MBT_230_HIS_BAK.RSV1 is '扩展字段1';
comment on column MBT_230_HIS_BAK.RSV2 is '扩展字段2';
comment on column MBT_230_HIS_BAK.RSV3 is '扩展字段3';
comment on column MBT_230_HIS_BAK.RSV4 is '扩展字段4';
comment on column MBT_230_HIS_BAK.RSV5 is '扩展字段5';
comment on column MBT_230_HIS_BAK.ODS_DATA_ID is 'ODS数据ID';
comment on column MBT_230_HIS_BAK.HIS_DATE is '信息同步日期';
comment on column MBT_230_HIS_BAK.INF_REC_TYPE is '信息记录类型';
comment on column MBT_230_HIS_BAK.IS_RPT is '是否上报';
comment on column MBT_230_HIS_BAK.FB_STATUS is '反馈状态';
comment on column MBT_230_HIS_BAK.RPT_FILE_NAME is '上报文件名';
comment on column MBT_230_HIS_BAK.D_RI_EX_ORG is '风险敞口_原始数据金额';
comment on column MBT_230_HIS_BAK.D_LOAN_AMT_ORG is '在保余额_原始数据金额';
comment on column MBT_230_HIS_BAK.C_ACCT_CRED_LINE_ORG is '担保金额_原始数据金额';

create table MBT_230_E_HIS_BAK
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
comment on column MBT_230_E_HIS_BAK.DATA_ID is '主键';
comment on column MBT_230_E_HIS_BAK.PDATA_ID is '外键';
comment on column MBT_230_E_HIS_BAK.INFO_ID_TYPE is '身份类别';
comment on column MBT_230_E_HIS_BAK.ARLP_NAME is '责任人名称';
comment on column MBT_230_E_HIS_BAK.ARLP_CERT_TYPE is '责任人身份标识类型';
comment on column MBT_230_E_HIS_BAK.ARLP_CERT_NUM is '责任人身份标识号码';
comment on column MBT_230_E_HIS_BAK.ARLP_TYPE is '还款责任人类型';
comment on column MBT_230_E_HIS_BAK.ARLP_AMT is '还款责任金额';
comment on column MBT_230_E_HIS_BAK.WARTY_SIGN is '联保标志';
comment on column MBT_230_E_HIS_BAK.MAX_GUAR_MCC is '保证合同编号';
comment on column MBT_230_E_HIS_BAK.ODS_DATA_ID is 'ODS数据ID';
comment on column MBT_230_E_HIS_BAK.HIS_DATE is '信息同步日期';
comment on column MBT_230_E_HIS_BAK.DATA_DATE is '数据日期';
comment on column MBT_230_E_HIS_BAK.CORP_ID is '法人机构号';
comment on column MBT_230_E_HIS_BAK.ORG_ID is '分行机构号';
comment on column MBT_230_E_HIS_BAK.GROUP_ID is '部门编号';
comment on column MBT_230_E_HIS_BAK.INQ_ORG_ID is '查询机构号';
comment on column MBT_230_E_HIS_BAK.INQ_GROUP_ID is '查询组号';
comment on column MBT_230_E_HIS_BAK.DATA_DESC is '记录描述';
comment on column MBT_230_E_HIS_BAK.REMARKS is '备注';
comment on column MBT_230_E_HIS_BAK.CHECK_FLAG is '校验标识';
comment on column MBT_230_E_HIS_BAK.CHECK_DESC is '校验结果';
comment on column MBT_230_E_HIS_BAK.CHECK_ERR_TYPE is '校验失败类型';
comment on column MBT_230_E_HIS_BAK.NEXT_ACTION is '下一动作';
comment on column MBT_230_E_HIS_BAK.DATA_FLAG is '数据是否已删除';
comment on column MBT_230_E_HIS_BAK.DATA_SOURE is '数据来源';
comment on column MBT_230_E_HIS_BAK.DATA_VERSION is '数据版本号';
comment on column MBT_230_E_HIS_BAK.DATA_REJ_DESC is '数据审核拒绝描述';
comment on column MBT_230_E_HIS_BAK.DATA_DEL_DESC is '数据删除描述';
comment on column MBT_230_E_HIS_BAK.DATA_CRT_USER is '数据创建/导入用户';
comment on column MBT_230_E_HIS_BAK.DATA_CRT_DATE is '数据创建/导入日期';
comment on column MBT_230_E_HIS_BAK.DATA_CRT_TIME is '数据创建/导入时间';
comment on column MBT_230_E_HIS_BAK.DATA_CHG_USER is '数据修改/删除用户';
comment on column MBT_230_E_HIS_BAK.DATA_CHG_DATE is '数据修改/删除日期';
comment on column MBT_230_E_HIS_BAK.DATA_CHG_TIME is '数据修改/删除时间';
comment on column MBT_230_E_HIS_BAK.DATA_APV_USER is '数据审核/拒绝用户';
comment on column MBT_230_E_HIS_BAK.DATA_APV_DATE is '数据审核/拒绝日期';
comment on column MBT_230_E_HIS_BAK.DATA_APV_TIME is '数据审核/拒绝时间';
comment on column MBT_230_E_HIS_BAK.RSV1 is '扩展字段1';
comment on column MBT_230_E_HIS_BAK.RSV2 is '扩展字段2';
comment on column MBT_230_E_HIS_BAK.RSV3 is '扩展字段3';
comment on column MBT_230_E_HIS_BAK.RSV4 is '扩展字段4';
comment on column MBT_230_E_HIS_BAK.RSV5 is '扩展字段5';
comment on column MBT_230_E_HIS_BAK.B_ACCT_CODE is '账户标识码';


create table MBT_230_F_HIS_BAK
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
comment on column MBT_230_F_HIS_BAK.DATA_ID is '主键';
comment on column MBT_230_F_HIS_BAK.PDATA_ID is '外键';
comment on column MBT_230_F_HIS_BAK.CCC is '抵（质）押合同标识码';
comment on column MBT_230_F_HIS_BAK.ODS_DATA_ID is 'ODS数据ID';
comment on column MBT_230_F_HIS_BAK.HIS_DATE is '信息同步日期';
comment on column MBT_230_F_HIS_BAK.DATA_DATE is '数据日期';
comment on column MBT_230_F_HIS_BAK.CORP_ID is '法人机构号';
comment on column MBT_230_F_HIS_BAK.ORG_ID is '分行机构号';
comment on column MBT_230_F_HIS_BAK.GROUP_ID is '部门编号';
comment on column MBT_230_F_HIS_BAK.INQ_ORG_ID is '查询机构号';
comment on column MBT_230_F_HIS_BAK.INQ_GROUP_ID is '查询组号';
comment on column MBT_230_F_HIS_BAK.DATA_DESC is '记录描述';
comment on column MBT_230_F_HIS_BAK.REMARKS is '备注';
comment on column MBT_230_F_HIS_BAK.CHECK_FLAG is '校验标识';
comment on column MBT_230_F_HIS_BAK.CHECK_DESC is '校验结果';
comment on column MBT_230_F_HIS_BAK.CHECK_ERR_TYPE is '校验失败类型';
comment on column MBT_230_F_HIS_BAK.NEXT_ACTION is '下一动作';
comment on column MBT_230_F_HIS_BAK.DATA_FLAG is '数据是否已删除';
comment on column MBT_230_F_HIS_BAK.DATA_SOURE is '数据来源';
comment on column MBT_230_F_HIS_BAK.DATA_VERSION is '数据版本号';
comment on column MBT_230_F_HIS_BAK.DATA_REJ_DESC is '数据审核拒绝描述';
comment on column MBT_230_F_HIS_BAK.DATA_DEL_DESC is '数据删除描述';
comment on column MBT_230_F_HIS_BAK.DATA_CRT_USER is '数据创建/导入用户';
comment on column MBT_230_F_HIS_BAK.DATA_CRT_DATE is '数据创建/导入日期';
comment on column MBT_230_F_HIS_BAK.DATA_CRT_TIME is '数据创建/导入时间';
comment on column MBT_230_F_HIS_BAK.DATA_CHG_USER is '数据修改/删除用户';
comment on column MBT_230_F_HIS_BAK.DATA_CHG_DATE is '数据修改/删除日期';
comment on column MBT_230_F_HIS_BAK.DATA_CHG_TIME is '数据修改/删除时间';
comment on column MBT_230_F_HIS_BAK.DATA_APV_USER is '数据审核/拒绝用户';
comment on column MBT_230_F_HIS_BAK.DATA_APV_DATE is '数据审核/拒绝日期';
comment on column MBT_230_F_HIS_BAK.DATA_APV_TIME is '数据审核/拒绝时间';
comment on column MBT_230_F_HIS_BAK.RSV1 is '扩展字段1';
comment on column MBT_230_F_HIS_BAK.RSV2 is '扩展字段2';
comment on column MBT_230_F_HIS_BAK.RSV3 is '扩展字段3';
comment on column MBT_230_F_HIS_BAK.RSV4 is '扩展字段4';
comment on column MBT_230_F_HIS_BAK.RSV5 is '扩展字段5';
comment on column MBT_230_F_HIS_BAK.B_ACCT_CODE is '账户标识码';


create table MBT_310_HIS_BAK
(
    DATA_ID                   CHAR(32) not null primary key,
    DATA_DATE                 CHAR(8),
    CORP_ID                   VARCHAR2(14),
    ORG_ID                    VARCHAR2(14),
    GROUP_ID                  VARCHAR2(14),
    INQ_ORG_ID                CHAR(24),
    INQ_GROUP_ID              CHAR(24),
    B_INF_REC_TYPE            CHAR(3),
    B_ENT_NAME                NVARCHAR2(80),
    B_ENT_CERT                CHAR(2),
    B_ENT_CERT_NUM            NVARCHAR2(40),
    B_INF_SURC_CODE           VARCHAR2(20),
    B_RPT_DATE                CHAR(8),
    B_RPT_DATE_CODE           CHAR(2),
    B_CIMOC                   VARCHAR2(14),
    B_CUSTOMER_TYPE           CHAR,
    B_ETP_STS                 CHAR,
    B_ORG_TYPE                VARCHAR2(2),
    C_ID_INFO_UP_DATE         CHAR(8),
    D_NATIONALITY             CHAR(3),
    D_REG_ADD                 NVARCHAR2(100),
    D_ADM_DIV_OF_REG          CHAR(6),
    D_ESTABLISH_DATE          CHAR(8),
    D_BIZ_END_DATE            CHAR(8),
    D_BIZ_RANGE               NVARCHAR2(400),
    D_ECO_INDUS_CATE          CHAR(5),
    D_ECO_TYPE                CHAR(3),
    D_ENT_SCALE               CHAR,
    D_FCS_INFO_UP_DATE        CHAR(8),
    E_MN_MMB_INFO_UP_DATE     CHAR(8),
    F_REG_CAP_CURRENCY        CHAR(3),
    F_REG_CAP                 NUMBER(15),
    F_MN_SHA_HOD_INFO_DATE    CHAR(8),
    G_ACTU_COTRL_INFO_UP_DATE CHAR(8),
    H_SUP_ORG_TYPE            CHAR,
    H_SUP_ORG_NAME            NVARCHAR2(80),
    H_SUP_ORG_CERT_TYPE       VARCHAR2(2),
    H_SUP_ORG_CERT_NUM        NVARCHAR2(40),
    H_SUP_ORG_INFO_UP_DATE    CHAR(8),
    I_CON_ADD_DISTRICT_CODE   CHAR(6),
    I_CON_ADD                 NVARCHAR2(100),
    I_CON_PHONE               NVARCHAR2(25),
    I_FIN_CON_PHONE           NVARCHAR2(25),
    I_COTA_INFO_UP_DATE       CHAR(8),
    REMARKS                   NVARCHAR2(512),
    CHECK_FLAG                CHAR,
    CHECK_DESC                NVARCHAR2(512),
    CHECK_ERR_TYPE            CHAR,
    NEXT_ACTION               CHAR(2),
    DATA_STATUS               CHAR(2),
    DATA_FLAG                 CHAR,
    DATA_SOURCE               CHAR,
    DATA_VERSION              NUMBER(8),
    DATA_REJ_DESC             NVARCHAR2(128),
    DATA_DEL_DESC             NVARCHAR2(128),
    DATA_CRT_USER             NVARCHAR2(20),
    DATA_CRT_DATE             CHAR(8),
    DATA_CRT_TIME             CHAR(14),
    DATA_CHG_USER             NVARCHAR2(20),
    DATA_CHG_DATE             CHAR(8),
    DATA_CHG_TIME             CHAR(14),
    DATA_APV_USER             NVARCHAR2(20),
    DATA_APV_DATE             CHAR(8),
    DATA_APV_TIME             CHAR(14),
    RSV1                      NVARCHAR2(180),
    RSV2                      NVARCHAR2(180),
    RSV3                      NVARCHAR2(180),
    RSV4                      NVARCHAR2(180),
    RSV5                      NVARCHAR2(180),
    DATA_DESC                 NVARCHAR2(256),
    ODS_DATA_ID               CHAR(32),
    HIS_DATE                  CHAR(8),
    HIS_DATE_TIME             CHAR(14),
    B_CUST_NO                 NVARCHAR2(32),
    IS_RPT                    VARCHAR2(64),
    FB_STATUS                 CHAR(2),
    RPT_FILE_NAME             VARCHAR2(512),
    F_REG_CAP_LCY             NUMBER(15)
);
comment on column MBT_310_HIS_BAK.DATA_ID is '主键';
comment on column MBT_310_HIS_BAK.DATA_DATE is '数据日期';
comment on column MBT_310_HIS_BAK.CORP_ID is '法人机构号';
comment on column MBT_310_HIS_BAK.ORG_ID is '分行机构号';
comment on column MBT_310_HIS_BAK.GROUP_ID is '部门编号';
comment on column MBT_310_HIS_BAK.INQ_ORG_ID is '查询机构号';
comment on column MBT_310_HIS_BAK.INQ_GROUP_ID is '查询组号';
comment on column MBT_310_HIS_BAK.B_INF_REC_TYPE is '信息记录类型';
comment on column MBT_310_HIS_BAK.B_ENT_NAME is '企业名称';
comment on column MBT_310_HIS_BAK.B_ENT_CERT is '企业身份标识类型';
comment on column MBT_310_HIS_BAK.B_ENT_CERT_NUM is '企业身份标识号码';
comment on column MBT_310_HIS_BAK.B_INF_SURC_CODE is '信息来源编码';
comment on column MBT_310_HIS_BAK.B_RPT_DATE is '信息报告日期';
comment on column MBT_310_HIS_BAK.B_RPT_DATE_CODE is '报告时点说明代码';
comment on column MBT_310_HIS_BAK.B_CIMOC is '客户资料维护机构代码';
comment on column MBT_310_HIS_BAK.B_CUSTOMER_TYPE is '客户资料类型';
comment on column MBT_310_HIS_BAK.B_ETP_STS is '存续状态';
comment on column MBT_310_HIS_BAK.B_ORG_TYPE is '组织机构类型';
comment on column MBT_310_HIS_BAK.C_ID_INFO_UP_DATE is '信息更新日期';
comment on column MBT_310_HIS_BAK.D_NATIONALITY is '国别代码';
comment on column MBT_310_HIS_BAK.D_REG_ADD is '登记地址';
comment on column MBT_310_HIS_BAK.D_ADM_DIV_OF_REG is '登记地行政区划代码';
comment on column MBT_310_HIS_BAK.D_ESTABLISH_DATE is '成立日期';
comment on column MBT_310_HIS_BAK.D_BIZ_END_DATE is '营业许可证到期日';
comment on column MBT_310_HIS_BAK.D_BIZ_RANGE is '业务范围';
comment on column MBT_310_HIS_BAK.D_ECO_INDUS_CATE is '行业分类代码';
comment on column MBT_310_HIS_BAK.D_ECO_TYPE is '经济类型代码';
comment on column MBT_310_HIS_BAK.D_ENT_SCALE is '企业规模';
comment on column MBT_310_HIS_BAK.D_FCS_INFO_UP_DATE is '信息更新日期';
comment on column MBT_310_HIS_BAK.E_MN_MMB_INFO_UP_DATE is '信息更新日期';
comment on column MBT_310_HIS_BAK.F_REG_CAP_CURRENCY is '注册资本币种';
comment on column MBT_310_HIS_BAK.F_REG_CAP is '注册资本';
comment on column MBT_310_HIS_BAK.F_MN_SHA_HOD_INFO_DATE is '信息更新日期';
comment on column MBT_310_HIS_BAK.G_ACTU_COTRL_INFO_UP_DATE is '信息更新日期';
comment on column MBT_310_HIS_BAK.H_SUP_ORG_TYPE is '上级机构类型';
comment on column MBT_310_HIS_BAK.H_SUP_ORG_NAME is '上级机构名称';
comment on column MBT_310_HIS_BAK.H_SUP_ORG_CERT_TYPE is '上级机构身份标识类型';
comment on column MBT_310_HIS_BAK.H_SUP_ORG_CERT_NUM is '上级机构身份标识码';
comment on column MBT_310_HIS_BAK.H_SUP_ORG_INFO_UP_DATE is '信息更新日期';
comment on column MBT_310_HIS_BAK.I_CON_ADD_DISTRICT_CODE is '联系地址行政区划代码';
comment on column MBT_310_HIS_BAK.I_CON_ADD is '联系地址';
comment on column MBT_310_HIS_BAK.I_CON_PHONE is '联系电话';
comment on column MBT_310_HIS_BAK.I_FIN_CON_PHONE is '财务部门联系电话';
comment on column MBT_310_HIS_BAK.I_COTA_INFO_UP_DATE is '信息更新日期';
comment on column MBT_310_HIS_BAK.REMARKS is '备注';
comment on column MBT_310_HIS_BAK.CHECK_FLAG is '校验标识';
comment on column MBT_310_HIS_BAK.CHECK_DESC is '校验结果';
comment on column MBT_310_HIS_BAK.CHECK_ERR_TYPE is '校验失败类型';
comment on column MBT_310_HIS_BAK.NEXT_ACTION is '下一动作';
comment on column MBT_310_HIS_BAK.DATA_STATUS is '数据状态';
comment on column MBT_310_HIS_BAK.DATA_FLAG is '数据是否已删除';
comment on column MBT_310_HIS_BAK.DATA_SOURCE is '数据来源';
comment on column MBT_310_HIS_BAK.DATA_VERSION is '数据版本号';
comment on column MBT_310_HIS_BAK.DATA_REJ_DESC is '数据审核拒绝描述';
comment on column MBT_310_HIS_BAK.DATA_DEL_DESC is '数据删除描述';
comment on column MBT_310_HIS_BAK.DATA_CRT_USER is '数据创建/导入用户';
comment on column MBT_310_HIS_BAK.DATA_CRT_DATE is '数据创建/导入日期';
comment on column MBT_310_HIS_BAK.DATA_CRT_TIME is '数据创建/导入时间';
comment on column MBT_310_HIS_BAK.DATA_CHG_USER is '数据修改/删除用户';
comment on column MBT_310_HIS_BAK.DATA_CHG_DATE is '数据修改/删除日期';
comment on column MBT_310_HIS_BAK.DATA_CHG_TIME is '数据修改/删除时间';
comment on column MBT_310_HIS_BAK.DATA_APV_USER is '数据审核/拒绝用户';
comment on column MBT_310_HIS_BAK.DATA_APV_DATE is '数据审核/拒绝日期';
comment on column MBT_310_HIS_BAK.DATA_APV_TIME is '数据审核/拒绝时间';
comment on column MBT_310_HIS_BAK.RSV1 is '扩展字段1';
comment on column MBT_310_HIS_BAK.RSV2 is '扩展字段2';
comment on column MBT_310_HIS_BAK.RSV3 is '扩展字段3';
comment on column MBT_310_HIS_BAK.RSV4 is '扩展字段4';
comment on column MBT_310_HIS_BAK.RSV5 is '扩展字段5';
comment on column MBT_310_HIS_BAK.DATA_DESC is '记录描述';
comment on column MBT_310_HIS_BAK.ODS_DATA_ID is 'ODS数据ID';
comment on column MBT_310_HIS_BAK.HIS_DATE is '信息同步日期';
comment on column MBT_310_HIS_BAK.HIS_DATE_TIME is '信息同步时间';
comment on column MBT_310_HIS_BAK.B_CUST_NO is '客户号';
comment on column MBT_310_HIS_BAK.IS_RPT is '是否上报';
comment on column MBT_310_HIS_BAK.FB_STATUS is '反馈状态';
comment on column MBT_310_HIS_BAK.RPT_FILE_NAME is '上报文件名';

create table MBT_310_C_HIS_BAK
(
    DATA_ID           CHAR(32) not null primary key,
    PDATA_ID          CHAR(32),
    OTH_ENT_CERT_TYPE VARCHAR2(2),
    OTH_ENT_CERT_NUM  NVARCHAR2(40),
    DATA_STATUS       CHAR(2),
    ID_INFO_UP_DATE   CHAR(8),
    DATA_DATE         CHAR(8),
    CORP_ID           VARCHAR2(14),
    ORG_ID            VARCHAR2(14),
    GROUP_ID          VARCHAR2(14),
    INQ_ORG_ID        CHAR(24),
    INQ_GROUP_ID      CHAR(24),
    DATA_DESC         NVARCHAR2(256),
    REMARKS           NVARCHAR2(512),
    CHECK_FLAG        CHAR,
    CHECK_DESC        NVARCHAR2(512),
    CHECK_ERR_TYPE    CHAR,
    NEXT_ACTION       CHAR(2),
    DATA_FLAG         CHAR,
    DATA_SOURE        CHAR,
    DATA_VERSION      NUMBER(8),
    DATA_REJ_DESC     NVARCHAR2(128),
    DATA_DEL_DESC     NVARCHAR2(128),
    DATA_CRT_USER     NVARCHAR2(20),
    DATA_CRT_DATE     CHAR(8),
    DATA_CRT_TIME     CHAR(14),
    DATA_CHG_USER     NVARCHAR2(20),
    DATA_CHG_DATE     CHAR(8),
    DATA_CHG_TIME     CHAR(14),
    DATA_APV_USER     NVARCHAR2(20),
    DATA_APV_DATE     CHAR(8),
    DATA_APV_TIME     CHAR(14),
    RSV1              NVARCHAR2(180),
    RSV2              NVARCHAR2(180),
    RSV3              NVARCHAR2(180),
    RSV4              NVARCHAR2(180),
    RSV5              NVARCHAR2(180),
    HIS_DATE_TIME     CHAR(14),
    HIS_DATE          CHAR(8),
    ODS_DATA_ID       CHAR(32),
    B_ENT_CERT        CHAR(2),
    B_ENT_CERT_NUM    NVARCHAR2(80)
);
comment on column MBT_310_C_HIS_BAK.DATA_ID is '主键';
comment on column MBT_310_C_HIS_BAK.PDATA_ID is '外键';
comment on column MBT_310_C_HIS_BAK.OTH_ENT_CERT_TYPE is '企业身份标识类型';
comment on column MBT_310_C_HIS_BAK.OTH_ENT_CERT_NUM is '企业身份标识号码';
comment on column MBT_310_C_HIS_BAK.DATA_STATUS is '数据状态';
comment on column MBT_310_C_HIS_BAK.ID_INFO_UP_DATE is '信息更新日期';
comment on column MBT_310_C_HIS_BAK.DATA_DATE is '数据日期';
comment on column MBT_310_C_HIS_BAK.CORP_ID is '法人机构号';
comment on column MBT_310_C_HIS_BAK.ORG_ID is '分行机构号';
comment on column MBT_310_C_HIS_BAK.GROUP_ID is '部门编号';
comment on column MBT_310_C_HIS_BAK.INQ_ORG_ID is '查询机构号';
comment on column MBT_310_C_HIS_BAK.INQ_GROUP_ID is '查询组号';
comment on column MBT_310_C_HIS_BAK.DATA_DESC is '记录描述';
comment on column MBT_310_C_HIS_BAK.REMARKS is '备注';
comment on column MBT_310_C_HIS_BAK.CHECK_FLAG is '校验标识';
comment on column MBT_310_C_HIS_BAK.CHECK_DESC is '校验结果';
comment on column MBT_310_C_HIS_BAK.CHECK_ERR_TYPE is '校验失败类型';
comment on column MBT_310_C_HIS_BAK.NEXT_ACTION is '下一动作';
comment on column MBT_310_C_HIS_BAK.DATA_FLAG is '数据是否已删除';
comment on column MBT_310_C_HIS_BAK.DATA_SOURE is '数据来源';
comment on column MBT_310_C_HIS_BAK.DATA_VERSION is '数据版本号';
comment on column MBT_310_C_HIS_BAK.DATA_REJ_DESC is '数据审核拒绝描述';
comment on column MBT_310_C_HIS_BAK.DATA_DEL_DESC is '数据删除描述';
comment on column MBT_310_C_HIS_BAK.DATA_CRT_USER is '数据创建/导入用户';
comment on column MBT_310_C_HIS_BAK.DATA_CRT_DATE is '数据创建/导入日期';
comment on column MBT_310_C_HIS_BAK.DATA_CRT_TIME is '数据创建/导入时间';
comment on column MBT_310_C_HIS_BAK.DATA_CHG_USER is '数据修改/删除用户';
comment on column MBT_310_C_HIS_BAK.DATA_CHG_DATE is '数据修改/删除日期';
comment on column MBT_310_C_HIS_BAK.DATA_CHG_TIME is '数据修改/删除时间';
comment on column MBT_310_C_HIS_BAK.DATA_APV_USER is '数据审核/拒绝用户';
comment on column MBT_310_C_HIS_BAK.DATA_APV_DATE is '数据审核/拒绝日期';
comment on column MBT_310_C_HIS_BAK.DATA_APV_TIME is '数据审核/拒绝时间';
comment on column MBT_310_C_HIS_BAK.RSV1 is '扩展字段1';
comment on column MBT_310_C_HIS_BAK.RSV2 is '扩展字段2';
comment on column MBT_310_C_HIS_BAK.RSV3 is '扩展字段3';
comment on column MBT_310_C_HIS_BAK.RSV4 is '扩展字段4';
comment on column MBT_310_C_HIS_BAK.RSV5 is '扩展字段5';
comment on column MBT_310_C_HIS_BAK.HIS_DATE_TIME is '信息同步时间';
comment on column MBT_310_C_HIS_BAK.HIS_DATE is '信息同步日期';
comment on column MBT_310_C_HIS_BAK.ODS_DATA_ID is 'ODS数据ID';
comment on column MBT_310_C_HIS_BAK.B_ENT_CERT is '企业身份标识类型';
comment on column MBT_310_C_HIS_BAK.B_ENT_CERT_NUM is '企业身份标识号码';


create table MBT_310_E_HIS_BAK
(
    DATA_ID             CHAR(32) not null primary key,
    PDATA_ID            CHAR(32) ,
    MMB_ALIAS           NVARCHAR2(30),
    MMB_ID_TYPE         VARCHAR2(2),
    MMB_ID_NUM          NVARCHAR2(20),
    MMB_PSTN            CHAR,
    DATA_STATUS         CHAR(2),
    DATA_DATE           CHAR(8),
    CORP_ID             VARCHAR2(14),
    ORG_ID              VARCHAR2(14),
    GROUP_ID            VARCHAR2(14),
    INQ_ORG_ID          CHAR(24),
    INQ_GROUP_ID        CHAR(24),
    DATA_DESC           NVARCHAR2(256),
    REMARKS             NVARCHAR2(512),
    CHECK_FLAG          CHAR,
    CHECK_DESC          NVARCHAR2(512),
    CHECK_ERR_TYPE      CHAR,
    NEXT_ACTION         CHAR(2),
    DATA_FLAG           CHAR,
    DATA_SOURCE         CHAR,
    DATA_VERSION        NUMBER(8),
    DATA_REJ_DESC       NVARCHAR2(128),
    DATA_DEL_DESC       NVARCHAR2(128),
    DATA_CRT_USER       NVARCHAR2(20),
    DATA_CRT_DATE       CHAR(8),
    DATA_CRT_TIME       CHAR(14),
    DATA_CHG_USER       NVARCHAR2(20),
    DATA_CHG_DATE       CHAR(8),
    DATA_CHG_TIME       CHAR(14),
    DATA_APV_USER       NVARCHAR2(20),
    DATA_APV_DATE       CHAR(8),
    DATA_APV_TIME       CHAR(14),
    RSV1                NVARCHAR2(180),
    RSV2                NVARCHAR2(180),
    RSV3                NVARCHAR2(180),
    RSV4                NVARCHAR2(180),
    RSV5                NVARCHAR2(180),
    MN_MMB_INFO_UP_DATE CHAR(8),
    ODS_DATA_ID         CHAR(32),
    HIS_DATE            CHAR(8),
    HIS_DATE_TIME       CHAR(14),
    B_ENT_CERT          CHAR(2),
    B_ENT_CERT_NUM      NVARCHAR2(80)
);
comment on column MBT_310_E_HIS_BAK.DATA_ID is '主键';
comment on column MBT_310_E_HIS_BAK.PDATA_ID is '外键';
comment on column MBT_310_E_HIS_BAK.MMB_ALIAS is '主要组成人员姓名';
comment on column MBT_310_E_HIS_BAK.MMB_ID_TYPE is '主要组成人员证件类型';
comment on column MBT_310_E_HIS_BAK.MMB_ID_NUM is '主要组成人员证件号码';
comment on column MBT_310_E_HIS_BAK.MMB_PSTN is '主要组成人员职位';
comment on column MBT_310_E_HIS_BAK.DATA_STATUS is '数据状态';
comment on column MBT_310_E_HIS_BAK.DATA_DATE is '数据日期';
comment on column MBT_310_E_HIS_BAK.CORP_ID is '法人机构号';
comment on column MBT_310_E_HIS_BAK.ORG_ID is '分行机构号';
comment on column MBT_310_E_HIS_BAK.GROUP_ID is '部门编号';
comment on column MBT_310_E_HIS_BAK.INQ_ORG_ID is '查询机构号';
comment on column MBT_310_E_HIS_BAK.INQ_GROUP_ID is '查询组号';
comment on column MBT_310_E_HIS_BAK.DATA_DESC is '记录描述';
comment on column MBT_310_E_HIS_BAK.REMARKS is '备注';
comment on column MBT_310_E_HIS_BAK.CHECK_FLAG is '校验标识';
comment on column MBT_310_E_HIS_BAK.CHECK_DESC is '校验结果';
comment on column MBT_310_E_HIS_BAK.CHECK_ERR_TYPE is '校验失败类型';
comment on column MBT_310_E_HIS_BAK.NEXT_ACTION is '下一动作';
comment on column MBT_310_E_HIS_BAK.DATA_FLAG is '数据是否已删除';
comment on column MBT_310_E_HIS_BAK.DATA_SOURCE is '数据来源';
comment on column MBT_310_E_HIS_BAK.DATA_VERSION is '数据版本号';
comment on column MBT_310_E_HIS_BAK.DATA_REJ_DESC is '数据审核拒绝描述';
comment on column MBT_310_E_HIS_BAK.DATA_DEL_DESC is '数据删除描述';
comment on column MBT_310_E_HIS_BAK.DATA_CRT_USER is '数据创建/导入用户';
comment on column MBT_310_E_HIS_BAK.DATA_CRT_DATE is '数据创建/导入日期';
comment on column MBT_310_E_HIS_BAK.DATA_CRT_TIME is '数据创建/导入时间';
comment on column MBT_310_E_HIS_BAK.DATA_CHG_USER is '数据修改/删除用户';
comment on column MBT_310_E_HIS_BAK.DATA_CHG_DATE is '数据修改/删除日期';
comment on column MBT_310_E_HIS_BAK.DATA_CHG_TIME is '数据修改/删除时间';
comment on column MBT_310_E_HIS_BAK.DATA_APV_USER is '数据审核/拒绝用户';
comment on column MBT_310_E_HIS_BAK.DATA_APV_DATE is '数据审核/拒绝日期';
comment on column MBT_310_E_HIS_BAK.DATA_APV_TIME is '数据审核/拒绝时间';
comment on column MBT_310_E_HIS_BAK.RSV1 is '扩展字段1';
comment on column MBT_310_E_HIS_BAK.RSV2 is '扩展字段2';
comment on column MBT_310_E_HIS_BAK.RSV3 is '扩展字段3';
comment on column MBT_310_E_HIS_BAK.RSV4 is '扩展字段4';
comment on column MBT_310_E_HIS_BAK.RSV5 is '扩展字段5';
comment on column MBT_310_E_HIS_BAK.MN_MMB_INFO_UP_DATE is '信息更新日期';
comment on column MBT_310_E_HIS_BAK.ODS_DATA_ID is 'ODS数据ID';
comment on column MBT_310_E_HIS_BAK.HIS_DATE is '信息同步日期';
comment on column MBT_310_E_HIS_BAK.HIS_DATE_TIME is '信息同步时间';
comment on column MBT_310_E_HIS_BAK.B_ENT_CERT is '企业身份标识类型';
comment on column MBT_310_E_HIS_BAK.B_ENT_CERT_NUM is '企业身份标识号码';

create table MBT_310_F_HIS_BAK
(
    DATA_ID                 CHAR(32) not null primary key,
    PDATA_ID                CHAR(32) ,
    SHAR_HOD_TYPE           VARCHAR2(2),
    SHAR_HOD_CERT_TYPE      CHAR,
    SHAR_HOD_NAME           NVARCHAR2(80),
    SHAR_HOD_ID_TYPE        VARCHAR2(2),
    SHAR_HOD_ID_NUM         NVARCHAR2(40),
    INV_RATIO               NUMBER(7),
    DATA_STATUS             CHAR(2),
    DATA_DATE               CHAR(8),
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
    MN_SHA_HOD_INFO_UP_DATE CHAR(8),
    HIS_DATE_TIME           CHAR(14),
    HIS_DATE                CHAR(8),
    ODS_DATA_ID             CHAR(32),
    B_ENT_CERT              CHAR(2),
    B_ENT_CERT_NUM          NVARCHAR2(80)
);
comment on column MBT_310_F_HIS_BAK.DATA_ID is '主键';
comment on column MBT_310_F_HIS_BAK.PDATA_ID is '外键';
comment on column MBT_310_F_HIS_BAK.SHAR_HOD_TYPE is '出资人类型';
comment on column MBT_310_F_HIS_BAK.SHAR_HOD_CERT_TYPE is '出资人身份类别';
comment on column MBT_310_F_HIS_BAK.SHAR_HOD_NAME is '出资人名称';
comment on column MBT_310_F_HIS_BAK.SHAR_HOD_ID_TYPE is '出资人身份标识类型';
comment on column MBT_310_F_HIS_BAK.SHAR_HOD_ID_NUM is '出资人身份标识号码';
comment on column MBT_310_F_HIS_BAK.INV_RATIO is '出资比例';
comment on column MBT_310_F_HIS_BAK.DATA_STATUS is '数据状态';
comment on column MBT_310_F_HIS_BAK.DATA_DATE is '数据日期';
comment on column MBT_310_F_HIS_BAK.CORP_ID is '法人机构号';
comment on column MBT_310_F_HIS_BAK.ORG_ID is '分行机构号';
comment on column MBT_310_F_HIS_BAK.GROUP_ID is '部门编号';
comment on column MBT_310_F_HIS_BAK.INQ_ORG_ID is '查询机构号';
comment on column MBT_310_F_HIS_BAK.INQ_GROUP_ID is '查询组号';
comment on column MBT_310_F_HIS_BAK.DATA_DESC is '记录描述';
comment on column MBT_310_F_HIS_BAK.REMARKS is '备注';
comment on column MBT_310_F_HIS_BAK.CHECK_FLAG is '校验标识';
comment on column MBT_310_F_HIS_BAK.CHECK_DESC is '校验结果';
comment on column MBT_310_F_HIS_BAK.CHECK_ERR_TYPE is '校验失败类型';
comment on column MBT_310_F_HIS_BAK.NEXT_ACTION is '下一动作';
comment on column MBT_310_F_HIS_BAK.DATA_FLAG is '数据是否已删除';
comment on column MBT_310_F_HIS_BAK.DATA_SOURE is '数据来源';
comment on column MBT_310_F_HIS_BAK.DATA_VERSION is '数据版本号';
comment on column MBT_310_F_HIS_BAK.DATA_REJ_DESC is '数据审核拒绝描述';
comment on column MBT_310_F_HIS_BAK.DATA_DEL_DESC is '数据删除描述';
comment on column MBT_310_F_HIS_BAK.DATA_CRT_USER is '数据创建/导入用户';
comment on column MBT_310_F_HIS_BAK.DATA_CRT_DATE is '数据创建/导入日期';
comment on column MBT_310_F_HIS_BAK.DATA_CRT_TIME is '数据创建/导入时间';
comment on column MBT_310_F_HIS_BAK.DATA_CHG_USER is '数据修改/删除用户';
comment on column MBT_310_F_HIS_BAK.DATA_CHG_DATE is '数据修改/删除日期';
comment on column MBT_310_F_HIS_BAK.DATA_CHG_TIME is '数据修改/删除时间';
comment on column MBT_310_F_HIS_BAK.DATA_APV_USER is '数据审核/拒绝用户';
comment on column MBT_310_F_HIS_BAK.DATA_APV_DATE is '数据审核/拒绝日期';
comment on column MBT_310_F_HIS_BAK.DATA_APV_TIME is '数据审核/拒绝时间';
comment on column MBT_310_F_HIS_BAK.RSV1 is '扩展字段1';
comment on column MBT_310_F_HIS_BAK.RSV2 is '扩展字段2';
comment on column MBT_310_F_HIS_BAK.RSV3 is '扩展字段3';
comment on column MBT_310_F_HIS_BAK.RSV4 is '扩展字段4';
comment on column MBT_310_F_HIS_BAK.RSV5 is '扩展字段5';
comment on column MBT_310_F_HIS_BAK.MN_SHA_HOD_INFO_UP_DATE is '信息更新日期';
comment on column MBT_310_F_HIS_BAK.HIS_DATE_TIME is '信息同步时间';
comment on column MBT_310_F_HIS_BAK.HIS_DATE is '信息同步日期';
comment on column MBT_310_F_HIS_BAK.ODS_DATA_ID is 'ODS数据ID';
comment on column MBT_310_F_HIS_BAK.B_ENT_CERT is '企业身份标识类型';
comment on column MBT_310_F_HIS_BAK.B_ENT_CERT_NUM is '企业身份标识号码';


create table MBT_310_G_HIS_BAK
(
    DATA_ID                 CHAR(32) not null primary key,
    PDATA_ID                CHAR(32) ,
    ACTU_COTRL_CERT_TYPE    CHAR,
    ACTU_COTRL_NAME         NVARCHAR2(80),
    ACTU_COTRL_ID_TYPE      VARCHAR2(2),
    ACTU_COTRL_ID_NUM       NVARCHAR2(40),
    DATA_STATUS             CHAR(2),
    DATA_DATE               CHAR(8),
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
    ACTU_COTRL_INFO_UP_DATE CHAR(8),
    HIS_DATE_TIME           CHAR(14),
    HIS_DATE                CHAR(8),
    ODS_DATA_ID             CHAR(32),
    B_ENT_CERT              CHAR(2),
    B_ENT_CERT_NUM          NVARCHAR2(80)
);
comment on column MBT_310_G_HIS_BAK.DATA_ID is '主键';
comment on column MBT_310_G_HIS_BAK.PDATA_ID is '外键';
comment on column MBT_310_G_HIS_BAK.ACTU_COTRL_CERT_TYPE is '实际控制人身份类别';
comment on column MBT_310_G_HIS_BAK.ACTU_COTRL_NAME is '实际控制人名称';
comment on column MBT_310_G_HIS_BAK.ACTU_COTRL_ID_TYPE is '实际控制人身份标识类型';
comment on column MBT_310_G_HIS_BAK.ACTU_COTRL_ID_NUM is '实际控制人身份标识号码';
comment on column MBT_310_G_HIS_BAK.DATA_STATUS is '数据状态';
comment on column MBT_310_G_HIS_BAK.DATA_DATE is '数据日期';
comment on column MBT_310_G_HIS_BAK.CORP_ID is '法人机构号';
comment on column MBT_310_G_HIS_BAK.ORG_ID is '分行机构号';
comment on column MBT_310_G_HIS_BAK.GROUP_ID is '部门编号';
comment on column MBT_310_G_HIS_BAK.INQ_ORG_ID is '查询机构号';
comment on column MBT_310_G_HIS_BAK.INQ_GROUP_ID is '查询组号';
comment on column MBT_310_G_HIS_BAK.DATA_DESC is '记录描述';
comment on column MBT_310_G_HIS_BAK.REMARKS is '备注';
comment on column MBT_310_G_HIS_BAK.CHECK_FLAG is '校验标识';
comment on column MBT_310_G_HIS_BAK.CHECK_DESC is '校验结果';
comment on column MBT_310_G_HIS_BAK.CHECK_ERR_TYPE is '校验失败类型';
comment on column MBT_310_G_HIS_BAK.NEXT_ACTION is '下一动作';
comment on column MBT_310_G_HIS_BAK.DATA_FLAG is '数据是否已删除';
comment on column MBT_310_G_HIS_BAK.DATA_SOURE is '数据来源';
comment on column MBT_310_G_HIS_BAK.DATA_VERSION is '数据版本号';
comment on column MBT_310_G_HIS_BAK.DATA_REJ_DESC is '数据审核拒绝描述';
comment on column MBT_310_G_HIS_BAK.DATA_DEL_DESC is '数据删除描述';
comment on column MBT_310_G_HIS_BAK.DATA_CRT_USER is '数据创建/导入用户';
comment on column MBT_310_G_HIS_BAK.DATA_CRT_DATE is '数据创建/导入日期';
comment on column MBT_310_G_HIS_BAK.DATA_CRT_TIME is '数据创建/导入时间';
comment on column MBT_310_G_HIS_BAK.DATA_CHG_USER is '数据修改/删除用户';
comment on column MBT_310_G_HIS_BAK.DATA_CHG_DATE is '数据修改/删除日期';
comment on column MBT_310_G_HIS_BAK.DATA_CHG_TIME is '数据修改/删除时间';
comment on column MBT_310_G_HIS_BAK.DATA_APV_USER is '数据审核/拒绝用户';
comment on column MBT_310_G_HIS_BAK.DATA_APV_DATE is '数据审核/拒绝日期';
comment on column MBT_310_G_HIS_BAK.DATA_APV_TIME is '数据审核/拒绝时间';
comment on column MBT_310_G_HIS_BAK.RSV1 is '扩展字段1';
comment on column MBT_310_G_HIS_BAK.RSV2 is '扩展字段2';
comment on column MBT_310_G_HIS_BAK.RSV3 is '扩展字段3';
comment on column MBT_310_G_HIS_BAK.RSV4 is '扩展字段4';
comment on column MBT_310_G_HIS_BAK.RSV5 is '扩展字段5';
comment on column MBT_310_G_HIS_BAK.ACTU_COTRL_INFO_UP_DATE is '信息更新日期';
comment on column MBT_310_G_HIS_BAK.HIS_DATE_TIME is '信息同步时间';
comment on column MBT_310_G_HIS_BAK.HIS_DATE is '信息同步日期';
comment on column MBT_310_G_HIS_BAK.ODS_DATA_ID is 'ODS数据ID';
comment on column MBT_310_G_HIS_BAK.B_ENT_CERT is '企业身份标识类型';
comment on column MBT_310_G_HIS_BAK.B_ENT_CERT_NUM is '企业身份标识号码';

create table MBT_410_HIS_BAK
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
comment on column MBT_410_HIS_BAK.DATA_ID is '主键';
comment on column MBT_410_HIS_BAK.DATA_DATE is '数据日期';
comment on column MBT_410_HIS_BAK.CORP_ID is '法人机构号';
comment on column MBT_410_HIS_BAK.ORG_ID is '分行机构号';
comment on column MBT_410_HIS_BAK.GROUP_ID is '部门编号';
comment on column MBT_410_HIS_BAK.INQ_ORG_ID is '查询机构号';
comment on column MBT_410_HIS_BAK.INQ_GROUP_ID is '查询组号';
comment on column MBT_410_HIS_BAK.B_INF_REC_TYPE is '信息记录类型';
comment on column MBT_410_HIS_BAK.B_ACCT_TYPE is '账户类型';
comment on column MBT_410_HIS_BAK.B_ACCT_CODE is '账户标识码';
comment on column MBT_410_HIS_BAK.B_RPT_DATE is '信息报告日期';
comment on column MBT_410_HIS_BAK.B_RPT_DATE_CODE is '报告时点说明代码';
comment on column MBT_410_HIS_BAK.B_NAME is '借款人名称';
comment on column MBT_410_HIS_BAK.B_ID_TYPE is '借款人身份标识类型';
comment on column MBT_410_HIS_BAK.B_ID_NUM is '借款人身份标识号码';
comment on column MBT_410_HIS_BAK.B_MNGMT_ORG_CODE is '业务管理机构代码';
comment on column MBT_410_HIS_BAK.C_BUSI_LINES is '借贷业务大类';
comment on column MBT_410_HIS_BAK.C_BUSI_DTL_LINES is '借贷业务种类细分';
comment on column MBT_410_HIS_BAK.C_OPEN_DATE is '开户日期';
comment on column MBT_410_HIS_BAK.C_CY is '币种';
comment on column MBT_410_HIS_BAK.C_ACCT_CRED_LINE_AMT is '信用额度';
comment on column MBT_410_HIS_BAK.C_LOAN_AMT is '借款金额';
comment on column MBT_410_HIS_BAK.C_FLAG is '分次放款标志';
comment on column MBT_410_HIS_BAK.C_DUE_DATE is '到期日期';
comment on column MBT_410_HIS_BAK.C_REPAY_MODE is '还款方式';
comment on column MBT_410_HIS_BAK.C_REPAY_FREQCY is '还款频率';
comment on column MBT_410_HIS_BAK.C_APPLY_BUSI_DIST is '业务申请地行政区划代码';
comment on column MBT_410_HIS_BAK.C_GUAR_MODE is '担保方式';
comment on column MBT_410_HIS_BAK.C_OTH_REPY_GUAR_WAY is '其他还款保证方式';
comment on column MBT_410_HIS_BAK.C_LOAN_TIME_LIM_CAT is '借款期限分类';
comment on column MBT_410_HIS_BAK.C_LOA_FRM is '贷款发放形式';
comment on column MBT_410_HIS_BAK.C_ACT_INVEST is '贷款实际投向';
comment on column MBT_410_HIS_BAK.C_FUND_SOU is '业务经营类型';
comment on column MBT_410_HIS_BAK.C_ASSET_TRAND_FLAG is '资产转让标志';
comment on column MBT_410_HIS_BAK.F_MCC is '授信协议标识码';
comment on column MBT_410_HIS_BAK.G_INIT_CRED_NAME is '初始债权人名称';
comment on column MBT_410_HIS_BAK.G_INIT_CED_ORG_CODE is '初始债权人机构代码';
comment on column MBT_410_HIS_BAK.G_ORIG_DBT_CATE is '原债务种类';
comment on column MBT_410_HIS_BAK.G_INIT_RPY_STS is '债权转移时的还款状态';
comment on column MBT_410_HIS_BAK.H_ACCT_STATUS is '账户状态';
comment on column MBT_410_HIS_BAK.H_ACCT_BAL is '余额';
comment on column MBT_410_HIS_BAK.H_BAL_CHG_DATE is '余额变化日期';
comment on column MBT_410_HIS_BAK.H_FIVE_CATE is '五级分类';
comment on column MBT_410_HIS_BAK.H_FIVE_CATE_ADJ_DATE is '五级分类认定日期';
comment on column MBT_410_HIS_BAK.H_PYMT_PRD is '剩余还款月数';
comment on column MBT_410_HIS_BAK.H_TOT_OVERD is '当前逾期总额';
comment on column MBT_410_HIS_BAK.H_OVERD_PRINC is '当前逾期本金';
comment on column MBT_410_HIS_BAK.H_OVERD_DY is '当前逾期天数';
comment on column MBT_410_HIS_BAK.H_LAT_RPY_DATE is '最近一次实际还款日期';
comment on column MBT_410_HIS_BAK.H_LAT_RPY_AMT is '最近一次实际还款金额';
comment on column MBT_410_HIS_BAK.H_LAT_RPY_PRINC_AMT is '最近一次实际归还本金';
comment on column MBT_410_HIS_BAK.H_RPMT_TYPE is '还款形式';
comment on column MBT_410_HIS_BAK.H_LAT_AGRR_RPY_DATE is '最近一次约定还款日';
comment on column MBT_410_HIS_BAK.H_LAT_AGRR_RPY_AMT is '最近一次约定还款金额';
comment on column MBT_410_HIS_BAK.H_NXT_AGRR_RPY_DATE is '下一次约定还款日期';
comment on column MBT_410_HIS_BAK.H_CLOSE_DATE is '账户关闭日期';
comment on column MBT_410_HIS_BAK.DATA_DESC is '记录描述';
comment on column MBT_410_HIS_BAK.REMARKS is '备注';
comment on column MBT_410_HIS_BAK.CHECK_FLAG is '校验标识';
comment on column MBT_410_HIS_BAK.CHECK_DESC is '校验结果';
comment on column MBT_410_HIS_BAK.CHECK_ERR_TYPE is '校验失败类型';
comment on column MBT_410_HIS_BAK.NEXT_ACTION is '下一动作';
comment on column MBT_410_HIS_BAK.DATA_STATUS is '数据状态';
comment on column MBT_410_HIS_BAK.DATA_FLAG is '数据是否已删除';
comment on column MBT_410_HIS_BAK.DATA_SOURCE is '数据来源';
comment on column MBT_410_HIS_BAK.DATA_VERSION is '数据版本号';
comment on column MBT_410_HIS_BAK.DATA_REJ_DESC is '数据审核拒绝描述';
comment on column MBT_410_HIS_BAK.DATA_DEL_DESC is '数据删除描述';
comment on column MBT_410_HIS_BAK.DATA_CRT_USER is '数据创建/导入用户';
comment on column MBT_410_HIS_BAK.DATA_CRT_DATE is '数据创建/导入日期';
comment on column MBT_410_HIS_BAK.DATA_CRT_TIME is '数据创建/导入时间';
comment on column MBT_410_HIS_BAK.DATA_CHG_USER is '数据修改/删除用户';
comment on column MBT_410_HIS_BAK.DATA_CHG_DATE is '数据修改/删除日期';
comment on column MBT_410_HIS_BAK.DATA_CHG_TIME is '数据修改/删除时间';
comment on column MBT_410_HIS_BAK.DATA_APV_USER is '数据审核/拒绝用户';
comment on column MBT_410_HIS_BAK.DATA_APV_DATE is '数据审核/拒绝日期';
comment on column MBT_410_HIS_BAK.DATA_APV_TIME is '数据审核/拒绝时间';
comment on column MBT_410_HIS_BAK.RSV1 is '扩展字段1';
comment on column MBT_410_HIS_BAK.RSV2 is '扩展字段2';
comment on column MBT_410_HIS_BAK.RSV3 is '扩展字段3';
comment on column MBT_410_HIS_BAK.RSV4 is '扩展字段4';
comment on column MBT_410_HIS_BAK.RSV5 is '扩展字段5';
comment on column MBT_410_HIS_BAK.ODS_DATA_ID is 'ODS数据ID';
comment on column MBT_410_HIS_BAK.HIS_DATE is '信息同步日期';
comment on column MBT_410_HIS_BAK.B_CUST_NO is '客户号';
comment on column MBT_410_HIS_BAK.B_INFO_UP_DATE is '信息更新日期';
comment on column MBT_410_HIS_BAK.B_MONTH is '月结日';
comment on column MBT_410_HIS_BAK.IS_RPT is '是否上报';
comment on column MBT_410_HIS_BAK.FB_STATUS is '反馈状态';
comment on column MBT_410_HIS_BAK.RPT_FILE_NAME is '上报文件名';


create table MBT_410_D_HIS_BAK
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
comment on column MBT_410_D_HIS_BAK.DATA_ID is '主键';
comment on column MBT_410_D_HIS_BAK.PDATA_ID is '外键';
comment on column MBT_410_D_HIS_BAK.D_ARLP_ID_TYPE is '身份类别';
comment on column MBT_410_D_HIS_BAK.D_ARLP_NAME is '责任人名称';
comment on column MBT_410_D_HIS_BAK.D_ARLP_CERT_TYPE is '责任人身份标识类型';
comment on column MBT_410_D_HIS_BAK.D_ARLP_CERT_NUM is '责任人身份标识号码';
comment on column MBT_410_D_HIS_BAK.D_ARLP_TYPE is '还款责任人类型';
comment on column MBT_410_D_HIS_BAK.D_ARLP_AMT is '还款责任金额';
comment on column MBT_410_D_HIS_BAK.D_WARTY_SIGN is '联保标志';
comment on column MBT_410_D_HIS_BAK.D_MAX_GUAR_MCC is '保证合同编号';
comment on column MBT_410_D_HIS_BAK.ODS_DATA_ID is 'ODS数据ID';
comment on column MBT_410_D_HIS_BAK.HIS_DATE is '信息同步日期';
comment on column MBT_410_D_HIS_BAK.DATA_DATE is '数据日期';
comment on column MBT_410_D_HIS_BAK.ACTU_COTRL_INFO_UP_DATE is '信息更新日期';
comment on column MBT_410_D_HIS_BAK.CORP_ID is '法人机构号';
comment on column MBT_410_D_HIS_BAK.ORG_ID is '分行机构号';
comment on column MBT_410_D_HIS_BAK.GROUP_ID is '部门编号';
comment on column MBT_410_D_HIS_BAK.INQ_ORG_ID is '查询机构号';
comment on column MBT_410_D_HIS_BAK.INQ_GROUP_ID is '查询组号';
comment on column MBT_410_D_HIS_BAK.DATA_DESC is '记录描述';
comment on column MBT_410_D_HIS_BAK.REMARKS is '备注';
comment on column MBT_410_D_HIS_BAK.CHECK_FLAG is '校验标识';
comment on column MBT_410_D_HIS_BAK.CHECK_DESC is '校验结果';
comment on column MBT_410_D_HIS_BAK.CHECK_ERR_TYPE is '校验失败类型';
comment on column MBT_410_D_HIS_BAK.NEXT_ACTION is '下一动作';
comment on column MBT_410_D_HIS_BAK.DATA_FLAG is '数据是否已删除';
comment on column MBT_410_D_HIS_BAK.DATA_SOURE is '数据来源';
comment on column MBT_410_D_HIS_BAK.DATA_VERSION is '数据版本号';
comment on column MBT_410_D_HIS_BAK.DATA_REJ_DESC is '数据审核拒绝描述';
comment on column MBT_410_D_HIS_BAK.DATA_DEL_DESC is '数据删除描述';
comment on column MBT_410_D_HIS_BAK.DATA_CRT_USER is '数据创建/导入用户';
comment on column MBT_410_D_HIS_BAK.DATA_CRT_DATE is '数据创建/导入日期';
comment on column MBT_410_D_HIS_BAK.DATA_CRT_TIME is '数据创建/导入时间';
comment on column MBT_410_D_HIS_BAK.DATA_CHG_USER is '数据修改/删除用户';
comment on column MBT_410_D_HIS_BAK.DATA_CHG_DATE is '数据修改/删除日期';
comment on column MBT_410_D_HIS_BAK.DATA_CHG_TIME is '数据修改/删除时间';
comment on column MBT_410_D_HIS_BAK.DATA_APV_USER is '数据审核/拒绝用户';
comment on column MBT_410_D_HIS_BAK.DATA_APV_DATE is '数据审核/拒绝日期';
comment on column MBT_410_D_HIS_BAK.DATA_APV_TIME is '数据审核/拒绝时间';
comment on column MBT_410_D_HIS_BAK.RSV1 is '扩展字段1';
comment on column MBT_410_D_HIS_BAK.RSV2 is '扩展字段2';
comment on column MBT_410_D_HIS_BAK.RSV3 is '扩展字段3';
comment on column MBT_410_D_HIS_BAK.RSV4 is '扩展字段4';
comment on column MBT_410_D_HIS_BAK.RSV5 is '扩展字段5';
comment on column MBT_410_D_HIS_BAK.B_ACCT_CODE is '账户标识码';


create table MBT_410_E_HIS_BAK
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
comment on column MBT_410_E_HIS_BAK.DATA_ID is '主键';
comment on column MBT_410_E_HIS_BAK.PDATA_ID is '外键';
comment on column MBT_410_E_HIS_BAK.E_CCC is '抵（质）押合同标识码';
comment on column MBT_410_E_HIS_BAK.ODS_DATA_ID is 'ODS数据ID';
comment on column MBT_410_E_HIS_BAK.HIS_DATE is '信息同步日期';
comment on column MBT_410_E_HIS_BAK.DATA_DATE is '数据日期';
comment on column MBT_410_E_HIS_BAK.ACTU_COTRL_INFO_UP_DATE is '信息更新日期';
comment on column MBT_410_E_HIS_BAK.CORP_ID is '法人机构号';
comment on column MBT_410_E_HIS_BAK.ORG_ID is '分行机构号';
comment on column MBT_410_E_HIS_BAK.GROUP_ID is '部门编号';
comment on column MBT_410_E_HIS_BAK.INQ_ORG_ID is '查询机构号';
comment on column MBT_410_E_HIS_BAK.INQ_GROUP_ID is '查询组号';
comment on column MBT_410_E_HIS_BAK.DATA_DESC is '记录描述';
comment on column MBT_410_E_HIS_BAK.REMARKS is '备注';
comment on column MBT_410_E_HIS_BAK.CHECK_FLAG is '校验标识';
comment on column MBT_410_E_HIS_BAK.CHECK_DESC is '校验结果';
comment on column MBT_410_E_HIS_BAK.CHECK_ERR_TYPE is '校验失败类型';
comment on column MBT_410_E_HIS_BAK.NEXT_ACTION is '下一动作';
comment on column MBT_410_E_HIS_BAK.DATA_FLAG is '数据是否已删除';
comment on column MBT_410_E_HIS_BAK.DATA_SOURE is '数据来源';
comment on column MBT_410_E_HIS_BAK.DATA_VERSION is '数据版本号';
comment on column MBT_410_E_HIS_BAK.DATA_REJ_DESC is '数据审核拒绝描述';
comment on column MBT_410_E_HIS_BAK.DATA_DEL_DESC is '数据删除描述';
comment on column MBT_410_E_HIS_BAK.DATA_CRT_USER is '数据创建/导入用户';
comment on column MBT_410_E_HIS_BAK.DATA_CRT_DATE is '数据创建/导入日期';
comment on column MBT_410_E_HIS_BAK.DATA_CRT_TIME is '数据创建/导入时间';
comment on column MBT_410_E_HIS_BAK.DATA_CHG_USER is '数据修改/删除用户';
comment on column MBT_410_E_HIS_BAK.DATA_CHG_DATE is '数据修改/删除日期';
comment on column MBT_410_E_HIS_BAK.DATA_CHG_TIME is '数据修改/删除时间';
comment on column MBT_410_E_HIS_BAK.DATA_APV_USER is '数据审核/拒绝用户';
comment on column MBT_410_E_HIS_BAK.DATA_APV_DATE is '数据审核/拒绝日期';
comment on column MBT_410_E_HIS_BAK.DATA_APV_TIME is '数据审核/拒绝时间';
comment on column MBT_410_E_HIS_BAK.RSV1 is '扩展字段1';
comment on column MBT_410_E_HIS_BAK.RSV2 is '扩展字段2';
comment on column MBT_410_E_HIS_BAK.RSV3 is '扩展字段3';
comment on column MBT_410_E_HIS_BAK.RSV4 is '扩展字段4';
comment on column MBT_410_E_HIS_BAK.RSV5 is '扩展字段5';
comment on column MBT_410_E_HIS_BAK.B_ACCT_CODE is '账户标识码';


create table MBT_410_I_HIS_BAK
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
comment on column MBT_410_I_HIS_BAK.DATA_ID is '主键';
comment on column MBT_410_I_HIS_BAK.PDATA_ID is '外键';
comment on column MBT_410_I_HIS_BAK.REF_NO is '交易流水';
comment on column MBT_410_I_HIS_BAK.I_CHAN_TRAN_TYPE is '交易类型';
comment on column MBT_410_I_HIS_BAK.I_TRAN_DATE is '交易日期';
comment on column MBT_410_I_HIS_BAK.I_TRAN_AMT is '交易金额';
comment on column MBT_410_I_HIS_BAK.I_DUE_TRAN_MON is '到期日期变更月数';
comment on column MBT_410_I_HIS_BAK.I_DET_INFO is '交易明细信息';
comment on column MBT_410_I_HIS_BAK.ODS_DATA_ID is 'ODS数据ID';
comment on column MBT_410_I_HIS_BAK.HIS_DATE is '信息同步日期';
comment on column MBT_410_I_HIS_BAK.DATA_DATE is '数据日期';
comment on column MBT_410_I_HIS_BAK.ACTU_COTRL_INFO_UP_DATE is '信息更新日期';
comment on column MBT_410_I_HIS_BAK.CORP_ID is '法人机构号';
comment on column MBT_410_I_HIS_BAK.ORG_ID is '分行机构号';
comment on column MBT_410_I_HIS_BAK.GROUP_ID is '部门编号';
comment on column MBT_410_I_HIS_BAK.INQ_ORG_ID is '查询机构号';
comment on column MBT_410_I_HIS_BAK.INQ_GROUP_ID is '查询组号';
comment on column MBT_410_I_HIS_BAK.DATA_DESC is '记录描述';
comment on column MBT_410_I_HIS_BAK.REMARKS is '备注';
comment on column MBT_410_I_HIS_BAK.CHECK_FLAG is '校验标识';
comment on column MBT_410_I_HIS_BAK.CHECK_DESC is '校验结果';
comment on column MBT_410_I_HIS_BAK.CHECK_ERR_TYPE is '校验失败类型';
comment on column MBT_410_I_HIS_BAK.NEXT_ACTION is '下一动作';
comment on column MBT_410_I_HIS_BAK.DATA_FLAG is '数据是否已删除';
comment on column MBT_410_I_HIS_BAK.DATA_SOURE is '数据来源';
comment on column MBT_410_I_HIS_BAK.DATA_VERSION is '数据版本号';
comment on column MBT_410_I_HIS_BAK.DATA_REJ_DESC is '数据审核拒绝描述';
comment on column MBT_410_I_HIS_BAK.DATA_DEL_DESC is '数据删除描述';
comment on column MBT_410_I_HIS_BAK.DATA_CRT_USER is '数据创建/导入用户';
comment on column MBT_410_I_HIS_BAK.DATA_CRT_DATE is '数据创建/导入日期';
comment on column MBT_410_I_HIS_BAK.DATA_CRT_TIME is '数据创建/导入时间';
comment on column MBT_410_I_HIS_BAK.DATA_CHG_USER is '数据修改/删除用户';
comment on column MBT_410_I_HIS_BAK.DATA_CHG_DATE is '数据修改/删除日期';
comment on column MBT_410_I_HIS_BAK.DATA_CHG_TIME is '数据修改/删除时间';
comment on column MBT_410_I_HIS_BAK.DATA_APV_USER is '数据审核/拒绝用户';
comment on column MBT_410_I_HIS_BAK.DATA_APV_DATE is '数据审核/拒绝日期';
comment on column MBT_410_I_HIS_BAK.DATA_APV_TIME is '数据审核/拒绝时间';
comment on column MBT_410_I_HIS_BAK.RSV1 is '扩展字段1';
comment on column MBT_410_I_HIS_BAK.RSV2 is '扩展字段2';
comment on column MBT_410_I_HIS_BAK.RSV3 is '扩展字段3';
comment on column MBT_410_I_HIS_BAK.RSV4 is '扩展字段4';
comment on column MBT_410_I_HIS_BAK.RSV5 is '扩展字段5';
comment on column MBT_410_I_HIS_BAK.B_ACCT_CODE is '账户标识码';


create table MBT_420_HIS_BAK
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
comment on column MBT_420_HIS_BAK.DATA_ID is '主键';
comment on column MBT_420_HIS_BAK.DATA_DATE is '数据日期';
comment on column MBT_420_HIS_BAK.CORP_ID is '法人机构号';
comment on column MBT_420_HIS_BAK.ORG_ID is '分行机构号';
comment on column MBT_420_HIS_BAK.GROUP_ID is '部门编号';
comment on column MBT_420_HIS_BAK.INQ_ORG_ID is '查询机构号';
comment on column MBT_420_HIS_BAK.INQ_GROUP_ID is '查询组号';
comment on column MBT_420_HIS_BAK.B_INF_REC_TYPE is '信息记录类型';
comment on column MBT_420_HIS_BAK.B_CONTRACT_CODE is '授信协议标识码';
comment on column MBT_420_HIS_BAK.B_RPT_DATE is '信息报告日期';
comment on column MBT_420_HIS_BAK.B_RPT_DATE_CODE is '报告时点说明代码';
comment on column MBT_420_HIS_BAK.B_NAME is '受信人名称';
comment on column MBT_420_HIS_BAK.B_ID_TYPE is '受信人身份标识类型';
comment on column MBT_420_HIS_BAK.B_ID_NUM is '受信人身份标识证件号码';
comment on column MBT_420_HIS_BAK.B_MNGMT_ORG_CODE is '业务管理机构代码';
comment on column MBT_420_HIS_BAK.B_CONTRACT_NO is '授信协议编号';
comment on column MBT_420_HIS_BAK.D_CREDIT_LIM_TYPE is '授信额度类型';
comment on column MBT_420_HIS_BAK.D_LIM_LOOP_FLG is '额度循环标志';
comment on column MBT_420_HIS_BAK.D_CREDIT_LIM is '授信额度';
comment on column MBT_420_HIS_BAK.D_CY is '币种';
comment on column MBT_420_HIS_BAK.D_CON_EFF_DATE is '额度生效日期';
comment on column MBT_420_HIS_BAK.D_CON_EXP_DATE is '额度到期日期';
comment on column MBT_420_HIS_BAK.D_CON_STATUS is '额度状态';
comment on column MBT_420_HIS_BAK.D_CREDIT_REST is '授信限额';
comment on column MBT_420_HIS_BAK.D_CREDIT_REST_CODE is '授信限额编号';
comment on column MBT_420_HIS_BAK.F_DATA_DESC is '记录描述';
comment on column MBT_420_HIS_BAK.REMARKS is '备注';
comment on column MBT_420_HIS_BAK.CHECK_FLAG is '校验标识';
comment on column MBT_420_HIS_BAK.CHECK_DESC is '校验结果';
comment on column MBT_420_HIS_BAK.CHECK_ERR_TYPE is '校验失败类型';
comment on column MBT_420_HIS_BAK.NEXT_ACTION is '下一动作';
comment on column MBT_420_HIS_BAK.DATA_STATUS is '数据状态';
comment on column MBT_420_HIS_BAK.DATA_FLAG is '数据是否已删除';
comment on column MBT_420_HIS_BAK.DATA_SOURCE is '数据来源';
comment on column MBT_420_HIS_BAK.DATA_VERSION is '数据版本号';
comment on column MBT_420_HIS_BAK.DATA_REJ_DESC is '数据审核拒绝描述';
comment on column MBT_420_HIS_BAK.DATA_DEL_DESC is '数据删除描述';
comment on column MBT_420_HIS_BAK.DATA_CRT_USER is '数据创建/导入用户';
comment on column MBT_420_HIS_BAK.DATA_CRT_DATE is '数据创建/导入日期';
comment on column MBT_420_HIS_BAK.DATA_CRT_TIME is '数据创建/导入时间';
comment on column MBT_420_HIS_BAK.DATA_CHG_USER is '数据修改/删除用户';
comment on column MBT_420_HIS_BAK.DATA_CHG_DATE is '数据修改/删除日期';
comment on column MBT_420_HIS_BAK.DATA_CHG_TIME is '数据修改/删除时间';
comment on column MBT_420_HIS_BAK.DATA_APV_USER is '数据审核/拒绝用户';
comment on column MBT_420_HIS_BAK.DATA_APV_DATE is '数据审核/拒绝日期';
comment on column MBT_420_HIS_BAK.DATA_APV_TIME is '数据审核/拒绝时间';
comment on column MBT_420_HIS_BAK.RSV1 is '扩展字段1';
comment on column MBT_420_HIS_BAK.RSV2 is '扩展字段2';
comment on column MBT_420_HIS_BAK.RSV3 is '扩展字段3';
comment on column MBT_420_HIS_BAK.RSV4 is '扩展字段4';
comment on column MBT_420_HIS_BAK.RSV5 is '扩展字段5';
comment on column MBT_420_HIS_BAK.ODS_DATA_ID is 'ODS数据ID';
comment on column MBT_420_HIS_BAK.HIS_DATE is '信息同步日期';
comment on column MBT_420_HIS_BAK.HIS_DATE_TIME is '信息同步时间';
comment on column MBT_420_HIS_BAK.B_CUST_NO is '客户号';
comment on column MBT_420_HIS_BAK.B_INFO_UP_DATE is '信息更新日期';
comment on column MBT_420_HIS_BAK.IS_RPT is '是否上报';
comment on column MBT_420_HIS_BAK.FB_STATUS is '反馈状态';
comment on column MBT_420_HIS_BAK.RPT_FILE_NAME is '上报文件名';



create table MBT_420_C_HIS_BAK
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
comment on column MBT_420_C_HIS_BAK.DATA_ID is '主键';
comment on column MBT_420_C_HIS_BAK.PDATA_ID is '外键';
comment on column MBT_420_C_HIS_BAK.C_BRER_TYPE is '共同受信人身份类别';
comment on column MBT_420_C_HIS_BAK.C_CERT_REL_NAME is '共同受信人名称';
comment on column MBT_420_C_HIS_BAK.C_CERT_REL_ID_TYPE is '共同受信人身份标识类型';
comment on column MBT_420_C_HIS_BAK.C_CERT_REL_ID_NUM is '共同受信人身份标识号码';
comment on column MBT_420_C_HIS_BAK.RSV2 is '扩展字段2';
comment on column MBT_420_C_HIS_BAK.ODS_DATA_ID is 'ODS数据ID';
comment on column MBT_420_C_HIS_BAK.HIS_DATE is '信息同步日期';
comment on column MBT_420_C_HIS_BAK.HIS_DATE_TIME is '信息同步时间';
comment on column MBT_420_C_HIS_BAK.B_CONTRACT_CODE is '授信协议标识码';


create table MBT_440_HIS_BAK
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
comment on column MBT_440_HIS_BAK.DATA_ID is '主键';
comment on column MBT_440_HIS_BAK.DATA_DATE is '数据日期';
comment on column MBT_440_HIS_BAK.CORP_ID is '法人机构号';
comment on column MBT_440_HIS_BAK.ORG_ID is '分行机构号';
comment on column MBT_440_HIS_BAK.GROUP_ID is '部门编号';
comment on column MBT_440_HIS_BAK.INQ_ORG_ID is '查询机构号';
comment on column MBT_440_HIS_BAK.INQ_GROUP_ID is '查询组号';
comment on column MBT_440_HIS_BAK.B_ACCT_TYPE is '账户类型';
comment on column MBT_440_HIS_BAK.B_ACCT_CODE is '账户标识码';
comment on column MBT_440_HIS_BAK.B_RPT_DATE is '信息报告日期';
comment on column MBT_440_HIS_BAK.B_RPT_DATE_CODE is '报告时点说明代码';
comment on column MBT_440_HIS_BAK.B_NAME is '债务人名称';
comment on column MBT_440_HIS_BAK.B_ID_TYPE is '债务人身份标识类型';
comment on column MBT_440_HIS_BAK.B_INF_REC_TYPE is '信息记录类型';
comment on column MBT_440_HIS_BAK.B_ID_NUM is '债务人身份标识号码';
comment on column MBT_440_HIS_BAK.B_MNGMT_ORG_CODE is '业务管理机构代码';
comment on column MBT_440_HIS_BAK.B_CUST_NO is '客户号';
comment on column MBT_440_HIS_BAK.C_BUSI_LINES is '担保业务大类';
comment on column MBT_440_HIS_BAK.C_BUSI_DTIL_LINES is '担保业务种类细分';
comment on column MBT_440_HIS_BAK.C_OPEN_DATE is '开户日期';
comment on column MBT_440_HIS_BAK.C_GUAR_AMT is '担保金额';
comment on column MBT_440_HIS_BAK.C_CY is '币种';
comment on column MBT_440_HIS_BAK.C_DUE_DATE is '到期日期';
comment on column MBT_440_HIS_BAK.C_GUAR_MODE is '反担保方式';
comment on column MBT_440_HIS_BAK.C_OTH_REPY_GUAR_WAY is '其他还款保证方式';
comment on column MBT_440_HIS_BAK.C_SEC_DEP is '保证金百分比';
comment on column MBT_440_HIS_BAK.C_CTRCT_TXT_CODE is '担保合同文本编号';
comment on column MBT_440_HIS_BAK.F_MCC is '授信协议标识码';
comment on column MBT_440_HIS_BAK.G_ACCT_STATUS is '账户状态';
comment on column MBT_440_HIS_BAK.G_LOAN_AMT is '在保余额';
comment on column MBT_440_HIS_BAK.G_REPAY_PRD is '余额变化日期';
comment on column MBT_440_HIS_BAK.G_FIVE_CATE is '五级分类';
comment on column MBT_440_HIS_BAK.G_FIVE_CATE_ADJ_DATE is '五级分类认定日期';
comment on column MBT_440_HIS_BAK.G_RI_EX is '风险敞口';
comment on column MBT_440_HIS_BAK.G_COMP_ADV_FLAG is '代偿（垫款）标识';
comment on column MBT_440_HIS_BAK.G_CLOSE_DATE is '账户关闭日期';
comment on column MBT_440_HIS_BAK.REMARKS is '备注';
comment on column MBT_440_HIS_BAK.CHECK_FLAG is '校验标识';
comment on column MBT_440_HIS_BAK.CHECK_DESC is '校验结果';
comment on column MBT_440_HIS_BAK.CHECK_ERR_TYPE is '校验失败类型';
comment on column MBT_440_HIS_BAK.NEXT_ACTION is '下一动作';
comment on column MBT_440_HIS_BAK.DATA_STATUS is '数据状态';
comment on column MBT_440_HIS_BAK.DATA_FLAG is '数据是否已删除';
comment on column MBT_440_HIS_BAK.DATA_SOURCE is '数据来源';
comment on column MBT_440_HIS_BAK.DATA_VERSION is '数据版本号';
comment on column MBT_440_HIS_BAK.DATA_REJ_DESC is '数据审核拒绝描述';
comment on column MBT_440_HIS_BAK.DATA_DEL_DESC is '数据删除描述';
comment on column MBT_440_HIS_BAK.DATA_CRT_USER is '数据创建/导入用户';
comment on column MBT_440_HIS_BAK.DATA_CRT_DATE is '数据创建/导入日期';
comment on column MBT_440_HIS_BAK.DATA_CRT_TIME is '数据创建/导入时间';
comment on column MBT_440_HIS_BAK.DATA_CHG_USER is '数据修改/删除用户';
comment on column MBT_440_HIS_BAK.DATA_CHG_DATE is '数据修改/删除日期';
comment on column MBT_440_HIS_BAK.DATA_CHG_TIME is '数据修改/删除时间';
comment on column MBT_440_HIS_BAK.DATA_APV_USER is '数据审核/拒绝用户';
comment on column MBT_440_HIS_BAK.DATA_APV_DATE is '数据审核/拒绝日期';
comment on column MBT_440_HIS_BAK.DATA_APV_TIME is '数据审核/拒绝时间';
comment on column MBT_440_HIS_BAK.DATA_DESC is '记录描述';
comment on column MBT_440_HIS_BAK.RSV1 is '扩展字段1';
comment on column MBT_440_HIS_BAK.RSV2 is '扩展字段2';
comment on column MBT_440_HIS_BAK.RSV3 is '扩展字段3';
comment on column MBT_440_HIS_BAK.RSV4 is '扩展字段4';
comment on column MBT_440_HIS_BAK.RSV5 is '扩展字段5';
comment on column MBT_440_HIS_BAK.ODS_DATA_ID is 'ODS数据ID';
comment on column MBT_440_HIS_BAK.HIS_DATE is '信息同步日期';
comment on column MBT_440_HIS_BAK.INF_REC_TYPE is '信息记录类型';
comment on column MBT_440_HIS_BAK.B_INFO_UP_DATE is '信息更新日期';
comment on column MBT_440_HIS_BAK.IS_RPT is '是否上报';
comment on column MBT_440_HIS_BAK.FB_STATUS is '反馈状态';
comment on column MBT_440_HIS_BAK.RPT_FILE_NAME is '上报文件名';



create table MBT_440_D_HIS_BAK
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
comment on column MBT_440_D_HIS_BAK.DATA_ID is '主键';
comment on column MBT_440_D_HIS_BAK.PDATA_ID is '外键';
comment on column MBT_440_D_HIS_BAK.INFO_ID_TYPE is '身份类别';
comment on column MBT_440_D_HIS_BAK.ARLP_NAME is '责任人名称';
comment on column MBT_440_D_HIS_BAK.ARLP_CERT_TYPE is '责任人身份标识类型';
comment on column MBT_440_D_HIS_BAK.ARLP_CERT_NUM is '责任人身份标识号码';
comment on column MBT_440_D_HIS_BAK.ARLP_AMT is '还款责任金额';
comment on column MBT_440_D_HIS_BAK.ARLP_TYPE is '还款责任人类型';
comment on column MBT_440_D_HIS_BAK.WARTY_SIGN is '联保标志';
comment on column MBT_440_D_HIS_BAK.MAX_GUAR_MCC is '保证合同编号';
comment on column MBT_440_D_HIS_BAK.ODS_DATA_ID is 'ODS数据ID';
comment on column MBT_440_D_HIS_BAK.HIS_DATE is '信息同步日期';
comment on column MBT_440_D_HIS_BAK.DATA_DATE is '数据日期';
comment on column MBT_440_D_HIS_BAK.ACTU_COTRL_INFO_UP_DATE is '信息更新日期';
comment on column MBT_440_D_HIS_BAK.CORP_ID is '法人机构号';
comment on column MBT_440_D_HIS_BAK.ORG_ID is '分行机构号';
comment on column MBT_440_D_HIS_BAK.GROUP_ID is '部门编号';
comment on column MBT_440_D_HIS_BAK.INQ_ORG_ID is '查询机构号';
comment on column MBT_440_D_HIS_BAK.INQ_GROUP_ID is '查询组号';
comment on column MBT_440_D_HIS_BAK.DATA_DESC is '记录描述';
comment on column MBT_440_D_HIS_BAK.REMARKS is '备注';
comment on column MBT_440_D_HIS_BAK.CHECK_FLAG is '校验标识';
comment on column MBT_440_D_HIS_BAK.CHECK_DESC is '校验结果';
comment on column MBT_440_D_HIS_BAK.CHECK_ERR_TYPE is '校验失败类型';
comment on column MBT_440_D_HIS_BAK.NEXT_ACTION is '下一动作';
comment on column MBT_440_D_HIS_BAK.DATA_FLAG is '数据是否已删除';
comment on column MBT_440_D_HIS_BAK.DATA_SOURE is '数据来源';
comment on column MBT_440_D_HIS_BAK.DATA_VERSION is '数据版本号';
comment on column MBT_440_D_HIS_BAK.DATA_REJ_DESC is '数据审核拒绝描述';
comment on column MBT_440_D_HIS_BAK.DATA_DEL_DESC is '数据删除描述';
comment on column MBT_440_D_HIS_BAK.DATA_CRT_USER is '数据创建/导入用户';
comment on column MBT_440_D_HIS_BAK.DATA_CRT_DATE is '数据创建/导入日期';
comment on column MBT_440_D_HIS_BAK.DATA_CRT_TIME is '数据创建/导入时间';
comment on column MBT_440_D_HIS_BAK.DATA_CHG_USER is '数据修改/删除用户';
comment on column MBT_440_D_HIS_BAK.DATA_CHG_DATE is '数据修改/删除日期';
comment on column MBT_440_D_HIS_BAK.DATA_CHG_TIME is '数据修改/删除时间';
comment on column MBT_440_D_HIS_BAK.DATA_APV_USER is '数据审核/拒绝用户';
comment on column MBT_440_D_HIS_BAK.DATA_APV_DATE is '数据审核/拒绝日期';
comment on column MBT_440_D_HIS_BAK.DATA_APV_TIME is '数据审核/拒绝时间';
comment on column MBT_440_D_HIS_BAK.RSV1 is '扩展字段1';
comment on column MBT_440_D_HIS_BAK.RSV2 is '扩展字段2';
comment on column MBT_440_D_HIS_BAK.RSV3 is '扩展字段3';
comment on column MBT_440_D_HIS_BAK.RSV4 is '扩展字段4';
comment on column MBT_440_D_HIS_BAK.RSV5 is '扩展字段5';
comment on column MBT_440_D_HIS_BAK.B_ACCT_CODE is '账户标识码';


create table MBT_440_E_HIS_BAK
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
comment on column MBT_440_E_HIS_BAK.DATA_ID is '主键';
comment on column MBT_440_E_HIS_BAK.PDATA_ID is '外键';
comment on column MBT_440_E_HIS_BAK.CCC is '抵质押合同标识码';
comment on column MBT_440_E_HIS_BAK.ODS_DATA_ID is 'ODS数据ID';
comment on column MBT_440_E_HIS_BAK.HIS_DATE is '信息同步日期';
comment on column MBT_440_E_HIS_BAK.DATA_DATE is '数据日期';
comment on column MBT_440_E_HIS_BAK.ACTU_COTRL_INFO_UP_DATE is '信息更新日期';
comment on column MBT_440_E_HIS_BAK.CORP_ID is '法人机构号';
comment on column MBT_440_E_HIS_BAK.ORG_ID is '分行机构号';
comment on column MBT_440_E_HIS_BAK.GROUP_ID is '部门编号';
comment on column MBT_440_E_HIS_BAK.INQ_ORG_ID is '查询机构号';
comment on column MBT_440_E_HIS_BAK.INQ_GROUP_ID is '查询组号';
comment on column MBT_440_E_HIS_BAK.DATA_DESC is '记录描述';
comment on column MBT_440_E_HIS_BAK.REMARKS is '备注';
comment on column MBT_440_E_HIS_BAK.CHECK_FLAG is '校验标识';
comment on column MBT_440_E_HIS_BAK.CHECK_DESC is '校验结果';
comment on column MBT_440_E_HIS_BAK.CHECK_ERR_TYPE is '校验失败类型';
comment on column MBT_440_E_HIS_BAK.NEXT_ACTION is '下一动作';
comment on column MBT_440_E_HIS_BAK.DATA_FLAG is '数据是否已删除';
comment on column MBT_440_E_HIS_BAK.DATA_SOURE is '数据来源';
comment on column MBT_440_E_HIS_BAK.DATA_VERSION is '数据版本号';
comment on column MBT_440_E_HIS_BAK.DATA_REJ_DESC is '数据审核拒绝描述';
comment on column MBT_440_E_HIS_BAK.DATA_DEL_DESC is '数据删除描述';
comment on column MBT_440_E_HIS_BAK.DATA_CRT_USER is '数据创建/导入用户';
comment on column MBT_440_E_HIS_BAK.DATA_CRT_DATE is '数据创建/导入日期';
comment on column MBT_440_E_HIS_BAK.DATA_CRT_TIME is '数据创建/导入时间';
comment on column MBT_440_E_HIS_BAK.DATA_CHG_USER is '数据修改/删除用户';
comment on column MBT_440_E_HIS_BAK.DATA_CHG_DATE is '数据修改/删除日期';
comment on column MBT_440_E_HIS_BAK.DATA_CHG_TIME is '数据修改/删除时间';
comment on column MBT_440_E_HIS_BAK.DATA_APV_USER is '数据审核/拒绝用户';
comment on column MBT_440_E_HIS_BAK.DATA_APV_DATE is '数据审核/拒绝日期';
comment on column MBT_440_E_HIS_BAK.DATA_APV_TIME is '数据审核/拒绝时间';
comment on column MBT_440_E_HIS_BAK.RSV1 is '扩展字段1';
comment on column MBT_440_E_HIS_BAK.RSV2 is '扩展字段2';
comment on column MBT_440_E_HIS_BAK.RSV3 is '扩展字段3';
comment on column MBT_440_E_HIS_BAK.RSV4 is '扩展字段4';
comment on column MBT_440_E_HIS_BAK.RSV5 is '扩展字段5';
comment on column MBT_440_E_HIS_BAK.B_ACCT_CODE is '账户标识码';


create table MBT_510_HIS_BAK
(
    DATA_ID          CHAR(32) not null primary key,
    DATA_DATE        CHAR(8),
    CORP_ID          VARCHAR2(14),
    ORG_ID           VARCHAR2(14),
    GROUP_ID         VARCHAR2(14),
    INQ_ORG_ID       CHAR(24),
    INQ_GROUP_ID     CHAR(24),
    B_INF_REC_NO     VARCHAR2(64),
    B_INF_REC_TYPE   CHAR(3),
    B_CC_CODE        VARCHAR2(60),
    B_RPT_DATE       CHAR(8),
    B_RPT_DATE_CODE  CHAR(2),
    B_INFO_ID_TYPE   CHAR,
    B_NAME           NVARCHAR2(80),
    B_CERT_TYPE      VARCHAR2(2),
    B_CERT_NUM       VARCHAR2(40),
    B_MNGMT_ORG_CODE CHAR(14),
    B_CUST_NO        VARCHAR2(32),
    C_GUAR_TYPE      CHAR,
    C_CC_AMT         NUMBER(15),
    C_CY             CHAR(3),
    C_CC_VAL_DATE    CHAR(8),
    C_CC_EXP_DATE    CHAR(8),
    C_MAX_GUAR       CHAR,
    C_CC_STATUS      CHAR,
    G_DATA_DESC      NVARCHAR2(256),
    REMARKS          NVARCHAR2(512),
    CHECK_FLAG       CHAR,
    CHECK_DESC       VARCHAR2(512),
    CHECK_ERR_TYPE   CHAR,
    NEXT_ACTION      CHAR(2),
    DATA_STATUS      CHAR(2),
    DATA_FLAG        CHAR,
    DATA_SOURCE      CHAR,
    DATA_VERSION     NUMBER(8),
    DATA_REJ_DESC    NVARCHAR2(128),
    DATA_DEL_DESC    NVARCHAR2(128),
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
    ODS_DATA_ID      CHAR(32),
    HIS_DATE         CHAR(8),
    HIS_DATE_TIME    CHAR(14),
    IS_RPT           VARCHAR2(64),
    CUST_TYPE        CHAR,
    FB_STATUS        CHAR(2),
    RPT_FILE_NAME    VARCHAR2(512),
    C_CC_AMT_LCY     NUMBER(15),
    C_CC_AMT_ORG     NUMBER(15)
);
comment on column MBT_510_HIS_BAK.DATA_ID is '主键';
comment on column MBT_510_HIS_BAK.DATA_DATE is '数据日期';
comment on column MBT_510_HIS_BAK.CORP_ID is '法人机构号';
comment on column MBT_510_HIS_BAK.ORG_ID is '分行机构号';
comment on column MBT_510_HIS_BAK.GROUP_ID is '部门编号';
comment on column MBT_510_HIS_BAK.INQ_ORG_ID is '查询机构号';
comment on column MBT_510_HIS_BAK.INQ_GROUP_ID is '查询组号';
comment on column MBT_510_HIS_BAK.B_INF_REC_NO is '合同编号';
comment on column MBT_510_HIS_BAK.B_INF_REC_TYPE is '信息记录类型';
comment on column MBT_510_HIS_BAK.B_CC_CODE is '抵（质）押合同标识码';
comment on column MBT_510_HIS_BAK.B_RPT_DATE is '信息报告日期';
comment on column MBT_510_HIS_BAK.B_RPT_DATE_CODE is '报告时点说明代码';
comment on column MBT_510_HIS_BAK.B_INFO_ID_TYPE is '债务人身份类别';
comment on column MBT_510_HIS_BAK.B_NAME is '债务人姓名';
comment on column MBT_510_HIS_BAK.B_CERT_TYPE is '债务人身份标识类型';
comment on column MBT_510_HIS_BAK.B_CERT_NUM is '债务人身份标识号码';
comment on column MBT_510_HIS_BAK.B_MNGMT_ORG_CODE is '业务管理机构代码';
comment on column MBT_510_HIS_BAK.B_CUST_NO is '债务人号';
comment on column MBT_510_HIS_BAK.C_GUAR_TYPE is '合同类型';
comment on column MBT_510_HIS_BAK.C_CC_AMT is '担保金额';
comment on column MBT_510_HIS_BAK.C_CY is '币种';
comment on column MBT_510_HIS_BAK.C_CC_VAL_DATE is '抵（质）押合同生效日期';
comment on column MBT_510_HIS_BAK.C_CC_EXP_DATE is '抵（质）押合同到期日期';
comment on column MBT_510_HIS_BAK.C_MAX_GUAR is '最高额担保标志';
comment on column MBT_510_HIS_BAK.C_CC_STATUS is '抵（质）押合同状态';
comment on column MBT_510_HIS_BAK.G_DATA_DESC is '记录描述';
comment on column MBT_510_HIS_BAK.REMARKS is '备注';
comment on column MBT_510_HIS_BAK.CHECK_FLAG is '校验标识';
comment on column MBT_510_HIS_BAK.CHECK_DESC is '校验结果';
comment on column MBT_510_HIS_BAK.CHECK_ERR_TYPE is '校验失败类型';
comment on column MBT_510_HIS_BAK.NEXT_ACTION is '下一动作';
comment on column MBT_510_HIS_BAK.DATA_STATUS is '数据状态';
comment on column MBT_510_HIS_BAK.DATA_FLAG is '数据是否已删除';
comment on column MBT_510_HIS_BAK.DATA_SOURCE is '数据来源';
comment on column MBT_510_HIS_BAK.DATA_VERSION is '数据版本号';
comment on column MBT_510_HIS_BAK.DATA_REJ_DESC is '数据审核拒绝描述';
comment on column MBT_510_HIS_BAK.DATA_DEL_DESC is '数据删除描述';
comment on column MBT_510_HIS_BAK.DATA_CRT_USER is '数据创建/导入用户';
comment on column MBT_510_HIS_BAK.DATA_CRT_DATE is '数据创建/导入日期';
comment on column MBT_510_HIS_BAK.DATA_CRT_TIME is '数据创建/导入时间';
comment on column MBT_510_HIS_BAK.DATA_CHG_USER is '数据修改/删除用户';
comment on column MBT_510_HIS_BAK.DATA_CHG_DATE is '数据修改/删除日期';
comment on column MBT_510_HIS_BAK.DATA_CHG_TIME is '数据修改/删除时间';
comment on column MBT_510_HIS_BAK.DATA_APV_USER is '数据审核/拒绝用户';
comment on column MBT_510_HIS_BAK.DATA_APV_DATE is '数据审核/拒绝日期';
comment on column MBT_510_HIS_BAK.DATA_APV_TIME is '数据审核/拒绝时间';
comment on column MBT_510_HIS_BAK.RSV1 is '扩展字段1';
comment on column MBT_510_HIS_BAK.RSV2 is '扩展字段2';
comment on column MBT_510_HIS_BAK.RSV3 is '扩展字段3';
comment on column MBT_510_HIS_BAK.RSV4 is '扩展字段4';
comment on column MBT_510_HIS_BAK.RSV5 is '扩展字段5';
comment on column MBT_510_HIS_BAK.ODS_DATA_ID is 'ODS数据ID';
comment on column MBT_510_HIS_BAK.HIS_DATE is '信息同步日期';
comment on column MBT_510_HIS_BAK.HIS_DATE_TIME is '信息同步时间';
comment on column MBT_510_HIS_BAK.IS_RPT is '是否上报';
comment on column MBT_510_HIS_BAK.CUST_TYPE is '客户类型';
comment on column MBT_510_HIS_BAK.FB_STATUS is '反馈状态';
comment on column MBT_510_HIS_BAK.RPT_FILE_NAME is '上报文件名';
comment on column MBT_510_HIS_BAK.C_CC_AMT_ORG is '担保金额_原始数据金额';

create table MBT_510_D_HIS_BAK
(
    DATA_ID                 CHAR(32) not null primary key,
    PDATA_ID                CHAR(32),
    D_INFO_ID_TYPE          CHAR,
    D_GUAR_NAME             NVARCHAR2(80),
    D_GUAR_CERT_TYPE        VARCHAR2(2),
    D_GUAR_CERT_NUM         VARCHAR2(40),
    D_GUAR_NO               VARCHAR2(32),
    ODS_DATA_ID             CHAR(32),
    HIS_DATE                CHAR(8),
    HIS_DATE_TIME           CHAR(14),
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
    B_CC_CODE               VARCHAR2(60)
);
comment on column MBT_510_D_HIS_BAK.DATA_ID is '主键';
comment on column MBT_510_D_HIS_BAK.PDATA_ID is '外键';
comment on column MBT_510_D_HIS_BAK.D_INFO_ID_TYPE is '身份类别';
comment on column MBT_510_D_HIS_BAK.D_GUAR_NAME is '其他债务人名称';
comment on column MBT_510_D_HIS_BAK.D_GUAR_CERT_TYPE is '其他债务人身份标识类型';
comment on column MBT_510_D_HIS_BAK.D_GUAR_CERT_NUM is '其他债务人身份标识号码';
comment on column MBT_510_D_HIS_BAK.D_GUAR_NO is '其他债务人编号';
comment on column MBT_510_D_HIS_BAK.ODS_DATA_ID is 'ODS数据ID';
comment on column MBT_510_D_HIS_BAK.HIS_DATE is '信息同步日期';
comment on column MBT_510_D_HIS_BAK.HIS_DATE_TIME is '信息同步时间';
comment on column MBT_510_D_HIS_BAK.DATA_DATE is '数据日期';
comment on column MBT_510_D_HIS_BAK.ACTU_COTRL_INFO_UP_DATE is '信息更新日期';
comment on column MBT_510_D_HIS_BAK.CORP_ID is '法人机构号';
comment on column MBT_510_D_HIS_BAK.ORG_ID is '分行机构号';
comment on column MBT_510_D_HIS_BAK.GROUP_ID is '部门编号';
comment on column MBT_510_D_HIS_BAK.INQ_ORG_ID is '查询机构号';
comment on column MBT_510_D_HIS_BAK.INQ_GROUP_ID is '查询组号';
comment on column MBT_510_D_HIS_BAK.DATA_DESC is '记录描述';
comment on column MBT_510_D_HIS_BAK.REMARKS is '备注';
comment on column MBT_510_D_HIS_BAK.CHECK_FLAG is '校验标识';
comment on column MBT_510_D_HIS_BAK.CHECK_DESC is '校验结果';
comment on column MBT_510_D_HIS_BAK.CHECK_ERR_TYPE is '校验失败类型';
comment on column MBT_510_D_HIS_BAK.NEXT_ACTION is '下一动作';
comment on column MBT_510_D_HIS_BAK.DATA_FLAG is '数据是否已删除';
comment on column MBT_510_D_HIS_BAK.DATA_SOURE is '数据来源';
comment on column MBT_510_D_HIS_BAK.DATA_VERSION is '数据版本号';
comment on column MBT_510_D_HIS_BAK.DATA_REJ_DESC is '数据审核拒绝描述';
comment on column MBT_510_D_HIS_BAK.DATA_DEL_DESC is '数据删除描述';
comment on column MBT_510_D_HIS_BAK.DATA_CRT_USER is '数据创建/导入用户';
comment on column MBT_510_D_HIS_BAK.DATA_CRT_DATE is '数据创建/导入日期';
comment on column MBT_510_D_HIS_BAK.DATA_CRT_TIME is '数据创建/导入时间';
comment on column MBT_510_D_HIS_BAK.DATA_CHG_USER is '数据修改/删除用户';
comment on column MBT_510_D_HIS_BAK.DATA_CHG_DATE is '数据修改/删除日期';
comment on column MBT_510_D_HIS_BAK.DATA_CHG_TIME is '数据修改/删除时间';
comment on column MBT_510_D_HIS_BAK.DATA_APV_USER is '数据审核/拒绝用户';
comment on column MBT_510_D_HIS_BAK.DATA_APV_DATE is '数据审核/拒绝日期';
comment on column MBT_510_D_HIS_BAK.DATA_APV_TIME is '数据审核/拒绝时间';
comment on column MBT_510_D_HIS_BAK.RSV1 is '扩展字段1';
comment on column MBT_510_D_HIS_BAK.RSV2 is '扩展字段2';
comment on column MBT_510_D_HIS_BAK.RSV3 is '扩展字段3';
comment on column MBT_510_D_HIS_BAK.RSV4 is '扩展字段4';
comment on column MBT_510_D_HIS_BAK.RSV5 is '扩展字段5';
comment on column MBT_510_D_HIS_BAK.B_CC_CODE is '抵(质)押合同标识码';

create table MBT_510_E_HIS_BAK
(
    DATA_ID                 CHAR(32) not null primary key,
    PDATA_ID                CHAR(32),
    E_PLE_TYPE              VARCHAR2(2),
    E_MOTGA_PROPT_ID_TYPE   CHAR,
    E_PLE_CERT_ID           VARCHAR2(40),
    E_PLE_DISTR             CHAR(6),
    E_PLE_VALUE             NUMBER(15),
    E_PLE_CY                CHAR(3),
    E_VAL_ORG_TYPE          CHAR,
    E_VAL_DATE              CHAR(8),
    E_PLEDGOR_TYPE          CHAR,
    E_PLEDGOR_NAME          NVARCHAR2(80),
    E_PLEOR_CERT_TYPE       VARCHAR2(10),
    E_PLEOR_CERT_NUM        VARCHAR2(40),
    E_PLE_DESC              NVARCHAR2(200),
    ODS_DATA_ID             CHAR(32),
    HIS_DATE                CHAR(8),
    HIS_DATE_TIME           CHAR(14),
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
    B_CC_CODE               VARCHAR2(60),
    E_PLE_VALUE_ORG         NUMBER(15)
);
comment on column MBT_510_E_HIS_BAK.DATA_ID is '主键';
comment on column MBT_510_E_HIS_BAK.PDATA_ID is '外键';
comment on column MBT_510_E_HIS_BAK.E_PLE_TYPE is '抵押物种类';
comment on column MBT_510_E_HIS_BAK.E_MOTGA_PROPT_ID_TYPE is '抵押物识别号类型';
comment on column MBT_510_E_HIS_BAK.E_PLE_CERT_ID is '抵押物唯一识别号';
comment on column MBT_510_E_HIS_BAK.E_PLE_DISTR is '抵押物位置所在地行政区划';
comment on column MBT_510_E_HIS_BAK.E_PLE_VALUE is '抵押物评估价值';
comment on column MBT_510_E_HIS_BAK.E_PLE_CY is '币种';
comment on column MBT_510_E_HIS_BAK.E_VAL_ORG_TYPE is '评估机构类型';
comment on column MBT_510_E_HIS_BAK.E_VAL_DATE is '抵押物评估日期';
comment on column MBT_510_E_HIS_BAK.E_PLEDGOR_TYPE is '抵押人身份类别';
comment on column MBT_510_E_HIS_BAK.E_PLEDGOR_NAME is '抵押人名称';
comment on column MBT_510_E_HIS_BAK.E_PLEOR_CERT_TYPE is '抵押人身份标识类型';
comment on column MBT_510_E_HIS_BAK.E_PLEOR_CERT_NUM is '抵押人身份标识号码';
comment on column MBT_510_E_HIS_BAK.E_PLE_DESC is '抵押物说明';
comment on column MBT_510_E_HIS_BAK.ODS_DATA_ID is 'ODS数据ID';
comment on column MBT_510_E_HIS_BAK.HIS_DATE is '信息同步日期';
comment on column MBT_510_E_HIS_BAK.HIS_DATE_TIME is '信息同步时间';
comment on column MBT_510_E_HIS_BAK.DATA_DATE is '数据日期';
comment on column MBT_510_E_HIS_BAK.ACTU_COTRL_INFO_UP_DATE is '信息更新日期';
comment on column MBT_510_E_HIS_BAK.CORP_ID is '法人机构号';
comment on column MBT_510_E_HIS_BAK.ORG_ID is '分行机构号';
comment on column MBT_510_E_HIS_BAK.GROUP_ID is '部门编号';
comment on column MBT_510_E_HIS_BAK.INQ_ORG_ID is '查询机构号';
comment on column MBT_510_E_HIS_BAK.INQ_GROUP_ID is '查询组号';
comment on column MBT_510_E_HIS_BAK.DATA_DESC is '记录描述';
comment on column MBT_510_E_HIS_BAK.REMARKS is '备注';
comment on column MBT_510_E_HIS_BAK.CHECK_FLAG is '校验标识';
comment on column MBT_510_E_HIS_BAK.CHECK_DESC is '校验结果';
comment on column MBT_510_E_HIS_BAK.CHECK_ERR_TYPE is '校验失败类型';
comment on column MBT_510_E_HIS_BAK.NEXT_ACTION is '下一动作';
comment on column MBT_510_E_HIS_BAK.DATA_FLAG is '数据是否已删除';
comment on column MBT_510_E_HIS_BAK.DATA_SOURE is '数据来源';
comment on column MBT_510_E_HIS_BAK.DATA_VERSION is '数据版本号';
comment on column MBT_510_E_HIS_BAK.DATA_REJ_DESC is '数据审核拒绝描述';
comment on column MBT_510_E_HIS_BAK.DATA_DEL_DESC is '数据删除描述';
comment on column MBT_510_E_HIS_BAK.DATA_CRT_USER is '数据创建/导入用户';
comment on column MBT_510_E_HIS_BAK.DATA_CRT_DATE is '数据创建/导入日期';
comment on column MBT_510_E_HIS_BAK.DATA_CRT_TIME is '数据创建/导入时间';
comment on column MBT_510_E_HIS_BAK.DATA_CHG_USER is '数据修改/删除用户';
comment on column MBT_510_E_HIS_BAK.DATA_CHG_DATE is '数据修改/删除日期';
comment on column MBT_510_E_HIS_BAK.DATA_CHG_TIME is '数据修改/删除时间';
comment on column MBT_510_E_HIS_BAK.DATA_APV_USER is '数据审核/拒绝用户';
comment on column MBT_510_E_HIS_BAK.DATA_APV_DATE is '数据审核/拒绝日期';
comment on column MBT_510_E_HIS_BAK.DATA_APV_TIME is '数据审核/拒绝时间';
comment on column MBT_510_E_HIS_BAK.RSV1 is '扩展字段1';
comment on column MBT_510_E_HIS_BAK.RSV2 is '扩展字段2';
comment on column MBT_510_E_HIS_BAK.RSV3 is '扩展字段3';
comment on column MBT_510_E_HIS_BAK.RSV4 is '扩展字段4';
comment on column MBT_510_E_HIS_BAK.RSV5 is '扩展字段5';
comment on column MBT_510_E_HIS_BAK.B_CC_CODE is '抵(质)押合同标识码';

create table MBT_510_F_HIS_BAK
(
    DATA_ID                 CHAR(32) not null primary key,
    PDATA_ID                CHAR(32),
    F_IMP_TYPE              VARCHAR2(2),
    F_IMP_VAL               NUMBER(15),
    F_IMP_CY                CHAR(3),
    F_IPPC                  CHAR,
    F_PAWN_NAME             NVARCHAR2(80),
    F_PAWN_CERT_TYPE        VARCHAR2(10),
    F_PAWN_CERT_NUM         VARCHAR2(40),
    ODS_DATA_ID             CHAR(32),
    HIS_DATE                CHAR(8),
    HIS_DATE_TIME           CHAR(14),
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
    B_CC_CODE               VARCHAR2(60),
    F_IMP_VAL_ORG           NUMBER(15)
);
comment on column MBT_510_F_HIS_BAK.DATA_ID is '主键';
comment on column MBT_510_F_HIS_BAK.PDATA_ID is '外键';
comment on column MBT_510_F_HIS_BAK.F_IMP_TYPE is '质物种类';
comment on column MBT_510_F_HIS_BAK.F_IMP_VAL is '质物价值';
comment on column MBT_510_F_HIS_BAK.F_IMP_CY is '币种';
comment on column MBT_510_F_HIS_BAK.F_IPPC is '出质人身份类别';
comment on column MBT_510_F_HIS_BAK.F_PAWN_NAME is '出质人名称';
comment on column MBT_510_F_HIS_BAK.F_PAWN_CERT_TYPE is '出质人身份标识类型';
comment on column MBT_510_F_HIS_BAK.F_PAWN_CERT_NUM is '出质人身份标识号码';
comment on column MBT_510_F_HIS_BAK.ODS_DATA_ID is 'ODS数据ID';
comment on column MBT_510_F_HIS_BAK.HIS_DATE is '信息同步日期';
comment on column MBT_510_F_HIS_BAK.HIS_DATE_TIME is '信息同步时间';
comment on column MBT_510_F_HIS_BAK.DATA_DATE is '数据日期';
comment on column MBT_510_F_HIS_BAK.ACTU_COTRL_INFO_UP_DATE is '信息更新日期';
comment on column MBT_510_F_HIS_BAK.CORP_ID is '法人机构号';
comment on column MBT_510_F_HIS_BAK.ORG_ID is '分行机构号';
comment on column MBT_510_F_HIS_BAK.GROUP_ID is '部门编号';
comment on column MBT_510_F_HIS_BAK.INQ_ORG_ID is '查询机构号';
comment on column MBT_510_F_HIS_BAK.INQ_GROUP_ID is '查询组号';
comment on column MBT_510_F_HIS_BAK.DATA_DESC is '记录描述';
comment on column MBT_510_F_HIS_BAK.REMARKS is '备注';
comment on column MBT_510_F_HIS_BAK.CHECK_FLAG is '校验标识';
comment on column MBT_510_F_HIS_BAK.CHECK_DESC is '校验结果';
comment on column MBT_510_F_HIS_BAK.CHECK_ERR_TYPE is '校验失败类型';
comment on column MBT_510_F_HIS_BAK.NEXT_ACTION is '下一动作';
comment on column MBT_510_F_HIS_BAK.DATA_FLAG is '数据是否已删除';
comment on column MBT_510_F_HIS_BAK.DATA_SOURE is '数据来源';
comment on column MBT_510_F_HIS_BAK.DATA_VERSION is '数据版本号';
comment on column MBT_510_F_HIS_BAK.DATA_REJ_DESC is '数据审核拒绝描述';
comment on column MBT_510_F_HIS_BAK.DATA_DEL_DESC is '数据删除描述';
comment on column MBT_510_F_HIS_BAK.DATA_CRT_USER is '数据创建/导入用户';
comment on column MBT_510_F_HIS_BAK.DATA_CRT_DATE is '数据创建/导入日期';
comment on column MBT_510_F_HIS_BAK.DATA_CRT_TIME is '数据创建/导入时间';
comment on column MBT_510_F_HIS_BAK.DATA_CHG_USER is '数据修改/删除用户';
comment on column MBT_510_F_HIS_BAK.DATA_CHG_DATE is '数据修改/删除日期';
comment on column MBT_510_F_HIS_BAK.DATA_CHG_TIME is '数据修改/删除时间';
comment on column MBT_510_F_HIS_BAK.DATA_APV_USER is '数据审核/拒绝用户';
comment on column MBT_510_F_HIS_BAK.DATA_APV_DATE is '数据审核/拒绝日期';
comment on column MBT_510_F_HIS_BAK.DATA_APV_TIME is '数据审核/拒绝时间';
comment on column MBT_510_F_HIS_BAK.RSV1 is '扩展字段1';
comment on column MBT_510_F_HIS_BAK.RSV2 is '扩展字段2';
comment on column MBT_510_F_HIS_BAK.RSV3 is '扩展字段3';
comment on column MBT_510_F_HIS_BAK.RSV4 is '扩展字段4';
comment on column MBT_510_F_HIS_BAK.RSV5 is '扩展字段5';
comment on column MBT_510_F_HIS_BAK.B_CC_CODE is '抵(质)押合同标识码';

create table MBT_610_HIS_BAK
(
    DATA_ID                        CHAR(32) not null primary key,
    DATA_DATE                      CHAR(8),
    CORP_ID                        VARCHAR2(14),
    ORG_ID                         VARCHAR2(14),
    GROUP_ID                       VARCHAR2(14),
    INQ_ORG_ID                     CHAR(24),
    INQ_GROUP_ID                   CHAR(24),
    B_INF_REC_TYPE                 CHAR(3),
    B_ENT_NAME                     NVARCHAR2(80),
    B_ENT_CERT_TYPE                VARCHAR2(2),
    B_ENT_CERT_NUM                 VARCHAR2(40),
    B_RPT_DATE                     CHAR(8),
    B_SHEET_YEAR                   CHAR(4),
    B_SHEET_TYPE                   VARCHAR2(2),
    B_SHEET_TYPE_DIVIDE            VARCHAR2(2),
    B_AUDIT_FIRM_NAME              NVARCHAR2(80),
    B_AUDITOR_NAME                 NVARCHAR2(30),
    B_AUDIT_TIME                   CHAR(8),
    B_CIMOC                        VARCHAR2(14),
    B_RPT_DATE_CODE                CHAR(2),
    C_CURRENCY_FUNDS               NUMBER(17, 2),
    C_SHORT_TERM_INVESTMENTS       NUMBER(17, 2),
    C_NOTES_RECEIVABLE             NUMBER(17, 2),
    C_DIVIDENDS_RECEIVABLE         NUMBER(17, 2),
    C_INTEREST_RECEIVABLE          NUMBER(17, 2),
    C_ACCOUNTS_RECEIVABLE          NUMBER(17, 2),
    C_OTHER_RECEIVABLES            NUMBER(17, 2),
    C_PREPAYMENTS                  NUMBER(17, 2),
    C_FUTURE_GUARANTEE             NUMBER(17, 2),
    C_ALLOWANCE_RECEIVABLE         NUMBER(17, 2),
    C_EXPORT_DRAWBACK_RECEIVABLE   NUMBER(17, 2),
    C_INVENTORIES                  NUMBER(17, 2),
    C_RAW_MATERIALS                NUMBER(17, 2),
    C_FINISHED_PRODUCTS            NUMBER(17, 2),
    C_DEFERRED_EXPENSES            NUMBER(17, 2),
    C_UNSETTLED_GL_CURRENT_ASSETS  NUMBER(17, 2),
    C_LT_DI_FALLINGDUEINAYEAR      NUMBER(17, 2),
    C_OTHER_CURRENT_ASSETS         NUMBER(17, 2),
    C_TOTAL_CURRENT_ASSETS         NUMBER(17, 2),
    C_LT_INVESTMENT                NUMBER(17, 2),
    C_LT_EQUITYINVESTMENT          NUMBER(17, 2),
    C_LT_SECURITIES_INVESTMENT     NUMBER(17, 2),
    C_INC_PRICE_DIFFERENCE         NUMBER(17, 2),
    C_TOTAL_LT_INVESTMENT          NUMBER(17, 2),
    C_ORIGINAL_COST_FA             NUMBER(17, 2),
    C_FA_ACC_DEPRECIATION          NUMBER(17, 2),
    C_FA_NET_VALUE                 NUMBER(17, 2),
    C_PROVISION_IMPAIRMENT_FA      NUMBER(17, 2),
    C_NET_VALUE_FA                 NUMBER(17, 2),
    C_FA_PENDING_DISPOSAL          NUMBER(17, 2),
    C_CONSTRUCTION_MATERIALS       NUMBER(17, 2),
    C_CONSTRUCTION_IN_PROGRESS     NUMBER(17, 2),
    C_UNSETTLED_GL_ON_FA           NUMBER(17, 2),
    C_TOTAL_FIXED_ASSETS           NUMBER(17, 2),
    C_INTANGIBLE_ASSETS            NUMBER(17, 2),
    C_LAND_USE_RIGHTS              NUMBER(17, 2),
    C_DEFERRED_ASSETS              NUMBER(17, 2),
    C_INCLUDING_FA_REPAIR          NUMBER(17, 2),
    C_IMPROVEMENT_EXPENDITURE_FA   NUMBER(17, 2),
    C_OTHER_LONG_TERM_ASSETS       NUMBER(17, 2),
    C_AMONG_IT_SPE_APPR_RES_MAT    NUMBER(17, 2),
    C_TOTAL_INTANGIBLE_OTHER_ASS   NUMBER(17, 2),
    C_DEFERRED_ASSETS_DEBITS       NUMBER(17, 2),
    C_TOTAL_ASSETS                 NUMBER(17, 2),
    C_SHORT_TERM_BORROWINGS        NUMBER(17, 2),
    C_NOTES_PAYABLE                NUMBER(17, 2),
    C_ACCOUNTS_PAYABLE             NUMBER(17, 2),
    C_RECEIPTS_IN_ADVANCE          NUMBER(17, 2),
    C_WAGES_SALARIES_PAYABLES      NUMBER(17, 2),
    C_EMPLOYEE_BENEFITS            NUMBER(17, 2),
    C_INCOME_PAYABLE               NUMBER(17, 2),
    C_TAXES_PAYABLE                NUMBER(17, 2),
    C_OTHER_PAYABLE_GOVERNMENT     NUMBER(17, 2),
    C_OTHER_PAYABLE                NUMBER(17, 2),
    C_PROVISION_FOR_EXPENSES       NUMBER(17, 2),
    C_PROVISIONS                   NUMBER(17, 2),
    C_LT_LIABILITIES_DUE_ONEYEAR   NUMBER(17, 2),
    C_OTHER_CURRENT_LIABILITIES    NUMBER(17, 2),
    C_TOTAL_CURRENT_LIABILITIES    NUMBER(17, 2),
    C_LT_BORROWINGS                NUMBER(17, 2),
    C_BONDS_PAYABLE                NUMBER(17, 2),
    C_LONG_TERM_PAYABLES           NUMBER(17, 2),
    C_GRANTS_PAYABLE               NUMBER(17, 2),
    C_OTHER_LT_LIABILITIES         NUMBER(17, 2),
    C_SPECIAL_RESERVE_FUND         NUMBER(17, 2),
    C_TOTAL_LT_LIABILITIES         NUMBER(17, 2),
    C_DEFERRED_TAXATION_CREDIT     NUMBER(17, 2),
    C_TOTAL_LIABILITIES            NUMBER(17, 2),
    C_MINORITY_INTEREST            NUMBER(17, 2),
    C_PAID_IN_CAPITAL              NUMBER(17, 2),
    C_NATIONAL_CAPITAL             NUMBER(17, 2),
    C_COLLECTIVE_CAPITAL           NUMBER(17, 2),
    C_LEGAL_PERSONS_CAPITAL        NUMBER(17, 2),
    C_STATE_OWNED_LP_CAPITAL       NUMBER(17, 2),
    C_COLLECTIVE_LP_CAPITAL        NUMBER(17, 2),
    C_PERSONAL_CAPITAL             NUMBER(17, 2),
    C_FOREIGN_BUS_CAPITAL          NUMBER(17, 2),
    C_CAPITALR_RSERVE              NUMBER(17, 2),
    C_SURPLUS_RESERVE              NUMBER(17, 2),
    C_STATUTORY_SURPLUS_RESERVE    NUMBER(17, 2),
    C_PUBLIC_WELFARE_FUND          NUMBER(17, 2),
    C_SUPPLER_CURRENT_CAPITAL      NUMBER(17, 2),
    C_UNAFFIRMED_INVESTMENT_LOSS   NUMBER(17, 2),
    C_UNAPPROPRIATED_PROFIT        NUMBER(17, 2),
    C_DT_FC_FINANCIAL_STA          NUMBER(17, 2),
    C_TOTAL_EQUITY                 NUMBER(17, 2),
    C_TOTAL_EQUITY_LIABILITIES     NUMBER(17, 2),
    D_CURRENCY_FUNDS               NUMBER(17, 2),
    D_FINANCIAL_ASS_HELD_TRADING   NUMBER(17, 2),
    D_NOTES_RECEIVABLE             NUMBER(17, 2),
    D_ACCOUNTS_RECEIVABLE          NUMBER(17, 2),
    D_PREPAYMENTS                  NUMBER(17, 2),
    D_INTEREST_RECEIVABLE          NUMBER(17, 2),
    D_DIVIDENDS_RECEIVABLE         NUMBER(17, 2),
    D_OTHER_RECEIVABLES            NUMBER(17, 2),
    D_INVENTORIES                  NUMBER(17, 2),
    D_CURRENT_PORTION_NCA          NUMBER(17, 2),
    D_OTHER_CURRENT_ASSETS         NUMBER(17, 2),
    D_TOTAL_CURRENT_ASSETS         NUMBER(17, 2),
    D_FINANCIAL_ASS_AVAILABLE_SALE NUMBER(17, 2),
    D_HELD_MATURITY_INVESTMENTS    NUMBER(17, 2),
    D_LONG_TERM_EQUITY_INVESTMENT  NUMBER(17, 2),
    D_LONG_TERM_RECEIVABLES        NUMBER(17, 2),
    D_INVESTMENT_PROPERTIES        NUMBER(17, 2),
    D_FIXED_ASSETS                 NUMBER(17, 2),
    D_NET_VALUE_OF_FIXE_ASSETS     NUMBER(17, 2),
    D_CONSTRUCTION_IN_PROGRESS     NUMBER(17, 2),
    D_CONSTRUCTION_MATERIALS       NUMBER(17, 2),
    D_FIXED_ASS_PENDING_DISPOSAL   NUMBER(17, 2),
    D_NON_CURRENT_BIOLOGICAL_ASS   NUMBER(17, 2),
    D_OIL_AND_GAS_ASSETS           NUMBER(17, 2),
    D_INTANGIBLE_ASSETS            NUMBER(17, 2),
    D_LAND_USE_RIGHTS              NUMBER(17, 2),
    D_DEVELOPMENT_DISBURSEMENTS    NUMBER(17, 2),
    D_GOODWILL                     NUMBER(17, 2),
    D_LONG_TERM_DEFERRED_EXPENSES  NUMBER(17, 2),
    D_DEFERRED_TAX_ASSETS          NUMBER(17, 2),
    D_OTHER_NON_CURRENT_ASSETS     NUMBER(17, 2),
    D_TOTAL_NON_CURRENT_ASSETS     NUMBER(17, 2),
    D_TOTAL_ASSETS                 NUMBER(17, 2),
    D_SHORT_TERM_BORROWINGS        NUMBER(17, 2),
    D_FINANCIAL_LIABILITIES_HFT    NUMBER(17, 2),
    D_NOTES_PAYABLE                NUMBER(17, 2),
    D_ACCOUNTS_PAYABLE             NUMBER(17, 2),
    D_RECEIPTS_IN_ADVANCE          NUMBER(17, 2),
    D_INTEREST_PAYABLE             NUMBER(17, 2),
    D_EMPLOYEE_BENEFITS_PAYABLE    NUMBER(17, 2),
    D_TAXES_PAYABLE                NUMBER(17, 2),
    D_DIVIDENDS_PAYABLE            NUMBER(17, 2),
    D_OTHER_PAYABLE                NUMBER(17, 2),
    D_CURRENT_PORTION_LIABILITIES  NUMBER(17, 2),
    D_OTHER_CURRENT_LIABILITIES    NUMBER(17, 2),
    D_TOTAL_CURRENT_LIABILITIES    NUMBER(17, 2),
    D_LONG_TERM_BORROWINGSORROWING NUMBER(17, 2),
    D_BONDS_PAYABLE                NUMBER(17, 2),
    D_LONG_TERM_PAYABLES           NUMBER(17, 2),
    D_GRANTS_PAYABLE               NUMBER(17, 2),
    D_PROVISIONS                   NUMBER(17, 2),
    D_DEFERRED_TAX_LIABILITIES     NUMBER(17, 2),
    D_OTHER_NON_CURRENT_LIABILITIE NUMBER(17, 2),
    D_TOTAL_NON_CURRENT_LIABILITIE NUMBER(17, 2),
    D_TOTAL_LIABILITIES            NUMBER(17, 2),
    D_PAID_IN_CAPITAL_SHARE_CAPITA NUMBER(17, 2),
    D_CAPITALR_RSERVE              NUMBER(17, 2),
    D_LESS_TREASURY_STOCKS         NUMBER(17, 2),
    D_SURPLUS_RESERVE              NUMBER(17, 2),
    D_UNAPPROPRIATED_PROFIT        NUMBER(17, 2),
    D_TOTAL_EQUITY                 NUMBER(17, 2),
    D_TOTAL_EQUITY_LIABILITIES     NUMBER(17, 2),
    E_DATA_DESC                    NVARCHAR2(256),
    REMARKS                        NVARCHAR2(512),
    CHECK_FLAG                     CHAR,
    CHECK_DESC                     VARCHAR2(512),
    CHECK_ERR_TYPE                 CHAR,
    NEXT_ACTION                    CHAR(2),
    DATA_STATUS                    CHAR(2),
    DATA_FLAG                      CHAR,
    DATA_SOURCE                    CHAR,
    DATA_VERSION                   NUMBER(8),
    DATA_REJ_DESC                  NVARCHAR2(128),
    DATA_DEL_DESC                  NVARCHAR2(128),
    DATA_CRT_USER                  VARCHAR2(20),
    DATA_CRT_DATE                  CHAR(8),
    DATA_CRT_TIME                  CHAR(14),
    DATA_CHG_USER                  VARCHAR2(20),
    DATA_CHG_DATE                  CHAR(8),
    DATA_CHG_TIME                  CHAR(14),
    DATA_APV_USER                  VARCHAR2(20),
    DATA_APV_DATE                  CHAR(8),
    DATA_APV_TIME                  CHAR(14),
    RSV1                           VARCHAR2(180),
    RSV2                           VARCHAR2(180),
    RSV3                           VARCHAR2(180),
    RSV4                           VARCHAR2(180),
    RSV5                           VARCHAR2(180),
    ODS_DATA_ID                    CHAR(32),
    HIS_DATE                       CHAR(8),
    HIS_TIME                       CHAR(14),
    IS_RPT                         CHAR(64),
    FB_STATUS                      CHAR(2),
    RPT_FILE_NAME                  VARCHAR2(512),
    B_CUST_NO                      NVARCHAR2(64)
);
comment on column MBT_610_HIS_BAK.DATA_ID is '主键';
comment on column MBT_610_HIS_BAK.DATA_DATE is '数据日期';
comment on column MBT_610_HIS_BAK.CORP_ID is '法人机构号';
comment on column MBT_610_HIS_BAK.ORG_ID is '分行机构号';
comment on column MBT_610_HIS_BAK.GROUP_ID is '部门编号';
comment on column MBT_610_HIS_BAK.INQ_ORG_ID is '查询机构号';
comment on column MBT_610_HIS_BAK.INQ_GROUP_ID is '查询组号';
comment on column MBT_610_HIS_BAK.B_INF_REC_TYPE is '信息记录类型';
comment on column MBT_610_HIS_BAK.B_ENT_NAME is '企业名称';
comment on column MBT_610_HIS_BAK.B_ENT_CERT_TYPE is '企业身份标识类型';
comment on column MBT_610_HIS_BAK.B_ENT_CERT_NUM is '企业身份标识号码';
comment on column MBT_610_HIS_BAK.B_RPT_DATE is '信息报告日期';
comment on column MBT_610_HIS_BAK.B_SHEET_YEAR is '报表年份';
comment on column MBT_610_HIS_BAK.B_SHEET_TYPE is '报表类型';
comment on column MBT_610_HIS_BAK.B_SHEET_TYPE_DIVIDE is '报表类型细分';
comment on column MBT_610_HIS_BAK.B_AUDIT_FIRM_NAME is '审计事务所名称';
comment on column MBT_610_HIS_BAK.B_AUDITOR_NAME is '审计人员名称';
comment on column MBT_610_HIS_BAK.B_AUDIT_TIME is '审计时间';
comment on column MBT_610_HIS_BAK.B_CIMOC is '客户资料维护机构代码';
comment on column MBT_610_HIS_BAK.B_RPT_DATE_CODE is '报告时点说明代码';
comment on column MBT_610_HIS_BAK.C_CURRENCY_FUNDS is '货币资金';
comment on column MBT_610_HIS_BAK.C_SHORT_TERM_INVESTMENTS is '短期投资';
comment on column MBT_610_HIS_BAK.C_NOTES_RECEIVABLE is '应收票据';
comment on column MBT_610_HIS_BAK.C_DIVIDENDS_RECEIVABLE is '应收股利';
comment on column MBT_610_HIS_BAK.C_INTEREST_RECEIVABLE is '应收利息';
comment on column MBT_610_HIS_BAK.C_ACCOUNTS_RECEIVABLE is '应收账款';
comment on column MBT_610_HIS_BAK.C_OTHER_RECEIVABLES is '其他应收款';
comment on column MBT_610_HIS_BAK.C_PREPAYMENTS is '预付账款';
comment on column MBT_610_HIS_BAK.C_FUTURE_GUARANTEE is '期货保证金';
comment on column MBT_610_HIS_BAK.C_ALLOWANCE_RECEIVABLE is '应收补贴款';
comment on column MBT_610_HIS_BAK.C_EXPORT_DRAWBACK_RECEIVABLE is '应收出口退税';
comment on column MBT_610_HIS_BAK.C_INVENTORIES is '存货';
comment on column MBT_610_HIS_BAK.C_RAW_MATERIALS is '存货原材料';
comment on column MBT_610_HIS_BAK.C_FINISHED_PRODUCTS is '存货产成品';
comment on column MBT_610_HIS_BAK.C_DEFERRED_EXPENSES is '待摊费用';
comment on column MBT_610_HIS_BAK.C_UNSETTLED_GL_CURRENT_ASSETS is '待处理流动资产净损失';
comment on column MBT_610_HIS_BAK.C_LT_DI_FALLINGDUEINAYEAR is '一年内到期的长期债权投资';
comment on column MBT_610_HIS_BAK.C_OTHER_CURRENT_ASSETS is '其他流动资产';
comment on column MBT_610_HIS_BAK.C_TOTAL_CURRENT_ASSETS is '流动资产合计';
comment on column MBT_610_HIS_BAK.C_LT_INVESTMENT is '长期投资';
comment on column MBT_610_HIS_BAK.C_LT_EQUITYINVESTMENT is '长期股权投资';
comment on column MBT_610_HIS_BAK.C_LT_SECURITIES_INVESTMENT is '长期债权投资';
comment on column MBT_610_HIS_BAK.C_INC_PRICE_DIFFERENCE is '合并价差';
comment on column MBT_610_HIS_BAK.C_TOTAL_LT_INVESTMENT is '长期投资合计';
comment on column MBT_610_HIS_BAK.C_ORIGINAL_COST_FA is '固定资产原价';
comment on column MBT_610_HIS_BAK.C_FA_ACC_DEPRECIATION is '累计折旧';
comment on column MBT_610_HIS_BAK.C_FA_NET_VALUE is '固定资产净值';
comment on column MBT_610_HIS_BAK.C_PROVISION_IMPAIRMENT_FA is '固定资产值减值准备';
comment on column MBT_610_HIS_BAK.C_NET_VALUE_FA is '固定资产净额';
comment on column MBT_610_HIS_BAK.C_FA_PENDING_DISPOSAL is '固定资产清理';
comment on column MBT_610_HIS_BAK.C_CONSTRUCTION_MATERIALS is '工程物资';
comment on column MBT_610_HIS_BAK.C_CONSTRUCTION_IN_PROGRESS is '在建工程';
comment on column MBT_610_HIS_BAK.C_UNSETTLED_GL_ON_FA is '待处理固定资产净损失';
comment on column MBT_610_HIS_BAK.C_TOTAL_FIXED_ASSETS is '固定资产合计';
comment on column MBT_610_HIS_BAK.C_INTANGIBLE_ASSETS is '无形资产';
comment on column MBT_610_HIS_BAK.C_LAND_USE_RIGHTS is '（无形资产科目下）土地使用权';
comment on column MBT_610_HIS_BAK.C_DEFERRED_ASSETS is '递延资产';
comment on column MBT_610_HIS_BAK.C_INCLUDING_FA_REPAIR is '（递延资产科目下）固定资产修理';
comment on column MBT_610_HIS_BAK.C_IMPROVEMENT_EXPENDITURE_FA is '（递延资产科目下）固定资产改良支出';
comment on column MBT_610_HIS_BAK.C_OTHER_LONG_TERM_ASSETS is '其他长期资产';
comment on column MBT_610_HIS_BAK.C_AMONG_IT_SPE_APPR_RES_MAT is '（其他长期资产科目下）特准储备物资';
comment on column MBT_610_HIS_BAK.C_TOTAL_INTANGIBLE_OTHER_ASS is '无形及其他资产合计';
comment on column MBT_610_HIS_BAK.C_DEFERRED_ASSETS_DEBITS is '递延税款借项';
comment on column MBT_610_HIS_BAK.C_TOTAL_ASSETS is '资产总计';
comment on column MBT_610_HIS_BAK.C_SHORT_TERM_BORROWINGS is '短期借款';
comment on column MBT_610_HIS_BAK.C_NOTES_PAYABLE is '应付票据';
comment on column MBT_610_HIS_BAK.C_ACCOUNTS_PAYABLE is '应付账款';
comment on column MBT_610_HIS_BAK.C_RECEIPTS_IN_ADVANCE is '预收账款';
comment on column MBT_610_HIS_BAK.C_WAGES_SALARIES_PAYABLES is '应付工资';
comment on column MBT_610_HIS_BAK.C_EMPLOYEE_BENEFITS is '应付福利费';
comment on column MBT_610_HIS_BAK.C_INCOME_PAYABLE is '应付利润';
comment on column MBT_610_HIS_BAK.C_TAXES_PAYABLE is '应交税金';
comment on column MBT_610_HIS_BAK.C_OTHER_PAYABLE_GOVERNMENT is '其他应交款';
comment on column MBT_610_HIS_BAK.C_OTHER_PAYABLE is '其他应付款';
comment on column MBT_610_HIS_BAK.C_PROVISION_FOR_EXPENSES is '预提费用';
comment on column MBT_610_HIS_BAK.C_PROVISIONS is '预计负债';
comment on column MBT_610_HIS_BAK.C_LT_LIABILITIES_DUE_ONEYEAR is '一年内到期的长期负债';
comment on column MBT_610_HIS_BAK.C_OTHER_CURRENT_LIABILITIES is '其他流动负债';
comment on column MBT_610_HIS_BAK.C_TOTAL_CURRENT_LIABILITIES is '流动负债合计';
comment on column MBT_610_HIS_BAK.C_LT_BORROWINGS is '长期借款';
comment on column MBT_610_HIS_BAK.C_BONDS_PAYABLE is '应付债券';
comment on column MBT_610_HIS_BAK.C_LONG_TERM_PAYABLES is '长期应付款';
comment on column MBT_610_HIS_BAK.C_GRANTS_PAYABLE is '专项应付款';
comment on column MBT_610_HIS_BAK.C_OTHER_LT_LIABILITIES is '其他长期负债';
comment on column MBT_610_HIS_BAK.C_SPECIAL_RESERVE_FUND is '（其他长期负债科目下）特准储备基金';
comment on column MBT_610_HIS_BAK.C_TOTAL_LT_LIABILITIES is '长期负债合计';
comment on column MBT_610_HIS_BAK.C_DEFERRED_TAXATION_CREDIT is '递延税款贷项';
comment on column MBT_610_HIS_BAK.C_TOTAL_LIABILITIES is '负债合计';
comment on column MBT_610_HIS_BAK.C_MINORITY_INTEREST is '少数股东权益';
comment on column MBT_610_HIS_BAK.C_PAID_IN_CAPITAL is '实收资本';
comment on column MBT_610_HIS_BAK.C_NATIONAL_CAPITAL is '国家资本';
comment on column MBT_610_HIS_BAK.C_COLLECTIVE_CAPITAL is '集体资本';
comment on column MBT_610_HIS_BAK.C_LEGAL_PERSONS_CAPITAL is '法人资本';
comment on column MBT_610_HIS_BAK.C_STATE_OWNED_LP_CAPITAL is '（法人资本科目下）国有法人资本';
comment on column MBT_610_HIS_BAK.C_COLLECTIVE_LP_CAPITAL is '（法人资本科目下）集体法人资本';
comment on column MBT_610_HIS_BAK.C_PERSONAL_CAPITAL is '个人资本';
comment on column MBT_610_HIS_BAK.C_FOREIGN_BUS_CAPITAL is '外商资本';
comment on column MBT_610_HIS_BAK.C_CAPITALR_RSERVE is '资本公积';
comment on column MBT_610_HIS_BAK.C_SURPLUS_RESERVE is '盈余公积';
comment on column MBT_610_HIS_BAK.C_STATUTORY_SURPLUS_RESERVE is '（盈余公积科目下）法定盈余公积';
comment on column MBT_610_HIS_BAK.C_PUBLIC_WELFARE_FUND is '（盈余公积科目下）公益金';
comment on column MBT_610_HIS_BAK.C_SUPPLER_CURRENT_CAPITAL is '（盈余公积科目下）补充流动资本';
comment on column MBT_610_HIS_BAK.C_UNAFFIRMED_INVESTMENT_LOSS is '未确认的投资损失';
comment on column MBT_610_HIS_BAK.C_UNAPPROPRIATED_PROFIT is '未分配利润';
comment on column MBT_610_HIS_BAK.C_DT_FC_FINANCIAL_STA is '外币报表折算差额';
comment on column MBT_610_HIS_BAK.C_TOTAL_EQUITY is '所有者权益合计';
comment on column MBT_610_HIS_BAK.C_TOTAL_EQUITY_LIABILITIES is '负债和所有者权益总计';
comment on column MBT_610_HIS_BAK.D_CURRENCY_FUNDS is '货币资金';
comment on column MBT_610_HIS_BAK.D_FINANCIAL_ASS_HELD_TRADING is '交易性金融资产';
comment on column MBT_610_HIS_BAK.D_NOTES_RECEIVABLE is '应收票据';
comment on column MBT_610_HIS_BAK.D_ACCOUNTS_RECEIVABLE is '应收账款';
comment on column MBT_610_HIS_BAK.D_PREPAYMENTS is '预付账款';
comment on column MBT_610_HIS_BAK.D_INTEREST_RECEIVABLE is '应收利息';
comment on column MBT_610_HIS_BAK.D_DIVIDENDS_RECEIVABLE is '应收股利';
comment on column MBT_610_HIS_BAK.D_OTHER_RECEIVABLES is '其他应收款';
comment on column MBT_610_HIS_BAK.D_INVENTORIES is '存货';
comment on column MBT_610_HIS_BAK.D_CURRENT_PORTION_NCA is '一年内到期的非流动资产';
comment on column MBT_610_HIS_BAK.D_OTHER_CURRENT_ASSETS is '其他流动资产';
comment on column MBT_610_HIS_BAK.D_TOTAL_CURRENT_ASSETS is '流动资产合计';
comment on column MBT_610_HIS_BAK.D_FINANCIAL_ASS_AVAILABLE_SALE is '可供出售的金融资产';
comment on column MBT_610_HIS_BAK.D_HELD_MATURITY_INVESTMENTS is '持有至到期投资';
comment on column MBT_610_HIS_BAK.D_LONG_TERM_EQUITY_INVESTMENT is '长期股权投资';
comment on column MBT_610_HIS_BAK.D_LONG_TERM_RECEIVABLES is '长期应收款';
comment on column MBT_610_HIS_BAK.D_INVESTMENT_PROPERTIES is '投资性房地产';
comment on column MBT_610_HIS_BAK.D_FIXED_ASSETS is '固定资产';
comment on column MBT_610_HIS_BAK.D_NET_VALUE_OF_FIXE_ASSETS is '固定资产净额';
comment on column MBT_610_HIS_BAK.D_CONSTRUCTION_IN_PROGRESS is '在建工程';
comment on column MBT_610_HIS_BAK.D_CONSTRUCTION_MATERIALS is '工程物资';
comment on column MBT_610_HIS_BAK.D_FIXED_ASS_PENDING_DISPOSAL is '固定资产清理';
comment on column MBT_610_HIS_BAK.D_NON_CURRENT_BIOLOGICAL_ASS is '生产性物资';
comment on column MBT_610_HIS_BAK.D_OIL_AND_GAS_ASSETS is '油气资产';
comment on column MBT_610_HIS_BAK.D_INTANGIBLE_ASSETS is '无形资产';
comment on column MBT_610_HIS_BAK.D_LAND_USE_RIGHTS is '（无形资产科目下）土地使用权';
comment on column MBT_610_HIS_BAK.D_DEVELOPMENT_DISBURSEMENTS is '开发支出';
comment on column MBT_610_HIS_BAK.D_GOODWILL is '商誉';
comment on column MBT_610_HIS_BAK.D_LONG_TERM_DEFERRED_EXPENSES is '长期待摊费用';
comment on column MBT_610_HIS_BAK.D_DEFERRED_TAX_ASSETS is '递延所得税资产';
comment on column MBT_610_HIS_BAK.D_OTHER_NON_CURRENT_ASSETS is '其他非流动资产';
comment on column MBT_610_HIS_BAK.D_TOTAL_NON_CURRENT_ASSETS is '非流动资产合计';
comment on column MBT_610_HIS_BAK.D_TOTAL_ASSETS is '资产总计';
comment on column MBT_610_HIS_BAK.D_SHORT_TERM_BORROWINGS is '短期借款';
comment on column MBT_610_HIS_BAK.D_FINANCIAL_LIABILITIES_HFT is '交易性金融负债';
comment on column MBT_610_HIS_BAK.D_NOTES_PAYABLE is '应付票据';
comment on column MBT_610_HIS_BAK.D_ACCOUNTS_PAYABLE is '应付账款';
comment on column MBT_610_HIS_BAK.D_RECEIPTS_IN_ADVANCE is '预收账款';
comment on column MBT_610_HIS_BAK.D_INTEREST_PAYABLE is '应付利息';
comment on column MBT_610_HIS_BAK.D_EMPLOYEE_BENEFITS_PAYABLE is '应付职工薪酬';
comment on column MBT_610_HIS_BAK.D_TAXES_PAYABLE is '应交税费';
comment on column MBT_610_HIS_BAK.D_DIVIDENDS_PAYABLE is '应付股利';
comment on column MBT_610_HIS_BAK.D_OTHER_PAYABLE is '其他应付款';
comment on column MBT_610_HIS_BAK.D_CURRENT_PORTION_LIABILITIES is '一年内到期的非流动负债';
comment on column MBT_610_HIS_BAK.D_OTHER_CURRENT_LIABILITIES is '其他流动负债';
comment on column MBT_610_HIS_BAK.D_TOTAL_CURRENT_LIABILITIES is '流动负债合计';
comment on column MBT_610_HIS_BAK.D_LONG_TERM_BORROWINGSORROWING is '长期借款';
comment on column MBT_610_HIS_BAK.D_BONDS_PAYABLE is '应付债券';
comment on column MBT_610_HIS_BAK.D_LONG_TERM_PAYABLES is '长期应付款';
comment on column MBT_610_HIS_BAK.D_GRANTS_PAYABLE is '专项应付款';
comment on column MBT_610_HIS_BAK.D_PROVISIONS is '预计负债';
comment on column MBT_610_HIS_BAK.D_DEFERRED_TAX_LIABILITIES is '递延所得税负债';
comment on column MBT_610_HIS_BAK.D_OTHER_NON_CURRENT_LIABILITIE is '其他非流动负债';
comment on column MBT_610_HIS_BAK.D_TOTAL_NON_CURRENT_LIABILITIE is '非流动负债合计';
comment on column MBT_610_HIS_BAK.D_TOTAL_LIABILITIES is '负债合计';
comment on column MBT_610_HIS_BAK.D_PAID_IN_CAPITAL_SHARE_CAPITA is '实收资本（或股本）';
comment on column MBT_610_HIS_BAK.D_CAPITALR_RSERVE is '资本公积';
comment on column MBT_610_HIS_BAK.D_LESS_TREASURY_STOCKS is '减：库存股';
comment on column MBT_610_HIS_BAK.D_SURPLUS_RESERVE is '盈余公积';
comment on column MBT_610_HIS_BAK.D_UNAPPROPRIATED_PROFIT is '未分配利润';
comment on column MBT_610_HIS_BAK.D_TOTAL_EQUITY is '所有者权益合计';
comment on column MBT_610_HIS_BAK.D_TOTAL_EQUITY_LIABILITIES is '负债和所有者权益总计';
comment on column MBT_610_HIS_BAK.REMARKS is '备注';
comment on column MBT_610_HIS_BAK.CHECK_FLAG is '校验标识';
comment on column MBT_610_HIS_BAK.CHECK_DESC is '校验结果';
comment on column MBT_610_HIS_BAK.CHECK_ERR_TYPE is '校验失败类型';
comment on column MBT_610_HIS_BAK.NEXT_ACTION is '下一动作';
comment on column MBT_610_HIS_BAK.DATA_STATUS is '数据状态';
comment on column MBT_610_HIS_BAK.DATA_FLAG is '数据是否已删除';
comment on column MBT_610_HIS_BAK.DATA_SOURCE is '数据来源';
comment on column MBT_610_HIS_BAK.DATA_VERSION is '数据版本号';
comment on column MBT_610_HIS_BAK.DATA_REJ_DESC is '数据审核拒绝描述';
comment on column MBT_610_HIS_BAK.DATA_DEL_DESC is '数据删除描述';
comment on column MBT_610_HIS_BAK.DATA_CRT_USER is '数据创建/导入用户';
comment on column MBT_610_HIS_BAK.DATA_CRT_DATE is '数据创建/导入日期';
comment on column MBT_610_HIS_BAK.DATA_CRT_TIME is '数据创建/导入时间';
comment on column MBT_610_HIS_BAK.DATA_CHG_USER is '数据修改/删除用户';
comment on column MBT_610_HIS_BAK.DATA_CHG_DATE is '数据修改/删除日期';
comment on column MBT_610_HIS_BAK.DATA_CHG_TIME is '数据修改/删除时间';
comment on column MBT_610_HIS_BAK.DATA_APV_USER is '数据审核/拒绝用户';
comment on column MBT_610_HIS_BAK.DATA_APV_DATE is '数据审核/拒绝日期';
comment on column MBT_610_HIS_BAK.DATA_APV_TIME is '数据审核/拒绝时间';
comment on column MBT_610_HIS_BAK.RSV1 is '扩展字段1';
comment on column MBT_610_HIS_BAK.RSV2 is '扩展字段2';
comment on column MBT_610_HIS_BAK.RSV3 is '扩展字段3';
comment on column MBT_610_HIS_BAK.RSV4 is '扩展字段4';
comment on column MBT_610_HIS_BAK.RSV5 is '扩展字段5';
comment on column MBT_610_HIS_BAK.ODS_DATA_ID is 'ODS数据ID';
comment on column MBT_610_HIS_BAK.HIS_DATE is '信息同步日期';
comment on column MBT_610_HIS_BAK.IS_RPT is '是否上报';
comment on column MBT_610_HIS_BAK.FB_STATUS is '反馈状态';
comment on column MBT_610_HIS_BAK.RPT_FILE_NAME is '上报文件名';

create table MBT_620_HIS_BAK
(
    DATA_ID                        CHAR(32) not null primary key,
    DATA_DATE                      CHAR(8),
    CORP_ID                        VARCHAR2(14),
    ORG_ID                         VARCHAR2(14),
    GROUP_ID                       VARCHAR2(14),
    INQ_ORG_ID                     CHAR(24),
    INQ_GROUP_ID                   CHAR(24),
    B_INF_REC_TYPE                 CHAR(3),
    B_ENT_NAME                     NVARCHAR2(80),
    B_ENT_CERT_TYPE                VARCHAR2(2),
    B_ENT_CERT_NUM                 VARCHAR2(40),
    B_RPT_DATE                     CHAR(8),
    B_SHEET_YEAR                   CHAR(4),
    B_SHEET_TYPE                   VARCHAR2(2),
    B_SHEET_TYPE_DIVIDE            VARCHAR2(2),
    B_AUDIT_FIRM_NAME              NVARCHAR2(80),
    B_AUDITOR_NAME                 NVARCHAR2(30),
    B_AUDIT_TIME                   CHAR(8),
    B_CIMOC                        VARCHAR2(14),
    B_RPT_DATE_CODE                CHAR(2),
    C_MAIN_REVENUEF_REVENUE        NUMBER(17, 2),
    C_SALES_INCOME_E_GOODS_PRODUCT NUMBER(17, 2),
    C_SALES_INCOME_I_GOODS_PRODUCT NUMBER(17, 2),
    C_DISCOUNT_ALLOWANCE           NUMBER(17, 2),
    C_NET_AMOUNT_INCOME_MAIN_BUSI  NUMBER(17, 2),
    C_MAIN_OPERATING_COST          NUMBER(17, 2),
    C_SALES_INCOME_E_PRODUCTS      NUMBER(17, 2),
    C_PRINCIPLE_B_TAX_EXTRA_CHARGE NUMBER(17, 2),
    C_OPERATION_EXPENSE            NUMBER(17, 2),
    C_OTHERS_OPERATING_COST        NUMBER(17, 2),
    C_DEFERRED_INCOME              NUMBER(17, 2),
    C_INCOME_SALES_AGENCY          NUMBER(17, 2),
    C_OTHER_OPERATING_INCOME       NUMBER(17, 2),
    C_PRINCIPLE_BUSINESS_PROFIT    NUMBER(17, 2),
    C_OTHER_BUSINESS_PROFIT        NUMBER(17, 2),
    C_SELLING_EXPENSES             NUMBER(17, 2),
    C_GENERAL_ADMIN_EXPENSES       NUMBER(17, 2),
    C_FINANCIAL_EXPENSES           NUMBER(17, 2),
    C_OTHERS_EXPENSES              NUMBER(17, 2),
    C_OPERATING_PROFITS            NUMBER(17, 2),
    C_INVESTMENT_INCOME            NUMBER(17, 2),
    C_FUTURES_INCOME               NUMBER(17, 2),
    C_ALLOWANCE_INCOME             NUMBER(17, 2),
    C_ALLOWANCE_INCOME_B_ALLOWANCE NUMBER(17, 2),
    C_NON_OPERATING_INCOME         NUMBER(17, 2),
    C_NET_GAIN_DISPOSAL_FIXED_ASS  NUMBER(17, 2),
    C_INCOME_NON_CURRENCY_TRADE    NUMBER(17, 2),
    C_INCOME_SALES_INTANGIBLE_ASS  NUMBER(17, 2),
    C_INCOME_FROM_PENALTY          NUMBER(17, 2),
    C_OTHERS_INCOME                NUMBER(17, 2),
    C_CALCULATING_CONTENT_SALARY_B NUMBER(17, 2),
    C_NON_OPERATING_EXPENSES       NUMBER(17, 2),
    C_LOSS_DISPOSAL_FIXED_ASSETS   NUMBER(17, 2),
    C_EXCHANGE_NON_MONETARY_ASS_L  NUMBER(17, 2),
    C_LOSS_LAWSUITS                NUMBER(17, 2),
    C_PAYMENT_FOR_DONATION         NUMBER(17, 2),
    C_OTHER_PAYMENTS               NUMBER(17, 2),
    C_BALANCE_OF_CONTENTSALARY     NUMBER(17, 2),
    C_TOTAL_PROFIT                 NUMBER(17, 2),
    C_INCOMETAX                    NUMBER(17, 2),
    C_IMPARIMENT_LOSS              NUMBER(17, 2),
    C_UNREALIZED_INVESTMENT_LOSSES NUMBER(17, 2),
    C_NET_PROFIT                   NUMBER(17, 2),
    C_PROFIT_DISTRIBUTION_B_PERIOD NUMBER(17, 2),
    C_COMPENSATION_SURPLUS_RES     NUMBER(17, 2),
    C_OTHER_ADJUSTMENT_FACTORS     NUMBER(17, 2),
    C_PROFIT_AVAILABLE_DISTRIBUTI  NUMBER(17, 2),
    C_PROFIT_RESERVED_A_SINGLEIT   NUMBER(17, 2),
    C_SUPPLEMENTARY_CURRENT_CAPIT  NUMBER(17, 2),
    C_APPR_STATUTORY_SURPLUS_RES   NUMBER(17, 2),
    C_APPR_STATUTORY_WELFAREFUND   NUMBER(17, 2),
    C_APPR_STAFF_INC_WELFARE_FUND  NUMBER(17, 2),
    C_APPR_RESERVE_FUND            NUMBER(17, 2),
    C_APPR_ENTERPRISE_EXP_FUND     NUMBER(17, 2),
    C_PRO_CAP_RETURN_INVESTMENT    NUMBER(17, 2),
    C_OTHERS                       NUMBER(17, 2),
    C_PROFIT_AVAILABLE_OWNERS_DIST NUMBER(17, 2),
    C_PREFERRED_STOCK_DIVIDEND_PAY NUMBER(17, 2),
    C_WITHDRAWAL_OTHER_COMM_ACC_FU NUMBER(17, 2),
    C_PAYABLE_DIVIDENDS_COMMON_STO NUMBER(17, 2),
    C_TRANSFER_ORDINARY_SHARES_DP  NUMBER(17, 2),
    C_OTHERS_OWNERS                NUMBER(17, 2),
    C_UNAPPROPRIATED_PROFIT        NUMBER(17, 2),
    C_LOSS_COMPENSATED_BEFORE_TAX  NUMBER(17, 2),
    D_REVENUE_OF_SALES             NUMBER(17, 2),
    D_COST_OF_SALES                NUMBER(17, 2),
    D_BUSINESS_OTHER_TAXES         NUMBER(17, 2),
    D_SELLING_EXPENSES             NUMBER(17, 2),
    D_GENERAL_ADMIN_EXPENSES       NUMBER(17, 2),
    D_FINANCIAL_EXPENSE            NUMBER(17, 2),
    D_IMPAIRMENT_LOSS_OF_ASSETS    NUMBER(17, 2),
    D_PROFIT_LOSS_ARISING_FAIR_VAL NUMBER(17, 2),
    D_INVESTMENT_INCOME            NUMBER(17, 2),
    D_INVESTMENT_INCOME_ENTERPRISE NUMBER(17, 2),
    D_OPERATING_PROFITS            NUMBER(17, 2),
    D_NON_OPERATING_INCOME         NUMBER(17, 2),
    D_NON_OPERATING_EXPENSES       NUMBER(17, 2),
    D_NON_CURRENT_ASSETS           NUMBER(17, 2),
    D_PROFIT_BEFORE_TAX            NUMBER(17, 2),
    D_INCOME_TAX_EXPENSE           NUMBER(17, 2),
    D_NET_PROFIT                   NUMBER(17, 2),
    D_BASIC_EARNINGS_PER_SHARE     NUMBER(17, 2),
    D_DILUTED_EARNINGS_PER_SHARE   NUMBER(17, 2),
    E_DATA_DESC                    NVARCHAR2(256),
    REMARKS                        NVARCHAR2(512),
    CHECK_FLAG                     CHAR,
    CHECK_DESC                     VARCHAR2(512),
    CHECK_ERR_TYPE                 CHAR,
    NEXT_ACTION                    CHAR(2),
    DATA_STATUS                    CHAR(2),
    DATA_FLAG                      CHAR,
    DATA_SOURCE                    CHAR,
    DATA_VERSION                   NUMBER(8),
    DATA_REJ_DESC                  NVARCHAR2(128),
    DATA_DEL_DESC                  NVARCHAR2(128),
    DATA_CRT_USER                  VARCHAR2(20),
    DATA_CRT_DATE                  CHAR(8),
    DATA_CRT_TIME                  CHAR(14),
    DATA_CHG_USER                  VARCHAR2(20),
    DATA_CHG_DATE                  CHAR(8),
    DATA_CHG_TIME                  CHAR(14),
    DATA_APV_USER                  VARCHAR2(20),
    DATA_APV_DATE                  CHAR(8),
    DATA_APV_TIME                  CHAR(14),
    RSV1                           VARCHAR2(180),
    RSV2                           VARCHAR2(180),
    RSV3                           VARCHAR2(180),
    RSV4                           VARCHAR2(180),
    RSV5                           VARCHAR2(180),
    ODS_DATA_ID                    CHAR(32),
    HIS_DATE                       CHAR(8),
    HIS_TIME                       CHAR(14),
    IS_RPT                         VARCHAR2(64),
    FB_STATUS                      CHAR(2),
    RPT_FILE_NAME                  VARCHAR2(512),
    B_CUST_NO                      NVARCHAR2(64)
);
comment on column MBT_620_HIS_BAK.DATA_ID is '主键';
comment on column MBT_620_HIS_BAK.DATA_DATE is '数据日期';
comment on column MBT_620_HIS_BAK.CORP_ID is '法人机构号';
comment on column MBT_620_HIS_BAK.ORG_ID is '分行机构号';
comment on column MBT_620_HIS_BAK.GROUP_ID is '部门编号';
comment on column MBT_620_HIS_BAK.INQ_ORG_ID is '查询机构号';
comment on column MBT_620_HIS_BAK.INQ_GROUP_ID is '查询组号';
comment on column MBT_620_HIS_BAK.B_INF_REC_TYPE is '信息记录类型';
comment on column MBT_620_HIS_BAK.B_ENT_NAME is '企业名称';
comment on column MBT_620_HIS_BAK.B_ENT_CERT_TYPE is '企业身份标识类型';
comment on column MBT_620_HIS_BAK.B_ENT_CERT_NUM is '企业身份标识号码';
comment on column MBT_620_HIS_BAK.B_RPT_DATE is '信息报告日期';
comment on column MBT_620_HIS_BAK.B_SHEET_YEAR is '报表年份';
comment on column MBT_620_HIS_BAK.B_SHEET_TYPE is '报表类型';
comment on column MBT_620_HIS_BAK.B_SHEET_TYPE_DIVIDE is '报表类型细分';
comment on column MBT_620_HIS_BAK.B_AUDIT_FIRM_NAME is '审计事务所名称';
comment on column MBT_620_HIS_BAK.B_AUDITOR_NAME is '审计人员名称';
comment on column MBT_620_HIS_BAK.B_AUDIT_TIME is '审计时间';
comment on column MBT_620_HIS_BAK.B_CIMOC is '客户资料维护机构代码';
comment on column MBT_620_HIS_BAK.B_RPT_DATE_CODE is '报告时点说明代码';
comment on column MBT_620_HIS_BAK.C_MAIN_REVENUEF_REVENUE is '主营业务收入';
comment on column MBT_620_HIS_BAK.C_SALES_INCOME_E_GOODS_PRODUCT is '（主营业务收入科目下）出口产品销售收入';
comment on column MBT_620_HIS_BAK.C_SALES_INCOME_I_GOODS_PRODUCT is '（主营业务收入科目下）进口产品销售收入';
comment on column MBT_620_HIS_BAK.C_DISCOUNT_ALLOWANCE is '销售折扣与折让';
comment on column MBT_620_HIS_BAK.C_NET_AMOUNT_INCOME_MAIN_BUSI is '主营业务收入净额';
comment on column MBT_620_HIS_BAK.C_MAIN_OPERATING_COST is '主营业务成本';
comment on column MBT_620_HIS_BAK.C_SALES_INCOME_E_PRODUCTS is '（主营业务成本科目下）出口产品销售成本';
comment on column MBT_620_HIS_BAK.C_PRINCIPLE_B_TAX_EXTRA_CHARGE is '主营业务税金及附加';
comment on column MBT_620_HIS_BAK.C_OPERATION_EXPENSE is '经营费用';
comment on column MBT_620_HIS_BAK.C_OTHERS_OPERATING_COST is '其他（业务成本）';
comment on column MBT_620_HIS_BAK.C_DEFERRED_INCOME is '递延收益';
comment on column MBT_620_HIS_BAK.C_INCOME_SALES_AGENCY is '代购代销收入';
comment on column MBT_620_HIS_BAK.C_OTHER_OPERATING_INCOME is '其他（收入）';
comment on column MBT_620_HIS_BAK.C_PRINCIPLE_BUSINESS_PROFIT is '主营业务利润';
comment on column MBT_620_HIS_BAK.C_OTHER_BUSINESS_PROFIT is '其他业务利润';
comment on column MBT_620_HIS_BAK.C_SELLING_EXPENSES is '营业费用';
comment on column MBT_620_HIS_BAK.C_GENERAL_ADMIN_EXPENSES is '管理费用';
comment on column MBT_620_HIS_BAK.C_FINANCIAL_EXPENSES is '财务费用';
comment on column MBT_620_HIS_BAK.C_OTHERS_EXPENSES is '其他（费用）';
comment on column MBT_620_HIS_BAK.C_OPERATING_PROFITS is '营业利润';
comment on column MBT_620_HIS_BAK.C_INVESTMENT_INCOME is '投资收益';
comment on column MBT_620_HIS_BAK.C_FUTURES_INCOME is '期货收益';
comment on column MBT_620_HIS_BAK.C_ALLOWANCE_INCOME is '补贴收入';
comment on column MBT_620_HIS_BAK.C_ALLOWANCE_INCOME_B_ALLOWANCE is '（补贴收入科目下）补贴前亏损的企业补贴收入';
comment on column MBT_620_HIS_BAK.C_NON_OPERATING_INCOME is '营业外收入';
comment on column MBT_620_HIS_BAK.C_NET_GAIN_DISPOSAL_FIXED_ASS is '（营业外收入科目下）处置固定资产净收益';
comment on column MBT_620_HIS_BAK.C_INCOME_NON_CURRENCY_TRADE is '（营业外收入科目下）非货币性交易收益';
comment on column MBT_620_HIS_BAK.C_INCOME_SALES_INTANGIBLE_ASS is '（营业外收入科目下）出售无形资产收益';
comment on column MBT_620_HIS_BAK.C_INCOME_FROM_PENALTY is '（营业外收入科目下）罚款净收入';
comment on column MBT_620_HIS_BAK.C_OTHERS_INCOME is '其他（利润）';
comment on column MBT_620_HIS_BAK.C_CALCULATING_CONTENT_SALARY_B is '（其他科目下）用以前年度含量工资节余弥补利润';
comment on column MBT_620_HIS_BAK.C_NON_OPERATING_EXPENSES is '营业外支出';
comment on column MBT_620_HIS_BAK.C_LOSS_DISPOSAL_FIXED_ASSETS is '（营业外支出科目下）处置固定资产净损失';
comment on column MBT_620_HIS_BAK.C_EXCHANGE_NON_MONETARY_ASS_L is '（营业外支出科目下）债务重组损失';
comment on column MBT_620_HIS_BAK.C_LOSS_LAWSUITS is '（营业外支出科目下）罚款支出';
comment on column MBT_620_HIS_BAK.C_PAYMENT_FOR_DONATION is '（营业外支出科目下）捐赠支出';
comment on column MBT_620_HIS_BAK.C_OTHER_PAYMENTS is '其他支出';
comment on column MBT_620_HIS_BAK.C_BALANCE_OF_CONTENTSALARY is '（其他支出）结转的含量工资包干节余';
comment on column MBT_620_HIS_BAK.C_TOTAL_PROFIT is '利润总额';
comment on column MBT_620_HIS_BAK.C_INCOMETAX is '所得税';
comment on column MBT_620_HIS_BAK.C_IMPARIMENT_LOSS is '少数股东损益';
comment on column MBT_620_HIS_BAK.C_UNREALIZED_INVESTMENT_LOSSES is '未确认的投资损失';
comment on column MBT_620_HIS_BAK.C_NET_PROFIT is '净利润';
comment on column MBT_620_HIS_BAK.C_PROFIT_DISTRIBUTION_B_PERIOD is '年初未分配利润';
comment on column MBT_620_HIS_BAK.C_COMPENSATION_SURPLUS_RES is '盈余公积补亏';
comment on column MBT_620_HIS_BAK.C_OTHER_ADJUSTMENT_FACTORS is '其他调整因素';
comment on column MBT_620_HIS_BAK.C_PROFIT_AVAILABLE_DISTRIBUTI is '可供分配的利润';
comment on column MBT_620_HIS_BAK.C_PROFIT_RESERVED_A_SINGLEIT is '单项留用的利润';
comment on column MBT_620_HIS_BAK.C_SUPPLEMENTARY_CURRENT_CAPIT is '补充流动资本';
comment on column MBT_620_HIS_BAK.C_APPR_STATUTORY_SURPLUS_RES is '提取法定盈余公积';
comment on column MBT_620_HIS_BAK.C_APPR_STATUTORY_WELFAREFUND is '提取法定公益金';
comment on column MBT_620_HIS_BAK.C_APPR_STAFF_INC_WELFARE_FUND is '提取职工奖励及福利基金';
comment on column MBT_620_HIS_BAK.C_APPR_RESERVE_FUND is '提取储备基金';
comment on column MBT_620_HIS_BAK.C_APPR_ENTERPRISE_EXP_FUND is '提取企业发展基金';
comment on column MBT_620_HIS_BAK.C_PRO_CAP_RETURN_INVESTMENT is '利润归还投资';
comment on column MBT_620_HIS_BAK.C_OTHERS is '（可供分配的利润科目下）其他';
comment on column MBT_620_HIS_BAK.C_PROFIT_AVAILABLE_OWNERS_DIST is '可供投资者分配的利润';
comment on column MBT_620_HIS_BAK.C_PREFERRED_STOCK_DIVIDEND_PAY is '应付优先股股利';
comment on column MBT_620_HIS_BAK.C_WITHDRAWAL_OTHER_COMM_ACC_FU is '提取任意盈余公积';
comment on column MBT_620_HIS_BAK.C_PAYABLE_DIVIDENDS_COMMON_STO is '应付普通股股利';
comment on column MBT_620_HIS_BAK.C_TRANSFER_ORDINARY_SHARES_DP is '转作资本的普通股股利';
comment on column MBT_620_HIS_BAK.C_OTHERS_OWNERS is '（可供投资者分配的利润科目下）其他';
comment on column MBT_620_HIS_BAK.C_UNAPPROPRIATED_PROFIT is '未分配利润';
comment on column MBT_620_HIS_BAK.C_LOSS_COMPENSATED_BEFORE_TAX is '（未分配利润科目下）应由以后年度税前利润弥补的亏损';
comment on column MBT_620_HIS_BAK.D_REVENUE_OF_SALES is '营业收入';
comment on column MBT_620_HIS_BAK.D_COST_OF_SALES is '营业成本';
comment on column MBT_620_HIS_BAK.D_BUSINESS_OTHER_TAXES is '营业税金及附加';
comment on column MBT_620_HIS_BAK.D_SELLING_EXPENSES is '销售费用';
comment on column MBT_620_HIS_BAK.D_GENERAL_ADMIN_EXPENSES is '管理费用';
comment on column MBT_620_HIS_BAK.D_FINANCIAL_EXPENSE is '财务费用';
comment on column MBT_620_HIS_BAK.D_IMPAIRMENT_LOSS_OF_ASSETS is '资产减值损失';
comment on column MBT_620_HIS_BAK.D_PROFIT_LOSS_ARISING_FAIR_VAL is '公允价值变动净收益';
comment on column MBT_620_HIS_BAK.D_INVESTMENT_INCOME is '投资净收益';
comment on column MBT_620_HIS_BAK.D_INVESTMENT_INCOME_ENTERPRISE is '对联营企业和合的投资收益';
comment on column MBT_620_HIS_BAK.D_OPERATING_PROFITS is '营业利润';
comment on column MBT_620_HIS_BAK.D_NON_OPERATING_INCOME is '营业外收入';
comment on column MBT_620_HIS_BAK.D_NON_OPERATING_EXPENSES is '营业外支出';
comment on column MBT_620_HIS_BAK.D_NON_CURRENT_ASSETS is '非流动资产损失（其中：处置）';
comment on column MBT_620_HIS_BAK.D_PROFIT_BEFORE_TAX is '利润总额';
comment on column MBT_620_HIS_BAK.D_INCOME_TAX_EXPENSE is '所得税费用';
comment on column MBT_620_HIS_BAK.D_NET_PROFIT is '净利润';
comment on column MBT_620_HIS_BAK.D_BASIC_EARNINGS_PER_SHARE is '基本每股收益';
comment on column MBT_620_HIS_BAK.D_DILUTED_EARNINGS_PER_SHARE is '稀释每股收益';
comment on column MBT_620_HIS_BAK.REMARKS is '备注';
comment on column MBT_620_HIS_BAK.CHECK_FLAG is '校验标识';
comment on column MBT_620_HIS_BAK.CHECK_DESC is '校验结果';
comment on column MBT_620_HIS_BAK.CHECK_ERR_TYPE is '校验失败类型';
comment on column MBT_620_HIS_BAK.NEXT_ACTION is '下一动作';
comment on column MBT_620_HIS_BAK.DATA_STATUS is '数据状态';
comment on column MBT_620_HIS_BAK.DATA_FLAG is '数据是否已删除';
comment on column MBT_620_HIS_BAK.DATA_SOURCE is '数据来源';
comment on column MBT_620_HIS_BAK.DATA_VERSION is '数据版本号';
comment on column MBT_620_HIS_BAK.DATA_REJ_DESC is '数据审核拒绝描述';
comment on column MBT_620_HIS_BAK.DATA_DEL_DESC is '数据删除描述';
comment on column MBT_620_HIS_BAK.DATA_CRT_USER is '数据创建/导入用户';
comment on column MBT_620_HIS_BAK.DATA_CRT_DATE is '数据创建/导入日期';
comment on column MBT_620_HIS_BAK.DATA_CRT_TIME is '数据创建/导入时间';
comment on column MBT_620_HIS_BAK.DATA_CHG_USER is '数据修改/删除用户';
comment on column MBT_620_HIS_BAK.DATA_CHG_DATE is '数据修改/删除日期';
comment on column MBT_620_HIS_BAK.DATA_CHG_TIME is '数据修改/删除时间';
comment on column MBT_620_HIS_BAK.DATA_APV_USER is '数据审核/拒绝用户';
comment on column MBT_620_HIS_BAK.DATA_APV_DATE is '数据审核/拒绝日期';
comment on column MBT_620_HIS_BAK.DATA_APV_TIME is '数据审核/拒绝时间';
comment on column MBT_620_HIS_BAK.RSV1 is '扩展字段1';
comment on column MBT_620_HIS_BAK.RSV2 is '扩展字段2';
comment on column MBT_620_HIS_BAK.RSV3 is '扩展字段3';
comment on column MBT_620_HIS_BAK.RSV4 is '扩展字段4';
comment on column MBT_620_HIS_BAK.RSV5 is '扩展字段5';
comment on column MBT_620_HIS_BAK.ODS_DATA_ID is 'ODS数据ID';
comment on column MBT_620_HIS_BAK.HIS_DATE is '信息同步日期';
comment on column MBT_620_HIS_BAK.IS_RPT is '是否上报';
comment on column MBT_620_HIS_BAK.FB_STATUS is '反馈状态';
comment on column MBT_620_HIS_BAK.RPT_FILE_NAME is '上报文件名';

create table MBT_630_HIS_BAK
(
    DATA_ID                        CHAR(32) not null primary key,
    DATA_DATE                      CHAR(8),
    CORP_ID                        VARCHAR2(14),
    ORG_ID                         VARCHAR2(14),
    GROUP_ID                       VARCHAR2(14),
    INQ_ORG_ID                     CHAR(24),
    INQ_GROUP_ID                   CHAR(24),
    B_INF_REC_TYPE                 CHAR(3),
    B_ENT_NAME                     NVARCHAR2(80),
    B_ENT_CERT_TYPE                VARCHAR2(2),
    B_ENT_CERT_NUM                 VARCHAR2(40),
    B_RPT_DATE                     CHAR(8),
    B_SHEET_YEAR                   CHAR(4),
    B_SHEET_TYPE                   VARCHAR2(2),
    B_SHEET_TYPE_DIVIDE            VARCHAR2(2),
    B_AUDIT_FIRM_NAME              NVARCHAR2(80),
    B_AUDITOR_NAME                 NVARCHAR2(30),
    B_AUDIT_TIME                   CHAR(8),
    B_CIMOC                        VARCHAR2(14),
    B_RPT_DATE_CODE                CHAR(2),
    C_CASH_REC_SALES_GOODS_REN_SER NUMBER(17, 2),
    C_TAX_REFUNDS                  NUMBER(17, 2),
    C_OTHER_CASH_REC_REL_OPERA_ACT NUMBER(17, 2),
    C_TOTAL_CASH_INFLOWS_OPERA_ACT NUMBER(17, 2),
    C_CASH_PAID_GOODS_SERVICES     NUMBER(17, 2),
    C_CASH_PAID_BEHALF_EMPLOYEES   NUMBER(17, 2),
    C_TOTAL_CASH_OUTFLOWS_OPERA_AC NUMBER(17, 2),
    C_NET_CASH_FLOWS_OPERAT_ACT    NUMBER(17, 2),
    C_CASH_REC_RETURN_INVESTMENT   NUMBER(17, 2),
    C_CASH_RECEIVED_ONVESTMENTS    NUMBER(17, 2),
    C_NET_CASH_REC_D_F_A_I_A_O_LT  NUMBER(17, 2),
    C_CASH_RECEIVED_REL_OTHER_ACT  NUMBER(17, 2),
    C_TOTAL_CASH_INF_INVESTING_ACT NUMBER(17, 2),
    C_CASH_P_A_F_ASS_I_ASS_OLT_ASS NUMBER(17, 2),
    C_CASH_PAYMENTS_INVESTMENTS    NUMBER(17, 2),
    C_CASH_PAYMENTS_RELATED_O_ACT  NUMBER(17, 2),
    C_TOTAL_CASH_OUTFLOWS_INV_ACT  NUMBER(17, 2),
    C_NET_CASH_FLOWS_INVESTING_ACT NUMBER(17, 2),
    C_CASH_RECEIVED_FROM_INVESTORS NUMBER(17, 2),
    C_CASH_FROM_BORROWINGS         NUMBER(17, 2),
    C_OTHER_CASH_REC_REL_FIN_ACT   NUMBER(17, 2),
    C_TOTAL_CASH_INF_FINANCING_ACT NUMBER(17, 2),
    C_CASH_REPAYMENTS_FOR_DEBTS    NUMBER(17, 2),
    C_CASH_PAYMENTS_D_D_PRO_I_EXP  NUMBER(17, 2),
    C_CASH_PAYMENTS_REL_O_FIN_AC   NUMBER(17, 2),
    C_TOTAL_CASH_OUTFLOWS_FIN_AC   NUMBER(17, 2),
    C_NET_CASH_FLOWS_FINANCING_AC  NUMBER(17, 2),
    C_EFFECT_EX_RATE_CHANGES_CASH  NUMBER(17, 2),
    C_NET_INC_CASH_CASH_EQUIVALENT NUMBER(17, 2),
    C_NET_PROFIT                   NUMBER(17, 2),
    C_PROVISION_FOR_ASSETS         NUMBER(17, 2),
    C_DEPRECIATION_FIXED_ASSETS    NUMBER(17, 2),
    C_AMORTISATION_INTANGIBLE_ASS  NUMBER(17, 2),
    C_LONG_TERM_DEFERRED_EXP_AMOR  NUMBER(17, 2),
    C_DECREASE_DEFFERED_EXPENSES   NUMBER(17, 2),
    C_ADDITION_ACCUED_EXPENSE      NUMBER(17, 2),
    C_LOSSES_D_F_ASS_I_ASS_OLT_ASS NUMBER(17, 2),
    C_LOSSES_SCRAPPING_FIXED_ASS   NUMBER(17, 2),
    C_FINANCE_EXPENSE              NUMBER(17, 2),
    C_LOSSES_ARSING_INVESTMENT     NUMBER(17, 2),
    C_DEFERRED_TAX_CREDIT          NUMBER(17, 2),
    C_DECREASE_IN_INVENTORIES      NUMBER(17, 2),
    C_DECREASE_OPERATING_RECEIVABL NUMBER(17, 2),
    C_INCREASE_OPERATING_RECEIVABL NUMBER(17, 2),
    C_OTHERS                       NUMBER(17, 2),
    C_NET_CASH_FLOWS_OPERA_ACT_MI  NUMBER(17, 2),
    C_DEBTS_TRANSFER_TO_CAPITAL    NUMBER(17, 2),
    C_ONE_YEAR_DUE_CONVERTIBLE_BON NUMBER(17, 2),
    C_FINANCING_RENT_THE_FIXED_ASS NUMBER(17, 2),
    C_NON_CASH_OTHERS              NUMBER(17, 2),
    C_CASH_AT_THE_END_OF_PERIOD    NUMBER(17, 2),
    C_CASH_AT_THE_BEGINNING_PERIOD NUMBER(17, 2),
    C_CASH_EQUIVALENTS_END_PERIOD  NUMBER(17, 2),
    C_CASH_RQUIVALENTS_BEGIN_PERIO NUMBER(17, 2),
    C_NET_INCREASE_CASH_CASH_EQU_M NUMBER(17, 2),
    D_CASH_REC_SAL_GOO_REN_SERVICE NUMBER(17, 2),
    D_TAX_REFUNDS                  NUMBER(17, 2),
    D_OTHER_CASH_REC_REL_OPERA_ACT NUMBER(17, 2),
    D_TOTAL_CASH_INFLOWS_OPERAT_AC NUMBER(17, 2),
    D_CASH_PAID_FOR_GOODS_SERVICES NUMBER(17, 2),
    D_CASH_PAID_BEHALF_OF_EMPLOYEE NUMBER(17, 2),
    D_PAYMENTS_OF_ALL_TYPES_TAXES  NUMBER(17, 2),
    D_OTHER_CASH_PAYMENTS_OPERA_AC NUMBER(17, 2),
    D_TOTAL_CASH_OUTFLOWS_OPERA_AC NUMBER(17, 2),
    D_NET_CASH_FLOWS_OPERATING_ACT NUMBER(17, 2),
    D_CASH_REC_RETURN_INVESTMENT   NUMBER(17, 2),
    D_CASH_REC_ONVESTMENTS         NUMBER(17, 2),
    D_NET_CASH_R_DFASS_IASS_OLTASS NUMBER(17, 2),
    D_NET_CASH_INF_DIS_SUB_O_B_ENT NUMBER(17, 2),
    D_CASH_REC_REL_OTHER_INVEST_AC NUMBER(17, 2),
    D_TOTAL_CASH_INFLOWS_INVEST_AC NUMBER(17, 2),
    D_CASH_PAID_ACQ_FASS_IASS_ASS  NUMBER(17, 2),
    D_CASH_PAYMENTS_INVESTMENTS    NUMBER(17, 2),
    D_NET_CASH_OUTF_PRO_SUB_OBUNIT NUMBER(17, 2),
    D_CASH_PAYMENTS_REL_O_I_ACT    NUMBER(17, 2),
    D_SUB_TOTAL_CASH_OUTFLOWS      NUMBER(17, 2),
    D_NET_CASH_FLOWS_INVEST_ACT    NUMBER(17, 2),
    D_CASH_RECEIVED_INVESTORS      NUMBER(17, 2),
    D_CASH_FROM_BORROWINGS         NUMBER(17, 2),
    D_OTHER_CASH_REC_REL_FINA_ACT  NUMBER(17, 2),
    D_TOTAL_CASH_INFLOWS_FINA_ACT  NUMBER(17, 2),
    D_CASH_REPAYMENTS_FOR_DEBTS    NUMBER(17, 2),
    D_CASH_PAYMENTS_D_DI_P_INT_EXP NUMBER(17, 2),
    D_CASH_PAYMENTS_REL_O_F_ACT    NUMBER(17, 2),
    D_TOTAL_CASH_OUTFLOWS_FINA_ACT NUMBER(17, 2),
    D_NET_CASH_FLOWS_FINANCING_ACT NUMBER(17, 2),
    D_EFFECT_EXC_RATE_CHANGES_CASH NUMBER(17, 2),
    D_NET_INC_CASH_CASH_EQUIVALENT NUMBER(17, 2),
    D_INITIAL_CASH_CASH_EQU_BALANC NUMBER(17, 2),
    D_THE_FINAL_CASH_EQU_BALANCE   NUMBER(17, 2),
    D_NET_PROFIT                   NUMBER(17, 2),
    D_PROVISION_ASSET_IMPAIRMENT   NUMBER(17, 2),
    D_DEPRECIATION_FIXED_ASSETS    NUMBER(17, 2),
    D_AMORTISATION_INTANGIBLE_ASS  NUMBER(17, 2),
    D_AMORTISATION_LT_DEFFERED_EXP NUMBER(17, 2),
    D_DECREASE_DEFFERED_EXPENSES   NUMBER(17, 2),
    D_ADDITION_OF_ACCUED_EXPENSE   NUMBER(17, 2),
    D_LOSSES_DISP_FASS_IASS_OLTASS NUMBER(17, 2),
    D_LOSSES_SCRAPPING_FIXED_ASS   NUMBER(17, 2),
    D_PROFIT_LOSS_CHANGES_FAIR_VAL NUMBER(17, 2),
    D_FINANCE_EXPENSE              NUMBER(17, 2),
    D_LOSSES_ARSING_INVESTMENT     NUMBER(17, 2),
    D_DEFERRED_INCOME_TAX_ASSETS   NUMBER(17, 2),
    D_DEFERRED_INCOME_TAX_LIABILIT NUMBER(17, 2),
    D_DECREASE_IN_INVENTORIES      NUMBER(17, 2),
    D_DECREASE_OPERATING_RECEIVABL NUMBER(17, 2),
    D_INCREASE_OPERATING_RECEIVABL NUMBER(17, 2),
    D_OTHERS                       NUMBER(17, 2),
    D_NET_CASH_FLOWS_OPERAT_ACT_MI NUMBER(17, 2),
    D_DEBTS_TRANSFER_TO_CAPITAL    NUMBER(17, 2),
    D_ONE_YEAR_DUE_CONVER_BONDS    NUMBER(17, 2),
    D_FINANCING_RENT_FIXED_ASSET   NUMBER(17, 2),
    D_NON_CASH_OTHERS              NUMBER(17, 2),
    D_CASH_AT_THE_END_OF_PERIOD    NUMBER(17, 2),
    D_CASH_AT_THE_BEGINNING_PERIOD NUMBER(17, 2),
    D_CASH_EQUIVALENTS_AT_THE_PERI NUMBER(17, 2),
    D_CASH_RQUIVALENTS_BEGIN_PERIO NUMBER(17, 2),
    D_NET_INCREASE_CASH_EQUIVAL_MI NUMBER(17, 2),
    E_DATA_DESC                    NVARCHAR2(256),
    REMARKS                        NVARCHAR2(512),
    CHECK_FLAG                     CHAR,
    CHECK_DESC                     VARCHAR2(512),
    CHECK_ERR_TYPE                 CHAR,
    NEXT_ACTION                    CHAR(2),
    DATA_STATUS                    CHAR(2),
    DATA_FLAG                      CHAR,
    DATA_SOURCE                    CHAR,
    DATA_VERSION                   NUMBER(8),
    DATA_REJ_DESC                  NVARCHAR2(128),
    DATA_DEL_DESC                  NVARCHAR2(128),
    DATA_CRT_USER                  VARCHAR2(20),
    DATA_CRT_DATE                  CHAR(8),
    DATA_CRT_TIME                  CHAR(14),
    DATA_CHG_USER                  VARCHAR2(20),
    DATA_CHG_DATE                  CHAR(8),
    DATA_CHG_TIME                  CHAR(14),
    DATA_APV_USER                  VARCHAR2(20),
    DATA_APV_DATE                  CHAR(8),
    DATA_APV_TIME                  CHAR(14),
    RSV1                           VARCHAR2(180),
    RSV2                           VARCHAR2(180),
    RSV3                           VARCHAR2(180),
    RSV4                           VARCHAR2(180),
    RSV5                           VARCHAR2(180),
    ODS_DATA_ID                    CHAR(32),
    HIS_DATE                       CHAR(8),
    HIS_TIME                       CHAR(14),
    C_ONE_YEAR_DUE_CONVERTIBLE_BO  NUMBER(17, 2),
    IS_RPT                         VARCHAR2(64),
    C_PAYMENTS_OF_ALL_TYPES_TAXES  NUMBER(17, 2),
    C_OTHER_CASH_PAYMENTS_OPERA_AC NUMBER(17, 2),
    FB_STATUS                      CHAR(2),
    RPT_FILE_NAME                  VARCHAR2(512),
    B_CUST_NO                      NVARCHAR2(64)
);
comment on column MBT_630_HIS_BAK.DATA_ID is '主键';
comment on column MBT_630_HIS_BAK.DATA_DATE is '数据日期';
comment on column MBT_630_HIS_BAK.CORP_ID is '法人机构号';
comment on column MBT_630_HIS_BAK.ORG_ID is '分行机构号';
comment on column MBT_630_HIS_BAK.GROUP_ID is '部门编号';
comment on column MBT_630_HIS_BAK.INQ_ORG_ID is '查询机构号';
comment on column MBT_630_HIS_BAK.INQ_GROUP_ID is '查询组号';
comment on column MBT_630_HIS_BAK.B_INF_REC_TYPE is '信息记录类型';
comment on column MBT_630_HIS_BAK.B_ENT_NAME is '企业名称';
comment on column MBT_630_HIS_BAK.B_ENT_CERT_TYPE is '企业身份标识类型';
comment on column MBT_630_HIS_BAK.B_ENT_CERT_NUM is '企业身份标识号码';
comment on column MBT_630_HIS_BAK.B_RPT_DATE is '信息报告日期';
comment on column MBT_630_HIS_BAK.B_SHEET_YEAR is '报表年份';
comment on column MBT_630_HIS_BAK.B_SHEET_TYPE is '报表类型';
comment on column MBT_630_HIS_BAK.B_SHEET_TYPE_DIVIDE is '报表类型细分';
comment on column MBT_630_HIS_BAK.B_AUDIT_FIRM_NAME is '审计事务所名称';
comment on column MBT_630_HIS_BAK.B_AUDITOR_NAME is '审计人员名称';
comment on column MBT_630_HIS_BAK.B_AUDIT_TIME is '审计时间';
comment on column MBT_630_HIS_BAK.B_CIMOC is '客户资料维护机构代码';
comment on column MBT_630_HIS_BAK.B_RPT_DATE_CODE is '报告时点说明代码';
comment on column MBT_630_HIS_BAK.C_CASH_REC_SALES_GOODS_REN_SER is '销售商品和提供劳务收到的现金';
comment on column MBT_630_HIS_BAK.C_TAX_REFUNDS is '收到的税费返还';
comment on column MBT_630_HIS_BAK.C_OTHER_CASH_REC_REL_OPERA_ACT is '收到的其他与经营活动有关现金';
comment on column MBT_630_HIS_BAK.C_TOTAL_CASH_INFLOWS_OPERA_ACT is '经营活动现金流入小计';
comment on column MBT_630_HIS_BAK.C_CASH_PAID_GOODS_SERVICES is '购买商品、接受劳务支付的现金';
comment on column MBT_630_HIS_BAK.C_CASH_PAID_BEHALF_EMPLOYEES is '支付给职工以及为支付的现金';
comment on column MBT_630_HIS_BAK.C_TOTAL_CASH_OUTFLOWS_OPERA_AC is '经营活动现金流出小计';
comment on column MBT_630_HIS_BAK.C_NET_CASH_FLOWS_OPERAT_ACT is '经营活动产生的现金流量净额';
comment on column MBT_630_HIS_BAK.C_CASH_REC_RETURN_INVESTMENT is '收回投资所收到的现金';
comment on column MBT_630_HIS_BAK.C_CASH_RECEIVED_ONVESTMENTS is '取得投资收益所到的现金';
comment on column MBT_630_HIS_BAK.C_NET_CASH_REC_D_F_A_I_A_O_LT is '处置固定资产无形资产和其他长期所收回的现金净额';
comment on column MBT_630_HIS_BAK.C_CASH_RECEIVED_REL_OTHER_ACT is '收到的其他与投资活动有关现金';
comment on column MBT_630_HIS_BAK.C_TOTAL_CASH_INF_INVESTING_ACT is '投资活动现金流入小计';
comment on column MBT_630_HIS_BAK.C_CASH_P_A_F_ASS_I_ASS_OLT_ASS is '构建固定资产无形和其他长期所支付的现金';
comment on column MBT_630_HIS_BAK.C_CASH_PAYMENTS_INVESTMENTS is '投资所支付的现金';
comment on column MBT_630_HIS_BAK.C_CASH_PAYMENTS_RELATED_O_ACT is '支付的其他与投资活动有关现金';
comment on column MBT_630_HIS_BAK.C_TOTAL_CASH_OUTFLOWS_INV_ACT is '投资活动现金流出小计';
comment on column MBT_630_HIS_BAK.C_NET_CASH_FLOWS_INVESTING_ACT is '投资活动产生的现金流量净额';
comment on column MBT_630_HIS_BAK.C_CASH_RECEIVED_FROM_INVESTORS is '吸收投资所到的现金';
comment on column MBT_630_HIS_BAK.C_CASH_FROM_BORROWINGS is '借款所收到的现金';
comment on column MBT_630_HIS_BAK.C_OTHER_CASH_REC_REL_FIN_ACT is '收到的其他与筹资活动有关现金';
comment on column MBT_630_HIS_BAK.C_TOTAL_CASH_INF_FINANCING_ACT is '筹资活动现金流入小计';
comment on column MBT_630_HIS_BAK.C_CASH_REPAYMENTS_FOR_DEBTS is '偿还债务所支付的现金';
comment on column MBT_630_HIS_BAK.C_CASH_PAYMENTS_D_D_PRO_I_EXP is '分配股利、润或偿付息所支的现金';
comment on column MBT_630_HIS_BAK.C_CASH_PAYMENTS_REL_O_FIN_AC is '支付的其他与筹资活动有关现金';
comment on column MBT_630_HIS_BAK.C_TOTAL_CASH_OUTFLOWS_FIN_AC is '筹资活动现金流出小计';
comment on column MBT_630_HIS_BAK.C_NET_CASH_FLOWS_FINANCING_AC is '筹集活动产生的现金流量净额';
comment on column MBT_630_HIS_BAK.C_EFFECT_EX_RATE_CHANGES_CASH is '汇率变动对现金的影响';
comment on column MBT_630_HIS_BAK.C_NET_INC_CASH_CASH_EQUIVALENT is '现金及现金等价物净增加额';
comment on column MBT_630_HIS_BAK.C_NET_PROFIT is '净利润';
comment on column MBT_630_HIS_BAK.C_PROVISION_FOR_ASSETS is '计提的资产减值准备';
comment on column MBT_630_HIS_BAK.C_DEPRECIATION_FIXED_ASSETS is '固定资产拆旧';
comment on column MBT_630_HIS_BAK.C_AMORTISATION_INTANGIBLE_ASS is '无形资产摊销';
comment on column MBT_630_HIS_BAK.C_LONG_TERM_DEFERRED_EXP_AMOR is '长期待摊费用销';
comment on column MBT_630_HIS_BAK.C_DECREASE_DEFFERED_EXPENSES is '待摊费用减少';
comment on column MBT_630_HIS_BAK.C_ADDITION_ACCUED_EXPENSE is '预提费用增加';
comment on column MBT_630_HIS_BAK.C_LOSSES_D_F_ASS_I_ASS_OLT_ASS is '处置固定资产无形和其他长期的损失';
comment on column MBT_630_HIS_BAK.C_LOSSES_SCRAPPING_FIXED_ASS is '固定资产报废损失';
comment on column MBT_630_HIS_BAK.C_FINANCE_EXPENSE is '财务费用';
comment on column MBT_630_HIS_BAK.C_LOSSES_ARSING_INVESTMENT is '投资损失';
comment on column MBT_630_HIS_BAK.C_DEFERRED_TAX_CREDIT is '递延税款贷项';
comment on column MBT_630_HIS_BAK.C_DECREASE_IN_INVENTORIES is '存货的减少';
comment on column MBT_630_HIS_BAK.C_DECREASE_OPERATING_RECEIVABL is '经营性应收项目的减少';
comment on column MBT_630_HIS_BAK.C_INCREASE_OPERATING_RECEIVABL is '经营性应付项目的增加';
comment on column MBT_630_HIS_BAK.C_OTHERS is '（净利润调节为经营活动现金流量科目下）其他 ';
comment on column MBT_630_HIS_BAK.C_NET_CASH_FLOWS_OPERA_ACT_MI is '经营活动产生的现金流量净额';
comment on column MBT_630_HIS_BAK.C_DEBTS_TRANSFER_TO_CAPITAL is '债务转为资本';
comment on column MBT_630_HIS_BAK.C_ONE_YEAR_DUE_CONVERTIBLE_BON is '一年内到期的可转换公司债券';
comment on column MBT_630_HIS_BAK.C_FINANCING_RENT_THE_FIXED_ASS is '融资租入固定产';
comment on column MBT_630_HIS_BAK.C_NON_CASH_OTHERS is '（不涉及现金收支的投资和筹活动科目下）其他';
comment on column MBT_630_HIS_BAK.C_CASH_AT_THE_END_OF_PERIOD is '现金的期末余额';
comment on column MBT_630_HIS_BAK.C_CASH_AT_THE_BEGINNING_PERIOD is '现金的期初余额';
comment on column MBT_630_HIS_BAK.C_CASH_EQUIVALENTS_END_PERIOD is '现金等价物的期末余额';
comment on column MBT_630_HIS_BAK.C_CASH_RQUIVALENTS_BEGIN_PERIO is '现金等价物的期初余额';
comment on column MBT_630_HIS_BAK.C_NET_INCREASE_CASH_CASH_EQU_M is '现金及现等价物净增加额';
comment on column MBT_630_HIS_BAK.D_CASH_REC_SAL_GOO_REN_SERVICE is '销售商品和提供劳务收到的现金';
comment on column MBT_630_HIS_BAK.D_TAX_REFUNDS is '收到的税费返还';
comment on column MBT_630_HIS_BAK.D_OTHER_CASH_REC_REL_OPERA_ACT is '收到的其他与经营活动有关现金';
comment on column MBT_630_HIS_BAK.D_TOTAL_CASH_INFLOWS_OPERAT_AC is '经营活动现金流入小计';
comment on column MBT_630_HIS_BAK.D_CASH_PAID_FOR_GOODS_SERVICES is '购买商品、接受劳务支付的现金';
comment on column MBT_630_HIS_BAK.D_CASH_PAID_BEHALF_OF_EMPLOYEE is '支付给职工以及为支付的现金';
comment on column MBT_630_HIS_BAK.D_PAYMENTS_OF_ALL_TYPES_TAXES is '支付的各项税费支付的各项税费';
comment on column MBT_630_HIS_BAK.D_OTHER_CASH_PAYMENTS_OPERA_AC is '支付其他与经营活动有关的现金';
comment on column MBT_630_HIS_BAK.D_TOTAL_CASH_OUTFLOWS_OPERA_AC is '经营活动现金流出小计';
comment on column MBT_630_HIS_BAK.D_NET_CASH_FLOWS_OPERATING_ACT is '经营活动产生的现金流量净额';
comment on column MBT_630_HIS_BAK.D_CASH_REC_RETURN_INVESTMENT is '收回投资所收到的现金';
comment on column MBT_630_HIS_BAK.D_CASH_REC_ONVESTMENTS is '取得投资收益所到的现金';
comment on column MBT_630_HIS_BAK.D_NET_CASH_R_DFASS_IASS_OLTASS is '处置固定资产无形资产和其他长期所收回的现金净额';
comment on column MBT_630_HIS_BAK.D_NET_CASH_INF_DIS_SUB_O_B_ENT is '处置子公司及其他营业单位收到的现金净额';
comment on column MBT_630_HIS_BAK.D_CASH_REC_REL_OTHER_INVEST_AC is '收到的其他与投资活动有关现金';
comment on column MBT_630_HIS_BAK.D_TOTAL_CASH_INFLOWS_INVEST_AC is '投资活动现金流入小计';
comment on column MBT_630_HIS_BAK.D_CASH_PAID_ACQ_FASS_IASS_ASS is '购建固定资产无形和其他长期所支付的现金';
comment on column MBT_630_HIS_BAK.D_CASH_PAYMENTS_INVESTMENTS is '投资所支付的现金投资所支付的现金';
comment on column MBT_630_HIS_BAK.D_NET_CASH_OUTF_PRO_SUB_OBUNIT is '取得子公司及其他营业单位支付的现金净额';
comment on column MBT_630_HIS_BAK.D_CASH_PAYMENTS_REL_O_I_ACT is '支付的其他与投资活动有关现金';
comment on column MBT_630_HIS_BAK.D_SUB_TOTAL_CASH_OUTFLOWS is '投资活动现金流出小计';
comment on column MBT_630_HIS_BAK.D_NET_CASH_FLOWS_INVEST_ACT is '投资活动产生的现金流量净额';
comment on column MBT_630_HIS_BAK.D_CASH_RECEIVED_INVESTORS is '吸收投资收到的现金';
comment on column MBT_630_HIS_BAK.D_CASH_FROM_BORROWINGS is '取得借款收到的现金';
comment on column MBT_630_HIS_BAK.D_OTHER_CASH_REC_REL_FINA_ACT is '收到的其他与筹资活动有关现金';
comment on column MBT_630_HIS_BAK.D_TOTAL_CASH_INFLOWS_FINA_ACT is '筹资活动现金流入小计';
comment on column MBT_630_HIS_BAK.D_CASH_REPAYMENTS_FOR_DEBTS is '偿还债务所支付的现金';
comment on column MBT_630_HIS_BAK.D_CASH_PAYMENTS_D_DI_P_INT_EXP is '分配股利、润或偿付息所支的现金';
comment on column MBT_630_HIS_BAK.D_CASH_PAYMENTS_REL_O_F_ACT is '支付的其他与筹资活动有关现金';
comment on column MBT_630_HIS_BAK.D_TOTAL_CASH_OUTFLOWS_FINA_ACT is '筹资活动现金流出小计';
comment on column MBT_630_HIS_BAK.D_NET_CASH_FLOWS_FINANCING_ACT is '筹集活动产生的现金流量净额';
comment on column MBT_630_HIS_BAK.D_EFFECT_EXC_RATE_CHANGES_CASH is '汇率变动对现金的影响';
comment on column MBT_630_HIS_BAK.D_NET_INC_CASH_CASH_EQUIVALENT is '现金及现金等价物净增加额';
comment on column MBT_630_HIS_BAK.D_INITIAL_CASH_CASH_EQU_BALANC is '期初现金及等价物余额';
comment on column MBT_630_HIS_BAK.D_THE_FINAL_CASH_EQU_BALANCE is '期末现金及等价物余额';
comment on column MBT_630_HIS_BAK.D_NET_PROFIT is '净利润';
comment on column MBT_630_HIS_BAK.D_PROVISION_ASSET_IMPAIRMENT is '资产减值准备';
comment on column MBT_630_HIS_BAK.D_DEPRECIATION_FIXED_ASSETS is '固定资产折旧、油气资产折耗、生产性生物资产折旧';
comment on column MBT_630_HIS_BAK.D_AMORTISATION_INTANGIBLE_ASS is '无形资产摊销';
comment on column MBT_630_HIS_BAK.D_AMORTISATION_LT_DEFFERED_EXP is '长期待摊费用销';
comment on column MBT_630_HIS_BAK.D_DECREASE_DEFFERED_EXPENSES is '待摊费用减少';
comment on column MBT_630_HIS_BAK.D_ADDITION_OF_ACCUED_EXPENSE is '预提费用增加';
comment on column MBT_630_HIS_BAK.D_LOSSES_DISP_FASS_IASS_OLTASS is '处置固定资产无形和其他长期的损失';
comment on column MBT_630_HIS_BAK.D_LOSSES_SCRAPPING_FIXED_ASS is '固定资产报废损失';
comment on column MBT_630_HIS_BAK.D_PROFIT_LOSS_CHANGES_FAIR_VAL is '公允价值变动损失';
comment on column MBT_630_HIS_BAK.D_FINANCE_EXPENSE is '财务费用';
comment on column MBT_630_HIS_BAK.D_LOSSES_ARSING_INVESTMENT is '投资损失';
comment on column MBT_630_HIS_BAK.D_DEFERRED_INCOME_TAX_ASSETS is '递延所得税资产减少';
comment on column MBT_630_HIS_BAK.D_DEFERRED_INCOME_TAX_LIABILIT is '递延所得税负债增加';
comment on column MBT_630_HIS_BAK.D_DECREASE_IN_INVENTORIES is '存货的减少';
comment on column MBT_630_HIS_BAK.D_DECREASE_OPERATING_RECEIVABL is '经营性应收项目的减少';
comment on column MBT_630_HIS_BAK.D_INCREASE_OPERATING_RECEIVABL is '经营性应付项目的增加';
comment on column MBT_630_HIS_BAK.D_OTHERS is '（净利润调节为经营活动现金流量科目下）其他';
comment on column MBT_630_HIS_BAK.D_NET_CASH_FLOWS_OPERAT_ACT_MI is '经营活动产生的现金流量净额';
comment on column MBT_630_HIS_BAK.D_DEBTS_TRANSFER_TO_CAPITAL is '债务转为资本';
comment on column MBT_630_HIS_BAK.D_ONE_YEAR_DUE_CONVER_BONDS is '一年内到期的可转换公司债券';
comment on column MBT_630_HIS_BAK.D_FINANCING_RENT_FIXED_ASSET is '融资租入固定产';
comment on column MBT_630_HIS_BAK.D_NON_CASH_OTHERS is '（不涉及现金收支的投资和筹活动科目下）其他';
comment on column MBT_630_HIS_BAK.D_CASH_AT_THE_END_OF_PERIOD is '现金的期末余额';
comment on column MBT_630_HIS_BAK.D_CASH_AT_THE_BEGINNING_PERIOD is '现金的期初余额';
comment on column MBT_630_HIS_BAK.D_CASH_EQUIVALENTS_AT_THE_PERI is '现金等价物的期末余额';
comment on column MBT_630_HIS_BAK.D_CASH_RQUIVALENTS_BEGIN_PERIO is '现金等价物的期初余额';
comment on column MBT_630_HIS_BAK.D_NET_INCREASE_CASH_EQUIVAL_MI is '现金及现等价物净增加额';
comment on column MBT_630_HIS_BAK.REMARKS is '备注';
comment on column MBT_630_HIS_BAK.CHECK_FLAG is '校验标识';
comment on column MBT_630_HIS_BAK.CHECK_DESC is '校验结果';
comment on column MBT_630_HIS_BAK.CHECK_ERR_TYPE is '校验失败类型';
comment on column MBT_630_HIS_BAK.NEXT_ACTION is '下一动作';
comment on column MBT_630_HIS_BAK.DATA_STATUS is '数据状态';
comment on column MBT_630_HIS_BAK.DATA_FLAG is '数据是否已删除';
comment on column MBT_630_HIS_BAK.DATA_SOURCE is '数据来源';
comment on column MBT_630_HIS_BAK.DATA_VERSION is '数据版本号';
comment on column MBT_630_HIS_BAK.DATA_REJ_DESC is '数据审核拒绝描述';
comment on column MBT_630_HIS_BAK.DATA_DEL_DESC is '数据删除描述';
comment on column MBT_630_HIS_BAK.DATA_CRT_USER is '数据创建/导入用户';
comment on column MBT_630_HIS_BAK.DATA_CRT_DATE is '数据创建/导入日期';
comment on column MBT_630_HIS_BAK.DATA_CRT_TIME is '数据创建/导入时间';
comment on column MBT_630_HIS_BAK.DATA_CHG_USER is '数据修改/删除用户';
comment on column MBT_630_HIS_BAK.DATA_CHG_DATE is '数据修改/删除日期';
comment on column MBT_630_HIS_BAK.DATA_CHG_TIME is '数据修改/删除时间';
comment on column MBT_630_HIS_BAK.DATA_APV_USER is '数据审核/拒绝用户';
comment on column MBT_630_HIS_BAK.DATA_APV_DATE is '数据审核/拒绝日期';
comment on column MBT_630_HIS_BAK.DATA_APV_TIME is '数据审核/拒绝时间';
comment on column MBT_630_HIS_BAK.RSV1 is '扩展字段1';
comment on column MBT_630_HIS_BAK.RSV2 is '扩展字段2';
comment on column MBT_630_HIS_BAK.RSV3 is '扩展字段3';
comment on column MBT_630_HIS_BAK.RSV4 is '扩展字段4';
comment on column MBT_630_HIS_BAK.RSV5 is '扩展字段5';
comment on column MBT_630_HIS_BAK.ODS_DATA_ID is 'ODS数据ID';
comment on column MBT_630_HIS_BAK.HIS_DATE is '信息同步日期';
comment on column MBT_630_HIS_BAK.C_ONE_YEAR_DUE_CONVERTIBLE_BO is '一年内到期的可转换公司债券';
comment on column MBT_630_HIS_BAK.IS_RPT is '是否上报';
comment on column MBT_630_HIS_BAK.FB_STATUS is '反馈状态';
comment on column MBT_630_HIS_BAK.RPT_FILE_NAME is '上报文件名';

create table MBT_640_HIS_BAK
(
    DATA_ID                        CHAR(32) not null primary key,
    DATA_DATE                      CHAR(8),
    CORP_ID                        VARCHAR2(14),
    ORG_ID                         VARCHAR2(14),
    GROUP_ID                       VARCHAR2(14),
    INQ_ORG_ID                     CHAR(24),
    INQ_GROUP_ID                   CHAR(24),
    B_INF_REC_TYPE                 CHAR(3),
    B_ENT_NAME                     NVARCHAR2(80),
    B_ENT_CERT_TYPE                VARCHAR2(2),
    B_ENT_CERT_NUM                 VARCHAR2(40),
    B_RPT_DATE                     CHAR(8),
    B_SHEET_YEAR                   CHAR(4),
    B_SHEET_TYPE                   VARCHAR2(2),
    B_SHEET_TYPE_DIVIDE            VARCHAR2(2),
    B_AUDIT_FIRM_NAME              NVARCHAR2(80),
    B_AUDITOR_NAME                 NVARCHAR2(30),
    B_AUDIT_TIME                   CHAR(8),
    B_CIMOC                        VARCHAR2(14),
    B_RPT_DATE_CODE                CHAR(2),
    C_CURRENCY_FUNDS               NUMBER(17, 2),
    C_SHORT_TERM_INVESTMENTS       NUMBER(17, 2),
    C_AMOUNT_OF_FINANCIAL_RETURN   NUMBER(17, 2),
    C_NOTES_RECEIVABLE             NUMBER(17, 2),
    C_ACCOUNTS_RECEIVABLE          NUMBER(17, 2),
    C_PREPAYMENTS                  NUMBER(17, 2),
    C_OTHER_RECEIVABLES            NUMBER(17, 2),
    C_INVENTORIES                  NUMBER(17, 2),
    C_OTHER_CURRENT_ASSETS         NUMBER(17, 2),
    C_TOTAL_CURRENT_ASSETS         NUMBER(17, 2),
    C_LONG_TERM_INVESTMENT         NUMBER(17, 2),
    C_FIXED_ASSETS                 NUMBER(17, 2),
    C_ORIGINAL_COST_FIXED_ASSET    NUMBER(17, 2),
    C_FIXED_ASSET_ACC_DEPRECIATION NUMBER(17, 2),
    C_CONSTRUCTION_IN_PROCESS      NUMBER(17, 2),
    C_INTANGIBLE_ASSETS            NUMBER(17, 2),
    C_ORIGINAL_PRICE_INTAN_ASSETS  NUMBER(17, 2),
    C_ACCUMULATED_AMORTIZATION     NUMBER(17, 2),
    C_ASSETS_PROCESSED_PENDING_PRO NUMBER(17, 2),
    C_TOTAL_NON_CURRENT_ASSETS     NUMBER(17, 2),
    C_TOTAL_ASSETS                 NUMBER(17, 2),
    C_SHORT_TERM_BORROWINGS        NUMBER(17, 2),
    C_TAX_PAYABLE                  NUMBER(17, 2),
    C_TREASURY_PAYABLE             NUMBER(17, 2),
    C_PAYABLE_FINANCIAL_SPECIAL_AC NUMBER(17, 2),
    C_EMPLOYEE_BENEFITS_PAYABLE    NUMBER(17, 2),
    C_NOTES_PAYABLE                NUMBER(17, 2),
    C_ACCOUNTS_PAYABLE             NUMBER(17, 2),
    C_RECEIPTS_INADVANCE           NUMBER(17, 2),
    C_OTHER_PAYABLES               NUMBER(17, 2),
    C_OTHER_CURRENT_LIABILITIES    NUMBER(17, 2),
    C_TOTAL_CURRENT_LIABILITIES    NUMBER(17, 2),
    C_LONG_TERM_BORROWINGS         NUMBER(17, 2),
    C_LONG_TERM_PAYABLES           NUMBER(17, 2),
    C_TOTAL_NON_CURRENT_LIABILITIE NUMBER(17, 2),
    C_TOTAL_LIABILITIES            NUMBER(17, 2),
    C_ENTERPRISE_FUND              NUMBER(17, 2),
    C_NON_CURRENT_ASSETS_FUND      NUMBER(17, 2),
    C_SPECIAL_PURPOSE_FUNDS        NUMBER(17, 2),
    C_FINANCIAL_AID_CARRIED_OVER   NUMBER(17, 2),
    C_FINANCIAL_AID_BALANCE        NUMBER(17, 2),
    C_NON_FINANCIAL_AID_CARR_OVER  NUMBER(17, 2),
    C_NON_FINANCIAL_AID_BALANCE    NUMBER(17, 2),
    C_UNDERTAKINGS_BALANCE         NUMBER(17, 2),
    C_OPERATING_BALANCE            NUMBER(17, 2),
    C_TOTAL_NET_ASSETS             NUMBER(17, 2),
    C_TOTAL_LIABILITIES_NET_ASSETS NUMBER(17, 2),
    D_DATA_DESC                    NVARCHAR2(256),
    REMARKS                        NVARCHAR2(512),
    CHECK_FLAG                     CHAR,
    CHECK_DESC                     VARCHAR2(512),
    CHECK_ERR_TYPE                 CHAR,
    NEXT_ACTION                    CHAR(2),
    DATA_STATUS                    CHAR(2),
    DATA_FLAG                      CHAR,
    DATA_SOURCE                    CHAR,
    DATA_VERSION                   NUMBER(8),
    DATA_REJ_DESC                  NVARCHAR2(128),
    DATA_DEL_DESC                  NVARCHAR2(128),
    DATA_CRT_USER                  VARCHAR2(20),
    DATA_CRT_DATE                  CHAR(8),
    DATA_CRT_TIME                  CHAR(14),
    DATA_CHG_USER                  VARCHAR2(20),
    DATA_CHG_DATE                  CHAR(8),
    DATA_CHG_TIME                  CHAR(14),
    DATA_APV_USER                  VARCHAR2(20),
    DATA_APV_DATE                  CHAR(8),
    DATA_APV_TIME                  CHAR(14),
    RSV1                           VARCHAR2(180),
    RSV2                           VARCHAR2(180),
    RSV3                           VARCHAR2(180),
    RSV4                           VARCHAR2(180),
    RSV5                           VARCHAR2(180),
    ODS_DATA_ID                    CHAR(32),
    HIS_DATE                       CHAR(8),
    HIS_TIME                       CHAR(14),
    IS_RPT                         VARCHAR2(64),
    FB_STATUS                      CHAR(2),
    RPT_FILE_NAME                  VARCHAR2(512),
    B_CUST_NO                      NVARCHAR2(64)
);
comment on column MBT_640_HIS_BAK.DATA_ID is '主键';
comment on column MBT_640_HIS_BAK.DATA_DATE is '数据日期';
comment on column MBT_640_HIS_BAK.CORP_ID is '法人机构号';
comment on column MBT_640_HIS_BAK.ORG_ID is '分行机构号';
comment on column MBT_640_HIS_BAK.GROUP_ID is '部门编号';
comment on column MBT_640_HIS_BAK.INQ_ORG_ID is '查询机构号';
comment on column MBT_640_HIS_BAK.INQ_GROUP_ID is '查询组号';
comment on column MBT_640_HIS_BAK.B_INF_REC_TYPE is '信息记录类型';
comment on column MBT_640_HIS_BAK.B_ENT_NAME is '企业名称';
comment on column MBT_640_HIS_BAK.B_ENT_CERT_TYPE is '企业身份标识类型';
comment on column MBT_640_HIS_BAK.B_ENT_CERT_NUM is '企业身份标识号码';
comment on column MBT_640_HIS_BAK.B_RPT_DATE is '信息报告日期';
comment on column MBT_640_HIS_BAK.B_SHEET_YEAR is '报表年份';
comment on column MBT_640_HIS_BAK.B_SHEET_TYPE is '报表类型';
comment on column MBT_640_HIS_BAK.B_SHEET_TYPE_DIVIDE is '报表类型细分';
comment on column MBT_640_HIS_BAK.B_AUDIT_FIRM_NAME is '审计事务所名称';
comment on column MBT_640_HIS_BAK.B_AUDITOR_NAME is '审计人员名称';
comment on column MBT_640_HIS_BAK.B_AUDIT_TIME is '审计时间';
comment on column MBT_640_HIS_BAK.B_CIMOC is '客户资料维护机构代码';
comment on column MBT_640_HIS_BAK.B_RPT_DATE_CODE is '报告时点说明代码';
comment on column MBT_640_HIS_BAK.C_CURRENCY_FUNDS is '货币资金';
comment on column MBT_640_HIS_BAK.C_SHORT_TERM_INVESTMENTS is '短期投资';
comment on column MBT_640_HIS_BAK.C_AMOUNT_OF_FINANCIAL_RETURN is '财政应返还额度';
comment on column MBT_640_HIS_BAK.C_NOTES_RECEIVABLE is '应收票据';
comment on column MBT_640_HIS_BAK.C_ACCOUNTS_RECEIVABLE is '应收账款';
comment on column MBT_640_HIS_BAK.C_PREPAYMENTS is '预付账款';
comment on column MBT_640_HIS_BAK.C_OTHER_RECEIVABLES is '其他应收款';
comment on column MBT_640_HIS_BAK.C_INVENTORIES is '存货';
comment on column MBT_640_HIS_BAK.C_OTHER_CURRENT_ASSETS is '其他流动资产';
comment on column MBT_640_HIS_BAK.C_TOTAL_CURRENT_ASSETS is '流动资产合计';
comment on column MBT_640_HIS_BAK.C_LONG_TERM_INVESTMENT is '长期投资';
comment on column MBT_640_HIS_BAK.C_FIXED_ASSETS is '固定资产';
comment on column MBT_640_HIS_BAK.C_ORIGINAL_COST_FIXED_ASSET is '固定资产原价';
comment on column MBT_640_HIS_BAK.C_FIXED_ASSET_ACC_DEPRECIATION is '累计折旧';
comment on column MBT_640_HIS_BAK.C_CONSTRUCTION_IN_PROCESS is '在建工程';
comment on column MBT_640_HIS_BAK.C_INTANGIBLE_ASSETS is '无形资产';
comment on column MBT_640_HIS_BAK.C_ORIGINAL_PRICE_INTAN_ASSETS is '无形资产原价';
comment on column MBT_640_HIS_BAK.C_ACCUMULATED_AMORTIZATION is '累计摊销';
comment on column MBT_640_HIS_BAK.C_ASSETS_PROCESSED_PENDING_PRO is '待处置资产损溢';
comment on column MBT_640_HIS_BAK.C_TOTAL_NON_CURRENT_ASSETS is '非流动资产合计';
comment on column MBT_640_HIS_BAK.C_TOTAL_ASSETS is '资产总计';
comment on column MBT_640_HIS_BAK.C_SHORT_TERM_BORROWINGS is '短期借款';
comment on column MBT_640_HIS_BAK.C_TAX_PAYABLE is '应缴税费';
comment on column MBT_640_HIS_BAK.C_TREASURY_PAYABLE is '应缴国库款';
comment on column MBT_640_HIS_BAK.C_PAYABLE_FINANCIAL_SPECIAL_AC is '应缴财政专户款';
comment on column MBT_640_HIS_BAK.C_EMPLOYEE_BENEFITS_PAYABLE is '应付职工薪酬';
comment on column MBT_640_HIS_BAK.C_NOTES_PAYABLE is '应付票据';
comment on column MBT_640_HIS_BAK.C_ACCOUNTS_PAYABLE is '应付账款';
comment on column MBT_640_HIS_BAK.C_RECEIPTS_INADVANCE is '预收账款';
comment on column MBT_640_HIS_BAK.C_OTHER_PAYABLES is '其他应付款';
comment on column MBT_640_HIS_BAK.C_OTHER_CURRENT_LIABILITIES is '其他流动负债';
comment on column MBT_640_HIS_BAK.C_TOTAL_CURRENT_LIABILITIES is '流动负债合计';
comment on column MBT_640_HIS_BAK.C_LONG_TERM_BORROWINGS is '长期借款';
comment on column MBT_640_HIS_BAK.C_LONG_TERM_PAYABLES is '长期应付款';
comment on column MBT_640_HIS_BAK.C_TOTAL_NON_CURRENT_LIABILITIE is '非流动负债合计';
comment on column MBT_640_HIS_BAK.C_TOTAL_LIABILITIES is '负债合计';
comment on column MBT_640_HIS_BAK.C_ENTERPRISE_FUND is '事业基金';
comment on column MBT_640_HIS_BAK.C_NON_CURRENT_ASSETS_FUND is '非流动资产基金';
comment on column MBT_640_HIS_BAK.C_SPECIAL_PURPOSE_FUNDS is '专用基金';
comment on column MBT_640_HIS_BAK.C_FINANCIAL_AID_CARRIED_OVER is '财政补助结转';
comment on column MBT_640_HIS_BAK.C_FINANCIAL_AID_BALANCE is '财政补助结余';
comment on column MBT_640_HIS_BAK.C_NON_FINANCIAL_AID_CARR_OVER is '非财政补助结转';
comment on column MBT_640_HIS_BAK.C_NON_FINANCIAL_AID_BALANCE is '非财政补助结余';
comment on column MBT_640_HIS_BAK.C_UNDERTAKINGS_BALANCE is '事业结余';
comment on column MBT_640_HIS_BAK.C_OPERATING_BALANCE is '经营结余';
comment on column MBT_640_HIS_BAK.C_TOTAL_NET_ASSETS is '净资产合计';
comment on column MBT_640_HIS_BAK.C_TOTAL_LIABILITIES_NET_ASSETS is '负债和净资产总计';
comment on column MBT_640_HIS_BAK.D_DATA_DESC is '记录描述';
comment on column MBT_640_HIS_BAK.REMARKS is '备注';
comment on column MBT_640_HIS_BAK.CHECK_FLAG is '校验标识';
comment on column MBT_640_HIS_BAK.CHECK_DESC is '校验结果';
comment on column MBT_640_HIS_BAK.CHECK_ERR_TYPE is '校验失败类型';
comment on column MBT_640_HIS_BAK.NEXT_ACTION is '下一动作';
comment on column MBT_640_HIS_BAK.DATA_STATUS is '数据状态';
comment on column MBT_640_HIS_BAK.DATA_FLAG is '数据是否已删除';
comment on column MBT_640_HIS_BAK.DATA_SOURCE is '数据来源';
comment on column MBT_640_HIS_BAK.DATA_VERSION is '数据版本号';
comment on column MBT_640_HIS_BAK.DATA_REJ_DESC is '数据审核拒绝描述';
comment on column MBT_640_HIS_BAK.DATA_DEL_DESC is '数据删除描述';
comment on column MBT_640_HIS_BAK.DATA_CRT_USER is '数据创建/导入用户';
comment on column MBT_640_HIS_BAK.DATA_CRT_DATE is '数据创建/导入日期';
comment on column MBT_640_HIS_BAK.DATA_CRT_TIME is '数据创建/导入时间';
comment on column MBT_640_HIS_BAK.DATA_CHG_USER is '数据修改/删除用户';
comment on column MBT_640_HIS_BAK.DATA_CHG_DATE is '数据修改/删除日期';
comment on column MBT_640_HIS_BAK.DATA_CHG_TIME is '数据修改/删除时间';
comment on column MBT_640_HIS_BAK.DATA_APV_USER is '数据审核/拒绝用户';
comment on column MBT_640_HIS_BAK.DATA_APV_DATE is '数据审核/拒绝日期';
comment on column MBT_640_HIS_BAK.DATA_APV_TIME is '数据审核/拒绝时间';
comment on column MBT_640_HIS_BAK.RSV1 is '扩展字段1';
comment on column MBT_640_HIS_BAK.RSV2 is '扩展字段2';
comment on column MBT_640_HIS_BAK.RSV3 is '扩展字段3';
comment on column MBT_640_HIS_BAK.RSV4 is '扩展字段4';
comment on column MBT_640_HIS_BAK.RSV5 is '扩展字段5';
comment on column MBT_640_HIS_BAK.ODS_DATA_ID is 'ODS数据ID';
comment on column MBT_640_HIS_BAK.HIS_DATE is '信息同步日期';
comment on column MBT_640_HIS_BAK.IS_RPT is '是否上报';
comment on column MBT_640_HIS_BAK.FB_STATUS is '反馈状态';
comment on column MBT_640_HIS_BAK.RPT_FILE_NAME is '上报文件名';

create table MBT_650_HIS_BAK
(
    DATA_ID                        CHAR(32) not null primary key,
    DATA_DATE                      CHAR(8),
    CORP_ID                        VARCHAR2(14),
    ORG_ID                         VARCHAR2(14),
    GROUP_ID                       VARCHAR2(14),
    INQ_ORG_ID                     CHAR(24),
    INQ_GROUP_ID                   CHAR(24),
    B_INF_REC_TYPE                 CHAR(3),
    B_ENT_NAME                     NVARCHAR2(80),
    B_ENT_CERT_TYPE                VARCHAR2(2),
    B_ENT_CERT_NUM                 VARCHAR2(40),
    B_RPT_DATE                     CHAR(8),
    B_SHEET_YEAR                   CHAR(4),
    B_SHEET_TYPE                   VARCHAR2(2),
    B_SHEET_TYPE_DIVIDE            VARCHAR2(2),
    B_AUDIT_FIRM_NAME              NVARCHAR2(80),
    B_AUDITOR_NAME                 NVARCHAR2(30),
    B_AUDIT_TIME                   CHAR(8),
    B_CIMOC                        VARCHAR2(14),
    B_RPT_DATE_CODE                CHAR(2),
    C_CURRENT_FINAN_SUB_CAR_OVER_B NUMBER(17, 2),
    C_FINANCIAL_SUBSIDY_REVENUE    NUMBER(17, 2),
    C_UNDERTAKINGS_EXP_FIN_SUB_EXP NUMBER(17, 2),
    C_CURRENT_UNDERTAK_CAR_OVER_B  NUMBER(17, 2),
    C_UNDERTAKINGS_CLASS_REVENUE   NUMBER(17, 2),
    C_UNDERTAKINGS_REVENUE         NUMBER(17, 2),
    C_SUPERIOR_SUBSIDY_REVENUE     NUMBER(17, 2),
    C_REVENUE_TURNED_OVER_SUB_UNIT NUMBER(17, 2),
    C_OTHER_REVENUE                NUMBER(17, 2),
    C_DONATION_INCOME              NUMBER(17, 2),
    C_UNDERTAKINGS_CLASS_EXPENDIT  NUMBER(17, 2),
    C_UNDERTAKINGS_NON_FIN_SUB_EXP NUMBER(17, 2),
    C_PAYMENT_THE_HIGHER_AUTHORITY NUMBER(17, 2),
    C_GRANT_AUXILIARY_ORGANIZATION NUMBER(17, 2),
    C_OTHER_EXPENDITURE            NUMBER(17, 2),
    C_CURRENT_OPERATING_BALANCE    NUMBER(17, 2),
    C_OPERATING_REVENUE            NUMBER(17, 2),
    C_OPERATING_EXPENDITURE        NUMBER(17, 2),
    C_OPERATING_BALANCE_P_YO_LOSS  NUMBER(17, 2),
    C_NON_FINA_SUB_CAR_O_BAL_TYEAR NUMBER(17, 2),
    C_NON_FINANCIAL_AID_CARRIED_O  NUMBER(17, 2),
    C_NON_FINANCIAL_AID_BAL_TYEAR  NUMBER(17, 2),
    C_ENTERPRISE_INCOME_TAX_PAYABL NUMBER(17, 2),
    C_SPECIAL_FUNDS_TO_EXTRACT     NUMBER(17, 2),
    C_PUBLIC_FUND_TURNED_INTO      NUMBER(17, 2),
    D_DATA_DESC                    NVARCHAR2(256),
    REMARKS                        NVARCHAR2(512),
    CHECK_FLAG                     CHAR,
    CHECK_DESC                     VARCHAR2(512),
    CHECK_ERR_TYPE                 CHAR,
    NEXT_ACTION                    CHAR(2),
    DATA_STATUS                    CHAR(2),
    DATA_FLAG                      CHAR,
    DATA_SOURCE                    CHAR,
    DATA_VERSION                   NUMBER(8),
    DATA_REJ_DESC                  NVARCHAR2(128),
    DATA_DEL_DESC                  NVARCHAR2(128),
    DATA_CRT_USER                  VARCHAR2(20),
    DATA_CRT_DATE                  CHAR(8),
    DATA_CRT_TIME                  CHAR(14),
    DATA_CHG_USER                  VARCHAR2(20),
    DATA_CHG_DATE                  CHAR(8),
    DATA_CHG_TIME                  CHAR(14),
    DATA_APV_USER                  VARCHAR2(20),
    DATA_APV_DATE                  CHAR(8),
    DATA_APV_TIME                  CHAR(14),
    RSV1                           VARCHAR2(180),
    RSV2                           VARCHAR2(180),
    RSV3                           VARCHAR2(180),
    RSV4                           VARCHAR2(180),
    RSV5                           VARCHAR2(180),
    ODS_DATA_ID                    CHAR(32),
    HIS_DATE                       CHAR(8),
    HIS_TIME                       CHAR(14),
    IS_RPT                         VARCHAR2(64),
    FB_STATUS                      CHAR(2),
    RPT_FILE_NAME                  VARCHAR2(512),
    B_CUST_NO                      NVARCHAR2(64)
);
comment on column MBT_650_HIS_BAK.DATA_ID is '主键';
comment on column MBT_650_HIS_BAK.DATA_DATE is '数据日期';
comment on column MBT_650_HIS_BAK.CORP_ID is '法人机构号';
comment on column MBT_650_HIS_BAK.ORG_ID is '分行机构号';
comment on column MBT_650_HIS_BAK.GROUP_ID is '部门编号';
comment on column MBT_650_HIS_BAK.INQ_ORG_ID is '查询机构号';
comment on column MBT_650_HIS_BAK.INQ_GROUP_ID is '查询组号';
comment on column MBT_650_HIS_BAK.B_INF_REC_TYPE is '信息记录类型';
comment on column MBT_650_HIS_BAK.B_ENT_NAME is '企业名称';
comment on column MBT_650_HIS_BAK.B_ENT_CERT_TYPE is '企业身份标识类型';
comment on column MBT_650_HIS_BAK.B_ENT_CERT_NUM is '企业身份标识号码';
comment on column MBT_650_HIS_BAK.B_RPT_DATE is '信息报告日期';
comment on column MBT_650_HIS_BAK.B_SHEET_YEAR is '报表年份';
comment on column MBT_650_HIS_BAK.B_SHEET_TYPE is '报表类型';
comment on column MBT_650_HIS_BAK.B_SHEET_TYPE_DIVIDE is '报表类型细分';
comment on column MBT_650_HIS_BAK.B_AUDIT_FIRM_NAME is '审计事务所名称';
comment on column MBT_650_HIS_BAK.B_AUDITOR_NAME is '审计人员名称';
comment on column MBT_650_HIS_BAK.B_AUDIT_TIME is '审计时间';
comment on column MBT_650_HIS_BAK.B_CIMOC is '客户资料维护机构代码';
comment on column MBT_650_HIS_BAK.B_RPT_DATE_CODE is '报告时点说明代码';
comment on column MBT_650_HIS_BAK.C_CURRENT_FINAN_SUB_CAR_OVER_B is '本期财政补助结转余';
comment on column MBT_650_HIS_BAK.C_FINANCIAL_SUBSIDY_REVENUE is '财政补助收入';
comment on column MBT_650_HIS_BAK.C_UNDERTAKINGS_EXP_FIN_SUB_EXP is '事业支出（财政补助）';
comment on column MBT_650_HIS_BAK.C_CURRENT_UNDERTAK_CAR_OVER_B is '本期事业结转余';
comment on column MBT_650_HIS_BAK.C_UNDERTAKINGS_CLASS_REVENUE is '事业类收入';
comment on column MBT_650_HIS_BAK.C_UNDERTAKINGS_REVENUE is '事业收入';
comment on column MBT_650_HIS_BAK.C_SUPERIOR_SUBSIDY_REVENUE is '上级补助收入';
comment on column MBT_650_HIS_BAK.C_REVENUE_TURNED_OVER_SUB_UNIT is '附属单位上缴收入';
comment on column MBT_650_HIS_BAK.C_OTHER_REVENUE is '其他收入';
comment on column MBT_650_HIS_BAK.C_DONATION_INCOME is '（其他收入科目下）捐赠';
comment on column MBT_650_HIS_BAK.C_UNDERTAKINGS_CLASS_EXPENDIT is '事业类支出';
comment on column MBT_650_HIS_BAK.C_UNDERTAKINGS_NON_FIN_SUB_EXP is '事业支出（非财政补助）';
comment on column MBT_650_HIS_BAK.C_PAYMENT_THE_HIGHER_AUTHORITY is '上缴级支出';
comment on column MBT_650_HIS_BAK.C_GRANT_AUXILIARY_ORGANIZATION is '对附属单位补助支出';
comment on column MBT_650_HIS_BAK.C_OTHER_EXPENDITURE is '其他支出';
comment on column MBT_650_HIS_BAK.C_CURRENT_OPERATING_BALANCE is '本期经营结余';
comment on column MBT_650_HIS_BAK.C_OPERATING_REVENUE is '经营收入';
comment on column MBT_650_HIS_BAK.C_OPERATING_EXPENDITURE is '经营支出';
comment on column MBT_650_HIS_BAK.C_OPERATING_BALANCE_P_YO_LOSS is '弥补以前年度亏损后的经营结余';
comment on column MBT_650_HIS_BAK.C_NON_FINA_SUB_CAR_O_BAL_TYEAR is '本年非财政补助结转余';
comment on column MBT_650_HIS_BAK.C_NON_FINANCIAL_AID_CARRIED_O is '非财政补助结转';
comment on column MBT_650_HIS_BAK.C_NON_FINANCIAL_AID_BAL_TYEAR is '本年非财政补助结余';
comment on column MBT_650_HIS_BAK.C_ENTERPRISE_INCOME_TAX_PAYABL is '应缴企业所得税';
comment on column MBT_650_HIS_BAK.C_SPECIAL_FUNDS_TO_EXTRACT is '提取专用基金';
comment on column MBT_650_HIS_BAK.C_PUBLIC_FUND_TURNED_INTO is '转入事业基金';
comment on column MBT_650_HIS_BAK.D_DATA_DESC is '记录描述';
comment on column MBT_650_HIS_BAK.REMARKS is '备注';
comment on column MBT_650_HIS_BAK.CHECK_FLAG is '校验标识';
comment on column MBT_650_HIS_BAK.CHECK_DESC is '校验结果';
comment on column MBT_650_HIS_BAK.CHECK_ERR_TYPE is '校验失败类型';
comment on column MBT_650_HIS_BAK.NEXT_ACTION is '下一动作';
comment on column MBT_650_HIS_BAK.DATA_STATUS is '数据状态';
comment on column MBT_650_HIS_BAK.DATA_FLAG is '数据是否已删除';
comment on column MBT_650_HIS_BAK.DATA_SOURCE is '数据来源';
comment on column MBT_650_HIS_BAK.DATA_VERSION is '数据版本号';
comment on column MBT_650_HIS_BAK.DATA_REJ_DESC is '数据审核拒绝描述';
comment on column MBT_650_HIS_BAK.DATA_DEL_DESC is '数据删除描述';
comment on column MBT_650_HIS_BAK.DATA_CRT_USER is '数据创建/导入用户';
comment on column MBT_650_HIS_BAK.DATA_CRT_DATE is '数据创建/导入日期';
comment on column MBT_650_HIS_BAK.DATA_CRT_TIME is '数据创建/导入时间';
comment on column MBT_650_HIS_BAK.DATA_CHG_USER is '数据修改/删除用户';
comment on column MBT_650_HIS_BAK.DATA_CHG_DATE is '数据修改/删除日期';
comment on column MBT_650_HIS_BAK.DATA_CHG_TIME is '数据修改/删除时间';
comment on column MBT_650_HIS_BAK.DATA_APV_USER is '数据审核/拒绝用户';
comment on column MBT_650_HIS_BAK.DATA_APV_DATE is '数据审核/拒绝日期';
comment on column MBT_650_HIS_BAK.DATA_APV_TIME is '数据审核/拒绝时间';
comment on column MBT_650_HIS_BAK.RSV1 is '扩展字段1';
comment on column MBT_650_HIS_BAK.RSV2 is '扩展字段2';
comment on column MBT_650_HIS_BAK.RSV3 is '扩展字段3';
comment on column MBT_650_HIS_BAK.RSV4 is '扩展字段4';
comment on column MBT_650_HIS_BAK.RSV5 is '扩展字段5';
comment on column MBT_650_HIS_BAK.ODS_DATA_ID is 'ODS数据ID';
comment on column MBT_650_HIS_BAK.HIS_DATE is '信息同步日期';
comment on column MBT_650_HIS_BAK.IS_RPT is '是否上报';
comment on column MBT_650_HIS_BAK.FB_STATUS is '反馈状态';
comment on column MBT_650_HIS_BAK.RPT_FILE_NAME is '上报文件名';



create table MBT_110_RPT_BAK
(
    DATA_ID              CHAR(32) not null primary key,
    DATA_DATE            CHAR(8),
    CORP_ID              VARCHAR2(14),
    ORG_ID               VARCHAR2(14),
    CUST_NO              VARCHAR2(32),
    GROUP_ID             VARCHAR2(14),
    INQ_ORG_ID           CHAR(24),
    INQ_GROUP_ID         CHAR(24),
    B_INF_REC_TYPE       CHAR(3),
    B_NAME               NVARCHAR2(30),
    B_ID_TYPE            VARCHAR2(2),
    B_ID_NUM             NVARCHAR2(20),
    B_INF_SURC_CODE      VARCHAR2(20),
    B_RPT_DATE           CHAR(8),
    B_RPT_DATE_CODE      CHAR(2),
    B_CIMOC              VARCHAR2(14),
    B_CUSTOMER_TYPE      VARCHAR2(2),
    C_ID_INFO_UP_DATE    CHAR(8),
    D_SEX                CHAR,
    D_DOB                CHAR(8),
    D_NATION             CHAR(3),
    D_HOUSE_ADD          NVARCHAR2(100),
    D_HH_DIST            CHAR(6),
    D_CELL_PHONE         CHAR(12),
    D_EMAIL              NVARCHAR2(60),
    D_FCS_INFO_UP_DATE   CHAR(8),
    E_MARI_STATUS        CHAR(2),
    E_SPO_NAME           NVARCHAR2(30),
    E_SPO_ID_TYPE        VARCHAR2(2),
    E_SPO_ID_NUM         NVARCHAR2(20),
    E_SPO_TEL            NVARCHAR2(25),
    E_SPS_CMPY_NM        NVARCHAR2(80),
    E_SPS_INFO_UP_DATE   CHAR(8),
    F_EDU_LEVEL          CHAR(2),
    F_ACA_DEGREE         CHAR,
    F_EDU_INFO_UP_DATE   CHAR(8),
    G_EMP_STATUS         CHAR(2),
    G_CPN_NAME           NVARCHAR2(80),
    G_CPN_TYPE           VARCHAR2(2),
    G_INDUSTRY           CHAR,
    G_CPN_ADDR           NVARCHAR2(100),
    G_CPN_PC             CHAR(6),
    G_CPN_DIST           CHAR(6),
    G_CPN_TEL            NVARCHAR2(25),
    G_OCCUPATION         CHAR,
    G_TITLE              CHAR,
    G_TECH_TITLE         CHAR,
    G_WORK_START_DATE    CHAR(4),
    G_OCTPN_INFO_UP_DATE CHAR(8),
    H_RESI_STATUS        VARCHAR2(2),
    H_RESI_ADDR          NVARCHAR2(100),
    H_RESI_PC            CHAR(6),
    H_RESI_DIST          CHAR(6),
    H_HOME_TEL           NVARCHAR2(25),
    H_RESI_INFO_UP_DATE  CHAR(8),
    I_MAIL_ADDR          NVARCHAR2(100),
    I_MAIL_PC            CHAR(6),
    I_MAIL_DIST          CHAR(6),
    I_MLG_INFO_UP_DATE   CHAR(8),
    J_ANNL_INC           NUMBER(15),
    J_TAX_INCOME         NUMBER(15),
    J_INC_INFO_UP_DATE   CHAR(8),
    REMARKS              NVARCHAR2(512),
    CHECK_FLAG           CHAR,
    CHECK_DESC           NVARCHAR2(512),
    CHECK_ERR_TYPE       CHAR,
    NEXT_ACTION          CHAR(2),
    DATA_STATUS          CHAR(2),
    DATA_FLAG            CHAR,
    DATA_SOURCE          CHAR,
    DATA_VERSION         NUMBER(8),
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
    RSV1                 NVARCHAR2(180),
    RSV2                 NVARCHAR2(180),
    RSV3                 NVARCHAR2(180),
    RSV4                 NVARCHAR2(180),
    RSV5                 NVARCHAR2(180),
    DATA_DESC            NVARCHAR2(256),
    ODS_DATA_ID          CHAR(32),
    RPT_TIME             CHAR(14),
    RPT_DATE             CHAR(8),
    IS_RPT               VARCHAR2(64),
    ROW_NUM              NUMBER,
    FB_STATUS            CHAR(2),
    RPT_FILE_NAME        VARCHAR2(512),
    FB_MSG               VARCHAR2(1024),
    J_ANNL_INC_LCY       NUMBER(15),
    J_TAX_INCOME_LCY     NUMBER(15)
);
comment on column MBT_110_RPT_BAK.DATA_ID is '数据ID';
comment on column MBT_110_RPT_BAK.DATA_DATE is '数据日期';
comment on column MBT_110_RPT_BAK.CORP_ID is '法人机构号';
comment on column MBT_110_RPT_BAK.ORG_ID is '分行机构号';
comment on column MBT_110_RPT_BAK.CUST_NO is '客户号';
comment on column MBT_110_RPT_BAK.GROUP_ID is '部门编号';
comment on column MBT_110_RPT_BAK.INQ_ORG_ID is '查询机构号';
comment on column MBT_110_RPT_BAK.INQ_GROUP_ID is '查询组号';
comment on column MBT_110_RPT_BAK.B_INF_REC_TYPE is '信息记录类型';
comment on column MBT_110_RPT_BAK.B_NAME is '姓名';
comment on column MBT_110_RPT_BAK.B_ID_TYPE is '证件类型';
comment on column MBT_110_RPT_BAK.B_ID_NUM is '证件号码';
comment on column MBT_110_RPT_BAK.B_INF_SURC_CODE is '信息来源编码';
comment on column MBT_110_RPT_BAK.B_RPT_DATE is '信息报告日期';
comment on column MBT_110_RPT_BAK.B_RPT_DATE_CODE is '报告时点说明代码';
comment on column MBT_110_RPT_BAK.B_CIMOC is '客户资料维护机构代码';
comment on column MBT_110_RPT_BAK.B_CUSTOMER_TYPE is '客户资料类型';
comment on column MBT_110_RPT_BAK.C_ID_INFO_UP_DATE is '信息更新日期';
comment on column MBT_110_RPT_BAK.D_SEX is '性别';
comment on column MBT_110_RPT_BAK.D_DOB is '出生日期';
comment on column MBT_110_RPT_BAK.D_NATION is '国籍';
comment on column MBT_110_RPT_BAK.D_HOUSE_ADD is '户籍地址';
comment on column MBT_110_RPT_BAK.D_HH_DIST is '户籍所在地行政区划';
comment on column MBT_110_RPT_BAK.D_CELL_PHONE is '手机号码';
comment on column MBT_110_RPT_BAK.D_EMAIL is '电子邮箱';
comment on column MBT_110_RPT_BAK.D_FCS_INFO_UP_DATE is '信息更新日期';
comment on column MBT_110_RPT_BAK.E_MARI_STATUS is '婚姻状况';
comment on column MBT_110_RPT_BAK.E_SPO_NAME is '配偶姓名';
comment on column MBT_110_RPT_BAK.E_SPO_ID_TYPE is '配偶证件类型';
comment on column MBT_110_RPT_BAK.E_SPO_ID_NUM is '配偶证件号码';
comment on column MBT_110_RPT_BAK.E_SPO_TEL is '配偶联系电话';
comment on column MBT_110_RPT_BAK.E_SPS_CMPY_NM is '配偶工作单位';
comment on column MBT_110_RPT_BAK.E_SPS_INFO_UP_DATE is '信息更新日期';
comment on column MBT_110_RPT_BAK.F_EDU_LEVEL is '学历';
comment on column MBT_110_RPT_BAK.F_ACA_DEGREE is '学位';
comment on column MBT_110_RPT_BAK.F_EDU_INFO_UP_DATE is '信息更新日期';
comment on column MBT_110_RPT_BAK.G_EMP_STATUS is '就业状况';
comment on column MBT_110_RPT_BAK.G_CPN_NAME is '单位名称';
comment on column MBT_110_RPT_BAK.G_CPN_TYPE is '单位性质';
comment on column MBT_110_RPT_BAK.G_INDUSTRY is '单位所属行业';
comment on column MBT_110_RPT_BAK.G_CPN_ADDR is '单位详细地址';
comment on column MBT_110_RPT_BAK.G_CPN_PC is '单位所在地邮编';
comment on column MBT_110_RPT_BAK.G_CPN_DIST is '单位所在地行政区划';
comment on column MBT_110_RPT_BAK.G_CPN_TEL is '单位电话';
comment on column MBT_110_RPT_BAK.G_OCCUPATION is '职业';
comment on column MBT_110_RPT_BAK.G_TITLE is '职务';
comment on column MBT_110_RPT_BAK.G_TECH_TITLE is '职称';
comment on column MBT_110_RPT_BAK.G_WORK_START_DATE is '本单位工作起始年份';
comment on column MBT_110_RPT_BAK.G_OCTPN_INFO_UP_DATE is '信息更新日期';
comment on column MBT_110_RPT_BAK.H_RESI_STATUS is '居住状况';
comment on column MBT_110_RPT_BAK.H_RESI_ADDR is '居住地详细地址';
comment on column MBT_110_RPT_BAK.H_RESI_PC is '居住地邮编';
comment on column MBT_110_RPT_BAK.H_RESI_DIST is '居住地行政区划';
comment on column MBT_110_RPT_BAK.H_HOME_TEL is '住宅电话';
comment on column MBT_110_RPT_BAK.H_RESI_INFO_UP_DATE is '信息更新日期';
comment on column MBT_110_RPT_BAK.I_MAIL_ADDR is '通讯地址';
comment on column MBT_110_RPT_BAK.I_MAIL_PC is '通讯地邮编';
comment on column MBT_110_RPT_BAK.I_MAIL_DIST is '通讯地行政区划';
comment on column MBT_110_RPT_BAK.I_MLG_INFO_UP_DATE is '信息更新日期';
comment on column MBT_110_RPT_BAK.J_ANNL_INC is '自报年收入';
comment on column MBT_110_RPT_BAK.J_TAX_INCOME is '纳税年收入';
comment on column MBT_110_RPT_BAK.J_INC_INFO_UP_DATE is '信息更新日期';
comment on column MBT_110_RPT_BAK.REMARKS is '备注';
comment on column MBT_110_RPT_BAK.CHECK_FLAG is '校验标识';
comment on column MBT_110_RPT_BAK.CHECK_DESC is '校验结果';
comment on column MBT_110_RPT_BAK.CHECK_ERR_TYPE is '校验失败类型';
comment on column MBT_110_RPT_BAK.NEXT_ACTION is '下一动作';
comment on column MBT_110_RPT_BAK.DATA_STATUS is '数据状态';
comment on column MBT_110_RPT_BAK.DATA_FLAG is '数据是否已删除';
comment on column MBT_110_RPT_BAK.DATA_SOURCE is '数据来源';
comment on column MBT_110_RPT_BAK.DATA_VERSION is '数据版本号';
comment on column MBT_110_RPT_BAK.DATA_REJ_DESC is '数据审核拒绝描述';
comment on column MBT_110_RPT_BAK.DATA_DEL_DESC is '数据删除描述';
comment on column MBT_110_RPT_BAK.DATA_CRT_USER is '数据创建/导入用户';
comment on column MBT_110_RPT_BAK.DATA_CRT_DATE is '数据创建/导入日期';
comment on column MBT_110_RPT_BAK.DATA_CRT_TIME is '数据创建/导入时间';
comment on column MBT_110_RPT_BAK.DATA_CHG_USER is '数据修改/删除用户';
comment on column MBT_110_RPT_BAK.DATA_CHG_DATE is '数据修改/删除日期';
comment on column MBT_110_RPT_BAK.DATA_CHG_TIME is '数据修改/删除时间';
comment on column MBT_110_RPT_BAK.DATA_APV_USER is '数据审核/拒绝用户';
comment on column MBT_110_RPT_BAK.DATA_APV_DATE is '数据审核/拒绝日期';
comment on column MBT_110_RPT_BAK.DATA_APV_TIME is '数据审核/拒绝时间';
comment on column MBT_110_RPT_BAK.RSV1 is '扩展字段1';
comment on column MBT_110_RPT_BAK.RSV2 is '扩展字段2';
comment on column MBT_110_RPT_BAK.RSV3 is '扩展字段3';
comment on column MBT_110_RPT_BAK.RSV4 is '扩展字段4';
comment on column MBT_110_RPT_BAK.RSV5 is '扩展字段5';
comment on column MBT_110_RPT_BAK.DATA_DESC is '记录描述';
comment on column MBT_110_RPT_BAK.ODS_DATA_ID is 'ODS数据ID';
comment on column MBT_110_RPT_BAK.RPT_TIME is '上报数据时间';
comment on column MBT_110_RPT_BAK.RPT_DATE is '上报数据日期';
comment on column MBT_110_RPT_BAK.IS_RPT is '是否上报';
comment on column MBT_110_RPT_BAK.FB_STATUS is '反馈状态';
comment on column MBT_110_RPT_BAK.RPT_FILE_NAME is '上报文件名';
comment on column MBT_110_RPT_BAK.FB_MSG is '反馈信息';


create table MBT_110_C_RPT_BAK
(
    DATA_ID         CHAR(32) not null,
    PDATA_ID        CHAR(32),
    ALIAS           NVARCHAR2(30),
    OTH_ID_NUM      NVARCHAR2(20),
    ID_INFO_UPDATE  CHAR(8),
    ODS_DATA_ID     CHAR(32),
    RPT_TIME        CHAR(14),
    RPT_DATE        CHAR(8),
    DATA_DATE       CHAR(8),
    CORP_ID         VARCHAR2(14),
    ORG_ID          VARCHAR2(14),
    GROUP_ID        VARCHAR2(14),
    INQ_ORG_ID      CHAR(24),
    INQ_GROUP_ID    CHAR(24),
    DATA_DESC       NVARCHAR2(256),
    REMARKS         NVARCHAR2(512),
    CHECK_FLAG      CHAR,
    CHECK_DESC      NVARCHAR2(512),
    CHECK_ERR_TYPE  CHAR,
    NEXT_ACTION     CHAR(2),
    DATA_FLAG       CHAR,
    DATA_SOURE      CHAR,
    DATA_VERSION    NUMBER(8),
    DATA_REJ_DESC   NVARCHAR2(128),
    DATA_DEL_DESC   NVARCHAR2(128),
    DATA_CRT_USER   NVARCHAR2(20),
    DATA_CRT_DATE   CHAR(8),
    DATA_CRT_TIME   CHAR(14),
    DATA_CHG_USER   NVARCHAR2(20),
    DATA_CHG_DATE   CHAR(8),
    DATA_CHG_TIME   CHAR(14),
    DATA_APV_USER   NVARCHAR2(20),
    DATA_APV_DATE   CHAR(8),
    DATA_APV_TIME   CHAR(14),
    RSV1            NVARCHAR2(180),
    RSV2            NVARCHAR2(180),
    RSV3            NVARCHAR2(180),
    RSV4            NVARCHAR2(180),
    RSV5            NVARCHAR2(180),
    ID_INFO_UP_DATE CHAR(8),
    OTH_ID_TYPE     VARCHAR2(2)
);
comment on column MBT_110_C_RPT_BAK.DATA_ID is '主键';
comment on column MBT_110_C_RPT_BAK.PDATA_ID is '外键';
comment on column MBT_110_C_RPT_BAK.ALIAS is '姓名';
comment on column MBT_110_C_RPT_BAK.OTH_ID_NUM is '证件号码';
comment on column MBT_110_C_RPT_BAK.ID_INFO_UPDATE is '信息更新日期';
comment on column MBT_110_C_RPT_BAK.ODS_DATA_ID is 'ODS数据ID';
comment on column MBT_110_C_RPT_BAK.RPT_TIME is '上报数据时间';
comment on column MBT_110_C_RPT_BAK.RPT_DATE is '上报数据日期';
comment on column MBT_110_C_RPT_BAK.DATA_DATE is '数据日期';
comment on column MBT_110_C_RPT_BAK.CORP_ID is '法人机构号';
comment on column MBT_110_C_RPT_BAK.ORG_ID is '分行机构号';
comment on column MBT_110_C_RPT_BAK.GROUP_ID is '部门编号';
comment on column MBT_110_C_RPT_BAK.INQ_ORG_ID is '查询机构号';
comment on column MBT_110_C_RPT_BAK.INQ_GROUP_ID is '查询组号';
comment on column MBT_110_C_RPT_BAK.DATA_DESC is '记录描述';
comment on column MBT_110_C_RPT_BAK.REMARKS is '备注';
comment on column MBT_110_C_RPT_BAK.CHECK_FLAG is '校验标识';
comment on column MBT_110_C_RPT_BAK.CHECK_DESC is '校验结果';
comment on column MBT_110_C_RPT_BAK.CHECK_ERR_TYPE is '校验失败类型';
comment on column MBT_110_C_RPT_BAK.NEXT_ACTION is '下一动作';
comment on column MBT_110_C_RPT_BAK.DATA_FLAG is '数据是否已删除';
comment on column MBT_110_C_RPT_BAK.DATA_SOURE is '数据来源';
comment on column MBT_110_C_RPT_BAK.DATA_VERSION is '数据版本号';
comment on column MBT_110_C_RPT_BAK.DATA_REJ_DESC is '数据审核拒绝描述';
comment on column MBT_110_C_RPT_BAK.DATA_DEL_DESC is '数据删除描述';
comment on column MBT_110_C_RPT_BAK.DATA_CRT_USER is '数据创建/导入用户';
comment on column MBT_110_C_RPT_BAK.DATA_CRT_DATE is '数据创建/导入日期';
comment on column MBT_110_C_RPT_BAK.DATA_CRT_TIME is '数据创建/导入时间';
comment on column MBT_110_C_RPT_BAK.DATA_CHG_USER is '数据修改/删除用户';
comment on column MBT_110_C_RPT_BAK.DATA_CHG_DATE is '数据修改/删除日期';
comment on column MBT_110_C_RPT_BAK.DATA_CHG_TIME is '数据修改/删除时间';
comment on column MBT_110_C_RPT_BAK.DATA_APV_USER is '数据审核/拒绝用户';
comment on column MBT_110_C_RPT_BAK.DATA_APV_DATE is '数据审核/拒绝日期';
comment on column MBT_110_C_RPT_BAK.DATA_APV_TIME is '数据审核/拒绝时间';
comment on column MBT_110_C_RPT_BAK.RSV1 is '扩展字段1';
comment on column MBT_110_C_RPT_BAK.RSV2 is '扩展字段2';
comment on column MBT_110_C_RPT_BAK.RSV3 is '扩展字段3';
comment on column MBT_110_C_RPT_BAK.RSV4 is '扩展字段4';
comment on column MBT_110_C_RPT_BAK.RSV5 is '扩展字段5';
comment on column MBT_110_C_RPT_BAK.ID_INFO_UP_DATE is '信息更新日期';

create table MBT_130_RPT_BAK
(
    DATA_DATE      CHAR(8),
    CORP_ID        VARCHAR2(14),
    ORG_ID         VARCHAR2(14),
    GROUP_ID       VARCHAR2(14),
    INQ_ORG_ID     CHAR(24),
    INQ_GROUP_ID   CHAR(24),
    DATA_ID        CHAR(32) not null primary key,
    INF_REC_TYPE   CHAR(3),
    NAME           NVARCHAR2(30),
    ID_TYPE        VARCHAR2(2),
    ID_NUM         NVARCHAR2(20),
    ID_EFCT_DATE   CHAR(8),
    ID_DUE_DATE    CHAR(8),
    ID_ORG_NAME    NVARCHAR2(80),
    ID_DIST        CHAR(6),
    CIMOC          VARCHAR2(14),
    INF_SURC_CODE  VARCHAR2(20),
    RPT_DATE       CHAR(8),
    DATA_DESC      NVARCHAR2(256),
    REMARKS        NVARCHAR2(512),
    CHECK_FLAG     CHAR,
    CHECK_DESC     NVARCHAR2(512),
    CHECK_ERR_TYPE CHAR,
    NEXT_ACTION    CHAR(2),
    DATA_STATUS    CHAR(2),
    DATA_FLAG      CHAR,
    DATA_SOURCE    CHAR,
    DATA_VERSION   NUMBER(8),
    DATA_REJ_DESC  NVARCHAR2(128),
    DATA_DEL_DESC  NVARCHAR2(128),
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
    ODS_DATA_ID    CHAR(32),
    RPT_TIME       CHAR(14),
    IS_RPT         CHAR(64),
    ROW_NUM        NUMBER,
    FB_STATUS      CHAR(2),
    RPT_FILE_NAME  VARCHAR2(512),
    FB_MSG         VARCHAR2(1024)
);
comment on column MBT_130_RPT_BAK.DATA_DATE is '数据日期';
comment on column MBT_130_RPT_BAK.CORP_ID is '法人机构号';
comment on column MBT_130_RPT_BAK.ORG_ID is '分行机构号';
comment on column MBT_130_RPT_BAK.GROUP_ID is '部门编号';
comment on column MBT_130_RPT_BAK.INQ_ORG_ID is '查询机构号';
comment on column MBT_130_RPT_BAK.INQ_GROUP_ID is '查询组号';
comment on column MBT_130_RPT_BAK.DATA_ID is '数据ID';
comment on column MBT_130_RPT_BAK.INF_REC_TYPE is '信息记录类型';
comment on column MBT_130_RPT_BAK.NAME is 'A 姓名';
comment on column MBT_130_RPT_BAK.ID_TYPE is 'A 证件类型';
comment on column MBT_130_RPT_BAK.ID_NUM is 'A 证件号码';
comment on column MBT_130_RPT_BAK.ID_EFCT_DATE is '证件有效期起始日期';
comment on column MBT_130_RPT_BAK.ID_DUE_DATE is '证件有效期终止日期';
comment on column MBT_130_RPT_BAK.ID_ORG_NAME is '证件签发机关名称';
comment on column MBT_130_RPT_BAK.ID_DIST is '证件签发机关所在地行政区划';
comment on column MBT_130_RPT_BAK.CIMOC is '客户资料维护机构代码';
comment on column MBT_130_RPT_BAK.INF_SURC_CODE is '信息来源编码';
comment on column MBT_130_RPT_BAK.RPT_DATE is '上报数据日期';
comment on column MBT_130_RPT_BAK.DATA_DESC is '记录描述';
comment on column MBT_130_RPT_BAK.REMARKS is '备注';
comment on column MBT_130_RPT_BAK.CHECK_FLAG is '校验标识';
comment on column MBT_130_RPT_BAK.CHECK_DESC is '校验结果';
comment on column MBT_130_RPT_BAK.CHECK_ERR_TYPE is '校验失败类型';
comment on column MBT_130_RPT_BAK.NEXT_ACTION is '下一动作';
comment on column MBT_130_RPT_BAK.DATA_STATUS is '数据状态';
comment on column MBT_130_RPT_BAK.DATA_FLAG is '数据是否已删除';
comment on column MBT_130_RPT_BAK.DATA_SOURCE is '数据来源';
comment on column MBT_130_RPT_BAK.DATA_VERSION is '数据版本号';
comment on column MBT_130_RPT_BAK.DATA_REJ_DESC is '数据审核拒绝描述';
comment on column MBT_130_RPT_BAK.DATA_DEL_DESC is '数据删除描述';
comment on column MBT_130_RPT_BAK.DATA_CRT_USER is '数据创建/导入用户';
comment on column MBT_130_RPT_BAK.DATA_CRT_DATE is '数据创建/导入日期';
comment on column MBT_130_RPT_BAK.DATA_CRT_TIME is '数据创建/导入时间';
comment on column MBT_130_RPT_BAK.DATA_CHG_USER is '数据修改/删除用户';
comment on column MBT_130_RPT_BAK.DATA_CHG_DATE is '数据修改/删除日期';
comment on column MBT_130_RPT_BAK.DATA_CHG_TIME is '数据修改/删除时间';
comment on column MBT_130_RPT_BAK.DATA_APV_USER is '数据审核/拒绝用户';
comment on column MBT_130_RPT_BAK.DATA_APV_DATE is '数据审核/拒绝日期';
comment on column MBT_130_RPT_BAK.DATA_APV_TIME is '数据审核/拒绝时间';
comment on column MBT_130_RPT_BAK.RSV1 is '扩展字段1';
comment on column MBT_130_RPT_BAK.RSV2 is '扩展字段2';
comment on column MBT_130_RPT_BAK.RSV3 is '扩展字段3';
comment on column MBT_130_RPT_BAK.RSV4 is '扩展字段4';
comment on column MBT_130_RPT_BAK.RSV5 is '扩展字段5';
comment on column MBT_130_RPT_BAK.ODS_DATA_ID is 'ODS数据ID';
comment on column MBT_130_RPT_BAK.RPT_TIME is '上报数据时间';
comment on column MBT_130_RPT_BAK.IS_RPT is '是否上报';
comment on column MBT_130_RPT_BAK.FB_STATUS is '反馈状态';
comment on column MBT_130_RPT_BAK.RPT_FILE_NAME is '上报文件名';
comment on column MBT_130_RPT_BAK.FB_MSG is '反馈信息';


create table MBT_220_RPT_BAK
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
    RPT_TIME           VARCHAR2(14),
    ODS_DATA_ID        VARCHAR2(32),
    RPT_DATE           VARCHAR2(8),
    CUST_NO            VARCHAR2(32),
    IS_RPT             CHAR(64),
    ROW_NUM            NUMBER,
    FB_STATUS          CHAR(2),
    RPT_FILE_NAME      VARCHAR2(512),
    FB_MSG             VARCHAR2(512),
    D_CREDIT_LIM_LCY   NUMBER(15),
    D_CREDIT_REST_LCY  NUMBER(15),
    D_CREDIT_REST_ORG  NUMBER(15),
    D_CREDIT_LIM_ORG   NUMBER(15)
);
comment on column MBT_220_RPT_BAK.DATA_ID is '主键';
comment on column MBT_220_RPT_BAK.DATA_DATE is '数据日期';
comment on column MBT_220_RPT_BAK.CORP_ID is '法人机构号';
comment on column MBT_220_RPT_BAK.ORG_ID is '分行机构号';
comment on column MBT_220_RPT_BAK.GROUP_ID is '部门编号';
comment on column MBT_220_RPT_BAK.INQ_ORG_ID is '查询机构号';
comment on column MBT_220_RPT_BAK.INQ_GROUP_ID is '查询组号';
comment on column MBT_220_RPT_BAK.B_INF_REC_TYPE is '信息记录类型';
comment on column MBT_220_RPT_BAK.B_CONTRACT_CODE is '授信协议标识码';
comment on column MBT_220_RPT_BAK.B_RPT_DATE is '信息报告日期';
comment on column MBT_220_RPT_BAK.B_RPT_DATE_CODE is '报告时点说明代码';
comment on column MBT_220_RPT_BAK.B_NAME is '受信人名称';
comment on column MBT_220_RPT_BAK.B_ID_TYPE is '受信人身份标识类型';
comment on column MBT_220_RPT_BAK.B_ID_NUM is '受信人身份标识证件号码';
comment on column MBT_220_RPT_BAK.B_MNGMT_ORG_CODE is '业务管理机构代码';
comment on column MBT_220_RPT_BAK.B_CONTRACT_NO is '授信协议编号';
comment on column MBT_220_RPT_BAK.D_CREDIT_LIM_TYPE is '授信额度类型';
comment on column MBT_220_RPT_BAK.D_LIM_LOOP_FLG is '额度循环标志';
comment on column MBT_220_RPT_BAK.D_CREDIT_LIM is '授信额度';
comment on column MBT_220_RPT_BAK.D_CY is '币种';
comment on column MBT_220_RPT_BAK.D_CON_EFF_DATE is '额度生效日期';
comment on column MBT_220_RPT_BAK.D_CON_EXP_DATE is '额度到期日期';
comment on column MBT_220_RPT_BAK.D_CON_STATUS is '额度状态';
comment on column MBT_220_RPT_BAK.D_CREDIT_REST is '授信限额';
comment on column MBT_220_RPT_BAK.D_CREDIT_REST_CODE is '授信限额编号';
comment on column MBT_220_RPT_BAK.F_DATA_DESC is '记录描述';
comment on column MBT_220_RPT_BAK.REMARKS is '备注';
comment on column MBT_220_RPT_BAK.CHECK_FLAG is '校验标识';
comment on column MBT_220_RPT_BAK.CHECK_DESC is '校验结果';
comment on column MBT_220_RPT_BAK.CHECK_ERR_TYPE is '校验失败类型';
comment on column MBT_220_RPT_BAK.NEXT_ACTION is '下一动作';
comment on column MBT_220_RPT_BAK.DATA_STATUS is '数据状态';
comment on column MBT_220_RPT_BAK.DATA_FLAG is '数据是否已删除';
comment on column MBT_220_RPT_BAK.DATA_SOURCE is '数据来源';
comment on column MBT_220_RPT_BAK.DATA_VERSION is '数据版本号';
comment on column MBT_220_RPT_BAK.DATA_REJ_DESC is '数据审核拒绝描述';
comment on column MBT_220_RPT_BAK.DATA_DEL_DESC is '数据删除描述';
comment on column MBT_220_RPT_BAK.DATA_CRT_USER is '数据创建/导入用户';
comment on column MBT_220_RPT_BAK.DATA_CRT_DATE is '数据创建/导入日期';
comment on column MBT_220_RPT_BAK.DATA_CRT_TIME is '数据创建/导入时间';
comment on column MBT_220_RPT_BAK.DATA_CHG_USER is '数据修改/删除用户';
comment on column MBT_220_RPT_BAK.DATA_CHG_DATE is '数据修改/删除日期';
comment on column MBT_220_RPT_BAK.DATA_CHG_TIME is '数据修改/删除时间';
comment on column MBT_220_RPT_BAK.DATA_APV_USER is '数据审核/拒绝用户';
comment on column MBT_220_RPT_BAK.DATA_APV_DATE is '数据审核/拒绝日期';
comment on column MBT_220_RPT_BAK.DATA_APV_TIME is '数据审核/拒绝时间';
comment on column MBT_220_RPT_BAK.RSV1 is '扩展字段1';
comment on column MBT_220_RPT_BAK.RSV2 is '扩展字段2';
comment on column MBT_220_RPT_BAK.RSV3 is '扩展字段3';
comment on column MBT_220_RPT_BAK.RSV4 is '扩展字段4';
comment on column MBT_220_RPT_BAK.RSV5 is '扩展字段5';
comment on column MBT_220_RPT_BAK.RPT_TIME is '上报数据时间';
comment on column MBT_220_RPT_BAK.ODS_DATA_ID is 'ODS数据ID';
comment on column MBT_220_RPT_BAK.RPT_DATE is '上报数据日期';
comment on column MBT_220_RPT_BAK.CUST_NO is '客户号';
comment on column MBT_220_RPT_BAK.IS_RPT is '是否上报';
comment on column MBT_220_RPT_BAK.FB_STATUS is '反馈状态';
comment on column MBT_220_RPT_BAK.RPT_FILE_NAME is '上报文件名';
comment on column MBT_220_RPT_BAK.FB_MSG is '反馈信息';
comment on column MBT_220_RPT_BAK.D_CREDIT_REST_ORG is '授信限额_原始数据金额';
comment on column MBT_220_RPT_BAK.D_CREDIT_LIM_ORG is '授信额度_原始数据金额';


create table MBT_220_C_RPT_BAK
(
    DATA_ID            CHAR(32) not null primary key,
    PDATA_ID           CHAR(32) not null,
    C_BRER_TYPE        CHAR,
    C_CERT_REL_NAME    NVARCHAR2(80),
    C_CERT_REL_ID_TYPE VARCHAR2(2),
    C_CERT_REL_ID_NUM  VARCHAR2(40),
    ODS_DATA_ID        VARCHAR2(32),
    RPT_DATE           CHAR(8),
    RPT_TIME           CHAR(14),
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
comment on column MBT_220_C_RPT_BAK.DATA_ID is '主键';
comment on column MBT_220_C_RPT_BAK.PDATA_ID is '外键';
comment on column MBT_220_C_RPT_BAK.C_BRER_TYPE is '共同受信人身份类别';
comment on column MBT_220_C_RPT_BAK.C_CERT_REL_NAME is '共同受信人名称';
comment on column MBT_220_C_RPT_BAK.C_CERT_REL_ID_TYPE is '共同受信人身份标识类型';
comment on column MBT_220_C_RPT_BAK.C_CERT_REL_ID_NUM is '共同受信人身份标识号码';
comment on column MBT_220_C_RPT_BAK.ODS_DATA_ID is 'ODS数据ID';
comment on column MBT_220_C_RPT_BAK.RPT_DATE is '上报数据日期';
comment on column MBT_220_C_RPT_BAK.RPT_TIME is '上报数据时间';
comment on column MBT_220_C_RPT_BAK.DATA_DATE is '数据日期';
comment on column MBT_220_C_RPT_BAK.CORP_ID is '法人机构号';
comment on column MBT_220_C_RPT_BAK.ORG_ID is '分行机构号';
comment on column MBT_220_C_RPT_BAK.GROUP_ID is '部门编号';
comment on column MBT_220_C_RPT_BAK.INQ_ORG_ID is '查询机构号';
comment on column MBT_220_C_RPT_BAK.INQ_GROUP_ID is '查询组号';
comment on column MBT_220_C_RPT_BAK.DATA_DESC is '记录描述';
comment on column MBT_220_C_RPT_BAK.REMARKS is '备注';
comment on column MBT_220_C_RPT_BAK.CHECK_FLAG is '校验标识';
comment on column MBT_220_C_RPT_BAK.CHECK_DESC is '校验结果';
comment on column MBT_220_C_RPT_BAK.CHECK_ERR_TYPE is '校验失败类型';
comment on column MBT_220_C_RPT_BAK.NEXT_ACTION is '下一动作';
comment on column MBT_220_C_RPT_BAK.DATA_FLAG is '数据是否已删除';
comment on column MBT_220_C_RPT_BAK.DATA_SOURE is '数据来源';
comment on column MBT_220_C_RPT_BAK.DATA_VERSION is '数据版本号';
comment on column MBT_220_C_RPT_BAK.DATA_REJ_DESC is '数据审核拒绝描述';
comment on column MBT_220_C_RPT_BAK.DATA_DEL_DESC is '数据删除描述';
comment on column MBT_220_C_RPT_BAK.DATA_CRT_USER is '数据创建/导入用户';
comment on column MBT_220_C_RPT_BAK.DATA_CRT_DATE is '数据创建/导入日期';
comment on column MBT_220_C_RPT_BAK.DATA_CRT_TIME is '数据创建/导入时间';
comment on column MBT_220_C_RPT_BAK.DATA_CHG_USER is '数据修改/删除用户';
comment on column MBT_220_C_RPT_BAK.DATA_CHG_DATE is '数据修改/删除日期';
comment on column MBT_220_C_RPT_BAK.DATA_CHG_TIME is '数据修改/删除时间';
comment on column MBT_220_C_RPT_BAK.DATA_APV_USER is '数据审核/拒绝用户';
comment on column MBT_220_C_RPT_BAK.DATA_APV_DATE is '数据审核/拒绝日期';
comment on column MBT_220_C_RPT_BAK.DATA_APV_TIME is '数据审核/拒绝时间';
comment on column MBT_220_C_RPT_BAK.RSV1 is '扩展字段1';
comment on column MBT_220_C_RPT_BAK.RSV2 is '扩展字段2';
comment on column MBT_220_C_RPT_BAK.RSV3 is '扩展字段3';
comment on column MBT_220_C_RPT_BAK.RSV4 is '扩展字段4';
comment on column MBT_220_C_RPT_BAK.RSV5 is '扩展字段5';
comment on column MBT_220_C_RPT_BAK.B_CONTRACT_CODE is '授信协议标识码';

create table MBT_230_RPT_BAK
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
    RPT_DATE             CHAR(8),
    RPT_TIME             CHAR(14),
    INF_REC_TYPE         CHAR(3),
    IS_RPT               VARCHAR2(64),
    ROW_NUM              NUMBER,
    FB_STATUS            CHAR(2),
    RPT_FILE_NAME        VARCHAR2(512),
    FB_MSG               VARCHAR2(1024),
    C_ACCT_CRED_LINE_LCY NUMBER(15),
    D_LOAN_AMT_LCY       NUMBER(15),
    D_RI_EX_LCY          NUMBER(15),
    D_RI_EX_ORG          NUMBER(15),
    D_LOAN_AMT_ORG       NUMBER(15),
    C_ACCT_CRED_LINE_ORG NUMBER(15)
);
comment on column MBT_230_RPT_BAK.DATA_ID is '主键';
comment on column MBT_230_RPT_BAK.DATA_DATE is '数据日期';
comment on column MBT_230_RPT_BAK.CORP_ID is '法人机构号';
comment on column MBT_230_RPT_BAK.ORG_ID is '分行机构号';
comment on column MBT_230_RPT_BAK.GROUP_ID is '部门编号';
comment on column MBT_230_RPT_BAK.INQ_ORG_ID is '查询机构号';
comment on column MBT_230_RPT_BAK.INQ_GROUP_ID is '查询组号';
comment on column MBT_230_RPT_BAK.B_ACCT_TYPE is '账户类型';
comment on column MBT_230_RPT_BAK.B_ACCT_CODE is '账户标识码';
comment on column MBT_230_RPT_BAK.B_RPT_DATE is '信息报告日期';
comment on column MBT_230_RPT_BAK.B_RPT_DATE_CODE is '报告时点说明代码';
comment on column MBT_230_RPT_BAK.B_INF_REC_TYPE is '信息记录类型';
comment on column MBT_230_RPT_BAK.B_NAME is '债务人姓名';
comment on column MBT_230_RPT_BAK.B_ID_TYPE is '债务人证件类型';
comment on column MBT_230_RPT_BAK.B_ID_NUM is '债务人证件号码';
comment on column MBT_230_RPT_BAK.B_MNGMT_ORG_CODE is '业务管理机构代码';
comment on column MBT_230_RPT_BAK.B_CUST_NO is '债务人编号';
comment on column MBT_230_RPT_BAK.C_BUSI_LINES is '担保业务大类  ';
comment on column MBT_230_RPT_BAK.C_BUSI_DTIL_LINES is '担保业务种类细分  ';
comment on column MBT_230_RPT_BAK.C_OPEN_DATE is '开户日期';
comment on column MBT_230_RPT_BAK.C_ACCT_CRED_LINE is '担保金额  ';
comment on column MBT_230_RPT_BAK.C_CY is '币种  ';
comment on column MBT_230_RPT_BAK.C_DUE_DATE is '到期日期  ';
comment on column MBT_230_RPT_BAK.C_GUAR_MODE is '反担保方式';
comment on column MBT_230_RPT_BAK.C_OTH_REPY_GUAR_WAY is '其他还款保证方式';
comment on column MBT_230_RPT_BAK.C_SEC_DEP is '保证金百分比';
comment on column MBT_230_RPT_BAK.C_CTRCT_TXT_CD is '担保合同文本编号';
comment on column MBT_230_RPT_BAK.D_ACCT_STATUS is '账户状态';
comment on column MBT_230_RPT_BAK.D_LOAN_AMT is '在保余额';
comment on column MBT_230_RPT_BAK.D_REPAY_PRD is '余额变化日期';
comment on column MBT_230_RPT_BAK.D_FIVE_CATE is '五级分类';
comment on column MBT_230_RPT_BAK.D_FIVE_CATE_ADJ_DATE is '五级分类认定日期';
comment on column MBT_230_RPT_BAK.D_RI_EX is '风险敞口  ';
comment on column MBT_230_RPT_BAK.D_COMP_ADV_FLAG is '代偿（垫款）标志';
comment on column MBT_230_RPT_BAK.D_CLOSE_DATE is '账户关闭日期';
comment on column MBT_230_RPT_BAK.CHECK_FLAG is '校验标识';
comment on column MBT_230_RPT_BAK.CHECK_DESC is '校验结果';
comment on column MBT_230_RPT_BAK.CHECK_ERR_TYPE is '校验失败类型';
comment on column MBT_230_RPT_BAK.NEXT_ACTION is '下一动作';
comment on column MBT_230_RPT_BAK.DATA_STATUS is '数据状态';
comment on column MBT_230_RPT_BAK.DATA_FLAG is '数据是否已删除';
comment on column MBT_230_RPT_BAK.DATA_SOURCE is '数据来源';
comment on column MBT_230_RPT_BAK.DATA_VERSION is '数据版本号';
comment on column MBT_230_RPT_BAK.DATA_REJ_DESC is '数据审核拒绝描述';
comment on column MBT_230_RPT_BAK.DATA_DEL_DESC is '数据删除描述';
comment on column MBT_230_RPT_BAK.DATA_CRT_USER is '数据创建/导入用户';
comment on column MBT_230_RPT_BAK.DATA_CRT_DATE is '数据创建/导入日期';
comment on column MBT_230_RPT_BAK.DATA_CRT_TIME is '数据创建/导入时间';
comment on column MBT_230_RPT_BAK.DATA_CHG_USER is '数据修改/删除用户';
comment on column MBT_230_RPT_BAK.DATA_CHG_DATE is '数据修改/删除日期';
comment on column MBT_230_RPT_BAK.DATA_CHG_TIME is '数据修改/删除时间';
comment on column MBT_230_RPT_BAK.DATA_APV_USER is '数据审核/拒绝用户';
comment on column MBT_230_RPT_BAK.DATA_APV_DATE is '数据审核/拒绝日期';
comment on column MBT_230_RPT_BAK.DATA_APV_TIME is '数据审核/拒绝时间';
comment on column MBT_230_RPT_BAK.DATA_DESC is '记录描述';
comment on column MBT_230_RPT_BAK.RSV1 is '扩展字段1';
comment on column MBT_230_RPT_BAK.RSV2 is '扩展字段2';
comment on column MBT_230_RPT_BAK.RSV3 is '扩展字段3';
comment on column MBT_230_RPT_BAK.RSV4 is '扩展字段4';
comment on column MBT_230_RPT_BAK.RSV5 is '扩展字段5';
comment on column MBT_230_RPT_BAK.ODS_DATA_ID is 'ODS数据ID';
comment on column MBT_230_RPT_BAK.RPT_DATE is '上报数据日期';
comment on column MBT_230_RPT_BAK.RPT_TIME is '上报数据时间';
comment on column MBT_230_RPT_BAK.INF_REC_TYPE is '信息记录类型';
comment on column MBT_230_RPT_BAK.IS_RPT is '是否上报';
comment on column MBT_230_RPT_BAK.FB_STATUS is '反馈状态';
comment on column MBT_230_RPT_BAK.RPT_FILE_NAME is '上报文件名';
comment on column MBT_230_RPT_BAK.FB_MSG is '反馈信息';
comment on column MBT_230_RPT_BAK.D_RI_EX_ORG is '风险敞口_原始数据金额';
comment on column MBT_230_RPT_BAK.D_LOAN_AMT_ORG is '在保余额_原始数据金额';
comment on column MBT_230_RPT_BAK.C_ACCT_CRED_LINE_ORG is '担保金额_原始数据金额';


create table MBT_230_E_RPT_BAK
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
    RPT_DATE       CHAR(8),
    RPT_TIME       CHAR(14),
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
comment on column MBT_230_E_RPT_BAK.DATA_ID is '主键';
comment on column MBT_230_E_RPT_BAK.PDATA_ID is '外键';
comment on column MBT_230_E_RPT_BAK.INFO_ID_TYPE is '身份类别';
comment on column MBT_230_E_RPT_BAK.ARLP_NAME is '责任人名称';
comment on column MBT_230_E_RPT_BAK.ARLP_CERT_TYPE is '责任人身份标识类型';
comment on column MBT_230_E_RPT_BAK.ARLP_CERT_NUM is '责任人身份标识号码';
comment on column MBT_230_E_RPT_BAK.ARLP_TYPE is '还款责任人类型';
comment on column MBT_230_E_RPT_BAK.ARLP_AMT is '还款责任金额';
comment on column MBT_230_E_RPT_BAK.WARTY_SIGN is '联保标志';
comment on column MBT_230_E_RPT_BAK.MAX_GUAR_MCC is '保证合同编号';
comment on column MBT_230_E_RPT_BAK.ODS_DATA_ID is 'ODS数据ID';
comment on column MBT_230_E_RPT_BAK.RPT_DATE is '上报数据日期';
comment on column MBT_230_E_RPT_BAK.RPT_TIME is '上报数据时间';
comment on column MBT_230_E_RPT_BAK.DATA_DATE is '数据日期';
comment on column MBT_230_E_RPT_BAK.CORP_ID is '法人机构号';
comment on column MBT_230_E_RPT_BAK.ORG_ID is '分行机构号';
comment on column MBT_230_E_RPT_BAK.GROUP_ID is '部门编号';
comment on column MBT_230_E_RPT_BAK.INQ_ORG_ID is '查询机构号';
comment on column MBT_230_E_RPT_BAK.INQ_GROUP_ID is '查询组号';
comment on column MBT_230_E_RPT_BAK.DATA_DESC is '记录描述';
comment on column MBT_230_E_RPT_BAK.REMARKS is '备注';
comment on column MBT_230_E_RPT_BAK.CHECK_FLAG is '校验标识';
comment on column MBT_230_E_RPT_BAK.CHECK_DESC is '校验结果';
comment on column MBT_230_E_RPT_BAK.CHECK_ERR_TYPE is '校验失败类型';
comment on column MBT_230_E_RPT_BAK.NEXT_ACTION is '下一动作';
comment on column MBT_230_E_RPT_BAK.DATA_FLAG is '数据是否已删除';
comment on column MBT_230_E_RPT_BAK.DATA_SOURE is '数据来源';
comment on column MBT_230_E_RPT_BAK.DATA_VERSION is '数据版本号';
comment on column MBT_230_E_RPT_BAK.DATA_REJ_DESC is '数据审核拒绝描述';
comment on column MBT_230_E_RPT_BAK.DATA_DEL_DESC is '数据删除描述';
comment on column MBT_230_E_RPT_BAK.DATA_CRT_USER is '数据创建/导入用户';
comment on column MBT_230_E_RPT_BAK.DATA_CRT_DATE is '数据创建/导入日期';
comment on column MBT_230_E_RPT_BAK.DATA_CRT_TIME is '数据创建/导入时间';
comment on column MBT_230_E_RPT_BAK.DATA_CHG_USER is '数据修改/删除用户';
comment on column MBT_230_E_RPT_BAK.DATA_CHG_DATE is '数据修改/删除日期';
comment on column MBT_230_E_RPT_BAK.DATA_CHG_TIME is '数据修改/删除时间';
comment on column MBT_230_E_RPT_BAK.DATA_APV_USER is '数据审核/拒绝用户';
comment on column MBT_230_E_RPT_BAK.DATA_APV_DATE is '数据审核/拒绝日期';
comment on column MBT_230_E_RPT_BAK.DATA_APV_TIME is '数据审核/拒绝时间';
comment on column MBT_230_E_RPT_BAK.RSV1 is '扩展字段1';
comment on column MBT_230_E_RPT_BAK.RSV2 is '扩展字段2';
comment on column MBT_230_E_RPT_BAK.RSV3 is '扩展字段3';
comment on column MBT_230_E_RPT_BAK.RSV4 is '扩展字段4';
comment on column MBT_230_E_RPT_BAK.RSV5 is '扩展字段5';
comment on column MBT_230_E_RPT_BAK.B_ACCT_CODE is '账户标识码';

create table MBT_230_F_RPT_BAK
(
    DATA_ID        VARCHAR2(32) not null primary key,
    PDATA_ID       VARCHAR2(32) not null,
    CCC            VARCHAR2(60),
    ODS_DATA_ID    CHAR(32),
    RPT_DATE       CHAR(8),
    RPT_TIME       CHAR(14),
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
comment on column MBT_230_F_RPT_BAK.DATA_ID is '主键';
comment on column MBT_230_F_RPT_BAK.PDATA_ID is '外键';
comment on column MBT_230_F_RPT_BAK.CCC is '抵（质）押合同标识码';
comment on column MBT_230_F_RPT_BAK.ODS_DATA_ID is 'ODS数据ID';
comment on column MBT_230_F_RPT_BAK.RPT_DATE is '上报数据日期';
comment on column MBT_230_F_RPT_BAK.RPT_TIME is '上报数据时间';
comment on column MBT_230_F_RPT_BAK.DATA_DATE is '数据日期';
comment on column MBT_230_F_RPT_BAK.CORP_ID is '法人机构号';
comment on column MBT_230_F_RPT_BAK.ORG_ID is '分行机构号';
comment on column MBT_230_F_RPT_BAK.GROUP_ID is '部门编号';
comment on column MBT_230_F_RPT_BAK.INQ_ORG_ID is '查询机构号';
comment on column MBT_230_F_RPT_BAK.INQ_GROUP_ID is '查询组号';
comment on column MBT_230_F_RPT_BAK.DATA_DESC is '记录描述';
comment on column MBT_230_F_RPT_BAK.REMARKS is '备注';
comment on column MBT_230_F_RPT_BAK.CHECK_FLAG is '校验标识';
comment on column MBT_230_F_RPT_BAK.CHECK_DESC is '校验结果';
comment on column MBT_230_F_RPT_BAK.CHECK_ERR_TYPE is '校验失败类型';
comment on column MBT_230_F_RPT_BAK.NEXT_ACTION is '下一动作';
comment on column MBT_230_F_RPT_BAK.DATA_FLAG is '数据是否已删除';
comment on column MBT_230_F_RPT_BAK.DATA_SOURE is '数据来源';
comment on column MBT_230_F_RPT_BAK.DATA_VERSION is '数据版本号';
comment on column MBT_230_F_RPT_BAK.DATA_REJ_DESC is '数据审核拒绝描述';
comment on column MBT_230_F_RPT_BAK.DATA_DEL_DESC is '数据删除描述';
comment on column MBT_230_F_RPT_BAK.DATA_CRT_USER is '数据创建/导入用户';
comment on column MBT_230_F_RPT_BAK.DATA_CRT_DATE is '数据创建/导入日期';
comment on column MBT_230_F_RPT_BAK.DATA_CRT_TIME is '数据创建/导入时间';
comment on column MBT_230_F_RPT_BAK.DATA_CHG_USER is '数据修改/删除用户';
comment on column MBT_230_F_RPT_BAK.DATA_CHG_DATE is '数据修改/删除日期';
comment on column MBT_230_F_RPT_BAK.DATA_CHG_TIME is '数据修改/删除时间';
comment on column MBT_230_F_RPT_BAK.DATA_APV_USER is '数据审核/拒绝用户';
comment on column MBT_230_F_RPT_BAK.DATA_APV_DATE is '数据审核/拒绝日期';
comment on column MBT_230_F_RPT_BAK.DATA_APV_TIME is '数据审核/拒绝时间';
comment on column MBT_230_F_RPT_BAK.RSV1 is '扩展字段1';
comment on column MBT_230_F_RPT_BAK.RSV2 is '扩展字段2';
comment on column MBT_230_F_RPT_BAK.RSV3 is '扩展字段3';
comment on column MBT_230_F_RPT_BAK.RSV4 is '扩展字段4';
comment on column MBT_230_F_RPT_BAK.RSV5 is '扩展字段5';
comment on column MBT_230_F_RPT_BAK.B_ACCT_CODE is '账户标识码';

create table MBT_310_RPT_BAK
(
    DATA_ID                   CHAR(32) not null primary key,
    DATA_DATE                 CHAR(8),
    CORP_ID                   VARCHAR2(14),
    ORG_ID                    VARCHAR2(14),
    GROUP_ID                  VARCHAR2(14),
    INQ_ORG_ID                CHAR(24),
    INQ_GROUP_ID              CHAR(24),
    B_INF_REC_TYPE            CHAR(3),
    B_ENT_NAME                NVARCHAR2(80),
    B_ENT_CERT                CHAR(2),
    B_ENT_CERT_NUM            NVARCHAR2(40),
    B_INF_SURC_CODE           VARCHAR2(20),
    B_RPT_DATE                CHAR(8),
    B_RPT_DATE_CODE           CHAR(2),
    B_CIMOC                   VARCHAR2(14),
    B_CUSTOMER_TYPE           CHAR,
    B_ETP_STS                 CHAR,
    B_ORG_TYPE                VARCHAR2(2),
    C_ID_INFO_UP_DATE         CHAR(8),
    D_NATIONALITY             CHAR(3),
    D_REG_ADD                 NVARCHAR2(100),
    D_ADM_DIV_OF_REG          CHAR(6),
    D_ESTABLISH_DATE          CHAR(8),
    D_BIZ_END_DATE            CHAR(8),
    D_BIZ_RANGE               NVARCHAR2(400),
    D_ECO_INDUS_CATE          CHAR(5),
    D_ECO_TYPE                CHAR(3),
    D_ENT_SCALE               CHAR,
    D_FCS_INFO_UP_DATE        CHAR(8),
    E_MN_MMB_INFO_UP_DATE     CHAR(8),
    F_REG_CAP_CURRENCY        CHAR(3),
    F_REG_CAP                 NUMBER(15),
    F_MN_SHA_HOD_INFO_DATE    CHAR(8),
    G_ACTU_COTRL_INFO_UP_DATE CHAR(8),
    H_SUP_ORG_TYPE            CHAR,
    H_SUP_ORG_NAME            NVARCHAR2(80),
    H_SUP_ORG_CERT_TYPE       VARCHAR2(2),
    H_SUP_ORG_CERT_NUM        NVARCHAR2(40),
    H_SUP_ORG_INFO_UP_DATE    CHAR(8),
    I_CON_ADD_DISTRICT_CODE   CHAR(6),
    I_CON_ADD                 NVARCHAR2(100),
    I_CON_PHONE               NVARCHAR2(25),
    I_FIN_CON_PHONE           NVARCHAR2(25),
    I_COTA_INFO_UP_DATE       CHAR(8),
    DATA_DESC                 NVARCHAR2(256),
    REMARKS                   NVARCHAR2(512),
    CHECK_FLAG                CHAR,
    CHECK_DESC                NVARCHAR2(512),
    CHECK_ERR_TYPE            CHAR,
    NEXT_ACTION               CHAR(2),
    DATA_STATUS               CHAR(2),
    DATA_FLAG                 CHAR,
    DATA_SOURCE               CHAR,
    DATA_VERSION              NUMBER(8),
    DATA_REJ_DESC             NVARCHAR2(128),
    DATA_DEL_DESC             NVARCHAR2(128),
    DATA_CRT_USER             NVARCHAR2(20),
    DATA_CRT_DATE             CHAR(8),
    DATA_CRT_TIME             CHAR(14),
    DATA_CHG_USER             NVARCHAR2(20),
    DATA_CHG_DATE             CHAR(8),
    DATA_CHG_TIME             CHAR(14),
    DATA_APV_USER             NVARCHAR2(20),
    DATA_APV_DATE             CHAR(8),
    DATA_APV_TIME             CHAR(14),
    RSV1                      NVARCHAR2(180),
    RSV2                      NVARCHAR2(180),
    RSV3                      NVARCHAR2(180),
    RSV4                      NVARCHAR2(180),
    RSV5                      NVARCHAR2(180),
    ODS_DATA_ID               CHAR(32),
    RPT_DATE                  CHAR(8),
    RPT_TIME                  CHAR(14),
    B_CUST_NO                 NVARCHAR2(32),
    IS_RPT                    VARCHAR2(64),
    ROW_NUM                   NUMBER,
    FB_STATUS                 CHAR(2),
    RPT_FILE_NAME             VARCHAR2(512),
    FB_MSG                    VARCHAR2(1024),
    F_REG_CAP_LCY             NUMBER(15)
);
comment on column MBT_310_RPT_BAK.DATA_ID is '主键';
comment on column MBT_310_RPT_BAK.DATA_DATE is '数据日期';
comment on column MBT_310_RPT_BAK.CORP_ID is '法人机构号';
comment on column MBT_310_RPT_BAK.ORG_ID is '分行机构号';
comment on column MBT_310_RPT_BAK.GROUP_ID is '部门编号';
comment on column MBT_310_RPT_BAK.INQ_ORG_ID is '查询机构号';
comment on column MBT_310_RPT_BAK.INQ_GROUP_ID is '查询组号';
comment on column MBT_310_RPT_BAK.B_INF_REC_TYPE is '信息记录类型';
comment on column MBT_310_RPT_BAK.B_ENT_NAME is '企业名称';
comment on column MBT_310_RPT_BAK.B_ENT_CERT is '企业身份标识类型';
comment on column MBT_310_RPT_BAK.B_ENT_CERT_NUM is '企业身份标识号码';
comment on column MBT_310_RPT_BAK.B_INF_SURC_CODE is '信息来源编码';
comment on column MBT_310_RPT_BAK.B_RPT_DATE is '信息报告日期';
comment on column MBT_310_RPT_BAK.B_RPT_DATE_CODE is '报告时点说明代码';
comment on column MBT_310_RPT_BAK.B_CIMOC is '客户资料维护机构代码';
comment on column MBT_310_RPT_BAK.B_CUSTOMER_TYPE is '客户资料类型';
comment on column MBT_310_RPT_BAK.B_ETP_STS is '存续状态';
comment on column MBT_310_RPT_BAK.B_ORG_TYPE is '组织机构类型';
comment on column MBT_310_RPT_BAK.C_ID_INFO_UP_DATE is '信息更新日期';
comment on column MBT_310_RPT_BAK.D_NATIONALITY is '国别代码';
comment on column MBT_310_RPT_BAK.D_REG_ADD is '登记地址';
comment on column MBT_310_RPT_BAK.D_ADM_DIV_OF_REG is '登记地行政区划代码';
comment on column MBT_310_RPT_BAK.D_ESTABLISH_DATE is '成立日期';
comment on column MBT_310_RPT_BAK.D_BIZ_END_DATE is '营业许可证到期日';
comment on column MBT_310_RPT_BAK.D_BIZ_RANGE is '业务范围';
comment on column MBT_310_RPT_BAK.D_ECO_INDUS_CATE is '行业分类代码';
comment on column MBT_310_RPT_BAK.D_ECO_TYPE is '经济类型代码';
comment on column MBT_310_RPT_BAK.D_ENT_SCALE is '企业规模';
comment on column MBT_310_RPT_BAK.D_FCS_INFO_UP_DATE is '信息更新日期';
comment on column MBT_310_RPT_BAK.E_MN_MMB_INFO_UP_DATE is '信息更新日期';
comment on column MBT_310_RPT_BAK.F_REG_CAP_CURRENCY is '注册资本币种';
comment on column MBT_310_RPT_BAK.F_REG_CAP is '注册资本';
comment on column MBT_310_RPT_BAK.F_MN_SHA_HOD_INFO_DATE is '信息更新日期';
comment on column MBT_310_RPT_BAK.G_ACTU_COTRL_INFO_UP_DATE is '信息更新日期';
comment on column MBT_310_RPT_BAK.H_SUP_ORG_TYPE is '上级机构类型';
comment on column MBT_310_RPT_BAK.H_SUP_ORG_NAME is '上级机构名称';
comment on column MBT_310_RPT_BAK.H_SUP_ORG_CERT_TYPE is '上级机构身份标识类型';
comment on column MBT_310_RPT_BAK.H_SUP_ORG_CERT_NUM is '上级机构身份标识码';
comment on column MBT_310_RPT_BAK.H_SUP_ORG_INFO_UP_DATE is '信息更新日期';
comment on column MBT_310_RPT_BAK.I_CON_ADD_DISTRICT_CODE is '联系地址行政区划代码';
comment on column MBT_310_RPT_BAK.I_CON_ADD is '联系地址';
comment on column MBT_310_RPT_BAK.I_CON_PHONE is '联系电话';
comment on column MBT_310_RPT_BAK.I_FIN_CON_PHONE is '财务部门联系电话';
comment on column MBT_310_RPT_BAK.I_COTA_INFO_UP_DATE is '信息更新日期';
comment on column MBT_310_RPT_BAK.DATA_DESC is '记录描述';
comment on column MBT_310_RPT_BAK.REMARKS is '备注';
comment on column MBT_310_RPT_BAK.CHECK_FLAG is '校验标识';
comment on column MBT_310_RPT_BAK.CHECK_DESC is '校验结果';
comment on column MBT_310_RPT_BAK.CHECK_ERR_TYPE is '校验失败类型';
comment on column MBT_310_RPT_BAK.NEXT_ACTION is '下一动作';
comment on column MBT_310_RPT_BAK.DATA_STATUS is '数据状态';
comment on column MBT_310_RPT_BAK.DATA_FLAG is '数据是否已删除';
comment on column MBT_310_RPT_BAK.DATA_SOURCE is '数据来源';
comment on column MBT_310_RPT_BAK.DATA_VERSION is '数据版本号';
comment on column MBT_310_RPT_BAK.DATA_REJ_DESC is '数据审核拒绝描述';
comment on column MBT_310_RPT_BAK.DATA_DEL_DESC is '数据删除描述';
comment on column MBT_310_RPT_BAK.DATA_CRT_USER is '数据创建/导入用户';
comment on column MBT_310_RPT_BAK.DATA_CRT_DATE is '数据创建/导入日期';
comment on column MBT_310_RPT_BAK.DATA_CRT_TIME is '数据创建/导入时间';
comment on column MBT_310_RPT_BAK.DATA_CHG_USER is '数据修改/删除用户';
comment on column MBT_310_RPT_BAK.DATA_CHG_DATE is '数据修改/删除日期';
comment on column MBT_310_RPT_BAK.DATA_CHG_TIME is '数据修改/删除时间';
comment on column MBT_310_RPT_BAK.DATA_APV_USER is '数据审核/拒绝用户';
comment on column MBT_310_RPT_BAK.DATA_APV_DATE is '数据审核/拒绝日期';
comment on column MBT_310_RPT_BAK.DATA_APV_TIME is '数据审核/拒绝时间';
comment on column MBT_310_RPT_BAK.RSV1 is '扩展字段1';
comment on column MBT_310_RPT_BAK.RSV2 is '扩展字段2';
comment on column MBT_310_RPT_BAK.RSV3 is '扩展字段3';
comment on column MBT_310_RPT_BAK.RSV4 is '扩展字段4';
comment on column MBT_310_RPT_BAK.RSV5 is '扩展字段5';
comment on column MBT_310_RPT_BAK.ODS_DATA_ID is 'ODS数据ID';
comment on column MBT_310_RPT_BAK.RPT_DATE is '上报数据日期';
comment on column MBT_310_RPT_BAK.RPT_TIME is '上报数据时间';
comment on column MBT_310_RPT_BAK.B_CUST_NO is '客户号';
comment on column MBT_310_RPT_BAK.IS_RPT is '是否上报';
comment on column MBT_310_RPT_BAK.FB_STATUS is '反馈状态';
comment on column MBT_310_RPT_BAK.RPT_FILE_NAME is '上报文件名';
comment on column MBT_310_RPT_BAK.FB_MSG is '反馈信息';


create table MBT_310_C_RPT_BAK
(
    DATA_ID           CHAR(32) not null primary key,
    PDATA_ID          CHAR(32),
    OTH_ENT_CERT_TYPE VARCHAR2(2),
    OTH_ENT_CERT_NUM  NVARCHAR2(40),
    DATA_STATUS       CHAR(2),
    ID_INFO_UP_DATE   CHAR(8),
    DATA_DATE         CHAR(8),
    CORP_ID           VARCHAR2(14),
    ORG_ID            VARCHAR2(14),
    GROUP_ID          VARCHAR2(14),
    INQ_ORG_ID        CHAR(24),
    INQ_GROUP_ID      CHAR(24),
    DATA_DESC         NVARCHAR2(256),
    REMARKS           NVARCHAR2(512),
    CHECK_FLAG        CHAR,
    CHECK_DESC        NVARCHAR2(512),
    CHECK_ERR_TYPE    CHAR,
    NEXT_ACTION       CHAR(2),
    DATA_FLAG         CHAR,
    DATA_SOURE        CHAR,
    DATA_VERSION      NUMBER(8),
    DATA_REJ_DESC     NVARCHAR2(128),
    DATA_DEL_DESC     NVARCHAR2(128),
    DATA_CRT_USER     NVARCHAR2(20),
    DATA_CRT_DATE     CHAR(8),
    DATA_CRT_TIME     CHAR(14),
    DATA_CHG_USER     NVARCHAR2(20),
    DATA_CHG_DATE     CHAR(8),
    DATA_CHG_TIME     CHAR(14),
    DATA_APV_USER     NVARCHAR2(20),
    DATA_APV_DATE     CHAR(8),
    DATA_APV_TIME     CHAR(14),
    RSV1              NVARCHAR2(180),
    RSV2              NVARCHAR2(180),
    RSV3              NVARCHAR2(180),
    RSV4              NVARCHAR2(180),
    RSV5              NVARCHAR2(180),
    RPT_TIME          CHAR(14),
    RPT_DATE          CHAR(8),
    ODS_DATA_ID       CHAR(32),
    B_ENT_CERT        CHAR(2),
    B_ENT_CERT_NUM    NVARCHAR2(80)
);
comment on column MBT_310_C_RPT_BAK.DATA_ID is '主键';
comment on column MBT_310_C_RPT_BAK.PDATA_ID is '外键';
comment on column MBT_310_C_RPT_BAK.OTH_ENT_CERT_TYPE is '企业身份标识类型';
comment on column MBT_310_C_RPT_BAK.OTH_ENT_CERT_NUM is '企业身份标识号码';
comment on column MBT_310_C_RPT_BAK.DATA_STATUS is '数据状态';
comment on column MBT_310_C_RPT_BAK.ID_INFO_UP_DATE is '信息更新日期';
comment on column MBT_310_C_RPT_BAK.DATA_DATE is '数据日期';
comment on column MBT_310_C_RPT_BAK.CORP_ID is '法人机构号';
comment on column MBT_310_C_RPT_BAK.ORG_ID is '分行机构号';
comment on column MBT_310_C_RPT_BAK.GROUP_ID is '部门编号';
comment on column MBT_310_C_RPT_BAK.INQ_ORG_ID is '查询机构号';
comment on column MBT_310_C_RPT_BAK.INQ_GROUP_ID is '查询组号';
comment on column MBT_310_C_RPT_BAK.DATA_DESC is '记录描述';
comment on column MBT_310_C_RPT_BAK.REMARKS is '备注';
comment on column MBT_310_C_RPT_BAK.CHECK_FLAG is '校验标识';
comment on column MBT_310_C_RPT_BAK.CHECK_DESC is '校验结果';
comment on column MBT_310_C_RPT_BAK.CHECK_ERR_TYPE is '校验失败类型';
comment on column MBT_310_C_RPT_BAK.NEXT_ACTION is '下一动作';
comment on column MBT_310_C_RPT_BAK.DATA_FLAG is '数据是否已删除';
comment on column MBT_310_C_RPT_BAK.DATA_SOURE is '数据来源';
comment on column MBT_310_C_RPT_BAK.DATA_VERSION is '数据版本号';
comment on column MBT_310_C_RPT_BAK.DATA_REJ_DESC is '数据审核拒绝描述';
comment on column MBT_310_C_RPT_BAK.DATA_DEL_DESC is '数据删除描述';
comment on column MBT_310_C_RPT_BAK.DATA_CRT_USER is '数据创建/导入用户';
comment on column MBT_310_C_RPT_BAK.DATA_CRT_DATE is '数据创建/导入日期';
comment on column MBT_310_C_RPT_BAK.DATA_CRT_TIME is '数据创建/导入时间';
comment on column MBT_310_C_RPT_BAK.DATA_CHG_USER is '数据修改/删除用户';
comment on column MBT_310_C_RPT_BAK.DATA_CHG_DATE is '数据修改/删除日期';
comment on column MBT_310_C_RPT_BAK.DATA_CHG_TIME is '数据修改/删除时间';
comment on column MBT_310_C_RPT_BAK.DATA_APV_USER is '数据审核/拒绝用户';
comment on column MBT_310_C_RPT_BAK.DATA_APV_DATE is '数据审核/拒绝日期';
comment on column MBT_310_C_RPT_BAK.DATA_APV_TIME is '数据审核/拒绝时间';
comment on column MBT_310_C_RPT_BAK.RSV1 is '扩展字段1';
comment on column MBT_310_C_RPT_BAK.RSV2 is '扩展字段2';
comment on column MBT_310_C_RPT_BAK.RSV3 is '扩展字段3';
comment on column MBT_310_C_RPT_BAK.RSV4 is '扩展字段4';
comment on column MBT_310_C_RPT_BAK.RSV5 is '扩展字段5';
comment on column MBT_310_C_RPT_BAK.RPT_TIME is '上报数据时间';
comment on column MBT_310_C_RPT_BAK.RPT_DATE is '上报数据日期';
comment on column MBT_310_C_RPT_BAK.ODS_DATA_ID is 'ODS数据ID';
comment on column MBT_310_C_RPT_BAK.B_ENT_CERT is '企业身份标识类型';
comment on column MBT_310_C_RPT_BAK.B_ENT_CERT_NUM is '企业身份标识号码';

create table MBT_310_E_RPT_BAK
(
    DATA_ID             CHAR(32) not null primary key,
    PDATA_ID            CHAR(32),
    MMB_ALIAS           NVARCHAR2(30),
    MMB_ID_TYPE         VARCHAR2(2),
    MMB_ID_NUM          NVARCHAR2(20),
    MMB_PSTN            CHAR,
    DATA_STATUS         CHAR(2),
    DATA_DATE           CHAR(8),
    CORP_ID             VARCHAR2(14),
    ORG_ID              VARCHAR2(14),
    GROUP_ID            VARCHAR2(14),
    INQ_ORG_ID          CHAR(24),
    INQ_GROUP_ID        CHAR(24),
    DATA_DESC           NVARCHAR2(256),
    REMARKS             NVARCHAR2(512),
    CHECK_FLAG          CHAR,
    CHECK_DESC          NVARCHAR2(512),
    CHECK_ERR_TYPE      CHAR,
    NEXT_ACTION         CHAR(2),
    DATA_FLAG           CHAR,
    DATA_SOURCE         CHAR,
    DATA_VERSION        NUMBER(8),
    DATA_REJ_DESC       NVARCHAR2(128),
    DATA_DEL_DESC       NVARCHAR2(128),
    DATA_CRT_USER       NVARCHAR2(20),
    DATA_CRT_DATE       CHAR(8),
    DATA_CRT_TIME       CHAR(14),
    DATA_CHG_USER       NVARCHAR2(20),
    DATA_CHG_DATE       CHAR(8),
    DATA_CHG_TIME       CHAR(14),
    DATA_APV_USER       NVARCHAR2(20),
    DATA_APV_DATE       CHAR(8),
    DATA_APV_TIME       CHAR(14),
    RSV1                NVARCHAR2(180),
    RSV2                NVARCHAR2(180),
    RSV3                NVARCHAR2(180),
    RSV4                NVARCHAR2(180),
    RSV5                NVARCHAR2(180),
    MN_MMB_INFO_UP_DATE CHAR(8),
    ODS_DATA_ID         CHAR(32),
    RPT_DATE            CHAR(8),
    RPT_TIME            CHAR(14),
    B_ENT_CERT          CHAR(2),
    B_ENT_CERT_NUM      NVARCHAR2(80)
);
comment on column MBT_310_E_RPT_BAK.DATA_ID is '主键';
comment on column MBT_310_E_RPT_BAK.PDATA_ID is '外键';
comment on column MBT_310_E_RPT_BAK.MMB_ALIAS is '主要组成人员姓名';
comment on column MBT_310_E_RPT_BAK.MMB_ID_TYPE is '主要组成人员证件类型';
comment on column MBT_310_E_RPT_BAK.MMB_ID_NUM is '主要组成人员证件号码';
comment on column MBT_310_E_RPT_BAK.MMB_PSTN is '主要组成人员职位';
comment on column MBT_310_E_RPT_BAK.DATA_STATUS is '数据状态';
comment on column MBT_310_E_RPT_BAK.DATA_DATE is '数据日期';
comment on column MBT_310_E_RPT_BAK.CORP_ID is '法人机构号';
comment on column MBT_310_E_RPT_BAK.ORG_ID is '分行机构号';
comment on column MBT_310_E_RPT_BAK.GROUP_ID is '部门编号';
comment on column MBT_310_E_RPT_BAK.INQ_ORG_ID is '查询机构号';
comment on column MBT_310_E_RPT_BAK.INQ_GROUP_ID is '查询组号';
comment on column MBT_310_E_RPT_BAK.DATA_DESC is '记录描述';
comment on column MBT_310_E_RPT_BAK.REMARKS is '备注';
comment on column MBT_310_E_RPT_BAK.CHECK_FLAG is '校验标识';
comment on column MBT_310_E_RPT_BAK.CHECK_DESC is '校验结果';
comment on column MBT_310_E_RPT_BAK.CHECK_ERR_TYPE is '校验失败类型';
comment on column MBT_310_E_RPT_BAK.NEXT_ACTION is '下一动作';
comment on column MBT_310_E_RPT_BAK.DATA_FLAG is '数据是否已删除';
comment on column MBT_310_E_RPT_BAK.DATA_SOURCE is '数据来源';
comment on column MBT_310_E_RPT_BAK.DATA_VERSION is '数据版本号';
comment on column MBT_310_E_RPT_BAK.DATA_REJ_DESC is '数据审核拒绝描述';
comment on column MBT_310_E_RPT_BAK.DATA_DEL_DESC is '数据删除描述';
comment on column MBT_310_E_RPT_BAK.DATA_CRT_USER is '数据创建/导入用户';
comment on column MBT_310_E_RPT_BAK.DATA_CRT_DATE is '数据创建/导入日期';
comment on column MBT_310_E_RPT_BAK.DATA_CRT_TIME is '数据创建/导入时间';
comment on column MBT_310_E_RPT_BAK.DATA_CHG_USER is '数据修改/删除用户';
comment on column MBT_310_E_RPT_BAK.DATA_CHG_DATE is '数据修改/删除日期';
comment on column MBT_310_E_RPT_BAK.DATA_CHG_TIME is '数据修改/删除时间';
comment on column MBT_310_E_RPT_BAK.DATA_APV_USER is '数据审核/拒绝用户';
comment on column MBT_310_E_RPT_BAK.DATA_APV_DATE is '数据审核/拒绝日期';
comment on column MBT_310_E_RPT_BAK.DATA_APV_TIME is '数据审核/拒绝时间';
comment on column MBT_310_E_RPT_BAK.RSV1 is '扩展字段1';
comment on column MBT_310_E_RPT_BAK.RSV2 is '扩展字段2';
comment on column MBT_310_E_RPT_BAK.RSV3 is '扩展字段3';
comment on column MBT_310_E_RPT_BAK.RSV4 is '扩展字段4';
comment on column MBT_310_E_RPT_BAK.RSV5 is '扩展字段5';
comment on column MBT_310_E_RPT_BAK.MN_MMB_INFO_UP_DATE is '信息更新日期';
comment on column MBT_310_E_RPT_BAK.ODS_DATA_ID is 'ODS数据ID';
comment on column MBT_310_E_RPT_BAK.RPT_DATE is '上报数据日期';
comment on column MBT_310_E_RPT_BAK.RPT_TIME is '上报数据时间';
comment on column MBT_310_E_RPT_BAK.B_ENT_CERT is '企业身份标识类型';
comment on column MBT_310_E_RPT_BAK.B_ENT_CERT_NUM is '企业身份标识号码';

create table MBT_310_F_RPT_BAK
(
    DATA_ID                 CHAR(32) not null primary key,
    PDATA_ID                CHAR(32) ,
    SHAR_HOD_TYPE           VARCHAR2(2),
    SHAR_HOD_CERT_TYPE      CHAR,
    SHAR_HOD_NAME           NVARCHAR2(80),
    SHAR_HOD_ID_TYPE        VARCHAR2(2),
    SHAR_HOD_ID_NUM         NVARCHAR2(40),
    INV_RATIO               NUMBER(7),
    DATA_STATUS             CHAR(2),
    DATA_DATE               CHAR(8),
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
    MN_SHA_HOD_INFO_UP_DATE CHAR(8),
    RPT_TIME                CHAR(14),
    RPT_DATE                CHAR(8),
    ODS_DATA_ID             CHAR(32),
    B_ENT_CERT              CHAR(2),
    B_ENT_CERT_NUM          NVARCHAR2(80)
);
comment on column MBT_310_F_RPT_BAK.DATA_ID is '主键';
comment on column MBT_310_F_RPT_BAK.PDATA_ID is '外键';
comment on column MBT_310_F_RPT_BAK.SHAR_HOD_TYPE is '出资人类型';
comment on column MBT_310_F_RPT_BAK.SHAR_HOD_CERT_TYPE is '出资人身份类别';
comment on column MBT_310_F_RPT_BAK.SHAR_HOD_NAME is '出资人名称';
comment on column MBT_310_F_RPT_BAK.SHAR_HOD_ID_TYPE is '出资人身份标识类型';
comment on column MBT_310_F_RPT_BAK.SHAR_HOD_ID_NUM is '出资人身份标识号码';
comment on column MBT_310_F_RPT_BAK.INV_RATIO is '出资比例';
comment on column MBT_310_F_RPT_BAK.DATA_STATUS is '数据状态';
comment on column MBT_310_F_RPT_BAK.DATA_DATE is '数据日期';
comment on column MBT_310_F_RPT_BAK.CORP_ID is '法人机构号';
comment on column MBT_310_F_RPT_BAK.ORG_ID is '分行机构号';
comment on column MBT_310_F_RPT_BAK.GROUP_ID is '部门编号';
comment on column MBT_310_F_RPT_BAK.INQ_ORG_ID is '查询机构号';
comment on column MBT_310_F_RPT_BAK.INQ_GROUP_ID is '查询组号';
comment on column MBT_310_F_RPT_BAK.DATA_DESC is '记录描述';
comment on column MBT_310_F_RPT_BAK.REMARKS is '备注';
comment on column MBT_310_F_RPT_BAK.CHECK_FLAG is '校验标识';
comment on column MBT_310_F_RPT_BAK.CHECK_DESC is '校验结果';
comment on column MBT_310_F_RPT_BAK.CHECK_ERR_TYPE is '校验失败类型';
comment on column MBT_310_F_RPT_BAK.NEXT_ACTION is '下一动作';
comment on column MBT_310_F_RPT_BAK.DATA_FLAG is '数据是否已删除';
comment on column MBT_310_F_RPT_BAK.DATA_SOURE is '数据来源';
comment on column MBT_310_F_RPT_BAK.DATA_VERSION is '数据版本号';
comment on column MBT_310_F_RPT_BAK.DATA_REJ_DESC is '数据审核拒绝描述';
comment on column MBT_310_F_RPT_BAK.DATA_DEL_DESC is '数据删除描述';
comment on column MBT_310_F_RPT_BAK.DATA_CRT_USER is '数据创建/导入用户';
comment on column MBT_310_F_RPT_BAK.DATA_CRT_DATE is '数据创建/导入日期';
comment on column MBT_310_F_RPT_BAK.DATA_CRT_TIME is '数据创建/导入时间';
comment on column MBT_310_F_RPT_BAK.DATA_CHG_USER is '数据修改/删除用户';
comment on column MBT_310_F_RPT_BAK.DATA_CHG_DATE is '数据修改/删除日期';
comment on column MBT_310_F_RPT_BAK.DATA_CHG_TIME is '数据修改/删除时间';
comment on column MBT_310_F_RPT_BAK.DATA_APV_USER is '数据审核/拒绝用户';
comment on column MBT_310_F_RPT_BAK.DATA_APV_DATE is '数据审核/拒绝日期';
comment on column MBT_310_F_RPT_BAK.DATA_APV_TIME is '数据审核/拒绝时间';
comment on column MBT_310_F_RPT_BAK.RSV1 is '扩展字段1';
comment on column MBT_310_F_RPT_BAK.RSV2 is '扩展字段2';
comment on column MBT_310_F_RPT_BAK.RSV3 is '扩展字段3';
comment on column MBT_310_F_RPT_BAK.RSV4 is '扩展字段4';
comment on column MBT_310_F_RPT_BAK.RSV5 is '扩展字段5';
comment on column MBT_310_F_RPT_BAK.MN_SHA_HOD_INFO_UP_DATE is '信息更新日期';
comment on column MBT_310_F_RPT_BAK.RPT_TIME is '上报数据时间';
comment on column MBT_310_F_RPT_BAK.RPT_DATE is '上报数据日期';
comment on column MBT_310_F_RPT_BAK.ODS_DATA_ID is 'ODS数据ID';
comment on column MBT_310_F_RPT_BAK.B_ENT_CERT is '企业身份标识类型';
comment on column MBT_310_F_RPT_BAK.B_ENT_CERT_NUM is '企业身份标识号码';

create table MBT_410_RPT_BAK
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
    RPT_DATE                 CHAR(8),
    RPT_TIME                 CHAR(14),
    B_CUST_NO                NVARCHAR2(32),
    B_MONTH                  CHAR(8),
    B_INFO_UP_DATE           CHAR(8),
    IS_RPT                   VARCHAR2(64),
    ROW_NUM                  NUMBER,
    FB_STATUS                CHAR(2),
    RPT_FILE_NAME            VARCHAR2(512),
    FB_MSG                   VARCHAR2(1024),
    C_LOAN_AMT_LCY           NUMBER(15),
    H_ACCT_BAL_LCY           NUMBER(15),
    H_TOT_OVERD_LCY          NUMBER(15),
    H_OVERD_PRINC_LCY        NUMBER(15),
    H_LAT_RPY_AMT_LCY        NUMBER(15),
    H_LAT_RPY_PRINC_AMT_LCY  NUMBER(15),
    H_LAT_AGRR_RPY_AMT_LCY   NUMBER(15),
    C_ACCT_CRED_LINE_AMT_LCY NUMBER(15)
);
comment on column MBT_410_RPT_BAK.DATA_ID is '主键';
comment on column MBT_410_RPT_BAK.DATA_DATE is '数据日期';
comment on column MBT_410_RPT_BAK.CORP_ID is '法人机构号';
comment on column MBT_410_RPT_BAK.ORG_ID is '分行机构号';
comment on column MBT_410_RPT_BAK.GROUP_ID is '部门编号';
comment on column MBT_410_RPT_BAK.INQ_ORG_ID is '查询机构号';
comment on column MBT_410_RPT_BAK.INQ_GROUP_ID is '查询组号';
comment on column MBT_410_RPT_BAK.B_INF_REC_TYPE is '信息记录类型';
comment on column MBT_410_RPT_BAK.B_ACCT_TYPE is '账户类型';
comment on column MBT_410_RPT_BAK.B_ACCT_CODE is '账户标识码';
comment on column MBT_410_RPT_BAK.B_RPT_DATE is '信息报告日期';
comment on column MBT_410_RPT_BAK.B_RPT_DATE_CODE is '报告时点说明代码';
comment on column MBT_410_RPT_BAK.B_NAME is '借款人名称';
comment on column MBT_410_RPT_BAK.B_ID_TYPE is '借款人身份标识类型';
comment on column MBT_410_RPT_BAK.B_ID_NUM is '借款人身份标识号码';
comment on column MBT_410_RPT_BAK.B_MNGMT_ORG_CODE is '业务管理机构代码';
comment on column MBT_410_RPT_BAK.C_BUSI_LINES is '借贷业务大类';
comment on column MBT_410_RPT_BAK.C_BUSI_DTL_LINES is '借贷业务种类细分';
comment on column MBT_410_RPT_BAK.C_OPEN_DATE is '开户日期';
comment on column MBT_410_RPT_BAK.C_CY is '币种';
comment on column MBT_410_RPT_BAK.C_ACCT_CRED_LINE_AMT is '信用额度';
comment on column MBT_410_RPT_BAK.C_LOAN_AMT is '借款金额';
comment on column MBT_410_RPT_BAK.C_FLAG is '分次放款标志';
comment on column MBT_410_RPT_BAK.C_DUE_DATE is '到期日期';
comment on column MBT_410_RPT_BAK.C_REPAY_MODE is '还款方式';
comment on column MBT_410_RPT_BAK.C_REPAY_FREQCY is '还款频率';
comment on column MBT_410_RPT_BAK.C_APPLY_BUSI_DIST is '业务申请地行政区划代码';
comment on column MBT_410_RPT_BAK.C_GUAR_MODE is '担保方式';
comment on column MBT_410_RPT_BAK.C_OTH_REPY_GUAR_WAY is '其他还款保证方式';
comment on column MBT_410_RPT_BAK.C_LOAN_TIME_LIM_CAT is '借款期限分类';
comment on column MBT_410_RPT_BAK.C_LOA_FRM is '贷款发放形式';
comment on column MBT_410_RPT_BAK.C_ACT_INVEST is '贷款实际投向';
comment on column MBT_410_RPT_BAK.C_FUND_SOU is '业务经营类型';
comment on column MBT_410_RPT_BAK.C_ASSET_TRAND_FLAG is '资产转让标志';
comment on column MBT_410_RPT_BAK.F_MCC is '授信协议标识码';
comment on column MBT_410_RPT_BAK.G_INIT_CRED_NAME is '初始债权人名称';
comment on column MBT_410_RPT_BAK.G_INIT_CED_ORG_CODE is '初始债权人机构代码';
comment on column MBT_410_RPT_BAK.G_ORIG_DBT_CATE is '原债务种类';
comment on column MBT_410_RPT_BAK.G_INIT_RPY_STS is '债权转移时的还款状态';
comment on column MBT_410_RPT_BAK.H_ACCT_STATUS is '账户状态';
comment on column MBT_410_RPT_BAK.H_ACCT_BAL is '余额';
comment on column MBT_410_RPT_BAK.H_BAL_CHG_DATE is '余额变化日期';
comment on column MBT_410_RPT_BAK.H_FIVE_CATE is '五级分类';
comment on column MBT_410_RPT_BAK.H_FIVE_CATE_ADJ_DATE is '五级分类认定日期';
comment on column MBT_410_RPT_BAK.H_PYMT_PRD is '剩余还款月数';
comment on column MBT_410_RPT_BAK.H_TOT_OVERD is '当前逾期总额';
comment on column MBT_410_RPT_BAK.H_OVERD_PRINC is '当前逾期本金';
comment on column MBT_410_RPT_BAK.H_OVERD_DY is '当前逾期天数';
comment on column MBT_410_RPT_BAK.H_LAT_RPY_DATE is '最近一次实际还款日期';
comment on column MBT_410_RPT_BAK.H_LAT_RPY_AMT is '最近一次实际还款金额';
comment on column MBT_410_RPT_BAK.H_LAT_RPY_PRINC_AMT is '最近一次实际归还本金';
comment on column MBT_410_RPT_BAK.H_RPMT_TYPE is '还款形式';
comment on column MBT_410_RPT_BAK.H_LAT_AGRR_RPY_DATE is '最近一次约定还款日';
comment on column MBT_410_RPT_BAK.H_LAT_AGRR_RPY_AMT is '最近一次约定还款金额';
comment on column MBT_410_RPT_BAK.H_NXT_AGRR_RPY_DATE is '下一次约定还款日期';
comment on column MBT_410_RPT_BAK.H_CLOSE_DATE is '账户关闭日期';
comment on column MBT_410_RPT_BAK.DATA_DESC is '记录描述';
comment on column MBT_410_RPT_BAK.REMARKS is '备注';
comment on column MBT_410_RPT_BAK.CHECK_FLAG is '校验标识';
comment on column MBT_410_RPT_BAK.CHECK_DESC is '校验结果';
comment on column MBT_410_RPT_BAK.CHECK_ERR_TYPE is '校验失败类型';
comment on column MBT_410_RPT_BAK.NEXT_ACTION is '下一动作';
comment on column MBT_410_RPT_BAK.DATA_STATUS is '数据状态';
comment on column MBT_410_RPT_BAK.DATA_FLAG is '数据是否已删除';
comment on column MBT_410_RPT_BAK.DATA_SOURCE is '数据来源';
comment on column MBT_410_RPT_BAK.DATA_VERSION is '数据版本号';
comment on column MBT_410_RPT_BAK.DATA_REJ_DESC is '数据审核拒绝描述';
comment on column MBT_410_RPT_BAK.DATA_DEL_DESC is '数据删除描述';
comment on column MBT_410_RPT_BAK.DATA_CRT_USER is '数据创建/导入用户';
comment on column MBT_410_RPT_BAK.DATA_CRT_DATE is '数据创建/导入日期';
comment on column MBT_410_RPT_BAK.DATA_CRT_TIME is '数据创建/导入时间';
comment on column MBT_410_RPT_BAK.DATA_CHG_USER is '数据修改/删除用户';
comment on column MBT_410_RPT_BAK.DATA_CHG_DATE is '数据修改/删除日期';
comment on column MBT_410_RPT_BAK.DATA_CHG_TIME is '数据修改/删除时间';
comment on column MBT_410_RPT_BAK.DATA_APV_USER is '数据审核/拒绝用户';
comment on column MBT_410_RPT_BAK.DATA_APV_DATE is '数据审核/拒绝日期';
comment on column MBT_410_RPT_BAK.DATA_APV_TIME is '数据审核/拒绝时间';
comment on column MBT_410_RPT_BAK.RSV1 is '扩展字段1';
comment on column MBT_410_RPT_BAK.RSV2 is '扩展字段2';
comment on column MBT_410_RPT_BAK.RSV3 is '扩展字段3';
comment on column MBT_410_RPT_BAK.RSV4 is '扩展字段4';
comment on column MBT_410_RPT_BAK.RSV5 is '扩展字段5';
comment on column MBT_410_RPT_BAK.ODS_DATA_ID is 'ODS数据ID';
comment on column MBT_410_RPT_BAK.RPT_DATE is '上报数据日期';
comment on column MBT_410_RPT_BAK.RPT_TIME is '上报数据时间';
comment on column MBT_410_RPT_BAK.B_CUST_NO is '客户号';
comment on column MBT_410_RPT_BAK.B_MONTH is '月结日';
comment on column MBT_410_RPT_BAK.B_INFO_UP_DATE is '信息更新日期';
comment on column MBT_410_RPT_BAK.IS_RPT is '是否上报';
comment on column MBT_410_RPT_BAK.FB_STATUS is '反馈状态';
comment on column MBT_410_RPT_BAK.RPT_FILE_NAME is '上报文件名';
comment on column MBT_410_RPT_BAK.FB_MSG is '反馈信息';


create table MBT_410_D_RPT_BAK
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
    RPT_DATE                CHAR(8),
    RPT_TIME                CHAR(14),
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
comment on column MBT_410_D_RPT_BAK.DATA_ID is '主键';
comment on column MBT_410_D_RPT_BAK.PDATA_ID is '外键';
comment on column MBT_410_D_RPT_BAK.D_ARLP_ID_TYPE is '身份类别';
comment on column MBT_410_D_RPT_BAK.D_ARLP_NAME is '责任人名称';
comment on column MBT_410_D_RPT_BAK.D_ARLP_CERT_TYPE is '责任人身份标识类型';
comment on column MBT_410_D_RPT_BAK.D_ARLP_CERT_NUM is '责任人身份标识号码';
comment on column MBT_410_D_RPT_BAK.D_ARLP_TYPE is '还款责任人类型';
comment on column MBT_410_D_RPT_BAK.D_ARLP_AMT is '还款责任金额';
comment on column MBT_410_D_RPT_BAK.D_WARTY_SIGN is '联保标志';
comment on column MBT_410_D_RPT_BAK.D_MAX_GUAR_MCC is '保证合同编号';
comment on column MBT_410_D_RPT_BAK.ODS_DATA_ID is 'ODS数据ID';
comment on column MBT_410_D_RPT_BAK.RPT_DATE is '上报数据日期';
comment on column MBT_410_D_RPT_BAK.RPT_TIME is '上报数据时间';
comment on column MBT_410_D_RPT_BAK.DATA_DATE is '数据日期';
comment on column MBT_410_D_RPT_BAK.ACTU_COTRL_INFO_UP_DATE is '信息更新日期';
comment on column MBT_410_D_RPT_BAK.CORP_ID is '法人机构号';
comment on column MBT_410_D_RPT_BAK.ORG_ID is '分行机构号';
comment on column MBT_410_D_RPT_BAK.GROUP_ID is '部门编号';
comment on column MBT_410_D_RPT_BAK.INQ_ORG_ID is '查询机构号';
comment on column MBT_410_D_RPT_BAK.INQ_GROUP_ID is '查询组号';
comment on column MBT_410_D_RPT_BAK.DATA_DESC is '记录描述';
comment on column MBT_410_D_RPT_BAK.REMARKS is '备注';
comment on column MBT_410_D_RPT_BAK.CHECK_FLAG is '校验标识';
comment on column MBT_410_D_RPT_BAK.CHECK_DESC is '校验结果';
comment on column MBT_410_D_RPT_BAK.CHECK_ERR_TYPE is '校验失败类型';
comment on column MBT_410_D_RPT_BAK.NEXT_ACTION is '下一动作';
comment on column MBT_410_D_RPT_BAK.DATA_FLAG is '数据是否已删除';
comment on column MBT_410_D_RPT_BAK.DATA_SOURE is '数据来源';
comment on column MBT_410_D_RPT_BAK.DATA_VERSION is '数据版本号';
comment on column MBT_410_D_RPT_BAK.DATA_REJ_DESC is '数据审核拒绝描述';
comment on column MBT_410_D_RPT_BAK.DATA_DEL_DESC is '数据删除描述';
comment on column MBT_410_D_RPT_BAK.DATA_CRT_USER is '数据创建/导入用户';
comment on column MBT_410_D_RPT_BAK.DATA_CRT_DATE is '数据创建/导入日期';
comment on column MBT_410_D_RPT_BAK.DATA_CRT_TIME is '数据创建/导入时间';
comment on column MBT_410_D_RPT_BAK.DATA_CHG_USER is '数据修改/删除用户';
comment on column MBT_410_D_RPT_BAK.DATA_CHG_DATE is '数据修改/删除日期';
comment on column MBT_410_D_RPT_BAK.DATA_CHG_TIME is '数据修改/删除时间';
comment on column MBT_410_D_RPT_BAK.DATA_APV_USER is '数据审核/拒绝用户';
comment on column MBT_410_D_RPT_BAK.DATA_APV_DATE is '数据审核/拒绝日期';
comment on column MBT_410_D_RPT_BAK.DATA_APV_TIME is '数据审核/拒绝时间';
comment on column MBT_410_D_RPT_BAK.RSV1 is '扩展字段1';
comment on column MBT_410_D_RPT_BAK.RSV2 is '扩展字段2';
comment on column MBT_410_D_RPT_BAK.RSV3 is '扩展字段3';
comment on column MBT_410_D_RPT_BAK.RSV4 is '扩展字段4';
comment on column MBT_410_D_RPT_BAK.RSV5 is '扩展字段5';
comment on column MBT_410_D_RPT_BAK.B_ACCT_CODE is '账户标识码';

create table MBT_410_E_RPT_BAK
(
    DATA_ID                 CHAR(32) not null primary key,
    PDATA_ID                CHAR(32) not null,
    E_CCC                   VARCHAR2(60),
    ODS_DATA_ID             CHAR(32),
    RPT_DATE                CHAR(8),
    RPT_TIME                CHAR(14),
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
comment on column MBT_410_E_RPT_BAK.DATA_ID is '主键';
comment on column MBT_410_E_RPT_BAK.PDATA_ID is '外键';
comment on column MBT_410_E_RPT_BAK.E_CCC is '抵（质）押合同标识码';
comment on column MBT_410_E_RPT_BAK.ODS_DATA_ID is 'ODS数据ID';
comment on column MBT_410_E_RPT_BAK.RPT_DATE is '上报数据日期';
comment on column MBT_410_E_RPT_BAK.RPT_TIME is '上报数据时间';
comment on column MBT_410_E_RPT_BAK.DATA_DATE is '数据日期';
comment on column MBT_410_E_RPT_BAK.ACTU_COTRL_INFO_UP_DATE is '信息更新日期';
comment on column MBT_410_E_RPT_BAK.CORP_ID is '法人机构号';
comment on column MBT_410_E_RPT_BAK.ORG_ID is '分行机构号';
comment on column MBT_410_E_RPT_BAK.GROUP_ID is '部门编号';
comment on column MBT_410_E_RPT_BAK.INQ_ORG_ID is '查询机构号';
comment on column MBT_410_E_RPT_BAK.INQ_GROUP_ID is '查询组号';
comment on column MBT_410_E_RPT_BAK.DATA_DESC is '记录描述';
comment on column MBT_410_E_RPT_BAK.REMARKS is '备注';
comment on column MBT_410_E_RPT_BAK.CHECK_FLAG is '校验标识';
comment on column MBT_410_E_RPT_BAK.CHECK_DESC is '校验结果';
comment on column MBT_410_E_RPT_BAK.CHECK_ERR_TYPE is '校验失败类型';
comment on column MBT_410_E_RPT_BAK.NEXT_ACTION is '下一动作';
comment on column MBT_410_E_RPT_BAK.DATA_FLAG is '数据是否已删除';
comment on column MBT_410_E_RPT_BAK.DATA_SOURE is '数据来源';
comment on column MBT_410_E_RPT_BAK.DATA_VERSION is '数据版本号';
comment on column MBT_410_E_RPT_BAK.DATA_REJ_DESC is '数据审核拒绝描述';
comment on column MBT_410_E_RPT_BAK.DATA_DEL_DESC is '数据删除描述';
comment on column MBT_410_E_RPT_BAK.DATA_CRT_USER is '数据创建/导入用户';
comment on column MBT_410_E_RPT_BAK.DATA_CRT_DATE is '数据创建/导入日期';
comment on column MBT_410_E_RPT_BAK.DATA_CRT_TIME is '数据创建/导入时间';
comment on column MBT_410_E_RPT_BAK.DATA_CHG_USER is '数据修改/删除用户';
comment on column MBT_410_E_RPT_BAK.DATA_CHG_DATE is '数据修改/删除日期';
comment on column MBT_410_E_RPT_BAK.DATA_CHG_TIME is '数据修改/删除时间';
comment on column MBT_410_E_RPT_BAK.DATA_APV_USER is '数据审核/拒绝用户';
comment on column MBT_410_E_RPT_BAK.DATA_APV_DATE is '数据审核/拒绝日期';
comment on column MBT_410_E_RPT_BAK.DATA_APV_TIME is '数据审核/拒绝时间';
comment on column MBT_410_E_RPT_BAK.RSV1 is '扩展字段1';
comment on column MBT_410_E_RPT_BAK.RSV2 is '扩展字段2';
comment on column MBT_410_E_RPT_BAK.RSV3 is '扩展字段3';
comment on column MBT_410_E_RPT_BAK.RSV4 is '扩展字段4';
comment on column MBT_410_E_RPT_BAK.RSV5 is '扩展字段5';
comment on column MBT_410_E_RPT_BAK.B_ACCT_CODE is '账户标识码';

create table MBT_410_I_RPT_BAK
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
    RPT_DATE                CHAR(8),
    RPT_TIME                CHAR(14),
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
comment on column MBT_410_I_RPT_BAK.DATA_ID is '主键';
comment on column MBT_410_I_RPT_BAK.PDATA_ID is '外键';
comment on column MBT_410_I_RPT_BAK.REF_NO is '交易流水';
comment on column MBT_410_I_RPT_BAK.I_CHAN_TRAN_TYPE is '交易类型';
comment on column MBT_410_I_RPT_BAK.I_TRAN_DATE is '交易日期';
comment on column MBT_410_I_RPT_BAK.I_TRAN_AMT is '交易金额';
comment on column MBT_410_I_RPT_BAK.I_DUE_TRAN_MON is '到期日期变更月数';
comment on column MBT_410_I_RPT_BAK.I_DET_INFO is '交易明细信息';
comment on column MBT_410_I_RPT_BAK.ODS_DATA_ID is 'ODS数据ID';
comment on column MBT_410_I_RPT_BAK.RPT_DATE is '上报数据日期';
comment on column MBT_410_I_RPT_BAK.RPT_TIME is '上报数据时间';
comment on column MBT_410_I_RPT_BAK.DATA_DATE is '数据日期';
comment on column MBT_410_I_RPT_BAK.ACTU_COTRL_INFO_UP_DATE is '信息更新日期';
comment on column MBT_410_I_RPT_BAK.CORP_ID is '法人机构号';
comment on column MBT_410_I_RPT_BAK.ORG_ID is '分行机构号';
comment on column MBT_410_I_RPT_BAK.GROUP_ID is '部门编号';
comment on column MBT_410_I_RPT_BAK.INQ_ORG_ID is '查询机构号';
comment on column MBT_410_I_RPT_BAK.INQ_GROUP_ID is '查询组号';
comment on column MBT_410_I_RPT_BAK.DATA_DESC is '记录描述';
comment on column MBT_410_I_RPT_BAK.REMARKS is '备注';
comment on column MBT_410_I_RPT_BAK.CHECK_FLAG is '校验标识';
comment on column MBT_410_I_RPT_BAK.CHECK_DESC is '校验结果';
comment on column MBT_410_I_RPT_BAK.CHECK_ERR_TYPE is '校验失败类型';
comment on column MBT_410_I_RPT_BAK.NEXT_ACTION is '下一动作';
comment on column MBT_410_I_RPT_BAK.DATA_FLAG is '数据是否已删除';
comment on column MBT_410_I_RPT_BAK.DATA_SOURE is '数据来源';
comment on column MBT_410_I_RPT_BAK.DATA_VERSION is '数据版本号';
comment on column MBT_410_I_RPT_BAK.DATA_REJ_DESC is '数据审核拒绝描述';
comment on column MBT_410_I_RPT_BAK.DATA_DEL_DESC is '数据删除描述';
comment on column MBT_410_I_RPT_BAK.DATA_CRT_USER is '数据创建/导入用户';
comment on column MBT_410_I_RPT_BAK.DATA_CRT_DATE is '数据创建/导入日期';
comment on column MBT_410_I_RPT_BAK.DATA_CRT_TIME is '数据创建/导入时间';
comment on column MBT_410_I_RPT_BAK.DATA_CHG_USER is '数据修改/删除用户';
comment on column MBT_410_I_RPT_BAK.DATA_CHG_DATE is '数据修改/删除日期';
comment on column MBT_410_I_RPT_BAK.DATA_CHG_TIME is '数据修改/删除时间';
comment on column MBT_410_I_RPT_BAK.DATA_APV_USER is '数据审核/拒绝用户';
comment on column MBT_410_I_RPT_BAK.DATA_APV_DATE is '数据审核/拒绝日期';
comment on column MBT_410_I_RPT_BAK.DATA_APV_TIME is '数据审核/拒绝时间';
comment on column MBT_410_I_RPT_BAK.RSV1 is '扩展字段1';
comment on column MBT_410_I_RPT_BAK.RSV2 is '扩展字段2';
comment on column MBT_410_I_RPT_BAK.RSV3 is '扩展字段3';
comment on column MBT_410_I_RPT_BAK.RSV4 is '扩展字段4';
comment on column MBT_410_I_RPT_BAK.RSV5 is '扩展字段5';
comment on column MBT_410_I_RPT_BAK.B_ACCT_CODE is '账户标识码';


create table MBT_420_RPT_BAK
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
    RPT_DATE           CHAR(8),
    RPT_TIME           CHAR(14),
    B_CUST_NO          NVARCHAR2(32),
    B_INFO_UP_DATE     CHAR(8),
    IS_RPT             VARCHAR2(64),
    ROW_NUM            NUMBER,
    FB_STATUS          CHAR(2),
    RPT_FILE_NAME      VARCHAR2(512),
    FB_MSG             VARCHAR2(1024),
    D_CREDIT_LIM_LCY   NUMBER(15),
    D_CREDIT_REST_LCY  NUMBER(15)
);
comment on column MBT_420_RPT_BAK.DATA_ID is '主键';
comment on column MBT_420_RPT_BAK.DATA_DATE is '数据日期';
comment on column MBT_420_RPT_BAK.CORP_ID is '法人机构号';
comment on column MBT_420_RPT_BAK.ORG_ID is '分行机构号';
comment on column MBT_420_RPT_BAK.GROUP_ID is '部门编号';
comment on column MBT_420_RPT_BAK.INQ_ORG_ID is '查询机构号';
comment on column MBT_420_RPT_BAK.INQ_GROUP_ID is '查询组号';
comment on column MBT_420_RPT_BAK.B_INF_REC_TYPE is '信息记录类型';
comment on column MBT_420_RPT_BAK.B_CONTRACT_CODE is '授信协议标识码';
comment on column MBT_420_RPT_BAK.B_RPT_DATE is '信息报告日期';
comment on column MBT_420_RPT_BAK.B_RPT_DATE_CODE is '报告时点说明代码';
comment on column MBT_420_RPT_BAK.B_NAME is '受信人名称';
comment on column MBT_420_RPT_BAK.B_ID_TYPE is '受信人身份标识类型';
comment on column MBT_420_RPT_BAK.B_ID_NUM is '受信人身份标识证件号码';
comment on column MBT_420_RPT_BAK.B_MNGMT_ORG_CODE is '业务管理机构代码';
comment on column MBT_420_RPT_BAK.B_CONTRACT_NO is '授信协议编号';
comment on column MBT_420_RPT_BAK.D_CREDIT_LIM_TYPE is '授信额度类型';
comment on column MBT_420_RPT_BAK.D_LIM_LOOP_FLG is '额度循环标志';
comment on column MBT_420_RPT_BAK.D_CREDIT_LIM is '授信额度';
comment on column MBT_420_RPT_BAK.D_CY is '币种';
comment on column MBT_420_RPT_BAK.D_CON_EFF_DATE is '额度生效日期';
comment on column MBT_420_RPT_BAK.D_CON_EXP_DATE is '额度到期日期';
comment on column MBT_420_RPT_BAK.D_CON_STATUS is '额度状态';
comment on column MBT_420_RPT_BAK.D_CREDIT_REST is '授信限额';
comment on column MBT_420_RPT_BAK.D_CREDIT_REST_CODE is '授信限额编号';
comment on column MBT_420_RPT_BAK.F_DATA_DESC is '记录描述';
comment on column MBT_420_RPT_BAK.REMARKS is '备注';
comment on column MBT_420_RPT_BAK.CHECK_FLAG is '校验标识';
comment on column MBT_420_RPT_BAK.CHECK_DESC is '校验结果';
comment on column MBT_420_RPT_BAK.CHECK_ERR_TYPE is '校验失败类型';
comment on column MBT_420_RPT_BAK.NEXT_ACTION is '下一动作';
comment on column MBT_420_RPT_BAK.DATA_STATUS is '数据状态';
comment on column MBT_420_RPT_BAK.DATA_FLAG is '数据是否已删除';
comment on column MBT_420_RPT_BAK.DATA_SOURCE is '数据来源';
comment on column MBT_420_RPT_BAK.DATA_VERSION is '数据版本号';
comment on column MBT_420_RPT_BAK.DATA_REJ_DESC is '数据审核拒绝描述';
comment on column MBT_420_RPT_BAK.DATA_DEL_DESC is '数据删除描述';
comment on column MBT_420_RPT_BAK.DATA_CRT_USER is '数据创建/导入用户';
comment on column MBT_420_RPT_BAK.DATA_CRT_DATE is '数据创建/导入日期';
comment on column MBT_420_RPT_BAK.DATA_CRT_TIME is '数据创建/导入时间';
comment on column MBT_420_RPT_BAK.DATA_CHG_USER is '数据修改/删除用户';
comment on column MBT_420_RPT_BAK.DATA_CHG_DATE is '数据修改/删除日期';
comment on column MBT_420_RPT_BAK.DATA_CHG_TIME is '数据修改/删除时间';
comment on column MBT_420_RPT_BAK.DATA_APV_USER is '数据审核/拒绝用户';
comment on column MBT_420_RPT_BAK.DATA_APV_DATE is '数据审核/拒绝日期';
comment on column MBT_420_RPT_BAK.DATA_APV_TIME is '数据审核/拒绝时间';
comment on column MBT_420_RPT_BAK.RSV1 is '扩展字段1';
comment on column MBT_420_RPT_BAK.RSV2 is '扩展字段2';
comment on column MBT_420_RPT_BAK.RSV3 is '扩展字段3';
comment on column MBT_420_RPT_BAK.RSV4 is '扩展字段4';
comment on column MBT_420_RPT_BAK.RSV5 is '扩展字段5';
comment on column MBT_420_RPT_BAK.ODS_DATA_ID is 'ODS数据ID';
comment on column MBT_420_RPT_BAK.RPT_DATE is '上报数据日期';
comment on column MBT_420_RPT_BAK.RPT_TIME is '上报数据时间';
comment on column MBT_420_RPT_BAK.B_CUST_NO is '客户号';
comment on column MBT_420_RPT_BAK.B_INFO_UP_DATE is '信息更新日期';
comment on column MBT_420_RPT_BAK.IS_RPT is '是否上报';
comment on column MBT_420_RPT_BAK.FB_STATUS is '反馈状态';
comment on column MBT_420_RPT_BAK.RPT_FILE_NAME is '上报文件名';
comment on column MBT_420_RPT_BAK.FB_MSG is '反馈信息';


create table MBT_420_C_RPT_BAK
(
    DATA_ID                 CHAR(32) not null primary key,
    PDATA_ID                CHAR(32) not null,
    C_BRER_TYPE             CHAR,
    C_CERT_REL_NAME         NVARCHAR2(80),
    C_CERT_REL_ID_TYPE      VARCHAR2(2),
    C_CERT_REL_ID_NUM       VARCHAR2(40),
    ODS_DATA_ID             CHAR(32),
    RPT_DATE                CHAR(8),
    RPT_TIME                CHAR(14),
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
    B_CONTRACT_CODE         VARCHAR2(60)
);
comment on column MBT_420_C_RPT_BAK.DATA_ID is '主键';
comment on column MBT_420_C_RPT_BAK.PDATA_ID is '外键';
comment on column MBT_420_C_RPT_BAK.C_BRER_TYPE is '共同受信人身份类别';
comment on column MBT_420_C_RPT_BAK.C_CERT_REL_NAME is '共同受信人名称';
comment on column MBT_420_C_RPT_BAK.C_CERT_REL_ID_TYPE is '共同受信人身份标识类型';
comment on column MBT_420_C_RPT_BAK.C_CERT_REL_ID_NUM is '共同受信人身份标识号码';
comment on column MBT_420_C_RPT_BAK.ODS_DATA_ID is 'ODS数据ID';
comment on column MBT_420_C_RPT_BAK.RPT_DATE is '上报数据日期';
comment on column MBT_420_C_RPT_BAK.RPT_TIME is '上报数据时间';
comment on column MBT_420_C_RPT_BAK.DATA_DATE is '数据日期';
comment on column MBT_420_C_RPT_BAK.ACTU_COTRL_INFO_UP_DATE is '信息更新日期';
comment on column MBT_420_C_RPT_BAK.CORP_ID is '法人机构号';
comment on column MBT_420_C_RPT_BAK.ORG_ID is '分行机构号';
comment on column MBT_420_C_RPT_BAK.GROUP_ID is '部门编号';
comment on column MBT_420_C_RPT_BAK.INQ_ORG_ID is '查询机构号';
comment on column MBT_420_C_RPT_BAK.INQ_GROUP_ID is '查询组号';
comment on column MBT_420_C_RPT_BAK.DATA_DESC is '记录描述';
comment on column MBT_420_C_RPT_BAK.REMARKS is '备注';
comment on column MBT_420_C_RPT_BAK.CHECK_FLAG is '校验标识';
comment on column MBT_420_C_RPT_BAK.CHECK_DESC is '校验结果';
comment on column MBT_420_C_RPT_BAK.CHECK_ERR_TYPE is '校验失败类型';
comment on column MBT_420_C_RPT_BAK.NEXT_ACTION is '下一动作';
comment on column MBT_420_C_RPT_BAK.DATA_FLAG is '数据是否已删除';
comment on column MBT_420_C_RPT_BAK.DATA_SOURE is '数据来源';
comment on column MBT_420_C_RPT_BAK.DATA_VERSION is '数据版本号';
comment on column MBT_420_C_RPT_BAK.DATA_REJ_DESC is '数据审核拒绝描述';
comment on column MBT_420_C_RPT_BAK.DATA_DEL_DESC is '数据删除描述';
comment on column MBT_420_C_RPT_BAK.DATA_CRT_USER is '数据创建/导入用户';
comment on column MBT_420_C_RPT_BAK.DATA_CRT_DATE is '数据创建/导入日期';
comment on column MBT_420_C_RPT_BAK.DATA_CRT_TIME is '数据创建/导入时间';
comment on column MBT_420_C_RPT_BAK.DATA_CHG_USER is '数据修改/删除用户';
comment on column MBT_420_C_RPT_BAK.DATA_CHG_DATE is '数据修改/删除日期';
comment on column MBT_420_C_RPT_BAK.DATA_CHG_TIME is '数据修改/删除时间';
comment on column MBT_420_C_RPT_BAK.DATA_APV_USER is '数据审核/拒绝用户';
comment on column MBT_420_C_RPT_BAK.DATA_APV_DATE is '数据审核/拒绝日期';
comment on column MBT_420_C_RPT_BAK.DATA_APV_TIME is '数据审核/拒绝时间';
comment on column MBT_420_C_RPT_BAK.RSV1 is '扩展字段1';
comment on column MBT_420_C_RPT_BAK.RSV2 is '扩展字段2';
comment on column MBT_420_C_RPT_BAK.RSV3 is '扩展字段3';
comment on column MBT_420_C_RPT_BAK.RSV4 is '扩展字段4';
comment on column MBT_420_C_RPT_BAK.RSV5 is '扩展字段5';
comment on column MBT_420_C_RPT_BAK.B_CONTRACT_CODE is '授信协议标识码';

create table MBT_440_RPT_BAK
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
    RPT_DATE             CHAR(8),
    RPT_TIME             CHAR(14),
    INF_REC_TYPE         CHAR(3),
    B_INFO_UP_DATE       CHAR(8),
    IS_RPT               VARCHAR2(64),
    ROW_NUM              NUMBER,
    FB_STATUS            CHAR(2),
    RPT_FILE_NAME        VARCHAR2(512),
    FB_MSG               VARCHAR2(1024),
    C_GUAR_AMT_LCY       NUMBER(15),
    G_LOAN_AMT_LCY       NUMBER(15),
    G_RI_EX_LCY          NUMBER(19)
);
comment on column MBT_440_RPT_BAK.DATA_ID is '主键';
comment on column MBT_440_RPT_BAK.DATA_DATE is '数据日期';
comment on column MBT_440_RPT_BAK.CORP_ID is '法人机构号';
comment on column MBT_440_RPT_BAK.ORG_ID is '分行机构号';
comment on column MBT_440_RPT_BAK.GROUP_ID is '部门编号';
comment on column MBT_440_RPT_BAK.INQ_ORG_ID is '查询机构号';
comment on column MBT_440_RPT_BAK.INQ_GROUP_ID is '查询组号';
comment on column MBT_440_RPT_BAK.B_ACCT_TYPE is '账户类型';
comment on column MBT_440_RPT_BAK.B_ACCT_CODE is '账户标识码';
comment on column MBT_440_RPT_BAK.B_RPT_DATE is '信息报告日期';
comment on column MBT_440_RPT_BAK.B_RPT_DATE_CODE is '报告时点说明代码';
comment on column MBT_440_RPT_BAK.B_NAME is '债务人名称';
comment on column MBT_440_RPT_BAK.B_ID_TYPE is '债务人身份标识类型';
comment on column MBT_440_RPT_BAK.B_INF_REC_TYPE is '信息记录类型';
comment on column MBT_440_RPT_BAK.B_ID_NUM is '债务人身份标识号码';
comment on column MBT_440_RPT_BAK.B_MNGMT_ORG_CODE is '业务管理机构代码';
comment on column MBT_440_RPT_BAK.B_CUST_NO is '客户号';
comment on column MBT_440_RPT_BAK.C_BUSI_LINES is '担保业务大类';
comment on column MBT_440_RPT_BAK.C_BUSI_DTIL_LINES is '担保业务种类细分';
comment on column MBT_440_RPT_BAK.C_OPEN_DATE is '开户日期';
comment on column MBT_440_RPT_BAK.C_GUAR_AMT is '担保金额';
comment on column MBT_440_RPT_BAK.C_CY is '币种';
comment on column MBT_440_RPT_BAK.C_DUE_DATE is '到期日期';
comment on column MBT_440_RPT_BAK.C_GUAR_MODE is '反担保方式';
comment on column MBT_440_RPT_BAK.C_OTH_REPY_GUAR_WAY is '其他还款保证方式';
comment on column MBT_440_RPT_BAK.C_SEC_DEP is '保证金百分比';
comment on column MBT_440_RPT_BAK.C_CTRCT_TXT_CODE is '担保合同文本编号';
comment on column MBT_440_RPT_BAK.F_MCC is '授信协议标识码';
comment on column MBT_440_RPT_BAK.G_ACCT_STATUS is '账户状态';
comment on column MBT_440_RPT_BAK.G_LOAN_AMT is '在保余额';
comment on column MBT_440_RPT_BAK.G_REPAY_PRD is '余额变化日期';
comment on column MBT_440_RPT_BAK.G_FIVE_CATE is '五级分类';
comment on column MBT_440_RPT_BAK.G_FIVE_CATE_ADJ_DATE is '五级分类认定日期';
comment on column MBT_440_RPT_BAK.G_RI_EX is '风险敞口';
comment on column MBT_440_RPT_BAK.G_COMP_ADV_FLAG is '代偿（垫款）标识';
comment on column MBT_440_RPT_BAK.G_CLOSE_DATE is '账户关闭日期';
comment on column MBT_440_RPT_BAK.REMARKS is '备注';
comment on column MBT_440_RPT_BAK.CHECK_FLAG is '校验标识';
comment on column MBT_440_RPT_BAK.CHECK_DESC is '校验结果';
comment on column MBT_440_RPT_BAK.CHECK_ERR_TYPE is '校验失败类型';
comment on column MBT_440_RPT_BAK.NEXT_ACTION is '下一动作';
comment on column MBT_440_RPT_BAK.DATA_STATUS is '数据状态';
comment on column MBT_440_RPT_BAK.DATA_FLAG is '数据是否已删除';
comment on column MBT_440_RPT_BAK.DATA_SOURCE is '数据来源';
comment on column MBT_440_RPT_BAK.DATA_VERSION is '数据版本号';
comment on column MBT_440_RPT_BAK.DATA_REJ_DESC is '数据审核拒绝描述';
comment on column MBT_440_RPT_BAK.DATA_DEL_DESC is '数据删除描述';
comment on column MBT_440_RPT_BAK.DATA_CRT_USER is '数据创建/导入用户';
comment on column MBT_440_RPT_BAK.DATA_CRT_DATE is '数据创建/导入日期';
comment on column MBT_440_RPT_BAK.DATA_CRT_TIME is '数据创建/导入时间';
comment on column MBT_440_RPT_BAK.DATA_CHG_USER is '数据修改/删除用户';
comment on column MBT_440_RPT_BAK.DATA_CHG_DATE is '数据修改/删除日期';
comment on column MBT_440_RPT_BAK.DATA_CHG_TIME is '数据修改/删除时间';
comment on column MBT_440_RPT_BAK.DATA_APV_USER is '数据审核/拒绝用户';
comment on column MBT_440_RPT_BAK.DATA_APV_DATE is '数据审核/拒绝日期';
comment on column MBT_440_RPT_BAK.DATA_APV_TIME is '数据审核/拒绝时间';
comment on column MBT_440_RPT_BAK.DATA_DESC is '记录描述';
comment on column MBT_440_RPT_BAK.RSV1 is '扩展字段1';
comment on column MBT_440_RPT_BAK.RSV2 is '扩展字段2';
comment on column MBT_440_RPT_BAK.RSV3 is '扩展字段3';
comment on column MBT_440_RPT_BAK.RSV4 is '扩展字段4';
comment on column MBT_440_RPT_BAK.RSV5 is '扩展字段5';
comment on column MBT_440_RPT_BAK.ODS_DATA_ID is 'ODS数据ID';
comment on column MBT_440_RPT_BAK.RPT_DATE is '上报数据日期';
comment on column MBT_440_RPT_BAK.RPT_TIME is '上报数据时间';
comment on column MBT_440_RPT_BAK.INF_REC_TYPE is '信息记录类型';
comment on column MBT_440_RPT_BAK.B_INFO_UP_DATE is '信息更新日期';
comment on column MBT_440_RPT_BAK.IS_RPT is '是否上报';
comment on column MBT_440_RPT_BAK.FB_STATUS is '反馈状态';
comment on column MBT_440_RPT_BAK.RPT_FILE_NAME is '上报文件名';
comment on column MBT_440_RPT_BAK.FB_MSG is '反馈信息';


create table MBT_440_D_RPT_BAK
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
    RPT_DATE                CHAR(8),
    RPT_TIME                CHAR(14),
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
comment on column MBT_440_D_RPT_BAK.DATA_ID is '主键';
comment on column MBT_440_D_RPT_BAK.PDATA_ID is '外键';
comment on column MBT_440_D_RPT_BAK.INFO_ID_TYPE is '身份类别';
comment on column MBT_440_D_RPT_BAK.ARLP_NAME is '责任人名称';
comment on column MBT_440_D_RPT_BAK.ARLP_CERT_TYPE is '责任人身份标识类型';
comment on column MBT_440_D_RPT_BAK.ARLP_CERT_NUM is '责任人身份标识号码';
comment on column MBT_440_D_RPT_BAK.ARLP_AMT is '还款责任金额';
comment on column MBT_440_D_RPT_BAK.ARLP_TYPE is '还款责任人类型';
comment on column MBT_440_D_RPT_BAK.WARTY_SIGN is '联保标志';
comment on column MBT_440_D_RPT_BAK.MAX_GUAR_MCC is '保证合同编号';
comment on column MBT_440_D_RPT_BAK.ODS_DATA_ID is 'ODS数据ID';
comment on column MBT_440_D_RPT_BAK.RPT_DATE is '上报数据日期';
comment on column MBT_440_D_RPT_BAK.RPT_TIME is '上报数据时间';
comment on column MBT_440_D_RPT_BAK.DATA_DATE is '数据日期';
comment on column MBT_440_D_RPT_BAK.ACTU_COTRL_INFO_UP_DATE is '信息更新日期';
comment on column MBT_440_D_RPT_BAK.CORP_ID is '法人机构号';
comment on column MBT_440_D_RPT_BAK.ORG_ID is '分行机构号';
comment on column MBT_440_D_RPT_BAK.GROUP_ID is '部门编号';
comment on column MBT_440_D_RPT_BAK.INQ_ORG_ID is '查询机构号';
comment on column MBT_440_D_RPT_BAK.INQ_GROUP_ID is '查询组号';
comment on column MBT_440_D_RPT_BAK.DATA_DESC is '记录描述';
comment on column MBT_440_D_RPT_BAK.REMARKS is '备注';
comment on column MBT_440_D_RPT_BAK.CHECK_FLAG is '校验标识';
comment on column MBT_440_D_RPT_BAK.CHECK_DESC is '校验结果';
comment on column MBT_440_D_RPT_BAK.CHECK_ERR_TYPE is '校验失败类型';
comment on column MBT_440_D_RPT_BAK.NEXT_ACTION is '下一动作';
comment on column MBT_440_D_RPT_BAK.DATA_FLAG is '数据是否已删除';
comment on column MBT_440_D_RPT_BAK.DATA_SOURE is '数据来源';
comment on column MBT_440_D_RPT_BAK.DATA_VERSION is '数据版本号';
comment on column MBT_440_D_RPT_BAK.DATA_REJ_DESC is '数据审核拒绝描述';
comment on column MBT_440_D_RPT_BAK.DATA_DEL_DESC is '数据删除描述';
comment on column MBT_440_D_RPT_BAK.DATA_CRT_USER is '数据创建/导入用户';
comment on column MBT_440_D_RPT_BAK.DATA_CRT_DATE is '数据创建/导入日期';
comment on column MBT_440_D_RPT_BAK.DATA_CRT_TIME is '数据创建/导入时间';
comment on column MBT_440_D_RPT_BAK.DATA_CHG_USER is '数据修改/删除用户';
comment on column MBT_440_D_RPT_BAK.DATA_CHG_DATE is '数据修改/删除日期';
comment on column MBT_440_D_RPT_BAK.DATA_CHG_TIME is '数据修改/删除时间';
comment on column MBT_440_D_RPT_BAK.DATA_APV_USER is '数据审核/拒绝用户';
comment on column MBT_440_D_RPT_BAK.DATA_APV_DATE is '数据审核/拒绝日期';
comment on column MBT_440_D_RPT_BAK.DATA_APV_TIME is '数据审核/拒绝时间';
comment on column MBT_440_D_RPT_BAK.RSV1 is '扩展字段1';
comment on column MBT_440_D_RPT_BAK.RSV2 is '扩展字段2';
comment on column MBT_440_D_RPT_BAK.RSV3 is '扩展字段3';
comment on column MBT_440_D_RPT_BAK.RSV4 is '扩展字段4';
comment on column MBT_440_D_RPT_BAK.RSV5 is '扩展字段5';
comment on column MBT_440_D_RPT_BAK.B_ACCT_CODE is '账户标识码';

create table MBT_440_E_RPT_BAK
(
    DATA_ID                 CHAR(32) not null primary key,
    PDATA_ID                CHAR(32) not null,
    CCC                     VARCHAR2(60),
    ODS_DATA_ID             CHAR(32),
    RPT_DATE                CHAR(8),
    RPT_TIME                CHAR(14),
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
comment on column MBT_440_E_RPT_BAK.DATA_ID is '主键';
comment on column MBT_440_E_RPT_BAK.PDATA_ID is '外键';
comment on column MBT_440_E_RPT_BAK.CCC is '抵质押合同标识码';
comment on column MBT_440_E_RPT_BAK.ODS_DATA_ID is 'ODS数据ID';
comment on column MBT_440_E_RPT_BAK.RPT_DATE is '上报数据日期';
comment on column MBT_440_E_RPT_BAK.RPT_TIME is '上报数据时间';
comment on column MBT_440_E_RPT_BAK.DATA_DATE is '数据日期';
comment on column MBT_440_E_RPT_BAK.ACTU_COTRL_INFO_UP_DATE is '信息更新日期';
comment on column MBT_440_E_RPT_BAK.CORP_ID is '法人机构号';
comment on column MBT_440_E_RPT_BAK.ORG_ID is '分行机构号';
comment on column MBT_440_E_RPT_BAK.GROUP_ID is '部门编号';
comment on column MBT_440_E_RPT_BAK.INQ_ORG_ID is '查询机构号';
comment on column MBT_440_E_RPT_BAK.INQ_GROUP_ID is '查询组号';
comment on column MBT_440_E_RPT_BAK.DATA_DESC is '记录描述';
comment on column MBT_440_E_RPT_BAK.REMARKS is '备注';
comment on column MBT_440_E_RPT_BAK.CHECK_FLAG is '校验标识';
comment on column MBT_440_E_RPT_BAK.CHECK_DESC is '校验结果';
comment on column MBT_440_E_RPT_BAK.CHECK_ERR_TYPE is '校验失败类型';
comment on column MBT_440_E_RPT_BAK.NEXT_ACTION is '下一动作';
comment on column MBT_440_E_RPT_BAK.DATA_FLAG is '数据是否已删除';
comment on column MBT_440_E_RPT_BAK.DATA_SOURE is '数据来源';
comment on column MBT_440_E_RPT_BAK.DATA_VERSION is '数据版本号';
comment on column MBT_440_E_RPT_BAK.DATA_REJ_DESC is '数据审核拒绝描述';
comment on column MBT_440_E_RPT_BAK.DATA_DEL_DESC is '数据删除描述';
comment on column MBT_440_E_RPT_BAK.DATA_CRT_USER is '数据创建/导入用户';
comment on column MBT_440_E_RPT_BAK.DATA_CRT_DATE is '数据创建/导入日期';
comment on column MBT_440_E_RPT_BAK.DATA_CRT_TIME is '数据创建/导入时间';
comment on column MBT_440_E_RPT_BAK.DATA_CHG_USER is '数据修改/删除用户';
comment on column MBT_440_E_RPT_BAK.DATA_CHG_DATE is '数据修改/删除日期';
comment on column MBT_440_E_RPT_BAK.DATA_CHG_TIME is '数据修改/删除时间';
comment on column MBT_440_E_RPT_BAK.DATA_APV_USER is '数据审核/拒绝用户';
comment on column MBT_440_E_RPT_BAK.DATA_APV_DATE is '数据审核/拒绝日期';
comment on column MBT_440_E_RPT_BAK.DATA_APV_TIME is '数据审核/拒绝时间';
comment on column MBT_440_E_RPT_BAK.RSV1 is '扩展字段1';
comment on column MBT_440_E_RPT_BAK.RSV2 is '扩展字段2';
comment on column MBT_440_E_RPT_BAK.RSV3 is '扩展字段3';
comment on column MBT_440_E_RPT_BAK.RSV4 is '扩展字段4';
comment on column MBT_440_E_RPT_BAK.RSV5 is '扩展字段5';
comment on column MBT_440_E_RPT_BAK.B_ACCT_CODE is '账户标识码';

create table MBT_510_RPT_BAK
(
    DATA_ID          CHAR(32) not null primary key,
    DATA_DATE        CHAR(8),
    CORP_ID          VARCHAR2(14),
    ORG_ID           VARCHAR2(14),
    GROUP_ID         VARCHAR2(14),
    INQ_ORG_ID       CHAR(24),
    INQ_GROUP_ID     CHAR(24),
    B_INF_REC_NO     VARCHAR2(64),
    B_INF_REC_TYPE   CHAR(3),
    B_CC_CODE        VARCHAR2(60),
    B_RPT_DATE       CHAR(8),
    B_RPT_DATE_CODE  CHAR(2),
    B_INFO_ID_TYPE   CHAR,
    B_NAME           NVARCHAR2(80),
    B_CERT_TYPE      VARCHAR2(2),
    B_CERT_NUM       VARCHAR2(40),
    B_MNGMT_ORG_CODE CHAR(14),
    B_CUST_NO        VARCHAR2(32),
    C_GUAR_TYPE      CHAR,
    C_CC_AMT         NUMBER(15),
    C_CY             CHAR(3),
    C_CC_VAL_DATE    CHAR(8),
    C_CC_EXP_DATE    CHAR(8),
    C_MAX_GUAR       CHAR,
    C_CC_STATUS      CHAR,
    G_DATA_DESC      NVARCHAR2(256),
    REMARKS          NVARCHAR2(512),
    CHECK_FLAG       CHAR,
    CHECK_DESC       VARCHAR2(512),
    CHECK_ERR_TYPE   CHAR,
    NEXT_ACTION      CHAR(2),
    DATA_STATUS      CHAR(2),
    DATA_FLAG        CHAR,
    DATA_SOURCE      CHAR,
    DATA_VERSION     NUMBER(8),
    DATA_REJ_DESC    NVARCHAR2(128),
    DATA_DEL_DESC    NVARCHAR2(128),
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
    ODS_DATA_ID      CHAR(32),
    RPT_TIME         CHAR(14),
    RPT_DATE         CHAR(8),
    IS_RPT           VARCHAR2(64),
    CUST_TYPE        CHAR,
    ROW_NUM          NUMBER,
    FB_STATUS        CHAR(2),
    RPT_FILE_NAME    VARCHAR2(512),
    FB_MSG           VARCHAR2(1024),
    C_CC_AMT_LCY     NUMBER(15),
    C_CC_AMT_ORG     NUMBER(15)
);
comment on column MBT_510_RPT_BAK.DATA_ID is '主键';
comment on column MBT_510_RPT_BAK.DATA_DATE is '数据日期';
comment on column MBT_510_RPT_BAK.CORP_ID is '法人机构号';
comment on column MBT_510_RPT_BAK.ORG_ID is '分行机构号';
comment on column MBT_510_RPT_BAK.GROUP_ID is '部门编号';
comment on column MBT_510_RPT_BAK.INQ_ORG_ID is '查询机构号';
comment on column MBT_510_RPT_BAK.INQ_GROUP_ID is '查询组号';
comment on column MBT_510_RPT_BAK.B_INF_REC_NO is '合同编号';
comment on column MBT_510_RPT_BAK.B_INF_REC_TYPE is '信息记录类型';
comment on column MBT_510_RPT_BAK.B_CC_CODE is '抵（质）押合同标识码';
comment on column MBT_510_RPT_BAK.B_RPT_DATE is '信息报告日期';
comment on column MBT_510_RPT_BAK.B_RPT_DATE_CODE is '报告时点说明代码';
comment on column MBT_510_RPT_BAK.B_INFO_ID_TYPE is '债务人身份类别';
comment on column MBT_510_RPT_BAK.B_NAME is '债务人姓名';
comment on column MBT_510_RPT_BAK.B_CERT_TYPE is '债务人身份标识类型';
comment on column MBT_510_RPT_BAK.B_CERT_NUM is '债务人身份标识号码';
comment on column MBT_510_RPT_BAK.B_MNGMT_ORG_CODE is '业务管理机构代码';
comment on column MBT_510_RPT_BAK.B_CUST_NO is '债务人号';
comment on column MBT_510_RPT_BAK.C_GUAR_TYPE is '合同类型';
comment on column MBT_510_RPT_BAK.C_CC_AMT is '担保金额';
comment on column MBT_510_RPT_BAK.C_CY is '币种';
comment on column MBT_510_RPT_BAK.C_CC_VAL_DATE is '抵（质）押合同生效日期';
comment on column MBT_510_RPT_BAK.C_CC_EXP_DATE is '抵（质）押合同到期日期';
comment on column MBT_510_RPT_BAK.C_MAX_GUAR is '最高额担保标志';
comment on column MBT_510_RPT_BAK.C_CC_STATUS is '抵（质）押合同状态';
comment on column MBT_510_RPT_BAK.G_DATA_DESC is '记录描述';
comment on column MBT_510_RPT_BAK.REMARKS is '备注';
comment on column MBT_510_RPT_BAK.CHECK_FLAG is '校验标识';
comment on column MBT_510_RPT_BAK.CHECK_DESC is '校验结果';
comment on column MBT_510_RPT_BAK.CHECK_ERR_TYPE is '校验失败类型';
comment on column MBT_510_RPT_BAK.NEXT_ACTION is '下一动作';
comment on column MBT_510_RPT_BAK.DATA_STATUS is '数据状态';
comment on column MBT_510_RPT_BAK.DATA_FLAG is '数据是否已删除';
comment on column MBT_510_RPT_BAK.DATA_SOURCE is '数据来源';
comment on column MBT_510_RPT_BAK.DATA_VERSION is '数据版本号';
comment on column MBT_510_RPT_BAK.DATA_REJ_DESC is '数据审核拒绝描述';
comment on column MBT_510_RPT_BAK.DATA_DEL_DESC is '数据删除描述';
comment on column MBT_510_RPT_BAK.DATA_CRT_USER is '数据创建/导入用户';
comment on column MBT_510_RPT_BAK.DATA_CRT_DATE is '数据创建/导入日期';
comment on column MBT_510_RPT_BAK.DATA_CRT_TIME is '数据创建/导入时间';
comment on column MBT_510_RPT_BAK.DATA_CHG_USER is '数据修改/删除用户';
comment on column MBT_510_RPT_BAK.DATA_CHG_DATE is '数据修改/删除日期';
comment on column MBT_510_RPT_BAK.DATA_CHG_TIME is '数据修改/删除时间';
comment on column MBT_510_RPT_BAK.DATA_APV_USER is '数据审核/拒绝用户';
comment on column MBT_510_RPT_BAK.DATA_APV_DATE is '数据审核/拒绝日期';
comment on column MBT_510_RPT_BAK.DATA_APV_TIME is '数据审核/拒绝时间';
comment on column MBT_510_RPT_BAK.RSV1 is '扩展字段1';
comment on column MBT_510_RPT_BAK.RSV2 is '扩展字段2';
comment on column MBT_510_RPT_BAK.RSV3 is '扩展字段3';
comment on column MBT_510_RPT_BAK.RSV4 is '扩展字段4';
comment on column MBT_510_RPT_BAK.RSV5 is '扩展字段5';
comment on column MBT_510_RPT_BAK.ODS_DATA_ID is 'ODS数据ID';
comment on column MBT_510_RPT_BAK.RPT_TIME is '上报数据时间';
comment on column MBT_510_RPT_BAK.RPT_DATE is '上报数据日期';
comment on column MBT_510_RPT_BAK.IS_RPT is '是否上报';
comment on column MBT_510_RPT_BAK.CUST_TYPE is '客户类型';
comment on column MBT_510_RPT_BAK.FB_STATUS is '反馈状态';
comment on column MBT_510_RPT_BAK.RPT_FILE_NAME is '上报文件名';
comment on column MBT_510_RPT_BAK.FB_MSG is '反馈信息';
comment on column MBT_510_RPT_BAK.C_CC_AMT_ORG is '担保金额_原始数据金额';


create table MBT_510_D_RPT_BAK
(
    DATA_ID                 CHAR(32) not null primary key,
    PDATA_ID                CHAR(32) ,
    D_INFO_ID_TYPE          CHAR,
    D_GUAR_NAME             NVARCHAR2(80),
    D_GUAR_CERT_TYPE        VARCHAR2(2),
    D_GUAR_CERT_NUM         VARCHAR2(40),
    D_GUAR_NO               VARCHAR2(32),
    ODS_DATA_ID             CHAR(32),
    RPT_TIME                CHAR(14),
    RPT_DATE                CHAR(8),
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
    B_CC_CODE               VARCHAR2(60)
);
comment on column MBT_510_D_RPT_BAK.DATA_ID is '主键';
comment on column MBT_510_D_RPT_BAK.PDATA_ID is '外键';
comment on column MBT_510_D_RPT_BAK.D_INFO_ID_TYPE is '身份类别';
comment on column MBT_510_D_RPT_BAK.D_GUAR_NAME is '其他债务人名称';
comment on column MBT_510_D_RPT_BAK.D_GUAR_CERT_TYPE is '其他债务人身份标识类型';
comment on column MBT_510_D_RPT_BAK.D_GUAR_CERT_NUM is '其他债务人身份标识号码';
comment on column MBT_510_D_RPT_BAK.D_GUAR_NO is '其他债务人编号';
comment on column MBT_510_D_RPT_BAK.ODS_DATA_ID is 'ODS数据ID';
comment on column MBT_510_D_RPT_BAK.RPT_TIME is '上报数据时间';
comment on column MBT_510_D_RPT_BAK.RPT_DATE is '上报数据日期';
comment on column MBT_510_D_RPT_BAK.DATA_DATE is '数据日期';
comment on column MBT_510_D_RPT_BAK.ACTU_COTRL_INFO_UP_DATE is '信息更新日期';
comment on column MBT_510_D_RPT_BAK.CORP_ID is '法人机构号';
comment on column MBT_510_D_RPT_BAK.ORG_ID is '分行机构号';
comment on column MBT_510_D_RPT_BAK.GROUP_ID is '部门编号';
comment on column MBT_510_D_RPT_BAK.INQ_ORG_ID is '查询机构号';
comment on column MBT_510_D_RPT_BAK.INQ_GROUP_ID is '查询组号';
comment on column MBT_510_D_RPT_BAK.DATA_DESC is '记录描述';
comment on column MBT_510_D_RPT_BAK.REMARKS is '备注';
comment on column MBT_510_D_RPT_BAK.CHECK_FLAG is '校验标识';
comment on column MBT_510_D_RPT_BAK.CHECK_DESC is '校验结果';
comment on column MBT_510_D_RPT_BAK.CHECK_ERR_TYPE is '校验失败类型';
comment on column MBT_510_D_RPT_BAK.NEXT_ACTION is '下一动作';
comment on column MBT_510_D_RPT_BAK.DATA_FLAG is '数据是否已删除';
comment on column MBT_510_D_RPT_BAK.DATA_SOURE is '数据来源';
comment on column MBT_510_D_RPT_BAK.DATA_VERSION is '数据版本号';
comment on column MBT_510_D_RPT_BAK.DATA_REJ_DESC is '数据审核拒绝描述';
comment on column MBT_510_D_RPT_BAK.DATA_DEL_DESC is '数据删除描述';
comment on column MBT_510_D_RPT_BAK.DATA_CRT_USER is '数据创建/导入用户';
comment on column MBT_510_D_RPT_BAK.DATA_CRT_DATE is '数据创建/导入日期';
comment on column MBT_510_D_RPT_BAK.DATA_CRT_TIME is '数据创建/导入时间';
comment on column MBT_510_D_RPT_BAK.DATA_CHG_USER is '数据修改/删除用户';
comment on column MBT_510_D_RPT_BAK.DATA_CHG_DATE is '数据修改/删除日期';
comment on column MBT_510_D_RPT_BAK.DATA_CHG_TIME is '数据修改/删除时间';
comment on column MBT_510_D_RPT_BAK.DATA_APV_USER is '数据审核/拒绝用户';
comment on column MBT_510_D_RPT_BAK.DATA_APV_DATE is '数据审核/拒绝日期';
comment on column MBT_510_D_RPT_BAK.DATA_APV_TIME is '数据审核/拒绝时间';
comment on column MBT_510_D_RPT_BAK.RSV1 is '扩展字段1';
comment on column MBT_510_D_RPT_BAK.RSV2 is '扩展字段2';
comment on column MBT_510_D_RPT_BAK.RSV3 is '扩展字段3';
comment on column MBT_510_D_RPT_BAK.RSV4 is '扩展字段4';
comment on column MBT_510_D_RPT_BAK.RSV5 is '扩展字段5';
comment on column MBT_510_D_RPT_BAK.B_CC_CODE is '抵(质)押合同标识码';

create table MBT_510_E_RPT_BAK
(
    DATA_ID                 CHAR(32) not null primary key,
    PDATA_ID                CHAR(32) ,
    E_PLE_TYPE              VARCHAR2(2),
    E_MOTGA_PROPT_ID_TYPE   CHAR,
    E_PLE_CERT_ID           VARCHAR2(40),
    E_PLE_DISTR             CHAR(6),
    E_PLE_VALUE             NUMBER(15),
    E_PLE_CY                CHAR(3),
    E_VAL_ORG_TYPE          CHAR,
    E_VAL_DATE              CHAR(8),
    E_PLEDGOR_TYPE          CHAR,
    E_PLEDGOR_NAME          NVARCHAR2(80),
    E_PLEOR_CERT_TYPE       VARCHAR2(10),
    E_PLEOR_CERT_NUM        VARCHAR2(40),
    E_PLE_DESC              NVARCHAR2(200),
    ODS_DATA_ID             CHAR(32),
    RPT_TIME                CHAR(14),
    RPT_DATE                CHAR(8),
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
    B_CC_CODE               VARCHAR2(60),
    E_PLE_VALUE_ORG         NUMBER(15)
);
comment on column MBT_510_E_RPT_BAK.DATA_ID is '主键';
comment on column MBT_510_E_RPT_BAK.PDATA_ID is '外键';
comment on column MBT_510_E_RPT_BAK.E_PLE_TYPE is '抵押物种类';
comment on column MBT_510_E_RPT_BAK.E_MOTGA_PROPT_ID_TYPE is '抵押物识别号类型';
comment on column MBT_510_E_RPT_BAK.E_PLE_CERT_ID is '抵押物唯一识别号';
comment on column MBT_510_E_RPT_BAK.E_PLE_DISTR is '抵押物位置所在地行政区划';
comment on column MBT_510_E_RPT_BAK.E_PLE_VALUE is '抵押物评估价值';
comment on column MBT_510_E_RPT_BAK.E_PLE_CY is '币种';
comment on column MBT_510_E_RPT_BAK.E_VAL_ORG_TYPE is '评估机构类型';
comment on column MBT_510_E_RPT_BAK.E_VAL_DATE is '抵押物评估日期';
comment on column MBT_510_E_RPT_BAK.E_PLEDGOR_TYPE is '抵押人身份类别';
comment on column MBT_510_E_RPT_BAK.E_PLEDGOR_NAME is '抵押人名称';
comment on column MBT_510_E_RPT_BAK.E_PLEOR_CERT_TYPE is '抵押人身份标识类型';
comment on column MBT_510_E_RPT_BAK.E_PLEOR_CERT_NUM is '抵押人身份标识号码';
comment on column MBT_510_E_RPT_BAK.E_PLE_DESC is '抵押物说明';
comment on column MBT_510_E_RPT_BAK.ODS_DATA_ID is 'ODS数据ID';
comment on column MBT_510_E_RPT_BAK.RPT_TIME is '上报数据时间';
comment on column MBT_510_E_RPT_BAK.RPT_DATE is '上报数据日期';
comment on column MBT_510_E_RPT_BAK.DATA_DATE is '数据日期';
comment on column MBT_510_E_RPT_BAK.ACTU_COTRL_INFO_UP_DATE is '信息更新日期';
comment on column MBT_510_E_RPT_BAK.CORP_ID is '法人机构号';
comment on column MBT_510_E_RPT_BAK.ORG_ID is '分行机构号';
comment on column MBT_510_E_RPT_BAK.GROUP_ID is '部门编号';
comment on column MBT_510_E_RPT_BAK.INQ_ORG_ID is '查询机构号';
comment on column MBT_510_E_RPT_BAK.INQ_GROUP_ID is '查询组号';
comment on column MBT_510_E_RPT_BAK.DATA_DESC is '记录描述';
comment on column MBT_510_E_RPT_BAK.REMARKS is '备注';
comment on column MBT_510_E_RPT_BAK.CHECK_FLAG is '校验标识';
comment on column MBT_510_E_RPT_BAK.CHECK_DESC is '校验结果';
comment on column MBT_510_E_RPT_BAK.CHECK_ERR_TYPE is '校验失败类型';
comment on column MBT_510_E_RPT_BAK.NEXT_ACTION is '下一动作';
comment on column MBT_510_E_RPT_BAK.DATA_FLAG is '数据是否已删除';
comment on column MBT_510_E_RPT_BAK.DATA_SOURE is '数据来源';
comment on column MBT_510_E_RPT_BAK.DATA_VERSION is '数据版本号';
comment on column MBT_510_E_RPT_BAK.DATA_REJ_DESC is '数据审核拒绝描述';
comment on column MBT_510_E_RPT_BAK.DATA_DEL_DESC is '数据删除描述';
comment on column MBT_510_E_RPT_BAK.DATA_CRT_USER is '数据创建/导入用户';
comment on column MBT_510_E_RPT_BAK.DATA_CRT_DATE is '数据创建/导入日期';
comment on column MBT_510_E_RPT_BAK.DATA_CRT_TIME is '数据创建/导入时间';
comment on column MBT_510_E_RPT_BAK.DATA_CHG_USER is '数据修改/删除用户';
comment on column MBT_510_E_RPT_BAK.DATA_CHG_DATE is '数据修改/删除日期';
comment on column MBT_510_E_RPT_BAK.DATA_CHG_TIME is '数据修改/删除时间';
comment on column MBT_510_E_RPT_BAK.DATA_APV_USER is '数据审核/拒绝用户';
comment on column MBT_510_E_RPT_BAK.DATA_APV_DATE is '数据审核/拒绝日期';
comment on column MBT_510_E_RPT_BAK.DATA_APV_TIME is '数据审核/拒绝时间';
comment on column MBT_510_E_RPT_BAK.RSV1 is '扩展字段1';
comment on column MBT_510_E_RPT_BAK.RSV2 is '扩展字段2';
comment on column MBT_510_E_RPT_BAK.RSV3 is '扩展字段3';
comment on column MBT_510_E_RPT_BAK.RSV4 is '扩展字段4';
comment on column MBT_510_E_RPT_BAK.RSV5 is '扩展字段5';
comment on column MBT_510_E_RPT_BAK.B_CC_CODE is '抵(质)押合同标识码';

create table MBT_510_F_RPT_BAK
(
    DATA_ID                 CHAR(32) not null primary key,
    PDATA_ID                CHAR(32) ,
    F_IMP_TYPE              VARCHAR2(2),
    F_IMP_VAL               NUMBER(15),
    F_IMP_CY                CHAR(3),
    F_IPPC                  CHAR,
    F_PAWN_NAME             NVARCHAR2(80),
    F_PAWN_CERT_TYPE        VARCHAR2(10),
    F_PAWN_CERT_NUM         VARCHAR2(40),
    ODS_DATA_ID             CHAR(32),
    RPT_TIME                CHAR(14),
    RPT_DATE                CHAR(8),
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
    B_CC_CODE               VARCHAR2(60),
    F_IMP_VAL_ORG           NUMBER(15)
);
comment on column MBT_510_F_RPT_BAK.DATA_ID is '主键';
comment on column MBT_510_F_RPT_BAK.PDATA_ID is '外键';
comment on column MBT_510_F_RPT_BAK.F_IMP_TYPE is '质物种类';
comment on column MBT_510_F_RPT_BAK.F_IMP_VAL is '质物价值';
comment on column MBT_510_F_RPT_BAK.F_IMP_CY is '币种';
comment on column MBT_510_F_RPT_BAK.F_IPPC is '出质人身份类别';
comment on column MBT_510_F_RPT_BAK.F_PAWN_NAME is '出质人名称';
comment on column MBT_510_F_RPT_BAK.F_PAWN_CERT_TYPE is '出质人身份标识类型';
comment on column MBT_510_F_RPT_BAK.F_PAWN_CERT_NUM is '出质人身份标识号码';
comment on column MBT_510_F_RPT_BAK.ODS_DATA_ID is 'ODS数据ID';
comment on column MBT_510_F_RPT_BAK.RPT_TIME is '上报数据时间';
comment on column MBT_510_F_RPT_BAK.RPT_DATE is '上报数据日期';
comment on column MBT_510_F_RPT_BAK.DATA_DATE is '数据日期';
comment on column MBT_510_F_RPT_BAK.ACTU_COTRL_INFO_UP_DATE is '信息更新日期';
comment on column MBT_510_F_RPT_BAK.CORP_ID is '法人机构号';
comment on column MBT_510_F_RPT_BAK.ORG_ID is '分行机构号';
comment on column MBT_510_F_RPT_BAK.GROUP_ID is '部门编号';
comment on column MBT_510_F_RPT_BAK.INQ_ORG_ID is '查询机构号';
comment on column MBT_510_F_RPT_BAK.INQ_GROUP_ID is '查询组号';
comment on column MBT_510_F_RPT_BAK.DATA_DESC is '记录描述';
comment on column MBT_510_F_RPT_BAK.REMARKS is '备注';
comment on column MBT_510_F_RPT_BAK.CHECK_FLAG is '校验标识';
comment on column MBT_510_F_RPT_BAK.CHECK_DESC is '校验结果';
comment on column MBT_510_F_RPT_BAK.CHECK_ERR_TYPE is '校验失败类型';
comment on column MBT_510_F_RPT_BAK.NEXT_ACTION is '下一动作';
comment on column MBT_510_F_RPT_BAK.DATA_FLAG is '数据是否已删除';
comment on column MBT_510_F_RPT_BAK.DATA_SOURE is '数据来源';
comment on column MBT_510_F_RPT_BAK.DATA_VERSION is '数据版本号';
comment on column MBT_510_F_RPT_BAK.DATA_REJ_DESC is '数据审核拒绝描述';
comment on column MBT_510_F_RPT_BAK.DATA_DEL_DESC is '数据删除描述';
comment on column MBT_510_F_RPT_BAK.DATA_CRT_USER is '数据创建/导入用户';
comment on column MBT_510_F_RPT_BAK.DATA_CRT_DATE is '数据创建/导入日期';
comment on column MBT_510_F_RPT_BAK.DATA_CRT_TIME is '数据创建/导入时间';
comment on column MBT_510_F_RPT_BAK.DATA_CHG_USER is '数据修改/删除用户';
comment on column MBT_510_F_RPT_BAK.DATA_CHG_DATE is '数据修改/删除日期';
comment on column MBT_510_F_RPT_BAK.DATA_CHG_TIME is '数据修改/删除时间';
comment on column MBT_510_F_RPT_BAK.DATA_APV_USER is '数据审核/拒绝用户';
comment on column MBT_510_F_RPT_BAK.DATA_APV_DATE is '数据审核/拒绝日期';
comment on column MBT_510_F_RPT_BAK.DATA_APV_TIME is '数据审核/拒绝时间';
comment on column MBT_510_F_RPT_BAK.RSV1 is '扩展字段1';
comment on column MBT_510_F_RPT_BAK.RSV2 is '扩展字段2';
comment on column MBT_510_F_RPT_BAK.RSV3 is '扩展字段3';
comment on column MBT_510_F_RPT_BAK.RSV4 is '扩展字段4';
comment on column MBT_510_F_RPT_BAK.RSV5 is '扩展字段5';
comment on column MBT_510_F_RPT_BAK.B_CC_CODE is '抵(质)押合同标识码';

create table MBT_610_RPT_BAK
(
    DATA_ID                        CHAR(32) not null primary key,
    DATA_DATE                      CHAR(8),
    CORP_ID                        VARCHAR2(14),
    ORG_ID                         VARCHAR2(14),
    GROUP_ID                       VARCHAR2(14),
    INQ_ORG_ID                     CHAR(24),
    INQ_GROUP_ID                   CHAR(24),
    B_INF_REC_TYPE                 CHAR(3),
    B_ENT_NAME                     NVARCHAR2(80),
    B_ENT_CERT_TYPE                VARCHAR2(2),
    B_ENT_CERT_NUM                 VARCHAR2(40),
    B_RPT_DATE                     CHAR(8),
    B_SHEET_YEAR                   CHAR(4),
    B_SHEET_TYPE                   VARCHAR2(2),
    B_SHEET_TYPE_DIVIDE            VARCHAR2(2),
    B_AUDIT_FIRM_NAME              NVARCHAR2(80),
    B_AUDITOR_NAME                 NVARCHAR2(30),
    B_AUDIT_TIME                   CHAR(8),
    B_CIMOC                        VARCHAR2(14),
    B_RPT_DATE_CODE                CHAR(2),
    C_CURRENCY_FUNDS               NUMBER(17, 2),
    C_SHORT_TERM_INVESTMENTS       NUMBER(17, 2),
    C_NOTES_RECEIVABLE             NUMBER(17, 2),
    C_DIVIDENDS_RECEIVABLE         NUMBER(17, 2),
    C_INTEREST_RECEIVABLE          NUMBER(17, 2),
    C_ACCOUNTS_RECEIVABLE          NUMBER(17, 2),
    C_OTHER_RECEIVABLES            NUMBER(17, 2),
    C_PREPAYMENTS                  NUMBER(17, 2),
    C_FUTURE_GUARANTEE             NUMBER(17, 2),
    C_ALLOWANCE_RECEIVABLE         NUMBER(17, 2),
    C_EXPORT_DRAWBACK_RECEIVABLE   NUMBER(17, 2),
    C_INVENTORIES                  NUMBER(17, 2),
    C_RAW_MATERIALS                NUMBER(17, 2),
    C_FINISHED_PRODUCTS            NUMBER(17, 2),
    C_DEFERRED_EXPENSES            NUMBER(17, 2),
    C_UNSETTLED_GL_CURRENT_ASSETS  NUMBER(17, 2),
    C_LT_DI_FALLINGDUEINAYEAR      NUMBER(17, 2),
    C_OTHER_CURRENT_ASSETS         NUMBER(17, 2),
    C_TOTAL_CURRENT_ASSETS         NUMBER(17, 2),
    C_LT_INVESTMENT                NUMBER(17, 2),
    C_LT_EQUITYINVESTMENT          NUMBER(17, 2),
    C_LT_SECURITIES_INVESTMENT     NUMBER(17, 2),
    C_INC_PRICE_DIFFERENCE         NUMBER(17, 2),
    C_TOTAL_LT_INVESTMENT          NUMBER(17, 2),
    C_ORIGINAL_COST_FA             NUMBER(17, 2),
    C_FA_ACC_DEPRECIATION          NUMBER(17, 2),
    C_FA_NET_VALUE                 NUMBER(17, 2),
    C_PROVISION_IMPAIRMENT_FA      NUMBER(17, 2),
    C_NET_VALUE_FA                 NUMBER(17, 2),
    C_FA_PENDING_DISPOSAL          NUMBER(17, 2),
    C_CONSTRUCTION_MATERIALS       NUMBER(17, 2),
    C_CONSTRUCTION_IN_PROGRESS     NUMBER(17, 2),
    C_UNSETTLED_GL_ON_FA           NUMBER(17, 2),
    C_TOTAL_FIXED_ASSETS           NUMBER(17, 2),
    C_INTANGIBLE_ASSETS            NUMBER(17, 2),
    C_LAND_USE_RIGHTS              NUMBER(17, 2),
    C_DEFERRED_ASSETS              NUMBER(17, 2),
    C_INCLUDING_FA_REPAIR          NUMBER(17, 2),
    C_IMPROVEMENT_EXPENDITURE_FA   NUMBER(17, 2),
    C_OTHER_LONG_TERM_ASSETS       NUMBER(17, 2),
    C_AMONG_IT_SPE_APPR_RES_MAT    NUMBER(17, 2),
    C_TOTAL_INTANGIBLE_OTHER_ASS   NUMBER(17, 2),
    C_DEFERRED_ASSETS_DEBITS       NUMBER(17, 2),
    C_TOTAL_ASSETS                 NUMBER(17, 2),
    C_SHORT_TERM_BORROWINGS        NUMBER(17, 2),
    C_NOTES_PAYABLE                NUMBER(17, 2),
    C_ACCOUNTS_PAYABLE             NUMBER(17, 2),
    C_RECEIPTS_IN_ADVANCE          NUMBER(17, 2),
    C_WAGES_SALARIES_PAYABLES      NUMBER(17, 2),
    C_EMPLOYEE_BENEFITS            NUMBER(17, 2),
    C_INCOME_PAYABLE               NUMBER(17, 2),
    C_TAXES_PAYABLE                NUMBER(17, 2),
    C_OTHER_PAYABLE_GOVERNMENT     NUMBER(17, 2),
    C_OTHER_PAYABLE                NUMBER(17, 2),
    C_PROVISION_FOR_EXPENSES       NUMBER(17, 2),
    C_PROVISIONS                   NUMBER(17, 2),
    C_LT_LIABILITIES_DUE_ONEYEAR   NUMBER(17, 2),
    C_OTHER_CURRENT_LIABILITIES    NUMBER(17, 2),
    C_TOTAL_CURRENT_LIABILITIES    NUMBER(17, 2),
    C_LT_BORROWINGS                NUMBER(17, 2),
    C_BONDS_PAYABLE                NUMBER(17, 2),
    C_LONG_TERM_PAYABLES           NUMBER(17, 2),
    C_GRANTS_PAYABLE               NUMBER(17, 2),
    C_OTHER_LT_LIABILITIES         NUMBER(17, 2),
    C_SPECIAL_RESERVE_FUND         NUMBER(17, 2),
    C_TOTAL_LT_LIABILITIES         NUMBER(17, 2),
    C_DEFERRED_TAXATION_CREDIT     NUMBER(17, 2),
    C_TOTAL_LIABILITIES            NUMBER(17, 2),
    C_MINORITY_INTEREST            NUMBER(17, 2),
    C_PAID_IN_CAPITAL              NUMBER(17, 2),
    C_NATIONAL_CAPITAL             NUMBER(17, 2),
    C_COLLECTIVE_CAPITAL           NUMBER(17, 2),
    C_LEGAL_PERSONS_CAPITAL        NUMBER(17, 2),
    C_STATE_OWNED_LP_CAPITAL       NUMBER(17, 2),
    C_COLLECTIVE_LP_CAPITAL        NUMBER(17, 2),
    C_PERSONAL_CAPITAL             NUMBER(17, 2),
    C_FOREIGN_BUS_CAPITAL          NUMBER(17, 2),
    C_CAPITALR_RSERVE              NUMBER(17, 2),
    C_SURPLUS_RESERVE              NUMBER(17, 2),
    C_STATUTORY_SURPLUS_RESERVE    NUMBER(17, 2),
    C_PUBLIC_WELFARE_FUND          NUMBER(17, 2),
    C_SUPPLER_CURRENT_CAPITAL      NUMBER(17, 2),
    C_UNAFFIRMED_INVESTMENT_LOSS   NUMBER(17, 2),
    C_UNAPPROPRIATED_PROFIT        NUMBER(17, 2),
    C_DT_FC_FINANCIAL_STA          NUMBER(17, 2),
    C_TOTAL_EQUITY                 NUMBER(17, 2),
    C_TOTAL_EQUITY_LIABILITIES     NUMBER(17, 2),
    D_CURRENCY_FUNDS               NUMBER(17, 2),
    D_FINANCIAL_ASS_HELD_TRADING   NUMBER(17, 2),
    D_NOTES_RECEIVABLE             NUMBER(17, 2),
    D_ACCOUNTS_RECEIVABLE          NUMBER(17, 2),
    D_PREPAYMENTS                  NUMBER(17, 2),
    D_INTEREST_RECEIVABLE          NUMBER(17, 2),
    D_DIVIDENDS_RECEIVABLE         NUMBER(17, 2),
    D_OTHER_RECEIVABLES            NUMBER(17, 2),
    D_INVENTORIES                  NUMBER(17, 2),
    D_CURRENT_PORTION_NCA          NUMBER(17, 2),
    D_OTHER_CURRENT_ASSETS         NUMBER(17, 2),
    D_TOTAL_CURRENT_ASSETS         NUMBER(17, 2),
    D_FINANCIAL_ASS_AVAILABLE_SALE NUMBER(17, 2),
    D_HELD_MATURITY_INVESTMENTS    NUMBER(17, 2),
    D_LONG_TERM_EQUITY_INVESTMENT  NUMBER(17, 2),
    D_LONG_TERM_RECEIVABLES        NUMBER(17, 2),
    D_INVESTMENT_PROPERTIES        NUMBER(17, 2),
    D_FIXED_ASSETS                 NUMBER(17, 2),
    D_NET_VALUE_OF_FIXE_ASSETS     NUMBER(17, 2),
    D_CONSTRUCTION_IN_PROGRESS     NUMBER(17, 2),
    D_CONSTRUCTION_MATERIALS       NUMBER(17, 2),
    D_FIXED_ASS_PENDING_DISPOSAL   NUMBER(17, 2),
    D_NON_CURRENT_BIOLOGICAL_ASS   NUMBER(17, 2),
    D_OIL_AND_GAS_ASSETS           NUMBER(17, 2),
    D_INTANGIBLE_ASSETS            NUMBER(17, 2),
    D_LAND_USE_RIGHTS              NUMBER(17, 2),
    D_DEVELOPMENT_DISBURSEMENTS    NUMBER(17, 2),
    D_GOODWILL                     NUMBER(17, 2),
    D_LONG_TERM_DEFERRED_EXPENSES  NUMBER(17, 2),
    D_DEFERRED_TAX_ASSETS          NUMBER(17, 2),
    D_OTHER_NON_CURRENT_ASSETS     NUMBER(17, 2),
    D_TOTAL_NON_CURRENT_ASSETS     NUMBER(17, 2),
    D_TOTAL_ASSETS                 NUMBER(17, 2),
    D_SHORT_TERM_BORROWINGS        NUMBER(17, 2),
    D_FINANCIAL_LIABILITIES_HFT    NUMBER(17, 2),
    D_NOTES_PAYABLE                NUMBER(17, 2),
    D_ACCOUNTS_PAYABLE             NUMBER(17, 2),
    D_RECEIPTS_IN_ADVANCE          NUMBER(17, 2),
    D_INTEREST_PAYABLE             NUMBER(17, 2),
    D_EMPLOYEE_BENEFITS_PAYABLE    NUMBER(17, 2),
    D_TAXES_PAYABLE                NUMBER(17, 2),
    D_DIVIDENDS_PAYABLE            NUMBER(17, 2),
    D_OTHER_PAYABLE                NUMBER(17, 2),
    D_CURRENT_PORTION_LIABILITIES  NUMBER(17, 2),
    D_OTHER_CURRENT_LIABILITIES    NUMBER(17, 2),
    D_TOTAL_CURRENT_LIABILITIES    NUMBER(17, 2),
    D_LONG_TERM_BORROWINGSORROWING NUMBER(17, 2),
    D_BONDS_PAYABLE                NUMBER(17, 2),
    D_LONG_TERM_PAYABLES           NUMBER(17, 2),
    D_GRANTS_PAYABLE               NUMBER(17, 2),
    D_PROVISIONS                   NUMBER(17, 2),
    D_DEFERRED_TAX_LIABILITIES     NUMBER(17, 2),
    D_OTHER_NON_CURRENT_LIABILITIE NUMBER(17, 2),
    D_TOTAL_NON_CURRENT_LIABILITIE NUMBER(17, 2),
    D_TOTAL_LIABILITIES            NUMBER(17, 2),
    D_PAID_IN_CAPITAL_SHARE_CAPITA NUMBER(17, 2),
    D_CAPITALR_RSERVE              NUMBER(17, 2),
    D_LESS_TREASURY_STOCKS         NUMBER(17, 2),
    D_SURPLUS_RESERVE              NUMBER(17, 2),
    D_UNAPPROPRIATED_PROFIT        NUMBER(17, 2),
    D_TOTAL_EQUITY                 NUMBER(17, 2),
    D_TOTAL_EQUITY_LIABILITIES     NUMBER(17, 2),
    E_DATA_DESC                    NVARCHAR2(256),
    REMARKS                        NVARCHAR2(512),
    CHECK_FLAG                     CHAR,
    CHECK_DESC                     VARCHAR2(512),
    CHECK_ERR_TYPE                 CHAR,
    NEXT_ACTION                    CHAR(2),
    DATA_STATUS                    CHAR(2),
    DATA_FLAG                      CHAR,
    DATA_SOURCE                    CHAR,
    DATA_VERSION                   NUMBER(8),
    DATA_REJ_DESC                  NVARCHAR2(128),
    DATA_DEL_DESC                  NVARCHAR2(128),
    DATA_CRT_USER                  VARCHAR2(20),
    DATA_CRT_DATE                  CHAR(8),
    DATA_CRT_TIME                  CHAR(14),
    DATA_CHG_USER                  VARCHAR2(20),
    DATA_CHG_DATE                  CHAR(8),
    DATA_CHG_TIME                  CHAR(14),
    DATA_APV_USER                  VARCHAR2(20),
    DATA_APV_DATE                  CHAR(8),
    DATA_APV_TIME                  CHAR(14),
    RSV1                           VARCHAR2(180),
    RSV2                           VARCHAR2(180),
    RSV3                           VARCHAR2(180),
    RSV4                           VARCHAR2(180),
    RSV5                           VARCHAR2(180),
    ODS_DATA_ID                    CHAR(32),
    RPT_DATE                       CHAR(8),
    RPT_TIME                       CHAR(14),
    IS_RPT                         VARCHAR2(64),
    ROW_NUM                        NUMBER,
    FB_STATUS                      CHAR(2),
    RPT_FILE_NAME                  VARCHAR2(512),
    FB_MSG                         VARCHAR2(1024),
    B_CUST_NO                      NVARCHAR2(64)
);
comment on column MBT_610_RPT_BAK.DATA_ID is '主键';
comment on column MBT_610_RPT_BAK.DATA_DATE is '数据日期';
comment on column MBT_610_RPT_BAK.CORP_ID is '法人机构号';
comment on column MBT_610_RPT_BAK.ORG_ID is '分行机构号';
comment on column MBT_610_RPT_BAK.GROUP_ID is '部门编号';
comment on column MBT_610_RPT_BAK.INQ_ORG_ID is '查询机构号';
comment on column MBT_610_RPT_BAK.INQ_GROUP_ID is '查询组号';
comment on column MBT_610_RPT_BAK.B_INF_REC_TYPE is '信息记录类型';
comment on column MBT_610_RPT_BAK.B_ENT_NAME is '企业名称';
comment on column MBT_610_RPT_BAK.B_ENT_CERT_TYPE is '企业身份标识类型';
comment on column MBT_610_RPT_BAK.B_ENT_CERT_NUM is '企业身份标识号码';
comment on column MBT_610_RPT_BAK.B_RPT_DATE is '信息报告日期';
comment on column MBT_610_RPT_BAK.B_SHEET_YEAR is '报表年份';
comment on column MBT_610_RPT_BAK.B_SHEET_TYPE is '报表类型';
comment on column MBT_610_RPT_BAK.B_SHEET_TYPE_DIVIDE is '报表类型细分';
comment on column MBT_610_RPT_BAK.B_AUDIT_FIRM_NAME is '审计事务所名称';
comment on column MBT_610_RPT_BAK.B_AUDITOR_NAME is '审计人员名称';
comment on column MBT_610_RPT_BAK.B_AUDIT_TIME is '审计时间';
comment on column MBT_610_RPT_BAK.B_CIMOC is '客户资料维护机构代码';
comment on column MBT_610_RPT_BAK.B_RPT_DATE_CODE is '报告时点说明代码';
comment on column MBT_610_RPT_BAK.C_CURRENCY_FUNDS is '货币资金';
comment on column MBT_610_RPT_BAK.C_SHORT_TERM_INVESTMENTS is '短期投资';
comment on column MBT_610_RPT_BAK.C_NOTES_RECEIVABLE is '应收票据';
comment on column MBT_610_RPT_BAK.C_DIVIDENDS_RECEIVABLE is '应收股利';
comment on column MBT_610_RPT_BAK.C_INTEREST_RECEIVABLE is '应收利息';
comment on column MBT_610_RPT_BAK.C_ACCOUNTS_RECEIVABLE is '应收账款';
comment on column MBT_610_RPT_BAK.C_OTHER_RECEIVABLES is '其他应收款';
comment on column MBT_610_RPT_BAK.C_PREPAYMENTS is '预付账款';
comment on column MBT_610_RPT_BAK.C_FUTURE_GUARANTEE is '期货保证金';
comment on column MBT_610_RPT_BAK.C_ALLOWANCE_RECEIVABLE is '应收补贴款';
comment on column MBT_610_RPT_BAK.C_EXPORT_DRAWBACK_RECEIVABLE is '应收出口退税';
comment on column MBT_610_RPT_BAK.C_INVENTORIES is '存货';
comment on column MBT_610_RPT_BAK.C_RAW_MATERIALS is '存货原材料';
comment on column MBT_610_RPT_BAK.C_FINISHED_PRODUCTS is '存货产成品';
comment on column MBT_610_RPT_BAK.C_DEFERRED_EXPENSES is '待摊费用';
comment on column MBT_610_RPT_BAK.C_UNSETTLED_GL_CURRENT_ASSETS is '待处理流动资产净损失';
comment on column MBT_610_RPT_BAK.C_LT_DI_FALLINGDUEINAYEAR is '一年内到期的长期债权投资';
comment on column MBT_610_RPT_BAK.C_OTHER_CURRENT_ASSETS is '其他流动资产';
comment on column MBT_610_RPT_BAK.C_TOTAL_CURRENT_ASSETS is '流动资产合计';
comment on column MBT_610_RPT_BAK.C_LT_INVESTMENT is '长期投资';
comment on column MBT_610_RPT_BAK.C_LT_EQUITYINVESTMENT is '长期股权投资';
comment on column MBT_610_RPT_BAK.C_LT_SECURITIES_INVESTMENT is '长期债权投资';
comment on column MBT_610_RPT_BAK.C_INC_PRICE_DIFFERENCE is '合并价差';
comment on column MBT_610_RPT_BAK.C_TOTAL_LT_INVESTMENT is '长期投资合计';
comment on column MBT_610_RPT_BAK.C_ORIGINAL_COST_FA is '固定资产原价';
comment on column MBT_610_RPT_BAK.C_FA_ACC_DEPRECIATION is '累计折旧';
comment on column MBT_610_RPT_BAK.C_FA_NET_VALUE is '固定资产净值';
comment on column MBT_610_RPT_BAK.C_PROVISION_IMPAIRMENT_FA is '固定资产值减值准备';
comment on column MBT_610_RPT_BAK.C_NET_VALUE_FA is '固定资产净额';
comment on column MBT_610_RPT_BAK.C_FA_PENDING_DISPOSAL is '固定资产清理';
comment on column MBT_610_RPT_BAK.C_CONSTRUCTION_MATERIALS is '工程物资';
comment on column MBT_610_RPT_BAK.C_CONSTRUCTION_IN_PROGRESS is '在建工程';
comment on column MBT_610_RPT_BAK.C_UNSETTLED_GL_ON_FA is '待处理固定资产净损失';
comment on column MBT_610_RPT_BAK.C_TOTAL_FIXED_ASSETS is '固定资产合计';
comment on column MBT_610_RPT_BAK.C_INTANGIBLE_ASSETS is '无形资产';
comment on column MBT_610_RPT_BAK.C_LAND_USE_RIGHTS is '（无形资产科目下）土地使用权';
comment on column MBT_610_RPT_BAK.C_DEFERRED_ASSETS is '递延资产';
comment on column MBT_610_RPT_BAK.C_INCLUDING_FA_REPAIR is '（递延资产科目下）固定资产修理';
comment on column MBT_610_RPT_BAK.C_IMPROVEMENT_EXPENDITURE_FA is '（递延资产科目下）固定资产改良支出';
comment on column MBT_610_RPT_BAK.C_OTHER_LONG_TERM_ASSETS is '其他长期资产';
comment on column MBT_610_RPT_BAK.C_AMONG_IT_SPE_APPR_RES_MAT is '（其他长期资产科目下）特准储备物资';
comment on column MBT_610_RPT_BAK.C_TOTAL_INTANGIBLE_OTHER_ASS is '无形及其他资产合计';
comment on column MBT_610_RPT_BAK.C_DEFERRED_ASSETS_DEBITS is '递延税款借项';
comment on column MBT_610_RPT_BAK.C_TOTAL_ASSETS is '资产总计';
comment on column MBT_610_RPT_BAK.C_SHORT_TERM_BORROWINGS is '短期借款';
comment on column MBT_610_RPT_BAK.C_NOTES_PAYABLE is '应付票据';
comment on column MBT_610_RPT_BAK.C_ACCOUNTS_PAYABLE is '应付账款';
comment on column MBT_610_RPT_BAK.C_RECEIPTS_IN_ADVANCE is '预收账款';
comment on column MBT_610_RPT_BAK.C_WAGES_SALARIES_PAYABLES is '应付工资';
comment on column MBT_610_RPT_BAK.C_EMPLOYEE_BENEFITS is '应付福利费';
comment on column MBT_610_RPT_BAK.C_INCOME_PAYABLE is '应付利润';
comment on column MBT_610_RPT_BAK.C_TAXES_PAYABLE is '应交税金';
comment on column MBT_610_RPT_BAK.C_OTHER_PAYABLE_GOVERNMENT is '其他应交款';
comment on column MBT_610_RPT_BAK.C_OTHER_PAYABLE is '其他应付款';
comment on column MBT_610_RPT_BAK.C_PROVISION_FOR_EXPENSES is '预提费用';
comment on column MBT_610_RPT_BAK.C_PROVISIONS is '预计负债';
comment on column MBT_610_RPT_BAK.C_LT_LIABILITIES_DUE_ONEYEAR is '一年内到期的长期负债';
comment on column MBT_610_RPT_BAK.C_OTHER_CURRENT_LIABILITIES is '其他流动负债';
comment on column MBT_610_RPT_BAK.C_TOTAL_CURRENT_LIABILITIES is '流动负债合计';
comment on column MBT_610_RPT_BAK.C_LT_BORROWINGS is '长期借款';
comment on column MBT_610_RPT_BAK.C_BONDS_PAYABLE is '应付债券';
comment on column MBT_610_RPT_BAK.C_LONG_TERM_PAYABLES is '长期应付款';
comment on column MBT_610_RPT_BAK.C_GRANTS_PAYABLE is '专项应付款';
comment on column MBT_610_RPT_BAK.C_OTHER_LT_LIABILITIES is '其他长期负债';
comment on column MBT_610_RPT_BAK.C_SPECIAL_RESERVE_FUND is '（其他长期负债科目下）特准储备基金';
comment on column MBT_610_RPT_BAK.C_TOTAL_LT_LIABILITIES is '长期负债合计';
comment on column MBT_610_RPT_BAK.C_DEFERRED_TAXATION_CREDIT is '递延税款贷项';
comment on column MBT_610_RPT_BAK.C_TOTAL_LIABILITIES is '负债合计';
comment on column MBT_610_RPT_BAK.C_MINORITY_INTEREST is '少数股东权益';
comment on column MBT_610_RPT_BAK.C_PAID_IN_CAPITAL is '实收资本';
comment on column MBT_610_RPT_BAK.C_NATIONAL_CAPITAL is '国家资本';
comment on column MBT_610_RPT_BAK.C_COLLECTIVE_CAPITAL is '集体资本';
comment on column MBT_610_RPT_BAK.C_LEGAL_PERSONS_CAPITAL is '法人资本';
comment on column MBT_610_RPT_BAK.C_STATE_OWNED_LP_CAPITAL is '（法人资本科目下）国有法人资本';
comment on column MBT_610_RPT_BAK.C_COLLECTIVE_LP_CAPITAL is '（法人资本科目下）集体法人资本';
comment on column MBT_610_RPT_BAK.C_PERSONAL_CAPITAL is '个人资本';
comment on column MBT_610_RPT_BAK.C_FOREIGN_BUS_CAPITAL is '外商资本';
comment on column MBT_610_RPT_BAK.C_CAPITALR_RSERVE is '资本公积';
comment on column MBT_610_RPT_BAK.C_SURPLUS_RESERVE is '盈余公积';
comment on column MBT_610_RPT_BAK.C_STATUTORY_SURPLUS_RESERVE is '（盈余公积科目下）法定盈余公积';
comment on column MBT_610_RPT_BAK.C_PUBLIC_WELFARE_FUND is '（盈余公积科目下）公益金';
comment on column MBT_610_RPT_BAK.C_SUPPLER_CURRENT_CAPITAL is '（盈余公积科目下）补充流动资本';
comment on column MBT_610_RPT_BAK.C_UNAFFIRMED_INVESTMENT_LOSS is '未确认的投资损失';
comment on column MBT_610_RPT_BAK.C_UNAPPROPRIATED_PROFIT is '未分配利润';
comment on column MBT_610_RPT_BAK.C_DT_FC_FINANCIAL_STA is '外币报表折算差额';
comment on column MBT_610_RPT_BAK.C_TOTAL_EQUITY is '所有者权益合计';
comment on column MBT_610_RPT_BAK.C_TOTAL_EQUITY_LIABILITIES is '负债和所有者权益总计';
comment on column MBT_610_RPT_BAK.D_CURRENCY_FUNDS is '货币资金';
comment on column MBT_610_RPT_BAK.D_FINANCIAL_ASS_HELD_TRADING is '交易性金融资产';
comment on column MBT_610_RPT_BAK.D_NOTES_RECEIVABLE is '应收票据';
comment on column MBT_610_RPT_BAK.D_ACCOUNTS_RECEIVABLE is '应收账款';
comment on column MBT_610_RPT_BAK.D_PREPAYMENTS is '预付账款';
comment on column MBT_610_RPT_BAK.D_INTEREST_RECEIVABLE is '应收利息';
comment on column MBT_610_RPT_BAK.D_DIVIDENDS_RECEIVABLE is '应收股利';
comment on column MBT_610_RPT_BAK.D_OTHER_RECEIVABLES is '其他应收款';
comment on column MBT_610_RPT_BAK.D_INVENTORIES is '存货';
comment on column MBT_610_RPT_BAK.D_CURRENT_PORTION_NCA is '一年内到期的非流动资产';
comment on column MBT_610_RPT_BAK.D_OTHER_CURRENT_ASSETS is '其他流动资产';
comment on column MBT_610_RPT_BAK.D_TOTAL_CURRENT_ASSETS is '流动资产合计';
comment on column MBT_610_RPT_BAK.D_FINANCIAL_ASS_AVAILABLE_SALE is '可供出售的金融资产';
comment on column MBT_610_RPT_BAK.D_HELD_MATURITY_INVESTMENTS is '持有至到期投资';
comment on column MBT_610_RPT_BAK.D_LONG_TERM_EQUITY_INVESTMENT is '长期股权投资';
comment on column MBT_610_RPT_BAK.D_LONG_TERM_RECEIVABLES is '长期应收款';
comment on column MBT_610_RPT_BAK.D_INVESTMENT_PROPERTIES is '投资性房地产';
comment on column MBT_610_RPT_BAK.D_FIXED_ASSETS is '固定资产';
comment on column MBT_610_RPT_BAK.D_NET_VALUE_OF_FIXE_ASSETS is '固定资产净额';
comment on column MBT_610_RPT_BAK.D_CONSTRUCTION_IN_PROGRESS is '在建工程';
comment on column MBT_610_RPT_BAK.D_CONSTRUCTION_MATERIALS is '工程物资';
comment on column MBT_610_RPT_BAK.D_FIXED_ASS_PENDING_DISPOSAL is '固定资产清理';
comment on column MBT_610_RPT_BAK.D_NON_CURRENT_BIOLOGICAL_ASS is '生产性物资';
comment on column MBT_610_RPT_BAK.D_OIL_AND_GAS_ASSETS is '油气资产';
comment on column MBT_610_RPT_BAK.D_INTANGIBLE_ASSETS is '无形资产';
comment on column MBT_610_RPT_BAK.D_LAND_USE_RIGHTS is '（无形资产科目下）土地使用权';
comment on column MBT_610_RPT_BAK.D_DEVELOPMENT_DISBURSEMENTS is '开发支出';
comment on column MBT_610_RPT_BAK.D_GOODWILL is '商誉';
comment on column MBT_610_RPT_BAK.D_LONG_TERM_DEFERRED_EXPENSES is '长期待摊费用';
comment on column MBT_610_RPT_BAK.D_DEFERRED_TAX_ASSETS is '递延所得税资产';
comment on column MBT_610_RPT_BAK.D_OTHER_NON_CURRENT_ASSETS is '其他非流动资产';
comment on column MBT_610_RPT_BAK.D_TOTAL_NON_CURRENT_ASSETS is '非流动资产合计';
comment on column MBT_610_RPT_BAK.D_TOTAL_ASSETS is '资产总计';
comment on column MBT_610_RPT_BAK.D_SHORT_TERM_BORROWINGS is '短期借款';
comment on column MBT_610_RPT_BAK.D_FINANCIAL_LIABILITIES_HFT is '交易性金融负债';
comment on column MBT_610_RPT_BAK.D_NOTES_PAYABLE is '应付票据';
comment on column MBT_610_RPT_BAK.D_ACCOUNTS_PAYABLE is '应付账款';
comment on column MBT_610_RPT_BAK.D_RECEIPTS_IN_ADVANCE is '预收账款';
comment on column MBT_610_RPT_BAK.D_INTEREST_PAYABLE is '应付利息';
comment on column MBT_610_RPT_BAK.D_EMPLOYEE_BENEFITS_PAYABLE is '应付职工薪酬';
comment on column MBT_610_RPT_BAK.D_TAXES_PAYABLE is '应交税费';
comment on column MBT_610_RPT_BAK.D_DIVIDENDS_PAYABLE is '应付股利';
comment on column MBT_610_RPT_BAK.D_OTHER_PAYABLE is '其他应付款';
comment on column MBT_610_RPT_BAK.D_CURRENT_PORTION_LIABILITIES is '一年内到期的非流动负债';
comment on column MBT_610_RPT_BAK.D_OTHER_CURRENT_LIABILITIES is '其他流动负债';
comment on column MBT_610_RPT_BAK.D_TOTAL_CURRENT_LIABILITIES is '流动负债合计';
comment on column MBT_610_RPT_BAK.D_LONG_TERM_BORROWINGSORROWING is '长期借款';
comment on column MBT_610_RPT_BAK.D_BONDS_PAYABLE is '应付债券';
comment on column MBT_610_RPT_BAK.D_LONG_TERM_PAYABLES is '长期应付款';
comment on column MBT_610_RPT_BAK.D_GRANTS_PAYABLE is '专项应付款';
comment on column MBT_610_RPT_BAK.D_PROVISIONS is '预计负债';
comment on column MBT_610_RPT_BAK.D_DEFERRED_TAX_LIABILITIES is '递延所得税负债';
comment on column MBT_610_RPT_BAK.D_OTHER_NON_CURRENT_LIABILITIE is '其他非流动负债';
comment on column MBT_610_RPT_BAK.D_TOTAL_NON_CURRENT_LIABILITIE is '非流动负债合计';
comment on column MBT_610_RPT_BAK.D_TOTAL_LIABILITIES is '负债合计';
comment on column MBT_610_RPT_BAK.D_PAID_IN_CAPITAL_SHARE_CAPITA is '实收资本（或股本）';
comment on column MBT_610_RPT_BAK.D_CAPITALR_RSERVE is '资本公积';
comment on column MBT_610_RPT_BAK.D_LESS_TREASURY_STOCKS is '减：库存股';
comment on column MBT_610_RPT_BAK.D_SURPLUS_RESERVE is '盈余公积';
comment on column MBT_610_RPT_BAK.D_UNAPPROPRIATED_PROFIT is '未分配利润';
comment on column MBT_610_RPT_BAK.D_TOTAL_EQUITY is '所有者权益合计';
comment on column MBT_610_RPT_BAK.D_TOTAL_EQUITY_LIABILITIES is '负债和所有者权益总计';
comment on column MBT_610_RPT_BAK.REMARKS is '备注';
comment on column MBT_610_RPT_BAK.CHECK_FLAG is '校验标识';
comment on column MBT_610_RPT_BAK.CHECK_DESC is '校验结果';
comment on column MBT_610_RPT_BAK.CHECK_ERR_TYPE is '校验失败类型';
comment on column MBT_610_RPT_BAK.NEXT_ACTION is '下一动作';
comment on column MBT_610_RPT_BAK.DATA_STATUS is '数据状态';
comment on column MBT_610_RPT_BAK.DATA_FLAG is '数据是否已删除';
comment on column MBT_610_RPT_BAK.DATA_SOURCE is '数据来源';
comment on column MBT_610_RPT_BAK.DATA_VERSION is '数据版本号';
comment on column MBT_610_RPT_BAK.DATA_REJ_DESC is '数据审核拒绝描述';
comment on column MBT_610_RPT_BAK.DATA_DEL_DESC is '数据删除描述';
comment on column MBT_610_RPT_BAK.DATA_CRT_USER is '数据创建/导入用户';
comment on column MBT_610_RPT_BAK.DATA_CRT_DATE is '数据创建/导入日期';
comment on column MBT_610_RPT_BAK.DATA_CRT_TIME is '数据创建/导入时间';
comment on column MBT_610_RPT_BAK.DATA_CHG_USER is '数据修改/删除用户';
comment on column MBT_610_RPT_BAK.DATA_CHG_DATE is '数据修改/删除日期';
comment on column MBT_610_RPT_BAK.DATA_CHG_TIME is '数据修改/删除时间';
comment on column MBT_610_RPT_BAK.DATA_APV_USER is '数据审核/拒绝用户';
comment on column MBT_610_RPT_BAK.DATA_APV_DATE is '数据审核/拒绝日期';
comment on column MBT_610_RPT_BAK.DATA_APV_TIME is '数据审核/拒绝时间';
comment on column MBT_610_RPT_BAK.RSV1 is '扩展字段1';
comment on column MBT_610_RPT_BAK.RSV2 is '扩展字段2';
comment on column MBT_610_RPT_BAK.RSV3 is '扩展字段3';
comment on column MBT_610_RPT_BAK.RSV4 is '扩展字段4';
comment on column MBT_610_RPT_BAK.RSV5 is '扩展字段5';
comment on column MBT_610_RPT_BAK.ODS_DATA_ID is 'ODS数据ID';
comment on column MBT_610_RPT_BAK.RPT_DATE is '上报数据日期';
comment on column MBT_610_RPT_BAK.RPT_TIME is '上报数据时间';
comment on column MBT_610_RPT_BAK.IS_RPT is '是否上报';
comment on column MBT_610_RPT_BAK.FB_STATUS is '反馈状态';
comment on column MBT_610_RPT_BAK.RPT_FILE_NAME is '上报文件名';
comment on column MBT_610_RPT_BAK.FB_MSG is '反馈信息';


create table MBT_620_RPT_BAK
(
    DATA_ID                        CHAR(32) not null primary key,
    DATA_DATE                      CHAR(8),
    CORP_ID                        VARCHAR2(14),
    ORG_ID                         VARCHAR2(14),
    GROUP_ID                       VARCHAR2(14),
    INQ_ORG_ID                     CHAR(24),
    INQ_GROUP_ID                   CHAR(24),
    B_INF_REC_TYPE                 CHAR(3),
    B_ENT_NAME                     NVARCHAR2(80),
    B_ENT_CERT_TYPE                VARCHAR2(2),
    B_ENT_CERT_NUM                 VARCHAR2(40),
    B_RPT_DATE                     CHAR(8),
    B_SHEET_YEAR                   CHAR(4),
    B_SHEET_TYPE                   VARCHAR2(2),
    B_SHEET_TYPE_DIVIDE            VARCHAR2(2),
    B_AUDIT_FIRM_NAME              NVARCHAR2(80),
    B_AUDITOR_NAME                 NVARCHAR2(30),
    B_AUDIT_TIME                   CHAR(8),
    B_CIMOC                        VARCHAR2(14),
    B_RPT_DATE_CODE                CHAR(2),
    C_MAIN_REVENUEF_REVENUE        NUMBER(17, 2),
    C_SALES_INCOME_E_GOODS_PRODUCT NUMBER(17, 2),
    C_SALES_INCOME_I_GOODS_PRODUCT NUMBER(17, 2),
    C_DISCOUNT_ALLOWANCE           NUMBER(17, 2),
    C_NET_AMOUNT_INCOME_MAIN_BUSI  NUMBER(17, 2),
    C_MAIN_OPERATING_COST          NUMBER(17, 2),
    C_SALES_INCOME_E_PRODUCTS      NUMBER(17, 2),
    C_PRINCIPLE_B_TAX_EXTRA_CHARGE NUMBER(17, 2),
    C_OPERATION_EXPENSE            NUMBER(17, 2),
    C_OTHERS_OPERATING_COST        NUMBER(17, 2),
    C_DEFERRED_INCOME              NUMBER(17, 2),
    C_INCOME_SALES_AGENCY          NUMBER(17, 2),
    C_OTHER_OPERATING_INCOME       NUMBER(17, 2),
    C_PRINCIPLE_BUSINESS_PROFIT    NUMBER(17, 2),
    C_OTHER_BUSINESS_PROFIT        NUMBER(17, 2),
    C_SELLING_EXPENSES             NUMBER(17, 2),
    C_GENERAL_ADMIN_EXPENSES       NUMBER(17, 2),
    C_FINANCIAL_EXPENSES           NUMBER(17, 2),
    C_OTHERS_EXPENSES              NUMBER(17, 2),
    C_OPERATING_PROFITS            NUMBER(17, 2),
    C_INVESTMENT_INCOME            NUMBER(17, 2),
    C_FUTURES_INCOME               NUMBER(17, 2),
    C_ALLOWANCE_INCOME             NUMBER(17, 2),
    C_ALLOWANCE_INCOME_B_ALLOWANCE NUMBER(17, 2),
    C_NON_OPERATING_INCOME         NUMBER(17, 2),
    C_NET_GAIN_DISPOSAL_FIXED_ASS  NUMBER(17, 2),
    C_INCOME_NON_CURRENCY_TRADE    NUMBER(17, 2),
    C_INCOME_SALES_INTANGIBLE_ASS  NUMBER(17, 2),
    C_INCOME_FROM_PENALTY          NUMBER(17, 2),
    C_OTHERS_INCOME                NUMBER(17, 2),
    C_CALCULATING_CONTENT_SALARY_B NUMBER(17, 2),
    C_NON_OPERATING_EXPENSES       NUMBER(17, 2),
    C_LOSS_DISPOSAL_FIXED_ASSETS   NUMBER(17, 2),
    C_EXCHANGE_NON_MONETARY_ASS_L  NUMBER(17, 2),
    C_LOSS_LAWSUITS                NUMBER(17, 2),
    C_PAYMENT_FOR_DONATION         NUMBER(17, 2),
    C_OTHER_PAYMENTS               NUMBER(17, 2),
    C_BALANCE_OF_CONTENTSALARY     NUMBER(17, 2),
    C_TOTAL_PROFIT                 NUMBER(17, 2),
    C_INCOMETAX                    NUMBER(17, 2),
    C_IMPARIMENT_LOSS              NUMBER(17, 2),
    C_UNREALIZED_INVESTMENT_LOSSES NUMBER(17, 2),
    C_NET_PROFIT                   NUMBER(17, 2),
    C_PROFIT_DISTRIBUTION_B_PERIOD NUMBER(17, 2),
    C_COMPENSATION_SURPLUS_RES     NUMBER(17, 2),
    C_OTHER_ADJUSTMENT_FACTORS     NUMBER(17, 2),
    C_PROFIT_AVAILABLE_DISTRIBUTI  NUMBER(17, 2),
    C_PROFIT_RESERVED_A_SINGLEIT   NUMBER(17, 2),
    C_SUPPLEMENTARY_CURRENT_CAPIT  NUMBER(17, 2),
    C_APPR_STATUTORY_SURPLUS_RES   NUMBER(17, 2),
    C_APPR_STATUTORY_WELFAREFUND   NUMBER(17, 2),
    C_APPR_STAFF_INC_WELFARE_FUND  NUMBER(17, 2),
    C_APPR_RESERVE_FUND            NUMBER(17, 2),
    C_APPR_ENTERPRISE_EXP_FUND     NUMBER(17, 2),
    C_PRO_CAP_RETURN_INVESTMENT    NUMBER(17, 2),
    C_OTHERS                       NUMBER(17, 2),
    C_PROFIT_AVAILABLE_OWNERS_DIST NUMBER(17, 2),
    C_PREFERRED_STOCK_DIVIDEND_PAY NUMBER(17, 2),
    C_WITHDRAWAL_OTHER_COMM_ACC_FU NUMBER(17, 2),
    C_PAYABLE_DIVIDENDS_COMMON_STO NUMBER(17, 2),
    C_TRANSFER_ORDINARY_SHARES_DP  NUMBER(17, 2),
    C_OTHERS_OWNERS                NUMBER(17, 2),
    C_UNAPPROPRIATED_PROFIT        NUMBER(17, 2),
    C_LOSS_COMPENSATED_BEFORE_TAX  NUMBER(17, 2),
    D_REVENUE_OF_SALES             NUMBER(17, 2),
    D_COST_OF_SALES                NUMBER(17, 2),
    D_BUSINESS_OTHER_TAXES         NUMBER(17, 2),
    D_SELLING_EXPENSES             NUMBER(17, 2),
    D_GENERAL_ADMIN_EXPENSES       NUMBER(17, 2),
    D_FINANCIAL_EXPENSE            NUMBER(17, 2),
    D_IMPAIRMENT_LOSS_OF_ASSETS    NUMBER(17, 2),
    D_PROFIT_LOSS_ARISING_FAIR_VAL NUMBER(17, 2),
    D_INVESTMENT_INCOME            NUMBER(17, 2),
    D_INVESTMENT_INCOME_ENTERPRISE NUMBER(17, 2),
    D_OPERATING_PROFITS            NUMBER(17, 2),
    D_NON_OPERATING_INCOME         NUMBER(17, 2),
    D_NON_OPERATING_EXPENSES       NUMBER(17, 2),
    D_NON_CURRENT_ASSETS           NUMBER(17, 2),
    D_PROFIT_BEFORE_TAX            NUMBER(17, 2),
    D_INCOME_TAX_EXPENSE           NUMBER(17, 2),
    D_NET_PROFIT                   NUMBER(17, 2),
    D_BASIC_EARNINGS_PER_SHARE     NUMBER(17, 2),
    D_DILUTED_EARNINGS_PER_SHARE   NUMBER(17, 2),
    E_DATA_DESC                    NVARCHAR2(256),
    REMARKS                        NVARCHAR2(512),
    CHECK_FLAG                     CHAR,
    CHECK_DESC                     VARCHAR2(512),
    CHECK_ERR_TYPE                 CHAR,
    NEXT_ACTION                    CHAR(2),
    DATA_STATUS                    CHAR(2),
    DATA_FLAG                      CHAR,
    DATA_SOURCE                    CHAR,
    DATA_VERSION                   NUMBER(8),
    DATA_REJ_DESC                  NVARCHAR2(128),
    DATA_DEL_DESC                  NVARCHAR2(128),
    DATA_CRT_USER                  VARCHAR2(20),
    DATA_CRT_DATE                  CHAR(8),
    DATA_CRT_TIME                  CHAR(14),
    DATA_CHG_USER                  VARCHAR2(20),
    DATA_CHG_DATE                  CHAR(8),
    DATA_CHG_TIME                  CHAR(14),
    DATA_APV_USER                  VARCHAR2(20),
    DATA_APV_DATE                  CHAR(8),
    DATA_APV_TIME                  CHAR(14),
    RSV1                           VARCHAR2(180),
    RSV2                           VARCHAR2(180),
    RSV3                           VARCHAR2(180),
    RSV4                           VARCHAR2(180),
    RSV5                           VARCHAR2(180),
    ODS_DATA_ID                    CHAR(32),
    RPT_DATE                       CHAR(8),
    RPT_TIME                       CHAR(14),
    IS_RPT                         VARCHAR2(64),
    ROW_NUM                        NUMBER,
    FB_STATUS                      CHAR(2),
    RPT_FILE_NAME                  VARCHAR2(512),
    FB_MSG                         VARCHAR2(1024),
    B_CUST_NO                      NVARCHAR2(64)
);
comment on column MBT_620_RPT_BAK.DATA_ID is '主键';
comment on column MBT_620_RPT_BAK.DATA_DATE is '数据日期';
comment on column MBT_620_RPT_BAK.CORP_ID is '法人机构号';
comment on column MBT_620_RPT_BAK.ORG_ID is '分行机构号';
comment on column MBT_620_RPT_BAK.GROUP_ID is '部门编号';
comment on column MBT_620_RPT_BAK.INQ_ORG_ID is '查询机构号';
comment on column MBT_620_RPT_BAK.INQ_GROUP_ID is '查询组号';
comment on column MBT_620_RPT_BAK.B_INF_REC_TYPE is '信息记录类型';
comment on column MBT_620_RPT_BAK.B_ENT_NAME is '企业名称';
comment on column MBT_620_RPT_BAK.B_ENT_CERT_TYPE is '企业身份标识类型';
comment on column MBT_620_RPT_BAK.B_ENT_CERT_NUM is '企业身份标识号码';
comment on column MBT_620_RPT_BAK.B_RPT_DATE is '信息报告日期';
comment on column MBT_620_RPT_BAK.B_SHEET_YEAR is '报表年份';
comment on column MBT_620_RPT_BAK.B_SHEET_TYPE is '报表类型';
comment on column MBT_620_RPT_BAK.B_SHEET_TYPE_DIVIDE is '报表类型细分';
comment on column MBT_620_RPT_BAK.B_AUDIT_FIRM_NAME is '审计事务所名称';
comment on column MBT_620_RPT_BAK.B_AUDITOR_NAME is '审计人员名称';
comment on column MBT_620_RPT_BAK.B_AUDIT_TIME is '审计时间';
comment on column MBT_620_RPT_BAK.B_CIMOC is '客户资料维护机构代码';
comment on column MBT_620_RPT_BAK.B_RPT_DATE_CODE is '报告时点说明代码';
comment on column MBT_620_RPT_BAK.C_MAIN_REVENUEF_REVENUE is '主营业务收入';
comment on column MBT_620_RPT_BAK.C_SALES_INCOME_E_GOODS_PRODUCT is '（主营业务收入科目下）出口产品销售收入';
comment on column MBT_620_RPT_BAK.C_SALES_INCOME_I_GOODS_PRODUCT is '（主营业务收入科目下）进口产品销售收入';
comment on column MBT_620_RPT_BAK.C_DISCOUNT_ALLOWANCE is '销售折扣与折让';
comment on column MBT_620_RPT_BAK.C_NET_AMOUNT_INCOME_MAIN_BUSI is '主营业务收入净额';
comment on column MBT_620_RPT_BAK.C_MAIN_OPERATING_COST is '主营业务成本';
comment on column MBT_620_RPT_BAK.C_SALES_INCOME_E_PRODUCTS is '（主营业务成本科目下）出口产品销售成本';
comment on column MBT_620_RPT_BAK.C_PRINCIPLE_B_TAX_EXTRA_CHARGE is '主营业务税金及附加';
comment on column MBT_620_RPT_BAK.C_OPERATION_EXPENSE is '经营费用';
comment on column MBT_620_RPT_BAK.C_OTHERS_OPERATING_COST is '其他（业务成本）';
comment on column MBT_620_RPT_BAK.C_DEFERRED_INCOME is '递延收益';
comment on column MBT_620_RPT_BAK.C_INCOME_SALES_AGENCY is '代购代销收入';
comment on column MBT_620_RPT_BAK.C_OTHER_OPERATING_INCOME is '其他（收入）';
comment on column MBT_620_RPT_BAK.C_PRINCIPLE_BUSINESS_PROFIT is '主营业务利润';
comment on column MBT_620_RPT_BAK.C_OTHER_BUSINESS_PROFIT is '其他业务利润';
comment on column MBT_620_RPT_BAK.C_SELLING_EXPENSES is '营业费用';
comment on column MBT_620_RPT_BAK.C_GENERAL_ADMIN_EXPENSES is '管理费用';
comment on column MBT_620_RPT_BAK.C_FINANCIAL_EXPENSES is '财务费用';
comment on column MBT_620_RPT_BAK.C_OTHERS_EXPENSES is '其他（费用）';
comment on column MBT_620_RPT_BAK.C_OPERATING_PROFITS is '营业利润';
comment on column MBT_620_RPT_BAK.C_INVESTMENT_INCOME is '投资收益';
comment on column MBT_620_RPT_BAK.C_FUTURES_INCOME is '期货收益';
comment on column MBT_620_RPT_BAK.C_ALLOWANCE_INCOME is '补贴收入';
comment on column MBT_620_RPT_BAK.C_ALLOWANCE_INCOME_B_ALLOWANCE is '（补贴收入科目下）补贴前亏损的企业补贴收入';
comment on column MBT_620_RPT_BAK.C_NON_OPERATING_INCOME is '营业外收入';
comment on column MBT_620_RPT_BAK.C_NET_GAIN_DISPOSAL_FIXED_ASS is '（营业外收入科目下）处置固定资产净收益';
comment on column MBT_620_RPT_BAK.C_INCOME_NON_CURRENCY_TRADE is '（营业外收入科目下）非货币性交易收益';
comment on column MBT_620_RPT_BAK.C_INCOME_SALES_INTANGIBLE_ASS is '（营业外收入科目下）出售无形资产收益';
comment on column MBT_620_RPT_BAK.C_INCOME_FROM_PENALTY is '（营业外收入科目下）罚款净收入';
comment on column MBT_620_RPT_BAK.C_OTHERS_INCOME is '其他（利润）';
comment on column MBT_620_RPT_BAK.C_CALCULATING_CONTENT_SALARY_B is '（其他科目下）用以前年度含量工资节余弥补利润';
comment on column MBT_620_RPT_BAK.C_NON_OPERATING_EXPENSES is '营业外支出';
comment on column MBT_620_RPT_BAK.C_LOSS_DISPOSAL_FIXED_ASSETS is '（营业外支出科目下）处置固定资产净损失';
comment on column MBT_620_RPT_BAK.C_EXCHANGE_NON_MONETARY_ASS_L is '（营业外支出科目下）债务重组损失';
comment on column MBT_620_RPT_BAK.C_LOSS_LAWSUITS is '（营业外支出科目下）罚款支出';
comment on column MBT_620_RPT_BAK.C_PAYMENT_FOR_DONATION is '（营业外支出科目下）捐赠支出';
comment on column MBT_620_RPT_BAK.C_OTHER_PAYMENTS is '其他支出';
comment on column MBT_620_RPT_BAK.C_BALANCE_OF_CONTENTSALARY is '（其他支出）结转的含量工资包干节余';
comment on column MBT_620_RPT_BAK.C_TOTAL_PROFIT is '利润总额';
comment on column MBT_620_RPT_BAK.C_INCOMETAX is '所得税';
comment on column MBT_620_RPT_BAK.C_IMPARIMENT_LOSS is '少数股东损益';
comment on column MBT_620_RPT_BAK.C_UNREALIZED_INVESTMENT_LOSSES is '未确认的投资损失';
comment on column MBT_620_RPT_BAK.C_NET_PROFIT is '净利润';
comment on column MBT_620_RPT_BAK.C_PROFIT_DISTRIBUTION_B_PERIOD is '年初未分配利润';
comment on column MBT_620_RPT_BAK.C_COMPENSATION_SURPLUS_RES is '盈余公积补亏';
comment on column MBT_620_RPT_BAK.C_OTHER_ADJUSTMENT_FACTORS is '其他调整因素';
comment on column MBT_620_RPT_BAK.C_PROFIT_AVAILABLE_DISTRIBUTI is '可供分配的利润';
comment on column MBT_620_RPT_BAK.C_PROFIT_RESERVED_A_SINGLEIT is '单项留用的利润';
comment on column MBT_620_RPT_BAK.C_SUPPLEMENTARY_CURRENT_CAPIT is '补充流动资本';
comment on column MBT_620_RPT_BAK.C_APPR_STATUTORY_SURPLUS_RES is '提取法定盈余公积';
comment on column MBT_620_RPT_BAK.C_APPR_STATUTORY_WELFAREFUND is '提取法定公益金';
comment on column MBT_620_RPT_BAK.C_APPR_STAFF_INC_WELFARE_FUND is '提取职工奖励及福利基金';
comment on column MBT_620_RPT_BAK.C_APPR_RESERVE_FUND is '提取储备基金';
comment on column MBT_620_RPT_BAK.C_APPR_ENTERPRISE_EXP_FUND is '提取企业发展基金';
comment on column MBT_620_RPT_BAK.C_PRO_CAP_RETURN_INVESTMENT is '利润归还投资';
comment on column MBT_620_RPT_BAK.C_OTHERS is '（可供分配的利润科目下）其他';
comment on column MBT_620_RPT_BAK.C_PROFIT_AVAILABLE_OWNERS_DIST is '可供投资者分配的利润';
comment on column MBT_620_RPT_BAK.C_PREFERRED_STOCK_DIVIDEND_PAY is '应付优先股股利';
comment on column MBT_620_RPT_BAK.C_WITHDRAWAL_OTHER_COMM_ACC_FU is '提取任意盈余公积';
comment on column MBT_620_RPT_BAK.C_PAYABLE_DIVIDENDS_COMMON_STO is '应付普通股股利';
comment on column MBT_620_RPT_BAK.C_TRANSFER_ORDINARY_SHARES_DP is '转作资本的普通股股利';
comment on column MBT_620_RPT_BAK.C_OTHERS_OWNERS is '（可供投资者分配的利润科目下）其他';
comment on column MBT_620_RPT_BAK.C_UNAPPROPRIATED_PROFIT is '未分配利润';
comment on column MBT_620_RPT_BAK.C_LOSS_COMPENSATED_BEFORE_TAX is '（未分配利润科目下）应由以后年度税前利润弥补的亏损';
comment on column MBT_620_RPT_BAK.D_REVENUE_OF_SALES is '营业收入';
comment on column MBT_620_RPT_BAK.D_COST_OF_SALES is '营业成本';
comment on column MBT_620_RPT_BAK.D_BUSINESS_OTHER_TAXES is '营业税金及附加';
comment on column MBT_620_RPT_BAK.D_SELLING_EXPENSES is '销售费用';
comment on column MBT_620_RPT_BAK.D_GENERAL_ADMIN_EXPENSES is '管理费用';
comment on column MBT_620_RPT_BAK.D_FINANCIAL_EXPENSE is '财务费用';
comment on column MBT_620_RPT_BAK.D_IMPAIRMENT_LOSS_OF_ASSETS is '资产减值损失';
comment on column MBT_620_RPT_BAK.D_PROFIT_LOSS_ARISING_FAIR_VAL is '公允价值变动净收益';
comment on column MBT_620_RPT_BAK.D_INVESTMENT_INCOME is '投资净收益';
comment on column MBT_620_RPT_BAK.D_INVESTMENT_INCOME_ENTERPRISE is '对联营企业和合的投资收益';
comment on column MBT_620_RPT_BAK.D_OPERATING_PROFITS is '营业利润';
comment on column MBT_620_RPT_BAK.D_NON_OPERATING_INCOME is '营业外收入';
comment on column MBT_620_RPT_BAK.D_NON_OPERATING_EXPENSES is '营业外支出';
comment on column MBT_620_RPT_BAK.D_NON_CURRENT_ASSETS is '非流动资产损失（其中：处置）';
comment on column MBT_620_RPT_BAK.D_PROFIT_BEFORE_TAX is '利润总额';
comment on column MBT_620_RPT_BAK.D_INCOME_TAX_EXPENSE is '所得税费用';
comment on column MBT_620_RPT_BAK.D_NET_PROFIT is '净利润';
comment on column MBT_620_RPT_BAK.D_BASIC_EARNINGS_PER_SHARE is '基本每股收益';
comment on column MBT_620_RPT_BAK.D_DILUTED_EARNINGS_PER_SHARE is '稀释每股收益';
comment on column MBT_620_RPT_BAK.REMARKS is '备注';
comment on column MBT_620_RPT_BAK.CHECK_FLAG is '校验标识';
comment on column MBT_620_RPT_BAK.CHECK_DESC is '校验结果';
comment on column MBT_620_RPT_BAK.CHECK_ERR_TYPE is '校验失败类型';
comment on column MBT_620_RPT_BAK.NEXT_ACTION is '下一动作';
comment on column MBT_620_RPT_BAK.DATA_STATUS is '数据状态';
comment on column MBT_620_RPT_BAK.DATA_FLAG is '数据是否已删除';
comment on column MBT_620_RPT_BAK.DATA_SOURCE is '数据来源';
comment on column MBT_620_RPT_BAK.DATA_VERSION is '数据版本号';
comment on column MBT_620_RPT_BAK.DATA_REJ_DESC is '数据审核拒绝描述';
comment on column MBT_620_RPT_BAK.DATA_DEL_DESC is '数据删除描述';
comment on column MBT_620_RPT_BAK.DATA_CRT_USER is '数据创建/导入用户';
comment on column MBT_620_RPT_BAK.DATA_CRT_DATE is '数据创建/导入日期';
comment on column MBT_620_RPT_BAK.DATA_CRT_TIME is '数据创建/导入时间';
comment on column MBT_620_RPT_BAK.DATA_CHG_USER is '数据修改/删除用户';
comment on column MBT_620_RPT_BAK.DATA_CHG_DATE is '数据修改/删除日期';
comment on column MBT_620_RPT_BAK.DATA_CHG_TIME is '数据修改/删除时间';
comment on column MBT_620_RPT_BAK.DATA_APV_USER is '数据审核/拒绝用户';
comment on column MBT_620_RPT_BAK.DATA_APV_DATE is '数据审核/拒绝日期';
comment on column MBT_620_RPT_BAK.DATA_APV_TIME is '数据审核/拒绝时间';
comment on column MBT_620_RPT_BAK.RSV1 is '扩展字段1';
comment on column MBT_620_RPT_BAK.RSV2 is '扩展字段2';
comment on column MBT_620_RPT_BAK.RSV3 is '扩展字段3';
comment on column MBT_620_RPT_BAK.RSV4 is '扩展字段4';
comment on column MBT_620_RPT_BAK.RSV5 is '扩展字段5';
comment on column MBT_620_RPT_BAK.ODS_DATA_ID is 'ODS数据ID';
comment on column MBT_620_RPT_BAK.RPT_DATE is '上报数据日期';
comment on column MBT_620_RPT_BAK.RPT_TIME is '上报数据时间';
comment on column MBT_620_RPT_BAK.IS_RPT is '是否上报';
comment on column MBT_620_RPT_BAK.FB_STATUS is '反馈状态';
comment on column MBT_620_RPT_BAK.RPT_FILE_NAME is '上报文件名';
comment on column MBT_620_RPT_BAK.FB_MSG is '反馈信息';


create table MBT_630_RPT_BAK
(
    DATA_ID                        CHAR(32) not null primary key,
    DATA_DATE                      CHAR(8),
    CORP_ID                        VARCHAR2(14),
    ORG_ID                         VARCHAR2(14),
    GROUP_ID                       VARCHAR2(14),
    INQ_ORG_ID                     CHAR(24),
    INQ_GROUP_ID                   CHAR(24),
    B_INF_REC_TYPE                 CHAR(3),
    B_ENT_NAME                     NVARCHAR2(80),
    B_ENT_CERT_TYPE                VARCHAR2(2),
    B_ENT_CERT_NUM                 VARCHAR2(40),
    B_RPT_DATE                     CHAR(8),
    B_SHEET_YEAR                   CHAR(4),
    B_SHEET_TYPE                   VARCHAR2(2),
    B_SHEET_TYPE_DIVIDE            VARCHAR2(2),
    B_AUDIT_FIRM_NAME              NVARCHAR2(80),
    B_AUDITOR_NAME                 NVARCHAR2(30),
    B_AUDIT_TIME                   CHAR(8),
    B_CIMOC                        VARCHAR2(14),
    B_RPT_DATE_CODE                CHAR(2),
    C_CASH_REC_SALES_GOODS_REN_SER NUMBER(17, 2),
    C_TAX_REFUNDS                  NUMBER(17, 2),
    C_OTHER_CASH_REC_REL_OPERA_ACT NUMBER(17, 2),
    C_TOTAL_CASH_INFLOWS_OPERA_ACT NUMBER(17, 2),
    C_CASH_PAID_GOODS_SERVICES     NUMBER(17, 2),
    C_CASH_PAID_BEHALF_EMPLOYEES   NUMBER(17, 2),
    C_TOTAL_CASH_OUTFLOWS_OPERA_AC NUMBER(17, 2),
    C_NET_CASH_FLOWS_OPERAT_ACT    NUMBER(17, 2),
    C_CASH_REC_RETURN_INVESTMENT   NUMBER(17, 2),
    C_CASH_RECEIVED_ONVESTMENTS    NUMBER(17, 2),
    C_NET_CASH_REC_D_F_A_I_A_O_LT  NUMBER(17, 2),
    C_CASH_RECEIVED_REL_OTHER_ACT  NUMBER(17, 2),
    C_TOTAL_CASH_INF_INVESTING_ACT NUMBER(17, 2),
    C_CASH_P_A_F_ASS_I_ASS_OLT_ASS NUMBER(17, 2),
    C_CASH_PAYMENTS_INVESTMENTS    NUMBER(17, 2),
    C_CASH_PAYMENTS_RELATED_O_ACT  NUMBER(17, 2),
    C_TOTAL_CASH_OUTFLOWS_INV_ACT  NUMBER(17, 2),
    C_NET_CASH_FLOWS_INVESTING_ACT NUMBER(17, 2),
    C_CASH_RECEIVED_FROM_INVESTORS NUMBER(17, 2),
    C_CASH_FROM_BORROWINGS         NUMBER(17, 2),
    C_OTHER_CASH_REC_REL_FIN_ACT   NUMBER(17, 2),
    C_TOTAL_CASH_INF_FINANCING_ACT NUMBER(17, 2),
    C_CASH_REPAYMENTS_FOR_DEBTS    NUMBER(17, 2),
    C_CASH_PAYMENTS_D_D_PRO_I_EXP  NUMBER(17, 2),
    C_CASH_PAYMENTS_REL_O_FIN_AC   NUMBER(17, 2),
    C_TOTAL_CASH_OUTFLOWS_FIN_AC   NUMBER(17, 2),
    C_NET_CASH_FLOWS_FINANCING_AC  NUMBER(17, 2),
    C_EFFECT_EX_RATE_CHANGES_CASH  NUMBER(17, 2),
    C_NET_INC_CASH_CASH_EQUIVALENT NUMBER(17, 2),
    C_NET_PROFIT                   NUMBER(17, 2),
    C_PROVISION_FOR_ASSETS         NUMBER(17, 2),
    C_DEPRECIATION_FIXED_ASSETS    NUMBER(17, 2),
    C_AMORTISATION_INTANGIBLE_ASS  NUMBER(17, 2),
    C_LONG_TERM_DEFERRED_EXP_AMOR  NUMBER(17, 2),
    C_DECREASE_DEFFERED_EXPENSES   NUMBER(17, 2),
    C_ADDITION_ACCUED_EXPENSE      NUMBER(17, 2),
    C_LOSSES_D_F_ASS_I_ASS_OLT_ASS NUMBER(17, 2),
    C_LOSSES_SCRAPPING_FIXED_ASS   NUMBER(17, 2),
    C_FINANCE_EXPENSE              NUMBER(17, 2),
    C_LOSSES_ARSING_INVESTMENT     NUMBER(17, 2),
    C_DEFERRED_TAX_CREDIT          NUMBER(17, 2),
    C_DECREASE_IN_INVENTORIES      NUMBER(17, 2),
    C_DECREASE_OPERATING_RECEIVABL NUMBER(17, 2),
    C_INCREASE_OPERATING_RECEIVABL NUMBER(17, 2),
    C_OTHERS                       NUMBER(17, 2),
    C_NET_CASH_FLOWS_OPERA_ACT_MI  NUMBER(17, 2),
    C_DEBTS_TRANSFER_TO_CAPITAL    NUMBER(17, 2),
    C_ONE_YEAR_DUE_CONVERTIBLE_BON NUMBER(17, 2),
    C_FINANCING_RENT_THE_FIXED_ASS NUMBER(17, 2),
    C_NON_CASH_OTHERS              NUMBER(17, 2),
    C_CASH_AT_THE_END_OF_PERIOD    NUMBER(17, 2),
    C_CASH_AT_THE_BEGINNING_PERIOD NUMBER(17, 2),
    C_CASH_EQUIVALENTS_END_PERIOD  NUMBER(17, 2),
    C_CASH_RQUIVALENTS_BEGIN_PERIO NUMBER(17, 2),
    C_NET_INCREASE_CASH_CASH_EQU_M NUMBER(17, 2),
    D_CASH_REC_SAL_GOO_REN_SERVICE NUMBER(17, 2),
    D_TAX_REFUNDS                  NUMBER(17, 2),
    D_OTHER_CASH_REC_REL_OPERA_ACT NUMBER(17, 2),
    D_TOTAL_CASH_INFLOWS_OPERAT_AC NUMBER(17, 2),
    D_CASH_PAID_FOR_GOODS_SERVICES NUMBER(17, 2),
    D_CASH_PAID_BEHALF_OF_EMPLOYEE NUMBER(17, 2),
    D_PAYMENTS_OF_ALL_TYPES_TAXES  NUMBER(17, 2),
    D_OTHER_CASH_PAYMENTS_OPERA_AC NUMBER(17, 2),
    D_TOTAL_CASH_OUTFLOWS_OPERA_AC NUMBER(17, 2),
    D_NET_CASH_FLOWS_OPERATING_ACT NUMBER(17, 2),
    D_CASH_REC_RETURN_INVESTMENT   NUMBER(17, 2),
    D_CASH_REC_ONVESTMENTS         NUMBER(17, 2),
    D_NET_CASH_R_DFASS_IASS_OLTASS NUMBER(17, 2),
    D_NET_CASH_INF_DIS_SUB_O_B_ENT NUMBER(17, 2),
    D_CASH_REC_REL_OTHER_INVEST_AC NUMBER(17, 2),
    D_TOTAL_CASH_INFLOWS_INVEST_AC NUMBER(17, 2),
    D_CASH_PAID_ACQ_FASS_IASS_ASS  NUMBER(17, 2),
    D_CASH_PAYMENTS_INVESTMENTS    NUMBER(17, 2),
    D_NET_CASH_OUTF_PRO_SUB_OBUNIT NUMBER(17, 2),
    D_CASH_PAYMENTS_REL_O_I_ACT    NUMBER(17, 2),
    D_SUB_TOTAL_CASH_OUTFLOWS      NUMBER(17, 2),
    D_NET_CASH_FLOWS_INVEST_ACT    NUMBER(17, 2),
    D_CASH_RECEIVED_INVESTORS      NUMBER(17, 2),
    D_CASH_FROM_BORROWINGS         NUMBER(17, 2),
    D_OTHER_CASH_REC_REL_FINA_ACT  NUMBER(17, 2),
    D_TOTAL_CASH_INFLOWS_FINA_ACT  NUMBER(17, 2),
    D_CASH_REPAYMENTS_FOR_DEBTS    NUMBER(17, 2),
    D_CASH_PAYMENTS_D_DI_P_INT_EXP NUMBER(17, 2),
    D_CASH_PAYMENTS_REL_O_F_ACT    NUMBER(17, 2),
    D_TOTAL_CASH_OUTFLOWS_FINA_ACT NUMBER(17, 2),
    D_NET_CASH_FLOWS_FINANCING_ACT NUMBER(17, 2),
    D_EFFECT_EXC_RATE_CHANGES_CASH NUMBER(17, 2),
    D_NET_INC_CASH_CASH_EQUIVALENT NUMBER(17, 2),
    D_INITIAL_CASH_CASH_EQU_BALANC NUMBER(17, 2),
    D_THE_FINAL_CASH_EQU_BALANCE   NUMBER(17, 2),
    D_NET_PROFIT                   NUMBER(17, 2),
    D_PROVISION_ASSET_IMPAIRMENT   NUMBER(17, 2),
    D_DEPRECIATION_FIXED_ASSETS    NUMBER(17, 2),
    D_AMORTISATION_INTANGIBLE_ASS  NUMBER(17, 2),
    D_AMORTISATION_LT_DEFFERED_EXP NUMBER(17, 2),
    D_DECREASE_DEFFERED_EXPENSES   NUMBER(17, 2),
    D_ADDITION_OF_ACCUED_EXPENSE   NUMBER(17, 2),
    D_LOSSES_DISP_FASS_IASS_OLTASS NUMBER(17, 2),
    D_LOSSES_SCRAPPING_FIXED_ASS   NUMBER(17, 2),
    D_PROFIT_LOSS_CHANGES_FAIR_VAL NUMBER(17, 2),
    D_FINANCE_EXPENSE              NUMBER(17, 2),
    D_LOSSES_ARSING_INVESTMENT     NUMBER(17, 2),
    D_DEFERRED_INCOME_TAX_ASSETS   NUMBER(17, 2),
    D_DEFERRED_INCOME_TAX_LIABILIT NUMBER(17, 2),
    D_DECREASE_IN_INVENTORIES      NUMBER(17, 2),
    D_DECREASE_OPERATING_RECEIVABL NUMBER(17, 2),
    D_INCREASE_OPERATING_RECEIVABL NUMBER(17, 2),
    D_OTHERS                       NUMBER(17, 2),
    D_NET_CASH_FLOWS_OPERAT_ACT_MI NUMBER(17, 2),
    D_DEBTS_TRANSFER_TO_CAPITAL    NUMBER(17, 2),
    D_ONE_YEAR_DUE_CONVER_BONDS    NUMBER(17, 2),
    D_FINANCING_RENT_FIXED_ASSET   NUMBER(17, 2),
    D_NON_CASH_OTHERS              NUMBER(17, 2),
    D_CASH_AT_THE_END_OF_PERIOD    NUMBER(17, 2),
    D_CASH_AT_THE_BEGINNING_PERIOD NUMBER(17, 2),
    D_CASH_EQUIVALENTS_AT_THE_PERI NUMBER(17, 2),
    D_CASH_RQUIVALENTS_BEGIN_PERIO NUMBER(17, 2),
    D_NET_INCREASE_CASH_EQUIVAL_MI NUMBER(17, 2),
    E_DATA_DESC                    NVARCHAR2(256),
    REMARKS                        NVARCHAR2(512),
    CHECK_FLAG                     CHAR,
    CHECK_DESC                     VARCHAR2(512),
    CHECK_ERR_TYPE                 CHAR,
    NEXT_ACTION                    CHAR(2),
    DATA_STATUS                    CHAR(2),
    DATA_FLAG                      CHAR,
    DATA_SOURCE                    CHAR,
    DATA_VERSION                   NUMBER(8),
    DATA_REJ_DESC                  NVARCHAR2(128),
    DATA_DEL_DESC                  NVARCHAR2(128),
    DATA_CRT_USER                  VARCHAR2(20),
    DATA_CRT_DATE                  CHAR(8),
    DATA_CRT_TIME                  CHAR(14),
    DATA_CHG_USER                  VARCHAR2(20),
    DATA_CHG_DATE                  CHAR(8),
    DATA_CHG_TIME                  CHAR(14),
    DATA_APV_USER                  VARCHAR2(20),
    DATA_APV_DATE                  CHAR(8),
    DATA_APV_TIME                  CHAR(14),
    RSV1                           VARCHAR2(180),
    RSV2                           VARCHAR2(180),
    RSV3                           VARCHAR2(180),
    RSV4                           VARCHAR2(180),
    RSV5                           VARCHAR2(180),
    ODS_DATA_ID                    CHAR(32),
    RPT_DATE                       CHAR(8),
    RPT_TIME                       CHAR(14),
    C_ONE_YEAR_DUE_CONVERTIBLE_BO  NUMBER(17, 2),
    IS_RPT                         VARCHAR2(64),
    C_PAYMENTS_OF_ALL_TYPES_TAXES  NUMBER(17, 2),
    C_OTHER_CASH_PAYMENTS_OPERA_AC NUMBER(17, 2),
    ROW_NUM                        NUMBER,
    FB_STATUS                      CHAR(2),
    RPT_FILE_NAME                  VARCHAR2(512),
    FB_MSG                         VARCHAR2(1024),
    B_CUST_NO                      NVARCHAR2(64)
);
comment on column MBT_630_RPT_BAK.DATA_ID is '主键';
comment on column MBT_630_RPT_BAK.DATA_DATE is '数据日期';
comment on column MBT_630_RPT_BAK.CORP_ID is '法人机构号';
comment on column MBT_630_RPT_BAK.ORG_ID is '分行机构号';
comment on column MBT_630_RPT_BAK.GROUP_ID is '部门编号';
comment on column MBT_630_RPT_BAK.INQ_ORG_ID is '查询机构号';
comment on column MBT_630_RPT_BAK.INQ_GROUP_ID is '查询组号';
comment on column MBT_630_RPT_BAK.B_INF_REC_TYPE is '信息记录类型';
comment on column MBT_630_RPT_BAK.B_ENT_NAME is '企业名称';
comment on column MBT_630_RPT_BAK.B_ENT_CERT_TYPE is '企业身份标识类型';
comment on column MBT_630_RPT_BAK.B_ENT_CERT_NUM is '企业身份标识号码';
comment on column MBT_630_RPT_BAK.B_RPT_DATE is '信息报告日期';
comment on column MBT_630_RPT_BAK.B_SHEET_YEAR is '报表年份';
comment on column MBT_630_RPT_BAK.B_SHEET_TYPE is '报表类型';
comment on column MBT_630_RPT_BAK.B_SHEET_TYPE_DIVIDE is '报表类型细分';
comment on column MBT_630_RPT_BAK.B_AUDIT_FIRM_NAME is '审计事务所名称';
comment on column MBT_630_RPT_BAK.B_AUDITOR_NAME is '审计人员名称';
comment on column MBT_630_RPT_BAK.B_AUDIT_TIME is '审计时间';
comment on column MBT_630_RPT_BAK.B_CIMOC is '客户资料维护机构代码';
comment on column MBT_630_RPT_BAK.B_RPT_DATE_CODE is '报告时点说明代码';
comment on column MBT_630_RPT_BAK.C_CASH_REC_SALES_GOODS_REN_SER is '销售商品和提供劳务收到的现金';
comment on column MBT_630_RPT_BAK.C_TAX_REFUNDS is '收到的税费返还';
comment on column MBT_630_RPT_BAK.C_OTHER_CASH_REC_REL_OPERA_ACT is '收到的其他与经营活动有关现金';
comment on column MBT_630_RPT_BAK.C_TOTAL_CASH_INFLOWS_OPERA_ACT is '经营活动现金流入小计';
comment on column MBT_630_RPT_BAK.C_CASH_PAID_GOODS_SERVICES is '购买商品、接受劳务支付的现金';
comment on column MBT_630_RPT_BAK.C_CASH_PAID_BEHALF_EMPLOYEES is '支付给职工以及为支付的现金';
comment on column MBT_630_RPT_BAK.C_TOTAL_CASH_OUTFLOWS_OPERA_AC is '经营活动现金流出小计';
comment on column MBT_630_RPT_BAK.C_NET_CASH_FLOWS_OPERAT_ACT is '经营活动产生的现金流量净额';
comment on column MBT_630_RPT_BAK.C_CASH_REC_RETURN_INVESTMENT is '收回投资所收到的现金';
comment on column MBT_630_RPT_BAK.C_CASH_RECEIVED_ONVESTMENTS is '取得投资收益所到的现金';
comment on column MBT_630_RPT_BAK.C_NET_CASH_REC_D_F_A_I_A_O_LT is '处置固定资产无形资产和其他长期所收回的现金净额';
comment on column MBT_630_RPT_BAK.C_CASH_RECEIVED_REL_OTHER_ACT is '收到的其他与投资活动有关现金';
comment on column MBT_630_RPT_BAK.C_TOTAL_CASH_INF_INVESTING_ACT is '投资活动现金流入小计';
comment on column MBT_630_RPT_BAK.C_CASH_P_A_F_ASS_I_ASS_OLT_ASS is '构建固定资产无形和其他长期所支付的现金';
comment on column MBT_630_RPT_BAK.C_CASH_PAYMENTS_INVESTMENTS is '投资所支付的现金';
comment on column MBT_630_RPT_BAK.C_CASH_PAYMENTS_RELATED_O_ACT is '支付的其他与投资活动有关现金';
comment on column MBT_630_RPT_BAK.C_TOTAL_CASH_OUTFLOWS_INV_ACT is '投资活动现金流出小计';
comment on column MBT_630_RPT_BAK.C_NET_CASH_FLOWS_INVESTING_ACT is '投资活动产生的现金流量净额';
comment on column MBT_630_RPT_BAK.C_CASH_RECEIVED_FROM_INVESTORS is '吸收投资所到的现金';
comment on column MBT_630_RPT_BAK.C_CASH_FROM_BORROWINGS is '借款所收到的现金';
comment on column MBT_630_RPT_BAK.C_OTHER_CASH_REC_REL_FIN_ACT is '收到的其他与筹资活动有关现金';
comment on column MBT_630_RPT_BAK.C_TOTAL_CASH_INF_FINANCING_ACT is '筹资活动现金流入小计';
comment on column MBT_630_RPT_BAK.C_CASH_REPAYMENTS_FOR_DEBTS is '偿还债务所支付的现金';
comment on column MBT_630_RPT_BAK.C_CASH_PAYMENTS_D_D_PRO_I_EXP is '分配股利、润或偿付息所支的现金';
comment on column MBT_630_RPT_BAK.C_CASH_PAYMENTS_REL_O_FIN_AC is '支付的其他与筹资活动有关现金';
comment on column MBT_630_RPT_BAK.C_TOTAL_CASH_OUTFLOWS_FIN_AC is '筹资活动现金流出小计';
comment on column MBT_630_RPT_BAK.C_NET_CASH_FLOWS_FINANCING_AC is '筹集活动产生的现金流量净额';
comment on column MBT_630_RPT_BAK.C_EFFECT_EX_RATE_CHANGES_CASH is '汇率变动对现金的影响';
comment on column MBT_630_RPT_BAK.C_NET_INC_CASH_CASH_EQUIVALENT is '现金及现金等价物净增加额';
comment on column MBT_630_RPT_BAK.C_NET_PROFIT is '净利润';
comment on column MBT_630_RPT_BAK.C_PROVISION_FOR_ASSETS is '计提的资产减值准备';
comment on column MBT_630_RPT_BAK.C_DEPRECIATION_FIXED_ASSETS is '固定资产拆旧';
comment on column MBT_630_RPT_BAK.C_AMORTISATION_INTANGIBLE_ASS is '无形资产摊销';
comment on column MBT_630_RPT_BAK.C_LONG_TERM_DEFERRED_EXP_AMOR is '长期待摊费用销';
comment on column MBT_630_RPT_BAK.C_DECREASE_DEFFERED_EXPENSES is '待摊费用减少';
comment on column MBT_630_RPT_BAK.C_ADDITION_ACCUED_EXPENSE is '预提费用增加';
comment on column MBT_630_RPT_BAK.C_LOSSES_D_F_ASS_I_ASS_OLT_ASS is '处置固定资产无形和其他长期的损失';
comment on column MBT_630_RPT_BAK.C_LOSSES_SCRAPPING_FIXED_ASS is '固定资产报废损失';
comment on column MBT_630_RPT_BAK.C_FINANCE_EXPENSE is '财务费用';
comment on column MBT_630_RPT_BAK.C_LOSSES_ARSING_INVESTMENT is '投资损失';
comment on column MBT_630_RPT_BAK.C_DEFERRED_TAX_CREDIT is '递延税款贷项';
comment on column MBT_630_RPT_BAK.C_DECREASE_IN_INVENTORIES is '存货的减少';
comment on column MBT_630_RPT_BAK.C_DECREASE_OPERATING_RECEIVABL is '经营性应收项目的减少';
comment on column MBT_630_RPT_BAK.C_INCREASE_OPERATING_RECEIVABL is '经营性应付项目的增加';
comment on column MBT_630_RPT_BAK.C_OTHERS is '（净利润调节为经营活动现金流量科目下）其他 ';
comment on column MBT_630_RPT_BAK.C_NET_CASH_FLOWS_OPERA_ACT_MI is '经营活动产生的现金流量净额';
comment on column MBT_630_RPT_BAK.C_DEBTS_TRANSFER_TO_CAPITAL is '债务转为资本';
comment on column MBT_630_RPT_BAK.C_ONE_YEAR_DUE_CONVERTIBLE_BON is '一年内到期的可转换公司债券';
comment on column MBT_630_RPT_BAK.C_FINANCING_RENT_THE_FIXED_ASS is '融资租入固定产';
comment on column MBT_630_RPT_BAK.C_NON_CASH_OTHERS is '（不涉及现金收支的投资和筹活动科目下）其他';
comment on column MBT_630_RPT_BAK.C_CASH_AT_THE_END_OF_PERIOD is '现金的期末余额';
comment on column MBT_630_RPT_BAK.C_CASH_AT_THE_BEGINNING_PERIOD is '现金的期初余额';
comment on column MBT_630_RPT_BAK.C_CASH_EQUIVALENTS_END_PERIOD is '现金等价物的期末余额';
comment on column MBT_630_RPT_BAK.C_CASH_RQUIVALENTS_BEGIN_PERIO is '现金等价物的期初余额';
comment on column MBT_630_RPT_BAK.C_NET_INCREASE_CASH_CASH_EQU_M is '现金及现等价物净增加额';
comment on column MBT_630_RPT_BAK.D_CASH_REC_SAL_GOO_REN_SERVICE is '销售商品和提供劳务收到的现金';
comment on column MBT_630_RPT_BAK.D_TAX_REFUNDS is '收到的税费返还';
comment on column MBT_630_RPT_BAK.D_OTHER_CASH_REC_REL_OPERA_ACT is '收到的其他与经营活动有关现金';
comment on column MBT_630_RPT_BAK.D_TOTAL_CASH_INFLOWS_OPERAT_AC is '经营活动现金流入小计';
comment on column MBT_630_RPT_BAK.D_CASH_PAID_FOR_GOODS_SERVICES is '购买商品、接受劳务支付的现金';
comment on column MBT_630_RPT_BAK.D_CASH_PAID_BEHALF_OF_EMPLOYEE is '支付给职工以及为支付的现金';
comment on column MBT_630_RPT_BAK.D_PAYMENTS_OF_ALL_TYPES_TAXES is '支付的各项税费支付的各项税费';
comment on column MBT_630_RPT_BAK.D_OTHER_CASH_PAYMENTS_OPERA_AC is '支付其他与经营活动有关的现金';
comment on column MBT_630_RPT_BAK.D_TOTAL_CASH_OUTFLOWS_OPERA_AC is '经营活动现金流出小计';
comment on column MBT_630_RPT_BAK.D_NET_CASH_FLOWS_OPERATING_ACT is '经营活动产生的现金流量净额';
comment on column MBT_630_RPT_BAK.D_CASH_REC_RETURN_INVESTMENT is '收回投资所收到的现金';
comment on column MBT_630_RPT_BAK.D_CASH_REC_ONVESTMENTS is '取得投资收益所到的现金';
comment on column MBT_630_RPT_BAK.D_NET_CASH_R_DFASS_IASS_OLTASS is '处置固定资产无形资产和其他长期所收回的现金净额';
comment on column MBT_630_RPT_BAK.D_NET_CASH_INF_DIS_SUB_O_B_ENT is '处置子公司及其他营业单位收到的现金净额';
comment on column MBT_630_RPT_BAK.D_CASH_REC_REL_OTHER_INVEST_AC is '收到的其他与投资活动有关现金';
comment on column MBT_630_RPT_BAK.D_TOTAL_CASH_INFLOWS_INVEST_AC is '投资活动现金流入小计';
comment on column MBT_630_RPT_BAK.D_CASH_PAID_ACQ_FASS_IASS_ASS is '购建固定资产无形和其他长期所支付的现金';
comment on column MBT_630_RPT_BAK.D_CASH_PAYMENTS_INVESTMENTS is '投资所支付的现金投资所支付的现金';
comment on column MBT_630_RPT_BAK.D_NET_CASH_OUTF_PRO_SUB_OBUNIT is '取得子公司及其他营业单位支付的现金净额';
comment on column MBT_630_RPT_BAK.D_CASH_PAYMENTS_REL_O_I_ACT is '支付的其他与投资活动有关现金';
comment on column MBT_630_RPT_BAK.D_SUB_TOTAL_CASH_OUTFLOWS is '投资活动现金流出小计';
comment on column MBT_630_RPT_BAK.D_NET_CASH_FLOWS_INVEST_ACT is '投资活动产生的现金流量净额';
comment on column MBT_630_RPT_BAK.D_CASH_RECEIVED_INVESTORS is '吸收投资收到的现金';
comment on column MBT_630_RPT_BAK.D_CASH_FROM_BORROWINGS is '取得借款收到的现金';
comment on column MBT_630_RPT_BAK.D_OTHER_CASH_REC_REL_FINA_ACT is '收到的其他与筹资活动有关现金';
comment on column MBT_630_RPT_BAK.D_TOTAL_CASH_INFLOWS_FINA_ACT is '筹资活动现金流入小计';
comment on column MBT_630_RPT_BAK.D_CASH_REPAYMENTS_FOR_DEBTS is '偿还债务所支付的现金';
comment on column MBT_630_RPT_BAK.D_CASH_PAYMENTS_D_DI_P_INT_EXP is '分配股利、润或偿付息所支的现金';
comment on column MBT_630_RPT_BAK.D_CASH_PAYMENTS_REL_O_F_ACT is '支付的其他与筹资活动有关现金';
comment on column MBT_630_RPT_BAK.D_TOTAL_CASH_OUTFLOWS_FINA_ACT is '筹资活动现金流出小计';
comment on column MBT_630_RPT_BAK.D_NET_CASH_FLOWS_FINANCING_ACT is '筹集活动产生的现金流量净额';
comment on column MBT_630_RPT_BAK.D_EFFECT_EXC_RATE_CHANGES_CASH is '汇率变动对现金的影响';
comment on column MBT_630_RPT_BAK.D_NET_INC_CASH_CASH_EQUIVALENT is '现金及现金等价物净增加额';
comment on column MBT_630_RPT_BAK.D_INITIAL_CASH_CASH_EQU_BALANC is '期初现金及等价物余额';
comment on column MBT_630_RPT_BAK.D_THE_FINAL_CASH_EQU_BALANCE is '期末现金及等价物余额';
comment on column MBT_630_RPT_BAK.D_NET_PROFIT is '净利润';
comment on column MBT_630_RPT_BAK.D_PROVISION_ASSET_IMPAIRMENT is '资产减值准备';
comment on column MBT_630_RPT_BAK.D_DEPRECIATION_FIXED_ASSETS is '固定资产折旧、油气资产折耗、生产性生物资产折旧';
comment on column MBT_630_RPT_BAK.D_AMORTISATION_INTANGIBLE_ASS is '无形资产摊销';
comment on column MBT_630_RPT_BAK.D_AMORTISATION_LT_DEFFERED_EXP is '长期待摊费用销';
comment on column MBT_630_RPT_BAK.D_DECREASE_DEFFERED_EXPENSES is '待摊费用减少';
comment on column MBT_630_RPT_BAK.D_ADDITION_OF_ACCUED_EXPENSE is '预提费用增加';
comment on column MBT_630_RPT_BAK.D_LOSSES_DISP_FASS_IASS_OLTASS is '处置固定资产无形和其他长期的损失';
comment on column MBT_630_RPT_BAK.D_LOSSES_SCRAPPING_FIXED_ASS is '固定资产报废损失';
comment on column MBT_630_RPT_BAK.D_PROFIT_LOSS_CHANGES_FAIR_VAL is '公允价值变动损失';
comment on column MBT_630_RPT_BAK.D_FINANCE_EXPENSE is '财务费用';
comment on column MBT_630_RPT_BAK.D_LOSSES_ARSING_INVESTMENT is '投资损失';
comment on column MBT_630_RPT_BAK.D_DEFERRED_INCOME_TAX_ASSETS is '递延所得税资产减少';
comment on column MBT_630_RPT_BAK.D_DEFERRED_INCOME_TAX_LIABILIT is '递延所得税负债增加';
comment on column MBT_630_RPT_BAK.D_DECREASE_IN_INVENTORIES is '存货的减少';
comment on column MBT_630_RPT_BAK.D_DECREASE_OPERATING_RECEIVABL is '经营性应收项目的减少';
comment on column MBT_630_RPT_BAK.D_INCREASE_OPERATING_RECEIVABL is '经营性应付项目的增加';
comment on column MBT_630_RPT_BAK.D_OTHERS is '（净利润调节为经营活动现金流量科目下）其他';
comment on column MBT_630_RPT_BAK.D_NET_CASH_FLOWS_OPERAT_ACT_MI is '经营活动产生的现金流量净额';
comment on column MBT_630_RPT_BAK.D_DEBTS_TRANSFER_TO_CAPITAL is '债务转为资本';
comment on column MBT_630_RPT_BAK.D_ONE_YEAR_DUE_CONVER_BONDS is '一年内到期的可转换公司债券';
comment on column MBT_630_RPT_BAK.D_FINANCING_RENT_FIXED_ASSET is '融资租入固定产';
comment on column MBT_630_RPT_BAK.D_NON_CASH_OTHERS is '（不涉及现金收支的投资和筹活动科目下）其他';
comment on column MBT_630_RPT_BAK.D_CASH_AT_THE_END_OF_PERIOD is '现金的期末余额';
comment on column MBT_630_RPT_BAK.D_CASH_AT_THE_BEGINNING_PERIOD is '现金的期初余额';
comment on column MBT_630_RPT_BAK.D_CASH_EQUIVALENTS_AT_THE_PERI is '现金等价物的期末余额';
comment on column MBT_630_RPT_BAK.D_CASH_RQUIVALENTS_BEGIN_PERIO is '现金等价物的期初余额';
comment on column MBT_630_RPT_BAK.D_NET_INCREASE_CASH_EQUIVAL_MI is '现金及现等价物净增加额';
comment on column MBT_630_RPT_BAK.REMARKS is '备注';
comment on column MBT_630_RPT_BAK.CHECK_FLAG is '校验标识';
comment on column MBT_630_RPT_BAK.CHECK_DESC is '校验结果';
comment on column MBT_630_RPT_BAK.CHECK_ERR_TYPE is '校验失败类型';
comment on column MBT_630_RPT_BAK.NEXT_ACTION is '下一动作';
comment on column MBT_630_RPT_BAK.DATA_STATUS is '数据状态';
comment on column MBT_630_RPT_BAK.DATA_FLAG is '数据是否已删除';
comment on column MBT_630_RPT_BAK.DATA_SOURCE is '数据来源';
comment on column MBT_630_RPT_BAK.DATA_VERSION is '数据版本号';
comment on column MBT_630_RPT_BAK.DATA_REJ_DESC is '数据审核拒绝描述';
comment on column MBT_630_RPT_BAK.DATA_DEL_DESC is '数据删除描述';
comment on column MBT_630_RPT_BAK.DATA_CRT_USER is '数据创建/导入用户';
comment on column MBT_630_RPT_BAK.DATA_CRT_DATE is '数据创建/导入日期';
comment on column MBT_630_RPT_BAK.DATA_CRT_TIME is '数据创建/导入时间';
comment on column MBT_630_RPT_BAK.DATA_CHG_USER is '数据修改/删除用户';
comment on column MBT_630_RPT_BAK.DATA_CHG_DATE is '数据修改/删除日期';
comment on column MBT_630_RPT_BAK.DATA_CHG_TIME is '数据修改/删除时间';
comment on column MBT_630_RPT_BAK.DATA_APV_USER is '数据审核/拒绝用户';
comment on column MBT_630_RPT_BAK.DATA_APV_DATE is '数据审核/拒绝日期';
comment on column MBT_630_RPT_BAK.DATA_APV_TIME is '数据审核/拒绝时间';
comment on column MBT_630_RPT_BAK.RSV1 is '扩展字段1';
comment on column MBT_630_RPT_BAK.RSV2 is '扩展字段2';
comment on column MBT_630_RPT_BAK.RSV3 is '扩展字段3';
comment on column MBT_630_RPT_BAK.RSV4 is '扩展字段4';
comment on column MBT_630_RPT_BAK.RSV5 is '扩展字段5';
comment on column MBT_630_RPT_BAK.ODS_DATA_ID is 'ODS数据ID';
comment on column MBT_630_RPT_BAK.RPT_DATE is '上报数据日期';
comment on column MBT_630_RPT_BAK.RPT_TIME is '上报数据时间';
comment on column MBT_630_RPT_BAK.C_ONE_YEAR_DUE_CONVERTIBLE_BO is '一年内到期的可转换公司债券';
comment on column MBT_630_RPT_BAK.IS_RPT is '是否上报';
comment on column MBT_630_RPT_BAK.FB_STATUS is '反馈状态';
comment on column MBT_630_RPT_BAK.RPT_FILE_NAME is '上报文件名';
comment on column MBT_630_RPT_BAK.FB_MSG is '反馈信息';


create table MBT_640_RPT_BAK
(
    DATA_ID                        CHAR(32) not null primary key,
    DATA_DATE                      CHAR(8),
    CORP_ID                        VARCHAR2(14),
    ORG_ID                         VARCHAR2(14),
    GROUP_ID                       VARCHAR2(14),
    INQ_ORG_ID                     CHAR(24),
    INQ_GROUP_ID                   CHAR(24),
    B_INF_REC_TYPE                 CHAR(3),
    B_ENT_NAME                     NVARCHAR2(80),
    B_ENT_CERT_TYPE                VARCHAR2(2),
    B_ENT_CERT_NUM                 VARCHAR2(40),
    B_RPT_DATE                     CHAR(8),
    B_SHEET_YEAR                   CHAR(4),
    B_SHEET_TYPE                   VARCHAR2(2),
    B_SHEET_TYPE_DIVIDE            VARCHAR2(2),
    B_AUDIT_FIRM_NAME              NVARCHAR2(80),
    B_AUDITOR_NAME                 NVARCHAR2(30),
    B_AUDIT_TIME                   CHAR(8),
    B_CIMOC                        VARCHAR2(14),
    B_RPT_DATE_CODE                CHAR(2),
    C_CURRENCY_FUNDS               NUMBER(17, 2),
    C_SHORT_TERM_INVESTMENTS       NUMBER(17, 2),
    C_AMOUNT_OF_FINANCIAL_RETURN   NUMBER(17, 2),
    C_NOTES_RECEIVABLE             NUMBER(17, 2),
    C_ACCOUNTS_RECEIVABLE          NUMBER(17, 2),
    C_PREPAYMENTS                  NUMBER(17, 2),
    C_OTHER_RECEIVABLES            NUMBER(17, 2),
    C_INVENTORIES                  NUMBER(17, 2),
    C_OTHER_CURRENT_ASSETS         NUMBER(17, 2),
    C_TOTAL_CURRENT_ASSETS         NUMBER(17, 2),
    C_LONG_TERM_INVESTMENT         NUMBER(17, 2),
    C_FIXED_ASSETS                 NUMBER(17, 2),
    C_ORIGINAL_COST_FIXED_ASSET    NUMBER(17, 2),
    C_FIXED_ASSET_ACC_DEPRECIATION NUMBER(17, 2),
    C_CONSTRUCTION_IN_PROCESS      NUMBER(17, 2),
    C_INTANGIBLE_ASSETS            NUMBER(17, 2),
    C_ORIGINAL_PRICE_INTAN_ASSETS  NUMBER(17, 2),
    C_ACCUMULATED_AMORTIZATION     NUMBER(17, 2),
    C_ASSETS_PROCESSED_PENDING_PRO NUMBER(17, 2),
    C_TOTAL_NON_CURRENT_ASSETS     NUMBER(17, 2),
    C_TOTAL_ASSETS                 NUMBER(17, 2),
    C_SHORT_TERM_BORROWINGS        NUMBER(17, 2),
    C_TAX_PAYABLE                  NUMBER(17, 2),
    C_TREASURY_PAYABLE             NUMBER(17, 2),
    C_PAYABLE_FINANCIAL_SPECIAL_AC NUMBER(17, 2),
    C_EMPLOYEE_BENEFITS_PAYABLE    NUMBER(17, 2),
    C_NOTES_PAYABLE                NUMBER(17, 2),
    C_ACCOUNTS_PAYABLE             NUMBER(17, 2),
    C_RECEIPTS_INADVANCE           NUMBER(17, 2),
    C_OTHER_PAYABLES               NUMBER(17, 2),
    C_OTHER_CURRENT_LIABILITIES    NUMBER(17, 2),
    C_TOTAL_CURRENT_LIABILITIES    NUMBER(17, 2),
    C_LONG_TERM_BORROWINGS         NUMBER(17, 2),
    C_LONG_TERM_PAYABLES           NUMBER(17, 2),
    C_TOTAL_NON_CURRENT_LIABILITIE NUMBER(17, 2),
    C_TOTAL_LIABILITIES            NUMBER(17, 2),
    C_ENTERPRISE_FUND              NUMBER(17, 2),
    C_NON_CURRENT_ASSETS_FUND      NUMBER(17, 2),
    C_SPECIAL_PURPOSE_FUNDS        NUMBER(17, 2),
    C_FINANCIAL_AID_CARRIED_OVER   NUMBER(17, 2),
    C_FINANCIAL_AID_BALANCE        NUMBER(17, 2),
    C_NON_FINANCIAL_AID_CARR_OVER  NUMBER(17, 2),
    C_NON_FINANCIAL_AID_BALANCE    NUMBER(17, 2),
    C_UNDERTAKINGS_BALANCE         NUMBER(17, 2),
    C_OPERATING_BALANCE            NUMBER(17, 2),
    C_TOTAL_NET_ASSETS             NUMBER(17, 2),
    C_TOTAL_LIABILITIES_NET_ASSETS NUMBER(17, 2),
    D_DATA_DESC                    NVARCHAR2(256),
    REMARKS                        NVARCHAR2(512),
    CHECK_FLAG                     CHAR,
    CHECK_DESC                     VARCHAR2(512),
    CHECK_ERR_TYPE                 CHAR,
    NEXT_ACTION                    CHAR(2),
    DATA_STATUS                    CHAR(2),
    DATA_FLAG                      CHAR,
    DATA_SOURCE                    CHAR,
    DATA_VERSION                   NUMBER(8),
    DATA_REJ_DESC                  NVARCHAR2(128),
    DATA_DEL_DESC                  NVARCHAR2(128),
    DATA_CRT_USER                  VARCHAR2(20),
    DATA_CRT_DATE                  CHAR(8),
    DATA_CRT_TIME                  CHAR(14),
    DATA_CHG_USER                  VARCHAR2(20),
    DATA_CHG_DATE                  CHAR(8),
    DATA_CHG_TIME                  CHAR(14),
    DATA_APV_USER                  VARCHAR2(20),
    DATA_APV_DATE                  CHAR(8),
    DATA_APV_TIME                  CHAR(14),
    RSV1                           VARCHAR2(180),
    RSV2                           VARCHAR2(180),
    RSV3                           VARCHAR2(180),
    RSV4                           VARCHAR2(180),
    RSV5                           VARCHAR2(180),
    ODS_DATA_ID                    CHAR(32),
    RPT_DATE                       CHAR(8),
    RPT_TIME                       CHAR(14),
    IS_RPT                         VARCHAR2(64),
    ROW_NUM                        NUMBER,
    FB_STATUS                      CHAR(2),
    RPT_FILE_NAME                  VARCHAR2(512),
    FB_MSG                         VARCHAR2(1024),
    B_CUST_NO                      NVARCHAR2(64)
);
comment on column MBT_640_RPT_BAK.DATA_ID is '主键';
comment on column MBT_640_RPT_BAK.DATA_DATE is '数据日期';
comment on column MBT_640_RPT_BAK.CORP_ID is '法人机构号';
comment on column MBT_640_RPT_BAK.ORG_ID is '分行机构号';
comment on column MBT_640_RPT_BAK.GROUP_ID is '部门编号';
comment on column MBT_640_RPT_BAK.INQ_ORG_ID is '查询机构号';
comment on column MBT_640_RPT_BAK.INQ_GROUP_ID is '查询组号';
comment on column MBT_640_RPT_BAK.B_INF_REC_TYPE is '信息记录类型';
comment on column MBT_640_RPT_BAK.B_ENT_NAME is '企业名称';
comment on column MBT_640_RPT_BAK.B_ENT_CERT_TYPE is '企业身份标识类型';
comment on column MBT_640_RPT_BAK.B_ENT_CERT_NUM is '企业身份标识号码';
comment on column MBT_640_RPT_BAK.B_RPT_DATE is '信息报告日期';
comment on column MBT_640_RPT_BAK.B_SHEET_YEAR is '报表年份';
comment on column MBT_640_RPT_BAK.B_SHEET_TYPE is '报表类型';
comment on column MBT_640_RPT_BAK.B_SHEET_TYPE_DIVIDE is '报表类型细分';
comment on column MBT_640_RPT_BAK.B_AUDIT_FIRM_NAME is '审计事务所名称';
comment on column MBT_640_RPT_BAK.B_AUDITOR_NAME is '审计人员名称';
comment on column MBT_640_RPT_BAK.B_AUDIT_TIME is '审计时间';
comment on column MBT_640_RPT_BAK.B_CIMOC is '客户资料维护机构代码';
comment on column MBT_640_RPT_BAK.B_RPT_DATE_CODE is '报告时点说明代码';
comment on column MBT_640_RPT_BAK.C_CURRENCY_FUNDS is '货币资金';
comment on column MBT_640_RPT_BAK.C_SHORT_TERM_INVESTMENTS is '短期投资';
comment on column MBT_640_RPT_BAK.C_AMOUNT_OF_FINANCIAL_RETURN is '财政应返还额度';
comment on column MBT_640_RPT_BAK.C_NOTES_RECEIVABLE is '应收票据';
comment on column MBT_640_RPT_BAK.C_ACCOUNTS_RECEIVABLE is '应收账款';
comment on column MBT_640_RPT_BAK.C_PREPAYMENTS is '预付账款';
comment on column MBT_640_RPT_BAK.C_OTHER_RECEIVABLES is '其他应收款';
comment on column MBT_640_RPT_BAK.C_INVENTORIES is '存货';
comment on column MBT_640_RPT_BAK.C_OTHER_CURRENT_ASSETS is '其他流动资产';
comment on column MBT_640_RPT_BAK.C_TOTAL_CURRENT_ASSETS is '流动资产合计';
comment on column MBT_640_RPT_BAK.C_LONG_TERM_INVESTMENT is '长期投资';
comment on column MBT_640_RPT_BAK.C_FIXED_ASSETS is '固定资产';
comment on column MBT_640_RPT_BAK.C_ORIGINAL_COST_FIXED_ASSET is '固定资产原价';
comment on column MBT_640_RPT_BAK.C_FIXED_ASSET_ACC_DEPRECIATION is '累计折旧';
comment on column MBT_640_RPT_BAK.C_CONSTRUCTION_IN_PROCESS is '在建工程';
comment on column MBT_640_RPT_BAK.C_INTANGIBLE_ASSETS is '无形资产';
comment on column MBT_640_RPT_BAK.C_ORIGINAL_PRICE_INTAN_ASSETS is '无形资产原价';
comment on column MBT_640_RPT_BAK.C_ACCUMULATED_AMORTIZATION is '累计摊销';
comment on column MBT_640_RPT_BAK.C_ASSETS_PROCESSED_PENDING_PRO is '待处置资产损溢';
comment on column MBT_640_RPT_BAK.C_TOTAL_NON_CURRENT_ASSETS is '非流动资产合计';
comment on column MBT_640_RPT_BAK.C_TOTAL_ASSETS is '资产总计';
comment on column MBT_640_RPT_BAK.C_SHORT_TERM_BORROWINGS is '短期借款';
comment on column MBT_640_RPT_BAK.C_TAX_PAYABLE is '应缴税费';
comment on column MBT_640_RPT_BAK.C_TREASURY_PAYABLE is '应缴国库款';
comment on column MBT_640_RPT_BAK.C_PAYABLE_FINANCIAL_SPECIAL_AC is '应缴财政专户款';
comment on column MBT_640_RPT_BAK.C_EMPLOYEE_BENEFITS_PAYABLE is '应付职工薪酬';
comment on column MBT_640_RPT_BAK.C_NOTES_PAYABLE is '应付票据';
comment on column MBT_640_RPT_BAK.C_ACCOUNTS_PAYABLE is '应付账款';
comment on column MBT_640_RPT_BAK.C_RECEIPTS_INADVANCE is '预收账款';
comment on column MBT_640_RPT_BAK.C_OTHER_PAYABLES is '其他应付款';
comment on column MBT_640_RPT_BAK.C_OTHER_CURRENT_LIABILITIES is '其他流动负债';
comment on column MBT_640_RPT_BAK.C_TOTAL_CURRENT_LIABILITIES is '流动负债合计';
comment on column MBT_640_RPT_BAK.C_LONG_TERM_BORROWINGS is '长期借款';
comment on column MBT_640_RPT_BAK.C_LONG_TERM_PAYABLES is '长期应付款';
comment on column MBT_640_RPT_BAK.C_TOTAL_NON_CURRENT_LIABILITIE is '非流动负债合计';
comment on column MBT_640_RPT_BAK.C_TOTAL_LIABILITIES is '负债合计';
comment on column MBT_640_RPT_BAK.C_ENTERPRISE_FUND is '事业基金';
comment on column MBT_640_RPT_BAK.C_NON_CURRENT_ASSETS_FUND is '非流动资产基金';
comment on column MBT_640_RPT_BAK.C_SPECIAL_PURPOSE_FUNDS is '专用基金';
comment on column MBT_640_RPT_BAK.C_FINANCIAL_AID_CARRIED_OVER is '财政补助结转';
comment on column MBT_640_RPT_BAK.C_FINANCIAL_AID_BALANCE is '财政补助结余';
comment on column MBT_640_RPT_BAK.C_NON_FINANCIAL_AID_CARR_OVER is '非财政补助结转';
comment on column MBT_640_RPT_BAK.C_NON_FINANCIAL_AID_BALANCE is '非财政补助结余';
comment on column MBT_640_RPT_BAK.C_UNDERTAKINGS_BALANCE is '事业结余';
comment on column MBT_640_RPT_BAK.C_OPERATING_BALANCE is '经营结余';
comment on column MBT_640_RPT_BAK.C_TOTAL_NET_ASSETS is '净资产合计';
comment on column MBT_640_RPT_BAK.C_TOTAL_LIABILITIES_NET_ASSETS is '负债和净资产总计';
comment on column MBT_640_RPT_BAK.D_DATA_DESC is '记录描述';
comment on column MBT_640_RPT_BAK.REMARKS is '备注';
comment on column MBT_640_RPT_BAK.CHECK_FLAG is '校验标识';
comment on column MBT_640_RPT_BAK.CHECK_DESC is '校验结果';
comment on column MBT_640_RPT_BAK.CHECK_ERR_TYPE is '校验失败类型';
comment on column MBT_640_RPT_BAK.NEXT_ACTION is '下一动作';
comment on column MBT_640_RPT_BAK.DATA_STATUS is '数据状态';
comment on column MBT_640_RPT_BAK.DATA_FLAG is '数据是否已删除';
comment on column MBT_640_RPT_BAK.DATA_SOURCE is '数据来源';
comment on column MBT_640_RPT_BAK.DATA_VERSION is '数据版本号';
comment on column MBT_640_RPT_BAK.DATA_REJ_DESC is '数据审核拒绝描述';
comment on column MBT_640_RPT_BAK.DATA_DEL_DESC is '数据删除描述';
comment on column MBT_640_RPT_BAK.DATA_CRT_USER is '数据创建/导入用户';
comment on column MBT_640_RPT_BAK.DATA_CRT_DATE is '数据创建/导入日期';
comment on column MBT_640_RPT_BAK.DATA_CRT_TIME is '数据创建/导入时间';
comment on column MBT_640_RPT_BAK.DATA_CHG_USER is '数据修改/删除用户';
comment on column MBT_640_RPT_BAK.DATA_CHG_DATE is '数据修改/删除日期';
comment on column MBT_640_RPT_BAK.DATA_CHG_TIME is '数据修改/删除时间';
comment on column MBT_640_RPT_BAK.DATA_APV_USER is '数据审核/拒绝用户';
comment on column MBT_640_RPT_BAK.DATA_APV_DATE is '数据审核/拒绝日期';
comment on column MBT_640_RPT_BAK.DATA_APV_TIME is '数据审核/拒绝时间';
comment on column MBT_640_RPT_BAK.RSV1 is '扩展字段1';
comment on column MBT_640_RPT_BAK.RSV2 is '扩展字段2';
comment on column MBT_640_RPT_BAK.RSV3 is '扩展字段3';
comment on column MBT_640_RPT_BAK.RSV4 is '扩展字段4';
comment on column MBT_640_RPT_BAK.RSV5 is '扩展字段5';
comment on column MBT_640_RPT_BAK.ODS_DATA_ID is 'ODS数据ID';
comment on column MBT_640_RPT_BAK.RPT_DATE is '上报数据日期';
comment on column MBT_640_RPT_BAK.RPT_TIME is '上报数据时间';
comment on column MBT_640_RPT_BAK.IS_RPT is '是否上报';
comment on column MBT_640_RPT_BAK.FB_STATUS is '反馈状态';
comment on column MBT_640_RPT_BAK.RPT_FILE_NAME is '上报文件名';
comment on column MBT_640_RPT_BAK.FB_MSG is '反馈信息';


create table MBT_650_RPT_BAK
(
    DATA_ID                        CHAR(32) not null primary key,
    DATA_DATE                      CHAR(8),
    CORP_ID                        VARCHAR2(14),
    ORG_ID                         VARCHAR2(14),
    GROUP_ID                       VARCHAR2(14),
    INQ_ORG_ID                     CHAR(24),
    INQ_GROUP_ID                   CHAR(24),
    B_INF_REC_TYPE                 CHAR(3),
    B_ENT_NAME                     NVARCHAR2(80),
    B_ENT_CERT_TYPE                VARCHAR2(2),
    B_ENT_CERT_NUM                 VARCHAR2(40),
    B_RPT_DATE                     CHAR(8),
    B_SHEET_YEAR                   CHAR(4),
    B_SHEET_TYPE                   VARCHAR2(2),
    B_SHEET_TYPE_DIVIDE            VARCHAR2(2),
    B_AUDIT_FIRM_NAME              NVARCHAR2(80),
    B_AUDITOR_NAME                 NVARCHAR2(30),
    B_AUDIT_TIME                   CHAR(8),
    B_CIMOC                        VARCHAR2(14),
    B_RPT_DATE_CODE                CHAR(2),
    C_CURRENT_FINAN_SUB_CAR_OVER_B NUMBER(17, 2),
    C_FINANCIAL_SUBSIDY_REVENUE    NUMBER(17, 2),
    C_UNDERTAKINGS_EXP_FIN_SUB_EXP NUMBER(17, 2),
    C_CURRENT_UNDERTAK_CAR_OVER_B  NUMBER(17, 2),
    C_UNDERTAKINGS_CLASS_REVENUE   NUMBER(17, 2),
    C_UNDERTAKINGS_REVENUE         NUMBER(17, 2),
    C_SUPERIOR_SUBSIDY_REVENUE     NUMBER(17, 2),
    C_REVENUE_TURNED_OVER_SUB_UNIT NUMBER(17, 2),
    C_OTHER_REVENUE                NUMBER(17, 2),
    C_DONATION_INCOME              NUMBER(17, 2),
    C_UNDERTAKINGS_CLASS_EXPENDIT  NUMBER(17, 2),
    C_UNDERTAKINGS_NON_FIN_SUB_EXP NUMBER(17, 2),
    C_PAYMENT_THE_HIGHER_AUTHORITY NUMBER(17, 2),
    C_GRANT_AUXILIARY_ORGANIZATION NUMBER(17, 2),
    C_OTHER_EXPENDITURE            NUMBER(17, 2),
    C_CURRENT_OPERATING_BALANCE    NUMBER(17, 2),
    C_OPERATING_REVENUE            NUMBER(17, 2),
    C_OPERATING_EXPENDITURE        NUMBER(17, 2),
    C_OPERATING_BALANCE_P_YO_LOSS  NUMBER(17, 2),
    C_NON_FINA_SUB_CAR_O_BAL_TYEAR NUMBER(17, 2),
    C_NON_FINANCIAL_AID_CARRIED_O  NUMBER(17, 2),
    C_NON_FINANCIAL_AID_BAL_TYEAR  NUMBER(17, 2),
    C_ENTERPRISE_INCOME_TAX_PAYABL NUMBER(17, 2),
    C_SPECIAL_FUNDS_TO_EXTRACT     NUMBER(17, 2),
    C_PUBLIC_FUND_TURNED_INTO      NUMBER(17, 2),
    D_DATA_DESC                    NVARCHAR2(256),
    REMARKS                        NVARCHAR2(512),
    CHECK_FLAG                     CHAR,
    CHECK_DESC                     VARCHAR2(512),
    CHECK_ERR_TYPE                 CHAR,
    NEXT_ACTION                    CHAR(2),
    DATA_STATUS                    CHAR(2),
    DATA_FLAG                      CHAR,
    DATA_SOURCE                    CHAR,
    DATA_VERSION                   NUMBER(8),
    DATA_REJ_DESC                  NVARCHAR2(128),
    DATA_DEL_DESC                  NVARCHAR2(128),
    DATA_CRT_USER                  VARCHAR2(20),
    DATA_CRT_DATE                  CHAR(8),
    DATA_CRT_TIME                  CHAR(14),
    DATA_CHG_USER                  VARCHAR2(20),
    DATA_CHG_DATE                  CHAR(8),
    DATA_CHG_TIME                  CHAR(14),
    DATA_APV_USER                  VARCHAR2(20),
    DATA_APV_DATE                  CHAR(8),
    DATA_APV_TIME                  CHAR(14),
    RSV1                           VARCHAR2(180),
    RSV2                           VARCHAR2(180),
    RSV3                           VARCHAR2(180),
    RSV4                           VARCHAR2(180),
    RSV5                           VARCHAR2(180),
    ODS_DATA_ID                    CHAR(32),
    RPT_DATE                       CHAR(8),
    RPT_TIME                       CHAR(14),
    IS_RPT                         VARCHAR2(64),
    ROW_NUM                        NUMBER,
    FB_STATUS                      CHAR(2),
    RPT_FILE_NAME                  VARCHAR2(512),
    FB_MSG                         VARCHAR2(1024),
    B_CUST_NO                      NVARCHAR2(64)
);
comment on column MBT_650_RPT_BAK.DATA_ID is '主键';
comment on column MBT_650_RPT_BAK.DATA_DATE is '数据日期';
comment on column MBT_650_RPT_BAK.CORP_ID is '法人机构号';
comment on column MBT_650_RPT_BAK.ORG_ID is '分行机构号';
comment on column MBT_650_RPT_BAK.GROUP_ID is '部门编号';
comment on column MBT_650_RPT_BAK.INQ_ORG_ID is '查询机构号';
comment on column MBT_650_RPT_BAK.INQ_GROUP_ID is '查询组号';
comment on column MBT_650_RPT_BAK.B_INF_REC_TYPE is '信息记录类型';
comment on column MBT_650_RPT_BAK.B_ENT_NAME is '企业名称';
comment on column MBT_650_RPT_BAK.B_ENT_CERT_TYPE is '企业身份标识类型';
comment on column MBT_650_RPT_BAK.B_ENT_CERT_NUM is '企业身份标识号码';
comment on column MBT_650_RPT_BAK.B_RPT_DATE is '信息报告日期';
comment on column MBT_650_RPT_BAK.B_SHEET_YEAR is '报表年份';
comment on column MBT_650_RPT_BAK.B_SHEET_TYPE is '报表类型';
comment on column MBT_650_RPT_BAK.B_SHEET_TYPE_DIVIDE is '报表类型细分';
comment on column MBT_650_RPT_BAK.B_AUDIT_FIRM_NAME is '审计事务所名称';
comment on column MBT_650_RPT_BAK.B_AUDITOR_NAME is '审计人员名称';
comment on column MBT_650_RPT_BAK.B_AUDIT_TIME is '审计时间';
comment on column MBT_650_RPT_BAK.B_CIMOC is '客户资料维护机构代码';
comment on column MBT_650_RPT_BAK.B_RPT_DATE_CODE is '报告时点说明代码';
comment on column MBT_650_RPT_BAK.C_CURRENT_FINAN_SUB_CAR_OVER_B is '本期财政补助结转余';
comment on column MBT_650_RPT_BAK.C_FINANCIAL_SUBSIDY_REVENUE is '财政补助收入';
comment on column MBT_650_RPT_BAK.C_UNDERTAKINGS_EXP_FIN_SUB_EXP is '事业支出（财政补助）';
comment on column MBT_650_RPT_BAK.C_CURRENT_UNDERTAK_CAR_OVER_B is '本期事业结转余';
comment on column MBT_650_RPT_BAK.C_UNDERTAKINGS_CLASS_REVENUE is '事业类收入';
comment on column MBT_650_RPT_BAK.C_UNDERTAKINGS_REVENUE is '事业收入';
comment on column MBT_650_RPT_BAK.C_SUPERIOR_SUBSIDY_REVENUE is '上级补助收入';
comment on column MBT_650_RPT_BAK.C_REVENUE_TURNED_OVER_SUB_UNIT is '附属单位上缴收入';
comment on column MBT_650_RPT_BAK.C_OTHER_REVENUE is '其他收入';
comment on column MBT_650_RPT_BAK.C_DONATION_INCOME is '（其他收入科目下）捐赠';
comment on column MBT_650_RPT_BAK.C_UNDERTAKINGS_CLASS_EXPENDIT is '事业类支出';
comment on column MBT_650_RPT_BAK.C_UNDERTAKINGS_NON_FIN_SUB_EXP is '事业支出（非财政补助）';
comment on column MBT_650_RPT_BAK.C_PAYMENT_THE_HIGHER_AUTHORITY is '上缴级支出';
comment on column MBT_650_RPT_BAK.C_GRANT_AUXILIARY_ORGANIZATION is '对附属单位补助支出';
comment on column MBT_650_RPT_BAK.C_OTHER_EXPENDITURE is '其他支出';
comment on column MBT_650_RPT_BAK.C_CURRENT_OPERATING_BALANCE is '本期经营结余';
comment on column MBT_650_RPT_BAK.C_OPERATING_REVENUE is '经营收入';
comment on column MBT_650_RPT_BAK.C_OPERATING_EXPENDITURE is '经营支出';
comment on column MBT_650_RPT_BAK.C_OPERATING_BALANCE_P_YO_LOSS is '弥补以前年度亏损后的经营结余';
comment on column MBT_650_RPT_BAK.C_NON_FINA_SUB_CAR_O_BAL_TYEAR is '本年非财政补助结转余';
comment on column MBT_650_RPT_BAK.C_NON_FINANCIAL_AID_CARRIED_O is '非财政补助结转';
comment on column MBT_650_RPT_BAK.C_NON_FINANCIAL_AID_BAL_TYEAR is '本年非财政补助结余';
comment on column MBT_650_RPT_BAK.C_ENTERPRISE_INCOME_TAX_PAYABL is '应缴企业所得税';
comment on column MBT_650_RPT_BAK.C_SPECIAL_FUNDS_TO_EXTRACT is '提取专用基金';
comment on column MBT_650_RPT_BAK.C_PUBLIC_FUND_TURNED_INTO is '转入事业基金';
comment on column MBT_650_RPT_BAK.D_DATA_DESC is '记录描述';
comment on column MBT_650_RPT_BAK.REMARKS is '备注';
comment on column MBT_650_RPT_BAK.CHECK_FLAG is '校验标识';
comment on column MBT_650_RPT_BAK.CHECK_DESC is '校验结果';
comment on column MBT_650_RPT_BAK.CHECK_ERR_TYPE is '校验失败类型';
comment on column MBT_650_RPT_BAK.NEXT_ACTION is '下一动作';
comment on column MBT_650_RPT_BAK.DATA_STATUS is '数据状态';
comment on column MBT_650_RPT_BAK.DATA_FLAG is '数据是否已删除';
comment on column MBT_650_RPT_BAK.DATA_SOURCE is '数据来源';
comment on column MBT_650_RPT_BAK.DATA_VERSION is '数据版本号';
comment on column MBT_650_RPT_BAK.DATA_REJ_DESC is '数据审核拒绝描述';
comment on column MBT_650_RPT_BAK.DATA_DEL_DESC is '数据删除描述';
comment on column MBT_650_RPT_BAK.DATA_CRT_USER is '数据创建/导入用户';
comment on column MBT_650_RPT_BAK.DATA_CRT_DATE is '数据创建/导入日期';
comment on column MBT_650_RPT_BAK.DATA_CRT_TIME is '数据创建/导入时间';
comment on column MBT_650_RPT_BAK.DATA_CHG_USER is '数据修改/删除用户';
comment on column MBT_650_RPT_BAK.DATA_CHG_DATE is '数据修改/删除日期';
comment on column MBT_650_RPT_BAK.DATA_CHG_TIME is '数据修改/删除时间';
comment on column MBT_650_RPT_BAK.DATA_APV_USER is '数据审核/拒绝用户';
comment on column MBT_650_RPT_BAK.DATA_APV_DATE is '数据审核/拒绝日期';
comment on column MBT_650_RPT_BAK.DATA_APV_TIME is '数据审核/拒绝时间';
comment on column MBT_650_RPT_BAK.RSV1 is '扩展字段1';
comment on column MBT_650_RPT_BAK.RSV2 is '扩展字段2';
comment on column MBT_650_RPT_BAK.RSV3 is '扩展字段3';
comment on column MBT_650_RPT_BAK.RSV4 is '扩展字段4';
comment on column MBT_650_RPT_BAK.RSV5 is '扩展字段5';
comment on column MBT_650_RPT_BAK.ODS_DATA_ID is 'ODS数据ID';
comment on column MBT_650_RPT_BAK.RPT_DATE is '上报数据日期';
comment on column MBT_650_RPT_BAK.RPT_TIME is '上报数据时间';
comment on column MBT_650_RPT_BAK.IS_RPT is '是否上报';
comment on column MBT_650_RPT_BAK.FB_STATUS is '反馈状态';
comment on column MBT_650_RPT_BAK.RPT_FILE_NAME is '上报文件名';
comment on column MBT_650_RPT_BAK.FB_MSG is '反馈信息';









