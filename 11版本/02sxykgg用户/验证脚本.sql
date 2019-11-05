--------------------------------------------------
set feedback off
set define off
set serveroutput on
--------------------------------------------------
DELETE FROM MDS_UPDATE_SQL;
prompt
prompt 正在处理纪录编号为 8200000000017218 的脚本
prompt ==========================
------2019/6/20 15:20:20------
INSERT INTO MDS_UPDATE_SQL
  SELECT '2019/6/20 15:20:20', 'M_D_LC_EQUIP.COMM_MODE', 'COLUMN', CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END
    FROM USER_TAB_COLUMNS U
    WHERE U.TABLE_NAME = 'M_D_LC_EQUIP'
    AND U.COLUMN_NAME='COMM_MODE';

prompt
prompt 正在处理纪录编号为 8200000000017983 的脚本
prompt ==========================
------2019/7/23 14:33:19------
INSERT INTO MDS_UPDATE_SQL
  SELECT '2019/7/23 14:33:19', 'M_D_CHARGE_POINT', 'TABLE', CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END
    FROM User_Tables U
    WHERE U.TABLE_NAME = 'M_D_CHARGE_POINT'; 
prompt
prompt 正在处理纪录编号为 8200000000018505 的脚本
prompt ==========================
--Not Support.
prompt
prompt 正在处理纪录编号为 8200000000018515 的脚本
prompt ==========================
------2019/7/26 14:13:52------
INSERT INTO MDS_UPDATE_SQL
  SELECT '2019/7/26 14:13:52', 'M_D_METER.CHARG_BAR_CODE', 'COLUMN', CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END
    FROM USER_TAB_COLUMNS U
    WHERE U.TABLE_NAME = 'M_D_METER'
    AND U.COLUMN_NAME='CHARG_BAR_CODE';

prompt
prompt 正在处理纪录编号为 8200000000018517 的脚本
prompt ==========================
------2019/7/26 14:15:15------
INSERT INTO MDS_UPDATE_SQL
  SELECT '2019/7/26 14:15:15', 'M_D_IT.CHARG_BAR_CODE', 'COLUMN', CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END
    FROM USER_TAB_COLUMNS U
    WHERE U.TABLE_NAME = 'M_D_IT'
    AND U.COLUMN_NAME='CHARG_BAR_CODE';

prompt
prompt 正在处理纪录编号为 8200000000019901 的脚本
prompt ==========================
  INSERT INTO MDS_UPDATE_SQL
  SELECT '2019/1/15 10:55:08', 'MDS_UPDATE_SQL', 'COLUMN', CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END
    FROM User_Tab_Columns U
    WHERE U.TABLE_NAME = 'MDS_UPDATE_SQL'
    AND u.COLUMN_NAME = 'SQL_ID'
    AND u.CHAR_LENGTH = 32; 
commit;


prompt
prompt 正在处理纪录编号为 8200000000022528 的脚本
prompt ==========================
------2019-10-10 15:03:08------
INSERT INTO MDS_UPDATE_SQL
  SELECT '2019-10-10 15:03:08', 'M_D_HANDHELD_DEVICE.BOX_BAR_CODE', 'COLUMN', CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END
    FROM USER_TAB_COLUMNS U
    WHERE U.TABLE_NAME = 'M_D_HANDHELD_DEVICE'
    AND U.COLUMN_NAME='BOX_BAR_CODE';
INSERT INTO MDS_UPDATE_SQL
  SELECT '2019-10-10 15:03:08', 'M_D_HANDHELD_DEVICE.PALLET_BAR_CODE', 'COLUMN', CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END
    FROM USER_TAB_COLUMNS U
    WHERE U.TABLE_NAME = 'M_D_HANDHELD_DEVICE'
    AND U.COLUMN_NAME='PALLET_BAR_CODE';

prompt
prompt 正在处理纪录编号为 8200000000022578 的脚本
prompt ==========================
------2019-10-10 15:54:38------
INSERT INTO MDS_UPDATE_SQL
  SELECT '2019-10-10 15:54:38', 'M_D_METERING_CABINET.SORT_CODE', 'COLUMN', CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END
    FROM USER_TAB_COLUMNS U
    WHERE U.TABLE_NAME = 'M_D_METERING_CABINET'
    AND U.COLUMN_NAME='SORT_CODE';

commit;

set feedback on
set define on
set serveroutput off
--------------------------------------------------

