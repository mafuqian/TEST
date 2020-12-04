CREATE TABLE GFDR_ITF_GRDKFS(
    DATA_ID VARCHAR(64) NOT NULL   COMMENT '数据ID' ,
    DATA_DATE CHAR(8)    COMMENT '数据日期' ,
    DATA_RPT_DATE CHAR(8)    COMMENT '报表日期' ,
    CORP_ID VARCHAR(14)    COMMENT '法人机构号' ,
    ORG_ID VARCHAR(14)    COMMENT '机构号' ,
    GROUP_ID VARCHAR(100)    COMMENT '部门编号' ,
    INQ_ORG_ID VARCHAR(32)    COMMENT '查询机构号' ,
    INQ_GROUP_ID VARCHAR(32)    COMMENT '查询组号' ,
    JRJGDM VARCHAR(18)    COMMENT '' ,
    NBJGH VARCHAR(30)    COMMENT '' ,
    JRJGDQDM VARCHAR(6)    COMMENT '' ,
    JKRZJLX VARCHAR(3)    COMMENT '' ,
    JKRZJDM VARCHAR(60)    COMMENT '' ,
    JKRDQDM VARCHAR(6)    COMMENT '' ,
    DKJJBM VARCHAR(100)    COMMENT '' ,
    DKHTBM VARCHAR(100)    COMMENT '' ,
    DKCPLB VARCHAR(6)    COMMENT '' ,
    DKFFRQ_DATE VARCHAR(10)    COMMENT '' ,
    DKDQRQ_DATE VARCHAR(10)    COMMENT '' ,
    DKSJZZRQ_DATE VARCHAR(10)    COMMENT '' ,
    BZ VARCHAR(3)    COMMENT '' ,
    DKFSJE_AMT NUMERIC(22,2)    COMMENT '' ,
    DKFSJEZRMB_AMT NUMERIC(22,2)    COMMENT '' ,
    LLSFGD VARCHAR(4)    COMMENT '' ,
    LLSP NUMERIC(15,5)    COMMENT '' ,
    DKDJJZLX VARCHAR(4)    COMMENT '' ,
    JZLL NUMERIC(15,5)    COMMENT '' ,
    DKCZFCFS VARCHAR(5)    COMMENT '' ,
    DKLLCXDJR_DATE VARCHAR(10)    COMMENT '' ,
    DKDBFS VARCHAR(3)    COMMENT '' ,
    SFSCDK VARCHAR(1)    COMMENT '' ,
    DKZT VARCHAR(4)    COMMENT '' ,
    ZCZQHCPDM VARCHAR(400)    COMMENT '' ,
    DKCZFS VARCHAR(2)    COMMENT '' ,
    FFSHBZ VARCHAR(1)    COMMENT '' ,
    JYLSH VARCHAR(60)    COMMENT '' ,
    DKYT VARCHAR(1000)    COMMENT '' ,
    REMARKS VARCHAR(14)    COMMENT '' ,
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
    RSV5 VARCHAR(180)    COMMENT '备用5' 
) COMMENT = '' ENGINE=InnoDB;
