/*
 Navicat Premium Data Transfer

 Source Server         : mysql5.6
 Source Server Type    : MySQL
 Source Server Version : 50620
 Source Host           : localhost:3306
 Source Schema         : tiaozao

 Target Server Type    : MySQL
 Target Server Version : 50620
 File Encoding         : 65001

 Date: 30/08/2022 23:19:44
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for auth_group
-- ----------------------------
DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE `auth_group`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `name`(`name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for auth_group_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE `auth_group_permissions`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_group_permissions_group_id_permission_id_0cd325b0_uniq`(`group_id`, `permission_id`) USING BTREE,
  INDEX `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm`(`permission_id`) USING BTREE,
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for auth_permission
-- ----------------------------
DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE `auth_permission`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_permission_content_type_id_codename_01ab375a_uniq`(`content_type_id`, `codename`) USING BTREE,
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 52 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of auth_permission
-- ----------------------------
INSERT INTO `auth_permission` VALUES (1, 'Can add log entry', 1, 'add_logentry');
INSERT INTO `auth_permission` VALUES (2, 'Can change log entry', 1, 'change_logentry');
INSERT INTO `auth_permission` VALUES (3, 'Can delete log entry', 1, 'delete_logentry');
INSERT INTO `auth_permission` VALUES (4, 'Can add permission', 2, 'add_permission');
INSERT INTO `auth_permission` VALUES (5, 'Can change permission', 2, 'change_permission');
INSERT INTO `auth_permission` VALUES (6, 'Can delete permission', 2, 'delete_permission');
INSERT INTO `auth_permission` VALUES (7, 'Can add group', 3, 'add_group');
INSERT INTO `auth_permission` VALUES (8, 'Can change group', 3, 'change_group');
INSERT INTO `auth_permission` VALUES (9, 'Can delete group', 3, 'delete_group');
INSERT INTO `auth_permission` VALUES (10, 'Can add user', 4, 'add_user');
INSERT INTO `auth_permission` VALUES (11, 'Can change user', 4, 'change_user');
INSERT INTO `auth_permission` VALUES (12, 'Can delete user', 4, 'delete_user');
INSERT INTO `auth_permission` VALUES (13, 'Can add content type', 5, 'add_contenttype');
INSERT INTO `auth_permission` VALUES (14, 'Can change content type', 5, 'change_contenttype');
INSERT INTO `auth_permission` VALUES (15, 'Can delete content type', 5, 'delete_contenttype');
INSERT INTO `auth_permission` VALUES (16, 'Can add 商品', 6, 'add_goodsinfo');
INSERT INTO `auth_permission` VALUES (17, 'Can change 商品', 6, 'change_goodsinfo');
INSERT INTO `auth_permission` VALUES (18, 'Can delete 商品', 6, 'delete_goodsinfo');
INSERT INTO `auth_permission` VALUES (19, 'Can add 商品类型', 7, 'add_typeinfo');
INSERT INTO `auth_permission` VALUES (20, 'Can change 商品类型', 7, 'change_typeinfo');
INSERT INTO `auth_permission` VALUES (21, 'Can delete 商品类型', 7, 'delete_typeinfo');
INSERT INTO `auth_permission` VALUES (22, 'Can add 评论回复', 8, 'add_contentchart');
INSERT INTO `auth_permission` VALUES (23, 'Can change 评论回复', 8, 'change_contentchart');
INSERT INTO `auth_permission` VALUES (24, 'Can delete 评论回复', 8, 'delete_contentchart');
INSERT INTO `auth_permission` VALUES (25, 'Can add 商品评论', 9, 'add_goodscontent');
INSERT INTO `auth_permission` VALUES (26, 'Can change 商品评论', 9, 'change_goodscontent');
INSERT INTO `auth_permission` VALUES (27, 'Can delete 商品评论', 9, 'delete_goodscontent');
INSERT INTO `auth_permission` VALUES (28, 'Can add 用户信息', 10, 'add_userinfo');
INSERT INTO `auth_permission` VALUES (29, 'Can change 用户信息', 10, 'change_userinfo');
INSERT INTO `auth_permission` VALUES (30, 'Can delete 用户信息', 10, 'delete_userinfo');
INSERT INTO `auth_permission` VALUES (31, 'Can add 用户浏览记录', 11, 'add_goodsbrowser');
INSERT INTO `auth_permission` VALUES (32, 'Can change 用户浏览记录', 11, 'change_goodsbrowser');
INSERT INTO `auth_permission` VALUES (33, 'Can delete 用户浏览记录', 11, 'delete_goodsbrowser');
INSERT INTO `auth_permission` VALUES (34, 'Can add 用户消息', 12, 'add_information');
INSERT INTO `auth_permission` VALUES (35, 'Can change 用户消息', 12, 'change_information');
INSERT INTO `auth_permission` VALUES (36, 'Can delete 用户消息', 12, 'delete_information');
INSERT INTO `auth_permission` VALUES (37, 'Can add 退款订单', 13, 'add_tuihuoinfo');
INSERT INTO `auth_permission` VALUES (38, 'Can change 退款订单', 13, 'change_tuihuoinfo');
INSERT INTO `auth_permission` VALUES (39, 'Can delete 退款订单', 13, 'delete_tuihuoinfo');
INSERT INTO `auth_permission` VALUES (40, 'Can add session', 14, 'add_session');
INSERT INTO `auth_permission` VALUES (41, 'Can change session', 14, 'change_session');
INSERT INTO `auth_permission` VALUES (42, 'Can delete session', 14, 'delete_session');
INSERT INTO `auth_permission` VALUES (43, 'Can add 购物车', 15, 'add_cartinfo');
INSERT INTO `auth_permission` VALUES (44, 'Can change 购物车', 15, 'change_cartinfo');
INSERT INTO `auth_permission` VALUES (45, 'Can delete 购物车', 15, 'delete_cartinfo');
INSERT INTO `auth_permission` VALUES (46, 'Can add 付款订单', 16, 'add_orderdetailinfo');
INSERT INTO `auth_permission` VALUES (47, 'Can change 付款订单', 16, 'change_orderdetailinfo');
INSERT INTO `auth_permission` VALUES (48, 'Can delete 付款订单', 16, 'delete_orderdetailinfo');
INSERT INTO `auth_permission` VALUES (49, 'Can add 未付款订单', 17, 'add_orderinfo');
INSERT INTO `auth_permission` VALUES (50, 'Can change 未付款订单', 17, 'change_orderinfo');
INSERT INTO `auth_permission` VALUES (51, 'Can delete 未付款订单', 17, 'delete_orderinfo');

-- ----------------------------
-- Table structure for auth_user
-- ----------------------------
DROP TABLE IF EXISTS `auth_user`;
CREATE TABLE `auth_user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `last_login` datetime(6) NULL DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `first_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `last_name` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `email` varchar(254) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `username`(`username`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of auth_user
-- ----------------------------
INSERT INTO `auth_user` VALUES (1, 'pbkdf2_sha256$100000$KYaTpJUt0JtX$ClMoSQl+CJhaYWmpmjKUA0GiKtzV/7Xgw0cqZM2Y8NU=', '2022-08-30 23:00:22.560066', 1, 'admin', '', '', '2753398955@qq.com', 1, 1, '2022-03-22 22:00:15.631627');

-- ----------------------------
-- Table structure for auth_user_groups
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_groups`;
CREATE TABLE `auth_user_groups`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_user_groups_user_id_group_id_94350c0c_uniq`(`user_id`, `group_id`) USING BTREE,
  INDEX `auth_user_groups_group_id_97559544_fk_auth_group_id`(`group_id`) USING BTREE,
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for auth_user_user_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_user_permissions`;
CREATE TABLE `auth_user_user_permissions`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq`(`user_id`, `permission_id`) USING BTREE,
  INDEX `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm`(`permission_id`) USING BTREE,
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for df_cart_cartinfo
-- ----------------------------
DROP TABLE IF EXISTS `df_cart_cartinfo`;
CREATE TABLE `df_cart_cartinfo`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `count` int(11) NOT NULL,
  `goods_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `df_cart_cartinfo_goods_id_4357294f_fk_df_goods_goodsinfo_id`(`goods_id`) USING BTREE,
  INDEX `df_cart_cartinfo_user_id_db76e708_fk_df_user_userinfo_id`(`user_id`) USING BTREE,
  CONSTRAINT `df_cart_cartinfo_goods_id_4357294f_fk_df_goods_goodsinfo_id` FOREIGN KEY (`goods_id`) REFERENCES `df_goods_goodsinfo` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `df_cart_cartinfo_user_id_db76e708_fk_df_user_userinfo_id` FOREIGN KEY (`user_id`) REFERENCES `df_user_userinfo` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of df_cart_cartinfo
-- ----------------------------
INSERT INTO `df_cart_cartinfo` VALUES (1, 1, 2, 1);

-- ----------------------------
-- Table structure for df_goods_contentchart
-- ----------------------------
DROP TABLE IF EXISTS `df_goods_contentchart`;
CREATE TABLE `df_goods_contentchart`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `isDelete` tinyint(1) NOT NULL,
  `ctitle` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `cusername` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `cusername1` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `ccontent_chart` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `date_publish` datetime(6) NOT NULL,
  `ccontent_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `df_goods_contentchar_ccontent_id_b10a0757_fk_df_goods_`(`ccontent_id`) USING BTREE,
  CONSTRAINT `df_goods_contentchar_ccontent_id_b10a0757_fk_df_goods_` FOREIGN KEY (`ccontent_id`) REFERENCES `df_goods_goodscontent` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for df_goods_goodscontent
-- ----------------------------
DROP TABLE IF EXISTS `df_goods_goodscontent`;
CREATE TABLE `df_goods_goodscontent`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `isDelete` tinyint(1) NOT NULL,
  `ctitle` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `cpic` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `cusername` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `clogo` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `cuser_content` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `date_publish` datetime(6) NOT NULL,
  `cgoodsname_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `df_goods_goodsconten_cgoodsname_id_a19f6072_fk_df_goods_`(`cgoodsname_id`) USING BTREE,
  CONSTRAINT `df_goods_goodsconten_cgoodsname_id_a19f6072_fk_df_goods_` FOREIGN KEY (`cgoodsname_id`) REFERENCES `df_goods_goodsinfo` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of df_goods_goodscontent
-- ----------------------------
INSERT INTO `df_goods_goodscontent` VALUES (1, 0, '三国演义', '', 'STU001', '123', '', '2022-03-22 22:27:00.000000', 1);
INSERT INTO `df_goods_goodscontent` VALUES (2, 0, 'python编程', '', 'user1', 'images/8.jpg', '不错不错，图书质量好，五星好评！', '2022-08-30 20:52:30.883236', 4);
INSERT INTO `df_goods_goodscontent` VALUES (3, 0, '自行车', 'df_goods/image/2022/08/13.jpg', 'user1', 'images/8.jpg', '自行车很好骑！', '2022-08-30 23:11:34.120828', 7);
INSERT INTO `df_goods_goodscontent` VALUES (4, 0, '自行车', '', 'user1', 'images/8.jpg', '不错哦！', '2022-08-30 23:12:04.543913', 7);

-- ----------------------------
-- Table structure for df_goods_goodsinfo
-- ----------------------------
DROP TABLE IF EXISTS `df_goods_goodsinfo`;
CREATE TABLE `df_goods_goodsinfo`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `isDelete` tinyint(1) NOT NULL,
  `gtitle` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `gpic` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `gprice` decimal(7, 2) NOT NULL,
  `gunit` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `gclick` int(11) NOT NULL,
  `gjianjie` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `gkucun` int(11) NOT NULL,
  `gcontent` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `gtype_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `df_goods_goodsinfo_gtitle_8ec0f32b_uniq`(`gtitle`) USING BTREE,
  INDEX `df_goods_goodsinfo_gtype_id_63a02cef_fk_df_goods_typeinfo_id`(`gtype_id`) USING BTREE,
  CONSTRAINT `df_goods_goodsinfo_gtype_id_63a02cef_fk_df_goods_typeinfo_id` FOREIGN KEY (`gtype_id`) REFERENCES `df_goods_typeinfo` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of df_goods_goodsinfo
-- ----------------------------
INSERT INTO `df_goods_goodsinfo` VALUES (1, 0, '三国演义', 'df_goods/image/2022/03/timg1JUIM2JF_YEorHUM.jpg', 45.00, '123456', 9, '三国', 2, '<p>全新</p>', 1);
INSERT INTO `df_goods_goodsinfo` VALUES (2, 0, '热水壶', 'df_goods/image/2022/03/wKhQcFQltNGECKMlAAAAALfHYn08931_qsefUE1.jpg', 23.00, '123456', 6, '功能完好', 0, '<p>111</p>', 2);
INSERT INTO `df_goods_goodsinfo` VALUES (3, 0, '裙子', 'df_goods/image/2022/03/timg6_oe1Z1gN.jpg', 34.00, '123456', 2, '宝宝用', 0, '<p>裙子</p>', 3);
INSERT INTO `df_goods_goodsinfo` VALUES (4, 0, 'python编程', 'df_goods/image/2022/03/1550291347_24003310-1_w_7_vdKDVAU.jpg', 1.00, 'STU001', 10, '111', 0, '<p>讲解python入门到精通</p>', 1);
INSERT INTO `df_goods_goodsinfo` VALUES (5, 0, '笔记本', 'df_goods/image/2022/03/G4Cxrrbz8HxCmrIipKEKl01Xu-7042.w5441.jpg', 2300.00, 'STU001', 0, '用了一个月', 2, '九成新', 6);
INSERT INTO `df_goods_goodsinfo` VALUES (6, 0, '吉他', 'df_goods/image/2022/03/139331061389381.png', 120.00, 'STU001', 0, '自用款，喜欢带走吧', 2, '吉他', 5);
INSERT INTO `df_goods_goodsinfo` VALUES (7, 0, '自行车', 'df_goods/image/2022/03/20614752_110950970000_21_5uVuuZv.jpg', 120.00, 'STU001', 4, '性能很好', 1, '123', 4);
INSERT INTO `df_goods_goodsinfo` VALUES (8, 0, '西游记', 'df_goods/image/2022/03/u37687401182449866431fm26gp01_id2OIrU.jpg', 45.00, 'STU001', 0, '西游记', 2, '西游记', 1);
INSERT INTO `df_goods_goodsinfo` VALUES (9, 0, '新西游记', 'df_goods/image/2022/03/u37687401182449866431fm26gp01_HIzheq8.jpg', 45.00, 'STU001', 2, '新西游记', 2, '新西游记', 1);

-- ----------------------------
-- Table structure for df_goods_typeinfo
-- ----------------------------
DROP TABLE IF EXISTS `df_goods_typeinfo`;
CREATE TABLE `df_goods_typeinfo`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `isDelete` tinyint(1) NOT NULL,
  `ttitle` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of df_goods_typeinfo
-- ----------------------------
INSERT INTO `df_goods_typeinfo` VALUES (1, 0, '书籍');
INSERT INTO `df_goods_typeinfo` VALUES (2, 0, '家电');
INSERT INTO `df_goods_typeinfo` VALUES (3, 0, '衣物');
INSERT INTO `df_goods_typeinfo` VALUES (4, 0, '出行');
INSERT INTO `df_goods_typeinfo` VALUES (5, 0, '乐器');
INSERT INTO `df_goods_typeinfo` VALUES (6, 0, '智能');

-- ----------------------------
-- Table structure for df_order_orderdetailinfo
-- ----------------------------
DROP TABLE IF EXISTS `df_order_orderdetailinfo`;
CREATE TABLE `df_order_orderdetailinfo`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `price` decimal(6, 2) NOT NULL,
  `count` int(11) NOT NULL,
  `goods_id` int(11) NOT NULL,
  `order_id` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `datatime` datetime(6) NOT NULL,
  `shopername` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `username` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `df_order_orderdetail_goods_id_d0acef4d_fk_df_goods_`(`goods_id`) USING BTREE,
  INDEX `df_order_orderdetail_order_id_b91dcf67_fk_df_order_`(`order_id`) USING BTREE,
  CONSTRAINT `df_order_orderdetail_goods_id_d0acef4d_fk_df_goods_` FOREIGN KEY (`goods_id`) REFERENCES `df_goods_goodsinfo` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `df_order_orderdetail_order_id_b91dcf67_fk_df_order_` FOREIGN KEY (`order_id`) REFERENCES `df_order_orderinfo` (`oid`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of df_order_orderdetailinfo
-- ----------------------------
INSERT INTO `df_order_orderdetailinfo` VALUES (1, 56.00, 1, 1, '2345678909876', '2022-03-22 22:32:00.000000', '123456', 'STU001');
INSERT INTO `df_order_orderdetailinfo` VALUES (2, 1.00, 1, 4, '202208302047597', '2022-08-30 20:47:59.151396', 'STU001', 'user1');
INSERT INTO `df_order_orderdetailinfo` VALUES (3, 23.00, 1, 2, '202208302047597', '2022-08-30 20:47:59.161923', '123456', 'user1');
INSERT INTO `df_order_orderdetailinfo` VALUES (4, 34.00, 1, 3, '202208302306177', '2022-08-30 23:06:17.918636', '123456', 'user1');
INSERT INTO `df_order_orderdetailinfo` VALUES (5, 120.00, 1, 7, '202208302306177', '2022-08-30 23:06:17.925154', 'STU001', 'user1');

-- ----------------------------
-- Table structure for df_order_orderinfo
-- ----------------------------
DROP TABLE IF EXISTS `df_order_orderinfo`;
CREATE TABLE `df_order_orderinfo`  (
  `oid` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `odate` datetime(6) NOT NULL,
  `oIsPay` tinyint(1) NOT NULL,
  `ototal` decimal(8, 2) NOT NULL,
  `oaddress` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`oid`) USING BTREE,
  INDEX `df_order_orderinfo_user_id_2d705949_fk_df_user_userinfo_id`(`user_id`) USING BTREE,
  CONSTRAINT `df_order_orderinfo_user_id_2d705949_fk_df_user_userinfo_id` FOREIGN KEY (`user_id`) REFERENCES `df_user_userinfo` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of df_order_orderinfo
-- ----------------------------
INSERT INTO `df_order_orderinfo` VALUES ('202208302047597', '2022-08-30 20:47:59.149891', 0, 34.00, '成都市红星路10号', 7);
INSERT INTO `df_order_orderinfo` VALUES ('202208302306177', '2022-08-30 23:06:17.917632', 0, 164.00, '成都市红星路10号', 7);
INSERT INTO `df_order_orderinfo` VALUES ('2345678909876', '2022-03-22 22:33:47.912237', 0, 56.00, '111111', 2);

-- ----------------------------
-- Table structure for df_user_goodsbrowser
-- ----------------------------
DROP TABLE IF EXISTS `df_user_goodsbrowser`;
CREATE TABLE `df_user_goodsbrowser`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `browser_time` datetime(6) NOT NULL,
  `good_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `df_user_goodsbrowser_good_id_81bbd6f5_fk_df_goods_goodsinfo_id`(`good_id`) USING BTREE,
  INDEX `df_user_goodsbrowser_user_id_b7a661a4_fk_df_user_userinfo_id`(`user_id`) USING BTREE,
  CONSTRAINT `df_user_goodsbrowser_good_id_81bbd6f5_fk_df_goods_goodsinfo_id` FOREIGN KEY (`good_id`) REFERENCES `df_goods_goodsinfo` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `df_user_goodsbrowser_user_id_b7a661a4_fk_df_user_userinfo_id` FOREIGN KEY (`user_id`) REFERENCES `df_user_userinfo` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of df_user_goodsbrowser
-- ----------------------------
INSERT INTO `df_user_goodsbrowser` VALUES (1, '2022-03-22 23:17:05.847174', 1, 1);
INSERT INTO `df_user_goodsbrowser` VALUES (2, '2022-03-22 23:17:54.218882', 2, 1);
INSERT INTO `df_user_goodsbrowser` VALUES (3, '2022-03-22 23:18:21.130023', 4, 1);
INSERT INTO `df_user_goodsbrowser` VALUES (4, '2022-03-22 23:18:15.560808', 3, 1);
INSERT INTO `df_user_goodsbrowser` VALUES (5, '2022-08-30 20:52:36.684223', 4, 7);
INSERT INTO `df_user_goodsbrowser` VALUES (6, '2022-08-30 20:37:13.837927', 2, 7);
INSERT INTO `df_user_goodsbrowser` VALUES (7, '2022-08-30 22:42:15.223383', 9, 7);
INSERT INTO `df_user_goodsbrowser` VALUES (8, '2022-08-30 23:02:31.494191', 3, 7);
INSERT INTO `df_user_goodsbrowser` VALUES (9, '2022-08-30 23:12:12.618082', 7, 7);

-- ----------------------------
-- Table structure for df_user_information
-- ----------------------------
DROP TABLE IF EXISTS `df_user_information`;
CREATE TABLE `df_user_information`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `isDelete` tinyint(1) NOT NULL,
  `ctitle` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `cusername` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `cusername1` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `ccontent_chart` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `ccheck` tinyint(1) NOT NULL,
  `date_publish` datetime(6) NOT NULL,
  `cinformation_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `df_user_information_cinformation_id_ead36b05_fk_df_user_u`(`cinformation_id`) USING BTREE,
  CONSTRAINT `df_user_information_cinformation_id_ead36b05_fk_df_user_u` FOREIGN KEY (`cinformation_id`) REFERENCES `df_user_userinfo` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of df_user_information
-- ----------------------------
INSERT INTO `df_user_information` VALUES (1, 1, '三国演义', 'STU001', '123456', 'hhh', 1, '2022-03-22 22:47:12.000000', 1);
INSERT INTO `df_user_information` VALUES (2, 0, '问下老板，这个python书籍包邮吗？', 'user1', 'STU001', '我想买这个书可以包邮吗，最近手里紧！', 1, '2022-08-30 20:43:12.818202', 2);
INSERT INTO `df_user_information` VALUES (3, 0, '', 'STU001', 'user1', '可以的，你拍吧，亲', 1, '2022-08-30 20:43:42.362219', 7);
INSERT INTO `df_user_information` VALUES (4, 0, '', 'STU001', 'user1', '拍了今天给你发货哦！', 1, '2022-08-30 20:46:16.773517', 7);
INSERT INTO `df_user_information` VALUES (5, 0, '这个自行车轮子尺寸多大？', 'user1', 'STU001', '我儿子15岁可以骑吗，他1米6了', 1, '2022-08-30 23:04:29.565635', 2);
INSERT INTO `df_user_information` VALUES (6, 0, '', 'STU001', 'user1', '可以，轮子适合它！', 1, '2022-08-30 23:05:22.327703', 7);

-- ----------------------------
-- Table structure for df_user_tuihuoinfo
-- ----------------------------
DROP TABLE IF EXISTS `df_user_tuihuoinfo`;
CREATE TABLE `df_user_tuihuoinfo`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `isDelete` tinyint(1) NOT NULL,
  `title` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `username` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `username1` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `person_number` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `order_number` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `kuaidi` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `kuaidi_number` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `address` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `address1` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `text` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `passOrdefault` tinyint(1) NOT NULL,
  `date_publish` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of df_user_tuihuoinfo
-- ----------------------------
INSERT INTO `df_user_tuihuoinfo` VALUES (1, 1, '三国演义', 'STU001', '123456', '123456123412341234', '1111111333', '54321222223', '1222222', '1111', '11222', '111', 1, '2022-03-22 23:05:38.000000');

-- ----------------------------
-- Table structure for df_user_userinfo
-- ----------------------------
DROP TABLE IF EXISTS `df_user_userinfo`;
CREATE TABLE `df_user_userinfo`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uname` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `upwd` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `uemail` varchar(254) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `ushou` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `uaddress` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `uyoubian` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `uphone` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `uage` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `ucheck_passOrfail` tinyint(1) NOT NULL,
  `ulogo` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `uname_passOrfail` tinyint(1) NOT NULL,
  `upersonInf` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `urealname` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `usex` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `uzhengjian_img` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `uzhengjian_tel` varchar(18) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `uzhengjian_type` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `df_user_userinfo_uemail_da079075_uniq`(`uemail`) USING BTREE,
  UNIQUE INDEX `df_user_userinfo_uname_feb27ea0_uniq`(`uname`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of df_user_userinfo
-- ----------------------------
INSERT INTO `df_user_userinfo` VALUES (1, '123456', '7c4a8d09ca3762af61e59520943dc26494f8941b', '11111111@qq.com', '123456', '广东江门', '000000', '12312341234', '23', 1, 'images/IMG_20223221.jpg', 1, '佛系小姐姐', '薇薇', '女', 'images/zhengjian_img/img-4746dcc90757a511c5e65e8ed5d1fd08.jpg', '234512123412341234', '身份证');
INSERT INTO `df_user_userinfo` VALUES (2, 'STU001', '7c4a8d09ca3762af61e59520943dc26494f8941b', '2222222@qq.com', '广东江门', '广东江门', '000000', '12341234123', '24', 0, 'images/42NH7XQ161XVN28PRIQ0P_KV9PrXF.png', 1, 'hello', 'Jack', '男', 'images/zhengjian_img/IMG_20200908_095453_JHFuswa.jpg', '123456123412241234', '身份证');
INSERT INTO `df_user_userinfo` VALUES (5, '123aaa', '7c4a8d09ca3762af61e59520943dc26494f8941b', '33333@163.com', '', '', '', '', '', 0, 'default.jpg', 1, '', '', '', '', '', '');
INSERT INTO `df_user_userinfo` VALUES (6, 'customer', '7c4a8d09ca3762af61e59520943dc26494f8941b', '4444444@qq.com', '', '', '', '', '', 0, 'default.jpg', 1, '', '', '', '', '', '');
INSERT INTO `df_user_userinfo` VALUES (7, 'user1', '7c4a8d09ca3762af61e59520943dc26494f8941b', 'test@126.com', '张三', '成都市红星路10号', 'test@1', '13511112222', '24', 1, 'images/8.jpg', 1, '我是一个快乐的程序员', '张三', '男', 'images/zhengjian_img/18.jpg', '513031199210213943', '大陆身份证');

-- ----------------------------
-- Table structure for django_admin_log
-- ----------------------------
DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE `django_admin_log`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `object_repr` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content_type_id` int(11) NULL DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `django_admin_log_content_type_id_c4bce8eb_fk_django_co`(`content_type_id`) USING BTREE,
  INDEX `django_admin_log_user_id_c564eba6_fk_auth_user_id`(`user_id`) USING BTREE,
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 23 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of django_admin_log
-- ----------------------------
INSERT INTO `django_admin_log` VALUES (1, '2022-03-22 22:05:15.138934', '1', '书籍', 1, '[{\"added\": {}}]', 7, 1);
INSERT INTO `django_admin_log` VALUES (2, '2022-03-22 22:05:24.929736', '2', '家电', 1, '[{\"added\": {}}]', 7, 1);
INSERT INTO `django_admin_log` VALUES (3, '2022-03-22 22:05:31.526088', '3', '衣物', 1, '[{\"added\": {}}]', 7, 1);
INSERT INTO `django_admin_log` VALUES (4, '2022-03-22 22:05:39.467840', '4', '出行', 1, '[{\"added\": {}}]', 7, 1);
INSERT INTO `django_admin_log` VALUES (5, '2022-03-22 22:05:46.234388', '5', '乐器', 1, '[{\"added\": {}}]', 7, 1);
INSERT INTO `django_admin_log` VALUES (6, '2022-03-22 22:05:51.697314', '6', '智能', 1, '[{\"added\": {}}]', 7, 1);
INSERT INTO `django_admin_log` VALUES (7, '2022-03-22 22:17:38.717051', '1', '123456', 2, '[{\"changed\": {\"fields\": [\"usex\", \"uage\", \"upersonInf\", \"ulogo\", \"urealname\", \"uzhengjian_type\", \"uzhengjian_tel\", \"uzhengjian_img\", \"ucheck_passOrfail\"]}}]', 10, 1);
INSERT INTO `django_admin_log` VALUES (8, '2022-03-22 22:19:38.913180', '2', 'STU001', 2, '[{\"changed\": {\"fields\": [\"usex\", \"uage\", \"upersonInf\", \"ulogo\", \"urealname\", \"uzhengjian_type\", \"uzhengjian_tel\", \"uzhengjian_img\", \"ushou\", \"uaddress\", \"uyoubian\", \"uphone\"]}}]', 10, 1);
INSERT INTO `django_admin_log` VALUES (9, '2022-03-22 22:28:23.961431', '1', '三国演义', 1, '[{\"added\": {}}]', 9, 1);
INSERT INTO `django_admin_log` VALUES (10, '2022-03-22 22:33:47.920213', '2345678909876', 'STU001在的订单2022-03-22 22:33:47.912237', 1, '[{\"added\": {}}]', 17, 1);
INSERT INTO `django_admin_log` VALUES (11, '2022-03-22 22:33:56.517295', '1', '三国演义(数量为1)', 1, '[{\"added\": {}}]', 16, 1);
INSERT INTO `django_admin_log` VALUES (12, '2022-03-22 22:53:14.896958', '4', 'python编程', 1, '[{\"added\": {}}]', 6, 1);
INSERT INTO `django_admin_log` VALUES (13, '2022-03-22 22:54:36.293270', '1', '三国演义', 2, '[{\"changed\": {\"fields\": [\"gpic\", \"gcontent\"]}}]', 6, 1);
INSERT INTO `django_admin_log` VALUES (14, '2022-03-22 22:55:17.648045', '3', '裙子', 2, '[{\"changed\": {\"fields\": [\"gpic\", \"gcontent\"]}}]', 6, 1);
INSERT INTO `django_admin_log` VALUES (15, '2022-03-22 22:55:30.887654', '2', '热水壶', 2, '[{\"changed\": {\"fields\": [\"gpic\", \"gcontent\"]}}]', 6, 1);
INSERT INTO `django_admin_log` VALUES (16, '2022-03-22 22:55:58.224537', '1', '三国演义', 2, '[{\"changed\": {\"fields\": [\"gpic\"]}}]', 6, 1);
INSERT INTO `django_admin_log` VALUES (17, '2022-03-22 23:15:09.591371', '1', '三国演义', 2, '[{\"changed\": {\"fields\": [\"gpic\"]}}]', 6, 1);
INSERT INTO `django_admin_log` VALUES (18, '2022-03-22 23:15:23.459266', '4', 'python编程', 2, '[{\"changed\": {\"fields\": [\"gpic\"]}}]', 6, 1);
INSERT INTO `django_admin_log` VALUES (19, '2022-03-22 23:15:35.461698', '3', '裙子', 2, '[{\"changed\": {\"fields\": [\"gpic\"]}}]', 6, 1);
INSERT INTO `django_admin_log` VALUES (20, '2022-03-22 23:15:46.946822', '2', '热水壶', 2, '[{\"changed\": {\"fields\": [\"gpic\"]}}]', 6, 1);
INSERT INTO `django_admin_log` VALUES (21, '2022-03-22 23:16:44.875197', '2', 'STU001', 2, '[{\"changed\": {\"fields\": [\"ulogo\"]}}]', 10, 1);
INSERT INTO `django_admin_log` VALUES (22, '2022-08-30 20:31:49.798256', '7', 'user1', 2, '[{\"changed\": {\"fields\": [\"ucheck_passOrfail\"]}}]', 10, 1);

-- ----------------------------
-- Table structure for django_content_type
-- ----------------------------
DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE `django_content_type`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `model` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `django_content_type_app_label_model_76bd3d3b_uniq`(`app_label`, `model`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 18 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of django_content_type
-- ----------------------------
INSERT INTO `django_content_type` VALUES (1, 'admin', 'logentry');
INSERT INTO `django_content_type` VALUES (3, 'auth', 'group');
INSERT INTO `django_content_type` VALUES (2, 'auth', 'permission');
INSERT INTO `django_content_type` VALUES (4, 'auth', 'user');
INSERT INTO `django_content_type` VALUES (5, 'contenttypes', 'contenttype');
INSERT INTO `django_content_type` VALUES (15, 'df_cart', 'cartinfo');
INSERT INTO `django_content_type` VALUES (8, 'df_goods', 'contentchart');
INSERT INTO `django_content_type` VALUES (9, 'df_goods', 'goodscontent');
INSERT INTO `django_content_type` VALUES (6, 'df_goods', 'goodsinfo');
INSERT INTO `django_content_type` VALUES (7, 'df_goods', 'typeinfo');
INSERT INTO `django_content_type` VALUES (16, 'df_order', 'orderdetailinfo');
INSERT INTO `django_content_type` VALUES (17, 'df_order', 'orderinfo');
INSERT INTO `django_content_type` VALUES (11, 'df_user', 'goodsbrowser');
INSERT INTO `django_content_type` VALUES (12, 'df_user', 'information');
INSERT INTO `django_content_type` VALUES (13, 'df_user', 'tuihuoinfo');
INSERT INTO `django_content_type` VALUES (10, 'df_user', 'userinfo');
INSERT INTO `django_content_type` VALUES (14, 'sessions', 'session');

-- ----------------------------
-- Table structure for django_migrations
-- ----------------------------
DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE `django_migrations`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 23 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of django_migrations
-- ----------------------------
INSERT INTO `django_migrations` VALUES (1, 'contenttypes', '0001_initial', '2022-03-22 21:57:41.113511');
INSERT INTO `django_migrations` VALUES (2, 'auth', '0001_initial', '2022-03-22 21:57:43.787299');
INSERT INTO `django_migrations` VALUES (3, 'admin', '0001_initial', '2022-03-22 21:57:44.009747');
INSERT INTO `django_migrations` VALUES (4, 'admin', '0002_logentry_remove_auto_add', '2022-03-22 21:57:44.019675');
INSERT INTO `django_migrations` VALUES (5, 'contenttypes', '0002_remove_content_type_name', '2022-03-22 21:57:44.168277');
INSERT INTO `django_migrations` VALUES (6, 'auth', '0002_alter_permission_name_max_length', '2022-03-22 21:57:44.255045');
INSERT INTO `django_migrations` VALUES (7, 'auth', '0003_alter_user_email_max_length', '2022-03-22 21:57:44.355776');
INSERT INTO `django_migrations` VALUES (8, 'auth', '0004_alter_user_username_opts', '2022-03-22 21:57:44.366746');
INSERT INTO `django_migrations` VALUES (9, 'auth', '0005_alter_user_last_login_null', '2022-03-22 21:57:44.443541');
INSERT INTO `django_migrations` VALUES (10, 'auth', '0006_require_contenttypes_0002', '2022-03-22 21:57:44.448528');
INSERT INTO `django_migrations` VALUES (11, 'auth', '0007_alter_validators_add_error_messages', '2022-03-22 21:57:44.460495');
INSERT INTO `django_migrations` VALUES (12, 'auth', '0008_alter_user_username_max_length', '2022-03-22 21:57:44.547264');
INSERT INTO `django_migrations` VALUES (13, 'auth', '0009_alter_user_last_name_max_length', '2022-03-22 21:57:44.640015');
INSERT INTO `django_migrations` VALUES (14, 'df_goods', '0001_initial', '2022-03-22 21:57:44.855439');
INSERT INTO `django_migrations` VALUES (15, 'df_goods', '0002_auto_20220322_2157', '2022-03-22 21:58:57.469637');
INSERT INTO `django_migrations` VALUES (16, 'df_user', '0001_initial', '2022-03-22 21:58:57.514516');
INSERT INTO `django_migrations` VALUES (17, 'df_user', '0002_auto_20220322_2157', '2022-03-22 21:58:58.437083');
INSERT INTO `django_migrations` VALUES (18, 'df_cart', '0001_initial', '2022-03-22 21:59:10.954599');
INSERT INTO `django_migrations` VALUES (19, 'df_cart', '0002_auto_20220322_2157', '2022-03-22 21:59:11.263772');
INSERT INTO `django_migrations` VALUES (20, 'df_order', '0001_initial', '2022-03-22 21:59:11.604860');
INSERT INTO `django_migrations` VALUES (21, 'df_order', '0002_auto_20220322_2157', '2022-03-22 21:59:13.904709');
INSERT INTO `django_migrations` VALUES (22, 'sessions', '0001_initial', '2022-03-22 21:59:14.104174');

-- ----------------------------
-- Table structure for django_session
-- ----------------------------
DROP TABLE IF EXISTS `django_session`;
CREATE TABLE `django_session`  (
  `session_key` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `session_data` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`) USING BTREE,
  INDEX `django_session_expire_date_a5c62663`(`expire_date`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of django_session
-- ----------------------------
INSERT INTO `django_session` VALUES ('2c3rh6wsy51m4wn3xcyg2dlg9y02jgnz', 'MDE0NjVkNDQ5N2ZlYjQ3MjdlZmNmZTdiZGZhOWQ0NGY2YmQyNDE5ODp7InZlcmlmeWNvZGUiOiJDZThqIiwidXNlcl9pZCI6MSwidXNlcl9uYW1lIjoiMTIzNDU2In0=', '2022-04-05 22:32:17.218052');
INSERT INTO `django_session` VALUES ('7y3lu8nbdiklr7nemypnc218lzdcts67', 'OTE2NmZjYmQ4NDkzOTRiMmU4MzI3YzY4MDA3NmFkNTVmMDVhZDE5ODp7InZlcmlmeWNvZGUiOiJiYTZ2IiwidXNlcl9pZCI6MiwidXNlcl9uYW1lIjoiU1RVMDAxIn0=', '2022-09-13 20:45:58.322265');
INSERT INTO `django_session` VALUES ('b3kmpt0ahayuaxpb1a507lb3fn2kwwze', 'M2U3NDBjMTQ3MmY2ODc2ZGUyZWYyMDVkMTViOTg3ZTI1N2QzNjcxZDp7InZlcmlmeWNvZGUiOiJzM25lIiwidXNlcl9pZCI6MiwidXNlcl9uYW1lIjoiU1RVMDAxIn0=', '2022-09-13 21:26:34.988457');
INSERT INTO `django_session` VALUES ('ff2eumbnydhk267bnsih7rdj5na3m0en', 'MDA2MGQ2MGYxMmY4N2Q5NWU0OTc5Njk1MWJiZWNjYjE4MWExN2YyNzp7InZlcmlmeWNvZGUiOiJaOUk0In0=', '2022-04-05 23:24:50.040804');
INSERT INTO `django_session` VALUES ('ww02czbadrt061c8xvt3ewcyan7l0qjp', 'OGVkMmNiZTQ3OWU2YThkZDUwNmQyNzhmNDAwMWI3N2Q4ODZhMDA1MDp7InZlcmlmeWNvZGUiOiJZRzJZIiwiX2F1dGhfdXNlcl9pZCI6IjEiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjZmNTkyNzY0MTA1MTI4MjVkN2MxYzJhMjkyOWI5YTg5MzQ3Y2JjNmEiLCJfbWVudXMiOiJbe1wibmFtZVwiOiBcIlxcdTU1NDZcXHU1NGMxXCIsIFwiaWNvblwiOiBcImZhciBmYS1jaXJjbGVcIiwgXCJtb2RlbHNcIjogW3tcIm5hbWVcIjogXCJcXHU1NTQ2XFx1NTRjMVwiLCBcImljb25cIjogXCJmYXIgZmEtY2lyY2xlXCIsIFwidXJsXCI6IFwiL2FkbWluL2RmX2dvb2RzL2dvb2RzaW5mby9cIiwgXCJhZGRVcmxcIjogXCIvYWRtaW4vZGZfZ29vZHMvZ29vZHNpbmZvL2FkZC9cIiwgXCJicmVhZGNydW1ic1wiOiBbe1wibmFtZVwiOiBcIlxcdTU1NDZcXHU1NGMxXCIsIFwiaWNvblwiOiBcImZhciBmYS1jaXJjbGVcIn0sIHtcIm5hbWVcIjogXCJcXHU1NTQ2XFx1NTRjMVwiLCBcImljb25cIjogXCJmYXIgZmEtY2lyY2xlXCJ9XSwgXCJlaWRcIjogMTAwMn0sIHtcIm5hbWVcIjogXCJcXHU1NTQ2XFx1NTRjMVxcdTdjN2JcXHU1NzhiXCIsIFwiaWNvblwiOiBcImZhciBmYS1jaXJjbGVcIiwgXCJ1cmxcIjogXCIvYWRtaW4vZGZfZ29vZHMvdHlwZWluZm8vXCIsIFwiYWRkVXJsXCI6IFwiL2FkbWluL2RmX2dvb2RzL3R5cGVpbmZvL2FkZC9cIiwgXCJicmVhZGNydW1ic1wiOiBbe1wibmFtZVwiOiBcIlxcdTU1NDZcXHU1NGMxXCIsIFwiaWNvblwiOiBcImZhciBmYS1jaXJjbGVcIn0sIHtcIm5hbWVcIjogXCJcXHU1NTQ2XFx1NTRjMVxcdTdjN2JcXHU1NzhiXCIsIFwiaWNvblwiOiBcImZhciBmYS1jaXJjbGVcIn1dLCBcImVpZFwiOiAxMDAzfSwge1wibmFtZVwiOiBcIlxcdTU1NDZcXHU1NGMxXFx1OGJjNFxcdThiYmFcIiwgXCJpY29uXCI6IFwiZmFyIGZhLWNpcmNsZVwiLCBcInVybFwiOiBcIi9hZG1pbi9kZl9nb29kcy9nb29kc2NvbnRlbnQvXCIsIFwiYWRkVXJsXCI6IFwiL2FkbWluL2RmX2dvb2RzL2dvb2RzY29udGVudC9hZGQvXCIsIFwiYnJlYWRjcnVtYnNcIjogW3tcIm5hbWVcIjogXCJcXHU1NTQ2XFx1NTRjMVwiLCBcImljb25cIjogXCJmYXIgZmEtY2lyY2xlXCJ9LCB7XCJuYW1lXCI6IFwiXFx1NTU0NlxcdTU0YzFcXHU4YmM0XFx1OGJiYVwiLCBcImljb25cIjogXCJmYXIgZmEtY2lyY2xlXCJ9XSwgXCJlaWRcIjogMTAwNH1dLCBcIl93ZWlnaHRcIjogMCwgXCJlaWRcIjogMTAwMX0sIHtcIm5hbWVcIjogXCJcXHU3NTI4XFx1NjIzN1wiLCBcImljb25cIjogXCJmYXIgZmEtY2lyY2xlXCIsIFwibW9kZWxzXCI6IFt7XCJuYW1lXCI6IFwiXFx1NzUyOFxcdTYyMzdcXHU0ZmUxXFx1NjA2ZlwiLCBcImljb25cIjogXCJmYXIgZmEtY2lyY2xlXCIsIFwidXJsXCI6IFwiL2FkbWluL2RmX3VzZXIvdXNlcmluZm8vXCIsIFwiYWRkVXJsXCI6IFwiL2FkbWluL2RmX3VzZXIvdXNlcmluZm8vYWRkL1wiLCBcImJyZWFkY3J1bWJzXCI6IFt7XCJuYW1lXCI6IFwiXFx1NzUyOFxcdTYyMzdcIiwgXCJpY29uXCI6IFwiZmFyIGZhLWNpcmNsZVwifSwge1wibmFtZVwiOiBcIlxcdTc1MjhcXHU2MjM3XFx1NGZlMVxcdTYwNmZcIiwgXCJpY29uXCI6IFwiZmFyIGZhLWNpcmNsZVwifV0sIFwiZWlkXCI6IDEwMDZ9LCB7XCJuYW1lXCI6IFwiXFx1NzUyOFxcdTYyMzdcXHU2ZDRmXFx1ODljOFxcdThiYjBcXHU1ZjU1XCIsIFwiaWNvblwiOiBcImZhciBmYS1jaXJjbGVcIiwgXCJ1cmxcIjogXCIvYWRtaW4vZGZfdXNlci9nb29kc2Jyb3dzZXIvXCIsIFwiYWRkVXJsXCI6IFwiL2FkbWluL2RmX3VzZXIvZ29vZHNicm93c2VyL2FkZC9cIiwgXCJicmVhZGNydW1ic1wiOiBbe1wibmFtZVwiOiBcIlxcdTc1MjhcXHU2MjM3XCIsIFwiaWNvblwiOiBcImZhciBmYS1jaXJjbGVcIn0sIHtcIm5hbWVcIjogXCJcXHU3NTI4XFx1NjIzN1xcdTZkNGZcXHU4OWM4XFx1OGJiMFxcdTVmNTVcIiwgXCJpY29uXCI6IFwiZmFyIGZhLWNpcmNsZVwifV0sIFwiZWlkXCI6IDEwMDd9LCB7XCJuYW1lXCI6IFwiXFx1OTAwMFxcdTZiM2VcXHU4YmEyXFx1NTM1NVwiLCBcImljb25cIjogXCJmYXIgZmEtY2lyY2xlXCIsIFwidXJsXCI6IFwiL2FkbWluL2RmX3VzZXIvdHVpaHVvaW5mby9cIiwgXCJhZGRVcmxcIjogXCIvYWRtaW4vZGZfdXNlci90dWlodW9pbmZvL2FkZC9cIiwgXCJicmVhZGNydW1ic1wiOiBbe1wibmFtZVwiOiBcIlxcdTc1MjhcXHU2MjM3XCIsIFwiaWNvblwiOiBcImZhciBmYS1jaXJjbGVcIn0sIHtcIm5hbWVcIjogXCJcXHU5MDAwXFx1NmIzZVxcdThiYTJcXHU1MzU1XCIsIFwiaWNvblwiOiBcImZhciBmYS1jaXJjbGVcIn1dLCBcImVpZFwiOiAxMDA4fV0sIFwiX3dlaWdodFwiOiAxLCBcImVpZFwiOiAxMDA1fSwge1wibmFtZVwiOiBcIlxcdThiYTJcXHU1MzU1XCIsIFwiaWNvblwiOiBcImZhciBmYS1jaXJjbGVcIiwgXCJtb2RlbHNcIjogW3tcIm5hbWVcIjogXCJcXHU0ZWQ4XFx1NmIzZVxcdThiYTJcXHU1MzU1XCIsIFwiaWNvblwiOiBcImZhciBmYS1jaXJjbGVcIiwgXCJ1cmxcIjogXCIvYWRtaW4vZGZfb3JkZXIvb3JkZXJkZXRhaWxpbmZvL1wiLCBcImFkZFVybFwiOiBcIi9hZG1pbi9kZl9vcmRlci9vcmRlcmRldGFpbGluZm8vYWRkL1wiLCBcImJyZWFkY3J1bWJzXCI6IFt7XCJuYW1lXCI6IFwiXFx1OGJhMlxcdTUzNTVcIiwgXCJpY29uXCI6IFwiZmFyIGZhLWNpcmNsZVwifSwge1wibmFtZVwiOiBcIlxcdTRlZDhcXHU2YjNlXFx1OGJhMlxcdTUzNTVcIiwgXCJpY29uXCI6IFwiZmFyIGZhLWNpcmNsZVwifV0sIFwiZWlkXCI6IDEwMTB9LCB7XCJuYW1lXCI6IFwiXFx1NjcyYVxcdTRlZDhcXHU2YjNlXFx1OGJhMlxcdTUzNTVcIiwgXCJpY29uXCI6IFwiZmFyIGZhLWNpcmNsZVwiLCBcInVybFwiOiBcIi9hZG1pbi9kZl9vcmRlci9vcmRlcmluZm8vXCIsIFwiYWRkVXJsXCI6IFwiL2FkbWluL2RmX29yZGVyL29yZGVyaW5mby9hZGQvXCIsIFwiYnJlYWRjcnVtYnNcIjogW3tcIm5hbWVcIjogXCJcXHU4YmEyXFx1NTM1NVwiLCBcImljb25cIjogXCJmYXIgZmEtY2lyY2xlXCJ9LCB7XCJuYW1lXCI6IFwiXFx1NjcyYVxcdTRlZDhcXHU2YjNlXFx1OGJhMlxcdTUzNTVcIiwgXCJpY29uXCI6IFwiZmFyIGZhLWNpcmNsZVwifV0sIFwiZWlkXCI6IDEwMTF9XSwgXCJfd2VpZ2h0XCI6IDIsIFwiZWlkXCI6IDEwMDl9LCB7XCJuYW1lXCI6IFwiXFx1OGQyZFxcdTcyNjlcXHU4ZjY2XCIsIFwiaWNvblwiOiBcImZhciBmYS1jaXJjbGVcIiwgXCJtb2RlbHNcIjogW3tcIm5hbWVcIjogXCJcXHU4ZDJkXFx1NzI2OVxcdThmNjZcIiwgXCJpY29uXCI6IFwiZmFyIGZhLWNpcmNsZVwiLCBcInVybFwiOiBcIi9hZG1pbi9kZl9jYXJ0L2NhcnRpbmZvL1wiLCBcImFkZFVybFwiOiBcIi9hZG1pbi9kZl9jYXJ0L2NhcnRpbmZvL2FkZC9cIiwgXCJicmVhZGNydW1ic1wiOiBbe1wibmFtZVwiOiBcIlxcdThkMmRcXHU3MjY5XFx1OGY2NlwiLCBcImljb25cIjogXCJmYXIgZmEtY2lyY2xlXCJ9LCB7XCJuYW1lXCI6IFwiXFx1OGQyZFxcdTcyNjlcXHU4ZjY2XCIsIFwiaWNvblwiOiBcImZhciBmYS1jaXJjbGVcIn1dLCBcImVpZFwiOiAxMDEzfV0sIFwiX3dlaWdodFwiOiAzLCBcImVpZFwiOiAxMDEyfSwge1wibmFtZVwiOiBcIlxcdThiYTRcXHU4YmMxXFx1NTQ4Y1xcdTYzODhcXHU2NzQzXCIsIFwiaWNvblwiOiBcImZhcyBmYS1zaGllbGQtYWx0XCIsIFwibW9kZWxzXCI6IFt7XCJuYW1lXCI6IFwiXFx1NzUyOFxcdTYyMzdcIiwgXCJpY29uXCI6IFwiZmFyIGZhLXVzZXJcIiwgXCJ1cmxcIjogXCIvYWRtaW4vYXV0aC91c2VyL1wiLCBcImFkZFVybFwiOiBcIi9hZG1pbi9hdXRoL3VzZXIvYWRkL1wiLCBcImJyZWFkY3J1bWJzXCI6IFt7XCJuYW1lXCI6IFwiXFx1OGJhNFxcdThiYzFcXHU1NDhjXFx1NjM4OFxcdTY3NDNcIiwgXCJpY29uXCI6IFwiZmFzIGZhLXNoaWVsZC1hbHRcIn0sIHtcIm5hbWVcIjogXCJcXHU3NTI4XFx1NjIzN1wiLCBcImljb25cIjogXCJmYXIgZmEtdXNlclwifV0sIFwiZWlkXCI6IDEwMTV9LCB7XCJuYW1lXCI6IFwiXFx1N2VjNFwiLCBcImljb25cIjogXCJmYXMgZmEtdXNlcnMtY29nXCIsIFwidXJsXCI6IFwiL2FkbWluL2F1dGgvZ3JvdXAvXCIsIFwiYWRkVXJsXCI6IFwiL2FkbWluL2F1dGgvZ3JvdXAvYWRkL1wiLCBcImJyZWFkY3J1bWJzXCI6IFt7XCJuYW1lXCI6IFwiXFx1OGJhNFxcdThiYzFcXHU1NDhjXFx1NjM4OFxcdTY3NDNcIiwgXCJpY29uXCI6IFwiZmFzIGZhLXNoaWVsZC1hbHRcIn0sIHtcIm5hbWVcIjogXCJcXHU3ZWM0XCIsIFwiaWNvblwiOiBcImZhcyBmYS11c2Vycy1jb2dcIn1dLCBcImVpZFwiOiAxMDE2fV0sIFwiX3dlaWdodFwiOiA0LCBcImVpZFwiOiAxMDE0fV0iLCJ1c2VyX2lkIjo3LCJ1c2VyX25hbWUiOiJ1c2VyMSJ9', '2022-09-13 23:01:15.353383');

SET FOREIGN_KEY_CHECKS = 1;
