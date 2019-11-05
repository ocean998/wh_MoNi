----夏永刚  2019/5/29 14:22:01
-- Add/modify columns 
alter table D_HANDHELD_DEVICE add screen_size VARCHAR2(8);
alter table D_HANDHELD_DEVICE add screen_resolution VARCHAR2(8);
alter table D_HANDHELD_DEVICE add cpu NUMBER(8);
alter table D_HANDHELD_DEVICE add memory NUMBER(8);
alter table D_HANDHELD_DEVICE add bluetooth_flag NUMBER(1);
alter table D_HANDHELD_DEVICE add photo_flag NUMBER(1);
alter table D_HANDHELD_DEVICE add gps_flag NUMBER(1);
alter table D_HANDHELD_DEVICE add scan_flag NUMBER(1);
alter table D_HANDHELD_DEVICE add mtread_flag NUMBER(1);
alter table D_HANDHELD_DEVICE add feectl_flag NUMBER(1);
alter table D_HANDHELD_DEVICE add fingerprint_flag NUMBER(1);
alter table D_HANDHELD_DEVICE add print_flag NUMBER(1);
alter table D_HANDHELD_DEVICE add rfid_flag NUMBER(1);
-- Add comments to the columns 
comment on column D_HANDHELD_DEVICE.screen_size
  is '屏幕尺寸, VW_HANDHELD_SCREEN_SIZE';
comment on column D_HANDHELD_DEVICE.screen_resolution
  is '屏幕分辨率, VW_HANDHELD_SCREEN_RESOLUTION';
comment on column D_HANDHELD_DEVICE.cpu
  is 'CPU';
comment on column D_HANDHELD_DEVICE.memory
  is '内存';
comment on column D_HANDHELD_DEVICE.bluetooth_flag
  is '是否支持蓝牙, VW_YESNO_FLAG';
comment on column D_HANDHELD_DEVICE.photo_flag
  is '是否支持拍照, VW_YESNO_FLAG';
comment on column D_HANDHELD_DEVICE.gps_flag
  is '是否支持GPS定位, VW_YESNO_FLAG';
comment on column D_HANDHELD_DEVICE.scan_flag
  is '是否支持红外扫描, VW_YESNO_FLAG';
comment on column D_HANDHELD_DEVICE.mtread_flag
  is '是否支持红外抄表, VW_YESNO_FLAG';
comment on column D_HANDHELD_DEVICE.feectl_flag
  is '是否支持费控, VW_YESNO_FLAG';
comment on column D_HANDHELD_DEVICE.fingerprint_flag
  is '是否支持指纹, VW_YESNO_FLAG';
comment on column D_HANDHELD_DEVICE.print_flag
  is '是否支持直接打印, VW_YESNO_FLAG';
comment on column D_HANDHELD_DEVICE.rfid_flag
  is '是否支持RFID射频扫描, VW_YESNO_FLAG';
