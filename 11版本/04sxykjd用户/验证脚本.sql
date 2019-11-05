--------------------------------------------------
set feedback off
set define off
set serveroutput on
--------------------------------------------------
DELETE FROM MDS_UPDATE_SQL;
prompt
prompt 正在处理纪录编号为 8200000000012797 的脚本
prompt ==========================
--Not Support.
prompt
prompt 正在处理纪录编号为 8200000000017742 的脚本
prompt ==========================
------2019/7/16 10:09:39------
INSERT INTO MDS_UPDATE_SQL
  SELECT '2019/7/16 10:09:39', 'MT_DETECT_SUBITEM_RSLT.HANDLE_FLAG', 'COLUMN', CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END
    FROM USER_TAB_COLUMNS U
    WHERE U.TABLE_NAME = 'MT_DETECT_SUBITEM_RSLT'
    AND U.COLUMN_NAME='HANDLE_FLAG';
INSERT INTO MDS_UPDATE_SQL
  SELECT '2019/7/16 10:09:39', 'MT_DETECT_SUBITEM_RSLT.HANDLE_DATE', 'COLUMN', CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END
    FROM USER_TAB_COLUMNS U
    WHERE U.TABLE_NAME = 'MT_DETECT_SUBITEM_RSLT'
    AND U.COLUMN_NAME='HANDLE_DATE';

prompt
prompt 正在处理纪录编号为 8200000000017862 的脚本
prompt ==========================
------2019/7/19 10:51:36------
INSERT INTO MDS_UPDATE_SQL
  SELECT '2019/7/19 10:51:36', 'MT_DETECT_COMM_SUBITEM_RSLT.DETECT_EQUIP_NO', 'COLUMN', CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END
    FROM USER_TAB_COLUMNS U
    WHERE U.TABLE_NAME = 'MT_DETECT_COMM_SUBITEM_RSLT'
    AND U.COLUMN_NAME='DETECT_EQUIP_NO';

prompt
prompt 正在处理纪录编号为 8200000000017863 的脚本
prompt ==========================
------2019/7/19 10:52:47------
INSERT INTO MDS_UPDATE_SQL
  SELECT '2019/7/19 10:52:47', 'MT_ELEC_CHARGE_INFO.DETECT_EQUIP_NO', 'COLUMN', CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END
    FROM USER_TAB_COLUMNS U
    WHERE U.TABLE_NAME = 'MT_ELEC_CHARGE_INFO'
    AND U.COLUMN_NAME='DETECT_EQUIP_NO';

prompt
prompt 正在处理纪录编号为 8200000000017864 的脚本
prompt ==========================
------2019/7/19 10:53:39------
INSERT INTO MDS_UPDATE_SQL
  SELECT '2019/7/19 10:53:39', 'MT_EQUIP_UNPASS_REASON.DETECT_EQUIP_NO', 'COLUMN', CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END
    FROM USER_TAB_COLUMNS U
    WHERE U.TABLE_NAME = 'MT_EQUIP_UNPASS_REASON'
    AND U.COLUMN_NAME='DETECT_EQUIP_NO';

prompt
prompt 正在处理纪录编号为 8200000000017865 的脚本
prompt ==========================
------2019/7/19 10:54:33------
INSERT INTO MDS_UPDATE_SQL
  SELECT '2019/7/19 10:54:33', 'MT_DETECT_HANDHELD_RSLT.DETECT_EQUIP_NO', 'COLUMN', CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END
    FROM USER_TAB_COLUMNS U
    WHERE U.TABLE_NAME = 'MT_DETECT_HANDHELD_RSLT'
    AND U.COLUMN_NAME='DETECT_EQUIP_NO';
INSERT INTO MDS_UPDATE_SQL
  SELECT '2019/7/19 10:54:33', 'MT_DETECT_HANDHELD_RSLT.SYS_NO', 'COLUMN', CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END
    FROM USER_TAB_COLUMNS U
    WHERE U.TABLE_NAME = 'MT_DETECT_HANDHELD_RSLT'
    AND U.COLUMN_NAME='SYS_NO';

prompt
prompt 正在处理纪录编号为 8200000000017866 的脚本
prompt ==========================
------2019/7/19 10:55:40------
INSERT INTO MDS_UPDATE_SQL
  SELECT '2019/7/19 10:55:40', 'MT_DETECT_COMM_RSLT.DETECT_EQUIP_NO', 'COLUMN', CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END
    FROM USER_TAB_COLUMNS U
    WHERE U.TABLE_NAME = 'MT_DETECT_COMM_RSLT'
    AND U.COLUMN_NAME='DETECT_EQUIP_NO';

prompt
prompt 正在处理纪录编号为 8200000000017990 的脚本
prompt ==========================
--Not Support.
prompt
prompt 正在处理纪录编号为 8200000000017994 的脚本
prompt ==========================
------2019/7/23 14:45:05------
INSERT INTO MDS_UPDATE_SQL
  SELECT '2019/7/23 14:45:05', 'MT_DETECT_CP_RSLT', 'TABLE', CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END
    FROM User_Tables U
    WHERE U.TABLE_NAME = 'MT_DETECT_CP_RSLT'; 
