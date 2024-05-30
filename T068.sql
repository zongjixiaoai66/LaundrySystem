/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb3 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

DROP DATABASE IF EXISTS `t068`;
CREATE DATABASE IF NOT EXISTS `t068` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `t068`;

DROP TABLE IF EXISTS `chat`;
CREATE TABLE IF NOT EXISTS `chat` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint NOT NULL COMMENT '用户id',
  `adminid` bigint DEFAULT NULL COMMENT '管理员id',
  `ask` longtext COMMENT '提问',
  `reply` longtext COMMENT '回复',
  `isreply` int DEFAULT NULL COMMENT '是否回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1618384628505 DEFAULT CHARSET=utf8mb3 COMMENT='在线客服';

DELETE FROM `chat`;
INSERT INTO `chat` (`id`, `addtime`, `userid`, `adminid`, `ask`, `reply`, `isreply`) VALUES
	(81, '2021-04-14 07:05:26', 1, 1, '提问1', '回复1', 1),
	(82, '2021-04-14 07:05:26', 2, 2, '提问2', '回复2', 2),
	(83, '2021-04-14 07:05:26', 3, 3, '提问3', '回复3', 3),
	(84, '2021-04-14 07:05:26', 4, 4, '提问4', '回复4', 4),
	(85, '2021-04-14 07:05:26', 5, 5, '提问5', '回复5', 5),
	(86, '2021-04-14 07:05:26', 6, 6, '提问6', '回复6', 6),
	(1618384424282, '2021-04-14 07:13:43', 1618384306796, NULL, '测试', NULL, 0),
	(1618384628504, '2021-04-14 07:17:07', 1618384306796, 1, NULL, '你好', NULL);

DROP TABLE IF EXISTS `config`;
CREATE TABLE IF NOT EXISTS `config` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3 COMMENT='配置文件';

DELETE FROM `config`;
INSERT INTO `config` (`id`, `name`, `value`) VALUES
	(1, 'picture1', 'http://localhost:8080/springboot4691l/upload/picture1.jpg'),
	(2, 'picture2', 'http://localhost:8080/springboot4691l/upload/picture2.jpg'),
	(3, 'picture3', 'http://localhost:8080/springboot4691l/upload/picture3.jpg'),
	(6, 'picture4', 'http://localhost:8080/springboot4691l/upload/1618384141577.jpg');

DROP TABLE IF EXISTS `dianjia`;
CREATE TABLE IF NOT EXISTS `dianjia` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dianjiazhanghao` varchar(200) NOT NULL COMMENT '店家账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `dianjiaxingming` varchar(200) DEFAULT NULL COMMENT '店家姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shoujihaoma` varchar(200) DEFAULT NULL COMMENT '手机号码',
  `gerenzhaopian` varchar(200) DEFAULT NULL COMMENT '个人照片',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`),
  UNIQUE KEY `dianjiazhanghao` (`dianjiazhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1618384173936 DEFAULT CHARSET=utf8mb3 COMMENT='店家';

DELETE FROM `dianjia`;
INSERT INTO `dianjia` (`id`, `addtime`, `dianjiazhanghao`, `mima`, `dianjiaxingming`, `xingbie`, `shoujihaoma`, `gerenzhaopian`, `sfsh`, `shhf`) VALUES
	(21, '2021-04-14 07:05:25', '店家1', '123456', '店家姓名1', '男', '13823888881', 'http://localhost:8080/springboot4691l/upload/dianjia_gerenzhaopian1.jpg', '是', ''),
	(22, '2021-04-14 07:05:25', '店家2', '123456', '店家姓名2', '男', '13823888882', 'http://localhost:8080/springboot4691l/upload/dianjia_gerenzhaopian2.jpg', '是', ''),
	(23, '2021-04-14 07:05:25', '店家3', '123456', '店家姓名3', '男', '13823888883', 'http://localhost:8080/springboot4691l/upload/dianjia_gerenzhaopian3.jpg', '是', ''),
	(24, '2021-04-14 07:05:25', '店家4', '123456', '店家姓名4', '男', '13823888884', 'http://localhost:8080/springboot4691l/upload/dianjia_gerenzhaopian4.jpg', '是', ''),
	(25, '2021-04-14 07:05:25', '店家5', '123456', '店家姓名5', '男', '13823888885', 'http://localhost:8080/springboot4691l/upload/dianjia_gerenzhaopian5.jpg', '是', ''),
	(26, '2021-04-14 07:05:25', '店家6', '123456', '店家姓名6', '男', '13823888886', 'http://localhost:8080/springboot4691l/upload/dianjia_gerenzhaopian6.jpg', '是', ''),
	(1618384173935, '2021-04-14 07:09:33', '12', '12', '12', '女', '12345678909', 'http://localhost:8080/springboot4691l/upload/1618384217250.jpg', '是', NULL);

