CREATE TABLE GP_BM_ID_FILEDATA(
    GUID VARCHAR(32) NOT NULL   COMMENT 'UUID' ,
    DEPART_ID VARCHAR(32) NOT NULL   COMMENT '' ,
    FILE_NAME VARCHAR(128) NOT NULL   COMMENT '' ,
    TABLE_NAME VARCHAR(128) NOT NULL   COMMENT '' ,
    BATCH_NO NUMERIC(38,0) NOT NULL   COMMENT '' ,
    FILE_OWNER VARCHAR(32) NOT NULL   COMMENT '' ,
    FORMAT_TYPE VARCHAR(1) NOT NULL   COMMENT '' ,
    LIST_SEPARATOR VARCHAR(10)    COMMENT '' ,
    SEQUENCE_NO NUMERIC(38,0)    COMMENT '' ,
    IMPORT_TIME VARCHAR(2)    COMMENT '' ,
    KEY_FLAG VARCHAR(1)    COMMENT '' ,
    START_ROW NUMERIC(38,0)    COMMENT '' ,
    START_COLUMN NUMERIC(38,0)    COMMENT '' ,
    ENDROW_FLAG VARCHAR(1)    COMMENT '' ,
    END_COLUMN NUMERIC(38,0)    COMMENT '' ,
    SHEET_NUM NUMERIC(38,0)    COMMENT '' ,
    MAIN_FLAG VARCHAR(2)    COMMENT '' ,
    FUID VARCHAR(32)    COMMENT '' ,
    COMMENTS VARCHAR(255)    COMMENT '' ,
    FILLER1 VARCHAR(255)    COMMENT '' ,
    FILLER2 VARCHAR(255)    COMMENT '' ,
    FILLER3 VARCHAR(255)    COMMENT '' ,
    FILENAME_FORMAT VARCHAR(200)    COMMENT '' ,
    AUTOIMPORTFLAG VARCHAR(2)    COMMENT '' ,
    FUNCNAME VARCHAR(60)    COMMENT '' ,
    FUNCID VARCHAR(60)    COMMENT '' ,
    CHECK_TABLE VARCHAR(20)    COMMENT '' ,
    IMPORT_TYPE VARCHAR(2)    COMMENT '' ,
    JOB_TYPE VARCHAR(2)    COMMENT '' ,
    ARGS VARCHAR(30)    COMMENT '' ,
    END_ROW NUMERIC(38,0)    COMMENT '' ,
    TABLE_COMMENTS VARCHAR(128)    COMMENT '' ,
    PDATA_ID VARCHAR(64)    COMMENT '' ,
    DATA_HASH VARCHAR(64)    COMMENT '' ,
    PRIMARY KEY (GUID)
) COMMENT = '数据导入表' ENGINE=InnoDB;
