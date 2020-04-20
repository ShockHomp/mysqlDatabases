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

 Date: 18/04/2020 19:16:48
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for shopping_citys
-- ----------------------------
DROP TABLE IF EXISTS `shopping_citys`;
CREATE TABLE `shopping_citys` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '商城城市名称',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of shopping_citys
-- ----------------------------
BEGIN;
INSERT INTO `shopping_citys` VALUES (1, '沈阳', NULL, NULL);
INSERT INTO `shopping_citys` VALUES (2, '大连', NULL, NULL);
INSERT INTO `shopping_citys` VALUES (3, '卓芯数据', NULL, NULL);
INSERT INTO `shopping_citys` VALUES (4, '办公大区', NULL, NULL);
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
