CREATE TABLE GP_BM_USER_TAB_COLS(
    DATA_ID VARCHAR(64) NOT NULL   COMMENT '数据ID' ,
    TABLE_NAME VARCHAR(30)    COMMENT '' ,
    COLUMN_NAME VARCHAR(30)    COMMENT '' ,
    DATA_TYPE VARCHAR(106)    COMMENT '' ,
    DATA_LENGTH NUMERIC(38,0)    COMMENT '' ,
    DATA_PRECISION NUMERIC(38,0)    COMMENT '' ,
    DATA_SCALE NUMERIC(38,0)    COMMENT '' ,
    NULLABLE VARCHAR(1)    COMMENT '' ,
    COLUMN_ID NUMERIC(38,0)    COMMENT '' ,
    CHAR_LENGTH NUMERIC(38,0)    COMMENT '' ,
    DATA_HASH VARCHAR(64)    COMMENT '' ,
    PRIMARY KEY (DATA_ID)
) COMMENT = '数据库用户表属性表' ENGINE=InnoDB;
