----������  2019/5/29 13:53:52
INSERT INTO p_code_sort_std
(CODE_SORT_ID, NAME, MAINT_TYPE_CODE, MAINT_ORG_NO, VN, CODE_TYPE, VALID_FLAG, EFFECT_DATE, PROVINCE, VIEW_NAME, HANDLE_TYPE)
VALUES(seq_p_code_sort_std.nextval, '�ֳ��豸��Ļ�ߴ�', '', '', '����P_CODE', 'handheldScreenSize', '1', '', '�Ͼ�', 'VW_HANDHELD_SCREEN_SIZE', '1');
INSERT INTO p_code_std
  (CODE_ID, CODE_SORT_ID, P_CODE, CODE_TYPE, ORG_NO, VALUE, NAME, DISP_SN, CONTENT1, CONTENT2, CONTENT3, CONTENT4, CONTENT5, PROVINCE, CONTENT6, CONTENT7, CONTENT8, CONTENT9, HANDLE_TYPE, HANDLE_PROVINCE)
  SELECT seq_p_code_std.nextval,p.code_sort_id, '',p.code_type,'','01','3.5��', '', '', '', '', '', '����P_CODE','', '', '�Ͼ�2019/5/29', '', '', '', ''
    FROM p_code_sort_std p
   WHERE p.code_type = 'handheldScreenSize';
INSERT INTO p_code_std
  (CODE_ID, CODE_SORT_ID, P_CODE, CODE_TYPE, ORG_NO, VALUE, NAME, DISP_SN, CONTENT1, CONTENT2, CONTENT3, CONTENT4, CONTENT5, PROVINCE, CONTENT6, CONTENT7, CONTENT8, CONTENT9, HANDLE_TYPE, HANDLE_PROVINCE)
  SELECT seq_p_code_std.nextval,p.code_sort_id, '',p.code_type,'','02','5��', '', '', '', '', '', '����P_CODE','', '', '�Ͼ�2019/5/29', '', '', '', ''
    FROM p_code_sort_std p
   WHERE p.code_type = 'handheldScreenSize';
INSERT INTO p_code_std
  (CODE_ID, CODE_SORT_ID, P_CODE, CODE_TYPE, ORG_NO, VALUE, NAME, DISP_SN, CONTENT1, CONTENT2, CONTENT3, CONTENT4, CONTENT5, PROVINCE, CONTENT6, CONTENT7, CONTENT8, CONTENT9, HANDLE_TYPE, HANDLE_PROVINCE)
  SELECT seq_p_code_std.nextval,p.code_sort_id, '',p.code_type,'','03','6��', '', '', '', '', '', '����P_CODE','', '', '�Ͼ�2019/5/29', '', '', '', ''
    FROM p_code_sort_std p
   WHERE p.code_type = 'handheldScreenSize';
INSERT INTO p_code_std
  (CODE_ID, CODE_SORT_ID, P_CODE, CODE_TYPE, ORG_NO, VALUE, NAME, DISP_SN, CONTENT1, CONTENT2, CONTENT3, CONTENT4, CONTENT5, PROVINCE, CONTENT6, CONTENT7, CONTENT8, CONTENT9, HANDLE_TYPE, HANDLE_PROVINCE)
  SELECT seq_p_code_std.nextval,p.code_sort_id, '',p.code_type,'','04','7��', '', '', '', '', '', '����P_CODE','', '', '�Ͼ�2019/5/29', '', '', '', ''
    FROM p_code_sort_std p
   WHERE p.code_type = 'handheldScreenSize';
CREATE OR REPLACE VIEW VW_HANDHELD_SCREEN_SIZE AS
SELECT value AS code, name AS code_name FROM p_code_std WHERE code_type = 'handheldScreenSize';
comment on table VW_HANDHELD_SCREEN_SIZE is '�ֳ��豸��Ļ�ߴ�';

