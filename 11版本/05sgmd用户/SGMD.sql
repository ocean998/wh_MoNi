--------------------------------------------------
set feedback off
set define off
set serveroutput on
--------------------------------------------------

prompt
prompt ���ڴ����¼���Ϊ 8200000000016381 �Ľű�
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
prompt ���ڴ����¼���Ϊ 8200000000016503 �Ľű�
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'DIST_TASK_INFO' AND U.COLUMN_NAME='IS_ACTIVE_DIST';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table DIST_TASK_INFO add is_active_dist VARCHAR2(8)
      ';
    ELSE
      dbms_output.put_line('�ű�����������Ϊ DIST_TASK_INFO.is_active_dist �Ѵ��ڡ�');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column DIST_TASK_INFO.is_active_dist
      is ''�Ƿ��������ͣ�1���ǣ�0����''
    ';
END;
/
prompt
prompt ���ڴ����¼���Ϊ 8200000000017945 �Ľű�
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
        oper_id NUMBER(16),
        devi_id NUMBER(16),
        devi_name VARCHAR2(256),
        sort_code VARCHAR2(8),
        devi_type VARCHAR2(8),
        bar_code VARCHAR2(32),
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
        out_current VARCHAR2(8),
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
      dbms_output.put_line('�ű�����������Ϊ D_CHARGE_POINT �Ѵ��ڡ�');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table D_CHARGE_POINT
      is ''���׮������Ϣ��''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_CHARGE_POINT.OPER_ID
      is ''������ʶ''
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
      is ''���׮���''
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
      is ''������ͬID''
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
      is ''���һ�μ춨����''
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
      is ''�������ʣ�kW��''
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
      comment on column D_CHARGE_POINT.OUT_CURRENT
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
END;
/
prompt
prompt ���ڴ����¼���Ϊ 8200000000017949 �Ľű�
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
        oper_id NUMBER(16),
        detect_task_no VARCHAR2(32),
        sys_no VARCHAR2(16),
        detect_equip_no VARCHAR2(16),
        bar_code VARCHAR2(32),
        detect_date DATE,
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
      dbms_output.put_line('�ű�����������Ϊ T_DETECT_CP_RSLT �Ѵ��ڡ�');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table T_DETECT_CP_RSLT
      is ''���׮�춨���۱�''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_DETECT_CP_RSLT.OPER_ID
      is ''������ʶ''
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
      is ''д��ʱ��''
    ';
