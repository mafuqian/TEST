--	CE-149 更新sql huanghao

 alter table GP_BM_BMS_CTL_SESSION modify (C_CODE VARCHAR2(6));
 
 

-- CE127 wangxiangchong
 
update gp_qc_rule set script = 'if (H_ACCT_STATUS == "21" && B_ACCT_TYPE != "C1") {
    if (H_TOT_OVERD == "0" && H_OVERD_PRINC == "0" && H_OVERD_DY == "0") {
        return true
    }
    return false
}
return true' where data_id = 'MBT_410I4100H05I4100H0201I4100H0502';
 
-- commit;


-- CE 140

UPDATE GP_BM_INQ_CFG SET SQL_STRING = 'select DATA_DATE,ORG_ID,GROUP_ID,DATA_ID,INF_REC_TYPE,NAME,ID_TYPE,ID_NUM,ID_EFCT_DATE,ID_DUE_DATE,ID_ORG_NAME,ID_DIST,CIMOC,INF_SURC_CODE,RPT_DATE,DATA_STATUS,DATA_CRT_DATE,DATA_CHG_USER,HIS_DATE,FB_STATUS from MBT_130_HIS where 1=1 @{_PRIV_COND}  and DATA_STATUS=:"dataStatus" and CORP_ID=:"v_corpid"  and  upper(ORG_ID) like upper(''%''|| :"orgId" ||''%'') and DATA_CRT_DATE>=:"startDate" and DATA_CRT_DATE<=:"endDate" and HIS_DATE>=:"hisStartDate" and HIS_DATE<=:"hisEndDate"  and FB_STATUS =:"fbStatus"  and upper(DATA_ID) like upper(''%''|| :"dataId" ||''%'') and upper(NAME) like upper(''%''|| :"name" ||''%'') and upper(CIMOC) like upper(''%''|| :"cimoc" ||''%'') and upper(ID_NUM) LIKE upper( ''%'' || :"idNum" || ''%'' ) and upper(DATA_CHG_USER) like upper(''%''|| :"dataChgUser" ||''%'') and upper(GROUP_ID)  like  upper(''%''|| :"groupId" ||''%'') and RPT_DATE=:"rptDate"'
WHERE SQL_ID = 'Mbt130HisQry';