----������  2019/5/29 13:57:05
INSERT INTO p_code_sort_std
(CODE_SORT_ID, NAME, MAINT_TYPE_CODE, MAINT_ORG_NO, VN, CODE_TYPE, VALID_FLAG, EFFECT_DATE, PROVINCE, VIEW_NAME, HANDLE_TYPE)
VALUES(seq_p_code_sort_std.nextval, '�ֳ��豸��Ļ�ֱ���', '', '', '����P_CODE', 'handheldscreenResolution', '1', '', '�Ͼ�', 'VW_HANDHELD_SCREEN_RESOLUTION', '1');
INSERT INTO p_code_std
  (CODE_ID, CODE_SORT_ID, P_CODE, CODE_TYPE, ORG_NO, VALUE, NAME, DISP_SN, CONTENT1, CONTENT2, CONTENT3, CONTENT4, CONTENT5, PROVINCE, CONTENT6, CONTENT7, CONTENT8, CONTENT9, HANDLE_TYPE, HANDLE_PROVINCE)
  SELECT seq_p_code_std.nextval,p.code_sort_id, '',p.code_type,'','02','1024*768', '', '', '', '', '', '����P_CODE','', '', '�Ͼ�2019/5/29', '', '', '', ''
    FROM p_code_sort_std p
   WHERE p.code_type = 'handheldscreenResolution';
INSERT INTO p_code_std
  (CODE_ID, CODE_SORT_ID, P_CODE, CODE_TYPE, ORG_NO, VALUE, NAME, DISP_SN, CONTENT1, CONTENT2, CONTENT3, CONTENT4, CONTENT5, PROVINCE, CONTENT6, CONTENT7, CONTENT8, CONTENT9, HANDLE_TYPE, HANDLE_PROVINCE)
  SELECT seq_p_code_std.nextval,p.code_sort_id, '',p.code_type,'','01','1024*600', '', '', '', '', '', '����P_CODE','', '', '�Ͼ�2019/5/29', '', '', '', ''
    FROM p_code_sort_std p
   WHERE p.code_type = 'handheldscreenResolution';
INSERT INTO p_code_std
  (CODE_ID, CODE_SORT_ID, P_CODE, CODE_TYPE, ORG_NO, VALUE, NAME, DISP_SN, CONTENT1, CONTENT2, CONTENT3, CONTENT4, CONTENT5, PROVINCE, CONTENT6, CONTENT7, CONTENT8, CONTENT9, HANDLE_TYPE, HANDLE_PROVINCE)
  SELECT seq_p_code_std.nextval,p.code_sort_id, '',p.code_type,'','03','1024*800', '', '', '', '', '', '����P_CODE','', '', '�Ͼ�2019/5/29', '', '', '', ''
    FROM p_code_sort_std p
   WHERE p.code_type = 'handheldscreenResolution';
INSERT INTO p_code_std
  (CODE_ID, CODE_SORT_ID, P_CODE, CODE_TYPE, ORG_NO, VALUE, NAME, DISP_SN, CONTENT1, CONTENT2, CONTENT3, CONTENT4, CONTENT5, PROVINCE, CONTENT6, CONTENT7, CONTENT8, CONTENT9, HANDLE_TYPE, HANDLE_PROVINCE)
  SELECT seq_p_code_std.nextval,p.code_sort_id, '',p.code_type,'','04','1280*800', '', '', '', '', '', '����P_CODE','', '', '�Ͼ�2019/5/29', '', '', '', ''
    FROM p_code_sort_std p
   WHERE p.code_type = 'handheldscreenResolution';
INSERT INTO p_code_std
  (CODE_ID, CODE_SORT_ID, P_CODE, CODE_TYPE, ORG_NO, VALUE, NAME, DISP_SN, CONTENT1, CONTENT2, CONTENT3, CONTENT4, CONTENT5, PROVINCE, CONTENT6, CONTENT7, CONTENT8, CONTENT9, HANDLE_TYPE, HANDLE_PROVINCE)
  SELECT seq_p_code_std.nextval,p.code_sort_id, '',p.code_type,'','05','1920*1024', '', '', '', '', '', '����P_CODE','', '', '�Ͼ�2019/5/29', '', '', '', ''
    FROM p_code_sort_std p
   WHERE p.code_type = 'handheldscreenResolution';
