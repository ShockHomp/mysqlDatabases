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

 Date: 18/04/2020 19:19:22
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for shopping_refund_order
-- ----------------------------
DROP TABLE IF EXISTS `shopping_refund_order`;
CREATE TABLE `shopping_refund_order` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `refund_order_sn` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '退款单号',
  `out_trade_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '商户订单号',
  `order_sn` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '订单编号',
  `order_id` int(11) NOT NULL COMMENT '订单id',
  `open_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '买家唯一标识id',
  `seller_mini_id` int(11) NOT NULL COMMENT '卖家唯一标识id',
  `shop_id` int(11) NOT NULL COMMENT '店铺id',
  `refund_type` int(11) NOT NULL COMMENT '1退款 2退款+退货',
  `receive_status` int(11) NOT NULL COMMENT '店主收货状态0无需收货 1未收货 2已收货',
  `receive_remarks` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '店主收货备注',
  `refund_status` int(11) NOT NULL COMMENT '退货状态状态:0待团长审核 1待平台审核 2退货中 3退款中 4已完成',
  `refund_goods_amount` int(11) NOT NULL COMMENT '退货商品总数',
  `refund_purchase_price` decimal(8,2) NOT NULL COMMENT '退款总价格',
  `refund_shop_profit` decimal(8,2) NOT NULL COMMENT '退款总返利',
  `reason_id` int(11) NOT NULL COMMENT '退货原因id',
  `remarks` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '备注',
  `goods_image1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '退货时商品图片',
  `goods_image2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '退货时商品图片',
  `goods_image3` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '退货时商品图片',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `receive_time` timestamp NULL DEFAULT NULL COMMENT '店主收取退货时间',
  `refund_time` timestamp NULL DEFAULT NULL COMMENT '退款时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=195 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of shopping_refund_order
