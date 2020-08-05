--CE-91
--更改CMP_VALID_FORM_CFG表中的FUNCID
update CMP_VALID_FORM_CFG set FUNC_ID = '20170121' where FORM_NAME = 'MBT_130';
--更改CMP_VALID_FORM_LIST表中的FUNCID
update CMP_VALID_FORM_LIST set FUNC_ID = '20170121' where FORM_NAME = 'MBT_130';
--gp_qc_rule_set
update gp_qc_rule_set set MODULE = '20170121' where ENTITY = 'MBT_130';

--修改MBT_130R130120101R130120101
update gp_qc_rule set sql='
select 1
  from (select count(*) as tcnt
          FROM MBT_130_RPT,MBT_130
         WHERE ((MBT_130_RPT.NAME = MBT_130.NAME) AND
               ((MBT_130_RPT.ID_TYPE = MBT_130.ID_TYPE) AND
               ((MBT_130_RPT.ID_NUM = MBT_130.ID_NUM) AND
               ((MBT_130_RPT.INF_SURC_CODE = MBT_130.INF_SURC_CODE) AND
               ((MBT_130_RPT.RPT_DATE <= MBT_130.RPT_DATE) ))))))
 where tcnt = 0' where data_id = 'MBT_130R130120101R130120101';
 
 
 --MBT_130_I0000401_01
 insert into gp_qc_rule_map (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_SET_ID, RULE_ID, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_130_I0000401_01', '20191204', 'TESTCORP', '72', '002', null, null, 'MBT_130_20170131', 'MBT_130_I0000401_01', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'mbtrule', null);

insert into gp_qc_rule (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_130_I0000401_01', '20191204', 'TESTCORP', '72', '002', null, null, '公民身份证号码则应符合如下规则：
长度必须为 18 位； 前 17 位为数字，第 18 位可为数字或字母“X” 、 “x” ；  ?
 第 7-14 位为出生日期，日期必须在 19010101-20991231 之间； ? 
 校验位必须满足校验规则（参见国标《公民身份号码》（GB 11643-1999））。 ', '公民身份证号码则应符合如下规则：
长度必须为 18 位； 前 17 位为数字，第 18 位可为数字或字母“X” 、 “x” ；  ?
 第 7-14 位为出生日期，日期必须在 19010101-20991231 之间； ? 
 校验位必须满足校验规则（参见国标《公民身份号码》（GB 11643-1999））。 ', null, 'BUSI', 'DATA_ID', null, null, 'Y', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'if(ID_TYPE=="10"){
	def aRegex = /^[1-9]\d{5}(190[1-9]|19[1-9][0-9]|20[0-9]{2})((0[1-9])|(10|11|12))(([0-2][1-9])|10|20|30|31)\d{3}[0-9Xx]$/
def matcher = ID_NUM =~ aRegex
matcher.matches()
if(matcher.getCount()==1){
		return  true
}else{
		return  false
}

}
return true', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'mbtrule', '1');

--MBT_130_I0000401_02
insert into gp_qc_rule_map (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_SET_ID, RULE_ID, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_130_I0000401_02', '20191204', 'TESTCORP', '72', '002', null, null, 'MBT_130_20170131', 'MBT_130_I0000401_02', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'mbtrule', null);

insert into gp_qc_rule (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_130_I0000401_02', '20191204', 'TESTCORP', '72', '002', null, null, '护照的证件号码应符合如下规则：  ? 
最多 12 位； ? 
前 3 位为国籍代码。 ', '护照的证件号码应符合如下规则：  ? 
最多 12 位； ? 
前 3 位为国籍代码。 ', null, 'BUSI', 'DATA_ID', null, null, 'Y', null, null, null, null, null, null, null, null, null, null, null, null, null, 'select 1
  from (select case
                 when count(1) > 0 OR TRIM(:MBT_130_ID_TYPE) != ''2'' then
                  1
                 else
                  0
               end tcnt
          from GP_BM_DATA_DIC
         WHERE data_type_no = ''19241''
           AND data_no = SUBSTR(:MBT_130_ID_NUM, 0, 3)
           AND length(nvl(:MBT_130_ID_NUM, '''')) <= 12
           AND TRIM(:MBT_130_ID_TYPE) = ''2'')
 where tcnt = 1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'mbtrule', '1');

--MBT_130_I0000401_03
insert into gp_qc_rule_map (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_SET_ID, RULE_ID, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_130_I0000401_03', '20191204', 'TESTCORP', '72', '002', null, null, 'MBT_130_20170131', 'MBT_130_I0000401_03', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'mbtrule', null);

insert into gp_qc_rule (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_130_I0000401_03', '20191204', 'TESTCORP', '72', '002', null, null, '“港澳居民往来大陆通行证”的证件号码应符合如下规则： ? 
长度必须为 9 位或 11 位； ? 
第一位为字母“H”或“M”，后 8 位或 10 位必须为数字。 ', '“港澳居民往来大陆通行证”的证件号码应符合如下规则： ? 
长度必须为 9 位或 11 位； ? 
第一位为字母“H”或“M”，后 8 位或 10 位必须为数字。 ', null, 'BUSI', 'DATA_ID', null, null, 'Y', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'if(ID_TYPE=="5 "){
          def aRegex = /^H(\d{8}$|\d{10}$)|^M(\d{8}$|\d{10}$)/
          def matcher = ID_NUM =~ aRegex
          matcher.matches()
          if(matcher.getCount()==1){
                return  true
          }else{
                return  false
          }

      }
     return  true', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'mbtrule', '1');

--MBT_130_I0000401_04
insert into gp_qc_rule_map (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_SET_ID, RULE_ID, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_130_I0000401_04', '20191204', 'TESTCORP', '72', '002', null, null, 'MBT_130_20170131', 'MBT_130_I0000401_04', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'mbtrule', null);

insert into gp_qc_rule (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_130_I0000401_04', '20191204', 'TESTCORP', '72', '002', null, null, '“台湾居民往来大陆通行证”的证件号码应符合如下规则： ? 
长度必须为 8 位或 10-14 位； ? 
8 位证件必须为 8 位数字；10-14 位证件，前 10 位必须为数字，其后若只有 3 位则应为“ （”+字母+“） ” ，若有 4 位则应为“ （”+两位数字+“） ” ', '“台湾居民往来大陆通行证”的证件号码应符合如下规则： ? 
长度必须为 8 位或 10-14 位； ? 
8 位证件必须为 8 位数字；10-14 位证件，前 10 位必须为数字，其后若只有 3 位则应为“ （”+字母+“） ” ，若有 4 位则应为“ （”+两位数字+“） ” ', null, 'BUSI', 'DATA_ID', null, null, 'Y', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'if(ID_TYPE=="6 "){
          def aRegex = /(^\d{8}$)|(^\d{10}\([A-Za-z]\)$)|(^\d{10}\(\d{2}\)$)/
          def matcher = ID_NUM =~ aRegex
          matcher.matches()
          if(matcher.getCount()==1){
                return  true
          }else{
                return  false
          }

          }
      return true', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'mbtrule', '1');

--MBT_130_I0000601_03
insert into gp_qc_rule_map (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_SET_ID, RULE_ID, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_130_I0000601_03', '20191204', 'TESTCORP', '72', '002', null, null, 'MBT_130_20170131', 'MBT_130_I0000601_03', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'mbtrule', null);

insert into gp_qc_rule (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_130_I0000601_03', '20191204', 'TESTCORP', '72', '002', null, null, '信息报告日期必须是有效日期：1901-01-01—2099-12-31', '信息报告日期必须是有效日期：1901-01-01—2099-12-31', null, 'BUSI', 'DATA_ID', null, null, 'Y', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'String str =MBT_130_RPT_DATE
def reg = /^(?:19|20)[0-9][0-9](?:(?:0[1-9])|(?:1[0-2]))(?:(?:[0-2][1-9])|(?:[1-3][0-1]))$/;
def matcher = str =~ reg;
        matcher.matches()
        if(matcher.getCount()==0){
            return false
        }
return true', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

--MBT_130_I0000601_02
insert into gp_qc_rule_map (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_SET_ID, RULE_ID, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_130_I0000601_02', '20191204', 'TESTCORP', '72', '002', null, null, 'MBT_130_20170131', 'MBT_130_I0000601_02', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'mbtrule', null);

insert into gp_qc_rule (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_130_I0000601_02', '20191204', 'TESTCORP', '72', '002', null, null, '终止日期必须是有效日期：1901-01-01—2099-12-31', '终止日期必须是有效日期：1901-01-01—2099-12-31', null, 'BUSI', 'DATA_ID', null, null, 'Y', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'String str =MBT_130_ID_DUE_DATE
def reg = /^(?:19|20)[0-9][0-9](?:(?:0[1-9])|(?:1[0-2]))(?:(?:[0-2][1-9])|(?:[1-3][0-1]))$/;
def matcher = str =~ reg;
        matcher.matches()
        if(matcher.getCount()==0){
            return false
        }
return true', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

--MBT_130_I0000601_01
insert into gp_qc_rule_map (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_SET_ID, RULE_ID, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_130_I0000601_01', '20191204', 'TESTCORP', '72', '002', null, null, 'MBT_130_20170131', 'MBT_130_I0000601_01', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'mbtrule', null);

insert into gp_qc_rule (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_130_I0000601_01', '20191204', 'TESTCORP', '72', '002', null, null, '起始日期必须是有效日期：1901-01-01—2099-12-31', '起始日期必须是有效日期：1901-01-01—2099-12-31', null, 'BUSI', 'DATA_ID', null, null, 'Y', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'String str =MBT_130_ID_EFCT_DATE
def reg = /^(?:19|20)[0-9][0-9](?:(?:0[1-9])|(?:1[0-2]))(?:(?:[0-2][1-9])|(?:[1-3][0-1]))$/;
def matcher = str =~ reg;
        matcher.matches()
        if(matcher.getCount()==0){
            return false
        }
return true', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

--MBT_130_I0000501
insert into gp_qc_rule_map (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_SET_ID, RULE_ID, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_130_I0000501', '20191204', 'TESTCORP', '72', '002', null, null, 'MBT_130_20170131', 'MBT_130_I0000501', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'mbtrule', null);

insert into gp_qc_rule (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_130_I0000501', '20191204', 'TESTCORP', '72', '002', null, null, '信息记录中的“信息报告日期”应不早于同一条记录中证件有效期起始日期', '信息记录中的“信息报告日期”应不早于同一条记录中证件有效期起始日期', null, 'BUSI', 'DATA_ID', null, null, 'Y', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, ' if (MBT_130_ID_EFCT_DATE<=MBT_130_RPT_DATE) {
        return true
    }
    return false
  ', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);



--MBT_130_RPT_DATE
insert into gp_qc_rule_map (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_SET_ID, RULE_ID, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_130_RPT_DATE', '20191204', 'TESTCORP', '72', '002', null, null, 'MBT_130_20170131', 'MBT_130_RPT_DATE', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'mbtrule', null);

insert into gp_qc_rule (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_130_RPT_DATE', '20191204', 'TESTCORP', '72', '002', null, null, '信息报告日期', '信息报告日期必须为数字;长度在8~8之间;', null, 'ELEMENT', 'RPT_DATE', '信息报告日期', 'R', 'N', 'NUMBER', null, 8, 8, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'mbtrule', '1');


--MBT_130_INF_SURC_CODE
insert into gp_qc_rule_map (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_SET_ID, RULE_ID, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_130_INF_SURC_CODE', '20191204', 'TESTCORP', '72', '002', null, null, 'MBT_130_20170131', 'MBT_130_INF_SURC_CODE', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'mbtrule', null);

insert into gp_qc_rule (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_130_INF_SURC_CODE', '20200721', 'TESTCORP', '72', '002', null, null, '信息来源编码', '信息来源编码必须为数字英文字母;长度在14~20之间;', null, 'ELEMENT', 'INF_SURC_CODE', '信息来源编码', 'R', 'N', 'ALPHA_NUMBER', null, 14, 20, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'mbtrule', '1');

--MBT_130_CIMOC
insert into gp_qc_rule_map (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_SET_ID, RULE_ID, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_130_CIMOC', '20191204', 'TESTCORP', '72', '002', null, null, 'MBT_130_20170131', 'MBT_130_CIMOC', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'mbtrule', null);

insert into gp_qc_rule (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_130_CIMOC', '20191204', 'TESTCORP', '72', '002', null, null, '客户资料维护机构代码', '客户资料维护机构代码必须为数字英文字母;长度在14~14之间;', null, 'ELEMENT', 'CIMOC', '客户资料维护机构代码', 'R', 'N', 'ALPHA_NUMBER', null, 14, 14, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'mbtrule', '1');

--MBT_130_ID_DIST
insert into gp_qc_rule_map (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_SET_ID, RULE_ID, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_130_ID_DIST', '20191204', 'TESTCORP', '72', '002', null, null, 'MBT_130_20170131', 'MBT_130_ID_DIST', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'mbtrule', null);

insert into gp_qc_rule (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_130_ID_DIST', '20191204', 'TESTCORP', '72', '002', null, null, '证件签发机关所在地行政区划', '证件签发机关所在地行政区划数字英文字母组成，长度在6~6位之间', null, 'ELEMENT', 'ID_DIST', '证件签发机关所在地行政区划', 'R', 'Y', 'ALPHA_NUMBER', null, 6, 6, null, null, null, null, null, null, null, 'GP_BM_DATA_DIC', '19242', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'mbtrule', '1');

--MBT_130_ID_ORG_NAME
insert into gp_qc_rule_map (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_SET_ID, RULE_ID, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_130_ID_ORG_NAME', '20191204', 'TESTCORP', '72', '002', null, null, 'MBT_130_20170131', 'MBT_130_ID_ORG_NAME', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'mbtrule', null);

insert into gp_qc_rule (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_130_ID_ORG_NAME', '20191204', 'TESTCORP', '72', '002', null, null, '	证件签发机关名称', '	证件签发机关名称必须为数字英文字母汉字组成，长度在1~80之间', null, 'ELEMENT', 'ID_ORG_NAME', '	证件签发机关名称', 'R', 'Y', null, null, 1, 80, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'mbtrule', '1');


--MBT_130_ID_DUE_DATE
insert into gp_qc_rule_map (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_SET_ID, RULE_ID, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_130_ID_DUE_DATE', '20191204', 'TESTCORP', '72', '002', null, null, 'MBT_130_20170131', 'MBT_130_ID_DUE_DATE', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'mbtrule', null);

insert into gp_qc_rule (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_130_ID_DUE_DATE', '20191204', 'TESTCORP', '72', '002', null, null, '证件有效期终止日期', '证件有效期终止日期必须为数字;长度在8~8之间;', null, 'ELEMENT', 'ID_DUE_DATE', '证件有效期终止日期', 'R', 'N', 'NUMBER', null, 8, 8, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'mbtrule', '1');

--MBT_130_ID_EFCT_DATE
insert into gp_qc_rule_map (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_SET_ID, RULE_ID, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_130_ID_EFCT_DATE', '20191204', 'TESTCORP', '72', '002', null, null, 'MBT_130_20170131', 'MBT_130_ID_EFCT_DATE', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'mbtrule', null);

insert into gp_qc_rule (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_130_ID_EFCT_DATE', '20191204', 'TESTCORP', '72', '002', null, null, '证件有效期起始日期', '证件有效期起始日期必须为数字;长度在8~8之间;', null, 'ELEMENT', 'ID_EFCT_DATE', '证件有效期起始日期', 'R', 'N', 'NUMBER', null, 8, 8, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'mbtrule', '1');

--MBT_130_ID_NUM
insert into gp_qc_rule_map (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_SET_ID, RULE_ID, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_130_ID_NUM', '20191204', 'TESTCORP', '72', '002', null, null, 'MBT_130_20170131', 'MBT_130_ID_NUM', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'mbtrule', null);

insert into gp_qc_rule (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_130_ID_NUM', '20191204', 'TESTCORP', '72', '002', null, null, '证件号码', '证件号码必须为数字英文字母中文;长度在1~20之间;', null, 'ELEMENT', 'ID_NUM', '证件号码', 'R', 'N', null, null, 1, 20, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'mbtrule', '1');

--MBT_130_ID_TYPE
insert into gp_qc_rule_map (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_SET_ID, RULE_ID, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_130_ID_TYPE', '20191204', 'TESTCORP', '72', '002', null, null, 'MBT_130_20170131', 'MBT_130_ID_TYPE', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'mbtrule', null);

insert into gp_qc_rule (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_130_ID_TYPE', '20191204', 'TESTCORP', '72', '002', null, null, '	证件类型', '证件类型必须为数字英文字母;长度在1~2之间;', null, 'ELEMENT', 'ID_TYPE', '	证件类型', 'R', 'N', 'ALPHA_NUMBER', null, 1, 2, null, null, null, null, null, null, null, 'GP_BM_DATA_DIC', '19010', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'mbtrule', '1');

--MBT_130_NAME
insert into gp_qc_rule_map (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_SET_ID, RULE_ID, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_130_NAME', '20191204', 'TESTCORP', '72', '002', null, null, 'MBT_130_20170131', 'MBT_130_NAME', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'mbtrule', null);

insert into gp_qc_rule (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_130_NAME', '20191204', 'TESTCORP', '72', '002', null, null, '
姓名', '姓名必须为数字英文字母中文;长度在1~30之间;', null, 'ELEMENT', 'NAME', '姓名', 'R', 'N', 'ALPHA_NUMBER', null, 1, 30, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'mbtrule', '1');

commit;


