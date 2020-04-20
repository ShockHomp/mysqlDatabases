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

 Date: 18/04/2020 19:17:20
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for shopping_coupon_types
-- ----------------------------
DROP TABLE IF EXISTS `shopping_coupon_types`;
CREATE TABLE `shopping_coupon_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '优惠券类型',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of shopping_coupon_types
-- ----------------------------
BEGIN;
INSERT INTO `shopping_coupon_types` VALUES (1, '买一赠一', NULL, NULL);
INSERT INTO `shopping_coupon_types` VALUES (2, '折扣', NULL, NULL);
INSERT INTO `shopping_coupon_types` VALUES (3, '满减', NULL, NULL);
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
