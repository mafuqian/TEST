--CE-109

update gp_qc_rule_set set MODULE = '20170131' where data_id = 'MBT_140_20170120';

update CMP_VALID_FORM_LIST set FUNC_ID = '20170131' where data_id = '44c7c878cbf648ea871f304b0e999759';

update CMP_VALID_FORM_CFG set FUNC_ID = '20170131' where data_id = '44c7c878cbf648ea871f304b0e999999';

commit;
