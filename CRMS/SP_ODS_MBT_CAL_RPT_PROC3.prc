CREATE OR REPLACE PROCEDURE "SP_ODS_MBT_CAL_RPT_PROC3"(MBT_TABLENAME IN VARCHAR2, --子表表名
                                            KEYWHERESTRING IN VARCHAR2, --比较对象过滤条件
                                            FIELD_ARRAY IN CLOB, --元素集合
                                            NATURAL_KEY_ARRAY IN CLOB, --业务主键集合
                                            PHASE_NUM IN NUMBER, --段标
                                            PARENT_TABLENAME IN VARCHAR2, --主表表名
                                            TABLE_KEY IN VARCHAR2) AS --记录id
    DSC             VARCHAR2(1000);

    ERRCODE         VARCHAR2(20);
    ERRMSG          VARCHAR2(1000);
    FIELDSTR        VARCHAR2(100);
    NATURAL_KEY_STR VARCHAR2(100);
    SQLSTR1         CLOB;
    COMPARE_STR_T1  CLOB;
    COMPARE_STR_T2  CLOB;
    COMPARE_STR_T3  CLOB;
    COMPARE_STR_S1  CLOB;
    COMPARE_STR_S2  CLOB;
    COMPARE_STR_S3  CLOB;

    CURSOR FIELD_SCUR IS
        SELECT REGEXP_SUBSTR(FIELD_ARRAY, '[^,]+', 1, ROWNUM) FIELD
        FROM DUAL
        CONNECT BY ROWNUM <= LENGTH(FIELD_ARRAY) -
                             LENGTH(REGEXP_REPLACE(FIELD_ARRAY, ',', '')) + 1;
    FIELD_ROW       FIELD_SCUR%ROWTYPE;
    CURSOR NATURAL_KEY_SCUR IS
        SELECT REGEXP_SUBSTR(NATURAL_KEY_ARRAY, '[^,]+', 1, ROWNUM) NATURAL_KEY
        FROM DUAL
        CONNECT BY ROWNUM <= LENGTH(NATURAL_KEY_ARRAY) -
                             LENGTH(REGEXP_REPLACE(NATURAL_KEY_ARRAY, ',', '')) + 1;
    NATURAL_KEY_ROW NATURAL_KEY_SCUR%ROWTYPE;
    --计算IS_RPT字段 1、TABLE_KEY 不为空代表从页面来的数据 2、PARENT_TABLENAME 不为空标识处理子表的数据
BEGIN
    DBMS_OUTPUT.ENABLE(BUFFER_SIZE => NULL);
    FOR FIELD_ROW IN FIELD_SCUR
        LOOP
            FIELDSTR := FIELD_ROW.FIELD;
            COMPARE_STR_T1 := COMPARE_STR_T1 || '|| A.' || FIELDSTR;
            COMPARE_STR_T2 := COMPARE_STR_T2 || '|| B.' || FIELDSTR;
            COMPARE_STR_T3 := COMPARE_STR_T3 || ', A.' || FIELDSTR;
        END LOOP;

    FOR NATURAL_KEY_ROW IN NATURAL_KEY_SCUR
        LOOP
            NATURAL_KEY_STR := NATURAL_KEY_ROW.NATURAL_KEY;
            COMPARE_STR_S1 := COMPARE_STR_S1 || ', A.' || NATURAL_KEY_STR;
            COMPARE_STR_S2 := COMPARE_STR_S2 || 'A.' || NATURAL_KEY_STR || ' = B.' || NATURAL_KEY_STR;
            COMPARE_STR_S3 := COMPARE_STR_S3 || 'T1.' || NATURAL_KEY_STR || ' = T2.' || NATURAL_KEY_STR;

        END LOOP;

