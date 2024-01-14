/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - ssmz1a23
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`ssmz1a23` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `ssmz1a23`;

/*Table structure for table `address` */

DROP TABLE IF EXISTS `address`;

CREATE TABLE `address` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `address` varchar(200) NOT NULL COMMENT '地址',
  `name` varchar(200) NOT NULL COMMENT '收货人',
  `phone` varchar(200) NOT NULL COMMENT '电话',
  `isdefault` varchar(200) NOT NULL COMMENT '是否默认地址[是/否]',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1614960093867 DEFAULT CHARSET=utf8 COMMENT='地址';

/*Data for the table `address` */

insert  into `address`(`id`,`addtime`,`userid`,`address`,`name`,`phone`,`isdefault`) values (1,'2021-03-05 23:30:50',1,'宇宙银河系金星1号','金某','13823888881','是'),(2,'2021-03-05 23:30:50',2,'宇宙银河系木星1号','木某','13823888882','是'),(3,'2021-03-05 23:30:50',3,'宇宙银河系水星1号','水某','13823888883','是'),(4,'2021-03-05 23:30:50',4,'宇宙银河系火星1号','火某','13823888884','是'),(5,'2021-03-05 23:30:50',5,'宇宙银河系土星1号','土某','13823888885','是'),(6,'2021-03-05 23:30:50',6,'宇宙银河系月球1号','月某','13823888886','是'),(1614959558851,'2021-03-05 23:52:38',1614959492471,'梅州市政府','11','11111111111','是'),(1614960093866,'2021-03-06 00:01:33',1614959952758,'寻乌县留车镇雁洋村村民委员会','胡宇','13513613636','是');

/*Table structure for table `cart` */

DROP TABLE IF EXISTS `cart`;

CREATE TABLE `cart` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `tablename` varchar(200) DEFAULT 'shangpinxinxi' COMMENT '商品表名',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `goodid` bigint(20) NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) DEFAULT NULL COMMENT '图片',
  `buynumber` int(11) NOT NULL COMMENT '购买数量',
  `price` float DEFAULT NULL COMMENT '单价',
  `discountprice` float DEFAULT NULL COMMENT '会员价',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='购物车表';

/*Data for the table `cart` */

/*Table structure for table `chat` */

DROP TABLE IF EXISTS `chat`;

CREATE TABLE `chat` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `adminid` bigint(20) DEFAULT NULL COMMENT '管理员id',
  `ask` longtext COMMENT '提问',
  `reply` longtext COMMENT '回复',
  `isreply` int(11) DEFAULT NULL COMMENT '是否回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1614960147728 DEFAULT CHARSET=utf8 COMMENT='在线咨询';

/*Data for the table `chat` */

insert  into `chat`(`id`,`addtime`,`userid`,`adminid`,`ask`,`reply`,`isreply`) values (41,'2021-03-05 23:30:50',1,1,'提问1','回复1',0),(42,'2021-03-05 23:30:50',2,2,'提问2','回复2',2),(43,'2021-03-05 23:30:50',3,3,'提问3','回复3',3),(44,'2021-03-05 23:30:50',4,4,'提问4','回复4',4),(45,'2021-03-05 23:30:50',5,5,'提问5','回复5',5),(46,'2021-03-05 23:30:50',6,6,'提问6','回复6',6),(1614959765154,'2021-03-05 23:56:04',1,1,NULL,'1111111',NULL),(1614960147727,'2021-03-06 00:02:27',1614959952758,NULL,'什么快递',NULL,1);

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/ssmz1a23/upload/picture1.jpg'),(2,'picture2','http://localhost:8080/ssmz1a23/upload/picture2.jpg'),(3,'picture3','http://localhost:8080/ssmz1a23/upload/picture3.jpg'),(6,'homepage','http://localhost:8080/ssmz1a23/upload/1614959777408.jpg');

/*Table structure for table `discussshangpinxinxi` */

DROP TABLE IF EXISTS `discussshangpinxinxi`;

