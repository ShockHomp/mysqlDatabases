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

 Date: 18/04/2020 19:18:02
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for shopping_goods_photos
-- ----------------------------
DROP TABLE IF EXISTS `shopping_goods_photos`;
CREATE TABLE `shopping_goods_photos` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` int(11) NOT NULL DEFAULT '1' COMMENT '类型 1图片2视频',
  `goods_id` int(11) NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '图片路径',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `order_id_idx` (`goods_id`)
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of shopping_goods_photos
-- ----------------------------
BEGIN;
INSERT INTO `shopping_goods_photos` VALUES (1, 1, 9, 'shopping_goods/158245923930104.jpg', '2020-03-27 14:31:18', '2020-03-27 14:31:18');
INSERT INTO `shopping_goods_photos` VALUES (2, 1, 14, 'shopping_goods/158468430223525.jpeg', '2020-03-27 14:31:18', '2020-03-27 14:31:18');
INSERT INTO `shopping_goods_photos` VALUES (3, 1, 21, 'shopping_goods/158245943411327.jpg', '2020-03-27 14:31:18', '2020-03-27 14:31:18');
INSERT INTO `shopping_goods_photos` VALUES (4, 1, 22, 'shopping_goods/158245972757469.jpg', '2020-03-27 14:31:18', '2020-03-27 14:31:18');
INSERT INTO `shopping_goods_photos` VALUES (5, 1, 23, 'shopping_goods/158097838977035.jpg', '2020-03-27 14:31:18', '2020-03-27 14:31:18');
INSERT INTO `shopping_goods_photos` VALUES (6, 1, 24, 'shopping_goods/158099783630714.jpg', '2020-03-27 14:31:18', '2020-03-27 14:31:18');
INSERT INTO `shopping_goods_photos` VALUES (7, 1, 25, 'shopping_goods/158099806967180.jpg', '2020-03-27 14:31:18', '2020-03-27 14:31:18');
INSERT INTO `shopping_goods_photos` VALUES (8, 1, 26, 'shopping_goods/158099816824640.jpg', '2020-03-27 14:31:19', '2020-03-27 14:31:19');
INSERT INTO `shopping_goods_photos` VALUES (9, 1, 27, 'shopping_goods/158245961376638.jpg', '2020-03-27 14:31:19', '2020-03-27 14:31:19');
INSERT INTO `shopping_goods_photos` VALUES (10, 1, 40, 'shopping_goods/158245899573910.jpg', '2020-03-27 14:31:19', '2020-03-27 14:31:19');
INSERT INTO `shopping_goods_photos` VALUES (11, 1, 41, 'shopping_goods/158251074572270.png', '2020-03-27 14:31:19', '2020-03-27 14:31:19');
INSERT INTO `shopping_goods_photos` VALUES (12, 1, 42, 'shopping_goods/158252405467063.jpeg', '2020-03-27 14:31:19', '2020-03-27 14:31:19');
INSERT INTO `shopping_goods_photos` VALUES (13, 1, 43, 'shopping_goods/158260991048640.jpg', '2020-03-27 14:31:19', '2020-03-27 14:31:19');
INSERT INTO `shopping_goods_photos` VALUES (14, 1, 44, 'shopping_goods/158261018188638.jpg', '2020-03-27 14:31:19', '2020-03-27 14:31:19');
INSERT INTO `shopping_goods_photos` VALUES (15, 1, 45, 'shopping_goods/158261029919748.jpg', '2020-03-27 14:31:19', '2020-03-27 14:31:19');
INSERT INTO `shopping_goods_photos` VALUES (16, 1, 46, 'shopping_goods/158261072822502.jpg', '2020-03-27 14:31:19', '2020-03-27 14:31:19');
INSERT INTO `shopping_goods_photos` VALUES (17, 1, 47, 'shopping_goods/158261085087386.jpg', '2020-03-27 14:31:19', '2020-03-27 14:31:19');
INSERT INTO `shopping_goods_photos` VALUES (18, 1, 48, 'shopping_goods/158261098986207.jpg', '2020-03-27 14:31:19', '2020-03-27 14:31:19');
INSERT INTO `shopping_goods_photos` VALUES (19, 1, 49, 'shopping_goods/158261105786245.jpg', '2020-03-27 14:31:19', '2020-03-27 14:31:19');
INSERT INTO `shopping_goods_photos` VALUES (20, 1, 50, 'shopping_goods/158261115762173.jpg', '2020-03-27 14:31:19', '2020-03-27 14:31:19');
INSERT INTO `shopping_goods_photos` VALUES (21, 1, 51, 'shopping_goods/158261120050948.jpg', '2020-03-27 14:31:19', '2020-03-27 14:31:19');
INSERT INTO `shopping_goods_photos` VALUES (22, 1, 52, 'shopping_goods/158261128874352.jpg', '2020-03-27 14:31:19', '2020-03-27 14:31:19');
INSERT INTO `shopping_goods_photos` VALUES (23, 1, 53, 'shopping_goods/158261136496909.jpg', '2020-03-27 14:31:20', '2020-03-27 14:31:20');
INSERT INTO `shopping_goods_photos` VALUES (24, 1, 54, 'shopping_goods/158261144455671.jpg', '2020-03-27 14:31:20', '2020-03-27 14:31:20');
INSERT INTO `shopping_goods_photos` VALUES (25, 1, 55, 'shopping_goods/158261153591698.jpg', '2020-03-27 14:31:20', '2020-03-27 14:31:20');
INSERT INTO `shopping_goods_photos` VALUES (26, 1, 56, 'shopping_goods/158261161873268.jpg', '2020-03-27 14:31:20', '2020-03-27 14:31:20');
INSERT INTO `shopping_goods_photos` VALUES (27, 1, 57, 'shopping_goods/158261169462089.jpg', '2020-03-27 14:31:20', '2020-03-27 14:31:20');
INSERT INTO `shopping_goods_photos` VALUES (28, 1, 58, 'shopping_goods/158261177628579.jpg', '2020-03-27 14:31:20', '2020-03-27 14:31:20');
INSERT INTO `shopping_goods_photos` VALUES (29, 1, 59, 'shopping_goods/158261185837511.jpg', '2020-03-27 14:31:20', '2020-03-27 14:31:20');
INSERT INTO `shopping_goods_photos` VALUES (30, 1, 60, 'shopping_goods/158261224225738.jpg', '2020-03-27 14:31:20', '2020-03-27 14:31:20');
INSERT INTO `shopping_goods_photos` VALUES (31, 1, 61, 'shopping_goods/158261243491053.jpg', '2020-03-27 14:31:20', '2020-03-27 14:31:20');
INSERT INTO `shopping_goods_photos` VALUES (32, 1, 62, 'shopping_goods/158261250170338.jpg', '2020-03-27 14:31:20', '2020-03-27 14:31:20');
INSERT INTO `shopping_goods_photos` VALUES (33, 1, 63, 'shopping_goods/158261259325631.jpg', '2020-03-27 14:31:20', '2020-03-27 14:31:20');
INSERT INTO `shopping_goods_photos` VALUES (34, 1, 64, 'shopping_goods/158261266430664.jpg', '2020-03-27 14:31:20', '2020-03-27 14:31:20');
INSERT INTO `shopping_goods_photos` VALUES (35, 1, 67, 'shopping_goods/158277585811816.jpg', '2020-03-27 14:31:20', '2020-03-27 14:31:20');
INSERT INTO `shopping_goods_photos` VALUES (36, 1, 68, 'shopping_goods/158277643838808.jpg', '2020-03-27 14:31:20', '2020-03-27 14:31:20');
INSERT INTO `shopping_goods_photos` VALUES (37, 1, 69, 'shopping_goods/158277669734342.jpg', '2020-03-27 14:31:20', '2020-03-27 14:31:20');
INSERT INTO `shopping_goods_photos` VALUES (38, 1, 70, 'shopping_goods/158277695144792.jpg', '2020-03-27 14:31:21', '2020-03-27 14:31:21');
INSERT INTO `shopping_goods_photos` VALUES (39, 1, 71, 'shopping_goods/158277721996886.jpg', '2020-03-27 14:31:21', '2020-03-27 14:31:21');
INSERT INTO `shopping_goods_photos` VALUES (40, 1, 72, 'shopping_goods/158277742246374.jpg', '2020-03-27 14:31:21', '2020-03-27 14:31:21');
INSERT INTO `shopping_goods_photos` VALUES (41, 1, 73, 'shopping_goods/158277762541614.jpg', '2020-03-27 14:31:21', '2020-03-27 14:31:21');
INSERT INTO `shopping_goods_photos` VALUES (42, 1, 74, 'shopping_goods/158277831516376.jpg', '2020-03-27 14:31:21', '2020-03-27 14:31:21');
INSERT INTO `shopping_goods_photos` VALUES (43, 1, 75, 'shopping_goods/158277852163587.jpg', '2020-03-27 14:31:21', '2020-03-27 14:31:21');
INSERT INTO `shopping_goods_photos` VALUES (44, 1, 76, 'shopping_goods/158277868058983.jpg', '2020-03-27 14:31:21', '2020-03-27 14:31:21');
INSERT INTO `shopping_goods_photos` VALUES (45, 1, 77, 'shopping_goods/158277951718966.jpg', '2020-03-27 14:31:21', '2020-03-27 14:31:21');
INSERT INTO `shopping_goods_photos` VALUES (46, 1, 78, 'shopping_goods/158277984730325.jpg', '2020-03-27 14:31:21', '2020-03-27 14:31:21');
INSERT INTO `shopping_goods_photos` VALUES (47, 1, 79, 'shopping_goods/158278005188670.jpg', '2020-03-27 14:31:21', '2020-03-27 14:31:21');
INSERT INTO `shopping_goods_photos` VALUES (48, 1, 80, 'shopping_goods/158278013124861.jpg', '2020-03-27 14:31:21', '2020-03-27 14:31:21');
INSERT INTO `shopping_goods_photos` VALUES (49, 1, 81, 'shopping_goods/158278049838611.jpg', '2020-03-27 14:31:21', '2020-03-27 14:31:21');
INSERT INTO `shopping_goods_photos` VALUES (50, 1, 82, 'shopping_goods/158278063480734.jpg', '2020-03-27 14:31:21', '2020-03-27 14:31:21');
INSERT INTO `shopping_goods_photos` VALUES (51, 1, 83, 'shopping_goods/158278075535476.jpg', '2020-03-27 14:31:21', '2020-03-27 14:31:21');
INSERT INTO `shopping_goods_photos` VALUES (52, 1, 84, 'shopping_goods/158285515617795.png', '2020-03-27 14:31:21', '2020-03-27 14:31:21');
INSERT INTO `shopping_goods_photos` VALUES (53, 1, 85, 'shopping_goods/158286603561535.jpg', '2020-03-27 14:31:22', '2020-03-27 14:31:22');
INSERT INTO `shopping_goods_photos` VALUES (54, 1, 86, 'shopping_goods/158286614164799.jpg', '2020-03-27 14:31:22', '2020-03-27 14:31:22');
INSERT INTO `shopping_goods_photos` VALUES (55, 1, 87, 'shopping_goods/158286697194923.jpg', '2020-03-27 14:31:22', '2020-03-27 14:31:22');
INSERT INTO `shopping_goods_photos` VALUES (56, 1, 88, 'shopping_goods/158286866558340.jpg', '2020-03-27 14:31:22', '2020-03-27 14:31:22');
INSERT INTO `shopping_goods_photos` VALUES (57, 1, 89, 'shopping_goods/158286876519194.jpg', '2020-03-27 14:31:22', '2020-03-27 14:31:22');
INSERT INTO `shopping_goods_photos` VALUES (58, 1, 90, 'shopping_goods/158286917275636.jpg', '2020-03-27 14:31:22', '2020-03-27 14:31:22');
INSERT INTO `shopping_goods_photos` VALUES (59, 1, 91, 'shopping_goods/158286927559015.jpg', '2020-03-27 14:31:22', '2020-03-27 14:31:22');
INSERT INTO `shopping_goods_photos` VALUES (60, 1, 92, 'shopping_goods/158287658972586.jpg', '2020-03-27 14:31:22', '2020-03-27 14:31:22');
INSERT INTO `shopping_goods_photos` VALUES (61, 1, 95, 'shopping_goods/158297121182890.jpg', '2020-03-27 14:31:22', '2020-03-27 14:31:22');
INSERT INTO `shopping_goods_photos` VALUES (62, 1, 96, 'shopping_goods/158321639891319.jpeg', '2020-03-27 14:31:22', '2020-03-27 14:31:22');
INSERT INTO `shopping_goods_photos` VALUES (63, 1, 97, 'shopping_goods/158321801241990.jpg', '2020-03-27 14:31:22', '2020-03-27 14:31:22');
INSERT INTO `shopping_goods_photos` VALUES (64, 1, 98, 'shopping_goods/158321904229975.jpg', '2020-03-27 14:31:22', '2020-03-27 14:31:22');
INSERT INTO `shopping_goods_photos` VALUES (65, 1, 99, 'shopping_goods/158381686297471.jpg', '2020-03-27 14:31:22', '2020-03-27 14:31:22');
INSERT INTO `shopping_goods_photos` VALUES (66, 1, 100, 'shopping_goods/158434624939396.jpeg', '2020-03-27 14:31:22', '2020-03-27 14:31:22');
INSERT INTO `shopping_goods_photos` VALUES (67, 1, 101, 'shopping_goods/158434921417095.jpeg', '2020-03-27 14:31:22', '2020-03-27 14:31:22');
INSERT INTO `shopping_goods_photos` VALUES (68, 1, 114, 'shopping_goods/158468291242831.png', '2020-03-27 14:31:22', '2020-03-27 14:31:22');
INSERT INTO `shopping_goods_photos` VALUES (69, 1, 115, 'shopping_goods/158468482997213.jpg', '2020-03-27 14:31:23', '2020-03-27 14:31:23');
INSERT INTO `shopping_goods_photos` VALUES (70, 1, 118, 'shopping_goods/158510419261834.jpg', '2020-03-27 14:31:23', '2020-03-27 14:31:23');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
