DELETE FROM MBT_RPT_DATE_CODE_CFG T WHERE T.INF_REC_TYPE = '110';
DELETE FROM MBT_RPT_DATE_CODE_CFG T WHERE T.INF_REC_TYPE = '210';
DELETE FROM MBT_RPT_DATE_CODE_CFG T WHERE T.INF_REC_TYPE = '220';
DELETE FROM MBT_RPT_DATE_CODE_CFG T WHERE T.INF_REC_TYPE = '230';
DELETE FROM MBT_RPT_DATE_CODE_CFG T WHERE T.INF_REC_TYPE = '310';

insert into MBT_RPT_DATE_CODE_CFG (inf_rec_type, acct_type, rpt_date_code, cfg_value, init_value, remarks, data_id) values ('110', null, '10', '22222220|1', '11111110|0', '个人基本信息', '2020092200000001');
insert into MBT_RPT_DATE_CODE_CFG (inf_rec_type, acct_type, rpt_date_code, cfg_value, init_value, remarks, data_id) values ('110', null, '20', '21111110|1', '11111110|0', '个人基本信息', '2020092200000002');

insert into MBT_RPT_DATE_CODE_CFG (inf_rec_type, acct_type, rpt_date_code, cfg_value, init_value, remarks, data_id) values ('210', 'D1', '10', '2210200|110', '1101001|000', '个人借贷账户信息', '2020092200000003');
insert into MBT_RPT_DATE_CODE_CFG (inf_rec_type, acct_type, rpt_date_code, cfg_value, init_value, remarks, data_id) values ('210', 'D1', '31', '2210200|111', '1101001|000', '个人借贷账户信息', '2020092200000004');
insert into MBT_RPT_DATE_CODE_CFG (inf_rec_type, acct_type, rpt_date_code, cfg_value, init_value, remarks, data_id) values ('210', 'D1', '30', '2110200|111', '1101001|000', '个人借贷账户信息', '2020092200000005');
insert into MBT_RPT_DATE_CODE_CFG (inf_rec_type, acct_type, rpt_date_code, cfg_value, init_value, remarks, data_id) values ('210', 'D1', '32', '2110200|111', '1101001|000', '个人借贷账户信息', '2020092200000006');
insert into MBT_RPT_DATE_CODE_CFG (inf_rec_type, acct_type, rpt_date_code, cfg_value, init_value, remarks, data_id) values ('210', 'D1', '40', '2000002|000', '1101001|000', '个人借贷账户信息', '2020092200000007');
insert into MBT_RPT_DATE_CODE_CFG (inf_rec_type, acct_type, rpt_date_code, cfg_value, init_value, remarks, data_id) values ('210', 'D1', '20', '2110200|111', '1101001|000', '个人借贷账户信息', '2020092200000008');
insert into MBT_RPT_DATE_CODE_CFG (inf_rec_type, acct_type, rpt_date_code, cfg_value, init_value, remarks, data_id) values ('210', 'R1', '10', '2220200|110', '1101001|000', '个人借贷账户信息', '2020092200000009');
insert into MBT_RPT_DATE_CODE_CFG (inf_rec_type, acct_type, rpt_date_code, cfg_value, init_value, remarks, data_id) values ('210', 'R1', '31', '2220200|111', '1101001|000', '个人借贷账户信息', '2020092200000010');
insert into MBT_RPT_DATE_CODE_CFG (inf_rec_type, acct_type, rpt_date_code, cfg_value, init_value, remarks, data_id) values ('210', 'R1', '30', '2110200|111', '1101001|000', '个人借贷账户信息', '2020092200000011');
insert into MBT_RPT_DATE_CODE_CFG (inf_rec_type, acct_type, rpt_date_code, cfg_value, init_value, remarks, data_id) values ('210', 'R1', '32', '2110200|111', '1101001|000', '个人借贷账户信息', '2020092200000012');
insert into MBT_RPT_DATE_CODE_CFG (inf_rec_type, acct_type, rpt_date_code, cfg_value, init_value, remarks, data_id) values ('210', 'R1', '40', '2000002|000', '1101001|000', '个人借贷账户信息', '2020092200000013');
insert into MBT_RPT_DATE_CODE_CFG (inf_rec_type, acct_type, rpt_date_code, cfg_value, init_value, remarks, data_id) values ('210', 'R1', '20', '2110200|111', '1101001|000', '个人借贷账户信息', '2020092200000014');
insert into MBT_RPT_DATE_CODE_CFG (inf_rec_type, acct_type, rpt_date_code, cfg_value, init_value, remarks, data_id) values ('210', 'R2', '10', '2210210|110', '1101001|000', '个人借贷账户信息', '2020092200000015');
insert into MBT_RPT_DATE_CODE_CFG (inf_rec_type, acct_type, rpt_date_code, cfg_value, init_value, remarks, data_id) values ('210', 'R2', '31', '2210210|111', '1101001|000', '个人借贷账户信息', '2020092200000016');
insert into MBT_RPT_DATE_CODE_CFG (inf_rec_type, acct_type, rpt_date_code, cfg_value, init_value, remarks, data_id) values ('210', 'R2', '30', '2110210|111', '1101001|000', '个人借贷账户信息', '2020092200000017');
insert into MBT_RPT_DATE_CODE_CFG (inf_rec_type, acct_type, rpt_date_code, cfg_value, init_value, remarks, data_id) values ('210', 'R2', '32', '2110210|111', '1101001|000', '个人借贷账户信息', '2020092200000018');
insert into MBT_RPT_DATE_CODE_CFG (inf_rec_type, acct_type, rpt_date_code, cfg_value, init_value, remarks, data_id) values ('210', 'R2', '40', '2000002|000', '1101001|000', '个人借贷账户信息', '2020092200000019');
insert into MBT_RPT_DATE_CODE_CFG (inf_rec_type, acct_type, rpt_date_code, cfg_value, init_value, remarks, data_id) values ('210', 'R2', '20', '2110210|111', '1101001|000', '个人借贷账户信息', '2020092200000020');
insert into MBT_RPT_DATE_CODE_CFG (inf_rec_type, acct_type, rpt_date_code, cfg_value, init_value, remarks, data_id) values ('210', 'R3', '10', '2220200|110', '1101001|000', '个人借贷账户信息', '2020092200000021');
insert into MBT_RPT_DATE_CODE_CFG (inf_rec_type, acct_type, rpt_date_code, cfg_value, init_value, remarks, data_id) values ('210', 'R3', '31', '2220200|111', '1101001|000', '个人借贷账户信息', '2020092200000022');
insert into MBT_RPT_DATE_CODE_CFG (inf_rec_type, acct_type, rpt_date_code, cfg_value, init_value, remarks, data_id) values ('210', 'R3', '30', '2110200|111', '1101001|000', '个人借贷账户信息', '2020092200000023');
insert into MBT_RPT_DATE_CODE_CFG (inf_rec_type, acct_type, rpt_date_code, cfg_value, init_value, remarks, data_id) values ('210', 'R3', '32', '2110200|111', '1101001|000', '个人借贷账户信息', '2020092200000024');
insert into MBT_RPT_DATE_CODE_CFG (inf_rec_type, acct_type, rpt_date_code, cfg_value, init_value, remarks, data_id) values ('210', 'R3', '20', '2110200|111', '1101001|000', '个人借贷账户信息', '2020092200000025');
insert into MBT_RPT_DATE_CODE_CFG (inf_rec_type, acct_type, rpt_date_code, cfg_value, init_value, remarks, data_id) values ('210', 'R4', '10', '2220200|110', '1101001|000', '个人借贷账户信息', '2020092200000026');
insert into MBT_RPT_DATE_CODE_CFG (inf_rec_type, acct_type, rpt_date_code, cfg_value, init_value, remarks, data_id) values ('210', 'R4', '31', '2220200|111', '1101001|000', '个人借贷账户信息', '2020092200000027');
insert into MBT_RPT_DATE_CODE_CFG (inf_rec_type, acct_type, rpt_date_code, cfg_value, init_value, remarks, data_id) values ('210', 'R4', '30', '2110200|111', '1101001|000', '个人借贷账户信息', '2020092200000028');
insert into MBT_RPT_DATE_CODE_CFG (inf_rec_type, acct_type, rpt_date_code, cfg_value, init_value, remarks, data_id) values ('210', 'R4', '32', '2110200|111', '1101001|000', '个人借贷账户信息', '2020092200000029');
insert into MBT_RPT_DATE_CODE_CFG (inf_rec_type, acct_type, rpt_date_code, cfg_value, init_value, remarks, data_id) values ('210', 'R4', '40', '2000002|000', '1101001|000', '个人借贷账户信息', '2020092200000030');
insert into MBT_RPT_DATE_CODE_CFG (inf_rec_type, acct_type, rpt_date_code, cfg_value, init_value, remarks, data_id) values ('210', 'R4', '20', '2110200|111', '1101001|000', '个人借贷账户信息', '2020092200000031');
insert into MBT_RPT_DATE_CODE_CFG (inf_rec_type, acct_type, rpt_date_code, cfg_value, init_value, remarks, data_id) values ('210', 'C1', '10', '2202002|101', '1101001|000', '个人借贷账户信息', '2020092200000032');
insert into MBT_RPT_DATE_CODE_CFG (inf_rec_type, acct_type, rpt_date_code, cfg_value, init_value, remarks, data_id) values ('210', 'C1', '40', '2100002|001', '1101001|000', '个人借贷账户信息', '2020092200000033');
insert into MBT_RPT_DATE_CODE_CFG (inf_rec_type, acct_type, rpt_date_code, cfg_value, init_value, remarks, data_id) values ('210', 'C1', '20', '2100002|001', '1101001|000', '个人借贷账户信息', '2020092200000034');

