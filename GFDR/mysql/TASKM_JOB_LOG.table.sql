CREATE TABLE TASKM_JOB_LOG(
    ID NUMERIC(10) NOT NULL   COMMENT '' ,
    CREATED_TIME TIMESTAMP    COMMENT '' ,
    LAST_MODIFIED_TIME TIMESTAMP    COMMENT '' ,
    VERSION NUMERIC(10) NOT NULL   COMMENT '' ,
    CAUSE_BY TEXT    COMMENT '' ,
    CONTENT TEXT    COMMENT '' ,
    EXECUTION_ID NUMERIC(19) NOT NULL   COMMENT '' ,
    LOG_LEVEL VARCHAR(16)    COMMENT '' ,
    STEP_NAME VARCHAR(32)    COMMENT '' ,
    TYPE VARCHAR(16)    COMMENT '' ,
    PRIMARY KEY (ID)
) COMMENT = '' ENGINE=InnoDB;

ALTER TABLE TASKM_JOB_LOG ADD INDEX IDX6VRCBVIX2TEHVJ5OBA7C9ET8J(EXECUTION_ID,STEP_NAME);