--------------------------------------------------
set feedback off
set define off
set serveroutput on
--------------------------------------------------

prompt
prompt 正在处理纪录编号为 8200000000015569 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'C_ARRIVE_CHECK_IN' AND U.COLUMN_NAME='DOC_MODE';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table C_ARRIVE_CHECK_IN add doc_mode VARCHAR2(8) default 01
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 C_ARRIVE_CHECK_IN.doc_mode 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column C_ARRIVE_CHECK_IN.doc_mode
      is ''通信模块建档方式，01: 单独建档（默认），02：随主设备导入建档,VW_COMM_DOC_MODE''
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000015575 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Tables U WHERE U.TABLE_NAME = 'T_HPLCID_CERT_IMPORT';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
        create table T_HPLCID_CERT_IMPORT
        (
        record_id NUMBER(16) not null,
        detect_task_no VARCHAR2(16),
        module_bar_code VARCHAR2(32),
        hplcid VARCHAR2(48),
        equip_bar_code VARCHAR2(32)
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
      dbms_output.put_line('脚本已跳过，因为 T_HPLCID_CERT_IMPORT 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table T_HPLCID_CERT_IMPORT
      is ''HPLC芯片ID认证信息导入表''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_HPLCID_CERT_IMPORT.RECORD_ID
      is ''本实体记录的唯一标识''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_HPLCID_CERT_IMPORT.DETECT_TASK_NO
      is ''检定任务单号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_HPLCID_CERT_IMPORT.MODULE_BAR_CODE
      is ''通信模块条码''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_HPLCID_CERT_IMPORT.HPLCID
      is ''芯片ID，此字段必填''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_HPLCID_CERT_IMPORT.EQUIP_BAR_CODE
      is ''主体设备条码''
    ';
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_INDEXES U WHERE u.INDEX_NAME = 'PK_T_HPLCID_CERT_IMPORT';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table T_HPLCID_CERT_IMPORT
      add constraint PK_T_HPLCID_CERT_IMPORT primary key (RECORD_ID)
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
      dbms_output.put_line('脚本已跳过，因为 PK_T_HPLCID_CERT_IMPORT 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Sequences U WHERE u.sequence_name = 'SEQ_T_HPLCID_CERT_IMPORT';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      create sequence SEQ_T_HPLCID_CERT_IMPORT
      minvalue 1
      maxvalue 9999999999999999
      start with 8200000000000000
      increment by 1
      cache 20
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 SEQ_T_HPLCID_CERT_IMPORT 已存在。');
    END IF;
END;
/
prompt
prompt 正在处理纪录编号为 8200000000015592 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'T_HPLCID_CERT_IMPORT' AND U.COLUMN_NAME='DATA_VALIDITY';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table T_HPLCID_CERT_IMPORT add data_validity VARCHAR2(8)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 T_HPLCID_CERT_IMPORT.data_validity 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'T_HPLCID_CERT_IMPORT' AND U.COLUMN_NAME='ID_LEGITIMACY';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table T_HPLCID_CERT_IMPORT add id_legitimacy VARCHAR2(8)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 T_HPLCID_CERT_IMPORT.id_legitimacy 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column T_HPLCID_CERT_IMPORT.data_validity
      is ''数据校验，01：全部正确，02：通信模块不正确 ，03：主体设备不正确''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column T_HPLCID_CERT_IMPORT.id_legitimacy
      is ''ID合法性校验，0：未校验 ，1：合法，2：不合法''
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000015608 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'T_HPLCID_CERT_IMPORT' AND U.COLUMN_NAME='ROW_NUM';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table T_HPLCID_CERT_IMPORT add row_num NUMBER
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 T_HPLCID_CERT_IMPORT.row_num 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column T_HPLCID_CERT_IMPORT.row_num
      is ''行索引''
    ';
END;
/

set feedback on
set define on
set serveroutput off
--------------------------------------------------

