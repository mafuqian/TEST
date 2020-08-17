

--CE-9
--script
--MBT_110I1100D01I1100D0101I1100D0102
update gp_qc_rule set script = 'if (!isEmpty(D_DOB) && !isEmpty(D_FCS_INFO_UP_DATE)) {
    if (D_DOB <= D_FCS_INFO_UP_DATE) {
        return true
    }
    return false
}
return true' where data_id = 'MBT_110I1100D01I1100D0101I1100D0102';

--MBT_110R1100101R110010101R110010102
update gp_qc_rule set script = 'if (B_RPT_DATE_CODE == "10" && !isEmpty(IS_RPT)) {
    if (IS_RPT.substring(0,8) == "11111110") {
        return true
    }
    return false
}
return true' where data_id = 'MBT_110R1100101R110010101R110010102';



--个人借贷信息
--MBT_210R210010101R210010101R210010102_01
update gp_qc_rule set script = 'if (B_RPT_DATE_CODE == "10" && B_ACCT_TYPE == "D1" && C_FLAG != "0" && !isEmpty(IS_RPT)) {
    if (IS_RPT.substring(0,3) == "111" && IS_RPT.substring(4,5) == "1") {
        return true
    }
    return false
}
return true' where data_id = 'MBT_210R210010101R210010101R210010102_01';

--MBT_210R210010102_1R210010102_1_001R210010104
update gp_qc_rule set script = 'if (B_RPT_DATE_CODE == "10" && !isEmpty(IS_RPT)) {
    if (IS_RPT.substring(0,2) == "11") {
        return true
    }
    return false
}
return true' where data_id = 'MBT_210R210010102_1R210010102_1_001R210010104';

--MBT_210R210010301R210010301_01R210010102_01
update gp_qc_rule set script = 'if (B_RPT_DATE_CODE == "31" && B_ACCT_TYPE == "D1"  && !isEmpty(C_FLAG) && C_FLAG.toBigDecimal() > 0) {
    if (IS_RPT.substring(0,3) == "111" && IS_RPT.substring(4,5) == "1") {
        return true
    }
    return false
}
return true' where data_id = 'MBT_210R210010301R210010301_01R210010102_01';

--MBT_210_KI2100A09I2100A0914
update gp_qc_rule set script = 'if(!isEmpty(MBT_210_C_OPEN_DATE) && !isEmpty(K_TRAN_DATE)){
    return MBT_210_C_OPEN_DATE <= K_TRAN_DATE
    }
    return true' where data_id = 'MBT_210_KI2100A09I2100A0914';

--MBT_210I0000501_1
update gp_qc_rule set script = 'if(!isEmpty(MBT_210_C_OPEN_DATE) && !isEmpty(MBT_210_B_RPT_DATE)){
    return MBT_210_C_OPEN_DATE<=MBT_210_B_RPT_DATE
}
return true' where data_id = 'MBT_210I0000501_1';

--MBT_215I2150B01I2150B0101
update gp_qc_rule set script = 'if(!isEmpty(MONTH) & !isEmpty(RPT_DATE)){
if((!MONTH.substring(0,6)).equals(RPT_DATE.substring(0,6))){
  return false
}
return true
}
return true' where data_id = 'MBT_215I2150B01I2150B0101';



--个人授信
--MBT_220I2200D0120190603002
update gp_qc_rule set script = 'if(!isEmpty(D_CON_EFF_DATE) && !isEmpty(D_CON_EXP_DATE)){
    return D_CON_EFF_DATE <= D_CON_EXP_DATE
}
return true' where data_id = 'MBT_220I2200D0120190603002';



--个人抵质押
--MBT_510I0000501_2
update gp_qc_rule set script = 'if(!isEmpty(MBT_510_B_RPT_DATE) && !isEmpty(E_VAL_DATE)){
    return MBT_510_B_RPT_DATE >= E_VAL_DATE
}
return true' where data_id = 'MBT_510I0000501_2';

--MBT_510I0000501_2
update gp_qc_rule set script = 'if(!isEmpty(MBT_510_B_RPT_DATE) && !isEmpty(E_VAL_DATE)){
return MBT_510_B_RPT_DATE >= E_VAL_DATE
}
return true
' where data_id = 'MBT_510I0000501_2';

