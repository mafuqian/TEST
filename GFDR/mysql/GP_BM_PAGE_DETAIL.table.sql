CREATE TABLE GP_BM_PAGE_DETAIL(
    DATA_ID VARCHAR(64) NOT NULL   COMMENT '数据ID' ,
    DATA_DATE CHAR(8)    COMMENT '数据日期' ,
    CORP_ID VARCHAR(14)    COMMENT '法人机构号' ,
    ORG_ID VARCHAR(14)    COMMENT '机构号' ,
    GROUP_ID VARCHAR(100)    COMMENT '部门编号' ,
    NEXT_ACTION CHAR(2)    COMMENT '下一动作' ,
    DATA_STATUS CHAR(2)    COMMENT '数据状态' ,
    DATA_FLAG CHAR(1)    COMMENT '数据是否已删除' ,
    DATA_SOURCE CHAR(1)    COMMENT '数据来源' ,
    CHECK_FLAG CHAR(1)    COMMENT '校验标识' ,
    CHECK_DESC VARCHAR(3072)    COMMENT '校验结果' ,
    CHECK_ERR_TYPE CHAR(1)    COMMENT '校验失败类型' ,
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
    REMARK VARCHAR(512)    COMMENT '备注' ,
    NAME VARCHAR(256)    COMMENT '类型名称' ,
    DESC_INFO VARCHAR(512)    COMMENT '类型描述' ,
    PAGFE_URL VARCHAR(256)    COMMENT '关联页面url' ,
    PARAM_LIST VARCHAR(512)    COMMENT '页面参数' ,
    PARENT CHAR(32)    COMMENT '上级ITEM' ,
    UPID CHAR(32)    COMMENT '上级明细对象ID' ,
    SEQID NUMERIC(38,0)    COMMENT '显示顺序' ,
    OPT_DETAILS VARCHAR(512)    COMMENT '关联动作' ,
    STATUS CHAR(1)    COMMENT '状态' ,
    LAST_UPD_TLR VARCHAR(20)    COMMENT '最后更新人' ,
    LAST_UPD_TIME CHAR(17)    COMMENT '最后更新时间' 
) COMMENT = '页面组合明细表' ENGINE=InnoDB;
