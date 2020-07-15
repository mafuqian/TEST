update gp_qc_rule set script='if (H_ACCT_STATUS == "2") {
    if (H_ACCT_BAL == "0") {
        return true
    }
    return false
}
return true' where data_id = 'MBT_210I2100J05I2100J0501I2100J0502';


commit;