--MBT_510I5100C01I5100C0102
update gp_qc_rule set script = 'if(!isEmpty(C_CC_VAL_DATE) && !isEmpty(C_CC_EXP_DATE)){
    return C_CC_VAL_DATE <= C_CC_EXP_DATE
}
return true' where data_id = 'MBT_510I5100C01I5100C0102';



--个人担保信息
--MBT_230I0000501_1
update gp_qc_rule set script = 'if(!isEmpty(MBT_230_C_OPEN_DATE) && !isEmpty(MBT_230_B_RPT_DATE)){
   return MBT_230_C_OPEN_DATE<=MBT_230_B_RPT_DATE
}
return true' where data_id = 'MBT_230I0000501_1';

--MBT_230I0000501_2
update gp_qc_rule set script = 'if(!isEmpty(MBT_230_D_REPAY_PRD) && !isEmpty(MBT_230_B_RPT_DATE)){
   return MBT_230_D_REPAY_PRD<=MBT_230_B_RPT_DATE
}
return true' where data_id = 'MBT_230I0000501_2';

--MBT_230I0000501_3
update gp_qc_rule set script = 'if(!isEmpty(MBT_230_D_FIVE_CATE_ADJ_DATE) && !isEmpty(MBT_230_B_RPT_DATE)){
   return MBT_230_D_FIVE_CATE_ADJ_DATE<=MBT_230_B_RPT_DATE
}
return true' where data_id = 'MBT_230I0000501_3';

--MBT_230I2300A01I2300A0102
update gp_qc_rule set script = 'if(!isEmpty(C_OPEN_DATE) && !isEmpty(D_REPAY_PRD)){
    return C_OPEN_DATE <= D_REPAY_PRD
    }
    return true
' where data_id = 'MBT_230I2300A01I2300A0102';

--MBT_230I2300A01I2300A0104

update gp_qc_rule set script = 'if(!isEmpty(C_OPEN_DATE) && !isEmpty(D_FIVE_CATE_ADJ_DATE)){
   return C_OPEN_DATE <= D_FIVE_CATE_ADJ_DATE
    }
    return true
' where data_id = 'MBT_230I2300A01I2300A0104';

--MBT_230I2300C01I2300C0102
update gp_qc_rule set script = 'if(!isEmpty(C_OPEN_DATE) && !isEmpty(C_DUE_DATE)){
  return C_OPEN_DATE <= C_DUE_DATE
    }
    return true
' where data_id = 'MBT_230I2300C01I2300C0102';


--企业基本信息
--MBT_310I3100D02I3100D0202
update gp_qc_rule set script = 'if(!isEmpty(D_ESTABLISH_DATE) && !isEmpty(D_FCS_INFO_UP_DATE)){
    return D_ESTABLISH_DATE <= D_FCS_INFO_UP_DATE
}
return true
' where data_id = 'MBT_310I3100D02I3100D0202';

--MBT_310_FI3100F02I3100F0202
update gp_qc_rule set script = 'if(!isEmpty(INV_RATIO)){
    return (INV_RATIO.toBigDecimal() <= 100 && INV_RATIO.toBigDecimal() > 0)
}
return true' where data_id = 'MBT_310I3100D02I3100D0202';



--企业借贷
--MBT_410I0000501_3
update gp_qc_rule set script = 'if(!isEmpty(MBT_410_B_RPT_DATE) && !isEmpty(H_LAT_RPY_DATE)){
    return MBT_410_B_RPT_DATE >= H_LAT_RPY_DATE
}
return true' where data_id = 'MBT_410I0000501_3';

--MBT_410I0000501_1
update gp_qc_rule set script = 'if(!isEmpty(MBT_410_B_RPT_DATE) && !isEmpty(H_BAL_CHG_DATE)){
    return MBT_410_B_RPT_DATE >= H_BAL_CHG_DATE
}
return true' where data_id = 'MBT_410I0000501_1';

--MBT_410I0000501_2
update gp_qc_rule set script = 'if(!isEmpty(MBT_410_B_RPT_DATE) && !isEmpty(H_FIVE_CATE_ADJ_DATE)){
    return MBT_410_B_RPT_DATE >= H_FIVE_CATE_ADJ_DATE
}
return true' where data_id = 'MBT_410I0000501_2';

