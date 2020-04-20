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

 Date: 18/04/2020 19:15:50
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for shopping_buyer_coupon_mapping
-- ----------------------------
DROP TABLE IF EXISTS `shopping_buyer_coupon_mapping`;
CREATE TABLE `shopping_buyer_coupon_mapping` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `openid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '买家用户openid',
  `coupon_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '优惠券id',
  `status` int(11) NOT NULL DEFAULT '1' COMMENT '状态 1 未使用 2 已使用',
  `order_id` int(11) NOT NULL COMMENT '订单id',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of shopping_buyer_coupon_mapping
-- ----------------------------
BEGIN;
INSERT INTO `shopping_buyer_coupon_mapping` VALUES (1, 'oe4cw5aW0xgcBWVz_QqqoAqlhWIw', '1', 1, 1, NULL, NULL);
INSERT INTO `shopping_buyer_coupon_mapping` VALUES (2, 'oe4cw5aW0xgcBWVz_QqqoAqlhWIw', '1', 2, 1, NULL, NULL);
INSERT INTO `shopping_buyer_coupon_mapping` VALUES (3, 'oe4cw5aW0xgcBWVz_QqqoAqlhWIw', '2', 1, 1, NULL, NULL);
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
