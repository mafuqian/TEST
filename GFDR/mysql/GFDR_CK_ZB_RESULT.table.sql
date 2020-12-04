CREATE TABLE GFDR_CK_ZB_RESULT(
    DATA_ID VARCHAR(64) NOT NULL   COMMENT '数据ID' ,
    DATA_DATE CHAR(8)    COMMENT '数据日期' ,
    CORP_ID VARCHAR(14)    COMMENT '法人机构号' ,
    ORG_ID VARCHAR(14)    COMMENT '机构号' ,
    GROUP_ID VARCHAR(100)    COMMENT '部门编号' ,
    DATA_RPT_DATE CHAR(8)    COMMENT '报表日期' ,
    JRJGDM VARCHAR(60)    COMMENT '金融机构代码' ,
    JKRHY CHAR(3)    COMMENT '借款人行业' ,
    DKCPLB VARCHAR(4)    COMMENT '贷款产品类别' ,
    BZ CHAR(3)    COMMENT '贷款币种' ,
    DKYE_AMT NUMERIC(20,2)    COMMENT '贷款借据余额' ,
    DKYEZRMBYE_AMT NUMERIC(20,2)    COMMENT '贷款借据折人民币余额' ,
    ZBBH VARCHAR(128)    COMMENT '指标编号' ,
    ZBMC VARCHAR(128)    COMMENT '指标名称' ,
    YE_AMT NUMERIC(20,2)    COMMENT '余额' ,
    CK_AMT NUMERIC(20,2)    COMMENT '差额' ,
    CK_PER NUMERIC(20,4)    COMMENT '偏差比例' ,
    REMARKS VARCHAR(512)    COMMENT '备注' ,
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
    C_RSV1 VARCHAR(180)    COMMENT '' ,
    C_RSV2 VARCHAR(180)    COMMENT '' ,
    C_RSV3 VARCHAR(180)    COMMENT '' ,
    C_RSV4 VARCHAR(180)    COMMENT '' ,
    C_RSV5 VARCHAR(180)    COMMENT '' ,
    PRIMARY KEY (DATA_ID)
) COMMENT = '指标校验结果表' ENGINE=InnoDB;