prompt
prompt 正在处理纪录编号为 8200000000017995 的脚本
prompt ==========================
------2019/7/23 14:52:50------
INSERT INTO MDS_UPDATE_SQL
  SELECT '2019/7/23 14:52:50', 'MT_INTUIT_CP_CONC', 'TABLE', CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END
    FROM User_Tables U
    WHERE U.TABLE_NAME = 'MT_INTUIT_CP_CONC'; 
prompt
prompt 正在处理纪录编号为 8200000000018000 的脚本
prompt ==========================
------2019/7/23 14:54:06------
INSERT INTO MDS_UPDATE_SQL
  SELECT '2019/7/23 14:54:06', 'MT_INSIDE_CP_CONC', 'TABLE', CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END
    FROM User_Tables U
    WHERE U.TABLE_NAME = 'MT_INSIDE_CP_CONC'; 
prompt
prompt 正在处理纪录编号为 8200000000018017 的脚本
prompt ==========================
------2019/7/23 15:42:38------
INSERT INTO MDS_UPDATE_SQL
  SELECT '2019/7/23 15:42:38', 'MT_WIRE_CP_CONC', 'TABLE', CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END
    FROM User_Tables U
    WHERE U.TABLE_NAME = 'MT_WIRE_CP_CONC'; 
prompt
prompt 正在处理纪录编号为 8200000000018018 的脚本
prompt ==========================
------2019/7/23 15:43:43------
INSERT INTO MDS_UPDATE_SQL
  SELECT '2019/7/23 15:43:43', 'MT_SIGN_CP_CONC', 'TABLE', CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END
    FROM User_Tables U
    WHERE U.TABLE_NAME = 'MT_SIGN_CP_CONC'; 
prompt
prompt 正在处理纪录编号为 8200000000018019 的脚本
prompt ==========================
------2019/7/23 15:44:56------
INSERT INTO MDS_UPDATE_SQL
  SELECT '2019/7/23 15:44:56', 'MT_COMPOSE_CP_CONC', 'TABLE', CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END
    FROM User_Tables U
    WHERE U.TABLE_NAME = 'MT_COMPOSE_CP_CONC'; 
prompt
prompt 正在处理纪录编号为 8200000000018020 的脚本
prompt ==========================
------2019/7/23 15:49:29------
INSERT INTO MDS_UPDATE_SQL
  SELECT '2019/7/23 15:49:29', 'MT_CONNECT_CP_CONC', 'TABLE', CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END
    FROM User_Tables U
    WHERE U.TABLE_NAME = 'MT_CONNECT_CP_CONC'; 
prompt
prompt 正在处理纪录编号为 8200000000018038 的脚本
prompt ==========================
------2019/7/23 15:56:35------
INSERT INTO MDS_UPDATE_SQL
  SELECT '2019/7/23 15:56:35', 'MT_DISPLAY_CP_CONC', 'TABLE', CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END
    FROM User_Tables U
    WHERE U.TABLE_NAME = 'MT_DISPLAY_CP_CONC'; 
prompt
prompt 正在处理纪录编号为 8200000000018039 的脚本
prompt ==========================
------2019/7/23 15:58:02------
INSERT INTO MDS_UPDATE_SQL
  SELECT '2019/7/23 15:58:02', 'MT_IN_CP_CONC', 'TABLE', CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END
    FROM User_Tables U
    WHERE U.TABLE_NAME = 'MT_IN_CP_CONC'; 
prompt
prompt 正在处理纪录编号为 8200000000018041 的脚本
prompt ==========================
------2019/7/23 15:59:16------
INSERT INTO MDS_UPDATE_SQL
  SELECT '2019/7/23 15:59:16', 'MT_LANDING_CP_CONC', 'TABLE', CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END
    FROM User_Tables U
    WHERE U.TABLE_NAME = 'MT_LANDING_CP_CONC'; 
prompt
prompt 正在处理纪录编号为 8200000000018042 的脚本
prompt ==========================
------2019/7/23 16:00:27------
INSERT INTO MDS_UPDATE_SQL
  SELECT '2019/7/23 16:00:27', 'MT_CLEARANCE_CREEPAGE_CP_CONC', 'TABLE', CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END
    FROM User_Tables U
    WHERE U.TABLE_NAME = 'MT_CLEARANCE_CREEPAGE_CP_CONC'; 
prompt
prompt 正在处理纪录编号为 8200000000018044 的脚本
prompt ==========================
------2019/7/23 16:03:02------
INSERT INTO MDS_UPDATE_SQL
  SELECT '2019/7/23 16:03:02', 'MT_INSU_RESIST_CP_CONC', 'TABLE', CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END
    FROM User_Tables U
    WHERE U.TABLE_NAME = 'MT_INSU_RESIST_CP_CONC'; 
