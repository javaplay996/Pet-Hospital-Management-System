/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - ssm5x35l
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`ssm5x35l` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `ssm5x35l`;

/*Table structure for table `chongwuxinxi` */

DROP TABLE IF EXISTS `chongwuxinxi`;

CREATE TABLE `chongwuxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `chongwubianhao` varchar(200) DEFAULT NULL COMMENT '宠物编号',
  `chongwumingcheng` varchar(200) NOT NULL COMMENT '宠物名称',
  `pinzhong` varchar(200) NOT NULL COMMENT '品种',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `nianling` int(11) DEFAULT NULL COMMENT '年龄',
  `chongwuxiangqing` longtext COMMENT '宠物详情',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  PRIMARY KEY (`id`),
  UNIQUE KEY `chongwubianhao` (`chongwubianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1618489208331 DEFAULT CHARSET=utf8 COMMENT='宠物信息';

/*Data for the table `chongwuxinxi` */

insert  into `chongwuxinxi`(`id`,`addtime`,`chongwubianhao`,`chongwumingcheng`,`pinzhong`,`tupian`,`nianling`,`chongwuxiangqing`,`clicktime`,`clicknum`) values (21,'2021-04-15 20:04:52','宠物编号1','宠物名称1','品种1','http://localhost:8080/ssm5x35l/upload/chongwuxinxi_tupian1.jpg',1,'宠物详情1','2021-04-15 20:17:24',5);
insert  into `chongwuxinxi`(`id`,`addtime`,`chongwubianhao`,`chongwumingcheng`,`pinzhong`,`tupian`,`nianling`,`chongwuxiangqing`,`clicktime`,`clicknum`) values (22,'2021-04-15 20:04:52','宠物编号2','宠物名称2','品种2','http://localhost:8080/ssm5x35l/upload/chongwuxinxi_tupian2.jpg',2,'宠物详情2','2021-04-15 20:15:43',6);
insert  into `chongwuxinxi`(`id`,`addtime`,`chongwubianhao`,`chongwumingcheng`,`pinzhong`,`tupian`,`nianling`,`chongwuxiangqing`,`clicktime`,`clicknum`) values (23,'2021-04-15 20:04:52','宠物编号3','宠物名称3','品种3','http://localhost:8080/ssm5x35l/upload/chongwuxinxi_tupian3.jpg',3,'宠物详情3','2021-04-15 20:04:52',3);
insert  into `chongwuxinxi`(`id`,`addtime`,`chongwubianhao`,`chongwumingcheng`,`pinzhong`,`tupian`,`nianling`,`chongwuxiangqing`,`clicktime`,`clicknum`) values (24,'2021-04-15 20:04:52','宠物编号4','宠物名称4','品种4','http://localhost:8080/ssm5x35l/upload/chongwuxinxi_tupian4.jpg',4,'宠物详情4','2021-04-15 20:04:52',4);
insert  into `chongwuxinxi`(`id`,`addtime`,`chongwubianhao`,`chongwumingcheng`,`pinzhong`,`tupian`,`nianling`,`chongwuxiangqing`,`clicktime`,`clicknum`) values (25,'2021-04-15 20:04:52','宠物编号5','宠物名称5','品种5','http://localhost:8080/ssm5x35l/upload/chongwuxinxi_tupian5.jpg',5,'宠物详情5','2021-04-15 20:04:52',5);
insert  into `chongwuxinxi`(`id`,`addtime`,`chongwubianhao`,`chongwumingcheng`,`pinzhong`,`tupian`,`nianling`,`chongwuxiangqing`,`clicktime`,`clicknum`) values (26,'2021-04-15 20:04:52','宠物编号6','宠物名称6','品种6','http://localhost:8080/ssm5x35l/upload/chongwuxinxi_tupian6.jpg',6,'宠物详情6','2021-04-15 20:15:21',7);
insert  into `chongwuxinxi`(`id`,`addtime`,`chongwubianhao`,`chongwumingcheng`,`pinzhong`,`tupian`,`nianling`,`chongwuxiangqing`,`clicktime`,`clicknum`) values (1618489208330,'2021-04-15 20:20:07','1618489192926','旺财','折耳','http://localhost:8080/ssm5x35l/upload/1618489205959.jpg',NULL,'<p><img src=\"http://localhost:8080/ssm5x35l/upload/1618489110187.jpg\"></p>',NULL,0);

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/ssm5x35l/upload/1618489273089.jpg');
insert  into `config`(`id`,`name`,`value`) values (2,'picture2','http://localhost:8080/ssm5x35l/upload/picture2.jpg');
insert  into `config`(`id`,`name`,`value`) values (3,'picture3','http://localhost:8080/ssm5x35l/upload/picture3.jpg');
insert  into `config`(`id`,`name`,`value`) values (6,'homepage',NULL);

