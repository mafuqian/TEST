prompt PL/SQL Developer Export User Objects for user MBT_USER@10.1.3.62/ORADB
prompt Created by 77164 on 2020Âπ¥8Êúà12Êó•
set define off
spool SYNC_HIS_TO_RPT_ALL.log

prompt
prompt Creating procedure SYNC_HIS_TO_RPT_110
prompt ======================================
prompt
CREATE OR REPLACE PROCEDURE "SYNC_HIS_TO_RPT_110"(ERRCODE  OUT VARCHAR,
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

DELETE FROM MBT_110_C_RPT
 WHERE  pdata_id IN (select data_id
                     from MBT_110_RPT
                    where RPT_DATE = V_NOW_DATE
                      and data_status = '24'
                     );
DELETE
FROM
    MBT_110_RPT
WHERE
    RPT_DATE=V_NOW_DATE and DATA_STATUS='24';
    DELETE FROM MBT_ROW_NUM WHERE TYPE='110';

COMMIT;
--1.≤Â»Î÷˜±Ì
MERGE
INTO
    MBT_110_RPT TARGET
USING
    (
        SELECT
            TMP.B_INF_REC_TYPE,
            TMP.B_NAME,
            TMP.B_ID_TYPE,
            TMP.B_ID_NUM,
            TMP.B_INF_SURC_CODE,
            TMP.B_RPT_DATE,
            TMP.B_RPT_DATE_CODE,
            TMP.B_CIMOC,
            TMP.B_CUSTOMER_TYPE,
            TMP.C_ID_INFO_UP_DATE,
            TMP.D_SEX,
            TMP.D_DOB,
            TMP.D_NATION,
            TMP.D_HOUSE_ADD,
            TMP.D_HH_DIST,
            TMP.D_CELL_PHONE,
            TMP.D_EMAIL,
            TMP.D_FCS_INFO_UP_DATE,
            TMP.E_MARI_STATUS,
            TMP.E_SPO_NAME,
            TMP.E_SPO_ID_TYPE,
            TMP.E_SPO_ID_NUM,
            TMP.E_SPO_TEL,
            TMP.E_SPS_CMPY_NM,
            TMP.E_SPS_INFO_UP_DATE,
            TMP.F_EDU_LEVEL,
            TMP.F_ACA_DEGREE,
            TMP.F_EDU_INFO_UP_DATE,
            TMP.G_EMP_STATUS,
            TMP.G_CPN_NAME,
            TMP.G_CPN_TYPE,
            TMP.G_INDUSTRY,
            TMP.G_CPN_ADDR,
            TMP.G_CPN_PC,
            TMP.G_CPN_DIST,
            TMP.G_CPN_TEL,
            TMP.G_OCCUPATION,
            TMP.G_TITLE,
            TMP.G_TECH_TITLE,
            TMP.G_WORK_START_DATE,
            TMP.G_OCTPN_INFO_UP_DATE,
            TMP.H_RESI_STATUS,
            TMP.H_RESI_ADDR,
            TMP.H_RESI_PC,
            TMP.H_RESI_DIST,
            TMP.H_HOME_TEL,
            TMP.H_RESI_INFO_UP_DATE,
            TMP.I_MAIL_ADDR,
            TMP.I_MAIL_PC,
            TMP.I_MAIL_DIST,
            TMP.I_MLG_INFO_UP_DATE,
            HIS.IS_RPT,
            HIS.DATA_DESC,
            HIS.REMARKS,
            HIS.CHECK_FLAG,
            HIS.CHECK_DESC,
            HIS.CHECK_ERR_TYPE,
            HIS.NEXT_ACTION,
            HIS.DATA_STATUS,
            HIS.DATA_FLAG,
            HIS.DATA_SOURCE,
            HIS.DATA_VERSION,
            HIS.DATA_REJ_DESC,
            HIS.DATA_DEL_DESC,
            HIS.DATA_CRT_USER,
            HIS.DATA_CRT_DATE,
            HIS.DATA_CRT_TIME,
            HIS.DATA_CHG_USER,
            HIS.DATA_CHG_DATE,
            HIS.DATA_CHG_TIME,
            HIS.DATA_APV_USER,
            HIS.DATA_APV_DATE,
            HIS.DATA_APV_TIME,
            HIS.RSV1,
            HIS.RSV2,
            HIS.RSV3,
            HIS.RSV4,
            HIS.RSV5,
            HIS.DATA_ID,
            HIS.DATA_DATE,
            HIS.CORP_ID,
            HIS.ORG_ID,
            HIS.CUST_NO,
            HIS.GROUP_ID,
            HIS.INQ_ORG_ID,
            HIS.INQ_GROUP_ID
        FROM
            (
                SELECT
                    DATA_ID,
                    case when SUBSTR(IS_RPT,0,1) = '1' then B_INF_REC_TYPE else NULL end B_INF_REC_TYPE,
                    case when SUBSTR(IS_RPT,0,1) = '1' then B_NAME else NULL end B_NAME,
                    case when SUBSTR(IS_RPT,0,1) = '1' then B_ID_TYPE else NULL end B_ID_TYPE,
                    case when SUBSTR(IS_RPT,0,1) = '1' then B_ID_NUM else NULL end B_ID_NUM,
                    case when SUBSTR(IS_RPT,0,1) = '1' then B_INF_SURC_CODE else NULL end B_INF_SURC_CODE,
                    case when SUBSTR(IS_RPT,0,1) = '1' then B_RPT_DATE else NULL end B_RPT_DATE,
                    case when SUBSTR(IS_RPT,0,1) = '1' then B_RPT_DATE_CODE else NULL end B_RPT_DATE_CODE,
                    case when SUBSTR(IS_RPT,0,1) = '1' then B_CIMOC else NULL end B_CIMOC,
                    case when SUBSTR(IS_RPT,0,1) = '1' then B_CUSTOMER_TYPE else NULL end B_CUSTOMER_TYPE,
                    case when  SUBSTR(IS_RPT,INSTR(IS_RPT,'|')+1,1)='1'  then C_ID_INFO_UP_DATE else NULL end C_ID_INFO_UP_DATE,
                    case when SUBSTR(IS_RPT,3,1) = '1' then D_SEX else NULL end D_SEX,
                    case when SUBSTR(IS_RPT,2,1) = '1' then D_DOB else NULL end D_DOB,
                    case when SUBSTR(IS_RPT,2,1) = '1' then D_NATION else NULL end D_NATION,
                    case when SUBSTR(IS_RPT,2,1) = '1' then D_HOUSE_ADD else NULL end D_HOUSE_ADD,
                    case when SUBSTR(IS_RPT,2,1) = '1' then D_HH_DIST else NULL end D_HH_DIST,
                    case when SUBSTR(IS_RPT,2,1) = '1' then D_CELL_PHONE else NULL end D_CELL_PHONE,
                    case when SUBSTR(IS_RPT,2,1) = '1' then D_EMAIL else NULL end D_EMAIL,
                    case when SUBSTR(IS_RPT,2,1) = '1' then D_FCS_INFO_UP_DATE else NULL end D_FCS_INFO_UP_DATE,
                    case when SUBSTR(IS_RPT,3,1) = '1' then E_MARI_STATUS else NULL end E_MARI_STATUS,
                    case when SUBSTR(IS_RPT,3,1) = '1' then E_SPO_NAME else NULL end E_SPO_NAME,
                    case when SUBSTR(IS_RPT,3,1) = '1' then E_SPO_ID_TYPE else NULL end E_SPO_ID_TYPE,
                    case when SUBSTR(IS_RPT,3,1) = '1' then E_SPO_ID_NUM else NULL end E_SPO_ID_NUM,
                    case when SUBSTR(IS_RPT,3,1) = '1' then E_SPO_TEL else NULL end E_SPO_TEL,
                    case when SUBSTR(IS_RPT,3,1) = '1' then E_SPS_CMPY_NM else NULL end E_SPS_CMPY_NM,
                    case when SUBSTR(IS_RPT,3,1) = '1' then E_SPS_INFO_UP_DATE else NULL end E_SPS_INFO_UP_DATE,
                    case when SUBSTR(IS_RPT,4,1) = '1' then F_EDU_LEVEL else NULL end F_EDU_LEVEL,
                    case when SUBSTR(IS_RPT,4,1) = '1' then F_ACA_DEGREE else NULL end F_ACA_DEGREE,
                    case when SUBSTR(IS_RPT,4,1) = '1' then F_EDU_INFO_UP_DATE else NULL end F_EDU_INFO_UP_DATE,
                    case when SUBSTR(IS_RPT,5,1) = '1' then G_EMP_STATUS else NULL end G_EMP_STATUS,
                    case when SUBSTR(IS_RPT,5,1) = '1' then G_CPN_NAME else NULL end G_CPN_NAME,
                    case when SUBSTR(IS_RPT,5,1) = '1' then G_CPN_TYPE else NULL end G_CPN_TYPE,
                    case when SUBSTR(IS_RPT,5,1) = '1' then G_INDUSTRY else NULL end G_INDUSTRY,
                    case when SUBSTR(IS_RPT,5,1) = '1' then G_CPN_ADDR else NULL end G_CPN_ADDR,
                    case when SUBSTR(IS_RPT,5,1) = '1' then G_CPN_PC else NULL end G_CPN_PC,
                    case when SUBSTR(IS_RPT,5,1) = '1' then G_CPN_DIST else NULL end G_CPN_DIST,
                    case when SUBSTR(IS_RPT,5,1) = '1' then G_CPN_TEL else NULL end G_CPN_TEL,
                    case when SUBSTR(IS_RPT,5,1) = '1' then G_OCCUPATION else NULL end G_OCCUPATION,
                    case when SUBSTR(IS_RPT,5,1) = '1' then G_TITLE else NULL end G_TITLE,
                    case when SUBSTR(IS_RPT,5,1) = '1' then G_TECH_TITLE else NULL end G_TECH_TITLE,
                    case when SUBSTR(IS_RPT,5,1) = '1' then G_WORK_START_DATE else NULL end G_WORK_START_DATE,
                    case when SUBSTR(IS_RPT,5,1) = '1' then G_OCTPN_INFO_UP_DATE else NULL end G_OCTPN_INFO_UP_DATE,
                    case when SUBSTR(IS_RPT,6,1) = '1' then H_RESI_STATUS else NULL end H_RESI_STATUS,
                    case when SUBSTR(IS_RPT,6,1) = '1' then H_RESI_ADDR else NULL end H_RESI_ADDR,
                    case when SUBSTR(IS_RPT,6,1) = '1' then H_RESI_PC else NULL end H_RESI_PC,
                    case when SUBSTR(IS_RPT,6,1) = '1' then H_RESI_DIST else NULL end H_RESI_DIST,
                    case when SUBSTR(IS_RPT,6,1) = '1' then H_HOME_TEL else NULL end H_HOME_TEL,
                    case when SUBSTR(IS_RPT,6,1) = '1' then H_RESI_INFO_UP_DATE else NULL end H_RESI_INFO_UP_DATE,
                    case when SUBSTR(IS_RPT,7,1) = '1' then I_MAIL_ADDR else NULL end I_MAIL_ADDR,
                    case when SUBSTR(IS_RPT,7,1) = '1' then I_MAIL_PC else NULL end I_MAIL_PC,
                    case when SUBSTR(IS_RPT,7,1) = '1' then I_MAIL_DIST else NULL end I_MAIL_DIST,
                    case when SUBSTR(IS_RPT,7,1) = '1' then I_MLG_INFO_UP_DATE else NULL end I_MLG_INFO_UP_DATE
                FROM
                    MBT_110_HIS
                        WHERE DATA_STATUS='23' AND HIS_DATE=V_NOW_DATE AND B_RPT_DATE_CODE !='99' AND IS_RPT IS NOT NULL
                 ) TMP
        LEFT JOIN
            MBT_110_HIS HIS
        ON
            TMP.DATA_ID=HIS.DATA_ID) SOURCE
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
        TARGET.IS_RPT,
        TARGET.ODS_DATA_ID,
        TARGET.RPT_DATE,
        TARGET.RPT_TIME,
        TARGET.ROW_NUM
    )
    VALUES
    (
        GET_DATA_ID(V_NOW_DATE),
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
        SOURCE.REMARKS,
        SOURCE.CHECK_FLAG,
        SOURCE.CHECK_DESC,
        SOURCE.CHECK_ERR_TYPE,
        SOURCE.NEXT_ACTION,
        '24',
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
        SOURCE.IS_RPT,
        SOURCE.DATA_ID,
        V_NOW_DATE,
        V_NOW_TIME,
        GET_ROW_NUM( SOURCE.ORG_ID,'110')
    );
    --∏¸–¬¿˙ ∑±Ìµƒdata-status
update mbt_110_his set data_status='25' where data_status='23' and his_date=V_NOW_DATE ;
COMMIT;

--∏¸–¬÷˜±Ìµƒ≤ª–Ë“™±®ÀÕµƒ∂Œ£ø
--≤Â»Î◊”±Ì
MERGE
INTO
    MBT_110_C_RPT TARGET
USING
    (
        SELECT
            C.DATA_ID,
            A.DATA_ID PDATA_ID,
            A.IS_RPT,
            C.ALIAS,
            C.OTH_ID_TYPE,
            C.OTH_ID_NUM,
            C.ID_INFO_UPDATE,
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
            C.ID_INFO_UP_DATE
        FROM
            MBT_110_RPT A
        LEFT JOIN
            MBT_110_C_HIS C
        ON
            C.PDATA_ID=A.ODS_DATA_ID
        WHERE
            A.DATA_STATUS='24'
        AND A.RPT_DATE=V_NOW_DATE
        AND SUBSTR(A.IS_RPT,INSTR(A.IS_RPT,'|')+1,1)='1' ) SOURCE
ON
    (TARGET.DATA_ID = SOURCE.DATA_ID)
WHEN NOT MATCHED
    THEN
INSERT
    (
        TARGET.DATA_ID,
        TARGET.PDATA_ID,
        TARGET.ALIAS,
        TARGET.OTH_ID_TYPE,
        TARGET.OTH_ID_NUM,
        TARGET.ID_INFO_UPDATE,
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
        TARGET.ID_INFO_UP_DATE,
        TARGET.ODS_DATA_ID,
        TARGET.RPT_DATE,
        TARGET.RPT_TIME
    )
    VALUES
    (
        GET_DATA_ID(V_NOW_DATE),
        SOURCE.PDATA_ID,
        SOURCE.ALIAS,
        SOURCE.OTH_ID_TYPE,
        SOURCE.OTH_ID_NUM,
        SOURCE.ID_INFO_UPDATE,
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
prompt Creating procedure SYNC_HIS_TO_RPT_120
prompt ======================================
prompt
CREATE OR REPLACE PROCEDURE "SYNC_HIS_TO_RPT_120"(ERRCODE  OUT VARCHAR,
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
    MBT_120_RPT
WHERE
    RPT_DATE=V_NOW_DATE and DATA_STATUS='24';
    DELETE FROM MBT_ROW_NUM WHERE TYPE='120';

COMMIT;
--≤Â»Î÷˜±Ì
MERGE
INTO
    MBT_120_RPT TARGET
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
            FAM_MEM_NAME,
            FAM_MEM_CET_TYPE,
            FAM_MEM_CERT_NUM,
            FAM_REL,
            FAM_RELA_ASS_FLAG,
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
            RSV5
        FROM
            MBT_120_HIS A
        WHERE
            A.DATA_STATUS='23'
        AND A.INF_REC_TYPE !='99'
        AND SUBSTR(A.IS_RPT,0,1)='1' ) SOURCE
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
        TARGET.RPT_DATE,
        TARGET.RPT_TIME,
        TARGET.ROW_NUM
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
        SOURCE.DATA_DESC,
        SOURCE.REMARKS,
        SOURCE.CHECK_FLAG,
        SOURCE.CHECK_DESC,
        SOURCE.CHECK_ERR_TYPE,
        SOURCE.NEXT_ACTION,
        '24',
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
        GET_ROW_NUM( SOURCE.ORG_ID,'120')
    );
COMMIT;
update mbt_120_his set data_status='25' where data_status='23' and his_date=V_NOW_DATE;
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
prompt Creating procedure SYNC_HIS_TO_RPT_130
prompt ======================================
prompt
CREATE OR REPLACE PROCEDURE "SYNC_HIS_TO_RPT_130"(ERRCODE  OUT VARCHAR,
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
    MBT_130_RPT
WHERE
    RPT_DATE=V_NOW_DATE and DATA_STATUS='24';
    DELETE FROM MBT_ROW_NUM WHERE TYPE='130';

COMMIT;
--≤Â»Î÷˜±Ì
MERGE
INTO
    MBT_130_RPT TARGET
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
            RSV5
        FROM
            MBT_130_HIS A
        WHERE
            A.DATA_STATUS='23'
        AND A.INF_REC_TYPE !='99'
        AND SUBSTR(A.IS_RPT,0,1)='1' ) SOURCE
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
        TARGET.RPT_DATE,
        TARGET.RPT_TIME,
        TARGET.ROW_NUM

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
        SOURCE.DATA_DESC,
        SOURCE.REMARKS,
        SOURCE.CHECK_FLAG,
        SOURCE.CHECK_DESC,
        SOURCE.CHECK_ERR_TYPE,
        SOURCE.NEXT_ACTION,
        '24',
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
         GET_ROW_NUM( SOURCE.ORG_ID,'130')
    );

COMMIT;
update mbt_130_his set data_status='25' where data_status='23' and his_date=V_NOW_DATE;
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
prompt Creating procedure SYNC_HIS_TO_RPT_140
prompt ======================================
prompt
CREATE OR REPLACE PROCEDURE "SYNC_HIS_TO_RPT_140"(ERRCODE  OUT VARCHAR,
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
    MBT_140_RPT
WHERE
    RPT_DATE=V_NOW_DATE and DATA_STATUS='24';
    DELETE FROM MBT_ROW_NUM WHERE TYPE='140';

COMMIT;
--≤Â»Î÷˜±Ì
MERGE
INTO
    MBT_140_RPT TARGET
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
            MBT_140_HIS A
        WHERE
            A.DATA_STATUS='23'
        AND A.INF_REC_TYPE !='99'
        AND SUBSTR(A.IS_RPT,0,1)='1' ) SOURCE
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
        TARGET.IS_RPT,
        TARGET.ODS_DATA_ID,
        TARGET.RPT_DATE,
        TARGET.RPT_TIME,
        TARGET.ROW_NUM
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
        SOURCE.DATA_DESC,
        SOURCE.REMARKS,
        SOURCE.CHECK_FLAG,
        SOURCE.CHECK_DESC,
        SOURCE.CHECK_ERR_TYPE,
        SOURCE.NEXT_ACTION,
        '24',
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
        SOURCE.DATA_ID,
        V_NOW_DATE,
        V_NOW_TIME,
        GET_ROW_NUM( SOURCE.ORG_ID,'140')
    );
COMMIT;
update mbt_140_his set data_status='25' where data_status='23' and his_date=V_NOW_DATE;
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
prompt Creating procedure SYNC_HIS_TO_RPT_210
prompt ======================================
prompt
CREATE OR REPLACE PROCEDURE "SYNC_HIS_TO_RPT_210"(ERRCODE  OUT VARCHAR,
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

DELETE FROM MBT_210_D_RPT
 WHERE pdata_id IN (select data_id
                     from MBT_210_RPT
                    where RPT_DATE = V_NOW_DATE
                      and data_status = '24'
                     );
DELETE FROM MBT_210_E_RPT
 WHERE  pdata_id IN (select data_id
                     from MBT_210_RPT
                    where RPT_DATE = V_NOW_DATE
                      and data_status = '24'
                     );
DELETE FROM MBT_210_K_RPT
 WHERE pdata_id IN (select data_id
                     from MBT_210_RPT
                    where RPT_DATE = V_NOW_DATE
                      and data_status = '24'
                      );
DELETE FROM MBT_210_RPT
 WHERE RPT_DATE = V_NOW_DATE
   and DATA_STATUS = '24';
    DELETE FROM MBT_ROW_NUM WHERE TYPE='210';

COMMIT;
--1.≤Â»Î÷˜±Ì
MERGE
INTO
    MBT_210_RPT TARGET
USING
    (
        SELECT
            TMP.B_INF_REC_TYPE,
            TMP.B_ACCT_TYPE,
            TMP.B_ACCT_CODE,
            TMP.B_RPT_DATE,
            TMP.B_RPT_DATE_CODE,
            TMP.B_NAME,
            TMP.B_ID_TYPE,
            TMP.B_ID_NUM,
            TMP.B_MNGMT_ORG_CODE,
            ---–¬‘ˆB_LOAN_CON_CODE||B_FIRST_HOU_LOAN_FLAG
            TMP.C_LOAN_CON_CODE,
            TMP.C_FIRST_HOU_LOAN_FLAG,
            TMP.C_BUSI_LINES,
            TMP.C_BUSI_DTL_LINES,
            TMP.C_OPEN_DATE,
            TMP.C_CY,
            TMP.C_ACCT_CRED_LINE_AMT_LCY,
            TMP.C_ACCT_CRED_LINE_AMT,
            TMP.C_LOAN_AMT_LCY,
            TMP.C_LOAN_AMT,
            TMP.C_FLAG,
            TMP.C_DUE_DATE,
            TMP.C_REPAY_MODE,
            TMP.C_REPAY_FREQCY,
            TMP.C_REPAY_PRD,
            TMP.C_APPLY_BUSI_DIST,
            TMP.C_GUAR_MODE,
            TMP.C_OTH_REPY_GUAR_WAY,
            TMP.C_ASSET_TRAND_FLAG,
            TMP.C_FUND_SOU,
            TMP.C_LOAN_FORM,
            TMP.C_CREDIT_ID,
            TMP.F_MCC,
            TMP.G_INIT_CRED_NAME,
            TMP.G_INIT_CRED_ORG_NM,
            TMP.G_ORIG_DBT_CATE,
            TMP.G_INIT_RPY_STS,
            TMP.H_MONTH,
            TMP.H_SETT_DATE,
            TMP.H_ACCT_STATUS,
            TMP.H_ACCT_BAL_LCY,
            TMP.H_ACCT_BAL,
            TMP.H_PRID_ACCT_BAL_LCY,
            TMP.H_PRID_ACCT_BAL,
            TMP.H_USED_AMT_LCY,
            TMP.H_USED_AMT,
            TMP.H_NOTLSU_BAL_LCY,
            TMP.H_NOTLSU_BAL,
            TMP.H_REM_REP_PRD,
            TMP.H_FIVE_CATE,
            TMP.H_FIVE_CATE_ADJ_DATE,
            TMP.H_RPY_STATUS,
            TMP.H_RPY_PRCT,
            TMP.H_OVERD_PRD,
            TMP.H_TOT_OVERD_LCY,
            TMP.H_TOT_OVERD,
            TMP.H_OVAER_PRINC_LCY,
            TMP.H_OVAER_PRINC,
            TMP.H_OVERD31_60PRINC_LCY,
            TMP.H_OVERD31_60PRINC,
            TMP.H_OVERD61_90PRINC_LCY,
            TMP.H_OVERD61_90PRINC,
            TMP.H_OVERD91_180PRINC_LCY,
            TMP.H_OVERD91_180PRINC,
            TMP.H_OVERD_PRINC180_LCY,
            TMP.H_OVERD_PRINC180,
            TMP.H_OVERD_RAW_BA_OVE180_LCY,
            TMP.H_OVERD_RAW_BA_OVE180,
            TMP.H_CUR_RPY_AMT_LCY,
            TMP.H_CUR_RPY_AMT,
            TMP.H_ACT_RPY_AMT_LCY,
            TMP.H_ACT_RPY_AMT,
            TMP.H_LAT_RPY_DATE,
            TMP.H_CLOSE_DATE,
            TMP.I_SPEC_LINE_LCY,
            TMP.I_SPEC_LINE,
            TMP.I_SPEC_EFCT_DATE,
            TMP.I_SPEC_END_DATE,
            TMP.I_USED_INST_AMT_LCY,
            TMP.I_USED_INST_AMT,
            TMP.J_ACCT_STATUS,
            TMP.J_ACCT_BAL_LCY,
            TMP.J_ACCT_BAL,
            TMP.J_FIVE_CATE,
            TMP.J_FIVE_CATE_ADJ_DATE,
            TMP.J_REM_REP_PRD,
            TMP.J_RPY_STATUS,
            TMP.J_OVERD_PRD,
            TMP.J_TOT_OVERD_LCY,
            TMP.J_TOT_OVERD,
            TMP.J_LAT_RPY_AMT_LCY,
            TMP.J_LAT_RPY_AMT,
            TMP.J_LAT_RPY_DATE,
            TMP.J_CLOSE_DATE,
            HIS.DATA_ID,
            HIS.DATA_DATE,
            HIS.CORP_ID,
            HIS.ORG_ID,
            HIS.GROUP_ID,
            HIS.INQ_ORG_ID,
            HIS.INQ_GROUP_ID,
            HIS.REF_NO,
            HIS.DATA_DESC,
            HIS.REMARKS,
            HIS.CHECK_FLAG,
            HIS.CHECK_DESC,
            HIS.CHECK_ERR_TYPE,
            HIS.NEXT_ACTION,
            HIS.DATA_STATUS,
            HIS.DATA_FLAG,
            HIS.DATA_SOURCE,
            HIS.DATA_VERSION,
            HIS.DATA_REJ_DESC,
            HIS.DATA_DEL_DESC,
            HIS.DATA_CRT_USER,
            HIS.DATA_CRT_DATE,
            HIS.DATA_CRT_TIME,
            HIS.DATA_CHG_USER,
            HIS.DATA_CHG_DATE,
            HIS.DATA_CHG_TIME,
            HIS.DATA_APV_USER,
            HIS.DATA_APV_DATE,
            HIS.DATA_APV_TIME,
            HIS.RSV1,
            HIS.RSV2,
            HIS.RSV3,
            HIS.RSV4,
            HIS.RSV5,
            HIS.IS_RPT,
            TMP.CUST_NO
        FROM
            (
                SELECT
                DATA_ID,
                            B_INF_REC_TYPE,
                            CASE WHEN SUBSTR(IS_RPT,0,1) = '1' THEN CUST_NO ELSE NULL END CUST_NO,

                            CASE WHEN SUBSTR(IS_RPT,0,1) = '1' THEN B_ACCT_TYPE ELSE NULL END B_ACCT_TYPE,
                            CASE WHEN SUBSTR(IS_RPT,0,1) = '1' THEN B_ACCT_CODE ELSE NULL END B_ACCT_CODE,
                            CASE WHEN SUBSTR(IS_RPT,0,1) = '1' THEN B_RPT_DATE ELSE NULL END B_RPT_DATE,
                            CASE WHEN SUBSTR(IS_RPT,0,1) = '1' THEN B_RPT_DATE_CODE ELSE NULL END B_RPT_DATE_CODE,
                            CASE WHEN SUBSTR(IS_RPT,0,1) = '1' THEN B_NAME ELSE NULL END B_NAME,
                            CASE WHEN SUBSTR(IS_RPT,0,1) = '1' THEN B_ID_TYPE ELSE NULL END B_ID_TYPE,
                            CASE WHEN SUBSTR(IS_RPT,0,1) = '1' THEN B_ID_NUM ELSE NULL END B_ID_NUM,
                            CASE WHEN SUBSTR(IS_RPT,0,1) = '1' THEN B_MNGMT_ORG_CODE ELSE NULL END B_MNGMT_ORG_CODE,
                             ---–¬‘ˆB_LOAN_CON_CODE||B_FIRST_HOU_LOAN_FLAG
                            CASE WHEN SUBSTR(IS_RPT,0,1) = '1' THEN C_LOAN_CON_CODE ELSE NULL END C_LOAN_CON_CODE,
                            CASE WHEN SUBSTR(IS_RPT,0,1) = '1' THEN C_FIRST_HOU_LOAN_FLAG ELSE NULL END C_FIRST_HOU_LOAN_FLAG,
                            CASE WHEN SUBSTR(IS_RPT,2,1) = '1' THEN C_BUSI_LINES ELSE NULL END C_BUSI_LINES,
                            CASE WHEN SUBSTR(IS_RPT,2,1) = '1' THEN C_BUSI_DTL_LINES ELSE NULL END C_BUSI_DTL_LINES,
                            CASE WHEN SUBSTR(IS_RPT,2,1) = '1' THEN C_OPEN_DATE ELSE NULL END C_OPEN_DATE,
                            CASE WHEN SUBSTR(IS_RPT,2,1) = '1' THEN C_CY ELSE NULL END C_CY,
                            CASE WHEN SUBSTR(IS_RPT,2,1) = '1' THEN C_ACCT_CRED_LINE_AMT_LCY ELSE NULL END C_ACCT_CRED_LINE_AMT_LCY,
                            CASE WHEN SUBSTR(IS_RPT,2,1) = '1' THEN C_ACCT_CRED_LINE_AMT ELSE NULL END C_ACCT_CRED_LINE_AMT,
                            CASE WHEN SUBSTR(IS_RPT,2,1) = '1' THEN C_LOAN_AMT_LCY ELSE NULL END C_LOAN_AMT_LCY,
                            CASE WHEN SUBSTR(IS_RPT,2,1) = '1' THEN C_LOAN_AMT ELSE NULL END C_LOAN_AMT,
                            CASE WHEN SUBSTR(IS_RPT,2,1) = '1' THEN C_FLAG ELSE NULL END C_FLAG,
                            CASE WHEN SUBSTR(IS_RPT,2,1) = '1' THEN C_DUE_DATE ELSE NULL END C_DUE_DATE,
                            CASE WHEN SUBSTR(IS_RPT,2,1) = '1' THEN C_REPAY_MODE ELSE NULL END C_REPAY_MODE,
                            CASE WHEN SUBSTR(IS_RPT,2,1) = '1' THEN C_REPAY_FREQCY ELSE NULL END C_REPAY_FREQCY,
                            CASE WHEN SUBSTR(IS_RPT,2,1) = '1' THEN C_REPAY_PRD ELSE NULL END C_REPAY_PRD,
                            CASE WHEN SUBSTR(IS_RPT,2,1) = '1' THEN C_APPLY_BUSI_DIST ELSE NULL END C_APPLY_BUSI_DIST,
                            CASE WHEN SUBSTR(IS_RPT,2,1) = '1' THEN C_GUAR_MODE ELSE NULL END C_GUAR_MODE,
                            CASE WHEN SUBSTR(IS_RPT,2,1) = '1' THEN C_OTH_REPY_GUAR_WAY ELSE NULL END C_OTH_REPY_GUAR_WAY,
                            CASE WHEN SUBSTR(IS_RPT,2,1) = '1' THEN C_ASSET_TRAND_FLAG ELSE NULL END C_ASSET_TRAND_FLAG,
                            CASE WHEN SUBSTR(IS_RPT,2,1) = '1' THEN C_FUND_SOU ELSE NULL END C_FUND_SOU,
                            CASE WHEN SUBSTR(IS_RPT,2,1) = '1' THEN C_LOAN_FORM ELSE NULL END C_LOAN_FORM,
                            CASE WHEN SUBSTR(IS_RPT,2,1) = '1' THEN C_CREDIT_ID ELSE NULL END C_CREDIT_ID,
                            CASE WHEN SUBSTR(IS_RPT,3,1) = '1' THEN F_MCC ELSE NULL END F_MCC,
                CASE WHEN SUBSTR(IS_RPT,4,1) = '1' THEN G_INIT_CRED_NAME    ELSE NULL END   G_INIT_CRED_NAME,
                CASE WHEN SUBSTR(IS_RPT,4,1) = '1' THEN G_INIT_CRED_ORG_NM  ELSE NULL END   G_INIT_CRED_ORG_NM,
                CASE WHEN SUBSTR(IS_RPT,4,1) = '1' THEN G_ORIG_DBT_CATE ELSE NULL END   G_ORIG_DBT_CATE,
                CASE WHEN SUBSTR(IS_RPT,4,1) = '1' THEN G_INIT_RPY_STS  ELSE NULL END   G_INIT_RPY_STS,
                CASE WHEN SUBSTR(IS_RPT,5,1) = '1' THEN H_MONTH                 ELSE NULL END    H_MONTH,
                CASE WHEN SUBSTR(IS_RPT,5,1) = '1' THEN H_SETT_DATE             ELSE NULL END    H_SETT_DATE,
                CASE WHEN SUBSTR(IS_RPT,5,1) = '1' THEN H_ACCT_STATUS           ELSE NULL END    H_ACCT_STATUS,
                CASE WHEN SUBSTR(IS_RPT,5,1) = '1' THEN H_ACCT_BAL_LCY              ELSE NULL END    H_ACCT_BAL_LCY ,
                CASE WHEN SUBSTR(IS_RPT,5,1) = '1' THEN H_ACCT_BAL              ELSE NULL END    H_ACCT_BAL ,
                    CASE WHEN SUBSTR(IS_RPT,5,1) = '1' THEN H_PRID_ACCT_BAL_LCY         ELSE NULL END    H_PRID_ACCT_BAL_LCY,
                    CASE WHEN SUBSTR(IS_RPT,5,1) = '1' THEN H_PRID_ACCT_BAL         ELSE NULL END    H_PRID_ACCT_BAL,
                CASE WHEN SUBSTR(IS_RPT,5,1) = '1' THEN H_USED_AMT_LCY              ELSE NULL END    H_USED_AMT_LCY ,
                CASE WHEN SUBSTR(IS_RPT,5,1) = '1' THEN H_USED_AMT              ELSE NULL END    H_USED_AMT ,
                CASE WHEN SUBSTR(IS_RPT,5,1) = '1' THEN H_NOTLSU_BAL_LCY            ELSE NULL END    H_NOTLSU_BAL_LCY ,
                CASE WHEN SUBSTR(IS_RPT,5,1) = '1' THEN H_NOTLSU_BAL            ELSE NULL END    H_NOTLSU_BAL ,
                CASE WHEN SUBSTR(IS_RPT,5,1) = '1' THEN H_REM_REP_PRD           ELSE NULL END    H_REM_REP_PRD,
                             CASE WHEN SUBSTR(IS_RPT,5,1) = '1' THEN    H_FIVE_CATE             ELSE NULL END    H_FIVE_CATE,
                             CASE WHEN SUBSTR(IS_RPT,5,1) = '1' THEN    H_FIVE_CATE_ADJ_DATE    ELSE NULL END    H_FIVE_CATE_ADJ_DATE,
                        CASE WHEN SUBSTR(IS_RPT,5,1) = '1' THEN H_RPY_STATUS            ELSE NULL END    H_RPY_STATUS ,
                        CASE WHEN SUBSTR(IS_RPT,5,1) = '1' THEN H_RPY_PRCT              ELSE NULL END    H_RPY_PRCT ,
                        CASE WHEN SUBSTR(IS_RPT,5,1) = '1' THEN H_OVERD_PRD             ELSE NULL END    H_OVERD_PRD,
                        CASE WHEN SUBSTR(IS_RPT,5,1) = '1' THEN H_TOT_OVERD_LCY             ELSE NULL END    H_TOT_OVERD_LCY,
                        CASE WHEN SUBSTR(IS_RPT,5,1) = '1' THEN H_TOT_OVERD             ELSE NULL END    H_TOT_OVERD,
                        CASE WHEN SUBSTR(IS_RPT,5,1) = '1' THEN H_OVAER_PRINC_LCY           ELSE NULL END    H_OVAER_PRINC_LCY,
                        CASE WHEN SUBSTR(IS_RPT,5,1) = '1' THEN H_OVAER_PRINC           ELSE NULL END    H_OVAER_PRINC,
                        CASE WHEN SUBSTR(IS_RPT,5,1) = '1' THEN H_OVERD31_60PRINC_LCY       ELSE NULL END    H_OVERD31_60PRINC_LCY   ,
                        CASE WHEN SUBSTR(IS_RPT,5,1) = '1' THEN H_OVERD31_60PRINC       ELSE NULL END    H_OVERD31_60PRINC   ,
                        CASE WHEN SUBSTR(IS_RPT,5,1) = '1' THEN H_OVERD61_90PRINC_LCY       ELSE NULL END    H_OVERD61_90PRINC_LCY   ,
                        CASE WHEN SUBSTR(IS_RPT,5,1) = '1' THEN H_OVERD61_90PRINC       ELSE NULL END    H_OVERD61_90PRINC   ,
                        CASE WHEN SUBSTR(IS_RPT,5,1) = '1' THEN H_OVERD91_180PRINC_LCY      ELSE NULL END    H_OVERD91_180PRINC_LCY  ,
                        CASE WHEN SUBSTR(IS_RPT,5,1) = '1' THEN H_OVERD91_180PRINC      ELSE NULL END    H_OVERD91_180PRINC  ,
                        CASE WHEN SUBSTR(IS_RPT,5,1) = '1' THEN H_OVERD_PRINC180_LCY        ELSE NULL END    H_OVERD_PRINC180_LCY    ,
                        CASE WHEN SUBSTR(IS_RPT,5,1) = '1' THEN H_OVERD_PRINC180        ELSE NULL END    H_OVERD_PRINC180    ,
                        CASE WHEN SUBSTR(IS_RPT,5,1) = '1' THEN H_OVERD_RAW_BA_OVE180_LCY   ELSE NULL END    H_OVERD_RAW_BA_OVE180_LCY,
                        CASE WHEN SUBSTR(IS_RPT,5,1) = '1' THEN H_OVERD_RAW_BA_OVE180   ELSE NULL END    H_OVERD_RAW_BA_OVE180,
                        CASE WHEN SUBSTR(IS_RPT,5,1) = '1' THEN H_CUR_RPY_AMT_LCY           ELSE NULL END    H_CUR_RPY_AMT_LCY,
                        CASE WHEN SUBSTR(IS_RPT,5,1) = '1' THEN H_CUR_RPY_AMT           ELSE NULL END    H_CUR_RPY_AMT,
                        CASE WHEN SUBSTR(IS_RPT,5,1) = '1' THEN H_ACT_RPY_AMT_LCY           ELSE NULL END    H_ACT_RPY_AMT_LCY,
                        CASE WHEN SUBSTR(IS_RPT,5,1) = '1' THEN H_ACT_RPY_AMT           ELSE NULL END    H_ACT_RPY_AMT,
                        CASE WHEN SUBSTR(IS_RPT,5,1) = '1' THEN H_LAT_RPY_DATE          ELSE NULL END    H_LAT_RPY_DATE ,
                        CASE WHEN SUBSTR(IS_RPT,5,1) = '1' THEN H_CLOSE_DATE          ELSE NULL END  H_CLOSE_DATE,
                            CASE WHEN SUBSTR(IS_RPT,6,1) = '1' THEN I_SPEC_LINE_LCY     ELSE NULL END   I_SPEC_LINE_LCY,
                            CASE WHEN SUBSTR(IS_RPT,6,1) = '1' THEN I_SPEC_LINE     ELSE NULL END   I_SPEC_LINE,
                            CASE WHEN SUBSTR(IS_RPT,6,1) = '1' THEN I_SPEC_EFCT_DATE    ELSE NULL END   I_SPEC_EFCT_DATE,
                            CASE WHEN SUBSTR(IS_RPT,6,1) = '1' THEN I_SPEC_END_DATE ELSE NULL END   I_SPEC_END_DATE,
                            CASE WHEN SUBSTR(IS_RPT,6,1) = '1' THEN I_USED_INST_AMT_LCY     ELSE NULL END   I_USED_INST_AMT_LCY,
                            CASE WHEN SUBSTR(IS_RPT,6,1) = '1' THEN I_USED_INST_AMT     ELSE NULL END   I_USED_INST_AMT,
                            CASE WHEN SUBSTR(IS_RPT,7,1) = '1' THEN  J_ACCT_STATUS  ELSE NULL END    J_ACCT_STATUS,
                            CASE WHEN SUBSTR(IS_RPT,7,1) = '1' THEN  J_ACCT_BAL_LCY     ELSE NULL END    J_ACCT_BAL_LCY,
                            CASE WHEN SUBSTR(IS_RPT,7,1) = '1' THEN  J_ACCT_BAL     ELSE NULL END    J_ACCT_BAL,
                            CASE WHEN SUBSTR(IS_RPT,7,1) = '1' THEN  J_FIVE_CATE    ELSE NULL END    J_FIVE_CATE,
                            CASE WHEN SUBSTR(IS_RPT,7,1) = '1' THEN  J_FIVE_CATE_ADJ_DATE   ELSE NULL END    J_FIVE_CATE_ADJ_DATE£¨
                            CASE WHEN SUBSTR(IS_RPT,7,1) = '1' THEN  J_REM_REP_PRD  ELSE NULL END    J_REM_REP_PRD,
                            CASE WHEN SUBSTR(IS_RPT,7,1) = '1' THEN  J_RPY_STATUS   ELSE NULL END    J_RPY_STATUS,
                            CASE WHEN SUBSTR(IS_RPT,7,1) = '1' THEN  J_OVERD_PRD    ELSE NULL END    J_OVERD_PRD,
                            CASE WHEN SUBSTR(IS_RPT,7,1) = '1' THEN  J_TOT_OVERD_LCY    ELSE NULL END    J_TOT_OVERD_LCY,
                            CASE WHEN SUBSTR(IS_RPT,7,1) = '1' THEN  J_TOT_OVERD    ELSE NULL END    J_TOT_OVERD,
                            CASE WHEN SUBSTR(IS_RPT,7,1) = '1' THEN  J_LAT_RPY_AMT_LCY  ELSE NULL END    J_LAT_RPY_AMT_LCY,
                            CASE WHEN SUBSTR(IS_RPT,7,1) = '1' THEN  J_LAT_RPY_AMT  ELSE NULL END    J_LAT_RPY_AMT,
                            CASE WHEN SUBSTR(IS_RPT,7,1) = '1' THEN  J_LAT_RPY_DATE ELSE NULL END    J_LAT_RPY_DATE£¨
                            CASE WHEN SUBSTR(IS_RPT,7,1) = '1' THEN  J_CLOSE_DATE   ELSE NULL END    J_CLOSE_DATE
                           FROM
                            MBT_210_HIS
                        WHERE
                            DATA_STATUS='23'
                        AND HIS_DATE=V_NOW_DATE
                        AND B_RPT_DATE_CODE !='99'
                        ) TMP
        LEFT JOIN
            MBT_210_HIS HIS
        ON
            TMP.DATA_ID=HIS.DATA_ID) SOURCE
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
         ---–¬‘ˆB_LOAN_CON_CODE||B_FIRST_HOU_LOAN_FLAG
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
        TARGET.IS_RPT,
        TARGET.ODS_DATA_ID,
        TARGET.RPT_DATE,
        TARGET.RPT_TIME,
        TARGET.ROW_NUM,
        TARGET.CUST_NO
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
       ---–¬‘ˆB_LOAN_CON_CODE||B_FIRST_HOU_LOAN_FLAG
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
        '24',
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
        SOURCE.DATA_ID,
        V_NOW_DATE,
        V_NOW_TIME,
        GET_ROW_NUM( SOURCE.ORG_ID,'210'),
        SOURCE.CUST_NO
    );