CREATE TABLE `discussshangpinxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1614960013990 DEFAULT CHARSET=utf8 COMMENT='商品信息评论表';

/*Data for the table `discussshangpinxinxi` */

insert  into `discussshangpinxinxi`(`id`,`addtime`,`refid`,`userid`,`content`,`reply`) values (101,'2021-03-05 23:30:50',1,1,'评论内容1','回复内容1'),(102,'2021-03-05 23:30:50',2,2,'评论内容2','回复内容2'),(103,'2021-03-05 23:30:50',3,3,'评论内容3','回复内容3'),(104,'2021-03-05 23:30:50',4,4,'评论内容4','回复内容4'),(105,'2021-03-05 23:30:50',5,5,'评论内容5','回复内容5'),(106,'2021-03-05 23:30:50',6,6,'评论内容6','回复内容6'),(1614960013989,'2021-03-06 00:00:13',1614959734808,1614959952758,'21212','');

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `introduction` longtext COMMENT '简介',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1614959815946 DEFAULT CHARSET=utf8 COMMENT='系统公告';

/*Data for the table `news` */

insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (91,'2021-03-05 23:30:50','标题1','简介1','http://localhost:8080/ssmz1a23/upload/news_picture1.jpg','内容1'),(92,'2021-03-05 23:30:50','标题2','简介2','http://localhost:8080/ssmz1a23/upload/news_picture2.jpg','内容2'),(93,'2021-03-05 23:30:50','标题3','简介3','http://localhost:8080/ssmz1a23/upload/news_picture3.jpg','内容3'),(94,'2021-03-05 23:30:50','标题4','简介4','http://localhost:8080/ssmz1a23/upload/news_picture4.jpg','内容4'),(95,'2021-03-05 23:30:50','标题5','简介5','http://localhost:8080/ssmz1a23/upload/news_picture5.jpg','内容5'),(96,'2021-03-05 23:30:50','标题6','简介6','http://localhost:8080/ssmz1a23/upload/news_picture6.jpg','内容6'),(1614959815945,'2021-03-05 23:56:55','系统公告','大大所大所多军撒很简单会撒娇代号生机安徽的解散后等级散货大大萨达撒','http://localhost:8080/ssmz1a23/upload/1614959794002.jpg','<p>大大所大所多军撒很简单会撒娇代号生机安徽的解散后等级散货大大萨达撒大大所大所多军撒很简单会撒娇代号生机安徽的解散后等级散货大大萨达撒大大所大所多军撒很简单会撒娇代号生机安徽的解散后等级散货大大萨达撒大大所大所多军撒很简单会撒娇代号生机安徽的解散后等级散货大大萨达撒大大所大所多军撒很简单会撒娇代号生机安徽的解散后等级散货大大萨达撒大大所大所多军撒很简单会撒娇代号生机安徽的解散后等级散货大大萨达撒大大所大所多军撒很简单会撒娇代号生机安徽的解散后等级散货大大萨达撒大大所大所多军撒很简单会撒娇代号生机安徽的解散后等级散货大大萨达撒大大所大所多军撒很简单会撒娇代号生机安徽的解散后等级散货大大萨达撒大大所大所多军撒很简单会撒娇代号生机安徽的解散后等级散货大大萨达撒<img src=\"http://localhost:8080/ssmz1a23/upload/1614959814363.jpg\"></p>');

/*Table structure for table `orders` */

DROP TABLE IF EXISTS `orders`;

CREATE TABLE `orders` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `orderid` varchar(200) NOT NULL COMMENT '订单编号',
  `tablename` varchar(200) DEFAULT 'shangpinxinxi' COMMENT '商品表名',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `goodid` bigint(20) NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) DEFAULT NULL COMMENT '商品图片',
  `buynumber` int(11) NOT NULL COMMENT '购买数量',
  `price` float NOT NULL DEFAULT '0' COMMENT '价格/积分',
  `discountprice` float DEFAULT '0' COMMENT '折扣价格',
  `total` float NOT NULL DEFAULT '0' COMMENT '总价格/总积分',
  `discounttotal` float DEFAULT '0' COMMENT '折扣总价格',
  `type` int(11) DEFAULT '1' COMMENT '支付类型',
  `status` varchar(200) DEFAULT NULL COMMENT '状态',
  `address` varchar(200) DEFAULT NULL COMMENT '地址',
  PRIMARY KEY (`id`),
  UNIQUE KEY `orderid` (`orderid`)
) ENGINE=InnoDB AUTO_INCREMENT=1614960155944 DEFAULT CHARSET=utf8 COMMENT='订单';

/*Data for the table `orders` */

insert  into `orders`(`id`,`addtime`,`orderid`,`tablename`,`userid`,`goodid`,`goodname`,`picture`,`buynumber`,`price`,`discountprice`,`total`,`discounttotal`,`type`,`status`,`address`) values (1614959588686,'2021-03-05 23:53:08','20213523531587263870','shangpinxinxi',1614959492471,32,'商品名称2','http://localhost:8080/ssmz1a23/upload/shangpinxinxi_fengmian2.jpg',1,99.9,99.9,99.9,99.9,1,'已取消','梅州市政府'),(1614959604918,'2021-03-05 23:53:24','20213523533187033353','shangpinxinxi',1614959492471,35,'商品名称5','http://localhost:8080/ssmz1a23/upload/shangpinxinxi_fengmian5.jpg',1,99.9,99.9,99.9,99.9,1,'已支付','梅州市政府'),(1614959613331,'2021-03-05 23:53:32','20213523533975130792','shangpinxinxi',1614959492471,33,'商品名称3','http://localhost:8080/ssmz1a23/upload/shangpinxinxi_fengmian3.jpg',1,99.9,99.9,99.9,99.9,1,'已发货','梅州市政府'),(1614960114332,'2021-03-06 00:01:53','20213602071691351','shangpinxinxi',1614959952758,36,'商品名称6','http://localhost:8080/ssmz1a23/upload/shangpinxinxi_fengmian6.jpg',1,99.9,99.9,99.9,99.9,1,'已取消','寻乌县留车镇雁洋村村民委员会'),(1614960119429,'2021-03-06 00:01:59','20213602626376516','shangpinxinxi',1614959952758,1614959734808,'教学','http://localhost:8080/ssmz1a23/upload/1614959708032.jpg',1,30,30,30,30,1,'已支付','寻乌县留车镇雁洋村村民委员会'),(1614960128009,'2021-03-06 00:02:07','202136021488071844','shangpinxinxi',1614959952758,1614959734808,'教学','http://localhost:8080/ssmz1a23/upload/1614959708032.jpg',1,30,30,30,30,1,'已取消','寻乌县留车镇雁洋村村民委员会'),(1614960155943,'2021-03-06 00:02:35','202136024298493533','shangpinxinxi',1614959952758,1614959734808,'教学','http://localhost:8080/ssmz1a23/upload/1614959708032.jpg',5,30,30,150,150,1,'已支付','寻乌县留车镇雁洋村村民委员会');

/*Table structure for table `shangpinfenlei` */

DROP TABLE IF EXISTS `shangpinfenlei`;

CREATE TABLE `shangpinfenlei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shangpinfenlei` varchar(200) NOT NULL COMMENT '商品分类',
  PRIMARY KEY (`id`),
  UNIQUE KEY `shangpinfenlei` (`shangpinfenlei`)
) ENGINE=InnoDB AUTO_INCREMENT=1614959670390 DEFAULT CHARSET=utf8 COMMENT='商品分类';

/*Data for the table `shangpinfenlei` */

insert  into `shangpinfenlei`(`id`,`addtime`,`shangpinfenlei`) values (21,'2021-03-05 23:30:50','商品分类1'),(22,'2021-03-05 23:30:50','商品分类2'),(23,'2021-03-05 23:30:50','商品分类3'),(24,'2021-03-05 23:30:50','商品分类4'),(25,'2021-03-05 23:30:50','商品分类5'),(26,'2021-03-05 23:30:50','商品分类6'),(1614959670389,'2021-03-05 23:54:29','书籍');

/*Table structure for table `shangpinxinxi` */

DROP TABLE IF EXISTS `shangpinxinxi`;

CREATE TABLE `shangpinxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shangpinbianhao` varchar(200) DEFAULT NULL COMMENT '商品编号',
  `shangpinmingcheng` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `shangpinfenlei` varchar(200) DEFAULT NULL COMMENT '商品分类',
  `xiangqing` longtext COMMENT '详情',
  `fengmian` varchar(200) DEFAULT NULL COMMENT '封面',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  `price` float NOT NULL COMMENT '价格',
  `onelimittimes` int(11) DEFAULT '-1' COMMENT '单限',
  `alllimittimes` int(11) DEFAULT '-1' COMMENT '库存',
  PRIMARY KEY (`id`),
  UNIQUE KEY `shangpinbianhao` (`shangpinbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1614959734809 DEFAULT CHARSET=utf8 COMMENT='商品信息';