prompt
prompt 正在处理纪录编号为 8200000000018049 的脚本
prompt ==========================
------2019/7/23 16:03:58------
INSERT INTO MDS_UPDATE_SQL
  SELECT '2019/7/23 16:03:58', 'MT_ONLOAD_DECILITER_CP_CONC', 'TABLE', CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END
    FROM User_Tables U
    WHERE U.TABLE_NAME = 'MT_ONLOAD_DECILITER_CP_CONC'; 
prompt
prompt 正在处理纪录编号为 8200000000018060 的脚本
prompt ==========================
------2019/7/23 16:08:14------
INSERT INTO MDS_UPDATE_SQL
  SELECT '2019/7/23 16:08:14', 'MT_PWM_CP_CONC', 'TABLE', CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END
    FROM User_Tables U
    WHERE U.TABLE_NAME = 'MT_PWM_CP_CONC'; 
prompt
prompt 正在处理纪录编号为 8200000000018061 的脚本
prompt ==========================
------2019/7/23 16:09:25------
INSERT INTO MDS_UPDATE_SQL
  SELECT '2019/7/23 16:09:25', 'MT_IN_OVERVOLT_CP_CONC', 'TABLE', CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END
    FROM User_Tables U
    WHERE U.TABLE_NAME = 'MT_IN_OVERVOLT_CP_CONC'; 
prompt
prompt 正在处理纪录编号为 8200000000018063 的脚本
prompt ==========================
------2019/7/23 16:10:34------
INSERT INTO MDS_UPDATE_SQL
  SELECT '2019/7/23 16:10:34', 'MT_IN_UNDERVOLT_CP_CONC', 'TABLE', CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END
    FROM User_Tables U
    WHERE U.TABLE_NAME = 'MT_IN_UNDERVOLT_CP_CONC'; 
prompt
prompt 正在处理纪录编号为 8200000000018064 的脚本
prompt ==========================
------2019/7/23 16:11:42------
INSERT INTO MDS_UPDATE_SQL
  SELECT '2019/7/23 16:11:42', 'MT_SCP_CP_CONC', 'TABLE', CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END
    FROM User_Tables U
    WHERE U.TABLE_NAME = 'MT_SCP_CP_CONC'; 
prompt
prompt 正在处理纪录编号为 8200000000018065 的脚本
prompt ==========================
------2019/7/23 16:24:56------
INSERT INTO MDS_UPDATE_SQL
  SELECT '2019/7/23 16:24:56', 'MT_LOCK_CP_CONC', 'TABLE', CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END
    FROM User_Tables U
    WHERE U.TABLE_NAME = 'MT_LOCK_CP_CONC'; 
prompt
prompt 正在处理纪录编号为 8200000000018074 的脚本
prompt ==========================
------2019/7/23 16:26:05------
INSERT INTO MDS_UPDATE_SQL
  SELECT '2019/7/23 16:26:05', 'MT_CONTROL_VOLTLIMIT_CP_CONC', 'TABLE', CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END
    FROM User_Tables U
    WHERE U.TABLE_NAME = 'MT_CONTROL_VOLTLIMIT_CP_CONC'; 
prompt
prompt 正在处理纪录编号为 8200000000018075 的脚本
prompt ==========================
------2019/7/23 16:27:07------
INSERT INTO MDS_UPDATE_SQL
  SELECT '2019/7/23 16:27:07', 'MT_PLUG_LOCK_CP_CONC', 'TABLE', CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END
    FROM User_Tables U
    WHERE U.TABLE_NAME = 'MT_PLUG_LOCK_CP_CONC'; 
prompt
prompt 正在处理纪录编号为 8200000000018077 的脚本
prompt ==========================
------2019/7/23 16:28:33------
INSERT INTO MDS_UPDATE_SQL
  SELECT '2019/7/23 16:28:33', 'MT_CONNECT_CONFIRM_CP_CONC', 'TABLE', CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END
    FROM User_Tables U
    WHERE U.TABLE_NAME = 'MT_CONNECT_CONFIRM_CP_CONC'; 
prompt
prompt 正在处理纪录编号为 8200000000018078 的脚本
prompt ==========================
------2019/7/23 16:29:31------
INSERT INTO MDS_UPDATE_SQL
  SELECT '2019/7/23 16:29:31', 'MT_STANDBY_POWER_CP_CONC', 'TABLE', CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END
    FROM User_Tables U
    WHERE U.TABLE_NAME = 'MT_STANDBY_POWER_CP_CONC'; 
prompt
prompt 正在处理纪录编号为 8200000000018082 的脚本
prompt ==========================
------2019/7/23 16:36:25------
INSERT INTO MDS_UPDATE_SQL
  SELECT '2019/7/23 16:36:25', 'MT_MEASUREMENT_ERROR_CP_CONC', 'TABLE', CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END
    FROM User_Tables U
    WHERE U.TABLE_NAME = 'MT_MEASUREMENT_ERROR_CP_CONC'; 
prompt
prompt 正在处理纪录编号为 8200000000018083 的脚本
prompt ==========================
------2019/7/23 16:39:30------
INSERT INTO MDS_UPDATE_SQL
  SELECT '2019/7/23 16:39:30', 'MT_INDICATIVE_ERROR_CP_CONC', 'TABLE', CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END
    FROM User_Tables U
    WHERE U.TABLE_NAME = 'MT_INDICATIVE_ERROR_CP_CONC'; 
