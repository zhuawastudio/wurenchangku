/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - wurenchangku
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`wurenchangku` /*!40100 DEFAULT CHARACTER SET utf8 */;

/*Table structure for table `buhuoshneqing` */

DROP TABLE IF EXISTS `buhuoshneqing`;

CREATE TABLE `buhuoshneqing` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `buhuotixing_id` int(11) DEFAULT NULL COMMENT '补货信息',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '员工',
  `buhuoshneqing_yesno_types` int(11) DEFAULT NULL COMMENT '审核状态',
  `buhuoshneqing_yesno_text` text COMMENT '审核意见',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='补货申请';

/*Data for the table `buhuoshneqing` */

insert  into `buhuoshneqing`(`id`,`buhuotixing_id`,`yonghu_id`,`buhuoshneqing_yesno_types`,`buhuoshneqing_yesno_text`,`create_time`) values (1,1,3,1,'审核意见1','2022-02-23 19:47:09'),(2,2,2,2,'审核意见2','2022-02-23 19:47:09'),(3,3,3,3,'审核意见3','2022-02-23 19:47:09'),(4,4,3,2,'审核意见4','2022-02-23 19:47:09'),(5,5,3,3,'审核意见5','2022-02-23 19:47:09'),(6,5,1,2,'审核通过','2022-02-23 19:58:02'),(7,6,1,2,'审核通过 审核拒绝后还需要继续申请补货','2022-02-23 20:05:43');

/*Table structure for table `buhuotixing` */

DROP TABLE IF EXISTS `buhuotixing`;

CREATE TABLE `buhuotixing` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `buhuotixing_name` varchar(200) DEFAULT NULL COMMENT '物品名称 Search111 ',
  `buhuotixing_types` int(11) DEFAULT NULL COMMENT '物品类型 Search111',
  `buhuotixing_number` int(11) DEFAULT NULL COMMENT '补货数量',
  `buhuotixing_stauts_types` int(11) DEFAULT NULL COMMENT '补货状态',
  `buhuotixing_delete` int(11) DEFAULT '1' COMMENT '假删',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='补货提醒';

/*Data for the table `buhuotixing` */

insert  into `buhuotixing`(`id`,`buhuotixing_name`,`buhuotixing_types`,`buhuotixing_number`,`buhuotixing_stauts_types`,`buhuotixing_delete`,`create_time`) values (1,'物品名称1',1,381,1,1,'2022-02-23 19:47:09'),(2,'物品名称2',2,279,2,1,'2022-02-23 19:47:09'),(3,'物品名称3',2,482,2,1,'2022-02-23 19:47:09'),(4,'物品名称4',1,272,1,1,'2022-02-23 19:47:09'),(5,'物品名称5',3,473,2,1,'2022-02-23 19:47:09'),(6,'管理可以添加补货提示 和需要补货的数量',3,99,2,1,'2022-02-23 20:05:12');

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int(11) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int(11) DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COMMENT='字典表';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`beizhu`,`create_time`) values (1,'buhuotixing_types','物品类型',1,'物品类型1',NULL,NULL,'2022-02-23 19:47:02'),(2,'buhuotixing_types','物品类型',2,'物品类型2',NULL,NULL,'2022-02-23 19:47:02'),(3,'buhuotixing_types','物品类型',3,'物品类型3',NULL,NULL,'2022-02-23 19:47:02'),(4,'buhuotixing_stauts_types','补货状态',1,'未补货',NULL,NULL,'2022-02-23 19:47:02'),(5,'buhuotixing_stauts_types','补货状态',2,'以补货',NULL,NULL,'2022-02-23 19:47:02'),(6,'buhuoshneqing_yesno_types','审核状态',1,'未审核',NULL,NULL,'2022-02-23 19:47:02'),(7,'buhuoshneqing_yesno_types','审核状态',2,'通过',NULL,NULL,'2022-02-23 19:47:02'),(8,'buhuoshneqing_yesno_types','审核状态',3,'拒绝',NULL,NULL,'2022-02-23 19:47:02'),(9,'quhuoshenqing_yesno_types','审核状态',1,'未审核',NULL,NULL,'2022-02-23 19:47:02'),(10,'quhuoshenqing_yesno_types','审核状态',2,'通过',NULL,NULL,'2022-02-23 19:47:02'),(11,'quhuoshenqing_yesno_types','审核状态',3,'拒绝',NULL,NULL,'2022-02-23 19:47:02'),(12,'sex_types','性别',1,'男',NULL,NULL,'2022-02-23 19:47:02'),(13,'sex_types','性别',2,'女',NULL,NULL,'2022-02-23 19:47:02');