insert into MBT_RPT_DATE_CODE_CFG (INF_REC_TYPE, ACCT_TYPE, RPT_DATE_CODE, CFG_VALUE, INIT_VALUE, REMARKS, DATA_ID) values ('220', null, '10', '22|1', '11|0', '个人授信协议信息', '2020092200000035');
insert into MBT_RPT_DATE_CODE_CFG (INF_REC_TYPE, ACCT_TYPE, RPT_DATE_CODE, CFG_VALUE, INIT_VALUE, REMARKS, DATA_ID) values ('220', null, '20', '22|1', '11|0', '个人授信协议信息', '2020092200000036');
insert into MBT_RPT_DATE_CODE_CFG (INF_REC_TYPE, ACCT_TYPE, RPT_DATE_CODE, CFG_VALUE, INIT_VALUE, REMARKS, DATA_ID) values ('220', null, '30', '22|1', '11|0', '个人授信协议信息', '2020092200000037');

insert into MBT_RPT_DATE_CODE_CFG (INF_REC_TYPE, ACCT_TYPE, RPT_DATE_CODE, CFG_VALUE, INIT_VALUE, REMARKS, DATA_ID) values ('230', null, '10', '222|10', '111|00', '个人担保账户信息', '2020092200000038');
insert into MBT_RPT_DATE_CODE_CFG (INF_REC_TYPE, ACCT_TYPE, RPT_DATE_CODE, CFG_VALUE, INIT_VALUE, REMARKS, DATA_ID) values ('230', null, '30', '212|10', '111|00', '个人担保账户信息', '2020092200000039');
insert into MBT_RPT_DATE_CODE_CFG (INF_REC_TYPE, ACCT_TYPE, RPT_DATE_CODE, CFG_VALUE, INIT_VALUE, REMARKS, DATA_ID) values ('230', null, '40', '212|10', '111|00', '个人担保账户信息', '2020092200000040');
insert into MBT_RPT_DATE_CODE_CFG (INF_REC_TYPE, ACCT_TYPE, RPT_DATE_CODE, CFG_VALUE, INIT_VALUE, REMARKS, DATA_ID) values ('230', null, '50', '210|10', '111|00', '个人担保账户信息', '2020092200000041');
insert into MBT_RPT_DATE_CODE_CFG (INF_REC_TYPE, ACCT_TYPE, RPT_DATE_CODE, CFG_VALUE, INIT_VALUE, REMARKS, DATA_ID) values ('230', null, '20', '212|10', '111|00', '个人担保账户信息', '2020092200000042');

insert into MBT_RPT_DATE_CODE_CFG (inf_rec_type, acct_type, rpt_date_code, cfg_value, init_value, remarks, data_id) values ('310', null, '10', '22112|1211', '1111|0100', '企业基本信息', '2020092200000043');
insert into MBT_RPT_DATE_CODE_CFG (inf_rec_type, acct_type, rpt_date_code, cfg_value, init_value, remarks, data_id) values ('310', null, '20', '21111|1111', '1111|0000', '企业基本信息', '2020092200000044');

commit;

