--CE-54
--MBT_215I2150B01I2150B0101
update gp_qc_rule set script = 'if(!isEmpty(MONTH) & !isEmpty(RPT_DATE)){
if(!(MONTH.substring(0,6)).equals(RPT_DATE.substring(0,6))){
  return false
}
return true
}
return true' where data_id = 'MBT_215I2150B01I2150B0101';

commit;