UPDATE gp_bm_inq_cfg SET SQL_ID = 'RtmsRptRevise_109', SQL_STRING = 'select gbti.TLRNO as USER_ID, gbti.TLR_NAME as USER_NAME,prg.USER_GROUP_NAME
from GP_BM_TLR_INFO gbti
    left join pm_rms_group_user prgu on gbti.TLRNO = prgu.USER_ID
    left join pm_rms_group prg on prg.DATA_ID = prgu.USER_GROUP_ID
where TLRNO like ''%''||:"userId"||''%'' and TLR_NAME like ''%''||:"userName"||''%''
and prg.USER_GROUP_NAME like ''%''||:"userGroupName"||''%''' WHERE DATA_ID = 'RtmsRptRevise_109';
UPDATE gp_bm_inq_cfg SET SQL_ID = 'RtmsTaskMng_001', SQL_STRING = 'SELECT TASK.TASK_NAME,
       BR.BRNAME          AS ORG_NAME,
       TASK.DATA_CRT_DATE AS TASK_TIME,
       RPT.RPT_PROD_TYPE,
       RPT.RPT_TO,
       RPT.RPT_FREQUENCY,
       TASK.RPT_DATE,
       RPT.RPT_NAME,
       OP.OP_NAME,
       AR.ALERT_RULE_NAME,
       TASK.DATA_ID,
       TASK.DATA_CRT_TIME,
       TASK.TASK_STATUS,
       TASK.ALERT_STATUS,
       TASK.INTERNAL_LIMIT_TIME,
       TASK.LIMIT_TIME,
       (select group_concat(RB.USER_NAME separator '','') from PM_RTMS_RPT_BIND RB where TASK.OP_ID=RB.OP_ID AND TASK.RPT_ID=RB.RPT_ID AND TASK.OP_GROUP_ID=RB.OP_GROUP_ID) user_list
FROM PM_RTMS_TASK TASK
         INNER JOIN PM_RTMS_RPT RPT ON TASK.RPT_ID = RPT.DATA_ID
         INNER JOIN PM_RTMS_OP OP ON TASK.OP_ID = OP.DATA_ID
         INNER JOIN GP_BM_BRANCH BR ON TASK.ORG_ID = BR.BRCODE
         INNER JOIN PM_RTMS_ALERT_RULE AR ON TASK.ALERT_RULE_ID = AR.DATA_ID
WHERE 1 = 1
          AND TASK.Data_Crt_Date >= :"taskBeginDate"
          AND TASK.Data_Crt_Date <= :"taskEndDate"
          AND RPT.RPT_PROD_TYPE LIKE ''%'' || :"rptProdType" || ''%''
          AND RPT.RPT_FREQUENCY = :"rptFrequency"
          AND RPT.RPT_TO = :"rptTo"
          AND RPT.RPT_NAME LIKE ''%'' || :"rptName" || ''%''
          AND BR.BRNAME LIKE ''%'' || :"orgName" || ''%''
          AND TASK.RPT_DATE = :"rptDate"
          AND TASK.TASK_STATUS = :"taskStatus"
          AND TASK.ALERT_STATUS = :"alertStatus"
          and RPT.ORG_ID = :"v_brno"
ORDER BY TASK.DATA_CRT_TIME DESC' WHERE DATA_ID = 'RtmsTaskMng_001';