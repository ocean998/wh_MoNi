--------------------------------------------------
set feedback off
set define off
set serveroutput on
--------------------------------------------------

prompt
prompt 正在处理纪录编号为 8200000000007911 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'I_INTERFACE_TIMEJOB_INFO' AND U.COLUMN_NAME='RECORD_TYPE';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table I_INTERFACE_TIMEJOB_INFO add record_type VARCHAR2(8)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 I_INTERFACE_TIMEJOB_INFO.record_type 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column I_INTERFACE_TIMEJOB_INFO.record_type
      is ''DATA_SEND_REC中的RECORD_TYPE''
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000008904 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'D_ASSIST_EQUIP_IO_TASK' AND U.COLUMN_NAME='AU_OR_PE';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table D_ASSIST_EQUIP_IO_TASK add au_or_pe VARCHAR2(2) default 2
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 D_ASSIST_EQUIP_IO_TASK.au_or_pe 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column D_ASSIST_EQUIP_IO_TASK.au_or_pe
      is ''从平库出还是从立库出''
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000009117 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'D_ASSIST_EQUIP_IO_TASK' AND U.COLUMN_NAME='IS_SEND';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table D_ASSIST_EQUIP_IO_TASK add is_send NUMBER(1) default 0
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 D_ASSIST_EQUIP_IO_TASK.is_send 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column D_ASSIST_EQUIP_IO_TASK.is_send
      is ''任务是否已发出。1是、0否''
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000010008 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'B_EQUIP_CODE' AND U.COLUMN_NAME='SAFETY_CODE';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table B_EQUIP_CODE add safety_code VARCHAR2(8)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 B_EQUIP_CODE.safety_code 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'B_EQUIP_CODE' AND U.COLUMN_NAME='TA_EXP_CODE';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table B_EQUIP_CODE add ta_exp_code VARCHAR2(8)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 B_EQUIP_CODE.ta_exp_code 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'B_EQUIP_CODE' AND U.COLUMN_NAME='ENCRYPT_TYPE';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table B_EQUIP_CODE add encrypt_type VARCHAR2(8)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 B_EQUIP_CODE.encrypt_type 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column B_EQUIP_CODE.safety_code
      is ''仪表保安系数vw_safety_code''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column B_EQUIP_CODE.ta_exp_code
      is ''额定一次电流扩大倍数vw_ta_exp_code''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column B_EQUIP_CODE.encrypt_type
      is ''加密方式vw_encrypt_type:01无、02国标、03EPC''
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000010799 的脚本
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
prompt 正在处理纪录编号为 8200000000010787 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Tables U WHERE U.TABLE_NAME = 'L_SXYK_INTERFACE_TABLE_MAPPING';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
        create table L_SXYK_INTERFACE_TABLE_MAPPING
        (
        mapping_id     NUMBER(16) not null,
        interface_name VARCHAR2(128),
        table_name     VARCHAR2(128),
        mid_type       VARCHAR2(8),
        field_name     VARCHAR2(128)
        )
        tablespace MPAC_I
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
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 L_SXYK_INTERFACE_TABLE_MAPPING 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table L_SXYK_INTERFACE_TABLE_MAPPING
      is ''sxyk接口名与数据交互表的映射表''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column L_SXYK_INTERFACE_TABLE_MAPPING.mapping_id
      is ''主键标识,SEQ_L_SXYK_INTERFACE_MAPPING''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column L_SXYK_INTERFACE_TABLE_MAPPING.interface_name
      is ''接口函数名（以四线一库接口规范中接口函数名为准）''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column L_SXYK_INTERFACE_TABLE_MAPPING.table_name
      is ''接口中涉及的中间库数据交互表，多个表，就维护多条记录''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column L_SXYK_INTERFACE_TABLE_MAPPING.mid_type
      is ''中间库类型，01：仓储中间库，02：检定中间库''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column L_SXYK_INTERFACE_TABLE_MAPPING.field_name
      is ''用来查询该表数据的关联条件字段，多个字段时以英文分号;分隔''
    ';
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_INDEXES U WHERE u.INDEX_NAME = 'PK_L_SXYK_INTERFACE';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table L_SXYK_INTERFACE_TABLE_MAPPING
      add constraint PK_L_SXYK_INTERFACE primary key (MAPPING_ID)
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
      dbms_output.put_line('脚本已跳过，因为 PK_L_SXYK_INTERFACE 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Sequences U WHERE u.sequence_name = 'SEQ_L_SXYK_INTERFACE_MAPPING';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      create sequence SEQ_L_SXYK_INTERFACE_MAPPING
      minvalue 1
      maxvalue 9999999999999999
      start with 8200000000000000
      increment by 1
      cache 20
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 SEQ_L_SXYK_INTERFACE_MAPPING 已存在。');
    END IF;
END;
/
prompt
prompt 正在处理纪录编号为 8200000000010819 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    EXECUTE IMMEDIATE
    '
      comment on column T_DETECT_OPEN_RSLT.insulation_conc_code
      is ''绝缘电阻试验''
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000010821 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    dbms_output.enable(buffer_size => null);
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
prompt 正在处理纪录编号为 8200000000010829 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Tables U WHERE U.TABLE_NAME = 'T_INSULATION_BR_CONC';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
        create table T_INSULATION_BR_CONC
        (
        read_id NUMBER(16) not null,
        detect_task_no VARCHAR(32),
        sys_no VARCHAR(16),
        detect_equip_no VARCHAR(16),
        detect_unit_no VARCHAR(16),
        position_no VARCHAR(16),
        bar_code VARCHAR(32),
        detect_date DATE,
        para_index VARCHAR(16),
        detect_item_point VARCHAR(8),
        is_valid VARCHAR(8),
        test_voltage VARCHAR(32),
        test_resistance VARCHAR(32),
        conc_code VARCHAR(8),
        test_time VARCHAR(8)
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
      dbms_output.put_line('脚本已跳过，因为 T_INSULATION_BR_CONC 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table T_INSULATION_BR_CONC
      is ''绝缘电阻测试（断路器）''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_INSULATION_BR_CONC.READ_ID
      is ''检定结论标识''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_INSULATION_BR_CONC.DETECT_TASK_NO
      is ''检定任务编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_INSULATION_BR_CONC.SYS_NO
      is ''系统编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_INSULATION_BR_CONC.DETECT_EQUIP_NO
      is ''检定线台编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_INSULATION_BR_CONC.DETECT_UNIT_NO
      is ''检定单元编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_INSULATION_BR_CONC.POSITION_NO
      is ''工位编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_INSULATION_BR_CONC.BAR_CODE
      is ''设备条形码''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_INSULATION_BR_CONC.DETECT_DATE
      is ''检定时间''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_INSULATION_BR_CONC.PARA_INDEX
      is ''序号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_INSULATION_BR_CONC.DETECT_ITEM_POINT
      is ''检定点序号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_INSULATION_BR_CONC.IS_VALID
      is ''有效标志 0：否、1：是''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_INSULATION_BR_CONC.TEST_VOLTAGE
      is ''测试电压''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_INSULATION_BR_CONC.TEST_RESISTANCE
      is ''测得电阻''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_INSULATION_BR_CONC.CONC_CODE
      is ''检查结论 01合格、02不合格、03未检''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_INSULATION_BR_CONC.TEST_TIME
      is ''测试时间''
    ';
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_INDEXES U WHERE u.INDEX_NAME = 'PK_T_INSULATION_BR_CONC';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table T_INSULATION_BR_CONC
      add constraint PK_T_INSULATION_BR_CONC primary key (READ_ID)
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
      dbms_output.put_line('脚本已跳过，因为 PK_T_INSULATION_BR_CONC 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Sequences U WHERE u.sequence_name = 'SEQ_T_INSULATION_BR_CONC';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      create sequence SEQ_T_INSULATION_BR_CONC
      minvalue 1
      maxvalue 9999999999999999
      start with 8200000000000000
      increment by 1
      cache 20
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 SEQ_T_INSULATION_BR_CONC 已存在。');
    END IF;
END;
/
prompt
prompt 正在处理纪录编号为 8200000000010834 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Tables U WHERE U.TABLE_NAME = 'T_TRIP_CHARACT_BR_CONC';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
        create table T_TRIP_CHARACT_BR_CONC
        (
        read_id NUMBER(16) not null,
        detect_task_no VARCHAR(32),
        sys_no VARCHAR(16),
        detect_equip_no VARCHAR(16),
        detect_unit_no VARCHAR(16),
        position_no VARCHAR(16),
        bar_code VARCHAR(32),
        detect_date DATE,
        para_index VARCHAR(16),
        detect_item_point VARCHAR(8),
        is_valid VARCHAR(8),
        trip_test_type VARCHAR(8),
        test_voltage VARCHAR(32),
        test_current VARCHAR(32),
        test_time VARCHAR(32),
        conc_code VARCHAR(8)
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
      dbms_output.put_line('脚本已跳过，因为 T_TRIP_CHARACT_BR_CONC 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table T_TRIP_CHARACT_BR_CONC
      is ''脱扣特性（断路器）''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_TRIP_CHARACT_BR_CONC.READ_ID
      is ''检定结论标识''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_TRIP_CHARACT_BR_CONC.DETECT_TASK_NO
      is ''检定任务编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_TRIP_CHARACT_BR_CONC.SYS_NO
      is ''系统编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_TRIP_CHARACT_BR_CONC.DETECT_EQUIP_NO
      is ''检定线台编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_TRIP_CHARACT_BR_CONC.DETECT_UNIT_NO
      is ''检定单元编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_TRIP_CHARACT_BR_CONC.POSITION_NO
      is ''工位编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_TRIP_CHARACT_BR_CONC.BAR_CODE
      is ''设备条形码''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_TRIP_CHARACT_BR_CONC.DETECT_DATE
      is ''检定时间''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_TRIP_CHARACT_BR_CONC.PARA_INDEX
      is ''序号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_TRIP_CHARACT_BR_CONC.DETECT_ITEM_POINT
      is ''检定点序号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_TRIP_CHARACT_BR_CONC.IS_VALID
      is ''有效标志  0：否、1：是''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_TRIP_CHARACT_BR_CONC.TRIP_TEST_TYPE
      is ''测试类型  01:瞬时脱扣测试,02:延迟脱扣测试''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_TRIP_CHARACT_BR_CONC.TEST_VOLTAGE
      is ''测试电压''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_TRIP_CHARACT_BR_CONC.TEST_CURRENT
      is ''测试电流''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_TRIP_CHARACT_BR_CONC.TEST_TIME
      is ''测试时间''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_TRIP_CHARACT_BR_CONC.CONC_CODE
      is ''检查结论 01合格、02不合格''
    ';
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_INDEXES U WHERE u.INDEX_NAME = 'PK_T_TRIP_CHARACT_BR_CONC';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table T_TRIP_CHARACT_BR_CONC
      add constraint PK_T_TRIP_CHARACT_BR_CONC primary key (READ_ID)
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
      dbms_output.put_line('脚本已跳过，因为 PK_T_TRIP_CHARACT_BR_CONC 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Sequences U WHERE u.sequence_name = 'SEQ_T_TRIP_CHARACT_BR_CONC';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      create sequence SEQ_T_TRIP_CHARACT_BR_CONC
      minvalue 1
      maxvalue 9999999999999999
      start with 8200000000000000
      increment by 1
      cache 20
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 SEQ_T_TRIP_CHARACT_BR_CONC 已存在。');
    END IF;
END;
/
prompt
prompt 正在处理纪录编号为 8200000000010842 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Tables U WHERE U.TABLE_NAME = 'T_CONTROL_BR_CONC';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
        create table T_CONTROL_BR_CONC
        (
        read_id NUMBER(16) not null,
        detect_task_no VARCHAR(32),
        sys_no VARCHAR(16),
        detect_equip_no VARCHAR(16),
        detect_unit_no VARCHAR(16),
        position_no VARCHAR(16),
        bar_code VARCHAR(32),
        detect_date DATE,
        para_index VARCHAR(16),
        detect_item_point VARCHAR(8),
        is_valid VARCHAR(8),
        result_switch_on VARCHAR(32),
        result_switch_off VARCHAR(32),
        conc_code VARCHAR(8)
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
      dbms_output.put_line('脚本已跳过，因为 T_CONTROL_BR_CONC 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table T_CONTROL_BR_CONC
      is ''AC220V电平控制（断路器）''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_CONTROL_BR_CONC.READ_ID
      is ''检定结论标识''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_CONTROL_BR_CONC.DETECT_TASK_NO
      is ''检定任务编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_CONTROL_BR_CONC.SYS_NO
      is ''系统编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_CONTROL_BR_CONC.DETECT_EQUIP_NO
      is ''检定线台编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_CONTROL_BR_CONC.DETECT_UNIT_NO
      is ''检定单元编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_CONTROL_BR_CONC.POSITION_NO
      is ''工位编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_CONTROL_BR_CONC.BAR_CODE
      is ''设备条形码''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_CONTROL_BR_CONC.DETECT_DATE
      is ''检定时间''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_CONTROL_BR_CONC.PARA_INDEX
      is ''序号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_CONTROL_BR_CONC.DETECT_ITEM_POINT
      is ''检定点序号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_CONTROL_BR_CONC.IS_VALID
      is ''有效标志 0：否、1：是''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_CONTROL_BR_CONC.RESULT_SWITCH_ON
      is ''通路结果''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_CONTROL_BR_CONC.RESULT_SWITCH_OFF
      is ''跳闸结果''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_CONTROL_BR_CONC.CONC_CODE
      is ''检查结论 01合格、02不合格''
    ';
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_INDEXES U WHERE u.INDEX_NAME = 'PK_T_CONTROL_BR_CONC';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table T_CONTROL_BR_CONC
      add constraint PK_T_CONTROL_BR_CONC primary key (READ_ID)
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
      dbms_output.put_line('脚本已跳过，因为 PK_T_CONTROL_BR_CONC 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Sequences U WHERE u.sequence_name = 'SEQ_T_CONTROL_BR_CONC';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      create sequence SEQ_T_CONTROL_BR_CONC
      minvalue 1
      maxvalue 9999999999999999
      start with 8200000000000000
      increment by 1
      cache 20
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 SEQ_T_CONTROL_BR_CONC 已存在。');
    END IF;
END;
/
prompt
prompt 正在处理纪录编号为 8200000000010843 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Tables U WHERE U.TABLE_NAME = 'T_LEAK_CURRENT_SW_CONC';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
        create table T_LEAK_CURRENT_SW_CONC
        (
        read_id NUMBER(16) not null,
        detect_task_no VARCHAR(32),
        sys_no VARCHAR(16),
        detect_equip_no VARCHAR(16),
        detect_unit_no VARCHAR(16),
        position_no VARCHAR(16),
        bar_code VARCHAR(32),
        detect_date DATE,
        para_index VARCHAR(16),
        detect_item_point VARCHAR(8),
        test_voltage VARCHAR(16),
        test_current VARCHAR(16),
        test_time VARCHAR(8),
        is_valid VARCHAR(8)
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
      dbms_output.put_line('脚本已跳过，因为 T_LEAK_CURRENT_SW_CONC 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table T_LEAK_CURRENT_SW_CONC
      is ''泄漏电流试验（隔离开关）''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_LEAK_CURRENT_SW_CONC.READ_ID
      is ''检定结论标识''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_LEAK_CURRENT_SW_CONC.DETECT_TASK_NO
      is ''检定任务编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_LEAK_CURRENT_SW_CONC.SYS_NO
      is ''系统编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_LEAK_CURRENT_SW_CONC.DETECT_EQUIP_NO
      is ''检定线台编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_LEAK_CURRENT_SW_CONC.DETECT_UNIT_NO
      is ''检定单元编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_LEAK_CURRENT_SW_CONC.POSITION_NO
      is ''工位编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_LEAK_CURRENT_SW_CONC.BAR_CODE
      is ''设备条形码''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_LEAK_CURRENT_SW_CONC.DETECT_DATE
      is ''检定时间''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_LEAK_CURRENT_SW_CONC.PARA_INDEX
      is ''序号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_LEAK_CURRENT_SW_CONC.DETECT_ITEM_POINT
      is ''检定点序号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_LEAK_CURRENT_SW_CONC.TEST_VOLTAGE
      is ''测试耐压值''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_LEAK_CURRENT_SW_CONC.TEST_CURRENT
      is ''测试项目''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_LEAK_CURRENT_SW_CONC.TEST_TIME
      is ''测试时间''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_LEAK_CURRENT_SW_CONC.IS_VALID
      is ''有效标志''
    ';
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_INDEXES U WHERE u.INDEX_NAME = 'PK_T_LEAK_CURRENT_SW_CONC';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table T_LEAK_CURRENT_SW_CONC
      add constraint PK_T_LEAK_CURRENT_SW_CONC primary key (READ_ID)
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
      dbms_output.put_line('脚本已跳过，因为 PK_T_LEAK_CURRENT_SW_CONC 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Sequences U WHERE u.sequence_name = 'SEQ_T_LEAK_CURRENT_SW_CONC';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      create sequence SEQ_T_LEAK_CURRENT_SW_CONC
      minvalue 1
      maxvalue 9999999999999999
      start with 8200000000000000
      increment by 1
      cache 20
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 SEQ_T_LEAK_CURRENT_SW_CONC 已存在。');
    END IF;
END;
/
prompt
prompt 正在处理纪录编号为 8200000000010848 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Tables U WHERE U.TABLE_NAME = 'T_GENERAL_SW_CONC';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
        create table T_GENERAL_SW_CONC
        (
        read_id NUMBER(16) not null,
        detect_task_no VARCHAR(32),
        sys_no VARCHAR(16),
        detect_equip_no VARCHAR(16),
        detect_unit_no VARCHAR(16),
        position_no VARCHAR(16),
        bar_code VARCHAR(32),
        detect_date DATE,
        para_index VARCHAR(16),
        detect_item_point VARCHAR(8),
        connect_result_1 VARCHAR(8),
        disconnect_result_1 VARCHAR(8),
        connect_result_2 VARCHAR(8),
        disconnect_result_2 VARCHAR(8),
        connect_result_3 VARCHAR(8),
        disconnect_result_3 VARCHAR(8),
        is_valid VARCHAR(8),
        conc_code VARCHAR(8)
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
      dbms_output.put_line('脚本已跳过，因为 T_GENERAL_SW_CONC 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table T_GENERAL_SW_CONC
      is ''接通和分断能力试验(隔离开关)''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_GENERAL_SW_CONC.READ_ID
      is ''检定结论标识''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_GENERAL_SW_CONC.DETECT_TASK_NO
      is ''检定任务编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_GENERAL_SW_CONC.SYS_NO
      is ''系统编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_GENERAL_SW_CONC.DETECT_EQUIP_NO
      is ''检定线台编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_GENERAL_SW_CONC.DETECT_UNIT_NO
      is ''检定单元编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_GENERAL_SW_CONC.POSITION_NO
      is ''工位编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_GENERAL_SW_CONC.BAR_CODE
      is ''设备条形码''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_GENERAL_SW_CONC.DETECT_DATE
      is ''检定时间''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_GENERAL_SW_CONC.PARA_INDEX
      is ''序号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_GENERAL_SW_CONC.DETECT_ITEM_POINT
      is ''检定点序号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_GENERAL_SW_CONC.CONNECT_RESULT_1
      is ''第1极通路结果''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_GENERAL_SW_CONC.DISCONNECT_RESULT_1
      is ''第1极断路结果''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_GENERAL_SW_CONC.CONNECT_RESULT_2
      is ''第2极通路结果''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_GENERAL_SW_CONC.DISCONNECT_RESULT_2
      is ''第2极断路结果''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_GENERAL_SW_CONC.CONNECT_RESULT_3
      is ''第3极通路结果''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_GENERAL_SW_CONC.DISCONNECT_RESULT_3
      is ''第3极断路结果''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_GENERAL_SW_CONC.IS_VALID
      is ''有效标志 0：否、1：是''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_GENERAL_SW_CONC.CONC_CODE
      is ''检查结论 01合格、02不合格''
    ';
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_INDEXES U WHERE u.INDEX_NAME = 'PK_T_GENERAL_SW_CONC';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table T_GENERAL_SW_CONC
      add constraint PK_T_GENERAL_SW_CONC primary key (READ_ID)
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
      dbms_output.put_line('脚本已跳过，因为 PK_T_GENERAL_SW_CONC 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Sequences U WHERE u.sequence_name = 'SEQ_T_GENERAL_SW_CONC';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      create sequence SEQ_T_GENERAL_SW_CONC
      minvalue 1
      maxvalue 9999999999999999
      start with 8200000000000000
      increment by 1
      cache 20
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 SEQ_T_GENERAL_SW_CONC 已存在。');
    END IF;
END;
/
prompt
prompt 正在处理纪录编号为 8200000000010849 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'C_ARRIVE_METER_PARA' AND U.COLUMN_NAME='AUXILIARY_POWER';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table C_ARRIVE_METER_PARA add auxiliary_power VARCHAR2(8)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 C_ARRIVE_METER_PARA.auxiliary_power 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'C_ARRIVE_METER_PARA' AND U.COLUMN_NAME='INSULATE_FLAG';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table C_ARRIVE_METER_PARA add insulate_flag VARCHAR2(8)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 C_ARRIVE_METER_PARA.insulate_flag 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'C_ARRIVE_METER_PARA' AND U.COLUMN_NAME='INTERNAL_RESISTANCE';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table C_ARRIVE_METER_PARA add internal_resistance VARCHAR2(8)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 C_ARRIVE_METER_PARA.internal_resistance 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column C_ARRIVE_METER_PARA.auxiliary_power
      is ''辅助电源（VW_AUXILIARY_POWER）''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column C_ARRIVE_METER_PARA.insulate_flag
      is ''电压电流回路是否隔离（vw_yesno_flag）''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column C_ARRIVE_METER_PARA.internal_resistance
      is ''电流回路输入内阻''
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000010851 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'C_ARRIVE_IT_PARA' AND U.COLUMN_NAME='RESISTANCE_STRUCTURE';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table C_ARRIVE_IT_PARA add resistance_structure VARCHAR2(8)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 C_ARRIVE_IT_PARA.resistance_structure 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column C_ARRIVE_IT_PARA.resistance_structure
      is ''电阻结构vw_shunt_resistance_structure''
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000010852 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'D_METER' AND U.COLUMN_NAME='AUXILIARY_POWER';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table D_METER add auxiliary_power VARCHAR2(8)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 D_METER.auxiliary_power 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'D_METER' AND U.COLUMN_NAME='INSULATE_FLAG';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table D_METER add insulate_flag VARCHAR2(8)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 D_METER.insulate_flag 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'D_METER' AND U.COLUMN_NAME='INTERNAL_RESISTANCE';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table D_METER add internal_resistance VARCHAR2(8)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 D_METER.internal_resistance 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column D_METER.auxiliary_power
      is ''辅助电源（VW_AUXILIARY_POWER）''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_METER.insulate_flag
      is ''电压电流回路是否隔离（vw_yesno_flag）''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_METER.internal_resistance
      is ''电流回路输入内阻''
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000010853 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'D_IT' AND U.COLUMN_NAME='RESISTANCE_STRUCTURE';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table D_IT add resistance_structure VARCHAR2(8)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 D_IT.resistance_structure 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column D_IT.resistance_structure
      is ''电阻结构vw_shunt_resistance_structure''
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000010850 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'D_IO_TASK' AND U.COLUMN_NAME='SC_ABT_CODE';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table D_IO_TASK add sc_abt_code VARCHAR2(8)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 D_IO_TASK.sc_abt_code 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'D_IO_TASK' AND U.COLUMN_NAME='TRIP_TYPE';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table D_IO_TASK add trip_type VARCHAR2(8)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 D_IO_TASK.trip_type 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column D_IO_TASK.sc_abt_code
      is ''额定短路分断能力(分断电流)，01:4500A''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_IO_TASK.trip_type
      is ''空开脱扣类型，C型，D型''
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000010856 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'U_DIST_APP_DET' AND U.COLUMN_NAME='SC_ABT_CODE';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table U_DIST_APP_DET add sc_abt_code VARCHAR2(8)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 U_DIST_APP_DET.sc_abt_code 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'U_DIST_APP_DET' AND U.COLUMN_NAME='TRIP_TYPE';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table U_DIST_APP_DET add trip_type VARCHAR2(8)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 U_DIST_APP_DET.trip_type 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column U_DIST_APP_DET.sc_abt_code
      is ''额定短路分断能力(分断电流)，01:4500A''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column U_DIST_APP_DET.trip_type
      is ''空开脱扣类型，C型，D型''
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000010869 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'T_COMPARE_MET_RSLT' AND U.COLUMN_NAME='INSULATION_CONC';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table T_COMPARE_MET_RSLT add insulation_conc VARCHAR2(8)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 T_COMPARE_MET_RSLT.insulation_conc 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column T_COMPARE_MET_RSLT.insulation_conc
      is ''绝缘电阻试验结论''
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000010870 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'T_SAMPLING_MET_RSLT' AND U.COLUMN_NAME='INSULATION_CONC';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table T_SAMPLING_MET_RSLT add insulation_conc VARCHAR2(8)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 T_SAMPLING_MET_RSLT.insulation_conc 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column T_SAMPLING_MET_RSLT.insulation_conc
      is ''绝缘电阻试验结论''
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000010871 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'T_DETECT_MET_RSLT' AND U.COLUMN_NAME='INSULATION_CONC';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table T_DETECT_MET_RSLT add insulation_conc VARCHAR2(8)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 T_DETECT_MET_RSLT.insulation_conc 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column T_DETECT_MET_RSLT.insulation_conc
      is ''绝缘电阻试验结论''
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000010883 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'U_DIST_PLAN_DET' AND U.COLUMN_NAME='SC_ABT_CODE';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table U_DIST_PLAN_DET add sc_abt_code VARCHAR2(8)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 U_DIST_PLAN_DET.sc_abt_code 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'U_DIST_PLAN_DET' AND U.COLUMN_NAME='TRIP_TYPE';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table U_DIST_PLAN_DET add trip_type VARCHAR2(8)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 U_DIST_PLAN_DET.trip_type 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column U_DIST_PLAN_DET.sc_abt_code
      is ''额定短路分断能力(分断电流)，01:4500A''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column U_DIST_PLAN_DET.trip_type
      is ''空开脱扣类型，C型，D型''
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000010885 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'U_DIST_TASK_DET' AND U.COLUMN_NAME='SC_ABT_CODE';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table U_DIST_TASK_DET add sc_abt_code VARCHAR2(8)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 U_DIST_TASK_DET.sc_abt_code 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'U_DIST_TASK_DET' AND U.COLUMN_NAME='TRIP_TYPE';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table U_DIST_TASK_DET add trip_type VARCHAR2(8)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 U_DIST_TASK_DET.trip_type 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column U_DIST_TASK_DET.sc_abt_code
      is ''额定短路分断能力(分断电流)，01:4500A''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column U_DIST_TASK_DET.trip_type
      is ''空开脱扣类型，C型，D型''
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000010884 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Tables U WHERE U.TABLE_NAME = 'A_CHARGING_ADOPT';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
        create table A_CHARGING_ADOPT
        (
        record_id NUMBER(16),
        adopt_record_no VARCHAR2(16),
        adopt_name VARCHAR2(64),
        equip_factory_no VARCHAR2(32),
        adopt_date DATE,
        adopt_num NUMBER(8),
        equip_cteag VARCHAR2(8),
        handler_no VARCHAR2(16),
        handler_name VARCHAR2(32),
        status_code VARCHAR2(8),
        creator_no VARCHAR2(16),
        create_date DATE
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
      dbms_output.put_line('脚本已跳过，因为 A_CHARGING_ADOPT 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table A_CHARGING_ADOPT
      is ''充电设施发放表''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column A_CHARGING_ADOPT.RECORD_ID
      is ''信息标识''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column A_CHARGING_ADOPT.ADOPT_RECORD_NO
      is ''材料编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column A_CHARGING_ADOPT.ADOPT_NAME
      is ''接收人''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column A_CHARGING_ADOPT.EQUIP_FACTORY_NO
      is ''充电设施单位''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column A_CHARGING_ADOPT.ADOPT_DATE
      is ''领用日期''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column A_CHARGING_ADOPT.ADOPT_NUM
      is ''领用数量''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column A_CHARGING_ADOPT.EQUIP_CTEAG
      is ''设备类别''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column A_CHARGING_ADOPT.HANDLER_NO
      is ''发放人员编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column A_CHARGING_ADOPT.HANDLER_NAME
      is ''发放人员姓名''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column A_CHARGING_ADOPT.STATUS_CODE
      is ''任务状态''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column A_CHARGING_ADOPT.CREATOR_NO
      is ''创建人''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column A_CHARGING_ADOPT.CREATE_DATE
      is ''创建日期''
    ';
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Sequences U WHERE u.sequence_name = 'SEQ_A_CHARGING_ADOPT';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      create sequence SEQ_A_CHARGING_ADOPT
      minvalue 1
      maxvalue 9999999999999999
      start with 8200000000000000
      increment by 1
      cache 20
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 SEQ_A_CHARGING_ADOPT 已存在。');
    END IF;
END;
/
prompt
prompt 正在处理纪录编号为 8200000000010887 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'D_EMPTYOPEN' AND U.COLUMN_NAME='SORT_CODE';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table D_EMPTYOPEN add sort_code VARCHAR2(8)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 D_EMPTYOPEN.sort_code 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column D_EMPTYOPEN.sort_code
      is ''空开类别，01：微型断路器，02：隔离开关''
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000010890 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Tables U WHERE U.TABLE_NAME = 'D_EQUIP_RECEIVE';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
        create table D_EQUIP_RECEIVE
        (
        receive_id NUMBER(16) not null,
        app_no VARCHAR2(16),
        receive_date DATE,
        equip_categ VARCHAR2(8),
        sort_code VARCHAR2(8),
        type_code VARCHAR2(8),
        sc_abt_code VARCHAR2(8),
        trip_type VARCHAR2(8),
        receive_num NUMBER(8),
        receive_no VARCHAR2(64),
        receive_dept_no VARCHAR2(32),
        adopt_date DATE,
        handle_no VARCHAR2(64),
        dept_no VARCHAR2(16),
        adopt_qty NUMBER(8),
        status_code VARCHAR2(8),
        approve_rslt VARCHAR2(8),
        receive_reason VARCHAR2(256),
        approve_opinion VARCHAR2(256)
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
      dbms_output.put_line('脚本已跳过，因为 D_EQUIP_RECEIVE 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table D_EQUIP_RECEIVE
      is ''空开领用信息表''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_EQUIP_RECEIVE.RECEIVE_ID
      is ''领用任务标识''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_EQUIP_RECEIVE.APP_NO
      is ''领用任务编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_EQUIP_RECEIVE.RECEIVE_DATE
      is ''领用日期''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_EQUIP_RECEIVE.EQUIP_CATEG
      is ''设备类别''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_EQUIP_RECEIVE.SORT_CODE
      is ''类型''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_EQUIP_RECEIVE.TYPE_CODE
      is ''类别''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_EQUIP_RECEIVE.SC_ABT_CODE
      is ''额定短路分断能力(分断电流)，01:4500A''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_EQUIP_RECEIVE.TRIP_TYPE
      is ''空开脱扣类型，C型，D型''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_EQUIP_RECEIVE.RECEIVE_NUM
      is ''领用数量''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_EQUIP_RECEIVE.RECEIVE_NO
      is ''领用人员编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_EQUIP_RECEIVE.RECEIVE_DEPT_NO
      is ''领用人员部门''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_EQUIP_RECEIVE.ADOPT_DATE
      is ''退回日期''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_EQUIP_RECEIVE.HANDLE_NO
      is ''经办人''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_EQUIP_RECEIVE.DEPT_NO
      is ''经办人部门编码''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_EQUIP_RECEIVE.ADOPT_QTY
      is ''已领用数量''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_EQUIP_RECEIVE.STATUS_CODE
      is ''当前任务状态：01新建，02待审核，03已审核，04待出库，05已出库,06已归档''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_EQUIP_RECEIVE.APPROVE_RSLT
      is ''审核结果：01通过，02不通过''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_EQUIP_RECEIVE.RECEIVE_REASON
      is ''申请领用原因''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_EQUIP_RECEIVE.APPROVE_OPINION
      is ''审核意见''
    ';
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_INDEXES U WHERE u.INDEX_NAME = 'PK_D_EQUIP_RECEIVE';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table D_EQUIP_RECEIVE
      add constraint PK_D_EQUIP_RECEIVE primary key (RECEIVE_ID)
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
      dbms_output.put_line('脚本已跳过，因为 PK_D_EQUIP_RECEIVE 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Sequences U WHERE u.sequence_name = 'SEQ_D_EQUIP_RECEIVE';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      create sequence SEQ_D_EQUIP_RECEIVE
      minvalue 1
      maxvalue 9999999999999999
      start with 8200000000000000
      increment by 1
      cache 20
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 SEQ_D_EQUIP_RECEIVE 已存在。');
    END IF;
END;
/
prompt
prompt 正在处理纪录编号为 8200000000010939 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'T_DETECT_IT_RSLT' AND U.COLUMN_NAME='FALLDOWN_CONC_CODE';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table T_DETECT_IT_RSLT add falldown_conc_code VARCHAR2(8)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 T_DETECT_IT_RSLT.falldown_conc_code 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'T_DETECT_IT_RSLT' AND U.COLUMN_NAME='ATTECK_CONC_CODE';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table T_DETECT_IT_RSLT add atteck_conc_code VARCHAR2(8)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 T_DETECT_IT_RSLT.atteck_conc_code 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'T_DETECT_IT_RSLT' AND U.COLUMN_NAME='VIBRATION_CONC_CODE';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table T_DETECT_IT_RSLT add vibration_conc_code VARCHAR2(8)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 T_DETECT_IT_RSLT.vibration_conc_code 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'T_DETECT_IT_RSLT' AND U.COLUMN_NAME='HEAT_BALANCE_TIME_CONC_CODE';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table T_DETECT_IT_RSLT add heat_balance_time_conc_code VARCHAR2(8)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 T_DETECT_IT_RSLT.heat_balance_time_conc_code 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'T_DETECT_IT_RSLT' AND U.COLUMN_NAME='LOW_TEMP_SMALL_CUR_CONC_CODE';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table T_DETECT_IT_RSLT add low_temp_small_cur_conc_code VARCHAR2(8)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 T_DETECT_IT_RSLT.low_temp_small_cur_conc_code 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'T_DETECT_IT_RSLT' AND U.COLUMN_NAME='HIGH_TEMP_BIG_CUR_CONC_CODE';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table T_DETECT_IT_RSLT add high_temp_big_cur_conc_code VARCHAR2(8)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 T_DETECT_IT_RSLT.high_temp_big_cur_conc_code 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'T_DETECT_IT_RSLT' AND U.COLUMN_NAME='ALTER_MAGNETIC_CONC_CODE';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table T_DETECT_IT_RSLT add alter_magnetic_conc_code VARCHAR2(8)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 T_DETECT_IT_RSLT.alter_magnetic_conc_code 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'T_DETECT_IT_RSLT' AND U.COLUMN_NAME='OVERLOAD_CONC_CODE';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table T_DETECT_IT_RSLT add overload_conc_code VARCHAR2(8)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 T_DETECT_IT_RSLT.overload_conc_code 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column T_DETECT_IT_RSLT.falldown_conc_code
      is ''跌落试验''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_DETECT_IT_RSLT.atteck_conc_code
      is ''冲击试验''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_DETECT_IT_RSLT.vibration_conc_code
      is ''振动试验''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_DETECT_IT_RSLT.heat_balance_time_conc_code
      is ''分流器热平衡时间试验''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_DETECT_IT_RSLT.low_temp_small_cur_conc_code
      is ''低温小电流试验''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_DETECT_IT_RSLT.high_temp_big_cur_conc_code
      is ''高温大电流试验''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_DETECT_IT_RSLT.alter_magnetic_conc_code
      is ''交变磁场影响试验''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_DETECT_IT_RSLT.overload_conc_code
      is ''过载试验''
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000010940 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'T_SAMPLING_IT_RSLT' AND U.COLUMN_NAME='FALLDOWN_CONC_CODE';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table T_SAMPLING_IT_RSLT add falldown_conc_code VARCHAR2(8)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 T_SAMPLING_IT_RSLT.falldown_conc_code 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'T_SAMPLING_IT_RSLT' AND U.COLUMN_NAME='ATTECK_CONC_CODE';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table T_SAMPLING_IT_RSLT add atteck_conc_code VARCHAR2(8)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 T_SAMPLING_IT_RSLT.atteck_conc_code 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'T_SAMPLING_IT_RSLT' AND U.COLUMN_NAME='VIBRATION_CONC_CODE';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table T_SAMPLING_IT_RSLT add vibration_conc_code VARCHAR2(8)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 T_SAMPLING_IT_RSLT.vibration_conc_code 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'T_SAMPLING_IT_RSLT' AND U.COLUMN_NAME='HEAT_BALANCE_TIME_CONC_CODE';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table T_SAMPLING_IT_RSLT add heat_balance_time_conc_code VARCHAR2(8)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 T_SAMPLING_IT_RSLT.heat_balance_time_conc_code 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'T_SAMPLING_IT_RSLT' AND U.COLUMN_NAME='LOW_TEMP_SMALL_CUR_CONC_CODE';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table T_SAMPLING_IT_RSLT add low_temp_small_cur_conc_code VARCHAR2(8)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 T_SAMPLING_IT_RSLT.low_temp_small_cur_conc_code 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'T_SAMPLING_IT_RSLT' AND U.COLUMN_NAME='HIGH_TEMP_BIG_CUR_CONC_CODE';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table T_SAMPLING_IT_RSLT add high_temp_big_cur_conc_code VARCHAR2(8)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 T_SAMPLING_IT_RSLT.high_temp_big_cur_conc_code 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'T_SAMPLING_IT_RSLT' AND U.COLUMN_NAME='ALTER_MAGNETIC_CONC_CODE';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table T_SAMPLING_IT_RSLT add alter_magnetic_conc_code VARCHAR2(8)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 T_SAMPLING_IT_RSLT.alter_magnetic_conc_code 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'T_SAMPLING_IT_RSLT' AND U.COLUMN_NAME='OVERLOAD_CONC_CODE';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table T_SAMPLING_IT_RSLT add overload_conc_code VARCHAR2(8)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 T_SAMPLING_IT_RSLT.overload_conc_code 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column T_SAMPLING_IT_RSLT.falldown_conc_code
      is ''跌落试验''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_SAMPLING_IT_RSLT.atteck_conc_code
      is ''冲击试验''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_SAMPLING_IT_RSLT.vibration_conc_code
      is ''振动试验''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_SAMPLING_IT_RSLT.heat_balance_time_conc_code
      is ''分流器热平衡时间试验''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_SAMPLING_IT_RSLT.low_temp_small_cur_conc_code
      is ''低温小电流试验''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_SAMPLING_IT_RSLT.high_temp_big_cur_conc_code
      is ''高温大电流试验''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_SAMPLING_IT_RSLT.alter_magnetic_conc_code
      is ''交变磁场影响试验''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_SAMPLING_IT_RSLT.overload_conc_code
      is ''过载试验''
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000010941 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Tables U WHERE U.TABLE_NAME = 'A_CHARGING_ADOPT_DET';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
        create table A_CHARGING_ADOPT_DET
        (
        record_det_id NUMBER(16),
        record_id NUMBER(16),
        adopt_record_no VARCHAR2(16),
        equip_categ VARCHAR2(8),
        rcv_id NUMBER(16),
        arrive_batch_no VARCHAR2(32),
        adopt_num NUMBER(8)
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
      dbms_output.put_line('脚本已跳过，因为 A_CHARGING_ADOPT_DET 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table A_CHARGING_ADOPT_DET
      is ''充电设施发放明细表''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column A_CHARGING_ADOPT_DET.RECORD_DET_ID
      is ''信息明细标识''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column A_CHARGING_ADOPT_DET.RECORD_ID
      is ''信息标识''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column A_CHARGING_ADOPT_DET.ADOPT_RECORD_NO
      is ''发放编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column A_CHARGING_ADOPT_DET.EQUIP_CATEG
      is ''设备类别''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column A_CHARGING_ADOPT_DET.RCV_ID
      is ''到货登记标识''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column A_CHARGING_ADOPT_DET.ARRIVE_BATCH_NO
      is ''到货批次号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column A_CHARGING_ADOPT_DET.ADOPT_NUM
      is ''发放数量''
    ';
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Sequences U WHERE u.sequence_name = 'SEQ_A_CHARGING_ADOPT_DET';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      create sequence SEQ_A_CHARGING_ADOPT_DET
      minvalue 1
      maxvalue 9999999999999999
      start with 8200000000000000
      increment by 1
      cache 20
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 SEQ_A_CHARGING_ADOPT_DET 已存在。');
    END IF;
END;
/
prompt
prompt 正在处理纪录编号为 8200000000010948 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'T_DETECT_PARA_INFO' AND U.COLUMN_NAME='SORT_CODE';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table T_DETECT_PARA_INFO add sort_code VARCHAR2(8)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 T_DETECT_PARA_INFO.sort_code 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column T_DETECT_PARA_INFO.sort_code
      is ''空开类别，01：微型断路器，02：隔离开关''
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000010956 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'B_ORDER_PARA_OTHERDEV' AND U.COLUMN_NAME='HARDWARE_VER';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table B_ORDER_PARA_OTHERDEV add hardware_ver VARCHAR2(64)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 B_ORDER_PARA_OTHERDEV.hardware_ver 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'B_ORDER_PARA_OTHERDEV' AND U.COLUMN_NAME='SOFTWARE_VER';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table B_ORDER_PARA_OTHERDEV add software_ver VARCHAR2(64)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 B_ORDER_PARA_OTHERDEV.software_ver 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column B_ORDER_PARA_OTHERDEV.hardware_ver
      is ''手持设备硬件版本''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column B_ORDER_PARA_OTHERDEV.software_ver
      is ''手持设备软件版本''
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000010961 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'U_DIST_APP_DET' AND U.COLUMN_NAME='HARDWARE_VER';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table U_DIST_APP_DET add hardware_ver VARCHAR2(64)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 U_DIST_APP_DET.hardware_ver 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'U_DIST_APP_DET' AND U.COLUMN_NAME='SOFTWARE_VER';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table U_DIST_APP_DET add software_ver VARCHAR2(64)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 U_DIST_APP_DET.software_ver 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column U_DIST_APP_DET.hardware_ver
      is ''手持设备硬件版本''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column U_DIST_APP_DET.software_ver
      is ''手持设备软件版本''
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000010973 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    EXECUTE IMMEDIATE
    '
      create or replace synonym MT_DETECT_HANDHELD_RSLT
      for SXYKJD.MT_DETECT_HANDHELD_RSLT@SXYKJD
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000010981 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    EXECUTE IMMEDIATE
    '
      create or replace synonym MT_DETECT_OPEN_RSLT
      for SXYKJD.MT_DETECT_OPEN_RSLT@SXYKJD
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000010999 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    EXECUTE IMMEDIATE
    '
      create or replace synonym MT_INSULATION_BR_CONC
      for SXYKJD.MT_INSULATION_BR_CONC@SXYKJD
    ';
    EXECUTE IMMEDIATE
    '
      create or replace synonym MT_TRIP_CHARACT_BR_CONC
      for SXYKJD.MT_TRIP_CHARACT_BR_CONC@SXYKJD
    ';
    EXECUTE IMMEDIATE
    '
      create or replace synonym MT_CONTROL_BR_CONC
      for SXYKJD.MT_CONTROL_BR_CONC@SXYKJD
    ';
    EXECUTE IMMEDIATE
    '
      create or replace synonym MT_LEAK_CURRENT_SW_CONC
      for SXYKJD.MT_LEAK_CURRENT_SW_CONC@SXYKJD
    ';
    EXECUTE IMMEDIATE
    '
      create or replace synonym MT_GENERAL_SW_CONC
      for SXYKJD.MT_GENERAL_SW_CONC@SXYKJD
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000011277 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    EXECUTE IMMEDIATE
    '
      create or replace synonym M_D_HANDHELD_DEVICE
      for SXYKGG.M_D_HANDHELD_DEVICE@SXYKGG
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000011476 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'T_DETECT_SCHEME' AND U.COLUMN_NAME='SORT_CODE';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table T_DETECT_SCHEME add sort_code VARCHAR2(8)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 T_DETECT_SCHEME.sort_code 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column T_DETECT_SCHEME.sort_code
      is ''空开类别，01：微型断路器，02：隔离开关''
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000011497 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'T_LEAK_CURRENT_SW_CONC' AND U.COLUMN_NAME='CONC_CODE';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table T_LEAK_CURRENT_SW_CONC add conc_code VARCHAR(8)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 T_LEAK_CURRENT_SW_CONC.conc_code 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column T_LEAK_CURRENT_SW_CONC.conc_code
      is ''01合格、02不合格''
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000011630 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'M_LAB_MANAGE' AND U.COLUMN_NAME='BELONG_ORG';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table M_LAB_MANAGE add belong_org VARCHAR2(16)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 M_LAB_MANAGE.belong_org 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'M_LAB_MANAGE' AND U.COLUMN_NAME='BELONG_ORG_NAME';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table M_LAB_MANAGE add belong_org_name VARCHAR2(256)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 M_LAB_MANAGE.belong_org_name 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column M_LAB_MANAGE.belong_org
      is ''所属单位代码''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column M_LAB_MANAGE.belong_org_name
      is ''所属单位名称''
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000011694 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    EXECUTE IMMEDIATE
    '
      create or replace synonym CHG_WH_DEV_LIST_JS
      for SXYKCC.CHG_WH_DEV_LIST_JS@SXYKCC
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000011764 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Tables U WHERE U.TABLE_NAME = 'SUC_PRO_PLAN';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
        create table SUC_PRO_PLAN
        (
        pro_plan_id NUMBER(16) not null,
        pro_plan_no VARCHAR2(32),
        pro_plan_name VARCHAR2(64),
        project_id NUMBER(16),
        plan_year VARCHAR2(16),
        fund_type VARCHAR2(16),
        create_no VARCHAR2(16),
        create_date DATE
        )
        tablespace MPAC_U
        pctfree 10
        initrans 1
        maxtrans 255
        storage
        (
        initial 256K
        next 1M
        minextents 1
        maxextents unlimited
        )
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 SUC_PRO_PLAN 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table SUC_PRO_PLAN
      is ''工程计划名称''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SUC_PRO_PLAN.PRO_PLAN_ID
      is ''工程计划标识''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SUC_PRO_PLAN.PRO_PLAN_NO
      is ''工程计划编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SUC_PRO_PLAN.PRO_PLAN_NAME
      is ''工程名称''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SUC_PRO_PLAN.PROJECT_ID
      is ''关联编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SUC_PRO_PLAN.PLAN_YEAR
      is ''计划年份''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SUC_PRO_PLAN.FUND_TYPE
      is ''资金类别，参照VW_FUND_TYPE,0:工程,1:专项''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SUC_PRO_PLAN.CREATE_NO
      is ''创建人''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SUC_PRO_PLAN.CREATE_DATE
      is ''创建日期''
    ';
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_INDEXES U WHERE u.INDEX_NAME = 'PK_SUC_PRO_PLAN';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table SUC_PRO_PLAN
      add constraint PK_SUC_PRO_PLAN primary key (PRO_PLAN_ID)
      using index
      tablespace MPAC_U_IDX
      pctfree 10
      initrans 2
      maxtrans 255
      storage
      (
      initial 64K
      next 1M
      minextents 1
      maxextents unlimited
      )
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 PK_SUC_PRO_PLAN 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Sequences U WHERE u.sequence_name = 'SEQ_SUC_PRO_PLAN';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      create sequence SEQ_SUC_PRO_PLAN
      minvalue 1
      maxvalue 9999999999999999
      start with 8200000000000000
      increment by 1
      cache 20
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 SEQ_SUC_PRO_PLAN 已存在。');
    END IF;
END;
/
prompt
prompt 正在处理纪录编号为 8200000000011765 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Tables U WHERE U.TABLE_NAME = 'SUC_PRO_PLAN_SUPPLY';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
        create table SUC_PRO_PLAN_SUPPLY
        (
        sup_plan_id NUMBER(16) not null,
        sup_plan_no VARCHAR2(16),
        par_plan_no VARCHAR2(16),
        plan_type_code VARCHAR2(8),
        plan_status_code VARCHAR2(8),
        start_date DATE,
        end_date DATE,
        create_no VARCHAR2(16),
        create_date DATE,
        remark1 VARCHAR2(256),
        remark2 VARCHAR2(256),
        remark3 VARCHAR2(256),
        remark4 VARCHAR2(256),
        remark5 VARCHAR2(256),
        frequence VARCHAR2(16)
        )
        tablespace MPAC_U
        pctfree 10
        initrans 1
        maxtrans 255
        storage
        (
        initial 256K
        next 1M
        minextents 1
        maxextents unlimited
        )
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 SUC_PRO_PLAN_SUPPLY 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table SUC_PRO_PLAN_SUPPLY
      is ''工程供应计划''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SUC_PRO_PLAN_SUPPLY.SUP_PLAN_ID
      is ''计划标识''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SUC_PRO_PLAN_SUPPLY.SUP_PLAN_NO
      is ''计划编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SUC_PRO_PLAN_SUPPLY.PAR_PLAN_NO
      is ''父计划编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SUC_PRO_PLAN_SUPPLY.PLAN_TYPE_CODE
      is ''计划类型''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SUC_PRO_PLAN_SUPPLY.PLAN_STATUS_CODE
      is ''计划状态''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SUC_PRO_PLAN_SUPPLY.START_DATE
      is ''起始时间''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SUC_PRO_PLAN_SUPPLY.END_DATE
      is ''截止时间''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SUC_PRO_PLAN_SUPPLY.CREATE_NO
      is ''创建人''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SUC_PRO_PLAN_SUPPLY.CREATE_DATE
      is ''创建时间''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SUC_PRO_PLAN_SUPPLY.REMARK1
      is ''备注1''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SUC_PRO_PLAN_SUPPLY.REMARK2
      is ''备注2''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SUC_PRO_PLAN_SUPPLY.REMARK3
      is ''备注3''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SUC_PRO_PLAN_SUPPLY.REMARK4
      is ''备注4''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SUC_PRO_PLAN_SUPPLY.REMARK5
      is ''备注5''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SUC_PRO_PLAN_SUPPLY.FREQUENCE
      is ''物资储备更新频率,频率：天、周、10天、半月、月''
    ';
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_INDEXES U WHERE u.INDEX_NAME = 'PK_SUC_PRO_PLAN_SUPPLY';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table SUC_PRO_PLAN_SUPPLY
      add constraint PK_SUC_PRO_PLAN_SUPPLY primary key (SUP_PLAN_ID)
      using index
      tablespace MPAC_U_IDX
      pctfree 10
      initrans 2
      maxtrans 255
      storage
      (
      initial 64K
      next 1M
      minextents 1
      maxextents unlimited
      )
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 PK_SUC_PRO_PLAN_SUPPLY 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Sequences U WHERE u.sequence_name = 'SEQ_SUC_PRO_PLAN_SUPPLY';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      create sequence SEQ_SUC_PRO_PLAN_SUPPLY
      minvalue 1
      maxvalue 9999999999999999
      start with 8200000000000000
      increment by 1
      cache 20
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 SEQ_SUC_PRO_PLAN_SUPPLY 已存在。');
    END IF;
END;
/
prompt
prompt 正在处理纪录编号为 8200000000011769 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Tables U WHERE U.TABLE_NAME = 'SUC_PRO_PLAN_SUPPLY_DET';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
        create table SUC_PRO_PLAN_SUPPLY_DET
        (
        sup_plan_det_id NUMBER(16) not null,
        sup_plan_no VARCHAR2(16),
        equip_code VARCHAR2(32),
        org_no VARCHAR2(16),
        plan_num NUMBER(16),
        manufacturer VARCHAR2(16),
        dist_num NUMBER(16),
        dist_manufacturer VARCHAR2(16)
        )
        tablespace MPAC_U
        pctfree 10
        initrans 1
        maxtrans 255
        storage
        (
        initial 256K
        next 1M
        minextents 1
        maxextents unlimited
        )
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 SUC_PRO_PLAN_SUPPLY_DET 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table SUC_PRO_PLAN_SUPPLY_DET
      is ''工程供应计划明细''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SUC_PRO_PLAN_SUPPLY_DET.SUP_PLAN_DET_ID
      is ''计划明细标识''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SUC_PRO_PLAN_SUPPLY_DET.SUP_PLAN_NO
      is ''计划编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SUC_PRO_PLAN_SUPPLY_DET.EQUIP_CODE
      is ''设备码''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SUC_PRO_PLAN_SUPPLY_DET.ORG_NO
      is ''管理单位''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SUC_PRO_PLAN_SUPPLY_DET.PLAN_NUM
      is ''计划数量''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SUC_PRO_PLAN_SUPPLY_DET.MANUFACTURER
      is ''生产厂家''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SUC_PRO_PLAN_SUPPLY_DET.DIST_NUM
      is ''实际数量''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SUC_PRO_PLAN_SUPPLY_DET.DIST_MANUFACTURER
      is ''实际生产厂家''
    ';
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_INDEXES U WHERE u.INDEX_NAME = 'PK_SUC_PRO_PLAN_SUPPLY_DET';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table SUC_PRO_PLAN_SUPPLY_DET
      add constraint PK_SUC_PRO_PLAN_SUPPLY_DET primary key (SUP_PLAN_DET_ID)
      using index
      tablespace MPAC_U_IDX
      pctfree 10
      initrans 2
      maxtrans 255
      storage
      (
      initial 64K
      next 1M
      minextents 1
      maxextents unlimited
      )
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 PK_SUC_PRO_PLAN_SUPPLY_DET 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Sequences U WHERE u.sequence_name = 'SEQ_SUC_PRO_PLAN_SUPPLY_DET';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      create sequence SEQ_SUC_PRO_PLAN_SUPPLY_DET
      minvalue 1
      maxvalue 9999999999999999
      start with 8200000000000000
      increment by 1
      cache 20
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 SEQ_SUC_PRO_PLAN_SUPPLY_DET 已存在。');
    END IF;
END;
/
prompt
prompt 正在处理纪录编号为 8200000000011772 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Tables U WHERE U.TABLE_NAME = 'SUC_PLAN_CHANGE';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
        create table SUC_PLAN_CHANGE
        (
        plan_change_id NUMBER(16) not null,
        manufacturer VARCHAR2(16),
        equip_code VARCHAR2(32),
        delay_step_code VARCHAR2(8),
        delay_reason_code VARCHAR2(8),
        origi_plan_time DATE,
        delay_time DATE,
        delay_influence_code VARCHAR2(8),
        fill_time DATE,
        create_no VARCHAR2(16),
        create_date DATE
        )
        tablespace MPAC_U
        pctfree 10
        initrans 1
        maxtrans 255
        storage
        (
        initial 256K
        next 1M
        minextents 1
        maxextents unlimited
        )
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 SUC_PLAN_CHANGE 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table SUC_PLAN_CHANGE
      is ''计划变更''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SUC_PLAN_CHANGE.PLAN_CHANGE_ID
      is ''计划变更标识''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SUC_PLAN_CHANGE.MANUFACTURER
      is ''生产厂家''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SUC_PLAN_CHANGE.EQUIP_CODE
      is ''设备码''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SUC_PLAN_CHANGE.DELAY_STEP_CODE
      is ''延迟环节''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SUC_PLAN_CHANGE.DELAY_REASON_CODE
      is ''延迟原因''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SUC_PLAN_CHANGE.ORIGI_PLAN_TIME
      is ''原计划时间''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SUC_PLAN_CHANGE.DELAY_TIME
      is ''延迟时间''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SUC_PLAN_CHANGE.DELAY_INFLUENCE_CODE
      is ''延迟影响''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SUC_PLAN_CHANGE.FILL_TIME
      is ''填报时间''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SUC_PLAN_CHANGE.CREATE_NO
      is ''创建人''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SUC_PLAN_CHANGE.CREATE_DATE
      is ''创建日期''
    ';
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_INDEXES U WHERE u.INDEX_NAME = 'PK_SUC_PLAN_CHANGE';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table SUC_PLAN_CHANGE
      add constraint PK_SUC_PLAN_CHANGE primary key (PLAN_CHANGE_ID)
      using index
      tablespace MPAC_U_IDX
      pctfree 10
      initrans 2
      maxtrans 255
      storage
      (
      initial 64K
      next 1M
      minextents 1
      maxextents unlimited
      )
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 PK_SUC_PLAN_CHANGE 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Sequences U WHERE u.sequence_name = 'SEQ_SUC_PLAN_CHANGE';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      create sequence SEQ_SUC_PLAN_CHANGE
      minvalue 1
      maxvalue 9999999999999999
      start with 8200000000000000
      increment by 1
      cache 20
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 SEQ_SUC_PLAN_CHANGE 已存在。');
    END IF;
END;
/
prompt
prompt 正在处理纪录编号为 8200000000011775 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Tables U WHERE U.TABLE_NAME = 'SUC_MAT_RESERVES_DET';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
        create table SUC_MAT_RESERVES_DET
        (
        mat_plan_det_id NUMBER(16) not null,
        sup_plan_no VARCHAR2(16),
        equip_code VARCHAR2(32),
        manufacturer VARCHAR2(16),
        produc_num VARCHAR2(8),
        agree_num VARCHAR2(128),
        detect_qty NUMBER(8),
        detect_conc_u NUMBER(8),
        arrive_batch_no VARCHAR2(32),
        desup_fst_detect_plantime DATE,
        desup_fst_detect_finitime DATE,
        desup_fst_detect_status VARCHAR2(8),
        desup_sed_sample_plantime DATE,
        desup_sed_sample_time DATE,
        desup_sed_detect_pretime DATE,
        desup_sed_detect_cycle VARCHAR2(8),
        desup_sed_detect_plantime DATE,
        desup_sed_detect_finitime DATE,
        desup_sed_detect_status VARCHAR2(8),
        desup_cur_detect_finitime DATE,
        desup_cur_detect_status VARCHAR2(8),
        agree_progress VARCHAR2(8),
        batpro_start_time DATE,
        batsup_planpro_cycle VARCHAR2(8),
        batsup_is_notice VARCHAR2(8),
        batsup_pro_plantime DATE,
        batsup_pro_cycle VARCHAR2(8),
        batsup_pro_finitime DATE,
        arr_qxn_start_time DATE,
        arr_qxn_plan_cycle VARCHAR2(8),
        arr_qxn_is_entrust VARCHAR2(8),
        arr_qxn_is_deliver VARCHAR2(8),
        arr_qxn_delivertime DATE,
        arr_qxn_plan_finitime DATE,
        arr_qxn_cycle VARCHAR2(8),
        arr_qxn_finitime DATE,
        fullchk_plan_cycle VARCHAR2(8),
        fullchk_cycle VARCHAR2(8),
        fullchk_plantime DATE,
        fullchk_finitime DATE,
        dist_plan_cycle VARCHAR2(8),
        dist_cycle VARCHAR2(8),
        dist_plan_finitime DATE,
        dist_finitime DATE,
        remark VARCHAR(256)
        )
        tablespace MPAC_U
        pctfree 10
        initrans 1
        maxtrans 255
        storage
        (
        initial 256K
        next 1M
        minextents 1
        maxextents unlimited
        )
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 SUC_MAT_RESERVES_DET 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table SUC_MAT_RESERVES_DET
      is ''物资储备情况明细''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SUC_MAT_RESERVES_DET.MAT_PLAN_DET_ID
      is ''计划明细标识''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SUC_MAT_RESERVES_DET.SUP_PLAN_NO
      is ''计划编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SUC_MAT_RESERVES_DET.EQUIP_CODE
      is ''设备码''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SUC_MAT_RESERVES_DET.MANUFACTURER
      is ''生产厂家''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SUC_MAT_RESERVES_DET.PRODUC_NUM
      is ''排产情况''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SUC_MAT_RESERVES_DET.AGREE_NUM
      is ''协议库存''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SUC_MAT_RESERVES_DET.DETECT_QTY
      is ''已检定数量''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SUC_MAT_RESERVES_DET.DETECT_CONC_U
      is ''不合格数量''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SUC_MAT_RESERVES_DET.ARRIVE_BATCH_NO
      is ''到货批次号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SUC_MAT_RESERVES_DET.DESUP_FST_DETECT_PLANTIME
      is ''第一次供货前检测计划完成时间''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SUC_MAT_RESERVES_DET.DESUP_FST_DETECT_FINITIME
      is ''第一次供货前检测实际最新完成时间''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SUC_MAT_RESERVES_DET.DESUP_FST_DETECT_STATUS
      is ''第一次供货前检测状态''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SUC_MAT_RESERVES_DET.DESUP_SED_SAMPLE_PLANTIME
      is ''第二次供货前重新送样计划时间''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SUC_MAT_RESERVES_DET.DESUP_SED_SAMPLE_TIME
      is ''第二次供货前重新送样实际最新时间''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SUC_MAT_RESERVES_DET.DESUP_SED_DETECT_PRETIME
      is ''第二次送检预计时间''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SUC_MAT_RESERVES_DET.DESUP_SED_DETECT_CYCLE
      is ''第二次供货前检测周期''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SUC_MAT_RESERVES_DET.DESUP_SED_DETECT_PLANTIME
      is ''第二次供货前检测计划完成时间''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SUC_MAT_RESERVES_DET.DESUP_SED_DETECT_FINITIME
      is ''第二次供货前检测实际最新完成时间''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SUC_MAT_RESERVES_DET.DESUP_SED_DETECT_STATUS
      is ''第二次供货前检测状态''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SUC_MAT_RESERVES_DET.DESUP_CUR_DETECT_FINITIME
      is ''实际最新供货前检测完成时间''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SUC_MAT_RESERVES_DET.DESUP_CUR_DETECT_STATUS
      is ''实际最新供货前检测状态''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SUC_MAT_RESERVES_DET.AGREE_PROGRESS
      is ''协议库存匹配进度''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SUC_MAT_RESERVES_DET.BATPRO_START_TIME
      is ''批量生产开始时间''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SUC_MAT_RESERVES_DET.BATSUP_PLANPRO_CYCLE
      is ''计划批量生产周期''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SUC_MAT_RESERVES_DET.BATSUP_IS_NOTICE
      is ''是否提供到货通知单''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SUC_MAT_RESERVES_DET.BATSUP_PRO_PLANTIME
      is ''批量生产计划完成时间''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SUC_MAT_RESERVES_DET.BATSUP_PRO_CYCLE
      is ''实际批量生产周期''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SUC_MAT_RESERVES_DET.BATSUP_PRO_FINITIME
      is ''批量生产实际最新完成时间''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SUC_MAT_RESERVES_DET.ARR_QXN_START_TIME
      is ''到货后全性能预计开始时间''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SUC_MAT_RESERVES_DET.ARR_QXN_PLAN_CYCLE
      is ''计划到货后全性能周期''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SUC_MAT_RESERVES_DET.ARR_QXN_IS_ENTRUST
      is ''是否提供到货委托单''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SUC_MAT_RESERVES_DET.ARR_QXN_IS_DELIVER
      is ''是否委外送样''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SUC_MAT_RESERVES_DET.ARR_QXN_DELIVERTIME
      is ''委外送样时间''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SUC_MAT_RESERVES_DET.ARR_QXN_PLAN_FINITIME
      is ''到货后全性能计划完成时间''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SUC_MAT_RESERVES_DET.ARR_QXN_CYCLE
      is ''实际最新到货后全性能周期''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SUC_MAT_RESERVES_DET.ARR_QXN_FINITIME
      is ''到货后全性能实际最新完成时间''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SUC_MAT_RESERVES_DET.FULLCHK_PLAN_CYCLE
      is ''计划全检周期''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SUC_MAT_RESERVES_DET.FULLCHK_CYCLE
      is ''实际全检周期''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SUC_MAT_RESERVES_DET.FULLCHK_PLANTIME
      is ''全检计划完成时间''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SUC_MAT_RESERVES_DET.FULLCHK_FINITIME
      is ''全检实际最新完成时间''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SUC_MAT_RESERVES_DET.DIST_PLAN_CYCLE
      is ''计划配送周期''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SUC_MAT_RESERVES_DET.DIST_CYCLE
      is ''实配送际周期''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SUC_MAT_RESERVES_DET.DIST_PLAN_FINITIME
      is ''配送计划完成时间''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SUC_MAT_RESERVES_DET.DIST_FINITIME
      is ''配送实际最新完成时间''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SUC_MAT_RESERVES_DET.REMARK
      is ''备注''
    ';
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_INDEXES U WHERE u.INDEX_NAME = 'PK_SUC_MAT_RESERVES_DET';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table SUC_MAT_RESERVES_DET
      add constraint PK_SUC_MAT_RESERVES_DET primary key (MAT_PLAN_DET_ID)
      using index
      tablespace MPAC_U_IDX
      pctfree 10
      initrans 2
      maxtrans 255
      storage
      (
      initial 64K
      next 1M
      minextents 1
      maxextents unlimited
      )
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 PK_SUC_MAT_RESERVES_DET 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Sequences U WHERE u.sequence_name = 'SEQ_SUC_MAT_RESERVES_DET';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      create sequence SEQ_SUC_MAT_RESERVES_DET
      minvalue 1
      maxvalue 9999999999999999
      start with 8200000000000000
      increment by 1
      cache 20
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 SEQ_SUC_MAT_RESERVES_DET 已存在。');
    END IF;
END;
/
prompt
prompt 正在处理纪录编号为 8200000000011902 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'T_COMPARE_IT_RSLT' AND U.COLUMN_NAME='FALLDOWN_CONC_CODE';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table T_COMPARE_IT_RSLT add falldown_conc_code VARCHAR2(8)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 T_COMPARE_IT_RSLT.falldown_conc_code 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'T_COMPARE_IT_RSLT' AND U.COLUMN_NAME='ATTECK_CONC_CODE';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table T_COMPARE_IT_RSLT add atteck_conc_code VARCHAR2(8)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 T_COMPARE_IT_RSLT.atteck_conc_code 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'T_COMPARE_IT_RSLT' AND U.COLUMN_NAME='VIBRATION_CONC_CODE';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table T_COMPARE_IT_RSLT add vibration_conc_code VARCHAR2(8)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 T_COMPARE_IT_RSLT.vibration_conc_code 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'T_COMPARE_IT_RSLT' AND U.COLUMN_NAME='HEAT_BALANCE_TIME_CONC_CODE';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table T_COMPARE_IT_RSLT add heat_balance_time_conc_code VARCHAR2(8)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 T_COMPARE_IT_RSLT.heat_balance_time_conc_code 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'T_COMPARE_IT_RSLT' AND U.COLUMN_NAME='LOW_TEMP_SMALL_CUR_CONC_CODE';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table T_COMPARE_IT_RSLT add low_temp_small_cur_conc_code VARCHAR2(8)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 T_COMPARE_IT_RSLT.low_temp_small_cur_conc_code 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'T_COMPARE_IT_RSLT' AND U.COLUMN_NAME='HIGH_TEMP_BIG_CUR_CONC_CODE';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table T_COMPARE_IT_RSLT add high_temp_big_cur_conc_code VARCHAR2(8)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 T_COMPARE_IT_RSLT.high_temp_big_cur_conc_code 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'T_COMPARE_IT_RSLT' AND U.COLUMN_NAME='ALTER_MAGNETIC_CONC_CODE';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table T_COMPARE_IT_RSLT add alter_magnetic_conc_code VARCHAR2(8)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 T_COMPARE_IT_RSLT.alter_magnetic_conc_code 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'T_COMPARE_IT_RSLT' AND U.COLUMN_NAME='OVERLOAD_CONC_CODE';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table T_COMPARE_IT_RSLT add overload_conc_code VARCHAR2(8)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 T_COMPARE_IT_RSLT.overload_conc_code 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column T_COMPARE_IT_RSLT.falldown_conc_code
      is ''跌落试验''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_COMPARE_IT_RSLT.atteck_conc_code
      is ''冲击试验''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_COMPARE_IT_RSLT.vibration_conc_code
      is ''振动试验''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_COMPARE_IT_RSLT.heat_balance_time_conc_code
      is ''分流器热平衡时间试验''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_COMPARE_IT_RSLT.low_temp_small_cur_conc_code
      is ''低温小电流试验''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_COMPARE_IT_RSLT.high_temp_big_cur_conc_code
      is ''高温大电流试验''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_COMPARE_IT_RSLT.alter_magnetic_conc_code
      is ''交变磁场影响试验''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_COMPARE_IT_RSLT.overload_conc_code
      is ''过载试验''
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000011914 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'F_REPICK_TASK' AND U.COLUMN_NAME='OUT_WH_SYS_NO';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table F_REPICK_TASK modify out_wh_sys_no VARCHAR2(16)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 F_REPICK_TASK.OUT_WH_SYS_NO 不存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'F_REPICK_TASK' AND U.COLUMN_NAME='IN_WH_SYS_NO';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table F_REPICK_TASK modify in_wh_sys_no VARCHAR2(16)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 F_REPICK_TASK.IN_WH_SYS_NO 不存在。');
    END IF;
END;
/
prompt
prompt 正在处理纪录编号为 8200000000011915 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'T_DETECT_TASK' AND U.COLUMN_NAME='PR_ORG';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table T_DETECT_TASK modify pr_org VARCHAR2(16)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 T_DETECT_TASK.PR_ORG 不存在。');
    END IF;
END;
/
prompt
prompt 正在处理纪录编号为 8200000000011919 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    EXECUTE IMMEDIATE
    '
      create or replace synonym M_D_EMPTYOPEN
      for SXYKGG.M_D_EMPTYOPEN@SXYKGG
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000011987 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'T_ALLDETECT_IT_RSLT' AND U.COLUMN_NAME='FALLDOWN_CONC_CODE';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table T_ALLDETECT_IT_RSLT add falldown_conc_code VARCHAR2(8)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 T_ALLDETECT_IT_RSLT.falldown_conc_code 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'T_ALLDETECT_IT_RSLT' AND U.COLUMN_NAME='ATTECK_CONC_CODE';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table T_ALLDETECT_IT_RSLT add atteck_conc_code VARCHAR2(8)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 T_ALLDETECT_IT_RSLT.atteck_conc_code 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'T_ALLDETECT_IT_RSLT' AND U.COLUMN_NAME='VIBRATION_CONC_CODE';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table T_ALLDETECT_IT_RSLT add vibration_conc_code VARCHAR2(8)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 T_ALLDETECT_IT_RSLT.vibration_conc_code 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'T_ALLDETECT_IT_RSLT' AND U.COLUMN_NAME='HEAT_BALANCE_TIME_CONC_CODE';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table T_ALLDETECT_IT_RSLT add heat_balance_time_conc_code VARCHAR2(8)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 T_ALLDETECT_IT_RSLT.heat_balance_time_conc_code 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'T_ALLDETECT_IT_RSLT' AND U.COLUMN_NAME='LOW_TEMP_SMALL_CUR_CONC_CODE';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table T_ALLDETECT_IT_RSLT add low_temp_small_cur_conc_code VARCHAR2(8)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 T_ALLDETECT_IT_RSLT.low_temp_small_cur_conc_code 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'T_ALLDETECT_IT_RSLT' AND U.COLUMN_NAME='HIGH_TEMP_BIG_CUR_CONC_CODE';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table T_ALLDETECT_IT_RSLT add high_temp_big_cur_conc_code VARCHAR2(8)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 T_ALLDETECT_IT_RSLT.high_temp_big_cur_conc_code 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'T_ALLDETECT_IT_RSLT' AND U.COLUMN_NAME='ALTER_MAGNETIC_CONC_CODE';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table T_ALLDETECT_IT_RSLT add alter_magnetic_conc_code VARCHAR2(8)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 T_ALLDETECT_IT_RSLT.alter_magnetic_conc_code 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'T_ALLDETECT_IT_RSLT' AND U.COLUMN_NAME='OVERLOAD_CONC_CODE';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table T_ALLDETECT_IT_RSLT add overload_conc_code VARCHAR2(8)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 T_ALLDETECT_IT_RSLT.overload_conc_code 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column T_ALLDETECT_IT_RSLT.falldown_conc_code
      is ''跌落试验''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_ALLDETECT_IT_RSLT.atteck_conc_code
      is ''冲击试验''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_ALLDETECT_IT_RSLT.vibration_conc_code
      is ''振动试验''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_ALLDETECT_IT_RSLT.heat_balance_time_conc_code
      is ''分流器热平衡时间试验''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_ALLDETECT_IT_RSLT.low_temp_small_cur_conc_code
      is ''低温小电流试验''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_ALLDETECT_IT_RSLT.high_temp_big_cur_conc_code
      is ''高温大电流试验''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_ALLDETECT_IT_RSLT.alter_magnetic_conc_code
      is ''交变磁场影响试验''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_ALLDETECT_IT_RSLT.overload_conc_code
      is ''过载试验''
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000011993 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'D_EQUIP_RECEIVE' AND U.COLUMN_NAME='ARRIVE_BATCH_NO';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table D_EQUIP_RECEIVE add arrive_batch_no VARCHAR2(32)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 D_EQUIP_RECEIVE.arrive_batch_no 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'D_EQUIP_RECEIVE' AND U.COLUMN_NAME='RCV_ID';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table D_EQUIP_RECEIVE add rcv_id NUMBER(16)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 D_EQUIP_RECEIVE.rcv_id 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column D_EQUIP_RECEIVE.arrive_batch_no
      is ''到货批次号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_EQUIP_RECEIVE.rcv_id
      is ''到货登记表唯一标识''
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000012015 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'T_ALLDETECT_MET_RSLT' AND U.COLUMN_NAME='INSULATION_CONC';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table T_ALLDETECT_MET_RSLT add insulation_conc VARCHAR2(8)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 T_ALLDETECT_MET_RSLT.insulation_conc 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column T_ALLDETECT_MET_RSLT.insulation_conc
      is ''绝缘电阻试验结论''
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000012181 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    EXECUTE IMMEDIATE
    '
      comment on column SUC_PRO_PLAN_SUPPLY.plan_type_code
      is ''计划类型，01：主计划；02：子计划；''
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000012203 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_INDEXES U WHERE u.INDEX_NAME = 'IDX_SG_APP_NO';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      create index IDX_SG_APP_NO on F_EQUIP_REPICK_DET (SG_APP_NO)
      tablespace MPAC_E
      pctfree 10
      initrans 2
      maxtrans 255
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
END;
/
prompt
prompt 正在处理纪录编号为 8200000000012317 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'SUC_PRO_PLAN_SUPPLY' AND U.COLUMN_NAME='APPROVER_NO';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table SUC_PRO_PLAN_SUPPLY add approver_no VARCHAR2(16)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 SUC_PRO_PLAN_SUPPLY.approver_no 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'SUC_PRO_PLAN_SUPPLY' AND U.COLUMN_NAME='APPROVE_DATE';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table SUC_PRO_PLAN_SUPPLY add approve_date DATE
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 SUC_PRO_PLAN_SUPPLY.approve_date 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'SUC_PRO_PLAN_SUPPLY' AND U.COLUMN_NAME='APPR_OPINION';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table SUC_PRO_PLAN_SUPPLY add appr_opinion VARCHAR2(256)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 SUC_PRO_PLAN_SUPPLY.appr_opinion 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'SUC_PRO_PLAN_SUPPLY' AND U.COLUMN_NAME='APPR_RSLT';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table SUC_PRO_PLAN_SUPPLY add appr_rslt VARCHAR2(8)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 SUC_PRO_PLAN_SUPPLY.appr_rslt 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column SUC_PRO_PLAN_SUPPLY.approver_no
      is ''审批人''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SUC_PRO_PLAN_SUPPLY.approve_date
      is ''审批日期''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SUC_PRO_PLAN_SUPPLY.appr_opinion
      is ''审批意见''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SUC_PRO_PLAN_SUPPLY.appr_rslt
      is ''审批结果''
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000012400 的脚本
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
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'D_HANDHELD_DEVICE' AND U.COLUMN_NAME='CONTRACT_NO';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table D_HANDHELD_DEVICE add contract_no VARCHAR2(32)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 D_HANDHELD_DEVICE.contract_no 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column D_HANDHELD_DEVICE.contract_id
      is ''订货合同ID,用来与订货合同实体进行关联''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_HANDHELD_DEVICE.contract_no
      is ''合同编号''
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000012401 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'D_EMPTYOPEN' AND U.COLUMN_NAME='CONTRACT_NO';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table D_EMPTYOPEN add contract_no VARCHAR2(32)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 D_EMPTYOPEN.contract_no 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column D_EMPTYOPEN.contract_no
      is ''合同编号''
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000012402 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'D_IMPORT_EQUIPFILE' AND U.COLUMN_NAME='IMEI';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table D_IMPORT_EQUIPFILE add imei VARCHAR2(32)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 D_IMPORT_EQUIPFILE.imei 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'D_IMPORT_EQUIPFILE' AND U.COLUMN_NAME='MEID';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table D_IMPORT_EQUIPFILE add meid VARCHAR2(32)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 D_IMPORT_EQUIPFILE.meid 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column D_IMPORT_EQUIPFILE.imei
      is ''国际移动设备识别码，与MEID字段，至少其中一个必填''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_IMPORT_EQUIPFILE.meid
      is ''移动设备识别码，与IMEI字段，至少其中一个必填''
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000012468 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'D_EMPTYOPEN' AND U.COLUMN_NAME='LATEST_CHK_DATE';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table D_EMPTYOPEN add latest_chk_date DATE
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 D_EMPTYOPEN.latest_chk_date 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column D_EMPTYOPEN.latest_chk_date
      is ''检定日期''
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000012471 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'D_HANDHELD_DEVICE' AND U.COLUMN_NAME='LATEST_CHK_DATE';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table D_HANDHELD_DEVICE add latest_chk_date DATE
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 D_HANDHELD_DEVICE.latest_chk_date 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column D_HANDHELD_DEVICE.latest_chk_date
      is ''检定日期''
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000012498 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'T_DETECT_HANDHELD_RSLT' AND U.COLUMN_NAME='EQUIP_CATEG';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table T_DETECT_HANDHELD_RSLT add equip_categ VARCHAR2(8)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 T_DETECT_HANDHELD_RSLT.equip_categ 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column T_DETECT_HANDHELD_RSLT.equip_categ
      is ''设备类别''
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000012499 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'T_DETECT_OPEN_RSLT' AND U.COLUMN_NAME='ENTER_TYPE';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table T_DETECT_OPEN_RSLT add enter_type VARCHAR2(8) default ''01''
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 T_DETECT_OPEN_RSLT.enter_type 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column T_DETECT_OPEN_RSLT.enter_type
      is ''录入类型''
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000012654 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'D_HANDHELD_DEVICE' AND U.COLUMN_NAME='SORT_CODE';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table D_HANDHELD_DEVICE add sort_code VARCHAR2(8)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 D_HANDHELD_DEVICE.sort_code 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column D_HANDHELD_DEVICE.sort_code
      is ''类别''
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000012664 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'D_EMPTYOPEN' AND U.COLUMN_NAME='WIRING_MODE';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table D_EMPTYOPEN add wiring_mode VARCHAR2(8)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 D_EMPTYOPEN.wiring_mode 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column D_EMPTYOPEN.wiring_mode
      is ''接线方式，参考VW_WIRING_MODE''
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000012677 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'C_ARRIVE_OTHERDEV_PARA' AND U.COLUMN_NAME='WIRING_MODE';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table C_ARRIVE_OTHERDEV_PARA add wiring_mode VARCHAR2(8)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 C_ARRIVE_OTHERDEV_PARA.wiring_mode 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column C_ARRIVE_OTHERDEV_PARA.wiring_mode
      is ''接线方式，参考VW_WIRING_MODE''
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000012737 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_INDEXES U WHERE u.INDEX_NAME = 'IDX_D_EQUIP_PICK_EQUIP_ID';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      create index IDX_D_EQUIP_PICK_EQUIP_ID on D_EQUIP_PICK (EQUIP_ID)
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
      dbms_output.put_line('脚本已跳过，因为 IDX_D_EQUIP_PICK_EQUIP_ID 已存在。');
    END IF;
END;
/
prompt
prompt 正在处理纪录编号为 8200000000012746 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_INDEXES U WHERE u.INDEX_NAME = 'IDX_D_EQUIP_OPERATOR_NO';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      create index IDX_D_EQUIP_OPERATOR_NO on D_EQUIP_PICK (OPERATOR_NO)
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
      dbms_output.put_line('脚本已跳过，因为 IDX_D_EQUIP_OPERATOR_NO 已存在。');
    END IF;
END;
/

prompt
prompt 正在处理纪录编号为 8200000000012805 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    EXECUTE IMMEDIATE
    '
      comment on column F_METER_COMPONENT.component_category
      is ''元器件类别智能电能表元器件包括：电解电容器、压敏电阻器、电阻器、光电耦合器、晶体谐振器、瞬变二极管、电池、负荷开关、片式电容器、液晶显示器、RS485芯片、时钟芯片、微控制器、计量芯片、电流互感器，共15种 VW_COMPONENT_CATEGORY''
    ';
END;
/

prompt
prompt 正在处理纪录编号为 8200000000012831 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    EXECUTE IMMEDIATE
    '
      comment on column T_DETECT_MET_RSLT.audit_person
      is ''核验人员''
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000012839 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'T_DETECT_MET_RSLT' AND U.COLUMN_NAME='APPR_PERSON';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table T_DETECT_MET_RSLT add appr_person VARCHAR2(256)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 T_DETECT_MET_RSLT.appr_person 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column T_DETECT_MET_RSLT.appr_person
      is ''审核人员''
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000012857 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Tables U WHERE U.TABLE_NAME = 'SUC_SUP_PROGRAM';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
        create table SUC_SUP_PROGRAM
        (
        sup_program_id NUMBER(16) not null,
        start_ym NUMBER(16),
        end_ym NUMBER(16),
        equip_code VARCHAR2(32),
        pro_mon VARCHAR2(8),
        ndverif_num NUMBER(8),
        quailfi_num NUMBER(8),
        arrive_num NUMBER(8),
        arrive_verify_num NUMBER(8),
        verif_num NUMBER(8),
        ot_reverify_num NUMBER(8),
        distribu_num NUMBER(8),
        sup_auditor VARCHAR2(16),
        opera_auditor VARCHAR2(16),
        create_no VARCHAR2(16),
        create_date DATE
        )
        tablespace MPAC_U
        pctfree 10
        initrans 1
        maxtrans 255
        storage
        (
        initial 256K
        next 1M
        minextents 1
        maxextents unlimited
        )
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 SUC_SUP_PROGRAM 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table SUC_SUP_PROGRAM
      is ''供应方案''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SUC_SUP_PROGRAM.SUP_PROGRAM_ID
      is ''方案标识''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SUC_SUP_PROGRAM.START_YM
      is ''起始年月''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SUC_SUP_PROGRAM.END_YM
      is ''结束年月''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SUC_SUP_PROGRAM.EQUIP_CODE
      is ''设备码''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SUC_SUP_PROGRAM.PRO_MON
      is ''方案月份''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SUC_SUP_PROGRAM.NDVERIF_NUM
      is ''待检数''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SUC_SUP_PROGRAM.QUAILFI_NUM
      is ''合格数''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SUC_SUP_PROGRAM.ARRIVE_NUM
      is ''到货数''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SUC_SUP_PROGRAM.ARRIVE_VERIFY_NUM
      is ''到货检定数''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SUC_SUP_PROGRAM.VERIF_NUM
      is ''检定数''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SUC_SUP_PROGRAM.OT_REVERIFY_NUM
      is ''超期复检数''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SUC_SUP_PROGRAM.DISTRIBU_NUM
      is ''配送数''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SUC_SUP_PROGRAM.SUP_AUDITOR
      is ''物流供应审核人''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SUC_SUP_PROGRAM.OPERA_AUDITOR
      is ''生产运行审核人''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SUC_SUP_PROGRAM.CREATE_NO
      is ''创建人''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SUC_SUP_PROGRAM.CREATE_DATE
      is ''创建日期''
    ';
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_INDEXES U WHERE u.INDEX_NAME = 'PK_SUC_SUP_PROGRAM';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table SUC_SUP_PROGRAM
      add constraint PK_SUC_SUP_PROGRAM primary key (SUP_PROGRAM_ID)
      using index
      tablespace MPAC_U_IDX
      pctfree 10
      initrans 2
      maxtrans 255
      storage
      (
      initial 64K
      next 1M
      minextents 1
      maxextents unlimited
      )
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 PK_SUC_SUP_PROGRAM 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Sequences U WHERE u.sequence_name = 'SEQ_SUC_SUP_PROGRAM';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      create sequence SEQ_SUC_SUP_PROGRAM
      minvalue 1
      maxvalue 9999999999999999
      start with 8200000000000000
      increment by 1
      cache 20
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 SEQ_SUC_SUP_PROGRAM 已存在。');
    END IF;
END;
/
prompt
prompt 正在处理纪录编号为 8200000000012895 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Tables U WHERE U.TABLE_NAME = 'SUC_SUP_PROGRAM';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      drop table SUC_SUP_PROGRAM cascade constraints
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 SUC_SUP_PROGRAM 不存在。');
    END IF;
END;
/
prompt
prompt 正在处理纪录编号为 8200000000012899 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Tables U WHERE U.TABLE_NAME = 'SUC_SCHE_FILE';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
        create table SUC_SCHE_FILE
        (
        sup_file_id NUMBER(16) not null,
        sup_file_name VARCHAR2(128),
        start_ym VARCHAR2(16),
        end_ym VARCHAR2(16),
        create_no VARCHAR2(16),
        create_date DATE
        )
        tablespace MPAC_U
        pctfree 10
        initrans 1
        maxtrans 255
        storage
        (
        initial 256K
        next 1M
        minextents 1
        maxextents unlimited
        )
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 SUC_SCHE_FILE 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table SUC_SCHE_FILE
      is ''供应方案文件''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SUC_SCHE_FILE.SUP_FILE_ID
      is ''文件标识''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SUC_SCHE_FILE.SUP_FILE_NAME
      is ''文件名称''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SUC_SCHE_FILE.START_YM
      is ''起始年月''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SUC_SCHE_FILE.END_YM
      is ''结束年月''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SUC_SCHE_FILE.CREATE_NO
      is ''创建人''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SUC_SCHE_FILE.CREATE_DATE
      is ''创建日期''
    ';
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_INDEXES U WHERE u.INDEX_NAME = 'PK_SUC_SCHE_FILE';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table SUC_SCHE_FILE
      add constraint PK_SUC_SCHE_FILE primary key (SUP_FILE_ID)
      using index
      tablespace MPAC_U_IDX
      pctfree 10
      initrans 2
      maxtrans 255
      storage
      (
      initial 64K
      next 1M
      minextents 1
      maxextents unlimited
      )
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 PK_SUC_SCHE_FILE 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Sequences U WHERE u.sequence_name = 'SEQ_SUC_SCHE_FILE';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      create sequence SEQ_SUC_SCHE_FILE
      minvalue 1
      maxvalue 9999999999999999
      start with 8200000000000000
      increment by 1
      cache 20
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 SEQ_SUC_SCHE_FILE 已存在。');
    END IF;
END;
/
prompt
prompt 正在处理纪录编号为 8200000000012903 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Tables U WHERE U.TABLE_NAME = 'SUC_SCHEDET';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
        create table SUC_SCHEDET
        (
        sup_schedet_id NUMBER(16) not null,
        sup_sche_id NUMBER(16),
        equip_code VARCHAR2(32),
        sche_mon VARCHAR2(8),
        veri_pre_qty NUMBER(8),
        qua_qty NUMBER(8),
        arr_qty NUMBER(8),
        arr_veri_qty NUMBER(8),
        veri_qty NUMBER(8),
        veri_over_qty NUMBER(8),
        dis_qty NUMBER(8),
        create_no VARCHAR2(16),
        create_date DATE
        )
        tablespace MPAC_U
        pctfree 10
        initrans 1
        maxtrans 255
        storage
        (
        initial 256K
        next 1M
        minextents 1
        maxextents unlimited
        )
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 SUC_SCHEDET 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table SUC_SCHEDET
      is ''供应方案明细''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SUC_SCHEDET.SUP_SCHEDET_ID
      is ''方案明细标识''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SUC_SCHEDET.SUP_SCHE_ID
      is ''方案标识''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SUC_SCHEDET.EQUIP_CODE
      is ''设备码''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SUC_SCHEDET.SCHE_MON
      is ''方案月份''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SUC_SCHEDET.veri_PRE_QTY
      is ''待检数''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SUC_SCHEDET.QUA_QTY
      is ''合格数''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SUC_SCHEDET.ARR_QTY
      is ''到货数''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SUC_SCHEDET.ARR_VERI_QTY
      is ''到货检定数''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SUC_SCHEDET.VERI_QTY
      is ''检定数''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SUC_SCHEDET.VERI_OVER_QTY
      is ''超期复检数''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SUC_SCHEDET.DIS_QTY
      is ''配送数''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SUC_SCHEDET.CREATE_NO
      is ''创建人''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SUC_SCHEDET.CREATE_DATE
      is ''创建日期''
    ';
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_INDEXES U WHERE u.INDEX_NAME = 'PK_SUC_SCHEDET';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table SUC_SCHEDET
      add constraint PK_SUC_SCHEDET primary key (SUP_SCHEDET_ID)
      using index
      tablespace MPAC_U_IDX
      pctfree 10
      initrans 2
      maxtrans 255
      storage
      (
      initial 64K
      next 1M
      minextents 1
      maxextents unlimited
      )
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 PK_SUC_SCHEDET 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Sequences U WHERE u.sequence_name = 'SEQ_SUC_SCHEDET';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      create sequence SEQ_SUC_SCHEDET
      minvalue 1
      maxvalue 9999999999999999
      start with 8200000000000000
      increment by 1
      cache 20
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 SEQ_SUC_SCHEDET 已存在。');
    END IF;
END;
/
prompt
prompt 正在处理纪录编号为 8200000000012906 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Tables U WHERE U.TABLE_NAME = 'SUC_ANA_FILE';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
        create table SUC_ANA_FILE
        (
        sup_file_id NUMBER(16) not null,
        sup_file_name VARCHAR2(128),
        ana_ym VARCHAR2(16),
        create_no VARCHAR2(16),
        create_date DATE
        )
        tablespace MPAC_U
        pctfree 10
        initrans 1
        maxtrans 255
        storage
        (
        initial 256K
        next 1M
        minextents 1
        maxextents unlimited
        )
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 SUC_ANA_FILE 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table SUC_ANA_FILE
      is ''供需分析文件''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SUC_ANA_FILE.SUP_FILE_ID
      is ''文件标识''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SUC_ANA_FILE.SUP_FILE_NAME
      is ''文件名称''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SUC_ANA_FILE.ANA_YM
      is ''分析年月''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SUC_ANA_FILE.CREATE_NO
      is ''创建人''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SUC_ANA_FILE.CREATE_DATE
      is ''创建日期''
    ';
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_INDEXES U WHERE u.INDEX_NAME = 'PK_SUC_ANA_FILE';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table SUC_ANA_FILE
      add constraint PK_SUC_ANA_FILE primary key (SUP_FILE_ID)
      using index
      tablespace MPAC_U_IDX
      pctfree 10
      initrans 2
      maxtrans 255
      storage
      (
      initial 64K
      next 1M
      minextents 1
      maxextents unlimited
      )
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 PK_SUC_ANA_FILE 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Sequences U WHERE u.sequence_name = 'SEQ_SUC_ANA_FILE';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      create sequence SEQ_SUC_ANA_FILE
      minvalue 1
      maxvalue 9999999999999999
      start with 8200000000000000
      increment by 1
      cache 20
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 SEQ_SUC_ANA_FILE 已存在。');
    END IF;
END;
/
prompt
prompt 正在处理纪录编号为 8200000000012908 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Tables U WHERE U.TABLE_NAME = 'SUC_ANA_DET';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
        create table SUC_ANA_DET
        (
        sup_anadet_id NUMBER(16) not null,
        sup_ana_id VARCHAR2(16),
        equip_categ VARCHAR2(8),
        equip_code VARCHAR2(32),
        fst_qua_qty NUMBER(8),
        fst_quaover_qty NUMBER(8),
        fst_veri_qty NUMBER(8),
        fst_veriover_qty NUMBER(8),
        fst_purchas_qty NUMBER(8),
        fst_sum_qty NUMBER(8),
        sed_qua_qty NUMBER(8),
        sed_lead_qty NUMBER(8),
        sed_sum_qty NUMBER(8),
        mat_onway_qty NUMBER(8),
        mat_arrplan_date DATE,
        mat_sche_qty NUMBER(8),
        mat_bid_qty NUMBER(8),
        mat_pro_qty NUMBER(8),
        mat_promat_qty NUMBER(8),
        use_ret_qty NUMBER(8),
        use_unqua_qty NUMBER(8),
        use_repair_qty NUMBER(8),
        for_qty1 NUMBER(8),
        for_qty1_cor NUMBER(8),
        for_qty2 NUMBER(8),
        for_qty3 NUMBER(8),
        for_qty4 NUMBER(8),
        for_qty5 NUMBER(8),
        for_qty6 NUMBER(8),
        for_qty7 NUMBER(8),
        for_qty8 NUMBER(8),
        for_qty9 NUMBER(8),
        for_qty10 NUMBER(8),
        for_qty11 NUMBER(8),
        for_qty12 NUMBER(8),
        for_sum_qty NUMBER(8),
        safe_gap_qty NUMBER(8),
        safe_qty NUMBER(8),
        qua_sati VARCHAR2(8),
        qua_margin_qty NUMBER(8),
        qua_satify_mon NUMBER(8),
        qua_disru VARCHAR2(8),
        veri_satisfy VARCHAR2(8),
        veri_margin_qty NUMBER(8),
        veri_satify_mon NUMBER(8),
        veri_disru VARCHAR2(8),
        veri_monreq_qty NUMBER(8),
        veri_mon_qty NUMBER(8),
        onway_satisfy VARCHAR2(8),
        onway_margin_qty NUMBER(8),
        onway_arrive_qty NUMBER(8),
        onway_sati_mon NUMBER(8),
        onway_disru VARCHAR2(8),
        onway_monreq_qty NUMBER(8),
        onway_mon_qty NUMBER(8),
        proto_sati VARCHAR2(8),
        proto_monsati NUMBER(8),
        proto_monsati_corr NUMBER(8),
        proto_maxmat_qty NUMBER(8),
        proto_monmat_qty NUMBER(8),
        proto_margin NUMBER(8),
        proto_mater_name VARCHAR2(16),
        proto_sati_mon NUMBER(8),
        proto_disru_qty NUMBER(8),
        proto_disru VARCHAR2(8),
        create_no VARCHAR2(16),
        create_date DATE
        )
        tablespace MPAC_U
        pctfree 10
        initrans 1
        maxtrans 255
        storage
        (
        initial 256K
        next 1M
        minextents 1
        maxextents unlimited
        )
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 SUC_ANA_DET 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table SUC_ANA_DET
      is ''供需分析明细''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SUC_ANA_DET.SUP_ANADET_ID
      is ''供需分析明细标识''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SUC_ANA_DET.SUP_ANA_ID
      is ''供需分析标识''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SUC_ANA_DET.EQUIP_CATEG
      is ''设备类别''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SUC_ANA_DET.EQUIP_CODE
      is ''设备码''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SUC_ANA_DET.FST_QUA_QTY
      is ''一级库合格在库数''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SUC_ANA_DET.FST_QUAOVER_QTY
      is ''一级库合格在库超期数''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SUC_ANA_DET.FST_VERI_QTY
      is ''一级库待检定数''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SUC_ANA_DET.FST_VERIOVER_QTY
      is ''一级库待检定超期数''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SUC_ANA_DET.FST_PURCHAS_QTY
      is ''一级库新购数''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SUC_ANA_DET.FST_SUM_QTY
      is ''一级库库存总数''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SUC_ANA_DET.SED_QUA_QTY
      is ''二级库合格在库数''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SUC_ANA_DET.SED_LEAD_QTY
      is ''二级库领出待装''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SUC_ANA_DET.SED_SUM_QTY
      is ''二级库库存总数''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SUC_ANA_DET.MAT_ONWAY_QTY
      is ''在途数''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SUC_ANA_DET.MAT_ARRPLAN_DATE
      is ''到货计划时间''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SUC_ANA_DET.MAT_SCHE_QTY
      is ''可排产合计''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SUC_ANA_DET.MAT_BID_QTY
      is ''中标数合计''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SUC_ANA_DET.MAT_PRO_QTY
      is ''协议库存剩余数合计''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SUC_ANA_DET.MAT_PROMAT_QTY
      is ''协议库存可匹配数合计''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SUC_ANA_DET.USE_RET_QTY
      is ''待返厂数''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SUC_ANA_DET.USE_UNQUA_QTY
      is ''不合格数''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SUC_ANA_DET.USE_REPAIR_QTY
      is ''返修在库数''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SUC_ANA_DET.FOR_QTY1
      is ''需求预测值1''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SUC_ANA_DET.FOR_QTY1_COR
      is ''需求预测修正值''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SUC_ANA_DET.FOR_QTY2
      is ''需求预测值2''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SUC_ANA_DET.FOR_QTY3
      is ''需求预测值3''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SUC_ANA_DET.FOR_QTY4
      is ''需求预测值4''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SUC_ANA_DET.FOR_QTY5
      is ''需求预测值5''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SUC_ANA_DET.FOR_QTY6
      is ''需求预测值6''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SUC_ANA_DET.FOR_QTY7
      is ''需求预测值7''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SUC_ANA_DET.FOR_QTY8
      is ''需求预测值8''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SUC_ANA_DET.FOR_QTY9
      is ''需求预测值9''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SUC_ANA_DET.FOR_QTY10
      is ''需求预测值10''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SUC_ANA_DET.FOR_QTY11
      is ''需求预测值11''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SUC_ANA_DET.FOR_QTY12
      is ''需求预测值12''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SUC_ANA_DET.FOR_SUM_QTY
      is ''年度需求汇总''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SUC_ANA_DET.SAFE_GAP_QTY
      is ''安全库存缺口''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SUC_ANA_DET.SAFE_QTY
      is ''安全库存数''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SUC_ANA_DET.QUA_SATI
      is ''合格库存是否满足''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SUC_ANA_DET.QUA_MARGIN_QTY
      is ''合格库存裕度''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SUC_ANA_DET.QUA_SATIFY_MON
      is ''合格库存保障月数''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SUC_ANA_DET.QUA_DISRU
      is ''是否出现合格库存供应链断裂''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SUC_ANA_DET.VERI_SATISFY
      is ''待检库存是否满足''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SUC_ANA_DET.VERI_MARGIN_QTY
      is ''待检库存裕度''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SUC_ANA_DET.VERI_SATIFY_MON
      is ''待检库存保障月数''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SUC_ANA_DET.VERI_DISRU
      is ''是否出现待检库存供应链断裂''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SUC_ANA_DET.VERI_MONREQ_QTY
      is ''本月需检定数量''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SUC_ANA_DET.VERI_MON_QTY
      is ''本月可检定数量''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SUC_ANA_DET.ONWAY_SATISFY
      is ''在途到货是否满足''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SUC_ANA_DET.ONWAY_MARGIN_QTY
      is ''在途到货裕度''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SUC_ANA_DET.ONWAY_ARRIVE_QTY
      is ''在途到货数量''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SUC_ANA_DET.ONWAY_SATI_MON
      is ''在途到货保障月数''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SUC_ANA_DET.ONWAY_DISRU
      is ''是否出现在途到货供应链断裂''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SUC_ANA_DET.ONWAY_MONREQ_QTY
      is ''本月需到货数量''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SUC_ANA_DET.ONWAY_MON_QTY
      is ''本月可到货数量''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SUC_ANA_DET.PROTO_SATI
      is ''协议库存是否满足安全库存''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SUC_ANA_DET.PROTO_MONSATI
      is ''本月需匹配协议库存''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SUC_ANA_DET.PROTO_MONSATI_CORR
      is ''本月需匹配协议库存修正值''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SUC_ANA_DET.PROTO_MAXMAT_QTY
      is ''按最大保障月数的极限需匹配数量''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SUC_ANA_DET.PROTO_MONMAT_QTY
      is ''本月可匹配协议库存''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SUC_ANA_DET.PROTO_MARGIN
      is ''协议库存裕度''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SUC_ANA_DET.PROTO_MATER_NAME
      is ''物料名称''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SUC_ANA_DET.PROTO_SATI_MON
      is ''协议库保障月数''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SUC_ANA_DET.PROTO_DISRU_QTY
      is ''协议库存断裂数量''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SUC_ANA_DET.PROTO_DISRU
      is ''是否会出现供应链断裂''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SUC_ANA_DET.CREATE_NO
      is ''创建人''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column SUC_ANA_DET.CREATE_DATE
      is ''创建日期''
    ';
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_INDEXES U WHERE u.INDEX_NAME = 'PK_SUC_ANA_DET';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table SUC_ANA_DET
      add constraint PK_SUC_ANA_DET primary key (SUP_ANADET_ID)
      using index
      tablespace MPAC_U_IDX
      pctfree 10
      initrans 2
      maxtrans 255
      storage
      (
      initial 64K
      next 1M
      minextents 1
      maxextents unlimited
      )
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 PK_SUC_ANA_DET 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Sequences U WHERE u.sequence_name = 'SEQ_SUC_ANA_DET';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      create sequence SEQ_SUC_ANA_DET
      minvalue 1
      maxvalue 9999999999999999
      start with 8200000000000000
      increment by 1
      cache 20
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 SEQ_SUC_ANA_DET 已存在。');
    END IF;
END;
/
prompt
prompt 正在处理纪录编号为 8200000000012932 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'D_COMMUNICATION_MODULE' AND U.COLUMN_NAME='MADE_NO';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table D_COMMUNICATION_MODULE add made_no VARCHAR2(32)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 D_COMMUNICATION_MODULE.made_no 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column D_COMMUNICATION_MODULE.made_no
      is ''厂家印制的编号,出厂编号''
    ';
END;
/

prompt
prompt 正在处理纪录编号为 8200000000013213 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'B_IT_PARA_INFO' AND U.COLUMN_NAME='RESISTANCE_STRUCTURE';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table B_IT_PARA_INFO add resistance_structure VARCHAR2(8)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 B_IT_PARA_INFO.resistance_structure 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column B_IT_PARA_INFO.resistance_structure
      is ''电阻结构vw_shunt_resistance_structure''
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000013345 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Tables U WHERE U.TABLE_NAME = 'B_VERIFICATION_TIME_PARAM';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
        create table B_VERIFICATION_TIME_PARAM
        (
        time_param_id NUMBER(16) not null,
        equip_categ VARCHAR2(8),
        detect_type VARCHAR2(8),
        detect_mode VARCHAR2(8),
        is_auto_gene_endtime VARCHAR2(8),
        max_detect_time VARCHAR2(8) default 7
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
      dbms_output.put_line('脚本已跳过，因为 B_VERIFICATION_TIME_PARAM 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table B_VERIFICATION_TIME_PARAM
      is ''检定任务配置表''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column B_VERIFICATION_TIME_PARAM.TIME_PARAM_ID
      is ''表ID 包含设备类别，检定类别，检定方式，检定要求最大时长，是否自动生成结束时间''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column B_VERIFICATION_TIME_PARAM.EQUIP_CATEG
      is ''设备类别 视图【VW_EQUIP_CATEG】''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column B_VERIFICATION_TIME_PARAM.DETECT_TYPE
      is ''检定类别 视图【VW_DETECT_TYPE】''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column B_VERIFICATION_TIME_PARAM.DETECT_MODE
      is ''检定方式 视图【VW_DETECT_MODE】''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column B_VERIFICATION_TIME_PARAM.IS_AUTO_GENE_ENDTIME
      is ''是否自动生成结束时间 00:否，01:是  视图【VW_AUTO_GENE_ENDTIME】''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column B_VERIFICATION_TIME_PARAM.MAX_DETECT_TIME
      is ''检定最大间隔时间（天）''
    ';
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_INDEXES U WHERE u.INDEX_NAME = 'PK_B_VERIFICATION_TIME_PARAM';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table B_VERIFICATION_TIME_PARAM
      add constraint PK_B_VERIFICATION_TIME_PARAM primary key (TIME_PARAM_ID)
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
      dbms_output.put_line('脚本已跳过，因为 PK_B_VERIFICATION_TIME_PARAM 已存在。');
    END IF;
END;
/
prompt
prompt 正在处理纪录编号为 8200000000013754 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_INDEXES U WHERE u.INDEX_NAME = 'IDX_SEAL_EQUIP_CODE';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      create index IDX_SEAL_EQUIP_CODE on A_SEAL_DOC (EQUIP_CODE)
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
      dbms_output.put_line('脚本已跳过，因为 IDX_SEAL_EQUIP_CODE 已存在。');
    END IF;
END;
/
prompt
prompt 正在处理纪录编号为 8200000000013813 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'T_SAMPLING_MET_RSLT' AND U.COLUMN_NAME='IO_FLAG';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table T_SAMPLING_MET_RSLT add io_flag VARCHAR2(8)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 T_SAMPLING_MET_RSLT.io_flag 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column T_SAMPLING_MET_RSLT.io_flag
      is ''出入库标识（0：入库，1：出库）''
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000013825 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'T_DETECT_MET_RSLT' AND U.COLUMN_NAME='IO_FLAG';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table T_DETECT_MET_RSLT add io_flag VARCHAR2(8)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 T_DETECT_MET_RSLT.io_flag 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column T_DETECT_MET_RSLT.io_flag
      is ''出入库标识（0：入库，1出库）''
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000013823 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Tables U WHERE U.TABLE_NAME = 'D_HPLCID_ALARM';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
        create table D_HPLCID_ALARM
        (
        info_id NUMBER(16),
        chip_id VARCHAR2(50),
        alarm_type VARCHAR2(2),
        tmnl_addr VARCHAR2(20),
        chip_model VARCHAR2(30),
        equip_type VARCHAR2(8),
        equip_addr VARCHAR2(20),
        alarm_status VARCHAR2(2),
        store_date DATE,
        op_date DATE
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
      comment on table D_HPLCID_ALARM
      is ''异常HPLC芯片信息表''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_HPLCID_ALARM.INFO_ID
      is ''记录唯一主键。序列SEQ_D_HPLCID_ALARM''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_HPLCID_ALARM.CHIP_ID
      is ''芯片ID号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_HPLCID_ALARM.ALARM_TYPE
      is ''异常类型。01：ID号不合法''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_HPLCID_ALARM.TMNL_ADDR
      is ''终端地址''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_HPLCID_ALARM.CHIP_MODEL
      is ''芯片型号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_HPLCID_ALARM.EQUIP_TYPE
      is ''设备类型。1-抄控器，2-集中器通信单元，3-宽带载波表，4-中继器，5-II型采集器，6-I型采集器''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_HPLCID_ALARM.EQUIP_ADDR
      is ''设备地址''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_HPLCID_ALARM.ALARM_STATUS
      is ''异常状态。01：初始，10：归档，（字段预留）''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_HPLCID_ALARM.STORE_DATE
      is ''异常发现时间''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_HPLCID_ALARM.OP_DATE
      is ''写入时间''
    ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 D_HPLCID_ALARM 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Sequences U WHERE u.sequence_name = 'SEQ_D_HPLCID_ALARM';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      create sequence SEQ_D_HPLCID_ALARM
      minvalue 1
      maxvalue 9999999999999999
      start with 8200000000000000
      increment by 1
      cache 20
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 SEQ_D_HPLCID_ALARM 已存在。');
    END IF;
END;
/
prompt
prompt 正在处理纪录编号为 8200000000013835 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Tables U WHERE U.TABLE_NAME = 'D_MODULE_EQUIP_RELA';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
        create table D_MODULE_EQUIP_RELA
        (
        info_id NUMBER(16) not null,
        comm_module_id NUMBER(16),
        equip_type VARCHAR2(8),
        equip_id NUMBER(16),
        op_date DATE
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
      dbms_output.put_line('脚本已跳过，因为 D_MODULE_EQUIP_RELA 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table D_MODULE_EQUIP_RELA
      is ''在运模块设备关联关系表''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_MODULE_EQUIP_RELA.INFO_ID
      is ''记录唯一主键。序列SEQ_D_MODULE_EQUIP_RELA''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_MODULE_EQUIP_RELA.COMM_MODULE_ID
      is ''通信模块唯一标识''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_MODULE_EQUIP_RELA.EQUIP_TYPE
      is ''设备类型。1：终端，2：采集器，3：电能表''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_MODULE_EQUIP_RELA.EQUIP_ID
      is ''设备唯一标识''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_MODULE_EQUIP_RELA.OP_DATE
      is ''写入时间''
    ';
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_INDEXES U WHERE u.INDEX_NAME = 'PK_D_MODULE_EQUIP_RELA';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table D_MODULE_EQUIP_RELA
      add constraint PK_D_MODULE_EQUIP_RELA primary key (INFO_ID)
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
      dbms_output.put_line('脚本已跳过，因为 PK_D_MODULE_EQUIP_RELA 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Sequences U WHERE u.sequence_name = 'SEQ_D_MODULE_EQUIP_RELA';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      create sequence SEQ_D_MODULE_EQUIP_RELA
      minvalue 1
      maxvalue 9999999999999999
      start with 8200000000000000
      increment by 1
      cache 20
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 SEQ_D_MODULE_EQUIP_RELA 已存在。');
    END IF;
END;
/
prompt
prompt 正在处理纪录编号为 8200000000013843 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    EXECUTE IMMEDIATE
    '
      create or replace synonym CJJK_HPLCID_ALARM
      for CJ.HPLCID_ALARM@CJ
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000013844 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    EXECUTE IMMEDIATE
    '
      create or replace synonym CJJK_MODULE_EQUIP_RELA
      for CJ.MODULE_EQUIP_RELA@CJ
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000013959 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'T_DETECT_CONC_PROC' AND U.COLUMN_NAME='IO_FLAG';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table T_DETECT_CONC_PROC add io_flag VARCHAR2(8)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 T_DETECT_CONC_PROC.io_flag 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column T_DETECT_CONC_PROC.io_flag
      is ''出入库标识（0：入库，1出库）''
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000013979 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'F_REPICK_RSLT' AND U.COLUMN_NAME='SORTING_METER_NO';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table F_REPICK_RSLT add sorting_meter_no NUMBER(3)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 F_REPICK_RSLT.sorting_meter_no 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'F_REPICK_RSLT' AND U.COLUMN_NAME='TEST_COUNT';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table F_REPICK_RSLT add test_count NUMBER(4)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 F_REPICK_RSLT.test_count 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'F_REPICK_RSLT' AND U.COLUMN_NAME='FAULTS_CODE_AUTO';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table F_REPICK_RSLT add faults_code_auto VARCHAR2(2000)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 F_REPICK_RSLT.faults_code_auto 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'F_REPICK_RSLT' AND U.COLUMN_NAME='RECORD_CHECK';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table F_REPICK_RSLT add record_check VARCHAR2(128)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 F_REPICK_RSLT.record_check 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column F_REPICK_RSLT.sorting_meter_no
      is ''分拣表位编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_REPICK_RSLT.test_count
      is ''分拣次数，从1开始''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_REPICK_RSLT.faults_code_auto
      is ''分拣故障现象 按照竖线“|”分割。该字段存储的是分拣自动检测的故障现象，不包括再最后人工勾选的故障现象''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_REPICK_RSLT.record_check
      is ''处置结论记录，用于校验该条数据是否有效''
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000013980 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'F_REPICK_FAULT' AND U.COLUMN_NAME='TEST_COUNT';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table F_REPICK_FAULT add test_count NUMBER(4)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 F_REPICK_FAULT.test_count 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column F_REPICK_FAULT.test_count
      is ''分拣次数，从1开始''
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000013981 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'F_D_REPICK_CONCLUSION' AND U.COLUMN_NAME='TEST_COUNT';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table F_D_REPICK_CONCLUSION add test_count NUMBER(4)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 F_D_REPICK_CONCLUSION.test_count 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column F_D_REPICK_CONCLUSION.test_count
      is ''分拣次数，从1开始''
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000013982 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'F_D_APPERANCE' AND U.COLUMN_NAME='TEST_COUNT';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table F_D_APPERANCE add test_count NUMBER(4)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 F_D_APPERANCE.test_count 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column F_D_APPERANCE.test_count
      is ''分拣次数，从1开始''
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000013983 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'F_D_POWER_ON' AND U.COLUMN_NAME='TEST_COUNT';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table F_D_POWER_ON add test_count NUMBER(4)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 F_D_POWER_ON.test_count 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column F_D_POWER_ON.test_count
      is ''分拣次数，从1开始''
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000013984 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'F_D_READING_SHOT' AND U.COLUMN_NAME='TEST_COUNT';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table F_D_READING_SHOT add test_count NUMBER(4)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 F_D_READING_SHOT.test_count 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column F_D_READING_SHOT.test_count
      is ''分拣次数，从1开始''
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000013985 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'F_D_BASIC_ERR' AND U.COLUMN_NAME='TEST_COUNT';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table F_D_BASIC_ERR add test_count NUMBER(4)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 F_D_BASIC_ERR.test_count 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column F_D_BASIC_ERR.test_count
      is ''分拣次数，从1开始''
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000013986 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'F_D_BASIC_ERR' AND U.COLUMN_NAME='ERR_VALUE';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table F_D_BASIC_ERR modify ERR_VALUE VARCHAR2(32)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 F_D_BASIC_ERR.ERR_VALUE 不存在。');
    END IF;
END;
/
prompt
prompt 正在处理纪录编号为 8200000000013987 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'F_D_CONST_TEST' AND U.COLUMN_NAME='TEST_COUNT';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table F_D_CONST_TEST add test_count NUMBER(4)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 F_D_CONST_TEST.test_count 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column F_D_CONST_TEST.test_count
      is ''分拣次数，从1开始''
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000013988 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'F_D_CONST_TEST' AND U.COLUMN_NAME='ERR_VALUE';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table F_D_CONST_TEST modify ERR_VALUE VARCHAR2(32)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 F_D_CONST_TEST.ERR_VALUE 不存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'F_D_CONST_TEST' AND U.COLUMN_NAME='STD_ENERGY';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table F_D_CONST_TEST modify STD_ENERGY VARCHAR2(32)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 F_D_CONST_TEST.STD_ENERGY 不存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'F_D_CONST_TEST' AND U.COLUMN_NAME='SAMPLE_ENERGY';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table F_D_CONST_TEST modify SAMPLE_ENERGY VARCHAR2(32)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 F_D_CONST_TEST.SAMPLE_ENERGY 不存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'F_D_CONST_TEST' AND U.COLUMN_NAME='SAMPLE_CONST';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table F_D_CONST_TEST modify SAMPLE_CONST VARCHAR2(32)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 F_D_CONST_TEST.SAMPLE_CONST 不存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'F_D_CONST_TEST' AND U.COLUMN_NAME='SAMPLE_PULSE';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table F_D_CONST_TEST modify SAMPLE_PULSE VARCHAR2(32)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 F_D_CONST_TEST.SAMPLE_PULSE 不存在。');
    END IF;
END;
/
prompt
prompt 正在处理纪录编号为 8200000000013994 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'F_D_INDICATION' AND U.COLUMN_NAME='TEST_COUNT';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table F_D_INDICATION add test_count NUMBER(4)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 F_D_INDICATION.test_count 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column F_D_INDICATION.test_count
      is ''分拣次数，从1开始''
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000013995 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'F_D_INDICATION' AND U.COLUMN_NAME='P_ERR_VALUE';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table F_D_INDICATION modify P_ERR_VALUE VARCHAR2(32)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 F_D_INDICATION.P_ERR_VALUE 不存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'F_D_INDICATION' AND U.COLUMN_NAME='P_SAMPLE_VALUE';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table F_D_INDICATION modify P_SAMPLE_VALUE VARCHAR2(32)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 F_D_INDICATION.P_SAMPLE_VALUE 不存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'F_D_INDICATION' AND U.COLUMN_NAME='PA_ERR_VALUE';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table F_D_INDICATION modify PA_ERR_VALUE VARCHAR2(32)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 F_D_INDICATION.PA_ERR_VALUE 不存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'F_D_INDICATION' AND U.COLUMN_NAME='PA_SAMPLE_VALUE';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table F_D_INDICATION modify PA_SAMPLE_VALUE VARCHAR2(32)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 F_D_INDICATION.PA_SAMPLE_VALUE 不存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'F_D_INDICATION' AND U.COLUMN_NAME='PB_ERR_VALUE';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table F_D_INDICATION modify PB_ERR_VALUE VARCHAR2(32)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 F_D_INDICATION.PB_ERR_VALUE 不存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'F_D_INDICATION' AND U.COLUMN_NAME='PB_SAMPLE_VALUE';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table F_D_INDICATION modify PB_SAMPLE_VALUE VARCHAR2(32)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 F_D_INDICATION.PB_SAMPLE_VALUE 不存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'F_D_INDICATION' AND U.COLUMN_NAME='PC_ERR_VALUE';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table F_D_INDICATION modify PC_ERR_VALUE VARCHAR2(32)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 F_D_INDICATION.PC_ERR_VALUE 不存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'F_D_INDICATION' AND U.COLUMN_NAME='PC_SAMPLE_VALUE';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table F_D_INDICATION modify PC_SAMPLE_VALUE VARCHAR2(32)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 F_D_INDICATION.PC_SAMPLE_VALUE 不存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column F_D_INDICATION.p_err_value
      is ''合相误差值(%)''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_INDICATION.p_sample_value
      is ''合相被检表值''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_INDICATION.pa_err_value
      is ''A相误差值(%)''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_INDICATION.pa_sample_value
      is ''A相被检表值''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_INDICATION.pb_err_value
      is ''B相误差值(%)''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_INDICATION.pb_sample_value
      is ''B相被检表值''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_INDICATION.pc_err_value
      is ''C相误差值(%)''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_INDICATION.pc_sample_value
      is ''C相被检表值''
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000013998 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'F_D_START' AND U.COLUMN_NAME='TEST_COUNT';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table F_D_START add test_count NUMBER(4)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 F_D_START.test_count 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column F_D_START.test_count
      is ''分拣次数，从1开始''
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000014000 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'F_D_START' AND U.COLUMN_NAME='TIME_COST';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table F_D_START modify time_cost VARCHAR2(32)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 F_D_START.TIME_COST 不存在。');
    END IF;
END;
/
prompt
prompt 正在处理纪录编号为 8200000000014001 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'F_D_READING_COMBINE' AND U.COLUMN_NAME='TEST_COUNT';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table F_D_READING_COMBINE add test_count NUMBER(4)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 F_D_READING_COMBINE.test_count 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column F_D_READING_COMBINE.test_count
      is ''分拣次数，从1开始''
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000014002 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'F_D_READING_COMBINE' AND U.COLUMN_NAME='T_ENERGY';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table F_D_READING_COMBINE modify t_energy VARCHAR2(32)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 F_D_READING_COMBINE.T_ENERGY 不存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'F_D_READING_COMBINE' AND U.COLUMN_NAME='T1_ENERGY';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table F_D_READING_COMBINE modify t1_energy VARCHAR2(32)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 F_D_READING_COMBINE.T1_ENERGY 不存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'F_D_READING_COMBINE' AND U.COLUMN_NAME='T2_ENERGY';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table F_D_READING_COMBINE modify t2_energy VARCHAR2(32)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 F_D_READING_COMBINE.T2_ENERGY 不存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'F_D_READING_COMBINE' AND U.COLUMN_NAME='T3_ENERGY';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table F_D_READING_COMBINE modify t3_energy VARCHAR2(32)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 F_D_READING_COMBINE.T3_ENERGY 不存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'F_D_READING_COMBINE' AND U.COLUMN_NAME='T4_ENERGY';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table F_D_READING_COMBINE modify t4_energy VARCHAR2(32)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 F_D_READING_COMBINE.T4_ENERGY 不存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'F_D_READING_COMBINE' AND U.COLUMN_NAME='ERR_VALUE';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table F_D_READING_COMBINE modify err_value VARCHAR2(32)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 F_D_READING_COMBINE.ERR_VALUE 不存在。');
    END IF;
END;
/
prompt
prompt 正在处理纪录编号为 8200000000014003 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'F_D_CLOCK_ERR' AND U.COLUMN_NAME='TEST_COUNT';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table F_D_CLOCK_ERR add test_count NUMBER(4)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 F_D_CLOCK_ERR.test_count 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column F_D_CLOCK_ERR.test_count
      is ''分拣次数，从1开始''
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000014004 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'F_D_CLOCK_ERR' AND U.COLUMN_NAME='ERR_VALUE';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table F_D_CLOCK_ERR modify err_value VARCHAR2(32)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 F_D_CLOCK_ERR.ERR_VALUE 不存在。');
    END IF;
END;
/
prompt
prompt 正在处理纪录编号为 8200000000014007 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'F_D_DALIY_ERR' AND U.COLUMN_NAME='TEST_COUNT';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table F_D_DALIY_ERR add test_count NUMBER(4)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 F_D_DALIY_ERR.test_count 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column F_D_DALIY_ERR.test_count
      is ''分拣次数，从1开始''
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000014008 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'F_D_DALIY_ERR' AND U.COLUMN_NAME='ERR_VALUE';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table F_D_DALIY_ERR modify err_value VARCHAR2(32)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 F_D_DALIY_ERR.ERR_VALUE 不存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column F_D_DALIY_ERR.err_value
      is ''秒''
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000014009 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'F_D_DEMAND_ERR' AND U.COLUMN_NAME='TEST_COUNT';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table F_D_DEMAND_ERR add test_count NUMBER(4)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 F_D_DEMAND_ERR.test_count 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column F_D_DEMAND_ERR.test_count
      is ''分拣次数，从1开始''
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000014010 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'F_D_DEMAND_ERR' AND U.COLUMN_NAME='ERR_VALUE';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table F_D_DEMAND_ERR modify err_value VARCHAR2(32)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 F_D_DEMAND_ERR.ERR_VALUE 不存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'F_D_DEMAND_ERR' AND U.COLUMN_NAME='STD_POWER';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table F_D_DEMAND_ERR modify std_power VARCHAR2(32)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 F_D_DEMAND_ERR.STD_POWER 不存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'F_D_DEMAND_ERR' AND U.COLUMN_NAME='DEMAND_VALUE';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table F_D_DEMAND_ERR modify demand_value VARCHAR2(32)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 F_D_DEMAND_ERR.DEMAND_VALUE 不存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'F_D_DEMAND_ERR' AND U.COLUMN_NAME='PERIOD_ERR_VALUE';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table F_D_DEMAND_ERR modify period_err_value VARCHAR2(32)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 F_D_DEMAND_ERR.PERIOD_ERR_VALUE 不存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column F_D_DEMAND_ERR.period_err_value
      is ''预留台体有需量示值误差和周期误差同时做时，产生的周期偏差数据''
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000014014 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'F_D_TARIFF' AND U.COLUMN_NAME='TEST_COUNT';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table F_D_TARIFF add test_count NUMBER(4)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 F_D_TARIFF.test_count 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column F_D_TARIFF.test_count
      is ''分拣次数，从1开始''
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000014015 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'F_D_STORAGE' AND U.COLUMN_NAME='TEST_COUNT';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table F_D_STORAGE add test_count NUMBER(4)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 F_D_STORAGE.test_count 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column F_D_STORAGE.test_count
      is ''分拣次数，从1开始''
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000014016 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'F_D_EVENT' AND U.COLUMN_NAME='TEST_COUNT';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table F_D_EVENT add test_count NUMBER(4)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 F_D_EVENT.test_count 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column F_D_EVENT.test_count
      is ''分拣次数，从1开始''
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000014017 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'F_D_CHARGE' AND U.COLUMN_NAME='CUR_PRICE';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table F_D_CHARGE add cur_price VARCHAR2(32)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 F_D_CHARGE.cur_price 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'F_D_CHARGE' AND U.COLUMN_NAME='TEST_COUNT';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table F_D_CHARGE add test_count NUMBER(4)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 F_D_CHARGE.test_count 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column F_D_CHARGE.cur_price
      is ''当前电价''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_CHARGE.test_count
      is ''分拣次数，从1开始''
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000014020 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'F_D_CHARGE' AND U.COLUMN_NAME='ORIGINAL_CREDIT';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table F_D_CHARGE modify original_credit VARCHAR2(32)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 F_D_CHARGE.ORIGINAL_CREDIT 不存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'F_D_CHARGE' AND U.COLUMN_NAME='B1_PRICE';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table F_D_CHARGE modify b1_price VARCHAR2(32)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 F_D_CHARGE.B1_PRICE 不存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'F_D_CHARGE' AND U.COLUMN_NAME='ORIGINAL_T_ENERGY';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table F_D_CHARGE modify original_t_energy VARCHAR2(32)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 F_D_CHARGE.ORIGINAL_T_ENERGY 不存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'F_D_CHARGE' AND U.COLUMN_NAME='ORIGINAL_T1_ENERGY';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table F_D_CHARGE modify original_t1_energy VARCHAR2(32)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 F_D_CHARGE.ORIGINAL_T1_ENERGY 不存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'F_D_CHARGE' AND U.COLUMN_NAME='ORIGINAL_T2_ENERGY';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table F_D_CHARGE modify original_t2_energy VARCHAR2(32)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 F_D_CHARGE.ORIGINAL_T2_ENERGY 不存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'F_D_CHARGE' AND U.COLUMN_NAME='ORIGINAL_T3_ENERGY';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table F_D_CHARGE modify original_t3_energy VARCHAR2(32)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 F_D_CHARGE.ORIGINAL_T3_ENERGY 不存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'F_D_CHARGE' AND U.COLUMN_NAME='ORIGINAL_T4_ENERGY';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table F_D_CHARGE modify original_t4_energy VARCHAR2(32)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 F_D_CHARGE.ORIGINAL_T4_ENERGY 不存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'F_D_CHARGE' AND U.COLUMN_NAME='STOP_CREDIT';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table F_D_CHARGE modify stop_credit VARCHAR2(32)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 F_D_CHARGE.STOP_CREDIT 不存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'F_D_CHARGE' AND U.COLUMN_NAME='STOP_OVERDRAFT';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table F_D_CHARGE modify stop_overdraft VARCHAR2(32)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 F_D_CHARGE.STOP_OVERDRAFT 不存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'F_D_CHARGE' AND U.COLUMN_NAME='STOP_T_ENERGY';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table F_D_CHARGE modify stop_t_energy VARCHAR2(32)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 F_D_CHARGE.STOP_T_ENERGY 不存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'F_D_CHARGE' AND U.COLUMN_NAME='STOP_T1_ENERGY';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table F_D_CHARGE modify stop_t1_energy VARCHAR2(32)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 F_D_CHARGE.STOP_T1_ENERGY 不存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'F_D_CHARGE' AND U.COLUMN_NAME='STOP_T2_ENERGY';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table F_D_CHARGE modify stop_t2_energy VARCHAR2(32)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 F_D_CHARGE.STOP_T2_ENERGY 不存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'F_D_CHARGE' AND U.COLUMN_NAME='STOP_T3_ENERGY';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table F_D_CHARGE modify stop_t3_energy VARCHAR2(32)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 F_D_CHARGE.STOP_T3_ENERGY 不存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'F_D_CHARGE' AND U.COLUMN_NAME='STOP_T4_ENERGY';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table F_D_CHARGE modify stop_t4_energy VARCHAR2(32)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 F_D_CHARGE.STOP_T4_ENERGY 不存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'F_D_CHARGE' AND U.COLUMN_NAME='INCREASE_T_ENERGY';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table F_D_CHARGE modify increase_t_energy VARCHAR2(32)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 F_D_CHARGE.INCREASE_T_ENERGY 不存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'F_D_CHARGE' AND U.COLUMN_NAME='INCREASE_T1_ENERGY';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table F_D_CHARGE modify increase_t1_energy VARCHAR2(32)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 F_D_CHARGE.INCREASE_T1_ENERGY 不存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'F_D_CHARGE' AND U.COLUMN_NAME='INCREASE_T2_ENERGY';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table F_D_CHARGE modify increase_t2_energy VARCHAR2(32)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 F_D_CHARGE.INCREASE_T2_ENERGY 不存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'F_D_CHARGE' AND U.COLUMN_NAME='INCREASE_T3_ENERGY';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table F_D_CHARGE modify increase_t3_energy VARCHAR2(32)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 F_D_CHARGE.INCREASE_T3_ENERGY 不存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'F_D_CHARGE' AND U.COLUMN_NAME='INCREASE_T4_ENERGY';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table F_D_CHARGE modify increase_t4_energy VARCHAR2(32)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 F_D_CHARGE.INCREASE_T4_ENERGY 不存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'F_D_CHARGE' AND U.COLUMN_NAME='T1_PRICE';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table F_D_CHARGE modify t1_price VARCHAR2(32)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 F_D_CHARGE.T1_PRICE 不存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'F_D_CHARGE' AND U.COLUMN_NAME='T2_PRICE';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table F_D_CHARGE modify t2_price VARCHAR2(32)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 F_D_CHARGE.T2_PRICE 不存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'F_D_CHARGE' AND U.COLUMN_NAME='T3_PRICE';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table F_D_CHARGE modify t3_price VARCHAR2(32)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 F_D_CHARGE.T3_PRICE 不存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'F_D_CHARGE' AND U.COLUMN_NAME='T4_PRICE';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table F_D_CHARGE modify t4_price VARCHAR2(32)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 F_D_CHARGE.T4_PRICE 不存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'F_D_CHARGE' AND U.COLUMN_NAME='B1_VALUE';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table F_D_CHARGE modify b1_value VARCHAR2(32)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 F_D_CHARGE.B1_VALUE 不存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'F_D_CHARGE' AND U.COLUMN_NAME='B2_VALUE';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table F_D_CHARGE modify b2_value VARCHAR2(32)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 F_D_CHARGE.B2_VALUE 不存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'F_D_CHARGE' AND U.COLUMN_NAME='B3_VALUE';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table F_D_CHARGE modify b3_value VARCHAR2(32)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 F_D_CHARGE.B3_VALUE 不存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'F_D_CHARGE' AND U.COLUMN_NAME='B4_VALUE';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table F_D_CHARGE modify b4_value VARCHAR2(32)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 F_D_CHARGE.B4_VALUE 不存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'F_D_CHARGE' AND U.COLUMN_NAME='B5_VALUE';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table F_D_CHARGE modify b5_value VARCHAR2(32)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 F_D_CHARGE.B5_VALUE 不存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'F_D_CHARGE' AND U.COLUMN_NAME='B6_VALUE';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table F_D_CHARGE modify b6_value VARCHAR2(32)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 F_D_CHARGE.B6_VALUE 不存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'F_D_CHARGE' AND U.COLUMN_NAME='B1_ENERGY';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table F_D_CHARGE modify b1_energy VARCHAR2(32)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 F_D_CHARGE.B1_ENERGY 不存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'F_D_CHARGE' AND U.COLUMN_NAME='B2_ENERGY';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table F_D_CHARGE modify b2_energy VARCHAR2(32)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 F_D_CHARGE.B2_ENERGY 不存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'F_D_CHARGE' AND U.COLUMN_NAME='B3_ENERGY';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table F_D_CHARGE modify b3_energy VARCHAR2(32)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 F_D_CHARGE.B3_ENERGY 不存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'F_D_CHARGE' AND U.COLUMN_NAME='B4_ENERGY';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table F_D_CHARGE modify b4_energy VARCHAR2(32)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 F_D_CHARGE.B4_ENERGY 不存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'F_D_CHARGE' AND U.COLUMN_NAME='B5_ENERGY';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table F_D_CHARGE modify b5_energy VARCHAR2(32)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 F_D_CHARGE.B5_ENERGY 不存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'F_D_CHARGE' AND U.COLUMN_NAME='B6_ENERGY';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table F_D_CHARGE modify b6_energy VARCHAR2(32)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 F_D_CHARGE.B6_ENERGY 不存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'F_D_CHARGE' AND U.COLUMN_NAME='B7_ENERGY';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table F_D_CHARGE modify b7_energy VARCHAR2(32)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 F_D_CHARGE.B7_ENERGY 不存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'F_D_CHARGE' AND U.COLUMN_NAME='B1_PRICE';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table F_D_CHARGE modify b1_price VARCHAR2(32)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 F_D_CHARGE.B1_PRICE 不存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'F_D_CHARGE' AND U.COLUMN_NAME='B2_PRICE';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table F_D_CHARGE modify b2_price VARCHAR2(32)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 F_D_CHARGE.B2_PRICE 不存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'F_D_CHARGE' AND U.COLUMN_NAME='B3_PRICE';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table F_D_CHARGE modify b3_price VARCHAR2(32)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 F_D_CHARGE.B3_PRICE 不存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'F_D_CHARGE' AND U.COLUMN_NAME='B4_PRICE';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table F_D_CHARGE modify b4_price VARCHAR2(32)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 F_D_CHARGE.B4_PRICE 不存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'F_D_CHARGE' AND U.COLUMN_NAME='B5_PRICE';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table F_D_CHARGE modify b5_price VARCHAR2(32)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 F_D_CHARGE.B5_PRICE 不存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'F_D_CHARGE' AND U.COLUMN_NAME='B6_PRICE';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table F_D_CHARGE modify b6_price VARCHAR2(32)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 F_D_CHARGE.B6_PRICE 不存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'F_D_CHARGE' AND U.COLUMN_NAME='B7_PRICE';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table F_D_CHARGE modify b7_price VARCHAR2(32)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 F_D_CHARGE.B7_PRICE 不存在。');
    END IF;
END;
/
prompt
prompt 正在处理纪录编号为 8200000000014021 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'F_D_INFRARED' AND U.COLUMN_NAME='TEST_COUNT';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table F_D_INFRARED add test_count NUMBER(4)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 F_D_INFRARED.test_count 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column F_D_INFRARED.test_count
      is ''分拣次数，从1开始''
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000014033 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'F_D_RS485' AND U.COLUMN_NAME='TEST_COUNT';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table F_D_RS485 add test_count NUMBER(4)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 F_D_RS485.test_count 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column F_D_RS485.test_count
      is ''分拣次数，从1开始''
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000014034 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'F_D_COMM_MODULE' AND U.COLUMN_NAME='TEST_COUNT';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table F_D_COMM_MODULE add test_count NUMBER(4)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 F_D_COMM_MODULE.test_count 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column F_D_COMM_MODULE.test_count
      is ''分拣次数，从1开始''
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000014035 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'F_D_KS_RECOVER' AND U.COLUMN_NAME='TEST_COUNT';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table F_D_KS_RECOVER add test_count NUMBER(4)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 F_D_KS_RECOVER.test_count 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column F_D_KS_RECOVER.test_count
      is ''分拣次数，从1开始''
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000014036 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'F_D_REMOTE_CTRL' AND U.COLUMN_NAME='TEST_COUNT';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table F_D_REMOTE_CTRL add test_count NUMBER(4)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 F_D_REMOTE_CTRL.test_count 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column F_D_REMOTE_CTRL.test_count
      is ''分拣次数，从1开始''
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000014037 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'F_D_REMOTE_CTRL' AND U.COLUMN_NAME='SWITCH_OFF_DELAY';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table F_D_REMOTE_CTRL modify SWITCH_OFF_DELAY VARCHAR2(32)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 F_D_REMOTE_CTRL.SWITCH_OFF_DELAY 不存在。');
    END IF;
END;
/
prompt
prompt 正在处理纪录编号为 8200000000014038 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'F_D_REMOTE_RECHARGE' AND U.COLUMN_NAME='TEST_COUNT';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table F_D_REMOTE_RECHARGE add test_count NUMBER(4)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 F_D_REMOTE_RECHARGE.test_count 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column F_D_REMOTE_RECHARGE.test_count
      is ''分拣次数，从1开始''
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000014039 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'F_D_REMOTE_RECHARGE' AND U.COLUMN_NAME='ORIGINAL_RECHARGE_NUM';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table F_D_REMOTE_RECHARGE modify original_recharge_num VARCHAR2(32)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 F_D_REMOTE_RECHARGE.ORIGINAL_RECHARGE_NUM 不存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'F_D_REMOTE_RECHARGE' AND U.COLUMN_NAME='ORIGINAL_CREDIT';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table F_D_REMOTE_RECHARGE modify original_credit VARCHAR2(32)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 F_D_REMOTE_RECHARGE.ORIGINAL_CREDIT 不存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'F_D_REMOTE_RECHARGE' AND U.COLUMN_NAME='ORIGINAL_OVERDRAFT';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table F_D_REMOTE_RECHARGE modify original_overdraft VARCHAR2(32)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 F_D_REMOTE_RECHARGE.ORIGINAL_OVERDRAFT 不存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'F_D_REMOTE_RECHARGE' AND U.COLUMN_NAME='LATEST_CREDIT';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table F_D_REMOTE_RECHARGE modify latest_credit VARCHAR2(32)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 F_D_REMOTE_RECHARGE.LATEST_CREDIT 不存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'F_D_REMOTE_RECHARGE' AND U.COLUMN_NAME='LATEST_OVERDRAFT';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table F_D_REMOTE_RECHARGE modify latest_overdraft VARCHAR2(32)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 F_D_REMOTE_RECHARGE.LATEST_OVERDRAFT 不存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'F_D_REMOTE_RECHARGE' AND U.COLUMN_NAME='LATEST_RECHARGE_NUM';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table F_D_REMOTE_RECHARGE modify latest_recharge_num VARCHAR2(32)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 F_D_REMOTE_RECHARGE.LATEST_RECHARGE_NUM 不存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'F_D_REMOTE_RECHARGE' AND U.COLUMN_NAME='RECHARGE_AMOUNT';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table F_D_REMOTE_RECHARGE modify recharge_amount VARCHAR2(32)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 F_D_REMOTE_RECHARGE.RECHARGE_AMOUNT 不存在。');
    END IF;
END;
/
prompt
prompt 正在处理纪录编号为 8200000000014040 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'F_D_CARD' AND U.COLUMN_NAME='TEST_COUNT';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table F_D_CARD add test_count NUMBER(4)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 F_D_CARD.test_count 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column F_D_CARD.test_count
      is ''分拣次数，从1开始''
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000014041 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'F_D_RUN_STATE' AND U.COLUMN_NAME='TEST_COUNT';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table F_D_RUN_STATE add test_count NUMBER(4)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 F_D_RUN_STATE.test_count 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column F_D_RUN_STATE.test_count
      is ''分拣次数，从1开始''
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000014042 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'F_D_RUN_STATE' AND U.COLUMN_NAME='ORIGINAL_POWER_DOWN_COUNT';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table F_D_RUN_STATE modify ORIGINAL_POWER_DOWN_COUNT VARCHAR2(32)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 F_D_RUN_STATE.ORIGINAL_POWER_DOWN_COUNT 不存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'F_D_RUN_STATE' AND U.COLUMN_NAME='LATESTL_POWER_DOWN_COUNT';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table F_D_RUN_STATE modify LATESTL_POWER_DOWN_COUNT VARCHAR2(32)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 F_D_RUN_STATE.LATESTL_POWER_DOWN_COUNT 不存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'F_D_RUN_STATE' AND U.COLUMN_NAME='POWER_DOWN_COUNT';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table F_D_RUN_STATE modify POWER_DOWN_COUNT VARCHAR2(32)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 F_D_RUN_STATE.POWER_DOWN_COUNT 不存在。');
    END IF;
END;
/
prompt
prompt 正在处理纪录编号为 8200000000014043 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'F_D_ARGS_CHECK' AND U.COLUMN_NAME='TEST_COUNT';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table F_D_ARGS_CHECK add test_count NUMBER(4)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 F_D_ARGS_CHECK.test_count 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column F_D_ARGS_CHECK.test_count
      is ''分拣次数，从1开始''
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000014044 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Tables U WHERE U.TABLE_NAME = 'F_REPICK_RSLT_HIS';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
        create table F_REPICK_RSLT_HIS
        (
        rslt_id NUMBER(16) not null,
        equip_categ VARCHAR2(8),
        bar_code VARCHAR2(32),
        repick_task_no VARCHAR2(16),
        sg_task_no VARCHAR2(16),
        result_code VARCHAR2(8),
        check_conc VARCHAR2(8),
        repick_time DATE,
        process_conc VARCHAR2(8),
        process_reason VARCHAR2(256),
        repicker_no VARCHAR2(16),
        repick_org_no VARCHAR2(16),
        is_equip_test VARCHAR2(2),
        sorting_device_no VARCHAR2(32),
        type_code VARCHAR2(8),
        handled_user_no VARCHAR2(16),
        handled_date DATE,
        create_date DATE,
        remark VARCHAR2(256),
        meter_reading VARCHAR2(2000),
        process_suggest VARCHAR2(8),
        suggest_reason VARCHAR2(256),
        sorting_meter_no NUMBER(3),
        test_count NUMBER(4),
        faults_code_auto VARCHAR2(2000),
        record_check VARCHAR2(128)
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
      dbms_output.put_line('脚本已跳过，因为 F_REPICK_RSLT_HIS 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table F_REPICK_RSLT_HIS
      is ''分拣结果信息历史表''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_REPICK_RSLT_HIS.RSLT_ID
      is ''结果标识''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_REPICK_RSLT_HIS.EQUIP_CATEG
      is ''设备类别，参见计量标准代码：设备类别VW_EQUIP_CATEG''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_REPICK_RSLT_HIS.BAR_CODE
      is ''设备条码''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_REPICK_RSLT_HIS.REPICK_TASK_NO
      is ''任务编号,关联F_REPICK_TASK''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_REPICK_RSLT_HIS.SG_TASK_NO
      is ''营销退库任务编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_REPICK_RSLT_HIS.RESULT_CODE
      is ''分拣结果，01有故障、02无故障。VW_REPICK_RESULT_CODE''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_REPICK_RSLT_HIS.CHECK_CONC
      is ''抽样核查结果_HIS.省中心分拣抽样核查使用。01：合格、02：不合格VW_DET_CONC_CODE''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_REPICK_RSLT_HIS.REPICK_TIME
      is ''分拣时间''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_REPICK_RSLT_HIS.PROCESS_CONC
      is ''处置结论_HIS.分拣处理结论。VW_REPICK_PROCESS_CODE''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_REPICK_RSLT_HIS.PROCESS_REASON
      is ''处置原因''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_REPICK_RSLT_HIS.REPICKER_NO
      is ''分拣人员编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_REPICK_RSLT_HIS.REPICK_ORG_NO
      is ''分拣单位编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_REPICK_RSLT_HIS.IS_EQUIP_TEST
      is ''是否台体检测1: 是，0 :否。VW_YESNO_FLAG''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_REPICK_RSLT_HIS.SORTING_DEVICE_NO
      is ''分拣台体编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_REPICK_RSLT_HIS.TYPE_CODE
      is ''业务类型,01分拣检测02抽样核查VW_REPICK_TYPE_CODE''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_REPICK_RSLT_HIS.HANDLED_USER_NO
      is ''处置人员编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_REPICK_RSLT_HIS.HANDLED_DATE
      is ''处置时间''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_REPICK_RSLT_HIS.CREATE_DATE
      is ''创建时间''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_REPICK_RSLT_HIS.REMARK
      is ''备注''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_REPICK_RSLT_HIS.METER_READING
      is ''分捡前电表底度''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_REPICK_RSLT_HIS.PROCESS_SUGGEST
      is ''处置建议,对该设备的处置建议，例如超期表建议为03库存待报废。编码： 01,库存待维修  02库存待赔付  03库存待报废  04库存待校验''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_REPICK_RSLT_HIS.SUGGEST_REASON
      is ''建议原因,建议处置的原因，例如表龄超''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_REPICK_RSLT_HIS.SORTING_METER_NO
      is ''分拣表位编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_REPICK_RSLT_HIS.TEST_COUNT
      is ''分拣次数，从1开始''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_REPICK_RSLT_HIS.FAULTS_CODE_AUTO
      is ''分拣故障现象 按照竖线“|”分割。该字段存储的是分拣自动检测的故障现象，不包括再最后人工勾选的故障现象''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_REPICK_RSLT_HIS.RECORD_CHECK
      is ''处置结论记录，用于校验该条数据是否有效''
    ';
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_INDEXES U WHERE u.INDEX_NAME = 'PK_F_REPICK_RSLT_HIS';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table F_REPICK_RSLT_HIS
      add constraint PK_F_REPICK_RSLT_HIS primary key (RSLT_ID)
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
      dbms_output.put_line('脚本已跳过，因为 PK_F_REPICK_RSLT_HIS 已存在。');
    END IF;
END;
/
prompt
prompt 正在处理纪录编号为 8200000000014046 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Tables U WHERE U.TABLE_NAME = 'F_REPICK_FAULT_HIS';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
        create table F_REPICK_FAULT_HIS
        (
        fault_id NUMBER(16) not null,
        rslt_id NUMBER(16),
        bar_code VARCHAR2(32),
        thrid_fault_code VARCHAR2(8),
        forth_fault_code VARCHAR2(16),
        type_code VARCHAR2(8),
        task_no VARCHAR2(16),
        is_read VARCHAR2(8),
        scheme_no VARCHAR2(32),
        item_no VARCHAR2(32),
        line_number VARCHAR2(2),
        repick_time DATE,
        test_count NUMBER(4)
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
      dbms_output.put_line('脚本已跳过，因为 F_REPICK_FAULT_HIS 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table F_REPICK_FAULT_HIS
      is ''分拣故障现象历史表''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_REPICK_FAULT_HIS.FAULT_ID
      is ''故障标识''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_REPICK_FAULT_HIS.RSLT_ID
      is ''分拣结果标识，关联分拣结果信息表''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_REPICK_FAULT_HIS.BAR_CODE
      is ''设备条码''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_REPICK_FAULT_HIS.THRID_FAULT_CODE
      is ''三级故障现象，地市分拣维护到三级 vw_meter_fault_type''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_REPICK_FAULT_HIS.FORTH_FAULT_CODE
      is ''四级故障现象，省中心抽样核查维护到四级增加vw_meter_fault_type_l4''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_REPICK_FAULT_HIS.TYPE_CODE
      is ''业务类型，01分拣检测02抽样核查VW_REPICK_TYPE_CODE''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_REPICK_FAULT_HIS.TASK_NO
      is ''任务编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_REPICK_FAULT_HIS.IS_READ
      is ''是否已读取''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_REPICK_FAULT_HIS.SCHEME_NO
      is ''检测方案编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_REPICK_FAULT_HIS.ITEM_NO
      is ''项目编码''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_REPICK_FAULT_HIS.LINE_NUMBER
      is ''行号执行顺序''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_REPICK_FAULT_HIS.REPICK_TIME
      is ''分拣时间，格式：年月日时分秒''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_REPICK_FAULT_HIS.TEST_COUNT
      is ''分拣次数，从1开始''
    ';
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_INDEXES U WHERE u.INDEX_NAME = 'PK_F_REPICK_FAULT_HIS';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table F_REPICK_FAULT_HIS
      add constraint PK_F_REPICK_FAULT_HIS primary key (FAULT_ID)
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
      dbms_output.put_line('脚本已跳过，因为 PK_F_REPICK_FAULT_HIS 已存在。');
    END IF;
END;
/
prompt
prompt 正在处理纪录编号为 8200000000014047 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Tables U WHERE U.TABLE_NAME = 'F_D_REPICK_CONCLUSION_HIS';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
        create table F_D_REPICK_CONCLUSION_HIS
        (
        conclusion_id NUMBER(16) not null,
        task_no VARCHAR2(16),
        type_code VARCHAR2(8),
        is_read VARCHAR2(8),
        scheme_no VARCHAR2(32),
        item_no VARCHAR2(32),
        item_result VARCHAR2(8),
        bar_code VARCHAR2(32),
        test_count NUMBER(4)
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
      dbms_output.put_line('脚本已跳过，因为 F_D_REPICK_CONCLUSION_HIS 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table F_D_REPICK_CONCLUSION_HIS
      is ''分拣总结论历史表''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_REPICK_CONCLUSION_HIS.CONCLUSION_ID
      is ''主键id''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_REPICK_CONCLUSION_HIS.TASK_NO
      is ''关联MT_REPICK_TASK''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_REPICK_CONCLUSION_HIS.TYPE_CODE
      is ''业务类型，01分拣检测02抽样核查VW_REPICK_TYPE_CODE''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_REPICK_CONCLUSION_HIS.IS_READ
      is ''记录是否被系统读取，0 未读取 1 已读取''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_REPICK_CONCLUSION_HIS.SCHEME_NO
      is ''分拣方案编号或者抽样核查方案编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_REPICK_CONCLUSION_HIS.ITEM_NO
      is ''检测项目编码''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_REPICK_CONCLUSION_HIS.ITEM_RESULT
      is ''检测项目结论:0 不合格 1 合格''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_REPICK_CONCLUSION_HIS.BAR_CODE
      is ''设备条码''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_REPICK_CONCLUSION_HIS.TEST_COUNT
      is ''分拣次数，从1开始''
    ';
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_INDEXES U WHERE u.INDEX_NAME = 'PK_F_D_REPICK_CONCLUSION_HIS';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table F_D_REPICK_CONCLUSION_HIS
      add constraint PK_F_D_REPICK_CONCLUSION_HIS primary key (CONCLUSION_ID)
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
      dbms_output.put_line('脚本已跳过，因为 PK_F_D_REPICK_CONCLUSION_HIS 已存在。');
    END IF;
END;
/
prompt
prompt 正在处理纪录编号为 8200000000014048 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Tables U WHERE U.TABLE_NAME = 'F_D_APPERANCE_HIS';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
        create table F_D_APPERANCE_HIS
        (
        apperance_id NUMBER(16) not null,
        task_no VARCHAR2(16),
        test_plan_no VARCHAR2(32),
        item_no VARCHAR2(32),
        line_number VARCHAR2(2),
        type_code VARCHAR2(8),
        create_date DATE,
        is_read VARCHAR2(8),
        bar_code VARCHAR2(32),
        result VARCHAR2(8),
        apperance_type VARCHAR2(8),
        is_pic_save VARCHAR2(8),
        is_auto VARCHAR2(8),
        pic BLOB,
        pic_name VARCHAR2(128),
        test_count NUMBER(4)
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
      dbms_output.put_line('脚本已跳过，因为 F_D_APPERANCE_HIS 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table F_D_APPERANCE_HIS
      is ''外观、标志检查历史表''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_APPERANCE_HIS.APPERANCE_ID
      is ''主键id''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_APPERANCE_HIS.TASK_NO
      is ''对应《分拣结果信息表》中的“任务编号”task_no''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_APPERANCE_HIS.TEST_PLAN_NO
      is ''分拣方案编号或者抽样核查方案编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_APPERANCE_HIS.ITEM_NO
      is ''检测项目编码''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_APPERANCE_HIS.LINE_NUMBER
      is ''行号执行顺序''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_APPERANCE_HIS.TYPE_CODE
      is ''业务类型 01 分拣检测 02 抽样核查''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_APPERANCE_HIS.CREATE_DATE
      is ''记录生成时间''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_APPERANCE_HIS.IS_READ
      is ''记录是否被系统读取，0 未读取 1 已读取''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_APPERANCE_HIS.BAR_CODE
      is ''设备条码''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_APPERANCE_HIS.RESULT
      is ''0 不合格 1 合格''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_APPERANCE_HIS.APPERANCE_TYPE
      is ''见字典''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_APPERANCE_HIS.IS_PIC_SAVE
      is ''见字典''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_APPERANCE_HIS.IS_AUTO
      is ''见字典''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_APPERANCE_HIS.PIC
      is ''照片''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_APPERANCE_HIS.PIC_NAME
      is ''照片文件名含后缀名''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_APPERANCE_HIS.TEST_COUNT
      is ''分拣次数，从1开始''
    ';
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_INDEXES U WHERE u.INDEX_NAME = 'PK_F_D_APPERANCE_HIS';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table F_D_APPERANCE_HIS
      add constraint PK_F_D_APPERANCE_HIS primary key (APPERANCE_ID)
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
      dbms_output.put_line('脚本已跳过，因为 PK_F_D_APPERANCE_HIS 已存在。');
    END IF;
END;
/
prompt
prompt 正在处理纪录编号为 8200000000014049 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Tables U WHERE U.TABLE_NAME = 'F_D_POWER_ON_HIS';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
        create table F_D_POWER_ON_HIS
        (
        power_id NUMBER(16) not null,
        task_no VARCHAR2(16),
        test_plan_no VARCHAR2(32),
        item_no VARCHAR2(32),
        line_number VARCHAR2(2),
        type_code VARCHAR2(8),
        create_date DATE,
        is_read VARCHAR2(8),
        bar_code VARCHAR2(32),
        result VARCHAR2(8),
        power_on_type VARCHAR2(8),
        is_auto VARCHAR2(8),
        is_pic_save VARCHAR2(8),
        pic BLOB,
        pic_name VARCHAR2(128),
        test_count NUMBER(4)
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
      dbms_output.put_line('脚本已跳过，因为 F_D_POWER_ON_HIS 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table F_D_POWER_ON_HIS
      is ''通电检查历史表''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_POWER_ON_HIS.POWER_ID
      is ''主键ID''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_POWER_ON_HIS.TASK_NO
      is ''对应《分拣结果信息表》中的“任务编号”task_no''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_POWER_ON_HIS.TEST_PLAN_NO
      is ''分拣方案编号或者抽样核查方案编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_POWER_ON_HIS.ITEM_NO
      is ''检测项目编码''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_POWER_ON_HIS.LINE_NUMBER
      is ''试验点编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_POWER_ON_HIS.TYPE_CODE
      is ''业务类型 01 分拣检测 02 抽样核查''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_POWER_ON_HIS.CREATE_DATE
      is ''记录生成时间''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_POWER_ON_HIS.IS_READ
      is ''记录是否被系统读取，0 未读取 1 已读取''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_POWER_ON_HIS.BAR_CODE
      is ''设备条码''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_POWER_ON_HIS.RESULT
      is ''0 不合格 1 合格''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_POWER_ON_HIS.POWER_ON_TYPE
      is ''见字典''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_POWER_ON_HIS.IS_AUTO
      is ''见字典''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_POWER_ON_HIS.IS_PIC_SAVE
      is ''见字典''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_POWER_ON_HIS.PIC
      is ''照片''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_POWER_ON_HIS.PIC_NAME
      is ''含后缀名''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_POWER_ON_HIS.TEST_COUNT
      is ''分拣次数，从1开始''
    ';
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_INDEXES U WHERE u.INDEX_NAME = 'PK_F_D_POWER_ON_HIS';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table F_D_POWER_ON_HIS
      add constraint PK_F_D_POWER_ON_HIS primary key (POWER_ID)
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
      dbms_output.put_line('脚本已跳过，因为 PK_F_D_POWER_ON_HIS 已存在。');
    END IF;
END;
/
prompt
prompt 正在处理纪录编号为 8200000000014050 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Tables U WHERE U.TABLE_NAME = 'F_D_READING_SHOT_HIS';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
        create table F_D_READING_SHOT_HIS
        (
        shot_id NUMBER(16) not null,
        task_no VARCHAR2(16),
        test_plan_no VARCHAR2(32),
        item_no VARCHAR2(32),
        line_number VARCHAR2(2),
        type_code VARCHAR2(8),
        create_date DATE,
        is_read VARCHAR2(8),
        bar_code VARCHAR2(32),
        result VARCHAR2(8),
        reading_type VARCHAR2(8),
        reading_tariff VARCHAR2(8),
        is_pic_save VARCHAR2(8),
        pic_manual_fix VARCHAR2(8),
        t_reading VARCHAR2(16),
        t_reading_pic BLOB,
        t_reading_pic_name VARCHAR2(128),
        test_count NUMBER(4)
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
      dbms_output.put_line('脚本已跳过，因为 F_D_READING_SHOT_HIS 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table F_D_READING_SHOT_HIS
      is ''底度获取历史表''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_READING_SHOT_HIS.SHOT_ID
      is ''主键ID''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_READING_SHOT_HIS.TASK_NO
      is ''对应《分拣结果信息表》中的“任务编号”task_no''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_READING_SHOT_HIS.TEST_PLAN_NO
      is ''分拣方案编号或者抽样核查方案编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_READING_SHOT_HIS.ITEM_NO
      is ''检测项目编码''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_READING_SHOT_HIS.LINE_NUMBER
      is ''行号执行顺序''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_READING_SHOT_HIS.TYPE_CODE
      is ''业务类型 01 分拣检测 02 抽样核查''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_READING_SHOT_HIS.CREATE_DATE
      is ''记录生成时间''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_READING_SHOT_HIS.IS_READ
      is ''记录是否被系统读取，0 未读取 1 已读取''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_READING_SHOT_HIS.BAR_CODE
      is ''设备条码''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_READING_SHOT_HIS.RESULT
      is ''0 不合格 1 合格''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_READING_SHOT_HIS.READING_TYPE
      is ''见字典''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_READING_SHOT_HIS.READING_TARIFF
      is ''见字典''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_READING_SHOT_HIS.IS_PIC_SAVE
      is ''见字典''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_READING_SHOT_HIS.PIC_MANUAL_FIX
      is ''见字典''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_READING_SHOT_HIS.T_READING
      is ''电量''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_READING_SHOT_HIS.T_READING_PIC
      is ''底度照片''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_READING_SHOT_HIS.T_READING_PIC_NAME
      is ''含后缀名''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_READING_SHOT_HIS.TEST_COUNT
      is ''分拣次数，从1开始''
    ';
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_INDEXES U WHERE u.INDEX_NAME = 'PK_F_D_READING_SHOT_HIS';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table F_D_READING_SHOT_HIS
      add constraint PK_F_D_READING_SHOT_HIS primary key (SHOT_ID)
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
      dbms_output.put_line('脚本已跳过，因为 PK_F_D_READING_SHOT_HIS 已存在。');
    END IF;
END;
/
prompt
prompt 正在处理纪录编号为 8200000000014051 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Tables U WHERE U.TABLE_NAME = 'F_D_BASIC_ERR_HIS';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
        create table F_D_BASIC_ERR_HIS
        (
        err_id NUMBER(16) not null,
        task_no VARCHAR2(16),
        test_plan_no VARCHAR2(32),
        item_no VARCHAR2(32),
        line_number VARCHAR2(2),
        type_code VARCHAR2(8),
        create_date DATE,
        is_read VARCHAR2(8),
        bar_code VARCHAR2(32),
        result VARCHAR2(8),
        power_dir VARCHAR2(8),
        current_phase VARCHAR2(8),
        voltage NUMBER(16,6),
        test_current NUMBER(16,6),
        power_factor VARCHAR2(8),
        test_num NUMBER(16),
        test_method VARCHAR2(8),
        falt_type VARCHAR2(8),
        err_limit NUMBER(16,6),
        test_count NUMBER(4),
        err_value VARCHAR2(32)
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
      dbms_output.put_line('脚本已跳过，因为 F_D_BASIC_ERR_HIS 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table F_D_BASIC_ERR_HIS
      is ''基本误差历史表''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_BASIC_ERR_HIS.ERR_ID
      is ''主键ID''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_BASIC_ERR_HIS.TASK_NO
      is ''对应《分拣结果信息表》中的“任务编号”task_no''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_BASIC_ERR_HIS.TEST_PLAN_NO
      is ''分拣方案编号或者抽样核查方案编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_BASIC_ERR_HIS.ITEM_NO
      is ''检测项目编码''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_BASIC_ERR_HIS.LINE_NUMBER
      is ''行号执行顺序''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_BASIC_ERR_HIS.TYPE_CODE
      is ''业务类型 01 分拣检测 02 抽样核查''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_BASIC_ERR_HIS.CREATE_DATE
      is ''记录生成时间''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_BASIC_ERR_HIS.IS_READ
      is ''记录是否被系统读取，0 未读取 1 已读取''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_BASIC_ERR_HIS.BAR_CODE
      is ''设备条码''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_BASIC_ERR_HIS.RESULT
      is ''0 不合格 1 合格''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_BASIC_ERR_HIS.POWER_DIR
      is ''见字典''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_BASIC_ERR_HIS.CURRENT_PHASE
      is ''见字典''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_BASIC_ERR_HIS.VOLTAGE
      is ''测试电压''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_BASIC_ERR_HIS.TEST_CURRENT
      is ''测试电流''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_BASIC_ERR_HIS.POWER_FACTOR
      is ''见字典''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_BASIC_ERR_HIS.TEST_NUM
      is ''测试次数(次）''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_BASIC_ERR_HIS.TEST_METHOD
      is ''见字典''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_BASIC_ERR_HIS.FALT_TYPE
      is ''见字典''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_BASIC_ERR_HIS.ERR_LIMIT
      is ''按等级计算后的误差限''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_BASIC_ERR_HIS.TEST_COUNT
      is ''分拣次数，从1开始''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_BASIC_ERR_HIS.ERR_VALUE
      is ''误差值''
    ';
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_INDEXES U WHERE u.INDEX_NAME = 'PK_F_D_BASIC_ERR_HIS';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table F_D_BASIC_ERR_HIS
      add constraint PK_F_D_BASIC_ERR_HIS primary key (ERR_ID)
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
      dbms_output.put_line('脚本已跳过，因为 PK_F_D_BASIC_ERR_HIS 已存在。');
    END IF;
END;
/
prompt
prompt 正在处理纪录编号为 8200000000014052 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Tables U WHERE U.TABLE_NAME = 'F_D_CONST_TEST_HIS';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
        create table F_D_CONST_TEST_HIS
        (
        const_id NUMBER(16) not null,
        task_no VARCHAR2(16),
        test_plan_no VARCHAR2(32),
        item_no VARCHAR2(32),
        line_number VARCHAR2(2),
        type_code VARCHAR2(8),
        create_date DATE,
        is_read VARCHAR2(8),
        bar_code VARCHAR2(32),
        result VARCHAR2(8),
        power_dir VARCHAR2(8),
        voltage NUMBER(16,6),
        test_current NUMBER(16,6),
        power_factor VARCHAR2(8),
        test_method VARCHAR2(8),
        test_energy NUMBER(16,6),
        test_time NUMBER(16),
        err_limit NUMBER(16,6),
        test_count NUMBER(4),
        err_value VARCHAR2(32),
        std_energy VARCHAR2(32),
        sample_energy VARCHAR2(32),
        sample_const VARCHAR2(32),
        sample_pulse VARCHAR2(32)
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
      dbms_output.put_line('脚本已跳过，因为 F_D_CONST_TEST_HIS 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table F_D_CONST_TEST_HIS
      is ''常数试验历史表''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_CONST_TEST_HIS.CONST_ID
      is ''主键ID''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_CONST_TEST_HIS.TASK_NO
      is ''对应《分拣结果信息表》中的“任务编号”task_no''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_CONST_TEST_HIS.TEST_PLAN_NO
      is ''分拣方案编号或者抽样核查方案编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_CONST_TEST_HIS.ITEM_NO
      is ''检测项目编码''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_CONST_TEST_HIS.LINE_NUMBER
      is ''行号执行顺序''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_CONST_TEST_HIS.TYPE_CODE
      is ''业务类型 01 分拣检测 02 抽样核查''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_CONST_TEST_HIS.CREATE_DATE
      is ''记录生成时间''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_CONST_TEST_HIS.IS_READ
      is ''记录是否被系统读取，0 未读取 1 已读取''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_CONST_TEST_HIS.BAR_CODE
      is ''设备条码''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_CONST_TEST_HIS.RESULT
      is ''0 不合格 1 合格''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_CONST_TEST_HIS.POWER_DIR
      is ''见字典''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_CONST_TEST_HIS.VOLTAGE
      is ''测试电压''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_CONST_TEST_HIS.TEST_CURRENT
      is ''测试电流''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_CONST_TEST_HIS.POWER_FACTOR
      is ''见字典''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_CONST_TEST_HIS.TEST_METHOD
      is ''见字典''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_CONST_TEST_HIS.TEST_ENERGY
      is ''配置的走字度数''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_CONST_TEST_HIS.TEST_TIME
      is ''按等级计算后的误差限''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_CONST_TEST_HIS.ERR_LIMIT
      is ''不同方法误差限含义不同''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_CONST_TEST_HIS.TEST_COUNT
      is ''分拣次数，从1开始''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_CONST_TEST_HIS.ERR_VALUE
      is ''误差值''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_CONST_TEST_HIS.STD_ENERGY
      is ''标准表走字电量（kWh）''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_CONST_TEST_HIS.SAMPLE_ENERGY
      is ''被检表走字电量（kWh）''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_CONST_TEST_HIS.SAMPLE_CONST
      is ''被检表脉冲常数（imp/kWh）''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_CONST_TEST_HIS.SAMPLE_PULSE
      is ''被检表走字脉冲数(个)''
    ';
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_INDEXES U WHERE u.INDEX_NAME = 'PK_F_D_CONST_TEST_HIS';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table F_D_CONST_TEST_HIS
      add constraint PK_F_D_CONST_TEST_HIS primary key (CONST_ID)
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
      dbms_output.put_line('脚本已跳过，因为 PK_F_D_CONST_TEST_HIS 已存在。');
    END IF;
END;
/
prompt
prompt 正在处理纪录编号为 8200000000014053 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Tables U WHERE U.TABLE_NAME = 'F_D_INDICATION_HIS';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
        create table F_D_INDICATION_HIS
        (
        indication_id NUMBER(16) not null,
        task_no VARCHAR2(16),
        test_plan_no VARCHAR2(32),
        item_no VARCHAR2(32),
        line_number VARCHAR2(2),
        type_code VARCHAR2(8),
        create_date DATE,
        is_read VARCHAR2(8),
        bar_code VARCHAR2(32),
        result VARCHAR2(8),
        indication_type VARCHAR2(8),
        power_dir VARCHAR2(8),
        voltage NUMBER(16,6),
        test_current NUMBER(16,6),
        power_factor VARCHAR2(8),
        test_method VARCHAR2(8),
        err_limit NUMBER(16,6),
        err_value NUMBER(16,6),
        std_value NUMBER(16,6),
        sample_value NUMBER(16,6),
        p_std_value NUMBER(16,6),
        pa_std_value NUMBER(16,6),
        pb_std_value NUMBER(16,6),
        pc_std_value NUMBER(16,6),
        p_err_value VARCHAR2(32),
        p_sample_value VARCHAR2(32),
        pa_err_value VARCHAR2(32),
        pa_sample_value VARCHAR2(32),
        pb_err_value VARCHAR2(32),
        pb_sample_value VARCHAR2(32),
        pc_err_value VARCHAR2(32),
        pc_sample_value VARCHAR2(32),
        test_count NUMBER(4)
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
      dbms_output.put_line('脚本已跳过，因为 F_D_INDICATION_HIS 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table F_D_INDICATION_HIS
      is ''测量示值误差历史表''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_INDICATION_HIS.INDICATION_ID
      is ''行号执行顺序''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_INDICATION_HIS.TASK_NO
      is ''业务类型 01 分拣检测 02 抽样核查''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_INDICATION_HIS.TEST_PLAN_NO
      is ''记录生成时间''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_INDICATION_HIS.ITEM_NO
      is ''记录是否被系统读取，0 未读取 1 已读取''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_INDICATION_HIS.LINE_NUMBER
      is ''设备条码''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_INDICATION_HIS.TYPE_CODE
      is ''0 不合格 1 合格''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_INDICATION_HIS.CREATE_DATE
      is ''见字典''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_INDICATION_HIS.IS_READ
      is ''见字典''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_INDICATION_HIS.BAR_CODE
      is ''测试电压''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_INDICATION_HIS.RESULT
      is ''测试电流''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_INDICATION_HIS.INDICATION_TYPE
      is ''见字典''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_INDICATION_HIS.POWER_DIR
      is ''见字典''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_INDICATION_HIS.VOLTAGE
      is ''误差限(%)''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_INDICATION_HIS.TEST_CURRENT
      is ''误差值(%)''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_INDICATION_HIS.POWER_FACTOR
      is ''标准表值''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_INDICATION_HIS.TEST_METHOD
      is ''被检表值''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_INDICATION_HIS.ERR_LIMIT
      is ''合相标准表值''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_INDICATION_HIS.ERR_VALUE
      is ''A相标准表值''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_INDICATION_HIS.STD_VALUE
      is ''B相标准表值''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_INDICATION_HIS.SAMPLE_VALUE
      is ''C相标准表值''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_INDICATION_HIS.P_STD_VALUE
      is ''合相误差值(%)''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_INDICATION_HIS.PA_STD_VALUE
      is ''合相被检表值''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_INDICATION_HIS.PB_STD_VALUE
      is ''A相误差值(%)''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_INDICATION_HIS.PC_STD_VALUE
      is ''A相被检表值''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_INDICATION_HIS.P_ERR_VALUE
      is ''B相误差值(%)''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_INDICATION_HIS.P_SAMPLE_VALUE
      is ''B相被检表值''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_INDICATION_HIS.PA_ERR_VALUE
      is ''C相误差值(%)''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_INDICATION_HIS.PA_SAMPLE_VALUE
      is ''C相被检表值''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_INDICATION_HIS.PB_ERR_VALUE
      is ''分拣次数，从1开始''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_INDICATION_HIS.PB_SAMPLE_VALUE
      is ''''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_INDICATION_HIS.PC_ERR_VALUE
      is ''''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_INDICATION_HIS.PC_SAMPLE_VALUE
      is ''''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_INDICATION_HIS.TEST_COUNT
      is ''''
    ';
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_INDEXES U WHERE u.INDEX_NAME = 'PK_F_D_INDICATION_HIS';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table F_D_INDICATION_HIS
      add constraint PK_F_D_INDICATION_HIS primary key (INDICATION_ID)
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
      dbms_output.put_line('脚本已跳过，因为 PK_F_D_INDICATION_HIS 已存在。');
    END IF;
END;
/
prompt
prompt 正在处理纪录编号为 8200000000014054 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Tables U WHERE U.TABLE_NAME = 'F_D_START_HIS';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
        create table F_D_START_HIS
        (
        start_id NUMBER(16) not null,
        task_no VARCHAR2(16),
        test_plan_no VARCHAR2(32),
        item_no VARCHAR2(32),
        line_number VARCHAR2(2),
        type_code VARCHAR2(8),
        create_date DATE,
        is_read VARCHAR2(8),
        bar_code VARCHAR2(32),
        result VARCHAR2(8),
        power_dir VARCHAR2(8),
        test_current NUMBER(16,6),
        test_method VARCHAR2(8),
        time_limit NUMBER(16),
        time_cost NUMBER(16),
        test_count NUMBER(4)
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
      dbms_output.put_line('脚本已跳过，因为 F_D_START_HIS 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table F_D_START_HIS
      is ''起动试验历史表''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_START_HIS.START_ID
      is ''主键ID''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_START_HIS.TASK_NO
      is ''对应《分拣结果信息表》中的“任务编号”task_no''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_START_HIS.TEST_PLAN_NO
      is ''分拣方案编号或者抽样核查方案编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_START_HIS.ITEM_NO
      is ''检测项目编码''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_START_HIS.LINE_NUMBER
      is ''行号执行顺序''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_START_HIS.TYPE_CODE
      is ''业务类型 01 分拣检测 02 抽样核查''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_START_HIS.CREATE_DATE
      is ''记录生成时间''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_START_HIS.IS_READ
      is ''记录是否被系统读取，0 未读取 1 已读取''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_START_HIS.BAR_CODE
      is ''设备条码''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_START_HIS.RESULT
      is ''0 不合格 1 合格''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_START_HIS.POWER_DIR
      is ''见字典''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_START_HIS.TEST_CURRENT
      is ''测试电流''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_START_HIS.TEST_METHOD
      is ''见字典''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_START_HIS.TIME_LIMIT
      is ''测试时间(s)''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_START_HIS.TIME_COST
      is ''起动合格时，出第一个脉冲的时间''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_START_HIS.TEST_COUNT
      is ''分拣次数，从1开始''
    ';
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_INDEXES U WHERE u.INDEX_NAME = 'PK_F_D_START_HIS';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table F_D_START_HIS
      add constraint PK_F_D_START_HIS primary key (START_ID)
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
      dbms_output.put_line('脚本已跳过，因为 PK_F_D_START_HIS 已存在。');
    END IF;
END;
/
prompt
prompt 正在处理纪录编号为 8200000000014056 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Tables U WHERE U.TABLE_NAME = 'F_D_NOLOAD_HIS';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
        create table F_D_NOLOAD_HIS
        (
        noload_id NUMBER(16) not null,
        task_no VARCHAR2(16),
        test_plan_no VARCHAR2(32),
        item_no VARCHAR2(32),
        line_number VARCHAR2(2),
        type_code VARCHAR2(8),
        create_date DATE,
        is_read VARCHAR2(8),
        bar_code VARCHAR2(32),
        result VARCHAR2(8),
        voltage NUMBER(16,6),
        test_method VARCHAR2(8),
        time_limit NUMBER(16),
        time_cost VARCHAR2(32),
        test_count NUMBER(4)
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
      dbms_output.put_line('脚本已跳过，因为 F_D_NOLOAD_HIS 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table F_D_NOLOAD_HIS
      is ''潜动试验历史表''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_NOLOAD_HIS.NOLOAD_ID
      is ''主键ID''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_NOLOAD_HIS.TASK_NO
      is ''对应《分拣结果信息表》中的“任务编号”task_no''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_NOLOAD_HIS.TEST_PLAN_NO
      is ''分拣方案编号或者抽样核查方案编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_NOLOAD_HIS.ITEM_NO
      is ''检测项目编码''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_NOLOAD_HIS.LINE_NUMBER
      is ''行号执行顺序''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_NOLOAD_HIS.TYPE_CODE
      is ''业务类型 01 分拣检测 02 抽样核查''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_NOLOAD_HIS.CREATE_DATE
      is ''记录生成时间''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_NOLOAD_HIS.IS_READ
      is ''记录是否被系统读取，0 未读取 1 已读取''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_NOLOAD_HIS.BAR_CODE
      is ''设备条码''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_NOLOAD_HIS.RESULT
      is ''0 不合格 1 合格''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_NOLOAD_HIS.VOLTAGE
      is ''测试电压''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_NOLOAD_HIS.TEST_METHOD
      is ''见字典''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_NOLOAD_HIS.TIME_LIMIT
      is ''测试时间(s)''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_NOLOAD_HIS.TIME_COST
      is ''潜动不合格时，出第一个脉冲的时间''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_NOLOAD_HIS.TEST_COUNT
      is ''分拣次数，从1开始''
    ';
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_INDEXES U WHERE u.INDEX_NAME = 'PK_F_D_NOLOAD_HIS';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table F_D_NOLOAD_HIS
      add constraint PK_F_D_NOLOAD_HIS primary key (NOLOAD_ID)
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
      dbms_output.put_line('脚本已跳过，因为 PK_F_D_NOLOAD_HIS 已存在。');
    END IF;
END;
/
prompt
prompt 正在处理纪录编号为 8200000000014057 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Tables U WHERE U.TABLE_NAME = 'F_D_READING_COMBINE_HIS';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
        create table F_D_READING_COMBINE_HIS
        (
        combine_id NUMBER(16) not null,
        task_no VARCHAR2(16),
        test_plan_no VARCHAR2(32),
        item_no VARCHAR2(32),
        line_number VARCHAR2(2),
        type_code VARCHAR2(8),
        create_date DATE,
        is_read VARCHAR2(8),
        bar_code VARCHAR2(32),
        result VARCHAR2(8),
        reading_type VARCHAR2(8),
        test_count NUMBER(4),
        t_energy VARCHAR2(32),
        t1_energy VARCHAR2(32),
        t2_energy VARCHAR2(32),
        t3_energy VARCHAR2(32),
        t4_energy VARCHAR2(32),
        err_value VARCHAR2(32)
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
      dbms_output.put_line('脚本已跳过，因为 F_D_READING_COMBINE_HIS 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table F_D_READING_COMBINE_HIS
      is ''计度器总电能示值组合误差历史表''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_READING_COMBINE_HIS.COMBINE_ID
      is ''主键ID''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_READING_COMBINE_HIS.TASK_NO
      is ''对应《分拣结果信息表》中的“任务编号”task_no''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_READING_COMBINE_HIS.TEST_PLAN_NO
      is ''分拣方案编号或者抽样核查方案编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_READING_COMBINE_HIS.ITEM_NO
      is ''检测项目编码''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_READING_COMBINE_HIS.LINE_NUMBER
      is ''行号执行顺序''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_READING_COMBINE_HIS.TYPE_CODE
      is ''业务类型 01 分拣检测 02 抽样核查''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_READING_COMBINE_HIS.CREATE_DATE
      is ''记录生成时间''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_READING_COMBINE_HIS.IS_READ
      is ''记录是否被系统读取，0 未读取 1 已读取''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_READING_COMBINE_HIS.BAR_CODE
      is ''设备条码''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_READING_COMBINE_HIS.RESULT
      is ''0 不合格 1 合格''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_READING_COMBINE_HIS.READING_TYPE
      is ''见字典''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_READING_COMBINE_HIS.TEST_COUNT
      is ''分拣次数，从1开始''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_READING_COMBINE_HIS.T_ENERGY
      is ''总电量(kWh)''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_READING_COMBINE_HIS.T1_ENERGY
      is ''尖电量(kWh)''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_READING_COMBINE_HIS.T2_ENERGY
      is ''峰电量(kWh)''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_READING_COMBINE_HIS.T3_ENERGY
      is ''平电量(kWh)''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_READING_COMBINE_HIS.T4_ENERGY
      is ''谷电量(kWh)''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_READING_COMBINE_HIS.ERR_VALUE
      is ''电量差值(kWh)''
    ';
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_INDEXES U WHERE u.INDEX_NAME = 'PK_F_D_READING_COMBINE_HIS';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table F_D_READING_COMBINE_HIS
      add constraint PK_F_D_READING_COMBINE_HIS primary key (COMBINE_ID)
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
      dbms_output.put_line('脚本已跳过，因为 PK_F_D_READING_COMBINE_HIS 已存在。');
    END IF;
END;
/
prompt
prompt 正在处理纪录编号为 8200000000014058 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Tables U WHERE U.TABLE_NAME = 'F_D_CLOCK_ERR_HIS';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
        create table F_D_CLOCK_ERR_HIS
        (
        clock_id NUMBER(16) not null,
        task_no VARCHAR2(16),
        test_plan_no VARCHAR2(32),
        item_no VARCHAR2(32),
        line_number VARCHAR2(2),
        type_code VARCHAR2(8),
        create_date DATE,
        is_read VARCHAR2(8),
        bar_code VARCHAR2(32),
        result VARCHAR2(8),
        err_limit NUMBER(16),
        std_clock VARCHAR2(32),
        sample_clock VARCHAR2(32),
        err_value VARCHAR2(32),
        test_count NUMBER(4)
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
      dbms_output.put_line('脚本已跳过，因为 F_D_CLOCK_ERR_HIS 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table F_D_CLOCK_ERR_HIS
      is ''时钟示值误差历史表''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_CLOCK_ERR_HIS.CLOCK_ID
      is ''主键ID''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_CLOCK_ERR_HIS.TASK_NO
      is ''对应《分拣结果信息表》中的“任务编号”task_no''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_CLOCK_ERR_HIS.TEST_PLAN_NO
      is ''分拣方案编号或者抽样核查方案编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_CLOCK_ERR_HIS.ITEM_NO
      is ''检测项目编码''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_CLOCK_ERR_HIS.LINE_NUMBER
      is ''行号执行顺序''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_CLOCK_ERR_HIS.TYPE_CODE
      is ''业务类型 01 分拣检测 02 抽样核查''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_CLOCK_ERR_HIS.CREATE_DATE
      is ''记录生成时间''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_CLOCK_ERR_HIS.IS_READ
      is ''记录是否被系统读取，0 未读取 1 已读取''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_CLOCK_ERR_HIS.BAR_CODE
      is ''设备条码''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_CLOCK_ERR_HIS.RESULT
      is ''0 不合格 1 合格''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_CLOCK_ERR_HIS.ERR_LIMIT
      is ''误差限(s)''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_CLOCK_ERR_HIS.STD_CLOCK
      is ''分拣设备标准时钟''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_CLOCK_ERR_HIS.SAMPLE_CLOCK
      is ''电表时钟''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_CLOCK_ERR_HIS.ERR_VALUE
      is ''误差值''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_CLOCK_ERR_HIS.TEST_COUNT
      is ''分拣次数，从1开始''
    ';
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_INDEXES U WHERE u.INDEX_NAME = 'PK_F_D_CLOCK_ERR_HIS';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table F_D_CLOCK_ERR_HIS
      add constraint PK_F_D_CLOCK_ERR_HIS primary key (CLOCK_ID)
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
      dbms_output.put_line('脚本已跳过，因为 PK_F_D_CLOCK_ERR_HIS 已存在。');
    END IF;
END;
/
prompt
prompt 正在处理纪录编号为 8200000000014059 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Tables U WHERE U.TABLE_NAME = 'F_D_DALIY_ERR_HIS';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
        create table F_D_DALIY_ERR_HIS
        (
        err_id NUMBER(16) not null,
        task_no VARCHAR2(16),
        test_plan_no VARCHAR2(32),
        item_no VARCHAR2(32),
        line_number VARCHAR2(2),
        type_code VARCHAR2(8),
        create_date DATE,
        is_read VARCHAR2(8),
        bar_code VARCHAR2(32),
        result VARCHAR2(8),
        test_method VARCHAR2(8),
        pulse_num NUMBER(16),
        test_num NUMBER(16),
        err_limit NUMBER(16,6),
        err_value VARCHAR2(32),
        test_count NUMBER(4)
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
      dbms_output.put_line('脚本已跳过，因为 F_D_DALIY_ERR_HIS 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table F_D_DALIY_ERR_HIS
      is ''日计时误差历史表''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_DALIY_ERR_HIS.ERR_ID
      is ''主键ID''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_DALIY_ERR_HIS.TASK_NO
      is ''对应《分拣结果信息表》中的“任务编号”task_no''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_DALIY_ERR_HIS.TEST_PLAN_NO
      is ''分拣方案编号或者抽样核查方案编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_DALIY_ERR_HIS.ITEM_NO
      is ''检测项目编码''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_DALIY_ERR_HIS.LINE_NUMBER
      is ''行号执行顺序''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_DALIY_ERR_HIS.TYPE_CODE
      is ''业务类型 01 分拣检测 02 抽样核查''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_DALIY_ERR_HIS.CREATE_DATE
      is ''记录生成时间''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_DALIY_ERR_HIS.IS_READ
      is ''记录是否被系统读取，0 未读取 1 已读取''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_DALIY_ERR_HIS.BAR_CODE
      is ''设备条码''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_DALIY_ERR_HIS.RESULT
      is ''0 不合格 1 合格''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_DALIY_ERR_HIS.TEST_METHOD
      is ''见字典''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_DALIY_ERR_HIS.PULSE_NUM
      is ''脉冲数(个)''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_DALIY_ERR_HIS.TEST_NUM
      is ''测试次数(次）''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_DALIY_ERR_HIS.ERR_LIMIT
      is ''误差限（s/d）''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_DALIY_ERR_HIS.ERR_VALUE
      is ''误差值(s/d)''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_DALIY_ERR_HIS.TEST_COUNT
      is ''分拣次数，从1开始''
    ';
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_INDEXES U WHERE u.INDEX_NAME = 'PK_F_D_DALIY_ERR_HIS';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table F_D_DALIY_ERR_HIS
      add constraint PK_F_D_DALIY_ERR_HIS primary key (ERR_ID)
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
      dbms_output.put_line('脚本已跳过，因为 PK_F_D_DALIY_ERR_HIS 已存在。');
    END IF;
END;
/
prompt
prompt 正在处理纪录编号为 8200000000014060 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Tables U WHERE U.TABLE_NAME = 'F_D_DEMAND_ERR_HIS';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
        create table F_D_DEMAND_ERR_HIS
        (
        err_id NUMBER(16) not null,
        task_no VARCHAR2(16),
        test_plan_no VARCHAR2(32),
        item_no VARCHAR2(32),
        line_number VARCHAR2(2),
        type_code VARCHAR2(8),
        create_date DATE,
        is_read VARCHAR2(8),
        bar_code VARCHAR2(32),
        result VARCHAR2(8),
        power_dir VARCHAR2(8),
        voltage NUMBER(16,6),
        test_current NUMBER(16,6),
        power_factor VARCHAR2(8),
        demand_period NUMBER(16),
        interval_time NUMBER(16),
        err_limit NUMBER(16,6),
        err_value NUMBER(16,6),
        std_power NUMBER(16,6),
        demand_value NUMBER(16,6),
        period_err_value NUMBER(16,6),
        test_count NUMBER(4)
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
      dbms_output.put_line('脚本已跳过，因为 F_D_DEMAND_ERR_HIS 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table F_D_DEMAND_ERR_HIS
      is ''需量示值误差历史表''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_DEMAND_ERR_HIS.ERR_ID
      is ''主键ID''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_DEMAND_ERR_HIS.TASK_NO
      is ''对应《分拣结果信息表》中的“任务编号”task_no''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_DEMAND_ERR_HIS.TEST_PLAN_NO
      is ''分拣方案编号或者抽样核查方案编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_DEMAND_ERR_HIS.ITEM_NO
      is ''检测项目编码''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_DEMAND_ERR_HIS.LINE_NUMBER
      is ''行号执行顺序''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_DEMAND_ERR_HIS.TYPE_CODE
      is ''业务类型 01 分拣检测 02 抽样核查''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_DEMAND_ERR_HIS.CREATE_DATE
      is ''记录生成时间''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_DEMAND_ERR_HIS.IS_READ
      is ''记录是否被系统读取，0 未读取 1 已读取''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_DEMAND_ERR_HIS.BAR_CODE
      is ''设备条码''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_DEMAND_ERR_HIS.RESULT
      is ''0 不合格 1 合格''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_DEMAND_ERR_HIS.POWER_DIR
      is ''见字典''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_DEMAND_ERR_HIS.VOLTAGE
      is ''测试电压''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_DEMAND_ERR_HIS.TEST_CURRENT
      is ''测试电流''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_DEMAND_ERR_HIS.POWER_FACTOR
      is ''见字典''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_DEMAND_ERR_HIS.DEMAND_PERIOD
      is ''需量周期(min)''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_DEMAND_ERR_HIS.INTERVAL_TIME
      is ''滑差时间(min)''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_DEMAND_ERR_HIS.ERR_LIMIT
      is ''按等级计算后的误差限''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_DEMAND_ERR_HIS.ERR_VALUE
      is ''误差值(%)''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_DEMAND_ERR_HIS.STD_POWER
      is ''标准表功率(kW)''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_DEMAND_ERR_HIS.DEMAND_VALUE
      is ''被测表需量(kW)''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_DEMAND_ERR_HIS.PERIOD_ERR_VALUE
      is ''预留台体有需量示值误差和周期误差同时做时，产生的周期偏差数据 有些台体不支持，可不写，该项目13版国网已取消，09版和表厂内部是测试的。''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_DEMAND_ERR_HIS.TEST_COUNT
      is ''分拣次数，从1开始''
    ';
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_INDEXES U WHERE u.INDEX_NAME = 'PK_F_D_DEMAND_ERR_HIS';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table F_D_DEMAND_ERR_HIS
      add constraint PK_F_D_DEMAND_ERR_HIS primary key (ERR_ID)
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
      dbms_output.put_line('脚本已跳过，因为 PK_F_D_DEMAND_ERR_HIS 已存在。');
    END IF;
END;
/
prompt
prompt 正在处理纪录编号为 8200000000014061 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Tables U WHERE U.TABLE_NAME = 'F_D_TARIFF_HIS';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
        create table F_D_TARIFF_HIS
        (
        tariff_id NUMBER(16) not null,
        task_no VARCHAR2(16),
        test_plan_no VARCHAR2(32),
        item_no VARCHAR2(32),
        line_number VARCHAR2(2),
        type_code VARCHAR2(8),
        create_date DATE,
        is_read VARCHAR2(8),
        bar_code VARCHAR2(32),
        result VARCHAR2(8),
        test_method VARCHAR2(8),
        cur_season_table VARCHAR2(8),
        cur_tariff_schedule VARCHAR2(8),
        cur_tariff VARCHAR2(8),
        start_sample_clock VARCHAR2(32),
        start_std_clock VARCHAR2(32),
        stop_sample_clock VARCHAR2(32),
        stop_std_clock VARCHAR2(32),
        test_count NUMBER(4)
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
      dbms_output.put_line('脚本已跳过，因为 F_D_TARIFF_HIS 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table F_D_TARIFF_HIS
      is ''时段和费率历史表''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_TARIFF_HIS.TARIFF_ID
      is ''主键ID''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_TARIFF_HIS.TASK_NO
      is ''对应《分拣结果信息表》中的“任务编号”task_no''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_TARIFF_HIS.TEST_PLAN_NO
      is ''分拣方案编号或者抽样核查方案编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_TARIFF_HIS.ITEM_NO
      is ''检测项目编码''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_TARIFF_HIS.LINE_NUMBER
      is ''行号执行顺序''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_TARIFF_HIS.TYPE_CODE
      is ''业务类型 01 分拣检测 02 抽样核查''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_TARIFF_HIS.CREATE_DATE
      is ''记录生成时间''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_TARIFF_HIS.IS_READ
      is ''记录是否被系统读取，0 未读取 1 已读取''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_TARIFF_HIS.BAR_CODE
      is ''设备条码''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_TARIFF_HIS.RESULT
      is ''0 不合格 1 合格''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_TARIFF_HIS.TEST_METHOD
      is ''见字典''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_TARIFF_HIS.CUR_SEASON_TABLE
      is ''1 第一套 2 第二套''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_TARIFF_HIS.CUR_TARIFF_SCHEDULE
      is ''1 第一套 2 第二套''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_TARIFF_HIS.CUR_TARIFF
      is ''1 尖 2 峰 3 平 4 谷''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_TARIFF_HIS.START_SAMPLE_CLOCK
      is ''开始试验电表时间''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_TARIFF_HIS.START_STD_CLOCK
      is ''开始试验标准时间''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_TARIFF_HIS.STOP_SAMPLE_CLOCK
      is ''结束试验电表时间''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_TARIFF_HIS.STOP_STD_CLOCK
      is ''结束试验标准时间''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_TARIFF_HIS.TEST_COUNT
      is ''分拣次数，从1开始''
    ';
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_INDEXES U WHERE u.INDEX_NAME = 'PK_F_D_TARIFF_HIS';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table F_D_TARIFF_HIS
      add constraint PK_F_D_TARIFF_HIS primary key (TARIFF_ID)
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
      dbms_output.put_line('脚本已跳过，因为 PK_F_D_TARIFF_HIS 已存在。');
    END IF;
END;
/
prompt
prompt 正在处理纪录编号为 8200000000014062 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Tables U WHERE U.TABLE_NAME = 'F_D_STORAGE_HIS';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
        create table F_D_STORAGE_HIS
        (
        storage_id NUMBER(16) not null,
        task_no VARCHAR2(16),
        test_plan_no VARCHAR2(32),
        item_no VARCHAR2(32),
        line_number VARCHAR2(2),
        type_code VARCHAR2(8),
        create_date DATE,
        is_read VARCHAR2(8),
        bar_code VARCHAR2(32),
        result VARCHAR2(8),
        storage_type VARCHAR2(8),
        test_num NUMBER(16),
        err_limit NUMBER(16,6),
        forword_energy_diff VARCHAR2(1000),
        forword_energy VARCHAR2(1000),
        backword_energy_diff VARCHAR2(1000),
        backword_energy VARCHAR2(1000),
        test_count NUMBER(4)
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
      dbms_output.put_line('脚本已跳过，因为 F_D_STORAGE_HIS 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table F_D_STORAGE_HIS
      is ''数据存储历史表''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_STORAGE_HIS.STORAGE_ID
      is ''主键ID''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_STORAGE_HIS.TASK_NO
      is ''对应《分拣结果信息表》中的“任务编号”task_no''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_STORAGE_HIS.TEST_PLAN_NO
      is ''分拣方案编号或者抽样核查方案编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_STORAGE_HIS.ITEM_NO
      is ''检测项目编码''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_STORAGE_HIS.LINE_NUMBER
      is ''行号执行顺序''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_STORAGE_HIS.TYPE_CODE
      is ''业务类型 01 分拣检测 02 抽样核查''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_STORAGE_HIS.CREATE_DATE
      is ''记录生成时间''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_STORAGE_HIS.IS_READ
      is ''记录是否被系统读取，0 未读取 1 已读取''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_STORAGE_HIS.BAR_CODE
      is ''设备条码''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_STORAGE_HIS.RESULT
      is ''0 不合格 1 合格''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_STORAGE_HIS.STORAGE_TYPE
      is ''见字典''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_STORAGE_HIS.TEST_NUM
      is ''测试次数（日/月/次）''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_STORAGE_HIS.ERR_LIMIT
      is ''日月电量是根据系数折算后的值，上下电电量不折算系数''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_STORAGE_HIS.FORWORD_ENERGY_DIFF
      is ''”|”分割电量''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_STORAGE_HIS.FORWORD_ENERGY
      is ''”|”分割电量''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_STORAGE_HIS.BACKWORD_ENERGY_DIFF
      is ''”|”分割电量''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_STORAGE_HIS.BACKWORD_ENERGY
      is ''”|”分割电量''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_STORAGE_HIS.TEST_COUNT
      is ''分拣次数，从1开始''
    ';
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_INDEXES U WHERE u.INDEX_NAME = 'PK_F_D_STORAGE_HIS';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table F_D_STORAGE_HIS
      add constraint PK_F_D_STORAGE_HIS primary key (STORAGE_ID)
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
      dbms_output.put_line('脚本已跳过，因为 PK_F_D_STORAGE_HIS 已存在。');
    END IF;
END;
/
prompt
prompt 正在处理纪录编号为 8200000000014065 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Tables U WHERE U.TABLE_NAME = 'F_D_EVENT_HIS';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
        create table F_D_EVENT_HIS
        (
        event_id NUMBER(16) not null,
        task_no VARCHAR2(16),
        test_plan_no VARCHAR2(32),
        item_no VARCHAR2(32),
        line_number VARCHAR2(2),
        type_code VARCHAR2(8),
        create_date DATE,
        is_read VARCHAR2(8),
        bar_code VARCHAR2(32),
        result VARCHAR2(8),
        event_type VARCHAR2(8),
        time_priod VARCHAR2(16),
        err_limit VARCHAR2(32),
        count NUMBER(16),
        sample_val VARCHAR2(32),
        test_count NUMBER(4)
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
      dbms_output.put_line('脚本已跳过，因为 F_D_EVENT_HIS 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table F_D_EVENT_HIS
      is ''事件记录历史表''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_EVENT_HIS.EVENT_ID
      is ''主键ID''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_EVENT_HIS.TASK_NO
      is ''对应《分拣结果信息表》中的“任务编号”task_no''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_EVENT_HIS.TEST_PLAN_NO
      is ''分拣方案编号或者抽样核查方案编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_EVENT_HIS.ITEM_NO
      is ''检测项目编码''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_EVENT_HIS.LINE_NUMBER
      is ''行号执行顺序''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_EVENT_HIS.TYPE_CODE
      is ''业务类型 01 分拣检测 02 抽样核查''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_EVENT_HIS.CREATE_DATE
      is ''记录生成时间''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_EVENT_HIS.IS_READ
      is ''记录是否被系统读取，0 未读取 1 已读取''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_EVENT_HIS.BAR_CODE
      is ''设备条码''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_EVENT_HIS.RESULT
      is ''0 不合格 1 合格''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_EVENT_HIS.EVENT_TYPE
      is ''见字典''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_EVENT_HIS.TIME_PRIOD
      is ''时间范围''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_EVENT_HIS.ERR_LIMIT
      is ''若是上下电测试，则为预期的掉电次数''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_EVENT_HIS.COUNT
      is ''若是上下电测试，则为实际增加的掉电次数''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_EVENT_HIS.SAMPLE_VAL
      is ''被检表值''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_EVENT_HIS.TEST_COUNT
      is ''分拣次数，从1开始''
    ';
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_INDEXES U WHERE u.INDEX_NAME = 'PK_F_D_EVENT_HIS';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table F_D_EVENT_HIS
      add constraint PK_F_D_EVENT_HIS primary key (EVENT_ID)
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
      dbms_output.put_line('脚本已跳过，因为 PK_F_D_EVENT_HIS 已存在。');
    END IF;
END;
/
prompt
prompt 正在处理纪录编号为 8200000000014066 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Tables U WHERE U.TABLE_NAME = 'F_D_CHARGE_HIS';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
        create table F_D_CHARGE_HIS
        (
        charge_id NUMBER(16) not null,
        task_no VARCHAR2(16),
        test_plan_no VARCHAR2(32),
        item_no VARCHAR2(32),
        line_number VARCHAR2(2),
        type_code VARCHAR2(8),
        create_date DATE,
        is_read VARCHAR2(8),
        bar_code VARCHAR2(32),
        result VARCHAR2(8),
        test_method VARCHAR2(8),
        err_limit NUMBER(16,6),
        charge_diff NUMBER(16,6),
        due_charge NUMBER(16,6),
        real_charge NUMBER(16,6),
        original_credit VARCHAR2(32),
        original_overdraft VARCHAR2(32),
        original_t_energy VARCHAR2(32),
        original_t1_energy VARCHAR2(32),
        original_t2_energy VARCHAR2(32),
        original_t3_energy VARCHAR2(32),
        original_t4_energy VARCHAR2(32),
        stop_credit VARCHAR2(32),
        stop_overdraft VARCHAR2(32),
        stop_t_energy VARCHAR2(32),
        stop_t1_energy VARCHAR2(32),
        stop_t2_energy VARCHAR2(32),
        stop_t3_energy VARCHAR2(32),
        stop_t4_energy VARCHAR2(32),
        increase_t_energy VARCHAR2(32),
        increase_t1_energy VARCHAR2(32),
        increase_t2_energy VARCHAR2(32),
        increase_t3_energy VARCHAR2(32),
        increase_t4_energy VARCHAR2(32),
        t1_price VARCHAR2(32),
        t2_price VARCHAR2(32),
        t3_price VARCHAR2(32),
        t4_price VARCHAR2(32),
        b1_value VARCHAR2(32),
        b2_value VARCHAR2(32),
        b3_value VARCHAR2(32),
        b4_value VARCHAR2(32),
        b5_value VARCHAR2(32),
        b6_value VARCHAR2(32),
        b1_energy VARCHAR2(32),
        b2_energy VARCHAR2(32),
        b3_energy VARCHAR2(32),
        b4_energy VARCHAR2(32),
        b5_energy VARCHAR2(32),
        b6_energy VARCHAR2(32),
        b7_energy VARCHAR2(32),
        b1_price VARCHAR2(32),
        b2_price VARCHAR2(32),
        b3_price VARCHAR2(32),
        b4_price VARCHAR2(32),
        b5_price VARCHAR2(32),
        b6_price VARCHAR2(32),
        b7_price VARCHAR2(32),
        cur_price VARCHAR2(32),
        test_count NUMBER(4)
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
      dbms_output.put_line('脚本已跳过，因为 F_D_CHARGE_HIS 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table F_D_CHARGE_HIS
      is ''电费扣减历史表''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_CHARGE_HIS.CHARGE_ID
      is ''主键ID''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_CHARGE_HIS.TASK_NO
      is ''对应《分拣结果信息表》中的“任务编号”task_no''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_CHARGE_HIS.TEST_PLAN_NO
      is ''分拣方案编号或者抽样核查方案编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_CHARGE_HIS.ITEM_NO
      is ''检测项目编码''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_CHARGE_HIS.LINE_NUMBER
      is ''行号执行顺序''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_CHARGE_HIS.TYPE_CODE
      is ''业务类型 01 分拣检测 02 抽样核查''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_CHARGE_HIS.CREATE_DATE
      is ''记录生成时间''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_CHARGE_HIS.IS_READ
      is ''记录是否被系统读取，0 未读取 1 已读取''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_CHARGE_HIS.BAR_CODE
      is ''设备条码''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_CHARGE_HIS.RESULT
      is ''0 不合格 1 合格''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_CHARGE_HIS.TEST_METHOD
      is ''见字典''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_CHARGE_HIS.ERR_LIMIT
      is ''异常限值(元)''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_CHARGE_HIS.CHARGE_DIFF
      is ''扣减差值(元)''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_CHARGE_HIS.DUE_CHARGE
      is ''应扣减金额(元)''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_CHARGE_HIS.REAL_CHARGE
      is ''实际扣减金额(元)''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_CHARGE_HIS.ORIGINAL_CREDIT
      is ''初始剩余金额(元)''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_CHARGE_HIS.ORIGINAL_OVERDRAFT
      is ''初始透支金额(元)''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_CHARGE_HIS.ORIGINAL_T_ENERGY
      is ''初始组合有功总电量(kWh)''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_CHARGE_HIS.ORIGINAL_T1_ENERGY
      is ''初始组合有功尖电量(kWh)''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_CHARGE_HIS.ORIGINAL_T2_ENERGY
      is ''初始组合有功峰电量(kWh)''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_CHARGE_HIS.ORIGINAL_T3_ENERGY
      is ''初始组合有功平电量(kWh)''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_CHARGE_HIS.ORIGINAL_T4_ENERGY
      is ''初始组合有功谷电量(kWh)''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_CHARGE_HIS.STOP_CREDIT
      is ''结束剩余金额(元)''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_CHARGE_HIS.STOP_OVERDRAFT
      is ''结束透支金额(元)''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_CHARGE_HIS.STOP_T_ENERGY
      is ''结束组合有功总电量(kWh)''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_CHARGE_HIS.STOP_T1_ENERGY
      is ''结束组合有功尖电量(kWh)''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_CHARGE_HIS.STOP_T2_ENERGY
      is ''结束组合有功峰电量(kWh)''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_CHARGE_HIS.STOP_T3_ENERGY
      is ''结束组合有功平电量(kWh)''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_CHARGE_HIS.STOP_T4_ENERGY
      is ''结束组合有功谷电量(kWh)''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_CHARGE_HIS.INCREASE_T_ENERGY
      is ''组合有功总增量(kWh)''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_CHARGE_HIS.INCREASE_T1_ENERGY
      is ''组合有功尖增量(kWh)''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_CHARGE_HIS.INCREASE_T2_ENERGY
      is ''组合有功峰增量(kWh)''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_CHARGE_HIS.INCREASE_T3_ENERGY
      is ''组合有功平增量(kWh)''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_CHARGE_HIS.INCREASE_T4_ENERGY
      is ''组合有功谷增量(kWh)''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_CHARGE_HIS.T1_PRICE
      is ''尖电价(元/kWh)''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_CHARGE_HIS.T2_PRICE
      is ''峰电价(元/kWh)''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_CHARGE_HIS.T3_PRICE
      is ''平电价(元/kWh)''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_CHARGE_HIS.T4_PRICE
      is ''谷电价(元/kWh)''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_CHARGE_HIS.B1_VALUE
      is ''阶梯值1(kWh)''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_CHARGE_HIS.B2_VALUE
      is ''阶梯值2(kWh)''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_CHARGE_HIS.B3_VALUE
      is ''阶梯值3(kWh)''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_CHARGE_HIS.B4_VALUE
      is ''阶梯值4(kWh)''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_CHARGE_HIS.B5_VALUE
      is ''阶梯值5(kWh)''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_CHARGE_HIS.B6_VALUE
      is ''阶梯值6(kWh)''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_CHARGE_HIS.B1_ENERGY
      is ''试验过程阶梯走的电量''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_CHARGE_HIS.B2_ENERGY
      is ''试验过程阶梯走的电量''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_CHARGE_HIS.B3_ENERGY
      is ''试验过程阶梯走的电量''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_CHARGE_HIS.B4_ENERGY
      is ''试验过程阶梯走的电量''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_CHARGE_HIS.B5_ENERGY
      is ''试验过程阶梯走的电量''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_CHARGE_HIS.B6_ENERGY
      is ''试验过程阶梯走的电量''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_CHARGE_HIS.B7_ENERGY
      is ''试验过程阶梯走的电量''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_CHARGE_HIS.B1_PRICE
      is ''阶梯电价1(元)''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_CHARGE_HIS.B2_PRICE
      is ''阶梯电价2(元)''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_CHARGE_HIS.B3_PRICE
      is ''阶梯电价3(元)''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_CHARGE_HIS.B4_PRICE
      is ''阶梯电价4(元)''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_CHARGE_HIS.B5_PRICE
      is ''阶梯电价5(元)''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_CHARGE_HIS.B6_PRICE
      is ''阶梯电价6(元)''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_CHARGE_HIS.B7_PRICE
      is ''阶梯电价7(元)''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_CHARGE_HIS.CUR_PRICE
      is ''当前电价''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_CHARGE_HIS.TEST_COUNT
      is ''分拣次数，从1开始''
    ';
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_INDEXES U WHERE u.INDEX_NAME = 'PK_F_D_CHARGE_HIS';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table F_D_CHARGE_HIS
      add constraint PK_F_D_CHARGE_HIS primary key (CHARGE_ID)
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
      dbms_output.put_line('脚本已跳过，因为 PK_F_D_CHARGE_HIS 已存在。');
    END IF;
END;
/
prompt
prompt 正在处理纪录编号为 8200000000014067 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Tables U WHERE U.TABLE_NAME = 'F_D_INFRARED_HIS';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
        create table F_D_INFRARED_HIS
        (
        infrared_id NUMBER(16) not null,
        task_no VARCHAR2(16),
        test_plan_no VARCHAR2(32),
        item_no VARCHAR2(32),
        line_number VARCHAR2(2),
        type_code VARCHAR2(8),
        create_date DATE,
        is_read VARCHAR2(8),
        bar_code VARCHAR2(32),
        result VARCHAR2(8),
        test_count NUMBER(4)
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
      dbms_output.put_line('脚本已跳过，因为 F_D_INFRARED_HIS 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table F_D_INFRARED_HIS
      is ''红外通信历史表''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_INFRARED_HIS.INFRARED_ID
      is ''主键ID''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_INFRARED_HIS.TASK_NO
      is ''对应《分拣结果信息表》中的“任务编号”task_no''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_INFRARED_HIS.TEST_PLAN_NO
      is ''分拣方案编号或者抽样核查方案编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_INFRARED_HIS.ITEM_NO
      is ''检测项目编码''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_INFRARED_HIS.LINE_NUMBER
      is ''行号执行顺序''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_INFRARED_HIS.TYPE_CODE
      is ''业务类型 01 分拣检测 02 抽样核查''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_INFRARED_HIS.CREATE_DATE
      is ''记录生成时间''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_INFRARED_HIS.IS_READ
      is ''记录是否被系统读取，0 未读取 1 已读取''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_INFRARED_HIS.BAR_CODE
      is ''设备条码''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_INFRARED_HIS.RESULT
      is ''0 不合格 1 合格''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_INFRARED_HIS.TEST_COUNT
      is ''分拣次数，从1开始''
    ';
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_INDEXES U WHERE u.INDEX_NAME = 'PK_F_D_INFRARED_HIS';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table F_D_INFRARED_HIS
      add constraint PK_F_D_INFRARED_HIS primary key (INFRARED_ID)
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
      dbms_output.put_line('脚本已跳过，因为 PK_F_D_INFRARED_HIS 已存在。');
    END IF;
END;
/
prompt
prompt 正在处理纪录编号为 8200000000014068 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Tables U WHERE U.TABLE_NAME = 'F_D_RS485_HIS';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
        create table F_D_RS485_HIS
        (
        id NUMBER(16) not null,
        task_no VARCHAR2(16),
        test_plan_no VARCHAR2(32),
        item_no VARCHAR2(32),
        line_number VARCHAR2(2),
        type_code VARCHAR2(8),
        create_date DATE,
        is_read VARCHAR2(8),
        bar_code VARCHAR2(32),
        result VARCHAR2(8),
        test_count NUMBER(4)
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
      dbms_output.put_line('脚本已跳过，因为 F_D_RS485_HIS 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table F_D_RS485_HIS
      is ''RS485通信试历史表''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_RS485_HIS.ID
      is ''主键ID''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_RS485_HIS.TASK_NO
      is ''对应《分拣结果信息表》中的“任务编号”task_no''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_RS485_HIS.TEST_PLAN_NO
      is ''分拣方案编号或者抽样核查方案编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_RS485_HIS.ITEM_NO
      is ''检测项目编码''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_RS485_HIS.LINE_NUMBER
      is ''行号执行顺序''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_RS485_HIS.TYPE_CODE
      is ''业务类型 01 分拣检测 02 抽样核查''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_RS485_HIS.CREATE_DATE
      is ''记录生成时间''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_RS485_HIS.IS_READ
      is ''记录是否被系统读取，0 未读取 1 已读取''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_RS485_HIS.BAR_CODE
      is ''设备条码''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_RS485_HIS.RESULT
      is ''0 不合格 1 合格''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_RS485_HIS.TEST_COUNT
      is ''分拣次数，从1开始''
    ';
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_INDEXES U WHERE u.INDEX_NAME = 'PK_F_D_RS485_HIS';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table F_D_RS485_HIS
      add constraint PK_F_D_RS485_HIS primary key (ID)
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
      dbms_output.put_line('脚本已跳过，因为 PK_F_D_RS485_HIS 已存在。');
    END IF;
END;
/
prompt
prompt 正在处理纪录编号为 8200000000014069 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Tables U WHERE U.TABLE_NAME = 'F_D_COMM_MODULE_HIS';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
        create table F_D_COMM_MODULE_HIS
        (
        module_id NUMBER(16) not null,
        task_no VARCHAR2(16),
        test_plan_no VARCHAR2(32),
        item_no VARCHAR2(32),
        line_number VARCHAR2(2),
        type_code VARCHAR2(8),
        create_date DATE,
        is_read VARCHAR2(8),
        bar_code VARCHAR2(32),
        result VARCHAR2(8),
        module_type VARCHAR2(16),
        module_manufacture VARCHAR2(16),
        central_freq VARCHAR2(16),
        modulation_code VARCHAR2(16),
        test_count NUMBER(4)
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
      dbms_output.put_line('脚本已跳过，因为 F_D_COMM_MODULE_HIS 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table F_D_COMM_MODULE_HIS
      is ''模块通信历史表''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_COMM_MODULE_HIS.MODULE_ID
      is ''主键ID''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_COMM_MODULE_HIS.TASK_NO
      is ''对应《分拣结果信息表》中的“任务编号”task_no''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_COMM_MODULE_HIS.TEST_PLAN_NO
      is ''分拣方案编号或者抽样核查方案编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_COMM_MODULE_HIS.ITEM_NO
      is ''检测项目编码''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_COMM_MODULE_HIS.LINE_NUMBER
      is ''行号执行顺序''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_COMM_MODULE_HIS.TYPE_CODE
      is ''业务类型 01 分拣检测 02 抽样核查''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_COMM_MODULE_HIS.CREATE_DATE
      is ''记录生成时间''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_COMM_MODULE_HIS.IS_READ
      is ''记录是否被系统读取，0 未读取 1 已读取''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_COMM_MODULE_HIS.BAR_CODE
      is ''设备条码''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_COMM_MODULE_HIS.RESULT
      is ''0 不合格 1 合格''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_COMM_MODULE_HIS.MODULE_TYPE
      is ''1 载波 2 微功率无线 3 GPRS 4 其他 (分拣后可获取载波档案)''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_COMM_MODULE_HIS.MODULE_MANUFACTURE
      is ''按国网管控代码 分拣后可获取载波档案''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_COMM_MODULE_HIS.CENTRAL_FREQ
      is ''按国网管控代码 分拣后可获取载波档案''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_COMM_MODULE_HIS.MODULATION_CODE
      is ''按国网管控代码 分拣后可获取载波档案''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_COMM_MODULE_HIS.TEST_COUNT
      is ''分拣次数，从1开始''
    ';
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_INDEXES U WHERE u.INDEX_NAME = 'PK_F_D_COMM_MODULE_HIS';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table F_D_COMM_MODULE_HIS
      add constraint PK_F_D_COMM_MODULE_HIS primary key (MODULE_ID)
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
      dbms_output.put_line('脚本已跳过，因为 PK_F_D_COMM_MODULE_HIS 已存在。');
    END IF;
END;
/
prompt
prompt 正在处理纪录编号为 8200000000014070 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Tables U WHERE U.TABLE_NAME = 'F_D_KS_RECOVER_HIS';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
        create table F_D_KS_RECOVER_HIS
        (
        recover_id NUMBER(16) not null,
        task_no VARCHAR2(16),
        test_plan_no VARCHAR2(32),
        item_no VARCHAR2(32),
        line_number VARCHAR2(2),
        type_code VARCHAR2(8),
        create_date DATE,
        is_read VARCHAR2(8),
        bar_code VARCHAR2(32),
        result VARCHAR2(8),
        identity_auth VARCHAR2(8),
        ks_state VARCHAR2(8),
        data_name VARCHAR2(32),
        data_id VARCHAR2(8),
        serr VARCHAR2(8),
        test_count NUMBER(4)
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
      dbms_output.put_line('脚本已跳过，因为 F_D_KS_RECOVER_HIS 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table F_D_KS_RECOVER_HIS
      is ''密钥更新历史表''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_KS_RECOVER_HIS.RECOVER_ID
      is ''主键ID''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_KS_RECOVER_HIS.TASK_NO
      is ''对应《分拣结果信息表》中的“任务编号”task_no''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_KS_RECOVER_HIS.TEST_PLAN_NO
      is ''分拣方案编号或者抽样核查方案编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_KS_RECOVER_HIS.ITEM_NO
      is ''检测项目编码''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_KS_RECOVER_HIS.LINE_NUMBER
      is ''行号执行顺序''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_KS_RECOVER_HIS.TYPE_CODE
      is ''业务类型 01 分拣检测 02 抽样核查''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_KS_RECOVER_HIS.CREATE_DATE
      is ''记录生成时间''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_KS_RECOVER_HIS.IS_READ
      is ''记录是否被系统读取，0 未读取 1 已读取''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_KS_RECOVER_HIS.BAR_CODE
      is ''设备条码''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_KS_RECOVER_HIS.RESULT
      is ''0 不合格 1 合格''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_KS_RECOVER_HIS.IDENTITY_AUTH
      is ''0 未通过 1 通过''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_KS_RECOVER_HIS.KS_STATE
      is ''1 公钥 2 私钥 09版和13版判断方法不同''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_KS_RECOVER_HIS.DATA_NAME
      is ''返回错误时的数据项名称''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_KS_RECOVER_HIS.DATA_ID
      is ''返回错误时的数据标识码''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_KS_RECOVER_HIS.SERR
      is ''密钥更新返回错误信息字''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_KS_RECOVER_HIS.TEST_COUNT
      is ''分拣次数，从1开始''
    ';
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_INDEXES U WHERE u.INDEX_NAME = 'PK_F_D_KS_RECOVER_HIS';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table F_D_KS_RECOVER_HIS
      add constraint PK_F_D_KS_RECOVER_HIS primary key (RECOVER_ID)
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
      dbms_output.put_line('脚本已跳过，因为 PK_F_D_KS_RECOVER_HIS 已存在。');
    END IF;
END;
/
prompt
prompt 正在处理纪录编号为 8200000000014071 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Tables U WHERE U.TABLE_NAME = 'F_D_REMOTE_CTRL_HIS';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
        create table F_D_REMOTE_CTRL_HIS
        (
        ctrl_id NUMBER(16) not null,
        task_no VARCHAR2(16),
        test_plan_no VARCHAR2(32),
        item_no VARCHAR2(32),
        line_number VARCHAR2(2),
        type_code VARCHAR2(8),
        create_date DATE,
        is_read VARCHAR2(8),
        bar_code VARCHAR2(32),
        result VARCHAR2(8),
        ctrl_type VARCHAR2(8),
        test_method VARCHAR2(8),
        identity_auth VARCHAR2(8),
        loop_circuit VARCHAR2(8),
        data_name VARCHAR2(32),
        data_id VARCHAR2(8),
        serr VARCHAR2(8),
        switch_off_delay VARCHAR2(32),
        test_count NUMBER(4)
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
      dbms_output.put_line('脚本已跳过，因为 F_D_REMOTE_CTRL_HIS 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table F_D_REMOTE_CTRL_HIS
      is ''远程控制历史表''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_REMOTE_CTRL_HIS.CTRL_ID
      is ''主键ID''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_REMOTE_CTRL_HIS.TASK_NO
      is ''对应《分拣结果信息表》中的“任务编号”task_no''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_REMOTE_CTRL_HIS.TEST_PLAN_NO
      is ''分拣方案编号或者抽样核查方案编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_REMOTE_CTRL_HIS.ITEM_NO
      is ''检测项目编码''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_REMOTE_CTRL_HIS.LINE_NUMBER
      is ''行号执行顺序''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_REMOTE_CTRL_HIS.TYPE_CODE
      is ''业务类型 01 分拣检测 02 抽样核查''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_REMOTE_CTRL_HIS.CREATE_DATE
      is ''记录生成时间''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_REMOTE_CTRL_HIS.IS_READ
      is ''记录是否被系统读取，0 未读取 1 已读取''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_REMOTE_CTRL_HIS.BAR_CODE
      is ''设备条码''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_REMOTE_CTRL_HIS.RESULT
      is ''0 不合格 1 合格''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_REMOTE_CTRL_HIS.CTRL_TYPE
      is ''见字典''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_REMOTE_CTRL_HIS.TEST_METHOD
      is ''见字典''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_REMOTE_CTRL_HIS.IDENTITY_AUTH
      is ''0 未通过 1 通过''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_REMOTE_CTRL_HIS.LOOP_CIRCUIT
      is ''0 不合格 1 合格''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_REMOTE_CTRL_HIS.DATA_NAME
      is ''返回错误时的数据项名称''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_REMOTE_CTRL_HIS.DATA_ID
      is ''返回错误时的数据标识码''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_REMOTE_CTRL_HIS.SERR
      is ''出错时返回错误信息字''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_REMOTE_CTRL_HIS.SWITCH_OFF_DELAY
      is ''合闸测试不填写''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_REMOTE_CTRL_HIS.TEST_COUNT
      is ''分拣次数，从1开始''
    ';
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_INDEXES U WHERE u.INDEX_NAME = 'PK_F_D_REMOTE_CTRL_HIS';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table F_D_REMOTE_CTRL_HIS
      add constraint PK_F_D_REMOTE_CTRL_HIS primary key (CTRL_ID)
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
      dbms_output.put_line('脚本已跳过，因为 PK_F_D_REMOTE_CTRL_HIS 已存在。');
    END IF;
END;
/
prompt
prompt 正在处理纪录编号为 8200000000014072 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Tables U WHERE U.TABLE_NAME = 'F_D_REMOTE_RECHARGE_HIS';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
        create table F_D_REMOTE_RECHARGE_HIS
        (
        recharge_id NUMBER(16) not null,
        task_no VARCHAR2(16),
        test_plan_no VARCHAR2(32),
        item_no VARCHAR2(32),
        line_number VARCHAR2(2),
        type_code VARCHAR2(8),
        create_date DATE,
        is_read VARCHAR2(8),
        bar_code VARCHAR2(32),
        result VARCHAR2(8),
        identity_auth VARCHAR2(8),
        user_id VARCHAR2(32),
        data_name VARCHAR2(32),
        data_id VARCHAR2(8),
        serr VARCHAR2(8),
        original_recharge_num VARCHAR2(32),
        original_credit VARCHAR2(32),
        original_overdraft VARCHAR2(32),
        latest_credit VARCHAR2(32),
        latest_overdraft VARCHAR2(32),
        latest_recharge_num VARCHAR2(32),
        recharge_amount VARCHAR2(32),
        test_count NUMBER(4)
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
      dbms_output.put_line('脚本已跳过，因为 F_D_REMOTE_RECHARGE_HIS 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table F_D_REMOTE_RECHARGE_HIS
      is ''远程充值历史表''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_REMOTE_RECHARGE_HIS.RECHARGE_ID
      is ''主键ID''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_REMOTE_RECHARGE_HIS.TASK_NO
      is ''对应《分拣结果信息表》中的“任务编号”task_no''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_REMOTE_RECHARGE_HIS.TEST_PLAN_NO
      is ''分拣方案编号或者抽样核查方案编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_REMOTE_RECHARGE_HIS.ITEM_NO
      is ''检测项目编码''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_REMOTE_RECHARGE_HIS.LINE_NUMBER
      is ''行号执行顺序''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_REMOTE_RECHARGE_HIS.TYPE_CODE
      is ''业务类型 01 分拣检测 02 抽样核查''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_REMOTE_RECHARGE_HIS.CREATE_DATE
      is ''记录生成时间''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_REMOTE_RECHARGE_HIS.IS_READ
      is ''记录是否被系统读取，0 未读取 1 已读取''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_REMOTE_RECHARGE_HIS.BAR_CODE
      is ''设备条码''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_REMOTE_RECHARGE_HIS.RESULT
      is ''0 不合格 1 合格''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_REMOTE_RECHARGE_HIS.IDENTITY_AUTH
      is ''0 未通过 1 通过''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_REMOTE_RECHARGE_HIS.USER_ID
      is ''户号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_REMOTE_RECHARGE_HIS.DATA_NAME
      is ''返回错误时的数据项名称''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_REMOTE_RECHARGE_HIS.DATA_ID
      is ''返回错误时的数据标识码''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_REMOTE_RECHARGE_HIS.SERR
      is ''出错时返回错误信息字''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_REMOTE_RECHARGE_HIS.ORIGINAL_RECHARGE_NUM
      is ''原购电次数''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_REMOTE_RECHARGE_HIS.ORIGINAL_CREDIT
      is ''原剩余金额''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_REMOTE_RECHARGE_HIS.ORIGINAL_OVERDRAFT
      is ''原透支金额''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_REMOTE_RECHARGE_HIS.LATEST_CREDIT
      is ''新剩余金额''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_REMOTE_RECHARGE_HIS.LATEST_OVERDRAFT
      is ''新透支金额''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_REMOTE_RECHARGE_HIS.LATEST_RECHARGE_NUM
      is ''新购电次数''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_REMOTE_RECHARGE_HIS.RECHARGE_AMOUNT
      is ''若表计欠费，则需要充值到合闸，所以每块表充值金额不同''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_REMOTE_RECHARGE_HIS.TEST_COUNT
      is ''分拣次数，从1开始''
    ';
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_INDEXES U WHERE u.INDEX_NAME = 'PK_F_D_REMOTE_RECHARGE_HIS';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table F_D_REMOTE_RECHARGE_HIS
      add constraint PK_F_D_REMOTE_RECHARGE_HIS primary key (RECHARGE_ID)
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
      dbms_output.put_line('脚本已跳过，因为 PK_F_D_REMOTE_RECHARGE_HIS 已存在。');
    END IF;
END;
/
prompt
prompt 正在处理纪录编号为 8200000000014073 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Tables U WHERE U.TABLE_NAME = 'F_D_CARD_HIS';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
        create table F_D_CARD_HIS
        (
        card_id NUMBER(16) not null,
        task_no VARCHAR2(16),
        test_plan_no VARCHAR2(32),
        item_no VARCHAR2(32),
        line_number VARCHAR2(2),
        type_code VARCHAR2(8),
        create_date DATE,
        is_read VARCHAR2(8),
        bar_code VARCHAR2(32),
        result VARCHAR2(8),
        card_err VARCHAR2(8),
        test_count NUMBER(4)
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
      dbms_output.put_line('脚本已跳过，因为 F_D_CARD_HIS 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table F_D_CARD_HIS
      is ''插卡试验历史表''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_CARD_HIS.CARD_ID
      is ''主键ID''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_CARD_HIS.TASK_NO
      is ''对应《分拣结果信息表》中的“任务编号”task_no''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_CARD_HIS.TEST_PLAN_NO
      is ''分拣方案编号或者抽样核查方案编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_CARD_HIS.ITEM_NO
      is ''检测项目编码''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_CARD_HIS.LINE_NUMBER
      is ''行号执行顺序''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_CARD_HIS.TYPE_CODE
      is ''业务类型 01 分拣检测 02 抽样核查''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_CARD_HIS.CREATE_DATE
      is ''记录生成时间''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_CARD_HIS.IS_READ
      is ''记录是否被系统读取，0 未读取 1 已读取''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_CARD_HIS.BAR_CODE
      is ''设备条码''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_CARD_HIS.RESULT
      is ''0 不合格 1 合格''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_CARD_HIS.CARD_ERR
      is ''出错时液晶显示值''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_CARD_HIS.TEST_COUNT
      is ''分拣次数，从1开始''
    ';
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_INDEXES U WHERE u.INDEX_NAME = 'PK_F_D_CARD_HIS';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table F_D_CARD_HIS
      add constraint PK_F_D_CARD_HIS primary key (CARD_ID)
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
      dbms_output.put_line('脚本已跳过，因为 PK_F_D_CARD_HIS 已存在。');
    END IF;
END;
/
prompt
prompt 正在处理纪录编号为 8200000000014074 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Tables U WHERE U.TABLE_NAME = 'F_D_RUN_STATE_HIS';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
        create table F_D_RUN_STATE_HIS
        (
        state_id NUMBER(16) not null,
        task_no VARCHAR2(16),
        test_plan_no VARCHAR2(32),
        item_no VARCHAR2(32),
        line_number VARCHAR2(2),
        type_code VARCHAR2(8),
        create_date DATE,
        is_read VARCHAR2(8),
        bar_code VARCHAR2(32),
        result VARCHAR2(8),
        std_ver VARCHAR2(8),
        ks_status_word VARCHAR2(8),
        ks_status VARCHAR2(8),
        clock_bat VARCHAR2(8),
        reding_bat VARCHAR2(8),
        running_crash VARCHAR2(8),
        abnormal_restart VARCHAR2(8),
        runstate VARCHAR2(64),
        test_count NUMBER(4),
        original_power_down_count VARCHAR2(32),
        latestl_power_down_count VARCHAR2(32),
        power_down_count VARCHAR2(32)
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
      dbms_output.put_line('脚本已跳过，因为 F_D_RUN_STATE_HIS 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table F_D_RUN_STATE_HIS
      is ''运行状态历史表''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_RUN_STATE_HIS.STATE_ID
      is ''主键ID''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_RUN_STATE_HIS.TASK_NO
      is ''对应《分拣结果信息表》中的“任务编号”task_no''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_RUN_STATE_HIS.TEST_PLAN_NO
      is ''分拣方案编号或者抽样核查方案编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_RUN_STATE_HIS.ITEM_NO
      is ''检测项目编码''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_RUN_STATE_HIS.LINE_NUMBER
      is ''行号执行顺序''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_RUN_STATE_HIS.TYPE_CODE
      is ''业务类型 01 分拣检测 02 抽样核查''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_RUN_STATE_HIS.CREATE_DATE
      is ''记录生成时间''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_RUN_STATE_HIS.IS_READ
      is ''记录是否被系统读取，0 未读取 1 已读取''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_RUN_STATE_HIS.BAR_CODE
      is ''设备条码''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_RUN_STATE_HIS.RESULT
      is ''0 不合格 1 合格''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_RUN_STATE_HIS.STD_VER
      is ''1 09 版 2 13版''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_RUN_STATE_HIS.KS_STATUS_WORD
      is ''4字节密钥状态字（09版状态查询返回，13版读取04000508数据标识返回，均为4字节）''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_RUN_STATE_HIS.KS_STATUS
      is ''1 公钥 2 私钥''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_RUN_STATE_HIS.CLOCK_BAT
      is ''0 欠压 1 合格''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_RUN_STATE_HIS.REDING_BAT
      is ''0 欠压 1 合格''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_RUN_STATE_HIS.RUNNING_CRASH
      is ''0 死机 1 合格''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_RUN_STATE_HIS.ABNORMAL_RESTART
      is ''0 重启 1 合格''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_RUN_STATE_HIS.RUNSTATE
      is ''抄回的电表运行状态字(09版14字节，13版为16字节)''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_RUN_STATE_HIS.TEST_COUNT
      is ''分拣次数，从1开始''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_RUN_STATE_HIS.ORIGINAL_POWER_DOWN_COUNT
      is ''异常重启判断''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_RUN_STATE_HIS.LATESTL_POWER_DOWN_COUNT
      is ''新掉电次数''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_RUN_STATE_HIS.POWER_DOWN_COUNT
      is ''实际掉电次数''
    ';
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_INDEXES U WHERE u.INDEX_NAME = 'PK_F_D_RUN_STATE_HIS';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table F_D_RUN_STATE_HIS
      add constraint PK_F_D_RUN_STATE_HIS primary key (STATE_ID)
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
      dbms_output.put_line('脚本已跳过，因为 PK_F_D_RUN_STATE_HIS 已存在。');
    END IF;
END;
/
prompt
prompt 正在处理纪录编号为 8200000000014075 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Tables U WHERE U.TABLE_NAME = 'F_D_ARGS_CHECK_HIS';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
        create table F_D_ARGS_CHECK_HIS
        (
        check_id NUMBER(16) not null,
        task_no VARCHAR2(16),
        test_plan_no VARCHAR2(32),
        item_no VARCHAR2(32),
        line_number VARCHAR2(2),
        type_code VARCHAR2(8),
        create_date DATE,
        is_read VARCHAR2(8),
        bar_code VARCHAR2(32),
        result VARCHAR2(8),
        name VARCHAR2(32),
        data_id VARCHAR2(32),
        ctrl_code VARCHAR2(8),
        fromat VARCHAR2(8),
        is_block VARCHAR2(8),
        std_value VARCHAR2(512),
        top_limit VARCHAR2(32),
        bottom_limit VARCHAR2(32),
        value VARCHAR2(512),
        test_count NUMBER(4)
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
      dbms_output.put_line('脚本已跳过，因为 F_D_ARGS_CHECK_HIS 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table F_D_ARGS_CHECK_HIS
      is ''参数检查历史表''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_ARGS_CHECK_HIS.CHECK_ID
      is ''主键ID''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_ARGS_CHECK_HIS.TASK_NO
      is ''对应《分拣结果信息表》中的“任务编号”task_no''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_ARGS_CHECK_HIS.TEST_PLAN_NO
      is ''分拣方案编号或者抽样核查方案编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_ARGS_CHECK_HIS.ITEM_NO
      is ''检测项目编码''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_ARGS_CHECK_HIS.LINE_NUMBER
      is ''行号执行顺序''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_ARGS_CHECK_HIS.TYPE_CODE
      is ''业务类型 01 分拣检测 02 抽样核查''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_ARGS_CHECK_HIS.CREATE_DATE
      is ''记录生成时间''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_ARGS_CHECK_HIS.IS_READ
      is ''记录是否被系统读取，0 未读取 1 已读取''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_ARGS_CHECK_HIS.BAR_CODE
      is ''设备条码''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_ARGS_CHECK_HIS.RESULT
      is ''0 不合格 1 合格''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_ARGS_CHECK_HIS.NAME
      is ''645数据项名称''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_ARGS_CHECK_HIS.DATA_ID
      is ''645数据标识''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_ARGS_CHECK_HIS.CTRL_CODE
      is ''645控制码''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_ARGS_CHECK_HIS.FROMAT
      is ''根据需求，后续再定义''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_ARGS_CHECK_HIS.IS_BLOCK
      is ''0 非数据块 1 数据块''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_ARGS_CHECK_HIS.STD_VALUE
      is ''标准值''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_ARGS_CHECK_HIS.TOP_LIMIT
      is ''判断上限''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_ARGS_CHECK_HIS.BOTTOM_LIMIT
      is ''判断上限''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_ARGS_CHECK_HIS.VALUE
      is ''最多可容纳256字节，满足645要求''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_D_ARGS_CHECK_HIS.TEST_COUNT
      is ''分拣次数，从1开始''
    ';
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_INDEXES U WHERE u.INDEX_NAME = 'PK_F_D_ARGS_CHECK_HIS';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table F_D_ARGS_CHECK_HIS
      add constraint PK_F_D_ARGS_CHECK_HIS primary key (CHECK_ID)
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
      dbms_output.put_line('脚本已跳过，因为 PK_F_D_ARGS_CHECK_HIS 已存在。');
    END IF;
END;
/
prompt
prompt 正在处理纪录编号为 8200000000014353 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    EXECUTE IMMEDIATE
    '
      comment on column CALI_SITECHK_TASK_DET.oper_id
      is ''操作标识''
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000014482 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Tables U WHERE U.TABLE_NAME = 'F_REPICK_CONFIG_ELIMINATE_PROD';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
        create table F_REPICK_CONFIG_ELIMINATE_PROD
        (
        record_id NUMBER(16) not null,
        product_sort_code VARCHAR2(16),
        sort_code VARCHAR2(16),
        model_code VARCHAR2(16),
        manufacturer VARCHAR2(16),
        volt_code VARCHAR2(16),
        rated_current VARCHAR2(16),
        ap_pre_level_code VARCHAR2(16),
        prod_cat_no VARCHAR2(16)
        )
        tablespace MPAC_E
        pctfree 10
        initrans 1
        maxtrans 255
        storage
        (
        initial 256K
        next 1M
        minextents 1
        maxextents unlimited
        )
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 F_REPICK_CONFIG_ELIMINATE_PROD 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table F_REPICK_CONFIG_ELIMINATE_PROD
      is ''处置算法淘汰品规配置表''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_REPICK_CONFIG_ELIMINATE_PROD.record_id
      is ''主键ID''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_REPICK_CONFIG_ELIMINATE_PROD.product_sort_code
      is ''产品类别。01电能表 VW_EQUIP_CATEG''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_REPICK_CONFIG_ELIMINATE_PROD.sort_code
      is ''设备类别 Vw_Meter_Sort_Code''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_REPICK_CONFIG_ELIMINATE_PROD.model_code
      is ''型号 VW_MET_MODEL''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_REPICK_CONFIG_ELIMINATE_PROD.manufacturer
      is ''生产厂家 VW_METER_MANUFACTURER''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_REPICK_CONFIG_ELIMINATE_PROD.volt_code
      is ''电压 01电能表：VW_METER_VOLT_CODE''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_REPICK_CONFIG_ELIMINATE_PROD.rated_current
      is ''电流 01电能表：VW_RATED_CURRENT''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_REPICK_CONFIG_ELIMINATE_PROD.ap_pre_level_code
      is ''有功准确度等级 VW_AP_PRE_LEVEL_CODE''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_REPICK_CONFIG_ELIMINATE_PROD.prod_cat_no
      is ''淘汰产品目录编号''
    ';
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_INDEXES U WHERE u.INDEX_NAME = 'PK_REPICK_CONFIG_ELIM_PROD';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table F_REPICK_CONFIG_ELIMINATE_PROD
      add constraint PK_REPICK_CONFIG_ELIM_PROD primary key (record_id)
      using index
      tablespace mpac_E_IDX
      pctfree 10
      initrans 2
      maxtrans 255
      storage
      (
      initial 64K
      next 1M
      minextents 1
      maxextents unlimited
      )
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 PK_REPICK_CONFIG_ELIM_PROD 已存在。');
    END IF;
END;
/
prompt
prompt 正在处理纪录编号为 8200000000014562 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'F_D_SCHEME_CONFIG' AND U.COLUMN_NAME='IS_BASE_DATA';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table F_D_SCHEME_CONFIG add is_base_data VARCHAR2(2)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 F_D_SCHEME_CONFIG.is_base_data 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column F_D_SCHEME_CONFIG.is_base_data
      is ''0：为新增数据 1为基础数据''
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000014642 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'D_HPLCID_ALARM' AND U.COLUMN_NAME='CHIP_ID';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table D_HPLCID_ALARM drop column chip_id
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 D_HPLCID_ALARM.CHIP_ID 不存在。');
    END IF;
END;
/
prompt
prompt 正在处理纪录编号为 8200000000014643 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'D_HPLCID_ALARM' AND U.COLUMN_NAME='HPLC_ID';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table D_HPLCID_ALARM add hplc_id VARCHAR2(50)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 D_HPLCID_ALARM.hplc_id 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column D_HPLCID_ALARM.hplc_id
      is ''芯片ID号''
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000014646 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'D_MODULE_EQUIP_RELA' AND U.COLUMN_NAME='HPLC_ID';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table D_MODULE_EQUIP_RELA add hplc_id VARCHAR2(48)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 D_MODULE_EQUIP_RELA.hplc_id 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column D_MODULE_EQUIP_RELA.hplc_id
      is ''芯片ID号''
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000014667 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_INDEXES U WHERE u.INDEX_NAME = 'IDX_SEAL_BOX';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      create index IDX_SEAL_BOX on A_SEAL_DOC (BOX_BAR_CODE)
      tablespace MPAC_A_IDX
      pctfree 10
      initrans 255
      maxtrans 255
      storage
      (
      initial 64K
      next 1M
      minextents 1
      maxextents unlimited
      )
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 IDX_SEAL_BOX 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_INDEXES U WHERE u.INDEX_NAME = 'IDX_SEAL_CASE';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      create index IDX_SEAL_CASE on A_SEAL_DOC (CASE_BAR_CODE)
      tablespace MPAC_A_IDX
      pctfree 10
      initrans 255
      maxtrans 255
      storage
      (
      initial 64K
      next 1M
      minextents 1
      maxextents unlimited
      )
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 IDX_SEAL_CASE 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_INDEXES U WHERE u.INDEX_NAME = 'IDX_SEAL_BOARD';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      create index IDX_SEAL_BOARD on A_SEAL_DOC (BOARD_BAR_CODE)
      tablespace MPAC_A_IDX
      pctfree 10
      initrans 255
      maxtrans 255
      storage
      (
      initial 64K
      next 1M
      minextents 1
      maxextents unlimited
      )
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 IDX_SEAL_BOARD 已存在。');
    END IF;
END;
/
prompt
prompt 正在处理纪录编号为 8200000000014775 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'F_REPICK_CHG_WH_TASK' AND U.COLUMN_NAME='EQUIP_CODE';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table F_REPICK_CHG_WH_TASK add equip_code VARCHAR2(32)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 F_REPICK_CHG_WH_TASK.equip_code 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column F_REPICK_CHG_WH_TASK.equip_code
      is ''设备码''
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000014797 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'T_DETECT_TMNL_RSLT' AND U.COLUMN_NAME='HPLC_CERT_CONC_CODE';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table T_DETECT_TMNL_RSLT add hplc_cert_conc_code VARCHAR2(8)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 T_DETECT_TMNL_RSLT.hplc_cert_conc_code 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column T_DETECT_TMNL_RSLT.hplc_cert_conc_code
      is ''HPLC芯片ID认证结果，01：合格，02：不合格''
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000014798 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'T_DETECT_COMM_RSLT' AND U.COLUMN_NAME='HPLC_CERT_CONC_CODE';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table T_DETECT_COMM_RSLT add hplc_cert_conc_code VARCHAR2(8)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 T_DETECT_COMM_RSLT.hplc_cert_conc_code 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column T_DETECT_COMM_RSLT.hplc_cert_conc_code
      is ''HPLC芯片ID认证结果，01：合格，02：不合格''
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000014937 的脚本
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
prompt
prompt 正在处理纪录编号为 8200000000015002 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Tables U WHERE U.TABLE_NAME = 'F_WAREHOUSING_PARAMETER';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
        create table F_WAREHOUSING_PARAMETER
        (
        parameter_id NUMBER(16) not null,
        process_conc VARCHAR2(8),
        org_no VARCHAR2(16),
        wh_id NUMBER(16),
        wh_area_id NUMBER(16)
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
      dbms_output.put_line('脚本已跳过，因为 F_WAREHOUSING_PARAMETER 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table F_WAREHOUSING_PARAMETER
      is ''分拣检测库房库区配置表''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_WAREHOUSING_PARAMETER.PARAMETER_ID
      is ''配置参数标识''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_WAREHOUSING_PARAMETER.PROCESS_CONC
      is ''处置结论.分拣处理结论。VW_REPICK_PROCESS_CODE''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_WAREHOUSING_PARAMETER.ORG_NO
      is ''发证的供电单位编号。''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_WAREHOUSING_PARAMETER.WH_ID
      is ''库房标识''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_WAREHOUSING_PARAMETER.WH_AREA_ID
      is ''库区标识''
    ';
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_INDEXES U WHERE u.INDEX_NAME = 'PK_F_WAREHOUSING_PARAMETER';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table F_WAREHOUSING_PARAMETER
      add constraint PK_F_WAREHOUSING_PARAMETER primary key (PARAMETER_ID)
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
      dbms_output.put_line('脚本已跳过，因为 PK_F_WAREHOUSING_PARAMETER 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Sequences U WHERE u.sequence_name = 'SEQ_F_WAREHOUSING_PARAMETER';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      create sequence SEQ_F_WAREHOUSING_PARAMETER
      minvalue 1
      maxvalue 9999999999999999
      start with 8200000000000000
      increment by 1
      cache 20
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 SEQ_F_WAREHOUSING_PARAMETER 已存在。');
    END IF;
END;
/
prompt
prompt 正在处理纪录编号为 8200000000015162 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'F_D_NOLOAD' AND U.COLUMN_NAME='TEST_COUNT';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table F_D_NOLOAD add test_count NUMBER(4)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 F_D_NOLOAD.test_count 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column F_D_NOLOAD.test_count
      is ''分拣次数，从1开始''
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000015166 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'F_D_NOLOAD' AND U.COLUMN_NAME='TIME_COST';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table F_D_NOLOAD modify TIME_COST VARCHAR2(32)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 F_D_NOLOAD.TIME_COST 不存在。');
    END IF;
END;
/
prompt
prompt 正在处理纪录编号为 8200000000015348 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'F_WAREHOUSING_PARAMETER' AND U.COLUMN_NAME='STORE_AREA_ID';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table F_WAREHOUSING_PARAMETER add store_area_id NUMBER(16)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 F_WAREHOUSING_PARAMETER.store_area_id 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'F_WAREHOUSING_PARAMETER' AND U.COLUMN_NAME='STORE_LOC_ID';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table F_WAREHOUSING_PARAMETER add store_loc_id NUMBER(16)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 F_WAREHOUSING_PARAMETER.store_loc_id 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column F_WAREHOUSING_PARAMETER.store_area_id
      is ''存放区标识''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column F_WAREHOUSING_PARAMETER.store_loc_id
      is ''与储位建立关联''
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000015417 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'F_PIC_INFO' AND U.COLUMN_NAME='BAR_CODE';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table F_PIC_INFO modify bar_code VARCHAR2(32)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 F_PIC_INFO.BAR_CODE 不存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column F_PIC_INFO.bar_code
      is ''条形码''
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000015688 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Tables U WHERE U.TABLE_NAME = 'B_DETECT_PERSON_PARAM';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
        create table B_DETECT_PERSON_PARAM
        (
        param_id NUMBER(16) not null,
        equip_categ VARCHAR2(8),
        detect_type VARCHAR2(8),
        detect_mode VARCHAR2(8),
        exec_group VARCHAR2(16),
        exec_resp_no VARCHAR2(16),
        exec_resp_name VARCHAR2(64)
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
      dbms_output.put_line('脚本已跳过，因为 B_DETECT_PERSON_PARAM 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table B_DETECT_PERSON_PARAM
      is ''检定人员配置表''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column B_DETECT_PERSON_PARAM.PARAM_ID
      is ''配置ID（主键）''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column B_DETECT_PERSON_PARAM.EQUIP_CATEG
      is ''设备类别''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column B_DETECT_PERSON_PARAM.DETECT_TYPE
      is ''检定类别''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column B_DETECT_PERSON_PARAM.DETECT_MODE
      is ''检定方式''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column B_DETECT_PERSON_PARAM.EXEC_GROUP
      is ''检定班组''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column B_DETECT_PERSON_PARAM.EXEC_RESP_NO
      is ''检定人员编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column B_DETECT_PERSON_PARAM.EXEC_RESP_NAME
      is ''检定人员''
    ';
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_INDEXES U WHERE u.INDEX_NAME = 'PK_B_DETECT_PERSON_PARAM';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table B_DETECT_PERSON_PARAM
      add constraint PK_B_DETECT_PERSON_PARAM primary key (PARAM_ID)
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
      dbms_output.put_line('脚本已跳过，因为 PK_B_DETECT_PERSON_PARAM 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Sequences U WHERE u.sequence_name = 'SEQ_B_DETECT_PERSON_PARAM';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      create sequence SEQ_B_DETECT_PERSON_PARAM
      minvalue 1
      maxvalue 9999999999999999
      start with 8200000000000000
      increment by 1
      cache 20
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 SEQ_B_DETECT_PERSON_PARAM 已存在。');
    END IF;
END;
/

prompt
prompt 正在处理纪录编号为 8200000000015567 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT COUNT(1) into num FROM p_code_sort_std WHERE code_type = 'commDocMode';
    IF num = 0 THEN
      INSERT INTO p_code_sort_std
      (CODE_SORT_ID, NAME, MAINT_TYPE_CODE, MAINT_ORG_NO, VN, CODE_TYPE, VALID_FLAG, EFFECT_DATE, PROVINCE, VIEW_NAME, HANDLE_TYPE)
      VALUES(seq_p_code_sort_std.nextval, '通信模块建档方式', '', '', '开发P_CODE', 'commDocMode', '1', '', '南京', 'VW_COMM_DOC_MODE', '1');
    ELSE
      dbms_output.put_line('脚本已跳过，因为 commDocMode 已存在。');
    END IF;
    SELECT COUNT(1) into num FROM p_code_std WHERE code_type = 'commDocMode' and value = '01';
    IF num = 0 THEN
      INSERT INTO p_code_std
      (CODE_ID, CODE_SORT_ID, P_CODE, CODE_TYPE, ORG_NO, VALUE, NAME, DISP_SN, CONTENT1, CONTENT2, CONTENT3, CONTENT4, CONTENT5, PROVINCE, CONTENT6, CONTENT7, CONTENT8, CONTENT9, HANDLE_TYPE, HANDLE_PROVINCE)
      SELECT seq_p_code_std.nextval,p.code_sort_id, '',p.code_type,'','01','单独建档', '', '', '', '', '', '开发P_CODE','', '', '南京2019/5/9', '', '', '', ''
      FROM p_code_sort_std p
      WHERE p.code_type = 'commDocMode';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 编码:commDocMode 值:01 已存在。');
    END IF;
    SELECT COUNT(1) into num FROM p_code_std WHERE code_type = 'commDocMode' and value = '02';
    IF num = 0 THEN
      INSERT INTO p_code_std
      (CODE_ID, CODE_SORT_ID, P_CODE, CODE_TYPE, ORG_NO, VALUE, NAME, DISP_SN, CONTENT1, CONTENT2, CONTENT3, CONTENT4, CONTENT5, PROVINCE, CONTENT6, CONTENT7, CONTENT8, CONTENT9, HANDLE_TYPE, HANDLE_PROVINCE)
      SELECT seq_p_code_std.nextval,p.code_sort_id, '',p.code_type,'','02','随主设备导入建档', '', '', '', '', '', '开发P_CODE','', '', '南京2019/5/9', '', '', '', ''
      FROM p_code_sort_std p
      WHERE p.code_type = 'commDocMode';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 编码:commDocMode 值:02 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      CREATE OR REPLACE VIEW VW_COMM_DOC_MODE AS
      SELECT value AS code, name AS code_name FROM p_code_std WHERE code_type = ''commDocMode''
    ';
    EXECUTE IMMEDIATE
    '
      comment on table VW_COMM_DOC_MODE is ''通信模块建档方式''
    ';
    commit;
END;
/

prompt
prompt 正在处理纪录编号为 8200000000016154 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Tables U WHERE U.TABLE_NAME = 'STOCK_POS_CHG_TEMP';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
        create table STOCK_POS_CHG_TEMP
        (
        temp_id NUMBER(16) not null,
        equip_categ VARCHAR2(8),
        bar_code VARCHAR2(32)
        )
        tablespace MPAC_STOCK
        pctfree 10
        initrans 1
        maxtrans 255
        storage
        (
        initial 256K
        next 1M
        minextents 1
        maxextents unlimited
        )
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 STOCK_POS_CHG_TEMP 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table STOCK_POS_CHG_TEMP
      is ''储位变更临时表''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column STOCK_POS_CHG_TEMP.TEMP_ID
      is ''储位变更记录标识''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column STOCK_POS_CHG_TEMP.EQUIP_CATEG
      is ''设备类别''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column STOCK_POS_CHG_TEMP.BAR_CODE
      is ''设备条码号''
    ';
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_INDEXES U WHERE u.INDEX_NAME = 'PK_STOCK_POS_CHG_TEMP';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table STOCK_POS_CHG_TEMP
      add constraint PK_STOCK_POS_CHG_TEMP primary key (TEMP_ID)
      using index
      tablespace MPAC_STOCK_IDX
      pctfree 10
      initrans 2
      maxtrans 255
      storage
      (
      initial 64K
      next 1M
      minextents 1
      maxextents unlimited
      )
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 PK_STOCK_POS_CHG_TEMP 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Sequences U WHERE u.sequence_name = 'SEQ_STOCK_POS_CHG_TEMP';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      create sequence SEQ_STOCK_POS_CHG_TEMP
      minvalue 1
      maxvalue 9999999999999999
      start with 8200000000000000
      increment by 1
      cache 20
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 SEQ_STOCK_POS_CHG_TEMP 已存在。');
    END IF;
END;
/
prompt
prompt 正在处理纪录编号为 8200000000016300 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'F_BACK_WH_TASK' AND U.COLUMN_NAME='UNEXIST_EQUIP_QTY';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table F_BACK_WH_TASK add unexist_equip_qty NUMBER(8) default 0
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 F_BACK_WH_TASK.unexist_equip_qty 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column F_BACK_WH_TASK.unexist_equip_qty
      is ''退库后无实物设备数量''
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000016301 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'F_BACK_TASK_DET' AND U.COLUMN_NAME='CHECK_FLAG';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table F_BACK_TASK_DET add check_flag VARCHAR2(2) default 0
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 F_BACK_TASK_DET.check_flag 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column F_BACK_TASK_DET.check_flag
      is ''退库暂管核对时的核对标志，0-未核对，1-明细与实物一致，2-无实物，默认为0''
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000016550 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'D_IMPORT_EQUIPFILE' AND U.COLUMN_NAME='BUSI_ID';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table D_IMPORT_EQUIPFILE add busi_id NUMBER(16)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 D_IMPORT_EQUIPFILE.busi_id 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'D_IMPORT_EQUIPFILE' AND U.COLUMN_NAME='BUSI_TYPE';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table D_IMPORT_EQUIPFILE add busi_type VARCHAR2(8)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 D_IMPORT_EQUIPFILE.busi_type 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column D_IMPORT_EQUIPFILE.busi_id
      is ''业务标识''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_IMPORT_EQUIPFILE.busi_type
      is ''业务类型。01:到货登记标识，02: 委托任务标识，03：检定任务标识''
    ';
END;
/

prompt
prompt 正在处理纪录编号为 8200000000016809 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
 update f_d_scheme_code f set f.code_name='电源供给异常检查' where f.scheme_code_id='32';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000017116 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'D_COMMUNICATION_MODULE' AND U.COLUMN_NAME='PILE_NO';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table D_COMMUNICATION_MODULE modify pile_no VARCHAR2(320)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 D_COMMUNICATION_MODULE.PILE_NO 不存在。');
    END IF;
END;
/
set feedback on
set define on
set serveroutput off
--------------------------------------------------