/*Table structure for table `quhuoshenqing` */

DROP TABLE IF EXISTS `quhuoshenqing`;

CREATE TABLE `quhuoshenqing` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `quhuoshenqing_name` varchar(200) DEFAULT NULL COMMENT '物品名称 Search111 ',
  `buhuotixing_types` int(11) DEFAULT NULL COMMENT '物品类型 Search111',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '员工',
  `quhuoshenqing_number` int(11) DEFAULT NULL COMMENT '取货数量',
  `quhuoshenqing_yesno_types` int(11) DEFAULT NULL COMMENT '审核状态',
  `quhuoshenqing_yesno_text` text COMMENT '审核意见',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='取货申请';

/*Data for the table `quhuoshenqing` */

insert  into `quhuoshenqing`(`id`,`quhuoshenqing_name`,`buhuotixing_types`,`yonghu_id`,`quhuoshenqing_number`,`quhuoshenqing_yesno_types`,`quhuoshenqing_yesno_text`,`create_time`) values (1,'物品名称1',3,2,250,3,'审核意见1','2022-02-23 19:47:09'),(2,'物品名称2',1,3,211,2,'审核意见2','2022-02-23 19:47:09'),(3,'物品名称3',2,1,422,2,'审核意见3','2022-02-23 19:47:09'),(4,'物品名称4',1,3,232,3,'审核意见4','2022-02-23 19:47:09'),(5,'物品名称5',2,2,59,1,'审核意见5','2022-02-23 19:47:09'),(6,'员工申请取货 名称',2,1,999,3,'审核拒绝','2022-02-23 20:07:51');

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

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'admin','users','管理员','z2pu4hojw7lkx3c4azkhf0yj16whurk5','2022-02-23 19:56:47','2022-02-23 21:13:54'),(2,1,'a1','yonghu','员工','ftkhzx8axqbozyzjut88llijmlc0h2vq','2022-02-23 19:57:58','2022-02-23 21:05:19');

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

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'admin','admin','管理员','2021-02-25 15:59:12');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '员工姓名 Search111 ',
  `yonghu_photo` varchar(255) DEFAULT NULL COMMENT '头像',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '员工手机号',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '员工身份证号 ',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别 Search111 ',
  `yonghu_delete` int(11) DEFAULT '1' COMMENT '假删',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='员工';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`yonghu_name`,`yonghu_photo`,`yonghu_phone`,`yonghu_id_number`,`yonghu_email`,`sex_types`,`yonghu_delete`,`create_time`) values (1,'a1','123456','员工姓名1','http://localhost:8080/wurenchangku/upload/yonghu1.jpg','17703786901','410224199610232001','1@qq.com',1,1,'2022-02-23 19:47:09'),(2,'a2','123456','员工姓名2','http://localhost:8080/wurenchangku/upload/yonghu2.jpg','17703786902','410224199610232002','2@qq.com',1,1,'2022-02-23 19:47:09'),(3,'a3','123456','员工姓名3','http://localhost:8080/wurenchangku/upload/yonghu3.jpg','17703786903','410224199610232003','3@qq.com',2,1,'2022-02-23 19:47:09');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