prompt
prompt 正在处理纪录编号为 8200000000018084 的脚本
prompt ==========================
------2019/7/23 16:41:46------
INSERT INTO MDS_UPDATE_SQL
  SELECT '2019/7/23 16:41:46', 'MT_MEASURE_UNIFORMITY_CP_CONC', 'TABLE', CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END
    FROM User_Tables U
    WHERE U.TABLE_NAME = 'MT_MEASURE_UNIFORMITY_CP_CONC'; 
prompt
prompt 正在处理纪录编号为 8200000000018085 的脚本
prompt ==========================
------2019/7/23 16:43:24------
INSERT INTO MDS_UPDATE_SQL
  SELECT '2019/7/23 16:43:24', 'MT_SCRAM_FUNCTION_CP_CONC', 'TABLE', CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END
    FROM User_Tables U
    WHERE U.TABLE_NAME = 'MT_SCRAM_FUNCTION_CP_CONC'; 
prompt
prompt 正在处理纪录编号为 8200000000018086 的脚本
prompt ==========================
------2019/7/23 16:44:31------
INSERT INTO MDS_UPDATE_SQL
  SELECT '2019/7/23 16:44:31', 'MT_VOLT_LOSS_CP_CONC', 'TABLE', CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END
    FROM User_Tables U
    WHERE U.TABLE_NAME = 'MT_VOLT_LOSS_CP_CONC'; 
prompt
prompt 正在处理纪录编号为 8200000000018087 的脚本
prompt ==========================
------2019/7/23 16:48:04------
INSERT INTO MDS_UPDATE_SQL
  SELECT '2019/7/23 16:48:04', 'MT_MAXOUT_POWER_CP_CONC', 'TABLE', CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END
    FROM User_Tables U
    WHERE U.TABLE_NAME = 'MT_MAXOUT_POWER_CP_CONC'; 
prompt
prompt 正在处理纪录编号为 8200000000018088 的脚本
prompt ==========================
------2019/7/23 16:50:03------
INSERT INTO MDS_UPDATE_SQL
  SELECT '2019/7/23 16:50:03', 'MT_CURRENT_PRECISION_CP_CONC', 'TABLE', CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END
    FROM User_Tables U
    WHERE U.TABLE_NAME = 'MT_CURRENT_PRECISION_CP_CONC'; 
prompt
prompt 正在处理纪录编号为 8200000000018089 的脚本
prompt ==========================
------2019/7/23 16:51:47------
INSERT INTO MDS_UPDATE_SQL
  SELECT '2019/7/23 16:51:47', 'MT_VOLT_PRECISION_CP_CONC', 'TABLE', CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END
    FROM User_Tables U
    WHERE U.TABLE_NAME = 'MT_VOLT_PRECISION_CP_CONC'; 
prompt
prompt 正在处理纪录编号为 8200000000018090 的脚本
prompt ==========================
------2019/7/23 16:54:13------
INSERT INTO MDS_UPDATE_SQL
  SELECT '2019/7/23 16:54:13', 'MT_EFFICIENCY_CP_CONC', 'TABLE', CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END
    FROM User_Tables U
    WHERE U.TABLE_NAME = 'MT_EFFICIENCY_CP_CONC'; 
prompt
prompt 正在处理纪录编号为 8200000000018092 的脚本
prompt ==========================
------2019/7/23 16:56:05------
INSERT INTO MDS_UPDATE_SQL
  SELECT '2019/7/23 16:56:05', 'MT_PF_CP_CONC', 'TABLE', CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END
    FROM User_Tables U
    WHERE U.TABLE_NAME = 'MT_PF_CP_CONC'; 
prompt
prompt 正在处理纪录编号为 8200000000018094 的脚本
prompt ==========================
------2019/7/23 16:57:55------
INSERT INTO MDS_UPDATE_SQL
  SELECT '2019/7/23 16:57:55', 'MT_VOLT_RIPPLE_CP_CONC', 'TABLE', CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END
    FROM User_Tables U
    WHERE U.TABLE_NAME = 'MT_VOLT_RIPPLE_CP_CONC'; 
prompt
prompt 正在处理纪录编号为 8200000000018096 的脚本
prompt ==========================
------2019/7/23 16:59:45------
INSERT INTO MDS_UPDATE_SQL
  SELECT '2019/7/23 16:59:45', 'MT_LOWVOLT_AUXILIARY_CP_CONC', 'TABLE', CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END
    FROM User_Tables U
    WHERE U.TABLE_NAME = 'MT_LOWVOLT_AUXILIARY_CP_CONC'; 
prompt
prompt 正在处理纪录编号为 8200000000018097 的脚本
prompt ==========================
------2019/7/23 17:00:57------
INSERT INTO MDS_UPDATE_SQL
  SELECT '2019/7/23 17:00:57', 'MT_OPEN_PROTECT_CP_CONC', 'TABLE', CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END
    FROM User_Tables U
    WHERE U.TABLE_NAME = 'MT_OPEN_PROTECT_CP_CONC'; 
