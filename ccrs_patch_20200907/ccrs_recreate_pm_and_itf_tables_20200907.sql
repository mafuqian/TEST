drop table CCRS_PM_CKYEKZ
/

drop table CCRS_PM_DBHT
/

drop table CCRS_PM_DBWXX
/

drop table CCRS_PM_DECDFSE
/

drop table CCRS_PM_DECDYE
/

drop table CCRS_PM_DKFSEKZ
/

drop table CCRS_PM_DKYEKZ
/

drop table CCRS_PM_DWKH
/

drop table CCRS_PM_DYBCDKQD
/

drop table CCRS_PM_GRKH
/

drop table CCRS_PM_JRJGXXBCB
/

drop table CCRS_PM_PPPZDXMRZQK
/

drop table CCRS_PM_PSLDYZCQD
/

drop table CCRS_PM_RZXBH
/

drop table CCRS_PM_SXHT
/

drop table CCRS_PM_TXFSE
/

drop table CCRS_PM_TXYE
/

drop table CCRS_PM_TYCDFSE
/

drop table CCRS_PM_TYCDYE
/

drop table CCRS_PM_WTDKFSE
/

drop table CCRS_PM_WTDKYE
/

drop table CCRS_PM_XDHT
/

drop table CCRS_PM_XYZKL
/

drop table CCRS_PM_YHCDHPKL
/

drop table CCRS_PM_YSZKZYDK
/

drop table CCRS_PM_ZDKSYQK
/

drop table CCRS_PM_ZDXMZJPHJCBFSE
/

drop table CCRS_PM_ZQCX
/

drop table CCRS_PM_ZQCXPZ
/

drop table CCRS_PM_ZQCY
/

drop table CCRS_PM_ZSCQZYDK
/

drop table CCRS_PM_ZXZQZCTDLYFZQK
/

drop table CCRS_ITF_GRKH
/

drop table CCRS_ITF_DWKH
/

drop table CCRS_ITF_CKYEKZ
/

drop table CCRS_ITF_TYCDYE
/

drop table CCRS_ITF_TYCDFSE
/

drop table CCRS_ITF_DECDYE
/

drop table CCRS_ITF_DECDFSE
/

drop table CCRS_ITF_SXHT
/

drop table CCRS_ITF_XDHT
/

drop table CCRS_ITF_DBHT
/

drop table CCRS_ITF_DBWXX
/

drop table CCRS_ITF_DKYEKZ
/

drop table CCRS_ITF_DKFSEKZ
/

drop table CCRS_ITF_TXYE
/

drop table CCRS_ITF_TXFSE
/

drop table CCRS_ITF_RZXBH
/

drop table CCRS_ITF_YHCDHPKL
/

drop table CCRS_ITF_XYZKL
/

drop table CCRS_ITF_WTDKYE
/

drop table CCRS_ITF_WTDKFSE
/

drop table CCRS_ITF_ZQCX
/

drop table CCRS_ITF_ZQCY
/

drop table CCRS_ITF_JRJGXXBCB
/

drop table CCRS_ITF_ZDKSYQK
/

drop table CCRS_ITF_PSLDYZCQD
/

drop table CCRS_ITF_DYBCDKQD
/

drop table CCRS_ITF_ZDXMZJPHJCBFSE
/

drop table CCRS_ITF_PPPZDXMRZQK
/

drop table CCRS_ITF_YSZKZYDK
/

drop table CCRS_ITF_ZSCQZYDK
/

drop table CCRS_ITF_ZQCXPZ
/

