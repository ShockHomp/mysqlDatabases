/*
 Navicat Premium Data Transfer

 Source Server         : 雪花新生产库
 Source Server Type    : MySQL
 Source Server Version : 50726
 Source Host           : rm-2ze8k45la95ic8d2j8o.mysql.rds.aliyuncs.com:3306
 Source Schema         : fasthome-develop

 Target Server Type    : MySQL
 Target Server Version : 50726
 File Encoding         : 65001

 Date: 18/04/2020 19:21:18
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for shopping_refund_reason
-- ----------------------------
DROP TABLE IF EXISTS `shopping_refund_reason`;
CREATE TABLE `shopping_refund_reason` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `reason_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '退款原因名称',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of shopping_refund_reason
-- ----------------------------
BEGIN;
INSERT INTO `shopping_refund_reason` VALUES (1, '买多、买重复', NULL, NULL);
INSERT INTO `shopping_refund_reason` VALUES (2, '品质不满意，有瑕疵', NULL, NULL);
INSERT INTO `shopping_refund_reason` VALUES (3, '发错货了', NULL, NULL);
INSERT INTO `shopping_refund_reason` VALUES (4, '物流原因', NULL, NULL);
INSERT INTO `shopping_refund_reason` VALUES (5, '无货', NULL, NULL);
INSERT INTO `shopping_refund_reason` VALUES (6, '假冒品牌', NULL, NULL);
INSERT INTO `shopping_refund_reason` VALUES (7, '不想要了', NULL, NULL);
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
