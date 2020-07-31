 --CE-60
 --MBT_411_1700406_I4410B01 新增
 -- “原业务标识码”和“新业务标识码”不能相同
 --新增map
insert into gp_qc_rule_map (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_SET_ID, RULE_ID, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_441_1700406_I4410B01', '20190620', 'TESTCORP', '72', '002', null, null, 'MBT_441_1700406', 'MBT_441_1700406_I4410B01', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'mbtrule', null);
 --新增rule
 insert into gp_qc_rule (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_441_1700406_I4410B01', '20200303', 'TESTCORP', '72', '002', null, null, ' “原业务标识码”和“新业务标识码”不能相同', ' “原业务标识码”和“新业务标识码”不能相同', null, 'BUSI', 'DATA_ID', null, null, 'Y', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, ' return OD_BNES_CODE != NW_BNES_CODE', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'mbtrule', '1');

 --MBT_411_1700406_I4410B02 新增
 --原业务标识码必须是库中已有且正在使用的
 --新增map
insert into gp_qc_rule_map (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_SET_ID, RULE_ID, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_441_1700406_I4410B02', '20190620', 'TESTCORP', '72', '002', null, null, 'MBT_441_1700406', 'MBT_441_1700406_I4410B02', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'mbtrule', null);
 --新增rule
insert into gp_qc_rule (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_441_1700406_I4410B02', '20200303', 'TESTCORP', '72', '002', null, null, '原业务标识码必须是库中已有且正在使用的', '原业务标识码必须是库中已有且正在使用的', null, 'BUSI', 'DATA_ID', null, null, 'Y', null, null, null, null, null, null, null, null, null, null, null, null, null, ' select 1 from (select count(*) as tcnt from mbt_440,mbt_440_rpt 
where (mbt_440.B_ACCT_CODE=:OD_BNES_CODE) 
and (mbt_440_rpt.B_ACCT_CODE=:OD_BNES_CODE))where tcnt>0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'mbtrule', '1');

--MBT_411_1700406_I4410B03 新增
--新业务标识码在数据库中必须不存在，或者在库中存在但必须是该账户之前使用过的标识。
--新增map
insert into gp_qc_rule_map (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_SET_ID, RULE_ID, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_441_1700406_I4410B03', '20190620', 'TESTCORP', '72', '002', null, null, 'MBT_441_1700406', 'MBT_441_1700406_I4410B03', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'mbtrule', null);
 --新增rule
 insert into gp_qc_rule (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_441_1700406_I4410B03', '20200303', 'TESTCORP', '72', '002', null, null, '新业务标识码在数据库中必须不存在，或者在库中存在但必须是该账户之前使用过的标识。', '新业务标识码在数据库中必须不存在，或者在库中存在但必须是该账户之前使用过的标识。', null, 'BUSI', 'DATA_ID', null, null, 'Y', null, null, null, null, null, null, null, null, null, null, null, null, null, 'select 1
  from (select count(*) as tcnt
          from mbt_440, mbt_441_his
         where (mbt_440.B_ACCT_CODE <> :NW_BNES_CODE)
            or (mbt_441_his.OD_BNES_CODE = :NW_BNES_CODE and mbt_441_his.ODS_DATA_ID = :DATA_ID))
 where tcnt > 0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'mbtrule', '1');


--CE-83  
--MBT_410R4100118R410011801R410011802
update gp_qc_rule set script = 'if( B_ACCT_TYPE != "C1" && B_ACCT_TYPE != "D2" && !isEmpty(B_ACCT_TYPE)){
if(B_RPT_DATE_CODE == "10" && (C_GUAR_MODE == "2" || C_GUAR_MODE == "3")){
    if(IS_RPT.substring(7,8) == "1"){
        return true
    }
    return false
}
return true
}
return true' where data_id = 'MBT_410R4100118R410011801R410011802';

--CE-12
--MBT_310_EI3100E02I3100E0201I3100E0202
--修改map
  update gp_qc_rule_map set rule_set_id = 'MBT_310_1700604' where data_id = 'MBT_310_EI3100E02I3100E0201I3100E0202_MBT_310_E_1700604';
  --修改rule
  update gp_qc_rule set sql = 'select 1
  from (select case
                 when tcnt1 = 0 and :IS_RPT is not null and
                      substr(:IS_RPT, 7, 1) = 1 then
                  0
                 else
                  1
               end as tcnt
          from (select case
                         when mmb = ''1'' then
                          0
                         else
                          1
                       end as tcnt1
                  from (select MMB_PSTN AS mmb
                          from mbt_310_e
                         where mbt_310_e.PDATA_ID = :DATA_ID
                         group by MMB_PSTN)))
 where tcnt = 0',script = '' where data_id = 'MBT_310_EI3100E02I3100E0201I3100E0202';
 
--CE-54
--MBT_215I2150B01I2150B0101  修改
--借贷账户特殊事件说明记录的“信息报告日期”与“发生月份”中的年、月相等。

update gp_qc_rule set script = 'if((MONTH.substring(0,6)).equals(RPT_DATE.substring(0,6))){
	return false
}
return true',sql = '' where data_id = 'MBT_215I2150B01I2150B0101';


--若“事件类型”为“11-信用卡因调整账单日本月不出单”且“生效标志”为“1-有效”： 
--MBT_215R2151202 _01 新增
--“账户类型”必须为“R2”，否则此记录不能入库
--新增map
insert into gp_qc_rule_map (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_SET_ID, RULE_ID, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_215R2151202 _01', '20191210', 'TESTCORP', '72', '002', null, null, 'MBT_215_2019020501', 'MBT_215R2151202 _01', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'mbtrule', null);
--新增rule
insert into gp_qc_rule (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_215R2151202 _01', '20191210', 'TESTCORP', '72', '002', null, null, '若“事件类型”为“11-信用卡因调整账单日本月不出单”且“生效标志”为“1-有效”,则“账户类型”必须为“R2”，否则此记录不能入库；  ', '若“事件类型”为“11-信用卡因调整账单日本月不出单”且“生效标志”为“1-有效”,则“账户类型”必须为“R2”，否则此记录不能入库；  ', null, 'BUSI', 'DATA_ID', null, null, 'Y', null, null, null, null, null, null, null, null, null, null, null, null, null, ' select 1
  from (select case
                 when count(*) > 0 and :OPETN_TYPE = ''11'' and :FLAG = ''1''then
                  0
                 else
                  1
               end as tcnt
          from (select *
                  from mbt_210
                 where MBT_210.B_ACCT_CODE = :ACCT_CODE
                   and MBT_210.B_ACCT_TYPE <> ''R2'' ))
 where tcnt = 1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'mbtrule', '1');

	

 --若“事件类型”为“11-信用卡因调整账单日本月不出单”且“生效标志”为“1-有效”：
 --MBT_215R2151202 _02 新增
 --“发生月份”不能存在月度表现信息段，否则此记录不能入库
 --新增map
insert into gp_Qc_rule_map (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_SET_ID, RULE_ID, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_215R2151202 _02', '20191210', 'TESTCORP', '72', '002', null, null, 'MBT_215_2019020501', 'MBT_215R2151202 _02', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'mbtrule', null);
--新增rule
insert into gp_qc_rule (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_215R2151202 _02', '20191206', 'TESTCORP', '72', '002', null, null, '若“事件类型”为“11-信用卡因调整账单日本月不出单”且“生效标志”为“1-有效”,则 “发生月份”不能存在月度表现信息段，否则此记录不能入库； ', '若“事件类型”为“11-信用卡因调整账单日本月不出单”且“生效标志”为“1-有效”,则 “发生月份”不能存在月度表现信息段，否则此记录不能入库； ', null, 'BUSI', 'DATA_ID', null, null, 'Y', null, null, null, null, null, null, null, null, null, null, null, null, null, 'select 1
  from (select case
                 when count(*) > 0 and :OPETN_TYPE = ''11'' and :FLAG = ''1''then
                  0
                 else
                  1
               end as tcnt
          from (select *
                  from mbt_210
                 where MBT_210.B_ACCT_CODE = :ACCT_CODE
                   and substr(MBT_210.H_MONTH,0,6) = substr(:MONTH,0,6) ))
 where tcnt = 1
 ', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'mbtrule', '1');

 
 
 
  --若“事件类型”为“11-信用卡因调整账单日本月不出单”且“生效标志”为“1-有效”：
 --MBT_215R2151202 _03 新增
 --该记录的信息报告日期晚于该账户的最新的信息报告日期，则最新“账户状态”必 须不为“4-销户”，否则此记录不能入库；
 --gp_qc_rule_map
 insert into gp_qc_rule_map (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_SET_ID, RULE_ID, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_215R2151202 _03', '20191210', 'TESTCORP', '72', '002', null, null, 'MBT_215_2019020501', 'MBT_215R2151202 _03', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'mbtrule', null);

 --gp_qc_rule
insert into gp_qc_rule (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_215R2151202 _03', '20191206', 'TESTCORP', '72', '002', null, null, '若“事件类型”为“11-信用卡因调整账单日本月不出单”且“生效标志”为“1-有效”，该记录的信息报告日期晚于该账户的最新的信息报告日期，则最新“账户状态”必 须不为“4-销户”，否则此记录不能入库； ', '若“事件类型”为“11-信用卡因调整账单日本月不出单”且“生效标志”为“1-有效”，该记录的信息报告日期晚于该账户的最新的信息报告日期，则最新“账户状态”必 须不为“4-销户”，否则此记录不能入库； ', null, 'BUSI', 'DATA_ID', null, null, 'Y', null, null, null, null, null, null, null, null, null, null, null, null, null, ' select 1
  from (select case
                 when count(*) > 0 and :OPETN_TYPE = ''11'' and :FLAG = ''1''then
                  0
                 else
                  1
               end as tcnt
          from (select *
                  from mbt_210
                 where MBT_210.B_ACCT_CODE = :ACCT_CODE
                   and MBT_210.B_RPT_DATE < :RPT_DATE
                   and MBT_210.H_ACCT_STATUS = ''4''))
 where tcnt = 1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'mbtrule', '1');


 
  --若“事件类型”为“11-信用卡因调整账单日本月不出单”且“生效标志”为“1-有效”：
 --MBT_215R2151202 _04 新增
 -- 若“发生月份”处于销户月与下一个重启月之间，则此记录不能入库；





 
  --若“事件类型”为“11-信用卡因调整账单日本月不出单”且“生效标志”为“1-有效”：
 --MBT_215R2151202 _05 新增
 --库中不能存在“账户标识码+事件类型+发生月份+生效标识”相同的特殊事件说明记 录，否则此记录不能入库。 
 --gp_qc_rule_map
insert into gp_qc_rule_map (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_SET_ID, RULE_ID, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_215R2151202 _05', '20191210', 'TESTCORP', '72', '002', null, null, 'MBT_215_2019020501', 'MBT_215R2151202 _05', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'mbtrule', null);
--gp_qc_rule
insert into gp_qc_rule (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_215R2151202 _05', '20191206', 'TESTCORP', '72', '002', null, null, '若“事件类型”为“11-信用卡因调整账单日本月不出单”且“生效标志”为“1-有效”，则库中不能存在“账户标识码+事件类型+发生月份+生效标识”相同的特殊事件说明记 录，否则此记录不能入库', '若“事件类型”为“11-信用卡因调整账单日本月不出单”且“生效标志”为“1-有效”，则库中不能存在“账户标识码+事件类型+发生月份+生效标识”相同的特殊事件说明记 录，否则此记录不能入库', null, 'BUSI', 'DATA_ID', null, null, 'Y', null, null, null, null, null, null, null, null, null, null, null, null, null, ' select 1
  from (select case
                 when count(*) > 0  and :OPETN_TYPE = ''11'' and :FLAG = ''1'' then
                  0
                 else
                  1
               end as tcnt
          from (select *
                  from mbt_215_rpt
                 where MBT_215_rpt.ACCT_CODE = :ACCT_CODE
                   and MBT_215_rpt.OPETN_TYPE = :OPETN_TYPE
                   and MBT_215_rpt.FLAG = :FLAG
           and MBT_215_rpt.MONTH = :MONTH))
 where tcnt = 1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'mbtrule', '1');



 
 --若“事件类型”为“12-已注销信用卡账户重启”且“生效标志”为“1-有效”： 
 --“账户类型”必须为“R2”， 否则该记录不能入库
 --MBT_215R2151203_01 新增
 --gp_qc_rule_map
insert into gp_qc_rule_map (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_SET_ID, RULE_ID, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_215R2151203_01', '20191210', 'TESTCORP', '72', '002', null, null, 'MBT_215_2019020501', 'MBT_215R2151203_01', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'mbtrule', null);
--gp_qc_rule
insert into gp_qc_rule (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_215R2151203_01', '20191206', 'TESTCORP', '72', '002', null, null, '若“事件类型”为“12-已注销信用卡账户重启”且“生效标志”为“1-有效”,“账户类型”必须为“R2”， 否则该记录不能入库； ', '若“事件类型”为“12-已注销信用卡账户重启”且“生效标志”为“1-有效”,“账户类型”必须为“R2”， 否则该记录不能入库； ', null, 'BUSI', 'DATA_ID', null, null, 'Y', null, null, null, null, null, null, null, null, null, null, null, null, null, 'select 1
  from (select case
                 when count(*) > 0 and :OPETN_TYPE = ''12'' and :FLAG = ''1''then
                  0
                 else
                  1
               end as tcnt
          from (select *
                  from mbt_210
                 where MBT_210.B_ACCT_CODE = :ACCT_CODE
                   and MBT_210.B_ACCT_TYPE <> ''R2'' ))
 where tcnt = 1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'mbtrule', '1');


 
 
 --若“事件类型”为“12-已注销信用卡账户重启”且“生效标志”为“1-有效”：
 -- 该账户的最新的“账户状态”必须是“4-销户”，否则该记录不能入库
  --MBT_215R2151203_02 新增
  --gp_qc_rule_map
insert into gp_qc_rule_map (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_SET_ID, RULE_ID, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_215R2151203_02', '20191210', 'TESTCORP', '72', '002', null, null, 'MBT_215_2019020501', 'MBT_215R2151203_02', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'mbtrule', null);
--gp_qc_rule
insert into gp_qc_rule (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_215R2151203_02', '20191206', 'TESTCORP', '72', '002', null, null, '若“事件类型”为“12-已注销信用卡账户重启”且“生效标志”为“1-有效”,该账户的最新的“账户状态”必须是“4-销户”，否则该记录不能入库； ', '若“事件类型”为“12-已注销信用卡账户重启”且“生效标志”为“1-有效”,该账户的最新的“账户状态”必须是“4-销户”，否则该记录不能入库； ', null, 'BUSI', 'DATA_ID', null, null, 'Y', null, null, null, null, null, null, null, null, null, null, null, null, null, '  select 1
  from (select case
                 when count(*) > 0 and :OPETN_TYPE = ''12'' and :FLAG = ''1''then
                  0
                 else
                  1
               end as tcnt
          from (select *
                  from mbt_210
                 where MBT_210.B_ACCT_CODE = :ACCT_CODE
                   and MBT_210.H_ACCT_STATUS <> ''4''))
 where tcnt = 1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'mbtrule', '1');

  

 
 --若“事件类型”为“12-已注销信用卡账户重启”且“生效标志”为“1-有效”：
 -- “发生月份”必须晚于账户最新的月度表现信息段的“月份”，否则该记录不能入库。
  --MBT_215R2151203_03 新增
  --gp_qc_rule_map
insert into gp_qc_rule_map (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_SET_ID, RULE_ID, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_215R2151203_03', '20191210', 'TESTCORP', '72', '002', null, null, 'MBT_215_2019020501', 'MBT_215R2151203_03', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'mbtrule', null);
--gp_qc_rule
insert into gp_qc_rule (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_215R2151203_03', '20191206', 'TESTCORP', '72', '002', null, null, '若“事件类型”为“12-已注销信用卡账户重启”且“生效标志”为“1-有效”,“发生月份”必须晚于账户最新的月度表现信息段的“月份”，否则该记录不能入库。
 ', '若“事件类型”为“12-已注销信用卡账户重启”且“生效标志”为“1-有效”,“发生月份”必须晚于账户最新的月度表现信息段的“月份”，否则该记录不能入库。
 ', null, 'BUSI', 'DATA_ID', null, null, 'Y', null, null, null, null, null, null, null, null, null, null, null, null, null, '   select 1
  from (select case
                 when count(*) > 0  and :OPETN_TYPE = ''12'' and :FLAG = ''1'' then
                  0
                 else
                  1
               end as tcnt
          from (select *
                  from mbt_210
                 where mbt_210.B_ACCT_CODE = :ACCT_CODE
                   and mbt_210.H_MONTH >= :MONTH))
 where tcnt = 1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'mbtrule', '1');



  

 
 --若“事件类型”为“12-已注销信用卡账户重启”且“生效标志”为“1-有效”： 
 -- 库中不能存在“账户标识码+事件类型+发生月份+生效标识”相同的特殊事件说明记 录，否则该记录不能入库
  --MBT_215R2151203_04 新增
  --gp_qc_rule_map
insert into gp_qc_rule_map (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_SET_ID, RULE_ID, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_215R2151203_04', '20191210', 'TESTCORP', '72', '002', null, null, 'MBT_215_2019020501', 'MBT_215R2151203_04', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'mbtrule', null);
--gp_qc_rule
insert into gp_qc_rule (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_215R2151203_04', '20191206', 'TESTCORP', '72', '002', null, null, '若“事件类型”为“12-已注销信用卡账户重启”且“生效标志”为“1-有效”,库中不能存在“账户标识码+事件类型+发生月份+生效标识”相同的特殊事件说明记 录，否则该记录不能入库。 ', '若“事件类型”为“12-已注销信用卡账户重启”且“生效标志”为“1-有效”,库中不能存在“账户标识码+事件类型+发生月份+生效标识”相同的特殊事件说明记 录，否则该记录不能入库。 ', null, 'BUSI', 'DATA_ID', null, null, 'Y', null, null, null, null, null, null, null, null, null, null, null, null, null, ' select 1
  from (select case
                 when count(*) > 0  and :OPETN_TYPE = ''12'' and :FLAG = ''1'' then
                  0
                 else
                  1
               end as tcnt
          from (select *
                  from mbt_215_rpt
                 where MBT_215_rpt.ACCT_CODE = :ACCT_CODE
                   and MBT_215_rpt.OPETN_TYPE = :OPETN_TYPE
                   and MBT_215_rpt.FLAG = :FLAG
           and MBT_215_rpt.MONTH = :MONTH))
 where tcnt = 1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'mbtrule', '1');



--若“事件类型”为“21-转出”且“生效标志”为“1-有效”：
--该账户的“账户类型”必须为“D1”，否则该记录不能入库。
--MBT_215R2151204_01 
--新增map
insert into gp_qc_rule_map (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_SET_ID, RULE_ID, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_215R2151204_01', '20191210', 'TESTCORP', '72', '002', null, null, 'MBT_215_2019020501', 'MBT_215R2151204_01', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'mbtrule', null);
--新增rule
insert into gp_qc_rule (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_215R2151204_01', '20191210', 'TESTCORP', '72', '002', null, null, '若“事件类型”为“21-转出”且“生效标志”为“1-有效,该账户的“账户类型”必须为“D1”，否则该记录不能入库', '若“事件类型”为“21-转出”且“生效标志”为“1-有效,该账户的“账户类型”必须为“D1”，否则该记录不能入库', null, 'BUSI', 'DATA_ID', null, null, 'Y', null, null, null, null, null, null, null, null, null, null, null, null, null, 'select 1
  from (select case
                 when count(*) > 0 and :OPETN_TYPE = ''21'' and :FLAG = ''1''then
                  0
                 else
                  1
               end as tcnt
          from (select *
                  from mbt_210
                 where MBT_210.B_ACCT_CODE = :ACCT_CODE
                   and MBT_210.B_ACCT_TYPE <> ''D1'' ))
 where tcnt = 1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'mbtrule', '1');

--若“事件类型”为“21-转出”且“生效标志”为“1-有效”：
--该记录的信息报告日期必须晚于库中最新的信息记录，否则不能入库。
--MBT_215R2151204_02
--新增map
insert into gp_qc_rule_map (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_SET_ID, RULE_ID, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_215R2151204_02', '20191210', 'TESTCORP', '72', '002', null, null, 'MBT_215_2019020501', 'MBT_215R2151204_02', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'mbtrule', null);
--新增rule
insert into gp_qc_rule (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_215R2151204_02', '20191210', 'TESTCORP', '72', '002', null, null, '若“事件类型”为“21-转出”且“生效标志”为“1-有效”,该记录的信息报告日期必须晚于库中最新的信息记录，否则不能入库', '若“事件类型”为“21-转出”且“生效标志”为“1-有效”,该记录的信息报告日期必须晚于库中最新的信息记录，否则不能入库', null, 'BUSI', 'DATA_ID', null, null, 'Y', null, null, null, null, null, null, null, null, null, null, null, null, null, 'select 1
  from (select case
                 when count(*) > 0 and :OPETN_TYPE = ''21'' and :FLAG = ''1''then
                  0
                 else
                  1
               end as tcnt
          from (select *
                  from mbt_210
                 where MBT_210.B_ACCT_CODE = :ACCT_CODE
                   and MBT_210.B_RPT_DATE >= :RPT_DATE))
 where tcnt = 1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'mbtrule', '1');


--若“事件类型”为“21-转出”且“生效标志”为“1-有效”：
--该账户的最新账户状态必须不为“3-关闭”，否则该记录不能入库。
--MBT_215R2151204_03
--新增map
insert into gp_qc_rule_map (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_SET_ID, RULE_ID, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_215R2151204_03', '20191210', 'TESTCORP', '72', '002', null, null, 'MBT_215_2019020501', 'MBT_215R2151204_03', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'mbtrule', null);
--新增rule
insert into gp_qc_rule (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_215R2151204_03', '20191210', 'TESTCORP', '72', '002', null, null, '若“事件类型”为“21-转出”且“生效标志”为“1-有效,该账户的最新账户状态必须不为“3-关闭”，否则该记录不能入库。 ', '若“事件类型”为“21-转出”且“生效标志”为“1-有效,该账户的最新账户状态必须不为“3-关闭”，否则该记录不能入库。 ', null, 'BUSI', 'DATA_ID', null, null, 'Y', null, null, null, null, null, null, null, null, null, null, null, null, null, 'select 1
  from (select case
                 when count(*) > 0 and :OPETN_TYPE = ''21'' and :FLAG = ''1''then
                  0
                 else
                  1
               end as tcnt
          from (select *
                  from mbt_210
                 where MBT_210.B_ACCT_CODE = :ACCT_CODE
                   and MBT_210.H_ACCT_STATUS = ''3''))
 where tcnt = 1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'mbtrule', '1');


--若“事件类型”为“21-转出”且“生效标志”为“1-有效”：
--“发生月份”必须等于最新的月度表现信息段的“月份”的次月，否则该记录不能 入库
--MBT_215R2151204_04
--新增map
insert into gp_qc_rule_map (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_SET_ID, RULE_ID, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_215R2151204_04', '20191210', 'TESTCORP', '72', '002', null, null, 'MBT_215_2019020501', 'MBT_215R2151204_04', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'mbtrule', null);
--新增rule
insert into gp_qc_rule (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_215R2151204_04', '20191210', 'TESTCORP', '72', '002', null, null, '若“事件类型”为“21-转出”且“生效标志”为“1-有效,“发生月份”必须等于最新的月度表现信息段的“月份”的次月，否则该记录不能 入库。 ', '若“事件类型”为“21-转出”且“生效标志”为“1-有效,“发生月份”必须等于最新的月度表现信息段的“月份”的次月，否则该记录不能 入库。 ', null, 'BUSI', 'DATA_ID', null, null, 'Y', null, null, null, null, null, null, null, null, null, null, null, null, null, 'select 1
  from (select case
                 when count(*) > 0 and :OPETN_TYPE = ''21'' and :FLAG = ''1''then
                  0
                 else
                  1
               end as tcnt
          from (select *
                  from mbt_210
                 where MBT_210.B_ACCT_CODE = :ACCT_CODE
                   and to_date(MBT_210.H_MONTH,''yyyymm'') <> add_months(to_date(:MONTH,''yyyymm''),-1)))
 where tcnt = 1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'mbtrule', '1');



--若“事件类型”为“21-转出”且“生效标志”为“1-有效”：
--库中不能存在“账户标识码+事件类型+发生月份+生效标识”相同的特殊事件说明记 录，否则该记录不能入库。 
--MBT_215R2151204_05
--新增map
insert into gp_qc_rule_map (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_SET_ID, RULE_ID, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_215R2151204_05', '20191210', 'TESTCORP', '72', '002', null, null, 'MBT_215_2019020501', 'MBT_215R2151204_05', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'mbtrule', null);
--新增rule
insert into gp_qc_rule (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_215R2151204_05', '20191210', 'TESTCORP', '72', '002', null, null, '若“事件类型”为“21-转出”且“生效标志”为“1-有效,库中不能存在“账户标识码+事件类型+发生月份+生效标识”相同的特殊事件说明记 录，否则该记录不能入库。 ', '若“事件类型”为“21-转出”且“生效标志”为“1-有效,库中不能存在“账户标识码+事件类型+发生月份+生效标识”相同的特殊事件说明记 录，否则该记录不能入库。 ', null, 'BUSI', 'DATA_ID', null, null, 'Y', null, null, null, null, null, null, null, null, null, null, null, null, null, 'select 1
  from (select case
                 when count(*) > 0  and :OPETN_TYPE = ''21'' and :FLAG = ''1'' then
                  0
                 else
                  1
               end as tcnt
          from (select *
                  from mbt_215_rpt
                 where MBT_215_rpt.ACCT_CODE = :ACCT_CODE
                   and MBT_215_rpt.OPETN_TYPE = :OPETN_TYPE
                   and MBT_215_rpt.FLAG = :FLAG
           and MBT_215_rpt.MONTH = :MONTH))
 where tcnt = 1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'mbtrule', '1');

--若“生效标志”为“0-无效”： 
--“账户标识码+事件类型+发生月份”对应的“生效标志”为“1-有效”的特殊事件说明记录必须库中存在，否则该记录不能入库。
--MBT_215R2151205_01  新增
--新增map
insert into gp_qc_rule_map (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_SET_ID, RULE_ID, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_215R2151205_01', '20191210', 'TESTCORP', '72', '002', null, null, 'MBT_215_2019020501', 'MBT_215R2151205_01', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'mbtrule', null);
--新增rule
insert into gp_qc_rule (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_215R2151205_01', '20191206', 'TESTCORP', '72', '002', null, null, '若“生效标志”为“0-无效”,“账户标识码+事件类型+发生月份”对应的“生效标志”为“1-有效”的特殊事件 说明记录必须库中存在，否则该记录不能入库。', '若“生效标志”为“0-无效”,“账户标识码+事件类型+发生月份”对应的“生效标志”为“1-有效”的特殊事件 说明记录必须库中存在，否则该记录不能入库。', null, 'BUSI', 'DATA_ID', null, null, 'Y', null, null, null, null, null, null, null, null, null, null, null, null, null, 'select 1
  from (select case
                 when count(*) = 0 and :FLAG = ''0'' then
                  0
                 else
                  1
               end as tcnt
          from (select *
                  from mbt_215_rpt
                 where MBT_215_rpt.ACCT_CODE = :ACCT_CODE
                   and MBT_215_rpt.OPETN_TYPE = :OPETN_TYPE
           and MBT_215_rpt.FLAG = ''1''
           and MBT_215_rpt.MONTH = :MONTH))
 where tcnt = 1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'mbtrule', '1');


--若“生效标志”为“0-无效”： 
--“事件类型”为“12-已注销信用卡账户重启”，若存在更新的月度表现信息（即“月 份”晚于该记录的“发生月份”），则该记录不能入库。 
--MBT_215R2151205_02  新增
--新增map
insert into gp_qc_rule_map (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_SET_ID, RULE_ID, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_215R2151205_02', '20191210', 'TESTCORP', '72', '002', null, null, 'MBT_215_2019020501', 'MBT_215R2151205_02', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'mbtrule', null);
--新增rule
insert into gp_qc_rule (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_215R2151205_02', '20191206', 'TESTCORP', '72', '002', null, null, '若“生效标志”为“0-无效”,“事件类型”为“12-已注销信用卡账户重启”，若存在更新的月度表现信息（即“月 份”晚于该记录的“发生月份”），则该记录不能入库。', '若“生效标志”为“0-无效”,“事件类型”为“12-已注销信用卡账户重启”，若存在更新的月度表现信息（即“月 份”晚于该记录的“发生月份”），则该记录不能入库。', null, 'BUSI', 'DATA_ID', null, null, 'Y', null, null, null, null, null, null, null, null, null, null, null, null, null, ' select 1
  from (select case
                 when count(*) > 0 and :FLAG = ''0'' then
                  0
                 else
                  1
               end as tcnt
          from (select *
                  from mbt_210
                 where :OPETN_TYPE = ''12''
         and MBT_210.B_ACCT_CODE = :ACCT_CODE
                  and mbt_210.H_MONTH > :MONTH))
 where tcnt = 1
 ', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'mbtrule', '1');





COMMIT;









