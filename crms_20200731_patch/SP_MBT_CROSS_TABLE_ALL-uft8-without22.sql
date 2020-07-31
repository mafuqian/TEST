prompt PL/SQL Developer Export User Objects for user MBT_USER@10.1.3.62/ORADB
prompt Created by 77164 on 2020骞?鏈?0鏃?
set define off
spool SP_MBT_CROSS_TABLE_ALL.log

prompt
prompt Creating procedure SP_MBT_CROSS_TABLE_120
prompt =========================================
prompt
CREATE OR REPLACE PROCEDURE "SP_MBT_CROSS_TABLE_120"( V_RPT_DATA_TYPE IN VARCHAR2,----信息报送类型（表名）
                                                                 V_RPT_DATA_NO   IN VARCHAR2,--信息报送编号（校验编号）
                                                                 V_RPT_DATE      IN VARCHAR2,--信息报告日期
                                                                 V_BUS_EXPLAIN   IN VARCHAR2,--业务说明
                                                                 ERR_CODE        OUT VARCHAR,--错误码
                                                                 ERR_MSG         OUT VARCHAR --错误信息
) AS
  V_SYSDATE VARCHAR(8);
  V_SYSTIME VARCHAR(14);
  V_BUS_VALIDATE_DESC VARCHAR2(4000);
  /**
    120-家族关系信息  表间校验
    关联【110-个人基本信息】，检查“A姓名”、“A证件类型”、“A证件号码”是否匹配存在；
    “匹配存在”指关联检查的本体信息记录已经报送过或本次会一起报送。
   */

  BEGIN
    V_SYSDATE := TO_CHAR(SYSDATE, 'YYYYMMDD');
    V_SYSTIME := TO_CHAR(SYSDATE, 'YYYYMMDDHH24MISS');
    ERR_CODE  := '00';
    ERR_MSG   := 'OK';


    BEGIN

      IF V_RPT_DATA_NO = '2019MBT120A001' THEN
        --先删除当前跨表校验的数据
        DELETE FROM MBT_CROSS_TABLE_VALIDATE WHERE RPT_DATA_TYPE=V_RPT_DATA_TYPE AND RPT_DATA_NO = V_RPT_DATA_NO AND RPT_DATE = V_RPT_DATE;
        /**
        关联【110-个人基本信息】，检查“A姓名”、“A证件类型”、“A证件号码”是否匹配存在；
         */
        declare
          cursor table_cur is
            select * from mbt_120 a where 1=1 and a.data_status != 22 and a.RPT_DATE=V_RPT_DATE AND 1=2 and not exists
            (select 1 from (
                             SELECT DISTINCT B_NAME,B_ID_TYPE,B_ID_NUM FROM (
                               select B_NAME,B_ID_TYPE,B_ID_NUM  from mbt_110 where B_RPT_DATE = V_RPT_DATE
                               union all
                               select B_NAME,B_ID_TYPE,B_ID_NUM from  mbt_110_rpt )
                           ) b where A.NAME=B.B_NAME AND A.ID_NUM=B.B_ID_NUM AND A.ID_TYPE=B.B_ID_TYPE);
        begin
          for REC in table_cur loop
            V_BUS_VALIDATE_DESC := '关联【110-个人基本信息】，检查“A姓名”:'||REC.NAME||'、“A证件类型”：'||REC.ID_TYPE||'、“A证件号码”：'||REC.ID_NUM||'是否匹配存在；';
            INSERT INTO MBT_CROSS_TABLE_VALIDATE (RSV1,DATA_ID, DATA_DATE,  BUS_DATA_ID, BUS_CORP_ID, BUS_ORG_ID, BUS_GROUP_ID, BUS_CLASS, RPT_DATA_TYPE, RPT_DATA_NO, VALIDATE_TYPE, BUS_VALIDATE_DESC, BUS_EXPLAIN, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, RPT_DATE) VALUES
              ('家族关系信息',GET_DATA_ID(V_SYSDATE), V_SYSDATE,  REC.DATA_ID, REC.CORP_ID, REC.ORG_ID, REC.GROUP_ID, 'P', V_RPT_DATA_TYPE, V_RPT_DATA_NO, '跨表校验', V_BUS_VALIDATE_DESC, V_BUS_EXPLAIN, 'SYS', V_SYSDATE, V_SYSTIME, V_RPT_DATE);
            /**
              同时更新原始数据的数据状态。
             */
          --  update mbt_120 set CHECK_FLAG='L' , DATA_STATUS ='00' WHERE DATA_ID=REC.DATA_ID;
            ERR_CODE  := '98';
            ERR_MSG   := '存在校验失败的数据。';
          end loop;
          EXCEPTION
            WHEN OTHERS THEN
            ERR_CODE := SQLCODE;
            ERR_MSG  := SUBSTR(SQLERRM, 1, 200);
            ROLLBACK;
            RETURN;
        END;
        COMMIT;

      ELSE
        ERR_CODE:='99';
        ERR_MSG :='校验编号不正确。';
      END IF ;

    END;

  END;
/

prompt
prompt Creating procedure SP_MBT_CROSS_TABLE_130
prompt =========================================
prompt
CREATE OR REPLACE PROCEDURE "SP_MBT_CROSS_TABLE_130"( V_RPT_DATA_TYPE IN VARCHAR2,----信息报送类型（表名）
                                                      V_RPT_DATA_NO   IN VARCHAR2,--信息报送编号（校验编号）
                                                      V_RPT_DATE      IN VARCHAR2,--信息报告日期
                                                      V_BUS_EXPLAIN   IN VARCHAR2,--业务说明
                                                      ERR_CODE        OUT VARCHAR,--错误码
                                                      ERR_MSG         OUT VARCHAR --错误信息
) AS
V_SYSDATE VARCHAR(8);
V_SYSTIME VARCHAR(14);
V_BUS_VALIDATE_DESC VARCHAR2(4000);

  /**
130-个人证件有效期信息  表间校验
关联【110-个人基本信息】，检查“姓名”、“证件类型”、“证件号码”是否匹配存在；
“匹配存在”指关联检查的本体信息记录已经报送过或本次会一起报送。
 */


  BEGIN
  V_SYSDATE := TO_CHAR(SYSDATE, 'YYYYMMDD');
  V_SYSTIME := TO_CHAR(SYSDATE, 'YYYYMMDDHH24MISS');
  ERR_CODE  := '00';
  ERR_MSG   := 'OK';

  BEGIN

    IF V_RPT_DATA_NO = '2019MBT130A002' THEN
      --先删除当前跨表校验的数据
      DELETE FROM MBT_CROSS_TABLE_VALIDATE WHERE RPT_DATA_TYPE=V_RPT_DATA_TYPE AND RPT_DATA_NO = V_RPT_DATA_NO AND RPT_DATE = V_RPT_DATE;
      /**
      关联【110-个人基本信息】，检查“姓名”、“证件类型”、“证件号码”是否匹配存在；
       */
      declare
        cursor table_cur is
          select * from mbt_130 a where 1=1 and a.data_status != 22 and a.RPT_DATE=V_RPT_DATE AND 1=2 and not exists
          (select 1 from (
                           SELECT DISTINCT B_NAME,B_ID_TYPE,B_ID_NUM FROM (
                             select B_NAME,B_ID_TYPE,B_ID_NUM  from mbt_110 where B_RPT_DATE = V_RPT_DATE
                             union all
                             select B_NAME,B_ID_TYPE,B_ID_NUM from  mbt_110_rpt )
                         ) b where A.NAME=B.B_NAME AND A.ID_NUM=B.B_ID_NUM AND A.ID_TYPE=B.B_ID_TYPE);
      begin
        for REC in table_cur loop
          V_BUS_VALIDATE_DESC := '关联【110-个人基本信息】，检查“A姓名”:'||REC.NAME||'、“A证件类型”：'||REC.ID_TYPE||'、“A证件号码”：'||REC.ID_NUM||'是否匹配存在。';
          INSERT INTO MBT_CROSS_TABLE_VALIDATE (RSV1,DATA_ID, DATA_DATE,  BUS_DATA_ID, BUS_CORP_ID, BUS_ORG_ID, BUS_GROUP_ID, BUS_CLASS, RPT_DATA_TYPE, RPT_DATA_NO, VALIDATE_TYPE, BUS_VALIDATE_DESC, BUS_EXPLAIN, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, RPT_DATE) VALUES
            ('个人证件有效期信息',GET_DATA_ID(V_SYSDATE), V_SYSDATE,  REC.DATA_ID, REC.CORP_ID, REC.ORG_ID, REC.GROUP_ID, 'P', V_RPT_DATA_TYPE, V_RPT_DATA_NO, '跨表校验', V_BUS_VALIDATE_DESC, V_BUS_EXPLAIN, 'SYS', V_SYSDATE, V_SYSTIME, V_RPT_DATE);
          /**
            同时更新原始数据的数据状态。
           */
         -- update mbt_130 set CHECK_FLAG='L' , DATA_STATUS ='00' WHERE DATA_ID=REC.DATA_ID;
          ERR_CODE  := '98';
          ERR_MSG   := '存在校验失败的数据。';
        end loop;
        EXCEPTION
          WHEN OTHERS THEN
          ERR_CODE := SQLCODE;
          ERR_MSG  := SUBSTR(SQLERRM, 1, 200);
          ROLLBACK;
          RETURN;
      END;
      COMMIT;

    ELSE
      ERR_CODE:='99';
      ERR_MSG :='校验编号不正确。';
    END IF ;

  END;
END;
/

prompt
prompt Creating procedure SP_MBT_CROSS_TABLE_140
prompt =========================================
prompt
CREATE OR REPLACE PROCEDURE "SP_MBT_CROSS_TABLE_140"( V_RPT_DATA_TYPE IN VARCHAR2,--信息报送类型（表名）
                                                      V_RPT_DATA_NO   IN VARCHAR2,--信息报送编号（校验编号）
                                                      V_RPT_DATE      IN VARCHAR2,--信息报告日期
                                                      V_BUS_EXPLAIN   IN VARCHAR2,--业务说明
                                                      ERR_CODE        OUT VARCHAR,--错误码
                                                      ERR_MSG         OUT VARCHAR --错误信息
) AS
V_SYSDATE VARCHAR(8);
V_SYSTIME VARCHAR(14);
V_BUS_VALIDATE_DESC VARCHAR2(4000);

  /**
  140-个人证件整合信息  表间校验
  关联【110-个人基本信息】，检查“姓名”、“证件类型”、“证件号码”是否匹配存在；
  "通常情况下，大多数数据提供机构不需要使用“个人证件整合信息记录”。
  若数据提供机构掌握一个客户的多个身份标识，直接在报送“个人基本信息记录”时使用“其他标识段”即可同时报送客户的多个身份标识，所以该检查暂不使用。"

   */

BEGIN
  V_SYSDATE := TO_CHAR(SYSDATE, 'YYYYMMDD');
  V_SYSTIME := TO_CHAR(SYSDATE, 'YYYYMMDDHH24MISS');
  ERR_CODE  := '00';
  ERR_MSG   := 'OK';

  BEGIN

    IF V_RPT_DATA_NO = '2019MBT140A003' THEN
      --先删除当前跨表校验的数据
      DELETE FROM MBT_CROSS_TABLE_VALIDATE WHERE RPT_DATA_TYPE=V_RPT_DATA_TYPE AND RPT_DATA_NO = V_RPT_DATA_NO AND RPT_DATE = V_RPT_DATE;
      /**
        关联【110-个人基本信息】，检查“姓名”、“证件类型”、“证件号码”是否匹配存在；
       */
      declare
        cursor table_cur is
          select * from mbt_140 a where 1=1 and a.data_status != 22 and a.RPT_DATE=V_RPT_DATE AND 1=2 and not exists
          (select 1 from (
                           SELECT DISTINCT B_NAME,B_ID_TYPE,B_ID_NUM FROM (
                             select B_NAME,B_ID_TYPE,B_ID_NUM  from mbt_110 where B_RPT_DATE = V_RPT_DATE
                             union all
                             select B_NAME,B_ID_TYPE,B_ID_NUM from  mbt_110_rpt )
                         ) b where A.NAME=B.B_NAME AND A.ID_NUM=B.B_ID_NUM AND A.ID_TYPE=B.B_ID_TYPE);
      begin
        for REC in table_cur loop
          V_BUS_VALIDATE_DESC := '关联【110-个人基本信息】，检查“姓名”:'||REC.NAME||'、“证件类型”：'||REC.ID_TYPE||'、“证件号码”：'||REC.ID_NUM||'是否匹配存在；';
          INSERT INTO MBT_CROSS_TABLE_VALIDATE (RSV1,DATA_ID, DATA_DATE,  BUS_DATA_ID, BUS_CORP_ID, BUS_ORG_ID, BUS_GROUP_ID, BUS_CLASS, RPT_DATA_TYPE, RPT_DATA_NO, VALIDATE_TYPE, BUS_VALIDATE_DESC, BUS_EXPLAIN, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, RPT_DATE) VALUES
            ('个人证件整合信息',GET_DATA_ID(V_SYSDATE), V_SYSDATE,  REC.DATA_ID, REC.CORP_ID, REC.ORG_ID, REC.GROUP_ID, 'P', V_RPT_DATA_TYPE, V_RPT_DATA_NO, '跨表校验', V_BUS_VALIDATE_DESC, V_BUS_EXPLAIN, 'SYS', V_SYSDATE, V_SYSTIME, V_RPT_DATE);
          /**
            同时更新原始数据的数据状态。
           */
         -- update mbt_140 set CHECK_FLAG='L' , DATA_STATUS ='00' WHERE DATA_ID=REC.DATA_ID;
          ERR_CODE  := '98';
          ERR_MSG   := '存在校验失败的数据。';
        END LOOP ;
        EXCEPTION
          WHEN OTHERS THEN
          ERR_CODE := SQLCODE;
          ERR_MSG  := SUBSTR(SQLERRM, 1, 200);
          ROLLBACK;
          RETURN;
      END;
      COMMIT;
    ELSE
      ERR_CODE:='99';
      ERR_MSG :='校验编号不正确。';
    END IF ;

  END;

END;
/

prompt
prompt Creating procedure SP_MBT_CROSS_TABLE_210
prompt =========================================
prompt
CREATE OR REPLACE PROCEDURE "SP_MBT_CROSS_TABLE_210"( V_RPT_DATA_TYPE IN VARCHAR2,----信息报送类型（表名）
                                                      V_RPT_DATA_NO   IN VARCHAR2,--信息报送编号（校验编号）
                                                      V_RPT_DATE      IN VARCHAR2,--信息报告日期
                                                      V_BUS_EXPLAIN   IN VARCHAR2,--业务说明
                                                      ERR_CODE        OUT VARCHAR,--错误码
                                                      ERR_MSG         OUT VARCHAR --错误信息
) AS
V_SYSDATE VARCHAR(8);
V_SYSTIME VARCHAR(14);
V_BUS_VALIDATE_DESC VARCHAR2(4000);

  /**
1.  210-个人借贷账户信息  表间校验
    关联【110-个人基本信息】，检查“借款人姓名”、“借款人证件类型”、“借款人证件号码”是否匹配存在；
    “匹配存在”指关联检查的本体信息记录已经报送过或本次会一起报送。
2.  210-个人借贷账户信息  表间校验
    如果“抵质押合同个数”大于0，关联【510-抵（质）押合同信息】，检查“抵（质）押合同标识码”是否匹配存在；
    “匹配存在”指关联检查的本体信息记录已经报送过或本次会一起报送。
3.  210-个人借贷账户信息  表间校验
    关联【220-个人授信协议信息】，检查“授信协议标识码”是否匹配存在；
    “匹配存在”指关联检查的本体信息记录已经报送过或本次会一起报送。

 */