COMMIT;
update mbt_210_his set data_status='25' where data_status='23' and his_date=V_NOW_DATE;
COMMIT;

--≤Â»Î◊”±Ì
MERGE
INTO
    MBT_210_D_RPT TARGET
USING
    (
        SELECT
            C.DATA_ID,
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
            C.ODS_DATA_ID,
            C.HIS_DATE,
            C.HIS_DATE_TIME,
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
            A.B_ACCT_CODE
        FROM
            MBT_210_RPT A
        RIGHT JOIN
            MBT_210_D_HIS C
        ON
            C.PDATA_ID=A.ODS_DATA_ID
        WHERE
            A.DATA_STATUS='24'
        AND A.RPT_DATE=V_NOW_DATE
        AND SUBSTR(A.IS_RPT,INSTR(A.IS_RPT,'|')+1,1)='1' ) SOURCE
ON
    (
        TARGET.DATA_ID = SOURCE.DATA_ID)
WHEN NOT MATCHED
    THEN
INSERT
    (
        TARGET.DATA_ID,
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
        TARGET.RPT_DATE,
        TARGET.RPT_TIME,
        TARGET.B_ACCT_CODE
    )
    VALUES
    (
        GET_DATA_ID(V_NOW_DATE),
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
        SOURCE.B_ACCT_CODE
    );
MERGE
INTO
    MBT_210_E_RPT TARGET
USING
    (
        SELECT
            C.DATA_ID,
            A.DATA_ID PDATA_ID,
            C.E_CCC,
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
            A.B_ACCT_CODE
        FROM
            MBT_210_RPT A
        LEFT JOIN
            MBT_210_E_HIS C
        ON
            C.PDATA_ID=A.ODS_DATA_ID
        WHERE
            A.DATA_STATUS='24'
        AND A.RPT_DATE=V_NOW_DATE
        AND SUBSTR(A.IS_RPT,INSTR(A.IS_RPT,'|')+2,1)='1' ) SOURCE
ON
    (
        TARGET.DATA_ID = SOURCE.DATA_ID)
WHEN NOT MATCHED
    THEN
INSERT
    (
        TARGET.DATA_ID,
        TARGET.PDATA_ID,
        TARGET.E_CCC,
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
        TARGET.RPT_DATE,
        TARGET.RPT_TIME,
        TARGET.B_ACCT_CODE
    )
    VALUES
    (
        GET_DATA_ID(V_NOW_DATE),
        SOURCE.PDATA_ID,
        SOURCE.E_CCC,
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
        SOURCE.B_ACCT_CODE
    );
MERGE
INTO
    MBT_210_K_RPT TARGET
USING
    (
        SELECT
            C.DATA_ID,
            A.DATA_ID PDATA_ID,
            C.REF_NO,
            C.K_CHAN_TRAN_TYPE,
            C.K_TRAN_DATE,
            C.K_TRAN_AMT_ORG,
            C.K_TRAN_AMT,
            C.K_DUE_TRAN_MON,
            C.K_DET_INFO,
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
            A.B_ACCT_CODE
        FROM
            MBT_210_RPT A
        LEFT JOIN
            MBT_210_K_HIS C
        ON
            C.PDATA_ID=A.ODS_DATA_ID
        WHERE
            A.DATA_STATUS='24'
        AND A.RPT_DATE=V_NOW_DATE
        AND SUBSTR(A.IS_RPT,INSTR(A.IS_RPT,'|')+3,1)='1' ) SOURCE
ON
    (
        TARGET.DATA_ID = SOURCE.DATA_ID)
WHEN NOT MATCHED
    THEN
INSERT
    (
        TARGET.DATA_ID,
        TARGET.PDATA_ID,
        TARGET.REF_NO,
        TARGET.K_CHAN_TRAN_TYPE,
        TARGET.K_TRAN_DATE,
        TARGET.K_TRAN_AMT_ORG,
        TARGET.K_TRAN_AMT,
        TARGET.K_DUE_TRAN_MON,
        TARGET.K_DET_INFO,
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
        TARGET.RPT_DATE,
        TARGET.RPT_TIME,
        TARGET.B_ACCT_CODE
    )
    VALUES
    (
        GET_DATA_ID(V_NOW_DATE),
        SOURCE.PDATA_ID,
        SOURCE.REF_NO,
        SOURCE.K_CHAN_TRAN_TYPE,
        SOURCE.K_TRAN_DATE,
        SOURCE.K_TRAN_AMT_ORG,
        SOURCE.K_TRAN_AMT,
        SOURCE.K_DUE_TRAN_MON,
        SOURCE.K_DET_INFO,
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
        SOURCE.B_ACCT_CODE
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
prompt Creating procedure SYNC_HIS_TO_RPT_211
prompt ======================================
prompt
CREATE OR REPLACE PROCEDURE "SYNC_HIS_TO_RPT_211"(ERRCODE  OUT VARCHAR,
                                           ERRMSG  OUT VARCHAR) AS v_NOW_DATE CHAR(8);
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
    MBT_211_RPT
WHERE
    RPT_DATE=V_NOW_DATE and DATA_STATUS='24';
COMMIT;
--≤Â»Î÷˜±Ì
MERGE
INTO
    MBT_211_RPT target
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
            HIS_DATE,
            HIS_DATE_TIME,
            ODS_DATA_ID,
            IS_RPT
        FROM
            MBT_211_HIS
        WHERE
            DATA_STATUS='23'
            AND HIS_DATE=v_NOW_DATE
            AND IS_RPT='1') source
ON
    (
        target.data_id = source.data_id)
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
        TARGET.RPT_DATE,
        TARGET.RPT_TIME,
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
        '24',
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
update mbt_211_his set data_status='25' where data_status='23' and his_date=V_NOW_DATE AND IS_RPT='1';
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
prompt Creating procedure SYNC_HIS_TO_RPT_220
prompt ======================================
prompt
CREATE OR REPLACE PROCEDURE "SYNC_HIS_TO_RPT_220"(ERRCODE  OUT VARCHAR,
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
    MBT_220_C_RPT
WHERE --RPT_DATE=V_NOW_DATE AND
pdata_id IN (select data_id from MBT_220_RPT where RPT_DATE=V_NOW_DATE and data_status='24' );
DELETE
FROM
    MBT_220_RPT
WHERE
    RPT_DATE=V_NOW_DATE and DATA_STATUS='24';

DELETE FROM MBT_ROW_NUM WHERE TYPE='220';
COMMIT;
--1.≤Â»Î÷˜±Ì
MERGE
INTO
    MBT_220_RPT TARGET
USING
    (
        SELECT
            TMP.B_INF_REC_TYPE,
            TMP.B_CONTRACT_CODE,
            TMP.B_RPT_DATE,
            TMP.B_RPT_DATE_CODE,
            TMP.B_NAME,
            TMP.B_ID_TYPE,
            TMP.B_ID_NUM,
            TMP.B_MNGMT_ORG_CODE,
            TMP.B_CONTRACT_NO,
            TMP.D_CREDIT_LIM_TYPE,
            TMP.D_LIM_LOOP_FLG,
            TMP.D_CREDIT_LIM_LCY,
            TMP.D_CREDIT_LIM,
            TMP.D_CY,
            TMP.D_CON_EFF_DATE,
            TMP.D_CON_EXP_DATE,
            TMP.D_CON_STATUS,
            TMP.D_CREDIT_REST_LCY,
            TMP.D_CREDIT_REST,
            TMP.D_CREDIT_REST_CODE,
            TMP.F_DATA_DESC,
            HIS.DATA_ID,
            HIS.DATA_DATE,
            HIS.CORP_ID,
            HIS.ORG_ID,
            HIS.GROUP_ID,
            HIS.INQ_ORG_ID,
            HIS.INQ_GROUP_ID,
            HIS.CHECK_FLAG,
            HIS.CHECK_DESC,
            HIS.CHECK_ERR_TYPE,
            HIS.NEXT_ACTION,
            HIS.DATA_STATUS,
            HIS.DATA_FLAG,
            HIS.DATA_SOURCE,
            HIS.DATA_VERSION,
            HIS.DATA_REJ_DESC,
            HIS.DATA_DEL_DESC,
            HIS.DATA_CRT_USER,
            HIS.DATA_CRT_DATE,
            HIS.DATA_CRT_TIME,
            HIS.DATA_CHG_USER,
            HIS.DATA_CHG_DATE,
            HIS.DATA_CHG_TIME,
            HIS.DATA_APV_USER,
            HIS.DATA_APV_DATE,
            HIS.DATA_APV_TIME,
            HIS.RSV1,
            HIS.RSV2,
            HIS.RSV3,
            HIS.RSV4,
            HIS.RSV5,
            HIS.IS_RPT,
            HIS.CUST_NO,
            HIS.REMARKS
        FROM
            (
                SELECT
                   DATA_ID,
         B_INF_REC_TYPE,
         B_RPT_DATE_CODE,
                     CASE WHEN SUBSTR(IS_RPT,0,1) = '1' THEN B_CONTRACT_CODE ELSE NULL END B_CONTRACT_CODE,
                     CASE WHEN SUBSTR(IS_RPT,0,1) = '1' THEN B_RPT_DATE ELSE NULL END B_RPT_DATE,
                     CASE WHEN SUBSTR(IS_RPT,0,1) = '1' THEN B_NAME ELSE NULL END B_NAME,
                     CASE WHEN SUBSTR(IS_RPT,0,1) = '1' THEN B_ID_TYPE ELSE NULL END B_ID_TYPE,
                     CASE WHEN SUBSTR(IS_RPT,0,1) = '1' THEN B_ID_NUM ELSE NULL END B_ID_NUM,
                     CASE WHEN SUBSTR(IS_RPT,0,1) = '1' THEN B_MNGMT_ORG_CODE ELSE NULL END B_MNGMT_ORG_CODE,
                     CASE WHEN SUBSTR(IS_RPT,0,1) = '1' THEN B_CONTRACT_NO ELSE NULL END B_CONTRACT_NO,
                     CASE WHEN SUBSTR(IS_RPT,2,1) = '1' THEN D_CREDIT_LIM_TYPE ELSE NULL END D_CREDIT_LIM_TYPE,
                     CASE WHEN SUBSTR(IS_RPT,2,1) = '1' THEN D_LIM_LOOP_FLG ELSE NULL END D_LIM_LOOP_FLG,
                     CASE WHEN SUBSTR(IS_RPT,2,1) = '1' THEN D_CREDIT_LIM_LCY ELSE NULL END D_CREDIT_LIM_LCY,
                     CASE WHEN SUBSTR(IS_RPT,2,1) = '1' THEN D_CREDIT_LIM ELSE NULL END D_CREDIT_LIM,
                     CASE WHEN SUBSTR(IS_RPT,2,1) = '1' THEN D_CY ELSE NULL END D_CY,
                     CASE WHEN SUBSTR(IS_RPT,2,1) = '1' THEN D_CON_EFF_DATE ELSE NULL END D_CON_EFF_DATE,
                     CASE WHEN SUBSTR(IS_RPT,2,1) = '1' THEN D_CON_EXP_DATE ELSE NULL END D_CON_EXP_DATE,
                     CASE WHEN SUBSTR(IS_RPT,2,1) = '1' THEN D_CON_STATUS ELSE NULL END D_CON_STATUS,
                     CASE WHEN SUBSTR(IS_RPT,2,1) = '1' THEN D_CREDIT_REST_LCY ELSE NULL END D_CREDIT_REST_LCY,
                     CASE WHEN SUBSTR(IS_RPT,2,1) = '1' THEN D_CREDIT_REST ELSE NULL END D_CREDIT_REST,
                     CASE WHEN SUBSTR(IS_RPT,2,1) = '1' THEN D_CREDIT_REST_CODE ELSE NULL END D_CREDIT_REST_CODE,
                     CASE WHEN SUBSTR(IS_RPT,3,1) = '1' THEN F_DATA_DESC ELSE NULL END F_DATA_DESC
                      FROM MBT_220_HIS
                      WHERE DATA_STATUS='23'
                        AND HIS_DATE=V_NOW_DATE
                        AND B_RPT_DATE_CODE !='99'
                        AND IS_RPT IS NOT NULL)TMP
        LEFT JOIN
            MBT_220_HIS HIS
        ON
            TMP.DATA_ID=HIS.DATA_ID) SOURCE
ON
    ( TARGET.DATA_ID = SOURCE.DATA_ID)
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
        TARGET.CUST_NO,
        TARGET.IS_RPT,
        TARGET.ODS_DATA_ID,
        TARGET.RPT_DATE,
        TARGET.RPT_TIME,
        TARGET.ROW_NUM
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
        '24',
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
        SOURCE.CUST_NO,
        SOURCE.IS_RPT,
        SOURCE.DATA_ID,
        V_NOW_DATE,
        V_NOW_TIME,
        GET_ROW_NUM( SOURCE.ORG_ID,'220')
    );
COMMIT;
UPDATE MBT_220_HIS SET DATA_STATUS='25' WHERE DATA_STATUS='23' AND HIS_DATE=V_NOW_DATE ;
COMMIT;

--≤Â»Î◊”±Ì
MERGE
INTO
    MBT_220_C_RPT TARGET
USING
    (
        SELECT
            C.DATA_ID,
            A.DATA_ID PDATA_ID,
            C.C_BRER_TYPE,
            C.C_CERT_REL_NAME,
            C.C_CERT_REL_ID_TYPE,
            C.C_CERT_REL_ID_NUM,
            C.ODS_DATA_ID,
            C.HIS_DATE,
            C.HIS_TIME,
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
            C.RSV5
        FROM
            MBT_220_RPT A
        RIGHT JOIN
            MBT_220_C_HIS C
        ON
            C.PDATA_ID=A.ODS_DATA_ID
        WHERE
            A.DATA_STATUS='24'
        AND A.RPT_DATE=V_NOW_DATE
        AND IS_RPT IS NOT NULL
        AND SUBSTR(A.IS_RPT,INSTR(A.IS_RPT,'|')+1,1)='1' ) SOURCE
ON
    (
        TARGET.DATA_ID = SOURCE.DATA_ID)
WHEN NOT MATCHED
    THEN
INSERT
    (
        TARGET.DATA_ID,
        TARGET.PDATA_ID,
        TARGET.C_BRER_TYPE,
        TARGET.C_CERT_REL_NAME,
        TARGET.C_CERT_REL_ID_TYPE,
        TARGET.C_CERT_REL_ID_NUM,
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
        TARGET.RPT_DATE,
        TARGET.RPT_TIME
    )
    VALUES
    (
        GET_DATA_ID(V_NOW_DATE),
        SOURCE.PDATA_ID,
        SOURCE.C_BRER_TYPE,
        SOURCE.C_CERT_REL_NAME,
        SOURCE.C_CERT_REL_ID_TYPE,
        SOURCE.C_CERT_REL_ID_NUM,
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
prompt Creating procedure SYNC_HIS_TO_RPT_221
prompt ======================================
prompt
CREATE OR REPLACE PROCEDURE "SYNC_HIS_TO_RPT_221"(ERRCODE  OUT VARCHAR,
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
    MBT_221_RPT
WHERE
    RPT_DATE=V_NOW_DATE and DATA_STATUS='24';
COMMIT;
--≤Â»Î÷˜±Ì
MERGE
INTO
    MBT_221_RPT TARGET
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
            ODS_DATA_ID,
            HIS_DATE,
            HIS_TIME,
            IS_RPT
        FROM
            MBT_221_HIS
        WHERE
            DATA_STATUS='23'
        AND HIS_DATE=V_NOW_DATE
        AND IS_RPT='1') SOURCE
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
        TARGET.RPT_DATE,
        TARGET.RPT_TIME,
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
        '24',
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
UPDATE MBT_221_HIS SET DATA_STATUS='25' WHERE DATA_STATUS='23';

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
prompt Creating procedure SYNC_HIS_TO_RPT_230
prompt ======================================
prompt
CREATE OR REPLACE PROCEDURE "SYNC_HIS_TO_RPT_230"(ERRCODE  OUT VARCHAR,
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
    MBT_230_E_RPT
WHERE  pdata_id IN (select data_id from MBT_230_RPT where RPT_DATE=V_NOW_DATE and data_status='24');
DELETE
FROM
    MBT_230_RPT
WHERE
    RPT_DATE=V_NOW_DATE and DATA_STATUS='24';
    DELETE FROM MBT_ROW_NUM WHERE TYPE='230';

COMMIT;
--1.≤Â»Î÷˜±Ì
MERGE
INTO
    MBT_230_RPT TARGET
USING
    (
        SELECT
            TMP.B_ACCT_TYPE,
            TMP.B_ACCT_CODE,
            TMP.B_RPT_DATE,
            TMP.B_RPT_DATE_CODE,
            TMP.B_INF_REC_TYPE,
            TMP.B_NAME,
            TMP.B_ID_TYPE,
            TMP.B_ID_NUM,
            TMP.B_MNGMT_ORG_CODE,
            TMP.B_CUST_NO,
            TMP.C_BUSI_LINES,
            TMP.C_BUSI_DTIL_LINES,
            TMP.C_OPEN_DATE,
            TMP.C_ACCT_CRED_LINE_LCY,
            TMP.C_ACCT_CRED_LINE,
            TMP.C_CY,
            TMP.C_DUE_DATE,
            TMP.C_GUAR_MODE,
            TMP.C_OTH_REPY_GUAR_WAY,
            TMP.C_SEC_DEP,
            TMP.C_CTRCT_TXT_CD,
            TMP.D_ACCT_STATUS,
            TMP.D_LOAN_AMT_LCY,
            TMP.D_LOAN_AMT,
            TMP.D_REPAY_PRD,
            TMP.D_FIVE_CATE,
            TMP.D_FIVE_CATE_ADJ_DATE,
            TMP.D_RI_EX_LCY,
            TMP.D_RI_EX,
            TMP.D_COMP_ADV_FLAG,
            TMP.D_CLOSE_DATE,
            HIS.DATA_ID,
            HIS.DATA_DATE,
            HIS.CORP_ID,
            HIS.ORG_ID,
            HIS.GROUP_ID,
            HIS.INQ_ORG_ID,
            HIS.INQ_GROUP_ID,
            HIS.CHECK_FLAG,
            HIS.CHECK_DESC,
            HIS.CHECK_ERR_TYPE,
            HIS.NEXT_ACTION,
            HIS.DATA_STATUS,
            HIS.DATA_FLAG,
            HIS.DATA_SOURCE,
            HIS.DATA_VERSION,
            HIS.DATA_REJ_DESC,
            HIS.DATA_DEL_DESC,
            HIS.DATA_CRT_USER,
            HIS.DATA_CRT_DATE,
            HIS.DATA_CRT_TIME,
            HIS.DATA_CHG_USER,
            HIS.DATA_CHG_DATE,
            HIS.DATA_CHG_TIME,
            HIS.DATA_APV_USER,
            HIS.DATA_APV_DATE,
            HIS.DATA_APV_TIME,
            HIS.REF_NO,
            HIS.DATA_DESC,
            HIS.RSV1,
            HIS.RSV2,
            HIS.RSV3,
            HIS.RSV4,
            HIS.RSV5,
            HIS.IS_RPT
        FROM
            (
                 SELECT
                            DATA_ID,
                           CASE WHEN SUBSTR(IS_RPT,0,1) = '1' THEN  B_ACCT_TYPE ELSE NULL END B_ACCT_TYPE,
                          CASE WHEN SUBSTR(IS_RPT,0,1) = '1' THEN B_ACCT_CODE        ELSE NULL END B_ACCT_CODE,
                          CASE WHEN SUBSTR(IS_RPT,0,1) = '1' THEN B_RPT_DATE         ELSE NULL END B_RPT_DATE,
                          CASE WHEN SUBSTR(IS_RPT,0,1) = '1' THEN B_RPT_DATE_CODE    ELSE NULL END B_RPT_DATE_CODE,
                          CASE WHEN SUBSTR(IS_RPT,0,1) = '1' THEN B_INF_REC_TYPE     ELSE NULL END B_INF_REC_TYPE,
                          CASE WHEN SUBSTR(IS_RPT,0,1) = '1' THEN B_NAME             ELSE NULL END B_NAME,
                          CASE WHEN SUBSTR(IS_RPT,0,1) = '1' THEN B_ID_TYPE          ELSE NULL END B_ID_TYPE,
                          CASE WHEN SUBSTR(IS_RPT,0,1) = '1' THEN B_ID_NUM           ELSE NULL END B_ID_NUM,
                          CASE WHEN SUBSTR(IS_RPT,0,1) = '1' THEN B_MNGMT_ORG_CODE   ELSE NULL END B_MNGMT_ORG_CODE,
                          CASE WHEN SUBSTR(IS_RPT,0,1) = '1' THEN B_CUST_NO          ELSE NULL END B_CUST_NO,
                          CASE WHEN SUBSTR(IS_RPT,2,1) = '1' THEN C_BUSI_LINES         ELSE NULL END C_BUSI_LINES,
                          CASE WHEN SUBSTR(IS_RPT,2,1) = '1' THEN C_BUSI_DTIL_LINES    ELSE NULL END C_BUSI_DTIL_LINES,
                          CASE WHEN SUBSTR(IS_RPT,2,1) = '1' THEN C_OPEN_DATE          ELSE NULL END C_OPEN_DATE,
                          CASE WHEN SUBSTR(IS_RPT,2,1) = '1' THEN C_ACCT_CRED_LINE_LCY     ELSE NULL END C_ACCT_CRED_LINE_LCY,
                          CASE WHEN SUBSTR(IS_RPT,2,1) = '1' THEN C_ACCT_CRED_LINE     ELSE NULL END C_ACCT_CRED_LINE,
                          CASE WHEN SUBSTR(IS_RPT,2,1) = '1' THEN C_CY                 ELSE NULL END C_CY,
                          CASE WHEN SUBSTR(IS_RPT,2,1) = '1' THEN C_DUE_DATE           ELSE NULL END C_DUE_DATE,
                          CASE WHEN SUBSTR(IS_RPT,2,1) = '1' THEN C_GUAR_MODE          ELSE NULL END C_GUAR_MODE,
                          CASE WHEN SUBSTR(IS_RPT,2,1) = '1' THEN C_OTH_REPY_GUAR_WAY   ELSE NULL END C_OTH_REPY_GUAR_WAY,
                          CASE WHEN SUBSTR(IS_RPT,2,1) = '1' THEN C_SEC_DEP            ELSE NULL END C_SEC_DEP,
                          CASE WHEN SUBSTR(IS_RPT,2,1) = '1' THEN C_CTRCT_TXT_CD       ELSE NULL END C_CTRCT_TXT_CD,
                          CASE WHEN SUBSTR(IS_RPT,3,1) = '1' THEN D_ACCT_STATUS         ELSE NULL END D_ACCT_STATUS,
                          CASE WHEN SUBSTR(IS_RPT,3,1) = '1' THEN D_LOAN_AMT_LCY            ELSE NULL END D_LOAN_AMT_LCY,
                          CASE WHEN SUBSTR(IS_RPT,3,1) = '1' THEN D_LOAN_AMT            ELSE NULL END D_LOAN_AMT,
                          CASE WHEN SUBSTR(IS_RPT,3,1) = '1' THEN D_REPAY_PRD           ELSE NULL END D_REPAY_PRD,
                          CASE WHEN SUBSTR(IS_RPT,3,1) = '1' THEN D_FIVE_CATE           ELSE NULL END D_FIVE_CATE,
                          CASE WHEN SUBSTR(IS_RPT,3,1) = '1' THEN D_FIVE_CATE_ADJ_DATE   ELSE NULL END D_FIVE_CATE_ADJ_DATE,
                          CASE WHEN SUBSTR(IS_RPT,3,1) = '1' THEN D_RI_EX_LCY               ELSE NULL END D_RI_EX_LCY,
                          CASE WHEN SUBSTR(IS_RPT,3,1) = '1' THEN D_RI_EX               ELSE NULL END D_RI_EX,
                          CASE WHEN SUBSTR(IS_RPT,3,1) = '1' THEN D_COMP_ADV_FLAG       ELSE NULL END D_COMP_ADV_FLAG,
                          CASE WHEN SUBSTR(IS_RPT,3,1) = '1' THEN D_CLOSE_DATE          ELSE NULL END D_CLOSE_DATE
                        FROM
                            MBT_230_HIS
                        WHERE
                            DATA_STATUS='23'
                        AND HIS_DATE=V_NOW_DATE
                        AND B_RPT_DATE_CODE !='99'
                        ) TMP
        LEFT JOIN
            MBT_230_HIS HIS
        ON
            TMP.DATA_ID=HIS.DATA_ID) SOURCE
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
        TARGET.ODS_DATA_ID,
        TARGET.RPT_DATE,
        TARGET.RPT_TIME,
        TARGET.IS_RPT,
        TARGET.ROW_NUM
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
        '24',
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
        SOURCE.DATA_ID,
        V_NOW_DATE,
        V_NOW_TIME,
        SOURCE.IS_RPT,
         GET_ROW_NUM( SOURCE.ORG_ID,'230')
    );
COMMIT;
UPDATE MBT_230_HIS SET DATA_STATUS='25' WHERE DATA_STATUS='23' AND HIS_DATE=V_NOW_DATE;
COMMIT;
--≤Â»Î◊”±Ì
MERGE
INTO
    MBT_230_E_RPT TARGET
USING
    (
        SELECT
            C.DATA_ID,
            A.DATA_ID PDATA_ID,
            C.INFO_ID_TYPE,
            C.ARLP_NAME,
            C.ARLP_CERT_TYPE,
            C.ARLP_CERT_NUM,
            C.ARLP_TYPE,
            C.ARLP_AMT_ORG,
            C.ARLP_AMT,
            C.WARTY_SIGN,
            C.MAX_GUAR_MCC,
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
            C.RSV5
        FROM
            MBT_230_RPT A
        LEFT JOIN
            MBT_230_E_HIS C
        ON
            C.PDATA_ID=A.ODS_DATA_ID
        WHERE
            A.DATA_STATUS='24'
        AND A.RPT_DATE=V_NOW_DATE
        AND SUBSTR(A.IS_RPT,INSTR(A.IS_RPT,'|')+1,1)='1' ) SOURCE
ON
    (
        TARGET.DATA_ID = SOURCE.DATA_ID)
WHEN NOT MATCHED
    THEN
INSERT
    (
        TARGET.DATA_ID,
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
        TARGET.RPT_DATE,
        TARGET.RPT_TIME
    )
    VALUES
    (
        GET_DATA_ID(V_NOW_DATE),
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
prompt Creating procedure SYNC_HIS_TO_RPT_231
prompt ======================================
prompt
CREATE OR REPLACE PROCEDURE "SYNC_HIS_TO_RPT_231"(ERRCODE  OUT VARCHAR,
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
    MBT_231_RPT
WHERE
    RPT_DATE=V_NOW_DATE and DATA_STATUS='24';
COMMIT;
--≤Â»Î÷˜±Ì
MERGE
INTO
    MBT_231_RPT TARGET
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
            HIS_DATE,
            HIS_DATE_TIME,
            ODS_DATA_ID,
            IS_RPT
        FROM
            MBT_231_HIS
        WHERE
            DATA_STATUS='23'
        AND HIS_DATE=V_NOW_DATE
        AND IS_RPT='1') SOURCE
ON
    (TARGET.DATA_ID = SOURCE.DATA_ID)
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
        TARGET.RPT_DATE,
        TARGET.RPT_TIME,
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
        '24',
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
UPDATE MBT_231_HIS SET DATA_STATUS='25' WHERE DATA_STATUS='23' AND HIS_DATE=V_NOW_DATE;
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
prompt Creating procedure SYNC_HIS_TO_RPT_310
prompt ======================================
prompt
CREATE OR REPLACE PROCEDURE "SYNC_HIS_TO_RPT_310"(ERRCODE OUT VARCHAR,
                                                  ERRMSG  OUT VARCHAR) AS
  V_NOW_DATE CHAR(8);
  V_NOW_TIME CHAR(14);
BEGIN
  SELECT TO_CHAR(SYSDATE, 'YYYYMMDD') INTO V_NOW_DATE FROM DUAL;
  SELECT TO_CHAR(SYSDATE, 'YYYYMMDDHH24MISS') INTO V_NOW_TIME FROM DUAL;

  DELETE FROM MBT_310_C_RPT
   WHERE --RPT_DATE = V_NOW_DATE and
     pdata_id IN (select data_id
                       from MBT_310_RPT
                      where RPT_DATE = V_NOW_DATE
                        and data_status = '24'
                        );
  DELETE FROM MBT_310_E_RPT
   WHERE pdata_id IN (select data_id
                       from MBT_310_RPT
                      where RPT_DATE = V_NOW_DATE
                        and data_status = '24'
                        );
  DELETE FROM MBT_310_F_RPT
   WHERE  pdata_id IN (select data_id
                       from MBT_310_RPT
                      where RPT_DATE = V_NOW_DATE
                        and data_status = '24'
                      );
  DELETE FROM MBT_310_G_RPT
   WHERE pdata_id IN (select data_id
                       from MBT_310_RPT
                      where RPT_DATE = V_NOW_DATE
                        and data_status = '24'
                        );
  DELETE FROM MBT_310_RPT
   WHERE RPT_DATE = V_NOW_DATE
     and DATA_STATUS = '24';
  DELETE FROM MBT_ROW_NUM WHERE TYPE = '310';

  COMMIT;
  --1.≤Â»Î÷˜±Ì
  MERGE INTO MBT_310_RPT TARGET
  USING (SELECT TMP.B_INF_REC_TYPE,
                TMP.B_ENT_NAME,
                TMP.B_ENT_CERT,
                TMP.B_ENT_CERT_NUM,
                TMP.B_INF_SURC_CODE,
                TMP.B_RPT_DATE,
                TMP.B_RPT_DATE_CODE,
                TMP.B_CIMOC,
                TMP.B_CUSTOMER_TYPE,
                TMP.B_ETP_STS,
                TMP.B_ORG_TYPE,
                TMP.B_CUST_NO,
                TMP.C_ID_INFO_UP_DATE,
                TMP.D_NATIONALITY,
                TMP.D_REG_ADD,
                TMP.D_ADM_DIV_OF_REG,
                TMP.D_ESTABLISH_DATE,
                TMP.D_BIZ_END_DATE,
                TMP.D_BIZ_RANGE,
                TMP.D_ECO_INDUS_CATE,
                TMP.D_ECO_TYPE,
                TMP.D_ENT_SCALE,
                TMP.D_FCS_INFO_UP_DATE,
                TMP.E_MN_MMB_INFO_UP_DATE,
                TMP.F_REG_CAP_CURRENCY,
                TMP.F_REG_CAP,
                TMP.F_REG_CAP_LCY,
                TMP.F_MN_SHA_HOD_INFO_DATE,
                TMP.G_ACTU_COTRL_INFO_UP_DATE,
                TMP.H_SUP_ORG_TYPE,
                TMP.H_SUP_ORG_NAME,
                TMP.H_SUP_ORG_CERT_TYPE,
                TMP.H_SUP_ORG_CERT_NUM,
                TMP.H_SUP_ORG_INFO_UP_DATE,
                TMP.I_CON_ADD_DISTRICT_CODE,
                TMP.I_CON_ADD,
                TMP.I_CON_PHONE,
                TMP.I_FIN_CON_PHONE,
                TMP.I_COTA_INFO_UP_DATE,
                HIS.DATA_ID,
                HIS.DATA_DATE,
                HIS.CORP_ID,
                HIS.ORG_ID,
                HIS.GROUP_ID,
                HIS.INQ_ORG_ID,
                HIS.INQ_GROUP_ID,
                HIS.REMARKS,
                HIS.CHECK_FLAG,
                HIS.CHECK_DESC,
                HIS.CHECK_ERR_TYPE,
                HIS.NEXT_ACTION,
                HIS.DATA_STATUS,
                HIS.DATA_FLAG,
                HIS.DATA_SOURCE,
                HIS.DATA_VERSION,
                HIS.DATA_REJ_DESC,
                HIS.DATA_DEL_DESC,
                HIS.DATA_CRT_USER,
                HIS.DATA_CRT_DATE,
                HIS.DATA_CRT_TIME,
                HIS.DATA_CHG_USER,
                HIS.DATA_CHG_DATE,
                HIS.DATA_CHG_TIME,
                HIS.DATA_APV_USER,
                HIS.DATA_APV_DATE,
                HIS.DATA_APV_TIME,
                HIS.RSV1,
                HIS.RSV2,
                HIS.RSV3,
                HIS.RSV4,
                HIS.RSV5,
                HIS.DATA_DESC,
                HIS.IS_RPT
           FROM (SELECT DATA_ID,
                        CASE
                          WHEN SUBSTR(IS_RPT, 0, 1) = '1' THEN
                           B_INF_REC_TYPE
                          ELSE
                           NULL
                        END B_INF_REC_TYPE,
                        CASE
                          WHEN SUBSTR(IS_RPT, 0, 1) = '1' THEN
                           B_ENT_NAME
                          ELSE
                           NULL
                        END B_ENT_NAME,
                        CASE
                          WHEN SUBSTR(IS_RPT, 0, 1) = '1' THEN
                           B_ENT_CERT
                          ELSE
                           NULL
                        END B_ENT_CERT,
                        CASE
                          WHEN SUBSTR(IS_RPT, 0, 1) = '1' THEN
                           B_ENT_CERT_NUM
                          ELSE
                           NULL
                        END B_ENT_CERT_NUM,
                        CASE
                          WHEN SUBSTR(IS_RPT, 0, 1) = '1' THEN
                           B_INF_SURC_CODE
                          ELSE
                           NULL
                        END B_INF_SURC_CODE,
                        CASE
                          WHEN SUBSTR(IS_RPT, 0, 1) = '1' THEN
                           B_RPT_DATE
                          ELSE
                           NULL
                        END B_RPT_DATE,
                        CASE
                          WHEN SUBSTR(IS_RPT, 0, 1) = '1' THEN
                           B_RPT_DATE_CODE
                          ELSE
                           NULL
                        END B_RPT_DATE_CODE,
                        CASE
                          WHEN SUBSTR(IS_RPT, 0, 1) = '1' THEN
                           B_CIMOC
                          ELSE
                           NULL
                        END B_CIMOC,
                        CASE
                          WHEN SUBSTR(IS_RPT, 0, 1) = '1' THEN
                           B_CUSTOMER_TYPE
                          ELSE
                           NULL
                        END B_CUSTOMER_TYPE,
                        CASE
                          WHEN SUBSTR(IS_RPT, 0, 1) = '1' THEN
                           B_ETP_STS
                          ELSE
                           NULL
                        END B_ETP_STS,
                        CASE
                          WHEN SUBSTR(IS_RPT, 0, 1) = '1' THEN
                           B_ORG_TYPE
                          ELSE
                           NULL
                        END B_ORG_TYPE,
                        CASE
                          WHEN SUBSTR(IS_RPT, 0, 1) = '1' THEN
                           B_CUST_NO
                          ELSE
                           NULL
                        END B_CUST_NO,
                        CASE
                          WHEN SUBSTR(IS_RPT, INSTR(IS_RPT, '|') + 1, 1) = '1' THEN
                           C_ID_INFO_UP_DATE
                          ELSE
                           NULL
                        END C_ID_INFO_UP_DATE,
                        CASE
                          WHEN SUBSTR(IS_RPT, 2, 1) = '1' THEN
                           D_NATIONALITY
                          ELSE
                           NULL
                        END D_NATIONALITY,
                        CASE
                          WHEN SUBSTR(IS_RPT, 2, 1) = '1' THEN
                           D_REG_ADD
                          ELSE
                           NULL
                        END D_REG_ADD,
                        CASE
                          WHEN SUBSTR(IS_RPT, 2, 1) = '1' THEN
                           D_ADM_DIV_OF_REG
                          ELSE
                           NULL
                        END D_ADM_DIV_OF_REG,
                        CASE
                          WHEN SUBSTR(IS_RPT, 2, 1) = '1' THEN
                           D_ESTABLISH_DATE
                          ELSE
                           NULL
                        END D_ESTABLISH_DATE,
                        CASE
                          WHEN SUBSTR(IS_RPT, 2, 1) = '1' THEN
                           D_BIZ_END_DATE
                          ELSE
                           NULL
                        END D_BIZ_END_DATE,
                        CASE
                          WHEN SUBSTR(IS_RPT, 2, 1) = '1' THEN
                           D_BIZ_RANGE
                          ELSE
                           NULL
                        END D_BIZ_RANGE,
                        CASE
                          WHEN SUBSTR(IS_RPT, 2, 1) = '1' THEN
                           D_ECO_INDUS_CATE
                          ELSE
                           NULL
                        END D_ECO_INDUS_CATE,
                        CASE
                          WHEN SUBSTR(IS_RPT, 2, 1) = '1' THEN
                           D_ECO_TYPE
                          ELSE
                           NULL
                        END D_ECO_TYPE,
                        CASE
                          WHEN SUBSTR(IS_RPT, 2, 1) = '1' THEN
                           D_ENT_SCALE
                          ELSE
                           NULL
                        END D_ENT_SCALE,
                        CASE
                          WHEN SUBSTR(IS_RPT, 2, 1) = '1' THEN
                           D_FCS_INFO_UP_DATE
                          ELSE
                           NULL
                        END D_FCS_INFO_UP_DATE,
                        CASE
                          WHEN SUBSTR(IS_RPT, INSTR(IS_RPT, '|') + 2, 1) = '1' THEN
                           E_MN_MMB_INFO_UP_DATE
                          ELSE
                           NULL
                        END E_MN_MMB_INFO_UP_DATE,
                        CASE
                          WHEN SUBSTR(IS_RPT, 3, 1) = '1' THEN
                           F_REG_CAP_CURRENCY
                          ELSE
                           NULL
                        END F_REG_CAP_CURRENCY,
                        CASE
                          WHEN SUBSTR(IS_RPT, 3, 1) = '1' THEN
                           F_REG_CAP
                          ELSE
                           NULL
                        END F_REG_CAP,
                        CASE
                          WHEN SUBSTR(IS_RPT, 3, 1) = '1' THEN
                           F_REG_CAP_LCY
                          ELSE
                           NULL
                        END F_REG_CAP_LCY,
                        CASE
                          WHEN SUBSTR(IS_RPT, 3, 1) = '1' THEN
                           F_MN_SHA_HOD_INFO_DATE
                          ELSE
                           NULL
                        END F_MN_SHA_HOD_INFO_DATE,
                        CASE
                          WHEN SUBSTR(IS_RPT, INSTR(IS_RPT, '|') + 4, 1) = '1' THEN
                           G_ACTU_COTRL_INFO_UP_DATE
                          ELSE
                           NULL
                        END G_ACTU_COTRL_INFO_UP_DATE,
                        CASE
                          WHEN SUBSTR(IS_RPT, 4, 1) = '1' THEN
                           H_SUP_ORG_TYPE
                          ELSE
                           NULL
                        END H_SUP_ORG_TYPE,
                        CASE
                          WHEN SUBSTR(IS_RPT, 4, 1) = '1' THEN
                           H_SUP_ORG_NAME
                          ELSE
                           NULL
                        END H_SUP_ORG_NAME,
                        CASE
                          WHEN SUBSTR(IS_RPT, 4, 1) = '1' THEN
                           H_SUP_ORG_CERT_TYPE
                          ELSE
                           NULL
                        END H_SUP_ORG_CERT_TYPE,
                        CASE
                          WHEN SUBSTR(IS_RPT, 4, 1) = '1' THEN
                           H_SUP_ORG_CERT_NUM
                          ELSE
                           NULL
                        END H_SUP_ORG_CERT_NUM,
                        CASE
                          WHEN SUBSTR(IS_RPT, 4, 1) = '1' THEN
                           H_SUP_ORG_INFO_UP_DATE
                          ELSE
                           NULL
                        END H_SUP_ORG_INFO_UP_DATE,
                        CASE
                          WHEN SUBSTR(IS_RPT, 5, 1) = '1' THEN
                           I_CON_ADD_DISTRICT_CODE
                          ELSE
                           NULL
                        END I_CON_ADD_DISTRICT_CODE,
                        CASE
                          WHEN SUBSTR(IS_RPT, 5, 1) = '1' THEN
                           I_CON_ADD
                          ELSE
                           NULL
                        END I_CON_ADD,
                        CASE
                          WHEN SUBSTR(IS_RPT, 5, 1) = '1' THEN
                           I_CON_PHONE
                          ELSE
                           NULL
                        END I_CON_PHONE,
                        CASE
                          WHEN SUBSTR(IS_RPT, 5, 1) = '1' THEN
                           I_FIN_CON_PHONE
                          ELSE
                           NULL
                        END I_FIN_CON_PHONE,
                        CASE
                          WHEN SUBSTR(IS_RPT, 5, 1) = '1' THEN
                           I_COTA_INFO_UP_DATE
                          ELSE
                           NULL
                        END I_COTA_INFO_UP_DATE
                   FROM MBT_310_HIS
                  WHERE DATA_STATUS = '23'
                    AND HIS_DATE = V_NOW_DATE
                    AND B_RPT_DATE_CODE != '99') TMP
           LEFT JOIN MBT_310_HIS HIS
             ON TMP.DATA_ID = HIS.DATA_ID) SOURCE
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
       TARGET.B_CUST_NO,
       TARGET.IS_RPT,
       TARGET.ODS_DATA_ID,
       TARGET.RPT_DATE,
       TARGET.RPT_TIME,
       TARGET.ROW_NUM)
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
       '24',
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
       SOURCE.B_CUST_NO,
       SOURCE.IS_RPT,
       SOURCE.DATA_ID,
       V_NOW_DATE,
       V_NOW_TIME,
       GET_ROW_NUM(SOURCE.ORG_ID, '310'));
  COMMIT;
  UPDATE MBT_310_HIS
     SET DATA_STATUS = '25'
   WHERE DATA_STATUS = '23'
     AND HIS_DATE = V_NOW_DATE;
  COMMIT;
  --≤Â»Î◊”±Ì
  MERGE INTO MBT_310_C_RPT TARGET
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
           FROM MBT_310_RPT A
           LEFT JOIN MBT_310_C_HIS C
             ON C.PDATA_ID = A.ODS_DATA_ID
          WHERE A.DATA_STATUS = '24'
            AND A.RPT_DATE = V_NOW_DATE
            AND SUBSTR(A.IS_RPT, INSTR(A.IS_RPT, '|') + 1, 1) = '1') SOURCE
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
       TARGET.RPT_DATE,
       TARGET.RPT_TIME,
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
  MERGE INTO MBT_310_E_RPT TARGET
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
           FROM MBT_310_RPT A
           LEFT JOIN MBT_310_E_HIS C
             ON C.PDATA_ID = A.ODS_DATA_ID
          WHERE A.DATA_STATUS = '24'
            AND A.RPT_DATE = V_NOW_DATE
            AND SUBSTR(A.IS_RPT, INSTR(A.IS_RPT, '|') + 2, 1) = '1') SOURCE
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
       TARGET.RPT_DATE,
       TARGET.RPT_TIME,
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
  MERGE INTO MBT_310_F_RPT TARGET
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
           FROM MBT_310_RPT A
           LEFT JOIN MBT_310_F_HIS C
             ON C.PDATA_ID = A.ODS_DATA_ID
          WHERE A.DATA_STATUS = '24'
            AND A.RPT_DATE = V_NOW_DATE
            AND SUBSTR(A.IS_RPT, INSTR(A.IS_RPT, '|') + 3, 1) = '1') SOURCE
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
       TARGET.RPT_DATE,
       TARGET.RPT_TIME,
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
  MERGE INTO MBT_310_G_RPT TARGET
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
           FROM MBT_310_RPT A
           LEFT JOIN MBT_310_G_HIS C
             ON C.PDATA_ID = A.ODS_DATA_ID
          WHERE A.DATA_STATUS = '24'
            AND A.RPT_DATE = V_NOW_DATE
            AND SUBSTR(A.IS_RPT, INSTR(A.IS_RPT, '|') + 4, 1) = '1') SOURCE
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
       TARGET.RPT_DATE,
       TARGET.RPT_TIME,
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
prompt Creating procedure SYNC_HIS_TO_RPT_340
prompt ======================================
prompt
CREATE OR REPLACE PROCEDURE "SYNC_HIS_TO_RPT_340"(ERRCODE  OUT VARCHAR,
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
    MBT_340_RPT
WHERE
    RPT_DATE=V_NOW_DATE and DATA_STATUS='24';
        DELETE FROM MBT_ROW_NUM WHERE TYPE='340';

COMMIT;
--≤Â»Î÷˜±Ì
MERGE
INTO
    MBT_340_RPT TARGET
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
            MBT_340_HIS A
        WHERE
            A.DATA_STATUS='23'
        AND A.B_INF_REC_TYPE !='99'
        AND A.IS_RPT='1' ) SOURCE
