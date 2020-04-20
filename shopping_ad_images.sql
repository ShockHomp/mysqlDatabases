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

 Date: 18/04/2020 19:14:49
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for shopping_ad_images
-- ----------------------------
DROP TABLE IF EXISTS `shopping_ad_images`;
CREATE TABLE `shopping_ad_images` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '标题',
  `image_path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '图片路径',
  `city_id` int(11) NOT NULL COMMENT '城市ID',
  `type` tinyint(4) NOT NULL COMMENT '广告类型',
  `jump_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '跳转地址',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of shopping_ad_images
-- ----------------------------
BEGIN;
INSERT INTO `shopping_ad_images` VALUES (1, '轮播111', '/158210920374753.png', 1, 1, NULL, '2020-02-19 11:25:59', '2020-02-19 11:26:00');
INSERT INTO `shopping_ad_images` VALUES (2, '轮播222', '/158285515617795.png', 1, 1, NULL, '2020-02-19 11:26:15', '2020-02-19 11:26:17');
INSERT INTO `shopping_ad_images` VALUES (3, '轮播333', '/158285515640928.png', 1, 1, NULL, '2020-02-19 18:49:10', '2020-02-19 18:49:14');
INSERT INTO `shopping_ad_images` VALUES (4, '轮播111', '/158210920374753.png', 3, 1, NULL, '2020-02-19 11:25:59', '2020-02-19 11:26:00');
INSERT INTO `shopping_ad_images` VALUES (5, '轮播222', '/158285515617795.png', 3, 1, NULL, '2020-02-19 11:26:15', '2020-02-19 11:26:17');
INSERT INTO `shopping_ad_images` VALUES (6, '轮播333', '/158285515640928.png', 3, 1, NULL, '2020-02-19 18:49:10', '2020-02-19 18:49:14');
INSERT INTO `shopping_ad_images` VALUES (7, '轮播111', '/158210920374753.png', 4, 1, NULL, '2020-02-19 11:25:59', '2020-02-19 11:26:00');
INSERT INTO `shopping_ad_images` VALUES (8, '轮播222', '/158285515617795.png', 4, 1, NULL, '2020-02-19 11:26:15', '2020-02-19 11:26:17');
INSERT INTO `shopping_ad_images` VALUES (9, '轮播333', '/158285515640928.png', 4, 1, NULL, '2020-02-19 18:49:10', '2020-02-19 18:49:14');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
