--CE-49
--个人借贷账户标识变更
--MBT_211I2111B03
update gp_qc_rule set sql = 'select 1
  from (select count(*) as tcnt
          from mbt_211_rpt,mbt_211_his
         where (select count(*)
          from mbt_210_rpt
         where mbt_210_rpt.B_ACCT_CODE = :NW_BNES_CODE) = 0
            or (mbt_211_rpt.OD_BNES_CODE = :NW_BNES_CODE and mbt_211_his.ODS_DATA_ID = :DATA_ID and mbt_211_rpt.ODS_DATA_ID = mbt_211_his.data_id))
 where tcnt > 0' where data_id = 'MBT_211I2111B03';

 commit;