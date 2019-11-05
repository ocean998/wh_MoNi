----夏永刚  2019/5/29 13:53:52
INSERT INTO p_code_sort_std
(CODE_SORT_ID, NAME, MAINT_TYPE_CODE, MAINT_ORG_NO, VN, CODE_TYPE, VALID_FLAG, EFFECT_DATE, PROVINCE, VIEW_NAME, HANDLE_TYPE)
VALUES(seq_p_code_sort_std.nextval, '手持设备屏幕尺寸', '', '', '开发P_CODE', 'handheldScreenSize', '1', '', '南京', 'VW_HANDHELD_SCREEN_SIZE', '1');
INSERT INTO p_code_std
  (CODE_ID, CODE_SORT_ID, P_CODE, CODE_TYPE, ORG_NO, VALUE, NAME, DISP_SN, CONTENT1, CONTENT2, CONTENT3, CONTENT4, CONTENT5, PROVINCE, CONTENT6, CONTENT7, CONTENT8, CONTENT9, HANDLE_TYPE, HANDLE_PROVINCE)
  SELECT seq_p_code_std.nextval,p.code_sort_id, '',p.code_type,'','01','3.5寸', '', '', '', '', '', '开发P_CODE','', '', '南京2019/5/29', '', '', '', ''
    FROM p_code_sort_std p
   WHERE p.code_type = 'handheldScreenSize';
INSERT INTO p_code_std
  (CODE_ID, CODE_SORT_ID, P_CODE, CODE_TYPE, ORG_NO, VALUE, NAME, DISP_SN, CONTENT1, CONTENT2, CONTENT3, CONTENT4, CONTENT5, PROVINCE, CONTENT6, CONTENT7, CONTENT8, CONTENT9, HANDLE_TYPE, HANDLE_PROVINCE)
  SELECT seq_p_code_std.nextval,p.code_sort_id, '',p.code_type,'','02','5寸', '', '', '', '', '', '开发P_CODE','', '', '南京2019/5/29', '', '', '', ''
    FROM p_code_sort_std p
   WHERE p.code_type = 'handheldScreenSize';
INSERT INTO p_code_std
  (CODE_ID, CODE_SORT_ID, P_CODE, CODE_TYPE, ORG_NO, VALUE, NAME, DISP_SN, CONTENT1, CONTENT2, CONTENT3, CONTENT4, CONTENT5, PROVINCE, CONTENT6, CONTENT7, CONTENT8, CONTENT9, HANDLE_TYPE, HANDLE_PROVINCE)
  SELECT seq_p_code_std.nextval,p.code_sort_id, '',p.code_type,'','03','6寸', '', '', '', '', '', '开发P_CODE','', '', '南京2019/5/29', '', '', '', ''
    FROM p_code_sort_std p
   WHERE p.code_type = 'handheldScreenSize';
INSERT INTO p_code_std
  (CODE_ID, CODE_SORT_ID, P_CODE, CODE_TYPE, ORG_NO, VALUE, NAME, DISP_SN, CONTENT1, CONTENT2, CONTENT3, CONTENT4, CONTENT5, PROVINCE, CONTENT6, CONTENT7, CONTENT8, CONTENT9, HANDLE_TYPE, HANDLE_PROVINCE)
  SELECT seq_p_code_std.nextval,p.code_sort_id, '',p.code_type,'','04','7寸', '', '', '', '', '', '开发P_CODE','', '', '南京2019/5/29', '', '', '', ''
    FROM p_code_sort_std p
   WHERE p.code_type = 'handheldScreenSize';
CREATE OR REPLACE VIEW VW_HANDHELD_SCREEN_SIZE AS
SELECT value AS code, name AS code_name FROM p_code_std WHERE code_type = 'handheldScreenSize';
comment on table VW_HANDHELD_SCREEN_SIZE is '手持设备屏幕尺寸';

