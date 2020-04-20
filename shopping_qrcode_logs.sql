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

 Date: 18/04/2020 19:19:13
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for shopping_qrcode_logs
-- ----------------------------
DROP TABLE IF EXISTS `shopping_qrcode_logs`;
CREATE TABLE `shopping_qrcode_logs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `count` int(11) NOT NULL COMMENT '生成二维码数量',
  `city_id` int(11) NOT NULL COMMENT '城市ID',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of shopping_qrcode_logs
-- ----------------------------
BEGIN;
INSERT INTO `shopping_qrcode_logs` VALUES (14, 10, 1, '2020-02-14 13:34:54', '2020-02-14 13:34:54');
INSERT INTO `shopping_qrcode_logs` VALUES (15, 1, 2, '2020-02-14 13:42:50', '2020-02-14 13:42:50');
INSERT INTO `shopping_qrcode_logs` VALUES (16, 30, 1, '2020-02-14 14:08:49', '2020-02-14 14:08:49');
INSERT INTO `shopping_qrcode_logs` VALUES (17, 1, 1, '2020-02-16 15:01:37', '2020-02-16 15:01:37');
INSERT INTO `shopping_qrcode_logs` VALUES (18, 1, 1, '2020-02-18 13:32:54', '2020-02-18 13:32:54');
INSERT INTO `shopping_qrcode_logs` VALUES (19, 1, 1, '2020-02-20 11:43:30', '2020-02-20 11:43:30');
INSERT INTO `shopping_qrcode_logs` VALUES (20, 1, 1, '2020-02-20 16:00:36', '2020-02-20 16:00:36');
INSERT INTO `shopping_qrcode_logs` VALUES (21, 1, 1, '2020-02-21 13:57:13', '2020-02-21 13:57:13');
INSERT INTO `shopping_qrcode_logs` VALUES (22, 2, 2, '2020-02-21 14:01:52', '2020-02-21 14:01:52');
INSERT INTO `shopping_qrcode_logs` VALUES (23, 10, 1, '2020-02-24 13:36:39', '2020-02-24 13:36:39');
INSERT INTO `shopping_qrcode_logs` VALUES (24, 10, 1, '2020-02-24 13:36:39', '2020-02-24 13:36:39');
INSERT INTO `shopping_qrcode_logs` VALUES (25, 10, 1, '2020-02-25 09:42:53', '2020-02-25 09:42:53');
INSERT INTO `shopping_qrcode_logs` VALUES (26, 1, 1, '2020-02-26 14:39:16', '2020-02-26 14:39:16');
INSERT INTO `shopping_qrcode_logs` VALUES (27, 1, 1, '2020-02-27 10:08:58', '2020-02-27 10:08:58');
INSERT INTO `shopping_qrcode_logs` VALUES (28, 2, 1, '2020-02-28 10:24:16', '2020-02-28 10:24:16');
INSERT INTO `shopping_qrcode_logs` VALUES (29, 10, 1, '2020-02-28 10:24:27', '2020-02-28 10:24:27');
INSERT INTO `shopping_qrcode_logs` VALUES (30, 1, 1, '2020-02-28 10:26:08', '2020-02-28 10:26:08');
INSERT INTO `shopping_qrcode_logs` VALUES (31, 3, 1, '2020-02-28 10:29:23', '2020-02-28 10:29:23');
INSERT INTO `shopping_qrcode_logs` VALUES (32, 1, 1, '2020-02-28 10:57:45', '2020-02-28 10:57:45');
INSERT INTO `shopping_qrcode_logs` VALUES (33, 1, 1, '2020-02-28 10:59:33', '2020-02-28 10:59:33');
INSERT INTO `shopping_qrcode_logs` VALUES (34, 1, 1, '2020-02-28 11:00:29', '2020-02-28 11:00:29');
INSERT INTO `shopping_qrcode_logs` VALUES (35, 10, 1, '2020-02-28 11:02:51', '2020-02-28 11:02:51');
INSERT INTO `shopping_qrcode_logs` VALUES (36, 1, 1, '2020-02-28 11:22:03', '2020-02-28 11:22:03');
INSERT INTO `shopping_qrcode_logs` VALUES (37, 20, 1, '2020-02-28 13:08:14', '2020-02-28 13:08:14');
INSERT INTO `shopping_qrcode_logs` VALUES (38, 1, 1, '2020-02-28 14:20:18', '2020-02-28 14:20:18');
INSERT INTO `shopping_qrcode_logs` VALUES (39, 1, 1, '2020-02-28 14:34:39', '2020-02-28 14:34:39');
INSERT INTO `shopping_qrcode_logs` VALUES (40, 1, 1, '2020-02-28 15:29:08', '2020-02-28 15:29:08');
INSERT INTO `shopping_qrcode_logs` VALUES (41, 1, 1, '2020-02-28 15:52:03', '2020-02-28 15:52:03');
INSERT INTO `shopping_qrcode_logs` VALUES (42, 1, 1, '2020-02-28 19:56:46', '2020-02-28 19:56:46');
INSERT INTO `shopping_qrcode_logs` VALUES (43, 1, 1, '2020-02-28 22:41:25', '2020-02-28 22:41:25');
INSERT INTO `shopping_qrcode_logs` VALUES (44, 1, 2, '2020-02-29 10:12:13', '2020-02-29 10:12:13');
INSERT INTO `shopping_qrcode_logs` VALUES (45, 1, 1, '2020-02-29 14:22:52', '2020-02-29 14:22:52');
INSERT INTO `shopping_qrcode_logs` VALUES (46, 1, 1, '2020-02-29 16:32:51', '2020-02-29 16:32:51');
INSERT INTO `shopping_qrcode_logs` VALUES (47, 1, 1, '2020-02-29 19:59:07', '2020-02-29 19:59:07');
INSERT INTO `shopping_qrcode_logs` VALUES (48, 5, 1, '2020-03-01 12:08:09', '2020-03-01 12:08:09');
INSERT INTO `shopping_qrcode_logs` VALUES (49, 1, 1, '2020-03-02 11:49:11', '2020-03-02 11:49:11');
INSERT INTO `shopping_qrcode_logs` VALUES (50, 1, 1, '2020-03-02 14:01:28', '2020-03-02 14:01:28');
INSERT INTO `shopping_qrcode_logs` VALUES (51, 10, 3, '2020-03-02 14:13:04', '2020-03-02 14:13:04');
INSERT INTO `shopping_qrcode_logs` VALUES (52, 2, 3, '2020-03-02 14:13:31', '2020-03-02 14:13:31');
INSERT INTO `shopping_qrcode_logs` VALUES (53, 1, 3, '2020-03-04 10:41:03', '2020-03-04 10:41:03');
INSERT INTO `shopping_qrcode_logs` VALUES (54, 1, 1, '2020-03-06 15:54:41', '2020-03-06 15:54:41');
INSERT INTO `shopping_qrcode_logs` VALUES (55, 10, 3, '2020-03-09 10:57:08', '2020-03-09 10:57:08');
INSERT INTO `shopping_qrcode_logs` VALUES (56, 10, 1, '2020-03-10 10:34:38', '2020-03-10 10:34:38');
INSERT INTO `shopping_qrcode_logs` VALUES (57, 1, 3, '2020-03-10 11:42:52', '2020-03-10 11:42:52');
INSERT INTO `shopping_qrcode_logs` VALUES (58, 10, 3, '2020-03-12 14:04:13', '2020-03-12 14:04:13');
INSERT INTO `shopping_qrcode_logs` VALUES (59, 1, 4, '2020-03-16 16:55:45', '2020-03-16 16:55:45');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
