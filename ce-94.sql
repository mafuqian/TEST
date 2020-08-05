update gp_qc_rule set sql = 'select 1
  from (select case
                 when tcnt1 = 0 and :IS_RPT is not null and
                      substr(:IS_RPT, 8, 1) = 1 then
                  0
                 else
                  1
               end as tcnt
          from (select case
                         when mmb = ''1'' then
                          0
                         else
                          1
                       end as tcnt1
                  from (select MMB_PSTN AS mmb
                          from mbt_310_e
                         where mbt_310_e.PDATA_ID = :DATA_ID
                         group by MMB_PSTN)))
 where tcnt = 0' where data_id = 'MBT_310_EI3100E02I3100E0201I3100E0202';
 update gp_qc_rule set sql = '  select 1
   from (select case
                  when count(*) = 0 and :IS_RPT is not null and
                       substr(:IS_RPT, 8, 1) = 1 then
                   0
                  else
                   1
                end as tcnt
           from (select *
                   from (select MMB_PSTN
                           from mbt_310_e mbt
                          where  PDATA_ID= :DATA_ID and MMB_PSTN in (1, 4, 5)
                          group by MMB_PSTN
                         having count(*) > 1)
                  ))
  where tcnt = 0' where data_id = 'MBT_310EI3100E01';
 update gp_qc_rule set sql = 'select 1
   from (select case
                  when count(*) = 0 and :IS_RPT is not null and
                       substr(:IS_RPT, 8, 1) = 1 then
                   0
                  else
                   1
                end as tcnt
           from (select * 
                   from (select MMB_ALIAS
                           from mbt_310_e
                          where  PDATA_ID= :DATA_ID and MMB_PSTN in (4,5) 
                          group by MMB_ALIAS
                         having count(*) > 1)
                  ))
  where tcnt = 0' where data_id = 'MBT_310I3100E03';