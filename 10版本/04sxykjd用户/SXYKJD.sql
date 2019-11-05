--------------------------------------------------
set feedback off
set define off
set serveroutput on
--------------------------------------------------

prompt
prompt 正在处理纪录编号为 8200000000010964 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Tables U WHERE U.TABLE_NAME = 'MT_DETECT_HANDHELD_RSLT';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
        create table MT_DETECT_HANDHELD_RSLT
        (
        detect_task_no VARCHAR2(16),
        equip_id NUMBER(16),
        bar_code VARCHAR2(32),
        detect_date VARCHAR2(32),
        conc_code VARCHAR2(8),
        detect_person VARCHAR2(32),
        audit_person VARCHAR2(32),
        remark VARCHAR2(256),
        fault_type VARCHAR2(8),
        intuit_conc_code VARCHAR2(8),
        display_conc_code VARCHAR2(8),
        keyboard_conc_code VARCHAR2(8),
        buzzer_conc_code VARCHAR2(8),
        keyborad_life_conc_code VARCHAR2(8),
        interface_mechanical_conc_code VARCHAR2(8),
        inface_short_conc_code VARCHAR2(8),
        high_attack_conc_code VARCHAR2(8),
        ip_level_conc_code VARCHAR2(8),
        drop_resistance_conc_code VARCHAR2(8),
        high_temp_conc_code VARCHAR2(8),
        low_temp_conc_code VARCHAR2(8),
        wet_hot_conc_code VARCHAR2(8),
        esd_conc_code VARCHAR2(8),
        rfems_conc_code VARCHAR2(8),
        pfmfi_conc_code VARCHAR2(8),
        oned_conc_code VARCHAR2(8),
        twod_conc_code VARCHAR2(8),
        far_ir_conc_code VARCHAR2(8),
        lasr_ir_conc_code VARCHAR2(8),
        rfid_conc_code VARCHAR2(8),
        gis_conc_code VARCHAR2(8),
        usb_conc_code VARCHAR2(8),
        rs485_conc_code VARCHAR2(8),
        tf_conc_code VARCHAR2(8),
        bluetooth_conc_code VARCHAR2(8),
        uplink_conc_code VARCHAR2(8),
        function_conc_code VARCHAR2(8),
        protocol_conc_code VARCHAR2(8),
        attack_conc_code VARCHAR2(8),
        shake_conc_code VARCHAR2(8),
        write_date VARCHAR2(32),
        handle_flag VARCHAR2(16) default 0,
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
      dbms_output.put_line('脚本已跳过，因为 MT_DETECT_HANDHELD_RSLT 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table MT_DETECT_HANDHELD_RSLT
      is ''手持终端检定结论表''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_DETECT_HANDHELD_RSLT.DETECT_TASK_NO
      is ''检定任务单号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_DETECT_HANDHELD_RSLT.EQUIP_ID
      is ''设备ID''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_DETECT_HANDHELD_RSLT.BAR_CODE
      is ''条形码''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_DETECT_HANDHELD_RSLT.DETECT_DATE
      is ''检定时间''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_DETECT_HANDHELD_RSLT.CONC_CODE
      is ''结论''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_DETECT_HANDHELD_RSLT.DETECT_PERSON
      is ''检定人员''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_DETECT_HANDHELD_RSLT.AUDIT_PERSON
      is ''核检人员''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_DETECT_HANDHELD_RSLT.REMARK
      is ''备注''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_DETECT_HANDHELD_RSLT.FAULT_TYPE
      is ''不合格原因''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_DETECT_HANDHELD_RSLT.INTUIT_CONC_CODE
      is ''外观检查''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_DETECT_HANDHELD_RSLT.DISPLAY_CONC_CODE
      is ''显示与触摸屏检查''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_DETECT_HANDHELD_RSLT.KEYBOARD_CONC_CODE
      is ''键盘检查''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_DETECT_HANDHELD_RSLT.BUZZER_CONC_CODE
      is ''音频或蜂鸣器检查''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_DETECT_HANDHELD_RSLT.KEYBORAD_LIFE_CONC_CODE
      is ''键盘寿命试验''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_DETECT_HANDHELD_RSLT.INTERFACE_MECHANICAL_CONC_CODE
      is ''接口机械寿命试验''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_DETECT_HANDHELD_RSLT.INFACE_SHORT_CONC_CODE
      is ''接口短路试验''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_DETECT_HANDHELD_RSLT.HIGH_ATTACK_CONC_CODE
      is ''高压攻击试验''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_DETECT_HANDHELD_RSLT.IP_LEVEL_CONC_CODE
      is ''IP等级试验''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_DETECT_HANDHELD_RSLT.DROP_RESISTANCE_CONC_CODE
      is ''抗跌落试验''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_DETECT_HANDHELD_RSLT.HIGH_TEMP_CONC_CODE
      is ''高温试验''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_DETECT_HANDHELD_RSLT.LOW_TEMP_CONC_CODE
      is ''低温试验''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_DETECT_HANDHELD_RSLT.WET_HOT_CONC_CODE
      is ''湿热试验''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_DETECT_HANDHELD_RSLT.ESD_CONC_CODE
      is ''静电抗扰度试验''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_DETECT_HANDHELD_RSLT.RFEMS_CONC_CODE
      is ''射频磁场抗扰度试验''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_DETECT_HANDHELD_RSLT.PFMFI_CONC_CODE
      is ''工频磁场抗扰度试验''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_DETECT_HANDHELD_RSLT.ONED_CONC_CODE
      is ''一维条码扫描试验''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_DETECT_HANDHELD_RSLT.TWOD_CONC_CODE
      is ''二维条码扫描试验''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_DETECT_HANDHELD_RSLT.FAR_IR_CONC_CODE
      is ''远红外通信试验''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_DETECT_HANDHELD_RSLT.LASR_IR_CONC_CODE
      is ''激光红外通信试验''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_DETECT_HANDHELD_RSLT.RFID_CONC_CODE
      is ''RFID数据采集试验''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_DETECT_HANDHELD_RSLT.GIS_CONC_CODE
      is ''地理信息采集试验''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_DETECT_HANDHELD_RSLT.USB_CONC_CODE
      is ''USB通信试验''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_DETECT_HANDHELD_RSLT.RS485_CONC_CODE
      is ''RS485通信试验''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_DETECT_HANDHELD_RSLT.TF_CONC_CODE
      is ''TF卡读写试验''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_DETECT_HANDHELD_RSLT.BLUETOOTH_CONC_CODE
      is ''蓝牙通信试验''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_DETECT_HANDHELD_RSLT.UPLINK_CONC_CODE
      is ''上行通道无线传输试验''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_DETECT_HANDHELD_RSLT.FUNCTION_CONC_CODE
      is ''功能测试''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_DETECT_HANDHELD_RSLT.PROTOCOL_CONC_CODE
      is ''管理系统通信规约测试''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_DETECT_HANDHELD_RSLT.ATTACK_CONC_CODE
      is ''冲击试验''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_DETECT_HANDHELD_RSLT.SHAKE_CONC_CODE
      is ''振动试验''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_DETECT_HANDHELD_RSLT.WRITE_DATE
      is ''写入时间''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_DETECT_HANDHELD_RSLT.HANDLE_FLAG
      is ''处理标志''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_DETECT_HANDHELD_RSLT.HANDLE_DATE
      is ''处理时间''
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000010972 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_INDEXES U WHERE u.INDEX_NAME = 'IDX_MT_DETECT_HANDHELD_RSLT';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      create index idx_MT_DETECT_HANDHELD_RSLT on MT_DETECT_HANDHELD_RSLT (detect_task_no, bar_code)
      tablespace MPAC_T_IDX
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
      dbms_output.put_line('脚本已跳过，因为 IDX_MT_DETECT_HANDHELD_RSLT 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_INDEXES U WHERE u.INDEX_NAME = 'IDX_HANDHELD_RSLT_BARCODE';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      create index idx_HANDHELD_RSLT_barcode on MT_DETECT_HANDHELD_RSLT (bar_code)
      tablespace MPAC_T_IDX
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
      dbms_output.put_line('脚本已跳过，因为 IDX_HANDHELD_RSLT_BARCODE 已存在。');
    END IF;
END;
/
prompt
prompt 正在处理纪录编号为 8200000000010980 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Tables U WHERE U.TABLE_NAME = 'MT_DETECT_OPEN_RSLT';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
        create table MT_DETECT_OPEN_RSLT
        (
        detect_task_no VARCHAR2(16),
        sys_no VARCHAR(16),
        detect_equip_no VARCHAR(16),
        detect_unit_no VARCHAR(16),
        bar_code VARCHAR2(32),
        detect_date VARCHAR2(32),
        conc_code VARCHAR2(8),
        detect_person VARCHAR2(32),
        audit_person VARCHAR2(32),
        remark VARCHAR2(256),
        fault_type VARCHAR2(8),
        intuit_conc_code VARCHAR2(8),
        insulation_conc_code VARCHAR2(8),
        high_temp_conc_code VARCHAR2(8),
        low_temp_conc_code VARCHAR2(8),
        temp_rise_conc_code VARCHAR2(8),
        ver_temp_rise_conc_code VARCHAR2(8),
        dielec_prop_conc_code VARCHAR2(8),
        ver_dielec_prop_conc_code VARCHAR2(8),
        leak_current_conc_code VARCHAR2(8),
        connect_capa_conc_code VARCHAR2(8),
        oper_pfm_capa_conc_code VARCHAR2(8),
        st_stad_curr_conc_code VARCHAR2(8),
        st_circ_conn_capa_conc_code VARCHAR2(8),
        overload_capa_conc_code VARCHAR2(8),
        limt_current_conc_code VARCHAR2(8),
        oper_mecha_str_conc_code VARCHAR2(8),
        ident_durab_conc_code VARCHAR2(8),
        cle_creep_dist_conc_code VARCHAR2(8),
        impul_volt_conc_code VARCHAR2(8),
        tmp_rise_power_meas_conc_code VARCHAR2(8),
        trip_charact_conc_code VARCHAR2(8),
        sht_circ_perfor_conc_code VARCHAR2(8),
        mechan_vibra_conc_code VARCHAR2(8),
        veri_heat_resist_conc_code VARCHAR2(8),
        flame_fever_conc_code VARCHAR2(8),
        antirust_conc_code VARCHAR2(8),
        anti_pulse_grp_conc_code VARCHAR2(8),
        discharge_conc_code VARCHAR2(8),
        surge_conc_code VARCHAR2(8),
        drive_conc_code VARCHAR2(8),
        elec_lvl_ctrl_conc_code VARCHAR2(8),
        phase_leak_curt_conc_code VARCHAR2(8),
        high_temp_oper_conc_code VARCHAR2(8),
        low_temp_oper_conc_code VARCHAR2(8),
        high_temp_trip_conc_code VARCHAR2(8),
        low_temp_trip_conc_code VARCHAR2(8),
        power_delay_conc_code VARCHAR2(8),
        close_time_conc_code VARCHAR2(8),
        synchronism_conc_code VARCHAR2(8),
        fault_cur_load_capa_conc_code VARCHAR2(8),
        handle_flag VARCHAR2(32) default 0,
        write_date VARCHAR2(32),
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
      dbms_output.put_line('脚本已跳过，因为 MT_DETECT_OPEN_RSLT 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table MT_DETECT_OPEN_RSLT
      is ''空开检定结论表''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_DETECT_OPEN_RSLT.DETECT_TASK_NO
      is ''检定任务单号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_DETECT_OPEN_RSLT.SYS_NO
      is ''系统编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_DETECT_OPEN_RSLT.DETECT_EQUIP_NO
      is ''检定线台编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_DETECT_OPEN_RSLT.DETECT_UNIT_NO
      is ''单元编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_DETECT_OPEN_RSLT.BAR_CODE
      is ''条形码''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_DETECT_OPEN_RSLT.DETECT_DATE
      is ''检定时间''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_DETECT_OPEN_RSLT.CONC_CODE
      is ''结论''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_DETECT_OPEN_RSLT.DETECT_PERSON
      is ''检定人员''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_DETECT_OPEN_RSLT.AUDIT_PERSON
      is ''核检人员''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_DETECT_OPEN_RSLT.REMARK
      is ''备注''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_DETECT_OPEN_RSLT.FAULT_TYPE
      is ''不合格原因''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_DETECT_OPEN_RSLT.INTUIT_CONC_CODE
      is ''外观检查''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_DETECT_OPEN_RSLT.INSULATION_CONC_CODE
      is ''绝缘电阻试验''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_DETECT_OPEN_RSLT.HIGH_TEMP_CONC_CODE
      is ''高温试验''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_DETECT_OPEN_RSLT.LOW_TEMP_CONC_CODE
      is ''低温试验''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_DETECT_OPEN_RSLT.TEMP_RISE_CONC_CODE
      is ''温升''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_DETECT_OPEN_RSLT.VER_TEMP_RISE_CONC_CODE
      is ''验证温升''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_DETECT_OPEN_RSLT.DIELEC_PROP_CONC_CODE
      is ''介电性能试验''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_DETECT_OPEN_RSLT.VER_DIELEC_PROP_CONC_CODE
      is ''验证介电性能''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_DETECT_OPEN_RSLT.LEAK_CURRENT_CONC_CODE
      is ''泄漏电流''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_DETECT_OPEN_RSLT.CONNECT_CAPA_CONC_CODE
      is ''接通和分断能力''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_DETECT_OPEN_RSLT.OPER_PFM_CAPA_CONC_CODE
      is ''操作性能试验''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_DETECT_OPEN_RSLT.ST_STAD_CURR_CONC_CODE
      is ''短时耐受电流试验''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_DETECT_OPEN_RSLT.ST_CIRC_CONN_CAPA_CONC_CODE
      is ''短路接通能力试验''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_DETECT_OPEN_RSLT.OVERLOAD_CAPA_CONC_CODE
      is ''过载性能能力''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_DETECT_OPEN_RSLT.LIMT_CURRENT_CONC_CODE
      is ''限制短路电流''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_DETECT_OPEN_RSLT.OPER_MECHA_STR_CONC_CODE
      is ''操作机构的强度''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_DETECT_OPEN_RSLT.IDENT_DURAB_CONC_CODE
      is ''标识耐久性试验''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_DETECT_OPEN_RSLT.CLE_CREEP_DIST_CONC_CODE
      is ''电气间隙和爬电距离''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_DETECT_OPEN_RSLT.IMPUL_VOLT_CONC_CODE
      is ''冲击耐受电压试验''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_DETECT_OPEN_RSLT.TMP_RISE_POWER_MEAS_CONC_CODE
      is ''温升试验及功耗测量''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_DETECT_OPEN_RSLT.TRIP_CHARACT_CONC_CODE
      is ''脱扣特性''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_DETECT_OPEN_RSLT.SHT_CIRC_PERFOR_CONC_CODE
      is ''短路性能试验''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_DETECT_OPEN_RSLT.MECHAN_VIBRA_CONC_CODE
      is ''机械振动试验''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_DETECT_OPEN_RSLT.VERI_HEAT_RESIST_CONC_CODE
      is ''耐热性验证试验''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_DETECT_OPEN_RSLT.FLAME_FEVER_CONC_CODE
      is ''耐受非正常火焰和发热试验''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_DETECT_OPEN_RSLT.ANTIRUST_CONC_CODE
      is ''防锈性能试验''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_DETECT_OPEN_RSLT.ANTI_PULSE_GRP_CONC_CODE
      is ''电快速瞬变脉冲群抗扰性试验''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_DETECT_OPEN_RSLT.DISCHARGE_CONC_CODE
      is ''静电放电试验''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_DETECT_OPEN_RSLT.SURGE_CONC_CODE
      is ''浪涌试验''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_DETECT_OPEN_RSLT.DRIVE_CONC_CODE
      is ''驱动能力试验''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_DETECT_OPEN_RSLT.ELEC_LVL_CTRL_CONC_CODE
      is ''AC220V电平控制试验''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_DETECT_OPEN_RSLT.PHASE_LEAK_CURT_CONC_CODE
      is ''相线泄漏电流试验''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_DETECT_OPEN_RSLT.HIGH_TEMP_OPER_CONC_CODE
      is ''高温操作试验''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_DETECT_OPEN_RSLT.LOW_TEMP_OPER_CONC_CODE
      is ''低温操作试验''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_DETECT_OPEN_RSLT.HIGH_TEMP_TRIP_CONC_CODE
      is ''高温脱扣试验''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_DETECT_OPEN_RSLT.LOW_TEMP_TRIP_CONC_CODE
      is ''低温脱扣试验''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_DETECT_OPEN_RSLT.POWER_DELAY_CONC_CODE
      is ''上电延时试验''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_DETECT_OPEN_RSLT.CLOSE_TIME_CONC_CODE
      is ''自动合闸时间试验''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_DETECT_OPEN_RSLT.SYNCHRONISM_CONC_CODE
      is ''同期性试验''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_DETECT_OPEN_RSLT.FAULT_CUR_LOAD_CAPA_CONC_CODE
      is ''故障电流接通和承载能力试验''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_DETECT_OPEN_RSLT.HANDLE_FLAG
      is ''处理标志,0未处理，2已处理''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_DETECT_OPEN_RSLT.WRITE_DATE
      is ''写入时间''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_DETECT_OPEN_RSLT.HANDLE_DATE
      is ''处理时间''
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000010982 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_INDEXES U WHERE u.INDEX_NAME = 'IDX_MT_DETECT_OPEN_RSLT';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      create index idx_MT_DETECT_OPEN_RSLT on SXYKJD.MT_DETECT_OPEN_RSLT (detect_task_no, bar_code)
      tablespace MPAC_T_IDX
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
      dbms_output.put_line('脚本已跳过，因为 IDX_MT_DETECT_OPEN_RSLT 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_INDEXES U WHERE u.INDEX_NAME = 'IDX_DETECT_OPEN_RSLT_BARCODE';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      create index idx_DETECT_OPEN_RSLT_barcode on SXYKJD.MT_DETECT_OPEN_RSLT (bar_code)
      tablespace MPAC_T_IDX
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
      dbms_output.put_line('脚本已跳过，因为 IDX_DETECT_OPEN_RSLT_BARCODE 已存在。');
    END IF;
END;
/
prompt
prompt 正在处理纪录编号为 8200000000010984 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Tables U WHERE U.TABLE_NAME = 'MT_INSULATION_BR_CONC';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
        create table MT_INSULATION_BR_CONC
        (
        detect_task_no VARCHAR2(32),
        sys_no VARCHAR2(16),
        detect_equip_no VARCHAR2(16),
        detect_unit_no VARCHAR2(16),
        position_no VARCHAR2(16),
        bar_code VARCHAR2(32),
        detect_date VARCHAR2(32),
        para_index VARCHAR2(16),
        detect_item_point VARCHAR2(8),
        is_valid VARCHAR2(8),
        test_voltage VARCHAR2(32),
        test_resistance VARCHAR2(32),
        conc_code VARCHAR2(8),
        test_time VARCHAR2(8),
        handle_flag VARCHAR2(32) default 0,
        write_date VARCHAR2(32),
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
      dbms_output.put_line('脚本已跳过，因为 MT_INSULATION_BR_CONC 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table MT_INSULATION_BR_CONC
      is ''绝缘电阻测试（断路器）''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_INSULATION_BR_CONC.DETECT_TASK_NO
      is ''检定任务编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_INSULATION_BR_CONC.SYS_NO
      is ''生产线系统唯一标识''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_INSULATION_BR_CONC.DETECT_EQUIP_NO
      is ''检定线台编号、单元编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_INSULATION_BR_CONC.DETECT_UNIT_NO
      is ''检定单元编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_INSULATION_BR_CONC.POSITION_NO
      is ''工位编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_INSULATION_BR_CONC.BAR_CODE
      is ''互感器条形码''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_INSULATION_BR_CONC.DETECT_DATE
      is ''检定时间''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_INSULATION_BR_CONC.PARA_INDEX
      is ''第几次检定，设备可以检定多次''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_INSULATION_BR_CONC.DETECT_ITEM_POINT
      is ''VARCHAR2(8) 检定点的序号，每个检定项可以检定多个点''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_INSULATION_BR_CONC.IS_VALID
      is ''0：否、1：是''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_INSULATION_BR_CONC.TEST_VOLTAGE
      is ''测试电压''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_INSULATION_BR_CONC.TEST_RESISTANCE
      is ''测得电阻''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_INSULATION_BR_CONC.CONC_CODE
      is ''01合格、02不合格、03未检''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_INSULATION_BR_CONC.TEST_TIME
      is ''测试时间''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_INSULATION_BR_CONC.HANDLE_FLAG
      is ''处理标志,0未处理，2已处理''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_INSULATION_BR_CONC.WRITE_DATE
      is ''写入时间''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_INSULATION_BR_CONC.HANDLE_DATE
      is ''处理时间''
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000010987 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Tables U WHERE U.TABLE_NAME = 'MT_TRIP_CHARACT_BR_CONC';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
        create table MT_TRIP_CHARACT_BR_CONC
        (
        detect_task_no VARCHAR2(32),
        sys_no VARCHAR2(16),
        detect_equip_no VARCHAR2(16),
        detect_unit_no VARCHAR2(16),
        position_no VARCHAR2(16),
        bar_code VARCHAR2(32),
        detect_date VARCHAR2(32),
        para_index VARCHAR2(16),
        detect_item_point VARCHAR2(8),
        is_valid VARCHAR2(8),
        trip_test_type VARCHAR2(8),
        test_voltage VARCHAR2(32),
        test_current VARCHAR2(32),
        test_time VARCHAR2(32),
        conc_code VARCHAR2(8),
        handle_flag VARCHAR2(32) default 0,
        write_date VARCHAR2(32),
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
      dbms_output.put_line('脚本已跳过，因为 MT_TRIP_CHARACT_BR_CONC 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table MT_TRIP_CHARACT_BR_CONC
      is ''脱扣特性（断路器）''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_TRIP_CHARACT_BR_CONC.DETECT_TASK_NO
      is ''检定任务编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_TRIP_CHARACT_BR_CONC.SYS_NO
      is ''生产线系统唯一标识''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_TRIP_CHARACT_BR_CONC.DETECT_EQUIP_NO
      is ''检定线台编号、单元编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_TRIP_CHARACT_BR_CONC.DETECT_UNIT_NO
      is ''检定单元编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_TRIP_CHARACT_BR_CONC.POSITION_NO
      is ''工位编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_TRIP_CHARACT_BR_CONC.BAR_CODE
      is ''互感器条形码''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_TRIP_CHARACT_BR_CONC.DETECT_DATE
      is ''检定时间''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_TRIP_CHARACT_BR_CONC.PARA_INDEX
      is ''第几次检定，设备可以检定多次''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_TRIP_CHARACT_BR_CONC.DETECT_ITEM_POINT
      is ''检定点的序号，每个检定项可以检定多个点''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_TRIP_CHARACT_BR_CONC.IS_VALID
      is ''0：否、1：是''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_TRIP_CHARACT_BR_CONC.TRIP_TEST_TYPE
      is ''01,瞬时脱扣测试,02:延迟脱扣测试''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_TRIP_CHARACT_BR_CONC.TEST_VOLTAGE
      is ''测试电压''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_TRIP_CHARACT_BR_CONC.TEST_CURRENT
      is ''测试电流''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_TRIP_CHARACT_BR_CONC.TEST_TIME
      is ''测试时间''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_TRIP_CHARACT_BR_CONC.CONC_CODE
      is ''01合格、02不合格''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_TRIP_CHARACT_BR_CONC.HANDLE_FLAG
      is ''处理标志,0未处理，2已处理''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_TRIP_CHARACT_BR_CONC.WRITE_DATE
      is ''写入时间''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_TRIP_CHARACT_BR_CONC.HANDLE_DATE
      is ''处理时间''
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000010988 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Tables U WHERE U.TABLE_NAME = 'MT_CONTROL_BR_CONC';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
        create table MT_CONTROL_BR_CONC
        (
        detect_task_no VARCHAR2(32),
        sys_no VARCHAR2(16),
        detect_equip_no VARCHAR2(16),
        detect_unit_no VARCHAR2(16),
        position_no VARCHAR2(16),
        bar_code VARCHAR2(32),
        detect_date VARCHAR2(32),
        para_index VARCHAR2(16),
        detect_item_point VARCHAR2(8),
        is_valid VARCHAR2(8),
        result_switch_on VARCHAR2(32),
        result_switch_off VARCHAR2(32),
        conc_code VARCHAR2(8),
        handle_flag VARCHAR2(32) default 0,
        write_date VARCHAR2(32),
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
      dbms_output.put_line('脚本已跳过，因为 MT_CONTROL_BR_CONC 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table MT_CONTROL_BR_CONC
      is ''AC220V电平控制（断路器）''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_CONTROL_BR_CONC.DETECT_TASK_NO
      is ''检定任务编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_CONTROL_BR_CONC.SYS_NO
      is ''生产线系统唯一标识''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_CONTROL_BR_CONC.DETECT_EQUIP_NO
      is ''检定线台编号、单元编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_CONTROL_BR_CONC.DETECT_UNIT_NO
      is ''检定单元编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_CONTROL_BR_CONC.POSITION_NO
      is ''工位编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_CONTROL_BR_CONC.BAR_CODE
      is ''互感器条形码''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_CONTROL_BR_CONC.DETECT_DATE
      is ''检定时间''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_CONTROL_BR_CONC.PARA_INDEX
      is ''第几次检定，设备可以检定多次''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_CONTROL_BR_CONC.DETECT_ITEM_POINT
      is ''检定点的序号，每个检定项可以检定多个点''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_CONTROL_BR_CONC.IS_VALID
      is ''0：否、1：是''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_CONTROL_BR_CONC.RESULT_SWITCH_ON
      is ''测试闭合时通路结果''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_CONTROL_BR_CONC.RESULT_SWITCH_OFF
      is ''测试电平控制跳闸结果''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_CONTROL_BR_CONC.CONC_CODE
      is ''01合格、02不合格''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_CONTROL_BR_CONC.HANDLE_FLAG
      is ''处理标志,0未处理，2已处理''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_CONTROL_BR_CONC.WRITE_DATE
      is ''写入时间''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_CONTROL_BR_CONC.HANDLE_DATE
      is ''处理时间''
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000010989 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Tables U WHERE U.TABLE_NAME = 'MT_LEAK_CURRENT_SW_CONC';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
        create table MT_LEAK_CURRENT_SW_CONC
        (
        detect_task_no VARCHAR2(32),
        sys_no VARCHAR2(16),
        detect_equip_no VARCHAR2(16),
        detect_unit_no VARCHAR2(16),
        position_no VARCHAR2(16),
        bar_code VARCHAR2(32),
        detect_date VARCHAR2(32),
        para_index VARCHAR2(16),
        detect_item_point VARCHAR2(8),
        test_voltage VARCHAR2(16),
        test_current VARCHAR2(16),
        test_time VARCHAR2(8),
        is_valid VARCHAR2(8),
        conc_code VARCHAR2(8),
        handle_flag VARCHAR2(32) default 0,
        write_date VARCHAR2(32),
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
      dbms_output.put_line('脚本已跳过，因为 MT_LEAK_CURRENT_SW_CONC 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table MT_LEAK_CURRENT_SW_CONC
      is ''泄漏电流试验（隔离开关）''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_LEAK_CURRENT_SW_CONC.DETECT_TASK_NO
      is ''检定任务编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_LEAK_CURRENT_SW_CONC.SYS_NO
      is ''生产线系统唯一标识''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_LEAK_CURRENT_SW_CONC.DETECT_EQUIP_NO
      is ''检定线台编号、单元编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_LEAK_CURRENT_SW_CONC.DETECT_UNIT_NO
      is ''检定单元编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_LEAK_CURRENT_SW_CONC.POSITION_NO
      is ''工位编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_LEAK_CURRENT_SW_CONC.BAR_CODE
      is ''断路器条形码''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_LEAK_CURRENT_SW_CONC.DETECT_DATE
      is ''''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_LEAK_CURRENT_SW_CONC.PARA_INDEX
      is ''第几次检定，设备可以检定多次''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_LEAK_CURRENT_SW_CONC.DETECT_ITEM_POINT
      is ''检定点的序号，每个检定项可以检定多个点''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_LEAK_CURRENT_SW_CONC.TEST_VOLTAGE
      is ''测试耐压值''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_LEAK_CURRENT_SW_CONC.TEST_CURRENT
      is ''测试项目''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_LEAK_CURRENT_SW_CONC.TEST_TIME
      is ''测试时间''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_LEAK_CURRENT_SW_CONC.IS_VALID
      is ''见附录I：有效标志''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_LEAK_CURRENT_SW_CONC.CONC_CODE
      is ''01合格、02不合格''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_LEAK_CURRENT_SW_CONC.HANDLE_FLAG
      is ''处理标志,0未处理，2已处理''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_LEAK_CURRENT_SW_CONC.WRITE_DATE
      is ''写入时间''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_LEAK_CURRENT_SW_CONC.HANDLE_DATE
      is ''处理时间''
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000010997 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Tables U WHERE U.TABLE_NAME = 'MT_GENERAL_SW_CONC';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
        create table MT_GENERAL_SW_CONC
        (
        detect_task_no VARCHAR2(32),
        sys_no VARCHAR2(16),
        detect_equip_no VARCHAR2(16),
        detect_unit_no VARCHAR2(16),
        position_no VARCHAR2(16),
        bar_code VARCHAR2(32),
        detect_date VARCHAR2(32),
        para_index VARCHAR2(16),
        detect_item_point VARCHAR2(8),
        connect_result_1 VARCHAR2(8),
        disconnect_result_1 VARCHAR2(8),
        connect_result_2 VARCHAR2(8),
        disconnect_result_2 VARCHAR2(8),
        connect_result_3 VARCHAR2(8),
        disconnect_result_3 VARCHAR2(8),
        is_valid VARCHAR2(8),
        conc_code VARCHAR2(8),
        handle_flag VARCHAR2(32) default 0,
        write_date VARCHAR2(32),
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
      dbms_output.put_line('脚本已跳过，因为 MT_GENERAL_SW_CONC 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table MT_GENERAL_SW_CONC
      is ''接通和分断能力试验(隔离开关)''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_GENERAL_SW_CONC.DETECT_TASK_NO
      is ''检定任务编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_GENERAL_SW_CONC.SYS_NO
      is ''生产线系统唯一标识''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_GENERAL_SW_CONC.DETECT_EQUIP_NO
      is ''检定线台编号、单元编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_GENERAL_SW_CONC.DETECT_UNIT_NO
      is ''检定单元编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_GENERAL_SW_CONC.POSITION_NO
      is ''工位编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_GENERAL_SW_CONC.BAR_CODE
      is ''断路器条形码''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_GENERAL_SW_CONC.DETECT_DATE
      is ''检定时间''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_GENERAL_SW_CONC.PARA_INDEX
      is ''第几次检定，设备可以检定多次''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_GENERAL_SW_CONC.DETECT_ITEM_POINT
      is ''检定点的序号，每个检定项可以检定多个点''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_GENERAL_SW_CONC.CONNECT_RESULT_1
      is ''第1极通路结果''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_GENERAL_SW_CONC.DISCONNECT_RESULT_1
      is ''第1极断路结果''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_GENERAL_SW_CONC.CONNECT_RESULT_2
      is ''第2极通路结果''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_GENERAL_SW_CONC.DISCONNECT_RESULT_2
      is ''第2极断路结果''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_GENERAL_SW_CONC.CONNECT_RESULT_3
      is ''第3极通路结果''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_GENERAL_SW_CONC.DISCONNECT_RESULT_3
      is ''第3极断路结果''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_GENERAL_SW_CONC.IS_VALID
      is ''0：否、1：是''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_GENERAL_SW_CONC.CONC_CODE
      is ''01合格、02不合格''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_GENERAL_SW_CONC.HANDLE_FLAG
      is ''处理标志,0未处理，2已处理''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_GENERAL_SW_CONC.WRITE_DATE
      is ''写入时间''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_GENERAL_SW_CONC.HANDLE_DATE
      is ''处理时间''
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000010998 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_INDEXES U WHERE u.INDEX_NAME = 'IDX_MT_GENERAL_SW_';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      create index IDX_MT_GENERAL_SW_CONC_BARCODE on MT_GENERAL_SW_CONC (BAR_CODE)
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
      dbms_output.put_line('脚本已跳过，因为 IDX_MT_GENERAL_SW_ 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_INDEXES U WHERE u.INDEX_NAME = 'IDX_MT_GENERAL_SW_';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      create index IDX_MT_GENERAL_SW_CONC on MT_GENERAL_SW_CONC (DETECT_TASK_NO, BAR_CODE)
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
      dbms_output.put_line('脚本已跳过，因为 IDX_MT_GENERAL_SW_ 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_INDEXES U WHERE u.INDEX_NAME = 'IDX_LEAK_CURRENT_SW_BARCODE';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      create index IDX_LEAK_CURRENT_SW_BARCODE on MT_LEAK_CURRENT_SW_CONC (BAR_CODE)
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
      dbms_output.put_line('脚本已跳过，因为 IDX_LEAK_CURRENT_SW_BARCODE 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_INDEXES U WHERE u.INDEX_NAME = 'IDX_LEAK_CURRENT_SW_';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      create index IDX_LEAK_CURRENT_SW_CONC on MT_LEAK_CURRENT_SW_CONC (DETECT_TASK_NO, BAR_CODE)
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
      dbms_output.put_line('脚本已跳过，因为 IDX_LEAK_CURRENT_SW_ 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_INDEXES U WHERE u.INDEX_NAME = 'IDX_';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      create index IDX_CONTROL_BR_BARCODE on MT_CONTROL_BR_CONC (BAR_CODE)
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
      dbms_output.put_line('脚本已跳过，因为 IDX_ 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_INDEXES U WHERE u.INDEX_NAME = 'IDX_MT_';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      create index IDX_MT_CONTROL_BR_CONC on MT_CONTROL_BR_CONC (DETECT_TASK_NO, BAR_CODE)
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
      dbms_output.put_line('脚本已跳过，因为 IDX_MT_ 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_INDEXES U WHERE u.INDEX_NAME = 'IDX_TRIP_CHARACT_BR_BARCODE';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      create index IDX_TRIP_CHARACT_BR_BARCODE on MT_TRIP_CHARACT_BR_CONC (BAR_CODE)
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
      dbms_output.put_line('脚本已跳过，因为 IDX_TRIP_CHARACT_BR_BARCODE 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_INDEXES U WHERE u.INDEX_NAME = 'IDX_MT_TRIP_CHARACT_BR_';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      create index IDX_MT_TRIP_CHARACT_BR_CONC on MT_TRIP_CHARACT_BR_CONC (DETECT_TASK_NO, BAR_CODE)
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
      dbms_output.put_line('脚本已跳过，因为 IDX_MT_TRIP_CHARACT_BR_ 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_INDEXES U WHERE u.INDEX_NAME = 'IDX_NSULAT';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      create index IDX_NSULATION_BR_BARCODE on MT_INSULATION_BR_CONC (BAR_CODE)
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
      dbms_output.put_line('脚本已跳过，因为 IDX_NSULAT 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_INDEXES U WHERE u.INDEX_NAME = 'IDX_MT_INSULAT';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      create index IDX_MT_INSULATION_BR_CONC on MT_INSULATION_BR_CONC (DETECT_TASK_NO, BAR_CODE)
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
      dbms_output.put_line('脚本已跳过，因为 IDX_MT_INSULAT 已存在。');
    END IF;
END;
/
prompt
prompt 正在处理纪录编号为 8200000000011008 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'MT_DETECT_RSLT' AND U.COLUMN_NAME='INSULATION_CONC';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table MT_DETECT_RSLT add insulation_conc VARCHAR2(8)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 MT_DETECT_RSLT.insulation_conc 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column MT_DETECT_RSLT.insulation_conc
      is ''绝缘电阻试验结论''
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000011028 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'MT_DETECT_IT_RSLT' AND U.COLUMN_NAME='FALLDOWN_CONC_CODE';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table MT_DETECT_IT_RSLT add falldown_conc_code VARCHAR2(8)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 MT_DETECT_IT_RSLT.falldown_conc_code 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'MT_DETECT_IT_RSLT' AND U.COLUMN_NAME='ATTECK_CONC_CODE';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table MT_DETECT_IT_RSLT add atteck_conc_code VARCHAR2(8)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 MT_DETECT_IT_RSLT.atteck_conc_code 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'MT_DETECT_IT_RSLT' AND U.COLUMN_NAME='VIBRATION_CONC_CODE';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table MT_DETECT_IT_RSLT add vibration_conc_code VARCHAR2(8)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 MT_DETECT_IT_RSLT.vibration_conc_code 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'MT_DETECT_IT_RSLT' AND U.COLUMN_NAME='HEAT_BALANCE_TIME_CONC_CODE';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table MT_DETECT_IT_RSLT add heat_balance_time_conc_code VARCHAR2(8)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 MT_DETECT_IT_RSLT.heat_balance_time_conc_code 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'MT_DETECT_IT_RSLT' AND U.COLUMN_NAME='LOW_TEMP_SMALL_CUR_CONE_CODE';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table MT_DETECT_IT_RSLT add low_temp_small_cur_cone_code VARCHAR2(8)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 MT_DETECT_IT_RSLT.low_temp_small_cur_cone_code 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'MT_DETECT_IT_RSLT' AND U.COLUMN_NAME='HIGH_TEMP_BIG_CUR_CONC_CODE';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table MT_DETECT_IT_RSLT add high_temp_big_cur_conc_code VARCHAR2(8)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 MT_DETECT_IT_RSLT.high_temp_big_cur_conc_code 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'MT_DETECT_IT_RSLT' AND U.COLUMN_NAME='ALTER_MAGNETIC_CONC_CODE';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table MT_DETECT_IT_RSLT add alter_magnetic_conc_code VARCHAR2(8)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 MT_DETECT_IT_RSLT.alter_magnetic_conc_code 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'MT_DETECT_IT_RSLT' AND U.COLUMN_NAME='OVERLOAD_CONC_CODE';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table MT_DETECT_IT_RSLT add overload_conc_code VARCHAR2(8)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 MT_DETECT_IT_RSLT.overload_conc_code 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column MT_DETECT_IT_RSLT.falldown_conc_code
      is ''跌落试验''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_DETECT_IT_RSLT.atteck_conc_code
      is ''冲击试验''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_DETECT_IT_RSLT.vibration_conc_code
      is ''振动试验''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_DETECT_IT_RSLT.heat_balance_time_conc_code
      is ''分流器热平衡时间试验''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_DETECT_IT_RSLT.low_temp_small_cur_cone_code
      is ''低温小电流试验''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_DETECT_IT_RSLT.high_temp_big_cur_conc_code
      is ''高温大电流试验''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_DETECT_IT_RSLT.alter_magnetic_conc_code
      is ''交变磁场影响试验''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_DETECT_IT_RSLT.overload_conc_code
      is ''过载试验''
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000011346 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    EXECUTE IMMEDIATE
    '
      create or replace synonym MT_EMPTYOPEN
      for SXYKGG.M_D_EMPTYOPEN@SXYKGG
    ';
    EXECUTE IMMEDIATE
    '
      create or replace synonym MT_HANDHELD_DEVICE
      for SXYKGG.M_D_HANDHELD_DEVICE@SXYKGG
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000011760 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'MT_DETECT_IT_RSLT' AND U.COLUMN_NAME='LOW_TEMP_SMALL_CUR_CONE_CODE';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table MT_DETECT_IT_RSLT rename column low_temp_small_cur_cone_code to LOW_TEMP_SMALL_CUR_CONC_CODE
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 MT_DETECT_IT_RSLT.LOW_TEMP_SMALL_CUR_CONE_CODE 不存在。');
    END IF;
END;
/
prompt
prompt 正在处理纪录编号为 8200000000012031 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Tables U WHERE U.TABLE_NAME = 'MT_REPICK_FILTER_BATCH';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
        create table MT_REPICK_FILTER_BATCH
        (
        batch_id NUMBER(16) not null,
        batch_no VARCHAR2(32),
        org_no VARCHAR2(16),
        batch_num NUMBER(16),
        create_no VARCHAR2(16),
        remark VARCHAR2(512),
        create_time DATE,
        update_time DATE
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
      dbms_output.put_line('脚本已跳过，因为 MT_REPICK_FILTER_BATCH 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table MT_REPICK_FILTER_BATCH
      is ''退回筛选批次表''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_REPICK_FILTER_BATCH.BATCH_ID
      is ''筛选批次唯一标识''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_REPICK_FILTER_BATCH.BATCH_NO
      is ''筛选批次编号（根据退回市县公司，当前日期，序号 生成）''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_REPICK_FILTER_BATCH.ORG_NO
      is ''市县单位编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_REPICK_FILTER_BATCH.BATCH_NUM
      is ''批次已扫码数量''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_REPICK_FILTER_BATCH.CREATE_NO
      is ''操作人''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_REPICK_FILTER_BATCH.REMARK
      is ''备注''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_REPICK_FILTER_BATCH.CREATE_TIME
      is ''批次生成时间''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_REPICK_FILTER_BATCH.UPDATE_TIME
      is ''该批次最后一次扫码时间''
    ';
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_INDEXES U WHERE u.INDEX_NAME = 'PK_MT_REPICK_FILTER_BATCH';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table MT_REPICK_FILTER_BATCH
      add constraint PK_MT_REPICK_FILTER_BATCH primary key (BATCH_ID)
      using index
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
      dbms_output.put_line('脚本已跳过，因为 PK_MT_REPICK_FILTER_BATCH 已存在。');
    END IF;
END;
/
prompt
prompt 正在处理纪录编号为 8200000000012204 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_INDEXES U WHERE u.INDEX_NAME = 'IDX_SG_APP_NO';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      create index IDX_SG_APP_NO on MT_EQUIP_REPICK_DET (SG_APP_NO)
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
      dbms_output.put_line('脚本已跳过，因为 IDX_SG_APP_NO 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_INDEXES U WHERE u.INDEX_NAME = 'IDX_BAR_CODE';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      create index IDX_BAR_CODE on MT_EQUIP_REPICK_DET (BAR_CODE)
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
      dbms_output.put_line('脚本已跳过，因为 IDX_BAR_CODE 已存在。');
    END IF;
END;
/
prompt
prompt 正在处理纪录编号为 8200000000012929 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    EXECUTE IMMEDIATE
    '
      create or replace synonym MT_COMMUNICATION_MODULE
      for SXYKGG.M_D_COMMUNICATION_MODULE
    ';
END;
/

prompt
prompt 正在处理纪录编号为 8200000000014076 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'MT_REPICK_RSLT' AND U.COLUMN_NAME='SORTING_METER_NO';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table MT_REPICK_RSLT add sorting_meter_no NUMBER(3)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 MT_REPICK_RSLT.sorting_meter_no 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'MT_REPICK_RSLT' AND U.COLUMN_NAME='FAULTS_CODE_AUTO';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table MT_REPICK_RSLT add faults_code_auto VARCHAR2(2000)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 MT_REPICK_RSLT.faults_code_auto 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'MT_REPICK_RSLT' AND U.COLUMN_NAME='RECORD_CHECK';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table MT_REPICK_RSLT add record_check VARCHAR2(128)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 MT_REPICK_RSLT.record_check 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column MT_REPICK_RSLT.sorting_meter_no
      is ''分拣表位编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_REPICK_RSLT.faults_code_auto
      is ''分拣故障现象 按照竖线“|”分割。该字段存储的是分拣自动检测的故障现象，不包括再最后人工勾选的故障现象''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_REPICK_RSLT.record_check
      is ''处置结论记录，用于校验该条数据是否有效''
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000014077 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'MT_BASIC_ERR' AND U.COLUMN_NAME='ERR_VALUE';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table MT_BASIC_ERR modify ERR_VALUE VARCHAR2(32)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 MT_BASIC_ERR.ERR_VALUE 不存在。');
    END IF;
END;
/
prompt
prompt 正在处理纪录编号为 8200000000014078 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'MT_CONST_TEST' AND U.COLUMN_NAME='ERR_VALUE';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table MT_CONST_TEST modify ERR_VALUE VARCHAR2(32)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 MT_CONST_TEST.ERR_VALUE 不存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'MT_CONST_TEST' AND U.COLUMN_NAME='STD_ENERGY';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table MT_CONST_TEST modify STD_ENERGY VARCHAR2(32)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 MT_CONST_TEST.STD_ENERGY 不存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'MT_CONST_TEST' AND U.COLUMN_NAME='SAMPLE_ENERGY';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table MT_CONST_TEST modify SAMPLE_ENERGY VARCHAR2(32)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 MT_CONST_TEST.SAMPLE_ENERGY 不存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'MT_CONST_TEST' AND U.COLUMN_NAME='SAMPLE_CONST';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table MT_CONST_TEST modify SAMPLE_CONST VARCHAR2(32)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 MT_CONST_TEST.SAMPLE_CONST 不存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'MT_CONST_TEST' AND U.COLUMN_NAME='SAMPLE_PULSE';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table MT_CONST_TEST modify SAMPLE_PULSE VARCHAR2(32)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 MT_CONST_TEST.SAMPLE_PULSE 不存在。');
    END IF;
END;
/
prompt
prompt 正在处理纪录编号为 8200000000014088 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'MT_INDICATION' AND U.COLUMN_NAME='P_ERR_VALUE';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table MT_INDICATION modify P_ERR_VALUE VARCHAR2(32)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 MT_INDICATION.P_ERR_VALUE 不存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'MT_INDICATION' AND U.COLUMN_NAME='P_SAMPLE_VALUE';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table MT_INDICATION modify P_SAMPLE_VALUE VARCHAR2(32)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 MT_INDICATION.P_SAMPLE_VALUE 不存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'MT_INDICATION' AND U.COLUMN_NAME='PA_ERR_VALUE';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table MT_INDICATION modify PA_ERR_VALUE VARCHAR2(32)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 MT_INDICATION.PA_ERR_VALUE 不存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'MT_INDICATION' AND U.COLUMN_NAME='PA_SAMPLE_VALUE';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table MT_INDICATION modify PA_SAMPLE_VALUE VARCHAR2(32)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 MT_INDICATION.PA_SAMPLE_VALUE 不存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'MT_INDICATION' AND U.COLUMN_NAME='PB_ERR_VALUE';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table MT_INDICATION modify PB_ERR_VALUE VARCHAR2(32)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 MT_INDICATION.PB_ERR_VALUE 不存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'MT_INDICATION' AND U.COLUMN_NAME='PB_SAMPLE_VALUE';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table MT_INDICATION modify PB_SAMPLE_VALUE VARCHAR2(32)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 MT_INDICATION.PB_SAMPLE_VALUE 不存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'MT_INDICATION' AND U.COLUMN_NAME='PC_ERR_VALUE';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table MT_INDICATION modify PC_ERR_VALUE VARCHAR2(32)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 MT_INDICATION.PC_ERR_VALUE 不存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'MT_INDICATION' AND U.COLUMN_NAME='PC_SAMPLE_VALUE';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table MT_INDICATION modify PC_SAMPLE_VALUE VARCHAR2(32)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 MT_INDICATION.PC_SAMPLE_VALUE 不存在。');
    END IF;
END;
/
prompt
prompt 正在处理纪录编号为 8200000000014091 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'MT_START' AND U.COLUMN_NAME='TIME_COST';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table MT_START modify TIME_COST VARCHAR2(32)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 MT_START.TIME_COST 不存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column MT_START.time_cost
      is ''起动合格时，出第一个脉冲的时间''
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000014092 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'MT_NOLOAD' AND U.COLUMN_NAME='TIME_COST';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table MT_NOLOAD modify TIME_COST VARCHAR2(32)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 MT_NOLOAD.TIME_COST 不存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column MT_NOLOAD.time_cost
      is ''潜动不合格时，出第一个脉冲的时间''
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000014093 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'MT_READING_COMBINE' AND U.COLUMN_NAME='T_ENERGY';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table MT_READING_COMBINE modify T_ENERGY VARCHAR2(32)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 MT_READING_COMBINE.T_ENERGY 不存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'MT_READING_COMBINE' AND U.COLUMN_NAME='T1_ENERGY';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table MT_READING_COMBINE modify T1_ENERGY VARCHAR2(32)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 MT_READING_COMBINE.T1_ENERGY 不存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'MT_READING_COMBINE' AND U.COLUMN_NAME='T2_ENERGY';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table MT_READING_COMBINE modify T2_ENERGY VARCHAR2(32)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 MT_READING_COMBINE.T2_ENERGY 不存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'MT_READING_COMBINE' AND U.COLUMN_NAME='T3_ENERGY';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table MT_READING_COMBINE modify T3_ENERGY VARCHAR2(32)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 MT_READING_COMBINE.T3_ENERGY 不存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'MT_READING_COMBINE' AND U.COLUMN_NAME='T4_ENERGY';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table MT_READING_COMBINE modify T4_ENERGY VARCHAR2(32)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 MT_READING_COMBINE.T4_ENERGY 不存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'MT_READING_COMBINE' AND U.COLUMN_NAME='ERR_VALUE';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table MT_READING_COMBINE modify ERR_VALUE VARCHAR2(32)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 MT_READING_COMBINE.ERR_VALUE 不存在。');
    END IF;
END;
/
prompt
prompt 正在处理纪录编号为 8200000000014094 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'MT_CLOCK_ERR' AND U.COLUMN_NAME='ERR_VALUE';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table MT_CLOCK_ERR modify  ERR_VALUE VARCHAR2(32)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 MT_CLOCK_ERR.ERR_VALUE 不存在。');
    END IF;
END;
/
prompt
prompt 正在处理纪录编号为 8200000000014095 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'MT_DALIY_ERR' AND U.COLUMN_NAME='ERR_VALUE';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table MT_DALIY_ERR modify  ERR_VALUE VARCHAR2(32)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 MT_DALIY_ERR.ERR_VALUE不存在。');
    END IF;
END;
/
prompt
prompt 正在处理纪录编号为 8200000000014096 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'MT_DEMAND_ERR' AND U.COLUMN_NAME='ERR_VALUE';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table MT_DEMAND_ERR modify  ERR_VALUE VARCHAR2(32)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 MT_DEMAND_ERR.ERR_VALUE不存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'MT_DEMAND_ERR' AND U.COLUMN_NAME='STD_POWER';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table MT_DEMAND_ERR modify  STD_POWER VARCHAR2(32)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 MT_DEMAND_ERR.STD_POWER 不存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'MT_DEMAND_ERR' AND U.COLUMN_NAME='DEMAND_VALUE';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table MT_DEMAND_ERR modify  DEMAND_VALUE VARCHAR2(32)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 MT_DEMAND_ERR.DEMAND_VALUE不存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'MT_DEMAND_ERR' AND U.COLUMN_NAME='PERIOD_ERR_VALUE';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table MT_DEMAND_ERR modify  PERIOD_ERR_VALUE VARCHAR2(32)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 MT_DEMAND_ERR.PERIOD_ERR_VALUE不存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column MT_DEMAND_ERR.period_err_value
      is ''预留台体有需量示值误差和周期误差同时做时，产生的周期偏差数据，有些台体不支持，可不写，该项目13版国网已取消，09版和表厂内部是测试的。''
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000014097 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'MT_CHARGE' AND U.COLUMN_NAME='CUR_PRICE';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table MT_CHARGE add cur_price VARCHAR2(32)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 MT_CHARGE.cur_price 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column MT_CHARGE.cur_price
      is ''当前电价''
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000014098 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'MT_CHARGE' AND U.COLUMN_NAME='ORIGINAL_CREDIT';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table MT_CHARGE modify ORIGINAL_CREDIT VARCHAR2(32)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 MT_CHARGE.ORIGINAL_CREDIT 不存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'MT_CHARGE' AND U.COLUMN_NAME='ORIGINAL_OVERDRAFT';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table MT_CHARGE modify ORIGINAL_OVERDRAFT VARCHAR2(32)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 MT_CHARGE.ORIGINAL_OVERDRAFT 不存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'MT_CHARGE' AND U.COLUMN_NAME='ORIGINAL_T_ENERGY';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table MT_CHARGE modify ORIGINAL_T_ENERGY VARCHAR2(32)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 MT_CHARGE.ORIGINAL_T_ENERGY 不存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'MT_CHARGE' AND U.COLUMN_NAME='ORIGINAL_T1_ENERGY';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table MT_CHARGE modify ORIGINAL_T1_ENERGY VARCHAR2(32)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 MT_CHARGE.ORIGINAL_T1_ENERGY 不存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'MT_CHARGE' AND U.COLUMN_NAME='ORIGINAL_T2_ENERGY';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table MT_CHARGE modify ORIGINAL_T2_ENERGY VARCHAR2(32)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 MT_CHARGE.ORIGINAL_T2_ENERGY 不存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'MT_CHARGE' AND U.COLUMN_NAME='ORIGINAL_T3_ENERGY';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table MT_CHARGE modify ORIGINAL_T3_ENERGY VARCHAR2(32)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 MT_CHARGE.ORIGINAL_T3_ENERGY 不存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'MT_CHARGE' AND U.COLUMN_NAME='ORIGINAL_T4_ENERGY';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table MT_CHARGE modify ORIGINAL_T4_ENERGY VARCHAR2(32)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 MT_CHARGE.ORIGINAL_T4_ENERGY 不存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'MT_CHARGE' AND U.COLUMN_NAME='STOP_CREDIT';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table MT_CHARGE modify STOP_CREDIT VARCHAR2(32)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 MT_CHARGE.STOP_CREDIT 不存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'MT_CHARGE' AND U.COLUMN_NAME='STOP_OVERDRAFT';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table MT_CHARGE modify STOP_OVERDRAFT VARCHAR2(32)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 MT_CHARGE.STOP_OVERDRAFT 不存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'MT_CHARGE' AND U.COLUMN_NAME='STOP_T_ENERGY';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table MT_CHARGE modify STOP_T_ENERGY VARCHAR2(32)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 MT_CHARGE.STOP_T_ENERGY 不存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'MT_CHARGE' AND U.COLUMN_NAME='STOP_T1_ENERGY';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table MT_CHARGE modify STOP_T1_ENERGY VARCHAR2(32)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 MT_CHARGE.STOP_T1_ENERGY 不存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'MT_CHARGE' AND U.COLUMN_NAME='STOP_T2_ENERGY';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table MT_CHARGE modify STOP_T2_ENERGY VARCHAR2(32)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 MT_CHARGE.STOP_T2_ENERGY 不存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'MT_CHARGE' AND U.COLUMN_NAME='STOP_T3_ENERGY';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table MT_CHARGE modify STOP_T3_ENERGY VARCHAR2(32)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 MT_CHARGE.STOP_T3_ENERGY 不存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'MT_CHARGE' AND U.COLUMN_NAME='STOP_T4_ENERGY';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table MT_CHARGE modify STOP_T4_ENERGY VARCHAR2(32)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 MT_CHARGE.STOP_T4_ENERGY 不存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'MT_CHARGE' AND U.COLUMN_NAME='INCREASE_T_ENERGY';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table MT_CHARGE modify INCREASE_T_ENERGY VARCHAR2(32)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 MT_CHARGE.INCREASE_T_ENERGY 不存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'MT_CHARGE' AND U.COLUMN_NAME='INCREASE_T1_ENERGY';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table MT_CHARGE modify INCREASE_T1_ENERGY VARCHAR2(32)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 MT_CHARGE.INCREASE_T1_ENERGY 不存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'MT_CHARGE' AND U.COLUMN_NAME='INCREASE_T2_ENERGY';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table MT_CHARGE modify INCREASE_T2_ENERGY VARCHAR2(32)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 MT_CHARGE.INCREASE_T2_ENERGY 不存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'MT_CHARGE' AND U.COLUMN_NAME='INCREASE_T3_ENERGY';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table MT_CHARGE modify INCREASE_T3_ENERGY VARCHAR2(32)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 MT_CHARGE.INCREASE_T3_ENERGY 不存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'MT_CHARGE' AND U.COLUMN_NAME='INCREASE_T4_ENERGY';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table MT_CHARGE modify INCREASE_T4_ENERGY VARCHAR2(32)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 MT_CHARGE.INCREASE_T4_ENERGY 不存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'MT_CHARGE' AND U.COLUMN_NAME='T1_PRICE';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table MT_CHARGE modify T1_PRICE VARCHAR2(32)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 MT_CHARGE.T1_PRICE 不存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'MT_CHARGE' AND U.COLUMN_NAME='T2_PRICE';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table MT_CHARGE modify T2_PRICE VARCHAR2(32)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 MT_CHARGE.T2_PRICE 不存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'MT_CHARGE' AND U.COLUMN_NAME='T3_PRICE';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table MT_CHARGE modify T3_PRICE VARCHAR2(32)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 MT_CHARGE.T3_PRICE 不存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'MT_CHARGE' AND U.COLUMN_NAME='T4_PRICE';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table MT_CHARGE modify T4_PRICE VARCHAR2(32)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 MT_CHARGE.T4_PRICE 不存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'MT_CHARGE' AND U.COLUMN_NAME='B1_VALUE';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table MT_CHARGE modify B1_VALUE VARCHAR2(32)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 MT_CHARGE.B1_VALUE 不存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'MT_CHARGE' AND U.COLUMN_NAME='B2_VALUE';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table MT_CHARGE modify B2_VALUE VARCHAR2(32)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 MT_CHARGE.B2_VALUE 不存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'MT_CHARGE' AND U.COLUMN_NAME='B3_VALUE';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table MT_CHARGE modify B3_VALUE VARCHAR2(32)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 MT_CHARGE.B3_VALUE 不存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'MT_CHARGE' AND U.COLUMN_NAME='B4_VALUE';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table MT_CHARGE modify B4_VALUE VARCHAR2(32)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 MT_CHARGE.B4_VALUE 不存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'MT_CHARGE' AND U.COLUMN_NAME='B5_VALUE';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table MT_CHARGE modify B5_VALUE VARCHAR2(32)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 MT_CHARGE.B5_VALUE 不存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'MT_CHARGE' AND U.COLUMN_NAME='B6_VALUE';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table MT_CHARGE modify B6_VALUE VARCHAR2(32)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 MT_CHARGE.B6_VALUE 不存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'MT_CHARGE' AND U.COLUMN_NAME='B1_ENERGY';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table MT_CHARGE modify B1_ENERGY VARCHAR2(32)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 MT_CHARGE.B1_ENERGY 不存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'MT_CHARGE' AND U.COLUMN_NAME='B2_ENERGY';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table MT_CHARGE modify B2_ENERGY VARCHAR2(32)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 MT_CHARGE.B2_ENERGY 不存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'MT_CHARGE' AND U.COLUMN_NAME='B3_ENERGY';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table MT_CHARGE modify B3_ENERGY VARCHAR2(32)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 MT_CHARGE.B3_ENERGY 不存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'MT_CHARGE' AND U.COLUMN_NAME='B4_ENERGY';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table MT_CHARGE modify B4_ENERGY VARCHAR2(32)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 MT_CHARGE.B4_ENERGY 不存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'MT_CHARGE' AND U.COLUMN_NAME='B5_ENERGY';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table MT_CHARGE modify B5_ENERGY VARCHAR2(32)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 MT_CHARGE.B5_ENERGY 不存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'MT_CHARGE' AND U.COLUMN_NAME='B6_ENERGY';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table MT_CHARGE modify B6_ENERGY VARCHAR2(32)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 MT_CHARGE.B6_ENERGY 不存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'MT_CHARGE' AND U.COLUMN_NAME='B7_ENERGY';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table MT_CHARGE modify B7_ENERGY VARCHAR2(32)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 MT_CHARGE.B7_ENERGY 不存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'MT_CHARGE' AND U.COLUMN_NAME='B1_PRICE';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table MT_CHARGE modify B1_PRICE VARCHAR2(32)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 MT_CHARGE.B1_PRICE 不存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'MT_CHARGE' AND U.COLUMN_NAME='B2_PRICE';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table MT_CHARGE modify B2_PRICE VARCHAR2(32)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 MT_CHARGE.B2_PRICE 不存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'MT_CHARGE' AND U.COLUMN_NAME='B3_PRICE';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table MT_CHARGE modify B3_PRICE VARCHAR2(32)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 MT_CHARGE.B3_PRICE 不存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'MT_CHARGE' AND U.COLUMN_NAME='B4_PRICE';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table MT_CHARGE modify B4_PRICE VARCHAR2(32)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 MT_CHARGE.B4_PRICE 不存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'MT_CHARGE' AND U.COLUMN_NAME='B5_PRICE';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table MT_CHARGE modify B5_PRICE VARCHAR2(32)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 MT_CHARGE.B5_PRICE 不存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'MT_CHARGE' AND U.COLUMN_NAME='B6_PRICE';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table MT_CHARGE modify B6_PRICE VARCHAR2(32)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 MT_CHARGE.B6_PRICE 不存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'MT_CHARGE' AND U.COLUMN_NAME='B7_PRICE';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table MT_CHARGE modify B7_PRICE VARCHAR2(32)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 MT_CHARGE.B7_PRICE 不存在。');
    END IF;
END;
/
prompt
prompt 正在处理纪录编号为 8200000000014104 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'MT_REMOTE_CTRL' AND U.COLUMN_NAME='SWITCH_OFF_DELAY';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table MT_REMOTE_CTRL modify SWITCH_OFF_DELAY VARCHAR2(32)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 MT_REMOTE_CTRL.SWITCH_OFF_DELAY 不存在。');
    END IF;
END;
/
prompt
prompt 正在处理纪录编号为 8200000000014105 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'MT_REMOTE_RECHARGE' AND U.COLUMN_NAME='ORIGINAL_RECHARGE_NUM';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table MT_REMOTE_RECHARGE modify ORIGINAL_RECHARGE_NUM VARCHAR2(32)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 MT_REMOTE_RECHARGE.ORIGINAL_RECHARGE_NUM 不存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'MT_REMOTE_RECHARGE' AND U.COLUMN_NAME='ORIGINAL_CREDIT';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table MT_REMOTE_RECHARGE modify ORIGINAL_CREDIT VARCHAR2(32)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 MT_REMOTE_RECHARGE.ORIGINAL_CREDIT 不存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'MT_REMOTE_RECHARGE' AND U.COLUMN_NAME='ORIGINAL_OVERDRAFT';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table MT_REMOTE_RECHARGE modify ORIGINAL_OVERDRAFT VARCHAR2(32)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 MT_REMOTE_RECHARGE.ORIGINAL_OVERDRAFT 不存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'MT_REMOTE_RECHARGE' AND U.COLUMN_NAME='LATEST_CREDIT';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table MT_REMOTE_RECHARGE modify LATEST_CREDIT VARCHAR2(32)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 MT_REMOTE_RECHARGE.LATEST_CREDIT 不存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'MT_REMOTE_RECHARGE' AND U.COLUMN_NAME='LATEST_OVERDRAFT';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table MT_REMOTE_RECHARGE modify LATEST_OVERDRAFT VARCHAR2(32)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 MT_REMOTE_RECHARGE.LATEST_OVERDRAFT 不存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'MT_REMOTE_RECHARGE' AND U.COLUMN_NAME='LATEST_RECHARGE_NUM';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table MT_REMOTE_RECHARGE modify LATEST_RECHARGE_NUM VARCHAR2(32)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 MT_REMOTE_RECHARGE.LATEST_RECHARGE_NUM 不存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'MT_REMOTE_RECHARGE' AND U.COLUMN_NAME='RECHARGE_AMOUNT';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table MT_REMOTE_RECHARGE modify RECHARGE_AMOUNT VARCHAR2(32)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 MT_REMOTE_RECHARGE.RECHARGE_AMOUNT 不存在。');
    END IF;
END;
/
prompt
prompt 正在处理纪录编号为 8200000000014109 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'MT_RUN_STATE' AND U.COLUMN_NAME='ORIGINAL_POWER_DOWN_COUNT';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table MT_RUN_STATE modify ORIGINAL_POWER_DOWN_COUNT VARCHAR2(32)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 MT_RUN_STATE.ORIGINAL_POWER_DOWN_COUNT 不存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'MT_RUN_STATE' AND U.COLUMN_NAME='LATESTL_POWER_DOWN_COUNT';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table MT_RUN_STATE modify LATESTL_POWER_DOWN_COUNT VARCHAR2(32)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 MT_RUN_STATE.LATESTL_POWER_DOWN_COUNT 不存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'MT_RUN_STATE' AND U.COLUMN_NAME='POWER_DOWN_COUNT';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table MT_RUN_STATE modify POWER_DOWN_COUNT VARCHAR2(32)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 MT_RUN_STATE.POWER_DOWN_COUNT 不存在。');
    END IF;
END;
/
prompt
prompt 正在处理纪录编号为 8200000000014256 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'MT_DETECT_IT_RSLT' AND U.COLUMN_NAME='RETU_MAGNETISM_CONC_CODE';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table MT_DETECT_IT_RSLT add retu_magnetism_conc_code VARCHAR2(8)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 MT_DETECT_IT_RSLT.retu_magnetism_conc_code 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column MT_DETECT_IT_RSLT.retu_magnetism_conc_code
      is ''退磁''
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000014486 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Tables U WHERE U.TABLE_NAME = 'MT_REPICK_TOKEN';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
        create table MT_REPICK_TOKEN
        (
        account_device_no VARCHAR2(32) not null,
        token VARCHAR2(64),
        create_no VARCHAR2(32),
        create_time DATE default sysdate,
        update_time DATE
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
      dbms_output.put_line('脚本已跳过，因为 MT_REPICK_TOKEN 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table MT_REPICK_TOKEN
      is ''装置多机模式下校验TOKEN存放表''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_REPICK_TOKEN.account_device_no
      is ''登陆用户，装置NO''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_REPICK_TOKEN.token
      is ''TOKEN''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_REPICK_TOKEN.create_no
      is ''创建人''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_REPICK_TOKEN.create_time
      is ''创建时间''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_REPICK_TOKEN.update_time
      is ''更新时间''
    ';
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_INDEXES U WHERE u.INDEX_NAME = 'PK_MT_REPICK_TOKEN';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table MT_REPICK_TOKEN
      add constraint PK_MT_REPICK_TOKEN primary key (account_device_no)
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
      dbms_output.put_line('脚本已跳过，因为 PK_MT_REPICK_TOKEN 已存在。');
    END IF;
END;
/
prompt
prompt 正在处理纪录编号为 8200000000014630 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'MT_DETECT_TMNL_RSLT' AND U.COLUMN_NAME='HPLC_CERT_CONC_CODE';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table MT_DETECT_TMNL_RSLT add hplc_cert_conc_code VARCHAR2(8)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 MT_DETECT_TMNL_RSLT.hplc_cert_conc_code 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column MT_DETECT_TMNL_RSLT.hplc_cert_conc_code
      is ''HPLC芯片ID认证结果，01：合格，02：不合格''
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000014631 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'MT_DETECT_COMM_RSLT' AND U.COLUMN_NAME='HPLC_CERT_CONC_CODE';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table MT_DETECT_COMM_RSLT add hplc_cert_conc_code VARCHAR2(8)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 MT_DETECT_COMM_RSLT.hplc_cert_conc_code 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column MT_DETECT_COMM_RSLT.hplc_cert_conc_code
      is ''HPLC芯片ID认证结果，01：合格，02：不合格''
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000014941 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'MT_DETECT_HANDHELD_RSLT' AND U.COLUMN_NAME='STFC_CONC_CODE';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table MT_DETECT_HANDHELD_RSLT add stfc_conc_code VARCHAR2(8)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 MT_DETECT_HANDHELD_RSLT.stfc_conc_code 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'MT_DETECT_HANDHELD_RSLT' AND U.COLUMN_NAME='SECURITY_MODULE_CONC_CODE';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table MT_DETECT_HANDHELD_RSLT add security_module_conc_code VARCHAR2(8)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 MT_DETECT_HANDHELD_RSLT.security_module_conc_code 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'MT_DETECT_HANDHELD_RSLT' AND U.COLUMN_NAME='BUSINESS_SOFTWARE_CONC_CODE';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table MT_DETECT_HANDHELD_RSLT add business_software_conc_code VARCHAR2(8)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 MT_DETECT_HANDHELD_RSLT.business_software_conc_code 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'MT_DETECT_HANDHELD_RSLT' AND U.COLUMN_NAME='NETWORK_PROTECTION_CONC_CODE';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table MT_DETECT_HANDHELD_RSLT add network_protection_conc_code VARCHAR2(8)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 MT_DETECT_HANDHELD_RSLT.network_protection_conc_code 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'MT_DETECT_HANDHELD_RSLT' AND U.COLUMN_NAME='ACCESS_PROTECTION_CONC_CODE';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table MT_DETECT_HANDHELD_RSLT add access_protection_conc_code VARCHAR2(8)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 MT_DETECT_HANDHELD_RSLT.access_protection_conc_code 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'MT_DETECT_HANDHELD_RSLT' AND U.COLUMN_NAME='HPADC_CONC_CODE';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table MT_DETECT_HANDHELD_RSLT add hpadc_conc_code VARCHAR2(8)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 MT_DETECT_HANDHELD_RSLT.hpadc_conc_code 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'MT_DETECT_HANDHELD_RSLT' AND U.COLUMN_NAME='BAMC_CONC_CODE';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table MT_DETECT_HANDHELD_RSLT add bamc_conc_code VARCHAR2(8)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 MT_DETECT_HANDHELD_RSLT.bamc_conc_code 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'MT_DETECT_HANDHELD_RSLT' AND U.COLUMN_NAME='APNPAPC_CONC_CODE';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table MT_DETECT_HANDHELD_RSLT add apnpapc_conc_code VARCHAR2(8)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 MT_DETECT_HANDHELD_RSLT.apnpapc_conc_code 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'MT_DETECT_HANDHELD_RSLT' AND U.COLUMN_NAME='CAMERA_CONC_CODE';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table MT_DETECT_HANDHELD_RSLT add camera_conc_code VARCHAR2(8)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 MT_DETECT_HANDHELD_RSLT.camera_conc_code 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'MT_DETECT_HANDHELD_RSLT' AND U.COLUMN_NAME='WHOLE_MACHINE_CONC_CODE';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table MT_DETECT_HANDHELD_RSLT add whole_machine_conc_code VARCHAR2(8)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 MT_DETECT_HANDHELD_RSLT.whole_machine_conc_code 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'MT_DETECT_HANDHELD_RSLT' AND U.COLUMN_NAME='SACC_CONC_CODE';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table MT_DETECT_HANDHELD_RSLT add sacc_conc_code VARCHAR2(8)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 MT_DETECT_HANDHELD_RSLT.sacc_conc_code 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'MT_DETECT_HANDHELD_RSLT' AND U.COLUMN_NAME='NETWORK_STABILITY_CONC_CODE';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table MT_DETECT_HANDHELD_RSLT add network_stability_conc_code VARCHAR2(8)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 MT_DETECT_HANDHELD_RSLT.network_stability_conc_code 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'MT_DETECT_HANDHELD_RSLT' AND U.COLUMN_NAME='APPLICATION_SCENARIO_CONC_CODE';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table MT_DETECT_HANDHELD_RSLT add application_scenario_conc_code VARCHAR2(8)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 MT_DETECT_HANDHELD_RSLT.application_scenario_conc_code 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'MT_DETECT_HANDHELD_RSLT' AND U.COLUMN_NAME='DISPLAY_UNIT_CONC_CODE';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table MT_DETECT_HANDHELD_RSLT add display_unit_conc_code VARCHAR2(8)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 MT_DETECT_HANDHELD_RSLT.display_unit_conc_code 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'MT_DETECT_HANDHELD_RSLT' AND U.COLUMN_NAME='ELEC_COMPATIBILITY_CONC_CODE';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table MT_DETECT_HANDHELD_RSLT add elec_compatibility_conc_code VARCHAR2(8)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 MT_DETECT_HANDHELD_RSLT.elec_compatibility_conc_code 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'MT_DETECT_HANDHELD_RSLT' AND U.COLUMN_NAME='ENVIR_ADAPTABILITY_CONC_CODE';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table MT_DETECT_HANDHELD_RSLT add envir_adaptability_conc_code VARCHAR2(8)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 MT_DETECT_HANDHELD_RSLT.envir_adaptability_conc_code 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'MT_DETECT_HANDHELD_RSLT' AND U.COLUMN_NAME='SHELL_LEVEL_CONC_CODE';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table MT_DETECT_HANDHELD_RSLT add shell_level_conc_code VARCHAR2(8)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 MT_DETECT_HANDHELD_RSLT.shell_level_conc_code 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'MT_DETECT_HANDHELD_RSLT' AND U.COLUMN_NAME='OTARRF_CONC_CODE';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table MT_DETECT_HANDHELD_RSLT add otarrf_conc_code VARCHAR2(8)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 MT_DETECT_HANDHELD_RSLT.otarrf_conc_code 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'MT_DETECT_HANDHELD_RSLT' AND U.COLUMN_NAME='PROTOCOL_AGREEMENT_CONC_CODE';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table MT_DETECT_HANDHELD_RSLT add protocol_agreement_conc_code VARCHAR2(8)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 MT_DETECT_HANDHELD_RSLT.protocol_agreement_conc_code 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'MT_DETECT_HANDHELD_RSLT' AND U.COLUMN_NAME='SECURITY_CONC_CODE';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table MT_DETECT_HANDHELD_RSLT add security_conc_code VARCHAR2(8)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 MT_DETECT_HANDHELD_RSLT.security_conc_code 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column MT_DETECT_HANDHELD_RSLT.stfc_conc_code
      is ''安全TF卡功能检测''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_DETECT_HANDHELD_RSLT.security_module_conc_code
      is ''安全模块功能检测''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_DETECT_HANDHELD_RSLT.business_software_conc_code
      is ''业务软件功能检测''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_DETECT_HANDHELD_RSLT.network_protection_conc_code
      is ''网络防护功能检测''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_DETECT_HANDHELD_RSLT.access_protection_conc_code
      is ''接入防护功能检测''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_DETECT_HANDHELD_RSLT.hpadc_conc_code
      is ''设备硬件参数及桌面定制''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_DETECT_HANDHELD_RSLT.bamc_conc_code
      is ''业务/管理员模式定制''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_DETECT_HANDHELD_RSLT.apnpapc_conc_code
      is ''APN电力接入点定制''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_DETECT_HANDHELD_RSLT.camera_conc_code
      is ''摄像头''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_DETECT_HANDHELD_RSLT.whole_machine_conc_code
      is ''整机功能''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_DETECT_HANDHELD_RSLT.sacc_conc_code
      is ''安全接入客户端兼容性''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_DETECT_HANDHELD_RSLT.network_stability_conc_code
      is ''网络稳定性''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_DETECT_HANDHELD_RSLT.application_scenario_conc_code
      is ''应用场景''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_DETECT_HANDHELD_RSLT.display_unit_conc_code
      is ''显示部件''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_DETECT_HANDHELD_RSLT.elec_compatibility_conc_code
      is ''电磁兼容性''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_DETECT_HANDHELD_RSLT.envir_adaptability_conc_code
      is ''环境适应性''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_DETECT_HANDHELD_RSLT.shell_level_conc_code
      is ''外壳防护等级''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_DETECT_HANDHELD_RSLT.otarrf_conc_code
      is ''OTA移动台空中辐射射频性能''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_DETECT_HANDHELD_RSLT.protocol_agreement_conc_code
      is ''Protocol协议''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_DETECT_HANDHELD_RSLT.security_conc_code
      is ''安全''
    ';
END;
/

set feedback on
set define on
set serveroutput off
--------------------------------------------------