--MBT_410I0000501_4

update gp_qc_rule set script = 'if(!isEmpty(MBT_410_B_RPT_DATE) && !isEmpty(H_LAT_AGRR_RPY_DATE)){
    return MBT_410_B_RPT_DATE >= H_LAT_AGRR_RPY_DATE
}
return true' where data_id = 'MBT_410I0000501_4';

--MBT_410I0000501_5
update gp_qc_rule set script = 'if(!isEmpty(MBT_410_B_RPT_DATE) && !isEmpty(I_TRAN_DATE)){
    return MBT_410_B_RPT_DATE >= I_TRAN_DATE
}
return true' where data_id = 'MBT_410I0000501_5';

--MBT_410I4100H07I4100H0702
update gp_qc_rule set script = 'if(!isEmpty(H_LAT_RPY_PRINC_AMT) && !isEmpty(H_LAT_RPY_AMT)){
    return H_LAT_RPY_PRINC_AMT.toBigDecimal() <= H_LAT_RPY_AMT.toBigDecimal()
}
return true' where data_id = 'MBT_410I4100H07I4100H0702';



--企业担保
--MBT_440I0000501_1
update gp_qc_rule set script = 'if(!isEmpty(MBT_440_C_OPEN_DATE) && !isEmpty(MBT_440_B_RPT_DATE)){
    return MBT_440_C_OPEN_DATE<=MBT_440_B_RPT_DATE
}
return true' where data_id = 'MBT_440I0000501_1';

--MBT_440I0000501_2
update gp_qc_rule set script = 'if(!isEmpty(MBT_440_G_REPAY_PRD) && !isEmpty(MBT_440_B_RPT_DATE)){
    return MBT_440_G_REPAY_PRD<=MBT_440_B_RPT_DATE
}
return true' where data_id = 'MBT_440I0000501_2';

--MBT_440I0000501_3
update gp_qc_rule set script = 'if(!isEmpty(MBT_440_G_FIVE_CATE_ADJ_DATE) && !isEmpty(MBT_440_B_RPT_DATE)){
    return MBT_440_G_FIVE_CATE_ADJ_DATE<=MBT_440_B_RPT_DATE
}
return true' where data_id = 'MBT_440I0000501_3';

--MBT_440I4400A0101I4400A01
update gp_qc_rule set script = 'if(!isEmpty(C_OPEN_DATE) && !isEmpty(G_REPAY_PRD) && !isEmpty(G_FIVE_CATE_ADJ_DATE)){
    return C_OPEN_DATE <= G_REPAY_PRD && C_OPEN_DATE <= G_FIVE_CATE_ADJ_DATE
}
return true' where data_id = 'MBT_440I4400A0101I4400A01';

--MBT_440I4400C01I4400C0102
update gp_qc_rule set script = 'if(!isEmpty(C_OPEN_DATE) && !isEmpty(C_DUE_DATE)){
    return C_OPEN_DATE <= C_DUE_DATE
}
return true' where data_id = 'MBT_440I4400C01I4400C0102';



--企业授信
--MBT_420I4200D0120190603012
update gp_qc_rule set script = 'if(!isEmpty(D_CON_EFF_DATE) && !isEmpty(D_CON_EXP_DATE)){
    return D_CON_EFF_DATE <= D_CON_EXP_DATE
}
return true' where data_id = 'MBT_420I4200D0120190603012';