END;
/
prompt
prompt ���ڴ����¼���Ϊ 8200000000017971 �Ľű�
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Tables U WHERE U.TABLE_NAME = 'EQUIP_INST_INFO';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
        create table EQUIP_INST_INFO
        (
        oper_id NUMBER(16),
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
      dbms_output.put_line('�ű�����������Ϊ EQUIP_INST_INFO �Ѵ��ڡ�');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table EQUIP_INST_INFO
      is ''�豸��װ��Ϣ��''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column EQUIP_INST_INFO.OPER_ID
      is ''������ʶ''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column EQUIP_INST_INFO.EQUIP_CATEG
      is ''�豸���''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column EQUIP_INST_INFO.BAR_CODE
      is ''�豸������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column EQUIP_INST_INFO.STATUS_CODE
      is ''�豸״̬''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column EQUIP_INST_INFO.ORG_NO
      is ''���絥λ''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column EQUIP_INST_INFO.LONGITUDE
      is ''����''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column EQUIP_INST_INFO.LATITUDE
      is ''γ��''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column EQUIP_INST_INFO.OPERATE_TYPE
      is ''��������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column EQUIP_INST_INFO.OPERATE_DATE
      is ''��������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column EQUIP_INST_INFO.OPERATE_NO
      is ''������Ա''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column EQUIP_INST_INFO.REMARK
      is ''��ע''
    ';
END;
/
prompt
prompt ���ڴ����¼���Ϊ 8200000000017973 �Ľű�
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Tables U WHERE U.TABLE_NAME = 'ARRIVE_CHARGE_PARA';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
        create table ARRIVE_CHARGE_PARA
        (
        oper_id NUMBER(16),
        rcv_id NUMBER(16),
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
      dbms_output.put_line('�ű�����������Ϊ ARRIVE_CHARGE_PARA �Ѵ��ڡ�');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table ARRIVE_CHARGE_PARA
      is ''���׮����������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column ARRIVE_CHARGE_PARA.OPER_ID
      is ''������ʶ''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column ARRIVE_CHARGE_PARA.RCV_ID
      is ''������Ϣ��ʶ''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column ARRIVE_CHARGE_PARA.MANUFACTURER
      is ''��������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column ARRIVE_CHARGE_PARA.MADE_DATE
      is ''��������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column ARRIVE_CHARGE_PARA.LOT_NO
      is ''��������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column ARRIVE_CHARGE_PARA.REMARK
      is ''��ע''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column ARRIVE_CHARGE_PARA.EQIP_PRC
      is ''�豸����''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column ARRIVE_CHARGE_PARA.SORT_CODE
      is ''���׮���''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column ARRIVE_CHARGE_PARA.DEVI_TYPE
      is ''�豸�ͺ�''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column ARRIVE_CHARGE_PARA.DEVI_CATEG
      is ''����''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column ARRIVE_CHARGE_PARA.OUT_MAX_POWER
      is ''�������ʣ�kW��''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column ARRIVE_CHARGE_PARA.IN_RATED_RV
      is ''������ѹ��V��''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column ARRIVE_CHARGE_PARA.OUT_RATED_RV
      is ''������ѹ��V��''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column ARRIVE_CHARGE_PARA.OUT_DOWN_RV
      is ''������޵�ѹ��V��''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column ARRIVE_CHARGE_PARA.OUT_UP_RV
      is ''������޵�ѹ��V��''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column ARRIVE_CHARGE_PARA.OUT_CURRENT
      is ''�����������������A��''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column ARRIVE_CHARGE_PARA.CABLE_LENGTH
      is ''���³���''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column ARRIVE_CHARGE_PARA.IS_CONST_POWER
      is ''�㹦�ʹ���''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column ARRIVE_CHARGE_PARA.CHARGE_PORT_NUM
      is ''��������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column ARRIVE_CHARGE_PARA.IS_CTS
      is ''CTS���Ĺ���''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column ARRIVE_CHARGE_PARA.IS_POWER_ASSIGN
      is ''��̬���ʷ��书��''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column ARRIVE_CHARGE_PARA.CONNECT_MODE
      is ''����ģʽ''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column ARRIVE_CHARGE_PARA.CHARGE_CONTR_TYPE
      is ''���������ͺ�''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column ARRIVE_CHARGE_PARA.CHARGE_MODULE_SPECE
      is ''���ģ����''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column ARRIVE_CHARGE_PARA.CHARGE_MODULE_MANUF
      is ''���ģ�鳧��''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column ARRIVE_CHARGE_PARA.CONNECTOR_TYPE
      is ''����װ���ͺ�''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column ARRIVE_CHARGE_PARA.CONNECTOR_SPECE
      is ''����װ�ù��''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column ARRIVE_CHARGE_PARA.CONNECTOR_MANUF
      is ''����װ�ó���''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column ARRIVE_CHARGE_PARA.TCU_TYPE
      is ''TCU�ͺ�''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column ARRIVE_CHARGE_PARA.TCU_SPECE
      is ''TCU���''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column ARRIVE_CHARGE_PARA.TCU_MANUF
      is ''TCU����''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column ARRIVE_CHARGE_PARA.AC_CONTA_TYPE
      is ''�����Ӵ����ͺ�''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column ARRIVE_CHARGE_PARA.AC_CONTA_SPECE
      is ''�����Ӵ������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column ARRIVE_CHARGE_PARA.AC_CONTA_MANUF
      is ''�����Ӵ�������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column ARRIVE_CHARGE_PARA.HIGHVOL_CONTA_TYPE
      is ''��ѹ�Ӵ����ͺ�''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column ARRIVE_CHARGE_PARA.HIGHVOL_CONTA_SPECE
      is ''��ѹ�Ӵ������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column ARRIVE_CHARGE_PARA.HIGHVOL_CONTA_MANUF
      is ''��ѹ�Ӵ�������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column ARRIVE_CHARGE_PARA.LEAK_PROTECT_TYPE
      is ''©�籣���ͺ�''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column ARRIVE_CHARGE_PARA.LEAK_PROTECT_SPECE
      is ''©�籣�����''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column ARRIVE_CHARGE_PARA.LEAK_PROTECT_MANUF
      is ''©�籣������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column ARRIVE_CHARGE_PARA.FUSE_TYPE
      is ''�۶����ͺ�''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column ARRIVE_CHARGE_PARA.FUSE_SPECE
      is ''�۶������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column ARRIVE_CHARGE_PARA.FUSE_MANUF
      is ''�۶�������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column ARRIVE_CHARGE_PARA.AUXIL_POWER_TYPE
      is ''������Դ�ͺ�''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column ARRIVE_CHARGE_PARA.AUXIL_POWER_SPECE
      is ''������Դ���''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column ARRIVE_CHARGE_PARA.AUXIL_POWER_MANUF
      is ''������Դ����''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column ARRIVE_CHARGE_PARA.SCREEN_TYPE
      is ''��Ļ�ͺ�''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column ARRIVE_CHARGE_PARA.SCREEN_SPECE
      is ''��Ļ���''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column ARRIVE_CHARGE_PARA.SCREEN_MANUF
      is ''��Ļ����''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column ARRIVE_CHARGE_PARA.CARD_READER_TYPE
      is ''�������ͺ�''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column ARRIVE_CHARGE_PARA.CARD_READER_SPECE
      is ''���������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column ARRIVE_CHARGE_PARA.CARD_READER_MANUF
      is ''����������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column ARRIVE_CHARGE_PARA.ARREST_TYPE
      is ''�������ͺ�''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column ARRIVE_CHARGE_PARA.ARREST_SPECE
      is ''���������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column ARRIVE_CHARGE_PARA.ARREST_MANUF
      is ''����������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column ARRIVE_CHARGE_PARA.CIRCU_BREAK_TYPE
      is ''��·���ͺ�''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column ARRIVE_CHARGE_PARA.CIRCU_BREAK_SPECE
      is ''��·�����''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column ARRIVE_CHARGE_PARA.CIRCU_BREAK_MANUF
      is ''��·������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column ARRIVE_CHARGE_PARA.COOL_FAN_TYPE
      is ''ɢ�ȷ����ͺ�''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column ARRIVE_CHARGE_PARA.COOL_FAN_SPECE
      is ''ɢ�ȷ��ȹ��''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column ARRIVE_CHARGE_PARA.COOL_FAN_MANUF
      is ''ɢ�ȷ��ȳ���''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column ARRIVE_CHARGE_PARA.SOUND_TYPE
      is ''�����ͺ�''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column ARRIVE_CHARGE_PARA.SOUND_SPECE
      is ''������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column ARRIVE_CHARGE_PARA.SOUND_MANUF
      is ''���쳧��''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column ARRIVE_CHARGE_PARA.ANTENNA_4G_TYPE
      is ''4G�����ͺ�''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column ARRIVE_CHARGE_PARA.ANTENNA_4G_SPECE
      is ''4G���߹��''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column ARRIVE_CHARGE_PARA.ANTENNA_4G_MANUF
      is ''4G���߳���''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column ARRIVE_CHARGE_PARA.ANTENNA_GPS_TYPE
      is ''GPS�����ͺ�''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column ARRIVE_CHARGE_PARA.ANTENNA_GPS_SPECE
      is ''GPS���߹��''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column ARRIVE_CHARGE_PARA.ANTENNA_GPS_MANU
      is ''GPS���߳���''
    ';
END;
/
prompt
prompt ���ڴ����¼���Ϊ 8200000000017975 �Ľű�
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'METER_INFO' AND U.COLUMN_NAME='CHARG_BAR_CODE';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table METER_INFO add charg_bar_code VARCHAR2(32)
      ';
    ELSE
      dbms_output.put_line('�ű�����������Ϊ METER_INFO.charg_bar_code �Ѵ��ڡ�');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column METER_INFO.charg_bar_code
      is ''���׮�豸������''
    ';
END;
/
prompt
prompt ���ڴ����¼���Ϊ 8200000000017977 �Ľű�
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'IT_INFO' AND U.COLUMN_NAME='CHARG_BAR_CODE';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table IT_INFO add charg_bar_code VARCHAR2(32)
      ';
    ELSE
      dbms_output.put_line('�ű�����������Ϊ IT_INFO.charg_bar_code �Ѵ��ڡ�');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column IT_INFO.charg_bar_code
      is ''���׮�豸������''
    ';
END;
/
prompt
prompt ���ڴ����¼���Ϊ 8200000000017979 �Ľű�
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'ARRIVE_DET' AND U.COLUMN_NAME='BGN_METER_BAR_NO';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table ARRIVE_DET add bgn_meter_bar_no VARCHAR2(32)
      ';
    ELSE
      dbms_output.put_line('�ű�����������Ϊ ARRIVE_DET.bgn_meter_bar_no �Ѵ��ڡ�');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'ARRIVE_DET' AND U.COLUMN_NAME='END_METER_BAR_NO';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table ARRIVE_DET add end_meter_bar_no VARCHAR2(32)
      ';
    ELSE
      dbms_output.put_line('�ű�����������Ϊ ARRIVE_DET.end_meter_bar_no �Ѵ��ڡ�');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'ARRIVE_DET' AND U.COLUMN_NAME='BGN_SHUNT_BAR_NO';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table ARRIVE_DET add bgn_shunt_bar_no VARCHAR2(32)
      ';
    ELSE
      dbms_output.put_line('�ű�����������Ϊ ARRIVE_DET.bgn_shunt_bar_no �Ѵ��ڡ�');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'ARRIVE_DET' AND U.COLUMN_NAME='END_SHUNT_BAR_NO';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table ARRIVE_DET add end_shunt_bar_no VARCHAR2(32)
      ';
    ELSE
      dbms_output.put_line('�ű�����������Ϊ ARRIVE_DET.end_shunt_bar_no �Ѵ��ڡ�');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column ARRIVE_DET.bgn_meter_bar_no
      is ''���ܱ���ʼ����''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column ARRIVE_DET.end_meter_bar_no
      is ''���ܱ��������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column ARRIVE_DET.bgn_shunt_bar_no
      is ''��������ʼ����''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column ARRIVE_DET.end_shunt_bar_no
      is ''��������������''
    ';
END;
/
prompt
prompt ���ڴ����¼���Ϊ 8200000000018158 �Ľű�
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    EXECUTE IMMEDIATE
    '
      comment on column DATA_SEND_REC.record_type
      is ''��¼���͡�001 ��������񣬳���⣬�������ϸ 002 Ӫ�������ʲ�����ͬ�� 003 Ӫ�������޸�ͬ�� 004 ������Ϣͬ�� 010 ҵ��������¼��Ϣͬ�� 011 ����������Ϣͬ�� 012 ״̬�������ͬ�� 013 ��ӡ״̬��Ϣͬ�� 014 ��ӡ���Ͻ����ϸͬ�� 015 �����嵥ͬ�� 016 �豸��װ��Ϣͬ�������� 800 �ֲ�ʽ��װ�豸����λ�����Ϣͬ�� 810 �ƻ���ر����Ϣͬ��)''
    ';
END;
/
prompt
prompt ���ڴ����¼���Ϊ 8200000000018474 �Ľű�
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'ARRIVE' AND U.COLUMN_NAME='IS_BOUND';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table ARRIVE add is_bound VARCHAR2(8)
      ';
    ELSE
      dbms_output.put_line('�ű�����������Ϊ ARRIVE.is_bound �Ѵ��ڡ�');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column ARRIVE.is_bound
      is ''���׮���ΰ�״̬��1��/0��''
    ';
END;
/
prompt
prompt ���ڴ����¼���Ϊ 8200000000019515 �Ľű�
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'DIST_PLAN_DET' AND U.COLUMN_NAME='PLAN_NUM';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table DIST_PLAN_DET modify plan_num NUMBER(8)
      ';
    ELSE
      dbms_output.put_line('�ű�����������Ϊ DIST_PLAN_DET.PLAN_NUM �����ڡ�');
    END IF;
END;
/
prompt
prompt ���ڴ����¼���Ϊ 8200000000019517 �Ľű�
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'DIST_IO_INFO' AND U.COLUMN_NAME='IO_WH_NUM';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table DIST_IO_INFO modify io_wh_num NUMBER(8)
      ';
    ELSE
      dbms_output.put_line('�ű�����������Ϊ DIST_IO_INFO.IO_WH_NUM �����ڡ�');
    END IF;
END;
/
prompt
prompt ���ڴ����¼���Ϊ 8200000000019519 �Ľű�
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'DIST_RLST_INFO' AND U.COLUMN_NAME='DIST_NUM';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table DIST_RLST_INFO modify dist_num NUMBER(8)
      ';
    ELSE
      dbms_output.put_line('�ű�����������Ϊ DIST_RLST_INFO.DIST_NUM �����ڡ�');
    END IF;
END;
/
prompt
prompt ���ڴ����¼���Ϊ 8200000000019521 �Ľű�
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'DIST_RLST_INFO' AND U.COLUMN_NAME='RLST_NUM';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table DIST_RLST_INFO modify rlst_num NUMBER(8)
      ';
    ELSE
      dbms_output.put_line('�ű�����������Ϊ DIST_RLST_INFO.RLST_NUM �����ڡ�');
    END IF;
END;
/
prompt
prompt ���ڴ����¼���Ϊ 8200000000019585 �Ľű�
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Tables U WHERE U.TABLE_NAME = 'EQUIP_REPICK_EREPRICE_INFO';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
        create table EQUIP_REPICK_EREPRICE_INFO
        (
        oper_id NUMBER(16),
        app_no VARCHAR2(16),
        org_no VARCHAR2(16),
        meter_id NUMBER(16),
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
      dbms_output.put_line('�ű�����������Ϊ EQUIP_REPICK_EREPRICE_INFO �Ѵ��ڡ�');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table EQUIP_REPICK_EREPRICE_INFO
      is ''�����Ϣ��''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column EQUIP_REPICK_EREPRICE_INFO.OPER_ID
      is ''������ʶ''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column EQUIP_REPICK_EREPRICE_INFO.APP_NO
      is ''���̱��''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column EQUIP_REPICK_EREPRICE_INFO.ORG_NO
      is ''���絥λ''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column EQUIP_REPICK_EREPRICE_INFO.METER_ID
      is ''���ܱ��ʶ''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column EQUIP_REPICK_EREPRICE_INFO.REMAIN_AMOUNT
      is ''��ǰʣ����(Ԫ)''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column EQUIP_REPICK_EREPRICE_INFO.PURCHASE_NUM
      is ''�������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column EQUIP_REPICK_EREPRICE_INFO.FEE_NUM
      is ''������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column EQUIP_REPICK_EREPRICE_INFO.KU_FEE_JIAN
      is ''��ˮ�ڷ��ʵ�ۼ�''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column EQUIP_REPICK_EREPRICE_INFO.KU_FEE_FENG
      is ''��ˮ�ڷ��ʵ�۷�''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column EQUIP_REPICK_EREPRICE_INFO.KU_FEE_PING
      is ''��ˮ�ڷ��ʵ��ƽ''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column EQUIP_REPICK_EREPRICE_INFO.KU_FEE_GU
      is ''��ˮ�ڷ��ʵ�۹�''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column EQUIP_REPICK_EREPRICE_INFO.FENG_FEE_JIAN
      is ''��ˮ�ڷ��ʵ�ۼ�''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column EQUIP_REPICK_EREPRICE_INFO.FENG_FEE_FENG
      is ''��ˮ�ڷ��ʵ�۷�''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column EQUIP_REPICK_EREPRICE_INFO.FENG_FEE_PING
      is ''��ˮ�ڷ��ʵ��ƽ''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column EQUIP_REPICK_EREPRICE_INFO.FENG_FEE_GU
      is ''��ˮ�ڷ��ʵ�۹�''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column EQUIP_REPICK_EREPRICE_INFO.PING_FEE_JIAN
      is ''ƽˮ�ڷ��ʵ�ۼ�''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column EQUIP_REPICK_EREPRICE_INFO.PING_FEE_FENG
      is ''ƽˮ�ڷ��ʵ�۷�''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column EQUIP_REPICK_EREPRICE_INFO.PING_FEE_PING
      is ''ƽˮ�ڷ��ʵ��ƽ''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column EQUIP_REPICK_EREPRICE_INFO.PING_FEE_GU
      is ''ƽˮ�ڷ��ʵ�۹�''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column EQUIP_REPICK_EREPRICE_INFO.LADDER_NUM
      is ''������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column EQUIP_REPICK_EREPRICE_INFO.FIR_LADDER_VALUE1
      is ''��ǰ����ֵ1''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column EQUIP_REPICK_EREPRICE_INFO.FIR_LADDER_VALUE2
      is ''��ǰ����ֵ2''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column EQUIP_REPICK_EREPRICE_INFO.FIR_LADDER_VALUE3
      is ''��ǰ����ֵ3''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column EQUIP_REPICK_EREPRICE_INFO.FIR_LADDER_PRICE1
      is ''��ǰ���ݵ��1''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column EQUIP_REPICK_EREPRICE_INFO.FIR_LADDER_PRICE2
      is ''��ǰ���ݵ��2''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column EQUIP_REPICK_EREPRICE_INFO.FIR_LADDER_PRICE3
      is ''��ǰ���ݵ��3''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column EQUIP_REPICK_EREPRICE_INFO.FIR_LADDER_PRICE4
      is ''��ǰ���ݵ��4''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column EQUIP_REPICK_EREPRICE_INFO.WRITE_TIME
      is ''д��ʱ��''
    ';
END;
/
prompt
prompt ���ڴ����¼���Ϊ 8200000000019587 �Ľű�
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Tables U WHERE U.TABLE_NAME = 'EQUIP_REPICK_IRREAD_INFO';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
        create table EQUIP_REPICK_IRREAD_INFO
        (
        oper_id NUMBER(16),
        app_no VARCHAR2(16),
        data_date DATE,
        org_no VARCHAR2(16),
        day_num NUMBER(5),
        meter_id NUMBER(16),
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
      dbms_output.put_line('�ű�����������Ϊ EQUIP_REPICK_IRREAD_INFO �Ѵ��ڡ�');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table EQUIP_REPICK_IRREAD_INFO
      is ''ʾ����Ϣ��''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column EQUIP_REPICK_IRREAD_INFO.OPER_ID
      is ''������ʶ''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column EQUIP_REPICK_IRREAD_INFO.APP_NO
      is ''���̱��''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column EQUIP_REPICK_IRREAD_INFO.DATA_DATE
      is ''�ɼ�����,��ȷ����''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column EQUIP_REPICK_IRREAD_INFO.ORG_NO
      is ''���絥λ''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column EQUIP_REPICK_IRREAD_INFO.DAY_NUM
      is ''���ں�''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column EQUIP_REPICK_IRREAD_INFO.METER_ID
      is ''���ܱ��ʶ''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column EQUIP_REPICK_IRREAD_INFO.PAP_R
      is ''�����й��ܵ���ʾֵ''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column EQUIP_REPICK_IRREAD_INFO.PAP_R1
      is ''�����й������ʾֵ''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column EQUIP_REPICK_IRREAD_INFO.PAP_R2
      is ''�����й������ʾֵ''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column EQUIP_REPICK_IRREAD_INFO.PAP_R3
      is ''�����й�ƽ����ʾֵ''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column EQUIP_REPICK_IRREAD_INFO.PAP_R4
      is ''�����й��ȵ���ʾֵ''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column EQUIP_REPICK_IRREAD_INFO.PRP_R
      is ''�����޹��ܵ���ʾֵ''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column EQUIP_REPICK_IRREAD_INFO.PRP_R1
      is ''�����޹������ʾֵ''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column EQUIP_REPICK_IRREAD_INFO.PRP_R2
      is ''�����޹������ʾֵ''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column EQUIP_REPICK_IRREAD_INFO.PRP_R3
      is ''�����޹�ƽ����ʾֵ''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column EQUIP_REPICK_IRREAD_INFO.PRP_R4
      is ''�����޹��ȵ���ʾֵ''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column EQUIP_REPICK_IRREAD_INFO.RAP_R
      is ''�����й�������ʾֵ''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column EQUIP_REPICK_IRREAD_INFO.RAP_R1
      is ''�����й�������ʾֵ''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column EQUIP_REPICK_IRREAD_INFO.RAP_R2
      is ''�����й�������ʾֵ''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column EQUIP_REPICK_IRREAD_INFO.RAP_R3
      is ''�����й�ƽ����ʾֵ''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column EQUIP_REPICK_IRREAD_INFO.RAP_R4
      is ''�����й�������ʾֵ''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column EQUIP_REPICK_IRREAD_INFO.RRP_R
      is ''�����޹�����ʾֵ''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column EQUIP_REPICK_IRREAD_INFO.RRP_R1
      is ''�����޹�����ʾֵ''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column EQUIP_REPICK_IRREAD_INFO.RRP_R2
      is ''�����޹�����ʾֵ''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column EQUIP_REPICK_IRREAD_INFO.RRP_R3
      is ''�����޹�ƽ��ʾֵ''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column EQUIP_REPICK_IRREAD_INFO.RRP_R4
      is ''�����޹�����ʾֵ''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column EQUIP_REPICK_IRREAD_INFO.PAP_DEMAND
      is ''�����й����������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column EQUIP_REPICK_IRREAD_INFO.WRITE_TIME
      is ''д��ʱ��''
    ';
END;
/
prompt
prompt ���ڴ����¼���Ϊ 8200000000019624 �Ľű�
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'IO_WH' AND U.COLUMN_NAME='IO_WH_NUM';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table IO_WH modify io_wh_num NUMBER(8)
      ';
    ELSE
      dbms_output.put_line('�ű�����������Ϊ IO_WH.IO_WH_NUM �����ڡ�');
    END IF;
END;
/
prompt
prompt ���ڴ����¼���Ϊ 8200000000019787 �Ľű�
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'D_DETECT_ASSIGN' AND U.COLUMN_NAME='ARRANGE_QTY';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table D_DETECT_ASSIGN modify arrange_qty NUMBER(8)
      ';
    ELSE
      dbms_output.put_line('�ű�����������Ϊ D_DETECT_ASSIGN.ARRANGE_QTY �����ڡ�');
    END IF;
END;
/
prompt
prompt ���ڴ����¼���Ϊ 8200000000019904 �Ľű�
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
prompt ���ڴ����¼���Ϊ 8200000000020042 �Ľű�
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'METERING_CABINET' AND U.COLUMN_NAME='RCV_ID';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table METERING_CABINET add rcv_id NUMBER(16)
      ';
    ELSE
      dbms_output.put_line('�ű�����������Ϊ METERING_CABINET.rcv_id �Ѵ��ڡ�');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column METERING_CABINET.rcv_id
      is ''�������α�ʶ''
    ';
END;
/


----------------------------------
---ʧ׼����
---------------------------------

prompt
prompt ���ڴ����¼���Ϊ 8200000000016498 �Ľű�
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
        oper_id NUMBER(16),
        batch_id NUMBER(16),
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
      comment on table SR_RUNNING_BATCH
      is ''�������α�''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_RUNNING_BATCH.OPER_ID
      is ''��ˮ���''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_RUNNING_BATCH.BATCH_ID
      is ''��������ID''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_RUNNING_BATCH.BATCH_NO
      is ''�������κ�''
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
      comment on column SR_RUNNING_BATCH.MADE_YEAR
      is ''�������''
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
      is ''����''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_RUNNING_BATCH.LAST_SAMPLE_RLST
      is ''���һ�γ����''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_RUNNING_BATCH.LAST_EVALUATE_RLST
      is ''���һ�����۽��''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_RUNNING_BATCH.BATCH_STATUS
      is ''����״̬��01���������� ��02����������''
    ';      
    ELSE
      dbms_output.put_line('�ű�����������Ϊ SR_RUNNING_BATCH �Ѵ��ڡ�');
    END IF;

END;
/
prompt
prompt ���ڴ����¼���Ϊ 8200000000016500 �Ľű�
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
        oper_id NUMBER(16),
        batch_id NUMBER(16),
        batch_no NUMBER(16),
        equip_id NUMBER(16),
        bar_code VARCHAR2(32),
        equip_code VARCHAR2(32),
        model_code VARCHAR2(8),
        wiring_mode VARCHAR2(8),
        volt_code VARCHAR2(8),
        rated_current VARCHAR2(8),
        manufacturer VARCHAR2(16),
        comm_mode VARCHAR2(8),
        chip_manufacturer VARCHAR2(8 ),
        spec_code VARCHAR2(8),
        mp_no VARCHAR2(16),
        mp_name VARCHAR2(256),
        cons_addr VARCHAR2(256),
        tg_no VARCHAR2(16),
        tg_name VARCHAR2(256),
        cons_no VARCHAR2(16),
        cons_name VARCHAR2(256),
        org_no VARCHAR2(16)
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
      comment on table SR_RUNNING_BATCH_DET
      is ''����������ϸ��''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_RUNNING_BATCH_DET.OPER_ID
      is ''��ˮ���''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_RUNNING_BATCH_DET.BATCH_ID
      is ''��������ID''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_RUNNING_BATCH_DET.BATCH_NO
      is ''�������κ�''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_RUNNING_BATCH_DET.EQUIP_ID
      is ''�豸ID''
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
      comment on column SR_RUNNING_BATCH_DET.MODEL_CODE
      is ''�ͺ�''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_RUNNING_BATCH_DET.WIRING_MODE
      is ''���߷�ʽ''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_RUNNING_BATCH_DET.VOLT_CODE
      is ''��ѹ''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_RUNNING_BATCH_DET.RATED_CURRENT
      is ''�궨����''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_RUNNING_BATCH_DET.MANUFACTURER
      is ''���쵥λ''
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
      comment on column SR_RUNNING_BATCH_DET.MP_NO
      is ''��������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_RUNNING_BATCH_DET.MP_NAME
      is ''����������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_RUNNING_BATCH_DET.CONS_ADDR
      is ''�û���ַ''
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
      comment on column SR_RUNNING_BATCH_DET.CONS_NO
      is ''�û����''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_RUNNING_BATCH_DET.CONS_NAME
      is ''�û�����''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_RUNNING_BATCH_DET.ORG_NO
      is ''���絥λ''
    ';      
    ELSE
      dbms_output.put_line('�ű�����������Ϊ SR_RUNNING_BATCH_DET �Ѵ��ڡ�');
    END IF;

END;
/


prompt
prompt ���ڴ����¼���Ϊ 8200000000020894 �Ľű�
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Tables U WHERE U.TABLE_NAME = 'EQUIP_DETECT_EREPRICE_INFO';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
        create table EQUIP_DETECT_EREPRICE_INFO
        (
        oper_id NUMBER(16),
        read_id NUMBER(16),
        meter_id NUMBER(16),
        arrive_batch_no VARCHAR2(32),
        bar_code VARCHAR2(32),
        detect_task_no VARCHAR2(32),
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
        fir_ladder_value4 NUMBER(10,4),
        fir_ladder_price1 NUMBER(10,4),
        fir_ladder_price2 NUMBER(10,4),
        fir_ladder_price3 NUMBER(10,4),
        fir_ladder_price4 NUMBER(10,4)
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
      dbms_output.put_line('�ű�����������Ϊ EQUIP_DETECT_EREPRICE_INFO �Ѵ��ڡ�');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table EQUIP_DETECT_EREPRICE_INFO
      is ''�����Ϣ��,
      ��Ҫ���ڱ��汾�طѿ����ܵ��ܱ��ڼ춨���ڵĵ����ϸ��Ϣ''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column EQUIP_DETECT_EREPRICE_INFO.OPER_ID
      is ''������ʶ''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column EQUIP_DETECT_EREPRICE_INFO.READ_ID
      is ''��¼��ʶ''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column EQUIP_DETECT_EREPRICE_INFO.METER_ID
      is ''����ʶ''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column EQUIP_DETECT_EREPRICE_INFO.ARRIVE_BATCH_NO
      is ''�������κ�''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column EQUIP_DETECT_EREPRICE_INFO.BAR_CODE
      is ''�������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column EQUIP_DETECT_EREPRICE_INFO.DETECT_TASK_NO
      is ''�춨������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column EQUIP_DETECT_EREPRICE_INFO.FEE_NUM
      is ''������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column EQUIP_DETECT_EREPRICE_INFO.KU_FEE_JIAN
      is ''��ˮ�ڷ��ʵ�ۼ�''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column EQUIP_DETECT_EREPRICE_INFO.KU_FEE_FENG
      is ''��ˮ�ڷ��ʵ�۷�''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column EQUIP_DETECT_EREPRICE_INFO.KU_FEE_PING
      is ''��ˮ�ڷ��ʵ��ƽ''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column EQUIP_DETECT_EREPRICE_INFO.KU_FEE_GU
      is ''��ˮ�ڷ��ʵ�۹�''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column EQUIP_DETECT_EREPRICE_INFO.FENG_FEE_JIAN
      is ''��ˮ�ڷ��ʵ�ۼ�''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column EQUIP_DETECT_EREPRICE_INFO.FENG_FEE_FENG
      is ''��ˮ�ڷ��ʵ�۷�''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column EQUIP_DETECT_EREPRICE_INFO.FENG_FEE_PING
      is ''��ˮ�ڷ��ʵ��ƽ''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column EQUIP_DETECT_EREPRICE_INFO.FENG_FEE_GU
      is ''��ˮ�ڷ��ʵ�۹�''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column EQUIP_DETECT_EREPRICE_INFO.PING_FEE_JIAN
      is ''ƽˮ�ڷ��ʵ�ۼ�''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column EQUIP_DETECT_EREPRICE_INFO.PING_FEE_FENG
      is ''ƽˮ�ڷ��ʵ�۷�''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column EQUIP_DETECT_EREPRICE_INFO.PING_FEE_PING
      is ''ƽˮ�ڷ��ʵ��ƽ''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column EQUIP_DETECT_EREPRICE_INFO.PING_FEE_GU
      is ''ƽˮ�ڷ��ʵ�۹�''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column EQUIP_DETECT_EREPRICE_INFO.LADDER_NUM
      is ''������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column EQUIP_DETECT_EREPRICE_INFO.FIR_LADDER_VALUE1
      is ''��ǰ����ֵ1''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column EQUIP_DETECT_EREPRICE_INFO.FIR_LADDER_VALUE2
      is ''��ǰ����ֵ2''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column EQUIP_DETECT_EREPRICE_INFO.FIR_LADDER_VALUE3
      is ''��ǰ����ֵ3''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column EQUIP_DETECT_EREPRICE_INFO.FIR_LADDER_VALUE4
      is ''��ǰ����ֵ4''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column EQUIP_DETECT_EREPRICE_INFO.FIR_LADDER_PRICE1
      is ''��ǰ���ݵ��1''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column EQUIP_DETECT_EREPRICE_INFO.FIR_LADDER_PRICE2
      is ''��ǰ���ݵ��2''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column EQUIP_DETECT_EREPRICE_INFO.FIR_LADDER_PRICE3
      is ''��ǰ���ݵ��3''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column EQUIP_DETECT_EREPRICE_INFO.FIR_LADDER_PRICE4
      is ''��ǰ���ݵ��4''
    ';
END;
/
prompt
prompt ���ڴ����¼���Ϊ 8200000000021047 �Ľű�
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'METERING_CABINET' AND U.COLUMN_NAME='MADE_NO';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table METERING_CABINET add made_no VARCHAR2(32)
      ';
    ELSE
      dbms_output.put_line('�ű�����������Ϊ METERING_CABINET.made_no �Ѵ��ڡ�');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'METERING_CABINET' AND U.COLUMN_NAME='MADE_DATE';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table METERING_CABINET add made_date DATE
      ';
    ELSE
      dbms_output.put_line('�ű�����������Ϊ METERING_CABINET.made_date �Ѵ��ڡ�');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column METERING_CABINET.made_no
      is ''�������''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column METERING_CABINET.made_date
      is ''��������''
    ';
END;
/
prompt
prompt ���ڴ����¼���Ϊ 8200000000021232 �Ľű�
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'EQUIP_INST_INFO' AND U.COLUMN_NAME='INST_DATE';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table EQUIP_INST_INFO add inst_date DATE
      ';
    ELSE
      dbms_output.put_line('�ű�����������Ϊ EQUIP_INST_INFO.inst_date �Ѵ��ڡ�');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'EQUIP_INST_INFO' AND U.COLUMN_NAME='RMV_DATE';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table EQUIP_INST_INFO add rmv_date DATE
      ';
    ELSE
      dbms_output.put_line('�ű�����������Ϊ EQUIP_INST_INFO.rmv_date �Ѵ��ڡ�');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column EQUIP_INST_INFO.inst_date
      is ''��װ����''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column EQUIP_INST_INFO.rmv_date
      is ''�������''
    ';
END;
/


prompt
prompt ���ڴ����¼���Ϊ 8200000000022446 �Ľű�
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'SEAL_LOAD_REC' AND U.COLUMN_NAME='WORK_TYPE_CODE';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table SEAL_LOAD_REC add work_type_code VARCHAR2(8)
      ';
    ELSE
      dbms_output.put_line('�ű�����������Ϊ SEAL_LOAD_REC.work_type_code �Ѵ��ڡ�');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'SEAL_LOAD_REC' AND U.COLUMN_NAME='SEAL_SERIAL';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table SEAL_LOAD_REC add seal_serial VARCHAR2(32)
      ';
    ELSE
      dbms_output.put_line('�ű�����������Ϊ SEAL_LOAD_REC.seal_serial �Ѵ��ڡ�');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'SEAL_LOAD_REC' AND U.COLUMN_NAME='CHECK_INFO';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table SEAL_LOAD_REC add check_info VARCHAR2(32)
      ';
    ELSE
      dbms_output.put_line('�ű�����������Ϊ SEAL_LOAD_REC.check_info �Ѵ��ڡ�');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'SEAL_LOAD_REC' AND U.COLUMN_NAME='RELEASE_INFO';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table SEAL_LOAD_REC add release_info VARCHAR2(32)
      ';
    ELSE
      dbms_output.put_line('�ű�����������Ϊ SEAL_LOAD_REC.release_info �Ѵ��ڡ�');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column SEAL_LOAD_REC.work_type_code
      is ''ҵ�����͡���װά�����ֳ����顢�õ����''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SEAL_LOAD_REC.seal_serial
      is ''���ӷ�ӡӦ�����к�''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SEAL_LOAD_REC.check_info
      is ''���ӷ�ӡУ������Ϣ''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SEAL_LOAD_REC.release_info
      is ''���ӷ�ӡ������Ϣ''
    ';
END;
/
prompt
prompt ���ڴ����¼���Ϊ 8200000000022531 �Ľű�
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
prompt ���ڴ����¼���Ϊ 8200000000022558 �Ľű�
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'METERING_CABINET' AND U.COLUMN_NAME='SORT_CODE';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table METERING_CABINET add sort_code VARCHAR2(8)
      ';
    ELSE
      dbms_output.put_line('�ű�����������Ϊ METERING_CABINET.sort_code �Ѵ��ڡ�');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column METERING_CABINET.sort_code
      is ''���(������ͼVW_MEAS_BOX_TYPE)''
    ';
END;
/


set feedback on
set define on
set serveroutput off
--------------------------------------------------