DBMS_OUTPUT.PUT_LINE('COMPARE_STR_S2 :' || COMPARE_STR_S2);
DBMS_OUTPUT.PUT_LINE('COMPARE_STR_S3 :' || COMPARE_STR_S3);

    SQLSTR1 := 'MERGE INTO ' || PARENT_TABLENAME || ' A ' ||
               'USING ( ' ||
               'SELECT T1.DATA_ID, ' ||
               'T1.'|| NATURAL_KEY_ARRAY || ', ' ||
               'CASE ' ||
               'WHEN LENGTH(T1.IS_RPT) > ' || PHASE_NUM || '- 1 THEN ' ||
               'SUBSTR(T1.IS_RPT, 1, ' || PHASE_NUM || ' - 1) || REPLACE(SUBSTR(T1.IS_RPT, ' || PHASE_NUM ||
               ', 1), SUBSTR(T1.IS_RPT, ' || PHASE_NUM || ', 1), ' ||
               ' CASE WHEN T2.FLAG IS NULL THEN ''0'' ELSE T2.FLAG END) || ' ||
               'SUBSTR(T1.IS_RPT, ' || PHASE_NUM || ' + 1) ' ||
               'ELSE SUBSTR(T1.IS_RPT, 1, ' || PHASE_NUM ||
               ' - 1) || CASE WHEN T2.FLAG IS NULL THEN ''0'' ELSE T2.FLAG END END AS IS_RPT, ' ||
               'CASE WHEN T2.FLAG IS NULL THEN ''0'' ELSE T2.FLAG END AS FLAG ' || --若为null，1、mbt该标识的子段值为空，属于没有变化量， 2、mbt子段的值跟rpt子段值一致'
               'FROM ' || PARENT_TABLENAME || ' T1 ' ||
               'LEFT JOIN (' ||
               'SELECT ''1'' AS FLAG, ' || NATURAL_KEY_ARRAY ||
               ' FROM (' ||
               'SELECT CASE WHEN nvl(' || SUBSTR(COMPARE_STR_T1, 3) || ', 0) <> nvl(' || SUBSTR(COMPARE_STR_T2, 3) ||
               ', 0) THEN ''1'' ELSE ''0'' END AS FLAG, ' || --比较值，若mbt该标识下的子段记录有增加、减少、变化，即发送了变化，为1
               SUBSTR(COMPARE_STR_S1, 2) || ',' ||
               SUBSTR(COMPARE_STR_T3, 2) ||
               ' FROM (SELECT A.* ' ||
               ' FROM ' || MBT_TABLENAME || ' A, ' ||
               PARENT_TABLENAME || ' B ' ||
               'WHERE A.PDATA_ID = B.DATA_ID ' ||
               'AND B.DATA_SOURCE = ''2'' ' ||
               'AND B.DATA_STATUS = ''00'' ';
    IF TABLE_KEY IS NOT NULL THEN
        SQLSTR1 := SQLSTR1 || ' AND B.DATA_ID = ''' || TABLE_KEY || '''';
        DBMS_OUTPUT.PUT_LINE('SETP 5 :' || SQLSTR1);
    END IF;
    SQLSTR1 := SQLSTR1 || ') A ' ||
               'INNER JOIN ' ||
               '(SELECT A.* ' ||
               'FROM ' || MBT_TABLENAME || '_RPT A, ' ||
               --获取最近的非逾期款项的记录
               ' (SELECT * ' ||
               ' FROM (SELECT ROW_NUMBER() ' ||
               'OVER (PARTITION BY ' || NATURAL_KEY_ARRAY || ' ORDER BY B_RPT_DATE DESC) RN, ' ||
               'T.* ' ||
               'FROM ' || PARENT_TABLENAME || '_RPT T ' ||
               'WHERE ' || KEYWHERESTRING ||
               'AND DATA_STATUS = ''27'') ' ||
               'WHERE RN = 1 ' ||
               ') B ' ||
               'WHERE A.PDATA_ID = B.DATA_ID) B ' ||
               'ON ' || COMPARE_STR_S2 ||
               ' )' ||
               'WHERE FLAG > 0 ' ||
               'GROUP BY ' || NATURAL_KEY_ARRAY ||
               ' ) T2 ON ' || COMPARE_STR_S3 ||
               ' ) B ' ||
               'ON (A.DATA_ID = B.DATA_ID) ' ||
               'WHEN ' ||
               'MATCHED THEN ' ||
               'UPDATE ' ||
               'SET A.IS_RPT = B.IS_RPT ';
    IF TABLE_KEY IS NOT NULL THEN
        SQLSTR1 := SQLSTR1 || ' AND B.DATA_ID = ''' || TABLE_KEY || '''';
        DBMS_OUTPUT.PUT_LINE('SETP 5 :' || SQLSTR1);
    END IF;


    DBMS_OUTPUT.PUT_LINE('=======SP_ODS_MBT_IS_RPT_PROC3=======: ' || SQLSTR1);
    EXECUTE IMMEDIATE SQLSTR1;
    COMMIT;

/*EXCEPTION
  WHEN OTHERS THEN
    ERRCODE := SQLCODE;
    ERRMSG  := SUBSTR(SQLERRM, 1, 200);
    DBMS_OUTPUT.PUT_LINE(DSC || ' 失败：
                  ' || ERRMSG);
    SP_MBT_LOG(1,
               'SP_ODS_MBT_IS_RPT_PROC：SP_' || MBT_TABLENAME,
               ' ERROR11001 ',
               DSC || ' 失败： ' || ERRMSG,
               ERRCODE,
               ERRMSG);*/
END;
/
