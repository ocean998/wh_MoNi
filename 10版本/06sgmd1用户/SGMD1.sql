--------------------------------------------------
set feedback off
set define off
set serveroutput on
--------------------------------------------------

prompt
prompt 正在处理纪录编号为 8200000000010966 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'HANDHELD_DEVICE_INFO' AND U.COLUMN_NAME='IMEI';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table HANDHELD_DEVICE_INFO add imei VARCHAR2(32)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 HANDHELD_DEVICE_INFO.imei 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'HANDHELD_DEVICE_INFO' AND U.COLUMN_NAME='MEID';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table HANDHELD_DEVICE_INFO add meid VARCHAR2(32)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 HANDHELD_DEVICE_INFO.meid 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column HANDHELD_DEVICE_INFO.imei
      is ''国际移动设备识别码，与MEID字段，至少其中一个必填''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column HANDHELD_DEVICE_INFO.meid
      is ''移动设备识别码，与IMEI字段，至少其中一个必填''
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000010967 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'T_DETECT_HANDHELD_RSLT' AND U.COLUMN_NAME='OPER_ID';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table T_DETECT_HANDHELD_RSLT add oper_id NUMBER(16)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 T_DETECT_HANDHELD_RSLT.oper_id 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column T_DETECT_HANDHELD_RSLT.oper_id
      is ''操作标识''
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000010969 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'DIST_APP_DET' AND U.COLUMN_NAME='HARDWARE_VER';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table DIST_APP_DET add hardware_ver VARCHAR2(64)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 DIST_APP_DET.hardware_ver 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'DIST_APP_DET' AND U.COLUMN_NAME='SOFTWARE_VER';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table DIST_APP_DET add software_ver VARCHAR2(64)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 DIST_APP_DET.software_ver 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column DIST_APP_DET.hardware_ver
      is ''手持设备硬件版本''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column DIST_APP_DET.software_ver
      is ''手持设备软件版本''
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000010976 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'D_SWTICH' AND U.COLUMN_NAME='SORT_CODE';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table D_SWTICH add sort_code VARCHAR2(8)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 D_SWTICH.sort_code 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column D_SWTICH.sort_code
      is ''空开类别，01：微型断路器，02：隔离开关''
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000011017 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'ARRIVE_METER_PARA' AND U.COLUMN_NAME='AUXILIARY_POWER';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table ARRIVE_METER_PARA add auxiliary_power VARCHAR2(8)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 ARRIVE_METER_PARA.auxiliary_power 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'ARRIVE_METER_PARA' AND U.COLUMN_NAME='INSULATE_FLAG';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table ARRIVE_METER_PARA add insulate_flag VARCHAR2(8)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 ARRIVE_METER_PARA.insulate_flag 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'ARRIVE_METER_PARA' AND U.COLUMN_NAME='INTERNAL_RESISTANCE';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table ARRIVE_METER_PARA add internal_resistance VARCHAR2(8)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 ARRIVE_METER_PARA.internal_resistance 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column ARRIVE_METER_PARA.auxiliary_power
      is ''辅助电源（VW_AUXILIARY_POWER）''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column ARRIVE_METER_PARA.insulate_flag
      is ''电压电流回路是否隔离（vw_yesno_flag）''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column ARRIVE_METER_PARA.internal_resistance
      is ''电流回路输入内阻''
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000011019 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'ARRIVE_IT_PARA' AND U.COLUMN_NAME='RESISTANCE_STRUCTURE';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table ARRIVE_IT_PARA add resistance_structure VARCHAR2(8)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 ARRIVE_IT_PARA.resistance_structure 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column ARRIVE_IT_PARA.resistance_structure
      is ''电阻结构vw_shunt_resistance_structure''
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000011021 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'METER_INFO' AND U.COLUMN_NAME='AUXILIARY_POWER';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table METER_INFO add auxiliary_power VARCHAR2(8)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 METER_INFO.auxiliary_power 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'METER_INFO' AND U.COLUMN_NAME='INSULATE_FLAG';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table METER_INFO add insulate_flag VARCHAR2(8)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 METER_INFO.insulate_flag 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'METER_INFO' AND U.COLUMN_NAME='INTERNAL_RESISTANCE';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table METER_INFO add internal_resistance VARCHAR2(8)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 METER_INFO.internal_resistance 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column METER_INFO.auxiliary_power
      is ''辅助电源（VW_AUXILIARY_POWER）''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column METER_INFO.insulate_flag
      is ''电压电流回路是否隔离（vw_yesno_flag）''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column METER_INFO.internal_resistance
      is ''电流回路输入内阻''
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000011023 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'IT_INFO' AND U.COLUMN_NAME='RESISTANCE_STRUCTURE';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table IT_INFO add resistance_structure VARCHAR2(8)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 IT_INFO.resistance_structure 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column IT_INFO.resistance_structure
      is ''电阻结构vw_shunt_resistance_structure''
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000011137 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'T_DETECT_OPEN_RSLT' AND U.COLUMN_NAME='TEMP_RISE_CONC_CODE';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table T_DETECT_OPEN_RSLT add temp_rise_conc_code VARCHAR2(8)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 T_DETECT_OPEN_RSLT.temp_rise_conc_code 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'T_DETECT_OPEN_RSLT' AND U.COLUMN_NAME='VER_TEMP_RISE_CONC_CODE';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table T_DETECT_OPEN_RSLT add ver_temp_rise_conc_code VARCHAR2(8)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 T_DETECT_OPEN_RSLT.ver_temp_rise_conc_code 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'T_DETECT_OPEN_RSLT' AND U.COLUMN_NAME='DIELEC_PROP_CONC_CODE';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table T_DETECT_OPEN_RSLT add dielec_prop_conc_code VARCHAR2(8)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 T_DETECT_OPEN_RSLT.dielec_prop_conc_code 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'T_DETECT_OPEN_RSLT' AND U.COLUMN_NAME='VER_DIELEC_PROP_CONC_CODE';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table T_DETECT_OPEN_RSLT add ver_dielec_prop_conc_code VARCHAR2(8)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 T_DETECT_OPEN_RSLT.ver_dielec_prop_conc_code 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'T_DETECT_OPEN_RSLT' AND U.COLUMN_NAME='LEAK_CURRENT_CONC_CODE';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table T_DETECT_OPEN_RSLT add leak_current_conc_code VARCHAR2(8)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 T_DETECT_OPEN_RSLT.leak_current_conc_code 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'T_DETECT_OPEN_RSLT' AND U.COLUMN_NAME='CONNECT_CAPA_CONC_CODE';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table T_DETECT_OPEN_RSLT add connect_capa_conc_code VARCHAR2(8)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 T_DETECT_OPEN_RSLT.connect_capa_conc_code 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'T_DETECT_OPEN_RSLT' AND U.COLUMN_NAME='OPER_PFM_CAPA_CONC_CODE';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table T_DETECT_OPEN_RSLT add oper_pfm_capa_conc_code VARCHAR2(8)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 T_DETECT_OPEN_RSLT.oper_pfm_capa_conc_code 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'T_DETECT_OPEN_RSLT' AND U.COLUMN_NAME='ST_STAD_CURR_CONC_CODE';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table T_DETECT_OPEN_RSLT add st_stad_curr_conc_code VARCHAR2(8)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 T_DETECT_OPEN_RSLT.st_stad_curr_conc_code 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'T_DETECT_OPEN_RSLT' AND U.COLUMN_NAME='ST_CIRC_CONN_CAPA_CONC_CODE';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table T_DETECT_OPEN_RSLT add st_circ_conn_capa_conc_code VARCHAR2(8)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 T_DETECT_OPEN_RSLT.st_circ_conn_capa_conc_code 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'T_DETECT_OPEN_RSLT' AND U.COLUMN_NAME='OVERLOAD_CAPA_CONC_CODE';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table T_DETECT_OPEN_RSLT add overload_capa_conc_code VARCHAR2(8)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 T_DETECT_OPEN_RSLT.overload_capa_conc_code 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'T_DETECT_OPEN_RSLT' AND U.COLUMN_NAME='LIMT_CURRENT_CONC_CODE';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table T_DETECT_OPEN_RSLT add limt_current_conc_code VARCHAR2(8)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 T_DETECT_OPEN_RSLT.limt_current_conc_code 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'T_DETECT_OPEN_RSLT' AND U.COLUMN_NAME='OPER_MECHA_STR_CONC_CODE';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table T_DETECT_OPEN_RSLT add oper_mecha_str_conc_code VARCHAR2(8)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 T_DETECT_OPEN_RSLT.oper_mecha_str_conc_code 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'T_DETECT_OPEN_RSLT' AND U.COLUMN_NAME='IDENT_DURAB_CONC_CODE';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table T_DETECT_OPEN_RSLT add ident_durab_conc_code VARCHAR2(8)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 T_DETECT_OPEN_RSLT.ident_durab_conc_code 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'T_DETECT_OPEN_RSLT' AND U.COLUMN_NAME='CLE_CREEP_DIST_CONC_CODE';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table T_DETECT_OPEN_RSLT add cle_creep_dist_conc_code VARCHAR2(8)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 T_DETECT_OPEN_RSLT.cle_creep_dist_conc_code 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'T_DETECT_OPEN_RSLT' AND U.COLUMN_NAME='IMPUL_VOLT_CONC_CODE';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table T_DETECT_OPEN_RSLT add impul_volt_conc_code VARCHAR2(8)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 T_DETECT_OPEN_RSLT.impul_volt_conc_code 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'T_DETECT_OPEN_RSLT' AND U.COLUMN_NAME='TMP_RISE_POWER_MEAS_CONC_CODE';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table T_DETECT_OPEN_RSLT add tmp_rise_power_meas_conc_code VARCHAR2(8)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 T_DETECT_OPEN_RSLT.tmp_rise_power_meas_conc_code 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'T_DETECT_OPEN_RSLT' AND U.COLUMN_NAME='TRIP_CHARACT_CONC_CODE';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table T_DETECT_OPEN_RSLT add trip_charact_conc_code VARCHAR2(8)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 T_DETECT_OPEN_RSLT.trip_charact_conc_code 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'T_DETECT_OPEN_RSLT' AND U.COLUMN_NAME='SHT_CIRC_PERFOR_CONC_CODE';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table T_DETECT_OPEN_RSLT add sht_circ_perfor_conc_code VARCHAR2(8)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 T_DETECT_OPEN_RSLT.sht_circ_perfor_conc_code 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'T_DETECT_OPEN_RSLT' AND U.COLUMN_NAME='MECHAN_VIBRA_CONC_CODE';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table T_DETECT_OPEN_RSLT add mechan_vibra_conc_code VARCHAR2(8)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 T_DETECT_OPEN_RSLT.mechan_vibra_conc_code 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'T_DETECT_OPEN_RSLT' AND U.COLUMN_NAME='VERI_HEAT_RESIST_CONC_CODE';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table T_DETECT_OPEN_RSLT add veri_heat_resist_conc_code VARCHAR2(8)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 T_DETECT_OPEN_RSLT.veri_heat_resist_conc_code 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'T_DETECT_OPEN_RSLT' AND U.COLUMN_NAME='FLAME_FEVER_CONC_CODE';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table T_DETECT_OPEN_RSLT add flame_fever_conc_code VARCHAR2(8)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 T_DETECT_OPEN_RSLT.flame_fever_conc_code 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'T_DETECT_OPEN_RSLT' AND U.COLUMN_NAME='ANTIRUST_CONC_CODE';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table T_DETECT_OPEN_RSLT add antirust_conc_code VARCHAR2(8)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 T_DETECT_OPEN_RSLT.antirust_conc_code 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'T_DETECT_OPEN_RSLT' AND U.COLUMN_NAME='ANTI_PULSE_GRP_CONC_CODE';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table T_DETECT_OPEN_RSLT add anti_pulse_grp_conc_code VARCHAR2(8)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 T_DETECT_OPEN_RSLT.anti_pulse_grp_conc_code 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'T_DETECT_OPEN_RSLT' AND U.COLUMN_NAME='DISCHARGE_CONC_CODE';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table T_DETECT_OPEN_RSLT add discharge_conc_code VARCHAR2(8)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 T_DETECT_OPEN_RSLT.discharge_conc_code 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'T_DETECT_OPEN_RSLT' AND U.COLUMN_NAME='SURGE_CONC_CODE';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table T_DETECT_OPEN_RSLT add surge_conc_code VARCHAR2(8)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 T_DETECT_OPEN_RSLT.surge_conc_code 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'T_DETECT_OPEN_RSLT' AND U.COLUMN_NAME='DRIVE_CONC_CODE';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table T_DETECT_OPEN_RSLT add drive_conc_code VARCHAR2(8)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 T_DETECT_OPEN_RSLT.drive_conc_code 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'T_DETECT_OPEN_RSLT' AND U.COLUMN_NAME='ELEC_LVL_CTRL_CONC_CODE';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table T_DETECT_OPEN_RSLT add elec_lvl_ctrl_conc_code VARCHAR2(8)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 T_DETECT_OPEN_RSLT.elec_lvl_ctrl_conc_code 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'T_DETECT_OPEN_RSLT' AND U.COLUMN_NAME='PHASE_LEAK_CURT_CONC_CODE';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table T_DETECT_OPEN_RSLT add phase_leak_curt_conc_code VARCHAR2(8)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 T_DETECT_OPEN_RSLT.phase_leak_curt_conc_code 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'T_DETECT_OPEN_RSLT' AND U.COLUMN_NAME='HIGH_TEMP_OPER_CONC_CODE';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table T_DETECT_OPEN_RSLT add high_temp_oper_conc_code VARCHAR2(8)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 T_DETECT_OPEN_RSLT.high_temp_oper_conc_code 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'T_DETECT_OPEN_RSLT' AND U.COLUMN_NAME='LOW_TEMP_OPER_CONC_CODE';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table T_DETECT_OPEN_RSLT add low_temp_oper_conc_code VARCHAR2(8)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 T_DETECT_OPEN_RSLT.low_temp_oper_conc_code 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'T_DETECT_OPEN_RSLT' AND U.COLUMN_NAME='HIGH_TEMP_TRIP_CONC_CODE';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table T_DETECT_OPEN_RSLT add high_temp_trip_conc_code VARCHAR2(8)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 T_DETECT_OPEN_RSLT.high_temp_trip_conc_code 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'T_DETECT_OPEN_RSLT' AND U.COLUMN_NAME='LOW_TEMP_TRIP_CONC_CODE';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table T_DETECT_OPEN_RSLT add low_temp_trip_conc_code VARCHAR2(8)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 T_DETECT_OPEN_RSLT.low_temp_trip_conc_code 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'T_DETECT_OPEN_RSLT' AND U.COLUMN_NAME='POWER_DELAY_CONC_CODE';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table T_DETECT_OPEN_RSLT add power_delay_conc_code VARCHAR2(8)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 T_DETECT_OPEN_RSLT.power_delay_conc_code 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'T_DETECT_OPEN_RSLT' AND U.COLUMN_NAME='CLOSE_TIME_CONC_CODE';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table T_DETECT_OPEN_RSLT add close_time_conc_code VARCHAR2(8)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 T_DETECT_OPEN_RSLT.close_time_conc_code 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'T_DETECT_OPEN_RSLT' AND U.COLUMN_NAME='SYNCHRONISM_CONC_CODE';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table T_DETECT_OPEN_RSLT add synchronism_conc_code VARCHAR2(8)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 T_DETECT_OPEN_RSLT.synchronism_conc_code 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'T_DETECT_OPEN_RSLT' AND U.COLUMN_NAME='FAULT_CUR_LOAD_CAPA_CONC_CODE';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table T_DETECT_OPEN_RSLT add fault_cur_load_capa_conc_code VARCHAR2(8)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 T_DETECT_OPEN_RSLT.fault_cur_load_capa_conc_code 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column T_DETECT_OPEN_RSLT.temp_rise_conc_code
      is ''温升''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_DETECT_OPEN_RSLT.ver_temp_rise_conc_code
      is ''验证温升''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_DETECT_OPEN_RSLT.dielec_prop_conc_code
      is ''介电性能试验''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_DETECT_OPEN_RSLT.ver_dielec_prop_conc_code
      is ''验证介电性能''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_DETECT_OPEN_RSLT.leak_current_conc_code
      is ''泄漏电流''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_DETECT_OPEN_RSLT.connect_capa_conc_code
      is ''接通和分断能力''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_DETECT_OPEN_RSLT.oper_pfm_capa_conc_code
      is ''操作性能试验''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_DETECT_OPEN_RSLT.st_stad_curr_conc_code
      is ''短时耐受电流试验''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_DETECT_OPEN_RSLT.st_circ_conn_capa_conc_code
      is ''短路接通能力试验''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_DETECT_OPEN_RSLT.overload_capa_conc_code
      is ''过载性能能力''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_DETECT_OPEN_RSLT.limt_current_conc_code
      is ''限制短路电流''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_DETECT_OPEN_RSLT.oper_mecha_str_conc_code
      is ''操作机构的强度''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_DETECT_OPEN_RSLT.ident_durab_conc_code
      is ''标识耐久性试验''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_DETECT_OPEN_RSLT.cle_creep_dist_conc_code
      is ''电气间隙和爬电距离''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_DETECT_OPEN_RSLT.impul_volt_conc_code
      is ''冲击耐受电压试验''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_DETECT_OPEN_RSLT.tmp_rise_power_meas_conc_code
      is ''温升试验及功耗测量''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_DETECT_OPEN_RSLT.trip_charact_conc_code
      is ''脱扣特性''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_DETECT_OPEN_RSLT.sht_circ_perfor_conc_code
      is ''短路性能试验''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_DETECT_OPEN_RSLT.mechan_vibra_conc_code
      is ''机械振动试验''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_DETECT_OPEN_RSLT.veri_heat_resist_conc_code
      is ''耐热性验证试验''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_DETECT_OPEN_RSLT.flame_fever_conc_code
      is ''耐受非正常火焰和发热试验''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_DETECT_OPEN_RSLT.antirust_conc_code
      is ''防锈性能试验''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_DETECT_OPEN_RSLT.anti_pulse_grp_conc_code
      is ''电快速瞬变脉冲群抗扰性试验''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_DETECT_OPEN_RSLT.discharge_conc_code
      is ''静电放电试验''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_DETECT_OPEN_RSLT.surge_conc_code
      is ''浪涌试验''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_DETECT_OPEN_RSLT.drive_conc_code
      is ''驱动能力试验''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_DETECT_OPEN_RSLT.elec_lvl_ctrl_conc_code
      is ''AC220V电平控制试验''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_DETECT_OPEN_RSLT.phase_leak_curt_conc_code
      is ''相线泄漏电流试验''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_DETECT_OPEN_RSLT.high_temp_oper_conc_code
      is ''高温操作试验''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_DETECT_OPEN_RSLT.low_temp_oper_conc_code
      is ''低温操作试验''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_DETECT_OPEN_RSLT.high_temp_trip_conc_code
      is ''高温脱扣试验''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_DETECT_OPEN_RSLT.low_temp_trip_conc_code
      is ''低温脱扣试验''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_DETECT_OPEN_RSLT.power_delay_conc_code
      is ''上电延时试验''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_DETECT_OPEN_RSLT.close_time_conc_code
      is ''自动合闸时间试验''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_DETECT_OPEN_RSLT.synchronism_conc_code
      is ''同期性试验''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_DETECT_OPEN_RSLT.fault_cur_load_capa_conc_code
      is ''故障电流接通和承载能力试验''
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000011175 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'D_HANDHELD_DEVICE' AND U.COLUMN_NAME='IMEI';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table D_HANDHELD_DEVICE add imei VARCHAR2(32)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 D_HANDHELD_DEVICE.imei 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'D_HANDHELD_DEVICE' AND U.COLUMN_NAME='MEID';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table D_HANDHELD_DEVICE add meid VARCHAR2(32)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 D_HANDHELD_DEVICE.meid 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column D_HANDHELD_DEVICE.imei
      is ''国际移动设备识别码，与MEID字段，至少其中一个必填''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_HANDHELD_DEVICE.meid
      is ''移动设备识别码，与IMEI字段，至少其中一个必填''
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000012408 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'D_HANDHELD_DEVICE' AND U.COLUMN_NAME='CONTRACT_ID';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table D_HANDHELD_DEVICE add contract_id NUMBER(16)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 D_HANDHELD_DEVICE.contract_id 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column D_HANDHELD_DEVICE.contract_id
      is ''合同标识''
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000012480 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'D_SWTICH' AND U.COLUMN_NAME='LATEST_CHK_DATE';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table D_SWTICH add latest_chk_date DATE
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 D_SWTICH.latest_chk_date 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column D_SWTICH.latest_chk_date
      is ''最近检定日期''
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000012617 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'COMMUNICATION_MODULE' AND U.COLUMN_NAME='PR_CODE';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table COMMUNICATION_MODULE add pr_code VARCHAR2(32)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 COMMUNICATION_MODULE.pr_code 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column COMMUNICATION_MODULE.pr_code
      is ''设备产权代码。VW_PROPERTY_RIGHT_CODE''
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000012668 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'D_SWTICH' AND U.COLUMN_NAME='WIRING_MODE';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table D_SWTICH add wiring_mode VARCHAR2(8)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 D_SWTICH.wiring_mode 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'D_SWTICH' AND U.COLUMN_NAME='FREQ_CODE';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table D_SWTICH add freq_code VARCHAR2(8)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 D_SWTICH.freq_code 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column D_SWTICH.wiring_mode
      is ''接线方式，参考VW_WIRING_MODE''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_SWTICH.freq_code
      is ''频率，参考VW_FREQ_CODE''
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000015006 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'T_DETECT_HANDHELD_RSLT' AND U.COLUMN_NAME='STFC_CONC_CODE';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table T_DETECT_HANDHELD_RSLT add stfc_conc_code VARCHAR2(8)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 T_DETECT_HANDHELD_RSLT.stfc_conc_code 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'T_DETECT_HANDHELD_RSLT' AND U.COLUMN_NAME='SECURITY_MODULE_CONC_CODE';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table T_DETECT_HANDHELD_RSLT add security_module_conc_code VARCHAR2(8)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 T_DETECT_HANDHELD_RSLT.security_module_conc_code 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'T_DETECT_HANDHELD_RSLT' AND U.COLUMN_NAME='BUSINESS_SOFTWARE_CONC_CODE';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table T_DETECT_HANDHELD_RSLT add business_software_conc_code VARCHAR2(8)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 T_DETECT_HANDHELD_RSLT.business_software_conc_code 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'T_DETECT_HANDHELD_RSLT' AND U.COLUMN_NAME='NETWORK_PROTECTION_CONC_CODE';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table T_DETECT_HANDHELD_RSLT add network_protection_conc_code VARCHAR2(8)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 T_DETECT_HANDHELD_RSLT.network_protection_conc_code 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'T_DETECT_HANDHELD_RSLT' AND U.COLUMN_NAME='ACCESS_PROTECTION_CONC_CODE';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table T_DETECT_HANDHELD_RSLT add access_protection_conc_code VARCHAR2(8)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 T_DETECT_HANDHELD_RSLT.access_protection_conc_code 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'T_DETECT_HANDHELD_RSLT' AND U.COLUMN_NAME='HPADC_CONC_CODE';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table T_DETECT_HANDHELD_RSLT add hpadc_conc_code VARCHAR2(8)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 T_DETECT_HANDHELD_RSLT.hpadc_conc_code 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'T_DETECT_HANDHELD_RSLT' AND U.COLUMN_NAME='BAMC_CONC_CODE';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table T_DETECT_HANDHELD_RSLT add bamc_conc_code VARCHAR2(8)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 T_DETECT_HANDHELD_RSLT.bamc_conc_code 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'T_DETECT_HANDHELD_RSLT' AND U.COLUMN_NAME='APNPAPC_CONC_CODE';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table T_DETECT_HANDHELD_RSLT add apnpapc_conc_code VARCHAR2(8)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 T_DETECT_HANDHELD_RSLT.apnpapc_conc_code 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'T_DETECT_HANDHELD_RSLT' AND U.COLUMN_NAME='CAMERA_CONC_CODE';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table T_DETECT_HANDHELD_RSLT add camera_conc_code VARCHAR2(8)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 T_DETECT_HANDHELD_RSLT.camera_conc_code 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'T_DETECT_HANDHELD_RSLT' AND U.COLUMN_NAME='WHOLE_MACHINE_CONC_CODE';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table T_DETECT_HANDHELD_RSLT add whole_machine_conc_code VARCHAR2(8)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 T_DETECT_HANDHELD_RSLT.whole_machine_conc_code 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'T_DETECT_HANDHELD_RSLT' AND U.COLUMN_NAME='SACC_CONC_CODE';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table T_DETECT_HANDHELD_RSLT add sacc_conc_code VARCHAR2(8)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 T_DETECT_HANDHELD_RSLT.sacc_conc_code 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'T_DETECT_HANDHELD_RSLT' AND U.COLUMN_NAME='NETWORK_STABILITY_CONC_CODE';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table T_DETECT_HANDHELD_RSLT add network_stability_conc_code VARCHAR2(8)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 T_DETECT_HANDHELD_RSLT.network_stability_conc_code 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'T_DETECT_HANDHELD_RSLT' AND U.COLUMN_NAME='APPLICATION_SCENARIO_CONC_CODE';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table T_DETECT_HANDHELD_RSLT add application_scenario_conc_code VARCHAR2(8)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 T_DETECT_HANDHELD_RSLT.application_scenario_conc_code 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'T_DETECT_HANDHELD_RSLT' AND U.COLUMN_NAME='DISPLAY_UNIT_CONC_CODE';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table T_DETECT_HANDHELD_RSLT add display_unit_conc_code VARCHAR2(8)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 T_DETECT_HANDHELD_RSLT.display_unit_conc_code 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'T_DETECT_HANDHELD_RSLT' AND U.COLUMN_NAME='ELEC_COMPATIBILITY_CONC_CODE';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table T_DETECT_HANDHELD_RSLT add elec_compatibility_conc_code VARCHAR2(8)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 T_DETECT_HANDHELD_RSLT.elec_compatibility_conc_code 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'T_DETECT_HANDHELD_RSLT' AND U.COLUMN_NAME='ENVIR_ADAPTABILITY_CONC_CODE';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table T_DETECT_HANDHELD_RSLT add envir_adaptability_conc_code VARCHAR2(8)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 T_DETECT_HANDHELD_RSLT.envir_adaptability_conc_code 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'T_DETECT_HANDHELD_RSLT' AND U.COLUMN_NAME='SHELL_LEVEL_CONC_CODE';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table T_DETECT_HANDHELD_RSLT add shell_level_conc_code VARCHAR2(8)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 T_DETECT_HANDHELD_RSLT.shell_level_conc_code 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'T_DETECT_HANDHELD_RSLT' AND U.COLUMN_NAME='OTARRF_CONC_CODE';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table T_DETECT_HANDHELD_RSLT add otarrf_conc_code VARCHAR2(8)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 T_DETECT_HANDHELD_RSLT.otarrf_conc_code 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'T_DETECT_HANDHELD_RSLT' AND U.COLUMN_NAME='PROTOCOL_AGREEMENT_CONC_CODE';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table T_DETECT_HANDHELD_RSLT add protocol_agreement_conc_code VARCHAR2(8)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 T_DETECT_HANDHELD_RSLT.protocol_agreement_conc_code 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'T_DETECT_HANDHELD_RSLT' AND U.COLUMN_NAME='SECURITY_CONC_CODE';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table T_DETECT_HANDHELD_RSLT add security_conc_code VARCHAR2(8)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 T_DETECT_HANDHELD_RSLT.security_conc_code 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column T_DETECT_HANDHELD_RSLT.stfc_conc_code
      is ''安全TF卡功能检测''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_DETECT_HANDHELD_RSLT.security_module_conc_code
      is ''安全模块功能检测''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_DETECT_HANDHELD_RSLT.business_software_conc_code
      is ''业务软件功能检测''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_DETECT_HANDHELD_RSLT.network_protection_conc_code
      is ''网络防护功能检测''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_DETECT_HANDHELD_RSLT.access_protection_conc_code
      is ''接入防护功能检测''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_DETECT_HANDHELD_RSLT.hpadc_conc_code
      is ''设备硬件参数及桌面定制''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_DETECT_HANDHELD_RSLT.bamc_conc_code
      is ''业务/管理员模式定制''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_DETECT_HANDHELD_RSLT.apnpapc_conc_code
      is ''APN电力接入点定制''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_DETECT_HANDHELD_RSLT.camera_conc_code
      is ''摄像头''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_DETECT_HANDHELD_RSLT.whole_machine_conc_code
      is ''整机功能''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_DETECT_HANDHELD_RSLT.sacc_conc_code
      is ''安全接入客户端兼容性''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_DETECT_HANDHELD_RSLT.network_stability_conc_code
      is ''网络稳定性''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_DETECT_HANDHELD_RSLT.application_scenario_conc_code
      is ''应用场景''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_DETECT_HANDHELD_RSLT.display_unit_conc_code
      is ''显示部件''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_DETECT_HANDHELD_RSLT.elec_compatibility_conc_code
      is ''电磁兼容性''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_DETECT_HANDHELD_RSLT.envir_adaptability_conc_code
      is ''环境适应性''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_DETECT_HANDHELD_RSLT.shell_level_conc_code
      is ''外壳防护等级''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_DETECT_HANDHELD_RSLT.otarrf_conc_code
      is ''OTA移动台空中辐射射频性能''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_DETECT_HANDHELD_RSLT.protocol_agreement_conc_code
      is ''Protocol协议''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_DETECT_HANDHELD_RSLT.security_conc_code
      is ''安全''
    ';
END;
/

set feedback on
set define on
set serveroutput off
--------------------------------------------------

