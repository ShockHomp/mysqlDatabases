# Host: 10.2.8.105  (Version: 5.7.11)
# Date: 2020-05-11 09:05:41
# Generator: MySQL-Front 5.3  (Build 4.234)

/*!40101 SET NAMES utf8 */;

#
# Structure for table "95c_address"
#

DROP TABLE IF EXISTS `95c_address`;
CREATE TABLE `95c_address` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `company_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '公司ID',
  `contact_name` varchar(20) NOT NULL DEFAULT '' COMMENT '联系人',
  `contact_mobile` char(11) NOT NULL DEFAULT '' COMMENT '联系人手机',
  `zip_code` char(6) NOT NULL DEFAULT '' COMMENT '邮编 ',
  `address` varchar(255) NOT NULL DEFAULT '' COMMENT '详细地址',
  `is_default` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '默认地址',
  `created_at` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `updated_at` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='公司地址 邮寄地址';

#
# Data for table "95c_address"
#


#
# Structure for table "95c_api_log"
#

DROP TABLE IF EXISTS `95c_api_log`;
CREATE TABLE `95c_api_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `host` varchar(50) NOT NULL DEFAULT '' COMMENT 'HOST',
  `url` varchar(150) NOT NULL DEFAULT '' COMMENT 'URL',
  `method` char(10) NOT NULL DEFAULT '' COMMENT '请求方式',
  `header` text COMMENT '请求头',
  `params` text COMMENT '请求参数',
  `result` text COMMENT '响应结果',
  `error` text COMMENT '异常信息',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `ip` char(15) NOT NULL DEFAULT '' COMMENT 'ip',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8 COMMENT='API请求日志';

#
# Data for table "95c_api_log"
#