BEGIN
  V_SYSDATE := TO_CHAR(SYSDATE, 'YYYYMMDD');
  V_SYSTIME := TO_CHAR(SYSDATE, 'YYYYMMDDHH24MISS');
  ERR_CODE  := '00';
  ERR_MSG   := 'OK';



  BEGIN

    IF V_RPT_DATA_NO = '2019MBT210A004' THEN
      --先删除当前跨表校验的数据
      DELETE FROM MBT_CROSS_TABLE_VALIDATE WHERE RPT_DATA_TYPE=V_RPT_DATA_TYPE AND RPT_DATA_NO = V_RPT_DATA_NO AND RPT_DATE = V_RPT_DATE;

      /**
        关联【110-个人基本信息】，检查“借款人姓名”、“借款人证件类型”、“借款人证件号码”是否匹配存在；
       */
      declare
        cursor table_cur is
          select * from mbt_210 a where 1=1 and a.data_status != 22 and a.B_RPT_DATE=V_RPT_DATE AND a.B_RPT_DATE_CODE NOT IN ('88','99') and not exists
          (select 1 from (
                           SELECT DISTINCT B_NAME,B_ID_TYPE,B_ID_NUM FROM (
                             select B_NAME,B_ID_TYPE,B_ID_NUM  from mbt_110 where B_RPT_DATE = V_RPT_DATE
                             union all
                             select B_NAME,B_ID_TYPE,B_ID_NUM from  mbt_110_rpt )
                         ) b where A.B_NAME=B.B_NAME AND A.B_ID_NUM=B.B_ID_NUM AND A.B_ID_TYPE=B.B_ID_TYPE);
      begin
        for REC in table_cur loop
          V_BUS_VALIDATE_DESC := '关联【110-个人基本信息】，检查“A姓名”:'||REC.B_NAME||'、“A证件类型”：'||REC.B_ID_TYPE||'、“A证件号码”：'||REC.B_ID_NUM||'是否匹配存在；';
          INSERT INTO MBT_CROSS_TABLE_VALIDATE (RSV1,DATA_ID, DATA_DATE,  BUS_DATA_ID, BUS_CORP_ID, BUS_ORG_ID, BUS_GROUP_ID, BUS_CLASS, RPT_DATA_TYPE, RPT_DATA_NO, VALIDATE_TYPE, BUS_VALIDATE_DESC, BUS_EXPLAIN, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, RPT_DATE) VALUES
            ('个人借贷账户信息',GET_DATA_ID(V_SYSDATE), V_SYSDATE,  REC.DATA_ID, REC.CORP_ID, REC.ORG_ID, REC.GROUP_ID, 'P', V_RPT_DATA_TYPE, V_RPT_DATA_NO, '跨表校验', V_BUS_VALIDATE_DESC, V_BUS_EXPLAIN, 'SYS', V_SYSDATE, V_SYSTIME, V_RPT_DATE);
          /**
            同时更新原始数据的数据状态。
           */
         -- update mbt_210 set CHECK_FLAG='L' , DATA_STATUS ='00' WHERE DATA_ID=REC.DATA_ID;
          ERR_CODE  := '98';
          ERR_MSG   := '存在校验失败的数据。';
        END LOOP ;
        EXCEPTION
        WHEN OTHERS THEN
        ERR_CODE := SQLCODE;
        ERR_MSG  := SUBSTR(SQLERRM, 1, 200);
        ROLLBACK;
        RETURN;
      END;
      COMMIT;
    ELSIF V_RPT_DATA_NO = '2019MBT210A005' THEN
      --先删除当前跨表校验的数据
      DELETE FROM MBT_CROSS_TABLE_VALIDATE WHERE RPT_DATA_TYPE=V_RPT_DATA_TYPE AND RPT_DATA_NO = V_RPT_DATA_NO AND RPT_DATE = V_RPT_DATE;

      /**
        如果“抵质押合同个数”大于0，关联【510-抵（质）押合同信息】，检查“抵（质）押合同标识码”是否匹配存在；
       */
      declare
        cursor table_cur is
          select distinct a.*,b.E_CCC from mbt_210 a inner join MBT_210_E b on a.DATA_ID=b.PDATA_ID where 1=1
            AND a.B_RPT_DATE_CODE NOT IN ('88','99')
            AND A.B_RPT_DATE=V_RPT_DATE
            AND NOT EXISTS (
                SELECT 1 FROM (
                    select DISTINCT B_CC_CODE FROM (
                      SELECT B_CC_CODE FROM MBT_510 where CUST_TYPE='P' AND B_RPT_DATE=V_RPT_DATE
                      UNION ALL
                      SELECT B_CC_CODE FROM MBT_510_RPT where CUST_TYPE='P' )
                  )c WHERE b.E_CCC=c.B_CC_CODE
          );
      begin
        for REC in table_cur loop
          V_BUS_VALIDATE_DESC := '如果“抵质押合同个数”大于0，关联【510-抵（质）押合同信息】，检查“抵（质）押合同标识码”:'||REC.E_CCC||'是否匹配存在';
          INSERT INTO MBT_CROSS_TABLE_VALIDATE (RSV1,DATA_ID, DATA_DATE,  BUS_DATA_ID, BUS_CORP_ID, BUS_ORG_ID, BUS_GROUP_ID, BUS_CLASS, RPT_DATA_TYPE, RPT_DATA_NO, VALIDATE_TYPE, BUS_VALIDATE_DESC, BUS_EXPLAIN, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, RPT_DATE) VALUES
            ('个人借贷账户信息',GET_DATA_ID(V_SYSDATE), V_SYSDATE,  REC.DATA_ID, REC.CORP_ID, REC.ORG_ID, REC.GROUP_ID, 'P', V_RPT_DATA_TYPE, V_RPT_DATA_NO, '跨表校验', V_BUS_VALIDATE_DESC, V_BUS_EXPLAIN, 'SYS', V_SYSDATE, V_SYSTIME, V_RPT_DATE);
          /**
            同时更新原始数据的数据状态。
           */
          --update mbt_210 set CHECK_FLAG='L' , DATA_STATUS ='00' WHERE DATA_ID=REC.DATA_ID;
          ERR_CODE  := '98';
          ERR_MSG   := '存在校验失败的数据。';
        END LOOP ;
        EXCEPTION
        WHEN OTHERS THEN
        ERR_CODE := SQLCODE;
        ERR_MSG  := SUBSTR(SQLERRM, 1, 200);
        ROLLBACK;
        RETURN;
      END;
      COMMIT;

    ELSIF V_RPT_DATA_NO = '2019MBT210A006' THEN
      --先删除当前跨表校验的数据
      DELETE FROM MBT_CROSS_TABLE_VALIDATE WHERE RPT_DATA_TYPE=V_RPT_DATA_TYPE AND RPT_DATA_NO = V_RPT_DATA_NO AND RPT_DATE = V_RPT_DATE;

      /**
        关联【220-个人授信协议信息】，检查“授信协议标识码”是否匹配存在；
       */
      declare
        cursor table_cur is
          select * from mbt_210 a where 1=1 and a.data_status != 22 and a.B_RPT_DATE=V_RPT_DATE AND a.B_RPT_DATE_CODE NOT IN ('88','99') and not exists
          (select 1 from (
                           SELECT DISTINCT B_CONTRACT_CODE FROM (
                             select B_CONTRACT_CODE from mbt_220 where B_RPT_DATE = V_RPT_DATE
                             union all
                             select B_CONTRACT_CODE from  mbt_220_rpt )
                         ) b where A.F_MCC=B.B_CONTRACT_CODE);
      begin
        for REC in table_cur loop
          V_BUS_VALIDATE_DESC := '关联【220-个人授信协议信息】，检查“授信协议标识码”:'||REC.F_MCC||'是否匹配存在；';
          INSERT INTO MBT_CROSS_TABLE_VALIDATE (RSV1,DATA_ID, DATA_DATE,  BUS_DATA_ID, BUS_CORP_ID, BUS_ORG_ID, BUS_GROUP_ID, BUS_CLASS, RPT_DATA_TYPE, RPT_DATA_NO, VALIDATE_TYPE, BUS_VALIDATE_DESC, BUS_EXPLAIN, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, RPT_DATE) VALUES
            ('个人借贷账户信息',GET_DATA_ID(V_SYSDATE), V_SYSDATE,  REC.DATA_ID, REC.CORP_ID, REC.ORG_ID, REC.GROUP_ID, 'P', V_RPT_DATA_TYPE, V_RPT_DATA_NO, '跨表校验', V_BUS_VALIDATE_DESC, V_BUS_EXPLAIN, 'SYS', V_SYSDATE, V_SYSTIME, V_RPT_DATE);
          /**
            同时更新原始数据的数据状态。
           */
         -- update mbt_210 set CHECK_FLAG='L' , DATA_STATUS ='00' WHERE DATA_ID=REC.DATA_ID;
          ERR_CODE  := '98';
          ERR_MSG   := '存在校验失败的数据。';
        END LOOP ;
        EXCEPTION
        WHEN OTHERS THEN
        ERR_CODE := SQLCODE;
        ERR_MSG  := SUBSTR(SQLERRM, 1, 200);
        ROLLBACK;
        RETURN;
      END;
      COMMIT;

    ELSE
      ERR_CODE:='99';
      ERR_MSG :='校验编号不正确。';
    END IF ;

  END;



END;
/

prompt
prompt Creating procedure SP_MBT_CROSS_TABLE_212
prompt =========================================
prompt
CREATE OR REPLACE PROCEDURE "SP_MBT_CROSS_TABLE_212"( V_RPT_DATA_TYPE IN VARCHAR2,----信息报送类型（表名）
                                                      V_RPT_DATA_NO   IN VARCHAR2,--信息报送编号（校验编号）
                                                      V_RPT_DATE      IN VARCHAR2,--信息报告日期
                                                      V_BUS_EXPLAIN   IN VARCHAR2,--业务说明
                                                      ERR_CODE        OUT VARCHAR,--错误码
                                                      ERR_MSG         OUT VARCHAR --错误信息
) AS
V_SYSDATE VARCHAR(8);
V_SYSTIME VARCHAR(14);
V_BUS_VALIDATE_DESC VARCHAR2(4000);

  /**
1、  212-个人借贷账户按段更正  表间校验
    如果更正“抵（质）押合同标识码”信息，则关联【510-抵（质）押合同信息】，检查“抵（质）押合同标识码”是否匹配存在；
    “匹配存在”指关联检查的本体信息记录已经报送过或本次会一起报送。
2、  212-个人借贷账户按段更正  表间校验
    如果更正“授信协议标识码”信息，则关联【220-个人授信协议信息】，检查“授信协议标识码”是否匹配存在；
    “匹配存在”指关联检查的本体信息记录已经报送过或本次会一起报送。

 */

BEGIN
  V_SYSDATE := TO_CHAR(SYSDATE, 'YYYYMMDD');
  V_SYSTIME := TO_CHAR(SYSDATE, 'YYYYMMDDHH24MISS');
  ERR_CODE  := '00';
  ERR_MSG   := 'OK';



  BEGIN

    IF V_RPT_DATA_NO = '2019MBT212A007' THEN
      --先删除当前跨表校验的数据
      DELETE FROM MBT_CROSS_TABLE_VALIDATE WHERE RPT_DATA_TYPE=V_RPT_DATA_TYPE AND RPT_DATA_NO = V_RPT_DATA_NO AND RPT_DATE = V_RPT_DATE;

      /**
       如果更正“抵（质）押合同标识码”信息，则关联【510-抵（质）押合同信息】，检查“抵（质）押合同标识码”是否匹配存在；
       */
      declare
        cursor table_cur is
          select distinct a.*,b.E_CCC from MBT_210_EX a inner join MBT_210_E_EX b on a.DATA_ID=b.PDATA_ID where 1=1
                  AND a.B_RPT_DATE_CODE NOT IN ('88','99')
                  AND A.PART_TYPE LIKE '%E%'
                  AND A.B_RPT_DATE=V_RPT_DATE
                  AND NOT EXISTS (
              SELECT 1 FROM (
                              select DISTINCT B_CC_CODE FROM (
                                SELECT B_CC_CODE FROM MBT_510 where CUST_TYPE='P' AND B_RPT_DATE=V_RPT_DATE
                                UNION ALL
                                SELECT B_CC_CODE FROM MBT_510_RPT where CUST_TYPE='P' )
                            )c WHERE b.E_CCC=c.B_CC_CODE
          );
      begin
        for REC in table_cur loop
          V_BUS_VALIDATE_DESC := '如果更正“抵（质）押合同标识码”信息，则关联【510-抵（质）押合同信息】，检查“抵（质）押合同标识码”:'||REC.E_CCC||'是否匹配存在；';
          INSERT INTO MBT_CROSS_TABLE_VALIDATE (RSV1,DATA_ID, DATA_DATE,  BUS_DATA_ID, BUS_CORP_ID, BUS_ORG_ID, BUS_GROUP_ID, BUS_CLASS, RPT_DATA_TYPE, RPT_DATA_NO, VALIDATE_TYPE, BUS_VALIDATE_DESC, BUS_EXPLAIN, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, RPT_DATE) VALUES
            ('个人借贷账户按段更正',GET_DATA_ID(V_SYSDATE), V_SYSDATE,  REC.DATA_ID, REC.CORP_ID, REC.ORG_ID, REC.GROUP_ID, 'P', V_RPT_DATA_TYPE, V_RPT_DATA_NO, '跨表校验', V_BUS_VALIDATE_DESC, V_BUS_EXPLAIN, 'SYS', V_SYSDATE, V_SYSTIME, V_RPT_DATE);
          /**
            同时更新原始数据的数据状态。
           */
         -- update MBT_210_EX set CHECK_FLAG='L' , DATA_STATUS ='00' WHERE DATA_ID=REC.DATA_ID;
          ERR_CODE  := '98';
          ERR_MSG   := '存在校验失败的数据。';
        END LOOP ;
        EXCEPTION
          WHEN OTHERS THEN
          ERR_CODE := SQLCODE;
          ERR_MSG  := SUBSTR(SQLERRM, 1, 200);
          ROLLBACK;
          RETURN;
      END;
      COMMIT;

    ELSIF V_RPT_DATA_NO = '2019MBT212A008' THEN
      --先删除当前跨表校验的数据
      DELETE FROM MBT_CROSS_TABLE_VALIDATE WHERE RPT_DATA_TYPE=V_RPT_DATA_TYPE AND RPT_DATA_NO = V_RPT_DATA_NO AND RPT_DATE = V_RPT_DATE;

      /**
        如果更正“授信协议标识码”信息，则关联【220-个人授信协议信息】，检查“授信协议标识码”是否匹配存在；
       */
      declare
        cursor table_cur is
          select * from MBT_210_EX a where 1=1 and a.data_status != 22 and a.B_RPT_DATE=V_RPT_DATE AND a.B_RPT_DATE_CODE NOT IN ('88','99') AND A.PART_TYPE LIKE '%F%' and not exists
          (select 1 from (
                           SELECT DISTINCT B_CONTRACT_CODE FROM (
                             select B_CONTRACT_CODE from mbt_220 where B_RPT_DATE = V_RPT_DATE
                             union all
                             select B_CONTRACT_CODE from  mbt_220_rpt )
                         ) b where A.F_MCC=B.B_CONTRACT_CODE);
      begin
        for REC in table_cur loop
          V_BUS_VALIDATE_DESC := '如果更正“授信协议标识码”信息，则关联【220-个人授信协议信息】，检查“授信协议标识码”:'||REC.F_MCC||'是否匹配存在；';
          INSERT INTO MBT_CROSS_TABLE_VALIDATE (RSV1,DATA_ID, DATA_DATE,  BUS_DATA_ID, BUS_CORP_ID, BUS_ORG_ID, BUS_GROUP_ID, BUS_CLASS, RPT_DATA_TYPE, RPT_DATA_NO, VALIDATE_TYPE, BUS_VALIDATE_DESC, BUS_EXPLAIN, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, RPT_DATE) VALUES
            ('个人借贷账户按段更正',GET_DATA_ID(V_SYSDATE), V_SYSDATE,  REC.DATA_ID, REC.CORP_ID, REC.ORG_ID, REC.GROUP_ID, 'P', V_RPT_DATA_TYPE, V_RPT_DATA_NO, '跨表校验', V_BUS_VALIDATE_DESC, V_BUS_EXPLAIN, 'SYS', V_SYSDATE, V_SYSTIME, V_RPT_DATE);
          /**
            同时更新原始数据的数据状态。
           */
         -- update MBT_210_EX set CHECK_FLAG='L' , DATA_STATUS ='00' WHERE DATA_ID=REC.DATA_ID;
       ERR_CODE  := '98';
          ERR_MSG   := '存在校验失败的数据。';
        END LOOP ;
        EXCEPTION
          WHEN OTHERS THEN
          ERR_CODE := SQLCODE;
          ERR_MSG  := SUBSTR(SQLERRM, 1, 200);
          ROLLBACK;
          RETURN;
      END;
      COMMIT;

    ELSE
      ERR_CODE:='99';
      ERR_MSG :='校验编号不正确。';
    END IF ;

  END;


END;
/

prompt
prompt Creating procedure SP_MBT_CROSS_TABLE_215
prompt =========================================
prompt
CREATE OR REPLACE PROCEDURE "SP_MBT_CROSS_TABLE_215"( V_RPT_DATA_TYPE IN VARCHAR2,----信息报送类型（表名）
                                                      V_RPT_DATA_NO   IN VARCHAR2,--信息报送编号（校验编号）
                                                      V_RPT_DATE      IN VARCHAR2,--信息报告日期
                                                      V_BUS_EXPLAIN   IN VARCHAR2,--业务说明
                                                      ERR_CODE        OUT VARCHAR,--错误码
                                                      ERR_MSG         OUT VARCHAR --错误信息
) AS
V_SYSDATE VARCHAR(8);
V_SYSTIME VARCHAR(14);
V_BUS_VALIDATE_DESC VARCHAR2(4000);

  /**
      215-个人借贷账户特殊事件说明  表间校验
      关联【210-个人借贷账户信息】，检查“账户标识码”是否匹配存在；
      “匹配存在”指关联检查的本体信息记录已经报送过或本次会一起报送。
   */

BEGIN
  V_SYSDATE := TO_CHAR(SYSDATE, 'YYYYMMDD');
  V_SYSTIME := TO_CHAR(SYSDATE, 'YYYYMMDDHH24MISS');
  ERR_CODE  := '00';
  ERR_MSG   := 'OK';

  BEGIN

    IF V_RPT_DATA_NO = '2019MBT215A009' THEN
      --先删除当前跨表校验的数据
      DELETE FROM MBT_CROSS_TABLE_VALIDATE WHERE RPT_DATA_TYPE=V_RPT_DATA_TYPE AND RPT_DATA_NO = V_RPT_DATA_NO AND RPT_DATE = V_RPT_DATE;
      --关联【210-个人借贷账户信息】，检查“账户标识码”是否匹配存在；
      declare
        cursor table_cur is
          select * from mbt_215 a where 1=1 and a.data_status != 22 and a.RPT_DATE=V_RPT_DATE AND 1=2 and not exists
          (select 1 from (
                           SELECT DISTINCT B_ACCT_CODE FROM (
                             select B_ACCT_CODE  from mbt_210 where B_RPT_DATE = V_RPT_DATE
                             union all
                             select B_ACCT_CODE from  mbt_210_rpt )
                         ) b where A.ACCT_CODE=B.B_ACCT_CODE);
      begin
        for REC in table_cur loop
          V_BUS_VALIDATE_DESC := '关联【210-个人借贷账户信息】，检查“账户标识码”：'||REC.ACCT_CODE||'是否匹配存在；';
          INSERT INTO MBT_CROSS_TABLE_VALIDATE (RSV1,DATA_ID, DATA_DATE,  BUS_DATA_ID, BUS_CORP_ID, BUS_ORG_ID, BUS_GROUP_ID, BUS_CLASS, RPT_DATA_TYPE, RPT_DATA_NO, VALIDATE_TYPE, BUS_VALIDATE_DESC, BUS_EXPLAIN, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, RPT_DATE) VALUES
            ('个人借贷账户特殊事件说明',GET_DATA_ID(V_SYSDATE), V_SYSDATE,  REC.DATA_ID, REC.CORP_ID, REC.ORG_ID, REC.GROUP_ID, 'P', V_RPT_DATA_TYPE, V_RPT_DATA_NO, '跨表校验', V_BUS_VALIDATE_DESC, V_BUS_EXPLAIN, 'SYS', V_SYSDATE, V_SYSTIME, V_RPT_DATE);
          /**
            同时更新原始数据的数据状态。
           */
         -- update mbt_215 set CHECK_FLAG='L' , DATA_STATUS ='00' WHERE DATA_ID=REC.DATA_ID;
          ERR_CODE  := '98';
          ERR_MSG   := '存在校验失败的数据。';
        END LOOP ;
        EXCEPTION
          WHEN OTHERS THEN
          ERR_CODE := SQLCODE;
          ERR_MSG  := SUBSTR(SQLERRM, 1, 200);
          ROLLBACK;
          RETURN;
      END;
      COMMIT;

    ELSE
      ERR_CODE:='99';
      ERR_MSG :='校验编号不正确。';
    END IF ;

  END;

END;
/

prompt
prompt Creating procedure SP_MBT_CROSS_TABLE_220
prompt =========================================
prompt
CREATE OR REPLACE PROCEDURE "SP_MBT_CROSS_TABLE_220"( V_RPT_DATA_TYPE IN VARCHAR2,----信息报送类型（表名）
                                                      V_RPT_DATA_NO   IN VARCHAR2,--信息报送编号（校验编号）
                                                      V_RPT_DATE      IN VARCHAR2,--信息报告日期
                                                      V_BUS_EXPLAIN   IN VARCHAR2,--业务说明
                                                      ERR_CODE        IN OUT VARCHAR,--错误码
                                                      ERR_MSG         IN OUT VARCHAR --错误信息
) AS
V_SYSDATE VARCHAR(8);
V_SYSTIME VARCHAR(14);
V_BUS_VALIDATE_DESC VARCHAR2(4000);

  /**
1、  220-个人授信协议信息  表间校验
    关联【110-个人基本信息】，检查“受信人姓名”、“受信人证件类型”、“受信人证件号码”是否匹配存在；
    “匹配存在”指关联检查的本体信息记录已经报送过或本次会一起报送。
2、  220-个人授信协议信息  表间校验
    关联【420-企业授信协议信息】，检查“授信协议标识号”不存在重复；
    对于同时报送个人授信协议和企业授信协议的机构，两类授信协议的标识码不能重合。


 */