-- ----------------------------
BEGIN;
INSERT INTO `shopping_refund_order` VALUES (50, 'r2020031664631', '20200316151506', '2020031664631', 422, 'oe4cw5ZID8ACKccLn-ZvOhVNtcvQ', 52, 160, 2, 1, '帮您', 1, 1, 0.01, 0.01, 1, NULL, '', '', '', '2020-03-16 15:16:26', '2020-03-18 10:04:24', '2020-03-18 10:04:24', '2020-03-16 15:03:51');
INSERT INTO `shopping_refund_order` VALUES (51, 'r2020031660838', '20200316151804', '2020031660838', 423, 'oe4cw5ZID8ACKccLn-ZvOhVNtcvQ', 52, 160, 2, 2, NULL, 4, 2, 0.02, 0.02, 1, NULL, '', '', '', '2020-03-16 15:22:08', '2020-03-17 09:23:13', '0000-00-00 00:00:00', '2020-03-16 15:22:08');
INSERT INTO `shopping_refund_order` VALUES (52, 'r2020031650563', '20200316151104', '2020031650563', 421, 'oe4cw5ZID8ACKccLn-ZvOhVNtcvQ', 52, 160, 2, 2, NULL, 1, 1, 0.01, 0.01, 0, NULL, '', '', '', '2020-03-16 15:25:24', '2020-03-17 09:22:37', '0000-00-00 00:00:00', '2020-03-16 15:25:24');
INSERT INTO `shopping_refund_order` VALUES (53, 'r2020031731624', '20200317090503', '2020031731624', 426, 'oe4cw5ZID8ACKccLn-ZvOhVNtcvQ', 52, 160, 2, 1, '哈哈哈', 3, 1, 0.01, 0.01, 1, NULL, '', '', '', '2020-03-17 09:06:28', '2020-03-18 13:38:54', '2020-03-18 13:38:54', '0000-00-00 00:00:00');
INSERT INTO `shopping_refund_order` VALUES (54, 'r2020031703084', '20200317134911', '2020031703084', 4311, 'oe4cw5eQw245HrxMvqLVTx19PnYA', 51, 159, 1, 0, NULL, 4, 1, 0.01, 0.01, 1, NULL, '', '', '', '2020-03-17 13:51:45', '2020-03-17 13:52:30', '2020-03-17 13:52:30', '0000-00-00 00:00:00');
INSERT INTO `shopping_refund_order` VALUES (58, 'r2020031306671', '20200313132144', '2020031306671', 410, 'oe4cw5XnracgM7NEAm2Pmuq8V8cE', 19, 37, 0, 0, NULL, 0, 1, 0.01, 7.50, 0, NULL, '', '', '', '2020-03-18 09:40:45', '2020-03-18 09:40:45', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `shopping_refund_order` VALUES (65, 'r2020031894106', '20200318101018', '2020031894106', 446, 'oe4cw5aW0xgcBWVz_QqqoAqlhWIw', 52, 160, 1, 0, NULL, 1, 1, 0.01, 0.01, 0, NULL, '', '', '', '2020-03-18 10:11:25', '2020-03-18 10:11:25', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `shopping_refund_order` VALUES (68, 'r2020031806669', '20200318105516', '2020031806669', 449, 'oe4cw5ZID8ACKccLn-ZvOhVNtcvQ', 52, 160, 2, 0, '啦啦啦', 3, 1, 0.01, 0.01, 1, NULL, '', '', '', '2020-03-18 10:56:06', '2020-03-18 13:52:21', '2020-03-18 13:52:21', NULL);
INSERT INTO `shopping_refund_order` VALUES (92, 'r2020031832752', '20200318135633', '2020031832752', 457, 'oe4cw5XnracgM7NEAm2Pmuq8V8cE', 52, 160, 1, 0, NULL, 4, 1, 0.01, 0.01, 3, 'kkkllkkkll', '', '', '', '2020-03-18 13:57:21', '2020-03-26 09:58:15', NULL, '2020-03-26 09:57:38');
INSERT INTO `shopping_refund_order` VALUES (94, 'r2020031864995', '20200318135818', '2020031864995', 459, 'oe4cw5XnracgM7NEAm2Pmuq8V8cE', 52, 160, 2, 1, '测试', 3, 1, 0.01, 0.01, 5, 'jjjjjjjjj', '', '', '', '2020-03-18 14:00:15', '2020-03-18 14:00:53', '2020-03-18 14:00:53', NULL);
INSERT INTO `shopping_refund_order` VALUES (95, 'r2020031842424', '20200318145345', '2020031842424', 460, 'oe4cw5eQw245HrxMvqLVTx19PnYA', 51, 159, 1, 0, NULL, 4, 1, 0.01, 0.01, 1, NULL, '', '', '', '2020-03-18 14:54:43', '2020-03-18 14:55:49', NULL, '2020-03-18 14:55:49');
INSERT INTO `shopping_refund_order` VALUES (98, 'r2020031817322', '20200318161249', '2020031817322', 468, 'oe4cw5eQw245HrxMvqLVTx19PnYA', 52, 160, 1, 0, NULL, 4, 2, 0.02, 0.02, 0, NULL, '', '', '', '2020-03-18 16:14:12', '2020-03-18 16:16:25', NULL, '2020-03-18 16:16:25');
INSERT INTO `shopping_refund_order` VALUES (99, 'r2020031882552', '20200318163407', '2020031882552', 469, 'oe4cw5asU_26iiVxDHrF6cfRwT1Y', 55, 183, 2, 2, '不给退', 4, 1, 0.01, 0.01, 6, '不想要了', '', '', '', '2020-03-18 16:37:53', '2020-03-18 17:08:40', '2020-03-18 17:06:58', '2020-03-18 17:08:40');
INSERT INTO `shopping_refund_order` VALUES (100, 'r2020031841938', '20200318165741', '2020031841938', 471, 'oe4cw5asU_26iiVxDHrF6cfRwT1Y', 55, 183, 2, 2, NULL, 4, 1, 0.01, 0.01, 5, '假的', '', '', '', '2020-03-18 16:59:17', '2020-03-18 17:11:49', NULL, '2020-03-18 17:11:49');
INSERT INTO `shopping_refund_order` VALUES (101, 'r2020031805915', '20200318161124', '2020031805915', 467, 'oe4cw5eQw245HrxMvqLVTx19PnYA', 52, 160, 1, 0, NULL, 4, 1, 0.01, 0.01, 0, NULL, '', '', '', '2020-03-18 17:04:29', '2020-03-26 14:50:19', NULL, '2020-03-26 14:50:19');
INSERT INTO `shopping_refund_order` VALUES (102, 'r2020031881934', '20200318160659', '2020031881934', 465, 'oe4cw5eQw245HrxMvqLVTx19PnYA', 51, 159, 1, 0, NULL, 4, 1, 0.01, 0.01, 4, NULL, '', '', '', '2020-03-19 09:21:12', '2020-03-19 09:58:39', NULL, '2020-03-19 09:58:39');
INSERT INTO `shopping_refund_order` VALUES (114, 'r2020031833472', '20200318155441', '2020031833472', 463, 'oe4cw5XnracgM7NEAm2Pmuq8V8cE', 52, 160, 1, 0, NULL, 4, 1, 0.01, 0.01, 6, '5555', '', '', '', '2020-03-19 10:08:00', '2020-03-19 10:09:58', NULL, '2020-03-19 10:09:58');
INSERT INTO `shopping_refund_order` VALUES (138, 'r2020031969123', '202003195e730ec8ef9e6', '2020031969123', 524, 'oe4cw5V-PZ5J3PoHsocPZ2EaQzu4', 56, 193, 1, 0, NULL, 4, 1, 0.01, 1.00, 7, NULL, '', '', '', '2020-03-19 14:19:24', '2020-03-19 14:21:44', NULL, '2020-03-19 14:21:44');
INSERT INTO `shopping_refund_order` VALUES (139, 'r2020031942557', '202003195e730efe004e2', '2020031942557', 535, 'oe4cw5alcAE4SCwQPuS71zC4iC70', 56, 193, 1, 0, NULL, 4, 1, 0.01, 1.00, 6, '不是绿萝', '', '', '', '2020-03-19 14:23:06', '2020-03-19 14:23:43', NULL, '2020-03-19 14:23:43');
INSERT INTO `shopping_refund_order` VALUES (140, 'r2020031981906', '202003195e730ed276a24', '2020031981906', 528, 'oe4cw5XmELuLiE89A2yBSdNt9m8s', 56, 193, 1, 0, NULL, 4, 1, 0.01, 1.00, 6, NULL, '', '', '', '2020-03-19 14:24:08', '2020-03-19 14:26:49', NULL, '2020-03-19 14:26:49');
INSERT INTO `shopping_refund_order` VALUES (141, 'r2020031999083', '202003195e730f8578291', '2020031999083', 540, 'oe4cw5asU_26iiVxDHrF6cfRwT1Y', 56, 193, 1, 0, NULL, 4, 1, 0.01, 0.01, 0, NULL, '', '', '', '2020-03-19 14:24:47', '2020-03-19 14:26:42', NULL, '2020-03-19 14:26:42');
INSERT INTO `shopping_refund_order` VALUES (142, 'r2020031990972', '202003195e730edcbb36a', '2020031990972', 533, 'oe4cw5asU_26iiVxDHrF6cfRwT1Y', 56, 193, 1, 0, NULL, 4, 1, 0.01, 1.00, 0, NULL, '', '', '', '2020-03-19 14:25:06', '2020-03-19 14:26:36', NULL, '2020-03-19 14:26:36');
INSERT INTO `shopping_refund_order` VALUES (143, 'r2020031907893', '202003195e73105362083', '2020031907893', 539, 'oe4cw5asU_26iiVxDHrF6cfRwT1Y', 56, 193, 1, 0, NULL, 4, 1, 0.01, 0.01, 0, NULL, '', '', '', '2020-03-19 14:25:40', '2020-03-19 14:26:31', NULL, '2020-03-19 14:26:31');
INSERT INTO `shopping_refund_order` VALUES (144, 'r2020031979303', '202003195e730fb482dd3', '2020031979303', 529, 'oe4cw5Ung3WM12lGmMkcyj-p-tEA', 56, 193, 1, 0, NULL, 4, 1, 0.01, 1.00, 7, '哦?', '', '', '', '2020-03-19 14:26:05', '2020-03-19 14:26:24', NULL, '2020-03-19 14:26:24');
INSERT INTO `shopping_refund_order` VALUES (145, 'r2020031977600', '202003195e730ecc040d5', '2020031977600', 526, 'oe4cw5aW0xgcBWVz_QqqoAqlhWIw', 56, 193, 2, 2, '嗯嗯', 4, 1, 0.01, 1.00, 0, NULL, '', '', '', '2020-03-19 14:29:26', '2020-03-19 14:30:24', '2020-03-19 14:29:51', '2020-03-19 14:30:24');
INSERT INTO `shopping_refund_order` VALUES (146, 'r2020031993422', '202003195e730eda8ab9d', '2020031993422', 532, 'oe4cw5XnracgM7NEAm2Pmuq8V8cE', 56, 193, 1, 0, NULL, 4, 1, 0.01, 1.00, 0, NULL, '', '', '', '2020-03-19 14:29:28', '2020-03-19 14:30:46', NULL, '2020-03-19 14:30:46');
INSERT INTO `shopping_refund_order` VALUES (147, 'r2020031996101', '202003195e7317234a3ba', '2020031996101', 546, 'oe4cw5asU_26iiVxDHrF6cfRwT1Y', 56, 193, 1, 0, NULL, 4, 1, 0.01, 1.00, 0, NULL, '', '', '', '2020-03-19 15:03:31', '2020-03-19 15:04:22', NULL, '2020-03-19 15:04:22');
INSERT INTO `shopping_refund_order` VALUES (148, 'r2020031958725', '202003195e730ec927833', '2020031958725', 525, 'oe4cw5R3M7LhmPagP4Tn9KG-bodk', 56, 193, 1, 0, NULL, 4, 1, 0.01, 1.00, 0, NULL, '', '', '', '2020-03-19 16:10:56', '2020-03-26 15:02:20', NULL, '2020-03-26 15:02:20');
INSERT INTO `shopping_refund_order` VALUES (149, 'r2020031991884', '202003195e730ecdb23ed', '2020031991884', 527, 'oe4cw5RKTC0r4gyRF2SgSYafEE3A', 56, 193, 2, 1, NULL, 1, 1, 0.01, 1.00, 0, NULL, '', '', '', '2020-03-19 16:12:04', '2020-03-19 16:12:04', NULL, NULL);
INSERT INTO `shopping_refund_order` VALUES (150, 'r2020031915059', '202003195e730f09b93f3', '2020031915059', 537, 'oe4cw5VbEqnuIE73_2c0U_eb4AXo', 56, 193, 1, 0, NULL, 4, 1, 0.01, 1.00, 0, NULL, '', '', '', '2020-03-19 16:13:01', '2020-03-26 14:56:18', NULL, '2020-03-26 14:56:18');
INSERT INTO `shopping_refund_order` VALUES (151, 'r2020032019125', '202003205e741ebc232ba', '2020032019125', 550, 'oe4cw5asU_26iiVxDHrF6cfRwT1Y', 56, 193, 1, 0, NULL, 4, 1, 0.01, 0.01, 6, '不要了', '', '', '', '2020-03-20 10:04:20', '2020-03-20 10:04:59', NULL, '2020-03-20 10:04:59');
INSERT INTO `shopping_refund_order` VALUES (152, 'r2020032021633', '202003205e74253367dd7', '2020032021633', 551, 'oe4cw5asU_26iiVxDHrF6cfRwT1Y', 56, 193, 1, 0, NULL, 4, 1, 0.01, 0.01, 1, NULL, '', '', '', '2020-03-20 10:07:16', '2020-03-20 10:07:42', NULL, '2020-03-20 10:07:42');
INSERT INTO `shopping_refund_order` VALUES (153, 'r2020031966970', '202003195e732f4347501', '2020031966970', 549, 'oe4cw5asU_26iiVxDHrF6cfRwT1Y', 56, 193, 1, 0, NULL, 4, 1, 0.01, 0.01, 3, NULL, '', '', '', '2020-03-20 10:07:28', '2020-03-20 10:07:50', NULL, '2020-03-20 10:07:50');
INSERT INTO `shopping_refund_order` VALUES (154, 'r2020032060401', '202003205e742820d353c', '2020032060401', 552, 'oe4cw5asU_26iiVxDHrF6cfRwT1Y', 56, 193, 2, 2, '是你吗', 4, 1, 0.01, 1.00, 1, NULL, '', '', '', '2020-03-20 10:20:59', '2020-03-20 10:22:00', '2020-03-20 10:21:48', '2020-03-20 10:22:00');
INSERT INTO `shopping_refund_order` VALUES (155, 'r2020032073784', '202003205e742901769f1', '2020032073784', 553, 'oe4cw5asU_26iiVxDHrF6cfRwT1Y', 56, 193, 2, 2, NULL, 4, 1, 0.01, 0.01, 1, NULL, '', '', '', '2020-03-20 10:36:33', '2020-03-20 10:36:56', NULL, '2020-03-20 10:36:56');
INSERT INTO `shopping_refund_order` VALUES (156, 'r2020032000549', '202003205e742c69e9dc2', '2020032000549', 554, 'oe4cw5asU_26iiVxDHrF6cfRwT1Y', 56, 193, 2, 2, NULL, 4, 1, 0.01, 1.00, 1, NULL, '', '', '', '2020-03-20 13:45:41', '2020-03-20 13:49:47', '2020-03-20 13:46:33', '2020-03-20 13:49:47');
INSERT INTO `shopping_refund_order` VALUES (157, 'r2020032098110', '202003205e7460a4e018d', '2020032098110', 556, 'oe4cw5asU_26iiVxDHrF6cfRwT1Y', 56, 193, 1, 0, NULL, 4, 1, 0.01, 1.00, 1, NULL, '', '', '', '2020-03-20 14:24:30', '2020-03-20 14:38:13', NULL, '2020-03-20 14:38:13');
INSERT INTO `shopping_refund_order` VALUES (158, 'r2020032072351', '202003205e7465fc47608', '2020032072351', 558, 'oe4cw5XmELuLiE89A2yBSdNt9m8s', 56, 193, 1, 0, NULL, 4, 1, 0.01, 1.00, 1, NULL, '', '', '', '2020-03-20 14:46:21', '2020-03-20 14:47:15', NULL, '2020-03-20 14:47:15');
INSERT INTO `shopping_refund_order` VALUES (159, 'r2020032096944', '202003205e7466e8aa30b', '2020032096944', 562, 'oe4cw5V-PZ5J3PoHsocPZ2EaQzu4', 56, 193, 1, 0, NULL, 4, 1, 0.01, 1.00, 7, NULL, '', '', '', '2020-03-20 14:47:46', '2020-03-20 14:48:28', NULL, '2020-03-20 14:48:28');
INSERT INTO `shopping_refund_order` VALUES (160, 'r2020032005029', '202003205e74671ad098f', '2020032005029', 563, 'oe4cw5ZID8ACKccLn-ZvOhVNtcvQ', 56, 193, 1, 0, NULL, 4, 1, 0.01, 1.00, 7, NULL, '', '', '', '2020-03-20 14:52:54', '2020-03-20 14:58:03', NULL, '2020-03-20 14:58:03');
INSERT INTO `shopping_refund_order` VALUES (161, 'r2020032075490', '202003205e7465fc9068f', '2020032075490', 559, 'oe4cw5Ung3WM12lGmMkcyj-p-tEA', 56, 193, 1, 0, NULL, 4, 1, 0.01, 1.00, 1, NULL, '', '', '', '2020-03-20 14:55:58', '2020-03-20 14:57:56', NULL, '2020-03-20 14:57:56');
INSERT INTO `shopping_refund_order` VALUES (162, 'r2020032002375', '202003205e74698ff28ad', '2020032002375', 564, 'oe4cw5aW0xgcBWVz_QqqoAqlhWIw', 56, 193, 1, 0, NULL, 4, 1, 0.01, 1.00, 1, NULL, '', '', '', '2020-03-20 14:58:43', '2020-03-20 15:01:29', NULL, '2020-03-20 15:01:29');
INSERT INTO `shopping_refund_order` VALUES (163, 'r2020032045226', '202003205e7465fb6bc90', '2020032045226', 557, 'oe4cw5asU_26iiVxDHrF6cfRwT1Y', 56, 193, 1, 0, NULL, 4, 1, 0.01, 1.00, 1, NULL, '', '', '', '2020-03-20 15:02:03', '2020-03-20 15:03:21', NULL, '2020-03-20 15:03:21');
INSERT INTO `shopping_refund_order` VALUES (164, 'r2020032071659', '202003205e7465fd8ae69', '2020032071659', 560, 'oe4cw5S-Zj1T6Lu515-6ggBsPWVE', 56, 193, 1, 0, NULL, 4, 1, 0.01, 1.00, 1, NULL, '', '', '', '2020-03-20 15:02:16', '2020-03-20 15:03:14', NULL, '2020-03-20 15:03:14');
INSERT INTO `shopping_refund_order` VALUES (165, 'r2020032057099', '202003205e746af1b2aaa', '2020032057099', 568, 'oe4cw5V-PZ5J3PoHsocPZ2EaQzu4', 56, 193, 1, 0, NULL, 4, 1, 0.01, 1.00, 1, NULL, '', '', '', '2020-03-20 15:04:56', '2020-03-20 15:05:22', NULL, '2020-03-20 15:05:22');
INSERT INTO `shopping_refund_order` VALUES (166, 'r2020032097959', '202003205e746ae41a3c3', '2020032097959', 565, 'oe4cw5aW0xgcBWVz_QqqoAqlhWIw', 56, 193, 1, 0, NULL, 4, 1, 0.01, 1.00, 1, NULL, '', '', '', '2020-03-20 15:06:12', '2020-03-20 15:07:16', NULL, '2020-03-20 15:07:16');
INSERT INTO `shopping_refund_order` VALUES (167, 'r2020032078749', '202003205e746b3b75657', '2020032078749', 569, 'oe4cw5ZID8ACKccLn-ZvOhVNtcvQ', 56, 193, 1, 0, NULL, 4, 1, 0.01, 1.00, 7, NULL, '', '', '', '2020-03-20 15:06:47', '2020-03-20 15:07:10', NULL, '2020-03-20 15:07:10');
INSERT INTO `shopping_refund_order` VALUES (168, 'r2020032075043', '202003205e746af2084d6', '2020032075043', 567, 'oe4cw5asU_26iiVxDHrF6cfRwT1Y', 56, 193, 1, 0, NULL, 4, 1, 0.01, 1.00, 1, NULL, '', '', '', '2020-03-20 15:06:51', '2020-03-20 15:07:04', NULL, '2020-03-20 15:07:04');
INSERT INTO `shopping_refund_order` VALUES (169, 'r2020032065403', '202003205e746b1864f38', '2020032065403', 566, 'oe4cw5Ung3WM12lGmMkcyj-p-tEA', 56, 193, 1, 0, NULL, 4, 1, 0.01, 1.00, 1, NULL, '', '', '', '2020-03-20 15:07:49', '2020-03-20 15:08:08', NULL, '2020-03-20 15:08:08');
INSERT INTO `shopping_refund_order` VALUES (170, 'r2020032090215', '202003205e748a0311e90', '2020032090215', 570, 'oe4cw5aW0xgcBWVz_QqqoAqlhWIw', 56, 193, 1, 0, NULL, 4, 1, 0.01, 0.01, 1, NULL, '', '', '', '2020-03-20 17:17:16', '2020-03-20 17:17:32', NULL, '2020-03-20 17:17:32');
INSERT INTO `shopping_refund_order` VALUES (171, 'r2020032057536', '202003205e749032ae95e', '2020032057536', 571, 'oe4cw5eQw245HrxMvqLVTx19PnYA', 56, 193, 1, 0, NULL, 4, 1, 0.01, 0.01, 1, NULL, '', '', '', '2020-03-20 17:43:52', '2020-03-20 17:44:11', NULL, '2020-03-20 17:44:11');
INSERT INTO `shopping_refund_order` VALUES (172, 'r2020032024498', '202003205e7491d3e70a0', '2020032024498', 572, 'oe4cw5aW0xgcBWVz_QqqoAqlhWIw', 56, 193, 1, 0, NULL, 4, 1, 0.01, 1.00, 1, NULL, '', '', '', '2020-03-20 17:50:41', '2020-03-20 17:50:58', NULL, '2020-03-20 17:50:58');
INSERT INTO `shopping_refund_order` VALUES (173, 'r2020031881156', '20200318160451', '2020031881156', 464, 'oe4cw5eQw245HrxMvqLVTx19PnYA', 51, 159, 1, 0, NULL, 4, 1, 0.01, 0.01, 1, NULL, '', '', '', '2020-03-23 10:04:58', '2020-03-23 11:46:51', NULL, '2020-03-23 11:46:51');
INSERT INTO `shopping_refund_order` VALUES (174, 'r2020032549769', '202003255e7ab7f1d70c4', '2020032549769', 578, 'oe4cw5asU_26iiVxDHrF6cfRwT1Y', 55, 183, 1, 0, NULL, 4, 1, 0.01, 0.01, 7, '不要了', '', '', '', '2020-03-25 13:32:39', '2020-03-26 10:25:10', NULL, '2020-03-26 09:20:41');
INSERT INTO `shopping_refund_order` VALUES (175, 'r2020032620878', '202003265e7c09ea9e524', '2020032620878', 584, 'oe4cw5eQw245HrxMvqLVTx19PnYA', 56, 193, 1, 0, NULL, 4, 1, 0.01, 1.00, 1, NULL, '', '', '', '2020-03-26 09:49:03', '2020-03-26 10:23:53', NULL, '2020-03-26 09:49:44');
INSERT INTO `shopping_refund_order` VALUES (176, 'r2020032698251', '202003265e7c155386f25', '2020032698251', 585, 'oe4cw5eQw245HrxMvqLVTx19PnYA', 56, 193, 1, 0, NULL, 4, 1, 0.01, 1.00, 1, NULL, '', '', '', '2020-03-26 10:37:27', '2020-03-26 10:39:20', NULL, '2020-03-26 10:39:20');
INSERT INTO `shopping_refund_order` VALUES (177, 'r2020031375622', '20200313144659', '2020031375622', 411, 'oe4cw5eQw245HrxMvqLVTx19PnYA', 51, 159, 1, 0, NULL, 4, 1, 0.01, 0.01, 1, NULL, '', '', '', '2020-03-26 10:42:11', '2020-03-26 10:44:07', NULL, '2020-03-26 10:44:07');
INSERT INTO `shopping_refund_order` VALUES (179, 'r2020032697395', '202003265e7c1a68a6d18', '2020032697395', 586, 'oe4cw5eQw245HrxMvqLVTx19PnYA', 56, 193, 1, 0, NULL, 4, 1, 0.01, 1.00, 1, NULL, '', '', '', '2020-03-26 10:59:04', '2020-03-26 10:59:39', NULL, '2020-03-26 10:59:39');
INSERT INTO `shopping_refund_order` VALUES (180, 'r2020032605002', '202003265e7c1f0ebd3d4', '2020032605002', 587, 'oe4cw5eQw245HrxMvqLVTx19PnYA', 56, 193, 1, 0, NULL, 4, 1, 0.01, 1.00, 1, NULL, '', '', '', '2020-03-26 11:18:58', '2020-03-26 11:19:27', NULL, '2020-03-26 11:19:27');
INSERT INTO `shopping_refund_order` VALUES (181, 'r2020032668891', '202003265e7c4aa642775', '2020032668891', 590, 'oe4cw5asU_26iiVxDHrF6cfRwT1Y', 55, 183, 1, 0, NULL, 4, 4, 0.04, 5.00, 1, NULL, '', '', '', '2020-03-26 14:26:01', '2020-03-26 14:28:14', NULL, '2020-03-26 14:28:14');
INSERT INTO `shopping_refund_order` VALUES (182, 'r2020032683178', '202003265e7c4a566c530', '2020032683178', 589, 'oe4cw5asU_26iiVxDHrF6cfRwT1Y', 55, 183, 1, 0, NULL, 4, 3, 0.03, 4.00, 7, NULL, '', '', '', '2020-03-26 14:26:29', '2020-03-26 14:27:57', NULL, '2020-03-26 14:27:57');
INSERT INTO `shopping_refund_order` VALUES (183, 'r2020032517339', '202003255e7ab8a0c6b93', '2020032517339', 579, 'oe4cw5asU_26iiVxDHrF6cfRwT1Y', 55, 183, 1, 0, NULL, 4, 1, 0.01, 0.01, 1, NULL, '', '', '', '2020-03-26 14:30:31', '2020-03-26 14:31:04', NULL, '2020-03-26 14:31:04');
INSERT INTO `shopping_refund_order` VALUES (184, 'r2020032570668', '202003255e7ac9d395fcb', '2020032570668', 583, 'oe4cw5asU_26iiVxDHrF6cfRwT1Y', 55, 183, 1, 0, NULL, 4, 1, 0.01, 0.01, 1, NULL, '', '', '', '2020-03-26 14:30:48', '2020-03-26 14:31:42', NULL, '2020-03-26 14:31:42');
INSERT INTO `shopping_refund_order` VALUES (185, 'r2020032691389', '202003265e7c4ca3a3a8c', '2020032691389', 591, 'oe4cw5asU_26iiVxDHrF6cfRwT1Y', 55, 183, 1, 0, NULL, 4, 1, 0.01, 1.00, 1, NULL, '', '', '', '2020-03-26 14:33:34', '2020-03-26 14:34:42', NULL, '2020-03-26 14:34:42');
INSERT INTO `shopping_refund_order` VALUES (186, 'r2020030655286', '20200306155749', '2020030655286', 373, 'oe4cw5eQw245HrxMvqLVTx19PnYA', 51, 159, 1, 0, NULL, 4, 1, 0.01, 0.01, 1, NULL, '', '', '', '2020-03-26 15:15:24', '2020-03-26 15:23:31', NULL, '2020-03-26 15:23:31');
INSERT INTO `shopping_refund_order` VALUES (187, 'r2020032655850', '202003265e7c58c5cc2f5', '2020032655850', 598, 'oe4cw5eQw245HrxMvqLVTx19PnYA', 56, 193, 1, 0, NULL, 4, 1, 0.01, 1.00, 1, NULL, '', '', '', '2020-03-26 15:25:11', '2020-03-26 15:25:40', NULL, '2020-03-26 15:25:40');
INSERT INTO `shopping_refund_order` VALUES (188, 'r2020032641947', '202003265e7c59936292a', '2020032641947', 600, 'oe4cw5asU_26iiVxDHrF6cfRwT1Y', 55, 183, 1, 0, NULL, 4, 1, 0.01, 2.00, 1, NULL, '', '', '', '2020-03-26 15:29:22', '2020-03-26 15:30:18', NULL, '2020-03-26 15:30:18');
INSERT INTO `shopping_refund_order` VALUES (189, 'r2020032632541', '202003265e7c533800746', '2020032632541', 597, 'oe4cw5asU_26iiVxDHrF6cfRwT1Y', 55, 183, 1, 0, NULL, 4, 1, 0.01, 1.00, 1, NULL, '', '', '', '2020-03-26 15:29:57', '2020-03-26 15:30:25', NULL, '2020-03-26 15:30:25');
INSERT INTO `shopping_refund_order` VALUES (190, 'r2020040191199', '202004015e83f0b68cde3', '2020040191199', 603, 'oe4cw5asU_26iiVxDHrF6cfRwT1Y', 55, 183, 2, 1, NULL, 1, 1, 0.01, 1.00, 6, NULL, '', '', '', '2020-04-01 09:43:59', '2020-04-01 09:43:59', NULL, NULL);
INSERT INTO `shopping_refund_order` VALUES (191, 'r2020041042065', '202004105e9011b843c29', '2020041042065', 614, 'oe4cw5asU_26iiVxDHrF6cfRwT1Y', 55, 183, 1, 0, NULL, 4, 1, 0.01, 1.00, 1, NULL, '', '', '', '2020-04-10 14:29:15', '2020-04-10 14:32:24', NULL, '2020-04-10 14:32:24');
INSERT INTO `shopping_refund_order` VALUES (192, 'r2020041022780', '202004105e901142e5010', '2020041022780', 613, 'oe4cw5asU_26iiVxDHrF6cfRwT1Y', 55, 183, 1, 0, NULL, 4, 1, 0.01, 1.00, 1, NULL, '', '', '', '2020-04-10 14:29:33', '2020-04-10 14:32:42', NULL, '2020-04-10 14:32:42');
INSERT INTO `shopping_refund_order` VALUES (193, 'r2020041038975', '202004105e90111773001', '2020041038975', 612, 'oe4cw5asU_26iiVxDHrF6cfRwT1Y', 55, 183, 1, 0, NULL, 4, 1, 0.01, 1.00, 1, NULL, '', '', '', '2020-04-10 14:30:05', '2020-04-10 14:32:48', NULL, '2020-04-10 14:32:48');
INSERT INTO `shopping_refund_order` VALUES (194, 'r2020041005047', '202004105e8fe387823c2', '2020041005047', 610, 'oe4cw5asU_26iiVxDHrF6cfRwT1Y', 55, 183, 1, 0, NULL, 4, 1, 0.01, 1.00, 1, NULL, '', '', '', '2020-04-10 14:31:00', '2020-04-10 14:32:54', NULL, '2020-04-10 14:32:54');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;