prompt
prompt 正在处理纪录编号为 8200000000018098 的脚本
prompt ==========================
------2019/7/23 17:03:05------
INSERT INTO MDS_UPDATE_SQL
  SELECT '2019/7/23 17:03:05', 'MT_SIGNAL_BREAK_CP_CONC', 'TABLE', CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END
    FROM User_Tables U
    WHERE U.TABLE_NAME = 'MT_SIGNAL_BREAK_CP_CONC'; 
prompt
prompt 正在处理纪录编号为 8200000000018100 的脚本
prompt ==========================
------2019/7/23 17:10:53------
INSERT INTO MDS_UPDATE_SQL
  SELECT '2019/7/23 17:10:53', 'MT_INSULATE_ABNORMAL_CP_CONC', 'TABLE', CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END
    FROM User_Tables U
    WHERE U.TABLE_NAME = 'MT_INSULATE_ABNORMAL_CP_CONC'; 
prompt
prompt 正在处理纪录编号为 8200000000018102 的脚本
prompt ==========================
------2019/7/23 17:17:09------
INSERT INTO MDS_UPDATE_SQL
  SELECT '2019/7/23 17:17:09', 'MT_COMM_BREAK_CP_CONC', 'TABLE', CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END
    FROM User_Tables U
    WHERE U.TABLE_NAME = 'MT_COMM_BREAK_CP_CONC'; 
prompt
prompt 正在处理纪录编号为 8200000000018104 的脚本
prompt ==========================
------2019/7/23 17:19:44------
INSERT INTO MDS_UPDATE_SQL
  SELECT '2019/7/23 17:19:44', 'MT_PROTECT_LANDING_CP_CONC', 'TABLE', CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END
    FROM User_Tables U
    WHERE U.TABLE_NAME = 'MT_PROTECT_LANDING_CP_CONC'; 
prompt
prompt 正在处理纪录编号为 8200000000018105 的脚本
prompt ==========================
------2019/7/23 17:21:00------
INSERT INTO MDS_UPDATE_SQL
  SELECT '2019/7/23 17:21:00', 'MT_POWERUP_MESSAGE_CP_CONC', 'TABLE', CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END
    FROM User_Tables U
    WHERE U.TABLE_NAME = 'MT_POWERUP_MESSAGE_CP_CONC'; 
prompt
prompt 正在处理纪录编号为 8200000000018106 的脚本
prompt ==========================
------2019/7/23 17:22:51------
INSERT INTO MDS_UPDATE_SQL
  SELECT '2019/7/23 17:22:51', 'MT_CONFIG_MSG_CP_CONC', 'TABLE', CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END
    FROM User_Tables U
    WHERE U.TABLE_NAME = 'MT_CONFIG_MSG_CP_CONC'; 
prompt
prompt 正在处理纪录编号为 8200000000018107 的脚本
prompt ==========================
------2019/7/23 17:24:23------
INSERT INTO MDS_UPDATE_SQL
  SELECT '2019/7/23 17:24:23', 'MT_CHARGE_MEAASGE_CP_CONC', 'TABLE', CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END
    FROM User_Tables U
    WHERE U.TABLE_NAME = 'MT_CHARGE_MEAASGE_CP_CONC'; 
prompt
prompt 正在处理纪录编号为 8200000000018108 的脚本
prompt ==========================
------2019/7/23 17:25:55------
INSERT INTO MDS_UPDATE_SQL
  SELECT '2019/7/23 17:25:55', 'MT_CHARGEEND_MEAASGE_CP_CONC', 'TABLE', CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END
    FROM User_Tables U
    WHERE U.TABLE_NAME = 'MT_CHARGEEND_MEAASGE_CP_CONC'; 
prompt
prompt 正在处理纪录编号为 8200000000018109 的脚本
prompt ==========================
------2019/7/23 17:28:16------
INSERT INTO MDS_UPDATE_SQL
  SELECT '2019/7/23 17:28:16', 'MT_PORT_CP_CONC', 'TABLE', CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END
    FROM User_Tables U
    WHERE U.TABLE_NAME = 'MT_PORT_CP_CONC'; 
prompt
prompt 正在处理纪录编号为 8200000000018110 的脚本
prompt ==========================
--Not Support.
prompt
prompt 正在处理纪录编号为 8200000000018658 的脚本
prompt ==========================
--Not Support.
prompt
prompt 正在处理纪录编号为 8200000000018659 的脚本
prompt ==========================