----夏永刚  2019/5/29 13:57:05
INSERT INTO p_code_sort_std
(CODE_SORT_ID, NAME, MAINT_TYPE_CODE, MAINT_ORG_NO, VN, CODE_TYPE, VALID_FLAG, EFFECT_DATE, PROVINCE, VIEW_NAME, HANDLE_TYPE)
VALUES(seq_p_code_sort_std.nextval, '手持设备屏幕分辨率', '', '', '开发P_CODE', 'handheldscreenResolution', '1', '', '南京', 'VW_HANDHELD_SCREEN_RESOLUTION', '1');
INSERT INTO p_code_std
  (CODE_ID, CODE_SORT_ID, P_CODE, CODE_TYPE, ORG_NO, VALUE, NAME, DISP_SN, CONTENT1, CONTENT2, CONTENT3, CONTENT4, CONTENT5, PROVINCE, CONTENT6, CONTENT7, CONTENT8, CONTENT9, HANDLE_TYPE, HANDLE_PROVINCE)
  SELECT seq_p_code_std.nextval,p.code_sort_id, '',p.code_type,'','02','1024*768', '', '', '', '', '', '开发P_CODE','', '', '南京2019/5/29', '', '', '', ''
    FROM p_code_sort_std p
   WHERE p.code_type = 'handheldscreenResolution';
INSERT INTO p_code_std
  (CODE_ID, CODE_SORT_ID, P_CODE, CODE_TYPE, ORG_NO, VALUE, NAME, DISP_SN, CONTENT1, CONTENT2, CONTENT3, CONTENT4, CONTENT5, PROVINCE, CONTENT6, CONTENT7, CONTENT8, CONTENT9, HANDLE_TYPE, HANDLE_PROVINCE)
  SELECT seq_p_code_std.nextval,p.code_sort_id, '',p.code_type,'','01','1024*600', '', '', '', '', '', '开发P_CODE','', '', '南京2019/5/29', '', '', '', ''
    FROM p_code_sort_std p
   WHERE p.code_type = 'handheldscreenResolution';
INSERT INTO p_code_std
  (CODE_ID, CODE_SORT_ID, P_CODE, CODE_TYPE, ORG_NO, VALUE, NAME, DISP_SN, CONTENT1, CONTENT2, CONTENT3, CONTENT4, CONTENT5, PROVINCE, CONTENT6, CONTENT7, CONTENT8, CONTENT9, HANDLE_TYPE, HANDLE_PROVINCE)
  SELECT seq_p_code_std.nextval,p.code_sort_id, '',p.code_type,'','03','1024*800', '', '', '', '', '', '开发P_CODE','', '', '南京2019/5/29', '', '', '', ''
    FROM p_code_sort_std p
   WHERE p.code_type = 'handheldscreenResolution';
INSERT INTO p_code_std
  (CODE_ID, CODE_SORT_ID, P_CODE, CODE_TYPE, ORG_NO, VALUE, NAME, DISP_SN, CONTENT1, CONTENT2, CONTENT3, CONTENT4, CONTENT5, PROVINCE, CONTENT6, CONTENT7, CONTENT8, CONTENT9, HANDLE_TYPE, HANDLE_PROVINCE)
  SELECT seq_p_code_std.nextval,p.code_sort_id, '',p.code_type,'','04','1280*800', '', '', '', '', '', '开发P_CODE','', '', '南京2019/5/29', '', '', '', ''
    FROM p_code_sort_std p
   WHERE p.code_type = 'handheldscreenResolution';
INSERT INTO p_code_std
  (CODE_ID, CODE_SORT_ID, P_CODE, CODE_TYPE, ORG_NO, VALUE, NAME, DISP_SN, CONTENT1, CONTENT2, CONTENT3, CONTENT4, CONTENT5, PROVINCE, CONTENT6, CONTENT7, CONTENT8, CONTENT9, HANDLE_TYPE, HANDLE_PROVINCE)
  SELECT seq_p_code_std.nextval,p.code_sort_id, '',p.code_type,'','05','1920*1024', '', '', '', '', '', '开发P_CODE','', '', '南京2019/5/29', '', '', '', ''
    FROM p_code_sort_std p
   WHERE p.code_type = 'handheldscreenResolution';
INSERT INTO p_code_std
  (CODE_ID, CODE_SORT_ID, P_CODE, CODE_TYPE, ORG_NO, VALUE, NAME, DISP_SN, CONTENT1, CONTENT2, CONTENT3, CONTENT4, CONTENT5, PROVINCE, CONTENT6, CONTENT7, CONTENT8, CONTENT9, HANDLE_TYPE, HANDLE_PROVINCE)
  SELECT seq_p_code_std.nextval,p.code_sort_id, '',p.code_type,'','06','1920*1080', '', '', '', '', '', '开发P_CODE','', '', '南京2019/5/29', '', '', '', ''
    FROM p_code_sort_std p
   WHERE p.code_type = 'handheldscreenResolution';
