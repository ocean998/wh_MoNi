--------------------------------------------------
set feedback off
set define off
set serveroutput on
--------------------------------------------------

prompt
prompt 正在处理纪录编号为 8200000000020111 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_TAB_COLUMNS U WHERE u.TABLE_NAME = 'MODULE_EQUIP_RELA' AND U.COLUMN_NAME='COMM_MODULE_ID';
    IF num = 1 THEN
      EXECUTE IMMEDIATE
      '
      alter table MODULE_EQUIP_RELA modify comm_module_id VARCHAR2(32)
      ';
    ELSE
      dbms_output.put_line('脚本已跳过，因为 MODULE_EQUIP_RELA.COMM_MODULE_ID 不存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on column MODULE_EQUIP_RELA.comm_module_id
      is ''通信模块条形码''
    ';
END;
/


prompt
prompt 正在处理纪录编号为 8200000000021924 的脚本
prompt ==========================
DECLARE
  num NUMBER;
BEGIN
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM User_Tables U WHERE U.TABLE_NAME = 'D_HANDHELD_DEVICE';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
        create table D_HANDHELD_DEVICE
        (
        handheld_id NUMBER(16) not null,
        arrive_batch_no VARCHAR2(32),
        lot_no VARCHAR2(32),
        erp_batch_no VARCHAR2(32),
        equip_code VARCHAR2(32),
        bar_code VARCHAR2(32),
        asset_no VARCHAR2(32),
        made_no VARCHAR2(32),
        model_code VARCHAR2(8),
        bid_batch_no VARCHAR2(32),
        manufacturer VARCHAR2(16),
        pr_org VARCHAR2(16),
        belong_dept VARCHAR2(16),
        handset_type_code VARCHAR2(8),
        hardware_ver VARCHAR2(64),
        software_ver VARCHAR2(64),
        handset_model_code VARCHAR2(8),
        handset_child_mode VARCHAR2(32),
        oper_card_no VARCHAR2(64),
        busi_card_no VARCHAR2(64),
        status_code VARCHAR2(8),
        remark VARCHAR2(256),
        org_no VARCHAR2(16),
        rcv_id NUMBER(16),
        checker_no VARCHAR2(16),
        imei VARCHAR2(32),
        meid VARCHAR2(32),
        contract_id NUMBER(16),
        contract_no VARCHAR2(32),
        sort_code VARCHAR2(8),
        screen_size VARCHAR2(8),
        screen_resolution VARCHAR2(8),
        cpu NUMBER(8),
        memory NUMBER(8),
        bluetooth_flag NUMBER(1),
        photo_flag NUMBER(1),
        gps_flag NUMBER(1),
        scan_flag NUMBER(1),
        mtread_flag NUMBER(1),
        feectl_flag NUMBER(1),
        fingerprint_flag NUMBER(1),
        print_flag NUMBER(1),
        rfid_flag NUMBER(1),
        op_date DATE default SYSDATE,
        read_date DATE,
        oper_flag VARCHAR2(2) default ''01''
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
      dbms_output.put_line('脚本已跳过，因为 D_HANDHELD_DEVICE 已存在。');
    END IF;
    EXECUTE IMMEDIATE
    '
      comment on table D_HANDHELD_DEVICE
      is ''现场手持设备档案表。
      1）存放手持终端资产信息，本实体主要包括：类别，型号，内存，尺寸等属性。
      2）由MDS定时同步手持终端接口存储维护数据，采集系统读取''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_HANDHELD_DEVICE.HANDHELD_ID
      is ''设备标识，表主键''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_HANDHELD_DEVICE.ARRIVE_BATCH_NO
      is ''到货批次''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_HANDHELD_DEVICE.LOT_NO
      is ''生产批次''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_HANDHELD_DEVICE.ERP_BATCH_NO
      is ''erp物料号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_HANDHELD_DEVICE.EQUIP_CODE
      is ''设备码''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_HANDHELD_DEVICE.BAR_CODE
      is ''条形码''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_HANDHELD_DEVICE.ASSET_NO
      is ''资产编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_HANDHELD_DEVICE.MADE_NO
      is ''出厂编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_HANDHELD_DEVICE.MODEL_CODE
      is ''型号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_HANDHELD_DEVICE.BID_BATCH_NO
      is ''招标批次号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_HANDHELD_DEVICE.MANUFACTURER
      is ''制造单位，参见计量标准供应商编码''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_HANDHELD_DEVICE.PR_ORG
      is ''产权单位''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_HANDHELD_DEVICE.BELONG_DEPT
      is ''所在单位''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_HANDHELD_DEVICE.HANDSET_TYPE_CODE
      is ''手持机类型代码，01：现场抄表终端，02：用电检查终端，03：计量维护终端，04：采集维护终端，05：应急处理终端，06：移动售电终端，07：资产管理终端，08：全功能终端''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_HANDHELD_DEVICE.HARDWARE_VER
      is ''硬件版本''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_HANDHELD_DEVICE.SOFTWARE_VER
      is ''软件版本''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_HANDHELD_DEVICE.HANDSET_MODEL_CODE
      is ''手持设备型号代码。01：Ⅰ型，02：Ⅱ型，03：Ⅲ型，04：Ⅳ型，05：Ⅴ型。''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_HANDHELD_DEVICE.HANDSET_CHILD_MODE
      is ''手持机规格''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_HANDHELD_DEVICE.OPER_CARD_NO
      is ''操作人员卡号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_HANDHELD_DEVICE.BUSI_CARD_NO
      is ''业务卡号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_HANDHELD_DEVICE.STATUS_CODE
      is ''状态。001：新购、003：待校验、006：合格在库、008：待返厂、009：待报废、010：已发放、011：已领用、013：已返厂、014: 已报废、101：已借用、102：已损坏''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_HANDHELD_DEVICE.REMARK
      is ''备注''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_HANDHELD_DEVICE.ORG_NO
      is ''管理库房的管理单位''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_HANDHELD_DEVICE.RCV_ID
      is ''到货接收的ID''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_HANDHELD_DEVICE.CHECKER_NO
      is ''校验人员编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_HANDHELD_DEVICE.IMEI
      is ''国际移动设备识别码，与MEID字段，至少其中一个必填''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_HANDHELD_DEVICE.MEID
      is ''移动设备识别码，与IMEI字段，至少其中一个必填''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_HANDHELD_DEVICE.CONTRACT_ID
      is ''订货合同ID,用来与订货合同实体进行关联''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_HANDHELD_DEVICE.CONTRACT_NO
      is ''合同编号''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_HANDHELD_DEVICE.SORT_CODE
      is ''类别，备用字段''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_HANDHELD_DEVICE.SCREEN_SIZE
      is ''屏幕尺寸, VW_HANDHELD_SCREEN_SIZE''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_HANDHELD_DEVICE.SCREEN_RESOLUTION
      is ''屏幕分辨率, VW_HANDHELD_SCREEN_RESOLUTION''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_HANDHELD_DEVICE.CPU
      is ''CPU''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_HANDHELD_DEVICE.MEMORY
      is ''内存''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_HANDHELD_DEVICE.BLUETOOTH_FLAG
      is ''是否支持蓝牙, 1：是，0：否''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_HANDHELD_DEVICE.PHOTO_FLAG
      is ''是否支持拍照, 1：是，0：否''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_HANDHELD_DEVICE.GPS_FLAG
      is ''是否支持GPS定位,1：是，0：否''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_HANDHELD_DEVICE.SCAN_FLAG
      is ''是否支持红外扫描, 1：是，0：否''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_HANDHELD_DEVICE.MTREAD_FLAG
      is ''是否支持红外抄表,1：是，0：否''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_HANDHELD_DEVICE.FEECTL_FLAG
      is ''是否支持费控,1：是，0：否''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_HANDHELD_DEVICE.FINGERPRINT_FLAG
      is ''是否支持指纹, 1：是，0：否''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_HANDHELD_DEVICE.PRINT_FLAG
      is ''是否支持直接打印, 1：是，0：否''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_HANDHELD_DEVICE.RFID_FLAG
      is ''是否支持RFID射频扫描, 1：是，0：否''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_HANDHELD_DEVICE.OP_DATE
      is ''写入时间，数据写入中间库的时间''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_HANDHELD_DEVICE.READ_DATE
      is ''采集系统读取数据时间''
    ';
    EXECUTE IMMEDIATE
    '
      comment on column D_HANDHELD_DEVICE.OPER_FLAG
      is ''操作标识，01：待读，02:已读，默认01''
    ';
    SELECT CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END into num FROM USER_INDEXES U WHERE u.INDEX_NAME = 'PK_D_HANDHELD_DEVICE';
    IF num = 0 THEN
      EXECUTE IMMEDIATE
      '
      alter table D_HANDHELD_DEVICE
      add constraint PK_D_HANDHELD_DEVICE primary key (HANDHELD_ID)
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
      dbms_output.put_line('脚本已跳过，因为 PK_D_HANDHELD_DEVICE 已存在。');
    END IF;
END;
/

set feedback on
set define on
set serveroutput off
--------------------------------------------------

