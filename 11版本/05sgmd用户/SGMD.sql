--------------------------------------------------
set feedback off
set define off
set serveroutput on
--------------------------------------------------

prompt
prompt 正在处理纪录编号为 8200000000016381 的脚本
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
prompt 正在处理纪录编号为 8200000000016503 的脚本
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
      dbms_output.put_line('脚本已跳过，因为 DIST_TASK_INFO.is_active_dist 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column DIST_TASK_INFO.is_active_dist
      is ''是否主动配送，1：是，0：否。''
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000017945 的脚本
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
      dbms_output.put_line('脚本已跳过，因为 D_CHARGE_POINT 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table D_CHARGE_POINT
      is ''充电桩档案信息表''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_CHARGE_POINT.OPER_ID
      is ''操作标识''
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
      is ''充电桩类别''
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
      is ''订货合同ID''
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
      is ''最后一次检定日期''
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
      is ''输出最大功率（kW）''
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
      comment on column D_CHARGE_POINT.OUT_CURRENT
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
END;
/
prompt
prompt 正在处理纪录编号为 8200000000017949 的脚本
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
      dbms_output.put_line('脚本已跳过，因为 T_DETECT_CP_RSLT 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table T_DETECT_CP_RSLT
      is ''充电桩检定结论表''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_DETECT_CP_RSLT.OPER_ID
      is ''操作标识''
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
      is ''写入时间''
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000017971 的脚本
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
      dbms_output.put_line('脚本已跳过，因为 EQUIP_INST_INFO 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table EQUIP_INST_INFO
      is ''设备安装信息表''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column EQUIP_INST_INFO.OPER_ID
      is ''操作标识''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column EQUIP_INST_INFO.EQUIP_CATEG
      is ''设备类别''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column EQUIP_INST_INFO.BAR_CODE
      is ''设备条形码''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column EQUIP_INST_INFO.STATUS_CODE
      is ''设备状态''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column EQUIP_INST_INFO.ORG_NO
      is ''供电单位''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column EQUIP_INST_INFO.LONGITUDE
      is ''经度''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column EQUIP_INST_INFO.LATITUDE
      is ''纬度''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column EQUIP_INST_INFO.OPERATE_TYPE
      is ''操作类型''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column EQUIP_INST_INFO.OPERATE_DATE
      is ''操作日期''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column EQUIP_INST_INFO.OPERATE_NO
      is ''操作人员''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column EQUIP_INST_INFO.REMARK
      is ''备注''
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000017973 的脚本
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
      dbms_output.put_line('脚本已跳过，因为 ARRIVE_CHARGE_PARA 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table ARRIVE_CHARGE_PARA
      is ''充电桩到货参数表''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column ARRIVE_CHARGE_PARA.OPER_ID
      is ''操作标识''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column ARRIVE_CHARGE_PARA.RCV_ID
      is ''到货信息标识''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column ARRIVE_CHARGE_PARA.MANUFACTURER
      is ''生产厂家''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column ARRIVE_CHARGE_PARA.MADE_DATE
      is ''出厂日期''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column ARRIVE_CHARGE_PARA.LOT_NO
      is ''生产批次''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column ARRIVE_CHARGE_PARA.REMARK
      is ''备注''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column ARRIVE_CHARGE_PARA.EQIP_PRC
      is ''设备单价''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column ARRIVE_CHARGE_PARA.SORT_CODE
      is ''充电桩类别''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column ARRIVE_CHARGE_PARA.DEVI_TYPE
      is ''设备型号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column ARRIVE_CHARGE_PARA.DEVI_CATEG
      is ''机型''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column ARRIVE_CHARGE_PARA.OUT_MAX_POWER
      is ''输出额定功率（kW）''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column ARRIVE_CHARGE_PARA.IN_RATED_RV
      is ''输入额定电压（V）''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column ARRIVE_CHARGE_PARA.OUT_RATED_RV
      is ''输出额定电压（V）''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column ARRIVE_CHARGE_PARA.OUT_DOWN_RV
      is ''输出下限电压（V）''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column ARRIVE_CHARGE_PARA.OUT_UP_RV
      is ''输出上限电压（V）''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column ARRIVE_CHARGE_PARA.OUT_CURRENT
      is ''单充电口输出最大电流（A）''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column ARRIVE_CHARGE_PARA.CABLE_LENGTH
      is ''电缆长度''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column ARRIVE_CHARGE_PARA.IS_CONST_POWER
      is ''恒功率功能''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column ARRIVE_CHARGE_PARA.CHARGE_PORT_NUM
      is ''充电口数量''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column ARRIVE_CHARGE_PARA.IS_CTS
      is ''CTS报文功能''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column ARRIVE_CHARGE_PARA.IS_POWER_ASSIGN
      is ''动态功率分配功能''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column ARRIVE_CHARGE_PARA.CONNECT_MODE
      is ''连接模式''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column ARRIVE_CHARGE_PARA.CHARGE_CONTR_TYPE
      is ''充电控制器型号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column ARRIVE_CHARGE_PARA.CHARGE_MODULE_SPECE
      is ''充电模块规格''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column ARRIVE_CHARGE_PARA.CHARGE_MODULE_MANUF
      is ''充电模块厂家''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column ARRIVE_CHARGE_PARA.CONNECTOR_TYPE
      is ''连接装置型号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column ARRIVE_CHARGE_PARA.CONNECTOR_SPECE
      is ''连接装置规格''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column ARRIVE_CHARGE_PARA.CONNECTOR_MANUF
      is ''连接装置厂家''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column ARRIVE_CHARGE_PARA.TCU_TYPE
      is ''TCU型号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column ARRIVE_CHARGE_PARA.TCU_SPECE
      is ''TCU规格''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column ARRIVE_CHARGE_PARA.TCU_MANUF
      is ''TCU厂家''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column ARRIVE_CHARGE_PARA.AC_CONTA_TYPE
      is ''交流接触器型号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column ARRIVE_CHARGE_PARA.AC_CONTA_SPECE
      is ''交流接触器规格''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column ARRIVE_CHARGE_PARA.AC_CONTA_MANUF
      is ''交流接触器厂家''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column ARRIVE_CHARGE_PARA.HIGHVOL_CONTA_TYPE
      is ''高压接触器型号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column ARRIVE_CHARGE_PARA.HIGHVOL_CONTA_SPECE
      is ''高压接触器规格''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column ARRIVE_CHARGE_PARA.HIGHVOL_CONTA_MANUF
      is ''高压接触器厂家''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column ARRIVE_CHARGE_PARA.LEAK_PROTECT_TYPE
      is ''漏电保护型号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column ARRIVE_CHARGE_PARA.LEAK_PROTECT_SPECE
      is ''漏电保护规格''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column ARRIVE_CHARGE_PARA.LEAK_PROTECT_MANUF
      is ''漏电保护厂家''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column ARRIVE_CHARGE_PARA.FUSE_TYPE
      is ''熔断器型号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column ARRIVE_CHARGE_PARA.FUSE_SPECE
      is ''熔断器规格''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column ARRIVE_CHARGE_PARA.FUSE_MANUF
      is ''熔断器厂家''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column ARRIVE_CHARGE_PARA.AUXIL_POWER_TYPE
      is ''辅助电源型号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column ARRIVE_CHARGE_PARA.AUXIL_POWER_SPECE
      is ''辅助电源规格''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column ARRIVE_CHARGE_PARA.AUXIL_POWER_MANUF
      is ''辅助电源厂家''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column ARRIVE_CHARGE_PARA.SCREEN_TYPE
      is ''屏幕型号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column ARRIVE_CHARGE_PARA.SCREEN_SPECE
      is ''屏幕规格''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column ARRIVE_CHARGE_PARA.SCREEN_MANUF
      is ''屏幕厂家''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column ARRIVE_CHARGE_PARA.CARD_READER_TYPE
      is ''读卡器型号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column ARRIVE_CHARGE_PARA.CARD_READER_SPECE
      is ''读卡器规格''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column ARRIVE_CHARGE_PARA.CARD_READER_MANUF
      is ''读卡器厂家''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column ARRIVE_CHARGE_PARA.ARREST_TYPE
      is ''避雷器型号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column ARRIVE_CHARGE_PARA.ARREST_SPECE
      is ''避雷器规格''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column ARRIVE_CHARGE_PARA.ARREST_MANUF
      is ''避雷器厂家''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column ARRIVE_CHARGE_PARA.CIRCU_BREAK_TYPE
      is ''断路器型号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column ARRIVE_CHARGE_PARA.CIRCU_BREAK_SPECE
      is ''断路器规格''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column ARRIVE_CHARGE_PARA.CIRCU_BREAK_MANUF
      is ''断路器厂家''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column ARRIVE_CHARGE_PARA.COOL_FAN_TYPE
      is ''散热风扇型号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column ARRIVE_CHARGE_PARA.COOL_FAN_SPECE
      is ''散热风扇规格''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column ARRIVE_CHARGE_PARA.COOL_FAN_MANUF
      is ''散热风扇厂家''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column ARRIVE_CHARGE_PARA.SOUND_TYPE
      is ''音响型号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column ARRIVE_CHARGE_PARA.SOUND_SPECE
      is ''音响规格''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column ARRIVE_CHARGE_PARA.SOUND_MANUF
      is ''音响厂家''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column ARRIVE_CHARGE_PARA.ANTENNA_4G_TYPE
      is ''4G天线型号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column ARRIVE_CHARGE_PARA.ANTENNA_4G_SPECE
      is ''4G天线规格''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column ARRIVE_CHARGE_PARA.ANTENNA_4G_MANUF
      is ''4G天线厂家''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column ARRIVE_CHARGE_PARA.ANTENNA_GPS_TYPE
      is ''GPS天线型号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column ARRIVE_CHARGE_PARA.ANTENNA_GPS_SPECE
      is ''GPS天线规格''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column ARRIVE_CHARGE_PARA.ANTENNA_GPS_MANU
      is ''GPS天线厂家''
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000017975 的脚本
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
      dbms_output.put_line('脚本已跳过，因为 METER_INFO.charg_bar_code 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column METER_INFO.charg_bar_code
      is ''充电桩设备条形码''
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000017977 的脚本
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
      dbms_output.put_line('脚本已跳过，因为 IT_INFO.charg_bar_code 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column IT_INFO.charg_bar_code
      is ''充电桩设备条形码''
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000017979 的脚本
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
      dbms_output.put_line('脚本已跳过，因为 ARRIVE_DET.bgn_meter_bar_no 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'ARRIVE_DET' AND U.COLUMN_NAME='END_METER_BAR_NO';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table ARRIVE_DET add end_meter_bar_no VARCHAR2(32)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 ARRIVE_DET.end_meter_bar_no 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'ARRIVE_DET' AND U.COLUMN_NAME='BGN_SHUNT_BAR_NO';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table ARRIVE_DET add bgn_shunt_bar_no VARCHAR2(32)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 ARRIVE_DET.bgn_shunt_bar_no 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'ARRIVE_DET' AND U.COLUMN_NAME='END_SHUNT_BAR_NO';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table ARRIVE_DET add end_shunt_bar_no VARCHAR2(32)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 ARRIVE_DET.end_shunt_bar_no 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column ARRIVE_DET.bgn_meter_bar_no
      is ''电能表起始条码''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column ARRIVE_DET.end_meter_bar_no
      is ''电能表结束条码''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column ARRIVE_DET.bgn_shunt_bar_no
      is ''分流器起始条码''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column ARRIVE_DET.end_shunt_bar_no
      is ''分流器结束条码''
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000018158 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    EXECUTE IMMEDIATE
    '
      comment on column DATA_SEND_REC.record_type
      is ''记录类型。001 出入库任务，出入库，出入库明细 002 营销建档资产档案同步 003 营销档案修改同步 004 故障信息同步 010 业扩工单记录信息同步 011 订单评价信息同步 012 状态检验策略同步 013 封印状态信息同步 014 封印报废结果明细同步 015 返修清单同步 016 设备安装信息同步（江苏 800 分布式新装设备管理单位变更信息同步 810 计划拆回表计信息同步)''
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000018474 的脚本
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
      dbms_output.put_line('脚本已跳过，因为 ARRIVE.is_bound 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column ARRIVE.is_bound
      is ''充电桩批次绑定状态。1是/0否''
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000019515 的脚本
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
      dbms_output.put_line('脚本已跳过，因为 DIST_PLAN_DET.PLAN_NUM 不存在。');
    END IF;
END;
/
prompt
prompt 正在处理纪录编号为 8200000000019517 的脚本
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
      dbms_output.put_line('脚本已跳过，因为 DIST_IO_INFO.IO_WH_NUM 不存在。');
    END IF;
END;
/
prompt
prompt 正在处理纪录编号为 8200000000019519 的脚本
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
      dbms_output.put_line('脚本已跳过，因为 DIST_RLST_INFO.DIST_NUM 不存在。');
    END IF;
END;
/
prompt
prompt 正在处理纪录编号为 8200000000019521 的脚本
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
      dbms_output.put_line('脚本已跳过，因为 DIST_RLST_INFO.RLST_NUM 不存在。');
    END IF;
END;
/
prompt
prompt 正在处理纪录编号为 8200000000019585 的脚本
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
      dbms_output.put_line('脚本已跳过，因为 EQUIP_REPICK_EREPRICE_INFO 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table EQUIP_REPICK_EREPRICE_INFO
      is ''电价信息表''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column EQUIP_REPICK_EREPRICE_INFO.OPER_ID
      is ''操作标识''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column EQUIP_REPICK_EREPRICE_INFO.APP_NO
      is ''流程编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column EQUIP_REPICK_EREPRICE_INFO.ORG_NO
      is ''供电单位''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column EQUIP_REPICK_EREPRICE_INFO.METER_ID
      is ''电能表标识''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column EQUIP_REPICK_EREPRICE_INFO.REMAIN_AMOUNT
      is ''当前剩余金额(元)''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column EQUIP_REPICK_EREPRICE_INFO.PURCHASE_NUM
      is ''购电次数''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column EQUIP_REPICK_EREPRICE_INFO.FEE_NUM
      is ''费率数''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column EQUIP_REPICK_EREPRICE_INFO.KU_FEE_JIAN
      is ''枯水期费率电价尖''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column EQUIP_REPICK_EREPRICE_INFO.KU_FEE_FENG
      is ''枯水期费率电价峰''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column EQUIP_REPICK_EREPRICE_INFO.KU_FEE_PING
      is ''枯水期费率电价平''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column EQUIP_REPICK_EREPRICE_INFO.KU_FEE_GU
      is ''枯水期费率电价谷''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column EQUIP_REPICK_EREPRICE_INFO.FENG_FEE_JIAN
      is ''丰水期费率电价尖''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column EQUIP_REPICK_EREPRICE_INFO.FENG_FEE_FENG
      is ''丰水期费率电价峰''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column EQUIP_REPICK_EREPRICE_INFO.FENG_FEE_PING
      is ''丰水期费率电价平''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column EQUIP_REPICK_EREPRICE_INFO.FENG_FEE_GU
      is ''丰水期费率电价谷''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column EQUIP_REPICK_EREPRICE_INFO.PING_FEE_JIAN
      is ''平水期费率电价尖''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column EQUIP_REPICK_EREPRICE_INFO.PING_FEE_FENG
      is ''平水期费率电价峰''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column EQUIP_REPICK_EREPRICE_INFO.PING_FEE_PING
      is ''平水期费率电价平''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column EQUIP_REPICK_EREPRICE_INFO.PING_FEE_GU
      is ''平水期费率电价谷''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column EQUIP_REPICK_EREPRICE_INFO.LADDER_NUM
      is ''阶梯数''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column EQUIP_REPICK_EREPRICE_INFO.FIR_LADDER_VALUE1
      is ''当前阶梯值1''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column EQUIP_REPICK_EREPRICE_INFO.FIR_LADDER_VALUE2
      is ''当前阶梯值2''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column EQUIP_REPICK_EREPRICE_INFO.FIR_LADDER_VALUE3
      is ''当前阶梯值3''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column EQUIP_REPICK_EREPRICE_INFO.FIR_LADDER_PRICE1
      is ''当前阶梯电价1''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column EQUIP_REPICK_EREPRICE_INFO.FIR_LADDER_PRICE2
      is ''当前阶梯电价2''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column EQUIP_REPICK_EREPRICE_INFO.FIR_LADDER_PRICE3
      is ''当前阶梯电价3''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column EQUIP_REPICK_EREPRICE_INFO.FIR_LADDER_PRICE4
      is ''当前阶梯电价4''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column EQUIP_REPICK_EREPRICE_INFO.WRITE_TIME
      is ''写入时间''
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000019587 的脚本
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
      dbms_output.put_line('脚本已跳过，因为 EQUIP_REPICK_IRREAD_INFO 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table EQUIP_REPICK_IRREAD_INFO
      is ''示数信息表''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column EQUIP_REPICK_IRREAD_INFO.OPER_ID
      is ''操作标识''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column EQUIP_REPICK_IRREAD_INFO.APP_NO
      is ''流程编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column EQUIP_REPICK_IRREAD_INFO.DATA_DATE
      is ''采集日期,精确到日''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column EQUIP_REPICK_IRREAD_INFO.ORG_NO
      is ''供电单位''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column EQUIP_REPICK_IRREAD_INFO.DAY_NUM
      is ''日期号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column EQUIP_REPICK_IRREAD_INFO.METER_ID
      is ''电能表标识''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column EQUIP_REPICK_IRREAD_INFO.PAP_R
      is ''正向有功总电能示值''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column EQUIP_REPICK_IRREAD_INFO.PAP_R1
      is ''正向有功尖电能示值''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column EQUIP_REPICK_IRREAD_INFO.PAP_R2
      is ''正向有功峰电能示值''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column EQUIP_REPICK_IRREAD_INFO.PAP_R3
      is ''正向有功平电能示值''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column EQUIP_REPICK_IRREAD_INFO.PAP_R4
      is ''正向有功谷电能示值''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column EQUIP_REPICK_IRREAD_INFO.PRP_R
      is ''正向无功总电能示值''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column EQUIP_REPICK_IRREAD_INFO.PRP_R1
      is ''正向无功尖电能示值''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column EQUIP_REPICK_IRREAD_INFO.PRP_R2
      is ''正向无功峰电能示值''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column EQUIP_REPICK_IRREAD_INFO.PRP_R3
      is ''正向无功平电能示值''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column EQUIP_REPICK_IRREAD_INFO.PRP_R4
      is ''正向无功谷电能示值''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column EQUIP_REPICK_IRREAD_INFO.RAP_R
      is ''反向有功总能量示值''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column EQUIP_REPICK_IRREAD_INFO.RAP_R1
      is ''反向有功尖能量示值''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column EQUIP_REPICK_IRREAD_INFO.RAP_R2
      is ''反向有功峰能量示值''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column EQUIP_REPICK_IRREAD_INFO.RAP_R3
      is ''反向有功平能量示值''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column EQUIP_REPICK_IRREAD_INFO.RAP_R4
      is ''反向有功谷能量示值''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column EQUIP_REPICK_IRREAD_INFO.RRP_R
      is ''反向无功总能示值''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column EQUIP_REPICK_IRREAD_INFO.RRP_R1
      is ''反向无功尖能示值''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column EQUIP_REPICK_IRREAD_INFO.RRP_R2
      is ''反向无功峰能示值''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column EQUIP_REPICK_IRREAD_INFO.RRP_R3
      is ''反向无功平能示值''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column EQUIP_REPICK_IRREAD_INFO.RRP_R4
      is ''反向无功谷能示值''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column EQUIP_REPICK_IRREAD_INFO.PAP_DEMAND
      is ''正向有功总最大需量''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column EQUIP_REPICK_IRREAD_INFO.WRITE_TIME
      is ''写入时间''
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000019624 的脚本
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
      dbms_output.put_line('脚本已跳过，因为 IO_WH.IO_WH_NUM 不存在。');
    END IF;
END;
/
prompt
prompt 正在处理纪录编号为 8200000000019787 的脚本
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
      dbms_output.put_line('脚本已跳过，因为 D_DETECT_ASSIGN.ARRANGE_QTY 不存在。');
    END IF;
END;
/
prompt
prompt 正在处理纪录编号为 8200000000019904 的脚本
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
prompt 正在处理纪录编号为 8200000000020042 的脚本
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
      dbms_output.put_line('脚本已跳过，因为 METERING_CABINET.rcv_id 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column METERING_CABINET.rcv_id
      is ''到货批次标识''
    ';
END;
/


----------------------------------
---失准更换
---------------------------------

prompt
prompt 正在处理纪录编号为 8200000000016498 的脚本
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
      is ''运行批次表''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_RUNNING_BATCH.OPER_ID
      is ''流水序号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_RUNNING_BATCH.BATCH_ID
      is ''运行批次ID''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_RUNNING_BATCH.BATCH_NO
      is ''运行批次号''
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
      comment on column SR_RUNNING_BATCH.MADE_YEAR
      is ''出厂年份''
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
      is ''数量''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_RUNNING_BATCH.LAST_SAMPLE_RLST
      is ''最近一次抽检结果''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_RUNNING_BATCH.LAST_EVALUATE_RLST
      is ''最近一次评价结果''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_RUNNING_BATCH.BATCH_STATUS
      is ''批次状态。01：正常运行 ，02：整批更换''
    ';      
    ELSE
      dbms_output.put_line('脚本已跳过，因为 SR_RUNNING_BATCH 已存在。');
    END IF;

END;
/
prompt
prompt 正在处理纪录编号为 8200000000016500 的脚本
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
      is ''运行批次明细表''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_RUNNING_BATCH_DET.OPER_ID
      is ''流水序号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_RUNNING_BATCH_DET.BATCH_ID
      is ''运行批次ID''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_RUNNING_BATCH_DET.BATCH_NO
      is ''运行批次号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_RUNNING_BATCH_DET.EQUIP_ID
      is ''设备ID''
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
      comment on column SR_RUNNING_BATCH_DET.MODEL_CODE
      is ''型号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_RUNNING_BATCH_DET.WIRING_MODE
      is ''接线方式''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_RUNNING_BATCH_DET.VOLT_CODE
      is ''电压''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_RUNNING_BATCH_DET.RATED_CURRENT
      is ''标定电流''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_RUNNING_BATCH_DET.MANUFACTURER
      is ''制造单位''
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
      comment on column SR_RUNNING_BATCH_DET.MP_NO
      is ''计量点编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_RUNNING_BATCH_DET.MP_NAME
      is ''计量点名称''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_RUNNING_BATCH_DET.CONS_ADDR
      is ''用户地址''
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
      comment on column SR_RUNNING_BATCH_DET.CONS_NO
      is ''用户编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_RUNNING_BATCH_DET.CONS_NAME
      is ''用户名称''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SR_RUNNING_BATCH_DET.ORG_NO
      is ''供电单位''
    ';      
    ELSE
      dbms_output.put_line('脚本已跳过，因为 SR_RUNNING_BATCH_DET 已存在。');
    END IF;

END;
/


prompt
prompt 正在处理纪录编号为 8200000000020894 的脚本
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
      dbms_output.put_line('脚本已跳过，因为 EQUIP_DETECT_EREPRICE_INFO 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table EQUIP_DETECT_EREPRICE_INFO
      is ''电价信息表,
      主要用于保存本地费控智能电能表在检定环节的电价明细信息''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column EQUIP_DETECT_EREPRICE_INFO.OPER_ID
      is ''操作标识''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column EQUIP_DETECT_EREPRICE_INFO.READ_ID
      is ''记录标识''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column EQUIP_DETECT_EREPRICE_INFO.METER_ID
      is ''电表标识''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column EQUIP_DETECT_EREPRICE_INFO.ARRIVE_BATCH_NO
      is ''到货批次号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column EQUIP_DETECT_EREPRICE_INFO.BAR_CODE
      is ''电表条码''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column EQUIP_DETECT_EREPRICE_INFO.DETECT_TASK_NO
      is ''检定任务编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column EQUIP_DETECT_EREPRICE_INFO.FEE_NUM
      is ''费率数''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column EQUIP_DETECT_EREPRICE_INFO.KU_FEE_JIAN
      is ''枯水期费率电价尖''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column EQUIP_DETECT_EREPRICE_INFO.KU_FEE_FENG
      is ''枯水期费率电价峰''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column EQUIP_DETECT_EREPRICE_INFO.KU_FEE_PING
      is ''枯水期费率电价平''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column EQUIP_DETECT_EREPRICE_INFO.KU_FEE_GU
      is ''枯水期费率电价谷''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column EQUIP_DETECT_EREPRICE_INFO.FENG_FEE_JIAN
      is ''丰水期费率电价尖''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column EQUIP_DETECT_EREPRICE_INFO.FENG_FEE_FENG
      is ''丰水期费率电价峰''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column EQUIP_DETECT_EREPRICE_INFO.FENG_FEE_PING
      is ''丰水期费率电价平''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column EQUIP_DETECT_EREPRICE_INFO.FENG_FEE_GU
      is ''丰水期费率电价谷''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column EQUIP_DETECT_EREPRICE_INFO.PING_FEE_JIAN
      is ''平水期费率电价尖''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column EQUIP_DETECT_EREPRICE_INFO.PING_FEE_FENG
      is ''平水期费率电价峰''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column EQUIP_DETECT_EREPRICE_INFO.PING_FEE_PING
      is ''平水期费率电价平''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column EQUIP_DETECT_EREPRICE_INFO.PING_FEE_GU
      is ''平水期费率电价谷''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column EQUIP_DETECT_EREPRICE_INFO.LADDER_NUM
      is ''阶梯数''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column EQUIP_DETECT_EREPRICE_INFO.FIR_LADDER_VALUE1
      is ''当前阶梯值1''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column EQUIP_DETECT_EREPRICE_INFO.FIR_LADDER_VALUE2
      is ''当前阶梯值2''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column EQUIP_DETECT_EREPRICE_INFO.FIR_LADDER_VALUE3
      is ''当前阶梯值3''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column EQUIP_DETECT_EREPRICE_INFO.FIR_LADDER_VALUE4
      is ''当前阶梯值4''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column EQUIP_DETECT_EREPRICE_INFO.FIR_LADDER_PRICE1
      is ''当前阶梯电价1''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column EQUIP_DETECT_EREPRICE_INFO.FIR_LADDER_PRICE2
      is ''当前阶梯电价2''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column EQUIP_DETECT_EREPRICE_INFO.FIR_LADDER_PRICE3
      is ''当前阶梯电价3''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column EQUIP_DETECT_EREPRICE_INFO.FIR_LADDER_PRICE4
      is ''当前阶梯电价4''
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000021047 的脚本
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
      dbms_output.put_line('脚本已跳过，因为 METERING_CABINET.made_no 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'METERING_CABINET' AND U.COLUMN_NAME='MADE_DATE';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table METERING_CABINET add made_date DATE
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 METERING_CABINET.made_date 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column METERING_CABINET.made_no
      is ''出厂编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column METERING_CABINET.made_date
      is ''出厂日期''
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000021232 的脚本
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
      dbms_output.put_line('脚本已跳过，因为 EQUIP_INST_INFO.inst_date 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'EQUIP_INST_INFO' AND U.COLUMN_NAME='RMV_DATE';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table EQUIP_INST_INFO add rmv_date DATE
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 EQUIP_INST_INFO.rmv_date 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column EQUIP_INST_INFO.inst_date
      is ''安装日期''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column EQUIP_INST_INFO.rmv_date
      is ''拆除日期''
    ';
END;
/


prompt
prompt 正在处理纪录编号为 8200000000022446 的脚本
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
      dbms_output.put_line('脚本已跳过，因为 SEAL_LOAD_REC.work_type_code 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'SEAL_LOAD_REC' AND U.COLUMN_NAME='SEAL_SERIAL';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table SEAL_LOAD_REC add seal_serial VARCHAR2(32)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 SEAL_LOAD_REC.seal_serial 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'SEAL_LOAD_REC' AND U.COLUMN_NAME='CHECK_INFO';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table SEAL_LOAD_REC add check_info VARCHAR2(32)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 SEAL_LOAD_REC.check_info 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'SEAL_LOAD_REC' AND U.COLUMN_NAME='RELEASE_INFO';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table SEAL_LOAD_REC add release_info VARCHAR2(32)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 SEAL_LOAD_REC.release_info 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column SEAL_LOAD_REC.work_type_code
      is ''业务类型。安装维护、现场检验、用电检查等''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SEAL_LOAD_REC.seal_serial
      is ''电子封印应用序列号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SEAL_LOAD_REC.check_info
      is ''电子封印校验区信息''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SEAL_LOAD_REC.release_info
      is ''电子封印发行信息''
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000022531 的脚本
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
prompt 正在处理纪录编号为 8200000000022558 的脚本
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
      dbms_output.put_line('脚本已跳过，因为 METERING_CABINET.sort_code 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column METERING_CABINET.sort_code
      is ''类别(参照视图VW_MEAS_BOX_TYPE)''
    ';
END;
/


set feedback on
set define on
set serveroutput off
--------------------------------------------------

