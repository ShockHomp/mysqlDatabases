-- --------------------------------------------------------
-- 主机:                           localhost
-- 服务器版本:                        5.7.24 - MySQL Community Server (GPL)
-- 服务器OS:                        Win64
-- HeidiSQL 版本:                  10.2.0.5599
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for 95code
CREATE DATABASE IF NOT EXISTS `95code` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `95code`;

-- Dumping structure for table 95code.95c_api_logs
CREATE TABLE IF NOT EXISTS `95c_api_logs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `host` varchar(255) NOT NULL DEFAULT '' COMMENT 'HOST',
  `uri` varchar(255) NOT NULL DEFAULT '' COMMENT 'URI',
  `method` varchar(20) NOT NULL DEFAULT '' COMMENT '请求方式',
  `header` text COMMENT '请求头',
  `params` text COMMENT '请求参数',
  `request_data` text COMMENT '请求元数据',
  `result` text COMMENT '响应结果',
  `error` text COMMENT '错误',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='API请求日志';

-- Dumping data for table 95code.95c_api_logs: ~0 rows (大约)
DELETE FROM `95c_api_logs`;
/*!40000 ALTER TABLE `95c_api_logs` DISABLE KEYS */;
/*!40000 ALTER TABLE `95c_api_logs` ENABLE KEYS */;

-- Dumping structure for table 95code.95c_apply_invoice
CREATE TABLE IF NOT EXISTS `95c_apply_invoice` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `order_id` int(10) unsigned zerofill NOT NULL DEFAULT '0000000000' COMMENT '订单ID',
  `admin` json DEFAULT NULL COMMENT '审核人员',
  `invoice_info` json DEFAULT NULL COMMENT '开票信息',
  `medium` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '发票介质 1:电子发票 2:纸质发票',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '申请状态 1:未审核 2:申请通过 3:申请失败 4:已邮寄',
  `remark` varchar(255) NOT NULL DEFAULT '' COMMENT '备注',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='申请发票\r\n';

-- Dumping data for table 95code.95c_apply_invoice: ~0 rows (大约)
DELETE FROM `95c_apply_invoice`;
/*!40000 ALTER TABLE `95c_apply_invoice` DISABLE KEYS */;
/*!40000 ALTER TABLE `95c_apply_invoice` ENABLE KEYS */;

-- Dumping structure for table 95code.95c_audio
CREATE TABLE IF NOT EXISTS `95c_audio` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `compamy_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '公司ID',
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '上传者ID',
  `name` varchar(30) NOT NULL DEFAULT '' COMMENT '名称',
  `url` varchar(255) NOT NULL DEFAULT '' COMMENT '地址',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '状态 1:未审核 2:审核通过 3:内容违规',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='音频表（彩铃等）';

-- Dumping data for table 95code.95c_audio: ~0 rows (大约)
DELETE FROM `95c_audio`;
/*!40000 ALTER TABLE `95c_audio` DISABLE KEYS */;
/*!40000 ALTER TABLE `95c_audio` ENABLE KEYS */;

-- Dumping structure for table 95code.95c_call_record
CREATE TABLE IF NOT EXISTS `95c_call_record` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `only_id` varchar(255) NOT NULL DEFAULT '' COMMENT '话单唯一标识',
  `company_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '公司ID',
  `caller` char(50) NOT NULL DEFAULT '' COMMENT '主叫',
  `called` char(50) NOT NULL DEFAULT '' COMMENT '被叫',
  `start_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '通话开始时间',
  `end_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '通话结束时间',
  `duration_real` char(10) NOT NULL DEFAULT '' COMMENT '通话时长（实际）',
  `duration_billing` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '通话时长（计费 单位：分钟）',
  `fee` decimal(10,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '费用',
  `direction` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '通话方向 1:呼入 2:呼出',
  `is_connect` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '是否接通 1:未接通 2:接通',
  `satisfaction` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '满意度 1:非常满意 2:满意 3:一般 4:不满意 5:非常不满意',
  `package` varchar(100) NOT NULL DEFAULT '' COMMENT '套餐',
  `region` char(20) NOT NULL DEFAULT '' COMMENT '地区',
  `hung` char(20) NOT NULL DEFAULT '' COMMENT '挂断方',
  `hung_cause` varchar(255) NOT NULL DEFAULT '' COMMENT '挂断原因',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `only_id` (`only_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='通话记录表';

-- Dumping data for table 95code.95c_call_record: ~0 rows (大约)
DELETE FROM `95c_call_record`;
/*!40000 ALTER TABLE `95c_call_record` DISABLE KEYS */;
/*!40000 ALTER TABLE `95c_call_record` ENABLE KEYS */;