BEGIN
  V_SYSDATE := TO_CHAR(SYSDATE, 'YYYYMMDD');
  V_SYSTIME := TO_CHAR(SYSDATE, 'YYYYMMDDHH24MISS');
  ERR_CODE  := '00';
  ERR_MSG   := 'OK';


  BEGIN

    IF V_RPT_DATA_NO = '2019MBT220A010' THEN
      --先删除当前跨表校验的数据
      DELETE FROM MBT_CROSS_TABLE_VALIDATE WHERE RPT_DATA_TYPE=V_RPT_DATA_TYPE AND RPT_DATA_NO = V_RPT_DATA_NO AND RPT_DATE = V_RPT_DATE;
      /**
         关联【110-个人基本信息】，检查“受信人姓名”、“受信人证件类型”、“受信人证件号码”是否匹配存在；
       */
      declare
        cursor table_cur is
          select * from mbt_220 a where 1=1 and a.data_status != 22 and a.B_RPT_DATE=V_RPT_DATE AND a.B_RPT_DATE_CODE NOT IN ('88','99') and not exists
          (select 1 from (
                           SELECT DISTINCT B_NAME,B_ID_TYPE,B_ID_NUM FROM (
                             select B_NAME,B_ID_TYPE,B_ID_NUM  from mbt_110 where B_RPT_DATE = V_RPT_DATE
                             union all
                             select B_NAME,B_ID_TYPE,B_ID_NUM from  mbt_110_rpt )
                         ) b where A.B_NAME=B.B_NAME AND A.B_ID_NUM=B.B_ID_NUM AND A.B_ID_TYPE=B.B_ID_TYPE);
      begin
        for REC in table_cur loop
          V_BUS_VALIDATE_DESC := '关联【110-个人基本信息】，检查“受信人姓名”:'||REC.B_NAME||'、“受信人证件类型”：'||REC.B_ID_TYPE||'、“受信人证件号码”：'||REC.B_ID_NUM||'是否匹配存在；';
          INSERT INTO MBT_CROSS_TABLE_VALIDATE (RSV1,DATA_ID, DATA_DATE,  BUS_DATA_ID, BUS_CORP_ID, BUS_ORG_ID, BUS_GROUP_ID, BUS_CLASS, RPT_DATA_TYPE, RPT_DATA_NO, VALIDATE_TYPE, BUS_VALIDATE_DESC, BUS_EXPLAIN, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, RPT_DATE) VALUES
            ('个人授信协议信息',GET_DATA_ID(V_SYSDATE), V_SYSDATE,  REC.DATA_ID, REC.CORP_ID, REC.ORG_ID, REC.GROUP_ID, 'P', V_RPT_DATA_TYPE, V_RPT_DATA_NO, '跨表校验', V_BUS_VALIDATE_DESC, V_BUS_EXPLAIN, 'SYS', V_SYSDATE, V_SYSTIME, V_RPT_DATE);
          /**
            同时更新原始数据的数据状态。
           */
         -- update mbt_220 set CHECK_FLAG='L' , DATA_STATUS ='00' WHERE DATA_ID=REC.DATA_ID;
       ERR_CODE  := '98';
          ERR_MSG   := '存在校验失败的数据。';
        END LOOP ;
        EXCEPTION
          WHEN OTHERS THEN
          ERR_CODE := SQLCODE;
          ERR_MSG  := SUBSTR(SQLERRM, 1, 200);
          ROLLBACK;
          RETURN;
      END;
      COMMIT;

    ELSIF V_RPT_DATA_NO = '2019MBT220A011' THEN
      --先删除当前跨表校验的数据
      DELETE FROM MBT_CROSS_TABLE_VALIDATE WHERE RPT_DATA_TYPE=V_RPT_DATA_TYPE AND RPT_DATA_NO = V_RPT_DATA_NO AND RPT_DATE = V_RPT_DATE;
      /**
         关联【420-企业授信协议信息】，检查“授信协议标识号”不存在重复；
       */
      declare
        cursor table_cur is
          select * from mbt_220 a where 1=1 and a.data_status != 22 and a.B_RPT_DATE=V_RPT_DATE AND a.B_RPT_DATE_CODE NOT IN ('88','99') and exists
          (select 1 from (
                           SELECT DISTINCT B_CONTRACT_CODE FROM (
                             select B_CONTRACT_CODE from mbt_420 where B_RPT_DATE = V_RPT_DATE
                             union all
                             select B_CONTRACT_CODE from  mbt_420_rpt )
                         ) b where A.B_CONTRACT_CODE=B.B_CONTRACT_CODE);
      begin
        for REC in table_cur loop
          V_BUS_VALIDATE_DESC := '关联【420-企业授信协议信息】，检查“授信协议标识码”:'||REC.B_CONTRACT_CODE||'不存在重复';
          INSERT INTO MBT_CROSS_TABLE_VALIDATE (RSV1,DATA_ID, DATA_DATE,  BUS_DATA_ID, BUS_CORP_ID, BUS_ORG_ID, BUS_GROUP_ID, BUS_CLASS, RPT_DATA_TYPE, RPT_DATA_NO, VALIDATE_TYPE, BUS_VALIDATE_DESC, BUS_EXPLAIN, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, RPT_DATE) VALUES
            ('个人授信协议信息',GET_DATA_ID(V_SYSDATE), V_SYSDATE,  REC.DATA_ID, REC.CORP_ID, REC.ORG_ID, REC.GROUP_ID, 'P', V_RPT_DATA_TYPE, V_RPT_DATA_NO, '跨表校验', V_BUS_VALIDATE_DESC, V_BUS_EXPLAIN, 'SYS', V_SYSDATE, V_SYSTIME, V_RPT_DATE);
          /**
            同时更新原始数据的数据状态。
           */
        --  update mbt_220 set CHECK_FLAG='L' , DATA_STATUS ='00' WHERE DATA_ID=REC.DATA_ID;
       ERR_CODE  := '98';
          ERR_MSG   := '存在校验失败的数据。';
        END LOOP ;
        EXCEPTION
          WHEN OTHERS THEN
          ERR_CODE := SQLCODE;
          ERR_MSG  := SUBSTR(SQLERRM, 1, 200);
          ROLLBACK;
          RETURN;
      END;
      COMMIT;

    ELSE
      ERR_CODE:='99';
      ERR_MSG :='校验编号不正确。';
    END IF ;

  END;



END;
/

prompt
prompt Creating procedure SP_MBT_CROSS_TABLE_222
prompt =========================================
prompt
CREATE OR REPLACE PROCEDURE "SP_MBT_CROSS_TABLE_222"( V_RPT_DATA_TYPE IN VARCHAR2,----信息报送类型（表名）
                                                      V_RPT_DATA_NO   IN VARCHAR2,--信息报送编号（校验编号）
                                                      V_RPT_DATE      IN VARCHAR2,--信息报告日期
                                                      V_BUS_EXPLAIN   IN VARCHAR2,--业务说明
                                                      ERR_CODE        OUT VARCHAR,--错误码
                                                      ERR_MSG         OUT VARCHAR --错误信息
) AS
V_SYSDATE VARCHAR(8);
V_SYSTIME VARCHAR(14);
V_BUS_VALIDATE_DESC VARCHAR2(4000);

  /**
      222 个人授信协议按段更正  表间校验
      关联【420-企业授信协议信息】，检查“授信协议标识号”不存在重复；
      对于同时报送个人授信协议和企业授信协议的机构，两类授信协议的标识码不能重合。
   */
BEGIN
  V_SYSDATE := TO_CHAR(SYSDATE, 'YYYYMMDD');
  V_SYSTIME := TO_CHAR(SYSDATE, 'YYYYMMDDHH24MISS');
  ERR_CODE  := '00';
  ERR_MSG   := 'OK';

  BEGIN

    IF V_RPT_DATA_NO = '2019MBT222A012' THEN
      --先删除当前跨表校验的数据
      DELETE FROM MBT_CROSS_TABLE_VALIDATE WHERE RPT_DATA_TYPE=V_RPT_DATA_TYPE AND RPT_DATA_NO = V_RPT_DATA_NO AND RPT_DATE = V_RPT_DATE;
      /**
        关联【420-企业授信协议信息】，检查“授信协议标识号”不存在重复；
       */
      declare
        cursor table_cur is
          select * from MBT_220_EX a where 1=1 and a.data_status != 22 and a.B_RPT_DATE=V_RPT_DATE AND a.B_RPT_DATE_CODE NOT IN ('88','99') and exists
          (select 1 from (
                           SELECT DISTINCT B_CONTRACT_CODE FROM (
                             select B_CONTRACT_CODE from mbt_420 where B_RPT_DATE = V_RPT_DATE
                             union all
                             select B_CONTRACT_CODE from  mbt_420_rpt )
                         ) b where A.B_CONTRACT_CODE=B.B_CONTRACT_CODE);
      begin
        for REC in table_cur loop
          V_BUS_VALIDATE_DESC := '关联【420-企业授信协议信息】，检查“授信协议标识码”:'||REC.B_CONTRACT_CODE||'不存在重复';
          INSERT INTO MBT_CROSS_TABLE_VALIDATE (RSV1,DATA_ID, DATA_DATE,  BUS_DATA_ID, BUS_CORP_ID, BUS_ORG_ID, BUS_GROUP_ID, BUS_CLASS, RPT_DATA_TYPE, RPT_DATA_NO, VALIDATE_TYPE, BUS_VALIDATE_DESC, BUS_EXPLAIN, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, RPT_DATE) VALUES
            ('个人授信协议按段更正',GET_DATA_ID(V_SYSDATE), V_SYSDATE,  REC.DATA_ID, REC.CORP_ID, REC.ORG_ID, REC.GROUP_ID, 'P', V_RPT_DATA_TYPE, V_RPT_DATA_NO, '跨表校验', V_BUS_VALIDATE_DESC, V_BUS_EXPLAIN, 'SYS', V_SYSDATE, V_SYSTIME, V_RPT_DATE);
          /**
            同时更新原始数据的数据状态。
           */
        --  update MBT_220_EX set CHECK_FLAG='L' , DATA_STATUS ='00' WHERE DATA_ID=REC.DATA_ID;
       ERR_CODE  := '98';
          ERR_MSG   := '存在校验失败的数据。';
        END LOOP ;
        EXCEPTION
          WHEN OTHERS THEN
          ERR_CODE := SQLCODE;
          ERR_MSG  := SUBSTR(SQLERRM, 1, 200);
          ROLLBACK;
          RETURN;
      END;
      COMMIT;
    ELSE
      ERR_CODE:='99';
      ERR_MSG :='校验编号不正确。';
    END IF ;

  END;


END;
/

prompt
prompt Creating procedure SP_MBT_CROSS_TABLE_230
prompt =========================================
prompt
CREATE OR REPLACE PROCEDURE "SP_MBT_CROSS_TABLE_230"( V_RPT_DATA_TYPE IN VARCHAR2,----信息报送类型（表名）
                                                      V_RPT_DATA_NO   IN VARCHAR2,--信息报送编号（校验编号）
                                                      V_RPT_DATE      IN VARCHAR2,--信息报告日期
                                                      V_BUS_EXPLAIN   IN VARCHAR2,--业务说明
                                                      ERR_CODE        OUT VARCHAR,--错误码
                                                      ERR_MSG         OUT VARCHAR --错误信息
) AS
V_SYSDATE VARCHAR(8);
V_SYSTIME VARCHAR(14);
V_BUS_VALIDATE_DESC VARCHAR2(4000);

  /**
  1、  230-个人担保账户信息  表间校验
      关联【110-个人基本信息】，检查“债务人姓名”、“债务人身份标识类型”、“债务人身份标识号码”是否匹配存在；
      “匹配存在”指关联检查的本体信息记录已经报送过或本次会一起报送。
  2、  230-个人担保账户信息  表间校验
      如果“抵质押合同个数”大于0，关联【510-抵（质）押合同信息】，检查“抵（质）押合同标识码”是否匹配存在；
      由于抵质押物信息段作为担保账户的预留信息段，暂时不需要报送，所以该检查暂不使用。

   */
BEGIN
  V_SYSDATE := TO_CHAR(SYSDATE, 'YYYYMMDD');
  V_SYSTIME := TO_CHAR(SYSDATE, 'YYYYMMDDHH24MISS');
  ERR_CODE  := '00';
  ERR_MSG   := 'OK';

 BEGIN

    IF V_RPT_DATA_NO = '2019MBT230A013' THEN
      --先删除当前跨表校验的数据
      DELETE FROM MBT_CROSS_TABLE_VALIDATE WHERE RPT_DATA_TYPE=V_RPT_DATA_TYPE AND RPT_DATA_NO = V_RPT_DATA_NO AND RPT_DATE = V_RPT_DATE;

      /**
         关联【110-个人基本信息】，检查“债务人姓名”、“债务人身份标识类型”、“债务人身份标识号码”是否匹配存在；
       */
      declare
        cursor table_cur is
          select * from mbt_230 a where 1=1 and a.data_status != 22 and a.B_RPT_DATE=V_RPT_DATE AND a.B_RPT_DATE_CODE NOT IN ('88','99') and not exists
          (select 1 from (
                           SELECT DISTINCT B_NAME,B_ID_TYPE,B_ID_NUM FROM (
                             select B_NAME,B_ID_TYPE,B_ID_NUM  from mbt_110 where B_RPT_DATE = V_RPT_DATE
                             union all
                             select B_NAME,B_ID_TYPE,B_ID_NUM from  mbt_110_rpt )
                         ) b where A.B_NAME=B.B_NAME AND A.B_ID_NUM=B.B_ID_NUM AND A.B_ID_TYPE=B.B_ID_TYPE);
      begin
        for REC in table_cur loop
          V_BUS_VALIDATE_DESC := '关联【110-个人基本信息】，检查“债务人姓名”:'||REC.B_NAME||'、“债务人身份标识类型”：'||REC.B_ID_TYPE||'、“债务人身份标识号码”：'||REC.B_ID_NUM||'是否匹配存在；';
          INSERT INTO MBT_CROSS_TABLE_VALIDATE (RSV1,DATA_ID, DATA_DATE,  BUS_DATA_ID, BUS_CORP_ID, BUS_ORG_ID, BUS_GROUP_ID, BUS_CLASS, RPT_DATA_TYPE, RPT_DATA_NO, VALIDATE_TYPE, BUS_VALIDATE_DESC, BUS_EXPLAIN, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, RPT_DATE) VALUES
            ('个人担保账户信息',GET_DATA_ID(V_SYSDATE), V_SYSDATE,  REC.DATA_ID, REC.CORP_ID, REC.ORG_ID, REC.GROUP_ID, 'P', V_RPT_DATA_TYPE, V_RPT_DATA_NO, '跨表校验', V_BUS_VALIDATE_DESC, V_BUS_EXPLAIN, 'SYS', V_SYSDATE, V_SYSTIME, V_RPT_DATE);
          /**
            同时更新原始数据的数据状态。
           */
        --  update mbt_230 set CHECK_FLAG='L' , DATA_STATUS ='00' WHERE DATA_ID=REC.DATA_ID;
       ERR_CODE  := '98';
          ERR_MSG   := '存在校验失败的数据。';
        END LOOP ;
        EXCEPTION
          WHEN OTHERS THEN
          ERR_CODE := SQLCODE;
          ERR_MSG  := SUBSTR(SQLERRM, 1, 200);
          ROLLBACK;
          RETURN;
      END;
      COMMIT;

    ELSIF V_RPT_DATA_NO = '2019MBT230A014' THEN
      --先删除当前跨表校验的数据
      DELETE FROM MBT_CROSS_TABLE_VALIDATE WHERE RPT_DATA_TYPE=V_RPT_DATA_TYPE AND RPT_DATA_NO = V_RPT_DATA_NO AND RPT_DATE = V_RPT_DATE;

      /**
         如果“抵质押合同个数”大于0，关联【510-抵（质）押合同信息】，检查“抵（质）押合同标识码”是否匹配存在；
       */
      declare
        cursor table_cur is
          select distinct a.*,b.CCC from mbt_230 a inner join MBT_230_F b on a.DATA_ID=b.PDATA_ID where 1=1
            AND a.B_RPT_DATE_CODE NOT IN ('88','99')
            AND A.B_RPT_DATE=V_RPT_DATE
            AND NOT EXISTS (
                SELECT 1 FROM (
                    select DISTINCT B_CC_CODE FROM (
                      SELECT B_CC_CODE FROM MBT_510 where CUST_TYPE='P' AND B_RPT_DATE=V_RPT_DATE
                      UNION ALL
                      SELECT B_CC_CODE FROM MBT_510_RPT where CUST_TYPE='P' )
                  )c WHERE b.CCC=c.B_CC_CODE
          );
      begin
        for REC in table_cur loop
          V_BUS_VALIDATE_DESC := ' 如果“抵质押合同个数”大于0，关联【510-抵（质）押合同信息】，检查“抵（质）押合同标识码”:'||REC.CCC||'是否匹配存在；';
          INSERT INTO MBT_CROSS_TABLE_VALIDATE (RSV1,DATA_ID, DATA_DATE,  BUS_DATA_ID, BUS_CORP_ID, BUS_ORG_ID, BUS_GROUP_ID, BUS_CLASS, RPT_DATA_TYPE, RPT_DATA_NO, VALIDATE_TYPE, BUS_VALIDATE_DESC, BUS_EXPLAIN, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, RPT_DATE) VALUES
            ('个人担保账户信息',GET_DATA_ID(V_SYSDATE), V_SYSDATE,  REC.DATA_ID, REC.CORP_ID, REC.ORG_ID, REC.GROUP_ID, 'P', V_RPT_DATA_TYPE, V_RPT_DATA_NO, '跨表校验', V_BUS_VALIDATE_DESC, V_BUS_EXPLAIN, 'SYS', V_SYSDATE, V_SYSTIME, V_RPT_DATE);
          /**
            同时更新原始数据的数据状态。
           */
        --  update mbt_230 set CHECK_FLAG='L' , DATA_STATUS ='00' WHERE DATA_ID=REC.DATA_ID;
       ERR_CODE  := '98';
          ERR_MSG   := '存在校验失败的数据。';
        END LOOP ;
        EXCEPTION
          WHEN OTHERS THEN
          ERR_CODE := SQLCODE;
          ERR_MSG  := SUBSTR(SQLERRM, 1, 200);
          ROLLBACK;
          RETURN;
      END;
      COMMIT;

    ELSE
      ERR_CODE:='99';
      ERR_MSG :='校验编号不正确。';
    END IF ;

  END;


END;
/

prompt
prompt Creating procedure SP_MBT_CROSS_TABLE_232
prompt =========================================
prompt
CREATE OR REPLACE PROCEDURE "SP_MBT_CROSS_TABLE_232"( V_RPT_DATA_TYPE IN VARCHAR2,----信息报送类型（表名）
                                                      V_RPT_DATA_NO   IN VARCHAR2,--信息报送编号（校验编号）
                                                      V_RPT_DATE      IN VARCHAR2,--信息报告日期
                                                      V_BUS_EXPLAIN   IN VARCHAR2,--业务说明
                                                      ERR_CODE        OUT VARCHAR,--错误码
                                                      ERR_MSG         OUT VARCHAR --错误信息
) AS
V_SYSDATE VARCHAR(8);
V_SYSTIME VARCHAR(14);
V_BUS_VALIDATE_DESC VARCHAR2(4000);
  /**
    232-个人担保账户按段更正  表间校验
    如果更正“抵（质）押合同标识码”信息，则关联【510-抵（质）押合同信息】，检查“抵（质）押合同标识码”是否匹配存在；
    由于抵质押物信息段作为担保账户的预留信息段，暂时不需要报送，所以该检查暂不使用。
   */

BEGIN
  V_SYSDATE := TO_CHAR(SYSDATE, 'YYYYMMDD');
  V_SYSTIME := TO_CHAR(SYSDATE, 'YYYYMMDDHH24MISS');
  ERR_CODE  := '00';
  ERR_MSG   := 'OK';

  BEGIN

    IF V_RPT_DATA_NO = '2019MBT232A015' THEN
      --先删除当前跨表校验的数据
      DELETE FROM MBT_CROSS_TABLE_VALIDATE WHERE RPT_DATA_TYPE=V_RPT_DATA_TYPE AND RPT_DATA_NO = V_RPT_DATA_NO AND RPT_DATE = V_RPT_DATE;

      /**
      如果更正“抵（质）押合同标识码”信息，则关联【510-抵（质）押合同信息】，检查“抵（质）押合同标识码”是否匹配存在；
       */
      declare
        cursor table_cur is
          select distinct a.*,b.CCC from MBT_230_EX a inner join MBT_230_F_EX b on a.DATA_ID=b.PDATA_ID where 1=1
              AND a.B_RPT_DATE_CODE NOT IN ('88','99')
              AND A.PART_TYPE LIKE '%F%'
              AND A.B_RPT_DATE=V_RPT_DATE
              AND NOT EXISTS (
              SELECT 1 FROM (
                              select DISTINCT B_CC_CODE FROM (
                                SELECT B_CC_CODE FROM MBT_510 where CUST_TYPE='P' AND B_RPT_DATE=V_RPT_DATE
                                UNION ALL
                                SELECT B_CC_CODE FROM MBT_510_RPT where CUST_TYPE='P' )
                            )c WHERE b.CCC=c.B_CC_CODE
          );
      begin
        for REC in table_cur loop
          V_BUS_VALIDATE_DESC := '如果更正“抵（质）押合同标识码”信息，则关联【510-抵（质）押合同信息】，检查“抵（质）押合同标识码”:'||REC.CCC||'是否匹配存在；';
          INSERT INTO MBT_CROSS_TABLE_VALIDATE (RSV1,DATA_ID, DATA_DATE,  BUS_DATA_ID, BUS_CORP_ID, BUS_ORG_ID, BUS_GROUP_ID, BUS_CLASS, RPT_DATA_TYPE, RPT_DATA_NO, VALIDATE_TYPE, BUS_VALIDATE_DESC, BUS_EXPLAIN, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, RPT_DATE) VALUES
            ('个人担保账户按段更正',GET_DATA_ID(V_SYSDATE), V_SYSDATE,  REC.DATA_ID, REC.CORP_ID, REC.ORG_ID, REC.GROUP_ID, 'P', V_RPT_DATA_TYPE, V_RPT_DATA_NO, '跨表校验', V_BUS_VALIDATE_DESC, V_BUS_EXPLAIN, 'SYS', V_SYSDATE, V_SYSTIME, V_RPT_DATE);
          /**
            同时更新原始数据的数据状态。
           */
          --update MBT_230_EX set CHECK_FLAG='L' , DATA_STATUS ='00' WHERE DATA_ID=REC.DATA_ID;
       ERR_CODE  := '98';
          ERR_MSG   := '存在校验失败的数据。';
        END LOOP ;
        EXCEPTION
          WHEN OTHERS THEN
          ERR_CODE := SQLCODE;
          ERR_MSG  := SUBSTR(SQLERRM, 1, 200);
          ROLLBACK;
          RETURN;
      END;
      COMMIT;
    ELSE
      ERR_CODE:='99';
      ERR_MSG :='校验编号不正确。';
    END IF ;

  END;


