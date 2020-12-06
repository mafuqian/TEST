update GP_BM_INQ_CFG T SET T.SQL_STRING='select a.err_rec_id as ROW_NUM, b.fb_code as MSG_CODE, b.fb_msg as MSG,
  CASE 
    WHEN b.fb_code in ('ABD000','ABD001','ABE000','ABE001','ABE004','ABE008','BLD000','CLD000') THEN t1.Remark
    ELSE t.Remark
  END
  as REMARK
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
    LEFT JOIN mbt_feedback_info t1
    on b.fb_code=t1.fb_code
    and b.fb_code in ('ABD000','ABD001','ABE000','ABE001','ABE004','ABE008','BLD000','CLD000')
    WHERE 1=1
    order by a.err_rec_id asc' 
WHERE T.SQL_ID='MbtRptFile_003';