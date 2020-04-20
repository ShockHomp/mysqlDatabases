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

 Date: 18/04/2020 19:18:23
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for shopping_mini_users
-- ----------------------------
DROP TABLE IF EXISTS `shopping_mini_users`;
CREATE TABLE `shopping_mini_users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `openid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '用户唯一标识',
  `shop_id` int(11) DEFAULT NULL COMMENT '商城商店ID',
  `is_admin` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '是否是店长 [1 是] [0 不是]',
  `nickname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '店长/店员微信昵称',
  `avatarUrl` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '店长/店员微信头像地址',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `shopping_mini_users_openid_unique` (`openid`) USING BTREE,
  UNIQUE KEY `shopping_mini_users_shop_id_unique` (`shop_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of shopping_mini_users
-- ----------------------------
BEGIN;
INSERT INTO `shopping_mini_users` VALUES (1, 'oe4cw5aW0xgcBWVz_QqqoAqlhWIw', 41, 1, '少丞', 'https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTIO8fTPkx9hWORP70zuSYUdhcjTYCKwUooZicibDibrp3zqBbecCBNZeGTTbpk6vjreqibjW9hfhxFrMw/132', '2020-02-17 10:45:35', '2020-02-17 10:45:40');
INSERT INTO `shopping_mini_users` VALUES (14, 'ojvXN4t6eeQyzmqfvOTZQ0K26wcI', 40, 1, '鱼罐_头', 'https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTJicREp3ghtN5LBnstxkWVusyOMcgZoicasZFXFlR5IyvheH6RibuxBHX5oh8jAs1gqUHMP17eOR1Eqg/132', '2020-02-20 20:55:03', '2020-02-20 20:55:03');
INSERT INTO `shopping_mini_users` VALUES (16, 'ojvXN4kFYYIPyuBsGvPuoXNYmDZ4', 38, 1, '苦゛咖啡', 'https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83erYvibibDuXLzCxibuxGGtWdbKCYLdecwB5J2netiafwnehUDRtdMBAoodSrzeG7bRDSIl50t295reOIw/132', '2020-02-20 21:02:28', '2020-02-20 21:02:28');
INSERT INTO `shopping_mini_users` VALUES (19, 'ojvXN4oWTLpCOFl6oJzm4NK6kZPQ', 37, 1, '疯狂的船长', NULL, NULL, NULL);
INSERT INTO `shopping_mini_users` VALUES (30, 'ojvXN4oWh8PoGeQS_bTF58_hzCfI', 133, 1, '七七😷', 'https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83eolSSPUr5ZLbEQIee8ojeneD7aQsfGNnwg3qKrTWdwzK5dSMTMtI9Qr6ju1Q7kHjhgh1VsQsprwOg/132', '2020-02-28 21:42:36', '2020-02-28 21:42:36');
INSERT INTO `shopping_mini_users` VALUES (32, 'ojvXN4pwmuQvPjDjmODFnwQzFpVs', 138, 1, '程澄橙', 'https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTKtz87cHKiantIIibl5ibgNUibx8BUT93z3fmzaogwkIsLb63JIlTfjb0cfRvpDFoTpOIWdLp71hWSgsA/132', '2020-02-29 14:24:44', '2020-02-29 14:24:44');
INSERT INTO `shopping_mini_users` VALUES (33, 'ojvXN4hc6LXXFNByQ5MDRYDWWziM', 139, 1, 'Wayland 张卓', 'https://wx.qlogo.cn/mmopen/vi_32/Q3auHgzwzM5f4xoe8HyLBIYlD8cYO9KkUNDbjel9DgHsNqr5MVgQ3TlRThbkA5OowPsvcbnOT6RZuuNTxAzABg/132', '2020-02-29 16:36:16', '2020-02-29 16:36:16');
INSERT INTO `shopping_mini_users` VALUES (35, 'ojvXN4nygsiK5d-7C2j8dClz2PnM', 114, 1, 'Cui🌸京玉', 'https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTIn6LQJNqACR9bTsaApTG17j9CyYUf4RgEEUzL2HG20Vqg0uI6eibfmpJg6xGW7mjzaEyv0XXiawMpA/132', '2020-03-01 11:58:01', '2020-03-01 11:58:01');
INSERT INTO `shopping_mini_users` VALUES (36, 'ojvXN4onnLUNbjh6BtWkyk7UsNzY', 125, 1, '乔', 'https://wx.qlogo.cn/mmopen/vi_32/PiajxSqBRaELIOvH0vhucavv22jiaLA8N3XOZo62VJWNrMA68v1a5lvzFF0ibuDa4JjHT0yHCxwpE7AqtDor1JtMQ/132', '2020-03-01 12:26:56', '2020-03-01 12:26:56');
INSERT INTO `shopping_mini_users` VALUES (37, 'ojvXN4hkpN1-YpZsXWdagD2urGb8', 113, 1, 'A京东超市绿城店15566011177', 'https://wx.qlogo.cn/mmopen/vi_32/smIOwOtBb8Vjf5PA1rXrU9zqlFYUmqbhRiauq4dR7Z7U9XY4tHQdPTKHujKJsgJBSkeTqzL3HLPC57aia5FWUbNw/132', '2020-03-01 12:28:05', '2020-03-01 12:28:05');
INSERT INTO `shopping_mini_users` VALUES (38, 'ojvXN4qa323ht1eegZmRa_yovYlc', 124, 1, 'A蚂蚁联盟超市菜鸟驿站13614031167', 'https://wx.qlogo.cn/mmopen/vi_32/jibE21aY20hOTvrBRlibJVfVJ7aaVnHEwhDA0HrgxPZvDTAELgFP7BeuCK261SAcxk7n2tEiaxibcVIOQ0PsyDBicJw/132', '2020-03-01 12:55:54', '2020-03-01 12:55:54');
INSERT INTO `shopping_mini_users` VALUES (39, 'ojvXN4vKFMSf9gcq0om5YU35Ud1g', 121, 1, '😊', 'https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTJNpuTewUexeUyWrr2AxZ9wWICXCC1gkrsCQnCibrYUujV28r31Kpf81sWJgW2UT22n2qoU6Fm9STg/132', '2020-03-01 13:37:30', '2020-03-01 13:37:30');
INSERT INTO `shopping_mini_users` VALUES (40, 'ojvXN4jgfm8YombfM3fIi5InQhk8', 120, 1, '美添乐生活超市', 'https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83eq7tRcZfvGDCrOwtvcelrhu5P8r3J8MwZPVNZwGt3sNQ0Llqoq9BCiaEQSsfBM4kvl6QoLaenlPvrw/132', '2020-03-01 13:49:42', '2020-03-01 13:49:42');
INSERT INTO `shopping_mini_users` VALUES (41, 'ojvXN4iC5d2n6IYwlWyFAP9WJpy8', 119, 1, '金园佳艳子', 'https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTJCKptZzkD5L3CpebLD1n8lj6xBD1v2gSOcVIiabHiazcQpAeOHnDkFM7eFMvibdCLX00icLDZzLgMuZw/132', '2020-03-01 14:03:23', '2020-03-01 14:03:23');
INSERT INTO `shopping_mini_users` VALUES (42, 'ojvXN4ohI3FQ2uJQuNmxs3gUDoG8', 118, 1, '幸福久久', 'https://wx.qlogo.cn/mmopen/vi_32/W7z4uB2e2Z7CYPVhfjbbAzicmUMpQmKIwEMiasNpQbSoZSLwUichSRq4W2fsicQuXURLic0u2qiaOEILDy0A8LM1G8Gw/132', '2020-03-01 14:21:51', '2020-03-01 14:21:51');
INSERT INTO `shopping_mini_users` VALUES (43, 'ojvXN4r3lEVt2OaH2whbmX6qrTQc', 117, 1, '豆芽私厨', 'https://wx.qlogo.cn/mmopen/vi_32/M3DibadGZwwPH3FrnwaXaJ9lgficoSibKS9at4XRERzIrmUBvreQUgZGQfz9PABGuibibNSYLxXkN6dlczckCCLlmhA/132', '2020-03-01 14:45:03', '2020-03-01 14:45:03');
INSERT INTO `shopping_mini_users` VALUES (44, 'ojvXN4r8zdZspBQTVCJJtl5uiQX8', 116, 1, '姜文明', 'https://wx.qlogo.cn/mmopen/vi_32/AEpdGjVQoSUYtrdicyP0NLEChtGgcYbAoqGQMPLwg3pSYZCBgObaJAUHYQ0uatUGvAbOCzhdwLIKDy5iaSHibZibFQ/132', '2020-03-01 15:06:58', '2020-03-01 15:06:58');
INSERT INTO `shopping_mini_users` VALUES (45, 'ojvXN4t8RvN9H4gOWSFcNY1xgZvM', 115, 1, 'A佐客超市西门⁶⁷⁷⁸¹⁸⁸¹', 'https://wx.qlogo.cn/mmopen/vi_32/HjZXA4OLm5Eah54wwuZnxRRcwCHtDQu3RqibZWOLcJQYBujqMfTnyNr9Dpm8oe3ySDIROg8xpaiaxvtdyNccBBDw/132', '2020-03-01 16:32:01', '2020-03-01 16:32:01');
INSERT INTO `shopping_mini_users` VALUES (46, 'ojvXN4s_N2cr3yvva0RtS6kjgx4Y', 147, 1, '辛德瑞拉', 'https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTLUyPmib7dvOhh5m1Ttv0icVcsZHOvLQ6XXBGj8xa5jVRStn7FFtx4ib9JdCCvrV4Zn4CrSn4Gtzib14A/132', '2020-03-02 14:03:14', '2020-03-02 14:03:14');
INSERT INTO `shopping_mini_users` VALUES (47, 'oe4cw5asU_26iiVxDHrF6cfRwT1Y', 158, 1, '吴琳', 'https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTIy0lcSxEBKjYFq5rXvia4y4WdYCRmBZMuiavxjv7NgL4VoIZ7FJgfDK251iatWqEGiarNVxrqV8ANsiaw/132', '2020-03-02 14:15:32', '2020-03-02 14:15:32');
INSERT INTO `shopping_mini_users` VALUES (49, 'ojvXN4sAaYcLFFbSoXnBuQYtk5hA', 146, 1, '王', 'https://wx.qlogo.cn/mmopen/vi_32/noMvdVzjouyCOQGKJvKuLokk75W8ERZZoJL7mohd7owcWGWyZrAQMXxbcmLtSnvdZEwpruGLrG2rsynNticA5hg/132', '2020-03-02 15:40:29', '2020-03-02 15:40:29');
INSERT INTO `shopping_mini_users` VALUES (51, 'oe4cw5V-PZ5J3PoHsocPZ2EaQzu4', 159, 1, '七七😷', 'https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83er23qPGmduNEPWDcOEH6UicPKOGQ76yy3GZck6aeaddH5iceZuBT5G2SlKYicHRJCMxhNcgHzdhiazlBg/132', '2020-03-06 14:48:37', '2020-03-06 14:48:37');
INSERT INTO `shopping_mini_users` VALUES (52, 'oe4cw5ZID8ACKccLn-ZvOhVNtcvQ', 160, 1, '大月亮', 'https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTKicUgL8bc6EDsvkq0TdhTYQvtCdianiapwYtPZiavkVLkd1ZO0cssZgiceTCWic1DxKnxY8zib3qRxaGwsw/132', '2020-03-06 15:33:39', '2020-03-06 15:33:39');
INSERT INTO `shopping_mini_users` VALUES (53, 'en', 162, 1, '又绿江南岸', 'https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTJoMolZL3bgBxqWhJGFVOW3sic6Yu9nn3deyPyNUDzuLOu2uCWib0pMibHx8VOWNAgyia3L3kCxh7plpA/132', '2020-03-09 10:58:36', '2020-03-09 10:58:36');
INSERT INTO `shopping_mini_users` VALUES (54, 'oe4cw5U7Wcho2BTft8VgkWh7C4O8', 182, 1, 'PENG先森', 'https://wx.qlogo.cn/mmopen/vi_32/7oSBJu6ROfwJicY3vDOWDooYsOxI6Qibmg6LL3IW32JiaHmy9vlibEQa8E3Bph77WFxJ811ic4K85NkVk5PlUgmDJCg/132', '2020-03-10 11:44:07', '2020-03-10 11:44:07');
INSERT INTO `shopping_mini_users` VALUES (55, 'oe4cw5XmELuLiE89A2yBSdNt9m8s', 183, 1, '又绿江南岸', 'https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTJoMolZL3bgBxqWhJGFVOW3sic6Yu9nn3deyPyNUDzuLOu2uCWib0pMibHx8VOWNAgyia3L3kCxh7plpA/132', '2020-03-12 14:06:02', '2020-03-12 14:06:02');
INSERT INTO `shopping_mini_users` VALUES (56, 'oe4cw5Ung3WM12lGmMkcyj-p-tEA', 193, 1, '姜威库', 'https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83eoM8OD3rQLNwM8AbpH6EVqs3CPTVkXiaWX9LFvookv1mAh7KSV0vA2g522CIyW3Tham7YPMT4kbqwA/132', '2020-03-16 17:04:54', '2020-03-16 17:04:54');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
