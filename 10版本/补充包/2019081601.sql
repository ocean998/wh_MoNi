----������  2019/5/29 14:22:01
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
  is '��Ļ�ߴ�, VW_HANDHELD_SCREEN_SIZE';
comment on column D_HANDHELD_DEVICE.screen_resolution
  is '��Ļ�ֱ���, VW_HANDHELD_SCREEN_RESOLUTION';
comment on column D_HANDHELD_DEVICE.cpu
  is 'CPU';
comment on column D_HANDHELD_DEVICE.memory
  is '�ڴ�';
comment on column D_HANDHELD_DEVICE.bluetooth_flag
  is '�Ƿ�֧������, VW_YESNO_FLAG';
comment on column D_HANDHELD_DEVICE.photo_flag
  is '�Ƿ�֧������, VW_YESNO_FLAG';
comment on column D_HANDHELD_DEVICE.gps_flag
  is '�Ƿ�֧��GPS��λ, VW_YESNO_FLAG';
comment on column D_HANDHELD_DEVICE.scan_flag
  is '�Ƿ�֧�ֺ���ɨ��, VW_YESNO_FLAG';
comment on column D_HANDHELD_DEVICE.mtread_flag
  is '�Ƿ�֧�ֺ��Ⳮ��, VW_YESNO_FLAG';
comment on column D_HANDHELD_DEVICE.feectl_flag
  is '�Ƿ�֧�ַѿ�, VW_YESNO_FLAG';
comment on column D_HANDHELD_DEVICE.fingerprint_flag
  is '�Ƿ�֧��ָ��, VW_YESNO_FLAG';
comment on column D_HANDHELD_DEVICE.print_flag
  is '�Ƿ�֧��ֱ�Ӵ�ӡ, VW_YESNO_FLAG';
comment on column D_HANDHELD_DEVICE.rfid_flag
  is '�Ƿ�֧��RFID��Ƶɨ��, VW_YESNO_FLAG';