DROP TABLE IF EXISTS `dianpuxinxi`;
CREATE TABLE IF NOT EXISTS `dianpuxinxi` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dianpumingcheng` varchar(200) DEFAULT NULL COMMENT '店铺名称',
  `dianpuzhaopian` varchar(200) DEFAULT NULL COMMENT '店铺照片',
  `kaifangshijian` varchar(200) DEFAULT NULL COMMENT '开放时间',
  `jingyingfanwei` varchar(200) DEFAULT NULL COMMENT '经营范围',
  `dianpujieshao` longtext COMMENT '店铺介绍',
  `dianjiazhanghao` varchar(200) DEFAULT NULL COMMENT '店家账号',
  `dianjiaxingming` varchar(200) DEFAULT NULL COMMENT '店家姓名',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  `thumbsupnum` int DEFAULT '0' COMMENT '赞',
  `crazilynum` int DEFAULT '0' COMMENT '踩',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int DEFAULT '0' COMMENT '点击次数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1618384274747 DEFAULT CHARSET=utf8mb3 COMMENT='店铺信息';

DELETE FROM `dianpuxinxi`;
INSERT INTO `dianpuxinxi` (`id`, `addtime`, `dianpumingcheng`, `dianpuzhaopian`, `kaifangshijian`, `jingyingfanwei`, `dianpujieshao`, `dianjiazhanghao`, `dianjiaxingming`, `sfsh`, `shhf`, `thumbsupnum`, `crazilynum`, `clicktime`, `clicknum`) VALUES
	(31, '2021-04-14 07:05:25', '店铺名称1', 'http://localhost:8080/springboot4691l/upload/dianpuxinxi_dianpuzhaopian1.jpg', '开放时间1', '经营范围1', '店铺介绍1', '店家账号1', '店家姓名1', '是', '', 1, 1, '2021-04-14 15:05:25', 1),
	(32, '2021-04-14 07:05:25', '店铺名称2', 'http://localhost:8080/springboot4691l/upload/dianpuxinxi_dianpuzhaopian2.jpg', '开放时间2', '经营范围2', '店铺介绍2', '店家账号2', '店家姓名2', '是', '', 2, 2, '2021-04-14 15:05:25', 2),
	(33, '2021-04-14 07:05:25', '店铺名称3', 'http://localhost:8080/springboot4691l/upload/dianpuxinxi_dianpuzhaopian3.jpg', '开放时间3', '经营范围3', '店铺介绍3', '店家账号3', '店家姓名3', '是', '', 3, 3, '2024-01-30 13:04:23', 4),
	(34, '2021-04-14 07:05:25', '店铺名称4', 'http://localhost:8080/springboot4691l/upload/dianpuxinxi_dianpuzhaopian4.jpg', '开放时间4', '经营范围4', '店铺介绍4', '店家账号4', '店家姓名4', '是', '', 4, 4, '2021-04-14 15:05:25', 4),
	(35, '2021-04-14 07:05:25', '店铺名称5', 'http://localhost:8080/springboot4691l/upload/dianpuxinxi_dianpuzhaopian5.jpg', '开放时间5', '经营范围5', '店铺介绍5', '店家账号5', '店家姓名5', '是', '', 5, 5, '2021-04-14 15:05:25', 5),
	(36, '2021-04-14 07:05:25', '店铺名称6', 'http://localhost:8080/springboot4691l/upload/dianpuxinxi_dianpuzhaopian6.jpg', '开放时间6', '经营范围6', '店铺介绍6', '店家账号6', '店家姓名6', '是', '', 6, 6, '2021-04-14 15:07:43', 7),
	(1618384274746, '2021-04-14 07:11:13', '测试店面', 'http://localhost:8080/springboot4691l/upload/1618384228689.jpg', '6:00~24:00', '儿童衣服、名牌衣服等', '<p><img src="http://localhost:8080/springboot4691l/upload/1618384268674.jpg">1222</p>', '12', '12', '是', NULL, 1, 0, '2024-01-30 13:05:43', 5);

DROP TABLE IF EXISTS `dingdanjindu`;
CREATE TABLE IF NOT EXISTS `dingdanjindu` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yifuleixing` varchar(200) DEFAULT NULL COMMENT '衣服类型',
  `yifushuliang` varchar(200) DEFAULT NULL COMMENT '衣服数量',
  `dangqianjindu` varchar(200) DEFAULT NULL COMMENT '当前进度',
  `dianjiazhanghao` varchar(200) DEFAULT NULL COMMENT '店家账号',
  `dianjiaxingming` varchar(200) DEFAULT NULL COMMENT '店家姓名',
  `shoujihaoma` varchar(200) DEFAULT NULL COMMENT '手机号码',
  `gukezhanghao` varchar(200) DEFAULT NULL COMMENT '顾客账号',
  `gukexingming` varchar(200) DEFAULT NULL COMMENT '顾客姓名',
  `gengxinshijian` datetime DEFAULT NULL COMMENT '更新时间',
  `beizhu` longtext COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1618384591982 DEFAULT CHARSET=utf8mb3 COMMENT='订单进度';

