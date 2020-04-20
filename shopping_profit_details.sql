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

 Date: 18/04/2020 19:18:55
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for shopping_profit_details
-- ----------------------------
DROP TABLE IF EXISTS `shopping_profit_details`;
CREATE TABLE `shopping_profit_details` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `profit_id` int(11) NOT NULL COMMENT '返利操作ID',
  `shop_id` int(11) NOT NULL COMMENT '门店ID',
  `order_id` int(11) NOT NULL DEFAULT '0' COMMENT '订单ID',
  `profit_application_id` int(11) NOT NULL DEFAULT '0' COMMENT '提现ID',
  `return_id` int(11) NOT NULL DEFAULT '0' COMMENT '退款ID',
  `amount` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0' COMMENT '金额',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=162 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of shopping_profit_details
-- ----------------------------
BEGIN;
INSERT INTO `shopping_profit_details` VALUES (1, 1, 146, 351, 0, 0, '10', '2020-02-26 13:19:05', '2020-02-26 13:19:07');
INSERT INTO `shopping_profit_details` VALUES (2, 1, 146, 350, 0, 0, '20', '2020-01-01 13:19:40', '2020-01-01 13:20:08');
INSERT INTO `shopping_profit_details` VALUES (3, 1, 146, 349, 0, 0, '40', '2020-03-05 13:20:28', '2020-03-05 13:20:30');
INSERT INTO `shopping_profit_details` VALUES (4, 2, 147, 0, 0, 0, '100', '2020-03-05 13:20:45', '2020-03-05 13:20:48');
INSERT INTO `shopping_profit_details` VALUES (5, 2, 146, 0, 0, 0, '-5', '2020-03-05 13:22:12', '2020-03-05 13:22:13');
INSERT INTO `shopping_profit_details` VALUES (6, 3, 146, 0, 0, 0, '-1', '2020-03-05 13:22:36', '2020-03-05 13:22:39');
INSERT INTO `shopping_profit_details` VALUES (8, 1, 41, 288, 0, 0, '0.01', '2020-03-09 10:06:42', '2020-03-09 10:06:42');
INSERT INTO `shopping_profit_details` VALUES (11, 2, 41, 0, 3, 0, '-0.3', '2020-03-09 10:17:20', '2020-03-09 10:17:20');
INSERT INTO `shopping_profit_details` VALUES (42, 1, 139, 248, 0, 0, '1.96', '2020-02-29 17:31:26', '2020-02-29 21:15:48');
INSERT INTO `shopping_profit_details` VALUES (43, 1, 37, 249, 0, 0, '0.36', '2020-02-29 17:37:05', '2020-02-29 17:39:36');
INSERT INTO `shopping_profit_details` VALUES (44, 1, 38, 252, 0, 0, '2.1', '2020-02-29 18:13:23', '2020-03-02 15:56:19');
INSERT INTO `shopping_profit_details` VALUES (45, 1, 37, 256, 0, 0, '0.2', '2020-02-29 23:58:42', '2020-03-01 00:04:59');
INSERT INTO `shopping_profit_details` VALUES (46, 1, 37, 257, 0, 0, '0.16', '2020-03-01 07:56:02', '2020-03-01 12:02:15');
INSERT INTO `shopping_profit_details` VALUES (47, 1, 113, 258, 0, 0, '7.5', '2020-03-01 12:33:42', '2020-03-01 12:34:52');
INSERT INTO `shopping_profit_details` VALUES (48, 1, 118, 259, 0, 0, '0.2', '2020-03-01 14:26:41', '2020-03-01 14:27:18');
INSERT INTO `shopping_profit_details` VALUES (49, 1, 117, 260, 0, 0, '0.2', '2020-03-01 14:46:34', '2020-03-01 14:47:01');
INSERT INTO `shopping_profit_details` VALUES (50, 1, 116, 261, 0, 0, '7.5', '2020-03-01 15:09:17', '2020-03-01 15:09:46');
INSERT INTO `shopping_profit_details` VALUES (51, 1, 114, 262, 0, 0, '0.6', '2020-03-01 15:21:09', '2020-03-02 14:55:05');
INSERT INTO `shopping_profit_details` VALUES (52, 1, 139, 264, 0, 0, '15', '2020-03-01 19:50:40', '2020-03-02 11:47:44');
INSERT INTO `shopping_profit_details` VALUES (53, 1, 115, 265, 0, 0, '1.8', '2020-03-02 08:28:33', '2020-03-03 21:08:39');
INSERT INTO `shopping_profit_details` VALUES (54, 1, 115, 266, 0, 0, '18.4', '2020-03-02 08:31:27', '2020-03-03 21:08:49');
INSERT INTO `shopping_profit_details` VALUES (55, 1, 45, 275, 0, 0, '0.16', '2020-03-02 13:43:35', '2020-03-02 13:51:00');
INSERT INTO `shopping_profit_details` VALUES (56, 1, 147, 276, 0, 0, '7.5', '2020-03-02 14:08:11', '2020-03-03 09:48:00');
INSERT INTO `shopping_profit_details` VALUES (57, 1, 147, 277, 0, 0, '7.5', '2020-03-02 14:08:26', '2020-03-03 09:47:56');
INSERT INTO `shopping_profit_details` VALUES (58, 1, 147, 278, 0, 0, '7.5', '2020-03-02 14:10:44', '2020-03-03 09:47:51');
INSERT INTO `shopping_profit_details` VALUES (59, 1, 147, 279, 0, 0, '7.5', '2020-03-02 14:12:03', '2020-03-03 09:47:48');
INSERT INTO `shopping_profit_details` VALUES (60, 1, 157, 281, 0, 0, '1', '2020-03-02 15:10:38', '2020-03-02 15:13:19');
INSERT INTO `shopping_profit_details` VALUES (61, 1, 157, 282, 0, 0, '1', '2020-03-02 15:13:56', '2020-03-02 15:14:27');
INSERT INTO `shopping_profit_details` VALUES (62, 1, 37, 290, 0, 0, '0.16', '2020-03-02 18:27:09', '2020-03-03 09:58:29');
INSERT INTO `shopping_profit_details` VALUES (63, 1, 115, 297, 0, 0, '1.5', '2020-03-02 20:59:12', '2020-03-03 21:08:57');
INSERT INTO `shopping_profit_details` VALUES (64, 1, 115, 298, 0, 0, '0.6', '2020-03-02 21:03:12', '2020-03-03 21:09:03');
INSERT INTO `shopping_profit_details` VALUES (65, 1, 115, 300, 0, 0, '1.52', '2020-03-02 21:53:07', '2020-03-03 21:09:11');
INSERT INTO `shopping_profit_details` VALUES (66, 1, 115, 301, 0, 0, '1.27', '2020-03-02 22:05:57', '2020-03-03 21:08:26');
INSERT INTO `shopping_profit_details` VALUES (67, 1, 157, 309, 0, 0, '0.01', '2020-03-03 11:12:49', '2020-03-03 11:16:10');
INSERT INTO `shopping_profit_details` VALUES (68, 1, 157, 310, 0, 0, '1.03', '2020-03-03 11:32:10', '2020-03-03 14:11:02');
INSERT INTO `shopping_profit_details` VALUES (70, 1, 41, 321, 0, 0, '0.03', '2020-03-03 14:20:59', '2020-03-03 14:21:07');
INSERT INTO `shopping_profit_details` VALUES (71, 1, 157, 374, 0, 0, '100', '2020-01-17 09:50:31', '2020-03-09 10:35:20');
INSERT INTO `shopping_profit_details` VALUES (74, 3, 159, 431, 0, 54, '-0.01', '2020-03-17 13:52:30', '2020-03-17 13:52:30');
INSERT INTO `shopping_profit_details` VALUES (80, 3, 159, 449, 0, 68, '-0.01', '2020-03-18 11:06:24', '2020-03-18 11:06:24');
INSERT INTO `shopping_profit_details` VALUES (83, 1, 160, 459, 0, 0, '0.01', '2020-03-18 13:59:37', '2020-03-18 13:59:37');
INSERT INTO `shopping_profit_details` VALUES (91, 1, 183, 469, 0, 0, '0.01', '2020-03-18 16:34:05', '2020-03-18 16:34:05');
INSERT INTO `shopping_profit_details` VALUES (92, 1, 183, 471, 0, 0, '0.01', '2020-03-18 16:57:39', '2020-03-18 16:57:39');
INSERT INTO `shopping_profit_details` VALUES (93, 3, 183, 469, 0, 99, '-0.01', '2020-03-18 17:08:40', '2020-03-18 17:08:40');
INSERT INTO `shopping_profit_details` VALUES (94, 3, 183, 471, 0, 100, '-0.01', '2020-03-18 17:11:49', '2020-03-18 17:11:49');
INSERT INTO `shopping_profit_details` VALUES (99, 3, 159, 465, 0, 102, '-0.01', '2020-03-19 09:58:39', '2020-03-19 09:58:39');
INSERT INTO `shopping_profit_details` VALUES (102, 3, 160, 463, 0, 114, '-0.01', '2020-03-19 10:09:58', '2020-03-19 10:09:58');
INSERT INTO `shopping_profit_details` VALUES (138, 1, 193, 526, 0, 0, '1', '2020-03-19 14:18:50', '2020-03-19 14:18:50');
INSERT INTO `shopping_profit_details` VALUES (139, 3, 193, 526, 0, 145, '-1.00', '2020-03-19 14:30:24', '2020-03-19 14:30:24');
INSERT INTO `shopping_profit_details` VALUES (141, 1, 193, 523, 0, 0, '1', '2020-03-19 14:18:46', '2020-03-19 14:18:46');
INSERT INTO `shopping_profit_details` VALUES (142, 1, 193, 534, 0, 0, '1', '2020-03-19 14:19:11', '2020-03-19 14:19:11');
INSERT INTO `shopping_profit_details` VALUES (144, 1, 193, 527, 0, 0, '1', '2020-03-19 14:18:51', '2020-03-19 14:18:51');
INSERT INTO `shopping_profit_details` VALUES (145, 1, 193, 552, 0, 0, '1', '2020-02-14 10:19:07', '2020-03-20 10:19:07');
INSERT INTO `shopping_profit_details` VALUES (146, 3, 193, 552, 0, 154, '-1.00', '2020-03-20 10:22:00', '2020-03-20 10:22:00');
INSERT INTO `shopping_profit_details` VALUES (147, 1, 193, 553, 0, 0, '0.3', '2020-02-01 10:22:53', '2020-03-20 10:22:53');
INSERT INTO `shopping_profit_details` VALUES (148, 3, 193, 553, 0, 155, '-0.01', '2020-03-20 10:36:56', '2020-03-20 10:36:56');
INSERT INTO `shopping_profit_details` VALUES (149, 1, 193, 554, 0, 0, '1', '2020-02-01 10:37:27', '2020-03-20 10:37:27');
INSERT INTO `shopping_profit_details` VALUES (152, 2, 193, 0, 5, 0, '-1', '2020-03-20 17:26:45', '2020-03-20 17:26:45');
INSERT INTO `shopping_profit_details` VALUES (155, 1, 183, 588, 0, 0, '3', '2020-02-29 14:20:13', '2020-03-26 14:20:13');
INSERT INTO `shopping_profit_details` VALUES (156, 2, 183, 0, 6, 0, '-1.00', '2020-03-26 14:51:31', '2020-03-26 14:51:31');
INSERT INTO `shopping_profit_details` VALUES (157, 1, 183, 601, 0, 0, '1', '2020-03-26 15:30:57', '2020-03-26 15:30:57');
INSERT INTO `shopping_profit_details` VALUES (158, 2, 183, 0, 7, 0, '-1.532', '2020-03-26 15:33:22', '2020-03-26 15:33:22');
INSERT INTO `shopping_profit_details` VALUES (159, 1, 183, 603, 0, 0, '1', '2020-04-01 09:39:00', '2020-04-01 09:39:00');
INSERT INTO `shopping_profit_details` VALUES (160, 1, 183, 604, 0, 0, '1', '2020-04-01 09:44:24', '2020-04-01 09:44:24');
INSERT INTO `shopping_profit_details` VALUES (161, 1, 183, 620, 0, 0, '1', '2020-04-13 10:31:57', '2020-04-13 10:31:57');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
