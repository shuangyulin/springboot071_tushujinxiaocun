/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - springbootk6oce
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`springbootk6oce` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `springbootk6oce`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/springbootk6oce/upload/1619019249146.png');
insert  into `config`(`id`,`name`,`value`) values (2,'picture2','http://localhost:8080/springbootk6oce/upload/picture2.jpg');
insert  into `config`(`id`,`name`,`value`) values (3,'picture3','http://localhost:8080/springbootk6oce/upload/picture3.jpg');
insert  into `config`(`id`,`name`,`value`) values (6,'homepage',NULL);

/*Table structure for table `discusstushuxinxi` */

DROP TABLE IF EXISTS `discusstushuxinxi`;

CREATE TABLE `discusstushuxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=137 DEFAULT CHARSET=utf8 COMMENT='图书信息评论表';

/*Data for the table `discusstushuxinxi` */

insert  into `discusstushuxinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (131,'2021-04-21 23:28:38',1,1,'用户名1','评论内容1','回复内容1');
insert  into `discusstushuxinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (132,'2021-04-21 23:28:38',2,2,'用户名2','评论内容2','回复内容2');
insert  into `discusstushuxinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (133,'2021-04-21 23:28:38',3,3,'用户名3','评论内容3','回复内容3');
insert  into `discusstushuxinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (134,'2021-04-21 23:28:38',4,4,'用户名4','评论内容4','回复内容4');
insert  into `discusstushuxinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (135,'2021-04-21 23:28:38',5,5,'用户名5','评论内容5','回复内容5');
insert  into `discusstushuxinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (136,'2021-04-21 23:28:38',6,6,'用户名6','评论内容6','回复内容6');

/*Table structure for table `gongyingshang` */

DROP TABLE IF EXISTS `gongyingshang`;

CREATE TABLE `gongyingshang` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gongyingshangbianhao` varchar(200) DEFAULT NULL COMMENT '供应商编号',
  `gongyingshangmingcheng` varchar(200) DEFAULT NULL COMMENT '供应商名称',
  `gongyingshangleixing` varchar(200) DEFAULT NULL COMMENT '供应商类型',
  `zhugongshangpin` varchar(200) DEFAULT NULL COMMENT '主供商品',
  `fuzeren` varchar(200) DEFAULT NULL COMMENT '负责人',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `lianxidizhi` varchar(200) DEFAULT NULL COMMENT '联系地址',
  `xiangqingbeizhu` longtext COMMENT '详情备注',
  PRIMARY KEY (`id`),
  UNIQUE KEY `gongyingshangbianhao` (`gongyingshangbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1619019120155 DEFAULT CHARSET=utf8 COMMENT='供应商';

/*Data for the table `gongyingshang` */

insert  into `gongyingshang`(`id`,`addtime`,`gongyingshangbianhao`,`gongyingshangmingcheng`,`gongyingshangleixing`,`zhugongshangpin`,`fuzeren`,`lianxidianhua`,`lianxidizhi`,`xiangqingbeizhu`) values (81,'2021-04-21 23:28:37','供应商编号1','供应商名称1','供应商类型1','主供商品1','负责人1','13823888881','联系地址1','详情备注1');
insert  into `gongyingshang`(`id`,`addtime`,`gongyingshangbianhao`,`gongyingshangmingcheng`,`gongyingshangleixing`,`zhugongshangpin`,`fuzeren`,`lianxidianhua`,`lianxidizhi`,`xiangqingbeizhu`) values (82,'2021-04-21 23:28:37','供应商编号2','供应商名称2','供应商类型2','主供商品2','负责人2','13823888882','联系地址2','详情备注2');
insert  into `gongyingshang`(`id`,`addtime`,`gongyingshangbianhao`,`gongyingshangmingcheng`,`gongyingshangleixing`,`zhugongshangpin`,`fuzeren`,`lianxidianhua`,`lianxidizhi`,`xiangqingbeizhu`) values (84,'2021-04-21 23:28:37','供应商编号4','供应商名称4','供应商类型4','主供商品4','负责人4','13823888884','联系地址4','详情备注4');
insert  into `gongyingshang`(`id`,`addtime`,`gongyingshangbianhao`,`gongyingshangmingcheng`,`gongyingshangleixing`,`zhugongshangpin`,`fuzeren`,`lianxidianhua`,`lianxidizhi`,`xiangqingbeizhu`) values (85,'2021-04-21 23:28:37','供应商编号5','供应商名称5','供应商类型5','主供商品5','负责人5','13823888885','联系地址5','详情备注5');
insert  into `gongyingshang`(`id`,`addtime`,`gongyingshangbianhao`,`gongyingshangmingcheng`,`gongyingshangleixing`,`zhugongshangpin`,`fuzeren`,`lianxidianhua`,`lianxidizhi`,`xiangqingbeizhu`) values (86,'2021-04-21 23:28:37','供应商编号6','供应商名称6','供应商类型6','主供商品6','负责人6','13823888886','联系地址6','详情备注6');
insert  into `gongyingshang`(`id`,`addtime`,`gongyingshangbianhao`,`gongyingshangmingcheng`,`gongyingshangleixing`,`zhugongshangpin`,`fuzeren`,`lianxidianhua`,`lianxidizhi`,`xiangqingbeizhu`) values (1619019120154,'2021-04-21 23:31:59','1619019109424','1','1','1','1','12345678999','1','1');

/*Table structure for table `jinhuodingdan` */

DROP TABLE IF EXISTS `jinhuodingdan`;

CREATE TABLE `jinhuodingdan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dingdanbianhao` varchar(200) NOT NULL COMMENT '订单编号',
  `gongyingshangbianhao` varchar(200) DEFAULT NULL COMMENT '供应商编号',
  `gongyingshangmingcheng` varchar(200) DEFAULT NULL COMMENT '供应商名称',
  `tushubianhao` varchar(200) DEFAULT NULL COMMENT '图书编号',
  `tushumingcheng` varchar(200) DEFAULT NULL COMMENT '图书名称',
  `tushuleixing` varchar(200) DEFAULT NULL COMMENT '图书类型',
  `tushuzuozhe` varchar(200) DEFAULT NULL COMMENT '图书作者',
  `chubanshe` varchar(200) DEFAULT NULL COMMENT '出版社',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `tushudanjia` varchar(200) DEFAULT NULL COMMENT '图书单价',
  `shuliang` varchar(200) DEFAULT NULL COMMENT '数量',
  `dingdanjine` varchar(200) DEFAULT NULL COMMENT '订单金额',
  `jinhuoshijian` datetime DEFAULT NULL COMMENT '进货时间',
  `shenheren` varchar(200) DEFAULT NULL COMMENT '审核人',
  PRIMARY KEY (`id`),
  UNIQUE KEY `dingdanbianhao` (`dingdanbianhao`),
  UNIQUE KEY `tushubianhao` (`tushubianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1619019029144 DEFAULT CHARSET=utf8 COMMENT='进货订单';

/*Data for the table `jinhuodingdan` */

insert  into `jinhuodingdan`(`id`,`addtime`,`dingdanbianhao`,`gongyingshangbianhao`,`gongyingshangmingcheng`,`tushubianhao`,`tushumingcheng`,`tushuleixing`,`tushuzuozhe`,`chubanshe`,`tupian`,`tushudanjia`,`shuliang`,`dingdanjine`,`jinhuoshijian`,`shenheren`) values (31,'2021-04-21 23:28:37','订单编号1','供应商编号1','供应商名称1','图书编号1','图书名称1','图书类型1','图书作者1','出版社1','http://localhost:8080/springbootk6oce/upload/jinhuodingdan_tupian1.jpg','图书单价1','数量1','订单金额1','2021-04-21 23:28:37','审核人1');
insert  into `jinhuodingdan`(`id`,`addtime`,`dingdanbianhao`,`gongyingshangbianhao`,`gongyingshangmingcheng`,`tushubianhao`,`tushumingcheng`,`tushuleixing`,`tushuzuozhe`,`chubanshe`,`tupian`,`tushudanjia`,`shuliang`,`dingdanjine`,`jinhuoshijian`,`shenheren`) values (32,'2021-04-21 23:28:37','订单编号2','供应商编号2','供应商名称2','图书编号2','图书名称2','图书类型2','图书作者2','出版社2','http://localhost:8080/springbootk6oce/upload/jinhuodingdan_tupian2.jpg','图书单价2','数量2','订单金额2','2021-04-21 23:28:37','审核人2');
insert  into `jinhuodingdan`(`id`,`addtime`,`dingdanbianhao`,`gongyingshangbianhao`,`gongyingshangmingcheng`,`tushubianhao`,`tushumingcheng`,`tushuleixing`,`tushuzuozhe`,`chubanshe`,`tupian`,`tushudanjia`,`shuliang`,`dingdanjine`,`jinhuoshijian`,`shenheren`) values (33,'2021-04-21 23:28:37','订单编号3','供应商编号3','供应商名称3','图书编号3','图书名称3','图书类型3','图书作者3','出版社3','http://localhost:8080/springbootk6oce/upload/jinhuodingdan_tupian3.jpg','图书单价3','数量3','订单金额3','2021-04-21 23:28:37','审核人3');
insert  into `jinhuodingdan`(`id`,`addtime`,`dingdanbianhao`,`gongyingshangbianhao`,`gongyingshangmingcheng`,`tushubianhao`,`tushumingcheng`,`tushuleixing`,`tushuzuozhe`,`chubanshe`,`tupian`,`tushudanjia`,`shuliang`,`dingdanjine`,`jinhuoshijian`,`shenheren`) values (34,'2021-04-21 23:28:37','订单编号4','供应商编号4','供应商名称4','图书编号4','图书名称4','图书类型4','图书作者4','出版社4','http://localhost:8080/springbootk6oce/upload/jinhuodingdan_tupian4.jpg','图书单价4','数量4','订单金额4','2021-04-21 23:28:37','审核人4');
insert  into `jinhuodingdan`(`id`,`addtime`,`dingdanbianhao`,`gongyingshangbianhao`,`gongyingshangmingcheng`,`tushubianhao`,`tushumingcheng`,`tushuleixing`,`tushuzuozhe`,`chubanshe`,`tupian`,`tushudanjia`,`shuliang`,`dingdanjine`,`jinhuoshijian`,`shenheren`) values (35,'2021-04-21 23:28:37','订单编号5','供应商编号5','供应商名称5','图书编号5','图书名称5','图书类型5','图书作者5','出版社5','http://localhost:8080/springbootk6oce/upload/jinhuodingdan_tupian5.jpg','图书单价5','数量5','订单金额5','2021-04-21 23:28:37','审核人5');
insert  into `jinhuodingdan`(`id`,`addtime`,`dingdanbianhao`,`gongyingshangbianhao`,`gongyingshangmingcheng`,`tushubianhao`,`tushumingcheng`,`tushuleixing`,`tushuzuozhe`,`chubanshe`,`tupian`,`tushudanjia`,`shuliang`,`dingdanjine`,`jinhuoshijian`,`shenheren`) values (1619019029143,'2021-04-21 23:30:28','1619019008506','11','1','1619019008506','1','图书类型1','1','11','http://localhost:8080/springbootk6oce/upload/1619019023692.png','1','1','1','2021-04-21 23:30:08','1');

/*Table structure for table `kehuxinxi` */

DROP TABLE IF EXISTS `kehuxinxi`;

CREATE TABLE `kehuxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `kehubianhao` varchar(200) DEFAULT NULL COMMENT '客户编号',
  `kehumingcheng` varchar(200) NOT NULL COMMENT '客户名称',
  `fuzeren` varchar(200) NOT NULL COMMENT '负责人',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `dizhi` varchar(200) DEFAULT NULL COMMENT '地址',
  `beizhu` longtext COMMENT '备注',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  PRIMARY KEY (`id`),
  UNIQUE KEY `kehubianhao` (`kehubianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1619019098780 DEFAULT CHARSET=utf8 COMMENT='客户信息';

/*Data for the table `kehuxinxi` */

insert  into `kehuxinxi`(`id`,`addtime`,`kehubianhao`,`kehumingcheng`,`fuzeren`,`lianxidianhua`,`dizhi`,`beizhu`,`tupian`) values (71,'2021-04-21 23:28:37','客户编号1','客户名称1','负责人1','13823888881','地址1','备注1','http://localhost:8080/springbootk6oce/upload/kehuxinxi_tupian1.jpg');
insert  into `kehuxinxi`(`id`,`addtime`,`kehubianhao`,`kehumingcheng`,`fuzeren`,`lianxidianhua`,`dizhi`,`beizhu`,`tupian`) values (72,'2021-04-21 23:28:37','客户编号2','客户名称2','负责人2','13823888882','地址2','备注2','http://localhost:8080/springbootk6oce/upload/kehuxinxi_tupian2.jpg');
insert  into `kehuxinxi`(`id`,`addtime`,`kehubianhao`,`kehumingcheng`,`fuzeren`,`lianxidianhua`,`dizhi`,`beizhu`,`tupian`) values (73,'2021-04-21 23:28:37','客户编号3','客户名称3','负责人3','13823888883','地址3','备注3','http://localhost:8080/springbootk6oce/upload/kehuxinxi_tupian3.jpg');
insert  into `kehuxinxi`(`id`,`addtime`,`kehubianhao`,`kehumingcheng`,`fuzeren`,`lianxidianhua`,`dizhi`,`beizhu`,`tupian`) values (74,'2021-04-21 23:28:37','客户编号4','客户名称4','负责人4','13823888884','地址4','备注4','http://localhost:8080/springbootk6oce/upload/kehuxinxi_tupian4.jpg');
insert  into `kehuxinxi`(`id`,`addtime`,`kehubianhao`,`kehumingcheng`,`fuzeren`,`lianxidianhua`,`dizhi`,`beizhu`,`tupian`) values (75,'2021-04-21 23:28:37','客户编号5','客户名称5','负责人5','13823888885','地址5','备注5','http://localhost:8080/springbootk6oce/upload/kehuxinxi_tupian5.jpg');
insert  into `kehuxinxi`(`id`,`addtime`,`kehubianhao`,`kehumingcheng`,`fuzeren`,`lianxidianhua`,`dizhi`,`beizhu`,`tupian`) values (76,'2021-04-21 23:28:37','客户编号6','客户名称6','负责人6','13823888886','地址6','备注6','http://localhost:8080/springbootk6oce/upload/kehuxinxi_tupian6.jpg');
insert  into `kehuxinxi`(`id`,`addtime`,`kehubianhao`,`kehumingcheng`,`fuzeren`,`lianxidianhua`,`dizhi`,`beizhu`,`tupian`) values (1619019098779,'2021-04-21 23:31:38','1619019087138','1','1','12345678909','1','1','http://localhost:8080/springbootk6oce/upload/1619019096678.png');

/*Table structure for table `kucunfenxi` */

DROP TABLE IF EXISTS `kucunfenxi`;

CREATE TABLE `kucunfenxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `tushubianhao` varchar(200) DEFAULT NULL COMMENT '图书编号',
  `tushumingcheng` varchar(200) DEFAULT NULL COMMENT '图书名称',
  `riqi` varchar(200) DEFAULT NULL COMMENT '日期',
  `dangqiankucun` varchar(200) DEFAULT NULL COMMENT '当前库存',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1619019129115 DEFAULT CHARSET=utf8 COMMENT='库存分析';

/*Data for the table `kucunfenxi` */

insert  into `kucunfenxi`(`id`,`addtime`,`tushubianhao`,`tushumingcheng`,`riqi`,`dangqiankucun`) values (92,'2021-04-21 23:28:38','图书编号2','图书名称2','日期2','当前库存2');
insert  into `kucunfenxi`(`id`,`addtime`,`tushubianhao`,`tushumingcheng`,`riqi`,`dangqiankucun`) values (93,'2021-04-21 23:28:38','图书编号3','图书名称3','日期3','当前库存3');
insert  into `kucunfenxi`(`id`,`addtime`,`tushubianhao`,`tushumingcheng`,`riqi`,`dangqiankucun`) values (95,'2021-04-21 23:28:38','图书编号5','图书名称5','日期5','当前库存5');
insert  into `kucunfenxi`(`id`,`addtime`,`tushubianhao`,`tushumingcheng`,`riqi`,`dangqiankucun`) values (96,'2021-04-21 23:28:38','图书编号6','图书名称6','日期6','当前库存6');
insert  into `kucunfenxi`(`id`,`addtime`,`tushubianhao`,`tushumingcheng`,`riqi`,`dangqiankucun`) values (1619019129114,'2021-04-21 23:32:08','1','1','1','1');

/*Table structure for table `pixiaodingdan` */

DROP TABLE IF EXISTS `pixiaodingdan`;

CREATE TABLE `pixiaodingdan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dingdanbianhao` varchar(200) NOT NULL COMMENT '订单编号',
  `gongyingshangbianhao` varchar(200) DEFAULT NULL COMMENT '供应商编号',
  `gongyingshangmingcheng` varchar(200) DEFAULT NULL COMMENT '供应商名称',
  `tushubianhao` varchar(200) DEFAULT NULL COMMENT '图书编号',
  `tushumingcheng` varchar(200) DEFAULT NULL COMMENT '图书名称',
  `tushuleixing` varchar(200) DEFAULT NULL COMMENT '图书类型',
  `tushuzuozhe` int(11) DEFAULT NULL COMMENT '图书作者',
  `chubanshe` varchar(200) DEFAULT NULL COMMENT '出版社',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `tushudanjia` longtext COMMENT '图书单价',
  `shuliang` varchar(200) DEFAULT NULL COMMENT '数量',
  `dingdanjine` varchar(200) DEFAULT NULL COMMENT '订单金额',
  `jinhuoshijian` datetime DEFAULT NULL COMMENT '进货时间',
  `shenheren` varchar(200) DEFAULT NULL COMMENT '审核人',
  PRIMARY KEY (`id`),
  UNIQUE KEY `dingdanbianhao` (`dingdanbianhao`),
  UNIQUE KEY `tushubianhao` (`tushubianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1619019066865 DEFAULT CHARSET=utf8 COMMENT='批销订单';

/*Data for the table `pixiaodingdan` */

insert  into `pixiaodingdan`(`id`,`addtime`,`dingdanbianhao`,`gongyingshangbianhao`,`gongyingshangmingcheng`,`tushubianhao`,`tushumingcheng`,`tushuleixing`,`tushuzuozhe`,`chubanshe`,`tupian`,`tushudanjia`,`shuliang`,`dingdanjine`,`jinhuoshijian`,`shenheren`) values (51,'2021-04-21 23:28:37','订单编号1','供应商编号1','供应商名称1','图书编号1','图书名称1','图书类型1',1,'','http://localhost:8080/springbootk6oce/upload/pixiaodingdan_tupian1.jpg','图书单价1','数量1','订单金额1','2021-04-21 23:28:37','审核人1');
insert  into `pixiaodingdan`(`id`,`addtime`,`dingdanbianhao`,`gongyingshangbianhao`,`gongyingshangmingcheng`,`tushubianhao`,`tushumingcheng`,`tushuleixing`,`tushuzuozhe`,`chubanshe`,`tupian`,`tushudanjia`,`shuliang`,`dingdanjine`,`jinhuoshijian`,`shenheren`) values (53,'2021-04-21 23:28:37','订单编号3','供应商编号3','供应商名称3','图书编号3','图书名称3','图书类型3',3,'','http://localhost:8080/springbootk6oce/upload/pixiaodingdan_tupian3.jpg','图书单价3','数量3','订单金额3','2021-04-21 23:28:37','审核人3');
insert  into `pixiaodingdan`(`id`,`addtime`,`dingdanbianhao`,`gongyingshangbianhao`,`gongyingshangmingcheng`,`tushubianhao`,`tushumingcheng`,`tushuleixing`,`tushuzuozhe`,`chubanshe`,`tupian`,`tushudanjia`,`shuliang`,`dingdanjine`,`jinhuoshijian`,`shenheren`) values (54,'2021-04-21 23:28:37','订单编号4','供应商编号4','供应商名称4','图书编号4','图书名称4','图书类型4',4,'','http://localhost:8080/springbootk6oce/upload/pixiaodingdan_tupian4.jpg','图书单价4','数量4','订单金额4','2021-04-21 23:28:37','审核人4');
insert  into `pixiaodingdan`(`id`,`addtime`,`dingdanbianhao`,`gongyingshangbianhao`,`gongyingshangmingcheng`,`tushubianhao`,`tushumingcheng`,`tushuleixing`,`tushuzuozhe`,`chubanshe`,`tupian`,`tushudanjia`,`shuliang`,`dingdanjine`,`jinhuoshijian`,`shenheren`) values (55,'2021-04-21 23:28:37','订单编号5','供应商编号5','供应商名称5','图书编号5','图书名称5','图书类型5',5,'','http://localhost:8080/springbootk6oce/upload/pixiaodingdan_tupian5.jpg','图书单价5','数量5','订单金额5','2021-04-21 23:28:37','审核人5');
insert  into `pixiaodingdan`(`id`,`addtime`,`dingdanbianhao`,`gongyingshangbianhao`,`gongyingshangmingcheng`,`tushubianhao`,`tushumingcheng`,`tushuleixing`,`tushuzuozhe`,`chubanshe`,`tupian`,`tushudanjia`,`shuliang`,`dingdanjine`,`jinhuoshijian`,`shenheren`) values (56,'2021-04-21 23:28:37','订单编号6','供应商编号6','供应商名称6','图书编号6','图书名称6','图书类型6',6,'','http://localhost:8080/springbootk6oce/upload/pixiaodingdan_tupian6.jpg','图书单价6','数量6','订单金额6','2021-04-21 23:28:37','审核人6');
insert  into `pixiaodingdan`(`id`,`addtime`,`dingdanbianhao`,`gongyingshangbianhao`,`gongyingshangmingcheng`,`tushubianhao`,`tushumingcheng`,`tushuleixing`,`tushuzuozhe`,`chubanshe`,`tupian`,`tushudanjia`,`shuliang`,`dingdanjine`,`jinhuoshijian`,`shenheren`) values (1619019066864,'2021-04-21 23:31:06','1619019053420','1','1','1619019053421','1','图书类型1',1,'http://localhost:8080/springbootk6oce/upload/1619019060552.png','http://localhost:8080/springbootk6oce/upload/1619019062898.png','<p>1</p>','1','1','2021-04-21 23:30:53','1');

/*Table structure for table `shangpintuihuo` */

DROP TABLE IF EXISTS `shangpintuihuo`;

CREATE TABLE `shangpintuihuo` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gongyingshangbianhao` varchar(200) DEFAULT NULL COMMENT '供应商编号',
  `gongyingshangmingcheng` varchar(200) DEFAULT NULL COMMENT '供应商名称',
  `caigoubianhao` varchar(200) DEFAULT NULL COMMENT '采购编号',
  `tushubianhao` varchar(200) DEFAULT NULL COMMENT '图书编号',
  `tushumingcheng` varchar(200) DEFAULT NULL COMMENT '图书名称',
  `tushuzuozhe` varchar(200) DEFAULT NULL COMMENT '图书作者',
  `chubanshe` varchar(200) DEFAULT NULL COMMENT '出版社',
  `shuliang` varchar(200) DEFAULT NULL COMMENT '数量',
  `caigoujiage` varchar(200) DEFAULT NULL COMMENT '采购价格',
  `tuihuojine` varchar(200) DEFAULT NULL COMMENT '退货金额',
  `tuihuoyuanyin` varchar(200) DEFAULT NULL COMMENT '退货原因',
  `tuihuoriqi` date DEFAULT NULL COMMENT '退货日期',
  PRIMARY KEY (`id`),
  UNIQUE KEY `caigoubianhao` (`caigoubianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1619019045443 DEFAULT CHARSET=utf8 COMMENT='商品退货';

/*Data for the table `shangpintuihuo` */

insert  into `shangpintuihuo`(`id`,`addtime`,`gongyingshangbianhao`,`gongyingshangmingcheng`,`caigoubianhao`,`tushubianhao`,`tushumingcheng`,`tushuzuozhe`,`chubanshe`,`shuliang`,`caigoujiage`,`tuihuojine`,`tuihuoyuanyin`,`tuihuoriqi`) values (41,'2021-04-21 23:28:37','供应商编号1','供应商名称1','采购编号1','图书编号1','图书名称1','图书作者1','出版社1','数量1','采购价格1','退货金额1','退货原因1','2021-04-21');
insert  into `shangpintuihuo`(`id`,`addtime`,`gongyingshangbianhao`,`gongyingshangmingcheng`,`caigoubianhao`,`tushubianhao`,`tushumingcheng`,`tushuzuozhe`,`chubanshe`,`shuliang`,`caigoujiage`,`tuihuojine`,`tuihuoyuanyin`,`tuihuoriqi`) values (42,'2021-04-21 23:28:37','供应商编号2','供应商名称2','采购编号2','图书编号2','图书名称2','图书作者2','出版社2','数量2','采购价格2','退货金额2','退货原因2','2021-04-21');
insert  into `shangpintuihuo`(`id`,`addtime`,`gongyingshangbianhao`,`gongyingshangmingcheng`,`caigoubianhao`,`tushubianhao`,`tushumingcheng`,`tushuzuozhe`,`chubanshe`,`shuliang`,`caigoujiage`,`tuihuojine`,`tuihuoyuanyin`,`tuihuoriqi`) values (43,'2021-04-21 23:28:37','供应商编号3','供应商名称3','采购编号3','图书编号3','图书名称3','图书作者3','出版社3','数量3','采购价格3','退货金额3','退货原因3','2021-04-21');
insert  into `shangpintuihuo`(`id`,`addtime`,`gongyingshangbianhao`,`gongyingshangmingcheng`,`caigoubianhao`,`tushubianhao`,`tushumingcheng`,`tushuzuozhe`,`chubanshe`,`shuliang`,`caigoujiage`,`tuihuojine`,`tuihuoyuanyin`,`tuihuoriqi`) values (44,'2021-04-21 23:28:37','供应商编号4','供应商名称4','采购编号4','图书编号4','图书名称4','图书作者4','出版社4','数量4','采购价格4','退货金额4','退货原因4','2021-04-21');
insert  into `shangpintuihuo`(`id`,`addtime`,`gongyingshangbianhao`,`gongyingshangmingcheng`,`caigoubianhao`,`tushubianhao`,`tushumingcheng`,`tushuzuozhe`,`chubanshe`,`shuliang`,`caigoujiage`,`tuihuojine`,`tuihuoyuanyin`,`tuihuoriqi`) values (46,'2021-04-21 23:28:37','供应商编号6','供应商名称6','采购编号6','图书编号6','图书名称6','图书作者6','出版社6','数量6','采购价格6','退货金额6','退货原因6','2021-04-21');
insert  into `shangpintuihuo`(`id`,`addtime`,`gongyingshangbianhao`,`gongyingshangmingcheng`,`caigoubianhao`,`tushubianhao`,`tushumingcheng`,`tushuzuozhe`,`chubanshe`,`shuliang`,`caigoujiage`,`tuihuojine`,`tuihuoyuanyin`,`tuihuoriqi`) values (1619019045442,'2021-04-21 23:30:45','1','1','1619019036447','1','1','1','1','1','1','1','1','2021-04-21');

/*Table structure for table `shourujine` */

DROP TABLE IF EXISTS `shourujine`;

CREATE TABLE `shourujine` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `riqi` varchar(200) DEFAULT NULL COMMENT '日期',
  `tushushuliang` varchar(200) DEFAULT NULL COMMENT '图书数量',
  `shourujine` varchar(200) DEFAULT NULL COMMENT '收入金额',
  `beizhu` longtext COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1619019139696 DEFAULT CHARSET=utf8 COMMENT='收入金额';

/*Data for the table `shourujine` */

insert  into `shourujine`(`id`,`addtime`,`riqi`,`tushushuliang`,`shourujine`,`beizhu`) values (102,'2021-04-21 23:28:38','日期2','图书数量2','收入金额2','备注2');
insert  into `shourujine`(`id`,`addtime`,`riqi`,`tushushuliang`,`shourujine`,`beizhu`) values (103,'2021-04-21 23:28:38','日期3','图书数量3','收入金额3','备注3');
insert  into `shourujine`(`id`,`addtime`,`riqi`,`tushushuliang`,`shourujine`,`beizhu`) values (106,'2021-04-21 23:28:38','日期6','图书数量6','收入金额6','备注6');
insert  into `shourujine`(`id`,`addtime`,`riqi`,`tushushuliang`,`shourujine`,`beizhu`) values (1619019139695,'2021-04-21 23:32:18','1','1','1','1');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='收藏表';

/*Data for the table `storeup` */

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

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,11,'用户1','yonghu','用户','gg10rve4w6mbvtu581pnrk74o8fa0ff6','2021-04-21 23:29:54','2021-04-22 00:29:55');
insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (2,1,'abo','users','管理员','p9j9a10d2194mha7qtyo1rv4bq0ufkyq','2021-04-21 23:33:14','2021-04-22 00:33:15');

