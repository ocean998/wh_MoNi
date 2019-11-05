--------------------------------------------------
set feedback off
set define off
set serveroutput on
--------------------------------------------------

prompt
prompt 正在处理纪录编号为 8200000000017218 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'M_D_LC_EQUIP' AND U.COLUMN_NAME='COMM_MODE';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table M_D_LC_EQUIP add comm_mode VARCHAR2(8)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 M_D_LC_EQUIP.comm_mode 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column M_D_LC_EQUIP.comm_mode
      is ''本地通讯方式，终端-->电表''
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000017983 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Tables U WHERE U.TABLE_NAME = 'M_D_CHARGE_POINT';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
        create table M_D_CHARGE_POINT
        (
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
        tablespace MPAC_M
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
      dbms_output.put_line('脚本已跳过，因为 M_D_CHARGE_POINT 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table M_D_CHARGE_POINT
      is ''充电桩档案表''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column M_D_CHARGE_POINT.DEVI_ID
      is ''档案标识''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column M_D_CHARGE_POINT.DEVI_NAME
      is ''设备名称''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column M_D_CHARGE_POINT.SORT_CODE
      is ''充电桩类别''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column M_D_CHARGE_POINT.DEVI_TYPE
      is ''设备型号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column M_D_CHARGE_POINT.BAR_CODE
      is ''设备条形码''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column M_D_CHARGE_POINT.EQUIP_CODE
      is ''设备码''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column M_D_CHARGE_POINT.ERP_BATCH_NO
      is ''物料号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column M_D_CHARGE_POINT.ASSET_NO
      is ''资产编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column M_D_CHARGE_POINT.LOT_NO
      is ''生产批次号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column M_D_CHARGE_POINT.ORG_NO
      is ''管理单位''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column M_D_CHARGE_POINT.ORG_TYPE
      is ''单位类别''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column M_D_CHARGE_POINT.PR_ORG
      is ''产权单位编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column M_D_CHARGE_POINT.BELONG_DEPT
      is ''当前所在单位''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column M_D_CHARGE_POINT.CONTRACT_ID
      is ''订货合同编号,用来与订货合同实体进行关联''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column M_D_CHARGE_POINT.CONTRACT_NO
      is ''合同编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column M_D_CHARGE_POINT.RCV_ID
      is ''到货接收的ID''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column M_D_CHARGE_POINT.ARRIVE_BATCH_NO
      is ''到货批次号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column M_D_CHARGE_POINT.AREA_CODE
      is ''地区代码''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column M_D_CHARGE_POINT.STORE_AREA_SORT
      is ''存放区分类''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column M_D_CHARGE_POINT.WH_ID
      is ''库房标识''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column M_D_CHARGE_POINT.WH_AREA_ID
      is ''库区标识''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column M_D_CHARGE_POINT.STORE_AREA_ID
      is ''存放区标识''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column M_D_CHARGE_POINT.STATUS_CODE
      is ''设备状态''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column M_D_CHARGE_POINT.LATEST_CHK_DATE
      is ''最后一次检定日期''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column M_D_CHARGE_POINT.CHECKER_NO
      is ''校验人员''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column M_D_CHARGE_POINT.INST_DATE
      is ''安装日期''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column M_D_CHARGE_POINT.RMV_DATE
      is ''拆除日期''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column M_D_CHARGE_POINT.MANUFACTURER
      is ''供货商''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column M_D_CHARGE_POINT.MADE_DATE
      is ''生产日期''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column M_D_CHARGE_POINT.MADE_NO
      is ''出厂编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column M_D_CHARGE_POINT.MADE_ADDR
      is ''厂址''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column M_D_CHARGE_POINT.DEVI_CATEG
      is ''机型''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column M_D_CHARGE_POINT.OUT_MAX_POWER
      is ''输出最大功率（kW）''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column M_D_CHARGE_POINT.IN_RATED_RV
      is ''输入额定电压（V）''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column M_D_CHARGE_POINT.OUT_RATED_RV
      is ''输出额定电压（V）''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column M_D_CHARGE_POINT.OUT_DOWN_RV
      is ''输出下限电压（V）''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column M_D_CHARGE_POINT.OUT_UP_RV
      is ''输出上限电压（V）''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column M_D_CHARGE_POINT.OUT_CURRENT
      is ''单充电口输出最大电流（A）''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column M_D_CHARGE_POINT.CABLE_LENGTH
      is ''电缆长度''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column M_D_CHARGE_POINT.IS_CONST_POWER
      is ''恒功率功能''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column M_D_CHARGE_POINT.CHARGE_PORT_NUM
      is ''充电口数量''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column M_D_CHARGE_POINT.IS_CTS
      is ''CTS报文功能''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column M_D_CHARGE_POINT.IS_POWER_ASSIGN
      is ''动态功率分配功能''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column M_D_CHARGE_POINT.CONNECT_MODE
      is ''连接模式''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column M_D_CHARGE_POINT.IS_BOUND
      is ''是否已绑定''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column M_D_CHARGE_POINT.DOC_CREATE_DATE
      is ''建档日期''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column M_D_CHARGE_POINT.DOC_CREATOR_NO
      is ''建档人''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column M_D_CHARGE_POINT.CHARGE_CONTR_TYPE
      is ''充电控制器型号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column M_D_CHARGE_POINT.CHARGE_CONTR_SPECE
      is ''充电控制器规格''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column M_D_CHARGE_POINT.CHARGE_CONTR_MANUF
      is ''充电控制器厂家''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column M_D_CHARGE_POINT.CHARGE_MODULE_TYPE
      is ''充电模块型号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column M_D_CHARGE_POINT.CHARGE_MODULE_SPECE
      is ''充电模块规格''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column M_D_CHARGE_POINT.CHARGE_MODULE_MANUF
      is ''充电模块厂家''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column M_D_CHARGE_POINT.CONNECTOR_TYPE
      is ''连接装置型号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column M_D_CHARGE_POINT.CONNECTOR_SPECE
      is ''连接装置规格''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column M_D_CHARGE_POINT.CONNECTOR_MANUF
      is ''连接装置厂家''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column M_D_CHARGE_POINT.TCU_TYPE
      is ''TCU型号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column M_D_CHARGE_POINT.TCU_SPECE
      is ''TCU规格''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column M_D_CHARGE_POINT.TCU_MANUF
      is ''TCU厂家''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column M_D_CHARGE_POINT.AC_CONTA_TYPE
      is ''交流接触器型号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column M_D_CHARGE_POINT.AC_CONTA_SPECE
      is ''交流接触器规格''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column M_D_CHARGE_POINT.AC_CONTA_MANUF
      is ''交流接触器厂家''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column M_D_CHARGE_POINT.HIGHVOL_CONTA_TYPE
      is ''高压接触器型号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column M_D_CHARGE_POINT.HIGHVOL_CONTA_SPECE
      is ''高压接触器规格''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column M_D_CHARGE_POINT.HIGHVOL_CONTA_MANUF
      is ''高压接触器厂家''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column M_D_CHARGE_POINT.LEAK_PROTECT_TYPE
      is ''漏电保护型号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column M_D_CHARGE_POINT.LEAK_PROTECT_SPECE
      is ''漏电保护规格''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column M_D_CHARGE_POINT.LEAK_PROTECT_MANUF
      is ''漏电保护厂家''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column M_D_CHARGE_POINT.FUSE_TYPE
      is ''熔断器型号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column M_D_CHARGE_POINT.FUSE_SPECE
      is ''熔断器规格''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column M_D_CHARGE_POINT.FUSE_MANUF
      is ''熔断器厂家''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column M_D_CHARGE_POINT.AUXIL_POWER_TYPE
      is ''辅助电源型号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column M_D_CHARGE_POINT.AUXIL_POWER_SPECE
      is ''辅助电源规格''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column M_D_CHARGE_POINT.AUXIL_POWER_MANUF
      is ''辅助电源厂家''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column M_D_CHARGE_POINT.SCREEN_TYPE
      is ''屏幕型号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column M_D_CHARGE_POINT.SCREEN_SPECE
      is ''屏幕规格''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column M_D_CHARGE_POINT.SCREEN_MANUF
      is ''屏幕厂家''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column M_D_CHARGE_POINT.CARD_READER_TYPE
      is ''读卡器型号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column M_D_CHARGE_POINT.CARD_READER_SPECE
      is ''读卡器规格''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column M_D_CHARGE_POINT.CARD_READER_MANUF
      is ''读卡器厂家''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column M_D_CHARGE_POINT.ARREST_TYPE
      is ''避雷器型号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column M_D_CHARGE_POINT.ARREST_SPECE
      is ''避雷器规格''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column M_D_CHARGE_POINT.ARREST_MANUF
      is ''避雷器厂家''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column M_D_CHARGE_POINT.CIRCU_BREAK_TYPE
      is ''断路器型号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column M_D_CHARGE_POINT.CIRCU_BREAK_SPECE
      is ''断路器规格''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column M_D_CHARGE_POINT.CIRCU_BREAK_MANUF
      is ''断路器厂家''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column M_D_CHARGE_POINT.COOL_FAN_TYPE
      is ''散热风扇型号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column M_D_CHARGE_POINT.COOL_FAN_SPECE
      is ''散热风扇规格''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column M_D_CHARGE_POINT.COOL_FAN_MANUF
      is ''散热风扇厂家''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column M_D_CHARGE_POINT.SOUND_TYPE
      is ''音响型号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column M_D_CHARGE_POINT.SOUND_SPECE
      is ''音响规格''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column M_D_CHARGE_POINT.SOUND_MANUF
      is ''音响厂家''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column M_D_CHARGE_POINT.ANTENNA_4G_TYPE
      is ''4G天线型号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column M_D_CHARGE_POINT.ANTENNA_4G_SPECE
      is ''4G天线规格''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column M_D_CHARGE_POINT.ANTENNA_4G_MANUF
      is ''4G天线厂家''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column M_D_CHARGE_POINT.ANTENNA_GPS_TYPE
      is ''GPS天线型号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column M_D_CHARGE_POINT.ANTENNA_GPS_SPECE
      is ''GPS天线规格''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column M_D_CHARGE_POINT.ANTENNA_GPS_MANU
      is ''GPS天线厂家''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column M_D_CHARGE_POINT.REMARK
      is ''备注''
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000018505 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_INDEXES U WHERE u.INDEX_NAME = 'IDX_M_D_CHARGE_P_BATCH_NO';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      create index IDX_M_D_CHARGE_P_BATCH_NO on M_D_CHARGE_POINT (ARRIVE_BATCH_NO)
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
      dbms_output.put_line('脚本已跳过，因为 IDX_M_D_CHARGE_P_BATCH_NO 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_INDEXES U WHERE u.INDEX_NAME = 'IDX_M_D_CHARGE_P_BAR_CODE';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      create index IDX_M_D_CHARGE_P_BAR_CODE on M_D_CHARGE_POINT (BAR_CODE)
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
      dbms_output.put_line('脚本已跳过，因为 IDX_M_D_CHARGE_P_BAR_CODE 已存在。');
    END IF;
END;
/
prompt
prompt 正在处理纪录编号为 8200000000018515 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'M_D_METER' AND U.COLUMN_NAME='CHARG_BAR_CODE';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table M_D_METER add charg_bar_code VARCHAR2(32)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 M_D_METER.charg_bar_code 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column M_D_METER.charg_bar_code
      is ''充电桩设备条形码''
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000018517 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'M_D_IT' AND U.COLUMN_NAME='CHARG_BAR_CODE';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table M_D_IT add charg_bar_code VARCHAR2(32)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 M_D_IT.charg_bar_code 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column M_D_IT.charg_bar_code
      is ''充电桩设备条形码''
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000019901 的脚本
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
prompt 正在处理纪录编号为 8200000000022528 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'M_D_HANDHELD_DEVICE' AND U.COLUMN_NAME='BOX_BAR_CODE';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table M_D_HANDHELD_DEVICE add box_bar_code VARCHAR2(32)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 M_D_HANDHELD_DEVICE.box_bar_code 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'M_D_HANDHELD_DEVICE' AND U.COLUMN_NAME='PALLET_BAR_CODE';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table M_D_HANDHELD_DEVICE add pallet_bar_code VARCHAR2(320)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 M_D_HANDHELD_DEVICE.pallet_bar_code 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column M_D_HANDHELD_DEVICE.box_bar_code
      is ''周转箱条码''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column M_D_HANDHELD_DEVICE.pallet_bar_code
      is ''托盘条码''
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000022578 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'M_D_METERING_CABINET' AND U.COLUMN_NAME='SORT_CODE';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table M_D_METERING_CABINET add sort_code VARCHAR2(8)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 M_D_METERING_CABINET.sort_code 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column M_D_METERING_CABINET.sort_code
      is ''类别(参照视图VW_MEAS_BOX_TYPE)''
    ';
END;
/

set feedback on
set define on
set serveroutput off
--------------------------------------------------