prompt
prompt 正在处理纪录编号为 8200000000018660 的脚本
prompt ==========================
--Not Support.
prompt
prompt 正在处理纪录编号为 8200000000018661 的脚本
prompt ==========================
--Not Support.
prompt
prompt 正在处理纪录编号为 8200000000018667 的脚本
prompt ==========================
--Not Support.
prompt
prompt 正在处理纪录编号为 8200000000018668 的脚本
prompt ==========================
--Not Support.
prompt
prompt 正在处理纪录编号为 8200000000018669 的脚本
prompt ==========================
--Not Support.
prompt
prompt 正在处理纪录编号为 8200000000018670 的脚本
prompt ==========================
--Not Support.
prompt
prompt 正在处理纪录编号为 8200000000018671 的脚本
prompt ==========================
--Not Support.
prompt
prompt 正在处理纪录编号为 8200000000018672 的脚本
prompt ==========================
--Not Support.
prompt
prompt 正在处理纪录编号为 8200000000018673 的脚本
prompt ==========================
--Not Support.
prompt
prompt 正在处理纪录编号为 8200000000018674 的脚本
prompt ==========================
--Not Support.
prompt
prompt 正在处理纪录编号为 8200000000018675 的脚本
prompt ==========================
--Not Support.
prompt
prompt 正在处理纪录编号为 8200000000018683 的脚本
prompt ==========================
--Not Support.
prompt
prompt 正在处理纪录编号为 8200000000018684 的脚本
prompt ==========================
--Not Support.
prompt
prompt 正在处理纪录编号为 8200000000018685 的脚本
prompt ==========================
--Not Support.
prompt
prompt 正在处理纪录编号为 8200000000018691 的脚本
prompt ==========================
--Not Support.
prompt
prompt 正在处理纪录编号为 8200000000018692 的脚本
prompt ==========================
--Not Support.
prompt
prompt 正在处理纪录编号为 8200000000018693 的脚本
prompt ==========================
--Not Support.
prompt
prompt 正在处理纪录编号为 8200000000018694 的脚本
prompt ==========================
--Not Support.
prompt
prompt 正在处理纪录编号为 8200000000018695 的脚本
prompt ==========================
--Not Support.
prompt
prompt 正在处理纪录编号为 8200000000018696 的脚本
prompt ==========================
--Not Support.
prompt
prompt 正在处理纪录编号为 8200000000018697 的脚本
prompt ==========================
--Not Support.
prompt
prompt 正在处理纪录编号为 8200000000018698 的脚本
prompt ==========================
--Not Support.
prompt
prompt 正在处理纪录编号为 8200000000018699 的脚本
prompt ==========================
--Not Support.
prompt
prompt 正在处理纪录编号为 8200000000018700 的脚本
prompt ==========================
--Not Support.
prompt
prompt 正在处理纪录编号为 8200000000018701 的脚本
prompt ==========================
--Not Support.
prompt
prompt 正在处理纪录编号为 8200000000018702 的脚本
prompt ==========================
--Not Support.
prompt
prompt 正在处理纪录编号为 8200000000018703 的脚本
prompt ==========================
--Not Support.
prompt
prompt 正在处理纪录编号为 8200000000018704 的脚本
prompt ==========================
--Not Support.
prompt
prompt 正在处理纪录编号为 8200000000018705 的脚本
prompt ==========================
--Not Support.
prompt
prompt 正在处理纪录编号为 8200000000018706 的脚本
prompt ==========================
--Not Support.
prompt
prompt 正在处理纪录编号为 8200000000018707 的脚本
prompt ==========================
--Not Support.
prompt
prompt 正在处理纪录编号为 8200000000018708 的脚本
prompt ==========================
--Not Support.
prompt
prompt 正在处理纪录编号为 8200000000018709 的脚本
prompt ==========================
--Not Support.
prompt
prompt 正在处理纪录编号为 8200000000018710 的脚本
prompt ==========================
--Not Support.
prompt
prompt 正在处理纪录编号为 8200000000018711 的脚本
prompt ==========================
--Not Support.
prompt
prompt 正在处理纪录编号为 8200000000018712 的脚本
prompt ==========================
--Not Support.
prompt
prompt 正在处理纪录编号为 8200000000018713 的脚本
prompt ==========================
--Not Support.
prompt
prompt 正在处理纪录编号为 8200000000018714 的脚本
prompt ==========================
--Not Support.
prompt
prompt 正在处理纪录编号为 8200000000018715 的脚本
prompt ==========================
--Not Support.
prompt
prompt 正在处理纪录编号为 8200000000018716 的脚本
prompt ==========================
--Not Support.
prompt
prompt 正在处理纪录编号为 8200000000018717 的脚本
prompt ==========================
--Not Support.
prompt
prompt 正在处理纪录编号为 8200000000018718 的脚本
prompt ==========================
--Not Support.
prompt
prompt 正在处理纪录编号为 8200000000018749 的脚本
prompt ==========================
------2019/7/30 16:44:23------
INSERT INTO MDS_UPDATE_SQL
  SELECT '2019/7/30 16:44:23', 'MT_PORT_CP_CONC.DETECT_ITEM_NO', 'COLUMN', CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END
    FROM USER_TAB_COLUMNS U
    WHERE U.TABLE_NAME = 'MT_PORT_CP_CONC'
    AND U.COLUMN_NAME='DETECT_ITEM_NO';