/*Table structure for table `tushuleixing` */

DROP TABLE IF EXISTS `tushuleixing`;

CREATE TABLE `tushuleixing` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `tushuleixing` varchar(200) DEFAULT NULL COMMENT '图书类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='图书类型';

/*Data for the table `tushuleixing` */

insert  into `tushuleixing`(`id`,`addtime`,`tushuleixing`) values (21,'2021-04-21 23:28:37','图书类型1');
insert  into `tushuleixing`(`id`,`addtime`,`tushuleixing`) values (22,'2021-04-21 23:28:37','图书类型2');
insert  into `tushuleixing`(`id`,`addtime`,`tushuleixing`) values (23,'2021-04-21 23:28:37','图书类型3');
insert  into `tushuleixing`(`id`,`addtime`,`tushuleixing`) values (24,'2021-04-21 23:28:37','图书类型4');
insert  into `tushuleixing`(`id`,`addtime`,`tushuleixing`) values (25,'2021-04-21 23:28:37','图书类型5');
insert  into `tushuleixing`(`id`,`addtime`,`tushuleixing`) values (26,'2021-04-21 23:28:37','图书类型6');

/*Table structure for table `tushuxinxi` */

DROP TABLE IF EXISTS `tushuxinxi`;

CREATE TABLE `tushuxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `tushubianhao` varchar(200) DEFAULT NULL COMMENT '图书编号',
  `tushumingcheng` varchar(200) DEFAULT NULL COMMENT '图书名称',
  `tushuleixing` varchar(200) DEFAULT NULL COMMENT '图书类型',
  `tushuzhuangtai` varchar(200) DEFAULT NULL COMMENT '图书状态',
  `tushuzuozhe` varchar(200) DEFAULT NULL COMMENT '图书作者',
  `tushugaiyao` longtext COMMENT '图书概要',
  `tushufengmian` varchar(200) DEFAULT NULL COMMENT '图书封面',
  `thumbsupnum` int(11) DEFAULT '0' COMMENT '赞',
  `crazilynum` int(11) DEFAULT '0' COMMENT '踩',
  PRIMARY KEY (`id`),
  UNIQUE KEY `tushubianhao` (`tushubianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1619019079799 DEFAULT CHARSET=utf8 COMMENT='图书信息';