/*Data for the table `shangpinxinxi` */

insert  into `shangpinxinxi`(`id`,`addtime`,`shangpinbianhao`,`shangpinmingcheng`,`shangpinfenlei`,`xiangqing`,`fengmian`,`clicktime`,`clicknum`,`price`,`onelimittimes`,`alllimittimes`) values (31,'2021-03-05 23:30:50','商品编号1','商品名称1','商品分类1','详情1','http://localhost:8080/ssmz1a23/upload/shangpinxinxi_fengmian1.jpg','2021-03-05 23:30:50',1,99.9,1,99),(32,'2021-03-05 23:30:50','商品编号2','商品名称2','商品分类2','详情2','http://localhost:8080/ssmz1a23/upload/shangpinxinxi_fengmian2.jpg','2021-03-05 23:53:10',5,99.9,2,98),(33,'2021-03-05 23:30:50','商品编号3','商品名称3','商品分类3','详情3','http://localhost:8080/ssmz1a23/upload/shangpinxinxi_fengmian3.jpg','2021-03-05 23:59:29',9,99.9,3,98),(34,'2021-03-05 23:30:50','商品编号4','商品名称4','商品分类4','详情4','http://localhost:8080/ssmz1a23/upload/shangpinxinxi_fengmian4.jpg','2021-03-05 23:59:45',7,99.9,4,99),(35,'2021-03-05 23:30:50','商品编号5','商品名称5','商品分类5','详情5','http://localhost:8080/ssmz1a23/upload/shangpinxinxi_fengmian5.jpg','2021-03-05 23:53:26',11,99.9,5,98),(36,'2021-03-05 23:30:50','商品编号6','商品名称6','商品分类6','详情6','http://localhost:8080/ssmz1a23/upload/shangpinxinxi_fengmian6.jpg','2021-03-06 00:01:55',10,99.9,6,98),(1614959734808,'2021-03-05 23:55:34','1614959683430','教学','书籍','<p><strong style=\"background-color: rgb(254, 190, 0); color: rgb(254, 254, 254);\">基于微信小程序的网上商城的系统设计与实现基于微信小程序的网上商城的系统设计与实现基于微信小程序的网上商城的系统设计与实现基于微信小程序的网上商城的系统设计与实现基于微信小程序的网上商城的系统设计与实现基于微信小程序的网上商城的系统设计与实现基于微信小程序的网上商城的系统设计与实现基于微信小程序的网上商城的系统设计与实现基于微信小程序的网上商城的系统设计与实现基于微信小程序的网上商城的系统设计与实现基于微信小程序的网上商城的系统设计与实现基于微信小程序的网上商城的系统设计与实现</strong><img src=\"http://localhost:8080/ssmz1a23/upload/1614959728844.jpg\">惺惺惜惺惺</p>','http://localhost:8080/ssmz1a23/upload/1614959708032.jpg','2021-03-06 00:06:30',13,30,100,993);

