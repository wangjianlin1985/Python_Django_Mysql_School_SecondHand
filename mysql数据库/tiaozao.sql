/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 80017
Source Host           : localhost:3306
Source Database       : tiaozao

Target Server Type    : MYSQL
Target Server Version : 80017
File Encoding         : 65001

Date: 2022-03-22 23:33:14
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for auth_group
-- ----------------------------
DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_group
-- ----------------------------

-- ----------------------------
-- Table structure for auth_group_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_group_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for auth_permission
-- ----------------------------
DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_permission
-- ----------------------------
INSERT INTO `auth_permission` VALUES ('1', 'Can add log entry', '1', 'add_logentry');
INSERT INTO `auth_permission` VALUES ('2', 'Can change log entry', '1', 'change_logentry');
INSERT INTO `auth_permission` VALUES ('3', 'Can delete log entry', '1', 'delete_logentry');
INSERT INTO `auth_permission` VALUES ('4', 'Can add permission', '2', 'add_permission');
INSERT INTO `auth_permission` VALUES ('5', 'Can change permission', '2', 'change_permission');
INSERT INTO `auth_permission` VALUES ('6', 'Can delete permission', '2', 'delete_permission');
INSERT INTO `auth_permission` VALUES ('7', 'Can add group', '3', 'add_group');
INSERT INTO `auth_permission` VALUES ('8', 'Can change group', '3', 'change_group');
INSERT INTO `auth_permission` VALUES ('9', 'Can delete group', '3', 'delete_group');
INSERT INTO `auth_permission` VALUES ('10', 'Can add user', '4', 'add_user');
INSERT INTO `auth_permission` VALUES ('11', 'Can change user', '4', 'change_user');
INSERT INTO `auth_permission` VALUES ('12', 'Can delete user', '4', 'delete_user');
INSERT INTO `auth_permission` VALUES ('13', 'Can add content type', '5', 'add_contenttype');
INSERT INTO `auth_permission` VALUES ('14', 'Can change content type', '5', 'change_contenttype');
INSERT INTO `auth_permission` VALUES ('15', 'Can delete content type', '5', 'delete_contenttype');
INSERT INTO `auth_permission` VALUES ('16', 'Can add 商品', '6', 'add_goodsinfo');
INSERT INTO `auth_permission` VALUES ('17', 'Can change 商品', '6', 'change_goodsinfo');
INSERT INTO `auth_permission` VALUES ('18', 'Can delete 商品', '6', 'delete_goodsinfo');
INSERT INTO `auth_permission` VALUES ('19', 'Can add 商品类型', '7', 'add_typeinfo');
INSERT INTO `auth_permission` VALUES ('20', 'Can change 商品类型', '7', 'change_typeinfo');
INSERT INTO `auth_permission` VALUES ('21', 'Can delete 商品类型', '7', 'delete_typeinfo');
INSERT INTO `auth_permission` VALUES ('22', 'Can add 评论回复', '8', 'add_contentchart');
INSERT INTO `auth_permission` VALUES ('23', 'Can change 评论回复', '8', 'change_contentchart');
INSERT INTO `auth_permission` VALUES ('24', 'Can delete 评论回复', '8', 'delete_contentchart');
INSERT INTO `auth_permission` VALUES ('25', 'Can add 商品评论', '9', 'add_goodscontent');
INSERT INTO `auth_permission` VALUES ('26', 'Can change 商品评论', '9', 'change_goodscontent');
INSERT INTO `auth_permission` VALUES ('27', 'Can delete 商品评论', '9', 'delete_goodscontent');
INSERT INTO `auth_permission` VALUES ('28', 'Can add 用户信息', '10', 'add_userinfo');
INSERT INTO `auth_permission` VALUES ('29', 'Can change 用户信息', '10', 'change_userinfo');
INSERT INTO `auth_permission` VALUES ('30', 'Can delete 用户信息', '10', 'delete_userinfo');
INSERT INTO `auth_permission` VALUES ('31', 'Can add 用户浏览记录', '11', 'add_goodsbrowser');
INSERT INTO `auth_permission` VALUES ('32', 'Can change 用户浏览记录', '11', 'change_goodsbrowser');
INSERT INTO `auth_permission` VALUES ('33', 'Can delete 用户浏览记录', '11', 'delete_goodsbrowser');
INSERT INTO `auth_permission` VALUES ('34', 'Can add 用户消息', '12', 'add_information');
INSERT INTO `auth_permission` VALUES ('35', 'Can change 用户消息', '12', 'change_information');
INSERT INTO `auth_permission` VALUES ('36', 'Can delete 用户消息', '12', 'delete_information');
INSERT INTO `auth_permission` VALUES ('37', 'Can add 退款订单', '13', 'add_tuihuoinfo');
INSERT INTO `auth_permission` VALUES ('38', 'Can change 退款订单', '13', 'change_tuihuoinfo');
INSERT INTO `auth_permission` VALUES ('39', 'Can delete 退款订单', '13', 'delete_tuihuoinfo');
INSERT INTO `auth_permission` VALUES ('40', 'Can add session', '14', 'add_session');
INSERT INTO `auth_permission` VALUES ('41', 'Can change session', '14', 'change_session');
INSERT INTO `auth_permission` VALUES ('42', 'Can delete session', '14', 'delete_session');
INSERT INTO `auth_permission` VALUES ('43', 'Can add 购物车', '15', 'add_cartinfo');
INSERT INTO `auth_permission` VALUES ('44', 'Can change 购物车', '15', 'change_cartinfo');
INSERT INTO `auth_permission` VALUES ('45', 'Can delete 购物车', '15', 'delete_cartinfo');
INSERT INTO `auth_permission` VALUES ('46', 'Can add 付款订单', '16', 'add_orderdetailinfo');
INSERT INTO `auth_permission` VALUES ('47', 'Can change 付款订单', '16', 'change_orderdetailinfo');
INSERT INTO `auth_permission` VALUES ('48', 'Can delete 付款订单', '16', 'delete_orderdetailinfo');
INSERT INTO `auth_permission` VALUES ('49', 'Can add 未付款订单', '17', 'add_orderinfo');
INSERT INTO `auth_permission` VALUES ('50', 'Can change 未付款订单', '17', 'change_orderinfo');
INSERT INTO `auth_permission` VALUES ('51', 'Can delete 未付款订单', '17', 'delete_orderinfo');

