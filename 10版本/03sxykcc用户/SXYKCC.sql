--------------------------------------------------
set feedback off
set define off
set serveroutput on
--------------------------------------------------

prompt
prompt 正在处理纪录编号为 8200000000011347 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    EXECUTE IMMEDIATE
    '
      create or replace synonym MD_EMPTYOPEN
      for SXYKGG.M_D_EMPTYOPEN@SXYKGG
    ';
    EXECUTE IMMEDIATE
    '
      create or replace synonym MD_HANDHELD_DEVICE
      for SXYKGG.M_D_HANDHELD_DEVICE@SXYKGG
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000011692 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Tables U WHERE U.TABLE_NAME = 'CHG_WH_DEV_LIST_JS';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
        create table CHG_WH_DEV_LIST_JS
        (
        web_notice_no VARCHAR2(32),
        task_no VARCHAR2(16),
        equip_categ VARCHAR2(8),
        bar_code VARCHAR2(32),
        old_wh_id NUMBER(16),
        new_wh_id NUMBER(16),
        finished_time VARCHAR2(32),
        handle_flag VARCHAR2(8),
        handle_date VARCHAR2(32)
        )
        tablespace MPAC
        pctfree 10
        initrans 1
        maxtrans 255
        storage
        (
        initial 256K
        next 1M
        minextents 1
        maxextents unlimited
        )
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 CHG_WH_DEV_LIST_JS 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table CHG_WH_DEV_LIST_JS
      is ''移库设备清单（江苏）''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column CHG_WH_DEV_LIST_JS.WEB_NOTICE_NO
      is ''本次通知单号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column CHG_WH_DEV_LIST_JS.TASK_NO
      is ''表移库任务编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column CHG_WH_DEV_LIST_JS.EQUIP_CATEG
      is ''设备类别，参见计量标准代码：设备类别VW_EQUIP_CATEG''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column CHG_WH_DEV_LIST_JS.BAR_CODE
      is ''设备条码''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column CHG_WH_DEV_LIST_JS.OLD_WH_ID
      is ''原库房ID''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column CHG_WH_DEV_LIST_JS.NEW_WH_ID
      is ''新库房ID''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column CHG_WH_DEV_LIST_JS.FINISHED_TIME
      is ''任务完成时间,格式：yyyy-mm-dd hh24:mi:ss''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column CHG_WH_DEV_LIST_JS.HANDLE_FLAG
      is ''处理标志，0失败，1成功''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column CHG_WH_DEV_LIST_JS.HANDLE_DATE
      is ''处理时间，yyyy-mm-dd hh24:mi:ss''
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000013861 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'MD_IO_TASK' AND U.COLUMN_NAME='IO_FLAG';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table MD_IO_TASK add io_flag VARCHAR2(8)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 MD_IO_TASK.io_flag 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'MD_IO_TASK' AND U.COLUMN_NAME='EQUIP_CODE';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table MD_IO_TASK add equip_code VARCHAR2(32)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 MD_IO_TASK.equip_code 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'MD_IO_TASK' AND U.COLUMN_NAME='EQUIP_DESC';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table MD_IO_TASK add equip_desc VARCHAR2(400)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 MD_IO_TASK.equip_desc 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'MD_IO_TASK' AND U.COLUMN_NAME='WH_NO';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table MD_IO_TASK add wh_no VARCHAR2(32)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 MD_IO_TASK.wh_no 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'MD_IO_TASK' AND U.COLUMN_NAME='WH_NAME';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table MD_IO_TASK add wh_name VARCHAR2(256)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 MD_IO_TASK.wh_name 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column MD_IO_TASK.io_flag
      is ''出入标志。0入库，1出库''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MD_IO_TASK.equip_code
      is ''设备码''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MD_IO_TASK.equip_desc
      is ''设备码描述''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MD_IO_TASK.wh_no
      is ''库房编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MD_IO_TASK.wh_name
      is ''库房名称''
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000013863 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'MD_IO_DET' AND U.COLUMN_NAME='LAST_CHK_DATE';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table MD_IO_DET add last_chk_date VARCHAR2(32)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 MD_IO_DET.last_chk_date 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column MD_IO_DET.last_chk_date
      is ''最近检定时间''
    ';
END;
/

set feedback on
set define on
set serveroutput off
--------------------------------------------------