/*Table structure for table `storeup` */

DROP TABLE IF EXISTS `storeup`;

CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1614960008598 DEFAULT CHARSET=utf8 COMMENT='收藏表';

/*Data for the table `storeup` */

insert  into `storeup`(`id`,`addtime`,`userid`,`refid`,`tablename`,`name`,`picture`) values (1614960008597,'2021-03-06 00:00:08',1614959952758,1614959734808,'shangpinxinxi','教学','http://localhost:8080/ssmz1a23/upload/1614959708032.jpg');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1614959492471,'123','yonghu','用户','yi1q2hhwf7t28z1eovj0olsfdcb1lk7o','2021-03-05 23:52:12','2021-03-06 00:52:12'),(2,1,'abo','users','管理员','rswnsdykqe6w02r08s8uhvd068brdfqn','2021-03-05 23:54:10','2021-03-06 00:54:10'),(3,1614959952758,'456','yonghu','用户','ir0g6m6qyvx8bhy23qfqjydvhhswo3k7','2021-03-05 23:59:21','2021-03-06 00:59:21');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'abo','abo','管理员','2021-03-05 23:30:50');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuzhanghao` varchar(200) NOT NULL COMMENT '用户账号',
  `yonghuxingming` varchar(200) NOT NULL COMMENT '用户姓名',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `nianling` int(11) DEFAULT NULL COMMENT '年龄',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `dianziyouxiang` varchar(200) DEFAULT NULL COMMENT '电子邮箱',
  `money` float DEFAULT '0' COMMENT '余额',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yonghuzhanghao` (`yonghuzhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1614959952759 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`addtime`,`yonghuzhanghao`,`yonghuxingming`,`mima`,`xingbie`,`nianling`,`lianxidianhua`,`dianziyouxiang`,`money`) values (11,'2021-03-05 23:30:50','用户1','用户姓名1','123456','男',1,'13823888881','773890001@qq.com',100),(12,'2021-03-05 23:30:50','用户2','用户姓名2','123456','男',2,'13823888882','773890002@qq.com',100),(13,'2021-03-05 23:30:50','用户3','用户姓名3','123456','男',3,'13823888883','773890003@qq.com',100),(14,'2021-03-05 23:30:50','用户4','用户姓名4','123456','男',4,'13823888884','773890004@qq.com',100),(15,'2021-03-05 23:30:50','用户5','用户姓名5','123456','男',5,'13823888885','773890005@qq.com',100),(16,'2021-03-05 23:30:50','用户6','用户姓名6','123456','男',6,'13823888886','773890006@qq.com',100),(1614959492471,'2021-03-05 23:51:32','123','胡悦','123','男',36,'13513513525','26266@qq.com',11023.2),(1614959952758,'2021-03-05 23:59:12','456','李静','456','女',23,'13513513525','5656@qq.com',656385);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