END;
/

prompt
prompt Creating procedure SP_MBT_CROSS_TABLE_340
prompt =========================================
prompt
CREATE OR REPLACE PROCEDURE "SP_MBT_CROSS_TABLE_340"( V_RPT_DATA_TYPE IN VARCHAR2,----信息报送类型（表名）
                                                      V_RPT_DATA_NO   IN VARCHAR2,--信息报送编号（校验编号）
                                                      V_RPT_DATE      IN VARCHAR2,--信息报告日期
                                                      V_BUS_EXPLAIN   IN VARCHAR2,--业务说明
                                                      ERR_CODE        OUT VARCHAR,--错误码
                                                      ERR_MSG         OUT VARCHAR --错误信息
) AS
V_SYSDATE VARCHAR(8);
V_SYSTIME VARCHAR(14);
V_BUS_VALIDATE_DESC VARCHAR2(4000);
  /**
  340-企业身份标识整合信息  表间校验
  关联【310-企业基本信息】，检查“企业名称”、“企业身份识别类型”、“企业身份识别号码”是否匹配存在；
  "通常情况下，大多数数据提供机构不需要使用“企业身份标识整合信息记录”。若数据提供机构掌握一个企业的多个身份标识，直接在报送“企业基本信息记录”时使用“其他标识段”即可同时报送客户的多个身份标识，所以该检查暂不使用。"

   */

BEGIN
  V_SYSDATE := TO_CHAR(SYSDATE, 'YYYYMMDD');
  V_SYSTIME := TO_CHAR(SYSDATE, 'YYYYMMDDHH24MISS');
  ERR_CODE  := '00';
  ERR_MSG   := 'OK';


  BEGIN

    IF V_RPT_DATA_NO = '2019MBT340A017' THEN
        --先删除当前跨表校验的数据
        DELETE FROM MBT_CROSS_TABLE_VALIDATE WHERE RPT_DATA_TYPE=V_RPT_DATA_TYPE AND RPT_DATA_NO = V_RPT_DATA_NO AND RPT_DATE = V_RPT_DATE;
          /**
            关联【310-企业基本信息】，检查“企业名称”、“企业身份识别类型”、“企业身份识别号码”是否匹配存在；
           */
        declare
          cursor table_cur is
            select * from mbt_340 a where 1=1 and a.data_status != 22 and a.B_RPT_DATE=V_RPT_DATE AND a.B_RPT_DATE_CODE NOT IN ('88','99') and not exists
            (select 1 from (
                             SELECT DISTINCT B_ENT_NAME,B_ENT_CERT,B_ENT_CERT_NUM FROM (
                               select B_ENT_NAME,B_ENT_CERT,B_ENT_CERT_NUM from mbt_310 where B_RPT_DATE = V_RPT_DATE
                               union all
                               select B_ENT_NAME,B_ENT_CERT,B_ENT_CERT_NUM from  mbt_310_rpt )
                           ) b where A.B_ENT_NAME=B.B_ENT_NAME AND A.B_ENT_CERT_NUM=B.B_ENT_CERT_NUM AND A.B_ENT_CERT_TYPE=B.B_ENT_CERT);
        begin
          for REC in table_cur loop
            V_BUS_VALIDATE_DESC := '关联【310-企业基本信息】，检查“企业名称”:'||REC.B_ENT_NAME||'、“企业身份识别类型”：'||REC.B_ENT_CERT_TYPE||'、“企业身份识别号码”：'||REC.B_ENT_CERT_NUM||'是否匹配存在；';
            INSERT INTO MBT_CROSS_TABLE_VALIDATE (RSV1,DATA_ID, DATA_DATE,  BUS_DATA_ID, BUS_CORP_ID, BUS_ORG_ID, BUS_GROUP_ID, BUS_CLASS, RPT_DATA_TYPE, RPT_DATA_NO, VALIDATE_TYPE, BUS_VALIDATE_DESC, BUS_EXPLAIN, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, RPT_DATE) VALUES
              ('个人担保账户按段更正',GET_DATA_ID(V_SYSDATE), V_SYSDATE,  REC.DATA_ID, REC.CORP_ID, REC.ORG_ID, REC.GROUP_ID, 'C', V_RPT_DATA_TYPE, V_RPT_DATA_NO, '跨表校验', V_BUS_VALIDATE_DESC, V_BUS_EXPLAIN, 'SYS', V_SYSDATE, V_SYSTIME, V_RPT_DATE);
            /**
              同时更新原始数据的数据状态。
             */
           -- update mbt_340 set CHECK_FLAG='L' , DATA_STATUS ='00' WHERE DATA_ID=REC.DATA_ID;
          ERR_CODE  := '98';
          ERR_MSG   := '存在校验失败的数据。';
        END LOOP ;
        EXCEPTION
          WHEN OTHERS THEN
          ERR_CODE := SQLCODE;
          ERR_MSG  := SUBSTR(SQLERRM, 1, 200);
          ROLLBACK;
          RETURN;
      END;
      COMMIT;
    ELSE
      ERR_CODE:='99';
      ERR_MSG :='校验编号不正确。';
    END IF ;

  END;

END;
/

prompt
prompt Creating procedure SP_MBT_CROSS_TABLE_350
prompt =========================================
prompt
CREATE OR REPLACE PROCEDURE "SP_MBT_CROSS_TABLE_350"( V_RPT_DATA_TYPE IN VARCHAR2,----信息报送类型（表名）
                                                      V_RPT_DATA_NO   IN VARCHAR2,--信息报送编号（校验编号）
                                                      V_RPT_DATE      IN VARCHAR2,--信息报告日期
                                                      V_BUS_EXPLAIN   IN VARCHAR2,--业务说明
                                                      ERR_CODE        OUT VARCHAR,--错误码
                                                      ERR_MSG         OUT VARCHAR --错误信息
) AS
V_SYSDATE VARCHAR(8);
V_SYSTIME VARCHAR(14);
V_BUS_VALIDATE_DESC VARCHAR2(4000);

  /**
      350-企业间关联关系信息  表间校验
      关联【310-企业基本信息】，检查“A企业名称”、“A企业身份识别类型”、“A企业身份识别号码”是否匹配存在；
      “匹配存在”指关联检查的本体信息记录已经报送过或本次会一起报送。
   */
BEGIN
  V_SYSDATE := TO_CHAR(SYSDATE, 'YYYYMMDD');
  V_SYSTIME := TO_CHAR(SYSDATE, 'YYYYMMDDHH24MISS');
  ERR_CODE  := '00';
  ERR_MSG   := 'OK';

  BEGIN

    IF V_RPT_DATA_NO = '2019MBT350A018' THEN
      --先删除当前跨表校验的数据
      DELETE FROM MBT_CROSS_TABLE_VALIDATE WHERE RPT_DATA_TYPE=V_RPT_DATA_TYPE AND RPT_DATA_NO = V_RPT_DATA_NO AND RPT_DATE = V_RPT_DATE;

      declare
        cursor table_cur is
          select * from mbt_350 a where 1=1 and a.data_status != 22 and a.B_RPT_DATE=V_RPT_DATE AND a.B_RPT_DATE_CODE NOT IN ('88','99') and not exists
          (select 1 from (
                           SELECT DISTINCT B_ENT_NAME,B_ENT_CERT,B_ENT_CERT_NUM FROM (
                             select B_ENT_NAME,B_ENT_CERT,B_ENT_CERT_NUM from mbt_310 where B_RPT_DATE = V_RPT_DATE
                             union all
                             select B_ENT_NAME,B_ENT_CERT,B_ENT_CERT_NUM from  mbt_310_rpt )
                         ) b where A.B_ENT_NAME=B.B_ENT_NAME AND A.B_ENT_CERT_NUM=B.B_ENT_CERT_NUM AND A.B_ENT_CERT_TYPE=B.B_ENT_CERT);
      begin
        for REC in table_cur loop
          V_BUS_VALIDATE_DESC := '关联【310-企业基本信息】，检查“企业名称”:'||REC.B_ENT_NAME||'、“企业身份识别类型”：'||REC.B_ENT_CERT_TYPE||'、“企业身份识别号码”：'||REC.B_ENT_CERT_NUM||'是否匹配存在；';
          INSERT INTO MBT_CROSS_TABLE_VALIDATE (RSV1,DATA_ID, DATA_DATE,  BUS_DATA_ID, BUS_CORP_ID, BUS_ORG_ID, BUS_GROUP_ID, BUS_CLASS, RPT_DATA_TYPE, RPT_DATA_NO, VALIDATE_TYPE, BUS_VALIDATE_DESC, BUS_EXPLAIN, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, RPT_DATE) VALUES
            ('企业间关联关系信息',GET_DATA_ID(V_SYSDATE), V_SYSDATE,  REC.DATA_ID, REC.CORP_ID, REC.ORG_ID, REC.GROUP_ID, 'C', V_RPT_DATA_TYPE, V_RPT_DATA_NO, '跨表校验', V_BUS_VALIDATE_DESC, V_BUS_EXPLAIN, 'SYS', V_SYSDATE, V_SYSTIME, V_RPT_DATE);
          /**
            同时更新原始数据的数据状态。
           */
          --update mbt_350 set CHECK_FLAG='L' , DATA_STATUS ='00' WHERE DATA_ID=REC.DATA_ID;
        ERR_CODE  := '98';
          ERR_MSG   := '存在校验失败的数据。';
        END LOOP ;
        EXCEPTION
          WHEN OTHERS THEN
          ERR_CODE := SQLCODE;
          ERR_MSG  := SUBSTR(SQLERRM, 1, 200);
          ROLLBACK;
          RETURN;
      END;
      COMMIT;
    ELSE
      ERR_CODE:='99';
      ERR_MSG :='校验编号不正确。';
    END IF ;

  END;




END;
/

prompt
prompt Creating procedure SP_MBT_CROSS_TABLE_410
prompt =========================================
prompt
CREATE OR REPLACE PROCEDURE "SP_MBT_CROSS_TABLE_410"( V_RPT_DATA_TYPE IN VARCHAR2,----信息报送类型（表名）
                                                      V_RPT_DATA_NO   IN VARCHAR2,--信息报送编号（校验编号）
                                                      V_RPT_DATE      IN VARCHAR2,--信息报告日期
                                                      V_BUS_EXPLAIN   IN VARCHAR2,--业务说明
                                                      ERR_CODE        OUT VARCHAR,--错误码
                                                      ERR_MSG         OUT VARCHAR --错误信息
) AS
V_SYSDATE VARCHAR(8);
V_SYSTIME VARCHAR(14);
V_BUS_VALIDATE_DESC VARCHAR2(4000);


BEGIN
  V_SYSDATE := TO_CHAR(SYSDATE, 'YYYYMMDD');
  V_SYSTIME := TO_CHAR(SYSDATE, 'YYYYMMDDHH24MISS');
  ERR_CODE  := '00';
  ERR_MSG   := 'OK';
  /**
  1、  410-企业借贷账户信息  表间校验
      关联【310-企业基本信息】，检查“借款人名称”、“借款人身份识别类型”、“借款人身份识别号码”是否匹配存在；
      “匹配存在”指关联检查的本体信息记录已经报送过或本次会一起报送。
  2、  410-企业借贷账户信息  表间校验
      如果“抵质押合同个数”大于0，关联【510-抵（质）押合同信息】，检查“抵（质）押合同标识码”是否匹配存在；
      “匹配存在”指关联检查的本体信息记录已经报送过或本次会一起报送。
  3、  410-企业借贷账户信息  表间校验
      关联【420-企业授信协议信息】，检查“授信协议标识码”是否匹配存在；
      “匹配存在”指关联检查的本体信息记录已经报送过或本次会一起报送。

   */

  BEGIN

    IF V_RPT_DATA_NO = '2019MBT410A019' THEN
      --先删除当前跨表校验的数据
      DELETE FROM MBT_CROSS_TABLE_VALIDATE WHERE RPT_DATA_TYPE=V_RPT_DATA_TYPE AND RPT_DATA_NO = V_RPT_DATA_NO AND RPT_DATE = V_RPT_DATE;

      /**
        关联【310-企业基本信息】，检查“借款人名称”、“借款人身份识别类型”、“借款人身份识别号码”是否匹配存在；
       */
      declare
        cursor table_cur is
          select * from mbt_410 a where 1=1 and a.data_status != 22 and a.B_RPT_DATE=V_RPT_DATE AND a.B_RPT_DATE_CODE NOT IN ('88','99') and not exists
          (select 1 from (
                           SELECT DISTINCT B_ENT_NAME,B_ENT_CERT,B_ENT_CERT_NUM FROM (
                             select B_ENT_NAME,B_ENT_CERT,B_ENT_CERT_NUM from mbt_310 where B_RPT_DATE = V_RPT_DATE
                             union all
                             select B_ENT_NAME,B_ENT_CERT,B_ENT_CERT_NUM from  mbt_310_rpt )
                         ) b where A.B_NAME=B.B_ENT_NAME AND A.B_ID_TYPE=B.B_ENT_CERT_NUM AND A.B_ID_NUM=B.B_ENT_CERT);
      begin
        for REC in table_cur loop
          V_BUS_VALIDATE_DESC := '关联【310-企业基本信息】，检查“借款人名称”:'||REC.B_NAME||'、“借款人身份识别类型”：'||REC.B_ID_TYPE||'、“借款人身份识别号码”：'||REC.B_ID_NUM||'是否匹配存在；';
          INSERT INTO MBT_CROSS_TABLE_VALIDATE (RSV1,DATA_ID, DATA_DATE,  BUS_DATA_ID, BUS_CORP_ID, BUS_ORG_ID, BUS_GROUP_ID, BUS_CLASS, RPT_DATA_TYPE, RPT_DATA_NO, VALIDATE_TYPE, BUS_VALIDATE_DESC, BUS_EXPLAIN, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, RPT_DATE) VALUES
            ('企业借贷账户信息',GET_DATA_ID(V_SYSDATE), V_SYSDATE,  REC.DATA_ID, REC.CORP_ID, REC.ORG_ID, REC.GROUP_ID, 'C', V_RPT_DATA_TYPE, V_RPT_DATA_NO, '跨表校验', V_BUS_VALIDATE_DESC, V_BUS_EXPLAIN, 'SYS', V_SYSDATE, V_SYSTIME, V_RPT_DATE);
          /**
            同时更新原始数据的数据状态。
           */
         -- update mbt_410 set CHECK_FLAG='L' , DATA_STATUS ='00' WHERE DATA_ID=REC.DATA_ID;
        ERR_CODE  := '98';
          ERR_MSG   := '存在校验失败的数据。';
        END LOOP ;
        EXCEPTION
          WHEN OTHERS THEN
          ERR_CODE := SQLCODE;
          ERR_MSG  := SUBSTR(SQLERRM, 1, 200);
          ROLLBACK;
          RETURN;
      END;
      COMMIT;
    ELSIF V_RPT_DATA_NO = '2019MBT410A020' THEN
      --先删除当前跨表校验的数据
      DELETE FROM MBT_CROSS_TABLE_VALIDATE WHERE RPT_DATA_TYPE=V_RPT_DATA_TYPE AND RPT_DATA_NO = V_RPT_DATA_NO AND RPT_DATE = V_RPT_DATE;

      /**
        如果“抵质押合同个数”大于0，关联【510-抵（质）押合同信息】，检查“抵（质）押合同标识码”是否匹配存在；
       */
      declare
        cursor table_cur is
          select distinct a.*,b.E_CCC from mbt_410 a inner join MBT_410_E b on a.DATA_ID=b.PDATA_ID where 1=1
                AND a.B_RPT_DATE_CODE NOT IN ('88','99')
                AND A.B_RPT_DATE=V_RPT_DATE
                AND NOT EXISTS (
              SELECT 1 FROM (
                              select DISTINCT B_CC_CODE FROM (
                                SELECT B_CC_CODE FROM MBT_510 where CUST_TYPE='C' AND B_RPT_DATE=V_RPT_DATE
                                UNION ALL
                                SELECT B_CC_CODE FROM MBT_510_RPT where CUST_TYPE='C' )
                            )c WHERE b.E_CCC=c.B_CC_CODE
          );
      begin
        for REC in table_cur loop
          V_BUS_VALIDATE_DESC := '如果“抵质押合同个数”大于0，关联【510-抵（质）押合同信息】，检查“抵（质）押合同标识码”:'||REC.E_CCC||'是否匹配存在';
          INSERT INTO MBT_CROSS_TABLE_VALIDATE (RSV1,DATA_ID, DATA_DATE,  BUS_DATA_ID, BUS_CORP_ID, BUS_ORG_ID, BUS_GROUP_ID, BUS_CLASS, RPT_DATA_TYPE, RPT_DATA_NO, VALIDATE_TYPE, BUS_VALIDATE_DESC, BUS_EXPLAIN, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, RPT_DATE) VALUES
            ('企业借贷账户信息',GET_DATA_ID(V_SYSDATE), V_SYSDATE,  REC.DATA_ID, REC.CORP_ID, REC.ORG_ID, REC.GROUP_ID, 'C', V_RPT_DATA_TYPE, V_RPT_DATA_NO, '跨表校验', V_BUS_VALIDATE_DESC, V_BUS_EXPLAIN, 'SYS', V_SYSDATE, V_SYSTIME, V_RPT_DATE);
          /**
            同时更新原始数据的数据状态。
           */
         -- update mbt_410 set CHECK_FLAG='L' , DATA_STATUS ='00' WHERE DATA_ID=REC.DATA_ID;
        ERR_CODE  := '98';
          ERR_MSG   := '存在校验失败的数据。';
        END LOOP ;
        EXCEPTION
          WHEN OTHERS THEN
          ERR_CODE := SQLCODE;
          ERR_MSG  := SUBSTR(SQLERRM, 1, 200);
          ROLLBACK;
          RETURN;
      END;
      COMMIT;

    ELSIF V_RPT_DATA_NO = '2019MBT410A021' THEN
      --先删除当前跨表校验的数据
      DELETE FROM MBT_CROSS_TABLE_VALIDATE WHERE RPT_DATA_TYPE=V_RPT_DATA_TYPE AND RPT_DATA_NO = V_RPT_DATA_NO AND RPT_DATE = V_RPT_DATE;

      /**
        关联【420-企业授信协议信息】，检查“授信协议标识码”是否匹配存在；
       */
      declare
        cursor table_cur is
          select * from mbt_410 a where 1=1 and a.data_status != 22 and a.B_RPT_DATE=V_RPT_DATE AND a.B_RPT_DATE_CODE NOT IN ('88','99') and not exists
          (select 1 from (
                           SELECT DISTINCT B_CONTRACT_CODE FROM (
                             select B_CONTRACT_CODE from mbt_420 where B_RPT_DATE = V_RPT_DATE
                             union all
                             select B_CONTRACT_CODE from  mbt_420_rpt )
                         ) b where A.F_MCC=B.B_CONTRACT_CODE);
      begin
        for REC in table_cur loop
          V_BUS_VALIDATE_DESC := '关联【420-企业授信协议信息】，检查“授信协议标识码”:'||REC.F_MCC||'是否匹配存在；';
          INSERT INTO MBT_CROSS_TABLE_VALIDATE (RSV1,DATA_ID, DATA_DATE,  BUS_DATA_ID, BUS_CORP_ID, BUS_ORG_ID, BUS_GROUP_ID, BUS_CLASS, RPT_DATA_TYPE, RPT_DATA_NO, VALIDATE_TYPE, BUS_VALIDATE_DESC, BUS_EXPLAIN, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, RPT_DATE) VALUES
            ('企业借贷账户信息',GET_DATA_ID(V_SYSDATE), V_SYSDATE,  REC.DATA_ID, REC.CORP_ID, REC.ORG_ID, REC.GROUP_ID, 'C', V_RPT_DATA_TYPE, V_RPT_DATA_NO, '跨表校验', V_BUS_VALIDATE_DESC, V_BUS_EXPLAIN, 'SYS', V_SYSDATE, V_SYSTIME, V_RPT_DATE);
          /**
            同时更新原始数据的数据状态。
           */
         -- update mbt_410 set CHECK_FLAG='L' , DATA_STATUS ='00' WHERE DATA_ID=REC.DATA_ID;
        ERR_CODE  := '98';
          ERR_MSG   := '存在校验失败的数据。';
        END LOOP ;
        EXCEPTION
          WHEN OTHERS THEN
          ERR_CODE := SQLCODE;
          ERR_MSG  := SUBSTR(SQLERRM, 1, 200);
          ROLLBACK;
          RETURN;
      END;
      COMMIT;

    ELSE
      ERR_CODE:='99';
      ERR_MSG :='校验编号不正确。';
    END IF ;

  END;