ON
    (TARGET.DATA_ID = SOURCE.DATA_ID)
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
        TARGET.IS_RPT,
        TARGET.ODS_DATA_ID,
        TARGET.RPT_DATE,
        TARGET.RPT_TIME,
        TARGET.ROW_NUM
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
        '24',
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
        SOURCE.IS_RPT,
        SOURCE.DATA_ID,
        V_NOW_DATE,
        V_NOW_TIME,
        GET_ROW_NUM( SOURCE.ORG_ID,'340')
    );
COMMIT;
UPDATE MBT_340_HIS SET DATA_STATUS='25' WHERE DATA_STATUS='23' AND HIS_DATE=V_NOW_DATE;

EXCEPTION
WHEN OTHERS THEN
    ERRCODE := SQLCODE;
    ERRMSG := SUBSTR(SQLERRM,1,200);
ROLLBACK;
RETURN;
END;
/

prompt
prompt Creating procedure SYNC_HIS_TO_RPT_350
prompt ======================================
prompt
CREATE OR REPLACE PROCEDURE "SYNC_HIS_TO_RPT_350"(ERRCODE  OUT VARCHAR,
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
    MBT_350_RPT
WHERE
    RPT_DATE=V_NOW_DATE and DATA_STATUS='24';
        DELETE FROM MBT_ROW_NUM WHERE TYPE='350';

COMMIT;
--≤Â»Î÷˜±Ì
MERGE
INTO
    MBT_350_RPT TARGET
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
            B_RPT_DATE_CODE,
            D_FCS_INFO_UP_DATE,
            B_CUST_NO,
            IS_RPT
        FROM
            MBT_350_HIS A
        WHERE
            A.DATA_STATUS='23'
        AND A.B_INF_REC_TYPE !='99'
        AND SUBSTR(A.IS_RPT,0,1)='1' ) SOURCE
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
        TARGET.B_ASSO_ENT_NAME,
        TARGET.B_ASSO_ENT_CERT_TYPE,
        TARGET.B_ASSO_ENT_CERT_NUM,
        TARGET.B_ASSO_TYPE,
        TARGET.B_ASSO_SIGN,
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
        TARGET.B_RPT_DATE_CODE,
        TARGET.D_FCS_INFO_UP_DATE,
        TARGET.B_CUST_NO,
        TARGET.IS_RPT,
        TARGET.ODS_DATA_ID,
        TARGET.RPT_DATE,
        TARGET.RPT_TIME,
        TARGET.ROW_NUM
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
        SOURCE.B_ASSO_ENT_NAME,
        SOURCE.B_ASSO_ENT_CERT_TYPE,
        SOURCE.B_ASSO_ENT_CERT_NUM,
        SOURCE.B_ASSO_TYPE,
        SOURCE.B_ASSO_SIGN,
        SOURCE.B_RPT_DATE,
        SOURCE.C_DATA_DESC,
        SOURCE.REMARKS,
        SOURCE.CHECK_FLAG,
        SOURCE.CHECK_DESC,
        SOURCE.CHECK_ERR_TYPE,
        SOURCE.NEXT_ACTION,
        '24',
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
        SOURCE.B_RPT_DATE_CODE,
        SOURCE.D_FCS_INFO_UP_DATE,
        SOURCE.B_CUST_NO,
        SOURCE.IS_RPT,
        SOURCE.DATA_ID,
        V_NOW_DATE,
        V_NOW_TIME,
        GET_ROW_NUM( SOURCE.ORG_ID,'350')
    );
COMMIT;
UPDATE MBT_350_HIS SET DATA_STATUS='25' WHERE DATA_STATUS='23' AND HIS_DATE=V_NOW_DATE;

EXCEPTION
WHEN OTHERS THEN
    ERRCODE := SQLCODE;
ERRMSG := SUBSTR(SQLERRM,1,200);
ROLLBACK;
RETURN;
END;
/

prompt
prompt Creating procedure SYNC_HIS_TO_RPT_410
prompt ======================================
prompt
CREATE OR REPLACE PROCEDURE "SYNC_HIS_TO_RPT_410"(ERRCODE OUT VARCHAR,
                                                    ERRMSG  OUT VARCHAR) AS
  V_NOW_DATE CHAR(8);
  V_NOW_TIME CHAR(14);
BEGIN
  SELECT TO_CHAR(SYSDATE, 'YYYYMMDD') INTO V_NOW_DATE FROM DUAL;
  SELECT TO_CHAR(SYSDATE, 'YYYYMMDDHH24MISS') INTO V_NOW_TIME FROM DUAL;

  DELETE FROM MBT_410_D_RPT
   WHERE pdata_id IN (select data_id
                       from MBT_410_RPT
                      where RPT_DATE = V_NOW_DATE
                        and data_status = '24'
                       );
  DELETE FROM MBT_410_E_RPT
   WHERE   pdata_id IN (select data_id
                       from MBT_410_RPT
                      where RPT_DATE = V_NOW_DATE
                        and data_status = '24'
                        );
  DELETE FROM MBT_410_I_RPT
   WHERE pdata_id IN (select data_id
                       from MBT_410_RPT
                      where RPT_DATE = V_NOW_DATE
                        and data_status = '24' );
  DELETE FROM MBT_410_RPT
   WHERE RPT_DATE = V_NOW_DATE
     and DATA_STATUS = '24';
     DELETE FROM MBT_ROW_NUM WHERE TYPE='410';

  COMMIT;
  --1.≤Â»Î÷˜±Ì
  MERGE INTO MBT_410_RPT TARGET
  USING (SELECT TMP.REF_NO,
                TMP.B_INF_REC_TYPE,
                TMP.B_ACCT_TYPE,
                TMP.B_ACCT_CODE,
                TMP.B_RPT_DATE,
                TMP.B_RPT_DATE_CODE,
                TMP.B_NAME,
                TMP.B_ID_TYPE,
                TMP.B_ID_NUM,
                TMP.B_CUST_NO,
                TMP.B_INFO_UP_DATE,
                TMP.B_MONTH,
                TMP.B_MNGMT_ORG_CODE,
                TMP.C_BUSI_LINES,
                TMP.C_BUSI_DTL_LINES,
                TMP.C_OPEN_DATE,
                TMP.C_CY,
                TMP.C_ACCT_CRED_LINE_AMT,
                TMP.C_LOAN_AMT,
                TMP.C_FLAG,
                TMP.C_DUE_DATE,
                TMP.C_REPAY_MODE,
                TMP.C_REPAY_FREQCY,
                TMP.C_APPLY_BUSI_DIST,
                TMP.C_GUAR_MODE,
                TMP.C_OTH_REPY_GUAR_WAY,
                TMP.C_LOAN_TIME_LIM_CAT,
                TMP.C_LOA_FRM,
                TMP.C_ACT_INVEST,
                TMP.C_FUND_SOU,
                TMP.C_ASSET_TRAND_FLAG,
                TMP.F_MCC,
                TMP.G_INIT_CRED_NAME,
                TMP.G_INIT_CED_ORG_CODE,
                TMP.G_ORIG_DBT_CATE,
                TMP.G_INIT_RPY_STS,
                TMP.H_ACCT_STATUS,
                TMP.H_ACCT_BAL,
                TMP.H_BAL_CHG_DATE,
                TMP.H_FIVE_CATE,
                TMP.H_FIVE_CATE_ADJ_DATE,
                TMP.H_PYMT_PRD,
                TMP.H_TOT_OVERD,
                TMP.H_OVERD_PRINC,
                TMP.H_OVERD_DY,
                TMP.H_LAT_RPY_DATE,
                TMP.H_LAT_RPY_AMT,
                TMP.H_LAT_RPY_PRINC_AMT,
                TMP.H_RPMT_TYPE,
                TMP.H_LAT_AGRR_RPY_DATE,
                TMP.H_LAT_AGRR_RPY_AMT,
                TMP.H_NXT_AGRR_RPY_DATE,
                TMP.H_CLOSE_DATE,
                HIS.DATA_ID,
                HIS.DATA_DATE,
                HIS.CORP_ID,
                HIS.ORG_ID,
                HIS.GROUP_ID,
                HIS.INQ_ORG_ID,
                HIS.INQ_GROUP_ID,
                HIS.DATA_DESC,
                HIS.REMARKS,
                HIS.CHECK_FLAG,
                HIS.CHECK_DESC,
                HIS.CHECK_ERR_TYPE,
                HIS.NEXT_ACTION,
                HIS.DATA_STATUS,
                HIS.DATA_FLAG,
                HIS.DATA_SOURCE,
                HIS.DATA_VERSION,
                HIS.DATA_REJ_DESC,
                HIS.DATA_DEL_DESC,
                HIS.DATA_CRT_USER,
                HIS.DATA_CRT_DATE,
                HIS.DATA_CRT_TIME,
                HIS.DATA_CHG_USER,
                HIS.DATA_CHG_DATE,
                HIS.DATA_CHG_TIME,
                HIS.DATA_APV_USER,
                HIS.DATA_APV_DATE,
                HIS.DATA_APV_TIME,
                HIS.RSV1,
                HIS.RSV2,
                HIS.RSV3,
                HIS.RSV4,
                HIS.RSV5,
                HIS.IS_RPT
           FROM (SELECT DATA_ID,
                        CASE
                          WHEN SUBSTR(IS_RPT, 0, 1) = '1' THEN
                           REF_NO
                          ELSE
                           NULL
                        END REF_NO,
                        CASE
                          WHEN SUBSTR(IS_RPT, 0, 1) = '1' THEN
                           B_INF_REC_TYPE
                          ELSE
                           NULL
                        END B_INF_REC_TYPE,
                        CASE
                          WHEN SUBSTR(IS_RPT, 0, 1) = '1' THEN
                           B_ACCT_TYPE
                          ELSE
                           NULL
                        END B_ACCT_TYPE,
                        CASE
                          WHEN SUBSTR(IS_RPT, 0, 1) = '1' THEN
                           B_ACCT_CODE
                          ELSE
                           NULL
                        END B_ACCT_CODE,
                        CASE
                          WHEN SUBSTR(IS_RPT, 0, 1) = '1' THEN
                           B_RPT_DATE
                          ELSE
                           NULL
                        END B_RPT_DATE,
                        CASE
                          WHEN SUBSTR(IS_RPT, 0, 1) = '1' THEN
                           B_RPT_DATE_CODE
                          ELSE
                           NULL
                        END B_RPT_DATE_CODE,
                        CASE
                          WHEN SUBSTR(IS_RPT, 0, 1) = '1' THEN
                           B_NAME
                          ELSE
                           NULL
                        END B_NAME,
                        CASE
                          WHEN SUBSTR(IS_RPT, 0, 1) = '1' THEN
                           B_ID_TYPE
                          ELSE
                           NULL
                        END B_ID_TYPE,
                        CASE
                          WHEN SUBSTR(IS_RPT, 0, 1) = '1' THEN
                           B_ID_NUM
                          ELSE
                           NULL
                        END B_ID_NUM,
                        CASE
                          WHEN SUBSTR(IS_RPT, 0, 1) = '1' THEN
                           B_CUST_NO
                          ELSE
                           NULL
                        END B_CUST_NO,
                        CASE
                          WHEN SUBSTR(IS_RPT, 0, 1) = '1' THEN
                           B_INFO_UP_DATE
                          ELSE
                           NULL
                        END B_INFO_UP_DATE,
                        CASE
                          WHEN SUBSTR(IS_RPT, 0, 1) = '1' THEN
                           B_MONTH
                          ELSE
                           NULL
                        END B_MONTH,
                        CASE
                          WHEN SUBSTR(IS_RPT, 0, 1) = '1' THEN
                           B_MNGMT_ORG_CODE
                          ELSE
                           NULL
                        END B_MNGMT_ORG_CODE,
                        CASE
                          WHEN SUBSTR(IS_RPT, 2, 1) = '1' THEN
                           C_BUSI_LINES
                          ELSE
                           NULL
                        END C_BUSI_LINES,
                        CASE
                          WHEN SUBSTR(IS_RPT, 2, 1) = '1' THEN
                           C_BUSI_DTL_LINES
                          ELSE
                           NULL
                        END C_BUSI_DTL_LINES,
                        CASE
                          WHEN SUBSTR(IS_RPT, 2, 1) = '1' THEN
                           C_OPEN_DATE
                          ELSE
                           NULL
                        END C_OPEN_DATE,
                        CASE
                          WHEN SUBSTR(IS_RPT, 2, 1) = '1' THEN
                           C_CY
                          ELSE
                           NULL
                        END C_CY,
                        CASE
                          WHEN SUBSTR(IS_RPT, 2, 1) = '1' THEN
                           C_ACCT_CRED_LINE_AMT
                          ELSE
                           NULL
                        END C_ACCT_CRED_LINE_AMT,
                        CASE
                          WHEN SUBSTR(IS_RPT, 2, 1) = '1' THEN
                           C_LOAN_AMT
                          ELSE
                           NULL
                        END C_LOAN_AMT,
                        CASE
                          WHEN SUBSTR(IS_RPT, 2, 1) = '1' THEN
                           C_FLAG
                          ELSE
                           NULL
                        END C_FLAG,
                        CASE
                          WHEN SUBSTR(IS_RPT, 2, 1) = '1' THEN
                           C_DUE_DATE
                          ELSE
                           NULL
                        END C_DUE_DATE,
                        CASE
                          WHEN SUBSTR(IS_RPT, 2, 1) = '1' THEN
                           C_REPAY_MODE
                          ELSE
                           NULL
                        END C_REPAY_MODE,
                        CASE
                          WHEN SUBSTR(IS_RPT, 2, 1) = '1' THEN
                           C_REPAY_FREQCY
                          ELSE
                           NULL
                        END C_REPAY_FREQCY,
                        CASE
                          WHEN SUBSTR(IS_RPT, 2, 1) = '1' THEN
                           C_APPLY_BUSI_DIST
                          ELSE
                           NULL
                        END C_APPLY_BUSI_DIST,
                        CASE
                          WHEN SUBSTR(IS_RPT, 2, 1) = '1' THEN
                           C_GUAR_MODE
                          ELSE
                           NULL
                        END C_GUAR_MODE,
                        CASE
                          WHEN SUBSTR(IS_RPT, 2, 1) = '1' THEN
                           C_OTH_REPY_GUAR_WAY
                          ELSE
                           NULL
                        END C_OTH_REPY_GUAR_WAY,
                        CASE
                          WHEN SUBSTR(IS_RPT, 2, 1) = '1' THEN
                           C_LOAN_TIME_LIM_CAT
                          ELSE
                           NULL
                        END C_LOAN_TIME_LIM_CAT,
                        CASE
                          WHEN SUBSTR(IS_RPT, 2, 1) = '1' THEN
                           C_LOA_FRM
                          ELSE
                           NULL
                        END C_LOA_FRM,
                        CASE
                          WHEN SUBSTR(IS_RPT, 2, 1) = '1' THEN
                           C_ACT_INVEST
                          ELSE
                           NULL
                        END C_ACT_INVEST,
                        CASE
                          WHEN SUBSTR(IS_RPT, 2, 1) = '1' THEN
                           C_FUND_SOU
                          ELSE
                           NULL
                        END C_FUND_SOU,
                        CASE
                          WHEN SUBSTR(IS_RPT, 2, 1) = '1' THEN
                           C_ASSET_TRAND_FLAG
                          ELSE
                           NULL
                        END C_ASSET_TRAND_FLAG,
                        CASE
                          WHEN SUBSTR(IS_RPT, 3, 1) = '1' THEN
                           F_MCC
                          ELSE
                           NULL
                        END F_MCC,
                        CASE
                          WHEN SUBSTR(IS_RPT, 4, 1) = '1' THEN
                           G_INIT_CRED_NAME
                          ELSE
                           NULL
                        END G_INIT_CRED_NAME,
                        CASE
                          WHEN SUBSTR(IS_RPT, 4, 1) = '1' THEN
                           G_INIT_CED_ORG_CODE
                          ELSE
                           NULL
                        END G_INIT_CED_ORG_CODE,
                        CASE
                          WHEN SUBSTR(IS_RPT, 4, 1) = '1' THEN
                           G_ORIG_DBT_CATE
                          ELSE
                           NULL
                        END G_ORIG_DBT_CATE,
                        CASE
                          WHEN SUBSTR(IS_RPT, 4, 1) = '1' THEN
                           G_INIT_RPY_STS
                          ELSE
                           NULL
                        END G_INIT_RPY_STS,
                        CASE
                          WHEN SUBSTR(IS_RPT, 5, 1) = '1' THEN
                           H_ACCT_STATUS
                          ELSE
                           NULL
                        END H_ACCT_STATUS,
                        CASE
                          WHEN SUBSTR(IS_RPT, 5, 1) = '1' THEN
                           H_ACCT_BAL
                          ELSE
                           NULL
                        END H_ACCT_BAL,
                        CASE
                          WHEN SUBSTR(IS_RPT, 5, 1) = '1' THEN
                           H_BAL_CHG_DATE
                          ELSE
                           NULL
                        END H_BAL_CHG_DATE,
                        CASE
                          WHEN SUBSTR(IS_RPT, 5, 1) = '1' THEN
                           H_FIVE_CATE
                          ELSE
                           NULL
                        END H_FIVE_CATE,
                        CASE
                          WHEN SUBSTR(IS_RPT, 5, 1) = '1' THEN
                           H_FIVE_CATE_ADJ_DATE
                          ELSE
                           NULL
                        END H_FIVE_CATE_ADJ_DATE,
                        CASE
                          WHEN SUBSTR(IS_RPT, 5, 1) = '1' THEN
                           H_PYMT_PRD
                          ELSE
                           NULL
                        END H_PYMT_PRD,
                        CASE
                          WHEN SUBSTR(IS_RPT, 5, 1) = '1' THEN
                           H_TOT_OVERD
                          ELSE
                           NULL
                        END H_TOT_OVERD,
                        CASE
                          WHEN SUBSTR(IS_RPT, 5, 1) = '1' THEN
                           H_OVERD_PRINC
                          ELSE
                           NULL
                        END H_OVERD_PRINC,
                        CASE
                          WHEN SUBSTR(IS_RPT, 5, 1) = '1' THEN
                           H_OVERD_DY
                          ELSE
                           NULL
                        END H_OVERD_DY,
                        CASE
                          WHEN SUBSTR(IS_RPT, 5, 1) = '1' THEN
                           H_LAT_RPY_DATE
                          ELSE
                           NULL
                        END H_LAT_RPY_DATE,
                        CASE
                          WHEN SUBSTR(IS_RPT, 5, 1) = '1' THEN
                           H_LAT_RPY_AMT
                          ELSE
                           NULL
                        END H_LAT_RPY_AMT,
                        CASE
                          WHEN SUBSTR(IS_RPT, 5, 1) = '1' THEN
                           H_LAT_RPY_PRINC_AMT
                          ELSE
                           NULL
                        END H_LAT_RPY_PRINC_AMT,
                        CASE
                          WHEN SUBSTR(IS_RPT, 5, 1) = '1' THEN
                           H_RPMT_TYPE
                          ELSE
                           NULL
                        END H_RPMT_TYPE,
                        CASE
                          WHEN SUBSTR(IS_RPT, 5, 1) = '1' THEN
                           H_LAT_AGRR_RPY_DATE
                          ELSE
                           NULL
                        END H_LAT_AGRR_RPY_DATE,
                        CASE
                          WHEN SUBSTR(IS_RPT, 5, 1) = '1' THEN
                           H_LAT_AGRR_RPY_AMT
                          ELSE
                           NULL
                        END H_LAT_AGRR_RPY_AMT,
                        CASE
                          WHEN SUBSTR(IS_RPT, 5, 1) = '1' THEN
                           H_NXT_AGRR_RPY_DATE
                          ELSE
                           NULL
                        END H_NXT_AGRR_RPY_DATE,
                        CASE
                          WHEN SUBSTR(IS_RPT, 5, 1) = '1' THEN
                           H_CLOSE_DATE
                          ELSE
                           NULL
                        END H_CLOSE_DATE
                   FROM MBT_410_HIS
                  WHERE DATA_STATUS = '23'
                    AND HIS_DATE = V_NOW_DATE
                    AND B_RPT_DATE_CODE != '99') TMP
           LEFT JOIN MBT_410_HIS HIS
             ON TMP.DATA_ID = HIS.DATA_ID) SOURCE
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
       TARGET.C_ACCT_CRED_LINE_AMT,
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
       TARGET.H_ACCT_BAL,
       TARGET.H_BAL_CHG_DATE,
       TARGET.H_FIVE_CATE,
       TARGET.H_FIVE_CATE_ADJ_DATE,
       TARGET.H_PYMT_PRD,
       TARGET.H_TOT_OVERD,
       TARGET.H_OVERD_PRINC,
       TARGET.H_OVERD_DY,
       TARGET.H_LAT_RPY_DATE,
       TARGET.H_LAT_RPY_AMT,
       TARGET.H_LAT_RPY_PRINC_AMT,
       TARGET.H_RPMT_TYPE,
       TARGET.H_LAT_AGRR_RPY_DATE,
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
       TARGET.IS_RPT,
       TARGET.ODS_DATA_ID,
       TARGET.RPT_DATE,
       TARGET.RPT_TIME,
       TARGET.ROW_NUM)
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
       SOURCE.C_ACCT_CRED_LINE_AMT,
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
       SOURCE.H_ACCT_BAL,
       SOURCE.H_BAL_CHG_DATE,
       SOURCE.H_FIVE_CATE,
       SOURCE.H_FIVE_CATE_ADJ_DATE,
       SOURCE.H_PYMT_PRD,
       SOURCE.H_TOT_OVERD,
       SOURCE.H_OVERD_PRINC,
       SOURCE.H_OVERD_DY,
       SOURCE.H_LAT_RPY_DATE,
       SOURCE.H_LAT_RPY_AMT,
       SOURCE.H_LAT_RPY_PRINC_AMT,
       SOURCE.H_RPMT_TYPE,
       SOURCE.H_LAT_AGRR_RPY_DATE,
       SOURCE.H_LAT_AGRR_RPY_AMT,
       SOURCE.H_NXT_AGRR_RPY_DATE,
       SOURCE.H_CLOSE_DATE,
       SOURCE.DATA_DESC,
       SOURCE.REMARKS,
       SOURCE.CHECK_FLAG,
       SOURCE.CHECK_DESC,
       SOURCE.CHECK_ERR_TYPE,
       SOURCE.NEXT_ACTION,
       '24',
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
       SOURCE.IS_RPT,
       SOURCE.DATA_ID,
       V_NOW_DATE,
       V_NOW_TIME,
       GET_ROW_NUM( SOURCE.ORG_ID,'410'));
  COMMIT;
  --≤Â»Î◊”±Ì
  MERGE INTO MBT_410_D_RPT TARGET
  USING (SELECT C.DATA_ID,
                A.DATA_ID PDATA_ID,
                C.D_ARLP_ID_TYPE,
                C.D_ARLP_NAME,
                C.D_ARLP_CERT_TYPE,
                C.D_ARLP_CERT_NUM,
                C.D_ARLP_TYPE,
                C.D_ARLP_AMT,
                C.D_ARLP_AMT_ORG,
                C.D_WARTY_SIGN,
                C.D_MAX_GUAR_MCC,
                C.DATA_DATE,
                C.ACTU_COTRL_INFO_UP_DATE,
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
                C.B_ACCT_CODE
           FROM MBT_410_RPT A
           LEFT JOIN MBT_410_D_HIS C
             ON C.PDATA_ID = A.ODS_DATA_ID
          WHERE A.DATA_STATUS = '24'
            AND A.RPT_DATE = V_NOW_DATE
            AND SUBSTR(A.IS_RPT, INSTR(A.IS_RPT, '|') + 1, 1) = '1') SOURCE
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
       TARGET.D_ARLP_AMT,
       TARGET.D_ARLP_AMT_ORG,
       TARGET.D_WARTY_SIGN,
       TARGET.D_MAX_GUAR_MCC,
       TARGET.DATA_DATE,
       TARGET.ACTU_COTRL_INFO_UP_DATE,
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
       TARGET.RPT_DATE,
       TARGET.RPT_TIME,
       TARGET.B_ACCT_CODE)
    VALUES
      (GET_DATA_ID(V_NOW_DATE),
       SOURCE.PDATA_ID,
       SOURCE.D_ARLP_ID_TYPE,
       SOURCE.D_ARLP_NAME,
       SOURCE.D_ARLP_CERT_TYPE,
       SOURCE.D_ARLP_CERT_NUM,
       SOURCE.D_ARLP_TYPE,
       SOURCE.D_ARLP_AMT,
       SOURCE.D_ARLP_AMT_ORG,
       SOURCE.D_WARTY_SIGN,
       SOURCE.D_MAX_GUAR_MCC,
       SOURCE.DATA_DATE,
       SOURCE.ACTU_COTRL_INFO_UP_DATE,
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
       SOURCE.B_ACCT_CODE);
  MERGE INTO MBT_410_E_RPT TARGET
  USING (SELECT C.DATA_ID,
                A.DATA_ID PDATA_ID,
                C.E_CCC,
                C.DATA_DATE,
                C.ACTU_COTRL_INFO_UP_DATE,
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
                C.B_ACCT_CODE
           FROM MBT_410_RPT A
           LEFT JOIN MBT_410_E_HIS C
             ON C.PDATA_ID = A.ODS_DATA_ID
          WHERE A.DATA_STATUS = '24'
            AND A.RPT_DATE = V_NOW_DATE
            AND SUBSTR(A.IS_RPT, INSTR(A.IS_RPT, '|') + 2, 1) = '1') SOURCE
  ON (TARGET.DATA_ID = SOURCE.DATA_ID)
  WHEN NOT MATCHED THEN
    INSERT
      (TARGET.DATA_ID,
       TARGET.PDATA_ID,
       TARGET.E_CCC,
       TARGET.DATA_DATE,
       TARGET.ACTU_COTRL_INFO_UP_DATE,
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
       TARGET.RPT_DATE,
       TARGET.RPT_TIME,
       TARGET.B_ACCT_CODE)
    VALUES
      (GET_DATA_ID(V_NOW_DATE),
       SOURCE.PDATA_ID,
       SOURCE.E_CCC,
       SOURCE.DATA_DATE,
       SOURCE.ACTU_COTRL_INFO_UP_DATE,
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
       SOURCE.B_ACCT_CODE);
  MERGE INTO MBT_410_I_RPT TARGET
  USING (SELECT C.DATA_ID,
                A.DATA_ID PDATA_ID,
                C.REF_NO,
                C.I_CHAN_TRAN_TYPE,
                C.I_TRAN_DATE,
                C.I_TRAN_AMT,
                C.I_TRAN_AMT_ORG,
                C.I_DUE_TRAN_MON,
                C.I_DET_INFO,
                C.DATA_DATE,
                C.ACTU_COTRL_INFO_UP_DATE,
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
                C.B_ACCT_CODE
           FROM MBT_410_RPT A
           LEFT JOIN MBT_410_I_HIS C
             ON C.PDATA_ID = A.ODS_DATA_ID
          WHERE A.DATA_STATUS = '24'
            AND A.RPT_DATE = V_NOW_DATE
            AND SUBSTR(A.IS_RPT, INSTR(A.IS_RPT, '|') + 3, 1) = '1') SOURCE
  ON (TARGET.DATA_ID = SOURCE.DATA_ID)
  WHEN NOT MATCHED THEN
    INSERT
      (TARGET.DATA_ID,
       TARGET.PDATA_ID,
       TARGET.REF_NO,
       TARGET.I_CHAN_TRAN_TYPE,
       TARGET.I_TRAN_DATE,
       TARGET.I_TRAN_AMT,
       TARGET.I_TRAN_AMT_ORG,
       TARGET.I_DUE_TRAN_MON,
       TARGET.I_DET_INFO,
       TARGET.DATA_DATE,
       TARGET.ACTU_COTRL_INFO_UP_DATE,
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
       TARGET.RPT_DATE,
       TARGET.RPT_TIME,
       TARGET.B_ACCT_CODE)
    VALUES
      (GET_DATA_ID(V_NOW_DATE),
       SOURCE.PDATA_ID,
       SOURCE.REF_NO,
       SOURCE.I_CHAN_TRAN_TYPE,
       SOURCE.I_TRAN_DATE,
       SOURCE.I_TRAN_AMT,
       SOURCE.I_TRAN_AMT_ORG,
       SOURCE.I_DUE_TRAN_MON,
       SOURCE.I_DET_INFO,
       SOURCE.DATA_DATE,
       SOURCE.ACTU_COTRL_INFO_UP_DATE,
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
       SOURCE.B_ACCT_CODE);
  COMMIT;
  UPDATE MBT_410_HIS
     SET DATA_STATUS = '25'
   WHERE DATA_STATUS = '23'
     AND HIS_DATE = V_NOW_DATE;
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
prompt Creating procedure SYNC_HIS_TO_RPT_411
prompt ======================================
prompt
CREATE OR REPLACE PROCEDURE "SYNC_HIS_TO_RPT_411"(ERRCODE  OUT VARCHAR,
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
    MBT_411_RPT
WHERE
    RPT_DATE=V_NOW_DATE and DATA_STATUS='24';
         DELETE FROM MBT_ROW_NUM WHERE TYPE='411';

COMMIT;
--≤Â»Î÷˜±Ì
MERGE
INTO
    MBT_411_RPT TARGET
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
            MBT_411_HIS
        WHERE
            DATA_STATUS='23'
        AND HIS_DATE=V_NOW_DATE
        AND IS_RPT='1') SOURCE
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
        TARGET.RPT_DATE,
        TARGET.RPT_TIME,
        TARGET.IS_RPT,
        TARGET.ROW_NUM
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
        '24',
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
        GET_ROW_NUM( SOURCE.ORG_ID,'411')
    );
