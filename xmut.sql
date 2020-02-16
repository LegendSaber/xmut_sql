/*
Navicat MySQL Data Transfer

Source Server         : myproject
Source Server Version : 50727
Source Host           : localhost:3306
Source Database       : xmut

Target Server Type    : MYSQL
Target Server Version : 50727
File Encoding         : 65001

Date: 2020-02-16 10:22:04
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
  `create_time` date NOT NULL,
  `modify_time` date DEFAULT NULL,
  `favor_num` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_experience
-- ----------------------------
INSERT INTO `sys_experience` VALUES ('17', 'master', '111111111111111111111111', '1111111111111111111111111111', '2020-02-15', '2020-02-15', '0');
INSERT INTO `sys_experience` VALUES ('18', 'master', '111111111111111111111111', '11111111111111111111111', '2020-02-15', '2020-02-15', '0');
INSERT INTO `sys_experience` VALUES ('19', 'master', '2133333313414', '123214143413414', '2020-02-15', '2020-02-15', '0');
INSERT INTO `sys_experience` VALUES ('20', 'master', '14213134123', '123124314312412', '2020-02-15', '2020-02-15', '0');
INSERT INTO `sys_experience` VALUES ('21', 'master', '1241412341234', '1241412341234', '2020-02-15', '2020-02-15', '0');
INSERT INTO `sys_experience` VALUES ('22', 'master', '12414123412345', '12414123412344', '2020-02-15', '2020-02-15', '0');
INSERT INTO `sys_experience` VALUES ('23', 'master', '555555555555555555', '55555555555555555555', '2020-02-15', '2020-02-15', '0');
INSERT INTO `sys_experience` VALUES ('24', 'master', '123333333333333333333', '1233333333333333312222', '2020-02-15', '2020-02-15', '0');
INSERT INTO `sys_experience` VALUES ('25', '1900', '12333333333333', '2133333333333313', '2020-02-15', '2020-02-15', '0');
INSERT INTO `sys_experience` VALUES ('26', '1900', '123333333333331', '21333333333333131', '2020-02-15', '2020-02-15', '0');
INSERT INTO `sys_experience` VALUES ('27', '1900', '1233333333333312', '213333333333331312', '2020-02-15', '2020-02-15', '0');
INSERT INTO `sys_experience` VALUES ('28', '1900', '12333333333333123', '2133333333333313123', '2020-02-15', '2020-02-15', '0');
INSERT INTO `sys_experience` VALUES ('29', '1900', '99999999999999999', '999999999999999999', '2020-02-15', '2020-02-15', '0');
INSERT INTO `sys_experience` VALUES ('30', '1900', '999999999999999998', '9999999999999999998', '2020-02-15', '2020-02-15', '0');
INSERT INTO `sys_experience` VALUES ('31', '1900', '99999999999999999813', '9999999999999999998213', '2020-02-15', '2020-02-15', '0');
INSERT INTO `sys_experience` VALUES ('32', '1900', '99999999999999999813啊啊啊', '9999999999999999998213啊啊啊', '2020-02-15', '2020-02-15', '0');
INSERT INTO `sys_experience` VALUES ('33', '1900', '12333333333333333', '213333333333333333', '2020-02-15', '2020-02-15', '0');

-- ----------------------------
-- Table structure for `sys_favor_experience`
-- ----------------------------
DROP TABLE IF EXISTS `sys_favor_experience`;
CREATE TABLE `sys_favor_experience` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `experience_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_favor_experience
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
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_user_experience
-- ----------------------------
INSERT INTO `sys_user_experience` VALUES ('1', '1', '18');
INSERT INTO `sys_user_experience` VALUES ('2', '1', '19');
INSERT INTO `sys_user_experience` VALUES ('3', '1', '20');
INSERT INTO `sys_user_experience` VALUES ('4', '1', '21');
INSERT INTO `sys_user_experience` VALUES ('5', '1', '22');
INSERT INTO `sys_user_experience` VALUES ('6', '1', '23');
INSERT INTO `sys_user_experience` VALUES ('7', '1', '24');
INSERT INTO `sys_user_experience` VALUES ('8', '3', '25');
INSERT INTO `sys_user_experience` VALUES ('9', '3', '26');
INSERT INTO `sys_user_experience` VALUES ('10', '3', '27');
INSERT INTO `sys_user_experience` VALUES ('11', '3', '28');
INSERT INTO `sys_user_experience` VALUES ('12', '3', '29');
INSERT INTO `sys_user_experience` VALUES ('13', '3', '30');
INSERT INTO `sys_user_experience` VALUES ('14', '3', '31');
INSERT INTO `sys_user_experience` VALUES ('15', '3', '32');
INSERT INTO `sys_user_experience` VALUES ('16', '3', '33');
