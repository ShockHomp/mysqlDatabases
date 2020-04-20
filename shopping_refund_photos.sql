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

 Date: 18/04/2020 19:19:39
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for shopping_refund_photos
-- ----------------------------
DROP TABLE IF EXISTS `shopping_refund_photos`;
CREATE TABLE `shopping_refund_photos` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `refund_order_id` int(11) NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '图片路径',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `refund_order_id_idx` (`refund_order_id`)
) ENGINE=InnoDB AUTO_INCREMENT=88 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of shopping_refund_photos
-- ----------------------------
BEGIN;
INSERT INTO `shopping_refund_photos` VALUES (5, 11, 'shopping_refund_goods/158399407165951.jpg', '2020-03-12 14:21:11', '2020-03-12 14:21:11');
INSERT INTO `shopping_refund_photos` VALUES (6, 11, 'shopping_refund_goods/158399407299888.jpg', '2020-03-12 14:21:12', '2020-03-12 14:21:12');
INSERT INTO `shopping_refund_photos` VALUES (7, 11, 'shopping_refund_goods/158399407294864.jpg', '2020-03-12 14:21:12', '2020-03-12 14:21:12');
INSERT INTO `shopping_refund_photos` VALUES (8, 12, 'shopping_refund_goods/158399450735403.jpg', '2020-03-12 14:28:27', '2020-03-12 14:28:27');
INSERT INTO `shopping_refund_photos` VALUES (9, 12, 'shopping_refund_goods/158399450812906.jpg', '2020-03-12 14:28:28', '2020-03-12 14:28:28');
INSERT INTO `shopping_refund_photos` VALUES (10, 12, 'shopping_refund_goods/158399450899442.jpg', '2020-03-12 14:28:28', '2020-03-12 14:28:28');
INSERT INTO `shopping_refund_photos` VALUES (11, 13, 'shopping_refund_goods/158408226340926.jpg', '2020-03-13 14:51:03', '2020-03-13 14:51:03');
INSERT INTO `shopping_refund_photos` VALUES (12, 13, 'shopping_refund_goods/158408226466151.jpg', '2020-03-13 14:51:04', '2020-03-13 14:51:04');
INSERT INTO `shopping_refund_photos` VALUES (13, 13, 'shopping_refund_goods/158408226478029.jpg', '2020-03-13 14:51:04', '2020-03-13 14:51:04');
INSERT INTO `shopping_refund_photos` VALUES (14, 14, 'shopping_refund_goods/158408349876128.jpg', '2020-03-13 15:11:38', '2020-03-13 15:11:38');
INSERT INTO `shopping_refund_photos` VALUES (15, 14, 'shopping_refund_goods/158408349966871.jpg', '2020-03-13 15:11:39', '2020-03-13 15:11:39');
INSERT INTO `shopping_refund_photos` VALUES (16, 14, 'shopping_refund_goods/158408349964098.jpg', '2020-03-13 15:11:39', '2020-03-13 15:11:39');
INSERT INTO `shopping_refund_photos` VALUES (17, 15, 'shopping_refund_goods/158408407587048.jpg', '2020-03-13 15:21:15', '2020-03-13 15:21:15');
INSERT INTO `shopping_refund_photos` VALUES (18, 16, 'shopping_refund_goods/158408412179432.jpg', '2020-03-13 15:22:01', '2020-03-13 15:22:01');
INSERT INTO `shopping_refund_photos` VALUES (19, 20, 'shopping_refund_goods/158408430768519.jpg', '2020-03-13 15:25:07', '2020-03-13 15:25:07');
INSERT INTO `shopping_refund_photos` VALUES (20, 20, 'shopping_refund_goods/158408430798701.jpg', '2020-03-13 15:25:07', '2020-03-13 15:25:07');
INSERT INTO `shopping_refund_photos` VALUES (21, 20, 'shopping_refund_goods/158408430831948.jpg', '2020-03-13 15:25:08', '2020-03-13 15:25:08');
INSERT INTO `shopping_refund_photos` VALUES (22, 43, 'shopping_refund_goods/158433812888685.jpg', '2020-03-16 13:55:28', '2020-03-16 13:55:28');
INSERT INTO `shopping_refund_photos` VALUES (23, 43, 'shopping_refund_goods/158433812932382.jpg', '2020-03-16 13:55:29', '2020-03-16 13:55:29');
INSERT INTO `shopping_refund_photos` VALUES (24, 43, 'shopping_refund_goods/158433812972265.jpg', '2020-03-16 13:55:29', '2020-03-16 13:55:29');
INSERT INTO `shopping_refund_photos` VALUES (25, 44, 'shopping_refund_goods/158433851685151.jpg', '2020-03-16 14:01:56', '2020-03-16 14:01:56');
INSERT INTO `shopping_refund_photos` VALUES (26, 44, 'shopping_refund_goods/158433851699042.jpg', '2020-03-16 14:01:56', '2020-03-16 14:01:56');
INSERT INTO `shopping_refund_photos` VALUES (27, 44, 'shopping_refund_goods/158433851668989.jpg', '2020-03-16 14:01:56', '2020-03-16 14:01:56');
INSERT INTO `shopping_refund_photos` VALUES (28, 45, 'shopping_refund_goods/158433889338784.jpg', '2020-03-16 14:08:13', '2020-03-16 14:08:13');
INSERT INTO `shopping_refund_photos` VALUES (29, 45, 'shopping_refund_goods/158433889329961.jpg', '2020-03-16 14:08:13', '2020-03-16 14:08:13');
INSERT INTO `shopping_refund_photos` VALUES (30, 45, 'shopping_refund_goods/158433889380614.jpg', '2020-03-16 14:08:13', '2020-03-16 14:08:13');
INSERT INTO `shopping_refund_photos` VALUES (31, 46, 'shopping_refund_goods/158433889858084.jpg', '2020-03-16 14:08:18', '2020-03-16 14:08:18');
INSERT INTO `shopping_refund_photos` VALUES (32, 46, 'shopping_refund_goods/158433889855449.jpg', '2020-03-16 14:08:18', '2020-03-16 14:08:18');
INSERT INTO `shopping_refund_photos` VALUES (33, 46, 'shopping_refund_goods/158433889872498.jpg', '2020-03-16 14:08:18', '2020-03-16 14:08:18');
INSERT INTO `shopping_refund_photos` VALUES (34, 47, 'shopping_refund_goods/158434140625473.jpg', '2020-03-16 14:50:06', '2020-03-16 14:50:06');
INSERT INTO `shopping_refund_photos` VALUES (35, 47, 'shopping_refund_goods/158434140756264.jpg', '2020-03-16 14:50:07', '2020-03-16 14:50:07');
INSERT INTO `shopping_refund_photos` VALUES (36, 47, 'shopping_refund_goods/158434140783606.jpg', '2020-03-16 14:50:07', '2020-03-16 14:50:07');
INSERT INTO `shopping_refund_photos` VALUES (37, 48, 'shopping_refund_goods/158434149740089.jpg', '2020-03-16 14:51:37', '2020-03-16 14:51:37');
INSERT INTO `shopping_refund_photos` VALUES (38, 48, 'shopping_refund_goods/158434149752612.jpg', '2020-03-16 14:51:37', '2020-03-16 14:51:37');
INSERT INTO `shopping_refund_photos` VALUES (39, 48, 'shopping_refund_goods/158434149859047.jpg', '2020-03-16 14:51:38', '2020-03-16 14:51:38');
INSERT INTO `shopping_refund_photos` VALUES (40, 50, 'shopping_refund_goods/158434298688380.jpg', '2020-03-16 15:16:26', '2020-03-16 15:16:26');
INSERT INTO `shopping_refund_photos` VALUES (41, 50, 'shopping_refund_goods/158434298671656.jpg', '2020-03-16 15:16:26', '2020-03-16 15:16:26');
INSERT INTO `shopping_refund_photos` VALUES (42, 50, 'shopping_refund_goods/158434298723359.jpg', '2020-03-16 15:16:27', '2020-03-16 15:16:27');
INSERT INTO `shopping_refund_photos` VALUES (43, 51, 'shopping_refund_goods/158434332832559.jpg', '2020-03-16 15:22:08', '2020-03-16 15:22:08');
INSERT INTO `shopping_refund_photos` VALUES (44, 51, 'shopping_refund_goods/158434332978088.jpg', '2020-03-16 15:22:09', '2020-03-16 15:22:09');
INSERT INTO `shopping_refund_photos` VALUES (45, 51, 'shopping_refund_goods/158434332932427.jpg', '2020-03-16 15:22:09', '2020-03-16 15:22:09');
INSERT INTO `shopping_refund_photos` VALUES (46, 53, 'shopping_refund_goods/158440718834085.jpg', '2020-03-17 09:06:28', '2020-03-17 09:06:28');
INSERT INTO `shopping_refund_photos` VALUES (47, 53, 'shopping_refund_goods/158440718940535.jpg', '2020-03-17 09:06:29', '2020-03-17 09:06:29');
INSERT INTO `shopping_refund_photos` VALUES (48, 53, 'shopping_refund_goods/158440718920720.jpg', '2020-03-17 09:06:29', '2020-03-17 09:06:29');
INSERT INTO `shopping_refund_photos` VALUES (49, 54, 'shopping_refund_goods/158442430557046.jpg', '2020-03-17 13:51:45', '2020-03-17 13:51:45');
INSERT INTO `shopping_refund_photos` VALUES (50, 54, 'shopping_refund_goods/158442430659739.jpg', '2020-03-17 13:51:46', '2020-03-17 13:51:46');
INSERT INTO `shopping_refund_photos` VALUES (51, 54, 'shopping_refund_goods/158442430789594.jpg', '2020-03-17 13:51:47', '2020-03-17 13:51:47');
INSERT INTO `shopping_refund_photos` VALUES (55, 87, 'https://maigengduo-dev-images.oss-cn-beijing.aliyuncs.com/shopping_refund_goods/wx40b9dcd902ede28c.o6zAJs2Fi434oz_b_NOtXRzkub30.B8kCZLVd8Gn102e82bfc7ea02ac0437036ef8f1129b9.png', '2020-03-18 11:27:33', '2020-03-18 11:27:33');
INSERT INTO `shopping_refund_photos` VALUES (56, 87, 'https://maigengduo-dev-images.oss-cn-beijing.aliyuncs.com/shopping_refund_goods/wx40b9dcd902ede28c.o6zAJs2Fi434oz_b_NOtXRzkub30.XvLjSmg22EUU7b72d5a3f1d5981d5f17e1639df6e6a0.png', '2020-03-18 11:27:33', '2020-03-18 11:27:33');
INSERT INTO `shopping_refund_photos` VALUES (57, 88, 'shopping_refund_goods/wxfile://tmp_4f6716248b23d914fb48a0f5dc9f716723cd395005977463.jpg', '2020-03-18 11:31:51', '2020-03-18 11:31:51');
INSERT INTO `shopping_refund_photos` VALUES (58, 88, 'shopping_refund_goods/wxfile://tmp_0f52dc2a49501cd94a88e699c20e4a51b61925132aa5142e.jpg', '2020-03-18 11:31:51', '2020-03-18 11:31:51');
INSERT INTO `shopping_refund_photos` VALUES (59, 90, 'wxfile://tmp_e92fc8788d54ed359e0618b400140c0a8b3e7586417e4c38.jpg', '2020-03-18 11:49:10', '2020-03-18 11:49:10');
INSERT INTO `shopping_refund_photos` VALUES (60, 90, 'wxfile://tmp_8d9fee24e28ea8826def67b26ace1bc985a5ea6759bd0fe1.jpg', '2020-03-18 11:49:10', '2020-03-18 11:49:10');
INSERT INTO `shopping_refund_photos` VALUES (61, 90, 'wxfile://tmp_c0a084a7c783816f7be7a37acc93b03c1d7b7bf2e155ecf2.jpg', '2020-03-18 11:49:10', '2020-03-18 11:49:10');
INSERT INTO `shopping_refund_photos` VALUES (62, 91, 'https://maigengduo-dev-images.oss-cn-beijing.aliyuncs.com/shopping_refund_goods/wxfile://tmp_258d69ba33607bdf5578466510e7d244.png', '2020-03-18 13:24:46', '2020-03-18 13:24:46');
INSERT INTO `shopping_refund_photos` VALUES (63, 91, 'https://maigengduo-dev-images.oss-cn-beijing.aliyuncs.com/shopping_refund_goods/wxfile://tmp_a574af24aef899f7eab4d1282a91a335.png', '2020-03-18 13:24:46', '2020-03-18 13:24:46');
INSERT INTO `shopping_refund_photos` VALUES (64, 91, 'https://maigengduo-dev-images.oss-cn-beijing.aliyuncs.com/shopping_refund_goods/wxfile://tmp_b5514f5bf8d9ad6d41d9af7e2141f23c.png', '2020-03-18 13:24:46', '2020-03-18 13:24:46');
INSERT INTO `shopping_refund_photos` VALUES (65, 95, 'shopping_refund_goods/asd', '2020-03-18 14:54:43', '2020-03-18 14:54:43');
INSERT INTO `shopping_refund_photos` VALUES (66, 95, 'shopping_refund_goods/sad', '2020-03-18 14:54:43', '2020-03-18 14:54:43');
INSERT INTO `shopping_refund_photos` VALUES (67, 95, 'shopping_refund_goods/sad', '2020-03-18 14:54:43', '2020-03-18 14:54:43');
INSERT INTO `shopping_refund_photos` VALUES (68, 96, 'https://maigengduo-dev-images.oss-cn-beijing.aliyuncs.com/shopping_refund_goods/wxfile://tmp_03904f9b1a8bb01bade06e35c15db12cd90e1c6359c1a359.png', '2020-03-18 15:26:39', '2020-03-18 15:26:39');
INSERT INTO `shopping_refund_photos` VALUES (69, 98, 'https://maigengduo-dev-images.oss-cn-beijing.aliyuncs.com/shopping_refund_goods/wxfile://tmp_6e29774da16d3414add525212e78418497e637cb3ab0af0d.png', '2020-03-18 16:14:12', '2020-03-18 16:14:12');
INSERT INTO `shopping_refund_photos` VALUES (70, 98, 'https://maigengduo-dev-images.oss-cn-beijing.aliyuncs.com/shopping_refund_goods/wxfile://tmp_4516207a234c9371ed7773dcf51534c9229d6c1f3beeaf9d.png', '2020-03-18 16:14:12', '2020-03-18 16:14:12');
INSERT INTO `shopping_refund_photos` VALUES (71, 99, 'https://maigengduo-dev-images.oss-cn-beijing.aliyuncs.com/shopping_refund_goods/wxfile://tmp_68655964f79655212b55b0bfef2aae227916ed0ba0634d3a.png', '2020-03-18 16:37:53', '2020-03-18 16:37:53');
INSERT INTO `shopping_refund_photos` VALUES (72, 99, 'https://maigengduo-dev-images.oss-cn-beijing.aliyuncs.com/shopping_refund_goods/wxfile://tmp_487c29e28addb3fccbace03fbec369bfa549b63babb1bfa4.png', '2020-03-18 16:37:53', '2020-03-18 16:37:53');
INSERT INTO `shopping_refund_photos` VALUES (73, 99, 'https://maigengduo-dev-images.oss-cn-beijing.aliyuncs.com/shopping_refund_goods/wxfile://tmp_280e30e266ed1fead8d3707353520b896d1213e014c0b4f8.png', '2020-03-18 16:37:53', '2020-03-18 16:37:53');
INSERT INTO `shopping_refund_photos` VALUES (74, 101, 'https://maigengduo-dev-images.oss-cn-beijing.aliyuncs.com/shopping_refund_goods/wxfile://tmp_7992795beb9f93088f78099345bdc81c79eb61098d14f9b4.png', '2020-03-18 17:04:29', '2020-03-18 17:04:29');
INSERT INTO `shopping_refund_photos` VALUES (75, 101, 'https://maigengduo-dev-images.oss-cn-beijing.aliyuncs.com/shopping_refund_goods/wxfile://tmp_32904dba39042042fae285d9eda6837d65c955c31e1090d3.png', '2020-03-18 17:04:29', '2020-03-18 17:04:29');
INSERT INTO `shopping_refund_photos` VALUES (76, 114, 'https://maigengduo-dev-images.oss-cn-beijing.aliyuncs.com/shopping_refund_goods/wx40b9dcd902ede28c.o6zAJs2Fi434oz_b_NOtXRzkub30.40Y2HcLGYJqG02e82bfc7ea02ac0437036ef8f1129b9.png', '2020-03-19 10:08:00', '2020-03-19 10:08:00');
INSERT INTO `shopping_refund_photos` VALUES (77, 114, 'https://maigengduo-dev-images.oss-cn-beijing.aliyuncs.com/shopping_refund_goods/wx40b9dcd902ede28c.o6zAJs2Fi434oz_b_NOtXRzkub30.RwXupdtHh8jS7b72d5a3f1d5981d5f17e1639df6e6a0.png', '2020-03-19 10:08:00', '2020-03-19 10:08:00');
INSERT INTO `shopping_refund_photos` VALUES (78, 114, 'https://maigengduo-dev-images.oss-cn-beijing.aliyuncs.com/shopping_refund_goods/wx40b9dcd902ede28c.o6zAJs2Fi434oz_b_NOtXRzkub30.u6MCNXz75fXI1ed91c0fe0aea11a8170774d5326751b.png', '2020-03-19 10:08:00', '2020-03-19 10:08:00');
INSERT INTO `shopping_refund_photos` VALUES (79, 120, 'https://maigengduo-dev-images.oss-cn-beijing.aliyuncs.com/shopping_refund_goods/wxfile://tmp_f03c8bb288e7c1e045c0a253e0cac734.png', '2020-03-19 10:36:37', '2020-03-19 10:36:37');
INSERT INTO `shopping_refund_photos` VALUES (80, 120, 'https://maigengduo-dev-images.oss-cn-beijing.aliyuncs.com/shopping_refund_goods/wxfile://tmp_42df84cf21160d3f8f90cf42c22c7e24.png', '2020-03-19 10:36:37', '2020-03-19 10:36:37');
INSERT INTO `shopping_refund_photos` VALUES (81, 120, 'https://maigengduo-dev-images.oss-cn-beijing.aliyuncs.com/shopping_refund_goods/wxfile://tmp_c33899aa367978672514627f196991d3.png', '2020-03-19 10:36:37', '2020-03-19 10:36:37');
INSERT INTO `shopping_refund_photos` VALUES (82, 135, 'https://maigengduo-dev-images.oss-cn-beijing.aliyuncs.com/shopping_refund_goods/wxfile://tmp_ece1b03c5cf5fb07e9105189a647cc2b.png', '2020-03-19 13:47:19', '2020-03-19 13:47:19');
INSERT INTO `shopping_refund_photos` VALUES (83, 139, 'https://maigengduo-dev-images.oss-cn-beijing.aliyuncs.com/shopping_refund_goods/wxfile://tmp_aeb2afdadb260ef5f0c8d27c811f7f99220341d3c31493d7.png', '2020-03-19 14:23:06', '2020-03-19 14:23:06');
INSERT INTO `shopping_refund_photos` VALUES (84, 144, 'https://maigengduo-dev-images.oss-cn-beijing.aliyuncs.com/shopping_refund_goods/wxfile://tmp_9a9030526c16f823df461e80362acef687affc67d262ac77.png', '2020-03-19 14:26:05', '2020-03-19 14:26:05');
INSERT INTO `shopping_refund_photos` VALUES (85, 159, 'https://maigengduo-dev-images.oss-cn-beijing.aliyuncs.com/shopping_refund_goods/wxfile://tmp_4ff21400b2b7493a2bc64f10aab9460c.png', '2020-03-20 14:47:46', '2020-03-20 14:47:46');
INSERT INTO `shopping_refund_photos` VALUES (86, 159, 'https://maigengduo-dev-images.oss-cn-beijing.aliyuncs.com/shopping_refund_goods/wxfile://tmp_28903575ea9d6a13b79a91ec308fc6b3.png', '2020-03-20 14:47:46', '2020-03-20 14:47:46');
INSERT INTO `shopping_refund_photos` VALUES (87, 159, 'https://maigengduo-dev-images.oss-cn-beijing.aliyuncs.com/shopping_refund_goods/wxfile://tmp_2b2bf23ff679a011e4b07d68c7015ef6.png', '2020-03-20 14:47:46', '2020-03-20 14:47:46');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