drop table CCRS_ITF_ZXZQZCTDLYFZQK
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
    INQ_ORG_ID     VARCHAR2(32),
    INQ_GROUP_ID   VARCHAR2(32),
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
    on CCRS_PM_CKYEKZ (DATA_RPT_DATE, SJRQ_DATE, JRJGBM, CKZHDM)
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
    INQ_ORG_ID     VARCHAR2(32),
    INQ_GROUP_ID   VARCHAR2(32),
    SJRQ_DATE      CHAR(8),
    JRJGBM         CHAR(14),
    DBHTBH         VARCHAR2(120),
    DBHTLX         CHAR(2),
    XDHTBH         VARCHAR2(300),
    DBQSRQ_DATE    CHAR(8),
    DBDQRQ_DATE    CHAR(8),
    BZ             CHAR(3),
    DBZJE_AMT      NUMBER(20, 2),
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
    on CCRS_PM_DBHT (DATA_RPT_DATE, SJRQ_DATE, JRJGBM, DBHTBH, XDHTBH)
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
    INQ_ORG_ID     VARCHAR2(32),
    INQ_GROUP_ID   VARCHAR2(32),
    SJRQ_DATE      CHAR(8),
    JRJGBM         CHAR(14),
    DBHTBH         VARCHAR2(120),
    DKDBFS         VARCHAR2(3),
    YPBH           VARCHAR2(300),
    YPMC           VARCHAR2(300),
    YPLX           VARCHAR2(4),
    DBWJZ_AMT      NUMBER(20, 2),
    BZ             CHAR(3),
    DZYL           NUMBER(13, 5),
    BZRMC          VARCHAR2(300),
    BZRZJLX        CHAR(2),
    BZRZJHM        VARCHAR2(50),
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
    on CCRS_PM_DBWXX (DATA_RPT_DATE, SJRQ_DATE, JRJGBM, DBHTBH, YPBH, BZRZJHM)
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
    INQ_ORG_ID       VARCHAR2(32),
    INQ_GROUP_ID     VARCHAR2(32),
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
    CDFXGM_AMT       NUMBER(20, 2),
    LLSFGD           CHAR(4),
    LLSP             NUMBER(13, 5),
    DECDQXLX         CHAR(2),
    JZLLZL           CHAR(2),
    FXPL             CHAR(2),
    CDFSLX           CHAR(2),
    CDFSJE_AMT       NUMBER(20, 2),
    REMARKS          VARCHAR2(14),
    CHECK_FLAG       CHAR,
    CHECK_DESC       VARCHAR2(3072),
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
    on CCRS_PM_DECDFSE (DATA_RPT_DATE)
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
    INQ_ORG_ID       VARCHAR2(32),
    INQ_GROUP_ID     VARCHAR2(32),
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
    CDFXGM_AMT       NUMBER(20, 2),
    LLSFGD           CHAR(4),
    LLSP             NUMBER(13, 5),
    DECDQXLX         CHAR(2),
    JZLLZL           CHAR(2),
    FXPL             CHAR(2),
    CDYE_AMT         NUMBER(20, 2),
    REMARKS          VARCHAR2(14),
    CHECK_FLAG       CHAR,
    CHECK_DESC       VARCHAR2(3072),
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
    on CCRS_PM_DECDYE (DATA_RPT_DATE, SJRQ_DATE, JRJGBM, KHZJLX, KHZJHM, CDXYDM)
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
    INQ_ORG_ID     VARCHAR2(32),
    INQ_GROUP_ID   VARCHAR2(32),
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
    on CCRS_PM_DKFSEKZ (DATA_RPT_DATE, SJRQ_DATE, JRJGBM, DKJJBM)
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
    INQ_ORG_ID     VARCHAR2(32),
    INQ_GROUP_ID   VARCHAR2(32),
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
    on CCRS_PM_DKYEKZ (DATA_RPT_DATE, SJRQ_DATE, JRJGBM, DKJJBM)
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
    INQ_ORG_ID      VARCHAR2(32),
    INQ_GROUP_ID    VARCHAR2(32),
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
    ZCZB_AMT        NUMBER(20, 2),
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
    on CCRS_PM_DWKH (DATA_RPT_DATE, SJRQ_DATE, JRJGBM, KHBH)
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
    INQ_ORG_ID       VARCHAR2(32),
    INQ_GROUP_ID     VARCHAR2(32),
    SJRQ_DATE        CHAR(8),
    JRJGBM           CHAR(14),
    DKJJBM           VARCHAR2(105),
    XDHTQYRQ_DATE    CHAR(8),
    XMMC             VARCHAR2(300),
    XMSZD            VARCHAR2(300),
    XMZHTJE_AMT      NUMBER(20, 2),
    SJYKDW           VARCHAR2(300),
    DYBCDKLJZFJE_AMT NUMBER(20, 2),
    RMYHDYBCDKZXJCBS CHAR(50),
    REMARKS          VARCHAR2(14),
    CHECK_FLAG       CHAR,
    CHECK_DESC       VARCHAR2(3072),
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
    on CCRS_PM_DYBCDKQD (DATA_RPT_DATE, SJRQ_DATE, JRJGBM, DKJJBM)
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
    INQ_ORG_ID     VARCHAR2(32),
    INQ_GROUP_ID   VARCHAR2(32),
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
    on CCRS_PM_GRKH (DATA_RPT_DATE, SJRQ_DATE, JRJGBM, KHBH)
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
    INQ_ORG_ID        VARCHAR2(32),
    INQ_GROUP_ID      VARCHAR2(32),
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
    CHECK_DESC        VARCHAR2(3072),
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
    INQ_ORG_ID     VARCHAR2(32),
    INQ_GROUP_ID   VARCHAR2(32),
    SJRQ_DATE      CHAR(8),
    JRJGBM         CHAR(14),
    XMMC           VARCHAR2(300),
    DKJJBM         VARCHAR2(300),
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
    on CCRS_PM_PPPZDXMRZQK (DATA_RPT_DATE, SJRQ_DATE, JRJGBM, XMMC)
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
    INQ_ORG_ID       VARCHAR2(32),
    INQ_GROUP_ID     VARCHAR2(32),
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
    CHECK_DESC       VARCHAR2(3072),
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
    on CCRS_PM_PSLDYZCQD (DATA_RPT_DATE, SJRQ_DATE, JRJGBM, DKJJBM)
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
    INQ_ORG_ID     VARCHAR2(32),
    INQ_GROUP_ID   VARCHAR2(32),
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
    BHJE_AMT       NUMBER(20, 2),
    BHLX           CHAR(2),
    BZJBZ          CHAR(3),
    BZJJE_AMT      NUMBER(20, 2),
    SXFL           NUMBER(9, 5),
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
    on CCRS_PM_RZXBH (DATA_RPT_DATE, SJRQ_DATE, JRJGBM, BHBH)
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
    INQ_ORG_ID     VARCHAR2(32),
    INQ_GROUP_ID   VARCHAR2(32),
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
    SXJE_AMT       NUMBER(20, 2),
    SXKSRQ_DATE    CHAR(8),
    SXDQRQ_DATE    CHAR(8),
    SFXHED         CHAR,
    SFLSED         CHAR,
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
    on CCRS_PM_SXHT (DATA_RPT_DATE, SJRQ_DATE, JRJGBM, SXHTBH)
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
    INQ_ORG_ID        VARCHAR2(32),
    INQ_GROUP_ID      VARCHAR2(32),
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
    PJJE_AMT          NUMBER(20, 2),
    PJDQRQ_DATE       CHAR(8),
    KPQYMC            VARCHAR2(300),
    KPQYZJLX          CHAR(2),
    KPQYDM            VARCHAR2(50),
    RMYHPJZXJCBS      CHAR(50),
    FKHHH             CHAR(12),
    FKHMC             VARCHAR2(300),
    SKRMC             VARCHAR2(300),
    TXYWFSRQ_DATE     CHAR(8),
    TXLL              NUMBER(9, 5),
    BZ                CHAR(3),
    BSZRCS            NUMBER(8),
    REMARKS           VARCHAR2(14),
    CHECK_FLAG        CHAR,
    CHECK_DESC        VARCHAR2(3072),
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
    on CCRS_PM_TXFSE (DATA_RPT_DATE, SJRQ_DATE, JRJGBM, PJBM)
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
    INQ_ORG_ID        VARCHAR2(32),
    INQ_GROUP_ID      VARCHAR2(32),
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
    PJJE_AMT          NUMBER(20, 2),
    PJDQRQ_DATE       CHAR(8),
    KPQYMC            VARCHAR2(300),
    KPQYZJLX          CHAR(2),
    KPQYDM            VARCHAR2(50),
    RMYHPJZXJCBS      CHAR(50),
    FKHHH             CHAR(12),
    FKHMC             VARCHAR2(300),
    SKRMC             VARCHAR2(300),
    TXYWFSRQ_DATE     CHAR(8),
    TXLL              NUMBER(9, 5),
    BZ                CHAR(3),
    BSZRCS            NUMBER(8),
    REMARKS           VARCHAR2(14),
    CHECK_FLAG        CHAR,
    CHECK_DESC        VARCHAR2(3072),
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
    on CCRS_PM_TXYE (DATA_RPT_DATE, SJRQ_DATE, JRJGBM, PJBM)
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
    INQ_ORG_ID     VARCHAR2(32),
    INQ_GROUP_ID   VARCHAR2(32),
    SJRQ_DATE      CHAR(8),
    JRJGBM         CHAR(14),
    JYDSMC         VARCHAR2(300),
    CDXYDM         VARCHAR2(150),
    CDMC           VARCHAR2(300),
    CDXYQSRQ_DATE  CHAR(8),
    CDXYDQRQ_DATE  CHAR(8),
    CDSJDQRQ_DATE  CHAR(8),
    BZ             CHAR(3),
    CDFXGM_AMT     NUMBER(20, 2),
    LLSFGD         CHAR(4),
    LLSP           NUMBER(13, 5),
    TYCDQXLX       CHAR(2),
    JZLLZL         CHAR(2),
    FXPL           CHAR(2),
    CDFSLX         CHAR(2),
    TYCDDFBJ_AMT   NUMBER(20, 2),
    TYCDDFLX_AMT   NUMBER(20, 2),
    CDFSJE_AMT     NUMBER(20, 2),
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
    on CCRS_PM_TYCDFSE (DATA_RPT_DATE, SJRQ_DATE, JRJGBM, JYDSMC, CDXYDM)
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
    INQ_ORG_ID     VARCHAR2(32),
    INQ_GROUP_ID   VARCHAR2(32),
    SJRQ_DATE      CHAR(8),
    JRJGBM         CHAR(14),
    JYDSMC         VARCHAR2(300),
    CDXYDM         VARCHAR2(150),
    CDMC           VARCHAR2(300),
    CDXYQSRQ_DATE  CHAR(8),
    CDXYDQRQ_DATE  CHAR(8),
    CDSJDQRQ_DATE  CHAR(8),
    BZ             CHAR(3),
    CDFXGM_AMT     NUMBER(20, 2),
    LLSFGD         CHAR(4),
    LLSP           NUMBER(13, 5),
    TYCDQXLX       CHAR(2),
    JZLLZL         CHAR(2),
    FXPL           CHAR(2),
    CDYE_AMT       NUMBER(20, 2),
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
    on CCRS_PM_TYCDYE (DATA_RPT_DATE, SJRQ_DATE, JRJGBM, JYDSMC, CDXYDM)
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
    INQ_ORG_ID     VARCHAR2(32),
    INQ_GROUP_ID   VARCHAR2(32),
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
    WTDKSXFJE_AMT  NUMBER(20, 2),
    DKDQRQ_DATE    CHAR(8),
    DKSJZZRQ_DATE  CHAR(8),
    BZ             CHAR(3),
    DKFSJE_AMT     NUMBER(20, 2),
    LLSFGD         CHAR(4),
    LLSP           NUMBER(13, 5),
    DKDBFS         VARCHAR2(3),
    DKZS           CHAR(4),
    FFSHBS         CHAR,
    SXBS           CHAR(2),
    RMYHDKZXJCBS   CHAR(50),
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
    on CCRS_PM_WTDKFSE (DATA_RPT_DATE, SJRQ_DATE, JRJGBM, DKJJBM)
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
    INQ_ORG_ID     VARCHAR2(32),
    INQ_GROUP_ID   VARCHAR2(32),
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
    WTDKSXFJE_AMT  NUMBER(20, 2),
    DKDQRQ_DATE    CHAR(8),
    ZQDQRQ_DATE    CHAR(8),
    BZ             CHAR(3),
    DKYE_AMT       NUMBER(20, 2),
    LLSFGD         CHAR(4),
    LLSP           NUMBER(13, 5),
    DKDBFS         VARCHAR2(3),
    DKZL           CHAR(4),
    DKZS           CHAR(4),
    WTDKJJZE_AMT   NUMBER(20, 2),
    SXBS           CHAR(2),
    RMYHDKZXJCBS   CHAR(50),
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
    on CCRS_PM_WTDKYE (DATA_RPT_DATE, SJRQ_DATE, JRJGBM, DKJJBM)
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
    INQ_ORG_ID       VARCHAR2(32),
    INQ_GROUP_ID     VARCHAR2(32),
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
    DKHTJE_AMT       NUMBER(20, 2),
    DKSJTX           CHAR(4),
    DKYT             VARCHAR2(1500),
    HTQSRQ_DATE      CHAR(8),
    HTDQRQ_DATE      CHAR(8),
    HKFS             CHAR(2),
    GRZFAJDKLX       CHAR(2),
    GRZFAJDKGFZJ_AMT NUMBER(20, 2),
    SFZFDBJJDB       CHAR,
    RMYHDKZXJCBS     CHAR(50),
    REMARKS          VARCHAR2(14),
    CHECK_FLAG       CHAR,
    CHECK_DESC       VARCHAR2(3072),
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
    on CCRS_PM_XDHT (DATA_RPT_DATE, SJRQ_DATE, JRJGBM, XDHTBH)
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
    INQ_ORG_ID     VARCHAR2(32),
    INQ_GROUP_ID   VARCHAR2(32),
    SJRQ_DATE      CHAR(8),
    JRJGBM         CHAR(14),
    XYZBM          VARCHAR2(50),
    SXHTBH         VARCHAR2(300),
    KZSQRMC        VARCHAR2(300),
    KZSQRZJLX      CHAR(2),
    KZSQRDM        VARCHAR2(50),
    KZSQRJJCF      VARCHAR2(5),
    BZ             CHAR(3),
    XYZJE_AMT      NUMBER(20, 2),
    XYZKZRQ_DATE   CHAR(8),
    XYZDQRQ_DATE   CHAR(8),
    XYZSKRMC       VARCHAR2(300),
    XYZBZJBZ       CHAR(3),
    XYZBZJJE_AMT   NUMBER(20, 2),
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
    on CCRS_PM_XYZKL (DATA_RPT_DATE, SJRQ_DATE, JRJGBM, XYZBM)
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
    INQ_ORG_ID     VARCHAR2(32),
    INQ_GROUP_ID   VARCHAR2(32),
    SJRQ_DATE      CHAR(8),
    JRJGBM         CHAR(14),
    YHCDHPBM       VARCHAR2(30),
    SXHTBH         VARCHAR2(300),
    KPQYMC         VARCHAR2(300),
    KPQYZJLX       CHAR(2),
    KPQYDM         VARCHAR2(50),
    KPQYJJCF       VARCHAR2(5),
    BZ             CHAR(3),
    PMJE_AMT       NUMBER(20, 2),
    CPRQ_DATE      CHAR(8),
    PJDQRQ_DATE    CHAR(8),
    PJSKRMC        VARCHAR2(300),
    PJDBBZ         CHAR(3),
    PJDBJE_AMT     NUMBER(20, 2),
    PJDBLX         CHAR(2),
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
    on CCRS_PM_YHCDHPKL (DATA_RPT_DATE, SJRQ_DATE, JRJGBM, YHCDHPBM)
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
    INQ_ORG_ID       VARCHAR2(32),
    INQ_GROUP_ID     VARCHAR2(32),
    SJRQ_DATE        CHAR(8),
    JRJGBM           CHAR(14),
    DKJJBM           VARCHAR2(105),
    ZYDBLX           CHAR(2),
    YSZKZWRMC        VARCHAR2(600),
    YSZKZWRZJLX      CHAR(2),
    YSZKZWRZJHM      VARCHAR2(50),
    YSZKZQJE_AMT     NUMBER(20, 2),
    YSZKDZYL         NUMBER(13, 5),
    DCRZTYDJZMWJBH   VARCHAR2(300),
    SFSYQ            CHAR,
    YSZKSFTGZZPSWCRZ CHAR,
    REMARKS          VARCHAR2(14),
    CHECK_FLAG       CHAR,
    CHECK_DESC       VARCHAR2(3072),
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
    on CCRS_PM_YSZKZYDK (DATA_RPT_DATE, SJRQ_DATE, JRJGBM, DKJJBM)
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
    INQ_ORG_ID     VARCHAR2(32),
    INQ_GROUP_ID   VARCHAR2(32),
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
    on CCRS_PM_ZDKSYQK (DATA_RPT_DATE, SJRQ_DATE, JRJGBM, DKJJBM)
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
    INQ_ORG_ID     VARCHAR2(32),
    INQ_GROUP_ID   VARCHAR2(32),
    SJRQ_DATE      CHAR(8),
    JRJGBM         CHAR(14),
    XMMC           VARCHAR2(300),
    DKJJBM         VARCHAR2(105),
    YHCDHPBM       VARCHAR2(30),
    WTDKDKJJBM     VARCHAR2(105),
    YHCXZQDM       VARCHAR2(20),
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
    on CCRS_PM_ZDXMZJPHJCBFSE (DATA_RPT_DATE, SJRQ_DATE, JRJGBM, XMMC)
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
    INQ_ORG_ID         VARCHAR2(32),
    INQ_GROUP_ID       VARCHAR2(32),
    SJRQ_DATE          CHAR(8),
    JRJGBM             CHAR(14),
    SFZCXS             CHAR,
    ZQCXJE_AMT         NUMBER(20, 2),
    ZQMC               VARCHAR2(300),
    ZQJC               VARCHAR2(300),
    ZQLX               VARCHAR2(4),
    ZQDM               VARCHAR2(20),
    ZQFXBZ             CHAR(3),
    ZQFXJE_AMT         NUMBER(20, 2),
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
    ZQFXLL             NUMBER(13, 5),
    REMARKS            VARCHAR2(14),
    CHECK_FLAG         CHAR,
    CHECK_DESC         VARCHAR2(3072),
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
    on CCRS_PM_ZQCX (DATA_RPT_DATE, SJRQ_DATE, JRJGBM, ZQDM)
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
    INQ_ORG_ID     VARCHAR2(32),
    INQ_GROUP_ID   VARCHAR2(32),
    SJRQ_DATE      CHAR(8),
    JRJGBM         CHAR(14),
    ZQDM           VARCHAR2(20),
    CXPZ           CHAR(2),
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
    on CCRS_PM_ZQCXPZ (DATA_RPT_DATE, SJRQ_DATE, JRJGBM, ZQDM)
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
    INQ_ORG_ID     VARCHAR2(32),
    INQ_GROUP_ID   VARCHAR2(32),
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
    ZQPMJE_AMT     NUMBER(20, 2),
    JYJJ_AMT       NUMBER(20, 2),
    TJSDGZJJ_AMT   NUMBER(20, 2),
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
    on CCRS_PM_ZQCY (DATA_RPT_DATE, SJRQ_DATE, JRJGBM, ZQDM)
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
    INQ_ORG_ID     VARCHAR2(32),
    INQ_GROUP_ID   VARCHAR2(32),
    SJRQ_DATE      CHAR(8),
    JRJGBM         CHAR(14),
    DKJJBM         VARCHAR2(105),
    ZYDBLX         CHAR(2),
    ZSCQLX         CHAR(2),
    ZSCQBH         VARCHAR2(600),
    ZSCQJZPGFS     CHAR(2),
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
    on CCRS_PM_ZSCQZYDK (DATA_RPT_DATE, SJRQ_DATE, JRJGBM, DKJJBM)
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
    INQ_ORG_ID     VARCHAR2(32),
    INQ_GROUP_ID   VARCHAR2(32),
    SJRQ_DATE      CHAR(8),
    JRJGBM         CHAR(14),
    DKJJBM         VARCHAR2(105),
    ZJLY           CHAR(2),
    ZXZQDKYT       VARCHAR2(4),
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
    on CCRS_PM_ZXZQZCTDLYFZQK (DATA_RPT_DATE, SJRQ_DATE, JRJGBM, DKJJBM)