DELETE FROM `dingdanjindu`;
INSERT INTO `dingdanjindu` (`id`, `addtime`, `yifuleixing`, `yifushuliang`, `dangqianjindu`, `dianjiazhanghao`, `dianjiaxingming`, `shoujihaoma`, `gukezhanghao`, `gukexingming`, `gengxinshijian`, `beizhu`) VALUES
	(71, '2021-04-14 07:05:26', '衣服类型1', '衣服数量1', '未完成', '店家账号1', '店家姓名1', '手机号码1', '顾客账号1', '顾客姓名1', '2021-04-14 15:05:26', '备注1'),
	(72, '2021-04-14 07:05:26', '衣服类型2', '衣服数量2', '未完成', '店家账号2', '店家姓名2', '手机号码2', '顾客账号2', '顾客姓名2', '2021-04-14 15:05:26', '备注2'),
	(73, '2021-04-14 07:05:26', '衣服类型3', '衣服数量3', '未完成', '店家账号3', '店家姓名3', '手机号码3', '顾客账号3', '顾客姓名3', '2021-04-14 15:05:26', '备注3'),
	(74, '2021-04-14 07:05:26', '衣服类型4', '衣服数量4', '未完成', '店家账号4', '店家姓名4', '手机号码4', '顾客账号4', '顾客姓名4', '2021-04-14 15:05:26', '备注4'),
	(75, '2021-04-14 07:05:26', '衣服类型5', '衣服数量5', '未完成', '店家账号5', '店家姓名5', '手机号码5', '顾客账号5', '顾客姓名5', '2021-04-14 15:05:26', '备注5'),
	(76, '2021-04-14 07:05:26', '衣服类型6', '衣服数量6', '未完成', '店家账号6', '店家姓名6', '手机号码6', '顾客账号6', '顾客姓名6', '2021-04-14 15:05:26', '备注6'),
	(1618384591981, '2021-04-14 07:16:31', '测试类型', '122', '进行中', '12', '12', '12345678909', '121', '121', '2021-04-14 15:16:24', '1221');

