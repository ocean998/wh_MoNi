--------------------------------------------------
set feedback off
set define off
set serveroutput on
--------------------------------------------------

prompt
prompt 正在处理纪录编号为 8200000000010977 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Tables U WHERE U.TABLE_NAME = 'M_D_EMPTYOPEN';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
        create table M_D_EMPTYOPEN
        (
        emptyopen_id NUMBER(16),
        org_no VARCHAR2(16),
        dept_no VARCHAR2(16),
        contract_id NUMBER(16),
        rcv_id NUMBER(16),
        bar_code VARCHAR2(32),
        arrive_batch_no VARCHAR2(32),
        lot_no VARCHAR2(32),
        wh_id NUMBER(16),
        wh_area_id NUMBER(16),
        store_area_id NUMBER(16),
        store_loc_id NUMBER(16),
        type_code VARCHAR2(8),
        model_code VARCHAR2(8),
        manufacturer VARCHAR2(16),
        rv_code VARCHAR2(8),
        rc_code VARCHAR2(8),
        freq_code VARCHAR2(8),
        sc_abt_code VARCHAR2(8),
        eqip_prc NUMBER(16,6),
        equip_code VARCHAR2(32),
        oper_type_code VARCHAR2(8),
        doc_creator_no VARCHAR2(16),
        doc_create_date DATE,
        discard_reason VARCHAR2(256),
        descard_date DATE,
        status_code VARCHAR2(8),
        box_bar_code VARCHAR2(32),
        pr_org_no VARCHAR2(16),
        latest_operator_no VARCHAR2(16),
        latest_operate_date DATE,
        latest_io_wh_id NUMBER(16),
        remark VARCHAR2(256),
        pr_code VARCHAR2(8),
        erp_batch_no VARCHAR2(32),
        trip_type VARCHAR2(8),
        pallet_bar_code VARCHAR2(320),
        pile_no VARCHAR2(320),
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
      dbms_output.put_line('脚本已跳过，因为 M_D_EMPTYOPEN 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table M_D_EMPTYOPEN
      is ''空开档案表''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column M_D_EMPTYOPEN.EMPTYOPEN_ID
      is ''空开ID''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column M_D_EMPTYOPEN.ORG_NO
      is ''空开管理单位''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column M_D_EMPTYOPEN.DEPT_NO
      is ''空开所属部门''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column M_D_EMPTYOPEN.CONTRACT_ID
      is ''合同标识''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column M_D_EMPTYOPEN.RCV_ID
      is ''到货接收的ID''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column M_D_EMPTYOPEN.BAR_CODE
      is ''空开条形码''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column M_D_EMPTYOPEN.ARRIVE_BATCH_NO
      is ''到货批次号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column M_D_EMPTYOPEN.LOT_NO
      is ''生产批次''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column M_D_EMPTYOPEN.WH_ID
      is ''库房标识''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column M_D_EMPTYOPEN.WH_AREA_ID
      is ''库区标识''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column M_D_EMPTYOPEN.STORE_AREA_ID
      is ''存放区标识''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column M_D_EMPTYOPEN.STORE_LOC_ID
      is ''储位标识''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column M_D_EMPTYOPEN.TYPE_CODE
      is ''空开的类型，01普通空开/02电表费控空开/03漏电保护空开/04电表费控漏电保护空开''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column M_D_EMPTYOPEN.MODEL_CODE
      is ''空开型号，手填''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column M_D_EMPTYOPEN.MANUFACTURER
      is ''生产厂家''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column M_D_EMPTYOPEN.RV_CODE
      is ''额定电压,01： 220V/02：3x380V''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column M_D_EMPTYOPEN.RC_CODE
      is ''额定电流,01：63A/02：80A/03：100A''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column M_D_EMPTYOPEN.FREQ_CODE
      is ''额定频率，01：50Hz''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column M_D_EMPTYOPEN.SC_ABT_CODE
      is ''额定短路分断能力，01:4500A''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column M_D_EMPTYOPEN.EQIP_PRC
      is ''设备单价''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column M_D_EMPTYOPEN.EQUIP_CODE
      is ''设备码''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column M_D_EMPTYOPEN.OPER_TYPE_CODE
      is ''空开最后操作类型。01  在用，02 报废，03 丢失，04 召回，05 在途，06 空置''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column M_D_EMPTYOPEN.DOC_CREATOR_NO
      is ''建档人''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column M_D_EMPTYOPEN.DOC_CREATE_DATE
      is ''建档日期''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column M_D_EMPTYOPEN.DISCARD_REASON
      is ''报废原因''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column M_D_EMPTYOPEN.DESCARD_DATE
      is ''报废日期''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column M_D_EMPTYOPEN.STATUS_CODE
      is ''流程状态。01 未提交，02 已提交，03 已归档，15 终止''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column M_D_EMPTYOPEN.BOX_BAR_CODE
      is ''周转箱条形码''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column M_D_EMPTYOPEN.PR_ORG_NO
      is ''空开的产权单位''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column M_D_EMPTYOPEN.LATEST_OPERATOR_NO
      is ''最后操作员''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column M_D_EMPTYOPEN.LATEST_OPERATE_DATE
      is ''最后操作时间''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column M_D_EMPTYOPEN.LATEST_IO_WH_ID
      is ''最后出入库标识''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column M_D_EMPTYOPEN.REMARK
      is ''备注''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column M_D_EMPTYOPEN.PR_CODE
      is ''产权所属''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column M_D_EMPTYOPEN.ERP_BATCH_NO
      is ''erp物料号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column M_D_EMPTYOPEN.TRIP_TYPE
      is ''空开脱扣类型，C型，D型''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column M_D_EMPTYOPEN.PALLET_BAR_CODE
      is ''托盘条码''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column M_D_EMPTYOPEN.PILE_NO
      is ''垛号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column M_D_EMPTYOPEN.CHECKER_NO
      is ''校验人员编号''
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000011002 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Tables U WHERE U.TABLE_NAME = 'M_D_HANDHELD_DEVICE';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
        create table M_D_HANDHELD_DEVICE
        (
        handheld_id NUMBER(16),
        arrive_batch_no VARCHAR2(32),
        lot_no VARCHAR2(32),
        erp_batch_no VARCHAR2(32),
        equip_code VARCHAR2(32),
        equip_categ VARCHAR2(8),
        bar_code VARCHAR2(32),
        asset_no VARCHAR2(32),
        made_no VARCHAR2(32),
        model_code VARCHAR2(8),
        bid_batch_no VARCHAR2(32),
        manufacturer VARCHAR2(16),
        pr_org VARCHAR2(16),
        belong_dept VARCHAR2(16),
        wh_id NUMBER(16),
        wh_area_id NUMBER(16),
        store_loc_id NUMBER(16),
        handset_type_code VARCHAR2(8),
        hardware_ver VARCHAR2(64),
        software_ver VARCHAR2(64),
        handset_model_code VARCHAR2(8),
        handset_child_mode VARCHAR2(32),
        emp_no VARCHAR2(32),
        disp_date DATE,
        oper_card_no VARCHAR2(64),
        busi_card_no VARCHAR2(64),
        return_no VARCHAR2(32),
        return_date DATE,
        status_code VARCHAR2(8),
        remark VARCHAR2(256),
        imei VARCHAR2(32),
        meid VARCHAR2(32)
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
      dbms_output.put_line('脚本已跳过，因为 M_D_HANDHELD_DEVICE 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table M_D_HANDHELD_DEVICE
      is ''手持终端档案表''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column M_D_HANDHELD_DEVICE.HANDHELD_ID
      is ''设备标识''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column M_D_HANDHELD_DEVICE.ARRIVE_BATCH_NO
      is ''到货批次''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column M_D_HANDHELD_DEVICE.LOT_NO
      is ''生产批次''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column M_D_HANDHELD_DEVICE.ERP_BATCH_NO
      is ''erp物料号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column M_D_HANDHELD_DEVICE.EQUIP_CODE
      is ''设备码''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column M_D_HANDHELD_DEVICE.EQUIP_CATEG
      is ''设备类别''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column M_D_HANDHELD_DEVICE.BAR_CODE
      is ''条形码''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column M_D_HANDHELD_DEVICE.ASSET_NO
      is ''资产编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column M_D_HANDHELD_DEVICE.MADE_NO
      is ''出厂编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column M_D_HANDHELD_DEVICE.MODEL_CODE
      is ''型号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column M_D_HANDHELD_DEVICE.BID_BATCH_NO
      is ''招标批次号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column M_D_HANDHELD_DEVICE.MANUFACTURER
      is ''制造单位''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column M_D_HANDHELD_DEVICE.PR_ORG
      is ''产权单位''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column M_D_HANDHELD_DEVICE.BELONG_DEPT
      is ''所在单位''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column M_D_HANDHELD_DEVICE.WH_ID
      is ''库房ID''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column M_D_HANDHELD_DEVICE.WH_AREA_ID
      is ''库区ID''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column M_D_HANDHELD_DEVICE.STORE_LOC_ID
      is ''储位标识''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column M_D_HANDHELD_DEVICE.HANDSET_TYPE_CODE
      is ''手持机类型代码''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column M_D_HANDHELD_DEVICE.HARDWARE_VER
      is ''硬件版本''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column M_D_HANDHELD_DEVICE.SOFTWARE_VER
      is ''软件版本''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column M_D_HANDHELD_DEVICE.HANDSET_MODEL_CODE
      is ''手持设备型号代码''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column M_D_HANDHELD_DEVICE.HANDSET_CHILD_MODE
      is ''手持机规格''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column M_D_HANDHELD_DEVICE.EMP_NO
      is ''领用人员编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column M_D_HANDHELD_DEVICE.DISP_DATE
      is ''领用时间''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column M_D_HANDHELD_DEVICE.OPER_CARD_NO
      is ''操作人员卡号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column M_D_HANDHELD_DEVICE.BUSI_CARD_NO
      is ''业务卡号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column M_D_HANDHELD_DEVICE.RETURN_NO
      is ''返还时间''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column M_D_HANDHELD_DEVICE.RETURN_DATE
      is ''返还人''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column M_D_HANDHELD_DEVICE.STATUS_CODE
      is ''状态''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column M_D_HANDHELD_DEVICE.REMARK
      is ''备注''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column M_D_HANDHELD_DEVICE.IMEI
      is ''IMEI号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column M_D_HANDHELD_DEVICE.MEID
      is ''MEID号''
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000011004 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_INDEXES U WHERE u.INDEX_NAME = 'IDX_HANDHELD_DEVICE_BARCODE';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      create index idx_HANDHELD_DEVICE_barcode on M_D_HANDHELD_DEVICE (bar_code)
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
      dbms_output.put_line('脚本已跳过，因为 IDX_HANDHELD_DEVICE_BARCODE 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_INDEXES U WHERE u.INDEX_NAME = 'IDX_HANDHELD_DEVICE_ARRIVE';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      create index idx_HANDHELD_DEVICE_arrive on M_D_HANDHELD_DEVICE (arrive_batch_no)
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
      dbms_output.put_line('脚本已跳过，因为 IDX_HANDHELD_DEVICE_ARRIVE 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_INDEXES U WHERE u.INDEX_NAME = 'IDX_EMPTYOPEN_BARCODE';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      create index idx_EMPTYOPEN_barcode on M_D_EMPTYOPEN (bar_code)
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
      dbms_output.put_line('脚本已跳过，因为 IDX_EMPTYOPEN_BARCODE 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_INDEXES U WHERE u.INDEX_NAME = 'IDX_EMPTYOPEN_ARRIVE';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      create index idx_EMPTYOPEN_arrive on M_D_EMPTYOPEN (arrive_batch_no)
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
      dbms_output.put_line('脚本已跳过，因为 IDX_EMPTYOPEN_ARRIVE 已存在。');
    END IF;
END;
/
prompt
prompt 正在处理纪录编号为 8200000000011006 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'M_D_METER' AND U.COLUMN_NAME='AUXILIARY_POWER';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table M_D_METER add auxiliary_power VARCHAR2(8)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 M_D_METER.auxiliary_power 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'M_D_METER' AND U.COLUMN_NAME='INSULATE_FLAG';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table M_D_METER add insulate_flag VARCHAR2(8)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 M_D_METER.insulate_flag 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'M_D_METER' AND U.COLUMN_NAME='INTERNAL_RESISTANCE';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table M_D_METER add internal_resistance VARCHAR2(8)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 M_D_METER.internal_resistance 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column M_D_METER.auxiliary_power
      is ''辅助电源（VW_AUXILIARY_POWER）''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column M_D_METER.insulate_flag
      is ''电压电流回路是否隔离（vw_yesno_flag）''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column M_D_METER.internal_resistance
      is ''电流回路输入内阻''
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000011007 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'M_D_IT' AND U.COLUMN_NAME='RESISTANCE_STRUCTURE';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table M_D_IT add resistance_structure VARCHAR2(8)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 M_D_IT.resistance_structure 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column M_D_IT.resistance_structure
      is ''电阻结构。 vw_shunt_resistance_structure''
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000011541 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'M_D_EMPTYOPEN' AND U.COLUMN_NAME='SORT_CODE';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table M_D_EMPTYOPEN add sort_code VARCHAR2(8)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 M_D_EMPTYOPEN.sort_code 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column M_D_EMPTYOPEN.sort_code
      is ''类别''
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000012409 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'M_D_HANDHELD_DEVICE' AND U.COLUMN_NAME='ORG_NO';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table M_D_HANDHELD_DEVICE add org_no VARCHAR2(16)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 M_D_HANDHELD_DEVICE.org_no 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'M_D_HANDHELD_DEVICE' AND U.COLUMN_NAME='RCV_ID';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table M_D_HANDHELD_DEVICE add rcv_id NUMBER(16)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 M_D_HANDHELD_DEVICE.rcv_id 已存在。');
    END IF;
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'M_D_HANDHELD_DEVICE' AND U.COLUMN_NAME='CONTRACT_ID';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table M_D_HANDHELD_DEVICE add contract_id NUMBER(16)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 M_D_HANDHELD_DEVICE.contract_id 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column M_D_HANDHELD_DEVICE.org_no
      is ''管理单位''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column M_D_HANDHELD_DEVICE.rcv_id
      is ''到货登记标识''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column M_D_HANDHELD_DEVICE.contract_id
      is ''合同标识''
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000012478 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'M_D_EMPTYOPEN' AND U.COLUMN_NAME='LATEST_CHK_DATE';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table M_D_EMPTYOPEN add latest_chk_date DATE
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 M_D_EMPTYOPEN.latest_chk_date 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column M_D_EMPTYOPEN.latest_chk_date
      is ''最近检定日期''
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000012669 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'M_D_EMPTYOPEN' AND U.COLUMN_NAME='WIRING_MODE';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table M_D_EMPTYOPEN add wiring_mode VARCHAR2(8)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 M_D_EMPTYOPEN.wiring_mode 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column M_D_EMPTYOPEN.wiring_mode
      is ''接线方式，参考VW_WIRING_MODE''
    ';
END;
/
prompt
prompt 正在处理纪录编号为 8200000000012836 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    EXECUTE IMMEDIATE
    '
      comment on column M_D_COMMUNICATION_MODULE.comm_sort_code
      is ''通信模块类别。VW_COMM_MODULE_KIND''
    ';
END;
/

set feedback on
set define on
set serveroutput off
--------------------------------------------------

