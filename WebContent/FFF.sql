/*
Navicat MySQL Data Transfer

Source Server         : ebuy
Source Server Version : 50715
Source Host           : localhost:3306
Source Database       : day911

Target Server Type    : MYSQL
Target Server Version : 50715
File Encoding         : 65001

Date: 2020-03-17 14:13:19
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `account`
-- ----------------------------
DROP TABLE IF EXISTS `account`;
CREATE TABLE `account` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `accountName` varchar(50) NOT NULL,
  `money` double NOT NULL DEFAULT '0',
  `uid` int(11) NOT NULL,
  `createTime` datetime NOT NULL,
  `updateTime` datetime NOT NULL,
  `remark` varchar(300) DEFAULT NULL,
  `accountType` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of account
-- ----------------------------
INSERT INTO `account` VALUES ('3', '账户', '230', '2', '2017-12-25 11:57:31', '2017-12-29 17:30:53', '没有', '工商');
INSERT INTO `account` VALUES ('4', 'test1', '10', '1', '2017-12-18 15:22:38', '2017-12-27 15:22:42', '设定', '工商');
INSERT INTO `account` VALUES ('5', 'test2', '20', '1', '2017-12-11 15:23:07', '2017-12-28 15:23:10', '设定', '农行');
INSERT INTO `account` VALUES ('6', '账户1', '40', '1', '2017-12-26 11:08:15', '2017-12-26 11:08:18', '无', '工商');
INSERT INTO `account` VALUES ('7', '账户2', '25', '1', '2017-12-26 11:42:37', '2017-12-26 11:42:42', '没有', '农业');
INSERT INTO `account` VALUES ('8', '账户3', '100', '2', '2017-12-25 11:57:31', '2019-09-23 21:51:13', '没有', '工商');
INSERT INTO `account` VALUES ('9', 'test1', '9', '1', '2017-12-18 15:22:38', '2017-12-27 15:22:42', '设定', '工商');
INSERT INTO `account` VALUES ('10', 'test2', '40', '1', '2017-12-11 15:23:07', '2017-12-28 15:23:10', '设定', '农行');
INSERT INTO `account` VALUES ('11', '账户1', '30', '1', '2017-12-26 11:08:15', '2017-12-26 11:08:18', '无', '工商');
INSERT INTO `account` VALUES ('12', '账户2', '33', '1', '2017-12-26 11:42:37', '2017-12-26 11:42:42', '没有', '农业');
INSERT INTO `account` VALUES ('13', '账户3', '24', '2', '2017-12-25 11:57:31', '2017-12-26 11:57:33', '没有', '工商');
INSERT INTO `account` VALUES ('14', 'test1', '43', '1', '2017-12-18 15:22:38', '2017-12-27 15:22:42', '设定', '工商');
INSERT INTO `account` VALUES ('15', 'test2', '23', '1', '2017-12-11 15:23:07', '2017-12-28 15:23:10', '设定', '农行');
INSERT INTO `account` VALUES ('16', '账户1', '46', '1', '2017-12-26 11:08:15', '2017-12-26 11:08:18', '无', '工商');
INSERT INTO `account` VALUES ('17', '账户2', '5', '1', '2017-12-26 11:42:37', '2017-12-26 11:42:42', '没有', '农业');
INSERT INTO `account` VALUES ('18', '账户3', '200', '2', '2017-12-25 11:57:31', '2017-12-26 11:57:33', '没有', '工商');
INSERT INTO `account` VALUES ('19', 'test1', '23', '1', '2017-12-18 15:22:38', '2017-12-27 15:22:42', '设定', '工商');
INSERT INTO `account` VALUES ('20', 'test2', '234', '1', '2017-12-11 15:23:07', '2017-12-28 15:23:10', '设定', '农行');
INSERT INTO `account` VALUES ('23', 'dsf', '100', '2', '2017-12-29 17:30:05', '2017-12-29 17:30:05', 'asdf', '建设');
INSERT INTO `account` VALUES ('24', '1', '100', '2', '2019-09-21 16:00:02', '2019-09-21 16:00:02', '', '招商');
INSERT INTO `account` VALUES ('25', '1', '100', '2', '2020-03-17 13:28:50', '2020-03-17 13:28:50', '11', '招商');

-- ----------------------------
-- Table structure for `outtype`
-- ----------------------------
DROP TABLE IF EXISTS `outtype`;
CREATE TABLE `outtype` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `typeName` varchar(50) NOT NULL,
  `pid` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of outtype
-- ----------------------------
INSERT INTO `outtype` VALUES ('1', '交通', '0');
INSERT INTO `outtype` VALUES ('2', '餐饮', '0');
INSERT INTO `outtype` VALUES ('3', '娱乐', '0');
INSERT INTO `outtype` VALUES ('4', '飞机', '1');
INSERT INTO `outtype` VALUES ('5', '火车', '1');
INSERT INTO `outtype` VALUES ('6', '轮船', '1');
INSERT INTO `outtype` VALUES ('7', '四川火锅', '2');
INSERT INTO `outtype` VALUES ('8', '串串', '2');
INSERT INTO `outtype` VALUES ('9', '电影', '3');

-- ----------------------------
-- Table structure for `payin`
-- ----------------------------
DROP TABLE IF EXISTS `payin`;
CREATE TABLE `payin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `inName` varchar(50) NOT NULL,
  `money` double NOT NULL,
  `inType` varchar(30) NOT NULL,
  `accountId` int(11) NOT NULL,
  `createTime` datetime NOT NULL,
  `updateTime` datetime NOT NULL,
  `remark` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of payin
-- ----------------------------
INSERT INTO `payin` VALUES ('1', '收入1', '1000', '工资', '21', '2017-12-29 09:04:00', '2017-12-29 09:04:00', '无');
INSERT INTO `payin` VALUES ('2', '随意', '100', '奖金', '21', '2017-12-29 09:05:32', '2017-12-29 09:05:32', '阿斯蒂芬');
INSERT INTO `payin` VALUES ('3', 'sadf', '100', '工资', '21', '2017-12-29 09:06:50', '2017-12-29 09:06:50', 'sdf');
INSERT INTO `payin` VALUES ('4', 'dsf', '100', '其他', '21', '2017-12-29 09:07:57', '2017-12-29 09:07:57', 'adsf');
INSERT INTO `payin` VALUES ('5', 'sdf', '100', '工资', '18', '2017-12-29 09:09:25', '2017-12-29 09:09:25', 'dsfasd');
INSERT INTO `payin` VALUES ('6', 'sdf', '100', '工资', '18', '2017-12-29 09:10:08', '2017-12-29 09:10:08', 'asdfasfd');
INSERT INTO `payin` VALUES ('7', 'asdf', '100', '工资', '21', '2017-12-29 09:10:31', '2017-12-29 09:10:31', 'asdf');
INSERT INTO `payin` VALUES ('8', '55', '100', '奖金', '8', '2019-09-21 16:00:16', '2019-09-21 16:00:16', '');

-- ----------------------------
-- Table structure for `payout`
-- ----------------------------
DROP TABLE IF EXISTS `payout`;
CREATE TABLE `payout` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `outName` varchar(50) NOT NULL,
  `outTypeId` int(11) NOT NULL,
  `money` double NOT NULL,
  `accountId` int(11) NOT NULL,
  `createTime` datetime NOT NULL,
  `updateTime` datetime NOT NULL,
  `remark` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of payout
-- ----------------------------
INSERT INTO `payout` VALUES ('3', '1', '8', '100', '8', '2019-09-23 20:58:59', '2019-09-23 20:58:59', '11');
INSERT INTO `payout` VALUES ('4', '2', '20', '20', '25', '2019-09-01 21:41:42', '2019-09-01 21:41:47', 'zhizhi');
INSERT INTO `payout` VALUES ('5', '吃', '7', '200', '8', '2019-09-23 21:50:35', '2019-09-23 21:50:35', '');
INSERT INTO `payout` VALUES ('6', '吃吃', '8', '20', '8', '2019-09-23 21:51:13', '2019-09-23 21:51:13', '');

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `pwd` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'zs', '000');
INSERT INTO `user` VALUES ('2', 'admin', 'admin');
INSERT INTO `user` VALUES ('3', 'lss', '000');
INSERT INTO `user` VALUES ('4', '陈圆圆', '000');