END;
/

prompt
prompt Creating procedure SP_MBT_CROSS_TABLE_412
prompt =========================================
prompt
CREATE OR REPLACE PROCEDURE "SP_MBT_CROSS_TABLE_412"( V_RPT_DATA_TYPE IN VARCHAR2,----信息报送类型（表名）
                                                      V_RPT_DATA_NO   IN VARCHAR2,--信息报送编号（校验编号）
                                                      V_RPT_DATE      IN VARCHAR2,--信息报告日期
                                                      V_BUS_EXPLAIN   IN VARCHAR2,--业务说明
                                                      ERR_CODE        OUT VARCHAR,--错误码
                                                      ERR_MSG         OUT VARCHAR --错误信息
) AS
V_SYSDATE VARCHAR(8);
V_SYSTIME VARCHAR(14);
V_BUS_VALIDATE_DESC VARCHAR2(4000);
  /**
  1、  412-企业借贷账户按段更正  表间校验
      如果更正“抵（质）押合同标识码”信息，则关联【510-抵（质）押合同信息】，检查“抵（质）押合同标识码”是否匹配存在；
      “匹配存在”指关联检查的本体信息记录已经报送过或本次会一起报送。
  2、  412-企业借贷账户按段更正  表间校验
      如果更正“授信协议标识码”信息，则关联【420-企业授信协议信息】，检查“授信协议标识码”是否匹配存在；
      “匹配存在”指关联检查的本体信息记录已经报送过或本次会一起报送。
  3、  412-企业借贷账户按段更正  表间校验
      如果更正“授信协议标识码”信息，则关联【220-个人授信协议信息】，检查“授信协议标识号”不存在重复；
      对于同时报送个人授信协议和企业授信协议的机构，两类授信协议的标识码不能重合。

   */
BEGIN
  V_SYSDATE := TO_CHAR(SYSDATE, 'YYYYMMDD');
  V_SYSTIME := TO_CHAR(SYSDATE, 'YYYYMMDDHH24MISS');
  ERR_CODE  := '00';
  ERR_MSG   := 'OK';

  BEGIN

    IF V_RPT_DATA_NO = '2019MBT412A022' THEN
      --先删除当前跨表校验的数据
      DELETE FROM MBT_CROSS_TABLE_VALIDATE WHERE RPT_DATA_TYPE=V_RPT_DATA_TYPE AND RPT_DATA_NO = V_RPT_DATA_NO AND RPT_DATE = V_RPT_DATE;

      /**
       如果更正“抵（质）押合同标识码”信息，则关联【510-抵（质）押合同信息】，检查“抵（质）押合同标识码”是否匹配存在；
       */
      declare
        cursor table_cur is
          select distinct a.*,b.E_CCC from MBT_410_EX a inner join MBT_410_E_EX b on a.DATA_ID=b.PDATA_ID where 1=1
                AND a.B_RPT_DATE_CODE NOT IN ('88','99')
                AND A.PART_TYPE LIKE '%E%'
                AND A.B_RPT_DATE=V_RPT_DATE
                AND NOT EXISTS (
              SELECT 1 FROM (
                              select DISTINCT B_CC_CODE FROM (
                                SELECT B_CC_CODE FROM MBT_510 where CUST_TYPE='P' AND B_RPT_DATE=V_RPT_DATE
                                UNION ALL
                                SELECT B_CC_CODE FROM MBT_510_RPT where CUST_TYPE='P' )
                            )c WHERE b.E_CCC=c.B_CC_CODE
          );
      begin
        for REC in table_cur loop
          V_BUS_VALIDATE_DESC := '如果更正“抵（质）押合同标识码”信息，则关联【510-抵（质）押合同信息】，检查“抵（质）押合同标识码”:'||REC.E_CCC||'是否匹配存在；';
          INSERT INTO MBT_CROSS_TABLE_VALIDATE (RSV1,DATA_ID, DATA_DATE,  BUS_DATA_ID, BUS_CORP_ID, BUS_ORG_ID, BUS_GROUP_ID, BUS_CLASS, RPT_DATA_TYPE, RPT_DATA_NO, VALIDATE_TYPE, BUS_VALIDATE_DESC, BUS_EXPLAIN, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, RPT_DATE) VALUES
            ('业借贷账户按段更正',GET_DATA_ID(V_SYSDATE), V_SYSDATE,  REC.DATA_ID, REC.CORP_ID, REC.ORG_ID, REC.GROUP_ID, 'P', V_RPT_DATA_TYPE, V_RPT_DATA_NO, '跨表校验', V_BUS_VALIDATE_DESC, V_BUS_EXPLAIN, 'SYS', V_SYSDATE, V_SYSTIME, V_RPT_DATE);
          /**
            同时更新原始数据的数据状态。
           */
         -- update MBT_410_EX set CHECK_FLAG='L' , DATA_STATUS ='00' WHERE DATA_ID=REC.DATA_ID;
        ERR_CODE  := '98';
          ERR_MSG   := '存在校验失败的数据。';
        END LOOP ;
        EXCEPTION
          WHEN OTHERS THEN
          ERR_CODE := SQLCODE;
          ERR_MSG  := SUBSTR(SQLERRM, 1, 200);
          ROLLBACK;
          RETURN;
      END;
      COMMIT;

    ELSIF V_RPT_DATA_NO = '2019MBT412A023' THEN
      --先删除当前跨表校验的数据
      DELETE FROM MBT_CROSS_TABLE_VALIDATE WHERE RPT_DATA_TYPE=V_RPT_DATA_TYPE AND RPT_DATA_NO = V_RPT_DATA_NO AND RPT_DATE = V_RPT_DATE;

      /**
        如果更正“授信协议标识码”信息，则关联【420-企业授信协议信息】，检查“授信协议标识码”是否匹配存在；
       */
      declare
        cursor table_cur is
          select * from MBT_410_EX a where 1=1 and a.data_status != 22 and a.B_RPT_DATE=V_RPT_DATE AND a.B_RPT_DATE_CODE NOT IN ('88','99') AND A.PART_TYPE LIKE '%F%' and not exists
          (select 1 from (
                           SELECT DISTINCT B_CONTRACT_CODE FROM (
                             select B_CONTRACT_CODE from mbt_420 where B_RPT_DATE = V_RPT_DATE
                             union all
                             select B_CONTRACT_CODE from  mbt_420_rpt )
                         ) b where A.F_MCC=B.B_CONTRACT_CODE);
      begin
        for REC in table_cur loop
          V_BUS_VALIDATE_DESC := '关联【420-企业授信协议信息】，检查“授信协议标识码”:'||REC.F_MCC||'是否匹配存在；';
          INSERT INTO MBT_CROSS_TABLE_VALIDATE (RSV1,DATA_ID, DATA_DATE,  BUS_DATA_ID, BUS_CORP_ID, BUS_ORG_ID, BUS_GROUP_ID, BUS_CLASS, RPT_DATA_TYPE, RPT_DATA_NO, VALIDATE_TYPE, BUS_VALIDATE_DESC, BUS_EXPLAIN, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, RPT_DATE) VALUES
            ('业借贷账户按段更正',GET_DATA_ID(V_SYSDATE), V_SYSDATE,  REC.DATA_ID, REC.CORP_ID, REC.ORG_ID, REC.GROUP_ID, 'P', V_RPT_DATA_TYPE, V_RPT_DATA_NO, '跨表校验', V_BUS_VALIDATE_DESC, V_BUS_EXPLAIN, 'SYS', V_SYSDATE, V_SYSTIME, V_RPT_DATE);
          /**
            同时更新原始数据的数据状态。
           */
        --  update MBT_410_EX set CHECK_FLAG='L' , DATA_STATUS ='00' WHERE DATA_ID=REC.DATA_ID;
        ERR_CODE  := '98';
          ERR_MSG   := '存在校验失败的数据。';
        END LOOP ;
        EXCEPTION
          WHEN OTHERS THEN
          ERR_CODE := SQLCODE;
          ERR_MSG  := SUBSTR(SQLERRM, 1, 200);
          ROLLBACK;
          RETURN;
      END;
      COMMIT;
    ELSIF V_RPT_DATA_NO = '2019MBT412A024' THEN
      --先删除当前跨表校验的数据
      DELETE FROM MBT_CROSS_TABLE_VALIDATE WHERE RPT_DATA_TYPE=V_RPT_DATA_TYPE AND RPT_DATA_NO = V_RPT_DATA_NO AND RPT_DATE = V_RPT_DATE;

      /**
        如果更正“授信协议标识码”信息，则关联【220-个人授信协议信息】，检查“授信协议标识号”不存在重复；
       */
      declare
        cursor table_cur is
          select * from MBT_410_EX a where 1=1 and a.data_status != 22 and a.B_RPT_DATE=V_RPT_DATE AND a.B_RPT_DATE_CODE NOT IN ('88','99') AND A.PART_TYPE LIKE '%F%'  and exists
          (select 1 from (
                           SELECT DISTINCT B_CONTRACT_CODE FROM (
                             select B_CONTRACT_CODE from mbt_220 where B_RPT_DATE = V_RPT_DATE
                             union all
                             select B_CONTRACT_CODE from  mbt_220_rpt )
                         ) b where A.F_MCC=B.B_CONTRACT_CODE);
      begin
        for REC in table_cur loop
          V_BUS_VALIDATE_DESC := '如果更正“授信协议标识码”信息，则关联【220-个人授信协议信息】，检查“授信协议标识号”'||REC.F_MCC||'不存在重复；';
          INSERT INTO MBT_CROSS_TABLE_VALIDATE (RSV1,DATA_ID, DATA_DATE,  BUS_DATA_ID, BUS_CORP_ID, BUS_ORG_ID, BUS_GROUP_ID, BUS_CLASS, RPT_DATA_TYPE, RPT_DATA_NO, VALIDATE_TYPE, BUS_VALIDATE_DESC, BUS_EXPLAIN, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, RPT_DATE) VALUES
            ('业借贷账户按段更正',GET_DATA_ID(V_SYSDATE), V_SYSDATE,  REC.DATA_ID, REC.CORP_ID, REC.ORG_ID, REC.GROUP_ID, 'C', V_RPT_DATA_TYPE, V_RPT_DATA_NO, '跨表校验', V_BUS_VALIDATE_DESC, V_BUS_EXPLAIN, 'SYS', V_SYSDATE, V_SYSTIME, V_RPT_DATE);
          /**
            同时更新原始数据的数据状态。
           */
          --update MBT_410_EX set CHECK_FLAG='L' , DATA_STATUS ='00' WHERE DATA_ID=REC.DATA_ID;
        ERR_CODE  := '98';
          ERR_MSG   := '存在校验失败的数据。';
        END LOOP ;
        EXCEPTION
          WHEN OTHERS THEN
          ERR_CODE := SQLCODE;
          ERR_MSG  := SUBSTR(SQLERRM, 1, 200);
          ROLLBACK;
          RETURN;
      END;
      COMMIT;
    ELSE
      ERR_CODE:='99';
      ERR_MSG :='校验编号不正确。';
    END IF ;

  END;


END;
/

prompt
prompt Creating procedure SP_MBT_CROSS_TABLE_420
prompt =========================================
prompt
CREATE OR REPLACE PROCEDURE "SP_MBT_CROSS_TABLE_420"( V_RPT_DATA_TYPE IN VARCHAR2,----信息报送类型（表名）
                                                      V_RPT_DATA_NO   IN VARCHAR2,--信息报送编号（校验编号）
                                                      V_RPT_DATE      IN VARCHAR2,--信息报告日期
                                                      V_BUS_EXPLAIN   IN VARCHAR2,--业务说明
                                                      ERR_CODE        IN OUT VARCHAR,--错误码
                                                      ERR_MSG         IN OUT VARCHAR --错误信息
) AS
V_SYSDATE VARCHAR(8);
V_SYSTIME VARCHAR(14);
V_BUS_VALIDATE_DESC VARCHAR2(4000);

  /**
  1、  420-企业授信协议信息  表间校验
      关联【310-企业基本信息】，检查“受信人姓名”、“受信人身份识别类型”、“受信人身份识别号码”是否匹配存在；
      “匹配存在”指关联检查的本体信息记录已经报送过或本次会一起报送。
  2、  420-企业授信协议信息  表间校验
      关联【220-个人授信协议信息】，检查“授信协议标识号”不存在重复；
      对于同时报送个人授信协议和企业授信协议的机构，两类授信协议的标识码不能重合。

   */
BEGIN
  V_SYSDATE := TO_CHAR(SYSDATE, 'YYYYMMDD');
  V_SYSTIME := TO_CHAR(SYSDATE, 'YYYYMMDDHH24MISS');
  ERR_CODE  := '00';
  ERR_MSG   := 'OK';



  BEGIN

    IF V_RPT_DATA_NO = '2019MBT420A025' THEN
      --先删除当前跨表校验的数据
      DELETE FROM MBT_CROSS_TABLE_VALIDATE WHERE RPT_DATA_TYPE=V_RPT_DATA_TYPE AND RPT_DATA_NO = V_RPT_DATA_NO AND RPT_DATE = V_RPT_DATE;

      /**
         关联【310-企业基本信息】，检查“受信人姓名”、“受信人身份识别类型”、“受信人身份识别号码”是否匹配存在；
       */
      declare
        cursor table_cur is
          select * from mbt_420 a where 1=1 and a.data_status != 22 and a.B_RPT_DATE=V_RPT_DATE AND a.B_RPT_DATE_CODE NOT IN ('88','99') and not exists
          (select 1 from (
                           SELECT DISTINCT B_ENT_NAME,B_ENT_CERT,B_ENT_CERT_NUM FROM (
                             select B_ENT_NAME,B_ENT_CERT,B_ENT_CERT_NUM from mbt_310 where B_RPT_DATE = V_RPT_DATE
                             union all
                             select B_ENT_NAME,B_ENT_CERT,B_ENT_CERT_NUM from  mbt_310_rpt )
                         ) b where A.B_NAME=B.B_ENT_NAME AND A.B_ID_TYPE=B.B_ENT_CERT_NUM AND A.B_ID_NUM=B.B_ENT_CERT);
      begin
        for REC in table_cur loop
          V_BUS_VALIDATE_DESC := '关联【310-企业基本信息】，检查“受信人姓名”:'||REC.B_NAME||'、“受信人身份识别类型”：'||REC.B_ID_TYPE||'、“受信人身份识别号码”：'||REC.B_ID_NUM||'是否匹配存在；';
          INSERT INTO MBT_CROSS_TABLE_VALIDATE (RSV1,DATA_ID, DATA_DATE,  BUS_DATA_ID, BUS_CORP_ID, BUS_ORG_ID, BUS_GROUP_ID, BUS_CLASS, RPT_DATA_TYPE, RPT_DATA_NO, VALIDATE_TYPE, BUS_VALIDATE_DESC, BUS_EXPLAIN, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, RPT_DATE) VALUES
            ('企业授信协议信息',GET_DATA_ID(V_SYSDATE), V_SYSDATE,  REC.DATA_ID, REC.CORP_ID, REC.ORG_ID, REC.GROUP_ID, 'C', V_RPT_DATA_TYPE, V_RPT_DATA_NO, '跨表校验', V_BUS_VALIDATE_DESC, V_BUS_EXPLAIN, 'SYS', V_SYSDATE, V_SYSTIME, V_RPT_DATE);
          /**
            同时更新原始数据的数据状态。
           */
         -- update mbt_420 set CHECK_FLAG='L' , DATA_STATUS ='00' WHERE DATA_ID=REC.DATA_ID;
        ERR_CODE  := '98';
          ERR_MSG   := '存在校验失败的数据。';
        END LOOP ;
        EXCEPTION
          WHEN OTHERS THEN
          ERR_CODE := SQLCODE;
          ERR_MSG  := SUBSTR(SQLERRM, 1, 200);
          ROLLBACK;
          RETURN;
      END;
      COMMIT;

    ELSIF V_RPT_DATA_NO = '2019MBT420A026' THEN
      --先删除当前跨表校验的数据
      DELETE FROM MBT_CROSS_TABLE_VALIDATE WHERE RPT_DATA_TYPE=V_RPT_DATA_TYPE AND RPT_DATA_NO = V_RPT_DATA_NO AND RPT_DATE = V_RPT_DATE;

      /**
         关联【220-个人授信协议信息】，检查“授信协议标识号”不存在重复；
       */
      declare
        cursor table_cur is
          select * from mbt_420 a where 1=1 and a.data_status != 22 and a.B_RPT_DATE=V_RPT_DATE AND a.B_RPT_DATE_CODE NOT IN ('88','99') and exists
          (select 1 from (
                           SELECT DISTINCT B_CONTRACT_CODE FROM (
                             select B_CONTRACT_CODE from mbt_220 where B_RPT_DATE = V_RPT_DATE
                             union all
                             select B_CONTRACT_CODE from  mbt_220_rpt )
                         ) b where A.B_CONTRACT_CODE=B.B_CONTRACT_CODE);
      begin
        for REC in table_cur loop
          V_BUS_VALIDATE_DESC := '关联【220-个人授信协议信息】，检查“授信协议标识码”不存在重复';
          INSERT INTO MBT_CROSS_TABLE_VALIDATE (RSV1,DATA_ID, DATA_DATE,  BUS_DATA_ID, BUS_CORP_ID, BUS_ORG_ID, BUS_GROUP_ID, BUS_CLASS, RPT_DATA_TYPE, RPT_DATA_NO, VALIDATE_TYPE, BUS_VALIDATE_DESC, BUS_EXPLAIN, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, RPT_DATE) VALUES
            ('企业授信协议信息',GET_DATA_ID(V_SYSDATE), V_SYSDATE,  REC.DATA_ID, REC.CORP_ID, REC.ORG_ID, REC.GROUP_ID, 'C', V_RPT_DATA_TYPE, V_RPT_DATA_NO, '跨表校验', V_BUS_VALIDATE_DESC, V_BUS_EXPLAIN, 'SYS', V_SYSDATE, V_SYSTIME, V_RPT_DATE);
          /**
            同时更新原始数据的数据状态。
           */
        --  update mbt_420 set CHECK_FLAG='L' , DATA_STATUS ='00' WHERE DATA_ID=REC.DATA_ID;
        ERR_CODE  := '98';
          ERR_MSG   := '存在校验失败的数据。';
        END LOOP ;
        EXCEPTION
          WHEN OTHERS THEN
          ERR_CODE := SQLCODE;
          ERR_MSG  := SUBSTR(SQLERRM, 1, 200);
          ROLLBACK;
          RETURN;
      END;
      COMMIT;

    ELSE
      ERR_CODE:='99';
      ERR_MSG :='校验编号不正确。';
    END IF ;

  END;


