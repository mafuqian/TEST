UPDATE GP_QC_RULE SET DATA_DATE='20200305', CORP_ID='TESTCORP', ORG_ID='72', GROUP_ID='2', INQ_ORG_ID=NULL, INQ_GROUP_ID=NULL, RULE_DESC='其他债务人段的公民身份证号码则应符合如下规则：长度必须为18位；前17位为数字，第18位可为数字或字母“X”、“x”；第7-14位为出生日期，日期必须在19010101-20991231之间；校验位必须满足校验规则（参见国标《公民身份号码》（GB11643-1999））。', RULE_MESSAGE='其他债务人段的公民身份证号码则应符合如下规则：长度必须为18位；前17位为数字，第18位可为数字或字母“X”、“x”；第7-14位为出生日期，日期必须在19010101-20991231之间；校验位必须满足校验规则（参见国标《公民身份号码》（GB11643-1999））。', RULE_TYPE=NULL, RULE_SOURCE='BUSI', FIELD='DATA_ID', FIELD_NAME=NULL, TRIMMABLE=NULL, NULLABLE='Y', TYPE_ID=NULL, ENCODING=NULL, MIN_LENGTH=NULL, MAX_LENGTH=NULL, MIN_VALUE=NULL, MAX_VALUE=NULL, MAX_PRECISION=NULL, MIN_SCALE=NULL, MAX_SCALE=NULL, ENUMERATION=NULL, PATTERN=NULL, IN_ENTITY=NULL, IN_FIELD=NULL, "SQL"=NULL, SQL_EXTRA_KEY=NULL, SCRIPT='if(D_INFO_ID_TYPE =="1" &&  D_GUAR_CERT_TYPE=="10"){
		  def ws = [7,9,10,5,8,4,2,1,6,3,7,9,10,5,8,4,2];
		  def ss = [1,0,''X'',9,8,7,6,5,4,3,2];
		  String str = ''0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ'';
		  def code=D_GUAR_CERT_NUM;
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
return true', BEAN=NULL, CHECK_FLAG=NULL, CHECK_DESC=NULL, CHECK_ERR_TYPE=NULL, NEXT_ACTION=NULL, DATA_STATUS=NULL, DATA_FLAG=NULL, DATA_OP=NULL, DATA_SOURCE=NULL, DATA_VERSION=NULL, DATA_REJ_DESC=NULL, DATA_DEL_DESC=NULL, DATA_CRT_USER=NULL, DATA_CRT_DATE=NULL, DATA_CRT_TIME=NULL, DATA_CHG_USER='admin', DATA_CHG_DATE='20200119', DATA_CHG_TIME='20200119171000', DATA_APV_USER=NULL, DATA_APV_DATE=NULL, DATA_APV_TIME=NULL, RSV1='063a51c208ec4c22a80d169211e92ab2', RSV2=NULL, RSV3=NULL, RSV4='mbtrule', RSV5='1' WHERE DATA_ID='MBT_510_DI0000401_1';
UPDATE GP_QC_RULE SET DATA_DATE='20200305', CORP_ID='TESTCORP', ORG_ID='72', GROUP_ID='2', INQ_ORG_ID=NULL, INQ_GROUP_ID=NULL, RULE_DESC='主要组成人段的公民身份证号码则应符合如下规则：长度必须为18位；
前17位为数字，第18位可为数字或字母“X”、“x”；
第7-14位为出生日期，日期必须在19010101-20991231之间；
校验位必须满足校验规则（参见国标《公民身份号码》（GB11643-1999））。', RULE_MESSAGE='主要组成人段的公民身份证号码则应符合如下规则：长度必须为18位；
前17位为数字，第18位可为数字或字母“X”、“x”；
第7-14位为出生日期，日期必须在19010101-20991231之间；
校验位必须满足校验规则（参见国标《公民身份号码》（GB11643-1999））。', RULE_TYPE=NULL, RULE_SOURCE='BUSI', FIELD='DATA_ID', FIELD_NAME=NULL, TRIMMABLE=NULL, NULLABLE='Y', TYPE_ID=NULL, ENCODING=NULL, MIN_LENGTH=NULL, MAX_LENGTH=NULL, MIN_VALUE=NULL, MAX_VALUE=NULL, MAX_PRECISION=NULL, MIN_SCALE=NULL, MAX_SCALE=NULL, ENUMERATION=NULL, PATTERN=NULL, IN_ENTITY=NULL, IN_FIELD=NULL, "SQL"=NULL, SQL_EXTRA_KEY=NULL, SCRIPT='if(MMB_ID_TYPE=="10"){
		  def ws = [7,9,10,5,8,4,2,1,6,3,7,9,10,5,8,4,2];
		  def ss = [1,0,''X'',9,8,7,6,5,4,3,2];
		  String str = ''0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ'';
		  def code=MMB_ID_NUM;
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
return true', BEAN=NULL, CHECK_FLAG=NULL, CHECK_DESC=NULL, CHECK_ERR_TYPE=NULL, NEXT_ACTION=NULL, DATA_STATUS=NULL, DATA_FLAG=NULL, DATA_OP=NULL, DATA_SOURCE=NULL, DATA_VERSION=NULL, DATA_REJ_DESC=NULL, DATA_DEL_DESC=NULL, DATA_CRT_USER=NULL, DATA_CRT_DATE=NULL, DATA_CRT_TIME=NULL, DATA_CHG_USER='admin', DATA_CHG_DATE='20200119', DATA_CHG_TIME='20200119171000', DATA_APV_USER=NULL, DATA_APV_DATE=NULL, DATA_APV_TIME=NULL, RSV1=NULL, RSV2=NULL, RSV3=NULL, RSV4='mbtrule', RSV5='1' WHERE DATA_ID='MBT_310_EI0000401_1';
UPDATE GP_QC_RULE SET DATA_DATE='20190610', CORP_ID='TESTCORP', ORG_ID='72', GROUP_ID='2', INQ_ORG_ID=NULL, INQ_GROUP_ID=NULL, RULE_DESC='公民身份证号码则应符合如下规则：长度必须为18位；
前17位为数字，第18位可为数字或字母“X”、“x”；
第7-14位为出生日期，日期必须在19010101-20991231之间；
校验位必须满足校验规则（参见国标《公民身份号码》（GB11643-1999））。', RULE_MESSAGE='公民身份证号码则应符合如下规则：长度必须为18位；
前17位为数字，第18位可为数字或字母“X”、“x”；
第7-14位为出生日期，日期必须在19010101-20991231之间；
校验位必须满足校验规则（参见国标《公民身份号码》（GB11643-1999））。', RULE_TYPE=NULL, RULE_SOURCE='BUSI', FIELD='DATA_ID', FIELD_NAME=NULL, TRIMMABLE=NULL, NULLABLE='Y', TYPE_ID=NULL, ENCODING=NULL, MIN_LENGTH=NULL, MAX_LENGTH=NULL, MIN_VALUE=NULL, MAX_VALUE=NULL, MAX_PRECISION=NULL, MIN_SCALE=NULL, MAX_SCALE=NULL, ENUMERATION=NULL, PATTERN=NULL, IN_ENTITY=NULL, IN_FIELD=NULL, "SQL"=NULL, SQL_EXTRA_KEY=NULL, SCRIPT='if(MBT_220_B_ID_TYPE=="10"){
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

', BEAN=NULL, CHECK_FLAG=NULL, CHECK_DESC=NULL, CHECK_ERR_TYPE=NULL, NEXT_ACTION=NULL, DATA_STATUS=NULL, DATA_FLAG=NULL, DATA_OP=NULL, DATA_SOURCE=NULL, DATA_VERSION=NULL, DATA_REJ_DESC=NULL, DATA_DEL_DESC=NULL, DATA_CRT_USER=NULL, DATA_CRT_DATE=NULL, DATA_CRT_TIME=NULL, DATA_CHG_USER='admin', DATA_CHG_DATE='20200119', DATA_CHG_TIME='20200119171000', DATA_APV_USER=NULL, DATA_APV_DATE=NULL, DATA_APV_TIME=NULL, RSV1='063a51c208ec4c22a80d169211e92ab2', RSV2=NULL, RSV3=NULL, RSV4='mbtrule', RSV5='1' WHERE DATA_ID='MBT_220I0000401_1';
UPDATE GP_QC_RULE SET DATA_DATE='20200305', CORP_ID='TESTCORP', ORG_ID='72', GROUP_ID='2', INQ_ORG_ID=NULL, INQ_GROUP_ID=NULL, RULE_DESC='抵押物信息段的公民身份证号码则应符合如下规则：长度必须为18位；前17位为数字，第18位可为数字或字母“X”、“x”；第7-14位为出生日期，日期必须在19010101-20991231之间；校验位必须满足校验规则（参见国标《公民身份号码》（GB11643-1999））。', RULE_MESSAGE='抵押物信息段的公民身份证号码则应符合如下规则：长度必须为18位；前17位为数字，第18位可为数字或字母“X”、“x”；第7-14位为出生日期，日期必须在19010101-20991231之间；校验位必须满足校验规则（参见国标《公民身份号码》（GB11643-1999））。', RULE_TYPE=NULL, RULE_SOURCE='BUSI', FIELD='DATA_ID', FIELD_NAME=NULL, TRIMMABLE=NULL, NULLABLE='Y', TYPE_ID=NULL, ENCODING=NULL, MIN_LENGTH=NULL, MAX_LENGTH=NULL, MIN_VALUE=NULL, MAX_VALUE=NULL, MAX_PRECISION=NULL, MIN_SCALE=NULL, MAX_SCALE=NULL, ENUMERATION=NULL, PATTERN=NULL, IN_ENTITY=NULL, IN_FIELD=NULL, "SQL"=NULL, SQL_EXTRA_KEY=NULL, SCRIPT='if(E_PLEDGOR_TYPE =="1" &&  E_PLEOR_CERT_TYPE=="10"){
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
return true', BEAN=NULL, CHECK_FLAG=NULL, CHECK_DESC=NULL, CHECK_ERR_TYPE=NULL, NEXT_ACTION=NULL, DATA_STATUS=NULL, DATA_FLAG=NULL, DATA_OP=NULL, DATA_SOURCE=NULL, DATA_VERSION=NULL, DATA_REJ_DESC=NULL, DATA_DEL_DESC=NULL, DATA_CRT_USER=NULL, DATA_CRT_DATE=NULL, DATA_CRT_TIME=NULL, DATA_CHG_USER='admin', DATA_CHG_DATE='20200119', DATA_CHG_TIME='20200119171000', DATA_APV_USER=NULL, DATA_APV_DATE=NULL, DATA_APV_TIME=NULL, RSV1='063a51c208ec4c22a80d169211e92ab2', RSV2=NULL, RSV3=NULL, RSV4='mbtrule', RSV5='1' WHERE DATA_ID='MBT_510_EI0000401_1';
UPDATE GP_QC_RULE SET DATA_DATE='20200303', CORP_ID='TESTCORP', ORG_ID='72', GROUP_ID='2', INQ_ORG_ID=NULL, INQ_GROUP_ID=NULL, RULE_DESC='其他标识段的公民身份证号码则应符合如下规则：长度必须为18位；前17位为数字，第18位可为数字或字母“X”、“x”；第7-14位为出生日期，日期必须在19010101-20991231之间；校验位必须满足校验规则（参见国标《公民身份号码》（GB11643-1999））。', RULE_MESSAGE='其他标识段的公民身份证号码则应符合如下规则：长度必须为18位；前17位为数字，第18位可为数字或字母“X”、“x”；第7-14位为出生日期，日期必须在19010101-20991231之间；校验位必须满足校验规则（参见国标《公民身份号码》（GB11643-1999））。', RULE_TYPE=NULL, RULE_SOURCE='BUSI', FIELD='DATA_ID', FIELD_NAME=NULL, TRIMMABLE=NULL, NULLABLE='Y', TYPE_ID=NULL, ENCODING=NULL, MIN_LENGTH=NULL, MAX_LENGTH=NULL, MIN_VALUE=NULL, MAX_VALUE=NULL, MAX_PRECISION=NULL, MIN_SCALE=NULL, MAX_SCALE=NULL, ENUMERATION=NULL, PATTERN=NULL, IN_ENTITY=NULL, IN_FIELD=NULL, "SQL"=NULL, SQL_EXTRA_KEY=NULL, SCRIPT='if(OTH_ID_TYPE=="10"){
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
return true', BEAN=NULL, CHECK_FLAG=NULL, CHECK_DESC=NULL, CHECK_ERR_TYPE=NULL, NEXT_ACTION=NULL, DATA_STATUS=NULL, DATA_FLAG=NULL, DATA_OP=NULL, DATA_SOURCE=NULL, DATA_VERSION=NULL, DATA_REJ_DESC=NULL, DATA_DEL_DESC=NULL, DATA_CRT_USER=NULL, DATA_CRT_DATE=NULL, DATA_CRT_TIME=NULL, DATA_CHG_USER='admin', DATA_CHG_DATE='20200119', DATA_CHG_TIME='20200119171000', DATA_APV_USER=NULL, DATA_APV_DATE=NULL, DATA_APV_TIME=NULL, RSV1=NULL, RSV2=NULL, RSV3=NULL, RSV4='mbtrule', RSV5='1' WHERE DATA_ID='MBT_110_CI0000401_1';
UPDATE GP_QC_RULE SET DATA_DATE='20200305', CORP_ID='TESTCORP', ORG_ID='72', GROUP_ID='2', INQ_ORG_ID=NULL, INQ_GROUP_ID=NULL, RULE_DESC='主要出资人段的公民身份证号码则应符合如下规则：长度必须为18位；前17位为数字，第18位可为数字或字母“X”、“x”；第7-14位为出生日期，日期必须在19010101-20991231之间；校验位必须满足校验规则（参见国标《公民身份号码》（GB11643-1999））。', RULE_MESSAGE='主要出资人段的公民身份证号码则应符合如下规则：长度必须为18位；前17位为数字，第18位可为数字或字母“X”、“x”；第7-14位为出生日期，日期必须在19010101-20991231之间；校验位必须满足校验规则（参见国标《公民身份号码》（GB11643-1999））。', RULE_TYPE=NULL, RULE_SOURCE='BUSI', FIELD='DATA_ID', FIELD_NAME=NULL, TRIMMABLE=NULL, NULLABLE='Y', TYPE_ID=NULL, ENCODING=NULL, MIN_LENGTH=NULL, MAX_LENGTH=NULL, MIN_VALUE=NULL, MAX_VALUE=NULL, MAX_PRECISION=NULL, MIN_SCALE=NULL, MAX_SCALE=NULL, ENUMERATION=NULL, PATTERN=NULL, IN_ENTITY=NULL, IN_FIELD=NULL, "SQL"=NULL, SQL_EXTRA_KEY=NULL, SCRIPT='if(SHAR_HOD_CERT_TYPE =="1" &&  SHAR_HOD_ID_TYPE=="10"){
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

', BEAN=NULL, CHECK_FLAG=NULL, CHECK_DESC=NULL, CHECK_ERR_TYPE=NULL, NEXT_ACTION=NULL, DATA_STATUS=NULL, DATA_FLAG=NULL, DATA_OP=NULL, DATA_SOURCE=NULL, DATA_VERSION=NULL, DATA_REJ_DESC=NULL, DATA_DEL_DESC=NULL, DATA_CRT_USER=NULL, DATA_CRT_DATE=NULL, DATA_CRT_TIME=NULL, DATA_CHG_USER='admin', DATA_CHG_DATE='20200119', DATA_CHG_TIME='20200119171000', DATA_APV_USER=NULL, DATA_APV_DATE=NULL, DATA_APV_TIME=NULL, RSV1='063a51c208ec4c22a80d169211e92ab2', RSV2=NULL, RSV3=NULL, RSV4='mbtrule', RSV5='1' WHERE DATA_ID='MBT_310_FI0000401_1';
UPDATE GP_QC_RULE SET DATA_DATE='20200305', CORP_ID='TESTCORP', ORG_ID='72', GROUP_ID='2', INQ_ORG_ID=NULL, INQ_GROUP_ID=NULL, RULE_DESC='质物信息段的公民身份证号码则应符合如下规则：长度必须为18位；前17位为数字，第18位可为数字或字母“X”、“x”；第7-14位为出生日期，日期必须在19010101-20991231之间；校验位必须满足校验规则（参见国标《公民身份号码》（GB11643-1999））。', RULE_MESSAGE='质物信息段的公民身份证号码则应符合如下规则：长度必须为18位；前17位为数字，第18位可为数字或字母“X”、“x”；第7-14位为出生日期，日期必须在19010101-20991231之间；校验位必须满足校验规则（参见国标《公民身份号码》（GB11643-1999））。', RULE_TYPE=NULL, RULE_SOURCE='BUSI', FIELD='DATA_ID', FIELD_NAME=NULL, TRIMMABLE=NULL, NULLABLE='Y', TYPE_ID=NULL, ENCODING=NULL, MIN_LENGTH=NULL, MAX_LENGTH=NULL, MIN_VALUE=NULL, MAX_VALUE=NULL, MAX_PRECISION=NULL, MIN_SCALE=NULL, MAX_SCALE=NULL, ENUMERATION=NULL, PATTERN=NULL, IN_ENTITY=NULL, IN_FIELD=NULL, "SQL"=NULL, SQL_EXTRA_KEY=NULL, SCRIPT='if(F_IPPC =="1" &&  F_PAWN_CERT_TYPE=="10"){
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

', BEAN=NULL, CHECK_FLAG=NULL, CHECK_DESC=NULL, CHECK_ERR_TYPE=NULL, NEXT_ACTION=NULL, DATA_STATUS=NULL, DATA_FLAG=NULL, DATA_OP=NULL, DATA_SOURCE=NULL, DATA_VERSION=NULL, DATA_REJ_DESC=NULL, DATA_DEL_DESC=NULL, DATA_CRT_USER=NULL, DATA_CRT_DATE=NULL, DATA_CRT_TIME=NULL, DATA_CHG_USER='admin', DATA_CHG_DATE='20200119', DATA_CHG_TIME='20200119171000', DATA_APV_USER=NULL, DATA_APV_DATE=NULL, DATA_APV_TIME=NULL, RSV1='063a51c208ec4c22a80d169211e92ab2', RSV2=NULL, RSV3=NULL, RSV4='mbtrule', RSV5='1' WHERE DATA_ID='MBT_510_FI0000401_1';
UPDATE GP_QC_RULE SET DATA_DATE='20190610', CORP_ID='TESTCORP', ORG_ID='72', GROUP_ID='2', INQ_ORG_ID=NULL, INQ_GROUP_ID=NULL, RULE_DESC='公民身份证号码则应符合如下规则：长度必须为18位；
前17位为数字，第18位可为数字或字母“X”、“x”；
第7-14位为出生日期，日期必须在19010101-20991231之间；
校验位必须满足校验规则（参见国标《公民身份号码》（GB11643-1999））。', RULE_MESSAGE='公民身份证号码则应符合如下规则：长度必须为18位；
前17位为数字，第18位可为数字或字母“X”、“x”；
第7-14位为出生日期，日期必须在19010101-20991231之间；
校验位必须满足校验规则（参见国标《公民身份号码》（GB11643-1999））。', RULE_TYPE=NULL, RULE_SOURCE='BUSI', FIELD='DATA_ID', FIELD_NAME=NULL, TRIMMABLE=NULL, NULLABLE='Y', TYPE_ID=NULL, ENCODING=NULL, MIN_LENGTH=NULL, MAX_LENGTH=NULL, MIN_VALUE=NULL, MAX_VALUE=NULL, MAX_PRECISION=NULL, MIN_SCALE=NULL, MAX_SCALE=NULL, ENUMERATION=NULL, PATTERN=NULL, IN_ENTITY=NULL, IN_FIELD=NULL, "SQL"=NULL, SQL_EXTRA_KEY=NULL, SCRIPT='if(MBT_230_B_ID_TYPE=="10"){
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

', BEAN=NULL, CHECK_FLAG=NULL, CHECK_DESC=NULL, CHECK_ERR_TYPE=NULL, NEXT_ACTION=NULL, DATA_STATUS=NULL, DATA_FLAG=NULL, DATA_OP=NULL, DATA_SOURCE=NULL, DATA_VERSION=NULL, DATA_REJ_DESC=NULL, DATA_DEL_DESC=NULL, DATA_CRT_USER=NULL, DATA_CRT_DATE=NULL, DATA_CRT_TIME=NULL, DATA_CHG_USER='admin', DATA_CHG_DATE='20200119', DATA_CHG_TIME='20200119171000', DATA_APV_USER=NULL, DATA_APV_DATE=NULL, DATA_APV_TIME=NULL, RSV1='063a51c208ec4c22a80d169211e92ab2', RSV2=NULL, RSV3=NULL, RSV4='mbtrule', RSV5='1' WHERE DATA_ID='MBT_230I0000401_1';
UPDATE GP_QC_RULE SET DATA_DATE='20190610', CORP_ID='TESTCORP', ORG_ID='72', GROUP_ID='2', INQ_ORG_ID=NULL, INQ_GROUP_ID=NULL, RULE_DESC='公民身份证号码则应符合如下规则：长度必须为18位；
前17位为数字，第18位可为数字或字母“X”、“x”；
第7-14位为出生日期，日期必须在19010101-20991231之间；
校验位必须满足校验规则（参见国标《公民身份号码》（GB11643-1999））。', RULE_MESSAGE='公民身份证号码则应符合如下规则：长度必须为18位；
前17位为数字，第18位可为数字或字母“X”、“x”；
第7-14位为出生日期，日期必须在19010101-20991231之间；
校验位必须满足校验规则（参见国标《公民身份号码》（GB11643-1999））。', RULE_TYPE=NULL, RULE_SOURCE='BUSI', FIELD='DATA_ID', FIELD_NAME=NULL, TRIMMABLE=NULL, NULLABLE='Y', TYPE_ID=NULL, ENCODING=NULL, MIN_LENGTH=NULL, MAX_LENGTH=NULL, MIN_VALUE=NULL, MAX_VALUE=NULL, MAX_PRECISION=NULL, MIN_SCALE=NULL, MAX_SCALE=NULL, ENUMERATION=NULL, PATTERN=NULL, IN_ENTITY=NULL, IN_FIELD=NULL, "SQL"=NULL, SQL_EXTRA_KEY=NULL, SCRIPT='if(MBT_510_B_CERT_TYPE=="10" && MBT_510_B_INFO_ID_TYPE=="1"){
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


', BEAN=NULL, CHECK_FLAG=NULL, CHECK_DESC=NULL, CHECK_ERR_TYPE=NULL, NEXT_ACTION=NULL, DATA_STATUS=NULL, DATA_FLAG=NULL, DATA_OP=NULL, DATA_SOURCE=NULL, DATA_VERSION=NULL, DATA_REJ_DESC=NULL, DATA_DEL_DESC=NULL, DATA_CRT_USER=NULL, DATA_CRT_DATE=NULL, DATA_CRT_TIME=NULL, DATA_CHG_USER='admin', DATA_CHG_DATE='20200119', DATA_CHG_TIME='20200119171000', DATA_APV_USER=NULL, DATA_APV_DATE=NULL, DATA_APV_TIME=NULL, RSV1='063a51c208ec4c22a80d169211e92ab2', RSV2=NULL, RSV3=NULL, RSV4='mbtrule', RSV5='1' WHERE DATA_ID='MBT_510I0000401_1';
UPDATE GP_QC_RULE SET DATA_DATE='20200303', CORP_ID='TESTCORP', ORG_ID='72', GROUP_ID='2', INQ_ORG_ID=NULL, INQ_GROUP_ID=NULL, RULE_DESC='共同授信人信息段的公民身份证号码则应符合如下规则：长度必须为18位；前17位为数字，第18位可为数字或字母“X”、“x”；第7-14位为出生日期，日期必须在19010101-20991231之间；校验位必须满足校验规则（参见国标《公民身份号码》（GB11643-1999））。', RULE_MESSAGE='共同授信人信息段的公民身份证号码则应符合如下规则：长度必须为18位；前17位为数字，第18位可为数字或字母“X”、“x”；第7-14位为出生日期，日期必须在19010101-20991231之间；校验位必须满足校验规则（参见国标《公民身份号码》（GB11643-1999））。', RULE_TYPE=NULL, RULE_SOURCE='BUSI', FIELD='DATA_ID', FIELD_NAME=NULL, TRIMMABLE=NULL, NULLABLE='Y', TYPE_ID=NULL, ENCODING=NULL, MIN_LENGTH=NULL, MAX_LENGTH=NULL, MIN_VALUE=NULL, MAX_VALUE=NULL, MAX_PRECISION=NULL, MIN_SCALE=NULL, MAX_SCALE=NULL, ENUMERATION=NULL, PATTERN=NULL, IN_ENTITY=NULL, IN_FIELD=NULL, "SQL"=NULL, SQL_EXTRA_KEY=NULL, SCRIPT='if(C_BRER_TYPE =="1" &&  C_CERT_REL_ID_TYPE=="10"){
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

', BEAN=NULL, CHECK_FLAG=NULL, CHECK_DESC=NULL, CHECK_ERR_TYPE=NULL, NEXT_ACTION=NULL, DATA_STATUS=NULL, DATA_FLAG=NULL, DATA_OP=NULL, DATA_SOURCE=NULL, DATA_VERSION=NULL, DATA_REJ_DESC=NULL, DATA_DEL_DESC=NULL, DATA_CRT_USER=NULL, DATA_CRT_DATE=NULL, DATA_CRT_TIME=NULL, DATA_CHG_USER='admin', DATA_CHG_DATE='20200119', DATA_CHG_TIME='20200119171000', DATA_APV_USER=NULL, DATA_APV_DATE=NULL, DATA_APV_TIME=NULL, RSV1=NULL, RSV2=NULL, RSV3=NULL, RSV4='mbtrule', RSV5='1' WHERE DATA_ID='MBT_220_CI0000401_1';
UPDATE GP_QC_RULE SET DATA_DATE='20200214', CORP_ID='TESTCORP', ORG_ID='72', GROUP_ID='2', INQ_ORG_ID=NULL, INQ_GROUP_ID=NULL, RULE_DESC='公民身份证号码则应符合如下规则：长度必须为18位；
前17位为数字，第18位可为数字或字母“X”、“x”；
第7-14位为出生日期，日期必须在19010101-20991231之间；
校验位必须满足校验规则（参见国标《公民身份号码》（GB11643-1999））。', RULE_MESSAGE='公民身份证号码则应符合如下规则：长度必须为18位；
前17位为数字，第18位可为数字或字母“X”、“x”；
第7-14位为出生日期，日期必须在19010101-20991231之间；
校验位必须满足校验规则（参见国标《公民身份号码》（GB11643-1999））。', RULE_TYPE=NULL, RULE_SOURCE='BUSI', FIELD='DATA_ID', FIELD_NAME=NULL, TRIMMABLE=NULL, NULLABLE='Y', TYPE_ID=NULL, ENCODING=NULL, MIN_LENGTH=NULL, MAX_LENGTH=NULL, MIN_VALUE=NULL, MAX_VALUE=NULL, MAX_PRECISION=NULL, MIN_SCALE=NULL, MAX_SCALE=NULL, ENUMERATION=NULL, PATTERN=NULL, IN_ENTITY=NULL, IN_FIELD=NULL, "SQL"=NULL, SQL_EXTRA_KEY=NULL, SCRIPT='if(MBT_210_B_ID_TYPE=="10"){
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

', BEAN=NULL, CHECK_FLAG=NULL, CHECK_DESC=NULL, CHECK_ERR_TYPE=NULL, NEXT_ACTION=NULL, DATA_STATUS=NULL, DATA_FLAG=NULL, DATA_OP=NULL, DATA_SOURCE=NULL, DATA_VERSION=NULL, DATA_REJ_DESC=NULL, DATA_DEL_DESC=NULL, DATA_CRT_USER=NULL, DATA_CRT_DATE=NULL, DATA_CRT_TIME=NULL, DATA_CHG_USER='admin', DATA_CHG_DATE='20200119', DATA_CHG_TIME='20200119171000', DATA_APV_USER=NULL, DATA_APV_DATE=NULL, DATA_APV_TIME=NULL, RSV1='063a51c208ec4c22a80d169211e92ab2', RSV2=NULL, RSV3=NULL, RSV4='mbtrule', RSV5='1' WHERE DATA_ID='MBT_210I0000401_1';
UPDATE GP_QC_RULE SET DATA_DATE='20190610', CORP_ID='TESTCORP', ORG_ID='72', GROUP_ID='2', INQ_ORG_ID=NULL, INQ_GROUP_ID=NULL, RULE_DESC='公民身份证号码则应符合如下规则：长度必须为18位；
前17位为数字，第18位可为数字或字母“X”、“x”；
第7-14位为出生日期，日期必须在19010101-20991231之间；
校验位必须满足校验规则（参见国标《公民身份号码》（GB11643-1999））。', RULE_MESSAGE='公民身份证号码则应符合如下规则：长度必须为18位；
前17位为数字，第18位可为数字或字母“X”、“x”；
第7-14位为出生日期，日期必须在19010101-20991231之间；
校验位必须满足校验规则（参见国标《公民身份号码》（GB11643-1999））。', RULE_TYPE=NULL, RULE_SOURCE='BUSI', FIELD='DATA_ID', FIELD_NAME=NULL, TRIMMABLE=NULL, NULLABLE='Y', TYPE_ID=NULL, ENCODING=NULL, MIN_LENGTH=NULL, MAX_LENGTH=NULL, MIN_VALUE=NULL, MAX_VALUE=NULL, MAX_PRECISION=NULL, MIN_SCALE=NULL, MAX_SCALE=NULL, ENUMERATION=NULL, PATTERN=NULL, IN_ENTITY=NULL, IN_FIELD=NULL, "SQL"=NULL, SQL_EXTRA_KEY=NULL, SCRIPT='if(B_ID_TYPE=="10"){
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

', BEAN=NULL, CHECK_FLAG=NULL, CHECK_DESC=NULL, CHECK_ERR_TYPE=NULL, NEXT_ACTION=NULL, DATA_STATUS=NULL, DATA_FLAG=NULL, DATA_OP=NULL, DATA_SOURCE=NULL, DATA_VERSION=NULL, DATA_REJ_DESC=NULL, DATA_DEL_DESC=NULL, DATA_CRT_USER=NULL, DATA_CRT_DATE=NULL, DATA_CRT_TIME=NULL, DATA_CHG_USER='admin', DATA_CHG_DATE='20200119', DATA_CHG_TIME='20200119171000', DATA_APV_USER=NULL, DATA_APV_DATE=NULL, DATA_APV_TIME=NULL, RSV1='063a51c208ec4c22a80d169211e92ab2', RSV2=NULL, RSV3=NULL, RSV4='mbtrule', RSV5='1' WHERE DATA_ID='MBT_110I0000401_110I0000401_11001';
UPDATE GP_QC_RULE SET DATA_DATE='20200303', CORP_ID='TESTCORP', ORG_ID='72', GROUP_ID='2', INQ_ORG_ID=NULL, INQ_GROUP_ID=NULL, RULE_DESC='相关还款责任人段的公民身份证号码则应符合如下规则：长度必须为18位；前17位为数字，第18位可为数字或字母“X”、“x”；第7-14位为出生日期，日期必须在19010101-20991231之间；校验位必须满足校验规则（参见国标《公民身份号码》（GB11643-1999））。', RULE_MESSAGE='相关还款责任人段的公民身份证号码则应符合如下规则：长度必须为18位；前17位为数字，第18位可为数字或字母“X”、“x”；第7-14位为出生日期，日期必须在19010101-20991231之间；校验位必须满足校验规则（参见国标《公民身份号码》（GB11643-1999））。', RULE_TYPE=NULL, RULE_SOURCE='BUSI', FIELD='DATA_ID', FIELD_NAME=NULL, TRIMMABLE=NULL, NULLABLE='Y', TYPE_ID=NULL, ENCODING=NULL, MIN_LENGTH=NULL, MAX_LENGTH=NULL, MIN_VALUE=NULL, MAX_VALUE=NULL, MAX_PRECISION=NULL, MIN_SCALE=NULL, MAX_SCALE=NULL, ENUMERATION=NULL, PATTERN=NULL, IN_ENTITY=NULL, IN_FIELD=NULL, "SQL"=NULL, SQL_EXTRA_KEY=NULL, SCRIPT='if(D_ARLP_ID_TYPE =="1" &&  D_ARLP_CERT_TYPE=="10"){
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

', BEAN=NULL, CHECK_FLAG=NULL, CHECK_DESC=NULL, CHECK_ERR_TYPE=NULL, NEXT_ACTION=NULL, DATA_STATUS=NULL, DATA_FLAG=NULL, DATA_OP=NULL, DATA_SOURCE=NULL, DATA_VERSION=NULL, DATA_REJ_DESC=NULL, DATA_DEL_DESC=NULL, DATA_CRT_USER=NULL, DATA_CRT_DATE=NULL, DATA_CRT_TIME=NULL, DATA_CHG_USER='admin', DATA_CHG_DATE='20200119', DATA_CHG_TIME='20200119171000', DATA_APV_USER=NULL, DATA_APV_DATE=NULL, DATA_APV_TIME=NULL, RSV1='063a51c208ec4c22a80d169211e92ab2', RSV2=NULL, RSV3=NULL, RSV4='mbtrule', RSV5='1' WHERE DATA_ID='MBT_210_DI0000401_1';
UPDATE GP_QC_RULE SET DATA_DATE='20191204', CORP_ID='TESTCORP', ORG_ID='72', GROUP_ID='002', INQ_ORG_ID=NULL, INQ_GROUP_ID=NULL, RULE_DESC='公民身份证号码则应符合如下规则：
长度必须为 18 位； 前 17 位为数字，第 18 位可为数字或字母“X” 、 “x” ；  
 第 7-14 位为出生日期，日期必须在 19010101-20991231 之间；  
 校验位必须满足校验规则（参见国标《公民身份号码》（GB 11643-1999））。 ', RULE_MESSAGE='公民身份证号码则应符合如下规则：
长度必须为 18 位； 前 17 位为数字，第 18 位可为数字或字母“X” 、 “x” ；  
 第 7-14 位为出生日期，日期必须在 19010101-20991231 之间；  
 校验位必须满足校验规则（参见国标《公民身份号码》（GB 11643-1999））。 ', RULE_TYPE=NULL, RULE_SOURCE='BUSI', FIELD='DATA_ID', FIELD_NAME=NULL, TRIMMABLE=NULL, NULLABLE='Y', TYPE_ID=NULL, ENCODING=NULL, MIN_LENGTH=NULL, MAX_LENGTH=NULL, MIN_VALUE=NULL, MAX_VALUE=NULL, MAX_PRECISION=NULL, MIN_SCALE=NULL, MAX_SCALE=NULL, ENUMERATION=NULL, PATTERN=NULL, IN_ENTITY=NULL, IN_FIELD=NULL, "SQL"=NULL, SQL_EXTRA_KEY=NULL, SCRIPT='if(ID_TYPE=="10"){
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

', BEAN=NULL, CHECK_FLAG=NULL, CHECK_DESC=NULL, CHECK_ERR_TYPE=NULL, NEXT_ACTION=NULL, DATA_STATUS=NULL, DATA_FLAG=NULL, DATA_OP=NULL, DATA_SOURCE=NULL, DATA_VERSION=NULL, DATA_REJ_DESC=NULL, DATA_DEL_DESC=NULL, DATA_CRT_USER=NULL, DATA_CRT_DATE=NULL, DATA_CRT_TIME=NULL, DATA_CHG_USER=NULL, DATA_CHG_DATE=NULL, DATA_CHG_TIME=NULL, DATA_APV_USER=NULL, DATA_APV_DATE=NULL, DATA_APV_TIME=NULL, RSV1=NULL, RSV2=NULL, RSV3=NULL, RSV4='mbtrule', RSV5='1' WHERE DATA_ID='MBT_130_I0000401_01';
UPDATE GP_QC_RULE SET DATA_DATE='20200303', CORP_ID='TESTCORP', ORG_ID='72', GROUP_ID='2', INQ_ORG_ID=NULL, INQ_GROUP_ID=NULL, RULE_DESC='相关还款责任人段的公民身份证号码则应符合如下规则：长度必须为18位；前17位为数字，第18位可为数字或字母“X”、“x”；第7-14位为出生日期，日期必须在19010101-20991231之间；校验位必须满足校验规则（参见国标《公民身份号码》（GB11643-1999））。', RULE_MESSAGE='相关还款责任人段的公民身份证号码则应符合如下规则：长度必须为18位；前17位为数字，第18位可为数字或字母“X”、“x”；第7-14位为出生日期，日期必须在19010101-20991231之间；校验位必须满足校验规则（参见国标《公民身份号码》（GB11643-1999））。', RULE_TYPE=NULL, RULE_SOURCE='BUSI', FIELD='DATA_ID', FIELD_NAME=NULL, TRIMMABLE=NULL, NULLABLE='Y', TYPE_ID=NULL, ENCODING=NULL, MIN_LENGTH=NULL, MAX_LENGTH=NULL, MIN_VALUE=NULL, MAX_VALUE=NULL, MAX_PRECISION=NULL, MIN_SCALE=NULL, MAX_SCALE=NULL, ENUMERATION=NULL, PATTERN=NULL, IN_ENTITY=NULL, IN_FIELD=NULL, "SQL"=NULL, SQL_EXTRA_KEY=NULL, SCRIPT='if(MBT_230_B_ID_TYPE=="10"){
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
', BEAN=NULL, CHECK_FLAG=NULL, CHECK_DESC=NULL, CHECK_ERR_TYPE=NULL, NEXT_ACTION=NULL, DATA_STATUS=NULL, DATA_FLAG=NULL, DATA_OP=NULL, DATA_SOURCE=NULL, DATA_VERSION=NULL, DATA_REJ_DESC=NULL, DATA_DEL_DESC=NULL, DATA_CRT_USER=NULL, DATA_CRT_DATE=NULL, DATA_CRT_TIME=NULL, DATA_CHG_USER='admin', DATA_CHG_DATE='20200119', DATA_CHG_TIME='20200119171000', DATA_APV_USER=NULL, DATA_APV_DATE=NULL, DATA_APV_TIME=NULL, RSV1=NULL, RSV2=NULL, RSV3=NULL, RSV4='mbtrule', RSV5='1' WHERE DATA_ID='MBT_230_EI0000401_1';