COMMIT;
UPDATE MBT_411_HIS SET DATA_STATUS='25' WHERE DATA_STATUS='23' AND HIS_DATE=V_NOW_DATE;
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
prompt Creating procedure SYNC_HIS_TO_RPT_420
prompt ======================================
prompt
CREATE OR REPLACE PROCEDURE "SYNC_HIS_TO_RPT_420"(ERRCODE  OUT VARCHAR,
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
    MBT_420_C_RPT
WHERE pdata_id IN (select data_id from MBT_420_RPT where RPT_DATE=V_NOW_DATE and data_status='24');
DELETE
FROM
    MBT_420_RPT
WHERE
    RPT_DATE=V_NOW_DATE and DATA_STATUS='24';
        DELETE FROM MBT_ROW_NUM WHERE TYPE='420';

COMMIT;
--1.≤Â»Î÷˜±Ì
MERGE
INTO
    MBT_420_RPT TARGET
USING
    (
        SELECT
            TMP.B_INF_REC_TYPE,
            TMP.B_CONTRACT_CODE,
            TMP.B_RPT_DATE,
            TMP.B_RPT_DATE_CODE,
            TMP.B_NAME,
            TMP.B_ID_TYPE,
            TMP.B_ID_NUM,
            TMP.B_MNGMT_ORG_CODE,
            TMP.B_CONTRACT_NO,
            TMP.B_CUST_NO,
            TMP.B_INFO_UP_DATE,
            TMP.D_CREDIT_LIM_TYPE,
            TMP.D_LIM_LOOP_FLG,
            TMP.D_CREDIT_LIM,
            TMP.D_CY,
            TMP.D_CON_EFF_DATE,
            TMP.D_CON_EXP_DATE,
            TMP.D_CON_STATUS,
            TMP.D_CREDIT_REST,
            TMP.D_CREDIT_REST_CODE,
            TMP.F_DATA_DESC,
            HIS.DATA_ID,
            HIS.DATA_DATE,
            HIS.CORP_ID,
            HIS.ORG_ID,
            HIS.GROUP_ID,
            HIS.INQ_ORG_ID,
            HIS.INQ_GROUP_ID,
            HIS.REMARKS,
            HIS.CHECK_FLAG,
            HIS.CHECK_DESC,
            HIS.CHECK_ERR_TYPE,
            HIS.NEXT_ACTION,
            HIS.DATA_STATUS,
            HIS.DATA_FLAG,
            HIS.DATA_SOURCE,
            HIS.DATA_VERSION,
            HIS.DATA_REJ_DESC,
            HIS.DATA_DEL_DESC,
            HIS.DATA_CRT_USER,
            HIS.DATA_CRT_DATE,
            HIS.DATA_CRT_TIME,
            HIS.DATA_CHG_USER,
            HIS.DATA_CHG_DATE,
            HIS.DATA_CHG_TIME,
            HIS.DATA_APV_USER,
            HIS.DATA_APV_DATE,
            HIS.DATA_APV_TIME,
            HIS.RSV1,
            HIS.RSV2,
            HIS.RSV3,
            HIS.RSV4,
            HIS.RSV5,
            HIS.IS_RPT
        FROM
            (
                        SELECT
                            DATA_ID,
                            CASE WHEN SUBSTR(IS_RPT,0,1) = '1' THEN  B_INF_REC_TYPE ELSE NULL END B_INF_REC_TYPE,
                            CASE WHEN SUBSTR(IS_RPT,0,1) = '1' THEN  B_CONTRACT_CODE ELSE NULL END B_CONTRACT_CODE,
                            CASE WHEN SUBSTR(IS_RPT,0,1) = '1' THEN  B_RPT_DATE ELSE NULL END B_RPT_DATE,
                            CASE WHEN SUBSTR(IS_RPT,0,1) = '1' THEN  B_RPT_DATE_CODE ELSE NULL END B_RPT_DATE_CODE,
                            CASE WHEN SUBSTR(IS_RPT,0,1) = '1' THEN  B_NAME ELSE NULL END B_NAME,
                            CASE WHEN SUBSTR(IS_RPT,0,1) = '1' THEN  B_ID_TYPE ELSE NULL END B_ID_TYPE,
                            CASE WHEN SUBSTR(IS_RPT,0,1) = '1' THEN  B_ID_NUM ELSE NULL END B_ID_NUM,
                            CASE WHEN SUBSTR(IS_RPT,0,1) = '1' THEN  B_MNGMT_ORG_CODE ELSE NULL END B_MNGMT_ORG_CODE,
                            CASE WHEN SUBSTR(IS_RPT,0,1) = '1' THEN  B_CONTRACT_NO ELSE NULL END B_CONTRACT_NO,
                            CASE WHEN SUBSTR(IS_RPT,0,1) = '1' THEN  B_CUST_NO ELSE NULL END B_CUST_NO,
                            CASE WHEN SUBSTR(IS_RPT,0,1) = '1' THEN  B_INFO_UP_DATE ELSE NULL END B_INFO_UP_DATE,
                            CASE WHEN SUBSTR(IS_RPT,2,1) = '1' THEN  D_CREDIT_LIM_TYPE ELSE NULL END D_CREDIT_LIM_TYPE,
                            CASE WHEN SUBSTR(IS_RPT,2,1) = '1' THEN  D_LIM_LOOP_FLG ELSE NULL END D_LIM_LOOP_FLG,
                            CASE WHEN SUBSTR(IS_RPT,2,1) = '1' THEN  D_CREDIT_LIM ELSE NULL END D_CREDIT_LIM,
                            CASE WHEN SUBSTR(IS_RPT,2,1) = '1' THEN  D_CY ELSE NULL END D_CY,
                            CASE WHEN SUBSTR(IS_RPT,2,1) = '1' THEN  D_CON_EFF_DATE ELSE NULL END D_CON_EFF_DATE,
                            CASE WHEN SUBSTR(IS_RPT,2,1) = '1' THEN  D_CON_EXP_DATE ELSE NULL END D_CON_EXP_DATE,
                            CASE WHEN SUBSTR(IS_RPT,2,1) = '1' THEN  D_CON_STATUS ELSE NULL END D_CON_STATUS,
                            CASE WHEN SUBSTR(IS_RPT,2,1) = '1' THEN  D_CREDIT_REST ELSE NULL END D_CREDIT_REST,
                            CASE WHEN SUBSTR(IS_RPT,2,1) = '1' THEN  D_CREDIT_REST_CODE ELSE NULL END D_CREDIT_REST_CODE,
                            CASE WHEN SUBSTR(IS_RPT,3,1) = '1' THEN  F_DATA_DESC ELSE NULL END F_DATA_DESC
                        FROM
                            MBT_420_HIS
                        WHERE
                            DATA_STATUS='23'
                        AND HIS_DATE=V_NOW_DATE
                        AND B_RPT_DATE_CODE !='99'
                       ) TMP
        LEFT JOIN
            MBT_420_HIS HIS
        ON
            TMP.DATA_ID=HIS.DATA_ID) SOURCE
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
        TARGET.D_CY,
        TARGET.D_CON_EFF_DATE,
        TARGET.D_CON_EXP_DATE,
        TARGET.D_CON_STATUS,
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
        TARGET.B_CUST_NO,
        TARGET.B_INFO_UP_DATE,
        TARGET.IS_RPT,
        TARGET.ODS_DATA_ID,
        TARGET.RPT_DATE,
        TARGET.RPT_TIME,
        TARGET.ROW_NUM
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
        SOURCE.D_CY,
        SOURCE.D_CON_EFF_DATE,
        SOURCE.D_CON_EXP_DATE,
        SOURCE.D_CON_STATUS,
        SOURCE.D_CREDIT_REST,
        SOURCE.D_CREDIT_REST_CODE,
        SOURCE.F_DATA_DESC,
        SOURCE.REMARKS,
        SOURCE.CHECK_FLAG,
        SOURCE.CHECK_DESC,
        SOURCE.CHECK_ERR_TYPE,
        SOURCE.NEXT_ACTION,
        '24',
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
        SOURCE.IS_RPT,
        SOURCE.DATA_ID,
        V_NOW_DATE,
        V_NOW_TIME,
        GET_ROW_NUM( SOURCE.ORG_ID,'420')
    );
COMMIT;
--≤Â»Î◊”±Ì
MERGE
INTO
    MBT_420_C_RPT TARGET
USING
    (
        SELECT
            C.DATA_ID,
            A.DATA_ID PDATA_ID,
            C.C_BRER_TYPE,
            C.C_CERT_REL_NAME,
            C.C_CERT_REL_ID_TYPE,
            C.C_CERT_REL_ID_NUM,
            C.RSV2
        FROM
            MBT_420_RPT A
        LEFT JOIN
            MBT_420_C_HIS C
        ON
            C.PDATA_ID=A.ODS_DATA_ID
        WHERE
            A.DATA_STATUS='24'
        AND A.RPT_DATE=V_NOW_DATE
        AND SUBSTR(A.IS_RPT,INSTR(A.IS_RPT,'|')+1,1)='1' ) SOURCE
ON
    (
        TARGET.DATA_ID = SOURCE.DATA_ID)
WHEN NOT MATCHED
    THEN
INSERT
    (
        TARGET.DATA_ID,
        TARGET.PDATA_ID,
        TARGET.C_BRER_TYPE,
        TARGET.C_CERT_REL_NAME,
        TARGET.C_CERT_REL_ID_TYPE,
        TARGET.C_CERT_REL_ID_NUM,
        TARGET.RSV2,
        TARGET.ODS_DATA_ID,
        TARGET.RPT_DATE,
        TARGET.RPT_TIME
    )
    VALUES
    (
        GET_DATA_ID(V_NOW_DATE),
        SOURCE.PDATA_ID,
        SOURCE.C_BRER_TYPE,
        SOURCE.C_CERT_REL_NAME,
        SOURCE.C_CERT_REL_ID_TYPE,
        SOURCE.C_CERT_REL_ID_NUM,
        SOURCE.RSV2,
        SOURCE.DATA_ID,
        V_NOW_DATE,
        V_NOW_TIME
    );
COMMIT;
UPDATE MBT_420_HIS SET DATA_STATUS='25' WHERE DATA_STATUS='23' AND HIS_DATE=V_NOW_DATE;
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
prompt Creating procedure SYNC_HIS_TO_RPT_421
prompt ======================================
prompt
CREATE OR REPLACE PROCEDURE "SYNC_HIS_TO_RPT_421"(ERRCODE  OUT VARCHAR,
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
    MBT_421_RPT
WHERE
    RPT_DATE=V_NOW_DATE and DATA_STATUS='24';
COMMIT;
--≤Â»Î÷˜±Ì
MERGE
INTO
    MBT_421_RPT TARGET
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
            MBT_421_HIS
        WHERE
            DATA_STATUS='23'
            AND HIS_DATE=V_NOW_DATE
            AND IS_RPT = '1') SOURCE
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
        TARGET.RPT_DATE,
        TARGET.RPT_TIME,
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
        '24',
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
UPDATE MBT_421_HIS SET DATA_STATUS='25' WHERE DATA_STATUS='23' AND HIS_DATE=V_NOW_DATE;
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
prompt Creating procedure SYNC_HIS_TO_RPT_440
prompt ======================================
prompt
CREATE OR REPLACE PROCEDURE "SYNC_HIS_TO_RPT_440"(ERRCODE OUT VARCHAR,
                                                    ERRMSG  OUT VARCHAR) AS
  V_NOW_DATE CHAR(8);
  V_NOW_TIME CHAR(14);
BEGIN
  SELECT TO_CHAR(SYSDATE, 'YYYYMMDD') INTO V_NOW_DATE FROM DUAL;
  SELECT TO_CHAR(SYSDATE, 'YYYYMMDDHH24MISS') INTO V_NOW_TIME FROM DUAL;

  DELETE FROM MBT_440_D_RPT
   WHERE  pdata_id IN (select data_id
                       from MBT_440_RPT
                      where RPT_DATE = V_NOW_DATE --TO_CHAR(SYSDATE, 'YYYYMMDD')
                        and data_status = '24'
                        );
  DELETE FROM MBT_440_RPT
   WHERE RPT_DATE = V_NOW_DATE --TO_CHAR(SYSDATE, 'YYYYMMDD')
     and DATA_STATUS = '24';
   DELETE FROM MBT_ROW_NUM WHERE TYPE='440';

  COMMIT;
  --1.≤Â»Î÷˜±Ì
  MERGE INTO MBT_440_RPT TARGET
  USING (SELECT TMP.B_ACCT_TYPE,
                TMP.B_ACCT_CODE,
                TMP.B_RPT_DATE,
                TMP.B_RPT_DATE_CODE,
                TMP.B_NAME,
                TMP.B_ID_TYPE,
                TMP.B_INF_REC_TYPE,
                TMP.B_ID_NUM,
                TMP.B_MNGMT_ORG_CODE,
                TMP.B_CUST_NO,
                TMP.REF_NO,
                TMP.B_INFO_UP_DATE,
                TMP.INF_REC_TYPE,
                TMP.C_BUSI_LINES,
                TMP.C_BUSI_DTIL_LINES,
                TMP.C_OPEN_DATE,
                TMP.C_GUAR_AMT,
                TMP.C_CY,
                TMP.C_DUE_DATE,
                TMP.C_GUAR_MODE,
                TMP.C_OTH_REPY_GUAR_WAY,
                TMP.C_SEC_DEP,
                TMP.C_CTRCT_TXT_CODE,
                TMP.F_MCC,
                TMP.G_ACCT_STATUS,
                TMP.G_LOAN_AMT,
                TMP.G_REPAY_PRD,
                TMP.G_FIVE_CATE,
                TMP.G_FIVE_CATE_ADJ_DATE,
                TMP.G_RI_EX,
                TMP.G_COMP_ADV_FLAG,
                TMP.G_CLOSE_DATE,
                HIS.DATA_ID,
                HIS.DATA_DATE,
                HIS.CORP_ID,
                HIS.ORG_ID,
                HIS.GROUP_ID,
                HIS.INQ_ORG_ID,
                HIS.INQ_GROUP_ID,
                HIS.REMARKS,
                HIS.CHECK_FLAG,
                HIS.CHECK_DESC,
                HIS.CHECK_ERR_TYPE,
                HIS.NEXT_ACTION,
                HIS.DATA_STATUS,
                HIS.DATA_FLAG,
                HIS.DATA_SOURCE,
                HIS.DATA_VERSION,
                HIS.DATA_REJ_DESC,
                HIS.DATA_DEL_DESC,
                HIS.DATA_CRT_USER,
                HIS.DATA_CRT_DATE,
                HIS.DATA_CRT_TIME,
                HIS.DATA_CHG_USER,
                HIS.DATA_CHG_DATE,
                HIS.DATA_CHG_TIME,
                HIS.DATA_APV_USER,
                HIS.DATA_APV_DATE,
                HIS.DATA_APV_TIME,
                HIS.RSV1,
                HIS.RSV2,
                HIS.RSV3,
                HIS.RSV4,
                HIS.RSV5,
                HIS.IS_RPT,
                HIS.DATA_DESC
           FROM (SELECT DATA_ID,
                        CASE
                          WHEN SUBSTR(IS_RPT, 0, 1) = '1' THEN
                           B_ACCT_TYPE
                          ELSE
                           NULL
                        END B_ACCT_TYPE,
                        CASE
                          WHEN SUBSTR(IS_RPT, 0, 1) = '1' THEN
                           B_ACCT_CODE
                          ELSE
                           NULL
                        END B_ACCT_CODE,
                        CASE
                          WHEN SUBSTR(IS_RPT, 0, 1) = '1' THEN
                           B_RPT_DATE
                          ELSE
                           NULL
                        END B_RPT_DATE,
                        CASE
                          WHEN SUBSTR(IS_RPT, 0, 1) = '1' THEN
                           B_RPT_DATE_CODE
                          ELSE
                           NULL
                        END B_RPT_DATE_CODE,
                        CASE
                          WHEN SUBSTR(IS_RPT, 0, 1) = '1' THEN
                           B_NAME
                          ELSE
                           NULL
                        END B_NAME,
                        CASE
                          WHEN SUBSTR(IS_RPT, 0, 1) = '1' THEN
                           B_ID_TYPE
                          ELSE
                           NULL
                        END B_ID_TYPE,
                        CASE
                          WHEN SUBSTR(IS_RPT, 0, 1) = '1' THEN
                           B_INF_REC_TYPE
                          ELSE
                           NULL
                        END B_INF_REC_TYPE,
                        CASE
                          WHEN SUBSTR(IS_RPT, 0, 1) = '1' THEN
                           B_ID_NUM
                          ELSE
                           NULL
                        END B_ID_NUM,
                        CASE
                          WHEN SUBSTR(IS_RPT, 0, 1) = '1' THEN
                           B_MNGMT_ORG_CODE
                          ELSE
                           NULL
                        END B_MNGMT_ORG_CODE,
                        CASE
                          WHEN SUBSTR(IS_RPT, 0, 1) = '1' THEN
                           B_CUST_NO
                          ELSE
                           NULL
                        END B_CUST_NO,
                        CASE
                          WHEN SUBSTR(IS_RPT, 0, 1) = '1' THEN
                           REF_NO
                          ELSE
                           NULL
                        END REF_NO,
                        CASE
                          WHEN SUBSTR(IS_RPT, 0, 1) = '1' THEN
                           B_INFO_UP_DATE
                          ELSE
                           NULL
                        END B_INFO_UP_DATE,
                        CASE
                          WHEN SUBSTR(IS_RPT, 0, 1) = '1' THEN
                           INF_REC_TYPE
                          ELSE
                           NULL
                        END INF_REC_TYPE,
                        CASE
                          WHEN SUBSTR(IS_RPT, 2, 1) = '1' THEN
                           C_BUSI_LINES
                          ELSE
                           NULL
                        END C_BUSI_LINES,
                        CASE
                          WHEN SUBSTR(IS_RPT, 2, 1) = '1' THEN
                           C_BUSI_DTIL_LINES
                          ELSE
                           NULL
                        END C_BUSI_DTIL_LINES,
                        CASE
                          WHEN SUBSTR(IS_RPT, 2, 1) = '1' THEN
                           C_OPEN_DATE
                          ELSE
                           NULL
                        END C_OPEN_DATE,
                        CASE
                          WHEN SUBSTR(IS_RPT, 2, 1) = '1' THEN
                           C_GUAR_AMT
                          ELSE
                           NULL
                        END C_GUAR_AMT,
                        CASE
                          WHEN SUBSTR(IS_RPT, 2, 1) = '1' THEN
                           C_CY
                          ELSE
                           NULL
                        END C_CY,
                        CASE
                          WHEN SUBSTR(IS_RPT, 2, 1) = '1' THEN
                           C_DUE_DATE
                          ELSE
                           NULL
                        END C_DUE_DATE,
                        CASE
                          WHEN SUBSTR(IS_RPT, 2, 1) = '1' THEN
                           C_GUAR_MODE
                          ELSE
                           NULL
                        END C_GUAR_MODE,
                        CASE
                          WHEN SUBSTR(IS_RPT, 2, 1) = '1' THEN
                           C_OTH_REPY_GUAR_WAY
                          ELSE
                           NULL
                        END C_OTH_REPY_GUAR_WAY,
                        CASE
                          WHEN SUBSTR(IS_RPT, 2, 1) = '1' THEN
                           C_SEC_DEP
                          ELSE
                           NULL
                        END C_SEC_DEP,
                        CASE
                          WHEN SUBSTR(IS_RPT, 2, 1) = '1' THEN
                           C_CTRCT_TXT_CODE
                          ELSE
                           NULL
                        END C_CTRCT_TXT_CODE,
                        CASE
                          WHEN SUBSTR(IS_RPT, 3, 1) = '1' THEN
                           F_MCC
                          ELSE
                           NULL
                        END F_MCC,
                        CASE
                          WHEN SUBSTR(IS_RPT, 4, 1) = '1' THEN
                           G_ACCT_STATUS
                          ELSE
                           NULL
                        END G_ACCT_STATUS,
                        CASE
                          WHEN SUBSTR(IS_RPT, 4, 1) = '1' THEN
                           G_LOAN_AMT
                          ELSE
                           NULL
                        END G_LOAN_AMT,
                        CASE
                          WHEN SUBSTR(IS_RPT, 4, 1) = '1' THEN
                           G_REPAY_PRD
                          ELSE
                           NULL
                        END G_REPAY_PRD,
                        CASE
                          WHEN SUBSTR(IS_RPT, 4, 1) = '1' THEN
                           G_FIVE_CATE
                          ELSE
                           NULL
                        END G_FIVE_CATE,
                        CASE
                          WHEN SUBSTR(IS_RPT, 4, 1) = '1' THEN
                           G_FIVE_CATE_ADJ_DATE
                          ELSE
                           NULL
                        END G_FIVE_CATE_ADJ_DATE,
                        CASE
                          WHEN SUBSTR(IS_RPT, 4, 1) = '1' THEN
                           G_RI_EX
                          ELSE
                           NULL
                        END G_RI_EX,
                        CASE
                          WHEN SUBSTR(IS_RPT, 4, 1) = '1' THEN
                           G_COMP_ADV_FLAG
                          ELSE
                           NULL
                        END G_COMP_ADV_FLAG,
                        CASE
                          WHEN SUBSTR(IS_RPT, 4, 1) = '1' THEN
                           G_CLOSE_DATE
                          ELSE
                           NULL
                        END G_CLOSE_DATE
                   FROM MBT_440_HIS
                  WHERE DATA_STATUS = '23'
                    AND HIS_DATE = V_NOW_DATE --TO_CHAR(SYSDATE, 'YYYYMMDD')
                    AND B_RPT_DATE_CODE != '99') TMP
           LEFT JOIN MBT_440_HIS HIS
             ON TMP.DATA_ID = HIS.DATA_ID) SOURCE
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
       TARGET.C_GUAR_AMT,
       TARGET.C_CY,
       TARGET.C_DUE_DATE,
       TARGET.C_GUAR_MODE,
       TARGET.C_OTH_REPY_GUAR_WAY,
       TARGET.C_SEC_DEP,
       TARGET.C_CTRCT_TXT_CODE,
       TARGET.F_MCC,
       TARGET.G_ACCT_STATUS,
       TARGET.G_LOAN_AMT,
       TARGET.G_REPAY_PRD,
       TARGET.G_FIVE_CATE,
       TARGET.G_FIVE_CATE_ADJ_DATE,
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
       TARGET.IS_RPT,
       TARGET.ODS_DATA_ID,
       TARGET.RPT_DATE,
       TARGET.RPT_TIME,
       TARGET.ROW_NUM)
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
       SOURCE.C_GUAR_AMT,
       SOURCE.C_CY,
       SOURCE.C_DUE_DATE,
       SOURCE.C_GUAR_MODE,
       SOURCE.C_OTH_REPY_GUAR_WAY,
       SOURCE.C_SEC_DEP,
       SOURCE.C_CTRCT_TXT_CODE,
       SOURCE.F_MCC,
       SOURCE.G_ACCT_STATUS,
       SOURCE.G_LOAN_AMT,
       SOURCE.G_REPAY_PRD,
       SOURCE.G_FIVE_CATE,
       SOURCE.G_FIVE_CATE_ADJ_DATE,
       SOURCE.G_RI_EX,
       SOURCE.G_COMP_ADV_FLAG,
       SOURCE.G_CLOSE_DATE,
       SOURCE.REMARKS,
       SOURCE.CHECK_FLAG,
       SOURCE.CHECK_DESC,
       SOURCE.CHECK_ERR_TYPE,
       SOURCE.NEXT_ACTION,
       '24',
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
       SOURCE.IS_RPT,
       SOURCE.DATA_ID,
       V_NOW_DATE,
       V_NOW_TIME,
       GET_ROW_NUM( SOURCE.ORG_ID,'440'));
  COMMIT;
  --≤Â»Î◊”±Ì
  MERGE INTO MBT_440_D_RPT TARGET
  USING (SELECT C.DATA_ID,
                A.DATA_ID PDATA_ID,
                C.INFO_ID_TYPE,
                C.ARLP_NAME,
                C.ARLP_CERT_TYPE,
                C.ARLP_CERT_NUM,
                C.ARLP_AMT,
                C.ARLP_AMT_ORG,
                C.ARLP_TYPE,
                C.WARTY_SIGN,
                C.MAX_GUAR_MCC,
                C.DATA_DATE,
                C.ACTU_COTRL_INFO_UP_DATE,
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
                A.B_ACCT_CODE
           FROM MBT_440_RPT A
           LEFT JOIN MBT_440_D_HIS C
             ON C.PDATA_ID = A.ODS_DATA_ID
          WHERE A.DATA_STATUS = '24'
            AND A.RPT_DATE = V_NOW_DATE --TO_CHAR(SYSDATE, 'YYYYMMDD')
            AND SUBSTR(A.IS_RPT, INSTR(A.IS_RPT, '|') + 1, 1) = '1') SOURCE
  ON (TARGET.DATA_ID = SOURCE.DATA_ID)
  WHEN NOT MATCHED THEN
    INSERT
      (TARGET.DATA_ID,
       TARGET.PDATA_ID,
       TARGET.INFO_ID_TYPE,
       TARGET.ARLP_NAME,
       TARGET.ARLP_CERT_TYPE,
       TARGET.ARLP_CERT_NUM,
       TARGET.ARLP_AMT,
       TARGET.ARLP_AMT_ORG,
       TARGET.ARLP_TYPE,
       TARGET.WARTY_SIGN,
       TARGET.MAX_GUAR_MCC,
       TARGET.DATA_DATE,
       TARGET.ACTU_COTRL_INFO_UP_DATE,
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
       TARGET.RPT_DATE,
       TARGET.RPT_TIME,
       TARGET.B_ACCT_CODE)
    VALUES
      (GET_DATA_ID(V_NOW_DATE),
       SOURCE.PDATA_ID,
       SOURCE.INFO_ID_TYPE,
       SOURCE.ARLP_NAME,
       SOURCE.ARLP_CERT_TYPE,
       SOURCE.ARLP_CERT_NUM,
       SOURCE.ARLP_AMT,
       SOURCE.ARLP_AMT_ORG,
       SOURCE.ARLP_TYPE,
       SOURCE.WARTY_SIGN,
       SOURCE.MAX_GUAR_MCC,
       SOURCE.DATA_DATE,
       SOURCE.ACTU_COTRL_INFO_UP_DATE,
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
       SOURCE.B_ACCT_CODE);

  COMMIT;
  UPDATE MBT_440_HIS
     SET DATA_STATUS = '25'
   WHERE DATA_STATUS = '23'
     AND HIS_DATE = V_NOW_DATE;
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
prompt Creating procedure SYNC_HIS_TO_RPT_441
prompt ======================================
prompt
CREATE OR REPLACE PROCEDURE "SYNC_HIS_TO_RPT_441"(ERRCODE  OUT VARCHAR,
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
    MBT_441_RPT
WHERE
    RPT_DATE=V_NOW_DATE and DATA_STATUS='24';
COMMIT;
--≤Â»Î÷˜±Ì
MERGE
INTO
    MBT_441_RPT TARGET
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
            MBT_441_HIS
        WHERE
            DATA_STATUS='23'
        AND HIS_DATE=V_NOW_DATE
        AND IS_RPT='1') SOURCE
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
        TARGET.RPT_DATE,
        TARGET.RPT_TIME,
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
        '24',
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
UPDATE MBT_441_HIS SET DATA_STATUS='25' WHERE DATA_STATUS='23' AND HIS_DATE=V_NOW_DATE;
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
prompt Creating procedure SYNC_HIS_TO_RPT_510
prompt ======================================
prompt
CREATE OR REPLACE PROCEDURE "SYNC_HIS_TO_RPT_510"(ERRCODE OUT VARCHAR,
                                                  ERRMSG  OUT VARCHAR) AS
  V_NOW_DATE CHAR(8);
  V_NOW_TIME CHAR(14);
