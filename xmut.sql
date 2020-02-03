/*
Navicat MySQL Data Transfer

Source Server         : myproject
Source Server Version : 50727
Source Host           : localhost:3306
Source Database       : xmut

Target Server Type    : MYSQL
Target Server Version : 50727
File Encoding         : 65001

Date: 2020-02-03 22:55:36
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `sys_experience`
-- ----------------------------
DROP TABLE IF EXISTS `sys_experience`;
CREATE TABLE `sys_experience` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `author` varchar(20) NOT NULL,
  `title` varchar(40) NOT NULL,
  `content` varchar(2000) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_experience
-- ----------------------------

-- ----------------------------
-- Table structure for `sys_user`
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `flag` int(11) NOT NULL,
  `score` int(11) NOT NULL,
  `is_sign` int(11) NOT NULL,
  `sign_day` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES ('1', 'master', '123456', '1', '1', '1', '1');
INSERT INTO `sys_user` VALUES ('2', 'saber', '123', '1', '0', '0', '0');
INSERT INTO `sys_user` VALUES ('3', '1900', '123', '1', '0', '0', '0');
INSERT INTO `sys_user` VALUES ('4', '1874', '123', '1', '0', '0', '0');
INSERT INTO `sys_user` VALUES ('11', '3', '3', '1', '0', '0', '0');
INSERT INTO `sys_user` VALUES ('12', '2', '2', '1', '0', '0', '0');
INSERT INTO `sys_user` VALUES ('13', '123', '123', '1', '0', '0', '0');

-- ----------------------------
-- Table structure for `sys_user_and_experience`
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_and_experience`;
CREATE TABLE `sys_user_and_experience` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `experience_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_user_and_experience
-- ----------------------------