INSERT INTO MDS_UPDATE_SQL
  SELECT '2019/7/30 16:44:23', 'MT_PORT_CP_CONC.DETECT_ITEM_NAME', 'COLUMN', CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END
    FROM USER_TAB_COLUMNS U
    WHERE U.TABLE_NAME = 'MT_PORT_CP_CONC'
    AND U.COLUMN_NAME='DETECT_ITEM_NAME';

prompt
prompt 正在处理纪录编号为 8200000000019005 的脚本
prompt ==========================
------2019/8/6 15:21:40------
INSERT INTO MDS_UPDATE_SQL
  SELECT '2019/8/6 15:21:40', 'MT_DETECT_CP_RSLT.REMARK', 'COLUMN', CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END
    FROM USER_TAB_COLUMNS U
    WHERE U.TABLE_NAME = 'MT_DETECT_CP_RSLT'
    AND U.COLUMN_NAME='REMARK';
INSERT INTO MDS_UPDATE_SQL
  SELECT '2019/8/6 15:21:40', 'MT_DETECT_CP_RSLT.CERT_NO', 'COLUMN', CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END
    FROM USER_TAB_COLUMNS U
    WHERE U.TABLE_NAME = 'MT_DETECT_CP_RSLT'
    AND U.COLUMN_NAME='CERT_NO';
INSERT INTO MDS_UPDATE_SQL
  SELECT '2019/8/6 15:21:40', 'MT_DETECT_CP_RSLT.CERT_NO_PERIOD', 'COLUMN', CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END
    FROM USER_TAB_COLUMNS U
    WHERE U.TABLE_NAME = 'MT_DETECT_CP_RSLT'
    AND U.COLUMN_NAME='CERT_NO_PERIOD';

prompt
prompt 正在处理纪录编号为 8200000000019459 的脚本
prompt ==========================
------2019/8/16 11:04:57------
INSERT INTO MDS_UPDATE_SQL
  SELECT '2019/8/16 11:04:57', 'MT_DETECT_TASK.PRE_ELEC_CHARGE', 'COLUMN', CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END
    FROM USER_TAB_COLUMNS U
    WHERE U.TABLE_NAME = 'MT_DETECT_TASK'
    AND U.COLUMN_NAME='PRE_ELEC_CHARGE';

prompt
prompt 正在处理纪录编号为 8200000000019589 的脚本
prompt ==========================
------2019/8/20 19:20:17------
INSERT INTO MDS_UPDATE_SQL
  SELECT '2019/8/20 19:20:17', 'MT_ELEC_PRICE_INFO', 'TABLE', CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END
    FROM User_Tables U
    WHERE U.TABLE_NAME = 'MT_ELEC_PRICE_INFO'; 
prompt
prompt 正在处理纪录编号为 8200000000019590 的脚本
prompt ==========================
------2019/8/20 19:22:36------
INSERT INTO MDS_UPDATE_SQL
  SELECT '2019/8/20 19:22:36', 'MT_MET_READING_INFO', 'TABLE', CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END
    FROM User_Tables U
    WHERE U.TABLE_NAME = 'MT_MET_READING_INFO'; 
prompt
prompt 正在处理纪录编号为 8200000000019596 的脚本
prompt ==========================
--Not Support.
prompt
prompt 正在处理纪录编号为 8200000000019684 的脚本
prompt ==========================
--Not Support.
prompt
prompt 正在处理纪录编号为 8200000000019689 的脚本
prompt ==========================
--Not Support.
prompt
prompt 正在处理纪录编号为 8200000000019902 的脚本
prompt ==========================
  INSERT INTO MDS_UPDATE_SQL
  SELECT '2019/1/15 10:55:08', 'MDS_UPDATE_SQL', 'COLUMN', CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END
    FROM User_Tab_Columns U
    WHERE U.TABLE_NAME = 'MDS_UPDATE_SQL'
    AND u.COLUMN_NAME = 'SQL_ID'
    AND u.CHAR_LENGTH = 32; 

prompt
prompt 正在处理纪录编号为 8200000000020271 的脚本
prompt ==========================
--Not Support.

prompt
prompt 正在处理纪录编号为 8200000000020532 的脚本
prompt ==========================
------2019-9-2 10:57:49------
INSERT INTO MDS_UPDATE_SQL
  SELECT '2019-9-2 10:57:49', 'MT_REPICK_FILTER_BATCH.STATUS', 'COLUMN', CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END
    FROM USER_TAB_COLUMNS U
    WHERE U.TABLE_NAME = 'MT_REPICK_FILTER_BATCH'
    AND U.COLUMN_NAME='STATUS';

prompt
prompt 正在处理纪录编号为 8200000000020892 的脚本
prompt ==========================
------2019-9-3 14:55:24------
INSERT INTO MDS_UPDATE_SQL
  SELECT '2019-9-3 14:55:24', 'MT_DETECT_ELEC_PRICE', 'TABLE', CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END
    FROM User_Tables U
    WHERE U.TABLE_NAME = 'MT_DETECT_ELEC_PRICE'; 