/*Table structure for table `forum` */

DROP TABLE IF EXISTS `forum`;

CREATE TABLE `forum` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) DEFAULT NULL COMMENT '帖子标题',
  `content` longtext NOT NULL COMMENT '帖子内容',
  `parentid` bigint(20) DEFAULT NULL COMMENT '父节点id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `isdone` varchar(200) DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1618488991058 DEFAULT CHARSET=utf8 COMMENT='宠物论坛';

/*Data for the table `forum` */

insert  into `forum`(`id`,`addtime`,`title`,`content`,`parentid`,`userid`,`username`,`isdone`) values (81,'2021-04-15 20:04:52','帖子标题1','帖子内容1',1,1,'用户名1','开放');
insert  into `forum`(`id`,`addtime`,`title`,`content`,`parentid`,`userid`,`username`,`isdone`) values (82,'2021-04-15 20:04:52','帖子标题2','帖子内容2',2,2,'用户名2','开放');
insert  into `forum`(`id`,`addtime`,`title`,`content`,`parentid`,`userid`,`username`,`isdone`) values (83,'2021-04-15 20:04:52','帖子标题3','帖子内容3',3,3,'用户名3','开放');
insert  into `forum`(`id`,`addtime`,`title`,`content`,`parentid`,`userid`,`username`,`isdone`) values (84,'2021-04-15 20:04:52','帖子标题4','帖子内容4',4,4,'用户名4','开放');
insert  into `forum`(`id`,`addtime`,`title`,`content`,`parentid`,`userid`,`username`,`isdone`) values (85,'2021-04-15 20:04:52','帖子标题5','帖子内容5',5,5,'用户名5','开放');
insert  into `forum`(`id`,`addtime`,`title`,`content`,`parentid`,`userid`,`username`,`isdone`) values (86,'2021-04-15 20:04:52','帖子标题6','帖子内容6',6,6,'用户名6','开放');
insert  into `forum`(`id`,`addtime`,`title`,`content`,`parentid`,`userid`,`username`,`isdone`) values (1618488982871,'2021-04-15 20:16:22','01456','<p>123<span style=\"text-decoration: line-through; background-color: #bfedd2;\"><span style=\"text-decoration: underline;\"><em><strong><span style=\"color: #e03e2d; font-size: 36pt; text-decoration: underline; background-color: #bfedd2;\">456</span></strong></em></span></span></p>',0,1618488891531,'01','开放');
insert  into `forum`(`id`,`addtime`,`title`,`content`,`parentid`,`userid`,`username`,`isdone`) values (1618488991057,'2021-04-15 20:16:30',NULL,'465',1618488982871,1618488891531,'01',NULL);

/*Table structure for table `guahaoyuyue` */

DROP TABLE IF EXISTS `guahaoyuyue`;

