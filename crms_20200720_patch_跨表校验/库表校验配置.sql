prompt Importing table GP_BM_TLR_INFO_EMAIL...
set feedback off
set define off
insert into GP_BM_TLR_INFO_EMAIL (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, CUST_NO, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, ORG_ID_NAME, EMAIL_TITLE, EMAIL_TYPE, STATUS, EMAIL_USER, EMAIL_ADDR, REMARKS, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5, DATA_DESC)
values ('f53a7963ff8e4497850020f0dad1876b', '20190925', 'TESTCORP', 'HBCN', null, 'RBWM', null, null, '汇丰中国', 'CRMS_二代征信系统_个人跨表校验信息提示邮件', '05', '01', 'admin,admin1', null, null, null, null, null, null, '00', null, '1', null, null, null, 'admin', '20190925', '20190925164144', 'admin1', '20191111', '20191111170435', null, null, null, null, null, null, null, null, null);

insert into GP_BM_TLR_INFO_EMAIL (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, CUST_NO, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, ORG_ID_NAME, EMAIL_TITLE, EMAIL_TYPE, STATUS, EMAIL_USER, EMAIL_ADDR, REMARKS, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5, DATA_DESC)
values ('f53a7963ff8e4497855990f0dad1876b', '20190925', 'TESTCORP', 'HBCN', null, 'RBWM', null, null, '汇丰中国', 'CRMS_二代征信系统_企业跨表校验信息提示邮件', '04', '01', 'admin,admin1', null, null, null, null, null, null, '00', null, '1', null, null, null, 'admin', '20190925', '20190925164144', 'admin1', '20191111', '20191111170435', null, null, null, null, null, null, null, null, null);

prompt Done.


prompt Importing table GP_BM_BMS_BATCH...
set feedback off
set define off
insert into GP_BM_BMS_BATCH (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, BATCH_NAME, RUN_PLAN, STATUS, CFG_STATUS, NEXT_TIME, LAST_TIME, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_SOURCE, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5, REMARKS, DATE_CHK, COND_3, COND_1, COND_2)
values ('aaea9960ddd048b6b695dedb83ffd75d', null, null, null, null, '企业跨表校验', 'A0001', '2', null, '20200720143107', '20200720143107', null, null, null, null, null, null, null, 1, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

prompt Done.


prompt Importing table GP_BM_BMS_BATCH...
set feedback off
set define off
insert into GP_BM_BMS_BATCH (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, BATCH_NAME, RUN_PLAN, STATUS, CFG_STATUS, NEXT_TIME, LAST_TIME, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_SOURCE, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5, REMARKS, DATE_CHK, COND_3, COND_1, COND_2)
values ('5a8113db695346cbbc0de0018e7fd119', '20200720', 'HSBC', 'HBCN', null, '个人跨表校验', 'A0001', '2', null, '20200720125753', '20200720125753', '00', '00', 'O', '3', 'N', null, null, 1, null, null, 'admin', '20200720', '20200720124423', 'admin', '20200720', '20200720124423', null, null, null, null, null, null, null, null, null, null, null, null, null);

prompt Done.


prompt Importing table gp_bm_bms_ctl_cfg...
set feedback off
set define off
insert into gp_bm_bms_ctl_cfg (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, RUN_ORDER, JOB_ID, CONDITION, WORKER_ID, ARGS, STATUS, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5, REMARKS, BATCH_ID, NEXT_0, NEXT_1, NEXT_2, NEXT_3, NEXT_4, JOB_TYPE)
values ('5384196e39a7435d8dd762f160b93294', '20200720', null, null, null, 1, '1', null, 'sys               ', 'mbtCrossTableValidateJob.execute("P")', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '5a8113db695346cbbc0de0018e7fd119', '2', null, null, null, null, '1');

insert into gp_bm_bms_ctl_cfg (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, RUN_ORDER, JOB_ID, CONDITION, WORKER_ID, ARGS, STATUS, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5, REMARKS, BATCH_ID, NEXT_0, NEXT_1, NEXT_2, NEXT_3, NEXT_4, JOB_TYPE)
values ('55fff4b07587496a8b39f246c941343f', null, null, null, null, 1, '1', null, 'sys               ', 'mbtCrossTableValidateJob.execute("C")', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'aaea9960ddd048b6b695dedb83ffd75d', '2', null, null, null, null, '1');

insert into gp_bm_bms_ctl_cfg (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, RUN_ORDER, JOB_ID, CONDITION, WORKER_ID, ARGS, STATUS, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5, REMARKS, BATCH_ID, NEXT_0, NEXT_1, NEXT_2, NEXT_3, NEXT_4, JOB_TYPE)
values ('191a1c7423184c94853c3deb94f82dd7', null, null, null, null, 2, '2', null, 'sys               ', 'mbtCrossTableMailJob.execute("C")', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'aaea9960ddd048b6b695dedb83ffd75d', null, null, null, null, null, '1');

insert into gp_bm_bms_ctl_cfg (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, RUN_ORDER, JOB_ID, CONDITION, WORKER_ID, ARGS, STATUS, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5, REMARKS, BATCH_ID, NEXT_0, NEXT_1, NEXT_2, NEXT_3, NEXT_4, JOB_TYPE)
values ('d29a1b34d6074f6c8bd30d238603c48a', null, null, null, null, 2, '2', null, 'sys               ', 'mbtCrossTableMailJob.execute("P")', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '5a8113db695346cbbc0de0018e7fd119', null, null, null, null, null, '1');

prompt Done.
