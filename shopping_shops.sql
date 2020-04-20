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

 Date: 18/04/2020 19:21:32
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for shopping_shops
-- ----------------------------
DROP TABLE IF EXISTS `shopping_shops`;
CREATE TABLE `shopping_shops` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '商城商店名称',
  `contact_phone` char(11) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '联系人电话',
  `province` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '省',
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '市',
  `area` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '区',
  `province_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '省code',
  `city_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '市code',
  `area_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '区code',
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '详情地址',
  `shopping_city_id` int(11) NOT NULL COMMENT '城市大区id',
  `qrcode_log_id` int(11) DEFAULT NULL COMMENT '二维码批量添加的log id',
  `wechat_mini_program_qrcode` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '微信小程序二维码',
  `lat` decimal(12,8) DEFAULT NULL COMMENT '精度',
  `lng` decimal(12,8) DEFAULT NULL COMMENT '纬度',
  `is_opening` int(11) NOT NULL DEFAULT '0' COMMENT '是否开通 0:没开通1已开通',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `contract_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '店长名称',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=194 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of shopping_shops
-- ----------------------------
BEGIN;
INSERT INTO `shopping_shops` VALUES (5, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 14, 'shopping_mini_program/dev/_v8Z43b5KdLonxqEwagrL.jpg', NULL, NULL, 0, '2020-02-14 13:34:56', '2020-02-14 13:34:56', NULL);
INSERT INTO `shopping_shops` VALUES (6, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 14, 'shopping_mini_program/dev/_er1GjlWQk8Znqpy8gZwP.jpg', NULL, NULL, 0, '2020-02-14 13:34:56', '2020-02-14 13:34:57', NULL);
INSERT INTO `shopping_shops` VALUES (7, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 14, 'shopping_mini_program/dev/_2vGzPQwKdRoklXB1O3by.jpg', NULL, NULL, 0, '2020-02-14 13:34:57', '2020-02-14 13:34:57', NULL);
INSERT INTO `shopping_shops` VALUES (8, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 14, 'shopping_mini_program/dev/_YypPo6AlkJNk0WezvNDx.jpg', NULL, NULL, 0, '2020-02-14 13:34:57', '2020-02-14 13:34:58', NULL);
INSERT INTO `shopping_shops` VALUES (9, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 14, 'shopping_mini_program/dev/_Ow6EPWN2mBZmqMADpo7l.jpg', NULL, NULL, 0, '2020-02-14 13:34:58', '2020-02-14 13:34:58', NULL);
INSERT INTO `shopping_shops` VALUES (10, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 14, 'shopping_mini_program/dev/_ZBgMe0L6mAymEjPYJKAz.jpg', NULL, NULL, 0, '2020-02-14 13:34:58', '2020-02-14 13:34:58', NULL);
INSERT INTO `shopping_shops` VALUES (11, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 15, 'shopping_mini_program/dev/_wV6J2aP8ml9nB5Aqyv3j.jpg', NULL, NULL, 0, '2020-02-14 13:42:50', '2020-02-14 13:42:50', NULL);
INSERT INTO `shopping_shops` VALUES (12, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 16, 'shopping_mini_program/dev/_j79a1YpbnDPnvoVLPAR6.jpg', NULL, NULL, 0, '2020-02-14 14:08:49', '2020-02-14 14:08:50', NULL);
INSERT INTO `shopping_shops` VALUES (13, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 16, 'shopping_mini_program/dev/_OE3WZYo8k92mw6P2NzbD.jpg', NULL, NULL, 0, '2020-02-14 14:08:50', '2020-02-14 14:08:50', NULL);
INSERT INTO `shopping_shops` VALUES (14, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 16, 'shopping_mini_program/dev/_2DwK7vgpn2WdMP4ZBrAj.jpg', NULL, NULL, 0, '2020-02-14 14:08:50', '2020-02-14 14:08:51', NULL);
INSERT INTO `shopping_shops` VALUES (15, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 16, 'shopping_mini_program/dev/_o9G8Abr6nManD04gJLQ3.jpg', NULL, NULL, 0, '2020-02-14 14:08:51', '2020-02-14 14:08:51', NULL);
INSERT INTO `shopping_shops` VALUES (16, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 16, 'shopping_mini_program/dev/_5gK0bBjqmwvkYVW38JPl.jpg', NULL, NULL, 0, '2020-02-14 14:08:51', '2020-02-14 14:08:52', NULL);
INSERT INTO `shopping_shops` VALUES (17, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 16, 'shopping_mini_program/dev/_l6w7DbyEnWMkxXVpQ42B.jpg', NULL, NULL, 0, '2020-02-14 14:08:52', '2020-02-14 14:08:52', NULL);
INSERT INTO `shopping_shops` VALUES (18, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 16, 'shopping_mini_program/dev/_w1o4GjbLnvPk6PagRrEV.jpg', NULL, NULL, 0, '2020-02-14 14:08:52', '2020-02-14 14:08:53', NULL);
INSERT INTO `shopping_shops` VALUES (19, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 16, 'shopping_mini_program/dev/_ZzlP8Nj7k74mGYWRXKpV.jpg', NULL, NULL, 0, '2020-02-14 14:08:53', '2020-02-14 14:08:53', NULL);
INSERT INTO `shopping_shops` VALUES (20, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 16, 'shopping_mini_program/dev/_G3voP8e6nPYdW1AqXVba.jpg', NULL, NULL, 0, '2020-02-14 14:08:53', '2020-02-14 14:08:54', NULL);
INSERT INTO `shopping_shops` VALUES (21, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 16, 'shopping_mini_program/dev/_ZVrjXNq8mrzmKPW7J6ea.jpg', NULL, NULL, 0, '2020-02-14 14:08:54', '2020-02-14 14:08:54', NULL);
INSERT INTO `shopping_shops` VALUES (22, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 16, 'shopping_mini_program/dev/_J7MYzOgGnN2nw0pA56aQ.jpg', NULL, NULL, 0, '2020-02-14 14:08:54', '2020-02-14 14:08:55', NULL);
INSERT INTO `shopping_shops` VALUES (23, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 16, 'shopping_mini_program/dev/_rwg483p6dbqnzEA2WNl9.jpg', NULL, NULL, 0, '2020-02-14 14:08:55', '2020-02-14 14:08:55', NULL);
INSERT INTO `shopping_shops` VALUES (24, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 16, 'shopping_mini_program/dev/_KX2wWDGbdyGmRBQrg7lq.jpg', NULL, NULL, 0, '2020-02-14 14:08:55', '2020-02-14 14:08:56', NULL);
INSERT INTO `shopping_shops` VALUES (25, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 16, 'shopping_mini_program/dev/_0y4QRYvPnoDdxrgOBawG.jpg', NULL, NULL, 0, '2020-02-14 14:08:56', '2020-02-14 14:08:56', NULL);
INSERT INTO `shopping_shops` VALUES (26, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 16, 'shopping_mini_program/dev/_DgjKOzMpnj7d1LaobWvA.jpg', NULL, NULL, 0, '2020-02-14 14:08:56', '2020-02-14 14:08:56', NULL);
INSERT INTO `shopping_shops` VALUES (27, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 16, 'shopping_mini_program/dev/_NZXP6pJbdzYnY2qajl7W.jpg', NULL, NULL, 0, '2020-02-14 14:08:56', '2020-02-14 14:08:57', NULL);
INSERT INTO `shopping_shops` VALUES (28, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 16, 'shopping_mini_program/dev/_P9OYNRWxn4DnKl4JozA2.jpg', NULL, NULL, 0, '2020-02-14 14:08:57', '2020-02-14 14:08:57', NULL);
INSERT INTO `shopping_shops` VALUES (29, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 16, 'shopping_mini_program/dev/_y05wBv4KdxGn9ZqOp6Al.jpg', NULL, NULL, 0, '2020-02-14 14:08:57', '2020-02-14 14:08:58', NULL);
INSERT INTO `shopping_shops` VALUES (30, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 16, 'shopping_mini_program/dev/_rD05y8JomqodOq1PZGBX.jpg', NULL, NULL, 0, '2020-02-14 14:08:58', '2020-02-14 14:08:58', NULL);
INSERT INTO `shopping_shops` VALUES (31, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 16, 'shopping_mini_program/dev/_b3WY1xXVmpPmDKP5o2ZE.jpg', NULL, NULL, 0, '2020-02-14 14:08:58', '2020-02-14 14:08:58', NULL);
INSERT INTO `shopping_shops` VALUES (32, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 16, 'shopping_mini_program/dev/_gDwBarOLdQRkMX0p6GYj.jpg', NULL, NULL, 0, '2020-02-14 14:08:58', '2020-02-14 14:08:59', NULL);
INSERT INTO `shopping_shops` VALUES (33, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 16, 'shopping_mini_program/dev/_6rQLg27MngPdPla9GNVp.jpg', NULL, NULL, 0, '2020-02-14 14:08:59', '2020-02-14 14:08:59', NULL);
INSERT INTO `shopping_shops` VALUES (34, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 16, 'shopping_mini_program/dev/_D3w8Ngl9mEgdOWexGQZV.jpg', NULL, NULL, 0, '2020-02-14 14:08:59', '2020-02-14 14:09:00', NULL);
INSERT INTO `shopping_shops` VALUES (35, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 16, 'shopping_mini_program/dev/_wGW75qxokGWkZg4LJKy1.jpg', NULL, NULL, 1, '2020-02-14 14:09:00', '2020-02-14 14:09:00', NULL);
INSERT INTO `shopping_shops` VALUES (36, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 16, 'shopping_mini_program/dev/_pG2xYrZAmK2kvEbzVJO4.jpg', NULL, NULL, 0, '2020-02-14 14:09:00', '2020-02-14 14:09:01', NULL);
INSERT INTO `shopping_shops` VALUES (37, '跃哥的店', '13889883608', '辽宁省', '沈阳市', '和平区', '210000', '210100', '210102', '三豪杰', 1, 16, 'shopping_mini_program/dev/_vejLrBOamVZmAZEGx0PK.jpg', NULL, NULL, 1, '2020-02-14 14:09:01', '2020-02-14 14:09:01', '疯狂的船长');
INSERT INTO `shopping_shops` VALUES (38, '面包炉', '18242320567', '辽宁省', '沈阳市', '沈河区', '210000', '210100', '210103', '三好街', 3, 16, 'shopping_mini_program/dev/_j03vM74gkXrn8eVz9JZq.jpg', 41.78454200, 123.42271500, 1, '2020-02-14 14:09:01', '2020-02-29 19:49:41', '苦゛咖啡');
INSERT INTO `shopping_shops` VALUES (39, '', '', '', '', '', '', '', '', '', 1, 16, 'shopping_mini_program/dev/_QbEaqwJ3kOenW1YzPoMg.jpg', NULL, NULL, 0, '2020-02-14 14:09:01', '2020-02-21 09:29:02', '');
INSERT INTO `shopping_shops` VALUES (40, '于善春的店', '18642078385', '辽宁省', '沈阳市', '浑南区', '210000', '210100', '210112', '万科明天广场', 3, 16, 'shopping_mini_program/dev/_3DMwpJ6AkZ8nrB1LWOgo.jpg', 123.45325470, 41.71812439, 1, '2020-02-14 14:09:02', '2020-02-20 20:55:03', '鱼罐_头');
INSERT INTO `shopping_shops` VALUES (41, '快家小店', '15502465098', '辽宁省', '沈阳市', '和平区', '210000', '210100', '210102', '同方广场B', 3, 16, 'shopping_mini_program/dev/_02ZYeE14n3gnp5MLD83R.jpg', 41.76089200, 123.42026300, 1, '2020-02-14 14:09:02', '2020-02-27 11:04:13', '少丞');
INSERT INTO `shopping_shops` VALUES (47, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 22, 'shopping_mini_program/dev/_Jrq5byNpnYpomlEOge2w.jpg', NULL, NULL, 0, '2020-02-21 14:01:52', '2020-02-21 14:01:52', NULL);
INSERT INTO `shopping_shops` VALUES (48, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 22, 'shopping_mini_program/dev/_PX7GgNOld13Jm0LZzDKy.jpg', NULL, NULL, 0, '2020-02-21 14:01:52', '2020-02-21 14:01:53', NULL);
INSERT INTO `shopping_shops` VALUES (49, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 23, 'shopping_mini_program/dev/_v8Z43b5KdLGonxqEwagr.jpg', NULL, NULL, 0, '2020-02-24 13:36:39', '2020-02-24 13:36:40', NULL);
INSERT INTO `shopping_shops` VALUES (50, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 24, 'shopping_mini_program/dev/_er1GjlWQk8AZmqpy8gZw.jpg', NULL, NULL, 0, '2020-02-24 13:36:39', '2020-02-24 13:36:40', NULL);
INSERT INTO `shopping_shops` VALUES (51, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 23, 'shopping_mini_program/dev/_2vGzPQwKdR6odlXB1O3b.jpg', NULL, NULL, 0, '2020-02-24 13:36:40', '2020-02-24 13:36:41', NULL);
INSERT INTO `shopping_shops` VALUES (52, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 24, 'shopping_mini_program/dev/_YypPo6AlkJvNk0WezvND.jpg', NULL, NULL, 0, '2020-02-24 13:36:40', '2020-02-24 13:36:41', NULL);
INSERT INTO `shopping_shops` VALUES (53, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 23, 'shopping_mini_program/dev/_Ow6EPWN2mB2ZmqMADpo7.jpg', NULL, NULL, 0, '2020-02-24 13:36:41', '2020-02-24 13:36:41', NULL);
INSERT INTO `shopping_shops` VALUES (54, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 24, 'shopping_mini_program/dev/_ZBgMe0L6mAVynEjPYJKA.jpg', NULL, NULL, 0, '2020-02-24 13:36:41', '2020-02-24 13:36:41', NULL);
INSERT INTO `shopping_shops` VALUES (55, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 23, 'shopping_mini_program/dev/_wV6J2aP8mlv9dB5Aqyv3.jpg', NULL, NULL, 0, '2020-02-24 13:36:41', '2020-02-24 13:36:42', NULL);
INSERT INTO `shopping_shops` VALUES (56, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 24, 'shopping_mini_program/dev/_j79a1YpbnDgPmvoVLPAR.jpg', NULL, NULL, 0, '2020-02-24 13:36:41', '2020-02-24 13:36:42', NULL);
INSERT INTO `shopping_shops` VALUES (57, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 23, 'shopping_mini_program/dev/_OE3WZYo8k982dw6P2Nzb.jpg', NULL, NULL, 0, '2020-02-24 13:36:42', '2020-02-24 13:36:42', NULL);
INSERT INTO `shopping_shops` VALUES (58, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 24, 'shopping_mini_program/dev/_2DwK7vgpn2VWnMP4ZBrA.jpg', NULL, NULL, 0, '2020-02-24 13:36:42', '2020-02-24 13:36:42', NULL);
INSERT INTO `shopping_shops` VALUES (59, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 23, 'shopping_mini_program/dev/_o9G8Abr6nMManD04gJLQ.jpg', NULL, NULL, 0, '2020-02-24 13:36:42', '2020-02-24 13:36:42', NULL);
INSERT INTO `shopping_shops` VALUES (60, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 24, 'shopping_mini_program/dev/_5gK0bBjqmwjvkYVW38JP.jpg', NULL, NULL, 0, '2020-02-24 13:36:42', '2020-02-24 13:36:42', NULL);
INSERT INTO `shopping_shops` VALUES (61, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 23, 'shopping_mini_program/dev/_l6w7DbyEnW6MmxXVpQ42.jpg', NULL, NULL, 0, '2020-02-24 13:36:42', '2020-02-24 13:36:43', NULL);
INSERT INTO `shopping_shops` VALUES (62, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 24, 'shopping_mini_program/dev/_w1o4GjbLnvbPn6PagRrE.jpg', NULL, NULL, 0, '2020-02-24 13:36:42', '2020-02-24 13:36:43', NULL);
INSERT INTO `shopping_shops` VALUES (63, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 23, 'shopping_mini_program/dev/_ZzlP8Nj7k734kGYWRXKp.jpg', NULL, NULL, 0, '2020-02-24 13:36:43', '2020-02-24 13:36:43', NULL);
INSERT INTO `shopping_shops` VALUES (64, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 24, 'shopping_mini_program/dev/_G3voP8e6nP4YnW1AqXVb.jpg', NULL, NULL, 0, '2020-02-24 13:36:43', '2020-02-24 13:36:43', NULL);
INSERT INTO `shopping_shops` VALUES (65, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 23, 'shopping_mini_program/dev/_ZVrjXNq8mr7znKPW7J6e.jpg', NULL, NULL, 0, '2020-02-24 13:36:43', '2020-02-24 13:36:43', NULL);
INSERT INTO `shopping_shops` VALUES (66, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 24, 'shopping_mini_program/dev/_J7MYzOgGnNg2dw0pA56a.jpg', NULL, NULL, 0, '2020-02-24 13:36:43', '2020-02-24 13:36:44', NULL);
INSERT INTO `shopping_shops` VALUES (67, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 23, 'shopping_mini_program/dev/_rwg483p6dbYqnzEA2WNl.jpg', NULL, NULL, 0, '2020-02-24 13:36:43', '2020-02-24 13:36:44', NULL);
INSERT INTO `shopping_shops` VALUES (68, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 24, 'shopping_mini_program/dev/_KX2wWDGbdyRGkRBQrg7l.jpg', NULL, NULL, 0, '2020-02-24 13:36:44', '2020-02-24 13:36:44', NULL);
INSERT INTO `shopping_shops` VALUES (71, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 25, 'shopping_mini_program/dev/_NZXP6pJbdzDYmY2qajl7.jpg', NULL, NULL, 0, '2020-02-25 09:42:54', '2020-02-25 09:42:55', NULL);
INSERT INTO `shopping_shops` VALUES (72, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 25, 'shopping_mini_program/dev/_P9OYNRWxn4ZDkKl4JozA.jpg', NULL, NULL, 0, '2020-02-25 09:42:55', '2020-02-25 09:42:55', NULL);
INSERT INTO `shopping_shops` VALUES (73, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 25, 'shopping_mini_program/dev/_y05wBv4KdxXGd9ZqOp6A.jpg', NULL, NULL, 0, '2020-02-25 09:42:55', '2020-02-25 09:42:55', NULL);
INSERT INTO `shopping_shops` VALUES (74, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 25, 'shopping_mini_program/dev/_rD05y8Jomq4okOq1PZGB.jpg', NULL, NULL, 0, '2020-02-25 09:42:55', '2020-02-25 09:42:56', NULL);
INSERT INTO `shopping_shops` VALUES (75, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 25, 'shopping_mini_program/dev/_b3WY1xXVmp0PmDKP5o2Z.jpg', NULL, NULL, 0, '2020-02-25 09:42:56', '2020-02-25 09:42:56', NULL);
INSERT INTO `shopping_shops` VALUES (76, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 25, 'shopping_mini_program/dev/_gDwBarOLdQoRmMX0p6GY.jpg', NULL, NULL, 0, '2020-02-25 09:42:56', '2020-02-25 09:42:57', NULL);
INSERT INTO `shopping_shops` VALUES (77, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 25, 'shopping_mini_program/dev/_6rQLg27MngJPmPla9GNV.jpg', NULL, NULL, 0, '2020-02-25 09:42:57', '2020-02-25 09:42:57', NULL);
INSERT INTO `shopping_shops` VALUES (78, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 25, 'shopping_mini_program/dev/_D3w8Ngl9mEvgnOWexGQZ.jpg', NULL, NULL, 0, '2020-02-25 09:42:57', '2020-02-25 09:42:58', NULL);
INSERT INTO `shopping_shops` VALUES (79, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 26, 'shopping_mini_program/dev/_wGW75qxokGVWdZg4LJKy.jpg', NULL, NULL, 0, '2020-02-26 14:39:16', '2020-02-26 14:39:17', NULL);
INSERT INTO `shopping_shops` VALUES (80, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 27, 'shopping_mini_program/dev/_pG2xYrZAmKN2kvEbzVJO.jpg', NULL, NULL, 0, '2020-02-27 10:08:58', '2020-02-27 10:08:59', NULL);
INSERT INTO `shopping_shops` VALUES (81, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 28, 'shopping_mini_program/dev/_vejLrBOamVRZmAZEGx0P.jpg', NULL, NULL, 0, '2020-02-28 10:24:16', '2020-02-28 10:24:17', NULL);
INSERT INTO `shopping_shops` VALUES (82, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 28, 'shopping_mini_program/dev/_j03vM74gkX6rn8eVz9JZ.jpg', NULL, NULL, 0, '2020-02-28 10:24:17', '2020-02-28 10:24:17', NULL);
INSERT INTO `shopping_shops` VALUES (83, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 29, 'shopping_mini_program/dev/_QbEaqwJ3kOWekW1YzPoM.jpg', NULL, NULL, 0, '2020-02-28 10:24:27', '2020-02-28 10:24:27', NULL);
INSERT INTO `shopping_shops` VALUES (84, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 29, 'shopping_mini_program/dev/_3DMwpJ6AkZg8mrB1LWOg.jpg', NULL, NULL, 0, '2020-02-28 10:24:27', '2020-02-28 10:24:28', NULL);
INSERT INTO `shopping_shops` VALUES (85, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 29, 'shopping_mini_program/dev/_02ZYeE14n3Vgmp5MLD83.jpg', NULL, NULL, 0, '2020-02-28 10:24:28', '2020-02-28 10:24:28', NULL);
INSERT INTO `shopping_shops` VALUES (86, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 29, 'shopping_mini_program/dev/_z1NqRDeWn6VbnAXgMQOY.jpg', NULL, NULL, 0, '2020-02-28 10:24:28', '2020-02-28 10:24:29', NULL);
INSERT INTO `shopping_shops` VALUES (87, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 29, 'shopping_mini_program/dev/_GKrDN5qAn5aPnlbX293g.jpg', NULL, NULL, 0, '2020-02-28 10:24:29', '2020-02-28 10:24:29', NULL);
INSERT INTO `shopping_shops` VALUES (88, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 29, 'shopping_mini_program/dev/_NA89Rr41n0NjkBEVe6aj.jpg', NULL, NULL, 0, '2020-02-28 10:24:29', '2020-02-28 10:24:29', NULL);
INSERT INTO `shopping_shops` VALUES (89, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 29, 'shopping_mini_program/dev/_7KqOrgPxkeO6nw8902J5.jpg', NULL, NULL, 0, '2020-02-28 10:24:29', '2020-02-28 10:24:30', NULL);
INSERT INTO `shopping_shops` VALUES (90, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 29, 'shopping_mini_program/dev/_ge6YpWGwma55mLjABDO5.jpg', NULL, NULL, 0, '2020-02-28 10:24:30', '2020-02-28 10:24:30', NULL);
INSERT INTO `shopping_shops` VALUES (91, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 29, 'shopping_mini_program/dev/_Jrq5byNpnYXomlEOge2w.jpg', NULL, NULL, 0, '2020-02-28 10:24:30', '2020-02-28 10:24:31', NULL);
INSERT INTO `shopping_shops` VALUES (92, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 29, 'shopping_mini_program/dev/_PX7GgNOld1wJm0LZzDKy.jpg', NULL, NULL, 0, '2020-02-28 10:24:31', '2020-02-28 10:24:31', NULL);
INSERT INTO `shopping_shops` VALUES (93, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 30, 'shopping_mini_program/dev/_v8Z43b5KdLgonxqEwagr.jpg', NULL, NULL, 0, '2020-02-28 10:26:08', '2020-02-28 10:26:08', NULL);
INSERT INTO `shopping_shops` VALUES (94, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 31, 'shopping_mini_program/dev/_er1GjlWQk8gZdqpy8gZw.jpg', NULL, NULL, 0, '2020-02-28 10:29:23', '2020-02-28 10:29:24', NULL);
INSERT INTO `shopping_shops` VALUES (95, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 31, 'shopping_mini_program/dev/_2vGzPQwKdR3oklXB1O3b.jpg', NULL, NULL, 0, '2020-02-28 10:29:24', '2020-02-28 10:29:24', NULL);
INSERT INTO `shopping_shops` VALUES (96, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 31, 'shopping_mini_program/dev/_YypPo6AlkJENd0WezvND.jpg', NULL, NULL, 0, '2020-02-28 10:29:24', '2020-02-28 10:29:25', NULL);
INSERT INTO `shopping_shops` VALUES (97, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 32, 'shopping_mini_program/dev/_Ow6EPWN2mBvZmqMADpo7.jpg', NULL, NULL, 0, '2020-02-28 10:57:45', '2020-02-28 10:57:46', NULL);
INSERT INTO `shopping_shops` VALUES (98, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 33, 'shopping_mini_program/dev/_shopId:ZBgMe0L6mAWydEjPYJKA.jpg', NULL, NULL, 0, '2020-02-28 10:59:33', '2020-02-28 10:59:33', NULL);
INSERT INTO `shopping_shops` VALUES (99, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 34, 'shopping_mini_program/dev/_shopId:wV6J2aP8ml89mB5Aqyv3.jpg', NULL, NULL, 0, '2020-02-28 11:00:29', '2020-02-28 11:00:30', NULL);
INSERT INTO `shopping_shops` VALUES (101, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 35, 'shopping_mini_program/dev/_shopId:7KqOrgPxkeOAnw8902J5.jpg', NULL, NULL, 0, '2020-02-28 11:02:51', '2020-02-28 11:02:52', NULL);
INSERT INTO `shopping_shops` VALUES (102, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 35, 'shopping_mini_program/dev/_shopId:ge6YpWGwma5YmLjABDO5.jpg', NULL, NULL, 0, '2020-02-28 11:02:52', '2020-02-28 11:02:52', NULL);
INSERT INTO `shopping_shops` VALUES (103, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 35, 'shopping_mini_program/dev/_shopId:Jrq5byNpnYX2mlEOge2w.jpg', NULL, NULL, 0, '2020-02-28 11:02:52', '2020-02-28 11:02:52', NULL);
INSERT INTO `shopping_shops` VALUES (104, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 35, 'shopping_mini_program/dev/_shopId:PX7GgNOld1wXm0LZzDKy.jpg', NULL, NULL, 0, '2020-02-28 11:02:52', '2020-02-28 11:02:53', NULL);
INSERT INTO `shopping_shops` VALUES (105, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 35, 'shopping_mini_program/dev/_shopId:v8Z43b5KdLg1nxqEwagr.jpg', NULL, NULL, 0, '2020-02-28 11:02:53', '2020-02-28 11:02:53', NULL);
INSERT INTO `shopping_shops` VALUES (106, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 35, 'shopping_mini_program/dev/_shopId:er1GjlWQk8gKdqpy8gZw.jpg', NULL, NULL, 0, '2020-02-28 11:02:53', '2020-02-28 11:02:53', NULL);
INSERT INTO `shopping_shops` VALUES (107, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 35, 'shopping_mini_program/dev/_shopId:2vGzPQwKdR3OklXB1O3b.jpg', NULL, NULL, 0, '2020-02-28 11:02:53', '2020-02-28 11:02:54', NULL);
INSERT INTO `shopping_shops` VALUES (108, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 35, 'shopping_mini_program/dev/_shopId:YypPo6AlkJEWd0WezvND.jpg', NULL, NULL, 0, '2020-02-28 11:02:54', '2020-02-28 11:02:54', NULL);
INSERT INTO `shopping_shops` VALUES (111, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 37, 'shopping_mini_program/dev/_shopId:wV6J2aP8ml8OmB5Aqyv3.jpg', NULL, NULL, 0, '2020-02-28 13:08:14', '2020-02-28 13:08:15', NULL);
INSERT INTO `shopping_shops` VALUES (112, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 37, 'shopping_mini_program/dev/_shopId:j79a1YpbnDEqdvoVLPAR.jpg', NULL, NULL, 0, '2020-02-28 13:08:15', '2020-02-28 13:08:15', NULL);
INSERT INTO `shopping_shops` VALUES (113, '绿城三期西门京东便利店95', '15566011177', '辽宁省', '沈阳市', '浑南区', '210000', '210100', '210112', '全运五路11#3门', 1, 37, 'shopping_mini_program/dev/_shopId:OE3WZYo8k9wJnw6P2Nzb.jpg', 41.67768600, 123.47427400, 1, '2020-02-28 13:08:15', '2020-03-01 12:28:05', 'A京东超市绿城店15566011177');
INSERT INTO `shopping_shops` VALUES (114, '众家乐超市', '15940033089', '辽宁省', '沈阳市', '铁西区', '210000', '210100', '210106', '绣工东街号', 1, 37, 'shopping_mini_program/dev/_shopId:2DwK7vgpn2BMnMP4ZBrA.jpg', 41.79643300, 123.35206900, 1, '2020-02-28 13:08:16', '2020-03-01 11:58:01', 'Cui🌸京玉');
INSERT INTO `shopping_shops` VALUES (115, '佐客281', '13897933016', '辽宁省', '沈阳市', '浑南区', '210000', '210100', '210112', '全运五路102-17号2门', 1, 37, 'shopping_mini_program/dev/_shopId:o9G8Abr6nMWDkD04gJLQ.jpg', 41.67813492, 123.47420502, 1, '2020-02-28 13:08:16', '2020-03-01 16:32:01', 'A佐客超市西门⁶⁷⁷⁸¹⁸⁸¹');
INSERT INTO `shopping_shops` VALUES (116, '双双福便利二部', '15840091856', '辽宁省', '沈阳市', '铁西区', '210000', '210100', '210106', '霁虹街4号1门', 1, 37, 'shopping_mini_program/dev/_shopId:5gK0bBjqmw45nYVW38JP.jpg', 41.80131300, 123.39164600, 1, '2020-02-28 13:08:17', '2020-03-01 15:06:58', '姜文明');
INSERT INTO `shopping_shops` VALUES (117, '佐客901', '13840363880', '辽宁省', '沈阳市', '铁西区', '210000', '210100', '210106', '云峰北街33号9门晶座西门佐客', 1, 37, 'shopping_mini_program/dev/_shopId:l6w7DbyEnWrymxXVpQ42.jpg', 41.79254900, 123.37347500, 1, '2020-02-28 13:08:17', '2020-03-01 14:45:03', '豆芽私厨');
INSERT INTO `shopping_shops` VALUES (118, '联合一百', '13709857533', '辽宁省', '沈阳市', '铁西区', '210000', '210100', '210106', '沈阳市铁西区兴华街小北二路19－2（1门）', 1, 37, 'shopping_mini_program/dev/_shopId:w1o4GjbLnvz0n6PagRrE.jpg', 41.80119000, 123.37318300, 1, '2020-02-28 13:08:30', '2020-03-01 14:21:51', '幸福久久');
INSERT INTO `shopping_shops` VALUES (119, '金园佳超市', '13840427780', '辽宁省', '沈阳市', '和平区', '210000', '210100', '210102', '贵和街6-2号2门', 1, 37, 'shopping_mini_program/dev/_shopId:ZzlP8Nj7k7ZodGYWRXKp.jpg', 41.79479000, 123.36378800, 1, '2020-02-28 13:08:30', '2020-03-01 14:03:23', '金园佳艳子');
INSERT INTO `shopping_shops` VALUES (120, '美添乐生活超市', '17741370490', '辽宁省', '沈阳市', '铁西区', '210000', '210100', '210106', '贵和街9-2', 1, 37, 'shopping_mini_program/dev/_shopId:G3voP8e6nPb8kW1AqXVb.jpg', 41.79709500, 123.36304300, 1, '2020-02-28 13:08:31', '2020-03-01 13:49:42', '美添乐生活超市');
INSERT INTO `shopping_shops` VALUES (121, '喜多多', '13252895587', '辽宁省', '沈阳市', '铁西区', '210000', '210100', '210106', '贵和街万科金域国际东门喜多多', 1, 37, 'shopping_mini_program/dev/_shopId:ZVrjXNq8mrRpmKPW7J6e.jpg', 41.79377600, 123.36314400, 1, '2020-02-28 13:08:31', '2020-03-01 13:37:30', '😊');
INSERT INTO `shopping_shops` VALUES (122, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 37, 'shopping_mini_program/dev/_shopId:J7MYzOgGnNvJnw0pA56a.jpg', NULL, NULL, 0, '2020-02-28 13:08:31', '2020-02-28 13:08:32', NULL);
INSERT INTO `shopping_shops` VALUES (123, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 37, 'shopping_mini_program/dev/_shopId:rwg483p6dbrBdzEA2WNl.jpg', NULL, NULL, 0, '2020-02-28 13:08:32', '2020-02-28 13:08:32', NULL);
INSERT INTO `shopping_shops` VALUES (124, '蚂蚁联盟超市', '13614031167', '辽宁省', '沈阳市', '铁西区', '210000', '210100', '210106', '北三中路24号4门', 1, 37, 'shopping_mini_program/dev/_shopId:KX2wWDGbdyDynRBQrg7l.jpg', 41.80842700, 123.35050600, 1, '2020-02-28 13:08:32', '2020-03-01 12:55:54', 'A蚂蚁联盟超市菜鸟驿站13614031167');
INSERT INTO `shopping_shops` VALUES (125, '雪莱超市', '13125406175', '辽宁省', '沈阳市', '铁西区', '210000', '210100', '210106', '保工北街18号二门', 1, 37, 'shopping_mini_program/dev/_shopId:0y4QRYvPno3ZnxrgOBaw.jpg', 41.81148911, 123.36019897, 1, '2020-02-28 13:08:33', '2020-03-01 12:26:56', '乔');
INSERT INTO `shopping_shops` VALUES (126, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 37, 'shopping_mini_program/dev/_shopId:DgjKOzMpnj1em1LaobWv.jpg', NULL, NULL, 0, '2020-02-28 13:08:33', '2020-02-28 13:08:34', NULL);
INSERT INTO `shopping_shops` VALUES (127, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 37, 'shopping_mini_program/dev/_shopId:NZXP6pJbdzKLkY2qajl7.jpg', NULL, NULL, 0, '2020-02-28 13:08:34', '2020-02-28 13:08:34', NULL);
INSERT INTO `shopping_shops` VALUES (128, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 37, 'shopping_mini_program/dev/_shopId:P9OYNRWxn4eJdKl4JozA.jpg', NULL, NULL, 0, '2020-02-28 13:08:34', '2020-02-28 13:08:34', NULL);
INSERT INTO `shopping_shops` VALUES (129, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 37, 'shopping_mini_program/dev/_shopId:y05wBv4KdxJPm9ZqOp6A.jpg', NULL, NULL, 0, '2020-02-28 13:08:34', '2020-02-28 13:08:35', NULL);
INSERT INTO `shopping_shops` VALUES (130, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 37, 'shopping_mini_program/dev/_shopId:rD05y8JomqYZmOq1PZGB.jpg', NULL, NULL, 0, '2020-02-28 13:08:35', '2020-02-28 13:08:35', NULL);
INSERT INTO `shopping_shops` VALUES (132, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 41, 'shopping_mini_program/dev/_shopId:gDwBarOLdQXZnMX0p6GY.jpg', NULL, NULL, 0, '2020-02-28 15:52:03', '2020-02-28 15:52:04', NULL);
INSERT INTO `shopping_shops` VALUES (133, '七七', '18004105093', '辽宁省', '沈阳市', '和平区', '210000', '210100', '210102', '123', 3, 42, 'shopping_mini_program/dev/_shopId:6rQLg27MngzJmPla9GNV.jpg', 41.74740982, 123.50466156, 1, '2020-02-28 19:56:46', '2020-02-28 21:42:36', '七七😷');
INSERT INTO `shopping_shops` VALUES (134, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL);
INSERT INTO `shopping_shops` VALUES (136, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL);
INSERT INTO `shopping_shops` VALUES (137, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 44, 'shopping_mini_program/dev/_shopId:vejLrBOamVNAmAZEGx0P.jpg', NULL, NULL, 0, '2020-02-29 10:12:13', '2020-02-29 10:12:14', NULL);
INSERT INTO `shopping_shops` VALUES (138, '程志の店', '18840847893', '辽宁省', '沈阳市', '和平区', '210000', '210100', '210102', '三好街同方广场B座', 3, 45, 'shopping_mini_program/dev/_shopId:j03vM74gkXNWn8eVz9JZ.jpg', 41.78486000, 123.43448000, 1, '2020-02-29 14:22:52', '2020-02-29 14:24:44', '程澄橙');
INSERT INTO `shopping_shops` VALUES (139, '积水裕沁听月轩西门保安室', '13816243434', '辽宁省', '沈阳市', '浑南区', '210000', '210100', '210112', '全运五路105号', 1, 46, 'shopping_mini_program/dev/_shopId:QbEaqwJ3kON4dW1YzPoM.jpg', 41.67273800, 123.47150200, 1, '2020-02-29 16:32:51', '2020-02-29 16:36:16', 'Wayland 张卓');
INSERT INTO `shopping_shops` VALUES (141, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 48, 'shopping_mini_program/dev/_shopId:02ZYeE14n33Lnp5MLD83.jpg', NULL, NULL, 0, '2020-03-01 12:08:09', '2020-03-01 12:08:10', NULL);
INSERT INTO `shopping_shops` VALUES (142, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 48, 'shopping_mini_program/dev/_shopId:z1NqRDeWn6g8dAXgMQOY.jpg', NULL, NULL, 0, '2020-03-01 12:08:10', '2020-03-01 12:08:10', NULL);
INSERT INTO `shopping_shops` VALUES (143, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 48, 'shopping_mini_program/dev/_shopId:GKrDN5qAn5ZqdlbX293g.jpg', NULL, NULL, 0, '2020-03-01 12:08:10', '2020-03-01 12:08:11', NULL);
INSERT INTO `shopping_shops` VALUES (144, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 48, 'shopping_mini_program/dev/_shopId:NA89Rr41n0VMkBEVe6aj.jpg', NULL, NULL, 0, '2020-03-01 12:08:11', '2020-03-01 12:08:11', NULL);
INSERT INTO `shopping_shops` VALUES (145, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 48, 'shopping_mini_program/dev/_shopId:7KqOrgPxke8Adw8902J5.jpg', NULL, NULL, 0, '2020-03-01 12:08:11', '2020-03-01 12:08:12', NULL);
INSERT INTO `shopping_shops` VALUES (146, '老王便利店1', '13333333333', '辽宁省', '沈阳市', '沈河区', '210000', '210100', '210103', '214号', 1, 49, 'shopping_mini_program/dev/_shopId:ge6YpWGwmaaYmLjABDO5.jpg', 35.34810000, 139.51615500, 0, '2020-03-02 11:49:11', '2020-03-06 14:13:14', '隔壁老王');
INSERT INTO `shopping_shops` VALUES (147, '辛德瑞拉', '15002418645', '辽宁省', '沈阳市', '和平区', '210000', '210100', '210102', '沈阳市和平区三好街同方广场B座1306', 1, 50, 'shopping_mini_program/dev/_shopId:Jrq5byNpnYo2klEOge2w.jpg', 41.76092911, 123.42054749, 1, '2020-03-02 14:01:28', '2020-03-02 14:03:14', '辛德瑞拉');
INSERT INTO `shopping_shops` VALUES (148, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 51, 'shopping_mini_program/dev/_shopId:PX7GgNOld1VXk0LZzDKy.jpg', NULL, NULL, 0, '2020-03-02 14:13:04', '2020-03-02 14:13:05', NULL);
INSERT INTO `shopping_shops` VALUES (149, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 51, 'shopping_mini_program/dev/_shopId:v8Z43b5KdLy1kxqEwagr.jpg', NULL, NULL, 0, '2020-03-02 14:13:05', '2020-03-02 14:13:06', NULL);
INSERT INTO `shopping_shops` VALUES (150, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 51, 'shopping_mini_program/dev/_shopId:er1GjlWQk80Kkqpy8gZw.jpg', NULL, NULL, 0, '2020-03-02 14:13:06', '2020-03-02 14:13:06', NULL);
INSERT INTO `shopping_shops` VALUES (151, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 51, 'shopping_mini_program/dev/_shopId:2vGzPQwKdRVOdlXB1O3b.jpg', NULL, NULL, 0, '2020-03-02 14:13:06', '2020-03-02 14:13:06', NULL);
INSERT INTO `shopping_shops` VALUES (152, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 51, 'shopping_mini_program/dev/_shopId:YypPo6AlkJXWn0WezvND.jpg', NULL, NULL, 0, '2020-03-02 14:13:06', '2020-03-02 14:13:07', NULL);
INSERT INTO `shopping_shops` VALUES (153, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 51, 'shopping_mini_program/dev/_shopId:Ow6EPWN2mBX0dqMADpo7.jpg', NULL, NULL, 0, '2020-03-02 14:13:07', '2020-03-02 14:13:07', NULL);
INSERT INTO `shopping_shops` VALUES (154, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 51, 'shopping_mini_program/dev/_shopId:ZBgMe0L6mA75dEjPYJKA.jpg', NULL, NULL, 0, '2020-03-02 14:13:07', '2020-03-02 14:13:08', NULL);
INSERT INTO `shopping_shops` VALUES (155, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 51, 'shopping_mini_program/dev/_shopId:wV6J2aP8ml5OnB5Aqyv3.jpg', NULL, NULL, 0, '2020-03-02 14:13:08', '2020-03-02 14:13:08', NULL);
INSERT INTO `shopping_shops` VALUES (156, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 51, 'shopping_mini_program/dev/_shopId:j79a1YpbnDDqnvoVLPAR.jpg', NULL, NULL, 0, '2020-03-02 14:13:08', '2020-03-02 14:13:09', NULL);
INSERT INTO `shopping_shops` VALUES (158, '吴琳', '15040343940', '辽宁省', '沈阳市', '于洪区', '210000', '210100', '210114', '城湖街道阳光100芒果城C3-4-21-2', 3, 52, 'shopping_mini_program/dev/_shopId:2DwK7vgpn2gMdMP4ZBrA.jpg', 41.76089700, 123.42030000, 1, '2020-03-02 14:13:31', '2020-03-19 13:33:57', '吴琳');
INSERT INTO `shopping_shops` VALUES (159, 'qiqiqi', '18977778888', '辽宁省', '沈阳市', '和平区', '210000', '210100', '210102', '123', 3, 52, 'shopping_mini_program/dev/_shopId:o9G8Abr6nMyDnD04gJLQ.jpg', 41.78978000, 123.42056000, 1, '2020-03-02 14:13:32', '2020-03-09 15:50:34', '七七1😷');
INSERT INTO `shopping_shops` VALUES (160, '宋健', '18802464247', '辽宁省', '抚顺市', '清原满族自治县', '210000', '210400', '210423', '6666666666666666', 3, 53, 'shopping_mini_program/dev/_shopId:5gK0bBjqmwL5nYVW38JP.jpg', 41.78978000, 123.42056000, 1, '2020-03-04 10:41:03', '2020-03-18 14:21:57', '大月亮');
INSERT INTO `shopping_shops` VALUES (161, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 54, 'shopping_mini_program/dev/_shopId:l6w7DbyEnWbymxXVpQ42.jpg', NULL, NULL, 0, '2020-03-06 15:54:41', '2020-03-06 15:54:42', NULL);
INSERT INTO `shopping_shops` VALUES (162, '又绿江南岸', '18802459969', '辽宁省', '沈阳市', '于洪区', '210000', '210100', '210114', '于洪广场', 3, 55, 'shopping_mini_program/dev/_shopId:w1o4GjbLnvJ0n6PagRrE.jpg', 41.76067600, 123.42018100, 1, '2020-03-09 10:57:08', '2020-03-09 10:58:36', '又绿江南岸');
INSERT INTO `shopping_shops` VALUES (163, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 55, 'shopping_mini_program/dev/_shopId:ZzlP8Nj7k71onGYWRXKp.jpg', NULL, NULL, 0, '2020-03-09 10:57:10', '2020-03-09 10:57:10', NULL);
INSERT INTO `shopping_shops` VALUES (164, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 55, 'shopping_mini_program/dev/_shopId:G3voP8e6nP38mW1AqXVb.jpg', NULL, NULL, 0, '2020-03-09 10:57:10', '2020-03-09 10:57:11', NULL);
INSERT INTO `shopping_shops` VALUES (165, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 55, 'shopping_mini_program/dev/_shopId:ZVrjXNq8mr1pkKPW7J6e.jpg', NULL, NULL, 0, '2020-03-09 10:57:11', '2020-03-09 10:57:11', NULL);
INSERT INTO `shopping_shops` VALUES (166, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 55, 'shopping_mini_program/dev/_shopId:J7MYzOgGnNjJnw0pA56a.jpg', NULL, NULL, 0, '2020-03-09 10:57:11', '2020-03-09 10:57:12', NULL);
INSERT INTO `shopping_shops` VALUES (167, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 55, 'shopping_mini_program/dev/_shopId:rwg483p6dbbBdzEA2WNl.jpg', NULL, NULL, 0, '2020-03-09 10:57:12', '2020-03-09 10:57:13', NULL);
INSERT INTO `shopping_shops` VALUES (168, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 55, 'shopping_mini_program/dev/_shopId:KX2wWDGbdyjykRBQrg7l.jpg', NULL, NULL, 0, '2020-03-09 10:57:13', '2020-03-09 10:57:13', NULL);
INSERT INTO `shopping_shops` VALUES (169, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 55, 'shopping_mini_program/dev/_shopId:0y4QRYvPnoeZkxrgOBaw.jpg', NULL, NULL, 0, '2020-03-09 10:57:13', '2020-03-09 10:57:14', NULL);
INSERT INTO `shopping_shops` VALUES (170, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 55, 'shopping_mini_program/dev/_shopId:DgjKOzMpnjwed1LaobWv.jpg', NULL, NULL, 0, '2020-03-09 10:57:14', '2020-03-09 10:57:14', NULL);
INSERT INTO `shopping_shops` VALUES (171, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 55, 'shopping_mini_program/dev/_shopId:NZXP6pJbdzrLdY2qajl7.jpg', NULL, NULL, 0, '2020-03-09 10:57:14', '2020-03-09 11:35:41', NULL);
INSERT INTO `shopping_shops` VALUES (172, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 56, 'shopping_mini_program/dev-v2/_shopId:P9OYNRWxn4GJmKl4JozA.jpg', NULL, NULL, 0, '2020-03-10 10:34:38', '2020-03-10 10:34:38', NULL);
INSERT INTO `shopping_shops` VALUES (173, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 56, 'shopping_mini_program/dev-v2/_shopId:y05wBv4Kdx8Pd9ZqOp6A.jpg', NULL, NULL, 0, '2020-03-10 10:34:38', '2020-03-10 10:34:39', NULL);
INSERT INTO `shopping_shops` VALUES (174, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 56, 'shopping_mini_program/dev-v2/_shopId:rD05y8Jomq7ZdOq1PZGB.jpg', NULL, NULL, 0, '2020-03-10 10:34:39', '2020-03-10 10:34:39', NULL);
INSERT INTO `shopping_shops` VALUES (175, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 56, 'shopping_mini_program/dev-v2/_shopId:b3WY1xXVmpaBnDKP5o2Z.jpg', NULL, NULL, 0, '2020-03-10 10:34:39', '2020-03-10 10:34:40', NULL);
INSERT INTO `shopping_shops` VALUES (176, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 56, 'shopping_mini_program/dev-v2/_shopId:gDwBarOLdQyZdMX0p6GY.jpg', NULL, NULL, 0, '2020-03-10 10:34:40', '2020-03-10 10:34:40', NULL);
INSERT INTO `shopping_shops` VALUES (177, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 56, 'shopping_mini_program/dev-v2/_shopId:6rQLg27MngyJkPla9GNV.jpg', NULL, NULL, 0, '2020-03-10 10:34:40', '2020-03-10 10:34:41', NULL);
INSERT INTO `shopping_shops` VALUES (178, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 56, 'shopping_mini_program/dev-v2/_shopId:D3w8Ngl9mEy9mOWexGQZ.jpg', NULL, NULL, 0, '2020-03-10 10:34:41', '2020-03-10 10:34:41', NULL);
INSERT INTO `shopping_shops` VALUES (179, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 56, 'shopping_mini_program/dev-v2/_shopId:wGW75qxokGPMmZg4LJKy.jpg', NULL, NULL, 0, '2020-03-10 10:34:41', '2020-03-10 10:34:41', NULL);
INSERT INTO `shopping_shops` VALUES (180, '180', '18977778888', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 56, 'shopping_mini_program/dev-v2/_shopId:pG2xYrZAmKXXnvEbzVJO.jpg', NULL, NULL, 1, '2020-03-10 10:34:41', '2020-03-10 13:25:54', NULL);
INSERT INTO `shopping_shops` VALUES (181, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 56, 'shopping_mini_program/dev-v2/_shopId:vejLrBOamVWAnAZEGx0P.jpg', NULL, NULL, 1, '2020-03-10 10:34:42', '2020-03-10 11:29:06', NULL);
INSERT INTO `shopping_shops` VALUES (182, '小雨快家', '15942075450', '辽宁省', '沈阳市', '沈河区', '210000', '210100', '210103', '同方', 3, 57, 'shopping_mini_program/dev-v2/_shopId:j03vM74gkXBWn8eVz9JZ.jpg', 41.76086800, 123.42058000, 1, '2020-03-10 11:42:52', '2020-03-10 11:44:07', 'PENG先森');
INSERT INTO `shopping_shops` VALUES (183, '帮帮易购', '18802459969', '辽宁省', '沈阳市', '和平区', '210000', '210100', '210102', '哈哈', 3, 58, 'shopping_mini_program/dev-v2/_shopId:QbEaqwJ3kO34kW1YzPoM.jpg', 41.76076500, 123.42055700, 1, '2020-03-12 14:04:13', '2020-03-12 14:11:47', '又绿江南岸');
INSERT INTO `shopping_shops` VALUES (184, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 58, 'shopping_mini_program/dev-v2/_shopId:3DMwpJ6AkZEVdrB1LWOg.jpg', NULL, NULL, 0, '2020-03-12 14:04:14', '2020-03-12 14:04:15', NULL);
INSERT INTO `shopping_shops` VALUES (185, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 58, 'shopping_mini_program/dev-v2/_shopId:02ZYeE14n3XLdp5MLD83.jpg', NULL, NULL, 0, '2020-03-12 14:04:15', '2020-03-12 14:04:15', NULL);
INSERT INTO `shopping_shops` VALUES (186, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 58, 'shopping_mini_program/dev-v2/_shopId:z1NqRDeWn6p8kAXgMQOY.jpg', NULL, NULL, 0, '2020-03-12 14:04:15', '2020-03-12 14:04:16', NULL);
INSERT INTO `shopping_shops` VALUES (187, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 58, 'shopping_mini_program/dev-v2/_shopId:GKrDN5qAn55qnlbX293g.jpg', NULL, NULL, 0, '2020-03-12 14:04:16', '2020-03-12 14:04:16', NULL);
INSERT INTO `shopping_shops` VALUES (188, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 58, 'shopping_mini_program/dev-v2/_shopId:NA89Rr41n0EMdBEVe6aj.jpg', NULL, NULL, 0, '2020-03-12 14:04:16', '2020-03-12 14:04:17', NULL);
INSERT INTO `shopping_shops` VALUES (189, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 58, 'shopping_mini_program/dev-v2/_shopId:7KqOrgPxkewAnw8902J5.jpg', NULL, NULL, 0, '2020-03-12 14:04:17', '2020-03-12 14:04:17', NULL);
INSERT INTO `shopping_shops` VALUES (190, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 58, 'shopping_mini_program/dev-v2/_shopId:ge6YpWGwmarYnLjABDO5.jpg', NULL, NULL, 0, '2020-03-12 14:04:17', '2020-03-12 14:04:18', NULL);
INSERT INTO `shopping_shops` VALUES (191, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 58, 'shopping_mini_program/dev-v2/_shopId:Jrq5byNpnYP2mlEOge2w.jpg', NULL, NULL, 0, '2020-03-12 14:04:18', '2020-03-12 14:04:18', NULL);
INSERT INTO `shopping_shops` VALUES (192, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 58, 'shopping_mini_program/dev-v2/_shopId:PX7GgNOld1JXk0LZzDKy.jpg', NULL, NULL, 0, '2020-03-12 14:04:18', '2020-03-12 14:04:19', NULL);
INSERT INTO `shopping_shops` VALUES (193, '同方广场测试', '18642030809', '辽宁省', '沈阳市', '和平区', '210000', '210100', '210102', '21-2', 4, 59, 'shopping_mini_program/dev-v2/_shopId:v8Z43b5KdLE1kxqEwagr.jpg', 41.76066600, 123.42073900, 1, '2020-03-16 16:55:45', '2020-03-19 13:32:19', '姜威库');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
