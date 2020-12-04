CREATE TABLE GFDR_PM_CLGRCK(
    DATA_ID VARCHAR(64) NOT NULL   COMMENT '数据ID' ,
    DATA_DATE CHAR(8)    COMMENT '数据日期' ,
    DATA_RPT_DATE CHAR(8)    COMMENT '报表日期' ,
    CORP_ID VARCHAR(14)    COMMENT '法人机构号' ,
    ORG_ID VARCHAR(14)    COMMENT '机构号' ,
    GROUP_ID VARCHAR(100)    COMMENT '部门编号' ,
    INQ_ORG_ID VARCHAR(32)    COMMENT '查询机构号' ,
    INQ_GROUP_ID VARCHAR(32)    COMMENT '查询组号' ,
    JRJGDM VARCHAR(18)    COMMENT '金融机构代码' ,
    NBJGH VARCHAR(30)    COMMENT '内部机构号' ,
    KHZJLX VARCHAR(3)    COMMENT '客户证件类型' ,
    KHZJDM VARCHAR(60)    COMMENT '客户证件代码' ,
    KHDQDM VARCHAR(6)    COMMENT '客户地区代码' ,
    CKZHBM VARCHAR(60)    COMMENT '存款账户编码' ,
    CKXYDM VARCHAR(60)    COMMENT '存款协议代码' ,
    CKCPLB VARCHAR(5)    COMMENT '存款产品类别' ,
    CKXYQSRQ_DATE VARCHAR(8)    COMMENT '存款协议起始日期' ,
    CKXYDQRQ_DATE VARCHAR(8)    COMMENT '存款协议到期日期' ,
    BZ VARCHAR(3)    COMMENT '币种' ,
    CKYE_AMT NUMERIC(22,2)    COMMENT '存款余额' ,
    CKYEZRMB_AMT NUMERIC(22,2)    COMMENT '存款余额折人民币' ,
    LLSP NUMERIC(15,5)    COMMENT '利率水平' ,
    JCZBJFS VARCHAR(4)    COMMENT '缴存准备金方式' ,
    REMARKS VARCHAR(14)    COMMENT '备注' ,
    CHECK_FLAG CHAR(1)    COMMENT '校验标识' ,
    CHECK_DESC VARCHAR(3072)    COMMENT '校验结果' ,
    CHECK_ERR_TYPE CHAR(1)    COMMENT '校验失败类型' ,
    NEXT_ACTION CHAR(2)    COMMENT '下一动作' ,
    DATA_STATUS CHAR(2)    COMMENT '数据状态' ,
    DATA_FLAG CHAR(1)    COMMENT '数据是否已删除' ,
    DATA_SOURCE CHAR(1)    COMMENT '数据来源' ,
    DATA_VERSION INT    COMMENT '数据版本' ,
    DATA_REJ_DESC VARCHAR(128)    COMMENT '数据审核拒绝原因' ,
    DATA_DEL_DESC VARCHAR(128)    COMMENT '数据删除描述' ,
    DATA_CRT_USER VARCHAR(20)    COMMENT '数据创建/导入用户' ,
    DATA_CRT_DATE CHAR(8)    COMMENT '数据创建/导入日期' ,
    DATA_CRT_TIME CHAR(14)    COMMENT '数据创建/导入时间' ,
    DATA_CHG_USER VARCHAR(20)    COMMENT '数据修改/删除用户' ,
    DATA_CHG_DATE CHAR(8)    COMMENT '数据修改/删除日期' ,
    DATA_CHG_TIME CHAR(14)    COMMENT '数据修改/删除时间' ,
    DATA_APV_USER VARCHAR(20)    COMMENT '数据审核/拒绝用户' ,
    DATA_APV_DATE CHAR(8)    COMMENT '数据审核/拒绝日期' ,
    DATA_APV_TIME CHAR(14)    COMMENT '数据审核/拒绝时间' ,
    RSV1 VARCHAR(180)    COMMENT '备用1' ,
    RSV2 VARCHAR(180)    COMMENT '备用2' ,
    RSV3 VARCHAR(180)    COMMENT '备用3' ,
    RSV4 VARCHAR(180)    COMMENT '备用4' ,
    RSV5 VARCHAR(180)    COMMENT '备用5' ,
    PRIMARY KEY (DATA_ID)
) COMMENT = '存量个人存款信息' ENGINE=InnoDB;

ALTER TABLE GFDR_PM_CLGRCK ADD UNIQUE U_CLGRCK(DATA_RPT_DATE,JRJGDM,CKZHBM,CKXYDM);