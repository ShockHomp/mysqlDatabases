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

 Date: 18/04/2020 19:18:13
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for shopping_goods_type
-- ----------------------------
DROP TABLE IF EXISTS `shopping_goods_type`;
CREATE TABLE `shopping_goods_type` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '分类名称',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_act` int(11) NOT NULL DEFAULT '0' COMMENT '是否是活动分类 1 是 0 不是',
  `sort` int(11) NOT NULL COMMENT '排序',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `shopping_goods_type_name_unique` (`name`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of shopping_goods_type
-- ----------------------------
BEGIN;
INSERT INTO `shopping_goods_type` VALUES (1, '家居生活', '2020-03-03 14:44:37', '2020-03-03 14:44:37', 0, 0);
INSERT INTO `shopping_goods_type` VALUES (3, '盆栽', '2019-12-30 10:22:43', '2020-04-08 09:08:40', 0, 0);
INSERT INTO `shopping_goods_type` VALUES (9, '绿植', '2020-02-23 19:57:02', '2020-04-13 10:19:41', 1, 3);
INSERT INTO `shopping_goods_type` VALUES (10, '休闲零食', '2020-02-25 13:34:56', '2020-03-25 16:16:51', 0, 0);
INSERT INTO `shopping_goods_type` VALUES (13, '生鲜果蔬', '2020-02-27 11:48:18', '2020-02-27 11:52:16', 0, 0);
INSERT INTO `shopping_goods_type` VALUES (14, '花店', '2020-02-29 10:56:09', '2020-02-29 10:56:09', 0, 0);
INSERT INTO `shopping_goods_type` VALUES (15, '秒杀', '2020-03-16 16:09:03', '2020-03-25 16:23:48', 1, 0);
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