CREATE TABLE `guahaoyuyue` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shouling` int(11) DEFAULT NULL COMMENT '兽龄',
  `chongwuxinxi` longtext COMMENT '宠物信息',
  `yishengxingming` varchar(200) DEFAULT NULL COMMENT '医生姓名',
  `yuyueshijian` datetime DEFAULT NULL COMMENT '预约时间',
  `yonghuming` varchar(200) NOT NULL COMMENT '用户名',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1618488912879 DEFAULT CHARSET=utf8 COMMENT='挂号预约';

/*Data for the table `guahaoyuyue` */

insert  into `guahaoyuyue`(`id`,`addtime`,`shouling`,`chongwuxinxi`,`yishengxingming`,`yuyueshijian`,`yonghuming`,`xingming`,`sfsh`,`shhf`) values (51,'2021-04-15 20:04:52',1,'宠物信息1','医生姓名1','2021-04-15 20:04:52','用户名1','姓名1','是','');
insert  into `guahaoyuyue`(`id`,`addtime`,`shouling`,`chongwuxinxi`,`yishengxingming`,`yuyueshijian`,`yonghuming`,`xingming`,`sfsh`,`shhf`) values (52,'2021-04-15 20:04:52',2,'宠物信息2','医生姓名2','2021-04-15 20:04:52','用户名2','姓名2','是','');
insert  into `guahaoyuyue`(`id`,`addtime`,`shouling`,`chongwuxinxi`,`yishengxingming`,`yuyueshijian`,`yonghuming`,`xingming`,`sfsh`,`shhf`) values (53,'2021-04-15 20:04:52',3,'宠物信息3','医生姓名3','2021-04-15 20:04:52','用户名3','姓名3','是','');
insert  into `guahaoyuyue`(`id`,`addtime`,`shouling`,`chongwuxinxi`,`yishengxingming`,`yuyueshijian`,`yonghuming`,`xingming`,`sfsh`,`shhf`) values (54,'2021-04-15 20:04:52',4,'宠物信息4','医生姓名4','2021-04-15 20:04:52','用户名4','姓名4','是','');
insert  into `guahaoyuyue`(`id`,`addtime`,`shouling`,`chongwuxinxi`,`yishengxingming`,`yuyueshijian`,`yonghuming`,`xingming`,`sfsh`,`shhf`) values (55,'2021-04-15 20:04:52',5,'宠物信息5','医生姓名5','2021-04-15 20:04:52','用户名5','姓名5','是','');
insert  into `guahaoyuyue`(`id`,`addtime`,`shouling`,`chongwuxinxi`,`yishengxingming`,`yuyueshijian`,`yonghuming`,`xingming`,`sfsh`,`shhf`) values (56,'2021-04-15 20:04:52',6,'宠物信息6','医生姓名6','2021-04-15 20:04:52','用户名6','姓名6','是','');
insert  into `guahaoyuyue`(`id`,`addtime`,`shouling`,`chongwuxinxi`,`yishengxingming`,`yuyueshijian`,`yonghuming`,`xingming`,`sfsh`,`shhf`) values (1618488912878,'2021-04-15 20:15:12',3,NULL,'医生姓名1','2021-04-15 20:15:12','01','01','是',NULL);

/*Table structure for table `jiyang` */

DROP TABLE IF EXISTS `jiyang`;

CREATE TABLE `jiyang` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `chongwumingcheng` varchar(200) DEFAULT NULL COMMENT '宠物名称',
  `shouling` varchar(200) DEFAULT NULL COMMENT '兽龄',
  `chongwuxiangqing` longtext COMMENT '宠物详情',
  `riqi` date DEFAULT NULL COMMENT '日期',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1618489113505 DEFAULT CHARSET=utf8 COMMENT='寄养';

/*Data for the table `jiyang` */

insert  into `jiyang`(`id`,`addtime`,`yonghuming`,`xingming`,`chongwumingcheng`,`shouling`,`chongwuxiangqing`,`riqi`,`sfsh`,`shhf`) values (61,'2021-04-15 20:04:52','用户名1','姓名1','宠物名称1','兽龄1','宠物详情1','2021-04-15','是','');
insert  into `jiyang`(`id`,`addtime`,`yonghuming`,`xingming`,`chongwumingcheng`,`shouling`,`chongwuxiangqing`,`riqi`,`sfsh`,`shhf`) values (62,'2021-04-15 20:04:52','用户名2','姓名2','宠物名称2','兽龄2','宠物详情2','2021-04-15','是','');
insert  into `jiyang`(`id`,`addtime`,`yonghuming`,`xingming`,`chongwumingcheng`,`shouling`,`chongwuxiangqing`,`riqi`,`sfsh`,`shhf`) values (63,'2021-04-15 20:04:52','用户名3','姓名3','宠物名称3','兽龄3','宠物详情3','2021-04-15','是','');
insert  into `jiyang`(`id`,`addtime`,`yonghuming`,`xingming`,`chongwumingcheng`,`shouling`,`chongwuxiangqing`,`riqi`,`sfsh`,`shhf`) values (64,'2021-04-15 20:04:52','用户名4','姓名4','宠物名称4','兽龄4','宠物详情4','2021-04-15','是','');
insert  into `jiyang`(`id`,`addtime`,`yonghuming`,`xingming`,`chongwumingcheng`,`shouling`,`chongwuxiangqing`,`riqi`,`sfsh`,`shhf`) values (65,'2021-04-15 20:04:52','用户名5','姓名5','宠物名称5','兽龄5','宠物详情5','2021-04-15','是','');
insert  into `jiyang`(`id`,`addtime`,`yonghuming`,`xingming`,`chongwumingcheng`,`shouling`,`chongwuxiangqing`,`riqi`,`sfsh`,`shhf`) values (66,'2021-04-15 20:04:52','用户名6','姓名6','宠物名称6','兽龄6','宠物详情6','2021-04-15','是','');
insert  into `jiyang`(`id`,`addtime`,`yonghuming`,`xingming`,`chongwumingcheng`,`shouling`,`chongwuxiangqing`,`riqi`,`sfsh`,`shhf`) values (1618489113504,'2021-04-15 20:18:32','01','01','旺财','3','<p><img src=\"http://localhost:8080/ssm5x35l/upload/1618489110187.jpg\"></p>','2021-04-15','否','');

/*Table structure for table `jiyangjieguo` */

DROP TABLE IF EXISTS `jiyangjieguo`;

CREATE TABLE `jiyangjieguo` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `chongwumingcheng` varchar(200) DEFAULT NULL COMMENT '宠物名称',
  `lingyangriqi` datetime DEFAULT NULL COMMENT '领养日期',
  `jiyangjieguo` varchar(200) DEFAULT NULL COMMENT '寄养结果',
  `lingyangrenxingming` varchar(200) DEFAULT NULL COMMENT '领养人姓名',
  `lianxifangshi` varchar(200) DEFAULT NULL COMMENT '联系方式',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1618489227472 DEFAULT CHARSET=utf8 COMMENT='寄养结果';

/*Data for the table `jiyangjieguo` */

insert  into `jiyangjieguo`(`id`,`addtime`,`yonghuming`,`xingming`,`chongwumingcheng`,`lingyangriqi`,`jiyangjieguo`,`lingyangrenxingming`,`lianxifangshi`) values (71,'2021-04-15 20:04:52','用户名1','姓名1','宠物名称1','2021-04-15 20:04:52','成功','领养人姓名1','13823888881');
insert  into `jiyangjieguo`(`id`,`addtime`,`yonghuming`,`xingming`,`chongwumingcheng`,`lingyangriqi`,`jiyangjieguo`,`lingyangrenxingming`,`lianxifangshi`) values (72,'2021-04-15 20:04:52','用户名2','姓名2','宠物名称2','2021-04-15 20:04:52','成功','领养人姓名2','13823888882');
insert  into `jiyangjieguo`(`id`,`addtime`,`yonghuming`,`xingming`,`chongwumingcheng`,`lingyangriqi`,`jiyangjieguo`,`lingyangrenxingming`,`lianxifangshi`) values (73,'2021-04-15 20:04:52','用户名3','姓名3','宠物名称3','2021-04-15 20:04:52','成功','领养人姓名3','13823888883');
insert  into `jiyangjieguo`(`id`,`addtime`,`yonghuming`,`xingming`,`chongwumingcheng`,`lingyangriqi`,`jiyangjieguo`,`lingyangrenxingming`,`lianxifangshi`) values (74,'2021-04-15 20:04:52','用户名4','姓名4','宠物名称4','2021-04-15 20:04:52','成功','领养人姓名4','13823888884');
insert  into `jiyangjieguo`(`id`,`addtime`,`yonghuming`,`xingming`,`chongwumingcheng`,`lingyangriqi`,`jiyangjieguo`,`lingyangrenxingming`,`lianxifangshi`) values (75,'2021-04-15 20:04:52','用户名5','姓名5','宠物名称5','2021-04-15 20:04:52','成功','领养人姓名5','13823888885');
insert  into `jiyangjieguo`(`id`,`addtime`,`yonghuming`,`xingming`,`chongwumingcheng`,`lingyangriqi`,`jiyangjieguo`,`lingyangrenxingming`,`lianxifangshi`) values (76,'2021-04-15 20:04:52','用户名6','姓名6','宠物名称6','2021-04-15 20:04:52','成功','领养人姓名6','13823888886');
insert  into `jiyangjieguo`(`id`,`addtime`,`yonghuming`,`xingming`,`chongwumingcheng`,`lingyangriqi`,`jiyangjieguo`,`lingyangrenxingming`,`lianxifangshi`) values (1618489227471,'2021-04-15 20:20:26','01','01','旺财','2021-04-15 20:20:15','成功','123','12345678912');

/*Table structure for table `lingyang` */

DROP TABLE IF EXISTS `lingyang`;

CREATE TABLE `lingyang` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `chongwubianhao` varchar(200) DEFAULT NULL COMMENT '宠物编号',
  `chongwumingcheng` varchar(200) DEFAULT NULL COMMENT '宠物名称',
  `riqi` datetime DEFAULT NULL COMMENT '日期',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1618488939797 DEFAULT CHARSET=utf8 COMMENT='领养';

/*Data for the table `lingyang` */

insert  into `lingyang`(`id`,`addtime`,`yonghuming`,`xingming`,`chongwubianhao`,`chongwumingcheng`,`riqi`,`sfsh`,`shhf`) values (31,'2021-04-15 20:04:52','用户名1','姓名1','宠物编号1','宠物名称1','2021-04-15 20:04:52','是','');
insert  into `lingyang`(`id`,`addtime`,`yonghuming`,`xingming`,`chongwubianhao`,`chongwumingcheng`,`riqi`,`sfsh`,`shhf`) values (32,'2021-04-15 20:04:52','用户名2','姓名2','宠物编号2','宠物名称2','2021-04-15 20:04:52','是','');
insert  into `lingyang`(`id`,`addtime`,`yonghuming`,`xingming`,`chongwubianhao`,`chongwumingcheng`,`riqi`,`sfsh`,`shhf`) values (33,'2021-04-15 20:04:52','用户名3','姓名3','宠物编号3','宠物名称3','2021-04-15 20:04:52','是','');
insert  into `lingyang`(`id`,`addtime`,`yonghuming`,`xingming`,`chongwubianhao`,`chongwumingcheng`,`riqi`,`sfsh`,`shhf`) values (34,'2021-04-15 20:04:52','用户名4','姓名4','宠物编号4','宠物名称4','2021-04-15 20:04:52','是','');
insert  into `lingyang`(`id`,`addtime`,`yonghuming`,`xingming`,`chongwubianhao`,`chongwumingcheng`,`riqi`,`sfsh`,`shhf`) values (35,'2021-04-15 20:04:52','用户名5','姓名5','宠物编号5','宠物名称5','2021-04-15 20:04:52','是','');
insert  into `lingyang`(`id`,`addtime`,`yonghuming`,`xingming`,`chongwubianhao`,`chongwumingcheng`,`riqi`,`sfsh`,`shhf`) values (36,'2021-04-15 20:04:52','用户名6','姓名6','宠物编号6','宠物名称6','2021-04-15 20:04:52','是','');
insert  into `lingyang`(`id`,`addtime`,`yonghuming`,`xingming`,`chongwubianhao`,`chongwumingcheng`,`riqi`,`sfsh`,`shhf`) values (1618488939796,'2021-04-15 20:15:39','01','01','宠物编号2','宠物名称2','2021-04-15 20:15:38','是','好好待它');

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
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8 COMMENT='网站公告';

/*Data for the table `news` */

insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (101,'2021-04-15 20:04:52','标题1','简介1','http://localhost:8080/ssm5x35l/upload/news_picture1.jpg','内容1');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (102,'2021-04-15 20:04:52','标题2','简介2','http://localhost:8080/ssm5x35l/upload/news_picture2.jpg','内容2');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (103,'2021-04-15 20:04:52','标题3','简介3','http://localhost:8080/ssm5x35l/upload/news_picture3.jpg','内容3');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (104,'2021-04-15 20:04:52','标题4','简介4','http://localhost:8080/ssm5x35l/upload/news_picture4.jpg','内容4');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (105,'2021-04-15 20:04:52','标题5','简介5','http://localhost:8080/ssm5x35l/upload/news_picture5.jpg','内容5');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (106,'2021-04-15 20:04:52','标题6','简介6','http://localhost:8080/ssm5x35l/upload/news_picture6.jpg','内容6');

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
) ENGINE=InnoDB AUTO_INCREMENT=1618489031695 DEFAULT CHARSET=utf8 COMMENT='收藏表';

/*Data for the table `storeup` */

insert  into `storeup`(`id`,`addtime`,`userid`,`refid`,`tablename`,`name`,`picture`) values (1618489031694,'2021-04-15 20:17:10',1618488891531,21,'chongwuxinxi','宠物名称1','http://localhost:8080/ssm5x35l/upload/chongwuxinxi_tupian1.jpg');

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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1618488891531,'01','yonghu','用户','jmohpq1t8sx1go914qxv2zrpc96u95ib','2021-04-15 20:14:58','2021-04-15 21:21:32');
insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (2,1,'abo','users','管理员','tf0wcrqx19fjj5x78l0df4kdvk4615k0','2021-04-15 20:18:47','2021-04-15 21:18:48');

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

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'abo','abo','管理员','2021-04-15 20:04:52');

/*Table structure for table `yishengxinxi` */

DROP TABLE IF EXISTS `yishengxinxi`;

CREATE TABLE `yishengxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yishengxingming` varchar(200) DEFAULT NULL COMMENT '医生姓名',
  `zhicheng` varchar(200) DEFAULT NULL COMMENT '职称',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `yishengjianjie` longtext COMMENT '医生简介',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COMMENT='医生信息';

/*Data for the table `yishengxinxi` */

insert  into `yishengxinxi`(`id`,`addtime`,`yishengxingming`,`zhicheng`,`xingbie`,`yishengjianjie`,`lianxidianhua`,`youxiang`,`zhaopian`) values (41,'2021-04-15 20:04:52','医生姓名1','职称1','男','医生简介1','13823888881','773890001@qq.com','http://localhost:8080/ssm5x35l/upload/yishengxinxi_zhaopian1.jpg');
insert  into `yishengxinxi`(`id`,`addtime`,`yishengxingming`,`zhicheng`,`xingbie`,`yishengjianjie`,`lianxidianhua`,`youxiang`,`zhaopian`) values (43,'2021-04-15 20:04:52','医生姓名3','职称3','男','医生简介3','13823888883','773890003@qq.com','http://localhost:8080/ssm5x35l/upload/yishengxinxi_zhaopian3.jpg');
insert  into `yishengxinxi`(`id`,`addtime`,`yishengxingming`,`zhicheng`,`xingbie`,`yishengjianjie`,`lianxidianhua`,`youxiang`,`zhaopian`) values (45,'2021-04-15 20:04:52','医生姓名5','职称5','男','医生简介5','13823888885','773890005@qq.com','http://localhost:8080/ssm5x35l/upload/yishengxinxi_zhaopian5.jpg');
insert  into `yishengxinxi`(`id`,`addtime`,`yishengxingming`,`zhicheng`,`xingbie`,`yishengjianjie`,`lianxidianhua`,`youxiang`,`zhaopian`) values (46,'2021-04-15 20:04:52','医生姓名6','职称6','男','医生简介6','13823888886','773890006@qq.com','http://localhost:8080/ssm5x35l/upload/yishengxinxi_zhaopian6.jpg');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuming` varchar(200) NOT NULL COMMENT '用户名',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) NOT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `nianling` int(11) DEFAULT NULL COMMENT '年龄',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yonghuming` (`yonghuming`)
) ENGINE=InnoDB AUTO_INCREMENT=1618488891532 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`addtime`,`yonghuming`,`mima`,`xingming`,`xingbie`,`nianling`,`shouji`,`youxiang`,`touxiang`) values (11,'2021-04-15 20:04:52','用户1','123456','姓名1','男',1,'13823888881','773890001@qq.com','http://localhost:8080/ssm5x35l/upload/yonghu_touxiang1.jpg');
insert  into `yonghu`(`id`,`addtime`,`yonghuming`,`mima`,`xingming`,`xingbie`,`nianling`,`shouji`,`youxiang`,`touxiang`) values (12,'2021-04-15 20:04:52','用户2','123456','姓名2','男',2,'13823888882','773890002@qq.com','http://localhost:8080/ssm5x35l/upload/yonghu_touxiang2.jpg');
insert  into `yonghu`(`id`,`addtime`,`yonghuming`,`mima`,`xingming`,`xingbie`,`nianling`,`shouji`,`youxiang`,`touxiang`) values (13,'2021-04-15 20:04:52','用户3','123456','姓名3','男',3,'13823888883','773890003@qq.com','http://localhost:8080/ssm5x35l/upload/yonghu_touxiang3.jpg');
insert  into `yonghu`(`id`,`addtime`,`yonghuming`,`mima`,`xingming`,`xingbie`,`nianling`,`shouji`,`youxiang`,`touxiang`) values (14,'2021-04-15 20:04:52','用户4','123456','姓名4','男',4,'13823888884','773890004@qq.com','http://localhost:8080/ssm5x35l/upload/yonghu_touxiang4.jpg');
insert  into `yonghu`(`id`,`addtime`,`yonghuming`,`mima`,`xingming`,`xingbie`,`nianling`,`shouji`,`youxiang`,`touxiang`) values (15,'2021-04-15 20:04:52','用户5','123456','姓名5','男',5,'13823888885','773890005@qq.com','http://localhost:8080/ssm5x35l/upload/yonghu_touxiang5.jpg');
insert  into `yonghu`(`id`,`addtime`,`yonghuming`,`mima`,`xingming`,`xingbie`,`nianling`,`shouji`,`youxiang`,`touxiang`) values (16,'2021-04-15 20:04:52','用户6','123456','姓名6','男',6,'13823888886','773890006@qq.com','http://localhost:8080/ssm5x35l/upload/yonghu_touxiang6.jpg');
insert  into `yonghu`(`id`,`addtime`,`yonghuming`,`mima`,`xingming`,`xingbie`,`nianling`,`shouji`,`youxiang`,`touxiang`) values (1618488891531,'2021-04-15 20:14:51','01','01','01','男',33,'','','http://localhost:8080/ssm5x35l/upload/1618489022395.jpg');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
