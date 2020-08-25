

--问题CE-124-begin---------------------------------------------------------------
--20200825  修改 个人借贷删除审核通过  12 - 22
delete GP_BM_NEXT_ACTION where action_id = '2019020101_apv'and curr_DATA_STATUS  in ( '12');
insert into GP_BM_NEXT_ACTION (DATA_ID, CORP_ID, CURR_DATA_STATUS, ACTION_ID, CONDITION_ID, FLOW_ID, DATA_STATUS, NEXT_ACTION, RSV1, RSV2, RSV3, RSV4, RSV5, NEXT_ORG_ID, NEXT_OPER, IS_END, SYS_ID, DATA_BAK_FLAG) values ('cf2ba7df4536982ee12cb411d5b12', null, '12', '2019020101_apv', '1', null, '22', null, null, null, null, null, null, null, null, null, null, null);

--20200825  新增 个人借贷 删除已审核_审核拒绝  22 - 00
delete GP_BM_NEXT_ACTION where action_id = '2019020101_rej'and curr_DATA_STATUS  in ( '22');
insert into GP_BM_NEXT_ACTION (DATA_ID, CORP_ID, CURR_DATA_STATUS, ACTION_ID, CONDITION_ID, FLOW_ID, DATA_STATUS, NEXT_ACTION, RSV1, RSV2, RSV3, RSV4, RSV5, NEXT_ORG_ID, NEXT_OPER, IS_END, SYS_ID, DATA_BAK_FLAG) values ('111881f87d1849da9636qqb5b51edf', null, '22', '2019020101_rej', '1', null, '00', null, null, null, null, null, null, null, null, null, null, null);

--20200825  新增 个人担保信息 删除已审核_审核拒绝  22 - 00
delete GP_BM_NEXT_ACTION where action_id = '290001_rej'and curr_DATA_STATUS  in ( '22');
insert into GP_BM_NEXT_ACTION (DATA_ID, CORP_ID, CURR_DATA_STATUS, ACTION_ID, CONDITION_ID, FLOW_ID, DATA_STATUS, NEXT_ACTION, RSV1, RSV2, RSV3, RSV4, RSV5, NEXT_ORG_ID, NEXT_OPER, IS_END, SYS_ID, DATA_BAK_FLAG) values ('9bb4361fca1e4c08ab629fc3d77c2200', null, '22', '290001_rej', '1', null, '00', null, null, null, null, null, null, null, null, null, null, null);

--20200825  新增 个人担保标识变更记录 删除已审核_审核拒绝  22 - 00
delete GP_BM_NEXT_ACTION where action_id = '29001101_rej'and curr_DATA_STATUS  in ( '22');
insert into GP_BM_NEXT_ACTION (DATA_ID, CORP_ID, CURR_DATA_STATUS, ACTION_ID, CONDITION_ID, FLOW_ID, DATA_STATUS, NEXT_ACTION, RSV1, RSV2, RSV3, RSV4, RSV5, NEXT_ORG_ID, NEXT_OPER, IS_END, SYS_ID, DATA_BAK_FLAG) values ('17145b52d02b426b95e410125b1e2200', null, '22', '29001101_rej', '1', null, '00', null, null, null, null, null, null, null, null, null, null, null);

--20200825  新增 个人授信信息 删除已审核_审核拒绝  22 - 00
delete GP_BM_NEXT_ACTION where action_id = '280001_rej'and curr_DATA_STATUS  in ( '22');
insert into GP_BM_NEXT_ACTION (DATA_ID, CORP_ID, CURR_DATA_STATUS, ACTION_ID, CONDITION_ID, FLOW_ID, DATA_STATUS, NEXT_ACTION, RSV1, RSV2, RSV3, RSV4, RSV5, NEXT_ORG_ID, NEXT_OPER, IS_END, SYS_ID, DATA_BAK_FLAG) values ('111eeb2c305c45ec81qdf5779412200', null, '22', '280001_rej', '1', null, '00', null, null, null, null, null, null, null, null, null, null, null);

--20200825  新增 个人授信标识变更记录 删除已审核_审核拒绝  22 - 00
delete GP_BM_NEXT_ACTION where action_id = '280011_rej'and curr_DATA_STATUS  in ( '22');
insert into GP_BM_NEXT_ACTION (DATA_ID, CORP_ID, CURR_DATA_STATUS, ACTION_ID, CONDITION_ID, FLOW_ID, DATA_STATUS, NEXT_ACTION, RSV1, RSV2, RSV3, RSV4, RSV5, NEXT_ORG_ID, NEXT_OPER, IS_END, SYS_ID, DATA_BAK_FLAG) values ('2534f91dbc114c4caf91eb8c52d12200', null, '22', '280011_rej', '1', null, '00', null, null, null, null, null, null, null, null, null, null, null);

--20200825  新增 抵质押物信息管理 删除已审核_审核拒绝  22 - 00
delete GP_BM_NEXT_ACTION where action_id = '28010101_rej'and curr_DATA_STATUS  in ( '22');
insert into GP_BM_NEXT_ACTION (DATA_ID, CORP_ID, CURR_DATA_STATUS, ACTION_ID, CONDITION_ID, FLOW_ID, DATA_STATUS, NEXT_ACTION, RSV1, RSV2, RSV3, RSV4, RSV5, NEXT_ORG_ID, NEXT_OPER, IS_END, SYS_ID, DATA_BAK_FLAG) values ('111849ec6c4a45bc89577cf1da2200', null, '22', '28010101_rej', '1', null, '00', null, null, null, null, null, null, null, null, null, null, null);

--问题CE-124-end-------------------------------------------------------------------------------------



