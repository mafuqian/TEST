CREATE OR REPLACE PROCEDURE "SP_ODS_MBT_CAL_RPT_PROC2"(MBT_TABLENAME IN VARCHAR2,
                                                       RPT_WHERE_STRING IN VARCHAR2,
                                                       TABLE_KEY IN VARCHAR2) AS
    DSC       VARCHAR2(1000);
    BEGINTIME VARCHAR2(20);
    ENDTIME   VARCHAR2(20);
    SQLSTR1   CLOB;


BEGIN
    BEGINTIME := TO_CHAR(SYSDATE, 'YYYY-MM-DD HH24:MI:SS');
    DSC := '##=======处理上报标识SP_ODS_MBT_CAL_RPT_PROC2==开始' || BEGINTIME || '========##';
    DBMS_OUTPUT.PUT_LINE(DSC);

    SQLSTR1 := 'MERGE INTO ' || MBT_TABLENAME || ' A ' ||
               'USING ( ' ||
               'SELECT T1.DATA_ID, GET_ISRPT(T3.CFG_VALUE, T1.IS_RPT) AS IS_RPT
                FROM ' ||
               MBT_TABLENAME || ' T1 ' ||
               'INNER JOIN MBT_RPT_DATE_CODE_CFG T3
                         ON ' || RPT_WHERE_STRING || ' ' ||
                         'AND T1.DATA_STATUS = ''00''';

    IF TABLE_KEY IS NOT NULL THEN
        SQLSTR1 := SQLSTR1 || ' WHERE DATA_ID = ''' || TABLE_KEY || '''';
    END IF;
    SQLSTR1 := SQLSTR1 || ') B ON (A.DATA_ID = B.DATA_ID)
                WHEN MATCHED THEN UPDATE SET A.IS_RPT = B.IS_RPT';
    ENDTIME := TO_CHAR(SYSDATE, 'YYYY-MM-DD HH24:MI:SS');
    DBMS_OUTPUT.PUT_LINE('##=======处理上报标识SP_ODS_MBT_CAL_RPT_PROC2==结束' || ENDTIME || '========##：' || SQLSTR1);
    EXECUTE IMMEDIATE SQLSTR1;
    COMMIT;


END;