DROP TABLE IF EXISTS `dingdanxinxi`;
CREATE TABLE IF NOT EXISTS `dingdanxinxi` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yifuleixing` varchar(200) DEFAULT NULL COMMENT '衣服类型',
  `yifushuliang` varchar(200) DEFAULT NULL COMMENT '衣服数量',
  `dianjiazhanghao` varchar(200) DEFAULT NULL COMMENT '店家账号',
  `dianjiaxingming` varchar(200) DEFAULT NULL COMMENT '店家姓名',
  `gukezhanghao` varchar(200) DEFAULT NULL COMMENT '顾客账号',
  `gukexingming` varchar(200) DEFAULT NULL COMMENT '顾客姓名',
  `jiatingdizhi` varchar(200) DEFAULT NULL COMMENT '家庭地址',
  `zhifupingzheng` varchar(200) DEFAULT NULL COMMENT '支付凭证',
  `beizhu` longtext COMMENT '备注',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1618384538121 DEFAULT CHARSET=utf8mb3 COMMENT='订单信息';

DELETE FROM `dingdanxinxi`;
INSERT INTO `dingdanxinxi` (`id`, `addtime`, `yifuleixing`, `yifushuliang`, `dianjiazhanghao`, `dianjiaxingming`, `gukezhanghao`, `gukexingming`, `jiatingdizhi`, `zhifupingzheng`, `beizhu`, `sfsh`, `shhf`) VALUES
	(61, '2021-04-14 07:05:25', '衣服类型1', '衣服数量1', '店家账号1', '店家姓名1', '顾客账号1', '顾客姓名1', '家庭地址1', 'https://asoa-1305425069.cos.ap-shanghai.myqcloud.com/1669635627773202432.png', '备注1', '是', ''),
	(62, '2021-04-14 07:05:25', '衣服类型2', '衣服数量2', '店家账号2', '店家姓名2', '顾客账号2', '顾客姓名2', '家庭地址2', 'https://asoa-1305425069.cos.ap-shanghai.myqcloud.com/1669635627773202432.png', '备注2', '是', ''),
	(63, '2021-04-14 07:05:25', '衣服类型3', '衣服数量3', '店家账号3', '店家姓名3', '顾客账号3', '顾客姓名3', '家庭地址3', 'https://asoa-1305425069.cos.ap-shanghai.myqcloud.com/1669635627773202432.png', '备注3', '是', ''),
	(64, '2021-04-14 07:05:25', '衣服类型4', '衣服数量4', '店家账号4', '店家姓名4', '顾客账号4', '顾客姓名4', '家庭地址4', 'https://asoa-1305425069.cos.ap-shanghai.myqcloud.com/1669635627773202432.png', '备注4', '是', ''),
	(65, '2021-04-14 07:05:25', '衣服类型5', '衣服数量5', '店家账号5', '店家姓名5', '顾客账号5', '顾客姓名5', '家庭地址5', 'https://asoa-1305425069.cos.ap-shanghai.myqcloud.com/1669635627773202432.png', '备注5', '是', ''),
	(66, '2021-04-14 07:05:26', '衣服类型6', '衣服数量6', '店家账号6', '店家姓名6', '顾客账号6', '顾客姓名6', '家庭地址6', 'https://asoa-1305425069.cos.ap-shanghai.myqcloud.com/1669635627773202432.png', '备注6', '是', ''),
	(1618384538120, '2021-04-14 07:15:37', '测试类型', '122', '12', '12', '121', '121', '123', 'https://asoa-1305425069.cos.ap-shanghai.myqcloud.com/1669635627773202432.png', '1212', '是', '会实时上传进度');

DROP TABLE IF EXISTS `discussdianpuxinxi`;
CREATE TABLE IF NOT EXISTS `discussdianpuxinxi` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint NOT NULL COMMENT '关联表id',
  `userid` bigint NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=127 DEFAULT CHARSET=utf8mb3 COMMENT='店铺信息评论表';

DELETE FROM `discussdianpuxinxi`;
INSERT INTO `discussdianpuxinxi` (`id`, `addtime`, `refid`, `userid`, `nickname`, `content`, `reply`) VALUES
	(121, '2021-04-14 07:05:26', 1, 1, '用户名1', '评论内容1', '回复内容1'),
	(122, '2021-04-14 07:05:26', 2, 2, '用户名2', '评论内容2', '回复内容2'),
	(123, '2021-04-14 07:05:26', 3, 3, '用户名3', '评论内容3', '回复内容3'),
	(124, '2021-04-14 07:05:26', 4, 4, '用户名4', '评论内容4', '回复内容4'),
	(125, '2021-04-14 07:05:26', 5, 5, '用户名5', '评论内容5', '回复内容5'),
	(126, '2021-04-14 07:05:26', 6, 6, '用户名6', '评论内容6', '回复内容6');

DROP TABLE IF EXISTS `forum`;
CREATE TABLE IF NOT EXISTS `forum` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) DEFAULT NULL COMMENT '帖子标题',
  `content` longtext NOT NULL COMMENT '帖子内容',
  `parentid` bigint DEFAULT NULL COMMENT '父节点id',
  `userid` bigint NOT NULL COMMENT '用户id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `isdone` varchar(200) DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1618384385386 DEFAULT CHARSET=utf8mb3 COMMENT='交流区';

DELETE FROM `forum`;
INSERT INTO `forum` (`id`, `addtime`, `title`, `content`, `parentid`, `userid`, `username`, `isdone`) VALUES
	(91, '2021-04-14 07:05:26', '测试帖子', '<p><img src="http://localhost:8080/springboot4691l/upload/1618384101964.jpg">帖子内容1</p>', 1, 1, '用户名1', '开放'),
	(92, '2021-04-14 07:05:26', '帖子标题2', '帖子内容2', 2, 2, '用户名2', '开放'),
	(93, '2021-04-14 07:05:26', '帖子标题3', '帖子内容3', 3, 3, '用户名3', '开放'),
	(94, '2021-04-14 07:05:26', '帖子标题4', '帖子内容4', 4, 4, '用户名4', '开放'),
	(95, '2021-04-14 07:05:26', '帖子标题5', '帖子内容5', 5, 5, '用户名5', '开放'),
	(96, '2021-04-14 07:05:26', '帖子标题6', '帖子内容6', 6, 6, '用户名6', '开放'),
	(1618384357033, '2021-04-14 07:12:36', NULL, '1221', 91, 1618384306796, '121', NULL),
	(1618384385385, '2021-04-14 07:13:04', '测试', '<p>请输入内容12<img src="../../../upload/1618384380851.jpg" alt="" width="1077" height="1077" /></p>', 0, 1618384306796, '121', '开放');

DROP TABLE IF EXISTS `guke`;
CREATE TABLE IF NOT EXISTS `guke` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gukezhanghao` varchar(200) NOT NULL COMMENT '顾客账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `gukexingming` varchar(200) DEFAULT NULL COMMENT '顾客姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shoujihaoma` varchar(200) DEFAULT NULL COMMENT '手机号码',
  `jiatingdizhi` varchar(200) DEFAULT NULL COMMENT '家庭地址',
  `gerenzhaopian` varchar(200) DEFAULT NULL COMMENT '个人照片',
  PRIMARY KEY (`id`),
  UNIQUE KEY `gukezhanghao` (`gukezhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1618384306797 DEFAULT CHARSET=utf8mb3 COMMENT='顾客';