BEGIN
  SELECT TO_CHAR(SYSDATE, 'YYYYMMDD') INTO V_NOW_DATE FROM DUAL;
  SELECT TO_CHAR(SYSDATE, 'YYYYMMDDHH24MISS') INTO V_NOW_TIME FROM DUAL;

  DELETE FROM MBT_510_D_RPT
   WHERE --RPT_DATE = V_NOW_DATE
    -- and
    pdata_id in (select data_id
                       from MBT_510_RPT
                      where RPT_DATE = V_NOW_DATE
                        and data_status = '24');
                       -- and data_id = pdata_id
  DELETE FROM MBT_510_E_RPT
   WHERE
      pdata_id in (select data_id
                       from MBT_510_RPT
                      where RPT_DATE = V_NOW_DATE
                        and data_status = '24');
  DELETE FROM MBT_510_F_RPT
   WHERE
      pdata_id in (select data_id
                       from MBT_510_RPT
                      where RPT_DATE = V_NOW_DATE
                        and data_status = '24'
                        );
  DELETE FROM MBT_510_RPT
   WHERE RPT_DATE = V_NOW_DATE
     and DATA_STATUS = '24';
  DELETE FROM MBT_ROW_NUM WHERE TYPE = '510';

  COMMIT;
    ERRCODE :='00';
  ERRMSG :='';
  --1.≤Â»Î÷˜±Ì
  MERGE INTO MBT_510_RPT TARGET
  USING (SELECT TMP.B_INF_REC_NO,
                TMP.B_INF_REC_TYPE,
                TMP.B_CC_CODE,
                TMP.B_RPT_DATE,
                TMP.B_RPT_DATE_CODE,
                TMP.B_INFO_ID_TYPE,
                TMP.B_NAME,
                TMP.B_CERT_TYPE,
                TMP.B_CERT_NUM,
                TMP.B_MNGMT_ORG_CODE,
                TMP.B_CUST_NO,
                TMP.C_GUAR_TYPE,
                TMP.C_CC_AMT,
                TMP.C_CY,
                TMP.C_CC_VAL_DATE,
                TMP.C_CC_EXP_DATE,
                TMP.C_MAX_GUAR,
                TMP.C_CC_STATUS,
                TMP.G_DATA_DESC,
                HIS.DATA_ID,
                HIS.DATA_DATE,
                HIS.CORP_ID,
                HIS.ORG_ID,
                HIS.GROUP_ID,
                HIS.INQ_ORG_ID,
                HIS.INQ_GROUP_ID,
                HIS.REMARKS,
                HIS.CHECK_FLAG,
                HIS.CHECK_DESC,
                HIS.CHECK_ERR_TYPE,
                HIS.NEXT_ACTION,
                HIS.DATA_STATUS,
                HIS.DATA_FLAG,
                HIS.DATA_SOURCE,
                HIS.DATA_VERSION,
                HIS.DATA_REJ_DESC,
                HIS.DATA_DEL_DESC,
                HIS.DATA_CRT_USER,
                HIS.DATA_CRT_DATE,
                HIS.DATA_CRT_TIME,
                HIS.DATA_CHG_USER,
                HIS.DATA_CHG_DATE,
                HIS.DATA_CHG_TIME,
                HIS.DATA_APV_USER,
                HIS.DATA_APV_DATE,
                HIS.DATA_APV_TIME,
                HIS.RSV1,
                HIS.RSV2,
                HIS.RSV3,
                HIS.RSV4,
                HIS.RSV5,
                HIS.IS_RPT,
                HIS.CUST_TYPE
           FROM (SELECT DATA_ID,
                        CASE
                          WHEN SUBSTR(IS_RPT, 0, 1) = '1' THEN
                           B_INF_REC_NO
                          ELSE
                           NULL
                        END B_INF_REC_NO,
                        CASE
                          WHEN SUBSTR(IS_RPT, 0, 1) = '1' THEN
                           B_INF_REC_TYPE
                          ELSE
                           NULL
                        END B_INF_REC_TYPE,
                        CASE
                          WHEN SUBSTR(IS_RPT, 0, 1) = '1' THEN
                           B_CC_CODE
                          ELSE
                           NULL
                        END B_CC_CODE,
                        CASE
                          WHEN SUBSTR(IS_RPT, 0, 1) = '1' THEN
                           B_RPT_DATE
                          ELSE
                           NULL
                        END B_RPT_DATE,
                        CASE
                          WHEN SUBSTR(IS_RPT, 0, 1) = '1' THEN
                           B_RPT_DATE_CODE
                          ELSE
                           NULL
                        END B_RPT_DATE_CODE,
                        CASE
                          WHEN SUBSTR(IS_RPT, 0, 1) = '1' THEN
                           B_INFO_ID_TYPE
                          ELSE
                           NULL
                        END B_INFO_ID_TYPE,
                        CASE
                          WHEN SUBSTR(IS_RPT, 0, 1) = '1' THEN
                           B_NAME
                          ELSE
                           NULL
                        END B_NAME,
                        CASE
                          WHEN SUBSTR(IS_RPT, 0, 1) = '1' THEN
                           B_CERT_TYPE
                          ELSE
                           NULL
                        END B_CERT_TYPE,
                        CASE
                          WHEN SUBSTR(IS_RPT, 0, 1) = '1' THEN
                           B_CERT_NUM
                          ELSE
                           NULL
                        END B_CERT_NUM,
                        CASE
                          WHEN SUBSTR(IS_RPT, 0, 1) = '1' THEN
                           B_MNGMT_ORG_CODE
                          ELSE
                           NULL
                        END B_MNGMT_ORG_CODE,
                        CASE
                          WHEN SUBSTR(IS_RPT, 0, 1) = '1' THEN
                           B_CUST_NO
                          ELSE
                           NULL
                        END B_CUST_NO,
                        CASE
                          WHEN SUBSTR(IS_RPT, 2, 1) = '1' THEN
                           C_GUAR_TYPE
                          ELSE
                           NULL
                        END C_GUAR_TYPE,
                        CASE
                          WHEN SUBSTR(IS_RPT, 2, 1) = '1' THEN
                           C_CC_AMT
                          ELSE
                           NULL
                        END C_CC_AMT,
                        CASE
                          WHEN SUBSTR(IS_RPT, 2, 1) = '1' THEN
                           C_CY
                          ELSE
                           NULL
                        END C_CY,
                        CASE
                          WHEN SUBSTR(IS_RPT, 2, 1) = '1' THEN
                           C_CC_VAL_DATE
                          ELSE
                           NULL
                        END C_CC_VAL_DATE,
                        CASE
                          WHEN SUBSTR(IS_RPT, 2, 1) = '1' THEN
                           C_CC_EXP_DATE
                          ELSE
                           NULL
                        END C_CC_EXP_DATE,
                        CASE
                          WHEN SUBSTR(IS_RPT, 2, 1) = '1' THEN
                           C_MAX_GUAR
                          ELSE
                           NULL
                        END C_MAX_GUAR,
                        CASE
                          WHEN SUBSTR(IS_RPT, 2, 1) = '1' THEN
                           C_CC_STATUS
                          ELSE
                           NULL
                        END C_CC_STATUS,
                        CASE
                          WHEN SUBSTR(IS_RPT, 3, 1) = '1' THEN
                           G_DATA_DESC
                          ELSE
                           NULL
                        END G_DATA_DESC
                   FROM MBT_510_HIS
                  WHERE DATA_STATUS = '23'
                    AND HIS_DATE = V_NOW_DATE
                    AND B_RPT_DATE_CODE != '99') TMP
           LEFT JOIN MBT_510_HIS HIS
             ON TMP.DATA_ID = HIS.DATA_ID) SOURCE
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
       TARGET.RPT_DATE,
       TARGET.RPT_TIME,
       TARGET.IS_RPT,
       TARGET.ROW_NUM,
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
       '24',
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
       GET_ROW_NUM(SOURCE.ORG_ID, '510'),
       SOURCE.CUST_TYPE);
  COMMIT;
    UPDATE MBT_510_HIS
     SET DATA_STATUS = '25'
   WHERE DATA_STATUS = '23'
     AND HIS_DATE = V_NOW_DATE;
     COMMIT;
  --≤Â»Î◊”±Ì
  MERGE INTO MBT_510_D_RPT TARGET
  USING (SELECT C.DATA_ID,
                A.DATA_ID PDATA_ID,
                C.D_INFO_ID_TYPE,
                C.D_GUAR_NAME,
                C.D_GUAR_CERT_TYPE,
                C.D_GUAR_CERT_NUM,
                C.D_GUAR_NO,
                C.DATA_DATE,
                C.ACTU_COTRL_INFO_UP_DATE,
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
                A.B_CC_CODE
           FROM MBT_510_RPT A
           LEFT JOIN MBT_510_D_HIS C
             ON C.PDATA_ID = A.ODS_DATA_ID
          WHERE A.DATA_STATUS = '24'
            AND A.RPT_DATE = V_NOW_DATE
            AND SUBSTR(A.IS_RPT, INSTR(A.IS_RPT, '|') + 1, 1) = '1') SOURCE
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
       TARGET.DATA_DATE,
       TARGET.ACTU_COTRL_INFO_UP_DATE,
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
       TARGET.RPT_DATE,
       TARGET.RPT_TIME,
       TARGET.B_CC_CODE)
    VALUES
      (GET_DATA_ID(V_NOW_DATE),
       SOURCE.PDATA_ID,
       SOURCE.D_INFO_ID_TYPE,
       SOURCE.D_GUAR_NAME,
       SOURCE.D_GUAR_CERT_TYPE,
       SOURCE.D_GUAR_CERT_NUM,
       SOURCE.D_GUAR_NO,
       SOURCE.DATA_DATE,
       SOURCE.ACTU_COTRL_INFO_UP_DATE,
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
       SOURCE.B_CC_CODE);
  MERGE INTO MBT_510_E_RPT TARGET
  USING (SELECT C.DATA_ID,
                A.DATA_ID PDATA_ID,
                C.E_PLE_TYPE,
                C.E_MOTGA_PROPT_ID_TYPE,
                C.E_PLE_CERT_ID,
                C.E_PLE_DISTR,
                C.E_PLE_VALUE,
                C.E_PLE_CY,
                C.E_VAL_ORG_TYPE,
                C.E_VAL_DATE,
                C.E_PLEDGOR_TYPE,
                C.E_PLEDGOR_NAME,
                C.E_PLEOR_CERT_TYPE,
                C.E_PLEOR_CERT_NUM,
                C.E_PLE_DESC,
                C.DATA_DATE,
                C.ACTU_COTRL_INFO_UP_DATE,
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
                A.B_CC_CODE
           FROM MBT_510_RPT A
           LEFT JOIN MBT_510_E_HIS C
             ON C.PDATA_ID = A.ODS_DATA_ID
          WHERE A.DATA_STATUS = '24'
            AND A.RPT_DATE = V_NOW_DATE
            AND SUBSTR(A.IS_RPT, INSTR(A.IS_RPT, '|') + 2, 1) = '1') SOURCE
  ON (TARGET.DATA_ID = SOURCE.DATA_ID)
  WHEN NOT MATCHED THEN
    INSERT
      (TARGET.DATA_ID,
       TARGET.PDATA_ID,
       TARGET.E_PLE_TYPE,
       TARGET.E_MOTGA_PROPT_ID_TYPE,
       TARGET.E_PLE_CERT_ID,
       TARGET.E_PLE_DISTR,
       TARGET.E_PLE_VALUE,
       TARGET.E_PLE_CY,
       TARGET.E_VAL_ORG_TYPE,
       TARGET.E_VAL_DATE,
       TARGET.E_PLEDGOR_TYPE,
       TARGET.E_PLEDGOR_NAME,
       TARGET.E_PLEOR_CERT_TYPE,
       TARGET.E_PLEOR_CERT_NUM,
       TARGET.E_PLE_DESC,
       TARGET.DATA_DATE,
       TARGET.ACTU_COTRL_INFO_UP_DATE,
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
       TARGET.RPT_DATE,
       TARGET.RPT_TIME,
       TARGET.B_CC_CODE)
    VALUES
      (GET_DATA_ID(V_NOW_DATE),
       SOURCE.PDATA_ID,
       SOURCE.E_PLE_TYPE,
       SOURCE.E_MOTGA_PROPT_ID_TYPE,
       SOURCE.E_PLE_CERT_ID,
       SOURCE.E_PLE_DISTR,
       SOURCE.E_PLE_VALUE,
       SOURCE.E_PLE_CY,
       SOURCE.E_VAL_ORG_TYPE,
       SOURCE.E_VAL_DATE,
       SOURCE.E_PLEDGOR_TYPE,
       SOURCE.E_PLEDGOR_NAME,
       SOURCE.E_PLEOR_CERT_TYPE,
       SOURCE.E_PLEOR_CERT_NUM,
       SOURCE.E_PLE_DESC,
       SOURCE.DATA_DATE,
       SOURCE.ACTU_COTRL_INFO_UP_DATE,
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
       SOURCE.B_CC_CODE);
  MERGE INTO MBT_510_F_RPT TARGET
  USING (SELECT C.DATA_ID,
                A.DATA_ID PDATA_ID,
                C.F_IMP_TYPE,
                C.F_IMP_VAL,
                C.F_IMP_CY,
                C.F_IPPC,
                C.F_PAWN_NAME,
                C.F_PAWN_CERT_TYPE,
                C.F_PAWN_CERT_NUM,
                C.DATA_DATE,
                C.ACTU_COTRL_INFO_UP_DATE,
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
                A.B_CC_CODE
           FROM MBT_510_RPT A
           LEFT JOIN MBT_510_F_HIS C
             ON C.PDATA_ID = A.ODS_DATA_ID
          WHERE A.DATA_STATUS = '24'
            AND A.RPT_DATE = V_NOW_DATE
            AND SUBSTR(A.IS_RPT, INSTR(A.IS_RPT, '|') + 3, 1) = '1') SOURCE
  ON (TARGET.DATA_ID = SOURCE.DATA_ID)
  WHEN NOT MATCHED THEN
    INSERT
      (TARGET.DATA_ID,
       TARGET.PDATA_ID,
       TARGET.F_IMP_TYPE,
       TARGET.F_IMP_VAL,
       TARGET.F_IMP_CY,
       TARGET.F_IPPC,
       TARGET.F_PAWN_NAME,
       TARGET.F_PAWN_CERT_TYPE,
       TARGET.F_PAWN_CERT_NUM,
       TARGET.DATA_DATE,
       TARGET.ACTU_COTRL_INFO_UP_DATE,
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
       TARGET.RPT_DATE,
       TARGET.RPT_TIME,
       TARGET.B_CC_CODE)
    VALUES
      (GET_DATA_ID(V_NOW_DATE),
       SOURCE.PDATA_ID,
       SOURCE.F_IMP_TYPE,
       SOURCE.F_IMP_VAL,
       SOURCE.F_IMP_CY,
       SOURCE.F_IPPC,
       SOURCE.F_PAWN_NAME,
       SOURCE.F_PAWN_CERT_TYPE,
       SOURCE.F_PAWN_CERT_NUM,
       SOURCE.DATA_DATE,
       SOURCE.ACTU_COTRL_INFO_UP_DATE,
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
prompt Creating procedure SYNC_HIS_TO_RPT_511
prompt ======================================
prompt
CREATE OR REPLACE PROCEDURE "SYNC_HIS_TO_RPT_511"(ERRCODE OUT VARCHAR,
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
    MBT_511_RPT
WHERE
    RPT_DATE=V_NOW_DATE and DATA_STATUS='24';
COMMIT;
--≤Â»Î÷˜±Ì
MERGE
INTO
    MBT_511_RPT TARGET
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
            MBT_511_HIS
        WHERE
            DATA_STATUS='23'
           AND HIS_DATE=V_NOW_DATE
           AND IS_RPT='1') SOURCE
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
        TARGET.RPT_DATE,
        TARGET.RPT_TIME,
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
        '24',
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
UPDATE MBT_511_HIS SET DATA_STATUS='25' WHERE DATA_STATUS='23' AND HIS_DATE=V_NOW_DATE;
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
prompt Creating procedure SYNC_HIS_TO_RPT_610
prompt ======================================
prompt
CREATE OR REPLACE PROCEDURE "SYNC_HIS_TO_RPT_610"(ERRCODE  OUT VARCHAR,
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
    MBT_610_RPT
WHERE
    RPT_DATE=V_NOW_DATE and DATA_STATUS='24';
           DELETE FROM MBT_ROW_NUM WHERE TYPE='610';

COMMIT;
--1.≤Â»Î÷˜±Ì
MERGE
INTO
    MBT_610_RPT TARGET
USING
    (
        SELECT
            TMP.B_INF_REC_TYPE,
            TMP.B_ENT_NAME,
            TMP.B_ENT_CERT_TYPE,
            TMP.B_ENT_CERT_NUM,
            TMP.B_RPT_DATE,
            TMP.B_SHEET_YEAR,
            TMP.B_SHEET_TYPE,
            TMP.B_SHEET_TYPE_DIVIDE,
            TMP.B_AUDIT_FIRM_NAME,
            TMP.B_AUDITOR_NAME,
            TMP.B_AUDIT_TIME,
            TMP.B_CIMOC,
            TMP.B_RPT_DATE_CODE,
            TMP.C_CURRENCY_FUNDS,
            TMP.C_SHORT_TERM_INVESTMENTS,
            TMP.C_NOTES_RECEIVABLE,
            TMP.C_DIVIDENDS_RECEIVABLE,
            TMP.C_INTEREST_RECEIVABLE,
            TMP.C_ACCOUNTS_RECEIVABLE,
            TMP.C_OTHER_RECEIVABLES,
            TMP.C_PREPAYMENTS,
            TMP.C_FUTURE_GUARANTEE,
            TMP.C_ALLOWANCE_RECEIVABLE,
            TMP.C_EXPORT_DRAWBACK_RECEIVABLE,
            TMP.C_INVENTORIES,
            TMP.C_RAW_MATERIALS,
            TMP.C_FINISHED_PRODUCTS,
            TMP.C_DEFERRED_EXPENSES,
            TMP.C_UNSETTLED_GL_CURRENT_ASSETS,
            TMP.C_LT_DI_FALLINGDUEINAYEAR,
            TMP.C_OTHER_CURRENT_ASSETS,
            TMP.C_TOTAL_CURRENT_ASSETS,
            TMP.C_LT_INVESTMENT,
            TMP.C_LT_EQUITYINVESTMENT,
            TMP.C_LT_SECURITIES_INVESTMENT,
            TMP.C_INC_PRICE_DIFFERENCE,
            TMP.C_TOTAL_LT_INVESTMENT,
            TMP.C_ORIGINAL_COST_FA,
            TMP.C_FA_ACC_DEPRECIATION,
            TMP.C_FA_NET_VALUE,
            TMP.C_PROVISION_IMPAIRMENT_FA,
            TMP.C_NET_VALUE_FA,
            TMP.C_FA_PENDING_DISPOSAL,
            TMP.C_CONSTRUCTION_MATERIALS,
            TMP.C_CONSTRUCTION_IN_PROGRESS,
            TMP.C_UNSETTLED_GL_ON_FA,
            TMP.C_TOTAL_FIXED_ASSETS,
            TMP.C_INTANGIBLE_ASSETS,
            TMP.C_LAND_USE_RIGHTS,
            TMP.C_DEFERRED_ASSETS,
            TMP.C_INCLUDING_FA_REPAIR,
            TMP.C_IMPROVEMENT_EXPENDITURE_FA,
            TMP.C_OTHER_LONG_TERM_ASSETS,
            TMP.C_AMONG_IT_SPE_APPR_RES_MAT,
            TMP.C_TOTAL_INTANGIBLE_OTHER_ASS,
            TMP.C_DEFERRED_ASSETS_DEBITS,
            TMP.C_TOTAL_ASSETS,
            TMP.C_SHORT_TERM_BORROWINGS,
            TMP.C_NOTES_PAYABLE,
            TMP.C_ACCOUNTS_PAYABLE,
            TMP.C_RECEIPTS_IN_ADVANCE,
            TMP.C_WAGES_SALARIES_PAYABLES,
            TMP.C_EMPLOYEE_BENEFITS,
            TMP.C_INCOME_PAYABLE,
            TMP.C_TAXES_PAYABLE,
            TMP.C_OTHER_PAYABLE_GOVERNMENT,
            TMP.C_OTHER_PAYABLE,
            TMP.C_PROVISION_FOR_EXPENSES,
            TMP.C_PROVISIONS,
            TMP.C_LT_LIABILITIES_DUE_ONEYEAR,
            TMP.C_OTHER_CURRENT_LIABILITIES,
            TMP.C_TOTAL_CURRENT_LIABILITIES,
            TMP.C_LT_BORROWINGS,
            TMP.C_BONDS_PAYABLE,
            TMP.C_LONG_TERM_PAYABLES,
            TMP.C_GRANTS_PAYABLE,
            TMP.C_OTHER_LT_LIABILITIES,
            TMP.C_SPECIAL_RESERVE_FUND,
            TMP.C_TOTAL_LT_LIABILITIES,
            TMP.C_DEFERRED_TAXATION_CREDIT,
            TMP.C_TOTAL_LIABILITIES,
            TMP.C_MINORITY_INTEREST,
            TMP.C_PAID_IN_CAPITAL,
            TMP.C_NATIONAL_CAPITAL,
            TMP.C_COLLECTIVE_CAPITAL,
            TMP.C_LEGAL_PERSONS_CAPITAL,
            TMP.C_STATE_OWNED_LP_CAPITAL,
            TMP.C_COLLECTIVE_LP_CAPITAL,
            TMP.C_PERSONAL_CAPITAL,
            TMP.C_FOREIGN_BUS_CAPITAL,
            TMP.C_CAPITALR_RSERVE,
            TMP.C_SURPLUS_RESERVE,
            TMP.C_STATUTORY_SURPLUS_RESERVE,
            TMP.C_PUBLIC_WELFARE_FUND,
            TMP.C_SUPPLER_CURRENT_CAPITAL,
            TMP.C_UNAFFIRMED_INVESTMENT_LOSS,
            TMP.C_UNAPPROPRIATED_PROFIT,
            TMP.C_DT_FC_FINANCIAL_STA,
            TMP.C_TOTAL_EQUITY,
            TMP.C_TOTAL_EQUITY_LIABILITIES,
            TMP.D_CURRENCY_FUNDS,
            TMP.D_FINANCIAL_ASS_HELD_TRADING,
            TMP.D_NOTES_RECEIVABLE,
            TMP.D_ACCOUNTS_RECEIVABLE,
            TMP.D_PREPAYMENTS,
            TMP.D_INTEREST_RECEIVABLE,
            TMP.D_DIVIDENDS_RECEIVABLE,
            TMP.D_OTHER_RECEIVABLES,
            TMP.D_INVENTORIES,
            TMP.D_CURRENT_PORTION_NCA,
            TMP.D_OTHER_CURRENT_ASSETS,
            TMP.D_TOTAL_CURRENT_ASSETS,
            TMP.D_FINANCIAL_ASS_AVAILABLE_SALE,
            TMP.D_HELD_MATURITY_INVESTMENTS,
            TMP.D_LONG_TERM_EQUITY_INVESTMENT,
            TMP.D_LONG_TERM_RECEIVABLES,
            TMP.D_INVESTMENT_PROPERTIES,
            TMP.D_FIXED_ASSETS,
            TMP.D_NET_VALUE_OF_FIXE_ASSETS,
            TMP.D_CONSTRUCTION_IN_PROGRESS,
            TMP.D_CONSTRUCTION_MATERIALS,
            TMP.D_FIXED_ASS_PENDING_DISPOSAL,
            TMP.D_NON_CURRENT_BIOLOGICAL_ASS,
            TMP.D_OIL_AND_GAS_ASSETS,
            TMP.D_INTANGIBLE_ASSETS,
            TMP.D_LAND_USE_RIGHTS,
            TMP.D_DEVELOPMENT_DISBURSEMENTS,
            TMP.D_GOODWILL,
            TMP.D_LONG_TERM_DEFERRED_EXPENSES,
            TMP.D_DEFERRED_TAX_ASSETS,
            TMP.D_OTHER_NON_CURRENT_ASSETS,
            TMP.D_TOTAL_NON_CURRENT_ASSETS,
            TMP.D_TOTAL_ASSETS,
            TMP.D_SHORT_TERM_BORROWINGS,
            TMP.D_FINANCIAL_LIABILITIES_HFT,
            TMP.D_NOTES_PAYABLE,
            TMP.D_ACCOUNTS_PAYABLE,
            TMP.D_RECEIPTS_IN_ADVANCE,
            TMP.D_INTEREST_PAYABLE,
            TMP.D_EMPLOYEE_BENEFITS_PAYABLE,
            TMP.D_TAXES_PAYABLE,
            TMP.D_DIVIDENDS_PAYABLE,
            TMP.D_OTHER_PAYABLE,
            TMP.D_CURRENT_PORTION_LIABILITIES,
            TMP.D_OTHER_CURRENT_LIABILITIES,
            TMP.D_TOTAL_CURRENT_LIABILITIES,
            TMP.D_LONG_TERM_BORROWINGSORROWING,
            TMP.D_BONDS_PAYABLE,
            TMP.D_LONG_TERM_PAYABLES,
            TMP.D_GRANTS_PAYABLE,
            TMP.D_PROVISIONS,
            TMP.D_DEFERRED_TAX_LIABILITIES,
            TMP.D_OTHER_NON_CURRENT_LIABILITIE,
            TMP.D_TOTAL_NON_CURRENT_LIABILITIE,
            TMP.D_TOTAL_LIABILITIES,
            TMP.D_PAID_IN_CAPITAL_SHARE_CAPITA,
            TMP.D_CAPITALR_RSERVE,
            TMP.D_LESS_TREASURY_STOCKS,
            TMP.D_SURPLUS_RESERVE,
            TMP.D_UNAPPROPRIATED_PROFIT,
            TMP.D_TOTAL_EQUITY,
            TMP.D_TOTAL_EQUITY_LIABILITIES,
            TMP.E_DATA_DESC,
            HIS.DATA_ID,
            HIS.DATA_DATE,
            HIS.CORP_ID,
            HIS.ORG_ID,
            HIS.GROUP_ID,
            HIS.INQ_ORG_ID,
            HIS.INQ_GROUP_ID,
            HIS.REMARKS,
            HIS.CHECK_FLAG,
            HIS.CHECK_DESC,
            HIS.CHECK_ERR_TYPE,
            HIS.NEXT_ACTION,
            HIS.DATA_STATUS,
            HIS.DATA_FLAG,
            HIS.DATA_SOURCE,
            HIS.DATA_VERSION,
            HIS.DATA_REJ_DESC,
            HIS.DATA_DEL_DESC,
            HIS.DATA_CRT_USER,
            HIS.DATA_CRT_DATE,
            HIS.DATA_CRT_TIME,
            HIS.DATA_CHG_USER,
            HIS.DATA_CHG_DATE,
            HIS.DATA_CHG_TIME,
            HIS.DATA_APV_USER,
            HIS.DATA_APV_DATE,
            HIS.DATA_APV_TIME,
            HIS.RSV1,
            HIS.RSV2,
            HIS.RSV3,
            HIS.RSV4,
            HIS.RSV5,
            HIS.IS_RPT
        FROM
            (
                        SELECT
                            DATA_ID,
                            B_INF_REC_TYPE,
                            CASE WHEN SUBSTR(IS_RPT,0,1) = '1' THEN  B_ENT_NAME ELSE NULL END B_ENT_NAME,
                            CASE WHEN SUBSTR(IS_RPT,0,1) = '1' THEN  B_ENT_CERT_TYPE ELSE NULL END B_ENT_CERT_TYPE,
                            CASE WHEN SUBSTR(IS_RPT,0,1) = '1' THEN  B_ENT_CERT_NUM ELSE NULL END B_ENT_CERT_NUM,
                            CASE WHEN SUBSTR(IS_RPT,0,1) = '1' THEN  B_RPT_DATE ELSE NULL END B_RPT_DATE,
                            CASE WHEN SUBSTR(IS_RPT,0,1) = '1' THEN  B_SHEET_YEAR ELSE NULL END B_SHEET_YEAR,
                            CASE WHEN SUBSTR(IS_RPT,0,1) = '1' THEN  B_SHEET_TYPE ELSE NULL END B_SHEET_TYPE,
                            CASE WHEN SUBSTR(IS_RPT,0,1) = '1' THEN  B_SHEET_TYPE_DIVIDE ELSE NULL END B_SHEET_TYPE_DIVIDE,
                            CASE WHEN SUBSTR(IS_RPT,0,1) = '1' THEN  B_AUDIT_FIRM_NAME ELSE NULL END B_AUDIT_FIRM_NAME,
                            CASE WHEN SUBSTR(IS_RPT,0,1) = '1' THEN  B_AUDITOR_NAME ELSE NULL END B_AUDITOR_NAME,
                            CASE WHEN SUBSTR(IS_RPT,0,1) = '1' THEN  B_AUDIT_TIME ELSE NULL END B_AUDIT_TIME,
                            CASE WHEN SUBSTR(IS_RPT,0,1) = '1' THEN  B_CIMOC ELSE NULL END B_CIMOC,
                            CASE WHEN SUBSTR(IS_RPT,0,1) = '1' THEN  B_RPT_DATE_CODE ELSE NULL END B_RPT_DATE_CODE,
                            CASE WHEN SUBSTR(IS_RPT,2,1) = '1' THEN  C_CURRENCY_FUNDS ELSE NULL END C_CURRENCY_FUNDS,
                            CASE WHEN SUBSTR(IS_RPT,2,1) = '1' THEN  C_SHORT_TERM_INVESTMENTS ELSE NULL END C_SHORT_TERM_INVESTMENTS,
                            CASE WHEN SUBSTR(IS_RPT,2,1) = '1' THEN  C_NOTES_RECEIVABLE ELSE NULL END C_NOTES_RECEIVABLE,
                            CASE WHEN SUBSTR(IS_RPT,2,1) = '1' THEN  C_DIVIDENDS_RECEIVABLE ELSE NULL END C_DIVIDENDS_RECEIVABLE,
                            CASE WHEN SUBSTR(IS_RPT,2,1) = '1' THEN  C_INTEREST_RECEIVABLE ELSE NULL END C_INTEREST_RECEIVABLE,
                            CASE WHEN SUBSTR(IS_RPT,2,1) = '1' THEN  C_ACCOUNTS_RECEIVABLE ELSE NULL END C_ACCOUNTS_RECEIVABLE,
                            CASE WHEN SUBSTR(IS_RPT,2,1) = '1' THEN  C_OTHER_RECEIVABLES ELSE NULL END C_OTHER_RECEIVABLES,
                            CASE WHEN SUBSTR(IS_RPT,2,1) = '1' THEN  C_PREPAYMENTS ELSE NULL END C_PREPAYMENTS,
                            CASE WHEN SUBSTR(IS_RPT,2,1) = '1' THEN  C_FUTURE_GUARANTEE ELSE NULL END C_FUTURE_GUARANTEE,
                            CASE WHEN SUBSTR(IS_RPT,2,1) = '1' THEN  C_ALLOWANCE_RECEIVABLE ELSE NULL END C_ALLOWANCE_RECEIVABLE,
                            CASE WHEN SUBSTR(IS_RPT,2,1) = '1' THEN  C_EXPORT_DRAWBACK_RECEIVABLE ELSE NULL END C_EXPORT_DRAWBACK_RECEIVABLE,
                            CASE WHEN SUBSTR(IS_RPT,2,1) = '1' THEN  C_INVENTORIES ELSE NULL END C_INVENTORIES,
                            CASE WHEN SUBSTR(IS_RPT,2,1) = '1' THEN  C_RAW_MATERIALS ELSE NULL END C_RAW_MATERIALS,
                            CASE WHEN SUBSTR(IS_RPT,2,1) = '1' THEN  C_FINISHED_PRODUCTS ELSE NULL END C_FINISHED_PRODUCTS,
                            CASE WHEN SUBSTR(IS_RPT,2,1) = '1' THEN  C_DEFERRED_EXPENSES ELSE NULL END C_DEFERRED_EXPENSES,
                            CASE WHEN SUBSTR(IS_RPT,2,1) = '1' THEN  C_UNSETTLED_GL_CURRENT_ASSETS ELSE NULL END C_UNSETTLED_GL_CURRENT_ASSETS,
                            CASE WHEN SUBSTR(IS_RPT,2,1) = '1' THEN  C_LT_DI_FALLINGDUEINAYEAR ELSE NULL END C_LT_DI_FALLINGDUEINAYEAR,
                            CASE WHEN SUBSTR(IS_RPT,2,1) = '1' THEN  C_OTHER_CURRENT_ASSETS ELSE NULL END C_OTHER_CURRENT_ASSETS,
                            CASE WHEN SUBSTR(IS_RPT,2,1) = '1' THEN  C_TOTAL_CURRENT_ASSETS ELSE NULL END C_TOTAL_CURRENT_ASSETS,
                            CASE WHEN SUBSTR(IS_RPT,2,1) = '1' THEN  C_LT_INVESTMENT ELSE NULL END C_LT_INVESTMENT,
                            CASE WHEN SUBSTR(IS_RPT,2,1) = '1' THEN  C_LT_EQUITYINVESTMENT ELSE NULL END C_LT_EQUITYINVESTMENT,
                            CASE WHEN SUBSTR(IS_RPT,2,1) = '1' THEN  C_LT_SECURITIES_INVESTMENT ELSE NULL END C_LT_SECURITIES_INVESTMENT,
                            CASE WHEN SUBSTR(IS_RPT,2,1) = '1' THEN  C_INC_PRICE_DIFFERENCE ELSE NULL END C_INC_PRICE_DIFFERENCE,
                            CASE WHEN SUBSTR(IS_RPT,2,1) = '1' THEN  C_TOTAL_LT_INVESTMENT ELSE NULL END C_TOTAL_LT_INVESTMENT,
                            CASE WHEN SUBSTR(IS_RPT,2,1) = '1' THEN  C_ORIGINAL_COST_FA ELSE NULL END C_ORIGINAL_COST_FA,
                            CASE WHEN SUBSTR(IS_RPT,2,1) = '1' THEN  C_FA_ACC_DEPRECIATION ELSE NULL END C_FA_ACC_DEPRECIATION,
                            CASE WHEN SUBSTR(IS_RPT,2,1) = '1' THEN  C_FA_NET_VALUE ELSE NULL END C_FA_NET_VALUE,
                            CASE WHEN SUBSTR(IS_RPT,2,1) = '1' THEN  C_PROVISION_IMPAIRMENT_FA ELSE NULL END C_PROVISION_IMPAIRMENT_FA,
                            CASE WHEN SUBSTR(IS_RPT,2,1) = '1' THEN  C_NET_VALUE_FA ELSE NULL END C_NET_VALUE_FA,
                            CASE WHEN SUBSTR(IS_RPT,2,1) = '1' THEN  C_FA_PENDING_DISPOSAL ELSE NULL END C_FA_PENDING_DISPOSAL,
                            CASE WHEN SUBSTR(IS_RPT,2,1) = '1' THEN  C_CONSTRUCTION_MATERIALS ELSE NULL END C_CONSTRUCTION_MATERIALS,
                            CASE WHEN SUBSTR(IS_RPT,2,1) = '1' THEN  C_CONSTRUCTION_IN_PROGRESS ELSE NULL END C_CONSTRUCTION_IN_PROGRESS,
                            CASE WHEN SUBSTR(IS_RPT,2,1) = '1' THEN  C_UNSETTLED_GL_ON_FA ELSE NULL END C_UNSETTLED_GL_ON_FA,
                            CASE WHEN SUBSTR(IS_RPT,2,1) = '1' THEN  C_TOTAL_FIXED_ASSETS ELSE NULL END C_TOTAL_FIXED_ASSETS,
                            CASE WHEN SUBSTR(IS_RPT,2,1) = '1' THEN  C_INTANGIBLE_ASSETS ELSE NULL END C_INTANGIBLE_ASSETS,
                            CASE WHEN SUBSTR(IS_RPT,2,1) = '1' THEN  C_LAND_USE_RIGHTS ELSE NULL END C_LAND_USE_RIGHTS,
                            CASE WHEN SUBSTR(IS_RPT,2,1) = '1' THEN  C_DEFERRED_ASSETS ELSE NULL END C_DEFERRED_ASSETS,
                            CASE WHEN SUBSTR(IS_RPT,2,1) = '1' THEN  C_INCLUDING_FA_REPAIR ELSE NULL END C_INCLUDING_FA_REPAIR,
                            CASE WHEN SUBSTR(IS_RPT,2,1) = '1' THEN  C_IMPROVEMENT_EXPENDITURE_FA ELSE NULL END C_IMPROVEMENT_EXPENDITURE_FA,
                            CASE WHEN SUBSTR(IS_RPT,2,1) = '1' THEN  C_OTHER_LONG_TERM_ASSETS ELSE NULL END C_OTHER_LONG_TERM_ASSETS,
                            CASE WHEN SUBSTR(IS_RPT,2,1) = '1' THEN  C_AMONG_IT_SPE_APPR_RES_MAT ELSE NULL END C_AMONG_IT_SPE_APPR_RES_MAT,
                            CASE WHEN SUBSTR(IS_RPT,2,1) = '1' THEN  C_TOTAL_INTANGIBLE_OTHER_ASS ELSE NULL END C_TOTAL_INTANGIBLE_OTHER_ASS,
                            CASE WHEN SUBSTR(IS_RPT,2,1) = '1' THEN  C_DEFERRED_ASSETS_DEBITS ELSE NULL END C_DEFERRED_ASSETS_DEBITS,
                            CASE WHEN SUBSTR(IS_RPT,2,1) = '1' THEN  C_TOTAL_ASSETS ELSE NULL END C_TOTAL_ASSETS,
                            CASE WHEN SUBSTR(IS_RPT,2,1) = '1' THEN  C_SHORT_TERM_BORROWINGS ELSE NULL END C_SHORT_TERM_BORROWINGS,
                            CASE WHEN SUBSTR(IS_RPT,2,1) = '1' THEN  C_NOTES_PAYABLE ELSE NULL END C_NOTES_PAYABLE,
                            CASE WHEN SUBSTR(IS_RPT,2,1) = '1' THEN  C_ACCOUNTS_PAYABLE ELSE NULL END C_ACCOUNTS_PAYABLE,
                            CASE WHEN SUBSTR(IS_RPT,2,1) = '1' THEN  C_RECEIPTS_IN_ADVANCE ELSE NULL END C_RECEIPTS_IN_ADVANCE,
                            CASE WHEN SUBSTR(IS_RPT,2,1) = '1' THEN  C_WAGES_SALARIES_PAYABLES ELSE NULL END C_WAGES_SALARIES_PAYABLES,
                            CASE WHEN SUBSTR(IS_RPT,2,1) = '1' THEN  C_EMPLOYEE_BENEFITS ELSE NULL END C_EMPLOYEE_BENEFITS,
                            CASE WHEN SUBSTR(IS_RPT,2,1) = '1' THEN  C_INCOME_PAYABLE ELSE NULL END C_INCOME_PAYABLE,
                            CASE WHEN SUBSTR(IS_RPT,2,1) = '1' THEN  C_TAXES_PAYABLE ELSE NULL END C_TAXES_PAYABLE,
                            CASE WHEN SUBSTR(IS_RPT,2,1) = '1' THEN  C_OTHER_PAYABLE_GOVERNMENT ELSE NULL END C_OTHER_PAYABLE_GOVERNMENT,
                            CASE WHEN SUBSTR(IS_RPT,2,1) = '1' THEN  C_OTHER_PAYABLE ELSE NULL END C_OTHER_PAYABLE,
                            CASE WHEN SUBSTR(IS_RPT,2,1) = '1' THEN  C_PROVISION_FOR_EXPENSES ELSE NULL END C_PROVISION_FOR_EXPENSES,
                            CASE WHEN SUBSTR(IS_RPT,2,1) = '1' THEN  C_PROVISIONS ELSE NULL END C_PROVISIONS,
                            CASE WHEN SUBSTR(IS_RPT,2,1) = '1' THEN  C_LT_LIABILITIES_DUE_ONEYEAR ELSE NULL END C_LT_LIABILITIES_DUE_ONEYEAR,
                            CASE WHEN SUBSTR(IS_RPT,2,1) = '1' THEN  C_OTHER_CURRENT_LIABILITIES ELSE NULL END C_OTHER_CURRENT_LIABILITIES,
                            CASE WHEN SUBSTR(IS_RPT,2,1) = '1' THEN  C_TOTAL_CURRENT_LIABILITIES ELSE NULL END C_TOTAL_CURRENT_LIABILITIES,
                            CASE WHEN SUBSTR(IS_RPT,2,1) = '1' THEN  C_LT_BORROWINGS ELSE NULL END C_LT_BORROWINGS,
                            CASE WHEN SUBSTR(IS_RPT,2,1) = '1' THEN  C_BONDS_PAYABLE ELSE NULL END C_BONDS_PAYABLE,


                            CASE WHEN SUBSTR(IS_RPT,2,1) = '1' THEN  C_LONG_TERM_PAYABLES ELSE NULL END  C_LONG_TERM_PAYABLES,
                            CASE WHEN SUBSTR(IS_RPT,2,1) = '1' THEN  C_GRANTS_PAYABLE ELSE NULL END  C_GRANTS_PAYABLE,
                            CASE WHEN SUBSTR(IS_RPT,2,1) = '1' THEN  C_OTHER_LT_LIABILITIES ELSE NULL END  C_OTHER_LT_LIABILITIES,
                            CASE WHEN SUBSTR(IS_RPT,2,1) = '1' THEN  C_SPECIAL_RESERVE_FUND ELSE NULL END  C_SPECIAL_RESERVE_FUND,
                            CASE WHEN SUBSTR(IS_RPT,2,1) = '1' THEN  C_TOTAL_LT_LIABILITIES ELSE NULL END  C_TOTAL_LT_LIABILITIES,
                            CASE WHEN SUBSTR(IS_RPT,2,1) = '1' THEN  C_DEFERRED_TAXATION_CREDIT ELSE NULL END  C_DEFERRED_TAXATION_CREDIT,
                            CASE WHEN SUBSTR(IS_RPT,2,1) = '1' THEN  C_TOTAL_LIABILITIES ELSE NULL END  C_TOTAL_LIABILITIES,
                            CASE WHEN SUBSTR(IS_RPT,2,1) = '1' THEN  C_MINORITY_INTEREST ELSE NULL END  C_MINORITY_INTEREST,
                            CASE WHEN SUBSTR(IS_RPT,2,1) = '1' THEN  C_PAID_IN_CAPITAL ELSE NULL END  C_PAID_IN_CAPITAL,
                            CASE WHEN SUBSTR(IS_RPT,2,1) = '1' THEN  C_NATIONAL_CAPITAL ELSE NULL END  C_NATIONAL_CAPITAL,
                            CASE WHEN SUBSTR(IS_RPT,2,1) = '1' THEN  C_COLLECTIVE_CAPITAL ELSE NULL END  C_COLLECTIVE_CAPITAL,
                            CASE WHEN SUBSTR(IS_RPT,2,1) = '1' THEN  C_LEGAL_PERSONS_CAPITAL ELSE NULL END  C_LEGAL_PERSONS_CAPITAL,
                            CASE WHEN SUBSTR(IS_RPT,2,1) = '1' THEN  C_STATE_OWNED_LP_CAPITAL ELSE NULL END  C_STATE_OWNED_LP_CAPITAL,
                            CASE WHEN SUBSTR(IS_RPT,2,1) = '1' THEN  C_COLLECTIVE_LP_CAPITAL ELSE NULL END  C_COLLECTIVE_LP_CAPITAL,
                            CASE WHEN SUBSTR(IS_RPT,2,1) = '1' THEN  C_PERSONAL_CAPITAL ELSE NULL END  C_PERSONAL_CAPITAL,
                            CASE WHEN SUBSTR(IS_RPT,2,1) = '1' THEN  C_FOREIGN_BUS_CAPITAL ELSE NULL END  C_FOREIGN_BUS_CAPITAL,
                            CASE WHEN SUBSTR(IS_RPT,2,1) = '1' THEN  C_CAPITALR_RSERVE ELSE NULL END  C_CAPITALR_RSERVE,
                            CASE WHEN SUBSTR(IS_RPT,2,1) = '1' THEN  C_SURPLUS_RESERVE ELSE NULL END  C_SURPLUS_RESERVE,
                            CASE WHEN SUBSTR(IS_RPT,2,1) = '1' THEN  C_STATUTORY_SURPLUS_RESERVE ELSE NULL END  C_STATUTORY_SURPLUS_RESERVE,
                            CASE WHEN SUBSTR(IS_RPT,2,1) = '1' THEN  C_PUBLIC_WELFARE_FUND ELSE NULL END  C_PUBLIC_WELFARE_FUND,
                            CASE WHEN SUBSTR(IS_RPT,2,1) = '1' THEN  C_SUPPLER_CURRENT_CAPITAL ELSE NULL END  C_SUPPLER_CURRENT_CAPITAL,
                            CASE WHEN SUBSTR(IS_RPT,2,1) = '1' THEN  C_UNAFFIRMED_INVESTMENT_LOSS ELSE NULL END  C_UNAFFIRMED_INVESTMENT_LOSS,
                            CASE WHEN SUBSTR(IS_RPT,2,1) = '1' THEN  C_UNAPPROPRIATED_PROFIT ELSE NULL END  C_UNAPPROPRIATED_PROFIT,
                            CASE WHEN SUBSTR(IS_RPT,2,1) = '1' THEN  C_DT_FC_FINANCIAL_STA ELSE NULL END  C_DT_FC_FINANCIAL_STA,
                            CASE WHEN SUBSTR(IS_RPT,2,1) = '1' THEN  C_TOTAL_EQUITY ELSE NULL END  C_TOTAL_EQUITY,
                            CASE WHEN SUBSTR(IS_RPT,2,1) = '1' THEN  C_TOTAL_EQUITY_LIABILITIES ELSE NULL END   C_TOTAL_EQUITY_LIABILITIES,
                            CASE WHEN SUBSTR(IS_RPT,3,1) = '1' THEN  D_CURRENCY_FUNDS  ELSE NULL END  D_CURRENCY_FUNDS,
                            CASE WHEN SUBSTR(IS_RPT,3,1) = '1' THEN  D_FINANCIAL_ASS_HELD_TRADING  ELSE NULL END  D_FINANCIAL_ASS_HELD_TRADING,
                            CASE WHEN SUBSTR(IS_RPT,3,1) = '1' THEN  D_NOTES_RECEIVABLE  ELSE NULL END  D_NOTES_RECEIVABLE,
                            CASE WHEN SUBSTR(IS_RPT,3,1) = '1' THEN  D_ACCOUNTS_RECEIVABLE  ELSE NULL END  D_ACCOUNTS_RECEIVABLE,
                            CASE WHEN SUBSTR(IS_RPT,3,1) = '1' THEN  D_PREPAYMENTS  ELSE NULL END  D_PREPAYMENTS,
                            CASE WHEN SUBSTR(IS_RPT,3,1) = '1' THEN  D_INTEREST_RECEIVABLE  ELSE NULL END  D_INTEREST_RECEIVABLE,
                            CASE WHEN SUBSTR(IS_RPT,3,1) = '1' THEN  D_DIVIDENDS_RECEIVABLE  ELSE NULL END  D_DIVIDENDS_RECEIVABLE,
                            CASE WHEN SUBSTR(IS_RPT,3,1) = '1' THEN  D_OTHER_RECEIVABLES  ELSE NULL END  D_OTHER_RECEIVABLES,
                            CASE WHEN SUBSTR(IS_RPT,3,1) = '1' THEN  D_INVENTORIES  ELSE NULL END  D_INVENTORIES,
                            CASE WHEN SUBSTR(IS_RPT,3,1) = '1' THEN  D_CURRENT_PORTION_NCA  ELSE NULL END  D_CURRENT_PORTION_NCA,
                            CASE WHEN SUBSTR(IS_RPT,3,1) = '1' THEN  D_OTHER_CURRENT_ASSETS  ELSE NULL END  D_OTHER_CURRENT_ASSETS,
                            CASE WHEN SUBSTR(IS_RPT,3,1) = '1' THEN  D_TOTAL_CURRENT_ASSETS  ELSE NULL END  D_TOTAL_CURRENT_ASSETS,
                            CASE WHEN SUBSTR(IS_RPT,3,1) = '1' THEN  D_FINANCIAL_ASS_AVAILABLE_SALE  ELSE NULL END  D_FINANCIAL_ASS_AVAILABLE_SALE,
                            CASE WHEN SUBSTR(IS_RPT,3,1) = '1' THEN  D_HELD_MATURITY_INVESTMENTS  ELSE NULL END  D_HELD_MATURITY_INVESTMENTS,
                            CASE WHEN SUBSTR(IS_RPT,3,1) = '1' THEN  D_LONG_TERM_EQUITY_INVESTMENT  ELSE NULL END  D_LONG_TERM_EQUITY_INVESTMENT,
                            CASE WHEN SUBSTR(IS_RPT,3,1) = '1' THEN  D_LONG_TERM_RECEIVABLES  ELSE NULL END  D_LONG_TERM_RECEIVABLES,
                            CASE WHEN SUBSTR(IS_RPT,3,1) = '1' THEN  D_INVESTMENT_PROPERTIES  ELSE NULL END  D_INVESTMENT_PROPERTIES,
                            CASE WHEN SUBSTR(IS_RPT,3,1) = '1' THEN  D_FIXED_ASSETS  ELSE NULL END  D_FIXED_ASSETS,
                            CASE WHEN SUBSTR(IS_RPT,3,1) = '1' THEN  D_NET_VALUE_OF_FIXE_ASSETS  ELSE NULL END  D_NET_VALUE_OF_FIXE_ASSETS,
                            CASE WHEN SUBSTR(IS_RPT,3,1) = '1' THEN  D_CONSTRUCTION_IN_PROGRESS  ELSE NULL END  D_CONSTRUCTION_IN_PROGRESS,
                            CASE WHEN SUBSTR(IS_RPT,3,1) = '1' THEN  D_CONSTRUCTION_MATERIALS  ELSE NULL END  D_CONSTRUCTION_MATERIALS,
                            CASE WHEN SUBSTR(IS_RPT,3,1) = '1' THEN  D_FIXED_ASS_PENDING_DISPOSAL  ELSE NULL END  D_FIXED_ASS_PENDING_DISPOSAL,
                            CASE WHEN SUBSTR(IS_RPT,3,1) = '1' THEN  D_NON_CURRENT_BIOLOGICAL_ASS  ELSE NULL END  D_NON_CURRENT_BIOLOGICAL_ASS,
                            CASE WHEN SUBSTR(IS_RPT,3,1) = '1' THEN  D_OIL_AND_GAS_ASSETS  ELSE NULL END  D_OIL_AND_GAS_ASSETS,
                            CASE WHEN SUBSTR(IS_RPT,3,1) = '1' THEN  D_INTANGIBLE_ASSETS  ELSE NULL END  D_INTANGIBLE_ASSETS,
                            CASE WHEN SUBSTR(IS_RPT,3,1) = '1' THEN  D_LAND_USE_RIGHTS  ELSE NULL END  D_LAND_USE_RIGHTS,
                            CASE WHEN SUBSTR(IS_RPT,3,1) = '1' THEN  D_DEVELOPMENT_DISBURSEMENTS  ELSE NULL END  D_DEVELOPMENT_DISBURSEMENTS,
                            CASE WHEN SUBSTR(IS_RPT,3,1) = '1' THEN  D_GOODWILL  ELSE NULL END  D_GOODWILL,
                            CASE WHEN SUBSTR(IS_RPT,3,1) = '1' THEN  D_LONG_TERM_DEFERRED_EXPENSES  ELSE NULL END  D_LONG_TERM_DEFERRED_EXPENSES,
                            CASE WHEN SUBSTR(IS_RPT,3,1) = '1' THEN  D_DEFERRED_TAX_ASSETS  ELSE NULL END  D_DEFERRED_TAX_ASSETS,
                            CASE WHEN SUBSTR(IS_RPT,3,1) = '1' THEN  D_OTHER_NON_CURRENT_ASSETS  ELSE NULL END  D_OTHER_NON_CURRENT_ASSETS,
                            CASE WHEN SUBSTR(IS_RPT,3,1) = '1' THEN  D_TOTAL_NON_CURRENT_ASSETS  ELSE NULL END  D_TOTAL_NON_CURRENT_ASSETS,
                            CASE WHEN SUBSTR(IS_RPT,3,1) = '1' THEN  D_TOTAL_ASSETS  ELSE NULL END  D_TOTAL_ASSETS,
                            CASE WHEN SUBSTR(IS_RPT,3,1) = '1' THEN  D_SHORT_TERM_BORROWINGS  ELSE NULL END  D_SHORT_TERM_BORROWINGS,
                            CASE WHEN SUBSTR(IS_RPT,3,1) = '1' THEN  D_FINANCIAL_LIABILITIES_HFT  ELSE NULL END  D_FINANCIAL_LIABILITIES_HFT,
                            CASE WHEN SUBSTR(IS_RPT,3,1) = '1' THEN  D_NOTES_PAYABLE  ELSE NULL END  D_NOTES_PAYABLE,
                            CASE WHEN SUBSTR(IS_RPT,3,1) = '1' THEN  D_ACCOUNTS_PAYABLE  ELSE NULL END  D_ACCOUNTS_PAYABLE,
                            CASE WHEN SUBSTR(IS_RPT,3,1) = '1' THEN  D_RECEIPTS_IN_ADVANCE  ELSE NULL END  D_RECEIPTS_IN_ADVANCE,
                            CASE WHEN SUBSTR(IS_RPT,3,1) = '1' THEN  D_INTEREST_PAYABLE  ELSE NULL END  D_INTEREST_PAYABLE,
                            CASE WHEN SUBSTR(IS_RPT,3,1) = '1' THEN  D_EMPLOYEE_BENEFITS_PAYABLE  ELSE NULL END  D_EMPLOYEE_BENEFITS_PAYABLE,
                            CASE WHEN SUBSTR(IS_RPT,3,1) = '1' THEN  D_TAXES_PAYABLE  ELSE NULL END  D_TAXES_PAYABLE,
                            CASE WHEN SUBSTR(IS_RPT,3,1) = '1' THEN  D_DIVIDENDS_PAYABLE  ELSE NULL END  D_DIVIDENDS_PAYABLE,
                            CASE WHEN SUBSTR(IS_RPT,3,1) = '1' THEN  D_OTHER_PAYABLE  ELSE NULL END  D_OTHER_PAYABLE,
                            CASE WHEN SUBSTR(IS_RPT,3,1) = '1' THEN  D_CURRENT_PORTION_LIABILITIES  ELSE NULL END  D_CURRENT_PORTION_LIABILITIES,
                            CASE WHEN SUBSTR(IS_RPT,3,1) = '1' THEN  D_OTHER_CURRENT_LIABILITIES  ELSE NULL END  D_OTHER_CURRENT_LIABILITIES,
                            CASE WHEN SUBSTR(IS_RPT,3,1) = '1' THEN  D_TOTAL_CURRENT_LIABILITIES  ELSE NULL END  D_TOTAL_CURRENT_LIABILITIES,
                            CASE WHEN SUBSTR(IS_RPT,3,1) = '1' THEN  D_LONG_TERM_BORROWINGSORROWING  ELSE NULL END  D_LONG_TERM_BORROWINGSORROWING,
                            CASE WHEN SUBSTR(IS_RPT,3,1) = '1' THEN  D_BONDS_PAYABLE  ELSE NULL END  D_BONDS_PAYABLE,
                            CASE WHEN SUBSTR(IS_RPT,3,1) = '1' THEN  D_LONG_TERM_PAYABLES  ELSE NULL END  D_LONG_TERM_PAYABLES,
                            CASE WHEN SUBSTR(IS_RPT,3,1) = '1' THEN  D_GRANTS_PAYABLE  ELSE NULL END  D_GRANTS_PAYABLE,
                            CASE WHEN SUBSTR(IS_RPT,3,1) = '1' THEN  D_PROVISIONS  ELSE NULL END  D_PROVISIONS,
                            CASE WHEN SUBSTR(IS_RPT,3,1) = '1' THEN  D_DEFERRED_TAX_LIABILITIES  ELSE NULL END  D_DEFERRED_TAX_LIABILITIES,
                            CASE WHEN SUBSTR(IS_RPT,3,1) = '1' THEN  D_OTHER_NON_CURRENT_LIABILITIE  ELSE NULL END  D_OTHER_NON_CURRENT_LIABILITIE,
                            CASE WHEN SUBSTR(IS_RPT,3,1) = '1' THEN  D_TOTAL_NON_CURRENT_LIABILITIE  ELSE NULL END  D_TOTAL_NON_CURRENT_LIABILITIE,
                            CASE WHEN SUBSTR(IS_RPT,3,1) = '1' THEN  D_TOTAL_LIABILITIES  ELSE NULL END  D_TOTAL_LIABILITIES,
                            CASE WHEN SUBSTR(IS_RPT,3,1) = '1' THEN  D_PAID_IN_CAPITAL_SHARE_CAPITA  ELSE NULL END  D_PAID_IN_CAPITAL_SHARE_CAPITA,
                            CASE WHEN SUBSTR(IS_RPT,3,1) = '1' THEN  D_CAPITALR_RSERVE  ELSE NULL END  D_CAPITALR_RSERVE,
                            CASE WHEN SUBSTR(IS_RPT,3,1) = '1' THEN  D_LESS_TREASURY_STOCKS  ELSE NULL END  D_LESS_TREASURY_STOCKS,
                            CASE WHEN SUBSTR(IS_RPT,3,1) = '1' THEN  D_SURPLUS_RESERVE  ELSE NULL END  D_SURPLUS_RESERVE,
                            CASE WHEN SUBSTR(IS_RPT,3,1) = '1' THEN  D_UNAPPROPRIATED_PROFIT  ELSE NULL END  D_UNAPPROPRIATED_PROFIT,
                            CASE WHEN SUBSTR(IS_RPT,3,1) = '1' THEN  D_TOTAL_EQUITY  ELSE NULL END  D_TOTAL_EQUITY,
                            CASE WHEN SUBSTR(IS_RPT,3,1) = '1' THEN  D_TOTAL_EQUITY_LIABILITIES  ELSE NULL END  D_TOTAL_EQUITY_LIABILITIES,
                            CASE WHEN SUBSTR(IS_RPT,4,1) = '1' THEN  E_DATA_DESC  ELSE NULL END  E_DATA_DESC

                        FROM
                            MBT_610_HIS
                        WHERE
                            DATA_STATUS='23'
                        AND HIS_DATE=V_NOW_DATE
                        AND B_RPT_DATE_CODE !='99'
                       ) TMP
        LEFT JOIN
            MBT_610_HIS HIS
        ON
            TMP.DATA_ID=HIS.DATA_ID) SOURCE
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
        TARGET.IS_RPT,
        TARGET.ODS_DATA_ID,
        TARGET.RPT_DATE,
        TARGET.RPT_TIME,
        TARGET.ROW_NUM
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
        '24',
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
        SOURCE.DATA_ID,
        V_NOW_DATE,
        V_NOW_TIME,
        GET_ROW_NUM(SOURCE.ORG_ID, '610')
    );
COMMIT;
UPDATE MBT_610_HIS SET DATA_STATUS='25' WHERE DATA_STATUS='23' AND HIS_DATE=V_NOW_DATE;
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
prompt Creating procedure SYNC_HIS_TO_RPT_620
prompt ======================================
prompt
CREATE OR REPLACE PROCEDURE "SYNC_HIS_TO_RPT_620"(ERRCODE OUT VARCHAR,
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
    MBT_620_RPT
WHERE
    RPT_DATE=V_NOW_DATE and DATA_STATUS='24';
           DELETE FROM MBT_ROW_NUM WHERE TYPE='620';

COMMIT;
--1.≤Â»Î÷˜±Ì
MERGE
INTO
    MBT_620_RPT TARGET
USING
    (
        SELECT
            TMP.B_INF_REC_TYPE,
            TMP.B_ENT_NAME,
            TMP.B_ENT_CERT_TYPE,
            TMP.B_ENT_CERT_NUM,
            TMP.B_RPT_DATE,
            TMP.B_SHEET_YEAR,
            TMP.B_SHEET_TYPE,
            TMP.B_SHEET_TYPE_DIVIDE,
            TMP.B_AUDIT_FIRM_NAME,
            TMP.B_AUDITOR_NAME,
            TMP.B_AUDIT_TIME,
            TMP.B_CIMOC,
            TMP.B_RPT_DATE_CODE,
            TMP.C_MAIN_REVENUEF_REVENUE,
            TMP.C_SALES_INCOME_E_GOODS_PRODUCT,
            TMP.C_SALES_INCOME_I_GOODS_PRODUCT,
            TMP.C_DISCOUNT_ALLOWANCE,
            TMP.C_NET_AMOUNT_INCOME_MAIN_BUSI,
            TMP.C_MAIN_OPERATING_COST,
            TMP.C_SALES_INCOME_E_PRODUCTS,
            TMP.C_PRINCIPLE_B_TAX_EXTRA_CHARGE,
            TMP.C_OPERATION_EXPENSE,
            TMP.C_OTHERS_OPERATING_COST,
            TMP.C_DEFERRED_INCOME,
            TMP.C_INCOME_SALES_AGENCY,
            TMP.C_OTHER_OPERATING_INCOME,
            TMP.C_PRINCIPLE_BUSINESS_PROFIT,
            TMP.C_OTHER_BUSINESS_PROFIT,
            TMP.C_SELLING_EXPENSES,
            TMP.C_GENERAL_ADMIN_EXPENSES,
            TMP.C_FINANCIAL_EXPENSES,
            TMP.C_OTHERS_EXPENSES,
            TMP.C_OPERATING_PROFITS,
            TMP.C_INVESTMENT_INCOME,
            TMP.C_FUTURES_INCOME,
            TMP.C_ALLOWANCE_INCOME,
            TMP.C_ALLOWANCE_INCOME_B_ALLOWANCE,
            TMP.C_NON_OPERATING_INCOME,
            TMP.C_NET_GAIN_DISPOSAL_FIXED_ASS,
            TMP.C_INCOME_NON_CURRENCY_TRADE,
            TMP.C_INCOME_SALES_INTANGIBLE_ASS,
            TMP.C_INCOME_FROM_PENALTY,
            TMP.C_OTHERS_INCOME,
            TMP.C_CALCULATING_CONTENT_SALARY_B,
            TMP.C_NON_OPERATING_EXPENSES,
            TMP.C_LOSS_DISPOSAL_FIXED_ASSETS,
            TMP.C_EXCHANGE_NON_MONETARY_ASS_L,
            TMP.C_LOSS_LAWSUITS,
            TMP.C_PAYMENT_FOR_DONATION,
            TMP.C_OTHER_PAYMENTS,
            TMP.C_BALANCE_OF_CONTENTSALARY,
            TMP.C_TOTAL_PROFIT,
            TMP.C_INCOMETAX,
            TMP.C_IMPARIMENT_LOSS,
            TMP.C_UNREALIZED_INVESTMENT_LOSSES,
            TMP.C_NET_PROFIT,
            TMP.C_PROFIT_DISTRIBUTION_B_PERIOD,
            TMP.C_COMPENSATION_SURPLUS_RES,
            TMP.C_OTHER_ADJUSTMENT_FACTORS,
            TMP.C_PROFIT_AVAILABLE_DISTRIBUTI,
            TMP.C_PROFIT_RESERVED_A_SINGLEIT,
            TMP.C_SUPPLEMENTARY_CURRENT_CAPIT,
            TMP.C_APPR_STATUTORY_SURPLUS_RES,
            TMP.C_APPR_STATUTORY_WELFAREFUND,
            TMP.C_APPR_STAFF_INC_WELFARE_FUND,
            TMP.C_APPR_RESERVE_FUND,
            TMP.C_APPR_ENTERPRISE_EXP_FUND,
            TMP.C_PRO_CAP_RETURN_INVESTMENT,
            TMP.C_OTHERS,
            TMP.C_PROFIT_AVAILABLE_OWNERS_DIST,
            TMP.C_PREFERRED_STOCK_DIVIDEND_PAY,
            TMP.C_WITHDRAWAL_OTHER_COMM_ACC_FU,
            TMP.C_PAYABLE_DIVIDENDS_COMMON_STO,
            TMP.C_TRANSFER_ORDINARY_SHARES_DP,
            TMP.C_OTHERS_OWNERS,
            TMP.C_UNAPPROPRIATED_PROFIT,
            TMP.C_LOSS_COMPENSATED_BEFORE_TAX,
            TMP.D_REVENUE_OF_SALES,
            TMP.D_COST_OF_SALES,
            TMP.D_BUSINESS_OTHER_TAXES,
            TMP.D_SELLING_EXPENSES,
            TMP.D_GENERAL_ADMIN_EXPENSES,
            TMP.D_FINANCIAL_EXPENSE,
            TMP.D_IMPAIRMENT_LOSS_OF_ASSETS,
            TMP.D_PROFIT_LOSS_ARISING_FAIR_VAL,
            TMP.D_INVESTMENT_INCOME,
            TMP.D_INVESTMENT_INCOME_ENTERPRISE,
            TMP.D_OPERATING_PROFITS,
            TMP.D_NON_OPERATING_INCOME,
            TMP.D_NON_OPERATING_EXPENSES,
            TMP.D_NON_CURRENT_ASSETS,
            TMP.D_PROFIT_BEFORE_TAX,
            TMP.D_INCOME_TAX_EXPENSE,
            TMP.D_NET_PROFIT,
            TMP.D_BASIC_EARNINGS_PER_SHARE,
            TMP.D_DILUTED_EARNINGS_PER_SHARE,
            TMP.E_DATA_DESC,
            HIS.DATA_ID,
            HIS.DATA_DATE,
            HIS.CORP_ID,
            HIS.ORG_ID,
            HIS.GROUP_ID,
            HIS.INQ_ORG_ID,
            HIS.INQ_GROUP_ID,
            HIS.REMARKS,
            HIS.CHECK_FLAG,
            HIS.CHECK_DESC,
            HIS.CHECK_ERR_TYPE,
            HIS.NEXT_ACTION,
            HIS.DATA_STATUS,
            HIS.DATA_FLAG,
            HIS.DATA_SOURCE,
            HIS.DATA_VERSION,
            HIS.DATA_REJ_DESC,
            HIS.DATA_DEL_DESC,
            HIS.DATA_CRT_USER,
            HIS.DATA_CRT_DATE,
            HIS.DATA_CRT_TIME,
            HIS.DATA_CHG_USER,
            HIS.DATA_CHG_DATE,
            HIS.DATA_CHG_TIME,
            HIS.DATA_APV_USER,
            HIS.DATA_APV_DATE,
            HIS.DATA_APV_TIME,
            HIS.RSV1,
            HIS.RSV2,
            HIS.RSV3,
            HIS.RSV4,
            HIS.RSV5,
            HIS.IS_RPT
        FROM
            (

                        SELECT
                            DATA_ID,
                            CASE WHEN SUBSTR(IS_RPT,0,1) = '1' THEN B_INF_REC_TYPE      ELSE NULL END    B_INF_REC_TYPE,
                            CASE WHEN SUBSTR(IS_RPT,0,1) = '1' THEN B_ENT_NAME          ELSE NULL END  B_ENT_NAME,
                            CASE WHEN SUBSTR(IS_RPT,0,1) = '1' THEN B_ENT_CERT_TYPE     ELSE NULL END     B_ENT_CERT_TYPE,
                            CASE WHEN SUBSTR(IS_RPT,0,1) = '1' THEN B_ENT_CERT_NUM      ELSE NULL END    B_ENT_CERT_NUM,
                            CASE WHEN SUBSTR(IS_RPT,0,1) = '1' THEN B_RPT_DATE          ELSE NULL END  B_RPT_DATE,
                            CASE WHEN SUBSTR(IS_RPT,0,1) = '1' THEN B_SHEET_YEAR        ELSE NULL END  B_SHEET_YEAR,
                            CASE WHEN SUBSTR(IS_RPT,0,1) = '1' THEN B_SHEET_TYPE        ELSE NULL END  B_SHEET_TYPE,
                            CASE WHEN SUBSTR(IS_RPT,0,1) = '1' THEN B_SHEET_TYPE_DIVIDE ELSE NULL END      B_SHEET_TYPE_DIVIDE,
                            CASE WHEN SUBSTR(IS_RPT,0,1) = '1' THEN B_AUDIT_FIRM_NAME   ELSE NULL END      B_AUDIT_FIRM_NAME,
                            CASE WHEN SUBSTR(IS_RPT,0,1) = '1' THEN B_AUDITOR_NAME      ELSE NULL END    B_AUDITOR_NAME,
                            CASE WHEN SUBSTR(IS_RPT,0,1) = '1' THEN B_AUDIT_TIME        ELSE NULL END  B_AUDIT_TIME,
                            CASE WHEN SUBSTR(IS_RPT,0,1) = '1' THEN B_CIMOC             ELSE NULL END B_CIMOC,
                            CASE WHEN SUBSTR(IS_RPT,0,1) = '1' THEN B_RPT_DATE_CODE     ELSE NULL END     B_RPT_DATE_CODE,
                             CASE WHEN SUBSTR(IS_RPT,2,1) = '1' THEN C_MAIN_REVENUEF_REVENUE ELSE NULL END  C_MAIN_REVENUEF_REVENUE,
                             CASE WHEN SUBSTR(IS_RPT,2,1) = '1' THEN C_SALES_INCOME_E_GOODS_PRODUCT ELSE NULL END  C_SALES_INCOME_E_GOODS_PRODUCT,
                             CASE WHEN SUBSTR(IS_RPT,2,1) = '1' THEN C_SALES_INCOME_I_GOODS_PRODUCT ELSE NULL END  C_SALES_INCOME_I_GOODS_PRODUCT,
                             CASE WHEN SUBSTR(IS_RPT,2,1) = '1' THEN C_DISCOUNT_ALLOWANCE ELSE NULL END  C_DISCOUNT_ALLOWANCE,
                             CASE WHEN SUBSTR(IS_RPT,2,1) = '1' THEN C_NET_AMOUNT_INCOME_MAIN_BUSI ELSE NULL END  C_NET_AMOUNT_INCOME_MAIN_BUSI,
                             CASE WHEN SUBSTR(IS_RPT,2,1) = '1' THEN C_MAIN_OPERATING_COST ELSE NULL END  C_MAIN_OPERATING_COST,
                             CASE WHEN SUBSTR(IS_RPT,2,1) = '1' THEN C_SALES_INCOME_E_PRODUCTS ELSE NULL END  C_SALES_INCOME_E_PRODUCTS,
                             CASE WHEN SUBSTR(IS_RPT,2,1) = '1' THEN C_PRINCIPLE_B_TAX_EXTRA_CHARGE ELSE NULL END  C_PRINCIPLE_B_TAX_EXTRA_CHARGE,
                             CASE WHEN SUBSTR(IS_RPT,2,1) = '1' THEN C_OPERATION_EXPENSE ELSE NULL END  C_OPERATION_EXPENSE,
                             CASE WHEN SUBSTR(IS_RPT,2,1) = '1' THEN C_OTHERS_OPERATING_COST ELSE NULL END  C_OTHERS_OPERATING_COST,
                             CASE WHEN SUBSTR(IS_RPT,2,1) = '1' THEN C_DEFERRED_INCOME ELSE NULL END  C_DEFERRED_INCOME,
                             CASE WHEN SUBSTR(IS_RPT,2,1) = '1' THEN C_INCOME_SALES_AGENCY ELSE NULL END  C_INCOME_SALES_AGENCY,
                             CASE WHEN SUBSTR(IS_RPT,2,1) = '1' THEN C_OTHER_OPERATING_INCOME ELSE NULL END  C_OTHER_OPERATING_INCOME,
                             CASE WHEN SUBSTR(IS_RPT,2,1) = '1' THEN C_PRINCIPLE_BUSINESS_PROFIT ELSE NULL END  C_PRINCIPLE_BUSINESS_PROFIT,
                             CASE WHEN SUBSTR(IS_RPT,2,1) = '1' THEN C_OTHER_BUSINESS_PROFIT ELSE NULL END  C_OTHER_BUSINESS_PROFIT,
                             CASE WHEN SUBSTR(IS_RPT,2,1) = '1' THEN C_SELLING_EXPENSES ELSE NULL END  C_SELLING_EXPENSES,
                             CASE WHEN SUBSTR(IS_RPT,2,1) = '1' THEN C_GENERAL_ADMIN_EXPENSES ELSE NULL END  C_GENERAL_ADMIN_EXPENSES,
                             CASE WHEN SUBSTR(IS_RPT,2,1) = '1' THEN C_FINANCIAL_EXPENSES ELSE NULL END  C_FINANCIAL_EXPENSES,
                             CASE WHEN SUBSTR(IS_RPT,2,1) = '1' THEN C_OTHERS_EXPENSES ELSE NULL END  C_OTHERS_EXPENSES,
                             CASE WHEN SUBSTR(IS_RPT,2,1) = '1' THEN C_OPERATING_PROFITS ELSE NULL END  C_OPERATING_PROFITS,
                             CASE WHEN SUBSTR(IS_RPT,2,1) = '1' THEN C_INVESTMENT_INCOME ELSE NULL END  C_INVESTMENT_INCOME,
                             CASE WHEN SUBSTR(IS_RPT,2,1) = '1' THEN C_FUTURES_INCOME ELSE NULL END  C_FUTURES_INCOME,
                             CASE WHEN SUBSTR(IS_RPT,2,1) = '1' THEN C_ALLOWANCE_INCOME ELSE NULL END  C_ALLOWANCE_INCOME,
                             CASE WHEN SUBSTR(IS_RPT,2,1) = '1' THEN C_ALLOWANCE_INCOME_B_ALLOWANCE ELSE NULL END  C_ALLOWANCE_INCOME_B_ALLOWANCE,
                             CASE WHEN SUBSTR(IS_RPT,2,1) = '1' THEN C_NON_OPERATING_INCOME ELSE NULL END  C_NON_OPERATING_INCOME,
                             CASE WHEN SUBSTR(IS_RPT,2,1) = '1' THEN C_NET_GAIN_DISPOSAL_FIXED_ASS ELSE NULL END  C_NET_GAIN_DISPOSAL_FIXED_ASS,
                             CASE WHEN SUBSTR(IS_RPT,2,1) = '1' THEN C_INCOME_NON_CURRENCY_TRADE ELSE NULL END  C_INCOME_NON_CURRENCY_TRADE,
                             CASE WHEN SUBSTR(IS_RPT,2,1) = '1' THEN C_INCOME_SALES_INTANGIBLE_ASS ELSE NULL END  C_INCOME_SALES_INTANGIBLE_ASS,
                             CASE WHEN SUBSTR(IS_RPT,2,1) = '1' THEN C_INCOME_FROM_PENALTY ELSE NULL END  C_INCOME_FROM_PENALTY,
                             CASE WHEN SUBSTR(IS_RPT,2,1) = '1' THEN C_OTHERS_INCOME ELSE NULL END  C_OTHERS_INCOME,
                             CASE WHEN SUBSTR(IS_RPT,2,1) = '1' THEN C_CALCULATING_CONTENT_SALARY_B ELSE NULL END  C_CALCULATING_CONTENT_SALARY_B,
                             CASE WHEN SUBSTR(IS_RPT,2,1) = '1' THEN C_NON_OPERATING_EXPENSES ELSE NULL END  C_NON_OPERATING_EXPENSES,
                             CASE WHEN SUBSTR(IS_RPT,2,1) = '1' THEN C_LOSS_DISPOSAL_FIXED_ASSETS ELSE NULL END  C_LOSS_DISPOSAL_FIXED_ASSETS,
                             CASE WHEN SUBSTR(IS_RPT,2,1) = '1' THEN C_EXCHANGE_NON_MONETARY_ASS_L ELSE NULL END  C_EXCHANGE_NON_MONETARY_ASS_L,
                             CASE WHEN SUBSTR(IS_RPT,2,1) = '1' THEN C_LOSS_LAWSUITS ELSE NULL END  C_LOSS_LAWSUITS,
                             CASE WHEN SUBSTR(IS_RPT,2,1) = '1' THEN C_PAYMENT_FOR_DONATION ELSE NULL END  C_PAYMENT_FOR_DONATION,
                             CASE WHEN SUBSTR(IS_RPT,2,1) = '1' THEN C_OTHER_PAYMENTS ELSE NULL END  C_OTHER_PAYMENTS,
                             CASE WHEN SUBSTR(IS_RPT,2,1) = '1' THEN C_BALANCE_OF_CONTENTSALARY ELSE NULL END  C_BALANCE_OF_CONTENTSALARY,
                             CASE WHEN SUBSTR(IS_RPT,2,1) = '1' THEN C_TOTAL_PROFIT ELSE NULL END  C_TOTAL_PROFIT,
                             CASE WHEN SUBSTR(IS_RPT,2,1) = '1' THEN C_INCOMETAX ELSE NULL END  C_INCOMETAX,
                             CASE WHEN SUBSTR(IS_RPT,2,1) = '1' THEN C_IMPARIMENT_LOSS ELSE NULL END  C_IMPARIMENT_LOSS,
                             CASE WHEN SUBSTR(IS_RPT,2,1) = '1' THEN C_UNREALIZED_INVESTMENT_LOSSES ELSE NULL END  C_UNREALIZED_INVESTMENT_LOSSES,
                             CASE WHEN SUBSTR(IS_RPT,2,1) = '1' THEN C_NET_PROFIT ELSE NULL END  C_NET_PROFIT,
                             CASE WHEN SUBSTR(IS_RPT,2,1) = '1' THEN C_PROFIT_DISTRIBUTION_B_PERIOD ELSE NULL END  C_PROFIT_DISTRIBUTION_B_PERIOD,
                             CASE WHEN SUBSTR(IS_RPT,2,1) = '1' THEN C_COMPENSATION_SURPLUS_RES ELSE NULL END  C_COMPENSATION_SURPLUS_RES,
                             CASE WHEN SUBSTR(IS_RPT,2,1) = '1' THEN C_OTHER_ADJUSTMENT_FACTORS ELSE NULL END  C_OTHER_ADJUSTMENT_FACTORS,
                             CASE WHEN SUBSTR(IS_RPT,2,1) = '1' THEN C_PROFIT_AVAILABLE_DISTRIBUTI ELSE NULL END  C_PROFIT_AVAILABLE_DISTRIBUTI,
                             CASE WHEN SUBSTR(IS_RPT,2,1) = '1' THEN C_PROFIT_RESERVED_A_SINGLEIT ELSE NULL END  C_PROFIT_RESERVED_A_SINGLEIT,
                             CASE WHEN SUBSTR(IS_RPT,2,1) = '1' THEN C_SUPPLEMENTARY_CURRENT_CAPIT ELSE NULL END  C_SUPPLEMENTARY_CURRENT_CAPIT,
                             CASE WHEN SUBSTR(IS_RPT,2,1) = '1' THEN C_APPR_STATUTORY_SURPLUS_RES ELSE NULL END  C_APPR_STATUTORY_SURPLUS_RES,
                             CASE WHEN SUBSTR(IS_RPT,2,1) = '1' THEN C_APPR_STATUTORY_WELFAREFUND ELSE NULL END  C_APPR_STATUTORY_WELFAREFUND,
                             CASE WHEN SUBSTR(IS_RPT,2,1) = '1' THEN C_APPR_STAFF_INC_WELFARE_FUND ELSE NULL END  C_APPR_STAFF_INC_WELFARE_FUND,
                             CASE WHEN SUBSTR(IS_RPT,2,1) = '1' THEN C_APPR_RESERVE_FUND ELSE NULL END  C_APPR_RESERVE_FUND,
                             CASE WHEN SUBSTR(IS_RPT,2,1) = '1' THEN C_APPR_ENTERPRISE_EXP_FUND ELSE NULL END  C_APPR_ENTERPRISE_EXP_FUND,
                             CASE WHEN SUBSTR(IS_RPT,2,1) = '1' THEN C_PRO_CAP_RETURN_INVESTMENT ELSE NULL END  C_PRO_CAP_RETURN_INVESTMENT,
                             CASE WHEN SUBSTR(IS_RPT,2,1) = '1' THEN C_OTHERS ELSE NULL END  C_OTHERS,
                             CASE WHEN SUBSTR(IS_RPT,2,1) = '1' THEN C_PROFIT_AVAILABLE_OWNERS_DIST ELSE NULL END  C_PROFIT_AVAILABLE_OWNERS_DIST,
                             CASE WHEN SUBSTR(IS_RPT,2,1) = '1' THEN C_PREFERRED_STOCK_DIVIDEND_PAY ELSE NULL END  C_PREFERRED_STOCK_DIVIDEND_PAY,
                             CASE WHEN SUBSTR(IS_RPT,2,1) = '1' THEN C_WITHDRAWAL_OTHER_COMM_ACC_FU ELSE NULL END  C_WITHDRAWAL_OTHER_COMM_ACC_FU,
                             CASE WHEN SUBSTR(IS_RPT,2,1) = '1' THEN C_PAYABLE_DIVIDENDS_COMMON_STO ELSE NULL END  C_PAYABLE_DIVIDENDS_COMMON_STO,
                             CASE WHEN SUBSTR(IS_RPT,2,1) = '1' THEN C_TRANSFER_ORDINARY_SHARES_DP ELSE NULL END  C_TRANSFER_ORDINARY_SHARES_DP,
                             CASE WHEN SUBSTR(IS_RPT,2,1) = '1' THEN C_OTHERS_OWNERS ELSE NULL END  C_OTHERS_OWNERS,
                             CASE WHEN SUBSTR(IS_RPT,2,1) = '1' THEN C_UNAPPROPRIATED_PROFIT ELSE NULL END  C_UNAPPROPRIATED_PROFIT,
                             CASE WHEN SUBSTR(IS_RPT,2,1) = '1' THEN C_LOSS_COMPENSATED_BEFORE_TAX ELSE NULL END  C_LOSS_COMPENSATED_BEFORE_TAX,
                              CASE WHEN SUBSTR(IS_RPT,3,1) = '1' THEN  D_REVENUE_OF_SALES  ELSE NULL END  D_REVENUE_OF_SALES,
                              CASE WHEN SUBSTR(IS_RPT,3,1) = '1' THEN  D_COST_OF_SALES  ELSE NULL END  D_COST_OF_SALES,
                              CASE WHEN SUBSTR(IS_RPT,3,1) = '1' THEN  D_BUSINESS_OTHER_TAXES  ELSE NULL END  D_BUSINESS_OTHER_TAXES,
                              CASE WHEN SUBSTR(IS_RPT,3,1) = '1' THEN  D_SELLING_EXPENSES  ELSE NULL END  D_SELLING_EXPENSES,
                              CASE WHEN SUBSTR(IS_RPT,3,1) = '1' THEN  D_GENERAL_ADMIN_EXPENSES  ELSE NULL END  D_GENERAL_ADMIN_EXPENSES,
                              CASE WHEN SUBSTR(IS_RPT,3,1) = '1' THEN  D_FINANCIAL_EXPENSE  ELSE NULL END  D_FINANCIAL_EXPENSE,
                              CASE WHEN SUBSTR(IS_RPT,3,1) = '1' THEN  D_IMPAIRMENT_LOSS_OF_ASSETS  ELSE NULL END  D_IMPAIRMENT_LOSS_OF_ASSETS,
                              CASE WHEN SUBSTR(IS_RPT,3,1) = '1' THEN  D_PROFIT_LOSS_ARISING_FAIR_VAL  ELSE NULL END  D_PROFIT_LOSS_ARISING_FAIR_VAL,
                              CASE WHEN SUBSTR(IS_RPT,3,1) = '1' THEN  D_INVESTMENT_INCOME  ELSE NULL END  D_INVESTMENT_INCOME,
                              CASE WHEN SUBSTR(IS_RPT,3,1) = '1' THEN  D_INVESTMENT_INCOME_ENTERPRISE  ELSE NULL END  D_INVESTMENT_INCOME_ENTERPRISE,
                              CASE WHEN SUBSTR(IS_RPT,3,1) = '1' THEN  D_OPERATING_PROFITS  ELSE NULL END  D_OPERATING_PROFITS,
                              CASE WHEN SUBSTR(IS_RPT,3,1) = '1' THEN  D_NON_OPERATING_INCOME  ELSE NULL END  D_NON_OPERATING_INCOME,
                              CASE WHEN SUBSTR(IS_RPT,3,1) = '1' THEN  D_NON_OPERATING_EXPENSES  ELSE NULL END  D_NON_OPERATING_EXPENSES,
                              CASE WHEN SUBSTR(IS_RPT,3,1) = '1' THEN  D_NON_CURRENT_ASSETS  ELSE NULL END  D_NON_CURRENT_ASSETS,
                              CASE WHEN SUBSTR(IS_RPT,3,1) = '1' THEN  D_PROFIT_BEFORE_TAX  ELSE NULL END  D_PROFIT_BEFORE_TAX,
                              CASE WHEN SUBSTR(IS_RPT,3,1) = '1' THEN  D_INCOME_TAX_EXPENSE  ELSE NULL END  D_INCOME_TAX_EXPENSE,
                              CASE WHEN SUBSTR(IS_RPT,3,1) = '1' THEN  D_NET_PROFIT  ELSE NULL END  D_NET_PROFIT,
                              CASE WHEN SUBSTR(IS_RPT,3,1) = '1' THEN  D_BASIC_EARNINGS_PER_SHARE  ELSE NULL END  D_BASIC_EARNINGS_PER_SHARE,
                              CASE WHEN SUBSTR(IS_RPT,3,1) = '1' THEN  D_DILUTED_EARNINGS_PER_SHARE  ELSE NULL END  D_DILUTED_EARNINGS_PER_SHARE,
                            CASE WHEN SUBSTR(IS_RPT,4,1) = '1' THEN  E_DATA_DESC ELSE NULL END  E_DATA_DESC
                        FROM
                            MBT_620_HIS
                        WHERE
                            DATA_STATUS='23'
                        AND HIS_DATE=V_NOW_DATE
                        AND B_RPT_DATE_CODE !='99'
                        ) TMP
        LEFT JOIN
            MBT_620_HIS HIS
        ON
            TMP.DATA_ID=HIS.DATA_ID) SOURCE
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
        TARGET.IS_RPT,
        TARGET.ODS_DATA_ID,
        TARGET.RPT_DATE,
        TARGET.RPT_TIME,
        TARGET.ROW_NUM
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
        '24',
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
        SOURCE.DATA_ID,
        V_NOW_DATE,
        V_NOW_TIME,
        GET_ROW_NUM(SOURCE.ORG_ID, '620')
    );
COMMIT;
UPDATE MBT_620_HIS SET DATA_STATUS='25' WHERE DATA_STATUS='23' AND HIS_DATE=V_NOW_DATE;
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
prompt Creating procedure SYNC_HIS_TO_RPT_630
prompt ======================================
prompt
CREATE OR REPLACE PROCEDURE "SYNC_HIS_TO_RPT_630"(ERRCODE OUT VARCHAR,
                                                  ERRMSG  OUT VARCHAR) AS
  V_NOW_DATE CHAR(8);
  V_NOW_TIME CHAR(14);
BEGIN
  SELECT TO_CHAR(SYSDATE, 'YYYYMMDD') INTO V_NOW_DATE FROM DUAL;
  SELECT TO_CHAR(SYSDATE, 'YYYYMMDDHH24MISS') INTO V_NOW_TIME FROM DUAL;
  DELETE FROM MBT_630_RPT
   WHERE RPT_DATE = V_NOW_DATE
     and DATA_STATUS = '24';
  DELETE FROM MBT_ROW_NUM WHERE TYPE = '630';

  COMMIT;
  --1.≤Â»Î÷˜±Ì
  MERGE INTO MBT_630_RPT TARGET
  USING (SELECT TMP.B_INF_REC_TYPE,
                TMP.B_ENT_NAME,
                TMP.B_ENT_CERT_TYPE,
                TMP.B_ENT_CERT_NUM,
                TMP.B_RPT_DATE,
                TMP.B_SHEET_YEAR,
                TMP.B_SHEET_TYPE,
                TMP.B_SHEET_TYPE_DIVIDE,
                TMP.B_AUDIT_FIRM_NAME,
                TMP.B_AUDITOR_NAME,
                TMP.B_AUDIT_TIME,
                TMP.B_CIMOC,
                TMP.B_RPT_DATE_CODE,
                TMP.C_CASH_REC_SALES_GOODS_REN_SER,
                TMP.C_TAX_REFUNDS,
                TMP.C_OTHER_CASH_REC_REL_OPERA_ACT,
                TMP.C_TOTAL_CASH_INFLOWS_OPERA_ACT,
                TMP.C_CASH_PAID_GOODS_SERVICES,
                TMP.C_CASH_PAID_BEHALF_EMPLOYEES,
                TMP.C_TOTAL_CASH_OUTFLOWS_OPERA_AC,
                TMP.C_NET_CASH_FLOWS_OPERAT_ACT,
                TMP.C_CASH_REC_RETURN_INVESTMENT,
                TMP.C_CASH_RECEIVED_ONVESTMENTS,
                TMP.C_NET_CASH_REC_D_F_A_I_A_O_LT,
                TMP.C_CASH_RECEIVED_REL_OTHER_ACT,
                TMP.C_TOTAL_CASH_INF_INVESTING_ACT,
                TMP.C_CASH_P_A_F_ASS_I_ASS_OLT_ASS,
                TMP.C_CASH_PAYMENTS_INVESTMENTS,
                TMP.C_CASH_PAYMENTS_RELATED_O_ACT,
                TMP.C_TOTAL_CASH_OUTFLOWS_INV_ACT,
                TMP.C_NET_CASH_FLOWS_INVESTING_ACT,
                TMP.C_CASH_RECEIVED_FROM_INVESTORS,
                TMP.C_CASH_FROM_BORROWINGS,
                TMP.C_OTHER_CASH_REC_REL_FIN_ACT,
                TMP.C_TOTAL_CASH_INF_FINANCING_ACT,
                TMP.C_CASH_REPAYMENTS_FOR_DEBTS,
                TMP.C_CASH_PAYMENTS_D_D_PRO_I_EXP,
                TMP.C_CASH_PAYMENTS_REL_O_FIN_AC,
                TMP.C_TOTAL_CASH_OUTFLOWS_FIN_AC,
                TMP.C_NET_CASH_FLOWS_FINANCING_AC,
                TMP.C_EFFECT_EX_RATE_CHANGES_CASH,
                TMP.C_NET_INC_CASH_CASH_EQUIVALENT,
                TMP.C_NET_PROFIT,
                TMP.C_PROVISION_FOR_ASSETS,
                TMP.C_DEPRECIATION_FIXED_ASSETS,
                TMP.C_AMORTISATION_INTANGIBLE_ASS,
                TMP.C_LONG_TERM_DEFERRED_EXP_AMOR,
                TMP.C_DECREASE_DEFFERED_EXPENSES,
                TMP.C_ADDITION_ACCUED_EXPENSE,
                TMP.C_LOSSES_D_F_ASS_I_ASS_OLT_ASS,
                TMP.C_LOSSES_SCRAPPING_FIXED_ASS,
                TMP.C_FINANCE_EXPENSE,
                TMP.C_LOSSES_ARSING_INVESTMENT,
                TMP.C_DEFERRED_TAX_CREDIT,
                TMP.C_DECREASE_IN_INVENTORIES,
                TMP.C_DECREASE_OPERATING_RECEIVABL,
                TMP.C_INCREASE_OPERATING_RECEIVABL,
                TMP.C_OTHERS,
                TMP.C_NET_CASH_FLOWS_OPERA_ACT_MI,
                TMP.C_DEBTS_TRANSFER_TO_CAPITAL,
                TMP.C_ONE_YEAR_DUE_CONVERTIBLE_BON,
                TMP.C_FINANCING_RENT_THE_FIXED_ASS,
                TMP.C_NON_CASH_OTHERS,
                TMP.C_CASH_AT_THE_END_OF_PERIOD,
                TMP.C_CASH_AT_THE_BEGINNING_PERIOD,
                TMP.C_CASH_EQUIVALENTS_END_PERIOD,
                TMP.C_CASH_RQUIVALENTS_BEGIN_PERIO,
                TMP.C_NET_INCREASE_CASH_CASH_EQU_M,
                TMP.C_ONE_YEAR_DUE_CONVERTIBLE_BO,
                TMP.C_PAYMENTS_OF_ALL_TYPES_TAXES,
                TMP.C_OTHER_CASH_PAYMENTS_OPERA_AC,
                TMP.D_CASH_REC_SAL_GOO_REN_SERVICE,
                TMP.D_TAX_REFUNDS,
                TMP.D_OTHER_CASH_REC_REL_OPERA_ACT,
                TMP.D_TOTAL_CASH_INFLOWS_OPERAT_AC,
                TMP.D_CASH_PAID_FOR_GOODS_SERVICES,
                TMP.D_CASH_PAID_BEHALF_OF_EMPLOYEE,
                TMP.D_PAYMENTS_OF_ALL_TYPES_TAXES,
                TMP.D_OTHER_CASH_PAYMENTS_OPERA_AC,
                TMP.D_TOTAL_CASH_OUTFLOWS_OPERA_AC,
                TMP.D_NET_CASH_FLOWS_OPERATING_ACT,
                TMP.D_CASH_REC_RETURN_INVESTMENT,
                TMP.D_CASH_REC_ONVESTMENTS,
                TMP.D_NET_CASH_R_DFASS_IASS_OLTASS,
                TMP.D_NET_CASH_INF_DIS_SUB_O_B_ENT,
                TMP.D_CASH_REC_REL_OTHER_INVEST_AC,
                TMP.D_TOTAL_CASH_INFLOWS_INVEST_AC,
                TMP.D_CASH_PAID_ACQ_FASS_IASS_ASS,
                TMP.D_CASH_PAYMENTS_INVESTMENTS,
                TMP.D_NET_CASH_OUTF_PRO_SUB_OBUNIT,
                TMP.D_CASH_PAYMENTS_REL_O_I_ACT,
                TMP.D_SUB_TOTAL_CASH_OUTFLOWS,
                TMP.D_NET_CASH_FLOWS_INVEST_ACT,
                TMP.D_CASH_RECEIVED_INVESTORS,
                TMP.D_CASH_FROM_BORROWINGS,
                TMP.D_OTHER_CASH_REC_REL_FINA_ACT,
                TMP.D_TOTAL_CASH_INFLOWS_FINA_ACT,
                TMP.D_CASH_REPAYMENTS_FOR_DEBTS,
                TMP.D_CASH_PAYMENTS_D_DI_P_INT_EXP,
                TMP.D_CASH_PAYMENTS_REL_O_F_ACT,
                TMP.D_TOTAL_CASH_OUTFLOWS_FINA_ACT,
                TMP.D_NET_CASH_FLOWS_FINANCING_ACT,
                TMP.D_EFFECT_EXC_RATE_CHANGES_CASH,
                TMP.D_NET_INC_CASH_CASH_EQUIVALENT,
                TMP.D_INITIAL_CASH_CASH_EQU_BALANC,
                TMP.D_THE_FINAL_CASH_EQU_BALANCE,
                TMP.D_NET_PROFIT,
                TMP.D_PROVISION_ASSET_IMPAIRMENT,
                TMP.D_DEPRECIATION_FIXED_ASSETS,
                TMP.D_AMORTISATION_INTANGIBLE_ASS,
                TMP.D_AMORTISATION_LT_DEFFERED_EXP,
                TMP.D_DECREASE_DEFFERED_EXPENSES,
                TMP.D_ADDITION_OF_ACCUED_EXPENSE,
                TMP.D_LOSSES_DISP_FASS_IASS_OLTASS,
                TMP.D_LOSSES_SCRAPPING_FIXED_ASS,
                TMP.D_PROFIT_LOSS_CHANGES_FAIR_VAL,
                TMP.D_FINANCE_EXPENSE,
                TMP.D_LOSSES_ARSING_INVESTMENT,
                TMP.D_DEFERRED_INCOME_TAX_ASSETS,
                TMP.D_DEFERRED_INCOME_TAX_LIABILIT,
                TMP.D_DECREASE_IN_INVENTORIES,
                TMP.D_DECREASE_OPERATING_RECEIVABL,
                TMP.D_INCREASE_OPERATING_RECEIVABL,
                TMP.D_OTHERS,
                TMP.D_NET_CASH_FLOWS_OPERAT_ACT_MI,
                TMP.D_DEBTS_TRANSFER_TO_CAPITAL,
                TMP.D_ONE_YEAR_DUE_CONVER_BONDS,
                TMP.D_FINANCING_RENT_FIXED_ASSET,
                TMP.D_NON_CASH_OTHERS,
                TMP.D_CASH_AT_THE_END_OF_PERIOD,
                TMP.D_CASH_AT_THE_BEGINNING_PERIOD,
                TMP.D_CASH_EQUIVALENTS_AT_THE_PERI,
                TMP.D_CASH_RQUIVALENTS_BEGIN_PERIO,
                TMP.D_NET_INCREASE_CASH_EQUIVAL_MI,
                TMP.E_DATA_DESC,
                HIS.DATA_ID,
                HIS.DATA_DATE,
                HIS.CORP_ID,
                HIS.ORG_ID,
                HIS.GROUP_ID,
                HIS.INQ_ORG_ID,
                HIS.INQ_GROUP_ID,
                HIS.REMARKS,
                HIS.CHECK_FLAG,
                HIS.CHECK_DESC,
                HIS.CHECK_ERR_TYPE,
                HIS.NEXT_ACTION,
                HIS.DATA_STATUS,
                HIS.DATA_FLAG,
                HIS.DATA_SOURCE,
                HIS.DATA_VERSION,
                HIS.DATA_REJ_DESC,
                HIS.DATA_DEL_DESC,
                HIS.DATA_CRT_USER,
                HIS.DATA_CRT_DATE,
                HIS.DATA_CRT_TIME,
                HIS.DATA_CHG_USER,
                HIS.DATA_CHG_DATE,
                HIS.DATA_CHG_TIME,
                HIS.DATA_APV_USER,
                HIS.DATA_APV_DATE,
                HIS.DATA_APV_TIME,
                HIS.RSV1,
                HIS.RSV2,
                HIS.RSV3,
                HIS.RSV4,
                HIS.RSV5,
                HIS.IS_RPT
           FROM (SELECT DATA_ID,
                        CASE
                          WHEN SUBSTR(IS_RPT, 0, 1) = '1' THEN
                           B_INF_REC_TYPE
                          ELSE
                           NULL
                        END B_INF_REC_TYPE,
                        CASE
                          WHEN SUBSTR(IS_RPT, 0, 1) = '1' THEN
                           B_ENT_NAME
                          ELSE
                           NULL
                        END B_ENT_NAME,
                        CASE
                          WHEN SUBSTR(IS_RPT, 0, 1) = '1' THEN
                           B_ENT_CERT_TYPE
                          ELSE
                           NULL
                        END B_ENT_CERT_TYPE,
                        CASE
                          WHEN SUBSTR(IS_RPT, 0, 1) = '1' THEN
                           B_ENT_CERT_NUM
                          ELSE
                           NULL
                        END B_ENT_CERT_NUM,
                        CASE
                          WHEN SUBSTR(IS_RPT, 0, 1) = '1' THEN
                           B_RPT_DATE
                          ELSE
                           NULL
                        END B_RPT_DATE,
                        CASE
                          WHEN SUBSTR(IS_RPT, 0, 1) = '1' THEN
                           B_SHEET_YEAR
                          ELSE
                           NULL
                        END B_SHEET_YEAR,
                        CASE
                          WHEN SUBSTR(IS_RPT, 0, 1) = '1' THEN
                           B_SHEET_TYPE
                          ELSE
                           NULL
                        END B_SHEET_TYPE,
                        CASE
                          WHEN SUBSTR(IS_RPT, 0, 1) = '1' THEN
                           B_SHEET_TYPE_DIVIDE
                          ELSE
                           NULL
                        END B_SHEET_TYPE_DIVIDE,
                        CASE
                          WHEN SUBSTR(IS_RPT, 0, 1) = '1' THEN
                           B_AUDIT_FIRM_NAME
                          ELSE
                           NULL
                        END B_AUDIT_FIRM_NAME,
                        CASE
                          WHEN SUBSTR(IS_RPT, 0, 1) = '1' THEN
                           B_AUDITOR_NAME
                          ELSE
                           NULL
                        END B_AUDITOR_NAME,
                        CASE
                          WHEN SUBSTR(IS_RPT, 0, 1) = '1' THEN
                           B_AUDIT_TIME
                          ELSE
                           NULL
                        END B_AUDIT_TIME,
                        CASE
                          WHEN SUBSTR(IS_RPT, 0, 1) = '1' THEN
                           B_CIMOC
                          ELSE
                           NULL
                        END B_CIMOC,
                        CASE
                          WHEN SUBSTR(IS_RPT, 0, 1) = '1' THEN
                           B_RPT_DATE_CODE
                          ELSE
                           NULL
                        END B_RPT_DATE_CODE,
                        CASE
                          WHEN SUBSTR(IS_RPT, 2, 1) = '1' THEN
                           C_CASH_REC_SALES_GOODS_REN_SER
                          ELSE
                           NULL
                        END C_CASH_REC_SALES_GOODS_REN_SER,
                        CASE
                          WHEN SUBSTR(IS_RPT, 2, 1) = '1' THEN
                           C_TAX_REFUNDS
                          ELSE
                           NULL
                        END C_TAX_REFUNDS,
                        CASE
                          WHEN SUBSTR(IS_RPT, 2, 1) = '1' THEN
                           C_OTHER_CASH_REC_REL_OPERA_ACT
                          ELSE
                           NULL
                        END C_OTHER_CASH_REC_REL_OPERA_ACT,
                        CASE
                          WHEN SUBSTR(IS_RPT, 2, 1) = '1' THEN
                           C_TOTAL_CASH_INFLOWS_OPERA_ACT
                          ELSE
                           NULL
                        END C_TOTAL_CASH_INFLOWS_OPERA_ACT,
                        CASE
                          WHEN SUBSTR(IS_RPT, 2, 1) = '1' THEN
                           C_CASH_PAID_GOODS_SERVICES
                          ELSE
                           NULL
                        END C_CASH_PAID_GOODS_SERVICES,
                        CASE
                          WHEN SUBSTR(IS_RPT, 2, 1) = '1' THEN
                           C_CASH_PAID_BEHALF_EMPLOYEES
                          ELSE
                           NULL
                        END C_CASH_PAID_BEHALF_EMPLOYEES,
                        CASE
                          WHEN SUBSTR(IS_RPT, 2, 1) = '1' THEN
                           C_TOTAL_CASH_OUTFLOWS_OPERA_AC
                          ELSE
                           NULL
                        END C_TOTAL_CASH_OUTFLOWS_OPERA_AC,
                        CASE
                          WHEN SUBSTR(IS_RPT, 2, 1) = '1' THEN
                           C_NET_CASH_FLOWS_OPERAT_ACT
                          ELSE
                           NULL
                        END C_NET_CASH_FLOWS_OPERAT_ACT,
                        CASE
                          WHEN SUBSTR(IS_RPT, 2, 1) = '1' THEN
                           C_CASH_REC_RETURN_INVESTMENT
                          ELSE
                           NULL
                        END C_CASH_REC_RETURN_INVESTMENT,
                        CASE
                          WHEN SUBSTR(IS_RPT, 2, 1) = '1' THEN
                           C_CASH_RECEIVED_ONVESTMENTS
                          ELSE
                           NULL
                        END C_CASH_RECEIVED_ONVESTMENTS,
                        CASE
                          WHEN SUBSTR(IS_RPT, 2, 1) = '1' THEN
                           C_NET_CASH_REC_D_F_A_I_A_O_LT
                          ELSE
                           NULL
                        END C_NET_CASH_REC_D_F_A_I_A_O_LT,
                        CASE
                          WHEN SUBSTR(IS_RPT, 2, 1) = '1' THEN
                           C_CASH_RECEIVED_REL_OTHER_ACT
                          ELSE
                           NULL
                        END C_CASH_RECEIVED_REL_OTHER_ACT,
                        CASE
                          WHEN SUBSTR(IS_RPT, 2, 1) = '1' THEN
                           C_TOTAL_CASH_INF_INVESTING_ACT
                          ELSE
                           NULL
                        END C_TOTAL_CASH_INF_INVESTING_ACT,
                        CASE
                          WHEN SUBSTR(IS_RPT, 2, 1) = '1' THEN
                           C_CASH_P_A_F_ASS_I_ASS_OLT_ASS
                          ELSE
                           NULL
                        END C_CASH_P_A_F_ASS_I_ASS_OLT_ASS,
                        CASE
                          WHEN SUBSTR(IS_RPT, 2, 1) = '1' THEN
                           C_CASH_PAYMENTS_INVESTMENTS
                          ELSE
                           NULL
                        END C_CASH_PAYMENTS_INVESTMENTS,
                        CASE
                          WHEN SUBSTR(IS_RPT, 2, 1) = '1' THEN
                           C_CASH_PAYMENTS_RELATED_O_ACT
                          ELSE
                           NULL
                        END C_CASH_PAYMENTS_RELATED_O_ACT,
                        CASE
                          WHEN SUBSTR(IS_RPT, 2, 1) = '1' THEN
                           C_TOTAL_CASH_OUTFLOWS_INV_ACT
                          ELSE
                           NULL
                        END C_TOTAL_CASH_OUTFLOWS_INV_ACT,
                        CASE
                          WHEN SUBSTR(IS_RPT, 2, 1) = '1' THEN
                           C_NET_CASH_FLOWS_INVESTING_ACT
                          ELSE
                           NULL
                        END C_NET_CASH_FLOWS_INVESTING_ACT,
                        CASE
                          WHEN SUBSTR(IS_RPT, 2, 1) = '1' THEN
                           C_CASH_RECEIVED_FROM_INVESTORS
                          ELSE
                           NULL
                        END C_CASH_RECEIVED_FROM_INVESTORS,
                        CASE
                          WHEN SUBSTR(IS_RPT, 2, 1) = '1' THEN
                           C_CASH_FROM_BORROWINGS
                          ELSE
                           NULL
                        END C_CASH_FROM_BORROWINGS,
                        CASE
                          WHEN SUBSTR(IS_RPT, 2, 1) = '1' THEN
                           C_OTHER_CASH_REC_REL_FIN_ACT
                          ELSE
                           NULL
                        END C_OTHER_CASH_REC_REL_FIN_ACT,
                        CASE
                          WHEN SUBSTR(IS_RPT, 2, 1) = '1' THEN
                           C_TOTAL_CASH_INF_FINANCING_ACT
                          ELSE
                           NULL
                        END C_TOTAL_CASH_INF_FINANCING_ACT,
                        CASE
                          WHEN SUBSTR(IS_RPT, 2, 1) = '1' THEN
                           C_CASH_REPAYMENTS_FOR_DEBTS
                          ELSE
                           NULL
                        END C_CASH_REPAYMENTS_FOR_DEBTS,
                        CASE
                          WHEN SUBSTR(IS_RPT, 2, 1) = '1' THEN
                           C_CASH_PAYMENTS_D_D_PRO_I_EXP
                          ELSE
                           NULL
                        END C_CASH_PAYMENTS_D_D_PRO_I_EXP,
                        CASE
                          WHEN SUBSTR(IS_RPT, 2, 1) = '1' THEN
                           C_CASH_PAYMENTS_REL_O_FIN_AC
                          ELSE
                           NULL
                        END C_CASH_PAYMENTS_REL_O_FIN_AC,
                        CASE
                          WHEN SUBSTR(IS_RPT, 2, 1) = '1' THEN
                           C_TOTAL_CASH_OUTFLOWS_FIN_AC
                          ELSE
                           NULL
                        END C_TOTAL_CASH_OUTFLOWS_FIN_AC,
                        CASE
                          WHEN SUBSTR(IS_RPT, 2, 1) = '1' THEN
                           C_NET_CASH_FLOWS_FINANCING_AC
                          ELSE
                           NULL
                        END C_NET_CASH_FLOWS_FINANCING_AC,
                        CASE
                          WHEN SUBSTR(IS_RPT, 2, 1) = '1' THEN
                           C_EFFECT_EX_RATE_CHANGES_CASH
                          ELSE
                           NULL
                        END C_EFFECT_EX_RATE_CHANGES_CASH,
                        CASE
                          WHEN SUBSTR(IS_RPT, 2, 1) = '1' THEN
                           C_NET_INC_CASH_CASH_EQUIVALENT
                          ELSE
                           NULL
                        END C_NET_INC_CASH_CASH_EQUIVALENT,
                        CASE
                          WHEN SUBSTR(IS_RPT, 2, 1) = '1' THEN
                           C_NET_PROFIT
                          ELSE
                           NULL
                        END C_NET_PROFIT,
                        CASE
                          WHEN SUBSTR(IS_RPT, 2, 1) = '1' THEN
                           C_PROVISION_FOR_ASSETS
                          ELSE
                           NULL
                        END C_PROVISION_FOR_ASSETS,
                        CASE
                          WHEN SUBSTR(IS_RPT, 2, 1) = '1' THEN
                           C_DEPRECIATION_FIXED_ASSETS
                          ELSE
                           NULL
                        END C_DEPRECIATION_FIXED_ASSETS,
                        CASE
                          WHEN SUBSTR(IS_RPT, 2, 1) = '1' THEN
                           C_AMORTISATION_INTANGIBLE_ASS
                          ELSE
                           NULL
                        END C_AMORTISATION_INTANGIBLE_ASS,
                        CASE
                          WHEN SUBSTR(IS_RPT, 2, 1) = '1' THEN
                           C_LONG_TERM_DEFERRED_EXP_AMOR
                          ELSE
                           NULL
                        END C_LONG_TERM_DEFERRED_EXP_AMOR,
                        CASE
                          WHEN SUBSTR(IS_RPT, 2, 1) = '1' THEN
                           C_DECREASE_DEFFERED_EXPENSES
                          ELSE
                           NULL
                        END C_DECREASE_DEFFERED_EXPENSES,
                        CASE
                          WHEN SUBSTR(IS_RPT, 2, 1) = '1' THEN
                           C_ADDITION_ACCUED_EXPENSE
                          ELSE
                           NULL
                        END C_ADDITION_ACCUED_EXPENSE,
                        CASE
                          WHEN SUBSTR(IS_RPT, 2, 1) = '1' THEN
                           C_LOSSES_D_F_ASS_I_ASS_OLT_ASS
                          ELSE
                           NULL
                        END C_LOSSES_D_F_ASS_I_ASS_OLT_ASS,
                        CASE
                          WHEN SUBSTR(IS_RPT, 2, 1) = '1' THEN
                           C_LOSSES_SCRAPPING_FIXED_ASS
                          ELSE
                           NULL
                        END C_LOSSES_SCRAPPING_FIXED_ASS,
                        CASE
                          WHEN SUBSTR(IS_RPT, 2, 1) = '1' THEN
                           C_FINANCE_EXPENSE
                          ELSE
                           NULL
                        END C_FINANCE_EXPENSE,
                        CASE
                          WHEN SUBSTR(IS_RPT, 2, 1) = '1' THEN
                           C_LOSSES_ARSING_INVESTMENT
                          ELSE
                           NULL
                        END C_LOSSES_ARSING_INVESTMENT,
                        CASE
                          WHEN SUBSTR(IS_RPT, 2, 1) = '1' THEN
                           C_DEFERRED_TAX_CREDIT
                          ELSE
                           NULL
                        END C_DEFERRED_TAX_CREDIT,
                        CASE
                          WHEN SUBSTR(IS_RPT, 2, 1) = '1' THEN
                           C_DECREASE_IN_INVENTORIES
                          ELSE
                           NULL
                        END C_DECREASE_IN_INVENTORIES,
                        CASE
                          WHEN SUBSTR(IS_RPT, 2, 1) = '1' THEN
                           C_DECREASE_OPERATING_RECEIVABL
                          ELSE
                           NULL
                        END C_DECREASE_OPERATING_RECEIVABL,
                        CASE
                          WHEN SUBSTR(IS_RPT, 2, 1) = '1' THEN
                           C_INCREASE_OPERATING_RECEIVABL
                          ELSE
                           NULL
                        END C_INCREASE_OPERATING_RECEIVABL,
                        CASE
                          WHEN SUBSTR(IS_RPT, 2, 1) = '1' THEN
                           C_OTHERS
                          ELSE
                           NULL
                        END C_OTHERS,
                        CASE
                          WHEN SUBSTR(IS_RPT, 2, 1) = '1' THEN
                           C_NET_CASH_FLOWS_OPERA_ACT_MI
                          ELSE
                           NULL
                        END C_NET_CASH_FLOWS_OPERA_ACT_MI,
                        CASE
                          WHEN SUBSTR(IS_RPT, 2, 1) = '1' THEN
                           C_DEBTS_TRANSFER_TO_CAPITAL
                          ELSE
                           NULL
                        END C_DEBTS_TRANSFER_TO_CAPITAL,
                        CASE
                          WHEN SUBSTR(IS_RPT, 2, 1) = '1' THEN
                           C_ONE_YEAR_DUE_CONVERTIBLE_BON
                          ELSE
                           NULL
                        END C_ONE_YEAR_DUE_CONVERTIBLE_BON,
                        CASE
                          WHEN SUBSTR(IS_RPT, 2, 1) = '1' THEN
                           C_FINANCING_RENT_THE_FIXED_ASS
                          ELSE
                           NULL
                        END C_FINANCING_RENT_THE_FIXED_ASS,
                        CASE
                          WHEN SUBSTR(IS_RPT, 2, 1) = '1' THEN
                           C_NON_CASH_OTHERS
                          ELSE
                           NULL
                        END C_NON_CASH_OTHERS,
                        CASE
                          WHEN SUBSTR(IS_RPT, 2, 1) = '1' THEN
                           C_CASH_AT_THE_END_OF_PERIOD
                          ELSE
                           NULL
                        END C_CASH_AT_THE_END_OF_PERIOD,
                        CASE
                          WHEN SUBSTR(IS_RPT, 2, 1) = '1' THEN
                           C_CASH_AT_THE_BEGINNING_PERIOD
                          ELSE
                           NULL
                        END C_CASH_AT_THE_BEGINNING_PERIOD,
                        CASE
                          WHEN SUBSTR(IS_RPT, 2, 1) = '1' THEN
                           C_CASH_EQUIVALENTS_END_PERIOD
                          ELSE
                           NULL
                        END C_CASH_EQUIVALENTS_END_PERIOD,
                        CASE
                          WHEN SUBSTR(IS_RPT, 2, 1) = '1' THEN
                           C_CASH_RQUIVALENTS_BEGIN_PERIO
                          ELSE
                           NULL
                        END C_CASH_RQUIVALENTS_BEGIN_PERIO,
                        CASE
                          WHEN SUBSTR(IS_RPT, 2, 1) = '1' THEN
                           C_NET_INCREASE_CASH_CASH_EQU_M
                          ELSE
                           NULL
                        END C_NET_INCREASE_CASH_CASH_EQU_M,
                        CASE
                          WHEN SUBSTR(IS_RPT, 2, 1) = '1' THEN
                           C_ONE_YEAR_DUE_CONVERTIBLE_BO
                          ELSE
                           NULL
                        END C_ONE_YEAR_DUE_CONVERTIBLE_BO,
                        CASE
                          WHEN SUBSTR(IS_RPT, 2, 1) = '1' THEN
                           C_PAYMENTS_OF_ALL_TYPES_TAXES
                          ELSE
                           NULL
                        END C_PAYMENTS_OF_ALL_TYPES_TAXES,
                        CASE
                          WHEN SUBSTR(IS_RPT, 2, 1) = '1' THEN
                           C_OTHER_CASH_PAYMENTS_OPERA_AC
                          ELSE
                           NULL
                        END C_OTHER_CASH_PAYMENTS_OPERA_AC,
                        CASE
                          WHEN SUBSTR(IS_RPT, 3, 1) = '1' THEN
                           D_CASH_REC_SAL_GOO_REN_SERVICE
                          ELSE
                           NULL
                        END D_CASH_REC_SAL_GOO_REN_SERVICE,
                        CASE
                          WHEN SUBSTR(IS_RPT, 3, 1) = '1' THEN
                           D_TAX_REFUNDS
                          ELSE
                           NULL
                        END D_TAX_REFUNDS,
                        CASE
                          WHEN SUBSTR(IS_RPT, 3, 1) = '1' THEN
                           D_OTHER_CASH_REC_REL_OPERA_ACT
                          ELSE
                           NULL
                        END D_OTHER_CASH_REC_REL_OPERA_ACT,
                        CASE
                          WHEN SUBSTR(IS_RPT, 3, 1) = '1' THEN
                           D_TOTAL_CASH_INFLOWS_OPERAT_AC
                          ELSE
                           NULL
                        END D_TOTAL_CASH_INFLOWS_OPERAT_AC,
                        CASE
                          WHEN SUBSTR(IS_RPT, 3, 1) = '1' THEN
                           D_CASH_PAID_FOR_GOODS_SERVICES
                          ELSE
                           NULL
                        END D_CASH_PAID_FOR_GOODS_SERVICES,
                        CASE
                          WHEN SUBSTR(IS_RPT, 3, 1) = '1' THEN
                           D_CASH_PAID_BEHALF_OF_EMPLOYEE
                          ELSE
                           NULL
                        END D_CASH_PAID_BEHALF_OF_EMPLOYEE,
                        CASE
                          WHEN SUBSTR(IS_RPT, 3, 1) = '1' THEN
                           D_PAYMENTS_OF_ALL_TYPES_TAXES
                          ELSE
                           NULL
                        END D_PAYMENTS_OF_ALL_TYPES_TAXES,
                        CASE
                          WHEN SUBSTR(IS_RPT, 3, 1) = '1' THEN
                           D_OTHER_CASH_PAYMENTS_OPERA_AC
                          ELSE
                           NULL
                        END D_OTHER_CASH_PAYMENTS_OPERA_AC,
                        CASE
                          WHEN SUBSTR(IS_RPT, 3, 1) = '1' THEN
                           D_TOTAL_CASH_OUTFLOWS_OPERA_AC
                          ELSE
                           NULL
                        END D_TOTAL_CASH_OUTFLOWS_OPERA_AC,
                        CASE
                          WHEN SUBSTR(IS_RPT, 3, 1) = '1' THEN
                           D_NET_CASH_FLOWS_OPERATING_ACT
                          ELSE
                           NULL
                        END D_NET_CASH_FLOWS_OPERATING_ACT,
                        CASE
                          WHEN SUBSTR(IS_RPT, 3, 1) = '1' THEN
                           D_CASH_REC_RETURN_INVESTMENT
                          ELSE
                           NULL
                        END D_CASH_REC_RETURN_INVESTMENT,
                        CASE
                          WHEN SUBSTR(IS_RPT, 3, 1) = '1' THEN
                           D_CASH_REC_ONVESTMENTS
                          ELSE
                           NULL
                        END D_CASH_REC_ONVESTMENTS,
                        CASE
                          WHEN SUBSTR(IS_RPT, 3, 1) = '1' THEN
                           D_NET_CASH_R_DFASS_IASS_OLTASS
                          ELSE
                           NULL
                        END D_NET_CASH_R_DFASS_IASS_OLTASS,
                        CASE
                          WHEN SUBSTR(IS_RPT, 3, 1) = '1' THEN
                           D_NET_CASH_INF_DIS_SUB_O_B_ENT
                          ELSE
                           NULL
                        END D_NET_CASH_INF_DIS_SUB_O_B_ENT,
                        CASE
                          WHEN SUBSTR(IS_RPT, 3, 1) = '1' THEN
                           D_CASH_REC_REL_OTHER_INVEST_AC
                          ELSE
                           NULL
                        END D_CASH_REC_REL_OTHER_INVEST_AC,
                        CASE
                          WHEN SUBSTR(IS_RPT, 3, 1) = '1' THEN
                           D_TOTAL_CASH_INFLOWS_INVEST_AC
                          ELSE
                           NULL
                        END D_TOTAL_CASH_INFLOWS_INVEST_AC,
                        CASE
                          WHEN SUBSTR(IS_RPT, 3, 1) = '1' THEN
                           D_CASH_PAID_ACQ_FASS_IASS_ASS
                          ELSE
                           NULL
                        END D_CASH_PAID_ACQ_FASS_IASS_ASS,
                        CASE
                          WHEN SUBSTR(IS_RPT, 3, 1) = '1' THEN
                           D_CASH_PAYMENTS_INVESTMENTS
                          ELSE
                           NULL
                        END D_CASH_PAYMENTS_INVESTMENTS,
                        CASE
                          WHEN SUBSTR(IS_RPT, 3, 1) = '1' THEN
                           D_NET_CASH_OUTF_PRO_SUB_OBUNIT
                          ELSE
                           NULL
                        END D_NET_CASH_OUTF_PRO_SUB_OBUNIT,
                        CASE
                          WHEN SUBSTR(IS_RPT, 3, 1) = '1' THEN
                           D_CASH_PAYMENTS_REL_O_I_ACT
                          ELSE
                           NULL
                        END D_CASH_PAYMENTS_REL_O_I_ACT,
                        CASE
                          WHEN SUBSTR(IS_RPT, 3, 1) = '1' THEN
                           D_SUB_TOTAL_CASH_OUTFLOWS
                          ELSE
                           NULL
                        END D_SUB_TOTAL_CASH_OUTFLOWS,
                        CASE
                          WHEN SUBSTR(IS_RPT, 3, 1) = '1' THEN
                           D_NET_CASH_FLOWS_INVEST_ACT
                          ELSE
                           NULL
                        END D_NET_CASH_FLOWS_INVEST_ACT,
                        CASE
                          WHEN SUBSTR(IS_RPT, 3, 1) = '1' THEN
                           D_CASH_RECEIVED_INVESTORS
                          ELSE
                           NULL
                        END D_CASH_RECEIVED_INVESTORS,
                        CASE
                          WHEN SUBSTR(IS_RPT, 3, 1) = '1' THEN
                           D_CASH_FROM_BORROWINGS
                          ELSE
                           NULL
                        END D_CASH_FROM_BORROWINGS,
                        CASE
                          WHEN SUBSTR(IS_RPT, 3, 1) = '1' THEN
                           D_OTHER_CASH_REC_REL_FINA_ACT
                          ELSE
                           NULL
                        END D_OTHER_CASH_REC_REL_FINA_ACT,
                        CASE
                          WHEN SUBSTR(IS_RPT, 3, 1) = '1' THEN
                           D_TOTAL_CASH_INFLOWS_FINA_ACT
                          ELSE
                           NULL
                        END D_TOTAL_CASH_INFLOWS_FINA_ACT,
                        CASE
                          WHEN SUBSTR(IS_RPT, 3, 1) = '1' THEN
                           D_CASH_REPAYMENTS_FOR_DEBTS
                          ELSE
                           NULL
                        END D_CASH_REPAYMENTS_FOR_DEBTS,
                        CASE
                          WHEN SUBSTR(IS_RPT, 3, 1) = '1' THEN
                           D_CASH_PAYMENTS_D_DI_P_INT_EXP
                          ELSE
                           NULL
                        END D_CASH_PAYMENTS_D_DI_P_INT_EXP,
                        CASE
                          WHEN SUBSTR(IS_RPT, 3, 1) = '1' THEN
                           D_CASH_PAYMENTS_REL_O_F_ACT
                          ELSE
                           NULL
                        END D_CASH_PAYMENTS_REL_O_F_ACT,
                        CASE
                          WHEN SUBSTR(IS_RPT, 3, 1) = '1' THEN
                           D_TOTAL_CASH_OUTFLOWS_FINA_ACT
                          ELSE
                           NULL
                        END D_TOTAL_CASH_OUTFLOWS_FINA_ACT,
                        CASE
                          WHEN SUBSTR(IS_RPT, 3, 1) = '1' THEN
                           D_NET_CASH_FLOWS_FINANCING_ACT
                          ELSE
                           NULL
                        END D_NET_CASH_FLOWS_FINANCING_ACT,
                        CASE
                          WHEN SUBSTR(IS_RPT, 3, 1) = '1' THEN
                           D_EFFECT_EXC_RATE_CHANGES_CASH
                          ELSE
                           NULL
                        END D_EFFECT_EXC_RATE_CHANGES_CASH,
                        CASE
                          WHEN SUBSTR(IS_RPT, 3, 1) = '1' THEN
                           D_NET_INC_CASH_CASH_EQUIVALENT
                          ELSE
                           NULL
                        END D_NET_INC_CASH_CASH_EQUIVALENT,
                        CASE
                          WHEN SUBSTR(IS_RPT, 3, 1) = '1' THEN
                           D_INITIAL_CASH_CASH_EQU_BALANC
                          ELSE
                           NULL
                        END D_INITIAL_CASH_CASH_EQU_BALANC,
                        CASE
                          WHEN SUBSTR(IS_RPT, 3, 1) = '1' THEN
                           D_THE_FINAL_CASH_EQU_BALANCE
                          ELSE
                           NULL
                        END D_THE_FINAL_CASH_EQU_BALANCE,
                        CASE
                          WHEN SUBSTR(IS_RPT, 3, 1) = '1' THEN
                           D_NET_PROFIT
                          ELSE
                           NULL
                        END D_NET_PROFIT,
                        CASE
                          WHEN SUBSTR(IS_RPT, 3, 1) = '1' THEN
                           D_PROVISION_ASSET_IMPAIRMENT
                          ELSE
                           NULL
                        END D_PROVISION_ASSET_IMPAIRMENT,
                        CASE
                          WHEN SUBSTR(IS_RPT, 3, 1) = '1' THEN
                           D_DEPRECIATION_FIXED_ASSETS
                          ELSE
                           NULL
                        END D_DEPRECIATION_FIXED_ASSETS,
                        CASE
                          WHEN SUBSTR(IS_RPT, 3, 1) = '1' THEN
                           D_AMORTISATION_INTANGIBLE_ASS
                          ELSE
                           NULL
                        END D_AMORTISATION_INTANGIBLE_ASS,
                        CASE
                          WHEN SUBSTR(IS_RPT, 3, 1) = '1' THEN
                           D_AMORTISATION_LT_DEFFERED_EXP
                          ELSE
                           NULL
                        END D_AMORTISATION_LT_DEFFERED_EXP,
                        CASE
                          WHEN SUBSTR(IS_RPT, 3, 1) = '1' THEN
                           D_DECREASE_DEFFERED_EXPENSES
                          ELSE
                           NULL
                        END D_DECREASE_DEFFERED_EXPENSES,
                        CASE
                          WHEN SUBSTR(IS_RPT, 3, 1) = '1' THEN
                           D_ADDITION_OF_ACCUED_EXPENSE
                          ELSE
                           NULL
                        END D_ADDITION_OF_ACCUED_EXPENSE,
                        CASE
                          WHEN SUBSTR(IS_RPT, 3, 1) = '1' THEN
                           D_LOSSES_DISP_FASS_IASS_OLTASS
                          ELSE
                           NULL
                        END D_LOSSES_DISP_FASS_IASS_OLTASS,
                        CASE
                          WHEN SUBSTR(IS_RPT, 3, 1) = '1' THEN
                           D_LOSSES_SCRAPPING_FIXED_ASS
                          ELSE
                           NULL
                        END D_LOSSES_SCRAPPING_FIXED_ASS,
                        CASE
                          WHEN SUBSTR(IS_RPT, 3, 1) = '1' THEN
                           D_PROFIT_LOSS_CHANGES_FAIR_VAL
                          ELSE
                           NULL
                        END D_PROFIT_LOSS_CHANGES_FAIR_VAL,
                        CASE
                          WHEN SUBSTR(IS_RPT, 3, 1) = '1' THEN
                           D_FINANCE_EXPENSE
                          ELSE
                           NULL
                        END D_FINANCE_EXPENSE,
                        CASE
                          WHEN SUBSTR(IS_RPT, 3, 1) = '1' THEN
                           D_LOSSES_ARSING_INVESTMENT
                          ELSE
                           NULL
                        END D_LOSSES_ARSING_INVESTMENT,
                        CASE
                          WHEN SUBSTR(IS_RPT, 3, 1) = '1' THEN
                           D_DEFERRED_INCOME_TAX_ASSETS
                          ELSE
                           NULL
                        END D_DEFERRED_INCOME_TAX_ASSETS,
                        CASE
                          WHEN SUBSTR(IS_RPT, 3, 1) = '1' THEN
                           D_DEFERRED_INCOME_TAX_LIABILIT
                          ELSE
                           NULL
                        END D_DEFERRED_INCOME_TAX_LIABILIT,
                        CASE
                          WHEN SUBSTR(IS_RPT, 3, 1) = '1' THEN
                           D_DECREASE_IN_INVENTORIES
                          ELSE
                           NULL
                        END D_DECREASE_IN_INVENTORIES,
                        CASE
                          WHEN SUBSTR(IS_RPT, 3, 1) = '1' THEN
                           D_DECREASE_OPERATING_RECEIVABL
                          ELSE
                           NULL
                        END D_DECREASE_OPERATING_RECEIVABL,
                        CASE
                          WHEN SUBSTR(IS_RPT, 3, 1) = '1' THEN
                           D_INCREASE_OPERATING_RECEIVABL
                          ELSE
                           NULL
                        END D_INCREASE_OPERATING_RECEIVABL,
                        CASE
                          WHEN SUBSTR(IS_RPT, 3, 1) = '1' THEN
                           D_OTHERS
                          ELSE
                           NULL
                        END D_OTHERS,
                        CASE
                          WHEN SUBSTR(IS_RPT, 3, 1) = '1' THEN
                           D_NET_CASH_FLOWS_OPERAT_ACT_MI
                          ELSE
                           NULL
                        END D_NET_CASH_FLOWS_OPERAT_ACT_MI,
                        CASE
                          WHEN SUBSTR(IS_RPT, 3, 1) = '1' THEN
                           D_DEBTS_TRANSFER_TO_CAPITAL
                          ELSE
                           NULL
                        END D_DEBTS_TRANSFER_TO_CAPITAL,
                        CASE
                          WHEN SUBSTR(IS_RPT, 3, 1) = '1' THEN
                           D_ONE_YEAR_DUE_CONVER_BONDS
                          ELSE
                           NULL
                        END D_ONE_YEAR_DUE_CONVER_BONDS,
                        CASE
                          WHEN SUBSTR(IS_RPT, 3, 1) = '1' THEN
                           D_FINANCING_RENT_FIXED_ASSET
                          ELSE
                           NULL
                        END D_FINANCING_RENT_FIXED_ASSET,
                        CASE
                          WHEN SUBSTR(IS_RPT, 3, 1) = '1' THEN
                           D_NON_CASH_OTHERS
                          ELSE
                           NULL
                        END D_NON_CASH_OTHERS,
                        CASE
                          WHEN SUBSTR(IS_RPT, 3, 1) = '1' THEN
                           D_CASH_AT_THE_END_OF_PERIOD
                          ELSE
                           NULL
                        END D_CASH_AT_THE_END_OF_PERIOD,
                        CASE
                          WHEN SUBSTR(IS_RPT, 3, 1) = '1' THEN
                           D_CASH_AT_THE_BEGINNING_PERIOD
                          ELSE
                           NULL
                        END D_CASH_AT_THE_BEGINNING_PERIOD,
                        CASE
                          WHEN SUBSTR(IS_RPT, 3, 1) = '1' THEN
                           D_CASH_EQUIVALENTS_AT_THE_PERI
                          ELSE
                           NULL
                        END D_CASH_EQUIVALENTS_AT_THE_PERI,
                        CASE
                          WHEN SUBSTR(IS_RPT, 3, 1) = '1' THEN
                           D_CASH_RQUIVALENTS_BEGIN_PERIO
                          ELSE
                           NULL
                        END D_CASH_RQUIVALENTS_BEGIN_PERIO,
                        CASE
                          WHEN SUBSTR(IS_RPT, 3, 1) = '1' THEN
                           D_NET_INCREASE_CASH_EQUIVAL_MI
                          ELSE
                           NULL
                        END D_NET_INCREASE_CASH_EQUIVAL_MI,
                        CASE
                          WHEN SUBSTR(IS_RPT, 4, 1) = '1' THEN
                           E_DATA_DESC
                          ELSE
                           NULL
                        END E_DATA_DESC
                   FROM MBT_630_HIS
                  WHERE DATA_STATUS = '23'
                    AND HIS_DATE = V_NOW_DATE
                    AND B_RPT_DATE_CODE != '99') TMP
           LEFT JOIN MBT_630_HIS HIS
             ON TMP.DATA_ID = HIS.DATA_ID) SOURCE
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
       TARGET.C_PAYMENTS_OF_ALL_TYPES_TAXES,
       TARGET.C_OTHER_CASH_PAYMENTS_OPERA_AC,
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
       TARGET.IS_RPT£¨ TARGET.ODS_DATA_ID,
       TARGET.RPT_DATE,
       TARGET.RPT_TIME,
        TARGET.ROW_NUM)
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
       SOURCE.C_PAYMENTS_OF_ALL_TYPES_TAXES,
       SOURCE.C_OTHER_CASH_PAYMENTS_OPERA_AC,
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
       '24',
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
       SOURCE.DATA_ID,
       V_NOW_DATE,
       V_NOW_TIME,
        GET_ROW_NUM(SOURCE.ORG_ID, '630'));
  COMMIT;
  UPDATE MBT_630_HIS
     SET DATA_STATUS = '25'
   WHERE DATA_STATUS = '23'
     AND HIS_DATE = V_NOW_DATE;
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
prompt Creating procedure SYNC_HIS_TO_RPT_640
prompt ======================================
prompt
CREATE OR REPLACE PROCEDURE "SYNC_HIS_TO_RPT_640"(ERRCODE OUT VARCHAR,
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
    MBT_640_RPT
WHERE
    RPT_DATE=V_NOW_DATE and DATA_STATUS='24';
           DELETE FROM MBT_ROW_NUM WHERE TYPE='640';

COMMIT;
--1.≤Â»Î÷˜±Ì
MERGE
INTO
    MBT_640_RPT TARGET
USING
    (
        SELECT
            TMP.B_INF_REC_TYPE,
            TMP.B_ENT_NAME,
            TMP.B_ENT_CERT_TYPE,
            TMP.B_ENT_CERT_NUM,
            TMP.B_RPT_DATE,
            TMP.B_SHEET_YEAR,
            TMP.B_SHEET_TYPE,
            TMP.B_SHEET_TYPE_DIVIDE,
            TMP.B_AUDIT_FIRM_NAME,
            TMP.B_AUDITOR_NAME,
            TMP.B_AUDIT_TIME,
            TMP.B_CIMOC,
            TMP.B_RPT_DATE_CODE,
            TMP.C_CURRENCY_FUNDS,
            TMP.C_SHORT_TERM_INVESTMENTS,
            TMP.C_AMOUNT_OF_FINANCIAL_RETURN,
            TMP.C_NOTES_RECEIVABLE,
            TMP.C_ACCOUNTS_RECEIVABLE,
            TMP.C_PREPAYMENTS,
            TMP.C_OTHER_RECEIVABLES,
            TMP.C_INVENTORIES,
            TMP.C_OTHER_CURRENT_ASSETS,
            TMP.C_TOTAL_CURRENT_ASSETS,
            TMP.C_LONG_TERM_INVESTMENT,
            TMP.C_FIXED_ASSETS,
            TMP.C_ORIGINAL_COST_FIXED_ASSET,
            TMP.C_FIXED_ASSET_ACC_DEPRECIATION,
            TMP.C_CONSTRUCTION_IN_PROCESS,
            TMP.C_INTANGIBLE_ASSETS,
            TMP.C_ORIGINAL_PRICE_INTAN_ASSETS,
            TMP.C_ACCUMULATED_AMORTIZATION,
            TMP.C_ASSETS_PROCESSED_PENDING_PRO,
            TMP.C_TOTAL_NON_CURRENT_ASSETS,
            TMP.C_TOTAL_ASSETS,
            TMP.C_SHORT_TERM_BORROWINGS,
            TMP.C_TAX_PAYABLE,
            TMP.C_TREASURY_PAYABLE,
            TMP.C_PAYABLE_FINANCIAL_SPECIAL_AC,
            TMP.C_EMPLOYEE_BENEFITS_PAYABLE,
            TMP.C_NOTES_PAYABLE,
            TMP.C_ACCOUNTS_PAYABLE,
            TMP.C_RECEIPTS_INADVANCE,
            TMP.C_OTHER_PAYABLES,
            TMP.C_OTHER_CURRENT_LIABILITIES,
            TMP.C_TOTAL_CURRENT_LIABILITIES,
            TMP.C_LONG_TERM_BORROWINGS,
            TMP.C_LONG_TERM_PAYABLES,
            TMP.C_TOTAL_NON_CURRENT_LIABILITIE,
            TMP.C_TOTAL_LIABILITIES,
            TMP.C_ENTERPRISE_FUND,
            TMP.C_NON_CURRENT_ASSETS_FUND,
            TMP.C_SPECIAL_PURPOSE_FUNDS,
            TMP.C_FINANCIAL_AID_CARRIED_OVER,
            TMP.C_FINANCIAL_AID_BALANCE,
            TMP.C_NON_FINANCIAL_AID_CARR_OVER,
            TMP.C_NON_FINANCIAL_AID_BALANCE,
            TMP.C_UNDERTAKINGS_BALANCE,
            TMP.C_OPERATING_BALANCE,
            TMP.C_TOTAL_NET_ASSETS,
            TMP.C_TOTAL_LIABILITIES_NET_ASSETS,
            TMP.D_DATA_DESC,
            HIS.DATA_ID,
            HIS.DATA_DATE,
            HIS.CORP_ID,
            HIS.ORG_ID,
            HIS.GROUP_ID,
            HIS.INQ_ORG_ID,
            HIS.INQ_GROUP_ID,
            HIS.REMARKS,
            HIS.CHECK_FLAG,
            HIS.CHECK_DESC,
            HIS.CHECK_ERR_TYPE,
            HIS.NEXT_ACTION,
            HIS.DATA_STATUS,
            HIS.DATA_FLAG,
            HIS.DATA_SOURCE,
            HIS.DATA_VERSION,
            HIS.DATA_REJ_DESC,
            HIS.DATA_DEL_DESC,
            HIS.DATA_CRT_USER,
            HIS.DATA_CRT_DATE,
            HIS.DATA_CRT_TIME,
            HIS.DATA_CHG_USER,
            HIS.DATA_CHG_DATE,
            HIS.DATA_CHG_TIME,
            HIS.DATA_APV_USER,
            HIS.DATA_APV_DATE,
            HIS.DATA_APV_TIME,
            HIS.RSV1,
            HIS.RSV2,
            HIS.RSV3,
            HIS.RSV4,
            HIS.RSV5,
            HIS.IS_RPT
        FROM
            (

                        SELECT
                            DATA_ID,
                             B_INF_REC_TYPE,
                             CASE WHEN SUBSTR(IS_RPT,0,1) = '1' THEN B_ENT_NAME  ELSE NULL END B_ENT_NAME,
                             CASE WHEN SUBSTR(IS_RPT,0,1) = '1' THEN B_ENT_CERT_TYPE  ELSE NULL END B_ENT_CERT_TYPE,
                             CASE WHEN SUBSTR(IS_RPT,0,1) = '1' THEN B_ENT_CERT_NUM  ELSE NULL END B_ENT_CERT_NUM,
                             CASE WHEN SUBSTR(IS_RPT,0,1) = '1' THEN B_RPT_DATE  ELSE NULL END B_RPT_DATE,
                             CASE WHEN SUBSTR(IS_RPT,0,1) = '1' THEN B_SHEET_YEAR  ELSE NULL END B_SHEET_YEAR,
                             CASE WHEN SUBSTR(IS_RPT,0,1) = '1' THEN B_SHEET_TYPE  ELSE NULL END B_SHEET_TYPE,
                             CASE WHEN SUBSTR(IS_RPT,0,1) = '1' THEN B_SHEET_TYPE_DIVIDE  ELSE NULL END B_SHEET_TYPE_DIVIDE,
                             CASE WHEN SUBSTR(IS_RPT,0,1) = '1' THEN B_AUDIT_FIRM_NAME  ELSE NULL END B_AUDIT_FIRM_NAME,
                             CASE WHEN SUBSTR(IS_RPT,0,1) = '1' THEN B_AUDITOR_NAME  ELSE NULL END B_AUDITOR_NAME,
                             CASE WHEN SUBSTR(IS_RPT,0,1) = '1' THEN B_AUDIT_TIME  ELSE NULL END B_AUDIT_TIME,
                             CASE WHEN SUBSTR(IS_RPT,0,1) = '1' THEN B_CIMOC  ELSE NULL END B_CIMOC,
                             CASE WHEN SUBSTR(IS_RPT,0,1) = '1' THEN B_RPT_DATE_CODE  ELSE NULL END B_RPT_DATE_CODE,
                             CASE WHEN SUBSTR(IS_RPT,2,1) = '1' THEN C_CURRENCY_FUNDS  ELSE NULL END  C_CURRENCY_FUNDS,
                             CASE WHEN SUBSTR(IS_RPT,2,1) = '1' THEN C_SHORT_TERM_INVESTMENTS  ELSE NULL END  C_SHORT_TERM_INVESTMENTS,
                             CASE WHEN SUBSTR(IS_RPT,2,1) = '1' THEN C_AMOUNT_OF_FINANCIAL_RETURN  ELSE NULL END  C_AMOUNT_OF_FINANCIAL_RETURN,
                             CASE WHEN SUBSTR(IS_RPT,2,1) = '1' THEN C_NOTES_RECEIVABLE  ELSE NULL END  C_NOTES_RECEIVABLE,
                             CASE WHEN SUBSTR(IS_RPT,2,1) = '1' THEN C_ACCOUNTS_RECEIVABLE  ELSE NULL END  C_ACCOUNTS_RECEIVABLE,
                             CASE WHEN SUBSTR(IS_RPT,2,1) = '1' THEN C_PREPAYMENTS  ELSE NULL END  C_PREPAYMENTS,
                             CASE WHEN SUBSTR(IS_RPT,2,1) = '1' THEN C_OTHER_RECEIVABLES  ELSE NULL END  C_OTHER_RECEIVABLES,
                             CASE WHEN SUBSTR(IS_RPT,2,1) = '1' THEN C_INVENTORIES  ELSE NULL END  C_INVENTORIES,
                             CASE WHEN SUBSTR(IS_RPT,2,1) = '1' THEN C_OTHER_CURRENT_ASSETS  ELSE NULL END  C_OTHER_CURRENT_ASSETS,
                             CASE WHEN SUBSTR(IS_RPT,2,1) = '1' THEN C_TOTAL_CURRENT_ASSETS  ELSE NULL END  C_TOTAL_CURRENT_ASSETS,
                             CASE WHEN SUBSTR(IS_RPT,2,1) = '1' THEN C_LONG_TERM_INVESTMENT  ELSE NULL END  C_LONG_TERM_INVESTMENT,
                             CASE WHEN SUBSTR(IS_RPT,2,1) = '1' THEN C_FIXED_ASSETS  ELSE NULL END  C_FIXED_ASSETS,
                             CASE WHEN SUBSTR(IS_RPT,2,1) = '1' THEN C_ORIGINAL_COST_FIXED_ASSET  ELSE NULL END  C_ORIGINAL_COST_FIXED_ASSET,
                             CASE WHEN SUBSTR(IS_RPT,2,1) = '1' THEN C_FIXED_ASSET_ACC_DEPRECIATION  ELSE NULL END  C_FIXED_ASSET_ACC_DEPRECIATION,
                             CASE WHEN SUBSTR(IS_RPT,2,1) = '1' THEN C_CONSTRUCTION_IN_PROCESS  ELSE NULL END  C_CONSTRUCTION_IN_PROCESS,
                             CASE WHEN SUBSTR(IS_RPT,2,1) = '1' THEN C_INTANGIBLE_ASSETS  ELSE NULL END  C_INTANGIBLE_ASSETS,
                             CASE WHEN SUBSTR(IS_RPT,2,1) = '1' THEN C_ORIGINAL_PRICE_INTAN_ASSETS  ELSE NULL END  C_ORIGINAL_PRICE_INTAN_ASSETS,
                             CASE WHEN SUBSTR(IS_RPT,2,1) = '1' THEN C_ACCUMULATED_AMORTIZATION  ELSE NULL END  C_ACCUMULATED_AMORTIZATION,
                             CASE WHEN SUBSTR(IS_RPT,2,1) = '1' THEN C_ASSETS_PROCESSED_PENDING_PRO  ELSE NULL END  C_ASSETS_PROCESSED_PENDING_PRO,
                             CASE WHEN SUBSTR(IS_RPT,2,1) = '1' THEN C_TOTAL_NON_CURRENT_ASSETS  ELSE NULL END  C_TOTAL_NON_CURRENT_ASSETS,
                             CASE WHEN SUBSTR(IS_RPT,2,1) = '1' THEN C_TOTAL_ASSETS  ELSE NULL END  C_TOTAL_ASSETS,
                             CASE WHEN SUBSTR(IS_RPT,2,1) = '1' THEN C_SHORT_TERM_BORROWINGS  ELSE NULL END  C_SHORT_TERM_BORROWINGS,
                             CASE WHEN SUBSTR(IS_RPT,2,1) = '1' THEN C_TAX_PAYABLE  ELSE NULL END  C_TAX_PAYABLE,
                             CASE WHEN SUBSTR(IS_RPT,2,1) = '1' THEN C_TREASURY_PAYABLE  ELSE NULL END  C_TREASURY_PAYABLE,
                             CASE WHEN SUBSTR(IS_RPT,2,1) = '1' THEN C_PAYABLE_FINANCIAL_SPECIAL_AC  ELSE NULL END  C_PAYABLE_FINANCIAL_SPECIAL_AC,
                             CASE WHEN SUBSTR(IS_RPT,2,1) = '1' THEN C_EMPLOYEE_BENEFITS_PAYABLE  ELSE NULL END  C_EMPLOYEE_BENEFITS_PAYABLE,
                             CASE WHEN SUBSTR(IS_RPT,2,1) = '1' THEN C_NOTES_PAYABLE  ELSE NULL END  C_NOTES_PAYABLE,
                             CASE WHEN SUBSTR(IS_RPT,2,1) = '1' THEN C_ACCOUNTS_PAYABLE  ELSE NULL END  C_ACCOUNTS_PAYABLE,
                             CASE WHEN SUBSTR(IS_RPT,2,1) = '1' THEN C_RECEIPTS_INADVANCE  ELSE NULL END  C_RECEIPTS_INADVANCE,
                             CASE WHEN SUBSTR(IS_RPT,2,1) = '1' THEN C_OTHER_PAYABLES  ELSE NULL END  C_OTHER_PAYABLES,
                             CASE WHEN SUBSTR(IS_RPT,2,1) = '1' THEN C_OTHER_CURRENT_LIABILITIES  ELSE NULL END  C_OTHER_CURRENT_LIABILITIES,
                             CASE WHEN SUBSTR(IS_RPT,2,1) = '1' THEN C_TOTAL_CURRENT_LIABILITIES  ELSE NULL END  C_TOTAL_CURRENT_LIABILITIES,
                             CASE WHEN SUBSTR(IS_RPT,2,1) = '1' THEN C_LONG_TERM_BORROWINGS  ELSE NULL END  C_LONG_TERM_BORROWINGS,
                             CASE WHEN SUBSTR(IS_RPT,2,1) = '1' THEN C_LONG_TERM_PAYABLES  ELSE NULL END  C_LONG_TERM_PAYABLES,
                             CASE WHEN SUBSTR(IS_RPT,2,1) = '1' THEN C_TOTAL_NON_CURRENT_LIABILITIE  ELSE NULL END  C_TOTAL_NON_CURRENT_LIABILITIE,
                             CASE WHEN SUBSTR(IS_RPT,2,1) = '1' THEN C_TOTAL_LIABILITIES  ELSE NULL END  C_TOTAL_LIABILITIES,
                             CASE WHEN SUBSTR(IS_RPT,2,1) = '1' THEN C_ENTERPRISE_FUND  ELSE NULL END  C_ENTERPRISE_FUND,
                             CASE WHEN SUBSTR(IS_RPT,2,1) = '1' THEN C_NON_CURRENT_ASSETS_FUND  ELSE NULL END  C_NON_CURRENT_ASSETS_FUND,
                             CASE WHEN SUBSTR(IS_RPT,2,1) = '1' THEN C_SPECIAL_PURPOSE_FUNDS  ELSE NULL END  C_SPECIAL_PURPOSE_FUNDS,
                             CASE WHEN SUBSTR(IS_RPT,2,1) = '1' THEN C_FINANCIAL_AID_CARRIED_OVER  ELSE NULL END  C_FINANCIAL_AID_CARRIED_OVER,
                             CASE WHEN SUBSTR(IS_RPT,2,1) = '1' THEN C_FINANCIAL_AID_BALANCE  ELSE NULL END  C_FINANCIAL_AID_BALANCE,
                             CASE WHEN SUBSTR(IS_RPT,2,1) = '1' THEN C_NON_FINANCIAL_AID_CARR_OVER  ELSE NULL END  C_NON_FINANCIAL_AID_CARR_OVER,
                             CASE WHEN SUBSTR(IS_RPT,2,1) = '1' THEN C_NON_FINANCIAL_AID_BALANCE  ELSE NULL END  C_NON_FINANCIAL_AID_BALANCE,
                             CASE WHEN SUBSTR(IS_RPT,2,1) = '1' THEN C_UNDERTAKINGS_BALANCE  ELSE NULL END  C_UNDERTAKINGS_BALANCE,
                             CASE WHEN SUBSTR(IS_RPT,2,1) = '1' THEN C_OPERATING_BALANCE  ELSE NULL END  C_OPERATING_BALANCE,
                             CASE WHEN SUBSTR(IS_RPT,2,1) = '1' THEN C_TOTAL_NET_ASSETS  ELSE NULL END  C_TOTAL_NET_ASSETS,
                             CASE WHEN SUBSTR(IS_RPT,2,1) = '1' THEN C_TOTAL_LIABILITIES_NET_ASSETS  ELSE NULL END  C_TOTAL_LIABILITIES_NET_ASSETS,
                             D_DATA_DESC
                        FROM
                            MBT_640_HIS
                        WHERE
                            DATA_STATUS='23'
                        AND HIS_DATE=V_NOW_DATE
                        AND B_RPT_DATE_CODE !='99'
                       ) TMP
        LEFT JOIN
            MBT_640_HIS HIS
        ON
            TMP.DATA_ID=HIS.DATA_ID) SOURCE
ON
    (TARGET.DATA_ID = SOURCE.DATA_ID)
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
        TARGET.ODS_DATA_ID,
        TARGET.RPT_DATE,
        TARGET.RPT_TIME,
        TARGET.ROW_NUM
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
        '24',
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
        SOURCE.DATA_ID,
        V_NOW_DATE,
        V_NOW_TIME,
                GET_ROW_NUM(SOURCE.ORG_ID, '640')

    );
