/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 110100
Source Host           : localhost:3306
Source Database       : testxx

Target Server Type    : MYSQL
Target Server Version : 110100
File Encoding         : 65001

Date: 2023-10-10 12:00:25
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for roles
-- ----------------------------
DROP TABLE IF EXISTS `roles`;
CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of roles
-- ----------------------------
INSERT INTO `roles` VALUES ('1', 'user', '2023-10-10 03:20:45', '2023-10-10 03:20:45');
INSERT INTO `roles` VALUES ('2', 'moderator', '2023-10-10 03:20:45', '2023-10-10 03:20:45');
INSERT INTO `roles` VALUES ('3', 'admin', '2023-10-10 03:20:45', '2023-10-10 03:20:45');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `createdAt` varchar(255) DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', 'admin', 'admin@aa.aa', '$2a$08$EXSJ3/16/cVymlovAajkcOqsqwwuWnEQ.ofNszy8HUdOL3H0.SQOm', '2023-10-10 03:40:32', '2023-10-10 03:40:32');

-- ----------------------------
-- Table structure for user_roles
-- ----------------------------
DROP TABLE IF EXISTS `user_roles`;
CREATE TABLE `user_roles` (
  `roleId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `updatedAt` datetime DEFAULT NULL,
  `createdAt` datetime DEFAULT NULL,
  PRIMARY KEY (`roleId`,`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of user_roles
-- ----------------------------
