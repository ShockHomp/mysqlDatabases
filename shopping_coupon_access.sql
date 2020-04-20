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

 Date: 18/04/2020 19:17:05
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for shopping_coupon_access
-- ----------------------------
DROP TABLE IF EXISTS `shopping_coupon_access`;
CREATE TABLE `shopping_coupon_access` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '获取优惠券方式名称',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of shopping_coupon_access
-- ----------------------------
BEGIN;
INSERT INTO `shopping_coupon_access` VALUES (1, '新用户登录', NULL, NULL);
INSERT INTO `shopping_coupon_access` VALUES (2, '点击获取', NULL, NULL);
INSERT INTO `shopping_coupon_access` VALUES (3, '拉好友', NULL, NULL);
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