-- Dumping structure for table 95code.95c_company
CREATE TABLE IF NOT EXISTS `95c_company` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `number` char(8) NOT NULL DEFAULT '' COMMENT '95码号',
  `name` varchar(255) NOT NULL DEFAULT '' COMMENT '公司名称',
  `mobile` char(11) NOT NULL DEFAULT '' COMMENT '手机',
  `email` char(50) NOT NULL DEFAULT '' COMMENT '邮箱',
  `contact` char(30) NOT NULL DEFAULT '' COMMENT '联系人',
  `address` varchar(255) NOT NULL DEFAULT '' COMMENT '地址',
  `balance` decimal(10,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '余额',
  `overdraft` decimal(10,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '欠费额度',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '95码号开通状态 1:未开通 2:开通',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `call_in` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '呼入',
  `call_out` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '呼出',
  `sms` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '短信',
  `o_call_int` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '呼入超出',
  `o_call_out` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '呼出超出',
  `o_sms` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '短信超出',
  `update_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `number` (`number`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='公司';

-- Dumping data for table 95code.95c_company: ~0 rows (大约)
DELETE FROM `95c_company`;
/*!40000 ALTER TABLE `95c_company` DISABLE KEYS */;
INSERT INTO `95c_company` (`id`, `number`, `name`, `mobile`, `email`, `contact`, `address`, `balance`, `overdraft`, `status`, `create_time`, `call_in`, `call_out`, `sms`, `o_call_int`, `o_call_out`, `o_sms`, `update_time`) VALUES
	(1, '95555', '中国招商银行', '18604053412', '95555@cmbchina.com', '赵大宝', '广东省深圳市福田区深南大道', 999999.56, 0.00, 1, 1587292362, 0, 0, 0, 0, 0, 0, 1587292362);
/*!40000 ALTER TABLE `95c_company` ENABLE KEYS */;

-- Dumping structure for table 95code.95c_contract
CREATE TABLE IF NOT EXISTS `95c_contract` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `company_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '公司ID',
  `contract_no` varchar(50) NOT NULL DEFAULT '' COMMENT '合同编号',
  `party_a` varchar(255) NOT NULL DEFAULT '' COMMENT '甲方',
  `party_a_contact` char(30) NOT NULL DEFAULT '' COMMENT '甲方联系人',
  `party_b` varchar(255) NOT NULL DEFAULT '' COMMENT '乙方',
  `party_b_contact` char(30) NOT NULL DEFAULT '' COMMENT '乙方销售代表',
  `package` json DEFAULT NULL COMMENT '套餐',
  `seat_count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '坐席数量',
  `money` decimal(10,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '合同金额',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '合同状态 1:无效 2:生效中',
  `start_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '合同开始日期',
  `end_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '合同结束日期',
  `sign_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '合同签订日期',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建日期',
  `update_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='合同表';

-- Dumping data for table 95code.95c_contract: ~0 rows (大约)
DELETE FROM `95c_contract`;
/*!40000 ALTER TABLE `95c_contract` DISABLE KEYS */;
INSERT INTO `95c_contract` (`id`, `company_id`, `contract_no`, `party_a`, `party_a_contact`, `party_b`, `party_b_contact`, `package`, `seat_count`, `money`, `status`, `start_time`, `end_time`, `sign_time`, `create_time`, `update_time`) VALUES
	(1, 1, 'ZSYH2020041901', '张三', '', 'Vivian', '', NULL, 0, 0.00, 1, 1585670400, 1617206399, 1587293003, 1587293003, 0);
/*!40000 ALTER TABLE `95c_contract` ENABLE KEYS */;

-- Dumping structure for table 95code.95c_invoice_info
CREATE TABLE IF NOT EXISTS `95c_invoice_info` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `company_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '公司ID',
  `address` varchar(255) NOT NULL DEFAULT '0' COMMENT '邮寄地址等信息',
  `contact_name` char(30) NOT NULL DEFAULT '' COMMENT '联系人',
  `contact_mobile` char(11) NOT NULL DEFAULT '' COMMENT '联系人电话',
  `zip_code` char(6) NOT NULL DEFAULT '' COMMENT '邮编',
  `name` varchar(255) NOT NULL DEFAULT '' COMMENT '公司名称',
  `bank` char(40) NOT NULL DEFAULT '' COMMENT '开户行',
  `bank_account` char(20) NOT NULL DEFAULT '' COMMENT '银行账号',
  `tax` char(50) NOT NULL DEFAULT '' COMMENT '税号',
  `type` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '发票类型 1:增值税专用发票 0:普通发票',
  `telephone` char(50) NOT NULL DEFAULT '' COMMENT '联系电话 公司固话',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='开票信息';

-- Dumping data for table 95code.95c_invoice_info: ~0 rows (大约)
DELETE FROM `95c_invoice_info`;
/*!40000 ALTER TABLE `95c_invoice_info` DISABLE KEYS */;
INSERT INTO `95c_invoice_info` (`id`, `company_id`, `address`, `contact_name`, `contact_mobile`, `zip_code`, `name`, `bank`, `bank_account`, `tax`, `type`, `telephone`) VALUES
	(1, 1, '0', '', '', '0', '招商银行股份有限公司深圳笋岗支行', '中国建设银行(盛京支行)', '6217000010041315709', ' 	91440300723005139D', 0, '(86)755 83198888');
/*!40000 ALTER TABLE `95c_invoice_info` ENABLE KEYS */;

-- Dumping structure for table 95code.95c_number
CREATE TABLE IF NOT EXISTS `95c_number` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `number` char(8) NOT NULL DEFAULT '' COMMENT '95码号',
  `company_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '公司ID',
  `expired_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '过期时间',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '使用状态 1:未使用 2:使用中',
  PRIMARY KEY (`id`),
  UNIQUE KEY `number` (`number`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='95码号';

-- Dumping data for table 95code.95c_number: ~0 rows (大约)
DELETE FROM `95c_number`;
/*!40000 ALTER TABLE `95c_number` DISABLE KEYS */;
INSERT INTO `95c_number` (`id`, `number`, `company_id`, `expired_time`, `status`) VALUES
	(1, '95555', 0, 0, 1);
/*!40000 ALTER TABLE `95c_number` ENABLE KEYS */;

-- Dumping structure for table 95code.95c_order
CREATE TABLE IF NOT EXISTS `95c_order` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `company_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '公司ID',
  `trade_no` char(64) NOT NULL DEFAULT '' COMMENT '商户订单号 微信32以下 支付宝 64位以下',
  `type` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '订单类型 1:充值 2:套餐 3:增值服务 4:转账',
  `body` varchar(255) NOT NULL DEFAULT '' COMMENT '订单标题',
  `payment` decimal(10,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '支付金额',
  `payment_type` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '支付方式 1:微信 2:支付宝 3:转账',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '订单状态 1:待支付 2:成功 3:失败 4:取消',
  `pay_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '支付时间',
  `close_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '取消时间 系统10分钟后对未支付订单进行取消操作',
  `is_invoiced` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '是否开发票 1:未开 2:已开',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `delete_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '删除时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='订单表';

-- Dumping data for table 95code.95c_order: ~0 rows (大约)
DELETE FROM `95c_order`;
/*!40000 ALTER TABLE `95c_order` DISABLE KEYS */;
/*!40000 ALTER TABLE `95c_order` ENABLE KEYS */;

-- Dumping structure for table 95code.95c_order_item
CREATE TABLE IF NOT EXISTS `95c_order_item` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `order_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '订单ID',
  `name` varchar(255) NOT NULL DEFAULT '' COMMENT '商品名称',
  `intro` varchar(255) NOT NULL DEFAULT '' COMMENT '描述',
  `price` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '价格',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='订单详情表';

-- Dumping data for table 95code.95c_order_item: ~0 rows (大约)
DELETE FROM `95c_order_item`;
/*!40000 ALTER TABLE `95c_order_item` DISABLE KEYS */;
/*!40000 ALTER TABLE `95c_order_item` ENABLE KEYS */;

-- Dumping structure for table 95code.95c_package
CREATE TABLE IF NOT EXISTS `95c_package` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `company_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '公司ID',
  `name` varchar(150) NOT NULL DEFAULT '' COMMENT '套餐名称',
  `intro` text COMMENT '套餐描述',
  `struct` json DEFAULT NULL COMMENT '呼入、呼出、短信',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '修改时间',
  `delete_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '删除时间',
  PRIMARY KEY (`id`),
  KEY `deleted_at` (`delete_time`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='套餐表';

-- Dumping data for table 95code.95c_package: ~1 rows (大约)
DELETE FROM `95c_package`;
/*!40000 ALTER TABLE `95c_package` DISABLE KEYS */;
INSERT INTO `95c_package` (`id`, `company_id`, `name`, `intro`, `struct`, `create_time`, `update_time`, `delete_time`) VALUES
	(5, 0, '基础套餐', '基础套餐包含呼入、呼出套餐', '{"sms": {"unit": "条", "inside": {"rate": 0, "total": 0}, "outside": {"rate": 0, "total": 0}}, "call_in": {"unit": "分钟", "inside": {"rate": 0.3, "total": 0}, "outside": {"rate": 0.5, "total": 0}}, "call_out": {"unit": "分钟", "inside": {"rate": 0.3, "total": 0}, "outside": {"rate": 0.5, "total": 0}}}', 1587980252, 1587980252, 0);
/*!40000 ALTER TABLE `95c_package` ENABLE KEYS */;

-- Dumping structure for table 95code.95c_package_item
CREATE TABLE IF NOT EXISTS `95c_package_item` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `company_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '公司ID',
  `package_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '套餐ID',
  `type` char(10) NOT NULL DEFAULT '' COMMENT '套餐类型 call_in/call_out/sms',
  `unit` char(10) NOT NULL DEFAULT '' COMMENT '计算费率单位 分钟、条',
  `inside_rate` decimal(10,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '套餐内 费率 单位：元',
  `inside_total` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '套餐内 总量',
  `inside_used_count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '套餐内 已用数量',
  `outside_rate` decimal(10,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '超出套餐 单位：元',
  `outside_totlal` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '超出套餐 总量',
  `outside_used_count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '超出套餐 已用数量',
  `start_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '套餐生效时间',
  `end_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '套餐失效时间',
  PRIMARY KEY (`id`),
  KEY `index_company_id_status` (`company_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- Dumping data for table 95code.95c_package_item: ~1 rows (大约)
DELETE FROM `95c_package_item`;
/*!40000 ALTER TABLE `95c_package_item` DISABLE KEYS */;
INSERT INTO `95c_package_item` (`id`, `company_id`, `package_id`, `type`, `unit`, `inside_rate`, `inside_total`, `inside_used_count`, `outside_rate`, `outside_totlal`, `outside_used_count`, `start_time`, `end_time`) VALUES
	(1, 1, 4, 'call_in', '分钟', 1.00, 100000, 0, 2.00, 1000, 0, 1585670400, 1588262400);
/*!40000 ALTER TABLE `95c_package_item` ENABLE KEYS */;

-- Dumping structure for table 95code.95c_seat
CREATE TABLE IF NOT EXISTS `95c_seat` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `company_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '公司ID',
  `sub_number` char(20) NOT NULL DEFAULT '' COMMENT '分机号码',
  `name` char(30) NOT NULL DEFAULT '' COMMENT '名称',
  `seat_group_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '坐席分组ID',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '状态 1:未使用 2:使用中',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='坐席表';

-- Dumping data for table 95code.95c_seat: ~0 rows (大约)
DELETE FROM `95c_seat`;
/*!40000 ALTER TABLE `95c_seat` DISABLE KEYS */;
/*!40000 ALTER TABLE `95c_seat` ENABLE KEYS */;

-- Dumping structure for table 95code.95c_seat_group
CREATE TABLE IF NOT EXISTS `95c_seat_group` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `company_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '公司ID',
  `name` char(30) NOT NULL DEFAULT '' COMMENT '组名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='坐席分组表';

-- Dumping data for table 95code.95c_seat_group: ~0 rows (大约)
DELETE FROM `95c_seat_group`;
/*!40000 ALTER TABLE `95c_seat_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `95c_seat_group` ENABLE KEYS */;

-- Dumping structure for table 95code.95c_service
CREATE TABLE IF NOT EXISTS `95c_service` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `company_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '公司ID',
  `name` char(50) NOT NULL DEFAULT '' COMMENT '增值服务名称',
  `intro` text COMMENT '增值服务详情',
  `price` decimal(10,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '价格',
  `unit` char(10) DEFAULT NULL COMMENT '单位',
  `inside_rate` decimal(10,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '套餐内 费率',
  `insdie_total` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '套餐内 总量',
  `outside_rate` decimal(10,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '套餐外 费率',
  `outside_total` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '套餐外 总量',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='服务表';

-- Dumping data for table 95code.95c_service: ~0 rows (大约)
DELETE FROM `95c_service`;
/*!40000 ALTER TABLE `95c_service` DISABLE KEYS */;
/*!40000 ALTER TABLE `95c_service` ENABLE KEYS */;

-- Dumping structure for table 95code.95c_service_item
CREATE TABLE IF NOT EXISTS `95c_service_item` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `company_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '公司ID',
  `service_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '增值服务ID',
  `unit` char(10) DEFAULT NULL COMMENT '单位 分钟、条、次',
  `inside_rate` decimal(10,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '套餐内 费率 单位：元',
  `inside_total` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '套餐内 总量',
  `inside_used_total` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '套餐内 已用总量',
  `outside_rate` decimal(10,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '套餐外 费率 单位：元',
  `outside_total` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '套餐外 总量',
  `outside_used_total` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '套餐外 已用总量',
  `start_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '生效时间',
  `end_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '失效时间',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '状态 1:未生效 2:生效中 3:失效',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table 95code.95c_service_item: ~0 rows (大约)
DELETE FROM `95c_service_item`;
/*!40000 ALTER TABLE `95c_service_item` DISABLE KEYS */;
/*!40000 ALTER TABLE `95c_service_item` ENABLE KEYS */;

-- Dumping structure for table 95code.95c_ticket
CREATE TABLE IF NOT EXISTS `95c_ticket` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `company_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '公司ID',
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '用户ID',
  `ticket_no` char(32) NOT NULL DEFAULT '' COMMENT '工单编号',
  `type` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '工单类型 1:反馈建议 2:服务咨询 3:其他',
  `priority` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '优先级 1:非常紧急 2:很紧急 3:一般',
  `contact_info` varchar(100) NOT NULL DEFAULT '' COMMENT '联系信息 邮件或者手机号 用于通知',
  `images` text COMMENT '图片',
  `content` text COMMENT '详细内容',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '状态 1:待解决 2:待处理 3:待回复 4:完成',
  `score` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '评分',
  `appraise` text COMMENT '评价',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `delete_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '删除时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='工单表';

-- Dumping data for table 95code.95c_ticket: ~0 rows (大约)
DELETE FROM `95c_ticket`;
/*!40000 ALTER TABLE `95c_ticket` DISABLE KEYS */;
/*!40000 ALTER TABLE `95c_ticket` ENABLE KEYS */;

-- Dumping structure for table 95code.95c_ticket_reply
CREATE TABLE IF NOT EXISTS `95c_ticket_reply` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `ticket_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '工单ID',
  `table_name` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '表名 0:user 1:admin',
  `table_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '表主键',
  `images` text COMMENT '图片',
  `content` text COMMENT '内容',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='工单回复表';

-- Dumping data for table 95code.95c_ticket_reply: ~0 rows (大约)
DELETE FROM `95c_ticket_reply`;
/*!40000 ALTER TABLE `95c_ticket_reply` DISABLE KEYS */;
/*!40000 ALTER TABLE `95c_ticket_reply` ENABLE KEYS */;

-- Dumping structure for table 95code.95c_user
CREATE TABLE IF NOT EXISTS `95c_user` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `company_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '公司ID',
  `username` char(20) NOT NULL DEFAULT '' COMMENT '账号',
  `password` char(32) NOT NULL DEFAULT '' COMMENT '密码',
  `name` char(30) NOT NULL DEFAULT '' COMMENT '姓名',
  `role` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '角色 1:超级管理员 2:财务 3:商务',
  `token` char(40) NOT NULL DEFAULT '' COMMENT 'token',
  `token_expired_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'token到期时间',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '账号是否禁用 1:禁用 2:正常',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `last_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '随后登录时间',
  `last_ip` char(15) NOT NULL DEFAULT '' COMMENT 'IP',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='用户表';

-- Dumping data for table 95code.95c_user: ~2 rows (大约)
DELETE FROM `95c_user`;
/*!40000 ALTER TABLE `95c_user` DISABLE KEYS */;
INSERT INTO `95c_user` (`id`, `company_id`, `username`, `password`, `name`, `role`, `token`, `token_expired_time`, `status`, `create_time`, `update_time`, `last_time`, `last_ip`) VALUES
	(1, 1, '95555@001', 'e10adc3949ba59abbe56e057f20f883e', '张三', 1, '', 0, 1, 1587292362, 1587292362, 1588066479, '127.0.0.1'),
	(2, 1, '95555@002', 'e10adc3949ba59abbe56e057f20f883e', '李四', 2, '', 0, 1, 1587292494, 1587292494, 0, '');
/*!40000 ALTER TABLE `95c_user` ENABLE KEYS */;

-- Dumping structure for table 95code.95c_voice_menu
CREATE TABLE IF NOT EXISTS `95c_voice_menu` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `company_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '公司ID',
  `pid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '上级ID',
  `key` char(10) NOT NULL DEFAULT '' COMMENT '按键',
  `device_type` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '设备类型 1:设备 2:接口 3:语音 4:客户分组',
  `device_value` varchar(100) NOT NULL DEFAULT '' COMMENT '设备值',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='语音菜单';

-- Dumping data for table 95code.95c_voice_menu: ~0 rows (大约)
DELETE FROM `95c_voice_menu`;
/*!40000 ALTER TABLE `95c_voice_menu` DISABLE KEYS */;
/*!40000 ALTER TABLE `95c_voice_menu` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
