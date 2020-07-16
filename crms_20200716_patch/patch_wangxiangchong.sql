
-- CE-51
update gp_qc_rule set script='if (H_ACCT_STATUS == "2") {
    if (H_ACCT_BAL == "0") {
        return true
    }
    return false
}
return true' where data_id = 'MBT_210I2100J05I2100J0501I2100J0502';


-- CE-51
-- MBT_210R2101204R2101204001R2101204002
--待入库个人借贷账户信息记录中的“账户类型”必须与已入库记录的“账户类型”一致。

update gp_qc_rule set sql = 'select 1 from (select count(*) as tcnt FROM MBT_210_RPT  WHERE  ( MBT_210_RPT.B_ACCT_CODE =:B_ACCT_CODE ) AND  NOT ( MBT_210_RPT.B_ACCT_TYPE <> :B_ACCT_TYPE ) ) where tcnt > 0
' where data_id = 'MBT_210R2101204R2101204001R2101204002';

-- MBT_210R2101206_01R210120601R210120602
-- 待入库个人借贷账户信息记录的“账户状态”为“3-关闭”，若其信息报告日期早于库中该个人借贷账户信息记录的信息报告日期，则该记录不能入库。

update gp_qc_rule set sql = 'select 1 from (select case when count(*)>0 and :H_ACCT_STATUS =3 and :B_ACCT_TYPE in ('D1','R1','R4') then 0 else 1 end as tcnt FROM MBT_210_RPT  WHERE MBT_210_RPT.B_ACCT_CODE = :B_ACCT_CODE  AND MBT_210_RPT.B_RPT_DATE >= :B_RPT_DATE) where tcnt = 1
'where data_id = 'MBT_210R2101206_01R210120601R210120602';


COMMIT;