END;
/

prompt
prompt Creating procedure SP_MBT_CROSS_TABLE_422
prompt =========================================
prompt
CREATE OR REPLACE PROCEDURE "SP_MBT_CROSS_TABLE_422"( V_RPT_DATA_TYPE IN VARCHAR2,----信息报送类型（表名）
                                                      V_RPT_DATA_NO   IN VARCHAR2,--信息报送编号（校验编号）
                                                      V_RPT_DATE      IN VARCHAR2,--信息报告日期
                                                      V_BUS_EXPLAIN   IN VARCHAR2,--业务说明
                                                      ERR_CODE        OUT VARCHAR,--错误码
                                                      ERR_MSG         OUT VARCHAR --错误信息
) AS
V_SYSDATE VARCHAR(8);
V_SYSTIME VARCHAR(14);
V_BUS_VALIDATE_DESC VARCHAR2(4000);

  /**
      422-企业授信协议按段更正  表间校验
      关联【220-个人授信协议信息】，检查“授信协议标识号”不存在重复；
      对于同时报送个人授信协议和企业授信协议的机构，两类授信协议的标识码不能重合。

   */
BEGIN
  V_SYSDATE := TO_CHAR(SYSDATE, 'YYYYMMDD');
  V_SYSTIME := TO_CHAR(SYSDATE, 'YYYYMMDDHH24MISS');
  ERR_CODE  := '00';
  ERR_MSG   := 'OK';

  BEGIN

    IF V_RPT_DATA_NO = '2019MBT422A027' THEN
      --先删除当前跨表校验的数据
      DELETE FROM MBT_CROSS_TABLE_VALIDATE WHERE RPT_DATA_TYPE=V_RPT_DATA_TYPE AND RPT_DATA_NO = V_RPT_DATA_NO AND RPT_DATE = V_RPT_DATE;

      /**
        关联【220-个人授信协议信息】，检查“授信协议标识号”不存在重复；
       */
      declare
        cursor table_cur is
          select * from MBT_420_EX a where 1=1 and a.data_status != 22 and a.B_RPT_DATE=V_RPT_DATE AND a.B_RPT_DATE_CODE NOT IN ('88','99') AND A.PART_TYPE LIKE '%B%'  and exists
          (select 1 from (
                           SELECT DISTINCT B_CONTRACT_CODE FROM (
                             select B_CONTRACT_CODE from mbt_220 where B_RPT_DATE = V_RPT_DATE
                             union all
                             select B_CONTRACT_CODE from  mbt_220_rpt )
                         ) b where A.B_CONTRACT_CODE=B.B_CONTRACT_CODE);
      begin
        for REC in table_cur loop
          V_BUS_VALIDATE_DESC := '关联【220-个人授信协议信息】，检查“授信协议标识号”'||REC.B_CONTRACT_CODE||'不存在重复；';
          INSERT INTO MBT_CROSS_TABLE_VALIDATE (RSV1,DATA_ID, DATA_DATE,  BUS_DATA_ID, BUS_CORP_ID, BUS_ORG_ID, BUS_GROUP_ID, BUS_CLASS, RPT_DATA_TYPE, RPT_DATA_NO, VALIDATE_TYPE, BUS_VALIDATE_DESC, BUS_EXPLAIN, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, RPT_DATE) VALUES
            ('企业授信协议按段更正',GET_DATA_ID(V_SYSDATE), V_SYSDATE,  REC.DATA_ID, REC.CORP_ID, REC.ORG_ID, REC.GROUP_ID, 'C', V_RPT_DATA_TYPE, V_RPT_DATA_NO, '跨表校验', V_BUS_VALIDATE_DESC, V_BUS_EXPLAIN, 'SYS', V_SYSDATE, V_SYSTIME, V_RPT_DATE);
          /**
            同时更新原始数据的数据状态。
           */
        --  update MBT_420_EX set CHECK_FLAG='L' , DATA_STATUS ='00' WHERE DATA_ID=REC.DATA_ID;
        ERR_CODE  := '98';
          ERR_MSG   := '存在校验失败的数据。';
        END LOOP ;
        EXCEPTION
          WHEN OTHERS THEN
          ERR_CODE := SQLCODE;
          ERR_MSG  := SUBSTR(SQLERRM, 1, 200);
          ROLLBACK;
          RETURN;
      END;
      COMMIT;
    ELSE
      ERR_CODE:='99';
      ERR_MSG :='校验编号不正确。';
    END IF ;

  END;


END;
/

prompt
prompt Creating procedure SP_MBT_CROSS_TABLE_440
prompt =========================================
prompt
CREATE OR REPLACE PROCEDURE "SP_MBT_CROSS_TABLE_440"( V_RPT_DATA_TYPE IN VARCHAR2,----信息报送类型（表名）
                                                      V_RPT_DATA_NO   IN VARCHAR2,--信息报送编号（校验编号）
                                                      V_RPT_DATE      IN VARCHAR2,--信息报告日期
                                                      V_BUS_EXPLAIN   IN VARCHAR2,--业务说明
                                                      ERR_CODE        OUT VARCHAR,--错误码
                                                      ERR_MSG         OUT VARCHAR --错误信息
) AS
V_SYSDATE VARCHAR(8);
V_SYSTIME VARCHAR(14);
V_BUS_VALIDATE_DESC VARCHAR2(4000);

  /**
  1、  440-企业担保账户信息  表间校验
      关联【310-个人基本信息】，检查“企业名称”、“企业身份识别类型”、“企业身份识别号码”是否匹配存在；
      “匹配存在”指关联检查的本体信息记录已经报送过或本次会一起报送。
  2、  440-企业担保账户信息  表间校验
      如果“抵质押合同个数”大于0，关联【510-抵（质）押合同信息】，检查“抵（质）押合同标识码”是否匹配存在；
      由于抵质押物信息段作为担保账户的预留信息段，暂时不需要报送，所以该检查暂不使用。
  3、  440-企业担保账户信息  表间校验
      关联【420-企业授信协议信息】，检查“授信协议标识码”是否匹配存在；
      “匹配存在”指关联检查的本体信息记录已经报送过或本次会一起报送。

   */
BEGIN
  V_SYSDATE := TO_CHAR(SYSDATE, 'YYYYMMDD');
  V_SYSTIME := TO_CHAR(SYSDATE, 'YYYYMMDDHH24MISS');
  ERR_CODE  := '00';
  ERR_MSG   := 'OK';




  BEGIN

    IF V_RPT_DATA_NO = '2019MBT440A028' THEN
      --先删除当前跨表校验的数据
      DELETE FROM MBT_CROSS_TABLE_VALIDATE WHERE RPT_DATA_TYPE=V_RPT_DATA_TYPE AND RPT_DATA_NO = V_RPT_DATA_NO AND RPT_DATE = V_RPT_DATE;

      /**
        关联【310-个人基本信息】，检查“企业名称”、“企业身份识别类型”、“企业身份识别号码”是否匹配存在；
       */
      declare
        cursor table_cur is
          select * from mbt_440 a where 1=1 and a.data_status != 22 and a.B_RPT_DATE=V_RPT_DATE AND a.B_RPT_DATE_CODE NOT IN ('88','99') and not exists
          (select 1 from (
                           SELECT DISTINCT B_ENT_NAME,B_ENT_CERT,B_ENT_CERT_NUM FROM (
                             select B_ENT_NAME,B_ENT_CERT,B_ENT_CERT_NUM from mbt_310 where B_RPT_DATE = V_RPT_DATE
                             union all
                             select B_ENT_NAME,B_ENT_CERT,B_ENT_CERT_NUM from  mbt_310_rpt )
                         ) b where A.B_NAME=B.B_ENT_NAME AND A.B_ID_TYPE=B.B_ENT_CERT_NUM AND A.B_ID_NUM=B.B_ENT_CERT);
      begin
        for REC in table_cur loop
          V_BUS_VALIDATE_DESC := '关联【310-企业基本信息】，检查“企业名称”:'||REC.B_NAME||'、“企业身份识别类型”：'||REC.B_ID_TYPE||'、“企业身份识别号码”：'||REC.B_ID_NUM||'是否匹配存在；';
          INSERT INTO MBT_CROSS_TABLE_VALIDATE (RSV1,DATA_ID, DATA_DATE,  BUS_DATA_ID, BUS_CORP_ID, BUS_ORG_ID, BUS_GROUP_ID, BUS_CLASS, RPT_DATA_TYPE, RPT_DATA_NO, VALIDATE_TYPE, BUS_VALIDATE_DESC, BUS_EXPLAIN, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, RPT_DATE) VALUES
            ('企业担保账户信息',GET_DATA_ID(V_SYSDATE), V_SYSDATE,  REC.DATA_ID, REC.CORP_ID, REC.ORG_ID, REC.GROUP_ID, 'C', V_RPT_DATA_TYPE, V_RPT_DATA_NO, '跨表校验', V_BUS_VALIDATE_DESC, V_BUS_EXPLAIN, 'SYS', V_SYSDATE, V_SYSTIME, V_RPT_DATE);
          /**
            同时更新原始数据的数据状态。
           */
        --  update mbt_440 set CHECK_FLAG='L' , DATA_STATUS ='00' WHERE DATA_ID=REC.DATA_ID;
        ERR_CODE  := '98';
          ERR_MSG   := '存在校验失败的数据。';
        END LOOP ;
        EXCEPTION
          WHEN OTHERS THEN
          ERR_CODE := SQLCODE;
          ERR_MSG  := SUBSTR(SQLERRM, 1, 200);
          ROLLBACK;
          RETURN;
      END;
      COMMIT;
    ELSIF V_RPT_DATA_NO = '2019MBT440A029' THEN
      --先删除当前跨表校验的数据
      DELETE FROM MBT_CROSS_TABLE_VALIDATE WHERE RPT_DATA_TYPE=V_RPT_DATA_TYPE AND RPT_DATA_NO = V_RPT_DATA_NO AND RPT_DATE = V_RPT_DATE;

      /**
        如果“抵质押合同个数”大于0，关联【510-抵（质）押合同信息】，检查“抵（质）押合同标识码”是否匹配存在；
       */
      declare
        cursor table_cur is
          select distinct a.*,b.CCC from mbt_440 a inner join MBT_440_E b on a.DATA_ID=b.PDATA_ID where 1=1
            AND a.B_RPT_DATE_CODE NOT IN ('88','99')
            AND A.B_RPT_DATE=V_RPT_DATE
            AND NOT EXISTS (
              SELECT 1 FROM (
                              select DISTINCT B_CC_CODE FROM (
                                SELECT B_CC_CODE FROM MBT_510 where CUST_TYPE='C' AND B_RPT_DATE=V_RPT_DATE
                                UNION ALL
                                SELECT B_CC_CODE FROM MBT_510_RPT where CUST_TYPE='C' )
                            )c WHERE b.CCC=c.B_CC_CODE
          );
      begin
        for REC in table_cur loop
          V_BUS_VALIDATE_DESC := '如果“抵质押合同个数”大于0，关联【510-抵（质）押合同信息】，检查“抵（质）押合同标识码”是否匹配存在';
          INSERT INTO MBT_CROSS_TABLE_VALIDATE (RSV1,DATA_ID, DATA_DATE,  BUS_DATA_ID, BUS_CORP_ID, BUS_ORG_ID, BUS_GROUP_ID, BUS_CLASS, RPT_DATA_TYPE, RPT_DATA_NO, VALIDATE_TYPE, BUS_VALIDATE_DESC, BUS_EXPLAIN, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, RPT_DATE) VALUES
            ('企业担保账户信息',GET_DATA_ID(V_SYSDATE), V_SYSDATE,  REC.DATA_ID, REC.CORP_ID, REC.ORG_ID, REC.GROUP_ID, 'C', V_RPT_DATA_TYPE, V_RPT_DATA_NO, '跨表校验', V_BUS_VALIDATE_DESC, V_BUS_EXPLAIN, 'SYS', V_SYSDATE, V_SYSTIME, V_RPT_DATE);
          /**
            同时更新原始数据的数据状态。
           */
        --  update mbt_440 set CHECK_FLAG='L' , DATA_STATUS ='00' WHERE DATA_ID=REC.DATA_ID;
        ERR_CODE  := '98';
          ERR_MSG   := '存在校验失败的数据。';
        END LOOP ;
        EXCEPTION
          WHEN OTHERS THEN
          ERR_CODE := SQLCODE;
          ERR_MSG  := SUBSTR(SQLERRM, 1, 200);
          ROLLBACK;
          RETURN;
      END;
      COMMIT;

    ELSIF V_RPT_DATA_NO = '2019MBT440A030' THEN
      --先删除当前跨表校验的数据
      DELETE FROM MBT_CROSS_TABLE_VALIDATE WHERE RPT_DATA_TYPE=V_RPT_DATA_TYPE AND RPT_DATA_NO = V_RPT_DATA_NO AND RPT_DATE = V_RPT_DATE;

      /**
        关联【420-企业授信协议信息】，检查“授信协议标识码”是否匹配存在；
       */
      declare
        cursor table_cur is
          select * from mbt_440 a where 1=1 and a.data_status != 22 and a.B_RPT_DATE=V_RPT_DATE AND a.B_RPT_DATE_CODE NOT IN ('88','99') and not exists
          (select 1 from (
                           SELECT DISTINCT B_CONTRACT_CODE FROM (
                             select B_CONTRACT_CODE from mbt_420 where B_RPT_DATE = V_RPT_DATE
                             union all
                             select B_CONTRACT_CODE from  mbt_420_rpt )
                         ) b where A.F_MCC=B.B_CONTRACT_CODE);
      begin
        for REC in table_cur loop
          V_BUS_VALIDATE_DESC := '关联【420-企业授信协议信息】，检查“授信协议标识码”是否匹配存在；';
          INSERT INTO MBT_CROSS_TABLE_VALIDATE (RSV1,DATA_ID, DATA_DATE,  BUS_DATA_ID, BUS_CORP_ID, BUS_ORG_ID, BUS_GROUP_ID, BUS_CLASS, RPT_DATA_TYPE, RPT_DATA_NO, VALIDATE_TYPE, BUS_VALIDATE_DESC, BUS_EXPLAIN, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, RPT_DATE) VALUES
            ('企业担保账户信息',GET_DATA_ID(V_SYSDATE), V_SYSDATE,  REC.DATA_ID, REC.CORP_ID, REC.ORG_ID, REC.GROUP_ID, 'C', V_RPT_DATA_TYPE, V_RPT_DATA_NO, '跨表校验', V_BUS_VALIDATE_DESC, V_BUS_EXPLAIN, 'SYS', V_SYSDATE, V_SYSTIME, V_RPT_DATE);
          /**
            同时更新原始数据的数据状态。
           */
        --  update mbt_440 set CHECK_FLAG='L' , DATA_STATUS ='00' WHERE DATA_ID=REC.DATA_ID;
        ERR_CODE  := '98';
          ERR_MSG   := '存在校验失败的数据。';
        END LOOP ;
        EXCEPTION
          WHEN OTHERS THEN
          ERR_CODE := SQLCODE;
          ERR_MSG  := SUBSTR(SQLERRM, 1, 200);
          ROLLBACK;
          RETURN;
      END;
      COMMIT;

    ELSE
      ERR_CODE:='99';
      ERR_MSG :='校验编号不正确。';
    END IF ;

  END;


END;
/

