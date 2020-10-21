CREATE OR REPLACE FUNCTION GET_ISRPT_CHANGE(PRI_ISRPT IN VARCHAR2, DATA_ISRPT IN VARCHAR2) RETURN VARCHAR2 AS
    /*
    Author: DENGCX
    Create Date: 20200924
    Description:
    覆盖mbt的时候根据变化量（1）设置数据记录的isrpt,DATA_ISRPT只能是主表的isprt
    */
    V_COUNT NUMBER(10)   := 0;
    V_STR   VARCHAR2(50) := 0;
    ISRPT   VARCHAR2(50) := NULL;
BEGIN

    IF TRIM(PRI_ISRPT) IS NULL THEN
        ISRPT := DATA_ISRPT;
    ELSE
        V_STR := DATA_ISRPT;
        IF INSTR(PRI_ISRPT, '|') > 0 THEN
            IF INSTR(V_STR, '|') > 0 THEN
                V_STR := SUBSTR(V_STR, 0, INSTR(V_STR, '|', 1) - 1);
            END IF;
            V_STR := V_STR || SUBSTR(PRI_ISRPT, INSTR(PRI_ISRPT, '|', 1));
        END IF;
        V_COUNT := LENGTH(V_STR);
        FOR I IN 1..V_COUNT
            LOOP
                IF SUBSTR(V_STR, I, 1) = '|' THEN
                    ISRPT := ISRPT || '|';
                ELSIF SUBSTR(V_STR, I, 1) = '1' THEN
                    ISRPT := ISRPT || '1';
                ELSE
                    ISRPT := ISRPT || SUBSTR(PRI_ISRPT, I, 1);
                END IF;
            END LOOP;
    END IF;
    RETURN ISRPT;
    DBMS_OUTPUT.PUT_LINE(ISRPT);

END;
