/*
 Navicat Premium Data Transfer

 Source Server         : 本机(MySQL8 端口13306 密码12345678)
 Source Server Type    : MySQL
 Source Server Version : 80019
 Source Host           : localhost:13306
 Source Schema         : hadoopdisk

 Target Server Type    : MySQL
 Target Server Version : 80019
 File Encoding         : 65001

 Date: 02/12/2020 16:16:03
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for addapply
-- ----------------------------
DROP TABLE IF EXISTS `addapply`;
CREATE TABLE `addapply`  (
  `id` int NOT NULL,
  `groupid` int NULL DEFAULT NULL,
  `formid` int NULL DEFAULT NULL,
  `toid` int NULL DEFAULT NULL,
  `time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `statue` int NULL DEFAULT NULL,
  `message` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of addapply
-- ----------------------------

-- ----------------------------
-- Table structure for diskuser
-- ----------------------------
DROP TABLE IF EXISTS `diskuser`;
CREATE TABLE `diskuser`  (
  `userid` int NOT NULL,
  `rootfolderid` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `sign` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `imgpath` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `statue` int NULL DEFAULT NULL,
  `createtime` datetime(0) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`userid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of diskuser
-- ----------------------------
INSERT INTO `diskuser` VALUES (1, '1', '1', 'cb323f94f7575f0c5cee65521507e1da', 'wsq', '13510141822', 'http://zimg01.vcarecity.com/485071f62997d7e2733e0eed9bf5189a', 'wsq@msn.com', 1, '2020-12-02 16:11:29');

-- ----------------------------
-- Table structure for fileindex
-- ----------------------------
DROP TABLE IF EXISTS `fileindex`;
CREATE TABLE `fileindex`  (
  `fileid` int NOT NULL AUTO_INCREMENT,
  `fatherfolderid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `groupid` int NULL DEFAULT NULL,
  `uploadlocationid` int NULL DEFAULT NULL,
  `size` double NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `updatetime` datetime(0) NULL DEFAULT NULL,
  `uploadtime` datetime(0) NULL DEFAULT NULL,
  `userid` int NULL DEFAULT NULL,
  `deletetime` datetime(0) NULL DEFAULT NULL,
  `sharetype` int NULL DEFAULT NULL,
  `savenum` int NULL DEFAULT NULL,
  `filetype` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `sortype` int NULL DEFAULT NULL,
  `isdelete` int NULL DEFAULT NULL,
  PRIMARY KEY (`fileid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of fileindex
-- ----------------------------
INSERT INTO `fileindex` VALUES (1, '21e42020120214441717e5', NULL, 3, 114343, 'tuzi.png', '2020-12-02 15:13:47', '2020-12-02 15:13:47', 1, NULL, 0, 1, 'png', 1, 0);
INSERT INTO `fileindex` VALUES (2, '21e42020120214441717e5', NULL, 4, 18826, 'a624c7078cba4d6ecb5b3e49ce253a92.jpg', '2020-12-02 15:30:26', '2020-12-02 15:30:26', 1, NULL, 0, 1, 'jpg', 1, 0);

-- ----------------------------
-- Table structure for folder
-- ----------------------------
DROP TABLE IF EXISTS `folder`;
CREATE TABLE `folder`  (
  `folderid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `fatherfolderid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `groupid` int NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `updatetime` datetime(0) NULL DEFAULT NULL,
  `userid` int NULL DEFAULT NULL,
  `createtime` datetime(0) NULL DEFAULT NULL,
  `sharetype` int NULL DEFAULT NULL,
  `isdelete` int NULL DEFAULT NULL,
  `deletetime` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`folderid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of folder
-- ----------------------------
INSERT INTO `folder` VALUES ('21e42020120214441717e5', '1', NULL, '12', '2020-12-02 14:43:16', 1, '2020-12-02 14:43:16', 0, 0, NULL);

-- ----------------------------
-- Table structure for friend
-- ----------------------------
DROP TABLE IF EXISTS `friend`;
CREATE TABLE `friend`  (
  `id` int NOT NULL,
  `masterid` int NULL DEFAULT NULL,
  `friendid` int NULL DEFAULT NULL,
  `establishtime` datetime(0) NULL DEFAULT NULL,
  `comment` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of friend
-- ----------------------------

-- ----------------------------
-- Table structure for groupmessage
-- ----------------------------
DROP TABLE IF EXISTS `groupmessage`;
CREATE TABLE `groupmessage`  (
  `id` int NOT NULL,
  `formid` int NULL DEFAULT NULL,
  `message` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `time` datetime(0) NULL DEFAULT NULL,
  `groupid` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of groupmessage
-- ----------------------------

-- ----------------------------
-- Table structure for groupnumber
-- ----------------------------
DROP TABLE IF EXISTS `groupnumber`;
CREATE TABLE `groupnumber`  (
  `id` int NOT NULL,
  `groupid` int NULL DEFAULT NULL,
  `userid` int NULL DEFAULT NULL,
  `jointime` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of groupnumber
-- ----------------------------

-- ----------------------------
-- Table structure for resgroup
-- ----------------------------
DROP TABLE IF EXISTS `resgroup`;
CREATE TABLE `resgroup`  (
  `groupid` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `createtime` datetime(0) NULL DEFAULT NULL,
  `imgpath` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `descripe` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `userid` int NULL DEFAULT NULL,
  `rootfolder` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`groupid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of resgroup
-- ----------------------------

-- ----------------------------
-- Table structure for sharedetail
-- ----------------------------
DROP TABLE IF EXISTS `sharedetail`;
CREATE TABLE `sharedetail`  (
  `sharedetailid` int NOT NULL,
  `shareid` int NULL DEFAULT NULL,
  `resourcetype` int NULL DEFAULT NULL,
  `resourcetypeid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`sharedetailid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sharedetail
-- ----------------------------

-- ----------------------------
-- Table structure for sharefile
-- ----------------------------
DROP TABLE IF EXISTS `sharefile`;
CREATE TABLE `sharefile`  (
  `shareid` int NOT NULL,
  `userid` int NULL DEFAULT NULL,
  `sharetime` datetime(0) NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `starttime` datetime(0) NULL DEFAULT NULL,
  `shareurl` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `statue` int NULL DEFAULT NULL,
  PRIMARY KEY (`shareid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sharefile
-- ----------------------------

-- ----------------------------
-- Table structure for upload
-- ----------------------------
DROP TABLE IF EXISTS `upload`;
CREATE TABLE `upload`  (
  `uploadloationid` int NOT NULL AUTO_INCREMENT,
  `uploadlocation` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `uploadtime` datetime(0) NULL DEFAULT NULL,
  `userid` int NULL DEFAULT NULL,
  `orignalname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `uploadtype` int NULL DEFAULT NULL,
  `usernum` int NULL DEFAULT NULL,
  `sortype` int NULL DEFAULT NULL,
  `size` double NULL DEFAULT NULL,
  PRIMARY KEY (`uploadloationid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of upload
-- ----------------------------
INSERT INTO `upload` VALUES (1, '205c202012021510360323', '2020-12-02 15:09:35', 1, 'tuzi.png', 0, 1, 1, 114343);
INSERT INTO `upload` VALUES (2, 'd72520201202151225e557', '2020-12-02 15:11:24', 1, 'tuzi.png', 0, 1, 1, 114343);
INSERT INTO `upload` VALUES (3, '972720201202151448eabb', '2020-12-02 15:13:47', 1, 'tuzi.png', 0, 1, 1, 114343);
INSERT INTO `upload` VALUES (4, '473620201202153127e2c0', '2020-12-02 15:30:26', 1, 'a624c7078cba4d6ecb5b3e49ce253a92.jpg', 0, 1, 1, 18826);

-- ----------------------------
-- Table structure for usermessage
-- ----------------------------
DROP TABLE IF EXISTS `usermessage`;
CREATE TABLE `usermessage`  (
  `id` int NOT NULL,
  `statue` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `touserid` int NULL DEFAULT NULL,
  `fromuserid` int NULL DEFAULT NULL,
  `time` datetime(0) NULL DEFAULT NULL,
  `message` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of usermessage
-- ----------------------------

SET FOREIGN_KEY_CHECKS = 1;
