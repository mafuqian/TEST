--CE-100
UPDATE GP_BM_NEXT_ACTION SET DATA_STATUS = '00' WHERE ACTION_ID IN ('280011_add','280011_mod') AND CURR_DATA_STATUS = '00';

--CE-92 PATR1
DELETE FROM GP_BM_ID_FIELDDATA WHERE guid in (
	SELECT
	A.GUID
	FROM
		GP_BM_ID_FIELDDATA a,
		GP_BM_ID_SHEETDATA c,
		GP_BM_USER_TAB_COLS b 
	WHERE
		a.PGUID = c.GUID 
		AND c.table_name = b.table_name 
		AND a.FIELD_NAME = b.column_name
		--AND b.table_name = 'MBT_310'
		AND b.column_name = 'ORG_ID'
		AND UMW_EXPRESSION  like 'getDep%'
		AND b.table_name like 'MBT%'
		AND LENGTH(B.TABLE_NAME) = 7
)
;
