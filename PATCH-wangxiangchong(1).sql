--ce_51
--MBT_210R2101204R2101204001R2101204002
--待入库个人借贷账户信息记录中的“账户类型”必须与已入库记录的“账户类型”一致。
update gp_qc_rule set sql = 'select 1
  from (select count(*) as tcnt
          FROM MBT_210_RPT
         WHERE (MBT_210_RPT.B_ACCT_CODE=:B_ACCT_CODE)
           AND (MBT_210_RPT.B_ACCT_TYPE=:B_ACCT_TYPE)
        union all
        select case
                 when count(1) = 0 then
                  1
                 else
                  0
               end
          from MBT_210_RPT
         where MBT_210_RPT.B_ACCT_CODE =:B_ACCT_CODE)
 where tcnt > 0'
 where data_id = 'MBT_210R2101204R2101204001R2101204002';


COMMIT;

