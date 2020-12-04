CREATE TABLE GP_QC_TYPE(
    DATA_ID VARCHAR(64) NOT NULL   COMMENT '数据ID' ,
    DATA_DATE CHAR(8)    COMMENT '数据日期' ,
    CORP_ID VARCHAR(14)    COMMENT '法人机构号' ,
    ORG_ID VARCHAR(14)    COMMENT '机构号' ,
    GROUP_ID VARCHAR(100)    COMMENT '部门编号' ,
    INQ_ORG_ID VARCHAR(32)    COMMENT '查询机构号' ,
    INQ_GROUP_ID VARCHAR(32)    COMMENT '查询组号' ,
    TYPE_DESC VARCHAR(512)    COMMENT '类型描述' ,
    ENCODING VARCHAR(32)    COMMENT '字符编码 用于字段长度校验；为空表示校验字符个数' ,
    MIN_LENGTH INT    COMMENT '字段长度下限 含下限' ,
    MAX_LENGTH INT    COMMENT '字段长度上限 含上限' ,
    MIN_VALUE DECIMAL(32,10)    COMMENT '数值下限 含下限' ,
    MAX_VALUE DECIMAL(32,10)    COMMENT '数值上限 含上限' ,
    MAX_PRECISION INT    COMMENT '数值总位数上限 含上限' ,
    MIN_SCALE INT    COMMENT '数值小数位数下限 含下限' ,
    MAX_SCALE INT    COMMENT '数值小数位数上限 含上限' ,
    ENUMERATION VARCHAR(3072)    COMMENT '枚举值 以「,」分隔' ,
    PATTERN VARCHAR(1024)    COMMENT '正则表达式' ,
    IN_ENTITY VARCHAR(128)    COMMENT '存在于某实体 IN_ENTITY 和 IN_FIELD 合并使用' ,
    IN_FIELD VARCHAR(128)    COMMENT '存在于某字段' ,
    EXISTS_SQL VARCHAR(3072)    COMMENT 'SQL 校验 以 SQL 能否查询到结果作为校验条件' ,
    DATA_HASH VARCHAR(64)    COMMENT 'SQL 校验缓存用 key 以「,」分隔；批量校验时使用' ,
    SCRIPT VARCHAR(3072)    COMMENT '校验脚本 Groovy' ,
    BEAN VARCHAR(128)    COMMENT 'Spring Bean 名称' ,
    CHECK_FLAG CHAR(1)    COMMENT '校验标识' ,
    CHECK_DESC VARCHAR(3072)    COMMENT '校验结果' ,
    CHECK_ERR_TYPE CHAR(1)    COMMENT '校验失败类型' ,
    NEXT_ACTION CHAR(2)    COMMENT '下一动作' ,
    DATA_STATUS CHAR(2)    COMMENT '数据状态' ,
    DATA_FLAG CHAR(1)    COMMENT '数据是否已删除' ,
    DATA_OP CHAR(1)    COMMENT '数据操作 A：新增，D:删除, M:修改' ,
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
) COMMENT = '类型定义表' ENGINE=InnoDB;
