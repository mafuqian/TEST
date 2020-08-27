-- gp_QC_rule表公民身份证校验修改
delete GP_QC_RULE where DATA_ID in (
'MBT_510_EI0000401_1',
'MBT_110_CI0000401_1',
'MBT_220_CI0000401_1',
'MBT_230I0000401_1',
'MBT_510I0000401_1',
'MBT_220I0000401_1',
'MBT_310_EI0000401_1',
'MBT_310_FI0000401_1',
'MBT_510_FI0000401_1',
'MBT_110I0000401_110I0000401_11001',
'MBT_210_DI0000401_1',
'MBT_130_I0000401_01',
'MBT_230_EI0000401_1',
'MBT_210I0000401_1');

insert into GP_QC_RULE (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5) values ('MBT_220I0000401_1', '20190610', 'TESTCORP', '72', '2', null, null, '公民身份证号码则应符合如下规则：长度必须为18位；
前17位为数字，第18位可为数字或字母“X”、“x”；
第7-14位为出生日期，日期必须在19010101-20991231之间；
校验位必须满足校验规则（参见国标《公民身份号码》（GB11643-1999））。', '公民身份证号码则应符合如下规则：长度必须为18位；
前17位为数字，第18位可为数字或字母“X”、“x”；
第7-14位为出生日期，日期必须在19010101-20991231之间；
校验位必须满足校验规则（参见国标《公民身份号码》（GB11643-1999））。', null, 'BUSI', 'DATA_ID', null, null, 'Y', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'if(MBT_220_B_ID_TYPE=="10"){
		  def ws = [7,9,10,5,8,4,2,1,6,3,7,9,10,5,8,4,2];
		  def ss = [1,0,''X'',9,8,7,6,5,4,3,2];
		  String str = ''0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ'';
		  def code=MBT_220_B_ID_NUM;
		  def aRegex = /^[1-9]\d{5}(190[1-9]|19[1-9][0-9]|20[0-9]{2})((0[1-9])|(10|11|12))(([0-2][1-9])|10|20|30|31)\d{3}[0-9Xx]$/
		  def matcher = code =~ aRegex
 		 matcher.matches();
if(matcher.getCount()==1){
		 int sum = 0;
        for (int i = 0; i < 17; i++){
         sum += str.indexOf(code.getAt(i)).toInteger() * ws.getAt(i).toInteger();
		 }
        def c9 = (sum%11);    
		c9= c9==2?''X'':ss.getAt(c9).toInteger();
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
insert into GP_QC_RULE (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5) values ('MBT_310_EI0000401_1', '20200305', 'TESTCORP', '72', '2', null, null, '主要组成人段的公民身份证号码则应符合如下规则：长度必须为18位；
前17位为数字，第18位可为数字或字母“X”、“x”；
第7-14位为出生日期，日期必须在19010101-20991231之间；
校验位必须满足校验规则（参见国标《公民身份号码》（GB11643-1999））。', '主要组成人段的公民身份证号码则应符合如下规则：长度必须为18位；
前17位为数字，第18位可为数字或字母“X”、“x”；
第7-14位为出生日期，日期必须在19010101-20991231之间；
校验位必须满足校验规则（参见国标《公民身份号码》（GB11643-1999））。', null, 'BUSI', 'DATA_ID', null, null, 'Y', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'if(MMB_ID_TYPE=="10"){
	def aRegex = /^[1-9]\d{5}(190[1-9]|19[1-9][0-9]|20[0-9]{2})((0[1-9])|(10|11|12))(([0-2][1-9])|10|20|30|31)\d{3}[0-9Xx]$/
def matcher = MMB_ID_NUM =~ aRegex
matcher.matches()
if(matcher.getCount()==1){
		return  true
}else{
		return  false
}

}
return true', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'admin', '20200119', '20200119171000', null, null, null, null, null, null, 'mbtrule', '1');
insert into GP_QC_RULE (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5) values ('MBT_510_EI0000401_1', '20200305', 'TESTCORP', '72', '2', null, null, '抵押物信息段的公民身份证号码则应符合如下规则：长度必须为18位；前17位为数字，第18位可为数字或字母“X”、“x”；第7-14位为出生日期，日期必须在19010101-20991231之间；校验位必须满足校验规则（参见国标《公民身份号码》（GB11643-1999））。', '抵押物信息段的公民身份证号码则应符合如下规则：长度必须为18位；前17位为数字，第18位可为数字或字母“X”、“x”；第7-14位为出生日期，日期必须在19010101-20991231之间；校验位必须满足校验规则（参见国标《公民身份号码》（GB11643-1999））。', null, 'BUSI', 'DATA_ID', null, null, 'Y', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'if(E_PLEDGOR_TYPE =="1" &&  E_PLEOR_CERT_TYPE=="10"){
        def ws = [7,9,10,5,8,4,2,1,6,3,7,9,10,5,8,4,2];
        def ss = [1,0,''X'',9,8,7,6,5,4,3,2];
        String str = ''0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ'';
        def code=E_PLEOR_CERT_NUM;
        def aRegex = /^[1-9]\d{5}(190[1-9]|19[1-9][0-9]|20[0-9]{2})((0[1-9])|(10|11|12))(([0-2][1-9])|10|20|30|31)\d{3}[0-9Xx]$/
        def matcher = code =~ aRegex
        matcher.matches()
if(matcher.getCount()==1){
		 int sum = 0;
        for (int i = 0; i < 17; i++){
         sum += str.indexOf(code.getAt(i)).toInteger() * ws.getAt(i).toInteger();
		 }
        def c9 = (sum%11);    
		c9= c9==2?''X'':ss.getAt(c9).toInteger();
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
insert into GP_QC_RULE (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5) values ('MBT_110_CI0000401_1', '20200303', 'TESTCORP', '72', '2', null, null, '其他标识段的公民身份证号码则应符合如下规则：长度必须为18位；前17位为数字，第18位可为数字或字母“X”、“x”；第7-14位为出生日期，日期必须在19010101-20991231之间；校验位必须满足校验规则（参见国标《公民身份号码》（GB11643-1999））。', '其他标识段的公民身份证号码则应符合如下规则：长度必须为18位；前17位为数字，第18位可为数字或字母“X”、“x”；第7-14位为出生日期，日期必须在19010101-20991231之间；校验位必须满足校验规则（参见国标《公民身份号码》（GB11643-1999））。', null, 'BUSI', 'DATA_ID', null, null, 'Y', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'if(OTH_ID_TYPE=="10"){
		  def ws = [7,9,10,5,8,4,2,1,6,3,7,9,10,5,8,4,2];
		  def ss = [1,0,''X'',9,8,7,6,5,4,3,2];
		  String str = ''0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ'';
		  def code=OTH_ID_NUM;
		  def aRegex = /^[1-9]\d{5}(190[1-9]|19[1-9][0-9]|20[0-9]{2})((0[1-9])|(10|11|12))(([0-2][1-9])|10|20|30|31)\d{3}[0-9Xx]$/
		  def matcher = code =~ aRegex
 		 matcher.matches();
if(matcher.getCount()==1){
		 int sum = 0;
        for (int i = 0; i < 17; i++){
         sum += str.indexOf(code.getAt(i)).toInteger() * ws.getAt(i).toInteger();
		 }
        def c9 = (sum%11);    
		c9= c9==2?''X'':ss.getAt(c9).toInteger();
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
insert into GP_QC_RULE (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5) values ('MBT_310_FI0000401_1', '20200305', 'TESTCORP', '72', '2', null, null, '主要出资人段的公民身份证号码则应符合如下规则：长度必须为18位；前17位为数字，第18位可为数字或字母“X”、“x”；第7-14位为出生日期，日期必须在19010101-20991231之间；校验位必须满足校验规则（参见国标《公民身份号码》（GB11643-1999））。', '主要出资人段的公民身份证号码则应符合如下规则：长度必须为18位；前17位为数字，第18位可为数字或字母“X”、“x”；第7-14位为出生日期，日期必须在19010101-20991231之间；校验位必须满足校验规则（参见国标《公民身份号码》（GB11643-1999））。', null, 'BUSI', 'DATA_ID', null, null, 'Y', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'if(SHAR_HOD_CERT_TYPE =="1" &&  SHAR_HOD_ID_TYPE=="10"){
		  def ws = [7,9,10,5,8,4,2,1,6,3,7,9,10,5,8,4,2];
		  def ss = [1,0,''X'',9,8,7,6,5,4,3,2];
		  String str = ''0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ'';
		  def code=SHAR_HOD_ID_NUM;
		  def aRegex = /^[1-9]\d{5}(190[1-9]|19[1-9][0-9]|20[0-9]{2})((0[1-9])|(10|11|12))(([0-2][1-9])|10|20|30|31)\d{3}[0-9Xx]$/
		  def matcher = code =~ aRegex
 		 matcher.matches();
if(matcher.getCount()==1){
		 int sum = 0;
        for (int i = 0; i < 17; i++){
         sum += str.indexOf(code.getAt(i)).toInteger() * ws.getAt(i).toInteger();
		 }
        def c9 = (sum%11);    
		c9= c9==2?''X'':ss.getAt(c9).toInteger();
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
insert into GP_QC_RULE (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5) values ('MBT_510_FI0000401_1', '20200305', 'TESTCORP', '72', '2', null, null, '质物信息段的公民身份证号码则应符合如下规则：长度必须为18位；前17位为数字，第18位可为数字或字母“X”、“x”；第7-14位为出生日期，日期必须在19010101-20991231之间；校验位必须满足校验规则（参见国标《公民身份号码》（GB11643-1999））。', '质物信息段的公民身份证号码则应符合如下规则：长度必须为18位；前17位为数字，第18位可为数字或字母“X”、“x”；第7-14位为出生日期，日期必须在19010101-20991231之间；校验位必须满足校验规则（参见国标《公民身份号码》（GB11643-1999））。', null, 'BUSI', 'DATA_ID', null, null, 'Y', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'if(F_IPPC =="1" &&  F_PAWN_CERT_TYPE=="10"){
		  def ws = [7,9,10,5,8,4,2,1,6,3,7,9,10,5,8,4,2];
		  def ss = [1,0,''X'',9,8,7,6,5,4,3,2];
		  String str = ''0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ'';
		  def code=F_PAWN_CERT_NUM;
		  def aRegex = /^[1-9]\d{5}(190[1-9]|19[1-9][0-9]|20[0-9]{2})((0[1-9])|(10|11|12))(([0-2][1-9])|10|20|30|31)\d{3}[0-9Xx]$/
		  def matcher = code =~ aRegex
 		 matcher.matches();
if(matcher.getCount()==1){
		 int sum = 0;
        for (int i = 0; i < 17; i++){
         sum += str.indexOf(code.getAt(i)).toInteger() * ws.getAt(i).toInteger();
		 }
        def c9 = (sum%11);    
		c9= c9==2?''X'':ss.getAt(c9).toInteger();
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
insert into GP_QC_RULE (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5) values ('MBT_230I0000401_1', '20190610', 'TESTCORP', '72', '2', null, null, '公民身份证号码则应符合如下规则：长度必须为18位；
前17位为数字，第18位可为数字或字母“X”、“x”；
第7-14位为出生日期，日期必须在19010101-20991231之间；
校验位必须满足校验规则（参见国标《公民身份号码》（GB11643-1999））。', '公民身份证号码则应符合如下规则：长度必须为18位；
前17位为数字，第18位可为数字或字母“X”、“x”；
第7-14位为出生日期，日期必须在19010101-20991231之间；
校验位必须满足校验规则（参见国标《公民身份号码》（GB11643-1999））。', null, 'BUSI', 'DATA_ID', null, null, 'Y', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'if(MBT_230_B_ID_TYPE=="10"){
		  def ws = [7,9,10,5,8,4,2,1,6,3,7,9,10,5,8,4,2];
		  def ss = [1,0,''X'',9,8,7,6,5,4,3,2];
		  String str = ''0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ'';
		  def code=MBT_230_B_ID_NUM;
		  def aRegex = /^[1-9]\d{5}(190[1-9]|19[1-9][0-9]|20[0-9]{2})((0[1-9])|(10|11|12))(([0-2][1-9])|10|20|30|31)\d{3}[0-9Xx]$/
		  def matcher = code =~ aRegex
 		 matcher.matches();
if(matcher.getCount()==1){
		 int sum = 0;
        for (int i = 0; i < 17; i++){
         sum += str.indexOf(code.getAt(i)).toInteger() * ws.getAt(i).toInteger();
		 }
        def c9 = (sum%11);    
		c9= c9==2?''X'':ss.getAt(c9).toInteger();
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
insert into GP_QC_RULE (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5) values ('MBT_510I0000401_1', '20190610', 'TESTCORP', '72', '2', null, null, '公民身份证号码则应符合如下规则：长度必须为18位；
前17位为数字，第18位可为数字或字母“X”、“x”；
第7-14位为出生日期，日期必须在19010101-20991231之间；
校验位必须满足校验规则（参见国标《公民身份号码》（GB11643-1999））。', '公民身份证号码则应符合如下规则：长度必须为18位；
前17位为数字，第18位可为数字或字母“X”、“x”；
第7-14位为出生日期，日期必须在19010101-20991231之间；
校验位必须满足校验规则（参见国标《公民身份号码》（GB11643-1999））。', null, 'BUSI', 'DATA_ID', null, null, 'Y', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'if(MBT_510_B_CERT_TYPE=="10" && MBT_510_B_INFO_ID_TYPE=="1"){
		  def ws = [7,9,10,5,8,4,2,1,6,3,7,9,10,5,8,4,2];
		  def ss = [1,0,''X'',9,8,7,6,5,4,3,2];
		  String str = ''0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ'';
		  def code=MBT_510_B_CERT_NUM;
		  def aRegex = /^[1-9]\d{5}(190[1-9]|19[1-9][0-9]|20[0-9]{2})((0[1-9])|(10|11|12))(([0-2][1-9])|10|20|30|31)\d{3}[0-9Xx]$/
		  def matcher = code =~ aRegex
 		 matcher.matches();
if(matcher.getCount()==1){
		 int sum = 0;
        for (int i = 0; i < 17; i++){
         sum += str.indexOf(code.getAt(i)).toInteger() * ws.getAt(i).toInteger();
		 }
        def c9 = (sum%11);    
		c9= c9==2?''X'':ss.getAt(c9).toInteger();
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
insert into GP_QC_RULE (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5) values ('MBT_220_CI0000401_1', '20200303', 'TESTCORP', '72', '2', null, null, '共同授信人信息段的公民身份证号码则应符合如下规则：长度必须为18位；前17位为数字，第18位可为数字或字母“X”、“x”；第7-14位为出生日期，日期必须在19010101-20991231之间；校验位必须满足校验规则（参见国标《公民身份号码》（GB11643-1999））。', '共同授信人信息段的公民身份证号码则应符合如下规则：长度必须为18位；前17位为数字，第18位可为数字或字母“X”、“x”；第7-14位为出生日期，日期必须在19010101-20991231之间；校验位必须满足校验规则（参见国标《公民身份号码》（GB11643-1999））。', null, 'BUSI', 'DATA_ID', null, null, 'Y', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'if(C_BRER_TYPE =="1" &&  C_CERT_REL_ID_TYPE=="10"){
		  def ws = [7,9,10,5,8,4,2,1,6,3,7,9,10,5,8,4,2];
		  def ss = [1,0,''X'',9,8,7,6,5,4,3,2];
		  String str = ''0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ'';
		  def code=C_CERT_REL_ID_NUM;
		  def aRegex = /^[1-9]\d{5}(190[1-9]|19[1-9][0-9]|20[0-9]{2})((0[1-9])|(10|11|12))(([0-2][1-9])|10|20|30|31)\d{3}[0-9Xx]$/
		  def matcher = code =~ aRegex
 		 matcher.matches();
if(matcher.getCount()==1){
		 int sum = 0;
        for (int i = 0; i < 17; i++){
         sum += str.indexOf(code.getAt(i)).toInteger() * ws.getAt(i).toInteger();
		 }
        def c9 = (sum%11);    
		c9= c9==2?''X'':ss.getAt(c9).toInteger();
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
insert into GP_QC_RULE (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5) values ('MBT_210I0000401_1', '20200214', 'TESTCORP', '72', '2', null, null, '公民身份证号码则应符合如下规则：长度必须为18位；
前17位为数字，第18位可为数字或字母“X”、“x”；
第7-14位为出生日期，日期必须在19010101-20991231之间；
校验位必须满足校验规则（参见国标《公民身份号码》（GB11643-1999））。', '公民身份证号码则应符合如下规则：长度必须为18位；
前17位为数字，第18位可为数字或字母“X”、“x”；
第7-14位为出生日期，日期必须在19010101-20991231之间；
校验位必须满足校验规则（参见国标《公民身份号码》（GB11643-1999））。', null, 'BUSI', 'DATA_ID', null, null, 'Y', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'if(MBT_210_B_ID_TYPE=="10"){
		  def ws = [7,9,10,5,8,4,2,1,6,3,7,9,10,5,8,4,2];
		  def ss = [1,0,''X'',9,8,7,6,5,4,3,2];
		  String str = ''0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ'';
		  def code=MBT_210_B_ID_NUM;
		  def aRegex = /^[1-9]\d{5}(190[1-9]|19[1-9][0-9]|20[0-9]{2})((0[1-9])|(10|11|12))(([0-2][1-9])|10|20|30|31)\d{3}[0-9Xx]$/
		  def matcher = code =~ aRegex
 		 matcher.matches();
if(matcher.getCount()==1){
		 int sum = 0;
        for (int i = 0; i < 17; i++){
         sum += str.indexOf(code.getAt(i)).toInteger() * ws.getAt(i).toInteger();
		 }
        def c9 = (sum%11);    
		c9= c9==2?''X'':ss.getAt(c9).toInteger();
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
insert into GP_QC_RULE (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5) values ('MBT_110I0000401_110I0000401_11001', '20190610', 'TESTCORP', '72', '2', null, null, '公民身份证号码则应符合如下规则：长度必须为18位；
前17位为数字，第18位可为数字或字母“X”、“x”；
第7-14位为出生日期，日期必须在19010101-20991231之间；
校验位必须满足校验规则（参见国标《公民身份号码》（GB11643-1999））。', '公民身份证号码则应符合如下规则：长度必须为18位；
前17位为数字，第18位可为数字或字母“X”、“x”；
第7-14位为出生日期，日期必须在19010101-20991231之间；
校验位必须满足校验规则（参见国标《公民身份号码》（GB11643-1999））。', null, 'BUSI', 'DATA_ID', null, null, 'Y', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'if(B_ID_TYPE=="10"){
		  def ws = [7,9,10,5,8,4,2,1,6,3,7,9,10,5,8,4,2];
		  def ss = [1,0,''X'',9,8,7,6,5,4,3,2];
		  String str = ''0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ'';
		  def code=B_ID_NUM;
		  def aRegex = /^[1-9]\d{5}(190[1-9]|19[1-9][0-9]|20[0-9]{2})((0[1-9])|(10|11|12))(([0-2][1-9])|10|20|30|31)\d{3}[0-9Xx]$/
		  def matcher = code =~ aRegex
 		 matcher.matches();
if(matcher.getCount()==1){
		 int sum = 0;
        for (int i = 0; i < 17; i++){
         sum += str.indexOf(code.getAt(i)).toInteger() * ws.getAt(i).toInteger();
		 }
        def c9 = (sum%11);    
		c9= c9==2?''X'':ss.getAt(c9).toInteger();
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
insert into GP_QC_RULE (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5) values ('MBT_210_DI0000401_1', '20200303', 'TESTCORP', '72', '2', null, null, '相关还款责任人段的公民身份证号码则应符合如下规则：长度必须为18位；前17位为数字，第18位可为数字或字母“X”、“x”；第7-14位为出生日期，日期必须在19010101-20991231之间；校验位必须满足校验规则（参见国标《公民身份号码》（GB11643-1999））。', '相关还款责任人段的公民身份证号码则应符合如下规则：长度必须为18位；前17位为数字，第18位可为数字或字母“X”、“x”；第7-14位为出生日期，日期必须在19010101-20991231之间；校验位必须满足校验规则（参见国标《公民身份号码》（GB11643-1999））。', null, 'BUSI', 'DATA_ID', null, null, 'Y', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'if(D_ARLP_ID_TYPE =="1" &&  D_ARLP_CERT_TYPE=="10"){
		  def ws = [7,9,10,5,8,4,2,1,6,3,7,9,10,5,8,4,2];
		  def ss = [1,0,''X'',9,8,7,6,5,4,3,2];
		  String str = ''0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ'';
		  def code=D_ARLP_CERT_NUM;
		  def aRegex = /^[1-9]\d{5}(190[1-9]|19[1-9][0-9]|20[0-9]{2})((0[1-9])|(10|11|12))(([0-2][1-9])|10|20|30|31)\d{3}[0-9Xx]$/
		  def matcher = code =~ aRegex
 		 matcher.matches();
if(matcher.getCount()==1){
		 int sum = 0;
        for (int i = 0; i < 17; i++){
         sum += str.indexOf(code.getAt(i)).toInteger() * ws.getAt(i).toInteger();
		 }
        def c9 = (sum%11);    
		c9= c9==2?''X'':ss.getAt(c9).toInteger();
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
insert into GP_QC_RULE (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5) values ('MBT_130_I0000401_01', '20191204', 'TESTCORP', '72', '002', null, null, '公民身份证号码则应符合如下规则：
长度必须为 18 位； 前 17 位为数字，第 18 位可为数字或字母“X” 、 “x” ；  
 第 7-14 位为出生日期，日期必须在 19010101-20991231 之间；  
 校验位必须满足校验规则（参见国标《公民身份号码》（GB 11643-1999））。 ', '公民身份证号码则应符合如下规则：
长度必须为 18 位； 前 17 位为数字，第 18 位可为数字或字母“X” 、 “x” ；  
 第 7-14 位为出生日期，日期必须在 19010101-20991231 之间；  
 校验位必须满足校验规则（参见国标《公民身份号码》（GB 11643-1999））。 ', null, 'BUSI', 'DATA_ID', null, null, 'Y', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'if(ID_TYPE=="10"){
		  def ws = [7,9,10,5,8,4,2,1,6,3,7,9,10,5,8,4,2];
		  def ss = [1,0,''X'',9,8,7,6,5,4,3,2];
		  String str = ''0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ'';
		  def code=ID_NUM;
		  def aRegex = /^[1-9]\d{5}(190[1-9]|19[1-9][0-9]|20[0-9]{2})((0[1-9])|(10|11|12))(([0-2][1-9])|10|20|30|31)\d{3}[0-9Xx]$/
		  def matcher = code =~ aRegex
 		 matcher.matches();
if(matcher.getCount()==1){
		 int sum = 0;
        for (int i = 0; i < 17; i++){
         sum += str.indexOf(code.getAt(i)).toInteger() * ws.getAt(i).toInteger();
		 }
        def c9 = (sum%11);    
		c9= c9==2?''X'':ss.getAt(c9).toInteger();
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
insert into GP_QC_RULE (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5) values ('MBT_230_EI0000401_1', '20200303', 'TESTCORP', '72', '2', null, null, '相关还款责任人段的公民身份证号码则应符合如下规则：长度必须为18位；前17位为数字，第18位可为数字或字母“X”、“x”；第7-14位为出生日期，日期必须在19010101-20991231之间；校验位必须满足校验规则（参见国标《公民身份号码》（GB11643-1999））。', '相关还款责任人段的公民身份证号码则应符合如下规则：长度必须为18位；前17位为数字，第18位可为数字或字母“X”、“x”；第7-14位为出生日期，日期必须在19010101-20991231之间；校验位必须满足校验规则（参见国标《公民身份号码》（GB11643-1999））。', null, 'BUSI', 'DATA_ID', null, null, 'Y', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'if(MBT_230_B_ID_TYPE=="10"){
		  def ws = [7,9,10,5,8,4,2,1,6,3,7,9,10,5,8,4,2];
		  def ss = [1,0,''X'',9,8,7,6,5,4,3,2];
		  String str = ''0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ'';
		  def code=MBT_230_B_ID_NUM;
		  def aRegex = /^[1-9]\d{5}(190[1-9]|19[1-9][0-9]|20[0-9]{2})((0[1-9])|(10|11|12))(([0-2][1-9])|10|20|30|31)\d{3}[0-9Xx]$/
		  def matcher = code =~ aRegex
 		 matcher.matches();
if(matcher.getCount()==1){
		 int sum = 0;
        for (int i = 0; i < 17; i++){
         sum += str.indexOf(code.getAt(i)).toInteger() * ws.getAt(i).toInteger();
		 }
        def c9 = (sum%11);    
		c9= c9==2?''X'':ss.getAt(c9).toInteger();
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
