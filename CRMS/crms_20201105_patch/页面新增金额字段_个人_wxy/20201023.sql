---CE-187
alter table mbt_221_rpt add ROW_NUM NUMBER(22,0);
alter table mbt_231_rpt add ROW_NUM NUMBER(22,0);


alter table mbt_221_rpt add FB_STATUS CHAR(2);
alter table mbt_231_rpt add FB_STATUS CHAR(2);

alter table mbt_221_rpt add RPT_FILE_NAME VARCHAR2(512);
alter table mbt_231_rpt add RPT_FILE_NAME VARCHAR2(512);

alter table mbt_221_rpt add FB_MSG VARCHAR2(1024);
alter table mbt_231_rpt add FB_MSG VARCHAR2(1024);