DELETE FROM `guke`;
INSERT INTO `guke` (`id`, `addtime`, `gukezhanghao`, `mima`, `gukexingming`, `xingbie`, `shoujihaoma`, `jiatingdizhi`, `gerenzhaopian`) VALUES
	(11, '2021-04-14 07:05:25', '顾客1', '123456', '顾客姓名1', '男', '13823888881', '家庭地址1', 'http://localhost:8080/springboot4691l/upload/guke_gerenzhaopian1.jpg'),
	(12, '2021-04-14 07:05:25', '顾客2', '123456', '顾客姓名2', '男', '13823888882', '家庭地址2', 'http://localhost:8080/springboot4691l/upload/guke_gerenzhaopian2.jpg'),
	(13, '2021-04-14 07:05:25', '顾客3', '123456', '顾客姓名3', '男', '13823888883', '家庭地址3', 'http://localhost:8080/springboot4691l/upload/guke_gerenzhaopian3.jpg'),
	(14, '2021-04-14 07:05:25', '顾客4', '123456', '顾客姓名4', '男', '13823888884', '家庭地址4', 'http://localhost:8080/springboot4691l/upload/guke_gerenzhaopian4.jpg'),
	(15, '2021-04-14 07:05:25', '顾客5', '123456', '顾客姓名5', '男', '13823888885', '家庭地址5', 'http://localhost:8080/springboot4691l/upload/guke_gerenzhaopian5.jpg'),
	(16, '2021-04-14 07:05:25', '顾客6', '123456', '顾客姓名6', '男', '13823888886', '家庭地址6', 'http://localhost:8080/springboot4691l/upload/guke_gerenzhaopian6.jpg'),
	(1618384306796, '2021-04-14 07:11:46', '121', '121', '121', '男', '12345678908', '123', 'http://localhost:8080/springboot4691l/upload/1618384334763.jpg');