INSERT INTO p_code_std
  (CODE_ID, CODE_SORT_ID, P_CODE, CODE_TYPE, ORG_NO, VALUE, NAME, DISP_SN, CONTENT1, CONTENT2, CONTENT3, CONTENT4, CONTENT5, PROVINCE, CONTENT6, CONTENT7, CONTENT8, CONTENT9, HANDLE_TYPE, HANDLE_PROVINCE)
  SELECT seq_p_code_std.nextval,p.code_sort_id, '',p.code_type,'','06','1920*1080', '', '', '', '', '', '����P_CODE','', '', '�Ͼ�2019/5/29', '', '', '', ''
    FROM p_code_sort_std p
   WHERE p.code_type = 'handheldscreenResolution';
INSERT INTO p_code_std
  (CODE_ID, CODE_SORT_ID, P_CODE, CODE_TYPE, ORG_NO, VALUE, NAME, DISP_SN, CONTENT1, CONTENT2, CONTENT3, CONTENT4, CONTENT5, PROVINCE, CONTENT6, CONTENT7, CONTENT8, CONTENT9, HANDLE_TYPE, HANDLE_PROVINCE)
  SELECT seq_p_code_std.nextval,p.code_sort_id, '',p.code_type,'','07','800*600', '', '', '', '', '', '����P_CODE','', '', '�Ͼ�2019/5/29', '', '', '', ''
    FROM p_code_sort_std p
   WHERE p.code_type = 'handheldscreenResolution';
CREATE OR REPLACE VIEW VW_HANDHELD_SCREEN_RESOLUTION AS
SELECT value AS code, name AS code_name FROM p_code_std WHERE code_type = 'handheldscreenResolution';
comment on table VW_HANDHELD_SCREEN_RESOLUTION is '�ֳ��豸��Ļ�ֱ���';

----������	2019/5/29 14:12:30
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
  is '��Ļ�ߴ磬VW_HANDHELD_SCREEN_SIZE';
comment on column C_ARRIVE_OTHERDEV_PARA.screen_resolution
  is '��Ļ�ֱ���, �ο�VW_HANDHELD_SCREEN_RESOLUTION';
comment on column C_ARRIVE_OTHERDEV_PARA.cpu
  is 'CPU';
comment on column C_ARRIVE_OTHERDEV_PARA.memory
  is '�ڴ�';
comment on column C_ARRIVE_OTHERDEV_PARA.bluetooth_flag
  is '�Ƿ�֧������, VW_YESNO_FLAG';
comment on column C_ARRIVE_OTHERDEV_PARA.photo_flag
  is '�Ƿ�֧������, VW_YESNO_FLAG';
comment on column C_ARRIVE_OTHERDEV_PARA.gps_flag
  is '�Ƿ�֧��GPS��λ, VW_YESNO_FLAG';
comment on column C_ARRIVE_OTHERDEV_PARA.scan_flag
  is '�Ƿ�֧�ֺ���ɨ��, VW_YESNO_FLAG';
comment on column C_ARRIVE_OTHERDEV_PARA.mtread_flag
  is '�Ƿ�֧�ֺ��Ⳮ��, VW_YESNO_FLAG';
comment on column C_ARRIVE_OTHERDEV_PARA.feectl_flag
  is '�Ƿ�֧�ַѿ�, VW_YESNO_FLAG';
comment on column C_ARRIVE_OTHERDEV_PARA.fingerprint_flag
  is '�Ƿ�֧��ָ��, VW_YESNO_FLAG';
comment on column C_ARRIVE_OTHERDEV_PARA.print_flag
  is '�Ƿ�֧��ֱ�Ӵ�ӡ, VW_YESNO_FLAG';
comment on column C_ARRIVE_OTHERDEV_PARA.rfid_flag
  is '�Ƿ�֧��RFID��Ƶɨ��, VW_YESNO_FLAG';
