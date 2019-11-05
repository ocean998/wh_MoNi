--------------------------------------------------
set feedback off
set define off
set serveroutput on
--------------------------------------------------
DELETE FROM MDS_UPDATE_SQL;
prompt
prompt 正在处理纪录编号为 8200000000017581 的脚本
prompt ==========================
------2019/7/9 14:17:32------
INSERT INTO MDS_UPDATE_SQL
  SELECT '2019/7/9 14:17:32', 'MD_IO_TASK.STORE_LOC_NO', 'COLUMN', CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END
    FROM USER_TAB_COLUMNS U
    WHERE U.TABLE_NAME = 'MD_IO_TASK'
    AND U.COLUMN_NAME='STORE_LOC_NO';

prompt
prompt 正在处理纪录编号为 8200000000017992 的脚本
prompt ==========================
--Not Support.
prompt
prompt 正在处理纪录编号为 8200000000019903 的脚本
prompt ==========================
INSERT INTO MDS_UPDATE_SQL
  SELECT '2019/1/15 10:55:08', 'MDS_UPDATE_SQL.SQL_ID', 'COLUMN', CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END
    FROM USER_TAB_COLUMNS U
    WHERE U.TABLE_NAME = 'MDS_UPDATE_SQL'
    AND U.COLUMN_NAME='SQL_ID' AND u.CHAR_LENGTH = 32 ;   
commit;


prompt
prompt 正在处理纪录编号为 8200000000021257 的脚本
prompt ==========================
------2019-9-9 14:07:57------
INSERT INTO MDS_UPDATE_SQL
  SELECT '2019-9-9 14:07:57', 'MD_IO_TASK.BACK_WH_FLAG', 'COLUMN', CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END
    FROM USER_TAB_COLUMNS U
    WHERE U.TABLE_NAME = 'MD_IO_TASK'
    AND U.COLUMN_NAME='BACK_WH_FLAG';
INSERT INTO MDS_UPDATE_SQL
  SELECT '2019-9-9 14:07:57', 'MD_IO_TASK.IS_OUTDATE_FLAG', 'COLUMN', CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END
    FROM USER_TAB_COLUMNS U
    WHERE U.TABLE_NAME = 'MD_IO_TASK'
    AND U.COLUMN_NAME='IS_OUTDATE_FLAG';

prompt
prompt 正在处理纪录编号为 8200000000021794 的脚本
prompt ==========================
------2019-9-16 15:00:27------
INSERT INTO MDS_UPDATE_SQL
  SELECT '2019-9-16 15:00:27', 'MD_IO_TASK.OUT_TYPE', 'COLUMN', CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END
    FROM USER_TAB_COLUMNS U
    WHERE U.TABLE_NAME = 'MD_IO_TASK'
    AND U.COLUMN_NAME='OUT_TYPE';

prompt
prompt 正在处理纪录编号为 8200000000022399 的脚本
prompt ==========================
------2019-9-29 9:59:56------
INSERT INTO MDS_UPDATE_SQL
  SELECT '2019-9-29 9:59:56', 'MD_IO_TASK.WH_SYS_NO', 'COLUMN', CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END
    FROM USER_TAB_COLUMNS U
    WHERE U.TABLE_NAME = 'MD_IO_TASK'
    AND U.COLUMN_NAME='WH_SYS_NO';

commit;

set feedback on
set define on
set serveroutput off
--------------------------------------------------