COMMIT;
UPDATE MBT_640_HIS SET DATA_STATUS='25' WHERE DATA_STATUS='23' AND HIS_DATE=V_NOW_DATE;
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
prompt Creating procedure SYNC_HIS_TO_RPT_650
prompt ======================================
prompt
CREATE OR REPLACE PROCEDURE "SYNC_HIS_TO_RPT_650"(ERRCODE OUT VARCHAR,
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
    MBT_650_RPT
WHERE
    RPT_DATE=V_NOW_DATE and DATA_STATUS='24';
           DELETE FROM MBT_ROW_NUM WHERE TYPE='650';

COMMIT;
--1.≤Â»Î÷˜±Ì
MERGE
INTO
    MBT_650_RPT TARGET
USING
    (
        SELECT
            TMP.B_INF_REC_TYPE,
            TMP.B_ENT_NAME,
            TMP.B_ENT_CERT_TYPE,
            TMP.B_ENT_CERT_NUM,
            TMP.B_RPT_DATE,
            TMP.B_SHEET_YEAR,
            TMP.B_SHEET_TYPE,
            TMP.B_SHEET_TYPE_DIVIDE,
            TMP.B_AUDIT_FIRM_NAME,
            TMP.B_AUDITOR_NAME,
            TMP.B_AUDIT_TIME,
            TMP.B_CIMOC,
            TMP.B_RPT_DATE_CODE,
            TMP.C_CURRENT_FINAN_SUB_CAR_OVER_B,
            TMP.C_FINANCIAL_SUBSIDY_REVENUE,
            TMP.C_UNDERTAKINGS_EXP_FIN_SUB_EXP,
            TMP.C_CURRENT_UNDERTAK_CAR_OVER_B,
            TMP.C_UNDERTAKINGS_CLASS_REVENUE,
            TMP.C_UNDERTAKINGS_REVENUE,
            TMP.C_SUPERIOR_SUBSIDY_REVENUE,
            TMP.C_REVENUE_TURNED_OVER_SUB_UNIT,
            TMP.C_OTHER_REVENUE,
            TMP.C_DONATION_INCOME,
            TMP.C_UNDERTAKINGS_CLASS_EXPENDIT,
            TMP.C_UNDERTAKINGS_NON_FIN_SUB_EXP,
            TMP.C_PAYMENT_THE_HIGHER_AUTHORITY,
            TMP.C_GRANT_AUXILIARY_ORGANIZATION,
            TMP.C_OTHER_EXPENDITURE,
            TMP.C_CURRENT_OPERATING_BALANCE,
            TMP.C_OPERATING_REVENUE,
            TMP.C_OPERATING_EXPENDITURE,
            TMP.C_OPERATING_BALANCE_P_YO_LOSS,
            TMP.C_NON_FINA_SUB_CAR_O_BAL_TYEAR,
            TMP.C_NON_FINANCIAL_AID_CARRIED_O,
            TMP.C_NON_FINANCIAL_AID_BAL_TYEAR,
            TMP.C_ENTERPRISE_INCOME_TAX_PAYABL,
            TMP.C_SPECIAL_FUNDS_TO_EXTRACT,
            TMP.C_PUBLIC_FUND_TURNED_INTO,
            TMP.D_DATA_DESC,
            HIS.DATA_ID,
            HIS.DATA_DATE,
            HIS.CORP_ID,
            HIS.ORG_ID,
            HIS.GROUP_ID,
            HIS.INQ_ORG_ID,
            HIS.INQ_GROUP_ID,
            HIS.REMARKS,
            HIS.CHECK_FLAG,
            HIS.CHECK_DESC,
            HIS.CHECK_ERR_TYPE,
            HIS.NEXT_ACTION,
            HIS.DATA_STATUS,
            HIS.DATA_FLAG,
            HIS.DATA_SOURCE,
            HIS.DATA_VERSION,
            HIS.DATA_REJ_DESC,
            HIS.DATA_DEL_DESC,
            HIS.DATA_CRT_USER,
            HIS.DATA_CRT_DATE,
            HIS.DATA_CRT_TIME,
            HIS.DATA_CHG_USER,
            HIS.DATA_CHG_DATE,
            HIS.DATA_CHG_TIME,
            HIS.DATA_APV_USER,
            HIS.DATA_APV_DATE,
            HIS.DATA_APV_TIME,
            HIS.RSV1,
            HIS.RSV2,
            HIS.RSV3,
            HIS.RSV4,
            HIS.RSV5,
            HIS.IS_RPT
        FROM
            (

                        SELECT
                            DATA_ID,
                             B_INF_REC_TYPE,
                             CASE WHEN SUBSTR(IS_RPT,0,1) = '1' THEN B_ENT_NAME ELSE NULL END B_ENT_NAME,
                             CASE WHEN SUBSTR(IS_RPT,0,1) = '1' THEN B_ENT_CERT_TYPE ELSE NULL END B_ENT_CERT_TYPE,
                             CASE WHEN SUBSTR(IS_RPT,0,1) = '1' THEN B_ENT_CERT_NUM ELSE NULL END B_ENT_CERT_NUM,
                             CASE WHEN SUBSTR(IS_RPT,0,1) = '1' THEN B_RPT_DATE ELSE NULL END B_RPT_DATE,
                             CASE WHEN SUBSTR(IS_RPT,0,1) = '1' THEN B_SHEET_YEAR ELSE NULL END B_SHEET_YEAR,
                             CASE WHEN SUBSTR(IS_RPT,0,1) = '1' THEN B_SHEET_TYPE ELSE NULL END B_SHEET_TYPE,
                             CASE WHEN SUBSTR(IS_RPT,0,1) = '1' THEN B_SHEET_TYPE_DIVIDE ELSE NULL END B_SHEET_TYPE_DIVIDE,
                             CASE WHEN SUBSTR(IS_RPT,0,1) = '1' THEN B_AUDIT_FIRM_NAME ELSE NULL END B_AUDIT_FIRM_NAME,
                             CASE WHEN SUBSTR(IS_RPT,0,1) = '1' THEN B_AUDITOR_NAME ELSE NULL END B_AUDITOR_NAME,
                             CASE WHEN SUBSTR(IS_RPT,0,1) = '1' THEN B_AUDIT_TIME ELSE NULL END B_AUDIT_TIME,
                             CASE WHEN SUBSTR(IS_RPT,0,1) = '1' THEN B_CIMOC ELSE NULL END B_CIMOC,
                             CASE WHEN SUBSTR(IS_RPT,0,1) = '1' THEN B_RPT_DATE_CODE ELSE NULL END B_RPT_DATE_CODE,
                            CASE WHEN SUBSTR(IS_RPT,2,1) = '1' THEN C_CURRENT_FINAN_SUB_CAR_OVER_B  ELSE NULL END  C_CURRENT_FINAN_SUB_CAR_OVER_B,
                            CASE WHEN SUBSTR(IS_RPT,2,1) = '1' THEN C_FINANCIAL_SUBSIDY_REVENUE  ELSE NULL END  C_FINANCIAL_SUBSIDY_REVENUE,
                            CASE WHEN SUBSTR(IS_RPT,2,1) = '1' THEN C_UNDERTAKINGS_EXP_FIN_SUB_EXP  ELSE NULL END  C_UNDERTAKINGS_EXP_FIN_SUB_EXP,
                            CASE WHEN SUBSTR(IS_RPT,2,1) = '1' THEN C_CURRENT_UNDERTAK_CAR_OVER_B  ELSE NULL END  C_CURRENT_UNDERTAK_CAR_OVER_B,
                            CASE WHEN SUBSTR(IS_RPT,2,1) = '1' THEN C_UNDERTAKINGS_CLASS_REVENUE  ELSE NULL END  C_UNDERTAKINGS_CLASS_REVENUE,
                            CASE WHEN SUBSTR(IS_RPT,2,1) = '1' THEN C_UNDERTAKINGS_REVENUE  ELSE NULL END  C_UNDERTAKINGS_REVENUE,
                            CASE WHEN SUBSTR(IS_RPT,2,1) = '1' THEN C_SUPERIOR_SUBSIDY_REVENUE  ELSE NULL END  C_SUPERIOR_SUBSIDY_REVENUE,
                            CASE WHEN SUBSTR(IS_RPT,2,1) = '1' THEN C_REVENUE_TURNED_OVER_SUB_UNIT  ELSE NULL END  C_REVENUE_TURNED_OVER_SUB_UNIT,
                            CASE WHEN SUBSTR(IS_RPT,2,1) = '1' THEN C_OTHER_REVENUE  ELSE NULL END  C_OTHER_REVENUE,
                            CASE WHEN SUBSTR(IS_RPT,2,1) = '1' THEN C_DONATION_INCOME  ELSE NULL END  C_DONATION_INCOME,
                            CASE WHEN SUBSTR(IS_RPT,2,1) = '1' THEN C_UNDERTAKINGS_CLASS_EXPENDIT  ELSE NULL END  C_UNDERTAKINGS_CLASS_EXPENDIT,
                            CASE WHEN SUBSTR(IS_RPT,2,1) = '1' THEN C_UNDERTAKINGS_NON_FIN_SUB_EXP  ELSE NULL END  C_UNDERTAKINGS_NON_FIN_SUB_EXP,
                            CASE WHEN SUBSTR(IS_RPT,2,1) = '1' THEN C_PAYMENT_THE_HIGHER_AUTHORITY  ELSE NULL END  C_PAYMENT_THE_HIGHER_AUTHORITY,
                            CASE WHEN SUBSTR(IS_RPT,2,1) = '1' THEN C_GRANT_AUXILIARY_ORGANIZATION  ELSE NULL END  C_GRANT_AUXILIARY_ORGANIZATION,
                            CASE WHEN SUBSTR(IS_RPT,2,1) = '1' THEN C_OTHER_EXPENDITURE  ELSE NULL END  C_OTHER_EXPENDITURE,
                            CASE WHEN SUBSTR(IS_RPT,2,1) = '1' THEN C_CURRENT_OPERATING_BALANCE  ELSE NULL END  C_CURRENT_OPERATING_BALANCE,
                            CASE WHEN SUBSTR(IS_RPT,2,1) = '1' THEN C_OPERATING_REVENUE  ELSE NULL END  C_OPERATING_REVENUE,
                            CASE WHEN SUBSTR(IS_RPT,2,1) = '1' THEN C_OPERATING_EXPENDITURE  ELSE NULL END  C_OPERATING_EXPENDITURE,
                            CASE WHEN SUBSTR(IS_RPT,2,1) = '1' THEN C_OPERATING_BALANCE_P_YO_LOSS  ELSE NULL END  C_OPERATING_BALANCE_P_YO_LOSS,
                            CASE WHEN SUBSTR(IS_RPT,2,1) = '1' THEN C_NON_FINA_SUB_CAR_O_BAL_TYEAR  ELSE NULL END  C_NON_FINA_SUB_CAR_O_BAL_TYEAR,
                            CASE WHEN SUBSTR(IS_RPT,2,1) = '1' THEN C_NON_FINANCIAL_AID_CARRIED_O  ELSE NULL END  C_NON_FINANCIAL_AID_CARRIED_O,
                            CASE WHEN SUBSTR(IS_RPT,2,1) = '1' THEN C_NON_FINANCIAL_AID_BAL_TYEAR  ELSE NULL END  C_NON_FINANCIAL_AID_BAL_TYEAR,
                            CASE WHEN SUBSTR(IS_RPT,2,1) = '1' THEN C_ENTERPRISE_INCOME_TAX_PAYABL  ELSE NULL END  C_ENTERPRISE_INCOME_TAX_PAYABL,
                            CASE WHEN SUBSTR(IS_RPT,2,1) = '1' THEN C_SPECIAL_FUNDS_TO_EXTRACT  ELSE NULL END  C_SPECIAL_FUNDS_TO_EXTRACT,
                            CASE WHEN SUBSTR(IS_RPT,2,1) = '1' THEN C_PUBLIC_FUND_TURNED_INTO  ELSE NULL END  C_PUBLIC_FUND_TURNED_INTO,
                           D_DATA_DESC
                        FROM
                            MBT_650_HIS
                        WHERE
                            DATA_STATUS='23'
                        AND HIS_DATE=V_NOW_DATE
                        AND B_RPT_DATE_CODE !='99'
                        ) TMP
        LEFT JOIN
            MBT_650_HIS HIS
        ON
            TMP.DATA_ID=HIS.DATA_ID) SOURCE
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
        TARGET.ODS_DATA_ID,
        TARGET.RPT_DATE,
        TARGET.RPT_TIME,
                TARGET.ROW_NUM

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
        '24',
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
        SOURCE.DATA_ID,
        V_NOW_DATE,
        V_NOW_TIME,
        GET_ROW_NUM(SOURCE.ORG_ID, '650')
    );