prompt
prompt Creating procedure SP_MBT_CROSS_TABLE_442
prompt =========================================
prompt
CREATE OR REPLACE PROCEDURE "SP_MBT_CROSS_TABLE_442"( V_RPT_DATA_TYPE IN VARCHAR2,----信息报送类型（表名）
                                                      V_RPT_DATA_NO   IN VARCHAR2,--信息报送编号（校验编号）
                                                      V_RPT_DATE      IN VARCHAR2,--信息报告日期
                                                      V_BUS_EXPLAIN   IN VARCHAR2,--业务说明
                                                      ERR_CODE        OUT VARCHAR,--错误码
                                                      ERR_MSG         OUT VARCHAR --错误信息
  ) AS
    V_SYSDATE VARCHAR(8);
    V_SYSTIME VARCHAR(14);
    V_BUS_VALIDATE_DESC VARCHAR2(4000);

  /**
1、  442-企业担保账户按段更正  表间校验
  如果更正“抵（质）押合同标识码”信息，则关联【510-抵（质）押合同信息】，检查“抵（质）押合同标识码”是否匹配存在；
  由于抵质押物信息段作为担保账户的预留信息段，暂时不需要报送，所以该检查暂不使用。
2、  442-企业担保账户按段更正  表间校验
  如果更正“授信协议标识码”信息，则关联【420-企业授信协议信息】，检查“授信协议标识码”是否匹配存在；
  “匹配存在”指关联检查的本体信息记录已经报送过或本次会一起报送。
3、  442-企业担保账户按段更正  表间校验
  如果更正“授信协议标识码”信息，则关联【220-个人授信协议信息】，检查“授信协议标识号”不存在重复；
  对于同时报送个人授信协议和企业授信协议的机构，两类授信协议的标识码不能重合。

 */

    BEGIN
      V_SYSDATE := TO_CHAR(SYSDATE, 'YYYYMMDD');
      V_SYSTIME := TO_CHAR(SYSDATE, 'YYYYMMDDHH24MISS');
      ERR_CODE  := '00';
      ERR_MSG   := 'OK';

      BEGIN

        IF V_RPT_DATA_NO = '2019MBT442A031' THEN
          --先删除当前跨表校验的数据
          DELETE FROM MBT_CROSS_TABLE_VALIDATE WHERE RPT_DATA_TYPE=V_RPT_DATA_TYPE AND RPT_DATA_NO = V_RPT_DATA_NO AND RPT_DATE = V_RPT_DATE;

          /**
          如果更正“抵（质）押合同标识码”信息，则关联【510-抵（质）押合同信息】，检查“抵（质）押合同标识码”是否匹配存在；
           */
          declare
            cursor table_cur is
              select distinct a.*,b.CCC from MBT_440_EX a inner join MBT_440_E_EX b on a.DATA_ID=b.PDATA_ID where 1=1
                    AND a.B_RPT_DATE_CODE NOT IN ('88','99')
                    AND A.PART_TYPE LIKE '%E%'
                    AND A.B_RPT_DATE=V_RPT_DATE
                    AND NOT EXISTS (
                  SELECT 1 FROM (
                                  select DISTINCT B_CC_CODE FROM (
                                    SELECT B_CC_CODE FROM MBT_510 where CUST_TYPE='P' AND B_RPT_DATE=V_RPT_DATE
                                    UNION ALL
                                    SELECT B_CC_CODE FROM MBT_510_RPT where CUST_TYPE='P' )
                                )c WHERE b.CCC=c.B_CC_CODE
              );
          begin
            for REC in table_cur loop
              V_BUS_VALIDATE_DESC := '如果更正“抵（质）押合同标识码”信息，则关联【510-抵（质）押合同信息】，检查“抵（质）押合同标识码”:'||REC.CCC||'是否匹配存在；';
              INSERT INTO MBT_CROSS_TABLE_VALIDATE (RSV1,DATA_ID, DATA_DATE,  BUS_DATA_ID, BUS_CORP_ID, BUS_ORG_ID, BUS_GROUP_ID, BUS_CLASS, RPT_DATA_TYPE, RPT_DATA_NO, VALIDATE_TYPE, BUS_VALIDATE_DESC, BUS_EXPLAIN, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, RPT_DATE) VALUES
                ('企业担保账户按段更正',GET_DATA_ID(V_SYSDATE), V_SYSDATE,  REC.DATA_ID, REC.CORP_ID, REC.ORG_ID, REC.GROUP_ID, 'P', V_RPT_DATA_TYPE, V_RPT_DATA_NO, '跨表校验', V_BUS_VALIDATE_DESC, V_BUS_EXPLAIN, 'SYS', V_SYSDATE, V_SYSTIME, V_RPT_DATE);
              /**
                同时更新原始数据的数据状态。
               */
            --  update MBT_440_EX set CHECK_FLAG='L' , DATA_STATUS ='00' WHERE DATA_ID=REC.DATA_ID;
            ERR_CODE  := '98';
          ERR_MSG   := '存在校验失败的数据。';
        END LOOP ;
        EXCEPTION
          WHEN OTHERS THEN
          ERR_CODE := SQLCODE;
          ERR_MSG  := SUBSTR(SQLERRM, 1, 200);
          ROLLBACK;
          RETURN;
      END;
      COMMIT;

        ELSIF V_RPT_DATA_NO = '2019MBT442A032' THEN
          --先删除当前跨表校验的数据
          DELETE FROM MBT_CROSS_TABLE_VALIDATE WHERE RPT_DATA_TYPE=V_RPT_DATA_TYPE AND RPT_DATA_NO = V_RPT_DATA_NO AND RPT_DATE = V_RPT_DATE;

          /**
            如果更正“授信协议标识码”信息，则关联【420-企业授信协议信息】，检查“授信协议标识码”是否匹配存在；
           */
          declare
            cursor table_cur is
              select * from MBT_440_EX a where 1=1 and a.data_status != 22 and a.B_RPT_DATE=V_RPT_DATE AND a.B_RPT_DATE_CODE NOT IN ('88','99') AND A.PART_TYPE LIKE '%F%' and not exists
              (select 1 from (
                               SELECT DISTINCT B_CONTRACT_CODE FROM (
                                 select B_CONTRACT_CODE from mbt_420 where B_RPT_DATE = V_RPT_DATE
                                 union all
                                 select B_CONTRACT_CODE from  mbt_420_rpt )
                             ) b where A.F_MCC=B.B_CONTRACT_CODE);
          begin
            for REC in table_cur loop
              V_BUS_VALIDATE_DESC := '关联【420-企业授信协议信息】，检查“授信协议标识码”:'||REC.F_MCC||'是否匹配存在；';
              INSERT INTO MBT_CROSS_TABLE_VALIDATE (RSV1,DATA_ID, DATA_DATE,  BUS_DATA_ID, BUS_CORP_ID, BUS_ORG_ID, BUS_GROUP_ID, BUS_CLASS, RPT_DATA_TYPE, RPT_DATA_NO, VALIDATE_TYPE, BUS_VALIDATE_DESC, BUS_EXPLAIN, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, RPT_DATE) VALUES
                ('企业担保账户按段更正',GET_DATA_ID(V_SYSDATE), V_SYSDATE,  REC.DATA_ID, REC.CORP_ID, REC.ORG_ID, REC.GROUP_ID, 'P', V_RPT_DATA_TYPE, V_RPT_DATA_NO, '跨表校验', V_BUS_VALIDATE_DESC, V_BUS_EXPLAIN, 'SYS', V_SYSDATE, V_SYSTIME, V_RPT_DATE);
              /**
                同时更新原始数据的数据状态。
               */
             -- update MBT_440_EX set CHECK_FLAG='L' , DATA_STATUS ='00' WHERE DATA_ID=REC.DATA_ID;
            ERR_CODE  := '98';
          ERR_MSG   := '存在校验失败的数据。';
        END LOOP ;
        EXCEPTION
          WHEN OTHERS THEN
          ERR_CODE := SQLCODE;
          ERR_MSG  := SUBSTR(SQLERRM, 1, 200);
          ROLLBACK;
          RETURN;
      END;
      COMMIT;
        ELSIF V_RPT_DATA_NO = '2019MBT442A033' THEN
          --先删除当前跨表校验的数据
          DELETE FROM MBT_CROSS_TABLE_VALIDATE WHERE RPT_DATA_TYPE=V_RPT_DATA_TYPE AND RPT_DATA_NO = V_RPT_DATA_NO AND RPT_DATE = V_RPT_DATE;

          /**
            如果更正“授信协议标识码”信息，则关联【220-个人授信协议信息】，检查“授信协议标识号”不存在重复；
           */
          declare
            cursor table_cur is
              select * from MBT_440_EX a where 1=1 and a.data_status != 22 and a.B_RPT_DATE=V_RPT_DATE AND a.B_RPT_DATE_CODE NOT IN ('88','99') AND A.PART_TYPE LIKE '%F%'  and exists
              (select 1 from (
                               SELECT DISTINCT B_CONTRACT_CODE FROM (
                                 select B_CONTRACT_CODE from mbt_220 where B_RPT_DATE = V_RPT_DATE
                                 union all
                                 select B_CONTRACT_CODE from  mbt_220_rpt )
                             ) b where A.F_MCC=B.B_CONTRACT_CODE);
          begin
            for REC in table_cur loop
              V_BUS_VALIDATE_DESC := '如果更正“授信协议标识码”信息，则关联【220-个人授信协议信息】，检查“授信协议标识号”'||REC.F_MCC||'不存在重复；';
              INSERT INTO MBT_CROSS_TABLE_VALIDATE (RSV1,DATA_ID, DATA_DATE,  BUS_DATA_ID, BUS_CORP_ID, BUS_ORG_ID, BUS_GROUP_ID, BUS_CLASS, RPT_DATA_TYPE, RPT_DATA_NO, VALIDATE_TYPE, BUS_VALIDATE_DESC, BUS_EXPLAIN, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, RPT_DATE) VALUES
                ('企业担保账户按段更正',GET_DATA_ID(V_SYSDATE), V_SYSDATE,  REC.DATA_ID, REC.CORP_ID, REC.ORG_ID, REC.GROUP_ID, 'C', V_RPT_DATA_TYPE, V_RPT_DATA_NO, '跨表校验', V_BUS_VALIDATE_DESC, V_BUS_EXPLAIN, 'SYS', V_SYSDATE, V_SYSTIME, V_RPT_DATE);
              /**
                同时更新原始数据的数据状态。
               */
          --    update MBT_440_EX set CHECK_FLAG='L' , DATA_STATUS ='00' WHERE DATA_ID=REC.DATA_ID;
            ERR_CODE  := '98';
          ERR_MSG   := '存在校验失败的数据。';
        END LOOP ;
        EXCEPTION
          WHEN OTHERS THEN
          ERR_CODE := SQLCODE;
          ERR_MSG  := SUBSTR(SQLERRM, 1, 200);
          ROLLBACK;
          RETURN;
      END;
      COMMIT;
        ELSE
          ERR_CODE:='99';
          ERR_MSG :='校验编号不正确。';
        END IF ;

      END;


    END;
/

prompt
prompt Creating procedure SP_MBT_CROSS_TABLE_510_C
prompt ===========================================
prompt
CREATE OR REPLACE PROCEDURE "SP_MBT_CROSS_TABLE_510_C"( V_RPT_DATA_TYPE IN VARCHAR2,----信息报送类型（表名）
                                                        V_RPT_DATA_NO   IN VARCHAR2,--信息报送编号（校验编号）
                                                        V_RPT_DATE      IN VARCHAR2,--信息报告日期
                                                        V_BUS_EXPLAIN   IN VARCHAR2,--业务说明
                                                        ERR_CODE        OUT VARCHAR,--错误码
                                                        ERR_MSG         OUT VARCHAR --错误信息
) AS
V_SYSDATE VARCHAR(8);
V_SYSTIME VARCHAR(14);
V_BUS_VALIDATE_DESC VARCHAR2(4000);


BEGIN
  V_SYSDATE := TO_CHAR(SYSDATE, 'YYYYMMDD');
  V_SYSTIME := TO_CHAR(SYSDATE, 'YYYYMMDDHH24MISS');
  ERR_CODE  := '00';
  ERR_MSG   := 'OK';

  BEGIN

    IF V_RPT_DATA_NO = '2019MBT510A034' THEN
      --先删除当前跨表校验的数据
      DELETE FROM MBT_CROSS_TABLE_VALIDATE WHERE RPT_DATA_TYPE=V_RPT_DATA_TYPE AND RPT_DATA_NO = V_RPT_DATA_NO AND RPT_DATE = V_RPT_DATE;
      /**
        当“债务人身份类别”=“2-组织机构”时，关联【310-企业基本信息】，检查【510-抵（质）押合同信息】报送中的“债务人名称”、“债务人身份标识类型”、“债务人身份标识号码”是否匹配存在；
       */
      declare
        cursor table_cur is
          select * from mbt_510 a where 1=1 and a.data_status != 22 and a.B_RPT_DATE=V_RPT_DATE and a.B_RPT_DATE_CODE NOT IN ('88','99') AND B_INFO_ID_TYPE = '2' and not exists
          (select 1 from (
                           SELECT DISTINCT B_ENT_NAME,B_ENT_CERT,B_ENT_CERT_NUM FROM (
                             select B_ENT_NAME,B_ENT_CERT,B_ENT_CERT_NUM  from mbt_310 where B_RPT_DATE = V_RPT_DATE
                             union all
                             select B_ENT_NAME,B_ENT_CERT,B_ENT_CERT_NUM from  mbt_310_rpt )
                         ) b where A.B_NAME=B.B_ENT_NAME AND A.B_CERT_TYPE=B.B_ENT_CERT AND A.B_CERT_NUM=B.B_ENT_CERT_NUM);
      begin
        for REC in table_cur loop
          V_BUS_VALIDATE_DESC := '关联【310-个人基本信息】，检查“债务人名称”:'||REC.B_NAME||'、“债务人身份标识类型”：'||REC.B_CERT_TYPE||'、“债务人身份标识号码”：'||REC.B_CERT_NUM||'是否匹配存在；';
          INSERT INTO MBT_CROSS_TABLE_VALIDATE (RSV1,DATA_ID, DATA_DATE,  BUS_DATA_ID, BUS_CORP_ID, BUS_ORG_ID, BUS_GROUP_ID, BUS_CLASS, RPT_DATA_TYPE, RPT_DATA_NO, VALIDATE_TYPE, BUS_VALIDATE_DESC, BUS_EXPLAIN, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, RPT_DATE) VALUES
            ('企业抵质押信息',GET_DATA_ID(V_SYSDATE), V_SYSDATE,  REC.DATA_ID, REC.CORP_ID, REC.ORG_ID, REC.GROUP_ID, 'P', V_RPT_DATA_TYPE, V_RPT_DATA_NO, '跨表校验', V_BUS_VALIDATE_DESC, V_BUS_EXPLAIN, 'SYS', V_SYSDATE, V_SYSTIME, V_RPT_DATE);
          /**
            同时更新原始数据的数据状态。
           */
         -- update mbt_510 set CHECK_FLAG='L' , DATA_STATUS ='00' WHERE DATA_ID=REC.DATA_ID;
        ERR_CODE  := '98';
          ERR_MSG   := '存在校验失败的数据。';
        END LOOP ;
        EXCEPTION
          WHEN OTHERS THEN
          ERR_CODE := SQLCODE;
          ERR_MSG  := SUBSTR(SQLERRM, 1, 200);
          ROLLBACK;
          RETURN;
      END;
      COMMIT;
    ELSE
      ERR_CODE:='99';
      ERR_MSG :='校验编号不正确。';
    END IF ;

  END;





END;
/

prompt
prompt Creating procedure SP_MBT_CROSS_TABLE_510_P
prompt ===========================================
prompt
CREATE OR REPLACE PROCEDURE "SP_MBT_CROSS_TABLE_510_P"( V_RPT_DATA_TYPE IN VARCHAR2,----信息报送类型（表名）
                                                        V_RPT_DATA_NO   IN VARCHAR2,--信息报送编号（校验编号）
                                                        V_RPT_DATE      IN VARCHAR2,--信息报告日期
                                                        V_BUS_EXPLAIN   IN VARCHAR2,--业务说明
                                                        ERR_CODE        OUT VARCHAR,--错误码
                                                        ERR_MSG         OUT VARCHAR --错误信息
) AS
V_SYSDATE VARCHAR(8);
V_SYSTIME VARCHAR(14);
V_BUS_VALIDATE_DESC VARCHAR2(4000);


BEGIN
  V_SYSDATE := TO_CHAR(SYSDATE, 'YYYYMMDD');
  V_SYSTIME := TO_CHAR(SYSDATE, 'YYYYMMDDHH24MISS');
  ERR_CODE  := '00';
  ERR_MSG   := 'OK';



  BEGIN

    IF V_RPT_DATA_NO = '2019MBT510A016' THEN
      --先删除当前跨表校验的数据
      DELETE FROM MBT_CROSS_TABLE_VALIDATE WHERE RPT_DATA_TYPE=V_RPT_DATA_TYPE AND RPT_DATA_NO = V_RPT_DATA_NO AND RPT_DATE = V_RPT_DATE;

      /**
      当“债务人身份类别”=“1-自然人”时，关联【110-个人基本信息】，检查【510-抵（质）押合同信息】报送中的“债务人名称”、“债务人身份标识类型”、“债务人身份标识号码”是否匹配存在；
       */
      declare
        cursor table_cur is
          select * from mbt_510 a where 1=1 and a.data_status != 22 and a.B_RPT_DATE=V_RPT_DATE and a.B_RPT_DATE_CODE NOT IN ('88','99') AND B_INFO_ID_TYPE = '1' and not exists
          (select 1 from (
                           SELECT DISTINCT B_NAME,B_ID_TYPE,B_ID_NUM FROM (
                             select B_NAME,B_ID_TYPE,B_ID_NUM  from mbt_110 where B_RPT_DATE = V_RPT_DATE
                             union all
                             select B_NAME,B_ID_TYPE,B_ID_NUM from  mbt_110_rpt )
                         ) b where A.B_NAME=B.B_NAME AND A.B_CERT_TYPE=B.B_ID_NUM AND A.B_CERT_NUM=B.B_ID_TYPE);
      begin
        for REC in table_cur loop
          V_BUS_VALIDATE_DESC := '关联【110-个人基本信息】，检查“债务人名称”:'||REC.B_NAME||'、“债务人身份标识类型”：'||REC.B_CERT_TYPE||'、“债务人身份标识号码”：'||REC.B_CERT_NUM||'是否匹配存在；';
          INSERT INTO MBT_CROSS_TABLE_VALIDATE (RSV1,DATA_ID, DATA_DATE,  BUS_DATA_ID, BUS_CORP_ID, BUS_ORG_ID, BUS_GROUP_ID, BUS_CLASS, RPT_DATA_TYPE, RPT_DATA_NO, VALIDATE_TYPE, BUS_VALIDATE_DESC, BUS_EXPLAIN, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, RPT_DATE) VALUES
            ('个人抵质押信息',GET_DATA_ID(V_SYSDATE), V_SYSDATE,  REC.DATA_ID, REC.CORP_ID, REC.ORG_ID, REC.GROUP_ID, 'P', V_RPT_DATA_TYPE, V_RPT_DATA_NO, '跨表校验', V_BUS_VALIDATE_DESC, V_BUS_EXPLAIN, 'SYS', V_SYSDATE, V_SYSTIME, V_RPT_DATE);
          /**
            同时更新原始数据的数据状态。
           */
          --update mbt_120 set CHECK_FLAG='L' , DATA_STATUS ='00' WHERE DATA_ID=REC.DATA_ID;
        ERR_CODE  := '98';
          ERR_MSG   := '存在校验失败的数据。';
        END LOOP ;
        EXCEPTION
          WHEN OTHERS THEN
          ERR_CODE := SQLCODE;
          ERR_MSG  := SUBSTR(SQLERRM, 1, 200);
          ROLLBACK;
          RETURN;
      END;
      COMMIT;
    ELSE
      ERR_CODE:='99';
      ERR_MSG :='校验编号不正确。';
    END IF ;

  END;


END;
/

prompt
prompt Creating procedure SP_MBT_CROSS_TABLE_610
prompt =========================================
prompt
CREATE OR REPLACE PROCEDURE "SP_MBT_CROSS_TABLE_610"( V_RPT_DATA_TYPE IN VARCHAR2,----信息报送类型（表名）
                                                      V_RPT_DATA_NO   IN VARCHAR2,--信息报送编号（校验编号）
                                                      V_RPT_DATE      IN VARCHAR2,--信息报告日期
                                                      V_BUS_EXPLAIN   IN VARCHAR2,--业务说明
                                                      ERR_CODE        OUT VARCHAR,--错误码
                                                      ERR_MSG         OUT VARCHAR --错误信息
) AS
V_SYSDATE VARCHAR(8);
V_SYSTIME VARCHAR(14);
V_BUS_VALIDATE_DESC VARCHAR2(4000);

  /**
    610-企业资产负债表信息  表间校验
    关联【310-企业基本信息】，检查“企业名称”、“企业身份识别类型”、“企业身份识别号码”是否匹配存在；
    “匹配存在”指关联检查的本体信息记录已经报送过或本次会一起报送。
   */
BEGIN
  V_SYSDATE := TO_CHAR(SYSDATE, 'YYYYMMDD');
  V_SYSTIME := TO_CHAR(SYSDATE, 'YYYYMMDDHH24MISS');
  ERR_CODE  := '00';
  ERR_MSG   := 'OK';

  BEGIN

    IF V_RPT_DATA_NO = '2019MBT610A035' THEN

      --先删除当前跨表校验的数据
      DELETE FROM MBT_CROSS_TABLE_VALIDATE WHERE RPT_DATA_TYPE=V_RPT_DATA_TYPE AND RPT_DATA_NO = V_RPT_DATA_NO AND RPT_DATE = V_RPT_DATE;

      /**
         关联【310-企业基本信息】，检查“企业名称”、“企业身份识别类型”、“企业身份识别号码”是否匹配存在；
       */
      declare
        cursor table_cur is
          select * from mbt_610 a where 1=1 and a.data_status != 22 and a.B_RPT_DATE=V_RPT_DATE AND a.B_RPT_DATE_CODE NOT IN ('88','99') and not exists
          (select 1 from (
                           SELECT DISTINCT B_ENT_NAME,B_ENT_CERT,B_ENT_CERT_NUM FROM (
                             select B_ENT_NAME,B_ENT_CERT,B_ENT_CERT_NUM from mbt_310 where B_RPT_DATE = V_RPT_DATE
                             union all
                             select B_ENT_NAME,B_ENT_CERT,B_ENT_CERT_NUM from  mbt_310_rpt )
                         ) b where A.B_ENT_NAME=B.B_ENT_NAME AND A.B_ENT_CERT_TYPE=B.B_ENT_CERT_NUM AND A.B_ENT_CERT_NUM=B.B_ENT_CERT);
      begin
        for REC in table_cur loop
          V_BUS_VALIDATE_DESC := '关联【310-企业基本信息】，检查“企业名称”:'||REC.B_ENT_NAME||'、“企业身份识别类型”：'||REC.B_ENT_CERT_TYPE||'、“企业身份识别号码”：'||REC.B_ENT_CERT_NUM||'是否匹配存在；';
          INSERT INTO MBT_CROSS_TABLE_VALIDATE (RSV1,DATA_ID, DATA_DATE,  BUS_DATA_ID, BUS_CORP_ID, BUS_ORG_ID, BUS_GROUP_ID, BUS_CLASS, RPT_DATA_TYPE, RPT_DATA_NO, VALIDATE_TYPE, BUS_VALIDATE_DESC, BUS_EXPLAIN, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, RPT_DATE) VALUES
            ('企业资产负债表信息',GET_DATA_ID(V_SYSDATE), V_SYSDATE,  REC.DATA_ID, REC.CORP_ID, REC.ORG_ID, REC.GROUP_ID, 'C', V_RPT_DATA_TYPE, V_RPT_DATA_NO, '跨表校验', V_BUS_VALIDATE_DESC, V_BUS_EXPLAIN, 'SYS', V_SYSDATE, V_SYSTIME, V_RPT_DATE);
          /**
            同时更新原始数据的数据状态。
           */
          --update mbt_610 set CHECK_FLAG='L' , DATA_STATUS ='00' WHERE DATA_ID=REC.DATA_ID;
        ERR_CODE  := '98';
          ERR_MSG   := '存在校验失败的数据。';
        END LOOP ;
        EXCEPTION
          WHEN OTHERS THEN
          ERR_CODE := SQLCODE;
          ERR_MSG  := SUBSTR(SQLERRM, 1, 200);
          ROLLBACK;
          RETURN;
      END;
      COMMIT;

    ELSE
      ERR_CODE:='99';
      ERR_MSG :='校验编号不正确。';
    END IF ;

  END;

