--CE-119
--MBT_510R510010202R510010203R510010204
update gp_qc_rule set script = 'if (C_GUAR_TYPE == "2" && B_RPT_DATE_CODE != "20") {
    if (IS_RPT.substring(4,6) == "01") {
        return true
    }
    return false
}
return true' where data_id = 'MBT_510R510010202R510010203R510010204';


--MBT_510R510010201R510010201R510010202
update gp_qc_rule set script = 'if (C_GUAR_TYPE=="1" && B_RPT_DATE_CODE != "20") {
    if (IS_RPT.substring(4,6)=="10") {
        return true
    }
    return false
}
return true' where data_id = 'MBT_510R510010201R510010201R510010202';


commit;