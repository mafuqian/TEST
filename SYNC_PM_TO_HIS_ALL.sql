prompt PL/SQL Developer Export User Objects for user MBT_USER@10.1.3.62/ORADB
prompt Created by 77164 on 2020å¹´8æœˆ12æ—¥
set define off
spool SYNC_PM_TO_HIS_ALL.log

prompt
prompt Creating procedure SYNC_PM_TO_HIS_110
prompt =====================================
prompt
CREATE OR REPLACE PROCEDURE "SYNC_PM_TO_HIS_110"(ERRCODE  OUT VARCHAR,
                                           ERRMSG  OUT VARCHAR) AS V_NOW_DATE CHAR(8);
V_NOW_TIME CHAR(14);
BEGIN
SELECT
TO_CHAR(SYSDATE,'YYYYMMDD')
INTO
V_NOW_DATE
FROM
DUAL;
SELECT
    TO_CHAR(SYSDATE, 'YYYYMMDDHH24MISS')
INTO
    V_NOW_TIME
FROM
    DUAL;

DELETE
FROM
    MBT_110_C_HIS
WHERE
   PDATA_ID in (SELECT DATA_ID FROM MBT_110_HIS WHERE HIS_DATE=V_NOW_DATE AND DATA_STATUS='23' );
DELETE
FROM
    MBT_110_HIS
WHERE
    HIS_DATE=V_NOW_DATE AND DATA_STATUS='23';
COMMIT;
--²åÈëÖ÷±í
MERGE
INTO
    MBT_110_HIS TARGET
USING
    (
      SELECT
            M.DATA_ID,
            M.DATA_DATE,
            M.CORP_ID,
            M.ORG_ID,
            M.CUST_NO,
            M.GROUP_ID,
            M.INQ_ORG_ID,
            M.INQ_GROUP_ID,
            M.B_INF_REC_TYPE,
            M.B_NAME,
            M.B_ID_TYPE,
            M.B_ID_NUM,
            M.B_INF_SURC_CODE,
            M.B_RPT_DATE,
            M.B_RPT_DATE_CODE,
            M.B_CIMOC,
            M.B_CUSTOMER_TYPE,
            M.C_ID_INFO_UP_DATE,
            M.D_SEX,
            M.D_DOB,
            M.D_NATION,
            M.D_HOUSE_ADD,
            M.D_HH_DIST,
            M.D_CELL_PHONE,
            M.D_EMAIL,
            M.D_FCS_INFO_UP_DATE,
            M.E_MARI_STATUS,
            M.E_SPO_NAME,
            M.E_SPO_ID_TYPE,
            M.E_SPO_ID_NUM,
            M.E_SPO_TEL,
            M.E_SPS_CMPY_NM,
            M.E_SPS_INFO_UP_DATE,
            M.F_EDU_LEVEL,
            M.F_ACA_DEGREE,
            M.F_EDU_INFO_UP_DATE,
            M.G_EMP_STATUS,
            M.G_CPN_NAME,
            M.G_CPN_TYPE,
            M.G_INDUSTRY,
            M.G_CPN_ADDR,
            M.G_CPN_PC,
            M.G_CPN_DIST,
            M.G_CPN_TEL,
            M.G_OCCUPATION,
            M.G_TITLE,
            M.G_TECH_TITLE,
            M.G_WORK_START_DATE,
            M.G_OCTPN_INFO_UP_DATE,
            M.H_RESI_STATUS,
            M.H_RESI_ADDR,
            M.H_RESI_PC,
            M.H_RESI_DIST,
            M.H_HOME_TEL,
            M.H_RESI_INFO_UP_DATE,
            M.I_MAIL_ADDR,
            M.I_MAIL_PC,
            M.I_MAIL_DIST,
            M.I_MLG_INFO_UP_DATE,
            M.J_ANNL_INC,
            M.J_ANNL_INC_LCY,
            M.J_TAX_INCOME,
            M.J_TAX_INCOME_LCY,
            M.J_INC_INFO_UP_DATE,
            M.REMARKS,
            M.CHECK_FLAG,
            M.CHECK_DESC,
            M.CHECK_ERR_TYPE,
            M.NEXT_ACTION,
            M.DATA_STATUS,
            M.DATA_FLAG,
            M.DATA_SOURCE,
            M.DATA_VERSION,
            M.DATA_REJ_DESC,
            M.DATA_DEL_DESC,
            M.DATA_CRT_USER,
            M.DATA_CRT_DATE,
            M.DATA_CRT_TIME,
            M.DATA_CHG_USER,
            M.DATA_CHG_DATE,
            M.DATA_CHG_TIME,
            M.DATA_APV_USER,
            M.DATA_APV_DATE,
            M.DATA_APV_TIME,
            M.RSV1,
            M.RSV2,
            M.RSV3,
            M.RSV4,
            M.RSV5,
            M.DATA_DESC,
            M.IS_RPT
        FROM
            MBT_110 M
        WHERE
            M.DATA_STATUS='21' AND M.B_RPT_DATE <= V_NOW_DATE
            AND (SELECT COUNT(1) AS CNT FROM MBT_110_HIS N, MBT_110_RPT R WHERE R.ODS_DATA_ID=N.DATA_ID
            AND N.ODS_DATA_ID=M.DATA_ID AND N.HIS_DATE=V_NOW_DATE AND R.RPT_DATE<=V_NOW_DATE AND R.DATA_STATUS !='24' )<1 ) SOURCE
ON
    (TARGET.DATA_ID = SOURCE.DATA_ID)
WHEN NOT MATCHED
    THEN
INSERT
    (
        TARGET.DATA_ID,
        TARGET.ODS_DATA_ID,
        TARGET.HIS_DATE,
        TARGET.HIS_DATE_TIME,
        TARGET.DATA_DATE,
        TARGET.CORP_ID,
        TARGET.ORG_ID,
        TARGET.CUST_NO,
        TARGET.GROUP_ID,
        TARGET.INQ_ORG_ID,
        TARGET.INQ_GROUP_ID,
        TARGET.B_INF_REC_TYPE,
        TARGET.B_NAME,
        TARGET.B_ID_TYPE,
        TARGET.B_ID_NUM,
        TARGET.B_INF_SURC_CODE,
        TARGET.B_RPT_DATE,
        TARGET.B_RPT_DATE_CODE,
        TARGET.B_CIMOC,
        TARGET.B_CUSTOMER_TYPE,
        TARGET.C_ID_INFO_UP_DATE,
        TARGET.D_SEX,
        TARGET.D_DOB,
        TARGET.D_NATION,
        TARGET.D_HOUSE_ADD,
        TARGET.D_HH_DIST,
        TARGET.D_CELL_PHONE,
        TARGET.D_EMAIL,
        TARGET.D_FCS_INFO_UP_DATE,
        TARGET.E_MARI_STATUS,
        TARGET.E_SPO_NAME,
        TARGET.E_SPO_ID_TYPE,
        TARGET.E_SPO_ID_NUM,
        TARGET.E_SPO_TEL,
        TARGET.E_SPS_CMPY_NM,
        TARGET.E_SPS_INFO_UP_DATE,
        TARGET.F_EDU_LEVEL,
        TARGET.F_ACA_DEGREE,
        TARGET.F_EDU_INFO_UP_DATE,
        TARGET.G_EMP_STATUS,
        TARGET.G_CPN_NAME,
        TARGET.G_CPN_TYPE,
        TARGET.G_INDUSTRY,
        TARGET.G_CPN_ADDR,
        TARGET.G_CPN_PC,
        TARGET.G_CPN_DIST,
        TARGET.G_CPN_TEL,
        TARGET.G_OCCUPATION,
        TARGET.G_TITLE,
        TARGET.G_TECH_TITLE,
        TARGET.G_WORK_START_DATE,
        TARGET.G_OCTPN_INFO_UP_DATE,
        TARGET.H_RESI_STATUS,
        TARGET.H_RESI_ADDR,
        TARGET.H_RESI_PC,
        TARGET.H_RESI_DIST,
        TARGET.H_HOME_TEL,
        TARGET.H_RESI_INFO_UP_DATE,
        TARGET.I_MAIL_ADDR,
        TARGET.I_MAIL_PC,
        TARGET.I_MAIL_DIST,
        TARGET.I_MLG_INFO_UP_DATE,
        TARGET.J_ANNL_INC,
        TARGET.J_TAX_INCOME,
        TARGET.J_ANNL_INC_LCY,
        TARGET.J_TAX_INCOME_LCY,
        TARGET.J_INC_INFO_UP_DATE,
        TARGET.REMARKS,
        TARGET.CHECK_FLAG,
        TARGET.CHECK_DESC,
        TARGET.CHECK_ERR_TYPE,
        TARGET.NEXT_ACTION,
        TARGET.DATA_STATUS,
        TARGET.DATA_FLAG,
        TARGET.DATA_SOURCE,
        TARGET.DATA_VERSION,
        TARGET.DATA_REJ_DESC,
        TARGET.DATA_DEL_DESC,
        TARGET.DATA_CRT_USER,
        TARGET.DATA_CRT_DATE,
        TARGET.DATA_CRT_TIME,
        TARGET.DATA_CHG_USER,
        TARGET.DATA_CHG_DATE,
        TARGET.DATA_CHG_TIME,
        TARGET.DATA_APV_USER,
        TARGET.DATA_APV_DATE,
        TARGET.DATA_APV_TIME,
        TARGET.RSV1,
        TARGET.RSV2,
        TARGET.RSV3,
        TARGET.RSV4,
        TARGET.RSV5,
        TARGET.DATA_DESC,
        TARGET.IS_RPT
    )
    VALUES
    (
        GET_DATA_ID(V_NOW_DATE),
        SOURCE.DATA_ID,
        V_NOW_DATE,
        V_NOW_TIME,
        SOURCE.DATA_DATE,
        SOURCE.CORP_ID,
        SOURCE.ORG_ID,
        SOURCE.CUST_NO,
        SOURCE.GROUP_ID,
        SOURCE.INQ_ORG_ID,
        SOURCE.INQ_GROUP_ID,
        SOURCE.B_INF_REC_TYPE,
        SOURCE.B_NAME,
        SOURCE.B_ID_TYPE,
        SOURCE.B_ID_NUM,
        SOURCE.B_INF_SURC_CODE,
        SOURCE.B_RPT_DATE,
        SOURCE.B_RPT_DATE_CODE,
        SOURCE.B_CIMOC,
        SOURCE.B_CUSTOMER_TYPE,
        SOURCE.C_ID_INFO_UP_DATE,
        SOURCE.D_SEX,
        SOURCE.D_DOB,
        SOURCE.D_NATION,
        SOURCE.D_HOUSE_ADD,
        SOURCE.D_HH_DIST,
        SOURCE.D_CELL_PHONE,
        SOURCE.D_EMAIL,
        SOURCE.D_FCS_INFO_UP_DATE,
        SOURCE.E_MARI_STATUS,
        SOURCE.E_SPO_NAME,
        SOURCE.E_SPO_ID_TYPE,
        SOURCE.E_SPO_ID_NUM,
        SOURCE.E_SPO_TEL,
        SOURCE.E_SPS_CMPY_NM,
        SOURCE.E_SPS_INFO_UP_DATE,
        SOURCE.F_EDU_LEVEL,
        SOURCE.F_ACA_DEGREE,
        SOURCE.F_EDU_INFO_UP_DATE,
        SOURCE.G_EMP_STATUS,
        SOURCE.G_CPN_NAME,
        SOURCE.G_CPN_TYPE,
        SOURCE.G_INDUSTRY,
        SOURCE.G_CPN_ADDR,
        SOURCE.G_CPN_PC,
        SOURCE.G_CPN_DIST,
        SOURCE.G_CPN_TEL,
        SOURCE.G_OCCUPATION,
        SOURCE.G_TITLE,
        SOURCE.G_TECH_TITLE,
        SOURCE.G_WORK_START_DATE,
        SOURCE.G_OCTPN_INFO_UP_DATE,
        SOURCE.H_RESI_STATUS,
        SOURCE.H_RESI_ADDR,
        SOURCE.H_RESI_PC,
        SOURCE.H_RESI_DIST,
        SOURCE.H_HOME_TEL,
        SOURCE.H_RESI_INFO_UP_DATE,
        SOURCE.I_MAIL_ADDR,
        SOURCE.I_MAIL_PC,
        SOURCE.I_MAIL_DIST,
        SOURCE.I_MLG_INFO_UP_DATE,
        SOURCE.J_ANNL_INC,
        SOURCE.J_ANNL_INC_LCY,
        SOURCE.J_TAX_INCOME,
        SOURCE.J_TAX_INCOME_LCY,
        SOURCE.J_INC_INFO_UP_DATE,
        SOURCE.REMARKS,
        SOURCE.CHECK_FLAG,
        SOURCE.CHECK_DESC,
        SOURCE.CHECK_ERR_TYPE,
        SOURCE.NEXT_ACTION,
        '23',
        SOURCE.DATA_FLAG,
        SOURCE.DATA_SOURCE,
        SOURCE.DATA_VERSION,
        SOURCE.DATA_REJ_DESC,
        SOURCE.DATA_DEL_DESC,
        SOURCE.DATA_CRT_USER,
        SOURCE.DATA_CRT_DATE,
        SOURCE.DATA_CRT_TIME,
        SOURCE.DATA_CHG_USER,
        SOURCE.DATA_CHG_DATE,
        SOURCE.DATA_CHG_TIME,
        SOURCE.DATA_APV_USER,
        SOURCE.DATA_APV_DATE,
        SOURCE.DATA_APV_TIME,
        SOURCE.RSV1,
        SOURCE.RSV2,
        SOURCE.RSV3,
        SOURCE.RSV4,
        SOURCE.RSV5,
        SOURCE.DATA_DESC,
        SOURCE.IS_RPT
    );
COMMIT;
--²åÈë×Ó±í
MERGE
INTO
    MBT_110_C_HIS TARGET
USING
    (
        SELECT
            C.DATA_ID,
            A.DATA_ID PDATA_ID,
            C.ALIAS,
            C.OTH_ID_TYPE,
            C.OTH_ID_NUM,
            C.ID_INFO_UP_DATE
        FROM
            MBT_110_HIS A
        LEFT JOIN
            MBT_110_C C
        ON
            C.PDATA_ID=A.ODS_DATA_ID
        WHERE
            A.DATA_STATUS='23'
        AND A.HIS_DATE=V_NOW_DATE AND A.B_RPT_DATE <= V_NOW_DATE ) SOURCE
ON
    ( TARGET.DATA_ID = SOURCE.DATA_ID)
WHEN NOT MATCHED
    THEN
INSERT
    (
        TARGET.DATA_ID,
        TARGET.PDATA_ID,
        TARGET.ALIAS,
        TARGET.OTH_ID_TYPE,
        TARGET.OTH_ID_NUM,
        TARGET.ID_INFO_UP_DATE,
        TARGET.ODS_DATA_ID,
        TARGET.HIS_DATE,
        TARGET.HIS_TIME
    )
    VALUES
    (
        GET_DATA_ID(V_NOW_DATE),
        SOURCE.PDATA_ID,
        SOURCE.ALIAS,
        SOURCE.OTH_ID_TYPE,
        SOURCE.OTH_ID_NUM,
        SOURCE.ID_INFO_UP_DATE,
        SOURCE.DATA_ID,
        V_NOW_DATE,
        V_NOW_TIME
    );
COMMIT;
EXCEPTION
WHEN OTHERS THEN
    ERRCODE := SQLCODE;
    ERRMSG := SUBSTR(SQLERRM,1,200);
ROLLBACK;
RETURN;
END;
/

prompt
prompt Creating procedure SYNC_PM_TO_HIS_120
prompt =====================================
prompt
CREATE OR REPLACE PROCEDURE "SYNC_PM_TO_HIS_120"(ERRCODE   OUT VARCHAR,
                                           ERRMSG   OUT VARCHAR) AS V_NOW_DATE CHAR(8);
V_NOW_TIME CHAR(14);
BEGIN
    SELECT
        TO_CHAR(SYSDATE,'YYYYMMDD')
    INTO
        V_NOW_DATE
    FROM
        DUAL;
SELECT
    TO_CHAR(SYSDATE, 'YYYYMMDDHH24MISS')
INTO
    V_NOW_TIME
FROM
    DUAL;
DELETE
FROM
    MBT_120_HIS
WHERE
    HIS_DATE=V_NOW_DATE and DATA_STATUS='23';
COMMIT;
--²åÈëÖ÷±í
MERGE
INTO
    MBT_120_HIS TARGET
USING
    (
        SELECT
           M.DATA_DATE,
           M.CORP_ID,
           M.ORG_ID,
           M.GROUP_ID,
           M.INQ_ORG_ID,
           M.INQ_GROUP_ID,
           M.DATA_ID,
           M.INF_REC_TYPE,
           M.NAME,
           M.ID_TYPE,
           M.ID_NUM,
           M.FAM_MEM_NAME,
           M.FAM_MEM_CET_TYPE,
           M.FAM_MEM_CERT_NUM,
           M.FAM_REL,
           M.FAM_RELA_ASS_FLAG,
           M.INF_SURC_CODE,
           M.RPT_DATE,
           M.DATA_DESC,
           M.REMARKS,
           M.CHECK_FLAG,
           M.CHECK_DESC,
           M.CHECK_ERR_TYPE,
           M.NEXT_ACTION,
           M.DATA_STATUS,
           M.DATA_FLAG,
           M.DATA_SOURCE,
           M.DATA_VERSION,
           M.DATA_REJ_DESC,
           M.DATA_DEL_DESC,
           M.DATA_CRT_USER,
           M.DATA_CRT_DATE,
           M.DATA_CRT_TIME,
           M.DATA_CHG_USER,
           M.DATA_CHG_DATE,
           M.DATA_CHG_TIME,
           M.DATA_APV_USER,
           M.DATA_APV_DATE,
           M.DATA_APV_TIME,
           M.RSV1,
           M.RSV2,
           M.RSV3,
           M.RSV4,
           M.RSV5,
           M.IS_RPT
        FROM
            MBT_120 M
        WHERE
             M.DATA_STATUS='21') SOURCE
ON
    (
        TARGET.DATA_ID = SOURCE.DATA_ID)
WHEN NOT MATCHED
    THEN
INSERT
    (
        TARGET.DATA_DATE,
        TARGET.CORP_ID,
        TARGET.ORG_ID,
        TARGET.GROUP_ID,
        TARGET.INQ_ORG_ID,
        TARGET.INQ_GROUP_ID,
        TARGET.DATA_ID,
        TARGET.INF_REC_TYPE,
        TARGET.NAME,
        TARGET.ID_TYPE,
        TARGET.ID_NUM,
        TARGET.FAM_MEM_NAME,
        TARGET.FAM_MEM_CET_TYPE,
        TARGET.FAM_MEM_CERT_NUM,
        TARGET.FAM_REL,
        TARGET.FAM_RELA_ASS_FLAG,
        TARGET.INF_SURC_CODE,
        TARGET.RPT_DATE,
        TARGET.DATA_DESC,
        TARGET.REMARKS,
        TARGET.CHECK_FLAG,
        TARGET.CHECK_DESC,
        TARGET.CHECK_ERR_TYPE,
        TARGET.NEXT_ACTION,
        TARGET.DATA_STATUS,
        TARGET.DATA_FLAG,
        TARGET.DATA_SOURCE,
        TARGET.DATA_VERSION,
        TARGET.DATA_REJ_DESC,
        TARGET.DATA_DEL_DESC,
        TARGET.DATA_CRT_USER,
        TARGET.DATA_CRT_DATE,
        TARGET.DATA_CRT_TIME,
        TARGET.DATA_CHG_USER,
        TARGET.DATA_CHG_DATE,
        TARGET.DATA_CHG_TIME,
        TARGET.DATA_APV_USER,
        TARGET.DATA_APV_DATE,
        TARGET.DATA_APV_TIME,
        TARGET.RSV1,
        TARGET.RSV2,
        TARGET.RSV3,
        TARGET.RSV4,
        TARGET.RSV5,
        TARGET.ODS_DATA_ID,
        TARGET.HIS_DATE,
        TARGET.HIS_DATE_TIME,
        TARGET.IS_RPT
    )
    VALUES
    (
        SOURCE.DATA_DATE,
        SOURCE.CORP_ID,
        SOURCE.ORG_ID,
        SOURCE.GROUP_ID,
        SOURCE.INQ_ORG_ID,
        SOURCE.INQ_GROUP_ID,
        GET_DATA_ID(V_NOW_DATE),
        SOURCE.INF_REC_TYPE,
        SOURCE.NAME,
        SOURCE.ID_TYPE,
        SOURCE.ID_NUM,
        SOURCE.FAM_MEM_NAME,
        SOURCE.FAM_MEM_CET_TYPE,
        SOURCE.FAM_MEM_CERT_NUM,
        SOURCE.FAM_REL,
        SOURCE.FAM_RELA_ASS_FLAG,
        SOURCE.INF_SURC_CODE,
        SOURCE.RPT_DATE,
        SOURCE.DATA_DESC,
        SOURCE.REMARKS,
        SOURCE.CHECK_FLAG,
        SOURCE.CHECK_DESC,
        SOURCE.CHECK_ERR_TYPE,
        SOURCE.NEXT_ACTION,
        '23',
        SOURCE.DATA_FLAG,
        SOURCE.DATA_SOURCE,
        SOURCE.DATA_VERSION,
        SOURCE.DATA_REJ_DESC,
        SOURCE.DATA_DEL_DESC,
        SOURCE.DATA_CRT_USER,
        SOURCE.DATA_CRT_DATE,
        SOURCE.DATA_CRT_TIME,
        SOURCE.DATA_CHG_USER,
        SOURCE.DATA_CHG_DATE,
        SOURCE.DATA_CHG_TIME,
        SOURCE.DATA_APV_USER,
        SOURCE.DATA_APV_DATE,
        SOURCE.DATA_APV_TIME,
        SOURCE.RSV1,
        SOURCE.RSV2,
        SOURCE.RSV3,
        SOURCE.RSV4,
        SOURCE.RSV5,
        SOURCE.DATA_ID,
        V_NOW_DATE,
        V_NOW_TIME,
        SOURCE.IS_RPT
    );
COMMIT;
EXCEPTION
WHEN OTHERS THEN
    ERRCODE := SQLCODE;
ERRMSG := SUBSTR(SQLERRM,1,200);
ROLLBACK;
RETURN;
END;
/

prompt
prompt Creating procedure SYNC_PM_TO_HIS_130
prompt =====================================
prompt
CREATE OR REPLACE PROCEDURE "SYNC_PM_TO_HIS_130"(ERRCODE   OUT VARCHAR,
                                           ERRMSG   OUT VARCHAR) AS V_NOW_DATE CHAR(8);
V_NOW_TIME CHAR(14);
BEGIN
    SELECT
        TO_CHAR(SYSDATE,'YYYYMMDD')
    INTO
        V_NOW_DATE
    FROM
        DUAL;
SELECT
    TO_CHAR(SYSDATE, 'YYYYMMDDHH24MISS')
INTO
    V_NOW_TIME
FROM
    DUAL;
DELETE
FROM
    MBT_130_HIS
WHERE
    HIS_DATE=V_NOW_DATE and DATA_STATUS='23';
COMMIT;
--²åÈëÖ÷±í
MERGE
INTO
    MBT_130_HIS TARGET
USING
    (
        SELECT
            DATA_DATE,
            CORP_ID,
            ORG_ID,
            GROUP_ID,
            INQ_ORG_ID,
            INQ_GROUP_ID,
            DATA_ID,
            INF_REC_TYPE,
            NAME,
            ID_TYPE,
            ID_NUM,
            ID_EFCT_DATE,
            ID_DUE_DATE,
            ID_ORG_NAME,
            ID_DIST,
            CIMOC,
            INF_SURC_CODE,
            RPT_DATE,
            DATA_DESC,
            REMARKS,
            CHECK_FLAG,
            CHECK_DESC,
            CHECK_ERR_TYPE,
            NEXT_ACTION,
            DATA_STATUS,
            DATA_FLAG,
            DATA_SOURCE,
            DATA_VERSION,
            DATA_REJ_DESC,
            DATA_DEL_DESC,
            DATA_CRT_USER,
            DATA_CRT_DATE,
            DATA_CRT_TIME,
            DATA_CHG_USER,
            DATA_CHG_DATE,
            DATA_CHG_TIME,
            DATA_APV_USER,
            DATA_APV_DATE,
            DATA_APV_TIME,
            RSV1,
            RSV2,
            RSV3,
            RSV4,
            RSV5,
            IS_RPT
        FROM
            MBT_130
        WHERE
            DATA_STATUS='21') SOURCE
ON
    (
        TARGET.DATA_ID = SOURCE.DATA_ID)
WHEN NOT MATCHED
    THEN
INSERT
    (
        TARGET.DATA_DATE,
        TARGET.CORP_ID,
        TARGET.ORG_ID,
        TARGET.GROUP_ID,
        TARGET.INQ_ORG_ID,
        TARGET.INQ_GROUP_ID,
        TARGET.DATA_ID,
        TARGET.INF_REC_TYPE,
        TARGET.NAME,
        TARGET.ID_TYPE,
        TARGET.ID_NUM,
        TARGET.ID_EFCT_DATE,
        TARGET.ID_DUE_DATE,
        TARGET.ID_ORG_NAME,
        TARGET.ID_DIST,
        TARGET.CIMOC,
        TARGET.INF_SURC_CODE,
        TARGET.RPT_DATE,
        TARGET.DATA_DESC,
        TARGET.REMARKS,
        TARGET.CHECK_FLAG,
        TARGET.CHECK_DESC,
        TARGET.CHECK_ERR_TYPE,
        TARGET.NEXT_ACTION,
        TARGET.DATA_STATUS,
        TARGET.DATA_FLAG,
        TARGET.DATA_SOURCE,
        TARGET.DATA_VERSION,
        TARGET.DATA_REJ_DESC,
        TARGET.DATA_DEL_DESC,
        TARGET.DATA_CRT_USER,
        TARGET.DATA_CRT_DATE,
        TARGET.DATA_CRT_TIME,
        TARGET.DATA_CHG_USER,
        TARGET.DATA_CHG_DATE,
        TARGET.DATA_CHG_TIME,
        TARGET.DATA_APV_USER,
        TARGET.DATA_APV_DATE,
        TARGET.DATA_APV_TIME,
        TARGET.RSV1,
        TARGET.RSV2,
        TARGET.RSV3,
        TARGET.RSV4,
        TARGET.RSV5,
        TARGET.ODS_DATA_ID,
        TARGET.HIS_DATE,
        TARGET.HIS_DATE_TIME,
        TARGET.IS_RPT
    )
    VALUES
    (
        SOURCE.DATA_DATE,
        SOURCE.CORP_ID,
        SOURCE.ORG_ID,
        SOURCE.GROUP_ID,
        SOURCE.INQ_ORG_ID,
        SOURCE.INQ_GROUP_ID,
        GET_DATA_ID(V_NOW_DATE),
        SOURCE.INF_REC_TYPE,
        SOURCE.NAME,
        SOURCE.ID_TYPE,
        SOURCE.ID_NUM,
        SOURCE.ID_EFCT_DATE,
        SOURCE.ID_DUE_DATE,
        SOURCE.ID_ORG_NAME,
        SOURCE.ID_DIST,
        SOURCE.CIMOC,
        SOURCE.INF_SURC_CODE,
        SOURCE.RPT_DATE,
        SOURCE.DATA_DESC,
        SOURCE.REMARKS,
        SOURCE.CHECK_FLAG,
        SOURCE.CHECK_DESC,
        SOURCE.CHECK_ERR_TYPE,
        SOURCE.NEXT_ACTION,
        '23',
        SOURCE.DATA_FLAG,
        SOURCE.DATA_SOURCE,
        SOURCE.DATA_VERSION,
        SOURCE.DATA_REJ_DESC,
        SOURCE.DATA_DEL_DESC,
        SOURCE.DATA_CRT_USER,
        SOURCE.DATA_CRT_DATE,
        SOURCE.DATA_CRT_TIME,
        SOURCE.DATA_CHG_USER,
        SOURCE.DATA_CHG_DATE,
        SOURCE.DATA_CHG_TIME,
        SOURCE.DATA_APV_USER,
        SOURCE.DATA_APV_DATE,
        SOURCE.DATA_APV_TIME,
        SOURCE.RSV1,
        SOURCE.RSV2,
        SOURCE.RSV3,
        SOURCE.RSV4,
        SOURCE.RSV5,
        SOURCE.DATA_ID,
        V_NOW_DATE,
        V_NOW_TIME,
        SOURCE.IS_RPT
    );
COMMIT;
EXCEPTION
WHEN OTHERS THEN
    ERRCODE := SQLCODE;
ERRMSG := SUBSTR(SQLERRM,1,200);
ROLLBACK;
RETURN;
END;
/

prompt
prompt Creating procedure SYNC_PM_TO_HIS_140
prompt =====================================
prompt
CREATE OR REPLACE PROCEDURE "SYNC_PM_TO_HIS_140"(ERRCODE   OUT VARCHAR,
                                           ERRMSG   OUT VARCHAR) AS V_NOW_DATE CHAR(8);
V_NOW_TIME CHAR(14);
BEGIN
    SELECT
        TO_CHAR(SYSDATE,'YYYYMMDD')
    INTO
        V_NOW_DATE
    FROM
        DUAL;
SELECT
    TO_CHAR(SYSDATE, 'YYYYMMDDHH24MISS')
INTO
    V_NOW_TIME
FROM
    DUAL;
DELETE
FROM
    MBT_140_HIS
WHERE
    HIS_DATE=V_NOW_DATE and DATA_STATUS='23';
COMMIT;
--²åÈëÖ÷±í
MERGE
INTO
    MBT_140_HIS TARGET
USING
    (
        SELECT
            DATA_DATE,
            CORP_ID,
            ORG_ID,
            GROUP_ID,
            INQ_ORG_ID,
            INQ_GROUP_ID,
            DATA_ID,
            INF_REC_TYPE,
            NAME,
            ID_TYPE,
            ID_NUM,
            OTH_NAME,
            OTH_ID_TYPE,
            OTH_ID_NUM,
            OTH_ASS_FLG,
            INF_SURC_CODE,
            RPT_DATE,
            DATA_DESC,
            REMARKS,
            CHECK_FLAG,
            CHECK_DESC,
            CHECK_ERR_TYPE,
            NEXT_ACTION,
            DATA_STATUS,
            DATA_FLAG,
            DATA_SOURCE,
            DATA_VERSION,
            DATA_REJ_DESC,
            DATA_DEL_DESC,
            DATA_CRT_USER,
            DATA_CRT_DATE,
            DATA_CRT_TIME,
            DATA_CHG_USER,
            DATA_CHG_DATE,
            DATA_CHG_TIME,
            DATA_APV_USER,
            DATA_APV_DATE,
            DATA_APV_TIME,
            RSV1,
            RSV2,
            RSV3,
            RSV4,
            RSV5,
            IS_RPT
        FROM
            MBT_140
        WHERE
            DATA_STATUS='21') SOURCE
ON
    (
        TARGET.DATA_ID = SOURCE.DATA_ID)
WHEN NOT MATCHED
    THEN
INSERT
    (
        TARGET.DATA_DATE,
        TARGET.CORP_ID,
        TARGET.ORG_ID,
        TARGET.GROUP_ID,
        TARGET.INQ_ORG_ID,
        TARGET.INQ_GROUP_ID,
        TARGET.DATA_ID,
        TARGET.INF_REC_TYPE,
        TARGET.NAME,
        TARGET.ID_TYPE,
        TARGET.ID_NUM,
        TARGET.OTH_NAME,
        TARGET.OTH_ID_TYPE,
        TARGET.OTH_ID_NUM,
        TARGET.OTH_ASS_FLG,
        TARGET.INF_SURC_CODE,
        TARGET.RPT_DATE,
        TARGET.DATA_DESC,
        TARGET.REMARKS,
        TARGET.CHECK_FLAG,
        TARGET.CHECK_DESC,
        TARGET.CHECK_ERR_TYPE,
        TARGET.NEXT_ACTION,
        TARGET.DATA_STATUS,
        TARGET.DATA_FLAG,
        TARGET.DATA_SOURCE,
        TARGET.DATA_VERSION,
        TARGET.DATA_REJ_DESC,
        TARGET.DATA_DEL_DESC,
        TARGET.DATA_CRT_USER,
        TARGET.DATA_CRT_DATE,
        TARGET.DATA_CRT_TIME,
        TARGET.DATA_CHG_USER,
        TARGET.DATA_CHG_DATE,
        TARGET.DATA_CHG_TIME,
        TARGET.DATA_APV_USER,
        TARGET.DATA_APV_DATE,
        TARGET.DATA_APV_TIME,
        TARGET.RSV1,
        TARGET.RSV2,
        TARGET.RSV3,
        TARGET.RSV4,
        TARGET.RSV5,
        TARGET.ODS_DATA_ID,
        TARGET.HIS_DATE,
        TARGET.HIS_DATE_TIME,
        TARGET.IS_RPT
    )
    VALUES
    (
        SOURCE.DATA_DATE,
        SOURCE.CORP_ID,
        SOURCE.ORG_ID,
        SOURCE.GROUP_ID,
        SOURCE.INQ_ORG_ID,
        SOURCE.INQ_GROUP_ID,
        GET_DATA_ID(V_NOW_DATE),
        SOURCE.INF_REC_TYPE,
        SOURCE.NAME,
        SOURCE.ID_TYPE,
        SOURCE.ID_NUM,
        SOURCE.OTH_NAME,
        SOURCE.OTH_ID_TYPE,
        SOURCE.OTH_ID_NUM,
        SOURCE.OTH_ASS_FLG,
        SOURCE.INF_SURC_CODE,
        SOURCE.RPT_DATE,
        SOURCE.DATA_DESC,
        SOURCE.REMARKS,
        SOURCE.CHECK_FLAG,
        SOURCE.CHECK_DESC,
        SOURCE.CHECK_ERR_TYPE,
        SOURCE.NEXT_ACTION,
        '23',
        SOURCE.DATA_FLAG,
        SOURCE.DATA_SOURCE,
        SOURCE.DATA_VERSION,
        SOURCE.DATA_REJ_DESC,
        SOURCE.DATA_DEL_DESC,
        SOURCE.DATA_CRT_USER,
        SOURCE.DATA_CRT_DATE,
        SOURCE.DATA_CRT_TIME,
        SOURCE.DATA_CHG_USER,
        SOURCE.DATA_CHG_DATE,
        SOURCE.DATA_CHG_TIME,
        SOURCE.DATA_APV_USER,
        SOURCE.DATA_APV_DATE,
        SOURCE.DATA_APV_TIME,
        SOURCE.RSV1,
        SOURCE.RSV2,
        SOURCE.RSV3,
        SOURCE.RSV4,
        SOURCE.RSV5,
        SOURCE.DATA_ID,
        V_NOW_DATE,
        V_NOW_TIME,
        SOURCE.IS_RPT
    );
COMMIT;
EXCEPTION
WHEN OTHERS THEN
    ERRCODE := SQLCODE;
ERRMSG := SUBSTR(SQLERRM,1,200);
ROLLBACK;
RETURN;
END;
/

prompt
prompt Creating procedure SYNC_PM_TO_HIS_210
prompt =====================================
prompt
CREATE OR REPLACE PROCEDURE "SYNC_PM_TO_HIS_210"(ERRCODE OUT VARCHAR,
                                                 ERRMSG  OUT VARCHAR) AS
  V_NOW_DATE CHAR(8);
  V_NOW_TIME CHAR(14);
  V_T_DATE   CHAR(8);
BEGIN
  SELECT TO_CHAR(SYSDATE, 'YYYYMMDD') INTO V_NOW_DATE FROM DUAL;
  SELECT TO_CHAR(SYSDATE - 1, 'YYYYMMDD') INTO V_T_DATE FROM DUAL;
  SELECT TO_CHAR(SYSDATE, 'YYYYMMDDHH24MISS') INTO V_NOW_TIME FROM DUAL;

  DELETE FROM MBT_210_D_HIS
   WHERE  pdata_id in (select data_id
                       from MBT_210_HIS
                      where HIS_DATE = V_NOW_DATE
                        and data_status = '23');
  DELETE FROM MBT_210_E_HIS
   WHERE  pdata_id in (select data_id
                       from MBT_210_HIS
                      where HIS_DATE = V_NOW_DATE
                        and data_status = '23'
                       );
  DELETE FROM MBT_210_K_HIS
   WHERE pdata_id in (select data_id
                       from MBT_210_HIS
                      where HIS_DATE = V_NOW_DATE
                        and data_status = '23'
                        );
  DELETE FROM MBT_210_HIS
   WHERE HIS_DATE = V_NOW_DATE
     and DATA_STATUS = '23';
  COMMIT;
  --²åÈëÖ÷±í
  MERGE INTO MBT_210_HIS TARGET
  USING (SELECT M.DATA_ID,
                M.DATA_DATE,
                M.CORP_ID,
                M.ORG_ID,
                M.GROUP_ID,
                M.INQ_ORG_ID,
                M.INQ_GROUP_ID,
                M.REF_NO,
                M.B_INF_REC_TYPE,
                M.B_ACCT_TYPE,
                M.B_ACCT_CODE,
                --  CASE WHEN B_RPT_DATE_CODE ='31' THRN MON_SETTLE_DATE ELSE B_RPT_DATE END AS B_RPT_DATE ,
                CASE
                  WHEN (M.B_RPT_DATE_CODE = '31' OR M.B_RPT_DATE_CODE = '30' OR
                       M.B_RPT_DATE_CODE = '32') AND
                       M.MON_SETTLE_DATE IS NOT NULL THEN
                   M.MON_SETTLE_DATE
                  ELSE
                   M.B_RPT_DATE
                END AS B_RPT_DATE,
                M.B_RPT_DATE_CODE,
                M.B_NAME,
                M.B_ID_TYPE,
                M.B_ID_NUM,
                M.B_MNGMT_ORG_CODE,
                ---ÐÂÔöB_LOAN_CON_CODE||B_FIRST_HOU_LOAN_FLAG
                M.C_LOAN_CON_CODE,
                M.C_FIRST_HOU_LOAN_FLAG,
                M.C_BUSI_LINES,
                M.C_BUSI_DTL_LINES,
                M.C_OPEN_DATE,
                M.C_CY,
                M.C_ACCT_CRED_LINE_AMT_LCY,
                M.C_ACCT_CRED_LINE_AMT,
                M.C_LOAN_AMT_LCY,
                M.C_LOAN_AMT,
                M.C_FLAG,
                M.C_DUE_DATE,
                M.C_REPAY_MODE,
                M.C_REPAY_FREQCY,
                M.C_REPAY_PRD,
                M.C_APPLY_BUSI_DIST,
                M.C_GUAR_MODE,
                M.C_OTH_REPY_GUAR_WAY,
                M.C_ASSET_TRAND_FLAG,
                M.C_FUND_SOU,
                M.C_LOAN_FORM,
                M.C_CREDIT_ID,
                M.F_MCC,
                M.G_INIT_CRED_NAME,
                M.G_INIT_CRED_ORG_NM,
                M.G_ORIG_DBT_CATE,
                M.G_INIT_RPY_STS,
                M.H_MONTH,
                M.H_SETT_DATE,
                M.H_ACCT_STATUS,
                M.H_ACCT_BAL_LCY,
                M.H_ACCT_BAL,
                M.H_PRID_ACCT_BAL_LCY,
                M.H_PRID_ACCT_BAL,
                M.H_USED_AMT_LCY,
                M.H_USED_AMT,
                M.H_NOTLSU_BAL_LCY,
                M.H_NOTLSU_BAL,
                M.H_REM_REP_PRD,
                M.H_FIVE_CATE,
                M.H_FIVE_CATE_ADJ_DATE,
                M.H_RPY_STATUS,
                M.H_RPY_PRCT,
                M.H_OVERD_PRD,
                M.H_TOT_OVERD_LCY,
                M.H_TOT_OVERD,
                M.H_OVAER_PRINC_LCY,
                M.H_OVAER_PRINC,
                M.H_OVERD31_60PRINC_LCY,
                M.H_OVERD31_60PRINC,
                M.H_OVERD61_90PRINC_LCY,
                M.H_OVERD61_90PRINC,
                M.H_OVERD91_180PRINC_LCY,
                M.H_OVERD91_180PRINC,
                M.H_OVERD_PRINC180_LCY,
                M.H_OVERD_PRINC180,
                M.H_OVERD_RAW_BA_OVE180_LCY,
                M.H_OVERD_RAW_BA_OVE180,
                M.H_CUR_RPY_AMT_LCY,
                M.H_CUR_RPY_AMT,
                M.H_ACT_RPY_AMT_LCY,
                M.H_ACT_RPY_AMT,
                M.H_LAT_RPY_DATE,
                M.H_CLOSE_DATE,
                M.I_SPEC_LINE_LCY,
                M.I_SPEC_LINE,
                M.I_SPEC_EFCT_DATE,
                M.I_SPEC_END_DATE,
                M.I_USED_INST_AMT_LCY,
                M.I_USED_INST_AMT,
                M.J_ACCT_STATUS,
                M.J_ACCT_BAL_LCY,
                M.J_ACCT_BAL,
                M.J_FIVE_CATE,
                M.J_FIVE_CATE_ADJ_DATE,
                M.J_REM_REP_PRD,
                M.J_RPY_STATUS,
                M.J_OVERD_PRD,
                M.J_TOT_OVERD_LCY,
                M.J_TOT_OVERD,
                M.J_LAT_RPY_AMT_LCY,
                M.J_LAT_RPY_AMT,
                M.J_LAT_RPY_DATE,
                M.J_CLOSE_DATE,
                M.DATA_DESC,
                M.REMARKS,
                M.CHECK_FLAG,
                M.CHECK_DESC,
                M.CHECK_ERR_TYPE,
                M.NEXT_ACTION,
                M.DATA_STATUS,
                M.DATA_FLAG,
                M.DATA_SOURCE,
                M.DATA_VERSION,
                M.DATA_REJ_DESC,
                M.DATA_DEL_DESC,
                M.DATA_CRT_USER,
                M.DATA_CRT_DATE,
                M.DATA_CRT_TIME,
                M.DATA_CHG_USER,
                M.DATA_CHG_DATE,
                M.DATA_CHG_TIME,
                M.DATA_APV_USER,
                M.DATA_APV_DATE,
                M.DATA_APV_TIME,
                M.RSV1,
                M.RSV2,
                M.RSV3,
                M.RSV4,
                M.RSV5,
                M.IS_RPT,
                M.CUST_NO
           FROM MBT_210 M
          WHERE M.DATA_STATUS = '21'
            AND (M.B_RPT_DATE_CODE != '88' OR M.B_RPT_DATE_CODE != '99')
            AND ((M.MON_SETTLE_DATE IS NULL AND M.B_RPT_DATE <= V_T_DATE) OR
                M.MON_SETTLE_DATE = V_T_DATE)
            AND (SELECT COUNT(1) AS CNT
                   FROM MBT_210_HIS N, MBT_210_RPT R
                  WHERE R.ODS_DATA_ID = N.DATA_ID
                    AND N.ODS_DATA_ID = M.DATA_ID
                    AND N.HIS_DATE = V_NOW_DATE
                    AND R.RPT_DATE = V_T_DATE
                    AND R.DATA_STATUS != '24') < 1) SOURCE
  ON (TARGET.DATA_ID = SOURCE.DATA_ID)
  WHEN NOT MATCHED THEN
    INSERT
      (TARGET.DATA_ID,
       TARGET.DATA_DATE,
       TARGET.CORP_ID,
       TARGET.ORG_ID,
       TARGET.GROUP_ID,
       TARGET.INQ_ORG_ID,
       TARGET.INQ_GROUP_ID,
       TARGET.REF_NO,
       TARGET.B_INF_REC_TYPE,
       TARGET.B_ACCT_TYPE,
       TARGET.B_ACCT_CODE,
       TARGET.B_RPT_DATE,
       TARGET.B_RPT_DATE_CODE,
       TARGET.B_NAME,
       TARGET.B_ID_TYPE,
       TARGET.B_ID_NUM,
       TARGET.B_MNGMT_ORG_CODE,
       ---ÐÂÔöB_LOAN_CON_CODE||B_FIRST_HOU_LOAN_FLAG
       TARGET.C_LOAN_CON_CODE,
       TARGET.C_FIRST_HOU_LOAN_FLAG,
       TARGET.C_BUSI_LINES,
       TARGET.C_BUSI_DTL_LINES,
       TARGET.C_OPEN_DATE,
       TARGET.C_CY,
       TARGET.C_ACCT_CRED_LINE_AMT_LCY,
       TARGET.C_ACCT_CRED_LINE_AMT,
       TARGET.C_LOAN_AMT_LCY,
       TARGET.C_LOAN_AMT,
       TARGET.C_FLAG,
       TARGET.C_DUE_DATE,
       TARGET.C_REPAY_MODE,
       TARGET.C_REPAY_FREQCY,
       TARGET.C_REPAY_PRD,
       TARGET.C_APPLY_BUSI_DIST,
       TARGET.C_GUAR_MODE,
       TARGET.C_OTH_REPY_GUAR_WAY,
       TARGET.C_ASSET_TRAND_FLAG,
       TARGET.C_FUND_SOU,
       TARGET.C_LOAN_FORM,
       TARGET.C_CREDIT_ID,
       TARGET.F_MCC,
       TARGET.G_INIT_CRED_NAME,
       TARGET.G_INIT_CRED_ORG_NM,
       TARGET.G_ORIG_DBT_CATE,
       TARGET.G_INIT_RPY_STS,
       TARGET.H_MONTH,
       TARGET.H_SETT_DATE,
       TARGET.H_ACCT_STATUS,
       TARGET.H_ACCT_BAL_LCY,
       TARGET.H_ACCT_BAL,
       TARGET.H_PRID_ACCT_BAL_LCY,
       TARGET.H_PRID_ACCT_BAL,
       TARGET.H_USED_AMT_LCY,
       TARGET.H_USED_AMT,
       TARGET.H_NOTLSU_BAL_LCY,
       TARGET.H_NOTLSU_BAL,
       TARGET.H_REM_REP_PRD,
       TARGET.H_FIVE_CATE,
       TARGET.H_FIVE_CATE_ADJ_DATE,
       TARGET.H_RPY_STATUS,
       TARGET.H_RPY_PRCT,
       TARGET.H_OVERD_PRD,
       TARGET.H_TOT_OVERD_LCY,
       TARGET.H_TOT_OVERD,
       TARGET.H_OVAER_PRINC_LCY,
       TARGET.H_OVAER_PRINC,
       TARGET.H_OVERD31_60PRINC_LCY,
       TARGET.H_OVERD31_60PRINC,
       TARGET.H_OVERD61_90PRINC_LCY,
       TARGET.H_OVERD61_90PRINC,
       TARGET.H_OVERD91_180PRINC_LCY,
       TARGET.H_OVERD91_180PRINC,
       TARGET.H_OVERD_PRINC180_LCY,
       TARGET.H_OVERD_PRINC180,
       TARGET.H_OVERD_RAW_BA_OVE180_LCY,
       TARGET.H_OVERD_RAW_BA_OVE180,
       TARGET.H_CUR_RPY_AMT_LCY,
       TARGET.H_CUR_RPY_AMT,
       TARGET.H_ACT_RPY_AMT_LCY,
       TARGET.H_ACT_RPY_AMT,
       TARGET.H_LAT_RPY_DATE,
       TARGET.H_CLOSE_DATE,
       TARGET.I_SPEC_LINE_LCY,
       TARGET.I_SPEC_LINE,
       TARGET.I_SPEC_EFCT_DATE,
       TARGET.I_SPEC_END_DATE,
       TARGET.I_USED_INST_AMT_LCY,
       TARGET.I_USED_INST_AMT,
       TARGET.J_ACCT_STATUS,
       TARGET.J_ACCT_BAL_LCY,
       TARGET.J_ACCT_BAL,
       TARGET.J_FIVE_CATE,
       TARGET.J_FIVE_CATE_ADJ_DATE,
       TARGET.J_REM_REP_PRD,
       TARGET.J_RPY_STATUS,
       TARGET.J_OVERD_PRD,
       TARGET.J_TOT_OVERD_LCY,
       TARGET.J_TOT_OVERD,
       TARGET.J_LAT_RPY_AMT_LCY,
       TARGET.J_LAT_RPY_AMT,
       TARGET.J_LAT_RPY_DATE,
       TARGET.J_CLOSE_DATE,
       TARGET.DATA_DESC,
       TARGET.REMARKS,
       TARGET.CHECK_FLAG,
       TARGET.CHECK_DESC,
       TARGET.CHECK_ERR_TYPE,
       TARGET.NEXT_ACTION,
       TARGET.DATA_STATUS,
       TARGET.DATA_FLAG,
       TARGET.DATA_SOURCE,
       TARGET.DATA_VERSION,
       TARGET.DATA_REJ_DESC,
       TARGET.DATA_DEL_DESC,
       TARGET.DATA_CRT_USER,
       TARGET.DATA_CRT_DATE,
       TARGET.DATA_CRT_TIME,
       TARGET.DATA_CHG_USER,
       TARGET.DATA_CHG_DATE,
       TARGET.DATA_CHG_TIME,
       TARGET.DATA_APV_USER,
       TARGET.DATA_APV_DATE,
       TARGET.DATA_APV_TIME,
       TARGET.RSV1,
       TARGET.RSV2,
       TARGET.RSV3,
       TARGET.RSV4,
       TARGET.RSV5,
       TARGET.ODS_DATA_ID,
       TARGET.HIS_DATE,
       TARGET.HIS_DATE_TIME,
       TARGET.IS_RPT,
       TARGET.CUST_NO)
    VALUES
      (GET_DATA_ID(V_NOW_DATE),
       SOURCE.DATA_DATE,
       SOURCE.CORP_ID,
       SOURCE.ORG_ID,
       SOURCE.GROUP_ID,
       SOURCE.INQ_ORG_ID,
       SOURCE.INQ_GROUP_ID,
       SOURCE.REF_NO,
       SOURCE.B_INF_REC_TYPE,
       SOURCE.B_ACCT_TYPE,
       SOURCE.B_ACCT_CODE,
       SOURCE.B_RPT_DATE,
       SOURCE.B_RPT_DATE_CODE,
       SOURCE.B_NAME,
       SOURCE.B_ID_TYPE,
       SOURCE.B_ID_NUM,
       SOURCE.B_MNGMT_ORG_CODE,
       ---ÐÂÔöB_LOAN_CON_CODE||B_FIRST_HOU_LOAN_FLAG
       SOURCE.C_LOAN_CON_CODE,
       SOURCE.C_FIRST_HOU_LOAN_FLAG,
       SOURCE.C_BUSI_LINES,
       SOURCE.C_BUSI_DTL_LINES,
       SOURCE.C_OPEN_DATE,
       SOURCE.C_CY,
       SOURCE.C_ACCT_CRED_LINE_AMT_LCY,
       SOURCE.C_ACCT_CRED_LINE_AMT,
       SOURCE.C_LOAN_AMT_LCY,
       SOURCE.C_LOAN_AMT,
       SOURCE.C_FLAG,
       SOURCE.C_DUE_DATE,
       SOURCE.C_REPAY_MODE,
       SOURCE.C_REPAY_FREQCY,
       SOURCE.C_REPAY_PRD,
       SOURCE.C_APPLY_BUSI_DIST,
       SOURCE.C_GUAR_MODE,
       SOURCE.C_OTH_REPY_GUAR_WAY,
       SOURCE.C_ASSET_TRAND_FLAG,
       SOURCE.C_FUND_SOU,
       SOURCE.C_LOAN_FORM,
       SOURCE.C_CREDIT_ID,
       SOURCE.F_MCC,
       SOURCE.G_INIT_CRED_NAME,
       SOURCE.G_INIT_CRED_ORG_NM,
       SOURCE.G_ORIG_DBT_CATE,
       SOURCE.G_INIT_RPY_STS,
       SOURCE.H_MONTH,
       SOURCE.H_SETT_DATE,
       SOURCE.H_ACCT_STATUS,
       SOURCE.H_ACCT_BAL_LCY,
       SOURCE.H_ACCT_BAL,
       SOURCE.H_PRID_ACCT_BAL_LCY,
       SOURCE.H_PRID_ACCT_BAL,
       SOURCE.H_USED_AMT_LCY,
       SOURCE.H_USED_AMT,
       SOURCE.H_NOTLSU_BAL_LCY,
       SOURCE.H_NOTLSU_BAL,
       SOURCE.H_REM_REP_PRD,
       SOURCE.H_FIVE_CATE,
       SOURCE.H_FIVE_CATE_ADJ_DATE,
       SOURCE.H_RPY_STATUS,
       SOURCE.H_RPY_PRCT,
       SOURCE.H_OVERD_PRD,
       SOURCE.H_TOT_OVERD_LCY,
       SOURCE.H_TOT_OVERD,
       SOURCE.H_OVAER_PRINC_LCY,
       SOURCE.H_OVAER_PRINC,
       SOURCE.H_OVERD31_60PRINC_LCY,
       SOURCE.H_OVERD31_60PRINC,
       SOURCE.H_OVERD61_90PRINC_LCY,
       SOURCE.H_OVERD61_90PRINC,
       SOURCE.H_OVERD91_180PRINC_LCY,
       SOURCE.H_OVERD91_180PRINC,
       SOURCE.H_OVERD_PRINC180_LCY,
       SOURCE.H_OVERD_PRINC180,
       SOURCE.H_OVERD_RAW_BA_OVE180_LCY,
       SOURCE.H_OVERD_RAW_BA_OVE180,
       SOURCE.H_CUR_RPY_AMT_LCY,
       SOURCE.H_CUR_RPY_AMT,
       SOURCE.H_ACT_RPY_AMT_LCY,
       SOURCE.H_ACT_RPY_AMT,
       SOURCE.H_LAT_RPY_DATE,
       SOURCE.H_CLOSE_DATE,
       SOURCE.I_SPEC_LINE_LCY,
       SOURCE.I_SPEC_LINE,
       SOURCE.I_SPEC_EFCT_DATE,
       SOURCE.I_SPEC_END_DATE,
       SOURCE.I_USED_INST_AMT_LCY,
       SOURCE.I_USED_INST_AMT,
       SOURCE.J_ACCT_STATUS,
       SOURCE.J_ACCT_BAL_LCY,
       SOURCE.J_ACCT_BAL,
       SOURCE.J_FIVE_CATE,
       SOURCE.J_FIVE_CATE_ADJ_DATE,
       SOURCE.J_REM_REP_PRD,
       SOURCE.J_RPY_STATUS,
       SOURCE.J_OVERD_PRD,
       SOURCE.J_TOT_OVERD_LCY,
       SOURCE.J_TOT_OVERD,
       SOURCE.J_LAT_RPY_AMT_LCY,
       SOURCE.J_LAT_RPY_AMT,
       SOURCE.J_LAT_RPY_DATE,
       SOURCE.J_CLOSE_DATE,
       SOURCE.DATA_DESC,
       SOURCE.REMARKS,
       SOURCE.CHECK_FLAG,
       SOURCE.CHECK_DESC,
       SOURCE.CHECK_ERR_TYPE,
       SOURCE.NEXT_ACTION,
       '23',
       SOURCE.DATA_FLAG,
       SOURCE.DATA_SOURCE,
       SOURCE.DATA_VERSION,
       SOURCE.DATA_REJ_DESC,
       SOURCE.DATA_DEL_DESC,
       SOURCE.DATA_CRT_USER,
       SOURCE.DATA_CRT_DATE,
       SOURCE.DATA_CRT_TIME,
       SOURCE.DATA_CHG_USER,
       SOURCE.DATA_CHG_DATE,
       SOURCE.DATA_CHG_TIME,
       SOURCE.DATA_APV_USER,
       SOURCE.DATA_APV_DATE,
       SOURCE.DATA_APV_TIME,
       SOURCE.RSV1,
       SOURCE.RSV2,
       SOURCE.RSV3,
       SOURCE.RSV4,
       SOURCE.RSV5,
       SOURCE.DATA_ID,
       V_NOW_DATE,
       V_NOW_TIME,
       SOURCE.IS_RPT,
       SOURCE.CUST_NO);
  COMMIT;
  --²åÈë×Ó±í
  MERGE INTO MBT_210_D_HIS TARGET
  USING (SELECT C.DATA_ID,
                A.DATA_ID PDATA_ID,
                C.D_ARLP_ID_TYPE,
                C.D_ARLP_NAME,
                C.D_ARLP_CERT_TYPE,
                C.D_ARLP_CERT_NUM,
                C.D_ARLP_TYPE,
                C.D_ARLP_AMT_ORG,
                C.D_ARLP_AMT,
                C.D_WARTY_SIGN,
                C.D_MAX_GUAR_MCC,
                A.B_ACCT_CODE
           FROM MBT_210_HIS A
          Right JOIN MBT_210_D C
             ON C.PDATA_ID = A.ODS_DATA_ID
          WHERE A.DATA_STATUS = '23'
            AND A.HIS_DATE = V_NOW_DATE) SOURCE
  ON (TARGET.DATA_ID = SOURCE.DATA_ID)
  WHEN NOT MATCHED THEN
    INSERT
      (TARGET.DATA_ID,
       TARGET.PDATA_ID,
       TARGET.D_ARLP_ID_TYPE,
       TARGET.D_ARLP_NAME,
       TARGET.D_ARLP_CERT_TYPE,
       TARGET.D_ARLP_CERT_NUM,
       TARGET.D_ARLP_TYPE,
       TARGET.D_ARLP_AMT_ORG,
       TARGET.D_ARLP_AMT,
       TARGET.D_WARTY_SIGN,
       TARGET.D_MAX_GUAR_MCC,
       TARGET.ODS_DATA_ID,
       TARGET.HIS_DATE,
       TARGET.HIS_DATE_TIME,
       TARGET.B_ACCT_CODE)
    VALUES
      (GET_DATA_ID(V_NOW_DATE),
       SOURCE.PDATA_ID,
       SOURCE.D_ARLP_ID_TYPE,
       SOURCE.D_ARLP_NAME,
       SOURCE.D_ARLP_CERT_TYPE,
       SOURCE.D_ARLP_CERT_NUM,
       SOURCE.D_ARLP_TYPE,
       SOURCE.D_ARLP_AMT_ORG,
       SOURCE.D_ARLP_AMT,
       SOURCE.D_WARTY_SIGN,
       SOURCE.D_MAX_GUAR_MCC,
       SOURCE.DATA_ID,
       V_NOW_DATE,
       V_NOW_TIME,
       SOURCE.B_ACCT_CODE);
  COMMIT;
  MERGE INTO MBT_210_E_HIS TARGET
  USING (SELECT C.DATA_ID, A.DATA_ID PDATA_ID, C.E_CCC, A.B_ACCT_CODE
           FROM MBT_210_HIS A
          Right JOIN MBT_210_E C
             ON C.PDATA_ID = A.ODS_DATA_ID
          WHERE A.DATA_STATUS = '23'
            AND A.HIS_DATE = V_NOW_DATE) SOURCE
  ON (TARGET.DATA_ID = SOURCE.DATA_ID)
  WHEN NOT MATCHED THEN
    INSERT
      (TARGET.DATA_ID,
       TARGET.PDATA_ID,
       TARGET.E_CCC,
       TARGET.ODS_DATA_ID,
       TARGET.HIS_DATE,
       TARGET.HIS_DATE_TIME,
       TARGET.B_ACCT_CODE)
    VALUES
      (GET_DATA_ID(V_NOW_DATE),
       SOURCE.PDATA_ID,
       SOURCE.E_CCC,
       SOURCE.DATA_ID,
       V_NOW_DATE,
       V_NOW_TIME,
       SOURCE.B_ACCT_CODE);
  COMMIT;
  MERGE INTO MBT_210_K_HIS TARGET
  USING (SELECT C.DATA_ID,
                A.DATA_ID PDATA_ID,
                C.REF_NO,
                C.K_CHAN_TRAN_TYPE,
                C.K_TRAN_DATE,
                C.K_TRAN_AMT_ORG,
                C.K_TRAN_AMT,
                C.K_DUE_TRAN_MON,
                C.K_DET_INFO,
                A.B_ACCT_CODE
           FROM MBT_210_HIS A
          Right JOIN MBT_210_K C
             ON C.PDATA_ID = A.ODS_DATA_ID
          WHERE A.DATA_STATUS = '23'
            AND A.HIS_DATE = V_NOW_DATE
            AND A.B_RPT_DATE_CODE!='40') SOURCE
  ON (TARGET.DATA_ID = SOURCE.DATA_ID)
  WHEN NOT MATCHED THEN
    INSERT
      (TARGET.DATA_ID,
       TARGET.PDATA_ID,
       TARGET.REF_NO,
       TARGET.K_CHAN_TRAN_TYPE,
       TARGET.K_TRAN_DATE,
       TARGET.K_TRAN_AMT_ORG,
       TARGET.K_TRAN_AMT,
       TARGET.K_DUE_TRAN_MON,
       TARGET.K_DET_INFO,
       TARGET.ODS_DATA_ID,
       TARGET.HIS_DATE,
       TARGET.HIS_DATE_TIME,
       TARGET.B_ACCT_CODE)
    VALUES
      (GET_DATA_ID(V_NOW_DATE),
       SOURCE.PDATA_ID,
       SOURCE.REF_NO,
       SOURCE.K_CHAN_TRAN_TYPE,
       SOURCE.K_TRAN_DATE,
       SOURCE.K_TRAN_AMT_ORG,
       SOURCE.K_TRAN_AMT,
       SOURCE.K_DUE_TRAN_MON,
       SOURCE.K_DET_INFO,
       SOURCE.DATA_ID,
       V_NOW_DATE,
       V_NOW_TIME,
       SOURCE.B_ACCT_CODE);
  COMMIT;
EXCEPTION
  WHEN OTHERS THEN
    ERRCODE := SQLCODE;
    ERRMSG  := SUBSTR(SQLERRM, 1, 200);
    ROLLBACK;
    RETURN;
END;
/

prompt
prompt Creating procedure SYNC_PM_TO_HIS_211
prompt =====================================
prompt
CREATE OR REPLACE PROCEDURE "SYNC_PM_TO_HIS_211"(ERRCODE   OUT VARCHAR,
                                           ERRMSG   OUT VARCHAR) AS V_NOW_DATE CHAR(8);
V_NOW_TIME CHAR(14);
BEGIN
    SELECT
        TO_CHAR(SYSDATE,'YYYYMMDD')
    INTO
        V_NOW_DATE
    FROM
        DUAL;
SELECT
    TO_CHAR(SYSDATE, 'YYYYMMDDHH24MISS')
INTO
    V_NOW_TIME
FROM
    DUAL;
DELETE
FROM
    MBT_211_HIS
WHERE
    HIS_DATE=V_NOW_DATE and DATA_STATUS='23';
COMMIT;
--²åÈëÖ÷±í
MERGE
INTO
    MBT_211_HIS TARGET
USING
    (
        SELECT
            DATA_ID,
            DATA_DATE,
            CORP_ID,
            ORG_ID,
            GROUP_ID,
            INQ_ORG_ID,
            INQ_GROUP_ID,
            INF_REC_TYPE,
            OD_BNES_CODE,
            NW_BNES_CODE,
            DATA_DESC,
            REMARKS,
            CHECK_FLAG,
            CHECK_DESC,
            CHECK_ERR_TYPE,
            NEXT_ACTION,
            DATA_STATUS,
            DATA_FLAG,
            DATA_SOURCE,
            DATA_VERSION,
            DATA_REJ_DESC,
            DATA_DEL_DESC,
            DATA_CRT_USER,
            DATA_CRT_DATE,
            DATA_CRT_TIME,
            DATA_CHG_USER,
            DATA_CHG_DATE,
            DATA_CHG_TIME,
            DATA_APV_USER,
            DATA_APV_DATE,
            DATA_APV_TIME,
            RSV1,
            RSV2,
            RSV3,
            RSV4,
            RSV5,
            IS_RPT
        FROM
            MBT_211
        WHERE
            DATA_STATUS='21') SOURCE
ON
    (
        TARGET.DATA_ID = SOURCE.DATA_ID)
WHEN NOT MATCHED
    THEN
INSERT
    (
        TARGET.DATA_ID,
        TARGET.DATA_DATE,
        TARGET.CORP_ID,
        TARGET.ORG_ID,
        TARGET.GROUP_ID,
        TARGET.INQ_ORG_ID,
        TARGET.INQ_GROUP_ID,
        TARGET.INF_REC_TYPE,
        TARGET.OD_BNES_CODE,
        TARGET.NW_BNES_CODE,
        TARGET.DATA_DESC,
        TARGET.REMARKS,
        TARGET.CHECK_FLAG,
        TARGET.CHECK_DESC,
        TARGET.CHECK_ERR_TYPE,
        TARGET.NEXT_ACTION,
        TARGET.DATA_STATUS,
        TARGET.DATA_FLAG,
        TARGET.DATA_SOURCE,
        TARGET.DATA_VERSION,
        TARGET.DATA_REJ_DESC,
        TARGET.DATA_DEL_DESC,
        TARGET.DATA_CRT_USER,
        TARGET.DATA_CRT_DATE,
        TARGET.DATA_CRT_TIME,
        TARGET.DATA_CHG_USER,
        TARGET.DATA_CHG_DATE,
        TARGET.DATA_CHG_TIME,
        TARGET.DATA_APV_USER,
        TARGET.DATA_APV_DATE,
        TARGET.DATA_APV_TIME,
        TARGET.RSV1,
        TARGET.RSV2,
        TARGET.RSV3,
        TARGET.RSV4,
        TARGET.RSV5,
        TARGET.ODS_DATA_ID,
        TARGET.HIS_DATE,
        TARGET.HIS_DATE_TIME,
        TARGET.IS_RPT
    )
    VALUES
    (
        GET_DATA_ID(V_NOW_DATE),
        SOURCE.DATA_DATE,
        SOURCE.CORP_ID,
        SOURCE.ORG_ID,
        SOURCE.GROUP_ID,
        SOURCE.INQ_ORG_ID,
        SOURCE.INQ_GROUP_ID,
        SOURCE.INF_REC_TYPE,
        SOURCE.OD_BNES_CODE,
        SOURCE.NW_BNES_CODE,
        SOURCE.DATA_DESC,
        SOURCE.REMARKS,
        SOURCE.CHECK_FLAG,
        SOURCE.CHECK_DESC,
        SOURCE.CHECK_ERR_TYPE,
        SOURCE.NEXT_ACTION,
        '23',
        SOURCE.DATA_FLAG,
        SOURCE.DATA_SOURCE,
        SOURCE.DATA_VERSION,
        SOURCE.DATA_REJ_DESC,
        SOURCE.DATA_DEL_DESC,
        SOURCE.DATA_CRT_USER,
        SOURCE.DATA_CRT_DATE,
        SOURCE.DATA_CRT_TIME,
        SOURCE.DATA_CHG_USER,
        SOURCE.DATA_CHG_DATE,
        SOURCE.DATA_CHG_TIME,
        SOURCE.DATA_APV_USER,
        SOURCE.DATA_APV_DATE,
        SOURCE.DATA_APV_TIME,
        SOURCE.RSV1,
        SOURCE.RSV2,
        SOURCE.RSV3,
        SOURCE.RSV4,
        SOURCE.RSV5,
        SOURCE.DATA_ID,
        V_NOW_DATE,
        V_NOW_TIME,
        SOURCE.IS_RPT
    );
COMMIT;
EXCEPTION
WHEN OTHERS THEN
    ERRCODE := SQLCODE;
ERRMSG := SUBSTR(SQLERRM,1,200);
ROLLBACK;
RETURN;
END;
/

prompt
prompt Creating procedure SYNC_PM_TO_HIS_220
prompt =====================================
prompt
CREATE OR REPLACE PROCEDURE "SYNC_PM_TO_HIS_220"(ERRCODE OUT VARCHAR,
                                                 ERRMSG  OUT VARCHAR) AS
  V_NOW_DATE CHAR(8);
  V_NOW_TIME CHAR(14);
BEGIN
  SELECT TO_CHAR(SYSDATE, 'YYYYMMDD') INTO V_NOW_DATE FROM DUAL;
  SELECT TO_CHAR(SYSDATE, 'YYYYMMDDHH24MISS') INTO V_NOW_TIME FROM DUAL;

  DELETE FROM MBT_220_C_HIS
   WHERE  PDATA_ID in (SELECT DATA_ID
                       FROM MBT_220_HIS
                      WHERE HIS_DATE =V_NOW_DATE
                        AND DATA_STATUS = '23'
                        );
  DELETE FROM MBT_220_HIS
   WHERE HIS_DATE = V_NOW_DATE
     AND DATA_STATUS = '23';
  COMMIT;
  --²åÈëÖ÷±í
  MERGE INTO MBT_220_HIS TARGET
  USING (SELECT M.DATA_ID,
                M.DATA_DATE,
                M.CORP_ID,
                M.ORG_ID,
                M.GROUP_ID,
                M.INQ_ORG_ID,
                M.INQ_GROUP_ID,
                M.B_INF_REC_TYPE,
                M.B_CONTRACT_CODE,
                M.B_RPT_DATE,
                M.B_RPT_DATE_CODE,
                M.B_NAME,
                M.B_ID_TYPE,
                M.B_ID_NUM,
                M.B_MNGMT_ORG_CODE,
                M.B_CONTRACT_NO,
                M.D_CREDIT_LIM_TYPE,
                M.D_LIM_LOOP_FLG,
                M.D_CREDIT_LIM,
                M.D_CREDIT_LIM_LCY,
                M.D_CY,
                M.D_CON_EFF_DATE,
                M.D_CON_EXP_DATE,
                M.D_CON_STATUS,
                M.D_CREDIT_REST,
                M.D_CREDIT_REST_LCY,
                M.D_CREDIT_REST_CODE,
                M.F_DATA_DESC,
                M.REMARKS,
                M.CHECK_FLAG,
                M.CHECK_DESC,
                M.CHECK_ERR_TYPE,
                M.NEXT_ACTION,
                M.DATA_STATUS,
                M.DATA_FLAG,
                M.DATA_SOURCE,
                M.DATA_VERSION,
                M.DATA_REJ_DESC,
                M.DATA_DEL_DESC,
                M.DATA_CRT_USER,
                M.DATA_CRT_DATE,
                M.DATA_CRT_TIME,
                M.DATA_CHG_USER,
                M.DATA_CHG_DATE,
                M.DATA_CHG_TIME,
                M.DATA_APV_USER,
                M.DATA_APV_DATE,
                M.DATA_APV_TIME,
                M.RSV1,
                M.RSV2,
                M.RSV3,
                M.RSV4,
                M.RSV5,
                M.CUST_NO,
                M.IS_RPT
           FROM MBT_220 M
          WHERE M.DATA_STATUS = '21'
            AND M.B_RPT_DATE <= V_NOW_DATE
            AND (SELECT COUNT(1) AS CNT
                   FROM MBT_220_HIS N, MBT_220_RPT R
                  WHERE R.ODS_DATA_ID = N.DATA_ID
                    AND N.ODS_DATA_ID = M.DATA_ID
                    AND N.HIS_DATE = V_NOW_DATE
                    AND R.RPT_DATE = V_NOW_DATE
                    AND R.DATA_STATUS != '24') < 1) SOURCE
  ON (TARGET.DATA_ID = SOURCE.DATA_ID)
  WHEN NOT MATCHED THEN
    INSERT
      (TARGET.DATA_ID,
       TARGET.DATA_DATE,
       TARGET.CORP_ID,
       TARGET.ORG_ID,
       TARGET.GROUP_ID,
       TARGET.INQ_ORG_ID,
       TARGET.INQ_GROUP_ID,
       TARGET.B_INF_REC_TYPE,
       TARGET.B_CONTRACT_CODE,
       TARGET.B_RPT_DATE,
       TARGET.B_RPT_DATE_CODE,
       TARGET.B_NAME,
       TARGET.B_ID_TYPE,
       TARGET.B_ID_NUM,
       TARGET.B_MNGMT_ORG_CODE,
       TARGET.B_CONTRACT_NO,
       TARGET.D_CREDIT_LIM_TYPE,
       TARGET.D_LIM_LOOP_FLG,
       TARGET.D_CREDIT_LIM,
       TARGET.D_CREDIT_LIM_LCY,
       TARGET.D_CY,
       TARGET.D_CON_EFF_DATE,
       TARGET.D_CON_EXP_DATE,
       TARGET.D_CON_STATUS,
       TARGET.D_CREDIT_REST,
       TARGET.D_CREDIT_REST_LCY,
       TARGET.D_CREDIT_REST_CODE,
       TARGET.F_DATA_DESC,
       TARGET.REMARKS,
       TARGET.CHECK_FLAG,
       TARGET.CHECK_DESC,
       TARGET.CHECK_ERR_TYPE,
       TARGET.NEXT_ACTION,
       TARGET.DATA_STATUS,
       TARGET.DATA_FLAG,
       TARGET.DATA_SOURCE,
       TARGET.DATA_VERSION,
       TARGET.DATA_REJ_DESC,
       TARGET.DATA_DEL_DESC,
       TARGET.DATA_CRT_USER,
       TARGET.DATA_CRT_DATE,
       TARGET.DATA_CRT_TIME,
       TARGET.DATA_CHG_USER,
       TARGET.DATA_CHG_DATE,
       TARGET.DATA_CHG_TIME,
       TARGET.DATA_APV_USER,
       TARGET.DATA_APV_DATE,
       TARGET.DATA_APV_TIME,
       TARGET.RSV1,
       TARGET.RSV2,
       TARGET.RSV3,
       TARGET.RSV4,
       TARGET.RSV5,
       TARGET.ODS_DATA_ID,
       TARGET.HIS_DATE,
       TARGET.HIS_TIME,
       TARGET.CUST_NO,
       TARGET.IS_RPT)
    VALUES
      (GET_DATA_ID(V_NOW_DATE),
       SOURCE.DATA_DATE,
       SOURCE.CORP_ID,
       SOURCE.ORG_ID,
       SOURCE.GROUP_ID,
       SOURCE.INQ_ORG_ID,
       SOURCE.INQ_GROUP_ID,
       SOURCE.B_INF_REC_TYPE,
       SOURCE.B_CONTRACT_CODE,
       SOURCE.B_RPT_DATE,
       SOURCE.B_RPT_DATE_CODE,
       SOURCE.B_NAME,
       SOURCE.B_ID_TYPE,
       SOURCE.B_ID_NUM,
       SOURCE.B_MNGMT_ORG_CODE,
       SOURCE.B_CONTRACT_NO,
       SOURCE.D_CREDIT_LIM_TYPE,
       SOURCE.D_LIM_LOOP_FLG,
       SOURCE.D_CREDIT_LIM,
       SOURCE.D_CREDIT_LIM_LCY,
       SOURCE.D_CY,
       SOURCE.D_CON_EFF_DATE,
       SOURCE.D_CON_EXP_DATE,
       SOURCE.D_CON_STATUS,
       SOURCE.D_CREDIT_REST,
       SOURCE.D_CREDIT_REST_LCY,
       SOURCE.D_CREDIT_REST_CODE,
       SOURCE.F_DATA_DESC,
       SOURCE.REMARKS,
       SOURCE.CHECK_FLAG,
       SOURCE.CHECK_DESC,
       SOURCE.CHECK_ERR_TYPE,
       SOURCE.NEXT_ACTION,
       '23',
       SOURCE.DATA_FLAG,
       SOURCE.DATA_SOURCE,
       SOURCE.DATA_VERSION,
       SOURCE.DATA_REJ_DESC,
       SOURCE.DATA_DEL_DESC,
       SOURCE.DATA_CRT_USER,
       SOURCE.DATA_CRT_DATE,
       SOURCE.DATA_CRT_TIME,
       SOURCE.DATA_CHG_USER,
       SOURCE.DATA_CHG_DATE,
       SOURCE.DATA_CHG_TIME,
       SOURCE.DATA_APV_USER,
       SOURCE.DATA_APV_DATE,
       SOURCE.DATA_APV_TIME,
       SOURCE.RSV1,
       SOURCE.RSV2,
       SOURCE.RSV3,
       SOURCE.RSV4,
       SOURCE.RSV5,
       SOURCE.DATA_ID,
       V_NOW_DATE,
       V_NOW_TIME,
       SOURCE.CUST_NO,
       SOURCE.IS_RPT

       );
  COMMIT;
  --²åÈë×Ó±í
  MERGE INTO MBT_220_C_HIS TARGET
  USING (SELECT C.DATA_ID,
                A.DATA_ID PDATA_ID,
                C.C_BRER_TYPE,
                C.C_CERT_REL_NAME,
                C.C_CERT_REL_ID_TYPE,
                C.C_CERT_REL_ID_NUM,
                A.B_CONTRACT_CODE
           FROM MBT_220_HIS A
          RIGHT JOIN MBT_220_C C
             ON C.PDATA_ID = A.ODS_DATA_ID
          WHERE A.DATA_STATUS = '23'
            AND A.HIS_DATE = V_NOW_DATE
            AND A.B_RPT_DATE <= V_NOW_DATE) SOURCE
  ON (TARGET.DATA_ID = SOURCE.DATA_ID)
  WHEN NOT MATCHED THEN
    INSERT
      (TARGET.DATA_ID,
       TARGET.PDATA_ID,
       TARGET.C_BRER_TYPE,
       TARGET.C_CERT_REL_NAME,
       TARGET.C_CERT_REL_ID_TYPE,
       TARGET.C_CERT_REL_ID_NUM,
       TARGET.ODS_DATA_ID,
       TARGET.HIS_DATE,
       TARGET.HIS_TIME,
       TARGET.B_CONTRACT_CODE)
    VALUES
      (GET_DATA_ID(V_NOW_DATE),
       SOURCE.PDATA_ID,
       SOURCE.C_BRER_TYPE,
       SOURCE.C_CERT_REL_NAME,
       SOURCE.C_CERT_REL_ID_TYPE,
       SOURCE.C_CERT_REL_ID_NUM,
       SOURCE.DATA_ID,
       V_NOW_DATE,
       V_NOW_TIME,
       SOURCE.B_CONTRACT_CODE);
  COMMIT;
EXCEPTION
  WHEN OTHERS THEN
    ERRCODE := SQLCODE;
    ERRMSG  := SUBSTR(SQLERRM, 1, 200);
    ROLLBACK;
    RETURN;
END;
/

prompt
prompt Creating procedure SYNC_PM_TO_HIS_221
prompt =====================================
prompt
CREATE OR REPLACE PROCEDURE "SYNC_PM_TO_HIS_221"(ERRCODE   OUT VARCHAR,
                                           ERRMSG   OUT VARCHAR) AS V_NOW_DATE CHAR(8);
V_NOW_TIME CHAR(14);
BEGIN
    SELECT
        TO_CHAR(SYSDATE,'YYYYMMDD')
    INTO
        V_NOW_DATE
    FROM
        DUAL;
SELECT
    TO_CHAR(SYSDATE, 'YYYYMMDDHH24MISS')
INTO
    V_NOW_TIME
FROM
    DUAL;
DELETE
FROM
    MBT_221_HIS
WHERE
    HIS_DATE=V_NOW_DATE and DATA_STATUS='23';
COMMIT;
--²åÈëÖ÷±í
MERGE
INTO
    MBT_221_HIS TARGET
USING
    (
        SELECT
            DATA_DATE,
            INQ_GROUP_ID,
            INQ_ORG_ID,
            GROUP_ID,
            ORG_ID,
            CORP_ID,
            DATA_ID,
            INF_REC_TYPE,
            OD_BNES_CODE,
            NW_BNES_CODE,
            DATA_DESC,
            REMARKS,
            CHECK_FLAG,
            CHECK_DESC,
            CHECK_ERR_TYPE,
            NEXT_ACTION,
            DATA_STATUS,
            DATA_FLAG,
            DATA_SOURCE,
            DATA_VERSION,
            DATA_REJ_DESC,
            DATA_DEL_DESC,
            DATA_CRT_USER,
            DATA_CRT_DATE,
            DATA_CRT_TIME,
            DATA_CHG_USER,
            DATA_CHG_DATE,
            DATA_CHG_TIME,
            DATA_APV_USER,
            DATA_APV_DATE,
            DATA_APV_TIME,
            RSV1,
            RSV2,
            RSV3,
            RSV4,
            RSV5,
            IS_RPT
        FROM
            MBT_221
        WHERE
            DATA_STATUS='21') SOURCE
ON
    (
        TARGET.DATA_ID = SOURCE.DATA_ID)
WHEN NOT MATCHED
    THEN
INSERT
    (
        TARGET.DATA_DATE,
        TARGET.INQ_GROUP_ID,
        TARGET.INQ_ORG_ID,
        TARGET.GROUP_ID,
        TARGET.ORG_ID,
        TARGET.CORP_ID,
        TARGET.DATA_ID,
        TARGET.INF_REC_TYPE,
        TARGET.OD_BNES_CODE,
        TARGET.NW_BNES_CODE,
        TARGET.DATA_DESC,
        TARGET.REMARKS,
        TARGET.CHECK_FLAG,
        TARGET.CHECK_DESC,
        TARGET.CHECK_ERR_TYPE,
        TARGET.NEXT_ACTION,
        TARGET.DATA_STATUS,
        TARGET.DATA_FLAG,
        TARGET.DATA_SOURCE,
        TARGET.DATA_VERSION,
        TARGET.DATA_REJ_DESC,
        TARGET.DATA_DEL_DESC,
        TARGET.DATA_CRT_USER,
        TARGET.DATA_CRT_DATE,
        TARGET.DATA_CRT_TIME,
        TARGET.DATA_CHG_USER,
        TARGET.DATA_CHG_DATE,
        TARGET.DATA_CHG_TIME,
        TARGET.DATA_APV_USER,
        TARGET.DATA_APV_DATE,
        TARGET.DATA_APV_TIME,
        TARGET.RSV1,
        TARGET.RSV2,
        TARGET.RSV3,
        TARGET.RSV4,
        TARGET.RSV5,
        TARGET.ODS_DATA_ID,
        TARGET.HIS_DATE,
        TARGET.HIS_TIME,
        TARGET.IS_RPT
    )
    VALUES
    (
        SOURCE.DATA_DATE,
        SOURCE.INQ_GROUP_ID,
        SOURCE.INQ_ORG_ID,
        SOURCE.GROUP_ID,
        SOURCE.ORG_ID,
        SOURCE.CORP_ID,
        GET_DATA_ID(V_NOW_DATE),
        SOURCE.INF_REC_TYPE,
        SOURCE.OD_BNES_CODE,
        SOURCE.NW_BNES_CODE,
        SOURCE.DATA_DESC,
        SOURCE.REMARKS,
        SOURCE.CHECK_FLAG,
        SOURCE.CHECK_DESC,
        SOURCE.CHECK_ERR_TYPE,
        SOURCE.NEXT_ACTION,
        '23',
        SOURCE.DATA_FLAG,
        SOURCE.DATA_SOURCE,
        SOURCE.DATA_VERSION,
        SOURCE.DATA_REJ_DESC,
        SOURCE.DATA_DEL_DESC,
        SOURCE.DATA_CRT_USER,
        SOURCE.DATA_CRT_DATE,
        SOURCE.DATA_CRT_TIME,
        SOURCE.DATA_CHG_USER,
        SOURCE.DATA_CHG_DATE,
        SOURCE.DATA_CHG_TIME,
        SOURCE.DATA_APV_USER,
        SOURCE.DATA_APV_DATE,
        SOURCE.DATA_APV_TIME,
        SOURCE.RSV1,
        SOURCE.RSV2,
        SOURCE.RSV3,
        SOURCE.RSV4,
        SOURCE.RSV5,
        SOURCE.DATA_ID,
        V_NOW_DATE,
        V_NOW_TIME,
        SOURCE.IS_RPT
    );
COMMIT;
EXCEPTION
WHEN OTHERS THEN
    ERRCODE := SQLCODE;
ERRMSG := SUBSTR(SQLERRM,1,200);
ROLLBACK;
RETURN;
END;
/

prompt
prompt Creating procedure SYNC_PM_TO_HIS_230
prompt =====================================
prompt
CREATE OR REPLACE PROCEDURE "SYNC_PM_TO_HIS_230"(ERRCODE OUT VARCHAR,
                                                 ERRMSG  OUT VARCHAR) AS
  V_NOW_DATE CHAR(8);
  V_NOW_TIME CHAR(14);
BEGIN
  SELECT TO_CHAR(SYSDATE, 'YYYYMMDD') INTO V_NOW_DATE FROM DUAL;
  SELECT TO_CHAR(SYSDATE, 'YYYYMMDDHH24MISS') INTO V_NOW_TIME FROM DUAL;

  DELETE FROM MBT_230_E_HIS
   WHERE  PDATA_ID in (SELECT DATA_ID
                       FROM MBT_230_HIS
                      WHERE HIS_DATE = V_NOW_DATE
                        AND DATA_STATUS = '23'
                       );
  DELETE FROM MBT_230_F_HIS
   WHERE  PDATA_ID in (SELECT DATA_ID
                       FROM MBT_230_HIS
                      WHERE HIS_DATE = V_NOW_DATE
                        AND DATA_STATUS = '23'
                       );
  DELETE FROM MBT_230_HIS
   WHERE HIS_DATE = V_NOW_DATE
     AND DATA_STATUS = '23';
  COMMIT;
  --²åÈëÖ÷±í
  MERGE INTO MBT_230_HIS TARGET
  USING (SELECT M.DATA_ID,
                M.DATA_DATE,
                M.CORP_ID,
                M.ORG_ID,
                M.GROUP_ID,
                M.INQ_ORG_ID,
                M.INQ_GROUP_ID,
                M.B_ACCT_TYPE,
                M.B_ACCT_CODE,
                M.B_RPT_DATE,
                M.B_RPT_DATE_CODE,
                M.B_INF_REC_TYPE,
                M.B_NAME,
                M.B_ID_TYPE,
                M.B_ID_NUM,
                M.B_MNGMT_ORG_CODE,
                M.B_CUST_NO,
                M.C_BUSI_LINES,
                M.C_BUSI_DTIL_LINES,
                M.C_OPEN_DATE,
                M.C_ACCT_CRED_LINE_LCY,
                M.C_ACCT_CRED_LINE,
                M.C_CY,
                M.C_DUE_DATE,
                M.C_GUAR_MODE,
                M.C_OTH_REPY_GUAR_WAY,
                M.C_SEC_DEP,
                M.C_CTRCT_TXT_CD,
                M.D_ACCT_STATUS,
                M.D_LOAN_AMT_LCY,
                M.D_LOAN_AMT,
                M.D_REPAY_PRD,
                M.D_FIVE_CATE,
                M.D_FIVE_CATE_ADJ_DATE,
                M.D_RI_EX_LCY,
                M.D_RI_EX,
                M.D_COMP_ADV_FLAG,
                M.D_CLOSE_DATE,
                M.CHECK_FLAG,
                M.CHECK_DESC,
                M.CHECK_ERR_TYPE,
                M.NEXT_ACTION,
                M.DATA_STATUS,
                M.DATA_FLAG,
                M.DATA_SOURCE,
                M.DATA_VERSION,
                M.DATA_REJ_DESC,
                M.DATA_DEL_DESC,
                M.DATA_CRT_USER,
                M.DATA_CRT_DATE,
                M.DATA_CRT_TIME,
                M.DATA_CHG_USER,
                M.DATA_CHG_DATE,
                M.DATA_CHG_TIME,
                M.DATA_APV_USER,
                M.DATA_APV_DATE,
                M.DATA_APV_TIME,
                M.REF_NO,
                M.DATA_DESC,
                M.RSV1,
                M.RSV2,
                M.RSV3,
                M.RSV4,
                M.RSV5,
                M.INF_REC_TYPE,
                M.IS_RPT
           FROM MBT_230 M
          WHERE M.DATA_STATUS = '21'
            AND M.B_RPT_DATE <= V_NOW_DATE
            AND (SELECT COUNT(1) AS CNT
                   FROM MBT_230_HIS N, MBT_230_RPT R
                  WHERE R.ODS_DATA_ID = N.DATA_ID
                    AND N.ODS_DATA_ID = M.DATA_ID
                    AND N.HIS_DATE = V_NOW_DATE
                    AND R.RPT_DATE = V_NOW_DATE
                    AND R.DATA_STATUS != '24') < 1) SOURCE
  ON (TARGET.DATA_ID = SOURCE.DATA_ID)
  WHEN NOT MATCHED THEN
    INSERT
      (TARGET.DATA_ID,
       TARGET.DATA_DATE,
       TARGET.CORP_ID,
       TARGET.ORG_ID,
       TARGET.GROUP_ID,
       TARGET.INQ_ORG_ID,
       TARGET.INQ_GROUP_ID,
       TARGET.B_ACCT_TYPE,
       TARGET.B_ACCT_CODE,
       TARGET.B_RPT_DATE,
       TARGET.B_RPT_DATE_CODE,
       TARGET.B_INF_REC_TYPE,
       TARGET.B_NAME,
       TARGET.B_ID_TYPE,
       TARGET.B_ID_NUM,
       TARGET.B_MNGMT_ORG_CODE,
       TARGET.B_CUST_NO,
       TARGET.C_BUSI_LINES,
       TARGET.C_BUSI_DTIL_LINES,
       TARGET.C_OPEN_DATE,
       TARGET.C_ACCT_CRED_LINE_LCY,
       TARGET.C_ACCT_CRED_LINE,
       TARGET.C_CY,
       TARGET.C_DUE_DATE,
       TARGET.C_GUAR_MODE,
       TARGET.C_OTH_REPY_GUAR_WAY,
       TARGET.C_SEC_DEP,
       TARGET.C_CTRCT_TXT_CD,
       TARGET.D_ACCT_STATUS,
       TARGET.D_LOAN_AMT_LCY,
       TARGET.D_LOAN_AMT,
       TARGET.D_REPAY_PRD,
       TARGET.D_FIVE_CATE,
       TARGET.D_FIVE_CATE_ADJ_DATE,
       TARGET.D_RI_EX_LCY,
       TARGET.D_RI_EX,
       TARGET.D_COMP_ADV_FLAG,
       TARGET.D_CLOSE_DATE,
       TARGET.CHECK_FLAG,
       TARGET.CHECK_DESC,
       TARGET.CHECK_ERR_TYPE,
       TARGET.NEXT_ACTION,
       TARGET.DATA_STATUS,
       TARGET.DATA_FLAG,
       TARGET.DATA_SOURCE,
       TARGET.DATA_VERSION,
       TARGET.DATA_REJ_DESC,
       TARGET.DATA_DEL_DESC,
       TARGET.DATA_CRT_USER,
       TARGET.DATA_CRT_DATE,
       TARGET.DATA_CRT_TIME,
       TARGET.DATA_CHG_USER,
       TARGET.DATA_CHG_DATE,
       TARGET.DATA_CHG_TIME,
       TARGET.DATA_APV_USER,
       TARGET.DATA_APV_DATE,
       TARGET.DATA_APV_TIME,
       TARGET.REF_NO,
       TARGET.DATA_DESC,
       TARGET.RSV1,
       TARGET.RSV2,
       TARGET.RSV3,
       TARGET.RSV4,
       TARGET.RSV5,
       TARGET.INF_REC_TYPE,
       TARGET.ODS_DATA_ID,
       TARGET.HIS_DATE,
       TARGET.HIS_TIME,
       TARGET.IS_RPT)
    VALUES
      (GET_DATA_ID(V_NOW_DATE),
       SOURCE.DATA_DATE,
       SOURCE.CORP_ID,
       SOURCE.ORG_ID,
       SOURCE.GROUP_ID,
       SOURCE.INQ_ORG_ID,
       SOURCE.INQ_GROUP_ID,
       SOURCE.B_ACCT_TYPE,
       SOURCE.B_ACCT_CODE,
       SOURCE.B_RPT_DATE,
       SOURCE.B_RPT_DATE_CODE,
       SOURCE.B_INF_REC_TYPE,
       SOURCE.B_NAME,
       SOURCE.B_ID_TYPE,
       SOURCE.B_ID_NUM,
       SOURCE.B_MNGMT_ORG_CODE,
       SOURCE.B_CUST_NO,
       SOURCE.C_BUSI_LINES,
       SOURCE.C_BUSI_DTIL_LINES,
       SOURCE.C_OPEN_DATE,
       SOURCE.C_ACCT_CRED_LINE_LCY,
       SOURCE.C_ACCT_CRED_LINE,
       SOURCE.C_CY,
       SOURCE.C_DUE_DATE,
       SOURCE.C_GUAR_MODE,
       SOURCE.C_OTH_REPY_GUAR_WAY,
       SOURCE.C_SEC_DEP,
       SOURCE.C_CTRCT_TXT_CD,
       SOURCE.D_ACCT_STATUS,
       SOURCE.D_LOAN_AMT_LCY,
       SOURCE.D_LOAN_AMT,
       SOURCE.D_REPAY_PRD,
       SOURCE.D_FIVE_CATE,
       SOURCE.D_FIVE_CATE_ADJ_DATE,
       SOURCE.D_RI_EX_LCY,
       SOURCE.D_RI_EX,
       SOURCE.D_COMP_ADV_FLAG,
       SOURCE.D_CLOSE_DATE,
       SOURCE.CHECK_FLAG,
       SOURCE.CHECK_DESC,
       SOURCE.CHECK_ERR_TYPE,
       SOURCE.NEXT_ACTION,
       '23',
       SOURCE.DATA_FLAG,
       SOURCE.DATA_SOURCE,
       SOURCE.DATA_VERSION,
       SOURCE.DATA_REJ_DESC,
       SOURCE.DATA_DEL_DESC,
       SOURCE.DATA_CRT_USER,
       SOURCE.DATA_CRT_DATE,
       SOURCE.DATA_CRT_TIME,
       SOURCE.DATA_CHG_USER,
       SOURCE.DATA_CHG_DATE,
       SOURCE.DATA_CHG_TIME,
       SOURCE.DATA_APV_USER,
       SOURCE.DATA_APV_DATE,
       SOURCE.DATA_APV_TIME,
       SOURCE.REF_NO,
       SOURCE.DATA_DESC,
       SOURCE.RSV1,
       SOURCE.RSV2,
       SOURCE.RSV3,
       SOURCE.RSV4,
       SOURCE.RSV5,
       SOURCE.INF_REC_TYPE,
       SOURCE.DATA_ID,
       V_NOW_DATE,
       V_NOW_TIME,
       SOURCE.IS_RPT);
  COMMIT;
  --²åÈë×Ó±í
  MERGE INTO MBT_230_E_HIS TARGET
  USING (SELECT C.DATA_ID,
                A.DATA_ID PDATA_ID,
                C.INFO_ID_TYPE,
                C.ARLP_NAME,
                C.ARLP_CERT_TYPE,
                C.ARLP_CERT_NUM,
                C.ARLP_TYPE,
                C.ARLP_AMT_ORG,
                C.ARLP_AMT,
                C.WARTY_SIGN,
                C.MAX_GUAR_MCC
           FROM MBT_230_HIS A
          RIGHT JOIN MBT_230_E C
             ON C.PDATA_ID = A.ODS_DATA_ID
          WHERE A.DATA_STATUS = '23'
            AND A.HIS_DATE = V_NOW_DATE
            AND A.B_RPT_DATE <= V_NOW_DATE) SOURCE
  ON (TARGET.DATA_ID = SOURCE.DATA_ID)
  WHEN NOT MATCHED THEN
    INSERT
      (TARGET.DATA_ID,
       TARGET.PDATA_ID,
       TARGET.INFO_ID_TYPE,
       TARGET.ARLP_NAME,
       TARGET.ARLP_CERT_TYPE,
       TARGET.ARLP_CERT_NUM,
       TARGET.ARLP_TYPE,
       TARGET.ARLP_AMT_ORG,
       TARGET.ARLP_AMT,
       TARGET.WARTY_SIGN,
       TARGET.MAX_GUAR_MCC,
       TARGET.ODS_DATA_ID,
       TARGET.HIS_DATE,
       TARGET.HIS_TIME)
    VALUES
      (GET_DATA_ID(V_NOW_DATE),
       SOURCE.PDATA_ID,
       SOURCE.INFO_ID_TYPE,
       SOURCE.ARLP_NAME,
       SOURCE.ARLP_CERT_TYPE,
       SOURCE.ARLP_CERT_NUM,
       SOURCE.ARLP_TYPE,
       SOURCE.ARLP_AMT_ORG,
       SOURCE.ARLP_AMT,
       SOURCE.WARTY_SIGN,
       SOURCE.MAX_GUAR_MCC,
       SOURCE.DATA_ID,
       V_NOW_DATE,
       V_NOW_TIME);
  COMMIT;
  MERGE INTO MBT_230_F_HIS TARGET
  USING (SELECT C.DATA_ID, A.DATA_ID PDATA_ID, C.CCC
           FROM MBT_230_HIS A
          RIGHT JOIN MBT_230_F C
             ON C.PDATA_ID = A.ODS_DATA_ID
          WHERE A.DATA_STATUS = '23'
            AND A.HIS_DATE = V_NOW_DATE
            AND A.B_RPT_DATE <= V_NOW_DATE) SOURCE
  ON (TARGET.DATA_ID = SOURCE.DATA_ID)
  WHEN NOT MATCHED THEN
    INSERT
      (TARGET.DATA_ID,
       TARGET.PDATA_ID,
       TARGET.CCC,
       TARGET.ODS_DATA_ID,
       TARGET.HIS_DATE,
       TARGET.HIS_TIME)
    VALUES
      (GET_DATA_ID(V_NOW_DATE),
       SOURCE.PDATA_ID,
       SOURCE.CCC,
       SOURCE.DATA_ID,
       V_NOW_DATE,
       V_NOW_TIME);
  COMMIT;
EXCEPTION
  WHEN OTHERS THEN
    ERRCODE := SQLCODE;
    ERRMSG  := SUBSTR(SQLERRM, 1, 200);
    ROLLBACK;
    RETURN;
END;
/

prompt
prompt Creating procedure SYNC_PM_TO_HIS_231
prompt =====================================
prompt
CREATE OR REPLACE PROCEDURE "SYNC_PM_TO_HIS_231"(ERRCODE   OUT VARCHAR,
                                           ERRMSG   OUT VARCHAR) AS V_NOW_DATE CHAR(8);
V_NOW_TIME CHAR(14);
BEGIN
    SELECT
        TO_CHAR(SYSDATE,'YYYYMMDD')
    INTO
        V_NOW_DATE
    FROM
        DUAL;
SELECT
    TO_CHAR(SYSDATE, 'YYYYMMDDHH24MISS')
INTO
    V_NOW_TIME
FROM
    DUAL;
DELETE
FROM
    MBT_231_HIS
WHERE
    HIS_DATE=V_NOW_DATE and DATA_STATUS='23';
COMMIT;
--²åÈëÖ÷±í
MERGE
INTO
    MBT_231_HIS TARGET
USING
    (
        SELECT
            DATA_ID,
            DATA_DATE,
            CORP_ID,
            ORG_ID,
            GROUP_ID,
            INQ_ORG_ID,
            INQ_GROUP_ID,
            INF_REC_TYPE,
            OD_BNES_CODE,
            NW_BNES_CODE,
            DATA_DESC,
            REMARKS,
            CHECK_FLAG,
            CHECK_DESC,
            CHECK_ERR_TYPE,
            NEXT_ACTION,
            DATA_STATUS,
            DATA_FLAG,
            DATA_SOURCE,
            DATA_VERSION,
            DATA_REJ_DESC,
            DATA_DEL_DESC,
            DATA_CRT_USER,
            DATA_CRT_DATE,
            DATA_CRT_TIME,
            DATA_CHG_USER,
            DATA_CHG_DATE,
            DATA_CHG_TIME,
            DATA_APV_USER,
            DATA_APV_DATE,
            DATA_APV_TIME,
            RSV1,
            RSV2,
            RSV3,
            RSV4,
            RSV5,
            IS_RPT
        FROM
            MBT_231
        WHERE
            DATA_STATUS='21') SOURCE
ON
    (
        TARGET.DATA_ID = SOURCE.DATA_ID)
WHEN NOT MATCHED
    THEN
INSERT
    (
        TARGET.DATA_ID,
        TARGET.DATA_DATE,
        TARGET.CORP_ID,
        TARGET.ORG_ID,
        TARGET.GROUP_ID,
        TARGET.INQ_ORG_ID,
        TARGET.INQ_GROUP_ID,
        TARGET.INF_REC_TYPE,
        TARGET.OD_BNES_CODE,
        TARGET.NW_BNES_CODE,
        TARGET.DATA_DESC,
        TARGET.REMARKS,
        TARGET.CHECK_FLAG,
        TARGET.CHECK_DESC,
        TARGET.CHECK_ERR_TYPE,
        TARGET.NEXT_ACTION,
        TARGET.DATA_STATUS,
        TARGET.DATA_FLAG,
        TARGET.DATA_SOURCE,
        TARGET.DATA_VERSION,
        TARGET.DATA_REJ_DESC,
        TARGET.DATA_DEL_DESC,
        TARGET.DATA_CRT_USER,
        TARGET.DATA_CRT_DATE,
        TARGET.DATA_CRT_TIME,
        TARGET.DATA_CHG_USER,
        TARGET.DATA_CHG_DATE,
        TARGET.DATA_CHG_TIME,
        TARGET.DATA_APV_USER,
        TARGET.DATA_APV_DATE,
        TARGET.DATA_APV_TIME,
        TARGET.RSV1,
        TARGET.RSV2,
        TARGET.RSV3,
        TARGET.RSV4,
        TARGET.RSV5,
        TARGET.ODS_DATA_ID,
        TARGET.HIS_DATE,
        TARGET.HIS_DATE_TIME,
        TARGET.IS_RPT
    )
    VALUES
    (
        GET_DATA_ID(V_NOW_DATE),
        SOURCE.DATA_DATE,
        SOURCE.CORP_ID,
        SOURCE.ORG_ID,
        SOURCE.GROUP_ID,
        SOURCE.INQ_ORG_ID,
        SOURCE.INQ_GROUP_ID,
        SOURCE.INF_REC_TYPE,
        SOURCE.OD_BNES_CODE,
        SOURCE.NW_BNES_CODE,
        SOURCE.DATA_DESC,
        SOURCE.REMARKS,
        SOURCE.CHECK_FLAG,
        SOURCE.CHECK_DESC,
        SOURCE.CHECK_ERR_TYPE,
        SOURCE.NEXT_ACTION,
        '23',
        SOURCE.DATA_FLAG,
        SOURCE.DATA_SOURCE,
        SOURCE.DATA_VERSION,
        SOURCE.DATA_REJ_DESC,
        SOURCE.DATA_DEL_DESC,
        SOURCE.DATA_CRT_USER,
        SOURCE.DATA_CRT_DATE,
        SOURCE.DATA_CRT_TIME,
        SOURCE.DATA_CHG_USER,
        SOURCE.DATA_CHG_DATE,
        SOURCE.DATA_CHG_TIME,
        SOURCE.DATA_APV_USER,
        SOURCE.DATA_APV_DATE,
        SOURCE.DATA_APV_TIME,
        SOURCE.RSV1,
        SOURCE.RSV2,
        SOURCE.RSV3,
        SOURCE.RSV4,
        SOURCE.RSV5,
        SOURCE.DATA_ID,
        V_NOW_DATE,
        V_NOW_TIME,
        SOURCE.IS_RPT
    );
COMMIT;
EXCEPTION
WHEN OTHERS THEN
    ERRCODE := SQLCODE;
    ERRMSG := SUBSTR(SQLERRM,1,200);
ROLLBACK;
RETURN;
END;
/

prompt
prompt Creating procedure SYNC_PM_TO_HIS_310
prompt =====================================
prompt
CREATE OR REPLACE PROCEDURE "SYNC_PM_TO_HIS_310"(ERRCODE OUT VARCHAR,
                                                 ERRMSG  OUT VARCHAR) AS
  V_NOW_DATE CHAR(8);
  V_NOW_TIME CHAR(14);
BEGIN
  SELECT TO_CHAR(SYSDATE, 'YYYYMMDD') INTO V_NOW_DATE FROM DUAL;
  SELECT TO_CHAR(SYSDATE, 'YYYYMMDDHH24MISS') INTO V_NOW_TIME FROM DUAL;

  DELETE FROM MBT_310_C_HIS
   WHERE  pdata_id in (select data_id
                       from MBT_310_HIS
                      where HIS_DATE = V_NOW_DATE
                        and data_status = '23'
                       );
  COMMIT;
  DELETE FROM MBT_310_E_HIS
   WHERE pdata_id in (select data_id
                       from MBT_310_HIS
                      where HIS_DATE = V_NOW_DATE
                        and data_status = '23'
                       );
  DELETE FROM MBT_310_F_HIS
   WHERE   pdata_id in (select data_id
                       from MBT_310_HIS
                      where HIS_DATE = V_NOW_DATE
                        and data_status = '23'
                       );
  DELETE FROM MBT_310_G_HIS
   WHERE  pdata_id in (select data_id
                       from MBT_310_HIS
                      where HIS_DATE = V_NOW_DATE
                        and data_status = '23'
                         );
  DELETE FROM MBT_310_HIS
   WHERE HIS_DATE = V_NOW_DATE
     and data_status = '23';
  COMMIT;
  --²åÈëÖ÷±í
  MERGE INTO MBT_310_HIS TARGET
  USING (SELECT M.DATA_ID,
                M.DATA_DATE,
                M.CORP_ID,
                M.ORG_ID,
                M.GROUP_ID,
                M.INQ_ORG_ID,
                M.INQ_GROUP_ID,
                M.B_INF_REC_TYPE,
                M.B_ENT_NAME,
                M.B_ENT_CERT,
                M.B_ENT_CERT_NUM,
                M.B_INF_SURC_CODE,
                M.B_RPT_DATE,
                M.B_RPT_DATE_CODE,
                M.B_CIMOC,
                M.B_CUSTOMER_TYPE,
                M.B_ETP_STS,
                M.B_ORG_TYPE,
                M.C_ID_INFO_UP_DATE,
                M.D_NATIONALITY,
                M.D_REG_ADD,
                M.D_ADM_DIV_OF_REG,
                M.D_ESTABLISH_DATE,
                M.D_BIZ_END_DATE,
                M.D_BIZ_RANGE,
                M.D_ECO_INDUS_CATE,
                M.D_ECO_TYPE,
                M.D_ENT_SCALE,
                M.D_FCS_INFO_UP_DATE,
                M.E_MN_MMB_INFO_UP_DATE,
                M.F_REG_CAP_CURRENCY,
                M.F_REG_CAP,
                M.F_REG_CAP_LCY,
                M.F_MN_SHA_HOD_INFO_DATE,
                M.G_ACTU_COTRL_INFO_UP_DATE,
                M.H_SUP_ORG_TYPE,
                M.H_SUP_ORG_NAME,
                M.H_SUP_ORG_CERT_TYPE,
                M.H_SUP_ORG_CERT_NUM,
                M.H_SUP_ORG_INFO_UP_DATE,
                M.I_CON_ADD_DISTRICT_CODE,
                M.I_CON_ADD,
                M.I_CON_PHONE,
                M.I_FIN_CON_PHONE,
                M.I_COTA_INFO_UP_DATE,
                M.REMARKS,
                M.CHECK_FLAG,
                M.CHECK_DESC,
                M.CHECK_ERR_TYPE,
                M.NEXT_ACTION,
                M.DATA_STATUS,
                M.DATA_FLAG,
                M.DATA_SOURCE,
                M.DATA_VERSION,
                M.DATA_REJ_DESC,
                M.DATA_DEL_DESC,
                M.DATA_CRT_USER,
                M.DATA_CRT_DATE,
                M.DATA_CRT_TIME,
                M.DATA_CHG_USER,
                M.DATA_CHG_DATE,
                M.DATA_CHG_TIME,
                M.DATA_APV_USER,
                M.DATA_APV_DATE,
                M.DATA_APV_TIME,
                M.RSV1,
                M.RSV2,
                M.RSV3,
                M.RSV4,
                M.RSV5,
                M.DATA_DESC,
                M.B_CUST_NO,
                M.IS_RPT
           FROM MBT_310 M
          WHERE M.DATA_STATUS = '21'
            AND M.B_RPT_DATE <= V_NOW_DATE
            AND (SELECT COUNT(1) AS CNT
                   FROM MBT_310_HIS N, MBT_310_RPT R
                  WHERE R.ODS_DATA_ID = N.DATA_ID
                    AND N.ODS_DATA_ID = M.DATA_ID
                    AND N.HIS_DATE = V_NOW_DATE
                    AND R.RPT_DATE = V_NOW_DATE
                    AND R.DATA_STATUS != '24') < 1) SOURCE
  ON (TARGET.DATA_ID = SOURCE.DATA_ID)
  WHEN NOT MATCHED THEN
    INSERT
      (TARGET.DATA_ID,
       TARGET.DATA_DATE,
       TARGET.CORP_ID,
       TARGET.ORG_ID,
       TARGET.GROUP_ID,
       TARGET.INQ_ORG_ID,
       TARGET.INQ_GROUP_ID,
       TARGET.B_INF_REC_TYPE,
       TARGET.B_ENT_NAME,
       TARGET.B_ENT_CERT,
       TARGET.B_ENT_CERT_NUM,
       TARGET.B_INF_SURC_CODE,
       TARGET.B_RPT_DATE,
       TARGET.B_RPT_DATE_CODE,
       TARGET.B_CIMOC,
       TARGET.B_CUSTOMER_TYPE,
       TARGET.B_ETP_STS,
       TARGET.B_ORG_TYPE,
       TARGET.C_ID_INFO_UP_DATE,
       TARGET.D_NATIONALITY,
       TARGET.D_REG_ADD,
       TARGET.D_ADM_DIV_OF_REG,
       TARGET.D_ESTABLISH_DATE,
       TARGET.D_BIZ_END_DATE,
       TARGET.D_BIZ_RANGE,
       TARGET.D_ECO_INDUS_CATE,
       TARGET.D_ECO_TYPE,
       TARGET.D_ENT_SCALE,
       TARGET.D_FCS_INFO_UP_DATE,
       TARGET.E_MN_MMB_INFO_UP_DATE,
       TARGET.F_REG_CAP_CURRENCY,
       TARGET.F_REG_CAP,
       TARGET.F_REG_CAP_LCY,
       TARGET.F_MN_SHA_HOD_INFO_DATE,
       TARGET.G_ACTU_COTRL_INFO_UP_DATE,
       TARGET.H_SUP_ORG_TYPE,
       TARGET.H_SUP_ORG_NAME,
       TARGET.H_SUP_ORG_CERT_TYPE,
       TARGET.H_SUP_ORG_CERT_NUM,
       TARGET.H_SUP_ORG_INFO_UP_DATE,
       TARGET.I_CON_ADD_DISTRICT_CODE,
       TARGET.I_CON_ADD,
       TARGET.I_CON_PHONE,
       TARGET.I_FIN_CON_PHONE,
       TARGET.I_COTA_INFO_UP_DATE,
       TARGET.REMARKS,
       TARGET.CHECK_FLAG,
       TARGET.CHECK_DESC,
       TARGET.CHECK_ERR_TYPE,
       TARGET.NEXT_ACTION,
       TARGET.DATA_STATUS,
       TARGET.DATA_FLAG,
       TARGET.DATA_SOURCE,
       TARGET.DATA_VERSION,
       TARGET.DATA_REJ_DESC,
       TARGET.DATA_DEL_DESC,
       TARGET.DATA_CRT_USER,
       TARGET.DATA_CRT_DATE,
       TARGET.DATA_CRT_TIME,
       TARGET.DATA_CHG_USER,
       TARGET.DATA_CHG_DATE,
       TARGET.DATA_CHG_TIME,
       TARGET.DATA_APV_USER,
       TARGET.DATA_APV_DATE,
       TARGET.DATA_APV_TIME,
       TARGET.RSV1,
       TARGET.RSV2,
       TARGET.RSV3,
       TARGET.RSV4,
       TARGET.RSV5,
       TARGET.DATA_DESC,
       TARGET.ODS_DATA_ID,
       TARGET.HIS_DATE,
       TARGET.HIS_DATE_TIME,
       TARGET.B_CUST_NO,
       TARGET.IS_RPT)
    VALUES
      (GET_DATA_ID(V_NOW_DATE),
       SOURCE.DATA_DATE,
       SOURCE.CORP_ID,
       SOURCE.ORG_ID,
       SOURCE.GROUP_ID,
       SOURCE.INQ_ORG_ID,
       SOURCE.INQ_GROUP_ID,
       SOURCE.B_INF_REC_TYPE,
       SOURCE.B_ENT_NAME,
       SOURCE.B_ENT_CERT,
       SOURCE.B_ENT_CERT_NUM,
       SOURCE.B_INF_SURC_CODE,
       SOURCE.B_RPT_DATE,
       SOURCE.B_RPT_DATE_CODE,
       SOURCE.B_CIMOC,
       SOURCE.B_CUSTOMER_TYPE,
       SOURCE.B_ETP_STS,
       SOURCE.B_ORG_TYPE,
       SOURCE.C_ID_INFO_UP_DATE,
       SOURCE.D_NATIONALITY,
       SOURCE.D_REG_ADD,
       SOURCE.D_ADM_DIV_OF_REG,
       SOURCE.D_ESTABLISH_DATE,
       SOURCE.D_BIZ_END_DATE,
       SOURCE.D_BIZ_RANGE,
       SOURCE.D_ECO_INDUS_CATE,
       SOURCE.D_ECO_TYPE,
       SOURCE.D_ENT_SCALE,
       SOURCE.D_FCS_INFO_UP_DATE,
       SOURCE.E_MN_MMB_INFO_UP_DATE,
       SOURCE.F_REG_CAP_CURRENCY,
       SOURCE.F_REG_CAP,
       SOURCE.F_REG_CAP_LCY,
       SOURCE.F_MN_SHA_HOD_INFO_DATE,
       SOURCE.G_ACTU_COTRL_INFO_UP_DATE,
       SOURCE.H_SUP_ORG_TYPE,
       SOURCE.H_SUP_ORG_NAME,
       SOURCE.H_SUP_ORG_CERT_TYPE,
       SOURCE.H_SUP_ORG_CERT_NUM,
       SOURCE.H_SUP_ORG_INFO_UP_DATE,
       SOURCE.I_CON_ADD_DISTRICT_CODE,
       SOURCE.I_CON_ADD,
       SOURCE.I_CON_PHONE,
       SOURCE.I_FIN_CON_PHONE,
       SOURCE.I_COTA_INFO_UP_DATE,
       SOURCE.REMARKS,
       SOURCE.CHECK_FLAG,
       SOURCE.CHECK_DESC,
       SOURCE.CHECK_ERR_TYPE,
       SOURCE.NEXT_ACTION,
       '23',
       SOURCE.DATA_FLAG,
       SOURCE.DATA_SOURCE,
       SOURCE.DATA_VERSION,
       SOURCE.DATA_REJ_DESC,
       SOURCE.DATA_DEL_DESC,
       SOURCE.DATA_CRT_USER,
       SOURCE.DATA_CRT_DATE,
       SOURCE.DATA_CRT_TIME,
       SOURCE.DATA_CHG_USER,
       SOURCE.DATA_CHG_DATE,
       SOURCE.DATA_CHG_TIME,
       SOURCE.DATA_APV_USER,
       SOURCE.DATA_APV_DATE,
       SOURCE.DATA_APV_TIME,
       SOURCE.RSV1,
       SOURCE.RSV2,
       SOURCE.RSV3,
       SOURCE.RSV4,
       SOURCE.RSV5,
       SOURCE.DATA_DESC,
       SOURCE.DATA_ID,
       V_NOW_DATE,
       V_NOW_TIME,
       SOURCE.B_CUST_NO,
       SOURCE.IS_RPT);
  COMMIT;
  --²åÈë×Ó±í
  MERGE INTO MBT_310_C_HIS TARGET
  USING (SELECT C.DATA_ID,
                A.DATA_ID PDATA_ID,
                C.OTH_ENT_CERT_TYPE,
                C.OTH_ENT_CERT_NUM,
                C.DATA_STATUS,
                C.ID_INFO_UP_DATE,
                C.DATA_DATE,
                C.CORP_ID,
                C.ORG_ID,
                C.GROUP_ID,
                C.INQ_ORG_ID,
                C.INQ_GROUP_ID,
                C.DATA_DESC,
                C.REMARKS,
                C.CHECK_FLAG,
                C.CHECK_DESC,
                C.CHECK_ERR_TYPE,
                C.NEXT_ACTION,
                C.DATA_FLAG,
                C.DATA_SOURE,
                C.DATA_VERSION,
                C.DATA_REJ_DESC,
                C.DATA_DEL_DESC,
                C.DATA_CRT_USER,
                C.DATA_CRT_DATE,
                C.DATA_CRT_TIME,
                C.DATA_CHG_USER,
                C.DATA_CHG_DATE,
                C.DATA_CHG_TIME,
                C.DATA_APV_USER,
                C.DATA_APV_DATE,
                C.DATA_APV_TIME,
                C.RSV1,
                C.RSV2,
                C.RSV3,
                C.RSV4,
                C.RSV5,
                A.B_ENT_CERT,
                A.B_ENT_CERT_NUM
           FROM MBT_310_HIS A
          RIGHT JOIN MBT_310_C C
             ON C.PDATA_ID = A.ODS_DATA_ID
          WHERE A.DATA_STATUS = '23'
            AND A.HIS_DATE = V_NOW_DATE
            AND A.B_RPT_DATE <= V_NOW_DATE) SOURCE
  ON (TARGET.DATA_ID = SOURCE.DATA_ID)
  WHEN NOT MATCHED THEN
    INSERT
      (TARGET.DATA_ID,
       TARGET.PDATA_ID,
       TARGET.OTH_ENT_CERT_TYPE,
       TARGET.OTH_ENT_CERT_NUM,
       TARGET.DATA_STATUS,
       TARGET.ID_INFO_UP_DATE,
       TARGET.DATA_DATE,
       TARGET.CORP_ID,
       TARGET.ORG_ID,
       TARGET.GROUP_ID,
       TARGET.INQ_ORG_ID,
       TARGET.INQ_GROUP_ID,
       TARGET.DATA_DESC,
       TARGET.REMARKS,
       TARGET.CHECK_FLAG,
       TARGET.CHECK_DESC,
       TARGET.CHECK_ERR_TYPE,
       TARGET.NEXT_ACTION,
       TARGET.DATA_FLAG,
       TARGET.DATA_SOURE,
       TARGET.DATA_VERSION,
       TARGET.DATA_REJ_DESC,
       TARGET.DATA_DEL_DESC,
       TARGET.DATA_CRT_USER,
       TARGET.DATA_CRT_DATE,
       TARGET.DATA_CRT_TIME,
       TARGET.DATA_CHG_USER,
       TARGET.DATA_CHG_DATE,
       TARGET.DATA_CHG_TIME,
       TARGET.DATA_APV_USER,
       TARGET.DATA_APV_DATE,
       TARGET.DATA_APV_TIME,
       TARGET.RSV1,
       TARGET.RSV2,
       TARGET.RSV3,
       TARGET.RSV4,
       TARGET.RSV5,
       TARGET.ODS_DATA_ID,
       TARGET.HIS_DATE,
       TARGET.HIS_DATE_TIME,
       TARGET.B_ENT_CERT,
       TARGET.B_ENT_CERT_NUM)
    VALUES
      (GET_DATA_ID(V_NOW_DATE),
       SOURCE.PDATA_ID,
       SOURCE.OTH_ENT_CERT_TYPE,
       SOURCE.OTH_ENT_CERT_NUM,
       SOURCE.DATA_STATUS,
       SOURCE.ID_INFO_UP_DATE,
       SOURCE.DATA_DATE,
       SOURCE.CORP_ID,
       SOURCE.ORG_ID,
       SOURCE.GROUP_ID,
       SOURCE.INQ_ORG_ID,
       SOURCE.INQ_GROUP_ID,
       SOURCE.DATA_DESC,
       SOURCE.REMARKS,
       SOURCE.CHECK_FLAG,
       SOURCE.CHECK_DESC,
       SOURCE.CHECK_ERR_TYPE,
       SOURCE.NEXT_ACTION,
       SOURCE.DATA_FLAG,
       SOURCE.DATA_SOURE,
       SOURCE.DATA_VERSION,
       SOURCE.DATA_REJ_DESC,
       SOURCE.DATA_DEL_DESC,
       SOURCE.DATA_CRT_USER,
       SOURCE.DATA_CRT_DATE,
       SOURCE.DATA_CRT_TIME,
       SOURCE.DATA_CHG_USER,
       SOURCE.DATA_CHG_DATE,
       SOURCE.DATA_CHG_TIME,
       SOURCE.DATA_APV_USER,
       SOURCE.DATA_APV_DATE,
       SOURCE.DATA_APV_TIME,
       SOURCE.RSV1,
       SOURCE.RSV2,
       SOURCE.RSV3,
       SOURCE.RSV4,
       SOURCE.RSV5,
       SOURCE.DATA_ID,
       V_NOW_DATE,
       V_NOW_TIME,
       SOURCE.B_ENT_CERT,
       SOURCE.B_ENT_CERT_NUM);
  COMMIT;
  MERGE INTO MBT_310_E_HIS TARGET
  USING (SELECT C.DATA_ID,
                A.DATA_ID PDATA_ID,
                C.MMB_ALIAS,
                C.MMB_ID_TYPE,
                C.MMB_ID_NUM,
                C.MMB_PSTN,
                C.DATA_STATUS,
                C.DATA_DATE,
                C.CORP_ID,
                C.ORG_ID,
                C.GROUP_ID,
                C.INQ_ORG_ID,
                C.INQ_GROUP_ID,
                C.DATA_DESC,
                C.REMARKS,
                C.CHECK_FLAG,
                C.CHECK_DESC,
                C.CHECK_ERR_TYPE,
                C.NEXT_ACTION,
                C.DATA_FLAG,
                C.DATA_SOURCE,
                C.DATA_VERSION,
                C.DATA_REJ_DESC,
                C.DATA_DEL_DESC,
                C.DATA_CRT_USER,
                C.DATA_CRT_DATE,
                C.DATA_CRT_TIME,
                C.DATA_CHG_USER,
                C.DATA_CHG_DATE,
                C.DATA_CHG_TIME,
                C.DATA_APV_USER,
                C.DATA_APV_DATE,
                C.DATA_APV_TIME,
                C.RSV1,
                C.RSV2,
                C.RSV3,
                C.RSV4,
                C.RSV5,
                C.MN_MMB_INFO_UP_DATE,
                A.B_ENT_CERT,
                A.B_ENT_CERT_NUM
           FROM MBT_310_HIS A
          RIGHT JOIN MBT_310_E C
             ON C.PDATA_ID = A.ODS_DATA_ID
          WHERE A.DATA_STATUS = '23'
            AND A.HIS_DATE = V_NOW_DATE
            AND A.B_RPT_DATE <= V_NOW_DATE) SOURCE
  ON (TARGET.DATA_ID = SOURCE.DATA_ID)
  WHEN NOT MATCHED THEN
    INSERT
      (TARGET.DATA_ID,
       TARGET.PDATA_ID,
       TARGET.MMB_ALIAS,
       TARGET.MMB_ID_TYPE,
       TARGET.MMB_ID_NUM,
       TARGET.MMB_PSTN,
       TARGET.DATA_STATUS,
       TARGET.DATA_DATE,
       TARGET.CORP_ID,
       TARGET.ORG_ID,
       TARGET.GROUP_ID,
       TARGET.INQ_ORG_ID,
       TARGET.INQ_GROUP_ID,
       TARGET.DATA_DESC,
       TARGET.REMARKS,
       TARGET.CHECK_FLAG,
       TARGET.CHECK_DESC,
       TARGET.CHECK_ERR_TYPE,
       TARGET.NEXT_ACTION,
       TARGET.DATA_FLAG,
       TARGET.DATA_SOURCE,
       TARGET.DATA_VERSION,
       TARGET.DATA_REJ_DESC,
       TARGET.DATA_DEL_DESC,
       TARGET.DATA_CRT_USER,
       TARGET.DATA_CRT_DATE,
       TARGET.DATA_CRT_TIME,
       TARGET.DATA_CHG_USER,
       TARGET.DATA_CHG_DATE,
       TARGET.DATA_CHG_TIME,
       TARGET.DATA_APV_USER,
       TARGET.DATA_APV_DATE,
       TARGET.DATA_APV_TIME,
       TARGET.RSV1,
       TARGET.RSV2,
       TARGET.RSV3,
       TARGET.RSV4,
       TARGET.RSV5,
       TARGET.MN_MMB_INFO_UP_DATE,
       TARGET.ODS_DATA_ID,
       TARGET.HIS_DATE,
       TARGET.HIS_DATE_TIME,
       TARGET.B_ENT_CERT,
       TARGET.B_ENT_CERT_NUM)
    VALUES
      (GET_DATA_ID(V_NOW_DATE),
       SOURCE.PDATA_ID,
       SOURCE.MMB_ALIAS,
       SOURCE.MMB_ID_TYPE,
       SOURCE.MMB_ID_NUM,
       SOURCE.MMB_PSTN,
       SOURCE.DATA_STATUS,
       SOURCE.DATA_DATE,
       SOURCE.CORP_ID,
       SOURCE.ORG_ID,
       SOURCE.GROUP_ID,
       SOURCE.INQ_ORG_ID,
       SOURCE.INQ_GROUP_ID,
       SOURCE.DATA_DESC,
       SOURCE.REMARKS,
       SOURCE.CHECK_FLAG,
       SOURCE.CHECK_DESC,
       SOURCE.CHECK_ERR_TYPE,
       SOURCE.NEXT_ACTION,
       SOURCE.DATA_FLAG,
       SOURCE.DATA_SOURCE,
       SOURCE.DATA_VERSION,
       SOURCE.DATA_REJ_DESC,
       SOURCE.DATA_DEL_DESC,
       SOURCE.DATA_CRT_USER,
       SOURCE.DATA_CRT_DATE,
       SOURCE.DATA_CRT_TIME,
       SOURCE.DATA_CHG_USER,
       SOURCE.DATA_CHG_DATE,
       SOURCE.DATA_CHG_TIME,
       SOURCE.DATA_APV_USER,
       SOURCE.DATA_APV_DATE,
       SOURCE.DATA_APV_TIME,
       SOURCE.RSV1,
       SOURCE.RSV2,
       SOURCE.RSV3,
       SOURCE.RSV4,
       SOURCE.RSV5,
       SOURCE.MN_MMB_INFO_UP_DATE,
       SOURCE.DATA_ID,
       V_NOW_DATE,
       V_NOW_TIME,
       SOURCE.B_ENT_CERT,
       SOURCE.B_ENT_CERT_NUM);
  COMMIT;
  MERGE INTO MBT_310_F_HIS TARGET
  USING (SELECT C.DATA_ID,
                A.DATA_ID PDATA_ID,
                C.SHAR_HOD_TYPE,
                C.SHAR_HOD_CERT_TYPE,
                C.SHAR_HOD_NAME,
                C.SHAR_HOD_ID_TYPE,
                C.SHAR_HOD_ID_NUM,
                C.INV_RATIO,
                C.DATA_STATUS,
                C.DATA_DATE,
                C.CORP_ID,
                C.ORG_ID,
                C.GROUP_ID,
                C.INQ_ORG_ID,
                C.INQ_GROUP_ID,
                C.DATA_DESC,
                C.REMARKS,
                C.CHECK_FLAG,
                C.CHECK_DESC,
                C.CHECK_ERR_TYPE,
                C.NEXT_ACTION,
                C.DATA_FLAG,
                C.DATA_SOURE,
                C.DATA_VERSION,
                C.DATA_REJ_DESC,
                C.DATA_DEL_DESC,
                C.DATA_CRT_USER,
                C.DATA_CRT_DATE,
                C.DATA_CRT_TIME,
                C.DATA_CHG_USER,
                C.DATA_CHG_DATE,
                C.DATA_CHG_TIME,
                C.DATA_APV_USER,
                C.DATA_APV_DATE,
                C.DATA_APV_TIME,
                C.RSV1,
                C.RSV2,
                C.RSV3,
                C.RSV4,
                C.RSV5,
                C.MN_SHA_HOD_INFO_UP_DATE,
                A.B_ENT_CERT,
                A.B_ENT_CERT_NUM
           FROM MBT_310_HIS A
          RIGHT JOIN MBT_310_F C
             ON C.PDATA_ID = A.ODS_DATA_ID
          WHERE A.DATA_STATUS = '23'
            AND A.HIS_DATE = V_NOW_DATE
            AND A.B_RPT_DATE <= V_NOW_DATE) SOURCE
  ON (TARGET.DATA_ID = SOURCE.DATA_ID)
  WHEN NOT MATCHED THEN
    INSERT
      (TARGET.DATA_ID,
       TARGET.PDATA_ID,
       TARGET.SHAR_HOD_TYPE,
       TARGET.SHAR_HOD_CERT_TYPE,
       TARGET.SHAR_HOD_NAME,
       TARGET.SHAR_HOD_ID_TYPE,
       TARGET.SHAR_HOD_ID_NUM,
       TARGET.INV_RATIO,
       TARGET.DATA_STATUS,
       TARGET.DATA_DATE,
       TARGET.CORP_ID,
       TARGET.ORG_ID,
       TARGET.GROUP_ID,
       TARGET.INQ_ORG_ID,
       TARGET.INQ_GROUP_ID,
       TARGET.DATA_DESC,
       TARGET.REMARKS,
       TARGET.CHECK_FLAG,
       TARGET.CHECK_DESC,
       TARGET.CHECK_ERR_TYPE,
       TARGET.NEXT_ACTION,
       TARGET.DATA_FLAG,
       TARGET.DATA_SOURE,
       TARGET.DATA_VERSION,
       TARGET.DATA_REJ_DESC,
       TARGET.DATA_DEL_DESC,
       TARGET.DATA_CRT_USER,
       TARGET.DATA_CRT_DATE,
       TARGET.DATA_CRT_TIME,
       TARGET.DATA_CHG_USER,
       TARGET.DATA_CHG_DATE,
       TARGET.DATA_CHG_TIME,
       TARGET.DATA_APV_USER,
       TARGET.DATA_APV_DATE,
       TARGET.DATA_APV_TIME,
       TARGET.RSV1,
       TARGET.RSV2,
       TARGET.RSV3,
       TARGET.RSV4,
       TARGET.RSV5,
       TARGET.MN_SHA_HOD_INFO_UP_DATE,
       TARGET.ODS_DATA_ID,
       TARGET.HIS_DATE,
       TARGET.HIS_DATE_TIME,
       TARGET.B_ENT_CERT,
       TARGET.B_ENT_CERT_NUM)
    VALUES
      (GET_DATA_ID(V_NOW_DATE),
       SOURCE.PDATA_ID,
       SOURCE.SHAR_HOD_TYPE,
       SOURCE.SHAR_HOD_CERT_TYPE,
       SOURCE.SHAR_HOD_NAME,
       SOURCE.SHAR_HOD_ID_TYPE,
       SOURCE.SHAR_HOD_ID_NUM,
       SOURCE.INV_RATIO,
       SOURCE.DATA_STATUS,
       SOURCE.DATA_DATE,
       SOURCE.CORP_ID,
       SOURCE.ORG_ID,
       SOURCE.GROUP_ID,
       SOURCE.INQ_ORG_ID,
       SOURCE.INQ_GROUP_ID,
       SOURCE.DATA_DESC,
       SOURCE.REMARKS,
       SOURCE.CHECK_FLAG,
       SOURCE.CHECK_DESC,
       SOURCE.CHECK_ERR_TYPE,
       SOURCE.NEXT_ACTION,
       SOURCE.DATA_FLAG,
       SOURCE.DATA_SOURE,
       SOURCE.DATA_VERSION,
       SOURCE.DATA_REJ_DESC,
       SOURCE.DATA_DEL_DESC,
       SOURCE.DATA_CRT_USER,
       SOURCE.DATA_CRT_DATE,
       SOURCE.DATA_CRT_TIME,
       SOURCE.DATA_CHG_USER,
       SOURCE.DATA_CHG_DATE,
       SOURCE.DATA_CHG_TIME,
       SOURCE.DATA_APV_USER,
       SOURCE.DATA_APV_DATE,
       SOURCE.DATA_APV_TIME,
       SOURCE.RSV1,
       SOURCE.RSV2,
       SOURCE.RSV3,
       SOURCE.RSV4,
       SOURCE.RSV5,
       SOURCE.MN_SHA_HOD_INFO_UP_DATE,
       SOURCE.DATA_ID,
       V_NOW_DATE,
       V_NOW_TIME,
       SOURCE.B_ENT_CERT,
       SOURCE.B_ENT_CERT_NUM);
  COMMIT;
  MERGE INTO MBT_310_G_HIS TARGET
  USING (SELECT C.DATA_ID,
                A.DATA_ID PDATA_ID,
                C.ACTU_COTRL_CERT_TYPE,
                C.ACTU_COTRL_NAME,
                C.ACTU_COTRL_ID_TYPE,
                C.ACTU_COTRL_ID_NUM,
                C.DATA_STATUS,
                C.DATA_DATE,
                C.CORP_ID,
                C.ORG_ID,
                C.GROUP_ID,
                C.INQ_ORG_ID,
                C.INQ_GROUP_ID,
                C.DATA_DESC,
                C.REMARKS,
                C.CHECK_FLAG,
                C.CHECK_DESC,
                C.CHECK_ERR_TYPE,
                C.NEXT_ACTION,
                C.DATA_FLAG,
                C.DATA_SOURE,
                C.DATA_VERSION,
                C.DATA_REJ_DESC,
                C.DATA_DEL_DESC,
                C.DATA_CRT_USER,
                C.DATA_CRT_DATE,
                C.DATA_CRT_TIME,
                C.DATA_CHG_USER,
                C.DATA_CHG_DATE,
                C.DATA_CHG_TIME,
                C.DATA_APV_USER,
                C.DATA_APV_DATE,
                C.DATA_APV_TIME,
                C.RSV1,
                C.RSV2,
                C.RSV3,
                C.RSV4,
                C.RSV5,
                C.ACTU_COTRL_INFO_UP_DATE,
                A.B_ENT_CERT,
                A.B_ENT_CERT_NUM
           FROM MBT_310_HIS A
          RIGHT JOIN MBT_310_G C
             ON C.PDATA_ID = A.ODS_DATA_ID
          WHERE A.DATA_STATUS = '23'
            AND A.HIS_DATE = V_NOW_DATE
            AND A.B_RPT_DATE <= V_NOW_DATE) SOURCE
  ON (TARGET.DATA_ID = SOURCE.DATA_ID)
  WHEN NOT MATCHED THEN
    INSERT
      (TARGET.DATA_ID,
       TARGET.PDATA_ID,
       TARGET.ACTU_COTRL_CERT_TYPE,
       TARGET.ACTU_COTRL_NAME,
       TARGET.ACTU_COTRL_ID_TYPE,
       TARGET.ACTU_COTRL_ID_NUM,
       TARGET.DATA_STATUS,
       TARGET.DATA_DATE,
       TARGET.CORP_ID,
       TARGET.ORG_ID,
       TARGET.GROUP_ID,
       TARGET.INQ_ORG_ID,
       TARGET.INQ_GROUP_ID,
       TARGET.DATA_DESC,
       TARGET.REMARKS,
       TARGET.CHECK_FLAG,
       TARGET.CHECK_DESC,
       TARGET.CHECK_ERR_TYPE,
       TARGET.NEXT_ACTION,
       TARGET.DATA_FLAG,
       TARGET.DATA_SOURE,
       TARGET.DATA_VERSION,
       TARGET.DATA_REJ_DESC,
       TARGET.DATA_DEL_DESC,
       TARGET.DATA_CRT_USER,
       TARGET.DATA_CRT_DATE,
       TARGET.DATA_CRT_TIME,
       TARGET.DATA_CHG_USER,
       TARGET.DATA_CHG_DATE,
       TARGET.DATA_CHG_TIME,
       TARGET.DATA_APV_USER,
       TARGET.DATA_APV_DATE,
       TARGET.DATA_APV_TIME,
       TARGET.RSV1,
       TARGET.RSV2,
       TARGET.RSV3,
       TARGET.RSV4,
       TARGET.RSV5,
       TARGET.ACTU_COTRL_INFO_UP_DATE,
       TARGET.ODS_DATA_ID,
       TARGET.HIS_DATE,
       TARGET.HIS_DATE_TIME,
       TARGET.B_ENT_CERT,
       TARGET.B_ENT_CERT_NUM)
    VALUES
      (GET_DATA_ID(V_NOW_DATE),
       SOURCE.PDATA_ID,
       SOURCE.ACTU_COTRL_CERT_TYPE,
       SOURCE.ACTU_COTRL_NAME,
       SOURCE.ACTU_COTRL_ID_TYPE,
       SOURCE.ACTU_COTRL_ID_NUM,
       SOURCE.DATA_STATUS,
       SOURCE.DATA_DATE,
       SOURCE.CORP_ID,
       SOURCE.ORG_ID,
       SOURCE.GROUP_ID,
       SOURCE.INQ_ORG_ID,
       SOURCE.INQ_GROUP_ID,
       SOURCE.DATA_DESC,
       SOURCE.REMARKS,
       SOURCE.CHECK_FLAG,
       SOURCE.CHECK_DESC,
       SOURCE.CHECK_ERR_TYPE,
       SOURCE.NEXT_ACTION,
       SOURCE.DATA_FLAG,
       SOURCE.DATA_SOURE,
       SOURCE.DATA_VERSION,
       SOURCE.DATA_REJ_DESC,
       SOURCE.DATA_DEL_DESC,
       SOURCE.DATA_CRT_USER,
       SOURCE.DATA_CRT_DATE,
       SOURCE.DATA_CRT_TIME,
       SOURCE.DATA_CHG_USER,
       SOURCE.DATA_CHG_DATE,
       SOURCE.DATA_CHG_TIME,
       SOURCE.DATA_APV_USER,
       SOURCE.DATA_APV_DATE,
       SOURCE.DATA_APV_TIME,
       SOURCE.RSV1,
       SOURCE.RSV2,
       SOURCE.RSV3,
       SOURCE.RSV4,
       SOURCE.RSV5,
       SOURCE.ACTU_COTRL_INFO_UP_DATE,
       SOURCE.DATA_ID,
       V_NOW_DATE,
       V_NOW_TIME,
       SOURCE.B_ENT_CERT,
       SOURCE.B_ENT_CERT_NUM);
  COMMIT;
EXCEPTION
  WHEN OTHERS THEN
    ERRCODE := SQLCODE;
    ERRMSG  := SUBSTR(SQLERRM, 1, 200);
    ROLLBACK;
    RETURN;
END;
/

prompt
prompt Creating procedure SYNC_PM_TO_HIS_340
prompt =====================================
prompt
CREATE OR REPLACE PROCEDURE "SYNC_PM_TO_HIS_340"(ERRCODE   OUT VARCHAR,
                                           ERRMSG   OUT VARCHAR) AS V_NOW_DATE CHAR(8);
V_NOW_TIME CHAR(14);
BEGIN
    SELECT
        TO_CHAR(SYSDATE,'YYYYMMDD')
    INTO
        V_NOW_DATE
    FROM
        DUAL;
SELECT
    TO_CHAR(SYSDATE, 'YYYYMMDDHH24MISS')
INTO
    V_NOW_TIME
FROM
    DUAL;
DELETE
FROM
    MBT_340_HIS
WHERE
    HIS_DATE=V_NOW_DATE and DATA_STATUS='23';
COMMIT;
--²åÈëÖ÷±í
MERGE
INTO
    MBT_340_HIS TARGET
USING
    (
        SELECT
            DATA_ID,
            DATA_DATE,
            CORP_ID,
            ORG_ID,
            GROUP_ID,
            INQ_ORG_ID,
            INQ_GROUP_ID,
            B_INF_REC_TYPE,
            B_ENT_NAME,
            B_ENT_CERT_TYPE,
            B_ENT_CERT_NUM,
            B_OTH_ENT_CERT_TYPE,
            B_OTH_ENT_CERT_NUM,
            B_CERT_ASS_FLG,
            B_RPT_DATE,
            C_DATA_DESC,
            REMARKS,
            CHECK_FLAG,
            CHECK_DESC,
            CHECK_ERR_TYPE,
            NEXT_ACTION,
            DATA_STATUS,
            DATA_FLAG,
            DATA_SOURCE,
            DATA_VERSION,
            DATA_REJ_DESC,
            DATA_DEL_DESC,
            DATA_CRT_USER,
            DATA_CRT_DATE,
            DATA_CRT_TIME,
            DATA_CHG_USER,
            DATA_CHG_DATE,
            DATA_CHG_TIME,
            DATA_APV_USER,
            DATA_APV_DATE,
            DATA_APV_TIME,
            RSV1,
            RSV2,
            RSV3,
            RSV4,
            RSV5,
            B_CUST_NO,
            D_FCS_INFO_UP_DATE,
            B_RPT_DATE_CODE,
            IS_RPT
        FROM
            MBT_340
        WHERE
            DATA_STATUS='21' ) SOURCE
ON
    (
        TARGET.DATA_ID = SOURCE.DATA_ID)
WHEN NOT MATCHED
    THEN
INSERT
    (
        TARGET.DATA_ID,
        TARGET.DATA_DATE,
        TARGET.CORP_ID,
        TARGET.ORG_ID,
        TARGET.GROUP_ID,
        TARGET.INQ_ORG_ID,
        TARGET.INQ_GROUP_ID,
        TARGET.B_INF_REC_TYPE,
        TARGET.B_ENT_NAME,
        TARGET.B_ENT_CERT_TYPE,
        TARGET.B_ENT_CERT_NUM,
        TARGET.B_OTH_ENT_CERT_TYPE,
        TARGET.B_OTH_ENT_CERT_NUM,
        TARGET.B_CERT_ASS_FLG,
        TARGET.B_RPT_DATE,
        TARGET.C_DATA_DESC,
        TARGET.REMARKS,
        TARGET.CHECK_FLAG,
        TARGET.CHECK_DESC,
        TARGET.CHECK_ERR_TYPE,
        TARGET.NEXT_ACTION,
        TARGET.DATA_STATUS,
        TARGET.DATA_FLAG,
        TARGET.DATA_SOURCE,
        TARGET.DATA_VERSION,
        TARGET.DATA_REJ_DESC,
        TARGET.DATA_DEL_DESC,
        TARGET.DATA_CRT_USER,
        TARGET.DATA_CRT_DATE,
        TARGET.DATA_CRT_TIME,
        TARGET.DATA_CHG_USER,
        TARGET.DATA_CHG_DATE,
        TARGET.DATA_CHG_TIME,
        TARGET.DATA_APV_USER,
        TARGET.DATA_APV_DATE,
        TARGET.DATA_APV_TIME,
        TARGET.RSV1,
        TARGET.RSV2,
        TARGET.RSV3,
        TARGET.RSV4,
        TARGET.RSV5,
        TARGET.B_CUST_NO,
        TARGET.D_FCS_INFO_UP_DATE,
        TARGET.B_RPT_DATE_CODE,
        TARGET.ODS_DATA_ID,
        TARGET.HIS_DATE,
        TARGET.HIS_DATE_TIME,
        TARGET.IS_RPT
    )
    VALUES
    (
        GET_DATA_ID(V_NOW_DATE),
        SOURCE.DATA_DATE,
        SOURCE.CORP_ID,
        SOURCE.ORG_ID,
        SOURCE.GROUP_ID,
        SOURCE.INQ_ORG_ID,
        SOURCE.INQ_GROUP_ID,
        SOURCE.B_INF_REC_TYPE,
        SOURCE.B_ENT_NAME,
        SOURCE.B_ENT_CERT_TYPE,
        SOURCE.B_ENT_CERT_NUM,
        SOURCE.B_OTH_ENT_CERT_TYPE,
        SOURCE.B_OTH_ENT_CERT_NUM,
        SOURCE.B_CERT_ASS_FLG,
        SOURCE.B_RPT_DATE,
        SOURCE.C_DATA_DESC,
        SOURCE.REMARKS,
        SOURCE.CHECK_FLAG,
        SOURCE.CHECK_DESC,
        SOURCE.CHECK_ERR_TYPE,
        SOURCE.NEXT_ACTION,
        '23',
        SOURCE.DATA_FLAG,
        SOURCE.DATA_SOURCE,
        SOURCE.DATA_VERSION,
        SOURCE.DATA_REJ_DESC,
        SOURCE.DATA_DEL_DESC,
        SOURCE.DATA_CRT_USER,
        SOURCE.DATA_CRT_DATE,
        SOURCE.DATA_CRT_TIME,
        SOURCE.DATA_CHG_USER,
        SOURCE.DATA_CHG_DATE,
        SOURCE.DATA_CHG_TIME,
        SOURCE.DATA_APV_USER,
        SOURCE.DATA_APV_DATE,
        SOURCE.DATA_APV_TIME,
        SOURCE.RSV1,
        SOURCE.RSV2,
        SOURCE.RSV3,
        SOURCE.RSV4,
        SOURCE.RSV5,
        SOURCE.B_CUST_NO,
        SOURCE.D_FCS_INFO_UP_DATE,
        SOURCE.B_RPT_DATE_CODE,
        SOURCE.DATA_ID,
        V_NOW_DATE,
        V_NOW_TIME,
        SOURCE.IS_RPT
    );
COMMIT;
EXCEPTION
WHEN OTHERS THEN
    ERRCODE := SQLCODE;
    ERRMSG := SUBSTR(SQLERRM,1,200);
ROLLBACK;
RETURN;
END;
/

prompt
prompt Creating procedure SYNC_PM_TO_HIS_350
prompt =====================================
prompt
CREATE OR REPLACE PROCEDURE "SYNC_PM_TO_HIS_350"(ERRCODE   OUT VARCHAR,
                                           ERRMSG   OUT VARCHAR) AS v_NOW_DATE CHAR(8);
V_NOW_TIME CHAR(14);
BEGIN
    SELECT
        TO_CHAR(SYSDATE,'yyyyMMdd')
    INTO
        v_NOW_DATE
    FROM
        DUAL;
SELECT
    TO_CHAR(SYSDATE, 'YYYYMMDDHH24MISS')
INTO
    V_NOW_TIME
FROM
    DUAL;
DELETE
FROM
    MBT_350_HIS
WHERE
    HIS_DATE=V_NOW_DATE and DATA_STATUS='23';
COMMIT;
--²åÈëÖ÷±í
MERGE
INTO
    MBT_350_HIS target
USING
    (
        SELECT
            DATA_ID,
            DATA_DATE,
            CORP_ID,
            ORG_ID,
            GROUP_ID,
            INQ_ORG_ID,
            INQ_GROUP_ID,
            B_INF_REC_TYPE,
            B_ENT_NAME,
            B_ENT_CERT_TYPE,
            B_ENT_CERT_NUM,
            B_ASSO_ENT_NAME,
            B_ASSO_ENT_CERT_TYPE,
            B_ASSO_ENT_CERT_NUM,
            B_ASSO_TYPE,
            B_ASSO_SIGN,
            B_RPT_DATE,
            C_DATA_DESC,
            REMARKS,
            CHECK_FLAG,
            CHECK_DESC,
            CHECK_ERR_TYPE,
            NEXT_ACTION,
            DATA_STATUS,
            DATA_FLAG,
            DATA_SOURCE,
            DATA_VERSION,
            DATA_REJ_DESC,
            DATA_DEL_DESC,
            DATA_CRT_USER,
            DATA_CRT_DATE,
            DATA_CRT_TIME,
            DATA_CHG_USER,
            DATA_CHG_DATE,
            DATA_CHG_TIME,
            DATA_APV_USER,
            DATA_APV_DATE,
            DATA_APV_TIME,
            RSV1,
            RSV2,
            RSV3,
            RSV4,
            RSV5,
            B_CUST_NO,
            B_RPT_DATE_CODE,
            D_FCS_INFO_UP_DATE,
            IS_RPT
        FROM
            MBT_350
        WHERE
            DATA_STATUS='21') source
ON
    (
        target.data_id = source.data_id)
WHEN NOT MATCHED
    THEN
INSERT
    (
        target.DATA_ID,
        target.DATA_DATE,
        target.CORP_ID,
        target.ORG_ID,
        target.GROUP_ID,
        target.INQ_ORG_ID,
        target.INQ_GROUP_ID,
        target.B_INF_REC_TYPE,
        target.B_ENT_NAME,
        target.B_ENT_CERT_TYPE,
        target.B_ENT_CERT_NUM,
        target.B_ASSO_ENT_NAME,
        target.B_ASSO_ENT_CERT_TYPE,
        target.B_ASSO_ENT_CERT_NUM,
        target.B_ASSO_TYPE,
        target.B_ASSO_SIGN,
        target.B_RPT_DATE,
        target.C_DATA_DESC,
        target.REMARKS,
        target.CHECK_FLAG,
        target.CHECK_DESC,
        target.CHECK_ERR_TYPE,
        target.NEXT_ACTION,
        target.DATA_STATUS,
        target.DATA_FLAG,
        target.DATA_SOURCE,
        target.DATA_VERSION,
        target.DATA_REJ_DESC,
        target.DATA_DEL_DESC,
        target.DATA_CRT_USER,
        target.DATA_CRT_DATE,
        target.DATA_CRT_TIME,
        target.DATA_CHG_USER,
        target.DATA_CHG_DATE,
        target.DATA_CHG_TIME,
        target.DATA_APV_USER,
        target.DATA_APV_DATE,
        target.DATA_APV_TIME,
        target.RSV1,
        target.RSV2,
        target.RSV3,
        target.RSV4,
        target.RSV5,
        target.B_CUST_NO,
        target.B_RPT_DATE_CODE,
        target.D_FCS_INFO_UP_DATE,
        TARGET.ODS_DATA_ID,
        TARGET.HIS_DATE,
        TARGET.HIS_DATE_TIME,
        TARGET.IS_RPT
    )
    VALUES
    (
        GET_DATA_ID(V_NOW_DATE),
        source.DATA_DATE,
        source.CORP_ID,
        source.ORG_ID,
        source.GROUP_ID,
        source.INQ_ORG_ID,
        source.INQ_GROUP_ID,
        source.B_INF_REC_TYPE,
        source.B_ENT_NAME,
        source.B_ENT_CERT_TYPE,
        source.B_ENT_CERT_NUM,
        source.B_ASSO_ENT_NAME,
        source.B_ASSO_ENT_CERT_TYPE,
        source.B_ASSO_ENT_CERT_NUM,
        source.B_ASSO_TYPE,
        source.B_ASSO_SIGN,
        source.B_RPT_DATE,
        source.C_DATA_DESC,
        source.REMARKS,
        source.CHECK_FLAG,
        source.CHECK_DESC,
        source.CHECK_ERR_TYPE,
        source.NEXT_ACTION,
        '23',
        source.DATA_FLAG,
        source.DATA_SOURCE,
        source.DATA_VERSION,
        source.DATA_REJ_DESC,
        source.DATA_DEL_DESC,
        source.DATA_CRT_USER,
        source.DATA_CRT_DATE,
        source.DATA_CRT_TIME,
        source.DATA_CHG_USER,
        source.DATA_CHG_DATE,
        source.DATA_CHG_TIME,
        source.DATA_APV_USER,
        source.DATA_APV_DATE,
        source.DATA_APV_TIME,
        source.RSV1,
        source.RSV2,
        source.RSV3,
        source.RSV4,
        source.RSV5,
        source.B_CUST_NO,
        source.B_RPT_DATE_CODE,
        source.D_FCS_INFO_UP_DATE,
        SOURCE.DATA_ID,
        V_NOW_DATE,
        V_NOW_TIME,
        SOURCE.IS_RPT
    );
COMMIT;
EXCEPTION
WHEN OTHERS THEN
    ERRCODE := SQLCODE;
    ERRMSG := SUBSTR(SQLERRM,1,200);
ROLLBACK;
RETURN;
END;
/

prompt
prompt Creating procedure SYNC_PM_TO_HIS_410
prompt =====================================
prompt
CREATE OR REPLACE PROCEDURE "SYNC_PM_TO_HIS_410"(ERRCODE OUT VARCHAR,
                                                 ERRMSG  OUT VARCHAR) AS
  V_NOW_DATE CHAR(8);
  V_NOW_TIME CHAR(14);
BEGIN
  SELECT TO_CHAR(SYSDATE, 'YYYYMMDD') INTO V_NOW_DATE FROM DUAL;
  SELECT TO_CHAR(SYSDATE, 'YYYYMMDDHH24MISS') INTO V_NOW_TIME FROM DUAL;
  DELETE FROM MBT_410_D_HIS
   WHERE pdata_id in (select data_id
                       from MBT_410_HIS
                      where HIS_DATE = V_NOW_DATE
                        and data_status = '23'
                       );
  DELETE FROM MBT_410_E_HIS
   WHERE   pdata_id in (select data_id
                       from MBT_410_HIS
                      where HIS_DATE = V_NOW_DATE
                        and data_status = '23'
                        );
  DELETE FROM MBT_410_I_HIS
   WHERE pdata_id in (select data_id
                       from MBT_410_HIS
                      where HIS_DATE = V_NOW_DATE
                        and data_status = '23'
                      );
  DELETE FROM MBT_410_HIS
   WHERE HIS_DATE = V_NOW_DATE
     and DATA_STATUS = '23';
  COMMIT;
  --²åÈëÖ÷±í
  MERGE INTO MBT_410_HIS TARGET
  USING (SELECT M.DATA_ID,
                M.DATA_DATE,
                M.CORP_ID,
                M.ORG_ID,
                M.GROUP_ID,
                M.INQ_ORG_ID,
                M.INQ_GROUP_ID,
                M.REF_NO,
                M.B_INF_REC_TYPE,
                M.B_ACCT_TYPE,
                M.B_ACCT_CODE,
                CASE
                  WHEN M.B_RPT_DATE_CODE = '49' AND
                       M.MON_SETTLE_DATE IS NOT NULL THEN
                   M.MON_SETTLE_DATE
                  ELSE
                   M.B_RPT_DATE
                END AS B_RPT_DATE,
                M.B_RPT_DATE_CODE,
                M.B_NAME,
                M.B_ID_TYPE,
                M.B_ID_NUM,
                M.B_MNGMT_ORG_CODE,
                M.C_BUSI_LINES,
                M.C_BUSI_DTL_LINES,
                M.C_OPEN_DATE,
                M.C_CY,
                M.C_ACCT_CRED_LINE_AMT_LCY,
                M.C_ACCT_CRED_LINE_AMT,
                M.C_LOAN_AMT_LCY,
                M.C_LOAN_AMT,
                M.C_FLAG,
                M.C_DUE_DATE,
                M.C_REPAY_MODE,
                M.C_REPAY_FREQCY,
                M.C_APPLY_BUSI_DIST,
                M.C_GUAR_MODE,
                M.C_OTH_REPY_GUAR_WAY,
                M.C_LOAN_TIME_LIM_CAT,
                M.C_LOA_FRM,
                M.C_ACT_INVEST,
                M.C_FUND_SOU,
                M.C_ASSET_TRAND_FLAG,
                M.F_MCC,
                M.G_INIT_CRED_NAME,
                M.G_INIT_CED_ORG_CODE,
                M.G_ORIG_DBT_CATE,
                M.G_INIT_RPY_STS,
                M.H_ACCT_STATUS,
                M.H_ACCT_BAL_LCY,
                M.H_ACCT_BAL,
                M.H_BAL_CHG_DATE,
                M.H_FIVE_CATE,
                M.H_FIVE_CATE_ADJ_DATE,
                M.H_PYMT_PRD,
                M.H_TOT_OVERD_LCY,
                M.H_TOT_OVERD,
                M.H_OVERD_PRINC_LCY,
                M.H_OVERD_PRINC,
                M.H_OVERD_DY,
                M.H_LAT_RPY_DATE,
                M.H_LAT_RPY_AMT_LCY,
                M.H_LAT_RPY_AMT,
                M.H_LAT_RPY_PRINC_AMT_LCY,
                M.H_LAT_RPY_PRINC_AMT,
                M.H_RPMT_TYPE,
                M.H_LAT_AGRR_RPY_DATE,
                M.H_LAT_AGRR_RPY_AMT_LCY,
                M.H_LAT_AGRR_RPY_AMT,
                M.H_NXT_AGRR_RPY_DATE,
                M.H_CLOSE_DATE,
                M.DATA_DESC,
                M.REMARKS,
                M.CHECK_FLAG,
                M.CHECK_DESC,
                M.CHECK_ERR_TYPE,
                M.NEXT_ACTION,
                M.DATA_STATUS,
                M.DATA_FLAG,
                M.DATA_SOURCE,
                M.DATA_VERSION,
                M.DATA_REJ_DESC,
                M.DATA_DEL_DESC,
                M.DATA_CRT_USER,
                M.DATA_CRT_DATE,
                M.DATA_CRT_TIME,
                M.DATA_CHG_USER,
                M.DATA_CHG_DATE,
                M.DATA_CHG_TIME,
                M.DATA_APV_USER,
                M.DATA_APV_DATE,
                M.DATA_APV_TIME,
                M.RSV1,
                M.RSV2,
                M.RSV3,
                M.RSV4,
                M.RSV5,
                M.B_CUST_NO,
                M.B_INFO_UP_DATE,
                M.B_MONTH,
                M.IS_RPT
           FROM MBT_410 M
          WHERE M.DATA_STATUS = '21'
            AND ((M.MON_SETTLE_DATE IS NULL AND M.B_RPT_DATE <= V_NOW_DATE) OR
                M.MON_SETTLE_DATE = V_NOW_DATE)
            AND (SELECT COUNT(1) AS CNT
                   FROM MBT_410_HIS N, MBT_410_RPT R
                  WHERE R.ODS_DATA_ID = N.DATA_ID
                    AND N.ODS_DATA_ID = M.DATA_ID
                    AND N.HIS_DATE = V_NOW_DATE
                    AND R.RPT_DATE = V_NOW_DATE
                    AND R.DATA_STATUS != '24') < 1) SOURCE
  ON (TARGET.DATA_ID = SOURCE.DATA_ID)
  WHEN NOT MATCHED THEN
    INSERT
      (TARGET.DATA_ID,
       TARGET.DATA_DATE,
       TARGET.CORP_ID,
       TARGET.ORG_ID,
       TARGET.GROUP_ID,
       TARGET.INQ_ORG_ID,
       TARGET.INQ_GROUP_ID,
       TARGET.REF_NO,
       TARGET.B_INF_REC_TYPE,
       TARGET.B_ACCT_TYPE,
       TARGET.B_ACCT_CODE,
       TARGET.B_RPT_DATE,
       TARGET.B_RPT_DATE_CODE,
       TARGET.B_NAME,
       TARGET.B_ID_TYPE,
       TARGET.B_ID_NUM,
       TARGET.B_MNGMT_ORG_CODE,
       TARGET.C_BUSI_LINES,
       TARGET.C_BUSI_DTL_LINES,
       TARGET.C_OPEN_DATE,
       TARGET.C_CY,
       TARGET.C_ACCT_CRED_LINE_AMT_LCY,
       TARGET.C_ACCT_CRED_LINE_AMT,
       TARGET.C_LOAN_AMT_LCY,
       TARGET.C_LOAN_AMT,
       TARGET.C_FLAG,
       TARGET.C_DUE_DATE,
       TARGET.C_REPAY_MODE,
       TARGET.C_REPAY_FREQCY,
       TARGET.C_APPLY_BUSI_DIST,
       TARGET.C_GUAR_MODE,
       TARGET.C_OTH_REPY_GUAR_WAY,
       TARGET.C_LOAN_TIME_LIM_CAT,
       TARGET.C_LOA_FRM,
       TARGET.C_ACT_INVEST,
       TARGET.C_FUND_SOU,
       TARGET.C_ASSET_TRAND_FLAG,
       TARGET.F_MCC,
       TARGET.G_INIT_CRED_NAME,
       TARGET.G_INIT_CED_ORG_CODE,
       TARGET.G_ORIG_DBT_CATE,
       TARGET.G_INIT_RPY_STS,
       TARGET.H_ACCT_STATUS,
       TARGET.H_ACCT_BAL_LCY,
       TARGET.H_ACCT_BAL,
       TARGET.H_BAL_CHG_DATE,
       TARGET.H_FIVE_CATE,
       TARGET.H_FIVE_CATE_ADJ_DATE,
       TARGET.H_PYMT_PRD,
       TARGET.H_TOT_OVERD_LCY,
       TARGET.H_TOT_OVERD,
       TARGET.H_OVERD_PRINC_LCY,
       TARGET.H_OVERD_PRINC,
       TARGET.H_OVERD_DY,
       TARGET.H_LAT_RPY_DATE,
       TARGET.H_LAT_RPY_AMT_LCY,
       TARGET.H_LAT_RPY_AMT,
       TARGET.H_LAT_RPY_PRINC_AMT_LCY,
       TARGET.H_LAT_RPY_PRINC_AMT,
       TARGET.H_RPMT_TYPE,
       TARGET.H_LAT_AGRR_RPY_DATE,
       TARGET.H_LAT_AGRR_RPY_AMT_LCY,
       TARGET.H_LAT_AGRR_RPY_AMT,
       TARGET.H_NXT_AGRR_RPY_DATE,
       TARGET.H_CLOSE_DATE,
       TARGET.DATA_DESC,
       TARGET.REMARKS,
       TARGET.CHECK_FLAG,
       TARGET.CHECK_DESC,
       TARGET.CHECK_ERR_TYPE,
       TARGET.NEXT_ACTION,
       TARGET.DATA_STATUS,
       TARGET.DATA_FLAG,
       TARGET.DATA_SOURCE,
       TARGET.DATA_VERSION,
       TARGET.DATA_REJ_DESC,
       TARGET.DATA_DEL_DESC,
       TARGET.DATA_CRT_USER,
       TARGET.DATA_CRT_DATE,
       TARGET.DATA_CRT_TIME,
       TARGET.DATA_CHG_USER,
       TARGET.DATA_CHG_DATE,
       TARGET.DATA_CHG_TIME,
       TARGET.DATA_APV_USER,
       TARGET.DATA_APV_DATE,
       TARGET.DATA_APV_TIME,
       TARGET.RSV1,
       TARGET.RSV2,
       TARGET.RSV3,
       TARGET.RSV4,
       TARGET.RSV5,
       TARGET.B_CUST_NO,
       TARGET.B_INFO_UP_DATE,
       TARGET.B_MONTH,
       TARGET.ODS_DATA_ID,
       TARGET.HIS_DATE,
       TARGET.HIS_TIME,
       TARGET.IS_RPT)
    VALUES
      (GET_DATA_ID(V_NOW_DATE),
       SOURCE.DATA_DATE,
       SOURCE.CORP_ID,
       SOURCE.ORG_ID,
       SOURCE.GROUP_ID,
       SOURCE.INQ_ORG_ID,
       SOURCE.INQ_GROUP_ID,
       SOURCE.REF_NO,
       SOURCE.B_INF_REC_TYPE,
       SOURCE.B_ACCT_TYPE,
       SOURCE.B_ACCT_CODE,
       SOURCE.B_RPT_DATE,
       SOURCE.B_RPT_DATE_CODE,
       SOURCE.B_NAME,
       SOURCE.B_ID_TYPE,
       SOURCE.B_ID_NUM,
       SOURCE.B_MNGMT_ORG_CODE,
       SOURCE.C_BUSI_LINES,
       SOURCE.C_BUSI_DTL_LINES,
       SOURCE.C_OPEN_DATE,
       SOURCE.C_CY,
       SOURCE.C_ACCT_CRED_LINE_AMT_LCY,
       SOURCE.C_ACCT_CRED_LINE_AMT,
       SOURCE.C_LOAN_AMT_LCY,
       SOURCE.C_LOAN_AMT,
       SOURCE.C_FLAG,
       SOURCE.C_DUE_DATE,
       SOURCE.C_REPAY_MODE,
       SOURCE.C_REPAY_FREQCY,
       SOURCE.C_APPLY_BUSI_DIST,
       SOURCE.C_GUAR_MODE,
       SOURCE.C_OTH_REPY_GUAR_WAY,
       SOURCE.C_LOAN_TIME_LIM_CAT,
       SOURCE.C_LOA_FRM,
       SOURCE.C_ACT_INVEST,
       SOURCE.C_FUND_SOU,
       SOURCE.C_ASSET_TRAND_FLAG,
       SOURCE.F_MCC,
       SOURCE.G_INIT_CRED_NAME,
       SOURCE.G_INIT_CED_ORG_CODE,
       SOURCE.G_ORIG_DBT_CATE,
       SOURCE.G_INIT_RPY_STS,
       SOURCE.H_ACCT_STATUS,
       SOURCE.H_ACCT_BAL_LCY,
       SOURCE.H_ACCT_BAL,
       SOURCE.H_BAL_CHG_DATE,
       SOURCE.H_FIVE_CATE,
       SOURCE.H_FIVE_CATE_ADJ_DATE,
       SOURCE.H_PYMT_PRD,
       SOURCE.H_TOT_OVERD_LCY,
       SOURCE.H_TOT_OVERD,
       SOURCE.H_OVERD_PRINC_LCY,
       SOURCE.H_OVERD_PRINC,
       SOURCE.H_OVERD_DY,
       SOURCE.H_LAT_RPY_DATE,
       SOURCE.H_LAT_RPY_AMT_LCY,
       SOURCE.H_LAT_RPY_AMT,
       SOURCE.H_LAT_RPY_PRINC_AMT_LCY,
       SOURCE.H_LAT_RPY_PRINC_AMT,
       SOURCE.H_RPMT_TYPE,
       SOURCE.H_LAT_AGRR_RPY_DATE,
       SOURCE.H_LAT_AGRR_RPY_AMT_LCY,
       SOURCE.H_LAT_AGRR_RPY_AMT,
       SOURCE.H_NXT_AGRR_RPY_DATE,
       SOURCE.H_CLOSE_DATE,
       SOURCE.DATA_DESC,
       SOURCE.REMARKS,
       SOURCE.CHECK_FLAG,
       SOURCE.CHECK_DESC,
       SOURCE.CHECK_ERR_TYPE,
       SOURCE.NEXT_ACTION,
       '23',
       SOURCE.DATA_FLAG,
       SOURCE.DATA_SOURCE,
       SOURCE.DATA_VERSION,
       SOURCE.DATA_REJ_DESC,
       SOURCE.DATA_DEL_DESC,
       SOURCE.DATA_CRT_USER,
       SOURCE.DATA_CRT_DATE,
       SOURCE.DATA_CRT_TIME,
       SOURCE.DATA_CHG_USER,
       SOURCE.DATA_CHG_DATE,
       SOURCE.DATA_CHG_TIME,
       SOURCE.DATA_APV_USER,
       SOURCE.DATA_APV_DATE,
       SOURCE.DATA_APV_TIME,
       SOURCE.RSV1,
       SOURCE.RSV2,
       SOURCE.RSV3,
       SOURCE.RSV4,
       SOURCE.RSV5,
       SOURCE.B_CUST_NO,
       SOURCE.B_INFO_UP_DATE,
       SOURCE.B_MONTH,
       SOURCE.DATA_ID,
       V_NOW_DATE,
       V_NOW_TIME,
       SOURCE.IS_RPT);
  COMMIT;
  --²åÈë×Ó±í
  MERGE INTO MBT_410_D_HIS TARGET
  USING (SELECT C.DATA_ID,
                A.DATA_ID PDATA_ID,
                C.D_ARLP_ID_TYPE,
                C.D_ARLP_NAME,
                C.D_ARLP_CERT_TYPE,
                C.D_ARLP_CERT_NUM,
                C.D_ARLP_TYPE,
                C.D_ARLP_AMT_ORG,
                C.D_ARLP_AMT,
                C.D_WARTY_SIGN,
                C.D_MAX_GUAR_MCC,
                A.B_ACCT_CODE
           FROM MBT_410_HIS A
          RIGHT JOIN MBT_410_D C
             ON C.PDATA_ID = A.ODS_DATA_ID
          WHERE A.DATA_STATUS = '23'
            AND A.HIS_DATE = V_NOW_DATE
            AND A.B_RPT_DATE <= V_NOW_DATE) SOURCE
  ON (TARGET.DATA_ID = SOURCE.DATA_ID)
  WHEN NOT MATCHED THEN
    INSERT
      (TARGET.DATA_ID,
       TARGET.PDATA_ID,
       TARGET.D_ARLP_ID_TYPE,
       TARGET.D_ARLP_NAME,
       TARGET.D_ARLP_CERT_TYPE,
       TARGET.D_ARLP_CERT_NUM,
       TARGET.D_ARLP_TYPE,
       TARGET.D_ARLP_AMT_ORG,
       TARGET.D_ARLP_AMT,
       TARGET.D_WARTY_SIGN,
       TARGET.D_MAX_GUAR_MCC,
       TARGET.ODS_DATA_ID,
       TARGET.HIS_DATE,
       TARGET.HIS_TIME,
       TARGET.B_ACCT_CODE)
    VALUES
      (GET_DATA_ID(V_NOW_DATE),
       SOURCE.PDATA_ID,
       SOURCE.D_ARLP_ID_TYPE,
       SOURCE.D_ARLP_NAME,
       SOURCE.D_ARLP_CERT_TYPE,
       SOURCE.D_ARLP_CERT_NUM,
       SOURCE.D_ARLP_TYPE,
       SOURCE.D_ARLP_AMT_ORG,
       SOURCE.D_ARLP_AMT,
       SOURCE.D_WARTY_SIGN,
       SOURCE.D_MAX_GUAR_MCC,
       SOURCE.DATA_ID,
       V_NOW_DATE,
       V_NOW_TIME,
       SOURCE.B_ACCT_CODE);
  COMMIT;
  MERGE INTO MBT_410_E_HIS TARGET
  USING (SELECT C.DATA_ID, A.DATA_ID PDATA_ID, C.E_CCC, A.B_ACCT_CODE
           FROM MBT_410_HIS A
          RIGHT JOIN MBT_410_E C
             ON C.PDATA_ID = A.ODS_DATA_ID
          WHERE A.DATA_STATUS = '23'
            AND A.HIS_DATE = V_NOW_DATE
            AND A.B_RPT_DATE <= V_NOW_DATE) SOURCE
  ON (TARGET.DATA_ID = SOURCE.DATA_ID)
  WHEN NOT MATCHED THEN
    INSERT
      (TARGET.DATA_ID,
       TARGET.PDATA_ID,
       TARGET.E_CCC,
       TARGET.ODS_DATA_ID,
       TARGET.HIS_DATE,
       TARGET.HIS_TIME,
       TARGET.B_ACCT_CODE)
    VALUES
      (GET_DATA_ID(V_NOW_DATE),
       SOURCE.PDATA_ID,
       SOURCE.E_CCC,
       SOURCE.DATA_ID,
       V_NOW_DATE,
       V_NOW_TIME,
       SOURCE.B_ACCT_CODE);
  COMMIT;
  MERGE INTO MBT_410_I_HIS TARGET
  USING (SELECT C.DATA_ID,
                A.DATA_ID PDATA_ID,
                C.REF_NO,
                C.I_CHAN_TRAN_TYPE,
                C.I_TRAN_DATE,
                C.I_TRAN_AMT_ORG,
                C.I_TRAN_AMT,
                C.I_DUE_TRAN_MON,
                C.I_DET_INFO,
                A.B_ACCT_CODE
           FROM MBT_410_HIS A
          RIGHT JOIN MBT_410_I C
             ON C.PDATA_ID = A.ODS_DATA_ID
          WHERE A.DATA_STATUS = '23'
            AND A.HIS_DATE = V_NOW_DATE
            AND A.B_RPT_DATE <= V_NOW_DATE) SOURCE
  ON (TARGET.DATA_ID = SOURCE.DATA_ID)
  WHEN NOT MATCHED THEN
    INSERT
      (TARGET.DATA_ID,
       TARGET.PDATA_ID,
       TARGET.REF_NO,
       TARGET.I_CHAN_TRAN_TYPE,
       TARGET.I_TRAN_DATE,
       TARGET.I_TRAN_AMT_ORG,
       TARGET.I_TRAN_AMT,
       TARGET.I_DUE_TRAN_MON,
       TARGET.I_DET_INFO,
       TARGET.ODS_DATA_ID,
       TARGET.HIS_DATE,
       TARGET.HIS_TIME,
       TARGET.B_ACCT_CODE)
    VALUES
      (GET_DATA_ID(V_NOW_DATE),
       SOURCE.PDATA_ID,
       SOURCE.REF_NO,
       SOURCE.I_CHAN_TRAN_TYPE,
       SOURCE.I_TRAN_DATE,
       SOURCE.I_TRAN_AMT_ORG,
       SOURCE.I_TRAN_AMT,
       SOURCE.I_DUE_TRAN_MON,
       SOURCE.I_DET_INFO,
       SOURCE.DATA_ID,
       V_NOW_DATE,
       V_NOW_TIME,
       SOURCE.B_ACCT_CODE);
  COMMIT;
EXCEPTION
  WHEN OTHERS THEN
    ERRCODE := SQLCODE;
    ERRMSG  := SUBSTR(SQLERRM, 1, 200);
    ROLLBACK;
    RETURN;
END;
/

prompt
prompt Creating procedure SYNC_PM_TO_HIS_420
prompt =====================================
prompt
CREATE OR REPLACE PROCEDURE "SYNC_PM_TO_HIS_420"(ERRCODE OUT VARCHAR,
                                                 ERRMSG  OUT VARCHAR) AS
  V_NOW_DATE CHAR(8);
  V_NOW_TIME CHAR(14);
BEGIN
  SELECT TO_CHAR(SYSDATE, 'YYYYMMDD') INTO V_NOW_DATE FROM DUAL;
  SELECT TO_CHAR(SYSDATE, 'YYYYMMDDHH24MISS') INTO V_NOW_TIME FROM DUAL;

  DELETE FROM MBT_420_C_HIS
   WHERE  pdata_id in (select data_id
                       from MBT_420_HIS
                      where HIS_DATE = V_NOW_DATE
                        and data_status = '23');
  DELETE FROM MBT_420_HIS
   WHERE HIS_DATE = V_NOW_DATE
     and DATA_STATUS = '23';

  COMMIT;
  --²åÈëÖ÷±í
  MERGE INTO MBT_420_HIS TARGET
  USING (SELECT M.DATA_ID,
                M.DATA_DATE,
                M.CORP_ID,
                M.ORG_ID,
                M.GROUP_ID,
                M.INQ_ORG_ID,
                M.INQ_GROUP_ID,
                M.B_INF_REC_TYPE,
                M.B_CONTRACT_CODE,
                M.B_RPT_DATE,
                M.B_RPT_DATE_CODE,
                M.B_NAME,
                M.B_ID_TYPE,
                M.B_ID_NUM,
                M.B_MNGMT_ORG_CODE,
                M.B_CONTRACT_NO,
                M.D_CREDIT_LIM_TYPE,
                M.D_LIM_LOOP_FLG,
                M.D_CREDIT_LIM_LCY,
                M.D_CREDIT_LIM,
                M.D_CY,
                M.D_CON_EFF_DATE,
                M.D_CON_EXP_DATE,
                M.D_CON_STATUS,
                M.D_CREDIT_REST_LCY,
                M.D_CREDIT_REST,
                M.D_CREDIT_REST_CODE,
                M.F_DATA_DESC,
                M.REMARKS,
                M.CHECK_FLAG,
                M.CHECK_DESC,
                M.CHECK_ERR_TYPE,
                M.NEXT_ACTION,
                M.DATA_STATUS,
                M.DATA_FLAG,
                M.DATA_SOURCE,
                M.DATA_VERSION,
                M.DATA_REJ_DESC,
                M.DATA_DEL_DESC,
                M.DATA_CRT_USER,
                M.DATA_CRT_DATE,
                M.DATA_CRT_TIME,
                M.DATA_CHG_USER,
                M.DATA_CHG_DATE,
                M.DATA_CHG_TIME,
                M.DATA_APV_USER,
                M.DATA_APV_DATE,
                M.DATA_APV_TIME,
                M.RSV1,
                M.RSV2,
                M.RSV3,
                M.RSV4,
                M.RSV5,
                M.B_CUST_NO,
                M.B_INFO_UP_DATE,
                M.IS_RPT
           FROM MBT_420 M
          WHERE M.DATA_STATUS = '21'
            AND M.B_RPT_DATE <= V_NOW_DATE
            AND (SELECT COUNT(1) AS CNT
                   FROM MBT_420_HIS N, MBT_420_RPT R
                  WHERE R.ODS_DATA_ID = N.DATA_ID
                    AND N.ODS_DATA_ID = M.DATA_ID
                    AND N.HIS_DATE = V_NOW_DATE
                    AND R.RPT_DATE = V_NOW_DATE
                    AND R.DATA_STATUS != '24') < 1) SOURCE
  ON (TARGET.DATA_ID = SOURCE.DATA_ID)
  WHEN NOT MATCHED THEN
    INSERT
      (TARGET.DATA_ID,
       TARGET.DATA_DATE,
       TARGET.CORP_ID,
       TARGET.ORG_ID,
       TARGET.GROUP_ID,
       TARGET.INQ_ORG_ID,
       TARGET.INQ_GROUP_ID,
       TARGET.B_INF_REC_TYPE,
       TARGET.B_CONTRACT_CODE,
       TARGET.B_RPT_DATE,
       TARGET.B_RPT_DATE_CODE,
       TARGET.B_NAME,
       TARGET.B_ID_TYPE,
       TARGET.B_ID_NUM,
       TARGET.B_MNGMT_ORG_CODE,
       TARGET.B_CONTRACT_NO,
       TARGET.D_CREDIT_LIM_TYPE,
       TARGET.D_LIM_LOOP_FLG,
       TARGET.D_CREDIT_LIM_LCY,
       TARGET.D_CREDIT_LIM,
       TARGET.D_CY,
       TARGET.D_CON_EFF_DATE,
       TARGET.D_CON_EXP_DATE,
       TARGET.D_CON_STATUS,
       TARGET.D_CREDIT_REST_LCY,
       TARGET.D_CREDIT_REST,
       TARGET.D_CREDIT_REST_CODE,
       TARGET.F_DATA_DESC,
       TARGET.REMARKS,
       TARGET.CHECK_FLAG,
       TARGET.CHECK_DESC,
       TARGET.CHECK_ERR_TYPE,
       TARGET.NEXT_ACTION,
       TARGET.DATA_STATUS,
       TARGET.DATA_FLAG,
       TARGET.DATA_SOURCE,
       TARGET.DATA_VERSION,
       TARGET.DATA_REJ_DESC,
       TARGET.DATA_DEL_DESC,
       TARGET.DATA_CRT_USER,
       TARGET.DATA_CRT_DATE,
       TARGET.DATA_CRT_TIME,
       TARGET.DATA_CHG_USER,
       TARGET.DATA_CHG_DATE,
       TARGET.DATA_CHG_TIME,
       TARGET.DATA_APV_USER,
       TARGET.DATA_APV_DATE,
       TARGET.DATA_APV_TIME,
       TARGET.RSV1,
       TARGET.RSV2,
       TARGET.RSV3,
       TARGET.RSV4,
       TARGET.RSV5,
       TARGET.ODS_DATA_ID,
       TARGET.HIS_DATE,
       TARGET.HIS_DATE_TIME,
       TARGET.B_CUST_NO,
       TARGET.B_INFO_UP_DATE,
       TARGET.IS_RPT)
    VALUES
      (GET_DATA_ID(V_NOW_DATE),
       SOURCE.DATA_DATE,
       SOURCE.CORP_ID,
       SOURCE.ORG_ID,
       SOURCE.GROUP_ID,
       SOURCE.INQ_ORG_ID,
       SOURCE.INQ_GROUP_ID,
       SOURCE.B_INF_REC_TYPE,
       SOURCE.B_CONTRACT_CODE,
       SOURCE.B_RPT_DATE,
       SOURCE.B_RPT_DATE_CODE,
       SOURCE.B_NAME,
       SOURCE.B_ID_TYPE,
       SOURCE.B_ID_NUM,
       SOURCE.B_MNGMT_ORG_CODE,
       SOURCE.B_CONTRACT_NO,
       SOURCE.D_CREDIT_LIM_TYPE,
       SOURCE.D_LIM_LOOP_FLG,
       SOURCE.D_CREDIT_LIM_LCY,
       SOURCE.D_CREDIT_LIM,
       SOURCE.D_CY,
       SOURCE.D_CON_EFF_DATE,
       SOURCE.D_CON_EXP_DATE,
       SOURCE.D_CON_STATUS,
       SOURCE.D_CREDIT_REST_LCY,
       SOURCE.D_CREDIT_REST,
       SOURCE.D_CREDIT_REST_CODE,
       SOURCE.F_DATA_DESC,
       SOURCE.REMARKS,
       SOURCE.CHECK_FLAG,
       SOURCE.CHECK_DESC,
       SOURCE.CHECK_ERR_TYPE,
       SOURCE.NEXT_ACTION,
       '23',
       SOURCE.DATA_FLAG,
       SOURCE.DATA_SOURCE,
       SOURCE.DATA_VERSION,
       SOURCE.DATA_REJ_DESC,
       SOURCE.DATA_DEL_DESC,
       SOURCE.DATA_CRT_USER,
       SOURCE.DATA_CRT_DATE,
       SOURCE.DATA_CRT_TIME,
       SOURCE.DATA_CHG_USER,
       SOURCE.DATA_CHG_DATE,
       SOURCE.DATA_CHG_TIME,
       SOURCE.DATA_APV_USER,
       SOURCE.DATA_APV_DATE,
       SOURCE.DATA_APV_TIME,
       SOURCE.RSV1,
       SOURCE.RSV2,
       SOURCE.RSV3,
       SOURCE.RSV4,
       SOURCE.RSV5,
       SOURCE.DATA_ID,
       V_NOW_DATE,
       V_NOW_TIME,
       SOURCE.B_CUST_NO,
       SOURCE.B_INFO_UP_DATE,
       SOURCE.IS_RPT);
  COMMIT;
  --²åÈë×Ó±í
  MERGE INTO MBT_420_C_HIS TARGET
  USING (SELECT C.DATA_ID,
                A.DATA_ID PDATA_ID,
                C.C_BRER_TYPE,
                C.C_CERT_REL_NAME,
                C.C_CERT_REL_ID_TYPE,
                C.C_CERT_REL_ID_NUM,
                A.B_CONTRACT_CODE
           FROM MBT_420_HIS A
          RIGHT JOIN MBT_420_C C
             ON C.PDATA_ID = A.ODS_DATA_ID
          WHERE A.DATA_STATUS = '23'
            AND A.HIS_DATE = V_NOW_DATE
            AND A.B_RPT_DATE <= V_NOW_DATE) SOURCE
  ON (TARGET.DATA_ID = SOURCE.DATA_ID)
  WHEN NOT MATCHED THEN
    INSERT
      (TARGET.DATA_ID,
       TARGET.PDATA_ID,
       TARGET.C_BRER_TYPE,
       TARGET.C_CERT_REL_NAME,
       TARGET.C_CERT_REL_ID_TYPE,
       TARGET.C_CERT_REL_ID_NUM,
       TARGET.ODS_DATA_ID,
       TARGET.HIS_DATE,
       TARGET.HIS_DATE_TIME,
       TARGET.B_CONTRACT_CODE)
    VALUES
      (GET_DATA_ID(V_NOW_DATE),
       SOURCE.PDATA_ID,
       SOURCE.C_BRER_TYPE,
       SOURCE.C_CERT_REL_NAME,
       SOURCE.C_CERT_REL_ID_TYPE,
       SOURCE.C_CERT_REL_ID_NUM,
       SOURCE.DATA_ID,
       V_NOW_DATE,
       V_NOW_TIME,
       SOURCE.B_CONTRACT_CODE);
  COMMIT;
EXCEPTION
  WHEN OTHERS THEN
    ERRCODE := SQLCODE;
    ERRMSG  := SUBSTR(SQLERRM, 1, 200);
    ROLLBACK;
    RETURN;
END;
/

prompt
prompt Creating procedure SYNC_PM_TO_HIS_440
prompt =====================================
prompt
CREATE OR REPLACE PROCEDURE "SYNC_PM_TO_HIS_440"(ERRCODE OUT VARCHAR,
                                                 ERRMSG  OUT VARCHAR) AS
  V_NOW_DATE CHAR(8);
  V_NOW_TIME CHAR(14);
BEGIN
  SELECT TO_CHAR(SYSDATE, 'YYYYMMDD') INTO V_NOW_DATE FROM DUAL;
  SELECT TO_CHAR(SYSDATE, 'YYYYMMDDHH24MISS') INTO V_NOW_TIME FROM DUAL;

  DELETE FROM MBT_440_D_HIS
   WHERE -- HIS_DATE = V_NOW_DATE --TO_CHAR(SYSDATE, 'YYYYMMDD')
    -- and
    pdata_id in (select data_id
                       from MBT_440_HIS
                      where HIS_DATE = V_NOW_DATE --TO_CHAR(SYSDATE, 'YYYYMMDD')
                        and data_status = '23');
                        --and data_id = pdata_id
  DELETE FROM MBT_440_E_HIS
   WHERE -- HIS_DATE = TO_CHAR(SYSDATE, 'YYYYMMDD')
    -- and
    pdata_id in (select data_id
                       from MBT_440_HIS
                      where HIS_DATE = V_NOW_DATE --TO_CHAR(SYSDATE, 'YYYYMMDD')
                        and data_status = '23');
                      --  and data_id = pdata_id);
  DELETE FROM MBT_440_HIS
   WHERE HIS_DATE = V_NOW_DATE --TO_CHAR(SYSDATE, 'YYYYMMDD')
     and DATA_STATUS = '23';
  COMMIT;
  --²åÈëÖ÷±í
  MERGE INTO MBT_440_HIS TARGET
  USING (SELECT M.DATA_ID,
                M.DATA_DATE,
                M.CORP_ID,
                M.ORG_ID,
                M.GROUP_ID,
                M.INQ_ORG_ID,
                M.INQ_GROUP_ID,
                M.B_ACCT_TYPE,
                M.B_ACCT_CODE,
                M.B_RPT_DATE,
                M.B_RPT_DATE_CODE,
                M.B_NAME,
                M.B_ID_TYPE,
                M.B_INF_REC_TYPE,
                M.B_ID_NUM,
                M.B_MNGMT_ORG_CODE,
                M.B_CUST_NO,
                M.C_BUSI_LINES,
                M.C_BUSI_DTIL_LINES,
                M.C_OPEN_DATE,
                M.C_GUAR_AMT_LCY,
                M.C_GUAR_AMT,
                M.C_CY,
                M.C_DUE_DATE,
                M.C_GUAR_MODE,
                M.C_OTH_REPY_GUAR_WAY,
                M.C_SEC_DEP,
                M.C_CTRCT_TXT_CODE,
                M.F_MCC,
                M.G_ACCT_STATUS,
                M.G_LOAN_AMT_LCY,
                M.G_LOAN_AMT,
                M.G_REPAY_PRD,
                M.G_FIVE_CATE,
                M.G_FIVE_CATE_ADJ_DATE,
                M.G_RI_EX_LCY,
                M.G_RI_EX,
                M.G_COMP_ADV_FLAG,
                M.G_CLOSE_DATE,
                M.REMARKS,
                M.CHECK_FLAG,
                M.CHECK_DESC,
                M.CHECK_ERR_TYPE,
                M.NEXT_ACTION,
                M.DATA_STATUS,
                M.DATA_FLAG,
                M.DATA_SOURCE,
                M.DATA_VERSION,
                M.DATA_REJ_DESC,
                M.DATA_DEL_DESC,
                M.DATA_CRT_USER,
                M.DATA_CRT_DATE,
                M.DATA_CRT_TIME,
                M.DATA_CHG_USER,
                M.DATA_CHG_DATE,
                M.DATA_CHG_TIME,
                M.DATA_APV_USER,
                M.DATA_APV_DATE,
                M.DATA_APV_TIME,
                M.DATA_DESC,
                M.REF_NO,
                M.RSV1,
                M.RSV2,
                M.RSV3,
                M.RSV4,
                M.RSV5,
                M.INF_REC_TYPE,
                M.B_INFO_UP_DATE,
                M.IS_RPT
           FROM MBT_440 M
          WHERE M.DATA_STATUS = '21'
            AND M.B_RPT_DATE <= V_NOW_DATE
            AND (SELECT COUNT(1) AS CNT
                   FROM MBT_440_HIS N, MBT_440_RPT R
                  WHERE R.ODS_DATA_ID = N.DATA_ID
                    AND N.ODS_DATA_ID = M.DATA_ID
                    AND N.HIS_DATE = V_NOW_DATE
                    AND R.RPT_DATE = V_NOW_DATE
                    AND R.DATA_STATUS != '24') < 1) SOURCE
  ON (TARGET.DATA_ID = SOURCE.DATA_ID)
  WHEN NOT MATCHED THEN
    INSERT
      (TARGET.DATA_ID,
       TARGET.DATA_DATE,
       TARGET.CORP_ID,
       TARGET.ORG_ID,
       TARGET.GROUP_ID,
       TARGET.INQ_ORG_ID,
       TARGET.INQ_GROUP_ID,
       TARGET.B_ACCT_TYPE,
       TARGET.B_ACCT_CODE,
       TARGET.B_RPT_DATE,
       TARGET.B_RPT_DATE_CODE,
       TARGET.B_NAME,
       TARGET.B_ID_TYPE,
       TARGET.B_INF_REC_TYPE,
       TARGET.B_ID_NUM,
       TARGET.B_MNGMT_ORG_CODE,
       TARGET.B_CUST_NO,
       TARGET.C_BUSI_LINES,
       TARGET.C_BUSI_DTIL_LINES,
       TARGET.C_OPEN_DATE,
       TARGET.C_GUAR_AMT_LCY,
       TARGET.C_GUAR_AMT,
       TARGET.C_CY,
       TARGET.C_DUE_DATE,
       TARGET.C_GUAR_MODE,
       TARGET.C_OTH_REPY_GUAR_WAY,
       TARGET.C_SEC_DEP,
       TARGET.C_CTRCT_TXT_CODE,
       TARGET.F_MCC,
       TARGET.G_ACCT_STATUS,
       TARGET.G_LOAN_AMT_LCY,
       TARGET.G_LOAN_AMT,
       TARGET.G_REPAY_PRD,
       TARGET.G_FIVE_CATE,
       TARGET.G_FIVE_CATE_ADJ_DATE,
       TARGET.G_RI_EX_LCY,
       TARGET.G_RI_EX,
       TARGET.G_COMP_ADV_FLAG,
       TARGET.G_CLOSE_DATE,
       TARGET.REMARKS,
       TARGET.CHECK_FLAG,
       TARGET.CHECK_DESC,
       TARGET.CHECK_ERR_TYPE,
       TARGET.NEXT_ACTION,
       TARGET.DATA_STATUS,
       TARGET.DATA_FLAG,
       TARGET.DATA_SOURCE,
       TARGET.DATA_VERSION,
       TARGET.DATA_REJ_DESC,
       TARGET.DATA_DEL_DESC,
       TARGET.DATA_CRT_USER,
       TARGET.DATA_CRT_DATE,
       TARGET.DATA_CRT_TIME,
       TARGET.DATA_CHG_USER,
       TARGET.DATA_CHG_DATE,
       TARGET.DATA_CHG_TIME,
       TARGET.DATA_APV_USER,
       TARGET.DATA_APV_DATE,
       TARGET.DATA_APV_TIME,
       TARGET.DATA_DESC,
       TARGET.REF_NO,
       TARGET.RSV1,
       TARGET.RSV2,
       TARGET.RSV3,
       TARGET.RSV4,
       TARGET.RSV5,
       TARGET.INF_REC_TYPE,
       TARGET.B_INFO_UP_DATE,
       TARGET.ODS_DATA_ID,
       TARGET.HIS_DATE,
       TARGET.HIS_TIME,
       TARGET.IS_RPT)
    VALUES
      (GET_DATA_ID(V_NOW_DATE),
       SOURCE.DATA_DATE,
       SOURCE.CORP_ID,
       SOURCE.ORG_ID,
       SOURCE.GROUP_ID,
       SOURCE.INQ_ORG_ID,
       SOURCE.INQ_GROUP_ID,
       SOURCE.B_ACCT_TYPE,
       SOURCE.B_ACCT_CODE,
       SOURCE.B_RPT_DATE,
       SOURCE.B_RPT_DATE_CODE,
       SOURCE.B_NAME,
       SOURCE.B_ID_TYPE,
       SOURCE.B_INF_REC_TYPE,
       SOURCE.B_ID_NUM,
       SOURCE.B_MNGMT_ORG_CODE,
       SOURCE.B_CUST_NO,
       SOURCE.C_BUSI_LINES,
       SOURCE.C_BUSI_DTIL_LINES,
       SOURCE.C_OPEN_DATE,
       SOURCE.C_GUAR_AMT_LCY,
       SOURCE.C_GUAR_AMT,
       SOURCE.C_CY,
       SOURCE.C_DUE_DATE,
       SOURCE.C_GUAR_MODE,
       SOURCE.C_OTH_REPY_GUAR_WAY,
       SOURCE.C_SEC_DEP,
       SOURCE.C_CTRCT_TXT_CODE,
       SOURCE.F_MCC,
       SOURCE.G_ACCT_STATUS,
       SOURCE.G_LOAN_AMT_LCY,
       SOURCE.G_LOAN_AMT,
       SOURCE.G_REPAY_PRD,
       SOURCE.G_FIVE_CATE,
       SOURCE.G_FIVE_CATE_ADJ_DATE,
       SOURCE.G_RI_EX_LCY,
       SOURCE.G_RI_EX,
       SOURCE.G_COMP_ADV_FLAG,
       SOURCE.G_CLOSE_DATE,
       SOURCE.REMARKS,
       SOURCE.CHECK_FLAG,
       SOURCE.CHECK_DESC,
       SOURCE.CHECK_ERR_TYPE,
       SOURCE.NEXT_ACTION,
       '23',
       SOURCE.DATA_FLAG,
       SOURCE.DATA_SOURCE,
       SOURCE.DATA_VERSION,
       SOURCE.DATA_REJ_DESC,
       SOURCE.DATA_DEL_DESC,
       SOURCE.DATA_CRT_USER,
       SOURCE.DATA_CRT_DATE,
       SOURCE.DATA_CRT_TIME,
       SOURCE.DATA_CHG_USER,
       SOURCE.DATA_CHG_DATE,
       SOURCE.DATA_CHG_TIME,
       SOURCE.DATA_APV_USER,
       SOURCE.DATA_APV_DATE,
       SOURCE.DATA_APV_TIME,
       SOURCE.DATA_DESC,
       SOURCE.REF_NO,
       SOURCE.RSV1,
       SOURCE.RSV2,
       SOURCE.RSV3,
       SOURCE.RSV4,
       SOURCE.RSV5,
       SOURCE.INF_REC_TYPE,
       SOURCE.B_INFO_UP_DATE,
       SOURCE.DATA_ID,
       V_NOW_DATE,
       V_NOW_TIME,
       SOURCE.IS_RPT);
  COMMIT;
  --²åÈë×Ó±í
  MERGE INTO MBT_440_D_HIS TARGET
  USING (SELECT C.DATA_ID,
                A.DATA_ID PDATA_ID,
                C.INFO_ID_TYPE,
                C.ARLP_NAME,
                C.ARLP_CERT_TYPE,
                C.ARLP_CERT_NUM,
                C.ARLP_TYPE,
                C.WARTY_SIGN,
                C.MAX_GUAR_MCC,
                C.ARLP_AMT_ORG,
                C.ARLP_AMT,
                A.B_ACCT_CODE
           FROM MBT_440_HIS A
          RIGHT JOIN MBT_440_D C
             ON C.PDATA_ID = A.ODS_DATA_ID
          WHERE A.DATA_STATUS = '23'
            AND A.HIS_DATE = V_NOW_DATE --TO_CHAR(SYSDATE, 'YYYYMMDD')
            AND A.B_RPT_DATE <= V_NOW_DATE) SOURCE
  ON (TARGET.DATA_ID = SOURCE.DATA_ID)
  WHEN NOT MATCHED THEN
    INSERT
      (TARGET.DATA_ID,
       TARGET.PDATA_ID,
       TARGET.INFO_ID_TYPE,
       TARGET.ARLP_NAME,
       TARGET.ARLP_CERT_TYPE,
       TARGET.ARLP_CERT_NUM,
       TARGET.ARLP_TYPE,
       TARGET.WARTY_SIGN,
       TARGET.MAX_GUAR_MCC,
       TARGET.ODS_DATA_ID,
       TARGET.HIS_DATE,
       TARGET.HIS_TIME,
       TARGET.ARLP_AMT_ORG,
       TARGET.ARLP_AMT,
       TARGET.B_ACCT_CODE)
    VALUES
      (GET_DATA_ID(V_NOW_DATE),
       SOURCE.PDATA_ID,
       SOURCE.INFO_ID_TYPE,
       SOURCE.ARLP_NAME,
       SOURCE.ARLP_CERT_TYPE,
       SOURCE.ARLP_CERT_NUM,
       SOURCE.ARLP_TYPE,
       SOURCE.WARTY_SIGN,
       SOURCE.MAX_GUAR_MCC,
       SOURCE.DATA_ID,
       V_NOW_DATE,
       V_NOW_TIME,
       SOURCE.ARLP_AMT_ORG,
       SOURCE.ARLP_AMT,
       SOURCE.B_ACCT_CODE);
  COMMIT;
  MERGE INTO MBT_440_E_HIS TARGET
  USING (SELECT C.DATA_ID, A.DATA_ID PDATA_ID, C.CCC, A.B_ACCT_CODE
           FROM MBT_440_HIS A
          RIGHT JOIN MBT_440_E C
             ON C.PDATA_ID = A.ODS_DATA_ID
          WHERE A.DATA_STATUS = '23'
            AND A.HIS_DATE = V_NOW_DATE --TO_CHAR(SYSDATE, 'YYYYMMDD')
            AND A.B_RPT_DATE <= V_NOW_DATE) SOURCE
  ON (TARGET.DATA_ID = SOURCE.DATA_ID)
  WHEN NOT MATCHED THEN
    INSERT
      (TARGET.DATA_ID,
       TARGET.PDATA_ID,
       TARGET.CCC,
       TARGET.ODS_DATA_ID,
       TARGET.HIS_DATE,
       TARGET.HIS_TIME,
       TARGET.B_ACCT_CODE)
    VALUES
      (GET_DATA_ID(V_NOW_DATE),
       SOURCE.PDATA_ID,
       SOURCE.CCC,
       SOURCE.DATA_ID,
       V_NOW_DATE,
       V_NOW_TIME,
       SOURCE.B_ACCT_CODE);
  COMMIT;
EXCEPTION
  WHEN OTHERS THEN
    ERRCODE := SQLCODE;
    ERRMSG  := SUBSTR(SQLERRM, 1, 200);
    ROLLBACK;
    RETURN;
END;
/

prompt
prompt Creating procedure SYNC_PM_TO_HIS_510
prompt =====================================
prompt
CREATE OR REPLACE PROCEDURE "SYNC_PM_TO_HIS_510"(ERRCODE OUT VARCHAR,
                                                 ERRMSG  OUT VARCHAR) AS
  V_NOW_DATE CHAR(8);
  V_NOW_TIME CHAR(14);
BEGIN
  SELECT TO_CHAR(SYSDATE, 'YYYYMMDD') INTO V_NOW_DATE FROM DUAL;
  SELECT TO_CHAR(SYSDATE, 'YYYYMMDDHH24MISS') INTO V_NOW_TIME FROM DUAL;

  DELETE FROM MBT_510_D_HIS
   WHERE   pdata_id IN (select data_id
                       from MBT_510_HIS
                      where HIS_DATE = V_NOW_DATE
                        and data_status = '23' );
  DELETE FROM MBT_510_E_HIS
   WHERE  pdata_id IN (select data_id
                       from MBT_510_HIS
                      where HIS_DATE = V_NOW_DATE
                        and data_status = '23' );
  DELETE FROM MBT_510_F_HIS
   WHERE  pdata_id IN (select data_id
                       from MBT_510_HIS
                      where HIS_DATE = V_NOW_DATE
                        and data_status = '23'
                        );
  DELETE FROM MBT_510_HIS
   WHERE HIS_DATE = V_NOW_DATE
     and DATA_STATUS = '23';
  COMMIT;
  ERRCODE :='00';
  ERRMSG :='';
  --²åÈëÖ÷±í
  MERGE INTO MBT_510_HIS TARGET
  USING (SELECT M.DATA_ID,
                M.DATA_DATE,
                M.CORP_ID,
                M.ORG_ID,
                M.GROUP_ID,
                M.INQ_ORG_ID,
                M.INQ_GROUP_ID,
                M.B_INF_REC_NO,
                M.B_INF_REC_TYPE,
                M.B_CC_CODE,
                M.B_RPT_DATE,
                M.B_RPT_DATE_CODE,
                M.B_INFO_ID_TYPE,
                M.B_NAME,
                M.B_CERT_TYPE,
                M.B_CERT_NUM,
                M.B_MNGMT_ORG_CODE,
                M.B_CUST_NO,
                M.C_GUAR_TYPE,
                M.C_CC_AMT_LCY,
                M.C_CC_AMT,
                M.C_CY,
                M.C_CC_VAL_DATE,
                M.C_CC_EXP_DATE,
                M.C_MAX_GUAR,
                M.C_CC_STATUS,
                M.G_DATA_DESC,
                M.REMARKS,
                M.CHECK_FLAG,
                M.CHECK_DESC,
                M.CHECK_ERR_TYPE,
                M.NEXT_ACTION,
                M.DATA_STATUS,
                M.DATA_FLAG,
                M.DATA_SOURCE,
                M.DATA_VERSION,
                M.DATA_REJ_DESC,
                M.DATA_DEL_DESC,
                M.DATA_CRT_USER,
                M.DATA_CRT_DATE,
                M.DATA_CRT_TIME,
                M.DATA_CHG_USER,
                M.DATA_CHG_DATE,
                M.DATA_CHG_TIME,
                M.DATA_APV_USER,
                M.DATA_APV_DATE,
                M.DATA_APV_TIME,
                M.RSV1,
                M.RSV2,
                M.RSV3,
                M.RSV4,
                M.RSV5,
                M.IS_RPT,
                M.CUST_TYPE
           FROM MBT_510 M
          WHERE M.DATA_STATUS = '21'
            AND M.B_RPT_DATE <= V_NOW_DATE
            AND (SELECT COUNT(1) AS CNT
                   FROM MBT_510_HIS N, MBT_510_RPT R
                  WHERE R.ODS_DATA_ID = N.DATA_ID
                    AND N.ODS_DATA_ID = M.DATA_ID
                    AND N.HIS_DATE = V_NOW_DATE
                    AND R.RPT_DATE = V_NOW_DATE
                    AND R.DATA_STATUS != '24') < 1) SOURCE
  ON (TARGET.DATA_ID = SOURCE.DATA_ID)
  WHEN NOT MATCHED THEN
    INSERT
      (TARGET.DATA_ID,
       TARGET.DATA_DATE,
       TARGET.CORP_ID,
       TARGET.ORG_ID,
       TARGET.GROUP_ID,
       TARGET.INQ_ORG_ID,
       TARGET.INQ_GROUP_ID,
       TARGET.B_INF_REC_NO,
       TARGET.B_INF_REC_TYPE,
       TARGET.B_CC_CODE,
       TARGET.B_RPT_DATE,
       TARGET.B_RPT_DATE_CODE,
       TARGET.B_INFO_ID_TYPE,
       TARGET.B_NAME,
       TARGET.B_CERT_TYPE,
       TARGET.B_CERT_NUM,
       TARGET.B_MNGMT_ORG_CODE,
       TARGET.B_CUST_NO,
       TARGET.C_GUAR_TYPE,
       TARGET.C_CC_AMT_LCY,
       TARGET.C_CC_AMT,
       TARGET.C_CY,
       TARGET.C_CC_VAL_DATE,
       TARGET.C_CC_EXP_DATE,
       TARGET.C_MAX_GUAR,
       TARGET.C_CC_STATUS,
       TARGET.G_DATA_DESC,
       TARGET.REMARKS,
       TARGET.CHECK_FLAG,
       TARGET.CHECK_DESC,
       TARGET.CHECK_ERR_TYPE,
       TARGET.NEXT_ACTION,
       TARGET.DATA_STATUS,
       TARGET.DATA_FLAG,
       TARGET.DATA_SOURCE,
       TARGET.DATA_VERSION,
       TARGET.DATA_REJ_DESC,
       TARGET.DATA_DEL_DESC,
       TARGET.DATA_CRT_USER,
       TARGET.DATA_CRT_DATE,
       TARGET.DATA_CRT_TIME,
       TARGET.DATA_CHG_USER,
       TARGET.DATA_CHG_DATE,
       TARGET.DATA_CHG_TIME,
       TARGET.DATA_APV_USER,
       TARGET.DATA_APV_DATE,
       TARGET.DATA_APV_TIME,
       TARGET.RSV1,
       TARGET.RSV2,
       TARGET.RSV3,
       TARGET.RSV4,
       TARGET.RSV5,
       TARGET.ODS_DATA_ID,
       TARGET.HIS_DATE,
       TARGET.HIS_DATE_TIME,
       TARGET.IS_RPT,
       TARGET.CUST_TYPE)
    VALUES
      (GET_DATA_ID(V_NOW_DATE),
       SOURCE.DATA_DATE,
       SOURCE.CORP_ID,
       SOURCE.ORG_ID,
       SOURCE.GROUP_ID,
       SOURCE.INQ_ORG_ID,
       SOURCE.INQ_GROUP_ID,
       SOURCE.B_INF_REC_NO,
       SOURCE.B_INF_REC_TYPE,
       SOURCE.B_CC_CODE,
       SOURCE.B_RPT_DATE,
       SOURCE.B_RPT_DATE_CODE,
       SOURCE.B_INFO_ID_TYPE,
       SOURCE.B_NAME,
       SOURCE.B_CERT_TYPE,
       SOURCE.B_CERT_NUM,
       SOURCE.B_MNGMT_ORG_CODE,
       SOURCE.B_CUST_NO,
       SOURCE.C_GUAR_TYPE,
       SOURCE.C_CC_AMT_LCY,
       SOURCE.C_CC_AMT,
       SOURCE.C_CY,
       SOURCE.C_CC_VAL_DATE,
       SOURCE.C_CC_EXP_DATE,
       SOURCE.C_MAX_GUAR,
       SOURCE.C_CC_STATUS,
       SOURCE.G_DATA_DESC,
       SOURCE.REMARKS,
       SOURCE.CHECK_FLAG,
       SOURCE.CHECK_DESC,
       SOURCE.CHECK_ERR_TYPE,
       SOURCE.NEXT_ACTION,
       '23',
       SOURCE.DATA_FLAG,
       SOURCE.DATA_SOURCE,
       SOURCE.DATA_VERSION,
       SOURCE.DATA_REJ_DESC,
       SOURCE.DATA_DEL_DESC,
       SOURCE.DATA_CRT_USER,
       SOURCE.DATA_CRT_DATE,
       SOURCE.DATA_CRT_TIME,
       SOURCE.DATA_CHG_USER,
       SOURCE.DATA_CHG_DATE,
       SOURCE.DATA_CHG_TIME,
       SOURCE.DATA_APV_USER,
       SOURCE.DATA_APV_DATE,
       SOURCE.DATA_APV_TIME,
       SOURCE.RSV1,
       SOURCE.RSV2,
       SOURCE.RSV3,
       SOURCE.RSV4,
       SOURCE.RSV5,
       SOURCE.DATA_ID,
       V_NOW_DATE,
       V_NOW_TIME,
       SOURCE.IS_RPT,
       SOURCE.CUST_TYPE);
  COMMIT;
  --²åÈë×Ó±í
  MERGE INTO MBT_510_D_HIS TARGET
  USING (SELECT C.DATA_ID,
                A.DATA_ID PDATA_ID,
                C.D_INFO_ID_TYPE,
                C.D_GUAR_NAME,
                C.D_GUAR_CERT_TYPE,
                C.D_GUAR_CERT_NUM,
                C.D_GUAR_NO,
                A.B_CC_CODE
           FROM MBT_510_HIS A
          RIGHT JOIN MBT_510_D C
             ON C.PDATA_ID = A.ODS_DATA_ID
          WHERE A.DATA_STATUS = '23'
            AND A.HIS_DATE =V_NOW_DATE
            AND A.B_RPT_DATE <= V_NOW_DATE) SOURCE
  ON (TARGET.DATA_ID = SOURCE.DATA_ID)
  WHEN NOT MATCHED THEN
    INSERT
      (TARGET.DATA_ID,
       TARGET.PDATA_ID,
       TARGET.D_INFO_ID_TYPE,
       TARGET.D_GUAR_NAME,
       TARGET.D_GUAR_CERT_TYPE,
       TARGET.D_GUAR_CERT_NUM,
       TARGET.D_GUAR_NO,
       TARGET.ODS_DATA_ID,
       TARGET.HIS_DATE,
       TARGET.HIS_DATE_TIME,
       TARGET.B_CC_CODE)
    VALUES
      (GET_DATA_ID(V_NOW_DATE),
       SOURCE.PDATA_ID,
       SOURCE.D_INFO_ID_TYPE,
       SOURCE.D_GUAR_NAME,
       SOURCE.D_GUAR_CERT_TYPE,
       SOURCE.D_GUAR_CERT_NUM,
       SOURCE.D_GUAR_NO,
       SOURCE.DATA_ID,
       V_NOW_DATE,
       V_NOW_TIME,
       SOURCE.B_CC_CODE);
  COMMIT;
  MERGE INTO MBT_510_E_HIS TARGET
  USING (SELECT C.DATA_ID,
                A.DATA_ID PDATA_ID,
                C.E_PLE_TYPE,
                C.E_MOTGA_PROPT_ID_TYPE,
                C.E_PLE_CERT_ID,
                C.E_PLE_DISTR,
                C.E_PLE_VALUE_ORG,
                C.E_PLE_VALUE,
                C.E_PLE_CY,
                C.E_VAL_ORG_TYPE,
                C.E_VAL_DATE,
                C.E_PLEDGOR_TYPE,
                C.E_PLEDGOR_NAME,
                C.E_PLEOR_CERT_TYPE,
                C.E_PLEOR_CERT_NUM,
                C.E_PLE_DESC,
                A.B_CC_CODE
           FROM MBT_510_HIS A
          RIGHT JOIN MBT_510_E C
             ON C.PDATA_ID = A.ODS_DATA_ID
          WHERE A.DATA_STATUS = '23'
            AND A.HIS_DATE = V_NOW_DATE
            AND A.B_RPT_DATE <= V_NOW_DATE) SOURCE
  ON (TARGET.DATA_ID = SOURCE.DATA_ID)
  WHEN NOT MATCHED THEN
    INSERT
      (TARGET.DATA_ID,
       TARGET.PDATA_ID,
       TARGET.E_PLE_TYPE,
       TARGET.E_MOTGA_PROPT_ID_TYPE,
       TARGET.E_PLE_CERT_ID,
       TARGET.E_PLE_DISTR,
       TARGET.E_PLE_VALUE_ORG,
       TARGET.E_PLE_VALUE,
       TARGET.E_PLE_CY,
       TARGET.E_VAL_ORG_TYPE,
       TARGET.E_VAL_DATE,
       TARGET.E_PLEDGOR_TYPE,
       TARGET.E_PLEDGOR_NAME,
       TARGET.E_PLEOR_CERT_TYPE,
       TARGET.E_PLEOR_CERT_NUM,
       TARGET.E_PLE_DESC,
       TARGET.ODS_DATA_ID,
       TARGET.HIS_DATE,
       TARGET.HIS_DATE_TIME,
       TARGET.B_CC_CODE)
    VALUES
      (GET_DATA_ID(V_NOW_DATE),
       SOURCE.PDATA_ID,
       SOURCE.E_PLE_TYPE,
       SOURCE.E_MOTGA_PROPT_ID_TYPE,
       SOURCE.E_PLE_CERT_ID,
       SOURCE.E_PLE_DISTR,
       SOURCE.E_PLE_VALUE_ORG,
       SOURCE.E_PLE_VALUE,
       SOURCE.E_PLE_CY,
       SOURCE.E_VAL_ORG_TYPE,
       SOURCE.E_VAL_DATE,
       SOURCE.E_PLEDGOR_TYPE,
       SOURCE.E_PLEDGOR_NAME,
       SOURCE.E_PLEOR_CERT_TYPE,
       SOURCE.E_PLEOR_CERT_NUM,
       SOURCE.E_PLE_DESC,
       SOURCE.DATA_ID,
       V_NOW_DATE,
       V_NOW_TIME,
       SOURCE.B_CC_CODE);
  COMMIT;
  MERGE INTO MBT_510_F_HIS TARGET
  USING (SELECT C.DATA_ID,
                A.DATA_ID PDATA_ID,
                C.F_IMP_TYPE,
                C.F_IMP_VAL_ORG,
                C.F_IMP_VAL,
                C.F_IMP_CY,
                C.F_IPPC,
                C.F_PAWN_NAME,
                C.F_PAWN_CERT_TYPE,
                C.F_PAWN_CERT_NUM,
                A.B_CC_CODE
           FROM MBT_510_HIS A
          RIGHT JOIN MBT_510_F C
             ON C.PDATA_ID = A.ODS_DATA_ID
          WHERE A.DATA_STATUS = '23'
            AND A.HIS_DATE = V_NOW_DATE
            AND A.B_RPT_DATE <= V_NOW_DATE) SOURCE
  ON (TARGET.DATA_ID = SOURCE.DATA_ID)
  WHEN NOT MATCHED THEN
    INSERT
      (TARGET.DATA_ID,
       TARGET.PDATA_ID,
       TARGET.F_IMP_TYPE,
       TARGET.F_IMP_VAL_ORG,
       TARGET.F_IMP_VAL,
       TARGET.F_IMP_CY,
       TARGET.F_IPPC,
       TARGET.F_PAWN_NAME,
       TARGET.F_PAWN_CERT_TYPE,
       TARGET.F_PAWN_CERT_NUM,
       TARGET.ODS_DATA_ID,
       TARGET.HIS_DATE,
       TARGET.HIS_DATE_TIME,
       TARGET.B_CC_CODE)
    VALUES
      (GET_DATA_ID(V_NOW_DATE),
       SOURCE.PDATA_ID,
       SOURCE.F_IMP_TYPE,
       SOURCE.F_IMP_VAL_ORG,
       SOURCE.F_IMP_VAL,
       SOURCE.F_IMP_CY,
       SOURCE.F_IPPC,
       SOURCE.F_PAWN_NAME,
       SOURCE.F_PAWN_CERT_TYPE,
       SOURCE.F_PAWN_CERT_NUM,
       SOURCE.DATA_ID,
       V_NOW_DATE,
       V_NOW_TIME,
       SOURCE.B_CC_CODE);
  COMMIT;
EXCEPTION
  WHEN OTHERS THEN
    ERRCODE := SQLCODE;
    ERRMSG  := SUBSTR(SQLERRM, 1, 200);
    ROLLBACK;
    RETURN;
END;
/

prompt
prompt Creating procedure SYNC_PM_TO_HIS_511
prompt =====================================
prompt
CREATE OR REPLACE PROCEDURE "SYNC_PM_TO_HIS_511"(ERRCODE   OUT VARCHAR,
                                           ERRMSG   OUT VARCHAR) AS v_NOW_DATE CHAR(8);
V_NOW_TIME CHAR(14);
BEGIN
    SELECT
        TO_CHAR(SYSDATE,'yyyyMMdd')
    INTO
        v_NOW_DATE
    FROM
        DUAL;
SELECT
    TO_CHAR(SYSDATE, 'YYYYMMDDHH24MISS')
INTO
    V_NOW_TIME
FROM
    DUAL;
DELETE
FROM
    MBT_511_HIS
WHERE
    HIS_DATE=v_NOW_DATE and DATA_STATUS='23';
COMMIT;
--²åÈëÖ÷±í
MERGE
INTO
    MBT_511_HIS target
USING
    (
        SELECT
            DATA_DATE,
            INQ_GROUP_ID,
            INQ_ORG_ID,
            GROUP_ID,
            ORG_ID,
            CORP_ID,
            DATA_ID,
            INF_REC_TYPE,
            OD_BNES_CODE,
            NW_BNES_CODE,
            DATA_DESC,
            REMARKS,
            CHECK_FLAG,
            CHECK_DESC,
            CHECK_ERR_TYPE,
            NEXT_ACTION,
            DATA_STATUS,
            DATA_FLAG,
            DATA_SOURE,
            DATA_VERSION,
            DATA_REJ_DESC,
            DATA_DEL_DESC,
            DATA_CRT_USER,
            DATA_CRT_DATE,
            DATA_CRT_TIME,
            DATA_CHG_USER,
            DATA_CHG_DATE,
            DATA_CHG_TIME,
            DATA_APV_USER,
            DATA_APV_DATE,
            DATA_APV_TIME,
            RSV1,
            RSV2,
            RSV3,
            RSV4,
            RSV5,
            IS_RPT
        FROM
            MBT_511
        WHERE
            DATA_STATUS='21') source
ON
    (
        target.data_id = source.data_id)
WHEN NOT MATCHED
    THEN
INSERT
    (
        TARGET.DATA_DATE,
        TARGET.INQ_GROUP_ID,
        TARGET.INQ_ORG_ID,
        TARGET.GROUP_ID,
        TARGET.ORG_ID,
        TARGET.CORP_ID,
        TARGET.DATA_ID,
        TARGET.INF_REC_TYPE,
        TARGET.OD_BNES_CODE,
        TARGET.NW_BNES_CODE,
        TARGET.DATA_DESC,
        TARGET.REMARKS,
        TARGET.CHECK_FLAG,
        TARGET.CHECK_DESC,
        TARGET.CHECK_ERR_TYPE,
        TARGET.NEXT_ACTION,
        TARGET.DATA_STATUS,
        TARGET.DATA_FLAG,
        TARGET.DATA_SOURE,
        TARGET.DATA_VERSION,
        TARGET.DATA_REJ_DESC,
        TARGET.DATA_DEL_DESC,
        TARGET.DATA_CRT_USER,
        TARGET.DATA_CRT_DATE,
        TARGET.DATA_CRT_TIME,
        TARGET.DATA_CHG_USER,
        TARGET.DATA_CHG_DATE,
        TARGET.DATA_CHG_TIME,
        TARGET.DATA_APV_USER,
        TARGET.DATA_APV_DATE,
        TARGET.DATA_APV_TIME,
        TARGET.RSV1,
        TARGET.RSV2,
        TARGET.RSV3,
        TARGET.RSV4,
        TARGET.RSV5,
        TARGET.ODS_DATA_ID,
        TARGET.HIS_DATE,
        TARGET.HIS_DATE_TIME,
        TARGET.IS_RPT
    )
    VALUES
    (
        SOURCE.DATA_DATE,
        SOURCE.INQ_GROUP_ID,
        SOURCE.INQ_ORG_ID,
        SOURCE.GROUP_ID,
        SOURCE.ORG_ID,
        SOURCE.CORP_ID,
        GET_DATA_ID(V_NOW_DATE),
        SOURCE.INF_REC_TYPE,
        SOURCE.OD_BNES_CODE,
        SOURCE.NW_BNES_CODE,
        SOURCE.DATA_DESC,
        SOURCE.REMARKS,
        SOURCE.CHECK_FLAG,
        SOURCE.CHECK_DESC,
        SOURCE.CHECK_ERR_TYPE,
        SOURCE.NEXT_ACTION,
        '23',
        SOURCE.DATA_FLAG,
        SOURCE.DATA_SOURE,
        SOURCE.DATA_VERSION,
        SOURCE.DATA_REJ_DESC,
        SOURCE.DATA_DEL_DESC,
        SOURCE.DATA_CRT_USER,
        SOURCE.DATA_CRT_DATE,
        SOURCE.DATA_CRT_TIME,
        SOURCE.DATA_CHG_USER,
        SOURCE.DATA_CHG_DATE,
        SOURCE.DATA_CHG_TIME,
        SOURCE.DATA_APV_USER,
        SOURCE.DATA_APV_DATE,
        SOURCE.DATA_APV_TIME,
        SOURCE.RSV1,
        SOURCE.RSV2,
        SOURCE.RSV3,
        SOURCE.RSV4,
        SOURCE.RSV5,
        SOURCE.DATA_ID,
        V_NOW_DATE,
        V_NOW_TIME,
        SOURCE.IS_RPT
    );
COMMIT;
EXCEPTION
WHEN OTHERS THEN
    ERRCODE := SQLCODE;
    ERRMSG := SUBSTR(SQLERRM,1,200);
ROLLBACK;
RETURN;
END;
/

prompt
prompt Creating procedure SYNC_PM_TO_HIS_610
prompt =====================================
prompt
CREATE OR REPLACE PROCEDURE "SYNC_PM_TO_HIS_610"(ERRCODE OUT VARCHAR,
                                                 ERRMSG  OUT VARCHAR) AS
  V_NOW_DATE CHAR(8);
  V_NOW_TIME CHAR(14);
BEGIN
  SELECT TO_CHAR(SYSDATE, 'YYYYMMDD') INTO V_NOW_DATE FROM DUAL;
  SELECT TO_CHAR(SYSDATE, 'YYYYMMDDHH24MISS') INTO V_NOW_TIME FROM DUAL;

  DELETE FROM MBT_610_HIS
   WHERE HIS_DATE =V_NOW_DATE
     and DATA_STATUS = '23';
  COMMIT;
  --²åÈëÖ÷±í
  MERGE INTO MBT_610_HIS TARGET
  USING (SELECT M.DATA_ID,
            M.DATA_DATE,
            M.CORP_ID,
            M.ORG_ID,
            M.GROUP_ID,
            M.INQ_ORG_ID,
            M.INQ_GROUP_ID,
            M.B_INF_REC_TYPE,
            M.B_ENT_NAME,
            M.B_ENT_CERT_TYPE,
            M.B_ENT_CERT_NUM,
            M.B_RPT_DATE,
            M.B_SHEET_YEAR,
            M.B_SHEET_TYPE,
            M.B_SHEET_TYPE_DIVIDE,
            M.B_AUDIT_FIRM_NAME,
            M.B_AUDITOR_NAME,
            M.B_AUDIT_TIME,
            M.B_CIMOC,
            M.B_RPT_DATE_CODE,
            M.C_CURRENCY_FUNDS,
            M.C_SHORT_TERM_INVESTMENTS,
            M.C_NOTES_RECEIVABLE,
            M.C_DIVIDENDS_RECEIVABLE,
            M.C_INTEREST_RECEIVABLE,
            M.C_ACCOUNTS_RECEIVABLE,
            M.C_OTHER_RECEIVABLES,
            M.C_PREPAYMENTS,
            M.C_FUTURE_GUARANTEE,
            M.C_ALLOWANCE_RECEIVABLE,
            M.C_EXPORT_DRAWBACK_RECEIVABLE,
            M.C_INVENTORIES,
            M.C_RAW_MATERIALS,
            M.C_FINISHED_PRODUCTS,
            M.C_DEFERRED_EXPENSES,
            M.C_UNSETTLED_GL_CURRENT_ASSETS,
            M.C_LT_DI_FALLINGDUEINAYEAR,
            M.C_OTHER_CURRENT_ASSETS,
            M.C_TOTAL_CURRENT_ASSETS,
            M.C_LT_INVESTMENT,
            M.C_LT_EQUITYINVESTMENT,
            M.C_LT_SECURITIES_INVESTMENT,
            M.C_INC_PRICE_DIFFERENCE,
            M.C_TOTAL_LT_INVESTMENT,
            M.C_ORIGINAL_COST_FA,
            M.C_FA_ACC_DEPRECIATION,
            M.C_FA_NET_VALUE,
            M.C_PROVISION_IMPAIRMENT_FA,
            M.C_NET_VALUE_FA,
            M.C_FA_PENDING_DISPOSAL,
            M.C_CONSTRUCTION_MATERIALS,
            M.C_CONSTRUCTION_IN_PROGRESS,
            M.C_UNSETTLED_GL_ON_FA,
            M.C_TOTAL_FIXED_ASSETS,
            M.C_INTANGIBLE_ASSETS,
            M.C_LAND_USE_RIGHTS,
            M.C_DEFERRED_ASSETS,
            M.C_INCLUDING_FA_REPAIR,
            M.C_IMPROVEMENT_EXPENDITURE_FA,
            M.C_OTHER_LONG_TERM_ASSETS,
            M.C_AMONG_IT_SPE_APPR_RES_MAT,
            M.C_TOTAL_INTANGIBLE_OTHER_ASS,
            M.C_DEFERRED_ASSETS_DEBITS,
            M.C_TOTAL_ASSETS,
            M.C_SHORT_TERM_BORROWINGS,
            M.C_NOTES_PAYABLE,
            M.C_ACCOUNTS_PAYABLE,
            M.C_RECEIPTS_IN_ADVANCE,
            M.C_WAGES_SALARIES_PAYABLES,
            M.C_EMPLOYEE_BENEFITS,
            M.C_INCOME_PAYABLE,
            M.C_TAXES_PAYABLE,
            M.C_OTHER_PAYABLE_GOVERNMENT,
            M.C_OTHER_PAYABLE,
            M.C_PROVISION_FOR_EXPENSES,
            M.C_PROVISIONS,
            M.C_LT_LIABILITIES_DUE_ONEYEAR,
            M.C_OTHER_CURRENT_LIABILITIES,
            M.C_TOTAL_CURRENT_LIABILITIES,
            M.C_LT_BORROWINGS,
            M.C_BONDS_PAYABLE,
            M.C_LONG_TERM_PAYABLES,
            M.C_GRANTS_PAYABLE,
            M.C_OTHER_LT_LIABILITIES,
            M.C_SPECIAL_RESERVE_FUND,
            M.C_TOTAL_LT_LIABILITIES,
            M.C_DEFERRED_TAXATION_CREDIT,
            M.C_TOTAL_LIABILITIES,
            M.C_MINORITY_INTEREST,
            M.C_PAID_IN_CAPITAL,
            M.C_NATIONAL_CAPITAL,
            M.C_COLLECTIVE_CAPITAL,
            M.C_LEGAL_PERSONS_CAPITAL,
            M.C_STATE_OWNED_LP_CAPITAL,
            M.C_COLLECTIVE_LP_CAPITAL,
            M.C_PERSONAL_CAPITAL,
            M.C_FOREIGN_BUS_CAPITAL,
            M.C_CAPITALR_RSERVE,
            M.C_SURPLUS_RESERVE,
            M.C_STATUTORY_SURPLUS_RESERVE,
            M.C_PUBLIC_WELFARE_FUND,
            M.C_SUPPLER_CURRENT_CAPITAL,
            M.C_UNAFFIRMED_INVESTMENT_LOSS,
            M.C_UNAPPROPRIATED_PROFIT,
            M.C_DT_FC_FINANCIAL_STA,
            M.C_TOTAL_EQUITY,
            M.C_TOTAL_EQUITY_LIABILITIES,
            M.D_CURRENCY_FUNDS,
            M.D_FINANCIAL_ASS_HELD_TRADING,
            M.D_NOTES_RECEIVABLE,
            M.D_ACCOUNTS_RECEIVABLE,
            M.D_PREPAYMENTS,
            M.D_INTEREST_RECEIVABLE,
            M.D_DIVIDENDS_RECEIVABLE,
            M.D_OTHER_RECEIVABLES,
            M.D_INVENTORIES,
            M.D_CURRENT_PORTION_NCA,
            M.D_OTHER_CURRENT_ASSETS,
            M.D_TOTAL_CURRENT_ASSETS,
            M.D_FINANCIAL_ASS_AVAILABLE_SALE,
            M.D_HELD_MATURITY_INVESTMENTS,
            M.D_LONG_TERM_EQUITY_INVESTMENT,
            M.D_LONG_TERM_RECEIVABLES,
            M.D_INVESTMENT_PROPERTIES,
            M.D_FIXED_ASSETS,
            M.D_NET_VALUE_OF_FIXE_ASSETS,
            M.D_CONSTRUCTION_IN_PROGRESS,
            M.D_CONSTRUCTION_MATERIALS,
            M.D_FIXED_ASS_PENDING_DISPOSAL,
            M.D_NON_CURRENT_BIOLOGICAL_ASS,
            M.D_OIL_AND_GAS_ASSETS,
            M.D_INTANGIBLE_ASSETS,
            M.D_LAND_USE_RIGHTS,
            M.D_DEVELOPMENT_DISBURSEMENTS,
            M.D_GOODWILL,
            M.D_LONG_TERM_DEFERRED_EXPENSES,
            M.D_DEFERRED_TAX_ASSETS,
            M.D_OTHER_NON_CURRENT_ASSETS,
            M.D_TOTAL_NON_CURRENT_ASSETS,
            M.D_TOTAL_ASSETS,
            M.D_SHORT_TERM_BORROWINGS,
            M.D_FINANCIAL_LIABILITIES_HFT,
            M.D_NOTES_PAYABLE,
            M.D_ACCOUNTS_PAYABLE,
            M.D_RECEIPTS_IN_ADVANCE,
            M.D_INTEREST_PAYABLE,
            M.D_EMPLOYEE_BENEFITS_PAYABLE,
            M.D_TAXES_PAYABLE,
            M.D_DIVIDENDS_PAYABLE,
            M.D_OTHER_PAYABLE,
            M.D_CURRENT_PORTION_LIABILITIES,
            M.D_OTHER_CURRENT_LIABILITIES,
            M.D_TOTAL_CURRENT_LIABILITIES,
            M.D_LONG_TERM_BORROWINGSORROWING,
            M.D_BONDS_PAYABLE,
            M.D_LONG_TERM_PAYABLES,
            M.D_GRANTS_PAYABLE,
            M.D_PROVISIONS,
            M.D_DEFERRED_TAX_LIABILITIES,
            M.D_OTHER_NON_CURRENT_LIABILITIE,
            M.D_TOTAL_NON_CURRENT_LIABILITIE,
            M.D_TOTAL_LIABILITIES,
            M.D_PAID_IN_CAPITAL_SHARE_CAPITA,
            M.D_CAPITALR_RSERVE,
            M.D_LESS_TREASURY_STOCKS,
            M.D_SURPLUS_RESERVE,
            M.D_UNAPPROPRIATED_PROFIT,
            M.D_TOTAL_EQUITY,
            M.D_TOTAL_EQUITY_LIABILITIES,
            M.E_DATA_DESC,
            M.REMARKS,
            M.CHECK_FLAG,
            M.CHECK_DESC,
            M.CHECK_ERR_TYPE,
            M.NEXT_ACTION,
            M.DATA_STATUS,
            M.DATA_FLAG,
            M.DATA_SOURCE,
            M.DATA_VERSION,
            M.DATA_REJ_DESC,
            M.DATA_DEL_DESC,
            M.DATA_CRT_USER,
            M.DATA_CRT_DATE,
            M.DATA_CRT_TIME,
            M.DATA_CHG_USER,
            M.DATA_CHG_DATE,
            M.DATA_CHG_TIME,
            M.DATA_APV_USER,
            M.DATA_APV_DATE,
            M.DATA_APV_TIME,
            M.RSV1,
            M.RSV2,
            M.RSV3,
            M.RSV4,
            M.RSV5,
            M.IS_RPT,
            M.FB_STATUS,
            M.RPT_FILE_NAME
           FROM MBT_610 M
          WHERE M.DATA_STATUS = '21'
            AND M.B_RPT_DATE <= V_NOW_DATE
            AND (SELECT COUNT(1) AS CNT
                   FROM MBT_610_HIS N, MBT_610_RPT R
                  WHERE R.ODS_DATA_ID = N.DATA_ID
                    AND N.ODS_DATA_ID = M.DATA_ID
                    AND N.HIS_DATE = V_NOW_DATE
                    AND R.RPT_DATE = V_NOW_DATE
                    AND R.DATA_STATUS != '24') < 1) SOURCE
  ON (TARGET.DATA_ID = SOURCE.DATA_ID)
  WHEN NOT MATCHED THEN
   INSERT
    (
        TARGET.DATA_ID,
        TARGET.DATA_DATE,
        TARGET.CORP_ID,
        TARGET.ORG_ID,
        TARGET.GROUP_ID,
        TARGET.INQ_ORG_ID,
        TARGET.INQ_GROUP_ID,
        TARGET.B_INF_REC_TYPE,
        TARGET.B_ENT_NAME,
        TARGET.B_ENT_CERT_TYPE,
        TARGET.B_ENT_CERT_NUM,
        TARGET.B_RPT_DATE,
        TARGET.B_SHEET_YEAR,
        TARGET.B_SHEET_TYPE,
        TARGET.B_SHEET_TYPE_DIVIDE,
        TARGET.B_AUDIT_FIRM_NAME,
        TARGET.B_AUDITOR_NAME,
        TARGET.B_AUDIT_TIME,
        TARGET.B_CIMOC,
        TARGET.B_RPT_DATE_CODE,
        TARGET.C_CURRENCY_FUNDS,
        TARGET.C_SHORT_TERM_INVESTMENTS,
        TARGET.C_NOTES_RECEIVABLE,
        TARGET.C_DIVIDENDS_RECEIVABLE,
        TARGET.C_INTEREST_RECEIVABLE,
        TARGET.C_ACCOUNTS_RECEIVABLE,
        TARGET.C_OTHER_RECEIVABLES,
        TARGET.C_PREPAYMENTS,
        TARGET.C_FUTURE_GUARANTEE,
        TARGET.C_ALLOWANCE_RECEIVABLE,
        TARGET.C_EXPORT_DRAWBACK_RECEIVABLE,
        TARGET.C_INVENTORIES,
        TARGET.C_RAW_MATERIALS,
        TARGET.C_FINISHED_PRODUCTS,
        TARGET.C_DEFERRED_EXPENSES,
        TARGET.C_UNSETTLED_GL_CURRENT_ASSETS,
        TARGET.C_LT_DI_FALLINGDUEINAYEAR,
        TARGET.C_OTHER_CURRENT_ASSETS,
        TARGET.C_TOTAL_CURRENT_ASSETS,
        TARGET.C_LT_INVESTMENT,
        TARGET.C_LT_EQUITYINVESTMENT,
        TARGET.C_LT_SECURITIES_INVESTMENT,
        TARGET.C_INC_PRICE_DIFFERENCE,
        TARGET.C_TOTAL_LT_INVESTMENT,
        TARGET.C_ORIGINAL_COST_FA,
        TARGET.C_FA_ACC_DEPRECIATION,
        TARGET.C_FA_NET_VALUE,
        TARGET.C_PROVISION_IMPAIRMENT_FA,
        TARGET.C_NET_VALUE_FA,
        TARGET.C_FA_PENDING_DISPOSAL,
        TARGET.C_CONSTRUCTION_MATERIALS,
        TARGET.C_CONSTRUCTION_IN_PROGRESS,
        TARGET.C_UNSETTLED_GL_ON_FA,
        TARGET.C_TOTAL_FIXED_ASSETS,
        TARGET.C_INTANGIBLE_ASSETS,
        TARGET.C_LAND_USE_RIGHTS,
        TARGET.C_DEFERRED_ASSETS,
        TARGET.C_INCLUDING_FA_REPAIR,
        TARGET.C_IMPROVEMENT_EXPENDITURE_FA,
        TARGET.C_OTHER_LONG_TERM_ASSETS,
        TARGET.C_AMONG_IT_SPE_APPR_RES_MAT,
        TARGET.C_TOTAL_INTANGIBLE_OTHER_ASS,
        TARGET.C_DEFERRED_ASSETS_DEBITS,
        TARGET.C_TOTAL_ASSETS,
        TARGET.C_SHORT_TERM_BORROWINGS,
        TARGET.C_NOTES_PAYABLE,
        TARGET.C_ACCOUNTS_PAYABLE,
        TARGET.C_RECEIPTS_IN_ADVANCE,
        TARGET.C_WAGES_SALARIES_PAYABLES,
        TARGET.C_EMPLOYEE_BENEFITS,
        TARGET.C_INCOME_PAYABLE,
        TARGET.C_TAXES_PAYABLE,
        TARGET.C_OTHER_PAYABLE_GOVERNMENT,
        TARGET.C_OTHER_PAYABLE,
        TARGET.C_PROVISION_FOR_EXPENSES,
        TARGET.C_PROVISIONS,
        TARGET.C_LT_LIABILITIES_DUE_ONEYEAR,
        TARGET.C_OTHER_CURRENT_LIABILITIES,
        TARGET.C_TOTAL_CURRENT_LIABILITIES,
        TARGET.C_LT_BORROWINGS,
        TARGET.C_BONDS_PAYABLE,
        TARGET.C_LONG_TERM_PAYABLES,
        TARGET.C_GRANTS_PAYABLE,
        TARGET.C_OTHER_LT_LIABILITIES,
        TARGET.C_SPECIAL_RESERVE_FUND,
        TARGET.C_TOTAL_LT_LIABILITIES,
        TARGET.C_DEFERRED_TAXATION_CREDIT,
        TARGET.C_TOTAL_LIABILITIES,
        TARGET.C_MINORITY_INTEREST,
        TARGET.C_PAID_IN_CAPITAL,
        TARGET.C_NATIONAL_CAPITAL,
        TARGET.C_COLLECTIVE_CAPITAL,
        TARGET.C_LEGAL_PERSONS_CAPITAL,
        TARGET.C_STATE_OWNED_LP_CAPITAL,
        TARGET.C_COLLECTIVE_LP_CAPITAL,
        TARGET.C_PERSONAL_CAPITAL,
        TARGET.C_FOREIGN_BUS_CAPITAL,
        TARGET.C_CAPITALR_RSERVE,
        TARGET.C_SURPLUS_RESERVE,
        TARGET.C_STATUTORY_SURPLUS_RESERVE,
        TARGET.C_PUBLIC_WELFARE_FUND,
        TARGET.C_SUPPLER_CURRENT_CAPITAL,
        TARGET.C_UNAFFIRMED_INVESTMENT_LOSS,
        TARGET.C_UNAPPROPRIATED_PROFIT,
        TARGET.C_DT_FC_FINANCIAL_STA,
        TARGET.C_TOTAL_EQUITY,
        TARGET.C_TOTAL_EQUITY_LIABILITIES,
        TARGET.D_CURRENCY_FUNDS,
        TARGET.D_FINANCIAL_ASS_HELD_TRADING,
        TARGET.D_NOTES_RECEIVABLE,
        TARGET.D_ACCOUNTS_RECEIVABLE,
        TARGET.D_PREPAYMENTS,
        TARGET.D_INTEREST_RECEIVABLE,
        TARGET.D_DIVIDENDS_RECEIVABLE,
        TARGET.D_OTHER_RECEIVABLES,
        TARGET.D_INVENTORIES,
        TARGET.D_CURRENT_PORTION_NCA,
        TARGET.D_OTHER_CURRENT_ASSETS,
        TARGET.D_TOTAL_CURRENT_ASSETS,
        TARGET.D_FINANCIAL_ASS_AVAILABLE_SALE,
        TARGET.D_HELD_MATURITY_INVESTMENTS,
        TARGET.D_LONG_TERM_EQUITY_INVESTMENT,
        TARGET.D_LONG_TERM_RECEIVABLES,
        TARGET.D_INVESTMENT_PROPERTIES,
        TARGET.D_FIXED_ASSETS,
        TARGET.D_NET_VALUE_OF_FIXE_ASSETS,
        TARGET.D_CONSTRUCTION_IN_PROGRESS,
        TARGET.D_CONSTRUCTION_MATERIALS,
        TARGET.D_FIXED_ASS_PENDING_DISPOSAL,
        TARGET.D_NON_CURRENT_BIOLOGICAL_ASS,
        TARGET.D_OIL_AND_GAS_ASSETS,
        TARGET.D_INTANGIBLE_ASSETS,
        TARGET.D_LAND_USE_RIGHTS,
        TARGET.D_DEVELOPMENT_DISBURSEMENTS,
        TARGET.D_GOODWILL,
        TARGET.D_LONG_TERM_DEFERRED_EXPENSES,
        TARGET.D_DEFERRED_TAX_ASSETS,
        TARGET.D_OTHER_NON_CURRENT_ASSETS,
        TARGET.D_TOTAL_NON_CURRENT_ASSETS,
        TARGET.D_TOTAL_ASSETS,
        TARGET.D_SHORT_TERM_BORROWINGS,
        TARGET.D_FINANCIAL_LIABILITIES_HFT,
        TARGET.D_NOTES_PAYABLE,
        TARGET.D_ACCOUNTS_PAYABLE,
        TARGET.D_RECEIPTS_IN_ADVANCE,
        TARGET.D_INTEREST_PAYABLE,
        TARGET.D_EMPLOYEE_BENEFITS_PAYABLE,
        TARGET.D_TAXES_PAYABLE,
        TARGET.D_DIVIDENDS_PAYABLE,
        TARGET.D_OTHER_PAYABLE,
        TARGET.D_CURRENT_PORTION_LIABILITIES,
        TARGET.D_OTHER_CURRENT_LIABILITIES,
        TARGET.D_TOTAL_CURRENT_LIABILITIES,
        TARGET.D_LONG_TERM_BORROWINGSORROWING,
        TARGET.D_BONDS_PAYABLE,
        TARGET.D_LONG_TERM_PAYABLES,
        TARGET.D_GRANTS_PAYABLE,
        TARGET.D_PROVISIONS,
        TARGET.D_DEFERRED_TAX_LIABILITIES,
        TARGET.D_OTHER_NON_CURRENT_LIABILITIE,
        TARGET.D_TOTAL_NON_CURRENT_LIABILITIE,
        TARGET.D_TOTAL_LIABILITIES,
        TARGET.D_PAID_IN_CAPITAL_SHARE_CAPITA,
        TARGET.D_CAPITALR_RSERVE,
        TARGET.D_LESS_TREASURY_STOCKS,
        TARGET.D_SURPLUS_RESERVE,
        TARGET.D_UNAPPROPRIATED_PROFIT,
        TARGET.D_TOTAL_EQUITY,
        TARGET.D_TOTAL_EQUITY_LIABILITIES,
        TARGET.E_DATA_DESC,
        TARGET.REMARKS,
        TARGET.CHECK_FLAG,
        TARGET.CHECK_DESC,
        TARGET.CHECK_ERR_TYPE,
        TARGET.NEXT_ACTION,
        TARGET.DATA_STATUS,
        TARGET.DATA_FLAG,
        TARGET.DATA_SOURCE,
        TARGET.DATA_VERSION,
        TARGET.DATA_REJ_DESC,
        TARGET.DATA_DEL_DESC,
        TARGET.DATA_CRT_USER,
        TARGET.DATA_CRT_DATE,
        TARGET.DATA_CRT_TIME,
        TARGET.DATA_CHG_USER,
        TARGET.DATA_CHG_DATE,
        TARGET.DATA_CHG_TIME,
        TARGET.DATA_APV_USER,
        TARGET.DATA_APV_DATE,
        TARGET.DATA_APV_TIME,
        TARGET.RSV1,
        TARGET.RSV2,
        TARGET.RSV3,
        TARGET.RSV4,
        TARGET.RSV5,
        TARGET.ODS_DATA_ID,
        TARGET.HIS_DATE,
        TARGET.HIS_TIME,
        TARGET.IS_RPT,
        TARGET.FB_STATUS,
        TARGET.RPT_FILE_NAME
    )
    VALUES
    (
        GET_DATA_ID(V_NOW_DATE),
        SOURCE.DATA_DATE,
        SOURCE.CORP_ID,
        SOURCE.ORG_ID,
        SOURCE.GROUP_ID,
        SOURCE.INQ_ORG_ID,
        SOURCE.INQ_GROUP_ID,
        SOURCE.B_INF_REC_TYPE,
        SOURCE.B_ENT_NAME,
        SOURCE.B_ENT_CERT_TYPE,
        SOURCE.B_ENT_CERT_NUM,
        SOURCE.B_RPT_DATE,
        SOURCE.B_SHEET_YEAR,
        SOURCE.B_SHEET_TYPE,
        SOURCE.B_SHEET_TYPE_DIVIDE,
        SOURCE.B_AUDIT_FIRM_NAME,
        SOURCE.B_AUDITOR_NAME,
        SOURCE.B_AUDIT_TIME,
        SOURCE.B_CIMOC,
        SOURCE.B_RPT_DATE_CODE,
        SOURCE.C_CURRENCY_FUNDS,
        SOURCE.C_SHORT_TERM_INVESTMENTS,
        SOURCE.C_NOTES_RECEIVABLE,
        SOURCE.C_DIVIDENDS_RECEIVABLE,
        SOURCE.C_INTEREST_RECEIVABLE,
        SOURCE.C_ACCOUNTS_RECEIVABLE,
        SOURCE.C_OTHER_RECEIVABLES,
        SOURCE.C_PREPAYMENTS,
        SOURCE.C_FUTURE_GUARANTEE,
        SOURCE.C_ALLOWANCE_RECEIVABLE,
        SOURCE.C_EXPORT_DRAWBACK_RECEIVABLE,
        SOURCE.C_INVENTORIES,
        SOURCE.C_RAW_MATERIALS,
        SOURCE.C_FINISHED_PRODUCTS,
        SOURCE.C_DEFERRED_EXPENSES,
        SOURCE.C_UNSETTLED_GL_CURRENT_ASSETS,
        SOURCE.C_LT_DI_FALLINGDUEINAYEAR,
        SOURCE.C_OTHER_CURRENT_ASSETS,
        SOURCE.C_TOTAL_CURRENT_ASSETS,
        SOURCE.C_LT_INVESTMENT,
        SOURCE.C_LT_EQUITYINVESTMENT,
        SOURCE.C_LT_SECURITIES_INVESTMENT,
        SOURCE.C_INC_PRICE_DIFFERENCE,
        SOURCE.C_TOTAL_LT_INVESTMENT,
        SOURCE.C_ORIGINAL_COST_FA,
        SOURCE.C_FA_ACC_DEPRECIATION,
        SOURCE.C_FA_NET_VALUE,
        SOURCE.C_PROVISION_IMPAIRMENT_FA,
        SOURCE.C_NET_VALUE_FA,
        SOURCE.C_FA_PENDING_DISPOSAL,
        SOURCE.C_CONSTRUCTION_MATERIALS,
        SOURCE.C_CONSTRUCTION_IN_PROGRESS,
        SOURCE.C_UNSETTLED_GL_ON_FA,
        SOURCE.C_TOTAL_FIXED_ASSETS,
        SOURCE.C_INTANGIBLE_ASSETS,
        SOURCE.C_LAND_USE_RIGHTS,
        SOURCE.C_DEFERRED_ASSETS,
        SOURCE.C_INCLUDING_FA_REPAIR,
        SOURCE.C_IMPROVEMENT_EXPENDITURE_FA,
        SOURCE.C_OTHER_LONG_TERM_ASSETS,
        SOURCE.C_AMONG_IT_SPE_APPR_RES_MAT,
        SOURCE.C_TOTAL_INTANGIBLE_OTHER_ASS,
        SOURCE.C_DEFERRED_ASSETS_DEBITS,
        SOURCE.C_TOTAL_ASSETS,
        SOURCE.C_SHORT_TERM_BORROWINGS,
        SOURCE.C_NOTES_PAYABLE,
        SOURCE.C_ACCOUNTS_PAYABLE,
        SOURCE.C_RECEIPTS_IN_ADVANCE,
        SOURCE.C_WAGES_SALARIES_PAYABLES,
        SOURCE.C_EMPLOYEE_BENEFITS,
        SOURCE.C_INCOME_PAYABLE,
        SOURCE.C_TAXES_PAYABLE,
        SOURCE.C_OTHER_PAYABLE_GOVERNMENT,
        SOURCE.C_OTHER_PAYABLE,
        SOURCE.C_PROVISION_FOR_EXPENSES,
        SOURCE.C_PROVISIONS,
        SOURCE.C_LT_LIABILITIES_DUE_ONEYEAR,
        SOURCE.C_OTHER_CURRENT_LIABILITIES,
        SOURCE.C_TOTAL_CURRENT_LIABILITIES,
        SOURCE.C_LT_BORROWINGS,
        SOURCE.C_BONDS_PAYABLE,
        SOURCE.C_LONG_TERM_PAYABLES,
        SOURCE.C_GRANTS_PAYABLE,
        SOURCE.C_OTHER_LT_LIABILITIES,
        SOURCE.C_SPECIAL_RESERVE_FUND,
        SOURCE.C_TOTAL_LT_LIABILITIES,
        SOURCE.C_DEFERRED_TAXATION_CREDIT,
        SOURCE.C_TOTAL_LIABILITIES,
        SOURCE.C_MINORITY_INTEREST,
        SOURCE.C_PAID_IN_CAPITAL,
        SOURCE.C_NATIONAL_CAPITAL,
        SOURCE.C_COLLECTIVE_CAPITAL,
        SOURCE.C_LEGAL_PERSONS_CAPITAL,
        SOURCE.C_STATE_OWNED_LP_CAPITAL,
        SOURCE.C_COLLECTIVE_LP_CAPITAL,
        SOURCE.C_PERSONAL_CAPITAL,
        SOURCE.C_FOREIGN_BUS_CAPITAL,
        SOURCE.C_CAPITALR_RSERVE,
        SOURCE.C_SURPLUS_RESERVE,
        SOURCE.C_STATUTORY_SURPLUS_RESERVE,
        SOURCE.C_PUBLIC_WELFARE_FUND,
        SOURCE.C_SUPPLER_CURRENT_CAPITAL,
        SOURCE.C_UNAFFIRMED_INVESTMENT_LOSS,
        SOURCE.C_UNAPPROPRIATED_PROFIT,
        SOURCE.C_DT_FC_FINANCIAL_STA,
        SOURCE.C_TOTAL_EQUITY,
        SOURCE.C_TOTAL_EQUITY_LIABILITIES,
        SOURCE.D_CURRENCY_FUNDS,
        SOURCE.D_FINANCIAL_ASS_HELD_TRADING,
        SOURCE.D_NOTES_RECEIVABLE,
        SOURCE.D_ACCOUNTS_RECEIVABLE,
        SOURCE.D_PREPAYMENTS,
        SOURCE.D_INTEREST_RECEIVABLE,
        SOURCE.D_DIVIDENDS_RECEIVABLE,
        SOURCE.D_OTHER_RECEIVABLES,
        SOURCE.D_INVENTORIES,
        SOURCE.D_CURRENT_PORTION_NCA,
        SOURCE.D_OTHER_CURRENT_ASSETS,
        SOURCE.D_TOTAL_CURRENT_ASSETS,
        SOURCE.D_FINANCIAL_ASS_AVAILABLE_SALE,
        SOURCE.D_HELD_MATURITY_INVESTMENTS,
        SOURCE.D_LONG_TERM_EQUITY_INVESTMENT,
        SOURCE.D_LONG_TERM_RECEIVABLES,
        SOURCE.D_INVESTMENT_PROPERTIES,
        SOURCE.D_FIXED_ASSETS,
        SOURCE.D_NET_VALUE_OF_FIXE_ASSETS,
        SOURCE.D_CONSTRUCTION_IN_PROGRESS,
        SOURCE.D_CONSTRUCTION_MATERIALS,
        SOURCE.D_FIXED_ASS_PENDING_DISPOSAL,
        SOURCE.D_NON_CURRENT_BIOLOGICAL_ASS,
        SOURCE.D_OIL_AND_GAS_ASSETS,
        SOURCE.D_INTANGIBLE_ASSETS,
        SOURCE.D_LAND_USE_RIGHTS,
        SOURCE.D_DEVELOPMENT_DISBURSEMENTS,
        SOURCE.D_GOODWILL,
        SOURCE.D_LONG_TERM_DEFERRED_EXPENSES,
        SOURCE.D_DEFERRED_TAX_ASSETS,
        SOURCE.D_OTHER_NON_CURRENT_ASSETS,
        SOURCE.D_TOTAL_NON_CURRENT_ASSETS,
        SOURCE.D_TOTAL_ASSETS,
        SOURCE.D_SHORT_TERM_BORROWINGS,
        SOURCE.D_FINANCIAL_LIABILITIES_HFT,
        SOURCE.D_NOTES_PAYABLE,
        SOURCE.D_ACCOUNTS_PAYABLE,
        SOURCE.D_RECEIPTS_IN_ADVANCE,
        SOURCE.D_INTEREST_PAYABLE,
        SOURCE.D_EMPLOYEE_BENEFITS_PAYABLE,
        SOURCE.D_TAXES_PAYABLE,
        SOURCE.D_DIVIDENDS_PAYABLE,
        SOURCE.D_OTHER_PAYABLE,
        SOURCE.D_CURRENT_PORTION_LIABILITIES,
        SOURCE.D_OTHER_CURRENT_LIABILITIES,
        SOURCE.D_TOTAL_CURRENT_LIABILITIES,
        SOURCE.D_LONG_TERM_BORROWINGSORROWING,
        SOURCE.D_BONDS_PAYABLE,
        SOURCE.D_LONG_TERM_PAYABLES,
        SOURCE.D_GRANTS_PAYABLE,
        SOURCE.D_PROVISIONS,
        SOURCE.D_DEFERRED_TAX_LIABILITIES,
        SOURCE.D_OTHER_NON_CURRENT_LIABILITIE,
        SOURCE.D_TOTAL_NON_CURRENT_LIABILITIE,
        SOURCE.D_TOTAL_LIABILITIES,
        SOURCE.D_PAID_IN_CAPITAL_SHARE_CAPITA,
        SOURCE.D_CAPITALR_RSERVE,
        SOURCE.D_LESS_TREASURY_STOCKS,
        SOURCE.D_SURPLUS_RESERVE,
        SOURCE.D_UNAPPROPRIATED_PROFIT,
        SOURCE.D_TOTAL_EQUITY,
        SOURCE.D_TOTAL_EQUITY_LIABILITIES,
        SOURCE.E_DATA_DESC,
        SOURCE.REMARKS,
        SOURCE.CHECK_FLAG,
        SOURCE.CHECK_DESC,
        SOURCE.CHECK_ERR_TYPE,
        SOURCE.NEXT_ACTION,
        '23',
        SOURCE.DATA_FLAG,
        SOURCE.DATA_SOURCE,
        SOURCE.DATA_VERSION,
        SOURCE.DATA_REJ_DESC,
        SOURCE.DATA_DEL_DESC,
        SOURCE.DATA_CRT_USER,
        SOURCE.DATA_CRT_DATE,
        SOURCE.DATA_CRT_TIME,
        SOURCE.DATA_CHG_USER,
        SOURCE.DATA_CHG_DATE,
        SOURCE.DATA_CHG_TIME,
        SOURCE.DATA_APV_USER,
        SOURCE.DATA_APV_DATE,
        SOURCE.DATA_APV_TIME,
        SOURCE.RSV1,
        SOURCE.RSV2,
        SOURCE.RSV3,
        SOURCE.RSV4,
        SOURCE.RSV5,
        SOURCE.DATA_ID,
        V_NOW_DATE,
        V_NOW_TIME,
        SOURCE.IS_RPT,
        SOURCE.FB_STATUS,
        SOURCE.RPT_FILE_NAME
    );
  COMMIT;

EXCEPTION
  WHEN OTHERS THEN
    ERRCODE := SQLCODE;
    ERRMSG  := SUBSTR(SQLERRM, 1, 200);
    ROLLBACK;
    RETURN;
END;
/

prompt
prompt Creating procedure SYNC_PM_TO_HIS_620
prompt =====================================
prompt
CREATE OR REPLACE PROCEDURE "SYNC_PM_TO_HIS_620"(ERRCODE OUT VARCHAR,
                                                 ERRMSG  OUT VARCHAR) AS
  V_NOW_DATE CHAR(8);
  V_NOW_TIME CHAR(14);
BEGIN
  SELECT TO_CHAR(SYSDATE, 'YYYYMMDD') INTO V_NOW_DATE FROM DUAL;
  SELECT TO_CHAR(SYSDATE, 'YYYYMMDDHH24MISS') INTO V_NOW_TIME FROM DUAL;

  DELETE FROM MBT_620_HIS
   WHERE HIS_DATE = V_NOW_DATE
     and DATA_STATUS = '23';
  COMMIT;
  --²åÈëÖ÷±í
  MERGE INTO MBT_620_HIS TARGET
  USING (SELECT M.DATA_ID,
                M.DATA_DATE,
                M.CORP_ID,
                M.ORG_ID,
                M.GROUP_ID,
                M.INQ_ORG_ID,
                M.INQ_GROUP_ID,
                M.B_INF_REC_TYPE,
                M.B_ENT_NAME,
                M.B_ENT_CERT_TYPE,
                M.B_ENT_CERT_NUM,
                M.B_RPT_DATE,
                M.B_SHEET_YEAR,
                M.B_SHEET_TYPE,
                M.B_SHEET_TYPE_DIVIDE,
                M.B_AUDIT_FIRM_NAME,
                M.B_AUDITOR_NAME,
                M.B_AUDIT_TIME,
                M.B_CIMOC,
                M.B_RPT_DATE_CODE,
                M.C_MAIN_REVENUEF_REVENUE,
                M.C_SALES_INCOME_E_GOODS_PRODUCT,
                M.C_SALES_INCOME_I_GOODS_PRODUCT,
                M.C_DISCOUNT_ALLOWANCE,
                M.C_NET_AMOUNT_INCOME_MAIN_BUSI,
                M.C_MAIN_OPERATING_COST,
                M.C_SALES_INCOME_E_PRODUCTS,
                M.C_PRINCIPLE_B_TAX_EXTRA_CHARGE,
                M.C_OPERATION_EXPENSE,
                M.C_OTHERS_OPERATING_COST,
                M.C_DEFERRED_INCOME,
                M.C_INCOME_SALES_AGENCY,
                M.C_OTHER_OPERATING_INCOME,
                M.C_PRINCIPLE_BUSINESS_PROFIT,
                M.C_OTHER_BUSINESS_PROFIT,
                M.C_SELLING_EXPENSES,
                M.C_GENERAL_ADMIN_EXPENSES,
                M.C_FINANCIAL_EXPENSES,
                M.C_OTHERS_EXPENSES,
                M.C_OPERATING_PROFITS,
                M.C_INVESTMENT_INCOME,
                M.C_FUTURES_INCOME,
                M.C_ALLOWANCE_INCOME,
                M.C_ALLOWANCE_INCOME_B_ALLOWANCE,
                M.C_NON_OPERATING_INCOME,
                M.C_NET_GAIN_DISPOSAL_FIXED_ASS,
                M.C_INCOME_NON_CURRENCY_TRADE,
                M.C_INCOME_SALES_INTANGIBLE_ASS,
                M.C_INCOME_FROM_PENALTY,
                M.C_OTHERS_INCOME,
                M.C_CALCULATING_CONTENT_SALARY_B,
                M.C_NON_OPERATING_EXPENSES,
                M.C_LOSS_DISPOSAL_FIXED_ASSETS,
                M.C_EXCHANGE_NON_MONETARY_ASS_L,
                M.C_LOSS_LAWSUITS,
                M.C_PAYMENT_FOR_DONATION,
                M.C_OTHER_PAYMENTS,
                M.C_BALANCE_OF_CONTENTSALARY,
                M.C_TOTAL_PROFIT,
                M.C_INCOMETAX,
                M.C_IMPARIMENT_LOSS,
                M.C_UNREALIZED_INVESTMENT_LOSSES,
                M.C_NET_PROFIT,
                M.C_PROFIT_DISTRIBUTION_B_PERIOD,
                M.C_COMPENSATION_SURPLUS_RES,
                M.C_OTHER_ADJUSTMENT_FACTORS,
                M.C_PROFIT_AVAILABLE_DISTRIBUTI,
                M.C_PROFIT_RESERVED_A_SINGLEIT,
                M.C_SUPPLEMENTARY_CURRENT_CAPIT,
                M.C_APPR_STATUTORY_SURPLUS_RES,
                M.C_APPR_STATUTORY_WELFAREFUND,
                M.C_APPR_STAFF_INC_WELFARE_FUND,
                M.C_APPR_RESERVE_FUND,
                M.C_APPR_ENTERPRISE_EXP_FUND,
                M.C_PRO_CAP_RETURN_INVESTMENT,
                M.C_OTHERS,
                M.C_PROFIT_AVAILABLE_OWNERS_DIST,
                M.C_PREFERRED_STOCK_DIVIDEND_PAY,
                M.C_WITHDRAWAL_OTHER_COMM_ACC_FU,
                M.C_PAYABLE_DIVIDENDS_COMMON_STO,
                M.C_TRANSFER_ORDINARY_SHARES_DP,
                M.C_OTHERS_OWNERS,
                M.C_UNAPPROPRIATED_PROFIT,
                M.C_LOSS_COMPENSATED_BEFORE_TAX,
                M.D_REVENUE_OF_SALES,
                M.D_COST_OF_SALES,
                M.D_BUSINESS_OTHER_TAXES,
                M.D_SELLING_EXPENSES,
                M.D_GENERAL_ADMIN_EXPENSES,
                M.D_FINANCIAL_EXPENSE,
                M.D_IMPAIRMENT_LOSS_OF_ASSETS,
                M.D_PROFIT_LOSS_ARISING_FAIR_VAL,
                M.D_INVESTMENT_INCOME,
                M.D_INVESTMENT_INCOME_ENTERPRISE,
                M.D_OPERATING_PROFITS,
                M.D_NON_OPERATING_INCOME,
                M.D_NON_OPERATING_EXPENSES,
                M.D_NON_CURRENT_ASSETS,
                M.D_PROFIT_BEFORE_TAX,
                M.D_INCOME_TAX_EXPENSE,
                M.D_NET_PROFIT,
                M.D_BASIC_EARNINGS_PER_SHARE,
                M.D_DILUTED_EARNINGS_PER_SHARE,
                M.E_DATA_DESC,
                M.REMARKS,
                M.CHECK_FLAG,
                M.CHECK_DESC,
                M.CHECK_ERR_TYPE,
                M.NEXT_ACTION,
                M.DATA_STATUS,
                M.DATA_FLAG,
                M.DATA_SOURCE,
                M.DATA_VERSION,
                M.DATA_REJ_DESC,
                M.DATA_DEL_DESC,
                M.DATA_CRT_USER,
                M.DATA_CRT_DATE,
                M.DATA_CRT_TIME,
                M.DATA_CHG_USER,
                M.DATA_CHG_DATE,
                M.DATA_CHG_TIME,
                M.DATA_APV_USER,
                M.DATA_APV_DATE,
                M.DATA_APV_TIME,
                M.RSV1,
                M.RSV2,
                M.RSV3,
                M.RSV4,
                M.RSV5,
                M.FB_STATUS,
                M.RPT_FILE_NAME,
                M.IS_RPT

           FROM MBT_620 M
          WHERE M.DATA_STATUS = '21'
            AND M.B_RPT_DATE <= V_NOW_DATE
            AND (SELECT COUNT(1) AS CNT
                   FROM MBT_620_HIS N, MBT_620_RPT R
                  WHERE R.ODS_DATA_ID = N.DATA_ID
                    AND N.ODS_DATA_ID = M.DATA_ID
                    AND N.HIS_DATE = V_NOW_DATE
                    AND R.RPT_DATE = V_NOW_DATE
                    AND R.DATA_STATUS != '24') < 1) SOURCE
  ON (TARGET.DATA_ID = SOURCE.DATA_ID)
  WHEN NOT MATCHED THEN
   INSERT
    (
        TARGET.DATA_ID,
TARGET.DATA_DATE,
TARGET.CORP_ID,
TARGET.ORG_ID,
TARGET.GROUP_ID,
TARGET.INQ_ORG_ID,
TARGET.INQ_GROUP_ID,
TARGET.B_INF_REC_TYPE,
TARGET.B_ENT_NAME,
TARGET.B_ENT_CERT_TYPE,
TARGET.B_ENT_CERT_NUM,
TARGET.B_RPT_DATE,
TARGET.B_SHEET_YEAR,
TARGET.B_SHEET_TYPE,
TARGET.B_SHEET_TYPE_DIVIDE,
TARGET.B_AUDIT_FIRM_NAME,
TARGET.B_AUDITOR_NAME,
TARGET.B_AUDIT_TIME,
TARGET.B_CIMOC,
TARGET.B_RPT_DATE_CODE,
TARGET.C_MAIN_REVENUEF_REVENUE,
TARGET.C_SALES_INCOME_E_GOODS_PRODUCT,
TARGET.C_SALES_INCOME_I_GOODS_PRODUCT,
TARGET.C_DISCOUNT_ALLOWANCE,
TARGET.C_NET_AMOUNT_INCOME_MAIN_BUSI,
TARGET.C_MAIN_OPERATING_COST,
TARGET.C_SALES_INCOME_E_PRODUCTS,
TARGET.C_PRINCIPLE_B_TAX_EXTRA_CHARGE,
TARGET.C_OPERATION_EXPENSE,
TARGET.C_OTHERS_OPERATING_COST,
TARGET.C_DEFERRED_INCOME,
TARGET.C_INCOME_SALES_AGENCY,
TARGET.C_OTHER_OPERATING_INCOME,
TARGET.C_PRINCIPLE_BUSINESS_PROFIT,
TARGET.C_OTHER_BUSINESS_PROFIT,
TARGET.C_SELLING_EXPENSES,
TARGET.C_GENERAL_ADMIN_EXPENSES,
TARGET.C_FINANCIAL_EXPENSES,
TARGET.C_OTHERS_EXPENSES,
TARGET.C_OPERATING_PROFITS,
TARGET.C_INVESTMENT_INCOME,
TARGET.C_FUTURES_INCOME,
TARGET.C_ALLOWANCE_INCOME,
TARGET.C_ALLOWANCE_INCOME_B_ALLOWANCE,
TARGET.C_NON_OPERATING_INCOME,
TARGET.C_NET_GAIN_DISPOSAL_FIXED_ASS,
TARGET.C_INCOME_NON_CURRENCY_TRADE,
TARGET.C_INCOME_SALES_INTANGIBLE_ASS,
TARGET.C_INCOME_FROM_PENALTY,
TARGET.C_OTHERS_INCOME,
TARGET.C_CALCULATING_CONTENT_SALARY_B,
TARGET.C_NON_OPERATING_EXPENSES,
TARGET.C_LOSS_DISPOSAL_FIXED_ASSETS,
TARGET.C_EXCHANGE_NON_MONETARY_ASS_L,
TARGET.C_LOSS_LAWSUITS,
TARGET.C_PAYMENT_FOR_DONATION,
TARGET.C_OTHER_PAYMENTS,
TARGET.C_BALANCE_OF_CONTENTSALARY,
TARGET.C_TOTAL_PROFIT,
TARGET.C_INCOMETAX,
TARGET.C_IMPARIMENT_LOSS,
TARGET.C_UNREALIZED_INVESTMENT_LOSSES,
TARGET.C_NET_PROFIT,
TARGET.C_PROFIT_DISTRIBUTION_B_PERIOD,
TARGET.C_COMPENSATION_SURPLUS_RES,
TARGET.C_OTHER_ADJUSTMENT_FACTORS,
TARGET.C_PROFIT_AVAILABLE_DISTRIBUTI,
TARGET.C_PROFIT_RESERVED_A_SINGLEIT,
TARGET.C_SUPPLEMENTARY_CURRENT_CAPIT,
TARGET.C_APPR_STATUTORY_SURPLUS_RES,
TARGET.C_APPR_STATUTORY_WELFAREFUND,
TARGET.C_APPR_STAFF_INC_WELFARE_FUND,
TARGET.C_APPR_RESERVE_FUND,
TARGET.C_APPR_ENTERPRISE_EXP_FUND,
TARGET.C_PRO_CAP_RETURN_INVESTMENT,
TARGET.C_OTHERS,
TARGET.C_PROFIT_AVAILABLE_OWNERS_DIST,
TARGET.C_PREFERRED_STOCK_DIVIDEND_PAY,
TARGET.C_WITHDRAWAL_OTHER_COMM_ACC_FU,
TARGET.C_PAYABLE_DIVIDENDS_COMMON_STO,
TARGET.C_TRANSFER_ORDINARY_SHARES_DP,
TARGET.C_OTHERS_OWNERS,
TARGET.C_UNAPPROPRIATED_PROFIT,
TARGET.C_LOSS_COMPENSATED_BEFORE_TAX,
TARGET.D_REVENUE_OF_SALES,
TARGET.D_COST_OF_SALES,
TARGET.D_BUSINESS_OTHER_TAXES,
TARGET.D_SELLING_EXPENSES,
TARGET.D_GENERAL_ADMIN_EXPENSES,
TARGET.D_FINANCIAL_EXPENSE,
TARGET.D_IMPAIRMENT_LOSS_OF_ASSETS,
TARGET.D_PROFIT_LOSS_ARISING_FAIR_VAL,
TARGET.D_INVESTMENT_INCOME,
TARGET.D_INVESTMENT_INCOME_ENTERPRISE,
TARGET.D_OPERATING_PROFITS,
TARGET.D_NON_OPERATING_INCOME,
TARGET.D_NON_OPERATING_EXPENSES,
TARGET.D_NON_CURRENT_ASSETS,
TARGET.D_PROFIT_BEFORE_TAX,
TARGET.D_INCOME_TAX_EXPENSE,
TARGET.D_NET_PROFIT,
TARGET.D_BASIC_EARNINGS_PER_SHARE,
TARGET.D_DILUTED_EARNINGS_PER_SHARE,
TARGET.E_DATA_DESC,
TARGET.REMARKS,
TARGET.CHECK_FLAG,
TARGET.CHECK_DESC,
TARGET.CHECK_ERR_TYPE,
TARGET.NEXT_ACTION,
TARGET.DATA_STATUS,
TARGET.DATA_FLAG,
TARGET.DATA_SOURCE,
TARGET.DATA_VERSION,
TARGET.DATA_REJ_DESC,
TARGET.DATA_DEL_DESC,
TARGET.DATA_CRT_USER,
TARGET.DATA_CRT_DATE,
TARGET.DATA_CRT_TIME,
TARGET.DATA_CHG_USER,
TARGET.DATA_CHG_DATE,
TARGET.DATA_CHG_TIME,
TARGET.DATA_APV_USER,
TARGET.DATA_APV_DATE,
TARGET.DATA_APV_TIME,
TARGET.RSV1,
TARGET.RSV2,
TARGET.RSV3,
TARGET.RSV4,
TARGET.RSV5,
TARGET.FB_STATUS,
TARGET.RPT_FILE_NAME,
        TARGET.ODS_DATA_ID,
        TARGET.HIS_DATE,
        TARGET.HIS_TIME,
        TARGET.IS_RPT

    )
    VALUES
    (
        GET_DATA_ID(V_NOW_DATE),
        SOURCE.DATA_DATE,
        SOURCE.CORP_ID,
        SOURCE.ORG_ID,
        SOURCE.GROUP_ID,
        SOURCE.INQ_ORG_ID,
        SOURCE.INQ_GROUP_ID,
        SOURCE.B_INF_REC_TYPE,
        SOURCE.B_ENT_NAME,
        SOURCE.B_ENT_CERT_TYPE,
        SOURCE.B_ENT_CERT_NUM,
        SOURCE.B_RPT_DATE,
        SOURCE.B_SHEET_YEAR,
        SOURCE.B_SHEET_TYPE,
        SOURCE.B_SHEET_TYPE_DIVIDE,
        SOURCE.B_AUDIT_FIRM_NAME,
        SOURCE.B_AUDITOR_NAME,
        SOURCE.B_AUDIT_TIME,
        SOURCE.B_CIMOC,
        SOURCE.B_RPT_DATE_CODE,
        SOURCE.C_MAIN_REVENUEF_REVENUE,
        SOURCE.C_SALES_INCOME_E_GOODS_PRODUCT,
        SOURCE.C_SALES_INCOME_I_GOODS_PRODUCT,
        SOURCE.C_DISCOUNT_ALLOWANCE,
        SOURCE.C_NET_AMOUNT_INCOME_MAIN_BUSI,
        SOURCE.C_MAIN_OPERATING_COST,
        SOURCE.C_SALES_INCOME_E_PRODUCTS,
        SOURCE.C_PRINCIPLE_B_TAX_EXTRA_CHARGE,
        SOURCE.C_OPERATION_EXPENSE,
        SOURCE.C_OTHERS_OPERATING_COST,
        SOURCE.C_DEFERRED_INCOME,
        SOURCE.C_INCOME_SALES_AGENCY,
        SOURCE.C_OTHER_OPERATING_INCOME,
        SOURCE.C_PRINCIPLE_BUSINESS_PROFIT,
        SOURCE.C_OTHER_BUSINESS_PROFIT,
        SOURCE.C_SELLING_EXPENSES,
        SOURCE.C_GENERAL_ADMIN_EXPENSES,
        SOURCE.C_FINANCIAL_EXPENSES,
        SOURCE.C_OTHERS_EXPENSES,
        SOURCE.C_OPERATING_PROFITS,
        SOURCE.C_INVESTMENT_INCOME,
        SOURCE.C_FUTURES_INCOME,
        SOURCE.C_ALLOWANCE_INCOME,
        SOURCE.C_ALLOWANCE_INCOME_B_ALLOWANCE,
        SOURCE.C_NON_OPERATING_INCOME,
        SOURCE.C_NET_GAIN_DISPOSAL_FIXED_ASS,
        SOURCE.C_INCOME_NON_CURRENCY_TRADE,
        SOURCE.C_INCOME_SALES_INTANGIBLE_ASS,
        SOURCE.C_INCOME_FROM_PENALTY,
        SOURCE.C_OTHERS_INCOME,
        SOURCE.C_CALCULATING_CONTENT_SALARY_B,
        SOURCE.C_NON_OPERATING_EXPENSES,
        SOURCE.C_LOSS_DISPOSAL_FIXED_ASSETS,
        SOURCE.C_EXCHANGE_NON_MONETARY_ASS_L,
        SOURCE.C_LOSS_LAWSUITS,
        SOURCE.C_PAYMENT_FOR_DONATION,
        SOURCE.C_OTHER_PAYMENTS,
        SOURCE.C_BALANCE_OF_CONTENTSALARY,
        SOURCE.C_TOTAL_PROFIT,
        SOURCE.C_INCOMETAX,
        SOURCE.C_IMPARIMENT_LOSS,
        SOURCE.C_UNREALIZED_INVESTMENT_LOSSES,
        SOURCE.C_NET_PROFIT,
        SOURCE.C_PROFIT_DISTRIBUTION_B_PERIOD,
        SOURCE.C_COMPENSATION_SURPLUS_RES,
        SOURCE.C_OTHER_ADJUSTMENT_FACTORS,
        SOURCE.C_PROFIT_AVAILABLE_DISTRIBUTI,
        SOURCE.C_PROFIT_RESERVED_A_SINGLEIT,
        SOURCE.C_SUPPLEMENTARY_CURRENT_CAPIT,
        SOURCE.C_APPR_STATUTORY_SURPLUS_RES,
        SOURCE.C_APPR_STATUTORY_WELFAREFUND,
        SOURCE.C_APPR_STAFF_INC_WELFARE_FUND,
        SOURCE.C_APPR_RESERVE_FUND,
        SOURCE.C_APPR_ENTERPRISE_EXP_FUND,
        SOURCE.C_PRO_CAP_RETURN_INVESTMENT,
        SOURCE.C_OTHERS,
        SOURCE.C_PROFIT_AVAILABLE_OWNERS_DIST,
        SOURCE.C_PREFERRED_STOCK_DIVIDEND_PAY,
        SOURCE.C_WITHDRAWAL_OTHER_COMM_ACC_FU,
        SOURCE.C_PAYABLE_DIVIDENDS_COMMON_STO,
        SOURCE.C_TRANSFER_ORDINARY_SHARES_DP,
        SOURCE.C_OTHERS_OWNERS,
        SOURCE.C_UNAPPROPRIATED_PROFIT,
        SOURCE.C_LOSS_COMPENSATED_BEFORE_TAX,
        SOURCE.D_REVENUE_OF_SALES,
        SOURCE.D_COST_OF_SALES,
        SOURCE.D_BUSINESS_OTHER_TAXES,
        SOURCE.D_SELLING_EXPENSES,
        SOURCE.D_GENERAL_ADMIN_EXPENSES,
        SOURCE.D_FINANCIAL_EXPENSE,
        SOURCE.D_IMPAIRMENT_LOSS_OF_ASSETS,
        SOURCE.D_PROFIT_LOSS_ARISING_FAIR_VAL,
        SOURCE.D_INVESTMENT_INCOME,
        SOURCE.D_INVESTMENT_INCOME_ENTERPRISE,
        SOURCE.D_OPERATING_PROFITS,
        SOURCE.D_NON_OPERATING_INCOME,
        SOURCE.D_NON_OPERATING_EXPENSES,
        SOURCE.D_NON_CURRENT_ASSETS,
        SOURCE.D_PROFIT_BEFORE_TAX,
        SOURCE.D_INCOME_TAX_EXPENSE,
        SOURCE.D_NET_PROFIT,
        SOURCE.D_BASIC_EARNINGS_PER_SHARE,
        SOURCE.D_DILUTED_EARNINGS_PER_SHARE,
        SOURCE.E_DATA_DESC,
        SOURCE.REMARKS,
        SOURCE.CHECK_FLAG,
        SOURCE.CHECK_DESC,
        SOURCE.CHECK_ERR_TYPE,
        SOURCE.NEXT_ACTION,
        '23',
        SOURCE.DATA_FLAG,
        SOURCE.DATA_SOURCE,
        SOURCE.DATA_VERSION,
        SOURCE.DATA_REJ_DESC,
        SOURCE.DATA_DEL_DESC,
        SOURCE.DATA_CRT_USER,
        SOURCE.DATA_CRT_DATE,
        SOURCE.DATA_CRT_TIME,
        SOURCE.DATA_CHG_USER,
        SOURCE.DATA_CHG_DATE,
        SOURCE.DATA_CHG_TIME,
        SOURCE.DATA_APV_USER,
        SOURCE.DATA_APV_DATE,
        SOURCE.DATA_APV_TIME,
        SOURCE.RSV1,
        SOURCE.RSV2,
        SOURCE.RSV3,
        SOURCE.RSV4,
        SOURCE.RSV5,
        SOURCE.FB_STATUS,
        SOURCE.RPT_FILE_NAME,
        SOURCE.DATA_ID,
        V_NOW_DATE,
        V_NOW_TIME,
       SOURCE.IS_RPT


    );
  COMMIT;

EXCEPTION
  WHEN OTHERS THEN
    ERRCODE := SQLCODE;
    ERRMSG  := SUBSTR(SQLERRM, 1, 200);
    ROLLBACK;
    RETURN;
END;
/

prompt
prompt Creating procedure SYNC_PM_TO_HIS_630
prompt =====================================
prompt
CREATE OR REPLACE PROCEDURE "SYNC_PM_TO_HIS_630"(ERRCODE OUT VARCHAR,
                                                 ERRMSG  OUT VARCHAR) AS
  V_NOW_DATE CHAR(8);
  V_NOW_TIME CHAR(14);
BEGIN
  SELECT TO_CHAR(SYSDATE, 'YYYYMMDD') INTO V_NOW_DATE FROM DUAL;
  SELECT TO_CHAR(SYSDATE, 'YYYYMMDDHH24MISS') INTO V_NOW_TIME FROM DUAL;

  DELETE FROM MBT_630_HIS
   WHERE HIS_DATE = V_NOW_DATE
     and DATA_STATUS = '23';
  COMMIT;
  --²åÈëÖ÷±í
  MERGE INTO MBT_630_HIS TARGET
  USING (SELECT         M.DATA_ID,
        M.DATA_DATE,
        M.CORP_ID,
        M.ORG_ID,
        M.GROUP_ID,
        M.INQ_ORG_ID,
        M.INQ_GROUP_ID,
        M.B_INF_REC_TYPE,
        M.B_ENT_NAME,
        M.B_ENT_CERT_TYPE,
        M.B_ENT_CERT_NUM,
        M.B_RPT_DATE,
        M.B_SHEET_YEAR,
        M.B_SHEET_TYPE,
        M.B_SHEET_TYPE_DIVIDE,
        M.B_AUDIT_FIRM_NAME,
        M.B_AUDITOR_NAME,
        M.B_AUDIT_TIME,
        M.B_CIMOC,
        M.B_RPT_DATE_CODE,
        M.C_CASH_REC_SALES_GOODS_REN_SER,
        M.C_TAX_REFUNDS,
        M.C_OTHER_CASH_REC_REL_OPERA_ACT,
        M.C_TOTAL_CASH_INFLOWS_OPERA_ACT,
        M.C_CASH_PAID_GOODS_SERVICES,
        M.C_CASH_PAID_BEHALF_EMPLOYEES,
        M.C_TOTAL_CASH_OUTFLOWS_OPERA_AC,
        M.C_NET_CASH_FLOWS_OPERAT_ACT,
        M.C_CASH_REC_RETURN_INVESTMENT,
        M.C_CASH_RECEIVED_ONVESTMENTS,
        M.C_NET_CASH_REC_D_F_A_I_A_O_LT,
        M.C_CASH_RECEIVED_REL_OTHER_ACT,
        M.C_TOTAL_CASH_INF_INVESTING_ACT,
        M.C_CASH_P_A_F_ASS_I_ASS_OLT_ASS,
        M.C_CASH_PAYMENTS_INVESTMENTS,
        M.C_CASH_PAYMENTS_RELATED_O_ACT,
        M.C_TOTAL_CASH_OUTFLOWS_INV_ACT,
        M.C_NET_CASH_FLOWS_INVESTING_ACT,
        M.C_CASH_RECEIVED_FROM_INVESTORS,
        M.C_CASH_FROM_BORROWINGS,
        M.C_OTHER_CASH_REC_REL_FIN_ACT,
        M.C_TOTAL_CASH_INF_FINANCING_ACT,
        M.C_CASH_REPAYMENTS_FOR_DEBTS,
        M.C_CASH_PAYMENTS_D_D_PRO_I_EXP,
        M.C_CASH_PAYMENTS_REL_O_FIN_AC,
        M.C_TOTAL_CASH_OUTFLOWS_FIN_AC,
        M.C_NET_CASH_FLOWS_FINANCING_AC,
        M.C_EFFECT_EX_RATE_CHANGES_CASH,
        M.C_NET_INC_CASH_CASH_EQUIVALENT,
        M.C_NET_PROFIT,
        M.C_PROVISION_FOR_ASSETS,
        M.C_DEPRECIATION_FIXED_ASSETS,
        M.C_AMORTISATION_INTANGIBLE_ASS,
        M.C_LONG_TERM_DEFERRED_EXP_AMOR,
        M.C_DECREASE_DEFFERED_EXPENSES,
        M.C_ADDITION_ACCUED_EXPENSE,
        M.C_LOSSES_D_F_ASS_I_ASS_OLT_ASS,
        M.C_LOSSES_SCRAPPING_FIXED_ASS,
        M.C_FINANCE_EXPENSE,
        M.C_LOSSES_ARSING_INVESTMENT,
        M.C_DEFERRED_TAX_CREDIT,
        M.C_DECREASE_IN_INVENTORIES,
        M.C_DECREASE_OPERATING_RECEIVABL,
        M.C_INCREASE_OPERATING_RECEIVABL,
        M.C_OTHERS,
        M.C_NET_CASH_FLOWS_OPERA_ACT_MI,
        M.C_DEBTS_TRANSFER_TO_CAPITAL,
        M.C_ONE_YEAR_DUE_CONVERTIBLE_BON,
        M.C_FINANCING_RENT_THE_FIXED_ASS,
        M.C_NON_CASH_OTHERS,
        M.C_CASH_AT_THE_END_OF_PERIOD,
        M.C_CASH_AT_THE_BEGINNING_PERIOD,
        M.C_CASH_EQUIVALENTS_END_PERIOD,
        M.C_CASH_RQUIVALENTS_BEGIN_PERIO,
        M.C_NET_INCREASE_CASH_CASH_EQU_M,
        M.D_CASH_REC_SAL_GOO_REN_SERVICE,
        M.D_TAX_REFUNDS,
        M.D_OTHER_CASH_REC_REL_OPERA_ACT,
        M.D_TOTAL_CASH_INFLOWS_OPERAT_AC,
        M.D_CASH_PAID_FOR_GOODS_SERVICES,
        M.D_CASH_PAID_BEHALF_OF_EMPLOYEE,
        M.D_PAYMENTS_OF_ALL_TYPES_TAXES,
        M.D_OTHER_CASH_PAYMENTS_OPERA_AC,
        M.D_TOTAL_CASH_OUTFLOWS_OPERA_AC,
        M.D_NET_CASH_FLOWS_OPERATING_ACT,
        M.D_CASH_REC_RETURN_INVESTMENT,
        M.D_CASH_REC_ONVESTMENTS,
        M.D_NET_CASH_R_DFASS_IASS_OLTASS,
        M.D_NET_CASH_INF_DIS_SUB_O_B_ENT,
        M.D_CASH_REC_REL_OTHER_INVEST_AC,
        M.D_TOTAL_CASH_INFLOWS_INVEST_AC,
        M.D_CASH_PAID_ACQ_FASS_IASS_ASS,
        M.D_CASH_PAYMENTS_INVESTMENTS,
        M.D_NET_CASH_OUTF_PRO_SUB_OBUNIT,
        M.D_CASH_PAYMENTS_REL_O_I_ACT,
        M.D_SUB_TOTAL_CASH_OUTFLOWS,
        M.D_NET_CASH_FLOWS_INVEST_ACT,
        M.D_CASH_RECEIVED_INVESTORS,
        M.D_CASH_FROM_BORROWINGS,
        M.D_OTHER_CASH_REC_REL_FINA_ACT,
        M.D_TOTAL_CASH_INFLOWS_FINA_ACT,
        M.D_CASH_REPAYMENTS_FOR_DEBTS,
        M.D_CASH_PAYMENTS_D_DI_P_INT_EXP,
        M.D_CASH_PAYMENTS_REL_O_F_ACT,
        M.D_TOTAL_CASH_OUTFLOWS_FINA_ACT,
        M.D_NET_CASH_FLOWS_FINANCING_ACT,
        M.D_EFFECT_EXC_RATE_CHANGES_CASH,
        M.D_NET_INC_CASH_CASH_EQUIVALENT,
        M.D_INITIAL_CASH_CASH_EQU_BALANC,
        M.D_THE_FINAL_CASH_EQU_BALANCE,
        M.D_NET_PROFIT,
        M.D_PROVISION_ASSET_IMPAIRMENT,
        M.D_DEPRECIATION_FIXED_ASSETS,
        M.D_AMORTISATION_INTANGIBLE_ASS,
        M.D_AMORTISATION_LT_DEFFERED_EXP,
        M.D_DECREASE_DEFFERED_EXPENSES,
        M.D_ADDITION_OF_ACCUED_EXPENSE,
        M.D_LOSSES_DISP_FASS_IASS_OLTASS,
        M.D_LOSSES_SCRAPPING_FIXED_ASS,
        M.D_PROFIT_LOSS_CHANGES_FAIR_VAL,
        M.D_FINANCE_EXPENSE,
        M.D_LOSSES_ARSING_INVESTMENT,
        M.D_DEFERRED_INCOME_TAX_ASSETS,
        M.D_DEFERRED_INCOME_TAX_LIABILIT,
        M.D_DECREASE_IN_INVENTORIES,
        M.D_DECREASE_OPERATING_RECEIVABL,
        M.D_INCREASE_OPERATING_RECEIVABL,
        M.D_OTHERS,
        M.D_NET_CASH_FLOWS_OPERAT_ACT_MI,
        M.D_DEBTS_TRANSFER_TO_CAPITAL,
        M.D_ONE_YEAR_DUE_CONVER_BONDS,
        M.D_FINANCING_RENT_FIXED_ASSET,
        M.D_NON_CASH_OTHERS,
        M.D_CASH_AT_THE_END_OF_PERIOD,
        M.D_CASH_AT_THE_BEGINNING_PERIOD,
        M.D_CASH_EQUIVALENTS_AT_THE_PERI,
        M.D_CASH_RQUIVALENTS_BEGIN_PERIO,
        M.D_NET_INCREASE_CASH_EQUIVAL_MI,
        M.E_DATA_DESC,
        M.REMARKS,
        M.CHECK_FLAG,
        M.CHECK_DESC,
        M.CHECK_ERR_TYPE,
        M.NEXT_ACTION,
        M.DATA_STATUS,
        M.DATA_FLAG,
        M.DATA_SOURCE,
        M.DATA_VERSION,
        M.DATA_REJ_DESC,
        M.DATA_DEL_DESC,
        M.DATA_CRT_USER,
        M.DATA_CRT_DATE,
        M.DATA_CRT_TIME,
        M.DATA_CHG_USER,
        M.DATA_CHG_DATE,
        M.DATA_CHG_TIME,
        M.DATA_APV_USER,
        M.DATA_APV_DATE,
        M.DATA_APV_TIME,
        M.RSV1,
        M.RSV2,
        M.RSV3,
        M.RSV4,
        M.RSV5,
        M.C_ONE_YEAR_DUE_CONVERTIBLE_BO,
        M.IS_RPT,
        M.C_PAYMENTS_OF_ALL_TYPES_TAXES,
        M.C_OTHER_CASH_PAYMENTS_OPERA_AC,
        M.FB_STATUS,
        M.RPT_FILE_NAME


           FROM MBT_630 M
          WHERE M.DATA_STATUS = '21'
            AND M.B_RPT_DATE <= V_NOW_DATE
            AND (SELECT COUNT(1) AS CNT
                   FROM MBT_630_HIS N, MBT_630_RPT R
                  WHERE R.ODS_DATA_ID = N.DATA_ID
                    AND N.ODS_DATA_ID = M.DATA_ID
                    AND N.HIS_DATE = V_NOW_DATE
                    AND R.RPT_DATE = V_NOW_DATE
                    AND R.DATA_STATUS != '24') < 1) SOURCE
  ON (TARGET.DATA_ID = SOURCE.DATA_ID)
  WHEN NOT MATCHED THEN
   INSERT
    (        TARGET.DATA_ID,
        TARGET.DATA_DATE,
        TARGET.CORP_ID,
        TARGET.ORG_ID,
        TARGET.GROUP_ID,
        TARGET.INQ_ORG_ID,
        TARGET.INQ_GROUP_ID,
        TARGET.B_INF_REC_TYPE,
        TARGET.B_ENT_NAME,
        TARGET.B_ENT_CERT_TYPE,
        TARGET.B_ENT_CERT_NUM,
        TARGET.B_RPT_DATE,
        TARGET.B_SHEET_YEAR,
        TARGET.B_SHEET_TYPE,
        TARGET.B_SHEET_TYPE_DIVIDE,
        TARGET.B_AUDIT_FIRM_NAME,
        TARGET.B_AUDITOR_NAME,
        TARGET.B_AUDIT_TIME,
        TARGET.B_CIMOC,
        TARGET.B_RPT_DATE_CODE,
        TARGET.C_CASH_REC_SALES_GOODS_REN_SER,
        TARGET.C_TAX_REFUNDS,
        TARGET.C_OTHER_CASH_REC_REL_OPERA_ACT,
        TARGET.C_TOTAL_CASH_INFLOWS_OPERA_ACT,
        TARGET.C_CASH_PAID_GOODS_SERVICES,
        TARGET.C_CASH_PAID_BEHALF_EMPLOYEES,
        TARGET.C_TOTAL_CASH_OUTFLOWS_OPERA_AC,
        TARGET.C_NET_CASH_FLOWS_OPERAT_ACT,
        TARGET.C_CASH_REC_RETURN_INVESTMENT,
        TARGET.C_CASH_RECEIVED_ONVESTMENTS,
        TARGET.C_NET_CASH_REC_D_F_A_I_A_O_LT,
        TARGET.C_CASH_RECEIVED_REL_OTHER_ACT,
        TARGET.C_TOTAL_CASH_INF_INVESTING_ACT,
        TARGET.C_CASH_P_A_F_ASS_I_ASS_OLT_ASS,
        TARGET.C_CASH_PAYMENTS_INVESTMENTS,
        TARGET.C_CASH_PAYMENTS_RELATED_O_ACT,
        TARGET.C_TOTAL_CASH_OUTFLOWS_INV_ACT,
        TARGET.C_NET_CASH_FLOWS_INVESTING_ACT,
        TARGET.C_CASH_RECEIVED_FROM_INVESTORS,
        TARGET.C_CASH_FROM_BORROWINGS,
        TARGET.C_OTHER_CASH_REC_REL_FIN_ACT,
        TARGET.C_TOTAL_CASH_INF_FINANCING_ACT,
        TARGET.C_CASH_REPAYMENTS_FOR_DEBTS,
        TARGET.C_CASH_PAYMENTS_D_D_PRO_I_EXP,
        TARGET.C_CASH_PAYMENTS_REL_O_FIN_AC,
        TARGET.C_TOTAL_CASH_OUTFLOWS_FIN_AC,
        TARGET.C_NET_CASH_FLOWS_FINANCING_AC,
        TARGET.C_EFFECT_EX_RATE_CHANGES_CASH,
        TARGET.C_NET_INC_CASH_CASH_EQUIVALENT,
        TARGET.C_NET_PROFIT,
        TARGET.C_PROVISION_FOR_ASSETS,
        TARGET.C_DEPRECIATION_FIXED_ASSETS,
        TARGET.C_AMORTISATION_INTANGIBLE_ASS,
        TARGET.C_LONG_TERM_DEFERRED_EXP_AMOR,
        TARGET.C_DECREASE_DEFFERED_EXPENSES,
        TARGET.C_ADDITION_ACCUED_EXPENSE,
        TARGET.C_LOSSES_D_F_ASS_I_ASS_OLT_ASS,
        TARGET.C_LOSSES_SCRAPPING_FIXED_ASS,
        TARGET.C_FINANCE_EXPENSE,
        TARGET.C_LOSSES_ARSING_INVESTMENT,
        TARGET.C_DEFERRED_TAX_CREDIT,
        TARGET.C_DECREASE_IN_INVENTORIES,
        TARGET.C_DECREASE_OPERATING_RECEIVABL,
        TARGET.C_INCREASE_OPERATING_RECEIVABL,
        TARGET.C_OTHERS,
        TARGET.C_NET_CASH_FLOWS_OPERA_ACT_MI,
        TARGET.C_DEBTS_TRANSFER_TO_CAPITAL,
        TARGET.C_ONE_YEAR_DUE_CONVERTIBLE_BON,
        TARGET.C_FINANCING_RENT_THE_FIXED_ASS,
        TARGET.C_NON_CASH_OTHERS,
        TARGET.C_CASH_AT_THE_END_OF_PERIOD,
        TARGET.C_CASH_AT_THE_BEGINNING_PERIOD,
        TARGET.C_CASH_EQUIVALENTS_END_PERIOD,
        TARGET.C_CASH_RQUIVALENTS_BEGIN_PERIO,
        TARGET.C_NET_INCREASE_CASH_CASH_EQU_M,
        TARGET.D_CASH_REC_SAL_GOO_REN_SERVICE,
        TARGET.D_TAX_REFUNDS,
        TARGET.D_OTHER_CASH_REC_REL_OPERA_ACT,
        TARGET.D_TOTAL_CASH_INFLOWS_OPERAT_AC,
        TARGET.D_CASH_PAID_FOR_GOODS_SERVICES,
        TARGET.D_CASH_PAID_BEHALF_OF_EMPLOYEE,
        TARGET.D_PAYMENTS_OF_ALL_TYPES_TAXES,
        TARGET.D_OTHER_CASH_PAYMENTS_OPERA_AC,
        TARGET.D_TOTAL_CASH_OUTFLOWS_OPERA_AC,
        TARGET.D_NET_CASH_FLOWS_OPERATING_ACT,
        TARGET.D_CASH_REC_RETURN_INVESTMENT,
        TARGET.D_CASH_REC_ONVESTMENTS,
        TARGET.D_NET_CASH_R_DFASS_IASS_OLTASS,
        TARGET.D_NET_CASH_INF_DIS_SUB_O_B_ENT,
        TARGET.D_CASH_REC_REL_OTHER_INVEST_AC,
        TARGET.D_TOTAL_CASH_INFLOWS_INVEST_AC,
        TARGET.D_CASH_PAID_ACQ_FASS_IASS_ASS,
        TARGET.D_CASH_PAYMENTS_INVESTMENTS,
        TARGET.D_NET_CASH_OUTF_PRO_SUB_OBUNIT,
        TARGET.D_CASH_PAYMENTS_REL_O_I_ACT,
        TARGET.D_SUB_TOTAL_CASH_OUTFLOWS,
        TARGET.D_NET_CASH_FLOWS_INVEST_ACT,
        TARGET.D_CASH_RECEIVED_INVESTORS,
        TARGET.D_CASH_FROM_BORROWINGS,
        TARGET.D_OTHER_CASH_REC_REL_FINA_ACT,
        TARGET.D_TOTAL_CASH_INFLOWS_FINA_ACT,
        TARGET.D_CASH_REPAYMENTS_FOR_DEBTS,
        TARGET.D_CASH_PAYMENTS_D_DI_P_INT_EXP,
        TARGET.D_CASH_PAYMENTS_REL_O_F_ACT,
        TARGET.D_TOTAL_CASH_OUTFLOWS_FINA_ACT,
        TARGET.D_NET_CASH_FLOWS_FINANCING_ACT,
        TARGET.D_EFFECT_EXC_RATE_CHANGES_CASH,
        TARGET.D_NET_INC_CASH_CASH_EQUIVALENT,
        TARGET.D_INITIAL_CASH_CASH_EQU_BALANC,
        TARGET.D_THE_FINAL_CASH_EQU_BALANCE,
        TARGET.D_NET_PROFIT,
        TARGET.D_PROVISION_ASSET_IMPAIRMENT,
        TARGET.D_DEPRECIATION_FIXED_ASSETS,
        TARGET.D_AMORTISATION_INTANGIBLE_ASS,
        TARGET.D_AMORTISATION_LT_DEFFERED_EXP,
        TARGET.D_DECREASE_DEFFERED_EXPENSES,
        TARGET.D_ADDITION_OF_ACCUED_EXPENSE,
        TARGET.D_LOSSES_DISP_FASS_IASS_OLTASS,
        TARGET.D_LOSSES_SCRAPPING_FIXED_ASS,
        TARGET.D_PROFIT_LOSS_CHANGES_FAIR_VAL,
        TARGET.D_FINANCE_EXPENSE,
        TARGET.D_LOSSES_ARSING_INVESTMENT,
        TARGET.D_DEFERRED_INCOME_TAX_ASSETS,
        TARGET.D_DEFERRED_INCOME_TAX_LIABILIT,
        TARGET.D_DECREASE_IN_INVENTORIES,
        TARGET.D_DECREASE_OPERATING_RECEIVABL,
        TARGET.D_INCREASE_OPERATING_RECEIVABL,
        TARGET.D_OTHERS,
        TARGET.D_NET_CASH_FLOWS_OPERAT_ACT_MI,
        TARGET.D_DEBTS_TRANSFER_TO_CAPITAL,
        TARGET.D_ONE_YEAR_DUE_CONVER_BONDS,
        TARGET.D_FINANCING_RENT_FIXED_ASSET,
        TARGET.D_NON_CASH_OTHERS,
        TARGET.D_CASH_AT_THE_END_OF_PERIOD,
        TARGET.D_CASH_AT_THE_BEGINNING_PERIOD,
        TARGET.D_CASH_EQUIVALENTS_AT_THE_PERI,
        TARGET.D_CASH_RQUIVALENTS_BEGIN_PERIO,
        TARGET.D_NET_INCREASE_CASH_EQUIVAL_MI,
        TARGET.E_DATA_DESC,
        TARGET.REMARKS,
        TARGET.CHECK_FLAG,
        TARGET.CHECK_DESC,
        TARGET.CHECK_ERR_TYPE,
        TARGET.NEXT_ACTION,
        TARGET.DATA_STATUS,
        TARGET.DATA_FLAG,
        TARGET.DATA_SOURCE,
        TARGET.DATA_VERSION,
        TARGET.DATA_REJ_DESC,
        TARGET.DATA_DEL_DESC,
        TARGET.DATA_CRT_USER,
        TARGET.DATA_CRT_DATE,
        TARGET.DATA_CRT_TIME,
        TARGET.DATA_CHG_USER,
        TARGET.DATA_CHG_DATE,
        TARGET.DATA_CHG_TIME,
        TARGET.DATA_APV_USER,
        TARGET.DATA_APV_DATE,
        TARGET.DATA_APV_TIME,
        TARGET.RSV1,
        TARGET.RSV2,
        TARGET.RSV3,
        TARGET.RSV4,
        TARGET.RSV5,
        TARGET.C_ONE_YEAR_DUE_CONVERTIBLE_BO,
        TARGET.IS_RPT,
        TARGET.C_PAYMENTS_OF_ALL_TYPES_TAXES,
        TARGET.C_OTHER_CASH_PAYMENTS_OPERA_AC,
        TARGET.FB_STATUS,
        TARGET.RPT_FILE_NAME,
        TARGET.ODS_DATA_ID,
        TARGET.HIS_DATE,
        TARGET.HIS_TIME



    )
    VALUES
    (
        GET_DATA_ID(V_NOW_DATE),
        SOURCE.DATA_DATE,
        SOURCE.CORP_ID,
        SOURCE.ORG_ID,
        SOURCE.GROUP_ID,
        SOURCE.INQ_ORG_ID,
        SOURCE.INQ_GROUP_ID,
        SOURCE.B_INF_REC_TYPE,
        SOURCE.B_ENT_NAME,
        SOURCE.B_ENT_CERT_TYPE,
        SOURCE.B_ENT_CERT_NUM,
        SOURCE.B_RPT_DATE,
        SOURCE.B_SHEET_YEAR,
        SOURCE.B_SHEET_TYPE,
        SOURCE.B_SHEET_TYPE_DIVIDE,
        SOURCE.B_AUDIT_FIRM_NAME,
        SOURCE.B_AUDITOR_NAME,
        SOURCE.B_AUDIT_TIME,
        SOURCE.B_CIMOC,
        SOURCE.B_RPT_DATE_CODE,
        SOURCE.C_CASH_REC_SALES_GOODS_REN_SER,
        SOURCE.C_TAX_REFUNDS,
        SOURCE.C_OTHER_CASH_REC_REL_OPERA_ACT,
        SOURCE.C_TOTAL_CASH_INFLOWS_OPERA_ACT,
        SOURCE.C_CASH_PAID_GOODS_SERVICES,
        SOURCE.C_CASH_PAID_BEHALF_EMPLOYEES,
        SOURCE.C_TOTAL_CASH_OUTFLOWS_OPERA_AC,
        SOURCE.C_NET_CASH_FLOWS_OPERAT_ACT,
        SOURCE.C_CASH_REC_RETURN_INVESTMENT,
        SOURCE.C_CASH_RECEIVED_ONVESTMENTS,
        SOURCE.C_NET_CASH_REC_D_F_A_I_A_O_LT,
        SOURCE.C_CASH_RECEIVED_REL_OTHER_ACT,
        SOURCE.C_TOTAL_CASH_INF_INVESTING_ACT,
        SOURCE.C_CASH_P_A_F_ASS_I_ASS_OLT_ASS,
        SOURCE.C_CASH_PAYMENTS_INVESTMENTS,
        SOURCE.C_CASH_PAYMENTS_RELATED_O_ACT,
        SOURCE.C_TOTAL_CASH_OUTFLOWS_INV_ACT,
        SOURCE.C_NET_CASH_FLOWS_INVESTING_ACT,
        SOURCE.C_CASH_RECEIVED_FROM_INVESTORS,
        SOURCE.C_CASH_FROM_BORROWINGS,
        SOURCE.C_OTHER_CASH_REC_REL_FIN_ACT,
        SOURCE.C_TOTAL_CASH_INF_FINANCING_ACT,
        SOURCE.C_CASH_REPAYMENTS_FOR_DEBTS,
        SOURCE.C_CASH_PAYMENTS_D_D_PRO_I_EXP,
        SOURCE.C_CASH_PAYMENTS_REL_O_FIN_AC,
        SOURCE.C_TOTAL_CASH_OUTFLOWS_FIN_AC,
        SOURCE.C_NET_CASH_FLOWS_FINANCING_AC,
        SOURCE.C_EFFECT_EX_RATE_CHANGES_CASH,
        SOURCE.C_NET_INC_CASH_CASH_EQUIVALENT,
        SOURCE.C_NET_PROFIT,
        SOURCE.C_PROVISION_FOR_ASSETS,
        SOURCE.C_DEPRECIATION_FIXED_ASSETS,
        SOURCE.C_AMORTISATION_INTANGIBLE_ASS,
        SOURCE.C_LONG_TERM_DEFERRED_EXP_AMOR,
        SOURCE.C_DECREASE_DEFFERED_EXPENSES,
        SOURCE.C_ADDITION_ACCUED_EXPENSE,
        SOURCE.C_LOSSES_D_F_ASS_I_ASS_OLT_ASS,
        SOURCE.C_LOSSES_SCRAPPING_FIXED_ASS,
        SOURCE.C_FINANCE_EXPENSE,
        SOURCE.C_LOSSES_ARSING_INVESTMENT,
        SOURCE.C_DEFERRED_TAX_CREDIT,
        SOURCE.C_DECREASE_IN_INVENTORIES,
        SOURCE.C_DECREASE_OPERATING_RECEIVABL,
        SOURCE.C_INCREASE_OPERATING_RECEIVABL,
        SOURCE.C_OTHERS,
        SOURCE.C_NET_CASH_FLOWS_OPERA_ACT_MI,
        SOURCE.C_DEBTS_TRANSFER_TO_CAPITAL,
        SOURCE.C_ONE_YEAR_DUE_CONVERTIBLE_BON,
        SOURCE.C_FINANCING_RENT_THE_FIXED_ASS,
        SOURCE.C_NON_CASH_OTHERS,
        SOURCE.C_CASH_AT_THE_END_OF_PERIOD,
        SOURCE.C_CASH_AT_THE_BEGINNING_PERIOD,
        SOURCE.C_CASH_EQUIVALENTS_END_PERIOD,
        SOURCE.C_CASH_RQUIVALENTS_BEGIN_PERIO,
        SOURCE.C_NET_INCREASE_CASH_CASH_EQU_M,
        SOURCE.D_CASH_REC_SAL_GOO_REN_SERVICE,
        SOURCE.D_TAX_REFUNDS,
        SOURCE.D_OTHER_CASH_REC_REL_OPERA_ACT,
        SOURCE.D_TOTAL_CASH_INFLOWS_OPERAT_AC,
        SOURCE.D_CASH_PAID_FOR_GOODS_SERVICES,
        SOURCE.D_CASH_PAID_BEHALF_OF_EMPLOYEE,
        SOURCE.D_PAYMENTS_OF_ALL_TYPES_TAXES,
        SOURCE.D_OTHER_CASH_PAYMENTS_OPERA_AC,
        SOURCE.D_TOTAL_CASH_OUTFLOWS_OPERA_AC,
        SOURCE.D_NET_CASH_FLOWS_OPERATING_ACT,
        SOURCE.D_CASH_REC_RETURN_INVESTMENT,
        SOURCE.D_CASH_REC_ONVESTMENTS,
        SOURCE.D_NET_CASH_R_DFASS_IASS_OLTASS,
        SOURCE.D_NET_CASH_INF_DIS_SUB_O_B_ENT,
        SOURCE.D_CASH_REC_REL_OTHER_INVEST_AC,
        SOURCE.D_TOTAL_CASH_INFLOWS_INVEST_AC,
        SOURCE.D_CASH_PAID_ACQ_FASS_IASS_ASS,
        SOURCE.D_CASH_PAYMENTS_INVESTMENTS,
        SOURCE.D_NET_CASH_OUTF_PRO_SUB_OBUNIT,
        SOURCE.D_CASH_PAYMENTS_REL_O_I_ACT,
        SOURCE.D_SUB_TOTAL_CASH_OUTFLOWS,
        SOURCE.D_NET_CASH_FLOWS_INVEST_ACT,
        SOURCE.D_CASH_RECEIVED_INVESTORS,
        SOURCE.D_CASH_FROM_BORROWINGS,
        SOURCE.D_OTHER_CASH_REC_REL_FINA_ACT,
        SOURCE.D_TOTAL_CASH_INFLOWS_FINA_ACT,
        SOURCE.D_CASH_REPAYMENTS_FOR_DEBTS,
        SOURCE.D_CASH_PAYMENTS_D_DI_P_INT_EXP,
        SOURCE.D_CASH_PAYMENTS_REL_O_F_ACT,
        SOURCE.D_TOTAL_CASH_OUTFLOWS_FINA_ACT,
        SOURCE.D_NET_CASH_FLOWS_FINANCING_ACT,
        SOURCE.D_EFFECT_EXC_RATE_CHANGES_CASH,
        SOURCE.D_NET_INC_CASH_CASH_EQUIVALENT,
        SOURCE.D_INITIAL_CASH_CASH_EQU_BALANC,
        SOURCE.D_THE_FINAL_CASH_EQU_BALANCE,
        SOURCE.D_NET_PROFIT,
        SOURCE.D_PROVISION_ASSET_IMPAIRMENT,
        SOURCE.D_DEPRECIATION_FIXED_ASSETS,
        SOURCE.D_AMORTISATION_INTANGIBLE_ASS,
        SOURCE.D_AMORTISATION_LT_DEFFERED_EXP,
        SOURCE.D_DECREASE_DEFFERED_EXPENSES,
        SOURCE.D_ADDITION_OF_ACCUED_EXPENSE,
        SOURCE.D_LOSSES_DISP_FASS_IASS_OLTASS,
        SOURCE.D_LOSSES_SCRAPPING_FIXED_ASS,
        SOURCE.D_PROFIT_LOSS_CHANGES_FAIR_VAL,
        SOURCE.D_FINANCE_EXPENSE,
        SOURCE.D_LOSSES_ARSING_INVESTMENT,
        SOURCE.D_DEFERRED_INCOME_TAX_ASSETS,
        SOURCE.D_DEFERRED_INCOME_TAX_LIABILIT,
        SOURCE.D_DECREASE_IN_INVENTORIES,
        SOURCE.D_DECREASE_OPERATING_RECEIVABL,
        SOURCE.D_INCREASE_OPERATING_RECEIVABL,
        SOURCE.D_OTHERS,
        SOURCE.D_NET_CASH_FLOWS_OPERAT_ACT_MI,
        SOURCE.D_DEBTS_TRANSFER_TO_CAPITAL,
        SOURCE.D_ONE_YEAR_DUE_CONVER_BONDS,
        SOURCE.D_FINANCING_RENT_FIXED_ASSET,
        SOURCE.D_NON_CASH_OTHERS,
        SOURCE.D_CASH_AT_THE_END_OF_PERIOD,
        SOURCE.D_CASH_AT_THE_BEGINNING_PERIOD,
        SOURCE.D_CASH_EQUIVALENTS_AT_THE_PERI,
        SOURCE.D_CASH_RQUIVALENTS_BEGIN_PERIO,
        SOURCE.D_NET_INCREASE_CASH_EQUIVAL_MI,
        SOURCE.E_DATA_DESC,
        SOURCE.REMARKS,
        SOURCE.CHECK_FLAG,
        SOURCE.CHECK_DESC,
        SOURCE.CHECK_ERR_TYPE,
        SOURCE.NEXT_ACTION,
        '23',
        SOURCE.DATA_FLAG,
        SOURCE.DATA_SOURCE,
        SOURCE.DATA_VERSION,
        SOURCE.DATA_REJ_DESC,
        SOURCE.DATA_DEL_DESC,
        SOURCE.DATA_CRT_USER,
        SOURCE.DATA_CRT_DATE,
        SOURCE.DATA_CRT_TIME,
        SOURCE.DATA_CHG_USER,
        SOURCE.DATA_CHG_DATE,
        SOURCE.DATA_CHG_TIME,
        SOURCE.DATA_APV_USER,
        SOURCE.DATA_APV_DATE,
        SOURCE.DATA_APV_TIME,
        SOURCE.RSV1,
        SOURCE.RSV2,
        SOURCE.RSV3,
        SOURCE.RSV4,
        SOURCE.RSV5,
        SOURCE.C_ONE_YEAR_DUE_CONVERTIBLE_BO,
        SOURCE.IS_RPT,
        SOURCE.C_PAYMENTS_OF_ALL_TYPES_TAXES,
        SOURCE.C_OTHER_CASH_PAYMENTS_OPERA_AC,
        SOURCE.FB_STATUS,
        SOURCE.RPT_FILE_NAME,
        SOURCE.DATA_ID,
        V_NOW_DATE,
        V_NOW_TIME
    );
  COMMIT;

EXCEPTION
  WHEN OTHERS THEN
    ERRCODE := SQLCODE;
    ERRMSG  := SUBSTR(SQLERRM, 1, 200);
    ROLLBACK;
    RETURN;
END;
/

prompt
prompt Creating procedure SYNC_PM_TO_HIS_640
prompt =====================================
prompt
CREATE OR REPLACE PROCEDURE "SYNC_PM_TO_HIS_640"(ERRCODE OUT VARCHAR,
                                                 ERRMSG  OUT VARCHAR) AS
  V_NOW_DATE CHAR(8);
  V_NOW_TIME CHAR(14);
BEGIN
  SELECT TO_CHAR(SYSDATE, 'YYYYMMDD') INTO V_NOW_DATE FROM DUAL;
  SELECT TO_CHAR(SYSDATE, 'YYYYMMDDHH24MISS') INTO V_NOW_TIME FROM DUAL;

  DELETE FROM MBT_640_HIS
   WHERE HIS_DATE = V_NOW_DATE
     and DATA_STATUS = '23';
  COMMIT;
  --²åÈëÖ÷±í
  MERGE INTO MBT_640_HIS TARGET
  USING (SELECT              M.DATA_ID,
            M.DATA_DATE,
            M.CORP_ID,
            M.ORG_ID,
            M.GROUP_ID,
            M.INQ_ORG_ID,
            M.INQ_GROUP_ID,
            M.B_INF_REC_TYPE,
            M.B_ENT_NAME,
            M.B_ENT_CERT_TYPE,
            M.B_ENT_CERT_NUM,
            M.B_RPT_DATE,
            M.B_SHEET_YEAR,
            M.B_SHEET_TYPE,
            M.B_SHEET_TYPE_DIVIDE,
            M.B_AUDIT_FIRM_NAME,
            M.B_AUDITOR_NAME,
            M.B_AUDIT_TIME,
            M.B_CIMOC,
            M.B_RPT_DATE_CODE,
            M.C_CURRENCY_FUNDS,
            M.C_SHORT_TERM_INVESTMENTS,
            M.C_AMOUNT_OF_FINANCIAL_RETURN,
            M.C_NOTES_RECEIVABLE,
            M.C_ACCOUNTS_RECEIVABLE,
            M.C_PREPAYMENTS,
            M.C_OTHER_RECEIVABLES,
            M.C_INVENTORIES,
            M.C_OTHER_CURRENT_ASSETS,
            M.C_TOTAL_CURRENT_ASSETS,
            M.C_LONG_TERM_INVESTMENT,
            M.C_FIXED_ASSETS,
            M.C_ORIGINAL_COST_FIXED_ASSET,
            M.C_FIXED_ASSET_ACC_DEPRECIATION,
            M.C_CONSTRUCTION_IN_PROCESS,
            M.C_INTANGIBLE_ASSETS,
            M.C_ORIGINAL_PRICE_INTAN_ASSETS,
            M.C_ACCUMULATED_AMORTIZATION,
            M.C_ASSETS_PROCESSED_PENDING_PRO,
            M.C_TOTAL_NON_CURRENT_ASSETS,
            M.C_TOTAL_ASSETS,
            M.C_SHORT_TERM_BORROWINGS,
            M.C_TAX_PAYABLE,
            M.C_TREASURY_PAYABLE,
            M.C_PAYABLE_FINANCIAL_SPECIAL_AC,
            M.C_EMPLOYEE_BENEFITS_PAYABLE,
            M.C_NOTES_PAYABLE,
            M.C_ACCOUNTS_PAYABLE,
            M.C_RECEIPTS_INADVANCE,
            M.C_OTHER_PAYABLES,
            M.C_OTHER_CURRENT_LIABILITIES,
            M.C_TOTAL_CURRENT_LIABILITIES,
            M.C_LONG_TERM_BORROWINGS,
            M.C_LONG_TERM_PAYABLES,
            M.C_TOTAL_NON_CURRENT_LIABILITIE,
            M.C_TOTAL_LIABILITIES,
            M.C_ENTERPRISE_FUND,
            M.C_NON_CURRENT_ASSETS_FUND,
            M.C_SPECIAL_PURPOSE_FUNDS,
            M.C_FINANCIAL_AID_CARRIED_OVER,
            M.C_FINANCIAL_AID_BALANCE,
            M.C_NON_FINANCIAL_AID_CARR_OVER,
            M.C_NON_FINANCIAL_AID_BALANCE,
            M.C_UNDERTAKINGS_BALANCE,
            M.C_OPERATING_BALANCE,
            M.C_TOTAL_NET_ASSETS,
            M.C_TOTAL_LIABILITIES_NET_ASSETS,
            M.D_DATA_DESC,
            M.REMARKS,
            M.CHECK_FLAG,
            M.CHECK_DESC,
            M.CHECK_ERR_TYPE,
            M.NEXT_ACTION,
            M.DATA_STATUS,
            M.DATA_FLAG,
            M.DATA_SOURCE,
            M.DATA_VERSION,
            M.DATA_REJ_DESC,
            M.DATA_DEL_DESC,
            M.DATA_CRT_USER,
            M.DATA_CRT_DATE,
            M.DATA_CRT_TIME,
            M.DATA_CHG_USER,
            M.DATA_CHG_DATE,
            M.DATA_CHG_TIME,
            M.DATA_APV_USER,
            M.DATA_APV_DATE,
            M.DATA_APV_TIME,
            M.RSV1,
            M.RSV2,
            M.RSV3,
            M.RSV4,
            M.RSV5,
            M.IS_RPT,
            M.FB_STATUS,
            M.RPT_FILE_NAME
           FROM MBT_640 M
          WHERE M.DATA_STATUS = '21'
            AND M.B_RPT_DATE <= V_NOW_DATE
            AND (SELECT COUNT(1) AS CNT
                   FROM MBT_640_HIS N, MBT_640_RPT R
                  WHERE R.ODS_DATA_ID = N.DATA_ID
                    AND N.ODS_DATA_ID = M.DATA_ID
                    AND N.HIS_DATE = V_NOW_DATE
                    AND R.RPT_DATE = V_NOW_DATE
                    AND R.DATA_STATUS != '24') < 1) SOURCE
  ON (TARGET.DATA_ID = SOURCE.DATA_ID)
  WHEN NOT MATCHED THEN
   INSERT
    (       TARGET.DATA_ID,
            TARGET.DATA_DATE,
            TARGET.CORP_ID,
            TARGET.ORG_ID,
            TARGET.GROUP_ID,
            TARGET.INQ_ORG_ID,
            TARGET.INQ_GROUP_ID,
            TARGET.B_INF_REC_TYPE,
            TARGET.B_ENT_NAME,
            TARGET.B_ENT_CERT_TYPE,
            TARGET.B_ENT_CERT_NUM,
            TARGET.B_RPT_DATE,
            TARGET.B_SHEET_YEAR,
            TARGET.B_SHEET_TYPE,
            TARGET.B_SHEET_TYPE_DIVIDE,
            TARGET.B_AUDIT_FIRM_NAME,
            TARGET.B_AUDITOR_NAME,
            TARGET.B_AUDIT_TIME,
            TARGET.B_CIMOC,
            TARGET.B_RPT_DATE_CODE,
            TARGET.C_CURRENCY_FUNDS,
            TARGET.C_SHORT_TERM_INVESTMENTS,
            TARGET.C_AMOUNT_OF_FINANCIAL_RETURN,
            TARGET.C_NOTES_RECEIVABLE,
            TARGET.C_ACCOUNTS_RECEIVABLE,
            TARGET.C_PREPAYMENTS,
            TARGET.C_OTHER_RECEIVABLES,
            TARGET.C_INVENTORIES,
            TARGET.C_OTHER_CURRENT_ASSETS,
            TARGET.C_TOTAL_CURRENT_ASSETS,
            TARGET.C_LONG_TERM_INVESTMENT,
            TARGET.C_FIXED_ASSETS,
            TARGET.C_ORIGINAL_COST_FIXED_ASSET,
            TARGET.C_FIXED_ASSET_ACC_DEPRECIATION,
            TARGET.C_CONSTRUCTION_IN_PROCESS,
            TARGET.C_INTANGIBLE_ASSETS,
            TARGET.C_ORIGINAL_PRICE_INTAN_ASSETS,
            TARGET.C_ACCUMULATED_AMORTIZATION,
            TARGET.C_ASSETS_PROCESSED_PENDING_PRO,
            TARGET.C_TOTAL_NON_CURRENT_ASSETS,
            TARGET.C_TOTAL_ASSETS,
            TARGET.C_SHORT_TERM_BORROWINGS,
            TARGET.C_TAX_PAYABLE,
            TARGET.C_TREASURY_PAYABLE,
            TARGET.C_PAYABLE_FINANCIAL_SPECIAL_AC,
            TARGET.C_EMPLOYEE_BENEFITS_PAYABLE,
            TARGET.C_NOTES_PAYABLE,
            TARGET.C_ACCOUNTS_PAYABLE,
            TARGET.C_RECEIPTS_INADVANCE,
            TARGET.C_OTHER_PAYABLES,
            TARGET.C_OTHER_CURRENT_LIABILITIES,
            TARGET.C_TOTAL_CURRENT_LIABILITIES,
            TARGET.C_LONG_TERM_BORROWINGS,
            TARGET.C_LONG_TERM_PAYABLES,
            TARGET.C_TOTAL_NON_CURRENT_LIABILITIE,
            TARGET.C_TOTAL_LIABILITIES,
            TARGET.C_ENTERPRISE_FUND,
            TARGET.C_NON_CURRENT_ASSETS_FUND,
            TARGET.C_SPECIAL_PURPOSE_FUNDS,
            TARGET.C_FINANCIAL_AID_CARRIED_OVER,
            TARGET.C_FINANCIAL_AID_BALANCE,
            TARGET.C_NON_FINANCIAL_AID_CARR_OVER,
            TARGET.C_NON_FINANCIAL_AID_BALANCE,
            TARGET.C_UNDERTAKINGS_BALANCE,
            TARGET.C_OPERATING_BALANCE,
            TARGET.C_TOTAL_NET_ASSETS,
            TARGET.C_TOTAL_LIABILITIES_NET_ASSETS,
            TARGET.D_DATA_DESC,
            TARGET.REMARKS,
            TARGET.CHECK_FLAG,
            TARGET.CHECK_DESC,
            TARGET.CHECK_ERR_TYPE,
            TARGET.NEXT_ACTION,
            TARGET.DATA_STATUS,
            TARGET.DATA_FLAG,
            TARGET.DATA_SOURCE,
            TARGET.DATA_VERSION,
            TARGET.DATA_REJ_DESC,
            TARGET.DATA_DEL_DESC,
            TARGET.DATA_CRT_USER,
            TARGET.DATA_CRT_DATE,
            TARGET.DATA_CRT_TIME,
            TARGET.DATA_CHG_USER,
            TARGET.DATA_CHG_DATE,
            TARGET.DATA_CHG_TIME,
            TARGET.DATA_APV_USER,
            TARGET.DATA_APV_DATE,
            TARGET.DATA_APV_TIME,
            TARGET.RSV1,
            TARGET.RSV2,
            TARGET.RSV3,
            TARGET.RSV4,
            TARGET.RSV5,
            TARGET.IS_RPT,
            TARGET.FB_STATUS,
            TARGET.RPT_FILE_NAME,
            TARGET.ODS_DATA_ID,
            TARGET.HIS_DATE,
            TARGET.HIS_TIME

    )
    VALUES
    (
             GET_DATA_ID(V_NOW_DATE),
            SOURCE.DATA_DATE,
            SOURCE.CORP_ID,
            SOURCE.ORG_ID,
            SOURCE.GROUP_ID,
            SOURCE.INQ_ORG_ID,
            SOURCE.INQ_GROUP_ID,
            SOURCE.B_INF_REC_TYPE,
            SOURCE.B_ENT_NAME,
            SOURCE.B_ENT_CERT_TYPE,
            SOURCE.B_ENT_CERT_NUM,
            SOURCE.B_RPT_DATE,
            SOURCE.B_SHEET_YEAR,
            SOURCE.B_SHEET_TYPE,
            SOURCE.B_SHEET_TYPE_DIVIDE,
            SOURCE.B_AUDIT_FIRM_NAME,
            SOURCE.B_AUDITOR_NAME,
            SOURCE.B_AUDIT_TIME,
            SOURCE.B_CIMOC,
            SOURCE.B_RPT_DATE_CODE,
            SOURCE.C_CURRENCY_FUNDS,
            SOURCE.C_SHORT_TERM_INVESTMENTS,
            SOURCE.C_AMOUNT_OF_FINANCIAL_RETURN,
            SOURCE.C_NOTES_RECEIVABLE,
            SOURCE.C_ACCOUNTS_RECEIVABLE,
            SOURCE.C_PREPAYMENTS,
            SOURCE.C_OTHER_RECEIVABLES,
            SOURCE.C_INVENTORIES,
            SOURCE.C_OTHER_CURRENT_ASSETS,
            SOURCE.C_TOTAL_CURRENT_ASSETS,
            SOURCE.C_LONG_TERM_INVESTMENT,
            SOURCE.C_FIXED_ASSETS,
            SOURCE.C_ORIGINAL_COST_FIXED_ASSET,
            SOURCE.C_FIXED_ASSET_ACC_DEPRECIATION,
            SOURCE.C_CONSTRUCTION_IN_PROCESS,
            SOURCE.C_INTANGIBLE_ASSETS,
            SOURCE.C_ORIGINAL_PRICE_INTAN_ASSETS,
            SOURCE.C_ACCUMULATED_AMORTIZATION,
            SOURCE.C_ASSETS_PROCESSED_PENDING_PRO,
            SOURCE.C_TOTAL_NON_CURRENT_ASSETS,
            SOURCE.C_TOTAL_ASSETS,
            SOURCE.C_SHORT_TERM_BORROWINGS,
            SOURCE.C_TAX_PAYABLE,
            SOURCE.C_TREASURY_PAYABLE,
            SOURCE.C_PAYABLE_FINANCIAL_SPECIAL_AC,
            SOURCE.C_EMPLOYEE_BENEFITS_PAYABLE,
            SOURCE.C_NOTES_PAYABLE,
            SOURCE.C_ACCOUNTS_PAYABLE,
            SOURCE.C_RECEIPTS_INADVANCE,
            SOURCE.C_OTHER_PAYABLES,
            SOURCE.C_OTHER_CURRENT_LIABILITIES,
            SOURCE.C_TOTAL_CURRENT_LIABILITIES,
            SOURCE.C_LONG_TERM_BORROWINGS,
            SOURCE.C_LONG_TERM_PAYABLES,
            SOURCE.C_TOTAL_NON_CURRENT_LIABILITIE,
            SOURCE.C_TOTAL_LIABILITIES,
            SOURCE.C_ENTERPRISE_FUND,
            SOURCE.C_NON_CURRENT_ASSETS_FUND,
            SOURCE.C_SPECIAL_PURPOSE_FUNDS,
            SOURCE.C_FINANCIAL_AID_CARRIED_OVER,
            SOURCE.C_FINANCIAL_AID_BALANCE,
            SOURCE.C_NON_FINANCIAL_AID_CARR_OVER,
            SOURCE.C_NON_FINANCIAL_AID_BALANCE,
            SOURCE.C_UNDERTAKINGS_BALANCE,
            SOURCE.C_OPERATING_BALANCE,
            SOURCE.C_TOTAL_NET_ASSETS,
            SOURCE.C_TOTAL_LIABILITIES_NET_ASSETS,
            SOURCE.D_DATA_DESC,
            SOURCE.REMARKS,
            SOURCE.CHECK_FLAG,
            SOURCE.CHECK_DESC,
            SOURCE.CHECK_ERR_TYPE,
            SOURCE.NEXT_ACTION,
            '23',
            SOURCE.DATA_FLAG,
            SOURCE.DATA_SOURCE,
            SOURCE.DATA_VERSION,
            SOURCE.DATA_REJ_DESC,
            SOURCE.DATA_DEL_DESC,
            SOURCE.DATA_CRT_USER,
            SOURCE.DATA_CRT_DATE,
            SOURCE.DATA_CRT_TIME,
            SOURCE.DATA_CHG_USER,
            SOURCE.DATA_CHG_DATE,
            SOURCE.DATA_CHG_TIME,
            SOURCE.DATA_APV_USER,
            SOURCE.DATA_APV_DATE,
            SOURCE.DATA_APV_TIME,
            SOURCE.RSV1,
            SOURCE.RSV2,
            SOURCE.RSV3,
            SOURCE.RSV4,
            SOURCE.RSV5,
            SOURCE.IS_RPT,
            SOURCE.FB_STATUS,
            SOURCE.RPT_FILE_NAME,
            SOURCE.DATA_ID,
           V_NOW_DATE,
           V_NOW_TIME

    );
  COMMIT;

EXCEPTION
  WHEN OTHERS THEN
    ERRCODE := SQLCODE;
    ERRMSG  := SUBSTR(SQLERRM, 1, 200);
    ROLLBACK;
    RETURN;
END;
/

prompt
prompt Creating procedure SYNC_PM_TO_HIS_650
prompt =====================================
prompt
CREATE OR REPLACE PROCEDURE "SYNC_PM_TO_HIS_650"(ERRCODE OUT VARCHAR,
                                                 ERRMSG  OUT VARCHAR) AS
  V_NOW_DATE CHAR(8);
  V_NOW_TIME CHAR(14);
BEGIN
  SELECT TO_CHAR(SYSDATE, 'YYYYMMDD') INTO V_NOW_DATE FROM DUAL;
  SELECT TO_CHAR(SYSDATE, 'YYYYMMDDHH24MISS') INTO V_NOW_TIME FROM DUAL;

  DELETE FROM MBT_650_HIS
   WHERE HIS_DATE = V_NOW_DATE
     and DATA_STATUS = '23';
  COMMIT;
  --²åÈëÖ÷±í
  MERGE INTO MBT_650_HIS TARGET
  USING (SELECT             M.DATA_ID,
            M.DATA_DATE,
            M.CORP_ID,
            M.ORG_ID,
            M.GROUP_ID,
            M.INQ_ORG_ID,
            M.INQ_GROUP_ID,
            M.B_INF_REC_TYPE,
            M.B_ENT_NAME,
            M.B_ENT_CERT_TYPE,
            M.B_ENT_CERT_NUM,
            M.B_RPT_DATE,
            M.B_SHEET_YEAR,
            M.B_SHEET_TYPE,
            M.B_SHEET_TYPE_DIVIDE,
            M.B_AUDIT_FIRM_NAME,
            M.B_AUDITOR_NAME,
            M.B_AUDIT_TIME,
            M.B_CIMOC,
            M.B_RPT_DATE_CODE,
            M.C_CURRENT_FINAN_SUB_CAR_OVER_B,
            M.C_FINANCIAL_SUBSIDY_REVENUE,
            M.C_UNDERTAKINGS_EXP_FIN_SUB_EXP,
            M.C_CURRENT_UNDERTAK_CAR_OVER_B,
            M.C_UNDERTAKINGS_CLASS_REVENUE,
            M.C_UNDERTAKINGS_REVENUE,
            M.C_SUPERIOR_SUBSIDY_REVENUE,
            M.C_REVENUE_TURNED_OVER_SUB_UNIT,
            M.C_OTHER_REVENUE,
            M.C_DONATION_INCOME,
            M.C_UNDERTAKINGS_CLASS_EXPENDIT,
            M.C_UNDERTAKINGS_NON_FIN_SUB_EXP,
            M.C_PAYMENT_THE_HIGHER_AUTHORITY,
            M.C_GRANT_AUXILIARY_ORGANIZATION,
            M.C_OTHER_EXPENDITURE,
            M.C_CURRENT_OPERATING_BALANCE,
            M.C_OPERATING_REVENUE,
            M.C_OPERATING_EXPENDITURE,
            M.C_OPERATING_BALANCE_P_YO_LOSS,
            M.C_NON_FINA_SUB_CAR_O_BAL_TYEAR,
            M.C_NON_FINANCIAL_AID_CARRIED_O,
            M.C_NON_FINANCIAL_AID_BAL_TYEAR,
            M.C_ENTERPRISE_INCOME_TAX_PAYABL,
            M.C_SPECIAL_FUNDS_TO_EXTRACT,
            M.C_PUBLIC_FUND_TURNED_INTO,
            M.D_DATA_DESC,
            M.REMARKS,
            M.CHECK_FLAG,
            M.CHECK_DESC,
            M.CHECK_ERR_TYPE,
            M.NEXT_ACTION,
            M.DATA_STATUS,
            M.DATA_FLAG,
            M.DATA_SOURCE,
            M.DATA_VERSION,
            M.DATA_REJ_DESC,
            M.DATA_DEL_DESC,
            M.DATA_CRT_USER,
            M.DATA_CRT_DATE,
            M.DATA_CRT_TIME,
            M.DATA_CHG_USER,
            M.DATA_CHG_DATE,
            M.DATA_CHG_TIME,
            M.DATA_APV_USER,
            M.DATA_APV_DATE,
            M.DATA_APV_TIME,
            M.RSV1,
            M.RSV2,
            M.RSV3,
            M.RSV4,
            M.RSV5,
            M.IS_RPT,
            M.FB_STATUS,
            M.RPT_FILE_NAME

           FROM MBT_650 M
          WHERE M.DATA_STATUS = '21'
            AND M.B_RPT_DATE <= V_NOW_DATE
            AND (SELECT COUNT(1) AS CNT
                   FROM MBT_650_HIS N, MBT_650_RPT R
                  WHERE R.ODS_DATA_ID = N.DATA_ID
                    AND N.ODS_DATA_ID = M.DATA_ID
                    AND N.HIS_DATE = V_NOW_DATE
                    AND R.RPT_DATE = V_NOW_DATE
                    AND R.DATA_STATUS != '24') < 1) SOURCE
  ON (TARGET.DATA_ID = SOURCE.DATA_ID)
  WHEN NOT MATCHED THEN
   INSERT
    (                   TARGET.DATA_ID,
            TARGET.DATA_DATE,
            TARGET.CORP_ID,
            TARGET.ORG_ID,
            TARGET.GROUP_ID,
            TARGET.INQ_ORG_ID,
            TARGET.INQ_GROUP_ID,
            TARGET.B_INF_REC_TYPE,
            TARGET.B_ENT_NAME,
            TARGET.B_ENT_CERT_TYPE,
            TARGET.B_ENT_CERT_NUM,
            TARGET.B_RPT_DATE,
            TARGET.B_SHEET_YEAR,
            TARGET.B_SHEET_TYPE,
            TARGET.B_SHEET_TYPE_DIVIDE,
            TARGET.B_AUDIT_FIRM_NAME,
            TARGET.B_AUDITOR_NAME,
            TARGET.B_AUDIT_TIME,
            TARGET.B_CIMOC,
            TARGET.B_RPT_DATE_CODE,
            TARGET.C_CURRENT_FINAN_SUB_CAR_OVER_B,
            TARGET.C_FINANCIAL_SUBSIDY_REVENUE,
            TARGET.C_UNDERTAKINGS_EXP_FIN_SUB_EXP,
            TARGET.C_CURRENT_UNDERTAK_CAR_OVER_B,
            TARGET.C_UNDERTAKINGS_CLASS_REVENUE,
            TARGET.C_UNDERTAKINGS_REVENUE,
            TARGET.C_SUPERIOR_SUBSIDY_REVENUE,
            TARGET.C_REVENUE_TURNED_OVER_SUB_UNIT,
            TARGET.C_OTHER_REVENUE,
            TARGET.C_DONATION_INCOME,
            TARGET.C_UNDERTAKINGS_CLASS_EXPENDIT,
            TARGET.C_UNDERTAKINGS_NON_FIN_SUB_EXP,
            TARGET.C_PAYMENT_THE_HIGHER_AUTHORITY,
            TARGET.C_GRANT_AUXILIARY_ORGANIZATION,
            TARGET.C_OTHER_EXPENDITURE,
            TARGET.C_CURRENT_OPERATING_BALANCE,
            TARGET.C_OPERATING_REVENUE,
            TARGET.C_OPERATING_EXPENDITURE,
            TARGET.C_OPERATING_BALANCE_P_YO_LOSS,
            TARGET.C_NON_FINA_SUB_CAR_O_BAL_TYEAR,
            TARGET.C_NON_FINANCIAL_AID_CARRIED_O,
            TARGET.C_NON_FINANCIAL_AID_BAL_TYEAR,
            TARGET.C_ENTERPRISE_INCOME_TAX_PAYABL,
            TARGET.C_SPECIAL_FUNDS_TO_EXTRACT,
            TARGET.C_PUBLIC_FUND_TURNED_INTO,
            TARGET.D_DATA_DESC,
            TARGET.REMARKS,
            TARGET.CHECK_FLAG,
            TARGET.CHECK_DESC,
            TARGET.CHECK_ERR_TYPE,
            TARGET.NEXT_ACTION,
            TARGET.DATA_STATUS,
            TARGET.DATA_FLAG,
            TARGET.DATA_SOURCE,
            TARGET.DATA_VERSION,
            TARGET.DATA_REJ_DESC,
            TARGET.DATA_DEL_DESC,
            TARGET.DATA_CRT_USER,
            TARGET.DATA_CRT_DATE,
            TARGET.DATA_CRT_TIME,
            TARGET.DATA_CHG_USER,
            TARGET.DATA_CHG_DATE,
            TARGET.DATA_CHG_TIME,
            TARGET.DATA_APV_USER,
            TARGET.DATA_APV_DATE,
            TARGET.DATA_APV_TIME,
            TARGET.RSV1,
            TARGET.RSV2,
            TARGET.RSV3,
            TARGET.RSV4,
            TARGET.RSV5,
            TARGET.IS_RPT,
            TARGET.FB_STATUS,
            TARGET.RPT_FILE_NAME,
            TARGET.ODS_DATA_ID,
            TARGET.HIS_DATE,
            TARGET.HIS_TIME
    )
    VALUES
    (
                         GET_DATA_ID(V_NOW_DATE),
            SOURCE.DATA_DATE,
            SOURCE.CORP_ID,
            SOURCE.ORG_ID,
            SOURCE.GROUP_ID,
            SOURCE.INQ_ORG_ID,
            SOURCE.INQ_GROUP_ID,
            SOURCE.B_INF_REC_TYPE,
            SOURCE.B_ENT_NAME,
            SOURCE.B_ENT_CERT_TYPE,
            SOURCE.B_ENT_CERT_NUM,
            SOURCE.B_RPT_DATE,
            SOURCE.B_SHEET_YEAR,
            SOURCE.B_SHEET_TYPE,
            SOURCE.B_SHEET_TYPE_DIVIDE,
            SOURCE.B_AUDIT_FIRM_NAME,
            SOURCE.B_AUDITOR_NAME,
            SOURCE.B_AUDIT_TIME,
            SOURCE.B_CIMOC,
            SOURCE.B_RPT_DATE_CODE,
            SOURCE.C_CURRENT_FINAN_SUB_CAR_OVER_B,
            SOURCE.C_FINANCIAL_SUBSIDY_REVENUE,
            SOURCE.C_UNDERTAKINGS_EXP_FIN_SUB_EXP,
            SOURCE.C_CURRENT_UNDERTAK_CAR_OVER_B,
            SOURCE.C_UNDERTAKINGS_CLASS_REVENUE,
            SOURCE.C_UNDERTAKINGS_REVENUE,
            SOURCE.C_SUPERIOR_SUBSIDY_REVENUE,
            SOURCE.C_REVENUE_TURNED_OVER_SUB_UNIT,
            SOURCE.C_OTHER_REVENUE,
            SOURCE.C_DONATION_INCOME,
            SOURCE.C_UNDERTAKINGS_CLASS_EXPENDIT,
            SOURCE.C_UNDERTAKINGS_NON_FIN_SUB_EXP,
            SOURCE.C_PAYMENT_THE_HIGHER_AUTHORITY,
            SOURCE.C_GRANT_AUXILIARY_ORGANIZATION,
            SOURCE.C_OTHER_EXPENDITURE,
            SOURCE.C_CURRENT_OPERATING_BALANCE,
            SOURCE.C_OPERATING_REVENUE,
            SOURCE.C_OPERATING_EXPENDITURE,
            SOURCE.C_OPERATING_BALANCE_P_YO_LOSS,
            SOURCE.C_NON_FINA_SUB_CAR_O_BAL_TYEAR,
            SOURCE.C_NON_FINANCIAL_AID_CARRIED_O,
            SOURCE.C_NON_FINANCIAL_AID_BAL_TYEAR,
            SOURCE.C_ENTERPRISE_INCOME_TAX_PAYABL,
            SOURCE.C_SPECIAL_FUNDS_TO_EXTRACT,
            SOURCE.C_PUBLIC_FUND_TURNED_INTO,
            SOURCE.D_DATA_DESC,
            SOURCE.REMARKS,
            SOURCE.CHECK_FLAG,
            SOURCE.CHECK_DESC,
            SOURCE.CHECK_ERR_TYPE,
            SOURCE.NEXT_ACTION,
            '23',
            SOURCE.DATA_FLAG,
            SOURCE.DATA_SOURCE,
            SOURCE.DATA_VERSION,
            SOURCE.DATA_REJ_DESC,
            SOURCE.DATA_DEL_DESC,
            SOURCE.DATA_CRT_USER,
            SOURCE.DATA_CRT_DATE,
            SOURCE.DATA_CRT_TIME,
            SOURCE.DATA_CHG_USER,
            SOURCE.DATA_CHG_DATE,
            SOURCE.DATA_CHG_TIME,
            SOURCE.DATA_APV_USER,
            SOURCE.DATA_APV_DATE,
            SOURCE.DATA_APV_TIME,
            SOURCE.RSV1,
            SOURCE.RSV2,
            SOURCE.RSV3,
            SOURCE.RSV4,
            SOURCE.RSV5,
            SOURCE.IS_RPT,
            SOURCE.FB_STATUS,
            SOURCE.RPT_FILE_NAME,
            SOURCE.DATA_ID,
            V_NOW_DATE,
            V_NOW_TIME

    );
  COMMIT;

EXCEPTION
  WHEN OTHERS THEN
    ERRCODE := SQLCODE;
    ERRMSG  := SUBSTR(SQLERRM, 1, 200);
    ROLLBACK;
    RETURN;
END;
/

prompt
prompt Creating procedure SYNC_PM_TO_HIS
prompt =================================
prompt
CREATE OR REPLACE PROCEDURE "SYNC_PM_TO_HIS" (
                                    ERRCODE OUT VARCHAR2,
                                    ERRMSG OUT VARCHAR2) AS
BEGIN
    --¸öÈË»ù±¾ÐÅÏ¢
    SYNC_PM_TO_HIS_110(ERRCODE,ERRMSG);
    --ÆóÒµ»ù±¾ÐÅÏ¢
    SYNC_PM_TO_HIS_310(ERRCODE,ERRMSG);
    --¸öÈËÊÚÐÅÐÅÏ¢
    SYNC_PM_TO_HIS_220(ERRCODE,ERRMSG);
    --ÆóÒµÊÚÐÅÐÅÏ¢
    SYNC_PM_TO_HIS_420(ERRCODE,ERRMSG);
    --¸öÈËµ£±£ÐÅÏ¢
    SYNC_PM_TO_HIS_230(ERRCODE,ERRMSG);
    --ÆóÒµµ£±£ÐÅÏ¢
    SYNC_PM_TO_HIS_440(ERRCODE,ERRMSG);
    --¸öÈË½è´ûÐÅÏ¢
    SYNC_PM_TO_HIS_210(ERRCODE,ERRMSG);
    --ÆóÒµ½è´ûÐÅÏ¢
    SYNC_PM_TO_HIS_410(ERRCODE,ERRMSG);
    --¼Ò×å¹ØÏµÐÅÏ¢
    SYNC_PM_TO_HIS_120(ERRCODE,ERRMSG);
    --¸öÈËÖ¤¼þÓÐÐ§ÆÚÐÅÏ¢
    SYNC_PM_TO_HIS_130(ERRCODE,ERRMSG);
    --¸öÈËÖ¤¼þÕûºÏÐÅÏ¢
    SYNC_PM_TO_HIS_140(ERRCODE,ERRMSG);
    --¸öÈË½è´û±êÊ¶
    SYNC_PM_TO_HIS_211(ERRCODE,ERRMSG);
    --¸öÈËÊÚÐÅ±êÊ¶±ä¸ü
    SYNC_PM_TO_HIS_221(ERRCODE,ERRMSG);
    --¸öÈËµ£±£±êÊ¶±ä¸ü
     SYNC_PM_TO_HIS_231(ERRCODE,ERRMSG);
    --ÆóÒµÉí·Ý±êÊ¶ÕûºÏÐÅÏ¢
    SYNC_PM_TO_HIS_340(ERRCODE,ERRMSG);
    --ÆóÒµ¼ä¹ØÁª¹ØÏµÐÅÏ¢
    SYNC_PM_TO_HIS_350(ERRCODE,ERRMSG);
    --µÖÖÊÑºÎïÐÅÏ¢
    SYNC_PM_TO_HIS_510(ERRCODE,ERRMSG);
    --µÖ£¨ÖÊ£©ÑººÏÍ¬±êÊ¶±ä¸ü
    SYNC_PM_TO_HIS_511(ERRCODE,ERRMSG);
    --ÆóÒµ×Ê²ú¸ºÕ®ÐÅÏ¢
    SYNC_PM_TO_HIS_610(ERRCODE,ERRMSG);
    --ÆóÒµÀûÈó¼°ÀûÈó·ÖÅäÐÅÏ¢
    SYNC_PM_TO_HIS_620(ERRCODE,ERRMSG);
    --ÆóÒµÏÖ½ðÁ÷Á¿ÐÅÏ¢
    SYNC_PM_TO_HIS_630(ERRCODE,ERRMSG);
    --ÊÂÒµµ¥Î»×Ê²ú¸ºÕ®ÐÅÏ¢
    SYNC_PM_TO_HIS_640(ERRCODE,ERRMSG);
    --ÊÂÒµµ¥Î»ÊÕÈëÖ§³öÐÅÏ¢
    SYNC_PM_TO_HIS_650(ERRCODE,ERRMSG);
    SYNC_ODS_TO_EXHIS_110(ERRCODE,ERRMSG);
    SYNC_ODS_TO_EXHIS_130(ERRCODE,ERRMSG);
    SYNC_ODS_TO_EXHIS_210(ERRCODE,ERRMSG);
    SYNC_ODS_TO_EXHIS_220(ERRCODE,ERRMSG);
    SYNC_ODS_TO_EXHIS_230(ERRCODE,ERRMSG);
    SYNC_ODS_TO_EXHIS_310(ERRCODE,ERRMSG);
    SYNC_ODS_TO_EXHIS_410(ERRCODE,ERRMSG);
    SYNC_ODS_TO_EXHIS_420(ERRCODE,ERRMSG);
    SYNC_ODS_TO_EXHIS_440(ERRCODE,ERRMSG);
    SYNC_ODS_TO_EXHIS_510(ERRCODE,ERRMSG);
    SYNC_ODS_TO_EXHIS_610(ERRCODE,ERRMSG);
    SYNC_ODS_TO_EXHIS_620(ERRCODE,ERRMSG);
    SYNC_ODS_TO_EXHIS_630(ERRCODE,ERRMSG);
    SYNC_ODS_TO_EXHIS_640(ERRCODE,ERRMSG);
    SYNC_ODS_TO_EXHIS_650(ERRCODE,ERRMSG);

EXCEPTION
   WHEN OTHERS THEN
     ERRCODE := SQLCODE;
     ERRMSG := SUBSTR(SQLERRM,1,200);
     ROLLBACK;
     return;
END;
/

prompt
prompt Creating procedure SYNC_PM_TO_HIS_411
prompt =====================================
prompt
CREATE OR REPLACE PROCEDURE "SYNC_PM_TO_HIS_411"(ERRCODE   OUT VARCHAR,
                                           ERRMSG   OUT VARCHAR) AS V_NOW_DATE CHAR(8);
V_NOW_TIME CHAR(14);
BEGIN
    SELECT
        TO_CHAR(SYSDATE,'YYYYMMDD')
    INTO
        V_NOW_DATE
    FROM
        DUAL;
SELECT
    TO_CHAR(SYSDATE, 'YYYYMMDDHH24MISS')
INTO
    V_NOW_TIME
FROM
    DUAL;
DELETE
FROM
    MBT_411_HIS
WHERE
    HIS_DATE=V_NOW_DATE and DATA_STATUS='23';
COMMIT;
--²åÈëÖ÷±í
MERGE
INTO
    MBT_411_HIS TARGET
USING
    (
        SELECT
            DATA_ID,
            DATA_DATE,
            CORP_ID,
            ORG_ID,
            GROUP_ID,
            INQ_ORG_ID,
            INQ_GROUP_ID,
            INF_REC_TYPE,
            OD_BNES_CODE,
            NW_BNES_CODE,
            DATA_DESC,
            REMARKS,
            CHECK_FLAG,
            CHECK_DESC,
            CHECK_ERR_TYPE,
            NEXT_ACTION,
            DATA_STATUS,
            DATA_FLAG,
            DATA_SOURCE,
            DATA_VERSION,
            DATA_REJ_DESC,
            DATA_DEL_DESC,
            DATA_CRT_USER,
            DATA_CRT_DATE,
            DATA_CRT_TIME,
            DATA_CHG_USER,
            DATA_CHG_DATE,
            DATA_CHG_TIME,
            DATA_APV_USER,
            DATA_APV_DATE,
            DATA_APV_TIME,
            RSV1,
            RSV2,
            RSV3,
            RSV4,
            RSV5,
            IS_RPT
        FROM
            MBT_411
        WHERE
            DATA_STATUS='21') SOURCE
ON
    (
        TARGET.DATA_ID = SOURCE.DATA_ID)
WHEN NOT MATCHED
    THEN
INSERT
    (
        TARGET.DATA_ID,
        TARGET.DATA_DATE,
        TARGET.CORP_ID,
        TARGET.ORG_ID,
        TARGET.GROUP_ID,
        TARGET.INQ_ORG_ID,
        TARGET.INQ_GROUP_ID,
        TARGET.INF_REC_TYPE,
        TARGET.OD_BNES_CODE,
        TARGET.NW_BNES_CODE,
        TARGET.DATA_DESC,
        TARGET.REMARKS,
        TARGET.CHECK_FLAG,
        TARGET.CHECK_DESC,
        TARGET.CHECK_ERR_TYPE,
        TARGET.NEXT_ACTION,
        TARGET.DATA_STATUS,
        TARGET.DATA_FLAG,
        TARGET.DATA_SOURCE,
        TARGET.DATA_VERSION,
        TARGET.DATA_REJ_DESC,
        TARGET.DATA_DEL_DESC,
        TARGET.DATA_CRT_USER,
        TARGET.DATA_CRT_DATE,
        TARGET.DATA_CRT_TIME,
        TARGET.DATA_CHG_USER,
        TARGET.DATA_CHG_DATE,
        TARGET.DATA_CHG_TIME,
        TARGET.DATA_APV_USER,
        TARGET.DATA_APV_DATE,
        TARGET.DATA_APV_TIME,
        TARGET.RSV1,
        TARGET.RSV2,
        TARGET.RSV3,
        TARGET.RSV4,
        TARGET.RSV5,
        TARGET.ODS_DATA_ID,
        TARGET.HIS_DATE,
        TARGET.HIS_DATE_TIME,
        TARGET.IS_RPT
    )
    VALUES
    (
        GET_DATA_ID(V_NOW_DATE),
        SOURCE.DATA_DATE,
        SOURCE.CORP_ID,
        SOURCE.ORG_ID,
        SOURCE.GROUP_ID,
        SOURCE.INQ_ORG_ID,
        SOURCE.INQ_GROUP_ID,
        SOURCE.INF_REC_TYPE,
        SOURCE.OD_BNES_CODE,
        SOURCE.NW_BNES_CODE,
        SOURCE.DATA_DESC,
        SOURCE.REMARKS,
        SOURCE.CHECK_FLAG,
        SOURCE.CHECK_DESC,
        SOURCE.CHECK_ERR_TYPE,
        SOURCE.NEXT_ACTION,
        '23',
        SOURCE.DATA_FLAG,
        SOURCE.DATA_SOURCE,
        SOURCE.DATA_VERSION,
        SOURCE.DATA_REJ_DESC,
        SOURCE.DATA_DEL_DESC,
        SOURCE.DATA_CRT_USER,
        SOURCE.DATA_CRT_DATE,
        SOURCE.DATA_CRT_TIME,
        SOURCE.DATA_CHG_USER,
        SOURCE.DATA_CHG_DATE,
        SOURCE.DATA_CHG_TIME,
        SOURCE.DATA_APV_USER,
        SOURCE.DATA_APV_DATE,
        SOURCE.DATA_APV_TIME,
        SOURCE.RSV1,
        SOURCE.RSV2,
        SOURCE.RSV3,
        SOURCE.RSV4,
        SOURCE.RSV5,
        SOURCE.DATA_ID,
        V_NOW_DATE,
        V_NOW_TIME,
        SOURCE.IS_RPT
    );
COMMIT;
EXCEPTION
WHEN OTHERS THEN
    ERRCODE := SQLCODE;
ERRMSG := SUBSTR(SQLERRM,1,200);
ROLLBACK;
RETURN;
END;
/

prompt
prompt Creating procedure SYNC_PM_TO_HIS_421
prompt =====================================
prompt
CREATE OR REPLACE PROCEDURE "SYNC_PM_TO_HIS_421"(ERRCODE OUT VARCHAR,
                                           ERRMSG OUT VARCHAR)
AS
    V_NOW_DATE CHAR(8);
V_NOW_TIME CHAR(14);
BEGIN
    SELECT
        TO_CHAR(SYSDATE,'YYYYMMDD')
    INTO
        V_NOW_DATE
    FROM
        DUAL;
SELECT
    TO_CHAR(SYSDATE, 'YYYYMMDDHH24MISS')
INTO
    V_NOW_TIME
FROM
    DUAL;
DELETE
FROM
    MBT_421_HIS
WHERE
    HIS_DATE=V_NOW_DATE and DATA_STATUS='23';
COMMIT;
--²åÈëÖ÷±í
MERGE
INTO
    MBT_421_HIS TARGET
USING
    (
        SELECT
            DATA_ID,
            DATA_DATE,
            CORP_ID,
            ORG_ID,
            GROUP_ID,
            INQ_ORG_ID,
            INQ_GROUP_ID,
            INF_REC_TYPE,
            OD_BNES_CODE,
            NW_BNES_CODE,
            DATA_DESC,
            REMARKS,
            CHECK_FLAG,
            CHECK_DESC,
            CHECK_ERR_TYPE,
            NEXT_ACTION,
            DATA_STATUS,
            DATA_FLAG,
            DATA_SOURCE,
            DATA_VERSION,
            DATA_REJ_DESC,
            DATA_DEL_DESC,
            DATA_CRT_USER,
            DATA_CRT_DATE,
            DATA_CRT_TIME,
            DATA_CHG_USER,
            DATA_CHG_DATE,
            DATA_CHG_TIME,
            DATA_APV_USER,
            DATA_APV_DATE,
            DATA_APV_TIME,
            RSV1,
            RSV2,
            RSV3,
            RSV4,
            RSV5,
            IS_RPT
        FROM
            MBT_421
        WHERE
            DATA_STATUS='21') SOURCE
ON
    (
        TARGET.DATA_ID = SOURCE.DATA_ID)
WHEN NOT MATCHED
    THEN
INSERT
    (
        TARGET.DATA_ID,
        TARGET.DATA_DATE,
        TARGET.CORP_ID,
        TARGET.ORG_ID,
        TARGET.GROUP_ID,
        TARGET.INQ_ORG_ID,
        TARGET.INQ_GROUP_ID,
        TARGET.INF_REC_TYPE,
        TARGET.OD_BNES_CODE,
        TARGET.NW_BNES_CODE,
        TARGET.DATA_DESC,
        TARGET.REMARKS,
        TARGET.CHECK_FLAG,
        TARGET.CHECK_DESC,
        TARGET.CHECK_ERR_TYPE,
        TARGET.NEXT_ACTION,
        TARGET.DATA_STATUS,
        TARGET.DATA_FLAG,
        TARGET.DATA_SOURCE,
        TARGET.DATA_VERSION,
        TARGET.DATA_REJ_DESC,
        TARGET.DATA_DEL_DESC,
        TARGET.DATA_CRT_USER,
        TARGET.DATA_CRT_DATE,
        TARGET.DATA_CRT_TIME,
        TARGET.DATA_CHG_USER,
        TARGET.DATA_CHG_DATE,
        TARGET.DATA_CHG_TIME,
        TARGET.DATA_APV_USER,
        TARGET.DATA_APV_DATE,
        TARGET.DATA_APV_TIME,
        TARGET.RSV1,
        TARGET.RSV2,
        TARGET.RSV3,
        TARGET.RSV4,
        TARGET.RSV5,
        TARGET.ODS_DATA_ID,
        TARGET.HIS_DATE,
        TARGET.HIS_DATE_TIME,
        TARGET.IS_RPT
    )
    VALUES
    (
        GET_DATA_ID(V_NOW_DATE),
        SOURCE.DATA_DATE,
        SOURCE.CORP_ID,
        SOURCE.ORG_ID,
        SOURCE.GROUP_ID,
        SOURCE.INQ_ORG_ID,
        SOURCE.INQ_GROUP_ID,
        SOURCE.INF_REC_TYPE,
        SOURCE.OD_BNES_CODE,
        SOURCE.NW_BNES_CODE,
        SOURCE.DATA_DESC,
        SOURCE.REMARKS,
        SOURCE.CHECK_FLAG,
        SOURCE.CHECK_DESC,
        SOURCE.CHECK_ERR_TYPE,
        SOURCE.NEXT_ACTION,
        '23',
        SOURCE.DATA_FLAG,
        SOURCE.DATA_SOURCE,
        SOURCE.DATA_VERSION,
        SOURCE.DATA_REJ_DESC,
        SOURCE.DATA_DEL_DESC,
        SOURCE.DATA_CRT_USER,
        SOURCE.DATA_CRT_DATE,
        SOURCE.DATA_CRT_TIME,
        SOURCE.DATA_CHG_USER,
        SOURCE.DATA_CHG_DATE,
        SOURCE.DATA_CHG_TIME,
        SOURCE.DATA_APV_USER,
        SOURCE.DATA_APV_DATE,
        SOURCE.DATA_APV_TIME,
        SOURCE.RSV1,
        SOURCE.RSV2,
        SOURCE.RSV3,
        SOURCE.RSV4,
        SOURCE.RSV5,
        SOURCE.DATA_ID,
        V_NOW_DATE,
        V_NOW_TIME,
        SOURCE.IS_RPT
    );
COMMIT;
EXCEPTION
WHEN OTHERS THEN
    ERRCODE := SQLCODE;
ERRMSG := SUBSTR(SQLERRM,1,200);
ROLLBACK;
RETURN;
END;
/

prompt
prompt Creating procedure SYNC_PM_TO_HIS_441
prompt =====================================
prompt
CREATE OR REPLACE PROCEDURE "SYNC_PM_TO_HIS_441"(ERRCODE OUT VARCHAR,
                                           ERRMSG OUT VARCHAR)
AS
    V_NOW_DATE CHAR(8);
V_NOW_TIME CHAR(14);
BEGIN
    SELECT
        TO_CHAR(SYSDATE,'YYYYMMDD')
    INTO
        V_NOW_DATE
    FROM
        DUAL;
SELECT
    TO_CHAR(SYSDATE, 'YYYYMMDDHH24MISS')
INTO
    V_NOW_TIME
FROM
    DUAL;
DELETE
FROM
    MBT_441_HIS
WHERE
    HIS_DATE=V_NOW_DATE and DATA_STATUS='23';
COMMIT;
--²åÈëÖ÷±í
MERGE
INTO
    MBT_441_HIS TARGET
USING
    (
        SELECT
            DATA_ID,
            DATA_DATE,
            CORP_ID,
            ORG_ID,
            GROUP_ID,
            INQ_ORG_ID,
            INQ_GROUP_ID,
            INF_REC_TYPE,
            OD_BNES_CODE,
            NW_BNES_CODE,
            DATA_DESC,
            REMARKS,
            CHECK_FLAG,
            CHECK_DESC,
            CHECK_ERR_TYPE,
            NEXT_ACTION,
            DATA_STATUS,
            DATA_FLAG,
            DATA_SOURCE,
            DATA_VERSION,
            DATA_REJ_DESC,
            DATA_DEL_DESC,
            DATA_CRT_USER,
            DATA_CRT_DATE,
            DATA_CRT_TIME,
            DATA_CHG_USER,
            DATA_CHG_DATE,
            DATA_CHG_TIME,
            DATA_APV_USER,
            DATA_APV_DATE,
            DATA_APV_TIME,
            RSV1,
            RSV2,
            RSV3,
            RSV4,
            RSV5,
            IS_RPT
        FROM
            MBT_441
        WHERE
            DATA_STATUS='21') SOURCE
ON
    (
        TARGET.DATA_ID = SOURCE.DATA_ID)
WHEN NOT MATCHED
    THEN
INSERT
    (
        TARGET.DATA_ID,
        TARGET.DATA_DATE,
        TARGET.CORP_ID,
        TARGET.ORG_ID,
        TARGET.GROUP_ID,
        TARGET.INQ_ORG_ID,
        TARGET.INQ_GROUP_ID,
        TARGET.INF_REC_TYPE,
        TARGET.OD_BNES_CODE,
        TARGET.NW_BNES_CODE,
        TARGET.DATA_DESC,
        TARGET.REMARKS,
        TARGET.CHECK_FLAG,
        TARGET.CHECK_DESC,
        TARGET.CHECK_ERR_TYPE,
        TARGET.NEXT_ACTION,
        TARGET.DATA_STATUS,
        TARGET.DATA_FLAG,
        TARGET.DATA_SOURCE,
        TARGET.DATA_VERSION,
        TARGET.DATA_REJ_DESC,
        TARGET.DATA_DEL_DESC,
        TARGET.DATA_CRT_USER,
        TARGET.DATA_CRT_DATE,
        TARGET.DATA_CRT_TIME,
        TARGET.DATA_CHG_USER,
        TARGET.DATA_CHG_DATE,
        TARGET.DATA_CHG_TIME,
        TARGET.DATA_APV_USER,
        TARGET.DATA_APV_DATE,
        TARGET.DATA_APV_TIME,
        TARGET.RSV1,
        TARGET.RSV2,
        TARGET.RSV3,
        TARGET.RSV4,
        TARGET.RSV5,
        TARGET.ODS_DATA_ID,
        TARGET.HIS_DATE,
        TARGET.HIS_DATE_TIME,
        TARGET.IS_RPT
    )
    VALUES
    (
        GET_DATA_ID(V_NOW_DATE),
        SOURCE.DATA_DATE,
        SOURCE.CORP_ID,
        SOURCE.ORG_ID,
        SOURCE.GROUP_ID,
        SOURCE.INQ_ORG_ID,
        SOURCE.INQ_GROUP_ID,
        SOURCE.INF_REC_TYPE,
        SOURCE.OD_BNES_CODE,
        SOURCE.NW_BNES_CODE,
        SOURCE.DATA_DESC,
        SOURCE.REMARKS,
        SOURCE.CHECK_FLAG,
        SOURCE.CHECK_DESC,
        SOURCE.CHECK_ERR_TYPE,
        SOURCE.NEXT_ACTION,
        '23',
        SOURCE.DATA_FLAG,
        SOURCE.DATA_SOURCE,
        SOURCE.DATA_VERSION,
        SOURCE.DATA_REJ_DESC,
        SOURCE.DATA_DEL_DESC,
        SOURCE.DATA_CRT_USER,
        SOURCE.DATA_CRT_DATE,
        SOURCE.DATA_CRT_TIME,
        SOURCE.DATA_CHG_USER,
        SOURCE.DATA_CHG_DATE,
        SOURCE.DATA_CHG_TIME,
        SOURCE.DATA_APV_USER,
        SOURCE.DATA_APV_DATE,
        SOURCE.DATA_APV_TIME,
        SOURCE.RSV1,
        SOURCE.RSV2,
        SOURCE.RSV3,
        SOURCE.RSV4,
        SOURCE.RSV5,
        SOURCE.DATA_ID,
        V_NOW_DATE,
        V_NOW_TIME,
        SOURCE.IS_RPT
    );
COMMIT;
EXCEPTION
WHEN OTHERS THEN
    ERRCODE := SQLCODE;
ERRMSG := SUBSTR(SQLERRM,1,200);
ROLLBACK;
RETURN;
END;
/


prompt Done
spool off
set define on