INSERT INTO p_code_std
  (CODE_ID, CODE_SORT_ID, P_CODE, CODE_TYPE, ORG_NO, VALUE, NAME, DISP_SN, CONTENT1, CONTENT2, CONTENT3, CONTENT4, CONTENT5, PROVINCE, CONTENT6, CONTENT7, CONTENT8, CONTENT9, HANDLE_TYPE, HANDLE_PROVINCE)
  SELECT seq_p_code_std.nextval,p.code_sort_id, '',p.code_type,'','07','800*600', '', '', '', '', '', '开发P_CODE','', '', '南京2019/5/29', '', '', '', ''
    FROM p_code_sort_std p
   WHERE p.code_type = 'handheldscreenResolution';
CREATE OR REPLACE VIEW VW_HANDHELD_SCREEN_RESOLUTION AS
SELECT value AS code, name AS code_name FROM p_code_std WHERE code_type = 'handheldscreenResolution';
comment on table VW_HANDHELD_SCREEN_RESOLUTION is '手持设备屏幕分辨率';

----夏永刚	2019/5/29 14:12:30
-- Add/modify columns 
alter table C_ARRIVE_OTHERDEV_PARA add screen_size VARCHAR2(8);
alter table C_ARRIVE_OTHERDEV_PARA add screen_resolution VARCHAR2(8);
alter table C_ARRIVE_OTHERDEV_PARA add cpu NUMBER(8);
alter table C_ARRIVE_OTHERDEV_PARA add memory NUMBER(8);
alter table C_ARRIVE_OTHERDEV_PARA add bluetooth_flag NUMBER(1);
alter table C_ARRIVE_OTHERDEV_PARA add photo_flag NUMBER(1);
alter table C_ARRIVE_OTHERDEV_PARA add gps_flag NUMBER(1);
alter table C_ARRIVE_OTHERDEV_PARA add scan_flag NUMBER(1);
alter table C_ARRIVE_OTHERDEV_PARA add mtread_flag NUMBER(1);
alter table C_ARRIVE_OTHERDEV_PARA add feectl_flag NUMBER(1);
alter table C_ARRIVE_OTHERDEV_PARA add fingerprint_flag NUMBER(1);
alter table C_ARRIVE_OTHERDEV_PARA add print_flag NUMBER(1);
alter table C_ARRIVE_OTHERDEV_PARA add rfid_flag NUMBER(1);
-- Add comments to the columns 
comment on column C_ARRIVE_OTHERDEV_PARA.screen_size
  is '屏幕尺寸，VW_HANDHELD_SCREEN_SIZE';
comment on column C_ARRIVE_OTHERDEV_PARA.screen_resolution
  is '屏幕分辨率, 参考VW_HANDHELD_SCREEN_RESOLUTION';
comment on column C_ARRIVE_OTHERDEV_PARA.cpu
  is 'CPU';
comment on column C_ARRIVE_OTHERDEV_PARA.memory
  is '内存';
comment on column C_ARRIVE_OTHERDEV_PARA.bluetooth_flag
  is '是否支持蓝牙, VW_YESNO_FLAG';
comment on column C_ARRIVE_OTHERDEV_PARA.photo_flag
  is '是否支持拍照, VW_YESNO_FLAG';
comment on column C_ARRIVE_OTHERDEV_PARA.gps_flag
  is '是否支持GPS定位, VW_YESNO_FLAG';
comment on column C_ARRIVE_OTHERDEV_PARA.scan_flag
  is '是否支持红外扫描, VW_YESNO_FLAG';
comment on column C_ARRIVE_OTHERDEV_PARA.mtread_flag
  is '是否支持红外抄表, VW_YESNO_FLAG';
comment on column C_ARRIVE_OTHERDEV_PARA.feectl_flag
  is '是否支持费控, VW_YESNO_FLAG';
comment on column C_ARRIVE_OTHERDEV_PARA.fingerprint_flag
  is '是否支持指纹, VW_YESNO_FLAG';
comment on column C_ARRIVE_OTHERDEV_PARA.print_flag
  is '是否支持直接打印, VW_YESNO_FLAG';
comment on column C_ARRIVE_OTHERDEV_PARA.rfid_flag
  is '是否支持RFID射频扫描, VW_YESNO_FLAG';