--sql
--MBT_110I0000401_2
update gp_qc_rule set sql = 'select 1
  from (select case
                 when count(1) > 0 OR TRIM(:OTH_ID_TYPE) is null OR TRIM(:MBT_110_B_ID_TYPE) != ''2'' then
                  1
                 else
                  0
               end tcnt
          from GP_BM_DATA_DIC
         WHERE data_type_no = ''19241''
           AND data_no = SUBSTR(:MBT_110_B_ID_NUM, 0, 3)
           AND length(nvl(:MBT_110_B_ID_NUM, '''')) <= 12
           AND TRIM(:MBT_110_B_ID_TYPE) = ''2'')
 where tcnt = 1
' where data_id = 'MBT_110I0000401_2';

--MBT_110_CI0000401_2
update gp_qc_rule set sql = 'select 1
  from (select case
                 when count(1) > 0 OR TRIM(:OTH_ID_TYPE) is null OR TRIM(:OTH_ID_TYPE) != ''2'' then
                  1
                 else
                  0
               end tcnt
          from GP_BM_DATA_DIC
         WHERE data_type_no = ''19241''
           AND data_no = SUBSTR(:OTH_ID_NUM, 0, 3)
           AND length(nvl(:OTH_ID_NUM, '''')) <= 12
           AND TRIM(:OTH_ID_TYPE) =''2'')
 where tcnt = 1' where data_id = 'MBT_110_CI0000401_2';

--MBT_130_I0000401_02
update gp_qc_rule set sql = 'select 1
  from (select case
                 when count(1) > 0 OR TRIM(:MBT_130_ID_TYPE) is null OR TRIM(:MBT_130_ID_TYPE) != ''2'' then
                  1
                 else
                  0
               end tcnt
          from GP_BM_DATA_DIC
         WHERE data_type_no = ''19241''
           AND data_no = SUBSTR(:MBT_130_ID_NUM, 0, 3)
           AND length(nvl(:MBT_130_ID_NUM, '''')) <= 12
           AND TRIM(:MBT_130_ID_TYPE) = ''2'')
 where tcnt = 1' where data_id = 'MBT_130_I0000401_02';

--个人借贷
--MBT_210I0000401_2
update gp_qc_rule set sql = 'select 1
  from (select case
                 when count(1) > 0 OR TRIM(:MBT_210_B_ID_TYPE) is null OR TRIM(:MBT_210_B_ID_TYPE) != ''2'' then
                  1
                 else
                  0
               end tcnt
          from GP_BM_DATA_DIC
         WHERE data_type_no = ''19241''
           AND data_no = SUBSTR(:MBT_210_B_ID_NUM, 0, 3)
           AND length(nvl(:MBT_210_B_ID_NUM, '''')) <= 12
           AND TRIM(:MBT_210_B_ID_TYPE) = ''2'')
 where tcnt = 1
' where data_id = 'MBT_210I0000401_2';

--MBT_210R210121409R210121501,R210121511R210010210
update gp_qc_rule set sql = 'select 1
  from (select case
                 when count(*) = 0 and :B_ACCT_TYPE = ''R2'' and
                      SUBSTR(:IS_RPT, 4, 1) = 0 and SUBSTR(:IS_RPT, 7, 1) = 0 then
                  1
                 when count(*) = 0 and (:B_ACCT_TYPE is null or :B_ACCT_TYPE <> ''R2'') then
                  1
                 when count(*) > 0 then
                  1
                 else
                  0
               end as tcnt
          FROM MBT_210_RPT
         WHERE MBT_210_RPT.B_ACCT_CODE = :B_ACCT_CODE)
 where tcnt = 1
' where data_id = 'MBT_210R210121409R210121501,R210121511R210010210';

--MBT_210R210121503R210121503,R210121505R210010104_001
update gp_qc_rule set sql = 'select 1
  from (select case
                 when count(*) = 0 AND :B_ACCT_TYPE = ''D1'' and
                      SUBSTR(:IS_RPT, 5, 1) = 1 then
                  1
                 when count(*) = 0 AND (:B_ACCT_TYPE is null or :B_ACCT_TYPE <> ''D1'') then
                  1
                 when count(*) > 0 then
                  1
                 else
                  0
               end as tcnt
          from MBT_210_RPT
         WHERE MBT_210_RPT.B_ACCT_CODE = :B_ACCT_CODE)
 where tcnt = 1
' where data_id = 'MBT_210R210121503R210121503,R210121505R210010104_001';

--MBT_210R210121505R210121501,R210121507R210010102
update gp_qc_rule set sql = 'select 1
  from (select case
                 when count(*) = 0 and :B_ACCT_TYPE IN (''R1'', ''R3'', ''R4'') AND
                      SUBSTR(:IS_RPT, 3, 1) = 1 AND SUBSTR(:IS_RPT, 5, 1) = 1 then
                  1
                 when count(*) = 0 and (:B_ACCT_TYPE is null or :B_ACCT_TYPE NOT IN (''R1'', ''R3'', ''R4'')) then
                  1
                 when count(*) > 0 then
                  1
                 else
                  0
               end as tcnt
          FROM MBT_210_RPT
         WHERE (MBT_210_RPT.B_ACCT_CODE = :B_ACCT_CODE))
 where tcnt = 1
' where data_id = 'MBT_210R210121505R210121501,R210121507R210010102';

--MBT_210R2101210R2101210001R2101210002
update gp_qc_rule set sql = 'select 1
  from (select case
                 when count(*) > 0 and ( :B_ACCT_TYPE is not null or :B_ACCT_TYPE = ''D1'' )then
                  0
                 else
                  1
               end as tcnt
          from MBT_215
         WHERE MBT_215.ACCT_CODE = :B_ACCT_CODE
           AND OPETN_TYPE = ''21''
           AND FLAG = ''1'')
 where tcnt = 1
' where data_id = 'MBT_210R2101210R2101210001R2101210002';

--MBT_210R210121405R210121501,R210121507R210010206
update gp_qc_rule set sql = 'select 1
  from (select case
                 when count(*) = 0 AND SUBSTR(:IS_RPT, 4, 1) = 0 and
                      SUBSTR(:IS_RPT, 6, 2) = ''00'' and
                      :B_ACCT_TYPE in (''R1'', ''R3'',''R4'') then
                  1
                 when count(*) = 0 AND SUBSTR(:IS_RPT, 4, 1) = 0 and
                      (:B_ACCT_TYPE is null or :B_ACCT_TYPE not in (''R1'', ''R3'', ''R4'')) then
                  1
                 when count(*) > 0 then
                  1
                 else
                  0
               end as tcnt
          from MBT_210_RPT
         WHERE (MBT_210_RPT.B_ACCT_CODE = :B_ACCT_CODE))
 where tcnt = 1
' where data_id = 'MBT_210R210121405R210121501,R210121507R210010206';

--MBT_210R210121509R210121501,R210121511R210010104_001
update gp_qc_rule set sql = 'select 1
  from (select case
                 when count(*) = 0 AND :B_ACCT_TYPE = ''R2'' and
                      SUBSTR(:IS_RPT, 5, 1) = 1 then
                  1
                 when count(*) = 0 AND (:B_ACCT_TYPE is null or :B_ACCT_TYPE <> ''R2'')then
                  1
                 when count(*) > 0 then
                  1
                 else
                  0
               end as tcnt
          from MBT_210_RPT
         WHERE MBT_210_RPT.B_ACCT_CODE = :B_ACCT_CODE)
 where tcnt = 1
' where data_id = 'MBT_210R210121509R210121501,R210121511R210010104_001';

--MBT_210R210121511R210121501,R210121513R210010106_01
update gp_qc_rule set sql = 'select 1
  from (select case
                 when count(*) = 0 AND :B_RPT_DATE_CODE = ''10'' AND
                      :B_ACCT_TYPE = ''C1'' AND SUBSTR(:IS_RPT, 4, 1) = 1 AND
                      SUBSTR(:IS_RPT, 7, 1) = 1 then
                  1
                 when count(*) = 0 AND
                      (:B_ACCT_TYPE is null or :B_RPT_DATE_CODE is null) or (:B_ACCT_TYPE <> ''C1'' OR :B_RPT_DATE_CODE <> ''10'') then
                  1
                 when count(*) > 0 then
                  1
                 else
                  0
               end as tcnt
          FROM MBT_210_RPT
         WHERE MBT_210_RPT.B_ACCT_CODE = :B_ACCT_CODE)
 where tcnt = 1
' where data_id = 'MBT_210R210121511R210121501,R210121513R210010106_01';

--MBT_220I0000401_2
update gp_qc_rule set sql = 'select 1
  from (select case
                 when count(1) > 0 OR (:MBT_220_B_ID_TYPE is null or TRIM(:MBT_220_B_ID_TYPE) != ''2'') then
                  1
                 else
                  0
               end tcnt
          from GP_BM_DATA_DIC
         WHERE data_type_no = ''19241''
           AND data_no = SUBSTR(:MBT_220_B_ID_NUM, 0, 3)
           AND length(nvl(:MBT_220_B_ID_NUM, '''')) <= 12
           AND TRIM(:MBT_220_B_ID_TYPE) = ''2'')
 where tcnt = 1
' where data_id = 'MBT_220I0000401_2';

--MBT_220_CI0000401_2
update gp_qc_rule set sql = 'select 1
  from (select case
                 when count(1) > 0 or(:C_CERT_REL_ID_TYPE is null or TRIM(:C_CERT_REL_ID_TYPE) != ''2'')  then
                  1
                 else
                  0
               end tcnt
          from GP_BM_DATA_DIC
         WHERE data_type_no = ''19241''
           AND data_no = SUBSTR(:C_CERT_REL_ID_NUM, 0, 3)
           AND length(nvl(:C_CERT_REL_ID_NUM, '''')) <= 12
           AND TRIM(:C_CERT_REL_ID_TYPE) = ''2'')
 where tcnt = 1
' where data_id = 'MBT_220_CI0000401_2';

--MBT_230I0000401_2
update gp_qc_rule set sql = 'select 1
  from (select case
                 when count(1) > 0 OR (:MBT_230_B_ID_TYPE is null or TRIM(:MBT_230_B_ID_TYPE) != ''2'')  then
                  1
                 else
                  0
               end tcnt
          from GP_BM_DATA_DIC
         WHERE data_type_no = ''19241''
           AND data_no = SUBSTR(:MBT_230_B_ID_NUM, 0, 3)
           AND length(nvl(:MBT_230_B_ID_NUM, '''')) <= 12
           AND TRIM(:MBT_230_B_ID_TYPE) = ''2'')
 where tcnt = 1
' where data_id = 'MBT_230I0000401_2';

--MBT_310_CI3100A02I3100A0201I3100A0202
update gp_qc_rule set sql = 'select 1
  from (select case
                 when (select COUNT(1)
                         from MBT_310_C
                        where PDATA_ID = :MBT_310_DATA_ID
                          and OTH_ENT_CERT_TYPE = ''03''
                          and trim(:MBT_310_B_ORG_TYPE) in
                              (''7'', ''71'', ''73'', ''79'')) > 0 or :MBT_310_B_ORG_TYPE is null or
                      trim(:MBT_310_B_ORG_TYPE) not in
                      (''7'', ''71'', ''73'', ''79'') then
                  1
                 else
                  0
               end as tcnt
          from dual)
 where tcnt = 1
' where data_id = 'MBT_310_CI3100A02I3100A0201I3100A0202';

--MBT_310_CI3100A01I3100A0101I3100A0102
update gp_qc_rule set sql = 'select 1
from( select
case when (select COUNT(1) from MBT_310_C
where PDATA_ID =:MBT_310_DATA_ID and OTH_ENT_CERT_TYPE=''02'' and trim(:MBT_310_B_ORG_TYPE)
in (''3'',''31'',''32'',''33'',''34'',''35'',''36'',''37'',''39'',''5'',''51'',''53'',''59''))
>0  or  :MBT_310_B_ORG_TYPE is null or trim(:MBT_310_B_ORG_TYPE)
not in (''3'',''31'',''32'',''33'',''34'',''35'',''36'',''37'',''39'',''5'',''51'',''53'',''59'')   then 1
	else 0 end as tcnt from dual) where tcnt = 1
' where data_id = 'MBT_310_CI3100A01I3100A0101I3100A0102';

--MBT_310_CI3100A03I3100A0301I3100A0302
update gp_qc_rule set sql = 'select 1
from( select
case when (select COUNT(1) from MBT_310_C
where PDATA_ID =:MBT_310_DATA_ID and OTH_ENT_CERT_TYPE=''04'' and trim(:MBT_310_B_ORG_TYPE)
in (''91''))>0  or :MBT_310_B_ORG_TYPE is null or trim(:MBT_310_B_ORG_TYPE)
not in (''91'')   then 1
	else 0 end as tcnt from dual) where tcnt = 1
' where data_id = 'MBT_310_CI3100A03I3100A0301I3100A0302';

--MBT_310_CI3100A04I3100A0401I3100A0402
update gp_qc_rule set sql = 'select 1
from( select
case when (select COUNT(1) from MBT_310_C
where PDATA_ID =:MBT_310_DATA_ID and OTH_ENT_CERT_TYPE=''05'' and trim(:MBT_310_B_ORG_TYPE)
in (''93''))>0  or :MBT_310_B_ORG_TYPE is null or trim(:MBT_310_B_ORG_TYPE)
not in (''93'')  then 1
	else 0 end as tcnt from dual) where tcnt = 1
' where data_id = 'MBT_310_CI3100A04I3100A0401I3100A0402';

--MBT_310_CI3100A05I3100A0501I3100A0502
update gp_qc_rule set sql = '	select 1
from( select
case when (select COUNT(1) from MBT_310_C
where PDATA_ID =:MBT_310_DATA_ID and OTH_ENT_CERT_TYPE=''06'' and trim(:MBT_310_B_ORG_TYPE)
in (''94''))>0 or :MBT_310_B_ORG_TYPE is null or trim(:MBT_310_B_ORG_TYPE)
not in (''94'')   then 1
	else 0 end as tcnt from dual) where tcnt = 1
' where data_id = 'MBT_310_CI3100A05I3100A0501I3100A0502';

--MBT_310_EI0000401_2
update gp_qc_rule set sql = 'select 1
  from (select case
                 when count(1) > 0 OR (:MMB_ID_TYPE is null or TRIM(:MMB_ID_TYPE) != ''2'')  then
                  1
                 else
                  0
               end tcnt
          from GP_BM_DATA_DIC
         WHERE data_type_no = ''19241''
           AND data_no = SUBSTR(:MMB_ID_NUM, 0, 3)
           AND length(nvl(:MMB_ID_NUM, '''')) <= 12
           AND TRIM(:MMB_ID_TYPE) = ''2'')
 where tcnt = 1
' where data_id = 'MBT_310_EI0000401_2';

--MBT_310_FI0000401_2
update gp_qc_rule set sql = 'select 1
  from (select case
                 when (count(1) > 0 OR (:SHAR_HOD_ID_TYPE is null or TRIM(:SHAR_HOD_ID_TYPE) != ''2'') ) then
                  1
                 else
                  0
               end tcnt
          from GP_BM_DATA_DIC
         WHERE data_type_no = ''19241''
           AND data_no = SUBSTR(:SHAR_HOD_ID_NUM, 0, 3)
           AND length(nvl(:SHAR_HOD_ID_NUM, '''')) <= 12
           AND TRIM(:SHAR_HOD_ID_TYPE) = ''2'')
 where tcnt = 1
' where data_id = 'MBT_310_FI0000401_2';

--MBT_410_II4100I01I4100I0202,I4100I0101I4100I0102
update gp_qc_rule set sql = 'select 1
  from (select case
                 when count(*) > 0 AND (:I_DUE_TRAN_MON is null or :I_DUE_TRAN_MON > 0) then
                  1
                 when count(*) = 0 then
                  1
                 else
                  0
               end as tcnt
          from MBT_410_I
         WHERE PDATA_ID = :MBT_410_DATA_ID
           and I_CHAN_TRAN_TYPE = ''11'')
 where tcnt = 1
' where data_id = 'MBT_410_II4100I01I4100I0202,I4100I0101I4100I0102';



commit;


--CE-54
--MBT_215I2150B01I2150B0101
--借贷账户特殊事件说明记录的“信息报告日期”与“发生月份”中的年、月相等。
update gp_qc_rule set script = 'if(!isEmpty(MONTH) & !isEmpty(RPT_DATE)){
if((!MONTH.substring(0,6)).equals(RPT_DATE.substring(0,6))){
  return false
}
return true
}
return true' where data_id = 'MBT_215I2150B01I2150B0101';

commit;


--CE-117
--MBT_410CUSTOMIZEDValidation00001
--新增map表
insert into gp_qc_rule_map (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_SET_ID, RULE_ID, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_410CUSTOMIZEDValidation00001', '20190709', 'TESTCORP', '72', '002', null, null, 'MBT_410_1700101', 'MBT_410CUSTOMIZEDValidation00001', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'mbtrule', null);


--新增rule
insert into gp_qc_rule (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_410CUSTOMIZEDValidation00001', '20200217', 'TESTCORP', '72', '002', null, null, '报送数据表内存在多个客户号对应相同中征码信息', '报送数据表内存在多个客户号对应相同中征码信息', null, 'BUSI', 'DATA_ID', null, null, 'Y', null, null, null, null, null, null, null, null, null, null, null, null, null, 'select *
  from (select case
                 when count(*) > 0 then
                  0
                 else
                  1
               end tcnt
          from MBT_410
         where :B_ID_TYPE = ''10''
           and MBT_410.B_ID_NUM = :B_ID_NUM
           and MBT_410.B_CUST_NO <> :B_CUST_NO)
 where tcnt = 1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'mbtrule', '1');
 
--MBT_420CUSTOMIZEDValidation00002
--新增map表
insert into gp_qc_rule_map (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_SET_ID, RULE_ID, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_420CUSTOMIZEDValidation00002', '20200304', 'TESTCORP', '72', '2', null, null, 'MBT_420_1700701', 'MBT_420CUSTOMIZEDValidation00002', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'mbtrule', null);

--新增rule
insert into gp_qc_rule (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_420CUSTOMIZEDValidation00002', '20200217', 'TESTCORP', '72', '002', null, null, '报送数据表内存在多个客户号对应相同中征码信息', '报送数据表内存在多个客户号对应相同中征码信息', null, 'BUSI', 'DATA_ID', null, null, 'Y', null, null, null, null, null, null, null, null, null, null, null, null, null, '
select *
  from (select case
                 when count(*) > 0 then
                  0
                 else
                  1
               end tcnt
          from MBT_420
         where :B_ID_TYPE = ''10''
           and MBT_420.B_ID_NUM = :B_ID_NUM
           and MBT_420.B_CUST_NO <> :B_CUST_NO)
 where tcnt = 1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'mbtrule', '1');


--MBT_510CUSTOMIZEDValidation00003
--新增map表
insert into gp_qc_rule_map (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_SET_ID, RULE_ID, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_510CUSTOMIZEDValidation00003', '20200220', 'TESTCORP', '72', '002', null, null, 'MBT_510_1700501', 'MBT_510CUSTOMIZEDValidation00003', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'mbtrule', null);


--新增rule
insert into gp_qc_rule (DATA_ID, DATA_DATE, CORP_ID, ORG_ID, GROUP_ID, INQ_ORG_ID, INQ_GROUP_ID, RULE_DESC, RULE_MESSAGE, RULE_TYPE, RULE_SOURCE, FIELD, FIELD_NAME, TRIMMABLE, NULLABLE, TYPE_ID, ENCODING, MIN_LENGTH, MAX_LENGTH, MIN_VALUE, MAX_VALUE, MAX_PRECISION, MIN_SCALE, MAX_SCALE, ENUMERATION, PATTERN, IN_ENTITY, IN_FIELD, SQL, SQL_EXTRA_KEY, SCRIPT, BEAN, CHECK_FLAG, CHECK_DESC, CHECK_ERR_TYPE, NEXT_ACTION, DATA_STATUS, DATA_FLAG, DATA_OP, DATA_SOURCE, DATA_VERSION, DATA_REJ_DESC, DATA_DEL_DESC, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, DATA_CHG_USER, DATA_CHG_DATE, DATA_CHG_TIME, DATA_APV_USER, DATA_APV_DATE, DATA_APV_TIME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('MBT_510CUSTOMIZEDValidation00003', '20190610', 'TESTCORP', '72', '2', null, null, '报送数据表内存在多个客户号对应相同中征码信息', '报送数据表内存在多个客户号对应相同中征码信息', null, 'BUSI', 'DATA_ID', null, null, 'Y', null, null, null, null, null, null, null, null, null, null, null, null, null, 'select *
  from (select case
                 when count(*) > 0 then
                  0
                 else
                  1
               end tcnt
          from MBT_510
         where :B_INFO_ID_TYPE = ''2''
           and :B_CERT_TYPE = ''10''
           and MBT_510.B_CERT_NUM = :B_CERT_NUM
           and MBT_510.B_CUST_NO <> :B_CUST_NO)
 where tcnt = 1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'mbtrule', '1');
 
 commit;




