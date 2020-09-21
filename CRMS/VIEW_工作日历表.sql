SELECT
	T.*,
CASE
		
		WHEN T.ID IN (
			'20200101',
			'20200104',
			'20200105',
			'20200111',
			'20200112',
			'20200118',
			'20200124',
			'20200125',
			'20200126',
			'20200127',
			'20200128',
			'20200129',
			'20200130',
			'20200131',
			'20200201',
			'20200202',
			'20200208',
			'20200209',
			'20200215',
			'20200216',
			'20200222',
			'20200223',
			'20200229',
			'20200301',
			'20200307',
			'20200308',
			'20200314',
			'20200315',
			'20200321',
			'20200322',
			'20200328',
			'20200329',
			'20200404',
			'20200405',
			'20200406',
			'20200411',
			'20200412',
			'20200418',
			'20200419',
			'20200425',
			'20200501',
			'20200502',
			'20200503',
			'20200504',
			'20200505',
			'20200510',
			'20200516',
			'20200517',
			'20200523',
			'20200524',
			'20200530',
			'20200531',
			'20200606',
			'20200607',
			'20200613',
			'20200614',
			'20200620',
			'20200621',
			'20200625',
			'20200626',
			'20200627',
			'20200704',
			'20200705',
			'20200711',
			'20200712',
			'20200718',
			'20200719',
			'20200725',
			'20200726',
			'20200801',
			'20200802',
			'20200808',
			'20200809',
			'20200815',
			'20200816',
			'20200822',
			'20200823',
			'20200829',
			'20200830',
			'20200905',
			'20200906',
			'20200912',
			'20200913',
			'20200919',
			'20200920',
			'20200926',
			'20201001',
			'20201002',
			'20201003',
			'20201004',
			'20201005',
			'20201006',
			'20201007',
			'20201008',
			'20201011',
			'20201017',
			'20201018',
			'20201024',
			'20201025',
			'20201031',
			'20201101',
			'20201107',
			'20201108',
			'20201114',
			'20201115',
			'20201121',
			'20201122',
			'20201128',
			'20201129',
			'20201205',
			'20201206',
			'20201212',
			'20201213',
			'20201219',
			'20201220',
			'20201226',
			'20201227' 
			) THEN
			0 ELSE 1 
		END AS IS_WORK_DAY 
	FROM
		(
		SELECT
			TO_NUMBER(
			to_char( everyDay, 'yyyymmdd' )) AS ID,
			everyDay AS CODE,
			to_char( everyday, 'yyyy' ) || '年' || TO_NUMBER(
				to_char( everyday, 'mm' )) || '月' || TO_NUMBER(
			to_char( everyday, 'dd' )) || '日' AS NAME,
			TO_NUMBER(
			to_char( everyday, 'yyyy' )) AS YEAR_ID,
			to_char( everyday, 'yyyy' ) || '年' AS YEAR_NAME,
		CASE
				
				WHEN TO_NUMBER(
					to_char( everyday, 'mm' )) <= 6 THEN
					1 ELSE 2 
				END AS SEMESTER_ID,
			CASE
					
					WHEN TO_NUMBER(
						to_char( everyday, 'mm' )) <= 6 THEN
						'上半年' ELSE '下半年' 
					END AS SEMESTER_NAME,
				CASE
						
						WHEN TO_NUMBER(
							to_char( everyday, 'mm' )) <= 3 THEN
							1 
							WHEN TO_NUMBER(
								to_char( everyday, 'mm' )) <= 6 THEN
								2 
								WHEN TO_NUMBER(
									to_char( everyday, 'mm' )) <= 9 THEN
									3 ELSE 4 
								END AS QUARTER_ID,
							CASE
									
									WHEN TO_NUMBER(
										to_char( everyday, 'mm' )) <= 3 THEN
										'一季度' 
										WHEN TO_NUMBER(
											to_char( everyday, 'mm' )) <= 6 THEN
											'二季度' 
											WHEN TO_NUMBER(
												to_char( everyday, 'mm' )) <= 9 THEN
												'三季度' ELSE '四季度' 
											END AS QUARTER_NAME,
											TO_NUMBER(
											to_char( everyday, 'mm' )) AS MONTH_ID,
											TO_NUMBER(
											to_char( everyday, 'mm' )) || '月' AS MONTH_NAME,
										CASE
												
												WHEN TO_NUMBER(
													to_char( everyday, 'dd' )) <= 10 THEN
													'上旬' 
													WHEN TO_NUMBER(
														to_char( everyday, 'dd' )) <= 20 THEN
														'中旬' ELSE '下旬' 
													END AS XUN,
													TO_NUMBER(
													to_char( everyday, 'dd' )) AS DAY,
												CASE
														
														WHEN to_char( everyday, 'dy' ) = '星期一' THEN
														1 
														WHEN to_char( everyday, 'dy' ) = '星期二' THEN
														2 
														WHEN to_char( everyday, 'dy' ) = '星期三' THEN
														3 
														WHEN to_char( everyday, 'dy' ) = '星期四' THEN
														4 
														WHEN to_char( everyday, 'dy' ) = '星期五' THEN
														5 
														WHEN to_char( everyday, 'dy' ) = '星期六' THEN
														6 ELSE 7 
													END AS WEEK_ID,
													to_char( everyday, 'dy' ) AS WEEK_NAME,
--  lpad(to_char(everyday,'w'),6) as w,--  to_char(everyday,'WW') AS WW,--  to_char(everyday,'IW') AS IW,--   to_char(everyday,'FMWW') AS FMWW,
													TO_NUMBER(
													lpad( to_char( everyday, 'IW' ), 6 )) AS ISOWEEK_NUMBER_OF_YEAR 
												FROM
													(
													SELECT
														to_date( '20200101', 'yyyymmdd' ) + LEVEL - 1 AS everyDay 
													FROM
													dual CONNECT BY LEVEL <= ( last_day( to_date( '20201231', 'yyyymmdd' )) - to_date( '20200101', 'yyyymmdd' ) + 1 )) 
	) T;