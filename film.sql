/*
Navicat MySQL Data Transfer

Source Server         : user
Source Server Version : 50556
Source Host           : localhost:3306
Source Database       : film

Target Server Type    : MYSQL
Target Server Version : 50556
File Encoding         : 65001

Date: 2019-08-21 10:52:52
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `actor`
-- ----------------------------
DROP TABLE IF EXISTS `actor`;
CREATE TABLE `actor` (
  `a_id` int(11) NOT NULL AUTO_INCREMENT,
  `a_fans` int(11) DEFAULT NULL,
  `a_name` char(100) DEFAULT NULL,
  PRIMARY KEY (`a_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of actor
-- ----------------------------

-- ----------------------------
-- Table structure for `cfilm`
-- ----------------------------
DROP TABLE IF EXISTS `cfilm`;
CREATE TABLE `cfilm` (
  `cfilm_id` int(11) NOT NULL AUTO_INCREMENT,
  `u_id` int(11) DEFAULT NULL,
  `f_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`cfilm_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cfilm
-- ----------------------------

-- ----------------------------
-- Table structure for `comment`
-- ----------------------------
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment` (
  `c_id` int(11) NOT NULL AUTO_INCREMENT,
  `u_id` int(11) DEFAULT NULL,
  `c_content` varchar(255) DEFAULT NULL,
  `f_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`c_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of comment
-- ----------------------------

-- ----------------------------
-- Table structure for `factor`
-- ----------------------------
DROP TABLE IF EXISTS `factor`;
CREATE TABLE `factor` (
  `factor_id` int(11) NOT NULL AUTO_INCREMENT,
  `a_id` int(11) DEFAULT NULL,
  `u_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`factor_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of factor
-- ----------------------------

-- ----------------------------
-- Table structure for `film`
-- ----------------------------
DROP TABLE IF EXISTS `film`;
CREATE TABLE `film` (
  `f_id` int(11) NOT NULL AUTO_INCREMENT,
  `c_sum` int(11) DEFAULT NULL,
  `zan_sum` int(11) DEFAULT NULL,
  `f_name` char(20) DEFAULT NULL,
  `f_brief` varchar(255) DEFAULT NULL,
  `f_year` char(20) DEFAULT NULL,
  `f_country` char(50) DEFAULT NULL,
  `f_poster` varchar(225) DEFAULT NULL,
  `f_content` varchar(255) DEFAULT NULL,
  `f_type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`f_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of film
-- ----------------------------
INSERT INTO `film` VALUES ('2', '0', '0', '', '', '1999', '', null, null, null);
INSERT INTO `film` VALUES ('3', '0', '0', 'admin', '1', '1999', '1', null, null, null);
INSERT INTO `film` VALUES ('5', '0', '0', 'sadfas', '4', '4199', '4', null, null, null);
INSERT INTO `film` VALUES ('6', '0', '0', '超级大坏蛋', '2121', '1211991', '1212', 'images/movie/movie1.jpg', '', 'dongzuo');
INSERT INTO `film` VALUES ('7', '0', '0', '1111', '111', '111191919', '111', null, '', null);

-- ----------------------------
-- Table structure for `kind`
-- ----------------------------
DROP TABLE IF EXISTS `kind`;
CREATE TABLE `kind` (
  `k_id` int(11) NOT NULL AUTO_INCREMENT,
  `k_name` char(100) DEFAULT NULL,
  `f_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`k_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of kind
-- ----------------------------

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `u_id` int(11) NOT NULL AUTO_INCREMENT,
  `u_name` char(20) DEFAULT NULL,
  `u_pwd` char(50) DEFAULT NULL,
  `u_retime` char(100) DEFAULT NULL,
  `u_avatar` varchar(255) DEFAULT NULL,
  `u_email` char(100) DEFAULT NULL,
  PRIMARY KEY (`u_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', '1', '111', null, null, '11@QQ.COM');
INSERT INTO `user` VALUES ('2', '1', '11', null, null, '1@qq.com');
INSERT INTO `user` VALUES ('3', '123', '12', null, null, '12@qq.com');
INSERT INTO `user` VALUES ('4', 'ysx', '12', null, null, '8732@qq.com');
INSERT INTO `user` VALUES ('5', '1', '1', null, null, '1@qq.com');
INSERT INTO `user` VALUES ('6', '12312', '123123', null, '123', '112312@qq.com');
INSERT INTO `user` VALUES ('7', '王', '777', null, '123', '321@qq.com');
INSERT INTO `user` VALUES ('8', '123', '123', null, '../imgs/avatar.jpg', '111@qq.com');
INSERT INTO `user` VALUES ('9', '杨少雄', '123', null, '../imgs/avatar.jpg', '123@qq.com');
INSERT INTO `user` VALUES ('10', '柴栋民', '1', null, '../imgs/avatar.jpg', '1212@qq.com');
INSERT INTO `user` VALUES ('11', '123', '123', null, null, '99@qq.com');

-- ----------------------------
-- Table structure for `works`
-- ----------------------------
DROP TABLE IF EXISTS `works`;
CREATE TABLE `works` (
  `w_id` int(11) NOT NULL AUTO_INCREMENT,
  `a_id` int(11) DEFAULT NULL,
  `f_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`w_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of works
-- ----------------------------

-- ----------------------------
-- Table structure for `zan`
-- ----------------------------
DROP TABLE IF EXISTS `zan`;
CREATE TABLE `zan` (
  `zan_id` int(11) NOT NULL AUTO_INCREMENT,
  `u_id` int(11) DEFAULT NULL,
  `f_id` int(11) DEFAULT NULL,
  `if_zan` int(11) DEFAULT NULL,
  PRIMARY KEY (`zan_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zan
-- ----------------------------
