/*
Navicat MySQL Data Transfer

Source Server         : localhost-3306
Source Server Version : 50506
Source Host           : localhost:3306
Source Database       : demo534

Target Server Type    : MYSQL
Target Server Version : 50506
File Encoding         : 65001

Date: 2021-04-27 20:56:17
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `admininfo`
-- ----------------------------
DROP TABLE IF EXISTS `admininfo`;
CREATE TABLE `admininfo` (
  `adminid` int(11) NOT NULL AUTO_INCREMENT COMMENT '用户编号',
  `adminname` varchar(255) DEFAULT NULL COMMENT '用户用户名',
  `adminpwd` varchar(255) DEFAULT NULL COMMENT '用户密码',
  `role` varchar(255) DEFAULT NULL COMMENT '用户角色',
  `headimg` varchar(255) DEFAULT NULL COMMENT '用户头像',
  `admincreatetime` varchar(255) DEFAULT NULL COMMENT '创建时间',
  `islock` varchar(255) DEFAULT NULL COMMENT '用户状态',
  PRIMARY KEY (`adminid`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='用户信息';

-- ----------------------------
-- Records of admininfo
-- ----------------------------
INSERT INTO `admininfo` VALUES ('1', 'admin', '123456', '系统管理员', 'https://www.javalm.cn/file/head.jpg', '2021-04-06 13:18:58', '可用');
INSERT INTO `admininfo` VALUES ('2', 'admin2', '123456', '系统管理员', 'https://www.javalm.cn/file/head.jpg', '2021-03-27 00:32:21', '可用');
INSERT INTO `admininfo` VALUES ('4', 'admin3', '123456', '系统管理员', 'https://www.javalm.cn/file/head.jpg', '2021-03-27 00:32:21', '禁用');

-- ----------------------------
-- Table structure for `datainfo`
-- ----------------------------
DROP TABLE IF EXISTS `datainfo`;
CREATE TABLE `datainfo` (
  `dataid` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `dataname` varchar(255) DEFAULT NULL COMMENT '名称',
  `datacontent` varchar(2000) DEFAULT NULL COMMENT '内容',
  `dataurl` varchar(255) DEFAULT NULL COMMENT '路径',
  `datauser` varchar(255) DEFAULT NULL COMMENT '用户',
  `dataintro` varchar(255) DEFAULT NULL COMMENT '简介',
  `dataremarker` varchar(255) DEFAULT NULL COMMENT '备注',
  `datatype` varchar(255) DEFAULT NULL COMMENT '分类',
  `dataaddtime` varchar(255) DEFAULT NULL COMMENT '时间',
  PRIMARY KEY (`dataid`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='视频信息';

-- ----------------------------
-- Records of datainfo
-- ----------------------------
INSERT INTO `datainfo` VALUES ('1', 'java基础学习-1', 'Java 可运行于多个平台，如 Windows, Mac OS 及其他多种 UNIX 版本的系统。  本教程通过简单的实例将让大家更好的了解 Java 编程语言。  移动操作系统 Android 大部分的代码采用 Java 编程语言编程。', 'http://www.javalm.cn/file/2.mp4', '王琪', '/study_system/uploads/5fd19237092ae17b05400304.png', null, '编程学习-java学习-java基础', '2021-04-06 13:18:58');
INSERT INTO `datainfo` VALUES ('7', 'java基础学习-2', 'Java 可运行于多个平台，如 Windows, Mac OS 及其他多种 UNIX 版本的系统。  本教程通过简单的实例将让大家更好的了解 Java 编程语言。  移动操作系统 Android 大部分的代码采用 Java 编程语言编程。', 'http://www.javalm.cn/file/3.mp4', '王琪', '/study_system/uploads/6059a92e09bd086a05400304.png', null, '编程学习-java学习-java基础', '2021-04-06 13:18:58');
INSERT INTO `datainfo` VALUES ('8', 'java基础学习-3', 'Java 可运行于多个平台，如 Windows, Mac OS 及其他多种 UNIX 版本的系统。  本教程通过简单的实例将让大家更好的了解 Java 编程语言。  移动操作系统 Android 大部分的代码采用 Java 编程语言编程。', 'http://www.javalm.cn/file/4.mp4', '王琪', '/study_system/uploads/603627fd09f5c40f05400304.png', null, '编程学习-java学习-java基础', '2021-04-06 13:18:58');
INSERT INTO `datainfo` VALUES ('9', 'java基础学习-4', 'Java 可运行于多个平台，如 Windows, Mac OS 及其他多种 UNIX 版本的系统。  本教程通过简单的实例将让大家更好的了解 Java 编程语言。  移动操作系统 Android 大部分的代码采用 Java 编程语言编程。', 'http://www.javalm.cn/file/2.mp4', '王琪', '/study_system/uploads/5fd19237092ae17b05400304.png', null, '编程学习-java学习-java基础', '2021-04-06 13:18:58');
INSERT INTO `datainfo` VALUES ('10', 'java基础学习-5', 'Java 可运行于多个平台，如 Windows, Mac OS 及其他多种 UNIX 版本的系统。  本教程通过简单的实例将让大家更好的了解 Java 编程语言。  移动操作系统 Android 大部分的代码采用 Java 编程语言编程。', 'http://www.javalm.cn/file/2.mp4', '王琪', '/study_system/uploads/5fd19237092ae17b05400304.png', null, '编程学习-java学习-java基础', '2021-04-06 13:18:58');
INSERT INTO `datainfo` VALUES ('11', 'java基础学习-6', 'Java 可运行于多个平台，如 Windows, Mac OS 及其他多种 UNIX 版本的系统。  本教程通过简单的实例将让大家更好的了解 Java 编程语言。  移动操作系统 Android 大部分的代码采用 Java 编程语言编程。', 'http://www.javalm.cn/file/2.mp4', '王琪', '/study_system/uploads/6059a92e09bd086a05400304.png', null, '编程学习-java学习-java基础', '2021-04-06 13:18:58');
INSERT INTO `datainfo` VALUES ('13', '问', '345', '345', '345', '345', '345', '编程学习-java学习-java基础', '2021-04-20 00:19:03');

-- ----------------------------
-- Table structure for `homework`
-- ----------------------------
DROP TABLE IF EXISTS `homework`;
CREATE TABLE `homework` (
  `swid` int(11) NOT NULL AUTO_INCREMENT COMMENT '作业编号',
  `swname` varchar(255) DEFAULT NULL COMMENT '作业名称',
  `swcontent` mediumtext COMMENT '作业内容',
  `swscore` varchar(11) DEFAULT NULL COMMENT '作业分数',
  `swintro` varchar(255) DEFAULT NULL COMMENT '作业备注',
  `swuser` varchar(255) DEFAULT NULL COMMENT '提交用户',
  `swtime` varchar(255) DEFAULT NULL COMMENT '提交时间',
  PRIMARY KEY (`swid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='作业信息';

-- ----------------------------
-- Records of homework
-- ----------------------------
INSERT INTO `homework` VALUES ('1', '学会搭建java环境', '学习环境搭建，我们一起来学习，安装软件学会使用，jdk安装，tomcat学习，MySQL数据库使用', '88', '非常不错', 'test', '2021-04-19 12:49:50');
INSERT INTO `homework` VALUES ('2', '学会搭建java环境', '学习环境搭建，我们一起来学习，安装软件学会使用，jdk安装，tomcat安装，MySQL数据库测试', '', '2342', 'test', '2021-04-20 00:18:25');

-- ----------------------------
-- Table structure for `msginfo`
-- ----------------------------
DROP TABLE IF EXISTS `msginfo`;
CREATE TABLE `msginfo` (
  `msgid` int(11) NOT NULL AUTO_INCREMENT COMMENT '评论编号',
  `msguser` varchar(255) DEFAULT NULL COMMENT '评论用户',
  `msgcontent` varchar(255) DEFAULT NULL COMMENT '评论内容',
  `tid` int(11) DEFAULT NULL COMMENT '评论音乐',
  `msgaddtime` varchar(255) DEFAULT NULL COMMENT '评论时间',
  PRIMARY KEY (`msgid`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='评论信息';

-- ----------------------------
-- Records of msginfo
-- ----------------------------
INSERT INTO `msginfo` VALUES ('3', 'test', '非常不错，经典值得推荐', '1', '');
INSERT INTO `msginfo` VALUES ('4', 'test', '们静静聆听这份美好的视听享受，人生别计较太多，也许没有结果是最好的结局。', '1', '2021-04-06 13:14:30');
INSERT INTO `msginfo` VALUES ('5', 'test', '我来测试评论', '1', '2021-04-06 14:25:50');
INSERT INTO `msginfo` VALUES ('6', 'test', '我来测试', '1', '2021-04-20 00:01:08');
INSERT INTO `msginfo` VALUES ('7', 'test', '我来测试', '1', '2021-04-20 00:01:19');
INSERT INTO `msginfo` VALUES ('8', 'test', '我来测试评论', '1', '2021-04-20 00:08:29');
INSERT INTO `msginfo` VALUES ('9', 'test', '6666666', '1', '2021-04-20 00:12:58');

-- ----------------------------
-- Table structure for `noticeinfo`
-- ----------------------------
DROP TABLE IF EXISTS `noticeinfo`;
CREATE TABLE `noticeinfo` (
  `noticeid` int(11) NOT NULL AUTO_INCREMENT COMMENT '公告编号',
  `noticetitle` varchar(255) DEFAULT NULL COMMENT '公告标题',
  `noticecontent` varchar(1000) DEFAULT NULL COMMENT '公告内容',
  `noticeaddtime` varchar(50) DEFAULT NULL COMMENT '发布时间',
  `noticeremarker` varchar(255) DEFAULT NULL COMMENT '公告备注',
  PRIMARY KEY (`noticeid`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='公告信息';

-- ----------------------------
-- Records of noticeinfo
-- ----------------------------
INSERT INTO `noticeinfo` VALUES ('1', '关于调整人工客服服务时间的公告', '尊敬的开金中心用户：  从2021年3月15日起，开金中心4006216021服务热线及在线客服的人工服务时间调整为法定工作日周一至周五的9:00至22:00。  在客服非人工服务时间，您也可以给我们留言，我们将在下一个工作日给您回复，留言操作方式：  1、开金中心官网-登录后点击在线客服，在服务时间提示点击“确定”后，系统会自动跳转中留言页面。  2、开金中心APP-登陆后依次点击【我的】-【在线客服】，在服务时间提示点击“确定”后，在点击“留言”。  3、4006216021：在提示音播报完毕后，按1号键。', '2021-04-06 13:18:58', '无');
INSERT INTO `noticeinfo` VALUES ('2', '关于恢复客服电话和在线客服原人工服务时间的公告', '当前疫情防控形势趋于稳定，为了给客户提供更优质的服务，我司决定自2020年7月6日起将 客服电话（95105828、020-83936999）和在线客服人工服务时间从周一至周五8:30-17:00恢 复至周一至周五8:30-21:00；周六日上午8:30-12:00，下午13:30-17:00（节假日除外）。', '2021-04-06 13:18:58', '');

-- ----------------------------
-- Table structure for `sortinfo`
-- ----------------------------
DROP TABLE IF EXISTS `sortinfo`;
CREATE TABLE `sortinfo` (
  `sid` int(11) NOT NULL AUTO_INCREMENT COMMENT '分类编号',
  `sname` varchar(255) DEFAULT NULL COMMENT '分类名称',
  `scontent` varchar(255) DEFAULT NULL COMMENT '分类内容',
  `sremarker` varchar(255) DEFAULT NULL COMMENT '分类备注',
  PRIMARY KEY (`sid`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='分类信息';

-- ----------------------------
-- Records of sortinfo
-- ----------------------------
INSERT INTO `sortinfo` VALUES ('1', '编程学习-java学习-java基础', '编程学习-java学习-java基础', '无');
INSERT INTO `sortinfo` VALUES ('2', '编程学习-java学习-java进阶', '编程学习-java学习-java进阶', '无');
INSERT INTO `sortinfo` VALUES ('3', '编程学习-java学习-web基础', '编程学习-java学习-web基础', '无');
INSERT INTO `sortinfo` VALUES ('4', '编程学习-java学习-web高级', '编程学习-java学习-web高级', '无');

-- ----------------------------
-- Table structure for `userinfo`
-- ----------------------------
DROP TABLE IF EXISTS `userinfo`;
CREATE TABLE `userinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `name` varchar(255) DEFAULT NULL COMMENT '姓名',
  `phone` varchar(255) DEFAULT NULL COMMENT '电话',
  `picurl` varchar(255) DEFAULT NULL COMMENT '头像',
  `email` varchar(255) DEFAULT NULL COMMENT '邮箱',
  `role` varchar(255) DEFAULT NULL COMMENT '角色',
  `sex` varchar(255) DEFAULT NULL COMMENT '性别',
  `password` varchar(255) DEFAULT NULL COMMENT '密码',
  `intro` varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='用户信息';

-- ----------------------------
-- Records of userinfo
-- ----------------------------
INSERT INTO `userinfo` VALUES ('1', 'test', '18314463515', 'http://www.javalm.cn/file/head.jpg', 'test555@qq.com', '学生', '男', '123456', null);
INSERT INTO `userinfo` VALUES ('2', '王琪', '18314463788', 'https://www.javalm.cn/file/head.jpg', 'zhagnsan@qq.com', '教师', '女', '123456', null);
INSERT INTO `userinfo` VALUES ('3', '纸飞机', '18314469999', 'https://www.javalm.cn/file/head.jpg', '123456@qq.com', '学生', '男', '123456', null);
INSERT INTO `userinfo` VALUES ('4', '小明', '18314463886', 'https://www.javalm.cn/file/head.jpg', 'xiaoming@qq.com', '学生', '男', '123456', null);
INSERT INTO `userinfo` VALUES ('7', '张峰', '18314463888', 'https://www.javalm.cn/file/head.jpg', 'xiaoming01@qq.com', '教师', '男', '123456', null);
INSERT INTO `userinfo` VALUES ('8', '李华', '13299995623', 'https://www.javalm.cn/file/head.jpg', '1270695047@qq.com', '教师', '女', '123456', '');

-- ----------------------------
-- Table structure for `workinfo`
-- ----------------------------
DROP TABLE IF EXISTS `workinfo`;
CREATE TABLE `workinfo` (
  `wid` int(11) NOT NULL AUTO_INCREMENT COMMENT '任务编号',
  `wname` varchar(255) DEFAULT NULL COMMENT '任务名称',
  `wcontent` varchar(500) DEFAULT NULL COMMENT '任务内容',
  `wuser` varchar(255) DEFAULT NULL COMMENT '发布教师',
  `waddtime` varchar(255) DEFAULT NULL COMMENT '发布时间',
  PRIMARY KEY (`wid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='任务信息';

-- ----------------------------
-- Records of workinfo
-- ----------------------------
INSERT INTO `workinfo` VALUES ('1', '学会搭建java环境', '学会搭建java环境 记录每个步骤', '王琪', '2021-04-06 13:18:58');

-- ----------------------------
-- Table structure for `基于web的作业在线批改系统的设计与实现-代码`
-- ----------------------------
DROP TABLE IF EXISTS `基于web的作业在线批改系统的设计与实现-代码`;
CREATE TABLE `基于web的作业在线批改系统的设计与实现-代码` (
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of 基于web的作业在线批改系统的设计与实现-代码
-- ----------------------------
