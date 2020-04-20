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

 Date: 18/04/2020 19:16:39
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for shopping_cart
-- ----------------------------
DROP TABLE IF EXISTS `shopping_cart`;
CREATE TABLE `shopping_cart` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `seller_mini_id` int(11) NOT NULL COMMENT '卖家id',
  `is_checked` int(11) NOT NULL DEFAULT '1' COMMENT '类型 0未勾选1选中',
  `cart_id` int(11) NOT NULL COMMENT '购物车id',
  `user_openid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '用户openid',
  `goods_id` int(11) NOT NULL COMMENT '商品id',
  `status` int(11) NOT NULL DEFAULT '2' COMMENT '1下架2上架',
  `quantity` int(11) NOT NULL COMMENT '商品数量',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=409 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of shopping_cart
-- ----------------------------
BEGIN;
INSERT INTO `shopping_cart` VALUES (30, 4, 1, 0, 'ojvXN4t6eeQyzmqfvOTZQ0K26wcI', 9, 2, 1, '2020-02-20 18:04:11', '2020-03-04 14:42:20');
INSERT INTO `shopping_cart` VALUES (31, 4, 1, 0, 'ojvXN4gjILenQFx-IG47OwJINOPg', 9, 2, 1, '2020-02-20 18:28:26', '2020-02-20 18:28:26');
INSERT INTO `shopping_cart` VALUES (38, 4, 1, 0, 'ojvXN4oWh8PoGeQS_bTF58_hzCfI', 21, 2, 2, '2020-02-20 19:46:57', '2020-02-20 19:46:57');
INSERT INTO `shopping_cart` VALUES (40, 1, 1, 0, 'ojvXN4kFYYIPyuBsGvPuoXNYmDZ4', 9, 2, 1, '2020-02-20 20:44:57', '2020-02-20 20:44:57');
INSERT INTO `shopping_cart` VALUES (50, 12, 1, 0, 'ojvXN4gjILenQFx-IG47OwJINOPg', 21, 2, 1, '2020-02-21 10:31:30', '2020-02-21 10:31:30');
INSERT INTO `shopping_cart` VALUES (51, 12, 1, 0, 'ojvXN4oKMQDRzkdLI5otb7K6J-GQ', 27, 2, 1, '2020-02-21 10:53:01', '2020-02-21 10:53:01');
INSERT INTO `shopping_cart` VALUES (56, 16, 1, 0, 'ojvXN4gjILenQFx-IG47OwJINOPg', 23, 2, 2, '2020-02-21 11:42:15', '2020-02-21 11:42:16');
INSERT INTO `shopping_cart` VALUES (57, 16, 1, 0, 'ojvXN4gjILenQFx-IG47OwJINOPg', 22, 2, 2, '2020-02-21 11:42:26', '2020-02-21 11:42:26');
INSERT INTO `shopping_cart` VALUES (61, 1, 1, 0, 'ojvXN4i8k8xfqJL-mZzfobsIaanQ', 9, 2, 1, '2020-02-23 11:19:53', '2020-02-23 11:19:53');
INSERT INTO `shopping_cart` VALUES (62, 1, 1, 0, 'ojvXN4i8k8xfqJL-mZzfobsIaanQ', 40, 2, 1, '2020-02-23 11:19:57', '2020-02-23 11:19:57');
INSERT INTO `shopping_cart` VALUES (64, 1, 1, 0, 'ojvXN4g_srXb3Pw08mdMEpRFAXGA', 9, 2, 2, '2020-02-23 14:05:54', '2020-02-23 14:05:54');
INSERT INTO `shopping_cart` VALUES (65, 1, 1, 0, 'ojvXN4hc6LXXFNByQ5MDRYDWWziM', 27, 2, 2, '2020-02-23 14:06:02', '2020-02-23 14:06:02');
INSERT INTO `shopping_cart` VALUES (66, 1, 1, 0, 'ojvXN4hEoaQQpZqWa3UEP9DDhApI', 9, 2, 1, '2020-02-23 20:38:58', '2020-02-23 20:38:58');
INSERT INTO `shopping_cart` VALUES (67, 1, 1, 0, 'ojvXN4hEoaQQpZqWa3UEP9DDhApI', 40, 2, 1, '2020-02-23 20:39:03', '2020-02-23 20:39:03');
INSERT INTO `shopping_cart` VALUES (72, 22, 1, 0, 'ojvXN4tEHlMOb6vw1fc63fY9NVA0', 24, 2, 1, '2020-02-24 15:11:54', '2020-02-24 15:11:54');
INSERT INTO `shopping_cart` VALUES (73, 1, 1, 0, 'ojvXN4pwmuQvPjDjmODFnwQzFpVs', 42, 2, 1, '2020-02-25 09:18:03', '2020-02-25 09:18:03');
INSERT INTO `shopping_cart` VALUES (77, 1, 1, 0, 'ojvXN4hc6LXXFNByQ5MDRYDWWziM', 56, 2, 1, '2020-02-25 14:54:16', '2020-02-25 14:54:16');
INSERT INTO `shopping_cart` VALUES (78, 1, 1, 0, 'ojvXN4nAcU3rNgsIDA5I6yxqoLgc', 64, 2, 70, '2020-02-26 09:32:51', '2020-02-26 09:32:57');
INSERT INTO `shopping_cart` VALUES (82, 21, 1, 0, 'ojvXN4q_oZun_ZjlONd3DLIyg5s0', 62, 2, 1, '2020-02-26 10:33:24', '2020-02-26 10:33:24');
INSERT INTO `shopping_cart` VALUES (88, 21, 1, 0, 'ojvXN4q_oZun_ZjlONd3DLIyg5s0', 9, 2, 1, '2020-02-26 13:57:10', '2020-02-26 13:57:10');
INSERT INTO `shopping_cart` VALUES (89, 21, 1, 0, 'ojvXN4q_oZun_ZjlONd3DLIyg5s0', 40, 2, 1, '2020-02-26 13:57:16', '2020-02-26 13:57:16');
INSERT INTO `shopping_cart` VALUES (93, 21, 1, 0, 'ojvXN4q_oZun_ZjlONd3DLIyg5s0', 26, 2, 1, '2020-02-26 13:58:18', '2020-02-26 13:58:18');
INSERT INTO `shopping_cart` VALUES (94, 21, 1, 0, 'ojvXN4q_oZun_ZjlONd3DLIyg5s0', 21, 2, 1, '2020-02-26 13:58:33', '2020-02-26 13:58:33');
INSERT INTO `shopping_cart` VALUES (95, 1, 1, 0, 'ojvXN4oPy9bsLEUw5xWSy1WWYThU', 24, 2, 1, '2020-02-26 14:44:00', '2020-02-26 14:44:00');
INSERT INTO `shopping_cart` VALUES (107, 15, 1, 0, 'ojvXN4q4HY8hCRlNlxwGEjbndKGY', 64, 2, 1, '2020-02-26 19:47:43', '2020-02-26 19:47:43');
INSERT INTO `shopping_cart` VALUES (108, 15, 1, 0, 'ojvXN4hoE4c4Hwx9JxcoxkFSB_7E', 42, 2, 2, '2020-02-26 21:05:40', '2020-02-26 21:05:40');
INSERT INTO `shopping_cart` VALUES (109, 15, 1, 0, 'ojvXN4hoE4c4Hwx9JxcoxkFSB_7E', 9, 2, 2, '2020-02-26 21:05:44', '2020-02-26 21:05:44');
INSERT INTO `shopping_cart` VALUES (110, 1, 1, 0, 'ojvXN4khOMe9LBh0GU2jh7PVEgIE', 42, 2, 4, '2020-02-27 09:54:21', '2020-02-27 10:12:06');
INSERT INTO `shopping_cart` VALUES (111, 1, 1, 0, 'ojvXN4khOMe9LBh0GU2jh7PVEgIE', 9, 2, 4, '2020-02-27 09:54:26', '2020-02-27 10:12:11');
INSERT INTO `shopping_cart` VALUES (112, 15, 1, 0, 'ojvXN4tG_yZe_CuHIaZvd80ihGsA', 63, 2, 8, '2020-02-27 09:58:47', '2020-02-27 09:59:26');
INSERT INTO `shopping_cart` VALUES (114, 23, 1, 0, 'ojvXN4q4HY8hCRlNlxwGEjbndKGY', 42, 2, 1, '2020-02-27 10:05:43', '2020-02-27 10:05:43');
INSERT INTO `shopping_cart` VALUES (115, 15, 1, 0, 'ojvXN4tG_yZe_CuHIaZvd80ihGsA', 57, 2, 1, '2020-02-27 10:14:50', '2020-02-27 10:14:50');
INSERT INTO `shopping_cart` VALUES (119, 1, 1, 0, 'ojvXN4tEHlMOb6vw1fc63fY9NVA0', 42, 2, 2, '2020-02-27 10:55:24', '2020-02-27 10:58:04');
INSERT INTO `shopping_cart` VALUES (122, 1, 1, 0, 'ojvXN4tEHlMOb6vw1fc63fY9NVA0', 23, 2, 2, '2020-02-27 13:16:26', '2020-02-27 13:16:26');
INSERT INTO `shopping_cart` VALUES (123, 1, 1, 0, 'ojvXN4oWTLpCOFl6oJzm4NK6kZPQ', 81, 2, 1, '2020-02-27 13:16:54', '2020-02-27 13:16:54');
INSERT INTO `shopping_cart` VALUES (128, 1, 1, 0, 'ojvXN4pwmuQvPjDjmODFnwQzFpVs', 45, 2, 1, '2020-02-27 13:26:56', '2020-02-27 13:26:56');
INSERT INTO `shopping_cart` VALUES (130, 1, 1, 0, 'ojvXN4q_oZun_ZjlONd3DLIyg5s0', 73, 2, 63, '2020-02-27 13:34:50', '2020-02-27 13:38:07');
INSERT INTO `shopping_cart` VALUES (131, 1, 1, 0, 'ojvXN4q_oZun_ZjlONd3DLIyg5s0', 80, 2, 1, '2020-02-27 13:35:50', '2020-02-27 13:35:50');
INSERT INTO `shopping_cart` VALUES (132, 1, 1, 0, 'ojvXN4q_oZun_ZjlONd3DLIyg5s0', 77, 2, 60, '2020-02-27 13:36:29', '2020-02-27 13:36:33');
INSERT INTO `shopping_cart` VALUES (133, 1, 1, 0, 'ojvXN4tEHlMOb6vw1fc63fY9NVA0', 73, 2, 20, '2020-02-27 13:39:55', '2020-02-27 13:39:57');
INSERT INTO `shopping_cart` VALUES (135, 1, 1, 0, 'ojvXN4q_oZun_ZjlONd3DLIyg5s0', 72, 2, 28, '2020-02-27 13:43:18', '2020-02-27 13:43:32');
INSERT INTO `shopping_cart` VALUES (136, 1, 1, 0, 'ojvXN4q_oZun_ZjlONd3DLIyg5s0', 81, 2, 2, '2020-02-27 13:45:04', '2020-02-27 13:45:16');
INSERT INTO `shopping_cart` VALUES (140, 1, 1, 0, 'ojvXN4kFYYIPyuBsGvPuoXNYmDZ4', 61, 2, 10, '2020-02-27 15:21:39', '2020-02-27 15:21:58');
INSERT INTO `shopping_cart` VALUES (149, 1, 1, 0, 'ojvXN4oKMQDRzkdLI5otb7K6J-GQ', 42, 2, 1, '2020-02-28 09:04:33', '2020-02-28 09:04:33');
INSERT INTO `shopping_cart` VALUES (159, 26, 1, 0, 'ojvXN4q_oZun_ZjlONd3DLIyg5s0', 42, 2, 10, '2020-02-28 13:10:32', '2020-02-28 13:10:37');
INSERT INTO `shopping_cart` VALUES (165, 24, 1, 0, 'ojvXN4nAcU3rNgsIDA5I6yxqoLgc', 23, 2, 1, '2020-02-28 17:19:28', '2020-02-28 17:19:28');
INSERT INTO `shopping_cart` VALUES (166, 24, 1, 0, 'ojvXN4kwCTK2PerdR1wt7JLLyGCc', 23, 2, 6, '2020-02-28 17:37:16', '2020-02-28 17:37:16');
INSERT INTO `shopping_cart` VALUES (167, 32, 1, 0, 'ojvXN4pwmuQvPjDjmODFnwQzFpVs', 90, 2, 1, '2020-02-29 14:49:49', '2020-02-29 14:49:49');
INSERT INTO `shopping_cart` VALUES (168, 32, 1, 0, 'ojvXN4pwmuQvPjDjmODFnwQzFpVs', 77, 2, 1, '2020-02-29 15:07:20', '2020-02-29 15:07:20');
INSERT INTO `shopping_cart` VALUES (169, 1, 1, 0, 'ojvXN4jPnF67tkkO1Kd9qNO0QM6I', 81, 2, 1, '2020-02-29 15:27:19', '2020-02-29 15:27:19');
INSERT INTO `shopping_cart` VALUES (174, 33, 1, 0, 'ojvXN4kBUuMn9I2AUJR5urGPSDwE', 68, 2, 1, '2020-02-29 17:27:28', '2020-02-29 17:27:28');
INSERT INTO `shopping_cart` VALUES (175, 33, 1, 0, 'ojvXN4oVQP_FcKsjZxljAlRwW6Bw', 68, 2, 1, '2020-02-29 17:28:55', '2020-02-29 17:28:55');
INSERT INTO `shopping_cart` VALUES (179, 1, 1, 0, 'ojvXN4gjILenQFx-IG47OwJINOPg', 80, 2, 9, '2020-02-29 20:13:51', '2020-02-29 20:13:51');
INSERT INTO `shopping_cart` VALUES (180, 1, 1, 0, 'ojvXN4jPnF67tkkO1Kd9qNO0QM6I', 48, 2, 1, '2020-02-29 21:17:25', '2020-02-29 21:17:25');
INSERT INTO `shopping_cart` VALUES (183, 19, 1, 0, 'ojvXN4q5kpg0-c5Atyifjsm4T6-Q', 78, 2, 1, '2020-02-29 22:09:15', '2020-02-29 22:09:15');
INSERT INTO `shopping_cart` VALUES (184, 33, 1, 0, 'ojvXN4oWTLpCOFl6oJzm4NK6kZPQ', 92, 2, 3, '2020-02-29 22:50:41', '2020-02-29 22:50:41');
INSERT INTO `shopping_cart` VALUES (185, 33, 1, 0, 'ojvXN4hc6LXXFNByQ5MDRYDWWziM', 83, 2, 2, '2020-02-29 23:02:32', '2020-02-29 23:02:32');
INSERT INTO `shopping_cart` VALUES (186, 1, 1, 0, 'ojvXN4jw4EgpvC_rY918ELWK5x38', 92, 2, 1, '2020-02-29 23:05:09', '2020-02-29 23:05:09');
INSERT INTO `shopping_cart` VALUES (188, 19, 1, 0, 'ojvXN4g_srXb3Pw08mdMEpRFAXGA', 80, 2, 1, '2020-02-29 23:53:09', '2020-02-29 23:53:09');
INSERT INTO `shopping_cart` VALUES (190, 1, 1, 0, 'ojvXN4sPRnCItKpP18c7KNkkd0W0', 22, 2, 1, '2020-03-01 05:39:22', '2020-03-01 05:39:22');
INSERT INTO `shopping_cart` VALUES (193, 39, 1, 0, 'ojvXN4pLCXTlGU18IehvuOTM_nc0', 89, 2, 1, '2020-03-01 14:50:15', '2020-03-01 14:50:15');
INSERT INTO `shopping_cart` VALUES (194, 35, 1, 0, 'ojvXN4gDxlnSrjoMuCt9LUD2YqpA', 73, 2, 1, '2020-03-01 15:09:10', '2020-03-01 15:09:10');
INSERT INTO `shopping_cart` VALUES (199, 44, 1, 0, 'ojvXN4uPKSvmH0mpGqe3ddnevWLc', 88, 2, 1, '2020-03-01 17:17:18', '2020-03-01 17:17:18');
INSERT INTO `shopping_cart` VALUES (200, 31, 1, 0, 'ojvXN4lHAa9vUroMXiWg0ZH5XzVA', 92, 2, 1, '2020-03-01 20:14:00', '2020-03-01 20:14:00');
INSERT INTO `shopping_cart` VALUES (210, 1, 1, 0, 'ojvXN4sp255TzkAU_3k-juMvJxUA', 21, 2, 1, '2020-03-02 10:26:37', '2020-03-02 10:26:37');
INSERT INTO `shopping_cart` VALUES (211, 35, 1, 0, 'ojvXN4rWpPnX5yw4UlsbxuWBvWpg', 81, 2, 1, '2020-03-02 10:49:27', '2020-03-02 10:49:27');
INSERT INTO `shopping_cart` VALUES (213, 26, 1, 0, 'ojvXN4q_oZun_ZjlONd3DLIyg5s0', 92, 2, 3, '2020-03-02 10:56:15', '2020-03-02 11:01:04');
INSERT INTO `shopping_cart` VALUES (214, 19, 1, 0, 'ojvXN4sp255TzkAU_3k-juMvJxUA', 79, 2, 1, '2020-03-02 11:04:44', '2020-03-02 11:04:44');
INSERT INTO `shopping_cart` VALUES (218, 21, 1, 0, 'ojvXN4q_oZun_ZjlONd3DLIyg5s0', 49, 2, 1, '2020-03-02 13:26:48', '2020-03-02 13:26:48');
INSERT INTO `shopping_cart` VALUES (219, 45, 1, 0, 'ojvXN4uzHE4-c6NLTf4NgPNu8aDg', 73, 2, 2, '2020-03-02 14:21:11', '2020-03-02 14:22:49');
INSERT INTO `shopping_cart` VALUES (220, 45, 1, 0, 'ojvXN4uzHE4-c6NLTf4NgPNu8aDg', 80, 2, 1, '2020-03-02 14:21:30', '2020-03-02 14:21:30');
INSERT INTO `shopping_cart` VALUES (221, 45, 1, 0, 'ojvXN4uzHE4-c6NLTf4NgPNu8aDg', 76, 2, 2, '2020-03-02 14:21:51', '2020-03-02 14:21:52');
INSERT INTO `shopping_cart` VALUES (222, 45, 1, 0, 'ojvXN4uzHE4-c6NLTf4NgPNu8aDg', 75, 2, 2, '2020-03-02 14:22:02', '2020-03-02 14:22:07');
INSERT INTO `shopping_cart` VALUES (223, 45, 1, 0, 'ojvXN4uzHE4-c6NLTf4NgPNu8aDg', 69, 2, 1, '2020-03-02 14:22:15', '2020-03-02 14:22:15');
INSERT INTO `shopping_cart` VALUES (224, 45, 1, 0, 'ojvXN4uzHE4-c6NLTf4NgPNu8aDg', 82, 2, 1, '2020-03-02 14:22:33', '2020-03-02 14:22:33');
INSERT INTO `shopping_cart` VALUES (225, 45, 1, 0, 'ojvXN4uzHE4-c6NLTf4NgPNu8aDg', 70, 2, 1, '2020-03-02 14:23:11', '2020-03-02 14:23:11');
INSERT INTO `shopping_cart` VALUES (227, 16, 1, 0, 'ojvXN4kFYYIPyuBsGvPuoXNYmDZ4', 83, 2, 2, '2020-03-02 15:14:10', '2020-03-02 15:57:16');
INSERT INTO `shopping_cart` VALUES (228, 48, 1, 0, 'ojvXN4hozx4ByZXTB6e0fSwS4fxE', 14, 2, 1, '2020-03-02 15:19:48', '2020-03-02 15:19:48');
INSERT INTO `shopping_cart` VALUES (232, 48, 1, 0, 'ojvXN4q_oZun_ZjlONd3DLIyg5s0', 22, 2, 1, '2020-03-02 15:40:55', '2020-03-02 15:40:55');
INSERT INTO `shopping_cart` VALUES (234, 16, 1, 0, 'ojvXN4kFYYIPyuBsGvPuoXNYmDZ4', 80, 2, 1, '2020-03-02 15:57:31', '2020-03-02 15:57:31');
INSERT INTO `shopping_cart` VALUES (235, 44, 1, 0, 'ojvXN4r8zdZspBQTVCJJtl5uiQX8', 82, 2, 1, '2020-03-02 15:58:27', '2020-03-02 15:58:27');
INSERT INTO `shopping_cart` VALUES (236, 16, 1, 0, 'ojvXN4kFYYIPyuBsGvPuoXNYmDZ4', 64, 2, 1, '2020-03-02 15:58:30', '2020-03-02 15:58:30');
INSERT INTO `shopping_cart` VALUES (237, 19, 1, 0, 'ojvXN4tG_yZe_CuHIaZvd80ihGsA', 92, 2, 2, '2020-03-02 18:24:21', '2020-03-02 18:24:21');
INSERT INTO `shopping_cart` VALUES (238, 19, 1, 0, 'ojvXN4tG_yZe_CuHIaZvd80ihGsA', 83, 2, 9, '2020-03-02 18:24:45', '2020-03-02 18:24:45');
INSERT INTO `shopping_cart` VALUES (240, 19, 1, 0, 'ojvXN4oWTLpCOFl6oJzm4NK6kZPQ', 92, 2, 1, '2020-03-02 18:48:06', '2020-03-02 18:48:06');
INSERT INTO `shopping_cart` VALUES (241, 47, 1, 0, 'ojvXN4oWh8PoGeQS_bTF58_hzCfI', 24, 2, 1, '2020-03-02 20:52:58', '2020-03-02 20:52:58');
INSERT INTO `shopping_cart` VALUES (246, 45, 1, 0, 'ojvXN4taqbVTg1esvbag-vMGTyaM', 47, 2, 1, '2020-03-02 21:02:27', '2020-03-02 21:02:27');
INSERT INTO `shopping_cart` VALUES (253, 45, 1, 0, 'ojvXN4qLffo8g5SEPxL_zG7te2gQ', 64, 2, 1, '2020-03-03 09:41:37', '2020-03-03 09:41:37');
INSERT INTO `shopping_cart` VALUES (257, 45, 1, 0, 'ojvXN4sZT8rcRdtgYFznqAMVT_R0', 67, 2, 1, '2020-03-03 09:50:57', '2020-03-03 09:50:57');
INSERT INTO `shopping_cart` VALUES (262, 41, 1, 0, 'ojvXN4tEHlMOb6vw1fc63fY9NVA0', 82, 2, 6, '2020-03-03 10:34:47', '2020-03-03 10:35:28');
INSERT INTO `shopping_cart` VALUES (263, 45, 1, 0, 'ojvXN4sp255TzkAU_3k-juMvJxUA', 80, 2, 1, '2020-03-03 10:48:34', '2020-03-03 10:48:34');
INSERT INTO `shopping_cart` VALUES (264, 45, 1, 0, 'ojvXN4sp255TzkAU_3k-juMvJxUA', 78, 2, 1, '2020-03-03 10:48:53', '2020-03-03 10:48:53');
INSERT INTO `shopping_cart` VALUES (268, 46, 1, 0, 'ojvXN4oWh8PoGeQS_bTF58_hzCfI', 78, 2, 3, '2020-03-03 13:17:56', '2020-03-03 13:37:38');
INSERT INTO `shopping_cart` VALUES (270, 48, 1, 0, 'ojvXN4q_oZun_ZjlONd3DLIyg5s0', 24, 2, 1, '2020-03-03 13:41:02', '2020-03-03 13:41:02');
INSERT INTO `shopping_cart` VALUES (271, 48, 1, 0, 'ojvXN4q_oZun_ZjlONd3DLIyg5s0', 25, 2, 3, '2020-03-03 13:41:30', '2020-03-03 13:41:33');
INSERT INTO `shopping_cart` VALUES (280, 44, 1, 0, 'ojvXN4rblvLPDyORs2deX0VKlf_Y', 83, 2, 2, '2020-03-03 14:38:09', '2020-03-03 14:39:57');
INSERT INTO `shopping_cart` VALUES (282, 47, 1, 0, 'ojvXN4tEHlMOb6vw1fc63fY9NVA0', 24, 2, 1, '2020-03-03 14:42:28', '2020-03-03 14:42:28');
INSERT INTO `shopping_cart` VALUES (283, 41, 1, 0, 'ojvXN4sMC0a8LN6B3Ao4V5gjSYf4', 97, 2, 2, '2020-03-04 09:08:43', '2020-03-04 09:08:43');
INSERT INTO `shopping_cart` VALUES (288, 1, 1, 0, 'ojvXN4q4HY8hCRlNlxwGEjbndKGY', 24, 2, 1, '2020-03-04 16:28:30', '2020-03-04 16:28:30');
INSERT INTO `shopping_cart` VALUES (295, 1, 1, 0, 'oe4cw5XnracgM7NEAm2Pmuq8V8cE', 9, 2, 99, '2020-03-06 14:48:22', '2020-03-06 14:50:14');
INSERT INTO `shopping_cart` VALUES (311, 1, 1, 0, 'oe4cw5asU_26iiVxDHrF6cfRwT1Y', 26, 2, 3, '2020-03-06 15:41:37', '2020-03-06 15:41:37');
INSERT INTO `shopping_cart` VALUES (312, 1, 1, 0, 'oe4cw5asU_26iiVxDHrF6cfRwT1Y', 23, 2, 5, '2020-03-06 15:41:43', '2020-03-06 15:41:43');
INSERT INTO `shopping_cart` VALUES (315, 56, 1, 0, 'oe4cw5eQw245HrxMvqLVTx19PnYA', 21, 2, 2, '2020-03-06 15:50:37', '2020-03-06 15:53:09');
INSERT INTO `shopping_cart` VALUES (319, 51, 1, 0, 'oe4cw5asU_26iiVxDHrF6cfRwT1Y', 21, 2, 99, '2020-03-06 15:52:26', '2020-03-06 15:54:51');
INSERT INTO `shopping_cart` VALUES (321, 51, 1, 0, 'oe4cw5asU_26iiVxDHrF6cfRwT1Y', 26, 2, 1, '2020-03-06 15:56:21', '2020-03-06 15:56:21');
INSERT INTO `shopping_cart` VALUES (322, 51, 1, 0, 'oe4cw5asU_26iiVxDHrF6cfRwT1Y', 24, 2, 1, '2020-03-06 15:56:26', '2020-03-06 15:56:26');
INSERT INTO `shopping_cart` VALUES (323, 51, 1, 0, 'oe4cw5asU_26iiVxDHrF6cfRwT1Y', 96, 2, 1, '2020-03-06 15:56:36', '2020-03-06 15:56:36');
INSERT INTO `shopping_cart` VALUES (324, 51, 1, 0, 'oe4cw5asU_26iiVxDHrF6cfRwT1Y', 23, 2, 1, '2020-03-06 15:57:05', '2020-03-06 15:57:05');
INSERT INTO `shopping_cart` VALUES (325, 51, 1, 0, 'oe4cw5asU_26iiVxDHrF6cfRwT1Y', 25, 2, 1, '2020-03-06 15:57:36', '2020-03-06 15:57:36');
INSERT INTO `shopping_cart` VALUES (326, 53, 1, 0, 'oe4cw5asU_26iiVxDHrF6cfRwT1Y', 21, 2, 1, '2020-03-09 11:27:04', '2020-03-09 11:27:17');
INSERT INTO `shopping_cart` VALUES (339, 51, 1, 0, 'oe4cw5eQw245HrxMvqLVTx19PnYA', 21, 2, 1, '2020-03-12 15:31:09', '2020-03-12 15:31:09');
INSERT INTO `shopping_cart` VALUES (352, 47, 1, 0, 'oe4cw5asU_26iiVxDHrF6cfRwT1Y', 23, 2, 1, '2020-03-23 10:02:56', '2020-03-23 10:03:17');
INSERT INTO `shopping_cart` VALUES (379, 1, 1, 0, 'oe4cw5QTOFsINqGki0-ojphqfjmg', 23, 2, 1, '2020-03-26 09:13:15', '2020-03-26 09:14:03');
INSERT INTO `shopping_cart` VALUES (406, 55, 0, 0, 'oe4cw5asU_26iiVxDHrF6cfRwT1Y', 22, 2, 1, '2020-03-26 15:47:49', '2020-04-01 09:47:26');
INSERT INTO `shopping_cart` VALUES (407, 55, 0, 0, 'oe4cw5asU_26iiVxDHrF6cfRwT1Y', 40, 2, 1, '2020-03-26 15:47:52', '2020-04-01 09:47:26');
INSERT INTO `shopping_cart` VALUES (408, 1, 1, 0, 'oe4cw5S0EwVbQknEm1E4r2OCsTSM', 9, 2, 2, '2020-03-31 14:48:46', '2020-03-31 14:48:46');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
