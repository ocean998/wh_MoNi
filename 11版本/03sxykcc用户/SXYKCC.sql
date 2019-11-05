--------------------------------------------------
set feedback off
set define off
set serveroutput on
--------------------------------------------------

prompt
prompt 正在处理纪录编号为 8200000000017581 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'MD_IO_TASK' AND U.COLUMN_NAME='STORE_LOC_NO';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table MD_IO_TASK add store_loc_no VARCHAR2(512)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 MD_IO_TASK.store_loc_no 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column MD_IO_TASK.store_loc_no
      is ''货位编号，与储位表储位编号关联,多个货位编号以“|”拼接''
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000017992 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    EXECUTE IMMEDIATE
    '
      create or replace synonym MD_CHARGE_POINT
      for M_D_CHARGE_POINT@SXYKGG
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000019903 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'MDS_UPDATE_SQL' AND U.COLUMN_NAME='SQL_ID';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table MDS_UPDATE_SQL modify sql_id VARCHAR2(32)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 MDS_UPDATE_SQL.SQL_ID 不存在。');
    END IF;
END;
/

alter table MDS_UPDATE_SQL modify TABLE_NAME VARCHAR2(64);


prompt
prompt 正在处理纪录编号为 8200000000021257 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'MD_IO_TASK' AND U.COLUMN_NAME='BACK_WH_FLAG';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table MD_IO_TASK add back_wh_flag VARCHAR2(8)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 MD_IO_TASK.back_wh_flag 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'MD_IO_TASK' AND U.COLUMN_NAME='IS_OUTDATE_FLAG';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table MD_IO_TASK add is_outdate_flag VARCHAR2(8)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 MD_IO_TASK.is_outdate_flag 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column MD_IO_TASK.back_wh_flag
      is ''出库任务对应的拣选回库库房标志，01平库，02立库''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MD_IO_TASK.is_outdate_flag
      is ''出库任务是否为超期表的标志，0否，1是''
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000021794 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'MD_IO_TASK' AND U.COLUMN_NAME='OUT_TYPE';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table MD_IO_TASK add out_type VARCHAR2(8)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 MD_IO_TASK.out_type 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column MD_IO_TASK.out_type
      is ''移库出库类型。01按只，02按箱，03按垛''
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000022399 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'MD_IO_TASK' AND U.COLUMN_NAME='WH_SYS_NO';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table MD_IO_TASK add wh_sys_no VARCHAR2(16)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 MD_IO_TASK.wh_sys_no 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column MD_IO_TASK.wh_sys_no
      is ''立库系统编号''
    ';
END;
/

set feedback on
set define on
set serveroutput off
--------------------------------------------------