/*Data for the table `tushuxinxi` */

insert  into `tushuxinxi`(`id`,`addtime`,`tushubianhao`,`tushumingcheng`,`tushuleixing`,`tushuzhuangtai`,`tushuzuozhe`,`tushugaiyao`,`tushufengmian`,`thumbsupnum`,`crazilynum`) values (61,'2021-04-21 23:28:37','图书编号1','图书名称1','图书类型1','图书状态1','图书作者1','图书概要1','http://localhost:8080/springbootk6oce/upload/tushuxinxi_tushufengmian1.jpg',1,1);
insert  into `tushuxinxi`(`id`,`addtime`,`tushubianhao`,`tushumingcheng`,`tushuleixing`,`tushuzhuangtai`,`tushuzuozhe`,`tushugaiyao`,`tushufengmian`,`thumbsupnum`,`crazilynum`) values (63,'2021-04-21 23:28:37','图书编号3','图书名称3','图书类型3','图书状态3','图书作者3','图书概要3','http://localhost:8080/springbootk6oce/upload/tushuxinxi_tushufengmian3.jpg',3,3);
insert  into `tushuxinxi`(`id`,`addtime`,`tushubianhao`,`tushumingcheng`,`tushuleixing`,`tushuzhuangtai`,`tushuzuozhe`,`tushugaiyao`,`tushufengmian`,`thumbsupnum`,`crazilynum`) values (64,'2021-04-21 23:28:37','图书编号4','图书名称4','图书类型4','图书状态4','图书作者4','图书概要4','http://localhost:8080/springbootk6oce/upload/tushuxinxi_tushufengmian4.jpg',4,4);
insert  into `tushuxinxi`(`id`,`addtime`,`tushubianhao`,`tushumingcheng`,`tushuleixing`,`tushuzhuangtai`,`tushuzuozhe`,`tushugaiyao`,`tushufengmian`,`thumbsupnum`,`crazilynum`) values (65,'2021-04-21 23:28:37','图书编号5','图书名称5','图书类型5','图书状态5','图书作者5','图书概要5','http://localhost:8080/springbootk6oce/upload/tushuxinxi_tushufengmian5.jpg',5,5);
insert  into `tushuxinxi`(`id`,`addtime`,`tushubianhao`,`tushumingcheng`,`tushuleixing`,`tushuzhuangtai`,`tushuzuozhe`,`tushugaiyao`,`tushufengmian`,`thumbsupnum`,`crazilynum`) values (66,'2021-04-21 23:28:37','图书编号6','图书名称6','图书类型6','图书状态6','图书作者6','图书概要6','http://localhost:8080/springbootk6oce/upload/tushuxinxi_tushufengmian6.jpg',6,6);
insert  into `tushuxinxi`(`id`,`addtime`,`tushubianhao`,`tushumingcheng`,`tushuleixing`,`tushuzhuangtai`,`tushuzuozhe`,`tushugaiyao`,`tushufengmian`,`thumbsupnum`,`crazilynum`) values (1619019079798,'2021-04-21 23:31:19','1619019073287','1','图书类型1','1',NULL,'<p>1</p>','http://localhost:8080/springbootk6oce/upload/1619019077358.png',0,0);

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

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'abo','abo','管理员','2021-04-21 23:28:38');

