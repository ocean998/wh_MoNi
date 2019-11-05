--------------------------------------------------
set feedback off
set define off
set serveroutput on
--------------------------------------------------

prompt
prompt 正在处理纪录编号为 8200000000016370 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'C_ARRIVE_OTHERDEV_PARA' AND U.COLUMN_NAME='SCREEN_SIZE';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table C_ARRIVE_OTHERDEV_PARA add screen_size VARCHAR2(8)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 C_ARRIVE_OTHERDEV_PARA.screen_size 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'C_ARRIVE_OTHERDEV_PARA' AND U.COLUMN_NAME='SCREEN_RESOLUTION';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table C_ARRIVE_OTHERDEV_PARA add screen_resolution VARCHAR2(8)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 C_ARRIVE_OTHERDEV_PARA.screen_resolution 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'C_ARRIVE_OTHERDEV_PARA' AND U.COLUMN_NAME='CPU';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table C_ARRIVE_OTHERDEV_PARA add cpu NUMBER(8)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 C_ARRIVE_OTHERDEV_PARA.cpu 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'C_ARRIVE_OTHERDEV_PARA' AND U.COLUMN_NAME='MEMORY';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table C_ARRIVE_OTHERDEV_PARA add memory NUMBER(8)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 C_ARRIVE_OTHERDEV_PARA.memory 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'C_ARRIVE_OTHERDEV_PARA' AND U.COLUMN_NAME='BLUETOOTH_FLAG';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table C_ARRIVE_OTHERDEV_PARA add bluetooth_flag NUMBER(1)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 C_ARRIVE_OTHERDEV_PARA.bluetooth_flag 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'C_ARRIVE_OTHERDEV_PARA' AND U.COLUMN_NAME='PHOTO_FLAG';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table C_ARRIVE_OTHERDEV_PARA add photo_flag NUMBER(1)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 C_ARRIVE_OTHERDEV_PARA.photo_flag 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'C_ARRIVE_OTHERDEV_PARA' AND U.COLUMN_NAME='GPS_FLAG';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table C_ARRIVE_OTHERDEV_PARA add gps_flag NUMBER(1)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 C_ARRIVE_OTHERDEV_PARA.gps_flag 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'C_ARRIVE_OTHERDEV_PARA' AND U.COLUMN_NAME='SCAN_FLAG';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table C_ARRIVE_OTHERDEV_PARA add scan_flag NUMBER(1)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 C_ARRIVE_OTHERDEV_PARA.scan_flag 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'C_ARRIVE_OTHERDEV_PARA' AND U.COLUMN_NAME='MTREAD_FLAG';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table C_ARRIVE_OTHERDEV_PARA add mtread_flag NUMBER(1)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 C_ARRIVE_OTHERDEV_PARA.mtread_flag 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'C_ARRIVE_OTHERDEV_PARA' AND U.COLUMN_NAME='FEECTL_FLAG';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table C_ARRIVE_OTHERDEV_PARA add feectl_flag NUMBER(1)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 C_ARRIVE_OTHERDEV_PARA.feectl_flag 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'C_ARRIVE_OTHERDEV_PARA' AND U.COLUMN_NAME='FINGERPRINT_FLAG';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table C_ARRIVE_OTHERDEV_PARA add fingerprint_flag NUMBER(1)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 C_ARRIVE_OTHERDEV_PARA.fingerprint_flag 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'C_ARRIVE_OTHERDEV_PARA' AND U.COLUMN_NAME='PRINT_FLAG';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table C_ARRIVE_OTHERDEV_PARA add print_flag NUMBER(1)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 C_ARRIVE_OTHERDEV_PARA.print_flag 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'C_ARRIVE_OTHERDEV_PARA' AND U.COLUMN_NAME='RFID_FLAG';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table C_ARRIVE_OTHERDEV_PARA add rfid_flag NUMBER(1)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 C_ARRIVE_OTHERDEV_PARA.rfid_flag 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column C_ARRIVE_OTHERDEV_PARA.screen_size
      is ''屏幕尺寸，VW_HANDHELD_SCREEN_SIZE''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column C_ARRIVE_OTHERDEV_PARA.screen_resolution
      is ''屏幕分辨率, 参考VW_HANDHELD_SCREEN_RESOLUTION''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column C_ARRIVE_OTHERDEV_PARA.cpu
      is ''CPU''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column C_ARRIVE_OTHERDEV_PARA.memory
      is ''内存''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column C_ARRIVE_OTHERDEV_PARA.bluetooth_flag
      is ''是否支持蓝牙, VW_YESNO_FLAG''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column C_ARRIVE_OTHERDEV_PARA.photo_flag
      is ''是否支持拍照, VW_YESNO_FLAG''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column C_ARRIVE_OTHERDEV_PARA.gps_flag
      is ''是否支持GPS定位, VW_YESNO_FLAG''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column C_ARRIVE_OTHERDEV_PARA.scan_flag
      is ''是否支持红外扫描, VW_YESNO_FLAG''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column C_ARRIVE_OTHERDEV_PARA.mtread_flag
      is ''是否支持红外抄表, VW_YESNO_FLAG''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column C_ARRIVE_OTHERDEV_PARA.feectl_flag
      is ''是否支持费控, VW_YESNO_FLAG''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column C_ARRIVE_OTHERDEV_PARA.fingerprint_flag
      is ''是否支持指纹, VW_YESNO_FLAG''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column C_ARRIVE_OTHERDEV_PARA.print_flag
      is ''是否支持直接打印, VW_YESNO_FLAG''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column C_ARRIVE_OTHERDEV_PARA.rfid_flag
      is ''是否支持RFID射频扫描, VW_YESNO_FLAG''
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000016375 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'D_HANDHELD_DEVICE' AND U.COLUMN_NAME='SCREEN_SIZE';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table D_HANDHELD_DEVICE add screen_size VARCHAR2(8)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 D_HANDHELD_DEVICE.screen_size 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'D_HANDHELD_DEVICE' AND U.COLUMN_NAME='SCREEN_RESOLUTION';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table D_HANDHELD_DEVICE add screen_resolution VARCHAR2(8)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 D_HANDHELD_DEVICE.screen_resolution 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'D_HANDHELD_DEVICE' AND U.COLUMN_NAME='CPU';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table D_HANDHELD_DEVICE add cpu NUMBER(8)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 D_HANDHELD_DEVICE.cpu 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'D_HANDHELD_DEVICE' AND U.COLUMN_NAME='MEMORY';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table D_HANDHELD_DEVICE add memory NUMBER(8)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 D_HANDHELD_DEVICE.memory 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'D_HANDHELD_DEVICE' AND U.COLUMN_NAME='BLUETOOTH_FLAG';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table D_HANDHELD_DEVICE add bluetooth_flag NUMBER(1)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 D_HANDHELD_DEVICE.bluetooth_flag 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'D_HANDHELD_DEVICE' AND U.COLUMN_NAME='PHOTO_FLAG';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table D_HANDHELD_DEVICE add photo_flag NUMBER(1)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 D_HANDHELD_DEVICE.photo_flag 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'D_HANDHELD_DEVICE' AND U.COLUMN_NAME='GPS_FLAG';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table D_HANDHELD_DEVICE add gps_flag NUMBER(1)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 D_HANDHELD_DEVICE.gps_flag 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'D_HANDHELD_DEVICE' AND U.COLUMN_NAME='SCAN_FLAG';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table D_HANDHELD_DEVICE add scan_flag NUMBER(1)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 D_HANDHELD_DEVICE.scan_flag 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'D_HANDHELD_DEVICE' AND U.COLUMN_NAME='MTREAD_FLAG';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table D_HANDHELD_DEVICE add mtread_flag NUMBER(1)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 D_HANDHELD_DEVICE.mtread_flag 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'D_HANDHELD_DEVICE' AND U.COLUMN_NAME='FEECTL_FLAG';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table D_HANDHELD_DEVICE add feectl_flag NUMBER(1)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 D_HANDHELD_DEVICE.feectl_flag 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'D_HANDHELD_DEVICE' AND U.COLUMN_NAME='FINGERPRINT_FLAG';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table D_HANDHELD_DEVICE add fingerprint_flag NUMBER(1)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 D_HANDHELD_DEVICE.fingerprint_flag 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'D_HANDHELD_DEVICE' AND U.COLUMN_NAME='PRINT_FLAG';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table D_HANDHELD_DEVICE add print_flag NUMBER(1)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 D_HANDHELD_DEVICE.print_flag 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'D_HANDHELD_DEVICE' AND U.COLUMN_NAME='RFID_FLAG';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table D_HANDHELD_DEVICE add rfid_flag NUMBER(1)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 D_HANDHELD_DEVICE.rfid_flag 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column D_HANDHELD_DEVICE.screen_size
      is ''屏幕尺寸, VW_HANDHELD_SCREEN_SIZE''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_HANDHELD_DEVICE.screen_resolution
      is ''屏幕分辨率, VW_HANDHELD_SCREEN_RESOLUTION''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_HANDHELD_DEVICE.cpu
      is ''CPU''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_HANDHELD_DEVICE.memory
      is ''内存''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_HANDHELD_DEVICE.bluetooth_flag
      is ''是否支持蓝牙, VW_YESNO_FLAG''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_HANDHELD_DEVICE.photo_flag
      is ''是否支持拍照, VW_YESNO_FLAG''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_HANDHELD_DEVICE.gps_flag
      is ''是否支持GPS定位, VW_YESNO_FLAG''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_HANDHELD_DEVICE.scan_flag
      is ''是否支持红外扫描, VW_YESNO_FLAG''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_HANDHELD_DEVICE.mtread_flag
      is ''是否支持红外抄表, VW_YESNO_FLAG''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_HANDHELD_DEVICE.feectl_flag
      is ''是否支持费控, VW_YESNO_FLAG''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_HANDHELD_DEVICE.fingerprint_flag
      is ''是否支持指纹, VW_YESNO_FLAG''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_HANDHELD_DEVICE.print_flag
      is ''是否支持直接打印, VW_YESNO_FLAG''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_HANDHELD_DEVICE.rfid_flag
      is ''是否支持RFID射频扫描, VW_YESNO_FLAG''
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000016740 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'U_DIST_TASK' AND U.COLUMN_NAME='IS_ACTIVE_DIST';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table U_DIST_TASK add is_active_dist VARCHAR2(8)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 U_DIST_TASK.is_active_dist 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column U_DIST_TASK.is_active_dist
      is ''是否主动配送，1：是，0：否。''
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000017217 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'T_HPLCID_CERT_INFO' AND U.COLUMN_NAME='WRITE_DATE';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table T_HPLCID_CERT_INFO add write_date DATE default SYSDATE
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 T_HPLCID_CERT_INFO.write_date 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column T_HPLCID_CERT_INFO.write_date
      is ''写入时间''
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000017286 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    EXECUTE IMMEDIATE
    '
      create or replace synonym SG_R_CP_DESIGN_SCHEME
      for SGPM.R_CP_DESIGN_SCHEME@SGPM
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000017330 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'C_ARRIVE_CABINET_PARA' AND U.COLUMN_NAME='CABINET_SIZE';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table C_ARRIVE_CABINET_PARA modify cabinet_size VARCHAR2(30)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 C_ARRIVE_CABINET_PARA.CABINET_SIZE 不存在。');
    END IF;
END;
/
prompt
prompt 正在处理纪录编号为 8200000000017344 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'D_METERING_CABINET' AND U.COLUMN_NAME='CABINET_SIZE';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table D_METERING_CABINET modify cabinet_size VARCHAR2(30)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 D_METERING_CABINET.CABINET_SIZE 不存在。');
    END IF;
END;
/
prompt
prompt 正在处理纪录编号为 8200000000017370 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'A_BAR_CODE_DOC' AND U.COLUMN_NAME='ASSET_TYPE_BIG';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table A_BAR_CODE_DOC add asset_type_big VARCHAR2(8)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 A_BAR_CODE_DOC.asset_type_big 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'A_BAR_CODE_DOC' AND U.COLUMN_NAME='ASSET_TYPE_SMALL';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table A_BAR_CODE_DOC add asset_type_small VARCHAR2(8)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 A_BAR_CODE_DOC.asset_type_small 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column A_BAR_CODE_DOC.asset_type_big
      is ''资产类型大类（VW_ASSET_TYPE_BIG）''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column A_BAR_CODE_DOC.asset_type_small
      is ''资产类型小类（VW_ASSET_TYPE_SMALL）''
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000017371 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'A_CODE_SEND_DETAIL' AND U.COLUMN_NAME='BID_BATCH_NO';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table A_CODE_SEND_DETAIL add bid_batch_no VARCHAR2(32)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 A_CODE_SEND_DETAIL.bid_batch_no 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column A_CODE_SEND_DETAIL.bid_batch_no
      is ''招标批次''
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000017388 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'A_BAR_CODE_DOC' AND U.COLUMN_NAME='MODEL_CODE';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table A_BAR_CODE_DOC add model_code VARCHAR2(8)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 A_BAR_CODE_DOC.model_code 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'A_BAR_CODE_DOC' AND U.COLUMN_NAME='VOLT_CODE';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table A_BAR_CODE_DOC add volt_code VARCHAR2(8)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 A_BAR_CODE_DOC.volt_code 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'A_BAR_CODE_DOC' AND U.COLUMN_NAME='RATED_CURRENT';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table A_BAR_CODE_DOC add rated_current VARCHAR2(8)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 A_BAR_CODE_DOC.rated_current 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'A_BAR_CODE_DOC' AND U.COLUMN_NAME='CHIP_MANUFACTURER';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table A_BAR_CODE_DOC add chip_manufacturer VARCHAR2(8)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 A_BAR_CODE_DOC.chip_manufacturer 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'A_BAR_CODE_DOC' AND U.COLUMN_NAME='BID_BATCH_NO';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table A_BAR_CODE_DOC add bid_batch_no VARCHAR2(32)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 A_BAR_CODE_DOC.bid_batch_no 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'A_BAR_CODE_DOC' AND U.COLUMN_NAME='UNIT';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table A_BAR_CODE_DOC add unit NUMBER(8)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 A_BAR_CODE_DOC.unit 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'A_BAR_CODE_DOC' AND U.COLUMN_NAME='BID_NUM';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table A_BAR_CODE_DOC add bid_num NUMBER(15)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 A_BAR_CODE_DOC.bid_num 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'A_BAR_CODE_DOC' AND U.COLUMN_NAME='SPEC_CODE';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table A_BAR_CODE_DOC add spec_code VARCHAR2(8)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 A_BAR_CODE_DOC.spec_code 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'A_BAR_CODE_DOC' AND U.COLUMN_NAME='ORG_NUM';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table A_BAR_CODE_DOC add org_num VARCHAR2(8)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 A_BAR_CODE_DOC.org_num 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'A_BAR_CODE_DOC' AND U.COLUMN_NAME='YEAR_CODE';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table A_BAR_CODE_DOC add year_code VARCHAR2(8)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 A_BAR_CODE_DOC.year_code 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'A_BAR_CODE_DOC' AND U.COLUMN_NAME='START_NUM';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table A_BAR_CODE_DOC add start_num VARCHAR2(22)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 A_BAR_CODE_DOC.start_num 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'A_BAR_CODE_DOC' AND U.COLUMN_NAME='END_NUM';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table A_BAR_CODE_DOC add end_num VARCHAR2(22)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 A_BAR_CODE_DOC.end_num 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column A_BAR_CODE_DOC.model_code
      is ''型号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column A_BAR_CODE_DOC.volt_code
      is ''电压''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column A_BAR_CODE_DOC.rated_current
      is ''电流''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column A_BAR_CODE_DOC.chip_manufacturer
      is ''载波芯片厂家''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column A_BAR_CODE_DOC.bid_batch_no
      is ''招标批次''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column A_BAR_CODE_DOC.unit
      is ''计量单位''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column A_BAR_CODE_DOC.bid_num
      is ''中标数量''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column A_BAR_CODE_DOC.spec_code
      is ''设备规格''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column A_BAR_CODE_DOC.org_num
      is ''单位编码''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column A_BAR_CODE_DOC.year_code
      is ''年份（VW_YEAR_CODE）''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column A_BAR_CODE_DOC.start_num
      is ''开始序列号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column A_BAR_CODE_DOC.end_num
      is ''结束序列号''
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000017398 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'A_BAR_CODE_DOC' AND U.COLUMN_NAME='UNIT';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table A_BAR_CODE_DOC modify unit VARCHAR2(8)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 A_BAR_CODE_DOC.UNIT 不存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'A_BAR_CODE_DOC' AND U.COLUMN_NAME='START_NUM';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table A_BAR_CODE_DOC modify start_num NUMBER(22)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 A_BAR_CODE_DOC.START_NUM 不存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'A_BAR_CODE_DOC' AND U.COLUMN_NAME='END_NUM';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table A_BAR_CODE_DOC modify end_num NUMBER(22)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 A_BAR_CODE_DOC.END_NUM 不存在。');
    END IF;
END;
/
prompt
prompt 正在处理纪录编号为 8200000000017419 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Tables U WHERE U.TABLE_NAME = 'SM_APPLY_INFO_HLJ';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
        create table SM_APPLY_INFO_HLJ
        (
        det_id NUMBER(16) not null,
        apply_no VARCHAR2(16),
        apply_date DATE,
        org_no VARCHAR2(16),
        busi_type VARCHAR2(8),
        apply_fixed_phone VARCHAR2(16),
        apply_cell_phone VARCHAR2(16),
        supportor_cell_phone VARCHAR2(16),
        emerg_degree VARCHAR2(8),
        problem_desc VARCHAR2(1024),
        problem_reason VARCHAR2(1024),
        is_fore_process NUMBER(1),
        processor_no VARCHAR2(8),
        process_date DATE,
        process_rlt VARCHAR2(1024),
        apply_status VARCHAR2(8),
        applicant_no VARCHAR2(16),
        busi_prof VARCHAR2(8)
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
    EXECUTE IMMEDIATE
    '
      comment on column SM_APPLY_INFO_HLJ.DET_ID
      is ''唯一标识''
    ';      
    ELSE
      dbms_output.put_line('脚本已跳过，因为 SM_APPLY_INFO_HLJ 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table SM_APPLY_INFO_HLJ
      is ''系统运维申请信息表''
    ';

    EXECUTE IMMEDIATE
    '
      comment on column SM_APPLY_INFO_HLJ.APPLY_NO
      is ''申请单编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SM_APPLY_INFO_HLJ.APPLY_DATE
      is ''申请日期''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SM_APPLY_INFO_HLJ.ORG_NO
      is ''申请单位''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SM_APPLY_INFO_HLJ.BUSI_TYPE
      is ''业务类别，VW_SM_BUSI_TYPE_HLJ''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SM_APPLY_INFO_HLJ.APPLY_FIXED_PHONE
      is ''固定电话''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SM_APPLY_INFO_HLJ.APPLY_CELL_PHONE
      is ''移动电话''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SM_APPLY_INFO_HLJ.SUPPORTOR_CELL_PHONE
      is ''技术支持人员电话''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SM_APPLY_INFO_HLJ.EMERG_DEGREE
      is ''紧急程度，VW_SM_EMERGENCY_HLJ''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SM_APPLY_INFO_HLJ.PROBLEM_DESC
      is ''问题描述''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SM_APPLY_INFO_HLJ.PROBLEM_REASON
      is ''问题原因''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SM_APPLY_INFO_HLJ.IS_FORE_PROCESS
      is ''是否通过前台操作完成，0否 1是''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SM_APPLY_INFO_HLJ.PROCESSOR_NO
      is ''处理人员''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SM_APPLY_INFO_HLJ.PROCESS_DATE
      is ''处理日期''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SM_APPLY_INFO_HLJ.PROCESS_RLT
      is ''处理结果''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SM_APPLY_INFO_HLJ.APPLY_STATUS
      is ''状态，VW_SM_STATUS_HLJ''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SM_APPLY_INFO_HLJ.APPLICANT_NO
      is ''申请人员''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SM_APPLY_INFO_HLJ.BUSI_PROF
      is ''业务专业，VW_SM_PROFESSION_HLJ，01 计量''
    ';
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_INDEXES U WHERE u.INDEX_NAME = 'PK_SM_APPLY_INFO_HLJ';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table SM_APPLY_INFO_HLJ
      add constraint PK_SM_APPLY_INFO_HLJ primary key (DET_ID)
      using index
      tablespace MPAC_IDX
      pctfree 10
      initrans 2
      maxtrans 255
      storage
      (
      initial 64K
      next 1M
      minextents 1
      maxextents unlimited
      )
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 PK_SM_APPLY_INFO_HLJ 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Sequences U WHERE u.sequence_name = 'SEQ_SM_APPLY_INFO_HLJ';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      create sequence SEQ_SM_APPLY_INFO_HLJ
      minvalue 1
      maxvalue 9999999999999999
      start with 8200000000000000
      increment by 1
      cache 20
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 SEQ_SM_APPLY_INFO_HLJ 已存在。');
    END IF;
END;
/
prompt
prompt 正在处理纪录编号为 8200000000017477 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'D_WH_CHANGE_RECORD' AND U.COLUMN_NAME='PA_RECORD_ID';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table D_WH_CHANGE_RECORD add pa_record_id NUMBER(16)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 D_WH_CHANGE_RECORD.pa_record_id 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column D_WH_CHANGE_RECORD.pa_record_id
      is ''上级标识。仅当变更方式为03删除时有效，保存当前储位的上级储位变更记录标识CH_RECORD_ID''
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000017485 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    EXECUTE IMMEDIATE
    '
      comment on column SM_APPLY_INFO_HLJ.apply_no
      is ''唯一标识''
    ';
END;
/

-- Add/modify columns 
alter table SM_APPLY_INFO_HLJ modify apply_no not null;
-- Create/Recreate indexes 
create index pk_SM_APPLY_INFO_HLJ on SM_APPLY_INFO_HLJ (apply_no);

prompt
prompt 正在处理纪录编号为 8200000000017489 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'SM_APPLY_INFO_HLJ' AND U.COLUMN_NAME='DET_ID';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table SM_APPLY_INFO_HLJ drop column det_id
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 SM_APPLY_INFO_HLJ.DET_ID 不存在。');
    END IF;
END;
/
prompt
prompt 正在处理纪录编号为 8200000000017513 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'SM_APPLY_INFO_HLJ' AND U.COLUMN_NAME='FILE_PATH';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table SM_APPLY_INFO_HLJ add file_path VARCHAR2(256)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 SM_APPLY_INFO_HLJ.file_path 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column SM_APPLY_INFO_HLJ.file_path
      is ''文件路径''
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000017543 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'T_REPICKDDETECT_NUM_REC' AND U.COLUMN_NAME='PR_ORG';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table T_REPICKDDETECT_NUM_REC modify pr_org VARCHAR2(16)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 T_REPICKDDETECT_NUM_REC.PR_ORG 不存在。');
    END IF;
END;
/
prompt
prompt 正在处理纪录编号为 8200000000017568 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Tables U WHERE U.TABLE_NAME = 'JLZX_DAY_BATCH_DATA';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
        create table JLZX_DAY_BATCH_DATA
        (
        data_date DATE,
        equip_categ VARCHAR2(8),
        batch_type VARCHAR2(32),
        sort_code VARCHAR2(8),
        list_no VARCHAR2(32)
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
      dbms_output.put_line('脚本已跳过，因为 JLZX_DAY_BATCH_DATA 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table JLZX_DAY_BATCH_DATA
      is ''计量中心每日数据（安徽）''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column JLZX_DAY_BATCH_DATA.batch_type
      is ''区分任务类型：IO_WH_SORT_CODE为出入库任务为出入库任务，DETECT_TYPE为检定任务等''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column JLZX_DAY_BATCH_DATA.sort_code
      is ''与BATCH_TYPE联合使用，（IO_WH_SORT_CODE，10）代表配送出库，（DETECT_TYPE，05）代表全检任务''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column JLZX_DAY_BATCH_DATA.list_no
      is ''默认填写到货批号，若SORT_CODE为00，则填写市县公司代码''
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000017572 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Tables U WHERE U.TABLE_NAME = 'JLZX_DAY_DATA';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
        create table JLZX_DAY_DATA
        (
        data_id NUMBER(16),
        data_date DATE,
        equip_categ VARCHAR2(8),
        arrive_batch_num NUMBER(8),
        arrive_qty NUMBER(8),
        samping_batch_num NUMBER(8),
        samping_qty NUMBER(8),
        samping_pass_qty NUMBER(8),
        detect_batch_num NUMBER(8),
        detect_qty NUMBER(8),
        detect_pass_qty NUMBER(8),
        dist_batch_num NUMBER(8),
        dist__qty NUMBER(8),
        dist_org_num NUMBER(8)
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
      dbms_output.put_line('脚本已跳过，因为 JLZX_DAY_DATA 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table JLZX_DAY_DATA
      is ''计量中心每日数据''
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000017573 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Tables U WHERE U.TABLE_NAME = 'JLZX_DAY_FORM';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
        create table JLZX_DAY_FORM
        (
        bid_batch_no VARCHAR2(32),
        bid_batch_name VARCHAR2(256),
        equip_categ VARCHAR2(256),
        rcv_id NUMBER(16) NOT NULL,
        arrive_batch_no VARCHAR2(32),
        qty NUMBER(8),
        equip_categ_name VARCHAR2(256),
        wirring_mode VARCHAR2(256),
        manufacturer VARCHAR2(16),
        partner_name VARCHAR2(256),
        type_code VARCHAR2(8),
        meter_type VARCHAR2(256),
        carrier_wave_chip_manufacturer VARCHAR2(32),
        chip_manufacturer VARCHAR2(256 CHAR),
        ap_pre_level_code VARCHAR2(8),
        ap_pre_level_name VARCHAR2(256),
        volt_code VARCHAR2(8),
        volt_name VARCHAR2(256),
        current_code VARCHAR2(8),
        current_name VARCHAR2(256),
        rc_ratio_code VARCHAR2(8),
        rc_ratio_code_name VARCHAR2(16),
        arrival_date DATE,
        status_code VARCHAR2(8),
        app_flag NUMBER(2),
        status_name VARCHAR2(256),
        zz_wh_num NUMBER(6),
        ypbd_num NUMBER(6),
        xnsy_num NUMBER(6),
        cj_num NUMBER(6),
        all_detect_num NUMBER(6),
        dist_city_num VARCHAR2(1024),
        dist_num_and_left VARCHAR2(32),
        comm_mode VARCHAR2(8),
        comm_chip_name VARCHAR2(32),
        usage_type VARCHAR2(16)
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
      dbms_output.put_line('脚本已跳过，因为 JLZX_DAY_FORM 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table JLZX_DAY_FORM
      is ''计量中心每日表单''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column JLZX_DAY_FORM.bid_batch_no
      is ''招标批次号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column JLZX_DAY_FORM.bid_batch_name
      is ''招标批次名称''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column JLZX_DAY_FORM.equip_categ
      is ''设备类别''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column JLZX_DAY_FORM.rcv_id
      is ''到货批次ID''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column JLZX_DAY_FORM.arrive_batch_no
      is ''到货批次号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column JLZX_DAY_FORM.qty
      is ''到货数''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column JLZX_DAY_FORM.equip_categ_name
      is ''设备类别名称''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column JLZX_DAY_FORM.wirring_mode
      is ''接线方式''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column JLZX_DAY_FORM.manufacturer
      is ''主设备厂家编码''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column JLZX_DAY_FORM.partner_name
      is ''主设备厂家名称''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column JLZX_DAY_FORM.type_code
      is ''主设备类型''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column JLZX_DAY_FORM.meter_type
      is ''主设备类型''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column JLZX_DAY_FORM.carrier_wave_chip_manufacturer
      is ''模块厂家编码''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column JLZX_DAY_FORM.chip_manufacturer
      is ''模块厂家名称''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column JLZX_DAY_FORM.status_name
      is ''批次状态''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column JLZX_DAY_FORM.zz_wh_num
      is ''拆包数量''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column JLZX_DAY_FORM.ypbd_num
      is ''样品比对数量''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column JLZX_DAY_FORM.xnsy_num
      is ''性能试验数量''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column JLZX_DAY_FORM.cj_num
      is ''抽检数量''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column JLZX_DAY_FORM.all_detect_num
      is ''全检数量''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column JLZX_DAY_FORM.dist_city_num
      is ''各配送点及配送数量''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column JLZX_DAY_FORM.dist_num_and_left
      is ''配送总数与剩余总数''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column JLZX_DAY_FORM.comm_mode
      is ''通讯方式''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column JLZX_DAY_FORM.comm_chip_name
      is ''HPLC模块的芯片厂家''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column JLZX_DAY_FORM.usage_type
      is ''时段''
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000017579 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'D_CHG_WH_TASK' AND U.COLUMN_NAME='STORE_LOC_NO';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table D_CHG_WH_TASK add store_loc_no VARCHAR2(512)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 D_CHG_WH_TASK.store_loc_no 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column D_CHG_WH_TASK.store_loc_no
      is ''货位编号，与储位表储位编号关联,多个货位编号以“|”拼接''
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000017580 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'D_IO_TASK' AND U.COLUMN_NAME='STORE_LOC_NO';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table D_IO_TASK add store_loc_no VARCHAR2(512)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 D_IO_TASK.store_loc_no 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column D_IO_TASK.store_loc_no
      is ''货位编号，与储位表储位编号关联,多个货位编号以“|”拼接''
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000017594 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'SM_APPLY_INFO_HLJ' AND U.COLUMN_NAME='PROCESSOR_NO';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table SM_APPLY_INFO_HLJ modify processor_no VARCHAR2(16)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 SM_APPLY_INFO_HLJ.PROCESSOR_NO 不存在。');
    END IF;
END;
/
prompt
prompt 正在处理纪录编号为 8200000000017704 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    EXECUTE IMMEDIATE
    '
      comment on column B_ERP_CHANGE_CODE_ZJ.scheme_type
      is ''转码方案类别。01:erp物料号，02:生产厂家，03：模块erp物料号''
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000017727 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    EXECUTE IMMEDIATE
    '
      CREATE OR REPLACE VIEW VW_PICK_STATUS_CODE AS
      SELECT ''01'' equip_categ,
      VALUE code,
      NAME code_name
      FROM p_code_std
      WHERE code_type = ''meterStatus''
      and name IN (''待校验'',''合格在库'',''待报废'',''待分流'',''新购'',''已留样'',
      ''待施封'',''待返厂'',''待校验（运行抽检）'',''库存待复检'',''不合格在库'',''不合格待复检'')
      UNION ALL
      SELECT ''09'' equip_categ,
      VALUE code,
      NAME code_name
      FROM p_code_std
      WHERE code_type = ''tmnlStatus''
      and name IN (''待校验'',''合格在库'',''待报废'',''待分流'',''新购'',''已留样'',
      ''待施封'',''待返厂'',''待校验（运行抽检）'',''库存待复检'',''不合格在库'',''不合格待复检'')
      UNION ALL
      SELECT ''02'' equip_categ,
      VALUE code,
      NAME code_name
      FROM p_code_std
      WHERE code_type = ''itStatus''
      and name IN (''待检定'',''合格在库'',''待报废'',''待分流'',''新购'',''已留样'',
      ''待施封'',''待返厂'',''待校验（运行抽检）'',''库存待复检'',''不合格在库'',''不合格待复检'')
      UNION ALL
      SELECT ''03'' equip_categ,
      VALUE code,
      NAME code_name
      FROM p_code_std
      WHERE code_type = ''itStatus''
      and name IN (''待检定'',''合格在库'',''待报废'',''待分流'',''新购'',''已留样'',
      ''待施封'',''待返厂'',''待校验（运行抽检）'',''库存待复检'',''不合格在库'',''不合格待复检'')
      UNION ALL
      SELECT ''04'' equip_categ,
      VALUE code,
      NAME code_name
      FROM p_code_std
      WHERE code_type = ''itStatus''
      and name IN (''待检定'',''合格在库'',''待报废'',''待分流'',''新购'',''已留样'',
      ''待施封'',''待返厂'',''待校验（运行抽检）'',''库存待复检'',''不合格在库'',''不合格待复检'')
      UNION ALL
      SELECT ''05'' equip_categ,
      VALUE code,
      NAME code_name
      FROM p_code_std
      WHERE code_type = ''cabinetStatus''
      and name IN (''待报废'')
      UNION ALL
      SELECT ''54'' equip_categ,
      VALUE code,
      NAME code_name
      FROM p_code_std
      WHERE code_type = ''commStatus''
      and name IN (''新购'',''合格在库'',''待分流'',''待报废'',''待返厂'',''不合格'',''待检验'',
      ''待修理'',''不合格待复检'')
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000017771 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Tables U WHERE U.TABLE_NAME = 'C_ARRIVE_PARA_SET';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
        create table C_ARRIVE_PARA_SET
        (
        equip_categ VARCHAR2(8),
        col_name VARCHAR2(64),
        chn_name VARCHAR2(64),
        eng_name VARCHAR2(64),
        disp_order NUMBER(3),
        disp_type VARCHAR2(8) default ''01'',
        is_must NUMBER(1) default 0,
        is_fk NUMBER(1) default 0,
        is_export NUMBER(1) default 0,
        is_fk_export NUMBER(1) default 0,
        view_name VARCHAR2(32),
        collection VARCHAR2(32),
        default_val VARCHAR2(64),
        input_check VARCHAR2(8)
        )
        tablespace MPAC_C
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
      dbms_output.put_line('脚本已跳过，因为 C_ARRIVE_PARA_SET 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table C_ARRIVE_PARA_SET
      is ''到货参数配置表''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column C_ARRIVE_PARA_SET.EQUIP_CATEG
      is ''设备类别，VW_EQUIP_CATEG''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column C_ARRIVE_PARA_SET.COL_NAME
      is ''字段名称''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column C_ARRIVE_PARA_SET.CHN_NAME
      is ''展示名称''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column C_ARRIVE_PARA_SET.ENG_NAME
      is ''属性名称''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column C_ARRIVE_PARA_SET.DISP_ORDER
      is ''展示排序''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column C_ARRIVE_PARA_SET.DISP_TYPE
      is ''展示形式，VW_PARA_DISP_TYPE''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column C_ARRIVE_PARA_SET.IS_MUST
      is ''是否必填，1是、0否（默认）''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column C_ARRIVE_PARA_SET.IS_FK
      is ''是否附属设备参数，1是、0否（默认）''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column C_ARRIVE_PARA_SET.IS_EXPORT
      is ''是否模板导出，1是、0否（默认）''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column C_ARRIVE_PARA_SET.IS_FK_EXPORT
      is ''附属设备参数是否模板导出，1是、0否（默认）''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column C_ARRIVE_PARA_SET.VIEW_NAME
      is ''视图名称''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column C_ARRIVE_PARA_SET.COLLECTION
      is ''视图显示集合''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column C_ARRIVE_PARA_SET.DEFAULT_VAL
      is ''默认值''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column C_ARRIVE_PARA_SET.INPUT_CHECK
      is ''输入校验，VW_PARA_INPUT_CHECK''
    ';
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Sequences U WHERE u.sequence_name = 'SEQ_C_ARRIVE_PARA_SET';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      create sequence SEQ_C_ARRIVE_PARA_SET
      minvalue 1
      maxvalue 9999999999999999
      start with 8200000000000000
      increment by 1
      cache 20
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 SEQ_C_ARRIVE_PARA_SET 已存在。');
    END IF;
END;
/
prompt
prompt 正在处理纪录编号为 8200000000017807 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'JLZX_DAY_FORM' AND U.COLUMN_NAME='NEED_DIST_NUM';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table JLZX_DAY_FORM add need_dist_num NUMBER(6)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 JLZX_DAY_FORM.need_dist_num 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'JLZX_DAY_FORM' AND U.COLUMN_NAME='DIST_NUM';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table JLZX_DAY_FORM add dist_num NUMBER(6)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 JLZX_DAY_FORM.dist_num 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'JLZX_DAY_FORM' AND U.COLUMN_NAME='LEFT_DIST_NUM';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table JLZX_DAY_FORM add left_dist_num NUMBER(6)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 JLZX_DAY_FORM.left_dist_num 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column JLZX_DAY_FORM.need_dist_num
      is ''需配送数量''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column JLZX_DAY_FORM.dist_num
      is ''已配送数量''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column JLZX_DAY_FORM.left_dist_num
      is ''剩余未配送数量''
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000017830 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Tables U WHERE U.TABLE_NAME = 'AH_DIST_RSLT';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
        create table AH_DIST_RSLT
        (
        recv_org_no VARCHAR2(32),
        org_name VARCHAR2(256),
        equip_code VARCHAR2(32),
        equip_desc VARCHAR2(400),
        manufacturer VARCHAR2(16),
        manu_name VARCHAR2(256),
        bid_batch_no VARCHAR2(32),
        bid_batch_name VARCHAR2(256),
        arrive_batch_no VARCHAR2(32),
        equip_categ VARCHAR2(8),
        volt_code VARCHAR2(8 CHAR),
        volt_name VARCHAR2(256 CHAR),
        current_code VARCHAR2(8 CHAR),
        current_name VARCHAR2(256 CHAR),
        carrier_wave_chip_manufacturer VARCHAR2(32),
        chip_name VARCHAR2(256),
        ap_pre_level_code VARCHAR2(8 CHAR),
        ap_pre_level_name VARCHAR2(256),
        rc_ratio_code VARCHAR2(8 CHAR),
        rc_ratio_name VARCHAR2(256 CHAR),
        io_task_no VARCHAR2(16),
        dist_num NUMBER(8),
        io_task_date DATE
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
      dbms_output.put_line('脚本已跳过，因为 AH_DIST_RSLT 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table AH_DIST_RSLT
      is ''安徽(存储调用：
      PKG_SUPLLY_MANAGE)''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column AH_DIST_RSLT.recv_org_no
      is ''配送接收单位代码''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column AH_DIST_RSLT.org_name
      is ''配送接收单位名称''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column AH_DIST_RSLT.equip_code
      is ''物料码''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column AH_DIST_RSLT.equip_desc
      is ''物料名称''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column AH_DIST_RSLT.manufacturer
      is ''设备生产厂家代码''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column AH_DIST_RSLT.manu_name
      is ''设备生产厂家名称''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column AH_DIST_RSLT.bid_batch_no
      is ''招标批次号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column AH_DIST_RSLT.bid_batch_name
      is ''招标批次名称''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column AH_DIST_RSLT.arrive_batch_no
      is ''到货批次号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column AH_DIST_RSLT.equip_categ
      is ''设备类别''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column AH_DIST_RSLT.volt_code
      is ''电压编码''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column AH_DIST_RSLT.volt_name
      is ''电压''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column AH_DIST_RSLT.current_code
      is ''电流编码''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column AH_DIST_RSLT.current_name
      is ''电流''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column AH_DIST_RSLT.carrier_wave_chip_manufacturer
      is ''载波芯片厂家代码''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column AH_DIST_RSLT.chip_name
      is ''载波芯片厂家名称''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column AH_DIST_RSLT.ap_pre_level_code
      is ''有功准确度等级代码''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column AH_DIST_RSLT.ap_pre_level_name
      is ''有功准确度等级''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column AH_DIST_RSLT.rc_ratio_code
      is ''电流变比代码''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column AH_DIST_RSLT.rc_ratio_name
      is ''电流变比''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column AH_DIST_RSLT.io_task_no
      is ''配送出库任务单号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column AH_DIST_RSLT.dist_num
      is ''配送任务数量''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column AH_DIST_RSLT.io_task_date
      is ''配送出库时间''
    ';
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Sequences U WHERE u.sequence_name = 'SEQ_AH_DIST_RSLT';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      create sequence SEQ_AH_DIST_RSLT
      minvalue 1
      maxvalue 9999999999999999
      start with 8200000000000000
      increment by 1
      cache 20
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 SEQ_AH_DIST_RSLT 已存在。');
    END IF;
END;
/
prompt
prompt 正在处理纪录编号为 8200000000017920 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Tables U WHERE U.TABLE_NAME = 'T_BOX_IMPORT';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
        create table T_BOX_IMPORT
        (
        record_id NUMBER(16) not null,
        io_flag VARCHAR2(8),
        equip_categ VARCHAR2(8),
        bar_code VARCHAR2(32),
        box_bar_code VARCHAR2(32),
        record_no VARCHAR2(32)
        )
        tablespace MPAC_T
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
      dbms_output.put_line('脚本已跳过，因为 T_BOX_IMPORT 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table T_BOX_IMPORT
      is ''设备箱表关系导入表''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_BOX_IMPORT.record_id
      is ''本实体记录的唯一标识''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_BOX_IMPORT.io_flag
      is ''周转箱是否建档。0否，1是''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_BOX_IMPORT.equip_categ
      is ''设备类别''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_BOX_IMPORT.bar_code
      is ''设备条码''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_BOX_IMPORT.box_bar_code
      is ''周转箱条码''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_BOX_IMPORT.record_no
      is ''每次导入生成任务单号''
    ';
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_INDEXES U WHERE u.INDEX_NAME = 'PK_T_BOX_IMPORT';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table T_BOX_IMPORT
      add constraint PK_T_BOX_IMPORT primary key (record_id)
      using index
      tablespace MPAC_T_IDX
      pctfree 10
      initrans 2
      maxtrans 255
      storage
      (
      initial 64K
      next 1M
      minextents 1
      maxextents unlimited
      )
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 PK_T_BOX_IMPORT 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Sequences U WHERE u.sequence_name = 'SEQ_T_BOX_IMPORT';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      create sequence SEQ_T_BOX_IMPORT
      minvalue 1
      maxvalue 9999999999999999
      start with 8200000000000000
      increment by 1
      cache 20
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 SEQ_T_BOX_IMPORT 已存在。');
    END IF;
END;
/
prompt
prompt 正在处理纪录编号为 8200000000017938 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Tables U WHERE U.TABLE_NAME = 'T_DETECT_CP_RSLT';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
        create table T_DETECT_CP_RSLT
        (
        detect_read_id NUMBER(16) not null,
        detect_task_no VARCHAR2(32),
        sys_no VARCHAR2(8),
        detect_equip_no VARCHAR2(16),
        bar_code VARCHAR2(32),
        detect_date VARCHAR2(32),
        conc_code VARCHAR2(8),
        intuit_conc_code VARCHAR2(8),
        inside_conc_code VARCHAR2(8),
        wire_conc_code VARCHAR2(8),
        sign_conc_code VARCHAR2(8),
        compose_conc_code VARCHAR2(8),
        connect_conc_code VARCHAR2(8),
        landing_conc_code VARCHAR2(8),
        charge_conc_code VARCHAR2(8),
        comm_conc_code VARCHAR2(8),
        display_conc_code VARCHAR2(8),
        in_conc_code VARCHAR2(8),
        elec_conc_code VARCHAR2(8),
        clearance_creepage_conc_code VARCHAR2(8),
        onload_deciliter_conc_code VARCHAR2(8),
        scram_protect_conc_code VARCHAR2(8),
        scram_function_conc_code VARCHAR2(8),
        pwm_conc_code VARCHAR2(8),
        poweroff_conc_code VARCHAR2(8),
        theft_prevent_conc_code VARCHAR2(8),
        contact_conc_code VARCHAR2(8),
        volt_loss_conc_code VARCHAR2(8),
        insulated_resistance_conc_code VARCHAR2(8),
        maxout_power_conc_code VARCHAR2(8),
        current_precision_conc_code VARCHAR2(8),
        volt_precision_conc_code VARCHAR2(8),
        efficiency_conc_code VARCHAR2(8),
        pf_conc_code VARCHAR2(8),
        volt_ripple_conc_code VARCHAR2(8),
        volt_limit_conc_code VARCHAR2(8),
        current_limit_conc_code VARCHAR2(8),
        lowvolt_auxiliary_conc_code VARCHAR2(8),
        standby_power_conc_code VARCHAR2(8),
        power_alloc_conc_code VARCHAR2(8),
        in_overvolt_conc_code VARCHAR2(8),
        in_undervolt_conc_code VARCHAR2(8),
        scp_conc_code VARCHAR2(8),
        leakage_protect_conc_code VARCHAR2(8),
        control_voltlimit_conc_code VARCHAR2(8),
        cp_break_conc_code VARCHAR2(8),
        cp_landing_conc_code VARCHAR2(8),
        out_overcurrent_conc_code VARCHAR2(8),
        disconnect_switch_conc_code VARCHAR2(8),
        ac_protect_landing_conc_code VARCHAR2(8),
        dc_protect_landing_conc_code VARCHAR2(8),
        open_protect_conc_code VARCHAR2(8),
        in_impulsecurrent_conc_code VARCHAR2(8),
        out_impulsecurrent_conc_code VARCHAR2(8),
        battery_reverse_conc_code VARCHAR2(8),
        ac_connect_confirm_conc_code VARCHAR2(8),
        dc_connect_confirm_conc_code VARCHAR2(8),
        selfexam_conc_code VARCHAR2(8),
        charge_ready_conc_code VARCHAR2(8),
        charge_test_conc_code VARCHAR2(8),
        charge_end_conc_code VARCHAR2(8),
        charge_sequence_conc_code VARCHAR2(8),
        precharge_conc_code VARCHAR2(8),
        lock_conc_code VARCHAR2(8),
        plug_lock_conc_code VARCHAR2(8),
        signal_break_conc_code VARCHAR2(8),
        insulate_abnormal_conc_code VARCHAR2(8),
        dcoutput_short_conc_code VARCHAR2(8),
        comm_break_conc_code VARCHAR2(8),
        batteryvolt_over_conc_code VARCHAR2(8),
        batteryvolt_outrange_conc_code VARCHAR2(8),
        battery_dualprotect_conc_code VARCHAR2(8),
        maxvolt_mismatch_conc_code VARCHAR2(8),
        powerup_message_conc_code VARCHAR2(8),
        chargeconfig_meaasge_conc_code VARCHAR2(8),
        charge_meaasge_conc_code VARCHAR2(8),
        chargeend_meaasge_conc_code VARCHAR2(8),
        measurement_error_conc_code VARCHAR2(8),
        indicative_error_conc_code VARCHAR2(8),
        measure_moneyerr_conc_code VARCHAR2(8),
        measure_clockerr_conc_code VARCHAR2(8),
        measure_funcexam_conc_code VARCHAR2(8),
        measure_eventstroage_conc_code VARCHAR2(8),
        measure_datastroage_conc_code VARCHAR2(8),
        measure_receipt_conc_code VARCHAR2(8),
        measure_display_conc_code VARCHAR2(8),
        measure_seal_conc_code VARCHAR2(8),
        measure_uniformity_conc_code VARCHAR2(8),
        temp VARCHAR2(16),
        humidity VARCHAR2(16),
        detect_person VARCHAR2(32),
        audit_person VARCHAR2(32),
        write_date VARCHAR2(32),
        handle_flag VARCHAR2(32),
        handle_date VARCHAR2(32)
        )
        tablespace MPAC_T
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
      dbms_output.put_line('脚本已跳过，因为 T_DETECT_CP_RSLT 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table T_DETECT_CP_RSLT
      is ''充电桩检测综合结论表''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_DETECT_CP_RSLT.DETECT_READ_ID
      is ''检定校准记录标识''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_DETECT_CP_RSLT.DETECT_TASK_NO
      is ''检定任务编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_DETECT_CP_RSLT.SYS_NO
      is ''系统编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_DETECT_CP_RSLT.DETECT_EQUIP_NO
      is ''检定线台编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_DETECT_CP_RSLT.BAR_CODE
      is ''设备条形码''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_DETECT_CP_RSLT.DETECT_DATE
      is ''检定时间''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_DETECT_CP_RSLT.CONC_CODE
      is ''检定总结论''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_DETECT_CP_RSLT.INTUIT_CONC_CODE
      is ''外观检查结论''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_DETECT_CP_RSLT.INSIDE_CONC_CODE
      is ''内部检查结论''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_DETECT_CP_RSLT.WIRE_CONC_CODE
      is ''电缆管理及贮存检查结论''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_DETECT_CP_RSLT.SIGN_CONC_CODE
      is ''标志检查结论''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_DETECT_CP_RSLT.COMPOSE_CONC_CODE
      is ''基本构成检查结论''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_DETECT_CP_RSLT.CONNECT_CONC_CODE
      is ''充电模式和连接方式检查结论''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_DETECT_CP_RSLT.LANDING_CONC_CODE
      is ''接地要求试验结论''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_DETECT_CP_RSLT.CHARGE_CONC_CODE
      is ''充电功能结论''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_DETECT_CP_RSLT.COMM_CONC_CODE
      is ''通信功能试验结论''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_DETECT_CP_RSLT.DISPLAY_CONC_CODE
      is ''显示功能试验结论''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_DETECT_CP_RSLT.IN_CONC_CODE
      is ''输入功能试验结论''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_DETECT_CP_RSLT.ELEC_CONC_CODE
      is ''电击防护试验结论''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_DETECT_CP_RSLT.CLEARANCE_CREEPAGE_CONC_CODE
      is ''电气间隙和爬电距离试验结论''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_DETECT_CP_RSLT.ONLOAD_DECILITER_CONC_CODE
      is ''带载分合电路试验结论''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_DETECT_CP_RSLT.SCRAM_PROTECT_CONC_CODE
      is ''急停保护试验结论''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_DETECT_CP_RSLT.SCRAM_FUNCTION_CONC_CODE
      is ''急停功能结论''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_DETECT_CP_RSLT.PWM_CONC_CODE
      is ''PWM功率调节试验结论''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_DETECT_CP_RSLT.POWEROFF_CONC_CODE
      is ''掉电保存功能试验结论''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_DETECT_CP_RSLT.THEFT_PREVENT_CONC_CODE
      is ''防盗保护试验结论''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_DETECT_CP_RSLT.CONTACT_CONC_CODE
      is ''直接接触防护试验结论''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_DETECT_CP_RSLT.VOLT_LOSS_CONC_CODE
      is ''供电电压消失试验结论''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_DETECT_CP_RSLT.INSULATED_RESISTANCE_CONC_CODE
      is ''绝缘电阻试验结论''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_DETECT_CP_RSLT.MAXOUT_POWER_CONC_CODE
      is ''最大恒功率输出试验结论''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_DETECT_CP_RSLT.CURRENT_PRECISION_CONC_CODE
      is ''稳流精度试验结论''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_DETECT_CP_RSLT.VOLT_PRECISION_CONC_CODE
      is ''稳压精度试验结论''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_DETECT_CP_RSLT.EFFICIENCY_CONC_CODE
      is ''效率试验结论''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_DETECT_CP_RSLT.PF_CONC_CODE
      is ''功率因数试验结论''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_DETECT_CP_RSLT.VOLT_RIPPLE_CONC_CODE
      is ''电压纹波因数试验结论''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_DETECT_CP_RSLT.VOLT_LIMIT_CONC_CODE
      is ''限压特性试验结论''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_DETECT_CP_RSLT.CURRENT_LIMIT_CONC_CODE
      is ''限流特性试验结论''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_DETECT_CP_RSLT.LOWVOLT_AUXILIARY_CONC_CODE
      is ''低压辅助电源试验结论''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_DETECT_CP_RSLT.STANDBY_POWER_CONC_CODE
      is ''待机功耗试验结论''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_DETECT_CP_RSLT.POWER_ALLOC_CONC_CODE
      is ''动态功率分配功能试验结论''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_DETECT_CP_RSLT.IN_OVERVOLT_CONC_CODE
      is ''输入过压保护试验结论''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_DETECT_CP_RSLT.IN_UNDERVOLT_CONC_CODE
      is ''输入欠压保护试验结论''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_DETECT_CP_RSLT.SCP_CONC_CODE
      is ''输出短路保护试验结论''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_DETECT_CP_RSLT.LEAKAGE_PROTECT_CONC_CODE
      is ''漏电保护试验结论''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_DETECT_CP_RSLT.CONTROL_VOLTLIMIT_CONC_CODE
      is ''控制导引电压限值测试结论''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_DETECT_CP_RSLT.CP_BREAK_CONC_CODE
      is ''CP断线测试结论''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_DETECT_CP_RSLT.CP_LANDING_CONC_CODE
      is ''CP接地测试结论''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_DETECT_CP_RSLT.OUT_OVERCURRENT_CONC_CODE
      is ''输出过流保护试验结论''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_DETECT_CP_RSLT.DISCONNECT_SWITCH_CONC_CODE
      is ''断开开关S2试验结论''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_DETECT_CP_RSLT.AC_PROTECT_LANDING_CONC_CODE
      is ''保护接地连续性测试结论（交流）''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_DETECT_CP_RSLT.DC_PROTECT_LANDING_CONC_CODE
      is ''保护接地连续性测试结论（直流）''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_DETECT_CP_RSLT.OPEN_PROTECT_CONC_CODE
      is ''开门保护试验结论''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_DETECT_CP_RSLT.IN_IMPULSECURRENT_CONC_CODE
      is ''输入冲击电流试验结论''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_DETECT_CP_RSLT.OUT_IMPULSECURRENT_CONC_CODE
      is ''输出冲击电流试验结论''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_DETECT_CP_RSLT.BATTERY_REVERSE_CONC_CODE
      is ''蓄电池反接试验结论''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_DETECT_CP_RSLT.AC_CONNECT_CONFIRM_CONC_CODE
      is ''连接确认测试结论（交流）''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_DETECT_CP_RSLT.DC_CONNECT_CONFIRM_CONC_CODE
      is ''连接确认测试结论（直流）''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_DETECT_CP_RSLT.SELFEXAM_CONC_CODE
      is ''自检阶段测试结论''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_DETECT_CP_RSLT.CHARGE_READY_CONC_CODE
      is ''充电准备就绪测试结论''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_DETECT_CP_RSLT.CHARGE_TEST_CONC_CODE
      is ''充电阶段测试结论''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_DETECT_CP_RSLT.CHARGE_END_CONC_CODE
      is ''正常充电结束测试''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_DETECT_CP_RSLT.CHARGE_SEQUENCE_CONC_CODE
      is ''充电连接控制时序测试结论''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_DETECT_CP_RSLT.PRECHARGE_CONC_CODE
      is ''预充电功能试验结论''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_DETECT_CP_RSLT.LOCK_CONC_CODE
      is ''锁止功能试验结论''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_DETECT_CP_RSLT.PLUG_LOCK_CONC_CODE
      is ''充电插头锁止功能测试结论''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_DETECT_CP_RSLT.SIGNAL_BREAK_CONC_CODE
      is ''连接检测信号断开试验结论''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_DETECT_CP_RSLT.INSULATE_ABNORMAL_CONC_CODE
      is ''绝缘异常试验结论''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_DETECT_CP_RSLT.DCOUTPUT_SHORT_CONC_CODE
      is ''直流输出回路短路检测功能试验结论''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_DETECT_CP_RSLT.COMM_BREAK_CONC_CODE
      is ''通信中断试验结论''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_DETECT_CP_RSLT.BATTERYVOLT_OVER_CONC_CODE
      is ''蓄电池电压大于通信报文电压值试验结论''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_DETECT_CP_RSLT.BATTERYVOLT_OUTRANGE_CONC_CODE
      is ''蓄电池电压超出充电机范围试验结论''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_DETECT_CP_RSLT.BATTERY_DUALPROTECT_CONC_CODE
      is ''蓄电池二重保护功能试验结论''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_DETECT_CP_RSLT.MAXVOLT_MISMATCH_CONC_CODE
      is ''车辆最高允许充电总电压不匹配试验结论''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_DETECT_CP_RSLT.POWERUP_MESSAGE_CONC_CODE
      is ''低压辅助上电及充电握手阶段报文测试结论''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_DETECT_CP_RSLT.CHARGECONFIG_MEAASGE_CONC_CODE
      is ''充电配置阶段报文测试结论''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_DETECT_CP_RSLT.CHARGE_MEAASGE_CONC_CODE
      is ''充电阶段报文测试结论''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_DETECT_CP_RSLT.CHARGEEND_MEAASGE_CONC_CODE
      is ''充电结束阶段报文测试结论''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_DETECT_CP_RSLT.MEASUREMENT_ERROR_CONC_CODE
      is ''计量工作误差结论''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_DETECT_CP_RSLT.INDICATIVE_ERROR_CONC_CODE
      is ''计量示值误差结论''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_DETECT_CP_RSLT.MEASURE_MONEYERR_CONC_CODE
      is ''计量付费金额误差结论''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_DETECT_CP_RSLT.MEASURE_CLOCKERR_CONC_CODE
      is ''计量时钟误差结论''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_DETECT_CP_RSLT.MEASURE_FUNCEXAM_CONC_CODE
      is ''计量功能检查结论''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_DETECT_CP_RSLT.MEASURE_EVENTSTROAGE_CONC_CODE
      is ''计量事件存储结论''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_DETECT_CP_RSLT.MEASURE_DATASTROAGE_CONC_CODE
      is ''计量数据存储结论''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_DETECT_CP_RSLT.MEASURE_RECEIPT_CONC_CODE
      is ''计量回执结论''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_DETECT_CP_RSLT.MEASURE_DISPLAY_CONC_CODE
      is ''计量显示结论''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_DETECT_CP_RSLT.MEASURE_SEAL_CONC_CODE
      is ''计量封印结论''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_DETECT_CP_RSLT.MEASURE_UNIFORMITY_CONC_CODE
      is ''计量一致性结论''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_DETECT_CP_RSLT.TEMP
      is ''温度''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_DETECT_CP_RSLT.HUMIDITY
      is ''湿度''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_DETECT_CP_RSLT.DETECT_PERSON
      is ''检定人员''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_DETECT_CP_RSLT.AUDIT_PERSON
      is ''审核人员''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_DETECT_CP_RSLT.WRITE_DATE
      is ''检定系统写入时间''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_DETECT_CP_RSLT.HANDLE_FLAG
      is ''平台处理标记''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_DETECT_CP_RSLT.HANDLE_DATE
      is ''平台处理时间''
    ';
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_INDEXES U WHERE u.INDEX_NAME = 'PK_T_DETECT_CP_RSLT';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table T_DETECT_CP_RSLT
      add constraint PK_T_DETECT_CP_RSLT primary key (DETECT_READ_ID)
      using index
      tablespace MPAC_T_IDX
      pctfree 10
      initrans 2
      maxtrans 255
      storage
      (
      initial 64K
      next 1M
      minextents 1
      maxextents unlimited
      )
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 PK_T_DETECT_CP_RSLT 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Sequences U WHERE u.sequence_name = 'SEQ_T_DETECT_CP_RSLT';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      create sequence SEQ_T_DETECT_CP_RSLT
      minvalue 1
      maxvalue 9999999999999999
      start with 8200000000000000
      increment by 1
      cache 20
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 SEQ_T_DETECT_CP_RSLT 已存在。');
    END IF;
END;
/
prompt
prompt 正在处理纪录编号为 8200000000017982 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Tables U WHERE U.TABLE_NAME = 'T_INTUIT_CP_CONC';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
        create table T_INTUIT_CP_CONC
        (
        read_id NUMBER(16) not null,
        detect_task_no VARCHAR2(32),
        equip_categ VARCHAR2(8),
        sys_no VARCHAR2(16),
        detect_equip_no VARCHAR2(32),
        detect_unit_no VARCHAR2(32),
        bar_code VARCHAR2(32),
        detect_date VARCHAR2(32),
        para_index VARCHAR2(32),
        detect_item_point VARCHAR2(8),
        is_valid VARCHAR2(8),
        detect_content VARCHAR2(8),
        conc_code VARCHAR2(8),
        write_date DATE,
        handle_flag VARCHAR2(8),
        handle_date DATE
        )
        tablespace MPAC_T
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
      dbms_output.put_line('脚本已跳过，因为 T_INTUIT_CP_CONC 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table T_INTUIT_CP_CONC
      is ''充电桩外观检查结论表''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_INTUIT_CP_CONC.READ_ID
      is ''字段唯一标识''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_INTUIT_CP_CONC.DETECT_TASK_NO
      is ''检定任务编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_INTUIT_CP_CONC.EQUIP_CATEG
      is ''设备类别''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_INTUIT_CP_CONC.SYS_NO
      is ''系统编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_INTUIT_CP_CONC.DETECT_EQUIP_NO
      is ''检定线台编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_INTUIT_CP_CONC.DETECT_UNIT_NO
      is ''检定单元编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_INTUIT_CP_CONC.BAR_CODE
      is ''设备条形码''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_INTUIT_CP_CONC.DETECT_DATE
      is ''检定时间''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_INTUIT_CP_CONC.PARA_INDEX
      is ''检定序号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_INTUIT_CP_CONC.DETECT_ITEM_POINT
      is ''检定点序号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_INTUIT_CP_CONC.IS_VALID
      is ''有效标志''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_INTUIT_CP_CONC.DETECT_CONTENT
      is ''测试项目 VW_CP_CONC_CODE''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_INTUIT_CP_CONC.CONC_CODE
      is ''检查结论''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_INTUIT_CP_CONC.WRITE_DATE
      is ''检定系统写入时间''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_INTUIT_CP_CONC.HANDLE_FLAG
      is ''处理标记''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_INTUIT_CP_CONC.HANDLE_DATE
      is ''处理时间''
    ';
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_INDEXES U WHERE u.INDEX_NAME = 'PK_T_INTUIT_CP_CONC';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table T_INTUIT_CP_CONC
      add constraint PK_T_INTUIT_CP_CONC primary key (READ_ID)
      using index
      tablespace MPAC_T_IDX
      pctfree 10
      initrans 2
      maxtrans 255
      storage
      (
      initial 64K
      next 1M
      minextents 1
      maxextents unlimited
      )
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 PK_T_INTUIT_CP_CONC 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Sequences U WHERE u.sequence_name = 'SEQ_T_INTUIT_CP_CONC';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      create sequence SEQ_T_INTUIT_CP_CONC
      minvalue 1
      maxvalue 9999999999999999
      start with 8200000000000000
      increment by 1
      cache 20
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 SEQ_T_INTUIT_CP_CONC 已存在。');
    END IF;
END;
/
prompt
prompt 正在处理纪录编号为 8200000000017984 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Tables U WHERE U.TABLE_NAME = 'T_INSIDE_CP_CONC';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
        create table T_INSIDE_CP_CONC
        (
        read_id NUMBER(16) not null,
        detect_task_no VARCHAR2(32),
        equip_categ VARCHAR2(8),
        sys_no VARCHAR2(16),
        detect_equip_no VARCHAR2(32),
        detect_unit_no VARCHAR2(32),
        bar_code VARCHAR2(32),
        detect_date VARCHAR2(32),
        para_index VARCHAR2(32),
        detect_item_point VARCHAR2(8),
        is_valid VARCHAR2(8),
        detect_content VARCHAR2(8),
        conc_code VARCHAR2(8),
        write_date DATE,
        handle_flag VARCHAR2(8),
        handle_date DATE
        )
        tablespace MPAC_T
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
      dbms_output.put_line('脚本已跳过，因为 T_INSIDE_CP_CONC 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table T_INSIDE_CP_CONC
      is ''充电桩内部检查结论表''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_INSIDE_CP_CONC.READ_ID
      is ''字段唯一标识''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_INSIDE_CP_CONC.DETECT_TASK_NO
      is ''检定任务编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_INSIDE_CP_CONC.EQUIP_CATEG
      is ''设备类别''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_INSIDE_CP_CONC.SYS_NO
      is ''系统编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_INSIDE_CP_CONC.DETECT_EQUIP_NO
      is ''检定线台编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_INSIDE_CP_CONC.DETECT_UNIT_NO
      is ''检定单元编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_INSIDE_CP_CONC.BAR_CODE
      is ''设备条形码''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_INSIDE_CP_CONC.DETECT_DATE
      is ''检定时间''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_INSIDE_CP_CONC.PARA_INDEX
      is ''检定序号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_INSIDE_CP_CONC.DETECT_ITEM_POINT
      is ''检定点序号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_INSIDE_CP_CONC.IS_VALID
      is ''有效标志''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_INSIDE_CP_CONC.DETECT_CONTENT
      is ''测试项目 VW_INSIDE_CONC_CODE''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_INSIDE_CP_CONC.CONC_CODE
      is ''检查结论''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_INSIDE_CP_CONC.WRITE_DATE
      is ''检定系统写入时间''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_INSIDE_CP_CONC.HANDLE_FLAG
      is ''处理标记''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_INSIDE_CP_CONC.HANDLE_DATE
      is ''处理时间''
    ';
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_INDEXES U WHERE u.INDEX_NAME = 'PK_T_INSIDE_CP_CONC';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table T_INSIDE_CP_CONC
      add constraint PK_T_INSIDE_CP_CONC primary key (READ_ID)
      using index
      tablespace MPAC_T_IDX
      pctfree 10
      initrans 2
      maxtrans 255
      storage
      (
      initial 64K
      next 1M
      minextents 1
      maxextents unlimited
      )
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 PK_T_INSIDE_CP_CONC 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Sequences U WHERE u.sequence_name = 'SEQ_T_INSIDE_CP_CONC';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      create sequence SEQ_T_INSIDE_CP_CONC
      minvalue 1
      maxvalue 9999999999999999
      start with 8200000000000000
      increment by 1
      cache 20
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 SEQ_T_INSIDE_CP_CONC 已存在。');
    END IF;
END;
/
prompt
prompt 正在处理纪录编号为 8200000000017986 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    EXECUTE IMMEDIATE
    '
      create or replace synonym M_D_CHARGE_POINT
      for M_D_CHARGE_POINT@SXYKGG
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000017989 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Tables U WHERE U.TABLE_NAME = 'T_WIRE_CP_CONC';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
        create table T_WIRE_CP_CONC
        (
        read_id NUMBER(16) not null,
        detect_task_no VARCHAR2(32),
        equip_categ VARCHAR2(8),
        sys_no VARCHAR2(16),
        detect_equip_no VARCHAR2(32),
        detect_unit_no VARCHAR2(32),
        bar_code VARCHAR2(32),
        detect_date VARCHAR2(32),
        para_index VARCHAR2(32),
        detect_item_point VARCHAR2(8),
        is_valid VARCHAR2(8),
        detect_content VARCHAR2(8),
        conc_code VARCHAR2(8),
        write_date DATE,
        handle_flag VARCHAR2(8),
        handle_date DATE
        )
        tablespace MPAC_T
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
      dbms_output.put_line('脚本已跳过，因为 T_WIRE_CP_CONC 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table T_WIRE_CP_CONC
      is ''充电桩电缆管理及贮存检查结论表''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_WIRE_CP_CONC.READ_ID
      is ''字段唯一标识''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_WIRE_CP_CONC.DETECT_TASK_NO
      is ''检定任务编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_WIRE_CP_CONC.EQUIP_CATEG
      is ''设备类别''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_WIRE_CP_CONC.SYS_NO
      is ''系统编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_WIRE_CP_CONC.DETECT_EQUIP_NO
      is ''检定线台编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_WIRE_CP_CONC.DETECT_UNIT_NO
      is ''检定单元编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_WIRE_CP_CONC.BAR_CODE
      is ''设备条形码''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_WIRE_CP_CONC.DETECT_DATE
      is ''检定时间''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_WIRE_CP_CONC.PARA_INDEX
      is ''检定序号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_WIRE_CP_CONC.DETECT_ITEM_POINT
      is ''检定点序号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_WIRE_CP_CONC.IS_VALID
      is ''有效标志''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_WIRE_CP_CONC.DETECT_CONTENT
      is ''测试项目 VW_WIRE_CONC_CODE''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_WIRE_CP_CONC.CONC_CODE
      is ''检查结论''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_WIRE_CP_CONC.WRITE_DATE
      is ''检定系统写入时间''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_WIRE_CP_CONC.HANDLE_FLAG
      is ''处理标记''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_WIRE_CP_CONC.HANDLE_DATE
      is ''处理时间''
    ';
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_INDEXES U WHERE u.INDEX_NAME = 'PK_T_WIRE_CP_CONC';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table T_WIRE_CP_CONC
      add constraint PK_T_WIRE_CP_CONC primary key (READ_ID)
      using index
      tablespace MPAC_T_IDX
      pctfree 10
      initrans 2
      maxtrans 255
      storage
      (
      initial 64K
      next 1M
      minextents 1
      maxextents unlimited
      )
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 PK_T_WIRE_CP_CONC 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Sequences U WHERE u.sequence_name = 'SEQ_T_WIRE_CP_CONC';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      create sequence SEQ_T_WIRE_CP_CONC
      minvalue 1
      maxvalue 9999999999999999
      start with 8200000000000000
      increment by 1
      cache 20
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 SEQ_T_WIRE_CP_CONC 已存在。');
    END IF;
END;
/
prompt
prompt 正在处理纪录编号为 8200000000017991 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Tables U WHERE U.TABLE_NAME = 'T_SIGN_CP_CONC';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
        create table T_SIGN_CP_CONC
        (
        read_id NUMBER(16) not null,
        detect_task_no VARCHAR2(32),
        equip_categ VARCHAR2(8),
        sys_no VARCHAR2(16),
        detect_equip_no VARCHAR2(32),
        detect_unit_no VARCHAR2(32),
        bar_code VARCHAR2(32),
        detect_date VARCHAR2(32),
        para_index VARCHAR2(32),
        detect_item_point VARCHAR2(8),
        is_valid VARCHAR2(8),
        detect_content VARCHAR2(8),
        conc_code VARCHAR2(8),
        write_date DATE,
        handle_flag VARCHAR2(8),
        handle_date DATE
        )
        tablespace MPAC_T
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
      dbms_output.put_line('脚本已跳过，因为 T_SIGN_CP_CONC 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table T_SIGN_CP_CONC
      is ''充电桩标志检查结论表''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_SIGN_CP_CONC.READ_ID
      is ''字段唯一标识''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_SIGN_CP_CONC.DETECT_TASK_NO
      is ''检定任务编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_SIGN_CP_CONC.EQUIP_CATEG
      is ''设备类别''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_SIGN_CP_CONC.SYS_NO
      is ''系统编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_SIGN_CP_CONC.DETECT_EQUIP_NO
      is ''检定线台编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_SIGN_CP_CONC.DETECT_UNIT_NO
      is ''检定单元编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_SIGN_CP_CONC.BAR_CODE
      is ''设备条形码''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_SIGN_CP_CONC.DETECT_DATE
      is ''检定时间''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_SIGN_CP_CONC.PARA_INDEX
      is ''检定序号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_SIGN_CP_CONC.DETECT_ITEM_POINT
      is ''检定点序号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_SIGN_CP_CONC.IS_VALID
      is ''有效标志''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_SIGN_CP_CONC.DETECT_CONTENT
      is ''测试项目 VW_SIGN_CONC_CODE''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_SIGN_CP_CONC.CONC_CODE
      is ''检查结论''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_SIGN_CP_CONC.WRITE_DATE
      is ''检定系统写入时间''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_SIGN_CP_CONC.HANDLE_FLAG
      is ''处理标记''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_SIGN_CP_CONC.HANDLE_DATE
      is ''处理时间''
    ';
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_INDEXES U WHERE u.INDEX_NAME = 'PK_T_SIGN_CP_CONC';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table T_SIGN_CP_CONC
      add constraint PK_T_SIGN_CP_CONC primary key (READ_ID)
      using index
      tablespace MPAC_T_IDX
      pctfree 10
      initrans 2
      maxtrans 255
      storage
      (
      initial 64K
      next 1M
      minextents 1
      maxextents unlimited
      )
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 PK_T_SIGN_CP_CONC 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Sequences U WHERE u.sequence_name = 'SEQ_T_SIGN_CP_CONC';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      create sequence SEQ_T_SIGN_CP_CONC
      minvalue 1
      maxvalue 9999999999999999
      start with 8200000000000000
      increment by 1
      cache 20
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 SEQ_T_SIGN_CP_CONC 已存在。');
    END IF;
END;
/
prompt
prompt 正在处理纪录编号为 8200000000017996 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Tables U WHERE U.TABLE_NAME = 'T_COMPOSE_CP_CONC';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
        create table T_COMPOSE_CP_CONC
        (
        read_id NUMBER(16) not null,
        detect_task_no VARCHAR2(32),
        equip_categ VARCHAR2(8),
        sys_no VARCHAR2(16),
        detect_equip_no VARCHAR2(32),
        detect_unit_no VARCHAR2(32),
        bar_code VARCHAR2(32),
        detect_date VARCHAR2(32),
        para_index VARCHAR2(32),
        detect_item_point VARCHAR2(8),
        is_valid VARCHAR2(8),
        detect_content VARCHAR2(8),
        conc_code VARCHAR2(8),
        write_date DATE,
        handle_flag VARCHAR2(8),
        handle_date DATE
        )
        tablespace MPAC_T
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
      dbms_output.put_line('脚本已跳过，因为 T_COMPOSE_CP_CONC 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table T_COMPOSE_CP_CONC
      is ''充电桩基本构成检查结论表''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_COMPOSE_CP_CONC.READ_ID
      is ''字段唯一标识''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_COMPOSE_CP_CONC.DETECT_TASK_NO
      is ''检定任务编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_COMPOSE_CP_CONC.EQUIP_CATEG
      is ''设备类别''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_COMPOSE_CP_CONC.SYS_NO
      is ''系统编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_COMPOSE_CP_CONC.DETECT_EQUIP_NO
      is ''检定线台编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_COMPOSE_CP_CONC.DETECT_UNIT_NO
      is ''检定单元编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_COMPOSE_CP_CONC.BAR_CODE
      is ''设备条形码''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_COMPOSE_CP_CONC.DETECT_DATE
      is ''检定时间''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_COMPOSE_CP_CONC.PARA_INDEX
      is ''检定序号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_COMPOSE_CP_CONC.DETECT_ITEM_POINT
      is ''检定点序号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_COMPOSE_CP_CONC.IS_VALID
      is ''有效标志''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_COMPOSE_CP_CONC.DETECT_CONTENT
      is ''测试项目 VW_COMPOSE_CONC_CODE''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_COMPOSE_CP_CONC.CONC_CODE
      is ''检查结论''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_COMPOSE_CP_CONC.WRITE_DATE
      is ''检定系统写入时间''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_COMPOSE_CP_CONC.HANDLE_FLAG
      is ''处理标记''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_COMPOSE_CP_CONC.HANDLE_DATE
      is ''处理时间''
    ';
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_INDEXES U WHERE u.INDEX_NAME = 'PK_T_COMPOSE_CP_CONC';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table T_COMPOSE_CP_CONC
      add constraint PK_T_COMPOSE_CP_CONC primary key (READ_ID)
      using index
      tablespace MPAC_T_IDX
      pctfree 10
      initrans 2
      maxtrans 255
      storage
      (
      initial 64K
      next 1M
      minextents 1
      maxextents unlimited
      )
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 PK_T_COMPOSE_CP_CONC 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Sequences U WHERE u.sequence_name = 'SEQ_T_COMPOSE_CP_CONC';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      create sequence SEQ_T_COMPOSE_CP_CONC
      minvalue 1
      maxvalue 9999999999999999
      start with 8200000000000000
      increment by 1
      cache 20
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 SEQ_T_COMPOSE_CP_CONC 已存在。');
    END IF;
END;
/
prompt
prompt 正在处理纪录编号为 8200000000017998 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Tables U WHERE U.TABLE_NAME = 'T_CONNECT_CP_CONC';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
        create table T_CONNECT_CP_CONC
        (
        read_id NUMBER(16) not null,
        detect_task_no VARCHAR2(32),
        equip_categ VARCHAR2(8),
        sys_no VARCHAR2(16),
        detect_equip_no VARCHAR2(32),
        detect_unit_no VARCHAR2(32),
        bar_code VARCHAR2(32),
        detect_date VARCHAR2(32),
        para_index VARCHAR2(32),
        detect_item_point VARCHAR2(8),
        is_valid VARCHAR2(8),
        detect_content VARCHAR2(8),
        conc_code VARCHAR2(8),
        write_date DATE,
        handle_flag VARCHAR2(8),
        handle_date DATE
        )
        tablespace MPAC_T
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
      dbms_output.put_line('脚本已跳过，因为 T_CONNECT_CP_CONC 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table T_CONNECT_CP_CONC
      is ''充电桩充电模式和连接方式检查结论表''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_CONNECT_CP_CONC.READ_ID
      is ''字段唯一标识''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_CONNECT_CP_CONC.DETECT_TASK_NO
      is ''检定任务编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_CONNECT_CP_CONC.EQUIP_CATEG
      is ''设备类别''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_CONNECT_CP_CONC.SYS_NO
      is ''系统编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_CONNECT_CP_CONC.DETECT_EQUIP_NO
      is ''检定线台编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_CONNECT_CP_CONC.DETECT_UNIT_NO
      is ''检定单元编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_CONNECT_CP_CONC.BAR_CODE
      is ''设备条形码''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_CONNECT_CP_CONC.DETECT_DATE
      is ''检定时间''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_CONNECT_CP_CONC.PARA_INDEX
      is ''检定序号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_CONNECT_CP_CONC.DETECT_ITEM_POINT
      is ''检定点序号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_CONNECT_CP_CONC.IS_VALID
      is ''有效标志''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_CONNECT_CP_CONC.DETECT_CONTENT
      is ''测试项目 VW_CONNECT_CONC_CODE''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_CONNECT_CP_CONC.CONC_CODE
      is ''检查结论''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_CONNECT_CP_CONC.WRITE_DATE
      is ''检定系统写入时间''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_CONNECT_CP_CONC.HANDLE_FLAG
      is ''处理标记''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_CONNECT_CP_CONC.HANDLE_DATE
      is ''处理时间''
    ';
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_INDEXES U WHERE u.INDEX_NAME = 'PK_T_CONNECT_CP_CONC';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table T_CONNECT_CP_CONC
      add constraint PK_T_CONNECT_CP_CONC primary key (READ_ID)
      using index
      tablespace MPAC_T_IDX
      pctfree 10
      initrans 2
      maxtrans 255
      storage
      (
      initial 64K
      next 1M
      minextents 1
      maxextents unlimited
      )
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 PK_T_CONNECT_CP_CONC 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Sequences U WHERE u.sequence_name = 'SEQ_T_CONNECT_CP_CONC';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      create sequence SEQ_T_CONNECT_CP_CONC
      minvalue 1
      maxvalue 9999999999999999
      start with 8200000000000000
      increment by 1
      cache 20
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 SEQ_T_CONNECT_CP_CONC 已存在。');
    END IF;
END;
/
prompt
prompt 正在处理纪录编号为 8200000000017999 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Tables U WHERE U.TABLE_NAME = 'T_DISPLAY_CP_CONC';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
        create table T_DISPLAY_CP_CONC
        (
        read_id NUMBER(16) not null,
        detect_task_no VARCHAR2(32),
        equip_categ VARCHAR2(8),
        sys_no VARCHAR2(16),
        detect_equip_no VARCHAR2(32),
        detect_unit_no VARCHAR2(32),
        bar_code VARCHAR2(32),
        detect_date VARCHAR2(32),
        para_index VARCHAR2(32),
        detect_item_point VARCHAR2(8),
        is_valid VARCHAR2(8),
        detect_content VARCHAR2(8),
        conc_code VARCHAR2(8),
        write_date DATE,
        handle_flag VARCHAR2(8),
        handle_date DATE
        )
        tablespace MPAC_T
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
      dbms_output.put_line('脚本已跳过，因为 T_DISPLAY_CP_CONC 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table T_DISPLAY_CP_CONC
      is ''充电桩显示功能检查结论表''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_DISPLAY_CP_CONC.READ_ID
      is ''字段唯一标识''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_DISPLAY_CP_CONC.DETECT_TASK_NO
      is ''检定任务编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_DISPLAY_CP_CONC.EQUIP_CATEG
      is ''设备类别''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_DISPLAY_CP_CONC.SYS_NO
      is ''系统编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_DISPLAY_CP_CONC.DETECT_EQUIP_NO
      is ''检定线台编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_DISPLAY_CP_CONC.DETECT_UNIT_NO
      is ''检定单元编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_DISPLAY_CP_CONC.BAR_CODE
      is ''设备条形码''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_DISPLAY_CP_CONC.DETECT_DATE
      is ''检定时间''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_DISPLAY_CP_CONC.PARA_INDEX
      is ''检定序号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_DISPLAY_CP_CONC.DETECT_ITEM_POINT
      is ''检定点序号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_DISPLAY_CP_CONC.IS_VALID
      is ''有效标志''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_DISPLAY_CP_CONC.DETECT_CONTENT
      is ''测试项目 VW_DISPLAY_CONC_CODE''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_DISPLAY_CP_CONC.CONC_CODE
      is ''检查结论''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_DISPLAY_CP_CONC.WRITE_DATE
      is ''检定系统写入时间''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_DISPLAY_CP_CONC.HANDLE_FLAG
      is ''处理标记''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_DISPLAY_CP_CONC.HANDLE_DATE
      is ''处理时间''
    ';
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_INDEXES U WHERE u.INDEX_NAME = 'PK_T_DISPLAY_CP_CONC';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table T_DISPLAY_CP_CONC
      add constraint PK_T_DISPLAY_CP_CONC primary key (READ_ID)
      using index
      tablespace MPAC_T_IDX
      pctfree 10
      initrans 2
      maxtrans 255
      storage
      (
      initial 64K
      next 1M
      minextents 1
      maxextents unlimited
      )
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 PK_T_DISPLAY_CP_CONC 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Sequences U WHERE u.sequence_name = 'SEQ_T_DISPLAY_CP_CONC';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      create sequence SEQ_T_DISPLAY_CP_CONC
      minvalue 1
      maxvalue 9999999999999999
      start with 8200000000000000
      increment by 1
      cache 20
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 SEQ_T_DISPLAY_CP_CONC 已存在。');
    END IF;
END;
/
prompt
prompt 正在处理纪录编号为 8200000000018002 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Tables U WHERE U.TABLE_NAME = 'T_IN_CP_CONC';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
        create table T_IN_CP_CONC
        (
        read_id NUMBER(16) not null,
        detect_task_no VARCHAR2(32),
        equip_categ VARCHAR2(8),
        sys_no VARCHAR2(16),
        detect_equip_no VARCHAR2(32),
        detect_unit_no VARCHAR2(32),
        bar_code VARCHAR2(32),
        detect_date VARCHAR2(32),
        port_code VARCHAR2(16),
        para_index VARCHAR2(32),
        detect_item_point VARCHAR2(8),
        is_valid VARCHAR2(8),
        detect_content VARCHAR2(8),
        conc_code VARCHAR2(8),
        write_date DATE,
        handle_flag VARCHAR2(8),
        handle_date DATE
        )
        tablespace MPAC_T
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
      dbms_output.put_line('脚本已跳过，因为 T_IN_CP_CONC 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table T_IN_CP_CONC
      is ''充电桩输入功能试验结论表''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_IN_CP_CONC.READ_ID
      is ''字段唯一标识''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_IN_CP_CONC.DETECT_TASK_NO
      is ''检定任务编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_IN_CP_CONC.EQUIP_CATEG
      is ''设备类别''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_IN_CP_CONC.SYS_NO
      is ''系统编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_IN_CP_CONC.DETECT_EQUIP_NO
      is ''检定线台编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_IN_CP_CONC.DETECT_UNIT_NO
      is ''检定单元编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_IN_CP_CONC.BAR_CODE
      is ''设备条形码''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_IN_CP_CONC.DETECT_DATE
      is ''检定时间''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_IN_CP_CONC.PORT_CODE
      is ''枪口编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_IN_CP_CONC.PARA_INDEX
      is ''检定序号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_IN_CP_CONC.DETECT_ITEM_POINT
      is ''检定点序号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_IN_CP_CONC.IS_VALID
      is ''有效标志''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_IN_CP_CONC.DETECT_CONTENT
      is ''测试项目 VW_IN_CONC_CODE''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_IN_CP_CONC.CONC_CODE
      is ''检查结论''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_IN_CP_CONC.WRITE_DATE
      is ''检定系统写入时间''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_IN_CP_CONC.HANDLE_FLAG
      is ''处理标记''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_IN_CP_CONC.HANDLE_DATE
      is ''处理时间''
    ';
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_INDEXES U WHERE u.INDEX_NAME = 'PK_T_IN_CP_CONC';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table T_IN_CP_CONC
      add constraint PK_T_IN_CP_CONC primary key (READ_ID)
      using index
      tablespace MPAC_T_IDX
      pctfree 10
      initrans 2
      maxtrans 255
      storage
      (
      initial 64K
      next 1M
      minextents 1
      maxextents unlimited
      )
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 PK_T_IN_CP_CONC 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Sequences U WHERE u.sequence_name = 'SEQ_T_IN_CP_CONC';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      create sequence SEQ_T_IN_CP_CONC
      minvalue 1
      maxvalue 9999999999999999
      start with 8200000000000000
      increment by 1
      cache 20
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 SEQ_T_IN_CP_CONC 已存在。');
    END IF;
END;
/
prompt
prompt 正在处理纪录编号为 8200000000018003 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Tables U WHERE U.TABLE_NAME = 'T_LANDING_CP_CONC';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
        create table T_LANDING_CP_CONC
        (
        read_id NUMBER(16) not null,
        detect_task_no VARCHAR2(32),
        equip_categ VARCHAR2(8),
        sys_no VARCHAR2(16),
        detect_equip_no VARCHAR2(32),
        detect_unit_no VARCHAR2(32),
        bar_code VARCHAR2(32),
        detect_date VARCHAR2(32),
        para_index VARCHAR2(32),
        detect_item_point VARCHAR2(8),
        is_valid VARCHAR2(8),
        detect_content VARCHAR2(8),
        conc_code VARCHAR2(8),
        write_date DATE,
        handle_flag VARCHAR2(8),
        handle_date DATE
        )
        tablespace MPAC_T
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
      dbms_output.put_line('脚本已跳过，因为 T_LANDING_CP_CONC 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table T_LANDING_CP_CONC
      is ''充电桩接地要求试验结论表''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_LANDING_CP_CONC.READ_ID
      is ''字段唯一标识''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_LANDING_CP_CONC.DETECT_TASK_NO
      is ''检定任务编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_LANDING_CP_CONC.EQUIP_CATEG
      is ''设备类别''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_LANDING_CP_CONC.SYS_NO
      is ''系统编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_LANDING_CP_CONC.DETECT_EQUIP_NO
      is ''检定线台编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_LANDING_CP_CONC.DETECT_UNIT_NO
      is ''检定单元编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_LANDING_CP_CONC.BAR_CODE
      is ''设备条形码''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_LANDING_CP_CONC.DETECT_DATE
      is ''检定时间''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_LANDING_CP_CONC.PARA_INDEX
      is ''检定序号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_LANDING_CP_CONC.DETECT_ITEM_POINT
      is ''检定点序号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_LANDING_CP_CONC.IS_VALID
      is ''有效标志''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_LANDING_CP_CONC.DETECT_CONTENT
      is ''测试项目 VW_LANDING_CONC_CODE''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_LANDING_CP_CONC.CONC_CODE
      is ''检查结论''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_LANDING_CP_CONC.WRITE_DATE
      is ''检定系统写入时间''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_LANDING_CP_CONC.HANDLE_FLAG
      is ''处理标记''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_LANDING_CP_CONC.HANDLE_DATE
      is ''处理时间''
    ';
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_INDEXES U WHERE u.INDEX_NAME = 'PK_T_LANDING_CP_CONC';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table T_LANDING_CP_CONC
      add constraint PK_T_LANDING_CP_CONC primary key (READ_ID)
      using index
      tablespace MPAC_T_IDX
      pctfree 10
      initrans 2
      maxtrans 255
      storage
      (
      initial 64K
      next 1M
      minextents 1
      maxextents unlimited
      )
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 PK_T_LANDING_CP_CONC 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Sequences U WHERE u.sequence_name = 'SEQ_T_LANDING_CP_CONC';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      create sequence SEQ_T_LANDING_CP_CONC
      minvalue 1
      maxvalue 9999999999999999
      start with 8200000000000000
      increment by 1
      cache 20
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 SEQ_T_LANDING_CP_CONC 已存在。');
    END IF;
END;
/
prompt
prompt 正在处理纪录编号为 8200000000018004 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Tables U WHERE U.TABLE_NAME = 'T_CLEARANCE_CREEPAGE_CP_CONC';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
        create table T_CLEARANCE_CREEPAGE_CP_CONC
        (
        read_id NUMBER(16) not null,
        detect_task_no VARCHAR2(32),
        equip_categ VARCHAR2(8),
        sys_no VARCHAR2(16),
        detect_equip_no VARCHAR2(32),
        detect_unit_no VARCHAR2(32),
        bar_code VARCHAR2(32),
        detect_date VARCHAR2(32),
        para_index VARCHAR2(32),
        detect_item_point VARCHAR2(8),
        is_valid VARCHAR2(8),
        measure_pos VARCHAR2(8),
        elec_clearance NUMBER(16,3),
        creepage_dis NUMBER(16,3),
        conc_code VARCHAR2(8),
        write_date DATE,
        handle_flag VARCHAR2(8),
        handle_date DATE
        )
        tablespace MPAC_T
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
      dbms_output.put_line('脚本已跳过，因为 T_CLEARANCE_CREEPAGE_CP_CONC 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table T_CLEARANCE_CREEPAGE_CP_CONC
      is ''充电桩电气间隙和爬电距离试验结论表''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_CLEARANCE_CREEPAGE_CP_CONC.READ_ID
      is ''字段唯一标识''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_CLEARANCE_CREEPAGE_CP_CONC.DETECT_TASK_NO
      is ''检定任务编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_CLEARANCE_CREEPAGE_CP_CONC.EQUIP_CATEG
      is ''设备类别''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_CLEARANCE_CREEPAGE_CP_CONC.SYS_NO
      is ''系统编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_CLEARANCE_CREEPAGE_CP_CONC.DETECT_EQUIP_NO
      is ''检定线台编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_CLEARANCE_CREEPAGE_CP_CONC.DETECT_UNIT_NO
      is ''检定单元编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_CLEARANCE_CREEPAGE_CP_CONC.BAR_CODE
      is ''设备条形码''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_CLEARANCE_CREEPAGE_CP_CONC.DETECT_DATE
      is ''检定时间''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_CLEARANCE_CREEPAGE_CP_CONC.PARA_INDEX
      is ''检定序号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_CLEARANCE_CREEPAGE_CP_CONC.DETECT_ITEM_POINT
      is ''检定点序号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_CLEARANCE_CREEPAGE_CP_CONC.IS_VALID
      is ''有效标志''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_CLEARANCE_CREEPAGE_CP_CONC.MEASURE_POS
      is ''测量位置 VW_CLEARANCE_MEASURE_POS''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_CLEARANCE_CREEPAGE_CP_CONC.ELEC_CLEARANCE
      is ''电气间隙（mm）''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_CLEARANCE_CREEPAGE_CP_CONC.CREEPAGE_DIS
      is ''爬电距离（mm）''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_CLEARANCE_CREEPAGE_CP_CONC.CONC_CODE
      is ''检查结论''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_CLEARANCE_CREEPAGE_CP_CONC.WRITE_DATE
      is ''检定系统写入时间''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_CLEARANCE_CREEPAGE_CP_CONC.HANDLE_FLAG
      is ''处理标记''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_CLEARANCE_CREEPAGE_CP_CONC.HANDLE_DATE
      is ''处理时间''
    ';
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_INDEXES U WHERE u.INDEX_NAME = 'PK_T_CC_CP_CONC';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table T_CLEARANCE_CREEPAGE_CP_CONC
      add constraint PK_T_CC_CP_CONC primary key (READ_ID)
      using index
      tablespace MPAC_T_IDX
      pctfree 10
      initrans 2
      maxtrans 255
      storage
      (
      initial 64K
      next 1M
      minextents 1
      maxextents unlimited
      )
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 PK_T_CC_CP_CONC 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Sequences U WHERE u.sequence_name = 'SEQ_CLEARANCE_CREEPAGE_CP_CONC';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      create sequence SEQ_CLEARANCE_CREEPAGE_CP_CONC
      minvalue 1
      maxvalue 9999999999999999
      start with 8200000000000000
      increment by 1
      cache 20
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 SEQ_CLEARANCE_CREEPAGE_CP_CONC 已存在。');
    END IF;
END;
/
prompt
prompt 正在处理纪录编号为 8200000000018005 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Tables U WHERE U.TABLE_NAME = 'T_INSU_RESIST_CP_CONC';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
        create table T_INSU_RESIST_CP_CONC
        (
        read_id NUMBER(16) not null,
        detect_task_no VARCHAR2(32),
        equip_categ VARCHAR2(8),
        sys_no VARCHAR2(16),
        detect_equip_no VARCHAR2(32),
        detect_unit_no VARCHAR2(32),
        bar_code VARCHAR2(32),
        detect_date VARCHAR2(32),
        port_code VARCHAR2(16),
        para_index VARCHAR2(32),
        detect_item_point VARCHAR2(8),
        is_valid VARCHAR2(8),
        test_site VARCHAR2(8),
        elec_resistance VARCHAR2(8),
        conc_code VARCHAR2(8),
        write_date DATE
        )
        tablespace MPAC_T
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
      dbms_output.put_line('脚本已跳过，因为 T_INSU_RESIST_CP_CONC 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table T_INSU_RESIST_CP_CONC
      is ''充电桩绝缘电阻试验结论表''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_INSU_RESIST_CP_CONC.READ_ID
      is ''字段唯一标识''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_INSU_RESIST_CP_CONC.DETECT_TASK_NO
      is ''检定任务编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_INSU_RESIST_CP_CONC.EQUIP_CATEG
      is ''设备类别''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_INSU_RESIST_CP_CONC.SYS_NO
      is ''系统编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_INSU_RESIST_CP_CONC.DETECT_EQUIP_NO
      is ''检定线台编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_INSU_RESIST_CP_CONC.DETECT_UNIT_NO
      is ''检定单元编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_INSU_RESIST_CP_CONC.BAR_CODE
      is ''设备条形码''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_INSU_RESIST_CP_CONC.DETECT_DATE
      is ''检定时间''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_INSU_RESIST_CP_CONC.PORT_CODE
      is ''枪口编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_INSU_RESIST_CP_CONC.PARA_INDEX
      is ''检定序号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_INSU_RESIST_CP_CONC.DETECT_ITEM_POINT
      is ''检定点序号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_INSU_RESIST_CP_CONC.IS_VALID
      is ''有效标志''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_INSU_RESIST_CP_CONC.TEST_SITE
      is ''测试部位 VW_INSULATION_TEST_SITE''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_INSU_RESIST_CP_CONC.ELEC_RESISTANCE
      is ''电阻（MΩ）''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_INSU_RESIST_CP_CONC.CONC_CODE
      is ''检查结论''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_INSU_RESIST_CP_CONC.WRITE_DATE
      is ''检定系统写入时间''
    ';
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_INDEXES U WHERE u.INDEX_NAME = 'PK_T_INSU_RESIST_CP_CONC';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table T_INSU_RESIST_CP_CONC
      add constraint PK_T_INSU_RESIST_CP_CONC primary key (READ_ID)
      using index
      tablespace MPAC_T_IDX
      pctfree 10
      initrans 2
      maxtrans 255
      storage
      (
      initial 64K
      next 1M
      minextents 1
      maxextents unlimited
      )
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 PK_T_INSU_RESIST_CP_CONC 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Sequences U WHERE u.sequence_name = 'SEQ_T_INSU_RESIST_CP_CONC';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      create sequence SEQ_T_INSU_RESIST_CP_CONC
      minvalue 1
      maxvalue 9999999999999999
      start with 8200000000000000
      increment by 1
      cache 20
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 SEQ_T_INSU_RESIST_CP_CONC 已存在。');
    END IF;
END;
/
prompt
prompt 正在处理纪录编号为 8200000000018006 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Tables U WHERE U.TABLE_NAME = 'T_ONLOAD_DECILITER_CP_CONC';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
        create table T_ONLOAD_DECILITER_CP_CONC
        (
        read_id NUMBER(16) not null,
        detect_task_no VARCHAR2(32),
        equip_categ VARCHAR2(8),
        sys_no VARCHAR2(16),
        detect_equip_no VARCHAR2(32),
        detect_unit_no VARCHAR2(32),
        bar_code VARCHAR2(32),
        detect_date VARCHAR2(32),
        port_code VARCHAR2(16),
        para_index VARCHAR2(32),
        detect_item_point VARCHAR2(8),
        is_valid VARCHAR2(8),
        detect_content VARCHAR2(8),
        conc_code VARCHAR2(8),
        write_date DATE,
        handle_flag VARCHAR2(8),
        handle_date DATE
        )
        tablespace MPAC_T
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
      dbms_output.put_line('脚本已跳过，因为 T_ONLOAD_DECILITER_CP_CONC 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table T_ONLOAD_DECILITER_CP_CONC
      is ''充电桩带载分合电路试验结论表''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_ONLOAD_DECILITER_CP_CONC.READ_ID
      is ''字段唯一标识''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_ONLOAD_DECILITER_CP_CONC.DETECT_TASK_NO
      is ''检定任务编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_ONLOAD_DECILITER_CP_CONC.EQUIP_CATEG
      is ''设备类别''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_ONLOAD_DECILITER_CP_CONC.SYS_NO
      is ''系统编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_ONLOAD_DECILITER_CP_CONC.DETECT_EQUIP_NO
      is ''检定线台编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_ONLOAD_DECILITER_CP_CONC.DETECT_UNIT_NO
      is ''检定单元编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_ONLOAD_DECILITER_CP_CONC.BAR_CODE
      is ''设备条形码''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_ONLOAD_DECILITER_CP_CONC.DETECT_DATE
      is ''检定时间''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_ONLOAD_DECILITER_CP_CONC.PORT_CODE
      is ''枪口编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_ONLOAD_DECILITER_CP_CONC.PARA_INDEX
      is ''检定序号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_ONLOAD_DECILITER_CP_CONC.DETECT_ITEM_POINT
      is ''检定点序号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_ONLOAD_DECILITER_CP_CONC.IS_VALID
      is ''有效标志''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_ONLOAD_DECILITER_CP_CONC.DETECT_CONTENT
      is ''测试项目 VW_ONLOAD_DECILITER_CONC_CODE''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_ONLOAD_DECILITER_CP_CONC.CONC_CODE
      is ''检查结论''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_ONLOAD_DECILITER_CP_CONC.WRITE_DATE
      is ''检定系统写入时间''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_ONLOAD_DECILITER_CP_CONC.HANDLE_FLAG
      is ''处理标记''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_ONLOAD_DECILITER_CP_CONC.HANDLE_DATE
      is ''处理时间''
    ';
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_INDEXES U WHERE u.INDEX_NAME = 'PK_T_ONLOAD_DECILITER_CP_CONC';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table T_ONLOAD_DECILITER_CP_CONC
      add constraint PK_T_ONLOAD_DECILITER_CP_CONC primary key (READ_ID)
      using index
      tablespace MPAC_T_IDX
      pctfree 10
      initrans 2
      maxtrans 255
      storage
      (
      initial 64K
      next 1M
      minextents 1
      maxextents unlimited
      )
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 PK_T_ONLOAD_DECILITER_CP_CONC 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Sequences U WHERE u.sequence_name = 'SEQ_T_ONLOAD_DECILITER_CP_CONC';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      create sequence SEQ_T_ONLOAD_DECILITER_CP_CONC
      minvalue 1
      maxvalue 9999999999999999
      start with 8200000000000000
      increment by 1
      cache 20
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 SEQ_T_ONLOAD_DECILITER_CP_CONC 已存在。');
    END IF;
END;
/
prompt
prompt 正在处理纪录编号为 8200000000018007 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Tables U WHERE U.TABLE_NAME = 'T_PWM_CP_CONC';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
        create table T_PWM_CP_CONC
        (
        read_id NUMBER(16) not null,
        detect_task_no VARCHAR2(32),
        equip_categ VARCHAR2(8),
        sys_no VARCHAR2(16),
        detect_equip_no VARCHAR2(32),
        detect_unit_no VARCHAR2(32),
        bar_code VARCHAR2(32),
        detect_date VARCHAR2(32),
        port_code VARCHAR2(16),
        para_index VARCHAR2(32),
        detect_item_point VARCHAR2(8),
        is_valid VARCHAR2(8),
        down_current VARCHAR2(8),
        out_pwm NUMBER(16,3),
        error NUMBER(16,3),
        conc_code VARCHAR2(8),
        write_date DATE,
        handle_flag VARCHAR2(8),
        handle_date DATE
        )
        tablespace MPAC_T
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
      dbms_output.put_line('脚本已跳过，因为 T_PWM_CP_CONC 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table T_PWM_CP_CONC
      is ''充电桩PWM功率调节试验结论表''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_PWM_CP_CONC.READ_ID
      is ''字段唯一标识''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_PWM_CP_CONC.DETECT_TASK_NO
      is ''检定任务编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_PWM_CP_CONC.EQUIP_CATEG
      is ''设备类别''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_PWM_CP_CONC.SYS_NO
      is ''系统编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_PWM_CP_CONC.DETECT_EQUIP_NO
      is ''检定线台编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_PWM_CP_CONC.DETECT_UNIT_NO
      is ''检定单元编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_PWM_CP_CONC.BAR_CODE
      is ''设备条形码''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_PWM_CP_CONC.DETECT_DATE
      is ''检定时间''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_PWM_CP_CONC.PORT_CODE
      is ''枪口编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_PWM_CP_CONC.PARA_INDEX
      is ''检定序号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_PWM_CP_CONC.DETECT_ITEM_POINT
      is ''检定点序号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_PWM_CP_CONC.IS_VALID
      is ''有效标志''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_PWM_CP_CONC.DOWN_CURRENT
      is ''下发电流(A)''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_PWM_CP_CONC.OUT_PWM
      is ''输出占空比(%)''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_PWM_CP_CONC.ERROR
      is ''误差(%)''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_PWM_CP_CONC.CONC_CODE
      is ''检查结论''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_PWM_CP_CONC.WRITE_DATE
      is ''检定系统写入时间''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_PWM_CP_CONC.HANDLE_FLAG
      is ''处理标记''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_PWM_CP_CONC.HANDLE_DATE
      is ''处理时间''
    ';
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_INDEXES U WHERE u.INDEX_NAME = 'PK_T_PWM_CP_CONC';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table T_PWM_CP_CONC
      add constraint PK_T_PWM_CP_CONC primary key (READ_ID)
      using index
      tablespace MPAC_T_IDX
      pctfree 10
      initrans 2
      maxtrans 255
      storage
      (
      initial 64K
      next 1M
      minextents 1
      maxextents unlimited
      )
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 PK_T_PWM_CP_CONC 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Sequences U WHERE u.sequence_name = 'SEQ_T_PWM_CP_CONC';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      create sequence SEQ_T_PWM_CP_CONC
      minvalue 1
      maxvalue 9999999999999999
      start with 8200000000000000
      increment by 1
      cache 20
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 SEQ_T_PWM_CP_CONC 已存在。');
    END IF;
END;
/
prompt
prompt 正在处理纪录编号为 8200000000018008 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Tables U WHERE U.TABLE_NAME = 'T_IN_OVERVOLT_CP_CONC';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
        create table T_IN_OVERVOLT_CP_CONC
        (
        read_id NUMBER(16) not null,
        detect_task_no VARCHAR2(32),
        equip_categ VARCHAR2(8),
        sys_no VARCHAR2(16),
        detect_equip_no VARCHAR2(32),
        detect_unit_no VARCHAR2(32),
        bar_code VARCHAR2(32),
        detect_date VARCHAR2(32),
        port_code VARCHAR2(16),
        para_index VARCHAR2(32),
        detect_item_point VARCHAR2(8),
        is_valid VARCHAR2(8),
        set_value NUMBER(16,3),
        action_value NUMBER(16,3),
        conc_code VARCHAR2(8),
        write_date DATE,
        handle_flag VARCHAR2(8),
        handle_date DATE
        )
        tablespace MPAC_T
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
      dbms_output.put_line('脚本已跳过，因为 T_IN_OVERVOLT_CP_CONC 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table T_IN_OVERVOLT_CP_CONC
      is ''充电桩输入过压保护试验结论表''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_IN_OVERVOLT_CP_CONC.READ_ID
      is ''字段唯一标识''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_IN_OVERVOLT_CP_CONC.DETECT_TASK_NO
      is ''检定任务编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_IN_OVERVOLT_CP_CONC.EQUIP_CATEG
      is ''设备类别''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_IN_OVERVOLT_CP_CONC.SYS_NO
      is ''系统编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_IN_OVERVOLT_CP_CONC.DETECT_EQUIP_NO
      is ''检定线台编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_IN_OVERVOLT_CP_CONC.DETECT_UNIT_NO
      is ''检定单元编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_IN_OVERVOLT_CP_CONC.BAR_CODE
      is ''设备条形码''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_IN_OVERVOLT_CP_CONC.DETECT_DATE
      is ''检定时间''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_IN_OVERVOLT_CP_CONC.PORT_CODE
      is ''枪口编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_IN_OVERVOLT_CP_CONC.PARA_INDEX
      is ''检定序号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_IN_OVERVOLT_CP_CONC.DETECT_ITEM_POINT
      is ''检定点序号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_IN_OVERVOLT_CP_CONC.IS_VALID
      is ''有效标志''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_IN_OVERVOLT_CP_CONC.SET_VALUE
      is ''设定值（V）''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_IN_OVERVOLT_CP_CONC.ACTION_VALUE
      is ''动作值（V）''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_IN_OVERVOLT_CP_CONC.CONC_CODE
      is ''检查结论''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_IN_OVERVOLT_CP_CONC.WRITE_DATE
      is ''检定系统写入时间''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_IN_OVERVOLT_CP_CONC.HANDLE_FLAG
      is ''处理标记''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_IN_OVERVOLT_CP_CONC.HANDLE_DATE
      is ''处理时间''
    ';
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_INDEXES U WHERE u.INDEX_NAME = 'PK_T_IN_OVERVOLT_CP_CONC';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table T_IN_OVERVOLT_CP_CONC
      add constraint PK_T_IN_OVERVOLT_CP_CONC primary key (READ_ID)
      using index
      tablespace MPAC_T_IDX
      pctfree 10
      initrans 2
      maxtrans 255
      storage
      (
      initial 64K
      next 1M
      minextents 1
      maxextents unlimited
      )
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 PK_T_IN_OVERVOLT_CP_CONC 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Sequences U WHERE u.sequence_name = 'SEQ_T_IN_OVERVOLT_CP_CONC';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      create sequence SEQ_T_IN_OVERVOLT_CP_CONC
      minvalue 1
      maxvalue 9999999999999999
      start with 8200000000000000
      increment by 1
      cache 20
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 SEQ_T_IN_OVERVOLT_CP_CONC 已存在。');
    END IF;
END;
/
prompt
prompt 正在处理纪录编号为 8200000000018009 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Tables U WHERE U.TABLE_NAME = 'T_IN_UNDERVOLT_CP_CONC';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
        create table T_IN_UNDERVOLT_CP_CONC
        (
        read_id NUMBER(16) not null,
        detect_task_no VARCHAR2(32),
        equip_categ VARCHAR2(8),
        sys_no VARCHAR2(16),
        detect_equip_no VARCHAR2(32),
        detect_unit_no VARCHAR2(32),
        bar_code VARCHAR2(32),
        detect_date VARCHAR2(32),
        port_code VARCHAR2(16),
        para_index VARCHAR2(32),
        detect_item_point VARCHAR2(8),
        is_valid VARCHAR2(8),
        set_value NUMBER(16,3),
        action_value NUMBER(16,3),
        conc_code VARCHAR2(8),
        write_date DATE,
        handle_flag VARCHAR2(8),
        handle_date DATE
        )
        tablespace MPAC_T
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
      dbms_output.put_line('脚本已跳过，因为 T_IN_UNDERVOLT_CP_CONC 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table T_IN_UNDERVOLT_CP_CONC
      is ''充电桩输入欠压保护试验结论表''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_IN_UNDERVOLT_CP_CONC.READ_ID
      is ''字段唯一标识''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_IN_UNDERVOLT_CP_CONC.DETECT_TASK_NO
      is ''检定任务编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_IN_UNDERVOLT_CP_CONC.EQUIP_CATEG
      is ''设备类别''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_IN_UNDERVOLT_CP_CONC.SYS_NO
      is ''系统编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_IN_UNDERVOLT_CP_CONC.DETECT_EQUIP_NO
      is ''检定线台编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_IN_UNDERVOLT_CP_CONC.DETECT_UNIT_NO
      is ''检定单元编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_IN_UNDERVOLT_CP_CONC.BAR_CODE
      is ''设备条形码''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_IN_UNDERVOLT_CP_CONC.DETECT_DATE
      is ''检定时间''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_IN_UNDERVOLT_CP_CONC.PORT_CODE
      is ''枪口编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_IN_UNDERVOLT_CP_CONC.PARA_INDEX
      is ''检定序号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_IN_UNDERVOLT_CP_CONC.DETECT_ITEM_POINT
      is ''检定点序号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_IN_UNDERVOLT_CP_CONC.IS_VALID
      is ''有效标志''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_IN_UNDERVOLT_CP_CONC.SET_VALUE
      is ''设定值（V）''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_IN_UNDERVOLT_CP_CONC.ACTION_VALUE
      is ''动作值（V）''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_IN_UNDERVOLT_CP_CONC.CONC_CODE
      is ''检查结论''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_IN_UNDERVOLT_CP_CONC.WRITE_DATE
      is ''检定系统写入时间''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_IN_UNDERVOLT_CP_CONC.HANDLE_FLAG
      is ''处理标记''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_IN_UNDERVOLT_CP_CONC.HANDLE_DATE
      is ''处理时间''
    ';
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_INDEXES U WHERE u.INDEX_NAME = 'PK_T_IN_UNDERVOLT_CP_CONC';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table T_IN_UNDERVOLT_CP_CONC
      add constraint PK_T_IN_UNDERVOLT_CP_CONC primary key (READ_ID)
      using index
      tablespace MPAC_T_IDX
      pctfree 10
      initrans 2
      maxtrans 255
      storage
      (
      initial 64K
      next 1M
      minextents 1
      maxextents unlimited
      )
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 PK_T_IN_UNDERVOLT_CP_CONC 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Sequences U WHERE u.sequence_name = 'SEQ_T_IN_UNDERVOLT_CP_CONC';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      create sequence SEQ_T_IN_UNDERVOLT_CP_CONC
      minvalue 1
      maxvalue 9999999999999999
      start with 8200000000000000
      increment by 1
      cache 20
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 SEQ_T_IN_UNDERVOLT_CP_CONC 已存在。');
    END IF;
END;
/
prompt
prompt 正在处理纪录编号为 8200000000018010 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Tables U WHERE U.TABLE_NAME = 'T_SCP_CP_CONC';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
        create table T_SCP_CP_CONC
        (
        read_id NUMBER(16) not null,
        detect_task_no VARCHAR2(32),
        equip_categ VARCHAR2(8),
        sys_no VARCHAR2(16),
        detect_equip_no VARCHAR2(32),
        detect_unit_no VARCHAR2(32),
        bar_code VARCHAR2(32),
        detect_date VARCHAR2(32),
        para_index VARCHAR2(32),
        detect_item_point VARCHAR2(8),
        is_valid VARCHAR2(8),
        detect_content VARCHAR2(8),
        conc_code VARCHAR2(8),
        write_date DATE,
        handle_flag VARCHAR2(8),
        handle_date DATE
        )
        tablespace MPAC_T
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
      dbms_output.put_line('脚本已跳过，因为 T_SCP_CP_CONC 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table T_SCP_CP_CONC
      is ''充电桩输出短路保护试验结论表''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_SCP_CP_CONC.READ_ID
      is ''字段唯一标识''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_SCP_CP_CONC.DETECT_TASK_NO
      is ''检定任务编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_SCP_CP_CONC.EQUIP_CATEG
      is ''设备类别''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_SCP_CP_CONC.SYS_NO
      is ''系统编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_SCP_CP_CONC.DETECT_EQUIP_NO
      is ''检定线台编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_SCP_CP_CONC.DETECT_UNIT_NO
      is ''检定单元编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_SCP_CP_CONC.BAR_CODE
      is ''设备条形码''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_SCP_CP_CONC.DETECT_DATE
      is ''检定时间''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_SCP_CP_CONC.PARA_INDEX
      is ''检定序号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_SCP_CP_CONC.DETECT_ITEM_POINT
      is ''检定点序号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_SCP_CP_CONC.IS_VALID
      is ''有效标志''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_SCP_CP_CONC.DETECT_CONTENT
      is ''测试项目 VW_SCP_CONC_CODE''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_SCP_CP_CONC.CONC_CODE
      is ''检查结论''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_SCP_CP_CONC.WRITE_DATE
      is ''检定系统写入时间''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_SCP_CP_CONC.HANDLE_FLAG
      is ''处理标记''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_SCP_CP_CONC.HANDLE_DATE
      is ''处理时间''
    ';
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_INDEXES U WHERE u.INDEX_NAME = 'PK_T_SCP_CP_CONC';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table T_SCP_CP_CONC
      add constraint PK_T_SCP_CP_CONC primary key (READ_ID)
      using index
      tablespace MPAC_T_IDX
      pctfree 10
      initrans 2
      maxtrans 255
      storage
      (
      initial 64K
      next 1M
      minextents 1
      maxextents unlimited
      )
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 PK_T_SCP_CP_CONC 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Sequences U WHERE u.sequence_name = 'SEQ_T_SCP_CP_CONC';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      create sequence SEQ_T_SCP_CP_CONC
      minvalue 1
      maxvalue 9999999999999999
      start with 8200000000000000
      increment by 1
      cache 20
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 SEQ_T_SCP_CP_CONC 已存在。');
    END IF;
END;
/
prompt
prompt 正在处理纪录编号为 8200000000018011 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Tables U WHERE U.TABLE_NAME = 'T_LOCK_CP_CONC';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
        create table T_LOCK_CP_CONC
        (
        read_id NUMBER(16) not null,
        detect_task_no VARCHAR2(32),
        equip_categ VARCHAR2(8),
        sys_no VARCHAR2(16),
        detect_equip_no VARCHAR2(32),
        detect_unit_no VARCHAR2(32),
        bar_code VARCHAR2(32),
        detect_date VARCHAR2(32),
        port_code VARCHAR2(16),
        para_index VARCHAR2(32),
        detect_item_point VARCHAR2(8),
        is_valid VARCHAR2(8),
        detect_content VARCHAR2(8),
        conc_code VARCHAR2(8),
        write_date DATE,
        handle_flag VARCHAR2(8),
        handle_date DATE
        )
        tablespace MPAC_T
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
      dbms_output.put_line('脚本已跳过，因为 T_LOCK_CP_CONC 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table T_LOCK_CP_CONC
      is ''充电桩锁止功能试验结论表''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_LOCK_CP_CONC.READ_ID
      is ''字段唯一标识''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_LOCK_CP_CONC.DETECT_TASK_NO
      is ''检定任务编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_LOCK_CP_CONC.EQUIP_CATEG
      is ''设备类别''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_LOCK_CP_CONC.SYS_NO
      is ''系统编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_LOCK_CP_CONC.DETECT_EQUIP_NO
      is ''检定线台编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_LOCK_CP_CONC.DETECT_UNIT_NO
      is ''检定单元编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_LOCK_CP_CONC.BAR_CODE
      is ''设备条形码''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_LOCK_CP_CONC.DETECT_DATE
      is ''检定时间''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_LOCK_CP_CONC.PORT_CODE
      is ''枪口编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_LOCK_CP_CONC.PARA_INDEX
      is ''检定序号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_LOCK_CP_CONC.DETECT_ITEM_POINT
      is ''检定点序号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_LOCK_CP_CONC.IS_VALID
      is ''有效标志''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_LOCK_CP_CONC.DETECT_CONTENT
      is ''测试项目 VW_LOCK_CONC_CODE''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_LOCK_CP_CONC.CONC_CODE
      is ''检查结论''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_LOCK_CP_CONC.WRITE_DATE
      is ''检定系统写入时间''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_LOCK_CP_CONC.HANDLE_FLAG
      is ''处理标记''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_LOCK_CP_CONC.HANDLE_DATE
      is ''处理时间''
    ';
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_INDEXES U WHERE u.INDEX_NAME = 'PK_T_LOCK_CP_CONC';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table T_LOCK_CP_CONC
      add constraint PK_T_LOCK_CP_CONC primary key (READ_ID)
      using index
      tablespace MPAC_T_IDX
      pctfree 10
      initrans 2
      maxtrans 255
      storage
      (
      initial 64K
      next 1M
      minextents 1
      maxextents unlimited
      )
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 PK_T_LOCK_CP_CONC 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Sequences U WHERE u.sequence_name = 'SEQ_T_LOCK_CP_CONC';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      create sequence SEQ_T_LOCK_CP_CONC
      minvalue 1
      maxvalue 9999999999999999
      start with 8200000000000000
      increment by 1
      cache 20
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 SEQ_T_LOCK_CP_CONC 已存在。');
    END IF;
END;
/
prompt
prompt 正在处理纪录编号为 8200000000018012 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Tables U WHERE U.TABLE_NAME = 'T_CONTROL_VOLTLIMIT_CP_CONC';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
        create table T_CONTROL_VOLTLIMIT_CP_CONC
        (
        read_id NUMBER(16) not null,
        detect_task_no VARCHAR2(32),
        equip_categ VARCHAR2(8),
        sys_no VARCHAR2(16),
        detect_equip_no VARCHAR2(32),
        detect_unit_no VARCHAR2(32),
        bar_code VARCHAR2(32),
        detect_date VARCHAR2(32),
        port_code VARCHAR2(16),
        para_index VARCHAR2(32),
        detect_item_point VARCHAR2(8),
        is_valid VARCHAR2(8),
        detect_content VARCHAR2(8),
        test1_volt_state VARCHAR2(8),
        test1_volt_value NUMBER(16,3),
        is_charge VARCHAR2(8),
        is_warn VARCHAR2(8),
        conc_code VARCHAR2(8),
        write_date DATE,
        handle_flag VARCHAR2(8),
        handle_date DATE
        )
        tablespace MPAC_T
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
      dbms_output.put_line('脚本已跳过，因为 T_CONTROL_VOLTLIMIT_CP_CONC 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table T_CONTROL_VOLTLIMIT_CP_CONC
      is ''充电桩控制导引电压限值测试结论表''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_CONTROL_VOLTLIMIT_CP_CONC.READ_ID
      is ''字段唯一标识''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_CONTROL_VOLTLIMIT_CP_CONC.DETECT_TASK_NO
      is ''检定任务编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_CONTROL_VOLTLIMIT_CP_CONC.EQUIP_CATEG
      is ''设备类别''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_CONTROL_VOLTLIMIT_CP_CONC.SYS_NO
      is ''系统编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_CONTROL_VOLTLIMIT_CP_CONC.DETECT_EQUIP_NO
      is ''检定线台编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_CONTROL_VOLTLIMIT_CP_CONC.DETECT_UNIT_NO
      is ''检定单元编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_CONTROL_VOLTLIMIT_CP_CONC.BAR_CODE
      is ''设备条形码''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_CONTROL_VOLTLIMIT_CP_CONC.DETECT_DATE
      is ''检定时间''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_CONTROL_VOLTLIMIT_CP_CONC.PORT_CODE
      is ''枪口编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_CONTROL_VOLTLIMIT_CP_CONC.PARA_INDEX
      is ''检定序号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_CONTROL_VOLTLIMIT_CP_CONC.DETECT_ITEM_POINT
      is ''检定点序号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_CONTROL_VOLTLIMIT_CP_CONC.IS_VALID
      is ''有效标志''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_CONTROL_VOLTLIMIT_CP_CONC.DETECT_CONTENT
      is ''测试项目 VW_CONTROL_VOLTLIMIT_CONC_CODE''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_CONTROL_VOLTLIMIT_CP_CONC.TEST1_VOLT_STATE
      is ''检测点1电压状态  VW_TEST1_VOLT_STATE''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_CONTROL_VOLTLIMIT_CP_CONC.TEST1_VOLT_VALUE
      is ''检测点1电压测量值''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_CONTROL_VOLTLIMIT_CP_CONC.IS_CHARGE
      is ''是否允许充电或正常充电''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_CONTROL_VOLTLIMIT_CP_CONC.IS_WARN
      is ''是否有警告提示''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_CONTROL_VOLTLIMIT_CP_CONC.CONC_CODE
      is ''检查结论''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_CONTROL_VOLTLIMIT_CP_CONC.WRITE_DATE
      is ''检定系统写入时间''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_CONTROL_VOLTLIMIT_CP_CONC.HANDLE_FLAG
      is ''处理标记''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_CONTROL_VOLTLIMIT_CP_CONC.HANDLE_DATE
      is ''处理时间''
    ';
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_INDEXES U WHERE u.INDEX_NAME = 'PK_T_CONTROL_VOLTLIMIT_CP_CONC';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table T_CONTROL_VOLTLIMIT_CP_CONC
      add constraint PK_T_CONTROL_VOLTLIMIT_CP_CONC primary key (READ_ID)
      using index
      tablespace MPAC_T_IDX
      pctfree 10
      initrans 2
      maxtrans 255
      storage
      (
      initial 64K
      next 1M
      minextents 1
      maxextents unlimited
      )
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 PK_T_CONTROL_VOLTLIMIT_CP_CONC 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Sequences U WHERE u.sequence_name = 'SEQ_CONTROL_VOLTLIMIT_CP_CONC';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      create sequence SEQ_CONTROL_VOLTLIMIT_CP_CONC
      minvalue 1
      maxvalue 9999999999999999
      start with 8200000000000000
      increment by 1
      cache 20
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 SEQ_CONTROL_VOLTLIMIT_CP_CONC 已存在。');
    END IF;
END;
/
prompt
prompt 正在处理纪录编号为 8200000000018013 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Tables U WHERE U.TABLE_NAME = 'T_PLUG_LOCK_CP_CONC';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
        create table T_PLUG_LOCK_CP_CONC
        (
        read_id NUMBER(16) not null,
        detect_task_no VARCHAR2(32),
        equip_categ VARCHAR2(8),
        sys_no VARCHAR2(16),
        detect_equip_no VARCHAR2(32),
        detect_unit_no VARCHAR2(32),
        bar_code VARCHAR2(32),
        detect_date VARCHAR2(32),
        port_code VARCHAR2(16),
        para_index VARCHAR2(32),
        detect_item_point VARCHAR2(8),
        is_valid VARCHAR2(8),
        detect_content VARCHAR2(8),
        conc_code VARCHAR2(8),
        write_date DATE,
        handle_flag VARCHAR2(8),
        handle_date DATE
        )
        tablespace MPAC_T
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
      dbms_output.put_line('脚本已跳过，因为 T_PLUG_LOCK_CP_CONC 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table T_PLUG_LOCK_CP_CONC
      is ''充电桩充电插头锁止功能测试结论表''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_PLUG_LOCK_CP_CONC.READ_ID
      is ''字段唯一标识''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_PLUG_LOCK_CP_CONC.DETECT_TASK_NO
      is ''检定任务编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_PLUG_LOCK_CP_CONC.EQUIP_CATEG
      is ''设备类别''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_PLUG_LOCK_CP_CONC.SYS_NO
      is ''系统编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_PLUG_LOCK_CP_CONC.DETECT_EQUIP_NO
      is ''检定线台编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_PLUG_LOCK_CP_CONC.DETECT_UNIT_NO
      is ''检定单元编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_PLUG_LOCK_CP_CONC.BAR_CODE
      is ''设备条形码''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_PLUG_LOCK_CP_CONC.DETECT_DATE
      is ''检定时间''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_PLUG_LOCK_CP_CONC.PORT_CODE
      is ''枪口编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_PLUG_LOCK_CP_CONC.PARA_INDEX
      is ''检定序号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_PLUG_LOCK_CP_CONC.DETECT_ITEM_POINT
      is ''检定点序号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_PLUG_LOCK_CP_CONC.IS_VALID
      is ''有效标志''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_PLUG_LOCK_CP_CONC.DETECT_CONTENT
      is ''测试项目 VW_PLUG_LOCK_CONC_CODE''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_PLUG_LOCK_CP_CONC.CONC_CODE
      is ''检查结论''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_PLUG_LOCK_CP_CONC.WRITE_DATE
      is ''检定系统写入时间''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_PLUG_LOCK_CP_CONC.HANDLE_FLAG
      is ''处理标记''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_PLUG_LOCK_CP_CONC.HANDLE_DATE
      is ''处理时间''
    ';
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_INDEXES U WHERE u.INDEX_NAME = 'PK_T_PLUG_LOCK_CP_CONC';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table T_PLUG_LOCK_CP_CONC
      add constraint PK_T_PLUG_LOCK_CP_CONC primary key (READ_ID)
      using index
      tablespace MPAC_T_IDX
      pctfree 10
      initrans 2
      maxtrans 255
      storage
      (
      initial 64K
      next 1M
      minextents 1
      maxextents unlimited
      )
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 PK_T_PLUG_LOCK_CP_CONC 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Sequences U WHERE u.sequence_name = 'SEQ_T_PLUG_LOCK_CP_CONC';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      create sequence SEQ_T_PLUG_LOCK_CP_CONC
      minvalue 1
      maxvalue 9999999999999999
      start with 8200000000000000
      increment by 1
      cache 20
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 SEQ_T_PLUG_LOCK_CP_CONC 已存在。');
    END IF;
END;
/
prompt
prompt 正在处理纪录编号为 8200000000018014 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Tables U WHERE U.TABLE_NAME = 'T_CONNECT_CONFIRM_CP_CONC';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
        create table T_CONNECT_CONFIRM_CP_CONC
        (
        read_id NUMBER(16) not null,
        detect_task_no VARCHAR2(32),
        equip_categ VARCHAR2(8),
        sys_no VARCHAR2(16),
        detect_equip_no VARCHAR2(32),
        detect_unit_no VARCHAR2(32),
        bar_code VARCHAR2(32),
        detect_date VARCHAR2(32),
        port_code VARCHAR2(16),
        para_index VARCHAR2(32),
        detect_item_point VARCHAR2(8),
        is_valid VARCHAR2(8),
        detect_content VARCHAR2(8),
        fout_value NUMBER(16,3),
        fout_error NUMBER(16,3),
        out_pwm_set NUMBER(16,3),
        out_pwm_value NUMBER(16,3),
        out_pwm_error NUMBER(16,3),
        rise_time_value NUMBER(16,3),
        fall_time_value NUMBER(16,3),
        conc_code VARCHAR2(8),
        write_date DATE,
        handle_flag VARCHAR2(8),
        handle_date DATE
        )
        tablespace MPAC_T
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
      dbms_output.put_line('脚本已跳过，因为 T_CONNECT_CONFIRM_CP_CONC 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table T_CONNECT_CONFIRM_CP_CONC
      is ''充电桩连接确认测试结论（交流）表''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_CONNECT_CONFIRM_CP_CONC.READ_ID
      is ''字段唯一标识''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_CONNECT_CONFIRM_CP_CONC.DETECT_TASK_NO
      is ''检定任务编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_CONNECT_CONFIRM_CP_CONC.EQUIP_CATEG
      is ''设备类别''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_CONNECT_CONFIRM_CP_CONC.SYS_NO
      is ''系统编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_CONNECT_CONFIRM_CP_CONC.DETECT_EQUIP_NO
      is ''检定线台编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_CONNECT_CONFIRM_CP_CONC.DETECT_UNIT_NO
      is ''检定单元编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_CONNECT_CONFIRM_CP_CONC.BAR_CODE
      is ''设备条形码''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_CONNECT_CONFIRM_CP_CONC.DETECT_DATE
      is ''检定时间''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_CONNECT_CONFIRM_CP_CONC.PORT_CODE
      is ''枪口编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_CONNECT_CONFIRM_CP_CONC.PARA_INDEX
      is ''检定序号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_CONNECT_CONFIRM_CP_CONC.DETECT_ITEM_POINT
      is ''检定点序号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_CONNECT_CONFIRM_CP_CONC.IS_VALID
      is ''有效标志''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_CONNECT_CONFIRM_CP_CONC.DETECT_CONTENT
      is ''测试项目 VW_ CONNECT_CONFIRM_CODE''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_CONNECT_CONFIRM_CP_CONC.FOUT_VALUE
      is ''输出频率测量值（Hz）''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_CONNECT_CONFIRM_CP_CONC.FOUT_ERROR
      is ''输出频率误差（Hz）''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_CONNECT_CONFIRM_CP_CONC.OUT_PWM_SET
      is ''输出占空比设定值（%）''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_CONNECT_CONFIRM_CP_CONC.OUT_PWM_VALUE
      is ''输出占空比测量值（%）''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_CONNECT_CONFIRM_CP_CONC.OUT_PWM_ERROR
      is ''输出占空比误差（%）''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_CONNECT_CONFIRM_CP_CONC.RISE_TIME_VALUE
      is ''上升时间测量值（μs）''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_CONNECT_CONFIRM_CP_CONC.FALL_TIME_VALUE
      is ''下降时间测量值（μs）''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_CONNECT_CONFIRM_CP_CONC.CONC_CODE
      is ''检查结论''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_CONNECT_CONFIRM_CP_CONC.WRITE_DATE
      is ''检定系统写入时间''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_CONNECT_CONFIRM_CP_CONC.HANDLE_FLAG
      is ''处理标记''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_CONNECT_CONFIRM_CP_CONC.HANDLE_DATE
      is ''处理时间''
    ';
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_INDEXES U WHERE u.INDEX_NAME = 'PK_T_CONNECT_CONFIRM_CP_CONC';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table T_CONNECT_CONFIRM_CP_CONC
      add constraint PK_T_CONNECT_CONFIRM_CP_CONC primary key (READ_ID)
      using index
      tablespace MPAC_T_IDX
      pctfree 10
      initrans 2
      maxtrans 255
      storage
      (
      initial 64K
      next 1M
      minextents 1
      maxextents unlimited
      )
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 PK_T_CONNECT_CONFIRM_CP_CONC 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Sequences U WHERE u.sequence_name = 'SEQ_T_CONNECT_CONFIRM_CP_CONC';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      create sequence SEQ_T_CONNECT_CONFIRM_CP_CONC
      minvalue 1
      maxvalue 9999999999999999
      start with 8200000000000000
      increment by 1
      cache 20
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 SEQ_T_CONNECT_CONFIRM_CP_CONC 已存在。');
    END IF;
END;
/
prompt
prompt 正在处理纪录编号为 8200000000018015 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Tables U WHERE U.TABLE_NAME = 'T_STANDBY_POWER_CP_CONC';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
        create table T_STANDBY_POWER_CP_CONC
        (
        read_id NUMBER(16) not null,
        detect_task_no VARCHAR2(32),
        equip_categ VARCHAR2(8),
        sys_no VARCHAR2(16),
        detect_equip_no VARCHAR2(32),
        detect_unit_no VARCHAR2(32),
        bar_code VARCHAR2(32),
        detect_date VARCHAR2(32),
        para_index VARCHAR2(32),
        detect_item_point VARCHAR2(8),
        is_valid VARCHAR2(8),
        port_num NUMBER(16),
        standby_power NUMBER(16,3),
        conc_code VARCHAR2(8),
        write_date DATE,
        handle_flag VARCHAR2(8),
        handle_date DATE
        )
        tablespace MPAC_T
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
      dbms_output.put_line('脚本已跳过，因为 T_STANDBY_POWER_CP_CONC 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table T_STANDBY_POWER_CP_CONC
      is ''充电桩待机功耗试验结论表''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_STANDBY_POWER_CP_CONC.READ_ID
      is ''字段唯一标识''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_STANDBY_POWER_CP_CONC.DETECT_TASK_NO
      is ''检定任务编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_STANDBY_POWER_CP_CONC.EQUIP_CATEG
      is ''设备类别''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_STANDBY_POWER_CP_CONC.SYS_NO
      is ''系统编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_STANDBY_POWER_CP_CONC.DETECT_EQUIP_NO
      is ''检定线台编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_STANDBY_POWER_CP_CONC.DETECT_UNIT_NO
      is ''检定单元编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_STANDBY_POWER_CP_CONC.BAR_CODE
      is ''设备条形码''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_STANDBY_POWER_CP_CONC.DETECT_DATE
      is ''检定时间''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_STANDBY_POWER_CP_CONC.PARA_INDEX
      is ''检定序号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_STANDBY_POWER_CP_CONC.DETECT_ITEM_POINT
      is ''检定点序号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_STANDBY_POWER_CP_CONC.IS_VALID
      is ''有效标志''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_STANDBY_POWER_CP_CONC.PORT_NUM
      is ''充电接口数量''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_STANDBY_POWER_CP_CONC.STANDBY_POWER
      is ''待机功耗(W)''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_STANDBY_POWER_CP_CONC.CONC_CODE
      is ''检查结论''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_STANDBY_POWER_CP_CONC.WRITE_DATE
      is ''检定系统写入时间''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_STANDBY_POWER_CP_CONC.HANDLE_FLAG
      is ''处理标记''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_STANDBY_POWER_CP_CONC.HANDLE_DATE
      is ''处理时间''
    ';
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_INDEXES U WHERE u.INDEX_NAME = 'PK_T_STANDBY_POWER_CP_CONC';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table T_STANDBY_POWER_CP_CONC
      add constraint PK_T_STANDBY_POWER_CP_CONC primary key (READ_ID)
      using index
      tablespace MPAC_T_IDX
      pctfree 10
      initrans 2
      maxtrans 255
      storage
      (
      initial 64K
      next 1M
      minextents 1
      maxextents unlimited
      )
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 PK_T_STANDBY_POWER_CP_CONC 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Sequences U WHERE u.sequence_name = 'SEQ_T_STANDBY_POWER_CP_CONC';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      create sequence SEQ_T_STANDBY_POWER_CP_CONC
      minvalue 1
      maxvalue 9999999999999999
      start with 8200000000000000
      increment by 1
      cache 20
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 SEQ_T_STANDBY_POWER_CP_CONC 已存在。');
    END IF;
END;
/
prompt
prompt 正在处理纪录编号为 8200000000018029 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Tables U WHERE U.TABLE_NAME = 'T_MEASUREMENT_ERROR_CP_CONC';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
        create table T_MEASUREMENT_ERROR_CP_CONC
        (
        read_id NUMBER(16) not null,
        detect_task_no VARCHAR2(32),
        equip_categ VARCHAR2(8),
        sys_no VARCHAR2(16),
        detect_equip_no VARCHAR2(32),
        detect_unit_no VARCHAR2(32),
        bar_code VARCHAR2(32),
        detect_date VARCHAR2(32),
        port_code VARCHAR2(16),
        para_index VARCHAR2(32),
        detect_item_point VARCHAR2(8),
        is_valid VARCHAR2(8),
        in_volt NUMBER(16,3),
        out_current NUMBER(16,3),
        out_volt NUMBER(16,3),
        relative_error NUMBER(16,3),
        conc_code VARCHAR2(8),
        write_date DATE,
        handle_flag VARCHAR2(8),
        handle_date DATE
        )
        tablespace MPAC_T
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
      dbms_output.put_line('脚本已跳过，因为 T_MEASUREMENT_ERROR_CP_CONC 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table T_MEASUREMENT_ERROR_CP_CONC
      is ''充电桩计量工作误差结论表''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_MEASUREMENT_ERROR_CP_CONC.READ_ID
      is ''字段唯一标识''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_MEASUREMENT_ERROR_CP_CONC.DETECT_TASK_NO
      is ''检定任务编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_MEASUREMENT_ERROR_CP_CONC.EQUIP_CATEG
      is ''设备类别''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_MEASUREMENT_ERROR_CP_CONC.SYS_NO
      is ''系统编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_MEASUREMENT_ERROR_CP_CONC.DETECT_EQUIP_NO
      is ''检定线台编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_MEASUREMENT_ERROR_CP_CONC.DETECT_UNIT_NO
      is ''检定单元编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_MEASUREMENT_ERROR_CP_CONC.BAR_CODE
      is ''设备条形码''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_MEASUREMENT_ERROR_CP_CONC.DETECT_DATE
      is ''检定时间''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_MEASUREMENT_ERROR_CP_CONC.PORT_CODE
      is ''枪口编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_MEASUREMENT_ERROR_CP_CONC.PARA_INDEX
      is ''检定序号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_MEASUREMENT_ERROR_CP_CONC.DETECT_ITEM_POINT
      is ''检定点序号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_MEASUREMENT_ERROR_CP_CONC.IS_VALID
      is ''有效标志''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_MEASUREMENT_ERROR_CP_CONC.IN_VOLT
      is ''输入电压(V)''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_MEASUREMENT_ERROR_CP_CONC.OUT_CURRENT
      is ''输出电流(A)''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_MEASUREMENT_ERROR_CP_CONC.OUT_VOLT
      is ''输出电压(V)''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_MEASUREMENT_ERROR_CP_CONC.RELATIVE_ERROR
      is ''实际相对误差(%)''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_MEASUREMENT_ERROR_CP_CONC.CONC_CODE
      is ''检查结论''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_MEASUREMENT_ERROR_CP_CONC.WRITE_DATE
      is ''检定系统写入时间''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_MEASUREMENT_ERROR_CP_CONC.HANDLE_FLAG
      is ''处理标记''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_MEASUREMENT_ERROR_CP_CONC.HANDLE_DATE
      is ''处理时间''
    ';
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_INDEXES U WHERE u.INDEX_NAME = 'PK_T_MEASUREMENT_ERROR_CP_CONC';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table T_MEASUREMENT_ERROR_CP_CONC
      add constraint PK_T_MEASUREMENT_ERROR_CP_CONC primary key (READ_ID)
      using index
      tablespace MPAC_T_IDX
      pctfree 10
      initrans 2
      maxtrans 255
      storage
      (
      initial 64K
      next 1M
      minextents 1
      maxextents unlimited
      )
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 PK_T_MEASUREMENT_ERROR_CP_CONC 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Sequences U WHERE u.sequence_name = 'SEQ_MEASUREMENT_ERROR_CP_CONC';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      create sequence SEQ_MEASUREMENT_ERROR_CP_CONC
      minvalue 1
      maxvalue 9999999999999999
      start with 8200000000000000
      increment by 1
      cache 20
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 SEQ_MEASUREMENT_ERROR_CP_CONC 已存在。');
    END IF;
END;
/
prompt
prompt 正在处理纪录编号为 8200000000018036 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Tables U WHERE U.TABLE_NAME = 'T_INDICATIVE_ERROR_CP_CONC';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
        create table T_INDICATIVE_ERROR_CP_CONC
        (
        read_id NUMBER(16) not null,
        detect_task_no VARCHAR2(32),
        equip_categ VARCHAR2(8),
        sys_no VARCHAR2(16),
        detect_equip_no VARCHAR2(32),
        detect_unit_no VARCHAR2(32),
        bar_code VARCHAR2(32),
        detect_date VARCHAR2(32),
        port_code VARCHAR2(16),
        para_index VARCHAR2(32),
        detect_item_point VARCHAR2(8),
        is_valid VARCHAR2(8),
        in_volt NUMBER(16,3),
        out_current NUMBER(16,3),
        out_volt NUMBER(16,3),
        time NUMBER(16,3),
        actual_error NUMBER(16,3),
        conc_code VARCHAR2(8),
        write_date DATE,
        handle_flag VARCHAR2(8),
        handle_date DATE
        )
        tablespace MPAC_T
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
      dbms_output.put_line('脚本已跳过，因为 T_INDICATIVE_ERROR_CP_CONC 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table T_INDICATIVE_ERROR_CP_CONC
      is ''充电桩计量示值误差结论表''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_INDICATIVE_ERROR_CP_CONC.READ_ID
      is ''字段唯一标识''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_INDICATIVE_ERROR_CP_CONC.DETECT_TASK_NO
      is ''检定任务编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_INDICATIVE_ERROR_CP_CONC.EQUIP_CATEG
      is ''设备类别''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_INDICATIVE_ERROR_CP_CONC.SYS_NO
      is ''系统编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_INDICATIVE_ERROR_CP_CONC.DETECT_EQUIP_NO
      is ''检定线台编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_INDICATIVE_ERROR_CP_CONC.DETECT_UNIT_NO
      is ''检定单元编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_INDICATIVE_ERROR_CP_CONC.BAR_CODE
      is ''设备条形码''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_INDICATIVE_ERROR_CP_CONC.DETECT_DATE
      is ''检定时间''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_INDICATIVE_ERROR_CP_CONC.PORT_CODE
      is ''枪口编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_INDICATIVE_ERROR_CP_CONC.PARA_INDEX
      is ''检定序号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_INDICATIVE_ERROR_CP_CONC.DETECT_ITEM_POINT
      is ''检定点序号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_INDICATIVE_ERROR_CP_CONC.IS_VALID
      is ''有效标志''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_INDICATIVE_ERROR_CP_CONC.IN_VOLT
      is ''输入电压(V)''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_INDICATIVE_ERROR_CP_CONC.OUT_CURRENT
      is ''输出电流(A)''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_INDICATIVE_ERROR_CP_CONC.OUT_VOLT
      is ''输出电压(V)''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_INDICATIVE_ERROR_CP_CONC.TIME
      is ''时间（min''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_INDICATIVE_ERROR_CP_CONC.ACTUAL_ERROR
      is ''实际误差(%)''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_INDICATIVE_ERROR_CP_CONC.CONC_CODE
      is ''检查结论''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_INDICATIVE_ERROR_CP_CONC.WRITE_DATE
      is ''检定系统写入时间''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_INDICATIVE_ERROR_CP_CONC.HANDLE_FLAG
      is ''处理标记''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_INDICATIVE_ERROR_CP_CONC.HANDLE_DATE
      is ''处理时间''
    ';
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_INDEXES U WHERE u.INDEX_NAME = 'PK_T_INDICATIVE_ERROR_CP_CONC';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table T_INDICATIVE_ERROR_CP_CONC
      add constraint PK_T_INDICATIVE_ERROR_CP_CONC primary key (READ_ID)
      using index
      tablespace MPAC_T_IDX
      pctfree 10
      initrans 2
      maxtrans 255
      storage
      (
      initial 64K
      next 1M
      minextents 1
      maxextents unlimited
      )
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 PK_T_INDICATIVE_ERROR_CP_CONC 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Sequences U WHERE u.sequence_name = 'SEQ_T_INDICATIVE_ERROR_CP_CONC';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      create sequence SEQ_T_INDICATIVE_ERROR_CP_CONC
      minvalue 1
      maxvalue 9999999999999999
      start with 8200000000000000
      increment by 1
      cache 20
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 SEQ_T_INDICATIVE_ERROR_CP_CONC 已存在。');
    END IF;
END;
/
prompt
prompt 正在处理纪录编号为 8200000000018037 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Tables U WHERE U.TABLE_NAME = 'T_MEASURE_UNIFORMITY_CP_CONC';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
        create table T_MEASURE_UNIFORMITY_CP_CONC
        (
        read_id NUMBER(16) not null,
        detect_task_no VARCHAR2(32),
        equip_categ VARCHAR2(8),
        sys_no VARCHAR2(16),
        detect_equip_no VARCHAR2(32),
        detect_unit_no VARCHAR2(32),
        bar_code VARCHAR2(32),
        detect_date VARCHAR2(32),
        port_code VARCHAR2(16),
        para_index VARCHAR2(32),
        detect_item_point VARCHAR2(8),
        is_valid VARCHAR2(8),
        in_volt NUMBER(16,3),
        out_current NUMBER(16,3),
        out_volt NUMBER(16,3),
        actual_error NUMBER(16,3),
        conc_code VARCHAR2(8),
        write_date DATE,
        handle_flag VARCHAR2(8),
        handle_date DATE
        )
        tablespace MPAC_T
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
      dbms_output.put_line('脚本已跳过，因为 T_MEASURE_UNIFORMITY_CP_CONC 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table T_MEASURE_UNIFORMITY_CP_CONC
      is ''充电桩计量一致性结论表''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_MEASURE_UNIFORMITY_CP_CONC.READ_ID
      is ''字段唯一标识''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_MEASURE_UNIFORMITY_CP_CONC.DETECT_TASK_NO
      is ''检定任务编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_MEASURE_UNIFORMITY_CP_CONC.EQUIP_CATEG
      is ''设备类别''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_MEASURE_UNIFORMITY_CP_CONC.SYS_NO
      is ''系统编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_MEASURE_UNIFORMITY_CP_CONC.DETECT_EQUIP_NO
      is ''检定线台编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_MEASURE_UNIFORMITY_CP_CONC.DETECT_UNIT_NO
      is ''检定单元编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_MEASURE_UNIFORMITY_CP_CONC.BAR_CODE
      is ''设备条形码''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_MEASURE_UNIFORMITY_CP_CONC.DETECT_DATE
      is ''检定时间''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_MEASURE_UNIFORMITY_CP_CONC.PORT_CODE
      is ''枪口编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_MEASURE_UNIFORMITY_CP_CONC.PARA_INDEX
      is ''检定序号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_MEASURE_UNIFORMITY_CP_CONC.DETECT_ITEM_POINT
      is ''检定点序号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_MEASURE_UNIFORMITY_CP_CONC.IS_VALID
      is ''有效标志''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_MEASURE_UNIFORMITY_CP_CONC.IN_VOLT
      is ''输入电压(V)''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_MEASURE_UNIFORMITY_CP_CONC.OUT_CURRENT
      is ''输出电流(A)''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_MEASURE_UNIFORMITY_CP_CONC.OUT_VOLT
      is ''输出电压(V)''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_MEASURE_UNIFORMITY_CP_CONC.ACTUAL_ERROR
      is ''实际误差(%)''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_MEASURE_UNIFORMITY_CP_CONC.CONC_CODE
      is ''检查结论''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_MEASURE_UNIFORMITY_CP_CONC.WRITE_DATE
      is ''检定系统写入时间''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_MEASURE_UNIFORMITY_CP_CONC.HANDLE_FLAG
      is ''处理标记''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_MEASURE_UNIFORMITY_CP_CONC.HANDLE_DATE
      is ''处理时间''
    ';
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_INDEXES U WHERE u.INDEX_NAME = 'PK_T_MU_CP_CONC';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table T_MEASURE_UNIFORMITY_CP_CONC
      add constraint  PK_T_MU_CP_CONC primary key (READ_ID)
      using index
      tablespace MPAC_T_IDX
      pctfree 10
      initrans 2
      maxtrans 255
      storage
      (
      initial 64K
      next 1M
      minextents 1
      maxextents unlimited
      )
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 PK_T_MEASURE_UNIFORMITY_CP_CONC 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Sequences U WHERE u.sequence_name = 'SEQ_MEASURE_UNIFORMITY_CP_CONC';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      create sequence SEQ_MEASURE_UNIFORMITY_CP_CONC
      minvalue 1
      maxvalue 9999999999999999
      start with 8200000000000000
      increment by 1
      cache 20
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 SEQ_MEASURE_UNIFORMITY_CP_CONC 已存在。');
    END IF;
END;
/
prompt
prompt 正在处理纪录编号为 8200000000018040 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Tables U WHERE U.TABLE_NAME = 'T_SCRAM_FUNCTION_CP_CONC';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
        create table T_SCRAM_FUNCTION_CP_CONC
        (
        read_id NUMBER(16) not null,
        detect_task_no VARCHAR2(32),
        equip_categ VARCHAR2(8),
        sys_no VARCHAR2(16),
        detect_equip_no VARCHAR2(32),
        detect_unit_no VARCHAR2(32),
        bar_code VARCHAR2(32),
        detect_date VARCHAR2(32),
        port_code VARCHAR2(16),
        para_index VARCHAR2(32),
        detect_item_point VARCHAR2(8),
        is_valid VARCHAR2(8),
        detect_content VARCHAR2(8),
        conc_code VARCHAR2(8),
        write_date DATE,
        handle_flag VARCHAR2(8),
        handle_date DATE
        )
        tablespace MPAC_T
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
      dbms_output.put_line('脚本已跳过，因为 T_SCRAM_FUNCTION_CP_CONC 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table T_SCRAM_FUNCTION_CP_CONC
      is ''充电桩急停功能结论表''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_SCRAM_FUNCTION_CP_CONC.READ_ID
      is ''字段唯一标识''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_SCRAM_FUNCTION_CP_CONC.DETECT_TASK_NO
      is ''检定任务编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_SCRAM_FUNCTION_CP_CONC.EQUIP_CATEG
      is ''设备类别''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_SCRAM_FUNCTION_CP_CONC.SYS_NO
      is ''系统编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_SCRAM_FUNCTION_CP_CONC.DETECT_EQUIP_NO
      is ''检定线台编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_SCRAM_FUNCTION_CP_CONC.DETECT_UNIT_NO
      is ''检定单元编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_SCRAM_FUNCTION_CP_CONC.BAR_CODE
      is ''设备条形码''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_SCRAM_FUNCTION_CP_CONC.DETECT_DATE
      is ''检定时间''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_SCRAM_FUNCTION_CP_CONC.PORT_CODE
      is ''枪口编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_SCRAM_FUNCTION_CP_CONC.PARA_INDEX
      is ''检定序号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_SCRAM_FUNCTION_CP_CONC.DETECT_ITEM_POINT
      is ''检定点序号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_SCRAM_FUNCTION_CP_CONC.IS_VALID
      is ''有效标志''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_SCRAM_FUNCTION_CP_CONC.DETECT_CONTENT
      is ''测试项目 VW_SCRAM_FUNCTION_CONC_CODE''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_SCRAM_FUNCTION_CP_CONC.CONC_CODE
      is ''检查结论''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_SCRAM_FUNCTION_CP_CONC.WRITE_DATE
      is ''检定系统写入时间''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_SCRAM_FUNCTION_CP_CONC.HANDLE_FLAG
      is ''处理标记''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_SCRAM_FUNCTION_CP_CONC.HANDLE_DATE
      is ''处理时间''
    ';
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_INDEXES U WHERE u.INDEX_NAME = 'PK_T_SCRAM_FUNCTION_CP_CONC';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table T_SCRAM_FUNCTION_CP_CONC
      add constraint PK_T_SCRAM_FUNCTION_CP_CONC primary key (READ_ID)
      using index
      tablespace MPAC_T_IDX
      pctfree 10
      initrans 2
      maxtrans 255
      storage
      (
      initial 64K
      next 1M
      minextents 1
      maxextents unlimited
      )
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 PK_T_SCRAM_FUNCTION_CP_CONC 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Sequences U WHERE u.sequence_name = 'SEQ_T_SCRAM_FUNCTION_CP_CONC';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      create sequence SEQ_T_SCRAM_FUNCTION_CP_CONC
      minvalue 1
      maxvalue 9999999999999999
      start with 8200000000000000
      increment by 1
      cache 20
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 SEQ_T_SCRAM_FUNCTION_CP_CONC 已存在。');
    END IF;
END;
/
prompt
prompt 正在处理纪录编号为 8200000000018043 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Tables U WHERE U.TABLE_NAME = 'T_VOLT_LOSS_CP_CONC';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
        create table T_VOLT_LOSS_CP_CONC
        (
        read_id NUMBER(16) not null,
        detect_task_no VARCHAR2(32),
        equip_categ VARCHAR2(8),
        sys_no VARCHAR2(16),
        detect_equip_no VARCHAR2(32),
        detect_unit_no VARCHAR2(32),
        bar_code VARCHAR2(32),
        detect_date VARCHAR2(32),
        para_index VARCHAR2(32),
        detect_item_point VARCHAR2(8),
        is_valid VARCHAR2(8),
        detect_content VARCHAR2(8),
        conc_code VARCHAR2(8),
        write_date DATE,
        handle_flag VARCHAR2(8),
        handle_date DATE
        )
        tablespace MPAC_T
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
      dbms_output.put_line('脚本已跳过，因为 T_VOLT_LOSS_CP_CONC 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table T_VOLT_LOSS_CP_CONC
      is ''充电桩供电电压消失试验结论表''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_VOLT_LOSS_CP_CONC.READ_ID
      is ''字段唯一标识''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_VOLT_LOSS_CP_CONC.DETECT_TASK_NO
      is ''检定任务编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_VOLT_LOSS_CP_CONC.EQUIP_CATEG
      is ''设备类别''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_VOLT_LOSS_CP_CONC.SYS_NO
      is ''系统编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_VOLT_LOSS_CP_CONC.DETECT_EQUIP_NO
      is ''检定线台编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_VOLT_LOSS_CP_CONC.DETECT_UNIT_NO
      is ''检定单元编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_VOLT_LOSS_CP_CONC.BAR_CODE
      is ''设备条形码''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_VOLT_LOSS_CP_CONC.DETECT_DATE
      is ''检定时间''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_VOLT_LOSS_CP_CONC.PARA_INDEX
      is ''检定序号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_VOLT_LOSS_CP_CONC.DETECT_ITEM_POINT
      is ''检定点序号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_VOLT_LOSS_CP_CONC.IS_VALID
      is ''有效标志''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_VOLT_LOSS_CP_CONC.DETECT_CONTENT
      is ''测试项目 VW_VOLT_LOSS_CONC_CODE''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_VOLT_LOSS_CP_CONC.CONC_CODE
      is ''检查结论''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_VOLT_LOSS_CP_CONC.WRITE_DATE
      is ''检定系统写入时间''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_VOLT_LOSS_CP_CONC.HANDLE_FLAG
      is ''处理标记''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_VOLT_LOSS_CP_CONC.HANDLE_DATE
      is ''处理时间''
    ';
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_INDEXES U WHERE u.INDEX_NAME = 'PK_T_VOLT_LOSS_CP_CONC';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table T_VOLT_LOSS_CP_CONC
      add constraint PK_T_VOLT_LOSS_CP_CONC primary key (READ_ID)
      using index
      tablespace MPAC_T_IDX
      pctfree 10
      initrans 2
      maxtrans 255
      storage
      (
      initial 64K
      next 1M
      minextents 1
      maxextents unlimited
      )
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 PK_T_VOLT_LOSS_CP_CONC 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Sequences U WHERE u.sequence_name = 'SEQ_T_VOLT_LOSS_CP_CONC';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      create sequence SEQ_T_VOLT_LOSS_CP_CONC
      minvalue 1
      maxvalue 9999999999999999
      start with 8200000000000000
      increment by 1
      cache 20
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 SEQ_T_VOLT_LOSS_CP_CONC 已存在。');
    END IF;
END;
/
prompt
prompt 正在处理纪录编号为 8200000000018048 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Tables U WHERE U.TABLE_NAME = 'T_MAXOUT_POWER_CP_CONC';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
        create table T_MAXOUT_POWER_CP_CONC
        (
        read_id NUMBER(16) not null,
        detect_task_no VARCHAR2(32),
        equip_categ VARCHAR2(8),
        sys_no VARCHAR2(16),
        detect_equip_no VARCHAR2(32),
        detect_unit_no VARCHAR2(32),
        bar_code VARCHAR2(32),
        detect_date VARCHAR2(32),
        port_code VARCHAR2(16),
        para_index VARCHAR2(32),
        detect_item_point VARCHAR2(8),
        is_valid VARCHAR2(8),
        out_volt NUMBER(16,3),
        out_current NUMBER(16,3),
        out_power NUMBER(16,3),
        error NUMBER(16,3),
        conc_code VARCHAR2(8),
        write_date DATE,
        handle_flag VARCHAR2(8),
        handle_date DATE
        )
        tablespace MPAC_T
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
      dbms_output.put_line('脚本已跳过，因为 T_MAXOUT_POWER_CP_CONC 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table T_MAXOUT_POWER_CP_CONC
      is ''充电桩最大恒功率输出试验结论表''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_MAXOUT_POWER_CP_CONC.READ_ID
      is ''字段唯一标识''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_MAXOUT_POWER_CP_CONC.DETECT_TASK_NO
      is ''检定任务编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_MAXOUT_POWER_CP_CONC.EQUIP_CATEG
      is ''设备类别''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_MAXOUT_POWER_CP_CONC.SYS_NO
      is ''系统编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_MAXOUT_POWER_CP_CONC.DETECT_EQUIP_NO
      is ''检定线台编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_MAXOUT_POWER_CP_CONC.DETECT_UNIT_NO
      is ''检定单元编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_MAXOUT_POWER_CP_CONC.BAR_CODE
      is ''设备条形码''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_MAXOUT_POWER_CP_CONC.DETECT_DATE
      is ''检定时间''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_MAXOUT_POWER_CP_CONC.PORT_CODE
      is ''枪口编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_MAXOUT_POWER_CP_CONC.PARA_INDEX
      is ''检定序号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_MAXOUT_POWER_CP_CONC.DETECT_ITEM_POINT
      is ''检定点序号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_MAXOUT_POWER_CP_CONC.IS_VALID
      is ''有效标志''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_MAXOUT_POWER_CP_CONC.OUT_VOLT
      is ''输出电压(V)''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_MAXOUT_POWER_CP_CONC.OUT_CURRENT
      is ''输出电流(A)''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_MAXOUT_POWER_CP_CONC.OUT_POWER
      is ''输出功率(kW)''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_MAXOUT_POWER_CP_CONC.ERROR
      is ''误差(%)''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_MAXOUT_POWER_CP_CONC.CONC_CODE
      is ''检查结论''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_MAXOUT_POWER_CP_CONC.WRITE_DATE
      is ''检定系统写入时间''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_MAXOUT_POWER_CP_CONC.HANDLE_FLAG
      is ''处理标记''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_MAXOUT_POWER_CP_CONC.HANDLE_DATE
      is ''处理时间''
    ';
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_INDEXES U WHERE u.INDEX_NAME = 'PK_T_MAXOUT_POWER_CP_CONC';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table T_MAXOUT_POWER_CP_CONC
      add constraint PK_T_MAXOUT_POWER_CP_CONC primary key (READ_ID)
      using index
      tablespace MPAC_T_IDX
      pctfree 10
      initrans 2
      maxtrans 255
      storage
      (
      initial 64K
      next 1M
      minextents 1
      maxextents unlimited
      )
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 PK_T_MAXOUT_POWER_CP_CONC 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Sequences U WHERE u.sequence_name = 'SEQ_T_MAXOUT_POWER_CP_CONC';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      create sequence SEQ_T_MAXOUT_POWER_CP_CONC
      minvalue 1
      maxvalue 9999999999999999
      start with 8200000000000000
      increment by 1
      cache 20
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 SEQ_T_MAXOUT_POWER_CP_CONC 已存在。');
    END IF;
END;
/
prompt
prompt 正在处理纪录编号为 8200000000018055 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Tables U WHERE U.TABLE_NAME = 'T_CURRENT_PRECISION_CP_CONC';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
        create table T_CURRENT_PRECISION_CP_CONC
        (
        read_id NUMBER(16) not null,
        detect_task_no VARCHAR2(32),
        equip_categ VARCHAR2(8),
        sys_no VARCHAR2(16),
        detect_equip_no VARCHAR2(32),
        detect_unit_no VARCHAR2(32),
        bar_code VARCHAR2(32),
        detect_date VARCHAR2(32),
        port_code VARCHAR2(16),
        para_index VARCHAR2(32),
        detect_item_point VARCHAR2(8),
        is_valid VARCHAR2(8),
        in_volt NUMBER(16,3),
        out_volt NUMBER(16,3),
        out_current NUMBER(16,3),
        error NUMBER(16,3),
        conc_code VARCHAR2(8),
        write_date DATE,
        handle_flag VARCHAR2(8),
        handle_date DATE
        )
        tablespace MPAC_T
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
      dbms_output.put_line('脚本已跳过，因为 T_CURRENT_PRECISION_CP_CONC 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table T_CURRENT_PRECISION_CP_CONC
      is ''充电桩稳流精度试验结论表''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_CURRENT_PRECISION_CP_CONC.READ_ID
      is ''字段唯一标识''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_CURRENT_PRECISION_CP_CONC.DETECT_TASK_NO
      is ''检定任务编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_CURRENT_PRECISION_CP_CONC.EQUIP_CATEG
      is ''设备类别''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_CURRENT_PRECISION_CP_CONC.SYS_NO
      is ''系统编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_CURRENT_PRECISION_CP_CONC.DETECT_EQUIP_NO
      is ''检定线台编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_CURRENT_PRECISION_CP_CONC.DETECT_UNIT_NO
      is ''检定单元编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_CURRENT_PRECISION_CP_CONC.BAR_CODE
      is ''设备条形码''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_CURRENT_PRECISION_CP_CONC.DETECT_DATE
      is ''检定时间''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_CURRENT_PRECISION_CP_CONC.PORT_CODE
      is ''枪口编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_CURRENT_PRECISION_CP_CONC.PARA_INDEX
      is ''检定序号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_CURRENT_PRECISION_CP_CONC.DETECT_ITEM_POINT
      is ''检定点序号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_CURRENT_PRECISION_CP_CONC.IS_VALID
      is ''有效标志''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_CURRENT_PRECISION_CP_CONC.IN_VOLT
      is ''输入电压(V)''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_CURRENT_PRECISION_CP_CONC.OUT_VOLT
      is ''输出电压(V)''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_CURRENT_PRECISION_CP_CONC.OUT_CURRENT
      is ''输出电流(A)''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_CURRENT_PRECISION_CP_CONC.ERROR
      is ''误差(%)''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_CURRENT_PRECISION_CP_CONC.CONC_CODE
      is ''检查结论''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_CURRENT_PRECISION_CP_CONC.WRITE_DATE
      is ''检定系统写入时间''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_CURRENT_PRECISION_CP_CONC.HANDLE_FLAG
      is ''处理标记''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_CURRENT_PRECISION_CP_CONC.HANDLE_DATE
      is ''处理时间''
    ';
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_INDEXES U WHERE u.INDEX_NAME = 'PK_T_CURRENT_PRECISION_CP_CONC';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table T_CURRENT_PRECISION_CP_CONC
      add constraint PK_T_CURRENT_PRECISION_CP_CONC primary key (READ_ID)
      using index
      tablespace MPAC_T_IDX
      pctfree 10
      initrans 2
      maxtrans 255
      storage
      (
      initial 64K
      next 1M
      minextents 1
      maxextents unlimited
      )
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 PK_T_CURRENT_PRECISION_CP_CONC 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Sequences U WHERE u.sequence_name = 'SEQ_CURRENT_PRECISION_CP_CONC';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      create sequence SEQ_CURRENT_PRECISION_CP_CONC
      minvalue 1
      maxvalue 9999999999999999
      start with 8200000000000000
      increment by 1
      cache 20
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 SEQ_CURRENT_PRECISION_CP_CONC 已存在。');
    END IF;
END;
/
prompt
prompt 正在处理纪录编号为 8200000000018059 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Tables U WHERE U.TABLE_NAME = 'T_VOLT_PRECISION_CP_CONC';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
        create table T_VOLT_PRECISION_CP_CONC
        (
        read_id NUMBER(16) not null,
        detect_task_no VARCHAR2(32),
        equip_categ VARCHAR2(8),
        sys_no VARCHAR2(16),
        detect_equip_no VARCHAR2(32),
        detect_unit_no VARCHAR2(32),
        bar_code VARCHAR2(32),
        detect_date VARCHAR2(32),
        port_code VARCHAR2(16),
        para_index VARCHAR2(32),
        detect_item_point VARCHAR2(8),
        is_valid VARCHAR2(8),
        in_volt NUMBER(16,3),
        out_volt NUMBER(16,3),
        out_current NUMBER(16,3),
        error NUMBER(16,3),
        conc_code VARCHAR2(8),
        write_date DATE,
        handle_flag VARCHAR2(8),
        handle_date DATE
        )
        tablespace MPAC_T
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
      dbms_output.put_line('脚本已跳过，因为 T_VOLT_PRECISION_CP_CONC 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table T_VOLT_PRECISION_CP_CONC
      is ''充电桩稳压精度试验结论表''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_VOLT_PRECISION_CP_CONC.READ_ID
      is ''字段唯一标识''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_VOLT_PRECISION_CP_CONC.DETECT_TASK_NO
      is ''检定任务编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_VOLT_PRECISION_CP_CONC.EQUIP_CATEG
      is ''设备类别''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_VOLT_PRECISION_CP_CONC.SYS_NO
      is ''系统编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_VOLT_PRECISION_CP_CONC.DETECT_EQUIP_NO
      is ''检定线台编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_VOLT_PRECISION_CP_CONC.DETECT_UNIT_NO
      is ''检定单元编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_VOLT_PRECISION_CP_CONC.BAR_CODE
      is ''设备条形码''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_VOLT_PRECISION_CP_CONC.DETECT_DATE
      is ''检定时间''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_VOLT_PRECISION_CP_CONC.PORT_CODE
      is ''枪口编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_VOLT_PRECISION_CP_CONC.PARA_INDEX
      is ''检定序号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_VOLT_PRECISION_CP_CONC.DETECT_ITEM_POINT
      is ''检定点序号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_VOLT_PRECISION_CP_CONC.IS_VALID
      is ''有效标志''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_VOLT_PRECISION_CP_CONC.IN_VOLT
      is ''输入电压(V)''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_VOLT_PRECISION_CP_CONC.OUT_VOLT
      is ''输出电压(V)''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_VOLT_PRECISION_CP_CONC.OUT_CURRENT
      is ''输出电流(A)''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_VOLT_PRECISION_CP_CONC.ERROR
      is ''误差(%)''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_VOLT_PRECISION_CP_CONC.CONC_CODE
      is ''检查结论''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_VOLT_PRECISION_CP_CONC.WRITE_DATE
      is ''检定系统写入时间''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_VOLT_PRECISION_CP_CONC.HANDLE_FLAG
      is ''处理标记''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_VOLT_PRECISION_CP_CONC.HANDLE_DATE
      is ''处理时间''
    ';
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_INDEXES U WHERE u.INDEX_NAME = 'PK_T_VOLT_PRECISION_CP_CONC';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table T_VOLT_PRECISION_CP_CONC
      add constraint PK_T_VOLT_PRECISION_CP_CONC primary key (READ_ID)
      using index
      tablespace MPAC_T_IDX
      pctfree 10
      initrans 2
      maxtrans 255
      storage
      (
      initial 64K
      next 1M
      minextents 1
      maxextents unlimited
      )
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 PK_T_VOLT_PRECISION_CP_CONC 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Tables U WHERE U.TABLE_NAME = 'T_VOLT_PRECISION_CP_CONC';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
        create table T_VOLT_PRECISION_CP_CONC
        (
        read_id NUMBER(16) not null,
        detect_task_no VARCHAR2(32),
        equip_categ VARCHAR2(8),
        sys_no VARCHAR2(16),
        detect_equip_no VARCHAR2(32),
        detect_unit_no VARCHAR2(32),
        bar_code VARCHAR2(32),
        detect_date VARCHAR2(32),
        port_code VARCHAR2(16),
        para_index VARCHAR2(32),
        detect_item_point VARCHAR2(8),
        is_valid VARCHAR2(8),
        in_volt NUMBER(16,3),
        out_volt NUMBER(16,3),
        out_current NUMBER(16,3),
        error NUMBER(16,3),
        conc_code VARCHAR2(8),
        write_date DATE,
        handle_flag VARCHAR2(8),
        handle_date DATE
        )
        tablespace MPAC_T
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
      dbms_output.put_line('脚本已跳过，因为 T_VOLT_PRECISION_CP_CONC 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table T_VOLT_PRECISION_CP_CONC
      is ''充电桩稳压精度试验结论表''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_VOLT_PRECISION_CP_CONC.READ_ID
      is ''字段唯一标识''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_VOLT_PRECISION_CP_CONC.DETECT_TASK_NO
      is ''检定任务编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_VOLT_PRECISION_CP_CONC.EQUIP_CATEG
      is ''设备类别''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_VOLT_PRECISION_CP_CONC.SYS_NO
      is ''系统编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_VOLT_PRECISION_CP_CONC.DETECT_EQUIP_NO
      is ''检定线台编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_VOLT_PRECISION_CP_CONC.DETECT_UNIT_NO
      is ''检定单元编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_VOLT_PRECISION_CP_CONC.BAR_CODE
      is ''设备条形码''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_VOLT_PRECISION_CP_CONC.DETECT_DATE
      is ''检定时间''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_VOLT_PRECISION_CP_CONC.PORT_CODE
      is ''枪口编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_VOLT_PRECISION_CP_CONC.PARA_INDEX
      is ''检定序号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_VOLT_PRECISION_CP_CONC.DETECT_ITEM_POINT
      is ''检定点序号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_VOLT_PRECISION_CP_CONC.IS_VALID
      is ''有效标志''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_VOLT_PRECISION_CP_CONC.IN_VOLT
      is ''输入电压(V)''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_VOLT_PRECISION_CP_CONC.OUT_VOLT
      is ''输出电压(V)''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_VOLT_PRECISION_CP_CONC.OUT_CURRENT
      is ''输出电流(A)''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_VOLT_PRECISION_CP_CONC.ERROR
      is ''误差(%)''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_VOLT_PRECISION_CP_CONC.CONC_CODE
      is ''检查结论''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_VOLT_PRECISION_CP_CONC.WRITE_DATE
      is ''检定系统写入时间''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_VOLT_PRECISION_CP_CONC.HANDLE_FLAG
      is ''处理标记''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_VOLT_PRECISION_CP_CONC.HANDLE_DATE
      is ''处理时间''
    ';
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_INDEXES U WHERE u.INDEX_NAME = 'PK_T_VOLT_PRECISION_CP_CONC';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table T_VOLT_PRECISION_CP_CONC
      add constraint PK_T_VOLT_PRECISION_CP_CONC primary key (READ_ID)
      using index
      tablespace MPAC_T_IDX
      pctfree 10
      initrans 2
      maxtrans 255
      storage
      (
      initial 64K
      next 1M
      minextents 1
      maxextents unlimited
      )
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 PK_T_VOLT_PRECISION_CP_CONC 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Sequences U WHERE u.sequence_name = 'SEQ_T_VOLT_PRECISION_CP_CONC';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      create sequence SEQ_T_VOLT_PRECISION_CP_CONC
      minvalue 1
      maxvalue 9999999999999999
      start with 8200000000000000
      increment by 1
      cache 20
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 SEQ_T_VOLT_PRECISION_CP_CONC 已存在。');
    END IF;
END;
/
prompt
prompt 正在处理纪录编号为 8200000000018062 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Tables U WHERE U.TABLE_NAME = 'T_EFFICIENCY_CP_CONC';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
        create table T_EFFICIENCY_CP_CONC
        (
        read_id NUMBER(16) not null,
        detect_task_no VARCHAR2(32),
        equip_categ VARCHAR2(8),
        sys_no VARCHAR2(16),
        detect_equip_no VARCHAR2(32),
        detect_unit_no VARCHAR2(32),
        bar_code VARCHAR2(32),
        detect_date VARCHAR2(32),
        port_code VARCHAR2(16),
        para_index VARCHAR2(32),
        detect_item_point VARCHAR2(8),
        is_valid VARCHAR2(8),
        in_volt NUMBER(16,3),
        out_volt NUMBER(16,3),
        out_current NUMBER(16,3),
        state VARCHAR2(8),
        power NUMBER(16,3),
        conc_code VARCHAR2(8),
        write_date DATE,
        handle_flag VARCHAR2(8),
        handle_date DATE
        )
        tablespace MPAC_T
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
      dbms_output.put_line('脚本已跳过，因为 T_EFFICIENCY_CP_CONC 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table T_EFFICIENCY_CP_CONC
      is ''充电桩效率试验结论表''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_EFFICIENCY_CP_CONC.READ_ID
      is ''字段唯一标识''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_EFFICIENCY_CP_CONC.DETECT_TASK_NO
      is ''检定任务编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_EFFICIENCY_CP_CONC.EQUIP_CATEG
      is ''设备类别''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_EFFICIENCY_CP_CONC.SYS_NO
      is ''系统编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_EFFICIENCY_CP_CONC.DETECT_EQUIP_NO
      is ''检定线台编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_EFFICIENCY_CP_CONC.DETECT_UNIT_NO
      is ''检定单元编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_EFFICIENCY_CP_CONC.BAR_CODE
      is ''设备条形码''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_EFFICIENCY_CP_CONC.DETECT_DATE
      is ''检定时间''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_EFFICIENCY_CP_CONC.PORT_CODE
      is ''枪口编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_EFFICIENCY_CP_CONC.PARA_INDEX
      is ''检定序号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_EFFICIENCY_CP_CONC.DETECT_ITEM_POINT
      is ''检定点序号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_EFFICIENCY_CP_CONC.IS_VALID
      is ''有效标志''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_EFFICIENCY_CP_CONC.IN_VOLT
      is ''输入电压(V)''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_EFFICIENCY_CP_CONC.OUT_VOLT
      is ''输出电压(V)''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_EFFICIENCY_CP_CONC.OUT_CURRENT
      is ''输出电流(A)''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_EFFICIENCY_CP_CONC.STATE
      is ''状态 VW_CP_ EFFICIENCY_STATE''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_EFFICIENCY_CP_CONC.POWER
      is ''功率（kW''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_EFFICIENCY_CP_CONC.CONC_CODE
      is ''检查结论''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_EFFICIENCY_CP_CONC.WRITE_DATE
      is ''检定系统写入时间''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_EFFICIENCY_CP_CONC.HANDLE_FLAG
      is ''处理标记''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_EFFICIENCY_CP_CONC.HANDLE_DATE
      is ''处理时间''
    ';
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_INDEXES U WHERE u.INDEX_NAME = 'PK_T_EFFICIENCY_CP_CONC';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table T_EFFICIENCY_CP_CONC
      add constraint PK_T_EFFICIENCY_CP_CONC primary key (READ_ID)
      using index
      tablespace MPAC_T_IDX
      pctfree 10
      initrans 2
      maxtrans 255
      storage
      (
      initial 64K
      next 1M
      minextents 1
      maxextents unlimited
      )
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 PK_T_EFFICIENCY_CP_CONC 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Sequences U WHERE u.sequence_name = 'SEQ_T_EFFICIENCY_CP_CONC';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      create sequence SEQ_T_EFFICIENCY_CP_CONC
      minvalue 1
      maxvalue 9999999999999999
      start with 8200000000000000
      increment by 1
      cache 20
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 SEQ_T_EFFICIENCY_CP_CONC 已存在。');
    END IF;
END;
/
prompt
prompt 正在处理纪录编号为 8200000000018068 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Tables U WHERE U.TABLE_NAME = 'T_PF_CP_CONC';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
        create table T_PF_CP_CONC
        (
        read_id NUMBER(16) not null,
        detect_task_no VARCHAR2(32),
        equip_categ VARCHAR2(8),
        sys_no VARCHAR2(16),
        detect_equip_no VARCHAR2(32),
        detect_unit_no VARCHAR2(32),
        bar_code VARCHAR2(32),
        detect_date VARCHAR2(32),
        port_code VARCHAR2(16),
        para_index VARCHAR2(32),
        detect_item_point VARCHAR2(8),
        is_valid VARCHAR2(8),
        in_volt NUMBER(16,3),
        out_volt NUMBER(16,3),
        out_current NUMBER(16,3),
        state VARCHAR2(8),
        pf VARCHAR2(8),
        conc_code VARCHAR2(8),
        write_date DATE,
        handle_flag VARCHAR2(8),
        handle_date DATE
        )
        tablespace MPAC_T
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
      dbms_output.put_line('脚本已跳过，因为 T_PF_CP_CONC 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table T_PF_CP_CONC
      is ''充电桩功率因数试验结论''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_PF_CP_CONC.READ_ID
      is ''字段唯一标识''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_PF_CP_CONC.DETECT_TASK_NO
      is ''检定任务编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_PF_CP_CONC.EQUIP_CATEG
      is ''设备类别''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_PF_CP_CONC.SYS_NO
      is ''系统编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_PF_CP_CONC.DETECT_EQUIP_NO
      is ''检定线台编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_PF_CP_CONC.DETECT_UNIT_NO
      is ''检定单元编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_PF_CP_CONC.BAR_CODE
      is ''设备条形码''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_PF_CP_CONC.DETECT_DATE
      is ''检定时间''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_PF_CP_CONC.PORT_CODE
      is ''枪口编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_PF_CP_CONC.PARA_INDEX
      is ''检定序号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_PF_CP_CONC.DETECT_ITEM_POINT
      is ''检定点序号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_PF_CP_CONC.IS_VALID
      is ''有效标志''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_PF_CP_CONC.IN_VOLT
      is ''输入电压(V)''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_PF_CP_CONC.OUT_VOLT
      is ''输出电压(V)''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_PF_CP_CONC.OUT_CURRENT
      is ''输出电流(A)''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_PF_CP_CONC.STATE
      is ''状态 VW_CP_ EFFICIENCY_STATE''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_PF_CP_CONC.PF
      is ''功率因素''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_PF_CP_CONC.CONC_CODE
      is ''检查结论''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_PF_CP_CONC.WRITE_DATE
      is ''检定系统写入时间''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_PF_CP_CONC.HANDLE_FLAG
      is ''处理标记''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_PF_CP_CONC.HANDLE_DATE
      is ''处理时间''
    ';
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_INDEXES U WHERE u.INDEX_NAME = 'PK_T_PF_CP_CONC';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table T_PF_CP_CONC
      add constraint PK_T_PF_CP_CONC primary key (READ_ID)
      using index
      tablespace MPAC_T_IDX
      pctfree 10
      initrans 2
      maxtrans 255
      storage
      (
      initial 64K
      next 1M
      minextents 1
      maxextents unlimited
      )
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 PK_T_PF_CP_CONC 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Sequences U WHERE u.sequence_name = 'SEQ_T_PF_CP_CONC';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      create sequence SEQ_T_PF_CP_CONC
      minvalue 1
      maxvalue 9999999999999999
      start with 8200000000000000
      increment by 1
      cache 20
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 SEQ_T_PF_CP_CONC 已存在。');
    END IF;
END;
/
prompt
prompt 正在处理纪录编号为 8200000000018069 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Tables U WHERE U.TABLE_NAME = 'T_VOLT_RIPPLE_CP_CONC';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
        create table T_VOLT_RIPPLE_CP_CONC
        (
        read_id NUMBER(16) not null,
        detect_task_no VARCHAR2(32),
        equip_categ VARCHAR2(8),
        sys_no VARCHAR2(16),
        detect_equip_no VARCHAR2(32),
        detect_unit_no VARCHAR2(32),
        bar_code VARCHAR2(32),
        detect_date VARCHAR2(32),
        port_code VARCHAR2(16),
        para_index VARCHAR2(32),
        detect_item_point VARCHAR2(8),
        is_valid VARCHAR2(8),
        in_volt NUMBER(16,3),
        out_volt NUMBER(16,3),
        out_current NUMBER(16,3),
        crest_ratio NUMBER(16,3),
        effective_value NUMBER(16,3),
        conc_code VARCHAR2(8),
        write_date DATE,
        handle_flag VARCHAR2(8),
        handle_date DATE
        )
        tablespace MPAC_T
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
      dbms_output.put_line('脚本已跳过，因为 T_VOLT_RIPPLE_CP_CONC 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table T_VOLT_RIPPLE_CP_CONC
      is ''充电桩电压纹波因数试验结论''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_VOLT_RIPPLE_CP_CONC.READ_ID
      is ''字段唯一标识''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_VOLT_RIPPLE_CP_CONC.DETECT_TASK_NO
      is ''检定任务编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_VOLT_RIPPLE_CP_CONC.EQUIP_CATEG
      is ''设备类别''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_VOLT_RIPPLE_CP_CONC.SYS_NO
      is ''系统编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_VOLT_RIPPLE_CP_CONC.DETECT_EQUIP_NO
      is ''检定线台编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_VOLT_RIPPLE_CP_CONC.DETECT_UNIT_NO
      is ''检定单元编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_VOLT_RIPPLE_CP_CONC.BAR_CODE
      is ''设备条形码''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_VOLT_RIPPLE_CP_CONC.DETECT_DATE
      is ''检定时间''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_VOLT_RIPPLE_CP_CONC.PORT_CODE
      is ''枪口编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_VOLT_RIPPLE_CP_CONC.PARA_INDEX
      is ''检定序号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_VOLT_RIPPLE_CP_CONC.DETECT_ITEM_POINT
      is ''检定点序号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_VOLT_RIPPLE_CP_CONC.IS_VALID
      is ''有效标志''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_VOLT_RIPPLE_CP_CONC.IN_VOLT
      is ''输入电压(V)''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_VOLT_RIPPLE_CP_CONC.OUT_VOLT
      is ''输出电压(V)''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_VOLT_RIPPLE_CP_CONC.OUT_CURRENT
      is ''输出电流(A)''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_VOLT_RIPPLE_CP_CONC.CREST_RATIO
      is ''峰值系数(%)''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_VOLT_RIPPLE_CP_CONC.EFFECTIVE_VALUE
      is ''有效值系数(%)''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_VOLT_RIPPLE_CP_CONC.CONC_CODE
      is ''检查结论''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_VOLT_RIPPLE_CP_CONC.WRITE_DATE
      is ''检定系统写入时间''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_VOLT_RIPPLE_CP_CONC.HANDLE_FLAG
      is ''处理标记''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_VOLT_RIPPLE_CP_CONC.HANDLE_DATE
      is ''处理时间''
    ';
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_INDEXES U WHERE u.INDEX_NAME = 'PK_T_VOLT_RIPPLE_CP_CONC';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table T_VOLT_RIPPLE_CP_CONC
      add constraint PK_T_VOLT_RIPPLE_CP_CONC primary key (READ_ID)
      using index
      tablespace MPAC_T_IDX
      pctfree 10
      initrans 2
      maxtrans 255
      storage
      (
      initial 64K
      next 1M
      minextents 1
      maxextents unlimited
      )
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 PK_T_VOLT_RIPPLE_CP_CONC 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Sequences U WHERE u.sequence_name = 'SEQ_T_VOLT_RIPPLE_CP_CONC';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      create sequence SEQ_T_VOLT_RIPPLE_CP_CONC
      minvalue 1
      maxvalue 9999999999999999
      start with 8200000000000000
      increment by 1
      cache 20
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 SEQ_T_VOLT_RIPPLE_CP_CONC 已存在。');
    END IF;
END;
/
prompt
prompt 正在处理纪录编号为 8200000000018070 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Tables U WHERE U.TABLE_NAME = 'T_LOWVOLT_AUXILIARY_CP_CONC';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
        create table T_LOWVOLT_AUXILIARY_CP_CONC
        (
        read_id NUMBER(16) not null,
        detect_task_no VARCHAR2(32),
        equip_categ VARCHAR2(8),
        sys_no VARCHAR2(16),
        detect_equip_no VARCHAR2(32),
        detect_unit_no VARCHAR2(32),
        bar_code VARCHAR2(32),
        detect_date VARCHAR2(32),
        port_code VARCHAR2(16),
        para_index VARCHAR2(32),
        detect_item_point VARCHAR2(8),
        is_valid VARCHAR2(8),
        model VARCHAR2(8),
        out_volt NUMBER(16,3),
        out_current NUMBER(16,3),
        offset NUMBER(16,3),
        conc_code VARCHAR2(8),
        write_date DATE,
        handle_flag VARCHAR2(8),
        handle_date DATE
        )
        tablespace MPAC_T
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
      dbms_output.put_line('脚本已跳过，因为 T_LOWVOLT_AUXILIARY_CP_CONC 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table T_LOWVOLT_AUXILIARY_CP_CONC
      is ''充电桩低压辅助电源试验结论''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_LOWVOLT_AUXILIARY_CP_CONC.READ_ID
      is ''字段唯一标识''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_LOWVOLT_AUXILIARY_CP_CONC.DETECT_TASK_NO
      is ''检定任务编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_LOWVOLT_AUXILIARY_CP_CONC.EQUIP_CATEG
      is ''设备类别''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_LOWVOLT_AUXILIARY_CP_CONC.SYS_NO
      is ''系统编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_LOWVOLT_AUXILIARY_CP_CONC.DETECT_EQUIP_NO
      is ''检定线台编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_LOWVOLT_AUXILIARY_CP_CONC.DETECT_UNIT_NO
      is ''检定单元编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_LOWVOLT_AUXILIARY_CP_CONC.BAR_CODE
      is ''设备条形码''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_LOWVOLT_AUXILIARY_CP_CONC.DETECT_DATE
      is ''检定时间''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_LOWVOLT_AUXILIARY_CP_CONC.PORT_CODE
      is ''枪口编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_LOWVOLT_AUXILIARY_CP_CONC.PARA_INDEX
      is ''检定序号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_LOWVOLT_AUXILIARY_CP_CONC.DETECT_ITEM_POINT
      is ''检定点序号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_LOWVOLT_AUXILIARY_CP_CONC.IS_VALID
      is ''有效标志''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_LOWVOLT_AUXILIARY_CP_CONC.MODEL
      is ''模式  VW_LOWVOLT_AUXILIARY_MODEL''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_LOWVOLT_AUXILIARY_CP_CONC.OUT_VOLT
      is ''输出电压(V)''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_LOWVOLT_AUXILIARY_CP_CONC.OUT_CURRENT
      is ''输出电流(A)''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_LOWVOLT_AUXILIARY_CP_CONC.OFFSET
      is ''偏差(V)''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_LOWVOLT_AUXILIARY_CP_CONC.CONC_CODE
      is ''检查结论''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_LOWVOLT_AUXILIARY_CP_CONC.WRITE_DATE
      is ''检定系统写入时间''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_LOWVOLT_AUXILIARY_CP_CONC.HANDLE_FLAG
      is ''处理标记''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_LOWVOLT_AUXILIARY_CP_CONC.HANDLE_DATE
      is ''处理时间''
    ';
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_INDEXES U WHERE u.INDEX_NAME = 'PK_T_LOWVOLT_AUXILIARY_CP_CONC';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table T_LOWVOLT_AUXILIARY_CP_CONC
      add constraint PK_T_LOWVOLT_AUXILIARY_CP_CONC primary key (READ_ID)
      using index
      tablespace MPAC_T_IDX
      pctfree 10
      initrans 2
      maxtrans 255
      storage
      (
      initial 64K
      next 1M
      minextents 1
      maxextents unlimited
      )
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 PK_T_LOWVOLT_AUXILIARY_CP_CONC 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Sequences U WHERE u.sequence_name = 'SEQ_LOWVOLT_AUXILIARY_CP_CONC';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      create sequence SEQ_LOWVOLT_AUXILIARY_CP_CONC
      minvalue 1
      maxvalue 9999999999999999
      start with 8200000000000000
      increment by 1
      cache 20
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 SEQ_LOWVOLT_AUXILIARY_CP_CONC 已存在。');
    END IF;
END;
/
prompt
prompt 正在处理纪录编号为 8200000000018071 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Tables U WHERE U.TABLE_NAME = 'T_OPEN_PROTECT_CP_CONC';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
        create table T_OPEN_PROTECT_CP_CONC
        (
        read_id NUMBER(16) not null,
        detect_task_no VARCHAR2(32),
        equip_categ VARCHAR2(8),
        sys_no VARCHAR2(16),
        detect_equip_no VARCHAR2(32),
        detect_unit_no VARCHAR2(32),
        bar_code VARCHAR2(32),
        detect_date VARCHAR2(32),
        port_code VARCHAR2(16),
        para_index VARCHAR2(32),
        detect_item_point VARCHAR2(8),
        is_valid VARCHAR2(8),
        detect_content VARCHAR2(8),
        conc_code VARCHAR2(8),
        write_date DATE,
        handle_flag VARCHAR2(8),
        handle_date DATE
        )
        tablespace MPAC_T
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
      dbms_output.put_line('脚本已跳过，因为 T_OPEN_PROTECT_CP_CONC 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table T_OPEN_PROTECT_CP_CONC
      is ''充电桩开门保护试验结论表''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_OPEN_PROTECT_CP_CONC.READ_ID
      is ''字段唯一标识''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_OPEN_PROTECT_CP_CONC.DETECT_TASK_NO
      is ''检定任务编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_OPEN_PROTECT_CP_CONC.EQUIP_CATEG
      is ''设备类别''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_OPEN_PROTECT_CP_CONC.SYS_NO
      is ''系统编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_OPEN_PROTECT_CP_CONC.DETECT_EQUIP_NO
      is ''检定线台编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_OPEN_PROTECT_CP_CONC.DETECT_UNIT_NO
      is ''检定单元编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_OPEN_PROTECT_CP_CONC.BAR_CODE
      is ''设备条形码''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_OPEN_PROTECT_CP_CONC.DETECT_DATE
      is ''检定时间''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_OPEN_PROTECT_CP_CONC.PORT_CODE
      is ''枪口编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_OPEN_PROTECT_CP_CONC.PARA_INDEX
      is ''检定序号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_OPEN_PROTECT_CP_CONC.DETECT_ITEM_POINT
      is ''检定点序号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_OPEN_PROTECT_CP_CONC.IS_VALID
      is ''有效标志''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_OPEN_PROTECT_CP_CONC.DETECT_CONTENT
      is ''测试项目  VW_OPEN_PROTECT_CONC_CODE''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_OPEN_PROTECT_CP_CONC.CONC_CODE
      is ''检查结论''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_OPEN_PROTECT_CP_CONC.WRITE_DATE
      is ''检定系统写入时间''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_OPEN_PROTECT_CP_CONC.HANDLE_FLAG
      is ''处理标记''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_OPEN_PROTECT_CP_CONC.HANDLE_DATE
      is ''处理时间''
    ';
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_INDEXES U WHERE u.INDEX_NAME = 'PK_T_OPEN_PROTECT_CP_CONC';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table T_OPEN_PROTECT_CP_CONC
      add constraint PK_T_OPEN_PROTECT_CP_CONC primary key (READ_ID)
      using index
      tablespace MPAC_T_IDX
      pctfree 10
      initrans 2
      maxtrans 255
      storage
      (
      initial 64K
      next 1M
      minextents 1
      maxextents unlimited
      )
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 PK_T_OPEN_PROTECT_CP_CONC 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Sequences U WHERE u.sequence_name = 'SEQ_T_OPEN_PROTECT_CP_CONC';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      create sequence SEQ_T_OPEN_PROTECT_CP_CONC
      minvalue 1
      maxvalue 9999999999999999
      start with 8200000000000000
      increment by 1
      cache 20
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 SEQ_T_OPEN_PROTECT_CP_CONC 已存在。');
    END IF;
END;
/
prompt
prompt 正在处理纪录编号为 8200000000018072 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Tables U WHERE U.TABLE_NAME = 'T_SIGNAL_BREAK_CP_CONC';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
        create table T_SIGNAL_BREAK_CP_CONC
        (
        read_id NUMBER(16) not null,
        detect_task_no VARCHAR2(32),
        equip_categ VARCHAR2(8),
        sys_no VARCHAR2(16),
        detect_equip_no VARCHAR2(32),
        detect_unit_no VARCHAR2(32),
        bar_code VARCHAR2(32),
        detect_date VARCHAR2(32),
        port_code VARCHAR2(16),
        para_index VARCHAR2(32),
        detect_item_point VARCHAR2(8),
        is_valid VARCHAR2(8),
        state VARCHAR2(8),
        out_volt NUMBER(16,3),
        out_current NUMBER(16,3),
        time NUMBER(16,3),
        break_time NUMBER(16,3),
        unlock_volt NUMBER(16,3),
        conc_code VARCHAR2(8),
        write_date DATE,
        handle_flag VARCHAR2(8),
        handle_date DATE
        )
        tablespace MPAC_T
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
      dbms_output.put_line('脚本已跳过，因为 T_SIGNAL_BREAK_CP_CONC 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table T_SIGNAL_BREAK_CP_CONC
      is ''充电桩连接检测信号断开试验结论''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_SIGNAL_BREAK_CP_CONC.READ_ID
      is ''字段唯一标识''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_SIGNAL_BREAK_CP_CONC.DETECT_TASK_NO
      is ''检定任务编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_SIGNAL_BREAK_CP_CONC.EQUIP_CATEG
      is ''设备类别''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_SIGNAL_BREAK_CP_CONC.SYS_NO
      is ''系统编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_SIGNAL_BREAK_CP_CONC.DETECT_EQUIP_NO
      is ''检定线台编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_SIGNAL_BREAK_CP_CONC.DETECT_UNIT_NO
      is ''检定单元编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_SIGNAL_BREAK_CP_CONC.BAR_CODE
      is ''设备条形码''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_SIGNAL_BREAK_CP_CONC.DETECT_DATE
      is ''检定时间''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_SIGNAL_BREAK_CP_CONC.PORT_CODE
      is ''枪口编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_SIGNAL_BREAK_CP_CONC.PARA_INDEX
      is ''检定序号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_SIGNAL_BREAK_CP_CONC.DETECT_ITEM_POINT
      is ''检定点序号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_SIGNAL_BREAK_CP_CONC.IS_VALID
      is ''有效标志''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_SIGNAL_BREAK_CP_CONC.STATE
      is ''充电状态 VW_SIGNAL_BREAK_STATE''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_SIGNAL_BREAK_CP_CONC.OUT_VOLT
      is ''输出电压(V)''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_SIGNAL_BREAK_CP_CONC.OUT_CURRENT
      is ''输出电流(A)''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_SIGNAL_BREAK_CP_CONC.TIME
      is ''电流降至5A以下时间（ms）''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_SIGNAL_BREAK_CP_CONC.BREAK_TIME
      is ''断开K1和K2时间(ms)''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_SIGNAL_BREAK_CP_CONC.UNLOCK_VOLT
      is ''电池锁解锁时车辆接口电压（V）''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_SIGNAL_BREAK_CP_CONC.CONC_CODE
      is ''检查结论''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_SIGNAL_BREAK_CP_CONC.WRITE_DATE
      is ''检定系统写入时间''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_SIGNAL_BREAK_CP_CONC.HANDLE_FLAG
      is ''处理标记''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_SIGNAL_BREAK_CP_CONC.HANDLE_DATE
      is ''处理时间''
    ';
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_INDEXES U WHERE u.INDEX_NAME = 'PK_T_SIGNAL_BREAK_CP_CONC';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table T_SIGNAL_BREAK_CP_CONC
      add constraint PK_T_SIGNAL_BREAK_CP_CONC primary key (READ_ID)
      using index
      tablespace MPAC_T_IDX
      pctfree 10
      initrans 2
      maxtrans 255
      storage
      (
      initial 64K
      next 1M
      minextents 1
      maxextents unlimited
      )
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 PK_T_SIGNAL_BREAK_CP_CONC 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Sequences U WHERE u.sequence_name = 'SEQ_T_SIGNAL_BREAK_CP_CONC';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      create sequence SEQ_T_SIGNAL_BREAK_CP_CONC
      minvalue 1
      maxvalue 9999999999999999
      start with 8200000000000000
      increment by 1
      cache 20
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 SEQ_T_SIGNAL_BREAK_CP_CONC 已存在。');
    END IF;
END;
/
prompt
prompt 正在处理纪录编号为 8200000000018073 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Tables U WHERE U.TABLE_NAME = 'T_INSULATE_ABNORMAL_CP_CONC';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
        create table T_INSULATE_ABNORMAL_CP_CONC
        (
        read_id NUMBER(16) not null,
        detect_task_no VARCHAR2(32),
        equip_categ VARCHAR2(8),
        sys_no VARCHAR2(16),
        detect_equip_no VARCHAR2(32),
        detect_unit_no VARCHAR2(32),
        bar_code VARCHAR2(32),
        detect_date VARCHAR2(32),
        port_code VARCHAR2(16),
        para_index VARCHAR2(32),
        detect_item_point VARCHAR2(8),
        is_valid VARCHAR2(8),
        detect_content VARCHAR2(8),
        conc_code VARCHAR2(8),
        write_date DATE,
        handle_flag VARCHAR2(8),
        handle_date DATE
        )
        tablespace MPAC_T
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
      dbms_output.put_line('脚本已跳过，因为 T_INSULATE_ABNORMAL_CP_CONC 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table T_INSULATE_ABNORMAL_CP_CONC
      is ''充电桩绝缘异常试验结论''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_INSULATE_ABNORMAL_CP_CONC.READ_ID
      is ''字段唯一标识''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_INSULATE_ABNORMAL_CP_CONC.DETECT_TASK_NO
      is ''检定任务编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_INSULATE_ABNORMAL_CP_CONC.EQUIP_CATEG
      is ''设备类别''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_INSULATE_ABNORMAL_CP_CONC.SYS_NO
      is ''系统编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_INSULATE_ABNORMAL_CP_CONC.DETECT_EQUIP_NO
      is ''检定线台编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_INSULATE_ABNORMAL_CP_CONC.DETECT_UNIT_NO
      is ''检定单元编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_INSULATE_ABNORMAL_CP_CONC.BAR_CODE
      is ''设备条形码''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_INSULATE_ABNORMAL_CP_CONC.DETECT_DATE
      is ''检定时间''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_INSULATE_ABNORMAL_CP_CONC.PORT_CODE
      is ''枪口编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_INSULATE_ABNORMAL_CP_CONC.PARA_INDEX
      is ''检定序号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_INSULATE_ABNORMAL_CP_CONC.DETECT_ITEM_POINT
      is ''检定点序号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_INSULATE_ABNORMAL_CP_CONC.IS_VALID
      is ''有效标志''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_INSULATE_ABNORMAL_CP_CONC.DETECT_CONTENT
      is ''测试项目 VW_INSULATE_ABNORMAL_CONC_CODE''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_INSULATE_ABNORMAL_CP_CONC.CONC_CODE
      is ''检查结论''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_INSULATE_ABNORMAL_CP_CONC.WRITE_DATE
      is ''检定系统写入时间''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_INSULATE_ABNORMAL_CP_CONC.HANDLE_FLAG
      is ''处理标记''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_INSULATE_ABNORMAL_CP_CONC.HANDLE_DATE
      is ''处理时间''
    ';
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_INDEXES U WHERE u.INDEX_NAME = 'PK_T_INSULATE_ABNORMAL_CP_CONC';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table T_INSULATE_ABNORMAL_CP_CONC
      add constraint PK_T_INSULATE_ABNORMAL_CP_CONC primary key (READ_ID)
      using index
      tablespace MPAC_T_IDX
      pctfree 10
      initrans 2
      maxtrans 255
      storage
      (
      initial 64K
      next 1M
      minextents 1
      maxextents unlimited
      )
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 PK_T_INSULATE_ABNORMAL_CP_CONC 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Sequences U WHERE u.sequence_name = 'SEQ_INSULATE_ABNORMAL_CP_CONC';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      create sequence SEQ_INSULATE_ABNORMAL_CP_CONC
      minvalue 1
      maxvalue 9999999999999999
      start with 8200000000000000
      increment by 1
      cache 20
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 SEQ_INSULATE_ABNORMAL_CP_CONC 已存在。');
    END IF;
END;
/
prompt
prompt 正在处理纪录编号为 8200000000018080 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Tables U WHERE U.TABLE_NAME = 'T_COMM_BREAK_CP_CONC';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
        create table T_COMM_BREAK_CP_CONC
        (
        read_id NUMBER(16) not null,
        detect_task_no VARCHAR2(32),
        equip_categ VARCHAR2(8),
        sys_no VARCHAR2(16),
        detect_equip_no VARCHAR2(32),
        detect_unit_no VARCHAR2(32),
        bar_code VARCHAR2(32),
        detect_date VARCHAR2(32),
        port_code VARCHAR2(16),
        para_index VARCHAR2(32),
        detect_item_point VARCHAR2(8),
        is_valid VARCHAR2(8),
        state VARCHAR2(8),
        out_volt NUMBER(16,3),
        out_current NUMBER(16,3),
        overtime_time NUMBER(16,3),
        break_time NUMBER(16,3),
        is_reconnect VARCHAR2(8),
        is_warn VARCHAR2(8),
        conc_code VARCHAR2(8),
        write_date DATE,
        handle_flag VARCHAR2(8),
        handle_date DATE
        )
        tablespace MPAC_T
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
      dbms_output.put_line('脚本已跳过，因为 T_COMM_BREAK_CP_CONC 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table T_COMM_BREAK_CP_CONC
      is ''充电桩通信中断试验结论''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_COMM_BREAK_CP_CONC.READ_ID
      is ''字段唯一标识''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_COMM_BREAK_CP_CONC.DETECT_TASK_NO
      is ''检定任务编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_COMM_BREAK_CP_CONC.EQUIP_CATEG
      is ''设备类别''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_COMM_BREAK_CP_CONC.SYS_NO
      is ''系统编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_COMM_BREAK_CP_CONC.DETECT_EQUIP_NO
      is ''检定线台编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_COMM_BREAK_CP_CONC.DETECT_UNIT_NO
      is ''检定单元编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_COMM_BREAK_CP_CONC.BAR_CODE
      is ''设备条形码''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_COMM_BREAK_CP_CONC.DETECT_DATE
      is ''检定时间''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_COMM_BREAK_CP_CONC.PORT_CODE
      is ''枪口编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_COMM_BREAK_CP_CONC.PARA_INDEX
      is ''检定序号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_COMM_BREAK_CP_CONC.DETECT_ITEM_POINT
      is ''检定点序号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_COMM_BREAK_CP_CONC.IS_VALID
      is ''有效标志''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_COMM_BREAK_CP_CONC.STATE
      is ''充电状态  VW_COMM_BREAK_STATE''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_COMM_BREAK_CP_CONC.OUT_VOLT
      is ''输出电压(V)''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_COMM_BREAK_CP_CONC.OUT_CURRENT
      is ''输出电流(A)''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_COMM_BREAK_CP_CONC.OVERTIME_TIME
      is ''通信超时停止输出时间(s)''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_COMM_BREAK_CP_CONC.BREAK_TIME
      is ''通信中断停止辅助电源时间(s)''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_COMM_BREAK_CP_CONC.IS_RECONNECT
      is ''是否有三次握手重连''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_COMM_BREAK_CP_CONC.IS_WARN
      is ''是否告警提示''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_COMM_BREAK_CP_CONC.CONC_CODE
      is ''检查结论''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_COMM_BREAK_CP_CONC.WRITE_DATE
      is ''检定系统写入时间''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_COMM_BREAK_CP_CONC.HANDLE_FLAG
      is ''处理标记''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_COMM_BREAK_CP_CONC.HANDLE_DATE
      is ''处理时间''
    ';
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_INDEXES U WHERE u.INDEX_NAME = 'PK_T_COMM_BREAK_CP_CONC';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table T_COMM_BREAK_CP_CONC
      add constraint PK_T_COMM_BREAK_CP_CONC primary key (READ_ID)
      using index
      tablespace MPAC_T_IDX
      pctfree 10
      initrans 2
      maxtrans 255
      storage
      (
      initial 64K
      next 1M
      minextents 1
      maxextents unlimited
      )
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 PK_T_COMM_BREAK_CP_CONC 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Sequences U WHERE u.sequence_name = 'SEQ_T_COMM_BREAK_CP_CONC';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      create sequence SEQ_T_COMM_BREAK_CP_CONC
      minvalue 1
      maxvalue 9999999999999999
      start with 8200000000000000
      increment by 1
      cache 20
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 SEQ_T_COMM_BREAK_CP_CONC 已存在。');
    END IF;
END;
/
prompt
prompt 正在处理纪录编号为 8200000000018091 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Tables U WHERE U.TABLE_NAME = 'T_PROTECT_LANDING_CP_CONC';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
        create table T_PROTECT_LANDING_CP_CONC
        (
        read_id NUMBER(16) not null,
        detect_task_no VARCHAR2(32),
        equip_categ VARCHAR2(8),
        sys_no VARCHAR2(16),
        detect_equip_no VARCHAR2(32),
        detect_unit_no VARCHAR2(32),
        bar_code VARCHAR2(32),
        detect_date VARCHAR2(32),
        port_code VARCHAR2(16),
        para_index VARCHAR2(32),
        detect_item_point VARCHAR2(8),
        is_valid VARCHAR2(8),
        state VARCHAR2(8),
        out_volt NUMBER(16,3),
        out_current NUMBER(16,3),
        break_time NUMBER(16,3),
        unlock_volt NUMBER(16,3),
        conc_code VARCHAR2(8),
        write_date DATE,
        handle_flag VARCHAR2(8),
        handle_date DATE
        )
        tablespace MPAC_T
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
      dbms_output.put_line('脚本已跳过，因为 T_PROTECT_LANDING_CP_CONC 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table T_PROTECT_LANDING_CP_CONC
      is ''充电桩保护接地连续性试验结论（直流）表''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_PROTECT_LANDING_CP_CONC.READ_ID
      is ''字段唯一标识''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_PROTECT_LANDING_CP_CONC.DETECT_TASK_NO
      is ''检定任务编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_PROTECT_LANDING_CP_CONC.EQUIP_CATEG
      is ''设备类别''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_PROTECT_LANDING_CP_CONC.SYS_NO
      is ''系统编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_PROTECT_LANDING_CP_CONC.DETECT_EQUIP_NO
      is ''检定线台编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_PROTECT_LANDING_CP_CONC.DETECT_UNIT_NO
      is ''检定单元编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_PROTECT_LANDING_CP_CONC.BAR_CODE
      is ''设备条形码''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_PROTECT_LANDING_CP_CONC.DETECT_DATE
      is ''检定时间''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_PROTECT_LANDING_CP_CONC.PORT_CODE
      is ''枪口编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_PROTECT_LANDING_CP_CONC.PARA_INDEX
      is ''检定序号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_PROTECT_LANDING_CP_CONC.DETECT_ITEM_POINT
      is ''检定点序号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_PROTECT_LANDING_CP_CONC.IS_VALID
      is ''有效标志''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_PROTECT_LANDING_CP_CONC.STATE
      is ''充电状态  VW_PROTECT_LANDING_STATE''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_PROTECT_LANDING_CP_CONC.OUT_VOLT
      is ''输出电压(V)''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_PROTECT_LANDING_CP_CONC.OUT_CURRENT
      is ''输出电流(A)''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_PROTECT_LANDING_CP_CONC.BREAK_TIME
      is ''断开K1和K2时间(ms)''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_PROTECT_LANDING_CP_CONC.UNLOCK_VOLT
      is ''电池锁解锁时车辆接口电压（V）''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_PROTECT_LANDING_CP_CONC.CONC_CODE
      is ''检查结论''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_PROTECT_LANDING_CP_CONC.WRITE_DATE
      is ''检定系统写入时间''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_PROTECT_LANDING_CP_CONC.HANDLE_FLAG
      is ''处理标记''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_PROTECT_LANDING_CP_CONC.HANDLE_DATE
      is ''处理时间''
    ';
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_INDEXES U WHERE u.INDEX_NAME = 'PK_T_PROTECT_LANDING_CP_CONC';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table T_PROTECT_LANDING_CP_CONC
      add constraint PK_T_PROTECT_LANDING_CP_CONC primary key (READ_ID)
      using index
      tablespace MPAC_T_IDX
      pctfree 10
      initrans 2
      maxtrans 255
      storage
      (
      initial 64K
      next 1M
      minextents 1
      maxextents unlimited
      )
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 PK_T_PROTECT_LANDING_CP_CONC 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Sequences U WHERE u.sequence_name = 'SEQ_T_PROTECT_LANDING_CP_CONC';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      create sequence SEQ_T_PROTECT_LANDING_CP_CONC
      minvalue 1
      maxvalue 9999999999999999
      start with 8200000000000000
      increment by 1
      cache 20
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 SEQ_T_PROTECT_LANDING_CP_CONC 已存在。');
    END IF;
END;
/
prompt
prompt 正在处理纪录编号为 8200000000018093 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Tables U WHERE U.TABLE_NAME = 'T_POWERUP_MESSAGE_CP_CONC';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
        create table T_POWERUP_MESSAGE_CP_CONC
        (
        read_id NUMBER(16) not null,
        detect_task_no VARCHAR2(32),
        equip_categ VARCHAR2(8),
        sys_no VARCHAR2(16),
        detect_equip_no VARCHAR2(32),
        detect_unit_no VARCHAR2(32),
        bar_code VARCHAR2(32),
        detect_date VARCHAR2(32),
        port_code VARCHAR2(16),
        para_index VARCHAR2(32),
        detect_item_point VARCHAR2(8),
        is_valid VARCHAR2(8),
        detect_content VARCHAR2(8),
        conc_code VARCHAR2(8),
        write_date DATE,
        handle_flag VARCHAR2(8),
        handle_date DATE
        )
        tablespace MPAC_T
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
      dbms_output.put_line('脚本已跳过，因为 T_POWERUP_MESSAGE_CP_CONC 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table T_POWERUP_MESSAGE_CP_CONC
      is ''充电桩低压辅助上电及充电握手阶段报文测试结论表''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_POWERUP_MESSAGE_CP_CONC.READ_ID
      is ''字段唯一标识''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_POWERUP_MESSAGE_CP_CONC.DETECT_TASK_NO
      is ''检定任务编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_POWERUP_MESSAGE_CP_CONC.EQUIP_CATEG
      is ''设备类别''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_POWERUP_MESSAGE_CP_CONC.SYS_NO
      is ''系统编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_POWERUP_MESSAGE_CP_CONC.DETECT_EQUIP_NO
      is ''检定线台编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_POWERUP_MESSAGE_CP_CONC.DETECT_UNIT_NO
      is ''检定单元编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_POWERUP_MESSAGE_CP_CONC.BAR_CODE
      is ''设备条形码''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_POWERUP_MESSAGE_CP_CONC.DETECT_DATE
      is ''检定时间''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_POWERUP_MESSAGE_CP_CONC.PORT_CODE
      is ''枪口编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_POWERUP_MESSAGE_CP_CONC.PARA_INDEX
      is ''检定序号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_POWERUP_MESSAGE_CP_CONC.DETECT_ITEM_POINT
      is ''检定点序号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_POWERUP_MESSAGE_CP_CONC.IS_VALID
      is ''有效标志''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_POWERUP_MESSAGE_CP_CONC.DETECT_CONTENT
      is ''测试项目  VW_POWERUP_MESSAGE_CONC_CODE''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_POWERUP_MESSAGE_CP_CONC.CONC_CODE
      is ''检查结论''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_POWERUP_MESSAGE_CP_CONC.WRITE_DATE
      is ''检定系统写入时间''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_POWERUP_MESSAGE_CP_CONC.HANDLE_FLAG
      is ''处理标记''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_POWERUP_MESSAGE_CP_CONC.HANDLE_DATE
      is ''处理时间''
    ';
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_INDEXES U WHERE u.INDEX_NAME = 'PK_T_POWERUP_MESSAGE_CP_CONC';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table T_POWERUP_MESSAGE_CP_CONC
      add constraint PK_T_POWERUP_MESSAGE_CP_CONC primary key (READ_ID)
      using index
      tablespace MPAC_T_IDX
      pctfree 10
      initrans 2
      maxtrans 255
      storage
      (
      initial 64K
      next 1M
      minextents 1
      maxextents unlimited
      )
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 PK_T_POWERUP_MESSAGE_CP_CONC 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Sequences U WHERE u.sequence_name = 'SEQ_T_POWERUP_MESSAGE_CP_CONC';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      create sequence SEQ_T_POWERUP_MESSAGE_CP_CONC
      minvalue 1
      maxvalue 9999999999999999
      start with 8200000000000000
      increment by 1
      cache 20
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 SEQ_T_POWERUP_MESSAGE_CP_CONC 已存在。');
    END IF;
END;
/
prompt
prompt 正在处理纪录编号为 8200000000018095 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Tables U WHERE U.TABLE_NAME = 'T_CONFIG_MSG_CP_CONC';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
        create table T_CONFIG_MSG_CP_CONC
        (
        read_id NUMBER(16) not null,
        detect_task_no VARCHAR2(32),
        equip_categ VARCHAR2(8),
        sys_no VARCHAR2(16),
        detect_equip_no VARCHAR2(32),
        detect_unit_no VARCHAR2(32),
        bar_code VARCHAR2(32),
        detect_date VARCHAR2(32),
        port_code VARCHAR2(16),
        para_index VARCHAR2(32),
        detect_item_point VARCHAR2(8),
        is_valid VARCHAR2(8),
        detect_content VARCHAR2(8),
        conc_code VARCHAR2(8),
        write_date DATE,
        handle_flag VARCHAR2(8),
        handle_date DATE
        )
        tablespace MPAC_T
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
      dbms_output.put_line('脚本已跳过，因为 T_CONFIG_MSG_CP_CONC 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table T_CONFIG_MSG_CP_CONC
      is ''充电桩充电配置阶段报文测试结论表''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_CONFIG_MSG_CP_CONC.READ_ID
      is ''字段唯一标识''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_CONFIG_MSG_CP_CONC.DETECT_TASK_NO
      is ''检定任务编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_CONFIG_MSG_CP_CONC.EQUIP_CATEG
      is ''设备类别''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_CONFIG_MSG_CP_CONC.SYS_NO
      is ''系统编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_CONFIG_MSG_CP_CONC.DETECT_EQUIP_NO
      is ''检定线台编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_CONFIG_MSG_CP_CONC.DETECT_UNIT_NO
      is ''检定单元编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_CONFIG_MSG_CP_CONC.BAR_CODE
      is ''设备条形码''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_CONFIG_MSG_CP_CONC.DETECT_DATE
      is ''检定时间''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_CONFIG_MSG_CP_CONC.PORT_CODE
      is ''枪口编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_CONFIG_MSG_CP_CONC.PARA_INDEX
      is ''检定序号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_CONFIG_MSG_CP_CONC.DETECT_ITEM_POINT
      is ''检定点序号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_CONFIG_MSG_CP_CONC.IS_VALID
      is ''有效标志''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_CONFIG_MSG_CP_CONC.DETECT_CONTENT
      is ''测试项目  VW_CONFIG_MSG_CONC_CODE''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_CONFIG_MSG_CP_CONC.CONC_CODE
      is ''检查结论''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_CONFIG_MSG_CP_CONC.WRITE_DATE
      is ''检定系统写入时间''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_CONFIG_MSG_CP_CONC.HANDLE_FLAG
      is ''处理标记''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_CONFIG_MSG_CP_CONC.HANDLE_DATE
      is ''处理时间''
    ';
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_INDEXES U WHERE u.INDEX_NAME = 'PK_T_CONFIG_MSG_CP_CONC';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table T_CONFIG_MSG_CP_CONC
      add constraint PK_T_CONFIG_MSG_CP_CONC primary key (READ_ID)
      using index
      tablespace MPAC_T_IDX
      pctfree 10
      initrans 2
      maxtrans 255
      storage
      (
      initial 64K
      next 1M
      minextents 1
      maxextents unlimited
      )
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 PK_T_CONFIG_MSG_CP_CONC 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Sequences U WHERE u.sequence_name = 'SEQ_T_CONFIG_MSG_CP_CONC';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      create sequence SEQ_T_CONFIG_MSG_CP_CONC
      minvalue 1
      maxvalue 9999999999999999
      start with 8200000000000000
      increment by 1
      cache 20
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 SEQ_T_CONFIG_MSG_CP_CONC 已存在。');
    END IF;
END;
/
prompt
prompt 正在处理纪录编号为 8200000000018099 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Tables U WHERE U.TABLE_NAME = 'T_CHARGE_MEAASGE_CP_CONC';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
        create table T_CHARGE_MEAASGE_CP_CONC
        (
        read_id NUMBER(16) not null,
        detect_task_no VARCHAR2(32),
        equip_categ VARCHAR2(8),
        sys_no VARCHAR2(16),
        detect_equip_no VARCHAR2(32),
        detect_unit_no VARCHAR2(32),
        bar_code VARCHAR2(32),
        detect_date VARCHAR2(32),
        port_code VARCHAR2(16),
        para_index VARCHAR2(32),
        detect_item_point VARCHAR2(8),
        is_valid VARCHAR2(8),
        detect_content VARCHAR2(8),
        conc_code VARCHAR2(8),
        write_date DATE,
        handle_flag VARCHAR2(8),
        handle_date DATE
        )
        tablespace MPAC_T
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
      dbms_output.put_line('脚本已跳过，因为 T_CHARGE_MEAASGE_CP_CONC 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table T_CHARGE_MEAASGE_CP_CONC
      is ''充电桩充电阶段报文测试结论表''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_CHARGE_MEAASGE_CP_CONC.READ_ID
      is ''字段唯一标识''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_CHARGE_MEAASGE_CP_CONC.DETECT_TASK_NO
      is ''检定任务编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_CHARGE_MEAASGE_CP_CONC.EQUIP_CATEG
      is ''设备类别''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_CHARGE_MEAASGE_CP_CONC.SYS_NO
      is ''系统编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_CHARGE_MEAASGE_CP_CONC.DETECT_EQUIP_NO
      is ''检定线台编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_CHARGE_MEAASGE_CP_CONC.DETECT_UNIT_NO
      is ''检定单元编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_CHARGE_MEAASGE_CP_CONC.BAR_CODE
      is ''设备条形码''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_CHARGE_MEAASGE_CP_CONC.DETECT_DATE
      is ''检定时间''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_CHARGE_MEAASGE_CP_CONC.PORT_CODE
      is ''枪口编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_CHARGE_MEAASGE_CP_CONC.PARA_INDEX
      is ''检定序号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_CHARGE_MEAASGE_CP_CONC.DETECT_ITEM_POINT
      is ''检定点序号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_CHARGE_MEAASGE_CP_CONC.IS_VALID
      is ''有效标志''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_CHARGE_MEAASGE_CP_CONC.DETECT_CONTENT
      is ''测试项目  VW_CHARGE_MEAASGE_CONC_CODE''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_CHARGE_MEAASGE_CP_CONC.CONC_CODE
      is ''检查结论''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_CHARGE_MEAASGE_CP_CONC.WRITE_DATE
      is ''检定系统写入时间''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_CHARGE_MEAASGE_CP_CONC.HANDLE_FLAG
      is ''处理标记''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_CHARGE_MEAASGE_CP_CONC.HANDLE_DATE
      is ''处理时间''
    ';
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_INDEXES U WHERE u.INDEX_NAME = 'PK_T_CHARGE_MEAASGE_CP_CONC';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table T_CHARGE_MEAASGE_CP_CONC
      add constraint PK_T_CHARGE_MEAASGE_CP_CONC primary key (READ_ID)
      using index
      tablespace MPAC_T_IDX
      pctfree 10
      initrans 2
      maxtrans 255
      storage
      (
      initial 64K
      next 1M
      minextents 1
      maxextents unlimited
      )
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 PK_T_CHARGE_MEAASGE_CP_CONC 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Sequences U WHERE u.sequence_name = 'SEQ_T_CHARGE_MEAASGE_CP_CONC';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      create sequence SEQ_T_CHARGE_MEAASGE_CP_CONC
      minvalue 1
      maxvalue 9999999999999999
      start with 8200000000000000
      increment by 1
      cache 20
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 SEQ_T_CHARGE_MEAASGE_CP_CONC 已存在。');
    END IF;
END;
/
prompt
prompt 正在处理纪录编号为 8200000000018101 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Tables U WHERE U.TABLE_NAME = 'T_CHARGEEND_MEAASGE_CP_CONC';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
        create table T_CHARGEEND_MEAASGE_CP_CONC
        (
        read_id NUMBER(16) not null,
        detect_task_no VARCHAR2(32),
        equip_categ VARCHAR2(8),
        sys_no VARCHAR2(16),
        detect_equip_no VARCHAR2(32),
        detect_unit_no VARCHAR2(32),
        bar_code VARCHAR2(32),
        detect_date VARCHAR2(32),
        port_code VARCHAR2(16),
        para_index VARCHAR2(32),
        detect_item_point VARCHAR2(8),
        is_valid VARCHAR2(8),
        detect_content VARCHAR2(8),
        conc_code VARCHAR2(8),
        write_date DATE,
        handle_flag VARCHAR2(8),
        handle_date DATE
        )
        tablespace MPAC_T
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
      dbms_output.put_line('脚本已跳过，因为 T_CHARGEEND_MEAASGE_CP_CONC 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table T_CHARGEEND_MEAASGE_CP_CONC
      is ''充电桩充电结束阶段报文测试结论表''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_CHARGEEND_MEAASGE_CP_CONC.READ_ID
      is ''字段唯一标识''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_CHARGEEND_MEAASGE_CP_CONC.DETECT_TASK_NO
      is ''检定任务编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_CHARGEEND_MEAASGE_CP_CONC.EQUIP_CATEG
      is ''设备类别''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_CHARGEEND_MEAASGE_CP_CONC.SYS_NO
      is ''系统编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_CHARGEEND_MEAASGE_CP_CONC.DETECT_EQUIP_NO
      is ''检定线台编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_CHARGEEND_MEAASGE_CP_CONC.DETECT_UNIT_NO
      is ''检定单元编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_CHARGEEND_MEAASGE_CP_CONC.BAR_CODE
      is ''设备条形码''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_CHARGEEND_MEAASGE_CP_CONC.DETECT_DATE
      is ''检定时间''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_CHARGEEND_MEAASGE_CP_CONC.PORT_CODE
      is ''枪口编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_CHARGEEND_MEAASGE_CP_CONC.PARA_INDEX
      is ''检定序号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_CHARGEEND_MEAASGE_CP_CONC.DETECT_ITEM_POINT
      is ''检定点序号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_CHARGEEND_MEAASGE_CP_CONC.IS_VALID
      is ''有效标志''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_CHARGEEND_MEAASGE_CP_CONC.DETECT_CONTENT
      is ''测试项目 VW_CHARGEEND_MEAASGE_CONC_CODE''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_CHARGEEND_MEAASGE_CP_CONC.CONC_CODE
      is ''检查结论''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_CHARGEEND_MEAASGE_CP_CONC.WRITE_DATE
      is ''检定系统写入时间''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_CHARGEEND_MEAASGE_CP_CONC.HANDLE_FLAG
      is ''处理标记''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_CHARGEEND_MEAASGE_CP_CONC.HANDLE_DATE
      is ''处理时间''
    ';
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_INDEXES U WHERE u.INDEX_NAME = 'PK_T_CHARGEEND_MEAASGE_CP_CONC';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table T_CHARGEEND_MEAASGE_CP_CONC
      add constraint PK_T_CHARGEEND_MEAASGE_CP_CONC primary key (READ_ID)
      using index
      tablespace MPAC_T_IDX
      pctfree 10
      initrans 2
      maxtrans 255
      storage
      (
      initial 64K
      next 1M
      minextents 1
      maxextents unlimited
      )
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 PK_T_CHARGEEND_MEAASGE_CP_CONC 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Sequences U WHERE u.sequence_name = 'SEQ_CHARGEEND_MEAASGE_CP_CONC';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      create sequence SEQ_CHARGEEND_MEAASGE_CP_CONC
      minvalue 1
      maxvalue 9999999999999999
      start with 8200000000000000
      increment by 1
      cache 20
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 SEQ_CHARGEEND_MEAASGE_CP_CONC 已存在。');
    END IF;
END;
/
prompt
prompt 正在处理纪录编号为 8200000000018111 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    EXECUTE IMMEDIATE
    '
      create or replace synonym MT_WIRE_CP_CONC  for MT_WIRE_CP_CONC@SXYKJD
    ';
    EXECUTE IMMEDIATE
    '
      create or replace synonym MT_VOLT_RIPPLE_CP_CONC  for MT_VOLT_RIPPLE_CP_CONC@SXYKJD
    ';
    EXECUTE IMMEDIATE
    '
      create or replace synonym MT_VOLT_PRECISION_CP_CONC  for MT_VOLT_PRECISION_CP_CONC@SXYKJD
    ';
    EXECUTE IMMEDIATE
    '
      create or replace synonym MT_VOLT_LOSS_CP_CONC  for MT_VOLT_LOSS_CP_CONC@SXYKJD
    ';
    EXECUTE IMMEDIATE
    '
      create or replace synonym MT_STANDBY_POWER_CP_CONC  for MT_STANDBY_POWER_CP_CONC@SXYKJD
    ';
    EXECUTE IMMEDIATE
    '
      create or replace synonym MT_SIGNAL_BREAK_CP_CONC  for MT_SIGNAL_BREAK_CP_CONC@SXYKJD
    ';
    EXECUTE IMMEDIATE
    '
      create or replace synonym MT_SIGN_CP_CONC  for MT_SIGN_CP_CONC@SXYKJD
    ';
    EXECUTE IMMEDIATE
    '
      create or replace synonym MT_SCRAM_FUNCTION_CP_CONC  for MT_SCRAM_FUNCTION_CP_CONC@SXYKJD
    ';
    EXECUTE IMMEDIATE
    '
      create or replace synonym MT_SCP_CP_CONC  for MT_SCP_CP_CONC@SXYKJD
    ';
    EXECUTE IMMEDIATE
    '
      create or replace synonym MT_PWM_CP_CONC  for MT_PWM_CP_CONC@SXYKJD
    ';
    EXECUTE IMMEDIATE
    '
      create or replace synonym MT_PROTECT_LANDING_CP_CONC  for MT_PROTECT_LANDING_CP_CONC@SXYKJD
    ';
    EXECUTE IMMEDIATE
    '
      create or replace synonym MT_POWERUP_MESSAGE_CP_CONC  for MT_POWERUP_MESSAGE_CP_CONC@SXYKJD
    ';
    EXECUTE IMMEDIATE
    '
      create or replace synonym MT_PORT_CP_CONC  for MT_PORT_CP_CONC@SXYKJD
    ';
    EXECUTE IMMEDIATE
    '
      create or replace synonym MT_PLUG_LOCK_CP_CONC  for MT_PLUG_LOCK_CP_CONC@SXYKJD
    ';
    EXECUTE IMMEDIATE
    '
      create or replace synonym MT_PF_CP_CONC  for MT_PF_CP_CONC@SXYKJD
    ';
    EXECUTE IMMEDIATE
    '
      create or replace synonym MT_OPEN_PROTECT_CP_CONC  for MT_OPEN_PROTECT_CP_CONC@SXYKJD
    ';
    EXECUTE IMMEDIATE
    '
      create or replace synonym MT_ONLOAD_DECILITER_CP_CONC  for MT_ONLOAD_DECILITER_CP_CONC@SXYKJD
    ';
    EXECUTE IMMEDIATE
    '
      create or replace synonym MT_MEASUREMENT_ERROR_CP_CONC  for MT_MEASUREMENT_ERROR_CP_CONC@SXYKJD
    ';
    EXECUTE IMMEDIATE
    '
      create or replace synonym MT_MEASURE_UNIFORMITY_CP_CONC  for MT_MEASURE_UNIFORMITY_CP_CONC@SXYKJD
    ';
    EXECUTE IMMEDIATE
    '
      create or replace synonym MT_MAXOUT_POWER_CP_CONC  for MT_MAXOUT_POWER_CP_CONC@SXYKJD
    ';
    EXECUTE IMMEDIATE
    '
      create or replace synonym MT_LOWVOLT_AUXILIARY_CP_CONC  for MT_LOWVOLT_AUXILIARY_CP_CONC@SXYKJD
    ';
    EXECUTE IMMEDIATE
    '
      create or replace synonym MT_LOCK_CP_CONC  for MT_LOCK_CP_CONC@SXYKJD
    ';
    EXECUTE IMMEDIATE
    '
      create or replace synonym MT_LANDING_CP_CONC  for MT_LANDING_CP_CONC@SXYKJD
    ';
    EXECUTE IMMEDIATE
    '
      create or replace synonym MT_INTUIT_CP_CONC  for MT_INTUIT_CP_CONC@SXYKJD
    ';
    EXECUTE IMMEDIATE
    '
      create or replace synonym MT_INSULATE_ABNORMAL_CP_CONC  for MT_INSULATE_ABNORMAL_CP_CONC@SXYKJD
    ';
    EXECUTE IMMEDIATE
    '
      create or replace synonym MT_INSU_RESIST_CP_CONC  for MT_INSU_RESIST_CP_CONC@SXYKJD
    ';
    EXECUTE IMMEDIATE
    '
      create or replace synonym MT_INSIDE_CP_CONC  for MT_INSIDE_CP_CONC@SXYKJD
    ';
    EXECUTE IMMEDIATE
    '
      create or replace synonym MT_INDICATIVE_ERROR_CP_CONC  for MT_INDICATIVE_ERROR_CP_CONC@SXYKJD
    ';
    EXECUTE IMMEDIATE
    '
      create or replace synonym MT_IN_UNDERVOLT_CP_CONC  for MT_IN_UNDERVOLT_CP_CONC@SXYKJD
    ';
    EXECUTE IMMEDIATE
    '
      create or replace synonym MT_IN_OVERVOLT_CP_CONC  for MT_IN_OVERVOLT_CP_CONC@SXYKJD
    ';
    EXECUTE IMMEDIATE
    '
      create or replace synonym MT_IN_CP_CONC  for MT_IN_CP_CONC@SXYKJD
    ';
    EXECUTE IMMEDIATE
    '
      create or replace synonym MT_EFFICIENCY_CP_CONC  for MT_EFFICIENCY_CP_CONC@SXYKJD
    ';
    EXECUTE IMMEDIATE
    '
      create or replace synonym MT_DISPLAY_CP_CONC  for MT_DISPLAY_CP_CONC@SXYKJD
    ';
    EXECUTE IMMEDIATE
    '
      create or replace synonym MT_DETECT_CP_RSLT  for MT_DETECT_CP_RSLT@SXYKJD
    ';
    EXECUTE IMMEDIATE
    '
      create or replace synonym MT_CURRENT_PRECISION_CP_CONC  for MT_CURRENT_PRECISION_CP_CONC@SXYKJD
    ';
    EXECUTE IMMEDIATE
    '
      create or replace synonym MT_CONTROL_VOLTLIMIT_CP_CONC  for MT_CONTROL_VOLTLIMIT_CP_CONC@SXYKJD
    ';
    EXECUTE IMMEDIATE
    '
      create or replace synonym MT_CONNECT_CP_CONC  for MT_CONNECT_CP_CONC@SXYKJD
    ';
    EXECUTE IMMEDIATE
    '
      create or replace synonym MT_CONNECT_CONFIRM_CP_CONC  for MT_CONNECT_CONFIRM_CP_CONC@SXYKJD
    ';
    EXECUTE IMMEDIATE
    '
      create or replace synonym MT_CONFIG_MSG_CP_CONC  for MT_CONFIG_MSG_CP_CONC@SXYKJD
    ';
    EXECUTE IMMEDIATE
    '
      create or replace synonym MT_COMPOSE_CP_CONC  for MT_COMPOSE_CP_CONC@SXYKJD
    ';
    EXECUTE IMMEDIATE
    '
      create or replace synonym MT_COMM_BREAK_CP_CONC  for MT_COMM_BREAK_CP_CONC@SXYKJD
    ';
    EXECUTE IMMEDIATE
    '
      create or replace synonym MT_CLEARANCE_CREEPAGE_CP_CONC  for MT_CLEARANCE_CREEPAGE_CP_CONC@SXYKJD
    ';
    EXECUTE IMMEDIATE
    '
      create or replace synonym MT_CHARGEEND_MEAASGE_CP_CONC  for MT_CHARGEEND_MEAASGE_CP_CONC@SXYKJD
    ';
    EXECUTE IMMEDIATE
    '
      create or replace synonym MT_CHARGE_MEAASGE_CP_CONC  for MT_CHARGE_MEAASGE_CP_CONC@SXYKJD
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000018227 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Tables U WHERE U.TABLE_NAME = 'D_EQUIP_INST_INFO';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
        create table D_EQUIP_INST_INFO
        (
        inst_id NUMBER(16) not null,
        equip_categ VARCHAR2(8),
        bar_code VARCHAR2(32),
        status_code VARCHAR2(8),
        org_no VARCHAR2(16),
        longitude VARCHAR2(32),
        latitude VARCHAR2(32),
        operate_type VARCHAR2(8),
        operate_date DATE,
        operate_no VARCHAR2(16),
        remark VARCHAR2(256)
        )
        tablespace MPAC_D
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
      dbms_output.put_line('脚本已跳过，因为 D_EQUIP_INST_INFO 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table D_EQUIP_INST_INFO
      is ''设备安装信息表''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_EQUIP_INST_INFO.INST_ID
      is ''安装记录标识''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_EQUIP_INST_INFO.EQUIP_CATEG
      is ''设备类别''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_EQUIP_INST_INFO.BAR_CODE
      is ''设备条形码''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_EQUIP_INST_INFO.STATUS_CODE
      is ''设备状态''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_EQUIP_INST_INFO.ORG_NO
      is ''供电单位''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_EQUIP_INST_INFO.LONGITUDE
      is ''经度''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_EQUIP_INST_INFO.LATITUDE
      is ''纬度''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_EQUIP_INST_INFO.OPERATE_TYPE
      is ''操作类型。01：安装；02：拆除''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_EQUIP_INST_INFO.OPERATE_DATE
      is ''操作日期''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_EQUIP_INST_INFO.OPERATE_NO
      is ''操作人员''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_EQUIP_INST_INFO.REMARK
      is ''备注''
    ';
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_INDEXES U WHERE u.INDEX_NAME = 'PK_D_EQUIP_INST_INFO';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table D_EQUIP_INST_INFO
      add constraint PK_D_EQUIP_INST_INFO primary key (INST_ID)
      using index
      tablespace MPAC_D_IDX
      pctfree 10
      initrans 2
      maxtrans 255
      storage
      (
      initial 64K
      next 1M
      minextents 1
      maxextents unlimited
      )
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 PK_D_EQUIP_INST_INFO 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Sequences U WHERE u.sequence_name = 'SEQ_D_EQUIP_INST_INFO';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      create sequence SEQ_D_EQUIP_INST_INFO
      minvalue 1
      maxvalue 9999999999999999
      start with 8200000000000000
      increment by 1
      cache 20
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 SEQ_D_EQUIP_INST_INFO 已存在。');
    END IF;
END;
/
prompt
prompt 正在处理纪录编号为 8200000000018408 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Tables U WHERE U.TABLE_NAME = 'T_PORT_CP_CONC';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
        create table T_PORT_CP_CONC
        (
        read_id NUMBER(16) not null,
        detect_task_no VARCHAR2(32),
        equip_categ VARCHAR2(8),
        sys_no VARCHAR2(16),
        detect_equip_no VARCHAR2(32),
        detect_unit_no VARCHAR2(32),
        bar_code VARCHAR2(32),
        detect_date VARCHAR2(32),
        detect_item_no VARCHAR2(8),
        detect_item_name VARCHAR2(256),
        port_code VARCHAR2(16),
        para_index VARCHAR2(32),
        is_valid VARCHAR2(8),
        conc_code VARCHAR2(8),
        write_date DATE,
        handle_flag VARCHAR2(8),
        handle_date DATE
        )
        tablespace MPAC_T
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
      dbms_output.put_line('脚本已跳过，因为 T_PORT_CP_CONC 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table T_PORT_CP_CONC
      is ''充电桩枪口检定项结论表''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_PORT_CP_CONC.READ_ID
      is ''字段唯一标识''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_PORT_CP_CONC.DETECT_TASK_NO
      is ''检定任务编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_PORT_CP_CONC.EQUIP_CATEG
      is ''设备类别''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_PORT_CP_CONC.SYS_NO
      is ''系统编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_PORT_CP_CONC.DETECT_EQUIP_NO
      is ''检定线台编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_PORT_CP_CONC.DETECT_UNIT_NO
      is ''检定单元编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_PORT_CP_CONC.BAR_CODE
      is ''设备条形码''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_PORT_CP_CONC.DETECT_DATE
      is ''检定时间''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_PORT_CP_CONC.DETECT_ITEM_NO
      is ''检定项编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_PORT_CP_CONC.DETECT_ITEM_NAME
      is ''检定项名称''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_PORT_CP_CONC.PORT_CODE
      is ''枪口编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_PORT_CP_CONC.PARA_INDEX
      is ''检定序号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_PORT_CP_CONC.IS_VALID
      is ''有效标志''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_PORT_CP_CONC.CONC_CODE
      is ''检查结论''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_PORT_CP_CONC.WRITE_DATE
      is ''检定系统写入时间''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_PORT_CP_CONC.HANDLE_FLAG
      is ''处理标记''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_PORT_CP_CONC.HANDLE_DATE
      is ''处理时间''
    ';
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_INDEXES U WHERE u.INDEX_NAME = 'PK_T_PORT_CP_CONC';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table T_PORT_CP_CONC
      add constraint PK_T_PORT_CP_CONC primary key (READ_ID)
      using index
      tablespace MPAC_T_IDX
      pctfree 10
      initrans 2
      maxtrans 255
      storage
      (
      initial 64K
      next 1M
      minextents 1
      maxextents unlimited
      )
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 PK_T_PORT_CP_CONC 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Sequences U WHERE u.sequence_name = 'SEQ_T_PORT_CP_CONC';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      create sequence SEQ_T_PORT_CP_CONC
      minvalue 1
      maxvalue 9999999999999999
      start with 8200000000000000
      increment by 1
      cache 20
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 SEQ_T_PORT_CP_CONC 已存在。');
    END IF;
END;
/
prompt
prompt 正在处理纪录编号为 8200000000018482 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Tables U WHERE U.TABLE_NAME = 'D_CHARGE_POINT';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
        create table D_CHARGE_POINT
        (
        devi_id NUMBER(16) not null,
        devi_name VARCHAR2(256),
        sort_code VARCHAR2(8),
        devi_type VARCHAR2(8),
        bar_code VARCHAR2(32),
        devi_sepc VARCHAR2(8),
        equip_code VARCHAR2(32),
        erp_batch_no VARCHAR2(32),
        asset_no VARCHAR2(32),
        lot_no VARCHAR2(32),
        org_no VARCHAR2(16 BYTE),
        org_type VARCHAR2(8),
        pr_org VARCHAR2(16),
        belong_dept VARCHAR2(16),
        contract_id NUMBER(16),
        contract_no VARCHAR2(32),
        rcv_id NUMBER(16),
        arrive_batch_no VARCHAR2(32),
        area_code VARCHAR2(16),
        store_area_sort VARCHAR2(8),
        wh_id NUMBER(16),
        wh_area_id NUMBER(16),
        store_area_id NUMBER(16),
        status_code VARCHAR2(8),
        latest_chk_date DATE,
        checker_no VARCHAR2(16),
        inst_date DATE,
        rmv_date DATE,
        manufacturer VARCHAR2(8),
        made_date DATE,
        made_no VARCHAR2(32),
        made_addr VARCHAR(256),
        devi_categ VARCHAR2(8),
        out_max_power VARCHAR2(8),
        in_rated_rv VARCHAR2(8),
        out_rated_rv VARCHAR2(8),
        out_down_rv VARCHAR2(8),
        out_up_rv VARCHAR2(8),
        out_rated_current VARCHAR2(8),
        out_max_current VARCHAR2(8),
        cable_length VARCHAR2(32),
        is_const_power VARCHAR2(8),
        charge_port_num NUMBER(16),
        is_cts VARCHAR2(8),
        is_power_assign VARCHAR2(8),
        connect_mode VARCHAR2(8),
        is_bound VARCHAR2(8),
        doc_create_date DATE,
        doc_creator_no VARCHAR2(16),
        charge_contr_type VARCHAR2(8),
        charge_contr_spece VARCHAR2(8),
        charge_contr_manuf VARCHAR2(8),
        charge_module_type VARCHAR2(8),
        charge_module_spece VARCHAR2(8),
        charge_module_manuf VARCHAR2(8),
        connector_type VARCHAR2(8),
        connector_spece VARCHAR2(8),
        connector_manuf VARCHAR2(8),
        tcu_type VARCHAR2(8),
        tcu_spece VARCHAR2(8),
        tcu_manuf VARCHAR2(8),
        ac_conta_type VARCHAR2(8),
        ac_conta_spece VARCHAR2(8),
        ac_conta_manuf VARCHAR2(8),
        highvol_conta_type VARCHAR2(8),
        highvol_conta_spece VARCHAR2(8),
        highvol_conta_manuf VARCHAR2(8),
        leak_protect_type VARCHAR2(8),
        leak_protect_spece VARCHAR2(8),
        leak_protect_manuf VARCHAR2(8),
        fuse_type VARCHAR2(8),
        fuse_spece VARCHAR2(8),
        fuse_manuf VARCHAR2(8),
        auxil_power_type VARCHAR2(8),
        auxil_power_spece VARCHAR2(8),
        auxil_power_manuf VARCHAR2(8),
        screen_type VARCHAR2(8),
        screen_spece VARCHAR2(8),
        screen_manuf VARCHAR2(8),
        card_reader_type VARCHAR2(8),
        card_reader_spece VARCHAR2(8),
        card_reader_manuf VARCHAR2(8),
        arrest_type VARCHAR2(8),
        arrest_spece VARCHAR2(8),
        arrest_manuf VARCHAR2(8),
        circu_break_type VARCHAR2(8),
        circu_break_spece VARCHAR2(8),
        circu_break_manuf VARCHAR2(8),
        cool_fan_type VARCHAR2(8),
        cool_fan_spece VARCHAR2(8),
        cool_fan_manuf VARCHAR2(8),
        sound_type VARCHAR2(8),
        sound_spece VARCHAR2(8),
        sound_manuf VARCHAR2(8),
        antenna_4g_type VARCHAR2(8),
        antenna_4g_spece VARCHAR2(8),
        antenna_4g_manuf VARCHAR2(8),
        antenna_gps_type VARCHAR2(8),
        antenna_gps_spece VARCHAR2(8),
        antenna_gps_manu VARCHAR2(8),
        remark VARCHAR2(256)
        )
        tablespace MPAC_D
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
    EXECUTE IMMEDIATE
    '
      comment on column D_CHARGE_POINT.DEVI_SEPC
      is ''设备规格''
    ';  
    EXECUTE IMMEDIATE
    '
      comment on column D_CHARGE_POINT.OUT_RATED_CURRENT
      is ''单充电口输出额定最大电流（A）''
    '; 
    EXECUTE IMMEDIATE
    '
      comment on table D_CHARGE_POINT
      is ''充电桩档案信息表''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_CHARGE_POINT.DEVI_ID
      is ''档案标识''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_CHARGE_POINT.DEVI_NAME
      is ''设备名称''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_CHARGE_POINT.SORT_CODE
      is ''充电机充电桩类别''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_CHARGE_POINT.DEVI_TYPE
      is ''设备型号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_CHARGE_POINT.BAR_CODE
      is ''设备条形码''
    ';

    EXECUTE IMMEDIATE
    '
      comment on column D_CHARGE_POINT.EQUIP_CODE
      is ''设备码''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_CHARGE_POINT.ERP_BATCH_NO
      is ''物料号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_CHARGE_POINT.ASSET_NO
      is ''资产编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_CHARGE_POINT.LOT_NO
      is ''生产批次号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_CHARGE_POINT.ORG_NO
      is ''管理单位''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_CHARGE_POINT.ORG_TYPE
      is ''单位类别''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_CHARGE_POINT.PR_ORG
      is ''产权单位编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_CHARGE_POINT.BELONG_DEPT
      is ''当前所在单位''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_CHARGE_POINT.CONTRACT_ID
      is ''订货合同编号,用来与订货合同实体进行关联''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_CHARGE_POINT.CONTRACT_NO
      is ''合同编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_CHARGE_POINT.RCV_ID
      is ''到货接收的ID''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_CHARGE_POINT.ARRIVE_BATCH_NO
      is ''到货批次号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_CHARGE_POINT.AREA_CODE
      is ''地区代码''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_CHARGE_POINT.STORE_AREA_SORT
      is ''存放区分类''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_CHARGE_POINT.WH_ID
      is ''库房标识''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_CHARGE_POINT.WH_AREA_ID
      is ''库区标识''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_CHARGE_POINT.STORE_AREA_ID
      is ''存放区标识''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_CHARGE_POINT.STATUS_CODE
      is ''设备状态''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_CHARGE_POINT.LATEST_CHK_DATE
      is ''最后一次检定日期。。。。。。''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_CHARGE_POINT.CHECKER_NO
      is ''校验人员''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_CHARGE_POINT.INST_DATE
      is ''安装日期''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_CHARGE_POINT.RMV_DATE
      is ''拆除日期''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_CHARGE_POINT.MANUFACTURER
      is ''供货商''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_CHARGE_POINT.MADE_DATE
      is ''生产日期''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_CHARGE_POINT.MADE_NO
      is ''出厂编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_CHARGE_POINT.MADE_ADDR
      is ''厂址''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_CHARGE_POINT.DEVI_CATEG
      is ''机型''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_CHARGE_POINT.OUT_MAX_POWER
      is ''输出最大最大功率（kW）''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_CHARGE_POINT.IN_RATED_RV
      is ''输入额定电压（V）''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_CHARGE_POINT.OUT_RATED_RV
      is ''输出额定电压（V）''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_CHARGE_POINT.OUT_DOWN_RV
      is ''输出下限电压（V）''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_CHARGE_POINT.OUT_UP_RV
      is ''输出上限电压（V）''
    ';

    EXECUTE IMMEDIATE
    '
      comment on column D_CHARGE_POINT.OUT_MAX_CURRENT
      is ''单充电口输出最大电流（A）''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_CHARGE_POINT.CABLE_LENGTH
      is ''电缆长度''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_CHARGE_POINT.IS_CONST_POWER
      is ''恒功率功能''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_CHARGE_POINT.CHARGE_PORT_NUM
      is ''充电口数量''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_CHARGE_POINT.IS_CTS
      is ''CTS报文功能''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_CHARGE_POINT.IS_POWER_ASSIGN
      is ''动态功率分配功能''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_CHARGE_POINT.CONNECT_MODE
      is ''连接模式''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_CHARGE_POINT.IS_BOUND
      is ''是否已绑定''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_CHARGE_POINT.DOC_CREATE_DATE
      is ''建档日期''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_CHARGE_POINT.DOC_CREATOR_NO
      is ''建档人''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_CHARGE_POINT.CHARGE_CONTR_TYPE
      is ''充电控制器型号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_CHARGE_POINT.CHARGE_CONTR_SPECE
      is ''充电控制器规格''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_CHARGE_POINT.CHARGE_CONTR_MANUF
      is ''充电控制器厂家''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_CHARGE_POINT.CHARGE_MODULE_TYPE
      is ''充电模块型号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_CHARGE_POINT.CHARGE_MODULE_SPECE
      is ''充电模块规格''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_CHARGE_POINT.CHARGE_MODULE_MANUF
      is ''充电模块厂家''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_CHARGE_POINT.CONNECTOR_TYPE
      is ''连接装置型号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_CHARGE_POINT.CONNECTOR_SPECE
      is ''连接装置规格''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_CHARGE_POINT.CONNECTOR_MANUF
      is ''连接装置厂家''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_CHARGE_POINT.TCU_TYPE
      is ''TCU型号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_CHARGE_POINT.TCU_SPECE
      is ''TCU规格''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_CHARGE_POINT.TCU_MANUF
      is ''TCU厂家''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_CHARGE_POINT.AC_CONTA_TYPE
      is ''交流接触器型号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_CHARGE_POINT.AC_CONTA_SPECE
      is ''交流接触器规格''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_CHARGE_POINT.AC_CONTA_MANUF
      is ''交流接触器厂家''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_CHARGE_POINT.HIGHVOL_CONTA_TYPE
      is ''高压接触器型号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_CHARGE_POINT.HIGHVOL_CONTA_SPECE
      is ''高压接触器规格''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_CHARGE_POINT.HIGHVOL_CONTA_MANUF
      is ''高压接触器厂家''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_CHARGE_POINT.LEAK_PROTECT_TYPE
      is ''漏电保护型号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_CHARGE_POINT.LEAK_PROTECT_SPECE
      is ''漏电保护规格''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_CHARGE_POINT.LEAK_PROTECT_MANUF
      is ''漏电保护厂家''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_CHARGE_POINT.FUSE_TYPE
      is ''熔断器型号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_CHARGE_POINT.FUSE_SPECE
      is ''熔断器规格''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_CHARGE_POINT.FUSE_MANUF
      is ''熔断器厂家''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_CHARGE_POINT.AUXIL_POWER_TYPE
      is ''辅助电源型号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_CHARGE_POINT.AUXIL_POWER_SPECE
      is ''辅助电源规格''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_CHARGE_POINT.AUXIL_POWER_MANUF
      is ''辅助电源厂家''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_CHARGE_POINT.SCREEN_TYPE
      is ''屏幕型号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_CHARGE_POINT.SCREEN_SPECE
      is ''屏幕规格''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_CHARGE_POINT.SCREEN_MANUF
      is ''屏幕厂家''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_CHARGE_POINT.CARD_READER_TYPE
      is ''读卡器型号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_CHARGE_POINT.CARD_READER_SPECE
      is ''读卡器规格''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_CHARGE_POINT.CARD_READER_MANUF
      is ''读卡器厂家''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_CHARGE_POINT.ARREST_TYPE
      is ''避雷器型号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_CHARGE_POINT.ARREST_SPECE
      is ''避雷器规格''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_CHARGE_POINT.ARREST_MANUF
      is ''避雷器厂家''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_CHARGE_POINT.CIRCU_BREAK_TYPE
      is ''断路器型号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_CHARGE_POINT.CIRCU_BREAK_SPECE
      is ''断路器规格''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_CHARGE_POINT.CIRCU_BREAK_MANUF
      is ''断路器厂家''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_CHARGE_POINT.COOL_FAN_TYPE
      is ''散热风扇型号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_CHARGE_POINT.COOL_FAN_SPECE
      is ''散热风扇规格''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_CHARGE_POINT.COOL_FAN_MANUF
      is ''散热风扇厂家''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_CHARGE_POINT.SOUND_TYPE
      is ''音响型号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_CHARGE_POINT.SOUND_SPECE
      is ''音响规格''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_CHARGE_POINT.SOUND_MANUF
      is ''音响厂家''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_CHARGE_POINT.ANTENNA_4G_TYPE
      is ''4G天线型号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_CHARGE_POINT.ANTENNA_4G_SPECE
      is ''4G天线规格''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_CHARGE_POINT.ANTENNA_4G_MANUF
      is ''4G天线厂家''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_CHARGE_POINT.ANTENNA_GPS_TYPE
      is ''GPS天线型号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_CHARGE_POINT.ANTENNA_GPS_SPECE
      is ''GPS天线规格''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_CHARGE_POINT.ANTENNA_GPS_MANU
      is ''GPS天线厂家''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_CHARGE_POINT.REMARK
      is ''备注''
    ';           
    ELSE
      dbms_output.put_line('脚本已跳过，因为 D_CHARGE_POINT 已存在。');
    END IF;

    
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_INDEXES U WHERE u.INDEX_NAME = 'PK_D_CHARGE_POINT';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table D_CHARGE_POINT
      add constraint PK_D_CHARGE_POINT primary key (DEVI_ID)
      using index
      tablespace MPAC_D_IDX
      pctfree 10
      initrans 2
      maxtrans 255
      storage
      (
      initial 64K
      next 1M
      minextents 1
      maxextents unlimited
      )
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 PK_D_CHARGE_POINT 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Sequences U WHERE u.sequence_name = 'SEQ_D_CHARGE_POINT';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      create sequence SEQ_D_CHARGE_POINT
      minvalue 1
      maxvalue 9999999999999999
      start with 8200000000000000
      increment by 1
      cache 20
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 SEQ_D_CHARGE_POINT 已存在。');
    END IF;
END;
/
prompt
prompt 正在处理纪录编号为 8200000000018484 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Tables U WHERE U.TABLE_NAME = 'C_ARRIVE_CHARGE_PARA';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
        create table C_ARRIVE_CHARGE_PARA
        (
        rcv_id NUMBER(16) not null,
        manufacturer VARCHAR2(16),
        made_date DATE,
        lot_no VARCHAR2(32),
        remark VARCHAR2(256),
        eqip_prc NUMBER(16,6),
        sort_code VARCHAR2(8),
        devi_type VARCHAR2(8),
        devi_categ VARCHAR2(8),
        out_max_power VARCHAR2(8),
        in_rated_rv VARCHAR2(8),
        out_rated_rv VARCHAR2(8),
        out_down_rv VARCHAR2(8),
        out_up_rv VARCHAR2(8),
        out_current VARCHAR2(8),
        cable_length VARCHAR2(32),
        is_const_power VARCHAR2(8),
        charge_port_num NUMBER(16),
        is_cts VARCHAR2(8),
        is_power_assign VARCHAR2(8),
        connect_mode VARCHAR2(8),
        charge_contr_type VARCHAR2(8),
        charge_module_spece VARCHAR2(8),
        charge_module_manuf VARCHAR2(8),
        connector_type VARCHAR2(8),
        connector_spece VARCHAR2(8),
        connector_manuf VARCHAR2(8),
        tcu_type VARCHAR2(8),
        tcu_spece VARCHAR2(8),
        tcu_manuf VARCHAR2(8),
        ac_conta_type VARCHAR2(8),
        ac_conta_spece VARCHAR2(8),
        ac_conta_manuf VARCHAR2(8),
        highvol_conta_type VARCHAR2(8),
        highvol_conta_spece VARCHAR2(8),
        highvol_conta_manuf VARCHAR2(8),
        leak_protect_type VARCHAR2(8),
        leak_protect_spece VARCHAR2(8),
        leak_protect_manuf VARCHAR2(8),
        fuse_type VARCHAR2(8),
        fuse_spece VARCHAR2(8),
        fuse_manuf VARCHAR2(8),
        auxil_power_type VARCHAR2(8),
        auxil_power_spece VARCHAR2(8),
        auxil_power_manuf VARCHAR2(8),
        screen_type VARCHAR2(8),
        screen_spece VARCHAR2(8),
        screen_manuf VARCHAR2(8),
        card_reader_type VARCHAR2(8),
        card_reader_spece VARCHAR2(8),
        card_reader_manuf VARCHAR2(8),
        arrest_type VARCHAR2(8),
        arrest_spece VARCHAR2(8),
        arrest_manuf VARCHAR2(8),
        circu_break_type VARCHAR2(8),
        circu_break_spece VARCHAR2(8),
        circu_break_manuf VARCHAR2(8),
        cool_fan_type VARCHAR2(8),
        cool_fan_spece VARCHAR2(8),
        cool_fan_manuf VARCHAR2(8),
        sound_type VARCHAR2(8),
        sound_spece VARCHAR2(8),
        sound_manuf VARCHAR2(8),
        antenna_4g_type VARCHAR2(8),
        antenna_4g_spece VARCHAR2(8),
        antenna_4g_manuf VARCHAR2(8),
        antenna_gps_type VARCHAR2(8),
        antenna_gps_spece VARCHAR2(8),
        antenna_gps_manu VARCHAR2(8)
        )
        tablespace MPAC_C
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
      dbms_output.put_line('脚本已跳过，因为 C_ARRIVE_CHARGE_PARA 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table C_ARRIVE_CHARGE_PARA
      is ''到货充电桩参数''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column C_ARRIVE_CHARGE_PARA.RCV_ID
      is ''用来与到货信息进行关联''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column C_ARRIVE_CHARGE_PARA.MANUFACTURER
      is ''生产厂家''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column C_ARRIVE_CHARGE_PARA.MADE_DATE
      is ''出厂日期''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column C_ARRIVE_CHARGE_PARA.LOT_NO
      is ''生产批次''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column C_ARRIVE_CHARGE_PARA.REMARK
      is ''备注''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column C_ARRIVE_CHARGE_PARA.EQIP_PRC
      is ''设备单价''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column C_ARRIVE_CHARGE_PARA.SORT_CODE
      is ''充电桩类别''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column C_ARRIVE_CHARGE_PARA.DEVI_TYPE
      is ''设备型号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column C_ARRIVE_CHARGE_PARA.DEVI_CATEG
      is ''机型''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column C_ARRIVE_CHARGE_PARA.OUT_MAX_POWER
      is ''输出额定功率（kW）''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column C_ARRIVE_CHARGE_PARA.IN_RATED_RV
      is ''输入额定电压（V）''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column C_ARRIVE_CHARGE_PARA.OUT_RATED_RV
      is ''输出额定电压（V）''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column C_ARRIVE_CHARGE_PARA.OUT_DOWN_RV
      is ''输出下限电压（V）''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column C_ARRIVE_CHARGE_PARA.OUT_UP_RV
      is ''输出上限电压（V）''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column C_ARRIVE_CHARGE_PARA.OUT_CURRENT
      is ''单充电口输出最大电流（A）''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column C_ARRIVE_CHARGE_PARA.CABLE_LENGTH
      is ''电缆长度''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column C_ARRIVE_CHARGE_PARA.IS_CONST_POWER
      is ''恒功率功能''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column C_ARRIVE_CHARGE_PARA.CHARGE_PORT_NUM
      is ''充电口数量''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column C_ARRIVE_CHARGE_PARA.IS_CTS
      is ''CTS报文功能''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column C_ARRIVE_CHARGE_PARA.IS_POWER_ASSIGN
      is ''动态功率分配功能''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column C_ARRIVE_CHARGE_PARA.CONNECT_MODE
      is ''连接模式''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column C_ARRIVE_CHARGE_PARA.CHARGE_CONTR_TYPE
      is ''充电控制器型号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column C_ARRIVE_CHARGE_PARA.CHARGE_MODULE_SPECE
      is ''充电模块规格''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column C_ARRIVE_CHARGE_PARA.CHARGE_MODULE_MANUF
      is ''充电模块厂家''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column C_ARRIVE_CHARGE_PARA.CONNECTOR_TYPE
      is ''连接装置型号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column C_ARRIVE_CHARGE_PARA.CONNECTOR_SPECE
      is ''连接装置规格''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column C_ARRIVE_CHARGE_PARA.CONNECTOR_MANUF
      is ''连接装置厂家''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column C_ARRIVE_CHARGE_PARA.TCU_TYPE
      is ''TCU型号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column C_ARRIVE_CHARGE_PARA.TCU_SPECE
      is ''TCU规格''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column C_ARRIVE_CHARGE_PARA.TCU_MANUF
      is ''TCU厂家''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column C_ARRIVE_CHARGE_PARA.AC_CONTA_TYPE
      is ''交流接触器型号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column C_ARRIVE_CHARGE_PARA.AC_CONTA_SPECE
      is ''交流接触器规格''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column C_ARRIVE_CHARGE_PARA.AC_CONTA_MANUF
      is ''交流接触器厂家''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column C_ARRIVE_CHARGE_PARA.HIGHVOL_CONTA_TYPE
      is ''高压接触器型号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column C_ARRIVE_CHARGE_PARA.HIGHVOL_CONTA_SPECE
      is ''高压接触器规格''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column C_ARRIVE_CHARGE_PARA.HIGHVOL_CONTA_MANUF
      is ''高压接触器厂家''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column C_ARRIVE_CHARGE_PARA.LEAK_PROTECT_TYPE
      is ''漏电保护型号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column C_ARRIVE_CHARGE_PARA.LEAK_PROTECT_SPECE
      is ''漏电保护规格''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column C_ARRIVE_CHARGE_PARA.LEAK_PROTECT_MANUF
      is ''漏电保护厂家''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column C_ARRIVE_CHARGE_PARA.FUSE_TYPE
      is ''熔断器型号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column C_ARRIVE_CHARGE_PARA.FUSE_SPECE
      is ''熔断器规格''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column C_ARRIVE_CHARGE_PARA.FUSE_MANUF
      is ''熔断器厂家''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column C_ARRIVE_CHARGE_PARA.AUXIL_POWER_TYPE
      is ''辅助电源型号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column C_ARRIVE_CHARGE_PARA.AUXIL_POWER_SPECE
      is ''辅助电源规格''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column C_ARRIVE_CHARGE_PARA.AUXIL_POWER_MANUF
      is ''辅助电源厂家''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column C_ARRIVE_CHARGE_PARA.SCREEN_TYPE
      is ''屏幕型号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column C_ARRIVE_CHARGE_PARA.SCREEN_SPECE
      is ''屏幕规格''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column C_ARRIVE_CHARGE_PARA.SCREEN_MANUF
      is ''屏幕厂家''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column C_ARRIVE_CHARGE_PARA.CARD_READER_TYPE
      is ''读卡器型号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column C_ARRIVE_CHARGE_PARA.CARD_READER_SPECE
      is ''读卡器规格''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column C_ARRIVE_CHARGE_PARA.CARD_READER_MANUF
      is ''读卡器厂家''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column C_ARRIVE_CHARGE_PARA.ARREST_TYPE
      is ''避雷器型号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column C_ARRIVE_CHARGE_PARA.ARREST_SPECE
      is ''避雷器规格''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column C_ARRIVE_CHARGE_PARA.ARREST_MANUF
      is ''避雷器厂家''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column C_ARRIVE_CHARGE_PARA.CIRCU_BREAK_TYPE
      is ''断路器型号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column C_ARRIVE_CHARGE_PARA.CIRCU_BREAK_SPECE
      is ''断路器规格''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column C_ARRIVE_CHARGE_PARA.CIRCU_BREAK_MANUF
      is ''断路器厂家''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column C_ARRIVE_CHARGE_PARA.COOL_FAN_TYPE
      is ''散热风扇型号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column C_ARRIVE_CHARGE_PARA.COOL_FAN_SPECE
      is ''散热风扇规格''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column C_ARRIVE_CHARGE_PARA.COOL_FAN_MANUF
      is ''散热风扇厂家''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column C_ARRIVE_CHARGE_PARA.SOUND_TYPE
      is ''音响型号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column C_ARRIVE_CHARGE_PARA.SOUND_SPECE
      is ''音响规格''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column C_ARRIVE_CHARGE_PARA.SOUND_MANUF
      is ''音响厂家''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column C_ARRIVE_CHARGE_PARA.ANTENNA_4G_TYPE
      is ''4G天线型号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column C_ARRIVE_CHARGE_PARA.ANTENNA_4G_SPECE
      is ''4G天线规格''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column C_ARRIVE_CHARGE_PARA.ANTENNA_4G_MANUF
      is ''4G天线厂家''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column C_ARRIVE_CHARGE_PARA.ANTENNA_GPS_TYPE
      is ''GPS天线型号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column C_ARRIVE_CHARGE_PARA.ANTENNA_GPS_SPECE
      is ''GPS天线规格''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column C_ARRIVE_CHARGE_PARA.ANTENNA_GPS_MANU
      is ''GPS天线厂家''
    ';
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_INDEXES U WHERE u.INDEX_NAME = 'PK_C_ARRIVE_CHARGE_PARA';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table C_ARRIVE_CHARGE_PARA
      add constraint PK_C_ARRIVE_CHARGE_PARA primary key (RCV_ID)
      using index
      tablespace MPAC_C_IDX
      pctfree 10
      initrans 2
      maxtrans 255
      storage
      (
      initial 64K
      next 1M
      minextents 1
      maxextents unlimited
      )
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 PK_C_ARRIVE_CHARGE_PARA 已存在。');
    END IF;
END;
/
prompt
prompt 正在处理纪录编号为 8200000000018487 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Tables U WHERE U.TABLE_NAME = 'D_CHARGE_BIND_RECORD';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
        create table D_CHARGE_BIND_RECORD
        (
        read_id NUMBER(16) not null,
        equip_id NUMBER(16),
        bar_code VARCHAR2(32),
        equip_categ VARCHAR2(8),
        bingd_equip_id NUMBER(16),
        bind_bar_code VARCHAR2(32),
        handle_flag VARCHAR2(8),
        handle_date DATE,
        handle_dept_no VARCHAR2(16),
        handler_no VARCHAR2(16),
        remark VARCHAR2(256),
        busi_ident VARCHAR2(16),
        busi_type VARCHAR2(8)
        )
        tablespace MPAC_D
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
    EXECUTE IMMEDIATE
    '
      comment on column D_CHARGE_BIND_RECORD.EQUIP_ID
      is ''主体设备标识''
    ';      
    ELSE
      dbms_output.put_line('脚本已跳过，因为 D_CHARGE_BIND_RECORD 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table D_CHARGE_BIND_RECORD
      is ''充电设备绑定记录表''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_CHARGE_BIND_RECORD.READ_ID
      is ''本实体记录的唯一标识号''
    ';

    EXECUTE IMMEDIATE
    '
      comment on column D_CHARGE_BIND_RECORD.BAR_CODE
      is ''主体设备条形码''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_CHARGE_BIND_RECORD.EQUIP_CATEG
      is ''设备类别''
    ';

    EXECUTE IMMEDIATE
    '
      comment on column D_CHARGE_BIND_RECORD.BIND_BAR_CODE
      is ''绑定设备条形码''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_CHARGE_BIND_RECORD.HANDLE_FLAG
      is ''处理标志''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_CHARGE_BIND_RECORD.HANDLE_DATE
      is ''处理时间''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_CHARGE_BIND_RECORD.HANDLE_DEPT_NO
      is ''处理部门''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_CHARGE_BIND_RECORD.HANDLER_NO
      is ''处理人员编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_CHARGE_BIND_RECORD.REMARK
      is ''备注''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_CHARGE_BIND_RECORD.BUSI_IDENT
      is ''业务标识''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_CHARGE_BIND_RECORD.BUSI_TYPE
      is ''业务类型''
    ';
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_INDEXES U WHERE u.INDEX_NAME = 'PK_D_CHARGE_BIND_RECORD';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table D_CHARGE_BIND_RECORD
      add constraint PK_D_CHARGE_BIND_RECORD primary key (READ_ID)
      using index
      tablespace MPAC_D_IDX
      pctfree 10
      initrans 2
      maxtrans 255
      storage
      (
      initial 64K
      next 1M
      minextents 1
      maxextents unlimited
      )
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 PK_D_CHARGE_BIND_RECORD 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Sequences U WHERE u.sequence_name = 'SEQ_D_CHARGE_BIND_RECORD';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      create sequence SEQ_D_CHARGE_BIND_RECORD
      minvalue 1
      maxvalue 9999999999999999
      start with 8200000000000000
      increment by 1
      cache 20
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 SEQ_D_CHARGE_BIND_RECORD 已存在。');
    END IF;
END;
/
prompt
prompt 正在处理纪录编号为 8200000000018488 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'D_METER' AND U.COLUMN_NAME='CHARG_BAR_CODE';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table D_METER add charg_bar_code VARCHAR2(32)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 D_METER.charg_bar_code 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column D_METER.charg_bar_code
      is ''充电桩设备条形码''
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000018491 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'D_IT' AND U.COLUMN_NAME='CHARG_BAR_CODE';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table D_IT add charg_bar_code VARCHAR2(32)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 D_IT.charg_bar_code 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column D_IT.charg_bar_code
      is ''充电桩设备条形码''
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000018490 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'B_ORDER_LIST' AND U.COLUMN_NAME='OLD_ORDER_LIST_ID';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table B_ORDER_LIST add old_order_list_id NUMBER(16)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 B_ORDER_LIST.old_order_list_id 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column B_ORDER_LIST.old_order_list_id
      is ''浙江被拆分订单标识''
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000018492 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'C_ARRIVE_CHECK_IN' AND U.COLUMN_NAME='BOUND_TYPE';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table C_ARRIVE_CHECK_IN add bound_type VARCHAR2(8)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 C_ARRIVE_CHECK_IN.bound_type 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'C_ARRIVE_CHECK_IN' AND U.COLUMN_NAME='IS_BOUND';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table C_ARRIVE_CHECK_IN add is_bound VARCHAR2(8)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 C_ARRIVE_CHECK_IN.is_bound 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column C_ARRIVE_CHECK_IN.bound_type
      is ''充电桩绑定方式。01到货登记时绑定，02到货登记后绑定''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column C_ARRIVE_CHECK_IN.is_bound
      is ''充电桩批次绑定状态。1是/0否''
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000018494 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'C_ARRIVE_CHECK_IN_DET' AND U.COLUMN_NAME='BGN_METER_BAR_NO';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table C_ARRIVE_CHECK_IN_DET add bgn_meter_bar_no VARCHAR2(32 CHAR)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 C_ARRIVE_CHECK_IN_DET.bgn_meter_bar_no 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'C_ARRIVE_CHECK_IN_DET' AND U.COLUMN_NAME='END_METER_BAR_NO';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table C_ARRIVE_CHECK_IN_DET add end_meter_bar_no VARCHAR2(32 CHAR)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 C_ARRIVE_CHECK_IN_DET.end_meter_bar_no 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'C_ARRIVE_CHECK_IN_DET' AND U.COLUMN_NAME='BGN_SHUNT_BAR_NO';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table C_ARRIVE_CHECK_IN_DET add bgn_shunt_bar_no VARCHAR2(32 CHAR)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 C_ARRIVE_CHECK_IN_DET.bgn_shunt_bar_no 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'C_ARRIVE_CHECK_IN_DET' AND U.COLUMN_NAME='END_SHUNT_BAR_NO';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table C_ARRIVE_CHECK_IN_DET add end_shunt_bar_no VARCHAR2(32 CHAR)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 C_ARRIVE_CHECK_IN_DET.end_shunt_bar_no 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column C_ARRIVE_CHECK_IN_DET.bgn_meter_bar_no
      is ''电能表起始条码''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column C_ARRIVE_CHECK_IN_DET.end_meter_bar_no
      is ''电能表结束条码''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column C_ARRIVE_CHECK_IN_DET.bgn_shunt_bar_no
      is ''分流器起始条码''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column C_ARRIVE_CHECK_IN_DET.end_shunt_bar_no
      is ''分流器结束条码''
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000018495 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Tables U WHERE U.TABLE_NAME = 'C_ARRIVE_CHARG_EQUIP_RELAITON';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
        create table C_ARRIVE_CHARG_EQUIP_RELAITON
        (
        relation_id NUMBER(16) not null,
        bound_equip_categ VARCHAR2(8),
        equip_rcv_id NUMBER(16),
        equip_rcv_det_id NUMBER(16),
        equip_arrive_batch_no VARCHAR2(32),
        charg_rcv_id NUMBER(16),
        charg_arrive_batch_no VARCHAR2(32),
        charg_rcv_det_id NUMBER(16)
        )
        tablespace MPAC_C
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
      dbms_output.put_line('脚本已跳过，因为 C_ARRIVE_CHARG_EQUIP_RELAITON 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table C_ARRIVE_CHARG_EQUIP_RELAITON
      is ''充电设备批次绑定关系表''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column C_ARRIVE_CHARG_EQUIP_RELAITON.RELATION_ID
      is ''标识ID，引用序列SEQ_ARRIVE_CHARG_EQUIP_RELA''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column C_ARRIVE_CHARG_EQUIP_RELAITON.BOUND_EQUIP_CATEG
      is ''附属设备类别''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column C_ARRIVE_CHARG_EQUIP_RELAITON.EQUIP_RCV_ID
      is ''附属设备到货登记标识id''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column C_ARRIVE_CHARG_EQUIP_RELAITON.EQUIP_RCV_DET_ID
      is ''设备到货登记明细标识ID''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column C_ARRIVE_CHARG_EQUIP_RELAITON.EQUIP_ARRIVE_BATCH_NO
      is ''附属设备到货批次号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column C_ARRIVE_CHARG_EQUIP_RELAITON.CHARG_RCV_ID
      is ''充电桩到货登记标识ID''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column C_ARRIVE_CHARG_EQUIP_RELAITON.CHARG_ARRIVE_BATCH_NO
      is ''充电桩到货批次号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column C_ARRIVE_CHARG_EQUIP_RELAITON.CHARG_RCV_DET_ID
      is ''充电桩到货登记明细标识ID''
    ';
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_INDEXES U WHERE u.INDEX_NAME = 'PK_ARRIVE_CHARG_EQUIP_RELAITON';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table C_ARRIVE_CHARG_EQUIP_RELAITON
      add constraint PK_ARRIVE_CHARG_EQUIP_RELAITON primary key (RELATION_ID)
      using index
      tablespace MPAC_C_IDX
      pctfree 10
      initrans 2
      maxtrans 255
      storage
      (
      initial 64K
      next 1M
      minextents 1
      maxextents unlimited
      )
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 PK_ARRIVE_CHARG_EQUIP_RELAITON 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Sequences U WHERE u.sequence_name = 'SEQ_ARRIVE_CHARG_EQUIP_RELA';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      create sequence SEQ_ARRIVE_CHARG_EQUIP_RELA
      minvalue 1
      maxvalue 9999999999999999
      start with 8200000000000000
      increment by 1
      cache 20
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 SEQ_ARRIVE_CHARG_EQUIP_RELA 已存在。');
    END IF;
END;
/
prompt
prompt 正在处理纪录编号为 8200000000018508 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_INDEXES U WHERE u.INDEX_NAME = 'IDX_D_CHARGE_POINT_RCV_ID';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      create index IDX_D_CHARGE_POINT_RCV_ID on D_CHARGE_POINT (RCV_ID)
      tablespace MPAC_D_IDX
      pctfree 10
      initrans 2
      maxtrans 255
      storage
      (
      initial 128K
      next 1M
      minextents 1
      maxextents unlimited
      )
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 IDX_D_CHARGE_POINT_RCV_ID 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_INDEXES U WHERE u.INDEX_NAME = 'IDX_D_CHARGE_POINT_BAR_CODE';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      create index IDX_D_CHARGE_POINT_BAR_CODE on D_CHARGE_POINT (BAR_CODE)
      tablespace MPAC_D_IDX
      pctfree 10
      initrans 2
      maxtrans 255
      storage
      (
      initial 128K
      next 1M
      minextents 1
      maxextents unlimited
      )
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 IDX_D_CHARGE_POINT_BAR_CODE 已存在。');
    END IF;
END;
/
prompt
prompt 正在处理纪录编号为 8200000000018720 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'D_CHARGE_POINT' AND U.COLUMN_NAME='DEVI_SEPC';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table D_CHARGE_POINT drop column devi_sepc
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 D_CHARGE_POINT.DEVI_SEPC 不存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'D_CHARGE_POINT' AND U.COLUMN_NAME='OUT_RATED_CURRENT';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table D_CHARGE_POINT drop column out_rated_current
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 D_CHARGE_POINT.OUT_RATED_CURRENT 不存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'D_CHARGE_POINT' AND U.COLUMN_NAME='OUT_MAX_CURRENT';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table D_CHARGE_POINT drop column out_max_current
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 D_CHARGE_POINT.OUT_MAX_CURRENT 不存在。');
    END IF;
END;
/
prompt
prompt 正在处理纪录编号为 8200000000018721 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'D_CHARGE_POINT' AND U.COLUMN_NAME='OUT_CURRENT';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table D_CHARGE_POINT add out_current VARCHAR2(8)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 D_CHARGE_POINT.out_current 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column D_CHARGE_POINT.out_current
      is ''单充电口输出最大电流（A）（交流充电桩为额定电流）''
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000018772 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'D_CHARGE_BIND_RECORD' AND U.COLUMN_NAME='BINGD_EQUIP_ID';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table D_CHARGE_BIND_RECORD rename column bingd_equip_id to BIND_EQUIP_ID
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 D_CHARGE_BIND_RECORD.BINGD_EQUIP_ID 不存在。');
    END IF;
END;
/
prompt
prompt 正在处理纪录编号为 8200000000018872 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    EXECUTE IMMEDIATE
    '
      create or replace view vw_equip_status_code as
      select decode(code_type, ''tmnlStatus'', ''09'', ''rotateBoxStatus'', ''19'',
      ''sealStatus'', ''17'', ''progerStatus'', ''20'', ''itStatus'', ''02'',
      ''meterStatus'', ''01'', ''mrmStatus'', ''15'',''airSwitchStatus'',''27'',
      ''commStatus'',''54'',''cabinetStatus'',''05'',''repairingBoxStatus'',''31'',''handheldsStatus'',''85'',
      ''converterStatusCode'',''33'',''tunovercabinetStatusCode'',''07'',''shuntStatus'',''35'',''chargStatusCode'',''36'') equip_categ,
      value code, name code_name
      from p_code_std
      where code_type in
      (''tmnlStatus'', ''rotateBoxStatus'', ''sealStatus'', ''progerStatus'',
      ''itStatus'', ''meterStatus'', ''mrmStatus'',''airSwitchStatus'',''commStatus'',
      ''cabinetStatus'',''rselect * from VW_EQUIP_STATUS_CODE
      epairingBoxStatus'',''handheldsStatus'',''converterStatusCode'',''tunovercabinetStatusCode'',''shuntStatus'',''chargStatusCode'')
      union all
      select decode(code_type, ''itStatus'', ''03'') equip_categ, value code,
      name code_name
      from p_code_std
      where code_type = ''itStatus''
      union all
      select decode(code_type, ''itStatus'', ''04'') equip_categ, value code,
      name code_name
      from p_code_std
      where code_type = ''itStatus''
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000018945 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    EXECUTE IMMEDIATE
    '
      CREATE OR REPLACE VIEW VW_CP_DETECT_UNQUALIFIED_TREE AS
      SELECT T.VALUE AS VALUE,
      (CASE LENGTH(T.VALUE)
      WHEN 5 THEN
      (SELECT TT.CONTENT1
      FROM P_CODE_STD TT
      WHERE TT.CODE_TYPE = ''cpDetectUnqualified''
      AND TT.VALUE = SUBSTR(T.VALUE, 0, 3))
      ELSE
      T.CONTENT1
      END) AS PRE_VALUE,
      T.NAME AS NAME,
      T.CONTENT2 AS PRE_NAME
      FROM P_CODE_STD T
      WHERE T.CODE_TYPE = ''cpDetectUnqualified''
      ORDER BY T.VALUE
    ';
    EXECUTE IMMEDIATE
    '
      comment on table VW_CP_DETECT_UNQUALIFIED_TREE is ''充电桩检定不合格原因树视图 ''
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000018965 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'C_ARRIVE_CHECK_IN' AND U.COLUMN_NAME='CHARGE_PORT_NUM';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table C_ARRIVE_CHECK_IN add charge_port_num NUMBER(16)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 C_ARRIVE_CHECK_IN.charge_port_num 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column C_ARRIVE_CHECK_IN.charge_port_num
      is ''充电桩充电口数量''
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000018973 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'T_DETECT_CP_RSLT' AND U.COLUMN_NAME='EQUIP_ID';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table T_DETECT_CP_RSLT add equip_id NUMBER(16)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 T_DETECT_CP_RSLT.equip_id 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column T_DETECT_CP_RSLT.equip_id
      is ''设备''
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000018985 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Tables U WHERE U.TABLE_NAME = 'F_LOST_EQUIP';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
        create table F_LOST_EQUIP
        (
        det_id            NUMBER(16) not null,
        sg_task_no        VARCHAR2(16),
        sg_task_time      DATE,
        sg_app_no         VARCHAR2(16),
        equip_categ       VARCHAR2(8),
        busi_type         VARCHAR2(8),
        rm_reason         VARCHAR2(8),
        fault_reason      VARCHAR2(8),
        equip_id          NUMBER(16),
        bar_code          VARCHAR2(32),
        remove_time       DATE,
        meter_reading     VARCHAR2(128),
        elec_price        VARCHAR2(64),
        pr_org_no         VARCHAR2(16),
        repick_org_no     VARCHAR2(16),
        cons_no           VARCHAR2(32),
        current_fee       VARCHAR2(8),
        backup_fee        VARCHAR2(8),
        crt_step_val      VARCHAR2(128),
        crt_step_price    VARCHAR2(128),
        crt_y_clean_day   VARCHAR2(32),
        bkup_step_val     VARCHAR2(128),
        bkup_step_price   VARCHAR2(128),
        bkup_y_clean_day  VARCHAR2(32),
        left_amount       NUMBER(16,2),
        overdraft_amount  NUMBER(16,2),
        buy_times         NUMBER(8),
        volt_ratio_code   VARCHAR2(8),
        rc_ratio_code     VARCHAR2(8),
        write_time        DATE default SYSDATE,
        equip_code        VARCHAR2(32),
        con_mode          VARCHAR2(8),
        volt_code         VARCHAR2(8),
        rated_current     VARCHAR2(8),
        remark            VARCHAR2(256),
        manu_no           VARCHAR2(8),
        process_suggest   VARCHAR2(8),
        suggest_reason    VARCHAR2(8),
        sg_detect_task_no VARCHAR2(8),
        is_rerepick       VARCHAR2(2),
        latest_chk_date   DATE,
        comm_addr         VARCHAR2(32),
        lost_time         DATE,
        lost_org_no       VARCHAR2(16),
        sg_io_task_no     VARCHAR2(32)
        )
        tablespace MPAC_F
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
      dbms_output.put_line('脚本已跳过，因为 F_LOST_EQUIP 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table F_LOST_EQUIP
      is ''拆回表丢失记录表
      （用于拆回表的丢失业务处理，保存已丢失的拆回表待分拣设备清单数据以及丢失时间单位等信息，
      主要包括：营销退库流程单号，设备标识，拆回类型，拆回原因，丢失时间，丢失单位等）''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_LOST_EQUIP.det_id
      is ''明细标识''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_LOST_EQUIP.sg_task_no
      is ''营销退库任务编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_LOST_EQUIP.sg_task_time
      is ''营销退库任务时间''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_LOST_EQUIP.sg_app_no
      is ''营销退库流程编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_LOST_EQUIP.equip_categ
      is ''设备类别''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_LOST_EQUIP.busi_type
      is ''拆回类型，（营销拆回工单类型）VW_REPICK_BUSI_TYPE''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_LOST_EQUIP.rm_reason
      is ''拆回原因，VW_MET_RMV_REASON（营销拆回原因）''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_LOST_EQUIP.fault_reason
      is ''故障现象，电表vw_repick_meter_fault_type_l3''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_LOST_EQUIP.equip_id
      is ''设备标识''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_LOST_EQUIP.bar_code
      is ''设备条形码''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_LOST_EQUIP.remove_time
      is ''拆回时间,格式：年月日时分秒''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_LOST_EQUIP.meter_reading
      is ''底度（总、尖、峰、平、谷），按照总尖峰平谷的顺序，竖线分割''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_LOST_EQUIP.elec_price
      is ''各费率电价，按尖峰平谷顺序以竖线分割，单位：元''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_LOST_EQUIP.pr_org_no
      is ''产权单位，为电力公司的资产''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_LOST_EQUIP.repick_org_no
      is ''设备分拣单位''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_LOST_EQUIP.cons_no
      is ''用户编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_LOST_EQUIP.current_fee
      is ''费率,参见计量标准代码：费率类型，VW_EQUIP_FEE_RATE''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_LOST_EQUIP.backup_fee
      is ''费率,参见计量标准代码：费率类型，VW_EQUIP_FEE_RATE''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_LOST_EQUIP.crt_step_val
      is ''当前套阶梯值1-6 ，按1至6的顺序采用竖线分割。单位：千瓦时。例如230|170|100|||表示1-3阶梯值分别为230、170、100千瓦时，无4-6阶梯值。''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_LOST_EQUIP.crt_step_price
      is ''当前套阶梯电价1-7 ，按1至7的顺序采用竖线分割。单位：元。例如：0.5655|0.8375|1.0535||||表示阶梯电价1、2、3分别为0.5655元、0.8375元、1.0535元，无4-7阶梯电价''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_LOST_EQUIP.crt_y_clean_day
      is ''当前套年结算日，按第1至第4的顺序采用月日拼接后竖线分割。例如：0501|0624|1001|1212（表示年第1、第2、第3、第4结算日分别为5月1日，6月24日，10月1日，12月12日）或0403|0608||（表示年第1、2结算日为4月3日和6月8日，无第3、4结算日）''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_LOST_EQUIP.bkup_step_val
      is ''备用套阶梯值1-6 ，按1至6的顺序采用竖线分割''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_LOST_EQUIP.bkup_step_price
      is ''备用套阶梯电价1-7 ，按1至7的顺序采用竖线分割''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_LOST_EQUIP.bkup_y_clean_day
      is ''备用套年结算日，按第1至第4的顺序采用月日拼接后竖线分割。例如：0501|0624|1001|1212（表示年第1、第2、第3、第4结算日分别为5月1日，6月24日，10月1日，12月12日）或0403|0608||（表示年第1、2结算日为4月3日和6月8日，无第3、4结算日）''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_LOST_EQUIP.left_amount
      is ''剩余金额，单位：元''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_LOST_EQUIP.overdraft_amount
      is ''透支金额，单位：元''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_LOST_EQUIP.buy_times
      is ''用户购电次数''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_LOST_EQUIP.volt_ratio_code
      is ''电压互感器变比,参见计量标准代码：电压互感器变比VW_VOLT_RATIO_CODE''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_LOST_EQUIP.rc_ratio_code
      is ''电流互感器变比,参见计量标准代码：电流互感器变比VW_RC_RATIO_CODE''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_LOST_EQUIP.write_time
      is ''当前时间 SYSDATE''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_LOST_EQUIP.equip_code
      is ''设备码''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_LOST_EQUIP.con_mode
      is ''接入方式，01 直接接入 02 互感接入''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_LOST_EQUIP.volt_code
      is ''参比电压''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_LOST_EQUIP.rated_current
      is ''参比电流''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_LOST_EQUIP.remark
      is ''备注''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_LOST_EQUIP.manu_no
      is ''厂家''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_LOST_EQUIP.process_suggest
      is ''对该设备的处置建议，例如超期表建议为03库存待报废。编码：01，库存待维修 02库存待赔付 03 库存待报废 04库存待校验VW_REPICK_PROCESS_CODE''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_LOST_EQUIP.suggest_reason
      is ''分拣处置建议的原因，例如表龄超期VW_REPICK_SUGGEST_REASON''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_LOST_EQUIP.sg_detect_task_no
      is ''营销拆回表装用前检定任务编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_LOST_EQUIP.is_rerepick
      is ''是否在省中心重新分拣''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_LOST_EQUIP.latest_chk_date
      is ''最近检定日期''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_LOST_EQUIP.comm_addr
      is ''通讯地址''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_LOST_EQUIP.lost_time
      is ''丢失时间''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_LOST_EQUIP.lost_org_no
      is ''丢失单位''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_LOST_EQUIP.sg_io_task_no
      is ''营销出库任务单号''
    ';
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_INDEXES U WHERE u.INDEX_NAME = 'PK_F_LOST_EQUIP';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table F_LOST_EQUIP
      add constraint PK_F_LOST_EQUIP primary key (DET_ID)
      using index
      tablespace MPAC_F_IDX
      pctfree 10
      initrans 2
      maxtrans 255
      storage
      (
      initial 64K
      next 1M
      minextents 1
      maxextents unlimited
      )
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 PK_F_LOST_EQUIP 已存在。');
    END IF;
END;
/
prompt
prompt 正在处理纪录编号为 8200000000018997 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'T_DETECT_CP_RSLT' AND U.COLUMN_NAME='REMARK';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table T_DETECT_CP_RSLT add remark VARCHAR2(256)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 T_DETECT_CP_RSLT.remark 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'T_DETECT_CP_RSLT' AND U.COLUMN_NAME='CERT_NO';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table T_DETECT_CP_RSLT add cert_no VARCHAR2(32)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 T_DETECT_CP_RSLT.cert_no 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'T_DETECT_CP_RSLT' AND U.COLUMN_NAME='CERT_NO_PERIOD';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table T_DETECT_CP_RSLT add cert_no_period VARCHAR2(32)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 T_DETECT_CP_RSLT.cert_no_period 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column T_DETECT_CP_RSLT.remark
      is ''备注''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_DETECT_CP_RSLT.cert_no
      is ''计量装置证书编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_DETECT_CP_RSLT.cert_no_period
      is ''计量装置证书编号有效期''
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000019008 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'T_DETECT_TASK' AND U.COLUMN_NAME='PRE_ELEC_CHARGE';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table T_DETECT_TASK add pre_elec_charge VARCHAR2(8)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 T_DETECT_TASK.pre_elec_charge 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column T_DETECT_TASK.pre_elec_charge
      is ''预置电费''
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000019071 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Tables U WHERE U.TABLE_NAME = 'B_ORDER_PARA_CP';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
        create table B_ORDER_PARA_CP
        (
        para_cp_id NUMBER(16) not null,
        order_det_id NUMBER(16),
        sort_code VARCHAR2(8),
        devi_type VARCHAR2(8),
        devi_categ VARCHAR2(8),
        out_max_power VARCHAR2(8),
        in_rated_rv VARCHAR2(8),
        out_rated_rv VARCHAR2(8),
        out_down_rv VARCHAR2(8),
        out_up_rv VARCHAR2(8),
        out_current VARCHAR2(8),
        cable_length VARCHAR2(32),
        is_const_power VARCHAR2(8),
        is_cts VARCHAR2(8),
        is_power_assign VARCHAR2(8),
        connect_mode VARCHAR2(8)
        )
        tablespace MPAC_B
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
      dbms_output.put_line('脚本已跳过，因为 B_ORDER_PARA_CP 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table B_ORDER_PARA_CP
      is ''充电桩订货参数表，1)设备订货,维护订货明细时产生;2)本实体主要包括参数记录唯一标识,订单明细id,类别,型号,机型等重要参数;''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column B_ORDER_PARA_CP.PARA_CP_ID
      is ''参数记录唯一标识''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column B_ORDER_PARA_CP.ORDER_DET_ID
      is ''订货明细标识''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column B_ORDER_PARA_CP.SORT_CODE
      is ''充电桩类别；直流充电桩/交流充电桩VW_CHARG_SORT_CODE''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column B_ORDER_PARA_CP.DEVI_TYPE
      is ''设备型号，VW_CHARG_ MODEL''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column B_ORDER_PARA_CP.DEVI_CATEG
      is ''机型,直流充电柱：一体机/分体机；交流充电桩：壁挂/落地；VW_CHARG_TYPE''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column B_ORDER_PARA_CP.OUT_MAX_POWER
      is ''输出额定功率（kW），VW_ OUT_MAX_POWER''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column B_ORDER_PARA_CP.IN_RATED_RV
      is ''输入额定电压（V），VW_IN_RATED_RV''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column B_ORDER_PARA_CP.OUT_RATED_RV
      is ''输出额定电压（V），交流充电桩特性,VW_OUT_RATED_RV''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column B_ORDER_PARA_CP.OUT_DOWN_RV
      is ''输出下限电压（V），直流充电桩特性，VW_OUT_DOWN_RV''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column B_ORDER_PARA_CP.OUT_UP_RV
      is ''输出上限电压（V），直流充电桩特性，VW_OUT_RATED_RV''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column B_ORDER_PARA_CP.OUT_CURRENT
      is ''单充电口输出最大电流（A），（交流充电桩为额定电流），VW_OUT_ CURRENT''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column B_ORDER_PARA_CP.CABLE_LENGTH
      is ''电缆长度''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column B_ORDER_PARA_CP.IS_CONST_POWER
      is ''恒功率功能，是/否（直流充电桩特性）''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column B_ORDER_PARA_CP.IS_CTS
      is ''CTS报文功能，是/否（直流充电桩特性）''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column B_ORDER_PARA_CP.IS_POWER_ASSIGN
      is ''动态功率分配功能，是/否（直流充电桩特性）''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column B_ORDER_PARA_CP.CONNECT_MODE
      is ''连接模式，CASE B/CASE C（交流充电桩特性）''
    ';
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_INDEXES U WHERE u.INDEX_NAME = 'PK_B_ORDER_PARA_CP';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table B_ORDER_PARA_CP
      add constraint PK_B_ORDER_PARA_CP primary key (PARA_CP_ID)
      using index
      tablespace MPAC_B_IDX
      pctfree 10
      initrans 2
      maxtrans 255
      storage
      (
      initial 64K
      next 1M
      minextents 1
      maxextents unlimited
      )
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 PK_B_ORDER_PARA_CP 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Sequences U WHERE u.sequence_name = 'SEQ_B_ORDER_PARA_CP';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      create sequence SEQ_B_ORDER_PARA_CP
      minvalue 1
      maxvalue 9999999999999999
      start with 8200000000000000
      increment by 1
      cache 20
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 SEQ_B_ORDER_PARA_CP 已存在。');
    END IF;
END;
/
prompt
prompt 正在处理纪录编号为 8200000000019122 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'B_EQUIP_CODE' AND U.COLUMN_NAME='DEVI_TYPE';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table B_EQUIP_CODE add devi_type VARCHAR2(8)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 B_EQUIP_CODE.devi_type 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'B_EQUIP_CODE' AND U.COLUMN_NAME='DEVI_CATEG';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table B_EQUIP_CODE add devi_categ VARCHAR2(8)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 B_EQUIP_CODE.devi_categ 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'B_EQUIP_CODE' AND U.COLUMN_NAME='OUT_MAX_POWER';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table B_EQUIP_CODE add out_max_power VARCHAR2(8)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 B_EQUIP_CODE.out_max_power 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'B_EQUIP_CODE' AND U.COLUMN_NAME='IN_RATED_RV';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table B_EQUIP_CODE add in_rated_rv VARCHAR2(8)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 B_EQUIP_CODE.in_rated_rv 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'B_EQUIP_CODE' AND U.COLUMN_NAME='OUT_RATED_RV';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table B_EQUIP_CODE add out_rated_rv VARCHAR2(8)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 B_EQUIP_CODE.out_rated_rv 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'B_EQUIP_CODE' AND U.COLUMN_NAME='OUT_DOWN_RV';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table B_EQUIP_CODE add out_down_rv VARCHAR2(8)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 B_EQUIP_CODE.out_down_rv 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'B_EQUIP_CODE' AND U.COLUMN_NAME='OUT_UP_RV';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table B_EQUIP_CODE add out_up_rv VARCHAR2(8)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 B_EQUIP_CODE.out_up_rv 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'B_EQUIP_CODE' AND U.COLUMN_NAME='OUT_CURRENT';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table B_EQUIP_CODE add out_current VARCHAR2(8)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 B_EQUIP_CODE.out_current 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'B_EQUIP_CODE' AND U.COLUMN_NAME='CONNECT_MODE';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table B_EQUIP_CODE add connect_mode VARCHAR2(8)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 B_EQUIP_CODE.connect_mode 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column B_EQUIP_CODE.devi_type
      is ''充电桩设备型号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column B_EQUIP_CODE.devi_categ
      is ''充电桩机型''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column B_EQUIP_CODE.out_max_power
      is ''充电桩输出额定功率（kW）''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column B_EQUIP_CODE.in_rated_rv
      is ''充电桩输入额定电压（V）''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column B_EQUIP_CODE.out_rated_rv
      is ''充电桩输出额定电压（V）''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column B_EQUIP_CODE.out_down_rv
      is ''充电桩输出下限电压（V）''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column B_EQUIP_CODE.out_up_rv
      is ''充电桩输出上限电压（V）''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column B_EQUIP_CODE.out_current
      is ''充电桩单充电口输出最大电流（A）''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column B_EQUIP_CODE.connect_mode
      is ''充电桩连接模式''
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000019379 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'C_ARRIVE_CHARGE_PARA' AND U.COLUMN_NAME='CHARGE_CONTR_SPECE';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table C_ARRIVE_CHARGE_PARA add charge_contr_spece VARCHAR2(8)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 C_ARRIVE_CHARGE_PARA.charge_contr_spece 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'C_ARRIVE_CHARGE_PARA' AND U.COLUMN_NAME='CHARGE_CONTR_MANUF';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table C_ARRIVE_CHARGE_PARA add charge_contr_manuf VARCHAR2(8)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 C_ARRIVE_CHARGE_PARA.charge_contr_manuf 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'C_ARRIVE_CHARGE_PARA' AND U.COLUMN_NAME='CHARGE_MODULE_TYPE';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table C_ARRIVE_CHARGE_PARA add charge_module_type VARCHAR2(8)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 C_ARRIVE_CHARGE_PARA.charge_module_type 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column C_ARRIVE_CHARGE_PARA.charge_contr_spece
      is ''充电控制器规格''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column C_ARRIVE_CHARGE_PARA.charge_contr_manuf
      is ''充电控制器厂家''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column C_ARRIVE_CHARGE_PARA.charge_module_type
      is ''充电模块型号''
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000019382 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'U_DIST_APP_DET' AND U.COLUMN_NAME='ERP_BATCH_NO';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table U_DIST_APP_DET add erp_batch_no VARCHAR2(32)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 U_DIST_APP_DET.erp_batch_no 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column U_DIST_APP_DET.erp_batch_no
      is ''从erp系统中导入的物料编号''
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000019409 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'U_DIST_APP' AND U.COLUMN_NAME='IS_DIRECT';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table U_DIST_APP modify is_direct 
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 U_DIST_APP.IS_DIRECT 不存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column U_DIST_APP.is_direct
      is ''配送方式，0普通配送，1直配，2主动配送''
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000019583 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Tables U WHERE U.TABLE_NAME = 'F_ELEC_PRICE_INFO';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
        create table F_ELEC_PRICE_INFO
        (
        read_id NUMBER(16) not null,
        task_no VARCHAR2(16),
        bar_code NUMBER(32),
        remain_amount NUMBER(8,2),
        purchase_num NUMBER(5),
        fee_num NUMBER(5),
        ku_fee_jian NUMBER(10,4),
        ku_fee_feng NUMBER(10,4),
        ku_fee_ping NUMBER(10,4),
        ku_fee_gu NUMBER(10,4),
        feng_fee_jian NUMBER(10,4),
        feng_fee_feng NUMBER(10,4),
        feng_fee_ping NUMBER(10,4),
        feng_fee_gu NUMBER(10,4),
        ping_fee_jian NUMBER(10,4),
        ping_fee_feng NUMBER(10,4),
        ping_fee_ping NUMBER(10,4),
        ping_fee_gu NUMBER(10,4),
        ladder_num NUMBER(5),
        fir_ladder_value1 NUMBER(10,4),
        fir_ladder_value2 NUMBER(10,4),
        fir_ladder_value3 NUMBER(10,4),
        fir_ladder_price1 NUMBER(10,4),
        fir_ladder_price2 NUMBER(10,4),
        fir_ladder_price3 NUMBER(10,4),
        fir_ladder_price4 NUMBER(10,4),
        write_time DATE default SYSDATE
        )
        tablespace MPAC_F
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
      dbms_output.put_line('脚本已跳过，因为 F_ELEC_PRICE_INFO 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table F_ELEC_PRICE_INFO
      is ''电价信息表，
      用于保存分拣装置上传的电表费率、阶梯数以及各时期电价信息''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_ELEC_PRICE_INFO.READ_ID
      is ''记录标识''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_ELEC_PRICE_INFO.TASK_NO
      is ''任务编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_ELEC_PRICE_INFO.BAR_CODE
      is ''设备条码''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_ELEC_PRICE_INFO.REMAIN_AMOUNT
      is ''当前剩余金额(元)''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_ELEC_PRICE_INFO.PURCHASE_NUM
      is ''购电次数''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_ELEC_PRICE_INFO.FEE_NUM
      is ''费率数''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_ELEC_PRICE_INFO.KU_FEE_JIAN
      is ''枯水期费率电价尖''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_ELEC_PRICE_INFO.KU_FEE_FENG
      is ''枯水期费率电价峰''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_ELEC_PRICE_INFO.KU_FEE_PING
      is ''枯水期费率电价平''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_ELEC_PRICE_INFO.KU_FEE_GU
      is ''枯水期费率电价谷''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_ELEC_PRICE_INFO.FENG_FEE_JIAN
      is ''丰水期费率电价尖''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_ELEC_PRICE_INFO.FENG_FEE_FENG
      is ''丰水期费率电价峰''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_ELEC_PRICE_INFO.FENG_FEE_PING
      is ''丰水期费率电价平''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_ELEC_PRICE_INFO.FENG_FEE_GU
      is ''丰水期费率电价谷''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_ELEC_PRICE_INFO.PING_FEE_JIAN
      is ''平水期费率电价尖''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_ELEC_PRICE_INFO.PING_FEE_FENG
      is ''平水期费率电价峰''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_ELEC_PRICE_INFO.PING_FEE_PING
      is ''平水期费率电价平''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_ELEC_PRICE_INFO.PING_FEE_GU
      is ''平水期费率电价谷''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_ELEC_PRICE_INFO.LADDER_NUM
      is ''阶梯数''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_ELEC_PRICE_INFO.FIR_LADDER_VALUE1
      is ''当前阶梯值1''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_ELEC_PRICE_INFO.FIR_LADDER_VALUE2
      is ''当前阶梯值2''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_ELEC_PRICE_INFO.FIR_LADDER_VALUE3
      is ''当前阶梯值3''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_ELEC_PRICE_INFO.FIR_LADDER_PRICE1
      is ''当前阶梯电价1''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_ELEC_PRICE_INFO.FIR_LADDER_PRICE2
      is ''当前阶梯电价2''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_ELEC_PRICE_INFO.FIR_LADDER_PRICE3
      is ''当前阶梯电价3''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_ELEC_PRICE_INFO.FIR_LADDER_PRICE4
      is ''当前阶梯电价4''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_ELEC_PRICE_INFO.WRITE_TIME
      is ''写入时间''
    ';
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_INDEXES U WHERE u.INDEX_NAME = 'PK_F_ELEC_PRICE_INFO';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table F_ELEC_PRICE_INFO
      add constraint PK_F_ELEC_PRICE_INFO primary key (READ_ID)
      using index
      tablespace MPAC_F_IDX
      pctfree 10
      initrans 2
      maxtrans 255
      storage
      (
      initial 64K
      next 1M
      minextents 1
      maxextents unlimited
      )
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 PK_F_ELEC_PRICE_INFO 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Sequences U WHERE u.sequence_name = 'SEQ_F_ELEC_PRICE_INFO';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      create sequence SEQ_F_ELEC_PRICE_INFO
      minvalue 1
      maxvalue 9999999999999999
      start with 8200000000000000
      increment by 1
      cache 20
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 SEQ_F_ELEC_PRICE_INFO 已存在。');
    END IF;
END;
/
prompt
prompt 正在处理纪录编号为 8200000000019584 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Tables U WHERE U.TABLE_NAME = 'F_MET_READING_INFO';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
        create table F_MET_READING_INFO
        (
        read_id NUMBER(16) not null,
        task_no VARCHAR2(16),
        data_date DATE,
        day_num NUMBER(5),
        bar_code NUMBER(32),
        pap_r NUMBER(16,4),
        pap_r1 NUMBER(16,4),
        pap_r2 NUMBER(16,4),
        pap_r3 NUMBER(16,4),
        pap_r4 NUMBER(16,4),
        prp_r NUMBER(16,4),
        prp_r1 NUMBER(16,4),
        prp_r2 NUMBER(16,4),
        prp_r3 NUMBER(16,4),
        prp_r4 NUMBER(16,4),
        rap_r NUMBER(16,4),
        rap_r1 NUMBER(16,4),
        rap_r2 NUMBER(16,4),
        rap_r3 NUMBER(16,4),
        rap_r4 NUMBER(16,4),
        rrp_r NUMBER(16,4),
        rrp_r1 NUMBER(16,4),
        rrp_r2 NUMBER(16,4),
        rrp_r3 NUMBER(16,4),
        rrp_r4 NUMBER(16,4),
        pap_demand NUMBER(16,4),
        write_time DATE default SYSDATE
        )
        tablespace MPAC_F
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
      dbms_output.put_line('脚本已跳过，因为 F_MET_READING_INFO 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table F_MET_READING_INFO
      is ''电表示数信息表,
      用于保存分拣装置上传的电表正反向有无功各阶段电能示值''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_MET_READING_INFO.READ_ID
      is ''记录标识''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_MET_READING_INFO.TASK_NO
      is ''任务编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_MET_READING_INFO.DATA_DATE
      is ''采集日期''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_MET_READING_INFO.DAY_NUM
      is ''日期号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_MET_READING_INFO.BAR_CODE
      is ''条码''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_MET_READING_INFO.PAP_R
      is ''正向有功总电能示值''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_MET_READING_INFO.PAP_R1
      is ''正向有功尖电能示值''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_MET_READING_INFO.PAP_R2
      is ''正向有功峰电能示值''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_MET_READING_INFO.PAP_R3
      is ''正向有功平电能示值''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_MET_READING_INFO.PAP_R4
      is ''正向有功谷电能示值''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_MET_READING_INFO.PRP_R
      is ''正向无功总电能示值''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_MET_READING_INFO.PRP_R1
      is ''正向无功尖电能示值''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_MET_READING_INFO.PRP_R2
      is ''正向无功峰电能示值''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_MET_READING_INFO.PRP_R3
      is ''正向无功平电能示值''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_MET_READING_INFO.PRP_R4
      is ''正向无功谷电能示值''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_MET_READING_INFO.RAP_R
      is ''反向有功总能量示值''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_MET_READING_INFO.RAP_R1
      is ''反向有功尖能量示值''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_MET_READING_INFO.RAP_R2
      is ''反向有功峰能量示值''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_MET_READING_INFO.RAP_R3
      is ''反向有功平能量示值''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_MET_READING_INFO.RAP_R4
      is ''反向有功谷能量示值''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_MET_READING_INFO.RRP_R
      is ''反向无功总能示值''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_MET_READING_INFO.RRP_R1
      is ''反向无功尖能示值''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_MET_READING_INFO.RRP_R2
      is ''反向无功峰能示值''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_MET_READING_INFO.RRP_R3
      is ''反向无功平能示值''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_MET_READING_INFO.RRP_R4
      is ''反向无功谷能示值''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_MET_READING_INFO.PAP_DEMAND
      is ''正向有功总最大需量''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_MET_READING_INFO.WRITE_TIME
      is ''写入时间''
    ';
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_INDEXES U WHERE u.INDEX_NAME = 'PK_F_MET_READING_INFO';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table F_MET_READING_INFO
      add constraint PK_F_MET_READING_INFO primary key (READ_ID)
      using index
      tablespace MPAC_F_IDX
      pctfree 10
      initrans 2
      maxtrans 255
      storage
      (
      initial 64K
      next 1M
      minextents 1
      maxextents unlimited
      )
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 PK_F_MET_READING_INFO 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Sequences U WHERE u.sequence_name = 'SEQ_F_MET_READING_INFO';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      create sequence SEQ_F_MET_READING_INFO
      minvalue 1
      maxvalue 9999999999999999
      start with 8200000000000000
      increment by 1
      cache 20
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 SEQ_F_MET_READING_INFO 已存在。');
    END IF;
END;
/
prompt
prompt 正在处理纪录编号为 8200000000019594 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_INDEXES U WHERE u.INDEX_NAME = 'IDX_F_ELEC_PRICE_INFO_TASK_NO';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      create index IDX_F_ELEC_PRICE_INFO_TASK_NO on F_ELEC_PRICE_INFO (TASK_NO)
      tablespace MPAC_F_IDX
      pctfree 10
      initrans 2
      maxtrans 255
      storage
      (
      initial 64K
      next 1M
      minextents 1
      maxextents unlimited
      )
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 IDX_F_ELEC_PRICE_INFO_TASK_NO 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_INDEXES U WHERE u.INDEX_NAME = 'IDX_F_ELEC_PRICE_INFO_BAR_CODE';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      create index IDX_F_ELEC_PRICE_INFO_BAR_CODE on F_ELEC_PRICE_INFO (BAR_CODE)
      tablespace MPAC_F_IDX
      pctfree 10
      initrans 2
      maxtrans 255
      storage
      (
      initial 64K
      next 1M
      minextents 1
      maxextents unlimited
      )
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 IDX_F_ELEC_PRICE_INFO_BAR_CODE 已存在。');
    END IF;
END;
/
prompt
prompt 正在处理纪录编号为 8200000000019595 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_INDEXES U WHERE u.INDEX_NAME = 'IDX_F_MET_READING_INFO_TASKNO';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      create index IDX_F_MET_READING_INFO_TASKNO on F_MET_READING_INFO (TASK_NO)
      tablespace MPAC_F_IDX
      pctfree 10
      initrans 2
      maxtrans 255
      storage
      (
      initial 64K
      next 1M
      minextents 1
      maxextents unlimited
      )
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 IDX_F_MET_READING_INFO_TASKNO 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_INDEXES U WHERE u.INDEX_NAME = 'IDX_F_MET_READING_INFO_BARCODE';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      create index IDX_F_MET_READING_INFO_BARCODE on F_MET_READING_INFO (BAR_CODE)
      tablespace MPAC_F_IDX
      pctfree 10
      initrans 2
      maxtrans 255
      storage
      (
      initial 64K
      next 1M
      minextents 1
      maxextents unlimited
      )
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 IDX_F_MET_READING_INFO_BARCODE 已存在。');
    END IF;
END;
/
prompt
prompt 正在处理纪录编号为 8200000000019692 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'F_ELEC_PRICE_INFO' AND U.COLUMN_NAME='BAR_CODE';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table F_ELEC_PRICE_INFO modify bar_code VARCHAR2(32)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 F_ELEC_PRICE_INFO.BAR_CODE 不存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column F_ELEC_PRICE_INFO.bar_code
      is ''电表条码''
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000019693 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'F_MET_READING_INFO' AND U.COLUMN_NAME='BAR_CODE';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table F_MET_READING_INFO modify bar_code VARCHAR2(32)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 F_MET_READING_INFO.BAR_CODE 不存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column F_MET_READING_INFO.bar_code
      is ''电表条码''
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000019699 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_INDEXES U WHERE u.INDEX_NAME = 'IDX_METER_CHARG_BAR_CODE';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      create index IDX_METER_CHARG_BAR_CODE on D_METER (CHARG_BAR_CODE)
      tablespace MPAC_IDX
      pctfree 10
      initrans 2
      maxtrans 255
      storage
      (
      initial 4M
      next 1M
      minextents 1
      maxextents unlimited
      )
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 IDX_METER_CHARG_BAR_CODE 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_INDEXES U WHERE u.INDEX_NAME = 'IDX_IT_CHARG_BAR_CODE';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      create index IDX_IT_CHARG_BAR_CODE on D_IT (CHARG_BAR_CODE)
      tablespace MPAC_IDX
      pctfree 10
      initrans 2
      maxtrans 255
      storage
      (
      initial 4M
      next 1M
      minextents 1
      maxextents unlimited
      )
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 IDX_IT_CHARG_BAR_CODE 已存在。');
    END IF;
END;
/
prompt
prompt 正在处理纪录编号为 8200000000019719 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'U_DIST_SCHE_ATTENTION' AND U.COLUMN_NAME='NUM';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table U_DIST_SCHE_ATTENTION add num NUMBER(8)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 U_DIST_SCHE_ATTENTION.num 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column U_DIST_SCHE_ATTENTION.num
      is ''排程数量，用于配送模块排程计划制定环节订单排成数量，由页面录入产生''
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000019772 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'T_DETECT_CP_RSLT' AND U.COLUMN_NAME='FILE_PATH';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table T_DETECT_CP_RSLT add file_path VARCHAR2(256)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 T_DETECT_CP_RSLT.file_path 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'T_DETECT_CP_RSLT' AND U.COLUMN_NAME='EQUIP_CATEG';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table T_DETECT_CP_RSLT add equip_categ VARCHAR2(8)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 T_DETECT_CP_RSLT.equip_categ 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'T_DETECT_CP_RSLT' AND U.COLUMN_NAME='MADE_NO';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table T_DETECT_CP_RSLT add made_no VARCHAR2(32)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 T_DETECT_CP_RSLT.made_no 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'T_DETECT_CP_RSLT' AND U.COLUMN_NAME='FAULT_TYPE';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table T_DETECT_CP_RSLT add fault_type VARCHAR2(128)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 T_DETECT_CP_RSLT.fault_type 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'T_DETECT_CP_RSLT' AND U.COLUMN_NAME='ENTER_TYPE';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table T_DETECT_CP_RSLT add enter_type VARCHAR2(8) default ''01''
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 T_DETECT_CP_RSLT.enter_type 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column T_DETECT_CP_RSLT.file_path
      is ''检定报告路径''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_DETECT_CP_RSLT.equip_categ
      is ''设备类别，参考视图VW_EQUIP_CATEG''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_DETECT_CP_RSLT.made_no
      is ''出厂编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_DETECT_CP_RSLT.fault_type
      is ''故障类型。充电桩取视图VW_CP_DETECT_UNQUALIFIED''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_DETECT_CP_RSLT.enter_type
      is ''结果录入类型，01台体上传，02手动录入VW_ENTER_TYPE''
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000019794 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'T_DETECT_CP_RSLT' AND U.COLUMN_NAME='DETECT_DATE';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table T_DETECT_CP_RSLT modify detect_date DATE
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 T_DETECT_CP_RSLT.DETECT_DATE 不存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column T_DETECT_CP_RSLT.detect_date
      is ''检测时间''
    ';
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'T_DETECT_CP_RSLT' AND U.COLUMN_NAME='WRITE_DATE';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table T_DETECT_CP_RSLT modify write_date DATE
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 T_DETECT_CP_RSLT.WRITE_DATE 不存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column T_DETECT_CP_RSLT.write_date
      is ''写入时间''
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000019801 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'T_INTUIT_CP_CONC' AND U.COLUMN_NAME='DETECT_DATE';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table T_INTUIT_CP_CONC modify detect_date DATE
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 T_INTUIT_CP_CONC.DETECT_DATE 不存在。');
    END IF;
END;
/
prompt
prompt 正在处理纪录编号为 8200000000019803 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'T_INSIDE_CP_CONC' AND U.COLUMN_NAME='DETECT_DATE';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table T_INSIDE_CP_CONC modify detect_date DATE
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 T_INSIDE_CP_CONC.DETECT_DATE 不存在。');
    END IF;
END;
/
prompt
prompt 正在处理纪录编号为 8200000000019804 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'T_WIRE_CP_CONC' AND U.COLUMN_NAME='DETECT_DATE';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table T_WIRE_CP_CONC modify detect_date DATE
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 T_WIRE_CP_CONC.DETECT_DATE 不存在。');
    END IF;
END;
/
prompt
prompt 正在处理纪录编号为 8200000000019805 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'T_SIGN_CP_CONC' AND U.COLUMN_NAME='DETECT_DATE';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table T_SIGN_CP_CONC modify detect_date DATE
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 T_SIGN_CP_CONC.DETECT_DATE 不存在。');
    END IF;
END;
/
prompt
prompt 正在处理纪录编号为 8200000000019807 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'T_COMPOSE_CP_CONC' AND U.COLUMN_NAME='DETECT_DATE';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table T_COMPOSE_CP_CONC modify detect_date DATE
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 T_COMPOSE_CP_CONC.DETECT_DATE 不存在。');
    END IF;
END;
/
prompt
prompt 正在处理纪录编号为 8200000000019808 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'T_CONNECT_CP_CONC' AND U.COLUMN_NAME='DETECT_DATE';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table T_CONNECT_CP_CONC modify detect_date DATE
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 T_CONNECT_CP_CONC.DETECT_DATE 不存在。');
    END IF;
END;
/
prompt
prompt 正在处理纪录编号为 8200000000019809 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'T_DISPLAY_CP_CONC' AND U.COLUMN_NAME='DETECT_DATE';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table T_DISPLAY_CP_CONC modify detect_date DATE
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 T_DISPLAY_CP_CONC.DETECT_DATE 不存在。');
    END IF;
END;
/
prompt
prompt 正在处理纪录编号为 8200000000019810 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'T_IN_CP_CONC' AND U.COLUMN_NAME='DETECT_DATE';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table T_IN_CP_CONC modify detect_date DATE
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 T_IN_CP_CONC.DETECT_DATE 不存在。');
    END IF;
END;
/
prompt
prompt 正在处理纪录编号为 8200000000019811 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'T_LANDING_CP_CONC' AND U.COLUMN_NAME='DETECT_DATE';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table T_LANDING_CP_CONC modify detect_date DATE
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 T_LANDING_CP_CONC.DETECT_DATE 不存在。');
    END IF;
END;
/
prompt
prompt 正在处理纪录编号为 8200000000019812 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'T_CLEARANCE_CREEPAGE_CP_CONC' AND U.COLUMN_NAME='DETECT_DATE';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table T_CLEARANCE_CREEPAGE_CP_CONC modify detect_date DATE
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 T_CLEARANCE_CREEPAGE_CP_CONC.DETECT_DATE 不存在。');
    END IF;
END;
/
prompt
prompt 正在处理纪录编号为 8200000000019814 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'T_INSU_RESIST_CP_CONC' AND U.COLUMN_NAME='DETECT_DATE';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table T_INSU_RESIST_CP_CONC modify detect_date DATE
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 T_INSU_RESIST_CP_CONC.DETECT_DATE 不存在。');
    END IF;
END;
/
prompt
prompt 正在处理纪录编号为 8200000000019816 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'T_ONLOAD_DECILITER_CP_CONC' AND U.COLUMN_NAME='DETECT_DATE';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table T_ONLOAD_DECILITER_CP_CONC modify detect_date DATE
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 T_ONLOAD_DECILITER_CP_CONC.DETECT_DATE 不存在。');
    END IF;
END;
/
prompt
prompt 正在处理纪录编号为 8200000000019817 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'T_PWM_CP_CONC' AND U.COLUMN_NAME='DETECT_DATE';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table T_PWM_CP_CONC modify detect_date DATE
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 T_PWM_CP_CONC.DETECT_DATE 不存在。');
    END IF;
END;
/
prompt
prompt 正在处理纪录编号为 8200000000019818 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'T_IN_OVERVOLT_CP_CONC' AND U.COLUMN_NAME='DETECT_DATE';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table T_IN_OVERVOLT_CP_CONC modify detect_date DATE
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 T_IN_OVERVOLT_CP_CONC.DETECT_DATE 不存在。');
    END IF;
END;
/
prompt
prompt 正在处理纪录编号为 8200000000019820 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'T_IN_UNDERVOLT_CP_CONC' AND U.COLUMN_NAME='DETECT_DATE';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table T_IN_UNDERVOLT_CP_CONC modify detect_date DATE
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 T_IN_UNDERVOLT_CP_CONC.DETECT_DATE 不存在。');
    END IF;
END;
/
prompt
prompt 正在处理纪录编号为 8200000000019822 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'T_SCP_CP_CONC' AND U.COLUMN_NAME='DETECT_DATE';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table T_SCP_CP_CONC modify detect_date DATE
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 T_SCP_CP_CONC.DETECT_DATE 不存在。');
    END IF;
END;
/
prompt
prompt 正在处理纪录编号为 8200000000019824 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'T_LOCK_CP_CONC' AND U.COLUMN_NAME='DETECT_DATE';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table T_LOCK_CP_CONC modify detect_date DATE
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 T_LOCK_CP_CONC.DETECT_DATE 不存在。');
    END IF;
END;
/
prompt
prompt 正在处理纪录编号为 8200000000019826 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'T_CONTROL_VOLTLIMIT_CP_CONC' AND U.COLUMN_NAME='DETECT_DATE';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table T_CONTROL_VOLTLIMIT_CP_CONC modify detect_date DATE
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 T_CONTROL_VOLTLIMIT_CP_CONC.DETECT_DATE 不存在。');
    END IF;
END;
/
prompt
prompt 正在处理纪录编号为 8200000000019827 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'T_PLUG_LOCK_CP_CONC' AND U.COLUMN_NAME='DETECT_DATE';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table T_PLUG_LOCK_CP_CONC modify detect_date DATE
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 T_PLUG_LOCK_CP_CONC.DETECT_DATE 不存在。');
    END IF;
END;
/
prompt
prompt 正在处理纪录编号为 8200000000019828 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'T_CONNECT_CONFIRM_CP_CONC' AND U.COLUMN_NAME='DETECT_DATE';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table T_CONNECT_CONFIRM_CP_CONC modify detect_date DATE
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 T_CONNECT_CONFIRM_CP_CONC.DETECT_DATE 不存在。');
    END IF;
END;
/
prompt
prompt 正在处理纪录编号为 8200000000019829 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'T_STANDBY_POWER_CP_CONC' AND U.COLUMN_NAME='DETECT_DATE';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table T_STANDBY_POWER_CP_CONC modify detect_date DATE
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 T_STANDBY_POWER_CP_CONC.DETECT_DATE 不存在。');
    END IF;
END;
/
prompt
prompt 正在处理纪录编号为 8200000000019830 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'T_MEASUREMENT_ERROR_CP_CONC' AND U.COLUMN_NAME='DETECT_DATE';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table T_MEASUREMENT_ERROR_CP_CONC modify detect_date DATE
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 T_MEASUREMENT_ERROR_CP_CONC.DETECT_DATE 不存在。');
    END IF;
END;
/
prompt
prompt 正在处理纪录编号为 8200000000019831 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'T_INDICATIVE_ERROR_CP_CONC' AND U.COLUMN_NAME='DETECT_DATE';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table T_INDICATIVE_ERROR_CP_CONC modify detect_date DATE
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 T_INDICATIVE_ERROR_CP_CONC.DETECT_DATE 不存在。');
    END IF;
END;
/
prompt
prompt 正在处理纪录编号为 8200000000019832 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'T_MEASURE_UNIFORMITY_CP_CONC' AND U.COLUMN_NAME='DETECT_DATE';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table T_MEASURE_UNIFORMITY_CP_CONC modify detect_date DATE
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 T_MEASURE_UNIFORMITY_CP_CONC.DETECT_DATE 不存在。');
    END IF;
END;
/
prompt
prompt 正在处理纪录编号为 8200000000019833 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'T_SCRAM_FUNCTION_CP_CONC' AND U.COLUMN_NAME='DETECT_DATE';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table T_SCRAM_FUNCTION_CP_CONC modify detect_date DATE
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 T_SCRAM_FUNCTION_CP_CONC.DETECT_DATE 不存在。');
    END IF;
END;
/
prompt
prompt 正在处理纪录编号为 8200000000019834 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'T_VOLT_LOSS_CP_CONC' AND U.COLUMN_NAME='DETECT_DATE';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table T_VOLT_LOSS_CP_CONC modify detect_date DATE
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 T_VOLT_LOSS_CP_CONC.DETECT_DATE 不存在。');
    END IF;
END;
/
prompt
prompt 正在处理纪录编号为 8200000000019835 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'T_MAXOUT_POWER_CP_CONC' AND U.COLUMN_NAME='DETECT_DATE';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table T_MAXOUT_POWER_CP_CONC modify detect_date DATE
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 T_MAXOUT_POWER_CP_CONC.DETECT_DATE 不存在。');
    END IF;
END;
/
prompt
prompt 正在处理纪录编号为 8200000000019836 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'T_CURRENT_PRECISION_CP_CONC' AND U.COLUMN_NAME='DETECT_DATE';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table T_CURRENT_PRECISION_CP_CONC modify detect_date DATE
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 T_CURRENT_PRECISION_CP_CONC.DETECT_DATE 不存在。');
    END IF;
END;
/
prompt
prompt 正在处理纪录编号为 8200000000019837 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'T_VOLT_PRECISION_CP_CONC' AND U.COLUMN_NAME='DETECT_DATE';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table T_VOLT_PRECISION_CP_CONC modify detect_date DATE
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 T_VOLT_PRECISION_CP_CONC.DETECT_DATE 不存在。');
    END IF;
END;
/
prompt
prompt 正在处理纪录编号为 8200000000019838 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'T_EFFICIENCY_CP_CONC' AND U.COLUMN_NAME='DETECT_DATE';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table T_EFFICIENCY_CP_CONC modify detect_date DATE
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 T_EFFICIENCY_CP_CONC.DETECT_DATE 不存在。');
    END IF;
END;
/
prompt
prompt 正在处理纪录编号为 8200000000019839 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'T_PF_CP_CONC' AND U.COLUMN_NAME='DETECT_DATE';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table T_PF_CP_CONC modify detect_date DATE
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 T_PF_CP_CONC.DETECT_DATE 不存在。');
    END IF;
END;
/
prompt
prompt 正在处理纪录编号为 8200000000019840 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'T_VOLT_RIPPLE_CP_CONC' AND U.COLUMN_NAME='DETECT_DATE';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table T_VOLT_RIPPLE_CP_CONC modify detect_date DATE
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 T_VOLT_RIPPLE_CP_CONC.DETECT_DATE 不存在。');
    END IF;
END;
/
prompt
prompt 正在处理纪录编号为 8200000000019842 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'T_LOWVOLT_AUXILIARY_CP_CONC' AND U.COLUMN_NAME='DETECT_DATE';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table T_LOWVOLT_AUXILIARY_CP_CONC modify detect_date DATE
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 T_LOWVOLT_AUXILIARY_CP_CONC.DETECT_DATE 不存在。');
    END IF;
END;
/
prompt
prompt 正在处理纪录编号为 8200000000019843 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'T_OPEN_PROTECT_CP_CONC' AND U.COLUMN_NAME='DETECT_DATE';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table T_OPEN_PROTECT_CP_CONC modify detect_date DATE
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 T_OPEN_PROTECT_CP_CONC.DETECT_DATE 不存在。');
    END IF;
END;
/
prompt
prompt 正在处理纪录编号为 8200000000019844 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'T_SIGNAL_BREAK_CP_CONC' AND U.COLUMN_NAME='DETECT_DATE';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table T_SIGNAL_BREAK_CP_CONC modify detect_date DATE
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 T_SIGNAL_BREAK_CP_CONC.DETECT_DATE 不存在。');
    END IF;
END;
/
prompt
prompt 正在处理纪录编号为 8200000000019845 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'T_INSULATE_ABNORMAL_CP_CONC' AND U.COLUMN_NAME='DETECT_DATE';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table T_INSULATE_ABNORMAL_CP_CONC modify detect_date DATE
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 T_INSULATE_ABNORMAL_CP_CONC.DETECT_DATE 不存在。');
    END IF;
END;
/
prompt
prompt 正在处理纪录编号为 8200000000019846 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'T_COMM_BREAK_CP_CONC' AND U.COLUMN_NAME='DETECT_DATE';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table T_COMM_BREAK_CP_CONC modify detect_date DATE
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 T_COMM_BREAK_CP_CONC.DETECT_DATE 不存在。');
    END IF;
END;
/
prompt
prompt 正在处理纪录编号为 8200000000019847 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'T_PROTECT_LANDING_CP_CONC' AND U.COLUMN_NAME='DETECT_DATE';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table T_PROTECT_LANDING_CP_CONC modify detect_date DATE
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 T_PROTECT_LANDING_CP_CONC.DETECT_DATE 不存在。');
    END IF;
END;
/
prompt
prompt 正在处理纪录编号为 8200000000019848 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'T_POWERUP_MESSAGE_CP_CONC' AND U.COLUMN_NAME='DETECT_DATE';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table T_POWERUP_MESSAGE_CP_CONC modify detect_date DATE
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 T_POWERUP_MESSAGE_CP_CONC.DETECT_DATE 不存在。');
    END IF;
END;
/
prompt
prompt 正在处理纪录编号为 8200000000019849 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'T_CONFIG_MSG_CP_CONC' AND U.COLUMN_NAME='DETECT_DATE';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table T_CONFIG_MSG_CP_CONC modify detect_date DATE
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 T_CONFIG_MSG_CP_CONC.DETECT_DATE 不存在。');
    END IF;
END;
/
prompt
prompt 正在处理纪录编号为 8200000000019850 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'T_CHARGE_MEAASGE_CP_CONC' AND U.COLUMN_NAME='DETECT_DATE';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table T_CHARGE_MEAASGE_CP_CONC modify detect_date DATE
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 T_CHARGE_MEAASGE_CP_CONC.DETECT_DATE 不存在。');
    END IF;
END;
/
prompt
prompt 正在处理纪录编号为 8200000000019851 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'T_CHARGEEND_MEAASGE_CP_CONC' AND U.COLUMN_NAME='DETECT_DATE';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table T_CHARGEEND_MEAASGE_CP_CONC modify detect_date DATE
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 T_CHARGEEND_MEAASGE_CP_CONC.DETECT_DATE 不存在。');
    END IF;
END;
/
prompt
prompt 正在处理纪录编号为 8200000000019852 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'T_PORT_CP_CONC' AND U.COLUMN_NAME='DETECT_DATE';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table T_PORT_CP_CONC modify detect_date DATE
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 T_PORT_CP_CONC.DETECT_DATE 不存在。');
    END IF;
END;
/
prompt
prompt 正在处理纪录编号为 8200000000019883 的脚本
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
prompt 正在处理纪录编号为 8200000000019936 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'U_DIST_TASK_SCHE' AND U.COLUMN_NAME='ARRIVE_BATCH_NO';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table U_DIST_TASK_SCHE add arrive_batch_no VARCHAR2(32)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 U_DIST_TASK_SCHE.arrive_batch_no 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column U_DIST_TASK_SCHE.arrive_batch_no
      is ''到货批次号，到货批次分配后保存配送排程任务时生成数据（页面录入）''
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000019975 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'U_DIST_SCHE_TASK_DET' AND U.COLUMN_NAME='IS_SAMPING_FLAG';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table U_DIST_SCHE_TASK_DET add is_samping_flag VARCHAR2(8)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 U_DIST_SCHE_TASK_DET.is_samping_flag 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column U_DIST_SCHE_TASK_DET.is_samping_flag
      is ''是否含留样设备（1:含已留样设备；0：不含留样设备），数据在配送订单排程发送环节手动录入数据''
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000020117 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'D_MODULE_EQUIP_RELA' AND U.COLUMN_NAME='COMM_MODULE_ID';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table D_MODULE_EQUIP_RELA modify comm_module_id VARCHAR2(32)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 D_MODULE_EQUIP_RELA.COMM_MODULE_ID 不存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column D_MODULE_EQUIP_RELA.comm_module_id
      is ''通信模块条形码''
    ';
END;
/


prompt
prompt 正在处理纪录编号为 8200000000019367 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Tables U WHERE U.TABLE_NAME = 'F_PRODUCT_PLAN_TASK';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
        create table F_PRODUCT_PLAN_TASK
        (
        task_id NUMBER(16) not null,
        task_no VARCHAR2(16),
        plan_date DATE,
        plan_type VARCHAR2(8),
        status VARCHAR2(8),
        equip_categ VARCHAR2(8),
        wiring_mode VARCHAR2(8),
        maker_no VARCHAR2(16),
        maker_name VARCHAR2(32),
        maker_org_no VARCHAR2(16),
        made_time DATE,
        remark VARCHAR2(256)
        )
        tablespace MPAC_f
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
      dbms_output.put_line('脚本已跳过，因为 F_PRODUCT_PLAN_TASK 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table F_PRODUCT_PLAN_TASK
      is ''生产计划表：
      1）生产计划表，本实体主要包括：唯一标识、计划任务编号、任务计划的月份信息、任务类型等属性。
      2）通过生产计划管理，由录入产生记录。
      3）该实体主要由生产计划管理业务使用。''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_PRODUCT_PLAN_TASK.task_id
      is ''唯一标识''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_PRODUCT_PLAN_TASK.task_no
      is ''计划任务编号，对应【分拣结果信息表】中的“任务编号”task_no''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_PRODUCT_PLAN_TASK.plan_date
      is ''任务计划的月份信息''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_PRODUCT_PLAN_TASK.plan_type
      is ''任务类型，对应编码集：01-退库  02-分选  03-分拣  04-返修  05-检定''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_PRODUCT_PLAN_TASK.status
      is ''任务状态，对应编码集：01初始、02已提交''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_PRODUCT_PLAN_TASK.equip_categ
      is ''设备类别，计量设备的类别分类，引用国网计量标准编码类集：VW_EQUIP_CATEG''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_PRODUCT_PLAN_TASK.wiring_mode
      is ''接线方式，计量设备的接线方式，引用国网计量标准编码类集：VW_WIRING_MODE''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_PRODUCT_PLAN_TASK.maker_no
      is ''制定人员编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_PRODUCT_PLAN_TASK.maker_name
      is ''制定人员名称''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_PRODUCT_PLAN_TASK.maker_org_no
      is ''制定人员所属单位''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_PRODUCT_PLAN_TASK.made_time
      is ''制定时间''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_PRODUCT_PLAN_TASK.remark
      is ''备注''
    ';
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_INDEXES U WHERE u.INDEX_NAME = 'PK_F_PRODUCT_PLAN_TASK';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table F_PRODUCT_PLAN_TASK
      add constraint PK_F_PRODUCT_PLAN_TASK primary key (task_id)
      using index
      tablespace MPAC_f_IDX
      pctfree 10
      initrans 2
      maxtrans 255
      storage
      (
      initial 64K
      next 1M
      minextents 1
      maxextents unlimited
      )
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 PK_F_PRODUCT_PLAN_TASK 已存在。');
    END IF;
END;
/
prompt
prompt 正在处理纪录编号为 8200000000019368 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Tables U WHERE U.TABLE_NAME = 'F_PRODUCT_PLAN_DET';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
        create table F_PRODUCT_PLAN_DET
        (
        task_id NUMBER(16) not null,
        task_no VARCHAR2(16),
        det_date DATE,
        qty NUMBER(16),
        finish_qty NUMBER(16)
        )
        tablespace MPAC_F
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
      dbms_output.put_line('脚本已跳过，因为 F_PRODUCT_PLAN_DET 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table F_PRODUCT_PLAN_DET
      is ''生产计划明细表：
      1）本实体主要包括：唯一标识、计划任务编号、计划的明细时间、每天计划的数量等属性。
      2）通过生产计划管理，由录入产生记录。
      3）该实体主要由生产计划管理业务使用。''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_PRODUCT_PLAN_DET.task_id
      is ''唯一标识''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_PRODUCT_PLAN_DET.task_no
      is ''计划任务编号，对应【分拣结果信息表】中的“任务编号”task_no''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_PRODUCT_PLAN_DET.det_date
      is ''计划的明细时间，年月日''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_PRODUCT_PLAN_DET.qty
      is ''每天计划的数量''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_PRODUCT_PLAN_DET.finish_qty
      is ''完成数量''
    ';
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_INDEXES U WHERE u.INDEX_NAME = 'PK_F_PRODUCT_PLAN_DET';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table F_PRODUCT_PLAN_DET
      add constraint PK_F_PRODUCT_PLAN_DET primary key (task_id)
      using index
      tablespace MPAC_F_IDX
      pctfree 10
      initrans 2
      maxtrans 255
      storage
      (
      initial 64K
      next 1M
      minextents 1
      maxextents unlimited
      )
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 PK_F_PRODUCT_PLAN_DET 已存在。');
    END IF;
END;
/
prompt
prompt 正在处理纪录编号为 8200000000019369 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Sequences U WHERE u.sequence_name = 'SEQ_PRODUCT_PLAN_TASK';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      create sequence SEQ_PRODUCT_PLAN_TASK
      minvalue 1
      maxvalue 9999999999999999
      start with 8000000000000000
      increment by 1
      cache 20
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 SEQ_PRODUCT_PLAN_TASK 已存在。');
    END IF;
END;
/
prompt
prompt 正在处理纪录编号为 8200000000020258 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'T_CONSIGNER_RETURN_TASK' AND U.COLUMN_NAME='MAIN_RETURN_TASK_ID';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table T_CONSIGNER_RETURN_TASK add main_return_task_id VARCHAR2(16) default ''-1''
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 T_CONSIGNER_RETURN_TASK.main_return_task_id 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column T_CONSIGNER_RETURN_TASK.main_return_task_id
      is ''充电设备关联充电桩委托领回任务标识。默认-1''
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000020325 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_INDEXES U WHERE u.INDEX_NAME = 'IDX_D_EXPORT_EQUIP';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      create index idx_D_EXPORT_EQUIP on D_EXPORT_EQUIP (bar_code)
      tablespace MPAC_D_IDX
      pctfree 10
      initrans 2
      maxtrans 255
      storage
      (
      initial 64K
      minextents 1
      maxextents unlimited
      )
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 IDX_D_EXPORT_EQUIP 已存在。');
    END IF;
END;
/
prompt
prompt 正在处理纪录编号为 8200000000020398 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'T_CONSIGNER_RETURN_TASK' AND U.COLUMN_NAME='CUSTOMER_COMPANY_NAME';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table T_CONSIGNER_RETURN_TASK modify customer_company_name VARCHAR2(1024)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 T_CONSIGNER_RETURN_TASK.CUSTOMER_COMPANY_NAME 不存在。');
    END IF;
END;
/




----------------------------------------------
-----------------失准更换
-------------------------------------------------

prompt
prompt 正在处理纪录编号为 8200000000009587 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Tables U WHERE U.TABLE_NAME = 'SR_RUNNING_RULE';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
        create table SR_RUNNING_RULE
        (
        rule_id NUMBER(16) not null,
        rule_no VARCHAR2(16),
        rule_name VARCHAR2(64),
        rule_states VARCHAR2(8),
        maker_no VARCHAR2(16),
        made_date DATE,
        belong_dept VARCHAR2(16)
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
      dbms_output.put_line('脚本已跳过，因为 SR_RUNNING_RULE 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table SR_RUNNING_RULE
      is ''运行规则配置表''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_RUNNING_RULE.RULE_ID
      is ''规则ID''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_RUNNING_RULE.RULE_NO
      is ''规则编号(序列号)''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_RUNNING_RULE.RULE_NAME
      is ''规则名称''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_RUNNING_RULE.RULE_STATES
      is ''规则状态''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_RUNNING_RULE.MAKER_NO
      is ''制定人''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_RUNNING_RULE.MADE_DATE
      is ''制定日期''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_RUNNING_RULE.BELONG_DEPT
      is ''制定单位(电能表管理单位)''
    ';
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_INDEXES U WHERE u.INDEX_NAME = 'PK_SR_RUNNING_RULE';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table SR_RUNNING_RULE
      add constraint PK_SR_RUNNING_RULE primary key (RULE_ID)
      using index
      tablespace MPAC_IDX
      pctfree 10
      initrans 2
      maxtrans 255
      storage
      (
      initial 64K
      next 1M
      minextents 1
      maxextents unlimited
      )
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 PK_SR_RUNNING_RULE 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Sequences U WHERE u.sequence_name = 'SEQ_SR_RUNNING_RULEID';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      create sequence SEQ_SR_RUNNING_RULEID
      minvalue 1
      maxvalue 9999999999999999
      start with 8200000000000000
      increment by 1
      cache 20
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 SEQ_SR_RUNNING_RULEID 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Sequences U WHERE u.sequence_name = 'SEQ_SR_RUNNING_RULENO';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      create sequence SEQ_SR_RUNNING_RULENO
      minvalue 1
      maxvalue 9999999999999999
      start with 8200000000000000
      increment by 1
      cache 20
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 SEQ_SR_RUNNING_RULENO 已存在。');
    END IF;
END;
/
prompt
prompt 正在处理纪录编号为 8200000000009589 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Tables U WHERE U.TABLE_NAME = 'SR_RUNNING_RULE_DET';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
        create table SR_RUNNING_RULE_DET
        (
        rule_id NUMBER(16),
        rule_det_id NUMBER(16)
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
      dbms_output.put_line('脚本已跳过，因为 SR_RUNNING_RULE_DET 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table SR_RUNNING_RULE_DET
      is ''运行规则配置明细表''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_RUNNING_RULE_DET.RULE_ID
      is ''规则ID''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_RUNNING_RULE_DET.RULE_DET_ID
      is ''规则子项ID''
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000009592 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Tables U WHERE U.TABLE_NAME = 'SR_RUNNING_SUBRULE_ALL';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
        create table SR_RUNNING_SUBRULE_ALL
        (
        rule_det_id NUMBER(16) not null,
        rule_det_chname VARCHAR2(64),
        rule_det_type VARCHAR2(8),
        rule_det_ename VARCHAR2(64)
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
      dbms_output.put_line('脚本已跳过，因为 SR_RUNNING_SUBRULE_ALL 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table SR_RUNNING_SUBRULE_ALL
      is ''规则子项全集表''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_RUNNING_SUBRULE_ALL.RULE_DET_CHNAME
      is ''规则子项名称''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_RUNNING_SUBRULE_ALL.RULE_DET_TYPE
      is ''子项类型（01必填02二选一03选填）''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_RUNNING_SUBRULE_ALL.RULE_DET_ID
      is ''规则子项ID''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_RUNNING_SUBRULE_ALL.RULE_DET_ENAME
      is ''规则子项''
    ';
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_INDEXES U WHERE u.INDEX_NAME = 'PK_SR_RUNNING_SUBRULE_ALL';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table SR_RUNNING_SUBRULE_ALL
      add constraint PK_SR_RUNNING_SUBRULE_ALL primary key (RULE_DET_ID)
      using index
      tablespace MPAC_IDX
      pctfree 10
      initrans 2
      maxtrans 255
      storage
      (
      initial 64K
      next 1M
      minextents 1
      maxextents unlimited
      )
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 PK_SR_RUNNING_SUBRULE_ALL 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Sequences U WHERE u.sequence_name = 'SEQ_SR_RUNNING_SUBRULE_ALL';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      create sequence SEQ_SR_RUNNING_SUBRULE_ALL
      minvalue 1
      maxvalue 9999999999999999
      start with 8200000000000000
      increment by 1
      cache 20
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 SEQ_SR_RUNNING_SUBRULE_ALL 已存在。');
    END IF;
END;
/
prompt
prompt 正在处理纪录编号为 8200000000009593 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Tables U WHERE U.TABLE_NAME = 'SR_BATCH_GENERATE';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
        create table SR_BATCH_GENERATE
        (
        read_id NUMBER(16) not null,
        rule_id NUMBER(16),
        run_meter_count VARCHAR2(8),
        run_batch_count NUMBER(8),
        intall_year VARCHAR2(8),
        generate_result VARCHAR2(8),
        operate_date DATE,
        dept_no VARCHAR2(16),
        operator_no VARCHAR2(16)
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
      dbms_output.put_line('脚本已跳过，因为 SR_BATCH_GENERATE 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table SR_BATCH_GENERATE
      is ''运行批次生成记录''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_BATCH_GENERATE.READ_ID
      is ''记录ID''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_BATCH_GENERATE.RULE_ID
      is ''规则ID''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_BATCH_GENERATE.RUN_METER_COUNT
      is ''运行表总数''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_BATCH_GENERATE.RUN_BATCH_COUNT
      is ''运行批次生成数量''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_BATCH_GENERATE.INTALL_YEAR
      is ''安装年份''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_BATCH_GENERATE.GENERATE_RESULT
      is ''生成结果 01：生效中；02：已失效''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_BATCH_GENERATE.OPERATE_DATE
      is ''操作时间''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_BATCH_GENERATE.DEPT_NO
      is ''操作单位''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_BATCH_GENERATE.OPERATOR_NO
      is ''操作人员''
    ';
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_INDEXES U WHERE u.INDEX_NAME = 'PK_SR_BATCH_GENERATE';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table SR_BATCH_GENERATE
      add constraint PK_SR_BATCH_GENERATE primary key (READ_ID)
      using index
      tablespace MPAC_IDX
      pctfree 10
      initrans 2
      maxtrans 255
      storage
      (
      initial 64K
      next 1M
      minextents 1
      maxextents unlimited
      )
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 PK_SR_BATCH_GENERATE 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Sequences U WHERE u.sequence_name = 'SEQ_SR_BATCH_GENERATE';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      create sequence SEQ_SR_BATCH_GENERATE
      minvalue 1
      maxvalue 9999999999999999
      start with 8200000000000000
      increment by 1
      cache 20
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 SEQ_SR_BATCH_GENERATE 已存在。');
    END IF;
END;
/
prompt
prompt 正在处理纪录编号为 8200000000009594 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Tables U WHERE U.TABLE_NAME = 'SR_RUNNING_BATCH';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
        create table SR_RUNNING_BATCH
        (
        batch_id NUMBER(16) not null,
        batch_no NUMBER(16),
        read_id NUMBER(16),
        bid_batch_no VARCHAR2(32),
        made_year VARCHAR2(8),
        latest_chk_year VARCHAR2(8),
        intall_year VARCHAR2(8),
        manufacturer VARCHAR2(16),
        type_code VARCHAR2(8),
        model_code VARCHAR2(8),
        ap_pre_level_code VARCHAR2(8),
        rated_current VARCHAR2(8),
        volt_code VARCHAR2(8),
        wiring_mode VARCHAR2(8),
        belong_dept VARCHAR2(16),
        tg_no VARCHAR2(16),
        tg_name VARCHAR2(256),
        qty NUMBER(16),
        last_sample_rlst VARCHAR2(8),
        last_evaluate_rlst VARCHAR2(8),
        batch_status VARCHAR2(8)
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
    EXECUTE IMMEDIATE
    '
      comment on column SR_RUNNING_BATCH.MADE_YEAR
      is ''出厂年份''
    ';  
    EXECUTE IMMEDIATE
    '
      comment on table SR_RUNNING_BATCH
      is ''运行批次表''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_RUNNING_BATCH.BATCH_NO
      is ''运行批次号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_RUNNING_BATCH.BATCH_ID
      is ''运行批次ID''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_RUNNING_BATCH.READ_ID
      is ''生成记录ID''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_RUNNING_BATCH.BID_BATCH_NO
      is ''招标批次''
    ';

    EXECUTE IMMEDIATE
    '
      comment on column SR_RUNNING_BATCH.LATEST_CHK_YEAR
      is ''检定年份''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_RUNNING_BATCH.INTALL_YEAR
      is ''安装年份''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_RUNNING_BATCH.MANUFACTURER
      is ''生产厂家''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_RUNNING_BATCH.TYPE_CODE
      is ''类型''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_RUNNING_BATCH.MODEL_CODE
      is ''型号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_RUNNING_BATCH.AP_PRE_LEVEL_CODE
      is ''准确度等级''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_RUNNING_BATCH.RATED_CURRENT
      is ''电流''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_RUNNING_BATCH.VOLT_CODE
      is ''电压''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_RUNNING_BATCH.WIRING_MODE
      is ''接线方式''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_RUNNING_BATCH.BELONG_DEPT
      is ''管理单位''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_RUNNING_BATCH.TG_NO
      is ''台区编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_RUNNING_BATCH.TG_NAME
      is ''台区名称''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_RUNNING_BATCH.QTY
      is ''数量:所在单位该运行批次电能表的运行总数''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_RUNNING_BATCH.LAST_SAMPLE_RLST
      is ''最近一次抽检结果:最近一次的运行表抽检/到期表抽检结果，01：合格''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_RUNNING_BATCH.LAST_EVALUATE_RLST
      is ''最近一次评价结果''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_RUNNING_BATCH.BATCH_STATUS
      is ''批次状态''
    ';        
    ELSE
      dbms_output.put_line('脚本已跳过，因为 SR_RUNNING_BATCH 已存在。');
    END IF;

    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_INDEXES U WHERE u.INDEX_NAME = 'PK_SR_RUNNING_BATCH';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table SR_RUNNING_BATCH
      add constraint PK_SR_RUNNING_BATCH primary key (BATCH_ID)
      using index
      tablespace MPAC_IDX
      pctfree 10
      initrans 2
      maxtrans 255
      storage
      (
      initial 64K
      next 1M
      minextents 1
      maxextents unlimited
      )
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 PK_SR_RUNNING_BATCH 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Sequences U WHERE u.sequence_name = 'SEQ_SR_RUNNING_BATCH';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      create sequence SEQ_SR_RUNNING_BATCH
      minvalue 1
      maxvalue 9999999999999999
      start with 8200000000000000
      increment by 1
      cache 20
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 SEQ_SR_RUNNING_BATCH 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Sequences U WHERE u.sequence_name = 'SEQ_SR_RUNNING_BATCHNO';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      create sequence SEQ_SR_RUNNING_BATCHNO
      minvalue 1
      maxvalue 9999999999999999
      start with 8200000000000000
      increment by 1
      cache 20
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 SEQ_SR_RUNNING_BATCHNO 已存在。');
    END IF;
END;
/
prompt
prompt 正在处理纪录编号为 8200000000009600 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Tables U WHERE U.TABLE_NAME = 'SR_EXPIRE_SAMPLING_SCHEME';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
        create table SR_EXPIRE_SAMPLING_SCHEME
        (
        scheme_id NUMBER(16) not null,
        scheme_no VARCHAR2(16),
        scheme_name VARCHAR2(128),
        schema_type_code VARCHAR2(8),
        exec_type_code VARCHAR2(8),
        exec_mode VARCHAR2(8),
        sampling_asset_code VARCHAR2(8),
        min_max_lot VARCHAR2(8),
        fst_sampling_qty NUMBER(8),
        frst_pass_qty NUMBER(8),
        frst_disqlf_qty NUMBER(8),
        frst_reserve_qty NUMBER(8),
        snd_sampling_qty NUMBER(8),
        snd_pass_qty NUMBER(8),
        snd_disqlf_qty NUMBER(8),
        snd_reserve_qty NUMBER(8),
        maker_no VARCHAR2(16),
        made_date DATE,
        dept_no VARCHAR2(16),
        status_code VARCHAR2 (8),
        remark VARCHAR2(256)
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
      dbms_output.put_line('脚本已跳过，因为 SR_EXPIRE_SAMPLING_SCHEME 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table SR_EXPIRE_SAMPLING_SCHEME
      is ''抽样方案表''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_EXPIRE_SAMPLING_SCHEME.SCHEME_ID
      is ''方案ID''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_EXPIRE_SAMPLING_SCHEME.SCHEME_NO
      is ''方案编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_EXPIRE_SAMPLING_SCHEME.SCHEME_NAME
      is ''方案名称''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_EXPIRE_SAMPLING_SCHEME.SCHEMA_TYPE_CODE
      is ''方案类型''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_EXPIRE_SAMPLING_SCHEME.EXEC_TYPE_CODE
      is ''执行类别''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_EXPIRE_SAMPLING_SCHEME.EXEC_MODE
      is ''执行方式''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_EXPIRE_SAMPLING_SCHEME.SAMPLING_ASSET_CODE
      is ''抽样资产''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_EXPIRE_SAMPLING_SCHEME.MIN_MAX_LOT
      is ''批量区间''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_EXPIRE_SAMPLING_SCHEME.FST_SAMPLING_QTY
      is ''一次抽样样本数量''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_EXPIRE_SAMPLING_SCHEME.FRST_PASS_QTY
      is ''一次抽样合格判定数''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_EXPIRE_SAMPLING_SCHEME.FRST_DISQLF_QTY
      is ''一次抽样不合格判定数''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_EXPIRE_SAMPLING_SCHEME.FRST_RESERVE_QTY
      is ''一次抽样备表数量''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_EXPIRE_SAMPLING_SCHEME.SND_SAMPLING_QTY
      is ''二次抽样样本数量''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_EXPIRE_SAMPLING_SCHEME.SND_PASS_QTY
      is ''二次抽样合格判定数''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_EXPIRE_SAMPLING_SCHEME.SND_DISQLF_QTY
      is ''二次抽样不合格判定数''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_EXPIRE_SAMPLING_SCHEME.SND_RESERVE_QTY
      is ''二次备表数量''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_EXPIRE_SAMPLING_SCHEME.MAKER_NO
      is ''制定人''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_EXPIRE_SAMPLING_SCHEME.MADE_DATE
      is ''制定日期''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_EXPIRE_SAMPLING_SCHEME.DEPT_NO
      is ''制定单位''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_EXPIRE_SAMPLING_SCHEME.STATUS_CODE
      is ''状态''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_EXPIRE_SAMPLING_SCHEME.REMARK
      is ''备注''
    ';
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_INDEXES U WHERE u.INDEX_NAME = 'PK_SR_EXPIRE_SAMPLING_SCHEME';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table SR_EXPIRE_SAMPLING_SCHEME
      add constraint PK_SR_EXPIRE_SAMPLING_SCHEME primary key (SCHEME_ID)
      using index
      tablespace MPAC_IDX
      pctfree 10
      initrans 2
      maxtrans 255
      storage
      (
      initial 64K
      next 1M
      minextents 1
      maxextents unlimited
      )
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 PK_SR_EXPIRE_SAMPLING_SCHEME 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Sequences U WHERE u.sequence_name = 'SEQ_SR_EXPIRE_SAMPLING_SCHEME';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      create sequence SEQ_SR_EXPIRE_SAMPLING_SCHEME
      minvalue 1
      maxvalue 9999999999999999
      start with 8200000000000000
      increment by 1
      cache 20
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 SEQ_SR_EXPIRE_SAMPLING_SCHEME 已存在。');
    END IF;
END;
/
prompt
prompt 正在处理纪录编号为 8200000000009655 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Tables U WHERE U.TABLE_NAME = 'SR_FAULTALARM_CONFIG';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
        create table SR_FAULTALARM_CONFIG
        (
        config_id NUMBER(16) not null,
        fault_type_code VARCHAR2(16),
        fault_type VARCHAR2(64),
        warning_threshold NUMBER(8),
        alarm_threshold NUMBER(8),
        fault_level VARCHAR2(8)
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
      dbms_output.put_line('脚本已跳过，因为 SR_FAULTALARM_CONFIG 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table SR_FAULTALARM_CONFIG
      is ''典型故障原因统计与预告警配置表''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_FAULTALARM_CONFIG.FAULT_TYPE_CODE
      is ''三级故障现象编号,取自vw_repick_meter_fault_type_l3''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_FAULTALARM_CONFIG.FAULT_TYPE
      is ''三级故障现象''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_FAULTALARM_CONFIG.WARNING_THRESHOLD
      is ''预警阈值''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_FAULTALARM_CONFIG.ALARM_THRESHOLD
      is ''告警阈值''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_FAULTALARM_CONFIG.FAULT_LEVEL
      is ''故障等级,取自视图vw_repick_fault_level:''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_FAULTALARM_CONFIG.CONFIG_ID
      is ''配置记录id''
    ';
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_INDEXES U WHERE u.INDEX_NAME = 'PK_SR_FAULTALARM_CONFIG';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table SR_FAULTALARM_CONFIG
      add constraint PK_SR_FAULTALARM_CONFIG primary key (CONFIG_ID)
      using index
      tablespace MPAC_IDX
      pctfree 10
      initrans 2
      maxtrans 255
      storage
      (
      initial 64K
      next 1M
      minextents 1
      maxextents unlimited
      )
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 PK_SR_FAULTALARM_CONFIG 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Sequences U WHERE u.sequence_name = 'SEQ_SR_FAULTALARM_CONFIG';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      create sequence SEQ_SR_FAULTALARM_CONFIG
      minvalue 1
      maxvalue 9999999999999999
      start with 8200000000000000
      increment by 1
      cache 20
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 SEQ_SR_FAULTALARM_CONFIG 已存在。');
    END IF;
END;
/
prompt
prompt 正在处理纪录编号为 8200000000009818 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    EXECUTE IMMEDIATE
    '
      create or replace synonym LC_SG_C_MP
      for SGPM.C_MP@SGPM
    ';
    EXECUTE IMMEDIATE
    '
      create or replace synonym LC_SG_C_METER
      for SGPM.C_METER@SGPM
    ';
    EXECUTE IMMEDIATE
    '
      create or replace synonym LC_SG_G_TG
      for SGPM.G_TG@SGPM
    ';
    EXECUTE IMMEDIATE
    '
      create or replace synonym LC_SG_C_CONS
      for SGPM.C_CONS@SGPM
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000010018 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Tables U WHERE U.TABLE_NAME = 'SR_BATCH_WARNING_REC';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
        create table SR_BATCH_WARNING_REC
        (
        rec_id NUMBER(16) not null,
        batch_no VARCHAR2(16),
        warning_type VARCHAR2(8),
        fault_level VARCHAR2(8),
        fault_type_code VARCHAR2(16),
        fault_type VARCHAR2(64),
        warning_time DATE,
        handler_no VARCHAR2(16),
        handle_time DATE,
        handle_state VARCHAR2(8)
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
      dbms_output.put_line('脚本已跳过，因为 SR_BATCH_WARNING_REC 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table SR_BATCH_WARNING_REC
      is ''运行批次预告警记录表''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_BATCH_WARNING_REC.REC_ID
      is ''预告警记录ID（主键）''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_BATCH_WARNING_REC.BATCH_NO
      is ''运行批次号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_BATCH_WARNING_REC.WARNING_TYPE
      is ''预告警类型, Vw_sr_warning_type''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_BATCH_WARNING_REC.FAULT_LEVEL
      is ''故障等级 vw_repick_fault_level''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_BATCH_WARNING_REC.FAULT_TYPE_CODE
      is ''故障现象编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_BATCH_WARNING_REC.FAULT_TYPE
      is ''故障现象''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_BATCH_WARNING_REC.WARNING_TIME
      is ''预告警时间''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_BATCH_WARNING_REC.HANDLER_NO
      is ''处理人''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_BATCH_WARNING_REC.HANDLE_TIME
      is ''处理时间''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_BATCH_WARNING_REC.HANDLE_STATE
      is ''处理状态Vw_sr_handle_state''
    ';
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_INDEXES U WHERE u.INDEX_NAME = 'PK_SR_BATCH_WARNING_REC';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table SR_BATCH_WARNING_REC
      add constraint PK_SR_BATCH_WARNING_REC primary key (REC_ID)
      using index
      tablespace MPAC_IDX
      pctfree 10
      initrans 2
      maxtrans 255
      storage
      (
      initial 64K
      next 1M
      minextents 1
      maxextents unlimited
      )
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 PK_SR_BATCH_WARNING_REC 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Sequences U WHERE u.sequence_name = 'SEQ_SR_BATCH_WARNING_REC';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      create sequence SEQ_SR_BATCH_WARNING_REC
      minvalue 1
      maxvalue 9999999999999999
      start with 8200000000000000
      increment by 1
      cache 20
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 SEQ_SR_BATCH_WARNING_REC 已存在。');
    END IF;
END;
/
prompt
prompt 正在处理纪录编号为 8200000000010124 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Tables U WHERE U.TABLE_NAME = 'SR_COMPONENT_DOC';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
        create table SR_COMPONENT_DOC
        (
        component_id NUMBER(16) not null,
        component_name VARCHAR2(64),
        component_category VARCHAR2(16),
        component_core VARCHAR2(8),
        component_type VARCHAR2(8),
        create_user VARCHAR2(32),
        component_version VARCHAR2(8),
        component_batch_no VARCHAR2(32),
        component_file_id VARCHAR2(128),
        create_date DATE,
        create_orgno VARCHAR2(32),
        component_manufacturer VARCHAR2(128)
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
    EXECUTE IMMEDIATE
    '
      comment on column SR_COMPONENT_DOC.CREATE_USER
      is ''创建人编号''
    '; 
    EXECUTE IMMEDIATE
    '
      comment on table SR_COMPONENT_DOC
      is ''元器件档案信息表''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_COMPONENT_DOC.COMPONENT_ID
      is ''元器件ID''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_COMPONENT_DOC.COMPONENT_NAME
      is ''元器件名称''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_COMPONENT_DOC.COMPONENT_CATEGORY
      is ''元器件类别''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_COMPONENT_DOC.COMPONENT_CORE
      is ''是否为关键元器件''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_COMPONENT_DOC.COMPONENT_TYPE
      is ''元器件型号''
    ';

    EXECUTE IMMEDIATE
    '
      comment on column SR_COMPONENT_DOC.COMPONENT_VERSION
      is ''元器件版本''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_COMPONENT_DOC.COMPONENT_BATCH_NO
      is ''元器件生产批次''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_COMPONENT_DOC.COMPONENT_FILE_ID
      is ''元器件图片''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_COMPONENT_DOC.CREATE_DATE
      is ''创建日期''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_COMPONENT_DOC.CREATE_ORGNO
      is ''创建单位编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_COMPONENT_DOC.COMPONENT_MANUFACTURER
      is ''元器件厂商''
    ';         
    ELSE
      dbms_output.put_line('脚本已跳过，因为 SR_COMPONENT_DOC 已存在。');
    END IF;

    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_INDEXES U WHERE u.INDEX_NAME = 'PK_SR_COMPONENT_DOC';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table SR_COMPONENT_DOC
      add constraint PK_SR_COMPONENT_DOC primary key (COMPONENT_ID)
      using index
      tablespace MPAC_IDX
      pctfree 10
      initrans 2
      maxtrans 255
      storage
      (
      initial 64K
      next 1M
      minextents 1
      maxextents unlimited
      )
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 PK_SR_COMPONENT_DOC 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Sequences U WHERE u.sequence_name = 'SEQ_SR_COMPONENT_DOC';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      create sequence SEQ_SR_COMPONENT_DOC
      minvalue 1
      maxvalue 9999999999999999
      start with 8200000000000000
      increment by 1
      cache 20
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 SEQ_SR_COMPONENT_DOC 已存在。');
    END IF;
END;
/
prompt
prompt 正在处理纪录编号为 8200000000010126 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Tables U WHERE U.TABLE_NAME = 'SR_METER_COMPONENT';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
        create table SR_METER_COMPONENT
        (
        meter_component_id NUMBER(16) not null,
        bid_batch_no VARCHAR2(32),
        create_user VARCHAR2(32),
        create_date DATE,
        create_orgno VARCHAR2(32),
        component_id NUMBER(16)
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
    EXECUTE IMMEDIATE
    '
      comment on column SR_METER_COMPONENT.METER_COMPONENT_ID
      is ''主键ID''
    '; 
    EXECUTE IMMEDIATE
    '
      comment on table SR_METER_COMPONENT
      is ''元器件选型信息表''
    ';

    EXECUTE IMMEDIATE
    '
      comment on column SR_METER_COMPONENT.BID_BATCH_NO
      is ''招标批次''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_METER_COMPONENT.CREATE_USER
      is ''创建人编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_METER_COMPONENT.CREATE_DATE
      is ''创建日期''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_METER_COMPONENT.CREATE_ORGNO
      is ''创建单位编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_METER_COMPONENT.COMPONENT_ID
      is ''元器件ID''
    ';         
    ELSE
      dbms_output.put_line('脚本已跳过，因为 SR_METER_COMPONENT 已存在。');
    END IF;

    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_INDEXES U WHERE u.INDEX_NAME = 'PK_SR_METER_COMPONENT';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table SR_METER_COMPONENT
      add constraint PK_SR_METER_COMPONENT primary key (METER_COMPONENT_ID)
      using index
      tablespace MPAC_IDX
      pctfree 10
      initrans 2
      maxtrans 255
      storage
      (
      initial 64K
      next 1M
      minextents 1
      maxextents unlimited
      )
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 PK_SR_METER_COMPONENT 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Sequences U WHERE u.sequence_name = 'SEQ_SR_METER_COMPONENT';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      create sequence SEQ_SR_METER_COMPONENT
      minvalue 1
      maxvalue 9999999999999999
      start with 8200000000000000
      increment by 1
      cache 20
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 SEQ_SR_METER_COMPONENT 已存在。');
    END IF;
END;
/
prompt
prompt 正在处理纪录编号为 8200000000010131 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Tables U WHERE U.TABLE_NAME = 'SR_ERR_STATISTICS';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
        create table SR_ERR_STATISTICS
        (
        statistics_id NUMBER(16) not null,
        err_type VARCHAR2(8),
        condition_type VARCHAR2(8),
        stat_time DATE,
        stat_num NUMBER(8),
        batch_no VARCHAR2(16),
        err_interval VARCHAR2(8)
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
      dbms_output.put_line('脚本已跳过，因为 SR_ERR_STATISTICS 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table SR_ERR_STATISTICS
      is ''误差分布统计表''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_ERR_STATISTICS.STATISTICS_ID
      is ''主键ID''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_ERR_STATISTICS.ERR_TYPE
      is ''误差类别(VW_SR_ERRTYPE)''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_ERR_STATISTICS.CONDITION_TYPE
      is ''负荷条件(VW_SR_CONDITIONTYPE)''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_ERR_STATISTICS.STAT_TIME
      is ''统计时间''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_ERR_STATISTICS.STAT_NUM
      is ''数量''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_ERR_STATISTICS.BATCH_NO
      is ''运行批次号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_ERR_STATISTICS.ERR_INTERVAL
      is ''误差区间(vw_SR_err_interval)''
    ';
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_INDEXES U WHERE u.INDEX_NAME = 'PK_SR_ERR_STATISTICS';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table SR_ERR_STATISTICS
      add constraint PK_SR_ERR_STATISTICS primary key (STATISTICS_ID)
      using index
      tablespace MPAC_IDX
      pctfree 10
      initrans 2
      maxtrans 255
      storage
      (
      initial 64K
      next 1M
      minextents 1
      maxextents unlimited
      )
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 PK_SR_ERR_STATISTICS 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Sequences U WHERE u.sequence_name = 'SEQ_SR_ERR_STATISTICS';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      create sequence SEQ_SR_ERR_STATISTICS
      minvalue 1
      maxvalue 9999999999999999
      start with 8200000000000000
      increment by 1
      cache 20
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 SEQ_SR_ERR_STATISTICS 已存在。');
    END IF;
END;
/
prompt
prompt 正在处理纪录编号为 8200000000010139 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Tables U WHERE U.TABLE_NAME = 'SR_BATCH_FAULT_JUDGE';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
        create table SR_BATCH_FAULT_JUDGE
        (
        judge_id NUMBER(16) not null,
        batch_no VARCHAR2(16),
        judge_conc VARCHAR2(8),
        judge_time DATE,
        judge_basis VARCHAR2(256),
        attach_file_id VARCHAR2(256),
        judger_no VARCHAR2(16),
        fault_danger VARCHAR2(16)
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
      dbms_output.put_line('脚本已跳过，因为 SR_BATCH_FAULT_JUDGE 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table SR_BATCH_FAULT_JUDGE
      is ''运行批次故障判定记录表''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_BATCH_FAULT_JUDGE.JUDGE_ID
      is ''判定记录ID（主键）''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_BATCH_FAULT_JUDGE.BATCH_NO
      is ''运行批次号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_BATCH_FAULT_JUDGE.JUDGE_CONC
      is ''判定结论(vw_sr_judge_conc)''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_BATCH_FAULT_JUDGE.JUDGE_TIME
      is ''判定时间''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_BATCH_FAULT_JUDGE.JUDGE_BASIS
      is ''判定依据''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_BATCH_FAULT_JUDGE.ATTACH_FILE_ID
      is ''附件''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_BATCH_FAULT_JUDGE.JUDGER_NO
      is ''判定人''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_BATCH_FAULT_JUDGE.FAULT_DANGER
      is ''故障隐患''
    ';
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_INDEXES U WHERE u.INDEX_NAME = 'PK_SR_BATCH_FAULT_JUDGE';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table SR_BATCH_FAULT_JUDGE
      add constraint PK_SR_BATCH_FAULT_JUDGE primary key (JUDGE_ID)
      using index
      tablespace MPAC_IDX
      pctfree 10
      initrans 2
      maxtrans 255
      storage
      (
      initial 64K
      next 1M
      minextents 1
      maxextents unlimited
      )
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 PK_SR_BATCH_FAULT_JUDGE 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Sequences U WHERE u.sequence_name = 'SEQ_SR_BATCH_FAULT_JUDGE';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      create sequence SEQ_SR_BATCH_FAULT_JUDGE
      minvalue 1
      maxvalue 9999999999999999
      start with 8200000000000000
      increment by 1
      cache 20
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 SEQ_SR_BATCH_FAULT_JUDGE 已存在。');
    END IF;
END;
/
prompt
prompt 正在处理纪录编号为 8200000000010181 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Tables U WHERE U.TABLE_NAME = 'SR_RUNNING_METER_DOC';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
        create table SR_RUNNING_METER_DOC
        (
        read_id           NUMBER(16) not null,
        equip_id          NUMBER(16) not null,
        bar_code          VARCHAR2(32),
        org_no            VARCHAR2(16),
        bid_batch_no      VARCHAR2(32),
        made_year         VARCHAR2(8),
        latest_chk_year   VARCHAR2(8),
        intall_year       VARCHAR2(8),
        manufacturer      VARCHAR2(16),
        type_code         VARCHAR2(8),
        model_code        VARCHAR2(8),
        ap_pre_level_code VARCHAR2(8),
        rated_current     VARCHAR2(8),
        volt_code         VARCHAR2(8),
        wiring_mode       VARCHAR2(8),
        belong_dept       VARCHAR2(16),
        comm_mode         VARCHAR2(8),
        chip_manufacturer VARCHAR2(8),
        spec_code         VARCHAR2(8),
        mp_no             VARCHAR2(16),
        mp_name           VARCHAR2(256),
        tg_no             VARCHAR2(16),
        tg_name           VARCHAR2(256),
        equip_code        VARCHAR2(32),
        mp_attr_code      VARCHAR2(8),
        mp_addr           VARCHAR2(256)
        )
        partition by range (INTALL_YEAR)
        (
        partition P_2012 values less than (''2013'')
        tablespace MPAC
        pctfree 10
        initrans 1
        maxtrans 255
        storage
        (
        initial 64K
        next 1M
        minextents 1
        maxextents unlimited
        ),
        partition P_2013 values less than (''2014'')
        tablespace MPAC
        pctfree 10
        initrans 1
        maxtrans 255
        storage
        (
        initial 64K
        next 1M
        minextents 1
        maxextents unlimited
        ),
        partition P_2014 values less than (''2015'')
        tablespace MPAC
        pctfree 10
        initrans 1
        maxtrans 255
        storage
        (
        initial 64K
        next 1M
        minextents 1
        maxextents unlimited
        ),
        partition P_2015 values less than (''2016'')
        tablespace MPAC
        pctfree 10
        initrans 1
        maxtrans 255
        storage
        (
        initial 64K
        next 1M
        minextents 1
        maxextents unlimited
        ),
        partition P_2016 values less than (''2017'')
        tablespace MPAC
        pctfree 10
        initrans 1
        maxtrans 255
        storage
        (
        initial 64K
        next 1M
        minextents 1
        maxextents unlimited
        ),
        partition P_2017 values less than (''2018'')
        tablespace MPAC
        pctfree 10
        initrans 1
        maxtrans 255
        storage
        (
        initial 64K
        next 1M
        minextents 1
        maxextents unlimited
        ),
        partition P_2018 values less than (''2019'')
        tablespace MPAC
        pctfree 10
        initrans 1
        maxtrans 255
        storage
        (
        initial 64K
        next 1M
        minextents 1
        maxextents unlimited
        ),
        partition P_2019 values less than (''2020'')
        tablespace MPAC
        pctfree 10
        initrans 1
        maxtrans 255
        storage
        (
        initial 64K
        next 1M
        minextents 1
        maxextents unlimited
        ),
        partition P_2020 values less than (''2021'')
        tablespace MPAC
        pctfree 10
        initrans 1
        maxtrans 255
        storage
        (
        initial 64K
        next 1M
        minextents 1
        maxextents unlimited
        ),
        partition P_2021 values less than (''2022'')
        tablespace MPAC
        pctfree 10
        initrans 1
        maxtrans 255
        storage
        (
        initial 64K
        next 1M
        minextents 1
        maxextents unlimited
        ),
        partition P_2022 values less than (''2023'')
        tablespace MPAC
        pctfree 10
        initrans 1
        maxtrans 255
        storage
        (
        initial 64K
        next 1M
        minextents 1
        maxextents unlimited
        ),
        partition P_2023 values less than (''2024'')
        tablespace MPAC
        pctfree 10
        initrans 1
        maxtrans 255
        storage
        (
        initial 64K
        next 1M
        minextents 1
        maxextents unlimited
        ),
        partition PARTMAX values less than (MAXVALUE)
        tablespace MPAC
        pctfree 10
        initrans 1
        maxtrans 255
        storage
        (
        initial 64K
        next 1M
        minextents 1
        maxextents unlimited
        )
        )
      ';
      EXECUTE IMMEDIATE
      '
        comment on column SR_RUNNING_METER_DOC.mp_no
        is ''计量点编号''
      '; 
    EXECUTE IMMEDIATE
    '
      comment on table SR_RUNNING_METER_DOC
      is ''运行电能表档案''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_RUNNING_METER_DOC.read_id
      is ''主键字段''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_RUNNING_METER_DOC.equip_id
      is ''设备ID''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_RUNNING_METER_DOC.bar_code
      is ''条形码''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_RUNNING_METER_DOC.org_no
      is ''供电单位''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_RUNNING_METER_DOC.bid_batch_no
      is ''招标批次''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_RUNNING_METER_DOC.made_year
      is ''出厂年份''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_RUNNING_METER_DOC.latest_chk_year
      is ''检定年份''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_RUNNING_METER_DOC.intall_year
      is ''安装年份''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_RUNNING_METER_DOC.manufacturer
      is ''生产厂家''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_RUNNING_METER_DOC.type_code
      is ''类型''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_RUNNING_METER_DOC.model_code
      is ''型号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_RUNNING_METER_DOC.ap_pre_level_code
      is ''准确度等级''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_RUNNING_METER_DOC.rated_current
      is ''电流''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_RUNNING_METER_DOC.volt_code
      is ''电压''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_RUNNING_METER_DOC.wiring_mode
      is ''接线方式''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_RUNNING_METER_DOC.belong_dept
      is ''管理单位''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_RUNNING_METER_DOC.comm_mode
      is ''通讯方式''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_RUNNING_METER_DOC.chip_manufacturer
      is ''芯片厂家''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_RUNNING_METER_DOC.spec_code
      is ''电能表规格''
    ';

    EXECUTE IMMEDIATE
    '
      comment on column SR_RUNNING_METER_DOC.mp_name
      is ''计量点名称''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_RUNNING_METER_DOC.tg_no
      is ''台区编码''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_RUNNING_METER_DOC.tg_name
      is ''台区名称''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_RUNNING_METER_DOC.equip_code
      is ''设备码''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_RUNNING_METER_DOC.mp_attr_code
      is ''计量点性质。01结算、02考核''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_RUNNING_METER_DOC.mp_addr
      is ''计量点地址''
    ';           
    ELSE
      dbms_output.put_line('脚本已跳过，因为 SR_RUNNING_METER_DOC 已存在。');
    END IF;

    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_INDEXES U WHERE u.INDEX_NAME = 'PK_SR_RUNNING_METER_DOC';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table SR_RUNNING_METER_DOC
      add constraint PK_SR_RUNNING_METER_DOC primary key (READ_ID)
      using index
      tablespace MPAC_IDX
      pctfree 10
      initrans 2
      maxtrans 255
      storage
      (
      initial 64K
      next 1M
      minextents 1
      maxextents unlimited
      )
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 PK_SR_RUNNING_METER_DOC 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Sequences U WHERE u.sequence_name = 'SEQ_SR_RUNNING_METER_DOC';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      create sequence SEQ_SR_RUNNING_METER_DOC
      minvalue 1
      maxvalue 9999999999999999
      start with 8000000000000001
      increment by 1
      cache 20
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 SEQ_SR_RUNNING_METER_DOC 已存在。');
    END IF;
END;
/
prompt
prompt 正在处理纪录编号为 8200000000010504 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'SR_BATCH_FAULT_JUDGE' AND U.COLUMN_NAME='IS_UPDATE_SG';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table SR_BATCH_FAULT_JUDGE add is_update_sg NUMBER(8)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 SR_BATCH_FAULT_JUDGE.is_update_sg 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column SR_BATCH_FAULT_JUDGE.is_update_sg
      is ''0:未同步,1:已同步.视图:VW_IS_UPDATE_SG''
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000010663 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Tables U WHERE U.TABLE_NAME = 'SR_RUNNING_BATCH_DET';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
        create table SR_RUNNING_BATCH_DET
        (
        equip_id NUMBER(16) not null,
        batch_id NUMBER(16),
        org_no VARCHAR2(16),
        bar_code VARCHAR2(32),
        equip_code VARCHAR2(32),
        comm_mode VARCHAR2(8),
        chip_manufacturer VARCHAR2(8),
        spec_code VARCHAR2(8),
        mp_no VARCHAR2(16),
        mp_name VARCHAR2(256),
        mp_addr VARCHAR2(256),
        mp_attr_code VARCHAR2(8),
        tg_no VARCHAR2(16),
        tg_name VARCHAR2(256),
        batch_no NUMBER(16)
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
      EXECUTE IMMEDIATE
      '
        comment on column SR_RUNNING_BATCH_DET.MP_NO
        is ''计量点编号''
      ';  
    EXECUTE IMMEDIATE
    '
      comment on table SR_RUNNING_BATCH_DET
      is ''运行批次明细表''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_RUNNING_BATCH_DET.BATCH_ID
      is ''运行批次ID''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_RUNNING_BATCH_DET.ORG_NO
      is ''供电单位''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_RUNNING_BATCH_DET.EQUIP_ID
      is ''设备ID（主键）''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_RUNNING_BATCH_DET.BAR_CODE
      is ''条形码''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_RUNNING_BATCH_DET.EQUIP_CODE
      is ''设备码''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_RUNNING_BATCH_DET.COMM_MODE
      is ''通讯方式''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_RUNNING_BATCH_DET.CHIP_MANUFACTURER
      is ''芯片厂家''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_RUNNING_BATCH_DET.SPEC_CODE
      is ''电能表规格''
    ';

    EXECUTE IMMEDIATE
    '
      comment on column SR_RUNNING_BATCH_DET.MP_NAME
      is ''计量点名称''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_RUNNING_BATCH_DET.MP_ADDR
      is ''计量点地址''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_RUNNING_BATCH_DET.MP_ATTR_CODE
      is ''计量点性质''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_RUNNING_BATCH_DET.TG_NO
      is ''台区编码''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_RUNNING_BATCH_DET.TG_NAME
      is ''台区名称''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_RUNNING_BATCH_DET.BATCH_NO
      is ''运行批次号''
    ';          
    ELSE
      dbms_output.put_line('脚本已跳过，因为 SR_RUNNING_BATCH_DET 已存在。');
    END IF;

    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_INDEXES U WHERE u.INDEX_NAME = 'PK_SR_RUNNING_BATCH_DET';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table SR_RUNNING_BATCH_DET
      add constraint PK_SR_RUNNING_BATCH_DET primary key (EQUIP_ID)
      using index
      tablespace MPAC_IDX
      pctfree 10
      initrans 2
      maxtrans 255
      storage
      (
      initial 64K
      next 1M
      minextents 1
      maxextents unlimited
      )
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 PK_SR_RUNNING_BATCH_DET 已存在。');
    END IF;
END;
/
prompt
prompt 正在处理纪录编号为 8200000000011960 的脚本
prompt ==========================
----刘春芳	2019/3/5 9:18:01
--vw_meter_fault_type_l4
update p_code_std set name='电源供给异常' WHERE code_type = 'meterFaultType' and value='04090301';
commit;

prompt
prompt 正在处理纪录编号为 8200000000011961 的脚本
prompt ==========================
----刘春芳	2019/3/5 9:19:25
--vw_meter_fault_type_l3
update p_code_std set name='电源供给异常' WHERE code_type = 'meterFaultType' and value='040903';
commit;
prompt
prompt 正在处理纪录编号为 8200000000012090 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'SR_RUNNING_BATCH_DET' AND U.COLUMN_NAME='CONS_NO';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table SR_RUNNING_BATCH_DET add cons_no VARCHAR2(16)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 SR_RUNNING_BATCH_DET.cons_no 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'SR_RUNNING_BATCH_DET' AND U.COLUMN_NAME='ELEC_ADDR';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table SR_RUNNING_BATCH_DET add elec_addr VARCHAR2(256) 
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 SR_RUNNING_BATCH_DET.elec_addr 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'SR_RUNNING_BATCH_DET' AND U.COLUMN_NAME='CONS_NAME';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table SR_RUNNING_BATCH_DET add cons_name VARCHAR2(256)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 SR_RUNNING_BATCH_DET.cons_name 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column SR_RUNNING_BATCH_DET.cons_no
      is ''用户编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_RUNNING_BATCH_DET.elec_addr
      is ''用电地址''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_RUNNING_BATCH_DET.cons_name
      is ''用户名称''
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000012091 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'SR_RUNNING_METER_DOC' AND U.COLUMN_NAME='CONS_NAME';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table SR_RUNNING_METER_DOC add cons_name VARCHAR2(256)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 SR_RUNNING_METER_DOC.cons_name 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'SR_RUNNING_METER_DOC' AND U.COLUMN_NAME='ELEC_ADDR';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table SR_RUNNING_METER_DOC add elec_addr VARCHAR2(256) 
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 SR_RUNNING_METER_DOC.elec_addr 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'SR_RUNNING_METER_DOC' AND U.COLUMN_NAME='CONS_NO';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table SR_RUNNING_METER_DOC add cons_no VARCHAR2(16)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 SR_RUNNING_METER_DOC.cons_no 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column SR_RUNNING_METER_DOC.cons_name
      is ''用户名称''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_RUNNING_METER_DOC.elec_addr
      is ''用电地址''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_RUNNING_METER_DOC.cons_no
      is ''用户编号''
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000012168 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'SR_RUNNING_BATCH_DET' AND U.COLUMN_NAME='MP_NO';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table SR_RUNNING_BATCH_DET drop column mp_no
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 SR_RUNNING_BATCH_DET.MP_NO 不存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'SR_RUNNING_BATCH_DET' AND U.COLUMN_NAME='MP_ATTR_CODE';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table SR_RUNNING_BATCH_DET drop column mp_attr_code
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 SR_RUNNING_BATCH_DET.MP_ATTR_CODE 不存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'SR_RUNNING_BATCH_DET' AND U.COLUMN_NAME='MP_ADDR';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table SR_RUNNING_BATCH_DET drop column mp_addr
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 SR_RUNNING_BATCH_DET DROP COLUMN MP. 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'SR_RUNNING_BATCH_DET' AND U.COLUMN_NAME='MP_NAME';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table SR_RUNNING_BATCH_DET drop column mp_name
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 SR_RUNNING_BATCH_DET.MP_NAME 不存在。');
    END IF;
END;
/
prompt
prompt 正在处理纪录编号为 8200000000012174 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'SR_RUNNING_METER_DOC' AND U.COLUMN_NAME='MP_NO';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table SR_RUNNING_METER_DOC drop column mp_no
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 SR_RUNNING_METER_DOC.MP_NO 不存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'SR_RUNNING_METER_DOC' AND U.COLUMN_NAME='MP_ATTR_CODE';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table SR_RUNNING_METER_DOC drop column mp_attr_code
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 SR_RUNNING_METER_DOC.MP_ATTR_CODE 不存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'SR_RUNNING_METER_DOC' AND U.COLUMN_NAME='MP_ADDR';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table SR_RUNNING_METER_DOC drop column mp_addr
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 SR_RUNNING_METER_DOC DROP COLUMN MP. 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'SR_RUNNING_METER_DOC' AND U.COLUMN_NAME='MP_NAME';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table SR_RUNNING_METER_DOC drop column mp_name
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 SR_RUNNING_METER_DOC.MP_NAME 不存在。');
    END IF;
END;
/
prompt
prompt 正在处理纪录编号为 8200000000013340 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Tables U WHERE U.TABLE_NAME = 'SR_METER_COMPONENT_DET';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
        create table SR_METER_COMPONENT_DET
        (
        equip_component_detid NUMBER(16) not null,
        equip_component_id NUMBER(16),
        component_id NUMBER(16),
        qty NUMBER(8)
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
      dbms_output.put_line('脚本已跳过，因为 SR_METER_COMPONENT_DET 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table SR_METER_COMPONENT_DET
      is ''元器件选型明细表''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_METER_COMPONENT_DET.EQUIP_COMPONENT_DETID
      is ''元器件选型明细ID''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_METER_COMPONENT_DET.EQUIP_COMPONENT_ID
      is ''元器件选型ID''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_METER_COMPONENT_DET.COMPONENT_ID
      is ''元器件ID''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_METER_COMPONENT_DET.QTY
      is ''数量''
    ';
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_INDEXES U WHERE u.INDEX_NAME = 'PK_SR_METER_COMPONENT_DET';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table SR_METER_COMPONENT_DET
      add constraint PK_SR_METER_COMPONENT_DET primary key (EQUIP_COMPONENT_DETID)
      using index
      tablespace MPAC_IDX
      pctfree 10
      initrans 2
      maxtrans 255
      storage
      (
      initial 64K
      next 1M
      minextents 1
      maxextents unlimited
      )
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 PK_SR_METER_COMPONENT_DET 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Sequences U WHERE u.sequence_name = 'SEQ_SR_METER_COMPONENT_DET';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      create sequence SEQ_SR_METER_COMPONENT_DET
      minvalue 1
      maxvalue 9999999999999999
      start with 8200000000000000
      increment by 1
      cache 20
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 SEQ_SR_METER_COMPONENT_DET 已存在。');
    END IF;
END;
/
prompt
prompt 正在处理纪录编号为 8200000000013342 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    EXECUTE IMMEDIATE
    '
      comment on column SR_COMPONENT_DOC.component_manufacturer
      is ''元器件制造单位''
    ';
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'SR_COMPONENT_DOC' AND U.COLUMN_NAME='COMPONENT_TYPE';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table SR_COMPONENT_DOC modify component_type VARCHAR2(128)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 SR_COMPONENT_DOC.COMPONENT_TYPE 不存在。');
    END IF;
END;
/
prompt
prompt 正在处理纪录编号为 8200000000013456 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Tables U WHERE U.TABLE_NAME = 'SR_METER_COMPONENT';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      drop table SR_METER_COMPONENT cascade constraints
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 SR_METER_COMPONENT 不存在。');
    END IF;
END;
/
prompt
prompt 正在处理纪录编号为 8200000000013457 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Tables U WHERE U.TABLE_NAME = 'SR_METER_COMPONENT';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
        create table SR_METER_COMPONENT
        (
        equip_component_id NUMBER(16) not null,
        bid_batch_no VARCHAR2(32),
        spec_code VARCHAR2(8),
        component_file_ids VARCHAR2(256),
        create_date DATE,
        create_orgno VARCHAR2(32),
        create_user VARCHAR2(32)
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
      dbms_output.put_line('脚本已跳过，因为 SR_METER_COMPONENT 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table SR_METER_COMPONENT
      is ''元器件选型信息表''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_METER_COMPONENT.EQUIP_COMPONENT_ID
      is ''元器件选型ID''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_METER_COMPONENT.BID_BATCH_NO
      is ''招标批次''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_METER_COMPONENT.SPEC_CODE
      is ''设备规格''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_METER_COMPONENT.COMPONENT_FILE_IDS
      is ''选型图片，多个图片FILE_ID以逗号隔开，与B_UPLOAD_FILE_INFO关联''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_METER_COMPONENT.CREATE_DATE
      is ''创建日期''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_METER_COMPONENT.CREATE_ORGNO
      is ''创建单位编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_METER_COMPONENT.CREATE_USER
      is ''创建人编号''
    ';
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_INDEXES U WHERE u.INDEX_NAME = 'PK_SR_METER_COMPONENT';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table SR_METER_COMPONENT
      add constraint PK_SR_METER_COMPONENT primary key (EQUIP_COMPONENT_ID)
      using index
      tablespace MPAC_IDX
      pctfree 10
      initrans 2
      maxtrans 255
      storage
      (
      initial 64K
      next 1M
      minextents 1
      maxextents unlimited
      )
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 PK_SR_METER_COMPONENT 已存在。');
    END IF;
END;
/
prompt
prompt 正在处理纪录编号为 8200000000013458 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Tables U WHERE U.TABLE_NAME = 'SR_COMPONENT_DOC';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      drop table SR_COMPONENT_DOC cascade constraints
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 SR_COMPONENT_DOC 不存在。');
    END IF;
END;
/
prompt
prompt 正在处理纪录编号为 8200000000013459 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Tables U WHERE U.TABLE_NAME = 'SR_COMPONENT_DOC';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
        create table SR_COMPONENT_DOC
        (
        component_id NUMBER(16) not null,
        component_name VARCHAR2(64),
        component_category VARCHAR2(16),
        component_core VARCHAR2(8),
        component_manufacturer VARCHAR2(128),
        component_type VARCHAR2(128),
        component_spec VARCHAR2(128),
        component_para VARCHAR2(256)
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
      dbms_output.put_line('脚本已跳过，因为 SR_COMPONENT_DOC 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table SR_COMPONENT_DOC
      is ''元器件档案信息表''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_COMPONENT_DOC.COMPONENT_ID
      is ''元器件ID''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_COMPONENT_DOC.COMPONENT_NAME
      is ''元器件名称''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_COMPONENT_DOC.COMPONENT_CATEGORY
      is ''元器件类别 智能电能表元器件包括：电解电容器、压敏电阻器、电阻器、光电耦合器、晶体谐振器、瞬变二极管、电池、负荷开关、片式电容器、液晶显示器、RS485芯片、时钟芯片、微控制器、计量芯片、电流互感器，共15种''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_COMPONENT_DOC.COMPONENT_CORE
      is ''是否为关键元器件''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_COMPONENT_DOC.COMPONENT_MANUFACTURER
      is ''元器件制造单位''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_COMPONENT_DOC.COMPONENT_TYPE
      is ''元器件型号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_COMPONENT_DOC.COMPONENT_SPEC
      is ''元器件规格''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_COMPONENT_DOC.COMPONENT_PARA
      is ''元器件性能参数''
    ';
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_INDEXES U WHERE u.INDEX_NAME = 'PK_SR_COMPONENT_DOC';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table SR_COMPONENT_DOC
      add constraint PK_SR_COMPONENT_DOC primary key (COMPONENT_ID)
      using index
      tablespace MPAC_IDX
      pctfree 10
      initrans 2
      maxtrans 255
      storage
      (
      initial 64K
      next 1M
      minextents 1
      maxextents unlimited
      )
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 PK_SR_COMPONENT_DOC 已存在。');
    END IF;
END;
/
prompt
prompt 正在处理纪录编号为 8200000000014238 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'SR_RUNNING_METER_DOC' AND U.COLUMN_NAME='ARRIVE_BATCH_NO';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table SR_RUNNING_METER_DOC add arrive_batch_no VARCHAR2(32)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 SR_RUNNING_METER_DOC.arrive_batch_no 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column SR_RUNNING_METER_DOC.arrive_batch_no
      is ''到货批次号''
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000014240 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'SR_RUNNING_BATCH' AND U.COLUMN_NAME='ARRIVE_BATCH_NO';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table SR_RUNNING_BATCH add arrive_batch_no VARCHAR2(32)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 SR_RUNNING_BATCH.arrive_batch_no 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column SR_RUNNING_BATCH.arrive_batch_no
      is ''到货批次号''
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000014352 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'SR_RUNNING_METER_DOC' AND U.COLUMN_NAME='ARRIVE_YEAR';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table SR_RUNNING_METER_DOC add arrive_year VARCHAR2(8)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 SR_RUNNING_METER_DOC.arrive_year 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column SR_RUNNING_METER_DOC.arrive_year
      is ''到货年份''
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000015159 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'SR_RUNNING_RULE' AND U.COLUMN_NAME='IS_DEFAULT';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table SR_RUNNING_RULE add is_default VARCHAR2(8)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 SR_RUNNING_RULE.is_default 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column SR_RUNNING_RULE.is_default
      is ''是否默认规则不可删除，VW_YESNO_FLAG，0：否 1：是''
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000015192 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'SR_RUNNING_BATCH' AND U.COLUMN_NAME='SPEC_CODE';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table SR_RUNNING_BATCH add spec_code VARCHAR2(8)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 SR_RUNNING_BATCH.spec_code 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'SR_RUNNING_BATCH' AND U.COLUMN_NAME='EQUIP_RATE';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table SR_RUNNING_BATCH add equip_rate VARCHAR2(8)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 SR_RUNNING_BATCH.equip_rate 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'SR_RUNNING_BATCH' AND U.COLUMN_NAME='ARRIVE_YEAR';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table SR_RUNNING_BATCH add arrive_year VARCHAR2(8)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 SR_RUNNING_BATCH.arrive_year 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column SR_RUNNING_BATCH.spec_code
      is ''规格''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_RUNNING_BATCH.equip_rate
      is ''费率''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_RUNNING_BATCH.arrive_year
      is ''到货年份''
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000015193 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'SR_RUNNING_BATCH' AND U.COLUMN_NAME='MADE_YEAR';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table SR_RUNNING_BATCH drop column made_year
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 SR_RUNNING_BATCH.MADE_YEAR 不存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'SR_RUNNING_BATCH' AND U.COLUMN_NAME='LATEST_CHK_YEAR';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table SR_RUNNING_BATCH drop column latest_chk_year
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 SR_RUNNING_BATCH.LATEST_CHK_YEAR 不存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'SR_RUNNING_BATCH' AND U.COLUMN_NAME='TYPE_CODE';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table SR_RUNNING_BATCH drop column type_code
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 SR_RUNNING_BATCH.TYPE_CODE 不存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'SR_RUNNING_BATCH' AND U.COLUMN_NAME='MODEL_CODE';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table SR_RUNNING_BATCH drop column model_code
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 SR_RUNNING_BATCH.MODEL_CODE 不存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'SR_RUNNING_BATCH' AND U.COLUMN_NAME='AP_PRE_LEVEL_CODE';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table SR_RUNNING_BATCH drop column ap_pre_level_code
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 SR_RUNNING_BATCH.AP_PRE_LEVEL_CODE 不存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'SR_RUNNING_BATCH' AND U.COLUMN_NAME='RATED_CURRENT';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table SR_RUNNING_BATCH drop column rated_current
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 SR_RUNNING_BATCH.RATED_CURRENT 不存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'SR_RUNNING_BATCH' AND U.COLUMN_NAME='VOLT_CODE';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table SR_RUNNING_BATCH drop column volt_code
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 SR_RUNNING_BATCH.VOLT_CODE 不存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'SR_RUNNING_BATCH' AND U.COLUMN_NAME='WIRING_MODE';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table SR_RUNNING_BATCH drop column wiring_mode
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 SR_RUNNING_BATCH.WIRING_MODE 不存在。');
    END IF;
END;
/
prompt
prompt 正在处理纪录编号为 8200000000015198 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'SR_RUNNING_METER_DOC' AND U.COLUMN_NAME='EQUIP_RATE';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table SR_RUNNING_METER_DOC add equip_rate VARCHAR2(8)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 SR_RUNNING_METER_DOC.equip_rate 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column SR_RUNNING_METER_DOC.equip_rate
      is ''费率''
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000015423 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Tables U WHERE U.TABLE_NAME = 'SR_ACTUAL_FAULTRATE';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
        create table SR_ACTUAL_FAULTRATE
        (
        read_id NUMBER(16) not null,
        batch_type VARCHAR2(8),
        batch_no NUMBER(16),
        actual_month VARCHAR2(32),
        actual_fault_rate NUMBER(16),
        is_break_point VARCHAR2(8),
        write_date DATE
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
      dbms_output.put_line('脚本已跳过，因为 SR_ACTUAL_FAULTRATE 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table SR_ACTUAL_FAULTRATE
      is ''批次实际故障率表''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_ACTUAL_FAULTRATE.READ_ID
      is ''记录ID（主键）''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_ACTUAL_FAULTRATE.BATCH_TYPE
      is ''批次类型''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_ACTUAL_FAULTRATE.BATCH_NO
      is ''批次号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_ACTUAL_FAULTRATE.ACTUAL_MONTH
      is ''月份''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_ACTUAL_FAULTRATE.ACTUAL_FAULT_RATE
      is ''实际故障率''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_ACTUAL_FAULTRATE.IS_BREAK_POINT
      is ''是否拐点''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_ACTUAL_FAULTRATE.WRITE_DATE
      is ''写入时间''
    ';
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_INDEXES U WHERE u.INDEX_NAME = 'PK_SR_ACTUAL_FAULTRATE';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table SR_ACTUAL_FAULTRATE
      add constraint PK_SR_ACTUAL_FAULTRATE primary key (READ_ID)
      using index
      tablespace MPAC_IDX
      pctfree 10
      initrans 2
      maxtrans 255
      storage
      (
      initial 64K
      next 1M
      minextents 1
      maxextents unlimited
      )
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 PK_SR_ACTUAL_FAULTRATE 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Sequences U WHERE u.sequence_name = 'SEQ_SR_ACTUAL_FAULTRATE';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      create sequence SEQ_SR_ACTUAL_FAULTRATE
      minvalue 1
      maxvalue 9999999999999999
      start with 8200000000000000
      increment by 1
      cache 20
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 SEQ_SR_ACTUAL_FAULTRATE 已存在。');
    END IF;
END;
/
prompt
prompt 正在处理纪录编号为 8200000000015424 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Tables U WHERE U.TABLE_NAME = 'SR_FORECAST_FAULTRATE';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
        create table SR_FORECAST_FAULTRATE
        (
        read_id NUMBER(16) not null,
        batch_type VARCHAR2(8),
        batch_no NUMBER(16),
        forecast_month VARCHAR2(32),
        forecast_fault_rate NUMBER(16),
        is_break_point VARCHAR2(8),
        update_date DATE
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
      dbms_output.put_line('脚本已跳过，因为 SR_FORECAST_FAULTRATE 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table SR_FORECAST_FAULTRATE
      is ''批次预测故障率表''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_FORECAST_FAULTRATE.READ_ID
      is ''记录ID（主键）''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_FORECAST_FAULTRATE.BATCH_TYPE
      is ''批次类型''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_FORECAST_FAULTRATE.BATCH_NO
      is ''批次号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_FORECAST_FAULTRATE.FORECAST_MONTH
      is ''月份''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_FORECAST_FAULTRATE.FORECAST_FAULT_RATE
      is ''预测故障率''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_FORECAST_FAULTRATE.IS_BREAK_POINT
      is ''是否拐点''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_FORECAST_FAULTRATE.UPDATE_DATE
      is ''更新时间''
    ';
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_INDEXES U WHERE u.INDEX_NAME = 'PK_SR_FORECAST_FAULTRATE';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table SR_FORECAST_FAULTRATE
      add constraint PK_SR_FORECAST_FAULTRATE primary key (READ_ID)
      using index
      tablespace MPAC_IDX
      pctfree 10
      initrans 2
      maxtrans 255
      storage
      (
      initial 64K
      next 1M
      minextents 1
      maxextents unlimited
      )
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 PK_SR_FORECAST_FAULTRATE 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Sequences U WHERE u.sequence_name = 'SEQ_SR_FORECAST_FAULTRATE';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      create sequence SEQ_SR_FORECAST_FAULTRATE
      minvalue 1
      maxvalue 9999999999999999
      start with 8200000000000000
      increment by 1
      cache 20
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 SEQ_SR_FORECAST_FAULTRATE 已存在。');
    END IF;
END;
/
prompt
prompt 正在处理纪录编号为 8200000000015505 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'SR_ACTUAL_FAULTRATE' AND U.COLUMN_NAME='ACTUAL_FAULT_RATE';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table SR_ACTUAL_FAULTRATE modify actual_fault_rate NUMBER(16,5)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 SR_ACTUAL_FAULTRATE.ACTUAL_FAULT_RATE 不存在。');
    END IF;
END;
/
prompt
prompt 正在处理纪录编号为 8200000000015506 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'SR_FORECAST_FAULTRATE' AND U.COLUMN_NAME='FORECAST_FAULT_RATE';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table SR_FORECAST_FAULTRATE modify forecast_fault_rate NUMBER(16,5)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 SR_FORECAST_FAULTRATE.FORECAST_FAULT_RATE 不存在。');
    END IF;
END;
/
prompt
prompt 正在处理纪录编号为 8200000000015726 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    EXECUTE IMMEDIATE
    '
      comment on table SR_FAULTALARM_CONFIG
      is ''批次故障预警触发配置表''
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000015727 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'SR_FAULTALARM_CONFIG' AND U.COLUMN_NAME='FAULT_TYPE_CODE';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table SR_FAULTALARM_CONFIG drop column fault_type_code
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 SR_FAULTALARM_CONFIG.FAULT_TYPE_CODE 不存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'SR_FAULTALARM_CONFIG' AND U.COLUMN_NAME='FAULT_TYPE';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table SR_FAULTALARM_CONFIG drop column fault_type
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 SR_FAULTALARM_CONFIG.FAULT_TYPE 不存在。');
    END IF;
END;
/
prompt
prompt 正在处理纪录编号为 8200000000015728 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'SR_FAULTALARM_CONFIG' AND U.COLUMN_NAME='FAULT_TYPE_CODE';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table SR_FAULTALARM_CONFIG add fault_type_code VARCHAR2(16)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 SR_FAULTALARM_CONFIG.fault_type_code 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'SR_FAULTALARM_CONFIG' AND U.COLUMN_NAME='FAULT_TYPE';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table SR_FAULTALARM_CONFIG add fault_type VARCHAR2(64)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 SR_FAULTALARM_CONFIG.fault_type 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'SR_FAULTALARM_CONFIG' AND U.COLUMN_NAME='DATA_SOURCE';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table SR_FAULTALARM_CONFIG add data_source VARCHAR2(8)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 SR_FAULTALARM_CONFIG.data_source 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'SR_FAULTALARM_CONFIG' AND U.COLUMN_NAME='STATE';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table SR_FAULTALARM_CONFIG add state VARCHAR2(8)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 SR_FAULTALARM_CONFIG.state 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column SR_FAULTALARM_CONFIG.fault_type_code
      is ''故障类型编号vw_sr_faultalarm_type''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_FAULTALARM_CONFIG.fault_type
      is ''故障类型''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_FAULTALARM_CONFIG.data_source
      is ''数据来源Vw_sr_data_source（01分拣检测02现场检验）''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_FAULTALARM_CONFIG.state
      is ''状态Vw_sr_state:01生效 02失效''
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000016321 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'SR_ACTUAL_FAULTRATE' AND U.COLUMN_NAME='BATCH_NO';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table SR_ACTUAL_FAULTRATE modify batch_no VARCHAR2(32)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 SR_ACTUAL_FAULTRATE.BATCH_NO 不存在。');
    END IF;
END;
/
prompt
prompt 正在处理纪录编号为 8200000000016322 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'SR_FORECAST_FAULTRATE' AND U.COLUMN_NAME='BATCH_NO';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table SR_FORECAST_FAULTRATE modify batch_no VARCHAR2(32)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 SR_FORECAST_FAULTRATE.BATCH_NO 不存在。');
    END IF;
END;
/
prompt
prompt 正在处理纪录编号为 8200000000016361 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'SR_FAULTALARM_CONFIG' AND U.COLUMN_NAME='WARNING_THRESHOLD';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table SR_FAULTALARM_CONFIG modify warning_threshold NUMBER(16,5)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 SR_FAULTALARM_CONFIG.WARNING_THRESHOLD 不存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'SR_FAULTALARM_CONFIG' AND U.COLUMN_NAME='ALARM_THRESHOLD';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table SR_FAULTALARM_CONFIG modify alarm_threshold NUMBER(16,5)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 SR_FAULTALARM_CONFIG.ALARM_THRESHOLD 不存在。');
    END IF;
END;
/
prompt
prompt 正在处理纪录编号为 8200000000016628 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'SR_RUNNING_BATCH' AND U.COLUMN_NAME='ARRIVE_BATCH_NO';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table SR_RUNNING_BATCH drop column arrive_batch_no
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 SR_RUNNING_BATCH.ARRIVE_BATCH_NO 不存在。');
    END IF;
END;
/
prompt
prompt 正在处理纪录编号为 8200000000016723 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'SR_RUNNING_BATCH' AND U.COLUMN_NAME='WIRING_MODE';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table SR_RUNNING_BATCH add wiring_mode VARCHAR2(8)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 SR_RUNNING_BATCH.wiring_mode 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column SR_RUNNING_BATCH.wiring_mode
      is ''接线方式''
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000016746 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Tables U WHERE U.TABLE_NAME = 'SR_BATCH_REPLACE_PLAN';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
        create table SR_BATCH_REPLACE_PLAN
        (
        plan_id NUMBER(16) not null,
        plan_month VARCHAR2(32),
        wiring_mode VARCHAR2(8),
        plan_num NUMBER(16),
        finish_num NUMBER(16),
        maker_no VARCHAR2(16),
        made_date DATE,
        belong_dept VARCHAR2(16)
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
      dbms_output.put_line('脚本已跳过，因为 SR_BATCH_REPLACE_PLAN 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table SR_BATCH_REPLACE_PLAN
      is ''批次故障更换计划表''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_BATCH_REPLACE_PLAN.PLAN_ID
      is ''本实体记录的唯一标识号，计划ID（主键）''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_BATCH_REPLACE_PLAN.PLAN_MONTH
      is ''计划年月''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_BATCH_REPLACE_PLAN.WIRING_MODE
      is ''接线方式''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_BATCH_REPLACE_PLAN.PLAN_NUM
      is ''计划数量''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_BATCH_REPLACE_PLAN.FINISH_NUM
      is ''完成数量''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_BATCH_REPLACE_PLAN.MAKER_NO
      is ''制定人''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_BATCH_REPLACE_PLAN.MADE_DATE
      is ''制定日期''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_BATCH_REPLACE_PLAN.BELONG_DEPT
      is ''制定单位''
    ';
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_INDEXES U WHERE u.INDEX_NAME = 'PK_SR_BATCH_REPLACE_PLAN';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table SR_BATCH_REPLACE_PLAN
      add constraint PK_SR_BATCH_REPLACE_PLAN primary key (PLAN_ID)
      using index
      tablespace MPAC_IDX
      pctfree 10
      initrans 2
      maxtrans 255
      storage
      (
      initial 64K
      next 1M
      minextents 1
      maxextents unlimited
      )
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 PK_SR_BATCH_REPLACE_PLAN 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Sequences U WHERE u.sequence_name = 'SEQ_SR_BATCH_REPLACE_PLAN';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      create sequence SEQ_SR_BATCH_REPLACE_PLAN
      minvalue 1
      maxvalue 9999999999999999
      start with 8200000000000000
      increment by 1
      cache 20
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 SEQ_SR_BATCH_REPLACE_PLAN 已存在。');
    END IF;
END;
/
prompt
prompt 正在处理纪录编号为 8200000000016747 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Tables U WHERE U.TABLE_NAME = 'SR_BATCH_REPLACE_PLANDET';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
        create table SR_BATCH_REPLACE_PLANDET
        (
        plandet_id NUMBER(16) not null,
        plan_id NUMBER(16),
        spec_code VARCHAR2(8),
        plan_num NUMBER(16),
        finish_num NUMBER(16)
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
      dbms_output.put_line('脚本已跳过，因为 SR_BATCH_REPLACE_PLANDET 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table SR_BATCH_REPLACE_PLANDET
      is ''批次故障更换计划明细表''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_BATCH_REPLACE_PLANDET.PLANDET_ID
      is ''计划明细ID（主键）''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_BATCH_REPLACE_PLANDET.PLAN_ID
      is ''计划ID''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_BATCH_REPLACE_PLANDET.SPEC_CODE
      is ''设备规格''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_BATCH_REPLACE_PLANDET.PLAN_NUM
      is ''计划数量''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_BATCH_REPLACE_PLANDET.FINISH_NUM
      is ''完成数量''
    ';
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_INDEXES U WHERE u.INDEX_NAME = 'PK_SR_BATCH_REPLACE_PLANDET';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table SR_BATCH_REPLACE_PLANDET
      add constraint PK_SR_BATCH_REPLACE_PLANDET primary key (PLANDET_ID)
      using index
      tablespace MPAC_IDX
      pctfree 10
      initrans 2
      maxtrans 255
      storage
      (
      initial 64K
      next 1M
      minextents 1
      maxextents unlimited
      )
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 PK_SR_BATCH_REPLACE_PLANDET 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Sequences U WHERE u.sequence_name = 'SEQ_SR_BATCH_REPLACE_PLANDET';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      create sequence SEQ_SR_BATCH_REPLACE_PLANDET
      minvalue 1
      maxvalue 9999999999999999
      start with 8200000000000000
      increment by 1
      cache 20
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 SEQ_SR_BATCH_REPLACE_PLANDET 已存在。');
    END IF;
END;
/
prompt
prompt 正在处理纪录编号为 8200000000017018 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'SR_BATCH_FAULT_JUDGE' AND U.COLUMN_NAME='PLANDET_ID';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table SR_BATCH_FAULT_JUDGE add plandet_id NUMBER(16)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 SR_BATCH_FAULT_JUDGE.plandet_id 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column SR_BATCH_FAULT_JUDGE.plandet_id
      is ''更换计划明细ID''
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000017201 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'SR_ACTUAL_FAULTRATE' AND U.COLUMN_NAME='DATA_SOURCE';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table SR_ACTUAL_FAULTRATE add data_source VARCHAR2(8)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 SR_ACTUAL_FAULTRATE.data_source 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column SR_ACTUAL_FAULTRATE.data_source
      is ''新建视图Vw_ea_model:01：自建模型02：第三方模型''
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000017202 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'SR_FORECAST_FAULTRATE' AND U.COLUMN_NAME='DATA_SOURCE';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table SR_FORECAST_FAULTRATE add data_source VARCHAR2(8)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 SR_FORECAST_FAULTRATE.data_source 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column SR_FORECAST_FAULTRATE.data_source
      is ''数据来源''
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000017539 的脚本
prompt ==========================
/*DECLARE
  num NUMBER;
BEGIN
END;
/*/
prompt
prompt 正在处理纪录编号为 8200000000017665 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'SR_ERR_STATISTICS' AND U.COLUMN_NAME='BATCH_NO';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table SR_ERR_STATISTICS modify batch_no VARCHAR2(32)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 SR_ERR_STATISTICS.BATCH_NO 不存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column SR_ERR_STATISTICS.batch_no
      is ''批次号''
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000017666 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'SR_ERR_STATISTICS' AND U.COLUMN_NAME='BATCH_TYPE';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table SR_ERR_STATISTICS add batch_type VARCHAR2(8)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 SR_ERR_STATISTICS.batch_type 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column SR_ERR_STATISTICS.batch_type
      is ''批次类型''
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000017674 的脚本
prompt ==========================
----凌璐	2019/7/12 13:54:46
--
create materialized view MV_SR_DEPT_YEAR_INS_SUM
refresh COMPLETE on demand as
select count(det.equip_id) as qty,
       b.intall_year as year,
       substr(b.belong_dept, 0, 5) as belong_dept
  from sr_running_batch b, sr_running_batch_det det
 where b.batch_id = det.batch_id
   and b.intall_year >= '2009'
 group by b.intall_year, substr(b.belong_dept, 0, 5)
 order by b.intall_year;

prompt
prompt 正在处理纪录编号为 8200000000017682 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_INDEXES U WHERE u.INDEX_NAME = 'IDX_SR_RUNNING_BATCH_DET';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      create index IDX_SR_RUNNING_BATCH_DET on SR_RUNNING_BATCH_DET (ORG_NO)
      tablespace MPAC_IDX
      pctfree 10
      initrans 2
      maxtrans 255
      storage
      (
      initial 64K
      next 1M
      minextents 1
      maxextents unlimited
      )
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 IDX_SR_RUNNING_BATCH_DET 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_INDEXES U WHERE u.INDEX_NAME = 'IDX_SR_RUNNING_B_DET_BAT_ID';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      create index IDX_SR_RUNNING_B_DET_BAT_ID on SR_RUNNING_BATCH_DET (BATCH_ID)
      tablespace MPAC
      pctfree 10
      initrans 2
      maxtrans 255
      storage
      (
      initial 64K
      next 1M
      minextents 1
      maxextents unlimited
      )
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 IDX_SR_RUNNING_B_DET_BAT_ID 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_INDEXES U WHERE u.INDEX_NAME = 'PK_SR_RUNNING_BATCH_DET';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table SR_RUNNING_BATCH_DET
      add constraint PK_SR_RUNNING_BATCH_DET primary key (EQUIP_ID)
      using index
      tablespace MPAC_IDX
      pctfree 10
      initrans 2
      maxtrans 255
      storage
      (
      initial 80K
      next 1M
      minextents 1
      maxextents unlimited
      )
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 PK_SR_RUNNING_BATCH_DET 已存在。');
    END IF;
END;
/
prompt
prompt 正在处理纪录编号为 8200000000017707 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_INDEXES U WHERE u.INDEX_NAME = 'IDX_NO_SR_RUNNING_EQUIP_ID';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      create index IDX_NO_SR_RUNNING_EQUIP_ID on SR_RUNNING_METER_DOC (EQUIP_ID)
      tablespace MPAC_IDX
      pctfree 10
      initrans 2
      maxtrans 255
      storage
      (
      initial 1M
      next 1M
      minextents 1
      maxextents unlimited
      )
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 IDX_NO_SR_RUNNING_EQUIP_ID 已存在。');
    END IF;
END;
/
prompt
prompt 正在处理纪录编号为 8200000000017713 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Tables U WHERE U.TABLE_NAME = 'SR_EA_MET_SCORE';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
        create table SR_EA_MET_SCORE
        (
        record_id NUMBER(16) not null,
        BATCH_NO NUMBER(16),
        met_level VARCHAR2(8),
        version_id NUMBER(16),
        qty NUMBER(16),
        eva_score NUMBER(16,2)
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
      dbms_output.put_line('脚本已跳过，因为 SR_EA_MET_SCORE 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table SR_EA_MET_SCORE
      is ''运行批次品级评价统计表''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_EA_MET_SCORE.RECORD_ID
      is ''记录ID''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_EA_MET_SCORE.BATCH_NO
      is ''运行批次号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_EA_MET_SCORE.MET_LEVEL
      is ''电能表评价等级''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_EA_MET_SCORE.VERSION_ID
      is ''版本唯一标识''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_EA_MET_SCORE.QTY
      is ''数量''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_EA_MET_SCORE.EVA_SCORE
      is ''平均分''
    ';
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_INDEXES U WHERE u.INDEX_NAME = 'PK_SR_EA_MET_SCORE';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table SR_EA_MET_SCORE
      add constraint PK_SR_EA_MET_SCORE primary key (RECORD_ID)
      using index
      tablespace MPAC_IDX
      pctfree 10
      initrans 2
      maxtrans 255
      storage
      (
      initial 64K
      next 1M
      minextents 1
      maxextents unlimited
      )
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 PK_SR_EA_MET_SCORE 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_INDEXES U WHERE u.INDEX_NAME = 'IDX_SR_EA_MET_SCORE_BATCH';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      create index IDX_SR_EA_MET_SCORE_BATCH on SR_EA_MET_SCORE (BATCH_NO)
      tablespace MPAC_E
      pctfree 10
      initrans 2
      maxtrans 255
      storage
      (
      initial 64K
      minextents 1
      maxextents unlimited
      )
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 IDX_SR_EA_MET_SCORE_BATCH 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Sequences U WHERE u.sequence_name = 'SEQ_SR_EA_MET_SCORE';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      create sequence SEQ_SR_EA_MET_SCORE
      minvalue 1
      maxvalue 9999999999999999
      start with 8200000000000000
      increment by 1
      cache 20
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 SEQ_SR_EA_MET_SCORE 已存在。');
    END IF;
END;
/
prompt
prompt 正在处理纪录编号为 8200000000020331 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_INDEXES U WHERE u.INDEX_NAME = 'IDX_SR_RUNNING_BATCH_BATCHNO';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      create index idx_SR_RUNNING_BATCH_batchno on SR_RUNNING_BATCH_DET (batch_no)
      tablespace MPAC_IDX
      pctfree 10
      initrans 2
      maxtrans 255
      storage
      (
      initial 64K
      minextents 1
      maxextents unlimited
      )
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 IDX_SR_RUNNING_BATCH_BATCHNO 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_INDEXES U WHERE u.INDEX_NAME = 'IDX_REPICK_FAULT';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      create index idx_REPICK_FAULT on F_REPICK_FAULT (rslt_id)
      tablespace MPAC_E
      pctfree 10
      initrans 2
      maxtrans 255
      storage
      (
      initial 64K
      minextents 1
      maxextents unlimited
      )
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 IDX_REPICK_FAULT 已存在。');
    END IF;
END;
/


prompt
prompt 正在处理纪录编号为 8200000000020484 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Tables U WHERE U.TABLE_NAME = 'F_UNSTRU_FILE';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
        create table F_UNSTRU_FILE
        (
        id NUMBER(16) not null,
        task_no VARCHAR2(32),
        type_code VARCHAR2(8),
        create_date DATE,
        bar_code VARCHAR2(32),
        file_no NUMBER(16),
        equip_categ VARCHAR2(8),
        suffix VARCHAR2(32),
        file_name VARCHAR2(256),
        modify_date DATE,
        create_user_no VARCHAR2(90),
        flag NUMBER(1),
        message VARCHAR2(200),
        unstruct_file_id VARCHAR2(64),
        unstruct_version_id VARCHAR2(64)
        )
        tablespace MPAC_F
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
      dbms_output.put_line('脚本已跳过，因为 F_UNSTRU_FILE 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table F_UNSTRU_FILE
      is ''拆回表非结构化数据信息表：
      1）拆回表非结构化数据信息表，本实体主要包括：主键id 、任务编号，如：分拣检测任务编号、清洁分选分选任务编号、 业务来源编码，01-分选,02-外观检测,03-通电检查,04-底度获取等属性。
      2）通过清洁分选，由录入产生记录。
      3）该实体主要由清洁分选的报废拍照业务使用。''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_UNSTRU_FILE.ID
      is ''主键id,用于记录唯一主键''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_UNSTRU_FILE.TASK_NO
      is ''任务编号，如：分拣检测任务编号、清洁分选分选任务编号，用于记录任务编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_UNSTRU_FILE.TYPE_CODE
      is ''业务来源编码，01-分选,02-外观检测,03-通电检查,04-底度获取''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_UNSTRU_FILE.CREATE_DATE
      is ''创建时间，用于记录创建时间''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_UNSTRU_FILE.BAR_CODE
      is ''设备条形码，依据ERP提供的物料号进行管理， 用来作为确定电能计量器具品规的唯一代码''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_UNSTRU_FILE.FILE_NO
      is ''文件编号，由调用模块生成和查询使用，sequence生成，平台侧唯一编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_UNSTRU_FILE.EQUIP_CATEG
      is ''设备类别，计量设备的类别分类，01电能表，02电压互感器，03电流互感器等。引用国网计量标准编码类集：VW_EQUIP_CATEG''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_UNSTRU_FILE.SUFFIX
      is ''文件后缀，用于记录文件后缀''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_UNSTRU_FILE.FILE_NAME
      is ''非结构化平台存储的文件名称，用于记录非结构化平台存储的文件名称''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_UNSTRU_FILE.MODIFY_DATE
      is ''修改时间，用于记录修改时间''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_UNSTRU_FILE.CREATE_USER_NO
      is ''创建人，用于记录创建人''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_UNSTRU_FILE.FLAG
      is ''是否成功，1成功，0失败，用于记录状态''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_UNSTRU_FILE.MESSAGE
      is ''非结构化平台返回消息，用于记录非结构化平台返回消息''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_UNSTRU_FILE.UNSTRUCT_FILE_ID
      is ''非结构化平台文档ID，用于记录非结构化平台文档ID''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_UNSTRU_FILE.UNSTRUCT_VERSION_ID
      is ''非结构化平台版本标识，用于记录非结构化平台版本标识''
    ';
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_INDEXES U WHERE u.INDEX_NAME = 'PK_F_UNSTRU_FILE';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table F_UNSTRU_FILE
      add constraint PK_F_UNSTRU_FILE primary key (ID)
      using index
      tablespace MPAC_F_IDX
      pctfree 10
      initrans 2
      maxtrans 255
      storage
      (
      initial 64K
      next 1M
      minextents 1
      maxextents unlimited
      )
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 PK_F_UNSTRU_FILE 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Sequences U WHERE u.sequence_name = 'SEQ_F_UNSTRU_FILE';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      create sequence SEQ_F_UNSTRU_FILE
      minvalue 1
      maxvalue 9999999999999999
      start with 8200000000000000
      increment by 1
      cache 20
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 SEQ_F_UNSTRU_FILE 已存在。');
    END IF;
END;
/
prompt
prompt 正在处理纪录编号为 8200000000020553 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'F_PIC_INFO' AND U.COLUMN_NAME='UNSTRUCT_FILE_NO';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table F_PIC_INFO
      add UNSTRUCT_FILE_NO number(16)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 .UNSTRUCT_FILE_NO 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column F_PIC_INFO.unstruct_file_no
      is ''非结构化文件编号:使用非结构化平台时，系统侧生成的文件编号，由调用模块生成和查询使用 ''
    ';
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'F_D_APPERANCE' AND U.COLUMN_NAME='UNSTRUCT_FILE_NO';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table F_D_APPERANCE
      add UNSTRUCT_FILE_NO number(16)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 .UNSTRUCT_FILE_NO 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column F_D_APPERANCE.unstruct_file_no
      is ''非结构化文件编号:使用非结构化平台时，系统侧生成的文件编号，由调用模块生成和查询使用 ''
    ';
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'F_D_POWER_ON' AND U.COLUMN_NAME='UNSTRUCT_FILE_NO';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table F_D_POWER_ON
      add UNSTRUCT_FILE_NO number(16)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 .UNSTRUCT_FILE_NO 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column F_D_POWER_ON.unstruct_file_no
      is ''非结构化文件编号:使用非结构化平台时，系统侧生成的文件编号，由调用模块生成和查询使用 ''
    ';
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'F_D_READING_SHOT' AND U.COLUMN_NAME='UNSTRUCT_FILE_NO';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table F_D_READING_SHOT
      add UNSTRUCT_FILE_NO number(16)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 .UNSTRUCT_FILE_NO 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column F_D_READING_SHOT.unstruct_file_no
      is ''非结构化文件编号:使用非结构化平台时，系统侧生成的文件编号，由调用模块生成和查询使用 ''
    ';
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'F_D_APPERANCE_HIS' AND U.COLUMN_NAME='UNSTRUCT_FILE_NO';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table F_D_APPERANCE_HIS
      add UNSTRUCT_FILE_NO number(16)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 .UNSTRUCT_FILE_NO 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column F_D_APPERANCE.unstruct_file_no
      is ''非结构化文件编号:使用非结构化平台时，系统侧生成的文件编号，由调用模块生成和查询使用 ''
    ';
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'F_D_POWER_ON_HIS' AND U.COLUMN_NAME='UNSTRUCT_FILE_NO';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table F_D_POWER_ON_HIS
      add UNSTRUCT_FILE_NO number(16)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 .UNSTRUCT_FILE_NO 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column F_D_POWER_ON.unstruct_file_no
      is ''非结构化文件编号:使用非结构化平台时，系统侧生成的文件编号，由调用模块生成和查询使用 ''
    ';
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'F_D_READING_SHOT_HIS' AND U.COLUMN_NAME='UNSTRUCT_FILE_NO';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table F_D_READING_SHOT_HIS
      add UNSTRUCT_FILE_NO number(16)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 .UNSTRUCT_FILE_NO 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column F_D_READING_SHOT.unstruct_file_no
      is ''非结构化文件编号:使用非结构化平台时，系统侧生成的文件编号，由调用模块生成和查询使用 ''
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000020860 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    EXECUTE IMMEDIATE
    '
      create or replace synonym MT_APP_REPICK_FILTER_RECORD for SXYKJD.MT_APP_REPICK_FILTER_RECORD@SXYKJD
    ';
    EXECUTE IMMEDIATE
    '
      create or replace synonym MT_REPICK_FILTER_BATCH for SXYKJD.MT_REPICK_FILTER_BATCH@SXYKJD
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000020863 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'F_REPICK_CONFIG_ELIMINATE_PROD' AND U.COLUMN_NAME='MODEL_CODE';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table F_REPICK_CONFIG_ELIMINATE_PROD drop column model_code
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 F_REPICK_CONFIG_ELIMINATE_PROD.MODEL_CODE 不存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'F_REPICK_CONFIG_ELIMINATE_PROD' AND U.COLUMN_NAME='MANUFACTURER';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table F_REPICK_CONFIG_ELIMINATE_PROD drop column manufacturer
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 F_REPICK_CONFIG_ELIMINATE_PROD.MANUFACTURER 不存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'F_REPICK_CONFIG_ELIMINATE_PROD' AND U.COLUMN_NAME='PROD_CAT_NO';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table F_REPICK_CONFIG_ELIMINATE_PROD drop column prod_cat_no
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 F_REPICK_CONFIG_ELIMINATE_PROD.PROD_CAT_NO 不存在。');
    END IF;
END;
/
prompt
prompt 正在处理纪录编号为 8200000000020928 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'F_ELEC_PRICE_INFO' AND U.COLUMN_NAME='ARRIVE_BATCH_NO';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table F_ELEC_PRICE_INFO add arrive_batch_no VARCHAR2(32)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 F_ELEC_PRICE_INFO.arrive_batch_no 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'F_ELEC_PRICE_INFO' AND U.COLUMN_NAME='TASK_TYPE';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table F_ELEC_PRICE_INFO add task_type VARCHAR2(8) default 1
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 F_ELEC_PRICE_INFO.task_type 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column F_ELEC_PRICE_INFO.arrive_batch_no
      is ''到货批次号，仅用于检定任务''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_ELEC_PRICE_INFO.task_type
      is ''任务类型。1：分拣（默认）；2：检定''
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000020929 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'T_SAMPLING_MET_RSLT' AND U.COLUMN_NAME='ELECPRICE_READ_FLAG';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table T_SAMPLING_MET_RSLT add elecprice_read_flag VARCHAR2(8) default 0
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 T_SAMPLING_MET_RSLT.elecprice_read_flag 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column T_SAMPLING_MET_RSLT.elecprice_read_flag
      is ''电价读取成功标识，0：失败（默认）；1：成功。''
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000020936 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'T_ALLDETECT_MET_RSLT' AND U.COLUMN_NAME='ELECPRICE_READ_FLAG';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table T_ALLDETECT_MET_RSLT add elecprice_read_flag VARCHAR2(8) default ''0''
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 T_ALLDETECT_MET_RSLT.elecprice_read_flag 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column T_ALLDETECT_MET_RSLT.elecprice_read_flag
      is ''电价读取成功标识，0：失败（默认）；1：成功。''
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000020939 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'T_DETECT_MET_RSLT' AND U.COLUMN_NAME='ELECPRICE_READ_FLAG';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table T_DETECT_MET_RSLT add elecprice_read_flag VARCHAR2(8)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 T_DETECT_MET_RSLT.elecprice_read_flag 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column T_DETECT_MET_RSLT.elecprice_read_flag
      is ''电价读取成功标识，0：失败（默认）；1：成功。''
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000020948 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    EXECUTE IMMEDIATE
    '
      create or replace synonym MT_DETECT_ELEC_PRICE for SXYKJD.MT_DETECT_ELEC_PRICE@SXYKJD
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000020953 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'F_ELEC_PRICE_INFO' AND U.COLUMN_NAME='FIR_LADDER_VALUE4';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table F_ELEC_PRICE_INFO add fir_ladder_value4 NUMBER(10,4)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 F_ELEC_PRICE_INFO.fir_ladder_value4 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column F_ELEC_PRICE_INFO.fir_ladder_value4
      is ''当前阶梯值4''
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000020963 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Tables U WHERE U.TABLE_NAME = 'A_TAIL_CAP_ADOPT';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
        create table A_TAIL_CAP_ADOPT
        (
        record_id NUMBER(16),
        adopt_city VARCHAR2(32),
        adopt_no VARCHAR2(64),
        adopt_date DATE,
        adopt_num NUMBER(16)
        )
        tablespace MPAC_A
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
      dbms_output.put_line('脚本已跳过，因为 A_TAIL_CAP_ADOPT 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table A_TAIL_CAP_ADOPT
      is ''表尾盖发放记录表，1）表尾箱发放记录，以及表尾箱新增，2）通过表尾箱发放新增页面，录入记录，3）该表主要使用与表尾箱发放''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column A_TAIL_CAP_ADOPT.RECORD_ID
      is ''信息标识''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column A_TAIL_CAP_ADOPT.ADOPT_CITY
      is ''领用地市''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column A_TAIL_CAP_ADOPT.ADOPT_NO
      is ''领用人''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column A_TAIL_CAP_ADOPT.ADOPT_DATE
      is ''领用日期''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column A_TAIL_CAP_ADOPT.ADOPT_NUM
      is ''领用数量''
    ';
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Sequences U WHERE u.sequence_name = 'SEQ_A_TAIL_CAP_ADOPT';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      create sequence SEQ_A_TAIL_CAP_ADOPT
      minvalue 1
      maxvalue 9999999999999999
      start with 8200000000000000
      increment by 1
      cache 20
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 SEQ_A_TAIL_CAP_ADOPT 已存在。');
    END IF;
END;
/
prompt
prompt 正在处理纪录编号为 8200000000021050 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'D_METERING_CABINET' AND U.COLUMN_NAME='MADE_DATE';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table D_METERING_CABINET add made_date DATE
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 D_METERING_CABINET.made_date 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column D_METERING_CABINET.made_date
      is ''出厂日期''
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000021231 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'D_EQUIP_INST_INFO' AND U.COLUMN_NAME='INST_DATE';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table D_EQUIP_INST_INFO add inst_date DATE
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 D_EQUIP_INST_INFO.inst_date 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'D_EQUIP_INST_INFO' AND U.COLUMN_NAME='RMV_DATE';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table D_EQUIP_INST_INFO add rmv_date DATE
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 D_EQUIP_INST_INFO.rmv_date 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column D_EQUIP_INST_INFO.inst_date
      is ''安装日期''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_EQUIP_INST_INFO.rmv_date
      is ''拆除日期''
    ';
END;
/


prompt
prompt 正在处理纪录编号为 8200000000021495 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    EXECUTE IMMEDIATE
    '
      CREATE OR REPLACE VIEW VW_A_CERT_TYPE_CODE AS
      SELECT ''01'' as code ,''单相检定证书'' as code_name ,''qinghai'' as PROVINCE FROM dual
      union all
      SELECT ''02'' as code ,''单相检定结果通知书'' as code_name ,''qinghai'' as PROVINCE FROM dual
      union all
      SELECT ''03'' as code ,''三相检定证书'' as code_name ,''qinghai'' as PROVINCE FROM dual
      union all
      SELECT ''04'' as code ,''三相检定结果通知书'' as code_name ,''qinghai'' as PROVINCE FROM dual
      union all
      SELECT ''01'' as code ,''单相检定证书'' as code_name ,''jiangxi'' as PROVINCE FROM dual
      union all
      SELECT ''02'' as code ,''三相检定证书'' as code_name ,''jiangxi'' as PROVINCE FROM dual
      union all
      SELECT ''03'' as code ,''电压互感器检定证书'' as code_name ,''jiangxi'' as PROVINCE FROM dual
      union all
      SELECT ''04'' as code ,''电流互感器检定证书'' as code_name ,''jiangxi'' as PROVINCE FROM dual
      union all
      SELECT ''01'' as code ,''单相检定证书'' as code_name ,''other'' as PROVINCE FROM dual
      union all
      SELECT ''02'' as code ,''单相检定结果通知书'' as code_name ,''other'' as PROVINCE FROM dual
      union all
      SELECT ''03'' as code ,''三相检定证书'' as code_name ,''other'' as PROVINCE FROM dual
      union all
      SELECT ''04'' as code ,''三相检定结果通知书'' as code_name ,''other'' as PROVINCE FROM dual
      union all
      SELECT ''01'' as code ,''单相检定证书'' as code_name ,''hefei'' as PROVINCE FROM dual
      union all
      SELECT ''02'' as code ,''三相检定证书'' as code_name ,''hefei'' as PROVINCE FROM dual
      union all
      SELECT ''03'' as code ,''单相原始记录'' as code_name ,''hefei'' as PROVINCE FROM dual
      union all
      SELECT ''04'' as code ,''三相原始记录'' as code_name ,''hefei'' as PROVINCE FROM dual
      union all
      SELECT ''05'' as code ,''低压电流互感器'' as code_name ,''hefei'' as PROVINCE FROM dual
      union all
      SELECT ''01'' as code ,''单相电能表检定证书'' as code_name ,''ningxia'' as PROVINCE FROM dual
      union all
      SELECT ''02'' as code ,''三相电能表检定证书'' as code_name ,''ningxia'' as PROVINCE FROM dual
      union all
      SELECT ''03'' as code ,''电压互感器检定证书'' as code_name ,''ningxia'' as PROVINCE FROM dual
      union all
      SELECT ''04'' as code ,''电流互感器检定证书'' as code_name ,''ningxia'' as PROVINCE FROM dual
      union all
      SELECT ''01'' as code ,''单相电能表检定证书'' as code_name ,''hubei'' as PROVINCE FROM dual
      union all
      SELECT ''02'' as code ,''三相电能表检定证书'' as code_name ,''hubei'' as PROVINCE FROM dual
      union all
      SELECT ''03'' as code ,''电压互感器检定证书'' as code_name ,''hubei'' as PROVINCE FROM dual
      union all
      SELECT ''04'' as code ,''电流互感器检定证书'' as code_name ,''hubei'' as PROVINCE FROM dual
      union all
      SELECT ''01'' as code ,''单相电能表检定证书'' as code_name ,''hunan'' as PROVINCE FROM dual
      union all
      SELECT ''02'' as code ,''三相电能表检定证书'' as code_name ,''hunan'' as PROVINCE FROM dual
      union all
      SELECT ''04'' as code ,''电流互感器检定证书'' as code_name ,''hunan'' as PROVINCE FROM dual
    ';
    EXECUTE IMMEDIATE
    '
      comment on table VW_A_CERT_TYPE_CODE is ''CERT证书视图''
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000021503 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    EXECUTE IMMEDIATE
    '
      create or replace view vw_a_cert_equip_categ as
      select t.code as code,t.code_name, ''qinghai'' as PROVINCE  from vw_det_equip_type t where t.CODE IN (''01'')
      union all
      select ''01'' as code,''单相电能表'' as code_name, ''jiangxi'' as PROVINCE  from dual
      union all
      select ''02'' as code,''三相电能表'' as code_name, ''jiangxi'' as PROVINCE  from dual
      union all
      select ''03'' as code,''电压互感器'' as code_name, ''jiangxi'' as PROVINCE  from dual
      union all
      select ''04'' as code,''电流互感器'' as code_name, ''jiangxi'' as PROVINCE  from dual
      union all
      select ''09'' as code,''采集终端'' as code_name, ''jiangxi'' as PROVINCE  from dual
      union all
      select t.code as code,t.code_name, ''other'' as PROVINCE  from vw_det_equip_type t
      union all
      select ''01'' as code,''单相电能表'' as code_name, ''hefei'' as PROVINCE  from dual
      union all
      select ''02'' as code,''三相电能表'' as code_name, ''hefei'' as PROVINCE  from dual
      union all
      select ''04'' as code,''电流互感器'' as code_name, ''hefei'' as PROVINCE  from dual
      union all
      select ''01'' as code,''单相电能表'' as code_name, ''ningxia'' as PROVINCE  from dual
      union all
      select ''02'' as code,''三相电能表'' as code_name, ''ningxia'' as PROVINCE  from dual
      union all
      select ''03'' as code,''电压互感器'' as code_name, ''ningxia'' as PROVINCE  from dual
      union all
      select ''04'' as code,''电流互感器'' as code_name, ''ningxia'' as PROVINCE  from dual
      union all
      select ''01'' as code,''单相电能表'' as code_name, ''hubei'' as PROVINCE  from dual
      union all
      select ''02'' as code,''三相电能表'' as code_name, ''hubei'' as PROVINCE  from dual
      union all
      select ''03'' as code,''电压互感器'' as code_name, ''hubei'' as PROVINCE  from dual
      union all
      select ''04'' as code,''电流互感器'' as code_name, ''hubei'' as PROVINCE  from dual
      union all
      select ''01'' as code,''单相电能表'' as code_name, ''hunan'' as PROVINCE  from dual
      union all
      select ''02'' as code,''三相电能表'' as code_name, ''hunan'' as PROVINCE  from dual
      union all
      select ''04'' as code,''电流互感器'' as code_name, ''hunan'' as PROVINCE  from dual
    ';
    EXECUTE IMMEDIATE
    '
      comment on table VW_A_CERT_EQUIP_CATEG is ''CERT设备类别视图''
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000021505 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    EXECUTE IMMEDIATE
    '
      CREATE OR REPLACE VIEW VW_A_CERT_ZI AS
      SELECT ''01'' as code ,''检字平第'' as code_name ,''qinghai'' as PROVINCE FROM dual
      union all
      SELECT ''01'' as code ,''校字能第'' as code_name ,''jiangxi'' as PROVINCE FROM dual
      union all
      SELECT ''02'' as code ,''检字能第'' as code_name ,''other'' as PROVINCE FROM dual
      union all
      SELECT ''03'' as code ,''测字能第'' as code_name ,''other'' as PROVINCE FROM dual
      union all
      SELECT ''04'' as code ,''检字互第'' as code_name ,''other'' as PROVINCE FROM dual
      union all
      SELECT ''05'' as code ,''校字互第'' as code_name ,''other'' as PROVINCE FROM dual
      union ALL
      SELECT ''01'' as code ,''宁电计字第'' as code_name ,''ningxia'' as PROVINCE FROM dual
      union all
      SELECT ''01'' as code ,''HBJLSN'' as code_name ,''hubei'' as PROVINCE FROM dual
      union all
      SELECT ''01'' as code ,''（湘）法计'' as code_name ,''hunan'' as PROVINCE FROM dual
    ';
    EXECUTE IMMEDIATE
    '
      comment on table VW_A_CERT_ZI is ''检定证书视图''
    ';
END;
/

prompt
prompt 正在处理纪录编号为 8200000000017607 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Tables U WHERE U.TABLE_NAME = 'F_TMNL_FAULTREASON';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
        create table F_TMNL_FAULTREASON
        (
        id NUMBER(16) not null,
        value VARCHAR2(256),
        name VARCHAR2(256),
        create_date DATE,
        create_orgno VARCHAR2(16),
        create_user VARCHAR2(90),
        update_date DATE,
        update_orgno VARCHAR2(16),
        update_user VARCHAR2(90)
        )
        tablespace MPAC_F
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
      dbms_output.put_line('脚本已跳过，因为 F_TMNL_FAULTREASON 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table F_TMNL_FAULTREASON
      is ''终端故障类型码表(四川专用)。终端故障类型码表,存储网省自定义的终端故障类型码值，和p_code表的国网终端故障类型不重复''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_TMNL_FAULTREASON.ID
      is ''主键ID''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_TMNL_FAULTREASON.VALUE
      is ''代码值''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_TMNL_FAULTREASON.NAME
      is ''代码值的名称''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_TMNL_FAULTREASON.CREATE_DATE
      is ''创建日期''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_TMNL_FAULTREASON.CREATE_ORGNO
      is ''创建单位''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_TMNL_FAULTREASON.CREATE_USER
      is ''创建人编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_TMNL_FAULTREASON.UPDATE_DATE
      is ''修改日期''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_TMNL_FAULTREASON.UPDATE_ORGNO
      is ''修改单位''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_TMNL_FAULTREASON.UPDATE_USER
      is ''修改人编号''
    ';
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_INDEXES U WHERE u.INDEX_NAME = 'PK_F_TMNL_FAULTREASON';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table F_TMNL_FAULTREASON
      add constraint PK_F_TMNL_FAULTREASON primary key (ID)
      using index
      tablespace MPAC_F_IDX
      pctfree 10
      initrans 2
      maxtrans 255
      storage
      (
      initial 64K
      next 1M
      minextents 1
      maxextents unlimited
      )
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 PK_F_TMNL_FAULTREASON 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Sequences U WHERE u.sequence_name = 'SEQ_F_TMNL_FAULTREASON';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      create sequence SEQ_F_TMNL_FAULTREASON
      minvalue 1
      maxvalue 9999999999999999
      start with 8200000000000000
      increment by 1
      cache 20
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 SEQ_F_TMNL_FAULTREASON 已存在。');
    END IF;
END;
/
prompt
prompt 正在处理纪录编号为 8200000000017608 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Tables U WHERE U.TABLE_NAME = 'F_TMNL_FAULT';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
        create table F_TMNL_FAULT
        (
        id NUMBER(16) not null,
        bar_code VARCHAR2(32),
        fault_code VARCHAR2(16),
        datasourcetype VARCHAR2(8),
        create_date DATE,
        create_orgno VARCHAR2(16),
        create_user VARCHAR2(90),
        update_date DATE,
        update_orgno VARCHAR2(16),
        update_user VARCHAR2(90)
        )
        tablespace MPAC_F
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
      dbms_output.put_line('脚本已跳过，因为 F_TMNL_FAULT 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table F_TMNL_FAULT
      is ''终端故障类型信息表(四川专用)。终端故障类型信息表,存储终端的故障类型信息''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_TMNL_FAULT.ID
      is ''主键ID''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_TMNL_FAULT.BAR_CODE
      is ''设备条码''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_TMNL_FAULT.FAULT_CODE
      is ''终端故障类型''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_TMNL_FAULT.DATASOURCETYPE
      is ''01-手工录入、02-营销同步''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_TMNL_FAULT.CREATE_DATE
      is ''创建日期''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_TMNL_FAULT.CREATE_ORGNO
      is ''创建单位''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_TMNL_FAULT.CREATE_USER
      is ''创建人编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_TMNL_FAULT.UPDATE_DATE
      is ''修改日期''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_TMNL_FAULT.UPDATE_ORGNO
      is ''修改单位''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_TMNL_FAULT.UPDATE_USER
      is ''修改人编号''
    ';
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_INDEXES U WHERE u.INDEX_NAME = 'PK_F_TMNL_FAULT';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table F_TMNL_FAULT
      add constraint PK_F_TMNL_FAULT primary key (ID)
      using index
      tablespace MPAC_F_IDX
      pctfree 10
      initrans 2
      maxtrans 255
      storage
      (
      initial 64K
      next 1M
      minextents 1
      maxextents unlimited
      )
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 PK_F_TMNL_FAULT 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Sequences U WHERE u.sequence_name = 'SEQ_F_TMNL_FAULT';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      create sequence SEQ_F_TMNL_FAULT
      minvalue 1
      maxvalue 9999999999999999
      start with 8200000000000000
      increment by 1
      cache 20
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 SEQ_F_TMNL_FAULT 已存在。');
    END IF;
END;
/
prompt
prompt 正在处理纪录编号为 8200000000018876 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Tables U WHERE U.TABLE_NAME = 'MMA_C_CHK_TASK';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
        create table MMA_C_CHK_TASK
        (
        task_id NUMBER(16) not null,
        chk_task_no VARCHAR2(16),
        task_type VARCHAR2(8),
        task_status VARCHAR2(8),
        chk_equip_type VARCHAR2(8),
        task_num NUMBER(8),
        subs_no VARCHAR2(16),
        cust_no VARCHAR2(16),
        subs_name VARCHAR2(256),
        cust_name VARCHAR2(256),
        maker_no VARCHAR2(16),
        made_org_no VARCHAR2(16),
        made_date DATE,
        ret_reason VARCHAR2(8),
        ret_date DATE,
        ret_per_no VARCHAR2(16),
        org_no VARCHAR2(16),
        conf_rslt VARCHAR2(8),
        conf_no VARCHAR2(16),
        conf_date DATE,
        ques_desc VARCHAR2(256),
        team_no VARCHAR2(16),
        checker_no VARCHAR2(16),
        data_source VARCHAR2(8),
        rslt_handler VARCHAR2(16)
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
      dbms_output.put_line('脚本已跳过，因为 MMA_C_CHK_TASK 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table MMA_C_CHK_TASK
      is ''互感器现场检验任务表，记录互感器现场检验任务安排情况
      实体主要包括：任务类型、任务数量、任务状态、检验班组名称、检验人，
      管理单位、厂站编号名称、确认人等属性''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_C_CHK_TASK.TASK_ID
      is ''检验任务标识''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_C_CHK_TASK.CHK_TASK_NO
      is ''检验任务编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_C_CHK_TASK.TASK_TYPE
      is ''任务类型：01首次检验，02周期检验，03临时检验；参见视图VW_MMA_TASK_TYPE''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_C_CHK_TASK.TASK_STATUS
      is ''校验任务状态：01 初始，02 已下发 03 已完成 04 已归档 05 已终止；参见视图VW_MMA_TASK_STATUS''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_C_CHK_TASK.CHK_EQUIP_TYPE
      is ''检验设备类型：01 客户设备，02 厂站设备；参见视图VW_MMA_EQUIP_TYPE''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_C_CHK_TASK.TASK_NUM
      is ''任务数量''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_C_CHK_TASK.SUBS_NO
      is ''厂站编号，互感器所在厂站编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_C_CHK_TASK.CUST_NO
      is ''客户编号，互感器所属客户编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_C_CHK_TASK.SUBS_NAME
      is ''厂站名称''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_C_CHK_TASK.CUST_NAME
      is ''客户名称''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_C_CHK_TASK.MAKER_NO
      is ''任务制定人员编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_C_CHK_TASK.MADE_ORG_NO
      is ''检验任务制定单位''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_C_CHK_TASK.MADE_DATE
      is ''检验任务制定时间''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_C_CHK_TASK.RET_REASON
      is ''终止任务原因：01 现场勘查不通过，02 安全检查不通过；参见视图VW_MMA_RET_REASON''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_C_CHK_TASK.RET_DATE
      is ''检验任务终止时间''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_C_CHK_TASK.RET_PER_NO
      is ''检验任务终止人员编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_C_CHK_TASK.ORG_NO
      is ''检验任务管理单位''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_C_CHK_TASK.CONF_RSLT
      is ''检验任务确认结果：01 未确认，02 已确认，参见视图VW_MMA_CONF_RSLT''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_C_CHK_TASK.CONF_NO
      is ''确认人员编号，掌机确认检验任务人员编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_C_CHK_TASK.CONF_DATE
      is ''确认时间，掌机确认检验任务时间''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_C_CHK_TASK.QUES_DESC
      is ''问题描述，检验任务出现的问题描述''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_C_CHK_TASK.TEAM_NO
      is ''检验班组编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_C_CHK_TASK.CHECKER_NO
      is ''检验人编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_C_CHK_TASK.DATA_SOURCE
      is ''检验任务制定数据来源：01 手持终端，02 MDS系统；参见视图VW_MMA_DATA_SOURCE''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_C_CHK_TASK.RSLT_HANDLER
      is ''结果处理人''
    ';
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_INDEXES U WHERE u.INDEX_NAME = 'PK_MMA_C_CHK_TASK';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table MMA_C_CHK_TASK
      add constraint PK_MMA_C_CHK_TASK primary key (TASK_ID)
      using index
      tablespace MPAC_IDX
      pctfree 10
      initrans 2
      maxtrans 255
      storage
      (
      initial 64K
      next 1M
      minextents 1
      maxextents unlimited
      )
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 PK_MMA_C_CHK_TASK 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Sequences U WHERE u.sequence_name = 'SEQ_MMA_C_CHK_TASK';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      create sequence SEQ_MMA_C_CHK_TASK
      minvalue 1
      maxvalue 9999999999999999
      start with 8200000000000000
      increment by 1
      cache 20
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 SEQ_MMA_C_CHK_TASK 已存在。');
    END IF;
END;
/
prompt
prompt 正在处理纪录编号为 8200000000018877 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Tables U WHERE U.TABLE_NAME = 'MMA_C_CHK_TASK_DET';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
        create table MMA_C_CHK_TASK_DET
        (
        task_det_id NUMBER(16) not null,
        task_id NUMBER(16),
        task_det_status VARCHAR2(8),
        bar_code VARCHAR2(32),
        model_code VARCHAR2(8),
        cali_no VARCHAR2(32),
        chk_date DATE,
        conc_code VARCHAR2(8),
        fst_rv_code VARCHAR2(8),
        snd_rv_code VARCHAR2(8),
        fst_rc_code VARCHAR2(8),
        snd_rc_code VARCHAR2(8),
        rated_load VARCHAR2(8),
        tv_light_load VARCHAR2(8),
        pf VARCHAR2(8),
        pre_code VARCHAR2(8),
        handle_flag VARCHAR2(8)
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
      dbms_output.put_line('脚本已跳过，因为 MMA_C_CHK_TASK_DET 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table MMA_C_CHK_TASK_DET
      is ''互感器现场检验任务明细表，记录某一互感器现场检验任务下
      检验任务明细情况，实体包括：检验任务ID，任务明细ID、互感器条码号、
      互感器检验状态、互感器检验时间等属性。本实体通过在制定检验任务
      之后增加任务明细生成''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_C_CHK_TASK_DET.TASK_DET_ID
      is ''检验任务明细标识''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_C_CHK_TASK_DET.TASK_ID
      is ''检验任务标识，所属检验任务的任务ID''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_C_CHK_TASK_DET.TASK_DET_STATUS
      is ''任务明细状态：01 待检验，02 检验中断，03 已检验，04 已确认；参见视图VW_MMA_TASK_DET_STATUS''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_C_CHK_TASK_DET.BAR_CODE
      is ''互感器编号，所需检验的互感器条码号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_C_CHK_TASK_DET.MODEL_CODE
      is ''互感器型号，待检互感器型号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_C_CHK_TASK_DET.CALI_NO
      is ''校验仪编号，所使用的现校仪编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_C_CHK_TASK_DET.CHK_DATE
      is ''检验时间，由掌机录入''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_C_CHK_TASK_DET.CONC_CODE
      is ''检验结论：01 未检验，02 合格，03 不合格；参见视图VW_MMA_CONC_CODE''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_C_CHK_TASK_DET.FST_RV_CODE
      is ''一次电压，互感器基本参数''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_C_CHK_TASK_DET.SND_RV_CODE
      is ''二次电压，互感器基本参数''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_C_CHK_TASK_DET.FST_RC_CODE
      is ''一次电流，互感器基本参数''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_C_CHK_TASK_DET.SND_RC_CODE
      is ''二次电流，互感器基本参数''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_C_CHK_TASK_DET.RATED_LOAD
      is ''额定负荷，互感器基本参数''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_C_CHK_TASK_DET.TV_LIGHT_LOAD
      is ''电压互感器下限负荷。01：2.5、02：3.75、03：5、04：6.25、05：7.5''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_C_CHK_TASK_DET.PF
      is ''功率因数，互感器基本参数''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_C_CHK_TASK_DET.PRE_CODE
      is ''精度等级：01：0.2       02：0.2S     03：0.5       04：0.5S''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_C_CHK_TASK_DET.HANDLE_FLAG
      is ''针对检验不合格的互感器，是否发起异常处理:01 已发起,02 未发起;参见视图VW_MMA_HANDLE_FLAG''
    ';
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_INDEXES U WHERE u.INDEX_NAME = 'PK_MMA_C_CHK_TASK_DET';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table MMA_C_CHK_TASK_DET
      add constraint PK_MMA_C_CHK_TASK_DET primary key (TASK_DET_ID)
      using index
      tablespace MPAC_IDX
      pctfree 10
      initrans 2
      maxtrans 255
      storage
      (
      initial 64K
      next 1M
      minextents 1
      maxextents unlimited
      )
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 PK_MMA_C_CHK_TASK_DET 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Sequences U WHERE u.sequence_name = 'SEQ_MMA_C_CHK_TASK_DET';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      create sequence SEQ_MMA_C_CHK_TASK_DET
      minvalue 1
      maxvalue 9999999999999999
      start with 8200000000000000
      increment by 1
      cache 20
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 SEQ_MMA_C_CHK_TASK_DET 已存在。');
    END IF;
END;
/
prompt
prompt 正在处理纪录编号为 8200000000018878 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Tables U WHERE U.TABLE_NAME = 'MMA_C_CHK_RSLT';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
        create table MMA_C_CHK_RSLT
        (
        chk_rslt_id NUMBER(16) not null,
        task_det_id NUMBER(16),
        bar_code VARCHAR2(32),
        cali_no VARCHAR2(32),
        equip_categ VARCHAR2(8),
        pct NUMBER(10,6),
        load_type VARCHAR2(8),
        ratio_diff NUMBER(10,6),
        phase_diff NUMBER(10,6)
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
      dbms_output.put_line('脚本已跳过，因为 MMA_C_CHK_RSLT 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table MMA_C_CHK_RSLT
      is ''互感器现场检验结果表，用于记录互感器现场检验结果
      实体包括：互感器编号、现校仪编号、温度、湿度、
      互感器基本参数（一次电压、二次电压、功率因数等）的检测数据等属性，
      该实体数据有掌机录入并上传，可在mds平台查看''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_C_CHK_RSLT.CHK_RSLT_ID
      is ''检验结果标识''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_C_CHK_RSLT.TASK_DET_ID
      is ''检验任务明细标识，关联检验任务明细表ID''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_C_CHK_RSLT.BAR_CODE
      is ''互感器编号，被检互感器条码号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_C_CHK_RSLT.CALI_NO
      is ''校验仪编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_C_CHK_RSLT.EQUIP_CATEG
      is ''设备类别，互感器所属类别，参照视图：VW_EQUIP_CATEG''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_C_CHK_RSLT.PCT
      is ''百分比,互感器二次电流与一次电流差与一次电流的比值''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_C_CHK_RSLT.LOAD_TYPE
      is ''负荷类型：01 额定负荷，02 下限负荷.参见视图VW_MMA_LOAD_TYPE''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_C_CHK_RSLT.RATIO_DIFF
      is ''比值差，通过二次回路间接测量到的电流值减去一次电流实际值与一次电流实际值的百分比''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_C_CHK_RSLT.PHASE_DIFF
      is ''相位差，是指二次电流相量旋转180°后，与一次电流相量间的夹角又称角差，并规定二次电流相量超前一次电流相量时误差为正，反之为负''
    ';
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_INDEXES U WHERE u.INDEX_NAME = 'PK_MMA_C_CHK_RSLT';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table MMA_C_CHK_RSLT
      add constraint PK_MMA_C_CHK_RSLT primary key (CHK_RSLT_ID)
      using index
      tablespace MPAC_IDX
      pctfree 10
      initrans 2
      maxtrans 255
      storage
      (
      initial 64K
      next 1M
      minextents 1
      maxextents unlimited
      )
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 PK_MMA_C_CHK_RSLT 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Sequences U WHERE u.sequence_name = 'SEQ_MMA_C_CHK_RSLT';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      create sequence SEQ_MMA_C_CHK_RSLT
      minvalue 1
      maxvalue 9999999999999999
      start with 8200000000000000
      increment by 1
      cache 20
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 SEQ_MMA_C_CHK_RSLT 已存在。');
    END IF;
END;
/
prompt
prompt 正在处理纪录编号为 8200000000018879 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Tables U WHERE U.TABLE_NAME = 'MMA_C_CHK_SAFETY';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
        create table MMA_C_CHK_SAFETY
        (
        safety_id NUMBER(16) not null,
        task_id NUMBER(16),
        safety_no VARCHAR2(16),
        item_code VARCHAR2(8),
        item_rslt VARCHAR2(8),
        safetyer VARCHAR2(16),
        safety_date DATE
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
      dbms_output.put_line('脚本已跳过，因为 MMA_C_CHK_SAFETY 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table MMA_C_CHK_SAFETY
      is ''互感器现场检验安全检查结果表，记录现场检验安全检查结果情况
      实体包括：检验任务标识、安全检查结果编号、检查项编号、检查结果、
      检查人等属性，根据检查结果判断现场是否符合检验条件，判断是否
      进行下一步操作，该实体主要由app侧使用''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_C_CHK_SAFETY.SAFETY_ID
      is ''安全检查标识''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_C_CHK_SAFETY.TASK_ID
      is ''检验任务标识，关联检验任务表ID''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_C_CHK_SAFETY.SAFETY_NO
      is ''安全检查结果编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_C_CHK_SAFETY.ITEM_CODE
      is ''检查项编号:01 按调度要求提前办理停电计划，02 完成工作许可手续后，工作负责人向工作班成员交待工作内容、工作地点、工作环境及工作的安全要点，03 工作人员现场核对和检查，并布置预控措施，工作负责人监督检查，04 携带的工具和材料能够满足安装作业的需求，05 进行现场勘察，完成现场勘察报告，06 确保电压互感器除被测二次回路外其他绕组均开路，07 现场的工具，长、大物件必须与带电设备保持足够的安全距离；参见视图VW_MMA_SAFETY_ITEM_CODE''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_C_CHK_SAFETY.ITEM_RSLT
      is ''检查结果:01 通过,02 不通过,参见视图VW_MMA_CHECK_RSLT''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_C_CHK_SAFETY.SAFETYER
      is ''检查人''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_C_CHK_SAFETY.SAFETY_DATE
      is ''检查时间''
    ';
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_INDEXES U WHERE u.INDEX_NAME = 'PK_MMA_C_CHK_SAFETY';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table MMA_C_CHK_SAFETY
      add constraint PK_MMA_C_CHK_SAFETY primary key (SAFETY_ID)
      using index
      tablespace MPAC_IDX
      pctfree 10
      initrans 2
      maxtrans 255
      storage
      (
      initial 64K
      next 1M
      minextents 1
      maxextents unlimited
      )
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 PK_MMA_C_CHK_SAFETY 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Sequences U WHERE u.sequence_name = 'SEQ_MMA_C_CHK_SAFETY';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      create sequence SEQ_MMA_C_CHK_SAFETY
      minvalue 1
      maxvalue 9999999999999999
      start with 8200000000000000
      increment by 1
      cache 20
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 SEQ_MMA_C_CHK_SAFETY 已存在。');
    END IF;
END;
/
prompt
prompt 正在处理纪录编号为 8200000000018880 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Tables U WHERE U.TABLE_NAME = 'MMA_C_CHK_SURVEY';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
        create table MMA_C_CHK_SURVEY
        (
        survey_id NUMBER(16) not null,
        task_id NUMBER(16),
        survey_no VARCHAR2(16),
        survey_type VARCHAR2(8),
        item_code VARCHAR2(8),
        item_rslt VARCHAR2(8),
        surveyer VARCHAR2(16),
        survey_date DATE
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
      dbms_output.put_line('脚本已跳过，因为 MMA_C_CHK_SURVEY 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table MMA_C_CHK_SURVEY
      is ''互感器现场检验现场勘查结果表，记录现场勘查结果信息，
      实体包括现场勘查结果、勘查项、勘察人、勘查时间等属性
      该实体主要有掌机使用''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_C_CHK_SURVEY.SURVEY_ID
      is ''勘查结果标识''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_C_CHK_SURVEY.TASK_ID
      is ''检验任务标识，关联现场检验任务ID''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_C_CHK_SURVEY.SURVEY_NO
      is ''勘查结果编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_C_CHK_SURVEY.SURVEY_TYPE
      is ''勘查类型:01现场工作环境,02 现场勘查内容,参加视图VW_MMA_SURVEY_TYPE''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_C_CHK_SURVEY.ITEM_CODE
      is ''勘查项编号:01 外绝缘，02 温度，03 相对湿度，04 电源频率，05 电源谐波畸变率06 电磁场，07 委托方是否指定配合负责人，熟悉现场情况和被试品参数性能，08 工作地点道路是否通畅，满足设备运输车辆通行要求，09 工作现场基建施工是否完毕，地面平整无泥泞，周边物体绝缘距离符合安全规范要求，10 试验设备是否需要对方配合搬运到室内或楼顶，11 互感器铭牌参数是否与工作任务单一致，12 互感器是否安装，一次引线是否拆除，13 互感器常规试验是否完成，如GIS互感器完成GIS耐压试验；参见视图VW_MMA_SURVEY_ITEM_CODE''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_C_CHK_SURVEY.ITEM_RSLT
      is ''勘查结果:01 通过,02 不通过;参见视图VW_MMA_CHECK_RSLT''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_C_CHK_SURVEY.SURVEYER
      is ''勘查人员''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_C_CHK_SURVEY.SURVEY_DATE
      is ''勘查时间''
    ';
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_INDEXES U WHERE u.INDEX_NAME = 'PK_MMA_C_CHK_SURVEY';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table MMA_C_CHK_SURVEY
      add constraint PK_MMA_C_CHK_SURVEY primary key (SURVEY_ID)
      using index
      tablespace MPAC_IDX
      pctfree 10
      initrans 2
      maxtrans 255
      storage
      (
      initial 64K
      next 1M
      minextents 1
      maxextents unlimited
      )
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 PK_MMA_C_CHK_SURVEY 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Sequences U WHERE u.sequence_name = 'SEQ_MMA_C_CHK_SURVEY';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      create sequence SEQ_MMA_C_CHK_SURVEY
      minvalue 1
      maxvalue 9999999999999999
      start with 8200000000000000
      increment by 1
      cache 20
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 SEQ_MMA_C_CHK_SURVEY 已存在。');
    END IF;
END;
/
prompt
prompt 正在处理纪录编号为 8200000000018887 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Tables U WHERE U.TABLE_NAME = 'MMA_C_CHK_MEET';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
        create table MMA_C_CHK_MEET
        (
        meet_id NUMBER(16) not null,
        task_id NUMBER(16),
        meet_no VARCHAR2(16),
        meet_type VARCHAR2(8),
        host_no VARCHAR2(16),
        host_name VARCHAR2(64),
        due_num NUMBER(5),
        real_num NUMBER(5),
        meet_date DATE,
        meet_addr VARCHAR2(256),
        rec_name VARCHAR2(64)
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
      dbms_output.put_line('脚本已跳过，因为 MMA_C_CHK_MEET 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table MMA_C_CHK_MEET
      is ''互感器现场检验班会信息表，用于记录互感器现场检验班会信息，
      包括班前会和班后会，实体包括：班会类型、主持人、应到人数、实到
      人数、班会地点、班会时间等属性，该实体主要由app侧使用''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_C_CHK_MEET.MEET_ID
      is ''会议标识''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_C_CHK_MEET.TASK_ID
      is ''检验任务标识，关联检验任务表ID''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_C_CHK_MEET.MEET_NO
      is ''会议编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_C_CHK_MEET.MEET_TYPE
      is ''会议类型：01 班前会，02 班后会，参见视图VW_MMA_MEET_TYPE''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_C_CHK_MEET.HOST_NO
      is ''主持人编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_C_CHK_MEET.HOST_NAME
      is ''主持人姓名''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_C_CHK_MEET.DUE_NUM
      is ''应到人数，会议理论人数''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_C_CHK_MEET.REAL_NUM
      is ''实到人数，会议实际人数''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_C_CHK_MEET.MEET_DATE
      is ''召开时间''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_C_CHK_MEET.MEET_ADDR
      is ''召开地点''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_C_CHK_MEET.REC_NAME
      is ''会议记录人''
    ';
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_INDEXES U WHERE u.INDEX_NAME = 'PK_MMA_C_CHK_MEET';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table MMA_C_CHK_MEET
      add constraint PK_MMA_C_CHK_MEET primary key (MEET_ID)
      using index
      tablespace MPAC_IDX
      pctfree 10
      initrans 2
      maxtrans 255
      storage
      (
      initial 64K
      next 1M
      minextents 1
      maxextents unlimited
      )
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 PK_MMA_C_CHK_MEET 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Sequences U WHERE u.sequence_name = 'SEQ_MMA_C_CHK_MEET';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      create sequence SEQ_MMA_C_CHK_MEET
      minvalue 1
      maxvalue 9999999999999999
      start with 8200000000000000
      increment by 1
      cache 20
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 SEQ_MMA_C_CHK_MEET 已存在。');
    END IF;
END;
/
prompt
prompt 正在处理纪录编号为 8200000000018888 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Tables U WHERE U.TABLE_NAME = 'MMA_C_CHK_MEET_INSP';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
        create table MMA_C_CHK_MEET_INSP
        (
        insp_id NUMBER(16) not null,
        meet_id NUMBER(16),
        item_code VARCHAR2(8),
        item_rslt VARCHAR2(8),
        insper VARCHAR2(16),
        insp_date DATE
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
      dbms_output.put_line('脚本已跳过，因为 MMA_C_CHK_MEET_INSP 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table MMA_C_CHK_MEET_INSP
      is ''互感器现场检验班后会现场监督卡表，记录现场检验完成之后现场
      检查结果，实体包括：会议标识、检查项、检查结果、检查人等属性
      实体主要由APP侧使用''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_C_CHK_MEET_INSP.INSP_ID
      is ''安全监督卡标识''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_C_CHK_MEET_INSP.MEET_ID
      is ''会议标识，关联班会信息表ID''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_C_CHK_MEET_INSP.ITEM_CODE
      is ''检查项编号:01 是否关注安全情况，提前办理工作票，02 安全措施是否到位，03 设备接线是否无误，04 试验作业是否规范，05 是否做好原始记录，06 是否拆除试验线，07 是否拆除安全措施，并清理工作现场；参见视图VW_MMA_INSP_ITEM_CODE''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_C_CHK_MEET_INSP.ITEM_RSLT
      is ''检查结果:01 通过,02 不通过,参见视图VW_MMA_CHECK_RSLT''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_C_CHK_MEET_INSP.INSPER
      is ''检查人''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_C_CHK_MEET_INSP.INSP_DATE
      is ''检查时间''
    ';
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_INDEXES U WHERE u.INDEX_NAME = 'PK_MMA_C_CHK_MEET_INSP';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table MMA_C_CHK_MEET_INSP
      add constraint PK_MMA_C_CHK_MEET_INSP primary key (INSP_ID)
      using index
      tablespace MPAC_IDX
      pctfree 10
      initrans 2
      maxtrans 255
      storage
      (
      initial 64K
      next 1M
      minextents 1
      maxextents unlimited
      )
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 PK_MMA_C_CHK_MEET_INSP 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Sequences U WHERE u.sequence_name = 'SEQ_MMA_C_CHK_MEET_INSP';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      create sequence SEQ_MMA_C_CHK_MEET_INSP
      minvalue 1
      maxvalue 9999999999999999
      start with 8200000000000000
      increment by 1
      cache 20
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 SEQ_MMA_C_CHK_MEET_INSP 已存在。');
    END IF;
END;
/
prompt
prompt 正在处理纪录编号为 8200000000018889 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Tables U WHERE U.TABLE_NAME = 'MMA_A_SUBS';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
        create table MMA_A_SUBS
        (
        subs_no NUMBER(16) not null,
        subs_name VARCHAR2(256),
        subs_addr VARCHAR2(256),
        org_no VARCHAR2(16),
        pr_org_no VARCHAR2(16),
        maintain_org_no VARCHAR2(16),
        contact_no VARCHAR2(16),
        contact_tel VARCHAR2(32),
        area_code VARCHAR2(16),
        subs_status VARCHAR2(8),
        base_desc VARCHAR2(256)
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
      dbms_output.put_line('脚本已跳过，因为 MMA_A_SUBS 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table MMA_A_SUBS
      is ''互感器现场检验厂站信息管理表，用于记录互感器所在厂站信息，
      实体包括：厂站编号、厂站名称、厂站地址。管理单位、维护单位等属性
      该实体主要由mds平台互感器现场检验业务使用''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_A_SUBS.SUBS_NO
      is ''厂站编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_A_SUBS.SUBS_NAME
      is ''厂站名称''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_A_SUBS.SUBS_ADDR
      is ''厂站地址''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_A_SUBS.ORG_NO
      is ''厂站管理单位''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_A_SUBS.PR_ORG_NO
      is ''厂站所属产权单位''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_A_SUBS.MAINTAIN_ORG_NO
      is ''厂站维护单位''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_A_SUBS.CONTACT_NO
      is ''厂站联系人''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_A_SUBS.CONTACT_TEL
      is ''厂站联系电话''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_A_SUBS.AREA_CODE
      is ''厂站所属区域''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_A_SUBS.SUBS_STATUS
      is ''厂站状态 01：运行；03：废弃；04：停用参看视图：VW_MMA_SUBS_STATUS''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_A_SUBS.BASE_DESC
      is ''厂站基本情况描述''
    ';
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_INDEXES U WHERE u.INDEX_NAME = 'PK_MMA_A_SUBS';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table MMA_A_SUBS
      add constraint PK_MMA_A_SUBS primary key (SUBS_NO)
      using index
      tablespace MPAC_IDX
      pctfree 10
      initrans 2
      maxtrans 255
      storage
      (
      initial 64K
      next 1M
      minextents 1
      maxextents unlimited
      )
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 PK_MMA_A_SUBS 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Sequences U WHERE u.sequence_name = 'SEQ_MMA_A_SUBS';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      create sequence SEQ_MMA_A_SUBS
      minvalue 1
      maxvalue 9999999999999999
      start with 8200000000000000
      increment by 1
      cache 20
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 SEQ_MMA_A_SUBS 已存在。');
    END IF;
END;
/
prompt
prompt 正在处理纪录编号为 8200000000018890 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Tables U WHERE U.TABLE_NAME = 'MMA_A_C_CONS';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
        create table MMA_A_C_CONS
        (
        cons_no VARCHAR2(16) not null,
        cons_name VARCHAR2(256),
        elec_addr VARCHAR2(256),
        org_no VARCHAR2(16),
        area_no VARCHAR2(16),
        comm_addr VARCHAR2(32),
        contact_no VARCHAR2(16),
        contact_tel VARCHAR2(32),
        mp_type_code VARCHAR2(8),
        md_equip_categ VARCHAR2(8)
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
      dbms_output.put_line('脚本已跳过，因为 MMA_A_C_CONS 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table MMA_A_C_CONS
      is ''互感器现场检验客户档案信息管理表，记录客户档案记录信息，
      实体包括：用户名称、供电单位编号、行政区域、通讯地址等属性，
      该实体主要由mds平台互感器现场检验业务使用''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_A_C_CONS.CONS_NO
      is ''用电客户的外部标识，引用国家电网公司营销管理英文名称类集:5110.1用电客户编号规则''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_A_C_CONS.CONS_NAME
      is ''用户的名称，一般等于客户实体中的客户名称，但也允许附加上一些非自然的信息。如 XXX（东城），便于通过用户名称直接识别。''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_A_C_CONS.ELEC_ADDR
      is ''用电客户的用电地址''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_A_C_CONS.ORG_NO
      is ''供电单位编码，一般是指的用户的直接供电管理单位，也可以是大客户管理中心等由于管理原因产生的客户管理单位''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_A_C_CONS.AREA_NO
      is ''用电客户行政区域''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_A_C_CONS.COMM_ADDR
      is ''用电客户通讯地址''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_A_C_CONS.CONTACT_NO
      is ''联系人编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_A_C_CONS.CONTACT_TEL
      is ''联系电话''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_A_C_CONS.MP_TYPE_CODE
      is ''计量点分类参照视图：VW_MP_TYPE_CODE''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_A_C_CONS.MD_EQUIP_CATEG
      is ''计量装置分类参看视图：VW_MD_TYPE_CODE''
    ';
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_INDEXES U WHERE u.INDEX_NAME = 'PK_MMA_A_C_CONS';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table MMA_A_C_CONS
      add constraint PK_MMA_A_C_CONS primary key (CONS_NO)
      using index
      tablespace MPAC_IDX
      pctfree 10
      initrans 2
      maxtrans 255
      storage
      (
      initial 64K
      next 1M
      minextents 1
      maxextents unlimited
      )
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 PK_MMA_A_C_CONS 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Sequences U WHERE u.sequence_name = 'SEQ_MMA_A_C_CONS';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      create sequence SEQ_MMA_A_C_CONS
      minvalue 1
      maxvalue 9999999999999999
      start with 8200000000000000
      increment by 1
      cache 20
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 SEQ_MMA_A_C_CONS 已存在。');
    END IF;
END;
/
prompt
prompt 正在处理纪录编号为 8200000000018893 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Tables U WHERE U.TABLE_NAME = 'MMA_A_CHK_MAINT';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
        create table MMA_A_CHK_MAINT
        (
        maint_id NUMBER(16) not null,
        maint_no VARCHAR2(16),
        maint_name VARCHAR2(256),
        equip_categ VARCHAR2(8),
        model_code VARCHAR2(8)
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
      dbms_output.put_line('脚本已跳过，因为 MMA_A_CHK_MAINT 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table MMA_A_CHK_MAINT
      is ''互感器现场检验检验规程维护表，用于记录互感器现场检验
      规程的维护记录，实体包括：规程编号、规程名称、设备类别、
      型号等属性，数据由mds平台辅助管理业务写入数据库''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_A_CHK_MAINT.MAINT_ID
      is ''规程标识''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_A_CHK_MAINT.MAINT_NO
      is ''检验规程编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_A_CHK_MAINT.MAINT_NAME
      is ''规程名称，所要上传的检验规程名称''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_A_CHK_MAINT.EQUIP_CATEG
      is ''设备类别 02：电压互感器；03：电流互感器；04：组合互感器参看视图：VW_EQUIP_CATEG''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_A_CHK_MAINT.MODEL_CODE
      is ''其它资产型号，电压互感器VW_VI_MODEL_CODE、电流互感器VW_CI_MODEL_CODE、组合互感器VW_COMPIT_MODEL_CODE''
    ';
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_INDEXES U WHERE u.INDEX_NAME = 'PK_MMA_A_CHK_MAINT';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table MMA_A_CHK_MAINT
      add constraint PK_MMA_A_CHK_MAINT primary key (MAINT_ID)
      using index
      tablespace MPAC_IDX
      pctfree 10
      initrans 2
      maxtrans 255
      storage
      (
      initial 64K
      next 1M
      minextents 1
      maxextents unlimited
      )
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 PK_MMA_A_CHK_MAINT 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Sequences U WHERE u.sequence_name = 'SEQ_MMA_A_CHK_MAINT';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      create sequence SEQ_MMA_A_CHK_MAINT
      minvalue 1
      maxvalue 9999999999999999
      start with 8200000000000000
      increment by 1
      cache 20
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 SEQ_MMA_A_CHK_MAINT 已存在。');
    END IF;
END;
/
prompt
prompt 正在处理纪录编号为 8200000000018894 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Tables U WHERE U.TABLE_NAME = 'MOD_A_CHK_NORM';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
        create table MOD_A_CHK_NORM
        (
        norm_id NUMBER(16) not null,
        norm_no VARCHAR2(16),
        norm_name VARCHAR2(256),
        equip_categ VARCHAR2(8),
        model_code VARCHAR2(8),
        pre_code VARCHAR2(8)
        )
        tablespace MPAC_MOD
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
      dbms_output.put_line('脚本已跳过，因为 MOD_A_CHK_NORM 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table MOD_A_CHK_NORM
      is ''互感器现场检验检验规范管理表用于记录互感器现场检验
      规范的管理，实体包括：规范编号、规范名称、设备类别、
      型号等属性，数据由mds平台辅助管理业务写入数据库''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MOD_A_CHK_NORM.NORM_ID
      is ''检验规范标识''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MOD_A_CHK_NORM.NORM_NO
      is ''检验规范编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MOD_A_CHK_NORM.NORM_NAME
      is ''检验规范名称，上传的检验规范文件名称''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MOD_A_CHK_NORM.EQUIP_CATEG
      is ''设备类别 02：电压互感器；03：电流互感器；04：组合互感器参看视图：VW_EQUIP_CATEG''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MOD_A_CHK_NORM.MODEL_CODE
      is ''其它资产型号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MOD_A_CHK_NORM.PRE_CODE
      is ''引用国家电网公司营销管理英文名称类集:5110.81互感器准确度等级分类与英文名称''
    ';
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_INDEXES U WHERE u.INDEX_NAME = 'PK_MOD_A_CHK_NORM';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table MOD_A_CHK_NORM
      add constraint PK_MOD_A_CHK_NORM primary key (NORM_ID)
      using index
      tablespace MPAC_MOD_IDX
      pctfree 10
      initrans 2
      maxtrans 255
      storage
      (
      initial 64K
      next 1M
      minextents 1
      maxextents unlimited
      )
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 PK_MOD_A_CHK_NORM 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Sequences U WHERE u.sequence_name = 'SEQ_MOD_A_CHK_NORM';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      create sequence SEQ_MOD_A_CHK_NORM
      minvalue 1
      maxvalue 9999999999999999
      start with 8200000000000000
      increment by 1
      cache 20
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 SEQ_MOD_A_CHK_NORM 已存在。');
    END IF;
END;
/
prompt
prompt 正在处理纪录编号为 8200000000018897 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Tables U WHERE U.TABLE_NAME = 'MMA_A_IT_PARA';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
        create table MMA_A_IT_PARA
        (
        maint_id NUMBER(16) not null,
        task_det_id NUMBER(16),
        bar_code VARCHAR2(32),
        it_type_code VARCHAR2(8),
        model_code VARCHAR2(8),
        fst_rv_code VARCHAR2(8),
        snd_rv_code VARCHAR2(8),
        fst_rc_code VARCHAR2(8),
        snd_rc_code VARCHAR2(8),
        rated_load VARCHAR2(8),
        tv_light_load VARCHAR2(8),
        pf VARCHAR2(8),
        pre_code VARCHAR2(8),
        maint_date DATE,
        checker_no VARCHAR2(16)
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
      dbms_output.put_line('脚本已跳过，因为 MMA_A_IT_PARA 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table MMA_A_IT_PARA
      is ''互感器现场检验互感器参数维护信息表，
      用于维护互感器基本参数，实体包括：互感器类型、互感器型号
      、一次电压、一次电流、二次电压、二次电流维护日期、维护人等，
      属性。实体主要由mds平台互感器现场检验辅助管理写入，APP侧
      可根据实际数据进行修改''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_A_IT_PARA.MAINT_ID
      is ''维护标识''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_A_IT_PARA.TASK_DET_ID
      is ''检验任务明细标识，关联检验任务明细表ID''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_A_IT_PARA.BAR_CODE
      is ''互感器编号，互感器条码号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_A_IT_PARA.IT_TYPE_CODE
      is ''互感器类型，参见mds视图''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_A_IT_PARA.MODEL_CODE
      is ''互感器型号，参见MDS视图''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_A_IT_PARA.FST_RV_CODE
      is ''一次电压''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_A_IT_PARA.SND_RV_CODE
      is ''二次电压''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_A_IT_PARA.FST_RC_CODE
      is ''一次电流''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_A_IT_PARA.SND_RC_CODE
      is ''二次电流''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_A_IT_PARA.RATED_LOAD
      is ''额定负荷''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_A_IT_PARA.TV_LIGHT_LOAD
      is ''电压互感器下限负荷。01：2.5、02：3.75、03：5、04：6.25、05：7.5''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_A_IT_PARA.PF
      is ''功率因数''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_A_IT_PARA.PRE_CODE
      is ''精度等级：01：0.2       02：0.2S     03：0.5       04：0.5S''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_A_IT_PARA.MAINT_DATE
      is ''维护日期''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_A_IT_PARA.CHECKER_NO
      is ''维护人''
    ';
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_INDEXES U WHERE u.INDEX_NAME = 'PK_MMA_A_IT_PARA';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table MMA_A_IT_PARA
      add constraint PK_MMA_A_IT_PARA primary key (MAINT_ID)
      using index
      tablespace MPAC_IDX
      pctfree 10
      initrans 2
      maxtrans 255
      storage
      (
      initial 64K
      next 1M
      minextents 1
      maxextents unlimited
      )
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 PK_MMA_A_IT_PARA 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Sequences U WHERE u.sequence_name = 'SEQ_MMA_A_IT_PARA';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      create sequence SEQ_MMA_A_IT_PARA
      minvalue 1
      maxvalue 9999999999999999
      start with 8200000000000000
      increment by 1
      cache 20
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 SEQ_MMA_A_IT_PARA 已存在。');
    END IF;
END;
/
prompt
prompt 正在处理纪录编号为 8200000000018898 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Tables U WHERE U.TABLE_NAME = 'MMA_A_SUBS_IT_RELA';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
        create table MMA_A_SUBS_IT_RELA
        (
        rela_id NUMBER(16) not null,
        subs_no NUMBER(16),
        it_id NUMBER(16)
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
      dbms_output.put_line('脚本已跳过，因为 MMA_A_SUBS_IT_RELA 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table MMA_A_SUBS_IT_RELA
      is ''互感器现场检验，厂站与互感器关联关系表
      中间表，将厂站与互感器进行关联''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_A_SUBS_IT_RELA.RELA_ID
      is ''关联标识''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_A_SUBS_IT_RELA.SUBS_NO
      is ''厂站编号，关联厂站信息表ID''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_A_SUBS_IT_RELA.IT_ID
      is ''互感器标识，关联互感器资产表ID''
    ';
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_INDEXES U WHERE u.INDEX_NAME = 'PK_MMA_A_SUBS_IT_RELA';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table MMA_A_SUBS_IT_RELA
      add constraint PK_MMA_A_SUBS_IT_RELA primary key (RELA_ID)
      using index
      tablespace MPAC_IDX
      pctfree 10
      initrans 2
      maxtrans 255
      storage
      (
      initial 64K
      next 1M
      minextents 1
      maxextents unlimited
      )
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 PK_MMA_A_SUBS_IT_RELA 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Sequences U WHERE u.sequence_name = 'SEQ_MMA_A_SUBS_IT_RELA';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      create sequence SEQ_MMA_A_SUBS_IT_RELA
      minvalue 1
      maxvalue 9999999999999999
      start with 8200000000000000
      increment by 1
      cache 20
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 SEQ_MMA_A_SUBS_IT_RELA 已存在。');
    END IF;
END;
/
prompt
prompt 正在处理纪录编号为 8200000000018899 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Tables U WHERE U.TABLE_NAME = 'MMA_A_CONS_IT_RELA';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
        create table MMA_A_CONS_IT_RELA
        (
        cognate_id NUMBER(16) not null,
        cons_no VARCHAR2(16),
        it_id NUMBER(16)
        )
        tablespace MPAC_MMA
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
      dbms_output.put_line('脚本已跳过，因为 MMA_A_CONS_IT_RELA 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table MMA_A_CONS_IT_RELA
      is ''互感器现场检验，客户互感器关联关系表，
      中间表，关联互感器与客户信息''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_A_CONS_IT_RELA.COGNATE_ID
      is ''关联标识''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_A_CONS_IT_RELA.CONS_NO
      is ''关联客户信息表的ID，用电客户的外部标识，引用国家电网公司营销管理英文名称类集:5110.1  用电客户编号规则''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_A_CONS_IT_RELA.IT_ID
      is ''互感器标识，关联互感器资产表ID''
    ';
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_INDEXES U WHERE u.INDEX_NAME = 'PK_MMA_A_CONS_IT_RELA';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table MMA_A_CONS_IT_RELA
      add constraint PK_MMA_A_CONS_IT_RELA primary key (COGNATE_ID)
      using index
      tablespace MPAC_MMA_IDX
      pctfree 10
      initrans 2
      maxtrans 255
      storage
      (
      initial 64K
      next 1M
      minextents 1
      maxextents unlimited
      )
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 PK_MMA_A_CONS_IT_RELA 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Sequences U WHERE u.sequence_name = 'SEQ_MMA_A_CONS_IT_RELA';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      create sequence SEQ_MMA_A_CONS_IT_RELA
      minvalue 1
      maxvalue 9999999999999999
      start with 8200000000000000
      increment by 1
      cache 20
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 SEQ_MMA_A_CONS_IT_RELA 已存在。');
    END IF;
END;
/
prompt
prompt 正在处理纪录编号为 8200000000018901 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Tables U WHERE U.TABLE_NAME = 'MMA_A_WARNING_INFO';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
        create table MMA_A_WARNING_INFO
        (
        warning_id NUMBER(16) not null,
        warning_no VARCHAR2(16),
        task_det_id NUMBER(16),
        rule_no VARCHAR2(16),
        warning_type VARCHAR2(8),
        warning_doc VARCHAR2(256)
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
      dbms_output.put_line('脚本已跳过，因为 MMA_A_WARNING_INFO 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table MMA_A_WARNING_INFO
      is ''互感器现场检验告警信息表，记录互感器检验告警内容
      实体包括，任务明细标识、告警内容、告警类型等属性，
      该实体主要由APP侧业务使用''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_A_WARNING_INFO.WARNING_ID
      is ''告警标识''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_A_WARNING_INFO.WARNING_NO
      is ''告警编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_A_WARNING_INFO.TASK_DET_ID
      is ''检验任务明细编号，关联检验任务明细表ID''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_A_WARNING_INFO.RULE_NO
      is ''告警规则编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_A_WARNING_INFO.WARNING_TYPE
      is ''告警类型:01参数不一致，02接线测试不通过，03误差测试不通过；参看视图：VW_MMA_WARNING_TYPE''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_A_WARNING_INFO.WARNING_DOC
      is ''告警内容''
    ';
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_INDEXES U WHERE u.INDEX_NAME = 'PK_MMA_A_WARNING_INFO';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table MMA_A_WARNING_INFO
      add constraint PK_MMA_A_WARNING_INFO primary key (WARNING_ID)
      using index
      tablespace MPAC_IDX
      pctfree 10
      initrans 2
      maxtrans 255
      storage
      (
      initial 64K
      next 1M
      minextents 1
      maxextents unlimited
      )
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 PK_MMA_A_WARNING_INFO 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Sequences U WHERE u.sequence_name = 'SEQ_MMA_A_WARNING_INFO';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      create sequence SEQ_MMA_A_WARNING_INFO
      minvalue 1
      maxvalue 9999999999999999
      start with 8200000000000000
      increment by 1
      cache 20
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 SEQ_MMA_A_WARNING_INFO 已存在。');
    END IF;
END;
/
prompt
prompt 正在处理纪录编号为 8200000000018902 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Tables U WHERE U.TABLE_NAME = 'MMA_A_WARNING_RULE';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
        create table MMA_A_WARNING_RULE
        (
        rule_id NUMBER(16) not null,
        rule_no VARCHAR2(16),
        rule_name VARCHAR2(256),
        rated_load_pct NUMBER(10,6),
        below_load_pct NUMBER(10,6),
        equip_categ VARCHAR2(8),
        max_nv_num NUMBER(8),
        min_nv_num NUMBER(8),
        load_type VARCHAR2(8),
        ratio_err VARCHAR2(32),
        angle_err VARCHAR2(32),
        rule_status VARCHAR2(8),
        maker_no VARCHAR2(16),
        made_date DATE,
        remark VARCHAR2(256)
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
    EXECUTE IMMEDIATE
    '
      comment on table MMA_A_WARNING_RULE
      is ''互感器现场检验告警规则表，用于配置互感器检验
      告警规则，实体主要包括：告警规则编号、额定负荷百分比、
      下限负荷百分比、上限阈值、下限阈值、比值差、相位差等属性
      数据由mds平台互感器现场检验辅助管理录入，主要由APP侧
      业务使用''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_A_WARNING_RULE.RULE_ID
      is ''告警规则标识''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_A_WARNING_RULE.RULE_NO
      is ''告警规则编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_A_WARNING_RULE.RULE_NAME
      is ''预警限值名称''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_A_WARNING_RULE.RATED_LOAD_PCT
      is ''额定负荷百分比''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_A_WARNING_RULE.BELOW_LOAD_PCT
      is ''下限负荷百分比''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_A_WARNING_RULE.EQUIP_CATEG
      is ''设备类别 01：电流互感器；02：电压互感器；03：电流电压组合互感器参看视图：VW_IT_SORT_CODE''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_A_WARNING_RULE.MAX_NV_NUM
      is ''上限阈值，设置的阈值上限''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_A_WARNING_RULE.MIN_NV_NUM
      is ''下限阈值，设置的阈值下限''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_A_WARNING_RULE.LOAD_TYPE
      is ''负荷类型 01:额定负荷；02：下限负荷参见视图：VW_MMA_LOAD_TYPE''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_A_WARNING_RULE.RATIO_ERR
      is ''比值差''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_A_WARNING_RULE.ANGLE_ERR
      is ''相位差''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_A_WARNING_RULE.RULE_STATUS
      is ''状态:01 未启用,02 已启用,03 作废参见视图VW_MMA_RULE_STATUS''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_A_WARNING_RULE.MAKER_NO
      is ''制定人''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_A_WARNING_RULE.MADE_DATE
      is ''制定时间''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_A_WARNING_RULE.REMARK
      is ''备注''
    ';

    ELSE
      dbms_output.put_line('脚本已跳过，因为 MMA_A_WARNING_RULE 已存在。');
    END IF;

    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_INDEXES U WHERE u.INDEX_NAME = 'PK_MMA_A_WARNING_RULE';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table MMA_A_WARNING_RULE
      add constraint PK_MMA_A_WARNING_RULE primary key (RULE_ID)
      using index
      tablespace MPAC_IDX
      pctfree 10
      initrans 2
      maxtrans 255
      storage
      (
      initial 64K
      next 1M
      minextents 1
      maxextents unlimited
      )
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 PK_MMA_A_WARNING_RULE 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Sequences U WHERE u.sequence_name = 'SEQ_MMA_A_WARNING_RULE';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      create sequence SEQ_MMA_A_WARNING_RULE
      minvalue 1
      maxvalue 9999999999999999
      start with 8200000000000000
      increment by 1
      cache 20
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 SEQ_MMA_A_WARNING_RULE 已存在。');
    END IF;
END;
/
prompt
prompt 正在处理纪录编号为 8200000000018903 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Tables U WHERE U.TABLE_NAME = 'MMA_A_FILE';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
        create table MMA_A_FILE
        (
        file_id NUMBER(16) not null,
        file_name VARCHAR2(256),
        file_type VARCHAR2(8),
        file_url VARCHAR2(256),
        up_time DATE,
        busi_id VARCHAR2(16),
        busi_type VARCHAR2(8)
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
      dbms_output.put_line('脚本已跳过，因为 MMA_A_FILE 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table MMA_A_FILE
      is ''互感器现场检验图片文件表，用于存储上传的文件及图片，
      主要包括：文件名称、文件类型、文件路径、上传时间、
      关联业务类型等属性，主要由mds平台互感器现场检验辅助
      管理及APP侧业务使用''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_A_FILE.FILE_ID
      is ''文件标识，唯一标识''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_A_FILE.FILE_NAME
      is ''文件名称，上传的文件名''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_A_FILE.FILE_TYPE
      is ''文件类型 01：图片；02：检定规程信息表；03：检定规范管理文件参见视图：VW_MMA_FILE_TYPE''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_A_FILE.FILE_URL
      is ''文件路径，文件所在服务路径''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_A_FILE.UP_TIME
      is ''上传时间''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_A_FILE.BUSI_ID
      is ''关联业务标识''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_A_FILE.BUSI_TYPE
      is ''关联业务类型：01 现场勘查，02 班前会照片 03 班前会签字，参见视图VW_MMA_FILE_BUSI_TYPE''
    ';
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_INDEXES U WHERE u.INDEX_NAME = 'PK_MMA_A_FILE';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table MMA_A_FILE
      add constraint PK_MMA_A_FILE primary key (FILE_ID)
      using index
      tablespace MPAC_IDX
      pctfree 10
      initrans 2
      maxtrans 255
      storage
      (
      initial 64K
      next 1M
      minextents 1
      maxextents unlimited
      )
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 PK_MMA_A_FILE 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Sequences U WHERE u.sequence_name = 'SEQ_MMA_A_FILE';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      create sequence SEQ_MMA_A_FILE
      minvalue 1
      maxvalue 9999999999999999
      start with 8200000000000000
      increment by 1
      cache 20
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 SEQ_MMA_A_FILE 已存在。');
    END IF;
END;
/
prompt
prompt 正在处理纪录编号为 8200000000019147 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'MMA_C_CHK_TASK' AND U.COLUMN_NAME='FINAL_STEP';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table MMA_C_CHK_TASK add final_step VARCHAR2(8)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 MMA_C_CHK_TASK.final_step 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'MMA_C_CHK_TASK' AND U.COLUMN_NAME='SURVEY_RSLT';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table MMA_C_CHK_TASK add survey_rslt VARCHAR2(8) default 01
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 MMA_C_CHK_TASK.survey_rslt 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'MMA_C_CHK_TASK' AND U.COLUMN_NAME='SAFETY_RSLT';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table MMA_C_CHK_TASK add safety_rslt VARCHAR2(8)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 MMA_C_CHK_TASK.safety_rslt 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'MMA_C_CHK_TASK' AND U.COLUMN_NAME='PRE_MEET_RSLT';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table MMA_C_CHK_TASK add pre_meet_rslt VARCHAR2(8)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 MMA_C_CHK_TASK.pre_meet_rslt 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'MMA_C_CHK_TASK' AND U.COLUMN_NAME='CHK_RSLT';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table MMA_C_CHK_TASK add chk_rslt VARCHAR2(8)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 MMA_C_CHK_TASK.chk_rslt 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'MMA_C_CHK_TASK' AND U.COLUMN_NAME='AFTER_MEET_RSLT';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table MMA_C_CHK_TASK add after_meet_rslt VARCHAR2(8)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 MMA_C_CHK_TASK.after_meet_rslt 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column MMA_C_CHK_TASK.final_step
      is ''终止环节 01 现场勘查，03 安全检查；参见视图VW_MMA_STEP_NO''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_C_CHK_TASK.survey_rslt
      is ''现场勘查结果 01-未执行；02-跳过；03-通过；04-不通过；参看视图 VW_MMA_SURVEY_RSLT，默认现场勘查结果为：01''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_C_CHK_TASK.safety_rslt
      is ''安全检查结果 01-未执行；02 跳过  03-通过；04-不通过；参看视图 VW_MMA_SAFETY_RSLT''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_C_CHK_TASK.pre_meet_rslt
      is ''班前会情况  01-未执行；02-跳过；03-已执行；参看视图 VW_MMA_PRE_MEET_RSLT''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_C_CHK_TASK.chk_rslt
      is ''现场检验情况  01-未执行；02-执行中；03-已执行；参看视图 VW_MMA_CHK_RSLT''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_C_CHK_TASK.after_meet_rslt
      is ''班后会情况  01-未执行；02-跳过；03-已执行；参看视图 VW_MMA_AFTER_MEET_RSLT''
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000019148 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'MMA_C_CHK_TASK_DET' AND U.COLUMN_NAME='TYPE_CODE';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table MMA_C_CHK_TASK_DET add type_code VARCHAR2(8)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 MMA_C_CHK_TASK_DET.type_code 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'MMA_C_CHK_TASK_DET' AND U.COLUMN_NAME='TEMP';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table MMA_C_CHK_TASK_DET add temp NUMBER(5)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 MMA_C_CHK_TASK_DET.temp 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'MMA_C_CHK_TASK_DET' AND U.COLUMN_NAME='HUMIDITY';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table MMA_C_CHK_TASK_DET add humidity NUMBER(5)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 MMA_C_CHK_TASK_DET.humidity 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'MMA_C_CHK_TASK_DET' AND U.COLUMN_NAME='REASON';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table MMA_C_CHK_TASK_DET add reason VARCHAR2(256)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 MMA_C_CHK_TASK_DET.reason 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'MMA_C_CHK_TASK_DET' AND U.COLUMN_NAME='MANUFACTURER';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table MMA_C_CHK_TASK_DET add manufacturer VARCHAR2(16)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 MMA_C_CHK_TASK_DET.manufacturer 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'MMA_C_CHK_TASK_DET' AND U.COLUMN_NAME='IS_DOC_UPDATE';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table MMA_C_CHK_TASK_DET add is_doc_update VARCHAR2(8)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 MMA_C_CHK_TASK_DET.is_doc_update 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column MMA_C_CHK_TASK_DET.type_code
      is ''互感器类型，取自视图VW_IT_TYPE_CODE''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_C_CHK_TASK_DET.temp
      is ''温度，互感器现场检验温度''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_C_CHK_TASK_DET.humidity
      is ''湿度，互感器现场检验湿度''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_C_CHK_TASK_DET.reason
      is ''不合格原因，互感器现场检验的不合格原因''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_C_CHK_TASK_DET.manufacturer
      is ''生产厂家，互感器的生产厂家取自视图VW_EQUIP_MANUFACTURER''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_C_CHK_TASK_DET.is_doc_update
      is ''档案是否修改 1是，0 否 参考视图VW_YESNO_FLAG''
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000019149 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'MMA_A_WARNING_RULE' AND U.COLUMN_NAME='REMARK';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table MMA_A_WARNING_RULE drop column remark
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 MMA_A_WARNING_RULE.REMARK 不存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'MMA_A_WARNING_RULE' AND U.COLUMN_NAME='RATED_LOAD_PCT';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table MMA_A_WARNING_RULE drop column rated_load_pct
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 MMA_A_WARNING_RULE.RATED_LOAD_PCT 不存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'MMA_A_WARNING_RULE' AND U.COLUMN_NAME='BELOW_LOAD_PCT';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table MMA_A_WARNING_RULE drop column below_load_pct
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 MMA_A_WARNING_RULE.BELOW_LOAD_PCT 不存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'MMA_A_WARNING_RULE' AND U.COLUMN_NAME='RATIO_ERR';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table MMA_A_WARNING_RULE drop column ratio_err
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 MMA_A_WARNING_RULE.RATIO_ERR 不存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'MMA_A_WARNING_RULE' AND U.COLUMN_NAME='ANGLE_ERR';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table MMA_A_WARNING_RULE drop column angle_err
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 MMA_A_WARNING_RULE.ANGLE_ERR 不存在。');
    END IF;
END;
/
prompt
prompt 正在处理纪录编号为 8200000000019150 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'MMA_A_WARNING_RULE' AND U.COLUMN_NAME='PRE_CODE';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table MMA_A_WARNING_RULE add pre_code VARCHAR2(8)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 MMA_A_WARNING_RULE.pre_code 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'MMA_A_WARNING_RULE' AND U.COLUMN_NAME='RULE_TYPE';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table MMA_A_WARNING_RULE add rule_type VARCHAR2(8)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 MMA_A_WARNING_RULE.rule_type 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'MMA_A_WARNING_RULE' AND U.COLUMN_NAME='RULE_CONT';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table MMA_A_WARNING_RULE add rule_cont VARCHAR2(256)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 MMA_A_WARNING_RULE.rule_cont 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'MMA_A_WARNING_RULE' AND U.COLUMN_NAME='PCT';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table MMA_A_WARNING_RULE add pct NUMBER(5)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 MMA_A_WARNING_RULE.pct 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'MMA_A_WARNING_RULE' AND U.COLUMN_NAME='ENABLE_NO';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table MMA_A_WARNING_RULE add enable_no DATE
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 MMA_A_WARNING_RULE.enable_no 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'MMA_A_WARNING_RULE' AND U.COLUMN_NAME='ENABLE_DATE';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table MMA_A_WARNING_RULE add enable_date DATE
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 MMA_A_WARNING_RULE.enable_date 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'MMA_A_WARNING_RULE' AND U.COLUMN_NAME='DEAD_NO';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table MMA_A_WARNING_RULE add dead_no VARCHAR2(16)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 MMA_A_WARNING_RULE.dead_no 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'MMA_A_WARNING_RULE' AND U.COLUMN_NAME='DEAD_DATE';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table MMA_A_WARNING_RULE add dead_date DATE
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 MMA_A_WARNING_RULE.dead_date 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column MMA_A_WARNING_RULE.pre_code
      is ''精度等级：01：0.2       02：0.2S     03：0.5       04：0.5S，参考视图VW_IT_ACCURACY_CODE''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_A_WARNING_RULE.rule_type
      is ''告警规则类型 01-检验结果类 参考视图VW_MMA_RULE_TYPE''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_A_WARNING_RULE.rule_cont
      is ''告警规则内容，描述告警规则内容''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_A_WARNING_RULE.pct
      is ''百分比，指互感器的实际二次电流（电压）乘上额定变比与一次实际电流（电压）的差，对一次实际电流（电压）的百分数''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_A_WARNING_RULE.enable_no
      is ''告警规则启用人''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_A_WARNING_RULE.enable_date
      is ''告警规则启用时间''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_A_WARNING_RULE.dead_no
      is ''告警规则停用人''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_A_WARNING_RULE.dead_date
      is ''告警规则停用时间''
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000019543 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'MMA_A_WARNING_RULE' AND U.COLUMN_NAME='PCT';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table MMA_A_WARNING_RULE modify pct VARCHAR2(8)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 MMA_A_WARNING_RULE.PCT 不存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column MMA_A_WARNING_RULE.pct
      is ''百分比，参考视图VW_MMA_PCT_CODE''
    ';
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'MMA_A_WARNING_RULE' AND U.COLUMN_NAME='ENABLE_NO';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table MMA_A_WARNING_RULE modify enable_no VARCHAR2(16)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 MMA_A_WARNING_RULE.ENABLE_NO 不存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column MMA_A_WARNING_RULE.enable_no
      is ''启用人，告警规则启用人''
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000019561 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'MMA_C_CHK_RSLT' AND U.COLUMN_NAME='PCT';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table MMA_C_CHK_RSLT modify pct VARCHAR2(8)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 MMA_C_CHK_RSLT.PCT 不存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column MMA_C_CHK_RSLT.pct
      is ''百分比，参考视图VW_MMA_PCT_CODE''
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000021107 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'T_DETECT_CERT' AND U.COLUMN_NAME='CERT_NO';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table T_DETECT_CERT add cert_no VARCHAR2(64)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 T_DETECT_CERT.cert_no 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'T_DETECT_CERT' AND U.COLUMN_NAME='CREATE_TIME';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table T_DETECT_CERT add create_time DATE
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 T_DETECT_CERT.create_time 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'T_DETECT_CERT' AND U.COLUMN_NAME='ENTRUST_DEPT_NO';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table T_DETECT_CERT add entrust_dept_no VARCHAR2(30)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 T_DETECT_CERT.entrust_dept_no 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'T_DETECT_CERT' AND U.COLUMN_NAME='ENTRUST_DEPT_NAME';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table T_DETECT_CERT add entrust_dept_name VARCHAR2(30)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 T_DETECT_CERT.entrust_dept_name 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column T_DETECT_CERT.cert_no
      is ''证书编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_DETECT_CERT.create_time
      is ''证书生成时间''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_DETECT_CERT.entrust_dept_no
      is ''委托单位编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_DETECT_CERT.entrust_dept_name
      is ''委托单位名称''
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000021247 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'D_IO_TASK' AND U.COLUMN_NAME='BACK_WH_FLAG';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table D_IO_TASK add back_wh_flag VARCHAR2(8)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 D_IO_TASK.back_wh_flag 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'D_IO_TASK' AND U.COLUMN_NAME='IS_OUTDATE_FLAG';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table D_IO_TASK add is_outdate_flag VARCHAR2(8)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 D_IO_TASK.is_outdate_flag 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column D_IO_TASK.back_wh_flag
      is ''出库任务对应的拣选回库库房标志，01平库，02立库''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_IO_TASK.is_outdate_flag
      is ''出库任务是否为超期表的标识，0否，1是''
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000021760 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Tables U WHERE U.TABLE_NAME = 'D_DEV_EXCEEDTIME_TASK';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
        create table D_DEV_EXCEEDTIME_TASK
        (
        task_id NUMBER(16) not null,
        task_no VARCHAR(32),
        equip_categ VARCHAR(8),
        equip_code VARCHAR(32),
        arrive_batch_no VARCHAR(32),
        wring_mode VARCHAR(8),
        nums NUMBER(16),
        wh_id NUMBER(16),
        is_locked VARCHAR(8),
        task_status VARCHAR(8),
        write_date DATE,
        made_no VARCHAR(32)
        )
        tablespace MPAC_D
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
      dbms_output.put_line('脚本已跳过，因为 D_DEV_EXCEEDTIME_TASK 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table D_DEV_EXCEEDTIME_TASK
      is ''超期检查任务表，
      记录超期的合格库存的检查任务。
      主要字段有：超期检查任务单号，设备类别,设备码等字段''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_DEV_EXCEEDTIME_TASK.TASK_ID
      is ''超期检查任务ID''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_DEV_EXCEEDTIME_TASK.TASK_NO
      is ''超期检查任务单号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_DEV_EXCEEDTIME_TASK.EQUIP_CATEG
      is ''设备类别''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_DEV_EXCEEDTIME_TASK.EQUIP_CODE
      is ''设备码,关联B_EQUIP_CODE''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_DEV_EXCEEDTIME_TASK.ARRIVE_BATCH_NO
      is ''到货批次号，关联C_ARRIVE_CHECK_IN''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_DEV_EXCEEDTIME_TASK.WRING_MODE
      is ''接线方式,关联VW_WIRING_MODE''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_DEV_EXCEEDTIME_TASK.NUMS
      is ''任务数量''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_DEV_EXCEEDTIME_TASK.WH_ID
      is ''库房ID''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_DEV_EXCEEDTIME_TASK.IS_LOCKED
      is ''是否锁表成功， 1成功， 0失败''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_DEV_EXCEEDTIME_TASK.TASK_STATUS
      is ''任务状态，关联VW_EXCEEDTIME_TASK_STATUS''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_DEV_EXCEEDTIME_TASK.WRITE_DATE
      is ''写入时间''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_DEV_EXCEEDTIME_TASK.MADE_NO
      is ''制定人''
    ';
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_INDEXES U WHERE u.INDEX_NAME = 'PK_D_DEV_EXCEEDTIME_TASK';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table D_DEV_EXCEEDTIME_TASK
      add constraint PK_D_DEV_EXCEEDTIME_TASK primary key (TASK_ID)
      using index
      tablespace MPAC_D_IDX
      pctfree 10
      initrans 2
      maxtrans 255
      storage
      (
      initial 64K
      next 1M
      minextents 1
      maxextents unlimited
      )
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 PK_D_DEV_EXCEEDTIME_TASK 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Sequences U WHERE u.sequence_name = 'SEQ_D_DEV_EXCEEDTIME_TASK';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      create sequence SEQ_D_DEV_EXCEEDTIME_TASK
      minvalue 1
      maxvalue 9999999999999999
      start with 8200000000000000
      increment by 1
      cache 20
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 SEQ_D_DEV_EXCEEDTIME_TASK 已存在。');
    END IF;
END;
/
prompt
prompt 正在处理纪录编号为 8200000000021792 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'D_IO_TASK' AND U.COLUMN_NAME='OUT_TYPE';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table D_IO_TASK add out_type VARCHAR2(8)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 D_IO_TASK.out_type 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column D_IO_TASK.out_type
      is ''移库出库类型。01按只，02按箱，03按垛''
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000021907 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    EXECUTE IMMEDIATE
    '
      create or replace view vw_a_cert_equip_categ as
      select t.code as code,t.code_name, ''qinghai'' as PROVINCE  from vw_det_equip_type t where t.CODE IN (''01'')
      union all
      select ''01'' as code,''单相电能表'' as code_name, ''jiangxi'' as PROVINCE  from dual
      union all
      select ''02'' as code,''三相电能表'' as code_name, ''jiangxi'' as PROVINCE  from dual
      union all
      select ''03'' as code,''电压互感器'' as code_name, ''jiangxi'' as PROVINCE  from dual
      union all
      select ''04'' as code,''电流互感器'' as code_name, ''jiangxi'' as PROVINCE  from dual
      union all
      select ''09'' as code,''采集终端'' as code_name, ''jiangxi'' as PROVINCE  from dual
      union all
      select t.code as code,t.code_name, ''other'' as PROVINCE  from vw_det_equip_type t
      union all
      select ''01'' as code,''单相电能表'' as code_name, ''hefei'' as PROVINCE  from dual
      union all
      select ''02'' as code,''三相电能表'' as code_name, ''hefei'' as PROVINCE  from dual
      union all
      select ''04'' as code,''电流互感器'' as code_name, ''hefei'' as PROVINCE  from dual
      union all
      select ''01'' as code,''单相电能表'' as code_name, ''ningxia'' as PROVINCE  from dual
      union all
      select ''02'' as code,''三相电能表'' as code_name, ''ningxia'' as PROVINCE  from dual
      union all
      select ''03'' as code,''电压互感器'' as code_name, ''ningxia'' as PROVINCE  from dual
      union all
      select ''04'' as code,''电流互感器'' as code_name, ''ningxia'' as PROVINCE  from dual
      union all
      select ''01'' as code,''单相电能表'' as code_name, ''hubei'' as PROVINCE  from dual
      union all
      select ''02'' as code,''三相电能表'' as code_name, ''hubei'' as PROVINCE  from dual
      union all
      select ''03'' as code,''电压互感器'' as code_name, ''hubei'' as PROVINCE  from dual
      union all
      select ''04'' as code,''电流互感器'' as code_name, ''hubei'' as PROVINCE  from dual
      union all
      select ''01'' as code,''单相电能表'' as code_name, ''hunan'' as PROVINCE  from dual
      union all
      select ''02'' as code,''三相电能表'' as code_name, ''hunan'' as PROVINCE  from dual
      union all
      select ''04'' as code,''电流互感器'' as code_name, ''hunan'' as PROVINCE  from dual
      union all
      select ''01'' as code,''单相电能表'' as code_name, ''heilongjiang'' as PROVINCE  from dual
      union all
      select ''02'' as code,''三相电能表'' as code_name, ''heilongjiang'' as PROVINCE  from dual
    ';
    EXECUTE IMMEDIATE
    '
      comment on table VW_A_CERT_EQUIP_CATEG is ''CERT设备类别视图''
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000021908 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    EXECUTE IMMEDIATE
    '
      CREATE OR REPLACE VIEW VW_A_CERT_TYPE_CODE AS
      SELECT ''01'' as code ,''单相检定证书'' as code_name ,''qinghai'' as PROVINCE FROM dual
      union all
      SELECT ''02'' as code ,''单相检定结果通知书'' as code_name ,''qinghai'' as PROVINCE FROM dual
      union all
      SELECT ''03'' as code ,''三相检定证书'' as code_name ,''qinghai'' as PROVINCE FROM dual
      union all
      SELECT ''04'' as code ,''三相检定结果通知书'' as code_name ,''qinghai'' as PROVINCE FROM dual
      union all
      SELECT ''01'' as code ,''单相检定证书'' as code_name ,''jiangxi'' as PROVINCE FROM dual
      union all
      SELECT ''02'' as code ,''三相检定证书'' as code_name ,''jiangxi'' as PROVINCE FROM dual
      union all
      SELECT ''03'' as code ,''电压互感器检定证书'' as code_name ,''jiangxi'' as PROVINCE FROM dual
      union all
      SELECT ''04'' as code ,''电流互感器检定证书'' as code_name ,''jiangxi'' as PROVINCE FROM dual
      union all
      SELECT ''01'' as code ,''单相检定证书'' as code_name ,''other'' as PROVINCE FROM dual
      union all
      SELECT ''02'' as code ,''单相检定结果通知书'' as code_name ,''other'' as PROVINCE FROM dual
      union all
      SELECT ''03'' as code ,''三相检定证书'' as code_name ,''other'' as PROVINCE FROM dual
      union all
      SELECT ''04'' as code ,''三相检定结果通知书'' as code_name ,''other'' as PROVINCE FROM dual
      union all
      SELECT ''01'' as code ,''单相检定证书'' as code_name ,''hefei'' as PROVINCE FROM dual
      union all
      SELECT ''02'' as code ,''三相检定证书'' as code_name ,''hefei'' as PROVINCE FROM dual
      union all
      SELECT ''03'' as code ,''单相原始记录'' as code_name ,''hefei'' as PROVINCE FROM dual
      union all
      SELECT ''04'' as code ,''三相原始记录'' as code_name ,''hefei'' as PROVINCE FROM dual
      union all
      SELECT ''05'' as code ,''低压电流互感器'' as code_name ,''hefei'' as PROVINCE FROM dual
      union all
      SELECT ''01'' as code ,''单相电能表检定证书'' as code_name ,''ningxia'' as PROVINCE FROM dual
      union all
      SELECT ''02'' as code ,''三相电能表检定证书'' as code_name ,''ningxia'' as PROVINCE FROM dual
      union all
      SELECT ''03'' as code ,''电压互感器检定证书'' as code_name ,''ningxia'' as PROVINCE FROM dual
      union all
      SELECT ''04'' as code ,''电流互感器检定证书'' as code_name ,''ningxia'' as PROVINCE FROM dual
      union all
      SELECT ''01'' as code ,''单相电能表检定证书'' as code_name ,''hubei'' as PROVINCE FROM dual
      union all
      SELECT ''02'' as code ,''三相电能表检定证书'' as code_name ,''hubei'' as PROVINCE FROM dual
      union all
      SELECT ''03'' as code ,''电压互感器检定证书'' as code_name ,''hubei'' as PROVINCE FROM dual
      union all
      SELECT ''04'' as code ,''电流互感器检定证书'' as code_name ,''hubei'' as PROVINCE FROM dual
      union all
      SELECT ''01'' as code ,''单相电能表检定证书'' as code_name ,''hunan'' as PROVINCE FROM dual
      union all
      SELECT ''02'' as code ,''三相电能表检定证书'' as code_name ,''hunan'' as PROVINCE FROM dual
      union all
      SELECT ''04'' as code ,''电流互感器检定证书'' as code_name ,''hunan'' as PROVINCE FROM dual
      union all
      SELECT ''01'' as code ,''单相电能表检定证书'' as code_name ,''heilongjiang'' as PROVINCE FROM dual
      union all
      SELECT ''02'' as code ,''三相电能表检定证书'' as code_name ,''heilongjiang'' as PROVINCE FROM dual
    ';
    EXECUTE IMMEDIATE
    '
      comment on table VW_A_CERT_TYPE_CODE is ''CERT证书视图''
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000021928 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    EXECUTE IMMEDIATE
    '
      create or replace synonym CJ_D_HANDHELD_DEVICE for D_HANDHELD_DEVICE@CJ
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000021932 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'D_HANDHELD_DEVICE' AND U.COLUMN_NAME='DOC_CREATE_DATE';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table D_HANDHELD_DEVICE add doc_create_date DATE default SYSDATE
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 D_HANDHELD_DEVICE.doc_create_date 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column D_HANDHELD_DEVICE.doc_create_date
      is ''建档日期''
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000021933 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    EXECUTE IMMEDIATE
    '
      CREATE OR REPLACE VIEW VW_A_CERT_ZI AS
      SELECT ''01'' as code ,''检字平第'' as code_name ,''qinghai'' as PROVINCE FROM dual
      union all
      SELECT ''01'' as code ,''校字能第'' as code_name ,''jiangxi'' as PROVINCE FROM dual
      union all
      SELECT ''02'' as code ,''检字能第'' as code_name ,''other'' as PROVINCE FROM dual
      union all
      SELECT ''03'' as code ,''测字能第'' as code_name ,''other'' as PROVINCE FROM dual
      union all
      SELECT ''04'' as code ,''检字互第'' as code_name ,''other'' as PROVINCE FROM dual
      union all
      SELECT ''05'' as code ,''校字互第'' as code_name ,''other'' as PROVINCE FROM dual
      union ALL
      SELECT ''01'' as code ,''宁电计字第'' as code_name ,''ningxia'' as PROVINCE FROM dual
      union all
      SELECT ''01'' as code ,''HBJLSN'' as code_name ,''hubei'' as PROVINCE FROM dual
      union all
      SELECT ''01'' as code ,''（湘）法计'' as code_name ,''hunan'' as PROVINCE FROM dual
      union all
      SELECT ''01'' as code ,''HLJJLSN'' as code_name ,''heilongjiang'' as PROVINCE FROM dual
    ';
    EXECUTE IMMEDIATE
    '
      comment on table VW_A_CERT_ZI is ''检定证书视图''
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000022147 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    EXECUTE IMMEDIATE
    '
      comment on column C_ARRIVE_PARA_SET.disp_order
      is ''展示排序, 值为空则对应配置参数不在页面进行展示维护''
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000022307 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'MMA_A_FILE' AND U.COLUMN_NAME='FILE_CONTENT';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table MMA_A_FILE add file_content VARCHAR(4000)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 MMA_A_FILE.file_content 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column MMA_A_FILE.file_content
      is ''文件内容''
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000022372 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'MMA_CHK_INDIRECT_DET' AND U.COLUMN_NAME='PCT';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table MMA_CHK_INDIRECT_DET modify pct VARCHAR2(8)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 MMA_CHK_INDIRECT_DET.PCT 不存在。');
    END IF;
END;
/
prompt
prompt 正在处理纪录编号为 8200000000022445 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'A_SEAL_IR' AND U.COLUMN_NAME='SEAL_SERIAL';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table A_SEAL_IR add seal_serial VARCHAR2(32)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 A_SEAL_IR.seal_serial 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'A_SEAL_IR' AND U.COLUMN_NAME='CHECK_INFO';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table A_SEAL_IR add check_info VARCHAR2(32)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 A_SEAL_IR.check_info 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'A_SEAL_IR' AND U.COLUMN_NAME='RELEASE_INFO';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table A_SEAL_IR add release_info VARCHAR2(32)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 A_SEAL_IR.release_info 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column A_SEAL_IR.seal_serial
      is ''电子封印应用序列号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column A_SEAL_IR.check_info
      is ''电子封印校验区信息''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column A_SEAL_IR.release_info
      is ''电子封印发行信息''
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000022469 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'A_SEAL_IR' AND U.COLUMN_NAME='WORK_TYPE_CODE';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table A_SEAL_IR add work_type_code VARCHAR2(8)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 A_SEAL_IR.work_type_code 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column A_SEAL_IR.work_type_code
      is ''业务类型。安装维护、现场检验、用电检查等''
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000022494 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'D_HANDHELD_DEVICE' AND U.COLUMN_NAME='BOX_BAR_CODE';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table D_HANDHELD_DEVICE add box_bar_code VARCHAR2(32)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 D_HANDHELD_DEVICE.box_bar_code 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'D_HANDHELD_DEVICE' AND U.COLUMN_NAME='PALLET_BAR_CODE';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table D_HANDHELD_DEVICE add pallet_bar_code VARCHAR2(320)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 D_HANDHELD_DEVICE.pallet_bar_code 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column D_HANDHELD_DEVICE.box_bar_code
      is ''周转箱条码''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_HANDHELD_DEVICE.pallet_bar_code
      is ''托盘条码''
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000022525 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'D_METERING_CABINET' AND U.COLUMN_NAME='SORT_CODE';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table D_METERING_CABINET add sort_code VARCHAR2(8)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 D_METERING_CABINET.sort_code 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'D_METERING_CABINET' AND U.COLUMN_NAME='MADE_DATE';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table D_METERING_CABINET add made_date DATE
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 D_METERING_CABINET.made_date 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column D_METERING_CABINET.sort_code
      is ''类别(参照VW_MEAS_BOX_TYPE)''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_METERING_CABINET.made_date
      is ''出厂日期''
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000022526 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    EXECUTE IMMEDIATE
    '
      CREATE OR REPLACE VIEW VW_MEAS_BOX_TYPE AS
      SELECT VALUE AS CODE, NAME AS CODE_NAME FROM P_CODE_STD WHERE CODE_TYPE = ''measBoxType''
    ';
    EXECUTE IMMEDIATE
    '
      COMMENT ON TABLE VW_MEAS_BOX_TYPE IS ''计量箱类别视图''
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000022583 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'C_ARRIVE_CABINET_PARA' AND U.COLUMN_NAME='SORT_CODE';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table C_ARRIVE_CABINET_PARA add sort_code VARCHAR2(8)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 C_ARRIVE_CABINET_PARA.sort_code 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column C_ARRIVE_CABINET_PARA.sort_code
      is ''类别(参照VW_MEAS_BOX_TYPE)''
    ';
END;
/

prompt
prompt 正在处理纪录编号为 8200000000022810 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    EXECUTE IMMEDIATE
    '
      CREATE OR REPLACE VIEW VW_DTB_EQUIP_CATEG AS
      SELECT value CODE,NAME CODE_NAME
      FROM p_code_std t
      where t.code_type=''equipCateg'' and t.value in (''01'',''02'',''03'',''04'',''05'',''09'',''17'',''27'',''35'',''36'',''54'')
    ';
    EXECUTE IMMEDIATE
    '
      comment on table VW_DTB_EQUIP_CATEG is ''可配送设备类型视图''
    ';
END;
/


prompt
prompt 正在处理纪录编号为 8200000000022888 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Tables U WHERE U.TABLE_NAME = 'B_BID_BATCH_SG186';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
        create table B_BID_BATCH_SG186
        (
        id NUMBER(16) not null,
        batch_no VARCHAR2(64),
        bgserial_no VARCHAR2(32),
        edserial_no VARCHAR2(32),
        manufacturer VARCHAR2(64),
        spec_code VARCHAR2(64),
        manufacturer_name VARCHAR2(64)
        )
        tablespace MPAC_B
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
      dbms_output.put_line('脚本已跳过，因为 B_BID_BATCH_SG186 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table B_BID_BATCH_SG186
      is ''招标批次信息表''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column B_BID_BATCH_SG186.ID
      is ''主键id''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column B_BID_BATCH_SG186.BATCH_NO
      is ''招标批次''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column B_BID_BATCH_SG186.BGSERIAL_NO
      is ''bar_code开始''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column B_BID_BATCH_SG186.EDSERIAL_NO
      is ''bar_code结束''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column B_BID_BATCH_SG186.MANUFACTURER
      is ''供应商编码''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column B_BID_BATCH_SG186.SPEC_CODE
      is ''类型品规''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column B_BID_BATCH_SG186.MANUFACTURER_NAME
      is ''供应商名称''
    ';
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_INDEXES U WHERE u.INDEX_NAME = 'PK_B_BID_BATCH_SG186';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table B_BID_BATCH_SG186
      add constraint PK_B_BID_BATCH_SG186 primary key (ID)
      using index
      tablespace MPAC_B_IDX
      pctfree 10
      initrans 2
      maxtrans 255
      storage
      (
      initial 64K
      next 1M
      minextents 1
      maxextents unlimited
      )
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 PK_B_BID_BATCH_SG186 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Sequences U WHERE u.sequence_name = 'SEQ_B_BID_BATCH_SG186';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      create sequence SEQ_B_BID_BATCH_SG186
      minvalue 1
      maxvalue 9999999999999999
      start with 8200000000000000
      increment by 1
      cache 20
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 SEQ_B_BID_BATCH_SG186 已存在。');
    END IF;
END;
/


prompt
prompt 正在处理纪录编号为 8200000000021384 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Tables U WHERE U.TABLE_NAME = 'MMA_CHK_BASIC_RSLT';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
        create table MMA_CHK_BASIC_RSLT
        (
        chk_rslt_id NUMBER(16) not null,
        task_det_id NUMBER(16),
        polarity VARCHAR2(2),
        compound_err NUMBER(10,6),
        temp NUMBER(5),
        humidity NUMBER(5),
        conc_code VARCHAR2(8),
        actual_ratio VARCHAR2(8)
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
      dbms_output.put_line('脚本已跳过，因为 MMA_CHK_BASIC_RSLT 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table MMA_CHK_BASIC_RSLT
      is ''误差测试表，
      1）现场检验执行完成后，保存现场检验结果数据信息，本实体主要包括：百分比、负荷类型、比值差、相位差等属性。
      2）通过现场检验业务，由APP录入数据产生记录。
      3）该实体主要由现场检验业务使用。''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_CHK_BASIC_RSLT.CHK_RSLT_ID
      is ''检验结果标识''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_CHK_BASIC_RSLT.TASK_DET_ID
      is ''检验任务明细标识''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_CHK_BASIC_RSLT.POLARITY
      is ''极性''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_CHK_BASIC_RSLT.COMPOUND_ERR
      is ''复合温差''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_CHK_BASIC_RSLT.TEMP
      is ''温度''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_CHK_BASIC_RSLT.HUMIDITY
      is ''湿度''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_CHK_BASIC_RSLT.CONC_CODE
      is ''检验结论：01 未检，02 合格，03 合格,04 不合格；参见视图VW_MMA_CONC_CODE''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_CHK_BASIC_RSLT.ACTUAL_RATIO
      is ''实际电流/电压比''
    ';
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_INDEXES U WHERE u.INDEX_NAME = 'PK_MMA_CHK_BASIC_RSLT';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table MMA_CHK_BASIC_RSLT
      add constraint PK_MMA_CHK_BASIC_RSLT primary key (CHK_RSLT_ID)
      using index
      tablespace mpac_IDX
      pctfree 10
      initrans 2
      maxtrans 255
      storage
      (
      initial 64K
      next 1M
      minextents 1
      maxextents unlimited
      )
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 PK_MMA_CHK_BASIC_RSLT 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Sequences U WHERE u.sequence_name = 'SEQ_MMA_CHK_BASIC_RSLT';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      create sequence SEQ_MMA_CHK_BASIC_RSLT
      minvalue 1
      maxvalue 9999999999999999
      start with 8200000000000000
      increment by 1
      cache 20
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 SEQ_MMA_CHK_BASIC_RSLT 已存在。');
    END IF;
END;
/
prompt
prompt 正在处理纪录编号为 8200000000021386 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Tables U WHERE U.TABLE_NAME = 'MMA_CHK_BASIC_DET_RSLT';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
        create table MMA_CHK_BASIC_DET_RSLT
        (
        chk_det_rslt_id NUMBER(16) not null,
        mma_chk_rslt_id NUMBER(16),
        chk_rslt_id VARCHAR2(32),
        pct VARCHAR2(8),
        load_type VARCHAR2(8),
        ratio_err NUMBER(10,6),
        angle_err NUMBER(10,6)
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
      dbms_output.put_line('脚本已跳过，因为 MMA_CHK_BASIC_DET_RSLT 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table MMA_CHK_BASIC_DET_RSLT
      is ''误差测试明细表，
      1）现场检验执行完成后，保存现场检验结果数据信息，本实体主要包括：百分比、负荷类型、比值差、相位差等属性。
      2）通过现场检验业务，由APP录入数据产生记录。
      3）该实体主要由现场检验业务使用。''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_CHK_BASIC_DET_RSLT.CHK_DET_RSLT_ID
      is ''检验结果明细标识''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_CHK_BASIC_DET_RSLT.MMA_CHK_RSLT_ID
      is ''误差测_检验结果标识''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_CHK_BASIC_DET_RSLT.CHK_RSLT_ID
      is ''检验结果标识''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_CHK_BASIC_DET_RSLT.PCT
      is ''百分比''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_CHK_BASIC_DET_RSLT.LOAD_TYPE
      is ''负荷类型：01 额定负荷，02 下限负荷.参见视图VW_MMA_LOAD_TYPE''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_CHK_BASIC_DET_RSLT.RATIO_ERR
      is ''比值差''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_CHK_BASIC_DET_RSLT.ANGLE_ERR
      is ''相位差''
    ';
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_INDEXES U WHERE u.INDEX_NAME = 'PK_MMA_CHK_BASIC_DET_RSLT';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table MMA_CHK_BASIC_DET_RSLT
      add constraint PK_MMA_CHK_BASIC_DET_RSLT primary key (CHK_DET_RSLT_ID)
      using index
      tablespace mpac_IDX
      pctfree 10
      initrans 2
      maxtrans 255
      storage
      (
      initial 64K
      next 1M
      minextents 1
      maxextents unlimited
      )
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 PK_MMA_CHK_BASIC_DET_RSLT 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Sequences U WHERE u.sequence_name = 'SEQ_MMA_CHK_BASIC_DET_RSLT';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      create sequence SEQ_MMA_CHK_BASIC_DET_RSLT
      minvalue 1
      maxvalue 9999999999999999
      start with 8200000000000000
      increment by 1
      cache 20
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 SEQ_MMA_CHK_BASIC_DET_RSLT 已存在。');
    END IF;
END;
/
prompt
prompt 正在处理纪录编号为 8200000000021390 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Tables U WHERE U.TABLE_NAME = 'MMA_CHK_INDIRECT_RSLT';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
        create table MMA_CHK_INDIRECT_RSLT
        (
        chk_rslt_id NUMBER(16) not null,
        task_det_id NUMBER(16),
        chk_type VARCHAR2(8),
        polarity VARCHAR2(32),
        compound_err NUMBER(10,6),
        fst_rc_code NUMBER(10,6),
        actual_volt_ratio NUMBER(10,6),
        dc NUMBER(10,6),
        short_turns NUMBER(10,6),
        secu_coef NUMBER(10,6),
        temp NUMBER(5),
        humidity NUMBER(5),
        conc_code VARCHAR2(8)
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
      dbms_output.put_line('脚本已跳过，因为 MMA_CHK_INDIRECT_RSLT 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table MMA_CHK_INDIRECT_RSLT
      is ''间接测试表
      现场检验执行环节，执行CT、PT间接测试，保存现场检验结果数据信息，本实体主要包括：温度、湿度、结论等属性。
      2）通过现场检验业务，由APP录入数据产生记录。
      3）该实体主要由现场检验业务使用。''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_CHK_INDIRECT_RSLT.CHK_RSLT_ID
      is ''检验结果标识''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_CHK_INDIRECT_RSLT.TASK_DET_ID
      is ''检验任务明细标识''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_CHK_INDIRECT_RSLT.CHK_TYPE
      is ''现场检验类型：01CT误差测试 02PT误差测试 03Z测试 04Y测试 05CT实际负荷 06CT伏安特性 07PT实际负荷 08PT二次压降 09CT间接法 10PT间接法 11PT励磁特性，参见视图VW_MMA_CHK_TYPE''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_CHK_INDIRECT_RSLT.POLARITY
      is ''极性''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_CHK_INDIRECT_RSLT.COMPOUND_ERR
      is ''复合误差''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_CHK_INDIRECT_RSLT.FST_RC_CODE
      is ''实际一次电流''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_CHK_INDIRECT_RSLT.ACTUAL_VOLT_RATIO
      is ''实际电压比''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_CHK_INDIRECT_RSLT.DC
      is ''直阻''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_CHK_INDIRECT_RSLT.SHORT_TURNS
      is ''短路匝''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_CHK_INDIRECT_RSLT.SECU_COEF
      is ''保安系数''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_CHK_INDIRECT_RSLT.TEMP
      is ''温度''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_CHK_INDIRECT_RSLT.HUMIDITY
      is ''湿度''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_CHK_INDIRECT_RSLT.CONC_CODE
      is ''检验结论：01 未检，02 合格，03 合格,04 不合格；参见视图VW_MMA_CONC_CODE''
    ';
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_INDEXES U WHERE u.INDEX_NAME = 'PK_MMA_CHK_INDIRECT_RSLT';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table MMA_CHK_INDIRECT_RSLT
      add constraint PK_MMA_CHK_INDIRECT_RSLT primary key (CHK_RSLT_ID)
      using index
      tablespace mpac_IDX
      pctfree 10
      initrans 2
      maxtrans 255
      storage
      (
      initial 64K
      next 1M
      minextents 1
      maxextents unlimited
      )
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 PK_MMA_CHK_INDIRECT_RSLT 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Sequences U WHERE u.sequence_name = 'SEQ_MMA_CHK_INDIRECT_RSLT';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      create sequence SEQ_MMA_CHK_INDIRECT_RSLT
      minvalue 1
      maxvalue 9999999999999999
      start with 8200000000000000
      increment by 1
      cache 20
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 SEQ_MMA_CHK_INDIRECT_RSLT 已存在。');
    END IF;
END;
/
prompt
prompt 正在处理纪录编号为 8200000000021391 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Tables U WHERE U.TABLE_NAME = 'MMA_CHK_INDIRECT_DET';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
        create table MMA_CHK_INDIRECT_DET
        (
        chk_det_id NUMBER(16) not null,
        chk_rslt_id NUMBER(16),
        pct NUMBER(10,6),
        load_type VARCHAR2(8),
        ratio_err NUMBER(10,6),
        angle_err NUMBER(10,6)
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
      dbms_output.put_line('脚本已跳过，因为 MMA_CHK_INDIRECT_DET 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table MMA_CHK_INDIRECT_DET
      is ''间接测试明细表，
      1）间接测试完成后，保存间接测试明细信息数据，本实体主要包括：百分比、负荷类型、比值差、相位差等属性。
      2）通过现场检验业务，由APP录入数据产生记录。
      3）该实体主要由现场检验业务使用。''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_CHK_INDIRECT_DET.CHK_DET_ID
      is ''间接测试_检验结果标识''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_CHK_INDIRECT_DET.CHK_RSLT_ID
      is ''检验结果标识''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_CHK_INDIRECT_DET.PCT
      is ''百分比''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_CHK_INDIRECT_DET.LOAD_TYPE
      is ''负荷类型：01 额定负荷，02 下限负荷.参见视图VW_MMA_LOAD_TYP''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_CHK_INDIRECT_DET.RATIO_ERR
      is ''比值差''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_CHK_INDIRECT_DET.ANGLE_ERR
      is ''相位差''
    ';
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_INDEXES U WHERE u.INDEX_NAME = 'PK_MMA_CHK_INDIRECT_DET';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table MMA_CHK_INDIRECT_DET
      add constraint PK_MMA_CHK_INDIRECT_DET primary key (CHK_DET_ID)
      using index
      tablespace mpac_IDX
      pctfree 10
      initrans 2
      maxtrans 255
      storage
      (
      initial 64K
      next 1M
      minextents 1
      maxextents unlimited
      )
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 PK_MMA_CHK_INDIRECT_DET 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Sequences U WHERE u.sequence_name = 'SEQ_MMA_CHK_INDIRECT_DET';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      create sequence SEQ_MMA_CHK_INDIRECT_DET
      minvalue 1
      maxvalue 9999999999999999
      start with 8200000000000000
      increment by 1
      cache 20
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 SEQ_MMA_CHK_INDIRECT_DET 已存在。');
    END IF;
END;
/
prompt
prompt 正在处理纪录编号为 8200000000021396 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Tables U WHERE U.TABLE_NAME = 'MMA_CHK_Z_Y_RSLT';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
        create table MMA_CHK_Z_Y_RSLT
        (
        chk_rslt_id NUMBER(16) not null,
        task_det_id NUMBER(16),
        chk_type VARCHAR2(8),
        pct VARCHAR2(8),
        resi NUMBER(10,6),
        reac NUMBER(10,6),
        conduct NUMBER(10,6),
        susc NUMBER(10,6),
        actual_load NUMBER(10,6)
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
      dbms_output.put_line('脚本已跳过，因为 MMA_CHK_Z_Y_RSLT 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table MMA_CHK_Z_Y_RSLT
      is ''Z测试Y测试结果表，
      1）Z测试、Y测试执行完成后，保存Z测试、Y测试结果数据信息，本实体主要包括：百分比、电阻、电抗、电导、电钠等属性。
      2）通过现场检验业务，通过与校验仪通信产生记录。
      3）该实体主要由Z测试、Y测试业务使用。''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_CHK_Z_Y_RSLT.CHK_RSLT_ID
      is ''检验结果标识''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_CHK_Z_Y_RSLT.TASK_DET_ID
      is ''检验任务明细标识''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_CHK_Z_Y_RSLT.CHK_TYPE
      is ''现场检验类型：01CT误差测试 02PT误差测试 03Z测试 04Y测试 05CT实际负荷 06CT伏安特性 07PT实际负荷 08PT二次压降 09CT间接法 10PT间接法 11PT励磁特性，参见视图VW_MMA_CHK_TYPE''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_CHK_Z_Y_RSLT.PCT
      is ''百分比''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_CHK_Z_Y_RSLT.RESI
      is ''电阻R（Ω）''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_CHK_Z_Y_RSLT.REAC
      is ''电抗X（Ω）''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_CHK_Z_Y_RSLT.CONDUCT
      is ''电导G（mS）''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_CHK_Z_Y_RSLT.SUSC
      is ''电钠B（mS）''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_CHK_Z_Y_RSLT.ACTUAL_LOAD
      is ''实际负荷''
    ';
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_INDEXES U WHERE u.INDEX_NAME = 'PK_MMA_CHK_Z_Y_RSLT';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table MMA_CHK_Z_Y_RSLT
      add constraint PK_MMA_CHK_Z_Y_RSLT primary key (CHK_RSLT_ID)
      using index
      tablespace mpac_IDX
      pctfree 10
      initrans 2
      maxtrans 255
      storage
      (
      initial 64K
      next 1M
      minextents 1
      maxextents unlimited
      )
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 PK_MMA_CHK_Z_Y_RSLT 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Sequences U WHERE u.sequence_name = 'SEQ_MMA_CHK_Z_Y_RSLT';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      create sequence SEQ_MMA_CHK_Z_Y_RSLT
      minvalue 1
      maxvalue 9999999999999999
      start with 8200000000000000
      increment by 1
      cache 20
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 SEQ_MMA_CHK_Z_Y_RSLT 已存在。');
    END IF;
END;
/
prompt
prompt 正在处理纪录编号为 8200000000021397 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Tables U WHERE U.TABLE_NAME = 'MMA_CHK_SND_PRE_RSLT';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
        create table MMA_CHK_SND_PRE_RSLT
        (
        chk_rslt_id NUMBER(16) not null,
        task_det_id NUMBER(16),
        chk_type VARCHAR2(8),
        subs_no VARCHAR2(16),
        subs_name VARCHAR2(256),
        switch_no VARCHAR2(16),
        temp NUMBER(5),
        humidity NUMBER(5),
        conc_code VARCHAR2(8)
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
      dbms_output.put_line('脚本已跳过，因为 MMA_CHK_SND_PRE_RSLT 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table MMA_CHK_SND_PRE_RSLT
      is ''PT二次压降测试结果表，
      1）PT二次压降测试执行完成后，保存测试结果数据信息，本实体主要包括：温度、湿度、结论等属性。
      2）通过现场检验业务，通过与校验仪通信产生记录。
      3）该实体主要由PT二次压降业务使用。''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_CHK_SND_PRE_RSLT.CHK_RSLT_ID
      is ''检验结果标识''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_CHK_SND_PRE_RSLT.TASK_DET_ID
      is ''检验任务明细标识''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_CHK_SND_PRE_RSLT.CHK_TYPE
      is ''现场检验类型：01CT误差测试 02PT误差测试 03Z测试 04Y测试 05CT实际负荷 06CT伏安特性 07PT实际负荷 08PT二次压降 09CT间接法 10PT间接法 11PT励磁特性，参见视图VW_MMA_CHK_TYPE''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_CHK_SND_PRE_RSLT.SUBS_NO
      is ''厂站编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_CHK_SND_PRE_RSLT.SUBS_NAME
      is ''厂站名称''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_CHK_SND_PRE_RSLT.SWITCH_NO
      is ''开关号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_CHK_SND_PRE_RSLT.TEMP
      is ''温度''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_CHK_SND_PRE_RSLT.HUMIDITY
      is ''湿度''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_CHK_SND_PRE_RSLT.CONC_CODE
      is ''检验结论：01 未检，02 合格，03 合格,04 不合格；参见视图VW_MMA_CONC_CODE''
    ';
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_INDEXES U WHERE u.INDEX_NAME = 'PK_MMA_CHK_SND_PRE_RSLT';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table MMA_CHK_SND_PRE_RSLT
      add constraint PK_MMA_CHK_SND_PRE_RSLT primary key (CHK_RSLT_ID)
      using index
      tablespace mpac_IDX
      pctfree 10
      initrans 2
      maxtrans 255
      storage
      (
      initial 64K
      next 1M
      minextents 1
      maxextents unlimited
      )
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 PK_MMA_CHK_SND_PRE_RSLT 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Sequences U WHERE u.sequence_name = 'SEQ_MMA_CHK_SND_PRE_RSLT';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      create sequence SEQ_MMA_CHK_SND_PRE_RSLT
      minvalue 1
      maxvalue 9999999999999999
      start with 8200000000000000
      increment by 1
      cache 20
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 SEQ_MMA_CHK_SND_PRE_RSLT 已存在。');
    END IF;
END;
/
prompt
prompt 正在处理纪录编号为 8200000000021398 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Tables U WHERE U.TABLE_NAME = 'MMA_CHK_SND_PRE_DET';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
        create table MMA_CHK_SND_PRE_DET
        (
        chk_det_id NUMBER(16) not null,
        chk_rslt_id NUMBER(16),
        wiring_mode VARCHAR2(8),
        phase_code VARCHAR2(8),
        ratio_err NUMBER(10,6),
        angle_err NUMBER(10,6),
        snd_pre NUMBER(10,6),
        rv_code NUMBER(10,6)
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
      dbms_output.put_line('脚本已跳过，因为 MMA_CHK_SND_PRE_DET 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table MMA_CHK_SND_PRE_DET
      is ''PT二次压降测试结果明细表，
      1）PT二次压降测试执行完成后，保存测试结果数据信息，本实体主要包括：比值差、相位差等属性。
      2）通过现场检验业务，通过与校验仪通信产生记录。
      3）该实体主要由PT二次压降测试业务使用。''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_CHK_SND_PRE_DET.CHK_DET_ID
      is ''检验结果明细标识''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_CHK_SND_PRE_DET.CHK_RSLT_ID
      is ''检验结果标识''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_CHK_SND_PRE_DET.WIRING_MODE
      is ''接线方式：电能表的接线方式引用国家电网公司营销管理代码类集:5110.84电能表接线方式分类与代码''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_CHK_SND_PRE_DET.PHASE_CODE
      is ''相别，参见视图VW_IT_PHASE，01：A相，02：B相，03：C相，04：AB相，05：AC相，06：BC相，07：AB相+BC相''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_CHK_SND_PRE_DET.RATIO_ERR
      is ''比值差''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_CHK_SND_PRE_DET.ANGLE_ERR
      is ''相位差''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_CHK_SND_PRE_DET.SND_PRE
      is ''二次压降，du(%)''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_CHK_SND_PRE_DET.RV_CODE
      is ''电压''
    ';
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_INDEXES U WHERE u.INDEX_NAME = 'PK_MMA_CHK_SND_PRE_DET';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table MMA_CHK_SND_PRE_DET
      add constraint PK_MMA_CHK_SND_PRE_DET primary key (CHK_DET_ID)
      using index
      tablespace mpac_IDX
      pctfree 10
      initrans 2
      maxtrans 255
      storage
      (
      initial 64K
      next 1M
      minextents 1
      maxextents unlimited
      )
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 PK_MMA_CHK_SND_PRE_DET 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Sequences U WHERE u.sequence_name = 'SEQ_MMA_CHK_SND_PRE_DET';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      create sequence SEQ_MMA_CHK_SND_PRE_DET
      minvalue 1
      maxvalue 9999999999999999
      start with 8200000000000000
      increment by 1
      cache 20
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 SEQ_MMA_CHK_SND_PRE_DET 已存在。');
    END IF;
END;
/
prompt
prompt 正在处理纪录编号为 8200000000021399 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Tables U WHERE U.TABLE_NAME = 'MMA_CHK_VA_EX_RSLT';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
        create table MMA_CHK_VA_EX_RSLT
        (
        chk_rslt_id NUMBER(16) not null,
        task_det_id NUMBER(16),
        chk_type VARCHAR2(8),
        temp NUMBER(5),
        humidity NUMBER(5)
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
      dbms_output.put_line('脚本已跳过，因为 MMA_CHK_VA_EX_RSLT 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table MMA_CHK_VA_EX_RSLT
      is ''伏安特性励磁特性测试结果表，
      1）伏安特性励磁特性测试执行完成后，保存测试结果数据信息，本实体主要包括：温度、湿度等属性。
      2）通过现场检验业务，通过与校验仪通信产生记录。
      3）该实体主要由CT伏安特性、PT励磁特性业务使用。''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_CHK_VA_EX_RSLT.CHK_RSLT_ID
      is ''检验结果标识''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_CHK_VA_EX_RSLT.TASK_DET_ID
      is ''检验任务明细标识''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_CHK_VA_EX_RSLT.CHK_TYPE
      is ''现场检验类型：01CT误差测试 02PT误差测试 03Z测试 04Y测试 05CT实际负荷 06CT伏安特性 07PT实际负荷 08PT二次压降 09CT间接法 10PT间接法 11PT励磁特性，参见视图VW_MMA_CHK_TYPE''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_CHK_VA_EX_RSLT.TEMP
      is ''温度''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_CHK_VA_EX_RSLT.HUMIDITY
      is ''湿度''
    ';
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_INDEXES U WHERE u.INDEX_NAME = 'PK_MMA_CHK_VA_EX_RSLT';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table MMA_CHK_VA_EX_RSLT
      add constraint PK_MMA_CHK_VA_EX_RSLT primary key (CHK_RSLT_ID)
      using index
      tablespace mpac_IDX
      pctfree 10
      initrans 2
      maxtrans 255
      storage
      (
      initial 64K
      next 1M
      minextents 1
      maxextents unlimited
      )
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 PK_MMA_CHK_VA_EX_RSLT 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Sequences U WHERE u.sequence_name = 'SEQ_MMA_CHK_VA_EX_RSLT';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      create sequence SEQ_MMA_CHK_VA_EX_RSLT
      minvalue 1
      maxvalue 9999999999999999
      start with 8200000000000000
      increment by 1
      cache 20
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 SEQ_MMA_CHK_VA_EX_RSLT 已存在。');
    END IF;
END;
/
prompt
prompt 正在处理纪录编号为 8200000000021400 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Tables U WHERE U.TABLE_NAME = 'MMA_CHK_VA_EX_DET';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
        create table MMA_CHK_VA_EX_DET
        (
        chk_det_id NUMBER(16) not null,
        chk_rslt_id NUMBER(16),
        det_order NUMBER(5),
        rv_code NUMBER(10,6),
        rc_code NUMBER(10,6)
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
      dbms_output.put_line('脚本已跳过，因为 MMA_CHK_VA_EX_DET 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table MMA_CHK_VA_EX_DET
      is ''伏安特性励磁特性测试结果明细表，
      1）CT伏安特性、PT励磁特性执行完成后，保存测试结果数据信息，本实体主要包括：电压、电流等属性。
      2）通过现场检验业务，通过与校验仪通信产生记录。
      3）该实体主要由CT伏安特性、PT励磁特性测试业务使用。''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_CHK_VA_EX_DET.CHK_DET_ID
      is ''检验结果明细标识''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_CHK_VA_EX_DET.CHK_RSLT_ID
      is ''检验结果标识''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_CHK_VA_EX_DET.DET_ORDER
      is ''结果序号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_CHK_VA_EX_DET.RV_CODE
      is ''电压''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_CHK_VA_EX_DET.RC_CODE
      is ''电流''
    ';
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_INDEXES U WHERE u.INDEX_NAME = 'PK_MMA_CHK_VA_EX_DET';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table MMA_CHK_VA_EX_DET
      add constraint PK_MMA_CHK_VA_EX_DET primary key (CHK_DET_ID)
      using index
      tablespace mpac_IDX
      pctfree 10
      initrans 2
      maxtrans 255
      storage
      (
      initial 64K
      next 1M
      minextents 1
      maxextents unlimited
      )
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 PK_MMA_CHK_VA_EX_DET 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Sequences U WHERE u.sequence_name = 'SEQ_MMA_CHK_VA_EX_DET';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      create sequence SEQ_MMA_CHK_VA_EX_DET
      minvalue 1
      maxvalue 9999999999999999
      start with 8200000000000000
      increment by 1
      cache 20
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 SEQ_MMA_CHK_VA_EX_DET 已存在。');
    END IF;
END;
/
prompt
prompt 正在处理纪录编号为 8200000000021401 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Tables U WHERE U.TABLE_NAME = 'MMA_CHK_LOAD_RSLT';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
        create table MMA_CHK_LOAD_RSLT
        (
        chk_rslt_id NUMBER(16) not null,
        task_det_id NUMBER(16),
        chk_type VARCHAR2(8),
        temp NUMBER(5),
        humidity NUMBER(5),
        conc_code VARCHAR2(8),
        phase_code VARCHAR2(8),
        resi NUMBER(10,6),
        reac NUMBER(10,6),
        rv_code NUMBER(10,6),
        rc_code NUMBER(10,6),
        actual_load NUMBER(10,6)
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
      dbms_output.put_line('脚本已跳过，因为 MMA_CHK_LOAD_RSLT 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table MMA_CHK_LOAD_RSLT
      is ''实际负荷测试结果表，
      1）CT实际负荷、PT实际负荷执行完成后，保存CT实际负荷、PT实际负荷测试结果数据信息，本实体主要包括：温度、湿度、结论、电阻、电抗等属性。
      2）通过现场检验业务，通过与校验仪通信产生记录。
      3）该实体主要由CT实际负荷、PT实际负荷业务使用。''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_CHK_LOAD_RSLT.CHK_RSLT_ID
      is ''检验结果标识''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_CHK_LOAD_RSLT.TASK_DET_ID
      is ''检验任务明细标识''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_CHK_LOAD_RSLT.CHK_TYPE
      is ''现场检验类型：01CT误差测试 02PT误差测试 03Z测试 04Y测试 05CT实际负荷 06CT伏安特性 07PT实际负荷 08PT二次压降 09CT间接法 10PT间接法 11PT励磁特性，参见视图VW_MMA_CHK_TYPE''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_CHK_LOAD_RSLT.TEMP
      is ''温度''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_CHK_LOAD_RSLT.HUMIDITY
      is ''湿度''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_CHK_LOAD_RSLT.CONC_CODE
      is ''检验结论：01 未检，02 合格，03 合格,04 不合格；参见视图VW_MMA_CONC_CODE''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_CHK_LOAD_RSLT.PHASE_CODE
      is ''相别，参见视图VW_IT_PHASE，01：A相，02：B相，03：C相，04：AB相，05：AC相，06：BC相，07：AB相+BC相''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_CHK_LOAD_RSLT.RESI
      is ''电阻R（Ω）''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_CHK_LOAD_RSLT.REAC
      is ''电抗X（Ω）''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_CHK_LOAD_RSLT.RV_CODE
      is ''电压''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_CHK_LOAD_RSLT.RC_CODE
      is ''电流''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_CHK_LOAD_RSLT.ACTUAL_LOAD
      is ''实际负荷''
    ';
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_INDEXES U WHERE u.INDEX_NAME = 'PK_MMA_CHK_LOAD_RSLT';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table MMA_CHK_LOAD_RSLT
      add constraint PK_MMA_CHK_LOAD_RSLT primary key (CHK_RSLT_ID)
      using index
      tablespace mpac_IDX
      pctfree 10
      initrans 2
      maxtrans 255
      storage
      (
      initial 64K
      next 1M
      minextents 1
      maxextents unlimited
      )
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 PK_MMA_CHK_LOAD_RSLT 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Sequences U WHERE u.sequence_name = 'SEQ_MMA_CHK_LOAD_RSLT';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      create sequence SEQ_MMA_CHK_LOAD_RSLT
      minvalue 1
      maxvalue 9999999999999999
      start with 8200000000000000
      increment by 1
      cache 20
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 SEQ_MMA_CHK_LOAD_RSLT 已存在。');
    END IF;
END;
/
prompt
prompt 正在处理纪录编号为 8200000000021533 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'MMA_CHK_BASIC_RSLT' AND U.COLUMN_NAME='POLARITY';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table MMA_CHK_BASIC_RSLT modify polarity VARCHAR2(32)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 MMA_CHK_BASIC_RSLT.POLARITY 不存在。');
    END IF;
END;
/


set feedback on
set define on
set serveroutput off
--------------------------------------------------

