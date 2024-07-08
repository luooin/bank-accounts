/*
 Navicat Premium Data Transfer

 Source Server         : 本地
 Source Server Type    : MySQL
 Source Server Version : 80028
 Source Host           : localhost:3306
 Source Schema         : bank

 Target Server Type    : MySQL
 Target Server Version : 80028
 File Encoding         : 65001

 Date: 08/07/2024 21:11:44
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for config
-- ----------------------------
DROP TABLE IF EXISTS `config`;
CREATE TABLE `config`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '配置文件' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of config
-- ----------------------------

-- ----------------------------
-- Table structure for cuenquyewu
-- ----------------------------
DROP TABLE IF EXISTS `cuenquyewu`;
CREATE TABLE `cuenquyewu`  (
  `id` int(0) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `kaihu_id` int(0) NULL DEFAULT NULL COMMENT '开户',
  `yonghu_id` int(0) NULL DEFAULT NULL COMMENT '用户',
  `cuenquyewu_price` decimal(10, 2) NULL DEFAULT NULL COMMENT '存取金额',
  `cuenquyewu_types` int(0) NULL DEFAULT NULL COMMENT '存取类型 Search111 ',
  `insert_time` timestamp(0) NULL DEFAULT NULL COMMENT '存取时间',
  `create_time` timestamp(0) NULL DEFAULT NULL COMMENT '创建时间 show3',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '存取业务' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cuenquyewu
-- ----------------------------
INSERT INTO `cuenquyewu` VALUES (1, 1, 1, 631.32, 2, '2024-04-02 20:37:43', '2024-04-02 20:37:43');
INSERT INTO `cuenquyewu` VALUES (3, 3, 2, 936.86, 2, '2024-04-02 20:37:43', '2024-04-02 20:37:43');
INSERT INTO `cuenquyewu` VALUES (4, 4, 1, 176.81, 1, '2024-04-02 20:37:43', '2024-04-02 20:37:43');
INSERT INTO `cuenquyewu` VALUES (5, 5, 3, 625.12, 1, '2024-04-02 20:37:43', '2024-04-02 20:37:43');
INSERT INTO `cuenquyewu` VALUES (10, 3, 1, 76.95, 2, '2024-04-02 21:41:48', '2024-04-02 21:41:48');
INSERT INTO `cuenquyewu` VALUES (13, 7, 2, 500.00, 1, '2024-07-08 20:55:27', '2024-07-08 20:55:27');

-- ----------------------------
-- Table structure for dictionary
-- ----------------------------
DROP TABLE IF EXISTS `dictionary`;
CREATE TABLE `dictionary`  (
  `id` int(0) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '字段名',
  `code_index` int(0) NULL DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int(0) NULL DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  `create_time` timestamp(0) NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '字典表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of dictionary
-- ----------------------------
INSERT INTO `dictionary` VALUES (1, 'kaihu_types', '账户类型', 1, '账户类型1', NULL, NULL, '2024-04-02 20:37:31');
INSERT INTO `dictionary` VALUES (2, 'kaihu_types', '账户类型', 2, '账户类型2', NULL, NULL, '2024-04-02 20:37:31');
INSERT INTO `dictionary` VALUES (3, 'kaihu_types', '账户类型', 3, '账户类型3', NULL, NULL, '2024-04-02 20:37:31');
INSERT INTO `dictionary` VALUES (4, 'cuenquyewu_types', '存取类型', 1, '存钱', NULL, NULL, '2024-04-02 20:37:31');
INSERT INTO `dictionary` VALUES (5, 'cuenquyewu_types', '存取类型', 2, '取钱', NULL, NULL, '2024-04-02 20:37:31');
INSERT INTO `dictionary` VALUES (6, 'guashi_types', '挂失类型', 1, '挂失类型1', NULL, NULL, '2024-04-02 20:37:31');
INSERT INTO `dictionary` VALUES (7, 'guashi_types', '挂失类型', 2, '挂失类型2', NULL, NULL, '2024-04-02 20:37:31');
INSERT INTO `dictionary` VALUES (8, 'news_types', '公告类型', 1, '公告类型1', NULL, NULL, '2024-04-02 20:37:31');
INSERT INTO `dictionary` VALUES (9, 'news_types', '公告类型', 2, '公告类型2', NULL, NULL, '2024-04-02 20:37:31');
INSERT INTO `dictionary` VALUES (10, 'news_types', '公告类型', 3, '公告类型3', NULL, NULL, '2024-04-02 20:37:31');
INSERT INTO `dictionary` VALUES (11, 'sex_types', '性别类型', 1, '男', NULL, NULL, '2024-04-02 20:37:31');
INSERT INTO `dictionary` VALUES (12, 'sex_types', '性别类型', 2, '女', NULL, NULL, '2024-04-02 20:37:31');

-- ----------------------------
-- Table structure for guashi
-- ----------------------------
DROP TABLE IF EXISTS `guashi`;
CREATE TABLE `guashi`  (
  `id` int(0) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `kaihu_id` int(0) NULL DEFAULT NULL COMMENT '账户',
  `yonghu_id` int(0) NULL DEFAULT NULL COMMENT '用户',
  `guashi_types` int(0) NULL DEFAULT NULL COMMENT '挂失类型 Search111 ',
  `guashi_content` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '挂失备注 ',
  `insert_time` timestamp(0) NULL DEFAULT NULL COMMENT '挂失时间',
  `create_time` timestamp(0) NULL DEFAULT NULL COMMENT '创建时间 show3',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '挂失信息' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of guashi
-- ----------------------------
INSERT INTO `guashi` VALUES (5, 5, 3, 2, '挂失备注5', '2024-04-02 20:37:43', '2024-04-02 20:37:43');
INSERT INTO `guashi` VALUES (8, 7, 2, 1, '<p>123</p>', '2024-07-08 20:55:09', '2024-07-08 20:55:09');
INSERT INTO `guashi` VALUES (9, 7, 2, 2, '<p>cc</p>', '2024-07-08 21:07:33', '2024-07-08 21:07:33');

-- ----------------------------
-- Table structure for kaihu
-- ----------------------------
DROP TABLE IF EXISTS `kaihu`;
CREATE TABLE `kaihu`  (
  `id` int(0) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yonghu_id` int(0) NULL DEFAULT NULL COMMENT '用户',
  `kaihu_uuid_number` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '卡号 Search111',
  `kaihu_types` int(0) NULL DEFAULT NULL COMMENT '账户类型 Search111',
  `kaihu_money` decimal(10, 2) NULL DEFAULT NULL COMMENT '账户余额',
  `kaihu_content` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '开户备注 ',
  `insert_time` timestamp(0) NULL DEFAULT NULL COMMENT '开户时间',
  `create_time` timestamp(0) NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '账户信息' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of kaihu
-- ----------------------------
INSERT INTO `kaihu` VALUES (5, 3, '16489030630785', 1, 424.03, '开户备注5', '2024-04-02 20:37:43', '2024-04-02 20:37:43');
INSERT INTO `kaihu` VALUES (6, 1, '1648906927721', 2, 0.00, '<p><span style=\"color: rgb(96, 98, 102);\">开户备注1233</span></p>', '2024-04-02 21:42:15', '2024-04-02 21:42:15');
INSERT INTO `kaihu` VALUES (7, 2, '1648906989898', 3, 550.00, '<p><span style=\"color: rgb(96, 98, 102);\">开户备注3321</span></p>', '2024-04-02 21:43:18', '2024-04-02 21:43:18');

-- ----------------------------
-- Table structure for news
-- ----------------------------
DROP TABLE IF EXISTS `news`;
CREATE TABLE `news`  (
  `id` int(0) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `news_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '公告标题  Search111 ',
  `news_types` int(0) NULL DEFAULT NULL COMMENT '公告类型  Search111 ',
  `news_photo` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '公告图片',
  `insert_time` timestamp(0) NULL DEFAULT NULL COMMENT '添加时间',
  `news_content` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '公告详情',
  `create_time` timestamp(0) NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '公告信息' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of news
-- ----------------------------
INSERT INTO `news` VALUES (1, '公告标题1', 2, 'http://localhost:8080/bank/upload/news1.jpg', '2024-04-02 20:37:43', '公告详情1', '2024-04-02 20:37:43');
INSERT INTO `news` VALUES (2, '公告标题2', 3, 'http://localhost:8080/bank/upload/news2.jpg', '2024-04-02 20:37:43', '公告详情2', '2024-04-02 20:37:43');
INSERT INTO `news` VALUES (3, '公告标题3', 3, 'http://localhost:8080/bank/upload/news3.jpg', '2024-04-02 20:37:43', '公告详情3', '2024-04-02 20:37:43');
INSERT INTO `news` VALUES (4, '公告标题4', 2, 'http://localhost:8080/bank/upload/news4.jpg', '2024-04-02 20:37:43', '公告详情4', '2024-04-02 20:37:43');
INSERT INTO `news` VALUES (5, '公告标题5', 3, 'http://localhost:8080/bank/upload/news5.jpg', '2024-04-02 20:37:43', '公告详情5', '2024-04-02 20:37:43');

-- ----------------------------
-- Table structure for token
-- ----------------------------
DROP TABLE IF EXISTS `token`;
CREATE TABLE `token`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(0) NOT NULL COMMENT '用户id',
  `username` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户名',
  `tablename` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '表名',
  `role` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '角色',
  `token` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '密码',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '新增时间',
  `expiratedtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '过期时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'token表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of token
-- ----------------------------
INSERT INTO `token` VALUES (1, 1, 'admin', 'users', '管理员', 'y7mrbj21c6l1w9ei1q8ho0ybr7s6wlsp', '2024-04-02 21:10:42', '2024-07-08 22:01:40');
INSERT INTO `token` VALUES (2, 1, 'a1', 'yonghu', '用户', 'nrcfmzyivr1h231gd9jt1h4qa3xxhc3i', '2024-04-02 21:23:34', '2024-04-02 22:41:33');
INSERT INTO `token` VALUES (3, 2, 'a2', 'yonghu', '用户', 'ew9wykjug76n8zkv8a03xwwewiur756p', '2024-04-02 21:42:31', '2024-07-08 22:07:15');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户名',
  `password` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '密码',
  `role` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '新增时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, 'admin', '123456', '管理员', '2024-05-01 00:00:00');
INSERT INTO `users` VALUES (2, 'yuangong', '123456', '管理员', '2024-07-08 19:44:12');

-- ----------------------------
-- Table structure for yonghu
-- ----------------------------
DROP TABLE IF EXISTS `yonghu`;
CREATE TABLE `yonghu`  (
  `id` int(0) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '账户',
  `password` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户姓名 Search111 ',
  `yonghu_photo` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '头像',
  `yonghu_phone` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '手机号',
  `yonghu_email` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '电子邮箱',
  `sex_types` int(0) NULL DEFAULT NULL COMMENT '性别 Search111 ',
  `yonghu_delete` int(0) NULL DEFAULT 1 COMMENT '假删',
  `create_time` timestamp(0) NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of yonghu
-- ----------------------------
INSERT INTO `yonghu` VALUES (1, 'a1', '123456', '用户姓名1', 'http://localhost:8080/bank/upload/yonghu1.jpg', '18312345678', '1@qq.com', 2, 2, '2024-04-02 20:37:43');
INSERT INTO `yonghu` VALUES (2, 'user', '123456', '用户姓名2', 'http://localhost:8080/bank/upload/1720442901540.JPG', '18312345678', '2@qq.com', 1, 1, '2024-04-02 20:37:43');
INSERT INTO `yonghu` VALUES (3, 'a3', '123456', '用户姓名3', 'http://localhost:8080/bank/upload/yonghu3.jpg', '18312345678', '3@qq.com', 2, 2, '2024-04-02 20:37:43');

SET FOREIGN_KEY_CHECKS = 1;