INSERT INTO `95c_api_log` VALUES (1,'yunou95code.io','/api/v1/auth/login.html','POST','{\"connection\":\"close\",\"host\":\"yunou95code.io\",\"eo-token\":\"a8813c8b-275c-451a-958d-9bff7573da54\",\"user-agent\":\"EOLINKER\",\"content-length\":\"36\",\"content-type\":\"application\\/x-www-form-urlencoded\"}','{\"username\":\"95555@001\",\"password\":\"123456\",\"ver\":\"v1\"}',NULL,NULL,1589009182,1589009182,'127.0.0.1'),(2,'yunou95code.io','/api/v1/auth/login.html','POST','{\"connection\":\"close\",\"host\":\"yunou95code.io\",\"eo-token\":\"fbc1751c-9d71-4777-ad3d-a58977c0c95f\",\"user-agent\":\"EOLINKER\",\"content-length\":\"36\",\"cookie\":\"PHPSESSID=1p4lgfp3qekhek3cqmi0abs7pr; path=\\/;\",\"content-type\":\"application\\/x-www-form-urlencoded\"}','{\"username\":\"95555@001\",\"password\":\"123456\",\"ver\":\"v1\"}',NULL,NULL,1589009203,1589009203,'127.0.0.1'),(3,'yunou95code.io','/api/v1/auth/login.html','POST','{\"connection\":\"close\",\"host\":\"yunou95code.io\",\"eo-token\":\"8c4ea95b-c517-418c-82f3-61bba964ccc8\",\"user-agent\":\"EOLINKER\",\"content-length\":\"36\",\"cookie\":\"PHPSESSID=1p4lgfp3qekhek3cqmi0abs7pr; path=\\/;\",\"content-type\":\"application\\/x-www-form-urlencoded\"}','{\"username\":\"95555@001\",\"password\":\"123456\",\"ver\":\"v1\"}','{\"code\":1,\"msg\":\"\",\"data\":{\"id\":1,\"company_id\":1,\"name\":\"张三\",\"role\":1,\"token\":\"2feebe816791e47ff3997e71df09c42760d023f1\",\"token_expired_time\":1590305238,\"status\":1,\"last_time\":\"2020-05-09 15:27:18\",\"last_ip\":\"127.0.0.1\"}}',NULL,1589009238,1589009238,'127.0.0.1'),(4,'yunou95code.io','/api/v1/exception.html','GET','{\"connection\":\"close\",\"host\":\"yunou95code.io\",\"eo-token\":\"cfd4aa37-26b4-4699-a969-e849e375a2eb\",\"user-agent\":\"EOLINKER\",\"content-length\":\"0\",\"cookie\":\"PHPSESSID=1p4lgfp3qekhek3cqmi0abs7pr; path=\\/;\",\"content-type\":\"application\\/x-www-form-urlencoded\"}','{\"ver\":\"v1\"}','{\"code\":10001,\"msg\":\"系统异常\"}','{\"file\":\"D:\\\\laragon\\\\www\\\\yunou_95code\\\\application\\\\api\\\\controller\\\\v1\\\\Base.php\",\"line\":210,\"message\":\"count(): Parameter must be an array or an object that implements Countable\"}',1589010133,1589010133,'127.0.0.1'),(5,'yunou95code.io','/api/v1/auth/login.html','POST','{\"connection\":\"close\",\"host\":\"yunou95code.io\",\"eo-token\":\"02f852bb-d809-4726-b67f-b46426ea46fc\",\"user-agent\":\"EOLINKER\",\"content-length\":\"36\",\"cookie\":\"PHPSESSID=1p4lgfp3qekhek3cqmi0abs7pr; path=\\/;\",\"content-type\":\"application\\/x-www-form-urlencoded\"}','{\"username\":\"95555@001\",\"password\":\"123456\",\"ver\":\"v1\"}','{\"code\":1,\"msg\":\"\",\"data\":{\"id\":1,\"company_id\":1,\"name\":\"张三\",\"role\":1,\"token\":\"9787ee8b0549c22364359c8a86bedd4acb92aa6a\",\"token_expired_time\":1590307657,\"status\":1,\"last_time\":\"2020-05-09 16:07:37\",\"last_ip\":\"127.0.0.1\"}}',NULL,1589011657,1589011657,'127.0.0.1'),(6,'yunou95code.io','/api/v1/auth/login.html','POST','{\"connection\":\"close\",\"host\":\"yunou95code.io\",\"eo-token\":\"cc999530-18db-4f7f-8da0-d705a966c38d\",\"user-agent\":\"EOLINKER\",\"content-length\":\"36\",\"cookie\":\"PHPSESSID=1p4lgfp3qekhek3cqmi0abs7pr; path=\\/;\",\"content-type\":\"application\\/x-www-form-urlencoded\"}','{\"username\":\"95555@001\",\"password\":\"123456\",\"ver\":\"v1\"}','{\"code\":1,\"msg\":\"\",\"data\":{\"id\":1,\"company_id\":1,\"name\":\"张三\",\"role\":1,\"token\":\"407adfbca1f7b0a0b20f0bf1ae9dbc560fb4f22c\",\"token_expired_time\":1590307700,\"status\":1,\"last_time\":\"2020-05-09 16:08:20\",\"last_ip\":\"127.0.0.1\"}}',NULL,1589011700,1589011700,'127.0.0.1'),(7,'yunou95code.io','/api/v1/auth/login.html','POST','{\"connection\":\"close\",\"host\":\"yunou95code.io\",\"eo-token\":\"e3095125-29f8-4df8-82b7-86a13a3510ce\",\"user-agent\":\"EOLINKER\",\"content-length\":\"36\",\"cookie\":\"PHPSESSID=1p4lgfp3qekhek3cqmi0abs7pr; path=\\/;\",\"content-type\":\"application\\/x-www-form-urlencoded\"}','{\"username\":\"95555@001\",\"password\":\"123456\",\"ver\":\"v1\"}','{\"code\":1,\"msg\":\"\",\"data\":{\"id\":1,\"company_id\":1,\"name\":\"张三\",\"role\":1,\"token\":\"0d3ce5a70c7b4a354576d05fe23a302302b643a2\",\"token_expired_time\":1590307709,\"status\":1,\"last_time\":\"2020-05-09 16:08:29\",\"last_ip\":\"127.0.0.1\"}}',NULL,1589011709,1589011709,'127.0.0.1'),(8,'yunou95code.io','/api/v1/captcha.html','GET','{\"connection\":\"close\",\"host\":\"yunou95code.io\",\"eo-token\":\"5a091084-9023-43be-9974-85fe662bd302\",\"user-agent\":\"EOLINKER\",\"content-length\":\"0\",\"cookie\":\"PHPSESSID=1p4lgfp3qekhek3cqmi0abs7pr; path=\\/;\",\"content-type\":\"application\\/x-www-form-urlencoded\"}','{\"ver\":\"v1\"}',NULL,NULL,1589016420,1589016420,'127.0.0.1'),(9,'yunou95code.io','/api/v1/captcha.html','GET','{\"connection\":\"close\",\"host\":\"yunou95code.io\",\"eo-token\":\"a755cfc0-a641-492a-9b91-f02820ee6b3c\",\"user-agent\":\"EOLINKER\",\"content-length\":\"0\",\"cookie\":\"PHPSESSID=1p4lgfp3qekhek3cqmi0abs7pr; path=\\/;\",\"content-type\":\"application\\/x-www-form-urlencoded\"}','{\"ver\":\"v1\"}',NULL,NULL,1589016436,1589016436,'127.0.0.1'),(10,'yunou95code.io','/api/v1/captcha.html','GET','{\"connection\":\"close\",\"host\":\"yunou95code.io\",\"eo-token\":\"d6f5a761-3438-43f1-b892-dbbbe006a9cc\",\"user-agent\":\"EOLINKER\",\"content-length\":\"0\",\"cookie\":\"PHPSESSID=1p4lgfp3qekhek3cqmi0abs7pr; path=\\/;\",\"content-type\":\"application\\/x-www-form-urlencoded\"}','{\"ver\":\"v1\"}',NULL,NULL,1589016558,1589016558,'127.0.0.1'),(11,'yunou95code.io','/api/v1/captcha.html','GET','{\"connection\":\"close\",\"host\":\"yunou95code.io\",\"eo-token\":\"40fd7090-86ee-4be4-8447-e8d6ca686069\",\"user-agent\":\"EOLINKER\",\"content-length\":\"0\",\"cookie\":\"PHPSESSID=1p4lgfp3qekhek3cqmi0abs7pr; path=\\/;\",\"content-type\":\"application\\/x-www-form-urlencoded\"}','{\"ver\":\"v1\"}',NULL,NULL,1589016563,1589016563,'127.0.0.1'),(12,'yunou95code.io','/api/v1/captcha.html','GET','{\"connection\":\"close\",\"host\":\"yunou95code.io\",\"eo-token\":\"60329001-ce3c-4d55-8daf-d30352071510\",\"user-agent\":\"EOLINKER\",\"content-length\":\"0\",\"cookie\":\"PHPSESSID=1p4lgfp3qekhek3cqmi0abs7pr; path=\\/;\",\"content-type\":\"application\\/x-www-form-urlencoded\"}','{\"ver\":\"v1\"}',NULL,NULL,1589016628,1589016628,'127.0.0.1'),(13,'yunou95code.io','/api/v1/captcha.html','GET','{\"connection\":\"close\",\"host\":\"yunou95code.io\",\"eo-token\":\"d5e9ad46-2e54-40f6-88df-9158f6b7ea55\",\"user-agent\":\"EOLINKER\",\"content-length\":\"0\",\"cookie\":\"PHPSESSID=1p4lgfp3qekhek3cqmi0abs7pr; path=\\/;\",\"content-type\":\"application\\/x-www-form-urlencoded\"}','{\"ver\":\"v1\"}',NULL,NULL,1589016684,1589016684,'127.0.0.1'),(14,'yunou95code.io','/api/v1/captcha.html','GET','{\"connection\":\"close\",\"host\":\"yunou95code.io\",\"eo-token\":\"f9d1a276-b64f-4ce5-996f-c713871e784a\",\"user-agent\":\"EOLINKER\",\"content-length\":\"0\",\"cookie\":\"PHPSESSID=1p4lgfp3qekhek3cqmi0abs7pr; path=\\/;\",\"content-type\":\"application\\/x-www-form-urlencoded\"}','{\"ver\":\"v1\"}',NULL,NULL,1589016687,1589016687,'127.0.0.1'),(15,'yunou95code.io','/api/v1/captcha.html','GET','{\"connection\":\"close\",\"host\":\"yunou95code.io\",\"eo-token\":\"a36f3f6a-dfed-4f84-9e12-34dcdedcb0a5\",\"user-agent\":\"EOLINKER\",\"content-length\":\"0\",\"cookie\":\"PHPSESSID=1p4lgfp3qekhek3cqmi0abs7pr; path=\\/;\",\"content-type\":\"application\\/x-www-form-urlencoded\"}','{\"ver\":\"v1\"}',NULL,NULL,1589016694,1589016694,'127.0.0.1'),(16,'yunou95code.io','/api/v1/captcha.html','GET','{\"connection\":\"close\",\"host\":\"yunou95code.io\",\"eo-token\":\"77a76847-b569-4d7b-ae9a-1066a960b9cb\",\"user-agent\":\"EOLINKER\",\"content-length\":\"0\",\"cookie\":\"PHPSESSID=1p4lgfp3qekhek3cqmi0abs7pr; path=\\/;\",\"content-type\":\"application\\/x-www-form-urlencoded\"}','{\"ver\":\"v1\"}',NULL,NULL,1589016701,1589016701,'127.0.0.1'),(17,'yunou95code.io','/api/v1/captcha.html','GET','{\"connection\":\"close\",\"host\":\"yunou95code.io\",\"eo-token\":\"00bdc7d9-8445-4908-abb3-ee01a219b549\",\"user-agent\":\"EOLINKER\",\"content-length\":\"0\",\"cookie\":\"PHPSESSID=1p4lgfp3qekhek3cqmi0abs7pr; path=\\/;\",\"content-type\":\"application\\/x-www-form-urlencoded\"}','{\"ver\":\"v1\"}',NULL,NULL,1589016711,1589016711,'127.0.0.1'),(18,'yunou95code.io','/api/v1/captcha.html','GET','{\"connection\":\"close\",\"host\":\"yunou95code.io\",\"eo-token\":\"02cb08a3-d8a1-4793-b4f0-4f048a2680ac\",\"user-agent\":\"EOLINKER\",\"content-length\":\"0\",\"cookie\":\"PHPSESSID=1p4lgfp3qekhek3cqmi0abs7pr; path=\\/;\",\"content-type\":\"application\\/x-www-form-urlencoded\"}','{\"ver\":\"v1\"}',NULL,NULL,1589016714,1589016714,'127.0.0.1'),(19,'yunou95code.io','/api/v1/captcha.html','GET','{\"connection\":\"close\",\"host\":\"yunou95code.io\",\"eo-token\":\"63c762c4-7718-4068-b1c5-f526da03ac9c\",\"user-agent\":\"EOLINKER\",\"content-length\":\"0\",\"cookie\":\"PHPSESSID=1p4lgfp3qekhek3cqmi0abs7pr; path=\\/;\",\"content-type\":\"application\\/x-www-form-urlencoded\"}','{\"ver\":\"v1\"}',NULL,NULL,1589016715,1589016715,'127.0.0.1'),(20,'yunou95code.io','/api/v1/captcha.html','GET','{\"connection\":\"close\",\"host\":\"yunou95code.io\",\"eo-token\":\"eac31130-e587-473a-8233-6fe5927373cd\",\"user-agent\":\"EOLINKER\",\"content-length\":\"0\",\"cookie\":\"PHPSESSID=1p4lgfp3qekhek3cqmi0abs7pr; path=\\/;\",\"content-type\":\"application\\/x-www-form-urlencoded\"}','{\"ver\":\"v1\"}',NULL,NULL,1589016717,1589016717,'127.0.0.1'),(21,'yunou95code.io','/api/v1/captcha.html','GET','{\"connection\":\"close\",\"host\":\"yunou95code.io\",\"eo-token\":\"2f730008-ea83-4792-89e7-c62b94ba2cf5\",\"user-agent\":\"EOLINKER\",\"content-length\":\"0\",\"cookie\":\"PHPSESSID=1p4lgfp3qekhek3cqmi0abs7pr; path=\\/;\",\"content-type\":\"application\\/x-www-form-urlencoded\"}','{\"ver\":\"v1\"}',NULL,NULL,1589016718,1589016718,'127.0.0.1'),(22,'yunou95code.io','/api/v1/captcha.html','GET','{\"connection\":\"close\",\"host\":\"yunou95code.io\",\"eo-token\":\"b730ddc0-fc99-4748-8184-9a58155090e2\",\"user-agent\":\"EOLINKER\",\"content-length\":\"0\",\"cookie\":\"PHPSESSID=1p4lgfp3qekhek3cqmi0abs7pr; path=\\/;\",\"content-type\":\"application\\/x-www-form-urlencoded\"}','{\"ver\":\"v1\"}',NULL,NULL,1589016720,1589016720,'127.0.0.1'),(23,'yunou95code.io','/api/v1/captcha.html','GET','{\"connection\":\"close\",\"host\":\"yunou95code.io\",\"eo-token\":\"dd688f2c-3ae3-4c58-874d-10a63a4eb9db\",\"user-agent\":\"EOLINKER\",\"content-length\":\"0\",\"cookie\":\"PHPSESSID=1p4lgfp3qekhek3cqmi0abs7pr; path=\\/;\",\"content-type\":\"application\\/x-www-form-urlencoded\"}','{\"ver\":\"v1\"}',NULL,NULL,1589016806,1589016806,'127.0.0.1'),(24,'yunou95code.io','/api/v1/captcha.html','GET','{\"connection\":\"close\",\"host\":\"yunou95code.io\",\"eo-token\":\"2f99c498-bda3-4cd8-8728-dc9507dc5ef0\",\"user-agent\":\"EOLINKER\",\"content-length\":\"0\",\"cookie\":\"PHPSESSID=1p4lgfp3qekhek3cqmi0abs7pr; path=\\/;\",\"content-type\":\"application\\/x-www-form-urlencoded\"}','{\"ver\":\"v1\"}',NULL,NULL,1589016821,1589016821,'127.0.0.1'),(25,'yunou95code.io','/api/v1/captcha.html','GET','{\"connection\":\"close\",\"host\":\"yunou95code.io\",\"eo-token\":\"c8a12b3d-42ba-4fa8-8515-d9d99c96b373\",\"user-agent\":\"EOLINKER\",\"content-length\":\"0\",\"cookie\":\"PHPSESSID=1p4lgfp3qekhek3cqmi0abs7pr; path=\\/;\",\"content-type\":\"application\\/x-www-form-urlencoded\"}','{\"ver\":\"v1\"}',NULL,NULL,1589017119,1589017119,'127.0.0.1'),(26,'yunou95code.io','/api/v1/captcha.html','GET','{\"connection\":\"close\",\"host\":\"yunou95code.io\",\"eo-token\":\"2a1a9971-6729-4e01-9e83-4b113e3d4353\",\"user-agent\":\"EOLINKER\",\"content-length\":\"0\",\"cookie\":\"PHPSESSID=1p4lgfp3qekhek3cqmi0abs7pr; path=\\/;\",\"content-type\":\"application\\/x-www-form-urlencoded\"}','{\"ver\":\"v1\"}',NULL,NULL,1589017121,1589017121,'127.0.0.1'),(27,'yunou95code.io','/api/v1/captcha.html','GET','{\"connection\":\"close\",\"host\":\"yunou95code.io\",\"eo-token\":\"0b7eda41-200f-4382-8263-dc70ad5e7276\",\"user-agent\":\"EOLINKER\",\"content-length\":\"0\",\"cookie\":\"PHPSESSID=1p4lgfp3qekhek3cqmi0abs7pr; path=\\/;\",\"content-type\":\"application\\/x-www-form-urlencoded\"}','{\"ver\":\"v1\"}',NULL,NULL,1589017124,1589017124,'127.0.0.1'),(28,'yunou95code.io','/api/v1/captcha.html','GET','{\"connection\":\"close\",\"host\":\"yunou95code.io\",\"eo-token\":\"1c6fca4e-965c-4ee8-a77b-8b5ab9ebe033\",\"user-agent\":\"EOLINKER\",\"content-length\":\"0\",\"cookie\":\"PHPSESSID=1p4lgfp3qekhek3cqmi0abs7pr; path=\\/;\",\"content-type\":\"application\\/x-www-form-urlencoded\"}','{\"ver\":\"v1\"}',NULL,NULL,1589017126,1589017126,'127.0.0.1'),(29,'yunou95code.io','/api/v1/captcha.html','GET','{\"connection\":\"close\",\"host\":\"yunou95code.io\",\"eo-token\":\"5e940953-9e68-4c39-85e7-c51485e03c5a\",\"user-agent\":\"EOLINKER\",\"content-length\":\"0\",\"cookie\":\"PHPSESSID=1p4lgfp3qekhek3cqmi0abs7pr; path=\\/;\",\"content-type\":\"application\\/x-www-form-urlencoded\"}','{\"ver\":\"v1\"}',NULL,NULL,1589017128,1589017128,'127.0.0.1'),(30,'yunou95code.io','/api/v1/captcha.html','GET','{\"connection\":\"close\",\"host\":\"yunou95code.io\",\"eo-token\":\"ad679e18-9bf7-4810-95e2-55ac6e71cb01\",\"user-agent\":\"EOLINKER\",\"content-length\":\"0\",\"content-type\":\"application\\/x-www-form-urlencoded\",\"cookie\":\"PHPSESSID=1p4lgfp3qekhek3cqmi0abs7pr; path=\\/;\"}','{\"ver\":\"v1\"}',NULL,NULL,1589017136,1589017136,'127.0.0.1'),(31,'yunou95code.io','/api/v1/captcha.html','GET','{\"connection\":\"close\",\"host\":\"yunou95code.io\",\"eo-token\":\"11f3b05c-9e7d-4671-80b2-dcbbdc94bec8\",\"user-agent\":\"EOLINKER\",\"content-length\":\"0\",\"content-type\":\"application\\/x-www-form-urlencoded\",\"cookie\":\"PHPSESSID=1p4lgfp3qekhek3cqmi0abs7pr; path=\\/;\"}','{\"ver\":\"v1\"}',NULL,NULL,1589158897,1589158897,'127.0.0.1');