-- ----------------------------
-- Table structure for auth_user
-- ----------------------------
DROP TABLE IF EXISTS `auth_user`;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_user
-- ----------------------------
INSERT INTO `auth_user` VALUES ('1', 'pbkdf2_sha256$100000$KYaTpJUt0JtX$ClMoSQl+CJhaYWmpmjKUA0GiKtzV/7Xgw0cqZM2Y8NU=', '2022-03-22 22:52:29.853579', '1', 'admin', '', '', '2753398955@qq.com', '1', '1', '2022-03-22 22:00:15.631627');

-- ----------------------------
-- Table structure for auth_user_groups
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_groups`;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_user_groups
-- ----------------------------

-- ----------------------------
-- Table structure for auth_user_user_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_user_permissions`;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_user_user_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for df_cart_cartinfo
-- ----------------------------
DROP TABLE IF EXISTS `df_cart_cartinfo`;
CREATE TABLE `df_cart_cartinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `count` int(11) NOT NULL,
  `goods_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `df_cart_cartinfo_goods_id_4357294f_fk_df_goods_goodsinfo_id` (`goods_id`),
  KEY `df_cart_cartinfo_user_id_db76e708_fk_df_user_userinfo_id` (`user_id`),
  CONSTRAINT `df_cart_cartinfo_goods_id_4357294f_fk_df_goods_goodsinfo_id` FOREIGN KEY (`goods_id`) REFERENCES `df_goods_goodsinfo` (`id`),
  CONSTRAINT `df_cart_cartinfo_user_id_db76e708_fk_df_user_userinfo_id` FOREIGN KEY (`user_id`) REFERENCES `df_user_userinfo` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of df_cart_cartinfo
-- ----------------------------
INSERT INTO `df_cart_cartinfo` VALUES ('1', '1', '2', '1');

