/*
Navicat MySQL Data Transfer

Source Server         : myproject
Source Server Version : 50727
Source Host           : localhost:3306
Source Database       : xmut

Target Server Type    : MYSQL
Target Server Version : 50727
File Encoding         : 65001

Date: 2020-02-19 23:15:12
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
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_comment
-- ----------------------------
INSERT INTO `sys_comment` VALUES ('6', 'master', '啊啊啊啊啊啊啊啊啊啊啊', '2020-02-19', '2', null);
INSERT INTO `sys_comment` VALUES ('7', 'master', '啊啊啊啊啊啊啊啊啊啊', '2020-02-19', '2', null);
INSERT INTO `sys_comment` VALUES ('8', '1900', '不不不不不不不不不不不不', '2020-02-19', '3', null);
INSERT INTO `sys_comment` VALUES ('9', '1874', 'heheheheheheh', '2020-02-19', '1', null);
INSERT INTO `sys_comment` VALUES ('10', '1874', 'ppppppppppppppppppppp', '2020-02-19', '1', null);
INSERT INTO `sys_comment` VALUES ('11', '1874', 'xxxxxxxxxxxxxxxxxxxxxxxxxx', '2020-02-19', '1', null);
INSERT INTO `sys_comment` VALUES ('12', '1874', 'cccccccccccccccccccccccccccccc', '2020-02-19', '1', null);
INSERT INTO `sys_comment` VALUES ('13', '1874', 'aaaaaaaaaaaaaaaaaaaaaa', '2020-02-19', '1', null);
INSERT INTO `sys_comment` VALUES ('14', '1874', 'xxxxxxxxxxxxxxxxxxxxxxxxxxxx', '2020-02-19', '0', null);
INSERT INTO `sys_comment` VALUES ('15', 'master', '啊啊啊啊\n啊啊啊啊啊啊啊啊\n  哦哦哦哦哦', '2020-02-19', '1', null);
INSERT INTO `sys_comment` VALUES ('16', 'master', '   测试测试测试<br/>      测试测试测试<br/>   测试测   试测试', '2020-02-19', '1', null);
INSERT INTO `sys_comment` VALUES ('17', 'master', '么么么么么么么木木木木木木木木木木木木木', '2020-02-19', '1', null);
INSERT INTO `sys_comment` VALUES ('18', 'master', '凄凄切切群群群群群群群群群群群群群群群群群群群群群群群群群群群群群', '2020-02-19', '1', null);
INSERT INTO `sys_comment` VALUES ('19', 'master', '啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊', '2020-02-19', '1', null);
INSERT INTO `sys_comment` VALUES ('20', 'master', '玫瑰公馆过过过过过过过过过过过', '2020-02-19', '1', null);
INSERT INTO `sys_comment` VALUES ('21', 'master', '仄仄仄仄仄仄仄仄仄仄仄仄仄仄仄仄仄仄啧啧啧啧啧啧', '2020-02-19', '1', null);

-- ----------------------------
-- Table structure for `sys_comment_relation`
-- ----------------------------
DROP TABLE IF EXISTS `sys_comment_relation`;
CREATE TABLE `sys_comment_relation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `father_id` int(11) NOT NULL,
  `son_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_comment_relation
-- ----------------------------
INSERT INTO `sys_comment_relation` VALUES ('1', '6', '2');
INSERT INTO `sys_comment_relation` VALUES ('2', '6', '3');
INSERT INTO `sys_comment_relation` VALUES ('3', '6', '4');

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
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_experience
-- ----------------------------
INSERT INTO `sys_experience` VALUES ('21', 'master', '1241412341234', '1241412341234', '2020-02-15', '2020-02-15', '0');
INSERT INTO `sys_experience` VALUES ('25', '1900', '12333333333333', '2133333333333313', '2020-02-15', '2020-02-15', '0');
INSERT INTO `sys_experience` VALUES ('26', '1900', '123333333333331', '21333333333333131', '2020-02-15', '2020-02-15', '0');
INSERT INTO `sys_experience` VALUES ('27', '1900', '1233333333333312', '213333333333331312', '2020-02-15', '2020-02-15', '0');
INSERT INTO `sys_experience` VALUES ('28', '1900', '12333333333333123', '2133333333333313123', '2020-02-15', '2020-02-15', '0');
INSERT INTO `sys_experience` VALUES ('29', '1900', '99999999999999999', '999999999999999999', '2020-02-15', '2020-02-15', '1');
INSERT INTO `sys_experience` VALUES ('30', '1900', '999999999999999998', '9999999999999999998', '2020-02-15', '2020-02-15', '0');
INSERT INTO `sys_experience` VALUES ('31', '1900', '99999999999999999813', '9999999999999999998213', '2020-02-15', '2020-02-15', '0');
INSERT INTO `sys_experience` VALUES ('42', 'master', '77777777777', '88888888888888888', '2020-02-17', '2020-02-19', '0');
INSERT INTO `sys_experience` VALUES ('47', 'master', '测试测试测试鸭', '   一个人要么提得起，要么放得下，最可悲的是既提不起又放不下，犹豫来犹豫去，在中间摇摆不定。但是，往往犹豫的人能找到足够的理由证明他的行为是对的。<br/><br/>   要么你狗熊到底，孬种到底，你很真实，表里如一，也能受人尊重，因为大家都喜欢弱者。在弱者身边能显出你的强大和优势，你会干得更有劲。而在强者身边只会显出你的弱小，你会感到自卑。<br/><br/>   就像你们在万行身边感到自卑一样。如果你转变心念，像万行一样努力十年、二十年，你也会成为强者。我希望你们都有这样的勇气。<br/><br/>   不敢做老虎，你就做绵羊。所以绵羊就是绵羊，老虎就是老虎，宝马就是宝马，桑塔纳就是桑塔纳，它们的本质是不一样的。<br/><br/>   绵羊的活法是对的，老虎的活法也是对的；桑塔纳的价格是合理的，宝马的价格也是合理的。<br/><br/>   所以，我是绵羊，就亮出我的风格；我是老虎，也要亮出我的风格，让你们看清楚，我从不掩饰。<br/><br/>   我经常告诉大家我就是这个东西，不需要什么包装，你喜欢这个东西就捡回家，不喜欢就不要动它，不要去批判它。<br/><br/>   一个人怎么过都是一生，胆小怕事，贪生怕死，做事前怕狼后怕虎，死要面子，这样活着是一辈子；老子天下第一，什么来了都不怕，都大胆去迎接，放开手脚去干，也是活一辈子，而且还活得很爽快。', '2020-02-18', '2020-02-18', '2');
INSERT INTO `sys_experience` VALUES ('48', 'master', '00000000000', '00000000000', '2020-02-19', '2020-02-19', '0');
INSERT INTO `sys_experience` VALUES ('49', 'master', '222222222222', '22222222222', '2020-02-19', '2020-02-19', '0');

-- ----------------------------
-- Table structure for `sys_experience_comment`
-- ----------------------------
DROP TABLE IF EXISTS `sys_experience_comment`;
CREATE TABLE `sys_experience_comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `experience_id` int(11) NOT NULL,
  `comment_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_experience_comment
-- ----------------------------
INSERT INTO `sys_experience_comment` VALUES ('1', '47', '6');
INSERT INTO `sys_experience_comment` VALUES ('2', '47', '7');
INSERT INTO `sys_experience_comment` VALUES ('3', '47', '8');
INSERT INTO `sys_experience_comment` VALUES ('4', '47', '9');
INSERT INTO `sys_experience_comment` VALUES ('5', '47', '10');
INSERT INTO `sys_experience_comment` VALUES ('6', '47', '11');
INSERT INTO `sys_experience_comment` VALUES ('7', '47', '12');
INSERT INTO `sys_experience_comment` VALUES ('8', '47', '13');
INSERT INTO `sys_experience_comment` VALUES ('9', '47', '14');
INSERT INTO `sys_experience_comment` VALUES ('10', '47', '15');
INSERT INTO `sys_experience_comment` VALUES ('11', '47', '16');
INSERT INTO `sys_experience_comment` VALUES ('12', '47', '17');
INSERT INTO `sys_experience_comment` VALUES ('13', '47', '18');
INSERT INTO `sys_experience_comment` VALUES ('14', '47', '19');
INSERT INTO `sys_experience_comment` VALUES ('15', '47', '20');
INSERT INTO `sys_experience_comment` VALUES ('16', '47', '21');

-- ----------------------------
-- Table structure for `sys_favor_comment`
-- ----------------------------
DROP TABLE IF EXISTS `sys_favor_comment`;
CREATE TABLE `sys_favor_comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `comment_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_favor_comment
-- ----------------------------
INSERT INTO `sys_favor_comment` VALUES ('1', '1', '6');
INSERT INTO `sys_favor_comment` VALUES ('2', '3', '6');
INSERT INTO `sys_favor_comment` VALUES ('3', '3', '7');
INSERT INTO `sys_favor_comment` VALUES ('4', '3', '8');
INSERT INTO `sys_favor_comment` VALUES ('5', '1', '7');
INSERT INTO `sys_favor_comment` VALUES ('6', '1', '8');
INSERT INTO `sys_favor_comment` VALUES ('7', '4', '8');
INSERT INTO `sys_favor_comment` VALUES ('8', '1', '15');
INSERT INTO `sys_favor_comment` VALUES ('9', '1', '16');
INSERT INTO `sys_favor_comment` VALUES ('10', '1', '20');
INSERT INTO `sys_favor_comment` VALUES ('11', '1', '19');
INSERT INTO `sys_favor_comment` VALUES ('12', '1', '17');
INSERT INTO `sys_favor_comment` VALUES ('13', '1', '11');
INSERT INTO `sys_favor_comment` VALUES ('14', '1', '13');
INSERT INTO `sys_favor_comment` VALUES ('15', '1', '12');
INSERT INTO `sys_favor_comment` VALUES ('16', '1', '18');
INSERT INTO `sys_favor_comment` VALUES ('17', '1', '10');
INSERT INTO `sys_favor_comment` VALUES ('18', '1', '21');
INSERT INTO `sys_favor_comment` VALUES ('19', '1', '9');

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
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_favor_experience
-- ----------------------------
INSERT INTO `sys_favor_experience` VALUES ('30', '3', '47', '2020-02-19');
INSERT INTO `sys_favor_experience` VALUES ('32', '1', '47', '2020-02-19');
INSERT INTO `sys_favor_experience` VALUES ('33', '1', '29', '2020-02-19');

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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_son_comment
-- ----------------------------
INSERT INTO `sys_son_comment` VALUES ('2', 'master', '不不不不不不不不不不不不不不', '2020-02-19');
INSERT INTO `sys_son_comment` VALUES ('3', 'master', '少时诵诗书所所所所所所所', '2020-02-19');
INSERT INTO `sys_son_comment` VALUES ('4', 'master', '回复回复回复回复回复回复回复回复回复回复回复回复回复回复', '2020-02-19');

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
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_user_experience
-- ----------------------------
INSERT INTO `sys_user_experience` VALUES ('4', '1', '21');
INSERT INTO `sys_user_experience` VALUES ('8', '3', '25');
INSERT INTO `sys_user_experience` VALUES ('9', '3', '26');
INSERT INTO `sys_user_experience` VALUES ('10', '3', '27');
INSERT INTO `sys_user_experience` VALUES ('11', '3', '28');
INSERT INTO `sys_user_experience` VALUES ('12', '3', '29');
INSERT INTO `sys_user_experience` VALUES ('13', '3', '30');
INSERT INTO `sys_user_experience` VALUES ('14', '3', '31');
INSERT INTO `sys_user_experience` VALUES ('25', '1', '42');
INSERT INTO `sys_user_experience` VALUES ('30', '1', '47');
INSERT INTO `sys_user_experience` VALUES ('31', '1', '48');
INSERT INTO `sys_user_experience` VALUES ('32', '1', '49');