END;
/

prompt
prompt Creating procedure SP_MBT_CROSS_TABLE_620
prompt =========================================
prompt
CREATE OR REPLACE PROCEDURE "SP_MBT_CROSS_TABLE_620"( V_RPT_DATA_TYPE IN VARCHAR2,----信息报送类型（表名）
                                                      V_RPT_DATA_NO   IN VARCHAR2,--信息报送编号（校验编号）
                                                      V_RPT_DATE      IN VARCHAR2,--信息报告日期
                                                      V_BUS_EXPLAIN   IN VARCHAR2,--业务说明
                                                      ERR_CODE        OUT VARCHAR,--错误码
                                                      ERR_MSG         OUT VARCHAR --错误信息
) AS
V_SYSDATE VARCHAR(8);
V_SYSTIME VARCHAR(14);
V_BUS_VALIDATE_DESC VARCHAR2(4000);
  /**
      620-企业利润及利润分配表信息  表间校验
      关联【310-企业基本信息】，检查“企业名称”、“企业身份识别类型”、“企业身份识别号码”是否匹配存在；
      “匹配存在”指关联检查的本体信息记录已经报送过或本次会一起报送。
   */

BEGIN
  V_SYSDATE := TO_CHAR(SYSDATE, 'YYYYMMDD');
  V_SYSTIME := TO_CHAR(SYSDATE, 'YYYYMMDDHH24MISS');
  ERR_CODE  := '00';
  ERR_MSG   := 'OK';


  IF V_RPT_DATA_NO = '2019MBT620A036' THEN

    --先删除当前跨表校验的数据
    DELETE FROM MBT_CROSS_TABLE_VALIDATE WHERE RPT_DATA_TYPE=V_RPT_DATA_TYPE AND RPT_DATA_NO = V_RPT_DATA_NO AND RPT_DATE = V_RPT_DATE;
    /**
       关联【310-企业基本信息】，检查“企业名称”、“企业身份识别类型”、“企业身份识别号码”是否匹配存在；
     */
    declare
      cursor table_cur is
        select * from mbt_620 a where 1=1 and a.data_status != 22 and a.B_RPT_DATE=V_RPT_DATE AND a.B_RPT_DATE_CODE NOT IN ('88','99') and not exists
        (select 1 from (
                         SELECT DISTINCT B_ENT_NAME,B_ENT_CERT,B_ENT_CERT_NUM FROM (
                           select B_ENT_NAME,B_ENT_CERT,B_ENT_CERT_NUM from mbt_310 where B_RPT_DATE = V_RPT_DATE
                           union all
                           select B_ENT_NAME,B_ENT_CERT,B_ENT_CERT_NUM from  mbt_310_rpt )
                       ) b where A.B_ENT_NAME=B.B_ENT_NAME AND A.B_ENT_CERT_TYPE=B.B_ENT_CERT_NUM AND A.B_ENT_CERT_NUM=B.B_ENT_CERT);
    begin
      for REC in table_cur loop
        V_BUS_VALIDATE_DESC := '关联【310-企业基本信息】，检查“企业名称”:'||REC.B_ENT_NAME||'、“企业身份识别类型”：'||REC.B_ENT_CERT_TYPE||'、“企业身份识别号码”：'||REC.B_ENT_CERT_NUM||'是否匹配存在；';
        INSERT INTO MBT_CROSS_TABLE_VALIDATE (RSV1,DATA_ID, DATA_DATE,  BUS_DATA_ID, BUS_CORP_ID, BUS_ORG_ID, BUS_GROUP_ID, BUS_CLASS, RPT_DATA_TYPE, RPT_DATA_NO, VALIDATE_TYPE, BUS_VALIDATE_DESC, BUS_EXPLAIN, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, RPT_DATE) VALUES
          ('企业利润及利润分配表信息',GET_DATA_ID(V_SYSDATE), V_SYSDATE,  REC.DATA_ID, REC.CORP_ID, REC.ORG_ID, REC.GROUP_ID, 'C', V_RPT_DATA_TYPE, V_RPT_DATA_NO, '跨表校验', V_BUS_VALIDATE_DESC, V_BUS_EXPLAIN, 'SYS', V_SYSDATE, V_SYSTIME, V_RPT_DATE);
        /**
          同时更新原始数据的数据状态。
         */
        --update mbt_620 set CHECK_FLAG='L' , DATA_STATUS ='00' WHERE DATA_ID=REC.DATA_ID;
      ERR_CODE  := '98';
          ERR_MSG   := '存在校验失败的数据。';
        END LOOP ;
        EXCEPTION
          WHEN OTHERS THEN
          ERR_CODE := SQLCODE;
          ERR_MSG  := SUBSTR(SQLERRM, 1, 200);
          ROLLBACK;
          RETURN;
      END;
      COMMIT;

  ELSE
    ERR_CODE:='99';
    ERR_MSG :='校验编号不正确。';
  END IF ;


END;
/

prompt
prompt Creating procedure SP_MBT_CROSS_TABLE_630
prompt =========================================
prompt
CREATE OR REPLACE PROCEDURE "SP_MBT_CROSS_TABLE_630"( V_RPT_DATA_TYPE IN VARCHAR2,----信息报送类型（表名）
                                                      V_RPT_DATA_NO   IN VARCHAR2,--信息报送编号（校验编号）
                                                      V_RPT_DATE      IN VARCHAR2,--信息报告日期
                                                      V_BUS_EXPLAIN   IN VARCHAR2,--业务说明
                                                      ERR_CODE        OUT VARCHAR,--错误码
                                                      ERR_MSG         OUT VARCHAR --错误信息
) AS
V_SYSDATE VARCHAR(8);
V_SYSTIME VARCHAR(14);
V_BUS_VALIDATE_DESC VARCHAR2(4000);
  /**
      630-企业现金流量表信息  表间校验
      关联【310-企业基本信息】，检查“企业名称”、“企业身份识别类型”、“企业身份识别号码”是否匹配存在；
      “匹配存在”指关联检查的本体信息记录已经报送过或本次会一起报送。
   */

BEGIN
  V_SYSDATE := TO_CHAR(SYSDATE, 'YYYYMMDD');
  V_SYSTIME := TO_CHAR(SYSDATE, 'YYYYMMDDHH24MISS');
  ERR_CODE  := '00';
  ERR_MSG   := 'OK';


  IF V_RPT_DATA_NO = '2019MBT630A037' THEN

    --先删除当前跨表校验的数据
    DELETE FROM MBT_CROSS_TABLE_VALIDATE WHERE RPT_DATA_TYPE=V_RPT_DATA_TYPE AND RPT_DATA_NO = V_RPT_DATA_NO AND RPT_DATE = V_RPT_DATE;
    /**
       关联【310-企业基本信息】，检查“企业名称”、“企业身份识别类型”、“企业身份识别号码”是否匹配存在；
     */
    declare
      cursor table_cur is
        select * from mbt_630 a where 1=1 and a.data_status != 22 and a.B_RPT_DATE=V_RPT_DATE AND a.B_RPT_DATE_CODE NOT IN ('88','99') and not exists
        (select 1 from (
                         SELECT DISTINCT B_ENT_NAME,B_ENT_CERT,B_ENT_CERT_NUM FROM (
                           select B_ENT_NAME,B_ENT_CERT,B_ENT_CERT_NUM from mbt_310 where B_RPT_DATE = V_RPT_DATE
                           union all
                           select B_ENT_NAME,B_ENT_CERT,B_ENT_CERT_NUM from  mbt_310_rpt )
                       ) b where A.B_ENT_NAME=B.B_ENT_NAME AND A.B_ENT_CERT_TYPE=B.B_ENT_CERT_NUM AND A.B_ENT_CERT_NUM=B.B_ENT_CERT);
    begin
      for REC in table_cur loop
        V_BUS_VALIDATE_DESC := '关联【310-企业基本信息】，检查“企业名称”:'||REC.B_ENT_NAME||'、“企业身份识别类型”：'||REC.B_ENT_CERT_TYPE||'、“企业身份识别号码”：'||REC.B_ENT_CERT_NUM||'是否匹配存在；';
        INSERT INTO MBT_CROSS_TABLE_VALIDATE (RSV1,DATA_ID, DATA_DATE,  BUS_DATA_ID, BUS_CORP_ID, BUS_ORG_ID, BUS_GROUP_ID, BUS_CLASS, RPT_DATA_TYPE, RPT_DATA_NO, VALIDATE_TYPE, BUS_VALIDATE_DESC, BUS_EXPLAIN, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, RPT_DATE) VALUES
          ('企业现金流量表信息',GET_DATA_ID(V_SYSDATE), V_SYSDATE,  REC.DATA_ID, REC.CORP_ID, REC.ORG_ID, REC.GROUP_ID, 'C', V_RPT_DATA_TYPE, V_RPT_DATA_NO, '跨表校验', V_BUS_VALIDATE_DESC, V_BUS_EXPLAIN, 'SYS', V_SYSDATE, V_SYSTIME, V_RPT_DATE);
        /**
          同时更新原始数据的数据状态。
         */
       -- update mbt_630 set CHECK_FLAG='L' , DATA_STATUS ='00' WHERE DATA_ID=REC.DATA_ID;
      ERR_CODE  := '98';
          ERR_MSG   := '存在校验失败的数据。';
        END LOOP ;
        EXCEPTION
          WHEN OTHERS THEN
          ERR_CODE := SQLCODE;
          ERR_MSG  := SUBSTR(SQLERRM, 1, 200);
          ROLLBACK;
          RETURN;
      END;
      COMMIT;

  ELSE
    ERR_CODE:='99';
    ERR_MSG :='校验编号不正确。';
  END IF ;


END;
/

prompt
prompt Creating procedure SP_MBT_CROSS_TABLE_640
prompt =========================================
prompt
CREATE OR REPLACE PROCEDURE "SP_MBT_CROSS_TABLE_640"( V_RPT_DATA_TYPE IN VARCHAR2,----信息报送类型（表名）
                                                      V_RPT_DATA_NO   IN VARCHAR2,--信息报送编号（校验编号）
                                                      V_RPT_DATE      IN VARCHAR2,--信息报告日期
                                                      V_BUS_EXPLAIN   IN VARCHAR2,--业务说明
                                                      ERR_CODE        OUT VARCHAR,--错误码
                                                      ERR_MSG         OUT VARCHAR --错误信息
) AS
V_SYSDATE VARCHAR(8);
V_SYSTIME VARCHAR(14);
V_BUS_VALIDATE_DESC VARCHAR2(4000);

  /**
    640-事业单位资产负债表信息  表间校验
    关联【310-企业基本信息】，检查“企业名称”、“企业身份识别类型”、“企业身份识别号码”是否匹配存在；
    “匹配存在”指关联检查的本体信息记录已经报送过或本次会一起报送。
   */
BEGIN
  V_SYSDATE := TO_CHAR(SYSDATE, 'YYYYMMDD');
  V_SYSTIME := TO_CHAR(SYSDATE, 'YYYYMMDDHH24MISS');
  ERR_CODE  := '00';
  ERR_MSG   := 'OK';

  IF V_RPT_DATA_NO = '2019MBT640A038' THEN

    --先删除当前跨表校验的数据
    DELETE FROM MBT_CROSS_TABLE_VALIDATE WHERE RPT_DATA_TYPE=V_RPT_DATA_TYPE AND RPT_DATA_NO = V_RPT_DATA_NO AND RPT_DATE = V_RPT_DATE;
    /**
       关联【310-企业基本信息】，检查“企业名称”、“企业身份识别类型”、“企业身份识别号码”是否匹配存在；
     */
    declare
      cursor table_cur is
        select * from mbt_640 a where 1=1 and a.data_status != 22 and a.B_RPT_DATE=V_RPT_DATE AND a.B_RPT_DATE_CODE NOT IN ('88','99') and not exists
        (select 1 from (
                         SELECT DISTINCT B_ENT_NAME,B_ENT_CERT,B_ENT_CERT_NUM FROM (
                           select B_ENT_NAME,B_ENT_CERT,B_ENT_CERT_NUM from mbt_310 where B_RPT_DATE = V_RPT_DATE
                           union all
                           select B_ENT_NAME,B_ENT_CERT,B_ENT_CERT_NUM from  mbt_310_rpt )
                       ) b where A.B_ENT_NAME=B.B_ENT_NAME AND A.B_ENT_CERT_TYPE=B.B_ENT_CERT_NUM AND A.B_ENT_CERT_NUM=B.B_ENT_CERT);
    begin
      for REC in table_cur loop
        V_BUS_VALIDATE_DESC := '关联【310-企业基本信息】，检查“企业名称”:'||REC.B_ENT_NAME||'、“企业身份识别类型”：'||REC.B_ENT_CERT_TYPE||'、“企业身份识别号码”：'||REC.B_ENT_CERT_NUM||'是否匹配存在；';
        INSERT INTO MBT_CROSS_TABLE_VALIDATE (RSV1,DATA_ID, DATA_DATE,  BUS_DATA_ID, BUS_CORP_ID, BUS_ORG_ID, BUS_GROUP_ID, BUS_CLASS, RPT_DATA_TYPE, RPT_DATA_NO, VALIDATE_TYPE, BUS_VALIDATE_DESC, BUS_EXPLAIN, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, RPT_DATE) VALUES
          ('事业单位资产负债表信息',GET_DATA_ID(V_SYSDATE), V_SYSDATE,  REC.DATA_ID, REC.CORP_ID, REC.ORG_ID, REC.GROUP_ID, 'C', V_RPT_DATA_TYPE, V_RPT_DATA_NO, '跨表校验', V_BUS_VALIDATE_DESC, V_BUS_EXPLAIN, 'SYS', V_SYSDATE, V_SYSTIME, V_RPT_DATE);
        /**
          同时更新原始数据的数据状态。
         */
        --update mbt_640 set CHECK_FLAG='L' , DATA_STATUS ='00' WHERE DATA_ID=REC.DATA_ID;
      ERR_CODE  := '98';
          ERR_MSG   := '存在校验失败的数据。';
        END LOOP ;
        EXCEPTION
          WHEN OTHERS THEN
          ERR_CODE := SQLCODE;
          ERR_MSG  := SUBSTR(SQLERRM, 1, 200);
          ROLLBACK;
          RETURN;
      END;
      COMMIT;

  ELSE
    ERR_CODE:='99';
    ERR_MSG :='校验编号不正确。';
  END IF ;


END;
/

prompt
prompt Creating procedure SP_MBT_CROSS_TABLE_650
prompt =========================================
prompt
CREATE OR REPLACE PROCEDURE "SP_MBT_CROSS_TABLE_650"( V_RPT_DATA_TYPE IN VARCHAR2,----信息报送类型（表名）
                                                      V_RPT_DATA_NO   IN VARCHAR2,--信息报送编号（校验编号）
                                                      V_RPT_DATE      IN VARCHAR2,--信息报告日期
                                                      V_BUS_EXPLAIN   IN VARCHAR2,--业务说明
                                                      ERR_CODE        OUT VARCHAR,--错误码
                                                      ERR_MSG         OUT VARCHAR --错误信息
) AS
V_SYSDATE VARCHAR(8);
V_SYSTIME VARCHAR(14);
V_BUS_VALIDATE_DESC VARCHAR2(4000);
  /**
      650-事业单位收入支出表信息  表间校验
      关联【310-企业基本信息】，检查“企业名称”、“企业身份识别类型”、“企业身份识别号码”是否匹配存在；
      “匹配存在”指关联检查的本体信息记录已经报送过或本次会一起报送。
   */

BEGIN
  V_SYSDATE := TO_CHAR(SYSDATE, 'YYYYMMDD');
  V_SYSTIME := TO_CHAR(SYSDATE, 'YYYYMMDDHH24MISS');
  ERR_CODE  := '00';
  ERR_MSG   := 'OK';


  IF V_RPT_DATA_NO = '2019MBT650A039' THEN

    --先删除当前跨表校验的数据
    DELETE FROM MBT_CROSS_TABLE_VALIDATE WHERE RPT_DATA_TYPE=V_RPT_DATA_TYPE AND RPT_DATA_NO = V_RPT_DATA_NO AND RPT_DATE = V_RPT_DATE;
    /**
       关联【310-企业基本信息】，检查“企业名称”、“企业身份识别类型”、“企业身份识别号码”是否匹配存在；
     */
    declare
      cursor table_cur is
        select * from mbt_650 a where 1=1 and a.data_status != 22 and a.B_RPT_DATE=V_RPT_DATE AND a.B_RPT_DATE_CODE NOT IN ('88','99') and not exists
        (select 1 from (
                         SELECT DISTINCT B_ENT_NAME,B_ENT_CERT,B_ENT_CERT_NUM FROM (
                           select B_ENT_NAME,B_ENT_CERT,B_ENT_CERT_NUM from mbt_310 where B_RPT_DATE = V_RPT_DATE
                           union all
                           select B_ENT_NAME,B_ENT_CERT,B_ENT_CERT_NUM from  mbt_310_rpt )
                       ) b where A.B_ENT_NAME=B.B_ENT_NAME AND A.B_ENT_CERT_TYPE=B.B_ENT_CERT_NUM AND A.B_ENT_CERT_NUM=B.B_ENT_CERT);
    begin
      for REC in table_cur loop
        V_BUS_VALIDATE_DESC := '关联【310-企业基本信息】，检查“企业名称”:'||REC.B_ENT_NAME||'、“企业身份识别类型”：'||REC.B_ENT_CERT_TYPE||'、“企业身份识别号码”：'||REC.B_ENT_CERT_NUM||'是否匹配存在；';
        INSERT INTO MBT_CROSS_TABLE_VALIDATE (RSV1,DATA_ID, DATA_DATE,  BUS_DATA_ID, BUS_CORP_ID, BUS_ORG_ID, BUS_GROUP_ID, BUS_CLASS, RPT_DATA_TYPE, RPT_DATA_NO, VALIDATE_TYPE, BUS_VALIDATE_DESC, BUS_EXPLAIN, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, RPT_DATE) VALUES
          ('事业单位收入支出表信息',GET_DATA_ID(V_SYSDATE), V_SYSDATE,  REC.DATA_ID, REC.CORP_ID, REC.ORG_ID, REC.GROUP_ID, 'C', V_RPT_DATA_TYPE, V_RPT_DATA_NO, '跨表校验', V_BUS_VALIDATE_DESC, V_BUS_EXPLAIN, 'SYS', V_SYSDATE, V_SYSTIME, V_RPT_DATE);
        /**
          同时更新原始数据的数据状态。
         */
        --update mbt_650 set CHECK_FLAG='L' , DATA_STATUS ='00' WHERE DATA_ID=REC.DATA_ID;
      ERR_CODE  := '98';
          ERR_MSG   := '存在校验失败的数据。';
        END LOOP ;
        EXCEPTION
          WHEN OTHERS THEN
          ERR_CODE := SQLCODE;
          ERR_MSG  := SUBSTR(SQLERRM, 1, 200);
          ROLLBACK;
          RETURN;
      END;
      COMMIT;

  ELSE
    ERR_CODE:='99';
    ERR_MSG :='校验编号不正确。';
  END IF ;



END;
/


prompt Done
spool off
set define on
