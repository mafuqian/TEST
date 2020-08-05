--CE-82
--MBT_410_IR4101210R410121002



update gp_qc_rule set sql = 'select 1
  from (select count(*) as tcnt
          FROM MBT_410_I_RPT
         WHERE ((MBT_410_I_RPT.I_TRAN_DATE = :I_TRAN_DATE) AND
               (MBT_410_I_RPT.I_CHAN_TRAN_TYPE = :I_CHAN_TRAN_TYPE)
                and (MBT_410_I_RPT.B_ACCT_CODE = :B_ACCT_CODE)))
 where tcnt = 0'where data_id = 'MBT_410_IR4101210R410121002';
 
 COMMIT;