DROP TABLE IF EXISTS `news`;
CREATE TABLE IF NOT EXISTS `news` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `introduction` longtext COMMENT '简介',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1618384162546 DEFAULT CHARSET=utf8mb3 COMMENT='系统公告';

DELETE FROM `news`;
INSERT INTO `news` (`id`, `addtime`, `title`, `introduction`, `picture`, `content`) VALUES
	(111, '2021-04-14 07:05:26', '标题1', '简介1', 'http://localhost:8080/springboot4691l/upload/news_picture1.jpg', '内容1'),
	(112, '2021-04-14 07:05:26', '标题2', '简介2', 'http://localhost:8080/springboot4691l/upload/news_picture2.jpg', '内容2'),
	(113, '2021-04-14 07:05:26', '标题3', '简介3', 'http://localhost:8080/springboot4691l/upload/news_picture3.jpg', '内容3'),
	(114, '2021-04-14 07:05:26', '标题4', '简介4', 'http://localhost:8080/springboot4691l/upload/news_picture4.jpg', '内容4'),
	(115, '2021-04-14 07:05:26', '标题5', '简介5', 'http://localhost:8080/springboot4691l/upload/news_picture5.jpg', '内容5'),
	(116, '2021-04-14 07:05:26', '标题6', '简介6', 'http://localhost:8080/springboot4691l/upload/news_picture6.jpg', '内容6'),
	(1618384162545, '2021-04-14 07:09:22', '测试公告', '12', 'http://localhost:8080/springboot4691l/upload/1618384155260.jpg', '<p>12<img src="http://localhost:8080/springboot4691l/upload/1618384160209.jpg"></p>');

DROP TABLE IF EXISTS `storeup`;
CREATE TABLE IF NOT EXISTS `storeup` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint NOT NULL COMMENT '用户id',
  `refid` bigint DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1618384433776 DEFAULT CHARSET=utf8mb3 COMMENT='收藏表';

DELETE FROM `storeup`;
INSERT INTO `storeup` (`id`, `addtime`, `userid`, `refid`, `tablename`, `name`, `picture`) VALUES
	(1618384433775, '2021-04-14 07:13:53', 1618384306796, 1618384274746, 'dianpuxinxi', '测试店面', 'http://localhost:8080/springboot4691l/upload/1618384228689.jpg');

DROP TABLE IF EXISTS `token`;
CREATE TABLE IF NOT EXISTS `token` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COMMENT='token表';

DELETE FROM `token`;
INSERT INTO `token` (`id`, `userid`, `username`, `tablename`, `role`, `token`, `addtime`, `expiratedtime`) VALUES
	(1, 1, 'abo', 'users', '管理员', 'popy4ydxg7kwypmt9zml42atamz2qa8t', '2021-04-14 07:07:11', '2024-01-30 06:05:26'),
	(2, 1618384173935, '12', 'dianjia', '店家', '20ldbelo3sigbmnxh3hhl266t2cunes2', '2021-04-14 07:10:01', '2021-04-14 08:15:52'),
	(3, 1618384306796, '121', 'guke', '顾客', 'y9969owuubksi5g91o0ceee353msaoyg', '2021-04-14 07:11:54', '2021-04-14 08:17:16'),
	(4, 11, '顾客1', 'guke', '顾客', 'pk09mpbhvsncnx6xvv4ti0fk9narxtd4', '2024-01-30 05:03:21', '2024-01-30 06:05:32'),
	(5, 21, '店家1', 'dianjia', '店家', 'lt2hhqi56i383xc68syo372pxw6mump4', '2024-01-30 05:05:13', '2024-01-30 06:05:14');

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COMMENT='用户表';

DELETE FROM `users`;
INSERT INTO `users` (`id`, `username`, `password`, `role`, `addtime`) VALUES
	(1, 'admin', '123456', '管理员', '2021-04-14 07:05:26');