/

create table CCRS_ITF_GRKH
(
    DATA_ID        VARCHAR2(64) not null,
    DATA_DATE      VARCHAR2(10),
    DATA_RPT_DATE  VARCHAR2(10),
    CORP_ID        VARCHAR2(14),
    ORG_ID         VARCHAR2(14),
    GROUP_ID       VARCHAR2(14),
    INQ_ORG_ID     VARCHAR2(32),
    INQ_GROUP_ID   VARCHAR2(32),
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
    RSV5           VARCHAR2(180),
    RECORD_TYPE    CHAR(3)
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
    INQ_ORG_ID      VARCHAR2(32),
    INQ_GROUP_ID    VARCHAR2(32),
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
    ZCZB_AMT        NUMBER(20, 2),
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
    RSV5            VARCHAR2(180),
    RECORD_TYPE     CHAR(3)
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
    INQ_ORG_ID     VARCHAR2(32),
    INQ_GROUP_ID   VARCHAR2(32),
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

create table CCRS_ITF_TYCDYE
(
    DATA_ID        VARCHAR2(64) not null,
    DATA_DATE      VARCHAR2(10),
    DATA_RPT_DATE  VARCHAR2(10),
    CORP_ID        VARCHAR2(14),
    ORG_ID         VARCHAR2(14),
    GROUP_ID       VARCHAR2(14),
    INQ_ORG_ID     VARCHAR2(32),
    INQ_GROUP_ID   VARCHAR2(32),
    SJRQ_DATE      VARCHAR2(10),
    JRJGBM         CHAR(14),
    JYDSMC         VARCHAR2(300),
    CDXYDM         VARCHAR2(150),
    CDMC           VARCHAR2(300),
    CDXYQSRQ_DATE  VARCHAR2(10),
    CDXYDQRQ_DATE  VARCHAR2(10),
    CDSJDQRQ_DATE  VARCHAR2(10),
    BZ             CHAR(3),
    CDFXGM_AMT     NUMBER(20, 2),
    LLSFGD         CHAR(4),
    LLSP           NUMBER(13, 5),
    TYCDQXLX       CHAR(2),
    JZLLZL         CHAR(2),
    FXPL           CHAR(2),
    CDYE_AMT       NUMBER(20, 2),
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

create table CCRS_ITF_TYCDFSE
(
    DATA_ID        VARCHAR2(64) not null,
    DATA_DATE      VARCHAR2(10),
    DATA_RPT_DATE  VARCHAR2(10),
    CORP_ID        VARCHAR2(14),
    ORG_ID         VARCHAR2(14),
    GROUP_ID       VARCHAR2(14),
    INQ_ORG_ID     VARCHAR2(32),
    INQ_GROUP_ID   VARCHAR2(32),
    SJRQ_DATE      VARCHAR2(10),
    JRJGBM         CHAR(14),
    JYDSMC         VARCHAR2(300),
    CDXYDM         VARCHAR2(150),
    CDMC           VARCHAR2(300),
    CDXYQSRQ_DATE  VARCHAR2(10),
    CDXYDQRQ_DATE  VARCHAR2(10),
    CDSJDQRQ_DATE  VARCHAR2(10),
    BZ             CHAR(3),
    CDFXGM_AMT     NUMBER(20, 2),
    LLSFGD         CHAR(4),
    LLSP           NUMBER(13, 5),
    TYCDQXLX       CHAR(2),
    JZLLZL         CHAR(2),
    FXPL           CHAR(2),
    CDFSLX         CHAR(2),
    TYCDDFBJ_AMT   NUMBER(20, 2),
    TYCDDFLX_AMT   NUMBER(20, 2),
    CDFSJE_AMT     NUMBER(20, 2),
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

create table CCRS_ITF_DECDYE
(
    DATA_ID          VARCHAR2(64) not null,
    DATA_DATE        VARCHAR2(10),
    DATA_RPT_DATE    VARCHAR2(10),
    CORP_ID          VARCHAR2(14),
    ORG_ID           VARCHAR2(14),
    GROUP_ID         VARCHAR2(14),
    INQ_ORG_ID       VARCHAR2(32),
    INQ_GROUP_ID     VARCHAR2(32),
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
    CDFXGM_AMT       NUMBER(20, 2),
    LLSFGD           CHAR(4),
    LLSP             NUMBER(13, 5),
    DECDQXLX         CHAR(2),
    JZLLZL           CHAR(2),
    FXPL             CHAR(2),
    CDYE_AMT         NUMBER(20, 2),
    REMARKS          VARCHAR2(14),
    CHECK_FLAG       CHAR,
    CHECK_DESC       VARCHAR2(3072),
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

create table CCRS_ITF_DECDFSE
(
    DATA_ID          VARCHAR2(64) not null,
    DATA_DATE        VARCHAR2(10),
    DATA_RPT_DATE    VARCHAR2(10),
    CORP_ID          VARCHAR2(14),
    ORG_ID           VARCHAR2(14),
    GROUP_ID         VARCHAR2(14),
    INQ_ORG_ID       VARCHAR2(32),
    INQ_GROUP_ID     VARCHAR2(32),
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
    CDFXGM_AMT       NUMBER(20, 2),
    LLSFGD           CHAR(4),
    LLSP             NUMBER(13, 5),
    DECDQXLX         CHAR(2),
    JZLLZL           CHAR(2),
    FXPL             CHAR(2),
    CDFSLX           CHAR(2),
    CDFSJE_AMT       NUMBER(20, 2),
    REMARKS          VARCHAR2(14),
    CHECK_FLAG       CHAR,
    CHECK_DESC       VARCHAR2(3072),
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

create table CCRS_ITF_SXHT
(
    DATA_ID        VARCHAR2(64) not null,
    DATA_DATE      VARCHAR2(10),
    DATA_RPT_DATE  VARCHAR2(10),
    CORP_ID        VARCHAR2(14),
    ORG_ID         VARCHAR2(14),
    GROUP_ID       VARCHAR2(14),
    INQ_ORG_ID     VARCHAR2(32),
    INQ_GROUP_ID   VARCHAR2(32),
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
    SXJE_AMT       NUMBER(20, 2),
    SXKSRQ_DATE    VARCHAR2(10),
    SXDQRQ_DATE    VARCHAR2(10),
    SFXHED         CHAR,
    SFLSED         CHAR,
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

create table CCRS_ITF_XDHT
(
    DATA_ID          VARCHAR2(64) not null,
    DATA_DATE        VARCHAR2(10),
    DATA_RPT_DATE    VARCHAR2(10),
    CORP_ID          VARCHAR2(14),
    ORG_ID           VARCHAR2(14),
    GROUP_ID         VARCHAR2(14),
    INQ_ORG_ID       VARCHAR2(32),
    INQ_GROUP_ID     VARCHAR2(32),
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
    DKHTJE_AMT       NUMBER(20, 2),
    DKSJTX           CHAR(4),
    DKYT             VARCHAR2(1500),
    HTQSRQ_DATE      VARCHAR2(10),
    HTDQRQ_DATE      VARCHAR2(10),
    HKFS             CHAR(2),
    GRZFAJDKLX       CHAR(2),
    GRZFAJDKGFZJ_AMT NUMBER(20, 2),
    SFZFDBJJDB       CHAR,
    RMYHDKZXJCBS     CHAR(50),
    REMARKS          VARCHAR2(14),
    CHECK_FLAG       CHAR,
    CHECK_DESC       VARCHAR2(3072),
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

create table CCRS_ITF_DBHT
(
    DATA_ID        VARCHAR2(64) not null,
    DATA_DATE      VARCHAR2(10),
    DATA_RPT_DATE  VARCHAR2(10),
    CORP_ID        VARCHAR2(14),
    ORG_ID         VARCHAR2(14),
    GROUP_ID       VARCHAR2(14),
    INQ_ORG_ID     VARCHAR2(32),
    INQ_GROUP_ID   VARCHAR2(32),
    SJRQ_DATE      VARCHAR2(10),
    JRJGBM         CHAR(14),
    DBHTBH         VARCHAR2(120),
    DBHTLX         CHAR(2),
    XDHTBH         VARCHAR2(300),
    DBQSRQ_DATE    VARCHAR2(10),
    DBDQRQ_DATE    VARCHAR2(10),
    BZ             CHAR(3),
    DBZJE_AMT      NUMBER(20, 2),
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

create table CCRS_ITF_DBWXX
(
    DATA_ID        VARCHAR2(64) not null,
    DATA_DATE      VARCHAR2(10),
    DATA_RPT_DATE  VARCHAR2(10),
    CORP_ID        VARCHAR2(14),
    ORG_ID         VARCHAR2(14),
    GROUP_ID       VARCHAR2(14),
    INQ_ORG_ID     VARCHAR2(32),
    INQ_GROUP_ID   VARCHAR2(32),
    SJRQ_DATE      VARCHAR2(10),
    JRJGBM         CHAR(14),
    DBHTBH         VARCHAR2(120),
    DKDBFS         VARCHAR2(3),
    YPBH           VARCHAR2(300),
    YPMC           VARCHAR2(300),
    YPLX           VARCHAR2(4),
    DBWJZ_AMT      NUMBER(20, 2),
    BZ             CHAR(3),
    DZYL           NUMBER(13, 5),
    BZRMC          VARCHAR2(300),
    BZRZJLX        CHAR(2),
    BZRZJHM        VARCHAR2(50),
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

create table CCRS_ITF_DKYEKZ
(
    DATA_ID        VARCHAR2(64) not null,
    DATA_DATE      VARCHAR2(10),
    DATA_RPT_DATE  VARCHAR2(10),
    CORP_ID        VARCHAR2(14),
    ORG_ID         VARCHAR2(14),
    GROUP_ID       VARCHAR2(14),
    INQ_ORG_ID     VARCHAR2(32),
    INQ_GROUP_ID   VARCHAR2(32),
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

create table CCRS_ITF_DKFSEKZ
(
    DATA_ID        VARCHAR2(64) not null,
    DATA_DATE      VARCHAR2(10),
    DATA_RPT_DATE  VARCHAR2(10),
    CORP_ID        VARCHAR2(14),
    ORG_ID         VARCHAR2(14),
    GROUP_ID       VARCHAR2(14),
    INQ_ORG_ID     VARCHAR2(32),
    INQ_GROUP_ID   VARCHAR2(32),
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

create table CCRS_ITF_TXYE
(
    DATA_ID           VARCHAR2(64) not null,
    DATA_DATE         VARCHAR2(10),
    DATA_RPT_DATE     VARCHAR2(10),
    CORP_ID           VARCHAR2(14),
    ORG_ID            VARCHAR2(14),
    GROUP_ID          VARCHAR2(14),
    INQ_ORG_ID        VARCHAR2(32),
    INQ_GROUP_ID      VARCHAR2(32),
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
    PJJE_AMT          NUMBER(20, 2),
    PJDQRQ_DATE       VARCHAR2(10),
    KPQYMC            VARCHAR2(300),
    KPQYZJLX          CHAR(2),
    KPQYDM            VARCHAR2(50),
    RMYHPJZXJCBS      CHAR(50),
    FKHHH             CHAR(12),
    FKHMC             VARCHAR2(300),
    SKRMC             VARCHAR2(300),
    TXYWFSRQ_DATE     VARCHAR2(10),
    TXLL              NUMBER(9, 5),
    BZ                CHAR(3),
    BSZRCS            NUMBER(8),
    REMARKS           VARCHAR2(14),
    CHECK_FLAG        CHAR,
    CHECK_DESC        VARCHAR2(3072),
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

create table CCRS_ITF_TXFSE
(
    DATA_ID           VARCHAR2(64) not null,
    DATA_DATE         VARCHAR2(10),
    DATA_RPT_DATE     VARCHAR2(10),
    CORP_ID           VARCHAR2(14),
    ORG_ID            VARCHAR2(14),
    GROUP_ID          VARCHAR2(14),
    INQ_ORG_ID        VARCHAR2(32),
    INQ_GROUP_ID      VARCHAR2(32),
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
    PJJE_AMT          NUMBER(20, 2),
    PJDQRQ_DATE       VARCHAR2(10),
    KPQYMC            VARCHAR2(300),
    KPQYZJLX          CHAR(2),
    KPQYDM            VARCHAR2(50),
    RMYHPJZXJCBS      CHAR(50),
    FKHHH             CHAR(12),
    FKHMC             VARCHAR2(300),
    SKRMC             VARCHAR2(300),
    TXYWFSRQ_DATE     VARCHAR2(10),
    TXLL              NUMBER(9, 5),
    BZ                CHAR(3),
    BSZRCS            NUMBER(8),
    REMARKS           VARCHAR2(14),
    CHECK_FLAG        CHAR,
    CHECK_DESC        VARCHAR2(3072),
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

create table CCRS_ITF_RZXBH
(
    DATA_ID        VARCHAR2(64) not null,
    DATA_DATE      VARCHAR2(10),
    DATA_RPT_DATE  VARCHAR2(10),
    CORP_ID        VARCHAR2(14),
    ORG_ID         VARCHAR2(14),
    GROUP_ID       VARCHAR2(14),
    INQ_ORG_ID     VARCHAR2(32),
    INQ_GROUP_ID   VARCHAR2(32),
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
    BHJE_AMT       NUMBER(20, 2),
    BHLX           CHAR(2),
    BZJBZ          CHAR(3),
    BZJJE_AMT      NUMBER(20, 2),
    SXFL           NUMBER(9, 5),
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

create table CCRS_ITF_YHCDHPKL
(
    DATA_ID        VARCHAR2(64) not null,
    DATA_DATE      VARCHAR2(10),
    DATA_RPT_DATE  VARCHAR2(10),
    CORP_ID        VARCHAR2(14),
    ORG_ID         VARCHAR2(14),
    GROUP_ID       VARCHAR2(14),
    INQ_ORG_ID     VARCHAR2(32),
    INQ_GROUP_ID   VARCHAR2(32),
    SJRQ_DATE      VARCHAR2(10),
    JRJGBM         CHAR(14),
    YHCDHPBM       VARCHAR2(30),
    SXHTBH         VARCHAR2(300),
    KPQYMC         VARCHAR2(300),
    KPQYZJLX       CHAR(2),
    KPQYDM         VARCHAR2(50),
    KPQYJJCF       VARCHAR2(5),
    BZ             CHAR(3),
    PMJE_AMT       NUMBER(20, 2),
    CPRQ_DATE      VARCHAR2(10),
    PJDQRQ_DATE    VARCHAR2(10),
    PJSKRMC        VARCHAR2(300),
    PJDBBZ         CHAR(3),
    PJDBJE_AMT     NUMBER(20, 2),
    PJDBLX         CHAR(2),
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

create table CCRS_ITF_XYZKL
(
    DATA_ID        VARCHAR2(64) not null,
    DATA_DATE      VARCHAR2(10),
    DATA_RPT_DATE  VARCHAR2(10),
    CORP_ID        VARCHAR2(14),
    ORG_ID         VARCHAR2(14),
    GROUP_ID       VARCHAR2(14),
    INQ_ORG_ID     VARCHAR2(32),
    INQ_GROUP_ID   VARCHAR2(32),
    SJRQ_DATE      VARCHAR2(10),
    JRJGBM         CHAR(14),
    XYZBM          VARCHAR2(50),
    SXHTBH         VARCHAR2(300),
    KZSQRMC        VARCHAR2(300),
    KZSQRZJLX      CHAR(2),
    KZSQRDM        VARCHAR2(50),
    KZSQRJJCF      VARCHAR2(5),
    BZ             CHAR(3),
    XYZJE_AMT      NUMBER(20, 2),
    XYZKZRQ_DATE   VARCHAR2(10),
    XYZDQRQ_DATE   VARCHAR2(10),
    XYZSKRMC       VARCHAR2(300),
    XYZBZJBZ       CHAR(3),
    XYZBZJJE_AMT   NUMBER(20, 2),
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

create table CCRS_ITF_WTDKYE
(
    DATA_ID        VARCHAR2(64) not null,
    DATA_DATE      VARCHAR2(10),
    DATA_RPT_DATE  VARCHAR2(10),
    CORP_ID        VARCHAR2(14),
    ORG_ID         VARCHAR2(14),
    GROUP_ID       VARCHAR2(14),
    INQ_ORG_ID     VARCHAR2(32),
    INQ_GROUP_ID   VARCHAR2(32),
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
    WTDKSXFJE_AMT  NUMBER(20, 2),
    DKDQRQ_DATE    VARCHAR2(10),
    ZQDQRQ_DATE    VARCHAR2(10),
    BZ             CHAR(3),
    DKYE_AMT       NUMBER(20, 2),
    LLSFGD         CHAR(4),
    LLSP           NUMBER(13, 5),
    DKDBFS         VARCHAR2(3),
    DKZL           CHAR(4),
    DKZS           CHAR(4),
    WTDKJJZE_AMT   NUMBER(20, 2),
    SXBS           CHAR(2),
    RMYHDKZXJCBS   CHAR(50),
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

create table CCRS_ITF_WTDKFSE
(
    DATA_ID        VARCHAR2(64) not null,
    DATA_DATE      VARCHAR2(10),
    DATA_RPT_DATE  VARCHAR2(10),
    CORP_ID        VARCHAR2(14),
    ORG_ID         VARCHAR2(14),
    GROUP_ID       VARCHAR2(14),
    INQ_ORG_ID     VARCHAR2(32),
    INQ_GROUP_ID   VARCHAR2(32),
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
    WTDKSXFJE_AMT  NUMBER(20, 2),
    DKDQRQ_DATE    VARCHAR2(10),
    DKSJZZRQ_DATE  VARCHAR2(10),
    BZ             CHAR(3),
    DKFSJE_AMT     NUMBER(20, 2),
    LLSFGD         CHAR(4),
    LLSP           NUMBER(13, 5),
    DKDBFS         VARCHAR2(3),
    DKZS           CHAR(4),
    FFSHBS         CHAR,
    SXBS           CHAR(2),
    RMYHDKZXJCBS   CHAR(50),
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

create table CCRS_ITF_ZQCX
(
    DATA_ID            VARCHAR2(64) not null,
    DATA_DATE          VARCHAR2(10),
    DATA_RPT_DATE      VARCHAR2(10),
    CORP_ID            VARCHAR2(14),
    ORG_ID             VARCHAR2(14),
    GROUP_ID           VARCHAR2(14),
    INQ_ORG_ID         VARCHAR2(32),
    INQ_GROUP_ID       VARCHAR2(32),
    SJRQ_DATE          VARCHAR2(10),
    JRJGBM             CHAR(14),
    SFZCXS             CHAR,
    ZQCXJE_AMT         NUMBER(20, 2),
    ZQMC               VARCHAR2(300),
    ZQJC               VARCHAR2(300),
    ZQLX               VARCHAR2(4),
    ZQDM               VARCHAR2(20),
    ZQFXBZ             CHAR(3),
    ZQFXJE_AMT         NUMBER(20, 2),
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
    ZQFXLL             NUMBER(13, 5),
    REMARKS            VARCHAR2(14),
    CHECK_FLAG         CHAR,
    CHECK_DESC         VARCHAR2(3072),
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

create table CCRS_ITF_ZQCY
(
    DATA_ID        VARCHAR2(64) not null,
    DATA_DATE      VARCHAR2(10),
    DATA_RPT_DATE  VARCHAR2(10),
    CORP_ID        VARCHAR2(14),
    ORG_ID         VARCHAR2(14),
    GROUP_ID       VARCHAR2(14),
    INQ_ORG_ID     VARCHAR2(32),
    INQ_GROUP_ID   VARCHAR2(32),
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
    ZQPMJE_AMT     NUMBER(20, 2),
    JYJJ_AMT       NUMBER(20, 2),
    TJSDGZJJ_AMT   NUMBER(20, 2),
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

create table CCRS_ITF_JRJGXXBCB
(
    DATA_ID           VARCHAR2(64) not null,
    DATA_DATE         VARCHAR2(10),
    DATA_RPT_DATE     VARCHAR2(10),
    CORP_ID           VARCHAR2(14),
    ORG_ID            VARCHAR2(14),
    GROUP_ID          VARCHAR2(14),
    INQ_ORG_ID        VARCHAR2(32),
    INQ_GROUP_ID      VARCHAR2(32),
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
    CHECK_DESC        VARCHAR2(3072),
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

create table CCRS_ITF_ZDKSYQK
(
    DATA_ID        VARCHAR2(64) not null,
    DATA_DATE      VARCHAR2(10),
    DATA_RPT_DATE  VARCHAR2(10),
    CORP_ID        VARCHAR2(14),
    ORG_ID         VARCHAR2(14),
    GROUP_ID       VARCHAR2(14),
    INQ_ORG_ID     VARCHAR2(32),
    INQ_GROUP_ID   VARCHAR2(32),
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

create table CCRS_ITF_PSLDYZCQD
(
    DATA_ID          VARCHAR2(64) not null,
    DATA_DATE        VARCHAR2(10),
    DATA_RPT_DATE    VARCHAR2(10),
    CORP_ID          VARCHAR2(14),
    ORG_ID           VARCHAR2(14),
    GROUP_ID         VARCHAR2(14),
    INQ_ORG_ID       VARCHAR2(32),
    INQ_GROUP_ID     VARCHAR2(32),
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
    CHECK_DESC       VARCHAR2(3072),
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

create table CCRS_ITF_DYBCDKQD
(
    DATA_ID          VARCHAR2(64) not null,
    DATA_DATE        VARCHAR2(10),
    DATA_RPT_DATE    VARCHAR2(10),
    CORP_ID          VARCHAR2(14),
    ORG_ID           VARCHAR2(14),
    GROUP_ID         VARCHAR2(14),
    INQ_ORG_ID       VARCHAR2(32),
    INQ_GROUP_ID     VARCHAR2(32),
    SJRQ_DATE        VARCHAR2(10),
    JRJGBM           CHAR(14),
    DKJJBM           VARCHAR2(105),
    XDHTQYRQ_DATE    VARCHAR2(10),
    XMMC             VARCHAR2(300),
    XMSZD            VARCHAR2(300),
    XMZHTJE_AMT      NUMBER(20, 2),
    SJYKDW           VARCHAR2(300),
    DYBCDKLJZFJE_AMT NUMBER(20, 2),
    RMYHDYBCDKZXJCBS CHAR(50),
    REMARKS          VARCHAR2(14),
    CHECK_FLAG       CHAR,
    CHECK_DESC       VARCHAR2(3072),
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

create table CCRS_ITF_ZDXMZJPHJCBFSE
(
    DATA_ID        VARCHAR2(64) not null,
    DATA_DATE      VARCHAR2(10),
    DATA_RPT_DATE  VARCHAR2(10),
    CORP_ID        VARCHAR2(14),
    ORG_ID         VARCHAR2(14),
    GROUP_ID       VARCHAR2(14),
    INQ_ORG_ID     VARCHAR2(32),
    INQ_GROUP_ID   VARCHAR2(32),
    SJRQ_DATE      VARCHAR2(10),
    JRJGBM         CHAR(14),
    XMMC           VARCHAR2(300),
    DKJJBM         VARCHAR2(105),
    YHCDHPBM       VARCHAR2(30),
    WTDKDKJJBM     VARCHAR2(105),
    YHCXZQDM       VARCHAR2(20),
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

create table CCRS_ITF_PPPZDXMRZQK
(
    DATA_ID        VARCHAR2(64) not null,
    DATA_DATE      VARCHAR2(10),
    DATA_RPT_DATE  VARCHAR2(10),
    CORP_ID        VARCHAR2(14),
    ORG_ID         VARCHAR2(14),
    GROUP_ID       VARCHAR2(14),
    INQ_ORG_ID     VARCHAR2(32),
    INQ_GROUP_ID   VARCHAR2(32),
    SJRQ_DATE      VARCHAR2(10),
    JRJGBM         CHAR(14),
    XMMC           VARCHAR2(300),
    DKJJBM         VARCHAR2(300),
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

create table CCRS_ITF_YSZKZYDK
(
    DATA_ID          VARCHAR2(64) not null,
    DATA_DATE        VARCHAR2(10),
    DATA_RPT_DATE    VARCHAR2(10),
    CORP_ID          VARCHAR2(14),
    ORG_ID           VARCHAR2(14),
    GROUP_ID         VARCHAR2(14),
    INQ_ORG_ID       VARCHAR2(32),
    INQ_GROUP_ID     VARCHAR2(32),
    SJRQ_DATE        VARCHAR2(10),
    JRJGBM           CHAR(14),
    DKJJBM           VARCHAR2(105),
    ZYDBLX           CHAR(2),
    YSZKZWRMC        VARCHAR2(600),
    YSZKZWRZJLX      CHAR(2),
    YSZKZWRZJHM      VARCHAR2(50),
    YSZKZQJE_AMT     NUMBER(20, 2),
    YSZKDZYL         NUMBER(13, 5),
    DCRZTYDJZMWJBH   VARCHAR2(300),
    SFSYQ            CHAR,
    YSZKSFTGZZPSWCRZ CHAR,
    REMARKS          VARCHAR2(14),
    CHECK_FLAG       CHAR,
    CHECK_DESC       VARCHAR2(3072),
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

create table CCRS_ITF_ZSCQZYDK
(
    DATA_ID        VARCHAR2(64) not null,
    DATA_DATE      VARCHAR2(10),
    DATA_RPT_DATE  VARCHAR2(10),
    CORP_ID        VARCHAR2(14),
    ORG_ID         VARCHAR2(14),
    GROUP_ID       VARCHAR2(14),
    INQ_ORG_ID     VARCHAR2(32),
    INQ_GROUP_ID   VARCHAR2(32),
    SJRQ_DATE      VARCHAR2(10),
    JRJGBM         CHAR(14),
    DKJJBM         VARCHAR2(105),
    ZYDBLX         CHAR(2),
    ZSCQLX         CHAR(2),
    ZSCQBH         VARCHAR2(600),
    ZSCQJZPGFS     CHAR(2),
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

create table CCRS_ITF_ZQCXPZ
(
    DATA_ID        VARCHAR2(64) not null,
    DATA_DATE      VARCHAR2(10),
    DATA_RPT_DATE  VARCHAR2(10),
    CORP_ID        VARCHAR2(14),
    ORG_ID         VARCHAR2(14),
    GROUP_ID       VARCHAR2(14),
    INQ_ORG_ID     VARCHAR2(32),
    INQ_GROUP_ID   VARCHAR2(32),
    SJRQ_DATE      VARCHAR2(10),
    JRJGBM         CHAR(14),
    ZQDM           VARCHAR2(20),
    CXPZ           CHAR(2),
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

create table CCRS_ITF_ZXZQZCTDLYFZQK
(
    DATA_ID        VARCHAR2(64) not null,
    DATA_DATE      VARCHAR2(10),
    DATA_RPT_DATE  VARCHAR2(10),
    CORP_ID        VARCHAR2(14),
    ORG_ID         VARCHAR2(14),
    GROUP_ID       VARCHAR2(14),
    INQ_ORG_ID     VARCHAR2(32),
    INQ_GROUP_ID   VARCHAR2(32),
    SJRQ_DATE      VARCHAR2(10),
    JRJGBM         CHAR(14),
    DKJJBM         VARCHAR2(105),
    ZJLY           CHAR(2),
    ZXZQDKYT       VARCHAR2(4),
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


truncate table GP_BM_USER_TAB_COLS;
insert into GP_BM_USER_TAB_COLS select table_name||COLUMN_NAME, table_name,column_name,data_type,data_length,data_precision,data_scale,nullable,column_id,char_length from USER_TAB_COLS;