-- ----------------------------
-- Table structure for df_goods_contentchart
-- ----------------------------
DROP TABLE IF EXISTS `df_goods_contentchart`;
CREATE TABLE `df_goods_contentchart` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `isDelete` tinyint(1) NOT NULL,
  `ctitle` varchar(20) NOT NULL,
  `cusername` varchar(20) NOT NULL,
  `cusername1` varchar(20) NOT NULL,
  `ccontent_chart` longtext NOT NULL,
  `date_publish` datetime(6) NOT NULL,
  `ccontent_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `df_goods_contentchar_ccontent_id_b10a0757_fk_df_goods_` (`ccontent_id`),
  CONSTRAINT `df_goods_contentchar_ccontent_id_b10a0757_fk_df_goods_` FOREIGN KEY (`ccontent_id`) REFERENCES `df_goods_goodscontent` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of df_goods_contentchart
-- ----------------------------

-- ----------------------------
-- Table structure for df_goods_goodscontent
-- ----------------------------
DROP TABLE IF EXISTS `df_goods_goodscontent`;
CREATE TABLE `df_goods_goodscontent` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `isDelete` tinyint(1) NOT NULL,
  `ctitle` varchar(20) NOT NULL,
  `cpic` varchar(100) DEFAULT NULL,
  `cusername` varchar(20) NOT NULL,
  `clogo` varchar(200) NOT NULL,
  `cuser_content` longtext NOT NULL,
  `date_publish` datetime(6) NOT NULL,
  `cgoodsname_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `df_goods_goodsconten_cgoodsname_id_a19f6072_fk_df_goods_` (`cgoodsname_id`),
  CONSTRAINT `df_goods_goodsconten_cgoodsname_id_a19f6072_fk_df_goods_` FOREIGN KEY (`cgoodsname_id`) REFERENCES `df_goods_goodsinfo` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of df_goods_goodscontent
-- ----------------------------
INSERT INTO `df_goods_goodscontent` VALUES ('1', '0', '三国演义', '', 'STU001', '123', '', '2022-03-22 22:27:00.000000', '1');

-- ----------------------------
-- Table structure for df_goods_goodsinfo
-- ----------------------------
DROP TABLE IF EXISTS `df_goods_goodsinfo`;
CREATE TABLE `df_goods_goodsinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `isDelete` tinyint(1) NOT NULL,
  `gtitle` varchar(20) NOT NULL,
  `gpic` varchar(100) DEFAULT NULL,
  `gprice` decimal(7,2) NOT NULL,
  `gunit` varchar(20) NOT NULL,
  `gclick` int(11) NOT NULL,
  `gjianjie` varchar(200) NOT NULL,
  `gkucun` int(11) NOT NULL,
  `gcontent` longtext NOT NULL,
  `gtype_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `df_goods_goodsinfo_gtitle_8ec0f32b_uniq` (`gtitle`),
  KEY `df_goods_goodsinfo_gtype_id_63a02cef_fk_df_goods_typeinfo_id` (`gtype_id`),
  CONSTRAINT `df_goods_goodsinfo_gtype_id_63a02cef_fk_df_goods_typeinfo_id` FOREIGN KEY (`gtype_id`) REFERENCES `df_goods_typeinfo` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of df_goods_goodsinfo
-- ----------------------------
INSERT INTO `df_goods_goodsinfo` VALUES ('1', '0', '三国演义', 'df_goods/image/2022/03/timg1JUIM2JF_YEorHUM.jpg', '45.00', '123456', '9', '三国', '2', '<p>全新</p>', '1');
INSERT INTO `df_goods_goodsinfo` VALUES ('2', '0', '热水壶', 'df_goods/image/2022/03/wKhQcFQltNGECKMlAAAAALfHYn08931_qsefUE1.jpg', '23.00', '123456', '4', '功能完好', '1', '<p>111</p>', '2');
INSERT INTO `df_goods_goodsinfo` VALUES ('3', '0', '裙子', 'df_goods/image/2022/03/timg6_oe1Z1gN.jpg', '34.00', '123456', '1', '宝宝用', '1', '<p>裙子</p>', '3');
INSERT INTO `df_goods_goodsinfo` VALUES ('4', '0', 'python编程', 'df_goods/image/2022/03/1550291347_24003310-1_w_7_vdKDVAU.jpg', '1.00', 'STU001', '2', '111', '1', '<p>111</p>', '1');
INSERT INTO `df_goods_goodsinfo` VALUES ('5', '0', '笔记本', 'df_goods/image/2022/03/G4Cxrrbz8HxCmrIipKEKl01Xu-7042.w5441.jpg', '2300.00', 'STU001', '0', '用了一个月', '2', '九成新', '6');
INSERT INTO `df_goods_goodsinfo` VALUES ('6', '0', '吉他', 'df_goods/image/2022/03/139331061389381.png', '120.00', 'STU001', '0', '自用款，喜欢带走吧', '2', '吉他', '5');
INSERT INTO `df_goods_goodsinfo` VALUES ('7', '0', '自行车', 'df_goods/image/2022/03/20614752_110950970000_21_5uVuuZv.jpg', '120.00', 'STU001', '0', '性能很好', '2', '123', '4');
INSERT INTO `df_goods_goodsinfo` VALUES ('8', '0', '西游记', 'df_goods/image/2022/03/u37687401182449866431fm26gp01_id2OIrU.jpg', '45.00', 'STU001', '0', '西游记', '2', '西游记', '1');
INSERT INTO `df_goods_goodsinfo` VALUES ('9', '0', '新西游记', 'df_goods/image/2022/03/u37687401182449866431fm26gp01_HIzheq8.jpg', '45.00', 'STU001', '0', '新西游记', '2', '新西游记', '1');