COMMIT;
UPDATE MBT_650_HIS SET DATA_STATUS='25' WHERE DATA_STATUS='23' AND HIS_DATE=V_NOW_DATE;
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
prompt Creating procedure SYNC_HIS_TO_RPT
prompt ==================================
prompt
CREATE OR REPLACE PROCEDURE "SYNC_HIS_TO_RPT"(ERRCODE OUT VARCHAR2,
                                              ERRMSG  OUT VARCHAR2) AS
BEGIN
  SYNC_HIS_TO_RPT_110(ERRCODE, ERRMSG);
  SYNC_HIS_TO_RPT_120(ERRCODE, ERRMSG);
  SYNC_HIS_TO_RPT_130(ERRCODE, ERRMSG);
  SYNC_HIS_TO_RPT_140(ERRCODE, ERRMSG);
  SYNC_HIS_TO_RPT_210(ERRCODE, ERRMSG);
  SYNC_HIS_TO_RPT_211(ERRCODE, ERRMSG);
  SYNC_HIS_TO_RPT_220(ERRCODE, ERRMSG);
  SYNC_HIS_TO_RPT_221(ERRCODE, ERRMSG);
  SYNC_HIS_TO_RPT_230(ERRCODE, ERRMSG);
  SYNC_HIS_TO_RPT_231(ERRCODE, ERRMSG);
  SYNC_HIS_TO_RPT_310(ERRCODE, ERRMSG);
  SYNC_HIS_TO_RPT_340(ERRCODE, ERRMSG);
  SYNC_HIS_TO_RPT_350(ERRCODE, ERRMSG);
  SYNC_HIS_TO_RPT_410(ERRCODE, ERRMSG);
  SYNC_HIS_TO_RPT_411(ERRCODE, ERRMSG);
  SYNC_HIS_TO_RPT_420(ERRCODE, ERRMSG);
  SYNC_HIS_TO_RPT_421(ERRCODE, ERRMSG);
  SYNC_HIS_TO_RPT_440(ERRCODE, ERRMSG);
  SYNC_HIS_TO_RPT_441(ERRCODE, ERRMSG);
  SYNC_HIS_TO_RPT_510(ERRCODE, ERRMSG);
  SYNC_HIS_TO_RPT_511(ERRCODE, ERRMSG);
  SYNC_HIS_TO_RPT_610(ERRCODE, ERRMSG);
  SYNC_HIS_TO_RPT_620(ERRCODE, ERRMSG);
  SYNC_HIS_TO_RPT_630(ERRCODE, ERRMSG);
  SYNC_HIS_TO_RPT_640(ERRCODE, ERRMSG);
  SYNC_HIS_TO_RPT_650(ERRCODE, ERRMSG);
END;
/


prompt Done
spool off
set define on
