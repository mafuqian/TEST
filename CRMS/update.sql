update GP_BM_INQ_CFG t set t.sql_string='select a.err_rec_id as ROW_NUM, b.fb_code as MSG_CODE, b.fb_msg as MSG,t.Remark as REMARK
  from MBT_FB_FILE_LIST_ERR_INF b
 INNER JOIN (select data_id, err_rec_id
               from MBT_FB_FILE_DTL_INF
              where pdata_id in
                    (select data_id
                       from mbt_fb_file
                      where rpt_file_name = :"fileName")) a
    on a.data_id = b.pdata_id
    LEFT JOIN mbt_feedback_info t
    on b.fb_code=t.fb_code
    and b.fb_msg=t.fb_msg
    order by a.err_rec_id asc'
    where t.sql_id='MbtRptFile_003'