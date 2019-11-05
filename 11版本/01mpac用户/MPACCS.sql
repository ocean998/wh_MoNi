--------------------------------------------------
set feedback off
set define off
set serveroutput on
--------------------------------------------------

prompt
prompt ���ڴ����¼���Ϊ 8200000000016370 �Ľű�
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
      dbms_output.put_line('�ű�����������Ϊ C_ARRIVE_OTHERDEV_PARA.screen_size �Ѵ��ڡ�');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'C_ARRIVE_OTHERDEV_PARA' AND U.COLUMN_NAME='SCREEN_RESOLUTION';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table C_ARRIVE_OTHERDEV_PARA add screen_resolution VARCHAR2(8)
      ';
    ELSE
      dbms_output.put_line('�ű�����������Ϊ C_ARRIVE_OTHERDEV_PARA.screen_resolution �Ѵ��ڡ�');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'C_ARRIVE_OTHERDEV_PARA' AND U.COLUMN_NAME='CPU';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table C_ARRIVE_OTHERDEV_PARA add cpu NUMBER(8)
      ';
    ELSE
      dbms_output.put_line('�ű�����������Ϊ C_ARRIVE_OTHERDEV_PARA.cpu �Ѵ��ڡ�');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'C_ARRIVE_OTHERDEV_PARA' AND U.COLUMN_NAME='MEMORY';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table C_ARRIVE_OTHERDEV_PARA add memory NUMBER(8)
      ';
    ELSE
      dbms_output.put_line('�ű�����������Ϊ C_ARRIVE_OTHERDEV_PARA.memory �Ѵ��ڡ�');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'C_ARRIVE_OTHERDEV_PARA' AND U.COLUMN_NAME='BLUETOOTH_FLAG';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table C_ARRIVE_OTHERDEV_PARA add bluetooth_flag NUMBER(1)
      ';
    ELSE
      dbms_output.put_line('�ű�����������Ϊ C_ARRIVE_OTHERDEV_PARA.bluetooth_flag �Ѵ��ڡ�');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'C_ARRIVE_OTHERDEV_PARA' AND U.COLUMN_NAME='PHOTO_FLAG';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table C_ARRIVE_OTHERDEV_PARA add photo_flag NUMBER(1)
      ';
    ELSE
      dbms_output.put_line('�ű�����������Ϊ C_ARRIVE_OTHERDEV_PARA.photo_flag �Ѵ��ڡ�');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'C_ARRIVE_OTHERDEV_PARA' AND U.COLUMN_NAME='GPS_FLAG';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table C_ARRIVE_OTHERDEV_PARA add gps_flag NUMBER(1)
      ';
    ELSE
      dbms_output.put_line('�ű�����������Ϊ C_ARRIVE_OTHERDEV_PARA.gps_flag �Ѵ��ڡ�');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'C_ARRIVE_OTHERDEV_PARA' AND U.COLUMN_NAME='SCAN_FLAG';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table C_ARRIVE_OTHERDEV_PARA add scan_flag NUMBER(1)
      ';
    ELSE
      dbms_output.put_line('�ű�����������Ϊ C_ARRIVE_OTHERDEV_PARA.scan_flag �Ѵ��ڡ�');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'C_ARRIVE_OTHERDEV_PARA' AND U.COLUMN_NAME='MTREAD_FLAG';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table C_ARRIVE_OTHERDEV_PARA add mtread_flag NUMBER(1)
      ';
    ELSE
      dbms_output.put_line('�ű�����������Ϊ C_ARRIVE_OTHERDEV_PARA.mtread_flag �Ѵ��ڡ�');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'C_ARRIVE_OTHERDEV_PARA' AND U.COLUMN_NAME='FEECTL_FLAG';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table C_ARRIVE_OTHERDEV_PARA add feectl_flag NUMBER(1)
      ';
    ELSE
      dbms_output.put_line('�ű�����������Ϊ C_ARRIVE_OTHERDEV_PARA.feectl_flag �Ѵ��ڡ�');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'C_ARRIVE_OTHERDEV_PARA' AND U.COLUMN_NAME='FINGERPRINT_FLAG';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table C_ARRIVE_OTHERDEV_PARA add fingerprint_flag NUMBER(1)
      ';
    ELSE
      dbms_output.put_line('�ű�����������Ϊ C_ARRIVE_OTHERDEV_PARA.fingerprint_flag �Ѵ��ڡ�');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'C_ARRIVE_OTHERDEV_PARA' AND U.COLUMN_NAME='PRINT_FLAG';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table C_ARRIVE_OTHERDEV_PARA add print_flag NUMBER(1)
      ';
    ELSE
      dbms_output.put_line('�ű�����������Ϊ C_ARRIVE_OTHERDEV_PARA.print_flag �Ѵ��ڡ�');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'C_ARRIVE_OTHERDEV_PARA' AND U.COLUMN_NAME='RFID_FLAG';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table C_ARRIVE_OTHERDEV_PARA add rfid_flag NUMBER(1)
      ';
    ELSE
      dbms_output.put_line('�ű�����������Ϊ C_ARRIVE_OTHERDEV_PARA.rfid_flag �Ѵ��ڡ�');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column C_ARRIVE_OTHERDEV_PARA.screen_size
      is ''��Ļ�ߴ磬VW_HANDHELD_SCREEN_SIZE''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column C_ARRIVE_OTHERDEV_PARA.screen_resolution
      is ''��Ļ�ֱ���, �ο�VW_HANDHELD_SCREEN_RESOLUTION''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column C_ARRIVE_OTHERDEV_PARA.cpu
      is ''CPU''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column C_ARRIVE_OTHERDEV_PARA.memory
      is ''�ڴ�''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column C_ARRIVE_OTHERDEV_PARA.bluetooth_flag
      is ''�Ƿ�֧������, VW_YESNO_FLAG''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column C_ARRIVE_OTHERDEV_PARA.photo_flag
      is ''�Ƿ�֧������, VW_YESNO_FLAG''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column C_ARRIVE_OTHERDEV_PARA.gps_flag
      is ''�Ƿ�֧��GPS��λ, VW_YESNO_FLAG''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column C_ARRIVE_OTHERDEV_PARA.scan_flag
      is ''�Ƿ�֧�ֺ���ɨ��, VW_YESNO_FLAG''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column C_ARRIVE_OTHERDEV_PARA.mtread_flag
      is ''�Ƿ�֧�ֺ��Ⳮ��, VW_YESNO_FLAG''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column C_ARRIVE_OTHERDEV_PARA.feectl_flag
      is ''�Ƿ�֧�ַѿ�, VW_YESNO_FLAG''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column C_ARRIVE_OTHERDEV_PARA.fingerprint_flag
      is ''�Ƿ�֧��ָ��, VW_YESNO_FLAG''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column C_ARRIVE_OTHERDEV_PARA.print_flag
      is ''�Ƿ�֧��ֱ�Ӵ�ӡ, VW_YESNO_FLAG''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column C_ARRIVE_OTHERDEV_PARA.rfid_flag
      is ''�Ƿ�֧��RFID��Ƶɨ��, VW_YESNO_FLAG''
    ';
END;
/
prompt
prompt ���ڴ����¼���Ϊ 8200000000016375 �Ľű�
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
      dbms_output.put_line('�ű�����������Ϊ D_HANDHELD_DEVICE.screen_size �Ѵ��ڡ�');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'D_HANDHELD_DEVICE' AND U.COLUMN_NAME='SCREEN_RESOLUTION';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table D_HANDHELD_DEVICE add screen_resolution VARCHAR2(8)
      ';
    ELSE
      dbms_output.put_line('�ű�����������Ϊ D_HANDHELD_DEVICE.screen_resolution �Ѵ��ڡ�');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'D_HANDHELD_DEVICE' AND U.COLUMN_NAME='CPU';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table D_HANDHELD_DEVICE add cpu NUMBER(8)
      ';
    ELSE
      dbms_output.put_line('�ű�����������Ϊ D_HANDHELD_DEVICE.cpu �Ѵ��ڡ�');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'D_HANDHELD_DEVICE' AND U.COLUMN_NAME='MEMORY';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table D_HANDHELD_DEVICE add memory NUMBER(8)
      ';
    ELSE
      dbms_output.put_line('�ű�����������Ϊ D_HANDHELD_DEVICE.memory �Ѵ��ڡ�');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'D_HANDHELD_DEVICE' AND U.COLUMN_NAME='BLUETOOTH_FLAG';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table D_HANDHELD_DEVICE add bluetooth_flag NUMBER(1)
      ';
    ELSE
      dbms_output.put_line('�ű�����������Ϊ D_HANDHELD_DEVICE.bluetooth_flag �Ѵ��ڡ�');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'D_HANDHELD_DEVICE' AND U.COLUMN_NAME='PHOTO_FLAG';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table D_HANDHELD_DEVICE add photo_flag NUMBER(1)
      ';
    ELSE
      dbms_output.put_line('�ű�����������Ϊ D_HANDHELD_DEVICE.photo_flag �Ѵ��ڡ�');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'D_HANDHELD_DEVICE' AND U.COLUMN_NAME='GPS_FLAG';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table D_HANDHELD_DEVICE add gps_flag NUMBER(1)
      ';
    ELSE
      dbms_output.put_line('�ű�����������Ϊ D_HANDHELD_DEVICE.gps_flag �Ѵ��ڡ�');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'D_HANDHELD_DEVICE' AND U.COLUMN_NAME='SCAN_FLAG';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table D_HANDHELD_DEVICE add scan_flag NUMBER(1)
      ';
    ELSE
      dbms_output.put_line('�ű�����������Ϊ D_HANDHELD_DEVICE.scan_flag �Ѵ��ڡ�');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'D_HANDHELD_DEVICE' AND U.COLUMN_NAME='MTREAD_FLAG';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table D_HANDHELD_DEVICE add mtread_flag NUMBER(1)
      ';
    ELSE
      dbms_output.put_line('�ű�����������Ϊ D_HANDHELD_DEVICE.mtread_flag �Ѵ��ڡ�');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'D_HANDHELD_DEVICE' AND U.COLUMN_NAME='FEECTL_FLAG';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table D_HANDHELD_DEVICE add feectl_flag NUMBER(1)
      ';
    ELSE
      dbms_output.put_line('�ű�����������Ϊ D_HANDHELD_DEVICE.feectl_flag �Ѵ��ڡ�');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'D_HANDHELD_DEVICE' AND U.COLUMN_NAME='FINGERPRINT_FLAG';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table D_HANDHELD_DEVICE add fingerprint_flag NUMBER(1)
      ';
    ELSE
      dbms_output.put_line('�ű�����������Ϊ D_HANDHELD_DEVICE.fingerprint_flag �Ѵ��ڡ�');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'D_HANDHELD_DEVICE' AND U.COLUMN_NAME='PRINT_FLAG';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table D_HANDHELD_DEVICE add print_flag NUMBER(1)
      ';
    ELSE
      dbms_output.put_line('�ű�����������Ϊ D_HANDHELD_DEVICE.print_flag �Ѵ��ڡ�');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'D_HANDHELD_DEVICE' AND U.COLUMN_NAME='RFID_FLAG';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table D_HANDHELD_DEVICE add rfid_flag NUMBER(1)
      ';
    ELSE
      dbms_output.put_line('�ű�����������Ϊ D_HANDHELD_DEVICE.rfid_flag �Ѵ��ڡ�');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column D_HANDHELD_DEVICE.screen_size
      is ''��Ļ�ߴ�, VW_HANDHELD_SCREEN_SIZE''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_HANDHELD_DEVICE.screen_resolution
      is ''��Ļ�ֱ���, VW_HANDHELD_SCREEN_RESOLUTION''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_HANDHELD_DEVICE.cpu
      is ''CPU''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_HANDHELD_DEVICE.memory
      is ''�ڴ�''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_HANDHELD_DEVICE.bluetooth_flag
      is ''�Ƿ�֧������, VW_YESNO_FLAG''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_HANDHELD_DEVICE.photo_flag
      is ''�Ƿ�֧������, VW_YESNO_FLAG''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_HANDHELD_DEVICE.gps_flag
      is ''�Ƿ�֧��GPS��λ, VW_YESNO_FLAG''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_HANDHELD_DEVICE.scan_flag
      is ''�Ƿ�֧�ֺ���ɨ��, VW_YESNO_FLAG''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_HANDHELD_DEVICE.mtread_flag
      is ''�Ƿ�֧�ֺ��Ⳮ��, VW_YESNO_FLAG''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_HANDHELD_DEVICE.feectl_flag
      is ''�Ƿ�֧�ַѿ�, VW_YESNO_FLAG''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_HANDHELD_DEVICE.fingerprint_flag
      is ''�Ƿ�֧��ָ��, VW_YESNO_FLAG''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_HANDHELD_DEVICE.print_flag
      is ''�Ƿ�֧��ֱ�Ӵ�ӡ, VW_YESNO_FLAG''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_HANDHELD_DEVICE.rfid_flag
      is ''�Ƿ�֧��RFID��Ƶɨ��, VW_YESNO_FLAG''
    ';
END;
/
prompt
prompt ���ڴ����¼���Ϊ 8200000000016740 �Ľű�
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
      dbms_output.put_line('�ű�����������Ϊ U_DIST_TASK.is_active_dist �Ѵ��ڡ�');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column U_DIST_TASK.is_active_dist
      is ''�Ƿ��������ͣ�1���ǣ�0����''
    ';
END;
/
prompt
prompt ���ڴ����¼���Ϊ 8200000000017217 �Ľű�
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
      dbms_output.put_line('�ű�����������Ϊ T_HPLCID_CERT_INFO.write_date �Ѵ��ڡ�');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column T_HPLCID_CERT_INFO.write_date
      is ''д��ʱ��''
    ';
END;
/
prompt
prompt ���ڴ����¼���Ϊ 8200000000017286 �Ľű�
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
prompt ���ڴ����¼���Ϊ 8200000000017330 �Ľű�
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
      dbms_output.put_line('�ű�����������Ϊ C_ARRIVE_CABINET_PARA.CABINET_SIZE �����ڡ�');
    END IF;
END;
/
prompt
prompt ���ڴ����¼���Ϊ 8200000000017344 �Ľű�
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
      dbms_output.put_line('�ű�����������Ϊ D_METERING_CABINET.CABINET_SIZE �����ڡ�');
    END IF;
END;
/
prompt
prompt ���ڴ����¼���Ϊ 8200000000017370 �Ľű�
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
      dbms_output.put_line('�ű�����������Ϊ A_BAR_CODE_DOC.asset_type_big �Ѵ��ڡ�');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'A_BAR_CODE_DOC' AND U.COLUMN_NAME='ASSET_TYPE_SMALL';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table A_BAR_CODE_DOC add asset_type_small VARCHAR2(8)
      ';
    ELSE
      dbms_output.put_line('�ű�����������Ϊ A_BAR_CODE_DOC.asset_type_small �Ѵ��ڡ�');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column A_BAR_CODE_DOC.asset_type_big
      is ''�ʲ����ʹ��ࣨVW_ASSET_TYPE_BIG��''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column A_BAR_CODE_DOC.asset_type_small
      is ''�ʲ�����С�ࣨVW_ASSET_TYPE_SMALL��''
    ';
END;
/
prompt
prompt ���ڴ����¼���Ϊ 8200000000017371 �Ľű�
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
      dbms_output.put_line('�ű�����������Ϊ A_CODE_SEND_DETAIL.bid_batch_no �Ѵ��ڡ�');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column A_CODE_SEND_DETAIL.bid_batch_no
      is ''�б�����''
    ';
END;
/
prompt
prompt ���ڴ����¼���Ϊ 8200000000017388 �Ľű�
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
      dbms_output.put_line('�ű�����������Ϊ A_BAR_CODE_DOC.model_code �Ѵ��ڡ�');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'A_BAR_CODE_DOC' AND U.COLUMN_NAME='VOLT_CODE';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table A_BAR_CODE_DOC add volt_code VARCHAR2(8)
      ';
    ELSE
      dbms_output.put_line('�ű�����������Ϊ A_BAR_CODE_DOC.volt_code �Ѵ��ڡ�');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'A_BAR_CODE_DOC' AND U.COLUMN_NAME='RATED_CURRENT';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table A_BAR_CODE_DOC add rated_current VARCHAR2(8)
      ';
    ELSE
      dbms_output.put_line('�ű�����������Ϊ A_BAR_CODE_DOC.rated_current �Ѵ��ڡ�');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'A_BAR_CODE_DOC' AND U.COLUMN_NAME='CHIP_MANUFACTURER';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table A_BAR_CODE_DOC add chip_manufacturer VARCHAR2(8)
      ';
    ELSE
      dbms_output.put_line('�ű�����������Ϊ A_BAR_CODE_DOC.chip_manufacturer �Ѵ��ڡ�');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'A_BAR_CODE_DOC' AND U.COLUMN_NAME='BID_BATCH_NO';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table A_BAR_CODE_DOC add bid_batch_no VARCHAR2(32)
      ';
    ELSE
      dbms_output.put_line('�ű�����������Ϊ A_BAR_CODE_DOC.bid_batch_no �Ѵ��ڡ�');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'A_BAR_CODE_DOC' AND U.COLUMN_NAME='UNIT';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table A_BAR_CODE_DOC add unit NUMBER(8)
      ';
    ELSE
      dbms_output.put_line('�ű�����������Ϊ A_BAR_CODE_DOC.unit �Ѵ��ڡ�');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'A_BAR_CODE_DOC' AND U.COLUMN_NAME='BID_NUM';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table A_BAR_CODE_DOC add bid_num NUMBER(15)
      ';
    ELSE
      dbms_output.put_line('�ű�����������Ϊ A_BAR_CODE_DOC.bid_num �Ѵ��ڡ�');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'A_BAR_CODE_DOC' AND U.COLUMN_NAME='SPEC_CODE';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table A_BAR_CODE_DOC add spec_code VARCHAR2(8)
      ';
    ELSE
      dbms_output.put_line('�ű�����������Ϊ A_BAR_CODE_DOC.spec_code �Ѵ��ڡ�');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'A_BAR_CODE_DOC' AND U.COLUMN_NAME='ORG_NUM';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table A_BAR_CODE_DOC add org_num VARCHAR2(8)
      ';
    ELSE
      dbms_output.put_line('�ű�����������Ϊ A_BAR_CODE_DOC.org_num �Ѵ��ڡ�');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'A_BAR_CODE_DOC' AND U.COLUMN_NAME='YEAR_CODE';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table A_BAR_CODE_DOC add year_code VARCHAR2(8)
      ';
    ELSE
      dbms_output.put_line('�ű�����������Ϊ A_BAR_CODE_DOC.year_code �Ѵ��ڡ�');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'A_BAR_CODE_DOC' AND U.COLUMN_NAME='START_NUM';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table A_BAR_CODE_DOC add start_num VARCHAR2(22)
      ';
    ELSE
      dbms_output.put_line('�ű�����������Ϊ A_BAR_CODE_DOC.start_num �Ѵ��ڡ�');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'A_BAR_CODE_DOC' AND U.COLUMN_NAME='END_NUM';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table A_BAR_CODE_DOC add end_num VARCHAR2(22)
      ';
    ELSE
      dbms_output.put_line('�ű�����������Ϊ A_BAR_CODE_DOC.end_num �Ѵ��ڡ�');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column A_BAR_CODE_DOC.model_code
      is ''�ͺ�''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column A_BAR_CODE_DOC.volt_code
      is ''��ѹ''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column A_BAR_CODE_DOC.rated_current
      is ''����''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column A_BAR_CODE_DOC.chip_manufacturer
      is ''�ز�оƬ����''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column A_BAR_CODE_DOC.bid_batch_no
      is ''�б�����''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column A_BAR_CODE_DOC.unit
      is ''������λ''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column A_BAR_CODE_DOC.bid_num
      is ''�б�����''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column A_BAR_CODE_DOC.spec_code
      is ''�豸���''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column A_BAR_CODE_DOC.org_num
      is ''��λ����''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column A_BAR_CODE_DOC.year_code
      is ''��ݣ�VW_YEAR_CODE��''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column A_BAR_CODE_DOC.start_num
      is ''��ʼ���к�''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column A_BAR_CODE_DOC.end_num
      is ''�������к�''
    ';
END;
/
prompt
prompt ���ڴ����¼���Ϊ 8200000000017398 �Ľű�
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
      dbms_output.put_line('�ű�����������Ϊ A_BAR_CODE_DOC.UNIT �����ڡ�');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'A_BAR_CODE_DOC' AND U.COLUMN_NAME='START_NUM';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table A_BAR_CODE_DOC modify start_num NUMBER(22)
      ';
    ELSE
      dbms_output.put_line('�ű�����������Ϊ A_BAR_CODE_DOC.START_NUM �����ڡ�');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'A_BAR_CODE_DOC' AND U.COLUMN_NAME='END_NUM';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table A_BAR_CODE_DOC modify end_num NUMBER(22)
      ';
    ELSE
      dbms_output.put_line('�ű�����������Ϊ A_BAR_CODE_DOC.END_NUM �����ڡ�');
    END IF;
END;
/
prompt
prompt ���ڴ����¼���Ϊ 8200000000017419 �Ľű�
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
      is ''Ψһ��ʶ''
    ';      
    ELSE
      dbms_output.put_line('�ű�����������Ϊ SM_APPLY_INFO_HLJ �Ѵ��ڡ�');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table SM_APPLY_INFO_HLJ
      is ''ϵͳ��ά������Ϣ��''
    ';

    EXECUTE IMMEDIATE
    '
      comment on column SM_APPLY_INFO_HLJ.APPLY_NO
      is ''���뵥���''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SM_APPLY_INFO_HLJ.APPLY_DATE
      is ''��������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SM_APPLY_INFO_HLJ.ORG_NO
      is ''���뵥λ''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SM_APPLY_INFO_HLJ.BUSI_TYPE
      is ''ҵ�����VW_SM_BUSI_TYPE_HLJ''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SM_APPLY_INFO_HLJ.APPLY_FIXED_PHONE
      is ''�̶��绰''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SM_APPLY_INFO_HLJ.APPLY_CELL_PHONE
      is ''�ƶ��绰''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SM_APPLY_INFO_HLJ.SUPPORTOR_CELL_PHONE
      is ''����֧����Ա�绰''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SM_APPLY_INFO_HLJ.EMERG_DEGREE
      is ''�����̶ȣ�VW_SM_EMERGENCY_HLJ''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SM_APPLY_INFO_HLJ.PROBLEM_DESC
      is ''��������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SM_APPLY_INFO_HLJ.PROBLEM_REASON
      is ''����ԭ��''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SM_APPLY_INFO_HLJ.IS_FORE_PROCESS
      is ''�Ƿ�ͨ��ǰ̨������ɣ�0�� 1��''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SM_APPLY_INFO_HLJ.PROCESSOR_NO
      is ''������Ա''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SM_APPLY_INFO_HLJ.PROCESS_DATE
      is ''��������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SM_APPLY_INFO_HLJ.PROCESS_RLT
      is ''������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SM_APPLY_INFO_HLJ.APPLY_STATUS
      is ''״̬��VW_SM_STATUS_HLJ''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SM_APPLY_INFO_HLJ.APPLICANT_NO
      is ''������Ա''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SM_APPLY_INFO_HLJ.BUSI_PROF
      is ''ҵ��רҵ��VW_SM_PROFESSION_HLJ��01 ����''
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
      dbms_output.put_line('�ű�����������Ϊ PK_SM_APPLY_INFO_HLJ �Ѵ��ڡ�');
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
      dbms_output.put_line('�ű�����������Ϊ SEQ_SM_APPLY_INFO_HLJ �Ѵ��ڡ�');
    END IF;
END;
/
prompt
prompt ���ڴ����¼���Ϊ 8200000000017477 �Ľű�
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
      dbms_output.put_line('�ű�����������Ϊ D_WH_CHANGE_RECORD.pa_record_id �Ѵ��ڡ�');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column D_WH_CHANGE_RECORD.pa_record_id
      is ''�ϼ���ʶ�����������ʽΪ03ɾ��ʱ��Ч�����浱ǰ��λ���ϼ���λ�����¼��ʶCH_RECORD_ID''
    ';
END;
/
prompt
prompt ���ڴ����¼���Ϊ 8200000000017485 �Ľű�
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    EXECUTE IMMEDIATE
    '
      comment on column SM_APPLY_INFO_HLJ.apply_no
      is ''Ψһ��ʶ''
    ';
END;
/

-- Add/modify columns 
alter table SM_APPLY_INFO_HLJ modify apply_no not null;
-- Create/Recreate indexes 
create index pk_SM_APPLY_INFO_HLJ on SM_APPLY_INFO_HLJ (apply_no);

prompt
prompt ���ڴ����¼���Ϊ 8200000000017489 �Ľű�
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
      dbms_output.put_line('�ű�����������Ϊ SM_APPLY_INFO_HLJ.DET_ID �����ڡ�');
    END IF;
END;
/
prompt
prompt ���ڴ����¼���Ϊ 8200000000017513 �Ľű�
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
      dbms_output.put_line('�ű�����������Ϊ SM_APPLY_INFO_HLJ.file_path �Ѵ��ڡ�');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column SM_APPLY_INFO_HLJ.file_path
      is ''�ļ�·��''
    ';
END;
/
prompt
prompt ���ڴ����¼���Ϊ 8200000000017543 �Ľű�
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
      dbms_output.put_line('�ű�����������Ϊ T_REPICKDDETECT_NUM_REC.PR_ORG �����ڡ�');
    END IF;
END;
/
prompt
prompt ���ڴ����¼���Ϊ 8200000000017568 �Ľű�
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
      dbms_output.put_line('�ű�����������Ϊ JLZX_DAY_BATCH_DATA �Ѵ��ڡ�');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table JLZX_DAY_BATCH_DATA
      is ''��������ÿ�����ݣ����գ�''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column JLZX_DAY_BATCH_DATA.batch_type
      is ''�����������ͣ�IO_WH_SORT_CODEΪ���������Ϊ���������DETECT_TYPEΪ�춨�����''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column JLZX_DAY_BATCH_DATA.sort_code
      is ''��BATCH_TYPE����ʹ�ã���IO_WH_SORT_CODE��10���������ͳ��⣬��DETECT_TYPE��05������ȫ������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column JLZX_DAY_BATCH_DATA.list_no
      is ''Ĭ����д�������ţ���SORT_CODEΪ00������д���ع�˾����''
    ';
END;
/
prompt
prompt ���ڴ����¼���Ϊ 8200000000017572 �Ľű�
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
      dbms_output.put_line('�ű�����������Ϊ JLZX_DAY_DATA �Ѵ��ڡ�');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table JLZX_DAY_DATA
      is ''��������ÿ������''
    ';
END;
/
prompt
prompt ���ڴ����¼���Ϊ 8200000000017573 �Ľű�
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
      dbms_output.put_line('�ű�����������Ϊ JLZX_DAY_FORM �Ѵ��ڡ�');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table JLZX_DAY_FORM
      is ''��������ÿ�ձ�''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column JLZX_DAY_FORM.bid_batch_no
      is ''�б����κ�''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column JLZX_DAY_FORM.bid_batch_name
      is ''�б���������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column JLZX_DAY_FORM.equip_categ
      is ''�豸���''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column JLZX_DAY_FORM.rcv_id
      is ''��������ID''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column JLZX_DAY_FORM.arrive_batch_no
      is ''�������κ�''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column JLZX_DAY_FORM.qty
      is ''������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column JLZX_DAY_FORM.equip_categ_name
      is ''�豸�������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column JLZX_DAY_FORM.wirring_mode
      is ''���߷�ʽ''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column JLZX_DAY_FORM.manufacturer
      is ''���豸���ұ���''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column JLZX_DAY_FORM.partner_name
      is ''���豸��������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column JLZX_DAY_FORM.type_code
      is ''���豸����''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column JLZX_DAY_FORM.meter_type
      is ''���豸����''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column JLZX_DAY_FORM.carrier_wave_chip_manufacturer
      is ''ģ�鳧�ұ���''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column JLZX_DAY_FORM.chip_manufacturer
      is ''ģ�鳧������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column JLZX_DAY_FORM.status_name
      is ''����״̬''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column JLZX_DAY_FORM.zz_wh_num
      is ''�������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column JLZX_DAY_FORM.ypbd_num
      is ''��Ʒ�ȶ�����''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column JLZX_DAY_FORM.xnsy_num
      is ''������������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column JLZX_DAY_FORM.cj_num
      is ''�������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column JLZX_DAY_FORM.all_detect_num
      is ''ȫ������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column JLZX_DAY_FORM.dist_city_num
      is ''�����͵㼰��������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column JLZX_DAY_FORM.dist_num_and_left
      is ''����������ʣ������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column JLZX_DAY_FORM.comm_mode
      is ''ͨѶ��ʽ''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column JLZX_DAY_FORM.comm_chip_name
      is ''HPLCģ���оƬ����''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column JLZX_DAY_FORM.usage_type
      is ''ʱ��''
    ';
END;
/
prompt
prompt ���ڴ����¼���Ϊ 8200000000017579 �Ľű�
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
      dbms_output.put_line('�ű�����������Ϊ D_CHG_WH_TASK.store_loc_no �Ѵ��ڡ�');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column D_CHG_WH_TASK.store_loc_no
      is ''��λ��ţ��봢λ��λ��Ź���,�����λ����ԡ�|��ƴ��''
    ';
END;
/
prompt
prompt ���ڴ����¼���Ϊ 8200000000017580 �Ľű�
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
      dbms_output.put_line('�ű�����������Ϊ D_IO_TASK.store_loc_no �Ѵ��ڡ�');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column D_IO_TASK.store_loc_no
      is ''��λ��ţ��봢λ��λ��Ź���,�����λ����ԡ�|��ƴ��''
    ';
END;
/
prompt
prompt ���ڴ����¼���Ϊ 8200000000017594 �Ľű�
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
      dbms_output.put_line('�ű�����������Ϊ SM_APPLY_INFO_HLJ.PROCESSOR_NO �����ڡ�');
    END IF;
END;
/
prompt
prompt ���ڴ����¼���Ϊ 8200000000017704 �Ľű�
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    EXECUTE IMMEDIATE
    '
      comment on column B_ERP_CHANGE_CODE_ZJ.scheme_type
      is ''ת�뷽�����01:erp���Ϻţ�02:�������ң�03��ģ��erp���Ϻ�''
    ';
END;
/
prompt
prompt ���ڴ����¼���Ϊ 8200000000017727 �Ľű�
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
      and name IN (''��У��'',''�ϸ��ڿ�'',''������'',''������'',''�¹�'',''������'',
      ''��ʩ��'',''������'',''��У�飨���г�죩'',''��������'',''���ϸ��ڿ�'',''���ϸ������'')
      UNION ALL
      SELECT ''09'' equip_categ,
      VALUE code,
      NAME code_name
      FROM p_code_std
      WHERE code_type = ''tmnlStatus''
      and name IN (''��У��'',''�ϸ��ڿ�'',''������'',''������'',''�¹�'',''������'',
      ''��ʩ��'',''������'',''��У�飨���г�죩'',''��������'',''���ϸ��ڿ�'',''���ϸ������'')
      UNION ALL
      SELECT ''02'' equip_categ,
      VALUE code,
      NAME code_name
      FROM p_code_std
      WHERE code_type = ''itStatus''
      and name IN (''���춨'',''�ϸ��ڿ�'',''������'',''������'',''�¹�'',''������'',
      ''��ʩ��'',''������'',''��У�飨���г�죩'',''��������'',''���ϸ��ڿ�'',''���ϸ������'')
      UNION ALL
      SELECT ''03'' equip_categ,
      VALUE code,
      NAME code_name
      FROM p_code_std
      WHERE code_type = ''itStatus''
      and name IN (''���춨'',''�ϸ��ڿ�'',''������'',''������'',''�¹�'',''������'',
      ''��ʩ��'',''������'',''��У�飨���г�죩'',''��������'',''���ϸ��ڿ�'',''���ϸ������'')
      UNION ALL
      SELECT ''04'' equip_categ,
      VALUE code,
      NAME code_name
      FROM p_code_std
      WHERE code_type = ''itStatus''
      and name IN (''���춨'',''�ϸ��ڿ�'',''������'',''������'',''�¹�'',''������'',
      ''��ʩ��'',''������'',''��У�飨���г�죩'',''��������'',''���ϸ��ڿ�'',''���ϸ������'')
      UNION ALL
      SELECT ''05'' equip_categ,
      VALUE code,
      NAME code_name
      FROM p_code_std
      WHERE code_type = ''cabinetStatus''
      and name IN (''������'')
      UNION ALL
      SELECT ''54'' equip_categ,
      VALUE code,
      NAME code_name
      FROM p_code_std
      WHERE code_type = ''commStatus''
      and name IN (''�¹�'',''�ϸ��ڿ�'',''������'',''������'',''������'',''���ϸ�'',''������'',
      ''������'',''���ϸ������'')
    ';
END;
/
prompt
prompt ���ڴ����¼���Ϊ 8200000000017771 �Ľű�
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
      dbms_output.put_line('�ű�����������Ϊ C_ARRIVE_PARA_SET �Ѵ��ڡ�');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table C_ARRIVE_PARA_SET
      is ''�����������ñ�''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column C_ARRIVE_PARA_SET.EQUIP_CATEG
      is ''�豸���VW_EQUIP_CATEG''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column C_ARRIVE_PARA_SET.COL_NAME
      is ''�ֶ�����''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column C_ARRIVE_PARA_SET.CHN_NAME
      is ''չʾ����''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column C_ARRIVE_PARA_SET.ENG_NAME
      is ''��������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column C_ARRIVE_PARA_SET.DISP_ORDER
      is ''չʾ����''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column C_ARRIVE_PARA_SET.DISP_TYPE
      is ''չʾ��ʽ��VW_PARA_DISP_TYPE''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column C_ARRIVE_PARA_SET.IS_MUST
      is ''�Ƿ���1�ǡ�0��Ĭ�ϣ�''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column C_ARRIVE_PARA_SET.IS_FK
      is ''�Ƿ����豸������1�ǡ�0��Ĭ�ϣ�''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column C_ARRIVE_PARA_SET.IS_EXPORT
      is ''�Ƿ�ģ�嵼����1�ǡ�0��Ĭ�ϣ�''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column C_ARRIVE_PARA_SET.IS_FK_EXPORT
      is ''�����豸�����Ƿ�ģ�嵼����1�ǡ�0��Ĭ�ϣ�''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column C_ARRIVE_PARA_SET.VIEW_NAME
      is ''��ͼ����''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column C_ARRIVE_PARA_SET.COLLECTION
      is ''��ͼ��ʾ����''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column C_ARRIVE_PARA_SET.DEFAULT_VAL
      is ''Ĭ��ֵ''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column C_ARRIVE_PARA_SET.INPUT_CHECK
      is ''����У�飬VW_PARA_INPUT_CHECK''
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
      dbms_output.put_line('�ű�����������Ϊ SEQ_C_ARRIVE_PARA_SET �Ѵ��ڡ�');
    END IF;
END;
/
prompt
prompt ���ڴ����¼���Ϊ 8200000000017807 �Ľű�
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
      dbms_output.put_line('�ű�����������Ϊ JLZX_DAY_FORM.need_dist_num �Ѵ��ڡ�');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'JLZX_DAY_FORM' AND U.COLUMN_NAME='DIST_NUM';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table JLZX_DAY_FORM add dist_num NUMBER(6)
      ';
    ELSE
      dbms_output.put_line('�ű�����������Ϊ JLZX_DAY_FORM.dist_num �Ѵ��ڡ�');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'JLZX_DAY_FORM' AND U.COLUMN_NAME='LEFT_DIST_NUM';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table JLZX_DAY_FORM add left_dist_num NUMBER(6)
      ';
    ELSE
      dbms_output.put_line('�ű�����������Ϊ JLZX_DAY_FORM.left_dist_num �Ѵ��ڡ�');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column JLZX_DAY_FORM.need_dist_num
      is ''����������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column JLZX_DAY_FORM.dist_num
      is ''����������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column JLZX_DAY_FORM.left_dist_num
      is ''ʣ��δ��������''
    ';
END;
/
prompt
prompt ���ڴ����¼���Ϊ 8200000000017830 �Ľű�
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
      dbms_output.put_line('�ű�����������Ϊ AH_DIST_RSLT �Ѵ��ڡ�');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table AH_DIST_RSLT
      is ''����(�洢���ã�
      PKG_SUPLLY_MANAGE)''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column AH_DIST_RSLT.recv_org_no
      is ''���ͽ��յ�λ����''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column AH_DIST_RSLT.org_name
      is ''���ͽ��յ�λ����''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column AH_DIST_RSLT.equip_code
      is ''������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column AH_DIST_RSLT.equip_desc
      is ''��������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column AH_DIST_RSLT.manufacturer
      is ''�豸�������Ҵ���''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column AH_DIST_RSLT.manu_name
      is ''�豸������������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column AH_DIST_RSLT.bid_batch_no
      is ''�б����κ�''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column AH_DIST_RSLT.bid_batch_name
      is ''�б���������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column AH_DIST_RSLT.arrive_batch_no
      is ''�������κ�''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column AH_DIST_RSLT.equip_categ
      is ''�豸���''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column AH_DIST_RSLT.volt_code
      is ''��ѹ����''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column AH_DIST_RSLT.volt_name
      is ''��ѹ''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column AH_DIST_RSLT.current_code
      is ''��������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column AH_DIST_RSLT.current_name
      is ''����''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column AH_DIST_RSLT.carrier_wave_chip_manufacturer
      is ''�ز�оƬ���Ҵ���''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column AH_DIST_RSLT.chip_name
      is ''�ز�оƬ��������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column AH_DIST_RSLT.ap_pre_level_code
      is ''�й�׼ȷ�ȵȼ�����''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column AH_DIST_RSLT.ap_pre_level_name
      is ''�й�׼ȷ�ȵȼ�''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column AH_DIST_RSLT.rc_ratio_code
      is ''������ȴ���''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column AH_DIST_RSLT.rc_ratio_name
      is ''�������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column AH_DIST_RSLT.io_task_no
      is ''���ͳ������񵥺�''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column AH_DIST_RSLT.dist_num
      is ''������������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column AH_DIST_RSLT.io_task_date
      is ''���ͳ���ʱ��''
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
      dbms_output.put_line('�ű�����������Ϊ SEQ_AH_DIST_RSLT �Ѵ��ڡ�');
    END IF;
END;
/
prompt
prompt ���ڴ����¼���Ϊ 8200000000017920 �Ľű�
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
      dbms_output.put_line('�ű�����������Ϊ T_BOX_IMPORT �Ѵ��ڡ�');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table T_BOX_IMPORT
      is ''�豸����ϵ�����''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_BOX_IMPORT.record_id
      is ''��ʵ���¼��Ψһ��ʶ''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_BOX_IMPORT.io_flag
      is ''��ת���Ƿ񽨵���0��1��''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_BOX_IMPORT.equip_categ
      is ''�豸���''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_BOX_IMPORT.bar_code
      is ''�豸����''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_BOX_IMPORT.box_bar_code
      is ''��ת������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_BOX_IMPORT.record_no
      is ''ÿ�ε����������񵥺�''
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
      dbms_output.put_line('�ű�����������Ϊ PK_T_BOX_IMPORT �Ѵ��ڡ�');
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
      dbms_output.put_line('�ű�����������Ϊ SEQ_T_BOX_IMPORT �Ѵ��ڡ�');
    END IF;
END;
/
prompt
prompt ���ڴ����¼���Ϊ 8200000000017938 �Ľű�
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
      dbms_output.put_line('�ű�����������Ϊ T_DETECT_CP_RSLT �Ѵ��ڡ�');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table T_DETECT_CP_RSLT
      is ''���׮����ۺϽ��۱�''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_DETECT_CP_RSLT.DETECT_READ_ID
      is ''�춨У׼��¼��ʶ''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_DETECT_CP_RSLT.DETECT_TASK_NO
      is ''�춨������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_DETECT_CP_RSLT.SYS_NO
      is ''ϵͳ���''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_DETECT_CP_RSLT.DETECT_EQUIP_NO
      is ''�춨��̨���''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_DETECT_CP_RSLT.BAR_CODE
      is ''�豸������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_DETECT_CP_RSLT.DETECT_DATE
      is ''�춨ʱ��''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_DETECT_CP_RSLT.CONC_CODE
      is ''�춨�ܽ���''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_DETECT_CP_RSLT.INTUIT_CONC_CODE
      is ''��ۼ�����''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_DETECT_CP_RSLT.INSIDE_CONC_CODE
      is ''�ڲ�������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_DETECT_CP_RSLT.WIRE_CONC_CODE
      is ''���¹������������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_DETECT_CP_RSLT.SIGN_CONC_CODE
      is ''��־������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_DETECT_CP_RSLT.COMPOSE_CONC_CODE
      is ''�������ɼ�����''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_DETECT_CP_RSLT.CONNECT_CONC_CODE
      is ''���ģʽ�����ӷ�ʽ������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_DETECT_CP_RSLT.LANDING_CONC_CODE
      is ''�ӵ�Ҫ���������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_DETECT_CP_RSLT.CHARGE_CONC_CODE
      is ''��繦�ܽ���''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_DETECT_CP_RSLT.COMM_CONC_CODE
      is ''ͨ�Ź����������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_DETECT_CP_RSLT.DISPLAY_CONC_CODE
      is ''��ʾ�����������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_DETECT_CP_RSLT.IN_CONC_CODE
      is ''���빦���������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_DETECT_CP_RSLT.ELEC_CONC_CODE
      is ''��������������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_DETECT_CP_RSLT.CLEARANCE_CREEPAGE_CONC_CODE
      is ''������϶����������������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_DETECT_CP_RSLT.ONLOAD_DECILITER_CONC_CODE
      is ''���طֺϵ�·�������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_DETECT_CP_RSLT.SCRAM_PROTECT_CONC_CODE
      is ''��ͣ�����������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_DETECT_CP_RSLT.SCRAM_FUNCTION_CONC_CODE
      is ''��ͣ���ܽ���''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_DETECT_CP_RSLT.PWM_CONC_CODE
      is ''PWM���ʵ����������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_DETECT_CP_RSLT.POWEROFF_CONC_CODE
      is ''���籣�湦���������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_DETECT_CP_RSLT.THEFT_PREVENT_CONC_CODE
      is ''���������������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_DETECT_CP_RSLT.CONTACT_CONC_CODE
      is ''ֱ�ӽӴ������������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_DETECT_CP_RSLT.VOLT_LOSS_CONC_CODE
      is ''�����ѹ��ʧ�������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_DETECT_CP_RSLT.INSULATED_RESISTANCE_CONC_CODE
      is ''��Ե�����������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_DETECT_CP_RSLT.MAXOUT_POWER_CONC_CODE
      is ''���㹦������������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_DETECT_CP_RSLT.CURRENT_PRECISION_CONC_CODE
      is ''���������������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_DETECT_CP_RSLT.VOLT_PRECISION_CONC_CODE
      is ''��ѹ�����������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_DETECT_CP_RSLT.EFFICIENCY_CONC_CODE
      is ''Ч���������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_DETECT_CP_RSLT.PF_CONC_CODE
      is ''���������������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_DETECT_CP_RSLT.VOLT_RIPPLE_CONC_CODE
      is ''��ѹ�Ʋ������������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_DETECT_CP_RSLT.VOLT_LIMIT_CONC_CODE
      is ''��ѹ�����������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_DETECT_CP_RSLT.CURRENT_LIMIT_CONC_CODE
      is ''���������������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_DETECT_CP_RSLT.LOWVOLT_AUXILIARY_CONC_CODE
      is ''��ѹ������Դ�������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_DETECT_CP_RSLT.STANDBY_POWER_CONC_CODE
      is ''���������������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_DETECT_CP_RSLT.POWER_ALLOC_CONC_CODE
      is ''��̬���ʷ��书���������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_DETECT_CP_RSLT.IN_OVERVOLT_CONC_CODE
      is ''�����ѹ�����������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_DETECT_CP_RSLT.IN_UNDERVOLT_CONC_CODE
      is ''����Ƿѹ�����������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_DETECT_CP_RSLT.SCP_CONC_CODE
      is ''�����·�����������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_DETECT_CP_RSLT.LEAKAGE_PROTECT_CONC_CODE
      is ''©�籣���������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_DETECT_CP_RSLT.CONTROL_VOLTLIMIT_CONC_CODE
      is ''���Ƶ�����ѹ��ֵ���Խ���''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_DETECT_CP_RSLT.CP_BREAK_CONC_CODE
      is ''CP���߲��Խ���''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_DETECT_CP_RSLT.CP_LANDING_CONC_CODE
      is ''CP�ӵز��Խ���''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_DETECT_CP_RSLT.OUT_OVERCURRENT_CONC_CODE
      is ''������������������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_DETECT_CP_RSLT.DISCONNECT_SWITCH_CONC_CODE
      is ''�Ͽ�����S2�������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_DETECT_CP_RSLT.AC_PROTECT_LANDING_CONC_CODE
      is ''�����ӵ������Բ��Խ��ۣ�������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_DETECT_CP_RSLT.DC_PROTECT_LANDING_CONC_CODE
      is ''�����ӵ������Բ��Խ��ۣ�ֱ����''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_DETECT_CP_RSLT.OPEN_PROTECT_CONC_CODE
      is ''���ű����������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_DETECT_CP_RSLT.IN_IMPULSECURRENT_CONC_CODE
      is ''�����������������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_DETECT_CP_RSLT.OUT_IMPULSECURRENT_CONC_CODE
      is ''�����������������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_DETECT_CP_RSLT.BATTERY_REVERSE_CONC_CODE
      is ''���ط����������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_DETECT_CP_RSLT.AC_CONNECT_CONFIRM_CONC_CODE
      is ''����ȷ�ϲ��Խ��ۣ�������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_DETECT_CP_RSLT.DC_CONNECT_CONFIRM_CONC_CODE
      is ''����ȷ�ϲ��Խ��ۣ�ֱ����''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_DETECT_CP_RSLT.SELFEXAM_CONC_CODE
      is ''�Լ�׶β��Խ���''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_DETECT_CP_RSLT.CHARGE_READY_CONC_CODE
      is ''���׼���������Խ���''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_DETECT_CP_RSLT.CHARGE_TEST_CONC_CODE
      is ''���׶β��Խ���''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_DETECT_CP_RSLT.CHARGE_END_CONC_CODE
      is ''��������������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_DETECT_CP_RSLT.CHARGE_SEQUENCE_CONC_CODE
      is ''������ӿ���ʱ����Խ���''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_DETECT_CP_RSLT.PRECHARGE_CONC_CODE
      is ''Ԥ��繦���������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_DETECT_CP_RSLT.LOCK_CONC_CODE
      is ''��ֹ�����������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_DETECT_CP_RSLT.PLUG_LOCK_CONC_CODE
      is ''����ͷ��ֹ���ܲ��Խ���''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_DETECT_CP_RSLT.SIGNAL_BREAK_CONC_CODE
      is ''���Ӽ���źŶϿ��������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_DETECT_CP_RSLT.INSULATE_ABNORMAL_CONC_CODE
      is ''��Ե�쳣�������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_DETECT_CP_RSLT.DCOUTPUT_SHORT_CONC_CODE
      is ''ֱ�������·��·��⹦���������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_DETECT_CP_RSLT.COMM_BREAK_CONC_CODE
      is ''ͨ���ж��������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_DETECT_CP_RSLT.BATTERYVOLT_OVER_CONC_CODE
      is ''���ص�ѹ����ͨ�ű��ĵ�ѹֵ�������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_DETECT_CP_RSLT.BATTERYVOLT_OUTRANGE_CONC_CODE
      is ''���ص�ѹ����������Χ�������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_DETECT_CP_RSLT.BATTERY_DUALPROTECT_CONC_CODE
      is ''���ض��ر��������������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_DETECT_CP_RSLT.MAXVOLT_MISMATCH_CONC_CODE
      is ''��������������ܵ�ѹ��ƥ���������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_DETECT_CP_RSLT.POWERUP_MESSAGE_CONC_CODE
      is ''��ѹ�����ϵ缰������ֽ׶α��Ĳ��Խ���''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_DETECT_CP_RSLT.CHARGECONFIG_MEAASGE_CONC_CODE
      is ''������ý׶α��Ĳ��Խ���''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_DETECT_CP_RSLT.CHARGE_MEAASGE_CONC_CODE
      is ''���׶α��Ĳ��Խ���''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_DETECT_CP_RSLT.CHARGEEND_MEAASGE_CONC_CODE
      is ''�������׶α��Ĳ��Խ���''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_DETECT_CP_RSLT.MEASUREMENT_ERROR_CONC_CODE
      is ''��������������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_DETECT_CP_RSLT.INDICATIVE_ERROR_CONC_CODE
      is ''����ʾֵ������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_DETECT_CP_RSLT.MEASURE_MONEYERR_CONC_CODE
      is ''�������ѽ��������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_DETECT_CP_RSLT.MEASURE_CLOCKERR_CONC_CODE
      is ''����ʱ��������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_DETECT_CP_RSLT.MEASURE_FUNCEXAM_CONC_CODE
      is ''�������ܼ�����''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_DETECT_CP_RSLT.MEASURE_EVENTSTROAGE_CONC_CODE
      is ''�����¼��洢����''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_DETECT_CP_RSLT.MEASURE_DATASTROAGE_CONC_CODE
      is ''�������ݴ洢����''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_DETECT_CP_RSLT.MEASURE_RECEIPT_CONC_CODE
      is ''������ִ����''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_DETECT_CP_RSLT.MEASURE_DISPLAY_CONC_CODE
      is ''������ʾ����''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_DETECT_CP_RSLT.MEASURE_SEAL_CONC_CODE
      is ''������ӡ����''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_DETECT_CP_RSLT.MEASURE_UNIFORMITY_CONC_CODE
      is ''����һ���Խ���''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_DETECT_CP_RSLT.TEMP
      is ''�¶�''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_DETECT_CP_RSLT.HUMIDITY
      is ''ʪ��''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_DETECT_CP_RSLT.DETECT_PERSON
      is ''�춨��Ա''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_DETECT_CP_RSLT.AUDIT_PERSON
      is ''�����Ա''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_DETECT_CP_RSLT.WRITE_DATE
      is ''�춨ϵͳд��ʱ��''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_DETECT_CP_RSLT.HANDLE_FLAG
      is ''ƽ̨������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_DETECT_CP_RSLT.HANDLE_DATE
      is ''ƽ̨����ʱ��''
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
      dbms_output.put_line('�ű�����������Ϊ PK_T_DETECT_CP_RSLT �Ѵ��ڡ�');
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
      dbms_output.put_line('�ű�����������Ϊ SEQ_T_DETECT_CP_RSLT �Ѵ��ڡ�');
    END IF;
END;
/
prompt
prompt ���ڴ����¼���Ϊ 8200000000017982 �Ľű�
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
      dbms_output.put_line('�ű�����������Ϊ T_INTUIT_CP_CONC �Ѵ��ڡ�');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table T_INTUIT_CP_CONC
      is ''���׮��ۼ����۱�''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_INTUIT_CP_CONC.READ_ID
      is ''�ֶ�Ψһ��ʶ''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_INTUIT_CP_CONC.DETECT_TASK_NO
      is ''�춨������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_INTUIT_CP_CONC.EQUIP_CATEG
      is ''�豸���''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_INTUIT_CP_CONC.SYS_NO
      is ''ϵͳ���''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_INTUIT_CP_CONC.DETECT_EQUIP_NO
      is ''�춨��̨���''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_INTUIT_CP_CONC.DETECT_UNIT_NO
      is ''�춨��Ԫ���''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_INTUIT_CP_CONC.BAR_CODE
      is ''�豸������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_INTUIT_CP_CONC.DETECT_DATE
      is ''�춨ʱ��''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_INTUIT_CP_CONC.PARA_INDEX
      is ''�춨���''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_INTUIT_CP_CONC.DETECT_ITEM_POINT
      is ''�춨�����''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_INTUIT_CP_CONC.IS_VALID
      is ''��Ч��־''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_INTUIT_CP_CONC.DETECT_CONTENT
      is ''������Ŀ VW_CP_CONC_CODE''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_INTUIT_CP_CONC.CONC_CODE
      is ''������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_INTUIT_CP_CONC.WRITE_DATE
      is ''�춨ϵͳд��ʱ��''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_INTUIT_CP_CONC.HANDLE_FLAG
      is ''������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_INTUIT_CP_CONC.HANDLE_DATE
      is ''����ʱ��''
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
      dbms_output.put_line('�ű�����������Ϊ PK_T_INTUIT_CP_CONC �Ѵ��ڡ�');
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
      dbms_output.put_line('�ű�����������Ϊ SEQ_T_INTUIT_CP_CONC �Ѵ��ڡ�');
    END IF;
END;
/
prompt
prompt ���ڴ����¼���Ϊ 8200000000017984 �Ľű�
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
      dbms_output.put_line('�ű�����������Ϊ T_INSIDE_CP_CONC �Ѵ��ڡ�');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table T_INSIDE_CP_CONC
      is ''���׮�ڲ������۱�''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_INSIDE_CP_CONC.READ_ID
      is ''�ֶ�Ψһ��ʶ''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_INSIDE_CP_CONC.DETECT_TASK_NO
      is ''�춨������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_INSIDE_CP_CONC.EQUIP_CATEG
      is ''�豸���''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_INSIDE_CP_CONC.SYS_NO
      is ''ϵͳ���''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_INSIDE_CP_CONC.DETECT_EQUIP_NO
      is ''�춨��̨���''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_INSIDE_CP_CONC.DETECT_UNIT_NO
      is ''�춨��Ԫ���''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_INSIDE_CP_CONC.BAR_CODE
      is ''�豸������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_INSIDE_CP_CONC.DETECT_DATE
      is ''�춨ʱ��''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_INSIDE_CP_CONC.PARA_INDEX
      is ''�춨���''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_INSIDE_CP_CONC.DETECT_ITEM_POINT
      is ''�춨�����''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_INSIDE_CP_CONC.IS_VALID
      is ''��Ч��־''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_INSIDE_CP_CONC.DETECT_CONTENT
      is ''������Ŀ VW_INSIDE_CONC_CODE''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_INSIDE_CP_CONC.CONC_CODE
      is ''������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_INSIDE_CP_CONC.WRITE_DATE
      is ''�춨ϵͳд��ʱ��''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_INSIDE_CP_CONC.HANDLE_FLAG
      is ''������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_INSIDE_CP_CONC.HANDLE_DATE
      is ''����ʱ��''
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
      dbms_output.put_line('�ű�����������Ϊ PK_T_INSIDE_CP_CONC �Ѵ��ڡ�');
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
      dbms_output.put_line('�ű�����������Ϊ SEQ_T_INSIDE_CP_CONC �Ѵ��ڡ�');
    END IF;
END;
/
prompt
prompt ���ڴ����¼���Ϊ 8200000000017986 �Ľű�
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
prompt ���ڴ����¼���Ϊ 8200000000017989 �Ľű�
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
      dbms_output.put_line('�ű�����������Ϊ T_WIRE_CP_CONC �Ѵ��ڡ�');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table T_WIRE_CP_CONC
      is ''���׮���¹�����������۱�''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_WIRE_CP_CONC.READ_ID
      is ''�ֶ�Ψһ��ʶ''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_WIRE_CP_CONC.DETECT_TASK_NO
      is ''�춨������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_WIRE_CP_CONC.EQUIP_CATEG
      is ''�豸���''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_WIRE_CP_CONC.SYS_NO
      is ''ϵͳ���''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_WIRE_CP_CONC.DETECT_EQUIP_NO
      is ''�춨��̨���''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_WIRE_CP_CONC.DETECT_UNIT_NO
      is ''�춨��Ԫ���''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_WIRE_CP_CONC.BAR_CODE
      is ''�豸������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_WIRE_CP_CONC.DETECT_DATE
      is ''�춨ʱ��''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_WIRE_CP_CONC.PARA_INDEX
      is ''�춨���''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_WIRE_CP_CONC.DETECT_ITEM_POINT
      is ''�춨�����''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_WIRE_CP_CONC.IS_VALID
      is ''��Ч��־''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_WIRE_CP_CONC.DETECT_CONTENT
      is ''������Ŀ VW_WIRE_CONC_CODE''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_WIRE_CP_CONC.CONC_CODE
      is ''������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_WIRE_CP_CONC.WRITE_DATE
      is ''�춨ϵͳд��ʱ��''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_WIRE_CP_CONC.HANDLE_FLAG
      is ''������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_WIRE_CP_CONC.HANDLE_DATE
      is ''����ʱ��''
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
      dbms_output.put_line('�ű�����������Ϊ PK_T_WIRE_CP_CONC �Ѵ��ڡ�');
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
      dbms_output.put_line('�ű�����������Ϊ SEQ_T_WIRE_CP_CONC �Ѵ��ڡ�');
    END IF;
END;
/
prompt
prompt ���ڴ����¼���Ϊ 8200000000017991 �Ľű�
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
      dbms_output.put_line('�ű�����������Ϊ T_SIGN_CP_CONC �Ѵ��ڡ�');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table T_SIGN_CP_CONC
      is ''���׮��־�����۱�''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_SIGN_CP_CONC.READ_ID
      is ''�ֶ�Ψһ��ʶ''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_SIGN_CP_CONC.DETECT_TASK_NO
      is ''�춨������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_SIGN_CP_CONC.EQUIP_CATEG
      is ''�豸���''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_SIGN_CP_CONC.SYS_NO
      is ''ϵͳ���''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_SIGN_CP_CONC.DETECT_EQUIP_NO
      is ''�춨��̨���''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_SIGN_CP_CONC.DETECT_UNIT_NO
      is ''�춨��Ԫ���''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_SIGN_CP_CONC.BAR_CODE
      is ''�豸������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_SIGN_CP_CONC.DETECT_DATE
      is ''�춨ʱ��''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_SIGN_CP_CONC.PARA_INDEX
      is ''�춨���''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_SIGN_CP_CONC.DETECT_ITEM_POINT
      is ''�춨�����''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_SIGN_CP_CONC.IS_VALID
      is ''��Ч��־''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_SIGN_CP_CONC.DETECT_CONTENT
      is ''������Ŀ VW_SIGN_CONC_CODE''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_SIGN_CP_CONC.CONC_CODE
      is ''������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_SIGN_CP_CONC.WRITE_DATE
      is ''�춨ϵͳд��ʱ��''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_SIGN_CP_CONC.HANDLE_FLAG
      is ''������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_SIGN_CP_CONC.HANDLE_DATE
      is ''����ʱ��''
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
      dbms_output.put_line('�ű�����������Ϊ PK_T_SIGN_CP_CONC �Ѵ��ڡ�');
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
      dbms_output.put_line('�ű�����������Ϊ SEQ_T_SIGN_CP_CONC �Ѵ��ڡ�');
    END IF;
END;
/
prompt
prompt ���ڴ����¼���Ϊ 8200000000017996 �Ľű�
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
      dbms_output.put_line('�ű�����������Ϊ T_COMPOSE_CP_CONC �Ѵ��ڡ�');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table T_COMPOSE_CP_CONC
      is ''���׮�������ɼ����۱�''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_COMPOSE_CP_CONC.READ_ID
      is ''�ֶ�Ψһ��ʶ''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_COMPOSE_CP_CONC.DETECT_TASK_NO
      is ''�춨������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_COMPOSE_CP_CONC.EQUIP_CATEG
      is ''�豸���''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_COMPOSE_CP_CONC.SYS_NO
      is ''ϵͳ���''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_COMPOSE_CP_CONC.DETECT_EQUIP_NO
      is ''�춨��̨���''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_COMPOSE_CP_CONC.DETECT_UNIT_NO
      is ''�춨��Ԫ���''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_COMPOSE_CP_CONC.BAR_CODE
      is ''�豸������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_COMPOSE_CP_CONC.DETECT_DATE
      is ''�춨ʱ��''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_COMPOSE_CP_CONC.PARA_INDEX
      is ''�춨���''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_COMPOSE_CP_CONC.DETECT_ITEM_POINT
      is ''�춨�����''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_COMPOSE_CP_CONC.IS_VALID
      is ''��Ч��־''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_COMPOSE_CP_CONC.DETECT_CONTENT
      is ''������Ŀ VW_COMPOSE_CONC_CODE''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_COMPOSE_CP_CONC.CONC_CODE
      is ''������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_COMPOSE_CP_CONC.WRITE_DATE
      is ''�춨ϵͳд��ʱ��''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_COMPOSE_CP_CONC.HANDLE_FLAG
      is ''������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_COMPOSE_CP_CONC.HANDLE_DATE
      is ''����ʱ��''
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
      dbms_output.put_line('�ű�����������Ϊ PK_T_COMPOSE_CP_CONC �Ѵ��ڡ�');
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
      dbms_output.put_line('�ű�����������Ϊ SEQ_T_COMPOSE_CP_CONC �Ѵ��ڡ�');
    END IF;
END;
/
prompt
prompt ���ڴ����¼���Ϊ 8200000000017998 �Ľű�
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
      dbms_output.put_line('�ű�����������Ϊ T_CONNECT_CP_CONC �Ѵ��ڡ�');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table T_CONNECT_CP_CONC
      is ''���׮���ģʽ�����ӷ�ʽ�����۱�''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_CONNECT_CP_CONC.READ_ID
      is ''�ֶ�Ψһ��ʶ''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_CONNECT_CP_CONC.DETECT_TASK_NO
      is ''�춨������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_CONNECT_CP_CONC.EQUIP_CATEG
      is ''�豸���''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_CONNECT_CP_CONC.SYS_NO
      is ''ϵͳ���''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_CONNECT_CP_CONC.DETECT_EQUIP_NO
      is ''�춨��̨���''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_CONNECT_CP_CONC.DETECT_UNIT_NO
      is ''�춨��Ԫ���''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_CONNECT_CP_CONC.BAR_CODE
      is ''�豸������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_CONNECT_CP_CONC.DETECT_DATE
      is ''�춨ʱ��''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_CONNECT_CP_CONC.PARA_INDEX
      is ''�춨���''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_CONNECT_CP_CONC.DETECT_ITEM_POINT
      is ''�춨�����''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_CONNECT_CP_CONC.IS_VALID
      is ''��Ч��־''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_CONNECT_CP_CONC.DETECT_CONTENT
      is ''������Ŀ VW_CONNECT_CONC_CODE''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_CONNECT_CP_CONC.CONC_CODE
      is ''������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_CONNECT_CP_CONC.WRITE_DATE
      is ''�춨ϵͳд��ʱ��''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_CONNECT_CP_CONC.HANDLE_FLAG
      is ''������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_CONNECT_CP_CONC.HANDLE_DATE
      is ''����ʱ��''
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
      dbms_output.put_line('�ű�����������Ϊ PK_T_CONNECT_CP_CONC �Ѵ��ڡ�');
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
      dbms_output.put_line('�ű�����������Ϊ SEQ_T_CONNECT_CP_CONC �Ѵ��ڡ�');
    END IF;
END;
/
prompt
prompt ���ڴ����¼���Ϊ 8200000000017999 �Ľű�
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
      dbms_output.put_line('�ű�����������Ϊ T_DISPLAY_CP_CONC �Ѵ��ڡ�');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table T_DISPLAY_CP_CONC
      is ''���׮��ʾ���ܼ����۱�''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_DISPLAY_CP_CONC.READ_ID
      is ''�ֶ�Ψһ��ʶ''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_DISPLAY_CP_CONC.DETECT_TASK_NO
      is ''�춨������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_DISPLAY_CP_CONC.EQUIP_CATEG
      is ''�豸���''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_DISPLAY_CP_CONC.SYS_NO
      is ''ϵͳ���''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_DISPLAY_CP_CONC.DETECT_EQUIP_NO
      is ''�춨��̨���''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_DISPLAY_CP_CONC.DETECT_UNIT_NO
      is ''�춨��Ԫ���''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_DISPLAY_CP_CONC.BAR_CODE
      is ''�豸������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_DISPLAY_CP_CONC.DETECT_DATE
      is ''�춨ʱ��''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_DISPLAY_CP_CONC.PARA_INDEX
      is ''�춨���''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_DISPLAY_CP_CONC.DETECT_ITEM_POINT
      is ''�춨�����''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_DISPLAY_CP_CONC.IS_VALID
      is ''��Ч��־''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_DISPLAY_CP_CONC.DETECT_CONTENT
      is ''������Ŀ VW_DISPLAY_CONC_CODE''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_DISPLAY_CP_CONC.CONC_CODE
      is ''������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_DISPLAY_CP_CONC.WRITE_DATE
      is ''�춨ϵͳд��ʱ��''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_DISPLAY_CP_CONC.HANDLE_FLAG
      is ''������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_DISPLAY_CP_CONC.HANDLE_DATE
      is ''����ʱ��''
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
      dbms_output.put_line('�ű�����������Ϊ PK_T_DISPLAY_CP_CONC �Ѵ��ڡ�');
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
      dbms_output.put_line('�ű�����������Ϊ SEQ_T_DISPLAY_CP_CONC �Ѵ��ڡ�');
    END IF;
END;
/
prompt
prompt ���ڴ����¼���Ϊ 8200000000018002 �Ľű�
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
      dbms_output.put_line('�ű�����������Ϊ T_IN_CP_CONC �Ѵ��ڡ�');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table T_IN_CP_CONC
      is ''���׮���빦��������۱�''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_IN_CP_CONC.READ_ID
      is ''�ֶ�Ψһ��ʶ''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_IN_CP_CONC.DETECT_TASK_NO
      is ''�춨������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_IN_CP_CONC.EQUIP_CATEG
      is ''�豸���''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_IN_CP_CONC.SYS_NO
      is ''ϵͳ���''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_IN_CP_CONC.DETECT_EQUIP_NO
      is ''�춨��̨���''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_IN_CP_CONC.DETECT_UNIT_NO
      is ''�춨��Ԫ���''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_IN_CP_CONC.BAR_CODE
      is ''�豸������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_IN_CP_CONC.DETECT_DATE
      is ''�춨ʱ��''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_IN_CP_CONC.PORT_CODE
      is ''ǹ�ڱ��''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_IN_CP_CONC.PARA_INDEX
      is ''�춨���''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_IN_CP_CONC.DETECT_ITEM_POINT
      is ''�춨�����''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_IN_CP_CONC.IS_VALID
      is ''��Ч��־''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_IN_CP_CONC.DETECT_CONTENT
      is ''������Ŀ VW_IN_CONC_CODE''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_IN_CP_CONC.CONC_CODE
      is ''������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_IN_CP_CONC.WRITE_DATE
      is ''�춨ϵͳд��ʱ��''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_IN_CP_CONC.HANDLE_FLAG
      is ''������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_IN_CP_CONC.HANDLE_DATE
      is ''����ʱ��''
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
      dbms_output.put_line('�ű�����������Ϊ PK_T_IN_CP_CONC �Ѵ��ڡ�');
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
      dbms_output.put_line('�ű�����������Ϊ SEQ_T_IN_CP_CONC �Ѵ��ڡ�');
    END IF;
END;
/
prompt
prompt ���ڴ����¼���Ϊ 8200000000018003 �Ľű�
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
      dbms_output.put_line('�ű�����������Ϊ T_LANDING_CP_CONC �Ѵ��ڡ�');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table T_LANDING_CP_CONC
      is ''���׮�ӵ�Ҫ��������۱�''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_LANDING_CP_CONC.READ_ID
      is ''�ֶ�Ψһ��ʶ''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_LANDING_CP_CONC.DETECT_TASK_NO
      is ''�춨������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_LANDING_CP_CONC.EQUIP_CATEG
      is ''�豸���''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_LANDING_CP_CONC.SYS_NO
      is ''ϵͳ���''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_LANDING_CP_CONC.DETECT_EQUIP_NO
      is ''�춨��̨���''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_LANDING_CP_CONC.DETECT_UNIT_NO
      is ''�춨��Ԫ���''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_LANDING_CP_CONC.BAR_CODE
      is ''�豸������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_LANDING_CP_CONC.DETECT_DATE
      is ''�춨ʱ��''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_LANDING_CP_CONC.PARA_INDEX
      is ''�춨���''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_LANDING_CP_CONC.DETECT_ITEM_POINT
      is ''�춨�����''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_LANDING_CP_CONC.IS_VALID
      is ''��Ч��־''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_LANDING_CP_CONC.DETECT_CONTENT
      is ''������Ŀ VW_LANDING_CONC_CODE''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_LANDING_CP_CONC.CONC_CODE
      is ''������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_LANDING_CP_CONC.WRITE_DATE
      is ''�춨ϵͳд��ʱ��''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_LANDING_CP_CONC.HANDLE_FLAG
      is ''������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_LANDING_CP_CONC.HANDLE_DATE
      is ''����ʱ��''
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
      dbms_output.put_line('�ű�����������Ϊ PK_T_LANDING_CP_CONC �Ѵ��ڡ�');
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
      dbms_output.put_line('�ű�����������Ϊ SEQ_T_LANDING_CP_CONC �Ѵ��ڡ�');
    END IF;
END;
/
prompt
prompt ���ڴ����¼���Ϊ 8200000000018004 �Ľű�
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
      dbms_output.put_line('�ű�����������Ϊ T_CLEARANCE_CREEPAGE_CP_CONC �Ѵ��ڡ�');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table T_CLEARANCE_CREEPAGE_CP_CONC
      is ''���׮������϶���������������۱�''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_CLEARANCE_CREEPAGE_CP_CONC.READ_ID
      is ''�ֶ�Ψһ��ʶ''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_CLEARANCE_CREEPAGE_CP_CONC.DETECT_TASK_NO
      is ''�춨������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_CLEARANCE_CREEPAGE_CP_CONC.EQUIP_CATEG
      is ''�豸���''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_CLEARANCE_CREEPAGE_CP_CONC.SYS_NO
      is ''ϵͳ���''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_CLEARANCE_CREEPAGE_CP_CONC.DETECT_EQUIP_NO
      is ''�춨��̨���''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_CLEARANCE_CREEPAGE_CP_CONC.DETECT_UNIT_NO
      is ''�춨��Ԫ���''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_CLEARANCE_CREEPAGE_CP_CONC.BAR_CODE
      is ''�豸������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_CLEARANCE_CREEPAGE_CP_CONC.DETECT_DATE
      is ''�춨ʱ��''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_CLEARANCE_CREEPAGE_CP_CONC.PARA_INDEX
      is ''�춨���''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_CLEARANCE_CREEPAGE_CP_CONC.DETECT_ITEM_POINT
      is ''�춨�����''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_CLEARANCE_CREEPAGE_CP_CONC.IS_VALID
      is ''��Ч��־''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_CLEARANCE_CREEPAGE_CP_CONC.MEASURE_POS
      is ''����λ�� VW_CLEARANCE_MEASURE_POS''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_CLEARANCE_CREEPAGE_CP_CONC.ELEC_CLEARANCE
      is ''������϶��mm��''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_CLEARANCE_CREEPAGE_CP_CONC.CREEPAGE_DIS
      is ''������루mm��''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_CLEARANCE_CREEPAGE_CP_CONC.CONC_CODE
      is ''������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_CLEARANCE_CREEPAGE_CP_CONC.WRITE_DATE
      is ''�춨ϵͳд��ʱ��''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_CLEARANCE_CREEPAGE_CP_CONC.HANDLE_FLAG
      is ''������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_CLEARANCE_CREEPAGE_CP_CONC.HANDLE_DATE
      is ''����ʱ��''
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
      dbms_output.put_line('�ű�����������Ϊ PK_T_CC_CP_CONC �Ѵ��ڡ�');
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
      dbms_output.put_line('�ű�����������Ϊ SEQ_CLEARANCE_CREEPAGE_CP_CONC �Ѵ��ڡ�');
    END IF;
END;
/
prompt
prompt ���ڴ����¼���Ϊ 8200000000018005 �Ľű�
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
      dbms_output.put_line('�ű�����������Ϊ T_INSU_RESIST_CP_CONC �Ѵ��ڡ�');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table T_INSU_RESIST_CP_CONC
      is ''���׮��Ե����������۱�''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_INSU_RESIST_CP_CONC.READ_ID
      is ''�ֶ�Ψһ��ʶ''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_INSU_RESIST_CP_CONC.DETECT_TASK_NO
      is ''�춨������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_INSU_RESIST_CP_CONC.EQUIP_CATEG
      is ''�豸���''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_INSU_RESIST_CP_CONC.SYS_NO
      is ''ϵͳ���''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_INSU_RESIST_CP_CONC.DETECT_EQUIP_NO
      is ''�춨��̨���''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_INSU_RESIST_CP_CONC.DETECT_UNIT_NO
      is ''�춨��Ԫ���''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_INSU_RESIST_CP_CONC.BAR_CODE
      is ''�豸������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_INSU_RESIST_CP_CONC.DETECT_DATE
      is ''�춨ʱ��''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_INSU_RESIST_CP_CONC.PORT_CODE
      is ''ǹ�ڱ��''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_INSU_RESIST_CP_CONC.PARA_INDEX
      is ''�춨���''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_INSU_RESIST_CP_CONC.DETECT_ITEM_POINT
      is ''�춨�����''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_INSU_RESIST_CP_CONC.IS_VALID
      is ''��Ч��־''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_INSU_RESIST_CP_CONC.TEST_SITE
      is ''���Բ�λ VW_INSULATION_TEST_SITE''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_INSU_RESIST_CP_CONC.ELEC_RESISTANCE
      is ''���裨M����''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_INSU_RESIST_CP_CONC.CONC_CODE
      is ''������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_INSU_RESIST_CP_CONC.WRITE_DATE
      is ''�춨ϵͳд��ʱ��''
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
      dbms_output.put_line('�ű�����������Ϊ PK_T_INSU_RESIST_CP_CONC �Ѵ��ڡ�');
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
      dbms_output.put_line('�ű�����������Ϊ SEQ_T_INSU_RESIST_CP_CONC �Ѵ��ڡ�');
    END IF;
END;
/
prompt
prompt ���ڴ����¼���Ϊ 8200000000018006 �Ľű�
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
      dbms_output.put_line('�ű�����������Ϊ T_ONLOAD_DECILITER_CP_CONC �Ѵ��ڡ�');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table T_ONLOAD_DECILITER_CP_CONC
      is ''���׮���طֺϵ�·������۱�''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_ONLOAD_DECILITER_CP_CONC.READ_ID
      is ''�ֶ�Ψһ��ʶ''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_ONLOAD_DECILITER_CP_CONC.DETECT_TASK_NO
      is ''�춨������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_ONLOAD_DECILITER_CP_CONC.EQUIP_CATEG
      is ''�豸���''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_ONLOAD_DECILITER_CP_CONC.SYS_NO
      is ''ϵͳ���''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_ONLOAD_DECILITER_CP_CONC.DETECT_EQUIP_NO
      is ''�춨��̨���''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_ONLOAD_DECILITER_CP_CONC.DETECT_UNIT_NO
      is ''�춨��Ԫ���''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_ONLOAD_DECILITER_CP_CONC.BAR_CODE
      is ''�豸������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_ONLOAD_DECILITER_CP_CONC.DETECT_DATE
      is ''�춨ʱ��''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_ONLOAD_DECILITER_CP_CONC.PORT_CODE
      is ''ǹ�ڱ��''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_ONLOAD_DECILITER_CP_CONC.PARA_INDEX
      is ''�춨���''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_ONLOAD_DECILITER_CP_CONC.DETECT_ITEM_POINT
      is ''�춨�����''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_ONLOAD_DECILITER_CP_CONC.IS_VALID
      is ''��Ч��־''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_ONLOAD_DECILITER_CP_CONC.DETECT_CONTENT
      is ''������Ŀ VW_ONLOAD_DECILITER_CONC_CODE''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_ONLOAD_DECILITER_CP_CONC.CONC_CODE
      is ''������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_ONLOAD_DECILITER_CP_CONC.WRITE_DATE
      is ''�춨ϵͳд��ʱ��''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_ONLOAD_DECILITER_CP_CONC.HANDLE_FLAG
      is ''������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_ONLOAD_DECILITER_CP_CONC.HANDLE_DATE
      is ''����ʱ��''
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
      dbms_output.put_line('�ű�����������Ϊ PK_T_ONLOAD_DECILITER_CP_CONC �Ѵ��ڡ�');
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
      dbms_output.put_line('�ű�����������Ϊ SEQ_T_ONLOAD_DECILITER_CP_CONC �Ѵ��ڡ�');
    END IF;
END;
/
prompt
prompt ���ڴ����¼���Ϊ 8200000000018007 �Ľű�
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
      dbms_output.put_line('�ű�����������Ϊ T_PWM_CP_CONC �Ѵ��ڡ�');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table T_PWM_CP_CONC
      is ''���׮PWM���ʵ���������۱�''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_PWM_CP_CONC.READ_ID
      is ''�ֶ�Ψһ��ʶ''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_PWM_CP_CONC.DETECT_TASK_NO
      is ''�춨������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_PWM_CP_CONC.EQUIP_CATEG
      is ''�豸���''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_PWM_CP_CONC.SYS_NO
      is ''ϵͳ���''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_PWM_CP_CONC.DETECT_EQUIP_NO
      is ''�춨��̨���''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_PWM_CP_CONC.DETECT_UNIT_NO
      is ''�춨��Ԫ���''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_PWM_CP_CONC.BAR_CODE
      is ''�豸������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_PWM_CP_CONC.DETECT_DATE
      is ''�춨ʱ��''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_PWM_CP_CONC.PORT_CODE
      is ''ǹ�ڱ��''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_PWM_CP_CONC.PARA_INDEX
      is ''�춨���''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_PWM_CP_CONC.DETECT_ITEM_POINT
      is ''�춨�����''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_PWM_CP_CONC.IS_VALID
      is ''��Ч��־''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_PWM_CP_CONC.DOWN_CURRENT
      is ''�·�����(A)''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_PWM_CP_CONC.OUT_PWM
      is ''���ռ�ձ�(%)''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_PWM_CP_CONC.ERROR
      is ''���(%)''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_PWM_CP_CONC.CONC_CODE
      is ''������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_PWM_CP_CONC.WRITE_DATE
      is ''�춨ϵͳд��ʱ��''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_PWM_CP_CONC.HANDLE_FLAG
      is ''������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_PWM_CP_CONC.HANDLE_DATE
      is ''����ʱ��''
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
      dbms_output.put_line('�ű�����������Ϊ PK_T_PWM_CP_CONC �Ѵ��ڡ�');
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
      dbms_output.put_line('�ű�����������Ϊ SEQ_T_PWM_CP_CONC �Ѵ��ڡ�');
    END IF;
END;
/
prompt
prompt ���ڴ����¼���Ϊ 8200000000018008 �Ľű�
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
      dbms_output.put_line('�ű�����������Ϊ T_IN_OVERVOLT_CP_CONC �Ѵ��ڡ�');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table T_IN_OVERVOLT_CP_CONC
      is ''���׮�����ѹ����������۱�''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_IN_OVERVOLT_CP_CONC.READ_ID
      is ''�ֶ�Ψһ��ʶ''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_IN_OVERVOLT_CP_CONC.DETECT_TASK_NO
      is ''�춨������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_IN_OVERVOLT_CP_CONC.EQUIP_CATEG
      is ''�豸���''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_IN_OVERVOLT_CP_CONC.SYS_NO
      is ''ϵͳ���''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_IN_OVERVOLT_CP_CONC.DETECT_EQUIP_NO
      is ''�춨��̨���''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_IN_OVERVOLT_CP_CONC.DETECT_UNIT_NO
      is ''�춨��Ԫ���''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_IN_OVERVOLT_CP_CONC.BAR_CODE
      is ''�豸������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_IN_OVERVOLT_CP_CONC.DETECT_DATE
      is ''�춨ʱ��''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_IN_OVERVOLT_CP_CONC.PORT_CODE
      is ''ǹ�ڱ��''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_IN_OVERVOLT_CP_CONC.PARA_INDEX
      is ''�춨���''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_IN_OVERVOLT_CP_CONC.DETECT_ITEM_POINT
      is ''�춨�����''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_IN_OVERVOLT_CP_CONC.IS_VALID
      is ''��Ч��־''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_IN_OVERVOLT_CP_CONC.SET_VALUE
      is ''�趨ֵ��V��''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_IN_OVERVOLT_CP_CONC.ACTION_VALUE
      is ''����ֵ��V��''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_IN_OVERVOLT_CP_CONC.CONC_CODE
      is ''������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_IN_OVERVOLT_CP_CONC.WRITE_DATE
      is ''�춨ϵͳд��ʱ��''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_IN_OVERVOLT_CP_CONC.HANDLE_FLAG
      is ''������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_IN_OVERVOLT_CP_CONC.HANDLE_DATE
      is ''����ʱ��''
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
      dbms_output.put_line('�ű�����������Ϊ PK_T_IN_OVERVOLT_CP_CONC �Ѵ��ڡ�');
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
      dbms_output.put_line('�ű�����������Ϊ SEQ_T_IN_OVERVOLT_CP_CONC �Ѵ��ڡ�');
    END IF;
END;
/
prompt
prompt ���ڴ����¼���Ϊ 8200000000018009 �Ľű�
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
      dbms_output.put_line('�ű�����������Ϊ T_IN_UNDERVOLT_CP_CONC �Ѵ��ڡ�');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table T_IN_UNDERVOLT_CP_CONC
      is ''���׮����Ƿѹ����������۱�''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_IN_UNDERVOLT_CP_CONC.READ_ID
      is ''�ֶ�Ψһ��ʶ''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_IN_UNDERVOLT_CP_CONC.DETECT_TASK_NO
      is ''�춨������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_IN_UNDERVOLT_CP_CONC.EQUIP_CATEG
      is ''�豸���''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_IN_UNDERVOLT_CP_CONC.SYS_NO
      is ''ϵͳ���''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_IN_UNDERVOLT_CP_CONC.DETECT_EQUIP_NO
      is ''�춨��̨���''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_IN_UNDERVOLT_CP_CONC.DETECT_UNIT_NO
      is ''�춨��Ԫ���''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_IN_UNDERVOLT_CP_CONC.BAR_CODE
      is ''�豸������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_IN_UNDERVOLT_CP_CONC.DETECT_DATE
      is ''�춨ʱ��''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_IN_UNDERVOLT_CP_CONC.PORT_CODE
      is ''ǹ�ڱ��''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_IN_UNDERVOLT_CP_CONC.PARA_INDEX
      is ''�춨���''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_IN_UNDERVOLT_CP_CONC.DETECT_ITEM_POINT
      is ''�춨�����''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_IN_UNDERVOLT_CP_CONC.IS_VALID
      is ''��Ч��־''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_IN_UNDERVOLT_CP_CONC.SET_VALUE
      is ''�趨ֵ��V��''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_IN_UNDERVOLT_CP_CONC.ACTION_VALUE
      is ''����ֵ��V��''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_IN_UNDERVOLT_CP_CONC.CONC_CODE
      is ''������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_IN_UNDERVOLT_CP_CONC.WRITE_DATE
      is ''�춨ϵͳд��ʱ��''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_IN_UNDERVOLT_CP_CONC.HANDLE_FLAG
      is ''������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_IN_UNDERVOLT_CP_CONC.HANDLE_DATE
      is ''����ʱ��''
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
      dbms_output.put_line('�ű�����������Ϊ PK_T_IN_UNDERVOLT_CP_CONC �Ѵ��ڡ�');
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
      dbms_output.put_line('�ű�����������Ϊ SEQ_T_IN_UNDERVOLT_CP_CONC �Ѵ��ڡ�');
    END IF;
END;
/
prompt
prompt ���ڴ����¼���Ϊ 8200000000018010 �Ľű�
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
      dbms_output.put_line('�ű�����������Ϊ T_SCP_CP_CONC �Ѵ��ڡ�');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table T_SCP_CP_CONC
      is ''���׮�����·����������۱�''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_SCP_CP_CONC.READ_ID
      is ''�ֶ�Ψһ��ʶ''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_SCP_CP_CONC.DETECT_TASK_NO
      is ''�춨������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_SCP_CP_CONC.EQUIP_CATEG
      is ''�豸���''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_SCP_CP_CONC.SYS_NO
      is ''ϵͳ���''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_SCP_CP_CONC.DETECT_EQUIP_NO
      is ''�춨��̨���''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_SCP_CP_CONC.DETECT_UNIT_NO
      is ''�춨��Ԫ���''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_SCP_CP_CONC.BAR_CODE
      is ''�豸������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_SCP_CP_CONC.DETECT_DATE
      is ''�춨ʱ��''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_SCP_CP_CONC.PARA_INDEX
      is ''�춨���''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_SCP_CP_CONC.DETECT_ITEM_POINT
      is ''�춨�����''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_SCP_CP_CONC.IS_VALID
      is ''��Ч��־''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_SCP_CP_CONC.DETECT_CONTENT
      is ''������Ŀ VW_SCP_CONC_CODE''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_SCP_CP_CONC.CONC_CODE
      is ''������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_SCP_CP_CONC.WRITE_DATE
      is ''�춨ϵͳд��ʱ��''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_SCP_CP_CONC.HANDLE_FLAG
      is ''������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_SCP_CP_CONC.HANDLE_DATE
      is ''����ʱ��''
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
      dbms_output.put_line('�ű�����������Ϊ PK_T_SCP_CP_CONC �Ѵ��ڡ�');
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
      dbms_output.put_line('�ű�����������Ϊ SEQ_T_SCP_CP_CONC �Ѵ��ڡ�');
    END IF;
END;
/
prompt
prompt ���ڴ����¼���Ϊ 8200000000018011 �Ľű�
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
      dbms_output.put_line('�ű�����������Ϊ T_LOCK_CP_CONC �Ѵ��ڡ�');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table T_LOCK_CP_CONC
      is ''���׮��ֹ����������۱�''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_LOCK_CP_CONC.READ_ID
      is ''�ֶ�Ψһ��ʶ''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_LOCK_CP_CONC.DETECT_TASK_NO
      is ''�춨������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_LOCK_CP_CONC.EQUIP_CATEG
      is ''�豸���''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_LOCK_CP_CONC.SYS_NO
      is ''ϵͳ���''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_LOCK_CP_CONC.DETECT_EQUIP_NO
      is ''�춨��̨���''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_LOCK_CP_CONC.DETECT_UNIT_NO
      is ''�춨��Ԫ���''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_LOCK_CP_CONC.BAR_CODE
      is ''�豸������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_LOCK_CP_CONC.DETECT_DATE
      is ''�춨ʱ��''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_LOCK_CP_CONC.PORT_CODE
      is ''ǹ�ڱ��''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_LOCK_CP_CONC.PARA_INDEX
      is ''�춨���''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_LOCK_CP_CONC.DETECT_ITEM_POINT
      is ''�춨�����''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_LOCK_CP_CONC.IS_VALID
      is ''��Ч��־''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_LOCK_CP_CONC.DETECT_CONTENT
      is ''������Ŀ VW_LOCK_CONC_CODE''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_LOCK_CP_CONC.CONC_CODE
      is ''������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_LOCK_CP_CONC.WRITE_DATE
      is ''�춨ϵͳд��ʱ��''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_LOCK_CP_CONC.HANDLE_FLAG
      is ''������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_LOCK_CP_CONC.HANDLE_DATE
      is ''����ʱ��''
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
      dbms_output.put_line('�ű�����������Ϊ PK_T_LOCK_CP_CONC �Ѵ��ڡ�');
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
      dbms_output.put_line('�ű�����������Ϊ SEQ_T_LOCK_CP_CONC �Ѵ��ڡ�');
    END IF;
END;
/
prompt
prompt ���ڴ����¼���Ϊ 8200000000018012 �Ľű�
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
      dbms_output.put_line('�ű�����������Ϊ T_CONTROL_VOLTLIMIT_CP_CONC �Ѵ��ڡ�');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table T_CONTROL_VOLTLIMIT_CP_CONC
      is ''���׮���Ƶ�����ѹ��ֵ���Խ��۱�''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_CONTROL_VOLTLIMIT_CP_CONC.READ_ID
      is ''�ֶ�Ψһ��ʶ''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_CONTROL_VOLTLIMIT_CP_CONC.DETECT_TASK_NO
      is ''�춨������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_CONTROL_VOLTLIMIT_CP_CONC.EQUIP_CATEG
      is ''�豸���''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_CONTROL_VOLTLIMIT_CP_CONC.SYS_NO
      is ''ϵͳ���''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_CONTROL_VOLTLIMIT_CP_CONC.DETECT_EQUIP_NO
      is ''�춨��̨���''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_CONTROL_VOLTLIMIT_CP_CONC.DETECT_UNIT_NO
      is ''�춨��Ԫ���''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_CONTROL_VOLTLIMIT_CP_CONC.BAR_CODE
      is ''�豸������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_CONTROL_VOLTLIMIT_CP_CONC.DETECT_DATE
      is ''�춨ʱ��''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_CONTROL_VOLTLIMIT_CP_CONC.PORT_CODE
      is ''ǹ�ڱ��''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_CONTROL_VOLTLIMIT_CP_CONC.PARA_INDEX
      is ''�춨���''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_CONTROL_VOLTLIMIT_CP_CONC.DETECT_ITEM_POINT
      is ''�춨�����''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_CONTROL_VOLTLIMIT_CP_CONC.IS_VALID
      is ''��Ч��־''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_CONTROL_VOLTLIMIT_CP_CONC.DETECT_CONTENT
      is ''������Ŀ VW_CONTROL_VOLTLIMIT_CONC_CODE''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_CONTROL_VOLTLIMIT_CP_CONC.TEST1_VOLT_STATE
      is ''����1��ѹ״̬  VW_TEST1_VOLT_STATE''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_CONTROL_VOLTLIMIT_CP_CONC.TEST1_VOLT_VALUE
      is ''����1��ѹ����ֵ''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_CONTROL_VOLTLIMIT_CP_CONC.IS_CHARGE
      is ''�Ƿ���������������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_CONTROL_VOLTLIMIT_CP_CONC.IS_WARN
      is ''�Ƿ��о�����ʾ''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_CONTROL_VOLTLIMIT_CP_CONC.CONC_CODE
      is ''������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_CONTROL_VOLTLIMIT_CP_CONC.WRITE_DATE
      is ''�춨ϵͳд��ʱ��''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_CONTROL_VOLTLIMIT_CP_CONC.HANDLE_FLAG
      is ''������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_CONTROL_VOLTLIMIT_CP_CONC.HANDLE_DATE
      is ''����ʱ��''
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
      dbms_output.put_line('�ű�����������Ϊ PK_T_CONTROL_VOLTLIMIT_CP_CONC �Ѵ��ڡ�');
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
      dbms_output.put_line('�ű�����������Ϊ SEQ_CONTROL_VOLTLIMIT_CP_CONC �Ѵ��ڡ�');
    END IF;
END;
/
prompt
prompt ���ڴ����¼���Ϊ 8200000000018013 �Ľű�
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
      dbms_output.put_line('�ű�����������Ϊ T_PLUG_LOCK_CP_CONC �Ѵ��ڡ�');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table T_PLUG_LOCK_CP_CONC
      is ''���׮����ͷ��ֹ���ܲ��Խ��۱�''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_PLUG_LOCK_CP_CONC.READ_ID
      is ''�ֶ�Ψһ��ʶ''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_PLUG_LOCK_CP_CONC.DETECT_TASK_NO
      is ''�춨������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_PLUG_LOCK_CP_CONC.EQUIP_CATEG
      is ''�豸���''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_PLUG_LOCK_CP_CONC.SYS_NO
      is ''ϵͳ���''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_PLUG_LOCK_CP_CONC.DETECT_EQUIP_NO
      is ''�춨��̨���''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_PLUG_LOCK_CP_CONC.DETECT_UNIT_NO
      is ''�춨��Ԫ���''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_PLUG_LOCK_CP_CONC.BAR_CODE
      is ''�豸������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_PLUG_LOCK_CP_CONC.DETECT_DATE
      is ''�춨ʱ��''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_PLUG_LOCK_CP_CONC.PORT_CODE
      is ''ǹ�ڱ��''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_PLUG_LOCK_CP_CONC.PARA_INDEX
      is ''�춨���''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_PLUG_LOCK_CP_CONC.DETECT_ITEM_POINT
      is ''�춨�����''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_PLUG_LOCK_CP_CONC.IS_VALID
      is ''��Ч��־''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_PLUG_LOCK_CP_CONC.DETECT_CONTENT
      is ''������Ŀ VW_PLUG_LOCK_CONC_CODE''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_PLUG_LOCK_CP_CONC.CONC_CODE
      is ''������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_PLUG_LOCK_CP_CONC.WRITE_DATE
      is ''�춨ϵͳд��ʱ��''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_PLUG_LOCK_CP_CONC.HANDLE_FLAG
      is ''������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_PLUG_LOCK_CP_CONC.HANDLE_DATE
      is ''����ʱ��''
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
      dbms_output.put_line('�ű�����������Ϊ PK_T_PLUG_LOCK_CP_CONC �Ѵ��ڡ�');
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
      dbms_output.put_line('�ű�����������Ϊ SEQ_T_PLUG_LOCK_CP_CONC �Ѵ��ڡ�');
    END IF;
END;
/
prompt
prompt ���ڴ����¼���Ϊ 8200000000018014 �Ľű�
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
      dbms_output.put_line('�ű�����������Ϊ T_CONNECT_CONFIRM_CP_CONC �Ѵ��ڡ�');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table T_CONNECT_CONFIRM_CP_CONC
      is ''���׮����ȷ�ϲ��Խ��ۣ���������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_CONNECT_CONFIRM_CP_CONC.READ_ID
      is ''�ֶ�Ψһ��ʶ''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_CONNECT_CONFIRM_CP_CONC.DETECT_TASK_NO
      is ''�춨������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_CONNECT_CONFIRM_CP_CONC.EQUIP_CATEG
      is ''�豸���''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_CONNECT_CONFIRM_CP_CONC.SYS_NO
      is ''ϵͳ���''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_CONNECT_CONFIRM_CP_CONC.DETECT_EQUIP_NO
      is ''�춨��̨���''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_CONNECT_CONFIRM_CP_CONC.DETECT_UNIT_NO
      is ''�춨��Ԫ���''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_CONNECT_CONFIRM_CP_CONC.BAR_CODE
      is ''�豸������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_CONNECT_CONFIRM_CP_CONC.DETECT_DATE
      is ''�춨ʱ��''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_CONNECT_CONFIRM_CP_CONC.PORT_CODE
      is ''ǹ�ڱ��''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_CONNECT_CONFIRM_CP_CONC.PARA_INDEX
      is ''�춨���''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_CONNECT_CONFIRM_CP_CONC.DETECT_ITEM_POINT
      is ''�춨�����''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_CONNECT_CONFIRM_CP_CONC.IS_VALID
      is ''��Ч��־''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_CONNECT_CONFIRM_CP_CONC.DETECT_CONTENT
      is ''������Ŀ VW_ CONNECT_CONFIRM_CODE''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_CONNECT_CONFIRM_CP_CONC.FOUT_VALUE
      is ''���Ƶ�ʲ���ֵ��Hz��''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_CONNECT_CONFIRM_CP_CONC.FOUT_ERROR
      is ''���Ƶ����Hz��''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_CONNECT_CONFIRM_CP_CONC.OUT_PWM_SET
      is ''���ռ�ձ��趨ֵ��%��''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_CONNECT_CONFIRM_CP_CONC.OUT_PWM_VALUE
      is ''���ռ�ձȲ���ֵ��%��''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_CONNECT_CONFIRM_CP_CONC.OUT_PWM_ERROR
      is ''���ռ�ձ���%��''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_CONNECT_CONFIRM_CP_CONC.RISE_TIME_VALUE
      is ''����ʱ�����ֵ����s��''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_CONNECT_CONFIRM_CP_CONC.FALL_TIME_VALUE
      is ''�½�ʱ�����ֵ����s��''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_CONNECT_CONFIRM_CP_CONC.CONC_CODE
      is ''������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_CONNECT_CONFIRM_CP_CONC.WRITE_DATE
      is ''�춨ϵͳд��ʱ��''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_CONNECT_CONFIRM_CP_CONC.HANDLE_FLAG
      is ''������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_CONNECT_CONFIRM_CP_CONC.HANDLE_DATE
      is ''����ʱ��''
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
      dbms_output.put_line('�ű�����������Ϊ PK_T_CONNECT_CONFIRM_CP_CONC �Ѵ��ڡ�');
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
      dbms_output.put_line('�ű�����������Ϊ SEQ_T_CONNECT_CONFIRM_CP_CONC �Ѵ��ڡ�');
    END IF;
END;
/
prompt
prompt ���ڴ����¼���Ϊ 8200000000018015 �Ľű�
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
      dbms_output.put_line('�ű�����������Ϊ T_STANDBY_POWER_CP_CONC �Ѵ��ڡ�');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table T_STANDBY_POWER_CP_CONC
      is ''���׮��������������۱�''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_STANDBY_POWER_CP_CONC.READ_ID
      is ''�ֶ�Ψһ��ʶ''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_STANDBY_POWER_CP_CONC.DETECT_TASK_NO
      is ''�춨������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_STANDBY_POWER_CP_CONC.EQUIP_CATEG
      is ''�豸���''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_STANDBY_POWER_CP_CONC.SYS_NO
      is ''ϵͳ���''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_STANDBY_POWER_CP_CONC.DETECT_EQUIP_NO
      is ''�춨��̨���''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_STANDBY_POWER_CP_CONC.DETECT_UNIT_NO
      is ''�춨��Ԫ���''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_STANDBY_POWER_CP_CONC.BAR_CODE
      is ''�豸������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_STANDBY_POWER_CP_CONC.DETECT_DATE
      is ''�춨ʱ��''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_STANDBY_POWER_CP_CONC.PARA_INDEX
      is ''�춨���''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_STANDBY_POWER_CP_CONC.DETECT_ITEM_POINT
      is ''�춨�����''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_STANDBY_POWER_CP_CONC.IS_VALID
      is ''��Ч��־''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_STANDBY_POWER_CP_CONC.PORT_NUM
      is ''���ӿ�����''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_STANDBY_POWER_CP_CONC.STANDBY_POWER
      is ''��������(W)''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_STANDBY_POWER_CP_CONC.CONC_CODE
      is ''������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_STANDBY_POWER_CP_CONC.WRITE_DATE
      is ''�춨ϵͳд��ʱ��''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_STANDBY_POWER_CP_CONC.HANDLE_FLAG
      is ''������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_STANDBY_POWER_CP_CONC.HANDLE_DATE
      is ''����ʱ��''
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
      dbms_output.put_line('�ű�����������Ϊ PK_T_STANDBY_POWER_CP_CONC �Ѵ��ڡ�');
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
      dbms_output.put_line('�ű�����������Ϊ SEQ_T_STANDBY_POWER_CP_CONC �Ѵ��ڡ�');
    END IF;
END;
/
prompt
prompt ���ڴ����¼���Ϊ 8200000000018029 �Ľű�
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
      dbms_output.put_line('�ű�����������Ϊ T_MEASUREMENT_ERROR_CP_CONC �Ѵ��ڡ�');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table T_MEASUREMENT_ERROR_CP_CONC
      is ''���׮�������������۱�''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_MEASUREMENT_ERROR_CP_CONC.READ_ID
      is ''�ֶ�Ψһ��ʶ''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_MEASUREMENT_ERROR_CP_CONC.DETECT_TASK_NO
      is ''�춨������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_MEASUREMENT_ERROR_CP_CONC.EQUIP_CATEG
      is ''�豸���''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_MEASUREMENT_ERROR_CP_CONC.SYS_NO
      is ''ϵͳ���''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_MEASUREMENT_ERROR_CP_CONC.DETECT_EQUIP_NO
      is ''�춨��̨���''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_MEASUREMENT_ERROR_CP_CONC.DETECT_UNIT_NO
      is ''�춨��Ԫ���''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_MEASUREMENT_ERROR_CP_CONC.BAR_CODE
      is ''�豸������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_MEASUREMENT_ERROR_CP_CONC.DETECT_DATE
      is ''�춨ʱ��''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_MEASUREMENT_ERROR_CP_CONC.PORT_CODE
      is ''ǹ�ڱ��''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_MEASUREMENT_ERROR_CP_CONC.PARA_INDEX
      is ''�춨���''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_MEASUREMENT_ERROR_CP_CONC.DETECT_ITEM_POINT
      is ''�춨�����''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_MEASUREMENT_ERROR_CP_CONC.IS_VALID
      is ''��Ч��־''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_MEASUREMENT_ERROR_CP_CONC.IN_VOLT
      is ''�����ѹ(V)''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_MEASUREMENT_ERROR_CP_CONC.OUT_CURRENT
      is ''�������(A)''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_MEASUREMENT_ERROR_CP_CONC.OUT_VOLT
      is ''�����ѹ(V)''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_MEASUREMENT_ERROR_CP_CONC.RELATIVE_ERROR
      is ''ʵ��������(%)''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_MEASUREMENT_ERROR_CP_CONC.CONC_CODE
      is ''������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_MEASUREMENT_ERROR_CP_CONC.WRITE_DATE
      is ''�춨ϵͳд��ʱ��''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_MEASUREMENT_ERROR_CP_CONC.HANDLE_FLAG
      is ''������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_MEASUREMENT_ERROR_CP_CONC.HANDLE_DATE
      is ''����ʱ��''
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
      dbms_output.put_line('�ű�����������Ϊ PK_T_MEASUREMENT_ERROR_CP_CONC �Ѵ��ڡ�');
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
      dbms_output.put_line('�ű�����������Ϊ SEQ_MEASUREMENT_ERROR_CP_CONC �Ѵ��ڡ�');
    END IF;
END;
/
prompt
prompt ���ڴ����¼���Ϊ 8200000000018036 �Ľű�
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
      dbms_output.put_line('�ű�����������Ϊ T_INDICATIVE_ERROR_CP_CONC �Ѵ��ڡ�');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table T_INDICATIVE_ERROR_CP_CONC
      is ''���׮����ʾֵ�����۱�''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_INDICATIVE_ERROR_CP_CONC.READ_ID
      is ''�ֶ�Ψһ��ʶ''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_INDICATIVE_ERROR_CP_CONC.DETECT_TASK_NO
      is ''�춨������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_INDICATIVE_ERROR_CP_CONC.EQUIP_CATEG
      is ''�豸���''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_INDICATIVE_ERROR_CP_CONC.SYS_NO
      is ''ϵͳ���''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_INDICATIVE_ERROR_CP_CONC.DETECT_EQUIP_NO
      is ''�춨��̨���''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_INDICATIVE_ERROR_CP_CONC.DETECT_UNIT_NO
      is ''�춨��Ԫ���''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_INDICATIVE_ERROR_CP_CONC.BAR_CODE
      is ''�豸������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_INDICATIVE_ERROR_CP_CONC.DETECT_DATE
      is ''�춨ʱ��''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_INDICATIVE_ERROR_CP_CONC.PORT_CODE
      is ''ǹ�ڱ��''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_INDICATIVE_ERROR_CP_CONC.PARA_INDEX
      is ''�춨���''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_INDICATIVE_ERROR_CP_CONC.DETECT_ITEM_POINT
      is ''�춨�����''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_INDICATIVE_ERROR_CP_CONC.IS_VALID
      is ''��Ч��־''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_INDICATIVE_ERROR_CP_CONC.IN_VOLT
      is ''�����ѹ(V)''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_INDICATIVE_ERROR_CP_CONC.OUT_CURRENT
      is ''�������(A)''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_INDICATIVE_ERROR_CP_CONC.OUT_VOLT
      is ''�����ѹ(V)''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_INDICATIVE_ERROR_CP_CONC.TIME
      is ''ʱ�䣨min''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_INDICATIVE_ERROR_CP_CONC.ACTUAL_ERROR
      is ''ʵ�����(%)''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_INDICATIVE_ERROR_CP_CONC.CONC_CODE
      is ''������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_INDICATIVE_ERROR_CP_CONC.WRITE_DATE
      is ''�춨ϵͳд��ʱ��''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_INDICATIVE_ERROR_CP_CONC.HANDLE_FLAG
      is ''������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_INDICATIVE_ERROR_CP_CONC.HANDLE_DATE
      is ''����ʱ��''
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
      dbms_output.put_line('�ű�����������Ϊ PK_T_INDICATIVE_ERROR_CP_CONC �Ѵ��ڡ�');
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
      dbms_output.put_line('�ű�����������Ϊ SEQ_T_INDICATIVE_ERROR_CP_CONC �Ѵ��ڡ�');
    END IF;
END;
/
prompt
prompt ���ڴ����¼���Ϊ 8200000000018037 �Ľű�
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
      dbms_output.put_line('�ű�����������Ϊ T_MEASURE_UNIFORMITY_CP_CONC �Ѵ��ڡ�');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table T_MEASURE_UNIFORMITY_CP_CONC
      is ''���׮����һ���Խ��۱�''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_MEASURE_UNIFORMITY_CP_CONC.READ_ID
      is ''�ֶ�Ψһ��ʶ''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_MEASURE_UNIFORMITY_CP_CONC.DETECT_TASK_NO
      is ''�춨������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_MEASURE_UNIFORMITY_CP_CONC.EQUIP_CATEG
      is ''�豸���''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_MEASURE_UNIFORMITY_CP_CONC.SYS_NO
      is ''ϵͳ���''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_MEASURE_UNIFORMITY_CP_CONC.DETECT_EQUIP_NO
      is ''�춨��̨���''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_MEASURE_UNIFORMITY_CP_CONC.DETECT_UNIT_NO
      is ''�춨��Ԫ���''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_MEASURE_UNIFORMITY_CP_CONC.BAR_CODE
      is ''�豸������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_MEASURE_UNIFORMITY_CP_CONC.DETECT_DATE
      is ''�춨ʱ��''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_MEASURE_UNIFORMITY_CP_CONC.PORT_CODE
      is ''ǹ�ڱ��''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_MEASURE_UNIFORMITY_CP_CONC.PARA_INDEX
      is ''�춨���''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_MEASURE_UNIFORMITY_CP_CONC.DETECT_ITEM_POINT
      is ''�춨�����''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_MEASURE_UNIFORMITY_CP_CONC.IS_VALID
      is ''��Ч��־''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_MEASURE_UNIFORMITY_CP_CONC.IN_VOLT
      is ''�����ѹ(V)''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_MEASURE_UNIFORMITY_CP_CONC.OUT_CURRENT
      is ''�������(A)''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_MEASURE_UNIFORMITY_CP_CONC.OUT_VOLT
      is ''�����ѹ(V)''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_MEASURE_UNIFORMITY_CP_CONC.ACTUAL_ERROR
      is ''ʵ�����(%)''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_MEASURE_UNIFORMITY_CP_CONC.CONC_CODE
      is ''������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_MEASURE_UNIFORMITY_CP_CONC.WRITE_DATE
      is ''�춨ϵͳд��ʱ��''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_MEASURE_UNIFORMITY_CP_CONC.HANDLE_FLAG
      is ''������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_MEASURE_UNIFORMITY_CP_CONC.HANDLE_DATE
      is ''����ʱ��''
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
      dbms_output.put_line('�ű�����������Ϊ PK_T_MEASURE_UNIFORMITY_CP_CONC �Ѵ��ڡ�');
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
      dbms_output.put_line('�ű�����������Ϊ SEQ_MEASURE_UNIFORMITY_CP_CONC �Ѵ��ڡ�');
    END IF;
END;
/
prompt
prompt ���ڴ����¼���Ϊ 8200000000018040 �Ľű�
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
      dbms_output.put_line('�ű�����������Ϊ T_SCRAM_FUNCTION_CP_CONC �Ѵ��ڡ�');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table T_SCRAM_FUNCTION_CP_CONC
      is ''���׮��ͣ���ܽ��۱�''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_SCRAM_FUNCTION_CP_CONC.READ_ID
      is ''�ֶ�Ψһ��ʶ''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_SCRAM_FUNCTION_CP_CONC.DETECT_TASK_NO
      is ''�춨������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_SCRAM_FUNCTION_CP_CONC.EQUIP_CATEG
      is ''�豸���''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_SCRAM_FUNCTION_CP_CONC.SYS_NO
      is ''ϵͳ���''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_SCRAM_FUNCTION_CP_CONC.DETECT_EQUIP_NO
      is ''�춨��̨���''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_SCRAM_FUNCTION_CP_CONC.DETECT_UNIT_NO
      is ''�춨��Ԫ���''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_SCRAM_FUNCTION_CP_CONC.BAR_CODE
      is ''�豸������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_SCRAM_FUNCTION_CP_CONC.DETECT_DATE
      is ''�춨ʱ��''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_SCRAM_FUNCTION_CP_CONC.PORT_CODE
      is ''ǹ�ڱ��''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_SCRAM_FUNCTION_CP_CONC.PARA_INDEX
      is ''�춨���''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_SCRAM_FUNCTION_CP_CONC.DETECT_ITEM_POINT
      is ''�춨�����''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_SCRAM_FUNCTION_CP_CONC.IS_VALID
      is ''��Ч��־''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_SCRAM_FUNCTION_CP_CONC.DETECT_CONTENT
      is ''������Ŀ VW_SCRAM_FUNCTION_CONC_CODE''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_SCRAM_FUNCTION_CP_CONC.CONC_CODE
      is ''������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_SCRAM_FUNCTION_CP_CONC.WRITE_DATE
      is ''�춨ϵͳд��ʱ��''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_SCRAM_FUNCTION_CP_CONC.HANDLE_FLAG
      is ''������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_SCRAM_FUNCTION_CP_CONC.HANDLE_DATE
      is ''����ʱ��''
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
      dbms_output.put_line('�ű�����������Ϊ PK_T_SCRAM_FUNCTION_CP_CONC �Ѵ��ڡ�');
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
      dbms_output.put_line('�ű�����������Ϊ SEQ_T_SCRAM_FUNCTION_CP_CONC �Ѵ��ڡ�');
    END IF;
END;
/
prompt
prompt ���ڴ����¼���Ϊ 8200000000018043 �Ľű�
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
      dbms_output.put_line('�ű�����������Ϊ T_VOLT_LOSS_CP_CONC �Ѵ��ڡ�');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table T_VOLT_LOSS_CP_CONC
      is ''���׮�����ѹ��ʧ������۱�''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_VOLT_LOSS_CP_CONC.READ_ID
      is ''�ֶ�Ψһ��ʶ''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_VOLT_LOSS_CP_CONC.DETECT_TASK_NO
      is ''�춨������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_VOLT_LOSS_CP_CONC.EQUIP_CATEG
      is ''�豸���''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_VOLT_LOSS_CP_CONC.SYS_NO
      is ''ϵͳ���''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_VOLT_LOSS_CP_CONC.DETECT_EQUIP_NO
      is ''�춨��̨���''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_VOLT_LOSS_CP_CONC.DETECT_UNIT_NO
      is ''�춨��Ԫ���''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_VOLT_LOSS_CP_CONC.BAR_CODE
      is ''�豸������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_VOLT_LOSS_CP_CONC.DETECT_DATE
      is ''�춨ʱ��''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_VOLT_LOSS_CP_CONC.PARA_INDEX
      is ''�춨���''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_VOLT_LOSS_CP_CONC.DETECT_ITEM_POINT
      is ''�춨�����''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_VOLT_LOSS_CP_CONC.IS_VALID
      is ''��Ч��־''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_VOLT_LOSS_CP_CONC.DETECT_CONTENT
      is ''������Ŀ VW_VOLT_LOSS_CONC_CODE''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_VOLT_LOSS_CP_CONC.CONC_CODE
      is ''������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_VOLT_LOSS_CP_CONC.WRITE_DATE
      is ''�춨ϵͳд��ʱ��''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_VOLT_LOSS_CP_CONC.HANDLE_FLAG
      is ''������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_VOLT_LOSS_CP_CONC.HANDLE_DATE
      is ''����ʱ��''
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
      dbms_output.put_line('�ű�����������Ϊ PK_T_VOLT_LOSS_CP_CONC �Ѵ��ڡ�');
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
      dbms_output.put_line('�ű�����������Ϊ SEQ_T_VOLT_LOSS_CP_CONC �Ѵ��ڡ�');
    END IF;
END;
/
prompt
prompt ���ڴ����¼���Ϊ 8200000000018048 �Ľű�
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
      dbms_output.put_line('�ű�����������Ϊ T_MAXOUT_POWER_CP_CONC �Ѵ��ڡ�');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table T_MAXOUT_POWER_CP_CONC
      is ''���׮���㹦�����������۱�''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_MAXOUT_POWER_CP_CONC.READ_ID
      is ''�ֶ�Ψһ��ʶ''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_MAXOUT_POWER_CP_CONC.DETECT_TASK_NO
      is ''�춨������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_MAXOUT_POWER_CP_CONC.EQUIP_CATEG
      is ''�豸���''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_MAXOUT_POWER_CP_CONC.SYS_NO
      is ''ϵͳ���''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_MAXOUT_POWER_CP_CONC.DETECT_EQUIP_NO
      is ''�춨��̨���''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_MAXOUT_POWER_CP_CONC.DETECT_UNIT_NO
      is ''�춨��Ԫ���''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_MAXOUT_POWER_CP_CONC.BAR_CODE
      is ''�豸������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_MAXOUT_POWER_CP_CONC.DETECT_DATE
      is ''�춨ʱ��''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_MAXOUT_POWER_CP_CONC.PORT_CODE
      is ''ǹ�ڱ��''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_MAXOUT_POWER_CP_CONC.PARA_INDEX
      is ''�춨���''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_MAXOUT_POWER_CP_CONC.DETECT_ITEM_POINT
      is ''�춨�����''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_MAXOUT_POWER_CP_CONC.IS_VALID
      is ''��Ч��־''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_MAXOUT_POWER_CP_CONC.OUT_VOLT
      is ''�����ѹ(V)''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_MAXOUT_POWER_CP_CONC.OUT_CURRENT
      is ''�������(A)''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_MAXOUT_POWER_CP_CONC.OUT_POWER
      is ''�������(kW)''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_MAXOUT_POWER_CP_CONC.ERROR
      is ''���(%)''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_MAXOUT_POWER_CP_CONC.CONC_CODE
      is ''������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_MAXOUT_POWER_CP_CONC.WRITE_DATE
      is ''�춨ϵͳд��ʱ��''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_MAXOUT_POWER_CP_CONC.HANDLE_FLAG
      is ''������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_MAXOUT_POWER_CP_CONC.HANDLE_DATE
      is ''����ʱ��''
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
      dbms_output.put_line('�ű�����������Ϊ PK_T_MAXOUT_POWER_CP_CONC �Ѵ��ڡ�');
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
      dbms_output.put_line('�ű�����������Ϊ SEQ_T_MAXOUT_POWER_CP_CONC �Ѵ��ڡ�');
    END IF;
END;
/
prompt
prompt ���ڴ����¼���Ϊ 8200000000018055 �Ľű�
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
      dbms_output.put_line('�ű�����������Ϊ T_CURRENT_PRECISION_CP_CONC �Ѵ��ڡ�');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table T_CURRENT_PRECISION_CP_CONC
      is ''���׮��������������۱�''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_CURRENT_PRECISION_CP_CONC.READ_ID
      is ''�ֶ�Ψһ��ʶ''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_CURRENT_PRECISION_CP_CONC.DETECT_TASK_NO
      is ''�춨������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_CURRENT_PRECISION_CP_CONC.EQUIP_CATEG
      is ''�豸���''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_CURRENT_PRECISION_CP_CONC.SYS_NO
      is ''ϵͳ���''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_CURRENT_PRECISION_CP_CONC.DETECT_EQUIP_NO
      is ''�춨��̨���''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_CURRENT_PRECISION_CP_CONC.DETECT_UNIT_NO
      is ''�춨��Ԫ���''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_CURRENT_PRECISION_CP_CONC.BAR_CODE
      is ''�豸������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_CURRENT_PRECISION_CP_CONC.DETECT_DATE
      is ''�춨ʱ��''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_CURRENT_PRECISION_CP_CONC.PORT_CODE
      is ''ǹ�ڱ��''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_CURRENT_PRECISION_CP_CONC.PARA_INDEX
      is ''�춨���''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_CURRENT_PRECISION_CP_CONC.DETECT_ITEM_POINT
      is ''�춨�����''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_CURRENT_PRECISION_CP_CONC.IS_VALID
      is ''��Ч��־''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_CURRENT_PRECISION_CP_CONC.IN_VOLT
      is ''�����ѹ(V)''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_CURRENT_PRECISION_CP_CONC.OUT_VOLT
      is ''�����ѹ(V)''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_CURRENT_PRECISION_CP_CONC.OUT_CURRENT
      is ''�������(A)''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_CURRENT_PRECISION_CP_CONC.ERROR
      is ''���(%)''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_CURRENT_PRECISION_CP_CONC.CONC_CODE
      is ''������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_CURRENT_PRECISION_CP_CONC.WRITE_DATE
      is ''�춨ϵͳд��ʱ��''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_CURRENT_PRECISION_CP_CONC.HANDLE_FLAG
      is ''������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_CURRENT_PRECISION_CP_CONC.HANDLE_DATE
      is ''����ʱ��''
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
      dbms_output.put_line('�ű�����������Ϊ PK_T_CURRENT_PRECISION_CP_CONC �Ѵ��ڡ�');
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
      dbms_output.put_line('�ű�����������Ϊ SEQ_CURRENT_PRECISION_CP_CONC �Ѵ��ڡ�');
    END IF;
END;
/
prompt
prompt ���ڴ����¼���Ϊ 8200000000018059 �Ľű�
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
      dbms_output.put_line('�ű�����������Ϊ T_VOLT_PRECISION_CP_CONC �Ѵ��ڡ�');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table T_VOLT_PRECISION_CP_CONC
      is ''���׮��ѹ����������۱�''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_VOLT_PRECISION_CP_CONC.READ_ID
      is ''�ֶ�Ψһ��ʶ''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_VOLT_PRECISION_CP_CONC.DETECT_TASK_NO
      is ''�춨������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_VOLT_PRECISION_CP_CONC.EQUIP_CATEG
      is ''�豸���''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_VOLT_PRECISION_CP_CONC.SYS_NO
      is ''ϵͳ���''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_VOLT_PRECISION_CP_CONC.DETECT_EQUIP_NO
      is ''�춨��̨���''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_VOLT_PRECISION_CP_CONC.DETECT_UNIT_NO
      is ''�춨��Ԫ���''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_VOLT_PRECISION_CP_CONC.BAR_CODE
      is ''�豸������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_VOLT_PRECISION_CP_CONC.DETECT_DATE
      is ''�춨ʱ��''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_VOLT_PRECISION_CP_CONC.PORT_CODE
      is ''ǹ�ڱ��''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_VOLT_PRECISION_CP_CONC.PARA_INDEX
      is ''�춨���''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_VOLT_PRECISION_CP_CONC.DETECT_ITEM_POINT
      is ''�춨�����''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_VOLT_PRECISION_CP_CONC.IS_VALID
      is ''��Ч��־''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_VOLT_PRECISION_CP_CONC.IN_VOLT
      is ''�����ѹ(V)''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_VOLT_PRECISION_CP_CONC.OUT_VOLT
      is ''�����ѹ(V)''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_VOLT_PRECISION_CP_CONC.OUT_CURRENT
      is ''�������(A)''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_VOLT_PRECISION_CP_CONC.ERROR
      is ''���(%)''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_VOLT_PRECISION_CP_CONC.CONC_CODE
      is ''������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_VOLT_PRECISION_CP_CONC.WRITE_DATE
      is ''�춨ϵͳд��ʱ��''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_VOLT_PRECISION_CP_CONC.HANDLE_FLAG
      is ''������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_VOLT_PRECISION_CP_CONC.HANDLE_DATE
      is ''����ʱ��''
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
      dbms_output.put_line('�ű�����������Ϊ PK_T_VOLT_PRECISION_CP_CONC �Ѵ��ڡ�');
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
      dbms_output.put_line('�ű�����������Ϊ T_VOLT_PRECISION_CP_CONC �Ѵ��ڡ�');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table T_VOLT_PRECISION_CP_CONC
      is ''���׮��ѹ����������۱�''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_VOLT_PRECISION_CP_CONC.READ_ID
      is ''�ֶ�Ψһ��ʶ''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_VOLT_PRECISION_CP_CONC.DETECT_TASK_NO
      is ''�춨������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_VOLT_PRECISION_CP_CONC.EQUIP_CATEG
      is ''�豸���''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_VOLT_PRECISION_CP_CONC.SYS_NO
      is ''ϵͳ���''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_VOLT_PRECISION_CP_CONC.DETECT_EQUIP_NO
      is ''�춨��̨���''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_VOLT_PRECISION_CP_CONC.DETECT_UNIT_NO
      is ''�춨��Ԫ���''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_VOLT_PRECISION_CP_CONC.BAR_CODE
      is ''�豸������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_VOLT_PRECISION_CP_CONC.DETECT_DATE
      is ''�춨ʱ��''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_VOLT_PRECISION_CP_CONC.PORT_CODE
      is ''ǹ�ڱ��''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_VOLT_PRECISION_CP_CONC.PARA_INDEX
      is ''�춨���''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_VOLT_PRECISION_CP_CONC.DETECT_ITEM_POINT
      is ''�춨�����''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_VOLT_PRECISION_CP_CONC.IS_VALID
      is ''��Ч��־''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_VOLT_PRECISION_CP_CONC.IN_VOLT
      is ''�����ѹ(V)''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_VOLT_PRECISION_CP_CONC.OUT_VOLT
      is ''�����ѹ(V)''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_VOLT_PRECISION_CP_CONC.OUT_CURRENT
      is ''�������(A)''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_VOLT_PRECISION_CP_CONC.ERROR
      is ''���(%)''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_VOLT_PRECISION_CP_CONC.CONC_CODE
      is ''������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_VOLT_PRECISION_CP_CONC.WRITE_DATE
      is ''�춨ϵͳд��ʱ��''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_VOLT_PRECISION_CP_CONC.HANDLE_FLAG
      is ''������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_VOLT_PRECISION_CP_CONC.HANDLE_DATE
      is ''����ʱ��''
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
      dbms_output.put_line('�ű�����������Ϊ PK_T_VOLT_PRECISION_CP_CONC �Ѵ��ڡ�');
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
      dbms_output.put_line('�ű�����������Ϊ SEQ_T_VOLT_PRECISION_CP_CONC �Ѵ��ڡ�');
    END IF;
END;
/
prompt
prompt ���ڴ����¼���Ϊ 8200000000018062 �Ľű�
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
      dbms_output.put_line('�ű�����������Ϊ T_EFFICIENCY_CP_CONC �Ѵ��ڡ�');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table T_EFFICIENCY_CP_CONC
      is ''���׮Ч��������۱�''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_EFFICIENCY_CP_CONC.READ_ID
      is ''�ֶ�Ψһ��ʶ''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_EFFICIENCY_CP_CONC.DETECT_TASK_NO
      is ''�춨������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_EFFICIENCY_CP_CONC.EQUIP_CATEG
      is ''�豸���''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_EFFICIENCY_CP_CONC.SYS_NO
      is ''ϵͳ���''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_EFFICIENCY_CP_CONC.DETECT_EQUIP_NO
      is ''�춨��̨���''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_EFFICIENCY_CP_CONC.DETECT_UNIT_NO
      is ''�춨��Ԫ���''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_EFFICIENCY_CP_CONC.BAR_CODE
      is ''�豸������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_EFFICIENCY_CP_CONC.DETECT_DATE
      is ''�춨ʱ��''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_EFFICIENCY_CP_CONC.PORT_CODE
      is ''ǹ�ڱ��''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_EFFICIENCY_CP_CONC.PARA_INDEX
      is ''�춨���''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_EFFICIENCY_CP_CONC.DETECT_ITEM_POINT
      is ''�춨�����''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_EFFICIENCY_CP_CONC.IS_VALID
      is ''��Ч��־''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_EFFICIENCY_CP_CONC.IN_VOLT
      is ''�����ѹ(V)''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_EFFICIENCY_CP_CONC.OUT_VOLT
      is ''�����ѹ(V)''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_EFFICIENCY_CP_CONC.OUT_CURRENT
      is ''�������(A)''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_EFFICIENCY_CP_CONC.STATE
      is ''״̬ VW_CP_ EFFICIENCY_STATE''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_EFFICIENCY_CP_CONC.POWER
      is ''���ʣ�kW''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_EFFICIENCY_CP_CONC.CONC_CODE
      is ''������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_EFFICIENCY_CP_CONC.WRITE_DATE
      is ''�춨ϵͳд��ʱ��''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_EFFICIENCY_CP_CONC.HANDLE_FLAG
      is ''������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_EFFICIENCY_CP_CONC.HANDLE_DATE
      is ''����ʱ��''
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
      dbms_output.put_line('�ű�����������Ϊ PK_T_EFFICIENCY_CP_CONC �Ѵ��ڡ�');
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
      dbms_output.put_line('�ű�����������Ϊ SEQ_T_EFFICIENCY_CP_CONC �Ѵ��ڡ�');
    END IF;
END;
/
prompt
prompt ���ڴ����¼���Ϊ 8200000000018068 �Ľű�
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
      dbms_output.put_line('�ű�����������Ϊ T_PF_CP_CONC �Ѵ��ڡ�');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table T_PF_CP_CONC
      is ''���׮���������������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_PF_CP_CONC.READ_ID
      is ''�ֶ�Ψһ��ʶ''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_PF_CP_CONC.DETECT_TASK_NO
      is ''�춨������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_PF_CP_CONC.EQUIP_CATEG
      is ''�豸���''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_PF_CP_CONC.SYS_NO
      is ''ϵͳ���''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_PF_CP_CONC.DETECT_EQUIP_NO
      is ''�춨��̨���''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_PF_CP_CONC.DETECT_UNIT_NO
      is ''�춨��Ԫ���''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_PF_CP_CONC.BAR_CODE
      is ''�豸������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_PF_CP_CONC.DETECT_DATE
      is ''�춨ʱ��''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_PF_CP_CONC.PORT_CODE
      is ''ǹ�ڱ��''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_PF_CP_CONC.PARA_INDEX
      is ''�춨���''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_PF_CP_CONC.DETECT_ITEM_POINT
      is ''�춨�����''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_PF_CP_CONC.IS_VALID
      is ''��Ч��־''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_PF_CP_CONC.IN_VOLT
      is ''�����ѹ(V)''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_PF_CP_CONC.OUT_VOLT
      is ''�����ѹ(V)''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_PF_CP_CONC.OUT_CURRENT
      is ''�������(A)''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_PF_CP_CONC.STATE
      is ''״̬ VW_CP_ EFFICIENCY_STATE''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_PF_CP_CONC.PF
      is ''��������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_PF_CP_CONC.CONC_CODE
      is ''������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_PF_CP_CONC.WRITE_DATE
      is ''�춨ϵͳд��ʱ��''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_PF_CP_CONC.HANDLE_FLAG
      is ''������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_PF_CP_CONC.HANDLE_DATE
      is ''����ʱ��''
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
      dbms_output.put_line('�ű�����������Ϊ PK_T_PF_CP_CONC �Ѵ��ڡ�');
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
      dbms_output.put_line('�ű�����������Ϊ SEQ_T_PF_CP_CONC �Ѵ��ڡ�');
    END IF;
END;
/
prompt
prompt ���ڴ����¼���Ϊ 8200000000018069 �Ľű�
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
      dbms_output.put_line('�ű�����������Ϊ T_VOLT_RIPPLE_CP_CONC �Ѵ��ڡ�');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table T_VOLT_RIPPLE_CP_CONC
      is ''���׮��ѹ�Ʋ������������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_VOLT_RIPPLE_CP_CONC.READ_ID
      is ''�ֶ�Ψһ��ʶ''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_VOLT_RIPPLE_CP_CONC.DETECT_TASK_NO
      is ''�춨������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_VOLT_RIPPLE_CP_CONC.EQUIP_CATEG
      is ''�豸���''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_VOLT_RIPPLE_CP_CONC.SYS_NO
      is ''ϵͳ���''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_VOLT_RIPPLE_CP_CONC.DETECT_EQUIP_NO
      is ''�춨��̨���''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_VOLT_RIPPLE_CP_CONC.DETECT_UNIT_NO
      is ''�춨��Ԫ���''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_VOLT_RIPPLE_CP_CONC.BAR_CODE
      is ''�豸������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_VOLT_RIPPLE_CP_CONC.DETECT_DATE
      is ''�춨ʱ��''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_VOLT_RIPPLE_CP_CONC.PORT_CODE
      is ''ǹ�ڱ��''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_VOLT_RIPPLE_CP_CONC.PARA_INDEX
      is ''�춨���''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_VOLT_RIPPLE_CP_CONC.DETECT_ITEM_POINT
      is ''�춨�����''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_VOLT_RIPPLE_CP_CONC.IS_VALID
      is ''��Ч��־''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_VOLT_RIPPLE_CP_CONC.IN_VOLT
      is ''�����ѹ(V)''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_VOLT_RIPPLE_CP_CONC.OUT_VOLT
      is ''�����ѹ(V)''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_VOLT_RIPPLE_CP_CONC.OUT_CURRENT
      is ''�������(A)''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_VOLT_RIPPLE_CP_CONC.CREST_RATIO
      is ''��ֵϵ��(%)''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_VOLT_RIPPLE_CP_CONC.EFFECTIVE_VALUE
      is ''��Чֵϵ��(%)''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_VOLT_RIPPLE_CP_CONC.CONC_CODE
      is ''������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_VOLT_RIPPLE_CP_CONC.WRITE_DATE
      is ''�춨ϵͳд��ʱ��''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_VOLT_RIPPLE_CP_CONC.HANDLE_FLAG
      is ''������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_VOLT_RIPPLE_CP_CONC.HANDLE_DATE
      is ''����ʱ��''
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
      dbms_output.put_line('�ű�����������Ϊ PK_T_VOLT_RIPPLE_CP_CONC �Ѵ��ڡ�');
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
      dbms_output.put_line('�ű�����������Ϊ SEQ_T_VOLT_RIPPLE_CP_CONC �Ѵ��ڡ�');
    END IF;
END;
/
prompt
prompt ���ڴ����¼���Ϊ 8200000000018070 �Ľű�
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
      dbms_output.put_line('�ű�����������Ϊ T_LOWVOLT_AUXILIARY_CP_CONC �Ѵ��ڡ�');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table T_LOWVOLT_AUXILIARY_CP_CONC
      is ''���׮��ѹ������Դ�������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_LOWVOLT_AUXILIARY_CP_CONC.READ_ID
      is ''�ֶ�Ψһ��ʶ''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_LOWVOLT_AUXILIARY_CP_CONC.DETECT_TASK_NO
      is ''�춨������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_LOWVOLT_AUXILIARY_CP_CONC.EQUIP_CATEG
      is ''�豸���''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_LOWVOLT_AUXILIARY_CP_CONC.SYS_NO
      is ''ϵͳ���''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_LOWVOLT_AUXILIARY_CP_CONC.DETECT_EQUIP_NO
      is ''�춨��̨���''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_LOWVOLT_AUXILIARY_CP_CONC.DETECT_UNIT_NO
      is ''�춨��Ԫ���''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_LOWVOLT_AUXILIARY_CP_CONC.BAR_CODE
      is ''�豸������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_LOWVOLT_AUXILIARY_CP_CONC.DETECT_DATE
      is ''�춨ʱ��''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_LOWVOLT_AUXILIARY_CP_CONC.PORT_CODE
      is ''ǹ�ڱ��''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_LOWVOLT_AUXILIARY_CP_CONC.PARA_INDEX
      is ''�춨���''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_LOWVOLT_AUXILIARY_CP_CONC.DETECT_ITEM_POINT
      is ''�춨�����''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_LOWVOLT_AUXILIARY_CP_CONC.IS_VALID
      is ''��Ч��־''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_LOWVOLT_AUXILIARY_CP_CONC.MODEL
      is ''ģʽ  VW_LOWVOLT_AUXILIARY_MODEL''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_LOWVOLT_AUXILIARY_CP_CONC.OUT_VOLT
      is ''�����ѹ(V)''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_LOWVOLT_AUXILIARY_CP_CONC.OUT_CURRENT
      is ''�������(A)''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_LOWVOLT_AUXILIARY_CP_CONC.OFFSET
      is ''ƫ��(V)''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_LOWVOLT_AUXILIARY_CP_CONC.CONC_CODE
      is ''������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_LOWVOLT_AUXILIARY_CP_CONC.WRITE_DATE
      is ''�춨ϵͳд��ʱ��''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_LOWVOLT_AUXILIARY_CP_CONC.HANDLE_FLAG
      is ''������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_LOWVOLT_AUXILIARY_CP_CONC.HANDLE_DATE
      is ''����ʱ��''
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
      dbms_output.put_line('�ű�����������Ϊ PK_T_LOWVOLT_AUXILIARY_CP_CONC �Ѵ��ڡ�');
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
      dbms_output.put_line('�ű�����������Ϊ SEQ_LOWVOLT_AUXILIARY_CP_CONC �Ѵ��ڡ�');
    END IF;
END;
/
prompt
prompt ���ڴ����¼���Ϊ 8200000000018071 �Ľű�
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
      dbms_output.put_line('�ű�����������Ϊ T_OPEN_PROTECT_CP_CONC �Ѵ��ڡ�');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table T_OPEN_PROTECT_CP_CONC
      is ''���׮���ű���������۱�''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_OPEN_PROTECT_CP_CONC.READ_ID
      is ''�ֶ�Ψһ��ʶ''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_OPEN_PROTECT_CP_CONC.DETECT_TASK_NO
      is ''�춨������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_OPEN_PROTECT_CP_CONC.EQUIP_CATEG
      is ''�豸���''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_OPEN_PROTECT_CP_CONC.SYS_NO
      is ''ϵͳ���''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_OPEN_PROTECT_CP_CONC.DETECT_EQUIP_NO
      is ''�춨��̨���''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_OPEN_PROTECT_CP_CONC.DETECT_UNIT_NO
      is ''�춨��Ԫ���''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_OPEN_PROTECT_CP_CONC.BAR_CODE
      is ''�豸������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_OPEN_PROTECT_CP_CONC.DETECT_DATE
      is ''�춨ʱ��''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_OPEN_PROTECT_CP_CONC.PORT_CODE
      is ''ǹ�ڱ��''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_OPEN_PROTECT_CP_CONC.PARA_INDEX
      is ''�춨���''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_OPEN_PROTECT_CP_CONC.DETECT_ITEM_POINT
      is ''�춨�����''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_OPEN_PROTECT_CP_CONC.IS_VALID
      is ''��Ч��־''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_OPEN_PROTECT_CP_CONC.DETECT_CONTENT
      is ''������Ŀ  VW_OPEN_PROTECT_CONC_CODE''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_OPEN_PROTECT_CP_CONC.CONC_CODE
      is ''������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_OPEN_PROTECT_CP_CONC.WRITE_DATE
      is ''�춨ϵͳд��ʱ��''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_OPEN_PROTECT_CP_CONC.HANDLE_FLAG
      is ''������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_OPEN_PROTECT_CP_CONC.HANDLE_DATE
      is ''����ʱ��''
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
      dbms_output.put_line('�ű�����������Ϊ PK_T_OPEN_PROTECT_CP_CONC �Ѵ��ڡ�');
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
      dbms_output.put_line('�ű�����������Ϊ SEQ_T_OPEN_PROTECT_CP_CONC �Ѵ��ڡ�');
    END IF;
END;
/
prompt
prompt ���ڴ����¼���Ϊ 8200000000018072 �Ľű�
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
      dbms_output.put_line('�ű�����������Ϊ T_SIGNAL_BREAK_CP_CONC �Ѵ��ڡ�');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table T_SIGNAL_BREAK_CP_CONC
      is ''���׮���Ӽ���źŶϿ��������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_SIGNAL_BREAK_CP_CONC.READ_ID
      is ''�ֶ�Ψһ��ʶ''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_SIGNAL_BREAK_CP_CONC.DETECT_TASK_NO
      is ''�춨������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_SIGNAL_BREAK_CP_CONC.EQUIP_CATEG
      is ''�豸���''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_SIGNAL_BREAK_CP_CONC.SYS_NO
      is ''ϵͳ���''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_SIGNAL_BREAK_CP_CONC.DETECT_EQUIP_NO
      is ''�춨��̨���''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_SIGNAL_BREAK_CP_CONC.DETECT_UNIT_NO
      is ''�춨��Ԫ���''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_SIGNAL_BREAK_CP_CONC.BAR_CODE
      is ''�豸������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_SIGNAL_BREAK_CP_CONC.DETECT_DATE
      is ''�춨ʱ��''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_SIGNAL_BREAK_CP_CONC.PORT_CODE
      is ''ǹ�ڱ��''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_SIGNAL_BREAK_CP_CONC.PARA_INDEX
      is ''�춨���''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_SIGNAL_BREAK_CP_CONC.DETECT_ITEM_POINT
      is ''�춨�����''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_SIGNAL_BREAK_CP_CONC.IS_VALID
      is ''��Ч��־''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_SIGNAL_BREAK_CP_CONC.STATE
      is ''���״̬ VW_SIGNAL_BREAK_STATE''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_SIGNAL_BREAK_CP_CONC.OUT_VOLT
      is ''�����ѹ(V)''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_SIGNAL_BREAK_CP_CONC.OUT_CURRENT
      is ''�������(A)''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_SIGNAL_BREAK_CP_CONC.TIME
      is ''��������5A����ʱ�䣨ms��''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_SIGNAL_BREAK_CP_CONC.BREAK_TIME
      is ''�Ͽ�K1��K2ʱ��(ms)''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_SIGNAL_BREAK_CP_CONC.UNLOCK_VOLT
      is ''���������ʱ�����ӿڵ�ѹ��V��''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_SIGNAL_BREAK_CP_CONC.CONC_CODE
      is ''������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_SIGNAL_BREAK_CP_CONC.WRITE_DATE
      is ''�춨ϵͳд��ʱ��''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_SIGNAL_BREAK_CP_CONC.HANDLE_FLAG
      is ''������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_SIGNAL_BREAK_CP_CONC.HANDLE_DATE
      is ''����ʱ��''
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
      dbms_output.put_line('�ű�����������Ϊ PK_T_SIGNAL_BREAK_CP_CONC �Ѵ��ڡ�');
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
      dbms_output.put_line('�ű�����������Ϊ SEQ_T_SIGNAL_BREAK_CP_CONC �Ѵ��ڡ�');
    END IF;
END;
/
prompt
prompt ���ڴ����¼���Ϊ 8200000000018073 �Ľű�
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
      dbms_output.put_line('�ű�����������Ϊ T_INSULATE_ABNORMAL_CP_CONC �Ѵ��ڡ�');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table T_INSULATE_ABNORMAL_CP_CONC
      is ''���׮��Ե�쳣�������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_INSULATE_ABNORMAL_CP_CONC.READ_ID
      is ''�ֶ�Ψһ��ʶ''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_INSULATE_ABNORMAL_CP_CONC.DETECT_TASK_NO
      is ''�춨������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_INSULATE_ABNORMAL_CP_CONC.EQUIP_CATEG
      is ''�豸���''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_INSULATE_ABNORMAL_CP_CONC.SYS_NO
      is ''ϵͳ���''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_INSULATE_ABNORMAL_CP_CONC.DETECT_EQUIP_NO
      is ''�춨��̨���''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_INSULATE_ABNORMAL_CP_CONC.DETECT_UNIT_NO
      is ''�춨��Ԫ���''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_INSULATE_ABNORMAL_CP_CONC.BAR_CODE
      is ''�豸������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_INSULATE_ABNORMAL_CP_CONC.DETECT_DATE
      is ''�춨ʱ��''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_INSULATE_ABNORMAL_CP_CONC.PORT_CODE
      is ''ǹ�ڱ��''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_INSULATE_ABNORMAL_CP_CONC.PARA_INDEX
      is ''�춨���''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_INSULATE_ABNORMAL_CP_CONC.DETECT_ITEM_POINT
      is ''�춨�����''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_INSULATE_ABNORMAL_CP_CONC.IS_VALID
      is ''��Ч��־''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_INSULATE_ABNORMAL_CP_CONC.DETECT_CONTENT
      is ''������Ŀ VW_INSULATE_ABNORMAL_CONC_CODE''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_INSULATE_ABNORMAL_CP_CONC.CONC_CODE
      is ''������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_INSULATE_ABNORMAL_CP_CONC.WRITE_DATE
      is ''�춨ϵͳд��ʱ��''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_INSULATE_ABNORMAL_CP_CONC.HANDLE_FLAG
      is ''������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_INSULATE_ABNORMAL_CP_CONC.HANDLE_DATE
      is ''����ʱ��''
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
      dbms_output.put_line('�ű�����������Ϊ PK_T_INSULATE_ABNORMAL_CP_CONC �Ѵ��ڡ�');
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
      dbms_output.put_line('�ű�����������Ϊ SEQ_INSULATE_ABNORMAL_CP_CONC �Ѵ��ڡ�');
    END IF;
END;
/
prompt
prompt ���ڴ����¼���Ϊ 8200000000018080 �Ľű�
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
      dbms_output.put_line('�ű�����������Ϊ T_COMM_BREAK_CP_CONC �Ѵ��ڡ�');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table T_COMM_BREAK_CP_CONC
      is ''���׮ͨ���ж��������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_COMM_BREAK_CP_CONC.READ_ID
      is ''�ֶ�Ψһ��ʶ''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_COMM_BREAK_CP_CONC.DETECT_TASK_NO
      is ''�춨������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_COMM_BREAK_CP_CONC.EQUIP_CATEG
      is ''�豸���''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_COMM_BREAK_CP_CONC.SYS_NO
      is ''ϵͳ���''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_COMM_BREAK_CP_CONC.DETECT_EQUIP_NO
      is ''�춨��̨���''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_COMM_BREAK_CP_CONC.DETECT_UNIT_NO
      is ''�춨��Ԫ���''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_COMM_BREAK_CP_CONC.BAR_CODE
      is ''�豸������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_COMM_BREAK_CP_CONC.DETECT_DATE
      is ''�춨ʱ��''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_COMM_BREAK_CP_CONC.PORT_CODE
      is ''ǹ�ڱ��''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_COMM_BREAK_CP_CONC.PARA_INDEX
      is ''�춨���''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_COMM_BREAK_CP_CONC.DETECT_ITEM_POINT
      is ''�춨�����''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_COMM_BREAK_CP_CONC.IS_VALID
      is ''��Ч��־''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_COMM_BREAK_CP_CONC.STATE
      is ''���״̬  VW_COMM_BREAK_STATE''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_COMM_BREAK_CP_CONC.OUT_VOLT
      is ''�����ѹ(V)''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_COMM_BREAK_CP_CONC.OUT_CURRENT
      is ''�������(A)''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_COMM_BREAK_CP_CONC.OVERTIME_TIME
      is ''ͨ�ų�ʱֹͣ���ʱ��(s)''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_COMM_BREAK_CP_CONC.BREAK_TIME
      is ''ͨ���ж�ֹͣ������Դʱ��(s)''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_COMM_BREAK_CP_CONC.IS_RECONNECT
      is ''�Ƿ���������������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_COMM_BREAK_CP_CONC.IS_WARN
      is ''�Ƿ�澯��ʾ''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_COMM_BREAK_CP_CONC.CONC_CODE
      is ''������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_COMM_BREAK_CP_CONC.WRITE_DATE
      is ''�춨ϵͳд��ʱ��''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_COMM_BREAK_CP_CONC.HANDLE_FLAG
      is ''������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_COMM_BREAK_CP_CONC.HANDLE_DATE
      is ''����ʱ��''
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
      dbms_output.put_line('�ű�����������Ϊ PK_T_COMM_BREAK_CP_CONC �Ѵ��ڡ�');
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
      dbms_output.put_line('�ű�����������Ϊ SEQ_T_COMM_BREAK_CP_CONC �Ѵ��ڡ�');
    END IF;
END;
/
prompt
prompt ���ڴ����¼���Ϊ 8200000000018091 �Ľű�
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
      dbms_output.put_line('�ű�����������Ϊ T_PROTECT_LANDING_CP_CONC �Ѵ��ڡ�');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table T_PROTECT_LANDING_CP_CONC
      is ''���׮�����ӵ�������������ۣ�ֱ������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_PROTECT_LANDING_CP_CONC.READ_ID
      is ''�ֶ�Ψһ��ʶ''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_PROTECT_LANDING_CP_CONC.DETECT_TASK_NO
      is ''�춨������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_PROTECT_LANDING_CP_CONC.EQUIP_CATEG
      is ''�豸���''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_PROTECT_LANDING_CP_CONC.SYS_NO
      is ''ϵͳ���''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_PROTECT_LANDING_CP_CONC.DETECT_EQUIP_NO
      is ''�춨��̨���''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_PROTECT_LANDING_CP_CONC.DETECT_UNIT_NO
      is ''�춨��Ԫ���''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_PROTECT_LANDING_CP_CONC.BAR_CODE
      is ''�豸������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_PROTECT_LANDING_CP_CONC.DETECT_DATE
      is ''�춨ʱ��''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_PROTECT_LANDING_CP_CONC.PORT_CODE
      is ''ǹ�ڱ��''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_PROTECT_LANDING_CP_CONC.PARA_INDEX
      is ''�춨���''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_PROTECT_LANDING_CP_CONC.DETECT_ITEM_POINT
      is ''�춨�����''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_PROTECT_LANDING_CP_CONC.IS_VALID
      is ''��Ч��־''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_PROTECT_LANDING_CP_CONC.STATE
      is ''���״̬  VW_PROTECT_LANDING_STATE''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_PROTECT_LANDING_CP_CONC.OUT_VOLT
      is ''�����ѹ(V)''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_PROTECT_LANDING_CP_CONC.OUT_CURRENT
      is ''�������(A)''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_PROTECT_LANDING_CP_CONC.BREAK_TIME
      is ''�Ͽ�K1��K2ʱ��(ms)''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_PROTECT_LANDING_CP_CONC.UNLOCK_VOLT
      is ''���������ʱ�����ӿڵ�ѹ��V��''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_PROTECT_LANDING_CP_CONC.CONC_CODE
      is ''������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_PROTECT_LANDING_CP_CONC.WRITE_DATE
      is ''�춨ϵͳд��ʱ��''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_PROTECT_LANDING_CP_CONC.HANDLE_FLAG
      is ''������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_PROTECT_LANDING_CP_CONC.HANDLE_DATE
      is ''����ʱ��''
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
      dbms_output.put_line('�ű�����������Ϊ PK_T_PROTECT_LANDING_CP_CONC �Ѵ��ڡ�');
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
      dbms_output.put_line('�ű�����������Ϊ SEQ_T_PROTECT_LANDING_CP_CONC �Ѵ��ڡ�');
    END IF;
END;
/
prompt
prompt ���ڴ����¼���Ϊ 8200000000018093 �Ľű�
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
      dbms_output.put_line('�ű�����������Ϊ T_POWERUP_MESSAGE_CP_CONC �Ѵ��ڡ�');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table T_POWERUP_MESSAGE_CP_CONC
      is ''���׮��ѹ�����ϵ缰������ֽ׶α��Ĳ��Խ��۱�''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_POWERUP_MESSAGE_CP_CONC.READ_ID
      is ''�ֶ�Ψһ��ʶ''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_POWERUP_MESSAGE_CP_CONC.DETECT_TASK_NO
      is ''�춨������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_POWERUP_MESSAGE_CP_CONC.EQUIP_CATEG
      is ''�豸���''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_POWERUP_MESSAGE_CP_CONC.SYS_NO
      is ''ϵͳ���''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_POWERUP_MESSAGE_CP_CONC.DETECT_EQUIP_NO
      is ''�춨��̨���''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_POWERUP_MESSAGE_CP_CONC.DETECT_UNIT_NO
      is ''�춨��Ԫ���''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_POWERUP_MESSAGE_CP_CONC.BAR_CODE
      is ''�豸������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_POWERUP_MESSAGE_CP_CONC.DETECT_DATE
      is ''�춨ʱ��''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_POWERUP_MESSAGE_CP_CONC.PORT_CODE
      is ''ǹ�ڱ��''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_POWERUP_MESSAGE_CP_CONC.PARA_INDEX
      is ''�춨���''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_POWERUP_MESSAGE_CP_CONC.DETECT_ITEM_POINT
      is ''�춨�����''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_POWERUP_MESSAGE_CP_CONC.IS_VALID
      is ''��Ч��־''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_POWERUP_MESSAGE_CP_CONC.DETECT_CONTENT
      is ''������Ŀ  VW_POWERUP_MESSAGE_CONC_CODE''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_POWERUP_MESSAGE_CP_CONC.CONC_CODE
      is ''������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_POWERUP_MESSAGE_CP_CONC.WRITE_DATE
      is ''�춨ϵͳд��ʱ��''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_POWERUP_MESSAGE_CP_CONC.HANDLE_FLAG
      is ''������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_POWERUP_MESSAGE_CP_CONC.HANDLE_DATE
      is ''����ʱ��''
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
      dbms_output.put_line('�ű�����������Ϊ PK_T_POWERUP_MESSAGE_CP_CONC �Ѵ��ڡ�');
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
      dbms_output.put_line('�ű�����������Ϊ SEQ_T_POWERUP_MESSAGE_CP_CONC �Ѵ��ڡ�');
    END IF;
END;
/
prompt
prompt ���ڴ����¼���Ϊ 8200000000018095 �Ľű�
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
      dbms_output.put_line('�ű�����������Ϊ T_CONFIG_MSG_CP_CONC �Ѵ��ڡ�');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table T_CONFIG_MSG_CP_CONC
      is ''���׮������ý׶α��Ĳ��Խ��۱�''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_CONFIG_MSG_CP_CONC.READ_ID
      is ''�ֶ�Ψһ��ʶ''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_CONFIG_MSG_CP_CONC.DETECT_TASK_NO
      is ''�춨������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_CONFIG_MSG_CP_CONC.EQUIP_CATEG
      is ''�豸���''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_CONFIG_MSG_CP_CONC.SYS_NO
      is ''ϵͳ���''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_CONFIG_MSG_CP_CONC.DETECT_EQUIP_NO
      is ''�춨��̨���''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_CONFIG_MSG_CP_CONC.DETECT_UNIT_NO
      is ''�춨��Ԫ���''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_CONFIG_MSG_CP_CONC.BAR_CODE
      is ''�豸������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_CONFIG_MSG_CP_CONC.DETECT_DATE
      is ''�춨ʱ��''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_CONFIG_MSG_CP_CONC.PORT_CODE
      is ''ǹ�ڱ��''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_CONFIG_MSG_CP_CONC.PARA_INDEX
      is ''�춨���''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_CONFIG_MSG_CP_CONC.DETECT_ITEM_POINT
      is ''�춨�����''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_CONFIG_MSG_CP_CONC.IS_VALID
      is ''��Ч��־''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_CONFIG_MSG_CP_CONC.DETECT_CONTENT
      is ''������Ŀ  VW_CONFIG_MSG_CONC_CODE''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_CONFIG_MSG_CP_CONC.CONC_CODE
      is ''������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_CONFIG_MSG_CP_CONC.WRITE_DATE
      is ''�춨ϵͳд��ʱ��''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_CONFIG_MSG_CP_CONC.HANDLE_FLAG
      is ''������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_CONFIG_MSG_CP_CONC.HANDLE_DATE
      is ''����ʱ��''
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
      dbms_output.put_line('�ű�����������Ϊ PK_T_CONFIG_MSG_CP_CONC �Ѵ��ڡ�');
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
      dbms_output.put_line('�ű�����������Ϊ SEQ_T_CONFIG_MSG_CP_CONC �Ѵ��ڡ�');
    END IF;
END;
/
prompt
prompt ���ڴ����¼���Ϊ 8200000000018099 �Ľű�
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
      dbms_output.put_line('�ű�����������Ϊ T_CHARGE_MEAASGE_CP_CONC �Ѵ��ڡ�');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table T_CHARGE_MEAASGE_CP_CONC
      is ''���׮���׶α��Ĳ��Խ��۱�''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_CHARGE_MEAASGE_CP_CONC.READ_ID
      is ''�ֶ�Ψһ��ʶ''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_CHARGE_MEAASGE_CP_CONC.DETECT_TASK_NO
      is ''�춨������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_CHARGE_MEAASGE_CP_CONC.EQUIP_CATEG
      is ''�豸���''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_CHARGE_MEAASGE_CP_CONC.SYS_NO
      is ''ϵͳ���''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_CHARGE_MEAASGE_CP_CONC.DETECT_EQUIP_NO
      is ''�춨��̨���''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_CHARGE_MEAASGE_CP_CONC.DETECT_UNIT_NO
      is ''�춨��Ԫ���''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_CHARGE_MEAASGE_CP_CONC.BAR_CODE
      is ''�豸������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_CHARGE_MEAASGE_CP_CONC.DETECT_DATE
      is ''�춨ʱ��''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_CHARGE_MEAASGE_CP_CONC.PORT_CODE
      is ''ǹ�ڱ��''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_CHARGE_MEAASGE_CP_CONC.PARA_INDEX
      is ''�춨���''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_CHARGE_MEAASGE_CP_CONC.DETECT_ITEM_POINT
      is ''�춨�����''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_CHARGE_MEAASGE_CP_CONC.IS_VALID
      is ''��Ч��־''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_CHARGE_MEAASGE_CP_CONC.DETECT_CONTENT
      is ''������Ŀ  VW_CHARGE_MEAASGE_CONC_CODE''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_CHARGE_MEAASGE_CP_CONC.CONC_CODE
      is ''������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_CHARGE_MEAASGE_CP_CONC.WRITE_DATE
      is ''�춨ϵͳд��ʱ��''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_CHARGE_MEAASGE_CP_CONC.HANDLE_FLAG
      is ''������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_CHARGE_MEAASGE_CP_CONC.HANDLE_DATE
      is ''����ʱ��''
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
      dbms_output.put_line('�ű�����������Ϊ PK_T_CHARGE_MEAASGE_CP_CONC �Ѵ��ڡ�');
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
      dbms_output.put_line('�ű�����������Ϊ SEQ_T_CHARGE_MEAASGE_CP_CONC �Ѵ��ڡ�');
    END IF;
END;
/
prompt
prompt ���ڴ����¼���Ϊ 8200000000018101 �Ľű�
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
      dbms_output.put_line('�ű�����������Ϊ T_CHARGEEND_MEAASGE_CP_CONC �Ѵ��ڡ�');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table T_CHARGEEND_MEAASGE_CP_CONC
      is ''���׮�������׶α��Ĳ��Խ��۱�''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_CHARGEEND_MEAASGE_CP_CONC.READ_ID
      is ''�ֶ�Ψһ��ʶ''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_CHARGEEND_MEAASGE_CP_CONC.DETECT_TASK_NO
      is ''�춨������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_CHARGEEND_MEAASGE_CP_CONC.EQUIP_CATEG
      is ''�豸���''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_CHARGEEND_MEAASGE_CP_CONC.SYS_NO
      is ''ϵͳ���''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_CHARGEEND_MEAASGE_CP_CONC.DETECT_EQUIP_NO
      is ''�춨��̨���''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_CHARGEEND_MEAASGE_CP_CONC.DETECT_UNIT_NO
      is ''�춨��Ԫ���''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_CHARGEEND_MEAASGE_CP_CONC.BAR_CODE
      is ''�豸������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_CHARGEEND_MEAASGE_CP_CONC.DETECT_DATE
      is ''�춨ʱ��''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_CHARGEEND_MEAASGE_CP_CONC.PORT_CODE
      is ''ǹ�ڱ��''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_CHARGEEND_MEAASGE_CP_CONC.PARA_INDEX
      is ''�춨���''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_CHARGEEND_MEAASGE_CP_CONC.DETECT_ITEM_POINT
      is ''�춨�����''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_CHARGEEND_MEAASGE_CP_CONC.IS_VALID
      is ''��Ч��־''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_CHARGEEND_MEAASGE_CP_CONC.DETECT_CONTENT
      is ''������Ŀ VW_CHARGEEND_MEAASGE_CONC_CODE''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_CHARGEEND_MEAASGE_CP_CONC.CONC_CODE
      is ''������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_CHARGEEND_MEAASGE_CP_CONC.WRITE_DATE
      is ''�춨ϵͳд��ʱ��''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_CHARGEEND_MEAASGE_CP_CONC.HANDLE_FLAG
      is ''������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_CHARGEEND_MEAASGE_CP_CONC.HANDLE_DATE
      is ''����ʱ��''
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
      dbms_output.put_line('�ű�����������Ϊ PK_T_CHARGEEND_MEAASGE_CP_CONC �Ѵ��ڡ�');
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
      dbms_output.put_line('�ű�����������Ϊ SEQ_CHARGEEND_MEAASGE_CP_CONC �Ѵ��ڡ�');
    END IF;
END;
/
prompt
prompt ���ڴ����¼���Ϊ 8200000000018111 �Ľű�
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
prompt ���ڴ����¼���Ϊ 8200000000018227 �Ľű�
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
      dbms_output.put_line('�ű�����������Ϊ D_EQUIP_INST_INFO �Ѵ��ڡ�');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table D_EQUIP_INST_INFO
      is ''�豸��װ��Ϣ��''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_EQUIP_INST_INFO.INST_ID
      is ''��װ��¼��ʶ''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_EQUIP_INST_INFO.EQUIP_CATEG
      is ''�豸���''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_EQUIP_INST_INFO.BAR_CODE
      is ''�豸������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_EQUIP_INST_INFO.STATUS_CODE
      is ''�豸״̬''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_EQUIP_INST_INFO.ORG_NO
      is ''���絥λ''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_EQUIP_INST_INFO.LONGITUDE
      is ''����''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_EQUIP_INST_INFO.LATITUDE
      is ''γ��''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_EQUIP_INST_INFO.OPERATE_TYPE
      is ''�������͡�01����װ��02�����''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_EQUIP_INST_INFO.OPERATE_DATE
      is ''��������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_EQUIP_INST_INFO.OPERATE_NO
      is ''������Ա''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_EQUIP_INST_INFO.REMARK
      is ''��ע''
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
      dbms_output.put_line('�ű�����������Ϊ PK_D_EQUIP_INST_INFO �Ѵ��ڡ�');
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
      dbms_output.put_line('�ű�����������Ϊ SEQ_D_EQUIP_INST_INFO �Ѵ��ڡ�');
    END IF;
END;
/
prompt
prompt ���ڴ����¼���Ϊ 8200000000018408 �Ľű�
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
      dbms_output.put_line('�ű�����������Ϊ T_PORT_CP_CONC �Ѵ��ڡ�');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table T_PORT_CP_CONC
      is ''���׮ǹ�ڼ춨����۱�''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_PORT_CP_CONC.READ_ID
      is ''�ֶ�Ψһ��ʶ''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_PORT_CP_CONC.DETECT_TASK_NO
      is ''�춨������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_PORT_CP_CONC.EQUIP_CATEG
      is ''�豸���''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_PORT_CP_CONC.SYS_NO
      is ''ϵͳ���''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_PORT_CP_CONC.DETECT_EQUIP_NO
      is ''�춨��̨���''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_PORT_CP_CONC.DETECT_UNIT_NO
      is ''�춨��Ԫ���''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_PORT_CP_CONC.BAR_CODE
      is ''�豸������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_PORT_CP_CONC.DETECT_DATE
      is ''�춨ʱ��''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_PORT_CP_CONC.DETECT_ITEM_NO
      is ''�춨����''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_PORT_CP_CONC.DETECT_ITEM_NAME
      is ''�춨������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_PORT_CP_CONC.PORT_CODE
      is ''ǹ�ڱ��''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_PORT_CP_CONC.PARA_INDEX
      is ''�춨���''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_PORT_CP_CONC.IS_VALID
      is ''��Ч��־''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_PORT_CP_CONC.CONC_CODE
      is ''������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_PORT_CP_CONC.WRITE_DATE
      is ''�춨ϵͳд��ʱ��''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_PORT_CP_CONC.HANDLE_FLAG
      is ''������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_PORT_CP_CONC.HANDLE_DATE
      is ''����ʱ��''
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
      dbms_output.put_line('�ű�����������Ϊ PK_T_PORT_CP_CONC �Ѵ��ڡ�');
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
      dbms_output.put_line('�ű�����������Ϊ SEQ_T_PORT_CP_CONC �Ѵ��ڡ�');
    END IF;
END;
/
prompt
prompt ���ڴ����¼���Ϊ 8200000000018482 �Ľű�
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
      is ''�豸���''
    ';  
    EXECUTE IMMEDIATE
    '
      comment on column D_CHARGE_POINT.OUT_RATED_CURRENT
      is ''������������������A��''
    '; 
    EXECUTE IMMEDIATE
    '
      comment on table D_CHARGE_POINT
      is ''���׮������Ϣ��''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_CHARGE_POINT.DEVI_ID
      is ''������ʶ''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_CHARGE_POINT.DEVI_NAME
      is ''�豸����''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_CHARGE_POINT.SORT_CODE
      is ''�������׮���''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_CHARGE_POINT.DEVI_TYPE
      is ''�豸�ͺ�''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_CHARGE_POINT.BAR_CODE
      is ''�豸������''
    ';

    EXECUTE IMMEDIATE
    '
      comment on column D_CHARGE_POINT.EQUIP_CODE
      is ''�豸��''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_CHARGE_POINT.ERP_BATCH_NO
      is ''���Ϻ�''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_CHARGE_POINT.ASSET_NO
      is ''�ʲ����''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_CHARGE_POINT.LOT_NO
      is ''�������κ�''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_CHARGE_POINT.ORG_NO
      is ''����λ''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_CHARGE_POINT.ORG_TYPE
      is ''��λ���''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_CHARGE_POINT.PR_ORG
      is ''��Ȩ��λ���''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_CHARGE_POINT.BELONG_DEPT
      is ''��ǰ���ڵ�λ''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_CHARGE_POINT.CONTRACT_ID
      is ''������ͬ���,�����붩����ͬʵ����й���''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_CHARGE_POINT.CONTRACT_NO
      is ''��ͬ���''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_CHARGE_POINT.RCV_ID
      is ''�������յ�ID''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_CHARGE_POINT.ARRIVE_BATCH_NO
      is ''�������κ�''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_CHARGE_POINT.AREA_CODE
      is ''��������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_CHARGE_POINT.STORE_AREA_SORT
      is ''���������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_CHARGE_POINT.WH_ID
      is ''�ⷿ��ʶ''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_CHARGE_POINT.WH_AREA_ID
      is ''������ʶ''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_CHARGE_POINT.STORE_AREA_ID
      is ''�������ʶ''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_CHARGE_POINT.STATUS_CODE
      is ''�豸״̬''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_CHARGE_POINT.LATEST_CHK_DATE
      is ''���һ�μ춨���ڡ�����������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_CHARGE_POINT.CHECKER_NO
      is ''У����Ա''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_CHARGE_POINT.INST_DATE
      is ''��װ����''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_CHARGE_POINT.RMV_DATE
      is ''�������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_CHARGE_POINT.MANUFACTURER
      is ''������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_CHARGE_POINT.MADE_DATE
      is ''��������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_CHARGE_POINT.MADE_NO
      is ''�������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_CHARGE_POINT.MADE_ADDR
      is ''��ַ''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_CHARGE_POINT.DEVI_CATEG
      is ''����''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_CHARGE_POINT.OUT_MAX_POWER
      is ''����������ʣ�kW��''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_CHARGE_POINT.IN_RATED_RV
      is ''������ѹ��V��''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_CHARGE_POINT.OUT_RATED_RV
      is ''������ѹ��V��''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_CHARGE_POINT.OUT_DOWN_RV
      is ''������޵�ѹ��V��''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_CHARGE_POINT.OUT_UP_RV
      is ''������޵�ѹ��V��''
    ';

    EXECUTE IMMEDIATE
    '
      comment on column D_CHARGE_POINT.OUT_MAX_CURRENT
      is ''�����������������A��''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_CHARGE_POINT.CABLE_LENGTH
      is ''���³���''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_CHARGE_POINT.IS_CONST_POWER
      is ''�㹦�ʹ���''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_CHARGE_POINT.CHARGE_PORT_NUM
      is ''��������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_CHARGE_POINT.IS_CTS
      is ''CTS���Ĺ���''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_CHARGE_POINT.IS_POWER_ASSIGN
      is ''��̬���ʷ��书��''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_CHARGE_POINT.CONNECT_MODE
      is ''����ģʽ''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_CHARGE_POINT.IS_BOUND
      is ''�Ƿ��Ѱ�''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_CHARGE_POINT.DOC_CREATE_DATE
      is ''��������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_CHARGE_POINT.DOC_CREATOR_NO
      is ''������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_CHARGE_POINT.CHARGE_CONTR_TYPE
      is ''���������ͺ�''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_CHARGE_POINT.CHARGE_CONTR_SPECE
      is ''�����������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_CHARGE_POINT.CHARGE_CONTR_MANUF
      is ''������������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_CHARGE_POINT.CHARGE_MODULE_TYPE
      is ''���ģ���ͺ�''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_CHARGE_POINT.CHARGE_MODULE_SPECE
      is ''���ģ����''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_CHARGE_POINT.CHARGE_MODULE_MANUF
      is ''���ģ�鳧��''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_CHARGE_POINT.CONNECTOR_TYPE
      is ''����װ���ͺ�''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_CHARGE_POINT.CONNECTOR_SPECE
      is ''����װ�ù��''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_CHARGE_POINT.CONNECTOR_MANUF
      is ''����װ�ó���''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_CHARGE_POINT.TCU_TYPE
      is ''TCU�ͺ�''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_CHARGE_POINT.TCU_SPECE
      is ''TCU���''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_CHARGE_POINT.TCU_MANUF
      is ''TCU����''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_CHARGE_POINT.AC_CONTA_TYPE
      is ''�����Ӵ����ͺ�''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_CHARGE_POINT.AC_CONTA_SPECE
      is ''�����Ӵ������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_CHARGE_POINT.AC_CONTA_MANUF
      is ''�����Ӵ�������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_CHARGE_POINT.HIGHVOL_CONTA_TYPE
      is ''��ѹ�Ӵ����ͺ�''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_CHARGE_POINT.HIGHVOL_CONTA_SPECE
      is ''��ѹ�Ӵ������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_CHARGE_POINT.HIGHVOL_CONTA_MANUF
      is ''��ѹ�Ӵ�������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_CHARGE_POINT.LEAK_PROTECT_TYPE
      is ''©�籣���ͺ�''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_CHARGE_POINT.LEAK_PROTECT_SPECE
      is ''©�籣�����''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_CHARGE_POINT.LEAK_PROTECT_MANUF
      is ''©�籣������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_CHARGE_POINT.FUSE_TYPE
      is ''�۶����ͺ�''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_CHARGE_POINT.FUSE_SPECE
      is ''�۶������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_CHARGE_POINT.FUSE_MANUF
      is ''�۶�������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_CHARGE_POINT.AUXIL_POWER_TYPE
      is ''������Դ�ͺ�''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_CHARGE_POINT.AUXIL_POWER_SPECE
      is ''������Դ���''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_CHARGE_POINT.AUXIL_POWER_MANUF
      is ''������Դ����''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_CHARGE_POINT.SCREEN_TYPE
      is ''��Ļ�ͺ�''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_CHARGE_POINT.SCREEN_SPECE
      is ''��Ļ���''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_CHARGE_POINT.SCREEN_MANUF
      is ''��Ļ����''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_CHARGE_POINT.CARD_READER_TYPE
      is ''�������ͺ�''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_CHARGE_POINT.CARD_READER_SPECE
      is ''���������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_CHARGE_POINT.CARD_READER_MANUF
      is ''����������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_CHARGE_POINT.ARREST_TYPE
      is ''�������ͺ�''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_CHARGE_POINT.ARREST_SPECE
      is ''���������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_CHARGE_POINT.ARREST_MANUF
      is ''����������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_CHARGE_POINT.CIRCU_BREAK_TYPE
      is ''��·���ͺ�''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_CHARGE_POINT.CIRCU_BREAK_SPECE
      is ''��·�����''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_CHARGE_POINT.CIRCU_BREAK_MANUF
      is ''��·������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_CHARGE_POINT.COOL_FAN_TYPE
      is ''ɢ�ȷ����ͺ�''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_CHARGE_POINT.COOL_FAN_SPECE
      is ''ɢ�ȷ��ȹ��''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_CHARGE_POINT.COOL_FAN_MANUF
      is ''ɢ�ȷ��ȳ���''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_CHARGE_POINT.SOUND_TYPE
      is ''�����ͺ�''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_CHARGE_POINT.SOUND_SPECE
      is ''������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_CHARGE_POINT.SOUND_MANUF
      is ''���쳧��''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_CHARGE_POINT.ANTENNA_4G_TYPE
      is ''4G�����ͺ�''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_CHARGE_POINT.ANTENNA_4G_SPECE
      is ''4G���߹��''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_CHARGE_POINT.ANTENNA_4G_MANUF
      is ''4G���߳���''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_CHARGE_POINT.ANTENNA_GPS_TYPE
      is ''GPS�����ͺ�''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_CHARGE_POINT.ANTENNA_GPS_SPECE
      is ''GPS���߹��''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_CHARGE_POINT.ANTENNA_GPS_MANU
      is ''GPS���߳���''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_CHARGE_POINT.REMARK
      is ''��ע''
    ';           
    ELSE
      dbms_output.put_line('�ű�����������Ϊ D_CHARGE_POINT �Ѵ��ڡ�');
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
      dbms_output.put_line('�ű�����������Ϊ PK_D_CHARGE_POINT �Ѵ��ڡ�');
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
      dbms_output.put_line('�ű�����������Ϊ SEQ_D_CHARGE_POINT �Ѵ��ڡ�');
    END IF;
END;
/
prompt
prompt ���ڴ����¼���Ϊ 8200000000018484 �Ľű�
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
      dbms_output.put_line('�ű�����������Ϊ C_ARRIVE_CHARGE_PARA �Ѵ��ڡ�');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table C_ARRIVE_CHARGE_PARA
      is ''�������׮����''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column C_ARRIVE_CHARGE_PARA.RCV_ID
      is ''�����뵽����Ϣ���й���''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column C_ARRIVE_CHARGE_PARA.MANUFACTURER
      is ''��������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column C_ARRIVE_CHARGE_PARA.MADE_DATE
      is ''��������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column C_ARRIVE_CHARGE_PARA.LOT_NO
      is ''��������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column C_ARRIVE_CHARGE_PARA.REMARK
      is ''��ע''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column C_ARRIVE_CHARGE_PARA.EQIP_PRC
      is ''�豸����''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column C_ARRIVE_CHARGE_PARA.SORT_CODE
      is ''���׮���''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column C_ARRIVE_CHARGE_PARA.DEVI_TYPE
      is ''�豸�ͺ�''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column C_ARRIVE_CHARGE_PARA.DEVI_CATEG
      is ''����''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column C_ARRIVE_CHARGE_PARA.OUT_MAX_POWER
      is ''�������ʣ�kW��''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column C_ARRIVE_CHARGE_PARA.IN_RATED_RV
      is ''������ѹ��V��''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column C_ARRIVE_CHARGE_PARA.OUT_RATED_RV
      is ''������ѹ��V��''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column C_ARRIVE_CHARGE_PARA.OUT_DOWN_RV
      is ''������޵�ѹ��V��''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column C_ARRIVE_CHARGE_PARA.OUT_UP_RV
      is ''������޵�ѹ��V��''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column C_ARRIVE_CHARGE_PARA.OUT_CURRENT
      is ''�����������������A��''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column C_ARRIVE_CHARGE_PARA.CABLE_LENGTH
      is ''���³���''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column C_ARRIVE_CHARGE_PARA.IS_CONST_POWER
      is ''�㹦�ʹ���''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column C_ARRIVE_CHARGE_PARA.CHARGE_PORT_NUM
      is ''��������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column C_ARRIVE_CHARGE_PARA.IS_CTS
      is ''CTS���Ĺ���''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column C_ARRIVE_CHARGE_PARA.IS_POWER_ASSIGN
      is ''��̬���ʷ��书��''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column C_ARRIVE_CHARGE_PARA.CONNECT_MODE
      is ''����ģʽ''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column C_ARRIVE_CHARGE_PARA.CHARGE_CONTR_TYPE
      is ''���������ͺ�''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column C_ARRIVE_CHARGE_PARA.CHARGE_MODULE_SPECE
      is ''���ģ����''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column C_ARRIVE_CHARGE_PARA.CHARGE_MODULE_MANUF
      is ''���ģ�鳧��''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column C_ARRIVE_CHARGE_PARA.CONNECTOR_TYPE
      is ''����װ���ͺ�''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column C_ARRIVE_CHARGE_PARA.CONNECTOR_SPECE
      is ''����װ�ù��''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column C_ARRIVE_CHARGE_PARA.CONNECTOR_MANUF
      is ''����װ�ó���''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column C_ARRIVE_CHARGE_PARA.TCU_TYPE
      is ''TCU�ͺ�''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column C_ARRIVE_CHARGE_PARA.TCU_SPECE
      is ''TCU���''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column C_ARRIVE_CHARGE_PARA.TCU_MANUF
      is ''TCU����''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column C_ARRIVE_CHARGE_PARA.AC_CONTA_TYPE
      is ''�����Ӵ����ͺ�''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column C_ARRIVE_CHARGE_PARA.AC_CONTA_SPECE
      is ''�����Ӵ������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column C_ARRIVE_CHARGE_PARA.AC_CONTA_MANUF
      is ''�����Ӵ�������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column C_ARRIVE_CHARGE_PARA.HIGHVOL_CONTA_TYPE
      is ''��ѹ�Ӵ����ͺ�''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column C_ARRIVE_CHARGE_PARA.HIGHVOL_CONTA_SPECE
      is ''��ѹ�Ӵ������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column C_ARRIVE_CHARGE_PARA.HIGHVOL_CONTA_MANUF
      is ''��ѹ�Ӵ�������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column C_ARRIVE_CHARGE_PARA.LEAK_PROTECT_TYPE
      is ''©�籣���ͺ�''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column C_ARRIVE_CHARGE_PARA.LEAK_PROTECT_SPECE
      is ''©�籣�����''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column C_ARRIVE_CHARGE_PARA.LEAK_PROTECT_MANUF
      is ''©�籣������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column C_ARRIVE_CHARGE_PARA.FUSE_TYPE
      is ''�۶����ͺ�''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column C_ARRIVE_CHARGE_PARA.FUSE_SPECE
      is ''�۶������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column C_ARRIVE_CHARGE_PARA.FUSE_MANUF
      is ''�۶�������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column C_ARRIVE_CHARGE_PARA.AUXIL_POWER_TYPE
      is ''������Դ�ͺ�''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column C_ARRIVE_CHARGE_PARA.AUXIL_POWER_SPECE
      is ''������Դ���''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column C_ARRIVE_CHARGE_PARA.AUXIL_POWER_MANUF
      is ''������Դ����''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column C_ARRIVE_CHARGE_PARA.SCREEN_TYPE
      is ''��Ļ�ͺ�''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column C_ARRIVE_CHARGE_PARA.SCREEN_SPECE
      is ''��Ļ���''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column C_ARRIVE_CHARGE_PARA.SCREEN_MANUF
      is ''��Ļ����''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column C_ARRIVE_CHARGE_PARA.CARD_READER_TYPE
      is ''�������ͺ�''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column C_ARRIVE_CHARGE_PARA.CARD_READER_SPECE
      is ''���������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column C_ARRIVE_CHARGE_PARA.CARD_READER_MANUF
      is ''����������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column C_ARRIVE_CHARGE_PARA.ARREST_TYPE
      is ''�������ͺ�''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column C_ARRIVE_CHARGE_PARA.ARREST_SPECE
      is ''���������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column C_ARRIVE_CHARGE_PARA.ARREST_MANUF
      is ''����������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column C_ARRIVE_CHARGE_PARA.CIRCU_BREAK_TYPE
      is ''��·���ͺ�''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column C_ARRIVE_CHARGE_PARA.CIRCU_BREAK_SPECE
      is ''��·�����''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column C_ARRIVE_CHARGE_PARA.CIRCU_BREAK_MANUF
      is ''��·������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column C_ARRIVE_CHARGE_PARA.COOL_FAN_TYPE
      is ''ɢ�ȷ����ͺ�''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column C_ARRIVE_CHARGE_PARA.COOL_FAN_SPECE
      is ''ɢ�ȷ��ȹ��''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column C_ARRIVE_CHARGE_PARA.COOL_FAN_MANUF
      is ''ɢ�ȷ��ȳ���''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column C_ARRIVE_CHARGE_PARA.SOUND_TYPE
      is ''�����ͺ�''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column C_ARRIVE_CHARGE_PARA.SOUND_SPECE
      is ''������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column C_ARRIVE_CHARGE_PARA.SOUND_MANUF
      is ''���쳧��''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column C_ARRIVE_CHARGE_PARA.ANTENNA_4G_TYPE
      is ''4G�����ͺ�''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column C_ARRIVE_CHARGE_PARA.ANTENNA_4G_SPECE
      is ''4G���߹��''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column C_ARRIVE_CHARGE_PARA.ANTENNA_4G_MANUF
      is ''4G���߳���''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column C_ARRIVE_CHARGE_PARA.ANTENNA_GPS_TYPE
      is ''GPS�����ͺ�''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column C_ARRIVE_CHARGE_PARA.ANTENNA_GPS_SPECE
      is ''GPS���߹��''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column C_ARRIVE_CHARGE_PARA.ANTENNA_GPS_MANU
      is ''GPS���߳���''
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
      dbms_output.put_line('�ű�����������Ϊ PK_C_ARRIVE_CHARGE_PARA �Ѵ��ڡ�');
    END IF;
END;
/
prompt
prompt ���ڴ����¼���Ϊ 8200000000018487 �Ľű�
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
      is ''�����豸��ʶ''
    ';      
    ELSE
      dbms_output.put_line('�ű�����������Ϊ D_CHARGE_BIND_RECORD �Ѵ��ڡ�');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table D_CHARGE_BIND_RECORD
      is ''����豸�󶨼�¼��''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_CHARGE_BIND_RECORD.READ_ID
      is ''��ʵ���¼��Ψһ��ʶ��''
    ';

    EXECUTE IMMEDIATE
    '
      comment on column D_CHARGE_BIND_RECORD.BAR_CODE
      is ''�����豸������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_CHARGE_BIND_RECORD.EQUIP_CATEG
      is ''�豸���''
    ';

    EXECUTE IMMEDIATE
    '
      comment on column D_CHARGE_BIND_RECORD.BIND_BAR_CODE
      is ''���豸������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_CHARGE_BIND_RECORD.HANDLE_FLAG
      is ''�����־''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_CHARGE_BIND_RECORD.HANDLE_DATE
      is ''����ʱ��''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_CHARGE_BIND_RECORD.HANDLE_DEPT_NO
      is ''������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_CHARGE_BIND_RECORD.HANDLER_NO
      is ''������Ա���''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_CHARGE_BIND_RECORD.REMARK
      is ''��ע''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_CHARGE_BIND_RECORD.BUSI_IDENT
      is ''ҵ���ʶ''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_CHARGE_BIND_RECORD.BUSI_TYPE
      is ''ҵ������''
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
      dbms_output.put_line('�ű�����������Ϊ PK_D_CHARGE_BIND_RECORD �Ѵ��ڡ�');
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
      dbms_output.put_line('�ű�����������Ϊ SEQ_D_CHARGE_BIND_RECORD �Ѵ��ڡ�');
    END IF;
END;
/
prompt
prompt ���ڴ����¼���Ϊ 8200000000018488 �Ľű�
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
      dbms_output.put_line('�ű�����������Ϊ D_METER.charg_bar_code �Ѵ��ڡ�');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column D_METER.charg_bar_code
      is ''���׮�豸������''
    ';
END;
/
prompt
prompt ���ڴ����¼���Ϊ 8200000000018491 �Ľű�
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
      dbms_output.put_line('�ű�����������Ϊ D_IT.charg_bar_code �Ѵ��ڡ�');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column D_IT.charg_bar_code
      is ''���׮�豸������''
    ';
END;
/
prompt
prompt ���ڴ����¼���Ϊ 8200000000018490 �Ľű�
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
      dbms_output.put_line('�ű�����������Ϊ B_ORDER_LIST.old_order_list_id �Ѵ��ڡ�');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column B_ORDER_LIST.old_order_list_id
      is ''�㽭����ֶ�����ʶ''
    ';
END;
/
prompt
prompt ���ڴ����¼���Ϊ 8200000000018492 �Ľű�
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
      dbms_output.put_line('�ű�����������Ϊ C_ARRIVE_CHECK_IN.bound_type �Ѵ��ڡ�');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'C_ARRIVE_CHECK_IN' AND U.COLUMN_NAME='IS_BOUND';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table C_ARRIVE_CHECK_IN add is_bound VARCHAR2(8)
      ';
    ELSE
      dbms_output.put_line('�ű�����������Ϊ C_ARRIVE_CHECK_IN.is_bound �Ѵ��ڡ�');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column C_ARRIVE_CHECK_IN.bound_type
      is ''���׮�󶨷�ʽ��01�����Ǽ�ʱ�󶨣�02�����ǼǺ��''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column C_ARRIVE_CHECK_IN.is_bound
      is ''���׮���ΰ�״̬��1��/0��''
    ';
END;
/
prompt
prompt ���ڴ����¼���Ϊ 8200000000018494 �Ľű�
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
      dbms_output.put_line('�ű�����������Ϊ C_ARRIVE_CHECK_IN_DET.bgn_meter_bar_no �Ѵ��ڡ�');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'C_ARRIVE_CHECK_IN_DET' AND U.COLUMN_NAME='END_METER_BAR_NO';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table C_ARRIVE_CHECK_IN_DET add end_meter_bar_no VARCHAR2(32 CHAR)
      ';
    ELSE
      dbms_output.put_line('�ű�����������Ϊ C_ARRIVE_CHECK_IN_DET.end_meter_bar_no �Ѵ��ڡ�');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'C_ARRIVE_CHECK_IN_DET' AND U.COLUMN_NAME='BGN_SHUNT_BAR_NO';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table C_ARRIVE_CHECK_IN_DET add bgn_shunt_bar_no VARCHAR2(32 CHAR)
      ';
    ELSE
      dbms_output.put_line('�ű�����������Ϊ C_ARRIVE_CHECK_IN_DET.bgn_shunt_bar_no �Ѵ��ڡ�');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'C_ARRIVE_CHECK_IN_DET' AND U.COLUMN_NAME='END_SHUNT_BAR_NO';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table C_ARRIVE_CHECK_IN_DET add end_shunt_bar_no VARCHAR2(32 CHAR)
      ';
    ELSE
      dbms_output.put_line('�ű�����������Ϊ C_ARRIVE_CHECK_IN_DET.end_shunt_bar_no �Ѵ��ڡ�');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column C_ARRIVE_CHECK_IN_DET.bgn_meter_bar_no
      is ''���ܱ���ʼ����''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column C_ARRIVE_CHECK_IN_DET.end_meter_bar_no
      is ''���ܱ��������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column C_ARRIVE_CHECK_IN_DET.bgn_shunt_bar_no
      is ''��������ʼ����''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column C_ARRIVE_CHECK_IN_DET.end_shunt_bar_no
      is ''��������������''
    ';
END;
/
prompt
prompt ���ڴ����¼���Ϊ 8200000000018495 �Ľű�
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
      dbms_output.put_line('�ű�����������Ϊ C_ARRIVE_CHARG_EQUIP_RELAITON �Ѵ��ڡ�');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table C_ARRIVE_CHARG_EQUIP_RELAITON
      is ''����豸���ΰ󶨹�ϵ��''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column C_ARRIVE_CHARG_EQUIP_RELAITON.RELATION_ID
      is ''��ʶID����������SEQ_ARRIVE_CHARG_EQUIP_RELA''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column C_ARRIVE_CHARG_EQUIP_RELAITON.BOUND_EQUIP_CATEG
      is ''�����豸���''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column C_ARRIVE_CHARG_EQUIP_RELAITON.EQUIP_RCV_ID
      is ''�����豸�����ǼǱ�ʶid''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column C_ARRIVE_CHARG_EQUIP_RELAITON.EQUIP_RCV_DET_ID
      is ''�豸�����Ǽ���ϸ��ʶID''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column C_ARRIVE_CHARG_EQUIP_RELAITON.EQUIP_ARRIVE_BATCH_NO
      is ''�����豸�������κ�''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column C_ARRIVE_CHARG_EQUIP_RELAITON.CHARG_RCV_ID
      is ''���׮�����ǼǱ�ʶID''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column C_ARRIVE_CHARG_EQUIP_RELAITON.CHARG_ARRIVE_BATCH_NO
      is ''���׮�������κ�''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column C_ARRIVE_CHARG_EQUIP_RELAITON.CHARG_RCV_DET_ID
      is ''���׮�����Ǽ���ϸ��ʶID''
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
      dbms_output.put_line('�ű�����������Ϊ PK_ARRIVE_CHARG_EQUIP_RELAITON �Ѵ��ڡ�');
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
      dbms_output.put_line('�ű�����������Ϊ SEQ_ARRIVE_CHARG_EQUIP_RELA �Ѵ��ڡ�');
    END IF;
END;
/
prompt
prompt ���ڴ����¼���Ϊ 8200000000018508 �Ľű�
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
      dbms_output.put_line('�ű�����������Ϊ IDX_D_CHARGE_POINT_RCV_ID �Ѵ��ڡ�');
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
      dbms_output.put_line('�ű�����������Ϊ IDX_D_CHARGE_POINT_BAR_CODE �Ѵ��ڡ�');
    END IF;
END;
/
prompt
prompt ���ڴ����¼���Ϊ 8200000000018720 �Ľű�
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
      dbms_output.put_line('�ű�����������Ϊ D_CHARGE_POINT.DEVI_SEPC �����ڡ�');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'D_CHARGE_POINT' AND U.COLUMN_NAME='OUT_RATED_CURRENT';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table D_CHARGE_POINT drop column out_rated_current
      ';
    ELSE
      dbms_output.put_line('�ű�����������Ϊ D_CHARGE_POINT.OUT_RATED_CURRENT �����ڡ�');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'D_CHARGE_POINT' AND U.COLUMN_NAME='OUT_MAX_CURRENT';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table D_CHARGE_POINT drop column out_max_current
      ';
    ELSE
      dbms_output.put_line('�ű�����������Ϊ D_CHARGE_POINT.OUT_MAX_CURRENT �����ڡ�');
    END IF;
END;
/
prompt
prompt ���ڴ����¼���Ϊ 8200000000018721 �Ľű�
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
      dbms_output.put_line('�ű�����������Ϊ D_CHARGE_POINT.out_current �Ѵ��ڡ�');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column D_CHARGE_POINT.out_current
      is ''�����������������A�����������׮Ϊ�������''
    ';
END;
/
prompt
prompt ���ڴ����¼���Ϊ 8200000000018772 �Ľű�
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
      dbms_output.put_line('�ű�����������Ϊ D_CHARGE_BIND_RECORD.BINGD_EQUIP_ID �����ڡ�');
    END IF;
END;
/
prompt
prompt ���ڴ����¼���Ϊ 8200000000018872 �Ľű�
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
prompt ���ڴ����¼���Ϊ 8200000000018945 �Ľű�
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
      comment on table VW_CP_DETECT_UNQUALIFIED_TREE is ''���׮�춨���ϸ�ԭ������ͼ ''
    ';
END;
/
prompt
prompt ���ڴ����¼���Ϊ 8200000000018965 �Ľű�
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
      dbms_output.put_line('�ű�����������Ϊ C_ARRIVE_CHECK_IN.charge_port_num �Ѵ��ڡ�');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column C_ARRIVE_CHECK_IN.charge_port_num
      is ''���׮��������''
    ';
END;
/
prompt
prompt ���ڴ����¼���Ϊ 8200000000018973 �Ľű�
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
      dbms_output.put_line('�ű�����������Ϊ T_DETECT_CP_RSLT.equip_id �Ѵ��ڡ�');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column T_DETECT_CP_RSLT.equip_id
      is ''�豸''
    ';
END;
/
prompt
prompt ���ڴ����¼���Ϊ 8200000000018985 �Ľű�
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
      dbms_output.put_line('�ű�����������Ϊ F_LOST_EQUIP �Ѵ��ڡ�');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table F_LOST_EQUIP
      is ''��ر�ʧ��¼��
      �����ڲ�ر�Ķ�ʧҵ���������Ѷ�ʧ�Ĳ�ر���ּ��豸�嵥�����Լ���ʧʱ�䵥λ����Ϣ��
      ��Ҫ������Ӫ���˿����̵��ţ��豸��ʶ��������ͣ����ԭ�򣬶�ʧʱ�䣬��ʧ��λ�ȣ�''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_LOST_EQUIP.det_id
      is ''��ϸ��ʶ''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_LOST_EQUIP.sg_task_no
      is ''Ӫ���˿�������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_LOST_EQUIP.sg_task_time
      is ''Ӫ���˿�����ʱ��''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_LOST_EQUIP.sg_app_no
      is ''Ӫ���˿����̱��''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_LOST_EQUIP.equip_categ
      is ''�豸���''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_LOST_EQUIP.busi_type
      is ''������ͣ���Ӫ����ع������ͣ�VW_REPICK_BUSI_TYPE''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_LOST_EQUIP.rm_reason
      is ''���ԭ��VW_MET_RMV_REASON��Ӫ�����ԭ��''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_LOST_EQUIP.fault_reason
      is ''�������󣬵��vw_repick_meter_fault_type_l3''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_LOST_EQUIP.equip_id
      is ''�豸��ʶ''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_LOST_EQUIP.bar_code
      is ''�豸������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_LOST_EQUIP.remove_time
      is ''���ʱ��,��ʽ��������ʱ����''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_LOST_EQUIP.meter_reading
      is ''�׶ȣ��ܡ��⡢�塢ƽ���ȣ��������ܼ��ƽ�ȵ�˳�����߷ָ�''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_LOST_EQUIP.elec_price
      is ''�����ʵ�ۣ������ƽ��˳�������߷ָ��λ��Ԫ''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_LOST_EQUIP.pr_org_no
      is ''��Ȩ��λ��Ϊ������˾���ʲ�''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_LOST_EQUIP.repick_org_no
      is ''�豸�ּ�λ''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_LOST_EQUIP.cons_no
      is ''�û����''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_LOST_EQUIP.current_fee
      is ''����,�μ�������׼���룺�������ͣ�VW_EQUIP_FEE_RATE''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_LOST_EQUIP.backup_fee
      is ''����,�μ�������׼���룺�������ͣ�VW_EQUIP_FEE_RATE''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_LOST_EQUIP.crt_step_val
      is ''��ǰ�׽���ֵ1-6 ����1��6��˳��������߷ָ��λ��ǧ��ʱ������230|170|100|||��ʾ1-3����ֵ�ֱ�Ϊ230��170��100ǧ��ʱ����4-6����ֵ��''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_LOST_EQUIP.crt_step_price
      is ''��ǰ�׽��ݵ��1-7 ����1��7��˳��������߷ָ��λ��Ԫ�����磺0.5655|0.8375|1.0535||||��ʾ���ݵ��1��2��3�ֱ�Ϊ0.5655Ԫ��0.8375Ԫ��1.0535Ԫ����4-7���ݵ��''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_LOST_EQUIP.crt_y_clean_day
      is ''��ǰ��������գ�����1����4��˳���������ƴ�Ӻ����߷ָ���磺0501|0624|1001|1212����ʾ���1����2����3����4�����շֱ�Ϊ5��1�գ�6��24�գ�10��1�գ�12��12�գ���0403|0608||����ʾ���1��2������Ϊ4��3�պ�6��8�գ��޵�3��4�����գ�''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_LOST_EQUIP.bkup_step_val
      is ''�����׽���ֵ1-6 ����1��6��˳��������߷ָ�''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_LOST_EQUIP.bkup_step_price
      is ''�����׽��ݵ��1-7 ����1��7��˳��������߷ָ�''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_LOST_EQUIP.bkup_y_clean_day
      is ''������������գ�����1����4��˳���������ƴ�Ӻ����߷ָ���磺0501|0624|1001|1212����ʾ���1����2����3����4�����շֱ�Ϊ5��1�գ�6��24�գ�10��1�գ�12��12�գ���0403|0608||����ʾ���1��2������Ϊ4��3�պ�6��8�գ��޵�3��4�����գ�''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_LOST_EQUIP.left_amount
      is ''ʣ�����λ��Ԫ''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_LOST_EQUIP.overdraft_amount
      is ''͸֧����λ��Ԫ''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_LOST_EQUIP.buy_times
      is ''�û��������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_LOST_EQUIP.volt_ratio_code
      is ''��ѹ���������,�μ�������׼���룺��ѹ���������VW_VOLT_RATIO_CODE''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_LOST_EQUIP.rc_ratio_code
      is ''�������������,�μ�������׼���룺�������������VW_RC_RATIO_CODE''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_LOST_EQUIP.write_time
      is ''��ǰʱ�� SYSDATE''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_LOST_EQUIP.equip_code
      is ''�豸��''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_LOST_EQUIP.con_mode
      is ''���뷽ʽ��01 ֱ�ӽ��� 02 ���н���''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_LOST_EQUIP.volt_code
      is ''�αȵ�ѹ''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_LOST_EQUIP.rated_current
      is ''�αȵ���''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_LOST_EQUIP.remark
      is ''��ע''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_LOST_EQUIP.manu_no
      is ''����''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_LOST_EQUIP.process_suggest
      is ''�Ը��豸�Ĵ��ý��飬���糬�ڱ���Ϊ03�������ϡ����룺01������ά�� 02�����⸶ 03 �������� 04����У��VW_REPICK_PROCESS_CODE''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_LOST_EQUIP.suggest_reason
      is ''�ּ��ý����ԭ��������䳬��VW_REPICK_SUGGEST_REASON''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_LOST_EQUIP.sg_detect_task_no
      is ''Ӫ����ر�װ��ǰ�춨������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_LOST_EQUIP.is_rerepick
      is ''�Ƿ���ʡ�������·ּ�''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_LOST_EQUIP.latest_chk_date
      is ''����춨����''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_LOST_EQUIP.comm_addr
      is ''ͨѶ��ַ''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_LOST_EQUIP.lost_time
      is ''��ʧʱ��''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_LOST_EQUIP.lost_org_no
      is ''��ʧ��λ''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_LOST_EQUIP.sg_io_task_no
      is ''Ӫ���������񵥺�''
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
      dbms_output.put_line('�ű�����������Ϊ PK_F_LOST_EQUIP �Ѵ��ڡ�');
    END IF;
END;
/
prompt
prompt ���ڴ����¼���Ϊ 8200000000018997 �Ľű�
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
      dbms_output.put_line('�ű�����������Ϊ T_DETECT_CP_RSLT.remark �Ѵ��ڡ�');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'T_DETECT_CP_RSLT' AND U.COLUMN_NAME='CERT_NO';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table T_DETECT_CP_RSLT add cert_no VARCHAR2(32)
      ';
    ELSE
      dbms_output.put_line('�ű�����������Ϊ T_DETECT_CP_RSLT.cert_no �Ѵ��ڡ�');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'T_DETECT_CP_RSLT' AND U.COLUMN_NAME='CERT_NO_PERIOD';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table T_DETECT_CP_RSLT add cert_no_period VARCHAR2(32)
      ';
    ELSE
      dbms_output.put_line('�ű�����������Ϊ T_DETECT_CP_RSLT.cert_no_period �Ѵ��ڡ�');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column T_DETECT_CP_RSLT.remark
      is ''��ע''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_DETECT_CP_RSLT.cert_no
      is ''����װ��֤����''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_DETECT_CP_RSLT.cert_no_period
      is ''����װ��֤������Ч��''
    ';
END;
/
prompt
prompt ���ڴ����¼���Ϊ 8200000000019008 �Ľű�
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
      dbms_output.put_line('�ű�����������Ϊ T_DETECT_TASK.pre_elec_charge �Ѵ��ڡ�');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column T_DETECT_TASK.pre_elec_charge
      is ''Ԥ�õ��''
    ';
END;
/
prompt
prompt ���ڴ����¼���Ϊ 8200000000019071 �Ľű�
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
      dbms_output.put_line('�ű�����������Ϊ B_ORDER_PARA_CP �Ѵ��ڡ�');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table B_ORDER_PARA_CP
      is ''���׮����������1)�豸����,ά��������ϸʱ����;2)��ʵ����Ҫ����������¼Ψһ��ʶ,������ϸid,���,�ͺ�,���͵���Ҫ����;''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column B_ORDER_PARA_CP.PARA_CP_ID
      is ''������¼Ψһ��ʶ''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column B_ORDER_PARA_CP.ORDER_DET_ID
      is ''������ϸ��ʶ''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column B_ORDER_PARA_CP.SORT_CODE
      is ''���׮���ֱ�����׮/�������׮VW_CHARG_SORT_CODE''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column B_ORDER_PARA_CP.DEVI_TYPE
      is ''�豸�ͺţ�VW_CHARG_ MODEL''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column B_ORDER_PARA_CP.DEVI_CATEG
      is ''����,ֱ���������һ���/��������������׮���ڹ�/��أ�VW_CHARG_TYPE''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column B_ORDER_PARA_CP.OUT_MAX_POWER
      is ''�������ʣ�kW����VW_ OUT_MAX_POWER''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column B_ORDER_PARA_CP.IN_RATED_RV
      is ''������ѹ��V����VW_IN_RATED_RV''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column B_ORDER_PARA_CP.OUT_RATED_RV
      is ''������ѹ��V�����������׮����,VW_OUT_RATED_RV''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column B_ORDER_PARA_CP.OUT_DOWN_RV
      is ''������޵�ѹ��V����ֱ�����׮���ԣ�VW_OUT_DOWN_RV''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column B_ORDER_PARA_CP.OUT_UP_RV
      is ''������޵�ѹ��V����ֱ�����׮���ԣ�VW_OUT_RATED_RV''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column B_ORDER_PARA_CP.OUT_CURRENT
      is ''�����������������A�������������׮Ϊ���������VW_OUT_ CURRENT''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column B_ORDER_PARA_CP.CABLE_LENGTH
      is ''���³���''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column B_ORDER_PARA_CP.IS_CONST_POWER
      is ''�㹦�ʹ��ܣ���/��ֱ�����׮���ԣ�''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column B_ORDER_PARA_CP.IS_CTS
      is ''CTS���Ĺ��ܣ���/��ֱ�����׮���ԣ�''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column B_ORDER_PARA_CP.IS_POWER_ASSIGN
      is ''��̬���ʷ��书�ܣ���/��ֱ�����׮���ԣ�''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column B_ORDER_PARA_CP.CONNECT_MODE
      is ''����ģʽ��CASE B/CASE C���������׮���ԣ�''
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
      dbms_output.put_line('�ű�����������Ϊ PK_B_ORDER_PARA_CP �Ѵ��ڡ�');
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
      dbms_output.put_line('�ű�����������Ϊ SEQ_B_ORDER_PARA_CP �Ѵ��ڡ�');
    END IF;
END;
/
prompt
prompt ���ڴ����¼���Ϊ 8200000000019122 �Ľű�
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
      dbms_output.put_line('�ű�����������Ϊ B_EQUIP_CODE.devi_type �Ѵ��ڡ�');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'B_EQUIP_CODE' AND U.COLUMN_NAME='DEVI_CATEG';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table B_EQUIP_CODE add devi_categ VARCHAR2(8)
      ';
    ELSE
      dbms_output.put_line('�ű�����������Ϊ B_EQUIP_CODE.devi_categ �Ѵ��ڡ�');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'B_EQUIP_CODE' AND U.COLUMN_NAME='OUT_MAX_POWER';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table B_EQUIP_CODE add out_max_power VARCHAR2(8)
      ';
    ELSE
      dbms_output.put_line('�ű�����������Ϊ B_EQUIP_CODE.out_max_power �Ѵ��ڡ�');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'B_EQUIP_CODE' AND U.COLUMN_NAME='IN_RATED_RV';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table B_EQUIP_CODE add in_rated_rv VARCHAR2(8)
      ';
    ELSE
      dbms_output.put_line('�ű�����������Ϊ B_EQUIP_CODE.in_rated_rv �Ѵ��ڡ�');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'B_EQUIP_CODE' AND U.COLUMN_NAME='OUT_RATED_RV';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table B_EQUIP_CODE add out_rated_rv VARCHAR2(8)
      ';
    ELSE
      dbms_output.put_line('�ű�����������Ϊ B_EQUIP_CODE.out_rated_rv �Ѵ��ڡ�');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'B_EQUIP_CODE' AND U.COLUMN_NAME='OUT_DOWN_RV';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table B_EQUIP_CODE add out_down_rv VARCHAR2(8)
      ';
    ELSE
      dbms_output.put_line('�ű�����������Ϊ B_EQUIP_CODE.out_down_rv �Ѵ��ڡ�');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'B_EQUIP_CODE' AND U.COLUMN_NAME='OUT_UP_RV';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table B_EQUIP_CODE add out_up_rv VARCHAR2(8)
      ';
    ELSE
      dbms_output.put_line('�ű�����������Ϊ B_EQUIP_CODE.out_up_rv �Ѵ��ڡ�');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'B_EQUIP_CODE' AND U.COLUMN_NAME='OUT_CURRENT';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table B_EQUIP_CODE add out_current VARCHAR2(8)
      ';
    ELSE
      dbms_output.put_line('�ű�����������Ϊ B_EQUIP_CODE.out_current �Ѵ��ڡ�');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'B_EQUIP_CODE' AND U.COLUMN_NAME='CONNECT_MODE';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table B_EQUIP_CODE add connect_mode VARCHAR2(8)
      ';
    ELSE
      dbms_output.put_line('�ű�����������Ϊ B_EQUIP_CODE.connect_mode �Ѵ��ڡ�');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column B_EQUIP_CODE.devi_type
      is ''���׮�豸�ͺ�''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column B_EQUIP_CODE.devi_categ
      is ''���׮����''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column B_EQUIP_CODE.out_max_power
      is ''���׮�������ʣ�kW��''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column B_EQUIP_CODE.in_rated_rv
      is ''���׮������ѹ��V��''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column B_EQUIP_CODE.out_rated_rv
      is ''���׮������ѹ��V��''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column B_EQUIP_CODE.out_down_rv
      is ''���׮������޵�ѹ��V��''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column B_EQUIP_CODE.out_up_rv
      is ''���׮������޵�ѹ��V��''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column B_EQUIP_CODE.out_current
      is ''���׮�����������������A��''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column B_EQUIP_CODE.connect_mode
      is ''���׮����ģʽ''
    ';
END;
/
prompt
prompt ���ڴ����¼���Ϊ 8200000000019379 �Ľű�
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
      dbms_output.put_line('�ű�����������Ϊ C_ARRIVE_CHARGE_PARA.charge_contr_spece �Ѵ��ڡ�');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'C_ARRIVE_CHARGE_PARA' AND U.COLUMN_NAME='CHARGE_CONTR_MANUF';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table C_ARRIVE_CHARGE_PARA add charge_contr_manuf VARCHAR2(8)
      ';
    ELSE
      dbms_output.put_line('�ű�����������Ϊ C_ARRIVE_CHARGE_PARA.charge_contr_manuf �Ѵ��ڡ�');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'C_ARRIVE_CHARGE_PARA' AND U.COLUMN_NAME='CHARGE_MODULE_TYPE';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table C_ARRIVE_CHARGE_PARA add charge_module_type VARCHAR2(8)
      ';
    ELSE
      dbms_output.put_line('�ű�����������Ϊ C_ARRIVE_CHARGE_PARA.charge_module_type �Ѵ��ڡ�');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column C_ARRIVE_CHARGE_PARA.charge_contr_spece
      is ''�����������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column C_ARRIVE_CHARGE_PARA.charge_contr_manuf
      is ''������������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column C_ARRIVE_CHARGE_PARA.charge_module_type
      is ''���ģ���ͺ�''
    ';
END;
/
prompt
prompt ���ڴ����¼���Ϊ 8200000000019382 �Ľű�
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
      dbms_output.put_line('�ű�����������Ϊ U_DIST_APP_DET.erp_batch_no �Ѵ��ڡ�');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column U_DIST_APP_DET.erp_batch_no
      is ''��erpϵͳ�е�������ϱ��''
    ';
END;
/
prompt
prompt ���ڴ����¼���Ϊ 8200000000019409 �Ľű�
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
      dbms_output.put_line('�ű�����������Ϊ U_DIST_APP.IS_DIRECT �����ڡ�');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column U_DIST_APP.is_direct
      is ''���ͷ�ʽ��0��ͨ���ͣ�1ֱ�䣬2��������''
    ';
END;
/
prompt
prompt ���ڴ����¼���Ϊ 8200000000019583 �Ľű�
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
      dbms_output.put_line('�ű�����������Ϊ F_ELEC_PRICE_INFO �Ѵ��ڡ�');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table F_ELEC_PRICE_INFO
      is ''�����Ϣ��
      ���ڱ���ּ�װ���ϴ��ĵ����ʡ��������Լ���ʱ�ڵ����Ϣ''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_ELEC_PRICE_INFO.READ_ID
      is ''��¼��ʶ''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_ELEC_PRICE_INFO.TASK_NO
      is ''������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_ELEC_PRICE_INFO.BAR_CODE
      is ''�豸����''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_ELEC_PRICE_INFO.REMAIN_AMOUNT
      is ''��ǰʣ����(Ԫ)''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_ELEC_PRICE_INFO.PURCHASE_NUM
      is ''�������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_ELEC_PRICE_INFO.FEE_NUM
      is ''������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_ELEC_PRICE_INFO.KU_FEE_JIAN
      is ''��ˮ�ڷ��ʵ�ۼ�''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_ELEC_PRICE_INFO.KU_FEE_FENG
      is ''��ˮ�ڷ��ʵ�۷�''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_ELEC_PRICE_INFO.KU_FEE_PING
      is ''��ˮ�ڷ��ʵ��ƽ''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_ELEC_PRICE_INFO.KU_FEE_GU
      is ''��ˮ�ڷ��ʵ�۹�''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_ELEC_PRICE_INFO.FENG_FEE_JIAN
      is ''��ˮ�ڷ��ʵ�ۼ�''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_ELEC_PRICE_INFO.FENG_FEE_FENG
      is ''��ˮ�ڷ��ʵ�۷�''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_ELEC_PRICE_INFO.FENG_FEE_PING
      is ''��ˮ�ڷ��ʵ��ƽ''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_ELEC_PRICE_INFO.FENG_FEE_GU
      is ''��ˮ�ڷ��ʵ�۹�''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_ELEC_PRICE_INFO.PING_FEE_JIAN
      is ''ƽˮ�ڷ��ʵ�ۼ�''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_ELEC_PRICE_INFO.PING_FEE_FENG
      is ''ƽˮ�ڷ��ʵ�۷�''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_ELEC_PRICE_INFO.PING_FEE_PING
      is ''ƽˮ�ڷ��ʵ��ƽ''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_ELEC_PRICE_INFO.PING_FEE_GU
      is ''ƽˮ�ڷ��ʵ�۹�''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_ELEC_PRICE_INFO.LADDER_NUM
      is ''������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_ELEC_PRICE_INFO.FIR_LADDER_VALUE1
      is ''��ǰ����ֵ1''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_ELEC_PRICE_INFO.FIR_LADDER_VALUE2
      is ''��ǰ����ֵ2''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_ELEC_PRICE_INFO.FIR_LADDER_VALUE3
      is ''��ǰ����ֵ3''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_ELEC_PRICE_INFO.FIR_LADDER_PRICE1
      is ''��ǰ���ݵ��1''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_ELEC_PRICE_INFO.FIR_LADDER_PRICE2
      is ''��ǰ���ݵ��2''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_ELEC_PRICE_INFO.FIR_LADDER_PRICE3
      is ''��ǰ���ݵ��3''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_ELEC_PRICE_INFO.FIR_LADDER_PRICE4
      is ''��ǰ���ݵ��4''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_ELEC_PRICE_INFO.WRITE_TIME
      is ''д��ʱ��''
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
      dbms_output.put_line('�ű�����������Ϊ PK_F_ELEC_PRICE_INFO �Ѵ��ڡ�');
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
      dbms_output.put_line('�ű�����������Ϊ SEQ_F_ELEC_PRICE_INFO �Ѵ��ڡ�');
    END IF;
END;
/
prompt
prompt ���ڴ����¼���Ϊ 8200000000019584 �Ľű�
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
      dbms_output.put_line('�ű�����������Ϊ F_MET_READING_INFO �Ѵ��ڡ�');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table F_MET_READING_INFO
      is ''���ʾ����Ϣ��,
      ���ڱ���ּ�װ���ϴ��ĵ�����������޹����׶ε���ʾֵ''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_MET_READING_INFO.READ_ID
      is ''��¼��ʶ''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_MET_READING_INFO.TASK_NO
      is ''������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_MET_READING_INFO.DATA_DATE
      is ''�ɼ�����''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_MET_READING_INFO.DAY_NUM
      is ''���ں�''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_MET_READING_INFO.BAR_CODE
      is ''����''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_MET_READING_INFO.PAP_R
      is ''�����й��ܵ���ʾֵ''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_MET_READING_INFO.PAP_R1
      is ''�����й������ʾֵ''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_MET_READING_INFO.PAP_R2
      is ''�����й������ʾֵ''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_MET_READING_INFO.PAP_R3
      is ''�����й�ƽ����ʾֵ''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_MET_READING_INFO.PAP_R4
      is ''�����й��ȵ���ʾֵ''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_MET_READING_INFO.PRP_R
      is ''�����޹��ܵ���ʾֵ''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_MET_READING_INFO.PRP_R1
      is ''�����޹������ʾֵ''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_MET_READING_INFO.PRP_R2
      is ''�����޹������ʾֵ''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_MET_READING_INFO.PRP_R3
      is ''�����޹�ƽ����ʾֵ''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_MET_READING_INFO.PRP_R4
      is ''�����޹��ȵ���ʾֵ''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_MET_READING_INFO.RAP_R
      is ''�����й�������ʾֵ''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_MET_READING_INFO.RAP_R1
      is ''�����й�������ʾֵ''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_MET_READING_INFO.RAP_R2
      is ''�����й�������ʾֵ''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_MET_READING_INFO.RAP_R3
      is ''�����й�ƽ����ʾֵ''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_MET_READING_INFO.RAP_R4
      is ''�����й�������ʾֵ''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_MET_READING_INFO.RRP_R
      is ''�����޹�����ʾֵ''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_MET_READING_INFO.RRP_R1
      is ''�����޹�����ʾֵ''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_MET_READING_INFO.RRP_R2
      is ''�����޹�����ʾֵ''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_MET_READING_INFO.RRP_R3
      is ''�����޹�ƽ��ʾֵ''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_MET_READING_INFO.RRP_R4
      is ''�����޹�����ʾֵ''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_MET_READING_INFO.PAP_DEMAND
      is ''�����й����������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_MET_READING_INFO.WRITE_TIME
      is ''д��ʱ��''
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
      dbms_output.put_line('�ű�����������Ϊ PK_F_MET_READING_INFO �Ѵ��ڡ�');
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
      dbms_output.put_line('�ű�����������Ϊ SEQ_F_MET_READING_INFO �Ѵ��ڡ�');
    END IF;
END;
/
prompt
prompt ���ڴ����¼���Ϊ 8200000000019594 �Ľű�
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
      dbms_output.put_line('�ű�����������Ϊ IDX_F_ELEC_PRICE_INFO_TASK_NO �Ѵ��ڡ�');
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
      dbms_output.put_line('�ű�����������Ϊ IDX_F_ELEC_PRICE_INFO_BAR_CODE �Ѵ��ڡ�');
    END IF;
END;
/
prompt
prompt ���ڴ����¼���Ϊ 8200000000019595 �Ľű�
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
      dbms_output.put_line('�ű�����������Ϊ IDX_F_MET_READING_INFO_TASKNO �Ѵ��ڡ�');
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
      dbms_output.put_line('�ű�����������Ϊ IDX_F_MET_READING_INFO_BARCODE �Ѵ��ڡ�');
    END IF;
END;
/
prompt
prompt ���ڴ����¼���Ϊ 8200000000019692 �Ľű�
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
      dbms_output.put_line('�ű�����������Ϊ F_ELEC_PRICE_INFO.BAR_CODE �����ڡ�');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column F_ELEC_PRICE_INFO.bar_code
      is ''�������''
    ';
END;
/
prompt
prompt ���ڴ����¼���Ϊ 8200000000019693 �Ľű�
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
      dbms_output.put_line('�ű�����������Ϊ F_MET_READING_INFO.BAR_CODE �����ڡ�');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column F_MET_READING_INFO.bar_code
      is ''�������''
    ';
END;
/
prompt
prompt ���ڴ����¼���Ϊ 8200000000019699 �Ľű�
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
      dbms_output.put_line('�ű�����������Ϊ IDX_METER_CHARG_BAR_CODE �Ѵ��ڡ�');
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
      dbms_output.put_line('�ű�����������Ϊ IDX_IT_CHARG_BAR_CODE �Ѵ��ڡ�');
    END IF;
END;
/
prompt
prompt ���ڴ����¼���Ϊ 8200000000019719 �Ľű�
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
      dbms_output.put_line('�ű�����������Ϊ U_DIST_SCHE_ATTENTION.num �Ѵ��ڡ�');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column U_DIST_SCHE_ATTENTION.num
      is ''�ų���������������ģ���ų̼ƻ��ƶ����ڶ����ų���������ҳ��¼�����''
    ';
END;
/
prompt
prompt ���ڴ����¼���Ϊ 8200000000019772 �Ľű�
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
      dbms_output.put_line('�ű�����������Ϊ T_DETECT_CP_RSLT.file_path �Ѵ��ڡ�');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'T_DETECT_CP_RSLT' AND U.COLUMN_NAME='EQUIP_CATEG';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table T_DETECT_CP_RSLT add equip_categ VARCHAR2(8)
      ';
    ELSE
      dbms_output.put_line('�ű�����������Ϊ T_DETECT_CP_RSLT.equip_categ �Ѵ��ڡ�');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'T_DETECT_CP_RSLT' AND U.COLUMN_NAME='MADE_NO';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table T_DETECT_CP_RSLT add made_no VARCHAR2(32)
      ';
    ELSE
      dbms_output.put_line('�ű�����������Ϊ T_DETECT_CP_RSLT.made_no �Ѵ��ڡ�');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'T_DETECT_CP_RSLT' AND U.COLUMN_NAME='FAULT_TYPE';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table T_DETECT_CP_RSLT add fault_type VARCHAR2(128)
      ';
    ELSE
      dbms_output.put_line('�ű�����������Ϊ T_DETECT_CP_RSLT.fault_type �Ѵ��ڡ�');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'T_DETECT_CP_RSLT' AND U.COLUMN_NAME='ENTER_TYPE';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table T_DETECT_CP_RSLT add enter_type VARCHAR2(8) default ''01''
      ';
    ELSE
      dbms_output.put_line('�ű�����������Ϊ T_DETECT_CP_RSLT.enter_type �Ѵ��ڡ�');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column T_DETECT_CP_RSLT.file_path
      is ''�춨����·��''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_DETECT_CP_RSLT.equip_categ
      is ''�豸��𣬲ο���ͼVW_EQUIP_CATEG''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_DETECT_CP_RSLT.made_no
      is ''�������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_DETECT_CP_RSLT.fault_type
      is ''�������͡����׮ȡ��ͼVW_CP_DETECT_UNQUALIFIED''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_DETECT_CP_RSLT.enter_type
      is ''���¼�����ͣ�01̨���ϴ���02�ֶ�¼��VW_ENTER_TYPE''
    ';
END;
/
prompt
prompt ���ڴ����¼���Ϊ 8200000000019794 �Ľű�
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
      dbms_output.put_line('�ű�����������Ϊ T_DETECT_CP_RSLT.DETECT_DATE �����ڡ�');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column T_DETECT_CP_RSLT.detect_date
      is ''���ʱ��''
    ';
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'T_DETECT_CP_RSLT' AND U.COLUMN_NAME='WRITE_DATE';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table T_DETECT_CP_RSLT modify write_date DATE
      ';
    ELSE
      dbms_output.put_line('�ű�����������Ϊ T_DETECT_CP_RSLT.WRITE_DATE �����ڡ�');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column T_DETECT_CP_RSLT.write_date
      is ''д��ʱ��''
    ';
END;
/
prompt
prompt ���ڴ����¼���Ϊ 8200000000019801 �Ľű�
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
      dbms_output.put_line('�ű�����������Ϊ T_INTUIT_CP_CONC.DETECT_DATE �����ڡ�');
    END IF;
END;
/
prompt
prompt ���ڴ����¼���Ϊ 8200000000019803 �Ľű�
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
      dbms_output.put_line('�ű�����������Ϊ T_INSIDE_CP_CONC.DETECT_DATE �����ڡ�');
    END IF;
END;
/
prompt
prompt ���ڴ����¼���Ϊ 8200000000019804 �Ľű�
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
      dbms_output.put_line('�ű�����������Ϊ T_WIRE_CP_CONC.DETECT_DATE �����ڡ�');
    END IF;
END;
/
prompt
prompt ���ڴ����¼���Ϊ 8200000000019805 �Ľű�
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
      dbms_output.put_line('�ű�����������Ϊ T_SIGN_CP_CONC.DETECT_DATE �����ڡ�');
    END IF;
END;
/
prompt
prompt ���ڴ����¼���Ϊ 8200000000019807 �Ľű�
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
      dbms_output.put_line('�ű�����������Ϊ T_COMPOSE_CP_CONC.DETECT_DATE �����ڡ�');
    END IF;
END;
/
prompt
prompt ���ڴ����¼���Ϊ 8200000000019808 �Ľű�
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
      dbms_output.put_line('�ű�����������Ϊ T_CONNECT_CP_CONC.DETECT_DATE �����ڡ�');
    END IF;
END;
/
prompt
prompt ���ڴ����¼���Ϊ 8200000000019809 �Ľű�
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
      dbms_output.put_line('�ű�����������Ϊ T_DISPLAY_CP_CONC.DETECT_DATE �����ڡ�');
    END IF;
END;
/
prompt
prompt ���ڴ����¼���Ϊ 8200000000019810 �Ľű�
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
      dbms_output.put_line('�ű�����������Ϊ T_IN_CP_CONC.DETECT_DATE �����ڡ�');
    END IF;
END;
/
prompt
prompt ���ڴ����¼���Ϊ 8200000000019811 �Ľű�
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
      dbms_output.put_line('�ű�����������Ϊ T_LANDING_CP_CONC.DETECT_DATE �����ڡ�');
    END IF;
END;
/
prompt
prompt ���ڴ����¼���Ϊ 8200000000019812 �Ľű�
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
      dbms_output.put_line('�ű�����������Ϊ T_CLEARANCE_CREEPAGE_CP_CONC.DETECT_DATE �����ڡ�');
    END IF;
END;
/
prompt
prompt ���ڴ����¼���Ϊ 8200000000019814 �Ľű�
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
      dbms_output.put_line('�ű�����������Ϊ T_INSU_RESIST_CP_CONC.DETECT_DATE �����ڡ�');
    END IF;
END;
/
prompt
prompt ���ڴ����¼���Ϊ 8200000000019816 �Ľű�
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
      dbms_output.put_line('�ű�����������Ϊ T_ONLOAD_DECILITER_CP_CONC.DETECT_DATE �����ڡ�');
    END IF;
END;
/
prompt
prompt ���ڴ����¼���Ϊ 8200000000019817 �Ľű�
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
      dbms_output.put_line('�ű�����������Ϊ T_PWM_CP_CONC.DETECT_DATE �����ڡ�');
    END IF;
END;
/
prompt
prompt ���ڴ����¼���Ϊ 8200000000019818 �Ľű�
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
      dbms_output.put_line('�ű�����������Ϊ T_IN_OVERVOLT_CP_CONC.DETECT_DATE �����ڡ�');
    END IF;
END;
/
prompt
prompt ���ڴ����¼���Ϊ 8200000000019820 �Ľű�
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
      dbms_output.put_line('�ű�����������Ϊ T_IN_UNDERVOLT_CP_CONC.DETECT_DATE �����ڡ�');
    END IF;
END;
/
prompt
prompt ���ڴ����¼���Ϊ 8200000000019822 �Ľű�
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
      dbms_output.put_line('�ű�����������Ϊ T_SCP_CP_CONC.DETECT_DATE �����ڡ�');
    END IF;
END;
/
prompt
prompt ���ڴ����¼���Ϊ 8200000000019824 �Ľű�
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
      dbms_output.put_line('�ű�����������Ϊ T_LOCK_CP_CONC.DETECT_DATE �����ڡ�');
    END IF;
END;
/
prompt
prompt ���ڴ����¼���Ϊ 8200000000019826 �Ľű�
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
      dbms_output.put_line('�ű�����������Ϊ T_CONTROL_VOLTLIMIT_CP_CONC.DETECT_DATE �����ڡ�');
    END IF;
END;
/
prompt
prompt ���ڴ����¼���Ϊ 8200000000019827 �Ľű�
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
      dbms_output.put_line('�ű�����������Ϊ T_PLUG_LOCK_CP_CONC.DETECT_DATE �����ڡ�');
    END IF;
END;
/
prompt
prompt ���ڴ����¼���Ϊ 8200000000019828 �Ľű�
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
      dbms_output.put_line('�ű�����������Ϊ T_CONNECT_CONFIRM_CP_CONC.DETECT_DATE �����ڡ�');
    END IF;
END;
/
prompt
prompt ���ڴ����¼���Ϊ 8200000000019829 �Ľű�
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
      dbms_output.put_line('�ű�����������Ϊ T_STANDBY_POWER_CP_CONC.DETECT_DATE �����ڡ�');
    END IF;
END;
/
prompt
prompt ���ڴ����¼���Ϊ 8200000000019830 �Ľű�
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
      dbms_output.put_line('�ű�����������Ϊ T_MEASUREMENT_ERROR_CP_CONC.DETECT_DATE �����ڡ�');
    END IF;
END;
/
prompt
prompt ���ڴ����¼���Ϊ 8200000000019831 �Ľű�
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
      dbms_output.put_line('�ű�����������Ϊ T_INDICATIVE_ERROR_CP_CONC.DETECT_DATE �����ڡ�');
    END IF;
END;
/
prompt
prompt ���ڴ����¼���Ϊ 8200000000019832 �Ľű�
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
      dbms_output.put_line('�ű�����������Ϊ T_MEASURE_UNIFORMITY_CP_CONC.DETECT_DATE �����ڡ�');
    END IF;
END;
/
prompt
prompt ���ڴ����¼���Ϊ 8200000000019833 �Ľű�
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
      dbms_output.put_line('�ű�����������Ϊ T_SCRAM_FUNCTION_CP_CONC.DETECT_DATE �����ڡ�');
    END IF;
END;
/
prompt
prompt ���ڴ����¼���Ϊ 8200000000019834 �Ľű�
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
      dbms_output.put_line('�ű�����������Ϊ T_VOLT_LOSS_CP_CONC.DETECT_DATE �����ڡ�');
    END IF;
END;
/
prompt
prompt ���ڴ����¼���Ϊ 8200000000019835 �Ľű�
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
      dbms_output.put_line('�ű�����������Ϊ T_MAXOUT_POWER_CP_CONC.DETECT_DATE �����ڡ�');
    END IF;
END;
/
prompt
prompt ���ڴ����¼���Ϊ 8200000000019836 �Ľű�
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
      dbms_output.put_line('�ű�����������Ϊ T_CURRENT_PRECISION_CP_CONC.DETECT_DATE �����ڡ�');
    END IF;
END;
/
prompt
prompt ���ڴ����¼���Ϊ 8200000000019837 �Ľű�
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
      dbms_output.put_line('�ű�����������Ϊ T_VOLT_PRECISION_CP_CONC.DETECT_DATE �����ڡ�');
    END IF;
END;
/
prompt
prompt ���ڴ����¼���Ϊ 8200000000019838 �Ľű�
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
      dbms_output.put_line('�ű�����������Ϊ T_EFFICIENCY_CP_CONC.DETECT_DATE �����ڡ�');
    END IF;
END;
/
prompt
prompt ���ڴ����¼���Ϊ 8200000000019839 �Ľű�
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
      dbms_output.put_line('�ű�����������Ϊ T_PF_CP_CONC.DETECT_DATE �����ڡ�');
    END IF;
END;
/
prompt
prompt ���ڴ����¼���Ϊ 8200000000019840 �Ľű�
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
      dbms_output.put_line('�ű�����������Ϊ T_VOLT_RIPPLE_CP_CONC.DETECT_DATE �����ڡ�');
    END IF;
END;
/
prompt
prompt ���ڴ����¼���Ϊ 8200000000019842 �Ľű�
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
      dbms_output.put_line('�ű�����������Ϊ T_LOWVOLT_AUXILIARY_CP_CONC.DETECT_DATE �����ڡ�');
    END IF;
END;
/
prompt
prompt ���ڴ����¼���Ϊ 8200000000019843 �Ľű�
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
      dbms_output.put_line('�ű�����������Ϊ T_OPEN_PROTECT_CP_CONC.DETECT_DATE �����ڡ�');
    END IF;
END;
/
prompt
prompt ���ڴ����¼���Ϊ 8200000000019844 �Ľű�
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
      dbms_output.put_line('�ű�����������Ϊ T_SIGNAL_BREAK_CP_CONC.DETECT_DATE �����ڡ�');
    END IF;
END;
/
prompt
prompt ���ڴ����¼���Ϊ 8200000000019845 �Ľű�
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
      dbms_output.put_line('�ű�����������Ϊ T_INSULATE_ABNORMAL_CP_CONC.DETECT_DATE �����ڡ�');
    END IF;
END;
/
prompt
prompt ���ڴ����¼���Ϊ 8200000000019846 �Ľű�
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
      dbms_output.put_line('�ű�����������Ϊ T_COMM_BREAK_CP_CONC.DETECT_DATE �����ڡ�');
    END IF;
END;
/
prompt
prompt ���ڴ����¼���Ϊ 8200000000019847 �Ľű�
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
      dbms_output.put_line('�ű�����������Ϊ T_PROTECT_LANDING_CP_CONC.DETECT_DATE �����ڡ�');
    END IF;
END;
/
prompt
prompt ���ڴ����¼���Ϊ 8200000000019848 �Ľű�
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
      dbms_output.put_line('�ű�����������Ϊ T_POWERUP_MESSAGE_CP_CONC.DETECT_DATE �����ڡ�');
    END IF;
END;
/
prompt
prompt ���ڴ����¼���Ϊ 8200000000019849 �Ľű�
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
      dbms_output.put_line('�ű�����������Ϊ T_CONFIG_MSG_CP_CONC.DETECT_DATE �����ڡ�');
    END IF;
END;
/
prompt
prompt ���ڴ����¼���Ϊ 8200000000019850 �Ľű�
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
      dbms_output.put_line('�ű�����������Ϊ T_CHARGE_MEAASGE_CP_CONC.DETECT_DATE �����ڡ�');
    END IF;
END;
/
prompt
prompt ���ڴ����¼���Ϊ 8200000000019851 �Ľű�
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
      dbms_output.put_line('�ű�����������Ϊ T_CHARGEEND_MEAASGE_CP_CONC.DETECT_DATE �����ڡ�');
    END IF;
END;
/
prompt
prompt ���ڴ����¼���Ϊ 8200000000019852 �Ľű�
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
      dbms_output.put_line('�ű�����������Ϊ T_PORT_CP_CONC.DETECT_DATE �����ڡ�');
    END IF;
END;
/
prompt
prompt ���ڴ����¼���Ϊ 8200000000019883 �Ľű�
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
      dbms_output.put_line('�ű�����������Ϊ MDS_UPDATE_SQL.SQL_ID �����ڡ�');
    END IF;
END;

/

alter table MDS_UPDATE_SQL modify TABLE_NAME VARCHAR2(64);

prompt
prompt ���ڴ����¼���Ϊ 8200000000019936 �Ľű�
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
      dbms_output.put_line('�ű�����������Ϊ U_DIST_TASK_SCHE.arrive_batch_no �Ѵ��ڡ�');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column U_DIST_TASK_SCHE.arrive_batch_no
      is ''�������κţ��������η���󱣴������ų�����ʱ�������ݣ�ҳ��¼�룩''
    ';
END;
/
prompt
prompt ���ڴ����¼���Ϊ 8200000000019975 �Ľű�
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
      dbms_output.put_line('�ű�����������Ϊ U_DIST_SCHE_TASK_DET.is_samping_flag �Ѵ��ڡ�');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column U_DIST_SCHE_TASK_DET.is_samping_flag
      is ''�Ƿ������豸��1:���������豸��0�����������豸�������������Ͷ����ų̷��ͻ����ֶ�¼������''
    ';
END;
/
prompt
prompt ���ڴ����¼���Ϊ 8200000000020117 �Ľű�
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
      dbms_output.put_line('�ű�����������Ϊ D_MODULE_EQUIP_RELA.COMM_MODULE_ID �����ڡ�');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column D_MODULE_EQUIP_RELA.comm_module_id
      is ''ͨ��ģ��������''
    ';
END;
/


prompt
prompt ���ڴ����¼���Ϊ 8200000000019367 �Ľű�
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
      dbms_output.put_line('�ű�����������Ϊ F_PRODUCT_PLAN_TASK �Ѵ��ڡ�');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table F_PRODUCT_PLAN_TASK
      is ''�����ƻ���
      1�������ƻ�����ʵ����Ҫ������Ψһ��ʶ���ƻ������š�����ƻ����·���Ϣ���������͵����ԡ�
      2��ͨ�������ƻ�������¼�������¼��
      3����ʵ����Ҫ�������ƻ�����ҵ��ʹ�á�''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_PRODUCT_PLAN_TASK.task_id
      is ''Ψһ��ʶ''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_PRODUCT_PLAN_TASK.task_no
      is ''�ƻ������ţ���Ӧ���ּ�����Ϣ���еġ������š�task_no''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_PRODUCT_PLAN_TASK.plan_date
      is ''����ƻ����·���Ϣ''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_PRODUCT_PLAN_TASK.plan_type
      is ''�������ͣ���Ӧ���뼯��01-�˿�  02-��ѡ  03-�ּ�  04-����  05-�춨''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_PRODUCT_PLAN_TASK.status
      is ''����״̬����Ӧ���뼯��01��ʼ��02���ύ''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_PRODUCT_PLAN_TASK.equip_categ
      is ''�豸��𣬼����豸�������࣬���ù���������׼�����༯��VW_EQUIP_CATEG''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_PRODUCT_PLAN_TASK.wiring_mode
      is ''���߷�ʽ�������豸�Ľ��߷�ʽ�����ù���������׼�����༯��VW_WIRING_MODE''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_PRODUCT_PLAN_TASK.maker_no
      is ''�ƶ���Ա���''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_PRODUCT_PLAN_TASK.maker_name
      is ''�ƶ���Ա����''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_PRODUCT_PLAN_TASK.maker_org_no
      is ''�ƶ���Ա������λ''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_PRODUCT_PLAN_TASK.made_time
      is ''�ƶ�ʱ��''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_PRODUCT_PLAN_TASK.remark
      is ''��ע''
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
      dbms_output.put_line('�ű�����������Ϊ PK_F_PRODUCT_PLAN_TASK �Ѵ��ڡ�');
    END IF;
END;
/
prompt
prompt ���ڴ����¼���Ϊ 8200000000019368 �Ľű�
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
      dbms_output.put_line('�ű�����������Ϊ F_PRODUCT_PLAN_DET �Ѵ��ڡ�');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table F_PRODUCT_PLAN_DET
      is ''�����ƻ���ϸ��
      1����ʵ����Ҫ������Ψһ��ʶ���ƻ������š��ƻ�����ϸʱ�䡢ÿ��ƻ������������ԡ�
      2��ͨ�������ƻ�������¼�������¼��
      3����ʵ����Ҫ�������ƻ�����ҵ��ʹ�á�''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_PRODUCT_PLAN_DET.task_id
      is ''Ψһ��ʶ''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_PRODUCT_PLAN_DET.task_no
      is ''�ƻ������ţ���Ӧ���ּ�����Ϣ���еġ������š�task_no''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_PRODUCT_PLAN_DET.det_date
      is ''�ƻ�����ϸʱ�䣬������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_PRODUCT_PLAN_DET.qty
      is ''ÿ��ƻ�������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_PRODUCT_PLAN_DET.finish_qty
      is ''�������''
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
      dbms_output.put_line('�ű�����������Ϊ PK_F_PRODUCT_PLAN_DET �Ѵ��ڡ�');
    END IF;
END;
/
prompt
prompt ���ڴ����¼���Ϊ 8200000000019369 �Ľű�
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
      dbms_output.put_line('�ű�����������Ϊ SEQ_PRODUCT_PLAN_TASK �Ѵ��ڡ�');
    END IF;
END;
/
prompt
prompt ���ڴ����¼���Ϊ 8200000000020258 �Ľű�
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
      dbms_output.put_line('�ű�����������Ϊ T_CONSIGNER_RETURN_TASK.main_return_task_id �Ѵ��ڡ�');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column T_CONSIGNER_RETURN_TASK.main_return_task_id
      is ''����豸�������׮ί����������ʶ��Ĭ��-1''
    ';
END;
/
prompt
prompt ���ڴ����¼���Ϊ 8200000000020325 �Ľű�
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
      dbms_output.put_line('�ű�����������Ϊ IDX_D_EXPORT_EQUIP �Ѵ��ڡ�');
    END IF;
END;
/
prompt
prompt ���ڴ����¼���Ϊ 8200000000020398 �Ľű�
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
      dbms_output.put_line('�ű�����������Ϊ T_CONSIGNER_RETURN_TASK.CUSTOMER_COMPANY_NAME �����ڡ�');
    END IF;
END;
/




----------------------------------------------
-----------------ʧ׼����
-------------------------------------------------

prompt
prompt ���ڴ����¼���Ϊ 8200000000009587 �Ľű�
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
      dbms_output.put_line('�ű�����������Ϊ SR_RUNNING_RULE �Ѵ��ڡ�');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table SR_RUNNING_RULE
      is ''���й������ñ�''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_RUNNING_RULE.RULE_ID
      is ''����ID''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_RUNNING_RULE.RULE_NO
      is ''������(���к�)''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_RUNNING_RULE.RULE_NAME
      is ''��������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_RUNNING_RULE.RULE_STATES
      is ''����״̬''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_RUNNING_RULE.MAKER_NO
      is ''�ƶ���''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_RUNNING_RULE.MADE_DATE
      is ''�ƶ�����''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_RUNNING_RULE.BELONG_DEPT
      is ''�ƶ���λ(���ܱ����λ)''
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
      dbms_output.put_line('�ű�����������Ϊ PK_SR_RUNNING_RULE �Ѵ��ڡ�');
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
      dbms_output.put_line('�ű�����������Ϊ SEQ_SR_RUNNING_RULEID �Ѵ��ڡ�');
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
      dbms_output.put_line('�ű�����������Ϊ SEQ_SR_RUNNING_RULENO �Ѵ��ڡ�');
    END IF;
END;
/
prompt
prompt ���ڴ����¼���Ϊ 8200000000009589 �Ľű�
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
      dbms_output.put_line('�ű�����������Ϊ SR_RUNNING_RULE_DET �Ѵ��ڡ�');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table SR_RUNNING_RULE_DET
      is ''���й���������ϸ��''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_RUNNING_RULE_DET.RULE_ID
      is ''����ID''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_RUNNING_RULE_DET.RULE_DET_ID
      is ''��������ID''
    ';
END;
/
prompt
prompt ���ڴ����¼���Ϊ 8200000000009592 �Ľű�
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
      dbms_output.put_line('�ű�����������Ϊ SR_RUNNING_SUBRULE_ALL �Ѵ��ڡ�');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table SR_RUNNING_SUBRULE_ALL
      is ''��������ȫ����''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_RUNNING_SUBRULE_ALL.RULE_DET_CHNAME
      is ''������������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_RUNNING_SUBRULE_ALL.RULE_DET_TYPE
      is ''�������ͣ�01����02��ѡһ03ѡ�''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_RUNNING_SUBRULE_ALL.RULE_DET_ID
      is ''��������ID''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_RUNNING_SUBRULE_ALL.RULE_DET_ENAME
      is ''��������''
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
      dbms_output.put_line('�ű�����������Ϊ PK_SR_RUNNING_SUBRULE_ALL �Ѵ��ڡ�');
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
      dbms_output.put_line('�ű�����������Ϊ SEQ_SR_RUNNING_SUBRULE_ALL �Ѵ��ڡ�');
    END IF;
END;
/
prompt
prompt ���ڴ����¼���Ϊ 8200000000009593 �Ľű�
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
      dbms_output.put_line('�ű�����������Ϊ SR_BATCH_GENERATE �Ѵ��ڡ�');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table SR_BATCH_GENERATE
      is ''�����������ɼ�¼''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_BATCH_GENERATE.READ_ID
      is ''��¼ID''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_BATCH_GENERATE.RULE_ID
      is ''����ID''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_BATCH_GENERATE.RUN_METER_COUNT
      is ''���б�����''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_BATCH_GENERATE.RUN_BATCH_COUNT
      is ''����������������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_BATCH_GENERATE.INTALL_YEAR
      is ''��װ���''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_BATCH_GENERATE.GENERATE_RESULT
      is ''���ɽ�� 01����Ч�У�02����ʧЧ''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_BATCH_GENERATE.OPERATE_DATE
      is ''����ʱ��''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_BATCH_GENERATE.DEPT_NO
      is ''������λ''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_BATCH_GENERATE.OPERATOR_NO
      is ''������Ա''
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
      dbms_output.put_line('�ű�����������Ϊ PK_SR_BATCH_GENERATE �Ѵ��ڡ�');
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
      dbms_output.put_line('�ű�����������Ϊ SEQ_SR_BATCH_GENERATE �Ѵ��ڡ�');
    END IF;
END;
/
prompt
prompt ���ڴ����¼���Ϊ 8200000000009594 �Ľű�
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
      is ''�������''
    ';  
    EXECUTE IMMEDIATE
    '
      comment on table SR_RUNNING_BATCH
      is ''�������α�''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_RUNNING_BATCH.BATCH_NO
      is ''�������κ�''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_RUNNING_BATCH.BATCH_ID
      is ''��������ID''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_RUNNING_BATCH.READ_ID
      is ''���ɼ�¼ID''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_RUNNING_BATCH.BID_BATCH_NO
      is ''�б�����''
    ';

    EXECUTE IMMEDIATE
    '
      comment on column SR_RUNNING_BATCH.LATEST_CHK_YEAR
      is ''�춨���''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_RUNNING_BATCH.INTALL_YEAR
      is ''��װ���''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_RUNNING_BATCH.MANUFACTURER
      is ''��������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_RUNNING_BATCH.TYPE_CODE
      is ''����''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_RUNNING_BATCH.MODEL_CODE
      is ''�ͺ�''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_RUNNING_BATCH.AP_PRE_LEVEL_CODE
      is ''׼ȷ�ȵȼ�''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_RUNNING_BATCH.RATED_CURRENT
      is ''����''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_RUNNING_BATCH.VOLT_CODE
      is ''��ѹ''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_RUNNING_BATCH.WIRING_MODE
      is ''���߷�ʽ''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_RUNNING_BATCH.BELONG_DEPT
      is ''����λ''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_RUNNING_BATCH.TG_NO
      is ''̨�����''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_RUNNING_BATCH.TG_NAME
      is ''̨������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_RUNNING_BATCH.QTY
      is ''����:���ڵ�λ���������ε��ܱ����������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_RUNNING_BATCH.LAST_SAMPLE_RLST
      is ''���һ�γ����:���һ�ε����б���/���ڱ�������01���ϸ�''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_RUNNING_BATCH.LAST_EVALUATE_RLST
      is ''���һ�����۽��''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_RUNNING_BATCH.BATCH_STATUS
      is ''����״̬''
    ';        
    ELSE
      dbms_output.put_line('�ű�����������Ϊ SR_RUNNING_BATCH �Ѵ��ڡ�');
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
      dbms_output.put_line('�ű�����������Ϊ PK_SR_RUNNING_BATCH �Ѵ��ڡ�');
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
      dbms_output.put_line('�ű�����������Ϊ SEQ_SR_RUNNING_BATCH �Ѵ��ڡ�');
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
      dbms_output.put_line('�ű�����������Ϊ SEQ_SR_RUNNING_BATCHNO �Ѵ��ڡ�');
    END IF;
END;
/
prompt
prompt ���ڴ����¼���Ϊ 8200000000009600 �Ľű�
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
      dbms_output.put_line('�ű�����������Ϊ SR_EXPIRE_SAMPLING_SCHEME �Ѵ��ڡ�');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table SR_EXPIRE_SAMPLING_SCHEME
      is ''����������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_EXPIRE_SAMPLING_SCHEME.SCHEME_ID
      is ''����ID''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_EXPIRE_SAMPLING_SCHEME.SCHEME_NO
      is ''�������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_EXPIRE_SAMPLING_SCHEME.SCHEME_NAME
      is ''��������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_EXPIRE_SAMPLING_SCHEME.SCHEMA_TYPE_CODE
      is ''��������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_EXPIRE_SAMPLING_SCHEME.EXEC_TYPE_CODE
      is ''ִ�����''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_EXPIRE_SAMPLING_SCHEME.EXEC_MODE
      is ''ִ�з�ʽ''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_EXPIRE_SAMPLING_SCHEME.SAMPLING_ASSET_CODE
      is ''�����ʲ�''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_EXPIRE_SAMPLING_SCHEME.MIN_MAX_LOT
      is ''��������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_EXPIRE_SAMPLING_SCHEME.FST_SAMPLING_QTY
      is ''һ�γ�����������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_EXPIRE_SAMPLING_SCHEME.FRST_PASS_QTY
      is ''һ�γ����ϸ��ж���''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_EXPIRE_SAMPLING_SCHEME.FRST_DISQLF_QTY
      is ''һ�γ������ϸ��ж���''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_EXPIRE_SAMPLING_SCHEME.FRST_RESERVE_QTY
      is ''һ�γ�����������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_EXPIRE_SAMPLING_SCHEME.SND_SAMPLING_QTY
      is ''���γ�����������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_EXPIRE_SAMPLING_SCHEME.SND_PASS_QTY
      is ''���γ����ϸ��ж���''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_EXPIRE_SAMPLING_SCHEME.SND_DISQLF_QTY
      is ''���γ������ϸ��ж���''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_EXPIRE_SAMPLING_SCHEME.SND_RESERVE_QTY
      is ''���α�������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_EXPIRE_SAMPLING_SCHEME.MAKER_NO
      is ''�ƶ���''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_EXPIRE_SAMPLING_SCHEME.MADE_DATE
      is ''�ƶ�����''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_EXPIRE_SAMPLING_SCHEME.DEPT_NO
      is ''�ƶ���λ''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_EXPIRE_SAMPLING_SCHEME.STATUS_CODE
      is ''״̬''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_EXPIRE_SAMPLING_SCHEME.REMARK
      is ''��ע''
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
      dbms_output.put_line('�ű�����������Ϊ PK_SR_EXPIRE_SAMPLING_SCHEME �Ѵ��ڡ�');
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
      dbms_output.put_line('�ű�����������Ϊ SEQ_SR_EXPIRE_SAMPLING_SCHEME �Ѵ��ڡ�');
    END IF;
END;
/
prompt
prompt ���ڴ����¼���Ϊ 8200000000009655 �Ľű�
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
      dbms_output.put_line('�ű�����������Ϊ SR_FAULTALARM_CONFIG �Ѵ��ڡ�');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table SR_FAULTALARM_CONFIG
      is ''���͹���ԭ��ͳ����Ԥ�澯���ñ�''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_FAULTALARM_CONFIG.FAULT_TYPE_CODE
      is ''��������������,ȡ��vw_repick_meter_fault_type_l3''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_FAULTALARM_CONFIG.FAULT_TYPE
      is ''������������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_FAULTALARM_CONFIG.WARNING_THRESHOLD
      is ''Ԥ����ֵ''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_FAULTALARM_CONFIG.ALARM_THRESHOLD
      is ''�澯��ֵ''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_FAULTALARM_CONFIG.FAULT_LEVEL
      is ''���ϵȼ�,ȡ����ͼvw_repick_fault_level:''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_FAULTALARM_CONFIG.CONFIG_ID
      is ''���ü�¼id''
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
      dbms_output.put_line('�ű�����������Ϊ PK_SR_FAULTALARM_CONFIG �Ѵ��ڡ�');
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
      dbms_output.put_line('�ű�����������Ϊ SEQ_SR_FAULTALARM_CONFIG �Ѵ��ڡ�');
    END IF;
END;
/
prompt
prompt ���ڴ����¼���Ϊ 8200000000009818 �Ľű�
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
prompt ���ڴ����¼���Ϊ 8200000000010018 �Ľű�
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
      dbms_output.put_line('�ű�����������Ϊ SR_BATCH_WARNING_REC �Ѵ��ڡ�');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table SR_BATCH_WARNING_REC
      is ''��������Ԥ�澯��¼��''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_BATCH_WARNING_REC.REC_ID
      is ''Ԥ�澯��¼ID��������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_BATCH_WARNING_REC.BATCH_NO
      is ''�������κ�''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_BATCH_WARNING_REC.WARNING_TYPE
      is ''Ԥ�澯����, Vw_sr_warning_type''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_BATCH_WARNING_REC.FAULT_LEVEL
      is ''���ϵȼ� vw_repick_fault_level''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_BATCH_WARNING_REC.FAULT_TYPE_CODE
      is ''����������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_BATCH_WARNING_REC.FAULT_TYPE
      is ''��������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_BATCH_WARNING_REC.WARNING_TIME
      is ''Ԥ�澯ʱ��''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_BATCH_WARNING_REC.HANDLER_NO
      is ''������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_BATCH_WARNING_REC.HANDLE_TIME
      is ''����ʱ��''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_BATCH_WARNING_REC.HANDLE_STATE
      is ''����״̬Vw_sr_handle_state''
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
      dbms_output.put_line('�ű�����������Ϊ PK_SR_BATCH_WARNING_REC �Ѵ��ڡ�');
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
      dbms_output.put_line('�ű�����������Ϊ SEQ_SR_BATCH_WARNING_REC �Ѵ��ڡ�');
    END IF;
END;
/
prompt
prompt ���ڴ����¼���Ϊ 8200000000010124 �Ľű�
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
      is ''�����˱��''
    '; 
    EXECUTE IMMEDIATE
    '
      comment on table SR_COMPONENT_DOC
      is ''Ԫ����������Ϣ��''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_COMPONENT_DOC.COMPONENT_ID
      is ''Ԫ����ID''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_COMPONENT_DOC.COMPONENT_NAME
      is ''Ԫ��������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_COMPONENT_DOC.COMPONENT_CATEGORY
      is ''Ԫ�������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_COMPONENT_DOC.COMPONENT_CORE
      is ''�Ƿ�Ϊ�ؼ�Ԫ����''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_COMPONENT_DOC.COMPONENT_TYPE
      is ''Ԫ�����ͺ�''
    ';

    EXECUTE IMMEDIATE
    '
      comment on column SR_COMPONENT_DOC.COMPONENT_VERSION
      is ''Ԫ�����汾''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_COMPONENT_DOC.COMPONENT_BATCH_NO
      is ''Ԫ������������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_COMPONENT_DOC.COMPONENT_FILE_ID
      is ''Ԫ����ͼƬ''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_COMPONENT_DOC.CREATE_DATE
      is ''��������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_COMPONENT_DOC.CREATE_ORGNO
      is ''������λ���''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_COMPONENT_DOC.COMPONENT_MANUFACTURER
      is ''Ԫ��������''
    ';         
    ELSE
      dbms_output.put_line('�ű�����������Ϊ SR_COMPONENT_DOC �Ѵ��ڡ�');
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
      dbms_output.put_line('�ű�����������Ϊ PK_SR_COMPONENT_DOC �Ѵ��ڡ�');
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
      dbms_output.put_line('�ű�����������Ϊ SEQ_SR_COMPONENT_DOC �Ѵ��ڡ�');
    END IF;
END;
/
prompt
prompt ���ڴ����¼���Ϊ 8200000000010126 �Ľű�
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
      is ''����ID''
    '; 
    EXECUTE IMMEDIATE
    '
      comment on table SR_METER_COMPONENT
      is ''Ԫ����ѡ����Ϣ��''
    ';

    EXECUTE IMMEDIATE
    '
      comment on column SR_METER_COMPONENT.BID_BATCH_NO
      is ''�б�����''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_METER_COMPONENT.CREATE_USER
      is ''�����˱��''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_METER_COMPONENT.CREATE_DATE
      is ''��������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_METER_COMPONENT.CREATE_ORGNO
      is ''������λ���''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_METER_COMPONENT.COMPONENT_ID
      is ''Ԫ����ID''
    ';         
    ELSE
      dbms_output.put_line('�ű�����������Ϊ SR_METER_COMPONENT �Ѵ��ڡ�');
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
      dbms_output.put_line('�ű�����������Ϊ PK_SR_METER_COMPONENT �Ѵ��ڡ�');
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
      dbms_output.put_line('�ű�����������Ϊ SEQ_SR_METER_COMPONENT �Ѵ��ڡ�');
    END IF;
END;
/
prompt
prompt ���ڴ����¼���Ϊ 8200000000010131 �Ľű�
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
      dbms_output.put_line('�ű�����������Ϊ SR_ERR_STATISTICS �Ѵ��ڡ�');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table SR_ERR_STATISTICS
      is ''���ֲ�ͳ�Ʊ�''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_ERR_STATISTICS.STATISTICS_ID
      is ''����ID''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_ERR_STATISTICS.ERR_TYPE
      is ''������(VW_SR_ERRTYPE)''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_ERR_STATISTICS.CONDITION_TYPE
      is ''��������(VW_SR_CONDITIONTYPE)''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_ERR_STATISTICS.STAT_TIME
      is ''ͳ��ʱ��''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_ERR_STATISTICS.STAT_NUM
      is ''����''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_ERR_STATISTICS.BATCH_NO
      is ''�������κ�''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_ERR_STATISTICS.ERR_INTERVAL
      is ''�������(vw_SR_err_interval)''
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
      dbms_output.put_line('�ű�����������Ϊ PK_SR_ERR_STATISTICS �Ѵ��ڡ�');
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
      dbms_output.put_line('�ű�����������Ϊ SEQ_SR_ERR_STATISTICS �Ѵ��ڡ�');
    END IF;
END;
/
prompt
prompt ���ڴ����¼���Ϊ 8200000000010139 �Ľű�
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
      dbms_output.put_line('�ű�����������Ϊ SR_BATCH_FAULT_JUDGE �Ѵ��ڡ�');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table SR_BATCH_FAULT_JUDGE
      is ''�������ι����ж���¼��''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_BATCH_FAULT_JUDGE.JUDGE_ID
      is ''�ж���¼ID��������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_BATCH_FAULT_JUDGE.BATCH_NO
      is ''�������κ�''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_BATCH_FAULT_JUDGE.JUDGE_CONC
      is ''�ж�����(vw_sr_judge_conc)''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_BATCH_FAULT_JUDGE.JUDGE_TIME
      is ''�ж�ʱ��''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_BATCH_FAULT_JUDGE.JUDGE_BASIS
      is ''�ж�����''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_BATCH_FAULT_JUDGE.ATTACH_FILE_ID
      is ''����''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_BATCH_FAULT_JUDGE.JUDGER_NO
      is ''�ж���''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_BATCH_FAULT_JUDGE.FAULT_DANGER
      is ''��������''
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
      dbms_output.put_line('�ű�����������Ϊ PK_SR_BATCH_FAULT_JUDGE �Ѵ��ڡ�');
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
      dbms_output.put_line('�ű�����������Ϊ SEQ_SR_BATCH_FAULT_JUDGE �Ѵ��ڡ�');
    END IF;
END;
/
prompt
prompt ���ڴ����¼���Ϊ 8200000000010181 �Ľű�
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
        is ''��������''
      '; 
    EXECUTE IMMEDIATE
    '
      comment on table SR_RUNNING_METER_DOC
      is ''���е��ܱ���''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_RUNNING_METER_DOC.read_id
      is ''�����ֶ�''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_RUNNING_METER_DOC.equip_id
      is ''�豸ID''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_RUNNING_METER_DOC.bar_code
      is ''������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_RUNNING_METER_DOC.org_no
      is ''���絥λ''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_RUNNING_METER_DOC.bid_batch_no
      is ''�б�����''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_RUNNING_METER_DOC.made_year
      is ''�������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_RUNNING_METER_DOC.latest_chk_year
      is ''�춨���''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_RUNNING_METER_DOC.intall_year
      is ''��װ���''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_RUNNING_METER_DOC.manufacturer
      is ''��������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_RUNNING_METER_DOC.type_code
      is ''����''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_RUNNING_METER_DOC.model_code
      is ''�ͺ�''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_RUNNING_METER_DOC.ap_pre_level_code
      is ''׼ȷ�ȵȼ�''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_RUNNING_METER_DOC.rated_current
      is ''����''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_RUNNING_METER_DOC.volt_code
      is ''��ѹ''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_RUNNING_METER_DOC.wiring_mode
      is ''���߷�ʽ''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_RUNNING_METER_DOC.belong_dept
      is ''����λ''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_RUNNING_METER_DOC.comm_mode
      is ''ͨѶ��ʽ''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_RUNNING_METER_DOC.chip_manufacturer
      is ''оƬ����''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_RUNNING_METER_DOC.spec_code
      is ''���ܱ���''
    ';

    EXECUTE IMMEDIATE
    '
      comment on column SR_RUNNING_METER_DOC.mp_name
      is ''����������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_RUNNING_METER_DOC.tg_no
      is ''̨������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_RUNNING_METER_DOC.tg_name
      is ''̨������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_RUNNING_METER_DOC.equip_code
      is ''�豸��''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_RUNNING_METER_DOC.mp_attr_code
      is ''���������ʡ�01���㡢02����''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_RUNNING_METER_DOC.mp_addr
      is ''�������ַ''
    ';           
    ELSE
      dbms_output.put_line('�ű�����������Ϊ SR_RUNNING_METER_DOC �Ѵ��ڡ�');
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
      dbms_output.put_line('�ű�����������Ϊ PK_SR_RUNNING_METER_DOC �Ѵ��ڡ�');
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
      dbms_output.put_line('�ű�����������Ϊ SEQ_SR_RUNNING_METER_DOC �Ѵ��ڡ�');
    END IF;
END;
/
prompt
prompt ���ڴ����¼���Ϊ 8200000000010504 �Ľű�
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
      dbms_output.put_line('�ű�����������Ϊ SR_BATCH_FAULT_JUDGE.is_update_sg �Ѵ��ڡ�');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column SR_BATCH_FAULT_JUDGE.is_update_sg
      is ''0:δͬ��,1:��ͬ��.��ͼ:VW_IS_UPDATE_SG''
    ';
END;
/
prompt
prompt ���ڴ����¼���Ϊ 8200000000010663 �Ľű�
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
        is ''��������''
      ';  
    EXECUTE IMMEDIATE
    '
      comment on table SR_RUNNING_BATCH_DET
      is ''����������ϸ��''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_RUNNING_BATCH_DET.BATCH_ID
      is ''��������ID''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_RUNNING_BATCH_DET.ORG_NO
      is ''���絥λ''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_RUNNING_BATCH_DET.EQUIP_ID
      is ''�豸ID��������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_RUNNING_BATCH_DET.BAR_CODE
      is ''������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_RUNNING_BATCH_DET.EQUIP_CODE
      is ''�豸��''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_RUNNING_BATCH_DET.COMM_MODE
      is ''ͨѶ��ʽ''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_RUNNING_BATCH_DET.CHIP_MANUFACTURER
      is ''оƬ����''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_RUNNING_BATCH_DET.SPEC_CODE
      is ''���ܱ���''
    ';

    EXECUTE IMMEDIATE
    '
      comment on column SR_RUNNING_BATCH_DET.MP_NAME
      is ''����������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_RUNNING_BATCH_DET.MP_ADDR
      is ''�������ַ''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_RUNNING_BATCH_DET.MP_ATTR_CODE
      is ''����������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_RUNNING_BATCH_DET.TG_NO
      is ''̨������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_RUNNING_BATCH_DET.TG_NAME
      is ''̨������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_RUNNING_BATCH_DET.BATCH_NO
      is ''�������κ�''
    ';          
    ELSE
      dbms_output.put_line('�ű�����������Ϊ SR_RUNNING_BATCH_DET �Ѵ��ڡ�');
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
      dbms_output.put_line('�ű�����������Ϊ PK_SR_RUNNING_BATCH_DET �Ѵ��ڡ�');
    END IF;
END;
/
prompt
prompt ���ڴ����¼���Ϊ 8200000000011960 �Ľű�
prompt ==========================
----������	2019/3/5 9:18:01
--vw_meter_fault_type_l4
update p_code_std set name='��Դ�����쳣' WHERE code_type = 'meterFaultType' and value='04090301';
commit;

prompt
prompt ���ڴ����¼���Ϊ 8200000000011961 �Ľű�
prompt ==========================
----������	2019/3/5 9:19:25
--vw_meter_fault_type_l3
update p_code_std set name='��Դ�����쳣' WHERE code_type = 'meterFaultType' and value='040903';
commit;
prompt
prompt ���ڴ����¼���Ϊ 8200000000012090 �Ľű�
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
      dbms_output.put_line('�ű�����������Ϊ SR_RUNNING_BATCH_DET.cons_no �Ѵ��ڡ�');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'SR_RUNNING_BATCH_DET' AND U.COLUMN_NAME='ELEC_ADDR';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table SR_RUNNING_BATCH_DET add elec_addr VARCHAR2(256) 
      ';
    ELSE
      dbms_output.put_line('�ű�����������Ϊ SR_RUNNING_BATCH_DET.elec_addr �Ѵ��ڡ�');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'SR_RUNNING_BATCH_DET' AND U.COLUMN_NAME='CONS_NAME';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table SR_RUNNING_BATCH_DET add cons_name VARCHAR2(256)
      ';
    ELSE
      dbms_output.put_line('�ű�����������Ϊ SR_RUNNING_BATCH_DET.cons_name �Ѵ��ڡ�');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column SR_RUNNING_BATCH_DET.cons_no
      is ''�û����''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_RUNNING_BATCH_DET.elec_addr
      is ''�õ��ַ''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_RUNNING_BATCH_DET.cons_name
      is ''�û�����''
    ';
END;
/
prompt
prompt ���ڴ����¼���Ϊ 8200000000012091 �Ľű�
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
      dbms_output.put_line('�ű�����������Ϊ SR_RUNNING_METER_DOC.cons_name �Ѵ��ڡ�');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'SR_RUNNING_METER_DOC' AND U.COLUMN_NAME='ELEC_ADDR';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table SR_RUNNING_METER_DOC add elec_addr VARCHAR2(256) 
      ';
    ELSE
      dbms_output.put_line('�ű�����������Ϊ SR_RUNNING_METER_DOC.elec_addr �Ѵ��ڡ�');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'SR_RUNNING_METER_DOC' AND U.COLUMN_NAME='CONS_NO';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table SR_RUNNING_METER_DOC add cons_no VARCHAR2(16)
      ';
    ELSE
      dbms_output.put_line('�ű�����������Ϊ SR_RUNNING_METER_DOC.cons_no �Ѵ��ڡ�');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column SR_RUNNING_METER_DOC.cons_name
      is ''�û�����''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_RUNNING_METER_DOC.elec_addr
      is ''�õ��ַ''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_RUNNING_METER_DOC.cons_no
      is ''�û����''
    ';
END;
/
prompt
prompt ���ڴ����¼���Ϊ 8200000000012168 �Ľű�
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
      dbms_output.put_line('�ű�����������Ϊ SR_RUNNING_BATCH_DET.MP_NO �����ڡ�');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'SR_RUNNING_BATCH_DET' AND U.COLUMN_NAME='MP_ATTR_CODE';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table SR_RUNNING_BATCH_DET drop column mp_attr_code
      ';
    ELSE
      dbms_output.put_line('�ű�����������Ϊ SR_RUNNING_BATCH_DET.MP_ATTR_CODE �����ڡ�');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'SR_RUNNING_BATCH_DET' AND U.COLUMN_NAME='MP_ADDR';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table SR_RUNNING_BATCH_DET drop column mp_addr
      ';
    ELSE
      dbms_output.put_line('�ű�����������Ϊ SR_RUNNING_BATCH_DET DROP COLUMN MP. �Ѵ��ڡ�');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'SR_RUNNING_BATCH_DET' AND U.COLUMN_NAME='MP_NAME';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table SR_RUNNING_BATCH_DET drop column mp_name
      ';
    ELSE
      dbms_output.put_line('�ű�����������Ϊ SR_RUNNING_BATCH_DET.MP_NAME �����ڡ�');
    END IF;
END;
/
prompt
prompt ���ڴ����¼���Ϊ 8200000000012174 �Ľű�
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
      dbms_output.put_line('�ű�����������Ϊ SR_RUNNING_METER_DOC.MP_NO �����ڡ�');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'SR_RUNNING_METER_DOC' AND U.COLUMN_NAME='MP_ATTR_CODE';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table SR_RUNNING_METER_DOC drop column mp_attr_code
      ';
    ELSE
      dbms_output.put_line('�ű�����������Ϊ SR_RUNNING_METER_DOC.MP_ATTR_CODE �����ڡ�');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'SR_RUNNING_METER_DOC' AND U.COLUMN_NAME='MP_ADDR';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table SR_RUNNING_METER_DOC drop column mp_addr
      ';
    ELSE
      dbms_output.put_line('�ű�����������Ϊ SR_RUNNING_METER_DOC DROP COLUMN MP. �Ѵ��ڡ�');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'SR_RUNNING_METER_DOC' AND U.COLUMN_NAME='MP_NAME';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table SR_RUNNING_METER_DOC drop column mp_name
      ';
    ELSE
      dbms_output.put_line('�ű�����������Ϊ SR_RUNNING_METER_DOC.MP_NAME �����ڡ�');
    END IF;
END;
/
prompt
prompt ���ڴ����¼���Ϊ 8200000000013340 �Ľű�
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
      dbms_output.put_line('�ű�����������Ϊ SR_METER_COMPONENT_DET �Ѵ��ڡ�');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table SR_METER_COMPONENT_DET
      is ''Ԫ����ѡ����ϸ��''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_METER_COMPONENT_DET.EQUIP_COMPONENT_DETID
      is ''Ԫ����ѡ����ϸID''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_METER_COMPONENT_DET.EQUIP_COMPONENT_ID
      is ''Ԫ����ѡ��ID''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_METER_COMPONENT_DET.COMPONENT_ID
      is ''Ԫ����ID''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_METER_COMPONENT_DET.QTY
      is ''����''
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
      dbms_output.put_line('�ű�����������Ϊ PK_SR_METER_COMPONENT_DET �Ѵ��ڡ�');
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
      dbms_output.put_line('�ű�����������Ϊ SEQ_SR_METER_COMPONENT_DET �Ѵ��ڡ�');
    END IF;
END;
/
prompt
prompt ���ڴ����¼���Ϊ 8200000000013342 �Ľű�
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    EXECUTE IMMEDIATE
    '
      comment on column SR_COMPONENT_DOC.component_manufacturer
      is ''Ԫ�������쵥λ''
    ';
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'SR_COMPONENT_DOC' AND U.COLUMN_NAME='COMPONENT_TYPE';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table SR_COMPONENT_DOC modify component_type VARCHAR2(128)
      ';
    ELSE
      dbms_output.put_line('�ű�����������Ϊ SR_COMPONENT_DOC.COMPONENT_TYPE �����ڡ�');
    END IF;
END;
/
prompt
prompt ���ڴ����¼���Ϊ 8200000000013456 �Ľű�
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
      dbms_output.put_line('�ű�����������Ϊ SR_METER_COMPONENT �����ڡ�');
    END IF;
END;
/
prompt
prompt ���ڴ����¼���Ϊ 8200000000013457 �Ľű�
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
      dbms_output.put_line('�ű�����������Ϊ SR_METER_COMPONENT �Ѵ��ڡ�');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table SR_METER_COMPONENT
      is ''Ԫ����ѡ����Ϣ��''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_METER_COMPONENT.EQUIP_COMPONENT_ID
      is ''Ԫ����ѡ��ID''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_METER_COMPONENT.BID_BATCH_NO
      is ''�б�����''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_METER_COMPONENT.SPEC_CODE
      is ''�豸���''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_METER_COMPONENT.COMPONENT_FILE_IDS
      is ''ѡ��ͼƬ�����ͼƬFILE_ID�Զ��Ÿ�������B_UPLOAD_FILE_INFO����''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_METER_COMPONENT.CREATE_DATE
      is ''��������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_METER_COMPONENT.CREATE_ORGNO
      is ''������λ���''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_METER_COMPONENT.CREATE_USER
      is ''�����˱��''
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
      dbms_output.put_line('�ű�����������Ϊ PK_SR_METER_COMPONENT �Ѵ��ڡ�');
    END IF;
END;
/
prompt
prompt ���ڴ����¼���Ϊ 8200000000013458 �Ľű�
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
      dbms_output.put_line('�ű�����������Ϊ SR_COMPONENT_DOC �����ڡ�');
    END IF;
END;
/
prompt
prompt ���ڴ����¼���Ϊ 8200000000013459 �Ľű�
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
      dbms_output.put_line('�ű�����������Ϊ SR_COMPONENT_DOC �Ѵ��ڡ�');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table SR_COMPONENT_DOC
      is ''Ԫ����������Ϣ��''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_COMPONENT_DOC.COMPONENT_ID
      is ''Ԫ����ID''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_COMPONENT_DOC.COMPONENT_NAME
      is ''Ԫ��������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_COMPONENT_DOC.COMPONENT_CATEGORY
      is ''Ԫ������� ���ܵ��ܱ�Ԫ��������������������ѹ��������������������������������г������˲������ܡ���ء����ɿ��ء�Ƭʽ��������Һ����ʾ����RS485оƬ��ʱ��оƬ��΢������������оƬ����������������15��''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_COMPONENT_DOC.COMPONENT_CORE
      is ''�Ƿ�Ϊ�ؼ�Ԫ����''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_COMPONENT_DOC.COMPONENT_MANUFACTURER
      is ''Ԫ�������쵥λ''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_COMPONENT_DOC.COMPONENT_TYPE
      is ''Ԫ�����ͺ�''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_COMPONENT_DOC.COMPONENT_SPEC
      is ''Ԫ�������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_COMPONENT_DOC.COMPONENT_PARA
      is ''Ԫ�������ܲ���''
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
      dbms_output.put_line('�ű�����������Ϊ PK_SR_COMPONENT_DOC �Ѵ��ڡ�');
    END IF;
END;
/
prompt
prompt ���ڴ����¼���Ϊ 8200000000014238 �Ľű�
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
      dbms_output.put_line('�ű�����������Ϊ SR_RUNNING_METER_DOC.arrive_batch_no �Ѵ��ڡ�');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column SR_RUNNING_METER_DOC.arrive_batch_no
      is ''�������κ�''
    ';
END;
/
prompt
prompt ���ڴ����¼���Ϊ 8200000000014240 �Ľű�
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
      dbms_output.put_line('�ű�����������Ϊ SR_RUNNING_BATCH.arrive_batch_no �Ѵ��ڡ�');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column SR_RUNNING_BATCH.arrive_batch_no
      is ''�������κ�''
    ';
END;
/
prompt
prompt ���ڴ����¼���Ϊ 8200000000014352 �Ľű�
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
      dbms_output.put_line('�ű�����������Ϊ SR_RUNNING_METER_DOC.arrive_year �Ѵ��ڡ�');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column SR_RUNNING_METER_DOC.arrive_year
      is ''�������''
    ';
END;
/
prompt
prompt ���ڴ����¼���Ϊ 8200000000015159 �Ľű�
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
      dbms_output.put_line('�ű�����������Ϊ SR_RUNNING_RULE.is_default �Ѵ��ڡ�');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column SR_RUNNING_RULE.is_default
      is ''�Ƿ�Ĭ�Ϲ��򲻿�ɾ����VW_YESNO_FLAG��0���� 1����''
    ';
END;
/
prompt
prompt ���ڴ����¼���Ϊ 8200000000015192 �Ľű�
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
      dbms_output.put_line('�ű�����������Ϊ SR_RUNNING_BATCH.spec_code �Ѵ��ڡ�');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'SR_RUNNING_BATCH' AND U.COLUMN_NAME='EQUIP_RATE';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table SR_RUNNING_BATCH add equip_rate VARCHAR2(8)
      ';
    ELSE
      dbms_output.put_line('�ű�����������Ϊ SR_RUNNING_BATCH.equip_rate �Ѵ��ڡ�');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'SR_RUNNING_BATCH' AND U.COLUMN_NAME='ARRIVE_YEAR';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table SR_RUNNING_BATCH add arrive_year VARCHAR2(8)
      ';
    ELSE
      dbms_output.put_line('�ű�����������Ϊ SR_RUNNING_BATCH.arrive_year �Ѵ��ڡ�');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column SR_RUNNING_BATCH.spec_code
      is ''���''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_RUNNING_BATCH.equip_rate
      is ''����''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_RUNNING_BATCH.arrive_year
      is ''�������''
    ';
END;
/
prompt
prompt ���ڴ����¼���Ϊ 8200000000015193 �Ľű�
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
      dbms_output.put_line('�ű�����������Ϊ SR_RUNNING_BATCH.MADE_YEAR �����ڡ�');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'SR_RUNNING_BATCH' AND U.COLUMN_NAME='LATEST_CHK_YEAR';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table SR_RUNNING_BATCH drop column latest_chk_year
      ';
    ELSE
      dbms_output.put_line('�ű�����������Ϊ SR_RUNNING_BATCH.LATEST_CHK_YEAR �����ڡ�');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'SR_RUNNING_BATCH' AND U.COLUMN_NAME='TYPE_CODE';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table SR_RUNNING_BATCH drop column type_code
      ';
    ELSE
      dbms_output.put_line('�ű�����������Ϊ SR_RUNNING_BATCH.TYPE_CODE �����ڡ�');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'SR_RUNNING_BATCH' AND U.COLUMN_NAME='MODEL_CODE';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table SR_RUNNING_BATCH drop column model_code
      ';
    ELSE
      dbms_output.put_line('�ű�����������Ϊ SR_RUNNING_BATCH.MODEL_CODE �����ڡ�');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'SR_RUNNING_BATCH' AND U.COLUMN_NAME='AP_PRE_LEVEL_CODE';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table SR_RUNNING_BATCH drop column ap_pre_level_code
      ';
    ELSE
      dbms_output.put_line('�ű�����������Ϊ SR_RUNNING_BATCH.AP_PRE_LEVEL_CODE �����ڡ�');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'SR_RUNNING_BATCH' AND U.COLUMN_NAME='RATED_CURRENT';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table SR_RUNNING_BATCH drop column rated_current
      ';
    ELSE
      dbms_output.put_line('�ű�����������Ϊ SR_RUNNING_BATCH.RATED_CURRENT �����ڡ�');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'SR_RUNNING_BATCH' AND U.COLUMN_NAME='VOLT_CODE';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table SR_RUNNING_BATCH drop column volt_code
      ';
    ELSE
      dbms_output.put_line('�ű�����������Ϊ SR_RUNNING_BATCH.VOLT_CODE �����ڡ�');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'SR_RUNNING_BATCH' AND U.COLUMN_NAME='WIRING_MODE';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table SR_RUNNING_BATCH drop column wiring_mode
      ';
    ELSE
      dbms_output.put_line('�ű�����������Ϊ SR_RUNNING_BATCH.WIRING_MODE �����ڡ�');
    END IF;
END;
/
prompt
prompt ���ڴ����¼���Ϊ 8200000000015198 �Ľű�
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
      dbms_output.put_line('�ű�����������Ϊ SR_RUNNING_METER_DOC.equip_rate �Ѵ��ڡ�');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column SR_RUNNING_METER_DOC.equip_rate
      is ''����''
    ';
END;
/
prompt
prompt ���ڴ����¼���Ϊ 8200000000015423 �Ľű�
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
      dbms_output.put_line('�ű�����������Ϊ SR_ACTUAL_FAULTRATE �Ѵ��ڡ�');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table SR_ACTUAL_FAULTRATE
      is ''����ʵ�ʹ����ʱ�''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_ACTUAL_FAULTRATE.READ_ID
      is ''��¼ID��������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_ACTUAL_FAULTRATE.BATCH_TYPE
      is ''��������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_ACTUAL_FAULTRATE.BATCH_NO
      is ''���κ�''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_ACTUAL_FAULTRATE.ACTUAL_MONTH
      is ''�·�''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_ACTUAL_FAULTRATE.ACTUAL_FAULT_RATE
      is ''ʵ�ʹ�����''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_ACTUAL_FAULTRATE.IS_BREAK_POINT
      is ''�Ƿ�յ�''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_ACTUAL_FAULTRATE.WRITE_DATE
      is ''д��ʱ��''
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
      dbms_output.put_line('�ű�����������Ϊ PK_SR_ACTUAL_FAULTRATE �Ѵ��ڡ�');
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
      dbms_output.put_line('�ű�����������Ϊ SEQ_SR_ACTUAL_FAULTRATE �Ѵ��ڡ�');
    END IF;
END;
/
prompt
prompt ���ڴ����¼���Ϊ 8200000000015424 �Ľű�
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
      dbms_output.put_line('�ű�����������Ϊ SR_FORECAST_FAULTRATE �Ѵ��ڡ�');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table SR_FORECAST_FAULTRATE
      is ''����Ԥ������ʱ�''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_FORECAST_FAULTRATE.READ_ID
      is ''��¼ID��������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_FORECAST_FAULTRATE.BATCH_TYPE
      is ''��������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_FORECAST_FAULTRATE.BATCH_NO
      is ''���κ�''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_FORECAST_FAULTRATE.FORECAST_MONTH
      is ''�·�''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_FORECAST_FAULTRATE.FORECAST_FAULT_RATE
      is ''Ԥ�������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_FORECAST_FAULTRATE.IS_BREAK_POINT
      is ''�Ƿ�յ�''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_FORECAST_FAULTRATE.UPDATE_DATE
      is ''����ʱ��''
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
      dbms_output.put_line('�ű�����������Ϊ PK_SR_FORECAST_FAULTRATE �Ѵ��ڡ�');
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
      dbms_output.put_line('�ű�����������Ϊ SEQ_SR_FORECAST_FAULTRATE �Ѵ��ڡ�');
    END IF;
END;
/
prompt
prompt ���ڴ����¼���Ϊ 8200000000015505 �Ľű�
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
      dbms_output.put_line('�ű�����������Ϊ SR_ACTUAL_FAULTRATE.ACTUAL_FAULT_RATE �����ڡ�');
    END IF;
END;
/
prompt
prompt ���ڴ����¼���Ϊ 8200000000015506 �Ľű�
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
      dbms_output.put_line('�ű�����������Ϊ SR_FORECAST_FAULTRATE.FORECAST_FAULT_RATE �����ڡ�');
    END IF;
END;
/
prompt
prompt ���ڴ����¼���Ϊ 8200000000015726 �Ľű�
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    EXECUTE IMMEDIATE
    '
      comment on table SR_FAULTALARM_CONFIG
      is ''���ι���Ԥ���������ñ�''
    ';
END;
/
prompt
prompt ���ڴ����¼���Ϊ 8200000000015727 �Ľű�
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
      dbms_output.put_line('�ű�����������Ϊ SR_FAULTALARM_CONFIG.FAULT_TYPE_CODE �����ڡ�');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'SR_FAULTALARM_CONFIG' AND U.COLUMN_NAME='FAULT_TYPE';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table SR_FAULTALARM_CONFIG drop column fault_type
      ';
    ELSE
      dbms_output.put_line('�ű�����������Ϊ SR_FAULTALARM_CONFIG.FAULT_TYPE �����ڡ�');
    END IF;
END;
/
prompt
prompt ���ڴ����¼���Ϊ 8200000000015728 �Ľű�
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
      dbms_output.put_line('�ű�����������Ϊ SR_FAULTALARM_CONFIG.fault_type_code �Ѵ��ڡ�');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'SR_FAULTALARM_CONFIG' AND U.COLUMN_NAME='FAULT_TYPE';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table SR_FAULTALARM_CONFIG add fault_type VARCHAR2(64)
      ';
    ELSE
      dbms_output.put_line('�ű�����������Ϊ SR_FAULTALARM_CONFIG.fault_type �Ѵ��ڡ�');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'SR_FAULTALARM_CONFIG' AND U.COLUMN_NAME='DATA_SOURCE';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table SR_FAULTALARM_CONFIG add data_source VARCHAR2(8)
      ';
    ELSE
      dbms_output.put_line('�ű�����������Ϊ SR_FAULTALARM_CONFIG.data_source �Ѵ��ڡ�');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'SR_FAULTALARM_CONFIG' AND U.COLUMN_NAME='STATE';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table SR_FAULTALARM_CONFIG add state VARCHAR2(8)
      ';
    ELSE
      dbms_output.put_line('�ű�����������Ϊ SR_FAULTALARM_CONFIG.state �Ѵ��ڡ�');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column SR_FAULTALARM_CONFIG.fault_type_code
      is ''�������ͱ��vw_sr_faultalarm_type''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_FAULTALARM_CONFIG.fault_type
      is ''��������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_FAULTALARM_CONFIG.data_source
      is ''������ԴVw_sr_data_source��01�ּ���02�ֳ����飩''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_FAULTALARM_CONFIG.state
      is ''״̬Vw_sr_state:01��Ч 02ʧЧ''
    ';
END;
/
prompt
prompt ���ڴ����¼���Ϊ 8200000000016321 �Ľű�
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
      dbms_output.put_line('�ű�����������Ϊ SR_ACTUAL_FAULTRATE.BATCH_NO �����ڡ�');
    END IF;
END;
/
prompt
prompt ���ڴ����¼���Ϊ 8200000000016322 �Ľű�
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
      dbms_output.put_line('�ű�����������Ϊ SR_FORECAST_FAULTRATE.BATCH_NO �����ڡ�');
    END IF;
END;
/
prompt
prompt ���ڴ����¼���Ϊ 8200000000016361 �Ľű�
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
      dbms_output.put_line('�ű�����������Ϊ SR_FAULTALARM_CONFIG.WARNING_THRESHOLD �����ڡ�');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'SR_FAULTALARM_CONFIG' AND U.COLUMN_NAME='ALARM_THRESHOLD';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table SR_FAULTALARM_CONFIG modify alarm_threshold NUMBER(16,5)
      ';
    ELSE
      dbms_output.put_line('�ű�����������Ϊ SR_FAULTALARM_CONFIG.ALARM_THRESHOLD �����ڡ�');
    END IF;
END;
/
prompt
prompt ���ڴ����¼���Ϊ 8200000000016628 �Ľű�
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
      dbms_output.put_line('�ű�����������Ϊ SR_RUNNING_BATCH.ARRIVE_BATCH_NO �����ڡ�');
    END IF;
END;
/
prompt
prompt ���ڴ����¼���Ϊ 8200000000016723 �Ľű�
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
      dbms_output.put_line('�ű�����������Ϊ SR_RUNNING_BATCH.wiring_mode �Ѵ��ڡ�');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column SR_RUNNING_BATCH.wiring_mode
      is ''���߷�ʽ''
    ';
END;
/
prompt
prompt ���ڴ����¼���Ϊ 8200000000016746 �Ľű�
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
      dbms_output.put_line('�ű�����������Ϊ SR_BATCH_REPLACE_PLAN �Ѵ��ڡ�');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table SR_BATCH_REPLACE_PLAN
      is ''���ι��ϸ����ƻ���''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_BATCH_REPLACE_PLAN.PLAN_ID
      is ''��ʵ���¼��Ψһ��ʶ�ţ��ƻ�ID��������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_BATCH_REPLACE_PLAN.PLAN_MONTH
      is ''�ƻ�����''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_BATCH_REPLACE_PLAN.WIRING_MODE
      is ''���߷�ʽ''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_BATCH_REPLACE_PLAN.PLAN_NUM
      is ''�ƻ�����''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_BATCH_REPLACE_PLAN.FINISH_NUM
      is ''�������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_BATCH_REPLACE_PLAN.MAKER_NO
      is ''�ƶ���''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_BATCH_REPLACE_PLAN.MADE_DATE
      is ''�ƶ�����''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_BATCH_REPLACE_PLAN.BELONG_DEPT
      is ''�ƶ���λ''
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
      dbms_output.put_line('�ű�����������Ϊ PK_SR_BATCH_REPLACE_PLAN �Ѵ��ڡ�');
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
      dbms_output.put_line('�ű�����������Ϊ SEQ_SR_BATCH_REPLACE_PLAN �Ѵ��ڡ�');
    END IF;
END;
/
prompt
prompt ���ڴ����¼���Ϊ 8200000000016747 �Ľű�
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
      dbms_output.put_line('�ű�����������Ϊ SR_BATCH_REPLACE_PLANDET �Ѵ��ڡ�');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table SR_BATCH_REPLACE_PLANDET
      is ''���ι��ϸ����ƻ���ϸ��''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_BATCH_REPLACE_PLANDET.PLANDET_ID
      is ''�ƻ���ϸID��������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_BATCH_REPLACE_PLANDET.PLAN_ID
      is ''�ƻ�ID''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_BATCH_REPLACE_PLANDET.SPEC_CODE
      is ''�豸���''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_BATCH_REPLACE_PLANDET.PLAN_NUM
      is ''�ƻ�����''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_BATCH_REPLACE_PLANDET.FINISH_NUM
      is ''�������''
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
      dbms_output.put_line('�ű�����������Ϊ PK_SR_BATCH_REPLACE_PLANDET �Ѵ��ڡ�');
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
      dbms_output.put_line('�ű�����������Ϊ SEQ_SR_BATCH_REPLACE_PLANDET �Ѵ��ڡ�');
    END IF;
END;
/
prompt
prompt ���ڴ����¼���Ϊ 8200000000017018 �Ľű�
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
      dbms_output.put_line('�ű�����������Ϊ SR_BATCH_FAULT_JUDGE.plandet_id �Ѵ��ڡ�');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column SR_BATCH_FAULT_JUDGE.plandet_id
      is ''�����ƻ���ϸID''
    ';
END;
/
prompt
prompt ���ڴ����¼���Ϊ 8200000000017201 �Ľű�
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
      dbms_output.put_line('�ű�����������Ϊ SR_ACTUAL_FAULTRATE.data_source �Ѵ��ڡ�');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column SR_ACTUAL_FAULTRATE.data_source
      is ''�½���ͼVw_ea_model:01���Խ�ģ��02��������ģ��''
    ';
END;
/
prompt
prompt ���ڴ����¼���Ϊ 8200000000017202 �Ľű�
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
      dbms_output.put_line('�ű�����������Ϊ SR_FORECAST_FAULTRATE.data_source �Ѵ��ڡ�');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column SR_FORECAST_FAULTRATE.data_source
      is ''������Դ''
    ';
END;
/
prompt
prompt ���ڴ����¼���Ϊ 8200000000017539 �Ľű�
prompt ==========================
/*DECLARE
  num NUMBER;
BEGIN
END;
/*/
prompt
prompt ���ڴ����¼���Ϊ 8200000000017665 �Ľű�
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
      dbms_output.put_line('�ű�����������Ϊ SR_ERR_STATISTICS.BATCH_NO �����ڡ�');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column SR_ERR_STATISTICS.batch_no
      is ''���κ�''
    ';
END;
/
prompt
prompt ���ڴ����¼���Ϊ 8200000000017666 �Ľű�
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
      dbms_output.put_line('�ű�����������Ϊ SR_ERR_STATISTICS.batch_type �Ѵ��ڡ�');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column SR_ERR_STATISTICS.batch_type
      is ''��������''
    ';
END;
/
prompt
prompt ���ڴ����¼���Ϊ 8200000000017674 �Ľű�
prompt ==========================
----���	2019/7/12 13:54:46
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
prompt ���ڴ����¼���Ϊ 8200000000017682 �Ľű�
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
      dbms_output.put_line('�ű�����������Ϊ IDX_SR_RUNNING_BATCH_DET �Ѵ��ڡ�');
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
      dbms_output.put_line('�ű�����������Ϊ IDX_SR_RUNNING_B_DET_BAT_ID �Ѵ��ڡ�');
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
      dbms_output.put_line('�ű�����������Ϊ PK_SR_RUNNING_BATCH_DET �Ѵ��ڡ�');
    END IF;
END;
/
prompt
prompt ���ڴ����¼���Ϊ 8200000000017707 �Ľű�
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
      dbms_output.put_line('�ű�����������Ϊ IDX_NO_SR_RUNNING_EQUIP_ID �Ѵ��ڡ�');
    END IF;
END;
/
prompt
prompt ���ڴ����¼���Ϊ 8200000000017713 �Ľű�
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
      dbms_output.put_line('�ű�����������Ϊ SR_EA_MET_SCORE �Ѵ��ڡ�');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table SR_EA_MET_SCORE
      is ''��������Ʒ������ͳ�Ʊ�''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_EA_MET_SCORE.RECORD_ID
      is ''��¼ID''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_EA_MET_SCORE.BATCH_NO
      is ''�������κ�''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_EA_MET_SCORE.MET_LEVEL
      is ''���ܱ����۵ȼ�''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_EA_MET_SCORE.VERSION_ID
      is ''�汾Ψһ��ʶ''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_EA_MET_SCORE.QTY
      is ''����''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_EA_MET_SCORE.EVA_SCORE
      is ''ƽ����''
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
      dbms_output.put_line('�ű�����������Ϊ PK_SR_EA_MET_SCORE �Ѵ��ڡ�');
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
      dbms_output.put_line('�ű�����������Ϊ IDX_SR_EA_MET_SCORE_BATCH �Ѵ��ڡ�');
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
      dbms_output.put_line('�ű�����������Ϊ SEQ_SR_EA_MET_SCORE �Ѵ��ڡ�');
    END IF;
END;
/
prompt
prompt ���ڴ����¼���Ϊ 8200000000020331 �Ľű�
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
      dbms_output.put_line('�ű�����������Ϊ IDX_SR_RUNNING_BATCH_BATCHNO �Ѵ��ڡ�');
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
      dbms_output.put_line('�ű�����������Ϊ IDX_REPICK_FAULT �Ѵ��ڡ�');
    END IF;
END;
/


prompt
prompt ���ڴ����¼���Ϊ 8200000000020484 �Ľű�
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
      dbms_output.put_line('�ű�����������Ϊ F_UNSTRU_FILE �Ѵ��ڡ�');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table F_UNSTRU_FILE
      is ''��ر�ǽṹ��������Ϣ��
      1����ر�ǽṹ��������Ϣ����ʵ����Ҫ����������id �������ţ��磺�ּ��������š�����ѡ��ѡ�����š� ҵ����Դ���룬01-��ѡ,02-��ۼ��,03-ͨ����,04-�׶Ȼ�ȡ�����ԡ�
      2��ͨ������ѡ����¼�������¼��
      3����ʵ����Ҫ������ѡ�ı�������ҵ��ʹ�á�''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_UNSTRU_FILE.ID
      is ''����id,���ڼ�¼Ψһ����''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_UNSTRU_FILE.TASK_NO
      is ''�����ţ��磺�ּ��������š�����ѡ��ѡ�����ţ����ڼ�¼������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_UNSTRU_FILE.TYPE_CODE
      is ''ҵ����Դ���룬01-��ѡ,02-��ۼ��,03-ͨ����,04-�׶Ȼ�ȡ''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_UNSTRU_FILE.CREATE_DATE
      is ''����ʱ�䣬���ڼ�¼����ʱ��''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_UNSTRU_FILE.BAR_CODE
      is ''�豸�����룬����ERP�ṩ�����ϺŽ��й��� ������Ϊȷ�����ܼ�������Ʒ���Ψһ����''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_UNSTRU_FILE.FILE_NO
      is ''�ļ���ţ��ɵ���ģ�����ɺͲ�ѯʹ�ã�sequence���ɣ�ƽ̨��Ψһ���''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_UNSTRU_FILE.EQUIP_CATEG
      is ''�豸��𣬼����豸�������࣬01���ܱ�02��ѹ��������03�����������ȡ����ù���������׼�����༯��VW_EQUIP_CATEG''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_UNSTRU_FILE.SUFFIX
      is ''�ļ���׺�����ڼ�¼�ļ���׺''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_UNSTRU_FILE.FILE_NAME
      is ''�ǽṹ��ƽ̨�洢���ļ����ƣ����ڼ�¼�ǽṹ��ƽ̨�洢���ļ�����''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_UNSTRU_FILE.MODIFY_DATE
      is ''�޸�ʱ�䣬���ڼ�¼�޸�ʱ��''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_UNSTRU_FILE.CREATE_USER_NO
      is ''�����ˣ����ڼ�¼������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_UNSTRU_FILE.FLAG
      is ''�Ƿ�ɹ���1�ɹ���0ʧ�ܣ����ڼ�¼״̬''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_UNSTRU_FILE.MESSAGE
      is ''�ǽṹ��ƽ̨������Ϣ�����ڼ�¼�ǽṹ��ƽ̨������Ϣ''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_UNSTRU_FILE.UNSTRUCT_FILE_ID
      is ''�ǽṹ��ƽ̨�ĵ�ID�����ڼ�¼�ǽṹ��ƽ̨�ĵ�ID''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_UNSTRU_FILE.UNSTRUCT_VERSION_ID
      is ''�ǽṹ��ƽ̨�汾��ʶ�����ڼ�¼�ǽṹ��ƽ̨�汾��ʶ''
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
      dbms_output.put_line('�ű�����������Ϊ PK_F_UNSTRU_FILE �Ѵ��ڡ�');
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
      dbms_output.put_line('�ű�����������Ϊ SEQ_F_UNSTRU_FILE �Ѵ��ڡ�');
    END IF;
END;
/
prompt
prompt ���ڴ����¼���Ϊ 8200000000020553 �Ľű�
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
      dbms_output.put_line('�ű�����������Ϊ .UNSTRUCT_FILE_NO �Ѵ��ڡ�');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column F_PIC_INFO.unstruct_file_no
      is ''�ǽṹ���ļ����:ʹ�÷ǽṹ��ƽ̨ʱ��ϵͳ�����ɵ��ļ���ţ��ɵ���ģ�����ɺͲ�ѯʹ�� ''
    ';
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'F_D_APPERANCE' AND U.COLUMN_NAME='UNSTRUCT_FILE_NO';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table F_D_APPERANCE
      add UNSTRUCT_FILE_NO number(16)
      ';
    ELSE
      dbms_output.put_line('�ű�����������Ϊ .UNSTRUCT_FILE_NO �Ѵ��ڡ�');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column F_D_APPERANCE.unstruct_file_no
      is ''�ǽṹ���ļ����:ʹ�÷ǽṹ��ƽ̨ʱ��ϵͳ�����ɵ��ļ���ţ��ɵ���ģ�����ɺͲ�ѯʹ�� ''
    ';
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'F_D_POWER_ON' AND U.COLUMN_NAME='UNSTRUCT_FILE_NO';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table F_D_POWER_ON
      add UNSTRUCT_FILE_NO number(16)
      ';
    ELSE
      dbms_output.put_line('�ű�����������Ϊ .UNSTRUCT_FILE_NO �Ѵ��ڡ�');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column F_D_POWER_ON.unstruct_file_no
      is ''�ǽṹ���ļ����:ʹ�÷ǽṹ��ƽ̨ʱ��ϵͳ�����ɵ��ļ���ţ��ɵ���ģ�����ɺͲ�ѯʹ�� ''
    ';
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'F_D_READING_SHOT' AND U.COLUMN_NAME='UNSTRUCT_FILE_NO';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table F_D_READING_SHOT
      add UNSTRUCT_FILE_NO number(16)
      ';
    ELSE
      dbms_output.put_line('�ű�����������Ϊ .UNSTRUCT_FILE_NO �Ѵ��ڡ�');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column F_D_READING_SHOT.unstruct_file_no
      is ''�ǽṹ���ļ����:ʹ�÷ǽṹ��ƽ̨ʱ��ϵͳ�����ɵ��ļ���ţ��ɵ���ģ�����ɺͲ�ѯʹ�� ''
    ';
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'F_D_APPERANCE_HIS' AND U.COLUMN_NAME='UNSTRUCT_FILE_NO';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table F_D_APPERANCE_HIS
      add UNSTRUCT_FILE_NO number(16)
      ';
    ELSE
      dbms_output.put_line('�ű�����������Ϊ .UNSTRUCT_FILE_NO �Ѵ��ڡ�');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column F_D_APPERANCE.unstruct_file_no
      is ''�ǽṹ���ļ����:ʹ�÷ǽṹ��ƽ̨ʱ��ϵͳ�����ɵ��ļ���ţ��ɵ���ģ�����ɺͲ�ѯʹ�� ''
    ';
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'F_D_POWER_ON_HIS' AND U.COLUMN_NAME='UNSTRUCT_FILE_NO';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table F_D_POWER_ON_HIS
      add UNSTRUCT_FILE_NO number(16)
      ';
    ELSE
      dbms_output.put_line('�ű�����������Ϊ .UNSTRUCT_FILE_NO �Ѵ��ڡ�');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column F_D_POWER_ON.unstruct_file_no
      is ''�ǽṹ���ļ����:ʹ�÷ǽṹ��ƽ̨ʱ��ϵͳ�����ɵ��ļ���ţ��ɵ���ģ�����ɺͲ�ѯʹ�� ''
    ';
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'F_D_READING_SHOT_HIS' AND U.COLUMN_NAME='UNSTRUCT_FILE_NO';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table F_D_READING_SHOT_HIS
      add UNSTRUCT_FILE_NO number(16)
      ';
    ELSE
      dbms_output.put_line('�ű�����������Ϊ .UNSTRUCT_FILE_NO �Ѵ��ڡ�');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column F_D_READING_SHOT.unstruct_file_no
      is ''�ǽṹ���ļ����:ʹ�÷ǽṹ��ƽ̨ʱ��ϵͳ�����ɵ��ļ���ţ��ɵ���ģ�����ɺͲ�ѯʹ�� ''
    ';
END;
/
prompt
prompt ���ڴ����¼���Ϊ 8200000000020860 �Ľű�
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
prompt ���ڴ����¼���Ϊ 8200000000020863 �Ľű�
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
      dbms_output.put_line('�ű�����������Ϊ F_REPICK_CONFIG_ELIMINATE_PROD.MODEL_CODE �����ڡ�');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'F_REPICK_CONFIG_ELIMINATE_PROD' AND U.COLUMN_NAME='MANUFACTURER';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table F_REPICK_CONFIG_ELIMINATE_PROD drop column manufacturer
      ';
    ELSE
      dbms_output.put_line('�ű�����������Ϊ F_REPICK_CONFIG_ELIMINATE_PROD.MANUFACTURER �����ڡ�');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'F_REPICK_CONFIG_ELIMINATE_PROD' AND U.COLUMN_NAME='PROD_CAT_NO';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table F_REPICK_CONFIG_ELIMINATE_PROD drop column prod_cat_no
      ';
    ELSE
      dbms_output.put_line('�ű�����������Ϊ F_REPICK_CONFIG_ELIMINATE_PROD.PROD_CAT_NO �����ڡ�');
    END IF;
END;
/
prompt
prompt ���ڴ����¼���Ϊ 8200000000020928 �Ľű�
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
      dbms_output.put_line('�ű�����������Ϊ F_ELEC_PRICE_INFO.arrive_batch_no �Ѵ��ڡ�');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'F_ELEC_PRICE_INFO' AND U.COLUMN_NAME='TASK_TYPE';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table F_ELEC_PRICE_INFO add task_type VARCHAR2(8) default 1
      ';
    ELSE
      dbms_output.put_line('�ű�����������Ϊ F_ELEC_PRICE_INFO.task_type �Ѵ��ڡ�');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column F_ELEC_PRICE_INFO.arrive_batch_no
      is ''�������κţ������ڼ춨����''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_ELEC_PRICE_INFO.task_type
      is ''�������͡�1���ּ�Ĭ�ϣ���2���춨''
    ';
END;
/
prompt
prompt ���ڴ����¼���Ϊ 8200000000020929 �Ľű�
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
      dbms_output.put_line('�ű�����������Ϊ T_SAMPLING_MET_RSLT.elecprice_read_flag �Ѵ��ڡ�');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column T_SAMPLING_MET_RSLT.elecprice_read_flag
      is ''��۶�ȡ�ɹ���ʶ��0��ʧ�ܣ�Ĭ�ϣ���1���ɹ���''
    ';
END;
/
prompt
prompt ���ڴ����¼���Ϊ 8200000000020936 �Ľű�
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
      dbms_output.put_line('�ű�����������Ϊ T_ALLDETECT_MET_RSLT.elecprice_read_flag �Ѵ��ڡ�');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column T_ALLDETECT_MET_RSLT.elecprice_read_flag
      is ''��۶�ȡ�ɹ���ʶ��0��ʧ�ܣ�Ĭ�ϣ���1���ɹ���''
    ';
END;
/
prompt
prompt ���ڴ����¼���Ϊ 8200000000020939 �Ľű�
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
      dbms_output.put_line('�ű�����������Ϊ T_DETECT_MET_RSLT.elecprice_read_flag �Ѵ��ڡ�');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column T_DETECT_MET_RSLT.elecprice_read_flag
      is ''��۶�ȡ�ɹ���ʶ��0��ʧ�ܣ�Ĭ�ϣ���1���ɹ���''
    ';
END;
/
prompt
prompt ���ڴ����¼���Ϊ 8200000000020948 �Ľű�
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
prompt ���ڴ����¼���Ϊ 8200000000020953 �Ľű�
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
      dbms_output.put_line('�ű�����������Ϊ F_ELEC_PRICE_INFO.fir_ladder_value4 �Ѵ��ڡ�');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column F_ELEC_PRICE_INFO.fir_ladder_value4
      is ''��ǰ����ֵ4''
    ';
END;
/
prompt
prompt ���ڴ����¼���Ϊ 8200000000020963 �Ľű�
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
      dbms_output.put_line('�ű�����������Ϊ A_TAIL_CAP_ADOPT �Ѵ��ڡ�');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table A_TAIL_CAP_ADOPT
      is ''��β�Ƿ��ż�¼��1����β�䷢�ż�¼���Լ���β��������2��ͨ����β�䷢������ҳ�棬¼���¼��3���ñ���Ҫʹ�����β�䷢��''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column A_TAIL_CAP_ADOPT.RECORD_ID
      is ''��Ϣ��ʶ''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column A_TAIL_CAP_ADOPT.ADOPT_CITY
      is ''���õ���''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column A_TAIL_CAP_ADOPT.ADOPT_NO
      is ''������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column A_TAIL_CAP_ADOPT.ADOPT_DATE
      is ''��������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column A_TAIL_CAP_ADOPT.ADOPT_NUM
      is ''��������''
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
      dbms_output.put_line('�ű�����������Ϊ SEQ_A_TAIL_CAP_ADOPT �Ѵ��ڡ�');
    END IF;
END;
/
prompt
prompt ���ڴ����¼���Ϊ 8200000000021050 �Ľű�
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
      dbms_output.put_line('�ű�����������Ϊ D_METERING_CABINET.made_date �Ѵ��ڡ�');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column D_METERING_CABINET.made_date
      is ''��������''
    ';
END;
/
prompt
prompt ���ڴ����¼���Ϊ 8200000000021231 �Ľű�
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
      dbms_output.put_line('�ű�����������Ϊ D_EQUIP_INST_INFO.inst_date �Ѵ��ڡ�');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'D_EQUIP_INST_INFO' AND U.COLUMN_NAME='RMV_DATE';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table D_EQUIP_INST_INFO add rmv_date DATE
      ';
    ELSE
      dbms_output.put_line('�ű�����������Ϊ D_EQUIP_INST_INFO.rmv_date �Ѵ��ڡ�');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column D_EQUIP_INST_INFO.inst_date
      is ''��װ����''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_EQUIP_INST_INFO.rmv_date
      is ''�������''
    ';
END;
/


prompt
prompt ���ڴ����¼���Ϊ 8200000000021495 �Ľű�
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    EXECUTE IMMEDIATE
    '
      CREATE OR REPLACE VIEW VW_A_CERT_TYPE_CODE AS
      SELECT ''01'' as code ,''����춨֤��'' as code_name ,''qinghai'' as PROVINCE FROM dual
      union all
      SELECT ''02'' as code ,''����춨���֪ͨ��'' as code_name ,''qinghai'' as PROVINCE FROM dual
      union all
      SELECT ''03'' as code ,''����춨֤��'' as code_name ,''qinghai'' as PROVINCE FROM dual
      union all
      SELECT ''04'' as code ,''����춨���֪ͨ��'' as code_name ,''qinghai'' as PROVINCE FROM dual
      union all
      SELECT ''01'' as code ,''����춨֤��'' as code_name ,''jiangxi'' as PROVINCE FROM dual
      union all
      SELECT ''02'' as code ,''����춨֤��'' as code_name ,''jiangxi'' as PROVINCE FROM dual
      union all
      SELECT ''03'' as code ,''��ѹ�������춨֤��'' as code_name ,''jiangxi'' as PROVINCE FROM dual
      union all
      SELECT ''04'' as code ,''�����������춨֤��'' as code_name ,''jiangxi'' as PROVINCE FROM dual
      union all
      SELECT ''01'' as code ,''����춨֤��'' as code_name ,''other'' as PROVINCE FROM dual
      union all
      SELECT ''02'' as code ,''����춨���֪ͨ��'' as code_name ,''other'' as PROVINCE FROM dual
      union all
      SELECT ''03'' as code ,''����춨֤��'' as code_name ,''other'' as PROVINCE FROM dual
      union all
      SELECT ''04'' as code ,''����춨���֪ͨ��'' as code_name ,''other'' as PROVINCE FROM dual
      union all
      SELECT ''01'' as code ,''����춨֤��'' as code_name ,''hefei'' as PROVINCE FROM dual
      union all
      SELECT ''02'' as code ,''����춨֤��'' as code_name ,''hefei'' as PROVINCE FROM dual
      union all
      SELECT ''03'' as code ,''����ԭʼ��¼'' as code_name ,''hefei'' as PROVINCE FROM dual
      union all
      SELECT ''04'' as code ,''����ԭʼ��¼'' as code_name ,''hefei'' as PROVINCE FROM dual
      union all
      SELECT ''05'' as code ,''��ѹ����������'' as code_name ,''hefei'' as PROVINCE FROM dual
      union all
      SELECT ''01'' as code ,''������ܱ�춨֤��'' as code_name ,''ningxia'' as PROVINCE FROM dual
      union all
      SELECT ''02'' as code ,''������ܱ�춨֤��'' as code_name ,''ningxia'' as PROVINCE FROM dual
      union all
      SELECT ''03'' as code ,''��ѹ�������춨֤��'' as code_name ,''ningxia'' as PROVINCE FROM dual
      union all
      SELECT ''04'' as code ,''�����������춨֤��'' as code_name ,''ningxia'' as PROVINCE FROM dual
      union all
      SELECT ''01'' as code ,''������ܱ�춨֤��'' as code_name ,''hubei'' as PROVINCE FROM dual
      union all
      SELECT ''02'' as code ,''������ܱ�춨֤��'' as code_name ,''hubei'' as PROVINCE FROM dual
      union all
      SELECT ''03'' as code ,''��ѹ�������춨֤��'' as code_name ,''hubei'' as PROVINCE FROM dual
      union all
      SELECT ''04'' as code ,''�����������춨֤��'' as code_name ,''hubei'' as PROVINCE FROM dual
      union all
      SELECT ''01'' as code ,''������ܱ�춨֤��'' as code_name ,''hunan'' as PROVINCE FROM dual
      union all
      SELECT ''02'' as code ,''������ܱ�춨֤��'' as code_name ,''hunan'' as PROVINCE FROM dual
      union all
      SELECT ''04'' as code ,''�����������춨֤��'' as code_name ,''hunan'' as PROVINCE FROM dual
    ';
    EXECUTE IMMEDIATE
    '
      comment on table VW_A_CERT_TYPE_CODE is ''CERT֤����ͼ''
    ';
END;
/
prompt
prompt ���ڴ����¼���Ϊ 8200000000021503 �Ľű�
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    EXECUTE IMMEDIATE
    '
      create or replace view vw_a_cert_equip_categ as
      select t.code as code,t.code_name, ''qinghai'' as PROVINCE  from vw_det_equip_type t where t.CODE IN (''01'')
      union all
      select ''01'' as code,''������ܱ�'' as code_name, ''jiangxi'' as PROVINCE  from dual
      union all
      select ''02'' as code,''������ܱ�'' as code_name, ''jiangxi'' as PROVINCE  from dual
      union all
      select ''03'' as code,''��ѹ������'' as code_name, ''jiangxi'' as PROVINCE  from dual
      union all
      select ''04'' as code,''����������'' as code_name, ''jiangxi'' as PROVINCE  from dual
      union all
      select ''09'' as code,''�ɼ��ն�'' as code_name, ''jiangxi'' as PROVINCE  from dual
      union all
      select t.code as code,t.code_name, ''other'' as PROVINCE  from vw_det_equip_type t
      union all
      select ''01'' as code,''������ܱ�'' as code_name, ''hefei'' as PROVINCE  from dual
      union all
      select ''02'' as code,''������ܱ�'' as code_name, ''hefei'' as PROVINCE  from dual
      union all
      select ''04'' as code,''����������'' as code_name, ''hefei'' as PROVINCE  from dual
      union all
      select ''01'' as code,''������ܱ�'' as code_name, ''ningxia'' as PROVINCE  from dual
      union all
      select ''02'' as code,''������ܱ�'' as code_name, ''ningxia'' as PROVINCE  from dual
      union all
      select ''03'' as code,''��ѹ������'' as code_name, ''ningxia'' as PROVINCE  from dual
      union all
      select ''04'' as code,''����������'' as code_name, ''ningxia'' as PROVINCE  from dual
      union all
      select ''01'' as code,''������ܱ�'' as code_name, ''hubei'' as PROVINCE  from dual
      union all
      select ''02'' as code,''������ܱ�'' as code_name, ''hubei'' as PROVINCE  from dual
      union all
      select ''03'' as code,''��ѹ������'' as code_name, ''hubei'' as PROVINCE  from dual
      union all
      select ''04'' as code,''����������'' as code_name, ''hubei'' as PROVINCE  from dual
      union all
      select ''01'' as code,''������ܱ�'' as code_name, ''hunan'' as PROVINCE  from dual
      union all
      select ''02'' as code,''������ܱ�'' as code_name, ''hunan'' as PROVINCE  from dual
      union all
      select ''04'' as code,''����������'' as code_name, ''hunan'' as PROVINCE  from dual
    ';
    EXECUTE IMMEDIATE
    '
      comment on table VW_A_CERT_EQUIP_CATEG is ''CERT�豸�����ͼ''
    ';
END;
/
prompt
prompt ���ڴ����¼���Ϊ 8200000000021505 �Ľű�
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    EXECUTE IMMEDIATE
    '
      CREATE OR REPLACE VIEW VW_A_CERT_ZI AS
      SELECT ''01'' as code ,''����ƽ��'' as code_name ,''qinghai'' as PROVINCE FROM dual
      union all
      SELECT ''01'' as code ,''У���ܵ�'' as code_name ,''jiangxi'' as PROVINCE FROM dual
      union all
      SELECT ''02'' as code ,''�����ܵ�'' as code_name ,''other'' as PROVINCE FROM dual
      union all
      SELECT ''03'' as code ,''�����ܵ�'' as code_name ,''other'' as PROVINCE FROM dual
      union all
      SELECT ''04'' as code ,''���ֻ���'' as code_name ,''other'' as PROVINCE FROM dual
      union all
      SELECT ''05'' as code ,''У�ֻ���'' as code_name ,''other'' as PROVINCE FROM dual
      union ALL
      SELECT ''01'' as code ,''������ֵ�'' as code_name ,''ningxia'' as PROVINCE FROM dual
      union all
      SELECT ''01'' as code ,''HBJLSN'' as code_name ,''hubei'' as PROVINCE FROM dual
      union all
      SELECT ''01'' as code ,''���棩����'' as code_name ,''hunan'' as PROVINCE FROM dual
    ';
    EXECUTE IMMEDIATE
    '
      comment on table VW_A_CERT_ZI is ''�춨֤����ͼ''
    ';
END;
/

prompt
prompt ���ڴ����¼���Ϊ 8200000000017607 �Ľű�
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
      dbms_output.put_line('�ű�����������Ϊ F_TMNL_FAULTREASON �Ѵ��ڡ�');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table F_TMNL_FAULTREASON
      is ''�ն˹����������(�Ĵ�ר��)���ն˹����������,�洢��ʡ�Զ�����ն˹���������ֵ����p_code��Ĺ����ն˹������Ͳ��ظ�''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_TMNL_FAULTREASON.ID
      is ''����ID''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_TMNL_FAULTREASON.VALUE
      is ''����ֵ''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_TMNL_FAULTREASON.NAME
      is ''����ֵ������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_TMNL_FAULTREASON.CREATE_DATE
      is ''��������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_TMNL_FAULTREASON.CREATE_ORGNO
      is ''������λ''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_TMNL_FAULTREASON.CREATE_USER
      is ''�����˱��''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_TMNL_FAULTREASON.UPDATE_DATE
      is ''�޸�����''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_TMNL_FAULTREASON.UPDATE_ORGNO
      is ''�޸ĵ�λ''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_TMNL_FAULTREASON.UPDATE_USER
      is ''�޸��˱��''
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
      dbms_output.put_line('�ű�����������Ϊ PK_F_TMNL_FAULTREASON �Ѵ��ڡ�');
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
      dbms_output.put_line('�ű�����������Ϊ SEQ_F_TMNL_FAULTREASON �Ѵ��ڡ�');
    END IF;
END;
/
prompt
prompt ���ڴ����¼���Ϊ 8200000000017608 �Ľű�
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
      dbms_output.put_line('�ű�����������Ϊ F_TMNL_FAULT �Ѵ��ڡ�');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table F_TMNL_FAULT
      is ''�ն˹���������Ϣ��(�Ĵ�ר��)���ն˹���������Ϣ��,�洢�ն˵Ĺ���������Ϣ''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_TMNL_FAULT.ID
      is ''����ID''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_TMNL_FAULT.BAR_CODE
      is ''�豸����''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_TMNL_FAULT.FAULT_CODE
      is ''�ն˹�������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_TMNL_FAULT.DATASOURCETYPE
      is ''01-�ֹ�¼�롢02-Ӫ��ͬ��''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_TMNL_FAULT.CREATE_DATE
      is ''��������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_TMNL_FAULT.CREATE_ORGNO
      is ''������λ''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_TMNL_FAULT.CREATE_USER
      is ''�����˱��''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_TMNL_FAULT.UPDATE_DATE
      is ''�޸�����''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_TMNL_FAULT.UPDATE_ORGNO
      is ''�޸ĵ�λ''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_TMNL_FAULT.UPDATE_USER
      is ''�޸��˱��''
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
      dbms_output.put_line('�ű�����������Ϊ PK_F_TMNL_FAULT �Ѵ��ڡ�');
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
      dbms_output.put_line('�ű�����������Ϊ SEQ_F_TMNL_FAULT �Ѵ��ڡ�');
    END IF;
END;
/
prompt
prompt ���ڴ����¼���Ϊ 8200000000018876 �Ľű�
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
      dbms_output.put_line('�ű�����������Ϊ MMA_C_CHK_TASK �Ѵ��ڡ�');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table MMA_C_CHK_TASK
      is ''�������ֳ������������¼�������ֳ��������������
      ʵ����Ҫ�������������͡���������������״̬������������ơ������ˣ�
      ����λ����վ������ơ�ȷ���˵�����''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_C_CHK_TASK.TASK_ID
      is ''���������ʶ''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_C_CHK_TASK.CHK_TASK_NO
      is ''����������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_C_CHK_TASK.TASK_TYPE
      is ''�������ͣ�01�״μ��飬02���ڼ��飬03��ʱ���飻�μ���ͼVW_MMA_TASK_TYPE''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_C_CHK_TASK.TASK_STATUS
      is ''У������״̬��01 ��ʼ��02 ���·� 03 ����� 04 �ѹ鵵 05 ����ֹ���μ���ͼVW_MMA_TASK_STATUS''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_C_CHK_TASK.CHK_EQUIP_TYPE
      is ''�����豸���ͣ�01 �ͻ��豸��02 ��վ�豸���μ���ͼVW_MMA_EQUIP_TYPE''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_C_CHK_TASK.TASK_NUM
      is ''��������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_C_CHK_TASK.SUBS_NO
      is ''��վ��ţ����������ڳ�վ���''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_C_CHK_TASK.CUST_NO
      is ''�ͻ���ţ������������ͻ����''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_C_CHK_TASK.SUBS_NAME
      is ''��վ����''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_C_CHK_TASK.CUST_NAME
      is ''�ͻ�����''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_C_CHK_TASK.MAKER_NO
      is ''�����ƶ���Ա���''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_C_CHK_TASK.MADE_ORG_NO
      is ''���������ƶ���λ''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_C_CHK_TASK.MADE_DATE
      is ''���������ƶ�ʱ��''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_C_CHK_TASK.RET_REASON
      is ''��ֹ����ԭ��01 �ֳ����鲻ͨ����02 ��ȫ��鲻ͨ�����μ���ͼVW_MMA_RET_REASON''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_C_CHK_TASK.RET_DATE
      is ''����������ֹʱ��''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_C_CHK_TASK.RET_PER_NO
      is ''����������ֹ��Ա���''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_C_CHK_TASK.ORG_NO
      is ''�����������λ''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_C_CHK_TASK.CONF_RSLT
      is ''��������ȷ�Ͻ����01 δȷ�ϣ�02 ��ȷ�ϣ��μ���ͼVW_MMA_CONF_RSLT''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_C_CHK_TASK.CONF_NO
      is ''ȷ����Ա��ţ��ƻ�ȷ�ϼ���������Ա���''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_C_CHK_TASK.CONF_DATE
      is ''ȷ��ʱ�䣬�ƻ�ȷ�ϼ�������ʱ��''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_C_CHK_TASK.QUES_DESC
      is ''��������������������ֵ���������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_C_CHK_TASK.TEAM_NO
      is ''���������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_C_CHK_TASK.CHECKER_NO
      is ''�����˱��''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_C_CHK_TASK.DATA_SOURCE
      is ''���������ƶ�������Դ��01 �ֳ��նˣ�02 MDSϵͳ���μ���ͼVW_MMA_DATA_SOURCE''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_C_CHK_TASK.RSLT_HANDLER
      is ''���������''
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
      dbms_output.put_line('�ű�����������Ϊ PK_MMA_C_CHK_TASK �Ѵ��ڡ�');
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
      dbms_output.put_line('�ű�����������Ϊ SEQ_MMA_C_CHK_TASK �Ѵ��ڡ�');
    END IF;
END;
/
prompt
prompt ���ڴ����¼���Ϊ 8200000000018877 �Ľű�
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
      dbms_output.put_line('�ű�����������Ϊ MMA_C_CHK_TASK_DET �Ѵ��ڡ�');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table MMA_C_CHK_TASK_DET
      is ''�������ֳ�����������ϸ����¼ĳһ�������ֳ�����������
      ����������ϸ�����ʵ���������������ID��������ϸID������������š�
      ����������״̬������������ʱ������ԡ���ʵ��ͨ�����ƶ���������
      ֮������������ϸ����''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_C_CHK_TASK_DET.TASK_DET_ID
      is ''����������ϸ��ʶ''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_C_CHK_TASK_DET.TASK_ID
      is ''���������ʶ�������������������ID''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_C_CHK_TASK_DET.TASK_DET_STATUS
      is ''������ϸ״̬��01 �����飬02 �����жϣ�03 �Ѽ��飬04 ��ȷ�ϣ��μ���ͼVW_MMA_TASK_DET_STATUS''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_C_CHK_TASK_DET.BAR_CODE
      is ''��������ţ��������Ļ����������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_C_CHK_TASK_DET.MODEL_CODE
      is ''�������ͺţ����컥�����ͺ�''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_C_CHK_TASK_DET.CALI_NO
      is ''У���Ǳ�ţ���ʹ�õ���У�Ǳ��''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_C_CHK_TASK_DET.CHK_DATE
      is ''����ʱ�䣬���ƻ�¼��''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_C_CHK_TASK_DET.CONC_CODE
      is ''������ۣ�01 δ���飬02 �ϸ�03 ���ϸ񣻲μ���ͼVW_MMA_CONC_CODE''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_C_CHK_TASK_DET.FST_RV_CODE
      is ''һ�ε�ѹ����������������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_C_CHK_TASK_DET.SND_RV_CODE
      is ''���ε�ѹ����������������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_C_CHK_TASK_DET.FST_RC_CODE
      is ''һ�ε�������������������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_C_CHK_TASK_DET.SND_RC_CODE
      is ''���ε�������������������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_C_CHK_TASK_DET.RATED_LOAD
      is ''����ɣ���������������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_C_CHK_TASK_DET.TV_LIGHT_LOAD
      is ''��ѹ���������޸��ɡ�01��2.5��02��3.75��03��5��04��6.25��05��7.5''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_C_CHK_TASK_DET.PF
      is ''������������������������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_C_CHK_TASK_DET.PRE_CODE
      is ''���ȵȼ���01��0.2       02��0.2S     03��0.5       04��0.5S''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_C_CHK_TASK_DET.HANDLE_FLAG
      is ''��Լ��鲻�ϸ�Ļ��������Ƿ����쳣����:01 �ѷ���,02 δ����;�μ���ͼVW_MMA_HANDLE_FLAG''
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
      dbms_output.put_line('�ű�����������Ϊ PK_MMA_C_CHK_TASK_DET �Ѵ��ڡ�');
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
      dbms_output.put_line('�ű�����������Ϊ SEQ_MMA_C_CHK_TASK_DET �Ѵ��ڡ�');
    END IF;
END;
/
prompt
prompt ���ڴ����¼���Ϊ 8200000000018878 �Ľű�
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
      dbms_output.put_line('�ű�����������Ϊ MMA_C_CHK_RSLT �Ѵ��ڡ�');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table MMA_C_CHK_RSLT
      is ''�������ֳ������������ڼ�¼�������ֳ�������
      ʵ���������������š���У�Ǳ�š��¶ȡ�ʪ�ȡ�
      ����������������һ�ε�ѹ�����ε�ѹ�����������ȣ��ļ�����ݵ����ԣ�
      ��ʵ���������ƻ�¼�벢�ϴ�������mdsƽ̨�鿴''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_C_CHK_RSLT.CHK_RSLT_ID
      is ''��������ʶ''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_C_CHK_RSLT.TASK_DET_ID
      is ''����������ϸ��ʶ����������������ϸ��ID''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_C_CHK_RSLT.BAR_CODE
      is ''��������ţ����컥���������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_C_CHK_RSLT.CALI_NO
      is ''У���Ǳ��''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_C_CHK_RSLT.EQUIP_CATEG
      is ''�豸��𣬻�����������𣬲�����ͼ��VW_EQUIP_CATEG''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_C_CHK_RSLT.PCT
      is ''�ٷֱ�,���������ε�����һ�ε�������һ�ε����ı�ֵ''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_C_CHK_RSLT.LOAD_TYPE
      is ''�������ͣ�01 ����ɣ�02 ���޸���.�μ���ͼVW_MMA_LOAD_TYPE''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_C_CHK_RSLT.RATIO_DIFF
      is ''��ֵ�ͨ�����λ�·��Ӳ������ĵ���ֵ��ȥһ�ε���ʵ��ֵ��һ�ε���ʵ��ֵ�İٷֱ�''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_C_CHK_RSLT.PHASE_DIFF
      is ''��λ���ָ���ε���������ת180�����һ�ε���������ļн��ֳƽǲ���涨���ε���������ǰһ�ε�������ʱ���Ϊ������֮Ϊ��''
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
      dbms_output.put_line('�ű�����������Ϊ PK_MMA_C_CHK_RSLT �Ѵ��ڡ�');
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
      dbms_output.put_line('�ű�����������Ϊ SEQ_MMA_C_CHK_RSLT �Ѵ��ڡ�');
    END IF;
END;
/
prompt
prompt ���ڴ����¼���Ϊ 8200000000018879 �Ľű�
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
      dbms_output.put_line('�ű�����������Ϊ MMA_C_CHK_SAFETY �Ѵ��ڡ�');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table MMA_C_CHK_SAFETY
      is ''�������ֳ����鰲ȫ���������¼�ֳ����鰲ȫ��������
      ʵ����������������ʶ����ȫ�������š�������š��������
      ����˵����ԣ����ݼ�����ж��ֳ��Ƿ���ϼ����������ж��Ƿ�
      ������һ����������ʵ����Ҫ��app��ʹ��''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_C_CHK_SAFETY.SAFETY_ID
      is ''��ȫ����ʶ''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_C_CHK_SAFETY.TASK_ID
      is ''���������ʶ���������������ID''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_C_CHK_SAFETY.SAFETY_NO
      is ''��ȫ��������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_C_CHK_SAFETY.ITEM_CODE
      is ''�������:01 ������Ҫ����ǰ����ͣ��ƻ���02 ��ɹ�����������󣬹����������������Ա�����������ݡ������ص㡢���������������İ�ȫҪ�㣬03 ������Ա�ֳ��˶Ժͼ�飬������Ԥ�ش�ʩ�����������˼ල��飬04 Я���Ĺ��ߺͲ����ܹ����㰲װ��ҵ������05 �����ֳ����죬����ֳ����챨�棬06 ȷ����ѹ��������������λ�·�������������·��07 �ֳ��Ĺ��ߣ��������������������豸�����㹻�İ�ȫ���룻�μ���ͼVW_MMA_SAFETY_ITEM_CODE''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_C_CHK_SAFETY.ITEM_RSLT
      is ''�����:01 ͨ��,02 ��ͨ��,�μ���ͼVW_MMA_CHECK_RSLT''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_C_CHK_SAFETY.SAFETYER
      is ''�����''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_C_CHK_SAFETY.SAFETY_DATE
      is ''���ʱ��''
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
      dbms_output.put_line('�ű�����������Ϊ PK_MMA_C_CHK_SAFETY �Ѵ��ڡ�');
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
      dbms_output.put_line('�ű�����������Ϊ SEQ_MMA_C_CHK_SAFETY �Ѵ��ڡ�');
    END IF;
END;
/
prompt
prompt ���ڴ����¼���Ϊ 8200000000018880 �Ľű�
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
      dbms_output.put_line('�ű�����������Ϊ MMA_C_CHK_SURVEY �Ѵ��ڡ�');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table MMA_C_CHK_SURVEY
      is ''�������ֳ������ֳ�����������¼�ֳ���������Ϣ��
      ʵ������ֳ�������������������ˡ�����ʱ�������
      ��ʵ����Ҫ���ƻ�ʹ��''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_C_CHK_SURVEY.SURVEY_ID
      is ''��������ʶ''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_C_CHK_SURVEY.TASK_ID
      is ''���������ʶ�������ֳ���������ID''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_C_CHK_SURVEY.SURVEY_NO
      is ''���������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_C_CHK_SURVEY.SURVEY_TYPE
      is ''��������:01�ֳ���������,02 �ֳ���������,�μ���ͼVW_MMA_SURVEY_TYPE''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_C_CHK_SURVEY.ITEM_CODE
      is ''��������:01 ���Ե��02 �¶ȣ�03 ���ʪ�ȣ�04 ��ԴƵ�ʣ�05 ��Դг��������06 ��ų���07 ί�з��Ƿ�ָ����ϸ����ˣ���Ϥ�ֳ�����ͱ���Ʒ�������ܣ�08 �����ص��·�Ƿ�ͨ���������豸���䳵��ͨ��Ҫ��09 �����ֳ�����ʩ���Ƿ���ϣ�����ƽ������Ţ���ܱ������Ե������ϰ�ȫ�淶Ҫ��10 �����豸�Ƿ���Ҫ�Է���ϰ��˵����ڻ�¥����11 ���������Ʋ����Ƿ��빤������һ�£�12 �������Ƿ�װ��һ�������Ƿ�����13 ���������������Ƿ���ɣ���GIS���������GIS��ѹ���飻�μ���ͼVW_MMA_SURVEY_ITEM_CODE''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_C_CHK_SURVEY.ITEM_RSLT
      is ''������:01 ͨ��,02 ��ͨ��;�μ���ͼVW_MMA_CHECK_RSLT''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_C_CHK_SURVEY.SURVEYER
      is ''������Ա''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_C_CHK_SURVEY.SURVEY_DATE
      is ''����ʱ��''
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
      dbms_output.put_line('�ű�����������Ϊ PK_MMA_C_CHK_SURVEY �Ѵ��ڡ�');
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
      dbms_output.put_line('�ű�����������Ϊ SEQ_MMA_C_CHK_SURVEY �Ѵ��ڡ�');
    END IF;
END;
/
prompt
prompt ���ڴ����¼���Ϊ 8200000000018887 �Ľű�
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
      dbms_output.put_line('�ű�����������Ϊ MMA_C_CHK_MEET �Ѵ��ڡ�');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table MMA_C_CHK_MEET
      is ''�������ֳ���������Ϣ�����ڼ�¼�������ֳ���������Ϣ��
      ������ǰ��Ͱ��ᣬʵ�������������͡������ˡ�Ӧ��������ʵ��
      ���������ص㡢���ʱ������ԣ���ʵ����Ҫ��app��ʹ��''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_C_CHK_MEET.MEET_ID
      is ''�����ʶ''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_C_CHK_MEET.TASK_ID
      is ''���������ʶ���������������ID''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_C_CHK_MEET.MEET_NO
      is ''������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_C_CHK_MEET.MEET_TYPE
      is ''�������ͣ�01 ��ǰ�ᣬ02 ���ᣬ�μ���ͼVW_MMA_MEET_TYPE''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_C_CHK_MEET.HOST_NO
      is ''�����˱��''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_C_CHK_MEET.HOST_NAME
      is ''����������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_C_CHK_MEET.DUE_NUM
      is ''Ӧ��������������������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_C_CHK_MEET.REAL_NUM
      is ''ʵ������������ʵ������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_C_CHK_MEET.MEET_DATE
      is ''�ٿ�ʱ��''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_C_CHK_MEET.MEET_ADDR
      is ''�ٿ��ص�''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_C_CHK_MEET.REC_NAME
      is ''�����¼��''
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
      dbms_output.put_line('�ű�����������Ϊ PK_MMA_C_CHK_MEET �Ѵ��ڡ�');
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
      dbms_output.put_line('�ű�����������Ϊ SEQ_MMA_C_CHK_MEET �Ѵ��ڡ�');
    END IF;
END;
/
prompt
prompt ���ڴ����¼���Ϊ 8200000000018888 �Ľű�
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
      dbms_output.put_line('�ű�����������Ϊ MMA_C_CHK_MEET_INSP �Ѵ��ڡ�');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table MMA_C_CHK_MEET_INSP
      is ''�������ֳ���������ֳ��ල������¼�ֳ��������֮���ֳ�
      �������ʵ������������ʶ�����������������˵�����
      ʵ����Ҫ��APP��ʹ��''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_C_CHK_MEET_INSP.INSP_ID
      is ''��ȫ�ල����ʶ''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_C_CHK_MEET_INSP.MEET_ID
      is ''�����ʶ�����������Ϣ��ID''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_C_CHK_MEET_INSP.ITEM_CODE
      is ''�������:01 �Ƿ��ע��ȫ�������ǰ������Ʊ��02 ��ȫ��ʩ�Ƿ�λ��03 �豸�����Ƿ�����04 ������ҵ�Ƿ�淶��05 �Ƿ�����ԭʼ��¼��06 �Ƿ��������ߣ�07 �Ƿ�����ȫ��ʩ�����������ֳ����μ���ͼVW_MMA_INSP_ITEM_CODE''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_C_CHK_MEET_INSP.ITEM_RSLT
      is ''�����:01 ͨ��,02 ��ͨ��,�μ���ͼVW_MMA_CHECK_RSLT''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_C_CHK_MEET_INSP.INSPER
      is ''�����''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_C_CHK_MEET_INSP.INSP_DATE
      is ''���ʱ��''
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
      dbms_output.put_line('�ű�����������Ϊ PK_MMA_C_CHK_MEET_INSP �Ѵ��ڡ�');
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
      dbms_output.put_line('�ű�����������Ϊ SEQ_MMA_C_CHK_MEET_INSP �Ѵ��ڡ�');
    END IF;
END;
/
prompt
prompt ���ڴ����¼���Ϊ 8200000000018889 �Ľű�
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
      dbms_output.put_line('�ű�����������Ϊ MMA_A_SUBS �Ѵ��ڡ�');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table MMA_A_SUBS
      is ''�������ֳ����鳧վ��Ϣ��������ڼ�¼���������ڳ�վ��Ϣ��
      ʵ���������վ��š���վ���ơ���վ��ַ������λ��ά����λ������
      ��ʵ����Ҫ��mdsƽ̨�������ֳ�����ҵ��ʹ��''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_A_SUBS.SUBS_NO
      is ''��վ���''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_A_SUBS.SUBS_NAME
      is ''��վ����''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_A_SUBS.SUBS_ADDR
      is ''��վ��ַ''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_A_SUBS.ORG_NO
      is ''��վ����λ''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_A_SUBS.PR_ORG_NO
      is ''��վ������Ȩ��λ''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_A_SUBS.MAINTAIN_ORG_NO
      is ''��վά����λ''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_A_SUBS.CONTACT_NO
      is ''��վ��ϵ��''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_A_SUBS.CONTACT_TEL
      is ''��վ��ϵ�绰''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_A_SUBS.AREA_CODE
      is ''��վ��������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_A_SUBS.SUBS_STATUS
      is ''��վ״̬ 01�����У�03��������04��ͣ�òο���ͼ��VW_MMA_SUBS_STATUS''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_A_SUBS.BASE_DESC
      is ''��վ�����������''
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
      dbms_output.put_line('�ű�����������Ϊ PK_MMA_A_SUBS �Ѵ��ڡ�');
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
      dbms_output.put_line('�ű�����������Ϊ SEQ_MMA_A_SUBS �Ѵ��ڡ�');
    END IF;
END;
/
prompt
prompt ���ڴ����¼���Ϊ 8200000000018890 �Ľű�
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
      dbms_output.put_line('�ű�����������Ϊ MMA_A_C_CONS �Ѵ��ڡ�');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table MMA_A_C_CONS
      is ''�������ֳ�����ͻ�������Ϣ�������¼�ͻ�������¼��Ϣ��
      ʵ��������û����ơ����絥λ��š���������ͨѶ��ַ�����ԣ�
      ��ʵ����Ҫ��mdsƽ̨�������ֳ�����ҵ��ʹ��''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_A_C_CONS.CONS_NO
      is ''�õ�ͻ����ⲿ��ʶ�����ù��ҵ�����˾Ӫ������Ӣ�������༯:5110.1�õ�ͻ���Ź���''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_A_C_CONS.CONS_NAME
      is ''�û������ƣ�һ����ڿͻ�ʵ���еĿͻ����ƣ���Ҳ��������һЩ����Ȼ����Ϣ���� XXX�����ǣ�������ͨ���û�����ֱ��ʶ��''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_A_C_CONS.ELEC_ADDR
      is ''�õ�ͻ����õ��ַ''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_A_C_CONS.ORG_NO
      is ''���絥λ���룬һ����ָ���û���ֱ�ӹ������λ��Ҳ�����Ǵ�ͻ��������ĵ����ڹ���ԭ������Ŀͻ�����λ''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_A_C_CONS.AREA_NO
      is ''�õ�ͻ���������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_A_C_CONS.COMM_ADDR
      is ''�õ�ͻ�ͨѶ��ַ''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_A_C_CONS.CONTACT_NO
      is ''��ϵ�˱��''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_A_C_CONS.CONTACT_TEL
      is ''��ϵ�绰''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_A_C_CONS.MP_TYPE_CODE
      is ''��������������ͼ��VW_MP_TYPE_CODE''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_A_C_CONS.MD_EQUIP_CATEG
      is ''����װ�÷���ο���ͼ��VW_MD_TYPE_CODE''
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
      dbms_output.put_line('�ű�����������Ϊ PK_MMA_A_C_CONS �Ѵ��ڡ�');
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
      dbms_output.put_line('�ű�����������Ϊ SEQ_MMA_A_C_CONS �Ѵ��ڡ�');
    END IF;
END;
/
prompt
prompt ���ڴ����¼���Ϊ 8200000000018893 �Ľű�
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
      dbms_output.put_line('�ű�����������Ϊ MMA_A_CHK_MAINT �Ѵ��ڡ�');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table MMA_A_CHK_MAINT
      is ''�������ֳ����������ά�������ڼ�¼�������ֳ�����
      ��̵�ά����¼��ʵ���������̱�š�������ơ��豸���
      �ͺŵ����ԣ�������mdsƽ̨��������ҵ��д�����ݿ�''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_A_CHK_MAINT.MAINT_ID
      is ''��̱�ʶ''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_A_CHK_MAINT.MAINT_NO
      is ''�����̱��''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_A_CHK_MAINT.MAINT_NAME
      is ''������ƣ���Ҫ�ϴ��ļ���������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_A_CHK_MAINT.EQUIP_CATEG
      is ''�豸��� 02����ѹ��������03��������������04����ϻ������ο���ͼ��VW_EQUIP_CATEG''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_A_CHK_MAINT.MODEL_CODE
      is ''�����ʲ��ͺţ���ѹ������VW_VI_MODEL_CODE������������VW_CI_MODEL_CODE����ϻ�����VW_COMPIT_MODEL_CODE''
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
      dbms_output.put_line('�ű�����������Ϊ PK_MMA_A_CHK_MAINT �Ѵ��ڡ�');
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
      dbms_output.put_line('�ű�����������Ϊ SEQ_MMA_A_CHK_MAINT �Ѵ��ڡ�');
    END IF;
END;
/
prompt
prompt ���ڴ����¼���Ϊ 8200000000018894 �Ľű�
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
      dbms_output.put_line('�ű�����������Ϊ MOD_A_CHK_NORM �Ѵ��ڡ�');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table MOD_A_CHK_NORM
      is ''�������ֳ��������淶��������ڼ�¼�������ֳ�����
      �淶�Ĺ���ʵ��������淶��š��淶���ơ��豸���
      �ͺŵ����ԣ�������mdsƽ̨��������ҵ��д�����ݿ�''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MOD_A_CHK_NORM.NORM_ID
      is ''����淶��ʶ''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MOD_A_CHK_NORM.NORM_NO
      is ''����淶���''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MOD_A_CHK_NORM.NORM_NAME
      is ''����淶���ƣ��ϴ��ļ���淶�ļ�����''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MOD_A_CHK_NORM.EQUIP_CATEG
      is ''�豸��� 02����ѹ��������03��������������04����ϻ������ο���ͼ��VW_EQUIP_CATEG''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MOD_A_CHK_NORM.MODEL_CODE
      is ''�����ʲ��ͺ�''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MOD_A_CHK_NORM.PRE_CODE
      is ''���ù��ҵ�����˾Ӫ������Ӣ�������༯:5110.81������׼ȷ�ȵȼ�������Ӣ������''
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
      dbms_output.put_line('�ű�����������Ϊ PK_MOD_A_CHK_NORM �Ѵ��ڡ�');
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
      dbms_output.put_line('�ű�����������Ϊ SEQ_MOD_A_CHK_NORM �Ѵ��ڡ�');
    END IF;
END;
/
prompt
prompt ���ڴ����¼���Ϊ 8200000000018897 �Ľű�
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
      dbms_output.put_line('�ű�����������Ϊ MMA_A_IT_PARA �Ѵ��ڡ�');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table MMA_A_IT_PARA
      is ''�������ֳ����黥��������ά����Ϣ��
      ����ά������������������ʵ����������������͡��������ͺ�
      ��һ�ε�ѹ��һ�ε��������ε�ѹ�����ε���ά�����ڡ�ά���˵ȣ�
      ���ԡ�ʵ����Ҫ��mdsƽ̨�������ֳ����鸨������д�룬APP��
      �ɸ���ʵ�����ݽ����޸�''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_A_IT_PARA.MAINT_ID
      is ''ά����ʶ''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_A_IT_PARA.TASK_DET_ID
      is ''����������ϸ��ʶ����������������ϸ��ID''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_A_IT_PARA.BAR_CODE
      is ''��������ţ������������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_A_IT_PARA.IT_TYPE_CODE
      is ''���������ͣ��μ�mds��ͼ''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_A_IT_PARA.MODEL_CODE
      is ''�������ͺţ��μ�MDS��ͼ''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_A_IT_PARA.FST_RV_CODE
      is ''һ�ε�ѹ''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_A_IT_PARA.SND_RV_CODE
      is ''���ε�ѹ''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_A_IT_PARA.FST_RC_CODE
      is ''һ�ε���''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_A_IT_PARA.SND_RC_CODE
      is ''���ε���''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_A_IT_PARA.RATED_LOAD
      is ''�����''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_A_IT_PARA.TV_LIGHT_LOAD
      is ''��ѹ���������޸��ɡ�01��2.5��02��3.75��03��5��04��6.25��05��7.5''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_A_IT_PARA.PF
      is ''��������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_A_IT_PARA.PRE_CODE
      is ''���ȵȼ���01��0.2       02��0.2S     03��0.5       04��0.5S''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_A_IT_PARA.MAINT_DATE
      is ''ά������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_A_IT_PARA.CHECKER_NO
      is ''ά����''
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
      dbms_output.put_line('�ű�����������Ϊ PK_MMA_A_IT_PARA �Ѵ��ڡ�');
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
      dbms_output.put_line('�ű�����������Ϊ SEQ_MMA_A_IT_PARA �Ѵ��ڡ�');
    END IF;
END;
/
prompt
prompt ���ڴ����¼���Ϊ 8200000000018898 �Ľű�
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
      dbms_output.put_line('�ű�����������Ϊ MMA_A_SUBS_IT_RELA �Ѵ��ڡ�');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table MMA_A_SUBS_IT_RELA
      is ''�������ֳ����飬��վ�뻥����������ϵ��
      �м������վ�뻥�������й���''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_A_SUBS_IT_RELA.RELA_ID
      is ''������ʶ''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_A_SUBS_IT_RELA.SUBS_NO
      is ''��վ��ţ�������վ��Ϣ��ID''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_A_SUBS_IT_RELA.IT_ID
      is ''��������ʶ�������������ʲ���ID''
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
      dbms_output.put_line('�ű�����������Ϊ PK_MMA_A_SUBS_IT_RELA �Ѵ��ڡ�');
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
      dbms_output.put_line('�ű�����������Ϊ SEQ_MMA_A_SUBS_IT_RELA �Ѵ��ڡ�');
    END IF;
END;
/
prompt
prompt ���ڴ����¼���Ϊ 8200000000018899 �Ľű�
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
      dbms_output.put_line('�ű�����������Ϊ MMA_A_CONS_IT_RELA �Ѵ��ڡ�');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table MMA_A_CONS_IT_RELA
      is ''�������ֳ����飬�ͻ�������������ϵ��
      �м��������������ͻ���Ϣ''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_A_CONS_IT_RELA.COGNATE_ID
      is ''������ʶ''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_A_CONS_IT_RELA.CONS_NO
      is ''�����ͻ���Ϣ���ID���õ�ͻ����ⲿ��ʶ�����ù��ҵ�����˾Ӫ������Ӣ�������༯:5110.1  �õ�ͻ���Ź���''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_A_CONS_IT_RELA.IT_ID
      is ''��������ʶ�������������ʲ���ID''
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
      dbms_output.put_line('�ű�����������Ϊ PK_MMA_A_CONS_IT_RELA �Ѵ��ڡ�');
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
      dbms_output.put_line('�ű�����������Ϊ SEQ_MMA_A_CONS_IT_RELA �Ѵ��ڡ�');
    END IF;
END;
/
prompt
prompt ���ڴ����¼���Ϊ 8200000000018901 �Ľű�
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
      dbms_output.put_line('�ű�����������Ϊ MMA_A_WARNING_INFO �Ѵ��ڡ�');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table MMA_A_WARNING_INFO
      is ''�������ֳ�����澯��Ϣ����¼����������澯����
      ʵ�������������ϸ��ʶ���澯���ݡ��澯���͵����ԣ�
      ��ʵ����Ҫ��APP��ҵ��ʹ��''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_A_WARNING_INFO.WARNING_ID
      is ''�澯��ʶ''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_A_WARNING_INFO.WARNING_NO
      is ''�澯���''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_A_WARNING_INFO.TASK_DET_ID
      is ''����������ϸ��ţ���������������ϸ��ID''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_A_WARNING_INFO.RULE_NO
      is ''�澯������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_A_WARNING_INFO.WARNING_TYPE
      is ''�澯����:01������һ�£�02���߲��Բ�ͨ����03�����Բ�ͨ�����ο���ͼ��VW_MMA_WARNING_TYPE''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_A_WARNING_INFO.WARNING_DOC
      is ''�澯����''
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
      dbms_output.put_line('�ű�����������Ϊ PK_MMA_A_WARNING_INFO �Ѵ��ڡ�');
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
      dbms_output.put_line('�ű�����������Ϊ SEQ_MMA_A_WARNING_INFO �Ѵ��ڡ�');
    END IF;
END;
/
prompt
prompt ���ڴ����¼���Ϊ 8200000000018902 �Ľű�
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
      is ''�������ֳ�����澯������������û���������
      �澯����ʵ����Ҫ�������澯�����š�����ɰٷֱȡ�
      ���޸��ɰٷֱȡ�������ֵ��������ֵ����ֵ���λ�������
      ������mdsƽ̨�������ֳ����鸨������¼�룬��Ҫ��APP��
      ҵ��ʹ��''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_A_WARNING_RULE.RULE_ID
      is ''�澯�����ʶ''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_A_WARNING_RULE.RULE_NO
      is ''�澯������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_A_WARNING_RULE.RULE_NAME
      is ''Ԥ����ֵ����''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_A_WARNING_RULE.RATED_LOAD_PCT
      is ''����ɰٷֱ�''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_A_WARNING_RULE.BELOW_LOAD_PCT
      is ''���޸��ɰٷֱ�''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_A_WARNING_RULE.EQUIP_CATEG
      is ''�豸��� 01��������������02����ѹ��������03��������ѹ��ϻ������ο���ͼ��VW_IT_SORT_CODE''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_A_WARNING_RULE.MAX_NV_NUM
      is ''������ֵ�����õ���ֵ����''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_A_WARNING_RULE.MIN_NV_NUM
      is ''������ֵ�����õ���ֵ����''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_A_WARNING_RULE.LOAD_TYPE
      is ''�������� 01:����ɣ�02�����޸��ɲμ���ͼ��VW_MMA_LOAD_TYPE''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_A_WARNING_RULE.RATIO_ERR
      is ''��ֵ��''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_A_WARNING_RULE.ANGLE_ERR
      is ''��λ��''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_A_WARNING_RULE.RULE_STATUS
      is ''״̬:01 δ����,02 ������,03 ���ϲμ���ͼVW_MMA_RULE_STATUS''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_A_WARNING_RULE.MAKER_NO
      is ''�ƶ���''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_A_WARNING_RULE.MADE_DATE
      is ''�ƶ�ʱ��''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_A_WARNING_RULE.REMARK
      is ''��ע''
    ';

    ELSE
      dbms_output.put_line('�ű�����������Ϊ MMA_A_WARNING_RULE �Ѵ��ڡ�');
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
      dbms_output.put_line('�ű�����������Ϊ PK_MMA_A_WARNING_RULE �Ѵ��ڡ�');
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
      dbms_output.put_line('�ű�����������Ϊ SEQ_MMA_A_WARNING_RULE �Ѵ��ڡ�');
    END IF;
END;
/
prompt
prompt ���ڴ����¼���Ϊ 8200000000018903 �Ľű�
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
      dbms_output.put_line('�ű�����������Ϊ MMA_A_FILE �Ѵ��ڡ�');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table MMA_A_FILE
      is ''�������ֳ�����ͼƬ�ļ������ڴ洢�ϴ����ļ���ͼƬ��
      ��Ҫ�������ļ����ơ��ļ����͡��ļ�·�����ϴ�ʱ�䡢
      ����ҵ�����͵����ԣ���Ҫ��mdsƽ̨�������ֳ����鸨��
      ����APP��ҵ��ʹ��''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_A_FILE.FILE_ID
      is ''�ļ���ʶ��Ψһ��ʶ''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_A_FILE.FILE_NAME
      is ''�ļ����ƣ��ϴ����ļ���''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_A_FILE.FILE_TYPE
      is ''�ļ����� 01��ͼƬ��02���춨�����Ϣ��03���춨�淶�����ļ��μ���ͼ��VW_MMA_FILE_TYPE''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_A_FILE.FILE_URL
      is ''�ļ�·�����ļ����ڷ���·��''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_A_FILE.UP_TIME
      is ''�ϴ�ʱ��''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_A_FILE.BUSI_ID
      is ''����ҵ���ʶ''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_A_FILE.BUSI_TYPE
      is ''����ҵ�����ͣ�01 �ֳ����飬02 ��ǰ����Ƭ 03 ��ǰ��ǩ�֣��μ���ͼVW_MMA_FILE_BUSI_TYPE''
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
      dbms_output.put_line('�ű�����������Ϊ PK_MMA_A_FILE �Ѵ��ڡ�');
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
      dbms_output.put_line('�ű�����������Ϊ SEQ_MMA_A_FILE �Ѵ��ڡ�');
    END IF;
END;
/
prompt
prompt ���ڴ����¼���Ϊ 8200000000019147 �Ľű�
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
      dbms_output.put_line('�ű�����������Ϊ MMA_C_CHK_TASK.final_step �Ѵ��ڡ�');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'MMA_C_CHK_TASK' AND U.COLUMN_NAME='SURVEY_RSLT';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table MMA_C_CHK_TASK add survey_rslt VARCHAR2(8) default 01
      ';
    ELSE
      dbms_output.put_line('�ű�����������Ϊ MMA_C_CHK_TASK.survey_rslt �Ѵ��ڡ�');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'MMA_C_CHK_TASK' AND U.COLUMN_NAME='SAFETY_RSLT';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table MMA_C_CHK_TASK add safety_rslt VARCHAR2(8)
      ';
    ELSE
      dbms_output.put_line('�ű�����������Ϊ MMA_C_CHK_TASK.safety_rslt �Ѵ��ڡ�');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'MMA_C_CHK_TASK' AND U.COLUMN_NAME='PRE_MEET_RSLT';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table MMA_C_CHK_TASK add pre_meet_rslt VARCHAR2(8)
      ';
    ELSE
      dbms_output.put_line('�ű�����������Ϊ MMA_C_CHK_TASK.pre_meet_rslt �Ѵ��ڡ�');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'MMA_C_CHK_TASK' AND U.COLUMN_NAME='CHK_RSLT';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table MMA_C_CHK_TASK add chk_rslt VARCHAR2(8)
      ';
    ELSE
      dbms_output.put_line('�ű�����������Ϊ MMA_C_CHK_TASK.chk_rslt �Ѵ��ڡ�');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'MMA_C_CHK_TASK' AND U.COLUMN_NAME='AFTER_MEET_RSLT';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table MMA_C_CHK_TASK add after_meet_rslt VARCHAR2(8)
      ';
    ELSE
      dbms_output.put_line('�ű�����������Ϊ MMA_C_CHK_TASK.after_meet_rslt �Ѵ��ڡ�');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column MMA_C_CHK_TASK.final_step
      is ''��ֹ���� 01 �ֳ����飬03 ��ȫ��飻�μ���ͼVW_MMA_STEP_NO''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_C_CHK_TASK.survey_rslt
      is ''�ֳ������� 01-δִ�У�02-������03-ͨ����04-��ͨ�����ο���ͼ VW_MMA_SURVEY_RSLT��Ĭ���ֳ�������Ϊ��01''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_C_CHK_TASK.safety_rslt
      is ''��ȫ����� 01-δִ�У�02 ����  03-ͨ����04-��ͨ�����ο���ͼ VW_MMA_SAFETY_RSLT''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_C_CHK_TASK.pre_meet_rslt
      is ''��ǰ�����  01-δִ�У�02-������03-��ִ�У��ο���ͼ VW_MMA_PRE_MEET_RSLT''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_C_CHK_TASK.chk_rslt
      is ''�ֳ��������  01-δִ�У�02-ִ���У�03-��ִ�У��ο���ͼ VW_MMA_CHK_RSLT''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_C_CHK_TASK.after_meet_rslt
      is ''�������  01-δִ�У�02-������03-��ִ�У��ο���ͼ VW_MMA_AFTER_MEET_RSLT''
    ';
END;
/
prompt
prompt ���ڴ����¼���Ϊ 8200000000019148 �Ľű�
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
      dbms_output.put_line('�ű�����������Ϊ MMA_C_CHK_TASK_DET.type_code �Ѵ��ڡ�');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'MMA_C_CHK_TASK_DET' AND U.COLUMN_NAME='TEMP';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table MMA_C_CHK_TASK_DET add temp NUMBER(5)
      ';
    ELSE
      dbms_output.put_line('�ű�����������Ϊ MMA_C_CHK_TASK_DET.temp �Ѵ��ڡ�');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'MMA_C_CHK_TASK_DET' AND U.COLUMN_NAME='HUMIDITY';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table MMA_C_CHK_TASK_DET add humidity NUMBER(5)
      ';
    ELSE
      dbms_output.put_line('�ű�����������Ϊ MMA_C_CHK_TASK_DET.humidity �Ѵ��ڡ�');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'MMA_C_CHK_TASK_DET' AND U.COLUMN_NAME='REASON';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table MMA_C_CHK_TASK_DET add reason VARCHAR2(256)
      ';
    ELSE
      dbms_output.put_line('�ű�����������Ϊ MMA_C_CHK_TASK_DET.reason �Ѵ��ڡ�');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'MMA_C_CHK_TASK_DET' AND U.COLUMN_NAME='MANUFACTURER';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table MMA_C_CHK_TASK_DET add manufacturer VARCHAR2(16)
      ';
    ELSE
      dbms_output.put_line('�ű�����������Ϊ MMA_C_CHK_TASK_DET.manufacturer �Ѵ��ڡ�');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'MMA_C_CHK_TASK_DET' AND U.COLUMN_NAME='IS_DOC_UPDATE';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table MMA_C_CHK_TASK_DET add is_doc_update VARCHAR2(8)
      ';
    ELSE
      dbms_output.put_line('�ű�����������Ϊ MMA_C_CHK_TASK_DET.is_doc_update �Ѵ��ڡ�');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column MMA_C_CHK_TASK_DET.type_code
      is ''���������ͣ�ȡ����ͼVW_IT_TYPE_CODE''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_C_CHK_TASK_DET.temp
      is ''�¶ȣ��������ֳ������¶�''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_C_CHK_TASK_DET.humidity
      is ''ʪ�ȣ��������ֳ�����ʪ��''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_C_CHK_TASK_DET.reason
      is ''���ϸ�ԭ�򣬻������ֳ�����Ĳ��ϸ�ԭ��''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_C_CHK_TASK_DET.manufacturer
      is ''�������ң�����������������ȡ����ͼVW_EQUIP_MANUFACTURER''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_C_CHK_TASK_DET.is_doc_update
      is ''�����Ƿ��޸� 1�ǣ�0 �� �ο���ͼVW_YESNO_FLAG''
    ';
END;
/
prompt
prompt ���ڴ����¼���Ϊ 8200000000019149 �Ľű�
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
      dbms_output.put_line('�ű�����������Ϊ MMA_A_WARNING_RULE.REMARK �����ڡ�');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'MMA_A_WARNING_RULE' AND U.COLUMN_NAME='RATED_LOAD_PCT';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table MMA_A_WARNING_RULE drop column rated_load_pct
      ';
    ELSE
      dbms_output.put_line('�ű�����������Ϊ MMA_A_WARNING_RULE.RATED_LOAD_PCT �����ڡ�');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'MMA_A_WARNING_RULE' AND U.COLUMN_NAME='BELOW_LOAD_PCT';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table MMA_A_WARNING_RULE drop column below_load_pct
      ';
    ELSE
      dbms_output.put_line('�ű�����������Ϊ MMA_A_WARNING_RULE.BELOW_LOAD_PCT �����ڡ�');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'MMA_A_WARNING_RULE' AND U.COLUMN_NAME='RATIO_ERR';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table MMA_A_WARNING_RULE drop column ratio_err
      ';
    ELSE
      dbms_output.put_line('�ű�����������Ϊ MMA_A_WARNING_RULE.RATIO_ERR �����ڡ�');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'MMA_A_WARNING_RULE' AND U.COLUMN_NAME='ANGLE_ERR';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table MMA_A_WARNING_RULE drop column angle_err
      ';
    ELSE
      dbms_output.put_line('�ű�����������Ϊ MMA_A_WARNING_RULE.ANGLE_ERR �����ڡ�');
    END IF;
END;
/
prompt
prompt ���ڴ����¼���Ϊ 8200000000019150 �Ľű�
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
      dbms_output.put_line('�ű�����������Ϊ MMA_A_WARNING_RULE.pre_code �Ѵ��ڡ�');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'MMA_A_WARNING_RULE' AND U.COLUMN_NAME='RULE_TYPE';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table MMA_A_WARNING_RULE add rule_type VARCHAR2(8)
      ';
    ELSE
      dbms_output.put_line('�ű�����������Ϊ MMA_A_WARNING_RULE.rule_type �Ѵ��ڡ�');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'MMA_A_WARNING_RULE' AND U.COLUMN_NAME='RULE_CONT';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table MMA_A_WARNING_RULE add rule_cont VARCHAR2(256)
      ';
    ELSE
      dbms_output.put_line('�ű�����������Ϊ MMA_A_WARNING_RULE.rule_cont �Ѵ��ڡ�');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'MMA_A_WARNING_RULE' AND U.COLUMN_NAME='PCT';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table MMA_A_WARNING_RULE add pct NUMBER(5)
      ';
    ELSE
      dbms_output.put_line('�ű�����������Ϊ MMA_A_WARNING_RULE.pct �Ѵ��ڡ�');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'MMA_A_WARNING_RULE' AND U.COLUMN_NAME='ENABLE_NO';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table MMA_A_WARNING_RULE add enable_no DATE
      ';
    ELSE
      dbms_output.put_line('�ű�����������Ϊ MMA_A_WARNING_RULE.enable_no �Ѵ��ڡ�');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'MMA_A_WARNING_RULE' AND U.COLUMN_NAME='ENABLE_DATE';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table MMA_A_WARNING_RULE add enable_date DATE
      ';
    ELSE
      dbms_output.put_line('�ű�����������Ϊ MMA_A_WARNING_RULE.enable_date �Ѵ��ڡ�');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'MMA_A_WARNING_RULE' AND U.COLUMN_NAME='DEAD_NO';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table MMA_A_WARNING_RULE add dead_no VARCHAR2(16)
      ';
    ELSE
      dbms_output.put_line('�ű�����������Ϊ MMA_A_WARNING_RULE.dead_no �Ѵ��ڡ�');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'MMA_A_WARNING_RULE' AND U.COLUMN_NAME='DEAD_DATE';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table MMA_A_WARNING_RULE add dead_date DATE
      ';
    ELSE
      dbms_output.put_line('�ű�����������Ϊ MMA_A_WARNING_RULE.dead_date �Ѵ��ڡ�');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column MMA_A_WARNING_RULE.pre_code
      is ''���ȵȼ���01��0.2       02��0.2S     03��0.5       04��0.5S���ο���ͼVW_IT_ACCURACY_CODE''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_A_WARNING_RULE.rule_type
      is ''�澯�������� 01-�������� �ο���ͼVW_MMA_RULE_TYPE''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_A_WARNING_RULE.rule_cont
      is ''�澯�������ݣ������澯��������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_A_WARNING_RULE.pct
      is ''�ٷֱȣ�ָ��������ʵ�ʶ��ε�������ѹ�����϶�����һ��ʵ�ʵ�������ѹ���Ĳ��һ��ʵ�ʵ�������ѹ���İٷ���''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_A_WARNING_RULE.enable_no
      is ''�澯����������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_A_WARNING_RULE.enable_date
      is ''�澯��������ʱ��''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_A_WARNING_RULE.dead_no
      is ''�澯����ͣ����''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_A_WARNING_RULE.dead_date
      is ''�澯����ͣ��ʱ��''
    ';
END;
/
prompt
prompt ���ڴ����¼���Ϊ 8200000000019543 �Ľű�
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
      dbms_output.put_line('�ű�����������Ϊ MMA_A_WARNING_RULE.PCT �����ڡ�');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column MMA_A_WARNING_RULE.pct
      is ''�ٷֱȣ��ο���ͼVW_MMA_PCT_CODE''
    ';
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'MMA_A_WARNING_RULE' AND U.COLUMN_NAME='ENABLE_NO';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table MMA_A_WARNING_RULE modify enable_no VARCHAR2(16)
      ';
    ELSE
      dbms_output.put_line('�ű�����������Ϊ MMA_A_WARNING_RULE.ENABLE_NO �����ڡ�');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column MMA_A_WARNING_RULE.enable_no
      is ''�����ˣ��澯����������''
    ';
END;
/
prompt
prompt ���ڴ����¼���Ϊ 8200000000019561 �Ľű�
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
      dbms_output.put_line('�ű�����������Ϊ MMA_C_CHK_RSLT.PCT �����ڡ�');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column MMA_C_CHK_RSLT.pct
      is ''�ٷֱȣ��ο���ͼVW_MMA_PCT_CODE''
    ';
END;
/
prompt
prompt ���ڴ����¼���Ϊ 8200000000021107 �Ľű�
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
      dbms_output.put_line('�ű�����������Ϊ T_DETECT_CERT.cert_no �Ѵ��ڡ�');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'T_DETECT_CERT' AND U.COLUMN_NAME='CREATE_TIME';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table T_DETECT_CERT add create_time DATE
      ';
    ELSE
      dbms_output.put_line('�ű�����������Ϊ T_DETECT_CERT.create_time �Ѵ��ڡ�');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'T_DETECT_CERT' AND U.COLUMN_NAME='ENTRUST_DEPT_NO';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table T_DETECT_CERT add entrust_dept_no VARCHAR2(30)
      ';
    ELSE
      dbms_output.put_line('�ű�����������Ϊ T_DETECT_CERT.entrust_dept_no �Ѵ��ڡ�');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'T_DETECT_CERT' AND U.COLUMN_NAME='ENTRUST_DEPT_NAME';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table T_DETECT_CERT add entrust_dept_name VARCHAR2(30)
      ';
    ELSE
      dbms_output.put_line('�ű�����������Ϊ T_DETECT_CERT.entrust_dept_name �Ѵ��ڡ�');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column T_DETECT_CERT.cert_no
      is ''֤����''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_DETECT_CERT.create_time
      is ''֤������ʱ��''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_DETECT_CERT.entrust_dept_no
      is ''ί�е�λ���''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_DETECT_CERT.entrust_dept_name
      is ''ί�е�λ����''
    ';
END;
/
prompt
prompt ���ڴ����¼���Ϊ 8200000000021247 �Ľű�
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
      dbms_output.put_line('�ű�����������Ϊ D_IO_TASK.back_wh_flag �Ѵ��ڡ�');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'D_IO_TASK' AND U.COLUMN_NAME='IS_OUTDATE_FLAG';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table D_IO_TASK add is_outdate_flag VARCHAR2(8)
      ';
    ELSE
      dbms_output.put_line('�ű�����������Ϊ D_IO_TASK.is_outdate_flag �Ѵ��ڡ�');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column D_IO_TASK.back_wh_flag
      is ''���������Ӧ�ļ�ѡ�ؿ�ⷿ��־��01ƽ�⣬02����''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_IO_TASK.is_outdate_flag
      is ''���������Ƿ�Ϊ���ڱ�ı�ʶ��0��1��''
    ';
END;
/
prompt
prompt ���ڴ����¼���Ϊ 8200000000021760 �Ľű�
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
      dbms_output.put_line('�ű�����������Ϊ D_DEV_EXCEEDTIME_TASK �Ѵ��ڡ�');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table D_DEV_EXCEEDTIME_TASK
      is ''���ڼ�������
      ��¼���ڵĺϸ���ļ������
      ��Ҫ�ֶ��У����ڼ�����񵥺ţ��豸���,�豸����ֶ�''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_DEV_EXCEEDTIME_TASK.TASK_ID
      is ''���ڼ������ID''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_DEV_EXCEEDTIME_TASK.TASK_NO
      is ''���ڼ�����񵥺�''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_DEV_EXCEEDTIME_TASK.EQUIP_CATEG
      is ''�豸���''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_DEV_EXCEEDTIME_TASK.EQUIP_CODE
      is ''�豸��,����B_EQUIP_CODE''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_DEV_EXCEEDTIME_TASK.ARRIVE_BATCH_NO
      is ''�������κţ�����C_ARRIVE_CHECK_IN''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_DEV_EXCEEDTIME_TASK.WRING_MODE
      is ''���߷�ʽ,����VW_WIRING_MODE''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_DEV_EXCEEDTIME_TASK.NUMS
      is ''��������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_DEV_EXCEEDTIME_TASK.WH_ID
      is ''�ⷿID''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_DEV_EXCEEDTIME_TASK.IS_LOCKED
      is ''�Ƿ�����ɹ��� 1�ɹ��� 0ʧ��''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_DEV_EXCEEDTIME_TASK.TASK_STATUS
      is ''����״̬������VW_EXCEEDTIME_TASK_STATUS''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_DEV_EXCEEDTIME_TASK.WRITE_DATE
      is ''д��ʱ��''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_DEV_EXCEEDTIME_TASK.MADE_NO
      is ''�ƶ���''
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
      dbms_output.put_line('�ű�����������Ϊ PK_D_DEV_EXCEEDTIME_TASK �Ѵ��ڡ�');
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
      dbms_output.put_line('�ű�����������Ϊ SEQ_D_DEV_EXCEEDTIME_TASK �Ѵ��ڡ�');
    END IF;
END;
/
prompt
prompt ���ڴ����¼���Ϊ 8200000000021792 �Ľű�
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
      dbms_output.put_line('�ű�����������Ϊ D_IO_TASK.out_type �Ѵ��ڡ�');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column D_IO_TASK.out_type
      is ''�ƿ�������͡�01��ֻ��02���䣬03����''
    ';
END;
/
prompt
prompt ���ڴ����¼���Ϊ 8200000000021907 �Ľű�
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    EXECUTE IMMEDIATE
    '
      create or replace view vw_a_cert_equip_categ as
      select t.code as code,t.code_name, ''qinghai'' as PROVINCE  from vw_det_equip_type t where t.CODE IN (''01'')
      union all
      select ''01'' as code,''������ܱ�'' as code_name, ''jiangxi'' as PROVINCE  from dual
      union all
      select ''02'' as code,''������ܱ�'' as code_name, ''jiangxi'' as PROVINCE  from dual
      union all
      select ''03'' as code,''��ѹ������'' as code_name, ''jiangxi'' as PROVINCE  from dual
      union all
      select ''04'' as code,''����������'' as code_name, ''jiangxi'' as PROVINCE  from dual
      union all
      select ''09'' as code,''�ɼ��ն�'' as code_name, ''jiangxi'' as PROVINCE  from dual
      union all
      select t.code as code,t.code_name, ''other'' as PROVINCE  from vw_det_equip_type t
      union all
      select ''01'' as code,''������ܱ�'' as code_name, ''hefei'' as PROVINCE  from dual
      union all
      select ''02'' as code,''������ܱ�'' as code_name, ''hefei'' as PROVINCE  from dual
      union all
      select ''04'' as code,''����������'' as code_name, ''hefei'' as PROVINCE  from dual
      union all
      select ''01'' as code,''������ܱ�'' as code_name, ''ningxia'' as PROVINCE  from dual
      union all
      select ''02'' as code,''������ܱ�'' as code_name, ''ningxia'' as PROVINCE  from dual
      union all
      select ''03'' as code,''��ѹ������'' as code_name, ''ningxia'' as PROVINCE  from dual
      union all
      select ''04'' as code,''����������'' as code_name, ''ningxia'' as PROVINCE  from dual
      union all
      select ''01'' as code,''������ܱ�'' as code_name, ''hubei'' as PROVINCE  from dual
      union all
      select ''02'' as code,''������ܱ�'' as code_name, ''hubei'' as PROVINCE  from dual
      union all
      select ''03'' as code,''��ѹ������'' as code_name, ''hubei'' as PROVINCE  from dual
      union all
      select ''04'' as code,''����������'' as code_name, ''hubei'' as PROVINCE  from dual
      union all
      select ''01'' as code,''������ܱ�'' as code_name, ''hunan'' as PROVINCE  from dual
      union all
      select ''02'' as code,''������ܱ�'' as code_name, ''hunan'' as PROVINCE  from dual
      union all
      select ''04'' as code,''����������'' as code_name, ''hunan'' as PROVINCE  from dual
      union all
      select ''01'' as code,''������ܱ�'' as code_name, ''heilongjiang'' as PROVINCE  from dual
      union all
      select ''02'' as code,''������ܱ�'' as code_name, ''heilongjiang'' as PROVINCE  from dual
    ';
    EXECUTE IMMEDIATE
    '
      comment on table VW_A_CERT_EQUIP_CATEG is ''CERT�豸�����ͼ''
    ';
END;
/
prompt
prompt ���ڴ����¼���Ϊ 8200000000021908 �Ľű�
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    EXECUTE IMMEDIATE
    '
      CREATE OR REPLACE VIEW VW_A_CERT_TYPE_CODE AS
      SELECT ''01'' as code ,''����춨֤��'' as code_name ,''qinghai'' as PROVINCE FROM dual
      union all
      SELECT ''02'' as code ,''����춨���֪ͨ��'' as code_name ,''qinghai'' as PROVINCE FROM dual
      union all
      SELECT ''03'' as code ,''����춨֤��'' as code_name ,''qinghai'' as PROVINCE FROM dual
      union all
      SELECT ''04'' as code ,''����춨���֪ͨ��'' as code_name ,''qinghai'' as PROVINCE FROM dual
      union all
      SELECT ''01'' as code ,''����춨֤��'' as code_name ,''jiangxi'' as PROVINCE FROM dual
      union all
      SELECT ''02'' as code ,''����춨֤��'' as code_name ,''jiangxi'' as PROVINCE FROM dual
      union all
      SELECT ''03'' as code ,''��ѹ�������춨֤��'' as code_name ,''jiangxi'' as PROVINCE FROM dual
      union all
      SELECT ''04'' as code ,''�����������춨֤��'' as code_name ,''jiangxi'' as PROVINCE FROM dual
      union all
      SELECT ''01'' as code ,''����춨֤��'' as code_name ,''other'' as PROVINCE FROM dual
      union all
      SELECT ''02'' as code ,''����춨���֪ͨ��'' as code_name ,''other'' as PROVINCE FROM dual
      union all
      SELECT ''03'' as code ,''����춨֤��'' as code_name ,''other'' as PROVINCE FROM dual
      union all
      SELECT ''04'' as code ,''����춨���֪ͨ��'' as code_name ,''other'' as PROVINCE FROM dual
      union all
      SELECT ''01'' as code ,''����춨֤��'' as code_name ,''hefei'' as PROVINCE FROM dual
      union all
      SELECT ''02'' as code ,''����춨֤��'' as code_name ,''hefei'' as PROVINCE FROM dual
      union all
      SELECT ''03'' as code ,''����ԭʼ��¼'' as code_name ,''hefei'' as PROVINCE FROM dual
      union all
      SELECT ''04'' as code ,''����ԭʼ��¼'' as code_name ,''hefei'' as PROVINCE FROM dual
      union all
      SELECT ''05'' as code ,''��ѹ����������'' as code_name ,''hefei'' as PROVINCE FROM dual
      union all
      SELECT ''01'' as code ,''������ܱ�춨֤��'' as code_name ,''ningxia'' as PROVINCE FROM dual
      union all
      SELECT ''02'' as code ,''������ܱ�춨֤��'' as code_name ,''ningxia'' as PROVINCE FROM dual
      union all
      SELECT ''03'' as code ,''��ѹ�������춨֤��'' as code_name ,''ningxia'' as PROVINCE FROM dual
      union all
      SELECT ''04'' as code ,''�����������춨֤��'' as code_name ,''ningxia'' as PROVINCE FROM dual
      union all
      SELECT ''01'' as code ,''������ܱ�춨֤��'' as code_name ,''hubei'' as PROVINCE FROM dual
      union all
      SELECT ''02'' as code ,''������ܱ�춨֤��'' as code_name ,''hubei'' as PROVINCE FROM dual
      union all
      SELECT ''03'' as code ,''��ѹ�������춨֤��'' as code_name ,''hubei'' as PROVINCE FROM dual
      union all
      SELECT ''04'' as code ,''�����������춨֤��'' as code_name ,''hubei'' as PROVINCE FROM dual
      union all
      SELECT ''01'' as code ,''������ܱ�춨֤��'' as code_name ,''hunan'' as PROVINCE FROM dual
      union all
      SELECT ''02'' as code ,''������ܱ�춨֤��'' as code_name ,''hunan'' as PROVINCE FROM dual
      union all
      SELECT ''04'' as code ,''�����������춨֤��'' as code_name ,''hunan'' as PROVINCE FROM dual
      union all
      SELECT ''01'' as code ,''������ܱ�춨֤��'' as code_name ,''heilongjiang'' as PROVINCE FROM dual
      union all
      SELECT ''02'' as code ,''������ܱ�춨֤��'' as code_name ,''heilongjiang'' as PROVINCE FROM dual
    ';
    EXECUTE IMMEDIATE
    '
      comment on table VW_A_CERT_TYPE_CODE is ''CERT֤����ͼ''
    ';
END;
/
prompt
prompt ���ڴ����¼���Ϊ 8200000000021928 �Ľű�
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
prompt ���ڴ����¼���Ϊ 8200000000021932 �Ľű�
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
      dbms_output.put_line('�ű�����������Ϊ D_HANDHELD_DEVICE.doc_create_date �Ѵ��ڡ�');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column D_HANDHELD_DEVICE.doc_create_date
      is ''��������''
    ';
END;
/
prompt
prompt ���ڴ����¼���Ϊ 8200000000021933 �Ľű�
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    EXECUTE IMMEDIATE
    '
      CREATE OR REPLACE VIEW VW_A_CERT_ZI AS
      SELECT ''01'' as code ,''����ƽ��'' as code_name ,''qinghai'' as PROVINCE FROM dual
      union all
      SELECT ''01'' as code ,''У���ܵ�'' as code_name ,''jiangxi'' as PROVINCE FROM dual
      union all
      SELECT ''02'' as code ,''�����ܵ�'' as code_name ,''other'' as PROVINCE FROM dual
      union all
      SELECT ''03'' as code ,''�����ܵ�'' as code_name ,''other'' as PROVINCE FROM dual
      union all
      SELECT ''04'' as code ,''���ֻ���'' as code_name ,''other'' as PROVINCE FROM dual
      union all
      SELECT ''05'' as code ,''У�ֻ���'' as code_name ,''other'' as PROVINCE FROM dual
      union ALL
      SELECT ''01'' as code ,''������ֵ�'' as code_name ,''ningxia'' as PROVINCE FROM dual
      union all
      SELECT ''01'' as code ,''HBJLSN'' as code_name ,''hubei'' as PROVINCE FROM dual
      union all
      SELECT ''01'' as code ,''���棩����'' as code_name ,''hunan'' as PROVINCE FROM dual
      union all
      SELECT ''01'' as code ,''HLJJLSN'' as code_name ,''heilongjiang'' as PROVINCE FROM dual
    ';
    EXECUTE IMMEDIATE
    '
      comment on table VW_A_CERT_ZI is ''�춨֤����ͼ''
    ';
END;
/
prompt
prompt ���ڴ����¼���Ϊ 8200000000022147 �Ľű�
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    EXECUTE IMMEDIATE
    '
      comment on column C_ARRIVE_PARA_SET.disp_order
      is ''չʾ����, ֵΪ�����Ӧ���ò�������ҳ�����չʾά��''
    ';
END;
/
prompt
prompt ���ڴ����¼���Ϊ 8200000000022307 �Ľű�
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
      dbms_output.put_line('�ű�����������Ϊ MMA_A_FILE.file_content �Ѵ��ڡ�');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column MMA_A_FILE.file_content
      is ''�ļ�����''
    ';
END;
/
prompt
prompt ���ڴ����¼���Ϊ 8200000000022372 �Ľű�
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
      dbms_output.put_line('�ű�����������Ϊ MMA_CHK_INDIRECT_DET.PCT �����ڡ�');
    END IF;
END;
/
prompt
prompt ���ڴ����¼���Ϊ 8200000000022445 �Ľű�
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
      dbms_output.put_line('�ű�����������Ϊ A_SEAL_IR.seal_serial �Ѵ��ڡ�');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'A_SEAL_IR' AND U.COLUMN_NAME='CHECK_INFO';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table A_SEAL_IR add check_info VARCHAR2(32)
      ';
    ELSE
      dbms_output.put_line('�ű�����������Ϊ A_SEAL_IR.check_info �Ѵ��ڡ�');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'A_SEAL_IR' AND U.COLUMN_NAME='RELEASE_INFO';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table A_SEAL_IR add release_info VARCHAR2(32)
      ';
    ELSE
      dbms_output.put_line('�ű�����������Ϊ A_SEAL_IR.release_info �Ѵ��ڡ�');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column A_SEAL_IR.seal_serial
      is ''���ӷ�ӡӦ�����к�''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column A_SEAL_IR.check_info
      is ''���ӷ�ӡУ������Ϣ''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column A_SEAL_IR.release_info
      is ''���ӷ�ӡ������Ϣ''
    ';
END;
/
prompt
prompt ���ڴ����¼���Ϊ 8200000000022469 �Ľű�
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
      dbms_output.put_line('�ű�����������Ϊ A_SEAL_IR.work_type_code �Ѵ��ڡ�');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column A_SEAL_IR.work_type_code
      is ''ҵ�����͡���װά�����ֳ����顢�õ����''
    ';
END;
/
prompt
prompt ���ڴ����¼���Ϊ 8200000000022494 �Ľű�
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
      dbms_output.put_line('�ű�����������Ϊ D_HANDHELD_DEVICE.box_bar_code �Ѵ��ڡ�');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'D_HANDHELD_DEVICE' AND U.COLUMN_NAME='PALLET_BAR_CODE';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table D_HANDHELD_DEVICE add pallet_bar_code VARCHAR2(320)
      ';
    ELSE
      dbms_output.put_line('�ű�����������Ϊ D_HANDHELD_DEVICE.pallet_bar_code �Ѵ��ڡ�');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column D_HANDHELD_DEVICE.box_bar_code
      is ''��ת������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_HANDHELD_DEVICE.pallet_bar_code
      is ''��������''
    ';
END;
/
prompt
prompt ���ڴ����¼���Ϊ 8200000000022525 �Ľű�
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
      dbms_output.put_line('�ű�����������Ϊ D_METERING_CABINET.sort_code �Ѵ��ڡ�');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'D_METERING_CABINET' AND U.COLUMN_NAME='MADE_DATE';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table D_METERING_CABINET add made_date DATE
      ';
    ELSE
      dbms_output.put_line('�ű�����������Ϊ D_METERING_CABINET.made_date �Ѵ��ڡ�');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column D_METERING_CABINET.sort_code
      is ''���(����VW_MEAS_BOX_TYPE)''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_METERING_CABINET.made_date
      is ''��������''
    ';
END;
/
prompt
prompt ���ڴ����¼���Ϊ 8200000000022526 �Ľű�
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
      COMMENT ON TABLE VW_MEAS_BOX_TYPE IS ''�����������ͼ''
    ';
END;
/
prompt
prompt ���ڴ����¼���Ϊ 8200000000022583 �Ľű�
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
      dbms_output.put_line('�ű�����������Ϊ C_ARRIVE_CABINET_PARA.sort_code �Ѵ��ڡ�');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column C_ARRIVE_CABINET_PARA.sort_code
      is ''���(����VW_MEAS_BOX_TYPE)''
    ';
END;
/

prompt
prompt ���ڴ����¼���Ϊ 8200000000022810 �Ľű�
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
      comment on table VW_DTB_EQUIP_CATEG is ''�������豸������ͼ''
    ';
END;
/


prompt
prompt ���ڴ����¼���Ϊ 8200000000022888 �Ľű�
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
      dbms_output.put_line('�ű�����������Ϊ B_BID_BATCH_SG186 �Ѵ��ڡ�');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table B_BID_BATCH_SG186
      is ''�б�������Ϣ��''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column B_BID_BATCH_SG186.ID
      is ''����id''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column B_BID_BATCH_SG186.BATCH_NO
      is ''�б�����''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column B_BID_BATCH_SG186.BGSERIAL_NO
      is ''bar_code��ʼ''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column B_BID_BATCH_SG186.EDSERIAL_NO
      is ''bar_code����''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column B_BID_BATCH_SG186.MANUFACTURER
      is ''��Ӧ�̱���''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column B_BID_BATCH_SG186.SPEC_CODE
      is ''����Ʒ��''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column B_BID_BATCH_SG186.MANUFACTURER_NAME
      is ''��Ӧ������''
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
      dbms_output.put_line('�ű�����������Ϊ PK_B_BID_BATCH_SG186 �Ѵ��ڡ�');
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
      dbms_output.put_line('�ű�����������Ϊ SEQ_B_BID_BATCH_SG186 �Ѵ��ڡ�');
    END IF;
END;
/


prompt
prompt ���ڴ����¼���Ϊ 8200000000021384 �Ľű�
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
      dbms_output.put_line('�ű�����������Ϊ MMA_CHK_BASIC_RSLT �Ѵ��ڡ�');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table MMA_CHK_BASIC_RSLT
      is ''�����Ա�
      1���ֳ�����ִ����ɺ󣬱����ֳ�������������Ϣ����ʵ����Ҫ�������ٷֱȡ��������͡���ֵ���λ������ԡ�
      2��ͨ���ֳ�����ҵ����APP¼�����ݲ�����¼��
      3����ʵ����Ҫ���ֳ�����ҵ��ʹ�á�''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_CHK_BASIC_RSLT.CHK_RSLT_ID
      is ''��������ʶ''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_CHK_BASIC_RSLT.TASK_DET_ID
      is ''����������ϸ��ʶ''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_CHK_BASIC_RSLT.POLARITY
      is ''����''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_CHK_BASIC_RSLT.COMPOUND_ERR
      is ''�����²�''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_CHK_BASIC_RSLT.TEMP
      is ''�¶�''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_CHK_BASIC_RSLT.HUMIDITY
      is ''ʪ��''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_CHK_BASIC_RSLT.CONC_CODE
      is ''������ۣ�01 δ�죬02 �ϸ�03 �ϸ�,04 ���ϸ񣻲μ���ͼVW_MMA_CONC_CODE''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_CHK_BASIC_RSLT.ACTUAL_RATIO
      is ''ʵ�ʵ���/��ѹ��''
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
      dbms_output.put_line('�ű�����������Ϊ PK_MMA_CHK_BASIC_RSLT �Ѵ��ڡ�');
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
      dbms_output.put_line('�ű�����������Ϊ SEQ_MMA_CHK_BASIC_RSLT �Ѵ��ڡ�');
    END IF;
END;
/
prompt
prompt ���ڴ����¼���Ϊ 8200000000021386 �Ľű�
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
      dbms_output.put_line('�ű�����������Ϊ MMA_CHK_BASIC_DET_RSLT �Ѵ��ڡ�');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table MMA_CHK_BASIC_DET_RSLT
      is ''��������ϸ��
      1���ֳ�����ִ����ɺ󣬱����ֳ�������������Ϣ����ʵ����Ҫ�������ٷֱȡ��������͡���ֵ���λ������ԡ�
      2��ͨ���ֳ�����ҵ����APP¼�����ݲ�����¼��
      3����ʵ����Ҫ���ֳ�����ҵ��ʹ�á�''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_CHK_BASIC_DET_RSLT.CHK_DET_RSLT_ID
      is ''��������ϸ��ʶ''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_CHK_BASIC_DET_RSLT.MMA_CHK_RSLT_ID
      is ''����_��������ʶ''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_CHK_BASIC_DET_RSLT.CHK_RSLT_ID
      is ''��������ʶ''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_CHK_BASIC_DET_RSLT.PCT
      is ''�ٷֱ�''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_CHK_BASIC_DET_RSLT.LOAD_TYPE
      is ''�������ͣ�01 ����ɣ�02 ���޸���.�μ���ͼVW_MMA_LOAD_TYPE''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_CHK_BASIC_DET_RSLT.RATIO_ERR
      is ''��ֵ��''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_CHK_BASIC_DET_RSLT.ANGLE_ERR
      is ''��λ��''
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
      dbms_output.put_line('�ű�����������Ϊ PK_MMA_CHK_BASIC_DET_RSLT �Ѵ��ڡ�');
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
      dbms_output.put_line('�ű�����������Ϊ SEQ_MMA_CHK_BASIC_DET_RSLT �Ѵ��ڡ�');
    END IF;
END;
/
prompt
prompt ���ڴ����¼���Ϊ 8200000000021390 �Ľű�
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
      dbms_output.put_line('�ű�����������Ϊ MMA_CHK_INDIRECT_RSLT �Ѵ��ڡ�');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table MMA_CHK_INDIRECT_RSLT
      is ''��Ӳ��Ա�
      �ֳ�����ִ�л��ڣ�ִ��CT��PT��Ӳ��ԣ������ֳ�������������Ϣ����ʵ����Ҫ�������¶ȡ�ʪ�ȡ����۵����ԡ�
      2��ͨ���ֳ�����ҵ����APP¼�����ݲ�����¼��
      3����ʵ����Ҫ���ֳ�����ҵ��ʹ�á�''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_CHK_INDIRECT_RSLT.CHK_RSLT_ID
      is ''��������ʶ''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_CHK_INDIRECT_RSLT.TASK_DET_ID
      is ''����������ϸ��ʶ''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_CHK_INDIRECT_RSLT.CHK_TYPE
      is ''�ֳ��������ͣ�01CT������ 02PT������ 03Z���� 04Y���� 05CTʵ�ʸ��� 06CT�������� 07PTʵ�ʸ��� 08PT����ѹ�� 09CT��ӷ� 10PT��ӷ� 11PT�������ԣ��μ���ͼVW_MMA_CHK_TYPE''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_CHK_INDIRECT_RSLT.POLARITY
      is ''����''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_CHK_INDIRECT_RSLT.COMPOUND_ERR
      is ''�������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_CHK_INDIRECT_RSLT.FST_RC_CODE
      is ''ʵ��һ�ε���''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_CHK_INDIRECT_RSLT.ACTUAL_VOLT_RATIO
      is ''ʵ�ʵ�ѹ��''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_CHK_INDIRECT_RSLT.DC
      is ''ֱ��''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_CHK_INDIRECT_RSLT.SHORT_TURNS
      is ''��·��''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_CHK_INDIRECT_RSLT.SECU_COEF
      is ''����ϵ��''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_CHK_INDIRECT_RSLT.TEMP
      is ''�¶�''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_CHK_INDIRECT_RSLT.HUMIDITY
      is ''ʪ��''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_CHK_INDIRECT_RSLT.CONC_CODE
      is ''������ۣ�01 δ�죬02 �ϸ�03 �ϸ�,04 ���ϸ񣻲μ���ͼVW_MMA_CONC_CODE''
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
      dbms_output.put_line('�ű�����������Ϊ PK_MMA_CHK_INDIRECT_RSLT �Ѵ��ڡ�');
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
      dbms_output.put_line('�ű�����������Ϊ SEQ_MMA_CHK_INDIRECT_RSLT �Ѵ��ڡ�');
    END IF;
END;
/
prompt
prompt ���ڴ����¼���Ϊ 8200000000021391 �Ľű�
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
      dbms_output.put_line('�ű�����������Ϊ MMA_CHK_INDIRECT_DET �Ѵ��ڡ�');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table MMA_CHK_INDIRECT_DET
      is ''��Ӳ�����ϸ��
      1����Ӳ�����ɺ󣬱����Ӳ�����ϸ��Ϣ���ݣ���ʵ����Ҫ�������ٷֱȡ��������͡���ֵ���λ������ԡ�
      2��ͨ���ֳ�����ҵ����APP¼�����ݲ�����¼��
      3����ʵ����Ҫ���ֳ�����ҵ��ʹ�á�''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_CHK_INDIRECT_DET.CHK_DET_ID
      is ''��Ӳ���_��������ʶ''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_CHK_INDIRECT_DET.CHK_RSLT_ID
      is ''��������ʶ''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_CHK_INDIRECT_DET.PCT
      is ''�ٷֱ�''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_CHK_INDIRECT_DET.LOAD_TYPE
      is ''�������ͣ�01 ����ɣ�02 ���޸���.�μ���ͼVW_MMA_LOAD_TYP''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_CHK_INDIRECT_DET.RATIO_ERR
      is ''��ֵ��''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_CHK_INDIRECT_DET.ANGLE_ERR
      is ''��λ��''
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
      dbms_output.put_line('�ű�����������Ϊ PK_MMA_CHK_INDIRECT_DET �Ѵ��ڡ�');
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
      dbms_output.put_line('�ű�����������Ϊ SEQ_MMA_CHK_INDIRECT_DET �Ѵ��ڡ�');
    END IF;
END;
/
prompt
prompt ���ڴ����¼���Ϊ 8200000000021396 �Ľű�
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
      dbms_output.put_line('�ű�����������Ϊ MMA_CHK_Z_Y_RSLT �Ѵ��ڡ�');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table MMA_CHK_Z_Y_RSLT
      is ''Z����Y���Խ����
      1��Z���ԡ�Y����ִ����ɺ󣬱���Z���ԡ�Y���Խ��������Ϣ����ʵ����Ҫ�������ٷֱȡ����衢�翹���絼�����Ƶ����ԡ�
      2��ͨ���ֳ�����ҵ��ͨ����У����ͨ�Ų�����¼��
      3����ʵ����Ҫ��Z���ԡ�Y����ҵ��ʹ�á�''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_CHK_Z_Y_RSLT.CHK_RSLT_ID
      is ''��������ʶ''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_CHK_Z_Y_RSLT.TASK_DET_ID
      is ''����������ϸ��ʶ''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_CHK_Z_Y_RSLT.CHK_TYPE
      is ''�ֳ��������ͣ�01CT������ 02PT������ 03Z���� 04Y���� 05CTʵ�ʸ��� 06CT�������� 07PTʵ�ʸ��� 08PT����ѹ�� 09CT��ӷ� 10PT��ӷ� 11PT�������ԣ��μ���ͼVW_MMA_CHK_TYPE''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_CHK_Z_Y_RSLT.PCT
      is ''�ٷֱ�''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_CHK_Z_Y_RSLT.RESI
      is ''����R������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_CHK_Z_Y_RSLT.REAC
      is ''�翹X������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_CHK_Z_Y_RSLT.CONDUCT
      is ''�絼G��mS��''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_CHK_Z_Y_RSLT.SUSC
      is ''����B��mS��''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_CHK_Z_Y_RSLT.ACTUAL_LOAD
      is ''ʵ�ʸ���''
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
      dbms_output.put_line('�ű�����������Ϊ PK_MMA_CHK_Z_Y_RSLT �Ѵ��ڡ�');
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
      dbms_output.put_line('�ű�����������Ϊ SEQ_MMA_CHK_Z_Y_RSLT �Ѵ��ڡ�');
    END IF;
END;
/
prompt
prompt ���ڴ����¼���Ϊ 8200000000021397 �Ľű�
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
      dbms_output.put_line('�ű�����������Ϊ MMA_CHK_SND_PRE_RSLT �Ѵ��ڡ�');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table MMA_CHK_SND_PRE_RSLT
      is ''PT����ѹ�����Խ����
      1��PT����ѹ������ִ����ɺ󣬱�����Խ��������Ϣ����ʵ����Ҫ�������¶ȡ�ʪ�ȡ����۵����ԡ�
      2��ͨ���ֳ�����ҵ��ͨ����У����ͨ�Ų�����¼��
      3����ʵ����Ҫ��PT����ѹ��ҵ��ʹ�á�''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_CHK_SND_PRE_RSLT.CHK_RSLT_ID
      is ''��������ʶ''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_CHK_SND_PRE_RSLT.TASK_DET_ID
      is ''����������ϸ��ʶ''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_CHK_SND_PRE_RSLT.CHK_TYPE
      is ''�ֳ��������ͣ�01CT������ 02PT������ 03Z���� 04Y���� 05CTʵ�ʸ��� 06CT�������� 07PTʵ�ʸ��� 08PT����ѹ�� 09CT��ӷ� 10PT��ӷ� 11PT�������ԣ��μ���ͼVW_MMA_CHK_TYPE''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_CHK_SND_PRE_RSLT.SUBS_NO
      is ''��վ���''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_CHK_SND_PRE_RSLT.SUBS_NAME
      is ''��վ����''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_CHK_SND_PRE_RSLT.SWITCH_NO
      is ''���غ�''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_CHK_SND_PRE_RSLT.TEMP
      is ''�¶�''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_CHK_SND_PRE_RSLT.HUMIDITY
      is ''ʪ��''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_CHK_SND_PRE_RSLT.CONC_CODE
      is ''������ۣ�01 δ�죬02 �ϸ�03 �ϸ�,04 ���ϸ񣻲μ���ͼVW_MMA_CONC_CODE''
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
      dbms_output.put_line('�ű�����������Ϊ PK_MMA_CHK_SND_PRE_RSLT �Ѵ��ڡ�');
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
      dbms_output.put_line('�ű�����������Ϊ SEQ_MMA_CHK_SND_PRE_RSLT �Ѵ��ڡ�');
    END IF;
END;
/
prompt
prompt ���ڴ����¼���Ϊ 8200000000021398 �Ľű�
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
      dbms_output.put_line('�ű�����������Ϊ MMA_CHK_SND_PRE_DET �Ѵ��ڡ�');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table MMA_CHK_SND_PRE_DET
      is ''PT����ѹ�����Խ����ϸ��
      1��PT����ѹ������ִ����ɺ󣬱�����Խ��������Ϣ����ʵ����Ҫ��������ֵ���λ������ԡ�
      2��ͨ���ֳ�����ҵ��ͨ����У����ͨ�Ų�����¼��
      3����ʵ����Ҫ��PT����ѹ������ҵ��ʹ�á�''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_CHK_SND_PRE_DET.CHK_DET_ID
      is ''��������ϸ��ʶ''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_CHK_SND_PRE_DET.CHK_RSLT_ID
      is ''��������ʶ''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_CHK_SND_PRE_DET.WIRING_MODE
      is ''���߷�ʽ�����ܱ�Ľ��߷�ʽ���ù��ҵ�����˾Ӫ����������༯:5110.84���ܱ���߷�ʽ���������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_CHK_SND_PRE_DET.PHASE_CODE
      is ''��𣬲μ���ͼVW_IT_PHASE��01��A�࣬02��B�࣬03��C�࣬04��AB�࣬05��AC�࣬06��BC�࣬07��AB��+BC��''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_CHK_SND_PRE_DET.RATIO_ERR
      is ''��ֵ��''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_CHK_SND_PRE_DET.ANGLE_ERR
      is ''��λ��''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_CHK_SND_PRE_DET.SND_PRE
      is ''����ѹ����du(%)''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_CHK_SND_PRE_DET.RV_CODE
      is ''��ѹ''
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
      dbms_output.put_line('�ű�����������Ϊ PK_MMA_CHK_SND_PRE_DET �Ѵ��ڡ�');
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
      dbms_output.put_line('�ű�����������Ϊ SEQ_MMA_CHK_SND_PRE_DET �Ѵ��ڡ�');
    END IF;
END;
/
prompt
prompt ���ڴ����¼���Ϊ 8200000000021399 �Ľű�
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
      dbms_output.put_line('�ű�����������Ϊ MMA_CHK_VA_EX_RSLT �Ѵ��ڡ�');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table MMA_CHK_VA_EX_RSLT
      is ''���������������Բ��Խ����
      1�����������������Բ���ִ����ɺ󣬱�����Խ��������Ϣ����ʵ����Ҫ�������¶ȡ�ʪ�ȵ����ԡ�
      2��ͨ���ֳ�����ҵ��ͨ����У����ͨ�Ų�����¼��
      3����ʵ����Ҫ��CT�������ԡ�PT��������ҵ��ʹ�á�''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_CHK_VA_EX_RSLT.CHK_RSLT_ID
      is ''��������ʶ''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_CHK_VA_EX_RSLT.TASK_DET_ID
      is ''����������ϸ��ʶ''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_CHK_VA_EX_RSLT.CHK_TYPE
      is ''�ֳ��������ͣ�01CT������ 02PT������ 03Z���� 04Y���� 05CTʵ�ʸ��� 06CT�������� 07PTʵ�ʸ��� 08PT����ѹ�� 09CT��ӷ� 10PT��ӷ� 11PT�������ԣ��μ���ͼVW_MMA_CHK_TYPE''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_CHK_VA_EX_RSLT.TEMP
      is ''�¶�''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_CHK_VA_EX_RSLT.HUMIDITY
      is ''ʪ��''
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
      dbms_output.put_line('�ű�����������Ϊ PK_MMA_CHK_VA_EX_RSLT �Ѵ��ڡ�');
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
      dbms_output.put_line('�ű�����������Ϊ SEQ_MMA_CHK_VA_EX_RSLT �Ѵ��ڡ�');
    END IF;
END;
/
prompt
prompt ���ڴ����¼���Ϊ 8200000000021400 �Ľű�
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
      dbms_output.put_line('�ű�����������Ϊ MMA_CHK_VA_EX_DET �Ѵ��ڡ�');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table MMA_CHK_VA_EX_DET
      is ''���������������Բ��Խ����ϸ��
      1��CT�������ԡ�PT��������ִ����ɺ󣬱�����Խ��������Ϣ����ʵ����Ҫ��������ѹ�����������ԡ�
      2��ͨ���ֳ�����ҵ��ͨ����У����ͨ�Ų�����¼��
      3����ʵ����Ҫ��CT�������ԡ�PT�������Բ���ҵ��ʹ�á�''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_CHK_VA_EX_DET.CHK_DET_ID
      is ''��������ϸ��ʶ''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_CHK_VA_EX_DET.CHK_RSLT_ID
      is ''��������ʶ''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_CHK_VA_EX_DET.DET_ORDER
      is ''������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_CHK_VA_EX_DET.RV_CODE
      is ''��ѹ''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_CHK_VA_EX_DET.RC_CODE
      is ''����''
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
      dbms_output.put_line('�ű�����������Ϊ PK_MMA_CHK_VA_EX_DET �Ѵ��ڡ�');
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
      dbms_output.put_line('�ű�����������Ϊ SEQ_MMA_CHK_VA_EX_DET �Ѵ��ڡ�');
    END IF;
END;
/
prompt
prompt ���ڴ����¼���Ϊ 8200000000021401 �Ľű�
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
      dbms_output.put_line('�ű�����������Ϊ MMA_CHK_LOAD_RSLT �Ѵ��ڡ�');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table MMA_CHK_LOAD_RSLT
      is ''ʵ�ʸ��ɲ��Խ����
      1��CTʵ�ʸ��ɡ�PTʵ�ʸ���ִ����ɺ󣬱���CTʵ�ʸ��ɡ�PTʵ�ʸ��ɲ��Խ��������Ϣ����ʵ����Ҫ�������¶ȡ�ʪ�ȡ����ۡ����衢�翹�����ԡ�
      2��ͨ���ֳ�����ҵ��ͨ����У����ͨ�Ų�����¼��
      3����ʵ����Ҫ��CTʵ�ʸ��ɡ�PTʵ�ʸ���ҵ��ʹ�á�''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_CHK_LOAD_RSLT.CHK_RSLT_ID
      is ''��������ʶ''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_CHK_LOAD_RSLT.TASK_DET_ID
      is ''����������ϸ��ʶ''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_CHK_LOAD_RSLT.CHK_TYPE
      is ''�ֳ��������ͣ�01CT������ 02PT������ 03Z���� 04Y���� 05CTʵ�ʸ��� 06CT�������� 07PTʵ�ʸ��� 08PT����ѹ�� 09CT��ӷ� 10PT��ӷ� 11PT�������ԣ��μ���ͼVW_MMA_CHK_TYPE''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_CHK_LOAD_RSLT.TEMP
      is ''�¶�''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_CHK_LOAD_RSLT.HUMIDITY
      is ''ʪ��''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_CHK_LOAD_RSLT.CONC_CODE
      is ''������ۣ�01 δ�죬02 �ϸ�03 �ϸ�,04 ���ϸ񣻲μ���ͼVW_MMA_CONC_CODE''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_CHK_LOAD_RSLT.PHASE_CODE
      is ''��𣬲μ���ͼVW_IT_PHASE��01��A�࣬02��B�࣬03��C�࣬04��AB�࣬05��AC�࣬06��BC�࣬07��AB��+BC��''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_CHK_LOAD_RSLT.RESI
      is ''����R������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_CHK_LOAD_RSLT.REAC
      is ''�翹X������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_CHK_LOAD_RSLT.RV_CODE
      is ''��ѹ''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_CHK_LOAD_RSLT.RC_CODE
      is ''����''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MMA_CHK_LOAD_RSLT.ACTUAL_LOAD
      is ''ʵ�ʸ���''
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
      dbms_output.put_line('�ű�����������Ϊ PK_MMA_CHK_LOAD_RSLT �Ѵ��ڡ�');
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
      dbms_output.put_line('�ű�����������Ϊ SEQ_MMA_CHK_LOAD_RSLT �Ѵ��ڡ�');
    END IF;
END;
/
prompt
prompt ���ڴ����¼���Ϊ 8200000000021533 �Ľű�
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
      dbms_output.put_line('�ű�����������Ϊ MMA_CHK_BASIC_RSLT.POLARITY �����ڡ�');
    END IF;
END;
/


set feedback on
set define on
set serveroutput off
--------------------------------------------------

