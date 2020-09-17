delete from gp_qc_rule where (script like '%substring%' or script like '%getAt%') and data_id like 'MBT_110%';
delete from gp_qc_rule where (script like '%substring%' or script like '%getAt%') and data_id like 'MBT_130%';
delete from gp_qc_rule where (script like '%substring%' or script like '%getAt%') and data_id like 'MBT_210%';
delete from gp_qc_rule where (script like '%substring%' or script like '%getAt%') and data_id like 'MBT_215%';
delete from gp_qc_rule where (script like '%substring%' or script like '%getAt%') and data_id like 'MBT_220%';
delete from gp_qc_rule where (script like '%substring%' or script like '%getAt%') and data_id like 'MBT_230%';
delete from gp_qc_rule where (script like '%substring%' or script like '%getAt%') and data_id like 'MBT_310%';
delete from gp_qc_rule where (script like '%substring%' or script like '%getAt%') and data_id like 'MBT_410%';
delete from gp_qc_rule where (script like '%substring%' or script like '%getAt%') and data_id like 'MBT_420%';
delete from gp_qc_rule where (script like '%substring%' or script like '%getAt%') and data_id like 'MBT_440%';
delete from gp_qc_rule where (script like '%substring%' or script like '%getAt%') and data_id like 'MBT_510%';
delete from gp_qc_rule where (script like '%substring%' or script like '%getAt%') and data_id like 'MBT_610%';
insert into gp_qc_rule (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, EXISTS_SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_110_CI0000401_1', '20200303', 'TESTCORP', '72', '2', null, null, '其他标识段的公民身份证号码则应符合如下规则：长度必须为18位；前17位为数字，第18位可为数字或字母“X”、“x”；第7-14位为出生日期，日期必须在19010101-20991231之间；校验位必须满足校验规则（参见国标《公民身份号码》（GB11643-1999））。', '其他标识段的公民身份证号码则应符合如下规则：长度必须为18位；前17位为数字，第18位可为数字或字母“X”、“x”；第7-14位为出生日期，日期必须在19010101-20991231之间；校验位必须满足校验规则（参见国标《公民身份号码》（GB11643-1999））。', null, 'BUSI', 'DATA_ID', null, null, 'Y', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 
'if(OTH_ID_TYPE=="10"){
		  def ws = [7,9,10,5,8,4,2,1,6,3,7,9,10,5,8,4,2];
		  def ss = [1,0,''X'',9,8,7,6,5,4,3,2];
		  String str = ''0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ'';
		  def code=OTH_ID_NUM;
		  def aRegex = /^[1-9]\d{5}(190[1-9]|19[1-9][0-9]|20[0-9]{2})((0[1-9])|(10|11|12))(([0-2][1-9])|10|20|30|31)\d{3}[0-9Xx]$/
		  def matcher = code =~ aRegex
 		 matcher.matches();
	if(matcher.getCount()==1){
		 int sum = 0;
        if (isEmpty(code) || code.length() < 17) {
            return false
        }
		for (int i = 0; i < 17; i++){
         sum += str.indexOf(code.getAt(i)).toInteger() * ws.getAt(i).toInteger();
		 }
        def c9 = (sum%11);
		c9= (c9==2?''X'':ss.getAt(c9));
		def matcher1 = code[0..17] =~ aRegex;
       	 matcher1.matches();
        if (matcher1.getCount()!=0 && code.getAt(17).toString()==c9.toString()) {
             return  true
        }else{
             return  false

        }
}else{
		return  false
}

}
return true', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'admin', '20200119', '20200119171000', null, null, null, null, null, null, 'mbtrule', '1');

insert into gp_qc_rule (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, EXISTS_SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_110_CI0000401_11', '20200911', 'TESTCORP', '72', '2', null, null, '婚姻信息段的公民身份证号码则应符合如下规则：长度必须为18位；前17位为数字，第18位可为数字或字母“X”、“x”；第7-14位为出生日期，日期必须在19010101-20991231之间；校验位必须满足校验规则（参见国标《公民身份号码》（GB11643-1999））。', '婚姻信息段的公民身份证号码则应符合如下规则：长度必须为18位；前17位为数字，第18位可为数字或字母“X”、“x”；第7-14位为出生日期，日期必须在19010101-20991231之间；校验位必须满足校验规则（参见国标《公民身份号码》（GB11643-1999））。', null, 'BUSI', 'DATA_ID', null, null, 'Y', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 
'if(E_SPO_ID_TYPE=="10"){
		  def ws = [7,9,10,5,8,4,2,1,6,3,7,9,10,5,8,4,2];
		  def ss = [1,0,''X'',9,8,7,6,5,4,3,2];
		  String str = ''0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ'';
		  def code=E_SPO_ID_NUM;
		  def aRegex = /^[1-9]\d{5}(190[1-9]|19[1-9][0-9]|20[0-9]{2})((0[1-9])|(10|11|12))(([0-2][1-9])|10|20|30|31)\d{3}[0-9Xx]$/
		  def matcher = code =~ aRegex
 		 matcher.matches();
	if(matcher.getCount()==1){
		 int sum = 0;
        if (isEmpty(code) || code.length() < 17) {
            return false
        }
		for (int i = 0; i < 17; i++){
         sum += str.indexOf(code.getAt(i)).toInteger() * ws.getAt(i).toInteger();
		 }
        def c9 = (sum%11);
		c9= (c9==2?''X'':ss.getAt(c9));
		def matcher1 = code[0..17] =~ aRegex;
       	 matcher1.matches();
        if (matcher1.getCount()!=0 && code.getAt(17).toString()==c9.toString()) {
             return  true
        }else{
             return  false

        }
}else{
		return  false
}

}
return true', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'admin', '20200119', '20200119171000', null, null, null, null, null, null, 'mbtrule', '1');

insert into gp_qc_rule (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, EXISTS_SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_110R1100101R110010101R110010102', '20190610', 'TESTCORP', '72', '002', null, null, '对于个人基本信息记录，若“报告时点说明代码”为“10-新增客户/首次上报”，该记录至少包含基本概况信息段、教育信息段、居住地址段、通讯地址段、婚姻信息段、职业信息段。', '对于个人基本信息记录，若“报告时点说明代码”为“10-新增客户/首次上报”，该记录至少包含基本概况信息段、教育信息段、居住地址段、通讯地址段、婚姻信息段、职业信息段。', null, 'BUSI', 'DATA_ID', null, null, 'Y', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 
'if (B_RPT_DATE_CODE == "10") {
    if (!isEmpty(IS_RPT) && IS_RPT.length()>=8 && IS_RPT.substring(0,8) == "11111110") {
        return true
    }
    return false
}
return true', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'b2fb9a31aa714884bebe4388b751be13', null, null, 'mbtrule', '1');

insert into gp_qc_rule (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, EXISTS_SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_110R1100102R110010202', '20190610', 'TESTCORP', '72', '002', null, null, '个人基本信息记录应包含基础段。', '个人基本信息记录应包含基础段。', null, 'BUSI', 'DATA_ID', null, null, 'Y', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 
'if (isEmpty(IS_RPT) || IS_RPT.getAt(0) == "1") {
    return false
}
return true', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '33cc2b4897564fca8d9bf8c3c7795b13', null, null, 'mbtrule', '1');

insert into gp_qc_rule (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, EXISTS_SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_110I0000401_110I0000401_11001', '20190610', 'TESTCORP', '72', '2', null, null, '公民身份证号码则应符合如下规则：长度必须为18位；
前17位为数字，第18位可为数字或字母“X”、“x”；
第7-14位为出生日期，日期必须在19010101-20991231之间；
校验位必须满足校验规则（参见国标《公民身份号码》（GB11643-1999））。', '公民身份证号码则应符合如下规则：长度必须为18位；
前17位为数字，第18位可为数字或字母“X”、“x”；
第7-14位为出生日期，日期必须在19010101-20991231之间；
校验位必须满足校验规则（参见国标《公民身份号码》（GB11643-1999））。', null, 'BUSI', 'DATA_ID', null, null, 'Y', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null,
 'if(B_ID_TYPE=="10"){
		  def ws = [7,9,10,5,8,4,2,1,6,3,7,9,10,5,8,4,2];
		  def ss = [1,0,''X'',9,8,7,6,5,4,3,2];
		  String str = ''0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ'';
		  def code=B_ID_NUM;
		  def aRegex = /^[1-9]\d{5}(190[1-9]|19[1-9][0-9]|20[0-9]{2})((0[1-9])|(10|11|12))(([0-2][1-9])|10|20|30|31)\d{3}[0-9Xx]$/
		  def matcher = code =~ aRegex
 		 matcher.matches();
if(matcher.getCount()==1){
		 int sum = 0;
        if (isEmpty(code) || code.length() < 17) {
            return false
        }
		for (int i = 0; i < 17; i++){
         sum += str.indexOf(code.getAt(i)).toInteger() * ws.getAt(i).toInteger();
		 }
        def c9 = (sum%11);
		c9= (c9==2?''X'':ss.getAt(c9));
		def matcher1 = code[0..17] =~ aRegex;
       	 matcher1.matches();
        if (matcher1.getCount()!=0 && code.getAt(17).toString()==c9.toString()) {
             return  true
        }else{
             return  false

        }
}else{
		return  false
}

}
return true

', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'admin', '20200119', '20200119171000', null, null, null, '063a51c208ec4c22a80d169211e92ab2', null, null, 'mbtrule', '1');
insert into gp_qc_rule (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, EXISTS_SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_130_I0000401_01', '20191204', 'TESTCORP', '72', '002', null, null, '公民身份证号码则应符合如下规则：
长度必须为 18 位； 前 17 位为数字，第 18 位可为数字或字母“X” 、 “x” ；  
 第 7-14 位为出生日期，日期必须在 19010101-20991231 之间；  
 校验位必须满足校验规则（参见国标《公民身份号码》（GB 11643-1999））。 ', '公民身份证号码则应符合如下规则：
长度必须为 18 位； 前 17 位为数字，第 18 位可为数字或字母“X” 、 “x” ；  
 第 7-14 位为出生日期，日期必须在 19010101-20991231 之间；  
 校验位必须满足校验规则（参见国标《公民身份号码》（GB 11643-1999））。 ', null, 'BUSI', 'DATA_ID', null, null, 'Y', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 
 'if(ID_TYPE=="10"){
		  def ws = [7,9,10,5,8,4,2,1,6,3,7,9,10,5,8,4,2];
		  def ss = [1,0,''X'',9,8,7,6,5,4,3,2];
		  String str = ''0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ'';
		  def code=ID_NUM;
		  def aRegex = /^[1-9]\d{5}(190[1-9]|19[1-9][0-9]|20[0-9]{2})((0[1-9])|(10|11|12))(([0-2][1-9])|10|20|30|31)\d{3}[0-9Xx]$/
		  def matcher = code =~ aRegex
 		 matcher.matches();
if(matcher.getCount()==1){
		 int sum = 0;
		   if (isEmpty(code) || code.length() < 17) {
            return false
        }
        for (int i = 0; i < 17; i++){
         sum += str.indexOf(code.getAt(i)).toInteger() * ws.getAt(i).toInteger();
		 }
        def c9 = (sum%11);    
		c9= (c9==2?''X'':ss.getAt(c9));
		def matcher1 = code[0..17] =~ aRegex;
       	 matcher1.matches();
        if (matcher1.getCount()!=0 && code.getAt(17).toString()==c9.toString()) {
             return  true
        }else{
             return  false

        }
}else{
		return  false
}

}
return true

', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'mbtrule', '1');
insert into gp_qc_rule (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, EXISTS_SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_210__B_RPT_DATE', '20190614', 'TESTCORP', '72', '002', null, null, '信息报告日期', '信息报告日期必须为数字英文字母;长度在8~8之间;', null, 'ELEMENT', 'B_RPT_DATE', '信息报告日期', 'R', 'Y', 'ALPHA_NUMBER', null, 8, 8, null, null, null, null, null, null, null, null, null, null, null, 
'if (!isEmpty(IS_RPT) && IS_RPT.length()>=1 && IS_RPT.substring(0,1) == "1") {
    if (isEmpty($value)) {
        return false
    }
}
return true', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0131c4b3990f4a98ab0715094f2b5e7e', null, null, 'mbtelement', '1');

insert into gp_qc_rule (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, EXISTS_SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_210__C_LOAN_AMT', '20190614', 'TESTCORP', '72', '002', null, null, '借款金额', '借款金额取值范围在0~999999999999999之间;', null, 'ELEMENT', 'C_LOAN_AMT', '借款金额', 'R', 'Y', 'NUMBER', null, null, null, 0.0000000000, 999999999999999.0000000000, null, null, null, null, null, null, null, null, null, 
'if ((!isEmpty(IS_RPT) && IS_RPT.length()>=2 && IS_RPT.substring(1,2) == "1") && (B_ACCT_TYPE == "C1" || B_ACCT_TYPE == "D1" || B_ACCT_TYPE == "R4")) {
    if (isEmpty($value)) {
        return false
    }
}
return true', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '4f708892105349608d5b9dbf4e5a0776', null, null, 'mbtelement', '1');

insert into gp_qc_rule (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, EXISTS_SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_210R210010201R210010101R210010202_01', '20190618', 'TESTCORP', '72', '002', null, null, '当“报告时点说明代码”为“10-新开户”时，若“账户类型”为“D1”且基本信息段中“分次放款标志”不为“0”，不应包含初始债权说明段、非月度表现信息段、特殊交易说明段、大额专项分期信息段。', '当“报告时点说明代码”为“10-新开户”时，若“账户类型”为“D1”且基本信息段中“分次放款标志”不为“0”，不应包含初始债权说明段、非月度表现信息段、特殊交易说明段、大额专项分期信息段。', null, 'BUSI', 'DATA_ID', null, null, 'Y', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 
'if (B_RPT_DATE_CODE == "10" && B_ACCT_TYPE == "D1" && C_FLAG != "0") {
    if (!isEmpty(IS_RPT) && IS_RPT.length()>=11 && IS_RPT.substring(3,4) == "0" && IS_RPT.substring(5,7) == "00" && IS_RPT.substring(10,11) == "0") {
        return true
    }
    return false
}
return true', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'f3880debeca44c12b2886c0341c4b3c8', null, null, 'mbtrule', '1');

insert into gp_qc_rule (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, EXISTS_SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_210R210011206R210011211R210010212', '20190620', 'TESTCORP', '72', '002', null, null, '当“报告时点说明代码”为“20-账户关闭”时:若“账户类型”为“C1”，不应包含月度表现段、大额专项分期信息段、抵质押物信息段、授信额度信息段。', '当“报告时点说明代码”为“20-账户关闭”时:若“账户类型”为“C1”，不应包含月度表现段、大额专项分期信息段、抵质押物信息段、授信额度信息段。', null, 'BUSI', 'DATA_ID', null, null, 'Y', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 
'if (B_RPT_DATE_CODE == "20" && B_ACCT_TYPE == "C1") {
    if (!isEmpty(IS_RPT) && IS_RPT.length()>=10 && IS_RPT.substring(2,3) == "0" && IS_RPT.substring(4,6) == "00" && IS_RPT.substring(9,10) == "0") {
        return true
    }
    return false
}
return true', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0765ec36ba5b486a8f50049e9a51dca9', null, null, 'mbtrule', '1');

insert into gp_qc_rule (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, EXISTS_SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_210R210011403R210011405R210010206', '20190620', 'TESTCORP', '72', '002', null, null, '当“报告时点说明代码”为“32-月结日账户关闭”时:若“账户类型”为“R1/R3/R4”，不应包含初始债权说明段、非月度表现信息段、大额专项分期信息段。', '当“报告时点说明代码”为“32-月结日账户关闭”时:若“账户类型”为“R1/R3/R4”，不应包含初始债权说明段、非月度表现信息段、大额专项分期信息段。', null, 'BUSI', 'DATA_ID', null, null, 'Y', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 
'if (B_RPT_DATE_CODE == "32" && (B_ACCT_TYPE == "R1" || B_ACCT_TYPE == "R3" || B_ACCT_TYPE =="R4")) {
    if (!isEmpty(IS_RPT) && IS_RPT.length()>=7 && IS_RPT.substring(3,4) == "0" && IS_RPT.substring(5,7) == "00") {
        return true
    }
    return false
}
return true', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '5da3feb8bcf04258b4f981debb34bccb', null, null, 'mbtrule', '1');

insert into gp_qc_rule (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, EXISTS_SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_210R210010105R210010107R210010104_001', '20190618', 'TESTCORP', '72', '002', null, null, '当“报告时点说明代码”为“10-新开户”时，若“账户类型”为“R2”，还应包含月度表现段。', '当“报告时点说明代码”为“10-新开户”时，若“账户类型”为“R2”，还应包含月度表现段。', null, 'BUSI', 'DATA_ID', null, null, 'Y', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 
'if (B_RPT_DATE_CODE=="10" && B_ACCT_TYPE == "R2") {
    if (!isEmpty(IS_RPT) && IS_RPT.length()>=5 && IS_RPT.substring(4,5)=="1") {
        return true
    }
    return false
}
return true', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '66faa4e055c04bedb8aba09c93076f32', null, null, 'mbtrule', '1');

insert into gp_qc_rule (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, EXISTS_SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_210R210010106R210010108R210010106_01', '20190618', 'TESTCORP', '72', '002', null, null, '当“报告时点说明代码”为“10-新开户”时，若“账户类型”为“C1”，还应包含非月度表现信息段、初始债权说明段。', '当“报告时点说明代码”为“10-新开户”时，若“账户类型”为“C1”，还应包含非月度表现信息段、初始债权说明段。', null, 'BUSI', 'DATA_ID', null, null, 'Y', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 
'if (B_RPT_DATE_CODE == "10" && B_ACCT_TYPE == "C1") {
    if (!isEmpty(IS_RPT) && IS_RPT.length()>=7 && IS_RPT.substring(3,4) == "0" && IS_RPT.substring(6,7) == "0") {
        return true
    }
    return false
}
return true', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '597626bc4e8b4d7a869235a89e75d803', null, null, 'mbtrule', '1');

insert into gp_qc_rule (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, EXISTS_SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_210R210010302R210010303R210010104_002', '20190618', 'TESTCORP', '72', '002', null, null, '当“报告时点说明代码”为“31-月结日首次上报存量账户”时，若“账户类型”为“D1”，则还应包含基础段、基本信息段、月度表现信息段。', '当“报告时点说明代码”为“31-月结日首次上报存量账户”时，若“账户类型”为“D1”，则还应包含基础段、基本信息段、月度表现信息段。', null, 'BUSI', 'DATA_ID', null, null, 'Y', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 
'if (B_RPT_DATE_CODE == "31" && B_ACCT_TYPE == "D1") {
    if (!isEmpty(IS_RPT) && IS_RPT.length()>=5 && IS_RPT.substring(0,2) == "11" && IS_RPT.substring(4,5) == "1") {
        return true
    }
    return false
}
return true', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '36501adbd313401797baadacadaddf4c', null, null, 'mbtrule', '1');

insert into gp_qc_rule (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, EXISTS_SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_210R210010303R210010305R210010102', '20190619', 'TESTCORP', '72', '002', null, null, '当“报告时点说明代码”为“31-月结日首次上报存量账户”时，若“账户类型”为“R1/R3/R4”，还应包含月度表现信息段、授信额度信息段。', '当“报告时点说明代码”为“31-月结日首次上报存量账户”时，若“账户类型”为“R1/R3/R4”，还应包含月度表现信息段、授信额度信息段。', null, 'BUSI', 'DATA_ID', null, null, 'Y', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 
'if (B_RPT_DATE_CODE == "31" && (B_ACCT_TYPE == "R1" || B_ACCT_TYPE == "R3" || B_ACCT_TYPE =="R4")) {
    if (!isEmpty(IS_RPT) && IS_RPT.length()>=5 && IS_RPT.substring(2,3) == "1" && IS_RPT.substring(4,5) == "1") {
        return true
    }
    return false
}
return true', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '15ebd3e152ae41eaa4c3ddf730acba56', null, null, 'mbtrule', '1');

insert into gp_qc_rule (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, EXISTS_SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_210__B_RPT_DATE_CODE', '20190614', 'TESTCORP', '72', '002', null, null, '报告时点说明代码', '报告时点说明代码必须为数字英文字母;长度在2~2之间;', null, 'ELEMENT', 'B_RPT_DATE_CODE', '报告时点说明代码', 'R', 'Y', 'ALPHA_NUMBER', null, 2, 2, null, null, null, null, null, null, null, 'GP_BM_DATA_DIC', '19257', null, null, 
'if (!isEmpty(IS_RPT) && IS_RPT.length()>=1 && IS_RPT.substring(0,1) == "1") {
    if (isEmpty($value)) {
        return false
    }
}
return true', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '953948e5f3f6498ba539a713c80bfed8', null, null, 'mbtelement', '1');

insert into gp_qc_rule (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, EXISTS_SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_210__C_FLAG', '20190614', 'TESTCORP', '72', '002', null, null, '分次放款标志', '分次放款标志必须为数字英文字母;长度在1~1之间;', null, 'ELEMENT', 'C_FLAG', '分次放款标志', 'R', 'Y', 'ALPHA_NUMBER', null, 1, 1, null, null, null, null, null, null, null, 'GP_BM_DATA_DIC', '19233', null, null, 
'if ((!isEmpty(IS_RPT) && IS_RPT.length()>=2 && IS_RPT.substring(1,2) == "1") && (B_ACCT_TYPE == "D1")) {
    if (isEmpty($value)) {
        return false
    }
}
return true', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '21e1b61bd8d047e784c5ad3b0d767dfc', null, null, 'mbtelement', '1');

insert into gp_qc_rule (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, EXISTS_SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_210__C_REPAY_PRD', '20190614', 'TESTCORP', '72', '002', null, null, '还款期数', '还款期数取值范围在0~999之间;', null, 'ELEMENT', 'C_REPAY_PRD', '还款期数', 'R', 'Y', 'NUMBER', null, null, null, 0.0000000000, 999.0000000000, null, null, null, null, null, null, null, null, null, 
'if ((!isEmpty(IS_RPT) && IS_RPT.length()>=2 && IS_RPT.substring(1,2) == "1") && (B_ACCT_TYPE == "D1" || B_ACCT_TYPE == "R4")) {
    if (isEmpty($value)) {
        return false
    }
}
return true', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'bd27b1365bb544caad86e1952f0d6908', null, null, 'mbtelement', '1');

insert into gp_qc_rule (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, EXISTS_SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_210__C_ASSET_TRAND_FLAG', '20190614', 'TESTCORP', '72', '002', null, null, '资产转让标志', '资产转让标志必须为数字英文字母;长度在1~1之间;', null, 'ELEMENT', 'C_ASSET_TRAND_FLAG', '资产转让标志', 'R', 'Y', 'ALPHA_NUMBER', null, 1, 1, null, null, null, null, null, null, null, 'GP_BM_DATA_DIC', '19235', null, null, 
'if ((!isEmpty(IS_RPT) && IS_RPT.length()>=2 && IS_RPT.substring(1,2) == "1") && (B_ACCT_TYPE != "C1")) {
    if (isEmpty($value)) {
        return false
    }
}
return true', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '9d4ac429db914ab8809f444a63df6053', null, null, 'mbtelement', '1');

insert into gp_qc_rule (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, EXISTS_SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_210__C_OPEN_DATE', '20190614', 'TESTCORP', '72', '002', null, null, '开户日期', '开户日期必须为数字英文字母;长度在8~8之间;', null, 'ELEMENT', 'C_OPEN_DATE', '开户日期', 'R', 'Y', 'ALPHA_NUMBER', null, 8, 8, null, null, null, null, null, null, null, null, null, null, null, 
'if (!isEmpty(IS_RPT) && IS_RPT.length()>=2 && IS_RPT.substring(1,2) == "1") {
    if (isEmpty($value)) {
        return false
    }
}
return true', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'aecd1bb351b747aba6eeac7a35d38158', null, null, 'mbtelement', '1');

insert into gp_qc_rule (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, EXISTS_SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_210R210010104R210010106R210010102', '20190618', 'TESTCORP', '72', '002', null, null, '当“报告时点说明代码”为“10-新开户”时，若“账户类型”为“R2”且基本信息段中的“借贷业务种类细分”不是“大额专项分期卡”，还应包含月度表现段、授信额度信息段。', '当“报告时点说明代码”为“10-新开户”时，若“账户类型”为“R2”且基本信息段中的“借贷业务种类细分”不是“大额专项分期卡”，还应包含月度表现段、授信额度信息段。', null, 'BUSI', 'DATA_ID', null, null, 'Y', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 
'if (B_RPT_DATE_CODE == "10" && B_ACCT_TYPE == "R2"  && C_BUSI_DTL_LINES != "82") {
    if (!isEmpty(IS_RPT) && IS_RPT.length()>=5 &&  IS_RPT.substring(2,3) == "1" && IS_RPT.substring(4,5) == "1") {
        return true
    }
    return false
}
return true', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1073b32e7f1d4c81835db11f1ca5e0b0', null, null, 'mbtrule', '1');

insert into gp_qc_rule (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, EXISTS_SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_210R210010206R210010108R210010212', '20190618', 'TESTCORP', '72', '002', null, null, '当“报告时点说明代码”为“10-新开户”时，若“账户类型”为“C1”，不应包含月度表现段、大额专项分期信息段、抵质押物信息段、授信额度信息段。', '当“报告时点说明代码”为“10-新开户”时，若“账户类型”为“C1”，不应包含月度表现段、大额专项分期信息段、抵质押物信息段、授信额度信息段。', null, 'BUSI', 'DATA_ID', null, null, 'Y', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 
'if (B_RPT_DATE_CODE == "10" && B_ACCT_TYPE == "C1") {
    if (!isEmpty(IS_RPT) && IS_RPT.length()>=10 &&  IS_RPT.substring(2,3) == "0" && IS_RPT.substring(4,6) == "00" && IS_RPT.substring(9,10) == "0") {
        return true
    }
    return false
}
return true', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '4fc0c577f9ca40ba852d58297bcfa5ff', null, null, 'mbtrule', '1');

insert into gp_qc_rule (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, EXISTS_SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_210R210010305R210010307R210010104_001', '20190619', 'TESTCORP', '72', '002', null, null, '当“报告时点说明代码”为“31-月结日首次上报存量账户”时，若“账户类型”为“R2”，还应包含月度表现段。', '当“报告时点说明代码”为“31-月结日首次上报存量账户”时，若“账户类型”为“R2”，还应包含月度表现段。', null, 'BUSI', 'DATA_ID', null, null, 'Y', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 
'if (B_RPT_DATE_CODE == "31" && B_ACCT_TYPE == "R2") {
    if (!isEmpty(IS_RPT) && IS_RPT.length()>=5 &&  IS_RPT.substring(4,5) == "1") {
        return true
    }
    return false
}
return true', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '318d26c3231942baa576306f6e208107', null, null, 'mbtrule', '1');

insert into gp_qc_rule (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, EXISTS_SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_210__B_INF_REC_TYPE', '20190614', 'TESTCORP', '72', '002', null, null, '信息记录类型', '信息记录类型必须为数字英文字母;长度在3~3之间;', null, 'ELEMENT', 'B_INF_REC_TYPE', '信息记录类型', 'R', 'Y', 'ALPHA_NUMBER', null, 3, 3, null, null, null, null, null, null, null, 'GP_BM_DATA_DIC', '19255', null, null, 
'if (!isEmpty(IS_RPT) && IS_RPT.length()>=1 && IS_RPT.substring(0,1) == "1") {
    if (isEmpty($value)) {
        return false
    }
}
return true', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'ac4aa734f7b7471e8e38a183fae60e2a', null, null, 'mbtelement', '1');

insert into gp_qc_rule (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, EXISTS_SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_210R210010701R210010701R210010702', '20190619', 'TESTCORP', '72', '002', null, null, '当“报告时点说明代码”为“30-月度结算”时:除基础段外，至少还应包含月度表现信息段，“账户类型”不能为“C1”。', '当“报告时点说明代码”为“30-月度结算”时:除基础段外，至少还应包含月度表现信息段，“账户类型”不能为“C1”。', null, 'BUSI', 'DATA_ID', null, null, 'Y', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 
'if (B_RPT_DATE_CODE == "30") {
    if (!isEmpty(IS_RPT) && IS_RPT.length()>=5 && IS_RPT.substring(0,1) == "1" && IS_RPT.substring(4,5) == "1" && B_ACCT_TYPE != "C1") {
        return true
    }
    return false
}
return true', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'fbdc05f7836945c28bd81ce6b7002bda', null, null, 'mbtrule', '1');

insert into gp_qc_rule (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, EXISTS_SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_210__C_BUSI_DTL_LINES', '20190614', 'TESTCORP', '72', '002', null, null, '借贷业务种类细分', '借贷业务种类细分必须为数字英文字母;长度在2~2之间;', null, 'ELEMENT', 'C_BUSI_DTL_LINES', '借贷业务种类细分', 'R', 'Y', 'ALPHA_NUMBER', null, 2, 2, null, null, null, null, null, null, null, null, null, null, null, 
'if (!isEmpty(IS_RPT) && IS_RPT.length()>=2 && IS_RPT.substring(1,2) == "1") {
    if (isEmpty($value)) {
        return false
    }
}
return true', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '5c23934508004076a6acd5e49170570e', null, null, 'mbtelement', '1');

insert into gp_qc_rule (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, EXISTS_SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_210__G_INIT_CRED_NAME', '20190614', 'TESTCORP', '72', '002', null, null, '初始债权人名称', '初始债权人名称必须为数字英文字母中文;长度在1~80之间;', null, 'ELEMENT', 'G_INIT_CRED_NAME', '初始债权人名称', 'R', 'Y', null, null, 1, 80, null, null, null, null, null, null, null, null, null, null, null, 
'if (!isEmpty(IS_RPT) && IS_RPT.length()>=4  && IS_RPT.substring(3,4) == "1") {
    if (isEmpty($value)) {
        return false
    }
}
return true', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0355b70319a6404db414877d4a7353e5', null, null, 'mbtelement', '1');

insert into gp_qc_rule (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, EXISTS_SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_210__H_MONTH', '20190614', 'TESTCORP', '72', '002', null, null, '月份', '月份必须为数字英文字母;长度在2~6之间;', null, 'ELEMENT', 'H_MONTH', '月份', 'R', 'Y', 'ALPHA_NUMBER', null, 2, 6, null, null, null, null, null, null, null, null, null, null, null, 
'if (!isEmpty(IS_RPT) && IS_RPT.length()>=5 && IS_RPT.substring(4,5) == "1") {
    if (isEmpty($value)) {
        return false
    }
}
return true', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'c900721c8dfc41be9b00a69cec594b09', null, null, 'mbtelement', '1');

insert into gp_qc_rule (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, EXISTS_SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_210__H_PRID_ACCT_BAL', '20190614', 'TESTCORP', '72', '002', null, null, '本期账单余额', '本期账单余额取值范围在0~999999999999999之间;', null, 'ELEMENT', 'H_PRID_ACCT_BAL', '本期账单余额', 'R', 'Y', 'NUMBER', null, null, null, 0.0000000000, 999999999999999.0000000000, null, null, null, null, null, null, null, null, null, 
'if ((!isEmpty(IS_RPT) && IS_RPT.length()>=5 && IS_RPT.substring(4,5) == "1") && (B_ACCT_TYPE == "R2")) {
    if (isEmpty($value)) {
        return false
    }
}
return true', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '938a14c1a3164d8a9db59c633e79e39f', null, null, 'mbtelement', '1');

insert into gp_qc_rule (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, EXISTS_SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_210__H_FIVE_CATE', '20190614', 'TESTCORP', '72', '002', null, null, '五级分类', '五级分类必须为数字英文字母;长度在1~1之间;', null, 'ELEMENT', 'H_FIVE_CATE', '五级分类', 'R', 'Y', 'ALPHA_NUMBER', null, 1, 1, null, null, null, null, null, null, null, null, null, null, null, 
'if (!isEmpty(IS_RPT) && IS_RPT.length()>=5 && IS_RPT.substring(4,5) == "1") {
    if (isEmpty($value)) {
        return false
    }
}
return true', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0c8f319938394f80ae27e3d1a6495d87', null, null, 'mbtelement', '1');

insert into gp_qc_rule (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, EXISTS_SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_210__H_OVERD_PRD', '20190614', 'TESTCORP', '72', '002', null, null, '当前逾期期数', '当前逾期期数取值范围在0~999之间;', null, 'ELEMENT', 'H_OVERD_PRD', '当前逾期期数', 'R', 'Y', 'NUMBER', null, null, null, 0.0000000000, 999.0000000000, null, null, null, null, null, null, null, null, null, 
'if ((!isEmpty(IS_RPT) && IS_RPT.length()>=5 && IS_RPT.substring(4,5) == "1") && (B_ACCT_TYPE == "D1" || B_ACCT_TYPE == "R1" || B_ACCT_TYPE == "R2" || B_ACCT_TYPE == "R4")) {
    if (isEmpty($value)) {
        return false
    }
}
return true', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '01f66a8c911a4e8c94d91ebd4bf1bae7', null, null, 'mbtelement', '1');

insert into gp_qc_rule (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, EXISTS_SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_210R210010205R210010107R210010210_01', '20190618', 'TESTCORP', '72', '002', null, null, '当“报告时点说明代码”为“10-新开户”时， 若“账户类型”为“R2”，不应包含初始债权说明段、非月度表现信息段、特殊交易说明段。', '当“报告时点说明代码”为“10-新开户”时， 若“账户类型”为“R2”，不应包含初始债权说明段、非月度表现信息段、特殊交易说明段。', null, 'BUSI', 'DATA_ID', null, null, 'Y', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 
'if (B_RPT_DATE_CODE == "10" && B_RPT_DATE_CODE == "R2") {
    if (!isEmpty(IS_RPT) && IS_RPT.length()>=11 && IS_RPT.substring(3,4) == "0" && IS_RPT.substring(6,7) == "0" && IS_RPT.substring(10,11) == "0") {
        return true
    }
    return false
}
return true', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'b54beab02a6a4a548392c17931062a66', null, null, 'mbtrule', '1');

insert into gp_qc_rule (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, EXISTS_SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_210__H_CUR_RPY_AMT', '20190614', 'TESTCORP', '72', '002', null, null, '本月应还款金额', '本月应还款金额取值范围在0~999999999999999之间;', null, 'ELEMENT', 'H_CUR_RPY_AMT', '本月应还款金额', 'R', 'Y', 'NUMBER', null, null, null, 0.0000000000, 999999999999999.0000000000, null, null, null, null, null, null, null, null, null, 
'if ((!isEmpty(IS_RPT) &&  IS_RPT.length()>=5 && IS_RPT.substring(4,5) == "1") && (B_ACCT_TYPE == "D1" || B_ACCT_TYPE == "R1" || B_ACCT_TYPE == "R2" || B_ACCT_TYPE == "R4")) {
    if (isEmpty($value)) {
        return false
    }
}
return true', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1b01c1ab8d0f4815b8d10201362f13db', null, null, 'mbtelement', '1');

insert into gp_qc_rule (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, EXISTS_SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_210__H_CLOSE_DATE', '20190614', 'TESTCORP', '72', '002', null, null, '账户关闭日期', '账户关闭日期必须为数字英文字母;长度在8~8之间;', null, 'ELEMENT', 'H_CLOSE_DATE', '账户关闭日期', 'R', 'Y', 'ALPHA_NUMBER', null, 8, 8, null, null, null, null, null, null, null, null, null, null, null, 
'if ((!isEmpty(IS_RPT) && IS_RPT.length()>= 5 && IS_RPT.substring(4,5) == "1") && (H_ACCT_STATUS == "3" || H_ACCT_STATUS == "4")) {
    if (isEmpty($value)) {
        return false
    }
}
return true', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '63e7bffa8de6434f8f26c5eea1cb4f8c', null, null, 'mbtelement', '1');

insert into gp_qc_rule (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, EXISTS_SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_210__I_SPEC_LINE', '20190614', 'TESTCORP', '72', '002', null, null, '大额专项分期额度', '大额专项分期额度取值范围在0~999999999999999之间;', null, 'ELEMENT', 'I_SPEC_LINE', '大额专项分期额度', 'R', 'Y', 'NUMBER', null, null, null, 0.0000000000, 999999999999999.0000000000, null, null, null, null, null, null, null, null, null, 
'if (!isEmpty(IS_RPT) && IS_RPT.length()>= 6 &&  IS_RPT.substring(5,6) == "1") {
    if (isEmpty($value)) {
        return false
    }
}
return true', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'fbcc67b3194848ce946411f8d1c34e4d', null, null, 'mbtelement', '1');

insert into gp_qc_rule (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, EXISTS_SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_210__I_USED_INST_AMT', '20190614', 'TESTCORP', '72', '002', null, null, '已用分期金额', '已用分期金额取值范围在0~999999999999999之间;', null, 'ELEMENT', 'I_USED_INST_AMT', '已用分期金额', 'R', 'Y', 'NUMBER', null, null, null, 0.0000000000, 999999999999999.0000000000, null, null, null, null, null, null, null, null, null, 
'if (!isEmpty(IS_RPT) && IS_RPT.length()>= 6 && IS_RPT.substring(5,6) == "1") {
    if (isEmpty($value)) {
        return false
    }
}
return true', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '9c48a94e1aa646989b66fab896844f8c', null, null, 'mbtelement', '1');

insert into gp_qc_rule (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, EXISTS_SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_210__J_FIVE_CATE_ADJ_DATE', '20190614', 'TESTCORP', '72', '002', null, null, '五级分类认定日期', '五级分类认定日期必须为数字英文字母;长度在8~8之间;', null, 'ELEMENT', 'J_FIVE_CATE_ADJ_DATE', '五级分类认定日期', 'R', 'Y', 'ALPHA_NUMBER', null, 8, 8, null, null, null, null, null, null, null, null, null, null, null, 
'if ((!isEmpty(IS_RPT) && IS_RPT.length()>= 7 && IS_RPT.substring(6,7) == "1") && (B_ACCT_TYPE == "D1" || B_ACCT_TYPE == "R1" || B_ACCT_TYPE == "R2" || B_ACCT_TYPE == "R3" || B_ACCT_TYPE == "R4")) {
    if (isEmpty($value)) {
        return false
    }
}
return true', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '440f172f8aa04e03bb5946ea78034aac', null, null, 'mbtelement', '1');

insert into gp_qc_rule (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, EXISTS_SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_210__J_REM_REP_PRD', '20190614', 'TESTCORP', '72', '002', null, null, '剩余还款期数', '剩余还款期数取值范围在0~999之间;', null, 'ELEMENT', 'J_REM_REP_PRD', '剩余还款期数', 'R', 'Y', 'NUMBER', null, null, null, 0.0000000000, 999.0000000000, null, null, null, null, null, null, null, null, null, 
'if ((!isEmpty(IS_RPT) && IS_RPT.length()>= 7 && IS_RPT.substring(6,7) == "1") && (B_ACCT_TYPE == "D1" || B_ACCT_TYPE == "R1" || B_ACCT_TYPE == "R2" || B_ACCT_TYPE == "R4")) {
    if (isEmpty($value)) {
        return false
    }
}
return true', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '81cb2754ee9f4b4b8ebb8867f429988b', null, null, 'mbtelement', '1');

insert into gp_qc_rule (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, EXISTS_SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_210__H_OVERD61_90PRINC', '20190614', 'TESTCORP', '72', '002', null, null, '逾期 61-90 天未归还本金', '逾期 61-90 天未归还本金取值范围在0~999999999999999之间;', null, 'ELEMENT', 'H_OVERD61_90PRINC', '逾期 61-90 天未归还本金', 'R', 'Y', 'NUMBER', null, null, null, 0.0000000000, 999999999999999.0000000000, null, null, null, null, null, null, null, null, null, 
'if ((!isEmpty(IS_RPT) && IS_RPT.length()>= 5 && IS_RPT.substring(4,5) == "1") && (B_ACCT_TYPE == "D1" || B_ACCT_TYPE == "R1" || B_ACCT_TYPE == "R4")) {
    if (isEmpty($value)) {
        return false
    }
}
return true', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'ef2751bc24f04f5ca0374a2629c20cd6', null, null, 'mbtelement', '1');

insert into gp_qc_rule (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, EXISTS_SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_210__H_OVERD_RAW_BA_OVE180', '20190614', 'TESTCORP', '72', '002', null, null, '透支 180 天以上未还余额', '透支 180 天以上未还余额取值范围在0~999999999999999之间;', null, 'ELEMENT', 'H_OVERD_RAW_BA_OVE180', '透支 180 天以上未还余额', 'R', 'Y', 'NUMBER', null, null, null, 0.0000000000, 999999999999999.0000000000, null, null, null, null, null, null, null, null, null, 
'if ((!isEmpty(IS_RPT) && IS_RPT.length()>= 5 && IS_RPT.substring(4,5) == "1") && (B_ACCT_TYPE == "R3")) {
    if (isEmpty($value)) {
        return false
    }
}
return true', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'ce830ad64f1541e88c87218f5838c5d9', null, null, 'mbtelement', '1');

insert into gp_qc_rule (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, EXISTS_SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_210I0000601_3', '20200220', 'TESTCORP', '72', '002', null, null, '基本信息段的到期日期必须是有效日期：1901-01-01—2099-12-31。', '基本信息段的到期日期必须是有效日期：1901-01-01—2099-12-31。', null, 'BUSI', 'DATA_ID', null, null, 'Y', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 
'if ((!isEmpty(IS_RPT) && IS_RPT.length()>= 2 && IS_RPT.substring(1,2) == "1") && (B_ACCT_TYPE == "D1" || B_ACCT_TYPE == "R1" || B_ACCT_TYPE == "R4")) {
    String str =MBT_210_C_DUE_DATE;
    def reg = /^(?:19|20)[0-9][0-9](?:(?:0[1-9])|(?:1[0-2]))(?:(?:[0-2][1-9])|(?:[1-3][0-1]))$/;
    def matcher = str =~ reg;
        matcher.matches()
          if(matcher.getCount()==0){
              return false
          }
}
return true', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'mbtrule', '1');

insert into gp_qc_rule (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, EXISTS_SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_210__C_LOAN_CON_CODE', '20190614', 'TESTCORP', '72', '002', null, null, '贷款合同编号', '贷款合同编号必须为数字英文字母;长度在1~200之间;', null, 'ELEMENT', 'C_LOAN_CON_CODE', '贷款合同编号', 'R', 'Y', 'ALPHA_NUMBER', null, 1, 200, null, null, null, null, null, null, null, null, null, null, null, 
'if ((!isEmpty(IS_RPT) && IS_RPT.length()>= 2 && IS_RPT.substring(1,2) == "1") && (B_ACCT_TYPE == "D1") && (C_BUSI_DTL_LINES == "11")) {
    if (isEmpty($value)) {
        return false
    }
}
return true', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'mbtelement', '1');

insert into gp_qc_rule (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, EXISTS_SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_210__C_FIRST_HOU_LOAN_FLAG', '20190530', 'TESTCORP', '72', '002', null, null, '是否为首套住房贷款', '是否为首套住房贷款必须为数字英文字母;长度在2~2之间;', null, 'ELEMENT', 'C_FIRST_HOU_LOAN_FLAG', '是否为首套住房贷款', 'R', 'Y', 'ALPHA_NUMBER', null, 2, 2, null, null, null, null, null, null, null, 'GP_BM_DATA_DIC', '19989', null, null, 
'if ((!isEmpty(IS_RPT) && IS_RPT.length()>= 2 && IS_RPT.substring(1,2) == "1") && (B_ACCT_TYPE == "D1") && (C_BUSI_DTL_LINES == "11")) {
    if (isEmpty($value)) {
        return false
    }
}
return true', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'mbtelement', '1');

insert into gp_qc_rule (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, EXISTS_SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_210__H_ACCT_STATUS', '20190614', 'TESTCORP', '72', '002', null, null, '账户状态', '账户状态必须为数字英文字母;长度在1~2之间;', null, 'ELEMENT', 'H_ACCT_STATUS', '账户状态', 'R', 'Y', 'ALPHA_NUMBER', null, 1, 2, null, null, null, null, null, null, null, null, null, null, null, 
'if (!isEmpty(IS_RPT) && IS_RPT.length()>= 5 && IS_RPT.substring(4,5) == "1") {
    if (isEmpty($value)) {
        return false
    }
}
return true', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'a20c108e59ec4520939d4a1ea4c0bff8', null, null, 'mbtelement', '1');

insert into gp_qc_rule (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, EXISTS_SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_210__H_RPY_STATUS', '20190614', 'TESTCORP', '72', '002', null, null, '当前还款状态', '当前还款状态必须为数字英文字母中文;长度在1~1之间;', null, 'ELEMENT', 'H_RPY_STATUS', '当前还款状态', 'R', 'Y', null, null, 1, 1, null, null, null, null, null, null, null, null, null, null, null,
 'if (!isEmpty(IS_RPT) && IS_RPT.length()>= 5 && IS_RPT.substring(4,5) == "1") {
    if (isEmpty($value)) {
        return false
    }
}
return true', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'f79f2ebfcafc401c8eafda7d0ca7b896', null, null, 'mbtelement', '1');

insert into gp_qc_rule (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, EXISTS_SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_210__J_ACCT_STATUS', '20190614', 'TESTCORP', '72', '002', null, null, '账户状态', '账户状态必须为数字英文字母;长度在1~1之间;', null, 'ELEMENT', 'J_ACCT_STATUS', '账户状态', 'R', 'Y', 'ALPHA_NUMBER', null, 1, 1, null, null, null, null, null, null, null, null, null, null, null, 
'if (!isEmpty(IS_RPT) && IS_RPT.length()>= 7 && IS_RPT.substring(6,7) == "1") {
    if (isEmpty($value)) {
        return false
    }
}
return true', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '7e9d021b03ee4baeb1743e3dee8a38ee', null, null, 'mbtelement', '1');

insert into gp_qc_rule (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, EXISTS_SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_210__J_LAT_RPY_AMT', '20190614', 'TESTCORP', '72', '002', null, null, '最近一次实际还款金额', '最近一次实际还款金额取值范围在0~999999999999999之间;', null, 'ELEMENT', 'J_LAT_RPY_AMT', '最近一次实际还款金额', 'R', 'Y', 'NUMBER', null, null, null, 0.0000000000, 999999999999999.0000000000, null, null, null, null, null, null, null, null, null, 
'if (!isEmpty(IS_RPT) && IS_RPT.length()>= 7 && IS_RPT.substring(6,7) == "1") {
    if (isEmpty($value)) {
        return false
    }
}
return true', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '8ffbf3f6c04c4792863b9d88c585c839', null, null, 'mbtelement', '1');

insert into gp_qc_rule (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, EXISTS_SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_210__J_TOT_OVERD', '20190614', 'TESTCORP', '72', '002', null, null, '当前逾期总额', '当前逾期总额取值范围在0~999999999999999之间;', null, 'ELEMENT', 'J_TOT_OVERD', '当前逾期总额', 'R', 'Y', 'NUMBER', null, null, null, 0.0000000000, 999999999999999.0000000000, null, null, null, null, null, null, null, null, null, 
'if ((!isEmpty(IS_RPT) && IS_RPT.length()>= 7 && IS_RPT.substring(6,7) == "1") && (B_ACCT_TYPE == "D1" || B_ACCT_TYPE == "R1" || B_ACCT_TYPE == "R2" || B_ACCT_TYPE == "R4")) {
    if (isEmpty($value)) {
        return false
    }
}
return true', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '857b3b15036e4446be3686beef7f8fc8', null, null, 'mbtelement', '1');

insert into gp_qc_rule (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, EXISTS_SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_210__J_FIVE_CATE', '20190614', 'TESTCORP', '72', '002', null, null, '五级分类', '五级分类必须为数字英文字母;长度在1~1之间;', null, 'ELEMENT', 'J_FIVE_CATE', '五级分类', 'R', 'Y', 'ALPHA_NUMBER', null, 1, 1, null, null, null, null, null, null, null, 'GP_BM_DATA_DIC', '19052', null, null, 
'if ((!isEmpty(IS_RPT) && IS_RPT.length()>= 7 && IS_RPT.substring(6,7) == "1") && (B_ACCT_TYPE == "D1" || B_ACCT_TYPE == "R1" || B_ACCT_TYPE == "R2" || B_ACCT_TYPE == "R3" || B_ACCT_TYPE == "R4")) {
    if (isEmpty($value)) {
        return false
    }
}
return true', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '35c54f71563840e4bb3c431e21101216', null, null, 'mbtelement', '1');

insert into gp_qc_rule (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, EXISTS_SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_210__B_MNGMT_ORG_CODE', '20190614', 'TESTCORP', '72', '002', null, null, '业务管理机构代码', '业务管理机构代码必须为数字英文字母;长度在14~14之间;', null, 'ELEMENT', 'B_MNGMT_ORG_CODE', '业务管理机构代码', 'R', 'Y', 'ALPHA_NUMBER', null, 14, 14, null, null, null, null, null, null, null, null, null, null, null, 
'if (!isEmpty(IS_RPT) && IS_RPT.length()>= 1 && IS_RPT.substring(0,1) == "1") {
    if (isEmpty($value)) {
        return false
    }
}
return true', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '2591b0bb192d4400a935d4367414b9a4', null, null, 'mbtelement', '1');

insert into gp_qc_rule (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, EXISTS_SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_210I2100A13I2100A1302I2100A1301', '20190628', 'TESTCORP', '72', 'XD', null, null, '信息报告日期所在月与月份应在同一个月或相差一个月。', '信息报告日期所在月与月份应在同一个月或相差一个月。', null, 'BUSI', 'DATA_ID', null, null, 'Y', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 
'if (!isEmpty(H_MONTH) && !isEmpty(B_RPT_DATE) && B_RPT_DATE.length()>=6 && H_MONTH.length()>=6) {
    if (((B_RPT_DATE.substring(0,4).toBigDecimal()-H_MONTH.substring(0,4).toBigDecimal())*12 + (B_RPT_DATE.substring(4,6).toBigDecimal()-H_MONTH.substring(4,6).toBigDecimal())).abs()<=1) {
        return true
    }
    return false
}
return true', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '4d18b07484ff461fa3cb67349788e69a', null, null, 'mbtrule', '1');

insert into gp_qc_rule (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, EXISTS_SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_210R210010301R210010301_01R210010102_01', '20190618', 'TESTCORP', '72', '002', null, null, '当“报告时点说明代码”为“31-月结日首次上报存量账户”时，若“账户类型”为“D1”且基本信息段中“分次放款标志”大于 0，则还应包含基础段、基本信息段、月度表现信息段、授信额度信息段。', '当“报告时点说明代码”为“31-月结日首次上报存量账户”时，若“账户类型”为“D1”且基本信息段中“分次放款标志”大于 0，则还应包含基础段、基本信息段、月度表现信息段、授信额度信息段。', null, 'BUSI', 'DATA_ID', null, null, 'Y', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 
'if (!isEmpty(C_FLAG) &&  B_RPT_DATE_CODE == "31" && B_ACCT_TYPE == "D1"  && C_FLAG.toBigDecimal() > 0) {
    if (!isEmpty(IS_RPT) && IS_RPT.length()>=5 && IS_RPT.substring(0,3) == "111" & IS_RPT.substring(4,5) == "1") {
        return true
    }
    return false
}
return true', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '45ea3fc868b342b0b6335b5b73333917', null, null, 'mbtrule', '1');

insert into gp_qc_rule (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, EXISTS_SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_210R210011102R210011103R210011104', '20190620', 'TESTCORP', '72', '002', null, null, '当“报告时点说明代码”为“20-账户关闭”时，除基础段外:若“账户类型”为“C1”，还应包含非月度表现信息段。', '当“报告时点说明代码”为“20-账户关闭”时，除基础段外:若“账户类型”为“C1”，还应包含非月度表现信息段。', null, 'BUSI', 'DATA_ID', null, null, 'Y', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 
'if (B_RPT_DATE_CODE=="20" && B_ACCT_TYPE == "C1") {
    if (!isEmpty(IS_RPT) && IS_RPT.length()>=7 && IS_RPT.substring(0,1)=="1" && IS_RPT.substring(6,7)=="1") {
        return true
    }
    return false
}
return true', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'd00a8bdd7d524c2cad66e7359a5a7bdd', null, null, 'mbtrule', '1');

insert into gp_qc_rule (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, EXISTS_SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_210R210011203R210011205R210010206', '20190620', 'TESTCORP', '72', '002', null, null, '当“报告时点说明代码”为“20-账户关闭”时:若“账户类型”为“R1/R3/R4”，不应包含初始债权说明段、非月度表现信息段、大额专项分期信息段。', '当“报告时点说明代码”为“20-账户关闭”时:若“账户类型”为“R1/R3/R4”，不应包含初始债权说明段、非月度表现信息段、大额专项分期信息段。', null, 'BUSI', 'DATA_ID', null, null, 'Y', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 
'if (B_RPT_DATE_CODE == "20" && (B_ACCT_TYPE == "R1" || B_ACCT_TYPE == "R3" || B_ACCT_TYPE == "R4")) {
    if (!isEmpty(IS_RPT) && IS_RPT.length()>=7 && IS_RPT.substring(3,4) == "0" && IS_RPT.substring(5,7) == "00") {
        return true
    }
    return false
}
return true', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '5da35292ea554db287f51a0a40aee261', null, null, 'mbtrule', '1');

insert into gp_qc_rule (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, EXISTS_SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_210R210011204R210011207R210010208', '20190620', 'TESTCORP', '72', '002', null, null, '当“报告时点说明代码”为“20-账户关闭”时:若“账户类型”为“R2”且基本信息段中的“借贷业务种类细分”为“82-大额专项分期卡”，不应包含初始债权说明段、非月度表现信息段、授信额度信息段。', '当“报告时点说明代码”为“20-账户关闭”时:若“账户类型”为“R2”且基本信息段中的“借贷业务种类细分”为“82-大额专项分期卡”，不应包含初始债权说明段、非月度表现信息段、授信额度信息段。', null, 'BUSI', 'DATA_ID', null, null, 'Y', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 
'if (B_RPT_DATE_CODE == "20" && B_ACCT_TYPE == "R2" && C_BUSI_DTL_LINES == "82") {
    if (!isEmpty(IS_RPT) && IS_RPT.length()>=7 && IS_RPT.substring(2,4) == "00" && IS_RPT.substring(6,7) == "0") {
        return true
    }
    return false
}
return true', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'ee97fd7cf3a44ee897e80fdc4951b757', null, null, 'mbtrule', '1');

insert into gp_qc_rule (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, EXISTS_SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_210R210010805R210010805R210010805_01', '20190619', 'TESTCORP', '72', '002', null, null, '当“报告时点说明代码”为“30-月度结算”时:若“账户类型”为“R2”，不应包含初始债权说明段、非月度表现信息段。', '当“报告时点说明代码”为“30-月度结算”时:若“账户类型”为“R2”，不应包含初始债权说明段、非月度表现信息段。', null, 'BUSI', 'DATA_ID', null, null, 'Y', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 
'if (B_RPT_DATE_CODE == "30" && B_ACCT_TYPE == "R2") {
    if (!isEmpty(IS_RPT) && IS_RPT.length()>=7 && IS_RPT.substring(3,4) == "0" && IS_RPT.substring(6,7) == "0") {
        return true
    }
    return false
}
return true', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '677f451179f143a787bebd4dbaa995a4', null, null, 'mbtrule', '1');

insert into gp_qc_rule (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, EXISTS_SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_210R210010102_1R210010102_1_001R210010104', '20190618', 'TESTCORP', '72', '002', null, null, '当“报告时点说明代码”为“10-新开户”时，除基础段外，个人借贷账户信息记录至少包含基本信息段。', '当“报告时点说明代码”为“10-新开户”时，除基础段外，个人借贷账户信息记录至少包含基本信息段:若“账户类型”为“D1”，还应包含月度表现信息段。', null, 'BUSI', 'DATA_ID', null, null, 'Y', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 
'if (B_RPT_DATE_CODE == "10" & !isEmpty(IS_RPT)) {
    if (IS_RPT.length()>=2 &&IS_RPT.substring(0,2) == "11") {
        return true
    }
    return false
}
return true', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '34f6fa38ef1447ee985095625ce58f36', null, null, 'mbtrule', '1');

insert into gp_qc_rule (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, EXISTS_SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_210R210011301R210011301R210010702', '20190620', 'TESTCORP', '72', '002', null, null, '当“报告时点说明代码”为“32-月结日账户关闭”时: 除基础段外，至少还应包括月度表现信息段；“账户类型”不能为“C1”。', '当“报告时点说明代码”为“32-月结日账户关闭”时: 除基础段外，至少还应包括月度表现信息段；“账户类型”不能为“C1”。', null, 'BUSI', 'DATA_ID', null, null, 'Y', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 
'if (B_RPT_DATE_CODE == "32") {
    if (!isEmpty(IS_RPT) && IS_RPT.length()>=5 && IS_RPT.substring(0,1) == "1" && IS_RPT.substring(4,5) == "1" && B_ACCT_TYPE != "C1") {
        return true
    }
    return false
}
return true', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'a6b429d9737b4becb3c26d62cb0cb290', null, null, 'mbtrule', '1');

insert into gp_qc_rule (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, EXISTS_SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_210R210121501R210121503,R210121501001R210010102', '20190620', 'TESTCORP', '72', '002', null, null, '首次上报时(即，库中不存在该账户):若“账户类型”为“D1”且基本信息段中“分次放款标志”大于0，则还应包含月度表现信息段、授信额度信息段。', '首次上报时(即，库中不存在该账户):若“账户类型”为“D1”且基本信息段中“分次放款标志”大于0，则还应包含月度表现信息段、授信额度信息段。', null, 'BUSI', 'DATA_ID', null, null, 'Y', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 
'if ((!exists("MBT_210_RPT","B_ACCT_CODE", B_ACCT_CODE)) && B_ACCT_TYPE == "D1" && !isEmpty(C_FLAG) && C_FLAG.isBigDecimal() && C_FLAG.toBigDecimal() > 0) {
    if (!isEmpty(IS_RPT) && IS_RPT.length()>=5 && IS_RPT.substring(2,3) == "1" && IS_RPT.substring(4,5) == "1") {
        return true
    }
    return false
}
return true', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '057a2d57a3c04b1b8582d888b5ea87d5', null, null, 'mbtrule', '1');

insert into gp_qc_rule (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, EXISTS_SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_210R210121403R210121503,R210121505R210010206', '20190620', 'TESTCORP', '72', '002', null, null, '首次上报时(即，库中不存在该账户):若“账户类型”为“D1”，不应包含初始债权说明段、非月度表现信息段、大额专项分期信息段。', '首次上报时(即，库中不存在该账户):若“账户类型”为“D1”，不应包含初始债权说明段、非月度表现信息段、大额专项分期信息段。', null, 'BUSI', 'DATA_ID', null, null, 'Y', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 
'if (!exists("MBT_210_RPT","B_ACCT_CODE", B_ACCT_CODE) && B_ACCT_TYPE == "D1") {
    if (!isEmpty(IS_RPT) && IS_RPT.length()>=7 && IS_RPT.substring(3,4) == "0" && IS_RPT.substring(5,7) == "00") {
        return true
    }
    return false
}
return true', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '12a3fe74c97f44b19b8c28dbeed893b6', null, null, 'mbtrule', '1');

insert into gp_qc_rule (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, EXISTS_SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_210R210121411R210121501,R210121513R210010212', '20190620', 'TESTCORP', '72', '002', null, null, '首次上报时(即，库中不存在该账户):若“账户类型”为“C1”，不应包含月度表现段、大额专项分期信息段、抵质押物信息段、授信额度信息段。', '首次上报时(即，库中不存在该账户):若“账户类型”为“C1”，不应包含月度表现段、大额专项分期信息段、抵质押物信息段、授信额度信息段。', null, 'BUSI', 'DATA_ID', null, null, 'Y', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 
'if (!exists("MBT_210_RPT","B_ACCT_CODE", B_ACCT_CODE) && B_ACCT_TYPE == "C1") {
    if (!isEmpty(IS_RPT) && IS_RPT.length()>=10 && IS_RPT.substring(2,3) == "0" && IS_RPT.substring(4,6) == "00" && IS_RPT.substring(9,10) == "0") {
        return true
    }
    return false
}
return true', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0460a2aae8814f3b80631047ddef4440', null, null, 'mbtrule', '1');

insert into gp_qc_rule (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, EXISTS_SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_210R210010102_2R210010103R210010104_002', '20190618', 'TESTCORP', '72', '002', null, null, '当“报告时点说明代码”为“10-新开户”时，除基础段外，个人借贷账户信息记录至少包含基本信息段:若“账户类型”为“D1”，还应包含月度表现信息段。', '当“报告时点说明代码”为“10-新开户”时，除基础段外，个人借贷账户信息记录至少包含基本信息段:若“账户类型”为“D1”，还应包含月度表现信息段。', null, 'BUSI', 'DATA_ID', null, null, 'Y', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 
'if (B_RPT_DATE_CODE == "10" && B_ACCT_TYPE == "D1") {
    if (!isEmpty(IS_RPT) && IS_RPT.length()>=5 && IS_RPT.substring(0,2) == "11" && IS_RPT.substring(4,5) == "1") {
        return true
    }
    return false
}
return true', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '34f6fa38ef1447ee985095615ce58f36', null, null, 'mbtrule', '1');

insert into gp_qc_rule (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, EXISTS_SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_210R210010401R210010301R210010202', '20190619', 'TESTCORP', '72', '002', null, null, '当“报告时点说明代码”为“31-月结日首次上报存量账户”时，若“账户类型”为“D1”且基本信息段中“分次放款标志”为“0”，不应包含初始债权说明段、非月度表现信息段、大额专项分期信息段、授信额度信息段。', '当“报告时点说明代码”为“31-月结日首次上报存量账户”时，若“账户类型”为“D1”且基本信息段中“分次放款标志”为“0”，不应包含初始债权说明段、非月度表现信息段、大额专项分期信息段、授信额度信息段。', null, 'BUSI', 'DATA_ID', null, null, 'Y', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 
'if (B_RPT_DATE_CODE == "31" && B_ACCT_TYPE == "D1" && C_FLAG == "0") {
    if (!isEmpty(IS_RPT) && IS_RPT.length()>=7 && IS_RPT.substring(2,4) == "00" && IS_RPT.substring(5,7) == "00") {
        return true
    }
    return false
}
return true', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'f61ef6b63da54608a195ed2d54b01516', null, null, 'mbtrule', '1');

insert into gp_qc_rule (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, EXISTS_SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_210R210010402R210010303R210010206', '20190619', 'TESTCORP', '72', '002', null, null, '当“报告时点说明代码”为“31-月结日首次上报存量账户”时，若“账户类型”为“D1”，不应包含初始债权说明段、非月度表现信息段、大额专项分期信息段。', '当“报告时点说明代码”为“31-月结日首次上报存量账户”时，若“账户类型”为“D1”，不应包含初始债权说明段、非月度表现信息段、大额专项分期信息段。', null, 'BUSI', 'DATA_ID', null, null, 'Y', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 
'if (B_RPT_DATE_CODE == "31" && B_ACCT_TYPE == "D1") {
    if (!isEmpty(IS_RPT) && IS_RPT.length()>=7 && IS_RPT.substring(3,4) == "0" && IS_RPT.substring(5,7) == "00") {
        return true
    }
    return false
}
return true', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'b217197b07d24b37b1f0fbb7e9464360', null, null, 'mbtrule', '1');

insert into gp_qc_rule (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, EXISTS_SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_210R210010403R210010305R210010206', '20190619', 'TESTCORP', '72', '002', null, null, '当“报告时点说明代码”为“31-月结日首次上报存量账户”时，若“账户类型”为“R1/R3/R4”，不应包含初始债权说明段、非月度表现信息段、大额专项分期信息段;', '当“报告时点说明代码”为“31-月结日首次上报存量账户”时，若“账户类型”为“R1/R3/R4”，不应包含初始债权说明段、非月度表现信息段、大额专项分期信息段。', null, 'BUSI', 'DATA_ID', null, null, 'Y', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 
'if (B_RPT_DATE_CODE == "31" && (B_ACCT_TYPE == "R1" || B_ACCT_TYPE == "R3" || B_ACCT_TYPE == "R4")) {
    if (!isEmpty(IS_RPT) && IS_RPT.length()>=7 && IS_RPT.substring(3,4) == "0" && IS_RPT.substring(5,7) == "00") {
        return true
    }
    return false
}
return true', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '184bfd9fd6c44c689e19985fc78ba14b', null, null, 'mbtrule', '1');

insert into gp_qc_rule (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, EXISTS_SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_210R210010404R210010306R210010208', '20190619', 'TESTCORP', '72', '002', null, null, '当“报告时点说明代码”为“31-月结日首次上报存量账户”时，若“账户类型”为“R2”且基本信息段中的“借贷业务种类细分”是“82-大额专项分期卡”，不应包含初始债权说明段、非月度表现信息段、授信额度信息段。', '当“报告时点说明代码”为“31-月结日首次上报存量账户”时，若“账户类型”为“R2”且基本信息段中的“借贷业务种类细分”是“82-大额专项分期卡”，不应包含初始债权说明段、非月度表现信息段、授信额度信息段。', null, 'BUSI', 'DATA_ID', null, null, 'Y', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 
'if (B_RPT_DATE_CODE == "31" && B_ACCT_TYPE == "R2" && C_BUSI_DTL_LINES == "82") {
    if (!isEmpty(IS_RPT) && IS_RPT.length()>=7 && IS_RPT.substring(2,4) == "00" && IS_RPT.substring(6,7) == "0") {
        return true
    }
    return false
}
return true', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'ad5e20dfcf0e4a94bd83f50b94903494', null, null, 'mbtrule', '1');

insert into gp_qc_rule (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, EXISTS_SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_210R210010804R210010804R210010208', '20190619', 'TESTCORP', '72', '002', null, null, '当“报告时点说明代码”为“30-月度结算”时:若“账户类型”为“R2”且基本信息段中的“借贷业务种类细分”是“82-大额专项分期卡”，不应包含初始债权说明段、非月度表现信息段、授信额度信息段。', '当“报告时点说明代码”为“30-月度结算”时:若“账户类型”为“R2”且基本信息段中的“借贷业务种类细分”是“82-大额专项分期卡”，不应包含初始债权说明段、非月度表现信息段、授信额度信息段。', null, 'BUSI', 'DATA_ID', null, null, 'Y', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 
'if (B_RPT_DATE_CODE == "30" && B_ACCT_TYPE == "R2" && C_BUSI_DTL_LINES == "82") {
    if (!isEmpty(IS_RPT) && IS_RPT.length()>=7 && IS_RPT.substring(2,4) == "00" && IS_RPT.substring(6,7) == "0") {
        return true
    }
    return false
}
return true', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '83c1107a085e4fc5a7d4f2bd4cb8fb21', null, null, 'mbtrule', '1');

insert into gp_qc_rule (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, EXISTS_SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_210R210011002R210011001R210011002', '20190620', 'TESTCORP', '72', '002', null, null, '当“报告时点说明代码”为“40-收回逾期款项”时:若“账户类型”为“D1/R1/R2/R4”，还不应包含初债权说明段、特殊交易说明段、基本信息段、相关还款责任人段。', '当“报告时点说明代码”为“40-收回逾期款项”时:若“账户类型”为“D1/R1/R2/R4”，还不应包含初债权说明段、特殊交易说明段、基本信息段、相关还款责任人段。', null, 'BUSI', 'DATA_ID', null, null, 'Y', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 
'if (B_RPT_DATE_CODE == "40" && (B_ACCT_TYPE == "D1" || B_ACCT_TYPE == "R1" || B_ACCT_TYPE == "R2" || B_ACCT_TYPE =="R4")) {
    if (!isEmpty(IS_RPT) && IS_RPT.length()>=11 && IS_RPT.substring(1,2) == "0" && IS_RPT.substring(3,4) == "0" && IS_RPT.substring(8,9) == "0" && IS_RPT.substring(10,11) == "0") {
        return true
    }
    return false
}
return true', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '463d0993ade847fa97393485675be34b', null, null, 'mbtrule', '1');

insert into gp_qc_rule (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, EXISTS_SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_210__F_MCC', '20190614', 'TESTCORP', '72', '002', null, null, '授信协议标识码', '授信协议标识码必须为数字英文字母;长度在14~60之间;', null, 'ELEMENT', 'F_MCC', '授信协议标识码', 'R', 'Y', 'ALPHA_NUMBER', null, 14, 60, null, null, null, null, null, null, null, null, null, null, null,
 'if (!isEmpty(IS_RPT) && IS_RPT.length()>=3 && IS_RPT.substring(2,3) == "1") {
    if (isEmpty($value)) {
        return false
    }
}
return true', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '5c4aa7d92c0341cfbb3b2658ff0e8257', null, null, 'mbtelement', '1');

insert into gp_qc_rule (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, EXISTS_SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_210__G_INIT_RPY_STS', '20190614', 'TESTCORP', '72', '002', null, null, '债权转移时的还款状态', '债权转移时的还款状态必须为数字英文字母;长度在1~1之间;', null, 'ELEMENT', 'G_INIT_RPY_STS', '债权转移时的还款状态', 'R', 'Y', 'ALPHA_NUMBER', null, 1, 1, null, null, null, null, null, null, null, 'GP_BM_DATA_DIC', '19236', null, null, 
'if (!isEmpty(IS_RPT) && IS_RPT.length()>=4 && IS_RPT.substring(3,4) == "1") {
    if (isEmpty($value)) {
        return false
    }
}
return true', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'ea27b7a747144fc5be8d1a03dd95f42b', null, null, 'mbtelement', '1');

insert into gp_qc_rule (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, EXISTS_SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_210__H_ACCT_BAL', '20190614', 'TESTCORP', '72', '002', null, null, '余额', '余额取值范围在0~999999999999999之间;', null, 'ELEMENT', 'H_ACCT_BAL', '余额', 'R', 'Y', 'NUMBER', null, null, null, 0.0000000000, 999999999999999.0000000000, null, null, null, null, null, null, null, null, null, 
'if (!isEmpty(IS_RPT) && IS_RPT.length()>=5 && IS_RPT.substring(4,5) == "1") {
    if (isEmpty($value)) {
        return false
    }
}
return true', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'ff93e094ad3741ad982b0d54f5d2751e', null, null, 'mbtelement', '1');

insert into gp_qc_rule (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, EXISTS_SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_210__H_REM_REP_PRD', '20190614', 'TESTCORP', '72', '002', null, null, '剩余还款期数', '剩余还款期数取值范围在0~999之间;', null, 'ELEMENT', 'H_REM_REP_PRD', '剩余还款期数', 'R', 'Y', 'NUMBER', null, null, null, 0.0000000000, 999.0000000000, null, null, null, null, null, null, null, null, null, 
'if ((!isEmpty(IS_RPT) && IS_RPT.length()>=5 && IS_RPT.substring(4,5) == "1") && (B_ACCT_TYPE == "D1" || B_ACCT_TYPE == "R1" || B_ACCT_TYPE == "R2" || B_ACCT_TYPE == "R4")) {
    if (isEmpty($value)) {
        return false
    }
}
return true', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '5dcd5fc44e87434ba5d036106448425a', null, null, 'mbtelement', '1');

insert into gp_qc_rule (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, EXISTS_SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_210__H_RPY_PRCT', '20190614', 'TESTCORP', '72', '002', null, null, '实际还款百分比', '实际还款百分比取值范围在0~999之间;', null, 'ELEMENT', 'H_RPY_PRCT', '实际还款百分比', 'R', 'Y', 'NUMBER', null, null, null, 0.0000000000, 999.0000000000, null, null, null, null, null, null, null, null, null, 
'if ((!isEmpty(IS_RPT) && IS_RPT.length()>=5 && IS_RPT.substring(4,5) == "1") && (B_ACCT_TYPE == "R2")) {
    if (isEmpty($value)) {
        return false
    }
}
return true', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '77c0bc62f9614b58bbc19fe6a81fa80f', null, null, 'mbtelement', '1');

insert into gp_qc_rule (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, EXISTS_SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_210__H_OVERD31_60PRINC', '20190614', 'TESTCORP', '72', '002', null, null, '逾期 31-60 天未归还本金', '逾期 31-60 天未归还本金取值范围在0~999999999999999之间;', null, 'ELEMENT', 'H_OVERD31_60PRINC', '逾期 31-60 天未归还本金', 'R', 'Y', 'NUMBER', null, null, null, 0.0000000000, 999999999999999.0000000000, null, null, null, null, null, null, null, null, null, 
'if ((!isEmpty(IS_RPT) && IS_RPT.length()>=5 && IS_RPT.substring(4,5) == "1") && (B_ACCT_TYPE == "D1" || B_ACCT_TYPE == "R1" || B_ACCT_TYPE == "R4")) {
    if (isEmpty($value)) {
        return false
    }
}
return true', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'f14599ab95f241e989bb5d1d31bffb8d', null, null, 'mbtelement', '1');

insert into gp_qc_rule (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, EXISTS_SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_210R210011404R210011407R210010208', '20190620', 'TESTCORP', '72', '002', null, null, '当“报告时点说明代码”为“32-月结日账户关闭”时:若“账户类型”为“R2”且基本信息段中的“借贷业务种类细分”为“82-大额专项分期卡”，不应包含初始债权说明段、非月度表现信息段、授信额度信息段。', '当“报告时点说明代码”为“32-月结日账户关闭”时:若“账户类型”为“R2”且基本信息段中的“借贷业务种类细分”为“82-大额专项分期卡”，不应包含初始债权说明段、非月度表现信息段、授信额度信息段。', null, 'BUSI', 'DATA_ID', null, null, 'Y', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 
'if (B_RPT_DATE_CODE == "32" && B_ACCT_TYPE == "R2" && C_BUSI_DTL_LINES == "82") {
    if (!isEmpty(IS_RPT) && IS_RPT.length()>=7 && IS_RPT.substring(2,4) == "00" && IS_RPT.substring(6,7) == "0") {
        return true
    }
    return false
}
return true', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'b012430f95eb4c8aac725b43a7feba80', null, null, 'mbtrule', '1');

insert into gp_qc_rule (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, EXISTS_SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_210R210011001R210011003R210011004', '20190620', 'TESTCORP', '72', '002', null, null, '当“报告时点说明代码”为“40-收回逾期款项”时:不应包含月度表现信息段、大额专项分期信息段、抵质押物信息段、授信额度信息段。', '当“报告时点说明代码”为“40-收回逾期款项”时:不应包含月度表现信息段、大额专项分期信息段、抵质押物信息段、授信额度信息段。', null, 'BUSI', 'DATA_ID', null, null, 'Y', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 
'if (B_RPT_DATE_CODE == "40") {
    if (!isEmpty(IS_RPT) && IS_RPT.length()>=10 && IS_RPT.substring(2,3) == "0" && IS_RPT.substring(4,6) == "00" && IS_RPT.substring(9,10) == "0") {
        return true
    }
    return false
}
return true', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'b4c04b8c6bce4312b15916b28ea470ea', null, null, 'mbtrule', '1');

insert into gp_qc_rule (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, EXISTS_SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_210__B_ID_TYPE', '20190614', 'TESTCORP', '72', '002', null, null, '借款人证件类型', '借款人证件类型必须为数字英文字母;长度在1~2之间;', null, 'ELEMENT', 'B_ID_TYPE', '借款人证件类型', 'R', 'Y', 'ALPHA_NUMBER', null, 1, 2, null, null, null, null, null, null, null, null, null, null, null, 
'if (!isEmpty(IS_RPT) && IS_RPT.length()>=1 && IS_RPT.substring(0,1) == "1") {
    if (isEmpty($value)) {
        return false
    }
}
return true', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '10051366707a4782b3aed895689f927e', null, null, 'mbtelement', '1');

insert into gp_qc_rule (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, EXISTS_SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_210__C_REPAY_MODE', '20190614', 'TESTCORP', '72', '002', null, null, '还款方式', '还款方式必须为数字英文字母;长度在2~2之间;', null, 'ELEMENT', 'C_REPAY_MODE', '还款方式', 'R', 'Y', 'ALPHA_NUMBER', null, 2, 2, null, null, null, null, null, null, null, null, null, null, null, 
'if ((!isEmpty(IS_RPT) && IS_RPT.length()>=2 && IS_RPT.substring(1,2) == "1") && (B_ACCT_TYPE == "D1" || B_ACCT_TYPE == "R1" || B_ACCT_TYPE == "R4")) {
    if (isEmpty($value)) {
        return false
    }
}
return true', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '82b60957b6ce4b6b8757cf770f49b240', null, null, 'mbtelement', '1');

insert into gp_qc_rule (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, EXISTS_SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_210__C_GUAR_MODE', '20190614', 'TESTCORP', '72', '002', null, null, '担保方式', '担保方式必须为数字英文字母;长度在1~1之间;', null, 'ELEMENT', 'C_GUAR_MODE', '担保方式', 'R', 'Y', 'ALPHA_NUMBER', null, 1, 1, null, null, null, null, null, null, null, 'GP_BM_DATA_DIC', '19262', null, null, 
'if ((!isEmpty(IS_RPT) && IS_RPT.length()>=2 && IS_RPT.substring(1,2) == "1") && (B_ACCT_TYPE != "C1")) {
    if (isEmpty($value)) {
        return false
    }
}
return true', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'f33bd1170013468284c155e6596ae12a', null, null, 'mbtelement', '1');

insert into gp_qc_rule (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, EXISTS_SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_210R210010801R210010801R210010202', '20190619', 'TESTCORP', '72', '002', null, null, '当“报告时点说明代码”为“30-月度结算”时:若“账户类型”为“D1”且基本信息段中“分次放款标志”为“0”，不应包含初始债权说明段、非月度表现信息段、大额专项分期信息段、授信额度信息段。', '当“报告时点说明代码”为“30-月度结算”时:若“账户类型”为“D1”且基本信息段中“分次放款标志”为“0”，不应包含初始债权说明段、非月度表现信息段、大额专项分期信息段、授信额度信息段。', null, 'BUSI', 'DATA_ID', null, null, 'Y', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 
'if (B_RPT_DATE_CODE == "30" && B_ACCT_TYPE == "D1" && C_FLAG == "0") {
    if (!isEmpty(IS_RPT) && IS_RPT.length()>=7 && IS_RPT.substring(2,4) == "00" && IS_RPT.substring(5,7) == "00") {
        return true
    }
    return false
}
return true', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '4933de947cab43cc91071cffe9cce5ef', null, null, 'mbtrule', '1');

insert into gp_qc_rule (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, EXISTS_SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_210R210010802R210010802R210010206', '20190619', 'TESTCORP', '72', '002', null, null, '当“报告时点说明代码”为“30-月度结算”时:若“账户类型”为“D1”，不应包含初始债权说明段、非月度表现信息段、大额专项分期信息段。', '当“报告时点说明代码”为“30-月度结算”时:若“账户类型”为“D1”，不应包含初始债权说明段、非月度表现信息段、大额专项分期信息段。', null, 'BUSI', 'DATA_ID', null, null, 'Y', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 
'if (B_RPT_DATE_CODE=="30" && B_ACCT_TYPE == "D1") {
    if (!isEmpty(IS_RPT) && IS_RPT.length()>=7 && IS_RPT.substring(3,4)=="0" && IS_RPT.substring(5,7)=="00") {
        return true
    }
    return false
}
return true', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'e556c84270f74690880faf8d77131f81', null, null, 'mbtrule', '1');

insert into gp_qc_rule (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, EXISTS_SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_210R210011101R210011101R210011102', '20190620', 'TESTCORP', '72', '002', null, null, '当“报告时点说明代码”为“20-账户关闭”时，除基础段外:若“账户类型”为“D1/R1/R2/R3/R4”，还应包含月度表现信息段。', '当“报告时点说明代码”为“20-账户关闭”时，除基础段外:若“账户类型”为“D1/R1/R2/R3/R4”，还应包含月度表现信息段。', null, 'BUSI', 'DATA_ID', null, null, 'Y', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 
'if (B_RPT_DATE_CODE == "20" && (B_ACCT_TYPE == "D1" || B_ACCT_TYPE == "R1" || B_ACCT_TYPE == "R2" || B_ACCT_TYPE =="R3" || B_ACCT_TYPE =="R4")) {
    if (!isEmpty(IS_RPT) && IS_RPT.length()>=5 && IS_RPT.substring(0,1) == "1" && IS_RPT.substring(4,5) == "1") {
        return true
    }
    return false
}
return true', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '71d709ec3f70412898e99e187ffbc2aa', null, null, 'mbtrule', '1');

insert into gp_qc_rule (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, EXISTS_SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_210I0000401_1', '20200214', 'TESTCORP', '72', '2', null, null, '公民身份证号码则应符合如下规则：长度必须为18位；
前17位为数字，第18位可为数字或字母“X”、“x”；
第7-14位为出生日期，日期必须在19010101-20991231之间；
校验位必须满足校验规则（参见国标《公民身份号码》（GB11643-1999））。', '公民身份证号码则应符合如下规则：长度必须为18位；
前17位为数字，第18位可为数字或字母“X”、“x”；
第7-14位为出生日期，日期必须在19010101-20991231之间；
校验位必须满足校验规则（参见国标《公民身份号码》（GB11643-1999））。', null, 'BUSI', 'DATA_ID', null, null, 'Y', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 
'if(MBT_210_B_ID_TYPE=="10"){
		  def ws = [7,9,10,5,8,4,2,1,6,3,7,9,10,5,8,4,2];
		  def ss = [1,0,''X'',9,8,7,6,5,4,3,2];
		  String str = ''0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ'';
		  def code=MBT_210_B_ID_NUM;
		  def aRegex = /^[1-9]\d{5}(190[1-9]|19[1-9][0-9]|20[0-9]{2})((0[1-9])|(10|11|12))(([0-2][1-9])|10|20|30|31)\d{3}[0-9Xx]$/
		  def matcher = code =~ aRegex
 		 matcher.matches();
if(matcher.getCount()==1){
		 int sum = 0;
		   if (isEmpty(code) || code.length() < 17) {
            return false
        }
        for (int i = 0; i < 17; i++){
         sum += str.indexOf(code.getAt(i)).toInteger() * ws.getAt(i).toInteger();
		 }
        def c9 = (sum%11);    
		c9= (c9==2?''X'':ss.getAt(c9));
		def matcher1 = code[0..17] =~ aRegex;
       	 matcher1.matches();
        if (matcher1.getCount()!=0 && code.getAt(17).toString()==c9.toString()) {
             return  true
        }else{
             return  false

        }
}else{
		return  false
}

}
return true

', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'admin', '20200119', '20200119171000', null, null, null, '063a51c208ec4c22a80d169211e92ab2', null, null, 'mbtrule', '1');

insert into gp_qc_rule (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, EXISTS_SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_210_DI0000401_1', '20200303', 'TESTCORP', '72', '2', null, null, '相关还款责任人段的公民身份证号码则应符合如下规则：长度必须为18位；前17位为数字，第18位可为数字或字母“X”、“x”；第7-14位为出生日期，日期必须在19010101-20991231之间；校验位必须满足校验规则（参见国标《公民身份号码》（GB11643-1999））。', '相关还款责任人段的公民身份证号码则应符合如下规则：长度必须为18位；前17位为数字，第18位可为数字或字母“X”、“x”；第7-14位为出生日期，日期必须在19010101-20991231之间；校验位必须满足校验规则（参见国标《公民身份号码》（GB11643-1999））。', null, 'BUSI', 'DATA_ID', null, null, 'Y', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null,
 'if(D_ARLP_ID_TYPE =="1" &&  D_ARLP_CERT_TYPE=="10"){
		  def ws = [7,9,10,5,8,4,2,1,6,3,7,9,10,5,8,4,2];
		  def ss = [1,0,''X'',9,8,7,6,5,4,3,2];
		  String str = ''0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ'';
		  def code=D_ARLP_CERT_NUM;
		  def aRegex = /^[1-9]\d{5}(190[1-9]|19[1-9][0-9]|20[0-9]{2})((0[1-9])|(10|11|12))(([0-2][1-9])|10|20|30|31)\d{3}[0-9Xx]$/
		  def matcher = code =~ aRegex
 		 matcher.matches();
if(matcher.getCount()==1){
		 int sum = 0;
		   if (isEmpty(code) || code.length() < 17) {
            return false
        }
        for (int i = 0; i < 17; i++){
         sum += str.indexOf(code.getAt(i)).toInteger() * ws.getAt(i).toInteger();
		 }
        def c9 = (sum%11);    
		c9= (c9==2?''X'':ss.getAt(c9));
		def matcher1 = code[0..17] =~ aRegex;
       	 matcher1.matches();
        if (matcher1.getCount()!=0 && code.getAt(17).toString()==c9.toString()) {
             return  true
        }else{
             return  false

        }
}else{
		return  false
}

}
return true

', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'admin', '20200119', '20200119171000', null, null, null, '063a51c208ec4c22a80d169211e92ab2', null, null, 'mbtrule', '1');

insert into gp_qc_rule (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, EXISTS_SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_210R210010103R210010105R210010102', '20190618', 'TESTCORP', '72', '002', null, null, '当“报告时点说明代码”为“10-新开户”时，若“账户类型”为“R1/R3/R4”，还应包含月度表现信息段、授信额度信息段;', '当“报告时点说明代码”为“10-新开户”时，若“账户类型”为“R1/R3/R4”，还应包含月度表现信息段、授信额度信息段;', null, 'BUSI', 'DATA_ID', null, null, 'Y', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 
'if (B_RPT_DATE_CODE == "10" && (B_ACCT_TYPE == "R1" || B_ACCT_TYPE == "R3" || B_ACCT_TYPE =="R4")) {
    if (!isEmpty(IS_RPT) && IS_RPT.length()>=5 && IS_RPT.substring(2,3) == "1" && IS_RPT.substring(4,5) == "1") {
        return true
    }
    return false
}
return true', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '9ae735ab585346cfba3017c8b9dd26c8', null, null, 'mbtrule', '1');

insert into gp_qc_rule (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, EXISTS_SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_210R210011701R210011702', '20190620', 'TESTCORP', '72', '002', null, null, '个人借贷账户信息记录必须包含基础段。', '个人借贷账户信息记录必须包含基础段。', null, 'BUSI', 'DATA_ID', null, null, 'Y', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null,
 ' if (!isEmpty(IS_RPT) && IS_RPT.length()>=1 && IS_RPT.substring(0,1) == "1") {
        if (isEmpty($value)) {
        return false
    }
}
return true', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'bbbb88911c6043ceaa8b2c674d0ddb33', null, null, 'mbtrule', '1');

insert into gp_qc_rule (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, EXISTS_SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_210__B_NAME', '20190614', 'TESTCORP', '72', '002', null, null, '借款人姓名', '借款人姓名必须为数字英文字母中文;长度在1~30之间;', null, 'ELEMENT', 'B_NAME', '借款人姓名', 'R', 'Y', null, null, 1, 30, null, null, null, null, null, null, null, null, null, null, null, 
'if (!isEmpty(IS_RPT) && IS_RPT.length()>=1 && IS_RPT.substring(0,1) == "1") {
    if (isEmpty($value)) {
        return false
    }
}
return true', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '42e10cc7a20a4161b0ff23d9232c5736', null, null, 'mbtelement', '1');

insert into gp_qc_rule (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, EXISTS_SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_210__C_CY', '20190614', 'TESTCORP', '72', '002', null, null, '币种', '币种必须为数字英文字母;长度在3~3之间;', null, 'ELEMENT', 'C_CY', '币种', 'R', 'Y', 'ALPHA_NUMBER', null, 3, 3, null, null, null, null, null, null, null, 'GP_BM_DATA_DIC', '19243', null, null, 
'if (!isEmpty(IS_RPT) &&  IS_RPT.length()>=2 && IS_RPT.substring(1,2) == "1") {
    if (isEmpty($value)) {
        return false
    }
}
return true', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '10a1be10ba714f92a75ede5e3bbdeadc', null, null, 'mbtelement', '1');

insert into gp_qc_rule (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, EXISTS_SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_210R210011202R210011203R210010206', '20190620', 'TESTCORP', '72', '002', null, null, '当“报告时点说明代码”为“20-账户关闭”时:若“账户类型”为“D1”，不应包含初始债权说明段、非月度表现信息段、大额专项分期信息段。', '当“报告时点说明代码”为“20-账户关闭”时:若“账户类型”为“D1”，不应包含初始债权说明段、非月度表现信息段、大额专项分期信息段。', null, 'BUSI', 'DATA_ID', null, null, 'Y', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 
'if (B_RPT_DATE_CODE == "20" && B_ACCT_TYPE == "D1") {
    if (!isEmpty(IS_RPT) && IS_RPT.length()>=7 && IS_RPT.substring(3,4) == "0" && IS_RPT.substring(5,7) == "00") {
        return true
    }
    return false
}
return true', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '7edb64bd89684e97b6aefdf9726968b4', null, null, 'mbtrule', '1');

insert into gp_qc_rule (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, EXISTS_SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_210__B_ID_NUM', '20190614', 'TESTCORP', '72', '002', null, null, '借款人证件号码', '借款人证件号码必须为数字英文字母中文;长度在1~20之间;', null, 'ELEMENT', 'B_ID_NUM', '借款人证件号码', 'R', 'Y', null, null, 1, 20, null, null, null, null, null, null, null, null, null, null, null, 
'if (!isEmpty(IS_RPT) && IS_RPT.length()>=1 &&  IS_RPT.substring(0,1) == "1") {
    if (isEmpty($value)) {
        return false
    }
}
return true', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'c74c7873a85c42ada185c9df609f6f65', null, null, 'mbtelement', '1');

insert into gp_qc_rule (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, EXISTS_SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_210__B_ACCT_CODE', '20190614', 'TESTCORP', '72', '002', null, null, '账户标识码', '账户标识码必须为数字英文字母;长度在1~60之间;', null, 'ELEMENT', 'B_ACCT_CODE', '账户标识码', 'R', 'Y', 'ALPHA_NUMBER', null, 1, 60, null, null, null, null, null, null, null, null, null, null, null, 
'if (!isEmpty(IS_RPT) && IS_RPT.length()>=1 && IS_RPT.substring(0,1) == "1") {
    if (isEmpty($value)) {
        return false
    }
}
return true', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'b499d9cfd7ec444a8e41764cc6cf2d4d', null, null, 'mbtelement', '1');

insert into gp_qc_rule (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, EXISTS_SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_210__C_ACCT_CRED_LINE_AMT', '20190614', 'TESTCORP', '72', '002', null, null, '信用额度', '信用额度取值范围在0~999999999999999之间;', null, 'ELEMENT', 'C_ACCT_CRED_LINE_AMT', '信用额度', 'R', 'Y', 'NUMBER', null, null, null, 0.0000000000, 999999999999999.0000000000, null, null, null, null, null, null, null, null, null, 
'if ((!isEmpty(IS_RPT) && IS_RPT.length()>=2 && IS_RPT.substring(1,2) == "1") && (B_ACCT_TYPE == "R1" || B_ACCT_TYPE == "R2" || B_ACCT_TYPE == "R3")) {
    if (isEmpty($value)) {
        return false
    }
}
return true', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '36e376175cb7456387ef1497d73c66d2', null, null, 'mbtelement', '1');

insert into gp_qc_rule (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, EXISTS_SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_210I2100H02I2100H0201I2100H0202', '20190620', 'TESTCORP', '72', '002', null, null, '“结算/应还款日”与“月份”中的年、月应一致。', '“结算/应还款日”与“月份”中的年、月应一致。', null, 'BUSI', 'DATA_ID', null, null, 'Y', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 
'if (!isEmpty(H_SETT_DATE) && !isEmpty(H_MONTH) && H_SETT_DATE.length()>=6 && H_MONTH.length()>=6) {
    if (H_SETT_DATE.substring(0,4) == H_MONTH.substring(0,4) && H_SETT_DATE.substring(4,6) == H_MONTH.substring(4,6)) {
        return true
    }
    return false
}
return true', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '585c48c5341645dd971d8481d0ea5eb5', null, null, 'mbtrule', '1');

insert into gp_qc_rule (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, EXISTS_SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_210__C_REPAY_FREQCY', '20190614', 'TESTCORP', '72', '002', null, null, '还款频率', '还款频率必须为数字英文字母;长度在1~2之间;', null, 'ELEMENT', 'C_REPAY_FREQCY', '还款频率', 'R', 'Y', 'ALPHA_NUMBER', null, 1, 2, null, null, null, null, null, null, null, 'GP_BM_DATA_DIC', '19261', null, null, 
'if ((!isEmpty(IS_RPT) && IS_RPT.length()>=2 && IS_RPT.substring(1,2) == "1") && (B_ACCT_TYPE == "D1" || B_ACCT_TYPE == "R1" || B_ACCT_TYPE == "R4")) {
    if (isEmpty($value)) {
        return false
    }
}
return true', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '42fdcfa51bfa40889dab8430957ec59e', null, null, 'mbtelement', '1');

insert into gp_qc_rule (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, EXISTS_SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_210__C_OTH_REPY_GUAR_WAY', '20190614', 'TESTCORP', '72', '002', null, null, '其他还款保证方式', '其他还款保证方式必须为数字英文字母;长度在1~1之间;', null, 'ELEMENT', 'C_OTH_REPY_GUAR_WAY', '其他还款保证方式', 'R', 'Y', 'ALPHA_NUMBER', null, 1, 1, null, null, null, null, null, null, null, 'GP_BM_DATA_DIC', '19263', null, null, 
'if (!(isEmpty(IS_RPT)) && IS_RPT.length()>=2 && (IS_RPT.substring(1,2) == "1") && (B_ACCT_TYPE != "C1")) {
    if (isEmpty($value)) {
        return false
    }
}
return true', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '73b2ad1e44a6436f99c8afe835d6540c', null, null, 'mbtelement', '1');

insert into gp_qc_rule (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, EXISTS_SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_210R210011405R210011409R210010210', '20190620', 'TESTCORP', '72', '002', null, null, '当“报告时点说明代码”为“32-月结日账户关闭”时:若“账户类型”为“R2”，不应包含初始债权说明段、非月度表现信息段。', '当“报告时点说明代码”为“32-月结日账户关闭”时:若“账户类型”为“R2”，不应包含初始债权说明段、非月度表现信息段。', null, 'BUSI', 'DATA_ID', null, null, 'Y', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 
'if (B_RPT_DATE_CODE == "32" && B_ACCT_TYPE == "R2") {
    if (!isEmpty(IS_RPT) && IS_RPT.length()>=7 && IS_RPT.substring(3,4) == "0" && IS_RPT.substring(6,7) == "0") {
        return true
    }
    return false
}
return true', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'de377abc182449fda628b3e8c7100540', null, null, 'mbtrule', '1');

insert into gp_qc_rule (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, EXISTS_SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_210R210011401R210011401R210010202', '20190620', 'TESTCORP', '72', '002', null, null, '当“报告时点说明代码”为“32-月结日账户关闭”时:若“账户类型”为“D1”且基本信息段中“分次放款标志”为“0”，不应包含初始债权说明段、非月度表现信息段、大额专项分期信息段、授信额度信息段。', '当“报告时点说明代码”为“32-月结日账户关闭”时:若“账户类型”为“D1”且基本信息段中“分次放款标志”为“0”，不应包含初始债权说明段、非月度表现信息段、大额专项分期信息段、授信额度信息段。', null, 'BUSI', 'DATA_ID', null, null, 'Y', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 
'if (B_RPT_DATE_CODE == "32" && B_ACCT_TYPE == "D1" && C_FLAG == "0") {
    if (!isEmpty(IS_RPT) && IS_RPT.length()>=7 && IS_RPT.substring(2,4) == "00" && IS_RPT.substring(5,7) == "00") {
        return true
    }
    return false
}
return true', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'ad92310bfedf4ab5bda20152bfe4696c', null, null, 'mbtrule', '1');

insert into gp_qc_rule (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, EXISTS_SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_210R210010101R210010101R210010102_01', '20190618', 'TESTCORP', '72', '002', null, null, '当“报告时点说明代码”为“10-新开户”时，除基础段外，个人借贷账户信息记录至少包含基本信息段:若“账户类型”为“D1”，还应包含月度表现信息段。基本信息段中“分次放款标志”大于 0，应包含授信额度信息段;', '当“报告时点说明代码”为“10-新开户”时，除基础段外，个人借贷账户信息记录至少包含基本信息段:若“账户类型”为“D1”，还应包含月度表现信息段。基本信息段中“分次放款标志”大于 0，应包含授信额度信息段;', null, 'BUSI', 'DATA_ID', null, null, 'Y', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 
'if (B_RPT_DATE_CODE == "10" & B_ACCT_TYPE == "D1" & C_FLAG != "0" & !isEmpty(IS_RPT)) {
    if (!isEmpty(IS_RPT) && IS_RPT.length()>=5 && IS_RPT.substring(0,3) == "111" & IS_RPT.substring(4,5) == "1") {
        return true
    }
    return false
}
return true', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '95b035a8cc7f4517a98d2dfb37c3d5dc', null, null, 'mbtrule', '1');

insert into gp_qc_rule (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, EXISTS_SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_210R210011501R210011501,R210011502R210011503', '20190620', 'TESTCORP', '72', '002', null, null, '当“报告时点说明代码”为“10-新开户”或“31-月结日首次上报存量账户”时，若 D1/R1/R2/R3/R4 类账户的基本信息段中“担保方式”为“3-保证”、“5-组合(含保证)”， 则应包含相关还款责任人段。', '当“报告时点说明代码”为“10-新开户”或“31-月结日首次上报存量账户”时，若 D1/R1/R2/R3/R4 类账户的基本信息段中“担保方式”为“3-保证”、“5-组合(含保证)”， 则应包含相关还款责任人段。', null, 'BUSI', 'DATA_ID', null, null, 'Y', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 
'if ((B_RPT_DATE_CODE =="10" || B_RPT_DATE_CODE =="31") && (B_ACCT_TYPE =="D1"||B_ACCT_TYPE=="R2"||B_ACCT_TYPE=="R1"||B_ACCT_TYPE=="R3"||B_ACCT_TYPE=="R4") && (C_GUAR_MODE == "3"||C_GUAR_MODE=="5")) {
    if (!isEmpty(IS_RPT) && IS_RPT.length()>=9 && IS_RPT.substring(8,9) == "1") {
        return true
    }
    return false
}
return true', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1d2d39d6ff1742ee9833884357bd39dd', null, null, 'mbtrule', '1');

insert into gp_qc_rule (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, EXISTS_SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_210R210011201R210011201R210010202', '20190620', 'TESTCORP', '72', '002', null, null, '当“报告时点说明代码”为“20-账户关闭”时:若“账户类型”为“D1”且基本信息段中“分次放款标志”为“0”，不应包含初始债权说明段、非月度表现信息段、大额专项分期信息段、授信额度信息段。', '当“报告时点说明代码”为“20-账户关闭”时:若“账户类型”为“D1”且基本信息段中“分次放款标志”为“0”，不应包含初始债权说明段、非月度表现信息段、大额专项分期信息段、授信额度信息段。', null, 'BUSI', 'DATA_ID', null, null, 'Y', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 
'if (B_RPT_DATE_CODE == "20" && B_ACCT_TYPE == "D1" && C_FLAG == "0") {
    if (!isEmpty(IS_RPT) && IS_RPT.length()>=7 && IS_RPT.substring(2,4) == "00" && IS_RPT.substring(5,7) == "00") {
        return true
    }
    return false
}
return true', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'e0a49410b6bf46f1b573031079549ecc', null, null, 'mbtrule', '1');

insert into gp_qc_rule (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, EXISTS_SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_210R210011205R210011209R210010210', '20190620', 'TESTCORP', '72', '002', null, null, '当“报告时点说明代码”为“20-账户关闭”时:若“账户类型”为“R2”，不应包含初始债权说明段、非月度表现信息段。', '当“报告时点说明代码”为“20-账户关闭”时:若“账户类型”为“R2”，不应包含初始债权说明段、非月度表现信息段。', null, 'BUSI', 'DATA_ID', null, null, 'Y', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 
'if (B_RPT_DATE_CODE == "20" && B_ACCT_TYPE == "R2") {
    if (!isEmpty(IS_RPT) && IS_RPT.length()>=7 && IS_RPT.substring(3,4) == "0" && IS_RPT.substring(6,7) == "0") {
        return true
    }
    return false
}
return true', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'eacd304e4f9d482d94e49914e7d13c07', null, null, 'mbtrule', '1');

insert into gp_qc_rule (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, EXISTS_SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_210R210011402R210011403R210010206', '20190620', 'TESTCORP', '72', '002', null, null, '当“报告时点说明代码”为“32-月结日账户关闭”时:若“账户类型”为“D1”，不应包含初始债权说明段、非月度表现信息段、大额专项分期信息段。', '当“报告时点说明代码”为“32-月结日账户关闭”时:若“账户类型”为“D1”，不应包含初始债权说明段、非月度表现信息段、大额专项分期信息段。', null, 'BUSI', 'DATA_ID', null, null, 'Y', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 
'if (B_RPT_DATE_CODE == "32" && B_ACCT_TYPE == "D1") {
    if (!isEmpty(IS_RPT) && IS_RPT.length()>=7 && IS_RPT.substring(3,4) == "0" && IS_RPT.substring(5,7) == "00") {
        return true
    }
    return false
}
return true', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '4a8d5204100842d58e8ef7f975488cd4', null, null, 'mbtrule', '1');

insert into gp_qc_rule (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, EXISTS_SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_210__B_ACCT_TYPE', '20190614', 'TESTCORP', '72', '002', null, null, '账户类型', '账户类型必须为数字英文字母;长度在2~2之间;', null, 'ELEMENT', 'B_ACCT_TYPE', '账户类型', 'R', 'Y', 'ALPHA_NUMBER', null, 2, 2, null, null, null, null, null, null, null, 'GP_BM_DATA_DIC', '19256', null, null, 
'if (!isEmpty(IS_RPT) &&  IS_RPT.length()>=1 && IS_RPT.substring(0,1) == "1") {
    if (isEmpty($value)) {
        return false
    }
}
return true', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '8342c5218d394dce9d3fa3de0c9632a0', null, null, 'mbtelement', '1');

insert into gp_qc_rule (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, EXISTS_SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_210__C_FUND_SOU', '20190614', 'TESTCORP', '72', '002', null, null, '业务经营类型', '业务经营类型必须为数字英文字母;长度在1~2之间;', null, 'ELEMENT', 'C_FUND_SOU', '业务经营类型', 'R', 'Y', 'ALPHA_NUMBER', null, 1, 2, null, null, null, null, null, null, null, 'GP_BM_DATA_DIC', '19264', null, null, 
'if ((!isEmpty(IS_RPT) &&  IS_RPT.length()>=2 && IS_RPT.substring(1,2) == "1") && (B_ACCT_TYPE != "C1")) {
    if (isEmpty($value)) {
        return false
    }
}
return true', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '6881b7d5aac84645a8e328b1e26fbcfc', null, null, 'mbtelement', '1');

insert into gp_qc_rule (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, EXISTS_SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_210__C_DUE_DATE', '20190614', 'TESTCORP', '72', '002', null, null, '到期日期', '到期日期必须为数字英文字母;长度在8~8之间;', null, 'ELEMENT', 'C_DUE_DATE', '到期日期', 'R', 'Y', 'ALPHA_NUMBER', null, 8, 8, null, null, null, null, null, null, null, null, null, null, null, 
'if ((!isEmpty(IS_RPT) &&  IS_RPT.length()>=2 && IS_RPT.substring(1,2) == "1") && (B_ACCT_TYPE == "D1" || B_ACCT_TYPE == "R1" || B_ACCT_TYPE == "R2" || B_ACCT_TYPE == "R3" || B_ACCT_TYPE == "R4")) {
    if (isEmpty($value)) {
        return false
    }
}
return true', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'bf4c6c4349ea44bdb7d662e848c01477', null, null, 'mbtelement', '1');

insert into gp_qc_rule (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, EXISTS_SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_210R210010203R210010105R210010204_01', '20190618', 'TESTCORP', '72', '002', null, null, '当“报告时点说明代码”为“10-新开户”时，若“账户类型”为“R1/R3/R4”，不应包含初始债权说明段、非月度表现信息段、特殊交易说明段、大额专项分期信息段。', '当“报告时点说明代码”为“10-新开户”时，若“账户类型”为“R1/R3/R4”，不应包含初始债权说明段、非月度表现信息段、特殊交易说明段、大额专项分期信息段。', null, 'BUSI', 'DATA_ID', null, null, 'Y', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 
'if (B_RPT_DATE_CODE == "10" && (B_ACCT_TYPE == "R1" || B_ACCT_TYPE == "R3" || B_ACCT_TYPE =="R4")) {
    if (!isEmpty(IS_RPT) &&  IS_RPT.length()>=11 && IS_RPT.substring(3,4) == "0" && IS_RPT.substring(5,7) == "00" && IS_RPT.substring(10,11) == "0") {
        return true
    }
    return false
}
return true', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'a93bdde5eadc40eca648442e1087b60f', null, null, 'mbtrule', '1');

insert into gp_qc_rule (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, EXISTS_SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_210__C_BUSI_LINES', '20190614', 'TESTCORP', '72', '002', null, null, '借贷业务大类', '借贷业务大类必须为数字英文字母;长度在1~1之间;', null, 'ELEMENT', 'C_BUSI_LINES', '借贷业务大类', 'R', 'Y', 'ALPHA_NUMBER', null, 1, 1, null, null, null, null, null, null, null, 'GP_BM_DATA_DIC', '19258', null, null, 
'if (!isEmpty(IS_RPT) && IS_RPT.length()>=2 && IS_RPT.substring(1,2) == "1") {
    if (isEmpty($value)) {
        return false
    }
}
return true', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '99a66c41e347464e82826012f120c573', null, null, 'mbtelement', '1');

insert into gp_qc_rule (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, EXISTS_SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_210R210121201R210121501R210121502', '20190620', 'TESTCORP', '72', '002', null, null, '首次上报时(即，库中不存在该账户):个人借贷账户信息记录至少包含基本信息段。', '首次上报时(即，库中不存在该账户):个人借贷账户信息记录至少包含基本信息段。', null, 'BUSI', 'DATA_ID', null, null, 'Y', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 
'if (exists("MBT_210_RPT","B_ACCT_CODE", B_ACCT_CODE)) {
    if (!isEmpty(IS_RPT) && IS_RPT.length()>=2 && IS_RPT.substring(1,2) == "1") {
        return true
    }
    return false
}
return true', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'c44290804c754126a1ecd572ced08b6b', null, null, 'mbtrule', '1');

insert into gp_qc_rule (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, EXISTS_SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_210R210010304R210010306_01R210010102', '20190619', 'TESTCORP', '72', '002', null, null, '当“报告时点说明代码”为“31-月结日首次上报存量账户”时，若“账户类型”为“R2”且基本信息段中的“借贷业务种类细分”不为“82-大额专项分期卡”，还应包含月度表现段、授信额度信息段。', '当“报告时点说明代码”为“31-月结日首次上报存量账户”时，若“账户类型”为“R2”且基本信息段中的“借贷业务种类细分”不为“82-大额专项分期卡”，还应包含月度表现段、授信额度信息段。', null, 'BUSI', 'DATA_ID', null, null, 'Y', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 
'if (B_RPT_DATE_CODE == "31" && B_ACCT_TYPE == "R2" && C_BUSI_DTL_LINES != "82") {
    if (!isEmpty(IS_RPT) && IS_RPT.length()>=5 && IS_RPT.substring(2,3) == "1" && IS_RPT.substring(4,5) == "1") {
        return true
    }
    return false
}
return true', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'e892449edd29425da2715ba840600366', null, null, 'mbtrule', '1');

insert into gp_qc_rule (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, EXISTS_SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_210R210010405R210010307R210010210', '20190619', 'TESTCORP', '72', '002', null, null, '当“报告时点说明代码”为“31-月结日首次上报存量账户”时，若“账户类型”为“R2”，不应包含初始债权说明段、非月度表现信息段。', '当“报告时点说明代码”为“31-月结日首次上报存量账户”时，若“账户类型”为“R2”，不应包含初始债权说明段、非月度表现信息段。', null, 'BUSI', 'DATA_ID', null, null, 'Y', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 
'if (B_RPT_DATE_CODE == "31" && B_ACCT_TYPE == "R2") {
    if (!isEmpty(IS_RPT) && IS_RPT.length()>=7 &&  IS_RPT.substring(3,4) == "0" && IS_RPT.substring(6,7) == "0") {
        return true
    }
    return false
}
return true', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '6c07643c0a044ba880be52060ecf1dd2', null, null, 'mbtrule', '1');

insert into gp_qc_rule (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, EXISTS_SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_210R210010803R210010803R210010206', '20190619', 'TESTCORP', '72', '002', null, null, '当“报告时点说明代码”为“30-月度结算”时:若“账户类型”为“R1/R3/R4”，不应包含初始债权说明段、非月度表现信息段、大额专项分期信息段。', '当“报告时点说明代码”为“30-月度结算”时:若“账户类型”为“R1/R3/R4”，不应包含初始债权说明段、非月度表现信息段、大额专项分期信息段。', null, 'BUSI', 'DATA_ID', null, null, 'Y', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 
'if (B_RPT_DATE_CODE == "30" && (B_ACCT_TYPE == "R1" || B_ACCT_TYPE == "R3" || B_ACCT_TYPE == "R4")) {
    if (!isEmpty(IS_RPT) && IS_RPT.length()>=7 && IS_RPT.substring(3,4) == "0" && IS_RPT.substring(5,7) == "00") {
        return true
    }
    return false
}
return true', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'f2acaf2505724ded87290e8bf6bb5483', null, null, 'mbtrule', '1');

insert into gp_qc_rule (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, EXISTS_SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_210R210010901R210010901R210010902', '20190620', 'TESTCORP', '72', '002', null, null, '当“报告时点说明代码”为“40-收回逾期款项”时: 除基础段外，至少还应包含非月度表现信息段；账户类型不能为“R3”', '当“报告时点说明代码”为“40-收回逾期款项”时: 除基础段外，至少还应包含非月度表现信息段；账户类型不能为“R3”。', null, 'BUSI', 'DATA_ID', null, null, 'Y', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 
'if (B_RPT_DATE_CODE == "40") {
    if (!isEmpty(IS_RPT) && IS_RPT.length()>=7 &&  IS_RPT.substring(0,1) == "1" && IS_RPT.substring(6,7) == "1" && B_ACCT_TYPE != "R3") {
        return true
    }
    return false
}
return true', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'dd6cb72dd6da44bab22671a92af2883c', null, null, 'mbtrule', '1');

insert into gp_qc_rule (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, EXISTS_SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_210__H_OVERD91_180PRINC', '20190614', 'TESTCORP', '72', '002', null, null, '逾期 91-180 天未归还本金', '逾期 91-180 天未归还本金取值范围在0~999999999999999之间;', null, 'ELEMENT', 'H_OVERD91_180PRINC', '逾期 91-180 天未归还本金', 'R', 'Y', 'NUMBER', null, null, null, 0.0000000000, 999999999999999.0000000000, null, null, null, null, null, null, null, null, null,
 'if ((!isEmpty(IS_RPT) && IS_RPT.length()>=5 &&  IS_RPT.substring(4,5) == "1") && (B_ACCT_TYPE == "D1" || B_ACCT_TYPE == "R1" || B_ACCT_TYPE == "R4")) {
    if (isEmpty($value)) {
        return false
    }
}
return true', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '6a481db117b54710aff5869343aa30f8', null, null, 'mbtelement', '1');

insert into gp_qc_rule (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, EXISTS_SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_210__H_ACT_RPY_AMT', '20190614', 'TESTCORP', '72', '002', null, null, '本月实际还款金额', '本月实际还款金额取值范围在0~999999999999999之间;', null, 'ELEMENT', 'H_ACT_RPY_AMT', '本月实际还款金额', 'R', 'Y', 'NUMBER', null, null, null, 0.0000000000, 999999999999999.0000000000, null, null, null, null, null, null, null, null, null, 
'if (!isEmpty(IS_RPT) && IS_RPT.length()>=5 &&  IS_RPT.substring(4,5) == "1") {
    if (isEmpty($value)) {
        return false
    }
}
return true', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '42701ace560e41ff9e81c2692571c02b', null, null, 'mbtelement', '1');

insert into gp_qc_rule (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, EXISTS_SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_210__I_SPEC_EFCT_DATE', '20190614', 'TESTCORP', '72', '002', null, null, '分期额度生效日期', '分期额度生效日期必须为数字英文字母;长度在8~8之间;', null, 'ELEMENT', 'I_SPEC_EFCT_DATE', '分期额度生效日期', 'R', 'Y', 'ALPHA_NUMBER', null, 8, 8, null, null, null, null, null, null, null, null, null, null, null,
 'if (!isEmpty(IS_RPT) && IS_RPT.length()>=6 && IS_RPT.substring(5,6) == "1") {
    if (isEmpty($value)) {
        return false
    }
}
return true', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '9fbd4edcaa054eafa8df0d70076cb9cf', null, null, 'mbtelement', '1');

insert into gp_qc_rule (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, EXISTS_SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_210__J_ACCT_BAL', '20190614', 'TESTCORP', '72', '002', null, null, '余额', '余额', null, 'ELEMENT', 'J_ACCT_BAL', '余额', 'R', 'Y', 'NUMBER', null, null, null, null, null, null, null, null, null, null, null, null, null, null, 
'if (!isEmpty(IS_RPT) && IS_RPT.length()>=7 &&  IS_RPT.substring(6,7) == "1") {
    if (isEmpty($value)) {
        return false
    }
}
return true', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'bf0d99e60d6a4013851c2f9aa0d47f3f', null, null, 'mbtelement', '1');

insert into gp_qc_rule (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, EXISTS_SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_210__J_RPY_STATUS', '20190614', 'TESTCORP', '72', '002', null, null, '当前还款状态', '当前还款状态必须为数字英文字母中文;长度在1~1之间;', null, 'ELEMENT', 'J_RPY_STATUS', '当前还款状态', 'R', 'Y', null, null, 1, 1, null, null, null, null, null, null, null, 'GP_BM_DATA_DIC', '19272', null, null, 
'if ((!isEmpty(IS_RPT) && IS_RPT.length()>=7 &&  IS_RPT.substring(6,7) == "1") && (B_ACCT_TYPE == "D1" || B_ACCT_TYPE == "R1" || B_ACCT_TYPE == "R2" || B_ACCT_TYPE == "R3" || B_ACCT_TYPE == "R4")) {
    if (isEmpty($value)) {
        return false
    }
}
return true', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'fe1f95c0a04c4d71ad4c9da9da43607b', null, null, 'mbtelement', '1');

insert into gp_qc_rule (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, EXISTS_SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_210__J_LAT_RPY_DATE', '20190614', 'TESTCORP', '72', '002', null, null, '最近一次实际还款日期', '最近一次实际还款日期必须为数字英文字母;长度在8~8之间;', null, 'ELEMENT', 'J_LAT_RPY_DATE', '最近一次实际还款日期', 'R', 'Y', 'ALPHA_NUMBER', null, 8, 8, null, null, null, null, null, null, null, null, null, null, null, 
'if (!isEmpty(IS_RPT) && IS_RPT.length()>=7 && IS_RPT.substring(6,7) == "1") {
    if (isEmpty($value)) {
        return false
    }
}
return true', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '5aebc107181b4891a090e3123eb51d32', null, null, 'mbtelement', '1');

insert into gp_qc_rule (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, EXISTS_SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_210__C_LOAN_FORM', '20190614', 'TESTCORP', '72', '002', null, null, '贷款发放形式', '贷款发放形式必须为数字英文字母;长度在1~1之间;', null, 'ELEMENT', 'C_LOAN_FORM', '贷款发放形式', 'R', 'Y', 'ALPHA_NUMBER', null, 1, 1, null, null, null, null, null, null, null, 'GP_BM_DATA_DIC', '19265', null, null, 
'if ((!isEmpty(IS_RPT) && IS_RPT.length()>=2 &&  IS_RPT.substring(1,2) == "1") && (B_ACCT_TYPE != "C1")) {
    if (isEmpty($value)) {
        return false
    }
}
return true', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'dff656bae35c46ce8cb1c4ead7aa6959', null, null, 'mbtelement', '1');

insert into gp_qc_rule (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, EXISTS_SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_210__H_SETT_DATE', '20190614', 'TESTCORP', '72', '002', null, null, '结算/应还款日', '结算/应还款日必须为数字英文字母;长度在8~8之间;', null, 'ELEMENT', 'H_SETT_DATE', '结算/应还款日', 'R', 'Y', 'ALPHA_NUMBER', null, 8, 8, null, null, null, null, null, null, null, null, null, null, null, 
'if ((!isEmpty(IS_RPT) && IS_RPT.length()>=5 &&  IS_RPT.substring(4,5) == "1") && (B_ACCT_TYPE == "R2" || B_ACCT_TYPE == "R3")) {
    if (isEmpty($value)) {
        return false
    }
}
return true', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'f7f6faf62b2841aa90151d3566ba196f', null, null, 'mbtelement', '1');

insert into gp_qc_rule (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, EXISTS_SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_210__H_USED_AMT', '20190614', 'TESTCORP', '72', '002', null, null, '已使用额度', '已使用额度取值范围在0~999999999999999之间;', null, 'ELEMENT', 'H_USED_AMT', '已使用额度', 'R', 'Y', 'NUMBER', null, null, null, 0.0000000000, 999999999999999.0000000000, null, null, null, null, null, null, null, null, null, 
'if ((!isEmpty(IS_RPT) && IS_RPT.length()>=5 &&  IS_RPT.substring(4,5) == "1") && (B_ACCT_TYPE == "R2")) {
    if (isEmpty($value)) {
        return false
    }
}
return true', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '8192ce764c8c4ceba989f1e98c6b0856', null, null, 'mbtelement', '1');

insert into gp_qc_rule (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, EXISTS_SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_210__H_FIVE_CATE_ADJ_DATE', '20190614', 'TESTCORP', '72', '002', null, null, '五级分类认定日期', '五级分类认定日期必须为数字英文字母;长度在8~8之间;', null, 'ELEMENT', 'H_FIVE_CATE_ADJ_DATE', '五级分类认定日期', 'R', 'Y', 'ALPHA_NUMBER', null, 8, 8, null, null, null, null, null, null, null, null, null, null, null, 
'if (!isEmpty(IS_RPT) && IS_RPT.length()>=5 &&  IS_RPT.substring(4,5) == "1") {
    if (isEmpty($value)) {
        return false
    }
}
return true', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '6aa8ba67ed044d94a3ede3ffda7e0d55', null, null, 'mbtelement', '1');

insert into gp_qc_rule (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, EXISTS_SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_210__H_TOT_OVERD', '20190614', 'TESTCORP', '72', '002', null, null, '当前逾期总额', '当前逾期总额取值范围在0~999999999999999之间;', null, 'ELEMENT', 'H_TOT_OVERD', '当前逾期总额', 'R', 'Y', 'NUMBER', null, null, null, 0.0000000000, 999999999999999.0000000000, null, null, null, null, null, null, null, null, null,
'if ((!isEmpty(IS_RPT) && IS_RPT.length()>=5 &&  IS_RPT.substring(4,5) == "1") && (B_ACCT_TYPE == "D1" || B_ACCT_TYPE == "R1" || B_ACCT_TYPE == "R2" || B_ACCT_TYPE == "R4")) {
    if (isEmpty($value)) {
        return false
    }
}
return true', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '88cd564b9d184911b4a281207efce2b8', null, null, 'mbtelement', '1');

insert into gp_qc_rule (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, EXISTS_SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_210D_I0000401_2', '20200303', 'TESTCORP', '72', '002', null, null, 
'相关还款责任人段的统一社会信用代码应符合如下规则：
应由18位数字或大写英文字母（不使用I、O、Z、S、V）组成；
第1位和第2位应为有效的登记管理部分代码和机构分类代码；
第9-17位应符合组织机构代码规则；
校验位应符合校验规则（参见国标《法人和其他组织统一社会信用代码编码规则》（GB32100-2015））。', '相关还款责任人段的统一社会信用代码应符合如下规则：
应由18位数字或大写英文字母（不使用I、O、Z、S、V）组成；
第1位和第2位应为有效的登记管理部分代码和机构分类代码；
第9-17位应符合组织机构代码规则；
校验位应符合校验规则（参见国标《法人和其他组织统一社会信用代码编码规则》（GB32100-2015））。', null, 'BUSI', 'DATA_ID', null, null, 'Y', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'if (D_ARLP_ID_TYPE =="2" &&  D_ARLP_CERT_TYPE=="20"){
String str = D_ARLP_CERT_NUM;
def firstarray = [''0'', ''1'', ''2'', ''3'', ''4'', ''5'', ''6'', ''7'', ''8'', ''9'', ''A'', ''B'', ''C'', ''D'', ''E'', ''F'', ''G'', ''H'', ''I'', ''J'', ''K'', ''L'', ''M'', ''N'', ''O'', ''P'', ''Q'', ''R'', ''S'', ''T'', ''U'', ''V'', ''W'', ''X'', ''Y'', ''Z''];
def firstkeys = [3, 7, 9, 10, 5, 8, 4, 2];
def  secondarray = [''0'', ''1'', ''2'', ''3'', ''4'', ''5'', ''6'', ''7'', ''8'', ''9'', ''A'', ''B'', ''C'', ''D'', ''E'', ''F'', ''G'', ''H'', ''J'', ''K'', ''L'', ''M'', ''N'', ''P'', ''Q'', ''R'', ''T'', ''U'', ''W'', ''X'', ''Y''];
def secondkeys = [1, 3, 9, 27, 19, 26, 16, 17, 20, 29, 25, 13, 8, 24, 10, 30, 28];
String code = str.toUpperCase();
        if (isEmpty(code) || code.length() != 18) {
            return false;
        }
        def reg = /^[1-9]|[ABCDEFGY]$/;
        def matcher = str.getAt(0) =~ reg;
        matcher.matches()
        if(matcher.getCount()==0){
            return false;
        }
        def reg1 = /^[1,2,3,9]$/;
        matcher = str.getAt(1) =~ reg1
          matcher.matches()
          if(matcher.getCount()==0){
            return false;
        }
        def reg2 = /^\d{6}$/;
        matcher = str[2..7] =~ reg2
        matcher.matches()
        if(matcher.getCount()==0){
            return false;
        }
        int count = 0;
        for (int i = 0; i < firstkeys.size(); i++) {
            def a = code[i+8];
            count += firstkeys[i].toInteger() * firstarray.indexOf(a).toInteger();
        }
        int remainder = count % 11;
        int  firstkey= (remainder == 0 ? 0 : 11 - remainder);
        def firstword;
        if (firstkey < 10) {
            firstword = firstkey;
        }
        if (firstkey == 10) {
            firstword = ''X'';
        } else if (firstkey == 11) {
            firstword = ''0'';
        }

        if (!(""+firstword).equals(code[16])) {
            return false;
        }
         count = 0;
        for (int i = 0; i < secondkeys.size(); i++) {
            def a = code[i];
            count += secondkeys[i].toInteger() * secondarray.indexOf(a).toInteger();
        }
         remainder = count % 31;
         int secondkey = (remainder == 0 ? 0 : 31 - remainder);

        def secondword = secondarray[secondkey];
        if (!secondword || !(""+secondword).equals(code[17])) {
            return false;
        }

}
return true', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1abe69a0b299409b8f6bb7f6fb1b9612', null, null, 'mbtrule', '1');

insert into gp_qc_rule (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, EXISTS_SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_210D_I0000401_1', '20200303', 'TESTCORP', '72', '002', null, null, 
'相关还款责任人段的组织机构代码应符合如下规则：应由8位数字（或大写拉丁字母）以及1位数字（或大写拉丁字母）组成；校验位应满足校验规则（参见国标《全国组织机构代码编制规则》（GB11714-1997））。
', '相关还款责任人段的组织机构代码应符合如下规则：应由8位数字（或大写拉丁字母）以及1位数字（或大写拉丁字母）组成；校验位应满足校验规则（参见国标《全国组织机构代码编制规则》（GB11714-1997））。
', null, 'BUSI', 'DATA_ID', null, null, 'Y', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'if(D_ARLP_ID_TYPE =="2" &&  D_ARLP_CERT_TYPE=="30"){

        def code=D_ARLP_CERT_NUM;
        def ws = [3, 7, 9, 10, 5, 8, 4, 2];
        String str = ''0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ'';
        def reg = /^([0-9A-Z]){8}[0-9|X]$/;
      String tmp = code.toUpperCase();

        if (isEmpty(tmp) || tmp.length() != 9) {
              return false
            }
        int sum = 0;
		  if (isEmpty(code) || code.length() < 8) {
            return false
        }
        for (int i = 0; i < 8; i++){
         sum += str.indexOf(code.getAt(i)).toInteger() * ws.getAt(i).toInteger();}
        def c9 = 11 - (sum%11);
        c9 = (c9.toInteger() ==11?0:c9)
        c9 = (c9.toInteger() == 10 ? ''X'' : c9 )
        def matcher = code[0..8] =~ reg;
        matcher.matches();
        if (matcher.getCount()!=0 && code.getAt(8).toString()==c9.toString()) {
            return true
        }else{
            return false
        }
    }
      return true', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1abe69a0b299409b8f6bb7f6fb1b9612', null, null, 'mbtrule', '1');

insert into gp_qc_rule (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, EXISTS_SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_210R210010202R210010103_01R210010204', '20190618', 'TESTCORP', '72', '002', null, null, '当“报告时点说明代码”为“10-新开户”时，若“账户类型”为“D1”且基本信息段中“分次放款标志”为“0”，不应包含初始债权说明段、非月度表现信息段、特殊交易说明段、大额专项分期信息段、授信额度信息段。', '当“报告时点说明代码”为“10-新开户”时，若“账户类型”为“D1”且基本信息段中“分次放款标志”为“0”，不应包含初始债权说明段、非月度表现信息段、特殊交易说明段、大额专项分期信息段、授信额度信息段。', null, 'BUSI', 'DATA_ID', null, null, 'Y', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 
'if (B_RPT_DATE_CODE == "10" && B_ACCT_TYPE == "D1" && C_FLAG == "0") {
    if (!isEmpty(IS_RPT) && IS_RPT.length()>=11 && IS_RPT.substring(2,4) == "00" && IS_RPT.substring(5,7) == "00" && IS_RPT.substring(10,11) == "0") {
        return true
    }
    return false
}
return true', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'af4d72f51dd14512a8334836e11dce4b', null, null, 'mbtrule', '1');

insert into gp_qc_rule (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, EXISTS_SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_210__H_LAT_RPY_DATE', '20190614', 'TESTCORP', '72', '002', null, null, '最近一次实际还款日期', '最近一次实际还款日期必须为数字英文字母;长度在8~8之间;', null, 'ELEMENT', 'H_LAT_RPY_DATE', '最近一次实际还款日期', 'R', 'Y', 'ALPHA_NUMBER', null, 8, 8, null, null, null, null, null, null, null, null, null, null, null, 
'if (!isEmpty(IS_RPT) &&  IS_RPT.length()>=5 && IS_RPT.substring(4,5) == "1") {
    if (isEmpty($value)) {
        return false
    }
}
return true', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'ca734e3a4d8943b59a38052a922766dc', null, null, 'mbtelement', '1');

insert into gp_qc_rule (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, EXISTS_SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_210__H_OVERD_PRINC180', '20190614', 'TESTCORP', '72', '002', null, null, '逾期 180 天以上未归还本金', '逾期 180 天以上未归还本金取值范围在0~999999999999999之间;', null, 'ELEMENT', 'H_OVERD_PRINC180', '逾期 180 天以上未归还本金', 'R', 'Y', 'NUMBER', null, null, null, 0.0000000000, 999999999999999.0000000000, null, null, null, null, null, null, null, null, null, 
'if ((!isEmpty(IS_RPT) &&  IS_RPT.length()>=5 && IS_RPT.substring(4,5) == "1") && (B_ACCT_TYPE == "D1" || B_ACCT_TYPE == "R1" || B_ACCT_TYPE == "R4")) {
    if (isEmpty($value)) {
        return false
    }
}
return true', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '3d7950c1509247789f273e797355c73d', null, null, 'mbtelement', '1');

insert into gp_qc_rule (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, EXISTS_SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_210__I_SPEC_END_DATE', '20190614', 'TESTCORP', '72', '002', null, null, '分期额度到期日期', '分期额度到期日期必须为数字英文字母;长度在8~8之间;', null, 'ELEMENT', 'I_SPEC_END_DATE', '分期额度到期日期', 'R', 'Y', 'ALPHA_NUMBER', null, 8, 8, null, null, null, null, null, null, null, null, null, null, null,
 'if (!isEmpty(IS_RPT) && IS_RPT.length()>=6 && IS_RPT.substring(5,6) == "1") {
    if (isEmpty($value)) {
        return false
    }
}
return true', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'd072db2bd49e4027bfb45141047b54bf', null, null, 'mbtelement', '1');

insert into gp_qc_rule (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, EXISTS_SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_210__J_OVERD_PRD', '20190614', 'TESTCORP', '72', '002', null, null, '当前逾期期数', '当前逾期期数取值范围在0~999之间;', null, 'ELEMENT', 'J_OVERD_PRD', '当前逾期期数', 'R', 'Y', 'NUMBER', null, null, null, 0.0000000000, 999.0000000000, null, null, null, null, null, null, null, null, null,
'if ((!isEmpty(IS_RPT) &&  IS_RPT.length()>=7 && IS_RPT.substring(6,7) == "1") && (B_ACCT_TYPE == "D1" || B_ACCT_TYPE == "R1" || B_ACCT_TYPE == "R2" || B_ACCT_TYPE == "R4")) {
    if (isEmpty($value)) {
        return false
    }
}
return true', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '2f0683d38dd34832849b5b1f1efb57ba', null, null, 'mbtelement', '1');

insert into gp_qc_rule (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, EXISTS_SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_210__J_CLOSE_DATE', '20190614', 'TESTCORP', '72', '002', null, null, '账户关闭日期', '账户关闭日期必须为数字英文字母;长度在8~8之间;', null, 'ELEMENT', 'J_CLOSE_DATE', '账户关闭日期', 'R', 'Y', 'ALPHA_NUMBER', null, 8, 8, null, null, null, null, null, null, null, null, null, null, null, 
'if ((!isEmpty(IS_RPT) &&  IS_RPT.length()>=7 && IS_RPT.substring(6,7) == "1") && (((B_ACCT_TYPE == "D1" || B_ACCT_TYPE == "R1" || B_ACCT_TYPE == "R2" || B_ACCT_TYPE == "R3" || B_ACCT_TYPE == "R4")&& (J_ACCT_STATUS == "3" || J_ACCT_STATUS == "4")) || (B_ACCT_TYPE == "C1" && J_ACCT_STATUS == "2"))) {
    if (isEmpty($value)) {
        return false
    }
}
return true', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '4e6231d34d614deba164565b10517b88', null, null, 'mbtelement', '1');

insert into gp_qc_rule (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, EXISTS_SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_210R210010204R210010106R210010208_01', '20190618', 'TESTCORP', '72', '002', null, null, '当“报告时点说明代码”为“10-新开户”时， 若“账户类型”为“R2”且基本信息段中的“借贷业务种类细分”不是“大额专项分期卡”，不应包含初始债权说明段、非月度表现信息段、特殊交易说明段、授信额度信息段。', '当“报告时点说明代码”为“10-新开户”时， 若“账户类型”为“R2”且基本信息段中的“借贷业务种类细分”不是“大额专项分期卡”，不应包含初始债权说明段、非月度表现信息段、特殊交易说明段、授信额度信息段。', null, 'BUSI', 'DATA_ID', null, null, 'Y', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 
'if (B_RPT_DATE_CODE == "10" && B_ACCT_TYPE == "R2" && C_BUSI_DTL_LINES != "82") {
    if (!isEmpty(IS_RPT) &&  IS_RPT.length()>=11 && IS_RPT.substring(2,4) == "00" && IS_RPT.substring(6,7) == "0" && IS_RPT.substring(10,11) == "0") {
        return true
    }
    return false
}
return true', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '228df1e0e82c49f39c3a58e579449eb4', null, null, 'mbtrule', '1');

insert into gp_qc_rule (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, EXISTS_SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_210__C_CREDIT_ID', '20190614', 'TESTCORP', '72', '002', null, null, '卡片标识号', '卡片标识号必须为数字英文字母;长度在4~4之间;', null, 'ELEMENT', 'C_CREDIT_ID', '卡片标识号', 'R', 'Y', 'ALPHA_NUMBER', null, 4, 4, null, null, null, null, null, null, null, null, null, null, null, 
'if ((!isEmpty(IS_RPT) && IS_RPT.length()>=2 && IS_RPT.substring(1,2) == "1") && (B_ACCT_TYPE == "R2" || B_ACCT_TYPE == "R3")) {
    if (isEmpty($value)) {
        return false
    }
}
return true', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'c55b5f3c4e364becb4cfa81e18b9f3e5', null, null, 'mbtelement', '1');

insert into gp_qc_rule (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, EXISTS_SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_210__G_ORIG_DBT_CATE', '20190614', 'TESTCORP', '72', '002', null, null, '原债务种类', '原债务种类必须为数字英文字母;长度在1~1之间;', null, 'ELEMENT', 'G_ORIG_DBT_CATE', '原债务种类', 'R', 'Y', 'ALPHA_NUMBER', null, 1, 1, null, null, null, null, null, null, null, 'GP_BM_DATA_DIC', '19277', null, null,
 'if (!isEmpty(IS_RPT) && IS_RPT.length()>=4 && IS_RPT.substring(3,4) == "1") {
    if (isEmpty($value)) {
        return false
    }
}
return true', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '66865175a6bc4834bbaade50cabed7fb', null, null, 'mbtelement', '1');

insert into gp_qc_rule (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, EXISTS_SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_210__H_OVAER_PRINC', '20190614', 'TESTCORP', '72', '002', null, null, '当前逾期本金', '当前逾期本金取值范围在0~999999999999999之间;', null, 'ELEMENT', 'H_OVAER_PRINC', '当前逾期本金', 'R', 'Y', 'NUMBER', null, null, null, 0.0000000000, 999999999999999.0000000000, null, null, null, null, null, null, null, null, null, 
'if ((!isEmpty(IS_RPT) && IS_RPT.length()>=5 && IS_RPT.substring(4,5) == "1") && (B_ACCT_TYPE == "D1" || B_ACCT_TYPE == "R1" || B_ACCT_TYPE == "R4")) {
    if (isEmpty($value)) {
        return false
    }
}
return true', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '359ce9f7d0dc48acb74d300976eeae39', null, null, 'mbtelement', '1');

insert into gp_qc_rule (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, EXISTS_SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_210__H_NOTLSU_BAL', '20190614', 'TESTCORP', '72', '002', null, null, '未出单的大额专项分期余额', '未出单的大额专项分期余额取值范围在0~999999999999999之间;', null, 'ELEMENT', 'H_NOTLSU_BAL', '未出单的大额专项分期余额', 'R', 'Y', 'NUMBER', null, null, null, 0.0000000000, 999999999999999.0000000000, null, null, null, null, null, null, null, null, null, 
'if ((!isEmpty(IS_RPT) && IS_RPT.length()>=5 && IS_RPT.substring(4,5) == "1") && (B_ACCT_TYPE == "R2")) {
    if (isEmpty($value)) {
        return false
    }
}
return true', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '77df2cba1213444cb3876b3b3406ac88', null, null, 'mbtelement', '1');
insert into gp_qc_rule (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, EXISTS_SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_215I2150B01I2150B0101', '20191206', 'TESTCORP', '72', '002', null, null, '借贷账户特殊事件说明记录的“信息报告日期”与“发生月份”中的年、月相等。', '借贷账户特殊事件说明记录的“信息报告日期”与“发生月份”中的年、月相等。', null, 'BUSI', 'DATA_ID', null, null, 'Y', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 
'if(!isEmpty(MONTH) && !isEmpty(RPT_DATE) && MONTH.length()>=6 && RPT_DATE.length()>=6){
if(!(MONTH.substring(0,6)).equals(RPT_DATE.substring(0,6))){
  return false
}
return true
}
return true', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'dd18e4dd8bba44078246fe15b9ceda4a', null, null, 'mbtrule', '1');
insert into gp_qc_rule (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, EXISTS_SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_220C_I0000401_1', '20200303', 'TESTCORP', '72', '002', null, null, 
'共同受信人信息段的组织机构代码应符合如下规则：应由8位数字（或大写拉丁字母）以及1位数字（或大写拉丁字母）组成；校验位应满足校验规则（参见国标《全国组织机构代码编制规则》（GB11714-1997））。
', '共同受信人信息段的组织机构代码应符合如下规则：应由8位数字（或大写拉丁字母）以及1位数字（或大写拉丁字母）组成；校验位应满足校验规则（参见国标《全国组织机构代码编制规则》（GB11714-1997））。
', null, 'BUSI', 'DATA_ID', null, null, 'Y', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 
' if(C_BRER_TYPE =="2" &&  C_CERT_REL_ID_TYPE=="30"){

        def code=C_CERT_REL_ID_NUM;
        def ws = [3, 7, 9, 10, 5, 8, 4, 2];
        String str = ''0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ'';
        def reg = /^([0-9A-Z]){8}[0-9|X]$/;
      String tmp = code.toUpperCase();

        if (isEmpty(tmp) || tmp.length() != 9) {
              return false
            }
        int sum = 0;
		if (isEmpty(code) || code.length() < 8) {
            return false
        }
        for (int i = 0; i < 8; i++){
         sum += str.indexOf(code.getAt(i)).toInteger() * ws.getAt(i).toInteger();}
        def c9 = 11 - (sum%11);
        c9 = (c9.toInteger() ==11?0:c9)
        c9 = (c9.toInteger() == 10 ? ''X'' : c9 )
        def matcher = code[0..8] =~ reg;
        matcher.matches();
        if (matcher.getCount()!=0 && code.getAt(8).toString()==c9.toString()) {
            return true
        }else{
            return false
        }
    }
      return true', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'mbtrule', '1');

insert into gp_qc_rule (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, EXISTS_SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_220C_I0000401_2', '20200303', 'TESTCORP', '72', '002', null, null,
 '共同受信人信息段的统一社会信用代码应符合如下规则：
应由18位数字或大写英文字母（不使用I、O、Z、S、V）组成；
第1位和第2位应为有效的登记管理部分代码和机构分类代码；
第9-17位应符合组织机构代码规则；
校验位应符合校验规则（参见国标《法人和其他组织统一社会信用代码编码规则》（GB32100-2015））。', '共同受信人信息段的统一社会信用代码应符合如下规则：
应由18位数字或大写英文字母（不使用I、O、Z、S、V）组成；
第1位和第2位应为有效的登记管理部分代码和机构分类代码；
第9-17位应符合组织机构代码规则；
校验位应符合校验规则（参见国标《法人和其他组织统一社会信用代码编码规则》（GB32100-2015））。', null, 'BUSI', 'DATA_ID', null, null, 'Y', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 
'if (C_BRER_TYPE =="2" &&  C_CERT_REL_ID_TYPE=="20"){
String str = C_CERT_REL_ID_NUM;
def firstarray = [''0'', ''1'', ''2'', ''3'', ''4'', ''5'', ''6'', ''7'', ''8'', ''9'', ''A'', ''B'', ''C'', ''D'', ''E'', ''F'', ''G'', ''H'', ''I'', ''J'', ''K'', ''L'', ''M'', ''N'', ''O'', ''P'', ''Q'', ''R'', ''S'', ''T'', ''U'', ''V'', ''W'', ''X'', ''Y'', ''Z''];
def firstkeys = [3, 7, 9, 10, 5, 8, 4, 2];
def  secondarray = [''0'', ''1'', ''2'', ''3'', ''4'', ''5'', ''6'', ''7'', ''8'', ''9'', ''A'', ''B'', ''C'', ''D'', ''E'', ''F'', ''G'', ''H'', ''J'', ''K'', ''L'', ''M'', ''N'', ''P'', ''Q'', ''R'', ''T'', ''U'', ''W'', ''X'', ''Y''];
def secondkeys = [1, 3, 9, 27, 19, 26, 16, 17, 20, 29, 25, 13, 8, 24, 10, 30, 28];
String code = str.toUpperCase();
        if (isEmpty(code) || code.length() != 18) {
            return false;
        }
        def reg = /^[1-9]|[ABCDEFGY]$/;
        def matcher = str.getAt(0) =~ reg;
        matcher.matches()
        if(matcher.getCount()==0){
            return false;
        }
        def reg1 = /^[1,2,3,9]$/;
        matcher = str.getAt(1) =~ reg1
          matcher.matches()
          if(matcher.getCount()==0){
            return false;
        }
        def reg2 = /^\d{6}$/;
        matcher = str[2..7] =~ reg2
        matcher.matches()
        if(matcher.getCount()==0){
            return false;
        }
        int count = 0;
        for (int i = 0; i < firstkeys.size(); i++) {
            def a = code[i+8];
            count += firstkeys[i].toInteger() * firstarray.indexOf(a).toInteger();
        }
        int remainder = count % 11;
        int  firstkey= (remainder == 0 ? 0 : 11 - remainder);
        def firstword;
        if (firstkey < 10) {
            firstword = firstkey;
        }
        if (firstkey == 10) {
            firstword = ''X'';
        } else if (firstkey == 11) {
            firstword = ''0'';
        }

        if (!(""+firstword).equals(code[16])) {
            return false;
        }
         count = 0;
        for (int i = 0; i < secondkeys.size(); i++) {
            def a = code[i];
            count += secondkeys[i].toInteger() * secondarray.indexOf(a).toInteger();
        }
         remainder = count % 31;
         int secondkey = (remainder == 0 ? 0 : 31 - remainder);

        def secondword = secondarray[secondkey];
        if (!secondword || !(""+secondword).equals(code[17])) {
            return false;
        }

}
        return true;', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'mbtrule', '1');

insert into gp_qc_rule (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, EXISTS_SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_220I0000401_1', '20190610', 'TESTCORP', '72', '2', null, null, '公民身份证号码则应符合如下规则：长度必须为18位；
前17位为数字，第18位可为数字或字母“X”、“x”；
第7-14位为出生日期，日期必须在19010101-20991231之间；
校验位必须满足校验规则（参见国标《公民身份号码》（GB11643-1999））。', '公民身份证号码则应符合如下规则：长度必须为18位；
前17位为数字，第18位可为数字或字母“X”、“x”；
第7-14位为出生日期，日期必须在19010101-20991231之间；
校验位必须满足校验规则（参见国标《公民身份号码》（GB11643-1999））。', null, 'BUSI', 'DATA_ID', null, null, 'Y', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 
'if(MBT_220_B_ID_TYPE=="10"){
		  def ws = [7,9,10,5,8,4,2,1,6,3,7,9,10,5,8,4,2];
		  def ss = [1,0,''X'',9,8,7,6,5,4,3,2];
		  String str = ''0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ'';
		  def code=MBT_220_B_ID_NUM;
		  def aRegex = /^[1-9]\d{5}(190[1-9]|19[1-9][0-9]|20[0-9]{2})((0[1-9])|(10|11|12))(([0-2][1-9])|10|20|30|31)\d{3}[0-9Xx]$/
		  def matcher = code =~ aRegex
 		 matcher.matches();
if(matcher.getCount()==1){
		 int sum = 0;
		 if (isEmpty(code) || code.length() < 17) {
            return false
        }
        for (int i = 0; i < 17; i++){
         sum += str.indexOf(code.getAt(i)).toInteger() * ws.getAt(i).toInteger();
		 }
        def c9 = (sum%11);    
		c9= (c9==2?''X'':ss.getAt(c9));
		def matcher1 = code[0..17] =~ aRegex;
       	 matcher1.matches();
        if (matcher1.getCount()!=0 && code.getAt(17).toString()==c9.toString()) {
             return  true
        }else{
             return  false

        }
}else{
		return  false
}

}
return true

', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'admin', '20200119', '20200119171000', null, null, null, '063a51c208ec4c22a80d169211e92ab2', null, null, 'mbtrule', '1');

insert into gp_qc_rule (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, EXISTS_SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_220R220010120190603001', '20190530', 'TESTCORP', '72', '002', null, null, '个人授信协议记录报送时，“基础段”和“额度信息段”必须出现。', '个人授信协议记录报送时，“基础段”和“额度信息段”必须出现。', null, 'BUSI', 'DATA_ID', null, null, 'Y', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 
'if (!isEmpty(IS_RPT) && IS_RPT.length()>=2 && IS_RPT.substring(0,1) == "1" && IS_RPT.substring(1,2) == "1") {
   return true
  }
  return false', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'b4178405185c498aaea64a0debd11520', null, null, 'mbtrule', '1');

insert into gp_qc_rule (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, EXISTS_SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_220_CI0000401_1', '20200303', 'TESTCORP', '72', '2', null, null, '共同授信人信息段的公民身份证号码则应符合如下规则：长度必须为18位；前17位为数字，第18位可为数字或字母“X”、“x”；第7-14位为出生日期，日期必须在19010101-20991231之间；校验位必须满足校验规则（参见国标《公民身份号码》（GB11643-1999））。', '共同授信人信息段的公民身份证号码则应符合如下规则：长度必须为18位；前17位为数字，第18位可为数字或字母“X”、“x”；第7-14位为出生日期，日期必须在19010101-20991231之间；校验位必须满足校验规则（参见国标《公民身份号码》（GB11643-1999））。', null, 'BUSI', 'DATA_ID', null, null, 'Y', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 
'if(C_BRER_TYPE =="1" &&  C_CERT_REL_ID_TYPE=="10"){
		  def ws = [7,9,10,5,8,4,2,1,6,3,7,9,10,5,8,4,2];
		  def ss = [1,0,''X'',9,8,7,6,5,4,3,2];
		  String str = ''0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ'';
		  def code=C_CERT_REL_ID_NUM;
		  def aRegex = /^[1-9]\d{5}(190[1-9]|19[1-9][0-9]|20[0-9]{2})((0[1-9])|(10|11|12))(([0-2][1-9])|10|20|30|31)\d{3}[0-9Xx]$/
		  def matcher = code =~ aRegex
 		 matcher.matches();
if(matcher.getCount()==1){
		 int sum = 0;
		  if (isEmpty(code) || code.length() < 17) {
            return false
        }
        for (int i = 0; i < 17; i++){
         sum += str.indexOf(code.getAt(i)).toInteger() * ws.getAt(i).toInteger();
		 }
        def c9 = (sum%11);    
		c9= (c9==2?''X'':ss.getAt(c9));
		def matcher1 = code[0..17] =~ aRegex;
       	 matcher1.matches();
        if (matcher1.getCount()!=0 && code.getAt(17).toString()==c9.toString()) {
             return  true
        }else{
             return  false

        }
}else{
		return  false
}

}
return true

', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'admin', '20200119', '20200119171000', null, null, null, null, null, null, 'mbtrule', '1');
insert into gp_qc_rule (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, EXISTS_SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_230R2300101R230010101R230010102', '20190606', 'TESTCORP', '72', '002', null, null, '“报告时点说明代码”为“10-新开户/首次上报”，至少应出现账户基本信息段、在保责任信息段。', '“报告时点说明代码”为“10-新开户/首次上报”，至少应出现账户基本信息段、在保责任信息段。', null, 'BUSI', 'DATA_ID', null, null, 'Y', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null,
 'if (B_RPT_DATE_CODE == "10") {
    if (!isEmpty(IS_RPT) && IS_RPT.length()>=3 && IS_RPT.substring(1,2) == "1" && IS_RPT.substring(2,3) == "1") {
        return true
    }
    return false
}
return true', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '6021c76a12774627951bc5cdfafc6058', null, null, 'mbtrule', '1');

insert into gp_qc_rule (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, EXISTS_SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_230R2300105R230010501R230010502', '20190606', 'TESTCORP', '72', 'XD', null, null, '“报告时点说明代码”为“10-新开户/首次上报”且“反担保方式”为“1-保证”时，应出现相关还款责任人信息段。', '“报告时点说明代码”为“10-新开户/首次上报”且“反担保方式”为“1-保证”时，应出现相关还款责任人信息段。', null, 'BUSI', 'DATA_ID', null, null, 'Y', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 
'if (B_RPT_DATE_CODE == "10" && C_GUAR_MODE == "1") {
    if (!isEmpty(IS_RPT) && IS_RPT.length()>=5 && IS_RPT.substring(4,5) == "1") {
        return true
    }
    return false
}
return true', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '536b2491a853452f894dd28391de1aa9', null, null, 'mbtrule', '1');

insert into gp_qc_rule (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, EXISTS_SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_230R2300107R230010701R230010702', '20190606', 'TESTCORP', '72', 'XD', null, null, '“报告时点说明代码”为“40-五级分类调整”时，至少应出现在保责任信息段。', '“报告时点说明代码”为“40-五级分类调整”时，至少应出现在保责任信息段。', null, 'BUSI', 'DATA_ID', null, null, 'Y', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 
'if (B_RPT_DATE_CODE == "40" ) {
    if (!isEmpty(IS_RPT) && IS_RPT.length()>=3 && IS_RPT.substring(2,3) == "1") {
        return true
    }
    return false
}
return true', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '26eeab3f85df43e9ab792d5a9650c4a5', null, null, 'mbtrule', '1');

insert into gp_qc_rule (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, EXISTS_SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_230R2300106R230010602', '20190606', 'TESTCORP', '72', 'XD', null, null, '个人担保账户信息记录必须包含基础段。', '个人担保账户信息记录必须包含基础段。', null, 'BUSI', 'DATA_ID', null, null, 'Y', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 
'if (!isEmpty(IS_RPT) && IS_RPT.length()>=1 && IS_RPT.substring(0,1) == "1") {
   return true
  }
  return false', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'ca83ea81ac8c44d4bde4c681ea54ae24', null, null, 'mbtrule', '1');

insert into gp_qc_rule (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, EXISTS_SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_230I0000401_1', '20190610', 'TESTCORP', '72', '2', null, null, '公民身份证号码则应符合如下规则：长度必须为18位；
前17位为数字，第18位可为数字或字母“X”、“x”；
第7-14位为出生日期，日期必须在19010101-20991231之间；
校验位必须满足校验规则（参见国标《公民身份号码》（GB11643-1999））。', '公民身份证号码则应符合如下规则：长度必须为18位；
前17位为数字，第18位可为数字或字母“X”、“x”；
第7-14位为出生日期，日期必须在19010101-20991231之间；
校验位必须满足校验规则（参见国标《公民身份号码》（GB11643-1999））。', null, 'BUSI', 'DATA_ID', null, null, 'Y', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 
'if(MBT_230_B_ID_TYPE=="10"){
		  def ws = [7,9,10,5,8,4,2,1,6,3,7,9,10,5,8,4,2];
		  def ss = [1,0,''X'',9,8,7,6,5,4,3,2];
		  String str = ''0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ'';
		  def code=MBT_230_B_ID_NUM;
		  def aRegex = /^[1-9]\d{5}(190[1-9]|19[1-9][0-9]|20[0-9]{2})((0[1-9])|(10|11|12))(([0-2][1-9])|10|20|30|31)\d{3}[0-9Xx]$/
		  def matcher = code =~ aRegex
 		 matcher.matches();
if(matcher.getCount()==1){
		 int sum = 0;
		 if (isEmpty(code) || code.length() < 17) {
            return false
        }
        for (int i = 0; i < 17; i++){
         sum += str.indexOf(code.getAt(i)).toInteger() * ws.getAt(i).toInteger();
		 }
        def c9 = (sum%11);    
		c9= (c9==2?''X'':ss.getAt(c9));
		def matcher1 = code[0..17] =~ aRegex;
       	 matcher1.matches();
        if (matcher1.getCount()!=0 && code.getAt(17).toString()==c9.toString()) {
             return  true
        }else{
             return  false

        }
}else{
		return  false
}

}
return true

', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'admin', '20200119', '20200119171000', null, null, null, '063a51c208ec4c22a80d169211e92ab2', null, null, 'mbtrule', '1');

insert into gp_qc_rule (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, EXISTS_SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_230_EI0000401_1', '20200303', 'TESTCORP', '72', '2', null, null, '相关还款责任人段的公民身份证号码则应符合如下规则：长度必须为18位；前17位为数字，第18位可为数字或字母“X”、“x”；第7-14位为出生日期，日期必须在19010101-20991231之间；校验位必须满足校验规则（参见国标《公民身份号码》（GB11643-1999））。', '相关还款责任人段的公民身份证号码则应符合如下规则：长度必须为18位；前17位为数字，第18位可为数字或字母“X”、“x”；第7-14位为出生日期，日期必须在19010101-20991231之间；校验位必须满足校验规则（参见国标《公民身份号码》（GB11643-1999））。', null, 'BUSI', 'DATA_ID', null, null, 'Y', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 
'if (INFO_ID_TYPE =="1" &&  ARLP_CERT_TYPE=="10"){
		  def ws = [7,9,10,5,8,4,2,1,6,3,7,9,10,5,8,4,2];
		  def ss = [1,0,''X'',9,8,7,6,5,4,3,2];
		  String str = ''0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ'';
		  def code=ARLP_CERT_NUM;
		  if (isEmpty(code) || code.length() != 18) {
		      return false
		  }
		  def aRegex = /^[1-9]\d{5}(190[1-9]|19[1-9][0-9]|20[0-9]{2})((0[1-9])|(10|11|12))(([0-2][1-9])|10|20|30|31)\d{3}[0-9Xx]$/
		  def matcher = code =~ aRegex
 		 matcher.matches();
if(matcher.getCount()==1){
		 int sum = 0;
        for (int i = 0; i < 17; i++){
         sum += str.indexOf(code.getAt(i)).toInteger() * ws.getAt(i).toInteger();
		 }
        def c9 = (sum%11);    
		c9= (c9==2?''X'':ss.getAt(c9));
		def matcher1 = code[0..17] =~ aRegex;
       	 matcher1.matches();
        if (matcher1.getCount()!=0 && code.getAt(17).toString()==c9.toString()) {
             return  true
        }else{
             return  false

        }
}else{
		return  false
}

}
return true
', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'admin', '20200119', '20200119171000', null, null, null, null, null, null, 'mbtrule', '1');

insert into gp_qc_rule (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, EXISTS_SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_230E_I0000401_2', '20200303', 'TESTCORP', '72', '002', null, null, '相关还款责任人段的统一社会信用代码应符合如下规则：
应由18位数字或大写英文字母（不使用I、O、Z、S、V）组成；
第1位和第2位应为有效的登记管理部分代码和机构分类代码；
第9-17位应符合组织机构代码规则；
校验位应符合校验规则（参见国标《法人和其他组织统一社会信用代码编码规则》（GB32100-2015））。', '相关还款责任人段的统一社会信用代码应符合如下规则：
应由18位数字或大写英文字母（不使用I、O、Z、S、V）组成；
第1位和第2位应为有效的登记管理部分代码和机构分类代码；
第9-17位应符合组织机构代码规则；
校验位应符合校验规则（参见国标《法人和其他组织统一社会信用代码编码规则》（GB32100-2015））。', null, 'BUSI', 'DATA_ID', null, null, 'Y', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'if (INFO_ID_TYPE =="2" &&  ARLP_CERT_TYPE=="20"){
String str = ARLP_CERT_NUM;
def firstarray = [''0'', ''1'', ''2'', ''3'', ''4'', ''5'', ''6'', ''7'', ''8'', ''9'', ''A'', ''B'', ''C'', ''D'', ''E'', ''F'', ''G'', ''H'', ''I'', ''J'', ''K'', ''L'', ''M'', ''N'', ''O'', ''P'', ''Q'', ''R'', ''S'', ''T'', ''U'', ''V'', ''W'', ''X'', ''Y'', ''Z''];
def firstkeys = [3, 7, 9, 10, 5, 8, 4, 2];
def  secondarray = [''0'', ''1'', ''2'', ''3'', ''4'', ''5'', ''6'', ''7'', ''8'', ''9'', ''A'', ''B'', ''C'', ''D'', ''E'', ''F'', ''G'', ''H'', ''J'', ''K'', ''L'', ''M'', ''N'', ''P'', ''Q'', ''R'', ''T'', ''U'', ''W'', ''X'', ''Y''];
def secondkeys = [1, 3, 9, 27, 19, 26, 16, 17, 20, 29, 25, 13, 8, 24, 10, 30, 28];
String code = str.toUpperCase();
        if (isEmpty(code) || code.length() != 18) {
            return false;
        }
        def reg = /^[1-9]|[ABCDEFGY]$/;
        def matcher = str.getAt(0) =~ reg;
        matcher.matches()
        if(matcher.getCount()==0){
            return false;
        }
        def reg1 = /^[1,2,3,9]$/;
        matcher = str.getAt(1) =~ reg1
          matcher.matches()
          if(matcher.getCount()==0){
            return false;
        }
        def reg2 = /^\d{6}$/;
        matcher = str[2..7] =~ reg2
        matcher.matches()
        if(matcher.getCount()==0){
            return false;
        }
        int count = 0;
        for (int i = 0; i < firstkeys.size(); i++) {
            def a = code[i+8];
            count += firstkeys[i].toInteger() * firstarray.indexOf(a).toInteger();
        }
        int remainder = count % 11;
        int  firstkey= (remainder == 0 ? 0 : 11 - remainder);
        def firstword;
        if (firstkey < 10) {
            firstword = firstkey;
        }
        if (firstkey == 10) {
            firstword = ''X'';
        } else if (firstkey == 11) {
            firstword = ''0'';
        }

        if (!(""+firstword).equals(code[16])) {
            return false;
        }
         count = 0;
        for (int i = 0; i < secondkeys.size(); i++) {
            def a = code[i];
            count += secondkeys[i].toInteger() * secondarray.indexOf(a).toInteger();
        }
         remainder = count % 31;
         int secondkey = (remainder == 0 ? 0 : 31 - remainder);

        def secondword = secondarray[secondkey];
        if (!secondword || !(""+secondword).equals(code[17])) {
            return false;
        }

}
        return true;', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'mbtrule', '1');

insert into gp_qc_rule (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, EXISTS_SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_230E_I0000401_1', '20200303', 'TESTCORP', '72', '002', null, null, '相关还款责任人段的组织机构代码应符合如下规则：应由8位数字（或大写拉丁字母）以及1位数字（或大写拉丁字母）组成；校验位应满足校验规则（参见国标《全国组织机构代码编制规则》（GB11714-1997））。
', '相关还款责任人段的组织机构代码应符合如下规则：应由8位数字（或大写拉丁字母）以及1位数字（或大写拉丁字母）组成；校验位应满足校验规则（参见国标《全国组织机构代码编制规则》（GB11714-1997））。
', null, 'BUSI', 'DATA_ID', null, null, 'Y', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 
' if(INFO_ID_TYPE =="2" &&  ARLP_CERT_TYPE=="30"){

        def code=ARLP_CERT_NUM;
        def ws = [3, 7, 9, 10, 5, 8, 4, 2];
        String str = ''0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ'';
        def reg = /^([0-9A-Z]){8}[0-9|X]$/;
      String tmp = code.toUpperCase();

        if (isEmpty(tmp) || tmp.length() != 9) {
              return false
            }
        int sum = 0;
		if (isEmpty(code) || code.length() < 8) {
            return false
        }
        for (int i = 0; i < 8; i++){
         sum += str.indexOf(code.getAt(i)).toInteger() * ws.getAt(i).toInteger();}
        def c9 = 11 - (sum%11);
        c9 = (c9.toInteger() ==11?0:c9)
        c9 = (c9.toInteger() == 10 ? ''X'' : c9 )
        def matcher = code[0..8] =~ reg;
        matcher.matches();
        if (matcher.getCount()!=0 && code.getAt(8).toString()==c9.toString()) {
            return true
        }else{
            return false
        }
    }
      return true', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'mbtrule', '1');

insert into gp_qc_rule (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, EXISTS_SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_230R2300102R230010201R230010202', '20190606', 'TESTCORP', '72', '002', null, null, '“报告时点说明代码”为“20-账户关闭”时，至少应出现在保责任信息段。', '“报告时点说明代码”为“20-账户关闭”时，至少应出现在保责任信息段。', null, 'BUSI', 'DATA_ID', null, null, 'Y', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 
'if (B_RPT_DATE_CODE == "20") {
    if (!isEmpty(IS_RPT) && IS_RPT.length()>=3 &&  IS_RPT.substring(2,3) == "1") {
        return true
    }
    return false
}
return true', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '6ea8b8725aaa43cd8d70d98f6e652381', null, null, 'mbtrule', '1');

insert into gp_qc_rule (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, EXISTS_SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_230R2300103R230010301R230010302', '20190606', 'TESTCORP', '72', 'XD', null, null, '“报告时点说明代码”为“30-在保责任变化”时，至少应出现在保责任信息段。', '“报告时点说明代码”为“30-在保责任变化”时，至少应出现在保责任信息段。', null, 'BUSI', 'DATA_ID', null, null, 'Y', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 
'if (B_RPT_DATE_CODE == "30") {
    if (!isEmpty(IS_RPT) && IS_RPT.length()>=3 && IS_RPT.substring(2,3) == "1") {
        return true
    }
    return false
}
return true', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'aba837e6a1cd45d49eeaf967d63d94c5', null, null, 'mbtrule', '1');

insert into gp_qc_rule (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, EXISTS_SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_230R2300108R230010801R230010802', '20190606', 'TESTCORP', '72', 'XD', null, null, '“报告时点说明代码”为“50-其他信息变化”时，不包括在保责任信息段。', '“报告时点说明代码”为“50-其他信息变化”时，不包括在保责任信息段。', null, 'BUSI', 'DATA_ID', null, null, 'Y', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 
'if (B_RPT_DATE_CODE == "50") {
    if (!isEmpty(IS_RPT) && IS_RPT.length()>=3 && IS_RPT.substring(2,3) == "0") {
        return true
    }
    return false
}
return true', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '974c1020b9b24a33a2e542d06ce7ecdb', null, null, 'mbtrule', '1');
insert into gp_qc_rule (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, EXISTS_SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_310_EI0000401_1', '20200305', 'TESTCORP', '72', '2', null, null, '主要组成人段的公民身份证号码则应符合如下规则：长度必须为18位；
前17位为数字，第18位可为数字或字母“X”、“x”；
第7-14位为出生日期，日期必须在19010101-20991231之间；
校验位必须满足校验规则（参见国标《公民身份号码》（GB11643-1999））。', '主要组成人段的公民身份证号码则应符合如下规则：长度必须为18位；
前17位为数字，第18位可为数字或字母“X”、“x”；
第7-14位为出生日期，日期必须在19010101-20991231之间；
校验位必须满足校验规则（参见国标《公民身份号码》（GB11643-1999））。', null, 'BUSI', 'DATA_ID', null, null, 'Y', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null,
 'if(MMB_ID_TYPE=="10"){
		  def ws = [7,9,10,5,8,4,2,1,6,3,7,9,10,5,8,4,2];
		  def ss = [1,0,''X'',9,8,7,6,5,4,3,2];
		  String str = ''0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ'';
		  def code=MMB_ID_NUM;
		  def aRegex = /^[1-9]\d{5}(190[1-9]|19[1-9][0-9]|20[0-9]{2})((0[1-9])|(10|11|12))(([0-2][1-9])|10|20|30|31)\d{3}[0-9Xx]$/
		  def matcher = code =~ aRegex
 		 matcher.matches();
if(matcher.getCount()==1){
		 int sum = 0;
		  if (isEmpty(code) || code.length() < 17) {
            return false
        }
        for (int i = 0; i < 17; i++){
         sum += str.indexOf(code.getAt(i)).toInteger() * ws.getAt(i).toInteger();
		 }
        def c9 = (sum%11);    
		c9= (c9==2?''X'':ss.getAt(c9));
		def matcher1 = code[0..17] =~ aRegex;
       	 matcher1.matches();
        if (matcher1.getCount()!=0 && code.getAt(17).toString()==c9.toString()) {
             return  true
        }else{
             return  false

        }
}else{
		return  false
}

}
return true', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'admin', '20200119', '20200119171000', null, null, null, null, null, null, 'mbtrule', '1');

insert into gp_qc_rule (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, EXISTS_SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_310_FI0000401_6', '20200305', 'TESTCORP', '72', '002', null, null, '主要出资人段的统一社会信用代码应符合如下规则：
应由18位数字或大写英文字母（不使用I、O、Z、S、V）组成；
第1位和第2位应为有效的登记管理部分代码和机构分类代码；
第9-17位应符合组织机构代码规则；
校验位应符合校验规则（参见国标《法人和其他组织统一社会信用代码编码规则》（GB32100-2015））。', '主要出资人段的统一社会信用代码应符合如下规则：
应由18位数字或大写英文字母（不使用I、O、Z、S、V）组成；
第1位和第2位应为有效的登记管理部分代码和机构分类代码；
第9-17位应符合组织机构代码规则；
校验位应符合校验规则（参见国标《法人和其他组织统一社会信用代码编码规则》（GB32100-2015））。', null, 'BUSI', 'DATA_ID', null, null, 'Y', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 
'if (SHAR_HOD_CERT_TYPE =="2" &&  SHAR_HOD_ID_TYPE=="20"){
String str = SHAR_HOD_ID_NUM;
def firstarray = [''0'', ''1'', ''2'', ''3'', ''4'', ''5'', ''6'', ''7'', ''8'', ''9'', ''A'', ''B'', ''C'', ''D'', ''E'', ''F'', ''G'', ''H'', ''I'', ''J'', ''K'', ''L'', ''M'', ''N'', ''O'', ''P'', ''Q'', ''R'', ''S'', ''T'', ''U'', ''V'', ''W'', ''X'', ''Y'', ''Z''];
def firstkeys = [3, 7, 9, 10, 5, 8, 4, 2];
def  secondarray = [''0'', ''1'', ''2'', ''3'', ''4'', ''5'', ''6'', ''7'', ''8'', ''9'', ''A'', ''B'', ''C'', ''D'', ''E'', ''F'', ''G'', ''H'', ''J'', ''K'', ''L'', ''M'', ''N'', ''P'', ''Q'', ''R'', ''T'', ''U'', ''W'', ''X'', ''Y''];
def secondkeys = [1, 3, 9, 27, 19, 26, 16, 17, 20, 29, 25, 13, 8, 24, 10, 30, 28];
String code = str.toUpperCase();
        if (isEmpty(code) || code.length() != 18) {
            return false;
        }
        def reg = /^[1-9]|[ABCDEFGY]$/;
        def matcher = str.getAt(0) =~ reg;
        matcher.matches()
        if(matcher.getCount()==0){
            return false;
        }
        def reg1 = /^[1,2,3,9]$/;
        matcher = str.getAt(1) =~ reg1
          matcher.matches()
          if(matcher.getCount()==0){
            return false;
        }
        def reg2 = /^\d{6}$/;
        matcher = str[2..7] =~ reg2
        matcher.matches()
        if(matcher.getCount()==0){
            return false;
        }
        int count = 0;
        for (int i = 0; i < firstkeys.size(); i++) {
            def a = code[i+8];
            count += firstkeys[i].toInteger() * firstarray.indexOf(a).toInteger();
        }
        int remainder = count % 11;
        int  firstkey= (remainder == 0 ? 0 : 11 - remainder);
        def firstword;
        if (firstkey < 10) {
            firstword = firstkey;
        }
        if (firstkey == 10) {
            firstword = ''X'';
        } else if (firstkey == 11) {
            firstword = ''0'';
        }

        if (!(""+firstword).equals(code[16])) {
            return false;
        }
         count = 0;
        for (int i = 0; i < secondkeys.size(); i++) {
            def a = code[i];
            count += secondkeys[i].toInteger() * secondarray.indexOf(a).toInteger();
        }
         remainder = count % 31;
         int secondkey = (remainder == 0 ? 0 : 31 - remainder);

        def secondword = secondarray[secondkey];
        if (!secondword || !(""+secondword).equals(code[17])) {
            return false;
        }

}
        return true;', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1abe69a0b299409b8f6bb7f6fb1b9612', null, null, 'mbtrule', '1');

insert into gp_qc_rule (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, EXISTS_SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_310_CI0000401_1', '20200305', 'TESTCORP', '72', '002', null, null, ' 其他标识段的组织机构代码应符合如下规则：应由8位数字（或大写拉丁字母）以及1位数字（或大写拉丁字母）组成；校验位应满足校验规则（参见国标《全国组织机构代码编制规则》（GB11714-1997））。', ' 其他标识段的组织机构代码应符合如下规则：应由8位数字（或大写拉丁字母）以及1位数字（或大写拉丁字母）组成；校验位应满足校验规则（参见国标《全国组织机构代码编制规则》（GB11714-1997））。', null, 'BUSI', 'DATA_ID', null, null, 'Y', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 
' if(OTH_ENT_CERT_TYPE=="30"){
        def code=OTH_ENT_CERT_NUM;
        def ws = [3, 7, 9, 10, 5, 8, 4, 2];
        String str = ''0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ'';
        def reg = /^([0-9A-Z]){8}[0-9|X]$/;
      String tmp = code.toUpperCase();
        if (isEmpty(tmp) || tmp.length() != 9) {
              return false
            }
        int sum = 0;
		 if (isEmpty(code) || code.length() < 8) {
            return false
        }
        for (int i = 0; i < 8; i++){
         sum += str.indexOf(code.getAt(i)).toInteger() * ws.getAt(i).toInteger();}
        def c9 = 11 - (sum%11);
        c9 = (c9.toInteger() ==11?0:c9)
        c9 = (c9.toInteger() == 10 ? ''X'' : c9 )
        def matcher = code[0..8] =~ reg;
        matcher.matches();
        if (matcher.getCount()!=0 && code.getAt(8).toString()==c9.toString()) {
            return true
        }else{
            return false
        }
    }
      return true', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1abe69a0b299409b8f6bb7f6fb1b9612', null, null, 'mbtrule', '1');

insert into gp_qc_rule (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, EXISTS_SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_310R3100101R310010101R310010102', '20190624', 'TESTCORP', '72', '002', null, null, '当报告时点说明代码为“新增客户资料/首次上报”时，记录必须至少包含基本概况段、主要组成人员段、联系方式段。', '当报告时点说明代码为“新增客户资料/首次上报”时，记录必须至少包含基本概况段、主要组成人员段、联系方式段。', null, 'BUSI', 'DATA_ID', null, null, 'Y', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null,
 'if (B_RPT_DATE_CODE == "10") {
    if (!isEmpty(IS_RPT) && IS_RPT.length()>=8 && IS_RPT.substring(1,2) == "1" && IS_RPT.substring(4,5) == "1" && IS_RPT.substring(7,8) == "1") {
        return true
    }
    return false
}
return true', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'fc9385b728f746d3b50d52c0291836fb', null, null, 'mbtrule', '1');

insert into gp_qc_rule (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, EXISTS_SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_310R3100102R310010201R310010202', '20190624', 'TESTCORP', '72', '002', null, null, '当基础段中“组织机构类型”为机关类型（以“3、31、32、33、34、35、36、37、39”为代码时），注册资本及主要出资人段不能出现。', '当基础段中“组织机构类型”为机关类型（以“3、31、32、33、34、35、36、37、39”为代码时），注册资本及主要出资人段不能出现。', null, 'BUSI', 'DATA_ID', null, null, 'Y', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 
'if (B_ORG_TYPE == "3" || B_ORG_TYPE == "39" || B_ORG_TYPE == "31" || B_ORG_TYPE == "32" || B_ORG_TYPE == "33" || B_ORG_TYPE == "34" || B_ORG_TYPE == "35" || B_ORG_TYPE == "36" || B_ORG_TYPE == "37") {
    if (!isEmpty(IS_RPT) && IS_RPT.length()>=10 && IS_RPT.substring(2,3) == "0" && IS_RPT.substring(9,10) == "0") {
        return true
    }
    return false
}
return true', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1d25e6b9d4074543a5e192491f0f536f', null, null, 'mbtrule', '1');

insert into gp_qc_rule (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, EXISTS_SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_310_FI0000401_1', '20200305', 'TESTCORP', '72', '2', null, null, '主要出资人段的公民身份证号码则应符合如下规则：长度必须为18位；前17位为数字，第18位可为数字或字母“X”、“x”；第7-14位为出生日期，日期必须在19010101-20991231之间；校验位必须满足校验规则（参见国标《公民身份号码》（GB11643-1999））。', '主要出资人段的公民身份证号码则应符合如下规则：长度必须为18位；前17位为数字，第18位可为数字或字母“X”、“x”；第7-14位为出生日期，日期必须在19010101-20991231之间；校验位必须满足校验规则（参见国标《公民身份号码》（GB11643-1999））。', null, 'BUSI', 'DATA_ID', null, null, 'Y', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 
'if(SHAR_HOD_CERT_TYPE =="1" &&  SHAR_HOD_ID_TYPE=="10"){
		  def ws = [7,9,10,5,8,4,2,1,6,3,7,9,10,5,8,4,2];
		  def ss = [1,0,''X'',9,8,7,6,5,4,3,2];
		  String str = ''0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ'';
		  def code=SHAR_HOD_ID_NUM;
		  def aRegex = /^[1-9]\d{5}(190[1-9]|19[1-9][0-9]|20[0-9]{2})((0[1-9])|(10|11|12))(([0-2][1-9])|10|20|30|31)\d{3}[0-9Xx]$/
		  def matcher = code =~ aRegex
 		 matcher.matches();
if(matcher.getCount()==1){
		 int sum = 0;
		  if (isEmpty(code) || code.length() < 17) {
            return false
        }
        for (int i = 0; i < 17; i++){
         sum += str.indexOf(code.getAt(i)).toInteger() * ws.getAt(i).toInteger();
		 }
        def c9 = (sum%11);    
		c9= (c9==2?''X'':ss.getAt(c9));
		def matcher1 = code[0..17] =~ aRegex;
       	 matcher1.matches();
        if (matcher1.getCount()!=0 && code.getAt(17).toString()==c9.toString()) {
             return  true
        }else{
             return  false

        }
}else{
		return  false
}

}
return true

', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'admin', '20200119', '20200119171000', null, null, null, '063a51c208ec4c22a80d169211e92ab2', null, null, 'mbtrule', '1');

insert into gp_qc_rule (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, EXISTS_SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_310I0000401_1', '20190624', 'TESTCORP', '72', '002', null, null, ' 组织机构代码应符合如下规则：应由8位数字（或大写拉丁字母）以及1位数字（或大写拉丁字母）组成；校验位应满足校验规则（参见国标《全国组织机构代码编制规则》（GB11714-1997））。
', ' 组织机构代码应符合如下规则：应由8位数字（或大写拉丁字母）以及1位数字（或大写拉丁字母）组成；校验位应满足校验规则（参见国标《全国组织机构代码编制规则》（GB11714-1997））。
', null, 'BUSI', 'DATA_ID', null, null, 'Y', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 
' if(MBT_310_B_ENT_CERT=="30"){

        def code=MBT_310_B_ENT_CERT_NUM;
        def ws = [3, 7, 9, 10, 5, 8, 4, 2];
        String str = ''0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ'';
        def reg = /^([0-9A-Z]){8}[0-9|X]$/;
      String tmp = code.toUpperCase();

        if (isEmpty(tmp) || tmp.length() != 9) {
              return false
            }
        int sum = 0;
		 if (isEmpty(code) || code.length() < 8) {
            return false
        }
        for (int i = 0; i < 8; i++){
         sum += str.indexOf(code.getAt(i)).toInteger() * ws.getAt(i).toInteger();}
        def c9 = 11 - (sum%11);
        c9 = (c9.toInteger() ==11?0:c9)
        c9 = (c9.toInteger() == 10 ? ''X'' : c9 )
        def matcher = code[0..8] =~ reg;
        matcher.matches();
        if (matcher.getCount()!=0 && code.getAt(8).toString()==c9.toString()) {
            return true
        }else{
            return false
        }
    }
      return true', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1abe69a0b299409b8f6bb7f6fb1b9612', null, null, 'mbtrule', '1');

insert into gp_qc_rule (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, EXISTS_SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_310R3100103R310010302', '20190624', 'TESTCORP', '72', '002', null, null, '企业基本信息记录应包含基础段。', '企业基本信息记录应包含基础段。', null, 'BUSI', 'DATA_ID', null, null, 'Y', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 
'if(!isEmpty(IS_RPT) && IS_RPT.length()>=1 && IS_RPT.substring(0,1) == "1"){
	return true
	}
return false', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '72f4d011d0304953b9c362a7fc14bd35', null, null, 'mbtrule', '1');

insert into gp_qc_rule (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, EXISTS_SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_310I0000401_2', '20190624', 'TESTCORP', '72', '002', null, null, '统一社会信用代码应符合如下规则：
应由18位数字或大写英文字母（不使用I、O、Z、S、V）组成；
第1位和第2位应为有效的登记管理部分代码和机构分类代码；
第9-17位应符合组织机构代码规则；
校验位应符合校验规则（参见国标《法人和其他组织统一社会信用代码编码规则》（GB32100-2015））。', '统一社会信用代码应符合如下规则：
应由18位数字或大写英文字母（不使用I、O、Z、S、V）组成；
第1位和第2位应为有效的登记管理部分代码和机构分类代码；
第9-17位应符合组织机构代码规则；
校验位应符合校验规则（参见国标《法人和其他组织统一社会信用代码编码规则》（GB32100-2015））。', null, 'BUSI', 'DATA_ID', null, null, 'Y', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 
'if (MBT_310_B_ENT_CERT=="20"){
String str = MBT_310_B_ENT_CERT_NUM;
def firstarray = [''0'', ''1'', ''2'', ''3'', ''4'', ''5'', ''6'', ''7'', ''8'', ''9'', ''A'', ''B'', ''C'', ''D'', ''E'', ''F'', ''G'', ''H'', ''I'', ''J'', ''K'', ''L'', ''M'', ''N'', ''O'', ''P'', ''Q'', ''R'', ''S'', ''T'', ''U'', ''V'', ''W'', ''X'', ''Y'', ''Z''];
def firstkeys = [3, 7, 9, 10, 5, 8, 4, 2];
def  secondarray = [''0'', ''1'', ''2'', ''3'', ''4'', ''5'', ''6'', ''7'', ''8'', ''9'', ''A'', ''B'', ''C'', ''D'', ''E'', ''F'', ''G'', ''H'', ''J'', ''K'', ''L'', ''M'', ''N'', ''P'', ''Q'', ''R'', ''T'', ''U'', ''W'', ''X'', ''Y''];
def secondkeys = [1, 3, 9, 27, 19, 26, 16, 17, 20, 29, 25, 13, 8, 24, 10, 30, 28];
String code = str.toUpperCase();
        if (isEmpty(code) || code.length() != 18) {
            return false;
        }
        def reg = /^[1-9]|[ABCDEFGY]$/;
        def matcher = str.getAt(0) =~ reg;
        matcher.matches()
        if(matcher.getCount()==0){
            return false;
        }
        def reg1 = /^[1,2,3,9]$/;
        matcher = str.getAt(1) =~ reg1
          matcher.matches()
          if(matcher.getCount()==0){
            return false;
        }
        def reg2 = /^\d{6}$/;
        matcher = str[2..7] =~ reg2
        matcher.matches()
        if(matcher.getCount()==0){
            return false;
        }
        int count = 0;
        for (int i = 0; i < firstkeys.size(); i++) {
            def a = code[i+8];
            count += firstkeys[i].toInteger() * firstarray.indexOf(a).toInteger();
        }
        int remainder = count % 11;
        int  firstkey= (remainder == 0 ? 0 : 11 - remainder);
        def firstword;
        if (firstkey < 10) {
            firstword = firstkey;
        }
        if (firstkey == 10) {
            firstword = ''X'';
        } else if (firstkey == 11) {
            firstword = ''0'';
        }

        if (!(""+firstword).equals(code[16])) {
            return false;
        }
         count = 0;
        for (int i = 0; i < secondkeys.size(); i++) {
            def a = code[i];
            count += secondkeys[i].toInteger() * secondarray.indexOf(a).toInteger();
        }
         remainder = count % 31;
         int secondkey = (remainder == 0 ? 0 : 31 - remainder);

        def secondword = secondarray[secondkey];
        if (!secondword || !(""+secondword).equals(code[17])) {
            return false;
        }

}
        return true;', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1abe69a0b299409b8f6bb7f6fb1b9612', null, null, 'mbtrule', '1');

insert into gp_qc_rule (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, EXISTS_SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_310_FI0000401_5', '20200305', 'TESTCORP', '72', '002', null, null, '主要出资人段的组织机构代码应符合如下规则：应由8位数字（或大写拉丁字母）以及1位数字（或大写拉丁字母）组成；校验位应满足校验规则（参见国标《全国组织机构代码编制规则》（GB11714-1997））。', '主要出资人段的组织机构代码应符合如下规则：应由8位数字（或大写拉丁字母）以及1位数字（或大写拉丁字母）组成；校验位应满足校验规则（参见国标《全国组织机构代码编制规则》（GB11714-1997））。', null, 'BUSI', 'DATA_ID', null, null, 'Y', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 
' if(SHAR_HOD_CERT_TYPE =="2" &&  SHAR_HOD_ID_TYPE=="30"){

        def code=SHAR_HOD_ID_NUM;
        def ws = [3, 7, 9, 10, 5, 8, 4, 2];
        String str = ''0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ'';
        def reg = /^([0-9A-Z]){8}[0-9|X]$/;
      String tmp = code.toUpperCase();

        if (isEmpty(tmp) || tmp.length() != 9) {
              return false
            }
        int sum = 0;
		 if (isEmpty(code) || code.length() < 8) {
            return false
        } 
        for (int i = 0; i < 8; i++){
         sum += str.indexOf(code.getAt(i)).toInteger() * ws.getAt(i).toInteger();}
        def c9 = 11 - (sum%11);
        c9 = (c9.toInteger() ==11?0:c9)
        c9 = (c9.toInteger() == 10 ? ''X'' : c9 )
        def matcher = code[0..8] =~ reg;
        matcher.matches();
        if (matcher.getCount()!=0 && code.getAt(8).toString()==c9.toString()) {
            return true
        }else{
            return false
        }
    }
      return true
', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1abe69a0b299409b8f6bb7f6fb1b9612', null, null, 'mbtrule', '1');

insert into gp_qc_rule (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, EXISTS_SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_310_CI0000401_2', '20200305', 'TESTCORP', '72', '002', null, null, '其他标识段的统一社会信用代码应符合如下规则：
应由18位数字或大写英文字母（不使用I、O、Z、S、V）组成；
第1位和第2位应为有效的登记管理部分代码和机构分类代码；
第9-17位应符合组织机构代码规则；
校验位应符合校验规则（参见国标《法人和其他组织统一社会信用代码编码规则》（GB32100-2015））。', '其他标识段的统一社会信用代码应符合如下规则：
应由18位数字或大写英文字母（不使用I、O、Z、S、V）组成；
第1位和第2位应为有效的登记管理部分代码和机构分类代码；
第9-17位应符合组织机构代码规则；
校验位应符合校验规则（参见国标《法人和其他组织统一社会信用代码编码规则》（GB32100-2015））。', null, 'BUSI', 'DATA_ID', null, null, 'Y', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 
'if (OTH_ENT_CERT_TYPE=="20"){
String str = OTH_ENT_CERT_NUM;
def firstarray = [''0'', ''1'', ''2'', ''3'', ''4'', ''5'', ''6'', ''7'', ''8'', ''9'', ''A'', ''B'', ''C'', ''D'', ''E'', ''F'', ''G'', ''H'', ''I'', ''J'', ''K'', ''L'', ''M'', ''N'', ''O'', ''P'', ''Q'', ''R'', ''S'', ''T'', ''U'', ''V'', ''W'', ''X'', ''Y'', ''Z''];
def firstkeys = [3, 7, 9, 10, 5, 8, 4, 2];
def  secondarray = [''0'', ''1'', ''2'', ''3'', ''4'', ''5'', ''6'', ''7'', ''8'', ''9'', ''A'', ''B'', ''C'', ''D'', ''E'', ''F'', ''G'', ''H'', ''J'', ''K'', ''L'', ''M'', ''N'', ''P'', ''Q'', ''R'', ''T'', ''U'', ''W'', ''X'', ''Y''];
def secondkeys = [1, 3, 9, 27, 19, 26, 16, 17, 20, 29, 25, 13, 8, 24, 10, 30, 28];
String code = str.toUpperCase();
        if (isEmpty(code) || code.length() != 18) {
            return false;
        }
        def reg = /^[1-9]|[ABCDEFGY]$/;
        def matcher = str.getAt(0) =~ reg;
        matcher.matches()
        if(matcher.getCount()==0){
            return false;
        }
        def reg1 = /^[1,2,3,9]$/;
        matcher = str.getAt(1) =~ reg1
          matcher.matches()
          if(matcher.getCount()==0){
            return false;
        }
        def reg2 = /^\d{6}$/;
        matcher = str[2..7] =~ reg2
        matcher.matches()
        if(matcher.getCount()==0){
            return false;
        }
        int count = 0;
        for (int i = 0; i < firstkeys.size(); i++) {
            def a = code[i+8];
            count += firstkeys[i].toInteger() * firstarray.indexOf(a).toInteger();
        }
        int remainder = count % 11;
        int  firstkey= (remainder == 0 ? 0 : 11 - remainder);
        def firstword;
        if (firstkey < 10) {
            firstword = firstkey;
        }
        if (firstkey == 10) {
            firstword = ''X'';
        } else if (firstkey == 11) {
            firstword = ''0'';
        }

        if (!(""+firstword).equals(code[16])) {
            return false;
        }
         count = 0;
        for (int i = 0; i < secondkeys.size(); i++) {
            def a = code[i];
            count += secondkeys[i].toInteger() * secondarray.indexOf(a).toInteger();
        }
         remainder = count % 31;
         int secondkey = (remainder == 0 ? 0 : 31 - remainder);

        def secondword = secondarray[secondkey];
        if (!secondword || !(""+secondword).equals(code[17])) {
            return false;
        }

}
        return true;', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1abe69a0b299409b8f6bb7f6fb1b9612', null, null, 'mbtrule', '1');
insert into gp_qc_rule (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, EXISTS_SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_410R4100112R410011201R410010204', '20190709', 'TESTCORP', '72', '002', null, null, '当“报送时点说明代码”为“41-五级分类调整”时，若“账户类型”为“D1”如果“分次放款标识”为“0”，则不应包含授信额度信息段。', '当“报送时点说明代码”为“41-五级分类调整”时，若“账户类型”为“D1”如果“分次放款标识”为“0”，则不应包含授信额度信息段。', null, 'BUSI', 'DATA_ID', null, null, 'Y', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 
'if (!isEmpty(B_ACCT_TYPE) && B_ACCT_TYPE == "D1" && B_RPT_DATE_CODE == "41" && C_FLAG == "0") {
    if (!isEmpty(IS_RPT) && IS_RPT.length()>=3 && IS_RPT.substring(2,3) == "0") {
        return true
    }
    return false
}
return true', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '37f337ac74354ef7acb7529f45428924', null, null, 'mbtrule', '1');

insert into gp_qc_rule (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, EXISTS_SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_410__C_OPEN_DATE', '20190614', 'TESTCORP', '72', '002', null, null, '开户日期', '开户日期必须为数字英文字母;长度在8~8之间;', null, 'ELEMENT', 'C_OPEN_DATE', '开户日期', 'R', 'Y', 'ALPHA_NUMBER', null, 8, 8, null, null, null, null, null, null, null, null, null, null, null, 
'if (!isEmpty(IS_RPT) && IS_RPT.length()>=2 && IS_RPT.substring(1,2) == "1") {
    if (isEmpty($value)) {
        return false
    }
}
return true', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '2ed554e3c8a14de3a71dfe5a3b3382e9', null, null, 'mbtelement', '1');

insert into gp_qc_rule (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, EXISTS_SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_410__C_CY', '20190614', 'TESTCORP', '72', '002', null, null, '币种', '币种必须为数字英文字母;长度在3~3之间;', null, 'ELEMENT', 'C_CY', '币种', 'R', 'Y', 'ALPHA_NUMBER', null, 3, 3, null, null, null, null, null, null, null, 'GP_BM_DATA_DIC', '19243', null, null, 
'if (!isEmpty(IS_RPT) && IS_RPT.length()>=2 && IS_RPT.substring(1,2) == "1") {
    if (isEmpty($value)) {
        return false
    }
}
return true', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '6e98113740cf46f4b0736d6e3343cf41', null, null, 'mbtelement', '1');

insert into gp_qc_rule (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, EXISTS_SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_410__C_FLAG', '20190614', 'TESTCORP', '72', '002', null, null, '分次放贷标志', '分次放贷标志必须为数字英文字母;长度在1~1之间;', null, 'ELEMENT', 'C_FLAG', '分次放贷标志', 'R', 'Y', 'ALPHA_NUMBER', null, 1, 1, null, null, null, null, null, null, null, 'GP_BM_DATA_DIC', '19233', null, null, 
'if ((!isEmpty(IS_RPT) && IS_RPT.length()>=2 && IS_RPT.substring(1,2) == "1") && (B_ACCT_TYPE == "D1")) {
    if (isEmpty($value)) {
        return false
    }
}
return true', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '41b5bae9729e41259a9e926f102c2d42', null, null, 'mbtelement', '1');

insert into gp_qc_rule (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, EXISTS_SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_410__C_DUE_DATE', '20190614', 'TESTCORP', '72', '002', null, null, '到期日期', '到期日期必须为数字英文字母;长度在8~8之间;', null, 'ELEMENT', 'C_DUE_DATE', '到期日期', 'R', 'Y', 'ALPHA_NUMBER', null, 8, 8, null, null, null, null, null, null, null, null, null, null, null, 
'if ((!isEmpty(IS_RPT) && IS_RPT.length()>=2 && IS_RPT.substring(1,2) == "1") && (B_ACCT_TYPE == "D1" || B_ACCT_TYPE == "D2" || B_ACCT_TYPE == "R1" || B_ACCT_TYPE == "R4")) {
    if (isEmpty($value)) {
        return false
    }
}
return true', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '7d31c6db00dc47b6b2415381890c9b6c', null, null, 'mbtelement', '1');

insert into gp_qc_rule (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, EXISTS_SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_410__C_LOA_FRM', '20190614', 'TESTCORP', '72', '002', null, null, '贷款发放方式', '贷款发放方式必须为数字英文字母;长度在1~1之间;', null, 'ELEMENT', 'C_LOA_FRM', '贷款发放方式', 'R', 'Y', 'ALPHA_NUMBER', null, 1, 1, null, null, null, null, null, null, null, null, null, null, null, 
'if ((!isEmpty(IS_RPT) && IS_RPT.length()>=2 && IS_RPT.substring(1,2) == "1") && (B_ACCT_TYPE == "D1" || B_ACCT_TYPE == "D2" || B_ACCT_TYPE == "R1" || B_ACCT_TYPE == "R4")) {
    if (isEmpty($value)) {
        return false
    }
}
return true', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'fe6e15aa62514b2dbf5c40b43c1328c5', null, null, 'mbtelement', '1');

insert into gp_qc_rule (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, EXISTS_SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_410__F_MCC', '20190614', 'TESTCORP', '72', '002', null, null, '授信协议标识码', '授信协议标识码必须为数字英文字母;长度在1~60之间;', null, 'ELEMENT', 'F_MCC', '授信协议标识码', 'R', 'Y', 'ALPHA_NUMBER', null, 14, 60, null, null, null, null, null, null, null, null, null, null, null, 
'if (!isEmpty(IS_RPT) && IS_RPT.length()>=3 && IS_RPT.substring(2,3) == "1") {
    if (isEmpty($value)) {
        return false
    }
}
return true', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0f2350d187324085876270187bc15823', null, null, 'mbtelement', '1');

insert into gp_qc_rule (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, EXISTS_SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_410__G_INIT_CRED_NAME', '20190614', 'TESTCORP', '72', '002', null, null, '初始债权人名称', '初始债权人名称必须为数字英文字母中文;长度在1~80之间;', null, 'ELEMENT', 'G_INIT_CRED_NAME', '初始债权人名称', 'R', 'Y', null, null, 1, 80, null, null, null, null, null, null, null, null, null, null, null, 
'if (!isEmpty(IS_RPT) && IS_RPT.length()>=4 &&  IS_RPT.substring(3,4) == "1") {
    if (isEmpty($value)) {
        return false
    }
}
return true', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'b02280e368724aa58e5d67fe74880c33', null, null, 'mbtelement', '1');

insert into gp_qc_rule (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, EXISTS_SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_410__G_INIT_RPY_STS', '20190614', 'TESTCORP', '72', '002', null, null, '债券转移时的还款状态', '债券转移时的还款状态必须为数字英文字母;长度在1~1之间;', null, 'ELEMENT', 'G_INIT_RPY_STS', '债券转移时的还款状态', 'R', 'Y', 'ALPHA_NUMBER', null, 1, 1, null, null, null, null, null, null, null, 'GP_BM_DATA_DIC', '19236', null, null, 
'if (!isEmpty(IS_RPT) && IS_RPT.length()>=4 && IS_RPT.substring(3,4) == "1") {
    if (isEmpty($value)) {
        return false
    }
}
return true', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '2e30d4261f984234b52ad7cc47990eb4', null, null, 'mbtelement', '1');

insert into gp_qc_rule (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, EXISTS_SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_410R4100110R410010905R410010202', '20190709', 'TESTCORP', '72', '002', null, null, '若“账户类型”为“R4”，不应包含初始债权说明段。', '若“账户类型”为“R4”，不应包含初始债权说明段。', null, 'BUSI', 'DATA_ID', null, null, 'Y', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 
'if (!isEmpty(B_ACCT_TYPE) && B_ACCT_TYPE == "R4" && B_RPT_DATE_CODE == "33") {
    if (!isEmpty(IS_RPT) && IS_RPT.length()>=4 && IS_RPT.substring(3,4) == "0") {
        return true
    }
    return false
}
return true', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '94ef7d2fabfd482f919d2d8f796e6e34', null, null, 'mbtrule', '1');

insert into gp_qc_rule (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, EXISTS_SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_410R4100112R410011105R410010202', '20190709', 'TESTCORP', '72', '002', null, null, '当“报送时点说明代码”为“41-五级分类调整”时，若“账户类型”为“R4”，不应包含初始债权说明段。', '当“报送时点说明代码”为“41-五级分类调整”时，若“账户类型”为“R4”，不应包含初始债权说明段。', null, 'BUSI', 'DATA_ID', null, null, 'Y', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 
'if (!isEmpty(B_ACCT_TYPE) && B_ACCT_TYPE == "R4" && B_RPT_DATE_CODE == "41") {
    if (!isEmpty(IS_RPT) && IS_RPT.length()>=4 && IS_RPT.substring(3,4) == "0") {
        return true
    }
    return false
}
return true', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '284bb6a65d3c48e6aa4d36da8c32f156', null, null, 'mbtrule', '1');

insert into gp_qc_rule (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, EXISTS_SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_410R4100115R410011501R410010302', '20190709', 'TESTCORP', '72', '002', null, null, '当“报送时点说明代码”为“49-其他报送日”时，若“账户类型”为“D1”，应包含基础段、还款表现信息段。', '当“报送时点说明代码”为“49-其他报送日”时，若“账户类型”为“D1”，应包含基础段、还款表现信息段。', null, 'BUSI', 'DATA_ID', null, null, 'Y', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 
'if (!isEmpty(B_ACCT_TYPE) && B_ACCT_TYPE == "D1" && B_RPT_DATE_CODE == "49") {
    if (!isEmpty(IS_RPT) && IS_RPT.length()>=5 &&  IS_RPT.substring(0,1) == "1" && IS_RPT.substring(4,5) == "1") {
        return true
    }
    return false
}
return true', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'dfc947a3cf5a4d5f94389720995cc649', null, null, 'mbtrule', '1');

insert into gp_qc_rule (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, EXISTS_SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_410R4100115R410011509R410010302', '20190709', 'TESTCORP', '72', '002', null, null, '当“报送时点说明代码”为“49-其他报送日”时，若“账户类型”为“C1”，应包含基础段、还款表现信息段。', '当“报送时点说明代码”为“49-其他报送日”时，若“账户类型”为“C1”，应包含基础段、还款表现信息段。', null, 'BUSI', 'DATA_ID', null, null, 'Y', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 
'if (!isEmpty(B_ACCT_TYPE) && B_ACCT_TYPE == "C1" && B_RPT_DATE_CODE == "49") {
    if (!isEmpty(IS_RPT) && IS_RPT.length()>=5 && IS_RPT.substring(0,1) == "1" && IS_RPT.substring(4,5) == "1") {
        return true
    }
    return false
}
return true', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'af0fe280d9bd4179a7afff96c3495135', null, null, 'mbtrule', '1');

insert into gp_qc_rule (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, EXISTS_SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_410R4100116R410011603R410010202', '20190709', 'TESTCORP', '72', '002', null, null, '当“报送时点说明代码”为“49-其他报送日”时，若“账户类型”为“R1/R4”，不应包含初始债权说明段。', '当“报送时点说明代码”为“49-其他报送日”时，若“账户类型”为“R1/R4”，不应包含初始债权说明段。', null, 'BUSI', 'DATA_ID', null, null, 'Y', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null,
 'if ((B_ACCT_TYPE == "R1" ||B_ACCT_TYPE == "R4") && B_RPT_DATE_CODE == "49") {
    if (!isEmpty(IS_RPT) && IS_RPT.length()>=4 && IS_RPT.substring(3,4) == "0") {
        return true
    }
    return false
}
return true', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '8eea5f8a7b274ec9b52288a71c26d868', null, null, 'mbtrule', '1');

insert into gp_qc_rule (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, EXISTS_SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_410R4100119R410011901', '20190709', 'TESTCORP', '72', '002', null, null, '企业借贷账户信息记录必须包含基础段。', '企业借贷账户信息记录必须包含基础段。', null, 'BUSI', 'DATA_ID', null, null, 'Y', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 
'if(!isEmpty(B_ACCT_TYPE)){
	if(!isEmpty(IS_RPT) && IS_RPT.length()>=1 && IS_RPT.substring(0,1) == "1"){
		return true
    }
    return false
}
return true', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '9e5776fdc9cc46d5b9569a0b6ae37958', null, null, 'mbtrule', '1');

insert into gp_qc_rule (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, EXISTS_SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_410__B_ACCT_TYPE', '20190614', 'TESTCORP', '72', '002', null, null, '账户类型', '账户类型必须为数字英文字母;长度在2~2之间;', null, 'ELEMENT', 'B_ACCT_TYPE', '账户类型', 'R', 'Y', 'ALPHA_NUMBER', null, 2, 2, null, null, null, null, null, null, null, 'GP_BM_DATA_DIC', '19097', null, null, 
'if (!isEmpty(IS_RPT) && IS_RPT.length()>=1 &&  IS_RPT.substring(0,1) == "1") {
    if (isEmpty($value)) {
        return false
    }
}
return true', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '80ec474004ea40db8f40b15ea603d7c7', null, null, 'mbtelement', '1');

insert into gp_qc_rule (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, EXISTS_SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_410__B_RPT_DATE_CODE', '20190614', 'TESTCORP', '72', '002', null, null, '报告时点说明代码', '报告时点说明代码必须为数字英文字母;长度在2~2之间;', null, 'ELEMENT', 'B_RPT_DATE_CODE', '报告时点说明代码', 'R', 'Y', 'ALPHA_NUMBER', null, 2, 2, null, null, null, null, null, null, null, 'GP_BM_DATA_DIC', '19098', null, null, 
'if (!isEmpty(IS_RPT) && IS_RPT.length()>=1 &&  IS_RPT.substring(0,1) == "1") {
    if (isEmpty($value)) {
        return false
    }
}
return true', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'dad0617b892e4c2880f2de3f489753f3', null, null, 'mbtelement', '1');

insert into gp_qc_rule (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, EXISTS_SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_410__B_MNGMT_ORG_CODE', '20190614', 'TESTCORP', '72', '002', null, null, '业务管理机构代码', '业务管理机构代码必须为数字英文字母;长度在14~14之间;', null, 'ELEMENT', 'B_MNGMT_ORG_CODE', '业务管理机构代码', 'R', 'Y', 'ALPHA_NUMBER', null, 14, 14, null, null, null, null, null, null, null, null, null, null, null, 
'if (!isEmpty(IS_RPT) && IS_RPT.length()>=1 &&  IS_RPT.substring(0,1) == "1") {
    if (isEmpty($value)) {
        return false
    }
}
return true', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '5c752f35bbc440458fab00a9b2c05f1b', null, null, 'mbtelement', '1');

insert into gp_qc_rule (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, EXISTS_SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_410__C_GUAR_MODE', '20190614', 'TESTCORP', '72', '002', null, null, '担保方式', '担保方式必须为数字英文字母;长度在1~1之间;', null, 'ELEMENT', 'C_GUAR_MODE', '担保方式', 'R', 'Y', 'ALPHA_NUMBER', null, 1, 1, null, null, null, null, null, null, null, 'GP_BM_DATA_DIC', '19113', null, null, 
'if ((!isEmpty(IS_RPT) && IS_RPT.length()>=2 && IS_RPT.substring(1,2) == "1") && (B_ACCT_TYPE == "D1" || B_ACCT_TYPE == "D2" || B_ACCT_TYPE == "R1" || B_ACCT_TYPE == "R4")) {
    if (isEmpty($value)) {
        return false
    }
}
return true', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '40fa45c30aad412287f1ffa285505a8e', null, null, 'mbtelement', '1');

insert into gp_qc_rule (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, EXISTS_SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_410__C_ACT_INVEST', '20190614', 'TESTCORP', '72', '002', null, null, '贷款实际投向', '贷款实际投向必须为数字英文字母;长度在1~5之间;', null, 'ELEMENT', 'C_ACT_INVEST', '贷款实际投向', 'R', 'Y', 'ALPHA_NUMBER', null, 1, 5, null, null, null, null, null, null, null, 'GP_BM_DATA_DIC', '19225', null, null, 
'if ((!isEmpty(IS_RPT) && IS_RPT.length()>=2 &&  IS_RPT.substring(1,2) == "1") && (B_ACCT_TYPE == "D1" || B_ACCT_TYPE == "R1" || B_ACCT_TYPE == "R4") && (C_BUSI_LINES == "11" || C_BUSI_LINES=="16")) {
    if (isEmpty($value)) {
        return false
    }
}
return true', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'e8fe68d28f5f46b29f4d9e2614b1c14c', null, null, 'mbtelement', '1');

insert into gp_qc_rule (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, EXISTS_SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_410__H_ACCT_STATUS', '20190614', 'TESTCORP', '72', '002', null, null, '账户状态', '账户状态必须为数字英文字母;长度在2~2之间;', null, 'ELEMENT', 'H_ACCT_STATUS', '账户状态', 'R', 'Y', 'ALPHA_NUMBER', null, 2, 2, null, null, null, null, null, null, null, 'GP_BM_DATA_DIC', '19888', null, null,
 'if (!isEmpty(IS_RPT) && IS_RPT.length()>=5 && IS_RPT.substring(4,5) == "1") {
    if (isEmpty($value)) {
        return false
    }
}
return true', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'efa5a1b3187245de80aa4c66b7fa1770', null, null, 'mbtelement', '1');

insert into gp_qc_rule (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, EXISTS_SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_410__B_ACCT_CODE', '20190614', 'TESTCORP', '72', '002', null, null, '账户标识码', '账户标识码必须为数字英文字母;长度在1~60之间;', null, 'ELEMENT', 'B_ACCT_CODE', '账户标识码', 'R', 'Y', 'ALPHA_NUMBER', null, 1, 60, null, null, null, null, null, null, null, null, null, null, null, 
'if (!isEmpty(IS_RPT) && IS_RPT.length()>=1 &&  IS_RPT.substring(0,1) == "1") {
    if (isEmpty($value)) {
        return false
    }
}
return true', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'ea3146ae7eb24810af2d1106e39d14c4', null, null, 'mbtelement', '1');

insert into gp_qc_rule (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, EXISTS_SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_410__B_NAME', '20190614', 'TESTCORP', '72', '002', null, null, '借款人名称', '借款人名称必须为数字英文字母中文;长度在1~80之间;', null, 'ELEMENT', 'B_NAME', '借款人名称', 'R', 'Y', null, null, 1, 80, null, null, null, null, null, null, null, null, null, null, null, 
'if (!isEmpty(IS_RPT) && IS_RPT.length()>=1 && IS_RPT.substring(0,1) == "1") {
    if (isEmpty($value)) {
        return false
    }
}
return true', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '757930b8828a41dfaba0697fac64ba85', null, null, 'mbtelement', '1');

insert into gp_qc_rule (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, EXISTS_SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_410R4100115R410011505R410010302', '20190709', 'TESTCORP', '72', '002', null, null, '当“报送时点说明代码”为“49-其他报送日”时，若“账户类型”为“R1”，应包含基础段、还款表现信息段。', '当“报送时点说明代码”为“49-其他报送日”时，若“账户类型”为“R1”，应包含基础段、还款表现信息段。', null, 'BUSI', 'DATA_ID', null, null, 'Y', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 
'if (!isEmpty(B_ACCT_TYPE) && B_ACCT_TYPE == "R1" && B_RPT_DATE_CODE == "49") {
    if (!isEmpty(IS_RPT) && IS_RPT.length()>=5 && IS_RPT.substring(0,1) == "1" && IS_RPT.substring(4,5) == "1") {
        return true
    }
    return false
}
return true', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'caa9b2bfb54544c284e58041489bc8a4', null, null, 'mbtrule', '1');

insert into gp_qc_rule (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, EXISTS_SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_410R4100116R410011601R410010204', '20190709', 'TESTCORP', '72', '002', null, null, '当“报送时点说明代码”为“49-其他报送日”时，若“账户类型”为“D1”且“分次放款标识”为“0”，则不应包含授信额度信息段。', '当“报送时点说明代码”为“49-其他报送日”时，若“账户类型”为“D1”且“分次放款标识”为“0”，则不应包含授信额度信息段。', null, 'BUSI', 'DATA_ID', null, null, 'Y', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 
'if (!isEmpty(B_ACCT_TYPE) && B_ACCT_TYPE == "D1" && B_RPT_DATE_CODE == "49" && C_FLAG == "0") {
    if (!isEmpty(IS_RPT) && IS_RPT.length()>=3 && IS_RPT.substring(2,3) == "0") {
        return true
    }
    return false
}
return true', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'ecc921576fd94c5b955a3322e8daacb2', null, null, 'mbtrule', '1');

insert into gp_qc_rule (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, EXISTS_SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_410R4100101R410010107R410010108', '20190709', 'TESTCORP', '72', '002', null, null, '当“报送时点说明代码”为“10-新开户/首次报送”时，若“账户类型”为“R1/R4”，必须包含基础段、基本信息段、授信额度信息段、还款表现信息段。', '当“报送时点说明代码”为“10-新开户/首次报送”时，若“账户类型”为“R1/R4”，必须包含基础段、基本信息段、授信额度信息段、还款表现信息段。', null, 'BUSI', 'DATA_ID', null, null, 'Y', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 
'if (B_RPT_DATE_CODE == "10" && (B_ACCT_TYPE == "R1" || B_ACCT_TYPE == "R4")) {
    if (!isEmpty(IS_RPT) && IS_RPT.length()>=5 && IS_RPT.substring(0,3) == "111" && IS_RPT.substring(4,5) == "1") {
        return true
    }
    return false
}
return true', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '68deae5094b149dab9c058d9d8d85f11', null, null, 'mbtrule', '1');

insert into gp_qc_rule (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, EXISTS_SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_410R4100102R410010105R410010206', '20190709', 'TESTCORP', '72', '002', null, null, '当“报送时点说明代码”为“10-新开户/首次报送”时，若“账户类型”为“D2”，不应包含抵质押物信息段、授信额度信息段。', '当“报送时点说明代码”为“10-新开户/首次报送”时，若“账户类型”为“D2”，不应包含抵质押物信息段、授信额度信息段。', null, 'BUSI', 'DATA_ID', null, null, 'Y', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 
'if (B_RPT_DATE_CODE == "10" && B_ACCT_TYPE == "D2") {
    if (!isEmpty(IS_RPT) && IS_RPT.length()>=9 && IS_RPT.substring(2,3) == "0" && IS_RPT.substring(8,9) == "0") {
        return true
    }
    return false
}
return true', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '8923d6162df3445fbb00cfc11fd6a890', null, null, 'mbtrule', '1');

insert into gp_qc_rule (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, EXISTS_SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_410R4100103R410010303R410010302', '20190709', 'TESTCORP', '72', '002', null, null, '当“报送时点说明代码”为“20-账户关闭”时，若“账户类型”为“D2”，必须包含基础段、还款表现信息段。', '当“报送时点说明代码”为“20-账户关闭”时，若“账户类型”为“D2”，必须包含基础段、还款表现信息段。', null, 'BUSI', 'DATA_ID', null, null, 'Y', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 
'if (B_RPT_DATE_CODE == "20" && B_ACCT_TYPE == "D2") {
    if (!isEmpty(IS_RPT) && IS_RPT.length()>=5 && IS_RPT.substring(0,1) == "1" && IS_RPT.substring(4,5) == "1") {
        return true
    }
    return false
}
return true', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'e408ad0f5c0c4abea82feed3acd68f14', null, null, 'mbtrule', '1');

insert into gp_qc_rule (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, EXISTS_SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_410R4100104R410010401R410010204', '20190709', 'TESTCORP', '72', '002', null, null, '当“报送时点说明代码”为“20-账户关闭”时，若“账户类型”为“D1”，且“分次放款标识”为“0”，则不应包含授信额度信息段。', '当“报送时点说明代码”为“20-账户关闭”时，若“账户类型”为“D1”，且“分次放款标识”为“0”，则不应包含授信额度信息段。', null, 'BUSI', 'DATA_ID', null, null, 'Y', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 
'if (B_RPT_DATE_CODE == "20" && B_ACCT_TYPE == "D1" && C_FLAG == "0") {
    if (!isEmpty(IS_RPT) && IS_RPT.length()>=3 &&  IS_RPT.substring(2,3) == "0") {
        return true
    }
    return false
}
return true', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '577ee3cf60394a4590165d56ba2fe0bc', null, null, 'mbtrule', '1');

insert into gp_qc_rule (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, EXISTS_SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_410R4100105R410010501R410010502', '20190709', 'TESTCORP', '72', '002', null, null, '当“报送时点说明代码”为“31-开户后放款”时，若“账户类型”为“D1”，“分次放款标识”为“2”，必须包含基本信息段。', '当“报送时点说明代码”为“31-开户后放款”时，若“账户类型”为“D1”，“分次放款标识”为“2”，必须包含基本信息段。', null, 'BUSI', 'DATA_ID', null, null, 'Y', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 
'if (!isEmpty(B_ACCT_TYPE) && B_ACCT_TYPE == "D1" && B_RPT_DATE_CODE == "31" && C_FLAG == "2") {
    if (!isEmpty(IS_RPT) && IS_RPT.length()>=1 && IS_RPT.substring(0,1) == "1") {
        return true
    }
    return false
}
return true', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '7d5f5e8c96d3470e919b811a7df12b2c', null, null, 'mbtrule', '1');

insert into gp_qc_rule (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, EXISTS_SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_410R4100117R410011701R410011702', '20190709', 'TESTCORP', '72', '002', null, null, '当“报告时点说明代码”为“10-新开户/首次上报”，若“基本信息段”的“担保方式”为“1-保证”时， 必须报送相关还款责任人段。', '当“报告时点说明代码”为“10-新开户/首次上报”，若“基本信息段”的“担保方式”为“1-保证”时， 必须报送相关还款责任人段。', null, 'BUSI', 'DATA_ID', null, null, 'Y', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 
'if (B_RPT_DATE_CODE == "10" && C_GUAR_MODE == "1"&&!isEmpty(B_ACCT_TYPE)) {
    if (!isEmpty(IS_RPT) && IS_RPT.length()>=7 &&  IS_RPT.substring(6,7) == "1") {
        return true
    }
    return false
}
return true', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'ef6b5340f7574a16afe9e68532879eb8', null, null, 'mbtrule', '1');

insert into gp_qc_rule (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, EXISTS_SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_410R4100111R410011107R410010302', '20190709', 'TESTCORP', '72', '002', null, null, '当“报送时点说明代码”为“41-五级分类调整”时，若“账户类型”为“C1”，应包含基础段、还款表现信息段。', '当“报送时点说明代码”为“41-五级分类调整”时，若“账户类型”为“C1”，应包含基础段、还款表现信息段。', null, 'BUSI', 'DATA_ID', null, null, 'Y', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 
'if (!isEmpty(B_ACCT_TYPE) && B_ACCT_TYPE == "C1" && B_RPT_DATE_CODE == "41") {
    if (!isEmpty(IS_RPT) && IS_RPT.length()>=5 && IS_RPT.substring(0,1) == "1" && IS_RPT.substring(4,5) == "1") {
        return true
    }
    return false
}
return true', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '82b974e9c5b74ea69cb754c8b041635b', null, null, 'mbtrule', '1');

insert into gp_qc_rule (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, EXISTS_SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_410R4100112R410011107R410010402', '20190709', 'TESTCORP', '72', '002', null, null, '当“报送时点说明代码”为“41-五级分类调整”时，若“账户类型”为“C1”，不应包含相关还款责任人段、抵质押物信息段、授信额度信息段、初始债权说明段。', '当“报送时点说明代码”为“41-五级分类调整”时，若“账户类型”为“C1”，不应包含相关还款责任人段、抵质押物信息段、授信额度信息段、初始债权说明段。', null, 'BUSI', 'DATA_ID', null, null, 'Y', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 
'if (!isEmpty(B_ACCT_TYPE) && B_ACCT_TYPE == "C1" && B_RPT_DATE_CODE == "41") {
    if (!isEmpty(IS_RPT) && IS_RPT.length()>=8 && IS_RPT.substring(2,4) == "00" && IS_RPT.substring(6,8) == "00") {
        return true
    }
    return false
}
return true', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'b766e61d854649d493a1c498c4943b7c', null, null, 'mbtrule', '1');

insert into gp_qc_rule (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, EXISTS_SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_410R4100114R410011301R410010202', '20190709', 'TESTCORP', '72', '002', null, null, '当“报送时点说明代码”为“42-展期发生”时，若“账户类型”为“D1”，不应包含初始债权说明段。', '当“报送时点说明代码”为“42-展期发生”时，若“账户类型”为“D1”，不应包含初始债权说明段。', null, 'BUSI', 'DATA_ID', null, null, 'Y', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 
'if (!isEmpty(B_ACCT_TYPE) && B_ACCT_TYPE == "D1" && B_RPT_DATE_CODE == "42") {
    if (!isEmpty(IS_RPT) && IS_RPT.length()>=4 &&  IS_RPT.substring(3,4) == "0") {
        return true
    }
    return false
}
return true', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'a361160387514ddc914dc609a0121383', null, null, 'mbtrule', '1');

insert into gp_qc_rule (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, EXISTS_SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_410__H_FIVE_CATE', '20190614', 'TESTCORP', '72', '002', null, null, '五级分类', '五级分类必须为数字英文字母;长度在1~1之间;', null, 'ELEMENT', 'H_FIVE_CATE', '五级分类', 'R', 'Y', 'ALPHA_NUMBER', null, 1, 1, null, null, null, null, null, null, null, 'GP_BM_DATA_DIC', '19234', null, null, 
'if (!isEmpty(IS_RPT) && IS_RPT.length()>=5 &&  IS_RPT.substring(4,5) == "1") {
    if (isEmpty($value)) {
        return false
    }
}
return true', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '31e79eaee68340f7982ff55e8d9ddcab', null, null, 'mbtelement', '1');

insert into gp_qc_rule (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, EXISTS_SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_410__H_TOT_OVERD', '20190614', 'TESTCORP', '72', '002', null, null, '当前逾期总额', '当前逾期总额取值范围在0~999999999999999之间;', null, 'ELEMENT', 'H_TOT_OVERD', '当前逾期总额', 'R', 'Y', 'NUMBER', null, null, null, 0.0000000000, 999999999999999.0000000000, null, null, null, null, null, null, null, null, null, 
'if ((!isEmpty(IS_RPT) && IS_RPT.length()>=5 &&  IS_RPT.substring(4,5) == "1") && (B_ACCT_TYPE == "D1" || B_ACCT_TYPE == "D2" || B_ACCT_TYPE == "R1" || B_ACCT_TYPE == "R4")) {
    if (isEmpty($value)) {
        return false
    }
}
return true', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '2d64163eb67f4da8b06b58b88cc0ad83', null, null, 'mbtelement', '1');

insert into gp_qc_rule (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, EXISTS_SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_410__H_LAT_RPY_AMT', '20190614', 'TESTCORP', '72', '002', null, null, '最近一次实际还款金额', '最近一次实际还款金额取值范围在0~999999999999999之间;', null, 'ELEMENT', 'H_LAT_RPY_AMT', '最近一次实际还款金额', 'R', 'Y', 'NUMBER', null, null, null, 0.0000000000, 999999999999999.0000000000, null, null, null, null, null, null, null, null, null,
 'if (!isEmpty(IS_RPT) && IS_RPT.length()>=5 && IS_RPT.substring(4,5) == "1") {
    if (isEmpty($value)) {
        return false
    }
}
return true', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'f25daf684f954720b28d9c99d0fbf304', null, null, 'mbtelement', '1');

insert into gp_qc_rule (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, EXISTS_SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_410__H_LAT_RPY_PRINC_AMT', '20190614', 'TESTCORP', '72', '002', null, null, '最近一次实际归还本金', '最近一次实际归还本金取值范围在0~999999999999999之间;', null, 'ELEMENT', 'H_LAT_RPY_PRINC_AMT', '最近一次实际归还本金', 'R', 'Y', 'NUMBER', null, null, null, 0.0000000000, 999999999999999.0000000000, null, null, null, null, null, null, null, null, null, 
'if (!isEmpty(IS_RPT) && IS_RPT.length()>=5 &&  IS_RPT.substring(4,5) == "1") {
    if (isEmpty($value)) {
        return false
    }
}
return true', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '6431cba53d9b44d5a181f6605e1bae0b', null, null, 'mbtelement', '1');

insert into gp_qc_rule (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, EXISTS_SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_410__H_LAT_AGRR_RPY_AMT', '20190614', 'TESTCORP', '72', '002', null, null, '最近一次约定还款金额', '最近一次约定还款金额取值范围在0~999999999999999之间;', null, 'ELEMENT', 'H_LAT_AGRR_RPY_AMT', '最近一次约定还款金额', 'R', 'Y', 'NUMBER', null, null, null, 0.0000000000, 999999999999999.0000000000, null, null, null, null, null, null, null, null, null, 
'if ((!isEmpty(IS_RPT) && IS_RPT.length()>=5 &&  IS_RPT.substring(4,5) == "1") && (B_ACCT_TYPE == "D1" || B_ACCT_TYPE == "D2" || B_ACCT_TYPE == "R1" || B_ACCT_TYPE == "R4")) {
    if (isEmpty($value)) {
        return false
    }
}
return true', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '2f72f2a7a59c4a8985ef11357038f646', null, null, 'mbtelement', '1');

insert into gp_qc_rule (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, EXISTS_SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_410__H_OVERD_PRINC', '20190614', 'TESTCORP', '72', '002', null, null, '当前逾期本金', '当前逾期本金取值范围在0~999999999999999之间;', null, 'ELEMENT', 'H_OVERD_PRINC', '当前逾期本金', 'R', 'Y', 'NUMBER', null, null, null, 0.0000000000, 999999999999999.0000000000, null, null, null, null, null, null, null, null, null, 
'if ((!isEmpty(IS_RPT) && IS_RPT.length()>=5 && IS_RPT.substring(4,5) == "1") && (B_ACCT_TYPE == "D1" || B_ACCT_TYPE == "D2" || B_ACCT_TYPE == "R1" || B_ACCT_TYPE == "R4")) {
    if (isEmpty($value)) {
        return false
    }
}
return true', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'c8d1f3606689406bbe5ed6a9c6a35abc', null, null, 'mbtelement', '1');

insert into gp_qc_rule (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, EXISTS_SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_410__H_BAL_CHG_DATE', '20190614', 'TESTCORP', '72', '002', null, null, '余额变化日期', '余额变化日期必须为数字英文字母;长度在8~8之间;', null, 'ELEMENT', 'H_BAL_CHG_DATE', '余额变化日期', 'R', 'Y', 'ALPHA_NUMBER', null, 8, 8, null, null, null, null, null, null, null, null, null, null, null, 
'if (!isEmpty(IS_RPT) && IS_RPT.length()>=5 && IS_RPT.substring(4,5) == "1") {
    if (isEmpty($value)) {
        return false
    }
}
return true', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1809607b394c441eae04f584f6a75922', null, null, 'mbtelement', '1');

insert into gp_qc_rule (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, EXISTS_SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_410I0000401_2', '20200217', 'TESTCORP', '72', '002', null, null, '统一社会信用代码应符合如下规则：
应由18位数字或大写英文字母（不使用I、O、Z、S、V）组成；
第1位和第2位应为有效的登记管理部分代码和机构分类代码；
第9-17位应符合组织机构代码规则；
校验位应符合校验规则（参见国标《法人和其他组织统一社会信用代码编码规则》（GB32100-2015））。', '统一社会信用代码应符合如下规则：
应由18位数字或大写英文字母（不使用I、O、Z、S、V）组成；
第1位和第2位应为有效的登记管理部分代码和机构分类代码；
第9-17位应符合组织机构代码规则；
校验位应符合校验规则（参见国标《法人和其他组织统一社会信用代码编码规则》（GB32100-2015））。', null, 'BUSI', 'DATA_ID', null, null, 'Y', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 
'if (MBT_410_B_ID_TYPE=="20"){
String str = MBT_410_B_ID_NUM;
def firstarray = [''0'', ''1'', ''2'', ''3'', ''4'', ''5'', ''6'', ''7'', ''8'', ''9'', ''A'', ''B'', ''C'', ''D'', ''E'', ''F'', ''G'', ''H'', ''I'', ''J'', ''K'', ''L'', ''M'', ''N'', ''O'', ''P'', ''Q'', ''R'', ''S'', ''T'', ''U'', ''V'', ''W'', ''X'', ''Y'', ''Z''];
def firstkeys = [3, 7, 9, 10, 5, 8, 4, 2];
def  secondarray = [''0'', ''1'', ''2'', ''3'', ''4'', ''5'', ''6'', ''7'', ''8'', ''9'', ''A'', ''B'', ''C'', ''D'', ''E'', ''F'', ''G'', ''H'', ''J'', ''K'', ''L'', ''M'', ''N'', ''P'', ''Q'', ''R'', ''T'', ''U'', ''W'', ''X'', ''Y''];
def secondkeys = [1, 3, 9, 27, 19, 26, 16, 17, 20, 29, 25, 13, 8, 24, 10, 30, 28];
String code = str.toUpperCase();
        if (isEmpty(code) || code.length() != 18) {
            return false;
        }
        def reg = /^[1-9]|[ABCDEFGY]$/;
        def matcher = str.getAt(0) =~ reg;
        matcher.matches()
        if(matcher.getCount()==0){
            return false;
        }
        def reg1 = /^[1,2,3,9]$/;
        matcher = str.getAt(1) =~ reg1
          matcher.matches()
          if(matcher.getCount()==0){
            return false;
        }
        def reg2 = /^\d{6}$/;
        matcher = str[2..7] =~ reg2
        matcher.matches()
        if(matcher.getCount()==0){
            return false;
        }
        int count = 0;
        for (int i = 0; i < firstkeys.size(); i++) {
            def a = code[i+8];
            count += firstkeys[i].toInteger() * firstarray.indexOf(a).toInteger();
        }
        int remainder = count % 11;
        int  firstkey= (remainder == 0 ? 0 : 11 - remainder);
        def firstword;
        if (firstkey < 10) {
            firstword = firstkey;
        }
        if (firstkey == 10) {
            firstword = ''X'';
        } else if (firstkey == 11) {
            firstword = ''0'';
        }

        if (!(""+firstword).equals(code[16])) {
            return false;
        }
         count = 0;
        for (int i = 0; i < secondkeys.size(); i++) {
            def a = code[i];
            count += secondkeys[i].toInteger() * secondarray.indexOf(a).toInteger();
        }
         remainder = count % 31;
         int secondkey = (remainder == 0 ? 0 : 31 - remainder);

        def secondword = secondarray[secondkey];
        if (!secondword || !(""+secondword).equals(code[17])) {
            return false;
        }

}
        return true;', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1abe69a0b299409b8f6bb7f6fb1b9612', null, null, 'mbtrule', '1');

insert into gp_qc_rule (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, EXISTS_SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_410__B_ID_TYPE', '20190614', 'TESTCORP', '72', '002', null, null, '借款人身份标识类型', '借款人身份标识类型必须为数字英文字母;长度在2~2之间;', null, 'ELEMENT', 'B_ID_TYPE', '借款人身份标识类型', 'R', 'Y', 'ALPHA_NUMBER', null, 2, 2, null, null, null, null, null, null, null, 'GP_BM_DATA_DIC', '19230', null, null, 
'if (!isEmpty(IS_RPT) && IS_RPT.length()>=1 &&  IS_RPT.substring(0,1) == "1") {
    if (isEmpty($value)) {
        return false
    }
}
return true', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'b5b90ffdea4443e296b5a21cdb2c62db', null, null, 'mbtelement', '1');

insert into gp_qc_rule (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, EXISTS_SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_410I0000401_1', '20200217', 'TESTCORP', '72', '002', null, null, ' 组织机构代码应符合如下规则：应由8位数字（或大写拉丁字母）以及1位数字（或大写拉丁字母）组成；校验位应满足校验规则（参见国标《全国组织机构代码编制规则》（GB11714-1997））。
', ' 组织机构代码应符合如下规则：应由8位数字（或大写拉丁字母）以及1位数字（或大写拉丁字母）组成；校验位应满足校验规则（参见国标《全国组织机构代码编制规则》（GB11714-1997））。
', null, 'BUSI', 'DATA_ID', null, null, 'Y', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null,
 '  if(MBT_410_B_ID_TYPE=="30"){

        def code=MBT_410_B_ID_NUM;
        String tmp = code.toUpperCase();

        if (isEmpty(tmp) || tmp.length() != 9) {
              return false
            }
        def ws = [3, 7, 9, 10, 5, 8, 4, 2];
        String str = ''0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ'';
        def reg = /^([0-9A-Z]){8}[0-9|X]$/;
        int sum = 0;
		if (isEmpty(code) || code.length() < 8) {
            return false
        }
        for (int i = 0; i < 8; i++){
         sum += str.indexOf(code.getAt(i)).toInteger() * ws.getAt(i).toInteger();}
        def c9 = 11 - (sum%11);
        c9 = (c9.toInteger() ==11?0:c9)
        c9 = (c9.toInteger() == 10 ? ''X'' : c9 )
        def matcher = code[0..8] =~ reg;
        matcher.matches();
        if (matcher.getCount()!=0 && code.getAt(8).toString()==c9.toString()) {
            return true
        }else{
            return false
        }
    }
      return true

', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1abe69a0b299409b8f6bb7f6fb1b9612', null, null, 'mbtrule', '1');

insert into gp_qc_rule (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, EXISTS_SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_410R4100111R410011103R410010302', '20190709', 'TESTCORP', '72', '002', null, null, '当“报送时点说明代码”为“41-五级分类调整”时，对于“账户类型”为“D2”，应包含基础段、还款表现信息段。', '当“报送时点说明代码”为“41-五级分类调整”时，对于“账户类型”为“D2”，应包含基础段、还款表现信息段。', null, 'BUSI', 'DATA_ID', null, null, 'Y', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 
'if (!isEmpty(B_ACCT_TYPE) && B_ACCT_TYPE == "D2" && B_RPT_DATE_CODE == "41") {
    if (!isEmpty(IS_RPT) && IS_RPT.length()>=5 && IS_RPT.substring(0,1) == "1" && IS_RPT.substring(4,5) == "1") {
        return true
    }
    return false
}
return true', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '5b3aa704678c4b06a17de6402fb55b3c', null, null, 'mbtrule', '1');

insert into gp_qc_rule (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, EXISTS_SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_410R4100112R410011101R410010202', '20190709', 'TESTCORP', '72', '002', null, null, '当“报送时点说明代码”为“41-五级分类调整”时，若“账户类型”为“D1”，不应包含初始债权说明段。', '当“报送时点说明代码”为“41-五级分类调整”时，若“账户类型”为“D1”，不应包含初始债权说明段。', null, 'BUSI', 'DATA_ID', null, null, 'Y', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null,
 'if (!isEmpty(B_ACCT_TYPE) && B_ACCT_TYPE == "D1" && B_RPT_DATE_CODE == "41") {
    if (!isEmpty(IS_RPT) && IS_RPT.length()>=4 && IS_RPT.substring(3,4) == "0") {
        return true
    }
    return false
}
return true', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '51e10a35dfd5414a8aa665dcc1a3561c', null, null, 'mbtrule', '1');

insert into gp_qc_rule (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, EXISTS_SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_410R4100113R410011305R410011302', '20190709', 'TESTCORP', '72', '002', null, null, '当“报送时点说明代码”为“42-展期发生”时，若“账户类型”为“R4”，应包含基础段、还款表现信息段、特定交易说明段。', '当“报送时点说明代码”为“42-展期发生”时，若“账户类型”为“R4”，应包含基础段、还款表现信息段、特定交易说明段。', null, 'BUSI', 'DATA_ID', null, null, 'Y', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 
'if (!isEmpty(B_ACCT_TYPE) && B_ACCT_TYPE == "R4" && B_RPT_DATE_CODE == "42") {
    if (!isEmpty(IS_RPT) && IS_RPT.length()>=9 && IS_RPT.substring(0,1) == "1" && IS_RPT.substring(4,5) == "1" && IS_RPT.substring(8,9) == "1") {
        return true
    }
    return false
}
return true', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '66ce1a249a1e44049df88fd9084874b4', null, null, 'mbtrule', '1');

insert into gp_qc_rule (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, EXISTS_SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_410R4100114R410011401R410010204', '20190709', 'TESTCORP', '72', '002', null, null, '当“报送时点说明代码”为“42-展期发生”时，若“账户类型”为“D1”且“分次放款标识”为“0”，则不应包含授信额度信息段。', '当“报送时点说明代码”为“42-展期发生”时，若“账户类型”为“D1”且“分次放款标识”为“0”，则不应包含授信额度信息段。', null, 'BUSI', 'DATA_ID', null, null, 'Y', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 
'if (!isEmpty(B_ACCT_TYPE) && B_ACCT_TYPE == "D1" && B_RPT_DATE_CODE == "42" && C_FLAG == "0") {
    if (!isEmpty(IS_RPT) && IS_RPT.length()>=3 && IS_RPT.substring(2,3) == "0") {
        return true
    }
    return false
}
return true', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '58d29e98f0004cdbbe89f5707e2b2f69', null, null, 'mbtrule', '1');

insert into gp_qc_rule (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, EXISTS_SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_410R4100115R410011507R410010302', '20190709', 'TESTCORP', '72', '002', null, null, '当“报送时点说明代码”为“49-其他报送日”时，若“账户类型”为“R4”，应包含基础段、还款表现信息段。', '当“报送时点说明代码”为“49-其他报送日”时，若“账户类型”为“R4”，应包含基础段、还款表现信息段。', null, 'BUSI', 'DATA_ID', null, null, 'Y', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 
'if (!isEmpty(B_ACCT_TYPE) && B_ACCT_TYPE == "R4" && B_RPT_DATE_CODE == "49") {
    if (!isEmpty(IS_RPT) && IS_RPT.length()>=5 && IS_RPT.substring(0,1) == "1" && IS_RPT.substring(4,5) == "1") {
        return true
    }
    return false
}
return true', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '9ee578451e9e4b01bcdcff2762e1c9e0', null, null, 'mbtrule', '1');

insert into gp_qc_rule (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, EXISTS_SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_410R4100116R410011503R410010206', '20190709', 'TESTCORP', '72', '002', null, null, '当“报送时点说明代码”为“49-其他报送日”时，若“账户类型”为“D2”，不应包含抵质押物信息段、授信额度信息段。', '当“报送时点说明代码”为“49-其他报送日”时，若“账户类型”为“D2”，不应包含抵质押物信息段、授信额度信息段。', null, 'BUSI', 'DATA_ID', null, null, 'Y', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 
'if (!isEmpty(B_ACCT_TYPE) && B_ACCT_TYPE == "D2" && B_RPT_DATE_CODE == "49") {
    if (!isEmpty(IS_RPT) && IS_RPT.length()>=8 && IS_RPT.substring(2,3) == "0" && IS_RPT.substring(7,8) == "0") {
        return true
    }
    return false
}
return true', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0740a0b472f74a8e818f3cad60795fbc', null, null, 'mbtrule', '1');

insert into gp_qc_rule (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, EXISTS_SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_410R4100118R410011801R410011802', '20190709', 'TESTCORP', '72', '002', null, null, '当“报告时点说明代码”为“10-新开户/首次上报”，若“基本信息段”的“担保方式”为“2-质押”、“3- 抵押”时，必须报送抵质押物信息段。', '当“报告时点说明代码”为“10-新开户/首次上报”，若“基本信息段”的“担保方式”为“2-质押”、“3- 抵押”时，必须报送抵质押物信息段。', null, 'BUSI', 'DATA_ID', null, null, 'Y', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 
'if(!isEmpty(B_ACCT_TYPE) && B_ACCT_TYPE != "C1" && B_ACCT_TYPE != "D2"){
	if(B_RPT_DATE_CODE == "10" & (C_GUAR_MODE == "2" || C_GUAR_MODE == "3")){
		if(!isEmpty(IS_RPT) && IS_RPT.length()>=8 && IS_RPT.substring(7,8) == "1"){
			return true
		}
		return false
	}
return true
}
return true', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '7c17e663bcec48c19a510916c05e52cd', null, null, 'mbtrule', '1');

insert into gp_qc_rule (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, EXISTS_SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_410R4100101R410010103R410010104', '20190709', 'TESTCORP', '72', '002', null, null, '当“报送时点说明代码”为“10-新开户/首次报送”时，若“账户类型”为“D1”且基本信息段中“分次放款标识”代码表位为“1”或“2”，则还应包含授信额度信息段。', '当“报送时点说明代码”为“10-新开户/首次报送”时，若“账户类型”为“D1”且基本信息段中“分次放款标识”代码表位为“1”或“2”，则还应包含授信额度信息段。', null, 'BUSI', 'DATA_ID', null, null, 'Y', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null,
 'if (B_RPT_DATE_CODE == "10" && B_ACCT_TYPE == "D1" && (C_FLAG == "1" || C_FLAG == "2")) {
    if (!isEmpty(IS_RPT) && IS_RPT.length()>=3 && IS_RPT.substring(2,3) == "1") {
        return true
    }
    return false
}
return true', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'b0c1c5146bb4413fa0489420d3d0d46a', null, null, 'mbtrule', '1');

insert into gp_qc_rule (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, EXISTS_SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_410R4100102R410010101R410010202', '20190709', 'TESTCORP', '72', '002', null, null, '当“报送时点说明代码”为“10-新开户/首次报送”时，若“账户类型”为“D1”，不应包含初始债权说明段。', '当“报送时点说明代码”为“10-新开户/首次报送”时，若“账户类型”为“D1”，不应包含初始债权说明段。', null, 'BUSI', 'DATA_ID', null, null, 'Y', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 
'if (B_RPT_DATE_CODE == "10" && B_ACCT_TYPE == "D1") {
    if (!isEmpty(IS_RPT) && IS_RPT.length()>=4 && IS_RPT.substring(3,4) == "0") {
        return true
    }
    return false
}
return true', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'b74da758a98c426d80bfac6e25981007', null, null, 'mbtrule', '1');

insert into gp_qc_rule (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, EXISTS_SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_410R4100102R410010109R410010206', '20190709', 'TESTCORP', '72', '002', null, null, '当“报送时点说明代码”为“10-新开户/首次报送”时，若“账户类型”为“C1”，不应包含抵质押物信息段、授信额度信息段。', '当“报送时点说明代码”为“10-新开户/首次报送”时，若“账户类型”为“C1”，不应包含抵质押物信息段、授信额度信息段。', null, 'BUSI', 'DATA_ID', null, null, 'Y', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 
'if (B_RPT_DATE_CODE == "10" && B_ACCT_TYPE == "C1") {
    if (!isEmpty(IS_RPT) && IS_RPT.length()>=8 && IS_RPT.substring(2,3) == "0" && IS_RPT.substring(7,8) == "0") {
        return true
    }
    return false
}
return true', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '8b17ee1b149a4a678c250054fbadc994', null, null, 'mbtrule', '1');

insert into gp_qc_rule (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, EXISTS_SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_410R4100103R410010307R410010302', '20190709', 'TESTCORP', '72', '002', null, null, '当“报送时点说明代码”为“20-账户关闭”时，若“账户类型”为“C1”，必须包含基础段、还款表现信息段。', '当“报送时点说明代码”为“20-账户关闭”时，若“账户类型”为“C1”，必须包含基础段、还款表现信息段。', null, 'BUSI', 'DATA_ID', null, null, 'Y', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 
'if (B_RPT_DATE_CODE == "20" && B_ACCT_TYPE == "C1") {
    if (!isEmpty(IS_RPT) && IS_RPT.length()>=5 && IS_RPT.substring(0,1) == "1" && IS_RPT.substring(4,5) == "1") {
        return true
    }
    return false
}
return true', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '10e14dd4157d486794d3d1c637e46ca0', null, null, 'mbtrule', '1');

insert into gp_qc_rule (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, EXISTS_SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_410R4100104R410010305R410010202', '20190709', 'TESTCORP', '72', '002', null, null, '当“报送时点说明代码”为“20-账户关闭”时，若“账户类型”为“R1/R4”，不应包含初始债权说明段。', '当“报送时点说明代码”为“20-账户关闭”时，若“账户类型”为“R1/R4”，不应包含初始债权说明段。', null, 'BUSI', 'DATA_ID', null, null, 'Y', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 
'if (B_RPT_DATE_CODE == "20" && (B_ACCT_TYPE == "R1" || B_ACCT_TYPE == "R4")) {
    if (!isEmpty(IS_RPT) && IS_RPT.length()>=4 && IS_RPT.substring(3,4) == "0") {
        return true
    }
    return false
}
return true', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '9ff830b31e0a4d688f965f1eb34f3f5f', null, null, 'mbtrule', '1');

insert into gp_qc_rule (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, EXISTS_SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_410R4100107R410010701R410010302', '20190709', 'TESTCORP', '72', '002', null, null, '当“报送时点说明代码”为“32-约定还款日结算”时，若“账户类型”为“D1”，应包含基础段、还款表现信息段。', '当“报送时点说明代码”为“32-约定还款日结算”时，若“账户类型”为“D1”，应包含基础段、还款表现信息段。', null, 'BUSI', 'DATA_ID', null, null, 'Y', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 
'if (!isEmpty(B_ACCT_TYPE) && B_ACCT_TYPE == "D1" && B_RPT_DATE_CODE == "32") {
    if (!isEmpty(IS_RPT) && IS_RPT.length()>=5 && IS_RPT.substring(0,1) == "1" && IS_RPT.substring(4,5) == "1") {
        return true
    }
    return false
}
return true', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '30cceabe7a44442cb2b44027862c0d91', null, null, 'mbtrule', '1');

insert into gp_qc_rule (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, EXISTS_SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_410R4100101R410010101R410010102', '20190709', 'TESTCORP', '72', '002', null, null, '当“报送时点说明代码”为“10-新开户/首次报送”时，若“账户类型”为“D1”，必须包含基础段、基本信息段、还款表现信息段。', '当“报送时点说明代码”为“10-新开户/首次报送”时，若“账户类型”为“D1”，必须包含基础段、基本信息段、还款表现信息段。', null, 'BUSI', 'DATA_ID', null, null, 'Y', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 
'if (B_RPT_DATE_CODE == "10" && B_ACCT_TYPE == "D1") {
    if (!isEmpty(IS_RPT) && IS_RPT.length()>=5 && IS_RPT.substring(0,2) == "11" && IS_RPT.substring(4,5) == "1") {
        return true
    }
    return false
}
return true', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '3c3abbd1439245be9d9d911879e223c7', null, null, 'mbtrule', '1');

insert into gp_qc_rule (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, EXISTS_SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_410R4100101R410010109R410010104', '20190709', 'TESTCORP', '72', '002', null, null, '当“报送时点说明代码”为“10-新开户/首次报送”时，若“账户类型”为“C1”，必须包含基础段、基本信息段、还款表现信息段。', '当“报送时点说明代码”为“10-新开户/首次报送”时，若“账户类型”为“C1”，必须包含基础段、基本信息段、还款表现信息段。', null, 'BUSI', 'DATA_ID', null, null, 'Y', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 
'if (B_RPT_DATE_CODE == "10" && B_ACCT_TYPE == "C1") {
    if (!isEmpty(IS_RPT) && IS_RPT.length()>=5 && IS_RPT.substring(0,2) == "11" && IS_RPT.substring(4,5)=="1") {
        return true
    }
    return false
}
return true', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '88da8ba3b00e4897828030aa2e29b2ee', null, null, 'mbtrule', '1');

insert into gp_qc_rule (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, EXISTS_SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_410R4100108R410010705R410010202', '20190709', 'TESTCORP', '72', '002', null, null, '当“报送时点说明代码”为“32-约定还款日结算”时，若“账户类型”为“R4”，不应包含初始债权说明段。', '当“报送时点说明代码”为“32-约定还款日结算”时，若“账户类型”为“R4”，不应包含初始债权说明段。', null, 'BUSI', 'DATA_ID', null, null, 'Y', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 
'if (!isEmpty(B_ACCT_TYPE) && B_ACCT_TYPE == "R4" && B_RPT_DATE_CODE == "32") {
    if (!isEmpty(IS_RPT) && IS_RPT.length()>=4 && IS_RPT.substring(3,4) == "0") {
        return true
    }
    return false
}
return true', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '7094b734ebf54575957b06cbf99d4d46', null, null, 'mbtrule', '1');

insert into gp_qc_rule (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, EXISTS_SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_410R4100109R410010903R410010302', '20190709', 'TESTCORP', '72', '002', null, null, '当“报送时点说明代码”为“33-实际还款”时，若“账户类型”为“D2”，应包含基础段、还款表现信息段。', '当“报送时点说明代码”为“33-实际还款”时，若“账户类型”为“D2”，应包含基础段、还款表现信息段。', null, 'BUSI', 'DATA_ID', null, null, 'Y', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 
'if (!isEmpty(B_ACCT_TYPE) && B_ACCT_TYPE == "D2" && B_RPT_DATE_CODE == "33") {
    if (!isEmpty(IS_RPT) && IS_RPT.length()>=5 && IS_RPT.substring(0,1) == "1" && IS_RPT.substring(4,5) == "1") {
        return true
    }
    return false
}
return true', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'b4d2eab045444998beda7d447f3f591a', null, null, 'mbtrule', '1');

insert into gp_qc_rule (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, EXISTS_SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_410R4100110R410010901R410010202', '20190709', 'TESTCORP', '72', '002', null, null, '当“报送时点说明代码”为“33-实际还款”时，若“账户类型”为“D1”，不应包含初始债权说明段。', '当“报送时点说明代码”为“33-实际还款”时，若“账户类型”为“D1”，不应包含初始债权说明段。', null, 'BUSI', 'DATA_ID', null, null, 'Y', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 
'if (!isEmpty(B_ACCT_TYPE) && B_ACCT_TYPE == "D1" && B_RPT_DATE_CODE == "33") {
    if (!isEmpty(IS_RPT) && IS_RPT.length()>=4 && IS_RPT.substring(3,4) == "0") {
        return true
    }
    return false
}
return true', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'd00790f8087b4d299c206a54d1de6f4c', null, null, 'mbtrule', '1');

insert into gp_qc_rule (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, EXISTS_SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_410R4100102R410010107R410010202', '20190709', 'TESTCORP', '72', '002', null, null, '当“报送时点说明代码”为“10-新开户/首次报送”时，若“账户类型”为“R1/R4”，不应包含初始债权说明段。', '当“报送时点说明代码”为“10-新开户/首次报送”时，若“账户类型”为“R1/R4”，不应包含初始债权说明段。', null, 'BUSI', 'DATA_ID', null, null, 'Y', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null,
 'if (B_RPT_DATE_CODE == "10" && B_ACCT_TYPE == "R1" || (B_ACCT_TYPE == "R4")) {
    if (!isEmpty(IS_RPT) && IS_RPT.length()>=4 && IS_RPT.substring(3,4) == "0") {
        return true
    }
    return false
}
return true', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'efed46e07c834fbb87904187e60235d4', null, null, 'mbtrule', '1');

insert into gp_qc_rule (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, EXISTS_SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_410R4100103R410010305R410010302', '20190709', 'TESTCORP', '72', '002', null, null, '当“报送时点说明代码”为“20-账户关闭”时，若“账户类型”为“R1/R4”，必须包含基础段、还款表现信息段。', '当“报送时点说明代码”为“20-账户关闭”时，若“账户类型”为“R1/R4”，必须包含基础段、还款表现信息段。', null, 'BUSI', 'DATA_ID', null, null, 'Y', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 
'if (B_RPT_DATE_CODE == "20" && (B_ACCT_TYPE == "R1" || B_ACCT_TYPE == "R4")) {
    if (!isEmpty(IS_RPT) && IS_RPT.length()>=5 && IS_RPT.substring(0,1) == "1" && IS_RPT.substring(4,5) == "1") {
        return true
    }
    return false
}
return true', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '2ab98d9e268e4e79816333d3dab39b1f', null, null, 'mbtrule', '1');

insert into gp_qc_rule (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, EXISTS_SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_410R4100104R410010303R410010206', '20190709', 'TESTCORP', '72', '002', null, null, '当“报送时点说明代码”为“20-账户关闭”时，若“账户类型”为“D2”，不应包含抵质押物信息段、授信额度信息段。', '当“报送时点说明代码”为“20-账户关闭”时，若“账户类型”为“D2”，不应包含抵质押物信息段、授信额度信息段。', null, 'BUSI', 'DATA_ID', null, null, 'Y', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 
'if (B_RPT_DATE_CODE == "20" && B_ACCT_TYPE == "D2") {
    if (!isEmpty(IS_RPT) && IS_RPT.length()>=8 && IS_RPT.substring(2,3) == "0" && IS_RPT.substring(7,8) == "0") {
        return true
    }
    return false
}
return true', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '2bfbadaff80e4118809f36a3780e4df3', null, null, 'mbtrule', '1');

insert into gp_qc_rule (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, EXISTS_SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_410R4100106R410010501R410010202', '20190709', 'TESTCORP', '72', '002', null, null, '当“报送时点说明代码”为“31-开户后放款”时，若“账户类型”为“D1”，“分次放款标识”为“2”，不应包含初始债权说明段。', '当“报送时点说明代码”为“31-开户后放款”时，若“账户类型”为“D1”，“分次放款标识”为“2”，不应包含初始债权说明段。', null, 'BUSI', 'DATA_ID', null, null, 'Y', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 
'if (B_RPT_DATE_CODE == "31" && B_ACCT_TYPE == "D1" && C_FLAG == "2") {
    if (!isEmpty(IS_RPT) && IS_RPT.length()>=4 && IS_RPT.substring(3,4) == "0") {
        return true
    }
    return false
}
return true', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '00fab02f752b477d84f0c5471129e6c9', null, null, 'mbtrule', '1');

insert into gp_qc_rule (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, EXISTS_SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_410R4100108R410010703R410010206', '20190709', 'TESTCORP', '72', '002', null, null, '当“报送时点说明代码”为“32-约定还款日结算”时，若“账户类型”为“D2”，不应包含抵质押物信息段、授信额度信息段。', '当“报送时点说明代码”为“32-约定还款日结算”时，若“账户类型”为“D2”，不应包含抵质押物信息段、授信额度信息段。', null, 'BUSI', 'DATA_ID', null, null, 'Y', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 
'if (!isEmpty(B_ACCT_TYPE) && B_ACCT_TYPE == "D2" && B_RPT_DATE_CODE == "32") {
    if (!isEmpty(IS_RPT) && IS_RPT.length()>=9 && IS_RPT.substring(2,3) == "0" && IS_RPT.substring(8,9) == "0") {
        return true
    }
    return false
}
return true', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'a7f11fdb6f004b8f9bdf7e02446f56b6', null, null, 'mbtrule', '1');

insert into gp_qc_rule (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, EXISTS_SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_410R4100109R410010901R410010302', '20190709', 'TESTCORP', '72', '002', null, null, '当“报送时点说明代码”为“33-实际还款”时，若“账户类型”为“D1”，应包含基础段、还款表现信息段。', '当“报送时点说明代码”为“33-实际还款”时，若“账户类型”为“D1”，应包含基础段、还款表现信息段。', null, 'BUSI', 'DATA_ID', null, null, 'Y', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 
'if (!isEmpty(B_ACCT_TYPE) && B_ACCT_TYPE == "D1" && B_RPT_DATE_CODE == "33") {
    if (!isEmpty(IS_RPT) && IS_RPT.length()>=5 && IS_RPT.substring(0,1) == "1" && IS_RPT.substring(4,5) == "1") {
        return true
    }
    return false
}
return true', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '92c17af189d44283b53e107c9f8bb118', null, null, 'mbtrule', '1');

insert into gp_qc_rule (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, EXISTS_SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_410R4100110R410010907R410010402', '20190709', 'TESTCORP', '72', '002', null, null, '若“账户类型”为“C1”，不应包含相关还款责任人段、抵质押物信息段、授信额度信息段、初始债权说明段。', '若“账户类型”为“C1”，不应包含相关还款责任人段、抵质押物信息段、授信额度信息段、初始债权说明段。', null, 'BUSI', 'DATA_ID', null, null, 'Y', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 
'if (!isEmpty(B_ACCT_TYPE) && B_ACCT_TYPE == "C1" && B_RPT_DATE_CODE == "33") {
    if (!isEmpty(IS_RPT) && IS_RPT.length()>=8 && IS_RPT.substring(2,4) == "00" && IS_RPT.substring(6,8) == "00") {
        return true
    }
    return false
}
return true', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '3cc9acaa050544cc8770bf0748d8f2d5', null, null, 'mbtrule', '1');

insert into gp_qc_rule (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, EXISTS_SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_410__C_BUSI_LINES', '20190614', 'TESTCORP', '72', '002', null, null, '借贷业务大类', '借贷业务大类必须为数字英文字母;长度在2~2之间;', null, 'ELEMENT', 'C_BUSI_LINES', '借贷业务大类', 'R', 'Y', 'ALPHA_NUMBER', null, 2, 2, null, null, null, null, null, null, null, 'GP_BM_DATA_DIC', '19099', null, null, 
'if (!isEmpty(IS_RPT) &&  IS_RPT.length()>=2 && IS_RPT.substring(1,2) == "1") {
    if (isEmpty($value)) {
        return false
    }
}
return true', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '16a62b36d6cc4d7989edbda09455a684', null, null, 'mbtelement', '1');

insert into gp_qc_rule (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, EXISTS_SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_410__C_ACCT_CRED_LINE_AMT', '20190614', 'TESTCORP', '72', '002', null, null, '信用额度', '信用额度取值范围在0~999999999999999之间;', null, 'ELEMENT', 'C_ACCT_CRED_LINE_AMT', '信用额度', 'R', 'Y', 'NUMBER', null, null, null, 0.0000000000, 999999999999999.0000000000, null, null, null, null, null, null, null, null, null, 
'if ((!isEmpty(IS_RPT) &&  IS_RPT.length()>=2 && IS_RPT.substring(1,2) == "1") && (B_ACCT_TYPE == "R1")) {
    if (isEmpty($value)) {
        return false
    }
}
return true', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'f4cc57b43bdd4f03934a1a610ba4954c', null, null, 'mbtelement', '1');

insert into gp_qc_rule (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, EXISTS_SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_410__C_REPAY_MODE', '20190614', 'TESTCORP', '72', '002', null, null, '还款方式', '还款方式必须为数字英文字母;长度在2~2之间;', null, 'ELEMENT', 'C_REPAY_MODE', '还款方式', 'R', 'Y', 'ALPHA_NUMBER', null, 2, 2, null, null, null, null, null, null, null, null, null, null, null, 
'if ((!isEmpty(IS_RPT) &&  IS_RPT.length()>=2 && IS_RPT.substring(1,2) == "1") && (B_ACCT_TYPE == "D1" || B_ACCT_TYPE == "R1" || B_ACCT_TYPE == "R4")) {
    if (isEmpty($value)) {
        return false
    }
}
return true', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '5b4a53ba86a048bf804bba21dd6ccd1a', null, null, 'mbtelement', '1');

insert into gp_qc_rule (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, EXISTS_SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_410__C_OTH_REPY_GUAR_WAY', '20190614', 'TESTCORP', '72', '002', null, null, '其他还款保证方式', '其他还款保证方式必须为数字英文字母;长度在1~1之间;', null, 'ELEMENT', 'C_OTH_REPY_GUAR_WAY', '其他还款保证方式', 'R', 'Y', 'ALPHA_NUMBER', null, 1, 1, null, null, null, null, null, null, null, 'GP_BM_DATA_DIC', '19114', null, null, 
'if ((!isEmpty(IS_RPT) &&  IS_RPT.length()>=2 && IS_RPT.substring(1,2) == "1") && (B_ACCT_TYPE == "D1" || B_ACCT_TYPE == "D2" || B_ACCT_TYPE == "R1" || B_ACCT_TYPE == "R4")) {
    if (isEmpty($value)) {
        return false
    }
}
return true', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '36a05052749545cf941e7e7f7f2a43a6', null, null, 'mbtelement', '1');

insert into gp_qc_rule (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, EXISTS_SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_410__C_FUND_SOU', '20190614', 'TESTCORP', '72', '002', null, null, '业务经营类型', '业务经营类型必须为数字英文字母;长度在1~2之间;', null, 'ELEMENT', 'C_FUND_SOU', '业务经营类型', 'R', 'Y', 'ALPHA_NUMBER', null, 1, 2, null, null, null, null, null, null, null, 'GP_BM_DATA_DIC', '19117', null, null, 
'if ((!isEmpty(IS_RPT) &&  IS_RPT.length()>=2 && IS_RPT.substring(1,2) == "1") && (B_ACCT_TYPE == "D1" || B_ACCT_TYPE == "D2" || B_ACCT_TYPE == "R1" || B_ACCT_TYPE == "R4")) {
    if (isEmpty($value)) {
        return false
    }
}
return true', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'd8b08153aa4c4e60a3b28d10cbb08899', null, null, 'mbtelement', '1');

insert into gp_qc_rule (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, EXISTS_SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_410__H_ACCT_BAL', '20190614', 'TESTCORP', '72', '002', null, null, '余额', '余额取值范围在0~999999999999999之间;', null, 'ELEMENT', 'H_ACCT_BAL', '余额', 'R', 'Y', 'NUMBER', null, null, null, 0.0000000000, 999999999999999.0000000000, null, null, null, null, null, null, null, null, null, 
'if (!isEmpty(IS_RPT) &&  IS_RPT.length()>=5 && IS_RPT.substring(4,5) == "1") {
    if (isEmpty($value)) {
        return false
    }
}
return true', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '565f6dad017347bca3ff0c42d63023e5', null, null, 'mbtelement', '1');

insert into gp_qc_rule (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, EXISTS_SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_410__H_FIVE_CATE_ADJ_DATE', '20190614', 'TESTCORP', '72', '002', null, null, '五级分类认定日期', '五级分类认定日期必须为数字英文字母;长度在8~8之间;', null, 'ELEMENT', 'H_FIVE_CATE_ADJ_DATE', '五级分类认定日期', 'R', 'Y', 'ALPHA_NUMBER', null, 8, 8, null, null, null, null, null, null, null, null, null, null, null, 
'if (!isEmpty(IS_RPT) &&  IS_RPT.length()>=5 && IS_RPT.substring(4,5) == "1") {
    if (isEmpty($value)) {
        return false
    }
}
return true', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '83dc14a7a473419f8cfa0fc62fdd1601', null, null, 'mbtelement', '1');

insert into gp_qc_rule (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, EXISTS_SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_410__H_OVERD_DY', '20190614', 'TESTCORP', '72', '002', null, null, '当前逾期天数', '当前逾期天数取值范围在0~999之间;', null, 'ELEMENT', 'H_OVERD_DY', '当前逾期天数', 'R', 'Y', 'NUMBER', null, null, null, 0.0000000000, 999.0000000000, null, null, null, null, null, null, null, null, null, 
'if ((!isEmpty(IS_RPT) &&  IS_RPT.length()>=5 && IS_RPT.substring(4,5) == "1") && (B_ACCT_TYPE == "D1" || B_ACCT_TYPE == "D2" || B_ACCT_TYPE == "R1" || B_ACCT_TYPE == "R4")) {
    if (isEmpty($value)) {
        return false
    }
}
return true', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '09726bb36080443883bd9f9b06f0dac5', null, null, 'mbtelement', '1');

insert into gp_qc_rule (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, EXISTS_SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_410__H_RPMT_TYPE', '20190614', 'TESTCORP', '72', '002', null, null, '还款形式', '还款形式必须为数字英文字母;长度在2~2之间;', null, 'ELEMENT', 'H_RPMT_TYPE', '还款形式', 'R', 'Y', 'ALPHA_NUMBER', null, 2, 2, null, null, null, null, null, null, null, 'GP_BM_DATA_DIC', '19122', null, null,
 'if (!isEmpty(IS_RPT) &&  IS_RPT.length()>=5 && IS_RPT.substring(4,5) == "1") {
    if (isEmpty($value)) {
        return false
    }
}
return true', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '279874401f874b1ea8c693fd28e7fd02', null, null, 'mbtelement', '1');

insert into gp_qc_rule (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, EXISTS_SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_410__H_CLOSE_DATE', '20190614', 'TESTCORP', '72', '002', null, null, '账户关闭日期', '账户关闭日期必须为数字英文字母;长度在8~8之间;', null, 'ELEMENT', 'H_CLOSE_DATE', '账户关闭日期', 'R', 'Y', 'ALPHA_NUMBER', null, 8, 8, null, null, null, null, null, null, null, null, null, null, null, 
'if ((!isEmpty(IS_RPT) &&  IS_RPT.length()>=5 && IS_RPT.substring(4,5) == "1") && (H_ACCT_STATUS == "3" || H_ACCT_STATUS == "4")) {
    if (isEmpty($value)) {
        return false
    }
}
return true', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1e36e8448fcc45c3a10026087fa03bc6', null, null, 'mbtelement', '1');

insert into gp_qc_rule (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, EXISTS_SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_410R4100107R410010705R410010302', '20190709', 'TESTCORP', '72', '002', null, null, '当“报送时点说明代码”为“32-约定还款日结算”时，若“账户类型”为“R4”，应包含基础段、还款表现信息段。', '当“报送时点说明代码”为“32-约定还款日结算”时，若“账户类型”为“R4”，应包含基础段、还款表现信息段。', null, 'BUSI', 'DATA_ID', null, null, 'Y', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 
'if (!isEmpty(B_ACCT_TYPE) && B_ACCT_TYPE == "R4" && B_RPT_DATE_CODE == "32") {
    if (!isEmpty(IS_RPT) &&  IS_RPT.length()>=5 && IS_RPT.substring(0,1) == "1" && IS_RPT.substring(4,5) == "1") {
        return true
    }
    return false
}
return true', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'ed2f3a2d911c40efa09c166bfa813146', null, null, 'mbtrule', '1');

insert into gp_qc_rule (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, EXISTS_SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_410R4100108R410010801R410010204', '20190709', 'TESTCORP', '72', '002', null, null, '当“报送时点说明代码”为“32-约定还款日结算”时，若“账户类型”为“D1”且“分次放款标识”为“0”，则不应包含授信额度信息段。', '当“报送时点说明代码”为“32-约定还款日结算”时，若“账户类型”为“D1”且“分次放款标识”为“0”，则不应包含授信额度信息段。', null, 'BUSI', 'DATA_ID', null, null, 'Y', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 
'if (!isEmpty(B_ACCT_TYPE) && B_ACCT_TYPE == "D1" && B_RPT_DATE_CODE == "32" && C_FLAG == "0") {
    if (!isEmpty(IS_RPT) &&  IS_RPT.length()>=3 && IS_RPT.substring(2,3) == "0") {
        return true
    }
    return false
}
return true', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '6afffd6c753645c2aeea2a567804a7fc', null, null, 'mbtrule', '1');

insert into gp_qc_rule (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, EXISTS_SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_410R4100109R410010907R410010302', '20190709', 'TESTCORP', '72', '002', null, null, '当“报送时点说明代码”为“33-实际还款”时，若“账户类型”为“C1”，应包含基础段、还款表现信息段。', '当“报送时点说明代码”为“33-实际还款”时，若“账户类型”为“C1”，应包含基础段、还款表现信息段。', null, 'BUSI', 'DATA_ID', null, null, 'Y', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 
'if (!isEmpty(B_ACCT_TYPE) && B_ACCT_TYPE == "C1" && B_RPT_DATE_CODE == "33") {
    if (!isEmpty(IS_RPT) &&  IS_RPT.length()>=5 && IS_RPT.substring(0,1) == "1" && IS_RPT.substring(4,5) == "1") {
        return true
    }
    return false
}
return true', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'c2ad99197c0e41919ed6cfe51ac0bda5', null, null, 'mbtrule', '1');

insert into gp_qc_rule (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, EXISTS_SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_410R4100111R410011101R410010302', '20190709', 'TESTCORP', '72', '002', null, null, '当“报送时点说明代码”为“41-五级分类调整”时，若“账户类型”为“D1”，应包含基础段、还款表现信息段。', '当“报送时点说明代码”为“41-五级分类调整”时，若“账户类型”为“D1”，应包含基础段、还款表现信息段。', null, 'BUSI', 'DATA_ID', null, null, 'Y', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 
'if (!isEmpty(B_ACCT_TYPE) && B_ACCT_TYPE == "D1" && B_RPT_DATE_CODE == "41") {
    if (!isEmpty(IS_RPT) &&  IS_RPT.length()>=5 && IS_RPT.substring(0,1) == "1" && IS_RPT.substring(4,5) == "1") {
        return true
    }
    return false
}
return true', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'b5097dbbae724f35837bd71743825fb1', null, null, 'mbtrule', '1');

insert into gp_qc_rule (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, EXISTS_SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_410R4100110R410010903R410010206', '20190709', 'TESTCORP', '72', '002', null, null, '若“账户类型”为“D2”，不应包含抵质押物信息段、授信额度信息段。', '若“账户类型”为“D2”，不应包含抵质押物信息段、授信额度信息段。', null, 'BUSI', 'DATA_ID', null, null, 'Y', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 
'if (!isEmpty(B_ACCT_TYPE) && B_ACCT_TYPE == "D2" && B_RPT_DATE_CODE == "33") {
    if (!isEmpty(IS_RPT) &&  IS_RPT.length()>=8 && IS_RPT.substring(2,3) == "0" && IS_RPT.substring(7,8) == "0") {
        return true
    }
    return false
}
return true', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '28b9efe0c56b4d58b07946bc10167b84', null, null, 'mbtrule', '1');

insert into gp_qc_rule (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, EXISTS_SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_410R4100102R410010203R410010204', '20190709', 'TESTCORP', '72', '002', null, null, '当“报送时点说明代码”为“10-新开户/首次报送”时，若“账户类型”为“D1”且“分次放款标识”为“0”，则不应包含授信额度信息段。', '当“报送时点说明代码”为“10-新开户/首次报送”时，若“账户类型”为“D1”且“分次放款标识”为“0”，则不应包含授信额度信息段。', null, 'BUSI', 'DATA_ID', null, null, 'Y', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 
'if (B_RPT_DATE_CODE == "10" && B_ACCT_TYPE == "D1" && C_FLAG == "0") {
    if (!isEmpty(IS_RPT) && IS_RPT.length()>=3 && IS_RPT.substring(2,3) == "0") {
        return true
    }
    return false
}
return true', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '7ece4815d8834f5c80d07037823c26a7', null, null, 'mbtrule', '1');

insert into gp_qc_rule (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, EXISTS_SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_410R4100103R410010301R410010302', '20190709', 'TESTCORP', '72', '002', null, null, '当“报送时点说明代码”为“20-账户关闭”时，若“账户类型”为“D1”，必须包含基础段、还款表现信息段。', '当“报送时点说明代码”为“20-账户关闭”时，若“账户类型”为“D1”，必须包含基础段、还款表现信息段。', null, 'BUSI', 'DATA_ID', null, null, 'Y', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 
'if (B_RPT_DATE_CODE == "20" && B_ACCT_TYPE == "D1") {
    if (!isEmpty(IS_RPT) && IS_RPT.length()>=5 && IS_RPT.substring(0,1) == "1" && IS_RPT.substring(4,5) == "1") {
        return true
    }
    return false
}
return true', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'a7ea8044929449a2be2e143b2d48a298', null, null, 'mbtrule', '1');

insert into gp_qc_rule (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, EXISTS_SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_410R4100104R410010301R410010202', '20190709', 'TESTCORP', '72', '002', null, null, '当“报送时点说明代码”为“20-账户关闭”时，若“账户类型”为“D1”，不应包含初始债权说明段。', '当“报送时点说明代码”为“20-账户关闭”时，若“账户类型”为“D1”，不应包含初始债权说明段。', null, 'BUSI', 'DATA_ID', null, null, 'Y', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 
'if (B_RPT_DATE_CODE == "20" && B_ACCT_TYPE == "D1") {
    if (!isEmpty(IS_RPT) && IS_RPT.length()>=4 && IS_RPT.substring(3,4) == "0") {
        return true
    }
    return false
}
return true', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'e84443493b1340c9b60459c63be19007', null, null, 'mbtrule', '1');

insert into gp_qc_rule (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, EXISTS_SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_410R4100104R410010307R410010402', '20190709', 'TESTCORP', '72', '002', null, null, '当“报送时点说明代码”为“20-账户关闭”时，若“账户类型”为“C1”，不应包含相关还款责任人段、抵质押物信息段、授信额度信息段、初始债权说明段。', '当“报送时点说明代码”为“20-账户关闭”时，若“账户类型”为“C1”，不应包含相关还款责任人段、抵质押物信息段、授信额度信息段、初始债权说明段。', null, 'BUSI', 'DATA_ID', null, null, 'Y', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 
'if (B_RPT_DATE_CODE == "20" && B_ACCT_TYPE == "C1") {
    if (!isEmpty(IS_RPT) && IS_RPT.length()>=8 && IS_RPT.substring(2,4) == "00" && IS_RPT.substring(6,8) == "00") {
        return true
    }
    return false
}
return true', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '5b8616c30aba44808ff30f5451fcae7c', null, null, 'mbtrule', '1');

insert into gp_qc_rule (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, EXISTS_SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_410R4100107R410010703R410010302', '20190709', 'TESTCORP', '72', '002', null, null, '当“报送时点说明代码”为“32-约定还款日结算”时，若“账户类型”为“D2”，应包含基础段、还款表现信息段。', '当“报送时点说明代码”为“32-约定还款日结算”时，若“账户类型”为“D2”，应包含基础段、还款表现信息段。', null, 'BUSI', 'DATA_ID', null, null, 'Y', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 
'if (!isEmpty(B_ACCT_TYPE) && B_ACCT_TYPE == "D2" && B_RPT_DATE_CODE == "32") {
    if (!isEmpty(IS_RPT) && IS_RPT.length()>=5 && IS_RPT.substring(0,1) == "1" && IS_RPT.substring(4,5) == "1") {
        return true
    }
    return false
}
return true', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '945d41ccb90148999fc87dbc362aea77', null, null, 'mbtrule', '1');

insert into gp_qc_rule (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, EXISTS_SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_410__B_RPT_DATE', '20190614', 'TESTCORP', '72', '002', null, null, '信息报告日期', '信息报告日期必须为数字英文字母;长度在8~8之间;', null, 'ELEMENT', 'B_RPT_DATE', '信息报告日期', 'R', 'Y', 'ALPHA_NUMBER', null, 8, 8, null, null, null, null, null, null, null, null, null, null, null, 
'if (!isEmpty(IS_RPT) && IS_RPT.length()>=1 && IS_RPT.substring(0,1) == "1") {
    if (isEmpty($value)) {
        return false
    }
}
return true', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'e13835f619a04a39a691464f56cc9a4c', null, null, 'mbtelement', '1');

insert into gp_qc_rule (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, EXISTS_SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_410R4100101R410010105R410010104', '20190709', 'TESTCORP', '72', '002', null, null, '当“报送时点说明代码”为“10-新开户/首次报送”时，若“账户类型”为“D2”，必须包含基础段、基本信息段、还款表现信息段。', '当“报送时点说明代码”为“10-新开户/首次报送”时，若“账户类型”为“D2”，必须包含基础段、基本信息段、还款表现信息段。', null, 'BUSI', 'DATA_ID', null, null, 'Y', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 
'if (B_RPT_DATE_CODE == "10" && B_ACCT_TYPE == "D2") {
    if (!isEmpty(IS_RPT) && IS_RPT.length()>=5 && IS_RPT.substring(0,2) == "11" && IS_RPT.substring(4,5) == "1") {
        return true
    }
    return false
}
return true', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '077ca0d704c44b8aa116f5a63b822804', null, null, 'mbtrule', '1');

insert into gp_qc_rule (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, EXISTS_SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_410__C_BUSI_DTL_LINES', '20190614', 'TESTCORP', '72', '002', null, null, '借贷业务种类细分', '借贷业务种类细分必须为数字英文字母;长度在2~2之间;', null, 'ELEMENT', 'C_BUSI_DTL_LINES', '借贷业务种类细分', 'R', 'Y', 'ALPHA_NUMBER', null, 2, 2, null, null, null, null, null, null, null, null, null, null, null,
 'if (!isEmpty(IS_RPT) && IS_RPT.length()>=2 &&  IS_RPT.substring(1,2) == "1") {
    if (isEmpty($value)) {
        return false
    }
}
return true', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0e0cb0f83ea14e5e81d42c7fb879e5e6', null, null, 'mbtelement', '1');

insert into gp_qc_rule (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, EXISTS_SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_410R4100114R410011305R410010202', '20190709', 'TESTCORP', '72', '002', null, null, '当“报送时点说明代码”为“42-展期发生”时，若“账户类型”为“R4”，不应包含初始债权说明段。', '当“报送时点说明代码”为“42-展期发生”时，若“账户类型”为“R4”，不应包含初始债权说明段。', null, 'BUSI', 'DATA_ID', null, null, 'Y', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 
'if (!isEmpty(B_ACCT_TYPE) && B_ACCT_TYPE == "R4" && B_RPT_DATE_CODE == "42") {
    if (!isEmpty(IS_RPT) && IS_RPT.length()>=4 && IS_RPT.substring(3,4) == "0") {
        return true
    }
    return false
}
return true', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '288a54faf2404a63af900f3bf9164e66', null, null, 'mbtrule', '1');

insert into gp_qc_rule (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, EXISTS_SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_410__C_LOAN_AMT', '20190614', 'TESTCORP', '72', '002', null, null, '借款金额', '借款金额取值范围在0~999999999999999之间;', null, 'ELEMENT', 'C_LOAN_AMT', '借款金额', 'R', 'Y', 'NUMBER', null, null, null, 0.0000000000, 999999999999999.0000000000, null, null, null, null, null, null, null, null, null, 
'if ((!isEmpty(IS_RPT) && IS_RPT.length()>=2 && IS_RPT.substring(1,2) == "1") && (B_ACCT_TYPE == "C1" || B_ACCT_TYPE == "D1" || B_ACCT_TYPE == "D2" || B_ACCT_TYPE == "R4")) {
    if (isEmpty($value)) {
        return false
    }
}
return true', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'edc5176676884095beb6a73a5fd3f8d2', null, null, 'mbtelement', '1');

insert into gp_qc_rule (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, EXISTS_SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_410__C_REPAY_FREQCY', '20190614', 'TESTCORP', '72', '002', null, null, '还款频率', '还款频率必须为数字英文字母;长度在1~2之间;', null, 'ELEMENT', 'C_REPAY_FREQCY', '还款频率', 'R', 'Y', 'ALPHA_NUMBER', null, 1, 2, null, null, null, null, null, null, null, 'GP_BM_DATA_DIC', '19112', null, null, 
'if ((!isEmpty(IS_RPT) && IS_RPT.length()>=2 && IS_RPT.substring(1,2) == "1") && (B_ACCT_TYPE == "D1" || B_ACCT_TYPE == "R1" || B_ACCT_TYPE == "R4")) {
    if (isEmpty($value)) {
        return false
    }
}
return true', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '43563ff9599e44a3a99d991295dc41a8', null, null, 'mbtelement', '1');

insert into gp_qc_rule (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, EXISTS_SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_410__B_ID_NUM', '20190614', 'TESTCORP', '72', '002', null, null, '借款人身份标识码', '借款人身份标识码必须为数字英文字母中文;长度在1~40之间;', null, 'ELEMENT', 'B_ID_NUM', '借款人身份标识码', 'R', 'Y', null, null, 1, 40, null, null, null, null, null, null, null, null, null, null, null, 
'if (!isEmpty(IS_RPT) && IS_RPT.length()>=1 && IS_RPT.substring(0,1) == "1") {
    if (isEmpty($value)) {
        return false
    }
}
return true', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '80101c62cb1b4348b57f5c7ca88dce9f', null, null, 'mbtelement', '1');

insert into gp_qc_rule (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, EXISTS_SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_410R4100111R410011105R410010302', '20190709', 'TESTCORP', '72', '002', null, null, '当“报送时点说明代码”为“41-五级分类调整”时，若“账户类型”为“R4”，应包含基础段、还款表现信息段。', '当“报送时点说明代码”为“41-五级分类调整”时，若“账户类型”为“R4”，应包含基础段、还款表现信息段。', null, 'BUSI', 'DATA_ID', null, null, 'Y', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 
'if (!isEmpty(B_ACCT_TYPE) && B_ACCT_TYPE == "R4" && B_RPT_DATE_CODE == "41") {
    if (!isEmpty(IS_RPT) && IS_RPT.length()>=5 && IS_RPT.substring(0,1) == "1" && IS_RPT.substring(4,5) == "1") {
        return true
    }
    return false
}
return true', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '9ef6f816c77243349b23fa4595fee32b', null, null, 'mbtrule', '1');

insert into gp_qc_rule (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, EXISTS_SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_410R4100112R410011103R410010206', '20190709', 'TESTCORP', '72', '002', null, null, '当“报送时点说明代码”为“41-五级分类调整”时，若“账户类型”为“D2”，不应包含抵质押物信息段、授信额度信息段。', '当“报送时点说明代码”为“41-五级分类调整”时，若“账户类型”为“D2”，不应包含抵质押物信息段、授信额度信息段。', null, 'BUSI', 'DATA_ID', null, null, 'Y', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 
'if (!isEmpty(B_ACCT_TYPE) && B_ACCT_TYPE == "D2" && B_RPT_DATE_CODE == "41") {
    if (!isEmpty(IS_RPT) && IS_RPT.length()>=8 && IS_RPT.substring(2,3) == "0" && IS_RPT.substring(7,8) == "0") {
        return true
    }
    return false
}
return true', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '6b1812705ced40d09e727e1da1daf014', null, null, 'mbtrule', '1');

insert into gp_qc_rule (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, EXISTS_SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_410R4100113R410011301R410011302', '20190709', 'TESTCORP', '72', '002', null, null, '当“报送时点说明代码”为“42-展期发生”时，若“账户类型”为“D1”，应包含基础段、还款表现信息段、特定交易说明段。', '当“报送时点说明代码”为“42-展期发生”时，若“账户类型”为“D1”，应包含基础段、还款表现信息段、特定交易说明段。', null, 'BUSI', 'DATA_ID', null, null, 'Y', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null,
 'if (!isEmpty(B_ACCT_TYPE) && B_ACCT_TYPE == "D1" && B_RPT_DATE_CODE == "42") {
    if (!isEmpty(IS_RPT) && IS_RPT.length()>=9 && IS_RPT.substring(0,1) == "1" && IS_RPT.substring(4,5) == "1" && IS_RPT.substring(8,9) == "1") {
        return true
    }
    return false
}
return true', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '78edc317ebb64969987f1627afd44359', null, null, 'mbtrule', '1');

insert into gp_qc_rule (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, EXISTS_SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_410R4100115R410011503R410010302', '20190709', 'TESTCORP', '72', '002', null, null, '当“报送时点说明代码”为“49-其他报送日”时，若“账户类型”为“D2”，应包含基础段、还款表现信息段。', '当“报送时点说明代码”为“49-其他报送日”时，若“账户类型”为“D2”，应包含基础段、还款表现信息段。', null, 'BUSI', 'DATA_ID', null, null, 'Y', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 
'if (!isEmpty(B_ACCT_TYPE) && B_ACCT_TYPE == "D2" && B_RPT_DATE_CODE == "49") {
    if (!isEmpty(IS_RPT) && IS_RPT.length()>=5 &&  IS_RPT.substring(0,1) == "1" && IS_RPT.substring(4,5) == "1") {
        return true
    }
    return false
}
return true', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'f575f52fff68434c830c3b29f606959c', null, null, 'mbtrule', '1');

insert into gp_qc_rule (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, EXISTS_SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_410R4100116R410011501R410010202', '20190709', 'TESTCORP', '72', '002', null, null, '当“报送时点说明代码”为“49-其他报送日”时，若“账户类型”为“D1”，不应包含初始债权说明段。', '当“报送时点说明代码”为“49-其他报送日”时，若“账户类型”为“D1”，不应包含初始债权说明段。', null, 'BUSI', 'DATA_ID', null, null, 'Y', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 
'if (!isEmpty(B_ACCT_TYPE) && B_ACCT_TYPE == "D1" && B_RPT_DATE_CODE == "49") {
    if (!isEmpty(IS_RPT) && IS_RPT.length()>=4 && IS_RPT.substring(3,4) == "0") {
        return true
    }
    return false
}
return true', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'fa55ac389569427ab7f9998a24d617d8', null, null, 'mbtrule', '1');

insert into gp_qc_rule (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, EXISTS_SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_410R4100116R410011509R410010402', '20190709', 'TESTCORP', '72', '002', null, null, '当“报送时点说明代码”为“49-其他报送日”时，若“账户类型”为“C1”，不应包含相关还款责任人段、抵质押物信息段、授信额度信息段、初始债权说明段。', '当“报送时点说明代码”为“49-其他报送日”时，若“账户类型”为“C1”，不应包含相关还款责任人段、抵质押物信息段、授信额度信息段、初始债权说明段。', null, 'BUSI', 'DATA_ID', null, null, 'Y', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 
'if (!isEmpty(B_ACCT_TYPE) && B_ACCT_TYPE == "C1" && B_RPT_DATE_CODE == "49") {
    if (!isEmpty(IS_RPT) && IS_RPT.length()>=8 &&  IS_RPT.substring(2,4) == "00" && IS_RPT.substring(6,8) == "00") {
        return true
    }
    return false
}
return true', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '6ca7857dce504d5d8ec43a0881631e98', null, null, 'mbtrule', '1');

insert into gp_qc_rule (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, EXISTS_SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_410__C_LOAN_TIME_LIM_CAT', '20190614', 'TESTCORP', '72', '002', null, null, '借款期限分类', '借款期限分类必须为数字英文字母;长度在2~2之间;', null, 'ELEMENT', 'C_LOAN_TIME_LIM_CAT', '借款期限分类', 'R', 'Y', 'ALPHA_NUMBER', null, 2, 2, null, null, null, null, null, null, null, 'GP_BM_DATA_DIC', '19115', null, null, 
'if ((!isEmpty(IS_RPT) && IS_RPT.length()>=2 &&  IS_RPT.substring(1,2) == "1") && (B_ACCT_TYPE == "D1" || B_ACCT_TYPE == "R4")) {
    if (isEmpty($value)) {
        return false
    }
}
return true', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'cfb8a9c53ddc4aebb039964bea1ea58c', null, null, 'mbtelement', '1');

insert into gp_qc_rule (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, EXISTS_SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_410__C_ASSET_TRAND_FLAG', '20190614', 'TESTCORP', '72', '002', null, null, '资产转让标志', '资产转让标志必须为数字英文字母;长度在1~1之间;', null, 'ELEMENT', 'C_ASSET_TRAND_FLAG', '资产转让标志', 'R', 'Y', 'ALPHA_NUMBER', null, 1, 1, null, null, null, null, null, null, null, 'GP_BM_DATA_DIC', '19235', null, null,
 'if ((!isEmpty(IS_RPT) && IS_RPT.length()>=2 &&  IS_RPT.substring(1,2) == "1") && (B_ACCT_TYPE == "D1" || B_ACCT_TYPE == "R1" || B_ACCT_TYPE == "R4")) {
    if (isEmpty($value)) {
        return false
    }
}
return true', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '6328af97f399484bb7c3fcceef780ad9', null, null, 'mbtelement', '1');

insert into gp_qc_rule (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, EXISTS_SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_410R4100109R410010905R410010302', '20190709', 'TESTCORP', '72', '002', null, null, '当“报送时点说明代码”为“33-实际还款”时，若“账户类型”为“R4”，应包含基础段、还款表现信息段。', '当“报送时点说明代码”为“33-实际还款”时，若“账户类型”为“R4”，应包含基础段、还款表现信息段。', null, 'BUSI', 'DATA_ID', null, null, 'Y', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 
'if (!isEmpty(B_ACCT_TYPE) && B_ACCT_TYPE == "R4" && B_RPT_DATE_CODE == "33") {
    if (!isEmpty(IS_RPT) && IS_RPT.length()>=5 && IS_RPT.substring(0,1) == "1" && IS_RPT.substring(4,5) == "1") {
        return true
    }
    return false
}
return true', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '84c826fa722e49d3b75cc8b64efc153f', null, null, 'mbtrule', '1');

insert into gp_qc_rule (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, EXISTS_SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_410R4100110R410011001R410010204', '20190709', 'TESTCORP', '72', '002', null, null, '当“报送时点说明代码”为“33-实际还款”时，若“账户类型”为“D1”且“分次放款标识”为“0”，则不应包含授信额度信息段。', '当“报送时点说明代码”为“33-实际还款”时，若“账户类型”为“D1”且“分次放款标识”为“0”，则不应包含授信额度信息段。', null, 'BUSI', 'DATA_ID', null, null, 'Y', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 
'if (!isEmpty(B_ACCT_TYPE) && B_ACCT_TYPE == "D1" && B_RPT_DATE_CODE == "33" && C_FLAG == "0") {
    if (!isEmpty(IS_RPT) && IS_RPT.length()>=3 && IS_RPT.substring(2,3) == "0" ||F_MCC.length() ==0) {
        return true
    }
    return false
}
return true', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '064d3c8162b2491b8cbf7fbe050e0f72', null, null, 'mbtrule', '1');

insert into gp_qc_rule (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, EXISTS_SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_410R4100108R410010701R410010202', '20190709', 'TESTCORP', '72', '002', null, null, '当“报送时点说明代码”为“32-约定还款日结算”时，若“账户类型”为“D1”，不应包含初始债权说明段。', '当“报送时点说明代码”为“32-约定还款日结算”时，若“账户类型”为“D1”，不应包含初始债权说明段。', null, 'BUSI', 'DATA_ID', null, null, 'Y', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 
'if (!isEmpty(B_ACCT_TYPE) && B_ACCT_TYPE == "D1" && B_RPT_DATE_CODE == "32") {
    if (!isEmpty(IS_RPT) && IS_RPT.length()>=4 && IS_RPT.substring(3,4) == "0") {
        return true
    }
    return false
}
return true', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'a65c21de18644a20bca9864ec9ad9ce3', null, null, 'mbtrule', '1');

insert into gp_qc_rule (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, EXISTS_SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_410I4100C04I4100C0401I4100C0402', '20190709', 'TESTCORP', '72', '002', null, null, '若账户基本信息段中的“还款方式”以“2”开头，则“还款频率”为“99-其他”。', '若账户基本信息段中的“还款方式”以“2”开头，则“还款频率”为“99-其他”。', null, 'BUSI', 'DATA_ID', null, null, 'Y', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 
'if (!isEmpty(C_REPAY_MODE) && C_REPAY_MODE.length()>=1 &&  C_REPAY_MODE.substring(0,1) == "2") {
    if (C_REPAY_FREQCY == "99") {
        return true
    }
    return false
}
return true', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '20c5c0d4c6f848258bb888455c9c7d86', null, null, 'mbtrule', '1');

insert into gp_qc_rule (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, EXISTS_SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_410__G_ORIG_DBT_CATE', '20190614', 'TESTCORP', '72', '002', null, null, '原债务种类', '原债务种类必须为数字英文字母;长度在2~2之间;', null, 'ELEMENT', 'G_ORIG_DBT_CATE', '原债务种类', 'R', 'Y', 'ALPHA_NUMBER', null, 2, 2, null, null, null, null, null, null, null, 'GP_BM_DATA_DIC', '19120', null, null, 
'if (!isEmpty(IS_RPT) && IS_RPT.length()>=4 && IS_RPT.substring(3,4) == "1") {
    if (isEmpty($value)) {
        return false
    }
}
return true', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '3a0daec6b2b24de383c230492dc316ac', null, null, 'mbtelement', '1');

insert into gp_qc_rule (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, EXISTS_SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_410__H_PYMT_PRD', '20190614', 'TESTCORP', '72', '002', null, null, '剩余还款月数', '剩余还款月数取值范围在0~999之间;', null, 'ELEMENT', 'H_PYMT_PRD', '剩余还款月数', 'R', 'Y', 'NUMBER', null, null, null, 0.0000000000, 999.0000000000, null, null, null, null, null, null, null, null, null, 
'if ((!isEmpty(IS_RPT) && IS_RPT.length()>=5 && IS_RPT.substring(4,5) == "1") && (B_ACCT_TYPE == "R1")) {
    if (isEmpty($value)) {
        return false
    }
}
return true', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '7b24f05815c54818a378ce0eaff7d668', null, null, 'mbtelement', '1');

insert into gp_qc_rule (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, EXISTS_SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_410__H_LAT_RPY_DATE', '20190614', 'TESTCORP', '72', '002', null, null, '最近一次实际还款日期', '最近一次实际还款日期必须为数字英文字母;长度在8~8之间;', null, 'ELEMENT', 'H_LAT_RPY_DATE', '最近一次实际还款日期', 'R', 'Y', 'ALPHA_NUMBER', null, 8, 8, null, null, null, null, null, null, null, null, null, null, null, 
'if (!isEmpty(IS_RPT) && IS_RPT.length()>=5 && IS_RPT.substring(4,5) == "1") {
    if (isEmpty($value)) {
        return false
    }
}
return true', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'b8e3eec406cc4c4aa5b185c2ab6bde84', null, null, 'mbtelement', '1');

insert into gp_qc_rule (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, EXISTS_SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_410__H_LAT_AGRR_RPY_DATE', '20190614', 'TESTCORP', '72', '002', null, null, '最近一次约定还款日', '最近一次约定还款日必须为数字英文字母;长度在8~8之间;', null, 'ELEMENT', 'H_LAT_AGRR_RPY_DATE', '最近一次约定还款日', 'R', 'Y', 'ALPHA_NUMBER', null, 8, 8, null, null, null, null, null, null, null, null, null, null, null,
 'if ((!isEmpty(IS_RPT) && IS_RPT.length()>=5 && IS_RPT.substring(4,5) == "1") && (B_ACCT_TYPE == "D1" || B_ACCT_TYPE == "D2" || B_ACCT_TYPE == "R1" || B_ACCT_TYPE == "R4")) {
    if (isEmpty($value)) {
        return false
    }
}
return true', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '8b24fd7d64fb47ce88bba3cf4a3b039c', null, null, 'mbtelement', '1');
insert into gp_qc_rule (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, EXISTS_SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_420I0000401_1', '20200217', 'TESTCORP', '72', '002', null, null, ' 组织机构代码应符合如下规则：应由8位数字（或大写拉丁字母）以及1位数字（或大写拉丁字母）组成；校验位应满足校验规则（参见国标《全国组织机构代码编制规则》（GB11714-1997））。
', ' 组织机构代码应符合如下规则：应由8位数字（或大写拉丁字母）以及1位数字（或大写拉丁字母）组成；校验位应满足校验规则（参见国标《全国组织机构代码编制规则》（GB11714-1997））。
', null, 'BUSI', 'DATA_ID', null, null, 'Y', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 
'if(MBT_420_B_ID_TYPE.contains("30")){

        def code=MBT_420_B_ID_NUM;
        def ws = [3, 7, 9, 10, 5, 8, 4, 2];
        String str = ''0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ'';
        def reg = /^([0-9A-Z]){8}[0-9|X]$/;
       String tmp = code.toUpperCase();

        if (isEmpty(tmp) || tmp.length() != 9) {
              return false
            }
        int sum = 0;
		if (isEmpty(code) || code.length() < 8) {
            return false
        }
        for (int i = 0; i < 8; i++){
         sum += str.indexOf(code.getAt(i)).toInteger() * ws.getAt(i).toInteger();}
        def c9 = 11 - (sum%11);
        c9 = (c9.toInteger() ==11?0:c9)
        c9 = (c9.toInteger() == 10 ? ''X'' : c9 )
        def matcher = code[0..8] =~ reg;
        matcher.matches();
        if (matcher.getCount()!=0 && code.getAt(8).toString()==c9.toString()) {
            return true
        }else{
            return false
        }
    }
      return true', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1abe69a0b299409b8f6bb7f6fb1b9612', null, null, 'mbtrule', '1');

insert into gp_qc_rule (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, EXISTS_SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_420I0000401_2', '20200217', 'TESTCORP', '72', '002', null, null, '统一社会信用代码应符合如下规则：
应由18位数字或大写英文字母（不使用I、O、Z、S、V）组成；
第1位和第2位应为有效的登记管理部分代码和机构分类代码；
第9-17位应符合组织机构代码规则；
校验位应符合校验规则（参见国标《法人和其他组织统一社会信用代码编码规则》（GB32100-2015））。', '统一社会信用代码应符合如下规则：
应由18位数字或大写英文字母（不使用I、O、Z、S、V）组成；
第1位和第2位应为有效的登记管理部分代码和机构分类代码；
第9-17位应符合组织机构代码规则；
校验位应符合校验规则（参见国标《法人和其他组织统一社会信用代码编码规则》（GB32100-2015））。', null, 'BUSI', 'DATA_ID', null, null, 'Y', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 
'if (MBT_420_B_ID_TYPE.contains("20")){
String str = MBT_420_B_ID_NUM;
def firstarray = [''0'', ''1'', ''2'', ''3'', ''4'', ''5'', ''6'', ''7'', ''8'', ''9'', ''A'', ''B'', ''C'', ''D'', ''E'', ''F'', ''G'', ''H'', ''I'', ''J'', ''K'', ''L'', ''M'', ''N'', ''O'', ''P'', ''Q'', ''R'', ''S'', ''T'', ''U'', ''V'', ''W'', ''X'', ''Y'', ''Z''];
def firstkeys = [3, 7, 9, 10, 5, 8, 4, 2];
def  secondarray = [''0'', ''1'', ''2'', ''3'', ''4'', ''5'', ''6'', ''7'', ''8'', ''9'', ''A'', ''B'', ''C'', ''D'', ''E'', ''F'', ''G'', ''H'', ''J'', ''K'', ''L'', ''M'', ''N'', ''P'', ''Q'', ''R'', ''T'', ''U'', ''W'', ''X'', ''Y''];
def secondkeys = [1, 3, 9, 27, 19, 26, 16, 17, 20, 29, 25, 13, 8, 24, 10, 30, 28];
String code = str.toUpperCase();
        if (isEmpty(code) || code.length() != 18) {
            return false;
        }
        def reg = /^[1-9]|[ABCDEFGY]$/;
        def matcher = str.getAt(0) =~ reg;
        matcher.matches()
        if(matcher.getCount()==0){
            return false;
        }
        def reg1 = /^[1,2,3,9]$/;
        matcher = str.getAt(1) =~ reg1
          matcher.matches()
          if(matcher.getCount()==0){
            return false;
        }
        def reg2 = /^\d{6}$/;
        matcher = str[2..7] =~ reg2
        matcher.matches()
        if(matcher.getCount()==0){
            return false;
        }
        int count = 0;
        for (int i = 0; i < firstkeys.size(); i++) {
            def a = code[i+8];
            count += firstkeys[i].toInteger() * firstarray.indexOf(a).toInteger();
        }
        int remainder = count % 11;
        int  firstkey= (remainder == 0 ? 0 : 11 - remainder);
        def firstword;
        if (firstkey < 10) {
            firstword = firstkey;
        }
        if (firstkey == 10) {
            firstword = ''X'';
        } else if (firstkey == 11) {
            firstword = ''0'';
        }

        if (!(""+firstword).equals(code[16])) {
            return false;
        }
         count = 0;
        for (int i = 0; i < secondkeys.size(); i++) {
            def a = code[i];
            count += secondkeys[i].toInteger() * secondarray.indexOf(a).toInteger();
        }
         remainder = count % 31;
         int secondkey = (remainder == 0 ? 0 : 31 - remainder);

        def secondword = secondarray[secondkey];
        if (!secondword || !(""+secondword).equals(code[17])) {
            return false;
        }

}
        return true;', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1abe69a0b299409b8f6bb7f6fb1b9612', null, null, 'mbtrule', '1');

insert into gp_qc_rule (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, EXISTS_SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_420R420010120190603011', '20190530', 'TESTCORP', '72', '2', null, null, '企业授信协议记录报送时，“基础段”和“额度信息段”必须出现。', '企业授信协议记录报送时，“基础段”和“额度信息段”必须出现。', null, 'BUSI', 'DATA_ID', null, null, 'Y', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'return IS_RPT.substring(0,1) == "1" || IS_RPT.substring(1,2) == "1"', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '407647d0cb644f8dbbc510f60592c98c', null, null, 'mbtrule', '1');
insert into gp_qc_rule (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, EXISTS_SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_440I0000401_1', '20200217', 'TESTCORP', '72', '002', null, null, ' 组织机构代码应符合如下规则：应由8位数字（或大写拉丁字母）以及1位数字（或大写拉丁字母）组成；校验位应满足校验规则（参见国标《全国组织机构代码编制规则》（GB11714-1997））。
', ' 组织机构代码应符合如下规则：应由8位数字（或大写拉丁字母）以及1位数字（或大写拉丁字母）组成；校验位应满足校验规则（参见国标《全国组织机构代码编制规则》（GB11714-1997））。
', null, 'BUSI', 'DATA_ID', null, null, 'Y', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 
' if(MBT_440_B_ID_TYPE=="30"){

        def code=MBT_440_B_ID_NUM;

           String tmp = code.toUpperCase();

        if (isEmpty(tmp) || tmp.length() != 9) {
              return false
            }
        def ws = [3, 7, 9, 10, 5, 8, 4, 2];
        String str = ''0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ'';
        def reg = /^([0-9A-Z]){8}[0-9|X]$/;
        int sum = 0;
		if (isEmpty(code) || code.length() < 8) {
            return false
        }
        for (int i = 0; i < 8; i++){
         sum += str.indexOf(code.getAt(i)).toInteger() * ws.getAt(i).toInteger();}
        def c9 = 11 - (sum%11);
        c9 = (c9.toInteger() ==11?0:c9)
        c9 = (c9.toInteger() == 10 ? ''X'' : c9 )
        def matcher = code[0..8] =~ reg;
        matcher.matches();
        if (matcher.getCount()!=0 && code.getAt(8).toString()==c9.toString()) {
            return true
        }else{
            return false
        }
    }
      return true
', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1abe69a0b299409b8f6bb7f6fb1b9612', null, null, 'mbtrule', '1');

insert into gp_qc_rule (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, EXISTS_SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_440I0000401_2', '20200217', 'TESTCORP', '72', '002', null, null, '统一社会信用代码应符合如下规则：
应由18位数字或大写英文字母（不使用I、O、Z、S、V）组成；
第1位和第2位应为有效的登记管理部分代码和机构分类代码；
第9-17位应符合组织机构代码规则；
校验位应符合校验规则（参见国标《法人和其他组织统一社会信用代码编码规则》（GB32100-2015））。', '统一社会信用代码应符合如下规则：
应由18位数字或大写英文字母（不使用I、O、Z、S、V）组成；
第1位和第2位应为有效的登记管理部分代码和机构分类代码；
第9-17位应符合组织机构代码规则；
校验位应符合校验规则（参见国标《法人和其他组织统一社会信用代码编码规则》（GB32100-2015））。', null, 'BUSI', 'DATA_ID', null, null, 'Y', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'if (MBT_440_B_ID_TYPE=="20"){
String str = MBT_440_B_ID_NUM;
def firstarray = [''0'', ''1'', ''2'', ''3'', ''4'', ''5'', ''6'', ''7'', ''8'', ''9'', ''A'', ''B'', ''C'', ''D'', ''E'', ''F'', ''G'', ''H'', ''I'', ''J'', ''K'', ''L'', ''M'', ''N'', ''O'', ''P'', ''Q'', ''R'', ''S'', ''T'', ''U'', ''V'', ''W'', ''X'', ''Y'', ''Z''];
def firstkeys = [3, 7, 9, 10, 5, 8, 4, 2];
def  secondarray = [''0'', ''1'', ''2'', ''3'', ''4'', ''5'', ''6'', ''7'', ''8'', ''9'', ''A'', ''B'', ''C'', ''D'', ''E'', ''F'', ''G'', ''H'', ''J'', ''K'', ''L'', ''M'', ''N'', ''P'', ''Q'', ''R'', ''T'', ''U'', ''W'', ''X'', ''Y''];
def secondkeys = [1, 3, 9, 27, 19, 26, 16, 17, 20, 29, 25, 13, 8, 24, 10, 30, 28];
String code = str.toUpperCase();
        if (isEmpty(code) || code.length() != 18) {
            return false;
        }
        def reg = /^[1-9]|[ABCDEFGY]$/;
        def matcher = str.getAt(0) =~ reg;
        matcher.matches()
        if(matcher.getCount()==0){
            return false;
        }
        def reg1 = /^[1,2,3,9]$/;
        matcher = str.getAt(1) =~ reg1
          matcher.matches()
          if(matcher.getCount()==0){
            return false;
        }
        def reg2 = /^\d{6}$/;
        matcher = str[2..7] =~ reg2
        matcher.matches()
        if(matcher.getCount()==0){
            return false;
        }
        int count = 0;
        for (int i = 0; i < firstkeys.size(); i++) {
            def a = code[i+8];
            count += firstkeys[i].toInteger() * firstarray.indexOf(a).toInteger();
        }
        int remainder = count % 11;
        int  firstkey= (remainder == 0 ? 0 : 11 - remainder);
        def firstword;
        if (firstkey < 10) {
            firstword = firstkey;
        }
        if (firstkey == 10) {
            firstword = ''X'';
        } else if (firstkey == 11) {
            firstword = ''0'';
        }

        if (!(""+firstword).equals(code[16])) {
            return false;
        }
         count = 0;
        for (int i = 0; i < secondkeys.size(); i++) {
            def a = code[i];
            count += secondkeys[i].toInteger() * secondarray.indexOf(a).toInteger();
        }
         remainder = count % 31;
         int secondkey = (remainder == 0 ? 0 : 31 - remainder);

        def secondword = secondarray[secondkey];
        if (!secondword || !(""+secondword).equals(code[17])) {
            return false;
        }

}
        return true;', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1abe69a0b299409b8f6bb7f6fb1b9612', null, null, 'mbtrule', '1');

insert into gp_qc_rule (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, EXISTS_SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_440R4400101R440010101R440010102', '20190620', 'TESTCORP', '72', '002', null, null, '“报告时点说明代码”为“10-新开户/首次上报”时，至少应包含基本信息段、在保责任信息段。', '“报告时点说明代码”为“10-新开户/首次上报”时，至少应包含基本信息段、在保责任信息段。', null, 'BUSI', 'DATA_ID', null, null, 'Y', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 
'if (B_RPT_DATE_CODE=="10") {
    if (!isEmpty(IS_RPT) && IS_RPT.length()>=4 && IS_RPT.substring(1,2)=="1" && IS_RPT.substring(3,4)=="1") {
        return true
    }
    return false
}
return true', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'a5af92f150634679b860b17d567330ef', null, null, 'mbtrule', '1');

insert into gp_qc_rule (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, EXISTS_SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_440R4400102R440010201R440010202', '20190620', 'TESTCORP', '72', '002', null, null, '“报告时点说明代码”为“20-账户关闭”时，至少包含在保责任信息段。', '“报告时点说明代码”为“20-账户关闭”时，至少包含在保责任信息段。', null, 'BUSI', 'DATA_ID', null, null, 'Y', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 
'if (B_RPT_DATE_CODE == "20") {
    if (!isEmpty(IS_RPT) && IS_RPT.length()>=4 && IS_RPT.substring(3,4) == "1") {
        return true
    }
    return false
}
return true', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '14e2505d03db4fcbb92b4e2071e901b2', null, null, 'mbtrule', '1');

insert into gp_qc_rule (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, EXISTS_SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_440R4400103R440010301R440010302', '20190620', 'TESTCORP', '72', '002', null, null, '“报告时点说明代码”为“30-在保责任变化”时，至少包含在保责任信息段。', '“报告时点说明代码”为“30-在保责任变化”时，至少包含在保责任信息段。', null, 'BUSI', 'DATA_ID', null, null, 'Y', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 
'if (B_RPT_DATE_CODE == "30") {
    if (!isEmpty(IS_RPT) && IS_RPT.length()>=4 && IS_RPT.substring(3,4) == "1") {
        return true
    }
    return false
}
return true', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '5bbb5fed67844af69d865e8de0447f68', null, null, 'mbtrule', '1');

insert into gp_qc_rule (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, EXISTS_SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_440R4400104R440010401R440010402', '20190620', 'TESTCORP', '72', '002', null, null, '“报告时点说明代码”为“10-新开户/首次上报”且“反担保方式”为“1-保证”时，至少包含相关还款责任人段。', '“报告时点说明代码”为“10-新开户/首次上报”且“反担保方式”为“1-保证”时，至少包含相关还款责任人段。', null, 'BUSI', 'DATA_ID', null, null, 'Y', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 
'if (B_RPT_DATE_CODE == "10" && C_GUAR_MODE == "1") {
    if (!isEmpty(IS_RPT) && IS_RPT.length()>=6 && IS_RPT.substring(5,6) == "1") {
        return true
    }
    return false
}
return true', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'a21531682ac4462a8e72bdeb690bf2bf', null, null, 'mbtrule', '1');

insert into gp_qc_rule (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, EXISTS_SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_440R4400105R440010502', '20190620', 'TESTCORP', '72', '002', null, null, '企业担保账户信息记录必须包含基础段。', '企业担保账户信息记录必须包含基础段。', null, 'BUSI', 'DATA_ID', null, null, 'Y', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 
'if (!isEmpty(IS_RPT) && IS_RPT.length()>=1 && IS_RPT.substring(0,1) == "1") {
        return true
    }
return false',null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1e470e8356e1441289c3059e3ef8187a', null, null, 'mbtrule', '1');

insert into gp_qc_rule (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, EXISTS_SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_440R4400106R440010701R440010702', '20190620', 'TESTCORP', '72', '002', null, null, '“报告时点说明代码”为“40-五级分类调整”时，至少包含保责任信息段。', '“报告时点说明代码”为“40-五级分类调整”时，至少包含保责任信息段。', null, 'BUSI', 'DATA_ID', null, null, 'Y', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 
'if (B_RPT_DATE_CODE == "40") {
    if (!isEmpty(IS_RPT) && IS_RPT.length()>=4 && IS_RPT.substring(3,4) == "1") {
        return true
    }
    return false
}
return true', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'c7d9446165324fd38786158ef7a6fe37', null, null, 'mbtrule', '1');

insert into gp_qc_rule (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, EXISTS_SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_440R4400107R440010601R440010602', '20190620', 'TESTCORP', '72', '002', null, null, '“报告时点说明代码”为“50-其他信息变化”时，不包括在保责任信息段。', '“报告时点说明代码”为“50-其他信息变化”时，不包括在保责任信息段。', null, 'BUSI', 'DATA_ID', null, null, 'Y', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 
'if (B_RPT_DATE_CODE == "50") {
    if (!isEmpty(IS_RPT) && IS_RPT.length()>=4 && IS_RPT.substring(3,4) == "0") {
        return true
    }
    return false
}
return true', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '28912156177745aba7e7d2bbbc2ab80d', null, null, 'mbtrule', '1');
insert into gp_qc_rule (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, EXISTS_SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_510_EI0000401_6', '20200305', 'TESTCORP', '72', '002', null, null, '抵押物信息段的统一社会信用代码应符合如下规则：
应由18位数字或大写英文字母（不使用I、O、Z、S、V）组成；
第1位和第2位应为有效的登记管理部分代码和机构分类代码；
第9-17位应符合组织机构代码规则；
校验位应符合校验规则（参见国标《法人和其他组织统一社会信用代码编码规则》（GB32100-2015））。', '抵押物信息段的统一社会信用代码应符合如下规则：
应由18位数字或大写英文字母（不使用I、O、Z、S、V）组成；
第1位和第2位应为有效的登记管理部分代码和机构分类代码；
第9-17位应符合组织机构代码规则；
校验位应符合校验规则（参见国标《法人和其他组织统一社会信用代码编码规则》（GB32100-2015））。', null, 'BUSI', 'DATA_ID', null, null, 'Y', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 
'if (E_PLEDGOR_TYPE =="2" &&  E_PLEOR_CERT_TYPE=="20"){
String str = E_PLEOR_CERT_NUM;
def firstarray = [''0'', ''1'', ''2'', ''3'', ''4'', ''5'', ''6'', ''7'', ''8'', ''9'', ''A'', ''B'', ''C'', ''D'', ''E'', ''F'', ''G'', ''H'', ''I'', ''J'', ''K'', ''L'', ''M'', ''N'', ''O'', ''P'', ''Q'', ''R'', ''S'', ''T'', ''U'', ''V'', ''W'', ''X'', ''Y'', ''Z''];
def firstkeys = [3, 7, 9, 10, 5, 8, 4, 2];
def  secondarray = [''0'', ''1'', ''2'', ''3'', ''4'', ''5'', ''6'', ''7'', ''8'', ''9'', ''A'', ''B'', ''C'', ''D'', ''E'', ''F'', ''G'', ''H'', ''J'', ''K'', ''L'', ''M'', ''N'', ''P'', ''Q'', ''R'', ''T'', ''U'', ''W'', ''X'', ''Y''];
def secondkeys = [1, 3, 9, 27, 19, 26, 16, 17, 20, 29, 25, 13, 8, 24, 10, 30, 28];
String code = str.toUpperCase();
        if (isEmpty(code) ||code.length() != 18) {
            return false;
        }
        def reg = /^[1-9]|[ABCDEFGY]$/;
        def matcher = str.getAt(0) =~ reg;
        matcher.matches()
        if(matcher.getCount()==0){
            return false;
        }
        def reg1 = /^[1,2,3,9]$/;
        matcher = str.getAt(1) =~ reg1
          matcher.matches()
          if(matcher.getCount()==0){
            return false;
        }
        def reg2 = /^\d{6}$/;
        matcher = str[2..7] =~ reg2
        matcher.matches()
        if(matcher.getCount()==0){
            return false;
        }
        int count = 0;
        for (int i = 0; i < firstkeys.size(); i++) {
            def a = code[i+8];
            count += firstkeys[i].toInteger() * firstarray.indexOf(a).toInteger();
        }
        int remainder = count % 11;
        int  firstkey= (remainder == 0 ? 0 : 11 - remainder);
        def firstword;
        if (firstkey < 10) {
            firstword = firstkey;
        }
        if (firstkey == 10) {
            firstword = ''X'';
        } else if (firstkey == 11) {
            firstword = ''0'';
        }

        if (!(""+firstword).equals(code[16])) {
            return false;
        }
         count = 0;
        for (int i = 0; i < secondkeys.size(); i++) {
            def a = code[i];
            count += secondkeys[i].toInteger() * secondarray.indexOf(a).toInteger();
        }
         remainder = count % 31;
         int secondkey = (remainder == 0 ? 0 : 31 - remainder);

        def secondword = secondarray[secondkey];
        if (!secondword || !(""+secondword).equals(code[17])) {
            return false;
        }

}
        return true;', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1abe69a0b299409b8f6bb7f6fb1b9612', null, null, 'mbtrule', '1');

insert into gp_qc_rule (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, EXISTS_SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_510R510010201R510010201R510010202', '20190530', 'TESTCORP', '72', '002', null, null, '当抵(质)押合同信息记录中“合同类型”为“1-抵押合同”、时，记录中必须有抵押物信息段且不能包含质押物信息段。', '当抵(质)押合同信息记录中“合同类型”为“1-抵押合同”时，记录中必须有抵押物信息段且不能包含质押物信息段', null, 'BUSI', 'DATA_ID', null, null, 'Y', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 
'if (C_GUAR_TYPE=="1" & B_RPT_DATE_CODE != "20") {
    if (!isEmpty(IS_RPT) && IS_RPT.length()>=6 && IS_RPT.substring(4,6)=="10") {
        return true
    }
    return false
}
return true', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'a30d1a7b99ad42e7bdce3bd76121cc8d', null, null, 'mbtrule', '1');

insert into gp_qc_rule (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, EXISTS_SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_510_FI0000401_1', '20200305', 'TESTCORP', '72', '2', null, null, '质物信息段的公民身份证号码则应符合如下规则：长度必须为18位；前17位为数字，第18位可为数字或字母“X”、“x”；第7-14位为出生日期，日期必须在19010101-20991231之间；校验位必须满足校验规则（参见国标《公民身份号码》（GB11643-1999））。', '质物信息段的公民身份证号码则应符合如下规则：长度必须为18位；前17位为数字，第18位可为数字或字母“X”、“x”；第7-14位为出生日期，日期必须在19010101-20991231之间；校验位必须满足校验规则（参见国标《公民身份号码》（GB11643-1999））。', null, 'BUSI', 'DATA_ID', null, null, 'Y', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 
'if(F_IPPC =="1" &&  F_PAWN_CERT_TYPE=="10"){
		  def ws = [7,9,10,5,8,4,2,1,6,3,7,9,10,5,8,4,2];
		  def ss = [1,0,''X'',9,8,7,6,5,4,3,2];
		  String str = ''0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ'';
		  def code=F_PAWN_CERT_NUM;
		  def aRegex = /^[1-9]\d{5}(190[1-9]|19[1-9][0-9]|20[0-9]{2})((0[1-9])|(10|11|12))(([0-2][1-9])|10|20|30|31)\d{3}[0-9Xx]$/
		  def matcher = code =~ aRegex
 		 matcher.matches();
if(matcher.getCount()==1){
		 int sum = 0;
		 if (isEmpty(code) || code.length() < 17) {
            return false
        }
        for (int i = 0; i < 17; i++){
         sum += str.indexOf(code.getAt(i)).toInteger() * ws.getAt(i).toInteger();
		 }
        def c9 = (sum%11);    
		c9= (c9==2?''X'':ss.getAt(c9));
		def matcher1 = code[0..17] =~ aRegex;
       	 matcher1.matches();
        if (matcher1.getCount()!=0 && code.getAt(17).toString()==c9.toString()) {
             return  true
        }else{
             return  false

        }
}else{
		return  false
}

}
return true

', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'admin', '20200119', '20200119171000', null, null, null, '063a51c208ec4c22a80d169211e92ab2', null, null, 'mbtrule', '1');

insert into gp_qc_rule (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, EXISTS_SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_510I0000401_1', '20190610', 'TESTCORP', '72', '2', null, null, '公民身份证号码则应符合如下规则：长度必须为18位；
前17位为数字，第18位可为数字或字母“X”、“x”；
第7-14位为出生日期，日期必须在19010101-20991231之间；
校验位必须满足校验规则（参见国标《公民身份号码》（GB11643-1999））。', '公民身份证号码则应符合如下规则：长度必须为18位；
前17位为数字，第18位可为数字或字母“X”、“x”；
第7-14位为出生日期，日期必须在19010101-20991231之间；
校验位必须满足校验规则（参见国标《公民身份号码》（GB11643-1999））。', null, 'BUSI', 'DATA_ID', null, null, 'Y', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 
'if(MBT_510_B_CERT_TYPE=="10" && MBT_510_B_INFO_ID_TYPE=="1"){
		  def ws = [7,9,10,5,8,4,2,1,6,3,7,9,10,5,8,4,2];
		  def ss = [1,0,''X'',9,8,7,6,5,4,3,2];
		  String str = ''0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ'';
		  def code=MBT_510_B_CERT_NUM;
		  def aRegex = /^[1-9]\d{5}(190[1-9]|19[1-9][0-9]|20[0-9]{2})((0[1-9])|(10|11|12))(([0-2][1-9])|10|20|30|31)\d{3}[0-9Xx]$/
		  def matcher = code =~ aRegex
 		 matcher.matches();
if(matcher.getCount()==1){
		 int sum = 0;
		 if (isEmpty(code) || code.length() < 17) {
            return false
        }
        for (int i = 0; i < 17; i++){
         sum += str.indexOf(code.getAt(i)).toInteger() * ws.getAt(i).toInteger();
		 }
        def c9 = (sum%11);    
		c9= (c9==2?''X'':ss.getAt(c9));
		def matcher1 = code[0..17] =~ aRegex;
       	 matcher1.matches();
        if (matcher1.getCount()!=0 && code.getAt(17).toString()==c9.toString()) {
             return  true
        }else{
             return  false

        }
}else{
		return  false
}

}
return true


', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'admin', '20200119', '20200119171000', null, null, null, '063a51c208ec4c22a80d169211e92ab2', null, null, 'mbtrule', '1');

insert into gp_qc_rule (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, EXISTS_SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_510I0000401_6', '20200217', 'TESTCORP', '72', '002', null, null, '统一社会信用代码应符合如下规则：
应由18位数字或大写英文字母（不使用I、O、Z、S、V）组成；
第1位和第2位应为有效的登记管理部分代码和机构分类代码；
第9-17位应符合组织机构代码规则；
校验位应符合校验规则（参见国标《法人和其他组织统一社会信用代码编码规则》（GB32100-2015））。', '统一社会信用代码应符合如下规则：
应由18位数字或大写英文字母（不使用I、O、Z、S、V）组成；
第1位和第2位应为有效的登记管理部分代码和机构分类代码；
第9-17位应符合组织机构代码规则；
校验位应符合校验规则（参见国标《法人和其他组织统一社会信用代码编码规则》（GB32100-2015））。', null, 'BUSI', 'DATA_ID', null, null, 'Y', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 
'if (MBT_510_B_CERT_TYPE=="20" &&  MBT_510_B_INFO_ID_TYPE=="2"){
String str = MBT_510_B_CERT_NUM;
def firstarray = [''0'', ''1'', ''2'', ''3'', ''4'', ''5'', ''6'', ''7'', ''8'', ''9'', ''A'', ''B'', ''C'', ''D'', ''E'', ''F'', ''G'', ''H'', ''I'', ''J'', ''K'', ''L'', ''M'', ''N'', ''O'', ''P'', ''Q'', ''R'', ''S'', ''T'', ''U'', ''V'', ''W'', ''X'', ''Y'', ''Z''];
def firstkeys = [3, 7, 9, 10, 5, 8, 4, 2];
def  secondarray = [''0'', ''1'', ''2'', ''3'', ''4'', ''5'', ''6'', ''7'', ''8'', ''9'', ''A'', ''B'', ''C'', ''D'', ''E'', ''F'', ''G'', ''H'', ''J'', ''K'', ''L'', ''M'', ''N'', ''P'', ''Q'', ''R'', ''T'', ''U'', ''W'', ''X'', ''Y''];
def secondkeys = [1, 3, 9, 27, 19, 26, 16, 17, 20, 29, 25, 13, 8, 24, 10, 30, 28];
String code = str.toUpperCase();
        if (isEmpty(code) || code.length() != 18) {
            return false;
        }
        def reg = /^[1-9]|[ABCDEFGY]$/;
        def matcher = str.getAt(0) =~ reg;
        matcher.matches()
        if(matcher.getCount()==0){
            return false;
        }
        def reg1 = /^[1,2,3,9]$/;
        matcher = str.getAt(1) =~ reg1
          matcher.matches()
          if(matcher.getCount()==0){
            return false;
        }
        def reg2 = /^\d{6}$/;
        matcher = str[2..7] =~ reg2
        matcher.matches()
        if(matcher.getCount()==0){
            return false;
        }
        int count = 0;
        for (int i = 0; i < firstkeys.size(); i++) {
            def a = code[i+8];
            count += firstkeys[i].toInteger() * firstarray.indexOf(a).toInteger();
        }
        int remainder = count % 11;
        int  firstkey= (remainder == 0 ? 0 : 11 - remainder);
        def firstword;
        if (firstkey < 10) {
            firstword = firstkey;
        }
        if (firstkey == 10) {
            firstword = ''X'';
        } else if (firstkey == 11) {
            firstword = ''0'';
        }

        if (!(""+firstword).equals(code[16])) {
            return false;
        }
         count = 0;
        for (int i = 0; i < secondkeys.size(); i++) {
            def a = code[i];
            count += secondkeys[i].toInteger() * secondarray.indexOf(a).toInteger();
        }
         remainder = count % 31;
         int secondkey = (remainder == 0 ? 0 : 31 - remainder);

        def secondword = secondarray[secondkey];
        if (!secondword || !(""+secondword).equals(code[17])) {
            return false;
        }

}
        return true;', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1abe69a0b299409b8f6bb7f6fb1b9612', null, null, 'mbtrule', '1');

insert into gp_qc_rule (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, EXISTS_SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_510_DI0000401_1', '20200305', 'TESTCORP', '72', '2', null, null, '其他债务人段的公民身份证号码则应符合如下规则：长度必须为18位；前17位为数字，第18位可为数字或字母“X”、“x”；第7-14位为出生日期，日期必须在19010101-20991231之间；校验位必须满足校验规则（参见国标《公民身份号码》（GB11643-1999））。', '其他债务人段的公民身份证号码则应符合如下规则：长度必须为18位；前17位为数字，第18位可为数字或字母“X”、“x”；第7-14位为出生日期，日期必须在19010101-20991231之间；校验位必须满足校验规则（参见国标《公民身份号码》（GB11643-1999））。', null, 'BUSI', 'DATA_ID', null, null, 'Y', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 
'if(D_INFO_ID_TYPE =="1" &&  D_GUAR_CERT_TYPE=="10"){
		  def ws = [7,9,10,5,8,4,2,1,6,3,7,9,10,5,8,4,2];
		  def ss = [1,0,''X'',9,8,7,6,5,4,3,2];
		  String str = ''0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ'';
		  def code=D_GUAR_CERT_NUM;
		  def aRegex = /^[1-9]\d{5}(190[1-9]|19[1-9][0-9]|20[0-9]{2})((0[1-9])|(10|11|12))(([0-2][1-9])|10|20|30|31)\d{3}[0-9Xx]$/
		  def matcher = code =~ aRegex
 		 matcher.matches();
if(matcher.getCount()==1){
		 int sum = 0;
		 if (isEmpty(code) || code.length() < 17) {
            return false
        }
        for (int i = 0; i < 17; i++){
         sum += str.indexOf(code.getAt(i)).toInteger() * ws.getAt(i).toInteger();
		 }
        def c9 = (sum%11);    
		c9= (c9==2?''X'':ss.getAt(c9));
		def matcher1 = code[0..17] =~ aRegex;
       	 matcher1.matches();
        if (matcher1.getCount()!=0 && code.getAt(17).toString()==c9.toString()) {
             return  true
        }else{
             return  false

        }
}else{
		return  false
}

}
return true', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'admin', '20200119', '20200119171000', null, null, null, '063a51c208ec4c22a80d169211e92ab2', null, null, 'mbtrule', '1');

insert into gp_qc_rule (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, EXISTS_SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_510_DI0000401_5', '20200305', 'TESTCORP', '72', '002', null, null, '其他债务人段的组织机构代码应符合如下规则：应由8位数字（或大写拉丁字母）以及1位数字（或大写拉丁字母）组成；校验位应满足校验规则（参见国标《全国组织机构代码编制规则》（GB11714-1997））。', '其他债务人段的组织机构代码应符合如下规则：应由8位数字（或大写拉丁字母）以及1位数字（或大写拉丁字母）组成；校验位应满足校验规则（参见国标《全国组织机构代码编制规则》（GB11714-1997））。', null, 'BUSI', 'DATA_ID', null, null, 'Y', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 
'if(D_INFO_ID_TYPE =="2" &&  D_GUAR_CERT_TYPE=="30"){

        def code=D_GUAR_CERT_NUM;
        def ws = [3, 7, 9, 10, 5, 8, 4, 2];
        String str = ''0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ'';
        def reg = /^([0-9A-Z]){8}[0-9|X]$/;
      String tmp = code.toUpperCase();

        if (isEmpty(tmp) || tmp.length() != 9) {
              return false
            }
        int sum = 0;
		if (isEmpty(code) || code.length() < 8) {
            return false
        }
        for (int i = 0; i < 8; i++){
         sum += str.indexOf(code.getAt(i)).toInteger() * ws.getAt(i).toInteger();}
        def c9 = 11 - (sum%11);
        c9 = (c9.toInteger() ==11?0:c9)
        c9 = (c9.toInteger() == 10 ? ''X'' : c9 )
        def matcher = code[0..8] =~ reg;
        matcher.matches();
        if (matcher.getCount()!=0 && code.getAt(8).toString()==c9.toString()) {
            return true
        }else{
            return false
        }
    }
      return true', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1abe69a0b299409b8f6bb7f6fb1b9612', null, null, 'mbtrule', '1');

insert into gp_qc_rule (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, EXISTS_SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_510_EI0000401_5', '20200305', 'TESTCORP', '72', '002', null, null, '抵押物信息段的组织机构代码应符合如下规则：应由8位数字（或大写拉丁字母）以及1位数字（或大写拉丁字母）组成；校验位应满足校验规则（参见国标《全国组织机构代码编制规则》（GB11714-1997））。', '抵押物信息段的组织机构代码应符合如下规则：应由8位数字（或大写拉丁字母）以及1位数字（或大写拉丁字母）组成；校验位应满足校验规则（参见国标《全国组织机构代码编制规则》（GB11714-1997））。', null, 'BUSI', 'DATA_ID', null, null, 'Y', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 
'if(E_PLEDGOR_TYPE =="2" &&  E_PLEOR_CERT_TYPE=="30"){

        def code=E_PLEOR_CERT_NUM;
        def ws = [3, 7, 9, 10, 5, 8, 4, 2];
        String str = ''0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ'';
        def reg = /^([0-9A-Z]){8}[0-9|X]$/;
      String tmp = code.toUpperCase();

        if (isEmpty(tmp) || tmp.length() != 9) {
              return false
            }
        int sum = 0;
		if (isEmpty(code) || code.length() < 8) {
            return false
        }
        for (int i = 0; i < 8; i++){
         sum += str.indexOf(code.getAt(i)).toInteger() * ws.getAt(i).toInteger();}
        def c9 = 11 - (sum%11);
        c9 = (c9.toInteger() ==11?0:c9)
        c9 = (c9.toInteger() == 10 ? ''X'' : c9 )
        def matcher = code[0..8] =~ reg;
        matcher.matches();
        if (matcher.getCount()!=0 && code.getAt(8).toString()==c9.toString()) {
            return true
        }else{
            return false
        }
    }
      return true', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1abe69a0b299409b8f6bb7f6fb1b9612', null, null, 'mbtrule', '1');

insert into gp_qc_rule (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, EXISTS_SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_510_DI0000401_6', '20200305', 'TESTCORP', '72', '002', null, null, '其他债务人段的统一社会信用代码应符合如下规则：
应由18位数字或大写英文字母（不使用I、O、Z、S、V）组成；
第1位和第2位应为有效的登记管理部分代码和机构分类代码；
第9-17位应符合组织机构代码规则；
校验位应符合校验规则（参见国标《法人和其他组织统一社会信用代码编码规则》（GB32100-2015））。', '其他债务人段的统一社会信用代码应符合如下规则：
应由18位数字或大写英文字母（不使用I、O、Z、S、V）组成；
第1位和第2位应为有效的登记管理部分代码和机构分类代码；
第9-17位应符合组织机构代码规则；
校验位应符合校验规则（参见国标《法人和其他组织统一社会信用代码编码规则》（GB32100-2015））。', null, 'BUSI', 'DATA_ID', null, null, 'Y', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'if (D_INFO_ID_TYPE =="2" &&  D_GUAR_CERT_TYPE=="20"){
String str = D_GUAR_CERT_NUM;
def firstarray = [''0'', ''1'', ''2'', ''3'', ''4'', ''5'', ''6'', ''7'', ''8'', ''9'', ''A'', ''B'', ''C'', ''D'', ''E'', ''F'', ''G'', ''H'', ''I'', ''J'', ''K'', ''L'', ''M'', ''N'', ''O'', ''P'', ''Q'', ''R'', ''S'', ''T'', ''U'', ''V'', ''W'', ''X'', ''Y'', ''Z''];
def firstkeys = [3, 7, 9, 10, 5, 8, 4, 2];
def  secondarray = [''0'', ''1'', ''2'', ''3'', ''4'', ''5'', ''6'', ''7'', ''8'', ''9'', ''A'', ''B'', ''C'', ''D'', ''E'', ''F'', ''G'', ''H'', ''J'', ''K'', ''L'', ''M'', ''N'', ''P'', ''Q'', ''R'', ''T'', ''U'', ''W'', ''X'', ''Y''];
def secondkeys = [1, 3, 9, 27, 19, 26, 16, 17, 20, 29, 25, 13, 8, 24, 10, 30, 28];
String code = str.toUpperCase();
        if (isEmpty(code) || code.length() != 18) {
            return false;
        }
        def reg = /^[1-9]|[ABCDEFGY]$/;
        def matcher = str.getAt(0) =~ reg;
        matcher.matches()
        if(matcher.getCount()==0){
            return false;
        }
        def reg1 = /^[1,2,3,9]$/;
        matcher = str.getAt(1) =~ reg1
          matcher.matches()
          if(matcher.getCount()==0){
            return false;
        }
        def reg2 = /^\d{6}$/;
        matcher = str[2..7] =~ reg2
        matcher.matches()
        if(matcher.getCount()==0){
            return false;
        }
        int count = 0;
        for (int i = 0; i < firstkeys.size(); i++) {
            def a = code[i+8];
            count += firstkeys[i].toInteger() * firstarray.indexOf(a).toInteger();
        }
        int remainder = count % 11;
        int  firstkey= (remainder == 0 ? 0 : 11 - remainder);
        def firstword;
        if (firstkey < 10) {
            firstword = firstkey;
        }
        if (firstkey == 10) {
            firstword = ''X'';
        } else if (firstkey == 11) {
            firstword = ''0'';
        }

        if (!(""+firstword).equals(code[16])) {
            return false;
        }
         count = 0;
        for (int i = 0; i < secondkeys.size(); i++) {
            def a = code[i];
            count += secondkeys[i].toInteger() * secondarray.indexOf(a).toInteger();
        }
         remainder = count % 31;
         int secondkey = (remainder == 0 ? 0 : 31 - remainder);

        def secondword = secondarray[secondkey];
        if (!secondword || !(""+secondword).equals(code[17])) {
            return false;
        }

}
        return true;', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1abe69a0b299409b8f6bb7f6fb1b9612', null, null, 'mbtrule', '1');

insert into gp_qc_rule (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, EXISTS_SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_510R510010202R510010203R510010204', '20190530', 'TESTCORP', '72', '002', null, null, '当“合同类型”为“2-质押合同”时，记录中必须有质押信息段且不能包含抵押信息段.', '当“合同类型”为“2-质押合同”时，记录中必须有质押信息段且不能包含抵押信息段.', null, 'BUSI', 'DATA_ID', null, null, 'Y', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 
'if (C_GUAR_TYPE == "2" & B_RPT_DATE_CODE != "20") {
    if (!isEmpty(IS_RPT) && IS_RPT.length()>=6 && IS_RPT.substring(4,6) == "01") {
        return true
    }
    return false
}
return true', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '56c7ac775f0c4def960b67cce06e2f4f', null, null, 'mbtrule', '1');

insert into gp_qc_rule (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, EXISTS_SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_510R5100101R510010101R510010102', '20190530', 'TESTCORP', '72', '002', null, null, '当抵(质)押合同信息记录上报时，基础段、基本信息段必须出现。', '当抵(质)押合同信息记录上报时，基础段、基本信息段必须出现。', null, 'BUSI', 'DATA_ID', null, null, 'Y', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null,
 'if (!isEmpty(IS_RPT) && IS_RPT.length()>=6 && IS_RPT.substring(4,5) == "1" || IS_RPT.substring(5,6) == "1") {
    if (IS_RPT.substring(0,2) == "11") {
        return true
    }
    return false
}
return true', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'bbe58f0aa5ed4120862735c10d463953', null, null, 'mbtrule', '1');

insert into gp_qc_rule (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, EXISTS_SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_510_EI0000401_1', '20200305', 'TESTCORP', '72', '2', null, null, '抵押物信息段的公民身份证号码则应符合如下规则：长度必须为18位；前17位为数字，第18位可为数字或字母“X”、“x”；第7-14位为出生日期，日期必须在19010101-20991231之间；校验位必须满足校验规则（参见国标《公民身份号码》（GB11643-1999））。', '抵押物信息段的公民身份证号码则应符合如下规则：长度必须为18位；前17位为数字，第18位可为数字或字母“X”、“x”；第7-14位为出生日期，日期必须在19010101-20991231之间；校验位必须满足校验规则（参见国标《公民身份号码》（GB11643-1999））。', null, 'BUSI', 'DATA_ID', null, null, 'Y', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null,
 'if(E_PLEDGOR_TYPE =="1" &&  E_PLEOR_CERT_TYPE=="10"){
        def ws = [7,9,10,5,8,4,2,1,6,3,7,9,10,5,8,4,2];
        def ss = [1,0,''X'',9,8,7,6,5,4,3,2];
        String str = ''0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ'';
        def code=E_PLEOR_CERT_NUM;
        def aRegex = /^[1-9]\d{5}(190[1-9]|19[1-9][0-9]|20[0-9]{2})((0[1-9])|(10|11|12))(([0-2][1-9])|10|20|30|31)\d{3}[0-9Xx]$/
        def matcher = code =~ aRegex
        matcher.matches()
if(matcher.getCount()==1){
		 int sum = 0;
		 if (isEmpty(code) || code.length() < 17) {
            return false
        }
        for (int i = 0; i < 17; i++){
         sum += str.indexOf(code.getAt(i)).toInteger() * ws.getAt(i).toInteger();
		 }
        def c9 = (sum%11);    
		c9= (c9==2?''X'':ss.getAt(c9));
		def matcher1 = code[0..17] =~ aRegex;
       	 matcher1.matches();
        if (matcher1.getCount()!=0 && code.getAt(17).toString()==c9.toString()) {
             return  true
        }else{
             return  false

        }
}else{
		return  false
}

}
return true', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'admin', '20200119', '20200119171000', null, null, null, '063a51c208ec4c22a80d169211e92ab2', null, null, 'mbtrule', '1');

insert into gp_qc_rule (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, EXISTS_SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_510_FI0000401_6', '20200305', 'TESTCORP', '72', '002', null, null, '质物信息段的统一社会信用代码应符合如下规则：
应由18位数字或大写英文字母（不使用I、O、Z、S、V）组成；
第1位和第2位应为有效的登记管理部分代码和机构分类代码；
第9-17位应符合组织机构代码规则；
校验位应符合校验规则（参见国标《法人和其他组织统一社会信用代码编码规则》（GB32100-2015））。', '质物信息段的统一社会信用代码应符合如下规则：
应由18位数字或大写英文字母（不使用I、O、Z、S、V）组成；
第1位和第2位应为有效的登记管理部分代码和机构分类代码；
第9-17位应符合组织机构代码规则；
校验位应符合校验规则（参见国标《法人和其他组织统一社会信用代码编码规则》（GB32100-2015））。', null, 'BUSI', 'DATA_ID', null, null, 'Y', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 
'if (F_IPPC =="2" &&  F_PAWN_CERT_TYPE=="20"){
String str = F_PAWN_CERT_NUM;
def firstarray = [''0'', ''1'', ''2'', ''3'', ''4'', ''5'', ''6'', ''7'', ''8'', ''9'', ''A'', ''B'', ''C'', ''D'', ''E'', ''F'', ''G'', ''H'', ''I'', ''J'', ''K'', ''L'', ''M'', ''N'', ''O'', ''P'', ''Q'', ''R'', ''S'', ''T'', ''U'', ''V'', ''W'', ''X'', ''Y'', ''Z''];
def firstkeys = [3, 7, 9, 10, 5, 8, 4, 2];
def  secondarray = [''0'', ''1'', ''2'', ''3'', ''4'', ''5'', ''6'', ''7'', ''8'', ''9'', ''A'', ''B'', ''C'', ''D'', ''E'', ''F'', ''G'', ''H'', ''J'', ''K'', ''L'', ''M'', ''N'', ''P'', ''Q'', ''R'', ''T'', ''U'', ''W'', ''X'', ''Y''];
def secondkeys = [1, 3, 9, 27, 19, 26, 16, 17, 20, 29, 25, 13, 8, 24, 10, 30, 28];
String code = str.toUpperCase();
        if (isEmpty(code) || code.length() != 18) {
            return false;
        }
        def reg = /^[1-9]|[ABCDEFGY]$/;
        def matcher = str.getAt(0) =~ reg;
        matcher.matches()
        if(matcher.getCount()==0){
            return false;
        }
        def reg1 = /^[1,2,3,9]$/;
        matcher = str.getAt(1) =~ reg1
          matcher.matches()
          if(matcher.getCount()==0){
            return false;
        }
        def reg2 = /^\d{6}$/;
        matcher = str[2..7] =~ reg2
        matcher.matches()
        if(matcher.getCount()==0){
            return false;
        }
        int count = 0;
        for (int i = 0; i < firstkeys.size(); i++) {
            def a = code[i+8];
            count += firstkeys[i].toInteger() * firstarray.indexOf(a).toInteger();
        }
        int remainder = count % 11;
        int  firstkey= (remainder == 0 ? 0 : 11 - remainder);
        def firstword;
        if (firstkey < 10) {
            firstword = firstkey;
        }
        if (firstkey == 10) {
            firstword = ''X'';
        } else if (firstkey == 11) {
            firstword = ''0'';
        }

        if (!(""+firstword).equals(code[16])) {
            return false;
        }
         count = 0;
        for (int i = 0; i < secondkeys.size(); i++) {
            def a = code[i];
            count += secondkeys[i].toInteger() * secondarray.indexOf(a).toInteger();
        }
         remainder = count % 31;
         int secondkey = (remainder == 0 ? 0 : 31 - remainder);

        def secondword = secondarray[secondkey];
        if (!secondword || !(""+secondword).equals(code[17])) {
            return false;
        }

}
        return true;', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1abe69a0b299409b8f6bb7f6fb1b9612', null, null, 'mbtrule', '1');

insert into gp_qc_rule (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, EXISTS_SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_510_FI0000401_5', '20200305', 'TESTCORP', '72', '002', null, null, '质物信息段的组织机构代码应符合如下规则：应由8位数字（或大写拉丁字母）以及1位数字（或大写拉丁字母）组成；校验位应满足校验规则（参见国标《全国组织机构代码编制规则》（GB11714-1997））。', '质物信息段的组织机构代码应符合如下规则：应由8位数字（或大写拉丁字母）以及1位数字（或大写拉丁字母）组成；校验位应满足校验规则（参见国标《全国组织机构代码编制规则》（GB11714-1997））。', null, 'BUSI', 'DATA_ID', null, null, 'Y', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null,
 'if(F_IPPC =="2" &&  F_PAWN_CERT_TYPE=="30"){
        def code=F_PAWN_CERT_NUM;
        def ws = [3, 7, 9, 10, 5, 8, 4, 2];
        String str = ''0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ'';
        def reg = /^([0-9A-Z]){8}[0-9|X]$/;
      String tmp = code.toUpperCase();

        if (isEmpty(tmp) || tmp.length() != 9) {
              return false
            }
        int sum = 0;
		if (isEmpty(code) || code.length() < 8) {
            return false
        }
        for (int i = 0; i < 8; i++){
         sum += str.indexOf(code.getAt(i)).toInteger() * ws.getAt(i).toInteger();}
        def c9 = 11 - (sum%11);
        c9 = (c9.toInteger() ==11?0:c9)
        c9 = (c9.toInteger() == 10 ? ''X'' : c9 )
        def matcher = code[0..8] =~ reg;
        matcher.matches();
        if (matcher.getCount()!=0 && code.getAt(8).toString()==c9.toString()) {
            return true
        }else{
            return false
        }
    }
      return true', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1abe69a0b299409b8f6bb7f6fb1b9612', null, null, 'mbtrule', '1');

insert into gp_qc_rule (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, EXISTS_SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_510I0000401_5', '20200217', 'TESTCORP', '72', '002', null, null, ' 组织机构代码应符合如下规则：应由8位数字（或大写拉丁字母）以及1位数字（或大写拉丁字母）组成；校验位应满足校验规则（参见国标《全国组织机构代码编制规则》（GB11714-1997））。
', ' 组织机构代码应符合如下规则：应由8位数字（或大写拉丁字母）以及1位数字（或大写拉丁字母）组成；校验位应满足校验规则（参见国标《全国组织机构代码编制规则》（GB11714-1997））。
', null, 'BUSI', 'DATA_ID', null, null, 'Y', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 
' if(MBT_510_B_CERT_TYPE=="30" &&  MBT_510_B_INFO_ID_TYPE=="2"){

        def code=MBT_510_B_CERT_NUM;
        String tmp = code.toUpperCase();

        if (isEmpty(tmp) || tmp.length() != 9) {
              return false
            }
        def ws = [3, 7, 9, 10, 5, 8, 4, 2];
        String str = ''0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ'';
        def reg = /^([0-9A-Z]){8}[0-9|X]$/;
        int sum = 0;
		if (isEmpty(code) || code.length() < 8) {
            return false
        }
        for (int i = 0; i < 8; i++){
         sum += str.indexOf(code.getAt(i)).toInteger() * ws.getAt(i).toInteger();}
        def c9 = 11 - (sum%11);
        c9 = (c9.toInteger() ==11?0:c9)
        c9 = (c9.toInteger() == 10 ? ''X'' : c9 )
        def matcher = code[0..8] =~ reg;
        matcher.matches();
        if (matcher.getCount()!=0 && code.getAt(8).toString()==c9.toString()) {
            return true
        }else{
            return false
        }
    }
      return true', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1abe69a0b299409b8f6bb7f6fb1b9612', null, null, 'mbtrule', '1');
insert into gp_qc_rule (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, EXISTS_SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_610I0000401_1', '20200217', 'TESTCORP', '72', '002', null, null, ' 组织机构代码应符合如下规则：应由8位数字（或大写拉丁字母）以及1位数字（或大写拉丁字母）组成；校验位应满足校验规则（参见国标《全国组织机构代码编制规则》（GB11714-1997））。
', ' 组织机构代码应符合如下规则：应由8位数字（或大写拉丁字母）以及1位数字（或大写拉丁字母）组成；校验位应满足校验规则（参见国标《全国组织机构代码编制规则》（GB11714-1997））。
', null, 'BUSI', 'DATA_ID', null, null, 'Y', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 
' if(B_ENT_CERT_TYPE=="30"){

        def code=B_ENT_CERT_NUM;
        String tmp = code.toUpperCase();

        if (isEmpty(tmp) || tmp.length() != 9) {
              return false
            }
        def ws = [3, 7, 9, 10, 5, 8, 4, 2];
        String str = ''0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ'';
        def reg = /^([0-9A-Z]){8}[0-9|X]$/;
        int sum = 0;
		if (isEmpty(code) || code.length() < 8) {
            return false
        }
        for (int i = 0; i < 8; i++){
         sum += str.indexOf(code.getAt(i)).toInteger() * ws.getAt(i).toInteger();}
        def c9 = 11 - (sum%11);
        c9 = (c9.toInteger() ==11?0:c9)
        c9 = (c9.toInteger() == 10 ? ''X'' : c9 )
        def matcher = code[0..8] =~ reg;
        matcher.matches();
        if (matcher.getCount()!=0 && code.getAt(8).toString()==c9.toString()) {
            return true
        }else{
            return false
        }
    }
      return true
', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1abe69a0b299409b8f6bb7f6fb1b9612', null, null, 'mbtrule', '1');

insert into gp_qc_rule (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, EXISTS_SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_610I0000401_2', '20200217', 'TESTCORP', '72', '002', null, null, '统一社会信用代码应符合如下规则：
应由18位数字或大写英文字母（不使用I、O、Z、S、V）组成；
第1位和第2位应为有效的登记管理部分代码和机构分类代码；
第9-17位应符合组织机构代码规则；
校验位应符合校验规则（参见国标《法人和其他组织统一社会信用代码编码规则》（GB32100-2015））。', '统一社会信用代码应符合如下规则：
应由18位数字或大写英文字母（不使用I、O、Z、S、V）组成；
第1位和第2位应为有效的登记管理部分代码和机构分类代码；
第9-17位应符合组织机构代码规则；
校验位应符合校验规则（参见国标《法人和其他组织统一社会信用代码编码规则》（GB32100-2015））。', null, 'BUSI', 'DATA_ID', null, null, 'Y', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 
'if (B_ENT_CERT_TYPE=="20"){
String str = B_ENT_CERT_NUM;
def firstarray = [''0'', ''1'', ''2'', ''3'', ''4'', ''5'', ''6'', ''7'', ''8'', ''9'', ''A'', ''B'', ''C'', ''D'', ''E'', ''F'', ''G'', ''H'', ''I'', ''J'', ''K'', ''L'', ''M'', ''N'', ''O'', ''P'', ''Q'', ''R'', ''S'', ''T'', ''U'', ''V'', ''W'', ''X'', ''Y'', ''Z''];
def firstkeys = [3, 7, 9, 10, 5, 8, 4, 2];
def  secondarray = [''0'', ''1'', ''2'', ''3'', ''4'', ''5'', ''6'', ''7'', ''8'', ''9'', ''A'', ''B'', ''C'', ''D'', ''E'', ''F'', ''G'', ''H'', ''J'', ''K'', ''L'', ''M'', ''N'', ''P'', ''Q'', ''R'', ''T'', ''U'', ''W'', ''X'', ''Y''];
def secondkeys = [1, 3, 9, 27, 19, 26, 16, 17, 20, 29, 25, 13, 8, 24, 10, 30, 28];
String code = str.toUpperCase();
        if (isEmpty(code) || code.length() != 18) {
            return false;
        }
        def reg = /^[1-9]|[ABCDEFGY]$/;
        def matcher = str.getAt(0) =~ reg;
        matcher.matches()
        if(matcher.getCount()==0){
            return false;
        }
        def reg1 = /^[1,2,3,9]$/;
        matcher = str.getAt(1) =~ reg1
          matcher.matches()
          if(matcher.getCount()==0){
            return false;
        }
        def reg2 = /^\d{6}$/;
        matcher = str[2..7] =~ reg2
        matcher.matches()
        if(matcher.getCount()==0){
            return false;
        }
        int count = 0;
        for (int i = 0; i < firstkeys.size(); i++) {
            def a = code[i+8];
            count += firstkeys[i].toInteger() * firstarray.indexOf(a).toInteger();
        }
        int remainder = count % 11;
        int  firstkey= (remainder == 0 ? 0 : 11 - remainder);
        def firstword;
        if (firstkey < 10) {
            firstword = firstkey;
        }
        if (firstkey == 10) {
            firstword = ''X'';
        } else if (firstkey == 11) {
            firstword = ''0'';
        }

        if (!(""+firstword).equals(code[16])) {
            return false;
        }
         count = 0;
        for (int i = 0; i < secondkeys.size(); i++) {
            def a = code[i];
            count += secondkeys[i].toInteger() * secondarray.indexOf(a).toInteger();
        }
         remainder = count % 31;
         int secondkey = (remainder == 0 ? 0 : 31 - remainder);

        def secondword = secondarray[secondkey];
        if (!secondword || !(""+secondword).equals(code[17])) {
            return false;
        }

}
        return true;', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1abe69a0b299409b8f6bb7f6fb1b9612', null, null, 'mbtrule', '1');
