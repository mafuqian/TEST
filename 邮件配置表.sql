prompt PL/SQL Developer import file
prompt Created on 2020年7月21日 by young
set feedback off
set define off
prompt Dropping GP_BM_TLR_INFO_EMAIL...
drop table GP_BM_TLR_INFO_EMAIL cascade constraints;
prompt Creating GP_BM_TLR_INFO_EMAIL...
create table GP_BM_TLR_INFO_EMAIL
(
  data_id        CHAR(32) not null,
  data_date      CHAR(8),
  corp_id        VARCHAR2(14),
  org_id         VARCHAR2(14),
  cust_no        VARCHAR2(32),
  group_id       VARCHAR2(14),
  inq_org_id     CHAR(24),
  inq_group_id   CHAR(24),
  org_id_name    VARCHAR2(512),
  email_title    VARCHAR2(512),
  email_type     CHAR(2),
  status         CHAR(2),
  email_user     VARCHAR2(1024),
  email_addr     VARCHAR2(1024),
  remarks        NVARCHAR2(512),
  check_flag     CHAR(1),
  check_desc     NVARCHAR2(512),
  check_err_type CHAR(1),
  next_action    CHAR(2),
  data_status    CHAR(2),
  data_flag      CHAR(1),
  data_source    CHAR(1),
  data_version   NUMBER(8),
  data_rej_desc  NVARCHAR2(128),
  data_del_desc  NVARCHAR2(128),
  data_crt_user  NVARCHAR2(20),
  data_crt_date  CHAR(8),
  data_crt_time  CHAR(14),
  data_chg_user  NVARCHAR2(20),
  data_chg_date  CHAR(8),
  data_chg_time  CHAR(14),
  data_apv_user  NVARCHAR2(20),
  data_apv_date  CHAR(8),
  data_apv_time  CHAR(14),
  rsv1           NVARCHAR2(180),
  rsv2           NVARCHAR2(180),
  rsv3           NVARCHAR2(180),
  rsv4           NVARCHAR2(180),
  rsv5           NVARCHAR2(180),
  data_desc      NVARCHAR2(256)
)
;
alter table GP_BM_TLR_INFO_EMAIL
  add primary key (DATA_ID);

prompt Loading GP_BM_TLR_INFO_EMAIL...
insert into GP_BM_TLR_INFO_EMAIL (data_id, data_date, corp_id, org_id, cust_no, group_id, inq_org_id, inq_group_id, org_id_name, email_title, email_type, status, email_user, email_addr, remarks, check_flag, check_desc, check_err_type, next_action, data_status, data_flag, data_source, data_version, data_rej_desc, data_del_desc, data_crt_user, data_crt_date, data_crt_time, data_chg_user, data_chg_date, data_chg_time, data_apv_user, data_apv_date, data_apv_time, rsv1, rsv2, rsv3, rsv4, rsv5, data_desc)
values ('b076d04f98a34933a3c2f3e48c83e72e', '20191111', 'HSBC', 'HBCN', null, 'RBWM', null, null, '汇丰中国', 'CRMS 打包预校验邮件提醒', '02', '01', 'admin', null, null, null, null, null, null, '00', null, '1', null, null, null, 'admin1', '20191111', '20191111170405', 'admin1', '20191115', '20191115165929', null, null, null, null, null, null, null, null, null);
insert into GP_BM_TLR_INFO_EMAIL (data_id, data_date, corp_id, org_id, cust_no, group_id, inq_org_id, inq_group_id, org_id_name, email_title, email_type, status, email_user, email_addr, remarks, check_flag, check_desc, check_err_type, next_action, data_status, data_flag, data_source, data_version, data_rej_desc, data_del_desc, data_crt_user, data_crt_date, data_crt_time, data_chg_user, data_chg_date, data_chg_time, data_apv_user, data_apv_date, data_apv_time, rsv1, rsv2, rsv3, rsv4, rsv5, data_desc)
values ('c02213343cb5409980fff2c55d6517f3', '20190920', 'TESTCORP', 'HBCN', null, 'RBWM', null, null, '汇丰中国', 'CRMS 代办任务提醒邮件', '01', '01', 'admin1,admin', null, null, null, null, null, null, '00', null, '1', null, null, null, 'admin', '20190920', '20190920111748', 'admin1', '20191111', '20191111165533', null, null, null, null, null, null, null, null, null);
insert into GP_BM_TLR_INFO_EMAIL (data_id, data_date, corp_id, org_id, cust_no, group_id, inq_org_id, inq_group_id, org_id_name, email_title, email_type, status, email_user, email_addr, remarks, check_flag, check_desc, check_err_type, next_action, data_status, data_flag, data_source, data_version, data_rej_desc, data_del_desc, data_crt_user, data_crt_date, data_crt_time, data_chg_user, data_chg_date, data_chg_time, data_apv_user, data_apv_date, data_apv_time, rsv1, rsv2, rsv3, rsv4, rsv5, data_desc)
values ('f53a7963ff8e4497850020f0dad1876b', '20190925', 'TESTCORP', 'HBCN', null, 'RBWM', null, null, '汇丰中国', 'CRMS_二代征信系统_个人跨表校验信息提示邮件', '05', '01', 'admin,admin1', null, null, null, null, null, null, '00', null, '1', null, null, null, 'admin', '20190925', '20190925164144', 'admin1', '20191111', '20191111170435', null, null, null, null, null, null, null, null, null);
insert into GP_BM_TLR_INFO_EMAIL (data_id, data_date, corp_id, org_id, cust_no, group_id, inq_org_id, inq_group_id, org_id_name, email_title, email_type, status, email_user, email_addr, remarks, check_flag, check_desc, check_err_type, next_action, data_status, data_flag, data_source, data_version, data_rej_desc, data_del_desc, data_crt_user, data_crt_date, data_crt_time, data_chg_user, data_chg_date, data_chg_time, data_apv_user, data_apv_date, data_apv_time, rsv1, rsv2, rsv3, rsv4, rsv5, data_desc)
values ('f53a7963ff8e4497855990f0dad1876b', '20190925', 'TESTCORP', 'HBCN', null, 'RBWM', null, null, '汇丰中国', 'CRMS_二代征信系统_企业跨表校验信息提示邮件', '04', '01', 'admin,admin1', null, null, null, null, null, null, '00', null, '1', null, null, null, 'admin', '20190925', '20190925164144', 'admin1', '20191111', '20191111170435', null, null, null, null, null, null, null, null, null);
insert into GP_BM_TLR_INFO_EMAIL (data_id, data_date, corp_id, org_id, cust_no, group_id, inq_org_id, inq_group_id, org_id_name, email_title, email_type, status, email_user, email_addr, remarks, check_flag, check_desc, check_err_type, next_action, data_status, data_flag, data_source, data_version, data_rej_desc, data_del_desc, data_crt_user, data_crt_date, data_crt_time, data_chg_user, data_chg_date, data_chg_time, data_apv_user, data_apv_date, data_apv_time, rsv1, rsv2, rsv3, rsv4, rsv5, data_desc)
values ('f53a7963ff8e4497855920f0dad1876b', '20190925', 'TESTCORP', 'HBCN', null, 'RBWM', null, null, '汇丰中国', 'CRMS 反馈信息提示邮件', '03', '01', 'admin', null, null, null, null, null, null, '00', null, '1', null, null, null, 'admin', '20190925', '20190925164144', 'admin1', '20191111', '20191111170435', null, null, null, null, null, null, null, null, null);
commit;
prompt 5 records loaded
set feedback on
set define on
prompt Done.