-- ----------------------------
-- Table structure for df_goods_typeinfo
-- ----------------------------
DROP TABLE IF EXISTS `df_goods_typeinfo`;
CREATE TABLE `df_goods_typeinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `isDelete` tinyint(1) NOT NULL,
  `ttitle` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of df_goods_typeinfo
-- ----------------------------
INSERT INTO `df_goods_typeinfo` VALUES ('1', '0', '书籍');
INSERT INTO `df_goods_typeinfo` VALUES ('2', '0', '家电');
INSERT INTO `df_goods_typeinfo` VALUES ('3', '0', '衣物');
INSERT INTO `df_goods_typeinfo` VALUES ('4', '0', '出行');
INSERT INTO `df_goods_typeinfo` VALUES ('5', '0', '乐器');
INSERT INTO `df_goods_typeinfo` VALUES ('6', '0', '智能');

-- ----------------------------
-- Table structure for df_order_orderdetailinfo
-- ----------------------------
DROP TABLE IF EXISTS `df_order_orderdetailinfo`;
CREATE TABLE `df_order_orderdetailinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `price` decimal(6,2) NOT NULL,
  `count` int(11) NOT NULL,
  `goods_id` int(11) NOT NULL,
  `order_id` varchar(20) NOT NULL,
  `datatime` datetime(6) NOT NULL,
  `shopername` varchar(20) NOT NULL,
  `username` varchar(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `df_order_orderdetail_goods_id_d0acef4d_fk_df_goods_` (`goods_id`),
  KEY `df_order_orderdetail_order_id_b91dcf67_fk_df_order_` (`order_id`),
  CONSTRAINT `df_order_orderdetail_goods_id_d0acef4d_fk_df_goods_` FOREIGN KEY (`goods_id`) REFERENCES `df_goods_goodsinfo` (`id`),
  CONSTRAINT `df_order_orderdetail_order_id_b91dcf67_fk_df_order_` FOREIGN KEY (`order_id`) REFERENCES `df_order_orderinfo` (`oid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of df_order_orderdetailinfo
-- ----------------------------
INSERT INTO `df_order_orderdetailinfo` VALUES ('1', '56.00', '1', '1', '2345678909876', '2022-03-22 22:32:00.000000', '123456', 'STU001');

-- ----------------------------
-- Table structure for df_order_orderinfo
-- ----------------------------
DROP TABLE IF EXISTS `df_order_orderinfo`;
CREATE TABLE `df_order_orderinfo` (
  `oid` varchar(20) NOT NULL,
  `odate` datetime(6) NOT NULL,
  `oIsPay` tinyint(1) NOT NULL,
  `ototal` decimal(8,2) NOT NULL,
  `oaddress` varchar(150) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`oid`),
  KEY `df_order_orderinfo_user_id_2d705949_fk_df_user_userinfo_id` (`user_id`),
  CONSTRAINT `df_order_orderinfo_user_id_2d705949_fk_df_user_userinfo_id` FOREIGN KEY (`user_id`) REFERENCES `df_user_userinfo` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of df_order_orderinfo
-- ----------------------------
INSERT INTO `df_order_orderinfo` VALUES ('2345678909876', '2022-03-22 22:33:47.912237', '0', '56.00', '111111', '2');

-- ----------------------------
-- Table structure for df_user_goodsbrowser
-- ----------------------------
DROP TABLE IF EXISTS `df_user_goodsbrowser`;
CREATE TABLE `df_user_goodsbrowser` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `browser_time` datetime(6) NOT NULL,
  `good_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `df_user_goodsbrowser_good_id_81bbd6f5_fk_df_goods_goodsinfo_id` (`good_id`),
  KEY `df_user_goodsbrowser_user_id_b7a661a4_fk_df_user_userinfo_id` (`user_id`),
  CONSTRAINT `df_user_goodsbrowser_good_id_81bbd6f5_fk_df_goods_goodsinfo_id` FOREIGN KEY (`good_id`) REFERENCES `df_goods_goodsinfo` (`id`),
  CONSTRAINT `df_user_goodsbrowser_user_id_b7a661a4_fk_df_user_userinfo_id` FOREIGN KEY (`user_id`) REFERENCES `df_user_userinfo` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of df_user_goodsbrowser
-- ----------------------------
INSERT INTO `df_user_goodsbrowser` VALUES ('1', '2022-03-22 23:17:05.847174', '1', '1');
INSERT INTO `df_user_goodsbrowser` VALUES ('2', '2022-03-22 23:17:54.218882', '2', '1');
INSERT INTO `df_user_goodsbrowser` VALUES ('3', '2022-03-22 23:18:21.130023', '4', '1');
INSERT INTO `df_user_goodsbrowser` VALUES ('4', '2022-03-22 23:18:15.560808', '3', '1');

-- ----------------------------
-- Table structure for df_user_information
-- ----------------------------
DROP TABLE IF EXISTS `df_user_information`;
CREATE TABLE `df_user_information` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `isDelete` tinyint(1) NOT NULL,
  `ctitle` varchar(20) NOT NULL,
  `cusername` varchar(20) NOT NULL,
  `cusername1` varchar(20) NOT NULL,
  `ccontent_chart` longtext NOT NULL,
  `ccheck` tinyint(1) NOT NULL,
  `date_publish` datetime(6) NOT NULL,
  `cinformation_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `df_user_information_cinformation_id_ead36b05_fk_df_user_u` (`cinformation_id`),
  CONSTRAINT `df_user_information_cinformation_id_ead36b05_fk_df_user_u` FOREIGN KEY (`cinformation_id`) REFERENCES `df_user_userinfo` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of df_user_information
-- ----------------------------
INSERT INTO `df_user_information` VALUES ('1', '1', '三国演义', 'STU001', '123456', 'hhh', '1', '2022-03-22 22:47:12.000000', '1');

-- ----------------------------
-- Table structure for df_user_tuihuoinfo
-- ----------------------------
DROP TABLE IF EXISTS `df_user_tuihuoinfo`;
CREATE TABLE `df_user_tuihuoinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `isDelete` tinyint(1) NOT NULL,
  `title` varchar(20) NOT NULL,
  `username` varchar(20) NOT NULL,
  `username1` varchar(20) NOT NULL,
  `person_number` varchar(20) NOT NULL,
  `order_number` varchar(20) NOT NULL,
  `kuaidi` varchar(20) NOT NULL,
  `kuaidi_number` varchar(20) NOT NULL,
  `address` varchar(50) NOT NULL,
  `address1` varchar(50) NOT NULL,
  `text` longtext NOT NULL,
  `passOrdefault` tinyint(1) NOT NULL,
  `date_publish` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of df_user_tuihuoinfo
-- ----------------------------
INSERT INTO `df_user_tuihuoinfo` VALUES ('1', '1', '三国演义', 'STU001', '123456', '123456123412341234', '1111111333', '54321222223', '1222222', '1111', '11222', '111', '1', '2022-03-22 23:05:38.000000');

-- ----------------------------
-- Table structure for df_user_userinfo
-- ----------------------------
DROP TABLE IF EXISTS `df_user_userinfo`;
CREATE TABLE `df_user_userinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uname` varchar(20) NOT NULL,
  `upwd` varchar(40) NOT NULL,
  `uemail` varchar(254) NOT NULL,
  `ushou` varchar(20) NOT NULL,
  `uaddress` varchar(100) NOT NULL,
  `uyoubian` varchar(6) NOT NULL,
  `uphone` varchar(11) NOT NULL,
  `uage` varchar(10) NOT NULL,
  `ucheck_passOrfail` tinyint(1) NOT NULL,
  `ulogo` varchar(100) NOT NULL,
  `uname_passOrfail` tinyint(1) NOT NULL,
  `upersonInf` varchar(200) NOT NULL,
  `urealname` varchar(20) NOT NULL,
  `usex` varchar(10) NOT NULL,
  `uzhengjian_img` varchar(100) NOT NULL,
  `uzhengjian_tel` varchar(18) NOT NULL,
  `uzhengjian_type` varchar(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `df_user_userinfo_uemail_da079075_uniq` (`uemail`),
  UNIQUE KEY `df_user_userinfo_uname_feb27ea0_uniq` (`uname`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of df_user_userinfo
-- ----------------------------
INSERT INTO `df_user_userinfo` VALUES ('1', '123456', '7c4a8d09ca3762af61e59520943dc26494f8941b', '11111111@qq.com', '123456', '广东江门', '000000', '12312341234', '23', '1', 'images/IMG_20223221.jpg', '1', '佛系小姐姐', '薇薇', '女', 'images/zhengjian_img/img-4746dcc90757a511c5e65e8ed5d1fd08.jpg', '234512123412341234', '身份证');
INSERT INTO `df_user_userinfo` VALUES ('2', 'STU001', '7c4a8d09ca3762af61e59520943dc26494f8941b', '2222222@qq.com', '广东江门', '广东江门', '000000', '12341234123', '24', '0', 'images/42NH7XQ161XVN28PRIQ0P_KV9PrXF.png', '1', 'hello', 'Jack', '男', 'images/zhengjian_img/IMG_20200908_095453_JHFuswa.jpg', '123456123412241234', '身份证');
INSERT INTO `df_user_userinfo` VALUES ('5', '123aaa', '7c4a8d09ca3762af61e59520943dc26494f8941b', '33333@163.com', '', '', '', '', '', '0', 'default.jpg', '1', '', '', '', '', '', '');
INSERT INTO `df_user_userinfo` VALUES ('6', 'customer', '7c4a8d09ca3762af61e59520943dc26494f8941b', '4444444@qq.com', '', '', '', '', '', '0', 'default.jpg', '1', '', '', '', '', '', '');

-- ----------------------------
-- Table structure for django_admin_log
-- ----------------------------
DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_admin_log
-- ----------------------------
INSERT INTO `django_admin_log` VALUES ('1', '2022-03-22 22:05:15.138934', '1', '书籍', '1', '[{\"added\": {}}]', '7', '1');
INSERT INTO `django_admin_log` VALUES ('2', '2022-03-22 22:05:24.929736', '2', '家电', '1', '[{\"added\": {}}]', '7', '1');
INSERT INTO `django_admin_log` VALUES ('3', '2022-03-22 22:05:31.526088', '3', '衣物', '1', '[{\"added\": {}}]', '7', '1');
INSERT INTO `django_admin_log` VALUES ('4', '2022-03-22 22:05:39.467840', '4', '出行', '1', '[{\"added\": {}}]', '7', '1');
INSERT INTO `django_admin_log` VALUES ('5', '2022-03-22 22:05:46.234388', '5', '乐器', '1', '[{\"added\": {}}]', '7', '1');
INSERT INTO `django_admin_log` VALUES ('6', '2022-03-22 22:05:51.697314', '6', '智能', '1', '[{\"added\": {}}]', '7', '1');
INSERT INTO `django_admin_log` VALUES ('7', '2022-03-22 22:17:38.717051', '1', '123456', '2', '[{\"changed\": {\"fields\": [\"usex\", \"uage\", \"upersonInf\", \"ulogo\", \"urealname\", \"uzhengjian_type\", \"uzhengjian_tel\", \"uzhengjian_img\", \"ucheck_passOrfail\"]}}]', '10', '1');
INSERT INTO `django_admin_log` VALUES ('8', '2022-03-22 22:19:38.913180', '2', 'STU001', '2', '[{\"changed\": {\"fields\": [\"usex\", \"uage\", \"upersonInf\", \"ulogo\", \"urealname\", \"uzhengjian_type\", \"uzhengjian_tel\", \"uzhengjian_img\", \"ushou\", \"uaddress\", \"uyoubian\", \"uphone\"]}}]', '10', '1');
INSERT INTO `django_admin_log` VALUES ('9', '2022-03-22 22:28:23.961431', '1', '三国演义', '1', '[{\"added\": {}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('10', '2022-03-22 22:33:47.920213', '2345678909876', 'STU001在的订单2022-03-22 22:33:47.912237', '1', '[{\"added\": {}}]', '17', '1');
INSERT INTO `django_admin_log` VALUES ('11', '2022-03-22 22:33:56.517295', '1', '三国演义(数量为1)', '1', '[{\"added\": {}}]', '16', '1');
INSERT INTO `django_admin_log` VALUES ('12', '2022-03-22 22:53:14.896958', '4', 'python编程', '1', '[{\"added\": {}}]', '6', '1');
INSERT INTO `django_admin_log` VALUES ('13', '2022-03-22 22:54:36.293270', '1', '三国演义', '2', '[{\"changed\": {\"fields\": [\"gpic\", \"gcontent\"]}}]', '6', '1');
INSERT INTO `django_admin_log` VALUES ('14', '2022-03-22 22:55:17.648045', '3', '裙子', '2', '[{\"changed\": {\"fields\": [\"gpic\", \"gcontent\"]}}]', '6', '1');
INSERT INTO `django_admin_log` VALUES ('15', '2022-03-22 22:55:30.887654', '2', '热水壶', '2', '[{\"changed\": {\"fields\": [\"gpic\", \"gcontent\"]}}]', '6', '1');
INSERT INTO `django_admin_log` VALUES ('16', '2022-03-22 22:55:58.224537', '1', '三国演义', '2', '[{\"changed\": {\"fields\": [\"gpic\"]}}]', '6', '1');
INSERT INTO `django_admin_log` VALUES ('17', '2022-03-22 23:15:09.591371', '1', '三国演义', '2', '[{\"changed\": {\"fields\": [\"gpic\"]}}]', '6', '1');
INSERT INTO `django_admin_log` VALUES ('18', '2022-03-22 23:15:23.459266', '4', 'python编程', '2', '[{\"changed\": {\"fields\": [\"gpic\"]}}]', '6', '1');
INSERT INTO `django_admin_log` VALUES ('19', '2022-03-22 23:15:35.461698', '3', '裙子', '2', '[{\"changed\": {\"fields\": [\"gpic\"]}}]', '6', '1');
INSERT INTO `django_admin_log` VALUES ('20', '2022-03-22 23:15:46.946822', '2', '热水壶', '2', '[{\"changed\": {\"fields\": [\"gpic\"]}}]', '6', '1');
INSERT INTO `django_admin_log` VALUES ('21', '2022-03-22 23:16:44.875197', '2', 'STU001', '2', '[{\"changed\": {\"fields\": [\"ulogo\"]}}]', '10', '1');

-- ----------------------------
-- Table structure for django_content_type
-- ----------------------------
DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_content_type
-- ----------------------------
INSERT INTO `django_content_type` VALUES ('1', 'admin', 'logentry');
INSERT INTO `django_content_type` VALUES ('3', 'auth', 'group');
INSERT INTO `django_content_type` VALUES ('2', 'auth', 'permission');
INSERT INTO `django_content_type` VALUES ('4', 'auth', 'user');
INSERT INTO `django_content_type` VALUES ('5', 'contenttypes', 'contenttype');
INSERT INTO `django_content_type` VALUES ('15', 'df_cart', 'cartinfo');
INSERT INTO `django_content_type` VALUES ('8', 'df_goods', 'contentchart');
INSERT INTO `django_content_type` VALUES ('9', 'df_goods', 'goodscontent');
INSERT INTO `django_content_type` VALUES ('6', 'df_goods', 'goodsinfo');
INSERT INTO `django_content_type` VALUES ('7', 'df_goods', 'typeinfo');
INSERT INTO `django_content_type` VALUES ('16', 'df_order', 'orderdetailinfo');
INSERT INTO `django_content_type` VALUES ('17', 'df_order', 'orderinfo');
INSERT INTO `django_content_type` VALUES ('11', 'df_user', 'goodsbrowser');
INSERT INTO `django_content_type` VALUES ('12', 'df_user', 'information');
INSERT INTO `django_content_type` VALUES ('13', 'df_user', 'tuihuoinfo');
INSERT INTO `django_content_type` VALUES ('10', 'df_user', 'userinfo');
INSERT INTO `django_content_type` VALUES ('14', 'sessions', 'session');

-- ----------------------------
-- Table structure for django_migrations
-- ----------------------------
DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_migrations
-- ----------------------------
INSERT INTO `django_migrations` VALUES ('1', 'contenttypes', '0001_initial', '2022-03-22 21:57:41.113511');
INSERT INTO `django_migrations` VALUES ('2', 'auth', '0001_initial', '2022-03-22 21:57:43.787299');
INSERT INTO `django_migrations` VALUES ('3', 'admin', '0001_initial', '2022-03-22 21:57:44.009747');
INSERT INTO `django_migrations` VALUES ('4', 'admin', '0002_logentry_remove_auto_add', '2022-03-22 21:57:44.019675');
INSERT INTO `django_migrations` VALUES ('5', 'contenttypes', '0002_remove_content_type_name', '2022-03-22 21:57:44.168277');
INSERT INTO `django_migrations` VALUES ('6', 'auth', '0002_alter_permission_name_max_length', '2022-03-22 21:57:44.255045');
INSERT INTO `django_migrations` VALUES ('7', 'auth', '0003_alter_user_email_max_length', '2022-03-22 21:57:44.355776');
INSERT INTO `django_migrations` VALUES ('8', 'auth', '0004_alter_user_username_opts', '2022-03-22 21:57:44.366746');
INSERT INTO `django_migrations` VALUES ('9', 'auth', '0005_alter_user_last_login_null', '2022-03-22 21:57:44.443541');
INSERT INTO `django_migrations` VALUES ('10', 'auth', '0006_require_contenttypes_0002', '2022-03-22 21:57:44.448528');
INSERT INTO `django_migrations` VALUES ('11', 'auth', '0007_alter_validators_add_error_messages', '2022-03-22 21:57:44.460495');
INSERT INTO `django_migrations` VALUES ('12', 'auth', '0008_alter_user_username_max_length', '2022-03-22 21:57:44.547264');
INSERT INTO `django_migrations` VALUES ('13', 'auth', '0009_alter_user_last_name_max_length', '2022-03-22 21:57:44.640015');
INSERT INTO `django_migrations` VALUES ('14', 'df_goods', '0001_initial', '2022-03-22 21:57:44.855439');
INSERT INTO `django_migrations` VALUES ('15', 'df_goods', '0002_auto_20220322_2157', '2022-03-22 21:58:57.469637');
INSERT INTO `django_migrations` VALUES ('16', 'df_user', '0001_initial', '2022-03-22 21:58:57.514516');
INSERT INTO `django_migrations` VALUES ('17', 'df_user', '0002_auto_20220322_2157', '2022-03-22 21:58:58.437083');
INSERT INTO `django_migrations` VALUES ('18', 'df_cart', '0001_initial', '2022-03-22 21:59:10.954599');
INSERT INTO `django_migrations` VALUES ('19', 'df_cart', '0002_auto_20220322_2157', '2022-03-22 21:59:11.263772');
INSERT INTO `django_migrations` VALUES ('20', 'df_order', '0001_initial', '2022-03-22 21:59:11.604860');
INSERT INTO `django_migrations` VALUES ('21', 'df_order', '0002_auto_20220322_2157', '2022-03-22 21:59:13.904709');
INSERT INTO `django_migrations` VALUES ('22', 'sessions', '0001_initial', '2022-03-22 21:59:14.104174');

-- ----------------------------
-- Table structure for django_session
-- ----------------------------
DROP TABLE IF EXISTS `django_session`;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_session
-- ----------------------------
INSERT INTO `django_session` VALUES ('2c3rh6wsy51m4wn3xcyg2dlg9y02jgnz', 'MDE0NjVkNDQ5N2ZlYjQ3MjdlZmNmZTdiZGZhOWQ0NGY2YmQyNDE5ODp7InZlcmlmeWNvZGUiOiJDZThqIiwidXNlcl9pZCI6MSwidXNlcl9uYW1lIjoiMTIzNDU2In0=', '2022-04-05 22:32:17.218052');
INSERT INTO `django_session` VALUES ('ff2eumbnydhk267bnsih7rdj5na3m0en', 'MDA2MGQ2MGYxMmY4N2Q5NWU0OTc5Njk1MWJiZWNjYjE4MWExN2YyNzp7InZlcmlmeWNvZGUiOiJaOUk0In0=', '2022-04-05 23:24:50.040804');
