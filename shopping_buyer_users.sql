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

 Date: 18/04/2020 19:16:29
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for shopping_buyer_users
-- ----------------------------
DROP TABLE IF EXISTS `shopping_buyer_users`;
CREATE TABLE `shopping_buyer_users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `openid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '买家用户openid',
  `shop_id` int(11) DEFAULT NULL COMMENT '买家最新浏览商城商店ID',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `shopping_buyer_users_openid_unique` (`openid`),
  KEY `shopping_buyer_users_shop_id_unique` (`shop_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2402 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of shopping_buyer_users
-- ----------------------------
BEGIN;
INSERT INTO `shopping_buyer_users` VALUES (4, 'ojvXN4tQB-OrO4UDHzU2PjyVMpYk', 116, NULL, NULL);
INSERT INTO `shopping_buyer_users` VALUES (13, 'ojvXN4roxj-wjEKWMIXkZTSezdqw', 119, NULL, NULL);
INSERT INTO `shopping_buyer_users` VALUES (31, 'ojvXN4pAHEGUY9dk4VcH5eQIZPbk', 139, NULL, NULL);
INSERT INTO `shopping_buyer_users` VALUES (37, 'ojvXN4q458ffOfDEMph-xJS3cc5Q', 114, NULL, NULL);
INSERT INTO `shopping_buyer_users` VALUES (67, 'ojvXN4tG_yZe_CuHIaZvd80ihGsA', 37, NULL, NULL);
INSERT INTO `shopping_buyer_users` VALUES (116, 'ojvXN4kwCTK2PerdR1wt7JLLyGCc', 38, NULL, NULL);
INSERT INTO `shopping_buyer_users` VALUES (132, 'ojvXN4oKMQDRzkdLI5otb7K6J-GQ', 158, NULL, NULL);
INSERT INTO `shopping_buyer_users` VALUES (146, 'ojvXN4n4TSAv_m0I_W1fUxrc6Nss', 37, NULL, NULL);
INSERT INTO `shopping_buyer_users` VALUES (154, 'ojvXN4kSNTfD-Z6NXoLpgAh39Pj8', 158, NULL, NULL);
INSERT INTO `shopping_buyer_users` VALUES (156, 'ojvXN4n-yea5o5JwgYb8q-jEt5yg', 115, NULL, NULL);
INSERT INTO `shopping_buyer_users` VALUES (157, 'ojvXN4uWS-QyCO-OfrkXwO4dLC1U', 115, NULL, NULL);
INSERT INTO `shopping_buyer_users` VALUES (158, 'ojvXN4pqwZV1Ec0_yh4o7FncuYQw', 115, NULL, NULL);
INSERT INTO `shopping_buyer_users` VALUES (165, 'ojvXN4pNOKAqeCfWaRJlFuaGX0hA', 133, NULL, NULL);
INSERT INTO `shopping_buyer_users` VALUES (171, 'ojvXN4ux-tl2ytWbOxBiK58zVD_4', 115, NULL, NULL);
INSERT INTO `shopping_buyer_users` VALUES (173, 'ojvXN4o2_0KRntQurfwttTwRulz8', 115, NULL, NULL);
INSERT INTO `shopping_buyer_users` VALUES (175, 'ojvXN4q5kpg0-c5Atyifjsm4T6-Q', 37, NULL, NULL);
INSERT INTO `shopping_buyer_users` VALUES (176, 'ojvXN4g9D6fAGGaY4ou_TkWUfZVI', 115, NULL, NULL);
INSERT INTO `shopping_buyer_users` VALUES (178, 'ojvXN4k24-c8TERvO0n_345T-kwQ', 121, NULL, NULL);
INSERT INTO `shopping_buyer_users` VALUES (179, 'ojvXN4oO3hZV4GCEzlhehevcs7BE', 115, NULL, NULL);
INSERT INTO `shopping_buyer_users` VALUES (180, 'ojvXN4qPkYxeph_ROA88MlbVa3VQ', 115, NULL, NULL);
INSERT INTO `shopping_buyer_users` VALUES (181, 'ojvXN4lfjIKy55xEePIfusD6x7EQ', 119, NULL, NULL);
INSERT INTO `shopping_buyer_users` VALUES (184, 'ojvXN4i1d3wEMJmpnGktZ6ke3z94', 139, NULL, NULL);
INSERT INTO `shopping_buyer_users` VALUES (186, 'ojvXN4h9cDYWe3BDMdKI3Wda3_YU', 115, NULL, NULL);
INSERT INTO `shopping_buyer_users` VALUES (188, 'ojvXN4qLffo8g5SEPxL_zG7te2gQ', 115, NULL, NULL);
INSERT INTO `shopping_buyer_users` VALUES (202, 'ojvXN4sZT8rcRdtgYFznqAMVT_R0', 115, NULL, NULL);
INSERT INTO `shopping_buyer_users` VALUES (221, 'ojvXN4g_srXb3Pw08mdMEpRFAXGA', 119, NULL, NULL);
INSERT INTO `shopping_buyer_users` VALUES (283, 'ojvXN4pqvdJWz4U6Ymg4Fcnt8nwc', 121, NULL, NULL);
INSERT INTO `shopping_buyer_users` VALUES (288, 'ojvXN4nAcU3rNgsIDA5I6yxqoLgc', 157, NULL, NULL);
INSERT INTO `shopping_buyer_users` VALUES (310, 'ojvXN4vdNfbB9CkYXUSpjjsq5aeA', 114, NULL, NULL);
INSERT INTO `shopping_buyer_users` VALUES (311, 'ojvXN4icYCMAXPz6lLGZH0f-qnLw', 147, NULL, NULL);
INSERT INTO `shopping_buyer_users` VALUES (312, 'ojvXN4i-n1IDH_rT6PqcafGWDtUY', 139, NULL, NULL);
INSERT INTO `shopping_buyer_users` VALUES (313, 'ojvXN4kqemxRziUsPLvO_IOrmH4I', 114, NULL, NULL);
INSERT INTO `shopping_buyer_users` VALUES (315, 'ojvXN4nb4CnD8rVhy-1kKCGxu5FM', 115, NULL, NULL);
INSERT INTO `shopping_buyer_users` VALUES (327, 'ojvXN4jmXd7pKEy7sUlmui4suUQw', 115, NULL, NULL);
INSERT INTO `shopping_buyer_users` VALUES (330, 'ojvXN4uzHE4-c6NLTf4NgPNu8aDg', 115, NULL, NULL);
INSERT INTO `shopping_buyer_users` VALUES (412, 'ojvXN4tEHlMOb6vw1fc63fY9NVA0', 158, NULL, NULL);
INSERT INTO `shopping_buyer_users` VALUES (428, 'ojvXN4oPy9bsLEUw5xWSy1WWYThU', 158, NULL, NULL);
INSERT INTO `shopping_buyer_users` VALUES (433, 'ojvXN4q_oZun_ZjlONd3DLIyg5s0', 157, NULL, NULL);
INSERT INTO `shopping_buyer_users` VALUES (442, 'ojvXN4taqbVTg1esvbag-vMGTyaM', 115, NULL, NULL);
INSERT INTO `shopping_buyer_users` VALUES (455, 'ojvXN4gz1H9FFW3o4vUOeDPZ9hI0', 115, NULL, NULL);
INSERT INTO `shopping_buyer_users` VALUES (461, 'ojvXN4oWh8PoGeQS_bTF58_hzCfI', 147, NULL, NULL);
INSERT INTO `shopping_buyer_users` VALUES (465, 'ojvXN4jzXyE28v0m5LZHHH8TEbcU', 116, NULL, NULL);
INSERT INTO `shopping_buyer_users` VALUES (470, 'ojvXN4rblvLPDyORs2deX0VKlf_Y', 116, NULL, NULL);
INSERT INTO `shopping_buyer_users` VALUES (486, 'ojvXN4kva4U2LTPR-F3ruMuB6YNo', 116, NULL, NULL);
INSERT INTO `shopping_buyer_users` VALUES (489, 'ojvXN4vEMlCV3sRRd3ZbF_MKsuJk', 119, NULL, NULL);
INSERT INTO `shopping_buyer_users` VALUES (493, 'ojvXN4iT5T4OYdDDi7r9G4Pe46A4', 116, NULL, NULL);
INSERT INTO `shopping_buyer_users` VALUES (494, 'ojvXN4sMy9qvvgc7d-os1aecsPxY', 116, NULL, NULL);
INSERT INTO `shopping_buyer_users` VALUES (495, 'ojvXN4k3BjYx5c0T845AYZ_O0jCU', 116, NULL, NULL);
INSERT INTO `shopping_buyer_users` VALUES (499, 'ojvXN4q_O0rt4Q7bIS3vJKr-S1EE', 116, NULL, NULL);
INSERT INTO `shopping_buyer_users` VALUES (500, 'ojvXN4mR4tYKjBLJ7FWjlrNf-H_E', 115, NULL, NULL);
INSERT INTO `shopping_buyer_users` VALUES (504, 'ojvXN4hozx4ByZXTB6e0fSwS4fxE', 157, NULL, NULL);
INSERT INTO `shopping_buyer_users` VALUES (505, 'ojvXN4jhCWijcCaofzNZEI3FUfUc', 119, NULL, NULL);
INSERT INTO `shopping_buyer_users` VALUES (508, 'ojvXN4ss8rsACSycvxhjJVkoaEeI', 119, NULL, NULL);
INSERT INTO `shopping_buyer_users` VALUES (509, 'ojvXN4shZy_2-9YHlph02FNI1BrA', 119, NULL, NULL);
INSERT INTO `shopping_buyer_users` VALUES (514, 'ojvXN4pwmuQvPjDjmODFnwQzFpVs', 119, NULL, NULL);
INSERT INTO `shopping_buyer_users` VALUES (518, 'ojvXN4hjJuOnBFprI8Ra5FuN_qi4', 119, NULL, NULL);
INSERT INTO `shopping_buyer_users` VALUES (519, 'ojvXN4kcEa6NM4LImLdajFepoPQg', 119, NULL, NULL);
INSERT INTO `shopping_buyer_users` VALUES (524, 'ojvXN4j5AJtpy909RnlujZHHTirY', 37, NULL, NULL);
INSERT INTO `shopping_buyer_users` VALUES (529, 'ojvXN4sp255TzkAU_3k-juMvJxUA', 146, NULL, NULL);
INSERT INTO `shopping_buyer_users` VALUES (532, 'ojvXN4kQH2fsPZkqC1ZiNy2OSbas', 139, NULL, NULL);
INSERT INTO `shopping_buyer_users` VALUES (533, 'ojvXN4m84dhmgBCwth8oRodDQ0Us', 139, NULL, NULL);
INSERT INTO `shopping_buyer_users` VALUES (536, 'ojvXN4m5S7IlSxomUToSJgig7sq4', 119, NULL, NULL);
INSERT INTO `shopping_buyer_users` VALUES (540, 'ojvXN4jQu2KjMELxb6B6erAT7OzE', 146, NULL, NULL);
INSERT INTO `shopping_buyer_users` VALUES (542, 'ojvXN4rCMeRmYJfQyJJhv1EXV4VQ', 116, NULL, NULL);
INSERT INTO `shopping_buyer_users` VALUES (544, 'ojvXN4kwT0iQFSV7s9NjcEyiAvZE', 146, NULL, NULL);
INSERT INTO `shopping_buyer_users` VALUES (545, 'ojvXN4jgN74fviBoSDZCviIpqNIU', 139, NULL, NULL);
INSERT INTO `shopping_buyer_users` VALUES (546, 'ojvXN4uLIIU2sRsaIvdfVGRAn024', 119, NULL, NULL);
INSERT INTO `shopping_buyer_users` VALUES (552, 'ojvXN4h_M8v9lgikTOUubsDqKFag', 115, NULL, NULL);
INSERT INTO `shopping_buyer_users` VALUES (553, 'ojvXN4p4gW8MdhNsQrzCyYPUfZOE', 115, NULL, NULL);
INSERT INTO `shopping_buyer_users` VALUES (555, 'ojvXN4sMC0a8LN6B3Ao4V5gjSYf4', 119, NULL, NULL);
INSERT INTO `shopping_buyer_users` VALUES (557, 'ojvXN4tdJdmLqz7-P7c9WNYbLI6g', 115, NULL, NULL);
INSERT INTO `shopping_buyer_users` VALUES (559, 'ojvXN4ujjKAAZvKQVagHqAVHWHv4', 115, NULL, NULL);
INSERT INTO `shopping_buyer_users` VALUES (560, 'ojvXN4outqC05Ld9Q0ZrnRK92Jbk', 115, NULL, NULL);
INSERT INTO `shopping_buyer_users` VALUES (566, 'ojvXN4jw4EgpvC_rY918ELWK5x38', 139, NULL, NULL);
INSERT INTO `shopping_buyer_users` VALUES (571, 'ojvXN4lmoQH81qK1_oTENbtahpEg', 114, NULL, NULL);
INSERT INTO `shopping_buyer_users` VALUES (572, 'ojvXN4gfLzpH0U8V5iBTemi7DCuw', 119, NULL, NULL);
INSERT INTO `shopping_buyer_users` VALUES (579, 'ojvXN4um3RA5n-7ccYU5zFy51140', 114, NULL, NULL);
INSERT INTO `shopping_buyer_users` VALUES (591, 'ojvXN4q4HY8hCRlNlxwGEjbndKGY', 37, NULL, NULL);
INSERT INTO `shopping_buyer_users` VALUES (593, 'ojvXN4gjesIAtBERzdhUAAcrHncU', 37, NULL, NULL);
INSERT INTO `shopping_buyer_users` VALUES (595, 'ojvXN4lHAa9vUroMXiWg0ZH5XzVA', 160, NULL, NULL);
INSERT INTO `shopping_buyer_users` VALUES (597, 'ojvXN4gjILenQFx-IG47OwJINOPg', 181, NULL, NULL);
INSERT INTO `shopping_buyer_users` VALUES (1099, 'oe4cw5TdjSGM_wsSaHIgGdp7_oZ8', 160, NULL, NULL);
INSERT INTO `shopping_buyer_users` VALUES (1394, 'oe4cw5UjfL0F3_oXW1gUXsqPDFv4', 193, NULL, NULL);
INSERT INTO `shopping_buyer_users` VALUES (1416, 'oe4cw5aVJC66CxjeYgD4m7OPPX20', 193, NULL, NULL);
INSERT INTO `shopping_buyer_users` VALUES (1427, 'oe4cw5SqcrfuMd-miDPYK_KGL8sI', 193, NULL, NULL);
INSERT INTO `shopping_buyer_users` VALUES (1436, 'oe4cw5SYtSp-5cLXq1rjskWdV0LA', 193, NULL, NULL);
INSERT INTO `shopping_buyer_users` VALUES (1521, 'oe4cw5XQT-CmSH9rJkj4tL8LY-7Q', 193, NULL, NULL);
INSERT INTO `shopping_buyer_users` VALUES (1557, 'oe4cw5ZCHNHgHPCkAquofokyKQTE', 193, NULL, NULL);
INSERT INTO `shopping_buyer_users` VALUES (1558, 'oe4cw5U7Wcho2BTft8VgkWh7C4O8', 193, NULL, NULL);
INSERT INTO `shopping_buyer_users` VALUES (1581, 'oe4cw5VbEqnuIE73_2c0U_eb4AXo', 193, NULL, NULL);
INSERT INTO `shopping_buyer_users` VALUES (1584, 'oe4cw5alcAE4SCwQPuS71zC4iC70', 193, NULL, NULL);
INSERT INTO `shopping_buyer_users` VALUES (1593, 'oe4cw5aZ5fPjfEIh2ifBE50OYsRU', 193, NULL, NULL);
INSERT INTO `shopping_buyer_users` VALUES (1710, 'oe4cw5RKTC0r4gyRF2SgSYafEE3A', 193, NULL, NULL);
INSERT INTO `shopping_buyer_users` VALUES (1757, 'oe4cw5ZID8ACKccLn-ZvOhVNtcvQ', 193, NULL, NULL);
INSERT INTO `shopping_buyer_users` VALUES (1765, 'oe4cw5TdKirTcHVV7FQ8btQBvtBs', 193, NULL, NULL);
INSERT INTO `shopping_buyer_users` VALUES (1766, 'oe4cw5VYEZbCe5KLbbLKZbWBXnBc', 193, NULL, NULL);
INSERT INTO `shopping_buyer_users` VALUES (1778, 'oe4cw5XmELuLiE89A2yBSdNt9m8s', 158, NULL, NULL);
INSERT INTO `shopping_buyer_users` VALUES (1818, 'oe4cw5cgUj_k0h7Buk3vRmvDfSxw', 162, NULL, NULL);
INSERT INTO `shopping_buyer_users` VALUES (1868, 'oe4cw5WSo1nbJuO-r2Ei0ped9LEM', 193, NULL, NULL);
INSERT INTO `shopping_buyer_users` VALUES (2027, 'oe4cw5V-PZ5J3PoHsocPZ2EaQzu4', 183, NULL, NULL);
INSERT INTO `shopping_buyer_users` VALUES (2191, 'oe4cw5Ung3WM12lGmMkcyj-p-tEA', 183, NULL, NULL);
INSERT INTO `shopping_buyer_users` VALUES (2215, 'oe4cw5XReImW2V9YUstQAjC0L7XA', 183, NULL, NULL);
INSERT INTO `shopping_buyer_users` VALUES (2252, 'oe4cw5VO0K6UHylgs8lxtVrKlJmA', 193, NULL, NULL);
INSERT INTO `shopping_buyer_users` VALUES (2266, 'oe4cw5aNJGUGwY-YlNK5E_za_9Wk', 193, NULL, NULL);
INSERT INTO `shopping_buyer_users` VALUES (2268, 'oe4cw5eQw245HrxMvqLVTx19PnYA', 193, NULL, NULL);
INSERT INTO `shopping_buyer_users` VALUES (2325, 'oe4cw5S-Zj1T6Lu515-6ggBsPWVE', 183, NULL, NULL);
INSERT INTO `shopping_buyer_users` VALUES (2356, 'oe4cw5asU_26iiVxDHrF6cfRwT1Y', 183, NULL, NULL);
INSERT INTO `shopping_buyer_users` VALUES (2369, 'oe4cw5fK4kz8IUoJc_y1OB-7KaTY', 183, NULL, NULL);
INSERT INTO `shopping_buyer_users` VALUES (2375, 'oe4cw5R3M7LhmPagP4Tn9KG-bodk', 183, NULL, NULL);
INSERT INTO `shopping_buyer_users` VALUES (2378, 'oe4cw5Uy8o7VuxlO1ssmJRUTtnS8', 183, NULL, NULL);
INSERT INTO `shopping_buyer_users` VALUES (2381, 'oe4cw5XnracgM7NEAm2Pmuq8V8cE', 183, NULL, NULL);
INSERT INTO `shopping_buyer_users` VALUES (2383, 'oe4cw5VhVKDcC6-Oc1Ux_jK31ZXM', 183, NULL, NULL);
INSERT INTO `shopping_buyer_users` VALUES (2388, 'oe4cw5eIfRv5mqOsIkXhfbdGhboo', 183, NULL, NULL);
INSERT INTO `shopping_buyer_users` VALUES (2401, 'oe4cw5aW0xgcBWVz_QqqoAqlhWIw', 183, NULL, NULL);
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