#
# Structure for table "95c_apply_invoice"
#

DROP TABLE IF EXISTS `95c_apply_invoice`;
CREATE TABLE `95c_apply_invoice` (
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

#
# Data for table "95c_apply_invoice"
#


#
# Structure for table "95c_audio"
#

DROP TABLE IF EXISTS `95c_audio`;
CREATE TABLE `95c_audio` (
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

#
# Data for table "95c_audio"
#


#
# Structure for table "95c_call_record"
#

DROP TABLE IF EXISTS `95c_call_record`;
CREATE TABLE `95c_call_record` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `company_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '公司ID',
  `only_id` varchar(255) NOT NULL DEFAULT '' COMMENT '话单唯一标识',
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

#
# Data for table "95c_call_record"
#


#
# Structure for table "95c_call_statistics"
#

DROP TABLE IF EXISTS `95c_call_statistics`;
CREATE TABLE `95c_call_statistics` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `company_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '公司ID',
  `duration` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '通话时长',
  `frequency` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '频次',
  `date` char(10) NOT NULL DEFAULT '' COMMENT '日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='通话统计表 每天通话时长 频次';

#
# Data for table "95c_call_statistics"
#


#
# Structure for table "95c_company"
#

DROP TABLE IF EXISTS `95c_company`;
CREATE TABLE `95c_company` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `number` char(8) NOT NULL DEFAULT '' COMMENT '95码号',
  `name` varchar(30) NOT NULL DEFAULT '' COMMENT '公司名称',
  `mobile` char(11) NOT NULL DEFAULT '' COMMENT '手机',
  `email` char(50) NOT NULL DEFAULT '' COMMENT '邮箱',
  `trade_password` char(32) NOT NULL DEFAULT '' COMMENT '交易密码',
  `contact` char(30) NOT NULL DEFAULT '' COMMENT '联系人',
  `address` varchar(255) NOT NULL DEFAULT '' COMMENT '地址',
  `balance` decimal(10,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '余额',
  `balance_limit` decimal(10,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '欠费额度',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '95码号开通状态 1:未开通 2:开通',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  PRIMARY KEY (`id`),
  KEY `index_number_status` (`number`,`status`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='公司';

#
# Data for table "95c_company"
#

INSERT INTO `95c_company` VALUES (1,'95555','中国招商银行','18604053412','95555@cmbchina.com','','赵大宝','广东省深圳市福田区深南大道',999999.56,0.00,2,1587292362,1587292362);

#
# Structure for table "95c_contract"
#

DROP TABLE IF EXISTS `95c_contract`;
CREATE TABLE `95c_contract` (
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
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '合同状态 1:未生效 2:生效中 3:无效',
  `start_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '合同开始日期',
  `end_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '合同结束日期',
  `sign_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '合同签订日期',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建日期',
  `update_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='合同表';

#
# Data for table "95c_contract"
#

INSERT INTO `95c_contract` VALUES (1,1,'ZSYH2020041901','张三','中国招商银行','Vivian','云鸥科技',X'7B22736D73223A207B22756E6974223A2022E69DA1222C2022696E73696465223A207B22746F74616C223A2031303030307D2C20226F757473696465223A207B2272617465223A20302E317D7D2C20226E616D65223A2022E5A597E9A49041222C2022696E74726F223A2022E5A597E9A490E68F8FE8BFB0222C202263616C6C5F696E223A207B22756E6974223A2022E58886E9929F222C2022696E73696465223A207B22746F74616C223A2031303030307D2C20226F757473696465223A207B2272617465223A20317D7D2C202263616C6C5F6F7574223A207B22756E6974223A2022E58886E9929F222C2022696E73696465223A207B22746F74616C223A20307D2C20226F757473696465223A207B2272617465223A20317D7D7D',20,0.00,1,1585670400,1617206399,1587293003,1587293003,0);

#
# Structure for table "95c_invoice_info"
#

DROP TABLE IF EXISTS `95c_invoice_info`;
CREATE TABLE `95c_invoice_info` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `company_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '公司ID',
  `address` varchar(255) NOT NULL DEFAULT '0' COMMENT '邮寄地址等信息',
  `contact_name` char(30) NOT NULL DEFAULT '' COMMENT '联系人',
  `contact_mobile` char(11) NOT NULL DEFAULT '' COMMENT '联系人电话',
  `zip_code` char(6) NOT NULL DEFAULT '' COMMENT '邮编',
  `name` varchar(255) NOT NULL DEFAULT '' COMMENT '公司名称',
  `bank` char(40) NOT NULL DEFAULT '' COMMENT '开户行',
  `bank_account` char(20) NOT NULL DEFAULT '' COMMENT '银行账号',
  `tax` char(20) NOT NULL DEFAULT '' COMMENT '税号',
  `type` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '发票类型 1:增值税专用发票 2:普通发票',
  `telephone` char(20) NOT NULL DEFAULT '' COMMENT '联系电话 公司固话',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='开票信息';

#
# Data for table "95c_invoice_info"
#

INSERT INTO `95c_invoice_info` VALUES (1,1,'0','','','0','招商银行股份有限公司深圳笋岗支行','中国建设银行(盛京支行)','6217000010041315709',' \t91440300723005139D',0,'(86)755 83198888');

#
# Structure for table "95c_jobs"
#

DROP TABLE IF EXISTS `95c_jobs`;
CREATE TABLE `95c_jobs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) unsigned NOT NULL,
  `reserved` tinyint(3) unsigned NOT NULL,
  `reserved_at` int(10) unsigned DEFAULT NULL,
  `available_at` int(10) unsigned NOT NULL,
  `created_at` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

#
# Data for table "95c_jobs"
#


#
# Structure for table "95c_message"
#

DROP TABLE IF EXISTS `95c_message`;
CREATE TABLE `95c_message` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `company_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '公司ID',
  `title` varchar(100) NOT NULL DEFAULT '' COMMENT '标题',
  `type` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '消息类型 1:普通消息 2:充值 3:续费 4:工单 5:套餐 6:信息修改 7:审核 8:异地登录 9:系统 10:新功能',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='消息表';

#
# Data for table "95c_message"
#


#
# Structure for table "95c_number"
#

DROP TABLE IF EXISTS `95c_number`;
CREATE TABLE `95c_number` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `number` char(8) NOT NULL DEFAULT '' COMMENT '95码号',
  `company_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '公司ID',
  `expired_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '过期时间',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '使用状态 1:未使用 2:使用中',
  PRIMARY KEY (`id`),
  UNIQUE KEY `number` (`number`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='95码号';

#
# Data for table "95c_number"
#

INSERT INTO `95c_number` VALUES (1,'95555',0,0,1);

#
# Structure for table "95c_order"
#

DROP TABLE IF EXISTS `95c_order`;
CREATE TABLE `95c_order` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `company_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '公司ID',
  `type` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '订单类型 1:套餐续约 2:增值服务 3:其他',
  `body` varchar(255) NOT NULL DEFAULT '' COMMENT '订单标题',
  `payment` decimal(10,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '支付金额',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '订单状态 1:完成 2:取消',
  `pay_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '支付时间',
  `close_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '取消时间 系统10分钟后对未支付订单进行取消操作',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `delete_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '删除时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='订单表';

#
# Data for table "95c_order"
#


#
# Structure for table "95c_order_item"
#

DROP TABLE IF EXISTS `95c_order_item`;
CREATE TABLE `95c_order_item` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `order_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '订单ID',
  `name` varchar(255) NOT NULL DEFAULT '' COMMENT '商品名称',
  `intro` varchar(255) NOT NULL DEFAULT '' COMMENT '描述',
  `price` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '价格',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='订单详情表';

#
# Data for table "95c_order_item"
#


#
# Structure for table "95c_package"
#

DROP TABLE IF EXISTS `95c_package`;
CREATE TABLE `95c_package` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `company_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '公司ID',
  `contract_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '合同ID',
  `package` json DEFAULT NULL COMMENT '套餐',
  `type` char(10) NOT NULL DEFAULT '' COMMENT '套餐类型 call_in/call_out/sms',
  `unit` char(10) NOT NULL DEFAULT '' COMMENT '计算费率单位 分钟、条',
  `inside_total` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '套餐内 总量',
  `inside_used_count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '套餐内 已用数量',
  `outside_rate` decimal(10,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '超出套餐 单位：元',
  `outside_used_count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '超出套餐 已用数量',
  `start_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '套餐生效时间',
  `end_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '套餐失效时间',
  PRIMARY KEY (`id`),
  KEY `index_company_id_status` (`company_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='套餐表';

#
# Data for table "95c_package"
#

INSERT INTO `95c_package` VALUES (1,1,1,X'7B22736D73223A207B22756E6974223A2022E69DA1222C2022696E73696465223A207B22746F74616C223A20307D2C20226F757473696465223A207B2272617465223A20307D7D2C202263616C6C5F696E223A207B22756E6974223A2022E58886E9929F222C2022696E73696465223A207B22746F74616C223A20307D2C20226F757473696465223A207B2272617465223A20302E357D7D2C202263616C6C5F6F7574223A207B22756E6974223A2022E58886E9929F222C2022696E73696465223A207B22746F74616C223A20307D2C20226F757473696465223A207B2272617465223A20302E357D7D7D','call_in','分钟',100000,0,2.00,0,1585670400,1588262400);

#
# Structure for table "95c_recharge"
#

DROP TABLE IF EXISTS `95c_recharge`;
CREATE TABLE `95c_recharge` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `company_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '公司ID',
  `trade_no` char(64) NOT NULL DEFAULT '' COMMENT '商户订单号 微信32以下 支付宝 64位以下',
  `body` varchar(255) NOT NULL DEFAULT '' COMMENT '订单标题',
  `payment` decimal(10,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '支付金额',
  `payment_type` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '支付方式 1:微信 2:支付宝 3:转账 4:储值卡',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '订单状态 1:待支付 2:成功 3:失败 4:取消',
  `pay_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '支付时间',
  `close_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '取消时间 系统10分钟后对未支付订单进行取消操作',
  `is_invoiced` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '是否开发票 1:未开 2:已开 *储值卡不给予开发票',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `delete_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '删除时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='充值表';

#
# Data for table "95c_recharge"
#


#
# Structure for table "95c_seat"
#

DROP TABLE IF EXISTS `95c_seat`;
CREATE TABLE `95c_seat` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `company_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '公司ID',
  `sub_number` char(20) NOT NULL DEFAULT '' COMMENT '分机号码',
  `name` char(30) NOT NULL DEFAULT '' COMMENT '名称',
  `amount` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '话务量',
  `work_hours` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '工时',
  `rating` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '话务质检 1:优 2:一般 3:差',
  `intensity` char(5) NOT NULL DEFAULT '' COMMENT '工作强度',
  `seat_group_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '坐席分组ID',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '状态 1:未使用 2:使用中',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='坐席表';

#
# Data for table "95c_seat"
#


#
# Structure for table "95c_seat_group"
#

DROP TABLE IF EXISTS `95c_seat_group`;
CREATE TABLE `95c_seat_group` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `company_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '公司ID',
  `name` char(30) NOT NULL DEFAULT '' COMMENT '组名',
  `count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '人数',
  `ploy` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '分流策略 1:轮询 2:随机 3:话务量',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='坐席分组表';

#
# Data for table "95c_seat_group"
#


#
# Structure for table "95c_service"
#

DROP TABLE IF EXISTS `95c_service`;
CREATE TABLE `95c_service` (
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

#
# Data for table "95c_service"
#


#
# Structure for table "95c_service_item"
#

DROP TABLE IF EXISTS `95c_service_item`;
CREATE TABLE `95c_service_item` (
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

#
# Data for table "95c_service_item"
#


#
# Structure for table "95c_stored_card"
#

DROP TABLE IF EXISTS `95c_stored_card`;
CREATE TABLE `95c_stored_card` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `company_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '公司ID',
  `card_no` char(32) NOT NULL DEFAULT '' COMMENT '卡号',
  `table_name` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '核销者表 1:user 2:admin',
  `table_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '核销ID',
  `hx_code` char(10) NOT NULL DEFAULT '' COMMENT '核销码',
  `hx_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '核销时间',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='储值卡';

#
# Data for table "95c_stored_card"
#


#
# Structure for table "95c_ticket"
#

DROP TABLE IF EXISTS `95c_ticket`;
CREATE TABLE `95c_ticket` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `company_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '公司ID',
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '用户ID',
  `ticket_no` char(32) NOT NULL DEFAULT '' COMMENT '工单编号',
  `type` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '工单类型 1:反馈建议 2:售后咨询 3:财务相关 4其他',
  `priority` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '优先级 1:非常紧急 2:紧急 3:一般',
  `contact_info` varchar(100) NOT NULL DEFAULT '' COMMENT '联系信息 邮件或者手机号 用于通知',
  `images` text COMMENT '图片',
  `content` text COMMENT '详细内容',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '状态 1:待解决 2:待处理 3:待回复 4:完成',
  `score` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '评分',
  `appraise` text COMMENT '评价',
  `is_seed` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '是否查看 1:未查看 2:已查看',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `delete_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '删除时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='工单表';

#
# Data for table "95c_ticket"
#


#
# Structure for table "95c_ticket_reply"
#

DROP TABLE IF EXISTS `95c_ticket_reply`;
CREATE TABLE `95c_ticket_reply` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `ticket_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '工单ID',
  `table_name` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '表名 1:user 2:admin',
  `table_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '表主键',
  `images` text COMMENT '图片',
  `content` text COMMENT '内容',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='工单回复表';

#
# Data for table "95c_ticket_reply"
#


#
# Structure for table "95c_user"
#

DROP TABLE IF EXISTS `95c_user`;
CREATE TABLE `95c_user` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `company_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '公司ID',
  `username` char(20) NOT NULL DEFAULT '' COMMENT '账号',
  `password` char(32) NOT NULL DEFAULT '' COMMENT '密码',
  `mobile` char(11) NOT NULL DEFAULT '' COMMENT '手机',
  `email` varchar(255) NOT NULL DEFAULT '' COMMENT '邮箱',
  `name` char(30) NOT NULL DEFAULT '' COMMENT '姓名',
  `role` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '角色 1:超级管理员 2:财务 3:商务',
  `token` char(40) NOT NULL DEFAULT '' COMMENT 'token',
  `token_expired_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'token到期时间',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '账号是否禁用 1:禁用 2:正常',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `last_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '随后登录时间',
  `last_ip` char(15) NOT NULL DEFAULT '' COMMENT 'IP',
  PRIMARY KEY (`id`),
  KEY `index_username_password` (`username`,`password`),
  KEY `index_token` (`token`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='用户表';

#
# Data for table "95c_user"
#

INSERT INTO `95c_user` VALUES (1,1,'95555@001','e10adc3949ba59abbe56e057f20f883e','18604053412','zixi_han@sina.com','张三',1,'0d3ce5a70c7b4a354576d05fe23a302302b643a2',1590307709,1,1587292362,1588920223,1589011709,'127.0.0.1'),(2,1,'95555@002','e10adc3949ba59abbe56e057f20f883e','','','李四',2,'',0,1,1587292494,1587292494,0,'');

#
# Structure for table "95c_voice_menu"
#

DROP TABLE IF EXISTS `95c_voice_menu`;
CREATE TABLE `95c_voice_menu` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `company_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '公司ID',
  `pid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '上级ID',
  `key` char(10) NOT NULL DEFAULT '' COMMENT '按键',
  `device_type` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '设备类型 1:设备 2:接口 3:语音 4:客户分组',
  `device_value` varchar(100) NOT NULL DEFAULT '' COMMENT '设备值',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='语音菜单';

#
# Data for table "95c_voice_menu"
#

