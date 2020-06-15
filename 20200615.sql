UPDATE GP_QC_RULE SET DATA_DATE='20200305', CORP_ID='TESTCORP', ORG_ID='72', GROUP_ID='002', INQ_ORG_ID=NULL, INQ_GROUP_ID=NULL, RULE_DESC='质物信息段的组织机构代码应符合如下规则：应由8位数字（或大写拉丁字母）以及1位数字（或大写拉丁字母）组成；校验位应满足校验规则（参见国标《全国组织机构代码编制规则》（GB11714-1997））。', RULE_MESSAGE='质物信息段的组织机构代码应符合如下规则：应由8位数字（或大写拉丁字母）以及1位数字（或大写拉丁字母）组成；校验位应满足校验规则（参见国标《全国组织机构代码编制规则》（GB11714-1997））。', RULE_TYPE=NULL, RULE_SOURCE='BUSI', FIELD='DATA_ID', FIELD_NAME=NULL, TRIMMABLE=NULL, NULLABLE='Y', TYPE_ID=NULL, ENCODING=NULL, MIN_LENGTH=NULL, MAX_LENGTH=NULL, MIN_VALUE=NULL, MAX_VALUE=NULL, MAX_PRECISION=NULL, MIN_SCALE=NULL, MAX_SCALE=NULL, ENUMERATION=NULL, PATTERN=NULL, IN_ENTITY=NULL, IN_FIELD=NULL, "SQL"=NULL, SQL_EXTRA_KEY=NULL, SCRIPT='if(F_IPPC =="2" &&  F_PAWN_CERT_TYPE=="30"){
        def code=F_PAWN_CERT_NUM;
        def ws = [3, 7, 9, 10, 5, 8, 4, 2];
        String str = ''0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ'';
        def reg = /^([0-9A-Z]){8}[0-9|X]$/;
      String tmp = code.toUpperCase();

        if (tmp.length() != 9) {
              return false
            }
        int sum = 0;
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
      return true', BEAN=NULL, CHECK_FLAG=NULL, CHECK_DESC=NULL, CHECK_ERR_TYPE=NULL, NEXT_ACTION=NULL, DATA_STATUS=NULL, DATA_FLAG=NULL, DATA_OP=NULL, DATA_SOURCE=NULL, DATA_VERSION=NULL, DATA_REJ_DESC=NULL, DATA_DEL_DESC=NULL, DATA_CRT_USER=NULL, DATA_CRT_DATE=NULL, DATA_CRT_TIME=NULL, DATA_CHG_USER=NULL, DATA_CHG_DATE=NULL, DATA_CHG_TIME=NULL, DATA_APV_USER=NULL, DATA_APV_DATE=NULL, DATA_APV_TIME=NULL, RSV1='1abe69a0b299409b8f6bb7f6fb1b9612', RSV2=NULL, RSV3=NULL, RSV4='mbtrule', RSV5='1' WHERE DATA_ID='MBT_510_FI0000401_5';
UPDATE GP_QC_RULE SET DATA_DATE='20200303', CORP_ID='TESTCORP', ORG_ID='72', GROUP_ID='002', INQ_ORG_ID=NULL, INQ_GROUP_ID=NULL, RULE_DESC='相关还款责任人段的组织机构代码应符合如下规则：应由8位数字（或大写拉丁字母）以及1位数字（或大写拉丁字母）组成；校验位应满足校验规则（参见国标《全国组织机构代码编制规则》（GB11714-1997））。
', RULE_MESSAGE='相关还款责任人段的组织机构代码应符合如下规则：应由8位数字（或大写拉丁字母）以及1位数字（或大写拉丁字母）组成；校验位应满足校验规则（参见国标《全国组织机构代码编制规则》（GB11714-1997））。
', RULE_TYPE=NULL, RULE_SOURCE='BUSI', FIELD='DATA_ID', FIELD_NAME=NULL, TRIMMABLE=NULL, NULLABLE='Y', TYPE_ID=NULL, ENCODING=NULL, MIN_LENGTH=NULL, MAX_LENGTH=NULL, MIN_VALUE=NULL, MAX_VALUE=NULL, MAX_PRECISION=NULL, MIN_SCALE=NULL, MAX_SCALE=NULL, ENUMERATION=NULL, PATTERN=NULL, IN_ENTITY=NULL, IN_FIELD=NULL, "SQL"=NULL, SQL_EXTRA_KEY=NULL, SCRIPT=' if(D_ARLP_ID_TYPE =="2" &&  D_ARLP_CERT_TYPE=="30"){

        def code=D_ARLP_CERT_NUM;
        def ws = [3, 7, 9, 10, 5, 8, 4, 2];
        String str = ''0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ'';
        def reg = /^([0-9A-Z]){8}[0-9|X]$/;
      String tmp = code.toUpperCase();

        if (tmp.length() != 9) {
              return false
            }
        int sum = 0;
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
      return true', BEAN=NULL, CHECK_FLAG=NULL, CHECK_DESC=NULL, CHECK_ERR_TYPE=NULL, NEXT_ACTION=NULL, DATA_STATUS=NULL, DATA_FLAG=NULL, DATA_OP=NULL, DATA_SOURCE=NULL, DATA_VERSION=NULL, DATA_REJ_DESC=NULL, DATA_DEL_DESC=NULL, DATA_CRT_USER=NULL, DATA_CRT_DATE=NULL, DATA_CRT_TIME=NULL, DATA_CHG_USER=NULL, DATA_CHG_DATE=NULL, DATA_CHG_TIME=NULL, DATA_APV_USER=NULL, DATA_APV_DATE=NULL, DATA_APV_TIME=NULL, RSV1='1abe69a0b299409b8f6bb7f6fb1b9612', RSV2=NULL, RSV3=NULL, RSV4='mbtrule', RSV5='1' WHERE DATA_ID='MBT_210D_I0000401_1';
UPDATE GP_QC_RULE SET DATA_DATE='20200217', CORP_ID='TESTCORP', ORG_ID='72', GROUP_ID='002', INQ_ORG_ID=NULL, INQ_GROUP_ID=NULL, RULE_DESC=' 组织机构代码应符合如下规则：应由8位数字（或大写拉丁字母）以及1位数字（或大写拉丁字母）组成；校验位应满足校验规则（参见国标《全国组织机构代码编制规则》（GB11714-1997））。
', RULE_MESSAGE=' 组织机构代码应符合如下规则：应由8位数字（或大写拉丁字母）以及1位数字（或大写拉丁字母）组成；校验位应满足校验规则（参见国标《全国组织机构代码编制规则》（GB11714-1997））。
', RULE_TYPE=NULL, RULE_SOURCE='BUSI', FIELD='DATA_ID', FIELD_NAME=NULL, TRIMMABLE=NULL, NULLABLE='Y', TYPE_ID=NULL, ENCODING=NULL, MIN_LENGTH=NULL, MAX_LENGTH=NULL, MIN_VALUE=NULL, MAX_VALUE=NULL, MAX_PRECISION=NULL, MIN_SCALE=NULL, MAX_SCALE=NULL, ENUMERATION=NULL, PATTERN=NULL, IN_ENTITY=NULL, IN_FIELD=NULL, "SQL"=NULL, SQL_EXTRA_KEY=NULL, SCRIPT=' if(MBT_510_B_CERT_TYPE=="30" &&  MBT_510_B_INFO_ID_TYPE=="2"){

        def code=MBT_510_B_CERT_NUM;
        String tmp = code.toUpperCase();

        if (tmp.length() != 9) {
              return false
            }
        def ws = [3, 7, 9, 10, 5, 8, 4, 2];
        String str = ''0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ'';
        def reg = /^([0-9A-Z]){8}[0-9|X]$/;
        int sum = 0;
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
', BEAN=NULL, CHECK_FLAG=NULL, CHECK_DESC=NULL, CHECK_ERR_TYPE=NULL, NEXT_ACTION=NULL, DATA_STATUS=NULL, DATA_FLAG=NULL, DATA_OP=NULL, DATA_SOURCE=NULL, DATA_VERSION=NULL, DATA_REJ_DESC=NULL, DATA_DEL_DESC=NULL, DATA_CRT_USER=NULL, DATA_CRT_DATE=NULL, DATA_CRT_TIME=NULL, DATA_CHG_USER=NULL, DATA_CHG_DATE=NULL, DATA_CHG_TIME=NULL, DATA_APV_USER=NULL, DATA_APV_DATE=NULL, DATA_APV_TIME=NULL, RSV1='1abe69a0b299409b8f6bb7f6fb1b9612', RSV2=NULL, RSV3=NULL, RSV4='mbtrule', RSV5='1' WHERE DATA_ID='MBT_510I0000401_5';
UPDATE GP_QC_RULE SET DATA_DATE='20200217', CORP_ID='TESTCORP', ORG_ID='72', GROUP_ID='002', INQ_ORG_ID=NULL, INQ_GROUP_ID=NULL, RULE_DESC=' 组织机构代码应符合如下规则：应由8位数字（或大写拉丁字母）以及1位数字（或大写拉丁字母）组成；校验位应满足校验规则（参见国标《全国组织机构代码编制规则》（GB11714-1997））。
', RULE_MESSAGE=' 组织机构代码应符合如下规则：应由8位数字（或大写拉丁字母）以及1位数字（或大写拉丁字母）组成；校验位应满足校验规则（参见国标《全国组织机构代码编制规则》（GB11714-1997））。
', RULE_TYPE=NULL, RULE_SOURCE='BUSI', FIELD='DATA_ID', FIELD_NAME=NULL, TRIMMABLE=NULL, NULLABLE='Y', TYPE_ID=NULL, ENCODING=NULL, MIN_LENGTH=NULL, MAX_LENGTH=NULL, MIN_VALUE=NULL, MAX_VALUE=NULL, MAX_PRECISION=NULL, MIN_SCALE=NULL, MAX_SCALE=NULL, ENUMERATION=NULL, PATTERN=NULL, IN_ENTITY=NULL, IN_FIELD=NULL, "SQL"=NULL, SQL_EXTRA_KEY=NULL, SCRIPT=' if(B_ENT_CERT_TYPE=="30"){

        def code=B_ENT_CERT_NUM;
        String tmp = code.toUpperCase();

        if (tmp.length() != 9) {
              return false
            }
        def ws = [3, 7, 9, 10, 5, 8, 4, 2];
        String str = ''0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ'';
        def reg = /^([0-9A-Z]){8}[0-9|X]$/;
        int sum = 0;
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
', BEAN=NULL, CHECK_FLAG=NULL, CHECK_DESC=NULL, CHECK_ERR_TYPE=NULL, NEXT_ACTION=NULL, DATA_STATUS=NULL, DATA_FLAG=NULL, DATA_OP=NULL, DATA_SOURCE=NULL, DATA_VERSION=NULL, DATA_REJ_DESC=NULL, DATA_DEL_DESC=NULL, DATA_CRT_USER=NULL, DATA_CRT_DATE=NULL, DATA_CRT_TIME=NULL, DATA_CHG_USER=NULL, DATA_CHG_DATE=NULL, DATA_CHG_TIME=NULL, DATA_APV_USER=NULL, DATA_APV_DATE=NULL, DATA_APV_TIME=NULL, RSV1='1abe69a0b299409b8f6bb7f6fb1b9612', RSV2=NULL, RSV3=NULL, RSV4='mbtrule', RSV5='1' WHERE DATA_ID='MBT_610I0000401_1';
UPDATE GP_QC_RULE SET DATA_DATE='20200305', CORP_ID='TESTCORP', ORG_ID='72', GROUP_ID='002', INQ_ORG_ID=NULL, INQ_GROUP_ID=NULL, RULE_DESC='其他债务人段的组织机构代码应符合如下规则：应由8位数字（或大写拉丁字母）以及1位数字（或大写拉丁字母）组成；校验位应满足校验规则（参见国标《全国组织机构代码编制规则》（GB11714-1997））。', RULE_MESSAGE='其他债务人段的组织机构代码应符合如下规则：应由8位数字（或大写拉丁字母）以及1位数字（或大写拉丁字母）组成；校验位应满足校验规则（参见国标《全国组织机构代码编制规则》（GB11714-1997））。', RULE_TYPE=NULL, RULE_SOURCE='BUSI', FIELD='DATA_ID', FIELD_NAME=NULL, TRIMMABLE=NULL, NULLABLE='Y', TYPE_ID=NULL, ENCODING=NULL, MIN_LENGTH=NULL, MAX_LENGTH=NULL, MIN_VALUE=NULL, MAX_VALUE=NULL, MAX_PRECISION=NULL, MIN_SCALE=NULL, MAX_SCALE=NULL, ENUMERATION=NULL, PATTERN=NULL, IN_ENTITY=NULL, IN_FIELD=NULL, "SQL"=NULL, SQL_EXTRA_KEY=NULL, SCRIPT='if(D_INFO_ID_TYPE =="2" &&  D_GUAR_CERT_TYPE=="30"){

        def code=D_GUAR_CERT_NUM;
        def ws = [3, 7, 9, 10, 5, 8, 4, 2];
        String str = ''0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ'';
        def reg = /^([0-9A-Z]){8}[0-9|X]$/;
      String tmp = code.toUpperCase();

        if (tmp.length() != 9) {
              return false
            }
        int sum = 0;
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
      return true', BEAN=NULL, CHECK_FLAG=NULL, CHECK_DESC=NULL, CHECK_ERR_TYPE=NULL, NEXT_ACTION=NULL, DATA_STATUS=NULL, DATA_FLAG=NULL, DATA_OP=NULL, DATA_SOURCE=NULL, DATA_VERSION=NULL, DATA_REJ_DESC=NULL, DATA_DEL_DESC=NULL, DATA_CRT_USER=NULL, DATA_CRT_DATE=NULL, DATA_CRT_TIME=NULL, DATA_CHG_USER=NULL, DATA_CHG_DATE=NULL, DATA_CHG_TIME=NULL, DATA_APV_USER=NULL, DATA_APV_DATE=NULL, DATA_APV_TIME=NULL, RSV1='1abe69a0b299409b8f6bb7f6fb1b9612', RSV2=NULL, RSV3=NULL, RSV4='mbtrule', RSV5='1' WHERE DATA_ID='MBT_510_DI0000401_5';
UPDATE GP_QC_RULE SET DATA_DATE='20200305', CORP_ID='TESTCORP', ORG_ID='72', GROUP_ID='002', INQ_ORG_ID=NULL, INQ_GROUP_ID=NULL, RULE_DESC='抵押物信息段的组织机构代码应符合如下规则：应由8位数字（或大写拉丁字母）以及1位数字（或大写拉丁字母）组成；校验位应满足校验规则（参见国标《全国组织机构代码编制规则》（GB11714-1997））。', RULE_MESSAGE='抵押物信息段的组织机构代码应符合如下规则：应由8位数字（或大写拉丁字母）以及1位数字（或大写拉丁字母）组成；校验位应满足校验规则（参见国标《全国组织机构代码编制规则》（GB11714-1997））。', RULE_TYPE=NULL, RULE_SOURCE='BUSI', FIELD='DATA_ID', FIELD_NAME=NULL, TRIMMABLE=NULL, NULLABLE='Y', TYPE_ID=NULL, ENCODING=NULL, MIN_LENGTH=NULL, MAX_LENGTH=NULL, MIN_VALUE=NULL, MAX_VALUE=NULL, MAX_PRECISION=NULL, MIN_SCALE=NULL, MAX_SCALE=NULL, ENUMERATION=NULL, PATTERN=NULL, IN_ENTITY=NULL, IN_FIELD=NULL, "SQL"=NULL, SQL_EXTRA_KEY=NULL, SCRIPT='if(E_PLEDGOR_TYPE =="2" &&  E_PLEOR_CERT_TYPE=="30"){

        def code=E_PLEOR_CERT_NUM;
        def ws = [3, 7, 9, 10, 5, 8, 4, 2];
        String str = ''0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ'';
        def reg = /^([0-9A-Z]){8}[0-9|X]$/;
      String tmp = code.toUpperCase();

        if (tmp.length() != 9) {
              return false
            }
        int sum = 0;
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
      return true', BEAN=NULL, CHECK_FLAG=NULL, CHECK_DESC=NULL, CHECK_ERR_TYPE=NULL, NEXT_ACTION=NULL, DATA_STATUS=NULL, DATA_FLAG=NULL, DATA_OP=NULL, DATA_SOURCE=NULL, DATA_VERSION=NULL, DATA_REJ_DESC=NULL, DATA_DEL_DESC=NULL, DATA_CRT_USER=NULL, DATA_CRT_DATE=NULL, DATA_CRT_TIME=NULL, DATA_CHG_USER=NULL, DATA_CHG_DATE=NULL, DATA_CHG_TIME=NULL, DATA_APV_USER=NULL, DATA_APV_DATE=NULL, DATA_APV_TIME=NULL, RSV1='1abe69a0b299409b8f6bb7f6fb1b9612', RSV2=NULL, RSV3=NULL, RSV4='mbtrule', RSV5='1' WHERE DATA_ID='MBT_510_EI0000401_5';
UPDATE GP_QC_RULE SET DATA_DATE='20200305', CORP_ID='TESTCORP', ORG_ID='72', GROUP_ID='002', INQ_ORG_ID=NULL, INQ_GROUP_ID=NULL, RULE_DESC=' 其他标识段的组织机构代码应符合如下规则：应由8位数字（或大写拉丁字母）以及1位数字（或大写拉丁字母）组成；校验位应满足校验规则（参见国标《全国组织机构代码编制规则》（GB11714-1997））。', RULE_MESSAGE=' 其他标识段的组织机构代码应符合如下规则：应由8位数字（或大写拉丁字母）以及1位数字（或大写拉丁字母）组成；校验位应满足校验规则（参见国标《全国组织机构代码编制规则》（GB11714-1997））。', RULE_TYPE=NULL, RULE_SOURCE='BUSI', FIELD='DATA_ID', FIELD_NAME=NULL, TRIMMABLE=NULL, NULLABLE='Y', TYPE_ID=NULL, ENCODING=NULL, MIN_LENGTH=NULL, MAX_LENGTH=NULL, MIN_VALUE=NULL, MAX_VALUE=NULL, MAX_PRECISION=NULL, MIN_SCALE=NULL, MAX_SCALE=NULL, ENUMERATION=NULL, PATTERN=NULL, IN_ENTITY=NULL, IN_FIELD=NULL, "SQL"=NULL, SQL_EXTRA_KEY=NULL, SCRIPT=' if(OTH_ENT_CERT_TYPE=="30"){
        def code=OTH_ENT_CERT_NUM;
        def ws = [3, 7, 9, 10, 5, 8, 4, 2];
        String str = ''0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ'';
        def reg = /^([0-9A-Z]){8}[0-9|X]$/;
      String tmp = code.toUpperCase();
        if (tmp.length() != 9) {
              return false
            }
        int sum = 0;
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
      return true', BEAN=NULL, CHECK_FLAG=NULL, CHECK_DESC=NULL, CHECK_ERR_TYPE=NULL, NEXT_ACTION=NULL, DATA_STATUS=NULL, DATA_FLAG=NULL, DATA_OP=NULL, DATA_SOURCE=NULL, DATA_VERSION=NULL, DATA_REJ_DESC=NULL, DATA_DEL_DESC=NULL, DATA_CRT_USER=NULL, DATA_CRT_DATE=NULL, DATA_CRT_TIME=NULL, DATA_CHG_USER=NULL, DATA_CHG_DATE=NULL, DATA_CHG_TIME=NULL, DATA_APV_USER=NULL, DATA_APV_DATE=NULL, DATA_APV_TIME=NULL, RSV1='1abe69a0b299409b8f6bb7f6fb1b9612', RSV2=NULL, RSV3=NULL, RSV4='mbtrule', RSV5='1' WHERE DATA_ID='MBT_310_CI0000401_1';
UPDATE GP_QC_RULE SET DATA_DATE='20200305', CORP_ID='TESTCORP', ORG_ID='72', GROUP_ID='002', INQ_ORG_ID=NULL, INQ_GROUP_ID=NULL, RULE_DESC='主要出资人段的组织机构代码应符合如下规则：应由8位数字（或大写拉丁字母）以及1位数字（或大写拉丁字母）组成；校验位应满足校验规则（参见国标《全国组织机构代码编制规则》（GB11714-1997））。', RULE_MESSAGE='主要出资人段的组织机构代码应符合如下规则：应由8位数字（或大写拉丁字母）以及1位数字（或大写拉丁字母）组成；校验位应满足校验规则（参见国标《全国组织机构代码编制规则》（GB11714-1997））。', RULE_TYPE=NULL, RULE_SOURCE='BUSI', FIELD='DATA_ID', FIELD_NAME=NULL, TRIMMABLE=NULL, NULLABLE='Y', TYPE_ID=NULL, ENCODING=NULL, MIN_LENGTH=NULL, MAX_LENGTH=NULL, MIN_VALUE=NULL, MAX_VALUE=NULL, MAX_PRECISION=NULL, MIN_SCALE=NULL, MAX_SCALE=NULL, ENUMERATION=NULL, PATTERN=NULL, IN_ENTITY=NULL, IN_FIELD=NULL, "SQL"=NULL, SQL_EXTRA_KEY=NULL, SCRIPT=' if(SHAR_HOD_CERT_TYPE =="2" &&  SHAR_HOD_ID_TYPE=="30"){

        def code=SHAR_HOD_ID_NUM;
        def ws = [3, 7, 9, 10, 5, 8, 4, 2];
        String str = ''0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ'';
        def reg = /^([0-9A-Z]){8}[0-9|X]$/;
      String tmp = code.toUpperCase();

        if (tmp.length() != 9) {
              return false
            }
        int sum = 0;
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
', BEAN=NULL, CHECK_FLAG=NULL, CHECK_DESC=NULL, CHECK_ERR_TYPE=NULL, NEXT_ACTION=NULL, DATA_STATUS=NULL, DATA_FLAG=NULL, DATA_OP=NULL, DATA_SOURCE=NULL, DATA_VERSION=NULL, DATA_REJ_DESC=NULL, DATA_DEL_DESC=NULL, DATA_CRT_USER=NULL, DATA_CRT_DATE=NULL, DATA_CRT_TIME=NULL, DATA_CHG_USER=NULL, DATA_CHG_DATE=NULL, DATA_CHG_TIME=NULL, DATA_APV_USER=NULL, DATA_APV_DATE=NULL, DATA_APV_TIME=NULL, RSV1='1abe69a0b299409b8f6bb7f6fb1b9612', RSV2=NULL, RSV3=NULL, RSV4='mbtrule', RSV5='1' WHERE DATA_ID='MBT_310_FI0000401_5';
UPDATE GP_QC_RULE SET DATA_DATE='20200303', CORP_ID='TESTCORP', ORG_ID='72', GROUP_ID='002', INQ_ORG_ID=NULL, INQ_GROUP_ID=NULL, RULE_DESC='相关还款责任人段的组织机构代码应符合如下规则：应由8位数字（或大写拉丁字母）以及1位数字（或大写拉丁字母）组成；校验位应满足校验规则（参见国标《全国组织机构代码编制规则》（GB11714-1997））。
', RULE_MESSAGE='相关还款责任人段的组织机构代码应符合如下规则：应由8位数字（或大写拉丁字母）以及1位数字（或大写拉丁字母）组成；校验位应满足校验规则（参见国标《全国组织机构代码编制规则》（GB11714-1997））。
', RULE_TYPE=NULL, RULE_SOURCE='BUSI', FIELD='DATA_ID', FIELD_NAME=NULL, TRIMMABLE=NULL, NULLABLE='Y', TYPE_ID=NULL, ENCODING=NULL, MIN_LENGTH=NULL, MAX_LENGTH=NULL, MIN_VALUE=NULL, MAX_VALUE=NULL, MAX_PRECISION=NULL, MIN_SCALE=NULL, MAX_SCALE=NULL, ENUMERATION=NULL, PATTERN=NULL, IN_ENTITY=NULL, IN_FIELD=NULL, "SQL"=NULL, SQL_EXTRA_KEY=NULL, SCRIPT=' if(INFO_ID_TYPE =="2" &&  ARLP_CERT_TYPE=="30"){

        def code=ARLP_CERT_NUM;
        def ws = [3, 7, 9, 10, 5, 8, 4, 2];
        String str = ''0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ'';
        def reg = /^([0-9A-Z]){8}[0-9|X]$/;
      String tmp = code.toUpperCase();

        if (tmp.length() != 9) {
              return false
            }
        int sum = 0;
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
      return true', BEAN=NULL, CHECK_FLAG=NULL, CHECK_DESC=NULL, CHECK_ERR_TYPE=NULL, NEXT_ACTION=NULL, DATA_STATUS=NULL, DATA_FLAG=NULL, DATA_OP=NULL, DATA_SOURCE=NULL, DATA_VERSION=NULL, DATA_REJ_DESC=NULL, DATA_DEL_DESC=NULL, DATA_CRT_USER=NULL, DATA_CRT_DATE=NULL, DATA_CRT_TIME=NULL, DATA_CHG_USER=NULL, DATA_CHG_DATE=NULL, DATA_CHG_TIME=NULL, DATA_APV_USER=NULL, DATA_APV_DATE=NULL, DATA_APV_TIME=NULL, RSV1=NULL, RSV2=NULL, RSV3=NULL, RSV4='mbtrule', RSV5='1' WHERE DATA_ID='MBT_230E_I0000401_1';
UPDATE GP_QC_RULE SET DATA_DATE='20200217', CORP_ID='TESTCORP', ORG_ID='72', GROUP_ID='002', INQ_ORG_ID=NULL, INQ_GROUP_ID=NULL, RULE_DESC=' 组织机构代码应符合如下规则：应由8位数字（或大写拉丁字母）以及1位数字（或大写拉丁字母）组成；校验位应满足校验规则（参见国标《全国组织机构代码编制规则》（GB11714-1997））。
', RULE_MESSAGE=' 组织机构代码应符合如下规则：应由8位数字（或大写拉丁字母）以及1位数字（或大写拉丁字母）组成；校验位应满足校验规则（参见国标《全国组织机构代码编制规则》（GB11714-1997））。
', RULE_TYPE=NULL, RULE_SOURCE='BUSI', FIELD='DATA_ID', FIELD_NAME=NULL, TRIMMABLE=NULL, NULLABLE='Y', TYPE_ID=NULL, ENCODING=NULL, MIN_LENGTH=NULL, MAX_LENGTH=NULL, MIN_VALUE=NULL, MAX_VALUE=NULL, MAX_PRECISION=NULL, MIN_SCALE=NULL, MAX_SCALE=NULL, ENUMERATION=NULL, PATTERN=NULL, IN_ENTITY=NULL, IN_FIELD=NULL, "SQL"=NULL, SQL_EXTRA_KEY=NULL, SCRIPT='  if(MBT_410_B_ID_TYPE=="30"){

        def code=MBT_410_B_ID_NUM;
        String tmp = code.toUpperCase();

        if (tmp.length() != 9) {
              return false
            }
        def ws = [3, 7, 9, 10, 5, 8, 4, 2];
        String str = ''0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ'';
        def reg = /^([0-9A-Z]){8}[0-9|X]$/;
        int sum = 0;
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

', BEAN=NULL, CHECK_FLAG=NULL, CHECK_DESC=NULL, CHECK_ERR_TYPE=NULL, NEXT_ACTION=NULL, DATA_STATUS=NULL, DATA_FLAG=NULL, DATA_OP=NULL, DATA_SOURCE=NULL, DATA_VERSION=NULL, DATA_REJ_DESC=NULL, DATA_DEL_DESC=NULL, DATA_CRT_USER=NULL, DATA_CRT_DATE=NULL, DATA_CRT_TIME=NULL, DATA_CHG_USER=NULL, DATA_CHG_DATE=NULL, DATA_CHG_TIME=NULL, DATA_APV_USER=NULL, DATA_APV_DATE=NULL, DATA_APV_TIME=NULL, RSV1='1abe69a0b299409b8f6bb7f6fb1b9612', RSV2=NULL, RSV3=NULL, RSV4='mbtrule', RSV5='1' WHERE DATA_ID='MBT_410I0000401_1';
UPDATE GP_QC_RULE SET DATA_DATE='20200217', CORP_ID='TESTCORP', ORG_ID='72', GROUP_ID='002', INQ_ORG_ID=NULL, INQ_GROUP_ID=NULL, RULE_DESC=' 组织机构代码应符合如下规则：应由8位数字（或大写拉丁字母）以及1位数字（或大写拉丁字母）组成；校验位应满足校验规则（参见国标《全国组织机构代码编制规则》（GB11714-1997））。
', RULE_MESSAGE=' 组织机构代码应符合如下规则：应由8位数字（或大写拉丁字母）以及1位数字（或大写拉丁字母）组成；校验位应满足校验规则（参见国标《全国组织机构代码编制规则》（GB11714-1997））。
', RULE_TYPE=NULL, RULE_SOURCE='BUSI', FIELD='DATA_ID', FIELD_NAME=NULL, TRIMMABLE=NULL, NULLABLE='Y', TYPE_ID=NULL, ENCODING=NULL, MIN_LENGTH=NULL, MAX_LENGTH=NULL, MIN_VALUE=NULL, MAX_VALUE=NULL, MAX_PRECISION=NULL, MIN_SCALE=NULL, MAX_SCALE=NULL, ENUMERATION=NULL, PATTERN=NULL, IN_ENTITY=NULL, IN_FIELD=NULL, "SQL"=NULL, SQL_EXTRA_KEY=NULL, SCRIPT=' if(MBT_440_B_ID_TYPE=="30"){

        def code=MBT_440_B_ID_NUM;
         
           String tmp = code.toUpperCase();

        if (tmp.length() != 9) {
              return false
            }
        def ws = [3, 7, 9, 10, 5, 8, 4, 2];
        String str = ''0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ'';
        def reg = /^([0-9A-Z]){8}[0-9|X]$/;
        int sum = 0;
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
', BEAN=NULL, CHECK_FLAG=NULL, CHECK_DESC=NULL, CHECK_ERR_TYPE=NULL, NEXT_ACTION=NULL, DATA_STATUS=NULL, DATA_FLAG=NULL, DATA_OP=NULL, DATA_SOURCE=NULL, DATA_VERSION=NULL, DATA_REJ_DESC=NULL, DATA_DEL_DESC=NULL, DATA_CRT_USER=NULL, DATA_CRT_DATE=NULL, DATA_CRT_TIME=NULL, DATA_CHG_USER=NULL, DATA_CHG_DATE=NULL, DATA_CHG_TIME=NULL, DATA_APV_USER=NULL, DATA_APV_DATE=NULL, DATA_APV_TIME=NULL, RSV1='1abe69a0b299409b8f6bb7f6fb1b9612', RSV2=NULL, RSV3=NULL, RSV4='mbtrule', RSV5='1' WHERE DATA_ID='MBT_440I0000401_1';
UPDATE GP_QC_RULE SET DATA_DATE='20200217', CORP_ID='TESTCORP', ORG_ID='72', GROUP_ID='002', INQ_ORG_ID=NULL, INQ_GROUP_ID=NULL, RULE_DESC=' 组织机构代码应符合如下规则：应由8位数字（或大写拉丁字母）以及1位数字（或大写拉丁字母）组成；校验位应满足校验规则（参见国标《全国组织机构代码编制规则》（GB11714-1997））。
', RULE_MESSAGE=' 组织机构代码应符合如下规则：应由8位数字（或大写拉丁字母）以及1位数字（或大写拉丁字母）组成；校验位应满足校验规则（参见国标《全国组织机构代码编制规则》（GB11714-1997））。
', RULE_TYPE=NULL, RULE_SOURCE='BUSI', FIELD='DATA_ID', FIELD_NAME=NULL, TRIMMABLE=NULL, NULLABLE='Y', TYPE_ID=NULL, ENCODING=NULL, MIN_LENGTH=NULL, MAX_LENGTH=NULL, MIN_VALUE=NULL, MAX_VALUE=NULL, MAX_PRECISION=NULL, MIN_SCALE=NULL, MAX_SCALE=NULL, ENUMERATION=NULL, PATTERN=NULL, IN_ENTITY=NULL, IN_FIELD=NULL, "SQL"=NULL, SQL_EXTRA_KEY=NULL, SCRIPT='if(MBT_420_B_ID_TYPE.contains("30")){

        def code=MBT_420_B_ID_NUM;
        def ws = [3, 7, 9, 10, 5, 8, 4, 2];
        String str = ''0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ'';
        def reg = /^([0-9A-Z]){8}[0-9|X]$/;
       String tmp = code.toUpperCase();

        if (tmp.length() != 9) {
              return false
            }
        int sum = 0;
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
      return true', BEAN=NULL, CHECK_FLAG=NULL, CHECK_DESC=NULL, CHECK_ERR_TYPE=NULL, NEXT_ACTION=NULL, DATA_STATUS=NULL, DATA_FLAG=NULL, DATA_OP=NULL, DATA_SOURCE=NULL, DATA_VERSION=NULL, DATA_REJ_DESC=NULL, DATA_DEL_DESC=NULL, DATA_CRT_USER=NULL, DATA_CRT_DATE=NULL, DATA_CRT_TIME=NULL, DATA_CHG_USER=NULL, DATA_CHG_DATE=NULL, DATA_CHG_TIME=NULL, DATA_APV_USER=NULL, DATA_APV_DATE=NULL, DATA_APV_TIME=NULL, RSV1='1abe69a0b299409b8f6bb7f6fb1b9612', RSV2=NULL, RSV3=NULL, RSV4='mbtrule', RSV5='1' WHERE DATA_ID='MBT_420I0000401_1';
UPDATE GP_QC_RULE SET DATA_DATE='20200303', CORP_ID='TESTCORP', ORG_ID='72', GROUP_ID='002', INQ_ORG_ID=NULL, INQ_GROUP_ID=NULL, RULE_DESC='共同受信人信息段的组织机构代码应符合如下规则：应由8位数字（或大写拉丁字母）以及1位数字（或大写拉丁字母）组成；校验位应满足校验规则（参见国标《全国组织机构代码编制规则》（GB11714-1997））。
', RULE_MESSAGE='共同受信人信息段的组织机构代码应符合如下规则：应由8位数字（或大写拉丁字母）以及1位数字（或大写拉丁字母）组成；校验位应满足校验规则（参见国标《全国组织机构代码编制规则》（GB11714-1997））。
', RULE_TYPE=NULL, RULE_SOURCE='BUSI', FIELD='DATA_ID', FIELD_NAME=NULL, TRIMMABLE=NULL, NULLABLE='Y', TYPE_ID=NULL, ENCODING=NULL, MIN_LENGTH=NULL, MAX_LENGTH=NULL, MIN_VALUE=NULL, MAX_VALUE=NULL, MAX_PRECISION=NULL, MIN_SCALE=NULL, MAX_SCALE=NULL, ENUMERATION=NULL, PATTERN=NULL, IN_ENTITY=NULL, IN_FIELD=NULL, "SQL"=NULL, SQL_EXTRA_KEY=NULL, SCRIPT=' if(C_BRER_TYPE =="2" &&  C_CERT_REL_ID_TYPE=="30"){

        def code=C_CERT_REL_ID_NUM;
        def ws = [3, 7, 9, 10, 5, 8, 4, 2];
        String str = ''0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ'';
        def reg = /^([0-9A-Z]){8}[0-9|X]$/;
      String tmp = code.toUpperCase();

        if (tmp.length() != 9) {
              return false
            }
        int sum = 0;
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
      return true', BEAN=NULL, CHECK_FLAG=NULL, CHECK_DESC=NULL, CHECK_ERR_TYPE=NULL, NEXT_ACTION=NULL, DATA_STATUS=NULL, DATA_FLAG=NULL, DATA_OP=NULL, DATA_SOURCE=NULL, DATA_VERSION=NULL, DATA_REJ_DESC=NULL, DATA_DEL_DESC=NULL, DATA_CRT_USER=NULL, DATA_CRT_DATE=NULL, DATA_CRT_TIME=NULL, DATA_CHG_USER=NULL, DATA_CHG_DATE=NULL, DATA_CHG_TIME=NULL, DATA_APV_USER=NULL, DATA_APV_DATE=NULL, DATA_APV_TIME=NULL, RSV1=NULL, RSV2=NULL, RSV3=NULL, RSV4='mbtrule', RSV5='1' WHERE DATA_ID='MBT_220C_I0000401_1';
UPDATE GP_QC_RULE SET DATA_DATE='20190624', CORP_ID='TESTCORP', ORG_ID='72', GROUP_ID='002', INQ_ORG_ID=NULL, INQ_GROUP_ID=NULL, RULE_DESC=' 组织机构代码应符合如下规则：应由8位数字（或大写拉丁字母）以及1位数字（或大写拉丁字母）组成；校验位应满足校验规则（参见国标《全国组织机构代码编制规则》（GB11714-1997））。
', RULE_MESSAGE=' 组织机构代码应符合如下规则：应由8位数字（或大写拉丁字母）以及1位数字（或大写拉丁字母）组成；校验位应满足校验规则（参见国标《全国组织机构代码编制规则》（GB11714-1997））。
', RULE_TYPE=NULL, RULE_SOURCE='BUSI', FIELD='DATA_ID', FIELD_NAME=NULL, TRIMMABLE=NULL, NULLABLE='Y', TYPE_ID=NULL, ENCODING=NULL, MIN_LENGTH=NULL, MAX_LENGTH=NULL, MIN_VALUE=NULL, MAX_VALUE=NULL, MAX_PRECISION=NULL, MIN_SCALE=NULL, MAX_SCALE=NULL, ENUMERATION=NULL, PATTERN=NULL, IN_ENTITY=NULL, IN_FIELD=NULL, "SQL"=NULL, SQL_EXTRA_KEY=NULL, SCRIPT=' if(MBT_310_B_ENT_CERT=="30"){

        def code=MBT_310_B_ENT_CERT_NUM;
        def ws = [3, 7, 9, 10, 5, 8, 4, 2];
        String str = ''0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ'';
        def reg = /^([0-9A-Z]){8}[0-9|X]$/;
      String tmp = code.toUpperCase();

        if (tmp.length() != 9) {
              return false
            }
        int sum = 0;
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
      return true', BEAN=NULL, CHECK_FLAG=NULL, CHECK_DESC=NULL, CHECK_ERR_TYPE=NULL, NEXT_ACTION=NULL, DATA_STATUS=NULL, DATA_FLAG=NULL, DATA_OP=NULL, DATA_SOURCE=NULL, DATA_VERSION=NULL, DATA_REJ_DESC=NULL, DATA_DEL_DESC=NULL, DATA_CRT_USER=NULL, DATA_CRT_DATE=NULL, DATA_CRT_TIME=NULL, DATA_CHG_USER=NULL, DATA_CHG_DATE=NULL, DATA_CHG_TIME=NULL, DATA_APV_USER=NULL, DATA_APV_DATE=NULL, DATA_APV_TIME=NULL, RSV1='1abe69a0b299409b8f6bb7f6fb1b9612', RSV2=NULL, RSV3=NULL, RSV4='mbtrule', RSV5='1' WHERE DATA_ID='MBT_310I0000401_1';

UPDATE GP_QC_RULE SET DATA_DATE='20190624', CORP_ID='TESTCORP', ORG_ID='72', GROUP_ID='002', INQ_ORG_ID=NULL, INQ_GROUP_ID=NULL, RULE_DESC='当“账户类型”为“R4”，“担保方式”不能为空', RULE_MESSAGE='当“账户类型”为“R4”，“担保方式”不能为空', RULE_TYPE=NULL, RULE_SOURCE='BUSI', FIELD='DATA_ID', FIELD_NAME=NULL, TRIMMABLE=NULL, NULLABLE='Y', TYPE_ID=NULL, ENCODING=NULL, MIN_LENGTH=NULL, MAX_LENGTH=NULL, MIN_VALUE=NULL, MAX_VALUE=NULL, MAX_PRECISION=NULL, MIN_SCALE=NULL, MAX_SCALE=NULL, ENUMERATION=NULL, PATTERN=NULL, IN_ENTITY=NULL, IN_FIELD=NULL, "SQL"=NULL, SQL_EXTRA_KEY=NULL, SCRIPT='if (!isEmpty(B_ACCT_TYPE) && B_ACCT_TYPE == "R4") {
    if (!isEmpty(C_GUAR_MODE)) {
        return true
    }
    return false
}
return true', BEAN=NULL, CHECK_FLAG=NULL, CHECK_DESC=NULL, CHECK_ERR_TYPE=NULL, NEXT_ACTION=NULL, DATA_STATUS=NULL, DATA_FLAG=NULL, DATA_OP=NULL, DATA_SOURCE=NULL, DATA_VERSION=NULL, DATA_REJ_DESC=NULL, DATA_DEL_DESC=NULL, DATA_CRT_USER=NULL, DATA_CRT_DATE=NULL, DATA_CRT_TIME=NULL, DATA_CHG_USER=NULL, DATA_CHG_DATE=NULL, DATA_CHG_TIME=NULL, DATA_APV_USER=NULL, DATA_APV_DATE=NULL, DATA_APV_TIME=NULL, RSV1='743b7643b42b43f1a2660a3f0f92356a', RSV2=NULL, RSV3=NULL, RSV4='mbtrule', RSV5='1' WHERE DATA_ID='MBT_410S4100115S410011505S410011502';
UPDATE GP_QC_RULE SET DATA_DATE='20190624', CORP_ID='TESTCORP', ORG_ID='72', GROUP_ID='002', INQ_ORG_ID=NULL, INQ_GROUP_ID=NULL, RULE_DESC='当“账户类型”为“D2”，“其他还款保证方式”不能为空', RULE_MESSAGE='当“账户类型”为“D2”，“其他还款保证方式”不能为空', RULE_TYPE=NULL, RULE_SOURCE='BUSI', FIELD='DATA_ID', FIELD_NAME=NULL, TRIMMABLE=NULL, NULLABLE='Y', TYPE_ID=NULL, ENCODING=NULL, MIN_LENGTH=NULL, MAX_LENGTH=NULL, MIN_VALUE=NULL, MAX_VALUE=NULL, MAX_PRECISION=NULL, MIN_SCALE=NULL, MAX_SCALE=NULL, ENUMERATION=NULL, PATTERN=NULL, IN_ENTITY=NULL, IN_FIELD=NULL, "SQL"=NULL, SQL_EXTRA_KEY=NULL, SCRIPT='if (!isEmpty(B_ACCT_TYPE) && B_ACCT_TYPE == "D2") {
    if (!isEmpty(C_OTH_REPY_GUAR_WAY)) {
        return true
    }
    return false
}
return true', BEAN=NULL, CHECK_FLAG=NULL, CHECK_DESC=NULL, CHECK_ERR_TYPE=NULL, NEXT_ACTION=NULL, DATA_STATUS=NULL, DATA_FLAG=NULL, DATA_OP=NULL, DATA_SOURCE=NULL, DATA_VERSION=NULL, DATA_REJ_DESC=NULL, DATA_DEL_DESC=NULL, DATA_CRT_USER=NULL, DATA_CRT_DATE=NULL, DATA_CRT_TIME=NULL, DATA_CHG_USER=NULL, DATA_CHG_DATE=NULL, DATA_CHG_TIME=NULL, DATA_APV_USER=NULL, DATA_APV_DATE=NULL, DATA_APV_TIME=NULL, RSV1='4b476333f38c4fe4b238b4acb9bcf5b5', RSV2=NULL, RSV3=NULL, RSV4='mbtrule', RSV5='1' WHERE DATA_ID='MBT_410S4100117S410011703S410011702';
UPDATE GP_QC_RULE SET DATA_DATE='20190624', CORP_ID='TESTCORP', ORG_ID='72', GROUP_ID='002', INQ_ORG_ID=NULL, INQ_GROUP_ID=NULL, RULE_DESC='当“账户类型”为“R1”，“借款期限分类”为空', RULE_MESSAGE='当“账户类型”为“R1”，“借款期限分类”为空', RULE_TYPE=NULL, RULE_SOURCE='BUSI', FIELD='DATA_ID', FIELD_NAME=NULL, TRIMMABLE=NULL, NULLABLE='Y', TYPE_ID=NULL, ENCODING=NULL, MIN_LENGTH=NULL, MAX_LENGTH=NULL, MIN_VALUE=NULL, MAX_VALUE=NULL, MAX_PRECISION=NULL, MIN_SCALE=NULL, MAX_SCALE=NULL, ENUMERATION=NULL, PATTERN=NULL, IN_ENTITY=NULL, IN_FIELD=NULL, "SQL"=NULL, SQL_EXTRA_KEY=NULL, SCRIPT='if (!isEmpty(B_ACCT_TYPE) && B_ACCT_TYPE == "R1") {
    if (isEmpty(C_LOAN_TIME_LIM_CAT)) {
        return true
    }
    return false
}
return true', BEAN=NULL, CHECK_FLAG=NULL, CHECK_DESC=NULL, CHECK_ERR_TYPE=NULL, NEXT_ACTION=NULL, DATA_STATUS=NULL, DATA_FLAG=NULL, DATA_OP=NULL, DATA_SOURCE=NULL, DATA_VERSION=NULL, DATA_REJ_DESC=NULL, DATA_DEL_DESC=NULL, DATA_CRT_USER=NULL, DATA_CRT_DATE=NULL, DATA_CRT_TIME=NULL, DATA_CHG_USER=NULL, DATA_CHG_DATE=NULL, DATA_CHG_TIME=NULL, DATA_APV_USER=NULL, DATA_APV_DATE=NULL, DATA_APV_TIME=NULL, RSV1='3c2f421a2fbe4e49aba29f45c33db17b', RSV2=NULL, RSV3=NULL, RSV4='mbtrule', RSV5='1' WHERE DATA_ID='MBT_410S4100119S410011901S410011902';
UPDATE GP_QC_RULE SET DATA_DATE='20190624', CORP_ID='TESTCORP', ORG_ID='72', GROUP_ID='002', INQ_ORG_ID=NULL, INQ_GROUP_ID=NULL, RULE_DESC='当“账户类型”为“R4”，“借款期限分类”不能为空', RULE_MESSAGE='当“账户类型”为“R4”，“借款期限分类”不能为空', RULE_TYPE=NULL, RULE_SOURCE='BUSI', FIELD='DATA_ID', FIELD_NAME=NULL, TRIMMABLE=NULL, NULLABLE='Y', TYPE_ID=NULL, ENCODING=NULL, MIN_LENGTH=NULL, MAX_LENGTH=NULL, MIN_VALUE=NULL, MAX_VALUE=NULL, MAX_PRECISION=NULL, MIN_SCALE=NULL, MAX_SCALE=NULL, ENUMERATION=NULL, PATTERN=NULL, IN_ENTITY=NULL, IN_FIELD=NULL, "SQL"=NULL, SQL_EXTRA_KEY=NULL, SCRIPT='if (!isEmpty(B_ACCT_TYPE) && B_ACCT_TYPE == "R4") {
    if (!isEmpty(C_LOAN_TIME_LIM_CAT)) {
        return true
    }
    return false
}
return true', BEAN=NULL, CHECK_FLAG=NULL, CHECK_DESC=NULL, CHECK_ERR_TYPE=NULL, NEXT_ACTION=NULL, DATA_STATUS=NULL, DATA_FLAG=NULL, DATA_OP=NULL, DATA_SOURCE=NULL, DATA_VERSION=NULL, DATA_REJ_DESC=NULL, DATA_DEL_DESC=NULL, DATA_CRT_USER=NULL, DATA_CRT_DATE=NULL, DATA_CRT_TIME=NULL, DATA_CHG_USER=NULL, DATA_CHG_DATE=NULL, DATA_CHG_TIME=NULL, DATA_APV_USER=NULL, DATA_APV_DATE=NULL, DATA_APV_TIME=NULL, RSV1='41b5bae9729e41259a9e926f102c2d42', RSV2=NULL, RSV3=NULL, RSV4='mbtrule', RSV5='1' WHERE DATA_ID='MBT_410S4100120S410012003S410012002';
UPDATE GP_QC_RULE SET DATA_DATE='20190624', CORP_ID='TESTCORP', ORG_ID='72', GROUP_ID='002', INQ_ORG_ID=NULL, INQ_GROUP_ID=NULL, RULE_DESC='当“账户类型”为“D1”，“贷款发放方式”不能为空', RULE_MESSAGE='当“账户类型”为“D1”，“贷款发放方式”不能为空', RULE_TYPE=NULL, RULE_SOURCE='BUSI', FIELD='DATA_ID', FIELD_NAME=NULL, TRIMMABLE=NULL, NULLABLE='Y', TYPE_ID=NULL, ENCODING=NULL, MIN_LENGTH=NULL, MAX_LENGTH=NULL, MIN_VALUE=NULL, MAX_VALUE=NULL, MAX_PRECISION=NULL, MIN_SCALE=NULL, MAX_SCALE=NULL, ENUMERATION=NULL, PATTERN=NULL, IN_ENTITY=NULL, IN_FIELD=NULL, "SQL"=NULL, SQL_EXTRA_KEY=NULL, SCRIPT='if (!isEmpty(B_ACCT_TYPE) && B_ACCT_TYPE == "D1") {
    if (!isEmpty(C_LOA_FRM)) {
        return true
    }
    return false
}
return true', BEAN=NULL, CHECK_FLAG=NULL, CHECK_DESC=NULL, CHECK_ERR_TYPE=NULL, NEXT_ACTION=NULL, DATA_STATUS=NULL, DATA_FLAG=NULL, DATA_OP=NULL, DATA_SOURCE=NULL, DATA_VERSION=NULL, DATA_REJ_DESC=NULL, DATA_DEL_DESC=NULL, DATA_CRT_USER=NULL, DATA_CRT_DATE=NULL, DATA_CRT_TIME=NULL, DATA_CHG_USER=NULL, DATA_CHG_DATE=NULL, DATA_CHG_TIME=NULL, DATA_APV_USER=NULL, DATA_APV_DATE=NULL, DATA_APV_TIME=NULL, RSV1='69cf2b1b0ee2490abe1f0bdabd3cc963', RSV2=NULL, RSV3=NULL, RSV4='mbtrule', RSV5='1' WHERE DATA_ID='MBT_410S4100121S410012107S410012102';
UPDATE GP_QC_RULE SET DATA_DATE='20190624', CORP_ID='TESTCORP', ORG_ID='72', GROUP_ID='002', INQ_ORG_ID=NULL, INQ_GROUP_ID=NULL, RULE_DESC='当“账户类型”为“D1”，“贷款实际投向”不能为空', RULE_MESSAGE='当“账户类型”为“D1”，“贷款实际投向”不能为空', RULE_TYPE=NULL, RULE_SOURCE='BUSI', FIELD='DATA_ID', FIELD_NAME=NULL, TRIMMABLE=NULL, NULLABLE='Y', TYPE_ID=NULL, ENCODING=NULL, MIN_LENGTH=NULL, MAX_LENGTH=NULL, MIN_VALUE=NULL, MAX_VALUE=NULL, MAX_PRECISION=NULL, MIN_SCALE=NULL, MAX_SCALE=NULL, ENUMERATION=NULL, PATTERN=NULL, IN_ENTITY=NULL, IN_FIELD=NULL, "SQL"=NULL, SQL_EXTRA_KEY=NULL, SCRIPT='if (!isEmpty(B_ACCT_TYPE) && B_ACCT_TYPE == "D1" && C_BUSI_LINES == "11") {
    if (!isEmpty(C_ACT_INVEST)) {
        return true
    }
    return false
}
return true', BEAN=NULL, CHECK_FLAG=NULL, CHECK_DESC=NULL, CHECK_ERR_TYPE=NULL, NEXT_ACTION=NULL, DATA_STATUS=NULL, DATA_FLAG=NULL, DATA_OP=NULL, DATA_SOURCE=NULL, DATA_VERSION=NULL, DATA_REJ_DESC=NULL, DATA_DEL_DESC=NULL, DATA_CRT_USER=NULL, DATA_CRT_DATE=NULL, DATA_CRT_TIME=NULL, DATA_CHG_USER=NULL, DATA_CHG_DATE=NULL, DATA_CHG_TIME=NULL, DATA_APV_USER=NULL, DATA_APV_DATE=NULL, DATA_APV_TIME=NULL, RSV1='fe6e15aa62514b2dbf5c40b43c1328c5', RSV2=NULL, RSV3=NULL, RSV4='mbtrule', RSV5='1' WHERE DATA_ID='MBT_410S4100123S410012305,S410012388S410012302';
UPDATE GP_QC_RULE SET DATA_DATE='20190709', CORP_ID='TESTCORP', ORG_ID='72', GROUP_ID='002', INQ_ORG_ID=NULL, INQ_GROUP_ID=NULL, RULE_DESC='当“报送时点说明代码”为“41-五级分类调整”时，若“账户类型”为“R4”，应包含基础段、还款表现信息段。', RULE_MESSAGE='当“报送时点说明代码”为“41-五级分类调整”时，若“账户类型”为“R4”，应包含基础段、还款表现信息段。', RULE_TYPE=NULL, RULE_SOURCE='BUSI', FIELD='DATA_ID', FIELD_NAME=NULL, TRIMMABLE=NULL, NULLABLE='Y', TYPE_ID=NULL, ENCODING=NULL, MIN_LENGTH=NULL, MAX_LENGTH=NULL, MIN_VALUE=NULL, MAX_VALUE=NULL, MAX_PRECISION=NULL, MIN_SCALE=NULL, MAX_SCALE=NULL, ENUMERATION=NULL, PATTERN=NULL, IN_ENTITY=NULL, IN_FIELD=NULL, "SQL"=NULL, SQL_EXTRA_KEY=NULL, SCRIPT='if (!isEmpty(B_ACCT_TYPE) && B_ACCT_TYPE == "R4" && B_RPT_DATE_CODE == "41") {
    if (IS_RPT.substring(0,1) == "1" && IS_RPT.substring(4,5) == "1") {
        return true
    }
    return false
}
return true', BEAN=NULL, CHECK_FLAG=NULL, CHECK_DESC=NULL, CHECK_ERR_TYPE=NULL, NEXT_ACTION=NULL, DATA_STATUS=NULL, DATA_FLAG=NULL, DATA_OP=NULL, DATA_SOURCE=NULL, DATA_VERSION=NULL, DATA_REJ_DESC=NULL, DATA_DEL_DESC=NULL, DATA_CRT_USER=NULL, DATA_CRT_DATE=NULL, DATA_CRT_TIME=NULL, DATA_CHG_USER=NULL, DATA_CHG_DATE=NULL, DATA_CHG_TIME=NULL, DATA_APV_USER=NULL, DATA_APV_DATE=NULL, DATA_APV_TIME=NULL, RSV1='9ef6f816c77243349b23fa4595fee32b', RSV2=NULL, RSV3=NULL, RSV4='mbtrule', RSV5='1' WHERE DATA_ID='MBT_410R4100111R410011105R410010302';
UPDATE GP_QC_RULE SET DATA_DATE='20190709', CORP_ID='TESTCORP', ORG_ID='72', GROUP_ID='002', INQ_ORG_ID=NULL, INQ_GROUP_ID=NULL, RULE_DESC='当“报送时点说明代码”为“41-五级分类调整”时，若“账户类型”为“D2”，不应包含抵质押物信息段、授信额度信息段。', RULE_MESSAGE='当“报送时点说明代码”为“41-五级分类调整”时，若“账户类型”为“D2”，不应包含抵质押物信息段、授信额度信息段。', RULE_TYPE=NULL, RULE_SOURCE='BUSI', FIELD='DATA_ID', FIELD_NAME=NULL, TRIMMABLE=NULL, NULLABLE='Y', TYPE_ID=NULL, ENCODING=NULL, MIN_LENGTH=NULL, MAX_LENGTH=NULL, MIN_VALUE=NULL, MAX_VALUE=NULL, MAX_PRECISION=NULL, MIN_SCALE=NULL, MAX_SCALE=NULL, ENUMERATION=NULL, PATTERN=NULL, IN_ENTITY=NULL, IN_FIELD=NULL, "SQL"=NULL, SQL_EXTRA_KEY=NULL, SCRIPT='if (!isEmpty(B_ACCT_TYPE) && B_ACCT_TYPE == "D2" && B_RPT_DATE_CODE == "41") {
    if (IS_RPT.substring(2,3) == "0" && IS_RPT.substring(7,8) == "0") {
        return true
    }
    return false
}
return true', BEAN=NULL, CHECK_FLAG=NULL, CHECK_DESC=NULL, CHECK_ERR_TYPE=NULL, NEXT_ACTION=NULL, DATA_STATUS=NULL, DATA_FLAG=NULL, DATA_OP=NULL, DATA_SOURCE=NULL, DATA_VERSION=NULL, DATA_REJ_DESC=NULL, DATA_DEL_DESC=NULL, DATA_CRT_USER=NULL, DATA_CRT_DATE=NULL, DATA_CRT_TIME=NULL, DATA_CHG_USER=NULL, DATA_CHG_DATE=NULL, DATA_CHG_TIME=NULL, DATA_APV_USER=NULL, DATA_APV_DATE=NULL, DATA_APV_TIME=NULL, RSV1='6b1812705ced40d09e727e1da1daf014', RSV2=NULL, RSV3=NULL, RSV4='mbtrule', RSV5='1' WHERE DATA_ID='MBT_410R4100112R410011103R410010206';
UPDATE GP_QC_RULE SET DATA_DATE='20190709', CORP_ID='TESTCORP', ORG_ID='72', GROUP_ID='002', INQ_ORG_ID=NULL, INQ_GROUP_ID=NULL, RULE_DESC='当“报送时点说明代码”为“42-展期发生”时，若“账户类型”为“D1”，应包含基础段、还款表现信息段、特定交易说明段。', RULE_MESSAGE='当“报送时点说明代码”为“42-展期发生”时，若“账户类型”为“D1”，应包含基础段、还款表现信息段、特定交易说明段。', RULE_TYPE=NULL, RULE_SOURCE='BUSI', FIELD='DATA_ID', FIELD_NAME=NULL, TRIMMABLE=NULL, NULLABLE='Y', TYPE_ID=NULL, ENCODING=NULL, MIN_LENGTH=NULL, MAX_LENGTH=NULL, MIN_VALUE=NULL, MAX_VALUE=NULL, MAX_PRECISION=NULL, MIN_SCALE=NULL, MAX_SCALE=NULL, ENUMERATION=NULL, PATTERN=NULL, IN_ENTITY=NULL, IN_FIELD=NULL, "SQL"=NULL, SQL_EXTRA_KEY=NULL, SCRIPT='if (!isEmpty(B_ACCT_TYPE) && B_ACCT_TYPE == "D1" && B_RPT_DATE_CODE == "42") {
    if (IS_RPT.substring(0,1) == "1" && IS_RPT.substring(4,5) == "1" && IS_RPT.substring(8,9) == "1") {
        return true
    }
    return false
}
return true', BEAN=NULL, CHECK_FLAG=NULL, CHECK_DESC=NULL, CHECK_ERR_TYPE=NULL, NEXT_ACTION=NULL, DATA_STATUS=NULL, DATA_FLAG=NULL, DATA_OP=NULL, DATA_SOURCE=NULL, DATA_VERSION=NULL, DATA_REJ_DESC=NULL, DATA_DEL_DESC=NULL, DATA_CRT_USER=NULL, DATA_CRT_DATE=NULL, DATA_CRT_TIME=NULL, DATA_CHG_USER=NULL, DATA_CHG_DATE=NULL, DATA_CHG_TIME=NULL, DATA_APV_USER=NULL, DATA_APV_DATE=NULL, DATA_APV_TIME=NULL, RSV1='78edc317ebb64969987f1627afd44359', RSV2=NULL, RSV3=NULL, RSV4='mbtrule', RSV5='1' WHERE DATA_ID='MBT_410R4100113R410011301R410011302';
UPDATE GP_QC_RULE SET DATA_DATE='20190709', CORP_ID='TESTCORP', ORG_ID='72', GROUP_ID='002', INQ_ORG_ID=NULL, INQ_GROUP_ID=NULL, RULE_DESC='当“报送时点说明代码”为“42-展期发生”时，若“账户类型”为“C1”，不适用展期发生报送时点。', RULE_MESSAGE='当“报送时点说明代码”为“42-展期发生”时，若“账户类型”为“C1”，不适用展期发生报送时点。', RULE_TYPE=NULL, RULE_SOURCE='BUSI', FIELD='DATA_ID', FIELD_NAME=NULL, TRIMMABLE=NULL, NULLABLE='Y', TYPE_ID=NULL, ENCODING=NULL, MIN_LENGTH=NULL, MAX_LENGTH=NULL, MIN_VALUE=NULL, MAX_VALUE=NULL, MAX_PRECISION=NULL, MIN_SCALE=NULL, MAX_SCALE=NULL, ENUMERATION=NULL, PATTERN=NULL, IN_ENTITY=NULL, IN_FIELD=NULL, "SQL"=NULL, SQL_EXTRA_KEY=NULL, SCRIPT='if (!isEmpty(B_ACCT_TYPE) && B_ACCT_TYPE == "C1") {
    if (B_RPT_DATE_CODE != "42") {
        return true
    }
    return false
}
return true', BEAN=NULL, CHECK_FLAG=NULL, CHECK_DESC=NULL, CHECK_ERR_TYPE=NULL, NEXT_ACTION=NULL, DATA_STATUS=NULL, DATA_FLAG=NULL, DATA_OP=NULL, DATA_SOURCE=NULL, DATA_VERSION=NULL, DATA_REJ_DESC=NULL, DATA_DEL_DESC=NULL, DATA_CRT_USER=NULL, DATA_CRT_DATE=NULL, DATA_CRT_TIME=NULL, DATA_CHG_USER=NULL, DATA_CHG_DATE=NULL, DATA_CHG_TIME=NULL, DATA_APV_USER=NULL, DATA_APV_DATE=NULL, DATA_APV_TIME=NULL, RSV1='8eb65c69a33148528435813a01363ca4', RSV2=NULL, RSV3=NULL, RSV4='mbtrule', RSV5='1' WHERE DATA_ID='MBT_410R4100113R410011307R410011304';
UPDATE GP_QC_RULE SET DATA_DATE='20190709', CORP_ID='TESTCORP', ORG_ID='72', GROUP_ID='002', INQ_ORG_ID=NULL, INQ_GROUP_ID=NULL, RULE_DESC='当“报送时点说明代码”为“42-展期发生”时，若“账户类型”为“R4”，不应包含初始债权说明段。', RULE_MESSAGE='当“报送时点说明代码”为“42-展期发生”时，若“账户类型”为“R4”，不应包含初始债权说明段。', RULE_TYPE=NULL, RULE_SOURCE='BUSI', FIELD='DATA_ID', FIELD_NAME=NULL, TRIMMABLE=NULL, NULLABLE='Y', TYPE_ID=NULL, ENCODING=NULL, MIN_LENGTH=NULL, MAX_LENGTH=NULL, MIN_VALUE=NULL, MAX_VALUE=NULL, MAX_PRECISION=NULL, MIN_SCALE=NULL, MAX_SCALE=NULL, ENUMERATION=NULL, PATTERN=NULL, IN_ENTITY=NULL, IN_FIELD=NULL, "SQL"=NULL, SQL_EXTRA_KEY=NULL, SCRIPT='if (!isEmpty(B_ACCT_TYPE) && B_ACCT_TYPE == "R4" && B_RPT_DATE_CODE == "42") {
    if (IS_RPT.substring(3,4) == "0") {
        return true
    }
    return false
}
return true', BEAN=NULL, CHECK_FLAG=NULL, CHECK_DESC=NULL, CHECK_ERR_TYPE=NULL, NEXT_ACTION=NULL, DATA_STATUS=NULL, DATA_FLAG=NULL, DATA_OP=NULL, DATA_SOURCE=NULL, DATA_VERSION=NULL, DATA_REJ_DESC=NULL, DATA_DEL_DESC=NULL, DATA_CRT_USER=NULL, DATA_CRT_DATE=NULL, DATA_CRT_TIME=NULL, DATA_CHG_USER=NULL, DATA_CHG_DATE=NULL, DATA_CHG_TIME=NULL, DATA_APV_USER=NULL, DATA_APV_DATE=NULL, DATA_APV_TIME=NULL, RSV1='288a54faf2404a63af900f3bf9164e66', RSV2=NULL, RSV3=NULL, RSV4='mbtrule', RSV5='1' WHERE DATA_ID='MBT_410R4100114R410011305R410010202';
UPDATE GP_QC_RULE SET DATA_DATE='20190709', CORP_ID='TESTCORP', ORG_ID='72', GROUP_ID='002', INQ_ORG_ID=NULL, INQ_GROUP_ID=NULL, RULE_DESC='当“报送时点说明代码”为“49-其他报送日”时，若“账户类型”为“D2”，应包含基础段、还款表现信息段。', RULE_MESSAGE='当“报送时点说明代码”为“49-其他报送日”时，若“账户类型”为“D2”，应包含基础段、还款表现信息段。', RULE_TYPE=NULL, RULE_SOURCE='BUSI', FIELD='DATA_ID', FIELD_NAME=NULL, TRIMMABLE=NULL, NULLABLE='Y', TYPE_ID=NULL, ENCODING=NULL, MIN_LENGTH=NULL, MAX_LENGTH=NULL, MIN_VALUE=NULL, MAX_VALUE=NULL, MAX_PRECISION=NULL, MIN_SCALE=NULL, MAX_SCALE=NULL, ENUMERATION=NULL, PATTERN=NULL, IN_ENTITY=NULL, IN_FIELD=NULL, "SQL"=NULL, SQL_EXTRA_KEY=NULL, SCRIPT='if (!isEmpty(B_ACCT_TYPE) && B_ACCT_TYPE == "D2" && B_RPT_DATE_CODE == "49") {
    if (IS_RPT.substring(0,1) == "1" && IS_RPT.substring(4,5) == "1") {
        return true
    }
    return false
}
return true', BEAN=NULL, CHECK_FLAG=NULL, CHECK_DESC=NULL, CHECK_ERR_TYPE=NULL, NEXT_ACTION=NULL, DATA_STATUS=NULL, DATA_FLAG=NULL, DATA_OP=NULL, DATA_SOURCE=NULL, DATA_VERSION=NULL, DATA_REJ_DESC=NULL, DATA_DEL_DESC=NULL, DATA_CRT_USER=NULL, DATA_CRT_DATE=NULL, DATA_CRT_TIME=NULL, DATA_CHG_USER=NULL, DATA_CHG_DATE=NULL, DATA_CHG_TIME=NULL, DATA_APV_USER=NULL, DATA_APV_DATE=NULL, DATA_APV_TIME=NULL, RSV1='f575f52fff68434c830c3b29f606959c', RSV2=NULL, RSV3=NULL, RSV4='mbtrule', RSV5='1' WHERE DATA_ID='MBT_410R4100115R410011503R410010302';
UPDATE GP_QC_RULE SET DATA_DATE='20190709', CORP_ID='TESTCORP', ORG_ID='72', GROUP_ID='002', INQ_ORG_ID=NULL, INQ_GROUP_ID=NULL, RULE_DESC='当“报送时点说明代码”为“49-其他报送日”时，若“账户类型”为“D1”，不应包含初始债权说明段。', RULE_MESSAGE='当“报送时点说明代码”为“49-其他报送日”时，若“账户类型”为“D1”，不应包含初始债权说明段。', RULE_TYPE=NULL, RULE_SOURCE='BUSI', FIELD='DATA_ID', FIELD_NAME=NULL, TRIMMABLE=NULL, NULLABLE='Y', TYPE_ID=NULL, ENCODING=NULL, MIN_LENGTH=NULL, MAX_LENGTH=NULL, MIN_VALUE=NULL, MAX_VALUE=NULL, MAX_PRECISION=NULL, MIN_SCALE=NULL, MAX_SCALE=NULL, ENUMERATION=NULL, PATTERN=NULL, IN_ENTITY=NULL, IN_FIELD=NULL, "SQL"=NULL, SQL_EXTRA_KEY=NULL, SCRIPT='if (!isEmpty(B_ACCT_TYPE) && B_ACCT_TYPE == "D1" && B_RPT_DATE_CODE == "49") {
    if (IS_RPT.substring(3,4) == "0") {
        return true
    }
    return false
}
return true', BEAN=NULL, CHECK_FLAG=NULL, CHECK_DESC=NULL, CHECK_ERR_TYPE=NULL, NEXT_ACTION=NULL, DATA_STATUS=NULL, DATA_FLAG=NULL, DATA_OP=NULL, DATA_SOURCE=NULL, DATA_VERSION=NULL, DATA_REJ_DESC=NULL, DATA_DEL_DESC=NULL, DATA_CRT_USER=NULL, DATA_CRT_DATE=NULL, DATA_CRT_TIME=NULL, DATA_CHG_USER=NULL, DATA_CHG_DATE=NULL, DATA_CHG_TIME=NULL, DATA_APV_USER=NULL, DATA_APV_DATE=NULL, DATA_APV_TIME=NULL, RSV1='fa55ac389569427ab7f9998a24d617d8', RSV2=NULL, RSV3=NULL, RSV4='mbtrule', RSV5='1' WHERE DATA_ID='MBT_410R4100116R410011501R410010202';
UPDATE GP_QC_RULE SET DATA_DATE='20190709', CORP_ID='TESTCORP', ORG_ID='72', GROUP_ID='002', INQ_ORG_ID=NULL, INQ_GROUP_ID=NULL, RULE_DESC='当“报送时点说明代码”为“49-其他报送日”时，若“账户类型”为“C1”，不应包含相关还款责任人段、抵质押物信息段、授信额度信息段、初始债权说明段。', RULE_MESSAGE='当“报送时点说明代码”为“49-其他报送日”时，若“账户类型”为“C1”，不应包含相关还款责任人段、抵质押物信息段、授信额度信息段、初始债权说明段。', RULE_TYPE=NULL, RULE_SOURCE='BUSI', FIELD='DATA_ID', FIELD_NAME=NULL, TRIMMABLE=NULL, NULLABLE='Y', TYPE_ID=NULL, ENCODING=NULL, MIN_LENGTH=NULL, MAX_LENGTH=NULL, MIN_VALUE=NULL, MAX_VALUE=NULL, MAX_PRECISION=NULL, MIN_SCALE=NULL, MAX_SCALE=NULL, ENUMERATION=NULL, PATTERN=NULL, IN_ENTITY=NULL, IN_FIELD=NULL, "SQL"=NULL, SQL_EXTRA_KEY=NULL, SCRIPT='if (!isEmpty(B_ACCT_TYPE) && B_ACCT_TYPE == "C1" && B_RPT_DATE_CODE == "49") {
    if (IS_RPT.substring(2,4) == "00" && IS_RPT.substring(6,8) == "00") {
        return true
    }
    return false
}
return true', BEAN=NULL, CHECK_FLAG=NULL, CHECK_DESC=NULL, CHECK_ERR_TYPE=NULL, NEXT_ACTION=NULL, DATA_STATUS=NULL, DATA_FLAG=NULL, DATA_OP=NULL, DATA_SOURCE=NULL, DATA_VERSION=NULL, DATA_REJ_DESC=NULL, DATA_DEL_DESC=NULL, DATA_CRT_USER=NULL, DATA_CRT_DATE=NULL, DATA_CRT_TIME=NULL, DATA_CHG_USER=NULL, DATA_CHG_DATE=NULL, DATA_CHG_TIME=NULL, DATA_APV_USER=NULL, DATA_APV_DATE=NULL, DATA_APV_TIME=NULL, RSV1='6ca7857dce504d5d8ec43a0881631e98', RSV2=NULL, RSV3=NULL, RSV4='mbtrule', RSV5='1' WHERE DATA_ID='MBT_410R4100116R410011509R410010402';
UPDATE GP_QC_RULE SET DATA_DATE='20190709', CORP_ID='TESTCORP', ORG_ID='72', GROUP_ID='002', INQ_ORG_ID=NULL, INQ_GROUP_ID=NULL, RULE_DESC='当“报送时点说明代码”为“31-开户后放款”时，若“账户类型”为“R1/R4”，不适用放款日报送时点。', RULE_MESSAGE='当“报送时点说明代码”为“31-开户后放款”时，若“账户类型”为“R1/R4”，不适用放款日报送时点。', RULE_TYPE=NULL, RULE_SOURCE='BUSI', FIELD='DATA_ID', FIELD_NAME=NULL, TRIMMABLE=NULL, NULLABLE='Y', TYPE_ID=NULL, ENCODING=NULL, MIN_LENGTH=NULL, MAX_LENGTH=NULL, MIN_VALUE=NULL, MAX_VALUE=NULL, MAX_PRECISION=NULL, MIN_SCALE=NULL, MAX_SCALE=NULL, ENUMERATION=NULL, PATTERN=NULL, IN_ENTITY=NULL, IN_FIELD=NULL, "SQL"=NULL, SQL_EXTRA_KEY=NULL, SCRIPT='if (!isEmpty(B_ACCT_TYPE) && B_ACCT_TYPE == "R1" || B_ACCT_TYPE == "R4") {
    if (B_RPT_DATE_CODE  != "31") {
        return true
    }
    return false
}
return true', BEAN=NULL, CHECK_FLAG=NULL, CHECK_DESC=NULL, CHECK_ERR_TYPE=NULL, NEXT_ACTION=NULL, DATA_STATUS=NULL, DATA_FLAG=NULL, DATA_OP=NULL, DATA_SOURCE=NULL, DATA_VERSION=NULL, DATA_REJ_DESC=NULL, DATA_DEL_DESC=NULL, DATA_CRT_USER=NULL, DATA_CRT_DATE=NULL, DATA_CRT_TIME=NULL, DATA_CHG_USER=NULL, DATA_CHG_DATE=NULL, DATA_CHG_TIME=NULL, DATA_APV_USER=NULL, DATA_APV_DATE=NULL, DATA_APV_TIME=NULL, RSV1='a9409b78d8754ddf9237682efa1bfebc', RSV2=NULL, RSV3=NULL, RSV4='mbtrule', RSV5='1' WHERE DATA_ID='MBT_410R4100105R410010507R410010504';
UPDATE GP_QC_RULE SET DATA_DATE='20190709', CORP_ID='TESTCORP', ORG_ID='72', GROUP_ID='002', INQ_ORG_ID=NULL, INQ_GROUP_ID=NULL, RULE_DESC='当“报送时点说明代码”为“31-开户后放款”时，若“账户类型”为“D2”，不适用放款日报送时点。', RULE_MESSAGE='当“报送时点说明代码”为“31-开户后放款”时，若“账户类型”为“D2”，不适用放款日报送时点。', RULE_TYPE=NULL, RULE_SOURCE='BUSI', FIELD='DATA_ID', FIELD_NAME=NULL, TRIMMABLE=NULL, NULLABLE='Y', TYPE_ID=NULL, ENCODING=NULL, MIN_LENGTH=NULL, MAX_LENGTH=NULL, MIN_VALUE=NULL, MAX_VALUE=NULL, MAX_PRECISION=NULL, MIN_SCALE=NULL, MAX_SCALE=NULL, ENUMERATION=NULL, PATTERN=NULL, IN_ENTITY=NULL, IN_FIELD=NULL, "SQL"=NULL, SQL_EXTRA_KEY=NULL, SCRIPT='if (!isEmpty(B_ACCT_TYPE) && B_ACCT_TYPE == "D2") {
    if (B_RPT_DATE_CODE != "31") {
        return true
    }
    return false
}
return true', BEAN=NULL, CHECK_FLAG=NULL, CHECK_DESC=NULL, CHECK_ERR_TYPE=NULL, NEXT_ACTION=NULL, DATA_STATUS=NULL, DATA_FLAG=NULL, DATA_OP=NULL, DATA_SOURCE=NULL, DATA_VERSION=NULL, DATA_REJ_DESC=NULL, DATA_DEL_DESC=NULL, DATA_CRT_USER=NULL, DATA_CRT_DATE=NULL, DATA_CRT_TIME=NULL, DATA_CHG_USER=NULL, DATA_CHG_DATE=NULL, DATA_CHG_TIME=NULL, DATA_APV_USER=NULL, DATA_APV_DATE=NULL, DATA_APV_TIME=NULL, RSV1='38cb9a6db9114629b37224c96dcb57f0', RSV2=NULL, RSV3=NULL, RSV4='mbtrule', RSV5='1' WHERE DATA_ID='MBT_410R4100106R410010505R410010504';
UPDATE GP_QC_RULE SET DATA_DATE='20190709', CORP_ID='TESTCORP', ORG_ID='72', GROUP_ID='002', INQ_ORG_ID=NULL, INQ_GROUP_ID=NULL, RULE_DESC='当“报送时点说明代码”为“32-约定还款日结算”时，若“账户类型”为“D2”，应包含基础段、还款表现信息段。', RULE_MESSAGE='当“报送时点说明代码”为“32-约定还款日结算”时，若“账户类型”为“D2”，应包含基础段、还款表现信息段。', RULE_TYPE=NULL, RULE_SOURCE='BUSI', FIELD='DATA_ID', FIELD_NAME=NULL, TRIMMABLE=NULL, NULLABLE='Y', TYPE_ID=NULL, ENCODING=NULL, MIN_LENGTH=NULL, MAX_LENGTH=NULL, MIN_VALUE=NULL, MAX_VALUE=NULL, MAX_PRECISION=NULL, MIN_SCALE=NULL, MAX_SCALE=NULL, ENUMERATION=NULL, PATTERN=NULL, IN_ENTITY=NULL, IN_FIELD=NULL, "SQL"=NULL, SQL_EXTRA_KEY=NULL, SCRIPT='if (!isEmpty(B_ACCT_TYPE) && B_ACCT_TYPE == "D2" && B_RPT_DATE_CODE == "32") {
    if (IS_RPT.substring(0,1) == "1" && IS_RPT.substring(4,5) == "1") {
        return true
    }
    return false
}
return true', BEAN=NULL, CHECK_FLAG=NULL, CHECK_DESC=NULL, CHECK_ERR_TYPE=NULL, NEXT_ACTION=NULL, DATA_STATUS=NULL, DATA_FLAG=NULL, DATA_OP=NULL, DATA_SOURCE=NULL, DATA_VERSION=NULL, DATA_REJ_DESC=NULL, DATA_DEL_DESC=NULL, DATA_CRT_USER=NULL, DATA_CRT_DATE=NULL, DATA_CRT_TIME=NULL, DATA_CHG_USER=NULL, DATA_CHG_DATE=NULL, DATA_CHG_TIME=NULL, DATA_APV_USER=NULL, DATA_APV_DATE=NULL, DATA_APV_TIME=NULL, RSV1='945d41ccb90148999fc87dbc362aea77', RSV2=NULL, RSV3=NULL, RSV4='mbtrule', RSV5='1' WHERE DATA_ID='MBT_410R4100107R410010703R410010302';
UPDATE GP_QC_RULE SET DATA_DATE='20190709', CORP_ID='TESTCORP', ORG_ID='72', GROUP_ID='002', INQ_ORG_ID=NULL, INQ_GROUP_ID=NULL, RULE_DESC='当“报送时点说明代码”为“32-约定还款日结算”时，若“账户类型”为“D1”，不应包含初始债权说明段。', RULE_MESSAGE='当“报送时点说明代码”为“32-约定还款日结算”时，若“账户类型”为“D1”，不应包含初始债权说明段。', RULE_TYPE=NULL, RULE_SOURCE='BUSI', FIELD='DATA_ID', FIELD_NAME=NULL, TRIMMABLE=NULL, NULLABLE='Y', TYPE_ID=NULL, ENCODING=NULL, MIN_LENGTH=NULL, MAX_LENGTH=NULL, MIN_VALUE=NULL, MAX_VALUE=NULL, MAX_PRECISION=NULL, MIN_SCALE=NULL, MAX_SCALE=NULL, ENUMERATION=NULL, PATTERN=NULL, IN_ENTITY=NULL, IN_FIELD=NULL, "SQL"=NULL, SQL_EXTRA_KEY=NULL, SCRIPT='if (!isEmpty(B_ACCT_TYPE) && B_ACCT_TYPE == "D1" && B_RPT_DATE_CODE == "32") {
    if (IS_RPT.substring(3,4) == "0") {
        return true
    }
    return false
}
return true', BEAN=NULL, CHECK_FLAG=NULL, CHECK_DESC=NULL, CHECK_ERR_TYPE=NULL, NEXT_ACTION=NULL, DATA_STATUS=NULL, DATA_FLAG=NULL, DATA_OP=NULL, DATA_SOURCE=NULL, DATA_VERSION=NULL, DATA_REJ_DESC=NULL, DATA_DEL_DESC=NULL, DATA_CRT_USER=NULL, DATA_CRT_DATE=NULL, DATA_CRT_TIME=NULL, DATA_CHG_USER=NULL, DATA_CHG_DATE=NULL, DATA_CHG_TIME=NULL, DATA_APV_USER=NULL, DATA_APV_DATE=NULL, DATA_APV_TIME=NULL, RSV1='a65c21de18644a20bca9864ec9ad9ce3', RSV2=NULL, RSV3=NULL, RSV4='mbtrule', RSV5='1' WHERE DATA_ID='MBT_410R4100108R410010701R410010202';
UPDATE GP_QC_RULE SET DATA_DATE='20190709', CORP_ID='TESTCORP', ORG_ID='72', GROUP_ID='002', INQ_ORG_ID=NULL, INQ_GROUP_ID=NULL, RULE_DESC='当“报送时点说明代码”为“32-约定还款日结算”时，若“账户类型”为“R1”，不应包含初始债权说明段。', RULE_MESSAGE='当“报送时点说明代码”为“32-约定还款日结算”时，若“账户类型”为“R1”，不应包含初始债权说明段。', RULE_TYPE=NULL, RULE_SOURCE='BUSI', FIELD='DATA_ID', FIELD_NAME=NULL, TRIMMABLE=NULL, NULLABLE='Y', TYPE_ID=NULL, ENCODING=NULL, MIN_LENGTH=NULL, MAX_LENGTH=NULL, MIN_VALUE=NULL, MAX_VALUE=NULL, MAX_PRECISION=NULL, MIN_SCALE=NULL, MAX_SCALE=NULL, ENUMERATION=NULL, PATTERN=NULL, IN_ENTITY=NULL, IN_FIELD=NULL, "SQL"=NULL, SQL_EXTRA_KEY=NULL, SCRIPT='if (!isEmpty(B_ACCT_TYPE) && B_ACCT_TYPE == "R1") {
    if (B_RPT_DATE_CODE != 32) {
        return true
    }
    return false
}
return true', BEAN=NULL, CHECK_FLAG=NULL, CHECK_DESC=NULL, CHECK_ERR_TYPE=NULL, NEXT_ACTION=NULL, DATA_STATUS=NULL, DATA_FLAG=NULL, DATA_OP=NULL, DATA_SOURCE=NULL, DATA_VERSION=NULL, DATA_REJ_DESC=NULL, DATA_DEL_DESC=NULL, DATA_CRT_USER=NULL, DATA_CRT_DATE=NULL, DATA_CRT_TIME=NULL, DATA_CHG_USER=NULL, DATA_CHG_DATE=NULL, DATA_CHG_TIME=NULL, DATA_APV_USER=NULL, DATA_APV_DATE=NULL, DATA_APV_TIME=NULL, RSV1='af67e8a4a6254136aa71e6e19d597555', RSV2=NULL, RSV3=NULL, RSV4='mbtrule', RSV5='1' WHERE DATA_ID='MBT_410R4100108R410010707R410010702';
UPDATE GP_QC_RULE SET DATA_DATE='20190709', CORP_ID='TESTCORP', ORG_ID='72', GROUP_ID='002', INQ_ORG_ID=NULL, INQ_GROUP_ID=NULL, RULE_DESC='当“报送时点说明代码”为“33-实际还款”时，若“账户类型”为“R4”，应包含基础段、还款表现信息段。', RULE_MESSAGE='当“报送时点说明代码”为“33-实际还款”时，若“账户类型”为“R4”，应包含基础段、还款表现信息段。', RULE_TYPE=NULL, RULE_SOURCE='BUSI', FIELD='DATA_ID', FIELD_NAME=NULL, TRIMMABLE=NULL, NULLABLE='Y', TYPE_ID=NULL, ENCODING=NULL, MIN_LENGTH=NULL, MAX_LENGTH=NULL, MIN_VALUE=NULL, MAX_VALUE=NULL, MAX_PRECISION=NULL, MIN_SCALE=NULL, MAX_SCALE=NULL, ENUMERATION=NULL, PATTERN=NULL, IN_ENTITY=NULL, IN_FIELD=NULL, "SQL"=NULL, SQL_EXTRA_KEY=NULL, SCRIPT='if (!isEmpty(B_ACCT_TYPE) && B_ACCT_TYPE == "R4" && B_RPT_DATE_CODE == "33") {
    if (IS_RPT.substring(0,1) == "1" && IS_RPT.substring(4,5) == "1") {
        return true
    }
    return false
}
return true', BEAN=NULL, CHECK_FLAG=NULL, CHECK_DESC=NULL, CHECK_ERR_TYPE=NULL, NEXT_ACTION=NULL, DATA_STATUS=NULL, DATA_FLAG=NULL, DATA_OP=NULL, DATA_SOURCE=NULL, DATA_VERSION=NULL, DATA_REJ_DESC=NULL, DATA_DEL_DESC=NULL, DATA_CRT_USER=NULL, DATA_CRT_DATE=NULL, DATA_CRT_TIME=NULL, DATA_CHG_USER=NULL, DATA_CHG_DATE=NULL, DATA_CHG_TIME=NULL, DATA_APV_USER=NULL, DATA_APV_DATE=NULL, DATA_APV_TIME=NULL, RSV1='84c826fa722e49d3b75cc8b64efc153f', RSV2=NULL, RSV3=NULL, RSV4='mbtrule', RSV5='1' WHERE DATA_ID='MBT_410R4100109R410010905R410010302';
UPDATE GP_QC_RULE SET DATA_DATE='20190709', CORP_ID='TESTCORP', ORG_ID='72', GROUP_ID='002', INQ_ORG_ID=NULL, INQ_GROUP_ID=NULL, RULE_DESC='当“报送时点说明代码”为“33-实际还款”时，若“账户类型”为“D1”且“分次放款标识”为“0”，则不应包含授信额度信息段。', RULE_MESSAGE='当“报送时点说明代码”为“33-实际还款”时，若“账户类型”为“D1”且“分次放款标识”为“0”，则不应包含授信额度信息段。', RULE_TYPE=NULL, RULE_SOURCE='BUSI', FIELD='DATA_ID', FIELD_NAME=NULL, TRIMMABLE=NULL, NULLABLE='Y', TYPE_ID=NULL, ENCODING=NULL, MIN_LENGTH=NULL, MAX_LENGTH=NULL, MIN_VALUE=NULL, MAX_VALUE=NULL, MAX_PRECISION=NULL, MIN_SCALE=NULL, MAX_SCALE=NULL, ENUMERATION=NULL, PATTERN=NULL, IN_ENTITY=NULL, IN_FIELD=NULL, "SQL"=NULL, SQL_EXTRA_KEY=NULL, SCRIPT='if (!isEmpty(B_ACCT_TYPE) && B_ACCT_TYPE == "D1" && B_RPT_DATE_CODE == "33" && C_FLAG == "0") {
    if (IS_RPT.substring(2,3) == "0" ||F_MCC.length() ==0) {
        return true
    }
    return false
}
return true', BEAN=NULL, CHECK_FLAG=NULL, CHECK_DESC=NULL, CHECK_ERR_TYPE=NULL, NEXT_ACTION=NULL, DATA_STATUS=NULL, DATA_FLAG=NULL, DATA_OP=NULL, DATA_SOURCE=NULL, DATA_VERSION=NULL, DATA_REJ_DESC=NULL, DATA_DEL_DESC=NULL, DATA_CRT_USER=NULL, DATA_CRT_DATE=NULL, DATA_CRT_TIME=NULL, DATA_CHG_USER=NULL, DATA_CHG_DATE=NULL, DATA_CHG_TIME=NULL, DATA_APV_USER=NULL, DATA_APV_DATE=NULL, DATA_APV_TIME=NULL, RSV1='064d3c8162b2491b8cbf7fbe050e0f72', RSV2=NULL, RSV3=NULL, RSV4='mbtrule', RSV5='1' WHERE DATA_ID='MBT_410R4100110R410011001R410010204';
UPDATE GP_QC_RULE SET DATA_DATE='20190709', CORP_ID='TESTCORP', ORG_ID='72', GROUP_ID='002', INQ_ORG_ID=NULL, INQ_GROUP_ID=NULL, RULE_DESC='若“账户类型”为“R1”，不适用实际还款报送时点。', RULE_MESSAGE='若“账户类型”为“R1”，不适用实际还款报送时点。', RULE_TYPE=NULL, RULE_SOURCE='BUSI', FIELD='DATA_ID', FIELD_NAME=NULL, TRIMMABLE=NULL, NULLABLE='Y', TYPE_ID=NULL, ENCODING=NULL, MIN_LENGTH=NULL, MAX_LENGTH=NULL, MIN_VALUE=NULL, MAX_VALUE=NULL, MAX_PRECISION=NULL, MIN_SCALE=NULL, MAX_SCALE=NULL, ENUMERATION=NULL, PATTERN=NULL, IN_ENTITY=NULL, IN_FIELD=NULL, "SQL"=NULL, SQL_EXTRA_KEY=NULL, SCRIPT='if (!isEmpty(B_ACCT_TYPE) && B_ACCT_TYPE == "R1") {
    if (B_RPT_DATE_CODE != "33") {
        return true
    }
    return false
}
return true', BEAN=NULL, CHECK_FLAG=NULL, CHECK_DESC=NULL, CHECK_ERR_TYPE=NULL, NEXT_ACTION=NULL, DATA_STATUS=NULL, DATA_FLAG=NULL, DATA_OP=NULL, DATA_SOURCE=NULL, DATA_VERSION=NULL, DATA_REJ_DESC=NULL, DATA_DEL_DESC=NULL, DATA_CRT_USER=NULL, DATA_CRT_DATE=NULL, DATA_CRT_TIME=NULL, DATA_CHG_USER=NULL, DATA_CHG_DATE=NULL, DATA_CHG_TIME=NULL, DATA_APV_USER=NULL, DATA_APV_DATE=NULL, DATA_APV_TIME=NULL, RSV1='b26bc38e63a542febb7aeda3ff3a91aa', RSV2=NULL, RSV3=NULL, RSV4='mbtrule', RSV5='1' WHERE DATA_ID='MBT_410R4100110R410010707R410010902';
UPDATE GP_QC_RULE SET DATA_DATE='20190620', CORP_ID='TESTCORP', ORG_ID='72', GROUP_ID='002', INQ_ORG_ID=NULL, INQ_GROUP_ID=NULL, RULE_DESC='若账户类型为“R1”时，基本信息段中的“卡片标识号”字段不适用于此类账户。', RULE_MESSAGE='若账户类型为“R1”时，基本信息段中的“卡片标识号”字段不适用于此类账户。', RULE_TYPE=NULL, RULE_SOURCE='BUSI', FIELD='DATA_ID', FIELD_NAME=NULL, TRIMMABLE=NULL, NULLABLE='Y', TYPE_ID=NULL, ENCODING=NULL, MIN_LENGTH=NULL, MAX_LENGTH=NULL, MIN_VALUE=NULL, MAX_VALUE=NULL, MAX_PRECISION=NULL, MIN_SCALE=NULL, MAX_SCALE=NULL, ENUMERATION=NULL, PATTERN=NULL, IN_ENTITY=NULL, IN_FIELD=NULL, "SQL"=NULL, SQL_EXTRA_KEY=NULL, SCRIPT='if (!isEmpty(B_ACCT_TYPE) && B_ACCT_TYPE == "R1") {
    if (isEmpty(C_CREDIT_ID)) {
        return true
    }
    return false
}
return true', BEAN=NULL, CHECK_FLAG=NULL, CHECK_DESC=NULL, CHECK_ERR_TYPE=NULL, NEXT_ACTION=NULL, DATA_STATUS=NULL, DATA_FLAG=NULL, DATA_OP=NULL, DATA_SOURCE=NULL, DATA_VERSION=NULL, DATA_REJ_DESC=NULL, DATA_DEL_DESC=NULL, DATA_CRT_USER=NULL, DATA_CRT_DATE=NULL, DATA_CRT_TIME=NULL, DATA_CHG_USER=NULL, DATA_CHG_DATE=NULL, DATA_CHG_TIME=NULL, DATA_APV_USER=NULL, DATA_APV_DATE=NULL, DATA_APV_TIME=NULL, RSV1='c907410ca96d4bcc8f6b9b3231f5c527', RSV2=NULL, RSV3=NULL, RSV4='mbtrule', RSV5='1' WHERE DATA_ID='MBT_210S210010179S210010101S210010156';
UPDATE GP_QC_RULE SET DATA_DATE='20190620', CORP_ID='TESTCORP', ORG_ID='72', GROUP_ID='002', INQ_ORG_ID=NULL, INQ_GROUP_ID=NULL, RULE_DESC='若账户类型为“R3”时，基本信息段中的“分次放款标志”字段不适用于此类账户。', RULE_MESSAGE='若账户类型为“R3”时，基本信息段中的“分次放款标志”字段不适用于此类账户。', RULE_TYPE=NULL, RULE_SOURCE='BUSI', FIELD='DATA_ID', FIELD_NAME=NULL, TRIMMABLE=NULL, NULLABLE='Y', TYPE_ID=NULL, ENCODING=NULL, MIN_LENGTH=NULL, MAX_LENGTH=NULL, MIN_VALUE=NULL, MAX_VALUE=NULL, MAX_PRECISION=NULL, MIN_SCALE=NULL, MAX_SCALE=NULL, ENUMERATION=NULL, PATTERN=NULL, IN_ENTITY=NULL, IN_FIELD=NULL, "SQL"=NULL, SQL_EXTRA_KEY=NULL, SCRIPT='if (!isEmpty(B_ACCT_TYPE) && B_ACCT_TYPE == "R3") {
    if (isEmpty(C_FLAG)) {
        return true
    }
    return false
}
return true', BEAN=NULL, CHECK_FLAG=NULL, CHECK_DESC=NULL, CHECK_ERR_TYPE=NULL, NEXT_ACTION=NULL, DATA_STATUS=NULL, DATA_FLAG=NULL, DATA_OP=NULL, DATA_SOURCE=NULL, DATA_VERSION=NULL, DATA_REJ_DESC=NULL, DATA_DEL_DESC=NULL, DATA_CRT_USER=NULL, DATA_CRT_DATE=NULL, DATA_CRT_TIME=NULL, DATA_CHG_USER=NULL, DATA_CHG_DATE=NULL, DATA_CHG_TIME=NULL, DATA_APV_USER=NULL, DATA_APV_DATE=NULL, DATA_APV_TIME=NULL, RSV1='32344765d2f340359c4f383a989ca1bc', RSV2=NULL, RSV3=NULL, RSV4='mbtrule', RSV5='1' WHERE DATA_ID='MBT_210S210010115S210010105S210010112';
UPDATE GP_QC_RULE SET DATA_DATE='20190620', CORP_ID='TESTCORP', ORG_ID='72', GROUP_ID='002', INQ_ORG_ID=NULL, INQ_GROUP_ID=NULL, RULE_DESC='若账户类型为“R3”时，基本信息段中的“还款方式”字段不适用于此类账户。', RULE_MESSAGE='若账户类型为“R3”时，基本信息段中的“还款方式”字段不适用于此类账户。', RULE_TYPE=NULL, RULE_SOURCE='BUSI', FIELD='DATA_ID', FIELD_NAME=NULL, TRIMMABLE=NULL, NULLABLE='Y', TYPE_ID=NULL, ENCODING=NULL, MIN_LENGTH=NULL, MAX_LENGTH=NULL, MIN_VALUE=NULL, MAX_VALUE=NULL, MAX_PRECISION=NULL, MIN_SCALE=NULL, MAX_SCALE=NULL, ENUMERATION=NULL, PATTERN=NULL, IN_ENTITY=NULL, IN_FIELD=NULL, "SQL"=NULL, SQL_EXTRA_KEY=NULL, SCRIPT='if (!isEmpty(B_ACCT_TYPE) && B_ACCT_TYPE == "R3") {
    if (isEmpty(C_REPAY_MODE)) {
        return true
    }
    return false
}
return true', BEAN=NULL, CHECK_FLAG=NULL, CHECK_DESC=NULL, CHECK_ERR_TYPE=NULL, NEXT_ACTION=NULL, DATA_STATUS=NULL, DATA_FLAG=NULL, DATA_OP=NULL, DATA_SOURCE=NULL, DATA_VERSION=NULL, DATA_REJ_DESC=NULL, DATA_DEL_DESC=NULL, DATA_CRT_USER=NULL, DATA_CRT_DATE=NULL, DATA_CRT_TIME=NULL, DATA_CHG_USER=NULL, DATA_CHG_DATE=NULL, DATA_CHG_TIME=NULL, DATA_APV_USER=NULL, DATA_APV_DATE=NULL, DATA_APV_TIME=NULL, RSV1='ae99fb7cba4240158a00993e28797cba', RSV2=NULL, RSV3=NULL, RSV4='mbtrule', RSV5='1' WHERE DATA_ID='MBT_210S210010127S210010105S210010120';
UPDATE GP_QC_RULE SET DATA_DATE='20190620', CORP_ID='TESTCORP', ORG_ID='72', GROUP_ID='002', INQ_ORG_ID=NULL, INQ_GROUP_ID=NULL, RULE_DESC='若账户类型为“R3”时，基本信息段中的“还款频率”字段不适用于此类账户。', RULE_MESSAGE='若账户类型为“R3”时，基本信息段中的“还款频率”字段不适用于此类账户。', RULE_TYPE=NULL, RULE_SOURCE='BUSI', FIELD='DATA_ID', FIELD_NAME=NULL, TRIMMABLE=NULL, NULLABLE='Y', TYPE_ID=NULL, ENCODING=NULL, MIN_LENGTH=NULL, MAX_LENGTH=NULL, MIN_VALUE=NULL, MAX_VALUE=NULL, MAX_PRECISION=NULL, MIN_SCALE=NULL, MAX_SCALE=NULL, ENUMERATION=NULL, PATTERN=NULL, IN_ENTITY=NULL, IN_FIELD=NULL, "SQL"=NULL, SQL_EXTRA_KEY=NULL, SCRIPT='if (!isEmpty(B_ACCT_TYPE) && B_ACCT_TYPE == "R3") {
    if (isEmpty(C_REPAY_FREQCY)) {
        return true
    }
    return false
}
return true', BEAN=NULL, CHECK_FLAG=NULL, CHECK_DESC=NULL, CHECK_ERR_TYPE=NULL, NEXT_ACTION=NULL, DATA_STATUS=NULL, DATA_FLAG=NULL, DATA_OP=NULL, DATA_SOURCE=NULL, DATA_VERSION=NULL, DATA_REJ_DESC=NULL, DATA_DEL_DESC=NULL, DATA_CRT_USER=NULL, DATA_CRT_DATE=NULL, DATA_CRT_TIME=NULL, DATA_CHG_USER=NULL, DATA_CHG_DATE=NULL, DATA_CHG_TIME=NULL, DATA_APV_USER=NULL, DATA_APV_DATE=NULL, DATA_APV_TIME=NULL, RSV1='32ee8255f03d4d9797a07697527f06a5', RSV2=NULL, RSV3=NULL, RSV4='mbtrule', RSV5='1' WHERE DATA_ID='MBT_210S210010133S210010105S210010124';
UPDATE GP_QC_RULE SET DATA_DATE='20190620', CORP_ID='TESTCORP', ORG_ID='72', GROUP_ID='002', INQ_ORG_ID=NULL, INQ_GROUP_ID=NULL, RULE_DESC='若账户类型为“R2”时，基本信息段中的“还款期数”字段不适用于此类账户。', RULE_MESSAGE='若账户类型为“R2”时，基本信息段中的“还款期数”字段不适用于此类账户。', RULE_TYPE=NULL, RULE_SOURCE='BUSI', FIELD='DATA_ID', FIELD_NAME=NULL, TRIMMABLE=NULL, NULLABLE='Y', TYPE_ID=NULL, ENCODING=NULL, MIN_LENGTH=NULL, MAX_LENGTH=NULL, MIN_VALUE=NULL, MAX_VALUE=NULL, MAX_PRECISION=NULL, MIN_SCALE=NULL, MAX_SCALE=NULL, ENUMERATION=NULL, PATTERN=NULL, IN_ENTITY=NULL, IN_FIELD=NULL, "SQL"=NULL, SQL_EXTRA_KEY=NULL, SCRIPT='if (!isEmpty(B_ACCT_TYPE) && B_ACCT_TYPE == "R2") {
    if (isEmpty(C_REPAY_PRD)) {
        return true
    }
    return false
}
return true', BEAN=NULL, CHECK_FLAG=NULL, CHECK_DESC=NULL, CHECK_ERR_TYPE=NULL, NEXT_ACTION=NULL, DATA_STATUS=NULL, DATA_FLAG=NULL, DATA_OP=NULL, DATA_SOURCE=NULL, DATA_VERSION=NULL, DATA_REJ_DESC=NULL, DATA_DEL_DESC=NULL, DATA_CRT_USER=NULL, DATA_CRT_DATE=NULL, DATA_CRT_TIME=NULL, DATA_CHG_USER=NULL, DATA_CHG_DATE=NULL, DATA_CHG_TIME=NULL, DATA_APV_USER=NULL, DATA_APV_DATE=NULL, DATA_APV_TIME=NULL, RSV1='f10c3fdbb1d14f0e922d1a941de7da18', RSV2=NULL, RSV3=NULL, RSV4='mbtrule', RSV5='1' WHERE DATA_ID='MBT_210S210010138S210010103S210010128';
UPDATE GP_QC_RULE SET DATA_DATE='20190624', CORP_ID='TESTCORP', ORG_ID='72', GROUP_ID='002', INQ_ORG_ID=NULL, INQ_GROUP_ID=NULL, RULE_DESC='当“账户类型”为“D1”，“剩余还款月数”为空', RULE_MESSAGE='当“账户类型”为“D1”，“剩余还款月数”为空', RULE_TYPE=NULL, RULE_SOURCE='BUSI', FIELD='DATA_ID', FIELD_NAME=NULL, TRIMMABLE=NULL, NULLABLE='Y', TYPE_ID=NULL, ENCODING=NULL, MIN_LENGTH=NULL, MAX_LENGTH=NULL, MIN_VALUE=NULL, MAX_VALUE=NULL, MAX_PRECISION=NULL, MIN_SCALE=NULL, MAX_SCALE=NULL, ENUMERATION=NULL, PATTERN=NULL, IN_ENTITY=NULL, IN_FIELD=NULL, "SQL"=NULL, SQL_EXTRA_KEY=NULL, SCRIPT='if (!isEmpty(B_ACCT_TYPE) && B_ACCT_TYPE == "D1") {
    if (isEmpty(H_PYMT_PRD)) {
        return true
    }
    return false
}
return true', BEAN=NULL, CHECK_FLAG=NULL, CHECK_DESC=NULL, CHECK_ERR_TYPE=NULL, NEXT_ACTION=NULL, DATA_STATUS=NULL, DATA_FLAG=NULL, DATA_OP=NULL, DATA_SOURCE=NULL, DATA_VERSION=NULL, DATA_REJ_DESC=NULL, DATA_DEL_DESC=NULL, DATA_CRT_USER=NULL, DATA_CRT_DATE=NULL, DATA_CRT_TIME=NULL, DATA_CHG_USER=NULL, DATA_CHG_DATE=NULL, DATA_CHG_TIME=NULL, DATA_APV_USER=NULL, DATA_APV_DATE=NULL, DATA_APV_TIME=NULL, RSV1='86f6769c2ba2487190aefe473b566afe', RSV2=NULL, RSV3=NULL, RSV4='mbtrule', RSV5='1' WHERE DATA_ID='MBT_410S4100139S410013901S410013902';
UPDATE GP_QC_RULE SET DATA_DATE='20190624', CORP_ID='TESTCORP', ORG_ID='72', GROUP_ID='002', INQ_ORG_ID=NULL, INQ_GROUP_ID=NULL, RULE_DESC='当“账户类型”为“R1”，“剩余还款月数”不能为空', RULE_MESSAGE='当“账户类型”为“R1”，“剩余还款月数”不能为空', RULE_TYPE=NULL, RULE_SOURCE='BUSI', FIELD='DATA_ID', FIELD_NAME=NULL, TRIMMABLE=NULL, NULLABLE='Y', TYPE_ID=NULL, ENCODING=NULL, MIN_LENGTH=NULL, MAX_LENGTH=NULL, MIN_VALUE=NULL, MAX_VALUE=NULL, MAX_PRECISION=NULL, MIN_SCALE=NULL, MAX_SCALE=NULL, ENUMERATION=NULL, PATTERN=NULL, IN_ENTITY=NULL, IN_FIELD=NULL, "SQL"=NULL, SQL_EXTRA_KEY=NULL, SCRIPT='if (!isEmpty(B_ACCT_TYPE) && B_ACCT_TYPE == "R1") {
    if (!isEmpty(H_PYMT_PRD)) {
        return true
    }
    return false
}
return true', BEAN=NULL, CHECK_FLAG=NULL, CHECK_DESC=NULL, CHECK_ERR_TYPE=NULL, NEXT_ACTION=NULL, DATA_STATUS=NULL, DATA_FLAG=NULL, DATA_OP=NULL, DATA_SOURCE=NULL, DATA_VERSION=NULL, DATA_REJ_DESC=NULL, DATA_DEL_DESC=NULL, DATA_CRT_USER=NULL, DATA_CRT_DATE=NULL, DATA_CRT_TIME=NULL, DATA_CHG_USER=NULL, DATA_CHG_DATE=NULL, DATA_CHG_TIME=NULL, DATA_APV_USER=NULL, DATA_APV_DATE=NULL, DATA_APV_TIME=NULL, RSV1='33202a72e3b74a47850770eef027d075', RSV2=NULL, RSV3=NULL, RSV4='mbtrule', RSV5='1' WHERE DATA_ID='MBT_410S4100140S410014001S410014002';
UPDATE GP_QC_RULE SET DATA_DATE='20190624', CORP_ID='TESTCORP', ORG_ID='72', GROUP_ID='002', INQ_ORG_ID=NULL, INQ_GROUP_ID=NULL, RULE_DESC='当“账户类型”为“R1”，“当前逾期总额”不能为空', RULE_MESSAGE='当“账户类型”为“R1”，“当前逾期总额”不能为空', RULE_TYPE=NULL, RULE_SOURCE='BUSI', FIELD='DATA_ID', FIELD_NAME=NULL, TRIMMABLE=NULL, NULLABLE='Y', TYPE_ID=NULL, ENCODING=NULL, MIN_LENGTH=NULL, MAX_LENGTH=NULL, MIN_VALUE=NULL, MAX_VALUE=NULL, MAX_PRECISION=NULL, MIN_SCALE=NULL, MAX_SCALE=NULL, ENUMERATION=NULL, PATTERN=NULL, IN_ENTITY=NULL, IN_FIELD=NULL, "SQL"=NULL, SQL_EXTRA_KEY=NULL, SCRIPT='if (!isEmpty(B_ACCT_TYPE) && B_ACCT_TYPE == "R1") {
    if (!isEmpty(H_TOT_OVERD)) {
        return true
    }
    return false
}
return true', BEAN=NULL, CHECK_FLAG=NULL, CHECK_DESC=NULL, CHECK_ERR_TYPE=NULL, NEXT_ACTION=NULL, DATA_STATUS=NULL, DATA_FLAG=NULL, DATA_OP=NULL, DATA_SOURCE=NULL, DATA_VERSION=NULL, DATA_REJ_DESC=NULL, DATA_DEL_DESC=NULL, DATA_CRT_USER=NULL, DATA_CRT_DATE=NULL, DATA_CRT_TIME=NULL, DATA_CHG_USER=NULL, DATA_CHG_DATE=NULL, DATA_CHG_TIME=NULL, DATA_APV_USER=NULL, DATA_APV_DATE=NULL, DATA_APV_TIME=NULL, RSV1='5cc166f0f3f241d48ee0693b8a7933b1', RSV2=NULL, RSV3=NULL, RSV4='mbtrule', RSV5='1' WHERE DATA_ID='MBT_410S4100141S410014107S410014102';
UPDATE GP_QC_RULE SET DATA_DATE='20190624', CORP_ID='TESTCORP', ORG_ID='72', GROUP_ID='002', INQ_ORG_ID=NULL, INQ_GROUP_ID=NULL, RULE_DESC='当“账户类型”为“D2”，“当前逾期本金”不能为空', RULE_MESSAGE='当“账户类型”为“D2”，“当前逾期本金”不能为空', RULE_TYPE=NULL, RULE_SOURCE='BUSI', FIELD='DATA_ID', FIELD_NAME=NULL, TRIMMABLE=NULL, NULLABLE='Y', TYPE_ID=NULL, ENCODING=NULL, MIN_LENGTH=NULL, MAX_LENGTH=NULL, MIN_VALUE=NULL, MAX_VALUE=NULL, MAX_PRECISION=NULL, MIN_SCALE=NULL, MAX_SCALE=NULL, ENUMERATION=NULL, PATTERN=NULL, IN_ENTITY=NULL, IN_FIELD=NULL, "SQL"=NULL, SQL_EXTRA_KEY=NULL, SCRIPT='if (!isEmpty(B_ACCT_TYPE) && B_ACCT_TYPE == "D2") {
    if (!isEmpty(H_OVERD_PRINC)) {
        return true
    }
    return false
}
return true', BEAN=NULL, CHECK_FLAG=NULL, CHECK_DESC=NULL, CHECK_ERR_TYPE=NULL, NEXT_ACTION=NULL, DATA_STATUS=NULL, DATA_FLAG=NULL, DATA_OP=NULL, DATA_SOURCE=NULL, DATA_VERSION=NULL, DATA_REJ_DESC=NULL, DATA_DEL_DESC=NULL, DATA_CRT_USER=NULL, DATA_CRT_DATE=NULL, DATA_CRT_TIME=NULL, DATA_CHG_USER=NULL, DATA_CHG_DATE=NULL, DATA_CHG_TIME=NULL, DATA_APV_USER=NULL, DATA_APV_DATE=NULL, DATA_APV_TIME=NULL, RSV1='a85129f8e1274793a695dd17ca23cfe8', RSV2=NULL, RSV3=NULL, RSV4='mbtrule', RSV5='1' WHERE DATA_ID='MBT_410S4100143S410014305S410014302';
UPDATE GP_QC_RULE SET DATA_DATE='20190624', CORP_ID='TESTCORP', ORG_ID='72', GROUP_ID='002', INQ_ORG_ID=NULL, INQ_GROUP_ID=NULL, RULE_DESC='当“账户类型”为“R4”，“当前逾期天数”不能为空', RULE_MESSAGE='当“账户类型”为“R4”，“当前逾期天数”不能为空', RULE_TYPE=NULL, RULE_SOURCE='BUSI', FIELD='DATA_ID', FIELD_NAME=NULL, TRIMMABLE=NULL, NULLABLE='Y', TYPE_ID=NULL, ENCODING=NULL, MIN_LENGTH=NULL, MAX_LENGTH=NULL, MIN_VALUE=NULL, MAX_VALUE=NULL, MAX_PRECISION=NULL, MIN_SCALE=NULL, MAX_SCALE=NULL, ENUMERATION=NULL, PATTERN=NULL, IN_ENTITY=NULL, IN_FIELD=NULL, "SQL"=NULL, SQL_EXTRA_KEY=NULL, SCRIPT='if (!isEmpty(B_ACCT_TYPE) && B_ACCT_TYPE == "R4") {
    if (!isEmpty(H_OVERD_DY)) {
        return true
    }
    return false
}
return true', BEAN=NULL, CHECK_FLAG=NULL, CHECK_DESC=NULL, CHECK_ERR_TYPE=NULL, NEXT_ACTION=NULL, DATA_STATUS=NULL, DATA_FLAG=NULL, DATA_OP=NULL, DATA_SOURCE=NULL, DATA_VERSION=NULL, DATA_REJ_DESC=NULL, DATA_DEL_DESC=NULL, DATA_CRT_USER=NULL, DATA_CRT_DATE=NULL, DATA_CRT_TIME=NULL, DATA_CHG_USER=NULL, DATA_CHG_DATE=NULL, DATA_CHG_TIME=NULL, DATA_APV_USER=NULL, DATA_APV_DATE=NULL, DATA_APV_TIME=NULL, RSV1='cc99c4f9374c4807a5438785e279e4a0', RSV2=NULL, RSV3=NULL, RSV4='mbtrule', RSV5='1' WHERE DATA_ID='MBT_410S4100145S410014503S410014502';
UPDATE GP_QC_RULE SET DATA_DATE='20190620', CORP_ID='TESTCORP', ORG_ID='72', GROUP_ID='002', INQ_ORG_ID=NULL, INQ_GROUP_ID=NULL, RULE_DESC='若账户类型为“D1”时，基本信息段中的“信用额度”字段不适用于此类账户。', RULE_MESSAGE='若账户类型为“D1”时，基本信息段中的“信用额度”字段不适用于此类账户。', RULE_TYPE=NULL, RULE_SOURCE='BUSI', FIELD='DATA_ID', FIELD_NAME=NULL, TRIMMABLE=NULL, NULLABLE='Y', TYPE_ID=NULL, ENCODING=NULL, MIN_LENGTH=NULL, MAX_LENGTH=NULL, MIN_VALUE=NULL, MAX_VALUE=NULL, MAX_PRECISION=NULL, MIN_SCALE=NULL, MAX_SCALE=NULL, ENUMERATION=NULL, PATTERN=NULL, IN_ENTITY=NULL, IN_FIELD=NULL, "SQL"=NULL, SQL_EXTRA_KEY=NULL, SCRIPT='if (!isEmpty(B_ACCT_TYPE) && B_ACCT_TYPE == "D1") {
    if (isEmpty(C_ACCT_CRED_LINE_AMT)) {
        return true
    }
    return false
}
return true', BEAN=NULL, CHECK_FLAG=NULL, CHECK_DESC=NULL, CHECK_ERR_TYPE=NULL, NEXT_ACTION=NULL, DATA_STATUS=NULL, DATA_FLAG=NULL, DATA_OP=NULL, DATA_SOURCE=NULL, DATA_VERSION=NULL, DATA_REJ_DESC=NULL, DATA_DEL_DESC=NULL, DATA_CRT_USER=NULL, DATA_CRT_DATE=NULL, DATA_CRT_TIME=NULL, DATA_CHG_USER=NULL, DATA_CHG_DATE=NULL, DATA_CHG_TIME=NULL, DATA_APV_USER=NULL, DATA_APV_DATE=NULL, DATA_APV_TIME=NULL, RSV1='7bcfa2fddc5b4ab5af14041a481f4047', RSV2=NULL, RSV3=NULL, RSV4='mbtrule', RSV5='1' WHERE DATA_ID='MBT_210S210010105S210010109S210010104';
UPDATE GP_QC_RULE SET DATA_DATE='20190620', CORP_ID='TESTCORP', ORG_ID='72', GROUP_ID='002', INQ_ORG_ID=NULL, INQ_GROUP_ID=NULL, RULE_DESC='若账户类型为“C1”时，基本信息段中的“还款方式”字段不适用于此类账户。', RULE_MESSAGE='若账户类型为“C1”时，基本信息段中的“还款方式”字段不适用于此类账户。', RULE_TYPE=NULL, RULE_SOURCE='BUSI', FIELD='DATA_ID', FIELD_NAME=NULL, TRIMMABLE=NULL, NULLABLE='Y', TYPE_ID=NULL, ENCODING=NULL, MIN_LENGTH=NULL, MAX_LENGTH=NULL, MIN_VALUE=NULL, MAX_VALUE=NULL, MAX_PRECISION=NULL, MIN_SCALE=NULL, MAX_SCALE=NULL, ENUMERATION=NULL, PATTERN=NULL, IN_ENTITY=NULL, IN_FIELD=NULL, "SQL"=NULL, SQL_EXTRA_KEY=NULL, SCRIPT='if (!isEmpty(B_ACCT_TYPE) && B_ACCT_TYPE == "C1") {
    if (isEmpty(C_REPAY_MODE)) {
        return true
    }
    return false
}
return true', BEAN=NULL, CHECK_FLAG=NULL, CHECK_DESC=NULL, CHECK_ERR_TYPE=NULL, NEXT_ACTION=NULL, DATA_STATUS=NULL, DATA_FLAG=NULL, DATA_OP=NULL, DATA_SOURCE=NULL, DATA_VERSION=NULL, DATA_REJ_DESC=NULL, DATA_DEL_DESC=NULL, DATA_CRT_USER=NULL, DATA_CRT_DATE=NULL, DATA_CRT_TIME=NULL, DATA_CHG_USER=NULL, DATA_CHG_DATE=NULL, DATA_CHG_TIME=NULL, DATA_APV_USER=NULL, DATA_APV_DATE=NULL, DATA_APV_TIME=NULL, RSV1='f3ba09625df54a0584a550e8f6d8abd8', RSV2=NULL, RSV3=NULL, RSV4='mbtrule', RSV5='1' WHERE DATA_ID='MBT_210S210010130S210010111S210010120';
UPDATE GP_QC_RULE SET DATA_DATE='20190620', CORP_ID='TESTCORP', ORG_ID='72', GROUP_ID='002', INQ_ORG_ID=NULL, INQ_GROUP_ID=NULL, RULE_DESC='若账户类型为“C1”时，基本信息段中的“担保方式”字段不适用于此类账户。', RULE_MESSAGE='若账户类型为“C1”时，基本信息段中的“担保方式”字段不适用于此类账户。', RULE_TYPE=NULL, RULE_SOURCE='BUSI', FIELD='DATA_ID', FIELD_NAME=NULL, TRIMMABLE=NULL, NULLABLE='Y', TYPE_ID=NULL, ENCODING=NULL, MIN_LENGTH=NULL, MAX_LENGTH=NULL, MIN_VALUE=NULL, MAX_VALUE=NULL, MAX_PRECISION=NULL, MIN_SCALE=NULL, MAX_SCALE=NULL, ENUMERATION=NULL, PATTERN=NULL, IN_ENTITY=NULL, IN_FIELD=NULL, "SQL"=NULL, SQL_EXTRA_KEY=NULL, SCRIPT='if (!isEmpty(B_ACCT_TYPE) && B_ACCT_TYPE == "C1") {
    if (isEmpty(C_GUAR_MODE)) {
        return true
    }
    return false
}
return true', BEAN=NULL, CHECK_FLAG=NULL, CHECK_DESC=NULL, CHECK_ERR_TYPE=NULL, NEXT_ACTION=NULL, DATA_STATUS=NULL, DATA_FLAG=NULL, DATA_OP=NULL, DATA_SOURCE=NULL, DATA_VERSION=NULL, DATA_REJ_DESC=NULL, DATA_DEL_DESC=NULL, DATA_CRT_USER=NULL, DATA_CRT_DATE=NULL, DATA_CRT_TIME=NULL, DATA_CHG_USER=NULL, DATA_CHG_DATE=NULL, DATA_CHG_TIME=NULL, DATA_APV_USER=NULL, DATA_APV_DATE=NULL, DATA_APV_TIME=NULL, RSV1='8d2a57899bdd49bd8acbbc3592a49990', RSV2=NULL, RSV3=NULL, RSV4='mbtrule', RSV5='1' WHERE DATA_ID='MBT_210S210010154S210010111S210010136';
UPDATE GP_QC_RULE SET DATA_DATE='20190620', CORP_ID='TESTCORP', ORG_ID='72', GROUP_ID='002', INQ_ORG_ID=NULL, INQ_GROUP_ID=NULL, RULE_DESC='若账户类型为“C1”时，基本信息段中的“贷款发放形式”字段不适用于此类账户。', RULE_MESSAGE='若账户类型为“C1”时，基本信息段中的“贷款发放形式”字段不适用于此类账户。', RULE_TYPE=NULL, RULE_SOURCE='BUSI', FIELD='DATA_ID', FIELD_NAME=NULL, TRIMMABLE=NULL, NULLABLE='Y', TYPE_ID=NULL, ENCODING=NULL, MIN_LENGTH=NULL, MAX_LENGTH=NULL, MIN_VALUE=NULL, MAX_VALUE=NULL, MAX_PRECISION=NULL, MIN_SCALE=NULL, MAX_SCALE=NULL, ENUMERATION=NULL, PATTERN=NULL, IN_ENTITY=NULL, IN_FIELD=NULL, "SQL"=NULL, SQL_EXTRA_KEY=NULL, SCRIPT='if (!isEmpty(B_ACCT_TYPE) && B_ACCT_TYPE == "C1") {
    if (isEmpty(C_LOAN_FORM)) {
        return true
    }
    return false
}
return true', BEAN=NULL, CHECK_FLAG=NULL, CHECK_DESC=NULL, CHECK_ERR_TYPE=NULL, NEXT_ACTION=NULL, DATA_STATUS=NULL, DATA_FLAG=NULL, DATA_OP=NULL, DATA_SOURCE=NULL, DATA_VERSION=NULL, DATA_REJ_DESC=NULL, DATA_DEL_DESC=NULL, DATA_CRT_USER=NULL, DATA_CRT_DATE=NULL, DATA_CRT_TIME=NULL, DATA_CHG_USER=NULL, DATA_CHG_DATE=NULL, DATA_CHG_TIME=NULL, DATA_APV_USER=NULL, DATA_APV_DATE=NULL, DATA_APV_TIME=NULL, RSV1='21728d0ea02448b9ada291dd8da31095', RSV2=NULL, RSV3=NULL, RSV4='mbtrule', RSV5='1' WHERE DATA_ID='MBT_210S210010178S210010111S210010152';
UPDATE GP_QC_RULE SET DATA_DATE='20190620', CORP_ID='TESTCORP', ORG_ID='72', GROUP_ID='002', INQ_ORG_ID=NULL, INQ_GROUP_ID=NULL, RULE_DESC='若账户类型为“C1”时，月度表现信息段中的“本月应还款金额”字段不适用于此类模板。', RULE_MESSAGE='若账户类型为“C1”时，月度表现信息段中的“本月应还款金额”字段不适用于此类模板。', RULE_TYPE=NULL, RULE_SOURCE='BUSI', FIELD='DATA_ID', FIELD_NAME=NULL, TRIMMABLE=NULL, NULLABLE='Y', TYPE_ID=NULL, ENCODING=NULL, MIN_LENGTH=NULL, MAX_LENGTH=NULL, MIN_VALUE=NULL, MAX_VALUE=NULL, MAX_PRECISION=NULL, MIN_SCALE=NULL, MAX_SCALE=NULL, ENUMERATION=NULL, PATTERN=NULL, IN_ENTITY=NULL, IN_FIELD=NULL, "SQL"=NULL, SQL_EXTRA_KEY=NULL, SCRIPT='if (!isEmpty(B_ACCT_TYPE) && B_ACCT_TYPE == "C1") {
    if (isEmpty(H_CUR_RPY_AMT)) {
        return true
    }
    return false
}
return true', BEAN=NULL, CHECK_FLAG=NULL, CHECK_DESC=NULL, CHECK_ERR_TYPE=NULL, NEXT_ACTION=NULL, DATA_STATUS=NULL, DATA_FLAG=NULL, DATA_OP=NULL, DATA_SOURCE=NULL, DATA_VERSION=NULL, DATA_REJ_DESC=NULL, DATA_DEL_DESC=NULL, DATA_CRT_USER=NULL, DATA_CRT_DATE=NULL, DATA_CRT_TIME=NULL, DATA_CHG_USER=NULL, DATA_CHG_DATE=NULL, DATA_CHG_TIME=NULL, DATA_APV_USER=NULL, DATA_APV_DATE=NULL, DATA_APV_TIME=NULL, RSV1='92cf01e2645a48c48c13c11ef9d457b5', RSV2=NULL, RSV3=NULL, RSV4='mbtrule', RSV5='1' WHERE DATA_ID='MBT_210S210010322S210010111S210010248';
UPDATE GP_QC_RULE SET DATA_DATE='20190620', CORP_ID='TESTCORP', ORG_ID='72', GROUP_ID='002', INQ_ORG_ID=NULL, INQ_GROUP_ID=NULL, RULE_DESC='若账户类型为“R3”时，非月度表现信息段中的“剩余还款期数”字段不适用于此类账户。', RULE_MESSAGE='若账户类型为“R3”时，非月度表现信息段中的“剩余还款期数”字段不适用于此类账户。', RULE_TYPE=NULL, RULE_SOURCE='BUSI', FIELD='DATA_ID', FIELD_NAME=NULL, TRIMMABLE=NULL, NULLABLE='Y', TYPE_ID=NULL, ENCODING=NULL, MIN_LENGTH=NULL, MAX_LENGTH=NULL, MIN_VALUE=NULL, MAX_VALUE=NULL, MAX_PRECISION=NULL, MIN_SCALE=NULL, MAX_SCALE=NULL, ENUMERATION=NULL, PATTERN=NULL, IN_ENTITY=NULL, IN_FIELD=NULL, "SQL"=NULL, SQL_EXTRA_KEY=NULL, SCRIPT='if (!isEmpty(B_ACCT_TYPE) && B_ACCT_TYPE == "R3") {
    if (isEmpty(J_REM_REP_PRD)) {
        return true
    }
    return false
}
return true', BEAN=NULL, CHECK_FLAG=NULL, CHECK_DESC=NULL, CHECK_ERR_TYPE=NULL, NEXT_ACTION=NULL, DATA_STATUS=NULL, DATA_FLAG=NULL, DATA_OP=NULL, DATA_SOURCE=NULL, DATA_VERSION=NULL, DATA_REJ_DESC=NULL, DATA_DEL_DESC=NULL, DATA_CRT_USER=NULL, DATA_CRT_DATE=NULL, DATA_CRT_TIME=NULL, DATA_CHG_USER=NULL, DATA_CHG_DATE=NULL, DATA_CHG_TIME=NULL, DATA_APV_USER=NULL, DATA_APV_DATE=NULL, DATA_APV_TIME=NULL, RSV1='0d26cfd3826246619ee77b284708e68c', RSV2=NULL, RSV3=NULL, RSV4='mbtrule', RSV5='1' WHERE DATA_ID='MBT_210S210010337S210010105S210010258';
UPDATE GP_QC_RULE SET DATA_DATE='20190620', CORP_ID='TESTCORP', ORG_ID='72', GROUP_ID='002', INQ_ORG_ID=NULL, INQ_GROUP_ID=NULL, RULE_DESC='若账户类型为“R3”时，非月度表现信息段中的“当前逾期期数”字段不适用于此类账户。', RULE_MESSAGE='若账户类型为“R3”时，非月度表现信息段中的“当前逾期期数”字段不适用于此类账户。', RULE_TYPE=NULL, RULE_SOURCE='BUSI', FIELD='DATA_ID', FIELD_NAME=NULL, TRIMMABLE=NULL, NULLABLE='Y', TYPE_ID=NULL, ENCODING=NULL, MIN_LENGTH=NULL, MAX_LENGTH=NULL, MIN_VALUE=NULL, MAX_VALUE=NULL, MAX_PRECISION=NULL, MIN_SCALE=NULL, MAX_SCALE=NULL, ENUMERATION=NULL, PATTERN=NULL, IN_ENTITY=NULL, IN_FIELD=NULL, "SQL"=NULL, SQL_EXTRA_KEY=NULL, SCRIPT='if (!isEmpty(B_ACCT_TYPE) && B_ACCT_TYPE == "R3") {
    if (isEmpty(J_OVERD_PRD)) {
        return true
    }
    return false
}
return true', BEAN=NULL, CHECK_FLAG=NULL, CHECK_DESC=NULL, CHECK_ERR_TYPE=NULL, NEXT_ACTION=NULL, DATA_STATUS=NULL, DATA_FLAG=NULL, DATA_OP=NULL, DATA_SOURCE=NULL, DATA_VERSION=NULL, DATA_REJ_DESC=NULL, DATA_DEL_DESC=NULL, DATA_CRT_USER=NULL, DATA_CRT_DATE=NULL, DATA_CRT_TIME=NULL, DATA_CHG_USER=NULL, DATA_CHG_DATE=NULL, DATA_CHG_TIME=NULL, DATA_APV_USER=NULL, DATA_APV_DATE=NULL, DATA_APV_TIME=NULL, RSV1='fdd18fa65cfb4146978aba4fb2e4b7bf', RSV2=NULL, RSV3=NULL, RSV4='mbtrule', RSV5='1' WHERE DATA_ID='MBT_210S210010349S210010105S210010266';
UPDATE GP_QC_RULE SET DATA_DATE='20190620', CORP_ID='TESTCORP', ORG_ID='72', GROUP_ID='002', INQ_ORG_ID=NULL, INQ_GROUP_ID=NULL, RULE_DESC='若账户类型为“R3”时，月度表现信息段中的“剩余还款期数”字段不适用于此类账户。', RULE_MESSAGE='若账户类型为“R3”时，月度表现信息段中的“剩余还款期数”字段不适用于此类账户。', RULE_TYPE=NULL, RULE_SOURCE='BUSI', FIELD='DATA_ID', FIELD_NAME=NULL, TRIMMABLE=NULL, NULLABLE='Y', TYPE_ID=NULL, ENCODING=NULL, MIN_LENGTH=NULL, MAX_LENGTH=NULL, MIN_VALUE=NULL, MAX_VALUE=NULL, MAX_PRECISION=NULL, MIN_SCALE=NULL, MAX_SCALE=NULL, ENUMERATION=NULL, PATTERN=NULL, IN_ENTITY=NULL, IN_FIELD=NULL, "SQL"=NULL, SQL_EXTRA_KEY=NULL, SCRIPT='if (!isEmpty(B_ACCT_TYPE) && B_ACCT_TYPE == "R3") {
    if (isEmpty(H_REM_REP_PRD)) {
        return true
    }
    return false
}
return true', BEAN=NULL, CHECK_FLAG=NULL, CHECK_DESC=NULL, CHECK_ERR_TYPE=NULL, NEXT_ACTION=NULL, DATA_STATUS=NULL, DATA_FLAG=NULL, DATA_OP=NULL, DATA_SOURCE=NULL, DATA_VERSION=NULL, DATA_REJ_DESC=NULL, DATA_DEL_DESC=NULL, DATA_CRT_USER=NULL, DATA_CRT_DATE=NULL, DATA_CRT_TIME=NULL, DATA_CHG_USER=NULL, DATA_CHG_DATE=NULL, DATA_CHG_TIME=NULL, DATA_APV_USER=NULL, DATA_APV_DATE=NULL, DATA_APV_TIME=NULL, RSV1='09c00aa1c4604866b60d1afebe860d46', RSV2=NULL, RSV3=NULL, RSV4='mbtrule', RSV5='1' WHERE DATA_ID='MBT_210S210010259S210010105S210010208';
UPDATE GP_QC_RULE SET DATA_DATE='20190620', CORP_ID='TESTCORP', ORG_ID='72', GROUP_ID='002', INQ_ORG_ID=NULL, INQ_GROUP_ID=NULL, RULE_DESC='若账户类型为“R4”时，月度表现信息段中的“实际还款百分比”字段不适用于此类账户。', RULE_MESSAGE='若账户类型为“R4”时，月度表现信息段中的“实际还款百分比”字段不适用于此类账户。', RULE_TYPE=NULL, RULE_SOURCE='BUSI', FIELD='DATA_ID', FIELD_NAME=NULL, TRIMMABLE=NULL, NULLABLE='Y', TYPE_ID=NULL, ENCODING=NULL, MIN_LENGTH=NULL, MAX_LENGTH=NULL, MIN_VALUE=NULL, MAX_VALUE=NULL, MAX_PRECISION=NULL, MIN_SCALE=NULL, MAX_SCALE=NULL, ENUMERATION=NULL, PATTERN=NULL, IN_ENTITY=NULL, IN_FIELD=NULL, "SQL"=NULL, SQL_EXTRA_KEY=NULL, SCRIPT='if (!isEmpty(B_ACCT_TYPE) && B_ACCT_TYPE == "R4") {
    if (isEmpty(H_RPY_PRCT)) {
        return true
    }
    return false
}
return true', BEAN=NULL, CHECK_FLAG=NULL, CHECK_DESC=NULL, CHECK_ERR_TYPE=NULL, NEXT_ACTION=NULL, DATA_STATUS=NULL, DATA_FLAG=NULL, DATA_OP=NULL, DATA_SOURCE=NULL, DATA_VERSION=NULL, DATA_REJ_DESC=NULL, DATA_DEL_DESC=NULL, DATA_CRT_USER=NULL, DATA_CRT_DATE=NULL, DATA_CRT_TIME=NULL, DATA_CHG_USER=NULL, DATA_CHG_DATE=NULL, DATA_CHG_TIME=NULL, DATA_APV_USER=NULL, DATA_APV_DATE=NULL, DATA_APV_TIME=NULL, RSV1='13a66c3552384ffc80087c105a054389', RSV2=NULL, RSV3=NULL, RSV4='mbtrule', RSV5='1' WHERE DATA_ID='MBT_210S210010266S210010107S210010212';
UPDATE GP_QC_RULE SET DATA_DATE='20190620', CORP_ID='TESTCORP', ORG_ID='72', GROUP_ID='002', INQ_ORG_ID=NULL, INQ_GROUP_ID=NULL, RULE_DESC='若账户类型为“C1”时，月度表现信息段中的“当前逾期总额”字段不适用于此类模板。', RULE_MESSAGE='若账户类型为“C1”时，月度表现信息段中的“当前逾期总额”字段不适用于此类模板。', RULE_TYPE=NULL, RULE_SOURCE='BUSI', FIELD='DATA_ID', FIELD_NAME=NULL, TRIMMABLE=NULL, NULLABLE='Y', TYPE_ID=NULL, ENCODING=NULL, MIN_LENGTH=NULL, MAX_LENGTH=NULL, MIN_VALUE=NULL, MAX_VALUE=NULL, MAX_PRECISION=NULL, MIN_SCALE=NULL, MAX_SCALE=NULL, ENUMERATION=NULL, PATTERN=NULL, IN_ENTITY=NULL, IN_FIELD=NULL, "SQL"=NULL, SQL_EXTRA_KEY=NULL, SCRIPT='if (!isEmpty(B_ACCT_TYPE) && B_ACCT_TYPE == "C1") {
    if (isEmpty(H_TOT_OVERD)) {
        return true
    }
    return false
}
return true', BEAN=NULL, CHECK_FLAG=NULL, CHECK_DESC=NULL, CHECK_ERR_TYPE=NULL, NEXT_ACTION=NULL, DATA_STATUS=NULL, DATA_FLAG=NULL, DATA_OP=NULL, DATA_SOURCE=NULL, DATA_VERSION=NULL, DATA_REJ_DESC=NULL, DATA_DEL_DESC=NULL, DATA_CRT_USER=NULL, DATA_CRT_DATE=NULL, DATA_CRT_TIME=NULL, DATA_CHG_USER=NULL, DATA_CHG_DATE=NULL, DATA_CHG_TIME=NULL, DATA_APV_USER=NULL, DATA_APV_DATE=NULL, DATA_APV_TIME=NULL, RSV1='a64c19c3e5b14bcf8390cd3f4b5beb17', RSV2=NULL, RSV3=NULL, RSV4='mbtrule', RSV5='1' WHERE DATA_ID='MBT_210S210010280S210010111S210010220';
UPDATE GP_QC_RULE SET DATA_DATE='20190620', CORP_ID='TESTCORP', ORG_ID='72', GROUP_ID='002', INQ_ORG_ID=NULL, INQ_GROUP_ID=NULL, RULE_DESC='若账户类型为“R2”时，月度表现信息段中的“逾期 31-60 天未归还本金”字段不适用于此类账户。', RULE_MESSAGE='若账户类型为“R2”时，月度表现信息段中的“逾期 31-60 天未归还本金”字段不适用于此类账户。', RULE_TYPE=NULL, RULE_SOURCE='BUSI', FIELD='DATA_ID', FIELD_NAME=NULL, TRIMMABLE=NULL, NULLABLE='Y', TYPE_ID=NULL, ENCODING=NULL, MIN_LENGTH=NULL, MAX_LENGTH=NULL, MIN_VALUE=NULL, MAX_VALUE=NULL, MAX_PRECISION=NULL, MIN_SCALE=NULL, MAX_SCALE=NULL, ENUMERATION=NULL, PATTERN=NULL, IN_ENTITY=NULL, IN_FIELD=NULL, "SQL"=NULL, SQL_EXTRA_KEY=NULL, SCRIPT='if (!isEmpty(B_ACCT_TYPE) && B_ACCT_TYPE == "R2") {
    if (isEmpty(H_OVERD31_60PRINC)) {
        return true
    }
    return false
}
return true', BEAN=NULL, CHECK_FLAG=NULL, CHECK_DESC=NULL, CHECK_ERR_TYPE=NULL, NEXT_ACTION=NULL, DATA_STATUS=NULL, DATA_FLAG=NULL, DATA_OP=NULL, DATA_SOURCE=NULL, DATA_VERSION=NULL, DATA_REJ_DESC=NULL, DATA_DEL_DESC=NULL, DATA_CRT_USER=NULL, DATA_CRT_DATE=NULL, DATA_CRT_TIME=NULL, DATA_CHG_USER=NULL, DATA_CHG_DATE=NULL, DATA_CHG_TIME=NULL, DATA_APV_USER=NULL, DATA_APV_DATE=NULL, DATA_APV_TIME=NULL, RSV1='8fea01317e5341619e62d48273b694ac', RSV2=NULL, RSV3=NULL, RSV4='mbtrule', RSV5='1' WHERE DATA_ID='MBT_210S210010288S210010103S210010228';
UPDATE GP_QC_RULE SET DATA_DATE='20190620', CORP_ID='TESTCORP', ORG_ID='72', GROUP_ID='002', INQ_ORG_ID=NULL, INQ_GROUP_ID=NULL, RULE_DESC='若账户类型为“C1”时，月度表现信息段中的“逾期 31-60 天未归还本金”字段不适用于此类模板。', RULE_MESSAGE='若账户类型为“C1”时，月度表现信息段中的“逾期 31-60 天未归还本金”字段不适用于此类模板。', RULE_TYPE=NULL, RULE_SOURCE='BUSI', FIELD='DATA_ID', FIELD_NAME=NULL, TRIMMABLE=NULL, NULLABLE='Y', TYPE_ID=NULL, ENCODING=NULL, MIN_LENGTH=NULL, MAX_LENGTH=NULL, MIN_VALUE=NULL, MAX_VALUE=NULL, MAX_PRECISION=NULL, MIN_SCALE=NULL, MAX_SCALE=NULL, ENUMERATION=NULL, PATTERN=NULL, IN_ENTITY=NULL, IN_FIELD=NULL, "SQL"=NULL, SQL_EXTRA_KEY=NULL, SCRIPT='if (!isEmpty(B_ACCT_TYPE) && B_ACCT_TYPE == "C1") {
    if (isEmpty(H_OVERD31_60PRINC)) {
        return true
    }
    return false
}
return true', BEAN=NULL, CHECK_FLAG=NULL, CHECK_DESC=NULL, CHECK_ERR_TYPE=NULL, NEXT_ACTION=NULL, DATA_STATUS=NULL, DATA_FLAG=NULL, DATA_OP=NULL, DATA_SOURCE=NULL, DATA_VERSION=NULL, DATA_REJ_DESC=NULL, DATA_DEL_DESC=NULL, DATA_CRT_USER=NULL, DATA_CRT_DATE=NULL, DATA_CRT_TIME=NULL, DATA_CHG_USER=NULL, DATA_CHG_DATE=NULL, DATA_CHG_TIME=NULL, DATA_APV_USER=NULL, DATA_APV_DATE=NULL, DATA_APV_TIME=NULL, RSV1='e9c4f115a9ff44428ceadadc27fb181a', RSV2=NULL, RSV3=NULL, RSV4='mbtrule', RSV5='1' WHERE DATA_ID='MBT_210S210010292S210010111S210010228';
UPDATE GP_QC_RULE SET DATA_DATE='20190620', CORP_ID='TESTCORP', ORG_ID='72', GROUP_ID='002', INQ_ORG_ID=NULL, INQ_GROUP_ID=NULL, RULE_DESC='若账户类型为“R3”时，月度表现信息段中的“逾期 180 天以上未归还本金”字段不适用于此类账户。', RULE_MESSAGE='若账户类型为“R3”时，月度表现信息段中的“逾期 180 天以上未归还本金”字段不适用于此类账户。', RULE_TYPE=NULL, RULE_SOURCE='BUSI', FIELD='DATA_ID', FIELD_NAME=NULL, TRIMMABLE=NULL, NULLABLE='Y', TYPE_ID=NULL, ENCODING=NULL, MIN_LENGTH=NULL, MAX_LENGTH=NULL, MIN_VALUE=NULL, MAX_VALUE=NULL, MAX_PRECISION=NULL, MIN_SCALE=NULL, MAX_SCALE=NULL, ENUMERATION=NULL, PATTERN=NULL, IN_ENTITY=NULL, IN_FIELD=NULL, "SQL"=NULL, SQL_EXTRA_KEY=NULL, SCRIPT='if (!isEmpty(B_ACCT_TYPE) && B_ACCT_TYPE == "R3") {
    if (isEmpty(H_OVERD_PRINC180)) {
        return true
    }
    return false
}
return true', BEAN=NULL, CHECK_FLAG=NULL, CHECK_DESC=NULL, CHECK_ERR_TYPE=NULL, NEXT_ACTION=NULL, DATA_STATUS=NULL, DATA_FLAG=NULL, DATA_OP=NULL, DATA_SOURCE=NULL, DATA_VERSION=NULL, DATA_REJ_DESC=NULL, DATA_DEL_DESC=NULL, DATA_CRT_USER=NULL, DATA_CRT_DATE=NULL, DATA_CRT_TIME=NULL, DATA_CHG_USER=NULL, DATA_CHG_DATE=NULL, DATA_CHG_TIME=NULL, DATA_APV_USER=NULL, DATA_APV_DATE=NULL, DATA_APV_TIME=NULL, RSV1='42334c2556164df7ae2f1589692e1c25', RSV2=NULL, RSV3=NULL, RSV4='mbtrule', RSV5='1' WHERE DATA_ID='MBT_210S210010307S210010105S210010238';
UPDATE GP_QC_RULE SET DATA_DATE='20190620', CORP_ID='TESTCORP', ORG_ID='72', GROUP_ID='002', INQ_ORG_ID=NULL, INQ_GROUP_ID=NULL, RULE_DESC='若账户类型为“R4”时，月度表现信息段中的“透支 180 天以上未还余额”字段不适用于此类账户。', RULE_MESSAGE='若账户类型为“R4”时，月度表现信息段中的“透支 180 天以上未还余额”字段不适用于此类账户。', RULE_TYPE=NULL, RULE_SOURCE='BUSI', FIELD='DATA_ID', FIELD_NAME=NULL, TRIMMABLE=NULL, NULLABLE='Y', TYPE_ID=NULL, ENCODING=NULL, MIN_LENGTH=NULL, MAX_LENGTH=NULL, MIN_VALUE=NULL, MAX_VALUE=NULL, MAX_PRECISION=NULL, MIN_SCALE=NULL, MAX_SCALE=NULL, ENUMERATION=NULL, PATTERN=NULL, IN_ENTITY=NULL, IN_FIELD=NULL, "SQL"=NULL, SQL_EXTRA_KEY=NULL, SCRIPT='if (!isEmpty(B_ACCT_TYPE) && B_ACCT_TYPE == "R4") {
    if (isEmpty(H_OVERD_RAW_BA_OVE180)) {
        return true
    }
    return false
}
return true', BEAN=NULL, CHECK_FLAG=NULL, CHECK_DESC=NULL, CHECK_ERR_TYPE=NULL, NEXT_ACTION=NULL, DATA_STATUS=NULL, DATA_FLAG=NULL, DATA_OP=NULL, DATA_SOURCE=NULL, DATA_VERSION=NULL, DATA_REJ_DESC=NULL, DATA_DEL_DESC=NULL, DATA_CRT_USER=NULL, DATA_CRT_DATE=NULL, DATA_CRT_TIME=NULL, DATA_CHG_USER=NULL, DATA_CHG_DATE=NULL, DATA_CHG_TIME=NULL, DATA_APV_USER=NULL, DATA_APV_DATE=NULL, DATA_APV_TIME=NULL, RSV1='bc03c5736ac04cbeae4349920fcf9b5f', RSV2=NULL, RSV3=NULL, RSV4='mbtrule', RSV5='1' WHERE DATA_ID='MBT_210S210010314S210010107S210010242';
UPDATE GP_QC_RULE SET DATA_DATE='20190620', CORP_ID='TESTCORP', ORG_ID='72', GROUP_ID='002', INQ_ORG_ID=NULL, INQ_GROUP_ID=NULL, RULE_DESC='若账户类型为“R3”时，非月度表现信息段中的“当前逾期总额”字段不适用于此类账户。', RULE_MESSAGE='若账户类型为“R3”时，非月度表现信息段中的“当前逾期总额”字段不适用于此类账户。', RULE_TYPE=NULL, RULE_SOURCE='BUSI', FIELD='DATA_ID', FIELD_NAME=NULL, TRIMMABLE=NULL, NULLABLE='Y', TYPE_ID=NULL, ENCODING=NULL, MIN_LENGTH=NULL, MAX_LENGTH=NULL, MIN_VALUE=NULL, MAX_VALUE=NULL, MAX_PRECISION=NULL, MIN_SCALE=NULL, MAX_SCALE=NULL, ENUMERATION=NULL, PATTERN=NULL, IN_ENTITY=NULL, IN_FIELD=NULL, "SQL"=NULL, SQL_EXTRA_KEY=NULL, SCRIPT='if (!isEmpty(B_ACCT_TYPE) && B_ACCT_TYPE == "R3") {
    if (isEmpty(J_TOT_OVERD)) {
        return true
    }
    return false
}
return true', BEAN=NULL, CHECK_FLAG=NULL, CHECK_DESC=NULL, CHECK_ERR_TYPE=NULL, NEXT_ACTION=NULL, DATA_STATUS=NULL, DATA_FLAG=NULL, DATA_OP=NULL, DATA_SOURCE=NULL, DATA_VERSION=NULL, DATA_REJ_DESC=NULL, DATA_DEL_DESC=NULL, DATA_CRT_USER=NULL, DATA_CRT_DATE=NULL, DATA_CRT_TIME=NULL, DATA_CHG_USER=NULL, DATA_CHG_DATE=NULL, DATA_CHG_TIME=NULL, DATA_APV_USER=NULL, DATA_APV_DATE=NULL, DATA_APV_TIME=NULL, RSV1='96fe8d8884d34050bad442cbd10d110b', RSV2=NULL, RSV3=NULL, RSV4='mbtrule', RSV5='1' WHERE DATA_ID='MBT_210S210010355S210010105S210010272';
UPDATE GP_QC_RULE SET DATA_DATE='20190620', CORP_ID='TESTCORP', ORG_ID='72', GROUP_ID='002', INQ_ORG_ID=NULL, INQ_GROUP_ID=NULL, RULE_DESC='若账户类型为“R4”时，月度表现信息段中的“本期账单余额”字段不适用于此类账户。', RULE_MESSAGE='若账户类型为“R4”时，月度表现信息段中的“本期账单余额”字段不适用于此类账户。', RULE_TYPE=NULL, RULE_SOURCE='BUSI', FIELD='DATA_ID', FIELD_NAME=NULL, TRIMMABLE=NULL, NULLABLE='Y', TYPE_ID=NULL, ENCODING=NULL, MIN_LENGTH=NULL, MAX_LENGTH=NULL, MIN_VALUE=NULL, MAX_VALUE=NULL, MAX_PRECISION=NULL, MIN_SCALE=NULL, MAX_SCALE=NULL, ENUMERATION=NULL, PATTERN=NULL, IN_ENTITY=NULL, IN_FIELD=NULL, "SQL"=NULL, SQL_EXTRA_KEY=NULL, SCRIPT='if (!isEmpty(B_ACCT_TYPE) && B_ACCT_TYPE == "R4") {
    if (isEmpty(H_PRID_ACCT_BAL)) {
        return true
    }
    return false
}
return true', BEAN=NULL, CHECK_FLAG=NULL, CHECK_DESC=NULL, CHECK_ERR_TYPE=NULL, NEXT_ACTION=NULL, DATA_STATUS=NULL, DATA_FLAG=NULL, DATA_OP=NULL, DATA_SOURCE=NULL, DATA_VERSION=NULL, DATA_REJ_DESC=NULL, DATA_DEL_DESC=NULL, DATA_CRT_USER=NULL, DATA_CRT_DATE=NULL, DATA_CRT_TIME=NULL, DATA_CHG_USER=NULL, DATA_CHG_DATE=NULL, DATA_CHG_TIME=NULL, DATA_APV_USER=NULL, DATA_APV_DATE=NULL, DATA_APV_TIME=NULL, RSV1='81606dd27d61402a96a294041b7df624', RSV2=NULL, RSV3=NULL, RSV4='mbtrule', RSV5='1' WHERE DATA_ID='MBT_210S210010242S210010107S210010196';
UPDATE GP_QC_RULE SET DATA_DATE='20190620', CORP_ID='TESTCORP', ORG_ID='72', GROUP_ID='002', INQ_ORG_ID=NULL, INQ_GROUP_ID=NULL, RULE_DESC='若账户类型为“R3”时，月度表现信息段中的“已使用额度”字段不适用于此类账户。', RULE_MESSAGE='若账户类型为“R3”时，月度表现信息段中的“已使用额度”字段不适用于此类账户。', RULE_TYPE=NULL, RULE_SOURCE='BUSI', FIELD='DATA_ID', FIELD_NAME=NULL, TRIMMABLE=NULL, NULLABLE='Y', TYPE_ID=NULL, ENCODING=NULL, MIN_LENGTH=NULL, MAX_LENGTH=NULL, MIN_VALUE=NULL, MAX_VALUE=NULL, MAX_PRECISION=NULL, MIN_SCALE=NULL, MAX_SCALE=NULL, ENUMERATION=NULL, PATTERN=NULL, IN_ENTITY=NULL, IN_FIELD=NULL, "SQL"=NULL, SQL_EXTRA_KEY=NULL, SCRIPT='if (!isEmpty(B_ACCT_TYPE) && B_ACCT_TYPE == "R3") {
    if (isEmpty(H_USED_AMT)) {
        return true
    }
    return false
}
return true', BEAN=NULL, CHECK_FLAG=NULL, CHECK_DESC=NULL, CHECK_ERR_TYPE=NULL, NEXT_ACTION=NULL, DATA_STATUS=NULL, DATA_FLAG=NULL, DATA_OP=NULL, DATA_SOURCE=NULL, DATA_VERSION=NULL, DATA_REJ_DESC=NULL, DATA_DEL_DESC=NULL, DATA_CRT_USER=NULL, DATA_CRT_DATE=NULL, DATA_CRT_TIME=NULL, DATA_CHG_USER=NULL, DATA_CHG_DATE=NULL, DATA_CHG_TIME=NULL, DATA_APV_USER=NULL, DATA_APV_DATE=NULL, DATA_APV_TIME=NULL, RSV1='71760483eb6440979c78028252960549', RSV2=NULL, RSV3=NULL, RSV4='mbtrule', RSV5='1' WHERE DATA_ID='MBT_210S210010247S210010105S210010200';
UPDATE GP_QC_RULE SET DATA_DATE='20190620', CORP_ID='TESTCORP', ORG_ID='72', GROUP_ID='002', INQ_ORG_ID=NULL, INQ_GROUP_ID=NULL, RULE_DESC='若账户类型为“R3”时，月度表现信息段中的“未出单的大额专项分期余额”字段不适用于此类账户。', RULE_MESSAGE='若账户类型为“R3”时，月度表现信息段中的“未出单的大额专项分期余额”字段不适用于此类账户。', RULE_TYPE=NULL, RULE_SOURCE='BUSI', FIELD='DATA_ID', FIELD_NAME=NULL, TRIMMABLE=NULL, NULLABLE='Y', TYPE_ID=NULL, ENCODING=NULL, MIN_LENGTH=NULL, MAX_LENGTH=NULL, MIN_VALUE=NULL, MAX_VALUE=NULL, MAX_PRECISION=NULL, MIN_SCALE=NULL, MAX_SCALE=NULL, ENUMERATION=NULL, PATTERN=NULL, IN_ENTITY=NULL, IN_FIELD=NULL, "SQL"=NULL, SQL_EXTRA_KEY=NULL, SCRIPT='if (!isEmpty(B_ACCT_TYPE) && B_ACCT_TYPE == "R3") {
    if (isEmpty(H_NOTLSU_BAL)) {
        return true
    }
    return false
}
return true', BEAN=NULL, CHECK_FLAG=NULL, CHECK_DESC=NULL, CHECK_ERR_TYPE=NULL, NEXT_ACTION=NULL, DATA_STATUS=NULL, DATA_FLAG=NULL, DATA_OP=NULL, DATA_SOURCE=NULL, DATA_VERSION=NULL, DATA_REJ_DESC=NULL, DATA_DEL_DESC=NULL, DATA_CRT_USER=NULL, DATA_CRT_DATE=NULL, DATA_CRT_TIME=NULL, DATA_CHG_USER=NULL, DATA_CHG_DATE=NULL, DATA_CHG_TIME=NULL, DATA_APV_USER=NULL, DATA_APV_DATE=NULL, DATA_APV_TIME=NULL, RSV1='2b534e7d1c1f436c90bbd3da1ea19aa1', RSV2=NULL, RSV3=NULL, RSV4='mbtrule', RSV5='1' WHERE DATA_ID='MBT_210S210010253S210010105S210010204';
UPDATE GP_QC_RULE SET DATA_DATE='20190620', CORP_ID='TESTCORP', ORG_ID='72', GROUP_ID='002', INQ_ORG_ID=NULL, INQ_GROUP_ID=NULL, RULE_DESC='若账户类型为“C1”时，非月度表现信息段中的“五级分类认定日期”字段不适用于此类账户。', RULE_MESSAGE='若账户类型为“C1”时，非月度表现信息段中的“五级分类认定日期”字段不适用于此类账户。', RULE_TYPE=NULL, RULE_SOURCE='BUSI', FIELD='DATA_ID', FIELD_NAME=NULL, TRIMMABLE=NULL, NULLABLE='Y', TYPE_ID=NULL, ENCODING=NULL, MIN_LENGTH=NULL, MAX_LENGTH=NULL, MIN_VALUE=NULL, MAX_VALUE=NULL, MAX_PRECISION=NULL, MIN_SCALE=NULL, MAX_SCALE=NULL, ENUMERATION=NULL, PATTERN=NULL, IN_ENTITY=NULL, IN_FIELD=NULL, "SQL"=NULL, SQL_EXTRA_KEY=NULL, SCRIPT='if (!isEmpty(B_ACCT_TYPE) && B_ACCT_TYPE == "C1") {
    if (isEmpty(J_FIVE_CATE_ADJ_DATE)) {
        return true
    }
    return false
}
return true', BEAN=NULL, CHECK_FLAG=NULL, CHECK_DESC=NULL, CHECK_ERR_TYPE=NULL, NEXT_ACTION=NULL, DATA_STATUS=NULL, DATA_FLAG=NULL, DATA_OP=NULL, DATA_SOURCE=NULL, DATA_VERSION=NULL, DATA_REJ_DESC=NULL, DATA_DEL_DESC=NULL, DATA_CRT_USER=NULL, DATA_CRT_DATE=NULL, DATA_CRT_TIME=NULL, DATA_CHG_USER=NULL, DATA_CHG_DATE=NULL, DATA_CHG_TIME=NULL, DATA_APV_USER=NULL, DATA_APV_DATE=NULL, DATA_APV_TIME=NULL, RSV1='dfb0f13d1d8a489c8ed4222e3c538c0c', RSV2=NULL, RSV3=NULL, RSV4='mbtrule', RSV5='1' WHERE DATA_ID='MBT_210S210010334S210010111S210010256';
UPDATE GP_QC_RULE SET DATA_DATE='20190624', CORP_ID='TESTCORP', ORG_ID='72', GROUP_ID='002', INQ_ORG_ID=NULL, INQ_GROUP_ID=NULL, RULE_DESC='当“账户类型”为“D2”，“信用额度”为空', RULE_MESSAGE='当“账户类型”为“D2”，“信用额度”为空', RULE_TYPE=NULL, RULE_SOURCE='BUSI', FIELD='DATA_ID', FIELD_NAME=NULL, TRIMMABLE=NULL, NULLABLE='Y', TYPE_ID=NULL, ENCODING=NULL, MIN_LENGTH=NULL, MAX_LENGTH=NULL, MIN_VALUE=NULL, MAX_VALUE=NULL, MAX_PRECISION=NULL, MIN_SCALE=NULL, MAX_SCALE=NULL, ENUMERATION=NULL, PATTERN=NULL, IN_ENTITY=NULL, IN_FIELD=NULL, "SQL"=NULL, SQL_EXTRA_KEY=NULL, SCRIPT='if (!isEmpty(B_ACCT_TYPE) && B_ACCT_TYPE == "D2") {
    if (isEmpty(C_ACCT_CRED_LINE_AMT)) {
        return true
    }
    return false
}
return true', BEAN=NULL, CHECK_FLAG=NULL, CHECK_DESC=NULL, CHECK_ERR_TYPE=NULL, NEXT_ACTION=NULL, DATA_STATUS=NULL, DATA_FLAG=NULL, DATA_OP=NULL, DATA_SOURCE=NULL, DATA_VERSION=NULL, DATA_REJ_DESC=NULL, DATA_DEL_DESC=NULL, DATA_CRT_USER=NULL, DATA_CRT_DATE=NULL, DATA_CRT_TIME=NULL, DATA_CHG_USER=NULL, DATA_CHG_DATE=NULL, DATA_CHG_TIME=NULL, DATA_APV_USER=NULL, DATA_APV_DATE=NULL, DATA_APV_TIME=NULL, RSV1='0aeba79d10a643a8bfdf6a6f78c3cd42', RSV2=NULL, RSV3=NULL, RSV4='mbtrule', RSV5='1' WHERE DATA_ID='MBT_410S4100101S410010103S410010102';
UPDATE GP_QC_RULE SET DATA_DATE='20190624', CORP_ID='TESTCORP', ORG_ID='72', GROUP_ID='002', INQ_ORG_ID=NULL, INQ_GROUP_ID=NULL, RULE_DESC='当“账户类型”为“D1”，“借款金额”不能为空', RULE_MESSAGE='当“账户类型”为“D1”，“借款金额”不能为空', RULE_TYPE=NULL, RULE_SOURCE='BUSI', FIELD='DATA_ID', FIELD_NAME=NULL, TRIMMABLE=NULL, NULLABLE='Y', TYPE_ID=NULL, ENCODING=NULL, MIN_LENGTH=NULL, MAX_LENGTH=NULL, MIN_VALUE=NULL, MAX_VALUE=NULL, MAX_PRECISION=NULL, MIN_SCALE=NULL, MAX_SCALE=NULL, ENUMERATION=NULL, PATTERN=NULL, IN_ENTITY=NULL, IN_FIELD=NULL, "SQL"=NULL, SQL_EXTRA_KEY=NULL, SCRIPT='if (!isEmpty(B_ACCT_TYPE) && B_ACCT_TYPE == "D1") {
    if (!isEmpty(C_LOAN_AMT)) {
        return true
    }
    return false
}
return true', BEAN=NULL, CHECK_FLAG=NULL, CHECK_DESC=NULL, CHECK_ERR_TYPE=NULL, NEXT_ACTION=NULL, DATA_STATUS=NULL, DATA_FLAG=NULL, DATA_OP=NULL, DATA_SOURCE=NULL, DATA_VERSION=NULL, DATA_REJ_DESC=NULL, DATA_DEL_DESC=NULL, DATA_CRT_USER=NULL, DATA_CRT_DATE=NULL, DATA_CRT_TIME=NULL, DATA_CHG_USER=NULL, DATA_CHG_DATE=NULL, DATA_CHG_TIME=NULL, DATA_APV_USER=NULL, DATA_APV_DATE=NULL, DATA_APV_TIME=NULL, RSV1='df0a898226b74d31ab3234ec595879a4', RSV2=NULL, RSV3=NULL, RSV4='mbtrule', RSV5='1' WHERE DATA_ID='MBT_410S4100103S410010301S410010302';
UPDATE GP_QC_RULE SET DATA_DATE='20190624', CORP_ID='TESTCORP', ORG_ID='72', GROUP_ID='002', INQ_ORG_ID=NULL, INQ_GROUP_ID=NULL, RULE_DESC='当“账户类型”为“R4”，“业务经营类型”不能为空', RULE_MESSAGE='当“账户类型”为“R4”，“业务经营类型”不能为空', RULE_TYPE=NULL, RULE_SOURCE='BUSI', FIELD='DATA_ID', FIELD_NAME=NULL, TRIMMABLE=NULL, NULLABLE='Y', TYPE_ID=NULL, ENCODING=NULL, MIN_LENGTH=NULL, MAX_LENGTH=NULL, MIN_VALUE=NULL, MAX_VALUE=NULL, MAX_PRECISION=NULL, MIN_SCALE=NULL, MAX_SCALE=NULL, ENUMERATION=NULL, PATTERN=NULL, IN_ENTITY=NULL, IN_FIELD=NULL, "SQL"=NULL, SQL_EXTRA_KEY=NULL, SCRIPT='if (!isEmpty(B_ACCT_TYPE) && B_ACCT_TYPE == "R4") {
    if (!isEmpty(C_FUND_SOU)) {
        return true
    }
    return false
}
return true', BEAN=NULL, CHECK_FLAG=NULL, CHECK_DESC=NULL, CHECK_ERR_TYPE=NULL, NEXT_ACTION=NULL, DATA_STATUS=NULL, DATA_FLAG=NULL, DATA_OP=NULL, DATA_SOURCE=NULL, DATA_VERSION=NULL, DATA_REJ_DESC=NULL, DATA_DEL_DESC=NULL, DATA_CRT_USER=NULL, DATA_CRT_DATE=NULL, DATA_CRT_TIME=NULL, DATA_CHG_USER=NULL, DATA_CHG_DATE=NULL, DATA_CHG_TIME=NULL, DATA_APV_USER=NULL, DATA_APV_DATE=NULL, DATA_APV_TIME=NULL, RSV1='b02280e368724aa58e5d67fe74880c33', RSV2=NULL, RSV3=NULL, RSV4='mbtrule', RSV5='1' WHERE DATA_ID='MBT_410S4100125S410012505S410012502';
UPDATE GP_QC_RULE SET DATA_DATE='20190624', CORP_ID='TESTCORP', ORG_ID='72', GROUP_ID='002', INQ_ORG_ID=NULL, INQ_GROUP_ID=NULL, RULE_DESC='当“账户类型”为“R4”，“资产转让标志”不能为空', RULE_MESSAGE='当“账户类型”为“R4”，“资产转让标志”不能为空', RULE_TYPE=NULL, RULE_SOURCE='BUSI', FIELD='DATA_ID', FIELD_NAME=NULL, TRIMMABLE=NULL, NULLABLE='Y', TYPE_ID=NULL, ENCODING=NULL, MIN_LENGTH=NULL, MAX_LENGTH=NULL, MIN_VALUE=NULL, MAX_VALUE=NULL, MAX_PRECISION=NULL, MIN_SCALE=NULL, MAX_SCALE=NULL, ENUMERATION=NULL, PATTERN=NULL, IN_ENTITY=NULL, IN_FIELD=NULL, "SQL"=NULL, SQL_EXTRA_KEY=NULL, SCRIPT='if (!isEmpty(B_ACCT_TYPE) && B_ACCT_TYPE == "R4") {
    if (!isEmpty(C_ASSET_TRAND_FLAG)) {
        return true
    }
    return false
}
return true', BEAN=NULL, CHECK_FLAG=NULL, CHECK_DESC=NULL, CHECK_ERR_TYPE=NULL, NEXT_ACTION=NULL, DATA_STATUS=NULL, DATA_FLAG=NULL, DATA_OP=NULL, DATA_SOURCE=NULL, DATA_VERSION=NULL, DATA_REJ_DESC=NULL, DATA_DEL_DESC=NULL, DATA_CRT_USER=NULL, DATA_CRT_DATE=NULL, DATA_CRT_TIME=NULL, DATA_CHG_USER=NULL, DATA_CHG_DATE=NULL, DATA_CHG_TIME=NULL, DATA_APV_USER=NULL, DATA_APV_DATE=NULL, DATA_APV_TIME=NULL, RSV1='efa5a1b3187245de80aa4c66b7fa1770', RSV2=NULL, RSV3=NULL, RSV4='mbtrule', RSV5='1' WHERE DATA_ID='MBT_410S4100127S410012703S410012702';
UPDATE GP_QC_RULE SET DATA_DATE='20190624', CORP_ID='TESTCORP', ORG_ID='72', GROUP_ID='002', INQ_ORG_ID=NULL, INQ_GROUP_ID=NULL, RULE_DESC='当“账户类型”为“R1”，“借款金额”为空', RULE_MESSAGE='当“账户类型”为“R1”，“借款金额”为空', RULE_TYPE=NULL, RULE_SOURCE='BUSI', FIELD='DATA_ID', FIELD_NAME=NULL, TRIMMABLE=NULL, NULLABLE='Y', TYPE_ID=NULL, ENCODING=NULL, MIN_LENGTH=NULL, MAX_LENGTH=NULL, MIN_VALUE=NULL, MAX_VALUE=NULL, MAX_PRECISION=NULL, MIN_SCALE=NULL, MAX_SCALE=NULL, ENUMERATION=NULL, PATTERN=NULL, IN_ENTITY=NULL, IN_FIELD=NULL, "SQL"=NULL, SQL_EXTRA_KEY=NULL, SCRIPT='if (!isEmpty(B_ACCT_TYPE) && B_ACCT_TYPE == "R1") {
    if (isEmpty(C_LOAN_AMT)) {
        return true
    }
    return false
}
return true', BEAN=NULL, CHECK_FLAG=NULL, CHECK_DESC=NULL, CHECK_ERR_TYPE=NULL, NEXT_ACTION=NULL, DATA_STATUS=NULL, DATA_FLAG=NULL, DATA_OP=NULL, DATA_SOURCE=NULL, DATA_VERSION=NULL, DATA_REJ_DESC=NULL, DATA_DEL_DESC=NULL, DATA_CRT_USER=NULL, DATA_CRT_DATE=NULL, DATA_CRT_TIME=NULL, DATA_CHG_USER=NULL, DATA_CHG_DATE=NULL, DATA_CHG_TIME=NULL, DATA_APV_USER=NULL, DATA_APV_DATE=NULL, DATA_APV_TIME=NULL, RSV1='fa92b46d7ed646a88ed68fa867bdf768', RSV2=NULL, RSV3=NULL, RSV4='mbtrule', RSV5='1' WHERE DATA_ID='MBT_410S4100104S410010401S410010402';
UPDATE GP_QC_RULE SET DATA_DATE='20190624', CORP_ID='TESTCORP', ORG_ID='72', GROUP_ID='002', INQ_ORG_ID=NULL, INQ_GROUP_ID=NULL, RULE_DESC='当“账户类型”为“D2”，“贷款实际投向”为空', RULE_MESSAGE='当“账户类型”为“D2”，“贷款实际投向”为空', RULE_TYPE=NULL, RULE_SOURCE='BUSI', FIELD='DATA_ID', FIELD_NAME=NULL, TRIMMABLE=NULL, NULLABLE='Y', TYPE_ID=NULL, ENCODING=NULL, MIN_LENGTH=NULL, MAX_LENGTH=NULL, MIN_VALUE=NULL, MAX_VALUE=NULL, MAX_PRECISION=NULL, MIN_SCALE=NULL, MAX_SCALE=NULL, ENUMERATION=NULL, PATTERN=NULL, IN_ENTITY=NULL, IN_FIELD=NULL, "SQL"=NULL, SQL_EXTRA_KEY=NULL, SCRIPT='if (!isEmpty(B_ACCT_TYPE) && B_ACCT_TYPE == "D2") {
    if (isEmpty(C_ACT_INVEST)) {
        return true
    }
    return false
}
return true', BEAN=NULL, CHECK_FLAG=NULL, CHECK_DESC=NULL, CHECK_ERR_TYPE=NULL, NEXT_ACTION=NULL, DATA_STATUS=NULL, DATA_FLAG=NULL, DATA_OP=NULL, DATA_SOURCE=NULL, DATA_VERSION=NULL, DATA_REJ_DESC=NULL, DATA_DEL_DESC=NULL, DATA_CRT_USER=NULL, DATA_CRT_DATE=NULL, DATA_CRT_TIME=NULL, DATA_CHG_USER=NULL, DATA_CHG_DATE=NULL, DATA_CHG_TIME=NULL, DATA_APV_USER=NULL, DATA_APV_DATE=NULL, DATA_APV_TIME=NULL, RSV1='e8fe68d28f5f46b29f4d9e2614b1c14c', RSV2=NULL, RSV3=NULL, RSV4='mbtrule', RSV5='1' WHERE DATA_ID='MBT_410S4100124S410012401S410012402';
UPDATE GP_QC_RULE SET DATA_DATE='20190624', CORP_ID='TESTCORP', ORG_ID='72', GROUP_ID='002', INQ_ORG_ID=NULL, INQ_GROUP_ID=NULL, RULE_DESC='当“账户类型”为“R4”，“分次放款标志”为空', RULE_MESSAGE='当“账户类型”为“R4”，“分次放款标志”为空', RULE_TYPE=NULL, RULE_SOURCE='BUSI', FIELD='DATA_ID', FIELD_NAME=NULL, TRIMMABLE=NULL, NULLABLE='Y', TYPE_ID=NULL, ENCODING=NULL, MIN_LENGTH=NULL, MAX_LENGTH=NULL, MIN_VALUE=NULL, MAX_VALUE=NULL, MAX_PRECISION=NULL, MIN_SCALE=NULL, MAX_SCALE=NULL, ENUMERATION=NULL, PATTERN=NULL, IN_ENTITY=NULL, IN_FIELD=NULL, "SQL"=NULL, SQL_EXTRA_KEY=NULL, SCRIPT='if (!isEmpty(B_ACCT_TYPE) && B_ACCT_TYPE == "R4") {
    if (isEmpty(C_FLAG)) {
        return true
    }
    return false
}
return true', BEAN=NULL, CHECK_FLAG=NULL, CHECK_DESC=NULL, CHECK_ERR_TYPE=NULL, NEXT_ACTION=NULL, DATA_STATUS=NULL, DATA_FLAG=NULL, DATA_OP=NULL, DATA_SOURCE=NULL, DATA_VERSION=NULL, DATA_REJ_DESC=NULL, DATA_DEL_DESC=NULL, DATA_CRT_USER=NULL, DATA_CRT_DATE=NULL, DATA_CRT_TIME=NULL, DATA_CHG_USER=NULL, DATA_CHG_DATE=NULL, DATA_CHG_TIME=NULL, DATA_APV_USER=NULL, DATA_APV_DATE=NULL, DATA_APV_TIME=NULL, RSV1='cb1600bb4b9140b9bbc105b2c8a147a8', RSV2=NULL, RSV3=NULL, RSV4='mbtrule', RSV5='1' WHERE DATA_ID='MBT_410S4100105S410010505S410010502';
UPDATE GP_QC_RULE SET DATA_DATE='20190624', CORP_ID='TESTCORP', ORG_ID='72', GROUP_ID='002', INQ_ORG_ID=NULL, INQ_GROUP_ID=NULL, RULE_DESC='当“账户类型”为“D2”，“到期日期”不能为空', RULE_MESSAGE='当“账户类型”为“D2”，“到期日期”不能为空', RULE_TYPE=NULL, RULE_SOURCE='BUSI', FIELD='DATA_ID', FIELD_NAME=NULL, TRIMMABLE=NULL, NULLABLE='Y', TYPE_ID=NULL, ENCODING=NULL, MIN_LENGTH=NULL, MAX_LENGTH=NULL, MIN_VALUE=NULL, MAX_VALUE=NULL, MAX_PRECISION=NULL, MIN_SCALE=NULL, MAX_SCALE=NULL, ENUMERATION=NULL, PATTERN=NULL, IN_ENTITY=NULL, IN_FIELD=NULL, "SQL"=NULL, SQL_EXTRA_KEY=NULL, SCRIPT='if (!isEmpty(B_ACCT_TYPE) && B_ACCT_TYPE == "D2") {
    if (!isEmpty(C_DUE_DATE)) {
        return true
    }
    return false
}
return true', BEAN=NULL, CHECK_FLAG=NULL, CHECK_DESC=NULL, CHECK_ERR_TYPE=NULL, NEXT_ACTION=NULL, DATA_STATUS=NULL, DATA_FLAG=NULL, DATA_OP=NULL, DATA_SOURCE=NULL, DATA_VERSION=NULL, DATA_REJ_DESC=NULL, DATA_DEL_DESC=NULL, DATA_CRT_USER=NULL, DATA_CRT_DATE=NULL, DATA_CRT_TIME=NULL, DATA_CHG_USER=NULL, DATA_CHG_DATE=NULL, DATA_CHG_TIME=NULL, DATA_APV_USER=NULL, DATA_APV_DATE=NULL, DATA_APV_TIME=NULL, RSV1='256f1515923e407ca40c656c1e696d1d', RSV2=NULL, RSV3=NULL, RSV4='mbtrule', RSV5='1' WHERE DATA_ID='MBT_410S4100107S410010703S410010702';
UPDATE GP_QC_RULE SET DATA_DATE='20190624', CORP_ID='TESTCORP', ORG_ID='72', GROUP_ID='002', INQ_ORG_ID=NULL, INQ_GROUP_ID=NULL, RULE_DESC='当“账户类型”为“R1”，“还款方式”不能为空', RULE_MESSAGE='当“账户类型”为“R1”，“还款方式”不能为空', RULE_TYPE=NULL, RULE_SOURCE='BUSI', FIELD='DATA_ID', FIELD_NAME=NULL, TRIMMABLE=NULL, NULLABLE='Y', TYPE_ID=NULL, ENCODING=NULL, MIN_LENGTH=NULL, MAX_LENGTH=NULL, MIN_VALUE=NULL, MAX_VALUE=NULL, MAX_PRECISION=NULL, MIN_SCALE=NULL, MAX_SCALE=NULL, ENUMERATION=NULL, PATTERN=NULL, IN_ENTITY=NULL, IN_FIELD=NULL, "SQL"=NULL, SQL_EXTRA_KEY=NULL, SCRIPT='if (!isEmpty(B_ACCT_TYPE) && B_ACCT_TYPE == "R1") {
    if (!isEmpty(C_REPAY_MODE)) {
        return true
    }
    return false
}
return true', BEAN=NULL, CHECK_FLAG=NULL, CHECK_DESC=NULL, CHECK_ERR_TYPE=NULL, NEXT_ACTION=NULL, DATA_STATUS=NULL, DATA_FLAG=NULL, DATA_OP=NULL, DATA_SOURCE=NULL, DATA_VERSION=NULL, DATA_REJ_DESC=NULL, DATA_DEL_DESC=NULL, DATA_CRT_USER=NULL, DATA_CRT_DATE=NULL, DATA_CRT_TIME=NULL, DATA_CHG_USER=NULL, DATA_CHG_DATE=NULL, DATA_CHG_TIME=NULL, DATA_APV_USER=NULL, DATA_APV_DATE=NULL, DATA_APV_TIME=NULL, RSV1='816c43a91c1f4a7a9f687d52d84a599c', RSV2=NULL, RSV3=NULL, RSV4='mbtrule', RSV5='1' WHERE DATA_ID='MBT_410S4100109S410010901S410010902';
UPDATE GP_QC_RULE SET DATA_DATE='20190624', CORP_ID='TESTCORP', ORG_ID='72', GROUP_ID='002', INQ_ORG_ID=NULL, INQ_GROUP_ID=NULL, RULE_DESC='当“账户类型”为“C1”，“还款方式”为空', RULE_MESSAGE='当“账户类型”为“C1”，“还款方式”为空', RULE_TYPE=NULL, RULE_SOURCE='BUSI', FIELD='DATA_ID', FIELD_NAME=NULL, TRIMMABLE=NULL, NULLABLE='Y', TYPE_ID=NULL, ENCODING=NULL, MIN_LENGTH=NULL, MAX_LENGTH=NULL, MIN_VALUE=NULL, MAX_VALUE=NULL, MAX_PRECISION=NULL, MIN_SCALE=NULL, MAX_SCALE=NULL, ENUMERATION=NULL, PATTERN=NULL, IN_ENTITY=NULL, IN_FIELD=NULL, "SQL"=NULL, SQL_EXTRA_KEY=NULL, SCRIPT='if (!isEmpty(B_ACCT_TYPE) && B_ACCT_TYPE == "C1") {
    if (isEmpty(C_REPAY_MODE)) {
        return true
    }
    return false
}
return true', BEAN=NULL, CHECK_FLAG=NULL, CHECK_DESC=NULL, CHECK_ERR_TYPE=NULL, NEXT_ACTION=NULL, DATA_STATUS=NULL, DATA_FLAG=NULL, DATA_OP=NULL, DATA_SOURCE=NULL, DATA_VERSION=NULL, DATA_REJ_DESC=NULL, DATA_DEL_DESC=NULL, DATA_CRT_USER=NULL, DATA_CRT_DATE=NULL, DATA_CRT_TIME=NULL, DATA_CHG_USER=NULL, DATA_CHG_DATE=NULL, DATA_CHG_TIME=NULL, DATA_APV_USER=NULL, DATA_APV_DATE=NULL, DATA_APV_TIME=NULL, RSV1='e33b8a5f9a8f48d2af0522dd978a0787', RSV2=NULL, RSV3=NULL, RSV4='mbtrule', RSV5='1' WHERE DATA_ID='MBT_410S4100110S410011003S410011002';
UPDATE GP_QC_RULE SET DATA_DATE='20190624', CORP_ID='TESTCORP', ORG_ID='72', GROUP_ID='002', INQ_ORG_ID=NULL, INQ_GROUP_ID=NULL, RULE_DESC='当“账户类型”为“D2”，“还款频率”为空', RULE_MESSAGE='当“账户类型”为“D2”，“还款频率”为空', RULE_TYPE=NULL, RULE_SOURCE='BUSI', FIELD='DATA_ID', FIELD_NAME=NULL, TRIMMABLE=NULL, NULLABLE='Y', TYPE_ID=NULL, ENCODING=NULL, MIN_LENGTH=NULL, MAX_LENGTH=NULL, MIN_VALUE=NULL, MAX_VALUE=NULL, MAX_PRECISION=NULL, MIN_SCALE=NULL, MAX_SCALE=NULL, ENUMERATION=NULL, PATTERN=NULL, IN_ENTITY=NULL, IN_FIELD=NULL, "SQL"=NULL, SQL_EXTRA_KEY=NULL, SCRIPT='if (!isEmpty(B_ACCT_TYPE) && B_ACCT_TYPE == "D2") {
    if (isEmpty(C_REPAY_FREQCY)) {
        return true
    }
    return false
}
return true', BEAN=NULL, CHECK_FLAG=NULL, CHECK_DESC=NULL, CHECK_ERR_TYPE=NULL, NEXT_ACTION=NULL, DATA_STATUS=NULL, DATA_FLAG=NULL, DATA_OP=NULL, DATA_SOURCE=NULL, DATA_VERSION=NULL, DATA_REJ_DESC=NULL, DATA_DEL_DESC=NULL, DATA_CRT_USER=NULL, DATA_CRT_DATE=NULL, DATA_CRT_TIME=NULL, DATA_CHG_USER=NULL, DATA_CHG_DATE=NULL, DATA_CHG_TIME=NULL, DATA_APV_USER=NULL, DATA_APV_DATE=NULL, DATA_APV_TIME=NULL, RSV1='c1adfd1bdebe4d8eaadb170f59ef7044', RSV2=NULL, RSV3=NULL, RSV4='mbtrule', RSV5='1' WHERE DATA_ID='MBT_410S4100112S410011201S410011202';
UPDATE GP_QC_RULE SET DATA_DATE='20190620', CORP_ID='TESTCORP', ORG_ID='72', GROUP_ID='002', INQ_ORG_ID=NULL, INQ_GROUP_ID=NULL, RULE_DESC='当账户信息记录中“账户类型”为“R3”时，“当前还款状态”为“*”时，“余额”必须为 0。', RULE_MESSAGE='当账户信息记录中“账户类型”为“R3”时，“当前还款状态”为“*”时，“余额”必须为 0。', RULE_TYPE=NULL, RULE_SOURCE='BUSI', FIELD='DATA_ID', FIELD_NAME=NULL, TRIMMABLE=NULL, NULLABLE='Y', TYPE_ID=NULL, ENCODING=NULL, MIN_LENGTH=NULL, MAX_LENGTH=NULL, MIN_VALUE=NULL, MAX_VALUE=NULL, MAX_PRECISION=NULL, MIN_SCALE=NULL, MAX_SCALE=NULL, ENUMERATION=NULL, PATTERN=NULL, IN_ENTITY=NULL, IN_FIELD=NULL, "SQL"=NULL, SQL_EXTRA_KEY=NULL, SCRIPT='if (!isEmpty(B_ACCT_TYPE) && B_ACCT_TYPE == "R3" && H_RPY_STATUS == "*") {
    if (H_ACCT_BAL == "0") {
        return true
    }
    return false
}
return true', BEAN=NULL, CHECK_FLAG=NULL, CHECK_DESC=NULL, CHECK_ERR_TYPE=NULL, NEXT_ACTION=NULL, DATA_STATUS=NULL, DATA_FLAG=NULL, DATA_OP=NULL, DATA_SOURCE=NULL, DATA_VERSION=NULL, DATA_REJ_DESC=NULL, DATA_DEL_DESC=NULL, DATA_CRT_USER=NULL, DATA_CRT_DATE=NULL, DATA_CRT_TIME=NULL, DATA_CHG_USER=NULL, DATA_CHG_DATE=NULL, DATA_CHG_TIME=NULL, DATA_APV_USER=NULL, DATA_APV_DATE=NULL, DATA_APV_TIME=NULL, RSV1='826965777a0c462886d50ceae191ffda', RSV2=NULL, RSV3=NULL, RSV4='mbtrule', RSV5='1' WHERE DATA_ID='MBT_210I2100A02I2100A0201I2100A0202';
UPDATE GP_QC_RULE SET DATA_DATE='20190620', CORP_ID='TESTCORP', ORG_ID='72', GROUP_ID='002', INQ_ORG_ID=NULL, INQ_GROUP_ID=NULL, RULE_DESC='当账户信息记录中“账户类型”为“R3”时，“当前还款状态”为数字“1-7”时，“余额”必须大于 0。', RULE_MESSAGE='当账户信息记录中“账户类型”为“R3”时，“当前还款状态”为数字“1-7”时，“余额”必须大于 0。', RULE_TYPE=NULL, RULE_SOURCE='BUSI', FIELD='DATA_ID', FIELD_NAME=NULL, TRIMMABLE=NULL, NULLABLE='Y', TYPE_ID=NULL, ENCODING=NULL, MIN_LENGTH=NULL, MAX_LENGTH=NULL, MIN_VALUE=NULL, MAX_VALUE=NULL, MAX_PRECISION=NULL, MIN_SCALE=NULL, MAX_SCALE=NULL, ENUMERATION=NULL, PATTERN=NULL, IN_ENTITY=NULL, IN_FIELD=NULL, "SQL"=NULL, SQL_EXTRA_KEY=NULL, SCRIPT='if (!isEmpty(B_ACCT_TYPE) && B_ACCT_TYPE == "R3" && (H_RPY_STATUS == "1" || H_RPY_STATUS == "2" || H_RPY_STATUS == "3" || H_RPY_STATUS == "4" || H_RPY_STATUS == "5" || H_RPY_STATUS == "6" || H_RPY_STATUS == "7")) {
    if (H_ACCT_BAL.toBigDecimal() > 0) {
        return true
    }
    return false
}
return true', BEAN=NULL, CHECK_FLAG=NULL, CHECK_DESC=NULL, CHECK_ERR_TYPE=NULL, NEXT_ACTION=NULL, DATA_STATUS=NULL, DATA_FLAG=NULL, DATA_OP=NULL, DATA_SOURCE=NULL, DATA_VERSION=NULL, DATA_REJ_DESC=NULL, DATA_DEL_DESC=NULL, DATA_CRT_USER=NULL, DATA_CRT_DATE=NULL, DATA_CRT_TIME=NULL, DATA_CHG_USER=NULL, DATA_CHG_DATE=NULL, DATA_CHG_TIME=NULL, DATA_APV_USER=NULL, DATA_APV_DATE=NULL, DATA_APV_TIME=NULL, RSV1='26800417f032442b868d15b4a50f0774', RSV2=NULL, RSV3=NULL, RSV4='mbtrule', RSV5='1' WHERE DATA_ID='MBT_210I2100A04I2100A0401I2100A0402';
UPDATE GP_QC_RULE SET DATA_DATE='20190620', CORP_ID='TESTCORP', ORG_ID='72', GROUP_ID='002', INQ_ORG_ID=NULL, INQ_GROUP_ID=NULL, RULE_DESC='当“账户类型”为“R2/R3”时，“借贷业务大类”只能为“2-信用卡”。', RULE_MESSAGE='当“账户类型”为“R2/R3”时，“借贷业务大类”只能为“2-信用卡”。', RULE_TYPE=NULL, RULE_SOURCE='BUSI', FIELD='DATA_ID', FIELD_NAME=NULL, TRIMMABLE=NULL, NULLABLE='Y', TYPE_ID=NULL, ENCODING=NULL, MIN_LENGTH=NULL, MAX_LENGTH=NULL, MIN_VALUE=NULL, MAX_VALUE=NULL, MAX_PRECISION=NULL, MIN_SCALE=NULL, MAX_SCALE=NULL, ENUMERATION=NULL, PATTERN=NULL, IN_ENTITY=NULL, IN_FIELD=NULL, "SQL"=NULL, SQL_EXTRA_KEY=NULL, SCRIPT='if (!isEmpty(B_ACCT_TYPE) && B_ACCT_TYPE == "R2" || B_ACCT_TYPE == "R3") {
    if (C_BUSI_LINES == "2") {
        return true
    }
    return false
}
return true', BEAN=NULL, CHECK_FLAG=NULL, CHECK_DESC=NULL, CHECK_ERR_TYPE=NULL, NEXT_ACTION=NULL, DATA_STATUS=NULL, DATA_FLAG=NULL, DATA_OP=NULL, DATA_SOURCE=NULL, DATA_VERSION=NULL, DATA_REJ_DESC=NULL, DATA_DEL_DESC=NULL, DATA_CRT_USER=NULL, DATA_CRT_DATE=NULL, DATA_CRT_TIME=NULL, DATA_CHG_USER=NULL, DATA_CHG_DATE=NULL, DATA_CHG_TIME=NULL, DATA_APV_USER=NULL, DATA_APV_DATE=NULL, DATA_APV_TIME=NULL, RSV1='caac582eb3514ec9a6577ba3c266be0e', RSV2=NULL, RSV3=NULL, RSV4='mbtrule', RSV5='1' WHERE DATA_ID='MBT_210I2100A07I2100A0703I2100A0704';
UPDATE GP_QC_RULE SET DATA_DATE='20190624', CORP_ID='TESTCORP', ORG_ID='72', GROUP_ID='002', INQ_ORG_ID=NULL, INQ_GROUP_ID=NULL, RULE_DESC='当“账户类型”为“C1”，“下一次约定还款日期”为空', RULE_MESSAGE='当“账户类型”为“C1”，“下一次约定还款日期”为空', RULE_TYPE=NULL, RULE_SOURCE='BUSI', FIELD='DATA_ID', FIELD_NAME=NULL, TRIMMABLE=NULL, NULLABLE='Y', TYPE_ID=NULL, ENCODING=NULL, MIN_LENGTH=NULL, MAX_LENGTH=NULL, MIN_VALUE=NULL, MAX_VALUE=NULL, MAX_PRECISION=NULL, MIN_SCALE=NULL, MAX_SCALE=NULL, ENUMERATION=NULL, PATTERN=NULL, IN_ENTITY=NULL, IN_FIELD=NULL, "SQL"=NULL, SQL_EXTRA_KEY=NULL, SCRIPT='if (!isEmpty(B_ACCT_TYPE) && B_ACCT_TYPE == "C1") {
    if (isEmpty(H_NXT_AGRR_RPY_DATE)) {
        return true
    }
    return false
}
return true', BEAN=NULL, CHECK_FLAG=NULL, CHECK_DESC=NULL, CHECK_ERR_TYPE=NULL, NEXT_ACTION=NULL, DATA_STATUS=NULL, DATA_FLAG=NULL, DATA_OP=NULL, DATA_SOURCE=NULL, DATA_VERSION=NULL, DATA_REJ_DESC=NULL, DATA_DEL_DESC=NULL, DATA_CRT_USER=NULL, DATA_CRT_DATE=NULL, DATA_CRT_TIME=NULL, DATA_CHG_USER=NULL, DATA_CHG_DATE=NULL, DATA_CHG_TIME=NULL, DATA_APV_USER=NULL, DATA_APV_DATE=NULL, DATA_APV_TIME=NULL, RSV1='444041fba1134d38a0c0c192e5652010', RSV2=NULL, RSV3=NULL, RSV4='mbtrule', RSV5='1' WHERE DATA_ID='MBT_410S4100148S410014801S410014802';
UPDATE GP_QC_RULE SET DATA_DATE='20190620', CORP_ID='TESTCORP', ORG_ID='72', GROUP_ID='002', INQ_ORG_ID=NULL, INQ_GROUP_ID=NULL, RULE_DESC='若账户类型为“R4”时，基本信息段中的“卡片标识号”字段不适用于此类账户。', RULE_MESSAGE='若账户类型为“R4”时，基本信息段中的“卡片标识号”字段不适用于此类账户。', RULE_TYPE=NULL, RULE_SOURCE='BUSI', FIELD='DATA_ID', FIELD_NAME=NULL, TRIMMABLE=NULL, NULLABLE='Y', TYPE_ID=NULL, ENCODING=NULL, MIN_LENGTH=NULL, MAX_LENGTH=NULL, MIN_VALUE=NULL, MAX_VALUE=NULL, MAX_PRECISION=NULL, MIN_SCALE=NULL, MAX_SCALE=NULL, ENUMERATION=NULL, PATTERN=NULL, IN_ENTITY=NULL, IN_FIELD=NULL, "SQL"=NULL, SQL_EXTRA_KEY=NULL, SCRIPT='if (!isEmpty(B_ACCT_TYPE) && B_ACCT_TYPE == "R4") {
    if (isEmpty(C_CREDIT_ID)) {
        return true
    }
    return false
}
return true', BEAN=NULL, CHECK_FLAG=NULL, CHECK_DESC=NULL, CHECK_ERR_TYPE=NULL, NEXT_ACTION=NULL, DATA_STATUS=NULL, DATA_FLAG=NULL, DATA_OP=NULL, DATA_SOURCE=NULL, DATA_VERSION=NULL, DATA_REJ_DESC=NULL, DATA_DEL_DESC=NULL, DATA_CRT_USER=NULL, DATA_CRT_DATE=NULL, DATA_CRT_TIME=NULL, DATA_CHG_USER=NULL, DATA_CHG_DATE=NULL, DATA_CHG_TIME=NULL, DATA_APV_USER=NULL, DATA_APV_DATE=NULL, DATA_APV_TIME=NULL, RSV1='fefeb98b9fca4c358429f4a6d18a5883', RSV2=NULL, RSV3=NULL, RSV4='mbtrule', RSV5='1' WHERE DATA_ID='MBT_210S210010182S210010107S210010156';
UPDATE GP_QC_RULE SET DATA_DATE='20190620', CORP_ID='TESTCORP', ORG_ID='72', GROUP_ID='002', INQ_ORG_ID=NULL, INQ_GROUP_ID=NULL, RULE_DESC='若账户类型为“R4”时，基本信息段中的“信用额度”字段不适用于此类账户。', RULE_MESSAGE='若账户类型为“R4”时，基本信息段中的“信用额度”字段不适用于此类账户。', RULE_TYPE=NULL, RULE_SOURCE='BUSI', FIELD='DATA_ID', FIELD_NAME=NULL, TRIMMABLE=NULL, NULLABLE='Y', TYPE_ID=NULL, ENCODING=NULL, MIN_LENGTH=NULL, MAX_LENGTH=NULL, MIN_VALUE=NULL, MAX_VALUE=NULL, MAX_PRECISION=NULL, MIN_SCALE=NULL, MAX_SCALE=NULL, ENUMERATION=NULL, PATTERN=NULL, IN_ENTITY=NULL, IN_FIELD=NULL, "SQL"=NULL, SQL_EXTRA_KEY=NULL, SCRIPT='if (!isEmpty(B_ACCT_TYPE) && B_ACCT_TYPE == "R4") {
    if (isEmpty(C_ACCT_CRED_LINE_AMT)) {
        return true
    }
    return false
}
return true', BEAN=NULL, CHECK_FLAG=NULL, CHECK_DESC=NULL, CHECK_ERR_TYPE=NULL, NEXT_ACTION=NULL, DATA_STATUS=NULL, DATA_FLAG=NULL, DATA_OP=NULL, DATA_SOURCE=NULL, DATA_VERSION=NULL, DATA_REJ_DESC=NULL, DATA_DEL_DESC=NULL, DATA_CRT_USER=NULL, DATA_CRT_DATE=NULL, DATA_CRT_TIME=NULL, DATA_CHG_USER=NULL, DATA_CHG_DATE=NULL, DATA_CHG_TIME=NULL, DATA_APV_USER=NULL, DATA_APV_DATE=NULL, DATA_APV_TIME=NULL, RSV1='5bd2c89245b64bea9f7dc903a7b7383f', RSV2=NULL, RSV3=NULL, RSV4='mbtrule', RSV5='1' WHERE DATA_ID='MBT_210S210010104S210010107S210010104';
UPDATE GP_QC_RULE SET DATA_DATE='20190620', CORP_ID='TESTCORP', ORG_ID='72', GROUP_ID='002', INQ_ORG_ID=NULL, INQ_GROUP_ID=NULL, RULE_DESC='只有账户类型为“D1”、“R1”时，还款方式可以为“90-汇总报送，不区分还款方式”。', RULE_MESSAGE='只有账户类型为“D1”、“R1”时，还款方式可以为“90-汇总报送，不区分还款方式”。', RULE_TYPE=NULL, RULE_SOURCE='BUSI', FIELD='DATA_ID', FIELD_NAME=NULL, TRIMMABLE=NULL, NULLABLE='Y', TYPE_ID=NULL, ENCODING=NULL, MIN_LENGTH=NULL, MAX_LENGTH=NULL, MIN_VALUE=NULL, MAX_VALUE=NULL, MAX_PRECISION=NULL, MIN_SCALE=NULL, MAX_SCALE=NULL, ENUMERATION=NULL, PATTERN=NULL, IN_ENTITY=NULL, IN_FIELD=NULL, "SQL"=NULL, SQL_EXTRA_KEY=NULL, SCRIPT='if (!isEmpty(B_ACCT_TYPE) && B_ACCT_TYPE != "D1" && B_ACCT_TYPE != "R1") {
    if (C_REPAY_MODE != "90") {
        return true
    }
    return false
}
return true', BEAN=NULL, CHECK_FLAG=NULL, CHECK_DESC=NULL, CHECK_ERR_TYPE=NULL, NEXT_ACTION=NULL, DATA_STATUS=NULL, DATA_FLAG=NULL, DATA_OP=NULL, DATA_SOURCE=NULL, DATA_VERSION=NULL, DATA_REJ_DESC=NULL, DATA_DEL_DESC=NULL, DATA_CRT_USER=NULL, DATA_CRT_DATE=NULL, DATA_CRT_TIME=NULL, DATA_CHG_USER=NULL, DATA_CHG_DATE=NULL, DATA_CHG_TIME=NULL, DATA_APV_USER=NULL, DATA_APV_DATE=NULL, DATA_APV_TIME=NULL, RSV1='3bfcc139e36c42029467cdbea217706f', RSV2=NULL, RSV3=NULL, RSV4='mbtrule', RSV5='1' WHERE DATA_ID='MBT_210I2100A05I2100A0501I2100A0502';
UPDATE GP_QC_RULE SET DATA_DATE='20190620', CORP_ID='TESTCORP', ORG_ID='72', GROUP_ID='002', INQ_ORG_ID=NULL, INQ_GROUP_ID=NULL, RULE_DESC='若账户类型为“R1”时，基本信息段中的“借款金额”字段不适用于此类账户。', RULE_MESSAGE='若账户类型为“R1”时，基本信息段中的“借款金额”字段不适用于此类账户。', RULE_TYPE=NULL, RULE_SOURCE='BUSI', FIELD='DATA_ID', FIELD_NAME=NULL, TRIMMABLE=NULL, NULLABLE='Y', TYPE_ID=NULL, ENCODING=NULL, MIN_LENGTH=NULL, MAX_LENGTH=NULL, MIN_VALUE=NULL, MAX_VALUE=NULL, MAX_PRECISION=NULL, MIN_SCALE=NULL, MAX_SCALE=NULL, ENUMERATION=NULL, PATTERN=NULL, IN_ENTITY=NULL, IN_FIELD=NULL, "SQL"=NULL, SQL_EXTRA_KEY=NULL, SCRIPT='if (!isEmpty(B_ACCT_TYPE) && B_ACCT_TYPE == "R1") {
    if (isEmpty(C_LOAN_AMT)) {
        return true
    }
    return false
}
return true', BEAN=NULL, CHECK_FLAG=NULL, CHECK_DESC=NULL, CHECK_ERR_TYPE=NULL, NEXT_ACTION=NULL, DATA_STATUS=NULL, DATA_FLAG=NULL, DATA_OP=NULL, DATA_SOURCE=NULL, DATA_VERSION=NULL, DATA_REJ_DESC=NULL, DATA_DEL_DESC=NULL, DATA_CRT_USER=NULL, DATA_CRT_DATE=NULL, DATA_CRT_TIME=NULL, DATA_CHG_USER=NULL, DATA_CHG_DATE=NULL, DATA_CHG_TIME=NULL, DATA_APV_USER=NULL, DATA_APV_DATE=NULL, DATA_APV_TIME=NULL, RSV1='2ce7bd015b1544208e20f8d596da1151', RSV2=NULL, RSV3=NULL, RSV4='mbtrule', RSV5='1' WHERE DATA_ID='MBT_210S210010107S210010101S210010108';
UPDATE GP_QC_RULE SET DATA_DATE='20190620', CORP_ID='TESTCORP', ORG_ID='72', GROUP_ID='002', INQ_ORG_ID=NULL, INQ_GROUP_ID=NULL, RULE_DESC='若账户类型为“R2”时，基本信息段中的“借款金额”字段不适用于此类账户。', RULE_MESSAGE='若账户类型为“R2”时，基本信息段中的“借款金额”字段不适用于此类账户。', RULE_TYPE=NULL, RULE_SOURCE='BUSI', FIELD='DATA_ID', FIELD_NAME=NULL, TRIMMABLE=NULL, NULLABLE='Y', TYPE_ID=NULL, ENCODING=NULL, MIN_LENGTH=NULL, MAX_LENGTH=NULL, MIN_VALUE=NULL, MAX_VALUE=NULL, MAX_PRECISION=NULL, MIN_SCALE=NULL, MAX_SCALE=NULL, ENUMERATION=NULL, PATTERN=NULL, IN_ENTITY=NULL, IN_FIELD=NULL, "SQL"=NULL, SQL_EXTRA_KEY=NULL, SCRIPT='if (!isEmpty(B_ACCT_TYPE) && B_ACCT_TYPE == "R2") {
    if (isEmpty(C_LOAN_AMT)) {
        return true
    }
    return false
}
return true', BEAN=NULL, CHECK_FLAG=NULL, CHECK_DESC=NULL, CHECK_ERR_TYPE=NULL, NEXT_ACTION=NULL, DATA_STATUS=NULL, DATA_FLAG=NULL, DATA_OP=NULL, DATA_SOURCE=NULL, DATA_VERSION=NULL, DATA_REJ_DESC=NULL, DATA_DEL_DESC=NULL, DATA_CRT_USER=NULL, DATA_CRT_DATE=NULL, DATA_CRT_TIME=NULL, DATA_CHG_USER=NULL, DATA_CHG_DATE=NULL, DATA_CHG_TIME=NULL, DATA_APV_USER=NULL, DATA_APV_DATE=NULL, DATA_APV_TIME=NULL, RSV1='b3b6a6cd486445919651e26538fc3ec3', RSV2=NULL, RSV3=NULL, RSV4='mbtrule', RSV5='1' WHERE DATA_ID='MBT_210S210010108S210010103S210010108';
UPDATE GP_QC_RULE SET DATA_DATE='20190620', CORP_ID='TESTCORP', ORG_ID='72', GROUP_ID='002', INQ_ORG_ID=NULL, INQ_GROUP_ID=NULL, RULE_DESC='若账户类型为“R3”时，基本信息段中的“还款期数”字段不适用于此类账户。', RULE_MESSAGE='若账户类型为“R3”时，基本信息段中的“还款期数”字段不适用于此类账户。', RULE_TYPE=NULL, RULE_SOURCE='BUSI', FIELD='DATA_ID', FIELD_NAME=NULL, TRIMMABLE=NULL, NULLABLE='Y', TYPE_ID=NULL, ENCODING=NULL, MIN_LENGTH=NULL, MAX_LENGTH=NULL, MIN_VALUE=NULL, MAX_VALUE=NULL, MAX_PRECISION=NULL, MIN_SCALE=NULL, MAX_SCALE=NULL, ENUMERATION=NULL, PATTERN=NULL, IN_ENTITY=NULL, IN_FIELD=NULL, "SQL"=NULL, SQL_EXTRA_KEY=NULL, SCRIPT='if (!isEmpty(B_ACCT_TYPE) && B_ACCT_TYPE == "R3") {
    if (isEmpty(C_REPAY_PRD)) {
        return true
    }
    return false
}
return true', BEAN=NULL, CHECK_FLAG=NULL, CHECK_DESC=NULL, CHECK_ERR_TYPE=NULL, NEXT_ACTION=NULL, DATA_STATUS=NULL, DATA_FLAG=NULL, DATA_OP=NULL, DATA_SOURCE=NULL, DATA_VERSION=NULL, DATA_REJ_DESC=NULL, DATA_DEL_DESC=NULL, DATA_CRT_USER=NULL, DATA_CRT_DATE=NULL, DATA_CRT_TIME=NULL, DATA_CHG_USER=NULL, DATA_CHG_DATE=NULL, DATA_CHG_TIME=NULL, DATA_APV_USER=NULL, DATA_APV_DATE=NULL, DATA_APV_TIME=NULL, RSV1='417f2ec36ded40338b32d368813eb5a3', RSV2=NULL, RSV3=NULL, RSV4='mbtrule', RSV5='1' WHERE DATA_ID='MBT_210S210010139S210010105S210010128';
UPDATE GP_QC_RULE SET DATA_DATE='20190620', CORP_ID='TESTCORP', ORG_ID='72', GROUP_ID='002', INQ_ORG_ID=NULL, INQ_GROUP_ID=NULL, RULE_DESC='若账户类型为“R1”时，基本信息段中的“分次放款标志”字段不适用于此类账户。', RULE_MESSAGE='若账户类型为“R1”时，基本信息段中的“分次放款标志”字段不适用于此类账户。', RULE_TYPE=NULL, RULE_SOURCE='BUSI', FIELD='DATA_ID', FIELD_NAME=NULL, TRIMMABLE=NULL, NULLABLE='Y', TYPE_ID=NULL, ENCODING=NULL, MIN_LENGTH=NULL, MAX_LENGTH=NULL, MIN_VALUE=NULL, MAX_VALUE=NULL, MAX_PRECISION=NULL, MIN_SCALE=NULL, MAX_SCALE=NULL, ENUMERATION=NULL, PATTERN=NULL, IN_ENTITY=NULL, IN_FIELD=NULL, "SQL"=NULL, SQL_EXTRA_KEY=NULL, SCRIPT='if (!isEmpty(B_ACCT_TYPE) && B_ACCT_TYPE == "R1") {
    if (isEmpty(C_FLAG)) {
        return true
    }
    return false
}
return true', BEAN=NULL, CHECK_FLAG=NULL, CHECK_DESC=NULL, CHECK_ERR_TYPE=NULL, NEXT_ACTION=NULL, DATA_STATUS=NULL, DATA_FLAG=NULL, DATA_OP=NULL, DATA_SOURCE=NULL, DATA_VERSION=NULL, DATA_REJ_DESC=NULL, DATA_DEL_DESC=NULL, DATA_CRT_USER=NULL, DATA_CRT_DATE=NULL, DATA_CRT_TIME=NULL, DATA_CHG_USER=NULL, DATA_CHG_DATE=NULL, DATA_CHG_TIME=NULL, DATA_APV_USER=NULL, DATA_APV_DATE=NULL, DATA_APV_TIME=NULL, RSV1='d1e4776bc1fb433b8155f0b7536e8393', RSV2=NULL, RSV3=NULL, RSV4='mbtrule', RSV5='1' WHERE DATA_ID='MBT_210S210010113S210010101S210010112';
UPDATE GP_QC_RULE SET DATA_DATE='20190620', CORP_ID='TESTCORP', ORG_ID='72', GROUP_ID='002', INQ_ORG_ID=NULL, INQ_GROUP_ID=NULL, RULE_DESC='若账户类型为“R4”时，基本信息段中的“分次放款标志”字段不适用于此类账户。', RULE_MESSAGE='若账户类型为“R4”时，基本信息段中的“分次放款标志”字段不适用于此类账户。', RULE_TYPE=NULL, RULE_SOURCE='BUSI', FIELD='DATA_ID', FIELD_NAME=NULL, TRIMMABLE=NULL, NULLABLE='Y', TYPE_ID=NULL, ENCODING=NULL, MIN_LENGTH=NULL, MAX_LENGTH=NULL, MIN_VALUE=NULL, MAX_VALUE=NULL, MAX_PRECISION=NULL, MIN_SCALE=NULL, MAX_SCALE=NULL, ENUMERATION=NULL, PATTERN=NULL, IN_ENTITY=NULL, IN_FIELD=NULL, "SQL"=NULL, SQL_EXTRA_KEY=NULL, SCRIPT='if (!isEmpty(B_ACCT_TYPE) && B_ACCT_TYPE == "R4") {
    if (isEmpty(C_FLAG)) {
        return true
    }
    return false
}
return true', BEAN=NULL, CHECK_FLAG=NULL, CHECK_DESC=NULL, CHECK_ERR_TYPE=NULL, NEXT_ACTION=NULL, DATA_STATUS=NULL, DATA_FLAG=NULL, DATA_OP=NULL, DATA_SOURCE=NULL, DATA_VERSION=NULL, DATA_REJ_DESC=NULL, DATA_DEL_DESC=NULL, DATA_CRT_USER=NULL, DATA_CRT_DATE=NULL, DATA_CRT_TIME=NULL, DATA_CHG_USER=NULL, DATA_CHG_DATE=NULL, DATA_CHG_TIME=NULL, DATA_APV_USER=NULL, DATA_APV_DATE=NULL, DATA_APV_TIME=NULL, RSV1='880798255a724af6bad6dc9a051899fe', RSV2=NULL, RSV3=NULL, RSV4='mbtrule', RSV5='1' WHERE DATA_ID='MBT_210S210010116S210010107S210010112';
UPDATE GP_QC_RULE SET DATA_DATE='20190624', CORP_ID='TESTCORP', ORG_ID='72', GROUP_ID='002', INQ_ORG_ID=NULL, INQ_GROUP_ID=NULL, RULE_DESC='当“账户类型”为“D2”，“担保方式”不能为空', RULE_MESSAGE='当“账户类型”为“D2”，“担保方式”不能为空', RULE_TYPE=NULL, RULE_SOURCE='BUSI', FIELD='DATA_ID', FIELD_NAME=NULL, TRIMMABLE=NULL, NULLABLE='Y', TYPE_ID=NULL, ENCODING=NULL, MIN_LENGTH=NULL, MAX_LENGTH=NULL, MIN_VALUE=NULL, MAX_VALUE=NULL, MAX_PRECISION=NULL, MIN_SCALE=NULL, MAX_SCALE=NULL, ENUMERATION=NULL, PATTERN=NULL, IN_ENTITY=NULL, IN_FIELD=NULL, "SQL"=NULL, SQL_EXTRA_KEY=NULL, SCRIPT='if (!isEmpty(B_ACCT_TYPE) && B_ACCT_TYPE == "D2") {
    if (!isEmpty(C_GUAR_MODE)) {
        return true
    }
    return false
}
return true', BEAN=NULL, CHECK_FLAG=NULL, CHECK_DESC=NULL, CHECK_ERR_TYPE=NULL, NEXT_ACTION=NULL, DATA_STATUS=NULL, DATA_FLAG=NULL, DATA_OP=NULL, DATA_SOURCE=NULL, DATA_VERSION=NULL, DATA_REJ_DESC=NULL, DATA_DEL_DESC=NULL, DATA_CRT_USER=NULL, DATA_CRT_DATE=NULL, DATA_CRT_TIME=NULL, DATA_CHG_USER=NULL, DATA_CHG_DATE=NULL, DATA_CHG_TIME=NULL, DATA_APV_USER=NULL, DATA_APV_DATE=NULL, DATA_APV_TIME=NULL, RSV1='3af7a65036014caba50ffa7404a9403b', RSV2=NULL, RSV3=NULL, RSV4='mbtrule', RSV5='1' WHERE DATA_ID='MBT_410S4100115S410011503S410011502';
UPDATE GP_QC_RULE SET DATA_DATE='20190624', CORP_ID='TESTCORP', ORG_ID='72', GROUP_ID='002', INQ_ORG_ID=NULL, INQ_GROUP_ID=NULL, RULE_DESC='当“账户类型”为“R1”，“其他还款保证方式”不能为空', RULE_MESSAGE='当“账户类型”为“R1”，“其他还款保证方式”不能为空', RULE_TYPE=NULL, RULE_SOURCE='BUSI', FIELD='DATA_ID', FIELD_NAME=NULL, TRIMMABLE=NULL, NULLABLE='Y', TYPE_ID=NULL, ENCODING=NULL, MIN_LENGTH=NULL, MAX_LENGTH=NULL, MIN_VALUE=NULL, MAX_VALUE=NULL, MAX_PRECISION=NULL, MIN_SCALE=NULL, MAX_SCALE=NULL, ENUMERATION=NULL, PATTERN=NULL, IN_ENTITY=NULL, IN_FIELD=NULL, "SQL"=NULL, SQL_EXTRA_KEY=NULL, SCRIPT='if (!isEmpty(B_ACCT_TYPE) && B_ACCT_TYPE == "R1") {
    if (!isEmpty(C_OTH_REPY_GUAR_WAY)) {
        return true
    }
    return false
}
return true', BEAN=NULL, CHECK_FLAG=NULL, CHECK_DESC=NULL, CHECK_ERR_TYPE=NULL, NEXT_ACTION=NULL, DATA_STATUS=NULL, DATA_FLAG=NULL, DATA_OP=NULL, DATA_SOURCE=NULL, DATA_VERSION=NULL, DATA_REJ_DESC=NULL, DATA_DEL_DESC=NULL, DATA_CRT_USER=NULL, DATA_CRT_DATE=NULL, DATA_CRT_TIME=NULL, DATA_CHG_USER=NULL, DATA_CHG_DATE=NULL, DATA_CHG_TIME=NULL, DATA_APV_USER=NULL, DATA_APV_DATE=NULL, DATA_APV_TIME=NULL, RSV1='d32b91d39f6f42849784d3c2a8439c49', RSV2=NULL, RSV3=NULL, RSV4='mbtrule', RSV5='1' WHERE DATA_ID='MBT_410S4100117S410011701S410011702';
UPDATE GP_QC_RULE SET DATA_DATE='20190624', CORP_ID='TESTCORP', ORG_ID='72', GROUP_ID='002', INQ_ORG_ID=NULL, INQ_GROUP_ID=NULL, RULE_DESC='当“账户类型”为“C1”，“其他还款保证方式”为空', RULE_MESSAGE='当“账户类型”为“C1”，“其他还款保证方式”为空', RULE_TYPE=NULL, RULE_SOURCE='BUSI', FIELD='DATA_ID', FIELD_NAME=NULL, TRIMMABLE=NULL, NULLABLE='Y', TYPE_ID=NULL, ENCODING=NULL, MIN_LENGTH=NULL, MAX_LENGTH=NULL, MIN_VALUE=NULL, MAX_VALUE=NULL, MAX_PRECISION=NULL, MIN_SCALE=NULL, MAX_SCALE=NULL, ENUMERATION=NULL, PATTERN=NULL, IN_ENTITY=NULL, IN_FIELD=NULL, "SQL"=NULL, SQL_EXTRA_KEY=NULL, SCRIPT='if (!isEmpty(B_ACCT_TYPE) && B_ACCT_TYPE == "C1") {
    if (isEmpty(C_OTH_REPY_GUAR_WAY)) {
        return true
    }
    return false
}
return true', BEAN=NULL, CHECK_FLAG=NULL, CHECK_DESC=NULL, CHECK_ERR_TYPE=NULL, NEXT_ACTION=NULL, DATA_STATUS=NULL, DATA_FLAG=NULL, DATA_OP=NULL, DATA_SOURCE=NULL, DATA_VERSION=NULL, DATA_REJ_DESC=NULL, DATA_DEL_DESC=NULL, DATA_CRT_USER=NULL, DATA_CRT_DATE=NULL, DATA_CRT_TIME=NULL, DATA_CHG_USER=NULL, DATA_CHG_DATE=NULL, DATA_CHG_TIME=NULL, DATA_APV_USER=NULL, DATA_APV_DATE=NULL, DATA_APV_TIME=NULL, RSV1='0a14fa8c990d49a88bc4d5918df4047a', RSV2=NULL, RSV3=NULL, RSV4='mbtrule', RSV5='1' WHERE DATA_ID='MBT_410S4100118S410011801S410011802';
UPDATE GP_QC_RULE SET DATA_DATE='20190624', CORP_ID='TESTCORP', ORG_ID='72', GROUP_ID='002', INQ_ORG_ID=NULL, INQ_GROUP_ID=NULL, RULE_DESC='当“账户类型”为“D1”，“借款期限分类”不能为空', RULE_MESSAGE='当“账户类型”为“D1”，“借款期限分类”不能为空', RULE_TYPE=NULL, RULE_SOURCE='BUSI', FIELD='DATA_ID', FIELD_NAME=NULL, TRIMMABLE=NULL, NULLABLE='Y', TYPE_ID=NULL, ENCODING=NULL, MIN_LENGTH=NULL, MAX_LENGTH=NULL, MIN_VALUE=NULL, MAX_VALUE=NULL, MAX_PRECISION=NULL, MIN_SCALE=NULL, MAX_SCALE=NULL, ENUMERATION=NULL, PATTERN=NULL, IN_ENTITY=NULL, IN_FIELD=NULL, "SQL"=NULL, SQL_EXTRA_KEY=NULL, SCRIPT='if (!isEmpty(B_ACCT_TYPE) && B_ACCT_TYPE == "D1") {
    if (!isEmpty(C_LOAN_TIME_LIM_CAT)) {
        return true
    }
    return false
}
return true', BEAN=NULL, CHECK_FLAG=NULL, CHECK_DESC=NULL, CHECK_ERR_TYPE=NULL, NEXT_ACTION=NULL, DATA_STATUS=NULL, DATA_FLAG=NULL, DATA_OP=NULL, DATA_SOURCE=NULL, DATA_VERSION=NULL, DATA_REJ_DESC=NULL, DATA_DEL_DESC=NULL, DATA_CRT_USER=NULL, DATA_CRT_DATE=NULL, DATA_CRT_TIME=NULL, DATA_CHG_USER=NULL, DATA_CHG_DATE=NULL, DATA_CHG_TIME=NULL, DATA_APV_USER=NULL, DATA_APV_DATE=NULL, DATA_APV_TIME=NULL, RSV1='edc5176676884095beb6a73a5fd3f8d2', RSV2=NULL, RSV3=NULL, RSV4='mbtrule', RSV5='1' WHERE DATA_ID='MBT_410S4100120S410012001S410012002';
UPDATE GP_QC_RULE SET DATA_DATE='20190624', CORP_ID='TESTCORP', ORG_ID='72', GROUP_ID='002', INQ_ORG_ID=NULL, INQ_GROUP_ID=NULL, RULE_DESC='当“账户类型”为“R4”，“贷款发放方式”不能为空', RULE_MESSAGE='当“账户类型”为“R4”，“贷款发放方式”不能为空', RULE_TYPE=NULL, RULE_SOURCE='BUSI', FIELD='DATA_ID', FIELD_NAME=NULL, TRIMMABLE=NULL, NULLABLE='Y', TYPE_ID=NULL, ENCODING=NULL, MIN_LENGTH=NULL, MAX_LENGTH=NULL, MIN_VALUE=NULL, MAX_VALUE=NULL, MAX_PRECISION=NULL, MIN_SCALE=NULL, MAX_SCALE=NULL, ENUMERATION=NULL, PATTERN=NULL, IN_ENTITY=NULL, IN_FIELD=NULL, "SQL"=NULL, SQL_EXTRA_KEY=NULL, SCRIPT='if (!isEmpty(B_ACCT_TYPE) && B_ACCT_TYPE == "R4") {
    if (!isEmpty(C_LOA_FRM)) {
        return true
    }
    return false
}
return true', BEAN=NULL, CHECK_FLAG=NULL, CHECK_DESC=NULL, CHECK_ERR_TYPE=NULL, NEXT_ACTION=NULL, DATA_STATUS=NULL, DATA_FLAG=NULL, DATA_OP=NULL, DATA_SOURCE=NULL, DATA_VERSION=NULL, DATA_REJ_DESC=NULL, DATA_DEL_DESC=NULL, DATA_CRT_USER=NULL, DATA_CRT_DATE=NULL, DATA_CRT_TIME=NULL, DATA_CHG_USER=NULL, DATA_CHG_DATE=NULL, DATA_CHG_TIME=NULL, DATA_APV_USER=NULL, DATA_APV_DATE=NULL, DATA_APV_TIME=NULL, RSV1='43563ff9599e44a3a99d991295dc41a8', RSV2=NULL, RSV3=NULL, RSV4='mbtrule', RSV5='1' WHERE DATA_ID='MBT_410S4100121S410012105S410012102';
UPDATE GP_QC_RULE SET DATA_DATE='20190624', CORP_ID='TESTCORP', ORG_ID='72', GROUP_ID='002', INQ_ORG_ID=NULL, INQ_GROUP_ID=NULL, RULE_DESC='当“账户类型”为“R4”，“贷款实际投向”不能为空', RULE_MESSAGE='当“账户类型”为“R4”，“贷款实际投向”不能为空', RULE_TYPE=NULL, RULE_SOURCE='BUSI', FIELD='DATA_ID', FIELD_NAME=NULL, TRIMMABLE=NULL, NULLABLE='Y', TYPE_ID=NULL, ENCODING=NULL, MIN_LENGTH=NULL, MAX_LENGTH=NULL, MIN_VALUE=NULL, MAX_VALUE=NULL, MAX_PRECISION=NULL, MIN_SCALE=NULL, MAX_SCALE=NULL, ENUMERATION=NULL, PATTERN=NULL, IN_ENTITY=NULL, IN_FIELD=NULL, "SQL"=NULL, SQL_EXTRA_KEY=NULL, SCRIPT='if (!isEmpty(B_ACCT_TYPE) && B_ACCT_TYPE == "R4" && C_BUSI_LINES == "11") {
    if (!isEmpty(C_ACT_INVEST)) {
        return true
    }
    return false
}
return true', BEAN=NULL, CHECK_FLAG=NULL, CHECK_DESC=NULL, CHECK_ERR_TYPE=NULL, NEXT_ACTION=NULL, DATA_STATUS=NULL, DATA_FLAG=NULL, DATA_OP=NULL, DATA_SOURCE=NULL, DATA_VERSION=NULL, DATA_REJ_DESC=NULL, DATA_DEL_DESC=NULL, DATA_CRT_USER=NULL, DATA_CRT_DATE=NULL, DATA_CRT_TIME=NULL, DATA_CHG_USER=NULL, DATA_CHG_DATE=NULL, DATA_CHG_TIME=NULL, DATA_APV_USER=NULL, DATA_APV_DATE=NULL, DATA_APV_TIME=NULL, RSV1='cfb8a9c53ddc4aebb039964bea1ea58c', RSV2=NULL, RSV3=NULL, RSV4='mbtrule', RSV5='1' WHERE DATA_ID='MBT_410S4100123S410012303,S410012388S410012302';
UPDATE GP_QC_RULE SET DATA_DATE='20190709', CORP_ID='TESTCORP', ORG_ID='72', GROUP_ID='002', INQ_ORG_ID=NULL, INQ_GROUP_ID=NULL, RULE_DESC='当“报送时点说明代码”为“41-五级分类调整”时，对于“账户类型”为“R1”，不适用五级分类调整时点。', RULE_MESSAGE='当“报送时点说明代码”为“41-五级分类调整”时，对于“账户类型”为“R1”，不适用五级分类调整时点。', RULE_TYPE=NULL, RULE_SOURCE='BUSI', FIELD='DATA_ID', FIELD_NAME=NULL, TRIMMABLE=NULL, NULLABLE='Y', TYPE_ID=NULL, ENCODING=NULL, MIN_LENGTH=NULL, MAX_LENGTH=NULL, MIN_VALUE=NULL, MAX_VALUE=NULL, MAX_PRECISION=NULL, MIN_SCALE=NULL, MAX_SCALE=NULL, ENUMERATION=NULL, PATTERN=NULL, IN_ENTITY=NULL, IN_FIELD=NULL, "SQL"=NULL, SQL_EXTRA_KEY=NULL, SCRIPT='if (!isEmpty(B_ACCT_TYPE) && B_ACCT_TYPE == "R1") {
    if (B_RPT_DATE_CODE != "41") {
        return true
    }
    return false
}
return true', BEAN=NULL, CHECK_FLAG=NULL, CHECK_DESC=NULL, CHECK_ERR_TYPE=NULL, NEXT_ACTION=NULL, DATA_STATUS=NULL, DATA_FLAG=NULL, DATA_OP=NULL, DATA_SOURCE=NULL, DATA_VERSION=NULL, DATA_REJ_DESC=NULL, DATA_DEL_DESC=NULL, DATA_CRT_USER=NULL, DATA_CRT_DATE=NULL, DATA_CRT_TIME=NULL, DATA_CHG_USER=NULL, DATA_CHG_DATE=NULL, DATA_CHG_TIME=NULL, DATA_APV_USER=NULL, DATA_APV_DATE=NULL, DATA_APV_TIME=NULL, RSV1='cde66b3932ee4ec38c1736f739b476f7', RSV2=NULL, RSV3=NULL, RSV4='mbtrule', RSV5='1' WHERE DATA_ID='MBT_410R4100111R410010707R410011102';
UPDATE GP_QC_RULE SET DATA_DATE='20190709', CORP_ID='TESTCORP', ORG_ID='72', GROUP_ID='002', INQ_ORG_ID=NULL, INQ_GROUP_ID=NULL, RULE_DESC='当“报送时点说明代码”为“41-五级分类调整”时，若“账户类型”为“D1”如果“分次放款标识”为“0”，则不应包含授信额度信息段。', RULE_MESSAGE='当“报送时点说明代码”为“41-五级分类调整”时，若“账户类型”为“D1”如果“分次放款标识”为“0”，则不应包含授信额度信息段。', RULE_TYPE=NULL, RULE_SOURCE='BUSI', FIELD='DATA_ID', FIELD_NAME=NULL, TRIMMABLE=NULL, NULLABLE='Y', TYPE_ID=NULL, ENCODING=NULL, MIN_LENGTH=NULL, MAX_LENGTH=NULL, MIN_VALUE=NULL, MAX_VALUE=NULL, MAX_PRECISION=NULL, MIN_SCALE=NULL, MAX_SCALE=NULL, ENUMERATION=NULL, PATTERN=NULL, IN_ENTITY=NULL, IN_FIELD=NULL, "SQL"=NULL, SQL_EXTRA_KEY=NULL, SCRIPT='if (!isEmpty(B_ACCT_TYPE) && B_ACCT_TYPE == "D1" && B_RPT_DATE_CODE == "41" && C_FLAG == "0") {
    if (IS_RPT.substring(2,3) == "0") {
        return true
    }
    return false
}
return true', BEAN=NULL, CHECK_FLAG=NULL, CHECK_DESC=NULL, CHECK_ERR_TYPE=NULL, NEXT_ACTION=NULL, DATA_STATUS=NULL, DATA_FLAG=NULL, DATA_OP=NULL, DATA_SOURCE=NULL, DATA_VERSION=NULL, DATA_REJ_DESC=NULL, DATA_DEL_DESC=NULL, DATA_CRT_USER=NULL, DATA_CRT_DATE=NULL, DATA_CRT_TIME=NULL, DATA_CHG_USER=NULL, DATA_CHG_DATE=NULL, DATA_CHG_TIME=NULL, DATA_APV_USER=NULL, DATA_APV_DATE=NULL, DATA_APV_TIME=NULL, RSV1='37f337ac74354ef7acb7529f45428924', RSV2=NULL, RSV3=NULL, RSV4='mbtrule', RSV5='1' WHERE DATA_ID='MBT_410R4100112R410011201R410010204';
UPDATE GP_QC_RULE SET DATA_DATE='20190709', CORP_ID='TESTCORP', ORG_ID='72', GROUP_ID='002', INQ_ORG_ID=NULL, INQ_GROUP_ID=NULL, RULE_DESC='当“报送时点说明代码”为“41-五级分类调整”时，若“账户类型”为“R4”，不应包含初始债权说明段。', RULE_MESSAGE='当“报送时点说明代码”为“41-五级分类调整”时，若“账户类型”为“R4”，不应包含初始债权说明段。', RULE_TYPE=NULL, RULE_SOURCE='BUSI', FIELD='DATA_ID', FIELD_NAME=NULL, TRIMMABLE=NULL, NULLABLE='Y', TYPE_ID=NULL, ENCODING=NULL, MIN_LENGTH=NULL, MAX_LENGTH=NULL, MIN_VALUE=NULL, MAX_VALUE=NULL, MAX_PRECISION=NULL, MIN_SCALE=NULL, MAX_SCALE=NULL, ENUMERATION=NULL, PATTERN=NULL, IN_ENTITY=NULL, IN_FIELD=NULL, "SQL"=NULL, SQL_EXTRA_KEY=NULL, SCRIPT='if (!isEmpty(B_ACCT_TYPE) && B_ACCT_TYPE == "R4" && B_RPT_DATE_CODE == "41") {
    if (IS_RPT.substring(3,4) == "0") {
        return true
    }
    return false
}
return true', BEAN=NULL, CHECK_FLAG=NULL, CHECK_DESC=NULL, CHECK_ERR_TYPE=NULL, NEXT_ACTION=NULL, DATA_STATUS=NULL, DATA_FLAG=NULL, DATA_OP=NULL, DATA_SOURCE=NULL, DATA_VERSION=NULL, DATA_REJ_DESC=NULL, DATA_DEL_DESC=NULL, DATA_CRT_USER=NULL, DATA_CRT_DATE=NULL, DATA_CRT_TIME=NULL, DATA_CHG_USER=NULL, DATA_CHG_DATE=NULL, DATA_CHG_TIME=NULL, DATA_APV_USER=NULL, DATA_APV_DATE=NULL, DATA_APV_TIME=NULL, RSV1='284bb6a65d3c48e6aa4d36da8c32f156', RSV2=NULL, RSV3=NULL, RSV4='mbtrule', RSV5='1' WHERE DATA_ID='MBT_410R4100112R410011105R410010202';
UPDATE GP_QC_RULE SET DATA_DATE='20190709', CORP_ID='TESTCORP', ORG_ID='72', GROUP_ID='002', INQ_ORG_ID=NULL, INQ_GROUP_ID=NULL, RULE_DESC='当“报送时点说明代码”为“42-展期发生”时，若“账户类型”为“R1”，不适用展期发生报送时点。', RULE_MESSAGE='当“报送时点说明代码”为“42-展期发生”时，若“账户类型”为“R1”，不适用展期发生报送时点。', RULE_TYPE=NULL, RULE_SOURCE='BUSI', FIELD='DATA_ID', FIELD_NAME=NULL, TRIMMABLE=NULL, NULLABLE='Y', TYPE_ID=NULL, ENCODING=NULL, MIN_LENGTH=NULL, MAX_LENGTH=NULL, MIN_VALUE=NULL, MAX_VALUE=NULL, MAX_PRECISION=NULL, MIN_SCALE=NULL, MAX_SCALE=NULL, ENUMERATION=NULL, PATTERN=NULL, IN_ENTITY=NULL, IN_FIELD=NULL, "SQL"=NULL, SQL_EXTRA_KEY=NULL, SCRIPT='if (!isEmpty(B_ACCT_TYPE) && B_ACCT_TYPE == "R1") {
    if (B_RPT_DATE_CODE != "42") {
        return true
    }
    return false
}
return true', BEAN=NULL, CHECK_FLAG=NULL, CHECK_DESC=NULL, CHECK_ERR_TYPE=NULL, NEXT_ACTION=NULL, DATA_STATUS=NULL, DATA_FLAG=NULL, DATA_OP=NULL, DATA_SOURCE=NULL, DATA_VERSION=NULL, DATA_REJ_DESC=NULL, DATA_DEL_DESC=NULL, DATA_CRT_USER=NULL, DATA_CRT_DATE=NULL, DATA_CRT_TIME=NULL, DATA_CHG_USER=NULL, DATA_CHG_DATE=NULL, DATA_CHG_TIME=NULL, DATA_APV_USER=NULL, DATA_APV_DATE=NULL, DATA_APV_TIME=NULL, RSV1='84b72ecbf6ad4280a99accb124a4193f', RSV2=NULL, RSV3=NULL, RSV4='mbtrule', RSV5='1' WHERE DATA_ID='MBT_410R4100113R410010707R410011304';
UPDATE GP_QC_RULE SET DATA_DATE='20190709', CORP_ID='TESTCORP', ORG_ID='72', GROUP_ID='002', INQ_ORG_ID=NULL, INQ_GROUP_ID=NULL, RULE_DESC='当“报送时点说明代码”为“42-展期发生”时，若“账户类型”为“D2”，不适用展期发生报送时点。', RULE_MESSAGE='当“报送时点说明代码”为“42-展期发生”时，若“账户类型”为“D2”，不适用展期发生报送时点。', RULE_TYPE=NULL, RULE_SOURCE='BUSI', FIELD='DATA_ID', FIELD_NAME=NULL, TRIMMABLE=NULL, NULLABLE='Y', TYPE_ID=NULL, ENCODING=NULL, MIN_LENGTH=NULL, MAX_LENGTH=NULL, MIN_VALUE=NULL, MAX_VALUE=NULL, MAX_PRECISION=NULL, MIN_SCALE=NULL, MAX_SCALE=NULL, ENUMERATION=NULL, PATTERN=NULL, IN_ENTITY=NULL, IN_FIELD=NULL, "SQL"=NULL, SQL_EXTRA_KEY=NULL, SCRIPT='if (!isEmpty(B_ACCT_TYPE) && B_ACCT_TYPE == "D2") {
    if (B_RPT_DATE_CODE != "42") {
        return true
    }
    return false
}
return true', BEAN=NULL, CHECK_FLAG=NULL, CHECK_DESC=NULL, CHECK_ERR_TYPE=NULL, NEXT_ACTION=NULL, DATA_STATUS=NULL, DATA_FLAG=NULL, DATA_OP=NULL, DATA_SOURCE=NULL, DATA_VERSION=NULL, DATA_REJ_DESC=NULL, DATA_DEL_DESC=NULL, DATA_CRT_USER=NULL, DATA_CRT_DATE=NULL, DATA_CRT_TIME=NULL, DATA_CHG_USER=NULL, DATA_CHG_DATE=NULL, DATA_CHG_TIME=NULL, DATA_APV_USER=NULL, DATA_APV_DATE=NULL, DATA_APV_TIME=NULL, RSV1='6d054abfc23545ca8ca0890a95a6088f', RSV2=NULL, RSV3=NULL, RSV4='mbtrule', RSV5='1' WHERE DATA_ID='MBT_410R4100114R410011303R410011304';
UPDATE GP_QC_RULE SET DATA_DATE='20190709', CORP_ID='TESTCORP', ORG_ID='72', GROUP_ID='002', INQ_ORG_ID=NULL, INQ_GROUP_ID=NULL, RULE_DESC='当“报送时点说明代码”为“49-其他报送日”时，若“账户类型”为“D1”，应包含基础段、还款表现信息段。', RULE_MESSAGE='当“报送时点说明代码”为“49-其他报送日”时，若“账户类型”为“D1”，应包含基础段、还款表现信息段。', RULE_TYPE=NULL, RULE_SOURCE='BUSI', FIELD='DATA_ID', FIELD_NAME=NULL, TRIMMABLE=NULL, NULLABLE='Y', TYPE_ID=NULL, ENCODING=NULL, MIN_LENGTH=NULL, MAX_LENGTH=NULL, MIN_VALUE=NULL, MAX_VALUE=NULL, MAX_PRECISION=NULL, MIN_SCALE=NULL, MAX_SCALE=NULL, ENUMERATION=NULL, PATTERN=NULL, IN_ENTITY=NULL, IN_FIELD=NULL, "SQL"=NULL, SQL_EXTRA_KEY=NULL, SCRIPT='if (!isEmpty(B_ACCT_TYPE) && B_ACCT_TYPE == "D1" && B_RPT_DATE_CODE == "49") {
    if (IS_RPT.substring(0,1) == "1" && IS_RPT.substring(4,5) == "1") {
        return true
    }
    return false
}
return true', BEAN=NULL, CHECK_FLAG=NULL, CHECK_DESC=NULL, CHECK_ERR_TYPE=NULL, NEXT_ACTION=NULL, DATA_STATUS=NULL, DATA_FLAG=NULL, DATA_OP=NULL, DATA_SOURCE=NULL, DATA_VERSION=NULL, DATA_REJ_DESC=NULL, DATA_DEL_DESC=NULL, DATA_CRT_USER=NULL, DATA_CRT_DATE=NULL, DATA_CRT_TIME=NULL, DATA_CHG_USER=NULL, DATA_CHG_DATE=NULL, DATA_CHG_TIME=NULL, DATA_APV_USER=NULL, DATA_APV_DATE=NULL, DATA_APV_TIME=NULL, RSV1='dfc947a3cf5a4d5f94389720995cc649', RSV2=NULL, RSV3=NULL, RSV4='mbtrule', RSV5='1' WHERE DATA_ID='MBT_410R4100115R410011501R410010302';
UPDATE GP_QC_RULE SET DATA_DATE='20190709', CORP_ID='TESTCORP', ORG_ID='72', GROUP_ID='002', INQ_ORG_ID=NULL, INQ_GROUP_ID=NULL, RULE_DESC='当“报送时点说明代码”为“49-其他报送日”时，若“账户类型”为“C1”，应包含基础段、还款表现信息段。', RULE_MESSAGE='当“报送时点说明代码”为“49-其他报送日”时，若“账户类型”为“C1”，应包含基础段、还款表现信息段。', RULE_TYPE=NULL, RULE_SOURCE='BUSI', FIELD='DATA_ID', FIELD_NAME=NULL, TRIMMABLE=NULL, NULLABLE='Y', TYPE_ID=NULL, ENCODING=NULL, MIN_LENGTH=NULL, MAX_LENGTH=NULL, MIN_VALUE=NULL, MAX_VALUE=NULL, MAX_PRECISION=NULL, MIN_SCALE=NULL, MAX_SCALE=NULL, ENUMERATION=NULL, PATTERN=NULL, IN_ENTITY=NULL, IN_FIELD=NULL, "SQL"=NULL, SQL_EXTRA_KEY=NULL, SCRIPT='if (!isEmpty(B_ACCT_TYPE) && B_ACCT_TYPE == "C1" && B_RPT_DATE_CODE == "49") {
    if (IS_RPT.substring(0,1) == "1" && IS_RPT.substring(4,5) == "1") {
        return true
    }
    return false
}
return true', BEAN=NULL, CHECK_FLAG=NULL, CHECK_DESC=NULL, CHECK_ERR_TYPE=NULL, NEXT_ACTION=NULL, DATA_STATUS=NULL, DATA_FLAG=NULL, DATA_OP=NULL, DATA_SOURCE=NULL, DATA_VERSION=NULL, DATA_REJ_DESC=NULL, DATA_DEL_DESC=NULL, DATA_CRT_USER=NULL, DATA_CRT_DATE=NULL, DATA_CRT_TIME=NULL, DATA_CHG_USER=NULL, DATA_CHG_DATE=NULL, DATA_CHG_TIME=NULL, DATA_APV_USER=NULL, DATA_APV_DATE=NULL, DATA_APV_TIME=NULL, RSV1='af0fe280d9bd4179a7afff96c3495135', RSV2=NULL, RSV3=NULL, RSV4='mbtrule', RSV5='1' WHERE DATA_ID='MBT_410R4100115R410011509R410010302';
UPDATE GP_QC_RULE SET DATA_DATE='20190709', CORP_ID='TESTCORP', ORG_ID='72', GROUP_ID='002', INQ_ORG_ID=NULL, INQ_GROUP_ID=NULL, RULE_DESC='当“报送时点说明代码”为“31-开户后放款”时，若“账户类型”为“D2”，不适用放款日报送时点。', RULE_MESSAGE='当“报送时点说明代码”为“31-开户后放款”时，若“账户类型”为“D2”，不适用放款日报送时点。', RULE_TYPE=NULL, RULE_SOURCE='BUSI', FIELD='DATA_ID', FIELD_NAME=NULL, TRIMMABLE=NULL, NULLABLE='Y', TYPE_ID=NULL, ENCODING=NULL, MIN_LENGTH=NULL, MAX_LENGTH=NULL, MIN_VALUE=NULL, MAX_VALUE=NULL, MAX_PRECISION=NULL, MIN_SCALE=NULL, MAX_SCALE=NULL, ENUMERATION=NULL, PATTERN=NULL, IN_ENTITY=NULL, IN_FIELD=NULL, "SQL"=NULL, SQL_EXTRA_KEY=NULL, SCRIPT='if (!isEmpty(B_ACCT_TYPE) && B_ACCT_TYPE == "D2") {
    if (B_RPT_DATE_CODE != "31") {
        return true
    }
    return false
}
return true', BEAN=NULL, CHECK_FLAG=NULL, CHECK_DESC=NULL, CHECK_ERR_TYPE=NULL, NEXT_ACTION=NULL, DATA_STATUS=NULL, DATA_FLAG=NULL, DATA_OP=NULL, DATA_SOURCE=NULL, DATA_VERSION=NULL, DATA_REJ_DESC=NULL, DATA_DEL_DESC=NULL, DATA_CRT_USER=NULL, DATA_CRT_DATE=NULL, DATA_CRT_TIME=NULL, DATA_CHG_USER=NULL, DATA_CHG_DATE=NULL, DATA_CHG_TIME=NULL, DATA_APV_USER=NULL, DATA_APV_DATE=NULL, DATA_APV_TIME=NULL, RSV1='44d56a91515d4a9ab77a58e77667176f', RSV2=NULL, RSV3=NULL, RSV4='mbtrule', RSV5='1' WHERE DATA_ID='MBT_410R4100105R410010505R410010504';
UPDATE GP_QC_RULE SET DATA_DATE='20190709', CORP_ID='TESTCORP', ORG_ID='72', GROUP_ID='002', INQ_ORG_ID=NULL, INQ_GROUP_ID=NULL, RULE_DESC='当“报送时点说明代码”为“31-开户后放款”时，若“账户类型”为“D1”，“分次放款标识”为“0”、“1”，不适用放款日报送时点。', RULE_MESSAGE='当“报送时点说明代码”为“31-开户后放款”时，若“账户类型”为“D1”，“分次放款标识”为“0”、“1”，不适用放款日报送时点。', RULE_TYPE=NULL, RULE_SOURCE='BUSI', FIELD='DATA_ID', FIELD_NAME=NULL, TRIMMABLE=NULL, NULLABLE='Y', TYPE_ID=NULL, ENCODING=NULL, MIN_LENGTH=NULL, MAX_LENGTH=NULL, MIN_VALUE=NULL, MAX_VALUE=NULL, MAX_PRECISION=NULL, MIN_SCALE=NULL, MAX_SCALE=NULL, ENUMERATION=NULL, PATTERN=NULL, IN_ENTITY=NULL, IN_FIELD=NULL, "SQL"=NULL, SQL_EXTRA_KEY=NULL, SCRIPT='if (!isEmpty(B_ACCT_TYPE) && B_ACCT_TYPE == "D1" && (C_FLAG == "0" || C_FLAG == "1")) {
    if (B_RPT_DATE_CODE != "31") {
        return true
    }
    return false
}
return true', BEAN=NULL, CHECK_FLAG=NULL, CHECK_DESC=NULL, CHECK_ERR_TYPE=NULL, NEXT_ACTION=NULL, DATA_STATUS=NULL, DATA_FLAG=NULL, DATA_OP=NULL, DATA_SOURCE=NULL, DATA_VERSION=NULL, DATA_REJ_DESC=NULL, DATA_DEL_DESC=NULL, DATA_CRT_USER=NULL, DATA_CRT_DATE=NULL, DATA_CRT_TIME=NULL, DATA_CHG_USER=NULL, DATA_CHG_DATE=NULL, DATA_CHG_TIME=NULL, DATA_APV_USER=NULL, DATA_APV_DATE=NULL, DATA_APV_TIME=NULL, RSV1='ccaaf354c7144737b8f4e3eae264e63e', RSV2=NULL, RSV3=NULL, RSV4='mbtrule', RSV5='1' WHERE DATA_ID='MBT_410R4100106R410010503R410010504';
UPDATE GP_QC_RULE SET DATA_DATE='20190709', CORP_ID='TESTCORP', ORG_ID='72', GROUP_ID='002', INQ_ORG_ID=NULL, INQ_GROUP_ID=NULL, RULE_DESC='当“报送时点说明代码”为“32-约定还款日结算”时，若“账户类型”为“D1”，应包含基础段、还款表现信息段。', RULE_MESSAGE='当“报送时点说明代码”为“32-约定还款日结算”时，若“账户类型”为“D1”，应包含基础段、还款表现信息段。', RULE_TYPE=NULL, RULE_SOURCE='BUSI', FIELD='DATA_ID', FIELD_NAME=NULL, TRIMMABLE=NULL, NULLABLE='Y', TYPE_ID=NULL, ENCODING=NULL, MIN_LENGTH=NULL, MAX_LENGTH=NULL, MIN_VALUE=NULL, MAX_VALUE=NULL, MAX_PRECISION=NULL, MIN_SCALE=NULL, MAX_SCALE=NULL, ENUMERATION=NULL, PATTERN=NULL, IN_ENTITY=NULL, IN_FIELD=NULL, "SQL"=NULL, SQL_EXTRA_KEY=NULL, SCRIPT='if (!isEmpty(B_ACCT_TYPE) && B_ACCT_TYPE == "D1" && B_RPT_DATE_CODE == "32") {
    if (IS_RPT.substring(0,1) == "1" && IS_RPT.substring(4,5) == "1") {
        return true
    }
    return false
}
return true', BEAN=NULL, CHECK_FLAG=NULL, CHECK_DESC=NULL, CHECK_ERR_TYPE=NULL, NEXT_ACTION=NULL, DATA_STATUS=NULL, DATA_FLAG=NULL, DATA_OP=NULL, DATA_SOURCE=NULL, DATA_VERSION=NULL, DATA_REJ_DESC=NULL, DATA_DEL_DESC=NULL, DATA_CRT_USER=NULL, DATA_CRT_DATE=NULL, DATA_CRT_TIME=NULL, DATA_CHG_USER=NULL, DATA_CHG_DATE=NULL, DATA_CHG_TIME=NULL, DATA_APV_USER=NULL, DATA_APV_DATE=NULL, DATA_APV_TIME=NULL, RSV1='30cceabe7a44442cb2b44027862c0d91', RSV2=NULL, RSV3=NULL, RSV4='mbtrule', RSV5='1' WHERE DATA_ID='MBT_410R4100107R410010701R410010302';
UPDATE GP_QC_RULE SET DATA_DATE='20190709', CORP_ID='TESTCORP', ORG_ID='72', GROUP_ID='002', INQ_ORG_ID=NULL, INQ_GROUP_ID=NULL, RULE_DESC='当“报送时点说明代码”为“32-约定还款日结算”时，若“账户类型”为“C1”，不适用约定还款日报送时点。', RULE_MESSAGE='当“报送时点说明代码”为“32-约定还款日结算”时，若“账户类型”为“C1”，不适用约定还款日报送时点。', RULE_TYPE=NULL, RULE_SOURCE='BUSI', FIELD='DATA_ID', FIELD_NAME=NULL, TRIMMABLE=NULL, NULLABLE='Y', TYPE_ID=NULL, ENCODING=NULL, MIN_LENGTH=NULL, MAX_LENGTH=NULL, MIN_VALUE=NULL, MAX_VALUE=NULL, MAX_PRECISION=NULL, MIN_SCALE=NULL, MAX_SCALE=NULL, ENUMERATION=NULL, PATTERN=NULL, IN_ENTITY=NULL, IN_FIELD=NULL, "SQL"=NULL, SQL_EXTRA_KEY=NULL, SCRIPT='if (!isEmpty(B_ACCT_TYPE) && B_ACCT_TYPE == "C1") {
    if (B_RPT_DATE_CODE != 32) {
        return true
    }
    return false
}
return true', BEAN=NULL, CHECK_FLAG=NULL, CHECK_DESC=NULL, CHECK_ERR_TYPE=NULL, NEXT_ACTION=NULL, DATA_STATUS=NULL, DATA_FLAG=NULL, DATA_OP=NULL, DATA_SOURCE=NULL, DATA_VERSION=NULL, DATA_REJ_DESC=NULL, DATA_DEL_DESC=NULL, DATA_CRT_USER=NULL, DATA_CRT_DATE=NULL, DATA_CRT_TIME=NULL, DATA_CHG_USER=NULL, DATA_CHG_DATE=NULL, DATA_CHG_TIME=NULL, DATA_APV_USER=NULL, DATA_APV_DATE=NULL, DATA_APV_TIME=NULL, RSV1='b6c96a3bbc914c988a171dc9d86aa071', RSV2=NULL, RSV3=NULL, RSV4='mbtrule', RSV5='1' WHERE DATA_ID='MBT_410R4100107R410010709R410010702';
UPDATE GP_QC_RULE SET DATA_DATE='20190709', CORP_ID='TESTCORP', ORG_ID='72', GROUP_ID='002', INQ_ORG_ID=NULL, INQ_GROUP_ID=NULL, RULE_DESC='当“报送时点说明代码”为“32-约定还款日结算”时，若“账户类型”为“R4”，不应包含初始债权说明段。', RULE_MESSAGE='当“报送时点说明代码”为“32-约定还款日结算”时，若“账户类型”为“R4”，不应包含初始债权说明段。', RULE_TYPE=NULL, RULE_SOURCE='BUSI', FIELD='DATA_ID', FIELD_NAME=NULL, TRIMMABLE=NULL, NULLABLE='Y', TYPE_ID=NULL, ENCODING=NULL, MIN_LENGTH=NULL, MAX_LENGTH=NULL, MIN_VALUE=NULL, MAX_VALUE=NULL, MAX_PRECISION=NULL, MIN_SCALE=NULL, MAX_SCALE=NULL, ENUMERATION=NULL, PATTERN=NULL, IN_ENTITY=NULL, IN_FIELD=NULL, "SQL"=NULL, SQL_EXTRA_KEY=NULL, SCRIPT='if (!isEmpty(B_ACCT_TYPE) && B_ACCT_TYPE == "R4" && B_RPT_DATE_CODE == "32") {
    if (IS_RPT.substring(3,4) == "0") {
        return true
    }
    return false
}
return true', BEAN=NULL, CHECK_FLAG=NULL, CHECK_DESC=NULL, CHECK_ERR_TYPE=NULL, NEXT_ACTION=NULL, DATA_STATUS=NULL, DATA_FLAG=NULL, DATA_OP=NULL, DATA_SOURCE=NULL, DATA_VERSION=NULL, DATA_REJ_DESC=NULL, DATA_DEL_DESC=NULL, DATA_CRT_USER=NULL, DATA_CRT_DATE=NULL, DATA_CRT_TIME=NULL, DATA_CHG_USER=NULL, DATA_CHG_DATE=NULL, DATA_CHG_TIME=NULL, DATA_APV_USER=NULL, DATA_APV_DATE=NULL, DATA_APV_TIME=NULL, RSV1='7094b734ebf54575957b06cbf99d4d46', RSV2=NULL, RSV3=NULL, RSV4='mbtrule', RSV5='1' WHERE DATA_ID='MBT_410R4100108R410010705R410010202';
UPDATE GP_QC_RULE SET DATA_DATE='20190709', CORP_ID='TESTCORP', ORG_ID='72', GROUP_ID='002', INQ_ORG_ID=NULL, INQ_GROUP_ID=NULL, RULE_DESC='当“报送时点说明代码”为“33-实际还款”时，若“账户类型”为“D2”，应包含基础段、还款表现信息段。', RULE_MESSAGE='当“报送时点说明代码”为“33-实际还款”时，若“账户类型”为“D2”，应包含基础段、还款表现信息段。', RULE_TYPE=NULL, RULE_SOURCE='BUSI', FIELD='DATA_ID', FIELD_NAME=NULL, TRIMMABLE=NULL, NULLABLE='Y', TYPE_ID=NULL, ENCODING=NULL, MIN_LENGTH=NULL, MAX_LENGTH=NULL, MIN_VALUE=NULL, MAX_VALUE=NULL, MAX_PRECISION=NULL, MIN_SCALE=NULL, MAX_SCALE=NULL, ENUMERATION=NULL, PATTERN=NULL, IN_ENTITY=NULL, IN_FIELD=NULL, "SQL"=NULL, SQL_EXTRA_KEY=NULL, SCRIPT='if (!isEmpty(B_ACCT_TYPE) && B_ACCT_TYPE == "D2" && B_RPT_DATE_CODE == "33") {
    if (IS_RPT.substring(0,1) == "1" && IS_RPT.substring(4,5) == "1") {
        return true
    }
    return false
}
return true', BEAN=NULL, CHECK_FLAG=NULL, CHECK_DESC=NULL, CHECK_ERR_TYPE=NULL, NEXT_ACTION=NULL, DATA_STATUS=NULL, DATA_FLAG=NULL, DATA_OP=NULL, DATA_SOURCE=NULL, DATA_VERSION=NULL, DATA_REJ_DESC=NULL, DATA_DEL_DESC=NULL, DATA_CRT_USER=NULL, DATA_CRT_DATE=NULL, DATA_CRT_TIME=NULL, DATA_CHG_USER=NULL, DATA_CHG_DATE=NULL, DATA_CHG_TIME=NULL, DATA_APV_USER=NULL, DATA_APV_DATE=NULL, DATA_APV_TIME=NULL, RSV1='b4d2eab045444998beda7d447f3f591a', RSV2=NULL, RSV3=NULL, RSV4='mbtrule', RSV5='1' WHERE DATA_ID='MBT_410R4100109R410010903R410010302';
UPDATE GP_QC_RULE SET DATA_DATE='20190709', CORP_ID='TESTCORP', ORG_ID='72', GROUP_ID='002', INQ_ORG_ID=NULL, INQ_GROUP_ID=NULL, RULE_DESC='当“报送时点说明代码”为“33-实际还款”时，若“账户类型”为“D1”，不应包含初始债权说明段。', RULE_MESSAGE='当“报送时点说明代码”为“33-实际还款”时，若“账户类型”为“D1”，不应包含初始债权说明段。', RULE_TYPE=NULL, RULE_SOURCE='BUSI', FIELD='DATA_ID', FIELD_NAME=NULL, TRIMMABLE=NULL, NULLABLE='Y', TYPE_ID=NULL, ENCODING=NULL, MIN_LENGTH=NULL, MAX_LENGTH=NULL, MIN_VALUE=NULL, MAX_VALUE=NULL, MAX_PRECISION=NULL, MIN_SCALE=NULL, MAX_SCALE=NULL, ENUMERATION=NULL, PATTERN=NULL, IN_ENTITY=NULL, IN_FIELD=NULL, "SQL"=NULL, SQL_EXTRA_KEY=NULL, SCRIPT='if (!isEmpty(B_ACCT_TYPE) && B_ACCT_TYPE == "D1" && B_RPT_DATE_CODE == "33") {
    if (IS_RPT.substring(3,4) == "0") {
        return true
    }
    return false
}
return true', BEAN=NULL, CHECK_FLAG=NULL, CHECK_DESC=NULL, CHECK_ERR_TYPE=NULL, NEXT_ACTION=NULL, DATA_STATUS=NULL, DATA_FLAG=NULL, DATA_OP=NULL, DATA_SOURCE=NULL, DATA_VERSION=NULL, DATA_REJ_DESC=NULL, DATA_DEL_DESC=NULL, DATA_CRT_USER=NULL, DATA_CRT_DATE=NULL, DATA_CRT_TIME=NULL, DATA_CHG_USER=NULL, DATA_CHG_DATE=NULL, DATA_CHG_TIME=NULL, DATA_APV_USER=NULL, DATA_APV_DATE=NULL, DATA_APV_TIME=NULL, RSV1='d00790f8087b4d299c206a54d1de6f4c', RSV2=NULL, RSV3=NULL, RSV4='mbtrule', RSV5='1' WHERE DATA_ID='MBT_410R4100110R410010901R410010202';
UPDATE GP_QC_RULE SET DATA_DATE='20190709', CORP_ID='TESTCORP', ORG_ID='72', GROUP_ID='002', INQ_ORG_ID=NULL, INQ_GROUP_ID=NULL, RULE_DESC='若“账户类型”为“R4”，不应包含初始债权说明段。', RULE_MESSAGE='若“账户类型”为“R4”，不应包含初始债权说明段。', RULE_TYPE=NULL, RULE_SOURCE='BUSI', FIELD='DATA_ID', FIELD_NAME=NULL, TRIMMABLE=NULL, NULLABLE='Y', TYPE_ID=NULL, ENCODING=NULL, MIN_LENGTH=NULL, MAX_LENGTH=NULL, MIN_VALUE=NULL, MAX_VALUE=NULL, MAX_PRECISION=NULL, MIN_SCALE=NULL, MAX_SCALE=NULL, ENUMERATION=NULL, PATTERN=NULL, IN_ENTITY=NULL, IN_FIELD=NULL, "SQL"=NULL, SQL_EXTRA_KEY=NULL, SCRIPT='if (!isEmpty(B_ACCT_TYPE) && B_ACCT_TYPE == "R4" && B_RPT_DATE_CODE == "33") {
    if (IS_RPT.substring(3,4) == "0") {
        return true
    }
    return false
}
return true', BEAN=NULL, CHECK_FLAG=NULL, CHECK_DESC=NULL, CHECK_ERR_TYPE=NULL, NEXT_ACTION=NULL, DATA_STATUS=NULL, DATA_FLAG=NULL, DATA_OP=NULL, DATA_SOURCE=NULL, DATA_VERSION=NULL, DATA_REJ_DESC=NULL, DATA_DEL_DESC=NULL, DATA_CRT_USER=NULL, DATA_CRT_DATE=NULL, DATA_CRT_TIME=NULL, DATA_CHG_USER=NULL, DATA_CHG_DATE=NULL, DATA_CHG_TIME=NULL, DATA_APV_USER=NULL, DATA_APV_DATE=NULL, DATA_APV_TIME=NULL, RSV1='94ef7d2fabfd482f919d2d8f796e6e34', RSV2=NULL, RSV3=NULL, RSV4='mbtrule', RSV5='1' WHERE DATA_ID='MBT_410R4100110R410010905R410010202';
UPDATE GP_QC_RULE SET DATA_DATE='20190709', CORP_ID='TESTCORP', ORG_ID='72', GROUP_ID='002', INQ_ORG_ID=NULL, INQ_GROUP_ID=NULL, RULE_DESC='对于 D1/D2/R1/R4 账户，信息记录中“当前逾期本金”必须小于等于“当前逾期总额”。', RULE_MESSAGE='对于 D1/D2/R1/R4 账户，信息记录中“当前逾期本金”必须小于等于“当前逾期总额”。', RULE_TYPE=NULL, RULE_SOURCE='BUSI', FIELD='DATA_ID', FIELD_NAME=NULL, TRIMMABLE=NULL, NULLABLE='Y', TYPE_ID=NULL, ENCODING=NULL, MIN_LENGTH=NULL, MAX_LENGTH=NULL, MIN_VALUE=NULL, MAX_VALUE=NULL, MAX_PRECISION=NULL, MIN_SCALE=NULL, MAX_SCALE=NULL, ENUMERATION=NULL, PATTERN=NULL, IN_ENTITY=NULL, IN_FIELD=NULL, "SQL"=NULL, SQL_EXTRA_KEY=NULL, SCRIPT='if (!isEmpty(B_ACCT_TYPE) && (B_ACCT_TYPE == "D1" || B_ACCT_TYPE == "D2" || B_ACCT_TYPE == "R1" || B_ACCT_TYPE == "R4") ){

    if (H_OVERD_PRINC.toBigDecimal()<=H_TOT_OVERD.toBigDecimal() ) {
        return true
    }
    return false
}
return true', BEAN=NULL, CHECK_FLAG=NULL, CHECK_DESC=NULL, CHECK_ERR_TYPE=NULL, NEXT_ACTION=NULL, DATA_STATUS=NULL, DATA_FLAG=NULL, DATA_OP=NULL, DATA_SOURCE=NULL, DATA_VERSION=NULL, DATA_REJ_DESC=NULL, DATA_DEL_DESC=NULL, DATA_CRT_USER=NULL, DATA_CRT_DATE=NULL, DATA_CRT_TIME=NULL, DATA_CHG_USER=NULL, DATA_CHG_DATE=NULL, DATA_CHG_TIME=NULL, DATA_APV_USER=NULL, DATA_APV_DATE=NULL, DATA_APV_TIME=NULL, RSV1='9b12e0be86e843eea2316a351d91d496', RSV2=NULL, RSV3=NULL, RSV4='mbtrule', RSV5='1' WHERE DATA_ID='MBT_410I4100H06I4100H0601I4100H0602';
UPDATE GP_QC_RULE SET DATA_DATE='20190709', CORP_ID='TESTCORP', ORG_ID='72', GROUP_ID='002', INQ_ORG_ID=NULL, INQ_GROUP_ID=NULL, RULE_DESC='“还款方式”的代码表必须和“账户类型”相匹配。 只有账户类型为“D1”、“R1”时，还款方式可以为“90-汇总报送，不区分还款方式”。', RULE_MESSAGE='“还款方式”的代码表必须和“账户类型”相匹配。 只有账户类型为“D1”、“R1”时，还款方式可以为“90-汇总报送，不区分还款方式”。', RULE_TYPE=NULL, RULE_SOURCE='BUSI', FIELD='DATA_ID', FIELD_NAME=NULL, TRIMMABLE=NULL, NULLABLE='Y', TYPE_ID=NULL, ENCODING=NULL, MIN_LENGTH=NULL, MAX_LENGTH=NULL, MIN_VALUE=NULL, MAX_VALUE=NULL, MAX_PRECISION=NULL, MIN_SCALE=NULL, MAX_SCALE=NULL, ENUMERATION=NULL, PATTERN=NULL, IN_ENTITY=NULL, IN_FIELD=NULL, "SQL"=NULL, SQL_EXTRA_KEY=NULL, SCRIPT='if (!isEmpty(B_ACCT_TYPE) && (B_ACCT_TYPE == "D2" || B_ACCT_TYPE == "R4" || B_ACCT_TYPE == "C1") ){
    if (H_RPMT_TYPE != "90") {
        return true
    }
    return false
}
return true', BEAN=NULL, CHECK_FLAG=NULL, CHECK_DESC=NULL, CHECK_ERR_TYPE=NULL, NEXT_ACTION=NULL, DATA_STATUS=NULL, DATA_FLAG=NULL, DATA_OP=NULL, DATA_SOURCE=NULL, DATA_VERSION=NULL, DATA_REJ_DESC=NULL, DATA_DEL_DESC=NULL, DATA_CRT_USER=NULL, DATA_CRT_DATE=NULL, DATA_CRT_TIME=NULL, DATA_CHG_USER=NULL, DATA_CHG_DATE=NULL, DATA_CHG_TIME=NULL, DATA_APV_USER=NULL, DATA_APV_DATE=NULL, DATA_APV_TIME=NULL, RSV1='460d21babb054849af85cd8cc24f9489', RSV2=NULL, RSV3=NULL, RSV4='mbtrule', RSV5='1' WHERE DATA_ID='MBT_410I4100A06I4100A0601I4100A0602';
UPDATE GP_QC_RULE SET DATA_DATE='20200120', CORP_ID='TESTCORP', ORG_ID='72', GROUP_ID='002', INQ_ORG_ID=NULL, INQ_GROUP_ID=NULL, RULE_DESC='当账户类型为“C1”时，借贷业务大类只能为“51-资产处置”、“41-垫款”。', RULE_MESSAGE='当账户类型为“C1”时，借贷业务大类只能为“51-资产处置”、“41-垫款”。', RULE_TYPE=NULL, RULE_SOURCE='BUSI', FIELD='DATA_ID', FIELD_NAME=NULL, TRIMMABLE=NULL, NULLABLE='Y', TYPE_ID=NULL, ENCODING=NULL, MIN_LENGTH=NULL, MAX_LENGTH=NULL, MIN_VALUE=NULL, MAX_VALUE=NULL, MAX_PRECISION=NULL, MIN_SCALE=NULL, MAX_SCALE=NULL, ENUMERATION=NULL, PATTERN=NULL, IN_ENTITY=NULL, IN_FIELD=NULL, "SQL"=NULL, SQL_EXTRA_KEY=NULL, SCRIPT='if (!isEmpty(B_ACCT_TYPE) && B_ACCT_TYPE == "C1") {
    if (C_BUSI_LINES==''51'' || C_BUSI_LINES==''41'') {
        return true
    }
    return false
}
return true', BEAN=NULL, CHECK_FLAG=NULL, CHECK_DESC=NULL, CHECK_ERR_TYPE=NULL, NEXT_ACTION=NULL, DATA_STATUS=NULL, DATA_FLAG=NULL, DATA_OP=NULL, DATA_SOURCE=NULL, DATA_VERSION=NULL, DATA_REJ_DESC=NULL, DATA_DEL_DESC=NULL, DATA_CRT_USER=NULL, DATA_CRT_DATE=NULL, DATA_CRT_TIME=NULL, DATA_CHG_USER=NULL, DATA_CHG_DATE=NULL, DATA_CHG_TIME=NULL, DATA_APV_USER=NULL, DATA_APV_DATE=NULL, DATA_APV_TIME=NULL, RSV1='0c7628073333434b95cb907ac16aaaa2', RSV2=NULL, RSV3=NULL, RSV4='mbtrule', RSV5='1' WHERE DATA_ID='MBT_410I4100A04';
UPDATE GP_QC_RULE SET DATA_DATE='20190709', CORP_ID='TESTCORP', ORG_ID='72', GROUP_ID='002', INQ_ORG_ID=NULL, INQ_GROUP_ID=NULL, RULE_DESC='当“报送时点说明代码”为“41-五级分类调整”时，对于“账户类型”为“D2”，应包含基础段、还款表现信息段。', RULE_MESSAGE='当“报送时点说明代码”为“41-五级分类调整”时，对于“账户类型”为“D2”，应包含基础段、还款表现信息段。', RULE_TYPE=NULL, RULE_SOURCE='BUSI', FIELD='DATA_ID', FIELD_NAME=NULL, TRIMMABLE=NULL, NULLABLE='Y', TYPE_ID=NULL, ENCODING=NULL, MIN_LENGTH=NULL, MAX_LENGTH=NULL, MIN_VALUE=NULL, MAX_VALUE=NULL, MAX_PRECISION=NULL, MIN_SCALE=NULL, MAX_SCALE=NULL, ENUMERATION=NULL, PATTERN=NULL, IN_ENTITY=NULL, IN_FIELD=NULL, "SQL"=NULL, SQL_EXTRA_KEY=NULL, SCRIPT='if (!isEmpty(B_ACCT_TYPE) && B_ACCT_TYPE == "D2" && B_RPT_DATE_CODE == "41") {
    if (IS_RPT.substring(0,1) == "1" && IS_RPT.substring(4,5) == "1") {
        return true
    }
    return false
}
return true', BEAN=NULL, CHECK_FLAG=NULL, CHECK_DESC=NULL, CHECK_ERR_TYPE=NULL, NEXT_ACTION=NULL, DATA_STATUS=NULL, DATA_FLAG=NULL, DATA_OP=NULL, DATA_SOURCE=NULL, DATA_VERSION=NULL, DATA_REJ_DESC=NULL, DATA_DEL_DESC=NULL, DATA_CRT_USER=NULL, DATA_CRT_DATE=NULL, DATA_CRT_TIME=NULL, DATA_CHG_USER=NULL, DATA_CHG_DATE=NULL, DATA_CHG_TIME=NULL, DATA_APV_USER=NULL, DATA_APV_DATE=NULL, DATA_APV_TIME=NULL, RSV1='5b3aa704678c4b06a17de6402fb55b3c', RSV2=NULL, RSV3=NULL, RSV4='mbtrule', RSV5='1' WHERE DATA_ID='MBT_410R4100111R410011103R410010302';
UPDATE GP_QC_RULE SET DATA_DATE='20190709', CORP_ID='TESTCORP', ORG_ID='72', GROUP_ID='002', INQ_ORG_ID=NULL, INQ_GROUP_ID=NULL, RULE_DESC='当“报送时点说明代码”为“41-五级分类调整”时，若“账户类型”为“D1”，不应包含初始债权说明段。', RULE_MESSAGE='当“报送时点说明代码”为“41-五级分类调整”时，若“账户类型”为“D1”，不应包含初始债权说明段。', RULE_TYPE=NULL, RULE_SOURCE='BUSI', FIELD='DATA_ID', FIELD_NAME=NULL, TRIMMABLE=NULL, NULLABLE='Y', TYPE_ID=NULL, ENCODING=NULL, MIN_LENGTH=NULL, MAX_LENGTH=NULL, MIN_VALUE=NULL, MAX_VALUE=NULL, MAX_PRECISION=NULL, MIN_SCALE=NULL, MAX_SCALE=NULL, ENUMERATION=NULL, PATTERN=NULL, IN_ENTITY=NULL, IN_FIELD=NULL, "SQL"=NULL, SQL_EXTRA_KEY=NULL, SCRIPT='if (!isEmpty(B_ACCT_TYPE) && B_ACCT_TYPE == "D1" && B_RPT_DATE_CODE == "41") {
    if (IS_RPT.substring(3,4) == "0") {
        return true
    }
    return false
}
return true', BEAN=NULL, CHECK_FLAG=NULL, CHECK_DESC=NULL, CHECK_ERR_TYPE=NULL, NEXT_ACTION=NULL, DATA_STATUS=NULL, DATA_FLAG=NULL, DATA_OP=NULL, DATA_SOURCE=NULL, DATA_VERSION=NULL, DATA_REJ_DESC=NULL, DATA_DEL_DESC=NULL, DATA_CRT_USER=NULL, DATA_CRT_DATE=NULL, DATA_CRT_TIME=NULL, DATA_CHG_USER=NULL, DATA_CHG_DATE=NULL, DATA_CHG_TIME=NULL, DATA_APV_USER=NULL, DATA_APV_DATE=NULL, DATA_APV_TIME=NULL, RSV1='51e10a35dfd5414a8aa665dcc1a3561c', RSV2=NULL, RSV3=NULL, RSV4='mbtrule', RSV5='1' WHERE DATA_ID='MBT_410R4100112R410011101R410010202';
UPDATE GP_QC_RULE SET DATA_DATE='20190709', CORP_ID='TESTCORP', ORG_ID='72', GROUP_ID='002', INQ_ORG_ID=NULL, INQ_GROUP_ID=NULL, RULE_DESC='当“报送时点说明代码”为“41-五级分类调整”时，若“账户类型”为“R1”，不适用于五级分类调整时点。', RULE_MESSAGE='当“报送时点说明代码”为“41-五级分类调整”时，若“账户类型”为“R1”，不适用于五级分类调整时点。', RULE_TYPE=NULL, RULE_SOURCE='BUSI', FIELD='DATA_ID', FIELD_NAME=NULL, TRIMMABLE=NULL, NULLABLE='Y', TYPE_ID=NULL, ENCODING=NULL, MIN_LENGTH=NULL, MAX_LENGTH=NULL, MIN_VALUE=NULL, MAX_VALUE=NULL, MAX_PRECISION=NULL, MIN_SCALE=NULL, MAX_SCALE=NULL, ENUMERATION=NULL, PATTERN=NULL, IN_ENTITY=NULL, IN_FIELD=NULL, "SQL"=NULL, SQL_EXTRA_KEY=NULL, SCRIPT='if (!isEmpty(B_ACCT_TYPE) && B_ACCT_TYPE == "R1") {
    if (B_RPT_DATE_CODE != "41") {
        return true
    }
    return false
}
return true', BEAN=NULL, CHECK_FLAG=NULL, CHECK_DESC=NULL, CHECK_ERR_TYPE=NULL, NEXT_ACTION=NULL, DATA_STATUS=NULL, DATA_FLAG=NULL, DATA_OP=NULL, DATA_SOURCE=NULL, DATA_VERSION=NULL, DATA_REJ_DESC=NULL, DATA_DEL_DESC=NULL, DATA_CRT_USER=NULL, DATA_CRT_DATE=NULL, DATA_CRT_TIME=NULL, DATA_CHG_USER=NULL, DATA_CHG_DATE=NULL, DATA_CHG_TIME=NULL, DATA_APV_USER=NULL, DATA_APV_DATE=NULL, DATA_APV_TIME=NULL, RSV1='0588bf6673a84025879a76641db9f381', RSV2=NULL, RSV3=NULL, RSV4='mbtrule', RSV5='1' WHERE DATA_ID='MBT_410R4100112R410010707R410011102';
UPDATE GP_QC_RULE SET DATA_DATE='20190709', CORP_ID='TESTCORP', ORG_ID='72', GROUP_ID='002', INQ_ORG_ID=NULL, INQ_GROUP_ID=NULL, RULE_DESC='当“报送时点说明代码”为“42-展期发生”时，若“账户类型”为“R4”，应包含基础段、还款表现信息段、特定交易说明段。', RULE_MESSAGE='当“报送时点说明代码”为“42-展期发生”时，若“账户类型”为“R4”，应包含基础段、还款表现信息段、特定交易说明段。', RULE_TYPE=NULL, RULE_SOURCE='BUSI', FIELD='DATA_ID', FIELD_NAME=NULL, TRIMMABLE=NULL, NULLABLE='Y', TYPE_ID=NULL, ENCODING=NULL, MIN_LENGTH=NULL, MAX_LENGTH=NULL, MIN_VALUE=NULL, MAX_VALUE=NULL, MAX_PRECISION=NULL, MIN_SCALE=NULL, MAX_SCALE=NULL, ENUMERATION=NULL, PATTERN=NULL, IN_ENTITY=NULL, IN_FIELD=NULL, "SQL"=NULL, SQL_EXTRA_KEY=NULL, SCRIPT='if (!isEmpty(B_ACCT_TYPE) && B_ACCT_TYPE == "R4" && B_RPT_DATE_CODE == "42") {
    if (IS_RPT.substring(0,1) == "1" && IS_RPT.substring(4,5) == "1" && IS_RPT.substring(8,9) == "1") {
        return true
    }
    return false
}
return true', BEAN=NULL, CHECK_FLAG=NULL, CHECK_DESC=NULL, CHECK_ERR_TYPE=NULL, NEXT_ACTION=NULL, DATA_STATUS=NULL, DATA_FLAG=NULL, DATA_OP=NULL, DATA_SOURCE=NULL, DATA_VERSION=NULL, DATA_REJ_DESC=NULL, DATA_DEL_DESC=NULL, DATA_CRT_USER=NULL, DATA_CRT_DATE=NULL, DATA_CRT_TIME=NULL, DATA_CHG_USER=NULL, DATA_CHG_DATE=NULL, DATA_CHG_TIME=NULL, DATA_APV_USER=NULL, DATA_APV_DATE=NULL, DATA_APV_TIME=NULL, RSV1='66ce1a249a1e44049df88fd9084874b4', RSV2=NULL, RSV3=NULL, RSV4='mbtrule', RSV5='1' WHERE DATA_ID='MBT_410R4100113R410011305R410011302';
UPDATE GP_QC_RULE SET DATA_DATE='20190709', CORP_ID='TESTCORP', ORG_ID='72', GROUP_ID='002', INQ_ORG_ID=NULL, INQ_GROUP_ID=NULL, RULE_DESC='当“报送时点说明代码”为“42-展期发生”时，若“账户类型”为“D1”且“分次放款标识”为“0”，则不应包含授信额度信息段。', RULE_MESSAGE='当“报送时点说明代码”为“42-展期发生”时，若“账户类型”为“D1”且“分次放款标识”为“0”，则不应包含授信额度信息段。', RULE_TYPE=NULL, RULE_SOURCE='BUSI', FIELD='DATA_ID', FIELD_NAME=NULL, TRIMMABLE=NULL, NULLABLE='Y', TYPE_ID=NULL, ENCODING=NULL, MIN_LENGTH=NULL, MAX_LENGTH=NULL, MIN_VALUE=NULL, MAX_VALUE=NULL, MAX_PRECISION=NULL, MIN_SCALE=NULL, MAX_SCALE=NULL, ENUMERATION=NULL, PATTERN=NULL, IN_ENTITY=NULL, IN_FIELD=NULL, "SQL"=NULL, SQL_EXTRA_KEY=NULL, SCRIPT='if (!isEmpty(B_ACCT_TYPE) && B_ACCT_TYPE == "D1" && B_RPT_DATE_CODE == "42" && C_FLAG == "0") {
    if (IS_RPT.substring(2,3) == "0") {
        return true
    }
    return false
}
return true', BEAN=NULL, CHECK_FLAG=NULL, CHECK_DESC=NULL, CHECK_ERR_TYPE=NULL, NEXT_ACTION=NULL, DATA_STATUS=NULL, DATA_FLAG=NULL, DATA_OP=NULL, DATA_SOURCE=NULL, DATA_VERSION=NULL, DATA_REJ_DESC=NULL, DATA_DEL_DESC=NULL, DATA_CRT_USER=NULL, DATA_CRT_DATE=NULL, DATA_CRT_TIME=NULL, DATA_CHG_USER=NULL, DATA_CHG_DATE=NULL, DATA_CHG_TIME=NULL, DATA_APV_USER=NULL, DATA_APV_DATE=NULL, DATA_APV_TIME=NULL, RSV1='58d29e98f0004cdbbe89f5707e2b2f69', RSV2=NULL, RSV3=NULL, RSV4='mbtrule', RSV5='1' WHERE DATA_ID='MBT_410R4100114R410011401R410010204';
UPDATE GP_QC_RULE SET DATA_DATE='20190709', CORP_ID='TESTCORP', ORG_ID='72', GROUP_ID='002', INQ_ORG_ID=NULL, INQ_GROUP_ID=NULL, RULE_DESC='当“报送时点说明代码”为“42-展期发生”时，若“账户类型”为“C1”，不适用展期发生报送时点。', RULE_MESSAGE='当“报送时点说明代码”为“42-展期发生”时，若“账户类型”为“C1”，不适用展期发生报送时点。', RULE_TYPE=NULL, RULE_SOURCE='BUSI', FIELD='DATA_ID', FIELD_NAME=NULL, TRIMMABLE=NULL, NULLABLE='Y', TYPE_ID=NULL, ENCODING=NULL, MIN_LENGTH=NULL, MAX_LENGTH=NULL, MIN_VALUE=NULL, MAX_VALUE=NULL, MAX_PRECISION=NULL, MIN_SCALE=NULL, MAX_SCALE=NULL, ENUMERATION=NULL, PATTERN=NULL, IN_ENTITY=NULL, IN_FIELD=NULL, "SQL"=NULL, SQL_EXTRA_KEY=NULL, SCRIPT='if (!isEmpty(B_ACCT_TYPE) && B_ACCT_TYPE == "C1") {
    if (B_RPT_DATE_CODE != "42") {
        return true
    }
    return false
}
return true', BEAN=NULL, CHECK_FLAG=NULL, CHECK_DESC=NULL, CHECK_ERR_TYPE=NULL, NEXT_ACTION=NULL, DATA_STATUS=NULL, DATA_FLAG=NULL, DATA_OP=NULL, DATA_SOURCE=NULL, DATA_VERSION=NULL, DATA_REJ_DESC=NULL, DATA_DEL_DESC=NULL, DATA_CRT_USER=NULL, DATA_CRT_DATE=NULL, DATA_CRT_TIME=NULL, DATA_CHG_USER=NULL, DATA_CHG_DATE=NULL, DATA_CHG_TIME=NULL, DATA_APV_USER=NULL, DATA_APV_DATE=NULL, DATA_APV_TIME=NULL, RSV1='019c5482c38b4e789bea3758ada47e56', RSV2=NULL, RSV3=NULL, RSV4='mbtrule', RSV5='1' WHERE DATA_ID='MBT_410R4100114R410011307R410011304';
UPDATE GP_QC_RULE SET DATA_DATE='20190709', CORP_ID='TESTCORP', ORG_ID='72', GROUP_ID='002', INQ_ORG_ID=NULL, INQ_GROUP_ID=NULL, RULE_DESC='当“报送时点说明代码”为“49-其他报送日”时，若“账户类型”为“R4”，应包含基础段、还款表现信息段。', RULE_MESSAGE='当“报送时点说明代码”为“49-其他报送日”时，若“账户类型”为“R4”，应包含基础段、还款表现信息段。', RULE_TYPE=NULL, RULE_SOURCE='BUSI', FIELD='DATA_ID', FIELD_NAME=NULL, TRIMMABLE=NULL, NULLABLE='Y', TYPE_ID=NULL, ENCODING=NULL, MIN_LENGTH=NULL, MAX_LENGTH=NULL, MIN_VALUE=NULL, MAX_VALUE=NULL, MAX_PRECISION=NULL, MIN_SCALE=NULL, MAX_SCALE=NULL, ENUMERATION=NULL, PATTERN=NULL, IN_ENTITY=NULL, IN_FIELD=NULL, "SQL"=NULL, SQL_EXTRA_KEY=NULL, SCRIPT='if (!isEmpty(B_ACCT_TYPE) && B_ACCT_TYPE == "R4" && B_RPT_DATE_CODE == "49") {
    if (IS_RPT.substring(0,1) == "1" && IS_RPT.substring(4,5) == "1") {
        return true
    }
    return false
}
return true', BEAN=NULL, CHECK_FLAG=NULL, CHECK_DESC=NULL, CHECK_ERR_TYPE=NULL, NEXT_ACTION=NULL, DATA_STATUS=NULL, DATA_FLAG=NULL, DATA_OP=NULL, DATA_SOURCE=NULL, DATA_VERSION=NULL, DATA_REJ_DESC=NULL, DATA_DEL_DESC=NULL, DATA_CRT_USER=NULL, DATA_CRT_DATE=NULL, DATA_CRT_TIME=NULL, DATA_CHG_USER=NULL, DATA_CHG_DATE=NULL, DATA_CHG_TIME=NULL, DATA_APV_USER=NULL, DATA_APV_DATE=NULL, DATA_APV_TIME=NULL, RSV1='9ee578451e9e4b01bcdcff2762e1c9e0', RSV2=NULL, RSV3=NULL, RSV4='mbtrule', RSV5='1' WHERE DATA_ID='MBT_410R4100115R410011507R410010302';
UPDATE GP_QC_RULE SET DATA_DATE='20190709', CORP_ID='TESTCORP', ORG_ID='72', GROUP_ID='002', INQ_ORG_ID=NULL, INQ_GROUP_ID=NULL, RULE_DESC='当“报送时点说明代码”为“49-其他报送日”时，若“账户类型”为“D2”，不应包含抵质押物信息段、授信额度信息段。', RULE_MESSAGE='当“报送时点说明代码”为“49-其他报送日”时，若“账户类型”为“D2”，不应包含抵质押物信息段、授信额度信息段。', RULE_TYPE=NULL, RULE_SOURCE='BUSI', FIELD='DATA_ID', FIELD_NAME=NULL, TRIMMABLE=NULL, NULLABLE='Y', TYPE_ID=NULL, ENCODING=NULL, MIN_LENGTH=NULL, MAX_LENGTH=NULL, MIN_VALUE=NULL, MAX_VALUE=NULL, MAX_PRECISION=NULL, MIN_SCALE=NULL, MAX_SCALE=NULL, ENUMERATION=NULL, PATTERN=NULL, IN_ENTITY=NULL, IN_FIELD=NULL, "SQL"=NULL, SQL_EXTRA_KEY=NULL, SCRIPT='if (!isEmpty(B_ACCT_TYPE) && B_ACCT_TYPE == "D2" && B_RPT_DATE_CODE == "49") {
    if (IS_RPT.substring(2,3) == "0" && IS_RPT.substring(7,8) == "0") {
        return true
    }
    return false
}
return true', BEAN=NULL, CHECK_FLAG=NULL, CHECK_DESC=NULL, CHECK_ERR_TYPE=NULL, NEXT_ACTION=NULL, DATA_STATUS=NULL, DATA_FLAG=NULL, DATA_OP=NULL, DATA_SOURCE=NULL, DATA_VERSION=NULL, DATA_REJ_DESC=NULL, DATA_DEL_DESC=NULL, DATA_CRT_USER=NULL, DATA_CRT_DATE=NULL, DATA_CRT_TIME=NULL, DATA_CHG_USER=NULL, DATA_CHG_DATE=NULL, DATA_CHG_TIME=NULL, DATA_APV_USER=NULL, DATA_APV_DATE=NULL, DATA_APV_TIME=NULL, RSV1='0740a0b472f74a8e818f3cad60795fbc', RSV2=NULL, RSV3=NULL, RSV4='mbtrule', RSV5='1' WHERE DATA_ID='MBT_410R4100116R410011503R410010206';
UPDATE GP_QC_RULE SET DATA_DATE='20190709', CORP_ID='TESTCORP', ORG_ID='72', GROUP_ID='002', INQ_ORG_ID=NULL, INQ_GROUP_ID=NULL, RULE_DESC='当“报送时点说明代码”为“31-开户后放款”时，若“账户类型”为“D1”，且“分次放款标识”为“0”、“1”，则不适用放款日报送时点。', RULE_MESSAGE='当“报送时点说明代码”为“31-开户后放款”时，若“账户类型”为“D1”，且“分次放款标识”为“0”、“1”，则不适用放款日报送时点。', RULE_TYPE=NULL, RULE_SOURCE='BUSI', FIELD='DATA_ID', FIELD_NAME=NULL, TRIMMABLE=NULL, NULLABLE='Y', TYPE_ID=NULL, ENCODING=NULL, MIN_LENGTH=NULL, MAX_LENGTH=NULL, MIN_VALUE=NULL, MAX_VALUE=NULL, MAX_PRECISION=NULL, MIN_SCALE=NULL, MAX_SCALE=NULL, ENUMERATION=NULL, PATTERN=NULL, IN_ENTITY=NULL, IN_FIELD=NULL, "SQL"=NULL, SQL_EXTRA_KEY=NULL, SCRIPT='if (!isEmpty(B_ACCT_TYPE) && B_ACCT_TYPE == "D1" && (C_FLAG == "0" || C_FLAG == "1")) {
    if (B_RPT_DATE_CODE != "31") {
        return true
    }
    return false
}
return true', BEAN=NULL, CHECK_FLAG=NULL, CHECK_DESC=NULL, CHECK_ERR_TYPE=NULL, NEXT_ACTION=NULL, DATA_STATUS=NULL, DATA_FLAG=NULL, DATA_OP=NULL, DATA_SOURCE=NULL, DATA_VERSION=NULL, DATA_REJ_DESC=NULL, DATA_DEL_DESC=NULL, DATA_CRT_USER=NULL, DATA_CRT_DATE=NULL, DATA_CRT_TIME=NULL, DATA_CHG_USER=NULL, DATA_CHG_DATE=NULL, DATA_CHG_TIME=NULL, DATA_APV_USER=NULL, DATA_APV_DATE=NULL, DATA_APV_TIME=NULL, RSV1='434dd0981a6e4cb08d11518c19e530fa', RSV2=NULL, RSV3=NULL, RSV4='mbtrule', RSV5='1' WHERE DATA_ID='MBT_410R4100105R410010503R410010504';
UPDATE GP_QC_RULE SET DATA_DATE='20190709', CORP_ID='TESTCORP', ORG_ID='72', GROUP_ID='002', INQ_ORG_ID=NULL, INQ_GROUP_ID=NULL, RULE_DESC='当“报送时点说明代码”为“31-开户后放款”时，若“账户类型”为“C1”，不适用放款日报送时点。', RULE_MESSAGE='当“报送时点说明代码”为“31-开户后放款”时，若“账户类型”为“C1”，不适用放款日报送时点。', RULE_TYPE=NULL, RULE_SOURCE='BUSI', FIELD='DATA_ID', FIELD_NAME=NULL, TRIMMABLE=NULL, NULLABLE='Y', TYPE_ID=NULL, ENCODING=NULL, MIN_LENGTH=NULL, MAX_LENGTH=NULL, MIN_VALUE=NULL, MAX_VALUE=NULL, MAX_PRECISION=NULL, MIN_SCALE=NULL, MAX_SCALE=NULL, ENUMERATION=NULL, PATTERN=NULL, IN_ENTITY=NULL, IN_FIELD=NULL, "SQL"=NULL, SQL_EXTRA_KEY=NULL, SCRIPT='if (!isEmpty(B_ACCT_TYPE) && B_ACCT_TYPE == "C1") {
    if (B_RPT_DATE_CODE != "31") {
        return true
    }
    return false
}
return true', BEAN=NULL, CHECK_FLAG=NULL, CHECK_DESC=NULL, CHECK_ERR_TYPE=NULL, NEXT_ACTION=NULL, DATA_STATUS=NULL, DATA_FLAG=NULL, DATA_OP=NULL, DATA_SOURCE=NULL, DATA_VERSION=NULL, DATA_REJ_DESC=NULL, DATA_DEL_DESC=NULL, DATA_CRT_USER=NULL, DATA_CRT_DATE=NULL, DATA_CRT_TIME=NULL, DATA_CHG_USER=NULL, DATA_CHG_DATE=NULL, DATA_CHG_TIME=NULL, DATA_APV_USER=NULL, DATA_APV_DATE=NULL, DATA_APV_TIME=NULL, RSV1='e666ab608f52425fb00d81f755f74ed0', RSV2=NULL, RSV3=NULL, RSV4='mbtrule', RSV5='1' WHERE DATA_ID='MBT_410R4100106R410010509R410010504';
UPDATE GP_QC_RULE SET DATA_DATE='20190709', CORP_ID='TESTCORP', ORG_ID='72', GROUP_ID='002', INQ_ORG_ID=NULL, INQ_GROUP_ID=NULL, RULE_DESC='当“报送时点说明代码”为“32-约定还款日结算”时，若“账户类型”为“R1”，不适用约定还款日报送时点。', RULE_MESSAGE='当“报送时点说明代码”为“32-约定还款日结算”时，若“账户类型”为“R1”，不适用约定还款日报送时点。', RULE_TYPE=NULL, RULE_SOURCE='BUSI', FIELD='DATA_ID', FIELD_NAME=NULL, TRIMMABLE=NULL, NULLABLE='Y', TYPE_ID=NULL, ENCODING=NULL, MIN_LENGTH=NULL, MAX_LENGTH=NULL, MIN_VALUE=NULL, MAX_VALUE=NULL, MAX_PRECISION=NULL, MIN_SCALE=NULL, MAX_SCALE=NULL, ENUMERATION=NULL, PATTERN=NULL, IN_ENTITY=NULL, IN_FIELD=NULL, "SQL"=NULL, SQL_EXTRA_KEY=NULL, SCRIPT='if (!isEmpty(B_ACCT_TYPE) && B_ACCT_TYPE == "R1") {
    if (B_RPT_DATE_CODE != "32") {
        return true
    }
    return false
}
return true', BEAN=NULL, CHECK_FLAG=NULL, CHECK_DESC=NULL, CHECK_ERR_TYPE=NULL, NEXT_ACTION=NULL, DATA_STATUS=NULL, DATA_FLAG=NULL, DATA_OP=NULL, DATA_SOURCE=NULL, DATA_VERSION=NULL, DATA_REJ_DESC=NULL, DATA_DEL_DESC=NULL, DATA_CRT_USER=NULL, DATA_CRT_DATE=NULL, DATA_CRT_TIME=NULL, DATA_CHG_USER=NULL, DATA_CHG_DATE=NULL, DATA_CHG_TIME=NULL, DATA_APV_USER=NULL, DATA_APV_DATE=NULL, DATA_APV_TIME=NULL, RSV1='079e3a7f6852454c957bfbcaceb43cb5', RSV2=NULL, RSV3=NULL, RSV4='mbtrule', RSV5='1' WHERE DATA_ID='MBT_410R4100107R410010707R410010702';
UPDATE GP_QC_RULE SET DATA_DATE='20190709', CORP_ID='TESTCORP', ORG_ID='72', GROUP_ID='002', INQ_ORG_ID=NULL, INQ_GROUP_ID=NULL, RULE_DESC='当“报送时点说明代码”为“32-约定还款日结算”时，若“账户类型”为“D2”，不应包含抵质押物信息段、授信额度信息段。', RULE_MESSAGE='当“报送时点说明代码”为“32-约定还款日结算”时，若“账户类型”为“D2”，不应包含抵质押物信息段、授信额度信息段。', RULE_TYPE=NULL, RULE_SOURCE='BUSI', FIELD='DATA_ID', FIELD_NAME=NULL, TRIMMABLE=NULL, NULLABLE='Y', TYPE_ID=NULL, ENCODING=NULL, MIN_LENGTH=NULL, MAX_LENGTH=NULL, MIN_VALUE=NULL, MAX_VALUE=NULL, MAX_PRECISION=NULL, MIN_SCALE=NULL, MAX_SCALE=NULL, ENUMERATION=NULL, PATTERN=NULL, IN_ENTITY=NULL, IN_FIELD=NULL, "SQL"=NULL, SQL_EXTRA_KEY=NULL, SCRIPT='if (!isEmpty(B_ACCT_TYPE) && B_ACCT_TYPE == "D2" && B_RPT_DATE_CODE == "32") {
    if (IS_RPT.substring(2,3) == "0" && IS_RPT.substring(8,9) == "0") {
        return true
    }
    return false
}
return true', BEAN=NULL, CHECK_FLAG=NULL, CHECK_DESC=NULL, CHECK_ERR_TYPE=NULL, NEXT_ACTION=NULL, DATA_STATUS=NULL, DATA_FLAG=NULL, DATA_OP=NULL, DATA_SOURCE=NULL, DATA_VERSION=NULL, DATA_REJ_DESC=NULL, DATA_DEL_DESC=NULL, DATA_CRT_USER=NULL, DATA_CRT_DATE=NULL, DATA_CRT_TIME=NULL, DATA_CHG_USER=NULL, DATA_CHG_DATE=NULL, DATA_CHG_TIME=NULL, DATA_APV_USER=NULL, DATA_APV_DATE=NULL, DATA_APV_TIME=NULL, RSV1='a7f11fdb6f004b8f9bdf7e02446f56b6', RSV2=NULL, RSV3=NULL, RSV4='mbtrule', RSV5='1' WHERE DATA_ID='MBT_410R4100108R410010703R410010206';
UPDATE GP_QC_RULE SET DATA_DATE='20190709', CORP_ID='TESTCORP', ORG_ID='72', GROUP_ID='002', INQ_ORG_ID=NULL, INQ_GROUP_ID=NULL, RULE_DESC='当“报送时点说明代码”为“33-实际还款”时，若“账户类型”为“D1”，应包含基础段、还款表现信息段。', RULE_MESSAGE='当“报送时点说明代码”为“33-实际还款”时，若“账户类型”为“D1”，应包含基础段、还款表现信息段。', RULE_TYPE=NULL, RULE_SOURCE='BUSI', FIELD='DATA_ID', FIELD_NAME=NULL, TRIMMABLE=NULL, NULLABLE='Y', TYPE_ID=NULL, ENCODING=NULL, MIN_LENGTH=NULL, MAX_LENGTH=NULL, MIN_VALUE=NULL, MAX_VALUE=NULL, MAX_PRECISION=NULL, MIN_SCALE=NULL, MAX_SCALE=NULL, ENUMERATION=NULL, PATTERN=NULL, IN_ENTITY=NULL, IN_FIELD=NULL, "SQL"=NULL, SQL_EXTRA_KEY=NULL, SCRIPT='if (!isEmpty(B_ACCT_TYPE) && B_ACCT_TYPE == "D1" && B_RPT_DATE_CODE == "33") {
    if (IS_RPT.substring(0,1) == "1" && IS_RPT.substring(4,5) == "1") {
        return true
    }
    return false
}
return true', BEAN=NULL, CHECK_FLAG=NULL, CHECK_DESC=NULL, CHECK_ERR_TYPE=NULL, NEXT_ACTION=NULL, DATA_STATUS=NULL, DATA_FLAG=NULL, DATA_OP=NULL, DATA_SOURCE=NULL, DATA_VERSION=NULL, DATA_REJ_DESC=NULL, DATA_DEL_DESC=NULL, DATA_CRT_USER=NULL, DATA_CRT_DATE=NULL, DATA_CRT_TIME=NULL, DATA_CHG_USER=NULL, DATA_CHG_DATE=NULL, DATA_CHG_TIME=NULL, DATA_APV_USER=NULL, DATA_APV_DATE=NULL, DATA_APV_TIME=NULL, RSV1='92c17af189d44283b53e107c9f8bb118', RSV2=NULL, RSV3=NULL, RSV4='mbtrule', RSV5='1' WHERE DATA_ID='MBT_410R4100109R410010901R410010302';
UPDATE GP_QC_RULE SET DATA_DATE='20190709', CORP_ID='TESTCORP', ORG_ID='72', GROUP_ID='002', INQ_ORG_ID=NULL, INQ_GROUP_ID=NULL, RULE_DESC='当“报送时点说明代码”为“33-实际还款”时，若“账户类型”为“R1”，不适用实际还款日报送时点。', RULE_MESSAGE='当“报送时点说明代码”为“33-实际还款”时，若“账户类型”为“R1”，不适用实际还款日报送时点。', RULE_TYPE=NULL, RULE_SOURCE='BUSI', FIELD='DATA_ID', FIELD_NAME=NULL, TRIMMABLE=NULL, NULLABLE='Y', TYPE_ID=NULL, ENCODING=NULL, MIN_LENGTH=NULL, MAX_LENGTH=NULL, MIN_VALUE=NULL, MAX_VALUE=NULL, MAX_PRECISION=NULL, MIN_SCALE=NULL, MAX_SCALE=NULL, ENUMERATION=NULL, PATTERN=NULL, IN_ENTITY=NULL, IN_FIELD=NULL, "SQL"=NULL, SQL_EXTRA_KEY=NULL, SCRIPT='if (!isEmpty(B_ACCT_TYPE) && B_ACCT_TYPE == "R1") {
    if (B_RPT_DATE_CODE != "33") {
        return true
    }
    return false
}
return true', BEAN=NULL, CHECK_FLAG=NULL, CHECK_DESC=NULL, CHECK_ERR_TYPE=NULL, NEXT_ACTION=NULL, DATA_STATUS=NULL, DATA_FLAG=NULL, DATA_OP=NULL, DATA_SOURCE=NULL, DATA_VERSION=NULL, DATA_REJ_DESC=NULL, DATA_DEL_DESC=NULL, DATA_CRT_USER=NULL, DATA_CRT_DATE=NULL, DATA_CRT_TIME=NULL, DATA_CHG_USER=NULL, DATA_CHG_DATE=NULL, DATA_CHG_TIME=NULL, DATA_APV_USER=NULL, DATA_APV_DATE=NULL, DATA_APV_TIME=NULL, RSV1='0e961c8322034e0496731875a43a01fe', RSV2=NULL, RSV3=NULL, RSV4='mbtrule', RSV5='1' WHERE DATA_ID='MBT_410R4100109R410010707R410010902';
UPDATE GP_QC_RULE SET DATA_DATE='20190709', CORP_ID='TESTCORP', ORG_ID='72', GROUP_ID='002', INQ_ORG_ID=NULL, INQ_GROUP_ID=NULL, RULE_DESC='若“账户类型”为“C1”，不应包含相关还款责任人段、抵质押物信息段、授信额度信息段、初始债权说明段。', RULE_MESSAGE='若“账户类型”为“C1”，不应包含相关还款责任人段、抵质押物信息段、授信额度信息段、初始债权说明段。', RULE_TYPE=NULL, RULE_SOURCE='BUSI', FIELD='DATA_ID', FIELD_NAME=NULL, TRIMMABLE=NULL, NULLABLE='Y', TYPE_ID=NULL, ENCODING=NULL, MIN_LENGTH=NULL, MAX_LENGTH=NULL, MIN_VALUE=NULL, MAX_VALUE=NULL, MAX_PRECISION=NULL, MIN_SCALE=NULL, MAX_SCALE=NULL, ENUMERATION=NULL, PATTERN=NULL, IN_ENTITY=NULL, IN_FIELD=NULL, "SQL"=NULL, SQL_EXTRA_KEY=NULL, SCRIPT='if (!isEmpty(B_ACCT_TYPE) && B_ACCT_TYPE == "C1" && B_RPT_DATE_CODE == "33") {
    if (IS_RPT.substring(2,4) == "00" && IS_RPT.substring(6,8) == "00") {
        return true
    }
    return false
}
return true', BEAN=NULL, CHECK_FLAG=NULL, CHECK_DESC=NULL, CHECK_ERR_TYPE=NULL, NEXT_ACTION=NULL, DATA_STATUS=NULL, DATA_FLAG=NULL, DATA_OP=NULL, DATA_SOURCE=NULL, DATA_VERSION=NULL, DATA_REJ_DESC=NULL, DATA_DEL_DESC=NULL, DATA_CRT_USER=NULL, DATA_CRT_DATE=NULL, DATA_CRT_TIME=NULL, DATA_CHG_USER=NULL, DATA_CHG_DATE=NULL, DATA_CHG_TIME=NULL, DATA_APV_USER=NULL, DATA_APV_DATE=NULL, DATA_APV_TIME=NULL, RSV1='3cc9acaa050544cc8770bf0748d8f2d5', RSV2=NULL, RSV3=NULL, RSV4='mbtrule', RSV5='1' WHERE DATA_ID='MBT_410R4100110R410010907R410010402';
UPDATE GP_QC_RULE SET DATA_DATE='20190709', CORP_ID='TESTCORP', ORG_ID='72', GROUP_ID='002', INQ_ORG_ID=NULL, INQ_GROUP_ID=NULL, RULE_DESC='若“账户类型”为 R1 时，账户“基本信息段”中的“还款方式”必须不为“11”、“12”、“13”、“14”、 “15”、“19”、“21”、“22”、“23”、“29”。', RULE_MESSAGE='若“账户类型”为 R1 时，账户“基本信息段”中的“还款方式”必须不为“11”、“12”、“13”、“14”、 “15”、“19”、“21”、“22”、“23”、“29”。', RULE_TYPE=NULL, RULE_SOURCE='BUSI', FIELD='DATA_ID', FIELD_NAME=NULL, TRIMMABLE=NULL, NULLABLE='Y', TYPE_ID=NULL, ENCODING=NULL, MIN_LENGTH=NULL, MAX_LENGTH=NULL, MIN_VALUE=NULL, MAX_VALUE=NULL, MAX_PRECISION=NULL, MIN_SCALE=NULL, MAX_SCALE=NULL, ENUMERATION=NULL, PATTERN=NULL, IN_ENTITY=NULL, IN_FIELD=NULL, "SQL"=NULL, SQL_EXTRA_KEY=NULL, SCRIPT='if (!isEmpty(B_ACCT_TYPE) && B_ACCT_TYPE == "R1") {
    if (C_REPAY_MODE == "11" || C_REPAY_MODE == "12" || C_REPAY_MODE == "13" || C_REPAY_MODE == "14" || C_REPAY_MODE == "15" || C_REPAY_MODE == "19" || C_REPAY_MODE == "21" || C_REPAY_MODE == "22" || C_REPAY_MODE == "23" || C_REPAY_MODE == "29" ) {
        return false
    }
    return true
}
return true', BEAN=NULL, CHECK_FLAG=NULL, CHECK_DESC=NULL, CHECK_ERR_TYPE=NULL, NEXT_ACTION=NULL, DATA_STATUS=NULL, DATA_FLAG=NULL, DATA_OP=NULL, DATA_SOURCE=NULL, DATA_VERSION=NULL, DATA_REJ_DESC=NULL, DATA_DEL_DESC=NULL, DATA_CRT_USER=NULL, DATA_CRT_DATE=NULL, DATA_CRT_TIME=NULL, DATA_CHG_USER=NULL, DATA_CHG_DATE=NULL, DATA_CHG_TIME=NULL, DATA_APV_USER=NULL, DATA_APV_DATE=NULL, DATA_APV_TIME=NULL, RSV1='e73e7713c6ff4967beed26c1137b8793', RSV2=NULL, RSV3=NULL, RSV4='mbtrule', RSV5='1' WHERE DATA_ID='MBT_410I4100C06I4100C0601I4100C0602';
UPDATE GP_QC_RULE SET DATA_DATE='20190624', CORP_ID='TESTCORP', ORG_ID='72', GROUP_ID='002', INQ_ORG_ID=NULL, INQ_GROUP_ID=NULL, RULE_DESC='当“账户类型”为“D2”，“剩余还款月数”为空', RULE_MESSAGE='当“账户类型”为“D2”，“剩余还款月数”为空', RULE_TYPE=NULL, RULE_SOURCE='BUSI', FIELD='DATA_ID', FIELD_NAME=NULL, TRIMMABLE=NULL, NULLABLE='Y', TYPE_ID=NULL, ENCODING=NULL, MIN_LENGTH=NULL, MAX_LENGTH=NULL, MIN_VALUE=NULL, MAX_VALUE=NULL, MAX_PRECISION=NULL, MIN_SCALE=NULL, MAX_SCALE=NULL, ENUMERATION=NULL, PATTERN=NULL, IN_ENTITY=NULL, IN_FIELD=NULL, "SQL"=NULL, SQL_EXTRA_KEY=NULL, SCRIPT='if (!isEmpty(B_ACCT_TYPE) && B_ACCT_TYPE == "D2") {
    if (isEmpty(H_PYMT_PRD)) {
        return true
    }
    return false
}
return true', BEAN=NULL, CHECK_FLAG=NULL, CHECK_DESC=NULL, CHECK_ERR_TYPE=NULL, NEXT_ACTION=NULL, DATA_STATUS=NULL, DATA_FLAG=NULL, DATA_OP=NULL, DATA_SOURCE=NULL, DATA_VERSION=NULL, DATA_REJ_DESC=NULL, DATA_DEL_DESC=NULL, DATA_CRT_USER=NULL, DATA_CRT_DATE=NULL, DATA_CRT_TIME=NULL, DATA_CHG_USER=NULL, DATA_CHG_DATE=NULL, DATA_CHG_TIME=NULL, DATA_APV_USER=NULL, DATA_APV_DATE=NULL, DATA_APV_TIME=NULL, RSV1='6bac140518cd4eeda11c5331b249d394', RSV2=NULL, RSV3=NULL, RSV4='mbtrule', RSV5='1' WHERE DATA_ID='MBT_410S4100139S410013905S410013902';
UPDATE GP_QC_RULE SET DATA_DATE='20190624', CORP_ID='TESTCORP', ORG_ID='72', GROUP_ID='002', INQ_ORG_ID=NULL, INQ_GROUP_ID=NULL, RULE_DESC='当“账户类型”为“R4”，“当前逾期总额”不能为空', RULE_MESSAGE='当“账户类型”为“R4”，“当前逾期总额”不能为空', RULE_TYPE=NULL, RULE_SOURCE='BUSI', FIELD='DATA_ID', FIELD_NAME=NULL, TRIMMABLE=NULL, NULLABLE='Y', TYPE_ID=NULL, ENCODING=NULL, MIN_LENGTH=NULL, MAX_LENGTH=NULL, MIN_VALUE=NULL, MAX_VALUE=NULL, MAX_PRECISION=NULL, MIN_SCALE=NULL, MAX_SCALE=NULL, ENUMERATION=NULL, PATTERN=NULL, IN_ENTITY=NULL, IN_FIELD=NULL, "SQL"=NULL, SQL_EXTRA_KEY=NULL, SCRIPT='if (!isEmpty(B_ACCT_TYPE) && B_ACCT_TYPE == "R4") {
    if (!isEmpty(H_TOT_OVERD)) {
        return true
    }
    return false
}
return true', BEAN=NULL, CHECK_FLAG=NULL, CHECK_DESC=NULL, CHECK_ERR_TYPE=NULL, NEXT_ACTION=NULL, DATA_STATUS=NULL, DATA_FLAG=NULL, DATA_OP=NULL, DATA_SOURCE=NULL, DATA_VERSION=NULL, DATA_REJ_DESC=NULL, DATA_DEL_DESC=NULL, DATA_CRT_USER=NULL, DATA_CRT_DATE=NULL, DATA_CRT_TIME=NULL, DATA_CHG_USER=NULL, DATA_CHG_DATE=NULL, DATA_CHG_TIME=NULL, DATA_APV_USER=NULL, DATA_APV_DATE=NULL, DATA_APV_TIME=NULL, RSV1='d29cd15e9e3e4c0bab135dbd8781e669', RSV2=NULL, RSV3=NULL, RSV4='mbtrule', RSV5='1' WHERE DATA_ID='MBT_410S4100141S410014103S410014102';
UPDATE GP_QC_RULE SET DATA_DATE='20190624', CORP_ID='TESTCORP', ORG_ID='72', GROUP_ID='002', INQ_ORG_ID=NULL, INQ_GROUP_ID=NULL, RULE_DESC='当“账户类型”为“D1”，“当前逾期本金”不能为空', RULE_MESSAGE='当“账户类型”为“D1”，“当前逾期本金”不能为空', RULE_TYPE=NULL, RULE_SOURCE='BUSI', FIELD='DATA_ID', FIELD_NAME=NULL, TRIMMABLE=NULL, NULLABLE='Y', TYPE_ID=NULL, ENCODING=NULL, MIN_LENGTH=NULL, MAX_LENGTH=NULL, MIN_VALUE=NULL, MAX_VALUE=NULL, MAX_PRECISION=NULL, MIN_SCALE=NULL, MAX_SCALE=NULL, ENUMERATION=NULL, PATTERN=NULL, IN_ENTITY=NULL, IN_FIELD=NULL, "SQL"=NULL, SQL_EXTRA_KEY=NULL, SCRIPT='if (!isEmpty(B_ACCT_TYPE) && B_ACCT_TYPE == "D1") {
    if (!isEmpty(H_OVERD_PRINC)) {
        return true
    }
    return false
}
return true', BEAN=NULL, CHECK_FLAG=NULL, CHECK_DESC=NULL, CHECK_ERR_TYPE=NULL, NEXT_ACTION=NULL, DATA_STATUS=NULL, DATA_FLAG=NULL, DATA_OP=NULL, DATA_SOURCE=NULL, DATA_VERSION=NULL, DATA_REJ_DESC=NULL, DATA_DEL_DESC=NULL, DATA_CRT_USER=NULL, DATA_CRT_DATE=NULL, DATA_CRT_TIME=NULL, DATA_CHG_USER=NULL, DATA_CHG_DATE=NULL, DATA_CHG_TIME=NULL, DATA_APV_USER=NULL, DATA_APV_DATE=NULL, DATA_APV_TIME=NULL, RSV1='a425ed0f58624179bb52d792dbce2b7b', RSV2=NULL, RSV3=NULL, RSV4='mbtrule', RSV5='1' WHERE DATA_ID='MBT_410S4100143S410014301S410014302';
UPDATE GP_QC_RULE SET DATA_DATE='20190624', CORP_ID='TESTCORP', ORG_ID='72', GROUP_ID='002', INQ_ORG_ID=NULL, INQ_GROUP_ID=NULL, RULE_DESC='当“账户类型”为“C1”，“当前逾期本金”为空', RULE_MESSAGE='当“账户类型”为“C1”，“当前逾期本金”为空', RULE_TYPE=NULL, RULE_SOURCE='BUSI', FIELD='DATA_ID', FIELD_NAME=NULL, TRIMMABLE=NULL, NULLABLE='Y', TYPE_ID=NULL, ENCODING=NULL, MIN_LENGTH=NULL, MAX_LENGTH=NULL, MIN_VALUE=NULL, MAX_VALUE=NULL, MAX_PRECISION=NULL, MIN_SCALE=NULL, MAX_SCALE=NULL, ENUMERATION=NULL, PATTERN=NULL, IN_ENTITY=NULL, IN_FIELD=NULL, "SQL"=NULL, SQL_EXTRA_KEY=NULL, SCRIPT='if (!isEmpty(B_ACCT_TYPE) && B_ACCT_TYPE == "C1") {
    if (isEmpty(H_OVERD_PRINC)) {
        return true
    }
    return false
}
return true', BEAN=NULL, CHECK_FLAG=NULL, CHECK_DESC=NULL, CHECK_ERR_TYPE=NULL, NEXT_ACTION=NULL, DATA_STATUS=NULL, DATA_FLAG=NULL, DATA_OP=NULL, DATA_SOURCE=NULL, DATA_VERSION=NULL, DATA_REJ_DESC=NULL, DATA_DEL_DESC=NULL, DATA_CRT_USER=NULL, DATA_CRT_DATE=NULL, DATA_CRT_TIME=NULL, DATA_CHG_USER=NULL, DATA_CHG_DATE=NULL, DATA_CHG_TIME=NULL, DATA_APV_USER=NULL, DATA_APV_DATE=NULL, DATA_APV_TIME=NULL, RSV1='f0d2bcd5c52b48db87af0e49105d001f', RSV2=NULL, RSV3=NULL, RSV4='mbtrule', RSV5='1' WHERE DATA_ID='MBT_410S4100144S410014401S410014402';
UPDATE GP_QC_RULE SET DATA_DATE='20190624', CORP_ID='TESTCORP', ORG_ID='72', GROUP_ID='002', INQ_ORG_ID=NULL, INQ_GROUP_ID=NULL, RULE_DESC='当“账户类型”为“R1”，“当前逾期天数”不能为空', RULE_MESSAGE='当“账户类型”为“R1”，“当前逾期天数”不能为空', RULE_TYPE=NULL, RULE_SOURCE='BUSI', FIELD='DATA_ID', FIELD_NAME=NULL, TRIMMABLE=NULL, NULLABLE='Y', TYPE_ID=NULL, ENCODING=NULL, MIN_LENGTH=NULL, MAX_LENGTH=NULL, MIN_VALUE=NULL, MAX_VALUE=NULL, MAX_PRECISION=NULL, MIN_SCALE=NULL, MAX_SCALE=NULL, ENUMERATION=NULL, PATTERN=NULL, IN_ENTITY=NULL, IN_FIELD=NULL, "SQL"=NULL, SQL_EXTRA_KEY=NULL, SCRIPT='if (!isEmpty(B_ACCT_TYPE) && B_ACCT_TYPE == "R1") {
    if (!isEmpty(H_OVERD_DY)) {
        return true
    }
    return false
}
return true', BEAN=NULL, CHECK_FLAG=NULL, CHECK_DESC=NULL, CHECK_ERR_TYPE=NULL, NEXT_ACTION=NULL, DATA_STATUS=NULL, DATA_FLAG=NULL, DATA_OP=NULL, DATA_SOURCE=NULL, DATA_VERSION=NULL, DATA_REJ_DESC=NULL, DATA_DEL_DESC=NULL, DATA_CRT_USER=NULL, DATA_CRT_DATE=NULL, DATA_CRT_TIME=NULL, DATA_CHG_USER=NULL, DATA_CHG_DATE=NULL, DATA_CHG_TIME=NULL, DATA_APV_USER=NULL, DATA_APV_DATE=NULL, DATA_APV_TIME=NULL, RSV1='be3bc5572a9e4b068c903a8a9b6406f6', RSV2=NULL, RSV3=NULL, RSV4='mbtrule', RSV5='1' WHERE DATA_ID='MBT_410S4100145S410014507S410014502';
UPDATE GP_QC_RULE SET DATA_DATE='20190620', CORP_ID='TESTCORP', ORG_ID='72', GROUP_ID='002', INQ_ORG_ID=NULL, INQ_GROUP_ID=NULL, RULE_DESC='若账户类型为“C1”时，基本信息段中的“分次放款标志”字段不适用于此类账户。', RULE_MESSAGE='若账户类型为“C1”时，基本信息段中的“分次放款标志”字段不适用于此类账户。', RULE_TYPE=NULL, RULE_SOURCE='BUSI', FIELD='DATA_ID', FIELD_NAME=NULL, TRIMMABLE=NULL, NULLABLE='Y', TYPE_ID=NULL, ENCODING=NULL, MIN_LENGTH=NULL, MAX_LENGTH=NULL, MIN_VALUE=NULL, MAX_VALUE=NULL, MAX_PRECISION=NULL, MIN_SCALE=NULL, MAX_SCALE=NULL, ENUMERATION=NULL, PATTERN=NULL, IN_ENTITY=NULL, IN_FIELD=NULL, "SQL"=NULL, SQL_EXTRA_KEY=NULL, SCRIPT='if (!isEmpty(B_ACCT_TYPE) && B_ACCT_TYPE == "C1") {
    if (isEmpty(C_FLAG)) {
        return true
    }
    return false
}
return true', BEAN=NULL, CHECK_FLAG=NULL, CHECK_DESC=NULL, CHECK_ERR_TYPE=NULL, NEXT_ACTION=NULL, DATA_STATUS=NULL, DATA_FLAG=NULL, DATA_OP=NULL, DATA_SOURCE=NULL, DATA_VERSION=NULL, DATA_REJ_DESC=NULL, DATA_DEL_DESC=NULL, DATA_CRT_USER=NULL, DATA_CRT_DATE=NULL, DATA_CRT_TIME=NULL, DATA_CHG_USER=NULL, DATA_CHG_DATE=NULL, DATA_CHG_TIME=NULL, DATA_APV_USER=NULL, DATA_APV_DATE=NULL, DATA_APV_TIME=NULL, RSV1='4f3e4548f1eb41629a5da76e8a7d2ae6', RSV2=NULL, RSV3=NULL, RSV4='mbtrule', RSV5='1' WHERE DATA_ID='MBT_210S210010118S210010111S210010112';
UPDATE GP_QC_RULE SET DATA_DATE='20190620', CORP_ID='TESTCORP', ORG_ID='72', GROUP_ID='002', INQ_ORG_ID=NULL, INQ_GROUP_ID=NULL, RULE_DESC='若账户类型为“C1”时，基本信息段中的“还款期数”字段不适用于此类账户。', RULE_MESSAGE='若账户类型为“C1”时，基本信息段中的“还款期数”字段不适用于此类账户。', RULE_TYPE=NULL, RULE_SOURCE='BUSI', FIELD='DATA_ID', FIELD_NAME=NULL, TRIMMABLE=NULL, NULLABLE='Y', TYPE_ID=NULL, ENCODING=NULL, MIN_LENGTH=NULL, MAX_LENGTH=NULL, MIN_VALUE=NULL, MAX_VALUE=NULL, MAX_PRECISION=NULL, MIN_SCALE=NULL, MAX_SCALE=NULL, ENUMERATION=NULL, PATTERN=NULL, IN_ENTITY=NULL, IN_FIELD=NULL, "SQL"=NULL, SQL_EXTRA_KEY=NULL, SCRIPT='if (!isEmpty(B_ACCT_TYPE) && B_ACCT_TYPE == "C1") {
    if (isEmpty(C_REPAY_PRD)) {
        return true
    }
    return false
}
return true', BEAN=NULL, CHECK_FLAG=NULL, CHECK_DESC=NULL, CHECK_ERR_TYPE=NULL, NEXT_ACTION=NULL, DATA_STATUS=NULL, DATA_FLAG=NULL, DATA_OP=NULL, DATA_SOURCE=NULL, DATA_VERSION=NULL, DATA_REJ_DESC=NULL, DATA_DEL_DESC=NULL, DATA_CRT_USER=NULL, DATA_CRT_DATE=NULL, DATA_CRT_TIME=NULL, DATA_CHG_USER=NULL, DATA_CHG_DATE=NULL, DATA_CHG_TIME=NULL, DATA_APV_USER=NULL, DATA_APV_DATE=NULL, DATA_APV_TIME=NULL, RSV1='45a213ef62c14b5e880ec4a0ebabc491', RSV2=NULL, RSV3=NULL, RSV4='mbtrule', RSV5='1' WHERE DATA_ID='MBT_210S210010142S210010111S210010128';
UPDATE GP_QC_RULE SET DATA_DATE='20190620', CORP_ID='TESTCORP', ORG_ID='72', GROUP_ID='002', INQ_ORG_ID=NULL, INQ_GROUP_ID=NULL, RULE_DESC='若账户类型为“C1”时，基本信息段中的“资产转让标志”字段不适用于此类账户。', RULE_MESSAGE='若账户类型为“C1”时，基本信息段中的“资产转让标志”字段不适用于此类账户。', RULE_TYPE=NULL, RULE_SOURCE='BUSI', FIELD='DATA_ID', FIELD_NAME=NULL, TRIMMABLE=NULL, NULLABLE='Y', TYPE_ID=NULL, ENCODING=NULL, MIN_LENGTH=NULL, MAX_LENGTH=NULL, MIN_VALUE=NULL, MAX_VALUE=NULL, MAX_PRECISION=NULL, MIN_SCALE=NULL, MAX_SCALE=NULL, ENUMERATION=NULL, PATTERN=NULL, IN_ENTITY=NULL, IN_FIELD=NULL, "SQL"=NULL, SQL_EXTRA_KEY=NULL, SCRIPT='if (!isEmpty(B_ACCT_TYPE) && B_ACCT_TYPE == "C1") {
    if (isEmpty(C_ASSET_TRAND_FLAG)) {
        return true
    }
    return false
}
return true', BEAN=NULL, CHECK_FLAG=NULL, CHECK_DESC=NULL, CHECK_ERR_TYPE=NULL, NEXT_ACTION=NULL, DATA_STATUS=NULL, DATA_FLAG=NULL, DATA_OP=NULL, DATA_SOURCE=NULL, DATA_VERSION=NULL, DATA_REJ_DESC=NULL, DATA_DEL_DESC=NULL, DATA_CRT_USER=NULL, DATA_CRT_DATE=NULL, DATA_CRT_TIME=NULL, DATA_CHG_USER=NULL, DATA_CHG_DATE=NULL, DATA_CHG_TIME=NULL, DATA_APV_USER=NULL, DATA_APV_DATE=NULL, DATA_APV_TIME=NULL, RSV1='6d89b2b759e649edb99ef7fc16b3ff6a', RSV2=NULL, RSV3=NULL, RSV4='mbtrule', RSV5='1' WHERE DATA_ID='MBT_210S210010166S210010111S210010144';
UPDATE GP_QC_RULE SET DATA_DATE='20190620', CORP_ID='TESTCORP', ORG_ID='72', GROUP_ID='002', INQ_ORG_ID=NULL, INQ_GROUP_ID=NULL, RULE_DESC='若账户类型为“C1”时，基本信息段中的“卡片标识号”字段不适用于此类账户。', RULE_MESSAGE='若账户类型为“C1”时，基本信息段中的“卡片标识号”字段不适用于此类账户。', RULE_TYPE=NULL, RULE_SOURCE='BUSI', FIELD='DATA_ID', FIELD_NAME=NULL, TRIMMABLE=NULL, NULLABLE='Y', TYPE_ID=NULL, ENCODING=NULL, MIN_LENGTH=NULL, MAX_LENGTH=NULL, MIN_VALUE=NULL, MAX_VALUE=NULL, MAX_PRECISION=NULL, MIN_SCALE=NULL, MAX_SCALE=NULL, ENUMERATION=NULL, PATTERN=NULL, IN_ENTITY=NULL, IN_FIELD=NULL, "SQL"=NULL, SQL_EXTRA_KEY=NULL, SCRIPT='if (!isEmpty(B_ACCT_TYPE) && B_ACCT_TYPE == "C1") {
    if (isEmpty(C_CREDIT_ID)) {
        return true
    }
    return false
}
return true', BEAN=NULL, CHECK_FLAG=NULL, CHECK_DESC=NULL, CHECK_ERR_TYPE=NULL, NEXT_ACTION=NULL, DATA_STATUS=NULL, DATA_FLAG=NULL, DATA_OP=NULL, DATA_SOURCE=NULL, DATA_VERSION=NULL, DATA_REJ_DESC=NULL, DATA_DEL_DESC=NULL, DATA_CRT_USER=NULL, DATA_CRT_DATE=NULL, DATA_CRT_TIME=NULL, DATA_CHG_USER=NULL, DATA_CHG_DATE=NULL, DATA_CHG_TIME=NULL, DATA_APV_USER=NULL, DATA_APV_DATE=NULL, DATA_APV_TIME=NULL, RSV1='bc0adb9b7bd64b11b4c36189bf78516b', RSV2=NULL, RSV3=NULL, RSV4='mbtrule', RSV5='1' WHERE DATA_ID='MBT_210S210010184S210010111S210010156';
UPDATE GP_QC_RULE SET DATA_DATE='20190620', CORP_ID='TESTCORP', ORG_ID='72', GROUP_ID='002', INQ_ORG_ID=NULL, INQ_GROUP_ID=NULL, RULE_DESC='当账户信息记录中“账户类型”为“R3”时，“透支 180 天以上未还余额”应该小于等于“余额”。', RULE_MESSAGE='当账户信息记录中“账户类型”为“R3”时，“透支 180 天以上未还余额”应该小于等于“余额”。', RULE_TYPE=NULL, RULE_SOURCE='BUSI', FIELD='DATA_ID', FIELD_NAME=NULL, TRIMMABLE=NULL, NULLABLE='Y', TYPE_ID=NULL, ENCODING=NULL, MIN_LENGTH=NULL, MAX_LENGTH=NULL, MIN_VALUE=NULL, MAX_VALUE=NULL, MAX_PRECISION=NULL, MIN_SCALE=NULL, MAX_SCALE=NULL, ENUMERATION=NULL, PATTERN=NULL, IN_ENTITY=NULL, IN_FIELD=NULL, "SQL"=NULL, SQL_EXTRA_KEY=NULL, SCRIPT='if (!isEmpty(B_ACCT_TYPE) && B_ACCT_TYPE == "R3") {
    if (H_OVERD_RAW_BA_OVE180.toBigDecimal() <= H_ACCT_BAL.toBigDecimal()) {
        return true
    }
    return false
}
return true', BEAN=NULL, CHECK_FLAG=NULL, CHECK_DESC=NULL, CHECK_ERR_TYPE=NULL, NEXT_ACTION=NULL, DATA_STATUS=NULL, DATA_FLAG=NULL, DATA_OP=NULL, DATA_SOURCE=NULL, DATA_VERSION=NULL, DATA_REJ_DESC=NULL, DATA_DEL_DESC=NULL, DATA_CRT_USER=NULL, DATA_CRT_DATE=NULL, DATA_CRT_TIME=NULL, DATA_CHG_USER=NULL, DATA_CHG_DATE=NULL, DATA_CHG_TIME=NULL, DATA_APV_USER=NULL, DATA_APV_DATE=NULL, DATA_APV_TIME=NULL, RSV1='a6aa615e61e641218fc76404ef8cf488', RSV2=NULL, RSV3=NULL, RSV4='mbtrule', RSV5='1' WHERE DATA_ID='MBT_210I2100A01I2100A0101I2100A0102';
UPDATE GP_QC_RULE SET DATA_DATE='20190620', CORP_ID='TESTCORP', ORG_ID='72', GROUP_ID='002', INQ_ORG_ID=NULL, INQ_GROUP_ID=NULL, RULE_DESC='若账户类型为“C1”时，非月度表现信息段中的“剩余还款期数”字段不适用于此类账户。', RULE_MESSAGE='若账户类型为“C1”时，非月度表现信息段中的“剩余还款期数”字段不适用于此类账户。', RULE_TYPE=NULL, RULE_SOURCE='BUSI', FIELD='DATA_ID', FIELD_NAME=NULL, TRIMMABLE=NULL, NULLABLE='Y', TYPE_ID=NULL, ENCODING=NULL, MIN_LENGTH=NULL, MAX_LENGTH=NULL, MIN_VALUE=NULL, MAX_VALUE=NULL, MAX_PRECISION=NULL, MIN_SCALE=NULL, MAX_SCALE=NULL, ENUMERATION=NULL, PATTERN=NULL, IN_ENTITY=NULL, IN_FIELD=NULL, "SQL"=NULL, SQL_EXTRA_KEY=NULL, SCRIPT='if (!isEmpty(B_ACCT_TYPE) && B_ACCT_TYPE == "C1") {
    if (isEmpty(J_REM_REP_PRD)) {
        return true
    }
    return false
}
return true', BEAN=NULL, CHECK_FLAG=NULL, CHECK_DESC=NULL, CHECK_ERR_TYPE=NULL, NEXT_ACTION=NULL, DATA_STATUS=NULL, DATA_FLAG=NULL, DATA_OP=NULL, DATA_SOURCE=NULL, DATA_VERSION=NULL, DATA_REJ_DESC=NULL, DATA_DEL_DESC=NULL, DATA_CRT_USER=NULL, DATA_CRT_DATE=NULL, DATA_CRT_TIME=NULL, DATA_CHG_USER=NULL, DATA_CHG_DATE=NULL, DATA_CHG_TIME=NULL, DATA_APV_USER=NULL, DATA_APV_DATE=NULL, DATA_APV_TIME=NULL, RSV1='1a1ea848245d46f69f249a8fbb371a7a', RSV2=NULL, RSV3=NULL, RSV4='mbtrule', RSV5='1' WHERE DATA_ID='MBT_210S210010340S210010111S210010258';
UPDATE GP_QC_RULE SET DATA_DATE='20190620', CORP_ID='TESTCORP', ORG_ID='72', GROUP_ID='002', INQ_ORG_ID=NULL, INQ_GROUP_ID=NULL, RULE_DESC='若账户类型为“C1”时，月度表现信息段中的“未出单的大额专项分期余额”字段不适用于此类模板。', RULE_MESSAGE='若账户类型为“C1”时，月度表现信息段中的“未出单的大额专项分期余额”字段不适用于此类模板。', RULE_TYPE=NULL, RULE_SOURCE='BUSI', FIELD='DATA_ID', FIELD_NAME=NULL, TRIMMABLE=NULL, NULLABLE='Y', TYPE_ID=NULL, ENCODING=NULL, MIN_LENGTH=NULL, MAX_LENGTH=NULL, MIN_VALUE=NULL, MAX_VALUE=NULL, MAX_PRECISION=NULL, MIN_SCALE=NULL, MAX_SCALE=NULL, ENUMERATION=NULL, PATTERN=NULL, IN_ENTITY=NULL, IN_FIELD=NULL, "SQL"=NULL, SQL_EXTRA_KEY=NULL, SCRIPT='if (!isEmpty(B_ACCT_TYPE) && B_ACCT_TYPE == "C1") {
    if (isEmpty(H_NOTLSU_BAL)) {
        return true
    }
    return false
}
return true', BEAN=NULL, CHECK_FLAG=NULL, CHECK_DESC=NULL, CHECK_ERR_TYPE=NULL, NEXT_ACTION=NULL, DATA_STATUS=NULL, DATA_FLAG=NULL, DATA_OP=NULL, DATA_SOURCE=NULL, DATA_VERSION=NULL, DATA_REJ_DESC=NULL, DATA_DEL_DESC=NULL, DATA_CRT_USER=NULL, DATA_CRT_DATE=NULL, DATA_CRT_TIME=NULL, DATA_CHG_USER=NULL, DATA_CHG_DATE=NULL, DATA_CHG_TIME=NULL, DATA_APV_USER=NULL, DATA_APV_DATE=NULL, DATA_APV_TIME=NULL, RSV1='4dda393506dc485ca09cc83b25493cfa', RSV2=NULL, RSV3=NULL, RSV4='mbtrule', RSV5='1' WHERE DATA_ID='MBT_210S210010256S210010111S210010204';
UPDATE GP_QC_RULE SET DATA_DATE='20190620', CORP_ID='TESTCORP', ORG_ID='72', GROUP_ID='002', INQ_ORG_ID=NULL, INQ_GROUP_ID=NULL, RULE_DESC='若账户类型为“R1”时，月度表现信息段中的“实际还款百分比”字段不适用于此类账户。', RULE_MESSAGE='若账户类型为“R1”时，月度表现信息段中的“实际还款百分比”字段不适用于此类账户。', RULE_TYPE=NULL, RULE_SOURCE='BUSI', FIELD='DATA_ID', FIELD_NAME=NULL, TRIMMABLE=NULL, NULLABLE='Y', TYPE_ID=NULL, ENCODING=NULL, MIN_LENGTH=NULL, MAX_LENGTH=NULL, MIN_VALUE=NULL, MAX_VALUE=NULL, MAX_PRECISION=NULL, MIN_SCALE=NULL, MAX_SCALE=NULL, ENUMERATION=NULL, PATTERN=NULL, IN_ENTITY=NULL, IN_FIELD=NULL, "SQL"=NULL, SQL_EXTRA_KEY=NULL, SCRIPT='if (!isEmpty(B_ACCT_TYPE) && B_ACCT_TYPE == "R1") {
    if (isEmpty(H_RPY_PRCT)) {
        return true
    }
    return false
}
return true', BEAN=NULL, CHECK_FLAG=NULL, CHECK_DESC=NULL, CHECK_ERR_TYPE=NULL, NEXT_ACTION=NULL, DATA_STATUS=NULL, DATA_FLAG=NULL, DATA_OP=NULL, DATA_SOURCE=NULL, DATA_VERSION=NULL, DATA_REJ_DESC=NULL, DATA_DEL_DESC=NULL, DATA_CRT_USER=NULL, DATA_CRT_DATE=NULL, DATA_CRT_TIME=NULL, DATA_CHG_USER=NULL, DATA_CHG_DATE=NULL, DATA_CHG_TIME=NULL, DATA_APV_USER=NULL, DATA_APV_DATE=NULL, DATA_APV_TIME=NULL, RSV1='9baf3b69978f42d8b6178b0e2d5618d9', RSV2=NULL, RSV3=NULL, RSV4='mbtrule', RSV5='1' WHERE DATA_ID='MBT_210S210010263S210010101S210010212';
UPDATE GP_QC_RULE SET DATA_DATE='20190620', CORP_ID='TESTCORP', ORG_ID='72', GROUP_ID='002', INQ_ORG_ID=NULL, INQ_GROUP_ID=NULL, RULE_DESC='若账户类型为“C1”时，月度表现信息段中的“实际还款百分比”字段不适用于此类模板。', RULE_MESSAGE='若账户类型为“C1”时，月度表现信息段中的“实际还款百分比”字段不适用于此类模板。', RULE_TYPE=NULL, RULE_SOURCE='BUSI', FIELD='DATA_ID', FIELD_NAME=NULL, TRIMMABLE=NULL, NULLABLE='Y', TYPE_ID=NULL, ENCODING=NULL, MIN_LENGTH=NULL, MAX_LENGTH=NULL, MIN_VALUE=NULL, MAX_VALUE=NULL, MAX_PRECISION=NULL, MIN_SCALE=NULL, MAX_SCALE=NULL, ENUMERATION=NULL, PATTERN=NULL, IN_ENTITY=NULL, IN_FIELD=NULL, "SQL"=NULL, SQL_EXTRA_KEY=NULL, SCRIPT='if (!isEmpty(B_ACCT_TYPE) && B_ACCT_TYPE == "C1") {
    if (isEmpty(H_RPY_PRCT)) {
        return true
    }
    return false
}
return true', BEAN=NULL, CHECK_FLAG=NULL, CHECK_DESC=NULL, CHECK_ERR_TYPE=NULL, NEXT_ACTION=NULL, DATA_STATUS=NULL, DATA_FLAG=NULL, DATA_OP=NULL, DATA_SOURCE=NULL, DATA_VERSION=NULL, DATA_REJ_DESC=NULL, DATA_DEL_DESC=NULL, DATA_CRT_USER=NULL, DATA_CRT_DATE=NULL, DATA_CRT_TIME=NULL, DATA_CHG_USER=NULL, DATA_CHG_DATE=NULL, DATA_CHG_TIME=NULL, DATA_APV_USER=NULL, DATA_APV_DATE=NULL, DATA_APV_TIME=NULL, RSV1='6af1667afdb442468386e743fec18d89', RSV2=NULL, RSV3=NULL, RSV4='mbtrule', RSV5='1' WHERE DATA_ID='MBT_210S210010268S210010111S210010212';
UPDATE GP_QC_RULE SET DATA_DATE='20190620', CORP_ID='TESTCORP', ORG_ID='72', GROUP_ID='002', INQ_ORG_ID=NULL, INQ_GROUP_ID=NULL, RULE_DESC='若账户类型为“C1”时，月度表现信息段中的“当前逾期期数”字段不适用于此类模板。', RULE_MESSAGE='若账户类型为“C1”时，月度表现信息段中的“当前逾期期数”字段不适用于此类模板。', RULE_TYPE=NULL, RULE_SOURCE='BUSI', FIELD='DATA_ID', FIELD_NAME=NULL, TRIMMABLE=NULL, NULLABLE='Y', TYPE_ID=NULL, ENCODING=NULL, MIN_LENGTH=NULL, MAX_LENGTH=NULL, MIN_VALUE=NULL, MAX_VALUE=NULL, MAX_PRECISION=NULL, MIN_SCALE=NULL, MAX_SCALE=NULL, ENUMERATION=NULL, PATTERN=NULL, IN_ENTITY=NULL, IN_FIELD=NULL, "SQL"=NULL, SQL_EXTRA_KEY=NULL, SCRIPT='if (!isEmpty(B_ACCT_TYPE) && B_ACCT_TYPE == "C1") {
    if (isEmpty(H_OVERD_PRD)) {
        return true
    }
    return false
}
return true', BEAN=NULL, CHECK_FLAG=NULL, CHECK_DESC=NULL, CHECK_ERR_TYPE=NULL, NEXT_ACTION=NULL, DATA_STATUS=NULL, DATA_FLAG=NULL, DATA_OP=NULL, DATA_SOURCE=NULL, DATA_VERSION=NULL, DATA_REJ_DESC=NULL, DATA_DEL_DESC=NULL, DATA_CRT_USER=NULL, DATA_CRT_DATE=NULL, DATA_CRT_TIME=NULL, DATA_CHG_USER=NULL, DATA_CHG_DATE=NULL, DATA_CHG_TIME=NULL, DATA_APV_USER=NULL, DATA_APV_DATE=NULL, DATA_APV_TIME=NULL, RSV1='633fa06a432849b690f9b8432bb8ade0', RSV2=NULL, RSV3=NULL, RSV4='mbtrule', RSV5='1' WHERE DATA_ID='MBT_210S210010274S210010111S210010216';
UPDATE GP_QC_RULE SET DATA_DATE='20190620', CORP_ID='TESTCORP', ORG_ID='72', GROUP_ID='002', INQ_ORG_ID=NULL, INQ_GROUP_ID=NULL, RULE_DESC='若账户类型为“R3”时，月度表现信息段中的“当前逾期本金”字段不适用于此类账户。', RULE_MESSAGE='若账户类型为“R3”时，月度表现信息段中的“当前逾期本金”字段不适用于此类账户。', RULE_TYPE=NULL, RULE_SOURCE='BUSI', FIELD='DATA_ID', FIELD_NAME=NULL, TRIMMABLE=NULL, NULLABLE='Y', TYPE_ID=NULL, ENCODING=NULL, MIN_LENGTH=NULL, MAX_LENGTH=NULL, MIN_VALUE=NULL, MAX_VALUE=NULL, MAX_PRECISION=NULL, MIN_SCALE=NULL, MAX_SCALE=NULL, ENUMERATION=NULL, PATTERN=NULL, IN_ENTITY=NULL, IN_FIELD=NULL, "SQL"=NULL, SQL_EXTRA_KEY=NULL, SCRIPT='if (!isEmpty(B_ACCT_TYPE) && B_ACCT_TYPE == "R3") {
    if (isEmpty(H_OVAER_PRINC)) {
        return true
    }
    return false
}
return true', BEAN=NULL, CHECK_FLAG=NULL, CHECK_DESC=NULL, CHECK_ERR_TYPE=NULL, NEXT_ACTION=NULL, DATA_STATUS=NULL, DATA_FLAG=NULL, DATA_OP=NULL, DATA_SOURCE=NULL, DATA_VERSION=NULL, DATA_REJ_DESC=NULL, DATA_DEL_DESC=NULL, DATA_CRT_USER=NULL, DATA_CRT_DATE=NULL, DATA_CRT_TIME=NULL, DATA_CHG_USER=NULL, DATA_CHG_DATE=NULL, DATA_CHG_TIME=NULL, DATA_APV_USER=NULL, DATA_APV_DATE=NULL, DATA_APV_TIME=NULL, RSV1='5c4045fac6f644b49ea8f393a355f701', RSV2=NULL, RSV3=NULL, RSV4='mbtrule', RSV5='1' WHERE DATA_ID='MBT_210S210010283S210010105S210010224';
UPDATE GP_QC_RULE SET DATA_DATE='20190620', CORP_ID='TESTCORP', ORG_ID='72', GROUP_ID='002', INQ_ORG_ID=NULL, INQ_GROUP_ID=NULL, RULE_DESC='若账户类型为“R2”时，月度表现信息段中的“逾期 61-90 天未归还本金”字段不适用于此类账户。', RULE_MESSAGE='若账户类型为“R2”时，月度表现信息段中的“逾期 61-90 天未归还本金”字段不适用于此类账户。', RULE_TYPE=NULL, RULE_SOURCE='BUSI', FIELD='DATA_ID', FIELD_NAME=NULL, TRIMMABLE=NULL, NULLABLE='Y', TYPE_ID=NULL, ENCODING=NULL, MIN_LENGTH=NULL, MAX_LENGTH=NULL, MIN_VALUE=NULL, MAX_VALUE=NULL, MAX_PRECISION=NULL, MIN_SCALE=NULL, MAX_SCALE=NULL, ENUMERATION=NULL, PATTERN=NULL, IN_ENTITY=NULL, IN_FIELD=NULL, "SQL"=NULL, SQL_EXTRA_KEY=NULL, SCRIPT='if (!isEmpty(B_ACCT_TYPE) && B_ACCT_TYPE == "R2") {
    if (isEmpty(H_OVERD61_90PRINC)) {
        return true
    }
    return false
}
return true', BEAN=NULL, CHECK_FLAG=NULL, CHECK_DESC=NULL, CHECK_ERR_TYPE=NULL, NEXT_ACTION=NULL, DATA_STATUS=NULL, DATA_FLAG=NULL, DATA_OP=NULL, DATA_SOURCE=NULL, DATA_VERSION=NULL, DATA_REJ_DESC=NULL, DATA_DEL_DESC=NULL, DATA_CRT_USER=NULL, DATA_CRT_DATE=NULL, DATA_CRT_TIME=NULL, DATA_CHG_USER=NULL, DATA_CHG_DATE=NULL, DATA_CHG_TIME=NULL, DATA_APV_USER=NULL, DATA_APV_DATE=NULL, DATA_APV_TIME=NULL, RSV1='28792f67590f4120942c47b1a7973ca4', RSV2=NULL, RSV3=NULL, RSV4='mbtrule', RSV5='1' WHERE DATA_ID='MBT_210S210010294S210010103S210010232';
UPDATE GP_QC_RULE SET DATA_DATE='20190620', CORP_ID='TESTCORP', ORG_ID='72', GROUP_ID='002', INQ_ORG_ID=NULL, INQ_GROUP_ID=NULL, RULE_DESC='若账户类型为“R2”时，月度表现信息段中的“逾期 91-180 天未归还本金”字段不适用于此类账户。', RULE_MESSAGE='若账户类型为“R2”时，月度表现信息段中的“逾期 91-180 天未归还本金”字段不适用于此类账户。', RULE_TYPE=NULL, RULE_SOURCE='BUSI', FIELD='DATA_ID', FIELD_NAME=NULL, TRIMMABLE=NULL, NULLABLE='Y', TYPE_ID=NULL, ENCODING=NULL, MIN_LENGTH=NULL, MAX_LENGTH=NULL, MIN_VALUE=NULL, MAX_VALUE=NULL, MAX_PRECISION=NULL, MIN_SCALE=NULL, MAX_SCALE=NULL, ENUMERATION=NULL, PATTERN=NULL, IN_ENTITY=NULL, IN_FIELD=NULL, "SQL"=NULL, SQL_EXTRA_KEY=NULL, SCRIPT='if (!isEmpty(B_ACCT_TYPE) && B_ACCT_TYPE == "R2") {
    if (isEmpty(H_OVERD91_180PRINC)) {
        return true
    }
    return false
}
return true', BEAN=NULL, CHECK_FLAG=NULL, CHECK_DESC=NULL, CHECK_ERR_TYPE=NULL, NEXT_ACTION=NULL, DATA_STATUS=NULL, DATA_FLAG=NULL, DATA_OP=NULL, DATA_SOURCE=NULL, DATA_VERSION=NULL, DATA_REJ_DESC=NULL, DATA_DEL_DESC=NULL, DATA_CRT_USER=NULL, DATA_CRT_DATE=NULL, DATA_CRT_TIME=NULL, DATA_CHG_USER=NULL, DATA_CHG_DATE=NULL, DATA_CHG_TIME=NULL, DATA_APV_USER=NULL, DATA_APV_DATE=NULL, DATA_APV_TIME=NULL, RSV1='d177ecc5492c4eee8a7250122725cd49', RSV2=NULL, RSV3=NULL, RSV4='mbtrule', RSV5='1' WHERE DATA_ID='MBT_210S210010300S210010103S210010234';
UPDATE GP_QC_RULE SET DATA_DATE='20190620', CORP_ID='TESTCORP', ORG_ID='72', GROUP_ID='002', INQ_ORG_ID=NULL, INQ_GROUP_ID=NULL, RULE_DESC='若账户类型为“C1”时，月度表现信息段中的“逾期 91-180 天未归还本金”字段不适用于此类模板。', RULE_MESSAGE='若账户类型为“C1”时，月度表现信息段中的“逾期 91-180 天未归还本金”字段不适用于此类模板。', RULE_TYPE=NULL, RULE_SOURCE='BUSI', FIELD='DATA_ID', FIELD_NAME=NULL, TRIMMABLE=NULL, NULLABLE='Y', TYPE_ID=NULL, ENCODING=NULL, MIN_LENGTH=NULL, MAX_LENGTH=NULL, MIN_VALUE=NULL, MAX_VALUE=NULL, MAX_PRECISION=NULL, MIN_SCALE=NULL, MAX_SCALE=NULL, ENUMERATION=NULL, PATTERN=NULL, IN_ENTITY=NULL, IN_FIELD=NULL, "SQL"=NULL, SQL_EXTRA_KEY=NULL, SCRIPT='if (!isEmpty(B_ACCT_TYPE) && B_ACCT_TYPE == "C1") {
    if (isEmpty(H_OVERD91_180PRINC)) {
        return true
    }
    return false
}
return true', BEAN=NULL, CHECK_FLAG=NULL, CHECK_DESC=NULL, CHECK_ERR_TYPE=NULL, NEXT_ACTION=NULL, DATA_STATUS=NULL, DATA_FLAG=NULL, DATA_OP=NULL, DATA_SOURCE=NULL, DATA_VERSION=NULL, DATA_REJ_DESC=NULL, DATA_DEL_DESC=NULL, DATA_CRT_USER=NULL, DATA_CRT_DATE=NULL, DATA_CRT_TIME=NULL, DATA_CHG_USER=NULL, DATA_CHG_DATE=NULL, DATA_CHG_TIME=NULL, DATA_APV_USER=NULL, DATA_APV_DATE=NULL, DATA_APV_TIME=NULL, RSV1='d165cfc93bb0436e97d2d249058c51bc', RSV2=NULL, RSV3=NULL, RSV4='mbtrule', RSV5='1' WHERE DATA_ID='MBT_210S210010304S210010111S210010234';
UPDATE GP_QC_RULE SET DATA_DATE='20190620', CORP_ID='TESTCORP', ORG_ID='72', GROUP_ID='002', INQ_ORG_ID=NULL, INQ_GROUP_ID=NULL, RULE_DESC='若账户类型为“R1”时，月度表现信息段中的“透支 180 天以上未还余额”字段不适用于此类账户。', RULE_MESSAGE='若账户类型为“R1”时，月度表现信息段中的“透支 180 天以上未还余额”字段不适用于此类账户。', RULE_TYPE=NULL, RULE_SOURCE='BUSI', FIELD='DATA_ID', FIELD_NAME=NULL, TRIMMABLE=NULL, NULLABLE='Y', TYPE_ID=NULL, ENCODING=NULL, MIN_LENGTH=NULL, MAX_LENGTH=NULL, MIN_VALUE=NULL, MAX_VALUE=NULL, MAX_PRECISION=NULL, MIN_SCALE=NULL, MAX_SCALE=NULL, ENUMERATION=NULL, PATTERN=NULL, IN_ENTITY=NULL, IN_FIELD=NULL, "SQL"=NULL, SQL_EXTRA_KEY=NULL, SCRIPT='if (!isEmpty(B_ACCT_TYPE) && B_ACCT_TYPE == "R1") {
    if (isEmpty(H_OVERD_RAW_BA_OVE180)) {
        return true
    }
    return false
}
return true', BEAN=NULL, CHECK_FLAG=NULL, CHECK_DESC=NULL, CHECK_ERR_TYPE=NULL, NEXT_ACTION=NULL, DATA_STATUS=NULL, DATA_FLAG=NULL, DATA_OP=NULL, DATA_SOURCE=NULL, DATA_VERSION=NULL, DATA_REJ_DESC=NULL, DATA_DEL_DESC=NULL, DATA_CRT_USER=NULL, DATA_CRT_DATE=NULL, DATA_CRT_TIME=NULL, DATA_CHG_USER=NULL, DATA_CHG_DATE=NULL, DATA_CHG_TIME=NULL, DATA_APV_USER=NULL, DATA_APV_DATE=NULL, DATA_APV_TIME=NULL, RSV1='e1026362c9d644e6aae27f3d3accb2a7', RSV2=NULL, RSV3=NULL, RSV4='mbtrule', RSV5='1' WHERE DATA_ID='MBT_210S210010311S210010101S210010242';
UPDATE GP_QC_RULE SET DATA_DATE='20190620', CORP_ID='TESTCORP', ORG_ID='72', GROUP_ID='002', INQ_ORG_ID=NULL, INQ_GROUP_ID=NULL, RULE_DESC='若账户类型为“C1”时，月度表现信息段中的“透支 180 天以上未还余额”字段不适用于此类模板。', RULE_MESSAGE='若账户类型为“C1”时，月度表现信息段中的“透支 180 天以上未还余额”字段不适用于此类模板。', RULE_TYPE=NULL, RULE_SOURCE='BUSI', FIELD='DATA_ID', FIELD_NAME=NULL, TRIMMABLE=NULL, NULLABLE='Y', TYPE_ID=NULL, ENCODING=NULL, MIN_LENGTH=NULL, MAX_LENGTH=NULL, MIN_VALUE=NULL, MAX_VALUE=NULL, MAX_PRECISION=NULL, MIN_SCALE=NULL, MAX_SCALE=NULL, ENUMERATION=NULL, PATTERN=NULL, IN_ENTITY=NULL, IN_FIELD=NULL, "SQL"=NULL, SQL_EXTRA_KEY=NULL, SCRIPT='if (!isEmpty(B_ACCT_TYPE) && B_ACCT_TYPE == "C1") {
    if (isEmpty(H_OVERD_RAW_BA_OVE180)) {
        return true
    }
    return false
}
return true', BEAN=NULL, CHECK_FLAG=NULL, CHECK_DESC=NULL, CHECK_ERR_TYPE=NULL, NEXT_ACTION=NULL, DATA_STATUS=NULL, DATA_FLAG=NULL, DATA_OP=NULL, DATA_SOURCE=NULL, DATA_VERSION=NULL, DATA_REJ_DESC=NULL, DATA_DEL_DESC=NULL, DATA_CRT_USER=NULL, DATA_CRT_DATE=NULL, DATA_CRT_TIME=NULL, DATA_CHG_USER=NULL, DATA_CHG_DATE=NULL, DATA_CHG_TIME=NULL, DATA_APV_USER=NULL, DATA_APV_DATE=NULL, DATA_APV_TIME=NULL, RSV1='d3e07ebc204640a9b307c6e9a2aba7b7', RSV2=NULL, RSV3=NULL, RSV4='mbtrule', RSV5='1' WHERE DATA_ID='MBT_210S210010316S210010111S210010242';
UPDATE GP_QC_RULE SET DATA_DATE='20190620', CORP_ID='TESTCORP', ORG_ID='72', GROUP_ID='002', INQ_ORG_ID=NULL, INQ_GROUP_ID=NULL, RULE_DESC='若账户类型为“R1”时，月度表现信息段中的“本期账单余额”字段不适用于此类账户。', RULE_MESSAGE='若账户类型为“R1”时，月度表现信息段中的“本期账单余额”字段不适用于此类账户。', RULE_TYPE=NULL, RULE_SOURCE='BUSI', FIELD='DATA_ID', FIELD_NAME=NULL, TRIMMABLE=NULL, NULLABLE='Y', TYPE_ID=NULL, ENCODING=NULL, MIN_LENGTH=NULL, MAX_LENGTH=NULL, MIN_VALUE=NULL, MAX_VALUE=NULL, MAX_PRECISION=NULL, MIN_SCALE=NULL, MAX_SCALE=NULL, ENUMERATION=NULL, PATTERN=NULL, IN_ENTITY=NULL, IN_FIELD=NULL, "SQL"=NULL, SQL_EXTRA_KEY=NULL, SCRIPT='if (!isEmpty(B_ACCT_TYPE) && B_ACCT_TYPE == "R1") {
    if (!isEmpty(H_PRID_ACCT_BAL)) {
        return true
    }
    return false
}
return true', BEAN=NULL, CHECK_FLAG=NULL, CHECK_DESC=NULL, CHECK_ERR_TYPE=NULL, NEXT_ACTION=NULL, DATA_STATUS=NULL, DATA_FLAG=NULL, DATA_OP=NULL, DATA_SOURCE=NULL, DATA_VERSION=NULL, DATA_REJ_DESC=NULL, DATA_DEL_DESC=NULL, DATA_CRT_USER=NULL, DATA_CRT_DATE=NULL, DATA_CRT_TIME=NULL, DATA_CHG_USER=NULL, DATA_CHG_DATE=NULL, DATA_CHG_TIME=NULL, DATA_APV_USER=NULL, DATA_APV_DATE=NULL, DATA_APV_TIME=NULL, RSV1='5784d08a56314cbaacf0721b11ea73d7', RSV2=NULL, RSV3=NULL, RSV4='mbtrule', RSV5='1' WHERE DATA_ID='MBT_210S210010239S210010101S210010196';
UPDATE GP_QC_RULE SET DATA_DATE='20190620', CORP_ID='TESTCORP', ORG_ID='72', GROUP_ID='002', INQ_ORG_ID=NULL, INQ_GROUP_ID=NULL, RULE_DESC='若账户类型为“C1”时，月度表现信息段中的“本期账单余额”字段不适用于此类模板。', RULE_MESSAGE='若账户类型为“C1”时，月度表现信息段中的“本期账单余额”字段不适用于此类模板。', RULE_TYPE=NULL, RULE_SOURCE='BUSI', FIELD='DATA_ID', FIELD_NAME=NULL, TRIMMABLE=NULL, NULLABLE='Y', TYPE_ID=NULL, ENCODING=NULL, MIN_LENGTH=NULL, MAX_LENGTH=NULL, MIN_VALUE=NULL, MAX_VALUE=NULL, MAX_PRECISION=NULL, MIN_SCALE=NULL, MAX_SCALE=NULL, ENUMERATION=NULL, PATTERN=NULL, IN_ENTITY=NULL, IN_FIELD=NULL, "SQL"=NULL, SQL_EXTRA_KEY=NULL, SCRIPT='if (!isEmpty(B_ACCT_TYPE) && B_ACCT_TYPE == "C1") {
    if (isEmpty(H_PRID_ACCT_BAL)) {
        return true
    }
    return false
}
return true', BEAN=NULL, CHECK_FLAG=NULL, CHECK_DESC=NULL, CHECK_ERR_TYPE=NULL, NEXT_ACTION=NULL, DATA_STATUS=NULL, DATA_FLAG=NULL, DATA_OP=NULL, DATA_SOURCE=NULL, DATA_VERSION=NULL, DATA_REJ_DESC=NULL, DATA_DEL_DESC=NULL, DATA_CRT_USER=NULL, DATA_CRT_DATE=NULL, DATA_CRT_TIME=NULL, DATA_CHG_USER=NULL, DATA_CHG_DATE=NULL, DATA_CHG_TIME=NULL, DATA_APV_USER=NULL, DATA_APV_DATE=NULL, DATA_APV_TIME=NULL, RSV1='016356258bbd4c56b10d2d9b4e9f5481', RSV2=NULL, RSV3=NULL, RSV4='mbtrule', RSV5='1' WHERE DATA_ID='MBT_210S210010244S210010111S210010196';
UPDATE GP_QC_RULE SET DATA_DATE='20190620', CORP_ID='TESTCORP', ORG_ID='72', GROUP_ID='002', INQ_ORG_ID=NULL, INQ_GROUP_ID=NULL, RULE_DESC='若账户类型为“D1”时，月度表现信息段中的“已使用额度”字段不适用于此类账户。', RULE_MESSAGE='若账户类型为“D1”时，月度表现信息段中的“已使用额度”字段不适用于此类账户。', RULE_TYPE=NULL, RULE_SOURCE='BUSI', FIELD='DATA_ID', FIELD_NAME=NULL, TRIMMABLE=NULL, NULLABLE='Y', TYPE_ID=NULL, ENCODING=NULL, MIN_LENGTH=NULL, MAX_LENGTH=NULL, MIN_VALUE=NULL, MAX_VALUE=NULL, MAX_PRECISION=NULL, MIN_SCALE=NULL, MAX_SCALE=NULL, ENUMERATION=NULL, PATTERN=NULL, IN_ENTITY=NULL, IN_FIELD=NULL, "SQL"=NULL, SQL_EXTRA_KEY=NULL, SCRIPT='if (!isEmpty(B_ACCT_TYPE) && B_ACCT_TYPE == "D1") {
    if (isEmpty(H_USED_AMT)) {
        return true
    }
    return false
}
return true', BEAN=NULL, CHECK_FLAG=NULL, CHECK_DESC=NULL, CHECK_ERR_TYPE=NULL, NEXT_ACTION=NULL, DATA_STATUS=NULL, DATA_FLAG=NULL, DATA_OP=NULL, DATA_SOURCE=NULL, DATA_VERSION=NULL, DATA_REJ_DESC=NULL, DATA_DEL_DESC=NULL, DATA_CRT_USER=NULL, DATA_CRT_DATE=NULL, DATA_CRT_TIME=NULL, DATA_CHG_USER=NULL, DATA_CHG_DATE=NULL, DATA_CHG_TIME=NULL, DATA_APV_USER=NULL, DATA_APV_DATE=NULL, DATA_APV_TIME=NULL, RSV1='d8f1fd1d03bb41a6b2057d3c4c007bf6', RSV2=NULL, RSV3=NULL, RSV4='mbtrule', RSV5='1' WHERE DATA_ID='MBT_210S210010249S210010109S210010200';
UPDATE GP_QC_RULE SET DATA_DATE='20190620', CORP_ID='TESTCORP', ORG_ID='72', GROUP_ID='002', INQ_ORG_ID=NULL, INQ_GROUP_ID=NULL, RULE_DESC='若账户类型为“R1”时，月度表现信息段中的“未出单的大额专项分期余额”字段不适用于此类账户。', RULE_MESSAGE='若账户类型为“R1”时，月度表现信息段中的“未出单的大额专项分期余额”字段不适用于此类账户。', RULE_TYPE=NULL, RULE_SOURCE='BUSI', FIELD='DATA_ID', FIELD_NAME=NULL, TRIMMABLE=NULL, NULLABLE='Y', TYPE_ID=NULL, ENCODING=NULL, MIN_LENGTH=NULL, MAX_LENGTH=NULL, MIN_VALUE=NULL, MAX_VALUE=NULL, MAX_PRECISION=NULL, MIN_SCALE=NULL, MAX_SCALE=NULL, ENUMERATION=NULL, PATTERN=NULL, IN_ENTITY=NULL, IN_FIELD=NULL, "SQL"=NULL, SQL_EXTRA_KEY=NULL, SCRIPT='if (!isEmpty(B_ACCT_TYPE) && B_ACCT_TYPE == "R1") {
    if (isEmpty(H_NOTLSU_BAL)) {
        return true
    }
    return false
}
return true', BEAN=NULL, CHECK_FLAG=NULL, CHECK_DESC=NULL, CHECK_ERR_TYPE=NULL, NEXT_ACTION=NULL, DATA_STATUS=NULL, DATA_FLAG=NULL, DATA_OP=NULL, DATA_SOURCE=NULL, DATA_VERSION=NULL, DATA_REJ_DESC=NULL, DATA_DEL_DESC=NULL, DATA_CRT_USER=NULL, DATA_CRT_DATE=NULL, DATA_CRT_TIME=NULL, DATA_CHG_USER=NULL, DATA_CHG_DATE=NULL, DATA_CHG_TIME=NULL, DATA_APV_USER=NULL, DATA_APV_DATE=NULL, DATA_APV_TIME=NULL, RSV1='7c65c7eec81b4b28aa8b7b288e6b7be5', RSV2=NULL, RSV3=NULL, RSV4='mbtrule', RSV5='1' WHERE DATA_ID='MBT_210S210010251S210010101S210010204';
UPDATE GP_QC_RULE SET DATA_DATE='20190624', CORP_ID='TESTCORP', ORG_ID='72', GROUP_ID='002', INQ_ORG_ID=NULL, INQ_GROUP_ID=NULL, RULE_DESC='当“账户类型”为“C1”，“信用额度”为空', RULE_MESSAGE='当“账户类型”为“C1”，“信用额度”为空', RULE_TYPE=NULL, RULE_SOURCE='BUSI', FIELD='DATA_ID', FIELD_NAME=NULL, TRIMMABLE=NULL, NULLABLE='Y', TYPE_ID=NULL, ENCODING=NULL, MIN_LENGTH=NULL, MAX_LENGTH=NULL, MIN_VALUE=NULL, MAX_VALUE=NULL, MAX_PRECISION=NULL, MIN_SCALE=NULL, MAX_SCALE=NULL, ENUMERATION=NULL, PATTERN=NULL, IN_ENTITY=NULL, IN_FIELD=NULL, "SQL"=NULL, SQL_EXTRA_KEY=NULL, SCRIPT='if (!isEmpty(B_ACCT_TYPE) && B_ACCT_TYPE == "C1") {
    if (isEmpty(C_ACCT_CRED_LINE_AMT)) {
        return true
    }
    return false
}
return true', BEAN=NULL, CHECK_FLAG=NULL, CHECK_DESC=NULL, CHECK_ERR_TYPE=NULL, NEXT_ACTION=NULL, DATA_STATUS=NULL, DATA_FLAG=NULL, DATA_OP=NULL, DATA_SOURCE=NULL, DATA_VERSION=NULL, DATA_REJ_DESC=NULL, DATA_DEL_DESC=NULL, DATA_CRT_USER=NULL, DATA_CRT_DATE=NULL, DATA_CRT_TIME=NULL, DATA_CHG_USER=NULL, DATA_CHG_DATE=NULL, DATA_CHG_TIME=NULL, DATA_APV_USER=NULL, DATA_APV_DATE=NULL, DATA_APV_TIME=NULL, RSV1='1ccb1073e70745bda80d4bde6a9728cc', RSV2=NULL, RSV3=NULL, RSV4='mbtrule', RSV5='1' WHERE DATA_ID='MBT_410S4100101S410010107S410010102';
UPDATE GP_QC_RULE SET DATA_DATE='20190624', CORP_ID='TESTCORP', ORG_ID='72', GROUP_ID='002', INQ_ORG_ID=NULL, INQ_GROUP_ID=NULL, RULE_DESC='当“账户类型”为“R4”，“借款金额”不能为空', RULE_MESSAGE='当“账户类型”为“R4”，“借款金额”不能为空', RULE_TYPE=NULL, RULE_SOURCE='BUSI', FIELD='DATA_ID', FIELD_NAME=NULL, TRIMMABLE=NULL, NULLABLE='Y', TYPE_ID=NULL, ENCODING=NULL, MIN_LENGTH=NULL, MAX_LENGTH=NULL, MIN_VALUE=NULL, MAX_VALUE=NULL, MAX_PRECISION=NULL, MIN_SCALE=NULL, MAX_SCALE=NULL, ENUMERATION=NULL, PATTERN=NULL, IN_ENTITY=NULL, IN_FIELD=NULL, "SQL"=NULL, SQL_EXTRA_KEY=NULL, SCRIPT='if (!isEmpty(B_ACCT_TYPE) && B_ACCT_TYPE == "R4") {
    if (!isEmpty(C_LOAN_AMT)) {
        return true
    }
    return false
}
return true', BEAN=NULL, CHECK_FLAG=NULL, CHECK_DESC=NULL, CHECK_ERR_TYPE=NULL, NEXT_ACTION=NULL, DATA_STATUS=NULL, DATA_FLAG=NULL, DATA_OP=NULL, DATA_SOURCE=NULL, DATA_VERSION=NULL, DATA_REJ_DESC=NULL, DATA_DEL_DESC=NULL, DATA_CRT_USER=NULL, DATA_CRT_DATE=NULL, DATA_CRT_TIME=NULL, DATA_CHG_USER=NULL, DATA_CHG_DATE=NULL, DATA_CHG_TIME=NULL, DATA_APV_USER=NULL, DATA_APV_DATE=NULL, DATA_APV_TIME=NULL, RSV1='e5ba0837efb34d9d9255a052d0ee73eb', RSV2=NULL, RSV3=NULL, RSV4='mbtrule', RSV5='1' WHERE DATA_ID='MBT_410S4100103S410010305S410010302';
UPDATE GP_QC_RULE SET DATA_DATE='20190624', CORP_ID='TESTCORP', ORG_ID='72', GROUP_ID='002', INQ_ORG_ID=NULL, INQ_GROUP_ID=NULL, RULE_DESC='当“账户类型”为“R1”，“业务经营类型”不能为空', RULE_MESSAGE='当“账户类型”为“R1”，“业务经营类型”不能为空', RULE_TYPE=NULL, RULE_SOURCE='BUSI', FIELD='DATA_ID', FIELD_NAME=NULL, TRIMMABLE=NULL, NULLABLE='Y', TYPE_ID=NULL, ENCODING=NULL, MIN_LENGTH=NULL, MAX_LENGTH=NULL, MIN_VALUE=NULL, MAX_VALUE=NULL, MAX_PRECISION=NULL, MIN_SCALE=NULL, MAX_SCALE=NULL, ENUMERATION=NULL, PATTERN=NULL, IN_ENTITY=NULL, IN_FIELD=NULL, "SQL"=NULL, SQL_EXTRA_KEY=NULL, SCRIPT='if (!isEmpty(B_ACCT_TYPE) && B_ACCT_TYPE == "R1") {
    if (!isEmpty(C_FUND_SOU)) {
        return true
    }
    return false
}
return true', BEAN=NULL, CHECK_FLAG=NULL, CHECK_DESC=NULL, CHECK_ERR_TYPE=NULL, NEXT_ACTION=NULL, DATA_STATUS=NULL, DATA_FLAG=NULL, DATA_OP=NULL, DATA_SOURCE=NULL, DATA_VERSION=NULL, DATA_REJ_DESC=NULL, DATA_DEL_DESC=NULL, DATA_CRT_USER=NULL, DATA_CRT_DATE=NULL, DATA_CRT_TIME=NULL, DATA_CHG_USER=NULL, DATA_CHG_DATE=NULL, DATA_CHG_TIME=NULL, DATA_APV_USER=NULL, DATA_APV_DATE=NULL, DATA_APV_TIME=NULL, RSV1='6328af97f399484bb7c3fcceef780ad9', RSV2=NULL, RSV3=NULL, RSV4='mbtrule', RSV5='1' WHERE DATA_ID='MBT_410S4100125S410012501S410012502';
UPDATE GP_QC_RULE SET DATA_DATE='20190624', CORP_ID='TESTCORP', ORG_ID='72', GROUP_ID='002', INQ_ORG_ID=NULL, INQ_GROUP_ID=NULL, RULE_DESC='当“账户类型”为“C1”，“业务经营类型”为空', RULE_MESSAGE='当“账户类型”为“C1”，“业务经营类型”为空', RULE_TYPE=NULL, RULE_SOURCE='BUSI', FIELD='DATA_ID', FIELD_NAME=NULL, TRIMMABLE=NULL, NULLABLE='Y', TYPE_ID=NULL, ENCODING=NULL, MIN_LENGTH=NULL, MAX_LENGTH=NULL, MIN_VALUE=NULL, MAX_VALUE=NULL, MAX_PRECISION=NULL, MIN_SCALE=NULL, MAX_SCALE=NULL, ENUMERATION=NULL, PATTERN=NULL, IN_ENTITY=NULL, IN_FIELD=NULL, "SQL"=NULL, SQL_EXTRA_KEY=NULL, SCRIPT='if (!isEmpty(B_ACCT_TYPE) && B_ACCT_TYPE == "C1") {
    if (isEmpty(C_FUND_SOU)) {
        return true
    }
    return false
}
return true', BEAN=NULL, CHECK_FLAG=NULL, CHECK_DESC=NULL, CHECK_ERR_TYPE=NULL, NEXT_ACTION=NULL, DATA_STATUS=NULL, DATA_FLAG=NULL, DATA_OP=NULL, DATA_SOURCE=NULL, DATA_VERSION=NULL, DATA_REJ_DESC=NULL, DATA_DEL_DESC=NULL, DATA_CRT_USER=NULL, DATA_CRT_DATE=NULL, DATA_CRT_TIME=NULL, DATA_CHG_USER=NULL, DATA_CHG_DATE=NULL, DATA_CHG_TIME=NULL, DATA_APV_USER=NULL, DATA_APV_DATE=NULL, DATA_APV_TIME=NULL, RSV1='3a0daec6b2b24de383c230492dc316ac', RSV2=NULL, RSV3=NULL, RSV4='mbtrule', RSV5='1' WHERE DATA_ID='MBT_410S4100126S410012601S410012602';
UPDATE GP_QC_RULE SET DATA_DATE='20190624', CORP_ID='TESTCORP', ORG_ID='72', GROUP_ID='002', INQ_ORG_ID=NULL, INQ_GROUP_ID=NULL, RULE_DESC='当“账户类型”为“D2”，“资产转让标志”为空', RULE_MESSAGE='当“账户类型”为“D2”，“资产转让标志”为空', RULE_TYPE=NULL, RULE_SOURCE='BUSI', FIELD='DATA_ID', FIELD_NAME=NULL, TRIMMABLE=NULL, NULLABLE='Y', TYPE_ID=NULL, ENCODING=NULL, MIN_LENGTH=NULL, MAX_LENGTH=NULL, MIN_VALUE=NULL, MAX_VALUE=NULL, MAX_PRECISION=NULL, MIN_SCALE=NULL, MAX_SCALE=NULL, ENUMERATION=NULL, PATTERN=NULL, IN_ENTITY=NULL, IN_FIELD=NULL, "SQL"=NULL, SQL_EXTRA_KEY=NULL, SCRIPT='if (!isEmpty(B_ACCT_TYPE) && B_ACCT_TYPE == "D2") {
    if (isEmpty(C_ASSET_TRAND_FLAG)) {
        return true
    }
    return false
}
return true', BEAN=NULL, CHECK_FLAG=NULL, CHECK_DESC=NULL, CHECK_ERR_TYPE=NULL, NEXT_ACTION=NULL, DATA_STATUS=NULL, DATA_FLAG=NULL, DATA_OP=NULL, DATA_SOURCE=NULL, DATA_VERSION=NULL, DATA_REJ_DESC=NULL, DATA_DEL_DESC=NULL, DATA_CRT_USER=NULL, DATA_CRT_DATE=NULL, DATA_CRT_TIME=NULL, DATA_CHG_USER=NULL, DATA_CHG_DATE=NULL, DATA_CHG_TIME=NULL, DATA_APV_USER=NULL, DATA_APV_DATE=NULL, DATA_APV_TIME=NULL, RSV1='1809607b394c441eae04f584f6a75922', RSV2=NULL, RSV3=NULL, RSV4='mbtrule', RSV5='1' WHERE DATA_ID='MBT_410S4100128S410012801S410012802';
UPDATE GP_QC_RULE SET DATA_DATE='20190624', CORP_ID='TESTCORP', ORG_ID='72', GROUP_ID='002', INQ_ORG_ID=NULL, INQ_GROUP_ID=NULL, RULE_DESC='当“账户类型”为“D1”，“分次放款标志”不能为空', RULE_MESSAGE='当“账户类型”为“D1”，“分次放款标志”不能为空', RULE_TYPE=NULL, RULE_SOURCE='BUSI', FIELD='DATA_ID', FIELD_NAME=NULL, TRIMMABLE=NULL, NULLABLE='Y', TYPE_ID=NULL, ENCODING=NULL, MIN_LENGTH=NULL, MAX_LENGTH=NULL, MIN_VALUE=NULL, MAX_VALUE=NULL, MAX_PRECISION=NULL, MIN_SCALE=NULL, MAX_SCALE=NULL, ENUMERATION=NULL, PATTERN=NULL, IN_ENTITY=NULL, IN_FIELD=NULL, "SQL"=NULL, SQL_EXTRA_KEY=NULL, SCRIPT='if (!isEmpty(B_ACCT_TYPE) && B_ACCT_TYPE == "D1") {
    if (!isEmpty(C_FLAG)) {
        return true
    }
    return false
}
return true', BEAN=NULL, CHECK_FLAG=NULL, CHECK_DESC=NULL, CHECK_ERR_TYPE=NULL, NEXT_ACTION=NULL, DATA_STATUS=NULL, DATA_FLAG=NULL, DATA_OP=NULL, DATA_SOURCE=NULL, DATA_VERSION=NULL, DATA_REJ_DESC=NULL, DATA_DEL_DESC=NULL, DATA_CRT_USER=NULL, DATA_CRT_DATE=NULL, DATA_CRT_TIME=NULL, DATA_CHG_USER=NULL, DATA_CHG_DATE=NULL, DATA_CHG_TIME=NULL, DATA_APV_USER=NULL, DATA_APV_DATE=NULL, DATA_APV_TIME=NULL, RSV1='cf5ff34f13af400cbca581a0e2b343f4', RSV2=NULL, RSV3=NULL, RSV4='mbtrule', RSV5='1' WHERE DATA_ID='MBT_410S4100106S410010601S410010602';
UPDATE GP_QC_RULE SET DATA_DATE='20190624', CORP_ID='TESTCORP', ORG_ID='72', GROUP_ID='002', INQ_ORG_ID=NULL, INQ_GROUP_ID=NULL, RULE_DESC='当“账户类型”为“D1”，“到期日期”不能为空', RULE_MESSAGE='当“账户类型”为“D1”，“到期日期”不能为空', RULE_TYPE=NULL, RULE_SOURCE='BUSI', FIELD='DATA_ID', FIELD_NAME=NULL, TRIMMABLE=NULL, NULLABLE='Y', TYPE_ID=NULL, ENCODING=NULL, MIN_LENGTH=NULL, MAX_LENGTH=NULL, MIN_VALUE=NULL, MAX_VALUE=NULL, MAX_PRECISION=NULL, MIN_SCALE=NULL, MAX_SCALE=NULL, ENUMERATION=NULL, PATTERN=NULL, IN_ENTITY=NULL, IN_FIELD=NULL, "SQL"=NULL, SQL_EXTRA_KEY=NULL, SCRIPT='if (!isEmpty(B_ACCT_TYPE) && B_ACCT_TYPE == "D1") {
    if (!isEmpty(C_DUE_DATE)) {
        return true
    }
    return false
}
return true', BEAN=NULL, CHECK_FLAG=NULL, CHECK_DESC=NULL, CHECK_ERR_TYPE=NULL, NEXT_ACTION=NULL, DATA_STATUS=NULL, DATA_FLAG=NULL, DATA_OP=NULL, DATA_SOURCE=NULL, DATA_VERSION=NULL, DATA_REJ_DESC=NULL, DATA_DEL_DESC=NULL, DATA_CRT_USER=NULL, DATA_CRT_DATE=NULL, DATA_CRT_TIME=NULL, DATA_CHG_USER=NULL, DATA_CHG_DATE=NULL, DATA_CHG_TIME=NULL, DATA_APV_USER=NULL, DATA_APV_DATE=NULL, DATA_APV_TIME=NULL, RSV1='d18a7dccca724533810334338db5d7cf', RSV2=NULL, RSV3=NULL, RSV4='mbtrule', RSV5='1' WHERE DATA_ID='MBT_410S4100107S410010707S410010702';
UPDATE GP_QC_RULE SET DATA_DATE='20190624', CORP_ID='TESTCORP', ORG_ID='72', GROUP_ID='002', INQ_ORG_ID=NULL, INQ_GROUP_ID=NULL, RULE_DESC='当“账户类型”为“R4”，“还款方式”不能为空', RULE_MESSAGE='当“账户类型”为“R4”，“还款方式”不能为空', RULE_TYPE=NULL, RULE_SOURCE='BUSI', FIELD='DATA_ID', FIELD_NAME=NULL, TRIMMABLE=NULL, NULLABLE='Y', TYPE_ID=NULL, ENCODING=NULL, MIN_LENGTH=NULL, MAX_LENGTH=NULL, MIN_VALUE=NULL, MAX_VALUE=NULL, MAX_PRECISION=NULL, MIN_SCALE=NULL, MAX_SCALE=NULL, ENUMERATION=NULL, PATTERN=NULL, IN_ENTITY=NULL, IN_FIELD=NULL, "SQL"=NULL, SQL_EXTRA_KEY=NULL, SCRIPT='if (!isEmpty(B_ACCT_TYPE) && B_ACCT_TYPE == "R4") {
    if (!isEmpty(C_REPAY_MODE)) {
        return true
    }
    return false
}
return true', BEAN=NULL, CHECK_FLAG=NULL, CHECK_DESC=NULL, CHECK_ERR_TYPE=NULL, NEXT_ACTION=NULL, DATA_STATUS=NULL, DATA_FLAG=NULL, DATA_OP=NULL, DATA_SOURCE=NULL, DATA_VERSION=NULL, DATA_REJ_DESC=NULL, DATA_DEL_DESC=NULL, DATA_CRT_USER=NULL, DATA_CRT_DATE=NULL, DATA_CRT_TIME=NULL, DATA_CHG_USER=NULL, DATA_CHG_DATE=NULL, DATA_CHG_TIME=NULL, DATA_APV_USER=NULL, DATA_APV_DATE=NULL, DATA_APV_TIME=NULL, RSV1='ff8a77cccc524caab4ec5bf34491dbf7', RSV2=NULL, RSV3=NULL, RSV4='mbtrule', RSV5='1' WHERE DATA_ID='MBT_410S4100109S410010905S410010902';
UPDATE GP_QC_RULE SET DATA_DATE='20190624', CORP_ID='TESTCORP', ORG_ID='72', GROUP_ID='002', INQ_ORG_ID=NULL, INQ_GROUP_ID=NULL, RULE_DESC='当“账户类型”为“D1”，“还款频率”不能为空', RULE_MESSAGE='当“账户类型”为“D1”，“还款频率”不能为空', RULE_TYPE=NULL, RULE_SOURCE='BUSI', FIELD='DATA_ID', FIELD_NAME=NULL, TRIMMABLE=NULL, NULLABLE='Y', TYPE_ID=NULL, ENCODING=NULL, MIN_LENGTH=NULL, MAX_LENGTH=NULL, MIN_VALUE=NULL, MAX_VALUE=NULL, MAX_PRECISION=NULL, MIN_SCALE=NULL, MAX_SCALE=NULL, ENUMERATION=NULL, PATTERN=NULL, IN_ENTITY=NULL, IN_FIELD=NULL, "SQL"=NULL, SQL_EXTRA_KEY=NULL, SCRIPT='if (!isEmpty(B_ACCT_TYPE) && B_ACCT_TYPE == "D1") {
    if (!isEmpty(C_REPAY_FREQCY)) {
        return true
    }
    return false
}
return true', BEAN=NULL, CHECK_FLAG=NULL, CHECK_DESC=NULL, CHECK_ERR_TYPE=NULL, NEXT_ACTION=NULL, DATA_STATUS=NULL, DATA_FLAG=NULL, DATA_OP=NULL, DATA_SOURCE=NULL, DATA_VERSION=NULL, DATA_REJ_DESC=NULL, DATA_DEL_DESC=NULL, DATA_CRT_USER=NULL, DATA_CRT_DATE=NULL, DATA_CRT_TIME=NULL, DATA_CHG_USER=NULL, DATA_CHG_DATE=NULL, DATA_CHG_TIME=NULL, DATA_APV_USER=NULL, DATA_APV_DATE=NULL, DATA_APV_TIME=NULL, RSV1='c10bc1b919d7412395eff6126c597e96', RSV2=NULL, RSV3=NULL, RSV4='mbtrule', RSV5='1' WHERE DATA_ID='MBT_410S4100111S410011103S410011102';
UPDATE GP_QC_RULE SET DATA_DATE='20190624', CORP_ID='TESTCORP', ORG_ID='72', GROUP_ID='002', INQ_ORG_ID=NULL, INQ_GROUP_ID=NULL, RULE_DESC='当“账户类型”为“C1”，“业务申请地行政区划代码”为空', RULE_MESSAGE='当“账户类型”为“C1”，“业务申请地行政区划代码”为空', RULE_TYPE=NULL, RULE_SOURCE='BUSI', FIELD='DATA_ID', FIELD_NAME=NULL, TRIMMABLE=NULL, NULLABLE='Y', TYPE_ID=NULL, ENCODING=NULL, MIN_LENGTH=NULL, MAX_LENGTH=NULL, MIN_VALUE=NULL, MAX_VALUE=NULL, MAX_PRECISION=NULL, MIN_SCALE=NULL, MAX_SCALE=NULL, ENUMERATION=NULL, PATTERN=NULL, IN_ENTITY=NULL, IN_FIELD=NULL, "SQL"=NULL, SQL_EXTRA_KEY=NULL, SCRIPT='if (!isEmpty(B_ACCT_TYPE) && B_ACCT_TYPE == "C1") {
    if (isEmpty(MBT_410_C_APPLY_BUSI_DIST)) {
        return true
    }
    return false
}
return true', BEAN=NULL, CHECK_FLAG=NULL, CHECK_DESC=NULL, CHECK_ERR_TYPE=NULL, NEXT_ACTION=NULL, DATA_STATUS=NULL, DATA_FLAG=NULL, DATA_OP=NULL, DATA_SOURCE=NULL, DATA_VERSION=NULL, DATA_REJ_DESC=NULL, DATA_DEL_DESC=NULL, DATA_CRT_USER=NULL, DATA_CRT_DATE=NULL, DATA_CRT_TIME=NULL, DATA_CHG_USER=NULL, DATA_CHG_DATE=NULL, DATA_CHG_TIME=NULL, DATA_APV_USER=NULL, DATA_APV_DATE=NULL, DATA_APV_TIME=NULL, RSV1='16723f1d1b5b4012b4a893570c7415e8', RSV2=NULL, RSV3=NULL, RSV4='mbtrule', RSV5='1' WHERE DATA_ID='MBT_410S4100114S410011401S410011402';
UPDATE GP_QC_RULE SET DATA_DATE='20190624', CORP_ID='TESTCORP', ORG_ID='72', GROUP_ID='002', INQ_ORG_ID=NULL, INQ_GROUP_ID=NULL, RULE_DESC='当“账户类型”为“D1”，“担保方式”不能为空', RULE_MESSAGE='当“账户类型”为“D1”，“担保方式”不能为空', RULE_TYPE=NULL, RULE_SOURCE='BUSI', FIELD='DATA_ID', FIELD_NAME=NULL, TRIMMABLE=NULL, NULLABLE='Y', TYPE_ID=NULL, ENCODING=NULL, MIN_LENGTH=NULL, MAX_LENGTH=NULL, MIN_VALUE=NULL, MAX_VALUE=NULL, MAX_PRECISION=NULL, MIN_SCALE=NULL, MAX_SCALE=NULL, ENUMERATION=NULL, PATTERN=NULL, IN_ENTITY=NULL, IN_FIELD=NULL, "SQL"=NULL, SQL_EXTRA_KEY=NULL, SCRIPT='if (!isEmpty(B_ACCT_TYPE) && B_ACCT_TYPE == "D1") {
    if (!isEmpty(C_GUAR_MODE)) {
        return true
    }
    return false
}
return true', BEAN=NULL, CHECK_FLAG=NULL, CHECK_DESC=NULL, CHECK_ERR_TYPE=NULL, NEXT_ACTION=NULL, DATA_STATUS=NULL, DATA_FLAG=NULL, DATA_OP=NULL, DATA_SOURCE=NULL, DATA_VERSION=NULL, DATA_REJ_DESC=NULL, DATA_DEL_DESC=NULL, DATA_CRT_USER=NULL, DATA_CRT_DATE=NULL, DATA_CRT_TIME=NULL, DATA_CHG_USER=NULL, DATA_CHG_DATE=NULL, DATA_CHG_TIME=NULL, DATA_APV_USER=NULL, DATA_APV_DATE=NULL, DATA_APV_TIME=NULL, RSV1='1ccc5db64a194f15836e8e3d1c91c31c', RSV2=NULL, RSV3=NULL, RSV4='mbtrule', RSV5='1' WHERE DATA_ID='MBT_410S4100115S410011507S410011502';
UPDATE GP_QC_RULE SET DATA_DATE='20190624', CORP_ID='TESTCORP', ORG_ID='72', GROUP_ID='002', INQ_ORG_ID=NULL, INQ_GROUP_ID=NULL, RULE_DESC='当“账户类型”为“R4”，“其他还款保证方式”不能为空', RULE_MESSAGE='当“账户类型”为“R4”，“其他还款保证方式”不能为空', RULE_TYPE=NULL, RULE_SOURCE='BUSI', FIELD='DATA_ID', FIELD_NAME=NULL, TRIMMABLE=NULL, NULLABLE='Y', TYPE_ID=NULL, ENCODING=NULL, MIN_LENGTH=NULL, MAX_LENGTH=NULL, MIN_VALUE=NULL, MAX_VALUE=NULL, MAX_PRECISION=NULL, MIN_SCALE=NULL, MAX_SCALE=NULL, ENUMERATION=NULL, PATTERN=NULL, IN_ENTITY=NULL, IN_FIELD=NULL, "SQL"=NULL, SQL_EXTRA_KEY=NULL, SCRIPT='if (!isEmpty(B_ACCT_TYPE) && B_ACCT_TYPE == "R4") {
    if (!isEmpty(C_OTH_REPY_GUAR_WAY)) {
        return true
    }
    return false
}
return true', BEAN=NULL, CHECK_FLAG=NULL, CHECK_DESC=NULL, CHECK_ERR_TYPE=NULL, NEXT_ACTION=NULL, DATA_STATUS=NULL, DATA_FLAG=NULL, DATA_OP=NULL, DATA_SOURCE=NULL, DATA_VERSION=NULL, DATA_REJ_DESC=NULL, DATA_DEL_DESC=NULL, DATA_CRT_USER=NULL, DATA_CRT_DATE=NULL, DATA_CRT_TIME=NULL, DATA_CHG_USER=NULL, DATA_CHG_DATE=NULL, DATA_CHG_TIME=NULL, DATA_APV_USER=NULL, DATA_APV_DATE=NULL, DATA_APV_TIME=NULL, RSV1='b26f61c08df8496cb3fbddf6e8b6d038', RSV2=NULL, RSV3=NULL, RSV4='mbtrule', RSV5='1' WHERE DATA_ID='MBT_410S4100117S410011705S410011702';
UPDATE GP_QC_RULE SET DATA_DATE='20190624', CORP_ID='TESTCORP', ORG_ID='72', GROUP_ID='002', INQ_ORG_ID=NULL, INQ_GROUP_ID=NULL, RULE_DESC='当“账户类型”为“D2”，“借款期限分类”为空', RULE_MESSAGE='当“账户类型”为“D2”，“借款期限分类”为空', RULE_TYPE=NULL, RULE_SOURCE='BUSI', FIELD='DATA_ID', FIELD_NAME=NULL, TRIMMABLE=NULL, NULLABLE='Y', TYPE_ID=NULL, ENCODING=NULL, MIN_LENGTH=NULL, MAX_LENGTH=NULL, MIN_VALUE=NULL, MAX_VALUE=NULL, MAX_PRECISION=NULL, MIN_SCALE=NULL, MAX_SCALE=NULL, ENUMERATION=NULL, PATTERN=NULL, IN_ENTITY=NULL, IN_FIELD=NULL, "SQL"=NULL, SQL_EXTRA_KEY=NULL, SCRIPT='if (!isEmpty(B_ACCT_TYPE) && B_ACCT_TYPE == "D2") {
    if (isEmpty(C_LOAN_TIME_LIM_CAT)) {
        return true
    }
    return false
}
return true', BEAN=NULL, CHECK_FLAG=NULL, CHECK_DESC=NULL, CHECK_ERR_TYPE=NULL, NEXT_ACTION=NULL, DATA_STATUS=NULL, DATA_FLAG=NULL, DATA_OP=NULL, DATA_SOURCE=NULL, DATA_VERSION=NULL, DATA_REJ_DESC=NULL, DATA_DEL_DESC=NULL, DATA_CRT_USER=NULL, DATA_CRT_DATE=NULL, DATA_CRT_TIME=NULL, DATA_CHG_USER=NULL, DATA_CHG_DATE=NULL, DATA_CHG_TIME=NULL, DATA_APV_USER=NULL, DATA_APV_DATE=NULL, DATA_APV_TIME=NULL, RSV1='225355abb92243788c2dd2646931e69d', RSV2=NULL, RSV3=NULL, RSV4='mbtrule', RSV5='1' WHERE DATA_ID='MBT_410S4100119S410011903S410011902';
UPDATE GP_QC_RULE SET DATA_DATE='20190624', CORP_ID='TESTCORP', ORG_ID='72', GROUP_ID='002', INQ_ORG_ID=NULL, INQ_GROUP_ID=NULL, RULE_DESC='当“账户类型”为“R1”，“贷款发放方式”不能为空', RULE_MESSAGE='当“账户类型”为“R1”，“贷款发放方式”不能为空', RULE_TYPE=NULL, RULE_SOURCE='BUSI', FIELD='DATA_ID', FIELD_NAME=NULL, TRIMMABLE=NULL, NULLABLE='Y', TYPE_ID=NULL, ENCODING=NULL, MIN_LENGTH=NULL, MAX_LENGTH=NULL, MIN_VALUE=NULL, MAX_VALUE=NULL, MAX_PRECISION=NULL, MIN_SCALE=NULL, MAX_SCALE=NULL, ENUMERATION=NULL, PATTERN=NULL, IN_ENTITY=NULL, IN_FIELD=NULL, "SQL"=NULL, SQL_EXTRA_KEY=NULL, SCRIPT='if (!isEmpty(B_ACCT_TYPE) && B_ACCT_TYPE == "R1") {
    if (!isEmpty(C_LOA_FRM)) {
        return true
    }
    return false
}
return true', BEAN=NULL, CHECK_FLAG=NULL, CHECK_DESC=NULL, CHECK_ERR_TYPE=NULL, NEXT_ACTION=NULL, DATA_STATUS=NULL, DATA_FLAG=NULL, DATA_OP=NULL, DATA_SOURCE=NULL, DATA_VERSION=NULL, DATA_REJ_DESC=NULL, DATA_DEL_DESC=NULL, DATA_CRT_USER=NULL, DATA_CRT_DATE=NULL, DATA_CRT_TIME=NULL, DATA_CHG_USER=NULL, DATA_CHG_DATE=NULL, DATA_CHG_TIME=NULL, DATA_APV_USER=NULL, DATA_APV_DATE=NULL, DATA_APV_TIME=NULL, RSV1='7d31c6db00dc47b6b2415381890c9b6c', RSV2=NULL, RSV3=NULL, RSV4='mbtrule', RSV5='1' WHERE DATA_ID='MBT_410S4100121S410012101S410012102';
UPDATE GP_QC_RULE SET DATA_DATE='20190624', CORP_ID='TESTCORP', ORG_ID='72', GROUP_ID='002', INQ_ORG_ID=NULL, INQ_GROUP_ID=NULL, RULE_DESC='当“账户类型”为“C1”，“贷款发放方式”为空', RULE_MESSAGE='当“账户类型”为“C1”，“贷款发放方式”为空', RULE_TYPE=NULL, RULE_SOURCE='BUSI', FIELD='DATA_ID', FIELD_NAME=NULL, TRIMMABLE=NULL, NULLABLE='Y', TYPE_ID=NULL, ENCODING=NULL, MIN_LENGTH=NULL, MAX_LENGTH=NULL, MIN_VALUE=NULL, MAX_VALUE=NULL, MAX_PRECISION=NULL, MIN_SCALE=NULL, MAX_SCALE=NULL, ENUMERATION=NULL, PATTERN=NULL, IN_ENTITY=NULL, IN_FIELD=NULL, "SQL"=NULL, SQL_EXTRA_KEY=NULL, SCRIPT='if (!isEmpty(B_ACCT_TYPE) && B_ACCT_TYPE == "C1") {
    if (isEmpty(C_LOA_FRM)) {
        return true
    }
    return false
}
return true', BEAN=NULL, CHECK_FLAG=NULL, CHECK_DESC=NULL, CHECK_ERR_TYPE=NULL, NEXT_ACTION=NULL, DATA_STATUS=NULL, DATA_FLAG=NULL, DATA_OP=NULL, DATA_SOURCE=NULL, DATA_VERSION=NULL, DATA_REJ_DESC=NULL, DATA_DEL_DESC=NULL, DATA_CRT_USER=NULL, DATA_CRT_DATE=NULL, DATA_CRT_TIME=NULL, DATA_CHG_USER=NULL, DATA_CHG_DATE=NULL, DATA_CHG_TIME=NULL, DATA_APV_USER=NULL, DATA_APV_DATE=NULL, DATA_APV_TIME=NULL, RSV1='40fa45c30aad412287f1ffa285505a8e', RSV2=NULL, RSV3=NULL, RSV4='mbtrule', RSV5='1' WHERE DATA_ID='MBT_410S4100122S410012201S410012202';
UPDATE GP_QC_RULE SET DATA_DATE='20190709', CORP_ID='TESTCORP', ORG_ID='72', GROUP_ID='002', INQ_ORG_ID=NULL, INQ_GROUP_ID=NULL, RULE_DESC='当“报送时点说明代码”为“41-五级分类调整”时，若“账户类型”为“C1”，应包含基础段、还款表现信息段。', RULE_MESSAGE='当“报送时点说明代码”为“41-五级分类调整”时，若“账户类型”为“C1”，应包含基础段、还款表现信息段。', RULE_TYPE=NULL, RULE_SOURCE='BUSI', FIELD='DATA_ID', FIELD_NAME=NULL, TRIMMABLE=NULL, NULLABLE='Y', TYPE_ID=NULL, ENCODING=NULL, MIN_LENGTH=NULL, MAX_LENGTH=NULL, MIN_VALUE=NULL, MAX_VALUE=NULL, MAX_PRECISION=NULL, MIN_SCALE=NULL, MAX_SCALE=NULL, ENUMERATION=NULL, PATTERN=NULL, IN_ENTITY=NULL, IN_FIELD=NULL, "SQL"=NULL, SQL_EXTRA_KEY=NULL, SCRIPT='if (!isEmpty(B_ACCT_TYPE) && B_ACCT_TYPE == "C1" && B_RPT_DATE_CODE == "41") {
    if (IS_RPT.substring(0,1) == "1" && IS_RPT.substring(4,5) == "1") {
        return true
    }
    return false
}
return true', BEAN=NULL, CHECK_FLAG=NULL, CHECK_DESC=NULL, CHECK_ERR_TYPE=NULL, NEXT_ACTION=NULL, DATA_STATUS=NULL, DATA_FLAG=NULL, DATA_OP=NULL, DATA_SOURCE=NULL, DATA_VERSION=NULL, DATA_REJ_DESC=NULL, DATA_DEL_DESC=NULL, DATA_CRT_USER=NULL, DATA_CRT_DATE=NULL, DATA_CRT_TIME=NULL, DATA_CHG_USER=NULL, DATA_CHG_DATE=NULL, DATA_CHG_TIME=NULL, DATA_APV_USER=NULL, DATA_APV_DATE=NULL, DATA_APV_TIME=NULL, RSV1='82b974e9c5b74ea69cb754c8b041635b', RSV2=NULL, RSV3=NULL, RSV4='mbtrule', RSV5='1' WHERE DATA_ID='MBT_410R4100111R410011107R410010302';
UPDATE GP_QC_RULE SET DATA_DATE='20190709', CORP_ID='TESTCORP', ORG_ID='72', GROUP_ID='002', INQ_ORG_ID=NULL, INQ_GROUP_ID=NULL, RULE_DESC='当“报送时点说明代码”为“41-五级分类调整”时，若“账户类型”为“C1”，不应包含相关还款责任人段、抵质押物信息段、授信额度信息段、初始债权说明段。', RULE_MESSAGE='当“报送时点说明代码”为“41-五级分类调整”时，若“账户类型”为“C1”，不应包含相关还款责任人段、抵质押物信息段、授信额度信息段、初始债权说明段。', RULE_TYPE=NULL, RULE_SOURCE='BUSI', FIELD='DATA_ID', FIELD_NAME=NULL, TRIMMABLE=NULL, NULLABLE='Y', TYPE_ID=NULL, ENCODING=NULL, MIN_LENGTH=NULL, MAX_LENGTH=NULL, MIN_VALUE=NULL, MAX_VALUE=NULL, MAX_PRECISION=NULL, MIN_SCALE=NULL, MAX_SCALE=NULL, ENUMERATION=NULL, PATTERN=NULL, IN_ENTITY=NULL, IN_FIELD=NULL, "SQL"=NULL, SQL_EXTRA_KEY=NULL, SCRIPT='if (!isEmpty(B_ACCT_TYPE) && B_ACCT_TYPE == "C1" && B_RPT_DATE_CODE == "41") {
    if (IS_RPT.substring(2,4) == "00" && IS_RPT.substring(6,8) == "00") {
        return true
    }
    return false
}
return true', BEAN=NULL, CHECK_FLAG=NULL, CHECK_DESC=NULL, CHECK_ERR_TYPE=NULL, NEXT_ACTION=NULL, DATA_STATUS=NULL, DATA_FLAG=NULL, DATA_OP=NULL, DATA_SOURCE=NULL, DATA_VERSION=NULL, DATA_REJ_DESC=NULL, DATA_DEL_DESC=NULL, DATA_CRT_USER=NULL, DATA_CRT_DATE=NULL, DATA_CRT_TIME=NULL, DATA_CHG_USER=NULL, DATA_CHG_DATE=NULL, DATA_CHG_TIME=NULL, DATA_APV_USER=NULL, DATA_APV_DATE=NULL, DATA_APV_TIME=NULL, RSV1='b766e61d854649d493a1c498c4943b7c', RSV2=NULL, RSV3=NULL, RSV4='mbtrule', RSV5='1' WHERE DATA_ID='MBT_410R4100112R410011107R410010402';
UPDATE GP_QC_RULE SET DATA_DATE='20190709', CORP_ID='TESTCORP', ORG_ID='72', GROUP_ID='002', INQ_ORG_ID=NULL, INQ_GROUP_ID=NULL, RULE_DESC='当“报送时点说明代码”为“42-展期发生”时，若“账户类型”为“D2”，不适用展期发生报送时点。', RULE_MESSAGE='当“报送时点说明代码”为“42-展期发生”时，若“账户类型”为“D2”，不适用展期发生报送时点。', RULE_TYPE=NULL, RULE_SOURCE='BUSI', FIELD='DATA_ID', FIELD_NAME=NULL, TRIMMABLE=NULL, NULLABLE='Y', TYPE_ID=NULL, ENCODING=NULL, MIN_LENGTH=NULL, MAX_LENGTH=NULL, MIN_VALUE=NULL, MAX_VALUE=NULL, MAX_PRECISION=NULL, MIN_SCALE=NULL, MAX_SCALE=NULL, ENUMERATION=NULL, PATTERN=NULL, IN_ENTITY=NULL, IN_FIELD=NULL, "SQL"=NULL, SQL_EXTRA_KEY=NULL, SCRIPT='if (!isEmpty(B_ACCT_TYPE) && B_ACCT_TYPE == "D2") {
    if (B_RPT_DATE_CODE != "42") {
        return true
    }
    return false
}
return true', BEAN=NULL, CHECK_FLAG=NULL, CHECK_DESC=NULL, CHECK_ERR_TYPE=NULL, NEXT_ACTION=NULL, DATA_STATUS=NULL, DATA_FLAG=NULL, DATA_OP=NULL, DATA_SOURCE=NULL, DATA_VERSION=NULL, DATA_REJ_DESC=NULL, DATA_DEL_DESC=NULL, DATA_CRT_USER=NULL, DATA_CRT_DATE=NULL, DATA_CRT_TIME=NULL, DATA_CHG_USER=NULL, DATA_CHG_DATE=NULL, DATA_CHG_TIME=NULL, DATA_APV_USER=NULL, DATA_APV_DATE=NULL, DATA_APV_TIME=NULL, RSV1='8e79a6d08fda4992a2062b5353983662', RSV2=NULL, RSV3=NULL, RSV4='mbtrule', RSV5='1' WHERE DATA_ID='MBT_410R4100113R410011303R410011304';
UPDATE GP_QC_RULE SET DATA_DATE='20190709', CORP_ID='TESTCORP', ORG_ID='72', GROUP_ID='002', INQ_ORG_ID=NULL, INQ_GROUP_ID=NULL, RULE_DESC='当“报送时点说明代码”为“42-展期发生”时，若“账户类型”为“D1”，不应包含初始债权说明段。', RULE_MESSAGE='当“报送时点说明代码”为“42-展期发生”时，若“账户类型”为“D1”，不应包含初始债权说明段。', RULE_TYPE=NULL, RULE_SOURCE='BUSI', FIELD='DATA_ID', FIELD_NAME=NULL, TRIMMABLE=NULL, NULLABLE='Y', TYPE_ID=NULL, ENCODING=NULL, MIN_LENGTH=NULL, MAX_LENGTH=NULL, MIN_VALUE=NULL, MAX_VALUE=NULL, MAX_PRECISION=NULL, MIN_SCALE=NULL, MAX_SCALE=NULL, ENUMERATION=NULL, PATTERN=NULL, IN_ENTITY=NULL, IN_FIELD=NULL, "SQL"=NULL, SQL_EXTRA_KEY=NULL, SCRIPT='if (!isEmpty(B_ACCT_TYPE) && B_ACCT_TYPE == "D1" && B_RPT_DATE_CODE == "42") {
    if (IS_RPT.substring(3,4) == "0") {
        return true
    }
    return false
}
return true', BEAN=NULL, CHECK_FLAG=NULL, CHECK_DESC=NULL, CHECK_ERR_TYPE=NULL, NEXT_ACTION=NULL, DATA_STATUS=NULL, DATA_FLAG=NULL, DATA_OP=NULL, DATA_SOURCE=NULL, DATA_VERSION=NULL, DATA_REJ_DESC=NULL, DATA_DEL_DESC=NULL, DATA_CRT_USER=NULL, DATA_CRT_DATE=NULL, DATA_CRT_TIME=NULL, DATA_CHG_USER=NULL, DATA_CHG_DATE=NULL, DATA_CHG_TIME=NULL, DATA_APV_USER=NULL, DATA_APV_DATE=NULL, DATA_APV_TIME=NULL, RSV1='a361160387514ddc914dc609a0121383', RSV2=NULL, RSV3=NULL, RSV4='mbtrule', RSV5='1' WHERE DATA_ID='MBT_410R4100114R410011301R410010202';
UPDATE GP_QC_RULE SET DATA_DATE='20190709', CORP_ID='TESTCORP', ORG_ID='72', GROUP_ID='002', INQ_ORG_ID=NULL, INQ_GROUP_ID=NULL, RULE_DESC='当“报送时点说明代码”为“42-展期发生”时，若“账户类型”为“R1”，不适用展期发生报送时点。', RULE_MESSAGE='当“报送时点说明代码”为“42-展期发生”时，若“账户类型”为“R1”，不适用展期发生报送时点。', RULE_TYPE=NULL, RULE_SOURCE='BUSI', FIELD='DATA_ID', FIELD_NAME=NULL, TRIMMABLE=NULL, NULLABLE='Y', TYPE_ID=NULL, ENCODING=NULL, MIN_LENGTH=NULL, MAX_LENGTH=NULL, MIN_VALUE=NULL, MAX_VALUE=NULL, MAX_PRECISION=NULL, MIN_SCALE=NULL, MAX_SCALE=NULL, ENUMERATION=NULL, PATTERN=NULL, IN_ENTITY=NULL, IN_FIELD=NULL, "SQL"=NULL, SQL_EXTRA_KEY=NULL, SCRIPT='if (!isEmpty(B_ACCT_TYPE) && B_ACCT_TYPE == "R1") {
    if (B_RPT_DATE_CODE != "42") {
        return true
    }
    return false
}
return true', BEAN=NULL, CHECK_FLAG=NULL, CHECK_DESC=NULL, CHECK_ERR_TYPE=NULL, NEXT_ACTION=NULL, DATA_STATUS=NULL, DATA_FLAG=NULL, DATA_OP=NULL, DATA_SOURCE=NULL, DATA_VERSION=NULL, DATA_REJ_DESC=NULL, DATA_DEL_DESC=NULL, DATA_CRT_USER=NULL, DATA_CRT_DATE=NULL, DATA_CRT_TIME=NULL, DATA_CHG_USER=NULL, DATA_CHG_DATE=NULL, DATA_CHG_TIME=NULL, DATA_APV_USER=NULL, DATA_APV_DATE=NULL, DATA_APV_TIME=NULL, RSV1='cbab238821d4484e9dbd9310f7855b84', RSV2=NULL, RSV3=NULL, RSV4='mbtrule', RSV5='1' WHERE DATA_ID='MBT_410R4100114R410010707R410011304';
UPDATE GP_QC_RULE SET DATA_DATE='20190709', CORP_ID='TESTCORP', ORG_ID='72', GROUP_ID='002', INQ_ORG_ID=NULL, INQ_GROUP_ID=NULL, RULE_DESC='当“报送时点说明代码”为“49-其他报送日”时，若“账户类型”为“R1”，应包含基础段、还款表现信息段。', RULE_MESSAGE='当“报送时点说明代码”为“49-其他报送日”时，若“账户类型”为“R1”，应包含基础段、还款表现信息段。', RULE_TYPE=NULL, RULE_SOURCE='BUSI', FIELD='DATA_ID', FIELD_NAME=NULL, TRIMMABLE=NULL, NULLABLE='Y', TYPE_ID=NULL, ENCODING=NULL, MIN_LENGTH=NULL, MAX_LENGTH=NULL, MIN_VALUE=NULL, MAX_VALUE=NULL, MAX_PRECISION=NULL, MIN_SCALE=NULL, MAX_SCALE=NULL, ENUMERATION=NULL, PATTERN=NULL, IN_ENTITY=NULL, IN_FIELD=NULL, "SQL"=NULL, SQL_EXTRA_KEY=NULL, SCRIPT='if (!isEmpty(B_ACCT_TYPE) && B_ACCT_TYPE == "R1" && B_RPT_DATE_CODE == "49") {
    if (IS_RPT.substring(0,1) == "1" && IS_RPT.substring(4,5) == "1") {
        return true
    }
    return false
}
return true', BEAN=NULL, CHECK_FLAG=NULL, CHECK_DESC=NULL, CHECK_ERR_TYPE=NULL, NEXT_ACTION=NULL, DATA_STATUS=NULL, DATA_FLAG=NULL, DATA_OP=NULL, DATA_SOURCE=NULL, DATA_VERSION=NULL, DATA_REJ_DESC=NULL, DATA_DEL_DESC=NULL, DATA_CRT_USER=NULL, DATA_CRT_DATE=NULL, DATA_CRT_TIME=NULL, DATA_CHG_USER=NULL, DATA_CHG_DATE=NULL, DATA_CHG_TIME=NULL, DATA_APV_USER=NULL, DATA_APV_DATE=NULL, DATA_APV_TIME=NULL, RSV1='caa9b2bfb54544c284e58041489bc8a4', RSV2=NULL, RSV3=NULL, RSV4='mbtrule', RSV5='1' WHERE DATA_ID='MBT_410R4100115R410011505R410010302';
UPDATE GP_QC_RULE SET DATA_DATE='20190709', CORP_ID='TESTCORP', ORG_ID='72', GROUP_ID='002', INQ_ORG_ID=NULL, INQ_GROUP_ID=NULL, RULE_DESC='当“报送时点说明代码”为“49-其他报送日”时，若“账户类型”为“D1”且“分次放款标识”为“0”，则不应包含授信额度信息段。', RULE_MESSAGE='当“报送时点说明代码”为“49-其他报送日”时，若“账户类型”为“D1”且“分次放款标识”为“0”，则不应包含授信额度信息段。', RULE_TYPE=NULL, RULE_SOURCE='BUSI', FIELD='DATA_ID', FIELD_NAME=NULL, TRIMMABLE=NULL, NULLABLE='Y', TYPE_ID=NULL, ENCODING=NULL, MIN_LENGTH=NULL, MAX_LENGTH=NULL, MIN_VALUE=NULL, MAX_VALUE=NULL, MAX_PRECISION=NULL, MIN_SCALE=NULL, MAX_SCALE=NULL, ENUMERATION=NULL, PATTERN=NULL, IN_ENTITY=NULL, IN_FIELD=NULL, "SQL"=NULL, SQL_EXTRA_KEY=NULL, SCRIPT='if (!isEmpty(B_ACCT_TYPE) && B_ACCT_TYPE == "D1" && B_RPT_DATE_CODE == "49" && C_FLAG == "0") {
    if (IS_RPT.substring(2,3) == "0") {
        return true
    }
    return false
}
return true', BEAN=NULL, CHECK_FLAG=NULL, CHECK_DESC=NULL, CHECK_ERR_TYPE=NULL, NEXT_ACTION=NULL, DATA_STATUS=NULL, DATA_FLAG=NULL, DATA_OP=NULL, DATA_SOURCE=NULL, DATA_VERSION=NULL, DATA_REJ_DESC=NULL, DATA_DEL_DESC=NULL, DATA_CRT_USER=NULL, DATA_CRT_DATE=NULL, DATA_CRT_TIME=NULL, DATA_CHG_USER=NULL, DATA_CHG_DATE=NULL, DATA_CHG_TIME=NULL, DATA_APV_USER=NULL, DATA_APV_DATE=NULL, DATA_APV_TIME=NULL, RSV1='ecc921576fd94c5b955a3322e8daacb2', RSV2=NULL, RSV3=NULL, RSV4='mbtrule', RSV5='1' WHERE DATA_ID='MBT_410R4100116R410011601R410010204';
UPDATE GP_QC_RULE SET DATA_DATE='20190709', CORP_ID='TESTCORP', ORG_ID='72', GROUP_ID='002', INQ_ORG_ID=NULL, INQ_GROUP_ID=NULL, RULE_DESC='当“报送时点说明代码”为“31-开户后放款”时，若“账户类型”为“D1”，“分次放款标识”为“2”，必须包含基本信息段。', RULE_MESSAGE='当“报送时点说明代码”为“31-开户后放款”时，若“账户类型”为“D1”，“分次放款标识”为“2”，必须包含基本信息段。', RULE_TYPE=NULL, RULE_SOURCE='BUSI', FIELD='DATA_ID', FIELD_NAME=NULL, TRIMMABLE=NULL, NULLABLE='Y', TYPE_ID=NULL, ENCODING=NULL, MIN_LENGTH=NULL, MAX_LENGTH=NULL, MIN_VALUE=NULL, MAX_VALUE=NULL, MAX_PRECISION=NULL, MIN_SCALE=NULL, MAX_SCALE=NULL, ENUMERATION=NULL, PATTERN=NULL, IN_ENTITY=NULL, IN_FIELD=NULL, "SQL"=NULL, SQL_EXTRA_KEY=NULL, SCRIPT='if (!isEmpty(B_ACCT_TYPE) && B_ACCT_TYPE == "D1" && B_RPT_DATE_CODE == "31" && C_FLAG == "2") {
    if (IS_RPT.substring(0,1) == "1") {
        return true
    }
    return false
}
return true', BEAN=NULL, CHECK_FLAG=NULL, CHECK_DESC=NULL, CHECK_ERR_TYPE=NULL, NEXT_ACTION=NULL, DATA_STATUS=NULL, DATA_FLAG=NULL, DATA_OP=NULL, DATA_SOURCE=NULL, DATA_VERSION=NULL, DATA_REJ_DESC=NULL, DATA_DEL_DESC=NULL, DATA_CRT_USER=NULL, DATA_CRT_DATE=NULL, DATA_CRT_TIME=NULL, DATA_CHG_USER=NULL, DATA_CHG_DATE=NULL, DATA_CHG_TIME=NULL, DATA_APV_USER=NULL, DATA_APV_DATE=NULL, DATA_APV_TIME=NULL, RSV1='7d5f5e8c96d3470e919b811a7df12b2c', RSV2=NULL, RSV3=NULL, RSV4='mbtrule', RSV5='1' WHERE DATA_ID='MBT_410R4100105R410010501R410010502';
UPDATE GP_QC_RULE SET DATA_DATE='20190709', CORP_ID='TESTCORP', ORG_ID='72', GROUP_ID='002', INQ_ORG_ID=NULL, INQ_GROUP_ID=NULL, RULE_DESC='当“报送时点说明代码”为“31-开户后放款”时，若“账户类型”为“C1”，不适用放款日报送时点。', RULE_MESSAGE='当“报送时点说明代码”为“31-开户后放款”时，若“账户类型”为“C1”，不适用放款日报送时点。', RULE_TYPE=NULL, RULE_SOURCE='BUSI', FIELD='DATA_ID', FIELD_NAME=NULL, TRIMMABLE=NULL, NULLABLE='Y', TYPE_ID=NULL, ENCODING=NULL, MIN_LENGTH=NULL, MAX_LENGTH=NULL, MIN_VALUE=NULL, MAX_VALUE=NULL, MAX_PRECISION=NULL, MIN_SCALE=NULL, MAX_SCALE=NULL, ENUMERATION=NULL, PATTERN=NULL, IN_ENTITY=NULL, IN_FIELD=NULL, "SQL"=NULL, SQL_EXTRA_KEY=NULL, SCRIPT='if (!isEmpty(B_ACCT_TYPE) && B_ACCT_TYPE == "C1") {
    if (B_RPT_DATE_CODE != "31") {
        return true
    }
    return false
}
return true', BEAN=NULL, CHECK_FLAG=NULL, CHECK_DESC=NULL, CHECK_ERR_TYPE=NULL, NEXT_ACTION=NULL, DATA_STATUS=NULL, DATA_FLAG=NULL, DATA_OP=NULL, DATA_SOURCE=NULL, DATA_VERSION=NULL, DATA_REJ_DESC=NULL, DATA_DEL_DESC=NULL, DATA_CRT_USER=NULL, DATA_CRT_DATE=NULL, DATA_CRT_TIME=NULL, DATA_CHG_USER=NULL, DATA_CHG_DATE=NULL, DATA_CHG_TIME=NULL, DATA_APV_USER=NULL, DATA_APV_DATE=NULL, DATA_APV_TIME=NULL, RSV1='bdeec4bd02634bcb825f58aafdd52dc3', RSV2=NULL, RSV3=NULL, RSV4='mbtrule', RSV5='1' WHERE DATA_ID='MBT_410R4100105R410010509R410010504';
UPDATE GP_QC_RULE SET DATA_DATE='20190709', CORP_ID='TESTCORP', ORG_ID='72', GROUP_ID='002', INQ_ORG_ID=NULL, INQ_GROUP_ID=NULL, RULE_DESC='当“报送时点说明代码”为“31-开户后放款”时，若“账户类型”为“R1/R4”，不适用放款日报送时点。', RULE_MESSAGE='当“报送时点说明代码”为“31-开户后放款”时，若“账户类型”为“R1/R4”，不适用放款日报送时点。', RULE_TYPE=NULL, RULE_SOURCE='BUSI', FIELD='DATA_ID', FIELD_NAME=NULL, TRIMMABLE=NULL, NULLABLE='Y', TYPE_ID=NULL, ENCODING=NULL, MIN_LENGTH=NULL, MAX_LENGTH=NULL, MIN_VALUE=NULL, MAX_VALUE=NULL, MAX_PRECISION=NULL, MIN_SCALE=NULL, MAX_SCALE=NULL, ENUMERATION=NULL, PATTERN=NULL, IN_ENTITY=NULL, IN_FIELD=NULL, "SQL"=NULL, SQL_EXTRA_KEY=NULL, SCRIPT='if (!isEmpty(B_ACCT_TYPE) && B_ACCT_TYPE == "R1" || B_ACCT_TYPE == "R4") {
    if (B_RPT_DATE_CODE  != "31") {
        return true
    }
    return false
}
return true', BEAN=NULL, CHECK_FLAG=NULL, CHECK_DESC=NULL, CHECK_ERR_TYPE=NULL, NEXT_ACTION=NULL, DATA_STATUS=NULL, DATA_FLAG=NULL, DATA_OP=NULL, DATA_SOURCE=NULL, DATA_VERSION=NULL, DATA_REJ_DESC=NULL, DATA_DEL_DESC=NULL, DATA_CRT_USER=NULL, DATA_CRT_DATE=NULL, DATA_CRT_TIME=NULL, DATA_CHG_USER=NULL, DATA_CHG_DATE=NULL, DATA_CHG_TIME=NULL, DATA_APV_USER=NULL, DATA_APV_DATE=NULL, DATA_APV_TIME=NULL, RSV1='f59339af6d2d44c2811fbd5353db6540', RSV2=NULL, RSV3=NULL, RSV4='mbtrule', RSV5='1' WHERE DATA_ID='MBT_410R4100106R410010507R410010504';
UPDATE GP_QC_RULE SET DATA_DATE='20190709', CORP_ID='TESTCORP', ORG_ID='72', GROUP_ID='002', INQ_ORG_ID=NULL, INQ_GROUP_ID=NULL, RULE_DESC='当“报送时点说明代码”为“32-约定还款日结算”时，若“账户类型”为“R4”，应包含基础段、还款表现信息段。', RULE_MESSAGE='当“报送时点说明代码”为“32-约定还款日结算”时，若“账户类型”为“R4”，应包含基础段、还款表现信息段。', RULE_TYPE=NULL, RULE_SOURCE='BUSI', FIELD='DATA_ID', FIELD_NAME=NULL, TRIMMABLE=NULL, NULLABLE='Y', TYPE_ID=NULL, ENCODING=NULL, MIN_LENGTH=NULL, MAX_LENGTH=NULL, MIN_VALUE=NULL, MAX_VALUE=NULL, MAX_PRECISION=NULL, MIN_SCALE=NULL, MAX_SCALE=NULL, ENUMERATION=NULL, PATTERN=NULL, IN_ENTITY=NULL, IN_FIELD=NULL, "SQL"=NULL, SQL_EXTRA_KEY=NULL, SCRIPT='if (!isEmpty(B_ACCT_TYPE) && B_ACCT_TYPE == "R4" && B_RPT_DATE_CODE == "32") {
    if (IS_RPT.substring(0,1) == "1" && IS_RPT.substring(4,5) == "1") {
        return true
    }
    return false
}
return true', BEAN=NULL, CHECK_FLAG=NULL, CHECK_DESC=NULL, CHECK_ERR_TYPE=NULL, NEXT_ACTION=NULL, DATA_STATUS=NULL, DATA_FLAG=NULL, DATA_OP=NULL, DATA_SOURCE=NULL, DATA_VERSION=NULL, DATA_REJ_DESC=NULL, DATA_DEL_DESC=NULL, DATA_CRT_USER=NULL, DATA_CRT_DATE=NULL, DATA_CRT_TIME=NULL, DATA_CHG_USER=NULL, DATA_CHG_DATE=NULL, DATA_CHG_TIME=NULL, DATA_APV_USER=NULL, DATA_APV_DATE=NULL, DATA_APV_TIME=NULL, RSV1='ed2f3a2d911c40efa09c166bfa813146', RSV2=NULL, RSV3=NULL, RSV4='mbtrule', RSV5='1' WHERE DATA_ID='MBT_410R4100107R410010705R410010302';
UPDATE GP_QC_RULE SET DATA_DATE='20190709', CORP_ID='TESTCORP', ORG_ID='72', GROUP_ID='002', INQ_ORG_ID=NULL, INQ_GROUP_ID=NULL, RULE_DESC='当“报送时点说明代码”为“32-约定还款日结算”时，若“账户类型”为“D1”且“分次放款标识”为“0”，则不应包含授信额度信息段。', RULE_MESSAGE='当“报送时点说明代码”为“32-约定还款日结算”时，若“账户类型”为“D1”且“分次放款标识”为“0”，则不应包含授信额度信息段。', RULE_TYPE=NULL, RULE_SOURCE='BUSI', FIELD='DATA_ID', FIELD_NAME=NULL, TRIMMABLE=NULL, NULLABLE='Y', TYPE_ID=NULL, ENCODING=NULL, MIN_LENGTH=NULL, MAX_LENGTH=NULL, MIN_VALUE=NULL, MAX_VALUE=NULL, MAX_PRECISION=NULL, MIN_SCALE=NULL, MAX_SCALE=NULL, ENUMERATION=NULL, PATTERN=NULL, IN_ENTITY=NULL, IN_FIELD=NULL, "SQL"=NULL, SQL_EXTRA_KEY=NULL, SCRIPT='if (!isEmpty(B_ACCT_TYPE) && B_ACCT_TYPE == "D1" && B_RPT_DATE_CODE == "32" && C_FLAG == "0") {
    if (IS_RPT.substring(2,3) == "0") {
        return true
    }
    return false
}
return true', BEAN=NULL, CHECK_FLAG=NULL, CHECK_DESC=NULL, CHECK_ERR_TYPE=NULL, NEXT_ACTION=NULL, DATA_STATUS=NULL, DATA_FLAG=NULL, DATA_OP=NULL, DATA_SOURCE=NULL, DATA_VERSION=NULL, DATA_REJ_DESC=NULL, DATA_DEL_DESC=NULL, DATA_CRT_USER=NULL, DATA_CRT_DATE=NULL, DATA_CRT_TIME=NULL, DATA_CHG_USER=NULL, DATA_CHG_DATE=NULL, DATA_CHG_TIME=NULL, DATA_APV_USER=NULL, DATA_APV_DATE=NULL, DATA_APV_TIME=NULL, RSV1='6afffd6c753645c2aeea2a567804a7fc', RSV2=NULL, RSV3=NULL, RSV4='mbtrule', RSV5='1' WHERE DATA_ID='MBT_410R4100108R410010801R410010204';
UPDATE GP_QC_RULE SET DATA_DATE='20190709', CORP_ID='TESTCORP', ORG_ID='72', GROUP_ID='002', INQ_ORG_ID=NULL, INQ_GROUP_ID=NULL, RULE_DESC='当“报送时点说明代码”为“32-约定还款日结算”时，若“账户类型”为“C1”，不适用约定还款日报送时点。', RULE_MESSAGE='当“报送时点说明代码”为“32-约定还款日结算”时，若“账户类型”为“C1”，不适用约定还款日报送时点。', RULE_TYPE=NULL, RULE_SOURCE='BUSI', FIELD='DATA_ID', FIELD_NAME=NULL, TRIMMABLE=NULL, NULLABLE='Y', TYPE_ID=NULL, ENCODING=NULL, MIN_LENGTH=NULL, MAX_LENGTH=NULL, MIN_VALUE=NULL, MAX_VALUE=NULL, MAX_PRECISION=NULL, MIN_SCALE=NULL, MAX_SCALE=NULL, ENUMERATION=NULL, PATTERN=NULL, IN_ENTITY=NULL, IN_FIELD=NULL, "SQL"=NULL, SQL_EXTRA_KEY=NULL, SCRIPT='if (!isEmpty(B_ACCT_TYPE) && B_ACCT_TYPE == "C1") {
    if (B_RPT_DATE_CODE != "32") {
        return true
    }
    return false
}
return true', BEAN=NULL, CHECK_FLAG=NULL, CHECK_DESC=NULL, CHECK_ERR_TYPE=NULL, NEXT_ACTION=NULL, DATA_STATUS=NULL, DATA_FLAG=NULL, DATA_OP=NULL, DATA_SOURCE=NULL, DATA_VERSION=NULL, DATA_REJ_DESC=NULL, DATA_DEL_DESC=NULL, DATA_CRT_USER=NULL, DATA_CRT_DATE=NULL, DATA_CRT_TIME=NULL, DATA_CHG_USER=NULL, DATA_CHG_DATE=NULL, DATA_CHG_TIME=NULL, DATA_APV_USER=NULL, DATA_APV_DATE=NULL, DATA_APV_TIME=NULL, RSV1='781a71021cb24c4d80398f0cb06ab469', RSV2=NULL, RSV3=NULL, RSV4='mbtrule', RSV5='1' WHERE DATA_ID='MBT_410R4100108R410010709R410010702';
UPDATE GP_QC_RULE SET DATA_DATE='20190709', CORP_ID='TESTCORP', ORG_ID='72', GROUP_ID='002', INQ_ORG_ID=NULL, INQ_GROUP_ID=NULL, RULE_DESC='当“报送时点说明代码”为“33-实际还款”时，若“账户类型”为“C1”，应包含基础段、还款表现信息段。', RULE_MESSAGE='当“报送时点说明代码”为“33-实际还款”时，若“账户类型”为“C1”，应包含基础段、还款表现信息段。', RULE_TYPE=NULL, RULE_SOURCE='BUSI', FIELD='DATA_ID', FIELD_NAME=NULL, TRIMMABLE=NULL, NULLABLE='Y', TYPE_ID=NULL, ENCODING=NULL, MIN_LENGTH=NULL, MAX_LENGTH=NULL, MIN_VALUE=NULL, MAX_VALUE=NULL, MAX_PRECISION=NULL, MIN_SCALE=NULL, MAX_SCALE=NULL, ENUMERATION=NULL, PATTERN=NULL, IN_ENTITY=NULL, IN_FIELD=NULL, "SQL"=NULL, SQL_EXTRA_KEY=NULL, SCRIPT='if (!isEmpty(B_ACCT_TYPE) && B_ACCT_TYPE == "C1" && B_RPT_DATE_CODE == "33") {
    if (IS_RPT.substring(0,1) == "1" && IS_RPT.substring(4,5) == "1") {
        return true
    }
    return false
}
return true', BEAN=NULL, CHECK_FLAG=NULL, CHECK_DESC=NULL, CHECK_ERR_TYPE=NULL, NEXT_ACTION=NULL, DATA_STATUS=NULL, DATA_FLAG=NULL, DATA_OP=NULL, DATA_SOURCE=NULL, DATA_VERSION=NULL, DATA_REJ_DESC=NULL, DATA_DEL_DESC=NULL, DATA_CRT_USER=NULL, DATA_CRT_DATE=NULL, DATA_CRT_TIME=NULL, DATA_CHG_USER=NULL, DATA_CHG_DATE=NULL, DATA_CHG_TIME=NULL, DATA_APV_USER=NULL, DATA_APV_DATE=NULL, DATA_APV_TIME=NULL, RSV1='c2ad99197c0e41919ed6cfe51ac0bda5', RSV2=NULL, RSV3=NULL, RSV4='mbtrule', RSV5='1' WHERE DATA_ID='MBT_410R4100109R410010907R410010302';
UPDATE GP_QC_RULE SET DATA_DATE='20190709', CORP_ID='TESTCORP', ORG_ID='72', GROUP_ID='002', INQ_ORG_ID=NULL, INQ_GROUP_ID=NULL, RULE_DESC='若“账户类型”为“D2”，不应包含抵质押物信息段、授信额度信息段。', RULE_MESSAGE='若“账户类型”为“D2”，不应包含抵质押物信息段、授信额度信息段。', RULE_TYPE=NULL, RULE_SOURCE='BUSI', FIELD='DATA_ID', FIELD_NAME=NULL, TRIMMABLE=NULL, NULLABLE='Y', TYPE_ID=NULL, ENCODING=NULL, MIN_LENGTH=NULL, MAX_LENGTH=NULL, MIN_VALUE=NULL, MAX_VALUE=NULL, MAX_PRECISION=NULL, MIN_SCALE=NULL, MAX_SCALE=NULL, ENUMERATION=NULL, PATTERN=NULL, IN_ENTITY=NULL, IN_FIELD=NULL, "SQL"=NULL, SQL_EXTRA_KEY=NULL, SCRIPT='if (!isEmpty(B_ACCT_TYPE) && B_ACCT_TYPE == "D2" && B_RPT_DATE_CODE == "33") {
    if (IS_RPT.substring(2,3) == "0" && IS_RPT.substring(7,8) == "0") {
        return true
    }
    return false
}
return true', BEAN=NULL, CHECK_FLAG=NULL, CHECK_DESC=NULL, CHECK_ERR_TYPE=NULL, NEXT_ACTION=NULL, DATA_STATUS=NULL, DATA_FLAG=NULL, DATA_OP=NULL, DATA_SOURCE=NULL, DATA_VERSION=NULL, DATA_REJ_DESC=NULL, DATA_DEL_DESC=NULL, DATA_CRT_USER=NULL, DATA_CRT_DATE=NULL, DATA_CRT_TIME=NULL, DATA_CHG_USER=NULL, DATA_CHG_DATE=NULL, DATA_CHG_TIME=NULL, DATA_APV_USER=NULL, DATA_APV_DATE=NULL, DATA_APV_TIME=NULL, RSV1='28b9efe0c56b4d58b07946bc10167b84', RSV2=NULL, RSV3=NULL, RSV4='mbtrule', RSV5='1' WHERE DATA_ID='MBT_410R4100110R410010903R410010206';
UPDATE GP_QC_RULE SET DATA_DATE='20190709', CORP_ID='TESTCORP', ORG_ID='72', GROUP_ID='002', INQ_ORG_ID=NULL, INQ_GROUP_ID=NULL, RULE_DESC='当“报送时点说明代码”为“41-五级分类调整”时，若“账户类型”为“D1”，应包含基础段、还款表现信息段。', RULE_MESSAGE='当“报送时点说明代码”为“41-五级分类调整”时，若“账户类型”为“D1”，应包含基础段、还款表现信息段。', RULE_TYPE=NULL, RULE_SOURCE='BUSI', FIELD='DATA_ID', FIELD_NAME=NULL, TRIMMABLE=NULL, NULLABLE='Y', TYPE_ID=NULL, ENCODING=NULL, MIN_LENGTH=NULL, MAX_LENGTH=NULL, MIN_VALUE=NULL, MAX_VALUE=NULL, MAX_PRECISION=NULL, MIN_SCALE=NULL, MAX_SCALE=NULL, ENUMERATION=NULL, PATTERN=NULL, IN_ENTITY=NULL, IN_FIELD=NULL, "SQL"=NULL, SQL_EXTRA_KEY=NULL, SCRIPT='if (!isEmpty(B_ACCT_TYPE) && B_ACCT_TYPE == "D1" && B_RPT_DATE_CODE == "41") {
    if (IS_RPT.substring(0,1) == "1" && IS_RPT.substring(4,5) == "1") {
        return true
    }
    return false
}
return true', BEAN=NULL, CHECK_FLAG=NULL, CHECK_DESC=NULL, CHECK_ERR_TYPE=NULL, NEXT_ACTION=NULL, DATA_STATUS=NULL, DATA_FLAG=NULL, DATA_OP=NULL, DATA_SOURCE=NULL, DATA_VERSION=NULL, DATA_REJ_DESC=NULL, DATA_DEL_DESC=NULL, DATA_CRT_USER=NULL, DATA_CRT_DATE=NULL, DATA_CRT_TIME=NULL, DATA_CHG_USER=NULL, DATA_CHG_DATE=NULL, DATA_CHG_TIME=NULL, DATA_APV_USER=NULL, DATA_APV_DATE=NULL, DATA_APV_TIME=NULL, RSV1='b5097dbbae724f35837bd71743825fb1', RSV2=NULL, RSV3=NULL, RSV4='mbtrule', RSV5='1' WHERE DATA_ID='MBT_410R4100111R410011101R410010302';
UPDATE GP_QC_RULE SET DATA_DATE='20190709', CORP_ID='TESTCORP', ORG_ID='72', GROUP_ID='002', INQ_ORG_ID=NULL, INQ_GROUP_ID=NULL, RULE_DESC='若“账户类型”为 R4、D1 时，账户基本信息段中的“还款方式”必须不为“31”、“32”、“33”、“39”。', RULE_MESSAGE='若“账户类型”为 R4、D1 时，账户基本信息段中的“还款方式”必须不为“31”、“32”、“33”、“39”。', RULE_TYPE=NULL, RULE_SOURCE='BUSI', FIELD='DATA_ID', FIELD_NAME=NULL, TRIMMABLE=NULL, NULLABLE='Y', TYPE_ID=NULL, ENCODING=NULL, MIN_LENGTH=NULL, MAX_LENGTH=NULL, MIN_VALUE=NULL, MAX_VALUE=NULL, MAX_PRECISION=NULL, MIN_SCALE=NULL, MAX_SCALE=NULL, ENUMERATION=NULL, PATTERN=NULL, IN_ENTITY=NULL, IN_FIELD=NULL, "SQL"=NULL, SQL_EXTRA_KEY=NULL, SCRIPT='if (!isEmpty(B_ACCT_TYPE) && (B_ACCT_TYPE == "R4" || B_ACCT_TYPE == "D1")) {
    if (C_REPAY_MODE != "31" && C_REPAY_MODE != "32" && C_REPAY_MODE != "33") {
        return true
    }
    return false
}
return true', BEAN=NULL, CHECK_FLAG=NULL, CHECK_DESC=NULL, CHECK_ERR_TYPE=NULL, NEXT_ACTION=NULL, DATA_STATUS=NULL, DATA_FLAG=NULL, DATA_OP=NULL, DATA_SOURCE=NULL, DATA_VERSION=NULL, DATA_REJ_DESC=NULL, DATA_DEL_DESC=NULL, DATA_CRT_USER=NULL, DATA_CRT_DATE=NULL, DATA_CRT_TIME=NULL, DATA_CHG_USER=NULL, DATA_CHG_DATE=NULL, DATA_CHG_TIME=NULL, DATA_APV_USER=NULL, DATA_APV_DATE=NULL, DATA_APV_TIME=NULL, RSV1='9c97acc61c7a4b2ca16c4b3c989c8f32', RSV2=NULL, RSV3=NULL, RSV4='mbtrule', RSV5='1' WHERE DATA_ID='MBT_410I4100C05I4100C0501I4100C0502';
UPDATE GP_QC_RULE SET DATA_DATE='20190624', CORP_ID='TESTCORP', ORG_ID='72', GROUP_ID='002', INQ_ORG_ID=NULL, INQ_GROUP_ID=NULL, RULE_DESC='当“账户类型”为“R1”，“担保方式”不能为空', RULE_MESSAGE='当“账户类型”为“R1”，“担保方式”不能为空', RULE_TYPE=NULL, RULE_SOURCE='BUSI', FIELD='DATA_ID', FIELD_NAME=NULL, TRIMMABLE=NULL, NULLABLE='Y', TYPE_ID=NULL, ENCODING=NULL, MIN_LENGTH=NULL, MAX_LENGTH=NULL, MIN_VALUE=NULL, MAX_VALUE=NULL, MAX_PRECISION=NULL, MIN_SCALE=NULL, MAX_SCALE=NULL, ENUMERATION=NULL, PATTERN=NULL, IN_ENTITY=NULL, IN_FIELD=NULL, "SQL"=NULL, SQL_EXTRA_KEY=NULL, SCRIPT='if (!isEmpty(B_ACCT_TYPE) && B_ACCT_TYPE == "R1") {
    if (!isEmpty(C_GUAR_MODE)) {
        return true
    }
    return false
}
return true', BEAN=NULL, CHECK_FLAG=NULL, CHECK_DESC=NULL, CHECK_ERR_TYPE=NULL, NEXT_ACTION=NULL, DATA_STATUS=NULL, DATA_FLAG=NULL, DATA_OP=NULL, DATA_SOURCE=NULL, DATA_VERSION=NULL, DATA_REJ_DESC=NULL, DATA_DEL_DESC=NULL, DATA_CRT_USER=NULL, DATA_CRT_DATE=NULL, DATA_CRT_TIME=NULL, DATA_CHG_USER=NULL, DATA_CHG_DATE=NULL, DATA_CHG_TIME=NULL, DATA_APV_USER=NULL, DATA_APV_DATE=NULL, DATA_APV_TIME=NULL, RSV1='7e1c7432c15b44079ebf54901089e493', RSV2=NULL, RSV3=NULL, RSV4='mbtrule', RSV5='1' WHERE DATA_ID='MBT_410S4100115S410011501S410011502';
UPDATE GP_QC_RULE SET DATA_DATE='20190624', CORP_ID='TESTCORP', ORG_ID='72', GROUP_ID='002', INQ_ORG_ID=NULL, INQ_GROUP_ID=NULL, RULE_DESC='当“账户类型”为“C1”，“担保方式”为空', RULE_MESSAGE='当“账户类型”为“C1”，“担保方式”为空', RULE_TYPE=NULL, RULE_SOURCE='BUSI', FIELD='DATA_ID', FIELD_NAME=NULL, TRIMMABLE=NULL, NULLABLE='Y', TYPE_ID=NULL, ENCODING=NULL, MIN_LENGTH=NULL, MAX_LENGTH=NULL, MIN_VALUE=NULL, MAX_VALUE=NULL, MAX_PRECISION=NULL, MIN_SCALE=NULL, MAX_SCALE=NULL, ENUMERATION=NULL, PATTERN=NULL, IN_ENTITY=NULL, IN_FIELD=NULL, "SQL"=NULL, SQL_EXTRA_KEY=NULL, SCRIPT='if (!isEmpty(B_ACCT_TYPE) && B_ACCT_TYPE == "C1") {
    if (isEmpty(C_GUAR_MODE)) {
        return true
    }
    return false
}
return true', BEAN=NULL, CHECK_FLAG=NULL, CHECK_DESC=NULL, CHECK_ERR_TYPE=NULL, NEXT_ACTION=NULL, DATA_STATUS=NULL, DATA_FLAG=NULL, DATA_OP=NULL, DATA_SOURCE=NULL, DATA_VERSION=NULL, DATA_REJ_DESC=NULL, DATA_DEL_DESC=NULL, DATA_CRT_USER=NULL, DATA_CRT_DATE=NULL, DATA_CRT_TIME=NULL, DATA_CHG_USER=NULL, DATA_CHG_DATE=NULL, DATA_CHG_TIME=NULL, DATA_APV_USER=NULL, DATA_APV_DATE=NULL, DATA_APV_TIME=NULL, RSV1='3d588d2312ca4c21a46ea269823438ca', RSV2=NULL, RSV3=NULL, RSV4='mbtrule', RSV5='1' WHERE DATA_ID='MBT_410S4100116S410011601S410011602';
UPDATE GP_QC_RULE SET DATA_DATE='20190624', CORP_ID='TESTCORP', ORG_ID='72', GROUP_ID='002', INQ_ORG_ID=NULL, INQ_GROUP_ID=NULL, RULE_DESC='当“账户类型”为“D1”，“其他还款保证方式”不能为空', RULE_MESSAGE='当“账户类型”为“D1”，“其他还款保证方式”不能为空', RULE_TYPE=NULL, RULE_SOURCE='BUSI', FIELD='DATA_ID', FIELD_NAME=NULL, TRIMMABLE=NULL, NULLABLE='Y', TYPE_ID=NULL, ENCODING=NULL, MIN_LENGTH=NULL, MAX_LENGTH=NULL, MIN_VALUE=NULL, MAX_VALUE=NULL, MAX_PRECISION=NULL, MIN_SCALE=NULL, MAX_SCALE=NULL, ENUMERATION=NULL, PATTERN=NULL, IN_ENTITY=NULL, IN_FIELD=NULL, "SQL"=NULL, SQL_EXTRA_KEY=NULL, SCRIPT='if (!isEmpty(B_ACCT_TYPE) && B_ACCT_TYPE == "D1") {
    if (!isEmpty(C_OTH_REPY_GUAR_WAY)) {
        return true
    }
    return false
}
return true', BEAN=NULL, CHECK_FLAG=NULL, CHECK_DESC=NULL, CHECK_ERR_TYPE=NULL, NEXT_ACTION=NULL, DATA_STATUS=NULL, DATA_FLAG=NULL, DATA_OP=NULL, DATA_SOURCE=NULL, DATA_VERSION=NULL, DATA_REJ_DESC=NULL, DATA_DEL_DESC=NULL, DATA_CRT_USER=NULL, DATA_CRT_DATE=NULL, DATA_CRT_TIME=NULL, DATA_CHG_USER=NULL, DATA_CHG_DATE=NULL, DATA_CHG_TIME=NULL, DATA_APV_USER=NULL, DATA_APV_DATE=NULL, DATA_APV_TIME=NULL, RSV1='83ac7ea43bb74bd3b8cd95608d73bbf9', RSV2=NULL, RSV3=NULL, RSV4='mbtrule', RSV5='1' WHERE DATA_ID='MBT_410S4100117S410011707S410011702';
UPDATE GP_QC_RULE SET DATA_DATE='20190624', CORP_ID='TESTCORP', ORG_ID='72', GROUP_ID='002', INQ_ORG_ID=NULL, INQ_GROUP_ID=NULL, RULE_DESC='当“账户类型”为“C1”，“借款期限分类”为空', RULE_MESSAGE='当“账户类型”为“C1”，“借款期限分类”为空', RULE_TYPE=NULL, RULE_SOURCE='BUSI', FIELD='DATA_ID', FIELD_NAME=NULL, TRIMMABLE=NULL, NULLABLE='Y', TYPE_ID=NULL, ENCODING=NULL, MIN_LENGTH=NULL, MAX_LENGTH=NULL, MIN_VALUE=NULL, MAX_VALUE=NULL, MAX_PRECISION=NULL, MIN_SCALE=NULL, MAX_SCALE=NULL, ENUMERATION=NULL, PATTERN=NULL, IN_ENTITY=NULL, IN_FIELD=NULL, "SQL"=NULL, SQL_EXTRA_KEY=NULL, SCRIPT='if (!isEmpty(B_ACCT_TYPE) && B_ACCT_TYPE == "C1") {
    if (isEmpty(C_LOAN_TIME_LIM_CAT)) {
        return true
    }
    return false
}
return true', BEAN=NULL, CHECK_FLAG=NULL, CHECK_DESC=NULL, CHECK_ERR_TYPE=NULL, NEXT_ACTION=NULL, DATA_STATUS=NULL, DATA_FLAG=NULL, DATA_OP=NULL, DATA_SOURCE=NULL, DATA_VERSION=NULL, DATA_REJ_DESC=NULL, DATA_DEL_DESC=NULL, DATA_CRT_USER=NULL, DATA_CRT_DATE=NULL, DATA_CRT_TIME=NULL, DATA_CHG_USER=NULL, DATA_CHG_DATE=NULL, DATA_CHG_TIME=NULL, DATA_APV_USER=NULL, DATA_APV_DATE=NULL, DATA_APV_TIME=NULL, RSV1='7776e3f4342d4571bc71700ffb97005b', RSV2=NULL, RSV3=NULL, RSV4='mbtrule', RSV5='1' WHERE DATA_ID='MBT_410S4100119S410011905S410011902';
UPDATE GP_QC_RULE SET DATA_DATE='20190624', CORP_ID='TESTCORP', ORG_ID='72', GROUP_ID='002', INQ_ORG_ID=NULL, INQ_GROUP_ID=NULL, RULE_DESC='当“账户类型”为“D2”，“贷款发放方式”不能为空', RULE_MESSAGE='当“账户类型”为“D2”，“贷款发放方式”不能为空', RULE_TYPE=NULL, RULE_SOURCE='BUSI', FIELD='DATA_ID', FIELD_NAME=NULL, TRIMMABLE=NULL, NULLABLE='Y', TYPE_ID=NULL, ENCODING=NULL, MIN_LENGTH=NULL, MAX_LENGTH=NULL, MIN_VALUE=NULL, MAX_VALUE=NULL, MAX_PRECISION=NULL, MIN_SCALE=NULL, MAX_SCALE=NULL, ENUMERATION=NULL, PATTERN=NULL, IN_ENTITY=NULL, IN_FIELD=NULL, "SQL"=NULL, SQL_EXTRA_KEY=NULL, SCRIPT='if (!isEmpty(B_ACCT_TYPE) && B_ACCT_TYPE == "D2") {
    if (!isEmpty(C_LOA_FRM)) {
        return true
    }
    return false
}
return true', BEAN=NULL, CHECK_FLAG=NULL, CHECK_DESC=NULL, CHECK_ERR_TYPE=NULL, NEXT_ACTION=NULL, DATA_STATUS=NULL, DATA_FLAG=NULL, DATA_OP=NULL, DATA_SOURCE=NULL, DATA_VERSION=NULL, DATA_REJ_DESC=NULL, DATA_DEL_DESC=NULL, DATA_CRT_USER=NULL, DATA_CRT_DATE=NULL, DATA_CRT_TIME=NULL, DATA_CHG_USER=NULL, DATA_CHG_DATE=NULL, DATA_CHG_TIME=NULL, DATA_APV_USER=NULL, DATA_APV_DATE=NULL, DATA_APV_TIME=NULL, RSV1='5b4a53ba86a048bf804bba21dd6ccd1a', RSV2=NULL, RSV3=NULL, RSV4='mbtrule', RSV5='1' WHERE DATA_ID='MBT_410S4100121S410012103S410012102';
UPDATE GP_QC_RULE SET DATA_DATE='20190624', CORP_ID='TESTCORP', ORG_ID='72', GROUP_ID='002', INQ_ORG_ID=NULL, INQ_GROUP_ID=NULL, RULE_DESC='当“账户类型”为“R1”，“贷款实际投向”不能为空', RULE_MESSAGE='当“账户类型”为“R1”，“贷款实际投向”不能为空', RULE_TYPE=NULL, RULE_SOURCE='BUSI', FIELD='DATA_ID', FIELD_NAME=NULL, TRIMMABLE=NULL, NULLABLE='Y', TYPE_ID=NULL, ENCODING=NULL, MIN_LENGTH=NULL, MAX_LENGTH=NULL, MIN_VALUE=NULL, MAX_VALUE=NULL, MAX_PRECISION=NULL, MIN_SCALE=NULL, MAX_SCALE=NULL, ENUMERATION=NULL, PATTERN=NULL, IN_ENTITY=NULL, IN_FIELD=NULL, "SQL"=NULL, SQL_EXTRA_KEY=NULL, SCRIPT='if (!isEmpty(B_ACCT_TYPE) && B_ACCT_TYPE == "R1" && C_BUSI_LINES == "11") {
    if (!isEmpty(C_ACT_INVEST)) {
        return true
    }
    return false
}
return true', BEAN=NULL, CHECK_FLAG=NULL, CHECK_DESC=NULL, CHECK_ERR_TYPE=NULL, NEXT_ACTION=NULL, DATA_STATUS=NULL, DATA_FLAG=NULL, DATA_OP=NULL, DATA_SOURCE=NULL, DATA_VERSION=NULL, DATA_REJ_DESC=NULL, DATA_DEL_DESC=NULL, DATA_CRT_USER=NULL, DATA_CRT_DATE=NULL, DATA_CRT_TIME=NULL, DATA_CHG_USER=NULL, DATA_CHG_DATE=NULL, DATA_CHG_TIME=NULL, DATA_APV_USER=NULL, DATA_APV_DATE=NULL, DATA_APV_TIME=NULL, RSV1='36a05052749545cf941e7e7f7f2a43a6', RSV2=NULL, RSV3=NULL, RSV4='mbtrule', RSV5='1' WHERE DATA_ID='MBT_410S4100123S410012301,S410012388S410012302';
UPDATE GP_QC_RULE SET DATA_DATE='20190620', CORP_ID='TESTCORP', ORG_ID='72', GROUP_ID='002', INQ_ORG_ID=NULL, INQ_GROUP_ID=NULL, RULE_DESC='若账户类型为“C1”时，非月度表现信息段中的“当前还款状态”字段不适用于此类账户。', RULE_MESSAGE='若账户类型为“C1”时，非月度表现信息段中的“当前还款状态”字段不适用于此类账户。', RULE_TYPE=NULL, RULE_SOURCE='BUSI', FIELD='DATA_ID', FIELD_NAME=NULL, TRIMMABLE=NULL, NULLABLE='Y', TYPE_ID=NULL, ENCODING=NULL, MIN_LENGTH=NULL, MAX_LENGTH=NULL, MIN_VALUE=NULL, MAX_VALUE=NULL, MAX_PRECISION=NULL, MIN_SCALE=NULL, MAX_SCALE=NULL, ENUMERATION=NULL, PATTERN=NULL, IN_ENTITY=NULL, IN_FIELD=NULL, "SQL"=NULL, SQL_EXTRA_KEY=NULL, SCRIPT='if (!isEmpty(B_ACCT_TYPE) && B_ACCT_TYPE == "C1") {
    if (isEmpty(J_RPY_STATUS)) {
        return true
    }
    return false
}
return true', BEAN=NULL, CHECK_FLAG=NULL, CHECK_DESC=NULL, CHECK_ERR_TYPE=NULL, NEXT_ACTION=NULL, DATA_STATUS=NULL, DATA_FLAG=NULL, DATA_OP=NULL, DATA_SOURCE=NULL, DATA_VERSION=NULL, DATA_REJ_DESC=NULL, DATA_DEL_DESC=NULL, DATA_CRT_USER=NULL, DATA_CRT_DATE=NULL, DATA_CRT_TIME=NULL, DATA_CHG_USER=NULL, DATA_CHG_DATE=NULL, DATA_CHG_TIME=NULL, DATA_APV_USER=NULL, DATA_APV_DATE=NULL, DATA_APV_TIME=NULL, RSV1='4f38a1cdaa664682a916d41515d7e1fe', RSV2=NULL, RSV3=NULL, RSV4='mbtrule', RSV5='1' WHERE DATA_ID='MBT_210S210010346S210010111S210010264';
UPDATE GP_QC_RULE SET DATA_DATE='20190620', CORP_ID='TESTCORP', ORG_ID='72', GROUP_ID='002', INQ_ORG_ID=NULL, INQ_GROUP_ID=NULL, RULE_DESC='若账户类型为“D1”时，月度表现信息段中的“未出单的大额专项分期余额”字段不适用于此类账户。', RULE_MESSAGE='若账户类型为“D1”时，月度表现信息段中的“未出单的大额专项分期余额”字段不适用于此类账户。', RULE_TYPE=NULL, RULE_SOURCE='BUSI', FIELD='DATA_ID', FIELD_NAME=NULL, TRIMMABLE=NULL, NULLABLE='Y', TYPE_ID=NULL, ENCODING=NULL, MIN_LENGTH=NULL, MAX_LENGTH=NULL, MIN_VALUE=NULL, MAX_VALUE=NULL, MAX_PRECISION=NULL, MIN_SCALE=NULL, MAX_SCALE=NULL, ENUMERATION=NULL, PATTERN=NULL, IN_ENTITY=NULL, IN_FIELD=NULL, "SQL"=NULL, SQL_EXTRA_KEY=NULL, SCRIPT='if (!isEmpty(B_ACCT_TYPE) && B_ACCT_TYPE == "D1") {
    if (isEmpty(H_NOTLSU_BAL)) {
        return true
    }
    return false
}
return true', BEAN=NULL, CHECK_FLAG=NULL, CHECK_DESC=NULL, CHECK_ERR_TYPE=NULL, NEXT_ACTION=NULL, DATA_STATUS=NULL, DATA_FLAG=NULL, DATA_OP=NULL, DATA_SOURCE=NULL, DATA_VERSION=NULL, DATA_REJ_DESC=NULL, DATA_DEL_DESC=NULL, DATA_CRT_USER=NULL, DATA_CRT_DATE=NULL, DATA_CRT_TIME=NULL, DATA_CHG_USER=NULL, DATA_CHG_DATE=NULL, DATA_CHG_TIME=NULL, DATA_APV_USER=NULL, DATA_APV_DATE=NULL, DATA_APV_TIME=NULL, RSV1='db70cf0f330647f68b9cc178c7d9753d', RSV2=NULL, RSV3=NULL, RSV4='mbtrule', RSV5='1' WHERE DATA_ID='MBT_210S210010255S210010109S210010204';
UPDATE GP_QC_RULE SET DATA_DATE='20190620', CORP_ID='TESTCORP', ORG_ID='72', GROUP_ID='002', INQ_ORG_ID=NULL, INQ_GROUP_ID=NULL, RULE_DESC='若账户类型为“R3”时，月度表现信息段中的“实际还款百分比”字段不适用于此类账户。', RULE_MESSAGE='若账户类型为“R3”时，月度表现信息段中的“实际还款百分比”字段不适用于此类账户。', RULE_TYPE=NULL, RULE_SOURCE='BUSI', FIELD='DATA_ID', FIELD_NAME=NULL, TRIMMABLE=NULL, NULLABLE='Y', TYPE_ID=NULL, ENCODING=NULL, MIN_LENGTH=NULL, MAX_LENGTH=NULL, MIN_VALUE=NULL, MAX_VALUE=NULL, MAX_PRECISION=NULL, MIN_SCALE=NULL, MAX_SCALE=NULL, ENUMERATION=NULL, PATTERN=NULL, IN_ENTITY=NULL, IN_FIELD=NULL, "SQL"=NULL, SQL_EXTRA_KEY=NULL, SCRIPT='if (!isEmpty(B_ACCT_TYPE) && B_ACCT_TYPE == "R3") {
    if (isEmpty(H_RPY_PRCT)) {
        return true
    }
    return false
}
return true', BEAN=NULL, CHECK_FLAG=NULL, CHECK_DESC=NULL, CHECK_ERR_TYPE=NULL, NEXT_ACTION=NULL, DATA_STATUS=NULL, DATA_FLAG=NULL, DATA_OP=NULL, DATA_SOURCE=NULL, DATA_VERSION=NULL, DATA_REJ_DESC=NULL, DATA_DEL_DESC=NULL, DATA_CRT_USER=NULL, DATA_CRT_DATE=NULL, DATA_CRT_TIME=NULL, DATA_CHG_USER=NULL, DATA_CHG_DATE=NULL, DATA_CHG_TIME=NULL, DATA_APV_USER=NULL, DATA_APV_DATE=NULL, DATA_APV_TIME=NULL, RSV1='330b6ca396ce4336908de74da25ac012', RSV2=NULL, RSV3=NULL, RSV4='mbtrule', RSV5='1' WHERE DATA_ID='MBT_210S210010265S210010105S210010212';
UPDATE GP_QC_RULE SET DATA_DATE='20190620', CORP_ID='TESTCORP', ORG_ID='72', GROUP_ID='002', INQ_ORG_ID=NULL, INQ_GROUP_ID=NULL, RULE_DESC='若账户类型为“R3”时，月度表现信息段中的“当前逾期期数”字段不适用于此类账户。', RULE_MESSAGE='若账户类型为“R3”时，月度表现信息段中的“当前逾期期数”字段不适用于此类账户。', RULE_TYPE=NULL, RULE_SOURCE='BUSI', FIELD='DATA_ID', FIELD_NAME=NULL, TRIMMABLE=NULL, NULLABLE='Y', TYPE_ID=NULL, ENCODING=NULL, MIN_LENGTH=NULL, MAX_LENGTH=NULL, MIN_VALUE=NULL, MAX_VALUE=NULL, MAX_PRECISION=NULL, MIN_SCALE=NULL, MAX_SCALE=NULL, ENUMERATION=NULL, PATTERN=NULL, IN_ENTITY=NULL, IN_FIELD=NULL, "SQL"=NULL, SQL_EXTRA_KEY=NULL, SCRIPT='if (!isEmpty(B_ACCT_TYPE) && B_ACCT_TYPE == "R3") {
    if (isEmpty(H_OVERD_PRD)) {
        return true
    }
    return false
}
return true', BEAN=NULL, CHECK_FLAG=NULL, CHECK_DESC=NULL, CHECK_ERR_TYPE=NULL, NEXT_ACTION=NULL, DATA_STATUS=NULL, DATA_FLAG=NULL, DATA_OP=NULL, DATA_SOURCE=NULL, DATA_VERSION=NULL, DATA_REJ_DESC=NULL, DATA_DEL_DESC=NULL, DATA_CRT_USER=NULL, DATA_CRT_DATE=NULL, DATA_CRT_TIME=NULL, DATA_CHG_USER=NULL, DATA_CHG_DATE=NULL, DATA_CHG_TIME=NULL, DATA_APV_USER=NULL, DATA_APV_DATE=NULL, DATA_APV_TIME=NULL, RSV1='8f1e28f351254856bdd1643839d2143e', RSV2=NULL, RSV3=NULL, RSV4='mbtrule', RSV5='1' WHERE DATA_ID='MBT_210S210010271S210010105S210010216';
UPDATE GP_QC_RULE SET DATA_DATE='20190620', CORP_ID='TESTCORP', ORG_ID='72', GROUP_ID='002', INQ_ORG_ID=NULL, INQ_GROUP_ID=NULL, RULE_DESC='若账户类型为“C1”时，月度表现信息段中的“当前逾期本金”字段不适用于此类模板。', RULE_MESSAGE='若账户类型为“C1”时，月度表现信息段中的“当前逾期本金”字段不适用于此类模板。', RULE_TYPE=NULL, RULE_SOURCE='BUSI', FIELD='DATA_ID', FIELD_NAME=NULL, TRIMMABLE=NULL, NULLABLE='Y', TYPE_ID=NULL, ENCODING=NULL, MIN_LENGTH=NULL, MAX_LENGTH=NULL, MIN_VALUE=NULL, MAX_VALUE=NULL, MAX_PRECISION=NULL, MIN_SCALE=NULL, MAX_SCALE=NULL, ENUMERATION=NULL, PATTERN=NULL, IN_ENTITY=NULL, IN_FIELD=NULL, "SQL"=NULL, SQL_EXTRA_KEY=NULL, SCRIPT='if (!isEmpty(B_ACCT_TYPE) && B_ACCT_TYPE == "C1") {
    if (isEmpty(H_OVAER_PRINC)) {
        return true
    }
    return false
}
return true', BEAN=NULL, CHECK_FLAG=NULL, CHECK_DESC=NULL, CHECK_ERR_TYPE=NULL, NEXT_ACTION=NULL, DATA_STATUS=NULL, DATA_FLAG=NULL, DATA_OP=NULL, DATA_SOURCE=NULL, DATA_VERSION=NULL, DATA_REJ_DESC=NULL, DATA_DEL_DESC=NULL, DATA_CRT_USER=NULL, DATA_CRT_DATE=NULL, DATA_CRT_TIME=NULL, DATA_CHG_USER=NULL, DATA_CHG_DATE=NULL, DATA_CHG_TIME=NULL, DATA_APV_USER=NULL, DATA_APV_DATE=NULL, DATA_APV_TIME=NULL, RSV1='baca724a63fb426db97fab56b706ff6c', RSV2=NULL, RSV3=NULL, RSV4='mbtrule', RSV5='1' WHERE DATA_ID='MBT_210S210010286S210010111S210010224';
UPDATE GP_QC_RULE SET DATA_DATE='20190620', CORP_ID='TESTCORP', ORG_ID='72', GROUP_ID='002', INQ_ORG_ID=NULL, INQ_GROUP_ID=NULL, RULE_DESC='若账户类型为“R3”时，月度表现信息段中的“逾期 61-90 天未归还本金”字段不适用于此类账户。', RULE_MESSAGE='若账户类型为“R3”时，月度表现信息段中的“逾期 61-90 天未归还本金”字段不适用于此类账户。', RULE_TYPE=NULL, RULE_SOURCE='BUSI', FIELD='DATA_ID', FIELD_NAME=NULL, TRIMMABLE=NULL, NULLABLE='Y', TYPE_ID=NULL, ENCODING=NULL, MIN_LENGTH=NULL, MAX_LENGTH=NULL, MIN_VALUE=NULL, MAX_VALUE=NULL, MAX_PRECISION=NULL, MIN_SCALE=NULL, MAX_SCALE=NULL, ENUMERATION=NULL, PATTERN=NULL, IN_ENTITY=NULL, IN_FIELD=NULL, "SQL"=NULL, SQL_EXTRA_KEY=NULL, SCRIPT='if (!isEmpty(B_ACCT_TYPE) && B_ACCT_TYPE == "R3") {
    if (isEmpty(H_OVERD61_90PRINC)) {
        return true
    }
    return false
}
return true', BEAN=NULL, CHECK_FLAG=NULL, CHECK_DESC=NULL, CHECK_ERR_TYPE=NULL, NEXT_ACTION=NULL, DATA_STATUS=NULL, DATA_FLAG=NULL, DATA_OP=NULL, DATA_SOURCE=NULL, DATA_VERSION=NULL, DATA_REJ_DESC=NULL, DATA_DEL_DESC=NULL, DATA_CRT_USER=NULL, DATA_CRT_DATE=NULL, DATA_CRT_TIME=NULL, DATA_CHG_USER=NULL, DATA_CHG_DATE=NULL, DATA_CHG_TIME=NULL, DATA_APV_USER=NULL, DATA_APV_DATE=NULL, DATA_APV_TIME=NULL, RSV1='0b3b819b552541beafac3c95f5a58ebb', RSV2=NULL, RSV3=NULL, RSV4='mbtrule', RSV5='1' WHERE DATA_ID='MBT_210S210010295S210010105S210010232';
UPDATE GP_QC_RULE SET DATA_DATE='20190620', CORP_ID='TESTCORP', ORG_ID='72', GROUP_ID='002', INQ_ORG_ID=NULL, INQ_GROUP_ID=NULL, RULE_DESC='若账户类型为“R3”时，月度表现信息段中的“逾期 91-180 天未归还本金”字段不适用于此类账户。', RULE_MESSAGE='若账户类型为“R3”时，月度表现信息段中的“逾期 91-180 天未归还本金”字段不适用于此类账户。', RULE_TYPE=NULL, RULE_SOURCE='BUSI', FIELD='DATA_ID', FIELD_NAME=NULL, TRIMMABLE=NULL, NULLABLE='Y', TYPE_ID=NULL, ENCODING=NULL, MIN_LENGTH=NULL, MAX_LENGTH=NULL, MIN_VALUE=NULL, MAX_VALUE=NULL, MAX_PRECISION=NULL, MIN_SCALE=NULL, MAX_SCALE=NULL, ENUMERATION=NULL, PATTERN=NULL, IN_ENTITY=NULL, IN_FIELD=NULL, "SQL"=NULL, SQL_EXTRA_KEY=NULL, SCRIPT='if (!isEmpty(B_ACCT_TYPE) && B_ACCT_TYPE == "R3") {
    if (isEmpty(H_OVERD91_180PRINC)) {
        return true
    }
    return false
}
return true', BEAN=NULL, CHECK_FLAG=NULL, CHECK_DESC=NULL, CHECK_ERR_TYPE=NULL, NEXT_ACTION=NULL, DATA_STATUS=NULL, DATA_FLAG=NULL, DATA_OP=NULL, DATA_SOURCE=NULL, DATA_VERSION=NULL, DATA_REJ_DESC=NULL, DATA_DEL_DESC=NULL, DATA_CRT_USER=NULL, DATA_CRT_DATE=NULL, DATA_CRT_TIME=NULL, DATA_CHG_USER=NULL, DATA_CHG_DATE=NULL, DATA_CHG_TIME=NULL, DATA_APV_USER=NULL, DATA_APV_DATE=NULL, DATA_APV_TIME=NULL, RSV1='81e370d088a54ba6b4887469d21ed9ae', RSV2=NULL, RSV3=NULL, RSV4='mbtrule', RSV5='1' WHERE DATA_ID='MBT_210S210010301S210010105S210010234';
UPDATE GP_QC_RULE SET DATA_DATE='20190620', CORP_ID='TESTCORP', ORG_ID='72', GROUP_ID='002', INQ_ORG_ID=NULL, INQ_GROUP_ID=NULL, RULE_DESC='若账户类型为“R4”时，月度表现信息段中的“未出单的大额专项分期余额”字段不适用于此类账户。', RULE_MESSAGE='若账户类型为“R4”时，月度表现信息段中的“未出单的大额专项分期余额”字段不适用于此类账户。', RULE_TYPE=NULL, RULE_SOURCE='BUSI', FIELD='DATA_ID', FIELD_NAME=NULL, TRIMMABLE=NULL, NULLABLE='Y', TYPE_ID=NULL, ENCODING=NULL, MIN_LENGTH=NULL, MAX_LENGTH=NULL, MIN_VALUE=NULL, MAX_VALUE=NULL, MAX_PRECISION=NULL, MIN_SCALE=NULL, MAX_SCALE=NULL, ENUMERATION=NULL, PATTERN=NULL, IN_ENTITY=NULL, IN_FIELD=NULL, "SQL"=NULL, SQL_EXTRA_KEY=NULL, SCRIPT='if (!isEmpty(B_ACCT_TYPE) && B_ACCT_TYPE == "R4") {
    if (isEmpty(H_NOTLSU_BAL)) {
        return true
    }
    return false
}
return true', BEAN=NULL, CHECK_FLAG=NULL, CHECK_DESC=NULL, CHECK_ERR_TYPE=NULL, NEXT_ACTION=NULL, DATA_STATUS=NULL, DATA_FLAG=NULL, DATA_OP=NULL, DATA_SOURCE=NULL, DATA_VERSION=NULL, DATA_REJ_DESC=NULL, DATA_DEL_DESC=NULL, DATA_CRT_USER=NULL, DATA_CRT_DATE=NULL, DATA_CRT_TIME=NULL, DATA_CHG_USER=NULL, DATA_CHG_DATE=NULL, DATA_CHG_TIME=NULL, DATA_APV_USER=NULL, DATA_APV_DATE=NULL, DATA_APV_TIME=NULL, RSV1='d16fe8c2198844208f5227ba41a77290', RSV2=NULL, RSV3=NULL, RSV4='mbtrule', RSV5='1' WHERE DATA_ID='MBT_210S210010254S210010107S210010204';
UPDATE GP_QC_RULE SET DATA_DATE='20190620', CORP_ID='TESTCORP', ORG_ID='72', GROUP_ID='002', INQ_ORG_ID=NULL, INQ_GROUP_ID=NULL, RULE_DESC='若账户类型为“R4”时，月度表现信息段中的“已使用额度”字段不适用于此类账户。', RULE_MESSAGE='若账户类型为“R4”时，月度表现信息段中的“已使用额度”字段不适用于此类账户。', RULE_TYPE=NULL, RULE_SOURCE='BUSI', FIELD='DATA_ID', FIELD_NAME=NULL, TRIMMABLE=NULL, NULLABLE='Y', TYPE_ID=NULL, ENCODING=NULL, MIN_LENGTH=NULL, MAX_LENGTH=NULL, MIN_VALUE=NULL, MAX_VALUE=NULL, MAX_PRECISION=NULL, MIN_SCALE=NULL, MAX_SCALE=NULL, ENUMERATION=NULL, PATTERN=NULL, IN_ENTITY=NULL, IN_FIELD=NULL, "SQL"=NULL, SQL_EXTRA_KEY=NULL, SCRIPT='if (!isEmpty(B_ACCT_TYPE) && B_ACCT_TYPE == "R4") {
    if (isEmpty(H_USED_AMT)) {
        return true
    }
    return false
}
return true', BEAN=NULL, CHECK_FLAG=NULL, CHECK_DESC=NULL, CHECK_ERR_TYPE=NULL, NEXT_ACTION=NULL, DATA_STATUS=NULL, DATA_FLAG=NULL, DATA_OP=NULL, DATA_SOURCE=NULL, DATA_VERSION=NULL, DATA_REJ_DESC=NULL, DATA_DEL_DESC=NULL, DATA_CRT_USER=NULL, DATA_CRT_DATE=NULL, DATA_CRT_TIME=NULL, DATA_CHG_USER=NULL, DATA_CHG_DATE=NULL, DATA_CHG_TIME=NULL, DATA_APV_USER=NULL, DATA_APV_DATE=NULL, DATA_APV_TIME=NULL, RSV1='cec43893211948ddb22a1b16631ca9e2', RSV2=NULL, RSV3=NULL, RSV4='mbtrule', RSV5='1' WHERE DATA_ID='MBT_210S210010248S210010107S210010200';
UPDATE GP_QC_RULE SET DATA_DATE='20190620', CORP_ID='TESTCORP', ORG_ID='72', GROUP_ID='002', INQ_ORG_ID=NULL, INQ_GROUP_ID=NULL, RULE_DESC='若账户类型为“C1”时，非月度表现信息段中的“五级分类”字段不适用于此类账户。', RULE_MESSAGE='若账户类型为“C1”时，非月度表现信息段中的“五级分类”字段不适用于此类账户。', RULE_TYPE=NULL, RULE_SOURCE='BUSI', FIELD='DATA_ID', FIELD_NAME=NULL, TRIMMABLE=NULL, NULLABLE='Y', TYPE_ID=NULL, ENCODING=NULL, MIN_LENGTH=NULL, MAX_LENGTH=NULL, MIN_VALUE=NULL, MAX_VALUE=NULL, MAX_PRECISION=NULL, MIN_SCALE=NULL, MAX_SCALE=NULL, ENUMERATION=NULL, PATTERN=NULL, IN_ENTITY=NULL, IN_FIELD=NULL, "SQL"=NULL, SQL_EXTRA_KEY=NULL, SCRIPT='if (!isEmpty(B_ACCT_TYPE) && B_ACCT_TYPE == "C1") {
    if (isEmpty(J_FIVE_CATE)) {
        return true
    }
    return false
}
return true', BEAN=NULL, CHECK_FLAG=NULL, CHECK_DESC=NULL, CHECK_ERR_TYPE=NULL, NEXT_ACTION=NULL, DATA_STATUS=NULL, DATA_FLAG=NULL, DATA_OP=NULL, DATA_SOURCE=NULL, DATA_VERSION=NULL, DATA_REJ_DESC=NULL, DATA_DEL_DESC=NULL, DATA_CRT_USER=NULL, DATA_CRT_DATE=NULL, DATA_CRT_TIME=NULL, DATA_CHG_USER=NULL, DATA_CHG_DATE=NULL, DATA_CHG_TIME=NULL, DATA_APV_USER=NULL, DATA_APV_DATE=NULL, DATA_APV_TIME=NULL, RSV1='1cb3b9538d3c4fd3bbab34a5b2ef2ef5', RSV2=NULL, RSV3=NULL, RSV4='mbtrule', RSV5='1' WHERE DATA_ID='MBT_210S210010328S210010111S210010250';
UPDATE GP_QC_RULE SET DATA_DATE='20190624', CORP_ID='TESTCORP', ORG_ID='72', GROUP_ID='002', INQ_ORG_ID=NULL, INQ_GROUP_ID=NULL, RULE_DESC='当“账户类型”为“R4”，“信用额度”为空', RULE_MESSAGE='当“账户类型”为“R4”，“信用额度”为空', RULE_TYPE=NULL, RULE_SOURCE='BUSI', FIELD='DATA_ID', FIELD_NAME=NULL, TRIMMABLE=NULL, NULLABLE='Y', TYPE_ID=NULL, ENCODING=NULL, MIN_LENGTH=NULL, MAX_LENGTH=NULL, MIN_VALUE=NULL, MAX_VALUE=NULL, MAX_PRECISION=NULL, MIN_SCALE=NULL, MAX_SCALE=NULL, ENUMERATION=NULL, PATTERN=NULL, IN_ENTITY=NULL, IN_FIELD=NULL, "SQL"=NULL, SQL_EXTRA_KEY=NULL, SCRIPT='if (!isEmpty(B_ACCT_TYPE) && B_ACCT_TYPE == "R4") {
    if (isEmpty(C_ACCT_CRED_LINE_AMT)) {
        return true
    }
    return false
}
return true', BEAN=NULL, CHECK_FLAG=NULL, CHECK_DESC=NULL, CHECK_ERR_TYPE=NULL, NEXT_ACTION=NULL, DATA_STATUS=NULL, DATA_FLAG=NULL, DATA_OP=NULL, DATA_SOURCE=NULL, DATA_VERSION=NULL, DATA_REJ_DESC=NULL, DATA_DEL_DESC=NULL, DATA_CRT_USER=NULL, DATA_CRT_DATE=NULL, DATA_CRT_TIME=NULL, DATA_CHG_USER=NULL, DATA_CHG_DATE=NULL, DATA_CHG_TIME=NULL, DATA_APV_USER=NULL, DATA_APV_DATE=NULL, DATA_APV_TIME=NULL, RSV1='dda7406433c042f9be7a262a4ce81a63', RSV2=NULL, RSV3=NULL, RSV4='mbtrule', RSV5='1' WHERE DATA_ID='MBT_410S4100101S410010105S410010102';
UPDATE GP_QC_RULE SET DATA_DATE='20190624', CORP_ID='TESTCORP', ORG_ID='72', GROUP_ID='002', INQ_ORG_ID=NULL, INQ_GROUP_ID=NULL, RULE_DESC='当“账户类型”为“D2”，“借款金额”不能为空', RULE_MESSAGE='当“账户类型”为“D2”，“借款金额”不能为空', RULE_TYPE=NULL, RULE_SOURCE='BUSI', FIELD='DATA_ID', FIELD_NAME=NULL, TRIMMABLE=NULL, NULLABLE='Y', TYPE_ID=NULL, ENCODING=NULL, MIN_LENGTH=NULL, MAX_LENGTH=NULL, MIN_VALUE=NULL, MAX_VALUE=NULL, MAX_PRECISION=NULL, MIN_SCALE=NULL, MAX_SCALE=NULL, ENUMERATION=NULL, PATTERN=NULL, IN_ENTITY=NULL, IN_FIELD=NULL, "SQL"=NULL, SQL_EXTRA_KEY=NULL, SCRIPT='if (!isEmpty(B_ACCT_TYPE) && B_ACCT_TYPE == "D2") {
    if (!isEmpty(C_LOAN_AMT)) {
        return true
    }
    return false
}
return true', BEAN=NULL, CHECK_FLAG=NULL, CHECK_DESC=NULL, CHECK_ERR_TYPE=NULL, NEXT_ACTION=NULL, DATA_STATUS=NULL, DATA_FLAG=NULL, DATA_OP=NULL, DATA_SOURCE=NULL, DATA_VERSION=NULL, DATA_REJ_DESC=NULL, DATA_DEL_DESC=NULL, DATA_CRT_USER=NULL, DATA_CRT_DATE=NULL, DATA_CRT_TIME=NULL, DATA_CHG_USER=NULL, DATA_CHG_DATE=NULL, DATA_CHG_TIME=NULL, DATA_APV_USER=NULL, DATA_APV_DATE=NULL, DATA_APV_TIME=NULL, RSV1='0e42e2d972124165ac7e1580be1fb5b7', RSV2=NULL, RSV3=NULL, RSV4='mbtrule', RSV5='1' WHERE DATA_ID='MBT_410S4100103S410010303S410010302';
UPDATE GP_QC_RULE SET DATA_DATE='20190624', CORP_ID='TESTCORP', ORG_ID='72', GROUP_ID='002', INQ_ORG_ID=NULL, INQ_GROUP_ID=NULL, RULE_DESC='当“账户类型”为“R1”，“分次放款标志”为空', RULE_MESSAGE='当“账户类型”为“R1”，“分次放款标志”为空', RULE_TYPE=NULL, RULE_SOURCE='BUSI', FIELD='DATA_ID', FIELD_NAME=NULL, TRIMMABLE=NULL, NULLABLE='Y', TYPE_ID=NULL, ENCODING=NULL, MIN_LENGTH=NULL, MAX_LENGTH=NULL, MIN_VALUE=NULL, MAX_VALUE=NULL, MAX_PRECISION=NULL, MIN_SCALE=NULL, MAX_SCALE=NULL, ENUMERATION=NULL, PATTERN=NULL, IN_ENTITY=NULL, IN_FIELD=NULL, "SQL"=NULL, SQL_EXTRA_KEY=NULL, SCRIPT='if (!isEmpty(B_ACCT_TYPE) && B_ACCT_TYPE == "R1") {
    if (isEmpty(C_FLAG)) {
        return true
    }
    return false
}
return true', BEAN=NULL, CHECK_FLAG=NULL, CHECK_DESC=NULL, CHECK_ERR_TYPE=NULL, NEXT_ACTION=NULL, DATA_STATUS=NULL, DATA_FLAG=NULL, DATA_OP=NULL, DATA_SOURCE=NULL, DATA_VERSION=NULL, DATA_REJ_DESC=NULL, DATA_DEL_DESC=NULL, DATA_CRT_USER=NULL, DATA_CRT_DATE=NULL, DATA_CRT_TIME=NULL, DATA_CHG_USER=NULL, DATA_CHG_DATE=NULL, DATA_CHG_TIME=NULL, DATA_APV_USER=NULL, DATA_APV_DATE=NULL, DATA_APV_TIME=NULL, RSV1='c81ffacacb47464d9d088d035a654dc2', RSV2=NULL, RSV3=NULL, RSV4='mbtrule', RSV5='1' WHERE DATA_ID='MBT_410S4100105S410010501S410010502';
UPDATE GP_QC_RULE SET DATA_DATE='20190624', CORP_ID='TESTCORP', ORG_ID='72', GROUP_ID='002', INQ_ORG_ID=NULL, INQ_GROUP_ID=NULL, RULE_DESC='当“账户类型”为“C1”，“贷款实际投向”为空', RULE_MESSAGE='当“账户类型”为“C1”，“贷款实际投向”为空', RULE_TYPE=NULL, RULE_SOURCE='BUSI', FIELD='DATA_ID', FIELD_NAME=NULL, TRIMMABLE=NULL, NULLABLE='Y', TYPE_ID=NULL, ENCODING=NULL, MIN_LENGTH=NULL, MAX_LENGTH=NULL, MIN_VALUE=NULL, MAX_VALUE=NULL, MAX_PRECISION=NULL, MIN_SCALE=NULL, MAX_SCALE=NULL, ENUMERATION=NULL, PATTERN=NULL, IN_ENTITY=NULL, IN_FIELD=NULL, "SQL"=NULL, SQL_EXTRA_KEY=NULL, SCRIPT='if (!isEmpty(B_ACCT_TYPE) && B_ACCT_TYPE == "C1") {
    if (isEmpty(C_ACT_INVEST)) {
        return true
    }
    return false
}
return true', BEAN=NULL, CHECK_FLAG=NULL, CHECK_DESC=NULL, CHECK_ERR_TYPE=NULL, NEXT_ACTION=NULL, DATA_STATUS=NULL, DATA_FLAG=NULL, DATA_OP=NULL, DATA_SOURCE=NULL, DATA_VERSION=NULL, DATA_REJ_DESC=NULL, DATA_DEL_DESC=NULL, DATA_CRT_USER=NULL, DATA_CRT_DATE=NULL, DATA_CRT_TIME=NULL, DATA_CHG_USER=NULL, DATA_CHG_DATE=NULL, DATA_CHG_TIME=NULL, DATA_APV_USER=NULL, DATA_APV_DATE=NULL, DATA_APV_TIME=NULL, RSV1='d8b08153aa4c4e60a3b28d10cbb08899', RSV2=NULL, RSV3=NULL, RSV4='mbtrule', RSV5='1' WHERE DATA_ID='MBT_410S4100124S410012403S410012402';
UPDATE GP_QC_RULE SET DATA_DATE='20190624', CORP_ID='TESTCORP', ORG_ID='72', GROUP_ID='002', INQ_ORG_ID=NULL, INQ_GROUP_ID=NULL, RULE_DESC='当“账户类型”为“D1”，“业务经营类型”不能为空', RULE_MESSAGE='当“账户类型”为“D1”，“业务经营类型”不能为空', RULE_TYPE=NULL, RULE_SOURCE='BUSI', FIELD='DATA_ID', FIELD_NAME=NULL, TRIMMABLE=NULL, NULLABLE='Y', TYPE_ID=NULL, ENCODING=NULL, MIN_LENGTH=NULL, MAX_LENGTH=NULL, MIN_VALUE=NULL, MAX_VALUE=NULL, MAX_PRECISION=NULL, MIN_SCALE=NULL, MAX_SCALE=NULL, ENUMERATION=NULL, PATTERN=NULL, IN_ENTITY=NULL, IN_FIELD=NULL, "SQL"=NULL, SQL_EXTRA_KEY=NULL, SCRIPT='if (!isEmpty(B_ACCT_TYPE) && B_ACCT_TYPE == "D1") {
    if (!isEmpty(C_FUND_SOU)) {
        return true
    }
    return false
}
return true', BEAN=NULL, CHECK_FLAG=NULL, CHECK_DESC=NULL, CHECK_ERR_TYPE=NULL, NEXT_ACTION=NULL, DATA_STATUS=NULL, DATA_FLAG=NULL, DATA_OP=NULL, DATA_SOURCE=NULL, DATA_VERSION=NULL, DATA_REJ_DESC=NULL, DATA_DEL_DESC=NULL, DATA_CRT_USER=NULL, DATA_CRT_DATE=NULL, DATA_CRT_TIME=NULL, DATA_CHG_USER=NULL, DATA_CHG_DATE=NULL, DATA_CHG_TIME=NULL, DATA_APV_USER=NULL, DATA_APV_DATE=NULL, DATA_APV_TIME=NULL, RSV1='f97c586e6e934236820bdf5fef31bdde', RSV2=NULL, RSV3=NULL, RSV4='mbtrule', RSV5='1' WHERE DATA_ID='MBT_410S4100125S410012507S410012502';
UPDATE GP_QC_RULE SET DATA_DATE='20190624', CORP_ID='TESTCORP', ORG_ID='72', GROUP_ID='002', INQ_ORG_ID=NULL, INQ_GROUP_ID=NULL, RULE_DESC='当“账户类型”为“D1”，“资产转让标志”不能为空', RULE_MESSAGE='当“账户类型”为“D1”，“资产转让标志”不能为空', RULE_TYPE=NULL, RULE_SOURCE='BUSI', FIELD='DATA_ID', FIELD_NAME=NULL, TRIMMABLE=NULL, NULLABLE='Y', TYPE_ID=NULL, ENCODING=NULL, MIN_LENGTH=NULL, MAX_LENGTH=NULL, MIN_VALUE=NULL, MAX_VALUE=NULL, MAX_PRECISION=NULL, MIN_SCALE=NULL, MAX_SCALE=NULL, ENUMERATION=NULL, PATTERN=NULL, IN_ENTITY=NULL, IN_FIELD=NULL, "SQL"=NULL, SQL_EXTRA_KEY=NULL, SCRIPT='if (!isEmpty(B_ACCT_TYPE) && B_ACCT_TYPE == "D1") {
    if (!isEmpty(C_ASSET_TRAND_FLAG)) {
        return true
    }
    return false
}
return true', BEAN=NULL, CHECK_FLAG=NULL, CHECK_DESC=NULL, CHECK_ERR_TYPE=NULL, NEXT_ACTION=NULL, DATA_STATUS=NULL, DATA_FLAG=NULL, DATA_OP=NULL, DATA_SOURCE=NULL, DATA_VERSION=NULL, DATA_REJ_DESC=NULL, DATA_DEL_DESC=NULL, DATA_CRT_USER=NULL, DATA_CRT_DATE=NULL, DATA_CRT_TIME=NULL, DATA_CHG_USER=NULL, DATA_CHG_DATE=NULL, DATA_CHG_TIME=NULL, DATA_APV_USER=NULL, DATA_APV_DATE=NULL, DATA_APV_TIME=NULL, RSV1='565f6dad017347bca3ff0c42d63023e5', RSV2=NULL, RSV3=NULL, RSV4='mbtrule', RSV5='1' WHERE DATA_ID='MBT_410S4100127S410012705S410012702';
UPDATE GP_QC_RULE SET DATA_DATE='20190624', CORP_ID='TESTCORP', ORG_ID='72', GROUP_ID='002', INQ_ORG_ID=NULL, INQ_GROUP_ID=NULL, RULE_DESC='当“账户类型”为“C1”，“分次放款标志”为空', RULE_MESSAGE='当“账户类型”为“C1”，“分次放款标志”为空', RULE_TYPE=NULL, RULE_SOURCE='BUSI', FIELD='DATA_ID', FIELD_NAME=NULL, TRIMMABLE=NULL, NULLABLE='Y', TYPE_ID=NULL, ENCODING=NULL, MIN_LENGTH=NULL, MAX_LENGTH=NULL, MIN_VALUE=NULL, MAX_VALUE=NULL, MAX_PRECISION=NULL, MIN_SCALE=NULL, MAX_SCALE=NULL, ENUMERATION=NULL, PATTERN=NULL, IN_ENTITY=NULL, IN_FIELD=NULL, "SQL"=NULL, SQL_EXTRA_KEY=NULL, SCRIPT='if (!isEmpty(B_ACCT_TYPE) && B_ACCT_TYPE == "C1") {
    if (isEmpty(C_FLAG)) {
        return true
    }
    return false
}
return true', BEAN=NULL, CHECK_FLAG=NULL, CHECK_DESC=NULL, CHECK_ERR_TYPE=NULL, NEXT_ACTION=NULL, DATA_STATUS=NULL, DATA_FLAG=NULL, DATA_OP=NULL, DATA_SOURCE=NULL, DATA_VERSION=NULL, DATA_REJ_DESC=NULL, DATA_DEL_DESC=NULL, DATA_CRT_USER=NULL, DATA_CRT_DATE=NULL, DATA_CRT_TIME=NULL, DATA_CHG_USER=NULL, DATA_CHG_DATE=NULL, DATA_CHG_TIME=NULL, DATA_APV_USER=NULL, DATA_APV_DATE=NULL, DATA_APV_TIME=NULL, RSV1='b564c01fc3dd410ca0cc390fa59499ca', RSV2=NULL, RSV3=NULL, RSV4='mbtrule', RSV5='1' WHERE DATA_ID='MBT_410S4100105S410010507S410010502';
UPDATE GP_QC_RULE SET DATA_DATE='20190620', CORP_ID='TESTCORP', ORG_ID='72', GROUP_ID='002', INQ_ORG_ID=NULL, INQ_GROUP_ID=NULL, RULE_DESC='若账户类型为“R2”时，月度表现信息段中的“逾期 180 天以上未归还本金”字段不适用于此类账户。', RULE_MESSAGE='若账户类型为“R2”时，月度表现信息段中的“逾期 180 天以上未归还本金”字段不适用于此类账户。', RULE_TYPE=NULL, RULE_SOURCE='BUSI', FIELD='DATA_ID', FIELD_NAME=NULL, TRIMMABLE=NULL, NULLABLE='Y', TYPE_ID=NULL, ENCODING=NULL, MIN_LENGTH=NULL, MAX_LENGTH=NULL, MIN_VALUE=NULL, MAX_VALUE=NULL, MAX_PRECISION=NULL, MIN_SCALE=NULL, MAX_SCALE=NULL, ENUMERATION=NULL, PATTERN=NULL, IN_ENTITY=NULL, IN_FIELD=NULL, "SQL"=NULL, SQL_EXTRA_KEY=NULL, SCRIPT='if (!isEmpty(B_ACCT_TYPE) && B_ACCT_TYPE == "R2") {
    if (isEmpty(H_OVERD_PRINC180)) {
        return true
    }
    return false
}
return true', BEAN=NULL, CHECK_FLAG=NULL, CHECK_DESC=NULL, CHECK_ERR_TYPE=NULL, NEXT_ACTION=NULL, DATA_STATUS=NULL, DATA_FLAG=NULL, DATA_OP=NULL, DATA_SOURCE=NULL, DATA_VERSION=NULL, DATA_REJ_DESC=NULL, DATA_DEL_DESC=NULL, DATA_CRT_USER=NULL, DATA_CRT_DATE=NULL, DATA_CRT_TIME=NULL, DATA_CHG_USER=NULL, DATA_CHG_DATE=NULL, DATA_CHG_TIME=NULL, DATA_APV_USER=NULL, DATA_APV_DATE=NULL, DATA_APV_TIME=NULL, RSV1='4f023fbf85c8447295532fc0a554178d', RSV2=NULL, RSV3=NULL, RSV4='mbtrule', RSV5='1' WHERE DATA_ID='MBT_210S210010306S210010103S210010238';
UPDATE GP_QC_RULE SET DATA_DATE='20190620', CORP_ID='TESTCORP', ORG_ID='72', GROUP_ID='002', INQ_ORG_ID=NULL, INQ_GROUP_ID=NULL, RULE_DESC='若账户类型为“R2”时，月度表现信息段中的“透支 180 天以上未还余额”字段不适用于此类账户。', RULE_MESSAGE='若账户类型为“R2”时，月度表现信息段中的“透支 180 天以上未还余额”字段不适用于此类账户。', RULE_TYPE=NULL, RULE_SOURCE='BUSI', FIELD='DATA_ID', FIELD_NAME=NULL, TRIMMABLE=NULL, NULLABLE='Y', TYPE_ID=NULL, ENCODING=NULL, MIN_LENGTH=NULL, MAX_LENGTH=NULL, MIN_VALUE=NULL, MAX_VALUE=NULL, MAX_PRECISION=NULL, MIN_SCALE=NULL, MAX_SCALE=NULL, ENUMERATION=NULL, PATTERN=NULL, IN_ENTITY=NULL, IN_FIELD=NULL, "SQL"=NULL, SQL_EXTRA_KEY=NULL, SCRIPT='if (!isEmpty(B_ACCT_TYPE) && B_ACCT_TYPE == "R2") {
    if (isEmpty(H_OVERD_RAW_BA_OVE180)) {
        return true
    }
    return false
}
return true', BEAN=NULL, CHECK_FLAG=NULL, CHECK_DESC=NULL, CHECK_ERR_TYPE=NULL, NEXT_ACTION=NULL, DATA_STATUS=NULL, DATA_FLAG=NULL, DATA_OP=NULL, DATA_SOURCE=NULL, DATA_VERSION=NULL, DATA_REJ_DESC=NULL, DATA_DEL_DESC=NULL, DATA_CRT_USER=NULL, DATA_CRT_DATE=NULL, DATA_CRT_TIME=NULL, DATA_CHG_USER=NULL, DATA_CHG_DATE=NULL, DATA_CHG_TIME=NULL, DATA_APV_USER=NULL, DATA_APV_DATE=NULL, DATA_APV_TIME=NULL, RSV1='b7993887384846459c7a564de2091905', RSV2=NULL, RSV3=NULL, RSV4='mbtrule', RSV5='1' WHERE DATA_ID='MBT_210S210010312S210010103S210010242';
UPDATE GP_QC_RULE SET DATA_DATE='20190620', CORP_ID='TESTCORP', ORG_ID='72', GROUP_ID='002', INQ_ORG_ID=NULL, INQ_GROUP_ID=NULL, RULE_DESC='若账户类型为“R3”时，月度表现信息段中的“本月应还款金额”字段不适用于此类账户。', RULE_MESSAGE='若账户类型为“R3”时，月度表现信息段中的“本月应还款金额”字段不适用于此类账户。', RULE_TYPE=NULL, RULE_SOURCE='BUSI', FIELD='DATA_ID', FIELD_NAME=NULL, TRIMMABLE=NULL, NULLABLE='Y', TYPE_ID=NULL, ENCODING=NULL, MIN_LENGTH=NULL, MAX_LENGTH=NULL, MIN_VALUE=NULL, MAX_VALUE=NULL, MAX_PRECISION=NULL, MIN_SCALE=NULL, MAX_SCALE=NULL, ENUMERATION=NULL, PATTERN=NULL, IN_ENTITY=NULL, IN_FIELD=NULL, "SQL"=NULL, SQL_EXTRA_KEY=NULL, SCRIPT='if (!isEmpty(B_ACCT_TYPE) && B_ACCT_TYPE == "R3") {
    if (isEmpty(H_CUR_RPY_AMT)) {
        return true
    }
    return false
}
return true', BEAN=NULL, CHECK_FLAG=NULL, CHECK_DESC=NULL, CHECK_ERR_TYPE=NULL, NEXT_ACTION=NULL, DATA_STATUS=NULL, DATA_FLAG=NULL, DATA_OP=NULL, DATA_SOURCE=NULL, DATA_VERSION=NULL, DATA_REJ_DESC=NULL, DATA_DEL_DESC=NULL, DATA_CRT_USER=NULL, DATA_CRT_DATE=NULL, DATA_CRT_TIME=NULL, DATA_CHG_USER=NULL, DATA_CHG_DATE=NULL, DATA_CHG_TIME=NULL, DATA_APV_USER=NULL, DATA_APV_DATE=NULL, DATA_APV_TIME=NULL, RSV1='7b77b2aab9b547898d7671069dce6edc', RSV2=NULL, RSV3=NULL, RSV4='mbtrule', RSV5='1' WHERE DATA_ID='MBT_210S210010319S210010105S210010248';
UPDATE GP_QC_RULE SET DATA_DATE='20190620', CORP_ID='TESTCORP', ORG_ID='72', GROUP_ID='002', INQ_ORG_ID=NULL, INQ_GROUP_ID=NULL, RULE_DESC='若账户类型为“R3”时，月度表现信息段中的“本期账单余额”字段不适用于此类账户。', RULE_MESSAGE='若账户类型为“R3”时，月度表现信息段中的“本期账单余额”字段不适用于此类账户。', RULE_TYPE=NULL, RULE_SOURCE='BUSI', FIELD='DATA_ID', FIELD_NAME=NULL, TRIMMABLE=NULL, NULLABLE='Y', TYPE_ID=NULL, ENCODING=NULL, MIN_LENGTH=NULL, MAX_LENGTH=NULL, MIN_VALUE=NULL, MAX_VALUE=NULL, MAX_PRECISION=NULL, MIN_SCALE=NULL, MAX_SCALE=NULL, ENUMERATION=NULL, PATTERN=NULL, IN_ENTITY=NULL, IN_FIELD=NULL, "SQL"=NULL, SQL_EXTRA_KEY=NULL, SCRIPT='if (!isEmpty(B_ACCT_TYPE) && B_ACCT_TYPE == "R3") {
    if (isEmpty(H_PRID_ACCT_BAL)) {
        return true
    }
    return false
}
return true', BEAN=NULL, CHECK_FLAG=NULL, CHECK_DESC=NULL, CHECK_ERR_TYPE=NULL, NEXT_ACTION=NULL, DATA_STATUS=NULL, DATA_FLAG=NULL, DATA_OP=NULL, DATA_SOURCE=NULL, DATA_VERSION=NULL, DATA_REJ_DESC=NULL, DATA_DEL_DESC=NULL, DATA_CRT_USER=NULL, DATA_CRT_DATE=NULL, DATA_CRT_TIME=NULL, DATA_CHG_USER=NULL, DATA_CHG_DATE=NULL, DATA_CHG_TIME=NULL, DATA_APV_USER=NULL, DATA_APV_DATE=NULL, DATA_APV_TIME=NULL, RSV1='e598d66b1c754774b3e78dfb27bc4016', RSV2=NULL, RSV3=NULL, RSV4='mbtrule', RSV5='1' WHERE DATA_ID='MBT_210S210010241S210010105S210010196';
UPDATE GP_QC_RULE SET DATA_DATE='20190620', CORP_ID='TESTCORP', ORG_ID='72', GROUP_ID='002', INQ_ORG_ID=NULL, INQ_GROUP_ID=NULL, RULE_DESC='若账户类型为“R1”时，月度表现信息段中的“已使用额度”字段不适用于此类账户。', RULE_MESSAGE='若账户类型为“R1”时，月度表现信息段中的“已使用额度”字段不适用于此类账户。', RULE_TYPE=NULL, RULE_SOURCE='BUSI', FIELD='DATA_ID', FIELD_NAME=NULL, TRIMMABLE=NULL, NULLABLE='Y', TYPE_ID=NULL, ENCODING=NULL, MIN_LENGTH=NULL, MAX_LENGTH=NULL, MIN_VALUE=NULL, MAX_VALUE=NULL, MAX_PRECISION=NULL, MIN_SCALE=NULL, MAX_SCALE=NULL, ENUMERATION=NULL, PATTERN=NULL, IN_ENTITY=NULL, IN_FIELD=NULL, "SQL"=NULL, SQL_EXTRA_KEY=NULL, SCRIPT='if (!isEmpty(B_ACCT_TYPE) && B_ACCT_TYPE == "R1") {
    if (isEmpty(H_USED_AMT)) {
        return true
    }
    return false
}
return true', BEAN=NULL, CHECK_FLAG=NULL, CHECK_DESC=NULL, CHECK_ERR_TYPE=NULL, NEXT_ACTION=NULL, DATA_STATUS=NULL, DATA_FLAG=NULL, DATA_OP=NULL, DATA_SOURCE=NULL, DATA_VERSION=NULL, DATA_REJ_DESC=NULL, DATA_DEL_DESC=NULL, DATA_CRT_USER=NULL, DATA_CRT_DATE=NULL, DATA_CRT_TIME=NULL, DATA_CHG_USER=NULL, DATA_CHG_DATE=NULL, DATA_CHG_TIME=NULL, DATA_APV_USER=NULL, DATA_APV_DATE=NULL, DATA_APV_TIME=NULL, RSV1='9f000b0d19684877a7584308e65cfcb9', RSV2=NULL, RSV3=NULL, RSV4='mbtrule', RSV5='1' WHERE DATA_ID='MBT_210S210010245S210010101S210010200';
UPDATE GP_QC_RULE SET DATA_DATE='20190620', CORP_ID='TESTCORP', ORG_ID='72', GROUP_ID='002', INQ_ORG_ID=NULL, INQ_GROUP_ID=NULL, RULE_DESC='若账户类型为“C1”时，月度表现信息段中的“已使用额度”字段不适用于此类模板。', RULE_MESSAGE='若账户类型为“C1”时，月度表现信息段中的“已使用额度”字段不适用于此类模板。', RULE_TYPE=NULL, RULE_SOURCE='BUSI', FIELD='DATA_ID', FIELD_NAME=NULL, TRIMMABLE=NULL, NULLABLE='Y', TYPE_ID=NULL, ENCODING=NULL, MIN_LENGTH=NULL, MAX_LENGTH=NULL, MIN_VALUE=NULL, MAX_VALUE=NULL, MAX_PRECISION=NULL, MIN_SCALE=NULL, MAX_SCALE=NULL, ENUMERATION=NULL, PATTERN=NULL, IN_ENTITY=NULL, IN_FIELD=NULL, "SQL"=NULL, SQL_EXTRA_KEY=NULL, SCRIPT='if (!isEmpty(B_ACCT_TYPE) && B_ACCT_TYPE == "C1") {
    if (isEmpty(H_USED_AMT)) {
        return true
    }
    return false
}
return true', BEAN=NULL, CHECK_FLAG=NULL, CHECK_DESC=NULL, CHECK_ERR_TYPE=NULL, NEXT_ACTION=NULL, DATA_STATUS=NULL, DATA_FLAG=NULL, DATA_OP=NULL, DATA_SOURCE=NULL, DATA_VERSION=NULL, DATA_REJ_DESC=NULL, DATA_DEL_DESC=NULL, DATA_CRT_USER=NULL, DATA_CRT_DATE=NULL, DATA_CRT_TIME=NULL, DATA_CHG_USER=NULL, DATA_CHG_DATE=NULL, DATA_CHG_TIME=NULL, DATA_APV_USER=NULL, DATA_APV_DATE=NULL, DATA_APV_TIME=NULL, RSV1='4d03458db99949d2982156c9aab98cf1', RSV2=NULL, RSV3=NULL, RSV4='mbtrule', RSV5='1' WHERE DATA_ID='MBT_210S210010250S210010111S210010200';
UPDATE GP_QC_RULE SET DATA_DATE='20190624', CORP_ID='TESTCORP', ORG_ID='72', GROUP_ID='002', INQ_ORG_ID=NULL, INQ_GROUP_ID=NULL, RULE_DESC='当“账户类型”为“D1”，“信用额度”为空', RULE_MESSAGE='当“账户类型”为“D1”，“信用额度”为空', RULE_TYPE=NULL, RULE_SOURCE='BUSI', FIELD='DATA_ID', FIELD_NAME=NULL, TRIMMABLE=NULL, NULLABLE='Y', TYPE_ID=NULL, ENCODING=NULL, MIN_LENGTH=NULL, MAX_LENGTH=NULL, MIN_VALUE=NULL, MAX_VALUE=NULL, MAX_PRECISION=NULL, MIN_SCALE=NULL, MAX_SCALE=NULL, ENUMERATION=NULL, PATTERN=NULL, IN_ENTITY=NULL, IN_FIELD=NULL, "SQL"=NULL, SQL_EXTRA_KEY=NULL, SCRIPT='if (!isEmpty(B_ACCT_TYPE) && B_ACCT_TYPE == "D1") {
    if (isEmpty(C_ACCT_CRED_LINE_AMT) ){
        return true
    }
    return false
}
return true', BEAN=NULL, CHECK_FLAG=NULL, CHECK_DESC=NULL, CHECK_ERR_TYPE=NULL, NEXT_ACTION=NULL, DATA_STATUS=NULL, DATA_FLAG=NULL, DATA_OP=NULL, DATA_SOURCE=NULL, DATA_VERSION=NULL, DATA_REJ_DESC=NULL, DATA_DEL_DESC=NULL, DATA_CRT_USER=NULL, DATA_CRT_DATE=NULL, DATA_CRT_TIME=NULL, DATA_CHG_USER=NULL, DATA_CHG_DATE=NULL, DATA_CHG_TIME=NULL, DATA_APV_USER=NULL, DATA_APV_DATE=NULL, DATA_APV_TIME=NULL, RSV1='21774b5b1db04530a490579300363f55', RSV2=NULL, RSV3=NULL, RSV4='mbtrule', RSV5='1' WHERE DATA_ID='MBT_410S4100101S410010101S410010102';
UPDATE GP_QC_RULE SET DATA_DATE='20190624', CORP_ID='TESTCORP', ORG_ID='72', GROUP_ID='002', INQ_ORG_ID=NULL, INQ_GROUP_ID=NULL, RULE_DESC='当“账户类型”为“R1”，“信用额度”不能为空', RULE_MESSAGE='当“账户类型”为“R1”，“信用额度”不能为空', RULE_TYPE=NULL, RULE_SOURCE='BUSI', FIELD='DATA_ID', FIELD_NAME=NULL, TRIMMABLE=NULL, NULLABLE='Y', TYPE_ID=NULL, ENCODING=NULL, MIN_LENGTH=NULL, MAX_LENGTH=NULL, MIN_VALUE=NULL, MAX_VALUE=NULL, MAX_PRECISION=NULL, MIN_SCALE=NULL, MAX_SCALE=NULL, ENUMERATION=NULL, PATTERN=NULL, IN_ENTITY=NULL, IN_FIELD=NULL, "SQL"=NULL, SQL_EXTRA_KEY=NULL, SCRIPT='if (!isEmpty(B_ACCT_TYPE) && B_ACCT_TYPE == "R1") {
    if (!isEmpty(C_ACCT_CRED_LINE_AMT)) {
        return true
    }
    return false
}
return true', BEAN=NULL, CHECK_FLAG=NULL, CHECK_DESC=NULL, CHECK_ERR_TYPE=NULL, NEXT_ACTION=NULL, DATA_STATUS=NULL, DATA_FLAG=NULL, DATA_OP=NULL, DATA_SOURCE=NULL, DATA_VERSION=NULL, DATA_REJ_DESC=NULL, DATA_DEL_DESC=NULL, DATA_CRT_USER=NULL, DATA_CRT_DATE=NULL, DATA_CRT_TIME=NULL, DATA_CHG_USER=NULL, DATA_CHG_DATE=NULL, DATA_CHG_TIME=NULL, DATA_APV_USER=NULL, DATA_APV_DATE=NULL, DATA_APV_TIME=NULL, RSV1='1d85b4588aeb46bb8bd31c5238c325bd', RSV2=NULL, RSV3=NULL, RSV4='mbtrule', RSV5='1' WHERE DATA_ID='MBT_410S4100102S410010201S410010202';
UPDATE GP_QC_RULE SET DATA_DATE='20190624', CORP_ID='TESTCORP', ORG_ID='72', GROUP_ID='002', INQ_ORG_ID=NULL, INQ_GROUP_ID=NULL, RULE_DESC='当“账户类型”为“C1”，“借款金额”不能为空', RULE_MESSAGE='当“账户类型”为“C1”，“借款金额”不能为空', RULE_TYPE=NULL, RULE_SOURCE='BUSI', FIELD='DATA_ID', FIELD_NAME=NULL, TRIMMABLE=NULL, NULLABLE='Y', TYPE_ID=NULL, ENCODING=NULL, MIN_LENGTH=NULL, MAX_LENGTH=NULL, MIN_VALUE=NULL, MAX_VALUE=NULL, MAX_PRECISION=NULL, MIN_SCALE=NULL, MAX_SCALE=NULL, ENUMERATION=NULL, PATTERN=NULL, IN_ENTITY=NULL, IN_FIELD=NULL, "SQL"=NULL, SQL_EXTRA_KEY=NULL, SCRIPT='if (!isEmpty(B_ACCT_TYPE) && B_ACCT_TYPE == "C1") {
    if (!isEmpty(C_LOAN_AMT)) {
        return true
    }
    return false
}
return true', BEAN=NULL, CHECK_FLAG=NULL, CHECK_DESC=NULL, CHECK_ERR_TYPE=NULL, NEXT_ACTION=NULL, DATA_STATUS=NULL, DATA_FLAG=NULL, DATA_OP=NULL, DATA_SOURCE=NULL, DATA_VERSION=NULL, DATA_REJ_DESC=NULL, DATA_DEL_DESC=NULL, DATA_CRT_USER=NULL, DATA_CRT_DATE=NULL, DATA_CRT_TIME=NULL, DATA_CHG_USER=NULL, DATA_CHG_DATE=NULL, DATA_CHG_TIME=NULL, DATA_APV_USER=NULL, DATA_APV_DATE=NULL, DATA_APV_TIME=NULL, RSV1='68000ac83e684ccc88a356ab555d87d6', RSV2=NULL, RSV3=NULL, RSV4='mbtrule', RSV5='1' WHERE DATA_ID='MBT_410S4100103S410010307S410010302';
UPDATE GP_QC_RULE SET DATA_DATE='20190624', CORP_ID='TESTCORP', ORG_ID='72', GROUP_ID='002', INQ_ORG_ID=NULL, INQ_GROUP_ID=NULL, RULE_DESC='当“账户类型”为“R1”，“资产转让标志”不能为空', RULE_MESSAGE='当“账户类型”为“R1”，“资产转让标志”不能为空', RULE_TYPE=NULL, RULE_SOURCE='BUSI', FIELD='DATA_ID', FIELD_NAME=NULL, TRIMMABLE=NULL, NULLABLE='Y', TYPE_ID=NULL, ENCODING=NULL, MIN_LENGTH=NULL, MAX_LENGTH=NULL, MIN_VALUE=NULL, MAX_VALUE=NULL, MAX_PRECISION=NULL, MIN_SCALE=NULL, MAX_SCALE=NULL, ENUMERATION=NULL, PATTERN=NULL, IN_ENTITY=NULL, IN_FIELD=NULL, "SQL"=NULL, SQL_EXTRA_KEY=NULL, SCRIPT='if (!isEmpty(B_ACCT_TYPE) && B_ACCT_TYPE == "R1") {
    if (!isEmpty(C_ASSET_TRAND_FLAG)) {
        return true
    }
    return false
}
return true', BEAN=NULL, CHECK_FLAG=NULL, CHECK_DESC=NULL, CHECK_ERR_TYPE=NULL, NEXT_ACTION=NULL, DATA_STATUS=NULL, DATA_FLAG=NULL, DATA_OP=NULL, DATA_SOURCE=NULL, DATA_VERSION=NULL, DATA_REJ_DESC=NULL, DATA_DEL_DESC=NULL, DATA_CRT_USER=NULL, DATA_CRT_DATE=NULL, DATA_CRT_TIME=NULL, DATA_CHG_USER=NULL, DATA_CHG_DATE=NULL, DATA_CHG_TIME=NULL, DATA_APV_USER=NULL, DATA_APV_DATE=NULL, DATA_APV_TIME=NULL, RSV1='2e30d4261f984234b52ad7cc47990eb4', RSV2=NULL, RSV3=NULL, RSV4='mbtrule', RSV5='1' WHERE DATA_ID='MBT_410S4100127S410012701S410012702';
UPDATE GP_QC_RULE SET DATA_DATE='20190624', CORP_ID='TESTCORP', ORG_ID='72', GROUP_ID='002', INQ_ORG_ID=NULL, INQ_GROUP_ID=NULL, RULE_DESC='当“账户类型”为“C2”，“资产转让标志”为空', RULE_MESSAGE='当“账户类型”为“C2”，“资产转让标志”为空', RULE_TYPE=NULL, RULE_SOURCE='BUSI', FIELD='DATA_ID', FIELD_NAME=NULL, TRIMMABLE=NULL, NULLABLE='Y', TYPE_ID=NULL, ENCODING=NULL, MIN_LENGTH=NULL, MAX_LENGTH=NULL, MIN_VALUE=NULL, MAX_VALUE=NULL, MAX_PRECISION=NULL, MIN_SCALE=NULL, MAX_SCALE=NULL, ENUMERATION=NULL, PATTERN=NULL, IN_ENTITY=NULL, IN_FIELD=NULL, "SQL"=NULL, SQL_EXTRA_KEY=NULL, SCRIPT='if (!isEmpty(B_ACCT_TYPE) && B_ACCT_TYPE == "C1") {
    if (isEmpty(C_ASSET_TRAND_FLAG)) {
        return true
    }
    return false
}
return true', BEAN=NULL, CHECK_FLAG=NULL, CHECK_DESC=NULL, CHECK_ERR_TYPE=NULL, NEXT_ACTION=NULL, DATA_STATUS=NULL, DATA_FLAG=NULL, DATA_OP=NULL, DATA_SOURCE=NULL, DATA_VERSION=NULL, DATA_REJ_DESC=NULL, DATA_DEL_DESC=NULL, DATA_CRT_USER=NULL, DATA_CRT_DATE=NULL, DATA_CRT_TIME=NULL, DATA_CHG_USER=NULL, DATA_CHG_DATE=NULL, DATA_CHG_TIME=NULL, DATA_APV_USER=NULL, DATA_APV_DATE=NULL, DATA_APV_TIME=NULL, RSV1='31e79eaee68340f7982ff55e8d9ddcab', RSV2=NULL, RSV3=NULL, RSV4='mbtrule', RSV5='1' WHERE DATA_ID='MBT_410S4100128S410012803S410012802';
UPDATE GP_QC_RULE SET DATA_DATE='20190624', CORP_ID='TESTCORP', ORG_ID='72', GROUP_ID='002', INQ_ORG_ID=NULL, INQ_GROUP_ID=NULL, RULE_DESC='当“账户类型”为“D2”，“分次放款标志”为空', RULE_MESSAGE='当“账户类型”为“D2”，“分次放款标志”为空', RULE_TYPE=NULL, RULE_SOURCE='BUSI', FIELD='DATA_ID', FIELD_NAME=NULL, TRIMMABLE=NULL, NULLABLE='Y', TYPE_ID=NULL, ENCODING=NULL, MIN_LENGTH=NULL, MAX_LENGTH=NULL, MIN_VALUE=NULL, MAX_VALUE=NULL, MAX_PRECISION=NULL, MIN_SCALE=NULL, MAX_SCALE=NULL, ENUMERATION=NULL, PATTERN=NULL, IN_ENTITY=NULL, IN_FIELD=NULL, "SQL"=NULL, SQL_EXTRA_KEY=NULL, SCRIPT='if (!isEmpty(B_ACCT_TYPE) && B_ACCT_TYPE == "D2") {
    if (isEmpty(C_FLAG)) {
        return true
    }
    return false
}
return true', BEAN=NULL, CHECK_FLAG=NULL, CHECK_DESC=NULL, CHECK_ERR_TYPE=NULL, NEXT_ACTION=NULL, DATA_STATUS=NULL, DATA_FLAG=NULL, DATA_OP=NULL, DATA_SOURCE=NULL, DATA_VERSION=NULL, DATA_REJ_DESC=NULL, DATA_DEL_DESC=NULL, DATA_CRT_USER=NULL, DATA_CRT_DATE=NULL, DATA_CRT_TIME=NULL, DATA_CHG_USER=NULL, DATA_CHG_DATE=NULL, DATA_CHG_TIME=NULL, DATA_APV_USER=NULL, DATA_APV_DATE=NULL, DATA_APV_TIME=NULL, RSV1='f6af8bb717fd4971890119e1f58f88d1', RSV2=NULL, RSV3=NULL, RSV4='mbtrule', RSV5='1' WHERE DATA_ID='MBT_410S4100105S410010503S410010502';
UPDATE GP_QC_RULE SET DATA_DATE='20190624', CORP_ID='TESTCORP', ORG_ID='72', GROUP_ID='002', INQ_ORG_ID=NULL, INQ_GROUP_ID=NULL, RULE_DESC='当“账户类型”为“D2”，“业务经营类型”不能为空', RULE_MESSAGE='当“账户类型”为“D2”，“业务经营类型”不能为空', RULE_TYPE=NULL, RULE_SOURCE='BUSI', FIELD='DATA_ID', FIELD_NAME=NULL, TRIMMABLE=NULL, NULLABLE='Y', TYPE_ID=NULL, ENCODING=NULL, MIN_LENGTH=NULL, MAX_LENGTH=NULL, MIN_VALUE=NULL, MAX_VALUE=NULL, MAX_PRECISION=NULL, MIN_SCALE=NULL, MAX_SCALE=NULL, ENUMERATION=NULL, PATTERN=NULL, IN_ENTITY=NULL, IN_FIELD=NULL, "SQL"=NULL, SQL_EXTRA_KEY=NULL, SCRIPT='if (!isEmpty(B_ACCT_TYPE) && B_ACCT_TYPE == "D2") {
    if (!isEmpty(C_FUND_SOU)) {
        return true
    }
    return false
}
return true', BEAN=NULL, CHECK_FLAG=NULL, CHECK_DESC=NULL, CHECK_ERR_TYPE=NULL, NEXT_ACTION=NULL, DATA_STATUS=NULL, DATA_FLAG=NULL, DATA_OP=NULL, DATA_SOURCE=NULL, DATA_VERSION=NULL, DATA_REJ_DESC=NULL, DATA_DEL_DESC=NULL, DATA_CRT_USER=NULL, DATA_CRT_DATE=NULL, DATA_CRT_TIME=NULL, DATA_CHG_USER=NULL, DATA_CHG_DATE=NULL, DATA_CHG_TIME=NULL, DATA_APV_USER=NULL, DATA_APV_DATE=NULL, DATA_APV_TIME=NULL, RSV1='0f2350d187324085876270187bc15823', RSV2=NULL, RSV3=NULL, RSV4='mbtrule', RSV5='1' WHERE DATA_ID='MBT_410S4100125S410012503S410012502';
UPDATE GP_QC_RULE SET DATA_DATE='20190624', CORP_ID='TESTCORP', ORG_ID='72', GROUP_ID='002', INQ_ORG_ID=NULL, INQ_GROUP_ID=NULL, RULE_DESC='当“账户类型”为“R1”，“到期日期”不能为空', RULE_MESSAGE='当“账户类型”为“R1”，“到期日期”不能为空', RULE_TYPE=NULL, RULE_SOURCE='BUSI', FIELD='DATA_ID', FIELD_NAME=NULL, TRIMMABLE=NULL, NULLABLE='Y', TYPE_ID=NULL, ENCODING=NULL, MIN_LENGTH=NULL, MAX_LENGTH=NULL, MIN_VALUE=NULL, MAX_VALUE=NULL, MAX_PRECISION=NULL, MIN_SCALE=NULL, MAX_SCALE=NULL, ENUMERATION=NULL, PATTERN=NULL, IN_ENTITY=NULL, IN_FIELD=NULL, "SQL"=NULL, SQL_EXTRA_KEY=NULL, SCRIPT='if (!isEmpty(B_ACCT_TYPE) && B_ACCT_TYPE == "R1") {
    if (!isEmpty(C_DUE_DATE)) {
        return true
    }
    return false
}
return true', BEAN=NULL, CHECK_FLAG=NULL, CHECK_DESC=NULL, CHECK_ERR_TYPE=NULL, NEXT_ACTION=NULL, DATA_STATUS=NULL, DATA_FLAG=NULL, DATA_OP=NULL, DATA_SOURCE=NULL, DATA_VERSION=NULL, DATA_REJ_DESC=NULL, DATA_DEL_DESC=NULL, DATA_CRT_USER=NULL, DATA_CRT_DATE=NULL, DATA_CRT_TIME=NULL, DATA_CHG_USER=NULL, DATA_CHG_DATE=NULL, DATA_CHG_TIME=NULL, DATA_APV_USER=NULL, DATA_APV_DATE=NULL, DATA_APV_TIME=NULL, RSV1='fcb31a9e2822484881b04de00d975c71', RSV2=NULL, RSV3=NULL, RSV4='mbtrule', RSV5='1' WHERE DATA_ID='MBT_410S4100107S410010701S410010702';
UPDATE GP_QC_RULE SET DATA_DATE='20190624', CORP_ID='TESTCORP', ORG_ID='72', GROUP_ID='002', INQ_ORG_ID=NULL, INQ_GROUP_ID=NULL, RULE_DESC='当“账户类型”为“R4”，“到期日期”不能为空', RULE_MESSAGE='当“账户类型”为“R4”，“到期日期”不能为空', RULE_TYPE=NULL, RULE_SOURCE='BUSI', FIELD='DATA_ID', FIELD_NAME=NULL, TRIMMABLE=NULL, NULLABLE='Y', TYPE_ID=NULL, ENCODING=NULL, MIN_LENGTH=NULL, MAX_LENGTH=NULL, MIN_VALUE=NULL, MAX_VALUE=NULL, MAX_PRECISION=NULL, MIN_SCALE=NULL, MAX_SCALE=NULL, ENUMERATION=NULL, PATTERN=NULL, IN_ENTITY=NULL, IN_FIELD=NULL, "SQL"=NULL, SQL_EXTRA_KEY=NULL, SCRIPT='if (!isEmpty(B_ACCT_TYPE) && B_ACCT_TYPE == "R4") {
    if (!isEmpty(C_DUE_DATE)) {
        return true
    }
    return false
}
return true', BEAN=NULL, CHECK_FLAG=NULL, CHECK_DESC=NULL, CHECK_ERR_TYPE=NULL, NEXT_ACTION=NULL, DATA_STATUS=NULL, DATA_FLAG=NULL, DATA_OP=NULL, DATA_SOURCE=NULL, DATA_VERSION=NULL, DATA_REJ_DESC=NULL, DATA_DEL_DESC=NULL, DATA_CRT_USER=NULL, DATA_CRT_DATE=NULL, DATA_CRT_TIME=NULL, DATA_CHG_USER=NULL, DATA_CHG_DATE=NULL, DATA_CHG_TIME=NULL, DATA_APV_USER=NULL, DATA_APV_DATE=NULL, DATA_APV_TIME=NULL, RSV1='fb82229cf5424f318ba1f53da03c4def', RSV2=NULL, RSV3=NULL, RSV4='mbtrule', RSV5='1' WHERE DATA_ID='MBT_410S4100107S410010705S410010702';
UPDATE GP_QC_RULE SET DATA_DATE='20190624', CORP_ID='TESTCORP', ORG_ID='72', GROUP_ID='002', INQ_ORG_ID=NULL, INQ_GROUP_ID=NULL, RULE_DESC='当“账户类型”为“C1”，“到期日期”为空', RULE_MESSAGE='当“账户类型”为“C1”，“到期日期”为空', RULE_TYPE=NULL, RULE_SOURCE='BUSI', FIELD='DATA_ID', FIELD_NAME=NULL, TRIMMABLE=NULL, NULLABLE='Y', TYPE_ID=NULL, ENCODING=NULL, MIN_LENGTH=NULL, MAX_LENGTH=NULL, MIN_VALUE=NULL, MAX_VALUE=NULL, MAX_PRECISION=NULL, MIN_SCALE=NULL, MAX_SCALE=NULL, ENUMERATION=NULL, PATTERN=NULL, IN_ENTITY=NULL, IN_FIELD=NULL, "SQL"=NULL, SQL_EXTRA_KEY=NULL, SCRIPT='if (!isEmpty(B_ACCT_TYPE) && B_ACCT_TYPE == "C1") {
    if (isEmpty(C_DUE_DATE)) {
        return true
    }
    return false
}
return true', BEAN=NULL, CHECK_FLAG=NULL, CHECK_DESC=NULL, CHECK_ERR_TYPE=NULL, NEXT_ACTION=NULL, DATA_STATUS=NULL, DATA_FLAG=NULL, DATA_OP=NULL, DATA_SOURCE=NULL, DATA_VERSION=NULL, DATA_REJ_DESC=NULL, DATA_DEL_DESC=NULL, DATA_CRT_USER=NULL, DATA_CRT_DATE=NULL, DATA_CRT_TIME=NULL, DATA_CHG_USER=NULL, DATA_CHG_DATE=NULL, DATA_CHG_TIME=NULL, DATA_APV_USER=NULL, DATA_APV_DATE=NULL, DATA_APV_TIME=NULL, RSV1='a1fddf736bf5495dac21b581ca207415', RSV2=NULL, RSV3=NULL, RSV4='mbtrule', RSV5='1' WHERE DATA_ID='MBT_410S4100108S410010801S410010802';
UPDATE GP_QC_RULE SET DATA_DATE='20190624', CORP_ID='TESTCORP', ORG_ID='72', GROUP_ID='002', INQ_ORG_ID=NULL, INQ_GROUP_ID=NULL, RULE_DESC='当“账户类型”为“D1”，“还款方式”不能为空', RULE_MESSAGE='当“账户类型”为“D1”，“还款方式”不能为空', RULE_TYPE=NULL, RULE_SOURCE='BUSI', FIELD='DATA_ID', FIELD_NAME=NULL, TRIMMABLE=NULL, NULLABLE='Y', TYPE_ID=NULL, ENCODING=NULL, MIN_LENGTH=NULL, MAX_LENGTH=NULL, MIN_VALUE=NULL, MAX_VALUE=NULL, MAX_PRECISION=NULL, MIN_SCALE=NULL, MAX_SCALE=NULL, ENUMERATION=NULL, PATTERN=NULL, IN_ENTITY=NULL, IN_FIELD=NULL, "SQL"=NULL, SQL_EXTRA_KEY=NULL, SCRIPT='if (!isEmpty(B_ACCT_TYPE) && B_ACCT_TYPE == "D1") {
    if (!isEmpty(C_REPAY_MODE)) {
        return true
    }
    return false
}
return true', BEAN=NULL, CHECK_FLAG=NULL, CHECK_DESC=NULL, CHECK_ERR_TYPE=NULL, NEXT_ACTION=NULL, DATA_STATUS=NULL, DATA_FLAG=NULL, DATA_OP=NULL, DATA_SOURCE=NULL, DATA_VERSION=NULL, DATA_REJ_DESC=NULL, DATA_DEL_DESC=NULL, DATA_CRT_USER=NULL, DATA_CRT_DATE=NULL, DATA_CRT_TIME=NULL, DATA_CHG_USER=NULL, DATA_CHG_DATE=NULL, DATA_CHG_TIME=NULL, DATA_APV_USER=NULL, DATA_APV_DATE=NULL, DATA_APV_TIME=NULL, RSV1='0a15aa7e0c614980b9841abb93d6285e', RSV2=NULL, RSV3=NULL, RSV4='mbtrule', RSV5='1' WHERE DATA_ID='MBT_410S4100109S410010903S410010902';
UPDATE GP_QC_RULE SET DATA_DATE='20190624', CORP_ID='TESTCORP', ORG_ID='72', GROUP_ID='002', INQ_ORG_ID=NULL, INQ_GROUP_ID=NULL, RULE_DESC='当“账户类型”为“D2”，“还款方式”为空', RULE_MESSAGE='当“账户类型”为“D2”，“还款方式”为空', RULE_TYPE=NULL, RULE_SOURCE='BUSI', FIELD='DATA_ID', FIELD_NAME=NULL, TRIMMABLE=NULL, NULLABLE='Y', TYPE_ID=NULL, ENCODING=NULL, MIN_LENGTH=NULL, MAX_LENGTH=NULL, MIN_VALUE=NULL, MAX_VALUE=NULL, MAX_PRECISION=NULL, MIN_SCALE=NULL, MAX_SCALE=NULL, ENUMERATION=NULL, PATTERN=NULL, IN_ENTITY=NULL, IN_FIELD=NULL, "SQL"=NULL, SQL_EXTRA_KEY=NULL, SCRIPT='if (!isEmpty(B_ACCT_TYPE) && B_ACCT_TYPE == "D2") {
    if (isEmpty(C_REPAY_MODE)) {
        return true
    }
    return false
}
return true', BEAN=NULL, CHECK_FLAG=NULL, CHECK_DESC=NULL, CHECK_ERR_TYPE=NULL, NEXT_ACTION=NULL, DATA_STATUS=NULL, DATA_FLAG=NULL, DATA_OP=NULL, DATA_SOURCE=NULL, DATA_VERSION=NULL, DATA_REJ_DESC=NULL, DATA_DEL_DESC=NULL, DATA_CRT_USER=NULL, DATA_CRT_DATE=NULL, DATA_CRT_TIME=NULL, DATA_CHG_USER=NULL, DATA_CHG_DATE=NULL, DATA_CHG_TIME=NULL, DATA_APV_USER=NULL, DATA_APV_DATE=NULL, DATA_APV_TIME=NULL, RSV1='c6b1775f30284ed387cd3b8a5ca16bed', RSV2=NULL, RSV3=NULL, RSV4='mbtrule', RSV5='1' WHERE DATA_ID='MBT_410S4100110S410011001S410011002';
UPDATE GP_QC_RULE SET DATA_DATE='20190624', CORP_ID='TESTCORP', ORG_ID='72', GROUP_ID='002', INQ_ORG_ID=NULL, INQ_GROUP_ID=NULL, RULE_DESC='当“账户类型”为“R1”，“还款频率”不能为空', RULE_MESSAGE='当“账户类型”为“R1”，“还款频率”不能为空', RULE_TYPE=NULL, RULE_SOURCE='BUSI', FIELD='DATA_ID', FIELD_NAME=NULL, TRIMMABLE=NULL, NULLABLE='Y', TYPE_ID=NULL, ENCODING=NULL, MIN_LENGTH=NULL, MAX_LENGTH=NULL, MIN_VALUE=NULL, MAX_VALUE=NULL, MAX_PRECISION=NULL, MIN_SCALE=NULL, MAX_SCALE=NULL, ENUMERATION=NULL, PATTERN=NULL, IN_ENTITY=NULL, IN_FIELD=NULL, "SQL"=NULL, SQL_EXTRA_KEY=NULL, SCRIPT='if (!isEmpty(B_ACCT_TYPE) && B_ACCT_TYPE == "R1") {
    if (!isEmpty(C_REPAY_FREQCY)) {
        return true
    }
    return false
}
return true', BEAN=NULL, CHECK_FLAG=NULL, CHECK_DESC=NULL, CHECK_ERR_TYPE=NULL, NEXT_ACTION=NULL, DATA_STATUS=NULL, DATA_FLAG=NULL, DATA_OP=NULL, DATA_SOURCE=NULL, DATA_VERSION=NULL, DATA_REJ_DESC=NULL, DATA_DEL_DESC=NULL, DATA_CRT_USER=NULL, DATA_CRT_DATE=NULL, DATA_CRT_TIME=NULL, DATA_CHG_USER=NULL, DATA_CHG_DATE=NULL, DATA_CHG_TIME=NULL, DATA_APV_USER=NULL, DATA_APV_DATE=NULL, DATA_APV_TIME=NULL, RSV1='b378a379aa2441eaae43d17ac6f95b23', RSV2=NULL, RSV3=NULL, RSV4='mbtrule', RSV5='1' WHERE DATA_ID='MBT_410S4100111S410011101S410011102';
UPDATE GP_QC_RULE SET DATA_DATE='20190624', CORP_ID='TESTCORP', ORG_ID='72', GROUP_ID='002', INQ_ORG_ID=NULL, INQ_GROUP_ID=NULL, RULE_DESC='当“账户类型”为“R4”，“还款频率”不能为空', RULE_MESSAGE='当“账户类型”为“R4”，“还款频率”不能为空', RULE_TYPE=NULL, RULE_SOURCE='BUSI', FIELD='DATA_ID', FIELD_NAME=NULL, TRIMMABLE=NULL, NULLABLE='Y', TYPE_ID=NULL, ENCODING=NULL, MIN_LENGTH=NULL, MAX_LENGTH=NULL, MIN_VALUE=NULL, MAX_VALUE=NULL, MAX_PRECISION=NULL, MIN_SCALE=NULL, MAX_SCALE=NULL, ENUMERATION=NULL, PATTERN=NULL, IN_ENTITY=NULL, IN_FIELD=NULL, "SQL"=NULL, SQL_EXTRA_KEY=NULL, SCRIPT='if (!isEmpty(B_ACCT_TYPE) && B_ACCT_TYPE == "R4") {
    if (!isEmpty(C_REPAY_FREQCY)) {
        return true
    }
    return false
}
return true', BEAN=NULL, CHECK_FLAG=NULL, CHECK_DESC=NULL, CHECK_ERR_TYPE=NULL, NEXT_ACTION=NULL, DATA_STATUS=NULL, DATA_FLAG=NULL, DATA_OP=NULL, DATA_SOURCE=NULL, DATA_VERSION=NULL, DATA_REJ_DESC=NULL, DATA_DEL_DESC=NULL, DATA_CRT_USER=NULL, DATA_CRT_DATE=NULL, DATA_CRT_TIME=NULL, DATA_CHG_USER=NULL, DATA_CHG_DATE=NULL, DATA_CHG_TIME=NULL, DATA_APV_USER=NULL, DATA_APV_DATE=NULL, DATA_APV_TIME=NULL, RSV1='c3e4934ae93a432ba2fb91ca6837cbb5', RSV2=NULL, RSV3=NULL, RSV4='mbtrule', RSV5='1' WHERE DATA_ID='MBT_410S4100111S410011105S410011102';
UPDATE GP_QC_RULE SET DATA_DATE='20190624', CORP_ID='TESTCORP', ORG_ID='72', GROUP_ID='002', INQ_ORG_ID=NULL, INQ_GROUP_ID=NULL, RULE_DESC='当“账户类型”为“C1”，“还款频率”为空', RULE_MESSAGE='当“账户类型”为“C1”，“还款频率”为空', RULE_TYPE=NULL, RULE_SOURCE='BUSI', FIELD='DATA_ID', FIELD_NAME=NULL, TRIMMABLE=NULL, NULLABLE='Y', TYPE_ID=NULL, ENCODING=NULL, MIN_LENGTH=NULL, MAX_LENGTH=NULL, MIN_VALUE=NULL, MAX_VALUE=NULL, MAX_PRECISION=NULL, MIN_SCALE=NULL, MAX_SCALE=NULL, ENUMERATION=NULL, PATTERN=NULL, IN_ENTITY=NULL, IN_FIELD=NULL, "SQL"=NULL, SQL_EXTRA_KEY=NULL, SCRIPT='if (!isEmpty(B_ACCT_TYPE) && B_ACCT_TYPE == "C1") {
    if (isEmpty(C_REPAY_FREQCY)) {
        return true
    }
    return false
}
return true', BEAN=NULL, CHECK_FLAG=NULL, CHECK_DESC=NULL, CHECK_ERR_TYPE=NULL, NEXT_ACTION=NULL, DATA_STATUS=NULL, DATA_FLAG=NULL, DATA_OP=NULL, DATA_SOURCE=NULL, DATA_VERSION=NULL, DATA_REJ_DESC=NULL, DATA_DEL_DESC=NULL, DATA_CRT_USER=NULL, DATA_CRT_DATE=NULL, DATA_CRT_TIME=NULL, DATA_CHG_USER=NULL, DATA_CHG_DATE=NULL, DATA_CHG_TIME=NULL, DATA_APV_USER=NULL, DATA_APV_DATE=NULL, DATA_APV_TIME=NULL, RSV1='8b025eea46b847fcbc89a8ff70279efb', RSV2=NULL, RSV3=NULL, RSV4='mbtrule', RSV5='1' WHERE DATA_ID='MBT_410S4100112S410011203S410011202';
UPDATE GP_QC_RULE SET DATA_DATE='20190620', CORP_ID='TESTCORP', ORG_ID='72', GROUP_ID='002', INQ_ORG_ID=NULL, INQ_GROUP_ID=NULL, RULE_DESC='当“账户类型”为“C1”时，“借贷业务大类”只能为“5-资产处置”、“6-垫款”。', RULE_MESSAGE='当“账户类型”为“C1”时，“借贷业务大类”只能为“5-资产处置”、“6-垫款”。', RULE_TYPE=NULL, RULE_SOURCE='BUSI', FIELD='DATA_ID', FIELD_NAME=NULL, TRIMMABLE=NULL, NULLABLE='Y', TYPE_ID=NULL, ENCODING=NULL, MIN_LENGTH=NULL, MAX_LENGTH=NULL, MIN_VALUE=NULL, MAX_VALUE=NULL, MAX_PRECISION=NULL, MIN_SCALE=NULL, MAX_SCALE=NULL, ENUMERATION=NULL, PATTERN=NULL, IN_ENTITY=NULL, IN_FIELD=NULL, "SQL"=NULL, SQL_EXTRA_KEY=NULL, SCRIPT='if (!isEmpty(B_ACCT_TYPE) && B_ACCT_TYPE == "C1") {
    if (C_BUSI_LINES == "5" || C_BUSI_LINES =="6") {
        return true
    }
    return false
}
return true', BEAN=NULL, CHECK_FLAG=NULL, CHECK_DESC=NULL, CHECK_ERR_TYPE=NULL, NEXT_ACTION=NULL, DATA_STATUS=NULL, DATA_FLAG=NULL, DATA_OP=NULL, DATA_SOURCE=NULL, DATA_VERSION=NULL, DATA_REJ_DESC=NULL, DATA_DEL_DESC=NULL, DATA_CRT_USER=NULL, DATA_CRT_DATE=NULL, DATA_CRT_TIME=NULL, DATA_CHG_USER=NULL, DATA_CHG_DATE=NULL, DATA_CHG_TIME=NULL, DATA_APV_USER=NULL, DATA_APV_DATE=NULL, DATA_APV_TIME=NULL, RSV1='e415218aa5aa4c6ab64f547997368170', RSV2=NULL, RSV3=NULL, RSV4='mbtrule', RSV5='1' WHERE DATA_ID='MBT_210I2100A07I2100A0701I2100A0702';
UPDATE GP_QC_RULE SET DATA_DATE='20190620', CORP_ID='TESTCORP', ORG_ID='72', GROUP_ID='002', INQ_ORG_ID=NULL, INQ_GROUP_ID=NULL, RULE_DESC='若账户类型为“R3”时，基本信息段中的“借款金额”字段不适用于此类账户。', RULE_MESSAGE='若账户类型为“R3”时，基本信息段中的“借款金额”字段不适用于此类账户。', RULE_TYPE=NULL, RULE_SOURCE='BUSI', FIELD='DATA_ID', FIELD_NAME=NULL, TRIMMABLE=NULL, NULLABLE='Y', TYPE_ID=NULL, ENCODING=NULL, MIN_LENGTH=NULL, MAX_LENGTH=NULL, MIN_VALUE=NULL, MAX_VALUE=NULL, MAX_PRECISION=NULL, MIN_SCALE=NULL, MAX_SCALE=NULL, ENUMERATION=NULL, PATTERN=NULL, IN_ENTITY=NULL, IN_FIELD=NULL, "SQL"=NULL, SQL_EXTRA_KEY=NULL, SCRIPT='if (!isEmpty(B_ACCT_TYPE) && B_ACCT_TYPE == "R3") {
    if (isEmpty(C_LOAN_AMT)) {
        return true
    }
    return false
}
return true', BEAN=NULL, CHECK_FLAG=NULL, CHECK_DESC=NULL, CHECK_ERR_TYPE=NULL, NEXT_ACTION=NULL, DATA_STATUS=NULL, DATA_FLAG=NULL, DATA_OP=NULL, DATA_SOURCE=NULL, DATA_VERSION=NULL, DATA_REJ_DESC=NULL, DATA_DEL_DESC=NULL, DATA_CRT_USER=NULL, DATA_CRT_DATE=NULL, DATA_CRT_TIME=NULL, DATA_CHG_USER=NULL, DATA_CHG_DATE=NULL, DATA_CHG_TIME=NULL, DATA_APV_USER=NULL, DATA_APV_DATE=NULL, DATA_APV_TIME=NULL, RSV1='86db037abce547b2b7043ac270a8cf8d', RSV2=NULL, RSV3=NULL, RSV4='mbtrule', RSV5='1' WHERE DATA_ID='MBT_210S210010109S210010105S210010108';
UPDATE GP_QC_RULE SET DATA_DATE='20190620', CORP_ID='TESTCORP', ORG_ID='72', GROUP_ID='002', INQ_ORG_ID=NULL, INQ_GROUP_ID=NULL, RULE_DESC='若账户类型为“R2”时，基本信息段中的“分次放款标志”字段不适用于此类账户。', RULE_MESSAGE='若账户类型为“R2”时，基本信息段中的“分次放款标志”字段不适用于此类账户。', RULE_TYPE=NULL, RULE_SOURCE='BUSI', FIELD='DATA_ID', FIELD_NAME=NULL, TRIMMABLE=NULL, NULLABLE='Y', TYPE_ID=NULL, ENCODING=NULL, MIN_LENGTH=NULL, MAX_LENGTH=NULL, MIN_VALUE=NULL, MAX_VALUE=NULL, MAX_PRECISION=NULL, MIN_SCALE=NULL, MAX_SCALE=NULL, ENUMERATION=NULL, PATTERN=NULL, IN_ENTITY=NULL, IN_FIELD=NULL, "SQL"=NULL, SQL_EXTRA_KEY=NULL, SCRIPT='if (!isEmpty(B_ACCT_TYPE) && B_ACCT_TYPE == "R2") {
    if (isEmpty(C_FLAG)) {
        return true
    }
    return false
}
return true', BEAN=NULL, CHECK_FLAG=NULL, CHECK_DESC=NULL, CHECK_ERR_TYPE=NULL, NEXT_ACTION=NULL, DATA_STATUS=NULL, DATA_FLAG=NULL, DATA_OP=NULL, DATA_SOURCE=NULL, DATA_VERSION=NULL, DATA_REJ_DESC=NULL, DATA_DEL_DESC=NULL, DATA_CRT_USER=NULL, DATA_CRT_DATE=NULL, DATA_CRT_TIME=NULL, DATA_CHG_USER=NULL, DATA_CHG_DATE=NULL, DATA_CHG_TIME=NULL, DATA_APV_USER=NULL, DATA_APV_DATE=NULL, DATA_APV_TIME=NULL, RSV1='d73b4f4e0cb94a119aa2f4f3c4a18df5', RSV2=NULL, RSV3=NULL, RSV4='mbtrule', RSV5='1' WHERE DATA_ID='MBT_210S210010114S210010103S210010112';
UPDATE GP_QC_RULE SET DATA_DATE='20190620', CORP_ID='TESTCORP', ORG_ID='72', GROUP_ID='002', INQ_ORG_ID=NULL, INQ_GROUP_ID=NULL, RULE_DESC='若账户类型为“R2”时，基本信息段中的“还款方式”字段不适用于此类账户。', RULE_MESSAGE='若账户类型为“R2”时，基本信息段中的“还款方式”字段不适用于此类账户。', RULE_TYPE=NULL, RULE_SOURCE='BUSI', FIELD='DATA_ID', FIELD_NAME=NULL, TRIMMABLE=NULL, NULLABLE='Y', TYPE_ID=NULL, ENCODING=NULL, MIN_LENGTH=NULL, MAX_LENGTH=NULL, MIN_VALUE=NULL, MAX_VALUE=NULL, MAX_PRECISION=NULL, MIN_SCALE=NULL, MAX_SCALE=NULL, ENUMERATION=NULL, PATTERN=NULL, IN_ENTITY=NULL, IN_FIELD=NULL, "SQL"=NULL, SQL_EXTRA_KEY=NULL, SCRIPT='if (!isEmpty(B_ACCT_TYPE) && B_ACCT_TYPE == "R2") {
    if (isEmpty(C_REPAY_MODE)) {
        return true
    }
    return false
}
return true', BEAN=NULL, CHECK_FLAG=NULL, CHECK_DESC=NULL, CHECK_ERR_TYPE=NULL, NEXT_ACTION=NULL, DATA_STATUS=NULL, DATA_FLAG=NULL, DATA_OP=NULL, DATA_SOURCE=NULL, DATA_VERSION=NULL, DATA_REJ_DESC=NULL, DATA_DEL_DESC=NULL, DATA_CRT_USER=NULL, DATA_CRT_DATE=NULL, DATA_CRT_TIME=NULL, DATA_CHG_USER=NULL, DATA_CHG_DATE=NULL, DATA_CHG_TIME=NULL, DATA_APV_USER=NULL, DATA_APV_DATE=NULL, DATA_APV_TIME=NULL, RSV1='be6325caeeb54b4e8ea6430e67ff4b34', RSV2=NULL, RSV3=NULL, RSV4='mbtrule', RSV5='1' WHERE DATA_ID='MBT_210S210010126S210010103S210010120';
UPDATE GP_QC_RULE SET DATA_DATE='20190620', CORP_ID='TESTCORP', ORG_ID='72', GROUP_ID='002', INQ_ORG_ID=NULL, INQ_GROUP_ID=NULL, RULE_DESC='若账户类型为“R2”时，基本信息段中的“还款频率”字段不适用于此类账户。', RULE_MESSAGE='若账户类型为“R2”时，基本信息段中的“还款频率”字段不适用于此类账户。', RULE_TYPE=NULL, RULE_SOURCE='BUSI', FIELD='DATA_ID', FIELD_NAME=NULL, TRIMMABLE=NULL, NULLABLE='Y', TYPE_ID=NULL, ENCODING=NULL, MIN_LENGTH=NULL, MAX_LENGTH=NULL, MIN_VALUE=NULL, MAX_VALUE=NULL, MAX_PRECISION=NULL, MIN_SCALE=NULL, MAX_SCALE=NULL, ENUMERATION=NULL, PATTERN=NULL, IN_ENTITY=NULL, IN_FIELD=NULL, "SQL"=NULL, SQL_EXTRA_KEY=NULL, SCRIPT='if (!isEmpty(B_ACCT_TYPE) && B_ACCT_TYPE == "R2") {
    if (isEmpty(C_REPAY_FREQCY)) {
        return true
    }
    return false
}
return true', BEAN=NULL, CHECK_FLAG=NULL, CHECK_DESC=NULL, CHECK_ERR_TYPE=NULL, NEXT_ACTION=NULL, DATA_STATUS=NULL, DATA_FLAG=NULL, DATA_OP=NULL, DATA_SOURCE=NULL, DATA_VERSION=NULL, DATA_REJ_DESC=NULL, DATA_DEL_DESC=NULL, DATA_CRT_USER=NULL, DATA_CRT_DATE=NULL, DATA_CRT_TIME=NULL, DATA_CHG_USER=NULL, DATA_CHG_DATE=NULL, DATA_CHG_TIME=NULL, DATA_APV_USER=NULL, DATA_APV_DATE=NULL, DATA_APV_TIME=NULL, RSV1='fbb54355872f4f4a90bbd6dfbbcf87ff', RSV2=NULL, RSV3=NULL, RSV4='mbtrule', RSV5='1' WHERE DATA_ID='MBT_210S210010132S210010103S210010124';
UPDATE GP_QC_RULE SET DATA_DATE='20190620', CORP_ID='TESTCORP', ORG_ID='72', GROUP_ID='002', INQ_ORG_ID=NULL, INQ_GROUP_ID=NULL, RULE_DESC='若账户类型为“R1”时，基本信息段中的“还款期数”字段不适用于此类账户。', RULE_MESSAGE='若账户类型为“R1”时，基本信息段中的“还款期数”字段不适用于此类账户。', RULE_TYPE=NULL, RULE_SOURCE='BUSI', FIELD='DATA_ID', FIELD_NAME=NULL, TRIMMABLE=NULL, NULLABLE='Y', TYPE_ID=NULL, ENCODING=NULL, MIN_LENGTH=NULL, MAX_LENGTH=NULL, MIN_VALUE=NULL, MAX_VALUE=NULL, MAX_PRECISION=NULL, MIN_SCALE=NULL, MAX_SCALE=NULL, ENUMERATION=NULL, PATTERN=NULL, IN_ENTITY=NULL, IN_FIELD=NULL, "SQL"=NULL, SQL_EXTRA_KEY=NULL, SCRIPT='if (!isEmpty(B_ACCT_TYPE) && B_ACCT_TYPE == "R1") {
    if (isEmpty(C_REPAY_PRD)) {
        return true
    }
    return false
}
return true', BEAN=NULL, CHECK_FLAG=NULL, CHECK_DESC=NULL, CHECK_ERR_TYPE=NULL, NEXT_ACTION=NULL, DATA_STATUS=NULL, DATA_FLAG=NULL, DATA_OP=NULL, DATA_SOURCE=NULL, DATA_VERSION=NULL, DATA_REJ_DESC=NULL, DATA_DEL_DESC=NULL, DATA_CRT_USER=NULL, DATA_CRT_DATE=NULL, DATA_CRT_TIME=NULL, DATA_CHG_USER=NULL, DATA_CHG_DATE=NULL, DATA_CHG_TIME=NULL, DATA_APV_USER=NULL, DATA_APV_DATE=NULL, DATA_APV_TIME=NULL, RSV1='65001db8d52a4d369126a3fc503331a9', RSV2=NULL, RSV3=NULL, RSV4='mbtrule', RSV5='1' WHERE DATA_ID='MBT_210S210010137S210010101S210010128';
UPDATE GP_QC_RULE SET DATA_DATE='20190620', CORP_ID='TESTCORP', ORG_ID='72', GROUP_ID='002', INQ_ORG_ID=NULL, INQ_GROUP_ID=NULL, RULE_DESC='对于 C1 外的其他账户，非月度表现中的“账户状态”不应为“关闭”或“销户”。', RULE_MESSAGE='对于 C1 外的其他账户，非月度表现中的“账户状态”不应为“关闭”或“销户”。', RULE_TYPE=NULL, RULE_SOURCE='BUSI', FIELD='DATA_ID', FIELD_NAME=NULL, TRIMMABLE=NULL, NULLABLE='Y', TYPE_ID=NULL, ENCODING=NULL, MIN_LENGTH=NULL, MAX_LENGTH=NULL, MIN_VALUE=NULL, MAX_VALUE=NULL, MAX_PRECISION=NULL, MIN_SCALE=NULL, MAX_SCALE=NULL, ENUMERATION=NULL, PATTERN=NULL, IN_ENTITY=NULL, IN_FIELD=NULL, "SQL"=NULL, SQL_EXTRA_KEY=NULL, SCRIPT='if (!isEmpty(B_ACCT_TYPE) && B_ACCT_TYPE != "C1") {
    if (J_ACCT_STATUS != "3" && J_ACCT_STATUS != "4") {
        return true
    }
    return false
}
return true', BEAN=NULL, CHECK_FLAG=NULL, CHECK_DESC=NULL, CHECK_ERR_TYPE=NULL, NEXT_ACTION=NULL, DATA_STATUS=NULL, DATA_FLAG=NULL, DATA_OP=NULL, DATA_SOURCE=NULL, DATA_VERSION=NULL, DATA_REJ_DESC=NULL, DATA_DEL_DESC=NULL, DATA_CRT_USER=NULL, DATA_CRT_DATE=NULL, DATA_CRT_TIME=NULL, DATA_CHG_USER=NULL, DATA_CHG_DATE=NULL, DATA_CHG_TIME=NULL, DATA_APV_USER=NULL, DATA_APV_DATE=NULL, DATA_APV_TIME=NULL, RSV1='059c792a718a4ad6b632dabd12153d60', RSV2=NULL, RSV3=NULL, RSV4='mbtrule', RSV5='1' WHERE DATA_ID='MBT_210I2100A16I2100A1601I2100A1602';
UPDATE GP_QC_RULE SET DATA_DATE='20190624', CORP_ID='TESTCORP', ORG_ID='72', GROUP_ID='002', INQ_ORG_ID=NULL, INQ_GROUP_ID=NULL, RULE_DESC='当“账户类型”为“R4”，“剩余还款月数”为空', RULE_MESSAGE='当“账户类型”为“R4”，“剩余还款月数”为空', RULE_TYPE=NULL, RULE_SOURCE='BUSI', FIELD='DATA_ID', FIELD_NAME=NULL, TRIMMABLE=NULL, NULLABLE='Y', TYPE_ID=NULL, ENCODING=NULL, MIN_LENGTH=NULL, MAX_LENGTH=NULL, MIN_VALUE=NULL, MAX_VALUE=NULL, MAX_PRECISION=NULL, MIN_SCALE=NULL, MAX_SCALE=NULL, ENUMERATION=NULL, PATTERN=NULL, IN_ENTITY=NULL, IN_FIELD=NULL, "SQL"=NULL, SQL_EXTRA_KEY=NULL, SCRIPT='if (!isEmpty(B_ACCT_TYPE) && B_ACCT_TYPE == "R4") {
    if (isEmpty(H_PYMT_PRD)) {
        return true
    }
    return false
}
return true', BEAN=NULL, CHECK_FLAG=NULL, CHECK_DESC=NULL, CHECK_ERR_TYPE=NULL, NEXT_ACTION=NULL, DATA_STATUS=NULL, DATA_FLAG=NULL, DATA_OP=NULL, DATA_SOURCE=NULL, DATA_VERSION=NULL, DATA_REJ_DESC=NULL, DATA_DEL_DESC=NULL, DATA_CRT_USER=NULL, DATA_CRT_DATE=NULL, DATA_CRT_TIME=NULL, DATA_CHG_USER=NULL, DATA_CHG_DATE=NULL, DATA_CHG_TIME=NULL, DATA_APV_USER=NULL, DATA_APV_DATE=NULL, DATA_APV_TIME=NULL, RSV1='c8ec433c40bd4b02b7974aa71f1b12d1', RSV2=NULL, RSV3=NULL, RSV4='mbtrule', RSV5='1' WHERE DATA_ID='MBT_410S4100139S410013903S410013902';
UPDATE GP_QC_RULE SET DATA_DATE='20190624', CORP_ID='TESTCORP', ORG_ID='72', GROUP_ID='002', INQ_ORG_ID=NULL, INQ_GROUP_ID=NULL, RULE_DESC='当“账户类型”为“D1”，“当前逾期总额”不能为空', RULE_MESSAGE='当“账户类型”为“D1”，“当前逾期总额”不能为空', RULE_TYPE=NULL, RULE_SOURCE='BUSI', FIELD='DATA_ID', FIELD_NAME=NULL, TRIMMABLE=NULL, NULLABLE='Y', TYPE_ID=NULL, ENCODING=NULL, MIN_LENGTH=NULL, MAX_LENGTH=NULL, MIN_VALUE=NULL, MAX_VALUE=NULL, MAX_PRECISION=NULL, MIN_SCALE=NULL, MAX_SCALE=NULL, ENUMERATION=NULL, PATTERN=NULL, IN_ENTITY=NULL, IN_FIELD=NULL, "SQL"=NULL, SQL_EXTRA_KEY=NULL, SCRIPT='if (!isEmpty(B_ACCT_TYPE) && B_ACCT_TYPE == "D1") {
    if (!isEmpty(H_TOT_OVERD)) {
        return true
    }
    return false
}
return true', BEAN=NULL, CHECK_FLAG=NULL, CHECK_DESC=NULL, CHECK_ERR_TYPE=NULL, NEXT_ACTION=NULL, DATA_STATUS=NULL, DATA_FLAG=NULL, DATA_OP=NULL, DATA_SOURCE=NULL, DATA_VERSION=NULL, DATA_REJ_DESC=NULL, DATA_DEL_DESC=NULL, DATA_CRT_USER=NULL, DATA_CRT_DATE=NULL, DATA_CRT_TIME=NULL, DATA_CHG_USER=NULL, DATA_CHG_DATE=NULL, DATA_CHG_TIME=NULL, DATA_APV_USER=NULL, DATA_APV_DATE=NULL, DATA_APV_TIME=NULL, RSV1='79c73d085e3149e3a7ab4ec267fa8790', RSV2=NULL, RSV3=NULL, RSV4='mbtrule', RSV5='1' WHERE DATA_ID='MBT_410S4100141S410014101S410014102';
UPDATE GP_QC_RULE SET DATA_DATE='20190624', CORP_ID='TESTCORP', ORG_ID='72', GROUP_ID='002', INQ_ORG_ID=NULL, INQ_GROUP_ID=NULL, RULE_DESC='当“账户类型”为“C1”，“当前逾期总额”为空', RULE_MESSAGE='当“账户类型”为“C1”，“当前逾期总额”为空', RULE_TYPE=NULL, RULE_SOURCE='BUSI', FIELD='DATA_ID', FIELD_NAME=NULL, TRIMMABLE=NULL, NULLABLE='Y', TYPE_ID=NULL, ENCODING=NULL, MIN_LENGTH=NULL, MAX_LENGTH=NULL, MIN_VALUE=NULL, MAX_VALUE=NULL, MAX_PRECISION=NULL, MIN_SCALE=NULL, MAX_SCALE=NULL, ENUMERATION=NULL, PATTERN=NULL, IN_ENTITY=NULL, IN_FIELD=NULL, "SQL"=NULL, SQL_EXTRA_KEY=NULL, SCRIPT='if (!isEmpty(B_ACCT_TYPE) && B_ACCT_TYPE == "C1") {
    if (isEmpty(H_TOT_OVERD)) {
        return true
    }
    return false
}
return true', BEAN=NULL, CHECK_FLAG=NULL, CHECK_DESC=NULL, CHECK_ERR_TYPE=NULL, NEXT_ACTION=NULL, DATA_STATUS=NULL, DATA_FLAG=NULL, DATA_OP=NULL, DATA_SOURCE=NULL, DATA_VERSION=NULL, DATA_REJ_DESC=NULL, DATA_DEL_DESC=NULL, DATA_CRT_USER=NULL, DATA_CRT_DATE=NULL, DATA_CRT_TIME=NULL, DATA_CHG_USER=NULL, DATA_CHG_DATE=NULL, DATA_CHG_TIME=NULL, DATA_APV_USER=NULL, DATA_APV_DATE=NULL, DATA_APV_TIME=NULL, RSV1='ba9405c4722e4f8799a6d721d0d514d9', RSV2=NULL, RSV3=NULL, RSV4='mbtrule', RSV5='1' WHERE DATA_ID='MBT_410S4100142S410014201S410014202';
UPDATE GP_QC_RULE SET DATA_DATE='20190624', CORP_ID='TESTCORP', ORG_ID='72', GROUP_ID='002', INQ_ORG_ID=NULL, INQ_GROUP_ID=NULL, RULE_DESC='当“账户类型”为“R1”，“当前逾期本金”不能为空', RULE_MESSAGE='当“账户类型”为“R1”，“当前逾期本金”不能为空', RULE_TYPE=NULL, RULE_SOURCE='BUSI', FIELD='DATA_ID', FIELD_NAME=NULL, TRIMMABLE=NULL, NULLABLE='Y', TYPE_ID=NULL, ENCODING=NULL, MIN_LENGTH=NULL, MAX_LENGTH=NULL, MIN_VALUE=NULL, MAX_VALUE=NULL, MAX_PRECISION=NULL, MIN_SCALE=NULL, MAX_SCALE=NULL, ENUMERATION=NULL, PATTERN=NULL, IN_ENTITY=NULL, IN_FIELD=NULL, "SQL"=NULL, SQL_EXTRA_KEY=NULL, SCRIPT='if (!isEmpty(B_ACCT_TYPE) && B_ACCT_TYPE == "R1") {
    if (!isEmpty(H_OVERD_PRINC)) {
        return true
    }
    return false
}
return true', BEAN=NULL, CHECK_FLAG=NULL, CHECK_DESC=NULL, CHECK_ERR_TYPE=NULL, NEXT_ACTION=NULL, DATA_STATUS=NULL, DATA_FLAG=NULL, DATA_OP=NULL, DATA_SOURCE=NULL, DATA_VERSION=NULL, DATA_REJ_DESC=NULL, DATA_DEL_DESC=NULL, DATA_CRT_USER=NULL, DATA_CRT_DATE=NULL, DATA_CRT_TIME=NULL, DATA_CHG_USER=NULL, DATA_CHG_DATE=NULL, DATA_CHG_TIME=NULL, DATA_APV_USER=NULL, DATA_APV_DATE=NULL, DATA_APV_TIME=NULL, RSV1='526e3f5f92a2494d8b7cb18b512db291', RSV2=NULL, RSV3=NULL, RSV4='mbtrule', RSV5='1' WHERE DATA_ID='MBT_410S4100143S410014307S410014302';
UPDATE GP_QC_RULE SET DATA_DATE='20190624', CORP_ID='TESTCORP', ORG_ID='72', GROUP_ID='002', INQ_ORG_ID=NULL, INQ_GROUP_ID=NULL, RULE_DESC='当“账户类型”为“D2”，“当前逾期天数”不能为空', RULE_MESSAGE='当“账户类型”为“D2”，“当前逾期天数”不能为空', RULE_TYPE=NULL, RULE_SOURCE='BUSI', FIELD='DATA_ID', FIELD_NAME=NULL, TRIMMABLE=NULL, NULLABLE='Y', TYPE_ID=NULL, ENCODING=NULL, MIN_LENGTH=NULL, MAX_LENGTH=NULL, MIN_VALUE=NULL, MAX_VALUE=NULL, MAX_PRECISION=NULL, MIN_SCALE=NULL, MAX_SCALE=NULL, ENUMERATION=NULL, PATTERN=NULL, IN_ENTITY=NULL, IN_FIELD=NULL, "SQL"=NULL, SQL_EXTRA_KEY=NULL, SCRIPT='if (!isEmpty(B_ACCT_TYPE) && B_ACCT_TYPE == "D2") {
    if (!isEmpty(H_OVERD_DY)) {
        return true
    }
    return false
}
return true', BEAN=NULL, CHECK_FLAG=NULL, CHECK_DESC=NULL, CHECK_ERR_TYPE=NULL, NEXT_ACTION=NULL, DATA_STATUS=NULL, DATA_FLAG=NULL, DATA_OP=NULL, DATA_SOURCE=NULL, DATA_VERSION=NULL, DATA_REJ_DESC=NULL, DATA_DEL_DESC=NULL, DATA_CRT_USER=NULL, DATA_CRT_DATE=NULL, DATA_CRT_TIME=NULL, DATA_CHG_USER=NULL, DATA_CHG_DATE=NULL, DATA_CHG_TIME=NULL, DATA_APV_USER=NULL, DATA_APV_DATE=NULL, DATA_APV_TIME=NULL, RSV1='fea452d5759747858a3efd60d7a9df13', RSV2=NULL, RSV3=NULL, RSV4='mbtrule', RSV5='1' WHERE DATA_ID='MBT_410S4100145S410014505S410014502';
UPDATE GP_QC_RULE SET DATA_DATE='20190620', CORP_ID='TESTCORP', ORG_ID='72', GROUP_ID='002', INQ_ORG_ID=NULL, INQ_GROUP_ID=NULL, RULE_DESC='若账户类型为“C1”时，基本信息段中的“信用额度”字段不适用于此类账户。', RULE_MESSAGE='若账户类型为“C1”时，基本信息段中的“信用额度”字段不适用于此类账户。', RULE_TYPE=NULL, RULE_SOURCE='BUSI', FIELD='DATA_ID', FIELD_NAME=NULL, TRIMMABLE=NULL, NULLABLE='Y', TYPE_ID=NULL, ENCODING=NULL, MIN_LENGTH=NULL, MAX_LENGTH=NULL, MIN_VALUE=NULL, MAX_VALUE=NULL, MAX_PRECISION=NULL, MIN_SCALE=NULL, MAX_SCALE=NULL, ENUMERATION=NULL, PATTERN=NULL, IN_ENTITY=NULL, IN_FIELD=NULL, "SQL"=NULL, SQL_EXTRA_KEY=NULL, SCRIPT='if (!isEmpty(B_ACCT_TYPE) && B_ACCT_TYPE == "C1") {
    if (isEmpty(C_ACCT_CRED_LINE_AMT)) {
        return true
    }
    return false
}
return true', BEAN=NULL, CHECK_FLAG=NULL, CHECK_DESC=NULL, CHECK_ERR_TYPE=NULL, NEXT_ACTION=NULL, DATA_STATUS=NULL, DATA_FLAG=NULL, DATA_OP=NULL, DATA_SOURCE=NULL, DATA_VERSION=NULL, DATA_REJ_DESC=NULL, DATA_DEL_DESC=NULL, DATA_CRT_USER=NULL, DATA_CRT_DATE=NULL, DATA_CRT_TIME=NULL, DATA_CHG_USER=NULL, DATA_CHG_DATE=NULL, DATA_CHG_TIME=NULL, DATA_APV_USER=NULL, DATA_APV_DATE=NULL, DATA_APV_TIME=NULL, RSV1='391a691df2274e829dfacba8dfd00766', RSV2=NULL, RSV3=NULL, RSV4='mbtrule', RSV5='1' WHERE DATA_ID='MBT_210S210010106S210010111S210010104';
UPDATE GP_QC_RULE SET DATA_DATE='20190620', CORP_ID='TESTCORP', ORG_ID='72', GROUP_ID='002', INQ_ORG_ID=NULL, INQ_GROUP_ID=NULL, RULE_DESC='若账户类型为“C1”时，基本信息段中的“还款频率”字段不适用于此类账户。', RULE_MESSAGE='若账户类型为“C1”时，基本信息段中的“还款频率”字段不适用于此类账户。', RULE_TYPE=NULL, RULE_SOURCE='BUSI', FIELD='DATA_ID', FIELD_NAME=NULL, TRIMMABLE=NULL, NULLABLE='Y', TYPE_ID=NULL, ENCODING=NULL, MIN_LENGTH=NULL, MAX_LENGTH=NULL, MIN_VALUE=NULL, MAX_VALUE=NULL, MAX_PRECISION=NULL, MIN_SCALE=NULL, MAX_SCALE=NULL, ENUMERATION=NULL, PATTERN=NULL, IN_ENTITY=NULL, IN_FIELD=NULL, "SQL"=NULL, SQL_EXTRA_KEY=NULL, SCRIPT='if (!isEmpty(B_ACCT_TYPE) && B_ACCT_TYPE == "C1") {
    if (isEmpty(C_REPAY_FREQCY)) {
        return true
    }
    return false
}
return true', BEAN=NULL, CHECK_FLAG=NULL, CHECK_DESC=NULL, CHECK_ERR_TYPE=NULL, NEXT_ACTION=NULL, DATA_STATUS=NULL, DATA_FLAG=NULL, DATA_OP=NULL, DATA_SOURCE=NULL, DATA_VERSION=NULL, DATA_REJ_DESC=NULL, DATA_DEL_DESC=NULL, DATA_CRT_USER=NULL, DATA_CRT_DATE=NULL, DATA_CRT_TIME=NULL, DATA_CHG_USER=NULL, DATA_CHG_DATE=NULL, DATA_CHG_TIME=NULL, DATA_APV_USER=NULL, DATA_APV_DATE=NULL, DATA_APV_TIME=NULL, RSV1='0b57e57fdfae429994efd2baf71d856a', RSV2=NULL, RSV3=NULL, RSV4='mbtrule', RSV5='1' WHERE DATA_ID='MBT_210S210010136S210010111S210010124';
UPDATE GP_QC_RULE SET DATA_DATE='20190620', CORP_ID='TESTCORP', ORG_ID='72', GROUP_ID='002', INQ_ORG_ID=NULL, INQ_GROUP_ID=NULL, RULE_DESC='若账户类型为“C1”时，基本信息段中的“其他还款保证方式”字段不适用于此类账户。', RULE_MESSAGE='若账户类型为“C1”时，基本信息段中的“其他还款保证方式”字段不适用于此类账户。', RULE_TYPE=NULL, RULE_SOURCE='BUSI', FIELD='DATA_ID', FIELD_NAME=NULL, TRIMMABLE=NULL, NULLABLE='Y', TYPE_ID=NULL, ENCODING=NULL, MIN_LENGTH=NULL, MAX_LENGTH=NULL, MIN_VALUE=NULL, MAX_VALUE=NULL, MAX_PRECISION=NULL, MIN_SCALE=NULL, MAX_SCALE=NULL, ENUMERATION=NULL, PATTERN=NULL, IN_ENTITY=NULL, IN_FIELD=NULL, "SQL"=NULL, SQL_EXTRA_KEY=NULL, SCRIPT='if (!isEmpty(B_ACCT_TYPE) && B_ACCT_TYPE == "C1") {
    if (isEmpty(C_OTH_REPY_GUAR_WAY)) {
        return true
    }
    return false
}
return true', BEAN=NULL, CHECK_FLAG=NULL, CHECK_DESC=NULL, CHECK_ERR_TYPE=NULL, NEXT_ACTION=NULL, DATA_STATUS=NULL, DATA_FLAG=NULL, DATA_OP=NULL, DATA_SOURCE=NULL, DATA_VERSION=NULL, DATA_REJ_DESC=NULL, DATA_DEL_DESC=NULL, DATA_CRT_USER=NULL, DATA_CRT_DATE=NULL, DATA_CRT_TIME=NULL, DATA_CHG_USER=NULL, DATA_CHG_DATE=NULL, DATA_CHG_TIME=NULL, DATA_APV_USER=NULL, DATA_APV_DATE=NULL, DATA_APV_TIME=NULL, RSV1='8c71fe16b5454bd38d15e975e8fae505', RSV2=NULL, RSV3=NULL, RSV4='mbtrule', RSV5='1' WHERE DATA_ID='MBT_210S210010160S210010111S210010140';
UPDATE GP_QC_RULE SET DATA_DATE='20190620', CORP_ID='TESTCORP', ORG_ID='72', GROUP_ID='002', INQ_ORG_ID=NULL, INQ_GROUP_ID=NULL, RULE_DESC='若账户类型为“D1”时，基本信息段中的“卡片标识号”字段不适用于此类账户。', RULE_MESSAGE='若账户类型为“D1”时，基本信息段中的“卡片标识号”字段不适用于此类账户。', RULE_TYPE=NULL, RULE_SOURCE='BUSI', FIELD='DATA_ID', FIELD_NAME=NULL, TRIMMABLE=NULL, NULLABLE='Y', TYPE_ID=NULL, ENCODING=NULL, MIN_LENGTH=NULL, MAX_LENGTH=NULL, MIN_VALUE=NULL, MAX_VALUE=NULL, MAX_PRECISION=NULL, MIN_SCALE=NULL, MAX_SCALE=NULL, ENUMERATION=NULL, PATTERN=NULL, IN_ENTITY=NULL, IN_FIELD=NULL, "SQL"=NULL, SQL_EXTRA_KEY=NULL, SCRIPT='if (!isEmpty(B_ACCT_TYPE) && B_ACCT_TYPE == "D1") {
    if (isEmpty(C_CREDIT_ID)) {
        return true
    }
    return false
}
return true', BEAN=NULL, CHECK_FLAG=NULL, CHECK_DESC=NULL, CHECK_ERR_TYPE=NULL, NEXT_ACTION=NULL, DATA_STATUS=NULL, DATA_FLAG=NULL, DATA_OP=NULL, DATA_SOURCE=NULL, DATA_VERSION=NULL, DATA_REJ_DESC=NULL, DATA_DEL_DESC=NULL, DATA_CRT_USER=NULL, DATA_CRT_DATE=NULL, DATA_CRT_TIME=NULL, DATA_CHG_USER=NULL, DATA_CHG_DATE=NULL, DATA_CHG_TIME=NULL, DATA_APV_USER=NULL, DATA_APV_DATE=NULL, DATA_APV_TIME=NULL, RSV1='60c207aa14c5472f9103fd89fa4b2a33', RSV2=NULL, RSV3=NULL, RSV4='mbtrule', RSV5='1' WHERE DATA_ID='MBT_210S210010183S210010109S210010156';
UPDATE GP_QC_RULE SET DATA_DATE='20190620', CORP_ID='TESTCORP', ORG_ID='72', GROUP_ID='002', INQ_ORG_ID=NULL, INQ_GROUP_ID=NULL, RULE_DESC='对于 D1/R1/R4 账户，信息记录中“当前逾期本金”必须小于等于“当前逾期总额”。', RULE_MESSAGE='对于 D1/R1/R4 账户，信息记录中“当前逾期本金”必须小于等于“当前逾期总额”。', RULE_TYPE=NULL, RULE_SOURCE='BUSI', FIELD='DATA_ID', FIELD_NAME=NULL, TRIMMABLE=NULL, NULLABLE='Y', TYPE_ID=NULL, ENCODING=NULL, MIN_LENGTH=NULL, MAX_LENGTH=NULL, MIN_VALUE=NULL, MAX_VALUE=NULL, MAX_PRECISION=NULL, MIN_SCALE=NULL, MAX_SCALE=NULL, ENUMERATION=NULL, PATTERN=NULL, IN_ENTITY=NULL, IN_FIELD=NULL, "SQL"=NULL, SQL_EXTRA_KEY=NULL, SCRIPT='if (!isEmpty(B_ACCT_TYPE) && (B_ACCT_TYPE == "D1" || B_ACCT_TYPE == "R1" || B_ACCT_TYPE == "R4")) {
    if (H_OVAER_PRINC.toBigDecimal()<=H_TOT_OVERD.toBigDecimal()) {
        return true
    }
    return false
}
return true', BEAN=NULL, CHECK_FLAG=NULL, CHECK_DESC=NULL, CHECK_ERR_TYPE=NULL, NEXT_ACTION=NULL, DATA_STATUS=NULL, DATA_FLAG=NULL, DATA_OP=NULL, DATA_SOURCE=NULL, DATA_VERSION=NULL, DATA_REJ_DESC=NULL, DATA_DEL_DESC=NULL, DATA_CRT_USER=NULL, DATA_CRT_DATE=NULL, DATA_CRT_TIME=NULL, DATA_CHG_USER=NULL, DATA_CHG_DATE=NULL, DATA_CHG_TIME=NULL, DATA_APV_USER=NULL, DATA_APV_DATE=NULL, DATA_APV_TIME=NULL, RSV1='6291fe8bdbf04d9f8c6206a97b3ae40d', RSV2=NULL, RSV3=NULL, RSV4='mbtrule', RSV5='1' WHERE DATA_ID='MBT_210I2100H10I2100H1001I2100H1002';
UPDATE GP_QC_RULE SET DATA_DATE='20190620', CORP_ID='TESTCORP', ORG_ID='72', GROUP_ID='002', INQ_ORG_ID=NULL, INQ_GROUP_ID=NULL, RULE_DESC='若账户类型为“D1”时，月度表现信息段中的“实际还款百分比”字段不适用于此类账户。', RULE_MESSAGE='若账户类型为“D1”时，月度表现信息段中的“实际还款百分比”字段不适用于此类账户。', RULE_TYPE=NULL, RULE_SOURCE='BUSI', FIELD='DATA_ID', FIELD_NAME=NULL, TRIMMABLE=NULL, NULLABLE='Y', TYPE_ID=NULL, ENCODING=NULL, MIN_LENGTH=NULL, MAX_LENGTH=NULL, MIN_VALUE=NULL, MAX_VALUE=NULL, MAX_PRECISION=NULL, MIN_SCALE=NULL, MAX_SCALE=NULL, ENUMERATION=NULL, PATTERN=NULL, IN_ENTITY=NULL, IN_FIELD=NULL, "SQL"=NULL, SQL_EXTRA_KEY=NULL, SCRIPT='if (!isEmpty(B_ACCT_TYPE) && B_ACCT_TYPE == "D1") {
    if (isEmpty(H_RPY_PRCT)) {
        return true
    }
    return false
}
return true', BEAN=NULL, CHECK_FLAG=NULL, CHECK_DESC=NULL, CHECK_ERR_TYPE=NULL, NEXT_ACTION=NULL, DATA_STATUS=NULL, DATA_FLAG=NULL, DATA_OP=NULL, DATA_SOURCE=NULL, DATA_VERSION=NULL, DATA_REJ_DESC=NULL, DATA_DEL_DESC=NULL, DATA_CRT_USER=NULL, DATA_CRT_DATE=NULL, DATA_CRT_TIME=NULL, DATA_CHG_USER=NULL, DATA_CHG_DATE=NULL, DATA_CHG_TIME=NULL, DATA_APV_USER=NULL, DATA_APV_DATE=NULL, DATA_APV_TIME=NULL, RSV1='6ecb81cf8b7448c4a9ec4e2dd7fb025d', RSV2=NULL, RSV3=NULL, RSV4='mbtrule', RSV5='1' WHERE DATA_ID='MBT_210S210010267S210010109S210010212';
UPDATE GP_QC_RULE SET DATA_DATE='20190620', CORP_ID='TESTCORP', ORG_ID='72', GROUP_ID='002', INQ_ORG_ID=NULL, INQ_GROUP_ID=NULL, RULE_DESC='若账户类型为“R3”时，月度表现信息段中的“当前逾期总额”字段不适用于此类账户。', RULE_MESSAGE='若账户类型为“R3”时，月度表现信息段中的“当前逾期总额”字段不适用于此类账户。', RULE_TYPE=NULL, RULE_SOURCE='BUSI', FIELD='DATA_ID', FIELD_NAME=NULL, TRIMMABLE=NULL, NULLABLE='Y', TYPE_ID=NULL, ENCODING=NULL, MIN_LENGTH=NULL, MAX_LENGTH=NULL, MIN_VALUE=NULL, MAX_VALUE=NULL, MAX_PRECISION=NULL, MIN_SCALE=NULL, MAX_SCALE=NULL, ENUMERATION=NULL, PATTERN=NULL, IN_ENTITY=NULL, IN_FIELD=NULL, "SQL"=NULL, SQL_EXTRA_KEY=NULL, SCRIPT='if (!isEmpty(B_ACCT_TYPE) && B_ACCT_TYPE == "R3") {
    if (isEmpty(H_TOT_OVERD)) {
        return true
    }
    return false
}
return true', BEAN=NULL, CHECK_FLAG=NULL, CHECK_DESC=NULL, CHECK_ERR_TYPE=NULL, NEXT_ACTION=NULL, DATA_STATUS=NULL, DATA_FLAG=NULL, DATA_OP=NULL, DATA_SOURCE=NULL, DATA_VERSION=NULL, DATA_REJ_DESC=NULL, DATA_DEL_DESC=NULL, DATA_CRT_USER=NULL, DATA_CRT_DATE=NULL, DATA_CRT_TIME=NULL, DATA_CHG_USER=NULL, DATA_CHG_DATE=NULL, DATA_CHG_TIME=NULL, DATA_APV_USER=NULL, DATA_APV_DATE=NULL, DATA_APV_TIME=NULL, RSV1='b45aca8c4d154bf4a141aa4c01d76410', RSV2=NULL, RSV3=NULL, RSV4='mbtrule', RSV5='1' WHERE DATA_ID='MBT_210S210010277S210010105S210010220';
UPDATE GP_QC_RULE SET DATA_DATE='20190620', CORP_ID='TESTCORP', ORG_ID='72', GROUP_ID='002', INQ_ORG_ID=NULL, INQ_GROUP_ID=NULL, RULE_DESC='若账户类型为“R2”时，月度表现信息段中的“当前逾期本金”字段不适用于此类账户。', RULE_MESSAGE='若账户类型为“R2”时，月度表现信息段中的“当前逾期本金”字段不适用于此类账户。', RULE_TYPE=NULL, RULE_SOURCE='BUSI', FIELD='DATA_ID', FIELD_NAME=NULL, TRIMMABLE=NULL, NULLABLE='Y', TYPE_ID=NULL, ENCODING=NULL, MIN_LENGTH=NULL, MAX_LENGTH=NULL, MIN_VALUE=NULL, MAX_VALUE=NULL, MAX_PRECISION=NULL, MIN_SCALE=NULL, MAX_SCALE=NULL, ENUMERATION=NULL, PATTERN=NULL, IN_ENTITY=NULL, IN_FIELD=NULL, "SQL"=NULL, SQL_EXTRA_KEY=NULL, SCRIPT='if (!isEmpty(B_ACCT_TYPE) && B_ACCT_TYPE == "R2") {
    if (isEmpty(H_OVAER_PRINC)) {
        return true
    }
    return false
}
return true', BEAN=NULL, CHECK_FLAG=NULL, CHECK_DESC=NULL, CHECK_ERR_TYPE=NULL, NEXT_ACTION=NULL, DATA_STATUS=NULL, DATA_FLAG=NULL, DATA_OP=NULL, DATA_SOURCE=NULL, DATA_VERSION=NULL, DATA_REJ_DESC=NULL, DATA_DEL_DESC=NULL, DATA_CRT_USER=NULL, DATA_CRT_DATE=NULL, DATA_CRT_TIME=NULL, DATA_CHG_USER=NULL, DATA_CHG_DATE=NULL, DATA_CHG_TIME=NULL, DATA_APV_USER=NULL, DATA_APV_DATE=NULL, DATA_APV_TIME=NULL, RSV1='8bd15b4dd4ad4abf85ff17fc31cf74d8', RSV2=NULL, RSV3=NULL, RSV4='mbtrule', RSV5='1' WHERE DATA_ID='MBT_210S210010282S210010103S210010224';
UPDATE GP_QC_RULE SET DATA_DATE='20190620', CORP_ID='TESTCORP', ORG_ID='72', GROUP_ID='002', INQ_ORG_ID=NULL, INQ_GROUP_ID=NULL, RULE_DESC='若账户类型为“R3”时，月度表现信息段中的“逾期 31-60 天未归还本金”字段不适用于此类账户。', RULE_MESSAGE='若账户类型为“R3”时，月度表现信息段中的“逾期 31-60 天未归还本金”字段不适用于此类账户。', RULE_TYPE=NULL, RULE_SOURCE='BUSI', FIELD='DATA_ID', FIELD_NAME=NULL, TRIMMABLE=NULL, NULLABLE='Y', TYPE_ID=NULL, ENCODING=NULL, MIN_LENGTH=NULL, MAX_LENGTH=NULL, MIN_VALUE=NULL, MAX_VALUE=NULL, MAX_PRECISION=NULL, MIN_SCALE=NULL, MAX_SCALE=NULL, ENUMERATION=NULL, PATTERN=NULL, IN_ENTITY=NULL, IN_FIELD=NULL, "SQL"=NULL, SQL_EXTRA_KEY=NULL, SCRIPT='if (!isEmpty(B_ACCT_TYPE) && B_ACCT_TYPE == "R3") {
    if (isEmpty(H_OVERD31_60PRINC)) {
        return true
    }
    return false
}
return true', BEAN=NULL, CHECK_FLAG=NULL, CHECK_DESC=NULL, CHECK_ERR_TYPE=NULL, NEXT_ACTION=NULL, DATA_STATUS=NULL, DATA_FLAG=NULL, DATA_OP=NULL, DATA_SOURCE=NULL, DATA_VERSION=NULL, DATA_REJ_DESC=NULL, DATA_DEL_DESC=NULL, DATA_CRT_USER=NULL, DATA_CRT_DATE=NULL, DATA_CRT_TIME=NULL, DATA_CHG_USER=NULL, DATA_CHG_DATE=NULL, DATA_CHG_TIME=NULL, DATA_APV_USER=NULL, DATA_APV_DATE=NULL, DATA_APV_TIME=NULL, RSV1='d2c0eaae7297466faa8d947012aeedf9', RSV2=NULL, RSV3=NULL, RSV4='mbtrule', RSV5='1' WHERE DATA_ID='MBT_210S210010289S210010105S210010228';
UPDATE GP_QC_RULE SET DATA_DATE='20190620', CORP_ID='TESTCORP', ORG_ID='72', GROUP_ID='002', INQ_ORG_ID=NULL, INQ_GROUP_ID=NULL, RULE_DESC='若账户类型为“C1”时，月度表现信息段中的“逾期 61-90 天未归还本金”字段不适用于此类模板。', RULE_MESSAGE='若账户类型为“C1”时，月度表现信息段中的“逾期 61-90 天未归还本金”字段不适用于此类模板。', RULE_TYPE=NULL, RULE_SOURCE='BUSI', FIELD='DATA_ID', FIELD_NAME=NULL, TRIMMABLE=NULL, NULLABLE='Y', TYPE_ID=NULL, ENCODING=NULL, MIN_LENGTH=NULL, MAX_LENGTH=NULL, MIN_VALUE=NULL, MAX_VALUE=NULL, MAX_PRECISION=NULL, MIN_SCALE=NULL, MAX_SCALE=NULL, ENUMERATION=NULL, PATTERN=NULL, IN_ENTITY=NULL, IN_FIELD=NULL, "SQL"=NULL, SQL_EXTRA_KEY=NULL, SCRIPT='if (!isEmpty(B_ACCT_TYPE) && B_ACCT_TYPE == "C1") {
    if (isEmpty(H_OVERD61_90PRINC)) {
        return true
    }
    return false
}
return true', BEAN=NULL, CHECK_FLAG=NULL, CHECK_DESC=NULL, CHECK_ERR_TYPE=NULL, NEXT_ACTION=NULL, DATA_STATUS=NULL, DATA_FLAG=NULL, DATA_OP=NULL, DATA_SOURCE=NULL, DATA_VERSION=NULL, DATA_REJ_DESC=NULL, DATA_DEL_DESC=NULL, DATA_CRT_USER=NULL, DATA_CRT_DATE=NULL, DATA_CRT_TIME=NULL, DATA_CHG_USER=NULL, DATA_CHG_DATE=NULL, DATA_CHG_TIME=NULL, DATA_APV_USER=NULL, DATA_APV_DATE=NULL, DATA_APV_TIME=NULL, RSV1='ef32a2e7cccb4d1fbaf24f4d3dd7e425', RSV2=NULL, RSV3=NULL, RSV4='mbtrule', RSV5='1' WHERE DATA_ID='MBT_210S210010298S210010111S210010232';
UPDATE GP_QC_RULE SET DATA_DATE='20190620', CORP_ID='TESTCORP', ORG_ID='72', GROUP_ID='002', INQ_ORG_ID=NULL, INQ_GROUP_ID=NULL, RULE_DESC='若账户类型为“C1”时，非月度表现信息段中的“当前逾期期数”字段不适用于此类账户。', RULE_MESSAGE='若账户类型为“C1”时，非月度表现信息段中的“当前逾期期数”字段不适用于此类账户。', RULE_TYPE=NULL, RULE_SOURCE='BUSI', FIELD='DATA_ID', FIELD_NAME=NULL, TRIMMABLE=NULL, NULLABLE='Y', TYPE_ID=NULL, ENCODING=NULL, MIN_LENGTH=NULL, MAX_LENGTH=NULL, MIN_VALUE=NULL, MAX_VALUE=NULL, MAX_PRECISION=NULL, MIN_SCALE=NULL, MAX_SCALE=NULL, ENUMERATION=NULL, PATTERN=NULL, IN_ENTITY=NULL, IN_FIELD=NULL, "SQL"=NULL, SQL_EXTRA_KEY=NULL, SCRIPT='if (!isEmpty(B_ACCT_TYPE) && B_ACCT_TYPE == "C1") {
    if (isEmpty(J_OVERD_PRD)) {
        return true
    }
    return false
}
return true', BEAN=NULL, CHECK_FLAG=NULL, CHECK_DESC=NULL, CHECK_ERR_TYPE=NULL, NEXT_ACTION=NULL, DATA_STATUS=NULL, DATA_FLAG=NULL, DATA_OP=NULL, DATA_SOURCE=NULL, DATA_VERSION=NULL, DATA_REJ_DESC=NULL, DATA_DEL_DESC=NULL, DATA_CRT_USER=NULL, DATA_CRT_DATE=NULL, DATA_CRT_TIME=NULL, DATA_CHG_USER=NULL, DATA_CHG_DATE=NULL, DATA_CHG_TIME=NULL, DATA_APV_USER=NULL, DATA_APV_DATE=NULL, DATA_APV_TIME=NULL, RSV1='29b61a49e2a6441d95a632d2589b57ca', RSV2=NULL, RSV3=NULL, RSV4='mbtrule', RSV5='1' WHERE DATA_ID='MBT_210S210010352S210010111S210010266';
UPDATE GP_QC_RULE SET DATA_DATE='20190620', CORP_ID='TESTCORP', ORG_ID='72', GROUP_ID='002', INQ_ORG_ID=NULL, INQ_GROUP_ID=NULL, RULE_DESC='若账户类型为“C1”时，月度表现信息段中的“剩余还款期数”字段不适用于此类模板。', RULE_MESSAGE='若账户类型为“C1”时，月度表现信息段中的“剩余还款期数”字段不适用于此类模板。', RULE_TYPE=NULL, RULE_SOURCE='BUSI', FIELD='DATA_ID', FIELD_NAME=NULL, TRIMMABLE=NULL, NULLABLE='Y', TYPE_ID=NULL, ENCODING=NULL, MIN_LENGTH=NULL, MAX_LENGTH=NULL, MIN_VALUE=NULL, MAX_VALUE=NULL, MAX_PRECISION=NULL, MIN_SCALE=NULL, MAX_SCALE=NULL, ENUMERATION=NULL, PATTERN=NULL, IN_ENTITY=NULL, IN_FIELD=NULL, "SQL"=NULL, SQL_EXTRA_KEY=NULL, SCRIPT='if (!isEmpty(B_ACCT_TYPE) && B_ACCT_TYPE == "C1") {
    if (isEmpty(H_REM_REP_PRD)) {
        return true
    }
    return false
}
return true', BEAN=NULL, CHECK_FLAG=NULL, CHECK_DESC=NULL, CHECK_ERR_TYPE=NULL, NEXT_ACTION=NULL, DATA_STATUS=NULL, DATA_FLAG=NULL, DATA_OP=NULL, DATA_SOURCE=NULL, DATA_VERSION=NULL, DATA_REJ_DESC=NULL, DATA_DEL_DESC=NULL, DATA_CRT_USER=NULL, DATA_CRT_DATE=NULL, DATA_CRT_TIME=NULL, DATA_CHG_USER=NULL, DATA_CHG_DATE=NULL, DATA_CHG_TIME=NULL, DATA_APV_USER=NULL, DATA_APV_DATE=NULL, DATA_APV_TIME=NULL, RSV1='0fc078316f524bb7b5a187e665d7684b', RSV2=NULL, RSV3=NULL, RSV4='mbtrule', RSV5='1' WHERE DATA_ID='MBT_210S210010262S210010111S210010208';
UPDATE GP_QC_RULE SET DATA_DATE='20190620', CORP_ID='TESTCORP', ORG_ID='72', GROUP_ID='002', INQ_ORG_ID=NULL, INQ_GROUP_ID=NULL, RULE_DESC='若账户类型为“C1”时，月度表现信息段中的“逾期 180 天以上未归还本金”字段不适用于此类模板。', RULE_MESSAGE='若账户类型为“C1”时，月度表现信息段中的“逾期 180 天以上未归还本金”字段不适用于此类模板。', RULE_TYPE=NULL, RULE_SOURCE='BUSI', FIELD='DATA_ID', FIELD_NAME=NULL, TRIMMABLE=NULL, NULLABLE='Y', TYPE_ID=NULL, ENCODING=NULL, MIN_LENGTH=NULL, MAX_LENGTH=NULL, MIN_VALUE=NULL, MAX_VALUE=NULL, MAX_PRECISION=NULL, MIN_SCALE=NULL, MAX_SCALE=NULL, ENUMERATION=NULL, PATTERN=NULL, IN_ENTITY=NULL, IN_FIELD=NULL, "SQL"=NULL, SQL_EXTRA_KEY=NULL, SCRIPT='if (!isEmpty(B_ACCT_TYPE) && B_ACCT_TYPE == "C1") {
    if (isEmpty(H_OVERD_PRINC180)) {
        return true
    }
    return false
}
return true', BEAN=NULL, CHECK_FLAG=NULL, CHECK_DESC=NULL, CHECK_ERR_TYPE=NULL, NEXT_ACTION=NULL, DATA_STATUS=NULL, DATA_FLAG=NULL, DATA_OP=NULL, DATA_SOURCE=NULL, DATA_VERSION=NULL, DATA_REJ_DESC=NULL, DATA_DEL_DESC=NULL, DATA_CRT_USER=NULL, DATA_CRT_DATE=NULL, DATA_CRT_TIME=NULL, DATA_CHG_USER=NULL, DATA_CHG_DATE=NULL, DATA_CHG_TIME=NULL, DATA_APV_USER=NULL, DATA_APV_DATE=NULL, DATA_APV_TIME=NULL, RSV1='c9f915a09cae4abd80f6e100543be8c6', RSV2=NULL, RSV3=NULL, RSV4='mbtrule', RSV5='1' WHERE DATA_ID='MBT_210S210010310S210010111S210010238';
UPDATE GP_QC_RULE SET DATA_DATE='20190620', CORP_ID='TESTCORP', ORG_ID='72', GROUP_ID='002', INQ_ORG_ID=NULL, INQ_GROUP_ID=NULL, RULE_DESC='若账户类型为“D1”时，月度表现信息段中的“透支 180 天以上未还余额”字段不适用于此类账户。', RULE_MESSAGE='若账户类型为“D1”时，月度表现信息段中的“透支 180 天以上未还余额”字段不适用于此类账户。', RULE_TYPE=NULL, RULE_SOURCE='BUSI', FIELD='DATA_ID', FIELD_NAME=NULL, TRIMMABLE=NULL, NULLABLE='Y', TYPE_ID=NULL, ENCODING=NULL, MIN_LENGTH=NULL, MAX_LENGTH=NULL, MIN_VALUE=NULL, MAX_VALUE=NULL, MAX_PRECISION=NULL, MIN_SCALE=NULL, MAX_SCALE=NULL, ENUMERATION=NULL, PATTERN=NULL, IN_ENTITY=NULL, IN_FIELD=NULL, "SQL"=NULL, SQL_EXTRA_KEY=NULL, SCRIPT='if (!isEmpty(B_ACCT_TYPE) && B_ACCT_TYPE == "D1") {
    if (isEmpty(H_OVERD_RAW_BA_OVE180)) {
        return true
    }
    return false
}
return true', BEAN=NULL, CHECK_FLAG=NULL, CHECK_DESC=NULL, CHECK_ERR_TYPE=NULL, NEXT_ACTION=NULL, DATA_STATUS=NULL, DATA_FLAG=NULL, DATA_OP=NULL, DATA_SOURCE=NULL, DATA_VERSION=NULL, DATA_REJ_DESC=NULL, DATA_DEL_DESC=NULL, DATA_CRT_USER=NULL, DATA_CRT_DATE=NULL, DATA_CRT_TIME=NULL, DATA_CHG_USER=NULL, DATA_CHG_DATE=NULL, DATA_CHG_TIME=NULL, DATA_APV_USER=NULL, DATA_APV_DATE=NULL, DATA_APV_TIME=NULL, RSV1='90dd9cdd30494030b607f603e15ceae0', RSV2=NULL, RSV3=NULL, RSV4='mbtrule', RSV5='1' WHERE DATA_ID='MBT_210S210010315S210010109S210010242';
UPDATE GP_QC_RULE SET DATA_DATE='20190620', CORP_ID='TESTCORP', ORG_ID='72', GROUP_ID='002', INQ_ORG_ID=NULL, INQ_GROUP_ID=NULL, RULE_DESC='若账户类型为“C1”时，非月度表现信息段中的“当前逾期总额”字段不适用于此类账户。', RULE_MESSAGE='若账户类型为“C1”时，非月度表现信息段中的“当前逾期总额”字段不适用于此类账户。', RULE_TYPE=NULL, RULE_SOURCE='BUSI', FIELD='DATA_ID', FIELD_NAME=NULL, TRIMMABLE=NULL, NULLABLE='Y', TYPE_ID=NULL, ENCODING=NULL, MIN_LENGTH=NULL, MAX_LENGTH=NULL, MIN_VALUE=NULL, MAX_VALUE=NULL, MAX_PRECISION=NULL, MIN_SCALE=NULL, MAX_SCALE=NULL, ENUMERATION=NULL, PATTERN=NULL, IN_ENTITY=NULL, IN_FIELD=NULL, "SQL"=NULL, SQL_EXTRA_KEY=NULL, SCRIPT='if (!isEmpty(B_ACCT_TYPE) && B_ACCT_TYPE == "C1") {
    if (isEmpty(J_TOT_OVERD)) {
        return true
    }
    return false
}
return true', BEAN=NULL, CHECK_FLAG=NULL, CHECK_DESC=NULL, CHECK_ERR_TYPE=NULL, NEXT_ACTION=NULL, DATA_STATUS=NULL, DATA_FLAG=NULL, DATA_OP=NULL, DATA_SOURCE=NULL, DATA_VERSION=NULL, DATA_REJ_DESC=NULL, DATA_DEL_DESC=NULL, DATA_CRT_USER=NULL, DATA_CRT_DATE=NULL, DATA_CRT_TIME=NULL, DATA_CHG_USER=NULL, DATA_CHG_DATE=NULL, DATA_CHG_TIME=NULL, DATA_APV_USER=NULL, DATA_APV_DATE=NULL, DATA_APV_TIME=NULL, RSV1='4779492d26b14da1b6e64f923f708f6b', RSV2=NULL, RSV3=NULL, RSV4='mbtrule', RSV5='1' WHERE DATA_ID='MBT_210S210010358S210010111S210010272';
UPDATE GP_QC_RULE SET DATA_DATE='20190620', CORP_ID='TESTCORP', ORG_ID='72', GROUP_ID='002', INQ_ORG_ID=NULL, INQ_GROUP_ID=NULL, RULE_DESC='若账户类型为“D1”时，月度表现信息段中的“本期账单余额”字段不适用于此类账户。', RULE_MESSAGE='若账户类型为“D1”时，月度表现信息段中的“本期账单余额”字段不适用于此类账户。', RULE_TYPE=NULL, RULE_SOURCE='BUSI', FIELD='DATA_ID', FIELD_NAME=NULL, TRIMMABLE=NULL, NULLABLE='Y', TYPE_ID=NULL, ENCODING=NULL, MIN_LENGTH=NULL, MAX_LENGTH=NULL, MIN_VALUE=NULL, MAX_VALUE=NULL, MAX_PRECISION=NULL, MIN_SCALE=NULL, MAX_SCALE=NULL, ENUMERATION=NULL, PATTERN=NULL, IN_ENTITY=NULL, IN_FIELD=NULL, "SQL"=NULL, SQL_EXTRA_KEY=NULL, SCRIPT='if (!isEmpty(B_ACCT_TYPE) && B_ACCT_TYPE == "D1") {
    if (isEmpty(H_PRID_ACCT_BAL)) {
        return true
    }
    return false
}
return true', BEAN=NULL, CHECK_FLAG=NULL, CHECK_DESC=NULL, CHECK_ERR_TYPE=NULL, NEXT_ACTION=NULL, DATA_STATUS=NULL, DATA_FLAG=NULL, DATA_OP=NULL, DATA_SOURCE=NULL, DATA_VERSION=NULL, DATA_REJ_DESC=NULL, DATA_DEL_DESC=NULL, DATA_CRT_USER=NULL, DATA_CRT_DATE=NULL, DATA_CRT_TIME=NULL, DATA_CHG_USER=NULL, DATA_CHG_DATE=NULL, DATA_CHG_TIME=NULL, DATA_APV_USER=NULL, DATA_APV_DATE=NULL, DATA_APV_TIME=NULL, RSV1='ee0c02f405cd458b8bee74fc87e28e0c', RSV2=NULL, RSV3=NULL, RSV4='mbtrule', RSV5='1' WHERE DATA_ID='MBT_210S210010243S210010109S210010196';
UPDATE GP_QC_RULE SET DATA_DATE='20190620', CORP_ID='TESTCORP', ORG_ID='72', GROUP_ID='002', INQ_ORG_ID=NULL, INQ_GROUP_ID=NULL, RULE_DESC='对于除C1以外的其他账户，非月度表现信息段中的“最近一次实际还款日期”必须和“信息报告日期”保持一致。', RULE_MESSAGE='对于除C1以外的其他账户，非月度表现信息段中的“最近一次实际还款日期”必须和“信息报告日期”保持一致。', RULE_TYPE=NULL, RULE_SOURCE='BUSI', FIELD='DATA_ID', FIELD_NAME=NULL, TRIMMABLE=NULL, NULLABLE='Y', TYPE_ID=NULL, ENCODING=NULL, MIN_LENGTH=NULL, MAX_LENGTH=NULL, MIN_VALUE=NULL, MAX_VALUE=NULL, MAX_PRECISION=NULL, MIN_SCALE=NULL, MAX_SCALE=NULL, ENUMERATION=NULL, PATTERN=NULL, IN_ENTITY=NULL, IN_FIELD=NULL, "SQL"=NULL, SQL_EXTRA_KEY=NULL, SCRIPT='if (!isEmpty(B_ACCT_TYPE) && B_ACCT_TYPE != "C1" && !isEmpty(J_LAT_RPY_DATE)) {
    if (B_RPT_DATE == J_LAT_RPY_DATE) {
        return true
    }
    return false
}
return true', BEAN=NULL, CHECK_FLAG=NULL, CHECK_DESC=NULL, CHECK_ERR_TYPE=NULL, NEXT_ACTION=NULL, DATA_STATUS=NULL, DATA_FLAG=NULL, DATA_OP=NULL, DATA_SOURCE=NULL, DATA_VERSION=NULL, DATA_REJ_DESC=NULL, DATA_DEL_DESC=NULL, DATA_CRT_USER=NULL, DATA_CRT_DATE=NULL, DATA_CRT_TIME=NULL, DATA_CHG_USER=NULL, DATA_CHG_DATE=NULL, DATA_CHG_TIME=NULL, DATA_APV_USER=NULL, DATA_APV_DATE=NULL, DATA_APV_TIME=NULL, RSV1='847787c1358d4d558ec423aec4b1f889', RSV2=NULL, RSV3=NULL, RSV4='mbtrule', RSV5='1' WHERE DATA_ID='MBT_210I2100A14I2100A1401I2100A1402';
UPDATE GP_QC_RULE SET DATA_DATE='20190624', CORP_ID='TESTCORP', ORG_ID='72', GROUP_ID='002', INQ_ORG_ID=NULL, INQ_GROUP_ID=NULL, RULE_DESC='当“账户类型”为“C1”，“剩余还款月数”为空', RULE_MESSAGE='当“账户类型”为“C1”，“剩余还款月数”为空', RULE_TYPE=NULL, RULE_SOURCE='BUSI', FIELD='DATA_ID', FIELD_NAME=NULL, TRIMMABLE=NULL, NULLABLE='Y', TYPE_ID=NULL, ENCODING=NULL, MIN_LENGTH=NULL, MAX_LENGTH=NULL, MIN_VALUE=NULL, MAX_VALUE=NULL, MAX_PRECISION=NULL, MIN_SCALE=NULL, MAX_SCALE=NULL, ENUMERATION=NULL, PATTERN=NULL, IN_ENTITY=NULL, IN_FIELD=NULL, "SQL"=NULL, SQL_EXTRA_KEY=NULL, SCRIPT='if (!isEmpty(B_ACCT_TYPE) && B_ACCT_TYPE == "C1") {
    if (isEmpty(H_PYMT_PRD)) {
        return true
    }
    return false
}
return true', BEAN=NULL, CHECK_FLAG=NULL, CHECK_DESC=NULL, CHECK_ERR_TYPE=NULL, NEXT_ACTION=NULL, DATA_STATUS=NULL, DATA_FLAG=NULL, DATA_OP=NULL, DATA_SOURCE=NULL, DATA_VERSION=NULL, DATA_REJ_DESC=NULL, DATA_DEL_DESC=NULL, DATA_CRT_USER=NULL, DATA_CRT_DATE=NULL, DATA_CRT_TIME=NULL, DATA_CHG_USER=NULL, DATA_CHG_DATE=NULL, DATA_CHG_TIME=NULL, DATA_APV_USER=NULL, DATA_APV_DATE=NULL, DATA_APV_TIME=NULL, RSV1='44d01fdc5b8d4eea81b53f1f174603c2', RSV2=NULL, RSV3=NULL, RSV4='mbtrule', RSV5='1' WHERE DATA_ID='MBT_410S4100139S410013907S410013902';
UPDATE GP_QC_RULE SET DATA_DATE='20190624', CORP_ID='TESTCORP', ORG_ID='72', GROUP_ID='002', INQ_ORG_ID=NULL, INQ_GROUP_ID=NULL, RULE_DESC='当“账户类型”为“D2”，“当前逾期总额”不能为空', RULE_MESSAGE='当“账户类型”为“D2”，“当前逾期总额”不能为空', RULE_TYPE=NULL, RULE_SOURCE='BUSI', FIELD='DATA_ID', FIELD_NAME=NULL, TRIMMABLE=NULL, NULLABLE='Y', TYPE_ID=NULL, ENCODING=NULL, MIN_LENGTH=NULL, MAX_LENGTH=NULL, MIN_VALUE=NULL, MAX_VALUE=NULL, MAX_PRECISION=NULL, MIN_SCALE=NULL, MAX_SCALE=NULL, ENUMERATION=NULL, PATTERN=NULL, IN_ENTITY=NULL, IN_FIELD=NULL, "SQL"=NULL, SQL_EXTRA_KEY=NULL, SCRIPT='if (!isEmpty(B_ACCT_TYPE) && B_ACCT_TYPE == "D2") {
    if (!isEmpty(H_TOT_OVERD)) {
        return true
    }
    return false
}
return true', BEAN=NULL, CHECK_FLAG=NULL, CHECK_DESC=NULL, CHECK_ERR_TYPE=NULL, NEXT_ACTION=NULL, DATA_STATUS=NULL, DATA_FLAG=NULL, DATA_OP=NULL, DATA_SOURCE=NULL, DATA_VERSION=NULL, DATA_REJ_DESC=NULL, DATA_DEL_DESC=NULL, DATA_CRT_USER=NULL, DATA_CRT_DATE=NULL, DATA_CRT_TIME=NULL, DATA_CHG_USER=NULL, DATA_CHG_DATE=NULL, DATA_CHG_TIME=NULL, DATA_APV_USER=NULL, DATA_APV_DATE=NULL, DATA_APV_TIME=NULL, RSV1='9611f75874fb496e8fb2608f81dcc6c8', RSV2=NULL, RSV3=NULL, RSV4='mbtrule', RSV5='1' WHERE DATA_ID='MBT_410S4100141S410014105S410014102';
UPDATE GP_QC_RULE SET DATA_DATE='20190624', CORP_ID='TESTCORP', ORG_ID='72', GROUP_ID='002', INQ_ORG_ID=NULL, INQ_GROUP_ID=NULL, RULE_DESC='当“账户类型”为“R4”，“当前逾期本金”不能为空', RULE_MESSAGE='当“账户类型”为“R4”，“当前逾期本金”不能为空', RULE_TYPE=NULL, RULE_SOURCE='BUSI', FIELD='DATA_ID', FIELD_NAME=NULL, TRIMMABLE=NULL, NULLABLE='Y', TYPE_ID=NULL, ENCODING=NULL, MIN_LENGTH=NULL, MAX_LENGTH=NULL, MIN_VALUE=NULL, MAX_VALUE=NULL, MAX_PRECISION=NULL, MIN_SCALE=NULL, MAX_SCALE=NULL, ENUMERATION=NULL, PATTERN=NULL, IN_ENTITY=NULL, IN_FIELD=NULL, "SQL"=NULL, SQL_EXTRA_KEY=NULL, SCRIPT='if (!isEmpty(B_ACCT_TYPE) && B_ACCT_TYPE == "R4") {
    if (!isEmpty(H_OVERD_PRINC)) {
        return true
    }
    return false
}
return true', BEAN=NULL, CHECK_FLAG=NULL, CHECK_DESC=NULL, CHECK_ERR_TYPE=NULL, NEXT_ACTION=NULL, DATA_STATUS=NULL, DATA_FLAG=NULL, DATA_OP=NULL, DATA_SOURCE=NULL, DATA_VERSION=NULL, DATA_REJ_DESC=NULL, DATA_DEL_DESC=NULL, DATA_CRT_USER=NULL, DATA_CRT_DATE=NULL, DATA_CRT_TIME=NULL, DATA_CHG_USER=NULL, DATA_CHG_DATE=NULL, DATA_CHG_TIME=NULL, DATA_APV_USER=NULL, DATA_APV_DATE=NULL, DATA_APV_TIME=NULL, RSV1='afd6a9d16c774571a52c73927b00a45f', RSV2=NULL, RSV3=NULL, RSV4='mbtrule', RSV5='1' WHERE DATA_ID='MBT_410S4100143S410014303S410014302';
UPDATE GP_QC_RULE SET DATA_DATE='20190624', CORP_ID='TESTCORP', ORG_ID='72', GROUP_ID='002', INQ_ORG_ID=NULL, INQ_GROUP_ID=NULL, RULE_DESC='当“账户类型”为“D1”，“当前逾期天数”不能为空', RULE_MESSAGE='当“账户类型”为“D1”，“当前逾期天数”不能为空', RULE_TYPE=NULL, RULE_SOURCE='BUSI', FIELD='DATA_ID', FIELD_NAME=NULL, TRIMMABLE=NULL, NULLABLE='Y', TYPE_ID=NULL, ENCODING=NULL, MIN_LENGTH=NULL, MAX_LENGTH=NULL, MIN_VALUE=NULL, MAX_VALUE=NULL, MAX_PRECISION=NULL, MIN_SCALE=NULL, MAX_SCALE=NULL, ENUMERATION=NULL, PATTERN=NULL, IN_ENTITY=NULL, IN_FIELD=NULL, "SQL"=NULL, SQL_EXTRA_KEY=NULL, SCRIPT='if (!isEmpty(B_ACCT_TYPE) && B_ACCT_TYPE == "D1") {
    if (!isEmpty(H_OVERD_DY)) {
        return true
    }
    return false
}
return true', BEAN=NULL, CHECK_FLAG=NULL, CHECK_DESC=NULL, CHECK_ERR_TYPE=NULL, NEXT_ACTION=NULL, DATA_STATUS=NULL, DATA_FLAG=NULL, DATA_OP=NULL, DATA_SOURCE=NULL, DATA_VERSION=NULL, DATA_REJ_DESC=NULL, DATA_DEL_DESC=NULL, DATA_CRT_USER=NULL, DATA_CRT_DATE=NULL, DATA_CRT_TIME=NULL, DATA_CHG_USER=NULL, DATA_CHG_DATE=NULL, DATA_CHG_TIME=NULL, DATA_APV_USER=NULL, DATA_APV_DATE=NULL, DATA_APV_TIME=NULL, RSV1='3113154895ff48d5a48c2e6c4288c40f', RSV2=NULL, RSV3=NULL, RSV4='mbtrule', RSV5='1' WHERE DATA_ID='MBT_410S4100145S410014501S410014502';
UPDATE GP_QC_RULE SET DATA_DATE='20190624', CORP_ID='TESTCORP', ORG_ID='72', GROUP_ID='002', INQ_ORG_ID=NULL, INQ_GROUP_ID=NULL, RULE_DESC='当“账户类型”为“C1”，“当前逾期天数”为空', RULE_MESSAGE='当“账户类型”为“C1”，“当前逾期天数”为空', RULE_TYPE=NULL, RULE_SOURCE='BUSI', FIELD='DATA_ID', FIELD_NAME=NULL, TRIMMABLE=NULL, NULLABLE='Y', TYPE_ID=NULL, ENCODING=NULL, MIN_LENGTH=NULL, MAX_LENGTH=NULL, MIN_VALUE=NULL, MAX_VALUE=NULL, MAX_PRECISION=NULL, MIN_SCALE=NULL, MAX_SCALE=NULL, ENUMERATION=NULL, PATTERN=NULL, IN_ENTITY=NULL, IN_FIELD=NULL, "SQL"=NULL, SQL_EXTRA_KEY=NULL, SCRIPT='if (!isEmpty(B_ACCT_TYPE) && B_ACCT_TYPE == "C1") {
    if (isEmpty(H_OVERD_DY)) {
        return true
    }
    return false
}
return true', BEAN=NULL, CHECK_FLAG=NULL, CHECK_DESC=NULL, CHECK_ERR_TYPE=NULL, NEXT_ACTION=NULL, DATA_STATUS=NULL, DATA_FLAG=NULL, DATA_OP=NULL, DATA_SOURCE=NULL, DATA_VERSION=NULL, DATA_REJ_DESC=NULL, DATA_DEL_DESC=NULL, DATA_CRT_USER=NULL, DATA_CRT_DATE=NULL, DATA_CRT_TIME=NULL, DATA_CHG_USER=NULL, DATA_CHG_DATE=NULL, DATA_CHG_TIME=NULL, DATA_APV_USER=NULL, DATA_APV_DATE=NULL, DATA_APV_TIME=NULL, RSV1='0c7628073333434b95cb907ac16aaaa2', RSV2=NULL, RSV3=NULL, RSV4='mbtrule', RSV5='1' WHERE DATA_ID='MBT_410S4100146S410014601S410014602';
UPDATE GP_QC_RULE SET DATA_DATE='20190620', CORP_ID='TESTCORP', ORG_ID='72', GROUP_ID='002', INQ_ORG_ID=NULL, INQ_GROUP_ID=NULL, RULE_DESC='若账户类型为“C1”时，基本信息段中的“业务申请地行政区划代码”字段不适用于此类账户。', RULE_MESSAGE='若账户类型为“C1”时，基本信息段中的“业务申请地行政区划代码”字段不适用于此类账户。', RULE_TYPE=NULL, RULE_SOURCE='BUSI', FIELD='DATA_ID', FIELD_NAME=NULL, TRIMMABLE=NULL, NULLABLE='Y', TYPE_ID=NULL, ENCODING=NULL, MIN_LENGTH=NULL, MAX_LENGTH=NULL, MIN_VALUE=NULL, MAX_VALUE=NULL, MAX_PRECISION=NULL, MIN_SCALE=NULL, MAX_SCALE=NULL, ENUMERATION=NULL, PATTERN=NULL, IN_ENTITY=NULL, IN_FIELD=NULL, "SQL"=NULL, SQL_EXTRA_KEY=NULL, SCRIPT='if (!isEmpty(B_ACCT_TYPE) && B_ACCT_TYPE == "C1") {
    if (isEmpty(MBT_210_C_APPLY_BUSI_DIST)) {
        return true
    }
    return false
}
return true', BEAN=NULL, CHECK_FLAG=NULL, CHECK_DESC=NULL, CHECK_ERR_TYPE=NULL, NEXT_ACTION=NULL, DATA_STATUS=NULL, DATA_FLAG=NULL, DATA_OP=NULL, DATA_SOURCE=NULL, DATA_VERSION=NULL, DATA_REJ_DESC=NULL, DATA_DEL_DESC=NULL, DATA_CRT_USER=NULL, DATA_CRT_DATE=NULL, DATA_CRT_TIME=NULL, DATA_CHG_USER=NULL, DATA_CHG_DATE=NULL, DATA_CHG_TIME=NULL, DATA_APV_USER=NULL, DATA_APV_DATE=NULL, DATA_APV_TIME=NULL, RSV1='ea8111c67e8f4b7187248050472e61a3', RSV2=NULL, RSV3=NULL, RSV4='mbtrule', RSV5='1' WHERE DATA_ID='MBT_210S210010148S210010111S210010132';
UPDATE GP_QC_RULE SET DATA_DATE='20190620', CORP_ID='TESTCORP', ORG_ID='72', GROUP_ID='002', INQ_ORG_ID=NULL, INQ_GROUP_ID=NULL, RULE_DESC='若账户类型为“C1”时，基本信息段中的“业务经营类型”字段不适用于此类账户。', RULE_MESSAGE='若账户类型为“C1”时，基本信息段中的“业务经营类型”字段不适用于此类账户。', RULE_TYPE=NULL, RULE_SOURCE='BUSI', FIELD='DATA_ID', FIELD_NAME=NULL, TRIMMABLE=NULL, NULLABLE='Y', TYPE_ID=NULL, ENCODING=NULL, MIN_LENGTH=NULL, MAX_LENGTH=NULL, MIN_VALUE=NULL, MAX_VALUE=NULL, MAX_PRECISION=NULL, MIN_SCALE=NULL, MAX_SCALE=NULL, ENUMERATION=NULL, PATTERN=NULL, IN_ENTITY=NULL, IN_FIELD=NULL, "SQL"=NULL, SQL_EXTRA_KEY=NULL, SCRIPT='if (!isEmpty(B_ACCT_TYPE) && B_ACCT_TYPE == "C1") {
    if (isEmpty(C_FUND_SOU)) {
        return true
    }
    return false
}
return true', BEAN=NULL, CHECK_FLAG=NULL, CHECK_DESC=NULL, CHECK_ERR_TYPE=NULL, NEXT_ACTION=NULL, DATA_STATUS=NULL, DATA_FLAG=NULL, DATA_OP=NULL, DATA_SOURCE=NULL, DATA_VERSION=NULL, DATA_REJ_DESC=NULL, DATA_DEL_DESC=NULL, DATA_CRT_USER=NULL, DATA_CRT_DATE=NULL, DATA_CRT_TIME=NULL, DATA_CHG_USER=NULL, DATA_CHG_DATE=NULL, DATA_CHG_TIME=NULL, DATA_APV_USER=NULL, DATA_APV_DATE=NULL, DATA_APV_TIME=NULL, RSV1='3328d5df80eb4f149e620d87ff9eb96b', RSV2=NULL, RSV3=NULL, RSV4='mbtrule', RSV5='1' WHERE DATA_ID='MBT_210S210010172S210010111S210010148';


UPDATE GP_QC_RULE SET DATA_DATE='20190624', CORP_ID='TESTCORP', ORG_ID='72', GROUP_ID='002', INQ_ORG_ID=NULL, INQ_GROUP_ID=NULL, RULE_DESC='当“账户类型”为“R1”，“责任人身份标识类别”不能为空', RULE_MESSAGE='当“账户类型”为“R1”，“责任人身份标识类别”不能为空', RULE_TYPE=NULL, RULE_SOURCE='BUSI', FIELD='DATA_ID', FIELD_NAME=NULL, TRIMMABLE=NULL, NULLABLE='Y', TYPE_ID=NULL, ENCODING=NULL, MIN_LENGTH=NULL, MAX_LENGTH=NULL, MIN_VALUE=NULL, MAX_VALUE=NULL, MAX_PRECISION=NULL, MIN_SCALE=NULL, MAX_SCALE=NULL, ENUMERATION=NULL, PATTERN=NULL, IN_ENTITY=NULL, IN_FIELD=NULL, "SQL"=NULL, SQL_EXTRA_KEY=NULL, SCRIPT='if (!isEmpty(MBT_410_B_ACCT_TYPE) && MBT_410_B_ACCT_TYPE == "R1") {
    if (!isEmpty(D_ARLP_CERT_TYPE)) {
        return true
    }
    return false
}
return true', BEAN=NULL, CHECK_FLAG=NULL, CHECK_DESC=NULL, CHECK_ERR_TYPE=NULL, NEXT_ACTION=NULL, DATA_STATUS=NULL, DATA_FLAG=NULL, DATA_OP=NULL, DATA_SOURCE=NULL, DATA_VERSION=NULL, DATA_REJ_DESC=NULL, DATA_DEL_DESC=NULL, DATA_CRT_USER=NULL, DATA_CRT_DATE=NULL, DATA_CRT_TIME=NULL, DATA_CHG_USER=NULL, DATA_CHG_DATE=NULL, DATA_CHG_TIME=NULL, DATA_APV_USER=NULL, DATA_APV_DATE=NULL, DATA_APV_TIME=NULL, RSV1='1e36e8448fcc45c3a10026087fa03bc6', RSV2=NULL, RSV3=NULL, RSV4='mbtrule', RSV5='1' WHERE DATA_ID='MBT_410_DS4100131S410013105S410013102';
UPDATE GP_QC_RULE SET DATA_DATE='20190624', CORP_ID='TESTCORP', ORG_ID='72', GROUP_ID='002', INQ_ORG_ID=NULL, INQ_GROUP_ID=NULL, RULE_DESC='当“账户类型”为“D2”，“责任人身份标识号码”不能为空', RULE_MESSAGE='当“账户类型”为“D2”，“责任人身份标识号码”不能为空', RULE_TYPE=NULL, RULE_SOURCE='BUSI', FIELD='DATA_ID', FIELD_NAME=NULL, TRIMMABLE=NULL, NULLABLE='Y', TYPE_ID=NULL, ENCODING=NULL, MIN_LENGTH=NULL, MAX_LENGTH=NULL, MIN_VALUE=NULL, MAX_VALUE=NULL, MAX_PRECISION=NULL, MIN_SCALE=NULL, MAX_SCALE=NULL, ENUMERATION=NULL, PATTERN=NULL, IN_ENTITY=NULL, IN_FIELD=NULL, "SQL"=NULL, SQL_EXTRA_KEY=NULL, SCRIPT='if (!isEmpty(MBT_410_B_ACCT_TYPE) && MBT_410_B_ACCT_TYPE == "D2") {
    if (!isEmpty(D_ARLP_CERT_NUM)) {
        return true
    }
    return false
}
return true', BEAN=NULL, CHECK_FLAG=NULL, CHECK_DESC=NULL, CHECK_ERR_TYPE=NULL, NEXT_ACTION=NULL, DATA_STATUS=NULL, DATA_FLAG=NULL, DATA_OP=NULL, DATA_SOURCE=NULL, DATA_VERSION=NULL, DATA_REJ_DESC=NULL, DATA_DEL_DESC=NULL, DATA_CRT_USER=NULL, DATA_CRT_DATE=NULL, DATA_CRT_TIME=NULL, DATA_CHG_USER=NULL, DATA_CHG_DATE=NULL, DATA_CHG_TIME=NULL, DATA_APV_USER=NULL, DATA_APV_DATE=NULL, DATA_APV_TIME=NULL, RSV1='730b911c5495401ab4a4c323e16a4a81', RSV2=NULL, RSV3=NULL, RSV4='mbtrule', RSV5='1' WHERE DATA_ID='MBT_410_DS4100132S410013203S410013202';
UPDATE GP_QC_RULE SET DATA_DATE='20190624', CORP_ID='TESTCORP', ORG_ID='72', GROUP_ID='002', INQ_ORG_ID=NULL, INQ_GROUP_ID=NULL, RULE_DESC='当“账户类型”为“R1”，“责任人身份标识号码”不能为空', RULE_MESSAGE='当“账户类型”为“R1”，“责任人身份标识号码”不能为空', RULE_TYPE=NULL, RULE_SOURCE='BUSI', FIELD='DATA_ID', FIELD_NAME=NULL, TRIMMABLE=NULL, NULLABLE='Y', TYPE_ID=NULL, ENCODING=NULL, MIN_LENGTH=NULL, MAX_LENGTH=NULL, MIN_VALUE=NULL, MAX_VALUE=NULL, MAX_PRECISION=NULL, MIN_SCALE=NULL, MAX_SCALE=NULL, ENUMERATION=NULL, PATTERN=NULL, IN_ENTITY=NULL, IN_FIELD=NULL, "SQL"=NULL, SQL_EXTRA_KEY=NULL, SCRIPT='if (!isEmpty(MBT_410_B_ACCT_TYPE) && MBT_410_B_ACCT_TYPE == "R1") {
    if (!isEmpty(D_ARLP_CERT_NUM)) {
        return true
    }
    return false
}
return true', BEAN=NULL, CHECK_FLAG=NULL, CHECK_DESC=NULL, CHECK_ERR_TYPE=NULL, NEXT_ACTION=NULL, DATA_STATUS=NULL, DATA_FLAG=NULL, DATA_OP=NULL, DATA_SOURCE=NULL, DATA_VERSION=NULL, DATA_REJ_DESC=NULL, DATA_DEL_DESC=NULL, DATA_CRT_USER=NULL, DATA_CRT_DATE=NULL, DATA_CRT_TIME=NULL, DATA_CHG_USER=NULL, DATA_CHG_DATE=NULL, DATA_CHG_TIME=NULL, DATA_APV_USER=NULL, DATA_APV_DATE=NULL, DATA_APV_TIME=NULL, RSV1='29a6fea007b649db89a9e8c75e00075e', RSV2=NULL, RSV3=NULL, RSV4='mbtrule', RSV5='1' WHERE DATA_ID='MBT_410_DS4100132S410013205S410013202';
UPDATE GP_QC_RULE SET DATA_DATE='20190624', CORP_ID='TESTCORP', ORG_ID='72', GROUP_ID='002', INQ_ORG_ID=NULL, INQ_GROUP_ID=NULL, RULE_DESC='当“账户类型”为“D2”，“还款责任人类型”不能为空', RULE_MESSAGE='当“账户类型”为“D2”，“还款责任人类型”不能为空', RULE_TYPE=NULL, RULE_SOURCE='BUSI', FIELD='DATA_ID', FIELD_NAME=NULL, TRIMMABLE=NULL, NULLABLE='Y', TYPE_ID=NULL, ENCODING=NULL, MIN_LENGTH=NULL, MAX_LENGTH=NULL, MIN_VALUE=NULL, MAX_VALUE=NULL, MAX_PRECISION=NULL, MIN_SCALE=NULL, MAX_SCALE=NULL, ENUMERATION=NULL, PATTERN=NULL, IN_ENTITY=NULL, IN_FIELD=NULL, "SQL"=NULL, SQL_EXTRA_KEY=NULL, SCRIPT='if (!isEmpty(MBT_410_B_ACCT_TYPE) && MBT_410_B_ACCT_TYPE == "D2") {
    if (!isEmpty(D_ARLP_TYPE)) {
        return true
    }
    return false
}
return true', BEAN=NULL, CHECK_FLAG=NULL, CHECK_DESC=NULL, CHECK_ERR_TYPE=NULL, NEXT_ACTION=NULL, DATA_STATUS=NULL, DATA_FLAG=NULL, DATA_OP=NULL, DATA_SOURCE=NULL, DATA_VERSION=NULL, DATA_REJ_DESC=NULL, DATA_DEL_DESC=NULL, DATA_CRT_USER=NULL, DATA_CRT_DATE=NULL, DATA_CRT_TIME=NULL, DATA_CHG_USER=NULL, DATA_CHG_DATE=NULL, DATA_CHG_TIME=NULL, DATA_APV_USER=NULL, DATA_APV_DATE=NULL, DATA_APV_TIME=NULL, RSV1='c0c4080b80594645a1e85c5b5531cbd1', RSV2=NULL, RSV3=NULL, RSV4='mbtrule', RSV5='1' WHERE DATA_ID='MBT_410_DS4100133S410013303S410013302';
UPDATE GP_QC_RULE SET DATA_DATE='20190624', CORP_ID='TESTCORP', ORG_ID='72', GROUP_ID='002', INQ_ORG_ID=NULL, INQ_GROUP_ID=NULL, RULE_DESC='当“账户类型”为“R1”，“还款责任人类型”不能为空', RULE_MESSAGE='当“账户类型”为“R1”，“还款责任人类型”不能为空', RULE_TYPE=NULL, RULE_SOURCE='BUSI', FIELD='DATA_ID', FIELD_NAME=NULL, TRIMMABLE=NULL, NULLABLE='Y', TYPE_ID=NULL, ENCODING=NULL, MIN_LENGTH=NULL, MAX_LENGTH=NULL, MIN_VALUE=NULL, MAX_VALUE=NULL, MAX_PRECISION=NULL, MIN_SCALE=NULL, MAX_SCALE=NULL, ENUMERATION=NULL, PATTERN=NULL, IN_ENTITY=NULL, IN_FIELD=NULL, "SQL"=NULL, SQL_EXTRA_KEY=NULL, SCRIPT='if (!isEmpty(MBT_410_B_ACCT_TYPE) && MBT_410_B_ACCT_TYPE == "R1") {
    if (!isEmpty(D_ARLP_TYPE)) {
        return true
    }
    return false
}
return true', BEAN=NULL, CHECK_FLAG=NULL, CHECK_DESC=NULL, CHECK_ERR_TYPE=NULL, NEXT_ACTION=NULL, DATA_STATUS=NULL, DATA_FLAG=NULL, DATA_OP=NULL, DATA_SOURCE=NULL, DATA_VERSION=NULL, DATA_REJ_DESC=NULL, DATA_DEL_DESC=NULL, DATA_CRT_USER=NULL, DATA_CRT_DATE=NULL, DATA_CRT_TIME=NULL, DATA_CHG_USER=NULL, DATA_CHG_DATE=NULL, DATA_CHG_TIME=NULL, DATA_APV_USER=NULL, DATA_APV_DATE=NULL, DATA_APV_TIME=NULL, RSV1='9d26d53420e644bea3dffb4daa79d041', RSV2=NULL, RSV3=NULL, RSV4='mbtrule', RSV5='1' WHERE DATA_ID='MBT_410_DS4100133S410013305S410013302';
UPDATE GP_QC_RULE SET DATA_DATE='20190624', CORP_ID='TESTCORP', ORG_ID='72', GROUP_ID='002', INQ_ORG_ID=NULL, INQ_GROUP_ID=NULL, RULE_DESC='当“账户类型”为“D2”，“保证合同编号”不能为空', RULE_MESSAGE='当“账户类型”为“D2”，“保证合同编号”不能为空', RULE_TYPE=NULL, RULE_SOURCE='BUSI', FIELD='DATA_ID', FIELD_NAME=NULL, TRIMMABLE=NULL, NULLABLE='Y', TYPE_ID=NULL, ENCODING=NULL, MIN_LENGTH=NULL, MAX_LENGTH=NULL, MIN_VALUE=NULL, MAX_VALUE=NULL, MAX_PRECISION=NULL, MIN_SCALE=NULL, MAX_SCALE=NULL, ENUMERATION=NULL, PATTERN=NULL, IN_ENTITY=NULL, IN_FIELD=NULL, "SQL"=NULL, SQL_EXTRA_KEY=NULL, SCRIPT='if (!isEmpty(MBT_410_B_ACCT_TYPE) && MBT_410_B_ACCT_TYPE == "D2" && D_ARLP_TYPE == "2") {
    if (!isEmpty(D_MAX_GUAR_MCC)) {
        return true
    }
    return false
}
return true', BEAN=NULL, CHECK_FLAG=NULL, CHECK_DESC=NULL, CHECK_ERR_TYPE=NULL, NEXT_ACTION=NULL, DATA_STATUS=NULL, DATA_FLAG=NULL, DATA_OP=NULL, DATA_SOURCE=NULL, DATA_VERSION=NULL, DATA_REJ_DESC=NULL, DATA_DEL_DESC=NULL, DATA_CRT_USER=NULL, DATA_CRT_DATE=NULL, DATA_CRT_TIME=NULL, DATA_CHG_USER=NULL, DATA_CHG_DATE=NULL, DATA_CHG_TIME=NULL, DATA_APV_USER=NULL, DATA_APV_DATE=NULL, DATA_APV_TIME=NULL, RSV1='74f2ac18ad82471cbad64a730a9c3634', RSV2=NULL, RSV3=NULL, RSV4='mbtrule', RSV5='1' WHERE DATA_ID='MBT_410_DS4100136S410013603,S410013488S410013602';
UPDATE GP_QC_RULE SET DATA_DATE='20190624', CORP_ID='TESTCORP', ORG_ID='72', GROUP_ID='002', INQ_ORG_ID=NULL, INQ_GROUP_ID=NULL, RULE_DESC='当“账户类型”为“C1”，“保证合同编号”不能为空', RULE_MESSAGE='当“账户类型”为“C1”，“保证合同编号”不能为空', RULE_TYPE=NULL, RULE_SOURCE='BUSI', FIELD='DATA_ID', FIELD_NAME=NULL, TRIMMABLE=NULL, NULLABLE='Y', TYPE_ID=NULL, ENCODING=NULL, MIN_LENGTH=NULL, MAX_LENGTH=NULL, MIN_VALUE=NULL, MAX_VALUE=NULL, MAX_PRECISION=NULL, MIN_SCALE=NULL, MAX_SCALE=NULL, ENUMERATION=NULL, PATTERN=NULL, IN_ENTITY=NULL, IN_FIELD=NULL, "SQL"=NULL, SQL_EXTRA_KEY=NULL, SCRIPT='if (!isEmpty(MBT_410_B_ACCT_TYPE) && MBT_410_B_ACCT_TYPE == "C1" && D_ARLP_TYPE == "2") {
    if (!isEmpty(D_MAX_GUAR_MCC)) {
        return true
    }
    return false
}
return true', BEAN=NULL, CHECK_FLAG=NULL, CHECK_DESC=NULL, CHECK_ERR_TYPE=NULL, NEXT_ACTION=NULL, DATA_STATUS=NULL, DATA_FLAG=NULL, DATA_OP=NULL, DATA_SOURCE=NULL, DATA_VERSION=NULL, DATA_REJ_DESC=NULL, DATA_DEL_DESC=NULL, DATA_CRT_USER=NULL, DATA_CRT_DATE=NULL, DATA_CRT_TIME=NULL, DATA_CHG_USER=NULL, DATA_CHG_DATE=NULL, DATA_CHG_TIME=NULL, DATA_APV_USER=NULL, DATA_APV_DATE=NULL, DATA_APV_TIME=NULL, RSV1='91e1b297ca9940c3893205678567f6b8', RSV2=NULL, RSV3=NULL, RSV4='mbtrule', RSV5='1' WHERE DATA_ID='MBT_410_DS4100136S410013609,S410013488S410013702';
UPDATE GP_QC_RULE SET DATA_DATE='20190624', CORP_ID='TESTCORP', ORG_ID='72', GROUP_ID='002', INQ_ORG_ID=NULL, INQ_GROUP_ID=NULL, RULE_DESC='当“账户类型”为“R1”，“联保标志”不能为空', RULE_MESSAGE='当“账户类型”为“R1”，“联保标志”不能为空', RULE_TYPE=NULL, RULE_SOURCE='BUSI', FIELD='DATA_ID', FIELD_NAME=NULL, TRIMMABLE=NULL, NULLABLE='Y', TYPE_ID=NULL, ENCODING=NULL, MIN_LENGTH=NULL, MAX_LENGTH=NULL, MIN_VALUE=NULL, MAX_VALUE=NULL, MAX_PRECISION=NULL, MIN_SCALE=NULL, MAX_SCALE=NULL, ENUMERATION=NULL, PATTERN=NULL, IN_ENTITY=NULL, IN_FIELD=NULL, "SQL"=NULL, SQL_EXTRA_KEY=NULL, SCRIPT='if (!isEmpty(MBT_410_B_ACCT_TYPE) && MBT_410_B_ACCT_TYPE == "R1" && D_ARLP_TYPE == "2") {
    if (!isEmpty(D_WARTY_SIGN)) {
        return true
    }
    return false
}
return true', BEAN=NULL, CHECK_FLAG=NULL, CHECK_DESC=NULL, CHECK_ERR_TYPE=NULL, NEXT_ACTION=NULL, DATA_STATUS=NULL, DATA_FLAG=NULL, DATA_OP=NULL, DATA_SOURCE=NULL, DATA_VERSION=NULL, DATA_REJ_DESC=NULL, DATA_DEL_DESC=NULL, DATA_CRT_USER=NULL, DATA_CRT_DATE=NULL, DATA_CRT_TIME=NULL, DATA_CHG_USER=NULL, DATA_CHG_DATE=NULL, DATA_CHG_TIME=NULL, DATA_APV_USER=NULL, DATA_APV_DATE=NULL, DATA_APV_TIME=NULL, RSV1='fe10709deacd4067a5b34a25f12d6c59', RSV2=NULL, RSV3=NULL, RSV4='mbtrule', RSV5='1' WHERE DATA_ID='MBT_410_DS4100135S410013505,S410013488S410013502';
UPDATE GP_QC_RULE SET DATA_DATE='20190624', CORP_ID='TESTCORP', ORG_ID='72', GROUP_ID='002', INQ_ORG_ID=NULL, INQ_GROUP_ID=NULL, RULE_DESC='当“账户类型”为“D1”，“抵质押合同标识码”不能为空', RULE_MESSAGE='当“账户类型”为“D1”，“抵质押合同标识码”不能为空', RULE_TYPE=NULL, RULE_SOURCE='BUSI', FIELD='DATA_ID', FIELD_NAME=NULL, TRIMMABLE=NULL, NULLABLE='Y', TYPE_ID=NULL, ENCODING=NULL, MIN_LENGTH=NULL, MAX_LENGTH=NULL, MIN_VALUE=NULL, MAX_VALUE=NULL, MAX_PRECISION=NULL, MIN_SCALE=NULL, MAX_SCALE=NULL, ENUMERATION=NULL, PATTERN=NULL, IN_ENTITY=NULL, IN_FIELD=NULL, "SQL"=NULL, SQL_EXTRA_KEY=NULL, SCRIPT='if (!isEmpty(MBT_410_B_ACCT_TYPE) && MBT_410_B_ACCT_TYPE == "R4") {
    if (!isEmpty(E_CCC)) {
        return true
    }
    return false
}
return true', BEAN=NULL, CHECK_FLAG=NULL, CHECK_DESC=NULL, CHECK_ERR_TYPE=NULL, NEXT_ACTION=NULL, DATA_STATUS=NULL, DATA_FLAG=NULL, DATA_OP=NULL, DATA_SOURCE=NULL, DATA_VERSION=NULL, DATA_REJ_DESC=NULL, DATA_DEL_DESC=NULL, DATA_CRT_USER=NULL, DATA_CRT_DATE=NULL, DATA_CRT_TIME=NULL, DATA_CHG_USER=NULL, DATA_CHG_DATE=NULL, DATA_CHG_TIME=NULL, DATA_APV_USER=NULL, DATA_APV_DATE=NULL, DATA_APV_TIME=NULL, RSV1='eabe131a60b44dcdb1efbaa81e17f13e', RSV2=NULL, RSV3=NULL, RSV4='mbtrule', RSV5='1' WHERE DATA_ID='MBT_410_ES4100137S410013703S410013702';
UPDATE GP_QC_RULE SET DATA_DATE='20190624', CORP_ID='TESTCORP', ORG_ID='72', GROUP_ID='002', INQ_ORG_ID=NULL, INQ_GROUP_ID=NULL, RULE_DESC='当“账户类型”为“D1”，“身份类别”不能为空', RULE_MESSAGE='当“账户类型”为“D1”，“身份类别”不能为空', RULE_TYPE=NULL, RULE_SOURCE='BUSI', FIELD='DATA_ID', FIELD_NAME=NULL, TRIMMABLE=NULL, NULLABLE='Y', TYPE_ID=NULL, ENCODING=NULL, MIN_LENGTH=NULL, MAX_LENGTH=NULL, MIN_VALUE=NULL, MAX_VALUE=NULL, MAX_PRECISION=NULL, MIN_SCALE=NULL, MAX_SCALE=NULL, ENUMERATION=NULL, PATTERN=NULL, IN_ENTITY=NULL, IN_FIELD=NULL, "SQL"=NULL, SQL_EXTRA_KEY=NULL, SCRIPT='if (!isEmpty(MBT_410_B_ACCT_TYPE) && MBT_410_B_ACCT_TYPE == "D1") {
    if (!isEmpty(D_ARLP_ID_TYPE)) {
        return true
    }
    return false
}
return true', BEAN=NULL, CHECK_FLAG=NULL, CHECK_DESC=NULL, CHECK_ERR_TYPE=NULL, NEXT_ACTION=NULL, DATA_STATUS=NULL, DATA_FLAG=NULL, DATA_OP=NULL, DATA_SOURCE=NULL, DATA_VERSION=NULL, DATA_REJ_DESC=NULL, DATA_DEL_DESC=NULL, DATA_CRT_USER=NULL, DATA_CRT_DATE=NULL, DATA_CRT_TIME=NULL, DATA_CHG_USER=NULL, DATA_CHG_DATE=NULL, DATA_CHG_TIME=NULL, DATA_APV_USER=NULL, DATA_APV_DATE=NULL, DATA_APV_TIME=NULL, RSV1='83dc14a7a473419f8cfa0fc62fdd1601', RSV2=NULL, RSV3=NULL, RSV4='mbtrule', RSV5='1' WHERE DATA_ID='MBT_410_DS4100129S410012901S410012902';
UPDATE GP_QC_RULE SET DATA_DATE='20190624', CORP_ID='TESTCORP', ORG_ID='72', GROUP_ID='002', INQ_ORG_ID=NULL, INQ_GROUP_ID=NULL, RULE_DESC='当“账户类型”为“C1”，“身份类别”不能为空', RULE_MESSAGE='当“账户类型”为“C1”，“身份类别”不能为空', RULE_TYPE=NULL, RULE_SOURCE='BUSI', FIELD='DATA_ID', FIELD_NAME=NULL, TRIMMABLE=NULL, NULLABLE='Y', TYPE_ID=NULL, ENCODING=NULL, MIN_LENGTH=NULL, MAX_LENGTH=NULL, MIN_VALUE=NULL, MAX_VALUE=NULL, MAX_PRECISION=NULL, MIN_SCALE=NULL, MAX_SCALE=NULL, ENUMERATION=NULL, PATTERN=NULL, IN_ENTITY=NULL, IN_FIELD=NULL, "SQL"=NULL, SQL_EXTRA_KEY=NULL, SCRIPT='if (!isEmpty(MBT_410_B_ACCT_TYPE) && MBT_410_B_ACCT_TYPE == "C1") {
    if (!isEmpty(D_ARLP_ID_TYPE)) {
        return true
    }
    return false
}
return true', BEAN=NULL, CHECK_FLAG=NULL, CHECK_DESC=NULL, CHECK_ERR_TYPE=NULL, NEXT_ACTION=NULL, DATA_STATUS=NULL, DATA_FLAG=NULL, DATA_OP=NULL, DATA_SOURCE=NULL, DATA_VERSION=NULL, DATA_REJ_DESC=NULL, DATA_DEL_DESC=NULL, DATA_CRT_USER=NULL, DATA_CRT_DATE=NULL, DATA_CRT_TIME=NULL, DATA_CHG_USER=NULL, DATA_CHG_DATE=NULL, DATA_CHG_TIME=NULL, DATA_APV_USER=NULL, DATA_APV_DATE=NULL, DATA_APV_TIME=NULL, RSV1='09726bb36080443883bd9f9b06f0dac5', RSV2=NULL, RSV3=NULL, RSV4='mbtrule', RSV5='1' WHERE DATA_ID='MBT_410_DS4100129S410012909S410012902';
UPDATE GP_QC_RULE SET DATA_DATE='20190624', CORP_ID='TESTCORP', ORG_ID='72', GROUP_ID='002', INQ_ORG_ID=NULL, INQ_GROUP_ID=NULL, RULE_DESC='当“账户类型”为“R4”，“责任人名称”不能为空', RULE_MESSAGE='当“账户类型”为“R4”，“责任人名称”不能为空', RULE_TYPE=NULL, RULE_SOURCE='BUSI', FIELD='DATA_ID', FIELD_NAME=NULL, TRIMMABLE=NULL, NULLABLE='Y', TYPE_ID=NULL, ENCODING=NULL, MIN_LENGTH=NULL, MAX_LENGTH=NULL, MIN_VALUE=NULL, MAX_VALUE=NULL, MAX_PRECISION=NULL, MIN_SCALE=NULL, MAX_SCALE=NULL, ENUMERATION=NULL, PATTERN=NULL, IN_ENTITY=NULL, IN_FIELD=NULL, "SQL"=NULL, SQL_EXTRA_KEY=NULL, SCRIPT='if (!isEmpty(MBT_410_B_ACCT_TYPE) && MBT_410_B_ACCT_TYPE == "R4") {
    if (!isEmpty(D_ARLP_NAME)) {
        return true
    }
    return false
}
return true', BEAN=NULL, CHECK_FLAG=NULL, CHECK_DESC=NULL, CHECK_ERR_TYPE=NULL, NEXT_ACTION=NULL, DATA_STATUS=NULL, DATA_FLAG=NULL, DATA_OP=NULL, DATA_SOURCE=NULL, DATA_VERSION=NULL, DATA_REJ_DESC=NULL, DATA_DEL_DESC=NULL, DATA_CRT_USER=NULL, DATA_CRT_DATE=NULL, DATA_CRT_TIME=NULL, DATA_CHG_USER=NULL, DATA_CHG_DATE=NULL, DATA_CHG_TIME=NULL, DATA_APV_USER=NULL, DATA_APV_DATE=NULL, DATA_APV_TIME=NULL, RSV1='279874401f874b1ea8c693fd28e7fd02', RSV2=NULL, RSV3=NULL, RSV4='mbtrule', RSV5='1' WHERE DATA_ID='MBT_410_DS4100130S410013007S410013002';
UPDATE GP_QC_RULE SET DATA_DATE='20190624', CORP_ID='TESTCORP', ORG_ID='72', GROUP_ID='002', INQ_ORG_ID=NULL, INQ_GROUP_ID=NULL, RULE_DESC='当“账户类型”为“D1”，“责任人身份标识类别”不能为空', RULE_MESSAGE='当“账户类型”为“D1”，“责任人身份标识类别”不能为空', RULE_TYPE=NULL, RULE_SOURCE='BUSI', FIELD='DATA_ID', FIELD_NAME=NULL, TRIMMABLE=NULL, NULLABLE='Y', TYPE_ID=NULL, ENCODING=NULL, MIN_LENGTH=NULL, MAX_LENGTH=NULL, MIN_VALUE=NULL, MAX_VALUE=NULL, MAX_PRECISION=NULL, MIN_SCALE=NULL, MAX_SCALE=NULL, ENUMERATION=NULL, PATTERN=NULL, IN_ENTITY=NULL, IN_FIELD=NULL, "SQL"=NULL, SQL_EXTRA_KEY=NULL, SCRIPT='if (!isEmpty(MBT_410_B_ACCT_TYPE) && MBT_410_B_ACCT_TYPE == "D1") {
    if (!isEmpty(D_ARLP_CERT_TYPE)) {
        return true
    }
    return false
}
return true', BEAN=NULL, CHECK_FLAG=NULL, CHECK_DESC=NULL, CHECK_ERR_TYPE=NULL, NEXT_ACTION=NULL, DATA_STATUS=NULL, DATA_FLAG=NULL, DATA_OP=NULL, DATA_SOURCE=NULL, DATA_VERSION=NULL, DATA_REJ_DESC=NULL, DATA_DEL_DESC=NULL, DATA_CRT_USER=NULL, DATA_CRT_DATE=NULL, DATA_CRT_TIME=NULL, DATA_CHG_USER=NULL, DATA_CHG_DATE=NULL, DATA_CHG_TIME=NULL, DATA_APV_USER=NULL, DATA_APV_DATE=NULL, DATA_APV_TIME=NULL, RSV1='2f72f2a7a59c4a8985ef11357038f646', RSV2=NULL, RSV3=NULL, RSV4='mbtrule', RSV5='1' WHERE DATA_ID='MBT_410_DS4100131S410013101S410013102';
UPDATE GP_QC_RULE SET DATA_DATE='20190624', CORP_ID='TESTCORP', ORG_ID='72', GROUP_ID='002', INQ_ORG_ID=NULL, INQ_GROUP_ID=NULL, RULE_DESC='当“账户类型”为“R4”，“责任人身份标识类别”不能为空', RULE_MESSAGE='当“账户类型”为“R4”，“责任人身份标识类别”不能为空', RULE_TYPE=NULL, RULE_SOURCE='BUSI', FIELD='DATA_ID', FIELD_NAME=NULL, TRIMMABLE=NULL, NULLABLE='Y', TYPE_ID=NULL, ENCODING=NULL, MIN_LENGTH=NULL, MAX_LENGTH=NULL, MIN_VALUE=NULL, MAX_VALUE=NULL, MAX_PRECISION=NULL, MIN_SCALE=NULL, MAX_SCALE=NULL, ENUMERATION=NULL, PATTERN=NULL, IN_ENTITY=NULL, IN_FIELD=NULL, "SQL"=NULL, SQL_EXTRA_KEY=NULL, SCRIPT='if (!isEmpty(MBT_410_B_ACCT_TYPE) && MBT_410_B_ACCT_TYPE == "R4") {
    if (!isEmpty(D_ARLP_CERT_TYPE)) {
        return true
    }
    return false
}
return true', BEAN=NULL, CHECK_FLAG=NULL, CHECK_DESC=NULL, CHECK_ERR_TYPE=NULL, NEXT_ACTION=NULL, DATA_STATUS=NULL, DATA_FLAG=NULL, DATA_OP=NULL, DATA_SOURCE=NULL, DATA_VERSION=NULL, DATA_REJ_DESC=NULL, DATA_DEL_DESC=NULL, DATA_CRT_USER=NULL, DATA_CRT_DATE=NULL, DATA_CRT_TIME=NULL, DATA_CHG_USER=NULL, DATA_CHG_DATE=NULL, DATA_CHG_TIME=NULL, DATA_APV_USER=NULL, DATA_APV_DATE=NULL, DATA_APV_TIME=NULL, RSV1='9f94e8fc7268443490bf5a8041c80a6a', RSV2=NULL, RSV3=NULL, RSV4='mbtrule', RSV5='1' WHERE DATA_ID='MBT_410_DS4100131S410013107S410013102';
UPDATE GP_QC_RULE SET DATA_DATE='20190624', CORP_ID='TESTCORP', ORG_ID='72', GROUP_ID='002', INQ_ORG_ID=NULL, INQ_GROUP_ID=NULL, RULE_DESC='当“账户类型”为“C1”，“责任人身份标识类别”不能为空', RULE_MESSAGE='当“账户类型”为“C1”，“责任人身份标识类别”不能为空', RULE_TYPE=NULL, RULE_SOURCE='BUSI', FIELD='DATA_ID', FIELD_NAME=NULL, TRIMMABLE=NULL, NULLABLE='Y', TYPE_ID=NULL, ENCODING=NULL, MIN_LENGTH=NULL, MAX_LENGTH=NULL, MIN_VALUE=NULL, MAX_VALUE=NULL, MAX_PRECISION=NULL, MIN_SCALE=NULL, MAX_SCALE=NULL, ENUMERATION=NULL, PATTERN=NULL, IN_ENTITY=NULL, IN_FIELD=NULL, "SQL"=NULL, SQL_EXTRA_KEY=NULL, SCRIPT='if (!isEmpty(MBT_410_B_ACCT_TYPE) && MBT_410_B_ACCT_TYPE == "C1") {
    if (!isEmpty(D_ARLP_CERT_TYPE)) {
        return true
    }
    return false
}
return true', BEAN=NULL, CHECK_FLAG=NULL, CHECK_DESC=NULL, CHECK_ERR_TYPE=NULL, NEXT_ACTION=NULL, DATA_STATUS=NULL, DATA_FLAG=NULL, DATA_OP=NULL, DATA_SOURCE=NULL, DATA_VERSION=NULL, DATA_REJ_DESC=NULL, DATA_DEL_DESC=NULL, DATA_CRT_USER=NULL, DATA_CRT_DATE=NULL, DATA_CRT_TIME=NULL, DATA_CHG_USER=NULL, DATA_CHG_DATE=NULL, DATA_CHG_TIME=NULL, DATA_APV_USER=NULL, DATA_APV_DATE=NULL, DATA_APV_TIME=NULL, RSV1='6ee7ed1d640e49199c39d2a02bd1f2ea', RSV2=NULL, RSV3=NULL, RSV4='mbtrule', RSV5='1' WHERE DATA_ID='MBT_410_DS4100131S410013109S410013102';
UPDATE GP_QC_RULE SET DATA_DATE='20190624', CORP_ID='TESTCORP', ORG_ID='72', GROUP_ID='002', INQ_ORG_ID=NULL, INQ_GROUP_ID=NULL, RULE_DESC='当“账户类型”为“R4”，“责任人身份标识号码”不能为空', RULE_MESSAGE='当“账户类型”为“R4”，“责任人身份标识号码”不能为空', RULE_TYPE=NULL, RULE_SOURCE='BUSI', FIELD='DATA_ID', FIELD_NAME=NULL, TRIMMABLE=NULL, NULLABLE='Y', TYPE_ID=NULL, ENCODING=NULL, MIN_LENGTH=NULL, MAX_LENGTH=NULL, MIN_VALUE=NULL, MAX_VALUE=NULL, MAX_PRECISION=NULL, MIN_SCALE=NULL, MAX_SCALE=NULL, ENUMERATION=NULL, PATTERN=NULL, IN_ENTITY=NULL, IN_FIELD=NULL, "SQL"=NULL, SQL_EXTRA_KEY=NULL, SCRIPT='if (!isEmpty(MBT_410_B_ACCT_TYPE) && MBT_410_B_ACCT_TYPE == "R4") {
    if (!isEmpty(D_ARLP_CERT_NUM)) {
        return true
    }
    return false
}
return true', BEAN=NULL, CHECK_FLAG=NULL, CHECK_DESC=NULL, CHECK_ERR_TYPE=NULL, NEXT_ACTION=NULL, DATA_STATUS=NULL, DATA_FLAG=NULL, DATA_OP=NULL, DATA_SOURCE=NULL, DATA_VERSION=NULL, DATA_REJ_DESC=NULL, DATA_DEL_DESC=NULL, DATA_CRT_USER=NULL, DATA_CRT_DATE=NULL, DATA_CRT_TIME=NULL, DATA_CHG_USER=NULL, DATA_CHG_DATE=NULL, DATA_CHG_TIME=NULL, DATA_APV_USER=NULL, DATA_APV_DATE=NULL, DATA_APV_TIME=NULL, RSV1='b5791dc3b3b04440928ee9950002dbca', RSV2=NULL, RSV3=NULL, RSV4='mbtrule', RSV5='1' WHERE DATA_ID='MBT_410_DS4100132S410013207S410013202';
UPDATE GP_QC_RULE SET DATA_DATE='20190624', CORP_ID='TESTCORP', ORG_ID='72', GROUP_ID='002', INQ_ORG_ID=NULL, INQ_GROUP_ID=NULL, RULE_DESC='当“账户类型”为“C1”，“责任人身份标识号码”不能为空', RULE_MESSAGE='当“账户类型”为“C1”，“责任人身份标识号码”不能为空', RULE_TYPE=NULL, RULE_SOURCE='BUSI', FIELD='DATA_ID', FIELD_NAME=NULL, TRIMMABLE=NULL, NULLABLE='Y', TYPE_ID=NULL, ENCODING=NULL, MIN_LENGTH=NULL, MAX_LENGTH=NULL, MIN_VALUE=NULL, MAX_VALUE=NULL, MAX_PRECISION=NULL, MIN_SCALE=NULL, MAX_SCALE=NULL, ENUMERATION=NULL, PATTERN=NULL, IN_ENTITY=NULL, IN_FIELD=NULL, "SQL"=NULL, SQL_EXTRA_KEY=NULL, SCRIPT='if (!isEmpty(MBT_410_B_ACCT_TYPE) && MBT_410_B_ACCT_TYPE == "C1") {
    if (!isEmpty(D_ARLP_CERT_NUM)) {
        return true
    }
    return false
}
return true', BEAN=NULL, CHECK_FLAG=NULL, CHECK_DESC=NULL, CHECK_ERR_TYPE=NULL, NEXT_ACTION=NULL, DATA_STATUS=NULL, DATA_FLAG=NULL, DATA_OP=NULL, DATA_SOURCE=NULL, DATA_VERSION=NULL, DATA_REJ_DESC=NULL, DATA_DEL_DESC=NULL, DATA_CRT_USER=NULL, DATA_CRT_DATE=NULL, DATA_CRT_TIME=NULL, DATA_CHG_USER=NULL, DATA_CHG_DATE=NULL, DATA_CHG_TIME=NULL, DATA_APV_USER=NULL, DATA_APV_DATE=NULL, DATA_APV_TIME=NULL, RSV1='0ede27ba22dd40b6b0b9a8692016ab8b', RSV2=NULL, RSV3=NULL, RSV4='mbtrule', RSV5='1' WHERE DATA_ID='MBT_410_DS4100132S410013209S410013202';
UPDATE GP_QC_RULE SET DATA_DATE='20190624', CORP_ID='TESTCORP', ORG_ID='72', GROUP_ID='002', INQ_ORG_ID=NULL, INQ_GROUP_ID=NULL, RULE_DESC='当“账户类型”为“R4”，“还款责任人类型”不能为空', RULE_MESSAGE='当“账户类型”为“R4”，“还款责任人类型”不能为空', RULE_TYPE=NULL, RULE_SOURCE='BUSI', FIELD='DATA_ID', FIELD_NAME=NULL, TRIMMABLE=NULL, NULLABLE='Y', TYPE_ID=NULL, ENCODING=NULL, MIN_LENGTH=NULL, MAX_LENGTH=NULL, MIN_VALUE=NULL, MAX_VALUE=NULL, MAX_PRECISION=NULL, MIN_SCALE=NULL, MAX_SCALE=NULL, ENUMERATION=NULL, PATTERN=NULL, IN_ENTITY=NULL, IN_FIELD=NULL, "SQL"=NULL, SQL_EXTRA_KEY=NULL, SCRIPT='if (!isEmpty(MBT_410_B_ACCT_TYPE) && MBT_410_B_ACCT_TYPE == "R4") {
    if (!isEmpty(D_ARLP_TYPE)) {
        return true
    }
    return false
}
return true', BEAN=NULL, CHECK_FLAG=NULL, CHECK_DESC=NULL, CHECK_ERR_TYPE=NULL, NEXT_ACTION=NULL, DATA_STATUS=NULL, DATA_FLAG=NULL, DATA_OP=NULL, DATA_SOURCE=NULL, DATA_VERSION=NULL, DATA_REJ_DESC=NULL, DATA_DEL_DESC=NULL, DATA_CRT_USER=NULL, DATA_CRT_DATE=NULL, DATA_CRT_TIME=NULL, DATA_CHG_USER=NULL, DATA_CHG_DATE=NULL, DATA_CHG_TIME=NULL, DATA_APV_USER=NULL, DATA_APV_DATE=NULL, DATA_APV_TIME=NULL, RSV1='515fd97ddf554cd4a0c6f213609e38aa', RSV2=NULL, RSV3=NULL, RSV4='mbtrule', RSV5='1' WHERE DATA_ID='MBT_410_DS4100133S410013307S410013302';
UPDATE GP_QC_RULE SET DATA_DATE='20190624', CORP_ID='TESTCORP', ORG_ID='72', GROUP_ID='002', INQ_ORG_ID=NULL, INQ_GROUP_ID=NULL, RULE_DESC='当“账户类型”为“C1”，“还款责任人类型”不能为空', RULE_MESSAGE='当“账户类型”为“C1”，“还款责任人类型”不能为空', RULE_TYPE=NULL, RULE_SOURCE='BUSI', FIELD='DATA_ID', FIELD_NAME=NULL, TRIMMABLE=NULL, NULLABLE='Y', TYPE_ID=NULL, ENCODING=NULL, MIN_LENGTH=NULL, MAX_LENGTH=NULL, MIN_VALUE=NULL, MAX_VALUE=NULL, MAX_PRECISION=NULL, MIN_SCALE=NULL, MAX_SCALE=NULL, ENUMERATION=NULL, PATTERN=NULL, IN_ENTITY=NULL, IN_FIELD=NULL, "SQL"=NULL, SQL_EXTRA_KEY=NULL, SCRIPT='if (!isEmpty(MBT_410_B_ACCT_TYPE) && MBT_410_B_ACCT_TYPE == "C1") {
    if (!isEmpty(D_ARLP_TYPE)) {
        return true
    }
    return false
}
return true', BEAN=NULL, CHECK_FLAG=NULL, CHECK_DESC=NULL, CHECK_ERR_TYPE=NULL, NEXT_ACTION=NULL, DATA_STATUS=NULL, DATA_FLAG=NULL, DATA_OP=NULL, DATA_SOURCE=NULL, DATA_VERSION=NULL, DATA_REJ_DESC=NULL, DATA_DEL_DESC=NULL, DATA_CRT_USER=NULL, DATA_CRT_DATE=NULL, DATA_CRT_TIME=NULL, DATA_CHG_USER=NULL, DATA_CHG_DATE=NULL, DATA_CHG_TIME=NULL, DATA_APV_USER=NULL, DATA_APV_DATE=NULL, DATA_APV_TIME=NULL, RSV1='5d32ab7d85d446b5836200669a9d167f', RSV2=NULL, RSV3=NULL, RSV4='mbtrule', RSV5='1' WHERE DATA_ID='MBT_410_DS4100133S410013309S410013302';
UPDATE GP_QC_RULE SET DATA_DATE='20190624', CORP_ID='TESTCORP', ORG_ID='72', GROUP_ID='002', INQ_ORG_ID=NULL, INQ_GROUP_ID=NULL, RULE_DESC='当“账户类型”为“D1”，“还款责任金额”不能为空', RULE_MESSAGE='当“账户类型”为“D1”，“还款责任金额”不能为空', RULE_TYPE=NULL, RULE_SOURCE='BUSI', FIELD='DATA_ID', FIELD_NAME=NULL, TRIMMABLE=NULL, NULLABLE='Y', TYPE_ID=NULL, ENCODING=NULL, MIN_LENGTH=NULL, MAX_LENGTH=NULL, MIN_VALUE=NULL, MAX_VALUE=NULL, MAX_PRECISION=NULL, MIN_SCALE=NULL, MAX_SCALE=NULL, ENUMERATION=NULL, PATTERN=NULL, IN_ENTITY=NULL, IN_FIELD=NULL, "SQL"=NULL, SQL_EXTRA_KEY=NULL, SCRIPT='if (!isEmpty(MBT_410_B_ACCT_TYPE) && MBT_410_B_ACCT_TYPE == "D1" && D_ARLP_TYPE == "2") {
    if (!isEmpty(D_ARLP_AMT)) {
        return true
    }
    return false
}
return true', BEAN=NULL, CHECK_FLAG=NULL, CHECK_DESC=NULL, CHECK_ERR_TYPE=NULL, NEXT_ACTION=NULL, DATA_STATUS=NULL, DATA_FLAG=NULL, DATA_OP=NULL, DATA_SOURCE=NULL, DATA_VERSION=NULL, DATA_REJ_DESC=NULL, DATA_DEL_DESC=NULL, DATA_CRT_USER=NULL, DATA_CRT_DATE=NULL, DATA_CRT_TIME=NULL, DATA_CHG_USER=NULL, DATA_CHG_DATE=NULL, DATA_CHG_TIME=NULL, DATA_APV_USER=NULL, DATA_APV_DATE=NULL, DATA_APV_TIME=NULL, RSV1='fc3cda4ef04b48b8ad4e5c498a70161a', RSV2=NULL, RSV3=NULL, RSV4='mbtrule', RSV5='1' WHERE DATA_ID='MBT_410_DS4100134S410013401,S410013488S410013402';
UPDATE GP_QC_RULE SET DATA_DATE='20190624', CORP_ID='TESTCORP', ORG_ID='72', GROUP_ID='002', INQ_ORG_ID=NULL, INQ_GROUP_ID=NULL, RULE_DESC='当“账户类型”为“D2”，“还款责任金额”不能为空', RULE_MESSAGE='当“账户类型”为“D2”，“还款责任金额”不能为空', RULE_TYPE=NULL, RULE_SOURCE='BUSI', FIELD='DATA_ID', FIELD_NAME=NULL, TRIMMABLE=NULL, NULLABLE='Y', TYPE_ID=NULL, ENCODING=NULL, MIN_LENGTH=NULL, MAX_LENGTH=NULL, MIN_VALUE=NULL, MAX_VALUE=NULL, MAX_PRECISION=NULL, MIN_SCALE=NULL, MAX_SCALE=NULL, ENUMERATION=NULL, PATTERN=NULL, IN_ENTITY=NULL, IN_FIELD=NULL, "SQL"=NULL, SQL_EXTRA_KEY=NULL, SCRIPT='if (!isEmpty(MBT_410_B_ACCT_TYPE) && MBT_410_B_ACCT_TYPE == "D2" && D_ARLP_TYPE == "2") {
    if (!isEmpty(D_ARLP_AMT)) {
        return true
    }
    return false
}
return true', BEAN=NULL, CHECK_FLAG=NULL, CHECK_DESC=NULL, CHECK_ERR_TYPE=NULL, NEXT_ACTION=NULL, DATA_STATUS=NULL, DATA_FLAG=NULL, DATA_OP=NULL, DATA_SOURCE=NULL, DATA_VERSION=NULL, DATA_REJ_DESC=NULL, DATA_DEL_DESC=NULL, DATA_CRT_USER=NULL, DATA_CRT_DATE=NULL, DATA_CRT_TIME=NULL, DATA_CHG_USER=NULL, DATA_CHG_DATE=NULL, DATA_CHG_TIME=NULL, DATA_APV_USER=NULL, DATA_APV_DATE=NULL, DATA_APV_TIME=NULL, RSV1='84b288d0832d4843b7356ca8c167930f', RSV2=NULL, RSV3=NULL, RSV4='mbtrule', RSV5='1' WHERE DATA_ID='MBT_410_DS4100134S410013403,S410013488S410013402';
UPDATE GP_QC_RULE SET DATA_DATE='20190624', CORP_ID='TESTCORP', ORG_ID='72', GROUP_ID='002', INQ_ORG_ID=NULL, INQ_GROUP_ID=NULL, RULE_DESC='当“账户类型”为“R1”，“还款责任金额”不能为空', RULE_MESSAGE='当“账户类型”为“R1”，“还款责任金额”不能为空', RULE_TYPE=NULL, RULE_SOURCE='BUSI', FIELD='DATA_ID', FIELD_NAME=NULL, TRIMMABLE=NULL, NULLABLE='Y', TYPE_ID=NULL, ENCODING=NULL, MIN_LENGTH=NULL, MAX_LENGTH=NULL, MIN_VALUE=NULL, MAX_VALUE=NULL, MAX_PRECISION=NULL, MIN_SCALE=NULL, MAX_SCALE=NULL, ENUMERATION=NULL, PATTERN=NULL, IN_ENTITY=NULL, IN_FIELD=NULL, "SQL"=NULL, SQL_EXTRA_KEY=NULL, SCRIPT='if (!isEmpty(MBT_410_B_ACCT_TYPE) && MBT_410_B_ACCT_TYPE == "R1" && D_ARLP_TYPE == "2") {
    if (!isEmpty(D_ARLP_AMT)) {
        return true
    }
    return false
}
return true', BEAN=NULL, CHECK_FLAG=NULL, CHECK_DESC=NULL, CHECK_ERR_TYPE=NULL, NEXT_ACTION=NULL, DATA_STATUS=NULL, DATA_FLAG=NULL, DATA_OP=NULL, DATA_SOURCE=NULL, DATA_VERSION=NULL, DATA_REJ_DESC=NULL, DATA_DEL_DESC=NULL, DATA_CRT_USER=NULL, DATA_CRT_DATE=NULL, DATA_CRT_TIME=NULL, DATA_CHG_USER=NULL, DATA_CHG_DATE=NULL, DATA_CHG_TIME=NULL, DATA_APV_USER=NULL, DATA_APV_DATE=NULL, DATA_APV_TIME=NULL, RSV1='67641c64b01b4c29a7c8e63fb0fcba16', RSV2=NULL, RSV3=NULL, RSV4='mbtrule', RSV5='1' WHERE DATA_ID='MBT_410_DS4100134S410013405,S410013488S410013402';
UPDATE GP_QC_RULE SET DATA_DATE='20190624', CORP_ID='TESTCORP', ORG_ID='72', GROUP_ID='002', INQ_ORG_ID=NULL, INQ_GROUP_ID=NULL, RULE_DESC='当“账户类型”为“R4”，“还款责任金额”不能为空', RULE_MESSAGE='当“账户类型”为“R4”，“还款责任金额”不能为空', RULE_TYPE=NULL, RULE_SOURCE='BUSI', FIELD='DATA_ID', FIELD_NAME=NULL, TRIMMABLE=NULL, NULLABLE='Y', TYPE_ID=NULL, ENCODING=NULL, MIN_LENGTH=NULL, MAX_LENGTH=NULL, MIN_VALUE=NULL, MAX_VALUE=NULL, MAX_PRECISION=NULL, MIN_SCALE=NULL, MAX_SCALE=NULL, ENUMERATION=NULL, PATTERN=NULL, IN_ENTITY=NULL, IN_FIELD=NULL, "SQL"=NULL, SQL_EXTRA_KEY=NULL, SCRIPT='if (!isEmpty(MBT_410_B_ACCT_TYPE) && MBT_410_B_ACCT_TYPE == "R4" && D_ARLP_TYPE == "2") {
    if (!isEmpty(D_ARLP_AMT)) {
        return true
    }
    return false
}
return true', BEAN=NULL, CHECK_FLAG=NULL, CHECK_DESC=NULL, CHECK_ERR_TYPE=NULL, NEXT_ACTION=NULL, DATA_STATUS=NULL, DATA_FLAG=NULL, DATA_OP=NULL, DATA_SOURCE=NULL, DATA_VERSION=NULL, DATA_REJ_DESC=NULL, DATA_DEL_DESC=NULL, DATA_CRT_USER=NULL, DATA_CRT_DATE=NULL, DATA_CRT_TIME=NULL, DATA_CHG_USER=NULL, DATA_CHG_DATE=NULL, DATA_CHG_TIME=NULL, DATA_APV_USER=NULL, DATA_APV_DATE=NULL, DATA_APV_TIME=NULL, RSV1='1f81db7f4b7949f489bd24e084644d02', RSV2=NULL, RSV3=NULL, RSV4='mbtrule', RSV5='1' WHERE DATA_ID='MBT_410_DS4100134S410013407,S410013488S410013402';
UPDATE GP_QC_RULE SET DATA_DATE='20190624', CORP_ID='TESTCORP', ORG_ID='72', GROUP_ID='002', INQ_ORG_ID=NULL, INQ_GROUP_ID=NULL, RULE_DESC='当“账户类型”为“R1”，“责任人名称”不能为空', RULE_MESSAGE='当“账户类型”为“R1”，“责任人名称”不能为空', RULE_TYPE=NULL, RULE_SOURCE='BUSI', FIELD='DATA_ID', FIELD_NAME=NULL, TRIMMABLE=NULL, NULLABLE='Y', TYPE_ID=NULL, ENCODING=NULL, MIN_LENGTH=NULL, MAX_LENGTH=NULL, MIN_VALUE=NULL, MAX_VALUE=NULL, MAX_PRECISION=NULL, MIN_SCALE=NULL, MAX_SCALE=NULL, ENUMERATION=NULL, PATTERN=NULL, IN_ENTITY=NULL, IN_FIELD=NULL, "SQL"=NULL, SQL_EXTRA_KEY=NULL, SCRIPT='if (!isEmpty(MBT_410_B_ACCT_TYPE) && MBT_410_B_ACCT_TYPE == "R1") {
    if (!isEmpty(D_ARLP_NAME)) {
        return true
    }
    return false
}
return true', BEAN=NULL, CHECK_FLAG=NULL, CHECK_DESC=NULL, CHECK_ERR_TYPE=NULL, NEXT_ACTION=NULL, DATA_STATUS=NULL, DATA_FLAG=NULL, DATA_OP=NULL, DATA_SOURCE=NULL, DATA_VERSION=NULL, DATA_REJ_DESC=NULL, DATA_DEL_DESC=NULL, DATA_CRT_USER=NULL, DATA_CRT_DATE=NULL, DATA_CRT_TIME=NULL, DATA_CHG_USER=NULL, DATA_CHG_DATE=NULL, DATA_CHG_TIME=NULL, DATA_APV_USER=NULL, DATA_APV_DATE=NULL, DATA_APV_TIME=NULL, RSV1='6431cba53d9b44d5a181f6605e1bae0b', RSV2=NULL, RSV3=NULL, RSV4='mbtrule', RSV5='1' WHERE DATA_ID='MBT_410_DS4100130S410013005S410013002';
UPDATE GP_QC_RULE SET DATA_DATE='20190624', CORP_ID='TESTCORP', ORG_ID='72', GROUP_ID='002', INQ_ORG_ID=NULL, INQ_GROUP_ID=NULL, RULE_DESC='当“账户类型”为“D1”，“联保标志”不能为空', RULE_MESSAGE='当“账户类型”为“D1”，“联保标志”不能为空', RULE_TYPE=NULL, RULE_SOURCE='BUSI', FIELD='DATA_ID', FIELD_NAME=NULL, TRIMMABLE=NULL, NULLABLE='Y', TYPE_ID=NULL, ENCODING=NULL, MIN_LENGTH=NULL, MAX_LENGTH=NULL, MIN_VALUE=NULL, MAX_VALUE=NULL, MAX_PRECISION=NULL, MIN_SCALE=NULL, MAX_SCALE=NULL, ENUMERATION=NULL, PATTERN=NULL, IN_ENTITY=NULL, IN_FIELD=NULL, "SQL"=NULL, SQL_EXTRA_KEY=NULL, SCRIPT='if (!isEmpty(MBT_410_B_ACCT_TYPE) && MBT_410_B_ACCT_TYPE == "D1" && D_ARLP_TYPE == "2") {
    if (!isEmpty(D_WARTY_SIGN)) {
        return true
    }
    return false
}
return true', BEAN=NULL, CHECK_FLAG=NULL, CHECK_DESC=NULL, CHECK_ERR_TYPE=NULL, NEXT_ACTION=NULL, DATA_STATUS=NULL, DATA_FLAG=NULL, DATA_OP=NULL, DATA_SOURCE=NULL, DATA_VERSION=NULL, DATA_REJ_DESC=NULL, DATA_DEL_DESC=NULL, DATA_CRT_USER=NULL, DATA_CRT_DATE=NULL, DATA_CRT_TIME=NULL, DATA_CHG_USER=NULL, DATA_CHG_DATE=NULL, DATA_CHG_TIME=NULL, DATA_APV_USER=NULL, DATA_APV_DATE=NULL, DATA_APV_TIME=NULL, RSV1='741c1fecc09e4ac88e811c149e28c5c1', RSV2=NULL, RSV3=NULL, RSV4='mbtrule', RSV5='1' WHERE DATA_ID='MBT_410_DS4100135S410013501,S410013488S410013502';
UPDATE GP_QC_RULE SET DATA_DATE='20190624', CORP_ID='TESTCORP', ORG_ID='72', GROUP_ID='002', INQ_ORG_ID=NULL, INQ_GROUP_ID=NULL, RULE_DESC='当“账户类型”为“C1”，“联保标志”不能为空', RULE_MESSAGE='当“账户类型”为“C1”，“联保标志”不能为空', RULE_TYPE=NULL, RULE_SOURCE='BUSI', FIELD='DATA_ID', FIELD_NAME=NULL, TRIMMABLE=NULL, NULLABLE='Y', TYPE_ID=NULL, ENCODING=NULL, MIN_LENGTH=NULL, MAX_LENGTH=NULL, MIN_VALUE=NULL, MAX_VALUE=NULL, MAX_PRECISION=NULL, MIN_SCALE=NULL, MAX_SCALE=NULL, ENUMERATION=NULL, PATTERN=NULL, IN_ENTITY=NULL, IN_FIELD=NULL, "SQL"=NULL, SQL_EXTRA_KEY=NULL, SCRIPT='if (!isEmpty(MBT_410_B_ACCT_TYPE) && MBT_410_B_ACCT_TYPE == "C1" && D_ARLP_TYPE == "2") {
    if (!isEmpty(D_WARTY_SIGN)) {
        return true
    }
    return false
}
return true', BEAN=NULL, CHECK_FLAG=NULL, CHECK_DESC=NULL, CHECK_ERR_TYPE=NULL, NEXT_ACTION=NULL, DATA_STATUS=NULL, DATA_FLAG=NULL, DATA_OP=NULL, DATA_SOURCE=NULL, DATA_VERSION=NULL, DATA_REJ_DESC=NULL, DATA_DEL_DESC=NULL, DATA_CRT_USER=NULL, DATA_CRT_DATE=NULL, DATA_CRT_TIME=NULL, DATA_CHG_USER=NULL, DATA_CHG_DATE=NULL, DATA_CHG_TIME=NULL, DATA_APV_USER=NULL, DATA_APV_DATE=NULL, DATA_APV_TIME=NULL, RSV1='9b23356a0c4a4c26a6ac90706c393f66', RSV2=NULL, RSV3=NULL, RSV4='mbtrule', RSV5='1' WHERE DATA_ID='MBT_410_DS4100135S410013509,S410013488S410013502';
UPDATE GP_QC_RULE SET DATA_DATE='20190624', CORP_ID='TESTCORP', ORG_ID='72', GROUP_ID='002', INQ_ORG_ID=NULL, INQ_GROUP_ID=NULL, RULE_DESC='当“账户类型”为“R4”，“保证合同编号”不能为空', RULE_MESSAGE='当“账户类型”为“R4”，“保证合同编号”不能为空', RULE_TYPE=NULL, RULE_SOURCE='BUSI', FIELD='DATA_ID', FIELD_NAME=NULL, TRIMMABLE=NULL, NULLABLE='Y', TYPE_ID=NULL, ENCODING=NULL, MIN_LENGTH=NULL, MAX_LENGTH=NULL, MIN_VALUE=NULL, MAX_VALUE=NULL, MAX_PRECISION=NULL, MIN_SCALE=NULL, MAX_SCALE=NULL, ENUMERATION=NULL, PATTERN=NULL, IN_ENTITY=NULL, IN_FIELD=NULL, "SQL"=NULL, SQL_EXTRA_KEY=NULL, SCRIPT='if (!isEmpty(MBT_410_B_ACCT_TYPE) && MBT_410_B_ACCT_TYPE == "C1" && D_ARLP_TYPE == "2") {
    if (!isEmpty(D_MAX_GUAR_MCC)) {
        return true
    }
    return false
}
return true', BEAN=NULL, CHECK_FLAG=NULL, CHECK_DESC=NULL, CHECK_ERR_TYPE=NULL, NEXT_ACTION=NULL, DATA_STATUS=NULL, DATA_FLAG=NULL, DATA_OP=NULL, DATA_SOURCE=NULL, DATA_VERSION=NULL, DATA_REJ_DESC=NULL, DATA_DEL_DESC=NULL, DATA_CRT_USER=NULL, DATA_CRT_DATE=NULL, DATA_CRT_TIME=NULL, DATA_CHG_USER=NULL, DATA_CHG_DATE=NULL, DATA_CHG_TIME=NULL, DATA_APV_USER=NULL, DATA_APV_DATE=NULL, DATA_APV_TIME=NULL, RSV1='729075e7425d4c6593c99e97efdf3fd5', RSV2=NULL, RSV3=NULL, RSV4='mbtrule', RSV5='1' WHERE DATA_ID='MBT_410_DS4100136S410013607,S410013488S410013602';
UPDATE GP_QC_RULE SET DATA_DATE='20190625', CORP_ID='TESTCORP', ORG_ID='72', GROUP_ID='002', INQ_ORG_ID=NULL, INQ_GROUP_ID=NULL, RULE_DESC='当“账户类型”为“R1”，“抵质押合同标识码”不能为空', RULE_MESSAGE='当“账户类型”为“R1”，“抵质押合同标识码”不能为空', RULE_TYPE=NULL, RULE_SOURCE='BUSI', FIELD='DATA_ID', FIELD_NAME=NULL, TRIMMABLE=NULL, NULLABLE='Y', TYPE_ID=NULL, ENCODING=NULL, MIN_LENGTH=NULL, MAX_LENGTH=NULL, MIN_VALUE=NULL, MAX_VALUE=NULL, MAX_PRECISION=NULL, MIN_SCALE=NULL, MAX_SCALE=NULL, ENUMERATION=NULL, PATTERN=NULL, IN_ENTITY=NULL, IN_FIELD=NULL, "SQL"=NULL, SQL_EXTRA_KEY=NULL, SCRIPT='if (!isEmpty(MBT_410_B_ACCT_TYPE) && MBT_410_B_ACCT_TYPE == "R1") {
    if (!isEmpty(E_CCC)) {
        return true
    }
    return false
}
return true', BEAN=NULL, CHECK_FLAG=NULL, CHECK_DESC=NULL, CHECK_ERR_TYPE=NULL, NEXT_ACTION=NULL, DATA_STATUS=NULL, DATA_FLAG=NULL, DATA_OP=NULL, DATA_SOURCE=NULL, DATA_VERSION=NULL, DATA_REJ_DESC=NULL, DATA_DEL_DESC=NULL, DATA_CRT_USER=NULL, DATA_CRT_DATE=NULL, DATA_CRT_TIME=NULL, DATA_CHG_USER=NULL, DATA_CHG_DATE=NULL, DATA_CHG_TIME=NULL, DATA_APV_USER=NULL, DATA_APV_DATE=NULL, DATA_APV_TIME=NULL, RSV1='0498aea90c5c494a8496d5703eb0689a', RSV2=NULL, RSV3=NULL, RSV4='mbtrule', RSV5='1' WHERE DATA_ID='MBT_410_ES4100137S410013607S410013602';
UPDATE GP_QC_RULE SET DATA_DATE='20190624', CORP_ID='TESTCORP', ORG_ID='72', GROUP_ID='002', INQ_ORG_ID=NULL, INQ_GROUP_ID=NULL, RULE_DESC='当“账户类型”为“R1”，“身份类别”不能为空', RULE_MESSAGE='当“账户类型”为“R1”，“身份类别”不能为空', RULE_TYPE=NULL, RULE_SOURCE='BUSI', FIELD='DATA_ID', FIELD_NAME=NULL, TRIMMABLE=NULL, NULLABLE='Y', TYPE_ID=NULL, ENCODING=NULL, MIN_LENGTH=NULL, MAX_LENGTH=NULL, MIN_VALUE=NULL, MAX_VALUE=NULL, MAX_PRECISION=NULL, MIN_SCALE=NULL, MAX_SCALE=NULL, ENUMERATION=NULL, PATTERN=NULL, IN_ENTITY=NULL, IN_FIELD=NULL, "SQL"=NULL, SQL_EXTRA_KEY=NULL, SCRIPT='if (!isEmpty(MBT_410_B_ACCT_TYPE) && MBT_410_B_ACCT_TYPE == "R1") {
    if (!isEmpty(D_ARLP_ID_TYPE)) {
        return true
    }
    return false
}
return true', BEAN=NULL, CHECK_FLAG=NULL, CHECK_DESC=NULL, CHECK_ERR_TYPE=NULL, NEXT_ACTION=NULL, DATA_STATUS=NULL, DATA_FLAG=NULL, DATA_OP=NULL, DATA_SOURCE=NULL, DATA_VERSION=NULL, DATA_REJ_DESC=NULL, DATA_DEL_DESC=NULL, DATA_CRT_USER=NULL, DATA_CRT_DATE=NULL, DATA_CRT_TIME=NULL, DATA_CHG_USER=NULL, DATA_CHG_DATE=NULL, DATA_CHG_TIME=NULL, DATA_APV_USER=NULL, DATA_APV_DATE=NULL, DATA_APV_TIME=NULL, RSV1='2d64163eb67f4da8b06b58b88cc0ad83', RSV2=NULL, RSV3=NULL, RSV4='mbtrule', RSV5='1' WHERE DATA_ID='MBT_410_DS4100129S410012905S410012902';
UPDATE GP_QC_RULE SET DATA_DATE='20190624', CORP_ID='TESTCORP', ORG_ID='72', GROUP_ID='002', INQ_ORG_ID=NULL, INQ_GROUP_ID=NULL, RULE_DESC='当“账户类型”为“D2”，“责任人名称”不能为空', RULE_MESSAGE='当“账户类型”为“D2”，“责任人名称”不能为空', RULE_TYPE=NULL, RULE_SOURCE='BUSI', FIELD='DATA_ID', FIELD_NAME=NULL, TRIMMABLE=NULL, NULLABLE='Y', TYPE_ID=NULL, ENCODING=NULL, MIN_LENGTH=NULL, MAX_LENGTH=NULL, MIN_VALUE=NULL, MAX_VALUE=NULL, MAX_PRECISION=NULL, MIN_SCALE=NULL, MAX_SCALE=NULL, ENUMERATION=NULL, PATTERN=NULL, IN_ENTITY=NULL, IN_FIELD=NULL, "SQL"=NULL, SQL_EXTRA_KEY=NULL, SCRIPT='if (!isEmpty(MBT_410_B_ACCT_TYPE) && MBT_410_B_ACCT_TYPE == "D2") {
    if (!isEmpty(D_ARLP_NAME)) {
        return true
    }
    return false
}
return true', BEAN=NULL, CHECK_FLAG=NULL, CHECK_DESC=NULL, CHECK_ERR_TYPE=NULL, NEXT_ACTION=NULL, DATA_STATUS=NULL, DATA_FLAG=NULL, DATA_OP=NULL, DATA_SOURCE=NULL, DATA_VERSION=NULL, DATA_REJ_DESC=NULL, DATA_DEL_DESC=NULL, DATA_CRT_USER=NULL, DATA_CRT_DATE=NULL, DATA_CRT_TIME=NULL, DATA_CHG_USER=NULL, DATA_CHG_DATE=NULL, DATA_CHG_TIME=NULL, DATA_APV_USER=NULL, DATA_APV_DATE=NULL, DATA_APV_TIME=NULL, RSV1='f25daf684f954720b28d9c99d0fbf304', RSV2=NULL, RSV3=NULL, RSV4='mbtrule', RSV5='1' WHERE DATA_ID='MBT_410_DS4100130S410013003S410013002';
UPDATE GP_QC_RULE SET DATA_DATE='20190624', CORP_ID='TESTCORP', ORG_ID='72', GROUP_ID='002', INQ_ORG_ID=NULL, INQ_GROUP_ID=NULL, RULE_DESC='当“账户类型”为“D2”，“身份类别”不能为空', RULE_MESSAGE='当“账户类型”为“D2”，“身份类别”不能为空', RULE_TYPE=NULL, RULE_SOURCE='BUSI', FIELD='DATA_ID', FIELD_NAME=NULL, TRIMMABLE=NULL, NULLABLE='Y', TYPE_ID=NULL, ENCODING=NULL, MIN_LENGTH=NULL, MAX_LENGTH=NULL, MIN_VALUE=NULL, MAX_VALUE=NULL, MAX_PRECISION=NULL, MIN_SCALE=NULL, MAX_SCALE=NULL, ENUMERATION=NULL, PATTERN=NULL, IN_ENTITY=NULL, IN_FIELD=NULL, "SQL"=NULL, SQL_EXTRA_KEY=NULL, SCRIPT='if (!isEmpty(MBT_410_B_ACCT_TYPE) && MBT_410_B_ACCT_TYPE == "D2") {
    if (!isEmpty(D_ARLP_ID_TYPE)) {
        return true
    }
    return false
}
return true', BEAN=NULL, CHECK_FLAG=NULL, CHECK_DESC=NULL, CHECK_ERR_TYPE=NULL, NEXT_ACTION=NULL, DATA_STATUS=NULL, DATA_FLAG=NULL, DATA_OP=NULL, DATA_SOURCE=NULL, DATA_VERSION=NULL, DATA_REJ_DESC=NULL, DATA_DEL_DESC=NULL, DATA_CRT_USER=NULL, DATA_CRT_DATE=NULL, DATA_CRT_TIME=NULL, DATA_CHG_USER=NULL, DATA_CHG_DATE=NULL, DATA_CHG_TIME=NULL, DATA_APV_USER=NULL, DATA_APV_DATE=NULL, DATA_APV_TIME=NULL, RSV1='7b24f05815c54818a378ce0eaff7d668', RSV2=NULL, RSV3=NULL, RSV4='mbtrule', RSV5='1' WHERE DATA_ID='MBT_410_DS4100129S410012903S410012902';
UPDATE GP_QC_RULE SET DATA_DATE='20190624', CORP_ID='TESTCORP', ORG_ID='72', GROUP_ID='002', INQ_ORG_ID=NULL, INQ_GROUP_ID=NULL, RULE_DESC='当“账户类型”为“D1”，“责任人名称”不能为空', RULE_MESSAGE='当“账户类型”为“D1”，“责任人名称”不能为空', RULE_TYPE=NULL, RULE_SOURCE='BUSI', FIELD='DATA_ID', FIELD_NAME=NULL, TRIMMABLE=NULL, NULLABLE='Y', TYPE_ID=NULL, ENCODING=NULL, MIN_LENGTH=NULL, MAX_LENGTH=NULL, MIN_VALUE=NULL, MAX_VALUE=NULL, MAX_PRECISION=NULL, MIN_SCALE=NULL, MAX_SCALE=NULL, ENUMERATION=NULL, PATTERN=NULL, IN_ENTITY=NULL, IN_FIELD=NULL, "SQL"=NULL, SQL_EXTRA_KEY=NULL, SCRIPT='if (!isEmpty(MBT_410_B_ACCT_TYPE) && MBT_410_B_ACCT_TYPE == "D1") {
    if (!isEmpty(D_ARLP_NAME)) {
        return true
    }
    return false
}
return true', BEAN=NULL, CHECK_FLAG=NULL, CHECK_DESC=NULL, CHECK_ERR_TYPE=NULL, NEXT_ACTION=NULL, DATA_STATUS=NULL, DATA_FLAG=NULL, DATA_OP=NULL, DATA_SOURCE=NULL, DATA_VERSION=NULL, DATA_REJ_DESC=NULL, DATA_DEL_DESC=NULL, DATA_CRT_USER=NULL, DATA_CRT_DATE=NULL, DATA_CRT_TIME=NULL, DATA_CHG_USER=NULL, DATA_CHG_DATE=NULL, DATA_CHG_TIME=NULL, DATA_APV_USER=NULL, DATA_APV_DATE=NULL, DATA_APV_TIME=NULL, RSV1='b8e3eec406cc4c4aa5b185c2ab6bde84', RSV2=NULL, RSV3=NULL, RSV4='mbtrule', RSV5='1' WHERE DATA_ID='MBT_410_DS4100130S410013001S410013002';
UPDATE GP_QC_RULE SET DATA_DATE='20190624', CORP_ID='TESTCORP', ORG_ID='72', GROUP_ID='002', INQ_ORG_ID=NULL, INQ_GROUP_ID=NULL, RULE_DESC='当“账户类型”为“R4”，“身份类别”不能为空', RULE_MESSAGE='当“账户类型”为“R4”，“身份类别”不能为空', RULE_TYPE=NULL, RULE_SOURCE='BUSI', FIELD='DATA_ID', FIELD_NAME=NULL, TRIMMABLE=NULL, NULLABLE='Y', TYPE_ID=NULL, ENCODING=NULL, MIN_LENGTH=NULL, MAX_LENGTH=NULL, MIN_VALUE=NULL, MAX_VALUE=NULL, MAX_PRECISION=NULL, MIN_SCALE=NULL, MAX_SCALE=NULL, ENUMERATION=NULL, PATTERN=NULL, IN_ENTITY=NULL, IN_FIELD=NULL, "SQL"=NULL, SQL_EXTRA_KEY=NULL, SCRIPT='if (!isEmpty(MBT_410_B_ACCT_TYPE) && MBT_410_B_ACCT_TYPE == "R4") {
    if (!isEmpty(D_ARLP_ID_TYPE)) {
        return true
    }
    return false
}
return true', BEAN=NULL, CHECK_FLAG=NULL, CHECK_DESC=NULL, CHECK_ERR_TYPE=NULL, NEXT_ACTION=NULL, DATA_STATUS=NULL, DATA_FLAG=NULL, DATA_OP=NULL, DATA_SOURCE=NULL, DATA_VERSION=NULL, DATA_REJ_DESC=NULL, DATA_DEL_DESC=NULL, DATA_CRT_USER=NULL, DATA_CRT_DATE=NULL, DATA_CRT_TIME=NULL, DATA_CHG_USER=NULL, DATA_CHG_DATE=NULL, DATA_CHG_TIME=NULL, DATA_APV_USER=NULL, DATA_APV_DATE=NULL, DATA_APV_TIME=NULL, RSV1='c8d1f3606689406bbe5ed6a9c6a35abc', RSV2=NULL, RSV3=NULL, RSV4='mbtrule', RSV5='1' WHERE DATA_ID='MBT_410_DS4100129S410012907S410012902';
UPDATE GP_QC_RULE SET DATA_DATE='20190624', CORP_ID='TESTCORP', ORG_ID='72', GROUP_ID='002', INQ_ORG_ID=NULL, INQ_GROUP_ID=NULL, RULE_DESC='当“账户类型”为“C1”，“责任人名称”不能为空', RULE_MESSAGE='当“账户类型”为“C1”，“责任人名称”不能为空', RULE_TYPE=NULL, RULE_SOURCE='BUSI', FIELD='DATA_ID', FIELD_NAME=NULL, TRIMMABLE=NULL, NULLABLE='Y', TYPE_ID=NULL, ENCODING=NULL, MIN_LENGTH=NULL, MAX_LENGTH=NULL, MIN_VALUE=NULL, MAX_VALUE=NULL, MAX_PRECISION=NULL, MIN_SCALE=NULL, MAX_SCALE=NULL, ENUMERATION=NULL, PATTERN=NULL, IN_ENTITY=NULL, IN_FIELD=NULL, "SQL"=NULL, SQL_EXTRA_KEY=NULL, SCRIPT='if (!isEmpty(MBT_410_B_ACCT_TYPE) && MBT_410_B_ACCT_TYPE == "C1") {
    if (!isEmpty(D_ARLP_NAME)) {
        return true
    }
    return false
}
return true', BEAN=NULL, CHECK_FLAG=NULL, CHECK_DESC=NULL, CHECK_ERR_TYPE=NULL, NEXT_ACTION=NULL, DATA_STATUS=NULL, DATA_FLAG=NULL, DATA_OP=NULL, DATA_SOURCE=NULL, DATA_VERSION=NULL, DATA_REJ_DESC=NULL, DATA_DEL_DESC=NULL, DATA_CRT_USER=NULL, DATA_CRT_DATE=NULL, DATA_CRT_TIME=NULL, DATA_CHG_USER=NULL, DATA_CHG_DATE=NULL, DATA_CHG_TIME=NULL, DATA_APV_USER=NULL, DATA_APV_DATE=NULL, DATA_APV_TIME=NULL, RSV1='8b24fd7d64fb47ce88bba3cf4a3b039c', RSV2=NULL, RSV3=NULL, RSV4='mbtrule', RSV5='1' WHERE DATA_ID='MBT_410_DS4100130S410013009S410013002';
UPDATE GP_QC_RULE SET DATA_DATE='20190624', CORP_ID='TESTCORP', ORG_ID='72', GROUP_ID='002', INQ_ORG_ID=NULL, INQ_GROUP_ID=NULL, RULE_DESC='当“账户类型”为“D2”，“责任人身份标识类别”不能为空', RULE_MESSAGE='当“账户类型”为“D2”，“责任人身份标识类别”不能为空', RULE_TYPE=NULL, RULE_SOURCE='BUSI', FIELD='DATA_ID', FIELD_NAME=NULL, TRIMMABLE=NULL, NULLABLE='Y', TYPE_ID=NULL, ENCODING=NULL, MIN_LENGTH=NULL, MAX_LENGTH=NULL, MIN_VALUE=NULL, MAX_VALUE=NULL, MAX_PRECISION=NULL, MIN_SCALE=NULL, MAX_SCALE=NULL, ENUMERATION=NULL, PATTERN=NULL, IN_ENTITY=NULL, IN_FIELD=NULL, "SQL"=NULL, SQL_EXTRA_KEY=NULL, SCRIPT='if (!isEmpty(MBT_410_B_ACCT_TYPE) && MBT_410_B_ACCT_TYPE == "D2") {
    if (!isEmpty(D_ARLP_CERT_TYPE)) {
        return true
    }
    return false
}
return true', BEAN=NULL, CHECK_FLAG=NULL, CHECK_DESC=NULL, CHECK_ERR_TYPE=NULL, NEXT_ACTION=NULL, DATA_STATUS=NULL, DATA_FLAG=NULL, DATA_OP=NULL, DATA_SOURCE=NULL, DATA_VERSION=NULL, DATA_REJ_DESC=NULL, DATA_DEL_DESC=NULL, DATA_CRT_USER=NULL, DATA_CRT_DATE=NULL, DATA_CRT_TIME=NULL, DATA_CHG_USER=NULL, DATA_CHG_DATE=NULL, DATA_CHG_TIME=NULL, DATA_APV_USER=NULL, DATA_APV_DATE=NULL, DATA_APV_TIME=NULL, RSV1='a431719acd9449d5a63201e27a59eb24', RSV2=NULL, RSV3=NULL, RSV4='mbtrule', RSV5='1' WHERE DATA_ID='MBT_410_DS4100131S410013103S410013102';
UPDATE GP_QC_RULE SET DATA_DATE='20190624', CORP_ID='TESTCORP', ORG_ID='72', GROUP_ID='002', INQ_ORG_ID=NULL, INQ_GROUP_ID=NULL, RULE_DESC='当“账户类型”为“D1”，“责任人身份标识号码”不能为空', RULE_MESSAGE='当“账户类型”为“D1”，“责任人身份标识号码”不能为空', RULE_TYPE=NULL, RULE_SOURCE='BUSI', FIELD='DATA_ID', FIELD_NAME=NULL, TRIMMABLE=NULL, NULLABLE='Y', TYPE_ID=NULL, ENCODING=NULL, MIN_LENGTH=NULL, MAX_LENGTH=NULL, MIN_VALUE=NULL, MAX_VALUE=NULL, MAX_PRECISION=NULL, MIN_SCALE=NULL, MAX_SCALE=NULL, ENUMERATION=NULL, PATTERN=NULL, IN_ENTITY=NULL, IN_FIELD=NULL, "SQL"=NULL, SQL_EXTRA_KEY=NULL, SCRIPT='if (!isEmpty(MBT_410_B_ACCT_TYPE) && MBT_410_B_ACCT_TYPE == "D1") {
    if (!isEmpty(D_ARLP_CERT_NUM)) {
        return true
    }
    return false
}
return true', BEAN=NULL, CHECK_FLAG=NULL, CHECK_DESC=NULL, CHECK_ERR_TYPE=NULL, NEXT_ACTION=NULL, DATA_STATUS=NULL, DATA_FLAG=NULL, DATA_OP=NULL, DATA_SOURCE=NULL, DATA_VERSION=NULL, DATA_REJ_DESC=NULL, DATA_DEL_DESC=NULL, DATA_CRT_USER=NULL, DATA_CRT_DATE=NULL, DATA_CRT_TIME=NULL, DATA_CHG_USER=NULL, DATA_CHG_DATE=NULL, DATA_CHG_TIME=NULL, DATA_APV_USER=NULL, DATA_APV_DATE=NULL, DATA_APV_TIME=NULL, RSV1='181a72b73ca94093a84d4b2d1c599eda', RSV2=NULL, RSV3=NULL, RSV4='mbtrule', RSV5='1' WHERE DATA_ID='MBT_410_DS4100132S410013201S410013202';
UPDATE GP_QC_RULE SET DATA_DATE='20190624', CORP_ID='TESTCORP', ORG_ID='72', GROUP_ID='002', INQ_ORG_ID=NULL, INQ_GROUP_ID=NULL, RULE_DESC='当“账户类型”为“D1”，“还款责任人类型”不能为空', RULE_MESSAGE='当“账户类型”为“D1”，“还款责任人类型”不能为空', RULE_TYPE=NULL, RULE_SOURCE='BUSI', FIELD='DATA_ID', FIELD_NAME=NULL, TRIMMABLE=NULL, NULLABLE='Y', TYPE_ID=NULL, ENCODING=NULL, MIN_LENGTH=NULL, MAX_LENGTH=NULL, MIN_VALUE=NULL, MAX_VALUE=NULL, MAX_PRECISION=NULL, MIN_SCALE=NULL, MAX_SCALE=NULL, ENUMERATION=NULL, PATTERN=NULL, IN_ENTITY=NULL, IN_FIELD=NULL, "SQL"=NULL, SQL_EXTRA_KEY=NULL, SCRIPT='if (!isEmpty(MBT_410_B_ACCT_TYPE) && MBT_410_B_ACCT_TYPE == "D1") {
    if (!isEmpty(D_ARLP_TYPE)) {
        return true
    }
    return false
}
return true', BEAN=NULL, CHECK_FLAG=NULL, CHECK_DESC=NULL, CHECK_ERR_TYPE=NULL, NEXT_ACTION=NULL, DATA_STATUS=NULL, DATA_FLAG=NULL, DATA_OP=NULL, DATA_SOURCE=NULL, DATA_VERSION=NULL, DATA_REJ_DESC=NULL, DATA_DEL_DESC=NULL, DATA_CRT_USER=NULL, DATA_CRT_DATE=NULL, DATA_CRT_TIME=NULL, DATA_CHG_USER=NULL, DATA_CHG_DATE=NULL, DATA_CHG_TIME=NULL, DATA_APV_USER=NULL, DATA_APV_DATE=NULL, DATA_APV_TIME=NULL, RSV1='a60302fd67014775bf4f76d03f4664cd', RSV2=NULL, RSV3=NULL, RSV4='mbtrule', RSV5='1' WHERE DATA_ID='MBT_410_DS4100133S410013301S410013302';
UPDATE GP_QC_RULE SET DATA_DATE='20190624', CORP_ID='TESTCORP', ORG_ID='72', GROUP_ID='002', INQ_ORG_ID=NULL, INQ_GROUP_ID=NULL, RULE_DESC='当“账户类型”为“C1”，“还款责任金额”不能为空', RULE_MESSAGE='当“账户类型”为“C1”，“还款责任金额”不能为空', RULE_TYPE=NULL, RULE_SOURCE='BUSI', FIELD='DATA_ID', FIELD_NAME=NULL, TRIMMABLE=NULL, NULLABLE='Y', TYPE_ID=NULL, ENCODING=NULL, MIN_LENGTH=NULL, MAX_LENGTH=NULL, MIN_VALUE=NULL, MAX_VALUE=NULL, MAX_PRECISION=NULL, MIN_SCALE=NULL, MAX_SCALE=NULL, ENUMERATION=NULL, PATTERN=NULL, IN_ENTITY=NULL, IN_FIELD=NULL, "SQL"=NULL, SQL_EXTRA_KEY=NULL, SCRIPT='if (!isEmpty(MBT_410_B_ACCT_TYPE) && MBT_410_B_ACCT_TYPE == "C1" && D_ARLP_TYPE == "2") {
    if (!isEmpty(D_ARLP_AMT)) {
        return true
    }
    return false
}
return true', BEAN=NULL, CHECK_FLAG=NULL, CHECK_DESC=NULL, CHECK_ERR_TYPE=NULL, NEXT_ACTION=NULL, DATA_STATUS=NULL, DATA_FLAG=NULL, DATA_OP=NULL, DATA_SOURCE=NULL, DATA_VERSION=NULL, DATA_REJ_DESC=NULL, DATA_DEL_DESC=NULL, DATA_CRT_USER=NULL, DATA_CRT_DATE=NULL, DATA_CRT_TIME=NULL, DATA_CHG_USER=NULL, DATA_CHG_DATE=NULL, DATA_CHG_TIME=NULL, DATA_APV_USER=NULL, DATA_APV_DATE=NULL, DATA_APV_TIME=NULL, RSV1='1088c0e43f1b47bd92b33de805b41107', RSV2=NULL, RSV3=NULL, RSV4='mbtrule', RSV5='1' WHERE DATA_ID='MBT_410_DS4100134S410013409,S410013488S410013402';
UPDATE GP_QC_RULE SET DATA_DATE='20190624', CORP_ID='TESTCORP', ORG_ID='72', GROUP_ID='002', INQ_ORG_ID=NULL, INQ_GROUP_ID=NULL, RULE_DESC='当“账户类型”为“R4”，“联保标志”不能为空', RULE_MESSAGE='当“账户类型”为“R4”，“联保标志”不能为空', RULE_TYPE=NULL, RULE_SOURCE='BUSI', FIELD='DATA_ID', FIELD_NAME=NULL, TRIMMABLE=NULL, NULLABLE='Y', TYPE_ID=NULL, ENCODING=NULL, MIN_LENGTH=NULL, MAX_LENGTH=NULL, MIN_VALUE=NULL, MAX_VALUE=NULL, MAX_PRECISION=NULL, MIN_SCALE=NULL, MAX_SCALE=NULL, ENUMERATION=NULL, PATTERN=NULL, IN_ENTITY=NULL, IN_FIELD=NULL, "SQL"=NULL, SQL_EXTRA_KEY=NULL, SCRIPT='if (!isEmpty(MBT_410_B_ACCT_TYPE) && MBT_410_B_ACCT_TYPE == "R4" && D_ARLP_TYPE == "2") {
    if (!isEmpty(D_WARTY_SIGN)) {
        return true
    }
    return false
}
return true', BEAN=NULL, CHECK_FLAG=NULL, CHECK_DESC=NULL, CHECK_ERR_TYPE=NULL, NEXT_ACTION=NULL, DATA_STATUS=NULL, DATA_FLAG=NULL, DATA_OP=NULL, DATA_SOURCE=NULL, DATA_VERSION=NULL, DATA_REJ_DESC=NULL, DATA_DEL_DESC=NULL, DATA_CRT_USER=NULL, DATA_CRT_DATE=NULL, DATA_CRT_TIME=NULL, DATA_CHG_USER=NULL, DATA_CHG_DATE=NULL, DATA_CHG_TIME=NULL, DATA_APV_USER=NULL, DATA_APV_DATE=NULL, DATA_APV_TIME=NULL, RSV1='dbef2fdf7891408d8f4a0fa63dc39030', RSV2=NULL, RSV3=NULL, RSV4='mbtrule', RSV5='1' WHERE DATA_ID='MBT_410_DS4100135S410013507,S410013488S410013502';
UPDATE GP_QC_RULE SET DATA_DATE='20190624', CORP_ID='TESTCORP', ORG_ID='72', GROUP_ID='002', INQ_ORG_ID=NULL, INQ_GROUP_ID=NULL, RULE_DESC='当“账户类型”为“R1”，“保证合同编号”不能为空', RULE_MESSAGE='当“账户类型”为“R1”，“保证合同编号”不能为空', RULE_TYPE=NULL, RULE_SOURCE='BUSI', FIELD='DATA_ID', FIELD_NAME=NULL, TRIMMABLE=NULL, NULLABLE='Y', TYPE_ID=NULL, ENCODING=NULL, MIN_LENGTH=NULL, MAX_LENGTH=NULL, MIN_VALUE=NULL, MAX_VALUE=NULL, MAX_PRECISION=NULL, MIN_SCALE=NULL, MAX_SCALE=NULL, ENUMERATION=NULL, PATTERN=NULL, IN_ENTITY=NULL, IN_FIELD=NULL, "SQL"=NULL, SQL_EXTRA_KEY=NULL, SCRIPT='if (!isEmpty(MBT_410_B_ACCT_TYPE) && MBT_410_B_ACCT_TYPE == "R1" && D_ARLP_TYPE == "2") {
    if (!isEmpty(D_MAX_GUAR_MCC)) {
        return true
    }
    return false
}
return true', BEAN=NULL, CHECK_FLAG=NULL, CHECK_DESC=NULL, CHECK_ERR_TYPE=NULL, NEXT_ACTION=NULL, DATA_STATUS=NULL, DATA_FLAG=NULL, DATA_OP=NULL, DATA_SOURCE=NULL, DATA_VERSION=NULL, DATA_REJ_DESC=NULL, DATA_DEL_DESC=NULL, DATA_CRT_USER=NULL, DATA_CRT_DATE=NULL, DATA_CRT_TIME=NULL, DATA_CHG_USER=NULL, DATA_CHG_DATE=NULL, DATA_CHG_TIME=NULL, DATA_APV_USER=NULL, DATA_APV_DATE=NULL, DATA_APV_TIME=NULL, RSV1='851e2341a4ff435c8b80cd62679fa682', RSV2=NULL, RSV3=NULL, RSV4='mbtrule', RSV5='1' WHERE DATA_ID='MBT_410_DS4100136S410013605,S410013488S410013602';
UPDATE GP_QC_RULE SET DATA_DATE='20190624', CORP_ID='TESTCORP', ORG_ID='72', GROUP_ID='002', INQ_ORG_ID=NULL, INQ_GROUP_ID=NULL, RULE_DESC='当“账户类型”为“R4”，“抵质押合同标识码”不能为空', RULE_MESSAGE='当“账户类型”为“R4”，“抵质押合同标识码”不能为空', RULE_TYPE=NULL, RULE_SOURCE='BUSI', FIELD='DATA_ID', FIELD_NAME=NULL, TRIMMABLE=NULL, NULLABLE='Y', TYPE_ID=NULL, ENCODING=NULL, MIN_LENGTH=NULL, MAX_LENGTH=NULL, MIN_VALUE=NULL, MAX_VALUE=NULL, MAX_PRECISION=NULL, MIN_SCALE=NULL, MAX_SCALE=NULL, ENUMERATION=NULL, PATTERN=NULL, IN_ENTITY=NULL, IN_FIELD=NULL, "SQL"=NULL, SQL_EXTRA_KEY=NULL, SCRIPT='if (!isEmpty(MBT_410_B_ACCT_TYPE) && MBT_410_B_ACCT_TYPE == "R1") {
    if (!isEmpty(E_CCC)) {
        return true
    }
    return false
}
return true', BEAN=NULL, CHECK_FLAG=NULL, CHECK_DESC=NULL, CHECK_ERR_TYPE=NULL, NEXT_ACTION=NULL, DATA_STATUS=NULL, DATA_FLAG=NULL, DATA_OP=NULL, DATA_SOURCE=NULL, DATA_VERSION=NULL, DATA_REJ_DESC=NULL, DATA_DEL_DESC=NULL, DATA_CRT_USER=NULL, DATA_CRT_DATE=NULL, DATA_CRT_TIME=NULL, DATA_CHG_USER=NULL, DATA_CHG_DATE=NULL, DATA_CHG_TIME=NULL, DATA_APV_USER=NULL, DATA_APV_DATE=NULL, DATA_APV_TIME=NULL, RSV1='f2bd5f2b4d98493e9dcbab2b52a70d55', RSV2=NULL, RSV3=NULL, RSV4='mbtrule', RSV5='1' WHERE DATA_ID='MBT_410_ES4100137S410013705S410013702';
UPDATE GP_QC_RULE SET DATA_DATE='20190624', CORP_ID='TESTCORP', ORG_ID='72', GROUP_ID='002', INQ_ORG_ID=NULL, INQ_GROUP_ID=NULL, RULE_DESC='当“账户类型”为“D2”，“联保标志”不能为空', RULE_MESSAGE='当“账户类型”为“D2”，“联保标志”不能为空', RULE_TYPE=NULL, RULE_SOURCE='BUSI', FIELD='DATA_ID', FIELD_NAME=NULL, TRIMMABLE=NULL, NULLABLE='Y', TYPE_ID=NULL, ENCODING=NULL, MIN_LENGTH=NULL, MAX_LENGTH=NULL, MIN_VALUE=NULL, MAX_VALUE=NULL, MAX_PRECISION=NULL, MIN_SCALE=NULL, MAX_SCALE=NULL, ENUMERATION=NULL, PATTERN=NULL, IN_ENTITY=NULL, IN_FIELD=NULL, "SQL"=NULL, SQL_EXTRA_KEY=NULL, SCRIPT='if (!isEmpty(MBT_410_B_ACCT_TYPE) && MBT_410_B_ACCT_TYPE == "D2" && D_ARLP_TYPE == "2") {
    if (!isEmpty(D_WARTY_SIGN)) {
        return true
    }
    return false
}
return true', BEAN=NULL, CHECK_FLAG=NULL, CHECK_DESC=NULL, CHECK_ERR_TYPE=NULL, NEXT_ACTION=NULL, DATA_STATUS=NULL, DATA_FLAG=NULL, DATA_OP=NULL, DATA_SOURCE=NULL, DATA_VERSION=NULL, DATA_REJ_DESC=NULL, DATA_DEL_DESC=NULL, DATA_CRT_USER=NULL, DATA_CRT_DATE=NULL, DATA_CRT_TIME=NULL, DATA_CHG_USER=NULL, DATA_CHG_DATE=NULL, DATA_CHG_TIME=NULL, DATA_APV_USER=NULL, DATA_APV_DATE=NULL, DATA_APV_TIME=NULL, RSV1='90ebb223768542d78ca352acfda43c47', RSV2=NULL, RSV3=NULL, RSV4='mbtrule', RSV5='1' WHERE DATA_ID='MBT_410_DS4100135S410013503,S410013488S410013502';
UPDATE GP_QC_RULE SET DATA_DATE='20190624', CORP_ID='TESTCORP', ORG_ID='72', GROUP_ID='002', INQ_ORG_ID=NULL, INQ_GROUP_ID=NULL, RULE_DESC='当“账户类型”为“D1”，“保证合同编号”不能为空', RULE_MESSAGE='当“账户类型”为“D1”，“保证合同编号”不能为空', RULE_TYPE=NULL, RULE_SOURCE='BUSI', FIELD='DATA_ID', FIELD_NAME=NULL, TRIMMABLE=NULL, NULLABLE='Y', TYPE_ID=NULL, ENCODING=NULL, MIN_LENGTH=NULL, MAX_LENGTH=NULL, MIN_VALUE=NULL, MAX_VALUE=NULL, MAX_PRECISION=NULL, MIN_SCALE=NULL, MAX_SCALE=NULL, ENUMERATION=NULL, PATTERN=NULL, IN_ENTITY=NULL, IN_FIELD=NULL, "SQL"=NULL, SQL_EXTRA_KEY=NULL, SCRIPT='if (!isEmpty(MBT_410_B_ACCT_TYPE) && MBT_410_B_ACCT_TYPE == "D1" && D_ARLP_TYPE == "2") {
    if (!isEmpty(D_MAX_GUAR_MCC)) {
        return true
    }
    return false
}
return true', BEAN=NULL, CHECK_FLAG=NULL, CHECK_DESC=NULL, CHECK_ERR_TYPE=NULL, NEXT_ACTION=NULL, DATA_STATUS=NULL, DATA_FLAG=NULL, DATA_OP=NULL, DATA_SOURCE=NULL, DATA_VERSION=NULL, DATA_REJ_DESC=NULL, DATA_DEL_DESC=NULL, DATA_CRT_USER=NULL, DATA_CRT_DATE=NULL, DATA_CRT_TIME=NULL, DATA_CHG_USER=NULL, DATA_CHG_DATE=NULL, DATA_CHG_TIME=NULL, DATA_APV_USER=NULL, DATA_APV_DATE=NULL, DATA_APV_TIME=NULL, RSV1='d909efc5ad85423e9d773ab58f1cee0b', RSV2=NULL, RSV3=NULL, RSV4='mbtrule', RSV5='1' WHERE DATA_ID='MBT_410_DS4100136S410013601,S410013488S410013602';
UPDATE GP_QC_RULE SET DATA_DATE='20190624', CORP_ID='TESTCORP', ORG_ID='72', GROUP_ID='002', INQ_ORG_ID=NULL, INQ_GROUP_ID=NULL, RULE_DESC='当“账户类型”为“D2”，“抵质押合同标识码”为空', RULE_MESSAGE='当“账户类型”为“D2”，“抵质押合同标识码”为空', RULE_TYPE=NULL, RULE_SOURCE='BUSI', FIELD='DATA_ID', FIELD_NAME=NULL, TRIMMABLE=NULL, NULLABLE='Y', TYPE_ID=NULL, ENCODING=NULL, MIN_LENGTH=NULL, MAX_LENGTH=NULL, MIN_VALUE=NULL, MAX_VALUE=NULL, MAX_PRECISION=NULL, MIN_SCALE=NULL, MAX_SCALE=NULL, ENUMERATION=NULL, PATTERN=NULL, IN_ENTITY=NULL, IN_FIELD=NULL, "SQL"=NULL, SQL_EXTRA_KEY=NULL, SCRIPT='if (!isEmpty(MBT_410_B_ACCT_TYPE) && MBT_410_B_ACCT_TYPE == "D2") {
    if (isEmpty(E_CCC)) {
        return true
    }
    return false
}
return true', BEAN=NULL, CHECK_FLAG=NULL, CHECK_DESC=NULL, CHECK_ERR_TYPE=NULL, NEXT_ACTION=NULL, DATA_STATUS=NULL, DATA_FLAG=NULL, DATA_OP=NULL, DATA_SOURCE=NULL, DATA_VERSION=NULL, DATA_REJ_DESC=NULL, DATA_DEL_DESC=NULL, DATA_CRT_USER=NULL, DATA_CRT_DATE=NULL, DATA_CRT_TIME=NULL, DATA_CHG_USER=NULL, DATA_CHG_DATE=NULL, DATA_CHG_TIME=NULL, DATA_APV_USER=NULL, DATA_APV_DATE=NULL, DATA_APV_TIME=NULL, RSV1='7b9c9f1ae52f4f3197c3cfb91b7ec2a4', RSV2=NULL, RSV3=NULL, RSV4='mbtrule', RSV5='1' WHERE DATA_ID='MBT_410_ES4100138S410013801S410013802';