DROP TABLE IF EXISTS `xiyixinxi`;
CREATE TABLE IF NOT EXISTS `xiyixinxi` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dianpumingcheng` varchar(200) DEFAULT NULL COMMENT '店铺名称',
  `dianpuzhaopian` varchar(200) DEFAULT NULL COMMENT '店铺照片',
  `yifuleixing` varchar(200) DEFAULT NULL COMMENT '衣服类型',
  `yifushuliang` int DEFAULT NULL COMMENT '衣服数量',
  `dianjiazhanghao` varchar(200) DEFAULT NULL COMMENT '店家账号',
  `dianjiaxingming` varchar(200) DEFAULT NULL COMMENT '店家姓名',
  `gukezhanghao` varchar(200) DEFAULT NULL COMMENT '顾客账号',
  `gukexingming` varchar(200) DEFAULT NULL COMMENT '顾客姓名',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1618384454809 DEFAULT CHARSET=utf8mb3 COMMENT='洗衣信息';

DELETE FROM `xiyixinxi`;
INSERT INTO `xiyixinxi` (`id`, `addtime`, `dianpumingcheng`, `dianpuzhaopian`, `yifuleixing`, `yifushuliang`, `dianjiazhanghao`, `dianjiaxingming`, `gukezhanghao`, `gukexingming`, `beizhu`, `sfsh`, `shhf`) VALUES
	(51, '2021-04-14 07:05:25', '店铺名称1', 'https://asoa-1305425069.cos.ap-shanghai.myqcloud.com/1669635627773202432.png', '衣服类型1', 1, '店家账号1', '店家姓名1', '顾客账号1', '顾客姓名1', '备注1', '是', ''),
	(52, '2021-04-14 07:05:25', '店铺名称2', 'https://asoa-1305425069.cos.ap-shanghai.myqcloud.com/1669635627773202432.png', '衣服类型2', 2, '店家账号2', '店家姓名2', '顾客账号2', '顾客姓名2', '备注2', '是', ''),
	(53, '2021-04-14 07:05:25', '店铺名称3', 'https://asoa-1305425069.cos.ap-shanghai.myqcloud.com/1669635627773202432.png', '衣服类型3', 3, '店家账号3', '店家姓名3', '顾客账号3', '顾客姓名3', '备注3', '是', ''),
	(54, '2021-04-14 07:05:25', '店铺名称4', 'https://asoa-1305425069.cos.ap-shanghai.myqcloud.com/1669635627773202432.png', '衣服类型4', 4, '店家账号4', '店家姓名4', '顾客账号4', '顾客姓名4', '备注4', '是', ''),
	(55, '2021-04-14 07:05:25', '店铺名称5', 'https://asoa-1305425069.cos.ap-shanghai.myqcloud.com/1669635627773202432.png', '衣服类型5', 5, '店家账号5', '店家姓名5', '顾客账号5', '顾客姓名5', '备注5', '是', ''),
	(56, '2021-04-14 07:05:25', '店铺名称6', 'https://asoa-1305425069.cos.ap-shanghai.myqcloud.com/1669635627773202432.png', '衣服类型6', 6, '店家账号6', '店家姓名6', '顾客账号6', '顾客姓名6', '备注6', '是', ''),
	(1618384454808, '2021-04-14 07:14:14', '测试店面', 'https://asoa-1305425069.cos.ap-shanghai.myqcloud.com/1669635627773202432.png', '测试类型', 122, '12', '12', '121', '121', '洗的好些', '是', '好的，请先支付订金，完成后再支付尾款');

DROP TABLE IF EXISTS `yifuleixing`;
CREATE TABLE IF NOT EXISTS `yifuleixing` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yifuleixing` varchar(200) DEFAULT NULL COMMENT '衣服类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1618384075030 DEFAULT CHARSET=utf8mb3 COMMENT='衣服类型';

DELETE FROM `yifuleixing`;
INSERT INTO `yifuleixing` (`id`, `addtime`, `yifuleixing`) VALUES
	(41, '2021-04-14 07:05:25', '衣服类型1'),
	(42, '2021-04-14 07:05:25', '衣服类型2'),
	(43, '2021-04-14 07:05:25', '衣服类型3'),
	(44, '2021-04-14 07:05:25', '衣服类型4'),
	(45, '2021-04-14 07:05:25', '衣服类型5'),
	(46, '2021-04-14 07:05:25', '衣服类型6'),
	(1618384075029, '2021-04-14 07:07:54', '测试类型');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
