/*
Navicat MySQL Data Transfer

Source Server         : myproject
Source Server Version : 50727
Source Host           : localhost:3306
Source Database       : xmut

Target Server Type    : MYSQL
Target Server Version : 50727
File Encoding         : 65001

Date: 2020-02-26 19:27:05
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `sys_comment`
-- ----------------------------
DROP TABLE IF EXISTS `sys_comment`;
CREATE TABLE `sys_comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `author` varchar(20) NOT NULL,
  `content` varchar(100) NOT NULL,
  `create_time` date NOT NULL,
  `favor_num` int(11) NOT NULL DEFAULT '0',
  `son_comment` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_comment
-- ----------------------------

-- ----------------------------
-- Table structure for `sys_comment_relation`
-- ----------------------------
DROP TABLE IF EXISTS `sys_comment_relation`;
CREATE TABLE `sys_comment_relation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `father_id` int(11) NOT NULL,
  `son_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_comment_relation
-- ----------------------------

-- ----------------------------
-- Table structure for `sys_experience`
-- ----------------------------
DROP TABLE IF EXISTS `sys_experience`;
CREATE TABLE `sys_experience` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `author` varchar(20) NOT NULL,
  `title` varchar(40) NOT NULL,
  `content` varchar(2000) NOT NULL,
  `create_time` date NOT NULL,
  `modify_time` date DEFAULT NULL,
  `favor_num` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_experience
-- ----------------------------

-- ----------------------------
-- Table structure for `sys_experience_comment`
-- ----------------------------
DROP TABLE IF EXISTS `sys_experience_comment`;
CREATE TABLE `sys_experience_comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `experience_id` int(11) NOT NULL,
  `comment_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_experience_comment
-- ----------------------------

-- ----------------------------
-- Table structure for `sys_favor_comment`
-- ----------------------------
DROP TABLE IF EXISTS `sys_favor_comment`;
CREATE TABLE `sys_favor_comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `comment_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_favor_comment
-- ----------------------------

-- ----------------------------
-- Table structure for `sys_favor_experience`
-- ----------------------------
DROP TABLE IF EXISTS `sys_favor_experience`;
CREATE TABLE `sys_favor_experience` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `experience_id` int(11) NOT NULL,
  `modify_time` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_favor_experience
-- ----------------------------

-- ----------------------------
-- Table structure for `sys_favor_file`
-- ----------------------------
DROP TABLE IF EXISTS `sys_favor_file`;
CREATE TABLE `sys_favor_file` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `file_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_favor_file
-- ----------------------------

-- ----------------------------
-- Table structure for `sys_file`
-- ----------------------------
DROP TABLE IF EXISTS `sys_file`;
CREATE TABLE `sys_file` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `author` varchar(20) NOT NULL,
  `file_name` varchar(20) NOT NULL,
  `file_content` blob NOT NULL,
  `create_time` date NOT NULL,
  `favor_num` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_file
-- ----------------------------

-- ----------------------------
-- Table structure for `sys_son_comment`
-- ----------------------------
DROP TABLE IF EXISTS `sys_son_comment`;
CREATE TABLE `sys_son_comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `author` varchar(20) NOT NULL,
  `content` varchar(100) NOT NULL,
  `create_time` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_son_comment
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
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES ('1', 'master', '123', '1', '1', '1', '1');
INSERT INTO `sys_user` VALUES ('2', 'saber', '123', '1', '0', '0', '0');
INSERT INTO `sys_user` VALUES ('3', '1900', '123', '1', '0', '0', '0');
INSERT INTO `sys_user` VALUES ('4', '1874', '123', '1', '0', '0', '0');
INSERT INTO `sys_user` VALUES ('14', 'lachr', '123', '1', '0', '0', '0');

-- ----------------------------
-- Table structure for `sys_user_experience`
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_experience`;
CREATE TABLE `sys_user_experience` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `experience_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_user_experience
-- ----------------------------

-- ----------------------------
-- Table structure for `sys_user_file`
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_file`;
CREATE TABLE `sys_user_file` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `file_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_user_file
-- ----------------------------