/*Table structure for table `yingshoujine` */

DROP TABLE IF EXISTS `yingshoujine`;

CREATE TABLE `yingshoujine` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `riqi` varchar(200) DEFAULT NULL COMMENT '日期',
  `tushushuliang` varchar(200) DEFAULT NULL COMMENT '图书数量',
  `yingshoujine` varchar(200) DEFAULT NULL COMMENT '应收金额',
  `beizhu` longtext COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1619019156222 DEFAULT CHARSET=utf8 COMMENT='应收金额';

/*Data for the table `yingshoujine` */

insert  into `yingshoujine`(`id`,`addtime`,`riqi`,`tushushuliang`,`yingshoujine`,`beizhu`) values (112,'2021-04-21 23:28:38','日期2','图书数量2','应收金额2','备注2');
insert  into `yingshoujine`(`id`,`addtime`,`riqi`,`tushushuliang`,`yingshoujine`,`beizhu`) values (113,'2021-04-21 23:28:38','日期3','图书数量3','应收金额3','备注3');
insert  into `yingshoujine`(`id`,`addtime`,`riqi`,`tushushuliang`,`yingshoujine`,`beizhu`) values (115,'2021-04-21 23:28:38','日期5','图书数量5','应收金额5','备注5');
insert  into `yingshoujine`(`id`,`addtime`,`riqi`,`tushushuliang`,`yingshoujine`,`beizhu`) values (116,'2021-04-21 23:28:38','日期6','图书数量6','应收金额6','备注6');
insert  into `yingshoujine`(`id`,`addtime`,`riqi`,`tushushuliang`,`yingshoujine`,`beizhu`) values (1619019156221,'2021-04-21 23:32:35','1','1','1','1');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) NOT NULL COMMENT '账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`),
  UNIQUE KEY `zhanghao` (`zhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`xingbie`,`shouji`,`youxiang`,`tupian`,`sfsh`,`shhf`) values (11,'2021-04-21 23:28:37','用户1','123456','姓名1','男','13823888881','773890001@qq.com','http://localhost:8080/springbootk6oce/upload/yonghu_tupian1.jpg','是','');
insert  into `yonghu`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`xingbie`,`shouji`,`youxiang`,`tupian`,`sfsh`,`shhf`) values (12,'2021-04-21 23:28:37','用户2','123456','姓名2','男','13823888882','773890002@qq.com','http://localhost:8080/springbootk6oce/upload/yonghu_tupian2.jpg','是','');
insert  into `yonghu`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`xingbie`,`shouji`,`youxiang`,`tupian`,`sfsh`,`shhf`) values (13,'2021-04-21 23:28:37','用户3','123456','姓名3','男','13823888883','773890003@qq.com','http://localhost:8080/springbootk6oce/upload/yonghu_tupian3.jpg','是','');
insert  into `yonghu`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`xingbie`,`shouji`,`youxiang`,`tupian`,`sfsh`,`shhf`) values (14,'2021-04-21 23:28:37','用户4','123456','姓名4','男','13823888884','773890004@qq.com','http://localhost:8080/springbootk6oce/upload/yonghu_tupian4.jpg','是','');
insert  into `yonghu`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`xingbie`,`shouji`,`youxiang`,`tupian`,`sfsh`,`shhf`) values (15,'2021-04-21 23:28:37','用户5','123456','姓名5','男','13823888885','773890005@qq.com','http://localhost:8080/springbootk6oce/upload/yonghu_tupian5.jpg','是','');
insert  into `yonghu`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`xingbie`,`shouji`,`youxiang`,`tupian`,`sfsh`,`shhf`) values (16,'2021-04-21 23:28:37','用户6','123456','姓名6','男','13823888886','773890006@qq.com','http://localhost:8080/springbootk6oce/upload/yonghu_tupian6.jpg','是','');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