prompt
prompt 正在处理纪录编号为 8200000000020893 的脚本
prompt ==========================
------2019-9-3 14:56:58------
INSERT INTO MDS_UPDATE_SQL
  SELECT '2019-9-3 14:56:58', 'MT_DETECT_RSLT.ELECPRICE_READ_FLAG', 'COLUMN', CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END
    FROM USER_TAB_COLUMNS U
    WHERE U.TABLE_NAME = 'MT_DETECT_RSLT'
    AND U.COLUMN_NAME='ELECPRICE_READ_FLAG';

prompt
prompt 正在处理纪录编号为 8200000000021109 的脚本
prompt ==========================
------2019-9-5 15:16:55------
INSERT INTO MDS_UPDATE_SQL
  SELECT '2019-9-5 15:16:55', 'MT_DETECT_RSLT.METCOTRVAL_CONC_CODE', 'COLUMN', CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END
    FROM USER_TAB_COLUMNS U
    WHERE U.TABLE_NAME = 'MT_DETECT_RSLT'
    AND U.COLUMN_NAME='METCOTRVAL_CONC_CODE';


prompt
prompt 正在处理纪录编号为 8200000000021380 的脚本
prompt ==========================
------2019-9-10 9:31:21------
INSERT INTO MDS_UPDATE_SQL
  SELECT '2019-9-10 9:31:21', 'MT_APP_REPICK_FILTER_RECORD.EQUIP_CODE', 'COLUMN', CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END
    FROM USER_TAB_COLUMNS U
    WHERE U.TABLE_NAME = 'MT_APP_REPICK_FILTER_RECORD'
    AND U.COLUMN_NAME='EQUIP_CODE';
INSERT INTO MDS_UPDATE_SQL
  SELECT '2019-9-10 9:31:21', 'MT_APP_REPICK_FILTER_RECORD.BATCH_NO', 'COLUMN', CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END
    FROM USER_TAB_COLUMNS U
    WHERE U.TABLE_NAME = 'MT_APP_REPICK_FILTER_RECORD'
    AND U.COLUMN_NAME='BATCH_NO';
INSERT INTO MDS_UPDATE_SQL
  SELECT '2019-9-10 9:31:21', 'MT_APP_REPICK_FILTER_RECORD.RETURN_RESULT', 'COLUMN', CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END
    FROM USER_TAB_COLUMNS U
    WHERE U.TABLE_NAME = 'MT_APP_REPICK_FILTER_RECORD'
    AND U.COLUMN_NAME='RETURN_RESULT';

commit;


prompt
prompt 正在处理纪录编号为 8200000000022010 的脚本
prompt ==========================
--Not Support.
prompt
prompt 正在处理纪录编号为 8200000000022444 的脚本
prompt ==========================
------2019-10-8 14:47:09------
INSERT INTO MDS_UPDATE_SQL
  SELECT '2019-10-8 14:47:09', 'MT_SEAL_INST.SEAL_SERIAL', 'COLUMN', CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END
    FROM USER_TAB_COLUMNS U
    WHERE U.TABLE_NAME = 'MT_SEAL_INST'
    AND U.COLUMN_NAME='SEAL_SERIAL';
INSERT INTO MDS_UPDATE_SQL
  SELECT '2019-10-8 14:47:09', 'MT_SEAL_INST.CHECK_INFO', 'COLUMN', CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END
    FROM USER_TAB_COLUMNS U
    WHERE U.TABLE_NAME = 'MT_SEAL_INST'
    AND U.COLUMN_NAME='CHECK_INFO';
INSERT INTO MDS_UPDATE_SQL
  SELECT '2019-10-8 14:47:09', 'MT_SEAL_INST.RELEASE_INFO', 'COLUMN', CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END
    FROM USER_TAB_COLUMNS U
    WHERE U.TABLE_NAME = 'MT_SEAL_INST'
    AND U.COLUMN_NAME='RELEASE_INFO';

prompt
prompt 正在处理纪录编号为 8200000000022449 的脚本
prompt ==========================
------2019-10-8 15:13:11------
INSERT INTO MDS_UPDATE_SQL
  SELECT '2019-10-8 15:13:11', 'MT_DETECT_RSLT.MAX_DEMAND_FUNC_CONC_CODE', 'COLUMN', CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END
    FROM USER_TAB_COLUMNS U
    WHERE U.TABLE_NAME = 'MT_DETECT_RSLT'
    AND U.COLUMN_NAME='MAX_DEMAND_FUNC_CONC_CODE';
INSERT INTO MDS_UPDATE_SQL
  SELECT '2019-10-8 15:13:11', 'MT_DETECT_RSLT.MAX_DEMAND_ERROR_CONC_CODE', 'COLUMN', CASE WHEN COUNT(1) = 1 THEN 1 ELSE 0 END
    FROM USER_TAB_COLUMNS U
    WHERE U.TABLE_NAME = 'MT_DETECT_RSLT'
    AND U.COLUMN_NAME='MAX_DEMAND_ERROR_CONC_CODE';

commit;
set feedback on
set define on
set serveroutput off
--------------------------------------------------

