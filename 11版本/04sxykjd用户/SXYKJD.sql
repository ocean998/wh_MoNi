--------------------------------------------------
set feedback off
set define off
set serveroutput on
--------------------------------------------------

prompt
prompt 正在处理纪录编号为 8200000000012797 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'MT_HPLCID_CERT_INFO' AND U.COLUMN_NAME='BAR_CODE';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table MT_HPLCID_CERT_INFO modify bar_code null
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 MT_HPLCID_CERT_INFO.BAR_CODE 不存在。');
    END IF;
END;
/
prompt
prompt 正在处理纪录编号为 8200000000017742 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'MT_DETECT_SUBITEM_RSLT' AND U.COLUMN_NAME='HANDLE_FLAG';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table MT_DETECT_SUBITEM_RSLT add handle_flag VARCHAR2(32) default 0
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 MT_DETECT_SUBITEM_RSLT.handle_flag 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'MT_DETECT_SUBITEM_RSLT' AND U.COLUMN_NAME='HANDLE_DATE';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table MT_DETECT_SUBITEM_RSLT add handle_date VARCHAR2(32)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 MT_DETECT_SUBITEM_RSLT.handle_date 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column MT_DETECT_SUBITEM_RSLT.handle_flag
      is ''处理标志,0未处理，2已处理''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_DETECT_SUBITEM_RSLT.handle_date
      is ''处理时间''
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000017862 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'MT_DETECT_COMM_SUBITEM_RSLT' AND U.COLUMN_NAME='DETECT_EQUIP_NO';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table MT_DETECT_COMM_SUBITEM_RSLT add detect_equip_no VARCHAR2(16)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 MT_DETECT_COMM_SUBITEM_RSLT.detect_equip_no 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column MT_DETECT_COMM_SUBITEM_RSLT.detect_equip_no
      is ''检定线/台体编号''
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000017863 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'MT_ELEC_CHARGE_INFO' AND U.COLUMN_NAME='DETECT_EQUIP_NO';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table MT_ELEC_CHARGE_INFO add detect_equip_no VARCHAR2(16)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 MT_ELEC_CHARGE_INFO.detect_equip_no 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column MT_ELEC_CHARGE_INFO.detect_equip_no
      is ''检定线/台体编号''
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000017864 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'MT_EQUIP_UNPASS_REASON' AND U.COLUMN_NAME='DETECT_EQUIP_NO';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table MT_EQUIP_UNPASS_REASON add detect_equip_no VARCHAR2(16)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 MT_EQUIP_UNPASS_REASON.detect_equip_no 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column MT_EQUIP_UNPASS_REASON.detect_equip_no
      is ''检定线/台体编号''
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000017865 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'MT_DETECT_HANDHELD_RSLT' AND U.COLUMN_NAME='DETECT_EQUIP_NO';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table MT_DETECT_HANDHELD_RSLT add detect_equip_no VARCHAR2(16)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 MT_DETECT_HANDHELD_RSLT.detect_equip_no 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'MT_DETECT_HANDHELD_RSLT' AND U.COLUMN_NAME='SYS_NO';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table MT_DETECT_HANDHELD_RSLT add sys_no VARCHAR2(16)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 MT_DETECT_HANDHELD_RSLT.sys_no 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column MT_DETECT_HANDHELD_RSLT.detect_equip_no
      is ''检定线/台体编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_DETECT_HANDHELD_RSLT.sys_no
      is ''系统编号''
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000017866 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'MT_DETECT_COMM_RSLT' AND U.COLUMN_NAME='DETECT_EQUIP_NO';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table MT_DETECT_COMM_RSLT add detect_equip_no VARCHAR2(16)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 MT_DETECT_COMM_RSLT.detect_equip_no 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column MT_DETECT_COMM_RSLT.detect_equip_no
      is ''检定线/台体编号''
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000017990 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    EXECUTE IMMEDIATE
    '
      create or replace synonym MT_CHARGE_POINT
      for M_D_CHARGE_POINT@SXYKGG
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000017994 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Tables U WHERE U.TABLE_NAME = 'MT_DETECT_CP_RSLT';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
        create table MT_DETECT_CP_RSLT
        (
        detect_task_no VARCHAR2(32),
        sys_no VARCHAR2(16),
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
      dbms_output.put_line('脚本已跳过，因为 MT_DETECT_CP_RSLT 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table MT_DETECT_CP_RSLT
      is ''充电桩检定结论表''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_DETECT_CP_RSLT.DETECT_TASK_NO
      is ''检定任务编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_DETECT_CP_RSLT.SYS_NO
      is ''系统编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_DETECT_CP_RSLT.DETECT_EQUIP_NO
      is ''检定线台编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_DETECT_CP_RSLT.BAR_CODE
      is ''设备条形码''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_DETECT_CP_RSLT.DETECT_DATE
      is ''检定时间''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_DETECT_CP_RSLT.CONC_CODE
      is ''检定总结论''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_DETECT_CP_RSLT.INTUIT_CONC_CODE
      is ''外观检查结论''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_DETECT_CP_RSLT.INSIDE_CONC_CODE
      is ''内部检查结论''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_DETECT_CP_RSLT.WIRE_CONC_CODE
      is ''电缆管理及贮存检查结论''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_DETECT_CP_RSLT.SIGN_CONC_CODE
      is ''标志检查结论''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_DETECT_CP_RSLT.COMPOSE_CONC_CODE
      is ''基本构成检查结论''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_DETECT_CP_RSLT.CONNECT_CONC_CODE
      is ''充电模式和连接方式检查结论''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_DETECT_CP_RSLT.LANDING_CONC_CODE
      is ''接地要求试验结论''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_DETECT_CP_RSLT.CHARGE_CONC_CODE
      is ''充电功能结论''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_DETECT_CP_RSLT.COMM_CONC_CODE
      is ''通信功能试验结论''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_DETECT_CP_RSLT.DISPLAY_CONC_CODE
      is ''显示功能试验结论''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_DETECT_CP_RSLT.IN_CONC_CODE
      is ''输入功能试验结论''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_DETECT_CP_RSLT.ELEC_CONC_CODE
      is ''电击防护试验结论''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_DETECT_CP_RSLT.CLEARANCE_CREEPAGE_CONC_CODE
      is ''电气间隙和爬电距离试验结论''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_DETECT_CP_RSLT.ONLOAD_DECILITER_CONC_CODE
      is ''带载分合电路试验结论''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_DETECT_CP_RSLT.SCRAM_PROTECT_CONC_CODE
      is ''急停保护试验结论''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_DETECT_CP_RSLT.SCRAM_FUNCTION_CONC_CODE
      is ''急停功能结论''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_DETECT_CP_RSLT.PWM_CONC_CODE
      is ''PWM功率调节试验结论''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_DETECT_CP_RSLT.POWEROFF_CONC_CODE
      is ''掉电保存功能试验结论''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_DETECT_CP_RSLT.THEFT_PREVENT_CONC_CODE
      is ''防盗保护试验结论''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_DETECT_CP_RSLT.CONTACT_CONC_CODE
      is ''直接接触防护试验结论''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_DETECT_CP_RSLT.VOLT_LOSS_CONC_CODE
      is ''供电电压消失试验结论''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_DETECT_CP_RSLT.INSULATED_RESISTANCE_CONC_CODE
      is ''绝缘电阻试验结论''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_DETECT_CP_RSLT.MAXOUT_POWER_CONC_CODE
      is ''最大恒功率输出试验结论''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_DETECT_CP_RSLT.CURRENT_PRECISION_CONC_CODE
      is ''稳流精度试验结论''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_DETECT_CP_RSLT.VOLT_PRECISION_CONC_CODE
      is ''稳压精度试验结论''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_DETECT_CP_RSLT.EFFICIENCY_CONC_CODE
      is ''效率试验结论''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_DETECT_CP_RSLT.PF_CONC_CODE
      is ''功率因数试验结论''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_DETECT_CP_RSLT.VOLT_RIPPLE_CONC_CODE
      is ''电压纹波因数试验结论''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_DETECT_CP_RSLT.VOLT_LIMIT_CONC_CODE
      is ''限压特性试验结论''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_DETECT_CP_RSLT.CURRENT_LIMIT_CONC_CODE
      is ''限流特性试验结论''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_DETECT_CP_RSLT.LOWVOLT_AUXILIARY_CONC_CODE
      is ''低压辅助电源试验结论''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_DETECT_CP_RSLT.STANDBY_POWER_CONC_CODE
      is ''待机功耗试验结论''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_DETECT_CP_RSLT.POWER_ALLOC_CONC_CODE
      is ''动态功率分配功能试验结论''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_DETECT_CP_RSLT.IN_OVERVOLT_CONC_CODE
      is ''输入过压保护试验结论''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_DETECT_CP_RSLT.IN_UNDERVOLT_CONC_CODE
      is ''输入欠压保护试验结论''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_DETECT_CP_RSLT.SCP_CONC_CODE
      is ''输出短路保护试验结论''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_DETECT_CP_RSLT.LEAKAGE_PROTECT_CONC_CODE
      is ''漏电保护试验结论''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_DETECT_CP_RSLT.CONTROL_VOLTLIMIT_CONC_CODE
      is ''控制导引电压限值测试结论''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_DETECT_CP_RSLT.CP_BREAK_CONC_CODE
      is ''CP断线测试结论''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_DETECT_CP_RSLT.CP_LANDING_CONC_CODE
      is ''CP接地测试结论''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_DETECT_CP_RSLT.OUT_OVERCURRENT_CONC_CODE
      is ''输出过流保护试验结论''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_DETECT_CP_RSLT.DISCONNECT_SWITCH_CONC_CODE
      is ''断开开关S2试验结论''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_DETECT_CP_RSLT.AC_PROTECT_LANDING_CONC_CODE
      is ''保护接地连续性测试结论（交流）''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_DETECT_CP_RSLT.DC_PROTECT_LANDING_CONC_CODE
      is ''保护接地连续性测试结论（直流）''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_DETECT_CP_RSLT.OPEN_PROTECT_CONC_CODE
      is ''开门保护试验结论''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_DETECT_CP_RSLT.IN_IMPULSECURRENT_CONC_CODE
      is ''输入冲击电流试验结论''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_DETECT_CP_RSLT.OUT_IMPULSECURRENT_CONC_CODE
      is ''输出冲击电流试验结论''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_DETECT_CP_RSLT.BATTERY_REVERSE_CONC_CODE
      is ''蓄电池反接试验结论''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_DETECT_CP_RSLT.AC_CONNECT_CONFIRM_CONC_CODE
      is ''连接确认测试结论（交流）''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_DETECT_CP_RSLT.DC_CONNECT_CONFIRM_CONC_CODE
      is ''连接确认测试结论（直流）''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_DETECT_CP_RSLT.SELFEXAM_CONC_CODE
      is ''自检阶段测试结论''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_DETECT_CP_RSLT.CHARGE_READY_CONC_CODE
      is ''充电准备就绪测试结论''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_DETECT_CP_RSLT.CHARGE_TEST_CONC_CODE
      is ''充电阶段测试结论''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_DETECT_CP_RSLT.CHARGE_END_CONC_CODE
      is ''正常充电结束测试''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_DETECT_CP_RSLT.CHARGE_SEQUENCE_CONC_CODE
      is ''充电连接控制时序测试结论''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_DETECT_CP_RSLT.PRECHARGE_CONC_CODE
      is ''预充电功能试验结论''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_DETECT_CP_RSLT.LOCK_CONC_CODE
      is ''锁止功能试验结论''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_DETECT_CP_RSLT.PLUG_LOCK_CONC_CODE
      is ''充电插头锁止功能测试结论''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_DETECT_CP_RSLT.SIGNAL_BREAK_CONC_CODE
      is ''连接检测信号断开试验结论''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_DETECT_CP_RSLT.INSULATE_ABNORMAL_CONC_CODE
      is ''绝缘异常试验结论''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_DETECT_CP_RSLT.DCOUTPUT_SHORT_CONC_CODE
      is ''直流输出回路短路检测功能试验结论''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_DETECT_CP_RSLT.COMM_BREAK_CONC_CODE
      is ''通信中断试验结论''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_DETECT_CP_RSLT.BATTERYVOLT_OVER_CONC_CODE
      is ''蓄电池电压大于通信报文电压值试验结论''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_DETECT_CP_RSLT.BATTERYVOLT_OUTRANGE_CONC_CODE
      is ''蓄电池电压超出充电机范围试验结论''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_DETECT_CP_RSLT.BATTERY_DUALPROTECT_CONC_CODE
      is ''蓄电池二重保护功能试验结论''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_DETECT_CP_RSLT.MAXVOLT_MISMATCH_CONC_CODE
      is ''车辆最高允许充电总电压不匹配试验结论''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_DETECT_CP_RSLT.POWERUP_MESSAGE_CONC_CODE
      is ''低压辅助上电及充电握手阶段报文测试结论''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_DETECT_CP_RSLT.CHARGECONFIG_MEAASGE_CONC_CODE
      is ''充电配置阶段报文测试结论''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_DETECT_CP_RSLT.CHARGE_MEAASGE_CONC_CODE
      is ''充电阶段报文测试结论''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_DETECT_CP_RSLT.CHARGEEND_MEAASGE_CONC_CODE
      is ''充电结束阶段报文测试结论''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_DETECT_CP_RSLT.MEASUREMENT_ERROR_CONC_CODE
      is ''计量工作误差结论''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_DETECT_CP_RSLT.INDICATIVE_ERROR_CONC_CODE
      is ''计量示值误差结论''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_DETECT_CP_RSLT.MEASURE_MONEYERR_CONC_CODE
      is ''计量付费金额误差结论''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_DETECT_CP_RSLT.MEASURE_CLOCKERR_CONC_CODE
      is ''计量时钟误差结论''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_DETECT_CP_RSLT.MEASURE_FUNCEXAM_CONC_CODE
      is ''计量功能检查结论''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_DETECT_CP_RSLT.MEASURE_EVENTSTROAGE_CONC_CODE
      is ''计量事件存储结论''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_DETECT_CP_RSLT.MEASURE_DATASTROAGE_CONC_CODE
      is ''计量数据存储结论''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_DETECT_CP_RSLT.MEASURE_RECEIPT_CONC_CODE
      is ''计量回执结论''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_DETECT_CP_RSLT.MEASURE_DISPLAY_CONC_CODE
      is ''计量显示结论''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_DETECT_CP_RSLT.MEASURE_SEAL_CONC_CODE
      is ''计量封印结论''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_DETECT_CP_RSLT.MEASURE_UNIFORMITY_CONC_CODE
      is ''计量一致性结论''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_DETECT_CP_RSLT.TEMP
      is ''温度''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_DETECT_CP_RSLT.HUMIDITY
      is ''湿度''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_DETECT_CP_RSLT.DETECT_PERSON
      is ''检定人员''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_DETECT_CP_RSLT.AUDIT_PERSON
      is ''审核人员''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_DETECT_CP_RSLT.WRITE_DATE
      is ''检定系统写入时间''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_DETECT_CP_RSLT.HANDLE_FLAG
      is ''平台处理标记''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_DETECT_CP_RSLT.HANDLE_DATE
      is ''平台处理时间''
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000017995 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Tables U WHERE U.TABLE_NAME = 'MT_INTUIT_CP_CONC';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
        create table MT_INTUIT_CP_CONC
        (
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
      dbms_output.put_line('脚本已跳过，因为 MT_INTUIT_CP_CONC 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table MT_INTUIT_CP_CONC
      is ''充电桩外观检查结论''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_INTUIT_CP_CONC.DETECT_TASK_NO
      is ''检定任务编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_INTUIT_CP_CONC.EQUIP_CATEG
      is ''设备类别''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_INTUIT_CP_CONC.SYS_NO
      is ''系统编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_INTUIT_CP_CONC.DETECT_EQUIP_NO
      is ''检定线台编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_INTUIT_CP_CONC.DETECT_UNIT_NO
      is ''检定单元编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_INTUIT_CP_CONC.BAR_CODE
      is ''设备条形码''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_INTUIT_CP_CONC.DETECT_DATE
      is ''检定时间''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_INTUIT_CP_CONC.PARA_INDEX
      is ''检定序号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_INTUIT_CP_CONC.DETECT_ITEM_POINT
      is ''检定点序号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_INTUIT_CP_CONC.IS_VALID
      is ''有效标志''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_INTUIT_CP_CONC.DETECT_CONTENT
      is ''测试项目''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_INTUIT_CP_CONC.CONC_CODE
      is ''检查结论''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_INTUIT_CP_CONC.WRITE_DATE
      is ''检定系统写入时间''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_INTUIT_CP_CONC.HANDLE_FLAG
      is ''处理标记''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_INTUIT_CP_CONC.HANDLE_DATE
      is ''处理时间''
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000018000 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Tables U WHERE U.TABLE_NAME = 'MT_INSIDE_CP_CONC';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
        create table MT_INSIDE_CP_CONC
        (
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
      dbms_output.put_line('脚本已跳过，因为 MT_INSIDE_CP_CONC 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table MT_INSIDE_CP_CONC
      is ''充电桩内部检查结论''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_INSIDE_CP_CONC.DETECT_TASK_NO
      is ''检定任务编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_INSIDE_CP_CONC.EQUIP_CATEG
      is ''设备类别''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_INSIDE_CP_CONC.SYS_NO
      is ''系统编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_INSIDE_CP_CONC.DETECT_EQUIP_NO
      is ''检定线台编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_INSIDE_CP_CONC.DETECT_UNIT_NO
      is ''检定单元编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_INSIDE_CP_CONC.BAR_CODE
      is ''设备条形码''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_INSIDE_CP_CONC.DETECT_DATE
      is ''检定时间''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_INSIDE_CP_CONC.PARA_INDEX
      is ''检定序号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_INSIDE_CP_CONC.DETECT_ITEM_POINT
      is ''检定点序号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_INSIDE_CP_CONC.IS_VALID
      is ''有效标志''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_INSIDE_CP_CONC.DETECT_CONTENT
      is ''测试项目''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_INSIDE_CP_CONC.CONC_CODE
      is ''检查结论''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_INSIDE_CP_CONC.WRITE_DATE
      is ''检定系统写入时间''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_INSIDE_CP_CONC.HANDLE_FLAG
      is ''处理标记''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_INSIDE_CP_CONC.HANDLE_DATE
      is ''处理时间''
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000018017 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Tables U WHERE U.TABLE_NAME = 'MT_WIRE_CP_CONC';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
        create table MT_WIRE_CP_CONC
        (
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
      dbms_output.put_line('脚本已跳过，因为 MT_WIRE_CP_CONC 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table MT_WIRE_CP_CONC
      is ''充电桩电缆管理及贮存检查结论''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_WIRE_CP_CONC.DETECT_TASK_NO
      is ''检定任务编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_WIRE_CP_CONC.EQUIP_CATEG
      is ''设备类别''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_WIRE_CP_CONC.SYS_NO
      is ''系统编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_WIRE_CP_CONC.DETECT_EQUIP_NO
      is ''检定线台编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_WIRE_CP_CONC.DETECT_UNIT_NO
      is ''检定单元编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_WIRE_CP_CONC.BAR_CODE
      is ''设备条形码''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_WIRE_CP_CONC.DETECT_DATE
      is ''检定时间''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_WIRE_CP_CONC.PARA_INDEX
      is ''检定序号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_WIRE_CP_CONC.DETECT_ITEM_POINT
      is ''检定点序号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_WIRE_CP_CONC.IS_VALID
      is ''有效标志''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_WIRE_CP_CONC.DETECT_CONTENT
      is ''测试项目''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_WIRE_CP_CONC.CONC_CODE
      is ''检查结论''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_WIRE_CP_CONC.WRITE_DATE
      is ''检定系统写入时间''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_WIRE_CP_CONC.HANDLE_FLAG
      is ''处理标记''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_WIRE_CP_CONC.HANDLE_DATE
      is ''处理时间''
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000018018 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Tables U WHERE U.TABLE_NAME = 'MT_SIGN_CP_CONC';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
        create table MT_SIGN_CP_CONC
        (
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
      dbms_output.put_line('脚本已跳过，因为 MT_SIGN_CP_CONC 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table MT_SIGN_CP_CONC
      is ''充电桩标志检查结论''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_SIGN_CP_CONC.DETECT_TASK_NO
      is ''检定任务编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_SIGN_CP_CONC.EQUIP_CATEG
      is ''设备类别''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_SIGN_CP_CONC.SYS_NO
      is ''系统编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_SIGN_CP_CONC.DETECT_EQUIP_NO
      is ''检定线台编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_SIGN_CP_CONC.DETECT_UNIT_NO
      is ''检定单元编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_SIGN_CP_CONC.BAR_CODE
      is ''设备条形码''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_SIGN_CP_CONC.DETECT_DATE
      is ''检定时间''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_SIGN_CP_CONC.PARA_INDEX
      is ''检定序号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_SIGN_CP_CONC.DETECT_ITEM_POINT
      is ''检定点序号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_SIGN_CP_CONC.IS_VALID
      is ''有效标志''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_SIGN_CP_CONC.DETECT_CONTENT
      is ''测试项目''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_SIGN_CP_CONC.CONC_CODE
      is ''检查结论''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_SIGN_CP_CONC.WRITE_DATE
      is ''检定系统写入时间''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_SIGN_CP_CONC.HANDLE_FLAG
      is ''处理标记''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_SIGN_CP_CONC.HANDLE_DATE
      is ''处理时间''
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000018019 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Tables U WHERE U.TABLE_NAME = 'MT_COMPOSE_CP_CONC';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
        create table MT_COMPOSE_CP_CONC
        (
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
      dbms_output.put_line('脚本已跳过，因为 MT_COMPOSE_CP_CONC 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table MT_COMPOSE_CP_CONC
      is ''充电桩基本构成检查结论''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_COMPOSE_CP_CONC.DETECT_TASK_NO
      is ''检定任务编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_COMPOSE_CP_CONC.EQUIP_CATEG
      is ''设备类别''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_COMPOSE_CP_CONC.SYS_NO
      is ''系统编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_COMPOSE_CP_CONC.DETECT_EQUIP_NO
      is ''检定线台编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_COMPOSE_CP_CONC.DETECT_UNIT_NO
      is ''检定单元编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_COMPOSE_CP_CONC.BAR_CODE
      is ''设备条形码''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_COMPOSE_CP_CONC.DETECT_DATE
      is ''检定时间''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_COMPOSE_CP_CONC.PARA_INDEX
      is ''检定序号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_COMPOSE_CP_CONC.DETECT_ITEM_POINT
      is ''检定点序号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_COMPOSE_CP_CONC.IS_VALID
      is ''有效标志''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_COMPOSE_CP_CONC.DETECT_CONTENT
      is ''测试项目''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_COMPOSE_CP_CONC.CONC_CODE
      is ''检查结论''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_COMPOSE_CP_CONC.WRITE_DATE
      is ''检定系统写入时间''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_COMPOSE_CP_CONC.HANDLE_FLAG
      is ''处理标记''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_COMPOSE_CP_CONC.HANDLE_DATE
      is ''处理时间''
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000018020 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Tables U WHERE U.TABLE_NAME = 'MT_CONNECT_CP_CONC';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
        create table MT_CONNECT_CP_CONC
        (
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
      dbms_output.put_line('脚本已跳过，因为 MT_CONNECT_CP_CONC 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table MT_CONNECT_CP_CONC
      is ''充电桩充电模式和连接方式检查结论''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_CONNECT_CP_CONC.DETECT_TASK_NO
      is ''检定任务编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_CONNECT_CP_CONC.EQUIP_CATEG
      is ''设备类别''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_CONNECT_CP_CONC.SYS_NO
      is ''系统编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_CONNECT_CP_CONC.DETECT_EQUIP_NO
      is ''检定线台编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_CONNECT_CP_CONC.DETECT_UNIT_NO
      is ''检定单元编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_CONNECT_CP_CONC.BAR_CODE
      is ''设备条形码''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_CONNECT_CP_CONC.DETECT_DATE
      is ''检定时间''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_CONNECT_CP_CONC.PARA_INDEX
      is ''检定序号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_CONNECT_CP_CONC.DETECT_ITEM_POINT
      is ''检定点序号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_CONNECT_CP_CONC.IS_VALID
      is ''有效标志''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_CONNECT_CP_CONC.DETECT_CONTENT
      is ''测试项目''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_CONNECT_CP_CONC.CONC_CODE
      is ''检查结论''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_CONNECT_CP_CONC.WRITE_DATE
      is ''检定系统写入时间''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_CONNECT_CP_CONC.HANDLE_FLAG
      is ''处理标记''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_CONNECT_CP_CONC.HANDLE_DATE
      is ''处理时间''
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000018038 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Tables U WHERE U.TABLE_NAME = 'MT_DISPLAY_CP_CONC';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
        create table MT_DISPLAY_CP_CONC
        (
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
      dbms_output.put_line('脚本已跳过，因为 MT_DISPLAY_CP_CONC 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table MT_DISPLAY_CP_CONC
      is ''充电桩显示功能检查结论''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_DISPLAY_CP_CONC.DETECT_TASK_NO
      is ''检定任务编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_DISPLAY_CP_CONC.EQUIP_CATEG
      is ''设备类别''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_DISPLAY_CP_CONC.SYS_NO
      is ''系统编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_DISPLAY_CP_CONC.DETECT_EQUIP_NO
      is ''检定线台编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_DISPLAY_CP_CONC.DETECT_UNIT_NO
      is ''检定单元编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_DISPLAY_CP_CONC.BAR_CODE
      is ''设备条形码''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_DISPLAY_CP_CONC.DETECT_DATE
      is ''检定时间''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_DISPLAY_CP_CONC.PARA_INDEX
      is ''检定序号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_DISPLAY_CP_CONC.DETECT_ITEM_POINT
      is ''检定点序号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_DISPLAY_CP_CONC.IS_VALID
      is ''有效标志''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_DISPLAY_CP_CONC.DETECT_CONTENT
      is ''测试项目''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_DISPLAY_CP_CONC.CONC_CODE
      is ''检查结论''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_DISPLAY_CP_CONC.WRITE_DATE
      is ''检定系统写入时间''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_DISPLAY_CP_CONC.HANDLE_FLAG
      is ''处理标记''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_DISPLAY_CP_CONC.HANDLE_DATE
      is ''处理时间''
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000018039 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Tables U WHERE U.TABLE_NAME = 'MT_IN_CP_CONC';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
        create table MT_IN_CP_CONC
        (
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
      dbms_output.put_line('脚本已跳过，因为 MT_IN_CP_CONC 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table MT_IN_CP_CONC
      is ''充电桩输入功能试验结论''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_IN_CP_CONC.DETECT_TASK_NO
      is ''检定任务编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_IN_CP_CONC.EQUIP_CATEG
      is ''设备类别''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_IN_CP_CONC.SYS_NO
      is ''系统编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_IN_CP_CONC.DETECT_EQUIP_NO
      is ''检定线台编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_IN_CP_CONC.DETECT_UNIT_NO
      is ''检定单元编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_IN_CP_CONC.BAR_CODE
      is ''设备条形码''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_IN_CP_CONC.DETECT_DATE
      is ''检定时间''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_IN_CP_CONC.PORT_CODE
      is ''枪口编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_IN_CP_CONC.PARA_INDEX
      is ''检定序号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_IN_CP_CONC.DETECT_ITEM_POINT
      is ''检定点序号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_IN_CP_CONC.IS_VALID
      is ''有效标志''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_IN_CP_CONC.DETECT_CONTENT
      is ''测试项目''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_IN_CP_CONC.CONC_CODE
      is ''检查结论''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_IN_CP_CONC.WRITE_DATE
      is ''检定系统写入时间''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_IN_CP_CONC.HANDLE_FLAG
      is ''处理标记''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_IN_CP_CONC.HANDLE_DATE
      is ''处理时间''
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000018041 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Tables U WHERE U.TABLE_NAME = 'MT_LANDING_CP_CONC';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
        create table MT_LANDING_CP_CONC
        (
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
      dbms_output.put_line('脚本已跳过，因为 MT_LANDING_CP_CONC 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table MT_LANDING_CP_CONC
      is ''充电桩接地要求试验结论''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_LANDING_CP_CONC.DETECT_TASK_NO
      is ''检定任务编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_LANDING_CP_CONC.EQUIP_CATEG
      is ''设备类别''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_LANDING_CP_CONC.SYS_NO
      is ''系统编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_LANDING_CP_CONC.DETECT_EQUIP_NO
      is ''检定线台编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_LANDING_CP_CONC.DETECT_UNIT_NO
      is ''检定单元编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_LANDING_CP_CONC.BAR_CODE
      is ''设备条形码''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_LANDING_CP_CONC.DETECT_DATE
      is ''检定时间''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_LANDING_CP_CONC.PARA_INDEX
      is ''检定序号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_LANDING_CP_CONC.DETECT_ITEM_POINT
      is ''检定点序号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_LANDING_CP_CONC.IS_VALID
      is ''有效标志''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_LANDING_CP_CONC.DETECT_CONTENT
      is ''测试项目''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_LANDING_CP_CONC.CONC_CODE
      is ''检查结论''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_LANDING_CP_CONC.WRITE_DATE
      is ''检定系统写入时间''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_LANDING_CP_CONC.HANDLE_FLAG
      is ''处理标记''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_LANDING_CP_CONC.HANDLE_DATE
      is ''处理时间''
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000018042 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Tables U WHERE U.TABLE_NAME = 'MT_CLEARANCE_CREEPAGE_CP_CONC';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
        create table MT_CLEARANCE_CREEPAGE_CP_CONC
        (
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
      dbms_output.put_line('脚本已跳过，因为 MT_CLEARANCE_CREEPAGE_CP_CONC 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table MT_CLEARANCE_CREEPAGE_CP_CONC
      is ''充电桩电气间隙和爬电距离试验结论''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_CLEARANCE_CREEPAGE_CP_CONC.DETECT_TASK_NO
      is ''检定任务编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_CLEARANCE_CREEPAGE_CP_CONC.EQUIP_CATEG
      is ''设备类别''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_CLEARANCE_CREEPAGE_CP_CONC.SYS_NO
      is ''系统编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_CLEARANCE_CREEPAGE_CP_CONC.DETECT_EQUIP_NO
      is ''检定线台编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_CLEARANCE_CREEPAGE_CP_CONC.DETECT_UNIT_NO
      is ''检定单元编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_CLEARANCE_CREEPAGE_CP_CONC.BAR_CODE
      is ''设备条形码''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_CLEARANCE_CREEPAGE_CP_CONC.DETECT_DATE
      is ''检定时间''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_CLEARANCE_CREEPAGE_CP_CONC.PARA_INDEX
      is ''检定序号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_CLEARANCE_CREEPAGE_CP_CONC.DETECT_ITEM_POINT
      is ''检定点序号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_CLEARANCE_CREEPAGE_CP_CONC.IS_VALID
      is ''有效标志''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_CLEARANCE_CREEPAGE_CP_CONC.MEASURE_POS
      is ''测量位置''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_CLEARANCE_CREEPAGE_CP_CONC.ELEC_CLEARANCE
      is ''电气间隙（mm）''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_CLEARANCE_CREEPAGE_CP_CONC.CREEPAGE_DIS
      is ''爬电距离（mm）''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_CLEARANCE_CREEPAGE_CP_CONC.CONC_CODE
      is ''检查结论''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_CLEARANCE_CREEPAGE_CP_CONC.WRITE_DATE
      is ''检定系统写入时间''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_CLEARANCE_CREEPAGE_CP_CONC.HANDLE_FLAG
      is ''处理标记''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_CLEARANCE_CREEPAGE_CP_CONC.HANDLE_DATE
      is ''处理时间''
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000018044 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Tables U WHERE U.TABLE_NAME = 'MT_INSU_RESIST_CP_CONC';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
        create table MT_INSU_RESIST_CP_CONC
        (
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
        write_date DATE,
        handle_flag VARCHAR2(8),
        handle_date DATE
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
      dbms_output.put_line('脚本已跳过，因为 MT_INSU_RESIST_CP_CONC 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table MT_INSU_RESIST_CP_CONC
      is ''充电桩绝缘电阻试验结论''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_INSU_RESIST_CP_CONC.DETECT_TASK_NO
      is ''检定任务编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_INSU_RESIST_CP_CONC.EQUIP_CATEG
      is ''设备类别''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_INSU_RESIST_CP_CONC.SYS_NO
      is ''系统编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_INSU_RESIST_CP_CONC.DETECT_EQUIP_NO
      is ''检定线台编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_INSU_RESIST_CP_CONC.DETECT_UNIT_NO
      is ''检定单元编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_INSU_RESIST_CP_CONC.BAR_CODE
      is ''设备条形码''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_INSU_RESIST_CP_CONC.DETECT_DATE
      is ''检定时间''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_INSU_RESIST_CP_CONC.PORT_CODE
      is ''枪口编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_INSU_RESIST_CP_CONC.PARA_INDEX
      is ''检定序号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_INSU_RESIST_CP_CONC.DETECT_ITEM_POINT
      is ''检定点序号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_INSU_RESIST_CP_CONC.IS_VALID
      is ''有效标志''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_INSU_RESIST_CP_CONC.TEST_SITE
      is ''测试部位''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_INSU_RESIST_CP_CONC.ELEC_RESISTANCE
      is ''电阻（MΩ）''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_INSU_RESIST_CP_CONC.CONC_CODE
      is ''检查结论''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_INSU_RESIST_CP_CONC.WRITE_DATE
      is ''检定系统写入时间''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_INSU_RESIST_CP_CONC.HANDLE_FLAG
      is ''处理标记''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_INSU_RESIST_CP_CONC.HANDLE_DATE
      is ''处理时间''
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000018049 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Tables U WHERE U.TABLE_NAME = 'MT_ONLOAD_DECILITER_CP_CONC';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
        create table MT_ONLOAD_DECILITER_CP_CONC
        (
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
      dbms_output.put_line('脚本已跳过，因为 MT_ONLOAD_DECILITER_CP_CONC 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table MT_ONLOAD_DECILITER_CP_CONC
      is ''充电桩带载分合电路试验结论''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_ONLOAD_DECILITER_CP_CONC.DETECT_TASK_NO
      is ''检定任务编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_ONLOAD_DECILITER_CP_CONC.EQUIP_CATEG
      is ''设备类别''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_ONLOAD_DECILITER_CP_CONC.SYS_NO
      is ''系统编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_ONLOAD_DECILITER_CP_CONC.DETECT_EQUIP_NO
      is ''检定线台编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_ONLOAD_DECILITER_CP_CONC.DETECT_UNIT_NO
      is ''检定单元编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_ONLOAD_DECILITER_CP_CONC.BAR_CODE
      is ''设备条形码''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_ONLOAD_DECILITER_CP_CONC.DETECT_DATE
      is ''检定时间''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_ONLOAD_DECILITER_CP_CONC.PORT_CODE
      is ''枪口编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_ONLOAD_DECILITER_CP_CONC.PARA_INDEX
      is ''检定序号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_ONLOAD_DECILITER_CP_CONC.DETECT_ITEM_POINT
      is ''检定点序号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_ONLOAD_DECILITER_CP_CONC.IS_VALID
      is ''有效标志''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_ONLOAD_DECILITER_CP_CONC.DETECT_CONTENT
      is ''测试项目''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_ONLOAD_DECILITER_CP_CONC.CONC_CODE
      is ''检查结论''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_ONLOAD_DECILITER_CP_CONC.WRITE_DATE
      is ''检定系统写入时间''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_ONLOAD_DECILITER_CP_CONC.HANDLE_FLAG
      is ''处理标记''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_ONLOAD_DECILITER_CP_CONC.HANDLE_DATE
      is ''处理时间''
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000018060 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Tables U WHERE U.TABLE_NAME = 'MT_PWM_CP_CONC';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
        create table MT_PWM_CP_CONC
        (
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
      dbms_output.put_line('脚本已跳过，因为 MT_PWM_CP_CONC 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table MT_PWM_CP_CONC
      is ''充电桩PWM功率调节试验结论''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_PWM_CP_CONC.DETECT_TASK_NO
      is ''检定任务编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_PWM_CP_CONC.EQUIP_CATEG
      is ''设备类别''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_PWM_CP_CONC.SYS_NO
      is ''系统编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_PWM_CP_CONC.DETECT_EQUIP_NO
      is ''检定线台编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_PWM_CP_CONC.DETECT_UNIT_NO
      is ''检定单元编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_PWM_CP_CONC.BAR_CODE
      is ''设备条形码''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_PWM_CP_CONC.DETECT_DATE
      is ''检定时间''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_PWM_CP_CONC.PORT_CODE
      is ''枪口编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_PWM_CP_CONC.PARA_INDEX
      is ''检定序号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_PWM_CP_CONC.DETECT_ITEM_POINT
      is ''检定点序号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_PWM_CP_CONC.IS_VALID
      is ''有效标志''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_PWM_CP_CONC.DOWN_CURRENT
      is ''下发电流(A)''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_PWM_CP_CONC.OUT_PWM
      is ''输出占空比(%)''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_PWM_CP_CONC.ERROR
      is ''误差(%)''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_PWM_CP_CONC.CONC_CODE
      is ''检查结论''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_PWM_CP_CONC.WRITE_DATE
      is ''检定系统写入时间''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_PWM_CP_CONC.HANDLE_FLAG
      is ''处理标记''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_PWM_CP_CONC.HANDLE_DATE
      is ''处理时间''
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000018061 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Tables U WHERE U.TABLE_NAME = 'MT_IN_OVERVOLT_CP_CONC';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
        create table MT_IN_OVERVOLT_CP_CONC
        (
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
      dbms_output.put_line('脚本已跳过，因为 MT_IN_OVERVOLT_CP_CONC 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table MT_IN_OVERVOLT_CP_CONC
      is ''充电桩输入过压保护试验结论''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_IN_OVERVOLT_CP_CONC.DETECT_TASK_NO
      is ''检定任务编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_IN_OVERVOLT_CP_CONC.EQUIP_CATEG
      is ''设备类别''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_IN_OVERVOLT_CP_CONC.SYS_NO
      is ''系统编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_IN_OVERVOLT_CP_CONC.DETECT_EQUIP_NO
      is ''检定线台编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_IN_OVERVOLT_CP_CONC.DETECT_UNIT_NO
      is ''检定单元编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_IN_OVERVOLT_CP_CONC.BAR_CODE
      is ''设备条形码''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_IN_OVERVOLT_CP_CONC.DETECT_DATE
      is ''检定时间''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_IN_OVERVOLT_CP_CONC.PORT_CODE
      is ''枪口编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_IN_OVERVOLT_CP_CONC.PARA_INDEX
      is ''检定序号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_IN_OVERVOLT_CP_CONC.DETECT_ITEM_POINT
      is ''检定点序号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_IN_OVERVOLT_CP_CONC.IS_VALID
      is ''有效标志''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_IN_OVERVOLT_CP_CONC.SET_VALUE
      is ''设定值（V）''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_IN_OVERVOLT_CP_CONC.ACTION_VALUE
      is ''动作值（V）''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_IN_OVERVOLT_CP_CONC.CONC_CODE
      is ''检查结论''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_IN_OVERVOLT_CP_CONC.WRITE_DATE
      is ''检定系统写入时间''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_IN_OVERVOLT_CP_CONC.HANDLE_FLAG
      is ''处理标记''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_IN_OVERVOLT_CP_CONC.HANDLE_DATE
      is ''处理时间''
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000018063 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Tables U WHERE U.TABLE_NAME = 'MT_IN_UNDERVOLT_CP_CONC';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
        create table MT_IN_UNDERVOLT_CP_CONC
        (
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
      dbms_output.put_line('脚本已跳过，因为 MT_IN_UNDERVOLT_CP_CONC 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table MT_IN_UNDERVOLT_CP_CONC
      is ''充电桩输入欠压保护试验结论''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_IN_UNDERVOLT_CP_CONC.DETECT_TASK_NO
      is ''检定任务编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_IN_UNDERVOLT_CP_CONC.EQUIP_CATEG
      is ''设备类别''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_IN_UNDERVOLT_CP_CONC.SYS_NO
      is ''系统编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_IN_UNDERVOLT_CP_CONC.DETECT_EQUIP_NO
      is ''检定线台编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_IN_UNDERVOLT_CP_CONC.DETECT_UNIT_NO
      is ''检定单元编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_IN_UNDERVOLT_CP_CONC.BAR_CODE
      is ''设备条形码''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_IN_UNDERVOLT_CP_CONC.DETECT_DATE
      is ''检定时间''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_IN_UNDERVOLT_CP_CONC.PORT_CODE
      is ''枪口编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_IN_UNDERVOLT_CP_CONC.PARA_INDEX
      is ''检定序号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_IN_UNDERVOLT_CP_CONC.DETECT_ITEM_POINT
      is ''检定点序号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_IN_UNDERVOLT_CP_CONC.IS_VALID
      is ''有效标志''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_IN_UNDERVOLT_CP_CONC.SET_VALUE
      is ''设定值（V）''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_IN_UNDERVOLT_CP_CONC.ACTION_VALUE
      is ''动作值（V）''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_IN_UNDERVOLT_CP_CONC.CONC_CODE
      is ''检查结论''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_IN_UNDERVOLT_CP_CONC.WRITE_DATE
      is ''检定系统写入时间''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_IN_UNDERVOLT_CP_CONC.HANDLE_FLAG
      is ''处理标记''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_IN_UNDERVOLT_CP_CONC.HANDLE_DATE
      is ''处理时间''
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000018064 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Tables U WHERE U.TABLE_NAME = 'MT_SCP_CP_CONC';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
        create table MT_SCP_CP_CONC
        (
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
      dbms_output.put_line('脚本已跳过，因为 MT_SCP_CP_CONC 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table MT_SCP_CP_CONC
      is ''充电桩输出短路保护试验结论''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_SCP_CP_CONC.DETECT_TASK_NO
      is ''检定任务编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_SCP_CP_CONC.EQUIP_CATEG
      is ''设备类别''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_SCP_CP_CONC.SYS_NO
      is ''系统编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_SCP_CP_CONC.DETECT_EQUIP_NO
      is ''检定线台编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_SCP_CP_CONC.DETECT_UNIT_NO
      is ''检定单元编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_SCP_CP_CONC.BAR_CODE
      is ''设备条形码''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_SCP_CP_CONC.DETECT_DATE
      is ''检定时间''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_SCP_CP_CONC.PARA_INDEX
      is ''检定序号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_SCP_CP_CONC.DETECT_ITEM_POINT
      is ''检定点序号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_SCP_CP_CONC.IS_VALID
      is ''有效标志''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_SCP_CP_CONC.DETECT_CONTENT
      is ''测试项目''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_SCP_CP_CONC.CONC_CODE
      is ''检查结论''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_SCP_CP_CONC.WRITE_DATE
      is ''检定系统写入时间''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_SCP_CP_CONC.HANDLE_FLAG
      is ''处理标记''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_SCP_CP_CONC.HANDLE_DATE
      is ''处理时间''
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000018065 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Tables U WHERE U.TABLE_NAME = 'MT_LOCK_CP_CONC';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
        create table MT_LOCK_CP_CONC
        (
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
      dbms_output.put_line('脚本已跳过，因为 MT_LOCK_CP_CONC 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table MT_LOCK_CP_CONC
      is ''充电桩锁止功能试验结论''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_LOCK_CP_CONC.DETECT_TASK_NO
      is ''检定任务编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_LOCK_CP_CONC.EQUIP_CATEG
      is ''设备类别''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_LOCK_CP_CONC.SYS_NO
      is ''系统编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_LOCK_CP_CONC.DETECT_EQUIP_NO
      is ''检定线台编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_LOCK_CP_CONC.DETECT_UNIT_NO
      is ''检定单元编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_LOCK_CP_CONC.BAR_CODE
      is ''设备条形码''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_LOCK_CP_CONC.DETECT_DATE
      is ''检定时间''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_LOCK_CP_CONC.PORT_CODE
      is ''枪口编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_LOCK_CP_CONC.PARA_INDEX
      is ''检定序号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_LOCK_CP_CONC.DETECT_ITEM_POINT
      is ''检定点序号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_LOCK_CP_CONC.IS_VALID
      is ''有效标志''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_LOCK_CP_CONC.DETECT_CONTENT
      is ''测试项目''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_LOCK_CP_CONC.CONC_CODE
      is ''检查结论''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_LOCK_CP_CONC.WRITE_DATE
      is ''检定系统写入时间''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_LOCK_CP_CONC.HANDLE_FLAG
      is ''处理标记''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_LOCK_CP_CONC.HANDLE_DATE
      is ''处理时间''
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000018074 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Tables U WHERE U.TABLE_NAME = 'MT_CONTROL_VOLTLIMIT_CP_CONC';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
        create table MT_CONTROL_VOLTLIMIT_CP_CONC
        (
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
        tablespace MPAC_MT
        pctfree 10
        initrans 1
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
      dbms_output.put_line('脚本已跳过，因为 MT_CONTROL_VOLTLIMIT_CP_CONC 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table MT_CONTROL_VOLTLIMIT_CP_CONC
      is ''充电桩控制导引电压限值测试结论''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_CONTROL_VOLTLIMIT_CP_CONC.DETECT_TASK_NO
      is ''检定任务编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_CONTROL_VOLTLIMIT_CP_CONC.EQUIP_CATEG
      is ''设备类别''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_CONTROL_VOLTLIMIT_CP_CONC.SYS_NO
      is ''系统编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_CONTROL_VOLTLIMIT_CP_CONC.DETECT_EQUIP_NO
      is ''检定线台编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_CONTROL_VOLTLIMIT_CP_CONC.DETECT_UNIT_NO
      is ''检定单元编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_CONTROL_VOLTLIMIT_CP_CONC.BAR_CODE
      is ''设备条形码''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_CONTROL_VOLTLIMIT_CP_CONC.DETECT_DATE
      is ''检定时间''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_CONTROL_VOLTLIMIT_CP_CONC.PORT_CODE
      is ''枪口编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_CONTROL_VOLTLIMIT_CP_CONC.PARA_INDEX
      is ''检定序号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_CONTROL_VOLTLIMIT_CP_CONC.DETECT_ITEM_POINT
      is ''检定点序号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_CONTROL_VOLTLIMIT_CP_CONC.IS_VALID
      is ''有效标志''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_CONTROL_VOLTLIMIT_CP_CONC.DETECT_CONTENT
      is ''测试项目''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_CONTROL_VOLTLIMIT_CP_CONC.TEST1_VOLT_STATE
      is ''检测点1电压状态''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_CONTROL_VOLTLIMIT_CP_CONC.TEST1_VOLT_VALUE
      is ''检测点1电压测量值''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_CONTROL_VOLTLIMIT_CP_CONC.IS_CHARGE
      is ''是否允许充电或正常充电''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_CONTROL_VOLTLIMIT_CP_CONC.IS_WARN
      is ''是否有警告提示''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_CONTROL_VOLTLIMIT_CP_CONC.CONC_CODE
      is ''检查结论''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_CONTROL_VOLTLIMIT_CP_CONC.WRITE_DATE
      is ''检定系统写入时间''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_CONTROL_VOLTLIMIT_CP_CONC.HANDLE_FLAG
      is ''处理标记''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_CONTROL_VOLTLIMIT_CP_CONC.HANDLE_DATE
      is ''处理时间''
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000018075 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Tables U WHERE U.TABLE_NAME = 'MT_PLUG_LOCK_CP_CONC';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
        create table MT_PLUG_LOCK_CP_CONC
        (
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
      dbms_output.put_line('脚本已跳过，因为 MT_PLUG_LOCK_CP_CONC 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table MT_PLUG_LOCK_CP_CONC
      is ''充电桩充电插头锁止功能测试结论''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_PLUG_LOCK_CP_CONC.DETECT_TASK_NO
      is ''检定任务编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_PLUG_LOCK_CP_CONC.EQUIP_CATEG
      is ''设备类别''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_PLUG_LOCK_CP_CONC.SYS_NO
      is ''系统编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_PLUG_LOCK_CP_CONC.DETECT_EQUIP_NO
      is ''检定线台编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_PLUG_LOCK_CP_CONC.DETECT_UNIT_NO
      is ''检定单元编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_PLUG_LOCK_CP_CONC.BAR_CODE
      is ''设备条形码''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_PLUG_LOCK_CP_CONC.DETECT_DATE
      is ''检定时间''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_PLUG_LOCK_CP_CONC.PORT_CODE
      is ''枪口编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_PLUG_LOCK_CP_CONC.PARA_INDEX
      is ''检定序号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_PLUG_LOCK_CP_CONC.DETECT_ITEM_POINT
      is ''检定点序号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_PLUG_LOCK_CP_CONC.IS_VALID
      is ''有效标志''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_PLUG_LOCK_CP_CONC.DETECT_CONTENT
      is ''测试项目''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_PLUG_LOCK_CP_CONC.CONC_CODE
      is ''检查结论''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_PLUG_LOCK_CP_CONC.WRITE_DATE
      is ''检定系统写入时间''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_PLUG_LOCK_CP_CONC.HANDLE_FLAG
      is ''处理标记''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_PLUG_LOCK_CP_CONC.HANDLE_DATE
      is ''处理时间''
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000018077 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Tables U WHERE U.TABLE_NAME = 'MT_CONNECT_CONFIRM_CP_CONC';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
        create table MT_CONNECT_CONFIRM_CP_CONC
        (
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
      dbms_output.put_line('脚本已跳过，因为 MT_CONNECT_CONFIRM_CP_CONC 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table MT_CONNECT_CONFIRM_CP_CONC
      is ''充电桩连接确认测试结论（交流）''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_CONNECT_CONFIRM_CP_CONC.DETECT_TASK_NO
      is ''检定任务编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_CONNECT_CONFIRM_CP_CONC.EQUIP_CATEG
      is ''设备类别''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_CONNECT_CONFIRM_CP_CONC.SYS_NO
      is ''系统编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_CONNECT_CONFIRM_CP_CONC.DETECT_EQUIP_NO
      is ''检定线台编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_CONNECT_CONFIRM_CP_CONC.DETECT_UNIT_NO
      is ''检定单元编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_CONNECT_CONFIRM_CP_CONC.BAR_CODE
      is ''设备条形码''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_CONNECT_CONFIRM_CP_CONC.DETECT_DATE
      is ''检定时间''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_CONNECT_CONFIRM_CP_CONC.PORT_CODE
      is ''枪口编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_CONNECT_CONFIRM_CP_CONC.PARA_INDEX
      is ''检定序号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_CONNECT_CONFIRM_CP_CONC.DETECT_ITEM_POINT
      is ''检定点序号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_CONNECT_CONFIRM_CP_CONC.IS_VALID
      is ''有效标志''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_CONNECT_CONFIRM_CP_CONC.DETECT_CONTENT
      is ''测试项目''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_CONNECT_CONFIRM_CP_CONC.FOUT_VALUE
      is ''输出频率测量值（Hz）''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_CONNECT_CONFIRM_CP_CONC.FOUT_ERROR
      is ''输出频率误差（Hz）''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_CONNECT_CONFIRM_CP_CONC.OUT_PWM_SET
      is ''输出占空比设定值（%）''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_CONNECT_CONFIRM_CP_CONC.OUT_PWM_VALUE
      is ''输出占空比测量值（%）''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_CONNECT_CONFIRM_CP_CONC.OUT_PWM_ERROR
      is ''输出占空比误差（%）''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_CONNECT_CONFIRM_CP_CONC.RISE_TIME_VALUE
      is ''上升时间测量值（μs）''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_CONNECT_CONFIRM_CP_CONC.FALL_TIME_VALUE
      is ''下降时间测量值（μs）''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_CONNECT_CONFIRM_CP_CONC.CONC_CODE
      is ''检查结论''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_CONNECT_CONFIRM_CP_CONC.WRITE_DATE
      is ''检定系统写入时间''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_CONNECT_CONFIRM_CP_CONC.HANDLE_FLAG
      is ''处理标记''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_CONNECT_CONFIRM_CP_CONC.HANDLE_DATE
      is ''处理时间''
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000018078 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Tables U WHERE U.TABLE_NAME = 'MT_STANDBY_POWER_CP_CONC';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
        create table MT_STANDBY_POWER_CP_CONC
        (
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
      dbms_output.put_line('脚本已跳过，因为 MT_STANDBY_POWER_CP_CONC 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table MT_STANDBY_POWER_CP_CONC
      is ''充电桩待机功耗试验结论''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_STANDBY_POWER_CP_CONC.DETECT_TASK_NO
      is ''检定任务编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_STANDBY_POWER_CP_CONC.EQUIP_CATEG
      is ''设备类别''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_STANDBY_POWER_CP_CONC.SYS_NO
      is ''系统编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_STANDBY_POWER_CP_CONC.DETECT_EQUIP_NO
      is ''检定线台编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_STANDBY_POWER_CP_CONC.DETECT_UNIT_NO
      is ''检定单元编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_STANDBY_POWER_CP_CONC.BAR_CODE
      is ''设备条形码''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_STANDBY_POWER_CP_CONC.DETECT_DATE
      is ''检定时间''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_STANDBY_POWER_CP_CONC.PARA_INDEX
      is ''检定序号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_STANDBY_POWER_CP_CONC.DETECT_ITEM_POINT
      is ''检定点序号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_STANDBY_POWER_CP_CONC.IS_VALID
      is ''有效标志''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_STANDBY_POWER_CP_CONC.PORT_NUM
      is ''充电接口数量''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_STANDBY_POWER_CP_CONC.STANDBY_POWER
      is ''待机功耗(W)''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_STANDBY_POWER_CP_CONC.CONC_CODE
      is ''检查结论''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_STANDBY_POWER_CP_CONC.WRITE_DATE
      is ''检定系统写入时间''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_STANDBY_POWER_CP_CONC.HANDLE_FLAG
      is ''处理标记''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_STANDBY_POWER_CP_CONC.HANDLE_DATE
      is ''处理时间''
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000018082 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Tables U WHERE U.TABLE_NAME = 'MT_MEASUREMENT_ERROR_CP_CONC';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
        create table MT_MEASUREMENT_ERROR_CP_CONC
        (
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
      dbms_output.put_line('脚本已跳过，因为 MT_MEASUREMENT_ERROR_CP_CONC 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table MT_MEASUREMENT_ERROR_CP_CONC
      is ''充电桩计量工作误差结论''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_MEASUREMENT_ERROR_CP_CONC.DETECT_TASK_NO
      is ''检定任务编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_MEASUREMENT_ERROR_CP_CONC.EQUIP_CATEG
      is ''设备类别''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_MEASUREMENT_ERROR_CP_CONC.SYS_NO
      is ''系统编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_MEASUREMENT_ERROR_CP_CONC.DETECT_EQUIP_NO
      is ''检定线台编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_MEASUREMENT_ERROR_CP_CONC.DETECT_UNIT_NO
      is ''检定单元编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_MEASUREMENT_ERROR_CP_CONC.BAR_CODE
      is ''设备条形码''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_MEASUREMENT_ERROR_CP_CONC.DETECT_DATE
      is ''检定时间''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_MEASUREMENT_ERROR_CP_CONC.PORT_CODE
      is ''枪口编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_MEASUREMENT_ERROR_CP_CONC.PARA_INDEX
      is ''检定序号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_MEASUREMENT_ERROR_CP_CONC.DETECT_ITEM_POINT
      is ''检定点序号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_MEASUREMENT_ERROR_CP_CONC.IS_VALID
      is ''有效标志''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_MEASUREMENT_ERROR_CP_CONC.IN_VOLT
      is ''输入电压(V)''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_MEASUREMENT_ERROR_CP_CONC.OUT_CURRENT
      is ''输出电流(A)''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_MEASUREMENT_ERROR_CP_CONC.OUT_VOLT
      is ''输出电压(V)''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_MEASUREMENT_ERROR_CP_CONC.RELATIVE_ERROR
      is ''实际相对误差(%)''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_MEASUREMENT_ERROR_CP_CONC.CONC_CODE
      is ''检查结论''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_MEASUREMENT_ERROR_CP_CONC.WRITE_DATE
      is ''检定系统写入时间''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_MEASUREMENT_ERROR_CP_CONC.HANDLE_FLAG
      is ''处理标记''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_MEASUREMENT_ERROR_CP_CONC.HANDLE_DATE
      is ''处理时间''
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000018083 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Tables U WHERE U.TABLE_NAME = 'MT_INDICATIVE_ERROR_CP_CONC';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
        create table MT_INDICATIVE_ERROR_CP_CONC
        (
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
      dbms_output.put_line('脚本已跳过，因为 MT_INDICATIVE_ERROR_CP_CONC 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table MT_INDICATIVE_ERROR_CP_CONC
      is ''充电桩计量示值误差结论''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_INDICATIVE_ERROR_CP_CONC.DETECT_TASK_NO
      is ''检定任务编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_INDICATIVE_ERROR_CP_CONC.EQUIP_CATEG
      is ''设备类别''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_INDICATIVE_ERROR_CP_CONC.SYS_NO
      is ''系统编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_INDICATIVE_ERROR_CP_CONC.DETECT_EQUIP_NO
      is ''检定线台编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_INDICATIVE_ERROR_CP_CONC.DETECT_UNIT_NO
      is ''检定单元编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_INDICATIVE_ERROR_CP_CONC.BAR_CODE
      is ''设备条形码''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_INDICATIVE_ERROR_CP_CONC.DETECT_DATE
      is ''检定时间''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_INDICATIVE_ERROR_CP_CONC.PORT_CODE
      is ''枪口编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_INDICATIVE_ERROR_CP_CONC.PARA_INDEX
      is ''检定序号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_INDICATIVE_ERROR_CP_CONC.DETECT_ITEM_POINT
      is ''检定点序号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_INDICATIVE_ERROR_CP_CONC.IS_VALID
      is ''有效标志''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_INDICATIVE_ERROR_CP_CONC.IN_VOLT
      is ''输入电压(V)''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_INDICATIVE_ERROR_CP_CONC.OUT_CURRENT
      is ''输出电流(A)''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_INDICATIVE_ERROR_CP_CONC.OUT_VOLT
      is ''输出电压(V)''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_INDICATIVE_ERROR_CP_CONC.TIME
      is ''时间（min）''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_INDICATIVE_ERROR_CP_CONC.ACTUAL_ERROR
      is ''实际误差(%)''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_INDICATIVE_ERROR_CP_CONC.CONC_CODE
      is ''检查结论''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_INDICATIVE_ERROR_CP_CONC.WRITE_DATE
      is ''检定系统写入时间''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_INDICATIVE_ERROR_CP_CONC.HANDLE_FLAG
      is ''处理标记''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_INDICATIVE_ERROR_CP_CONC.HANDLE_DATE
      is ''处理时间''
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000018084 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Tables U WHERE U.TABLE_NAME = 'MT_MEASURE_UNIFORMITY_CP_CONC';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
        create table MT_MEASURE_UNIFORMITY_CP_CONC
        (
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
      dbms_output.put_line('脚本已跳过，因为 MT_MEASURE_UNIFORMITY_CP_CONC 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table MT_MEASURE_UNIFORMITY_CP_CONC
      is ''充电桩计量一致性结论''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_MEASURE_UNIFORMITY_CP_CONC.DETECT_TASK_NO
      is ''检定任务编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_MEASURE_UNIFORMITY_CP_CONC.EQUIP_CATEG
      is ''设备类别''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_MEASURE_UNIFORMITY_CP_CONC.SYS_NO
      is ''系统编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_MEASURE_UNIFORMITY_CP_CONC.DETECT_EQUIP_NO
      is ''检定线台编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_MEASURE_UNIFORMITY_CP_CONC.DETECT_UNIT_NO
      is ''检定单元编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_MEASURE_UNIFORMITY_CP_CONC.BAR_CODE
      is ''设备条形码''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_MEASURE_UNIFORMITY_CP_CONC.DETECT_DATE
      is ''检定时间''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_MEASURE_UNIFORMITY_CP_CONC.PORT_CODE
      is ''枪口编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_MEASURE_UNIFORMITY_CP_CONC.PARA_INDEX
      is ''检定序号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_MEASURE_UNIFORMITY_CP_CONC.DETECT_ITEM_POINT
      is ''检定点序号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_MEASURE_UNIFORMITY_CP_CONC.IS_VALID
      is ''有效标志''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_MEASURE_UNIFORMITY_CP_CONC.IN_VOLT
      is ''输入电压(V)''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_MEASURE_UNIFORMITY_CP_CONC.OUT_CURRENT
      is ''输出电流(A)''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_MEASURE_UNIFORMITY_CP_CONC.OUT_VOLT
      is ''输出电压(V)''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_MEASURE_UNIFORMITY_CP_CONC.ACTUAL_ERROR
      is ''实际误差(%)''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_MEASURE_UNIFORMITY_CP_CONC.CONC_CODE
      is ''检查结论''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_MEASURE_UNIFORMITY_CP_CONC.WRITE_DATE
      is ''检定系统写入时间''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_MEASURE_UNIFORMITY_CP_CONC.HANDLE_FLAG
      is ''处理标记''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_MEASURE_UNIFORMITY_CP_CONC.HANDLE_DATE
      is ''处理时间''
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000018085 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Tables U WHERE U.TABLE_NAME = 'MT_SCRAM_FUNCTION_CP_CONC';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
        create table MT_SCRAM_FUNCTION_CP_CONC
        (
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
      dbms_output.put_line('脚本已跳过，因为 MT_SCRAM_FUNCTION_CP_CONC 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table MT_SCRAM_FUNCTION_CP_CONC
      is ''充电桩急停功能结论''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_SCRAM_FUNCTION_CP_CONC.DETECT_TASK_NO
      is ''检定任务编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_SCRAM_FUNCTION_CP_CONC.EQUIP_CATEG
      is ''设备类别''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_SCRAM_FUNCTION_CP_CONC.SYS_NO
      is ''系统编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_SCRAM_FUNCTION_CP_CONC.DETECT_EQUIP_NO
      is ''检定线台编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_SCRAM_FUNCTION_CP_CONC.DETECT_UNIT_NO
      is ''检定单元编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_SCRAM_FUNCTION_CP_CONC.BAR_CODE
      is ''设备条形码''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_SCRAM_FUNCTION_CP_CONC.DETECT_DATE
      is ''检定时间''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_SCRAM_FUNCTION_CP_CONC.PORT_CODE
      is ''枪口编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_SCRAM_FUNCTION_CP_CONC.PARA_INDEX
      is ''检定序号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_SCRAM_FUNCTION_CP_CONC.DETECT_ITEM_POINT
      is ''检定点序号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_SCRAM_FUNCTION_CP_CONC.IS_VALID
      is ''有效标志''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_SCRAM_FUNCTION_CP_CONC.DETECT_CONTENT
      is ''测试项目''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_SCRAM_FUNCTION_CP_CONC.CONC_CODE
      is ''检查结论''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_SCRAM_FUNCTION_CP_CONC.WRITE_DATE
      is ''检定系统写入时间''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_SCRAM_FUNCTION_CP_CONC.HANDLE_FLAG
      is ''处理标记''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_SCRAM_FUNCTION_CP_CONC.HANDLE_DATE
      is ''处理时间''
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000018086 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Tables U WHERE U.TABLE_NAME = 'MT_VOLT_LOSS_CP_CONC';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
        create table MT_VOLT_LOSS_CP_CONC
        (
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
      dbms_output.put_line('脚本已跳过，因为 MT_VOLT_LOSS_CP_CONC 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table MT_VOLT_LOSS_CP_CONC
      is ''充电桩供电电压消失试验结论''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_VOLT_LOSS_CP_CONC.DETECT_TASK_NO
      is ''检定任务编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_VOLT_LOSS_CP_CONC.EQUIP_CATEG
      is ''设备类别''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_VOLT_LOSS_CP_CONC.SYS_NO
      is ''系统编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_VOLT_LOSS_CP_CONC.DETECT_EQUIP_NO
      is ''检定线台编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_VOLT_LOSS_CP_CONC.DETECT_UNIT_NO
      is ''检定单元编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_VOLT_LOSS_CP_CONC.BAR_CODE
      is ''设备条形码''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_VOLT_LOSS_CP_CONC.DETECT_DATE
      is ''检定时间''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_VOLT_LOSS_CP_CONC.PARA_INDEX
      is ''检定序号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_VOLT_LOSS_CP_CONC.DETECT_ITEM_POINT
      is ''检定点序号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_VOLT_LOSS_CP_CONC.IS_VALID
      is ''有效标志''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_VOLT_LOSS_CP_CONC.DETECT_CONTENT
      is ''测试项目''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_VOLT_LOSS_CP_CONC.CONC_CODE
      is ''检查结论''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_VOLT_LOSS_CP_CONC.WRITE_DATE
      is ''检定系统写入时间''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_VOLT_LOSS_CP_CONC.HANDLE_FLAG
      is ''处理标记''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_VOLT_LOSS_CP_CONC.HANDLE_DATE
      is ''处理时间''
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000018087 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Tables U WHERE U.TABLE_NAME = 'MT_MAXOUT_POWER_CP_CONC';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
        create table MT_MAXOUT_POWER_CP_CONC
        (
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
      dbms_output.put_line('脚本已跳过，因为 MT_MAXOUT_POWER_CP_CONC 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table MT_MAXOUT_POWER_CP_CONC
      is ''充电桩最大恒功率输出试验结论''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_MAXOUT_POWER_CP_CONC.DETECT_TASK_NO
      is ''检定任务编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_MAXOUT_POWER_CP_CONC.EQUIP_CATEG
      is ''设备类别''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_MAXOUT_POWER_CP_CONC.SYS_NO
      is ''系统编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_MAXOUT_POWER_CP_CONC.DETECT_EQUIP_NO
      is ''检定线台编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_MAXOUT_POWER_CP_CONC.DETECT_UNIT_NO
      is ''检定单元编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_MAXOUT_POWER_CP_CONC.BAR_CODE
      is ''设备条形码''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_MAXOUT_POWER_CP_CONC.DETECT_DATE
      is ''检定时间''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_MAXOUT_POWER_CP_CONC.PORT_CODE
      is ''枪口编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_MAXOUT_POWER_CP_CONC.PARA_INDEX
      is ''检定序号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_MAXOUT_POWER_CP_CONC.DETECT_ITEM_POINT
      is ''检定点序号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_MAXOUT_POWER_CP_CONC.IS_VALID
      is ''有效标志''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_MAXOUT_POWER_CP_CONC.OUT_VOLT
      is ''输出电压(V)''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_MAXOUT_POWER_CP_CONC.OUT_CURRENT
      is ''输出电流(A)''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_MAXOUT_POWER_CP_CONC.OUT_POWER
      is ''输出功率(kW)''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_MAXOUT_POWER_CP_CONC.ERROR
      is ''误差(%)''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_MAXOUT_POWER_CP_CONC.CONC_CODE
      is ''检查结论''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_MAXOUT_POWER_CP_CONC.WRITE_DATE
      is ''检定系统写入时间''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_MAXOUT_POWER_CP_CONC.HANDLE_FLAG
      is ''处理标记''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_MAXOUT_POWER_CP_CONC.HANDLE_DATE
      is ''处理时间''
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000018088 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Tables U WHERE U.TABLE_NAME = 'MT_CURRENT_PRECISION_CP_CONC';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
        create table MT_CURRENT_PRECISION_CP_CONC
        (
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
      dbms_output.put_line('脚本已跳过，因为 MT_CURRENT_PRECISION_CP_CONC 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table MT_CURRENT_PRECISION_CP_CONC
      is ''充电桩稳流精度试验结论''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_CURRENT_PRECISION_CP_CONC.DETECT_TASK_NO
      is ''检定任务编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_CURRENT_PRECISION_CP_CONC.EQUIP_CATEG
      is ''设备类别''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_CURRENT_PRECISION_CP_CONC.SYS_NO
      is ''系统编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_CURRENT_PRECISION_CP_CONC.DETECT_EQUIP_NO
      is ''检定线台编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_CURRENT_PRECISION_CP_CONC.DETECT_UNIT_NO
      is ''检定单元编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_CURRENT_PRECISION_CP_CONC.BAR_CODE
      is ''设备条形码''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_CURRENT_PRECISION_CP_CONC.DETECT_DATE
      is ''检定时间''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_CURRENT_PRECISION_CP_CONC.PORT_CODE
      is ''枪口编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_CURRENT_PRECISION_CP_CONC.PARA_INDEX
      is ''检定序号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_CURRENT_PRECISION_CP_CONC.DETECT_ITEM_POINT
      is ''检定点序号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_CURRENT_PRECISION_CP_CONC.IS_VALID
      is ''有效标志''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_CURRENT_PRECISION_CP_CONC.IN_VOLT
      is ''输入电压(V)''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_CURRENT_PRECISION_CP_CONC.OUT_VOLT
      is ''输出电压(V)''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_CURRENT_PRECISION_CP_CONC.OUT_CURRENT
      is ''输出电流(A)''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_CURRENT_PRECISION_CP_CONC.ERROR
      is ''误差(%)''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_CURRENT_PRECISION_CP_CONC.CONC_CODE
      is ''检查结论''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_CURRENT_PRECISION_CP_CONC.WRITE_DATE
      is ''检定系统写入时间''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_CURRENT_PRECISION_CP_CONC.HANDLE_FLAG
      is ''处理标记''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_CURRENT_PRECISION_CP_CONC.HANDLE_DATE
      is ''处理时间''
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000018089 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Tables U WHERE U.TABLE_NAME = 'MT_VOLT_PRECISION_CP_CONC';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
        create table MT_VOLT_PRECISION_CP_CONC
        (
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
      dbms_output.put_line('脚本已跳过，因为 MT_VOLT_PRECISION_CP_CONC 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table MT_VOLT_PRECISION_CP_CONC
      is ''充电桩稳压精度试验结论''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_VOLT_PRECISION_CP_CONC.DETECT_TASK_NO
      is ''检定任务编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_VOLT_PRECISION_CP_CONC.EQUIP_CATEG
      is ''设备类别''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_VOLT_PRECISION_CP_CONC.SYS_NO
      is ''系统编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_VOLT_PRECISION_CP_CONC.DETECT_EQUIP_NO
      is ''检定线台编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_VOLT_PRECISION_CP_CONC.DETECT_UNIT_NO
      is ''检定单元编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_VOLT_PRECISION_CP_CONC.BAR_CODE
      is ''设备条形码''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_VOLT_PRECISION_CP_CONC.DETECT_DATE
      is ''检定时间''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_VOLT_PRECISION_CP_CONC.PORT_CODE
      is ''枪口编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_VOLT_PRECISION_CP_CONC.PARA_INDEX
      is ''检定序号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_VOLT_PRECISION_CP_CONC.DETECT_ITEM_POINT
      is ''检定点序号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_VOLT_PRECISION_CP_CONC.IS_VALID
      is ''有效标志''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_VOLT_PRECISION_CP_CONC.IN_VOLT
      is ''输入电压(V)''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_VOLT_PRECISION_CP_CONC.OUT_VOLT
      is ''输出电压(V)''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_VOLT_PRECISION_CP_CONC.OUT_CURRENT
      is ''输出电流(A)''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_VOLT_PRECISION_CP_CONC.ERROR
      is ''误差(%)''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_VOLT_PRECISION_CP_CONC.CONC_CODE
      is ''检查结论''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_VOLT_PRECISION_CP_CONC.WRITE_DATE
      is ''检定系统写入时间''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_VOLT_PRECISION_CP_CONC.HANDLE_FLAG
      is ''处理标记''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_VOLT_PRECISION_CP_CONC.HANDLE_DATE
      is ''处理时间''
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000018090 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Tables U WHERE U.TABLE_NAME = 'MT_EFFICIENCY_CP_CONC';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
        create table MT_EFFICIENCY_CP_CONC
        (
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
      dbms_output.put_line('脚本已跳过，因为 MT_EFFICIENCY_CP_CONC 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table MT_EFFICIENCY_CP_CONC
      is ''充电桩效率试验结论''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_EFFICIENCY_CP_CONC.DETECT_TASK_NO
      is ''检定任务编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_EFFICIENCY_CP_CONC.EQUIP_CATEG
      is ''设备类别''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_EFFICIENCY_CP_CONC.SYS_NO
      is ''系统编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_EFFICIENCY_CP_CONC.DETECT_EQUIP_NO
      is ''检定线台编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_EFFICIENCY_CP_CONC.DETECT_UNIT_NO
      is ''检定单元编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_EFFICIENCY_CP_CONC.BAR_CODE
      is ''设备条形码''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_EFFICIENCY_CP_CONC.DETECT_DATE
      is ''检定时间''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_EFFICIENCY_CP_CONC.PORT_CODE
      is ''枪口编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_EFFICIENCY_CP_CONC.PARA_INDEX
      is ''检定序号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_EFFICIENCY_CP_CONC.DETECT_ITEM_POINT
      is ''检定点序号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_EFFICIENCY_CP_CONC.IS_VALID
      is ''有效标志''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_EFFICIENCY_CP_CONC.IN_VOLT
      is ''输入电压(V)''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_EFFICIENCY_CP_CONC.OUT_VOLT
      is ''输出电压(V)''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_EFFICIENCY_CP_CONC.OUT_CURRENT
      is ''输出电流(A)''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_EFFICIENCY_CP_CONC.STATE
      is ''状态''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_EFFICIENCY_CP_CONC.POWER
      is ''功率''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_EFFICIENCY_CP_CONC.CONC_CODE
      is ''检查结论''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_EFFICIENCY_CP_CONC.WRITE_DATE
      is ''检定系统写入时间''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_EFFICIENCY_CP_CONC.HANDLE_FLAG
      is ''处理标记''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_EFFICIENCY_CP_CONC.HANDLE_DATE
      is ''处理时间''
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000018092 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Tables U WHERE U.TABLE_NAME = 'MT_PF_CP_CONC';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
        create table MT_PF_CP_CONC
        (
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
      dbms_output.put_line('脚本已跳过，因为 MT_PF_CP_CONC 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table MT_PF_CP_CONC
      is ''充电桩功率因数试验结论''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_PF_CP_CONC.DETECT_TASK_NO
      is ''检定任务编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_PF_CP_CONC.EQUIP_CATEG
      is ''设备类别''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_PF_CP_CONC.SYS_NO
      is ''系统编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_PF_CP_CONC.DETECT_EQUIP_NO
      is ''检定线台编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_PF_CP_CONC.DETECT_UNIT_NO
      is ''检定单元编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_PF_CP_CONC.BAR_CODE
      is ''设备条形码''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_PF_CP_CONC.DETECT_DATE
      is ''检定时间''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_PF_CP_CONC.PORT_CODE
      is ''枪口编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_PF_CP_CONC.PARA_INDEX
      is ''检定序号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_PF_CP_CONC.DETECT_ITEM_POINT
      is ''检定点序号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_PF_CP_CONC.IS_VALID
      is ''有效标志''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_PF_CP_CONC.IN_VOLT
      is ''输入电压(V)''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_PF_CP_CONC.OUT_VOLT
      is ''输出电压(V)''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_PF_CP_CONC.OUT_CURRENT
      is ''输出电流(A)''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_PF_CP_CONC.STATE
      is ''状态''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_PF_CP_CONC.PF
      is ''功率因素''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_PF_CP_CONC.CONC_CODE
      is ''检查结论''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_PF_CP_CONC.WRITE_DATE
      is ''检定系统写入时间''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_PF_CP_CONC.HANDLE_FLAG
      is ''处理标记''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_PF_CP_CONC.HANDLE_DATE
      is ''处理时间''
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000018094 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Tables U WHERE U.TABLE_NAME = 'MT_VOLT_RIPPLE_CP_CONC';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
        create table MT_VOLT_RIPPLE_CP_CONC
        (
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
      dbms_output.put_line('脚本已跳过，因为 MT_VOLT_RIPPLE_CP_CONC 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table MT_VOLT_RIPPLE_CP_CONC
      is ''充电桩电压纹波因数试验结论''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_VOLT_RIPPLE_CP_CONC.DETECT_TASK_NO
      is ''检定任务编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_VOLT_RIPPLE_CP_CONC.EQUIP_CATEG
      is ''设备类别''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_VOLT_RIPPLE_CP_CONC.SYS_NO
      is ''系统编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_VOLT_RIPPLE_CP_CONC.DETECT_EQUIP_NO
      is ''检定线台编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_VOLT_RIPPLE_CP_CONC.DETECT_UNIT_NO
      is ''检定单元编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_VOLT_RIPPLE_CP_CONC.BAR_CODE
      is ''设备条形码''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_VOLT_RIPPLE_CP_CONC.DETECT_DATE
      is ''检定时间''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_VOLT_RIPPLE_CP_CONC.PORT_CODE
      is ''枪口编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_VOLT_RIPPLE_CP_CONC.PARA_INDEX
      is ''检定序号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_VOLT_RIPPLE_CP_CONC.DETECT_ITEM_POINT
      is ''检定点序号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_VOLT_RIPPLE_CP_CONC.IS_VALID
      is ''有效标志''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_VOLT_RIPPLE_CP_CONC.IN_VOLT
      is ''输入电压(V)''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_VOLT_RIPPLE_CP_CONC.OUT_VOLT
      is ''输出电压(V)''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_VOLT_RIPPLE_CP_CONC.OUT_CURRENT
      is ''输出电流(A)''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_VOLT_RIPPLE_CP_CONC.CREST_RATIO
      is ''峰值系数(%)''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_VOLT_RIPPLE_CP_CONC.EFFECTIVE_VALUE
      is ''有效值系数(%)''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_VOLT_RIPPLE_CP_CONC.CONC_CODE
      is ''检查结论''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_VOLT_RIPPLE_CP_CONC.WRITE_DATE
      is ''检定系统写入时间''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_VOLT_RIPPLE_CP_CONC.HANDLE_FLAG
      is ''处理标记''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_VOLT_RIPPLE_CP_CONC.HANDLE_DATE
      is ''处理时间''
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000018096 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Tables U WHERE U.TABLE_NAME = 'MT_LOWVOLT_AUXILIARY_CP_CONC';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
        create table MT_LOWVOLT_AUXILIARY_CP_CONC
        (
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
      dbms_output.put_line('脚本已跳过，因为 MT_LOWVOLT_AUXILIARY_CP_CONC 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table MT_LOWVOLT_AUXILIARY_CP_CONC
      is ''充电桩低压辅助电源试验结论''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_LOWVOLT_AUXILIARY_CP_CONC.DETECT_TASK_NO
      is ''检定任务编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_LOWVOLT_AUXILIARY_CP_CONC.EQUIP_CATEG
      is ''设备类别''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_LOWVOLT_AUXILIARY_CP_CONC.SYS_NO
      is ''系统编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_LOWVOLT_AUXILIARY_CP_CONC.DETECT_EQUIP_NO
      is ''检定线台编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_LOWVOLT_AUXILIARY_CP_CONC.DETECT_UNIT_NO
      is ''检定单元编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_LOWVOLT_AUXILIARY_CP_CONC.BAR_CODE
      is ''设备条形码''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_LOWVOLT_AUXILIARY_CP_CONC.DETECT_DATE
      is ''检定时间''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_LOWVOLT_AUXILIARY_CP_CONC.PORT_CODE
      is ''枪口编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_LOWVOLT_AUXILIARY_CP_CONC.PARA_INDEX
      is ''检定序号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_LOWVOLT_AUXILIARY_CP_CONC.DETECT_ITEM_POINT
      is ''检定点序号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_LOWVOLT_AUXILIARY_CP_CONC.IS_VALID
      is ''有效标志''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_LOWVOLT_AUXILIARY_CP_CONC.MODEL
      is ''模式''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_LOWVOLT_AUXILIARY_CP_CONC.OUT_VOLT
      is ''输出电压(V)''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_LOWVOLT_AUXILIARY_CP_CONC.OUT_CURRENT
      is ''输出电流(A)''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_LOWVOLT_AUXILIARY_CP_CONC.OFFSET
      is ''偏差(V)''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_LOWVOLT_AUXILIARY_CP_CONC.CONC_CODE
      is ''检查结论''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_LOWVOLT_AUXILIARY_CP_CONC.WRITE_DATE
      is ''检定系统写入时间''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_LOWVOLT_AUXILIARY_CP_CONC.HANDLE_FLAG
      is ''处理标记''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_LOWVOLT_AUXILIARY_CP_CONC.HANDLE_DATE
      is ''处理时间''
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000018097 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Tables U WHERE U.TABLE_NAME = 'MT_OPEN_PROTECT_CP_CONC';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
        create table MT_OPEN_PROTECT_CP_CONC
        (
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
      dbms_output.put_line('脚本已跳过，因为 MT_OPEN_PROTECT_CP_CONC 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table MT_OPEN_PROTECT_CP_CONC
      is ''充电桩开门保护试验结论''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_OPEN_PROTECT_CP_CONC.DETECT_TASK_NO
      is ''检定任务编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_OPEN_PROTECT_CP_CONC.EQUIP_CATEG
      is ''设备类别''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_OPEN_PROTECT_CP_CONC.SYS_NO
      is ''系统编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_OPEN_PROTECT_CP_CONC.DETECT_EQUIP_NO
      is ''检定线台编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_OPEN_PROTECT_CP_CONC.DETECT_UNIT_NO
      is ''检定单元编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_OPEN_PROTECT_CP_CONC.BAR_CODE
      is ''设备条形码''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_OPEN_PROTECT_CP_CONC.DETECT_DATE
      is ''检定时间''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_OPEN_PROTECT_CP_CONC.PORT_CODE
      is ''枪口编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_OPEN_PROTECT_CP_CONC.PARA_INDEX
      is ''检定序号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_OPEN_PROTECT_CP_CONC.DETECT_ITEM_POINT
      is ''检定点序号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_OPEN_PROTECT_CP_CONC.IS_VALID
      is ''有效标志''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_OPEN_PROTECT_CP_CONC.DETECT_CONTENT
      is ''测试项目''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_OPEN_PROTECT_CP_CONC.CONC_CODE
      is ''检查结论''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_OPEN_PROTECT_CP_CONC.WRITE_DATE
      is ''检定系统写入时间''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_OPEN_PROTECT_CP_CONC.HANDLE_FLAG
      is ''处理标记''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_OPEN_PROTECT_CP_CONC.HANDLE_DATE
      is ''处理时间''
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000018098 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Tables U WHERE U.TABLE_NAME = 'MT_SIGNAL_BREAK_CP_CONC';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
        create table MT_SIGNAL_BREAK_CP_CONC
        (
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
      dbms_output.put_line('脚本已跳过，因为 MT_SIGNAL_BREAK_CP_CONC 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table MT_SIGNAL_BREAK_CP_CONC
      is ''充电桩连接检测信号断开试验结论''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_SIGNAL_BREAK_CP_CONC.DETECT_TASK_NO
      is ''检定任务编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_SIGNAL_BREAK_CP_CONC.EQUIP_CATEG
      is ''设备类别''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_SIGNAL_BREAK_CP_CONC.SYS_NO
      is ''系统编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_SIGNAL_BREAK_CP_CONC.DETECT_EQUIP_NO
      is ''检定线台编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_SIGNAL_BREAK_CP_CONC.DETECT_UNIT_NO
      is ''检定单元编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_SIGNAL_BREAK_CP_CONC.BAR_CODE
      is ''设备条形码''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_SIGNAL_BREAK_CP_CONC.DETECT_DATE
      is ''检定时间''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_SIGNAL_BREAK_CP_CONC.PORT_CODE
      is ''枪口编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_SIGNAL_BREAK_CP_CONC.PARA_INDEX
      is ''检定序号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_SIGNAL_BREAK_CP_CONC.DETECT_ITEM_POINT
      is ''检定点序号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_SIGNAL_BREAK_CP_CONC.IS_VALID
      is ''有效标志''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_SIGNAL_BREAK_CP_CONC.STATE
      is ''充电状态''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_SIGNAL_BREAK_CP_CONC.OUT_VOLT
      is ''输出电压(V)''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_SIGNAL_BREAK_CP_CONC.OUT_CURRENT
      is ''输出电流(A)''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_SIGNAL_BREAK_CP_CONC.TIME
      is ''电流降至5A以下时间（ms）''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_SIGNAL_BREAK_CP_CONC.BREAK_TIME
      is ''断开K1和K2时间(ms)''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_SIGNAL_BREAK_CP_CONC.UNLOCK_VOLT
      is ''电池锁解锁时车辆接口电压（V）''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_SIGNAL_BREAK_CP_CONC.CONC_CODE
      is ''检查结论''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_SIGNAL_BREAK_CP_CONC.WRITE_DATE
      is ''检定系统写入时间''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_SIGNAL_BREAK_CP_CONC.HANDLE_FLAG
      is ''处理标记''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_SIGNAL_BREAK_CP_CONC.HANDLE_DATE
      is ''处理时间''
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000018100 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Tables U WHERE U.TABLE_NAME = 'MT_INSULATE_ABNORMAL_CP_CONC';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
        create table MT_INSULATE_ABNORMAL_CP_CONC
        (
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
      dbms_output.put_line('脚本已跳过，因为 MT_INSULATE_ABNORMAL_CP_CONC 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table MT_INSULATE_ABNORMAL_CP_CONC
      is ''充电桩绝缘异常试验结论''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_INSULATE_ABNORMAL_CP_CONC.DETECT_TASK_NO
      is ''检定任务编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_INSULATE_ABNORMAL_CP_CONC.EQUIP_CATEG
      is ''设备类别''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_INSULATE_ABNORMAL_CP_CONC.SYS_NO
      is ''系统编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_INSULATE_ABNORMAL_CP_CONC.DETECT_EQUIP_NO
      is ''检定线台编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_INSULATE_ABNORMAL_CP_CONC.DETECT_UNIT_NO
      is ''检定单元编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_INSULATE_ABNORMAL_CP_CONC.BAR_CODE
      is ''设备条形码''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_INSULATE_ABNORMAL_CP_CONC.DETECT_DATE
      is ''检定时间''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_INSULATE_ABNORMAL_CP_CONC.PORT_CODE
      is ''枪口编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_INSULATE_ABNORMAL_CP_CONC.PARA_INDEX
      is ''检定序号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_INSULATE_ABNORMAL_CP_CONC.DETECT_ITEM_POINT
      is ''检定点序号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_INSULATE_ABNORMAL_CP_CONC.IS_VALID
      is ''有效标志''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_INSULATE_ABNORMAL_CP_CONC.DETECT_CONTENT
      is ''测试项目''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_INSULATE_ABNORMAL_CP_CONC.CONC_CODE
      is ''检查结论''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_INSULATE_ABNORMAL_CP_CONC.WRITE_DATE
      is ''检定系统写入时间''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_INSULATE_ABNORMAL_CP_CONC.HANDLE_FLAG
      is ''处理标记''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_INSULATE_ABNORMAL_CP_CONC.HANDLE_DATE
      is ''处理时间''
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000018102 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Tables U WHERE U.TABLE_NAME = 'MT_COMM_BREAK_CP_CONC';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
        create table MT_COMM_BREAK_CP_CONC
        (
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
        tablespace MPAC_MT
        pctfree 10
        initrans 1
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
      dbms_output.put_line('脚本已跳过，因为 MT_COMM_BREAK_CP_CONC 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table MT_COMM_BREAK_CP_CONC
      is ''充电桩通信中断试验结论''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_COMM_BREAK_CP_CONC.DETECT_TASK_NO
      is ''检定任务编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_COMM_BREAK_CP_CONC.EQUIP_CATEG
      is ''设备类别''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_COMM_BREAK_CP_CONC.SYS_NO
      is ''系统编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_COMM_BREAK_CP_CONC.DETECT_EQUIP_NO
      is ''检定线台编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_COMM_BREAK_CP_CONC.DETECT_UNIT_NO
      is ''检定单元编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_COMM_BREAK_CP_CONC.BAR_CODE
      is ''设备条形码''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_COMM_BREAK_CP_CONC.DETECT_DATE
      is ''检定时间''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_COMM_BREAK_CP_CONC.PORT_CODE
      is ''枪口编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_COMM_BREAK_CP_CONC.PARA_INDEX
      is ''检定序号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_COMM_BREAK_CP_CONC.DETECT_ITEM_POINT
      is ''检定点序号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_COMM_BREAK_CP_CONC.IS_VALID
      is ''有效标志''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_COMM_BREAK_CP_CONC.STATE
      is ''充电状态''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_COMM_BREAK_CP_CONC.OUT_VOLT
      is ''输出电压(V)''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_COMM_BREAK_CP_CONC.OUT_CURRENT
      is ''输出电流(A)''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_COMM_BREAK_CP_CONC.OVERTIME_TIME
      is ''通信超时停止输出时间(s)''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_COMM_BREAK_CP_CONC.BREAK_TIME
      is ''通信中断停止辅助电源时间(s)''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_COMM_BREAK_CP_CONC.IS_RECONNECT
      is ''是否有三次握手重连''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_COMM_BREAK_CP_CONC.IS_WARN
      is ''是否告警提示''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_COMM_BREAK_CP_CONC.CONC_CODE
      is ''检查结论''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_COMM_BREAK_CP_CONC.WRITE_DATE
      is ''检定系统写入时间''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_COMM_BREAK_CP_CONC.HANDLE_FLAG
      is ''处理标记''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_COMM_BREAK_CP_CONC.HANDLE_DATE
      is ''处理时间''
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000018104 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Tables U WHERE U.TABLE_NAME = 'MT_PROTECT_LANDING_CP_CONC';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
        create table MT_PROTECT_LANDING_CP_CONC
        (
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
      dbms_output.put_line('脚本已跳过，因为 MT_PROTECT_LANDING_CP_CONC 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table MT_PROTECT_LANDING_CP_CONC
      is ''充电桩保护接地连续性试验结论（直流）''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_PROTECT_LANDING_CP_CONC.DETECT_TASK_NO
      is ''检定任务编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_PROTECT_LANDING_CP_CONC.EQUIP_CATEG
      is ''设备类别''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_PROTECT_LANDING_CP_CONC.SYS_NO
      is ''系统编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_PROTECT_LANDING_CP_CONC.DETECT_EQUIP_NO
      is ''检定线台编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_PROTECT_LANDING_CP_CONC.DETECT_UNIT_NO
      is ''检定单元编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_PROTECT_LANDING_CP_CONC.BAR_CODE
      is ''设备条形码''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_PROTECT_LANDING_CP_CONC.DETECT_DATE
      is ''检定时间''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_PROTECT_LANDING_CP_CONC.PORT_CODE
      is ''枪口编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_PROTECT_LANDING_CP_CONC.PARA_INDEX
      is ''检定序号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_PROTECT_LANDING_CP_CONC.DETECT_ITEM_POINT
      is ''检定点序号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_PROTECT_LANDING_CP_CONC.IS_VALID
      is ''有效标志''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_PROTECT_LANDING_CP_CONC.STATE
      is ''充电状态''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_PROTECT_LANDING_CP_CONC.OUT_VOLT
      is ''输出电压(V)''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_PROTECT_LANDING_CP_CONC.OUT_CURRENT
      is ''输出电流(A)''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_PROTECT_LANDING_CP_CONC.BREAK_TIME
      is ''断开K1和K2时间(ms)''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_PROTECT_LANDING_CP_CONC.UNLOCK_VOLT
      is ''电池锁解锁时车辆接口电压（V）''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_PROTECT_LANDING_CP_CONC.CONC_CODE
      is ''检查结论''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_PROTECT_LANDING_CP_CONC.WRITE_DATE
      is ''检定系统写入时间''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_PROTECT_LANDING_CP_CONC.HANDLE_FLAG
      is ''处理标记''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_PROTECT_LANDING_CP_CONC.HANDLE_DATE
      is ''处理时间''
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000018105 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Tables U WHERE U.TABLE_NAME = 'MT_POWERUP_MESSAGE_CP_CONC';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
        create table MT_POWERUP_MESSAGE_CP_CONC
        (
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
      dbms_output.put_line('脚本已跳过，因为 MT_POWERUP_MESSAGE_CP_CONC 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table MT_POWERUP_MESSAGE_CP_CONC
      is ''充电桩低压辅助上电及充电握手阶段报文测试结论''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_POWERUP_MESSAGE_CP_CONC.DETECT_TASK_NO
      is ''检定任务编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_POWERUP_MESSAGE_CP_CONC.EQUIP_CATEG
      is ''设备类别''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_POWERUP_MESSAGE_CP_CONC.SYS_NO
      is ''系统编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_POWERUP_MESSAGE_CP_CONC.DETECT_EQUIP_NO
      is ''检定线台编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_POWERUP_MESSAGE_CP_CONC.DETECT_UNIT_NO
      is ''检定单元编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_POWERUP_MESSAGE_CP_CONC.BAR_CODE
      is ''设备条形码''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_POWERUP_MESSAGE_CP_CONC.DETECT_DATE
      is ''检定时间''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_POWERUP_MESSAGE_CP_CONC.PORT_CODE
      is ''枪口编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_POWERUP_MESSAGE_CP_CONC.PARA_INDEX
      is ''检定序号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_POWERUP_MESSAGE_CP_CONC.DETECT_ITEM_POINT
      is ''检定点序号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_POWERUP_MESSAGE_CP_CONC.IS_VALID
      is ''有效标志''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_POWERUP_MESSAGE_CP_CONC.DETECT_CONTENT
      is ''测试项目''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_POWERUP_MESSAGE_CP_CONC.CONC_CODE
      is ''检查结论''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_POWERUP_MESSAGE_CP_CONC.WRITE_DATE
      is ''检定系统写入时间''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_POWERUP_MESSAGE_CP_CONC.HANDLE_FLAG
      is ''处理标记''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_POWERUP_MESSAGE_CP_CONC.HANDLE_DATE
      is ''处理时间''
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000018106 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Tables U WHERE U.TABLE_NAME = 'MT_CONFIG_MSG_CP_CONC';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
        create table MT_CONFIG_MSG_CP_CONC
        (
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
      dbms_output.put_line('脚本已跳过，因为 MT_CONFIG_MSG_CP_CONC 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table MT_CONFIG_MSG_CP_CONC
      is ''充电桩充电配置阶段报文测试结论''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_CONFIG_MSG_CP_CONC.DETECT_TASK_NO
      is ''检定任务编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_CONFIG_MSG_CP_CONC.EQUIP_CATEG
      is ''设备类别''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_CONFIG_MSG_CP_CONC.SYS_NO
      is ''系统编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_CONFIG_MSG_CP_CONC.DETECT_EQUIP_NO
      is ''检定线台编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_CONFIG_MSG_CP_CONC.DETECT_UNIT_NO
      is ''检定单元编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_CONFIG_MSG_CP_CONC.BAR_CODE
      is ''设备条形码''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_CONFIG_MSG_CP_CONC.DETECT_DATE
      is ''检定时间''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_CONFIG_MSG_CP_CONC.PORT_CODE
      is ''枪口编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_CONFIG_MSG_CP_CONC.PARA_INDEX
      is ''检定序号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_CONFIG_MSG_CP_CONC.DETECT_ITEM_POINT
      is ''检定点序号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_CONFIG_MSG_CP_CONC.IS_VALID
      is ''有效标志''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_CONFIG_MSG_CP_CONC.DETECT_CONTENT
      is ''测试项目''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_CONFIG_MSG_CP_CONC.CONC_CODE
      is ''检查结论''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_CONFIG_MSG_CP_CONC.WRITE_DATE
      is ''检定系统写入时间''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_CONFIG_MSG_CP_CONC.HANDLE_FLAG
      is ''处理标记''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_CONFIG_MSG_CP_CONC.HANDLE_DATE
      is ''处理时间''
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000018107 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Tables U WHERE U.TABLE_NAME = 'MT_CHARGE_MEAASGE_CP_CONC';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
        create table MT_CHARGE_MEAASGE_CP_CONC
        (
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
      dbms_output.put_line('脚本已跳过，因为 MT_CHARGE_MEAASGE_CP_CONC 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table MT_CHARGE_MEAASGE_CP_CONC
      is ''充电桩充电阶段报文测试结论''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_CHARGE_MEAASGE_CP_CONC.DETECT_TASK_NO
      is ''检定任务编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_CHARGE_MEAASGE_CP_CONC.EQUIP_CATEG
      is ''设备类别''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_CHARGE_MEAASGE_CP_CONC.SYS_NO
      is ''系统编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_CHARGE_MEAASGE_CP_CONC.DETECT_EQUIP_NO
      is ''检定线台编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_CHARGE_MEAASGE_CP_CONC.DETECT_UNIT_NO
      is ''检定单元编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_CHARGE_MEAASGE_CP_CONC.BAR_CODE
      is ''设备条形码''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_CHARGE_MEAASGE_CP_CONC.DETECT_DATE
      is ''检定时间''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_CHARGE_MEAASGE_CP_CONC.PORT_CODE
      is ''枪口编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_CHARGE_MEAASGE_CP_CONC.PARA_INDEX
      is ''检定序号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_CHARGE_MEAASGE_CP_CONC.DETECT_ITEM_POINT
      is ''检定点序号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_CHARGE_MEAASGE_CP_CONC.IS_VALID
      is ''有效标志''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_CHARGE_MEAASGE_CP_CONC.DETECT_CONTENT
      is ''测试项目''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_CHARGE_MEAASGE_CP_CONC.CONC_CODE
      is ''检查结论''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_CHARGE_MEAASGE_CP_CONC.WRITE_DATE
      is ''检定系统写入时间''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_CHARGE_MEAASGE_CP_CONC.HANDLE_FLAG
      is ''处理标记''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_CHARGE_MEAASGE_CP_CONC.HANDLE_DATE
      is ''处理时间''
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000018108 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Tables U WHERE U.TABLE_NAME = 'MT_CHARGEEND_MEAASGE_CP_CONC';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
        create table MT_CHARGEEND_MEAASGE_CP_CONC
        (
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
      dbms_output.put_line('脚本已跳过，因为 MT_CHARGEEND_MEAASGE_CP_CONC 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table MT_CHARGEEND_MEAASGE_CP_CONC
      is ''充电桩充电结束阶段报文测试结论''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_CHARGEEND_MEAASGE_CP_CONC.DETECT_TASK_NO
      is ''检定任务编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_CHARGEEND_MEAASGE_CP_CONC.EQUIP_CATEG
      is ''设备类别''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_CHARGEEND_MEAASGE_CP_CONC.SYS_NO
      is ''系统编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_CHARGEEND_MEAASGE_CP_CONC.DETECT_EQUIP_NO
      is ''检定线台编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_CHARGEEND_MEAASGE_CP_CONC.DETECT_UNIT_NO
      is ''检定单元编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_CHARGEEND_MEAASGE_CP_CONC.BAR_CODE
      is ''设备条形码''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_CHARGEEND_MEAASGE_CP_CONC.DETECT_DATE
      is ''检定时间''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_CHARGEEND_MEAASGE_CP_CONC.PORT_CODE
      is ''枪口编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_CHARGEEND_MEAASGE_CP_CONC.PARA_INDEX
      is ''检定序号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_CHARGEEND_MEAASGE_CP_CONC.DETECT_ITEM_POINT
      is ''检定点序号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_CHARGEEND_MEAASGE_CP_CONC.IS_VALID
      is ''有效标志''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_CHARGEEND_MEAASGE_CP_CONC.DETECT_CONTENT
      is ''测试项目''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_CHARGEEND_MEAASGE_CP_CONC.CONC_CODE
      is ''检查结论''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_CHARGEEND_MEAASGE_CP_CONC.WRITE_DATE
      is ''检定系统写入时间''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_CHARGEEND_MEAASGE_CP_CONC.HANDLE_FLAG
      is ''处理标记''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_CHARGEEND_MEAASGE_CP_CONC.HANDLE_DATE
      is ''处理时间''
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000018109 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Tables U WHERE U.TABLE_NAME = 'MT_PORT_CP_CONC';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
        create table MT_PORT_CP_CONC
        (
        detect_task_no VARCHAR2(32),
        equip_categ VARCHAR2(8),
        sys_no VARCHAR2(16),
        detect_equip_no VARCHAR2(32),
        detect_unit_no VARCHAR2(32),
        bar_code VARCHAR2(32),
        detect_date VARCHAR2(32),
        port_code VARCHAR2(16),
        para_index VARCHAR2(32),
        is_valid VARCHAR2(8),
        conc_code VARCHAR2(8),
        write_date DATE,
        handle_flag VARCHAR2(8),
        handle_date DATE
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
      dbms_output.put_line('脚本已跳过，因为 MT_PORT_CP_CONC 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table MT_PORT_CP_CONC
      is ''充电桩枪口检定项结论''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_PORT_CP_CONC.DETECT_TASK_NO
      is ''检定任务编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_PORT_CP_CONC.EQUIP_CATEG
      is ''设备类别''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_PORT_CP_CONC.SYS_NO
      is ''系统编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_PORT_CP_CONC.DETECT_EQUIP_NO
      is ''检定线台编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_PORT_CP_CONC.DETECT_UNIT_NO
      is ''检定单元编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_PORT_CP_CONC.BAR_CODE
      is ''设备条形码''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_PORT_CP_CONC.DETECT_DATE
      is ''检定时间''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_PORT_CP_CONC.PORT_CODE
      is ''枪口编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_PORT_CP_CONC.PARA_INDEX
      is ''检定序号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_PORT_CP_CONC.IS_VALID
      is ''有效标志''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_PORT_CP_CONC.CONC_CODE
      is ''检查结论''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_PORT_CP_CONC.WRITE_DATE
      is ''检定系统写入时间''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_PORT_CP_CONC.HANDLE_FLAG
      is ''处理标记''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_PORT_CP_CONC.HANDLE_DATE
      is ''处理时间''
    ';
END;
/


prompt
prompt 正在处理纪录编号为 8200000000018110 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN

    DBMS_OUTPUT.ENABLE (buffer_size=>null);
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_INDEXES U WHERE u.INDEX_NAME = 'IDX_MT_WIRE_CP_CONC_NO';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      create index IDX_MT_WIRE_CP_CONC_NO   on  MT_WIRE_CP_CONC (DETECT_TASK_NO)
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
      dbms_output.put_line('脚本已跳过，因为 IDX_MT_WIRE_CP_ 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_INDEXES U WHERE u.INDEX_NAME = 'IDX_MT_VOLT_RIPPLE_CP_CONC_NO';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      create index IDX_MT_VOLT_RIPPLE_CP_CONC_NO   on  MT_VOLT_RIPPLE_CP_CONC (DETECT_TASK_NO)
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
      dbms_output.put_line('脚本已跳过，因为 IDX_MT_VOLT_RIPPLE_CP_ 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_INDEXES U WHERE u.INDEX_NAME = 'IDX_MT_VOLT_PRECISION_CONC_NO';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      create index IDX_MT_VOLT_PRECISION_CONC_NO   on  MT_VOLT_PRECISION_CP_CONC (DETECT_TASK_NO)
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
      dbms_output.put_line('脚本已跳过，因为 IDX_MT_VOLT_PRECIS 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_INDEXES U WHERE u.INDEX_NAME = 'IDX_MT_VOLT_LOSS_CP_CONC_NO';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      create index IDX_MT_VOLT_LOSS_CP_CONC_NO   on  MT_VOLT_LOSS_CP_CONC (DETECT_TASK_NO)
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
      dbms_output.put_line('脚本已跳过，因为 IDX_MT_VOLT_LOSS_CP_ 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_INDEXES U WHERE u.INDEX_NAME = 'IDX_MT_STANDBY_POWER_CONC_NO';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      create index IDX_MT_STANDBY_POWER_CONC_NO   on  MT_STANDBY_POWER_CP_CONC (DETECT_TASK_NO)
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
      dbms_output.put_line('脚本已跳过，因为 IDX_MT_STANDBY_POWER_ 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_INDEXES U WHERE u.INDEX_NAME = 'IDX_MT_SIGNAL_BREAK_CP_CONC_NO';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      create index IDX_MT_SIGNAL_BREAK_CP_CONC_NO   on  MT_SIGNAL_BREAK_CP_CONC (DETECT_TASK_NO)
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
      dbms_output.put_line('脚本已跳过，因为 IDX_MT_SIGNAL_BREAK_CP_ 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_INDEXES U WHERE u.INDEX_NAME = 'IDX_MT_SIGN_CP_CONC_NO';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      create index IDX_MT_SIGN_CP_CONC_NO   on  MT_SIGN_CP_CONC (DETECT_TASK_NO)
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
      dbms_output.put_line('脚本已跳过，因为 IDX_MT_SIGN_CP_ 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_INDEXES U WHERE u.INDEX_NAME = 'IDX_MT_SCRAM_FUNCTION_CONC_NO';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      create index IDX_MT_SCRAM_FUNCTION_CONC_NO   on  MT_SCRAM_FUNCTION_CP_CONC (DETECT_TASK_NO)
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
      dbms_output.put_line('脚本已跳过，因为 IDX_MT_SCRAM_FUNCT 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_INDEXES U WHERE u.INDEX_NAME = 'IDX_MT_SCP_CP_CONC_NO';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      create index IDX_MT_SCP_CP_CONC_NO   on  MT_SCP_CP_CONC (DETECT_TASK_NO)
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
      dbms_output.put_line('脚本已跳过，因为 IDX_MT_SCP_CP_ 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_INDEXES U WHERE u.INDEX_NAME = 'IDX_MT_PWM_CP_CONC_NO';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      create index IDX_MT_PWM_CP_CONC_NO   on  MT_PWM_CP_CONC (DETECT_TASK_NO)
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
      dbms_output.put_line('脚本已跳过，因为 IDX_MT_PWM_CP_ 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_INDEXES U WHERE u.INDEX_NAME = 'IDX_MT_PROTECT_LANDING_CONC_NO';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      create index IDX_MT_PROTECT_LANDING_CONC_NO   on  MT_PROTECT_LANDING_CP_CONC (DETECT_TASK_NO)
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
      dbms_output.put_line('脚本已跳过，因为 IDX_MT_PROTECT_LANDING_ 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_INDEXES U WHERE u.INDEX_NAME = 'IDX_MT_POWERUP_MESSAGE_CP_NO';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      create index IDX_MT_POWERUP_MESSAGE_CP_NO   on  MT_POWERUP_MESSAGE_CP_CONC (DETECT_TASK_NO)
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
      dbms_output.put_line('脚本已跳过，因为 IDX_MT_POWERUP_MESSAGE_CP_NO   已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_INDEXES U WHERE u.INDEX_NAME = 'IDX_MT_PORT_CP_CONC_NO';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      create index IDX_MT_PORT_CP_CONC_NO   on  MT_PORT_CP_CONC (DETECT_TASK_NO)
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
      dbms_output.put_line('脚本已跳过，因为 IDX_MT_PORT_CP_ 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_INDEXES U WHERE u.INDEX_NAME = 'IDX_MT_PLUG_LOCK_CP_NO';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      create index IDX_MT_PLUG_LOCK_CP_NO   on  MT_PLUG_LOCK_CP_CONC (DETECT_TASK_NO)
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
      dbms_output.put_line('脚本已跳过，因为 IDX_MT_PLUG_LOCK_CP_NO   已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_INDEXES U WHERE u.INDEX_NAME = 'IDX_MT_PF_CP_CONC_NO';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      create index IDX_MT_PF_CP_CONC_NO   on  MT_PF_CP_CONC (DETECT_TASK_NO)
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
      dbms_output.put_line('脚本已跳过，因为 IDX_MT_PF_CP_ 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_INDEXES U WHERE u.INDEX_NAME = 'IDX_MT_OPEN_PROTECT_CP_NO';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      create index IDX_MT_OPEN_PROTECT_CP_NO   on  MT_OPEN_PROTECT_CP_CONC (DETECT_TASK_NO)
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
      dbms_output.put_line('脚本已跳过，因为 IDX_MT_OPEN_PROTECT_CP_NO   已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_INDEXES U WHERE u.INDEX_NAME = 'IDX_MT_ONLOAD_DECILITER_CP_NO';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      create index IDX_MT_ONLOAD_DECILITER_CP_NO   on  MT_ONLOAD_DECILITER_CP_CONC (DETECT_TASK_NO)
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
      dbms_output.put_line('脚本已跳过，因为 IDX_MT 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_INDEXES U WHERE u.INDEX_NAME = 'IDX_MT_MEASUREMENT_ERROR_CP_NO';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      create index IDX_MT_MEASUREMENT_ERROR_CP_NO   on  MT_MEASUREMENT_ERROR_CP_CONC (DETECT_TASK_NO)
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
      dbms_output.put_line('脚本已跳过，因为 IDX_MT_MEASUREMENT_ERROR_CP_NO   已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_INDEXES U WHERE u.INDEX_NAME = 'IDX_MT_MEASURE_UNIFORMITY_NO';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      create index IDX_MT_MEASURE_UNIFORMITY_NO   on  MT_MEASURE_UNIFORMITY_CP_CONC (DETECT_TASK_NO)
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
      dbms_output.put_line('脚本已跳过，因为 IDX_MT_MEASURE_UNIFORMITY_NO   已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_INDEXES U WHERE u.INDEX_NAME = 'IDX_MT_MAXOUT_POWER_CP_NO';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      create index IDX_MT_MAXOUT_POWER_CP_NO   on  MT_MAXOUT_POWER_CP_CONC (DETECT_TASK_NO)
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
      dbms_output.put_line('脚本已跳过，因为 IDX_MT_MAXOUT_POWER_CP_NO   已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_INDEXES U WHERE u.INDEX_NAME = 'IDX_MT_LOWVOLT_AUXILIARY_CP_NO';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      create index IDX_MT_LOWVOLT_AUXILIARY_CP_NO   on  MT_LOWVOLT_AUXILIARY_CP_CONC (DETECT_TASK_NO)
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
      dbms_output.put_line('脚本已跳过，因为 IDX_MT_LOWVOLT_AUXILIARY_CP_NO   已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_INDEXES U WHERE u.INDEX_NAME = 'IDX_MT_LOCK_CP_CONC_NO';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      create index IDX_MT_LOCK_CP_CONC_NO   on  MT_LOCK_CP_CONC (DETECT_TASK_NO)
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
      dbms_output.put_line('脚本已跳过，因为 IDX_MT_LOCK_CP_ 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_INDEXES U WHERE u.INDEX_NAME = 'IDX_MT_LANDING_CP_CONC_NO';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      create index IDX_MT_LANDING_CP_CONC_NO   on  MT_LANDING_CP_CONC (DETECT_TASK_NO)
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
      dbms_output.put_line('脚本已跳过，因为 IDX_MT_LANDING_CP_ 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_INDEXES U WHERE u.INDEX_NAME = 'IDX_MT_INTUIT_CP_CONC_NO';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      create index IDX_MT_INTUIT_CP_CONC_NO   on  MT_INTUIT_CP_CONC (DETECT_TASK_NO)
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
      dbms_output.put_line('脚本已跳过，因为 IDX_MT_INTUIT_CP_ 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_INDEXES U WHERE u.INDEX_NAME = 'IDX_MT_INSULATE_ABNORMAL_CP_NO';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      create index IDX_MT_INSULATE_ABNORMAL_CP_NO   on  MT_INSULATE_ABNORMAL_CP_CONC (DETECT_TASK_NO)
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
      dbms_output.put_line('脚本已跳过，因为 IDX_MT_INSULATE_ABNORMAL_CP_NO   已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_INDEXES U WHERE u.INDEX_NAME = 'IDX_MT_INSU_RESIST_CP_CONC_NO';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      create index IDX_MT_INSU_RESIST_CP_CONC_NO   on  MT_INSU_RESIST_CP_CONC (DETECT_TASK_NO)
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
      dbms_output.put_line('脚本已跳过，因为 IDX_MT_INSU_RESIST_CP_ 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_INDEXES U WHERE u.INDEX_NAME = 'IDX_MT_INSIDE_CP_CONC_NO';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      create index IDX_MT_INSIDE_CP_CONC_NO   on  MT_INSIDE_CP_CONC (DETECT_TASK_NO)
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
      dbms_output.put_line('脚本已跳过，因为 IDX_MT_INSIDE_CP_ 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_INDEXES U WHERE u.INDEX_NAME = 'IDX_MT_INDICATIVE_ERROR_CP_NO';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      create index IDX_MT_INDICATIVE_ERROR_CP_NO   on  MT_INDICATIVE_ERROR_CP_CONC (DETECT_TASK_NO)
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
      dbms_output.put_line('脚本已跳过，因为 IDX_MT_INDICATIVE_ERROR_CP_NO   已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_INDEXES U WHERE u.INDEX_NAME = 'IDX_MT_IN_UNDERVOLT_CP_NO';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      create index IDX_MT_IN_UNDERVOLT_CP_NO   on  MT_IN_UNDERVOLT_CP_CONC (DETECT_TASK_NO)
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
      dbms_output.put_line('脚本已跳过，因为 IDX_MT_IN_UNDERVOLT_CP_NO   已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_INDEXES U WHERE u.INDEX_NAME = 'IDX_MT_IN_OVERVOLT_CP_CONC_NO';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      create index IDX_MT_IN_OVERVOLT_CP_CONC_NO   on  MT_IN_OVERVOLT_CP_CONC (DETECT_TASK_NO)
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
      dbms_output.put_line('脚本已跳过，因为 IDX_MT_IN_OVERVOLT_CP_ 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_INDEXES U WHERE u.INDEX_NAME = 'IDX_MT_IN_CP_CONC_NO';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      create index IDX_MT_IN_CP_CONC_NO   on  MT_IN_CP_CONC (DETECT_TASK_NO)
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
      dbms_output.put_line('脚本已跳过，因为 IDX_MT_IN_CP_ 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_INDEXES U WHERE u.INDEX_NAME = 'IDX_MT_EFFICIENCY_CP_CONC_NO';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      create index IDX_MT_EFFICIENCY_CP_CONC_NO   on  MT_EFFICIENCY_CP_CONC (DETECT_TASK_NO)
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
      dbms_output.put_line('脚本已跳过，因为 IDX_MT_EFFICIENCY_CP_ 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_INDEXES U WHERE u.INDEX_NAME = 'IDX_MT_DISPLAY_CP_CONC_NO';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      create index IDX_MT_DISPLAY_CP_CONC_NO   on  MT_DISPLAY_CP_CONC (DETECT_TASK_NO)
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
      dbms_output.put_line('脚本已跳过，因为 IDX_MT_DISPLAY_CP_ 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_INDEXES U WHERE u.INDEX_NAME = 'IDX_MT_DETECT_CP_RSLT_NO';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      create index IDX_MT_DETECT_CP_RSLT_NO   on  MT_DETECT_CP_RSLT (DETECT_TASK_NO)
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
      dbms_output.put_line('脚本已跳过，因为 IDX_MT_DETECT_CP_RSLT_NO   已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_INDEXES U WHERE u.INDEX_NAME = 'IDX_MT_CURRENT_PRECISION_CP_NO';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      create index IDX_MT_CURRENT_PRECISION_CP_NO   on  MT_CURRENT_PRECISION_CP_CONC (DETECT_TASK_NO)
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
      dbms_output.put_line('脚本已跳过，因为 IDX_MT_CURRENT_PRECIS 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_INDEXES U WHERE u.INDEX_NAME = 'IDX_MT_CONTROL_VOLTLIMIT_CP_NO';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      create index IDX_MT_CONTROL_VOLTLIMIT_CP_NO   on  MT_CONTROL_VOLTLIMIT_CP_CONC (DETECT_TASK_NO)
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
      dbms_output.put_line('脚本已跳过，因为 IDX_MT_ 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_INDEXES U WHERE u.INDEX_NAME = 'IDX_MT_CONNECT_CP_CONC_NO';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      create index IDX_MT_CONNECT_CP_CONC_NO   on  MT_CONNECT_CP_CONC (DETECT_TASK_NO)
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
      dbms_output.put_line('脚本已跳过，因为 IDX_MT_ 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_INDEXES U WHERE u.INDEX_NAME = 'IDX_MT_CONNECT_CONFIRM_CP_NO';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      create index IDX_MT_CONNECT_CONFIRM_CP_NO   on  MT_CONNECT_CONFIRM_CP_CONC (DETECT_TASK_NO)
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
      dbms_output.put_line('脚本已跳过，因为 IDX_MT_ 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_INDEXES U WHERE u.INDEX_NAME = 'IDX_MT_CONFIG_MSG_CP_NO';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      create index IDX_MT_CONFIG_MSG_CP_NO   on  MT_CONFIG_MSG_CP_CONC (DETECT_TASK_NO)
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
      dbms_output.put_line('脚本已跳过，因为 IDX_MT_ 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_INDEXES U WHERE u.INDEX_NAME = 'IDX_MT_COMPOSE_CP_CONC_NO';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      create index IDX_MT_COMPOSE_CP_CONC_NO   on  MT_COMPOSE_CP_CONC (DETECT_TASK_NO)
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
      dbms_output.put_line('脚本已跳过，因为 IDX_MT_COMPOSE_CP_ 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_INDEXES U WHERE u.INDEX_NAME = 'IDX_MT_COMM_BREAK_CP_CONC_NO';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      create index IDX_MT_COMM_BREAK_CP_CONC_NO   on  MT_COMM_BREAK_CP_CONC (DETECT_TASK_NO)
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
      dbms_output.put_line('脚本已跳过，因为 IDX_MT_COMM_BREAK_CP_ 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_INDEXES U WHERE u.INDEX_NAME = 'IDX_MT_CLEARANCE_CREEPAGE_NO';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      create index IDX_MT_CLEARANCE_CREEPAGE_NO   on  MT_CLEARANCE_CREEPAGE_CP_CONC (DETECT_TASK_NO)
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
      dbms_output.put_line('脚本已跳过，因为 IDX_MT_CLEARANCE_CREEPAGE_NO   已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_INDEXES U WHERE u.INDEX_NAME = 'IDX_MT_CHARGEEND_MEAASGE_NO';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      create index IDX_MT_CHARGEEND_MEAASGE_NO   on  MT_CHARGEEND_MEAASGE_CP_CONC (DETECT_TASK_NO)
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
      dbms_output.put_line('脚本已跳过，因为 IDX_MT_CHARGEEND_MEAASGE_NO   已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_INDEXES U WHERE u.INDEX_NAME = 'IDX_MT_CHARGE_MEAASGE_CP_NO';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      create index IDX_MT_CHARGE_MEAASGE_CP_NO   on  MT_CHARGE_MEAASGE_CP_CONC (DETECT_TASK_NO)
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
      dbms_output.put_line('脚本已跳过，因为 IDX_MT_CHARGE_MEAASGE_CP_NO   已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_INDEXES U WHERE u.INDEX_NAME = 'IDX_MT_WIRE_FLAG';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      create index IDX_MT_WIRE_FLAG   on  MT_WIRE_CP_CONC (HANDLE_FLAG)
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
      dbms_output.put_line('脚本已跳过，因为 IDX_MT_WIRE_FLAG   已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_INDEXES U WHERE u.INDEX_NAME = 'IDX_MT_VOLT_RIPPLE_FLAG';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      create index IDX_MT_VOLT_RIPPLE_FLAG   on  MT_VOLT_RIPPLE_CP_CONC (HANDLE_FLAG)
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
      dbms_output.put_line('脚本已跳过，因为 IDX_MT_VOLT_RIPPLE_FLAG   已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_INDEXES U WHERE u.INDEX_NAME = 'IDX_MT_VOLT_PRECISION_FLAG';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      create index IDX_MT_VOLT_PRECISION_FLAG   on  MT_VOLT_PRECISION_CP_CONC (HANDLE_FLAG)
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
      dbms_output.put_line('脚本已跳过，因为 IDX_MT_VOLT_PRECIS 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_INDEXES U WHERE u.INDEX_NAME = 'IDX_MT_VOLT_LOSS_FLAG';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      create index IDX_MT_VOLT_LOSS_FLAG   on  MT_VOLT_LOSS_CP_CONC (HANDLE_FLAG)
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
      dbms_output.put_line('脚本已跳过，因为 IDX_MT_VOLT_LOSS_FLAG   已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_INDEXES U WHERE u.INDEX_NAME = 'IDX_MT_STANDBY_POWER_FLAG';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      create index IDX_MT_STANDBY_POWER_FLAG   on  MT_STANDBY_POWER_CP_CONC (HANDLE_FLAG)
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
      dbms_output.put_line('脚本已跳过，因为 IDX_MT_STANDBY_POWER_FLAG   已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_INDEXES U WHERE u.INDEX_NAME = 'IDX_MT_SIGNAL_BREAK_FLAG';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      create index IDX_MT_SIGNAL_BREAK_FLAG   on  MT_SIGNAL_BREAK_CP_CONC (HANDLE_FLAG)
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
      dbms_output.put_line('脚本已跳过，因为 IDX_MT_SIGNAL_BREAK_FLAG   已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_INDEXES U WHERE u.INDEX_NAME = 'IDX_MT_SIGN_FLAG';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      create index IDX_MT_SIGN_FLAG   on  MT_SIGN_CP_CONC (HANDLE_FLAG)
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
      dbms_output.put_line('脚本已跳过，因为 IDX_MT_SIGN_FLAG   已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_INDEXES U WHERE u.INDEX_NAME = 'IDX_MT_SCRAM_FUNCTION_FLAG';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      create index IDX_MT_SCRAM_FUNCTION_FLAG   on  MT_SCRAM_FUNCTION_CP_CONC (HANDLE_FLAG)
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
      dbms_output.put_line('脚本已跳过，因为 IDX_MT_SCRAM_FUNCT 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_INDEXES U WHERE u.INDEX_NAME = 'IDX_MT_SCP_FLAG';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      create index IDX_MT_SCP_FLAG   on  MT_SCP_CP_CONC (HANDLE_FLAG)
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
      dbms_output.put_line('脚本已跳过，因为 IDX_MT_SCP_FLAG   已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_INDEXES U WHERE u.INDEX_NAME = 'IDX_MT_PWM_FLAG';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      create index IDX_MT_PWM_FLAG   on  MT_PWM_CP_CONC (HANDLE_FLAG)
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
      dbms_output.put_line('脚本已跳过，因为 IDX_MT_PWM_FLAG   已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_INDEXES U WHERE u.INDEX_NAME = 'IDX_MT_PROTECT_LANDING_FLAG';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      create index IDX_MT_PROTECT_LANDING_FLAG   on  MT_PROTECT_LANDING_CP_CONC (HANDLE_FLAG)
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
      dbms_output.put_line('脚本已跳过，因为 IDX_MT_PROTECT_LANDING_FLAG   已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_INDEXES U WHERE u.INDEX_NAME = 'IDX_MT_POWERUP_MESSAGE_FLAG';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      create index IDX_MT_POWERUP_MESSAGE_FLAG   on  MT_POWERUP_MESSAGE_CP_CONC (HANDLE_FLAG)
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
      dbms_output.put_line('脚本已跳过，因为 IDX_MT_POWERUP_MESSAGE_FLAG   已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_INDEXES U WHERE u.INDEX_NAME = 'IDX_MT_PORT_FLAG';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      create index IDX_MT_PORT_FLAG   on  MT_PORT_CP_CONC (HANDLE_FLAG)
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
      dbms_output.put_line('脚本已跳过，因为 IDX_MT_PORT_FLAG   已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_INDEXES U WHERE u.INDEX_NAME = 'IDX_MT_PLUG_LOCK_FLAG';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      create index IDX_MT_PLUG_LOCK_FLAG   on  MT_PLUG_LOCK_CP_CONC (HANDLE_FLAG)
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
      dbms_output.put_line('脚本已跳过，因为 IDX_MT_PLUG_LOCK_FLAG   已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_INDEXES U WHERE u.INDEX_NAME = 'IDX_MT_PF_FLAG';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      create index IDX_MT_PF_FLAG   on  MT_PF_CP_CONC (HANDLE_FLAG)
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
      dbms_output.put_line('脚本已跳过，因为 IDX_MT_PF_FLAG   已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_INDEXES U WHERE u.INDEX_NAME = 'IDX_MT_OPEN_PROTECT_FLAG';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      create index IDX_MT_OPEN_PROTECT_FLAG   on  MT_OPEN_PROTECT_CP_CONC (HANDLE_FLAG)
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
      dbms_output.put_line('脚本已跳过，因为 IDX_MT_OPEN_PROTECT_FLAG   已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_INDEXES U WHERE u.INDEX_NAME = 'IDX_MT_ONLOAD_DECILITER_FLAG';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      create index IDX_MT_ONLOAD_DECILITER_FLAG   on  MT_ONLOAD_DECILITER_CP_CONC (HANDLE_FLAG)
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
      dbms_output.put_line('脚本已跳过，因为 IDX_MT 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_INDEXES U WHERE u.INDEX_NAME = 'IDX_MT_MEASUREMENT_ERROR_FLAG';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      create index IDX_MT_MEASUREMENT_ERROR_FLAG   on  MT_MEASUREMENT_ERROR_CP_CONC (HANDLE_FLAG)
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
      dbms_output.put_line('脚本已跳过，因为 IDX_MT_MEASUREMENT_ERROR_FLAG   已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_INDEXES U WHERE u.INDEX_NAME = 'IDX_MT_MEASURE_UNIFORMITY_FLAG';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      create index IDX_MT_MEASURE_UNIFORMITY_FLAG   on  MT_MEASURE_UNIFORMITY_CP_CONC (HANDLE_FLAG)
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
      dbms_output.put_line('脚本已跳过，因为 IDX_MT_MEASURE_UNIFORMITY_FLAG   已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_INDEXES U WHERE u.INDEX_NAME = 'IDX_MT_MAXOUT_POWER_FLAG';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      create index IDX_MT_MAXOUT_POWER_FLAG   on  MT_MAXOUT_POWER_CP_CONC (HANDLE_FLAG)
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
      dbms_output.put_line('脚本已跳过，因为 IDX_MT_MAXOUT_POWER_FLAG   已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_INDEXES U WHERE u.INDEX_NAME = 'IDX_MT_LOWVOLT_AUXILIARY_FLAG';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      create index IDX_MT_LOWVOLT_AUXILIARY_FLAG   on  MT_LOWVOLT_AUXILIARY_CP_CONC (HANDLE_FLAG)
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
      dbms_output.put_line('脚本已跳过，因为 IDX_MT_LOWVOLT_AUXILIARY_FLAG   已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_INDEXES U WHERE u.INDEX_NAME = 'IDX_MT_LOCK_FLAG';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      create index IDX_MT_LOCK_FLAG   on  MT_LOCK_CP_CONC (HANDLE_FLAG)
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
      dbms_output.put_line('脚本已跳过，因为 IDX_MT_LOCK_FLAG   已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_INDEXES U WHERE u.INDEX_NAME = 'IDX_MT_LANDING_FLAG';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      create index IDX_MT_LANDING_FLAG   on  MT_LANDING_CP_CONC (HANDLE_FLAG)
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
      dbms_output.put_line('脚本已跳过，因为 IDX_MT_LANDING_FLAG   已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_INDEXES U WHERE u.INDEX_NAME = 'IDX_MT_INTUIT_FLAG';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      create index IDX_MT_INTUIT_FLAG   on  MT_INTUIT_CP_CONC (HANDLE_FLAG)
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
      dbms_output.put_line('脚本已跳过，因为 IDX_MT_INTUIT_FLAG   已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_INDEXES U WHERE u.INDEX_NAME = 'IDX_MT_INSULATE_ABNORMAL_FLAG';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      create index IDX_MT_INSULATE_ABNORMAL_FLAG   on  MT_INSULATE_ABNORMAL_CP_CONC (HANDLE_FLAG)
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
      dbms_output.put_line('脚本已跳过，因为 IDX_MT_INSULATE_ABNORMAL_FLAG   已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_INDEXES U WHERE u.INDEX_NAME = 'IDX_MT_INSU_RESIST_FLAG';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      create index IDX_MT_INSU_RESIST_FLAG   on  MT_INSU_RESIST_CP_CONC (HANDLE_FLAG)
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
      dbms_output.put_line('脚本已跳过，因为 IDX_MT_INSU_RESIST_FLAG   已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_INDEXES U WHERE u.INDEX_NAME = 'IDX_MT_INSIDE_FLAG';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      create index IDX_MT_INSIDE_FLAG   on  MT_INSIDE_CP_CONC (HANDLE_FLAG)
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
      dbms_output.put_line('脚本已跳过，因为 IDX_MT_INSIDE_FLAG   已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_INDEXES U WHERE u.INDEX_NAME = 'IDX_MT_INDICATIVE_ERROR_FLAG';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      create index IDX_MT_INDICATIVE_ERROR_FLAG   on  MT_INDICATIVE_ERROR_CP_CONC (HANDLE_FLAG)
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
      dbms_output.put_line('脚本已跳过，因为 IDX_MT_INDICATIVE_ERROR_FLAG   已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_INDEXES U WHERE u.INDEX_NAME = 'IDX_MT_IN_UNDERVOLT_FLAG';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      create index IDX_MT_IN_UNDERVOLT_FLAG   on  MT_IN_UNDERVOLT_CP_CONC (HANDLE_FLAG)
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
      dbms_output.put_line('脚本已跳过，因为 IDX_MT_IN_UNDERVOLT_FLAG   已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_INDEXES U WHERE u.INDEX_NAME = 'IDX_MT_IN_OVERVOLT_FLAG';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      create index IDX_MT_IN_OVERVOLT_FLAG   on  MT_IN_OVERVOLT_CP_CONC (HANDLE_FLAG)
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
      dbms_output.put_line('脚本已跳过，因为 IDX_MT_IN_OVERVOLT_FLAG   已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_INDEXES U WHERE u.INDEX_NAME = 'IDX_MT_IN_FLAG';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      create index IDX_MT_IN_FLAG   on  MT_IN_CP_CONC (HANDLE_FLAG)
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
      dbms_output.put_line('脚本已跳过，因为 IDX_MT_IN_FLAG   已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_INDEXES U WHERE u.INDEX_NAME = 'IDX_MT_EFFICIENCY_FLAG';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      create index IDX_MT_EFFICIENCY_FLAG   on  MT_EFFICIENCY_CP_CONC (HANDLE_FLAG)
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
      dbms_output.put_line('脚本已跳过，因为 IDX_MT_EFFICIENCY_FLAG   已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_INDEXES U WHERE u.INDEX_NAME = 'IDX_MT_DISPLAY_FLAG';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      create index IDX_MT_DISPLAY_FLAG   on  MT_DISPLAY_CP_CONC (HANDLE_FLAG)
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
      dbms_output.put_line('脚本已跳过，因为 IDX_MT_DISPLAY_FLAG   已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_INDEXES U WHERE u.INDEX_NAME = 'IDX_MT_DETECT_CP_RSLT_FLAG';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      create index IDX_MT_DETECT_CP_RSLT_FLAG   on  MT_DETECT_CP_RSLT (HANDLE_FLAG)
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
      dbms_output.put_line('脚本已跳过，因为 IDX_MT_DETECT_CP_RSLT_FLAG   已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_INDEXES U WHERE u.INDEX_NAME = 'IDX_MT_CURRENT_PRECISION_FLAG';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      create index IDX_MT_CURRENT_PRECISION_FLAG   on  MT_CURRENT_PRECISION_CP_CONC (HANDLE_FLAG)
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
      dbms_output.put_line('脚本已跳过，因为 IDX_MT_CURRENT_PRECIS 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_INDEXES U WHERE u.INDEX_NAME = 'IDX_MT_CONTROL_VOLTLIMIT_FLAG';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      create index IDX_MT_CONTROL_VOLTLIMIT_FLAG   on  MT_CONTROL_VOLTLIMIT_CP_CONC (HANDLE_FLAG)
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
      dbms_output.put_line('脚本已跳过，因为 IDX_MT_ 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_INDEXES U WHERE u.INDEX_NAME = 'IDX_MT_CONNECT_FLAG';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      create index IDX_MT_CONNECT_FLAG   on  MT_CONNECT_CP_CONC (HANDLE_FLAG)
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
      dbms_output.put_line('脚本已跳过，因为 IDX_MT_ 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_INDEXES U WHERE u.INDEX_NAME = 'IDX_MT_CONNECT_CONFIRM_FLAG';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      create index IDX_MT_CONNECT_CONFIRM_FLAG   on  MT_CONNECT_CONFIRM_CP_CONC (HANDLE_FLAG)
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
      dbms_output.put_line('脚本已跳过，因为 IDX_MT_ 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_INDEXES U WHERE u.INDEX_NAME = 'IDX_MT_CONFIG_MSG_FLAG';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      create index IDX_MT_CONFIG_MSG_FLAG   on  MT_CONFIG_MSG_CP_CONC (HANDLE_FLAG)
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
      dbms_output.put_line('脚本已跳过，因为 IDX_MT_ 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_INDEXES U WHERE u.INDEX_NAME = 'IDX_MT_COMPOSE_FLAG';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      create index IDX_MT_COMPOSE_FLAG   on  MT_COMPOSE_CP_CONC (HANDLE_FLAG)
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
      dbms_output.put_line('脚本已跳过，因为 IDX_MT_COMPOSE_FLAG   已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_INDEXES U WHERE u.INDEX_NAME = 'IDX_MT_COMM_BREAK_FLAG';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      create index IDX_MT_COMM_BREAK_FLAG   on  MT_COMM_BREAK_CP_CONC (HANDLE_FLAG)
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
      dbms_output.put_line('脚本已跳过，因为 IDX_MT_COMM_BREAK_FLAG   已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_INDEXES U WHERE u.INDEX_NAME = 'IDX_MT_CLEARANCE_CREEPAGE_FLAG';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      create index IDX_MT_CLEARANCE_CREEPAGE_FLAG   on  MT_CLEARANCE_CREEPAGE_CP_CONC (HANDLE_FLAG)
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
      dbms_output.put_line('脚本已跳过，因为 IDX_MT_CLEARANCE_CREEPAGE_FLAG   已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_INDEXES U WHERE u.INDEX_NAME = 'IDX_MT_CHARGEEND_MEAASGE_FLAG';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      create index IDX_MT_CHARGEEND_MEAASGE_FLAG   on  MT_CHARGEEND_MEAASGE_CP_CONC (HANDLE_FLAG)
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
      dbms_output.put_line('脚本已跳过，因为 IDX_MT_CHARGEEND_MEAASGE_FLAG   已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_INDEXES U WHERE u.INDEX_NAME = 'IDX_MT_CHARGE_MEAASGE_FLAG';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      create index IDX_MT_CHARGE_MEAASGE_FLAG   on  MT_CHARGE_MEAASGE_CP_CONC (HANDLE_FLAG)
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
      dbms_output.put_line('脚本已跳过，因为 IDX_MT_CHARGE_MEAASGE_FLAG   已存在。');
    END IF;
END;
/






prompt
prompt 正在处理纪录编号为 8200000000018658 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'MT_WIRE_CP_CONC' AND U.COLUMN_NAME='HANDLE_FLAG';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table MT_WIRE_CP_CONC modify handle_flag VARCHAR2(32)  default ''0''
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 MT_WIRE_CP_CONC.HANDLE_FLAG 不存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'MT_VOLT_RIPPLE_CP_CONC' AND U.COLUMN_NAME='HANDLE_FLAG';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table MT_VOLT_RIPPLE_CP_CONC modify handle_flag VARCHAR2(32)  default ''0''
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 MT_VOLT_RIPPLE_CP_CONC.HANDLE_FLAG 不存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'MT_VOLT_PRECISION_CP_CONC' AND U.COLUMN_NAME='HANDLE_FLAG';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table MT_VOLT_PRECISION_CP_CONC modify handle_flag VARCHAR2(32)  default ''0''
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 MT_VOLT_PRECISION_CP_CONC.HANDLE_FLAG 不存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'MT_VOLT_LOSS_CP_CONC' AND U.COLUMN_NAME='HANDLE_FLAG';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table MT_VOLT_LOSS_CP_CONC modify handle_flag VARCHAR2(32)  default ''0''
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 MT_VOLT_LOSS_CP_CONC.HANDLE_FLAG 不存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'MT_STANDBY_POWER_CP_CONC' AND U.COLUMN_NAME='HANDLE_FLAG';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table MT_STANDBY_POWER_CP_CONC modify handle_flag VARCHAR2(32)  default ''0''
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 MT_STANDBY_POWER_CP_CONC.HANDLE_FLAG 不存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'MT_SIGNAL_BREAK_CP_CONC' AND U.COLUMN_NAME='HANDLE_FLAG';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table MT_SIGNAL_BREAK_CP_CONC modify handle_flag VARCHAR2(32)  default ''0''
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 MT_SIGNAL_BREAK_CP_CONC.HANDLE_FLAG 不存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'MT_SIGN_CP_CONC' AND U.COLUMN_NAME='HANDLE_FLAG';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table MT_SIGN_CP_CONC modify handle_flag VARCHAR2(32)  default ''0''
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 MT_SIGN_CP_CONC.HANDLE_FLAG 不存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'MT_SCRAM_FUNCTION_CP_CONC' AND U.COLUMN_NAME='HANDLE_FLAG';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table MT_SCRAM_FUNCTION_CP_CONC modify handle_flag VARCHAR2(32)  default ''0''
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 MT_SCRAM_FUNCTION_CP_CONC.HANDLE_FLAG 不存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'MT_SCP_CP_CONC' AND U.COLUMN_NAME='HANDLE_FLAG';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table MT_SCP_CP_CONC modify handle_flag VARCHAR2(32)  default ''0''
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 MT_SCP_CP_CONC.HANDLE_FLAG 不存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'MT_PWM_CP_CONC' AND U.COLUMN_NAME='HANDLE_FLAG';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table MT_PWM_CP_CONC modify handle_flag VARCHAR2(32)  default ''0''
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 MT_PWM_CP_CONC.HANDLE_FLAG 不存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'MT_PROTECT_LANDING_CP_CONC' AND U.COLUMN_NAME='HANDLE_FLAG';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table MT_PROTECT_LANDING_CP_CONC modify handle_flag VARCHAR2(32)  default ''0''
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 MT_PROTECT_LANDING_CP_CONC.HANDLE_FLAG 不存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'MT_POWERUP_MESSAGE_CP_CONC' AND U.COLUMN_NAME='HANDLE_FLAG';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table MT_POWERUP_MESSAGE_CP_CONC modify handle_flag VARCHAR2(32)  default ''0''
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 MT_POWERUP_MESSAGE_CP_CONC.HANDLE_FLAG 不存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'MT_PORT_CP_CONC' AND U.COLUMN_NAME='HANDLE_FLAG';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table MT_PORT_CP_CONC modify handle_flag VARCHAR2(32)  default ''0''
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 MT_PORT_CP_CONC.HANDLE_FLAG 不存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'MT_PLUG_LOCK_CP_CONC' AND U.COLUMN_NAME='HANDLE_FLAG';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table MT_PLUG_LOCK_CP_CONC modify handle_flag VARCHAR2(32)  default ''0''
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 MT_PLUG_LOCK_CP_CONC.HANDLE_FLAG 不存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'MT_PF_CP_CONC' AND U.COLUMN_NAME='HANDLE_FLAG';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table MT_PF_CP_CONC modify handle_flag VARCHAR2(32)  default ''0''
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 MT_PF_CP_CONC.HANDLE_FLAG 不存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'MT_OPEN_PROTECT_CP_CONC' AND U.COLUMN_NAME='HANDLE_FLAG';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table MT_OPEN_PROTECT_CP_CONC modify handle_flag VARCHAR2(32)  default ''0''
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 MT_OPEN_PROTECT_CP_CONC.HANDLE_FLAG 不存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'MT_ONLOAD_DECILITER_CP_CONC' AND U.COLUMN_NAME='HANDLE_FLAG';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table MT_ONLOAD_DECILITER_CP_CONC modify handle_flag VARCHAR2(32)  default ''0''
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 MT_ONLOAD_DECILITER_CP_CONC.HANDLE_FLAG 不存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'MT_MEASUREMENT_ERROR_CP_CONC' AND U.COLUMN_NAME='HANDLE_FLAG';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table MT_MEASUREMENT_ERROR_CP_CONC modify handle_flag VARCHAR2(32)  default ''0''
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 MT_MEASUREMENT_ERROR_CP_CONC.HANDLE_FLAG 不存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'MT_MEASURE_UNIFORMITY_CP_CONC' AND U.COLUMN_NAME='HANDLE_FLAG';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table MT_MEASURE_UNIFORMITY_CP_CONC modify handle_flag VARCHAR2(32)  default ''0''
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 MT_MEASURE_UNIFORMITY_CP_CONC.HANDLE_FLAG 不存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'MT_MAXOUT_POWER_CP_CONC' AND U.COLUMN_NAME='HANDLE_FLAG';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table MT_MAXOUT_POWER_CP_CONC modify handle_flag VARCHAR2(32)  default ''0''
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 MT_MAXOUT_POWER_CP_CONC.HANDLE_FLAG 不存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'MT_LOWVOLT_AUXILIARY_CP_CONC' AND U.COLUMN_NAME='HANDLE_FLAG';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table MT_LOWVOLT_AUXILIARY_CP_CONC modify handle_flag VARCHAR2(32)  default ''0''
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 MT_LOWVOLT_AUXILIARY_CP_CONC.HANDLE_FLAG 不存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'MT_LOCK_CP_CONC' AND U.COLUMN_NAME='HANDLE_FLAG';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table MT_LOCK_CP_CONC modify handle_flag VARCHAR2(32)  default ''0''
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 MT_LOCK_CP_CONC.HANDLE_FLAG 不存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'MT_LANDING_CP_CONC' AND U.COLUMN_NAME='HANDLE_FLAG';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table MT_LANDING_CP_CONC modify handle_flag VARCHAR2(32)  default ''0''
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 MT_LANDING_CP_CONC.HANDLE_FLAG 不存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'MT_INTUIT_CP_CONC' AND U.COLUMN_NAME='HANDLE_FLAG';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table MT_INTUIT_CP_CONC modify handle_flag VARCHAR2(32)  default ''0''
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 MT_INTUIT_CP_CONC.HANDLE_FLAG 不存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'MT_INSULATE_ABNORMAL_CP_CONC' AND U.COLUMN_NAME='HANDLE_FLAG';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table MT_INSULATE_ABNORMAL_CP_CONC modify handle_flag VARCHAR2(32)  default ''0''
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 MT_INSULATE_ABNORMAL_CP_CONC.HANDLE_FLAG 不存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'MT_INSU_RESIST_CP_CONC' AND U.COLUMN_NAME='HANDLE_FLAG';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table MT_INSU_RESIST_CP_CONC modify handle_flag VARCHAR2(32)  default ''0''
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 MT_INSU_RESIST_CP_CONC.HANDLE_FLAG 不存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'MT_INSIDE_CP_CONC' AND U.COLUMN_NAME='HANDLE_FLAG';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table MT_INSIDE_CP_CONC modify handle_flag VARCHAR2(32)  default ''0''
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 MT_INSIDE_CP_CONC.HANDLE_FLAG 不存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'MT_INDICATIVE_ERROR_CP_CONC' AND U.COLUMN_NAME='HANDLE_FLAG';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table MT_INDICATIVE_ERROR_CP_CONC modify handle_flag VARCHAR2(32)  default ''0''
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 MT_INDICATIVE_ERROR_CP_CONC.HANDLE_FLAG 不存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'MT_IN_UNDERVOLT_CP_CONC' AND U.COLUMN_NAME='HANDLE_FLAG';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table MT_IN_UNDERVOLT_CP_CONC modify handle_flag VARCHAR2(32)  default ''0''
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 MT_IN_UNDERVOLT_CP_CONC.HANDLE_FLAG 不存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'MT_IN_OVERVOLT_CP_CONC' AND U.COLUMN_NAME='HANDLE_FLAG';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table MT_IN_OVERVOLT_CP_CONC modify handle_flag VARCHAR2(32)  default ''0''
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 MT_IN_OVERVOLT_CP_CONC.HANDLE_FLAG 不存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'MT_IN_CP_CONC' AND U.COLUMN_NAME='HANDLE_FLAG';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table MT_IN_CP_CONC modify handle_flag VARCHAR2(32)  default ''0''
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 MT_IN_CP_CONC.HANDLE_FLAG 不存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'MT_EFFICIENCY_CP_CONC' AND U.COLUMN_NAME='HANDLE_FLAG';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table MT_EFFICIENCY_CP_CONC modify handle_flag VARCHAR2(32)  default ''0''
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 MT_EFFICIENCY_CP_CONC.HANDLE_FLAG 不存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'MT_DISPLAY_CP_CONC' AND U.COLUMN_NAME='HANDLE_FLAG';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table MT_DISPLAY_CP_CONC modify handle_flag VARCHAR2(32)  default ''0''
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 MT_DISPLAY_CP_CONC.HANDLE_FLAG 不存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'MT_DETECT_CP_RSLT' AND U.COLUMN_NAME='HANDLE_FLAG';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table MT_DETECT_CP_RSLT modify handle_flag VARCHAR2(32)  default ''0''
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 MT_DETECT_CP_RSLT.HANDLE_FLAG 不存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'MT_CURRENT_PRECISION_CP_CONC' AND U.COLUMN_NAME='HANDLE_FLAG';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table MT_CURRENT_PRECISION_CP_CONC modify handle_flag VARCHAR2(32)  default ''0''
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 MT_CURRENT_PRECISION_CP_CONC.HANDLE_FLAG 不存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'MT_CONTROL_VOLTLIMIT_CP_CONC' AND U.COLUMN_NAME='HANDLE_FLAG';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table MT_CONTROL_VOLTLIMIT_CP_CONC modify handle_flag VARCHAR2(32)  default ''0''
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 MT_CONTROL_VOLTLIMIT_CP_CONC.HANDLE_FLAG 不存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'MT_CONNECT_CP_CONC' AND U.COLUMN_NAME='HANDLE_FLAG';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table MT_CONNECT_CP_CONC modify handle_flag VARCHAR2(32)  default ''0''
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 MT_CONNECT_CP_CONC.HANDLE_FLAG 不存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'MT_CONNECT_CONFIRM_CP_CONC' AND U.COLUMN_NAME='HANDLE_FLAG';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table MT_CONNECT_CONFIRM_CP_CONC modify handle_flag VARCHAR2(32)  default ''0''
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 MT_CONNECT_CONFIRM_CP_CONC.HANDLE_FLAG 不存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'MT_CONFIG_MSG_CP_CONC' AND U.COLUMN_NAME='HANDLE_FLAG';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table MT_CONFIG_MSG_CP_CONC modify handle_flag VARCHAR2(32)  default ''0''
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 MT_CONFIG_MSG_CP_CONC.HANDLE_FLAG 不存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'MT_COMPOSE_CP_CONC' AND U.COLUMN_NAME='HANDLE_FLAG';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table MT_COMPOSE_CP_CONC modify handle_flag VARCHAR2(32)  default ''0''
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 MT_COMPOSE_CP_CONC.HANDLE_FLAG 不存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'MT_COMM_BREAK_CP_CONC' AND U.COLUMN_NAME='HANDLE_FLAG';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table MT_COMM_BREAK_CP_CONC modify handle_flag VARCHAR2(32)  default ''0''
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 MT_COMM_BREAK_CP_CONC.HANDLE_FLAG 不存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'MT_CLEARANCE_CREEPAGE_CP_CONC' AND U.COLUMN_NAME='HANDLE_FLAG';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table MT_CLEARANCE_CREEPAGE_CP_CONC modify handle_flag VARCHAR2(32)  default ''0''
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 MT_CLEARANCE_CREEPAGE_CP_CONC.HANDLE_FLAG 不存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'MT_CHARGEEND_MEAASGE_CP_CONC' AND U.COLUMN_NAME='HANDLE_FLAG';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table MT_CHARGEEND_MEAASGE_CP_CONC modify handle_flag VARCHAR2(32)  default ''0''
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 MT_CHARGEEND_MEAASGE_CP_CONC.HANDLE_FLAG 不存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'MT_CHARGE_MEAASGE_CP_CONC' AND U.COLUMN_NAME='HANDLE_FLAG';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table MT_CHARGE_MEAASGE_CP_CONC modify handle_flag VARCHAR2(32)  default ''0''
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 MT_CHARGE_MEAASGE_CP_CONC.HANDLE_FLAG 不存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column MT_WIRE_CP_CONC.handle_flag   is ''处理标记。0：未处理（默认）、1：处理中、2：已处理''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_VOLT_RIPPLE_CP_CONC.handle_flag   is ''处理标记。0：未处理（默认）、1：处理中、2：已处理''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_VOLT_PRECISION_CP_CONC.handle_flag   is ''处理标记。0：未处理（默认）、1：处理中、2：已处理''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_VOLT_LOSS_CP_CONC.handle_flag   is ''处理标记。0：未处理（默认）、1：处理中、2：已处理''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_STANDBY_POWER_CP_CONC.handle_flag   is ''处理标记。0：未处理（默认）、1：处理中、2：已处理''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_SIGNAL_BREAK_CP_CONC.handle_flag   is ''处理标记。0：未处理（默认）、1：处理中、2：已处理''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_SIGN_CP_CONC.handle_flag   is ''处理标记。0：未处理（默认）、1：处理中、2：已处理''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_SCRAM_FUNCTION_CP_CONC.handle_flag   is ''处理标记。0：未处理（默认）、1：处理中、2：已处理''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_SCP_CP_CONC.handle_flag   is ''处理标记。0：未处理（默认）、1：处理中、2：已处理''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_PWM_CP_CONC.handle_flag   is ''处理标记。0：未处理（默认）、1：处理中、2：已处理''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_PROTECT_LANDING_CP_CONC.handle_flag   is ''处理标记。0：未处理（默认）、1：处理中、2：已处理''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_POWERUP_MESSAGE_CP_CONC.handle_flag   is ''处理标记。0：未处理（默认）、1：处理中、2：已处理''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_PORT_CP_CONC.handle_flag   is ''处理标记。0：未处理（默认）、1：处理中、2：已处理''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_PLUG_LOCK_CP_CONC.handle_flag   is ''处理标记。0：未处理（默认）、1：处理中、2：已处理''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_PF_CP_CONC.handle_flag   is ''处理标记。0：未处理（默认）、1：处理中、2：已处理''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_OPEN_PROTECT_CP_CONC.handle_flag   is ''处理标记。0：未处理（默认）、1：处理中、2：已处理''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_ONLOAD_DECILITER_CP_CONC.handle_flag   is ''处理标记。0：未处理（默认）、1：处理中、2：已处理''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_MEASUREMENT_ERROR_CP_CONC.handle_flag   is ''处理标记。0：未处理（默认）、1：处理中、2：已处理''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_MEASURE_UNIFORMITY_CP_CONC.handle_flag   is ''处理标记。0：未处理（默认）、1：处理中、2：已处理''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_MAXOUT_POWER_CP_CONC.handle_flag   is ''处理标记。0：未处理（默认）、1：处理中、2：已处理''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_LOWVOLT_AUXILIARY_CP_CONC.handle_flag   is ''处理标记。0：未处理（默认）、1：处理中、2：已处理''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_LOCK_CP_CONC.handle_flag   is ''处理标记。0：未处理（默认）、1：处理中、2：已处理''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_LANDING_CP_CONC.handle_flag   is ''处理标记。0：未处理（默认）、1：处理中、2：已处理''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_INTUIT_CP_CONC.handle_flag   is ''处理标记。0：未处理（默认）、1：处理中、2：已处理''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_INSULATE_ABNORMAL_CP_CONC.handle_flag   is ''处理标记。0：未处理（默认）、1：处理中、2：已处理''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_INSU_RESIST_CP_CONC.handle_flag   is ''处理标记。0：未处理（默认）、1：处理中、2：已处理''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_INSIDE_CP_CONC.handle_flag   is ''处理标记。0：未处理（默认）、1：处理中、2：已处理''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_INDICATIVE_ERROR_CP_CONC.handle_flag   is ''处理标记。0：未处理（默认）、1：处理中、2：已处理''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_IN_UNDERVOLT_CP_CONC.handle_flag   is ''处理标记。0：未处理（默认）、1：处理中、2：已处理''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_IN_OVERVOLT_CP_CONC.handle_flag   is ''处理标记。0：未处理（默认）、1：处理中、2：已处理''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_IN_CP_CONC.handle_flag   is ''处理标记。0：未处理（默认）、1：处理中、2：已处理''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_EFFICIENCY_CP_CONC.handle_flag   is ''处理标记。0：未处理（默认）、1：处理中、2：已处理''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_DISPLAY_CP_CONC.handle_flag   is ''处理标记。0：未处理（默认）、1：处理中、2：已处理''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_DETECT_CP_RSLT.handle_flag   is ''处理标记。0：未处理（默认）、1：处理中、2：已处理''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_CURRENT_PRECISION_CP_CONC.handle_flag   is ''处理标记。0：未处理（默认）、1：处理中、2：已处理''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_CONTROL_VOLTLIMIT_CP_CONC.handle_flag   is ''处理标记。0：未处理（默认）、1：处理中、2：已处理''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_CONNECT_CP_CONC.handle_flag   is ''处理标记。0：未处理（默认）、1：处理中、2：已处理''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_CONNECT_CONFIRM_CP_CONC.handle_flag   is ''处理标记。0：未处理（默认）、1：处理中、2：已处理''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_CONFIG_MSG_CP_CONC.handle_flag   is ''处理标记。0：未处理（默认）、1：处理中、2：已处理''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_COMPOSE_CP_CONC.handle_flag   is ''处理标记。0：未处理（默认）、1：处理中、2：已处理''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_COMM_BREAK_CP_CONC.handle_flag   is ''处理标记。0：未处理（默认）、1：处理中、2：已处理''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_CLEARANCE_CREEPAGE_CP_CONC.handle_flag   is ''处理标记。0：未处理（默认）、1：处理中、2：已处理''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_CHARGEEND_MEAASGE_CP_CONC.handle_flag   is ''处理标记。0：未处理（默认）、1：处理中、2：已处理''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_CHARGE_MEAASGE_CP_CONC.handle_flag   is ''处理标记。0：未处理（默认）、1：处理中、2：已处理''
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000018659 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'MT_INTUIT_CP_CONC' AND U.COLUMN_NAME='HANDLE_FLAG';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table MT_INTUIT_CP_CONC modify handle_flag VARCHAR2(32)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 MT_INTUIT_CP_CONC.HANDLE_FLAG 不存在。');
    END IF;
END;
/
prompt
prompt 正在处理纪录编号为 8200000000018660 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'MT_INSIDE_CP_CONC' AND U.COLUMN_NAME='HANDLE_FLAG';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table MT_INSIDE_CP_CONC modify handle_flag VARCHAR2(32) default ''0''
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 MT_INSIDE_CP_CONC.HANDLE_FLAG 不存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column MT_INSIDE_CP_CONC.handle_flag
      is ''处理标记。0：未处理（默认）、1：处理中、2：已处理''
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000018661 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'MT_WIRE_CP_CONC' AND U.COLUMN_NAME='HANDLE_FLAG';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table MT_WIRE_CP_CONC modify handle_flag VARCHAR2(32) default ''0''
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 MT_WIRE_CP_CONC.HANDLE_FLAG 不存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column MT_WIRE_CP_CONC.handle_flag
      is ''处理标记。0：未处理（默认）、1：处理中、2：已处理''
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000018667 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'MT_SIGN_CP_CONC' AND U.COLUMN_NAME='HANDLE_FLAG';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table MT_SIGN_CP_CONC modify handle_flag VARCHAR2(32) default ''0''
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 MT_SIGN_CP_CONC.HANDLE_FLAG 不存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column MT_SIGN_CP_CONC.handle_flag
      is ''处理标记。0：未处理（默认）、1：处理中、2：已处理''
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000018668 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'MT_COMPOSE_CP_CONC' AND U.COLUMN_NAME='HANDLE_FLAG';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table MT_COMPOSE_CP_CONC modify handle_flag VARCHAR2(32) default ''0''
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 MT_COMPOSE_CP_CONC.HANDLE_FLAG 不存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column MT_COMPOSE_CP_CONC.handle_flag
      is ''处理标记。0：未处理（默认）、1：处理中、2：已处理''
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000018669 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'MT_CONNECT_CP_CONC' AND U.COLUMN_NAME='HANDLE_FLAG';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table MT_CONNECT_CP_CONC modify handle_flag VARCHAR2(32) default ''0''
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 MT_CONNECT_CP_CONC.HANDLE_FLAG 不存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column MT_CONNECT_CP_CONC.handle_flag
      is ''处理标记。0：未处理（默认）、1：处理中、2：已处理''
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000018670 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'MT_DISPLAY_CP_CONC' AND U.COLUMN_NAME='HANDLE_FLAG';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table MT_DISPLAY_CP_CONC modify handle_flag VARCHAR2(32) default ''0''
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 MT_DISPLAY_CP_CONC.HANDLE_FLAG 不存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column MT_DISPLAY_CP_CONC.handle_flag
      is ''处理标记。0：未处理（默认）、1：处理中、2：已处理''
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000018671 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'MT_IN_CP_CONC' AND U.COLUMN_NAME='HANDLE_FLAG';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table MT_IN_CP_CONC modify handle_flag VARCHAR2(32) default ''0''
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 MT_IN_CP_CONC.HANDLE_FLAG 不存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column MT_IN_CP_CONC.handle_flag
      is ''处理标记。0：未处理（默认）、1：处理中、2：已处理''
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000018672 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'MT_WIRE_CP_CONC' AND U.COLUMN_NAME='HANDLE_FLAG';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table MT_WIRE_CP_CONC modify handle_flag VARCHAR2(32) default ''0''
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 MT_WIRE_CP_CONC.HANDLE_FLAG 不存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column MT_WIRE_CP_CONC.handle_flag
      is ''处理标记。0：未处理（默认）、1：处理中、2：已处理''
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000018673 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'MT_CLEARANCE_CREEPAGE_CP_CONC' AND U.COLUMN_NAME='HANDLE_FLAG';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table MT_CLEARANCE_CREEPAGE_CP_CONC modify handle_flag VARCHAR2(32) default ''0''
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 MT_CLEARANCE_CREEPAGE_CP_CONC.HANDLE_FLAG 不存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column MT_CLEARANCE_CREEPAGE_CP_CONC.handle_flag
      is ''处理标记。0：未处理（默认）、1：处理中、2：已处理''
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000018674 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'MT_INSU_RESIST_CP_CONC' AND U.COLUMN_NAME='HANDLE_FLAG';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table MT_INSU_RESIST_CP_CONC modify handle_flag VARCHAR2(32) default ''0''
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 MT_INSU_RESIST_CP_CONC.HANDLE_FLAG 不存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column MT_INSU_RESIST_CP_CONC.handle_flag
      is ''处理标记。0：未处理（默认）、1：处理中、2：已处理''
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000018675 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'MT_ONLOAD_DECILITER_CP_CONC' AND U.COLUMN_NAME='HANDLE_FLAG';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table MT_ONLOAD_DECILITER_CP_CONC modify handle_flag VARCHAR2(32) default ''0''
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 MT_ONLOAD_DECILITER_CP_CONC.HANDLE_FLAG 不存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column MT_ONLOAD_DECILITER_CP_CONC.handle_flag
      is ''处理标记。0：未处理（默认）、1：处理中、2：已处理''
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000018683 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'MT_PWM_CP_CONC' AND U.COLUMN_NAME='HANDLE_FLAG';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table MT_PWM_CP_CONC modify handle_flag VARCHAR2(32) default ''0''
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 MT_PWM_CP_CONC.HANDLE_FLAG 不存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column MT_PWM_CP_CONC.handle_flag
      is ''处理标记。0：未处理（默认）、1：处理中、2：已处理''
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000018684 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'MT_IN_OVERVOLT_CP_CONC' AND U.COLUMN_NAME='HANDLE_FLAG';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table MT_IN_OVERVOLT_CP_CONC modify handle_flag VARCHAR2(32) default ''0''
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 MT_IN_OVERVOLT_CP_CONC.HANDLE_FLAG 不存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column MT_IN_OVERVOLT_CP_CONC.handle_flag
      is ''处理标记。0：未处理（默认）、1：处理中、2：已处理''
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000018685 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'MT_IN_UNDERVOLT_CP_CONC' AND U.COLUMN_NAME='HANDLE_FLAG';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table MT_IN_UNDERVOLT_CP_CONC modify handle_flag VARCHAR2(32) default ''0''
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 MT_IN_UNDERVOLT_CP_CONC.HANDLE_FLAG 不存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column MT_IN_UNDERVOLT_CP_CONC.handle_flag
      is ''处理标记。0：未处理（默认）、1：处理中、2：已处理''
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000018691 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'MT_SCP_CP_CONC' AND U.COLUMN_NAME='HANDLE_FLAG';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table MT_SCP_CP_CONC modify handle_flag VARCHAR2(32) default ''0''
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 MT_SCP_CP_CONC.HANDLE_FLAG 不存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column MT_SCP_CP_CONC.handle_flag
      is ''处理标记。0：未处理（默认）、1：处理中、2：已处理''
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000018692 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'MT_LOCK_CP_CONC' AND U.COLUMN_NAME='HANDLE_FLAG';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table MT_LOCK_CP_CONC modify handle_flag VARCHAR2(32) default ''0''
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 MT_LOCK_CP_CONC.HANDLE_FLAG 不存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column MT_LOCK_CP_CONC.handle_flag
      is ''处理标记。0：未处理（默认）、1：处理中、2：已处理''
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000018693 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'MT_CONTROL_VOLTLIMIT_CP_CONC' AND U.COLUMN_NAME='HANDLE_FLAG';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table MT_CONTROL_VOLTLIMIT_CP_CONC modify handle_flag VARCHAR2(32) default ''0''
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 MT_CONTROL_VOLTLIMIT_CP_CONC.HANDLE_FLAG 不存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column MT_CONTROL_VOLTLIMIT_CP_CONC.handle_flag
      is ''处理标记。0：未处理（默认）、1：处理中、2：已处理''
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000018694 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'MT_PLUG_LOCK_CP_CONC' AND U.COLUMN_NAME='HANDLE_FLAG';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table MT_PLUG_LOCK_CP_CONC modify handle_flag VARCHAR2(32) default ''0''
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 MT_PLUG_LOCK_CP_CONC.HANDLE_FLAG 不存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column MT_PLUG_LOCK_CP_CONC.handle_flag
      is ''处理标记。0：未处理（默认）、1：处理中、2：已处理''
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000018695 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'MT_CONNECT_CONFIRM_CP_CONC' AND U.COLUMN_NAME='HANDLE_FLAG';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table MT_CONNECT_CONFIRM_CP_CONC modify handle_flag VARCHAR2(32) default ''0''
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 MT_CONNECT_CONFIRM_CP_CONC.HANDLE_FLAG 不存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column MT_CONNECT_CONFIRM_CP_CONC.handle_flag
      is ''处理标记。0：未处理（默认）、1：处理中、2：已处理''
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000018696 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'MT_STANDBY_POWER_CP_CONC' AND U.COLUMN_NAME='HANDLE_FLAG';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table MT_STANDBY_POWER_CP_CONC modify handle_flag VARCHAR2(32) default ''0''
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 MT_STANDBY_POWER_CP_CONC.HANDLE_FLAG 不存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column MT_STANDBY_POWER_CP_CONC.handle_flag
      is ''处理标记。0：未处理（默认）、1：处理中、2：已处理''
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000018697 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'MT_MEASUREMENT_ERROR_CP_CONC' AND U.COLUMN_NAME='HANDLE_FLAG';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table MT_MEASUREMENT_ERROR_CP_CONC modify handle_flag VARCHAR2(32) default ''0''
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 MT_MEASUREMENT_ERROR_CP_CONC.HANDLE_FLAG 不存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column MT_MEASUREMENT_ERROR_CP_CONC.handle_flag
      is ''处理标记。0：未处理（默认）、1：处理中、2：已处理''
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000018698 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'MT_INDICATIVE_ERROR_CP_CONC' AND U.COLUMN_NAME='HANDLE_FLAG';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table MT_INDICATIVE_ERROR_CP_CONC modify handle_flag VARCHAR2(32) default ''0''
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 MT_INDICATIVE_ERROR_CP_CONC.HANDLE_FLAG 不存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column MT_INDICATIVE_ERROR_CP_CONC.handle_flag
      is ''处理标记。0：未处理（默认）、1：处理中、2：已处理''
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000018699 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'MT_MEASURE_UNIFORMITY_CP_CONC' AND U.COLUMN_NAME='HANDLE_FLAG';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table MT_MEASURE_UNIFORMITY_CP_CONC modify handle_flag VARCHAR2(32) default ''0''
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 MT_MEASURE_UNIFORMITY_CP_CONC.HANDLE_FLAG 不存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column MT_MEASURE_UNIFORMITY_CP_CONC.handle_flag
      is ''处理标记。0：未处理（默认）、1：处理中、2：已处理''
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000018700 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'MT_SCRAM_FUNCTION_CP_CONC' AND U.COLUMN_NAME='HANDLE_FLAG';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table MT_SCRAM_FUNCTION_CP_CONC modify handle_flag VARCHAR2(32) default ''0''
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 MT_SCRAM_FUNCTION_CP_CONC.HANDLE_FLAG 不存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column MT_SCRAM_FUNCTION_CP_CONC.handle_flag
      is ''处理标记。0：未处理（默认）、1：处理中、2：已处理''
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000018701 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'MT_VOLT_LOSS_CP_CONC' AND U.COLUMN_NAME='HANDLE_FLAG';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table MT_VOLT_LOSS_CP_CONC modify handle_flag VARCHAR2(32) default ''0''
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 MT_VOLT_LOSS_CP_CONC.HANDLE_FLAG 不存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column MT_VOLT_LOSS_CP_CONC.handle_flag
      is ''处理标记。0：未处理（默认）、1：处理中、2：已处理''
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000018702 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'MT_MAXOUT_POWER_CP_CONC' AND U.COLUMN_NAME='HANDLE_FLAG';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table MT_MAXOUT_POWER_CP_CONC modify handle_flag VARCHAR2(32) default ''0''
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 MT_MAXOUT_POWER_CP_CONC.HANDLE_FLAG 不存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column MT_MAXOUT_POWER_CP_CONC.handle_flag
      is ''处理标记。0：未处理（默认）、1：处理中、2：已处理''
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000018703 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'MT_CURRENT_PRECISION_CP_CONC' AND U.COLUMN_NAME='HANDLE_FLAG';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table MT_CURRENT_PRECISION_CP_CONC modify handle_flag VARCHAR2(32) default ''0''
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 MT_CURRENT_PRECISION_CP_CONC.HANDLE_FLAG 不存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column MT_CURRENT_PRECISION_CP_CONC.handle_flag
      is ''处理标记。0：未处理（默认）、1：处理中、2：已处理''
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000018704 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'MT_VOLT_PRECISION_CP_CONC' AND U.COLUMN_NAME='HANDLE_FLAG';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table MT_VOLT_PRECISION_CP_CONC modify handle_flag VARCHAR2(32) default ''0''
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 MT_VOLT_PRECISION_CP_CONC.HANDLE_FLAG 不存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column MT_VOLT_PRECISION_CP_CONC.handle_flag
      is ''处理标记。0：未处理（默认）、1：处理中、2：已处理''
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000018705 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'MT_EFFICIENCY_CP_CONC' AND U.COLUMN_NAME='HANDLE_FLAG';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table MT_EFFICIENCY_CP_CONC modify handle_flag VARCHAR2(32) default ''0''
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 MT_EFFICIENCY_CP_CONC.HANDLE_FLAG 不存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column MT_EFFICIENCY_CP_CONC.handle_flag
      is ''处理标记。0：未处理（默认）、1：处理中、2：已处理''
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000018706 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'MT_PF_CP_CONC' AND U.COLUMN_NAME='HANDLE_FLAG';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table MT_PF_CP_CONC modify handle_flag VARCHAR2(32) default ''0''
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 MT_PF_CP_CONC.HANDLE_FLAG 不存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column MT_PF_CP_CONC.handle_flag
      is ''处理标记。0：未处理（默认）、1：处理中、2：已处理''
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000018707 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'MT_VOLT_RIPPLE_CP_CONC' AND U.COLUMN_NAME='HANDLE_FLAG';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table MT_VOLT_RIPPLE_CP_CONC modify handle_flag VARCHAR2(32) default ''0''
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 MT_VOLT_RIPPLE_CP_CONC.HANDLE_FLAG 不存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column MT_VOLT_RIPPLE_CP_CONC.handle_flag
      is ''处理标记。0：未处理（默认）、1：处理中、2：已处理''
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000018708 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'MT_LOWVOLT_AUXILIARY_CP_CONC' AND U.COLUMN_NAME='HANDLE_FLAG';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table MT_LOWVOLT_AUXILIARY_CP_CONC modify handle_flag VARCHAR2(32) default ''0''
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 MT_LOWVOLT_AUXILIARY_CP_CONC.HANDLE_FLAG 不存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column MT_LOWVOLT_AUXILIARY_CP_CONC.handle_flag
      is ''处理标记。0：未处理（默认）、1：处理中、2：已处理''
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000018709 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'MT_OPEN_PROTECT_CP_CONC' AND U.COLUMN_NAME='HANDLE_FLAG';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table MT_OPEN_PROTECT_CP_CONC modify handle_flag VARCHAR2(32) default ''0''
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 MT_OPEN_PROTECT_CP_CONC.HANDLE_FLAG 不存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column MT_OPEN_PROTECT_CP_CONC.handle_flag
      is ''处理标记。0：未处理（默认）、1：处理中、2：已处理''
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000018710 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'MT_SIGNAL_BREAK_CP_CONC' AND U.COLUMN_NAME='HANDLE_FLAG';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table MT_SIGNAL_BREAK_CP_CONC modify handle_flag VARCHAR2(32) default ''0''
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 MT_SIGNAL_BREAK_CP_CONC.HANDLE_FLAG 不存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column MT_SIGNAL_BREAK_CP_CONC.handle_flag
      is ''处理标记。0：未处理（默认）、1：处理中、2：已处理''
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000018711 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'MT_INSULATE_ABNORMAL_CP_CONC' AND U.COLUMN_NAME='HANDLE_FLAG';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table MT_INSULATE_ABNORMAL_CP_CONC modify handle_flag VARCHAR2(32) default ''0''
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 MT_INSULATE_ABNORMAL_CP_CONC.HANDLE_FLAG 不存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column MT_INSULATE_ABNORMAL_CP_CONC.handle_flag
      is ''处理标记。0：未处理（默认）、1：处理中、2：已处理''
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000018712 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'MT_COMM_BREAK_CP_CONC' AND U.COLUMN_NAME='HANDLE_FLAG';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table MT_COMM_BREAK_CP_CONC modify handle_flag VARCHAR2(32) default ''0''
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 MT_COMM_BREAK_CP_CONC.HANDLE_FLAG 不存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column MT_COMM_BREAK_CP_CONC.handle_flag
      is ''处理标记。0：未处理（默认）、1：处理中、2：已处理''
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000018713 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'MT_PROTECT_LANDING_CP_CONC' AND U.COLUMN_NAME='HANDLE_FLAG';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table MT_PROTECT_LANDING_CP_CONC modify handle_flag VARCHAR2(32) default ''0''
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 MT_PROTECT_LANDING_CP_CONC.HANDLE_FLAG 不存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column MT_PROTECT_LANDING_CP_CONC.handle_flag
      is ''处理标记。0：未处理（默认）、1：处理中、2：已处理''
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000018714 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'MT_POWERUP_MESSAGE_CP_CONC' AND U.COLUMN_NAME='HANDLE_FLAG';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table MT_POWERUP_MESSAGE_CP_CONC modify handle_flag VARCHAR2(32) default ''0''
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 MT_POWERUP_MESSAGE_CP_CONC.HANDLE_FLAG 不存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column MT_POWERUP_MESSAGE_CP_CONC.handle_flag
      is ''处理标记。0：未处理（默认）、1：处理中、2：已处理''
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000018715 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'MT_CONFIG_MSG_CP_CONC' AND U.COLUMN_NAME='HANDLE_FLAG';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table MT_CONFIG_MSG_CP_CONC modify handle_flag VARCHAR2(32) default ''0''
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 MT_CONFIG_MSG_CP_CONC.HANDLE_FLAG 不存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column MT_CONFIG_MSG_CP_CONC.handle_flag
      is ''处理标记。0：未处理（默认）、1：处理中、2：已处理''
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000018716 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'MT_CHARGE_MEAASGE_CP_CONC' AND U.COLUMN_NAME='HANDLE_FLAG';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table MT_CHARGE_MEAASGE_CP_CONC modify handle_flag VARCHAR2(32) default ''0''
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 MT_CHARGE_MEAASGE_CP_CONC.HANDLE_FLAG 不存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column MT_CHARGE_MEAASGE_CP_CONC.handle_flag
      is ''处理标记。0：未处理（默认）、1：处理中、2：已处理''
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000018717 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'MT_CHARGEEND_MEAASGE_CP_CONC' AND U.COLUMN_NAME='HANDLE_FLAG';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table MT_CHARGEEND_MEAASGE_CP_CONC modify handle_flag VARCHAR2(32) default ''0''
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 MT_CHARGEEND_MEAASGE_CP_CONC.HANDLE_FLAG 不存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column MT_CHARGEEND_MEAASGE_CP_CONC.handle_flag
      is ''处理标记。0：未处理（默认）、1：处理中、2：已处理''
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000018718 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'MT_PORT_CP_CONC' AND U.COLUMN_NAME='HANDLE_FLAG';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table MT_PORT_CP_CONC modify handle_flag VARCHAR2(32) default ''0''
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 MT_PORT_CP_CONC.HANDLE_FLAG 不存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column MT_PORT_CP_CONC.handle_flag
      is ''处理标记。0：未处理（默认）、1：处理中、2：已处理''
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000018749 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'MT_PORT_CP_CONC' AND U.COLUMN_NAME='DETECT_ITEM_NO';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table MT_PORT_CP_CONC add detect_item_no VARCHAR2(8)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 MT_PORT_CP_CONC.detect_item_no 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'MT_PORT_CP_CONC' AND U.COLUMN_NAME='DETECT_ITEM_NAME';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table MT_PORT_CP_CONC add detect_item_name VARCHAR2(256)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 MT_PORT_CP_CONC.detect_item_name 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column MT_PORT_CP_CONC.detect_item_no
      is ''检定项编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_PORT_CP_CONC.detect_item_name
      is ''检定项名称''
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000019005 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'MT_DETECT_CP_RSLT' AND U.COLUMN_NAME='REMARK';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table MT_DETECT_CP_RSLT add remark VARCHAR2(256)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 MT_DETECT_CP_RSLT.remark 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'MT_DETECT_CP_RSLT' AND U.COLUMN_NAME='CERT_NO';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table MT_DETECT_CP_RSLT add cert_no VARCHAR2(32)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 MT_DETECT_CP_RSLT.cert_no 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'MT_DETECT_CP_RSLT' AND U.COLUMN_NAME='CERT_NO_PERIOD';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table MT_DETECT_CP_RSLT add cert_no_period VARCHAR2(32)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 MT_DETECT_CP_RSLT.cert_no_period 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column MT_DETECT_CP_RSLT.remark
      is ''备注''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_DETECT_CP_RSLT.cert_no
      is ''计量装置证书编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_DETECT_CP_RSLT.cert_no_period
      is ''计量装置证书编号有效期''
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000019459 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'MT_DETECT_TASK' AND U.COLUMN_NAME='PRE_ELEC_CHARGE';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table MT_DETECT_TASK add pre_elec_charge VARCHAR2(8)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 MT_DETECT_TASK.pre_elec_charge 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column MT_DETECT_TASK.pre_elec_charge
      is ''预置电费，由页面录入产生''
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000019589 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Tables U WHERE U.TABLE_NAME = 'MT_ELEC_PRICE_INFO';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
        create table MT_ELEC_PRICE_INFO
        (
        oper_id NUMBER(16),
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
      dbms_output.put_line('脚本已跳过，因为 MT_ELEC_PRICE_INFO 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table MT_ELEC_PRICE_INFO
      is ''电价信息表，
      用于保存分拣装置获取的电表的费率、阶梯数以及各时期电价信息''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_ELEC_PRICE_INFO.OPER_ID
      is ''流水序号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_ELEC_PRICE_INFO.TASK_NO
      is ''任务编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_ELEC_PRICE_INFO.BAR_CODE
      is ''条码''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_ELEC_PRICE_INFO.REMAIN_AMOUNT
      is ''当前剩余金额(元)''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_ELEC_PRICE_INFO.PURCHASE_NUM
      is ''购电次数''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_ELEC_PRICE_INFO.FEE_NUM
      is ''费率数''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_ELEC_PRICE_INFO.KU_FEE_JIAN
      is ''枯水期费率电价尖''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_ELEC_PRICE_INFO.KU_FEE_FENG
      is ''枯水期费率电价峰''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_ELEC_PRICE_INFO.KU_FEE_PING
      is ''枯水期费率电价平''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_ELEC_PRICE_INFO.KU_FEE_GU
      is ''枯水期费率电价谷''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_ELEC_PRICE_INFO.FENG_FEE_JIAN
      is ''丰水期费率电价尖''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_ELEC_PRICE_INFO.FENG_FEE_FENG
      is ''丰水期费率电价峰''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_ELEC_PRICE_INFO.FENG_FEE_PING
      is ''丰水期费率电价平''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_ELEC_PRICE_INFO.FENG_FEE_GU
      is ''丰水期费率电价谷''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_ELEC_PRICE_INFO.PING_FEE_JIAN
      is ''平水期费率电价尖''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_ELEC_PRICE_INFO.PING_FEE_FENG
      is ''平水期费率电价峰''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_ELEC_PRICE_INFO.PING_FEE_PING
      is ''平水期费率电价平''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_ELEC_PRICE_INFO.PING_FEE_GU
      is ''平水期费率电价谷''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_ELEC_PRICE_INFO.LADDER_NUM
      is ''阶梯数''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_ELEC_PRICE_INFO.FIR_LADDER_VALUE1
      is ''当前阶梯值1''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_ELEC_PRICE_INFO.FIR_LADDER_VALUE2
      is ''当前阶梯值2''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_ELEC_PRICE_INFO.FIR_LADDER_VALUE3
      is ''当前阶梯值3''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_ELEC_PRICE_INFO.FIR_LADDER_PRICE1
      is ''当前阶梯电价1''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_ELEC_PRICE_INFO.FIR_LADDER_PRICE2
      is ''当前阶梯电价2''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_ELEC_PRICE_INFO.FIR_LADDER_PRICE3
      is ''当前阶梯电价3''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_ELEC_PRICE_INFO.FIR_LADDER_PRICE4
      is ''当前阶梯电价4''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_ELEC_PRICE_INFO.WRITE_TIME
      is ''写入时间''
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000019590 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Tables U WHERE U.TABLE_NAME = 'MT_MET_READING_INFO';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
        create table MT_MET_READING_INFO
        (
        oper_id NUMBER(16),
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
      dbms_output.put_line('脚本已跳过，因为 MT_MET_READING_INFO 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table MT_MET_READING_INFO
      is ''电表示数信息表,
      用于保存分拣装置获取的电表正反向有无功的各阶段电能示数信息''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_MET_READING_INFO.OPER_ID
      is ''流水序号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_MET_READING_INFO.TASK_NO
      is ''任务编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_MET_READING_INFO.DATA_DATE
      is ''采集日期，精确到日''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_MET_READING_INFO.DAY_NUM
      is ''日期号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_MET_READING_INFO.BAR_CODE
      is ''条码''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_MET_READING_INFO.PAP_R
      is ''正向有功总电能示值''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_MET_READING_INFO.PAP_R1
      is ''正向有功尖电能示值''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_MET_READING_INFO.PAP_R2
      is ''正向有功峰电能示值''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_MET_READING_INFO.PAP_R3
      is ''正向有功平电能示值''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_MET_READING_INFO.PAP_R4
      is ''正向有功谷电能示值''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_MET_READING_INFO.PRP_R
      is ''正向无功总电能示值''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_MET_READING_INFO.PRP_R1
      is ''正向无功尖电能示值''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_MET_READING_INFO.PRP_R2
      is ''正向无功峰电能示值''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_MET_READING_INFO.PRP_R3
      is ''正向无功平电能示值''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_MET_READING_INFO.PRP_R4
      is ''正向无功谷电能示值''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_MET_READING_INFO.RAP_R
      is ''反向有功总能量示值''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_MET_READING_INFO.RAP_R1
      is ''反向有功尖能量示值''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_MET_READING_INFO.RAP_R2
      is ''反向有功峰能量示值''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_MET_READING_INFO.RAP_R3
      is ''反向有功平能量示值''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_MET_READING_INFO.RAP_R4
      is ''反向有功谷能量示值''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_MET_READING_INFO.RRP_R
      is ''反向无功总能示值''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_MET_READING_INFO.RRP_R1
      is ''反向无功尖能示值''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_MET_READING_INFO.RRP_R2
      is ''反向无功峰能示值''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_MET_READING_INFO.RRP_R3
      is ''反向无功平能示值''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_MET_READING_INFO.RRP_R4
      is ''反向无功谷能示值''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_MET_READING_INFO.PAP_DEMAND
      is ''正向有功总最大需量''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_MET_READING_INFO.WRITE_TIME
      is ''写入时间''
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000019596 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_INDEXES U WHERE u.INDEX_NAME = 'IDX_MT_ELEC_PRICE_INFO_ID';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      create index IDX_MT_ELEC_PRICE_INFO_ID on MT_ELEC_PRICE_INFO (OPER_ID)
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
      dbms_output.put_line('脚本已跳过，因为 IDX_MT_ELEC_PRICE_INFO_ID 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_INDEXES U WHERE u.INDEX_NAME = 'IDX_MT_MET_READING_INFO_ID';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      create index IDX_MT_MET_READING_INFO_ID on MT_MET_READING_INFO (OPER_ID)
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
      dbms_output.put_line('脚本已跳过，因为 IDX_MT_MET_READING_INFO_ID 已存在。');
    END IF;
END;
/
prompt
prompt 正在处理纪录编号为 8200000000019684 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'MT_ELEC_PRICE_INFO' AND U.COLUMN_NAME='BAR_CODE';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table MT_ELEC_PRICE_INFO modify bar_code VARCHAR2(32)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 MT_ELEC_PRICE_INFO.BAR_CODE 不存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column MT_ELEC_PRICE_INFO.bar_code
      is ''电表条码''
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000019689 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'MT_MET_READING_INFO' AND U.COLUMN_NAME='BAR_CODE';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table MT_MET_READING_INFO modify bar_code VARCHAR2(32)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 MT_MET_READING_INFO.BAR_CODE 不存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column MT_MET_READING_INFO.bar_code
      is ''电表条码''
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000019902 的脚本
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
prompt 正在处理纪录编号为 8200000000020271 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    EXECUTE IMMEDIATE
    '
      comment on column MT_HPLCID_CERT_INFO.is_legal
      is ''是否合法。1:合法且绑定关系正确，0：不合法，2：模块档案重复，3：模块档案不存在；此字段由MDS认证后回填''
    ';
END;
/


prompt
prompt 正在处理纪录编号为 8200000000020532 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'MT_REPICK_FILTER_BATCH' AND U.COLUMN_NAME='STATUS';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table MT_REPICK_FILTER_BATCH add status VARCHAR2(8)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 MT_REPICK_FILTER_BATCH.status 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column MT_REPICK_FILTER_BATCH.status
      is ''筛选批次状态; 01:初始;02:执行中;03:执行完毕''
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000020892 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Tables U WHERE U.TABLE_NAME = 'MT_DETECT_ELEC_PRICE';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
        create table MT_DETECT_ELEC_PRICE
        (
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
        fir_ladder_price4 NUMBER(10,4),
        handle_flag VARCHAR2(32) default 0,
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
      dbms_output.put_line('脚本已跳过，因为 MT_DETECT_ELEC_PRICE 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table MT_DETECT_ELEC_PRICE
      is ''电价信息表
      主要用于保存单、三相检定线或人工检定台在检定环节读取的本地费控智能电能表的电价明细信息''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_DETECT_ELEC_PRICE.BAR_CODE
      is ''电表条码''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_DETECT_ELEC_PRICE.DETECT_TASK_NO
      is ''检定任务编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_DETECT_ELEC_PRICE.FEE_NUM
      is ''费率数''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_DETECT_ELEC_PRICE.KU_FEE_JIAN
      is ''枯水期费率电价尖''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_DETECT_ELEC_PRICE.KU_FEE_FENG
      is ''枯水期费率电价峰''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_DETECT_ELEC_PRICE.KU_FEE_PING
      is ''枯水期费率电价平''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_DETECT_ELEC_PRICE.KU_FEE_GU
      is ''枯水期费率电价谷''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_DETECT_ELEC_PRICE.FENG_FEE_JIAN
      is ''丰水期费率电价尖''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_DETECT_ELEC_PRICE.FENG_FEE_FENG
      is ''丰水期费率电价峰''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_DETECT_ELEC_PRICE.FENG_FEE_PING
      is ''丰水期费率电价平''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_DETECT_ELEC_PRICE.FENG_FEE_GU
      is ''丰水期费率电价谷''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_DETECT_ELEC_PRICE.PING_FEE_JIAN
      is ''平水期费率电价尖''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_DETECT_ELEC_PRICE.PING_FEE_FENG
      is ''平水期费率电价峰''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_DETECT_ELEC_PRICE.PING_FEE_PING
      is ''平水期费率电价平''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_DETECT_ELEC_PRICE.PING_FEE_GU
      is ''平水期费率电价谷''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_DETECT_ELEC_PRICE.LADDER_NUM
      is ''阶梯数''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_DETECT_ELEC_PRICE.FIR_LADDER_VALUE1
      is ''当前阶梯值1''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_DETECT_ELEC_PRICE.FIR_LADDER_VALUE2
      is ''当前阶梯值2''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_DETECT_ELEC_PRICE.FIR_LADDER_VALUE3
      is ''当前阶梯值3''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_DETECT_ELEC_PRICE.FIR_LADDER_VALUE4
      is ''当前阶梯值4''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_DETECT_ELEC_PRICE.FIR_LADDER_PRICE1
      is ''当前阶梯电价1''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_DETECT_ELEC_PRICE.FIR_LADDER_PRICE2
      is ''当前阶梯电价2''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_DETECT_ELEC_PRICE.FIR_LADDER_PRICE3
      is ''当前阶梯电价3''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_DETECT_ELEC_PRICE.FIR_LADDER_PRICE4
      is ''当前阶梯电价4''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_DETECT_ELEC_PRICE.HANDLE_FLAG
      is ''处理标志，0-未处理（默认）；1-处理中；2-已处理''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_DETECT_ELEC_PRICE.HANDLE_DATE
      is ''处理时间''
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000020893 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'MT_DETECT_RSLT' AND U.COLUMN_NAME='ELECPRICE_READ_FLAG';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table MT_DETECT_RSLT add elecprice_read_flag VARCHAR2(8) default ''0''
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 MT_DETECT_RSLT.elecprice_read_flag 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column MT_DETECT_RSLT.elecprice_read_flag
      is ''电价读取成功标识，0：失败（默认）；1：成功。''
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000021109 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'MT_DETECT_RSLT' AND U.COLUMN_NAME='METCOTRVAL_CONC_CODE';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table MT_DETECT_RSLT add metcotrval_conc_code VARCHAR2(8)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 MT_DETECT_RSLT.metcotrval_conc_code 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column MT_DETECT_RSLT.metcotrval_conc_code
      is ''远程控制试验''
    ';
END;
/


prompt
prompt 正在处理纪录编号为 8200000000021380 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'MT_APP_REPICK_FILTER_RECORD' AND U.COLUMN_NAME='EQUIP_CODE';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table MT_APP_REPICK_FILTER_RECORD add equip_code VARCHAR2(32)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 MT_APP_REPICK_FILTER_RECORD.equip_code 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'MT_APP_REPICK_FILTER_RECORD' AND U.COLUMN_NAME='BATCH_NO';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table MT_APP_REPICK_FILTER_RECORD add batch_no VARCHAR2(32)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 MT_APP_REPICK_FILTER_RECORD.batch_no 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'MT_APP_REPICK_FILTER_RECORD' AND U.COLUMN_NAME='RETURN_RESULT';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table MT_APP_REPICK_FILTER_RECORD add return_result VARCHAR2(8)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 MT_APP_REPICK_FILTER_RECORD.return_result 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column MT_APP_REPICK_FILTER_RECORD.equip_code
      is ''设备码''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_APP_REPICK_FILTER_RECORD.batch_no
      is ''批次信息''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_APP_REPICK_FILTER_RECORD.return_result
      is ''筛选结果''
    ';
END;
/


prompt
prompt 正在处理纪录编号为 8200000000022010 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    EXECUTE IMMEDIATE
    '
      comment on column MT_HPLCID_CERT_INFO.module_type_code
      is ''通信模块类别，视图VW_COMM_MODULE_KIND。02：远程通信模块，03：本地通信模块，此字段必填''
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000022444 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'MT_SEAL_INST' AND U.COLUMN_NAME='SEAL_SERIAL';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table MT_SEAL_INST add seal_serial VARCHAR2(32)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 MT_SEAL_INST.seal_serial 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'MT_SEAL_INST' AND U.COLUMN_NAME='CHECK_INFO';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table MT_SEAL_INST add check_info VARCHAR2(32)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 MT_SEAL_INST.check_info 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'MT_SEAL_INST' AND U.COLUMN_NAME='RELEASE_INFO';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table MT_SEAL_INST add release_info VARCHAR2(32)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 MT_SEAL_INST.release_info 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column MT_SEAL_INST.seal_serial
      is ''电子封印应用序列号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_SEAL_INST.check_info
      is ''电子封印校验区信息''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_SEAL_INST.release_info
      is ''电子封印发行信息''
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000022449 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'MT_DETECT_RSLT' AND U.COLUMN_NAME='MAX_DEMAND_FUNC_CONC_CODE';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table MT_DETECT_RSLT add max_demand_func_conc_code VARCHAR2(8)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 MT_DETECT_RSLT.max_demand_func_conc_code 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'MT_DETECT_RSLT' AND U.COLUMN_NAME='MAX_DEMAND_ERROR_CONC_CODE';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table MT_DETECT_RSLT add max_demand_error_conc_code VARCHAR2(8)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 MT_DETECT_RSLT.max_demand_error_conc_code 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column MT_DETECT_RSLT.max_demand_func_conc_code
      is ''最大需量功能''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column MT_DETECT_RSLT.max_demand_error_conc_code
      is ''最大需量误差''
    ';
END;
/

set feedback on
set define on
set serveroutput off
--------------------------------------------------

