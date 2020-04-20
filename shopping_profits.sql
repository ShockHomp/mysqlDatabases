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

 Date: 18/04/2020 19:19:03
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for shopping_profits
-- ----------------------------
DROP TABLE IF EXISTS `shopping_profits`;
CREATE TABLE `shopping_profits` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '返利操作名称',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of shopping_profits
-- ----------------------------
BEGIN;
INSERT INTO `shopping_profits` VALUES (1, '返利', '2020-03-05 11:12:57', '2020-03-05 11:13:05');
INSERT INTO `shopping_profits` VALUES (2, '提现', '2020-03-05 11:13:00', '2020-03-05 11:13:08');
INSERT INTO `shopping_profits` VALUES (3, '退款', '2020-03-05 11:13:03', '2020-03-05 11:13:10');
INSERT INTO `shopping_profits` VALUES (4, '提现失败', '2020-03-09 14:38:29', '2020-03-09 14:38:34');
INSERT INTO `shopping_profits` VALUES (5, '退款失败', '2020-03-09 14:38:32', '2020-03-09 14:38:37');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
