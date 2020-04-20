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

 Date: 18/04/2020 19:17:34
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for shopping_coupons
-- ----------------------------
DROP TABLE IF EXISTS `shopping_coupons`;
CREATE TABLE `shopping_coupons` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `coupon_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '优惠券名称',
  `left_font` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '优惠券左侧名称',
  `coupon_type` int(11) NOT NULL DEFAULT '1' COMMENT '优惠券类型:1、买一赠一 2、折扣 3、满减',
  `discount` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '折扣数',
  `face_value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '优惠券面值',
  `fulfil_quota` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '优惠券满减额',
  `type_id` int(11) NOT NULL COMMENT '商城商品分类id',
  `used_begin_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '使用开始时间',
  `used_finish_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '使用结束时间',
  `stock` int(11) NOT NULL COMMENT '发放总量',
  `issues` int(11) NOT NULL COMMENT '已发放优惠券个数',
  `status` int(11) NOT NULL DEFAULT '1' COMMENT '状态 1 停用 2 启动',
  `sale_areas_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '营销大区id',
  `access_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '获取方式 1、新用户登录 2、点击获取 3、拉好友',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of shopping_coupons
-- ----------------------------
BEGIN;
INSERT INTO `shopping_coupons` VALUES (1, '马尔斯绿买一赠一', '买一送一', 1, '', '51', '101', 9, '2020-04-10 13:36:35', '2020-04-10 13:36:35', 100, 0, 2, '3', '3,2', '2020-04-02 08:50:51', '2020-04-10 13:36:35');
INSERT INTO `shopping_coupons` VALUES (2, '鞍山8度7.5折券', '7.5折', 2, '7.5', '20', '50', 0, '2020-04-10 13:36:38', '2020-04-10 13:36:38', 200, 0, 2, '2', '2,3', '2020-04-02 08:50:51', '2020-04-10 13:36:38');
INSERT INTO `shopping_coupons` VALUES (5, '特价水果', '买一送一', 2, '5', '1', '1', 15, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 5, 0, 2, '4', '1', '2020-04-10 16:09:07', '2020-04-10 16:09:07');
INSERT INTO `shopping_coupons` VALUES (6, '特价生鲜', '买一送一', 2, '5', '1', '1', 15, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 4, 0, 2, '3', '1', '2020-04-10 16:10:04', '2020-04-10 16:10:04');
INSERT INTO `shopping_coupons` VALUES (7, '特价鲜花', '买一送一', 2, '5', '1', '1', 15, '2020-04-15 00:00:00', '2020-05-20 23:59:59', 4, 0, 2, '3', '1', '2020-04-10 16:11:28', '2020-04-10 16:11:28');
INSERT INTO `shopping_coupons` VALUES (8, '特价大闸蟹', '买一送一', 2, '5', '1', '1', 15, '2020-04-10 00:00:00', '2020-05-21 23:59:59', 7, 0, 2, '3', '1', '2020-04-10 16:14:28', '2020-04-10 16:14:28');
INSERT INTO `shopping_coupons` VALUES (9, '特价大闸蟹1', '买一送一1', 2, '9', '1', '1', 15, '2020-04-10 00:00:00', '2020-05-21 23:59:59', 7, 0, 1, '2', '1', '2020-04-10 16:15:28', '2020-04-10 16:15:28');
INSERT INTO `shopping_coupons` VALUES (10, '马尔斯绿买一赠一', '买一送一', 1, '5', '51', '101', 9, '2020-04-10 13:36:35', '2020-04-10 13:36:35', 100, 0, 2, '3', '1', '2020-04-10 17:20:49', '2020-04-10 17:20:49');
INSERT INTO `shopping_coupons` VALUES (11, '马尔斯绿买一赠一', '买一送一', 1, '5', '51', '101', 9, '2020-04-09 00:00:00', '2020-05-20 23:59:59', 100, 0, 2, '3', '1', '2020-04-10 17:21:26', '2020-04-10 17:21:26');
INSERT INTO `shopping_coupons` VALUES (12, '马尔斯绿买一赠一', '买一送一', 1, '5', '51', '101', 9, '2020-04-10 13:36:35', '2020-04-10 13:36:35', 100, 0, 2, '3', '1', '2020-04-13 09:16:05', '2020-04-13 09:16:05');
INSERT INTO `shopping_coupons` VALUES (13, '马尔斯绿买一赠一', '买一送一', 1, '5', '51', '101', 9, '2020-04-10 13:36:35', '2020-04-10 13:36:35', 100, 0, 2, '3', '1', '2020-04-13 09:18:19', '2020-04-13 09:18:19');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
