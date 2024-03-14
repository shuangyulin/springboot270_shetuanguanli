/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.26 : Database - shetuanguanlixitong
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`shetuanguanlixitong` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `shetuanguanlixitong`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'轮播图1','http://localhost:8080/shetuanguanlixitong/upload/config1.jpg'),(2,'轮播图2','http://localhost:8080/shetuanguanlixitong/upload/config2.jpg'),(3,'轮播图3','http://localhost:8080/shetuanguanlixitong/upload/config3.jpg');

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
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COMMENT='字典表';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`beizhu`,`create_time`) values (1,'huodong_types','活动类型',1,'活动类型1',NULL,NULL,'2022-02-21 11:42:36'),(2,'huodong_types','活动类型',2,'活动类型2',NULL,NULL,'2022-02-21 11:42:36'),(3,'huodong_types','活动类型',3,'活动类型3',NULL,NULL,'2022-02-21 11:42:36'),(4,'huodong_shenhe_yesno_types','审核状态',1,'未审核',NULL,NULL,'2022-02-21 11:42:36'),(5,'huodong_shenhe_yesno_types','审核状态',2,'通过',NULL,NULL,'2022-02-21 11:42:36'),(6,'huodong_shenhe_yesno_types','审核状态',3,'拒绝',NULL,NULL,'2022-02-21 11:42:36'),(7,'shetuan_types','社团类型',1,'社团类型1',NULL,NULL,'2022-02-21 11:42:36'),(8,'shetuan_types','社团类型',2,'社团类型2',NULL,NULL,'2022-02-21 11:42:36'),(9,'shetuan_types','社团类型',3,'社团类型3',NULL,NULL,'2022-02-21 11:42:36'),(10,'shetuan_shenhe_yesno_types','审核状态',1,'未审核',NULL,NULL,'2022-02-21 11:42:36'),(11,'shetuan_shenhe_yesno_types','审核状态',2,'通过',NULL,NULL,'2022-02-21 11:42:36'),(12,'shetuan_shenhe_yesno_types','审核状态',3,'拒绝',NULL,NULL,'2022-02-21 11:42:36'),(13,'sex_types','性别',1,'男',NULL,NULL,'2022-02-21 11:42:36'),(14,'sex_types','性别',2,'女',NULL,NULL,'2022-02-21 11:42:36'),(15,'news_types','公告信息类型',1,'公告信息类型1',NULL,NULL,'2022-02-21 11:42:36'),(16,'news_types','公告信息类型',2,'公告信息类型2',NULL,NULL,'2022-02-21 11:42:36'),(17,'news_types','公告信息类型',3,'公告信息类型3',NULL,NULL,'2022-02-21 11:42:36');

/*Table structure for table `huodong` */

DROP TABLE IF EXISTS `huodong`;

CREATE TABLE `huodong` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `huodong_uuid_unmber` varchar(200) DEFAULT NULL COMMENT '活动编号',
  `huodong_name` varchar(200) DEFAULT NULL COMMENT '活动名称 Search111',
  `huodong_types` int(11) DEFAULT NULL COMMENT '活动类型 Search111',
  `huodong_photo` varchar(200) DEFAULT NULL COMMENT '活动封面',
  `shetuan_id` int(11) DEFAULT NULL COMMENT '发布社团',
  `huodong_address` varchar(200) DEFAULT NULL COMMENT '活动地点',
  `huodong_content` text COMMENT '活动详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COMMENT='活动信息';

/*Data for the table `huodong` */

insert  into `huodong`(`id`,`huodong_uuid_unmber`,`huodong_name`,`huodong_types`,`huodong_photo`,`shetuan_id`,`huodong_address`,`huodong_content`,`create_time`) values (1,'活动编号1','活动名称1',1,'http://localhost:8080/shetuanguanlixitong/upload/1645422575662.webp',1,'活动地点1','<p>活动详情1</p>','2022-02-21 11:42:54'),(2,'活动编号2','活动名称2',2,'http://localhost:8080/shetuanguanlixitong/upload/1645422565911.webp',2,'活动地点2','<p>活动详情2</p>','2022-02-21 11:42:54'),(3,'活动编号3','活动名称3',2,'http://localhost:8080/shetuanguanlixitong/upload/1645422556815.jpg',3,'活动地点3','<p>活动详情3</p>','2022-02-21 11:42:54');

/*Table structure for table `huodong_shenhe` */

DROP TABLE IF EXISTS `huodong_shenhe`;

CREATE TABLE `huodong_shenhe` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `huodong_id` int(11) DEFAULT NULL COMMENT '活动',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '学生',
  `huodong_shenhe_yesno_types` int(11) DEFAULT NULL COMMENT '审核状态',
  `huodong_text` text COMMENT '审核意见',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='活动审核';

/*Data for the table `huodong_shenhe` */

insert  into `huodong_shenhe`(`id`,`huodong_id`,`yonghu_id`,`huodong_shenhe_yesno_types`,`huodong_text`,`create_time`) values (1,1,3,2,'审核意见1','2022-02-21 11:42:54'),(2,2,2,3,'审核意见2','2022-02-21 11:42:54'),(3,3,2,3,'审核意见3','2022-02-21 11:42:54'),(12,3,1,2,'随意填写','2022-02-21 14:30:33'),(13,2,1,3,'随意填写','2022-02-21 14:41:09'),(14,1,1,2,'随意填写','2022-02-21 14:41:14');

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `news_name` varchar(200) DEFAULT NULL COMMENT '公告信息标题  Search111 ',
  `news_types` int(11) DEFAULT NULL COMMENT '公告信息类型  Search111 ',
  `news_photo` varchar(200) DEFAULT NULL COMMENT '公告信息图片',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '公告信息时间',
  `news_content` text COMMENT '公告信息详情',
  `news_delete` int(11) DEFAULT '1' COMMENT '假删',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COMMENT='公告信息';

/*Data for the table `news` */

insert  into `news`(`id`,`news_name`,`news_types`,`news_photo`,`insert_time`,`news_content`,`news_delete`,`create_time`) values (1,'公告信息标题1',3,'http://localhost:8080/shetuanguanlixitong/upload/1645420916760.jpg','2022-02-21 11:42:54','<p>公告信息详情1</p>',1,'2022-02-21 11:42:54'),(2,'公告信息标题2',2,'http://localhost:8080/shetuanguanlixitong/upload/1645420909060.webp','2022-02-21 11:42:54','<p>公告信息详情2</p>',1,'2022-02-21 11:42:54'),(3,'公告信息标题3',1,'http://localhost:8080/shetuanguanlixitong/upload/1645420897201.webp','2022-02-21 11:42:54','<p>公告信息详情3</p>',1,'2022-02-21 11:42:54'),(4,'公告信息标题4',2,'http://localhost:8080/shetuanguanlixitong/upload/1645420889756.webp','2022-02-21 11:42:54','<p>公告信息详情4</p>',1,'2022-02-21 11:42:54'),(5,'公告信息标题5',1,'http://localhost:8080/shetuanguanlixitong/upload/1645420882539.webp','2022-02-21 11:42:54','<p>公告信息详情5</p>',1,'2022-02-21 11:42:54'),(6,'公告信息标题6',3,'http://localhost:8080/shetuanguanlixitong/upload/1645420875459.jpg','2022-02-21 11:42:54','<p>公告信息详情6</p>',1,'2022-02-21 11:42:54');

/*Table structure for table `shetuan` */

DROP TABLE IF EXISTS `shetuan`;

CREATE TABLE `shetuan` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `shetuan_uuid_unmber` varchar(200) DEFAULT NULL COMMENT '社团编号',
  `shetuan_name` varchar(200) DEFAULT NULL COMMENT '社团名称 Search111',
  `shetuan_types` int(11) DEFAULT NULL COMMENT '社团类型 Search111',
  `shetuan_photo` varchar(200) DEFAULT NULL COMMENT '社团封面',
  `tuanzhang_id` int(11) DEFAULT NULL COMMENT '发布人',
  `shetuan_address` varchar(200) DEFAULT NULL COMMENT '社团地点',
  `shetuan_content` text COMMENT '社团详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COMMENT='社团信息';

/*Data for the table `shetuan` */

insert  into `shetuan`(`id`,`shetuan_uuid_unmber`,`shetuan_name`,`shetuan_types`,`shetuan_photo`,`tuanzhang_id`,`shetuan_address`,`shetuan_content`,`create_time`) values (1,'社团编号1','社团名称1',2,'http://localhost:8080/shetuanguanlixitong/upload/1645421497265.jpg',1,'社团地点1','<p>社团详情1</p>','2022-02-21 11:42:54'),(2,'社团编号2','社团名称2',2,'http://localhost:8080/shetuanguanlixitong/upload/1645421488433.webp',2,'社团地点2','<p>社团详情2</p>','2022-02-21 11:42:54'),(3,'社团编号3','社团名称3',2,'http://localhost:8080/shetuanguanlixitong/upload/1645421479720.jpg',3,'社团地点3','<p>社团详情3</p>','2022-02-21 11:42:54');

/*Table structure for table `shetuan_shenhe` */

DROP TABLE IF EXISTS `shetuan_shenhe`;

CREATE TABLE `shetuan_shenhe` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `shetuan_id` int(11) DEFAULT NULL COMMENT '社团',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '学生',
  `shetuan_shenhe_yesno_types` int(11) DEFAULT NULL COMMENT '审核状态',
  `shetuan_text` text COMMENT '审核意见',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='社团审核';

/*Data for the table `shetuan_shenhe` */

insert  into `shetuan_shenhe`(`id`,`shetuan_id`,`yonghu_id`,`shetuan_shenhe_yesno_types`,`shetuan_text`,`create_time`) values (1,1,1,2,'审核意见1','2022-02-21 11:42:54'),(2,2,2,2,'审核意见2','2022-02-21 11:42:54'),(3,3,3,2,'审核意见3','2022-02-21 11:42:54'),(15,3,1,3,'111','2022-02-21 14:30:26'),(16,2,1,2,'111','2022-02-21 14:41:03');

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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'admin','users','管理员','bcoi0b5x4lwk3zkthkokrdf6nw77cev6','2022-02-21 11:46:14','2022-02-21 15:44:28'),(2,1,'a1','yonghu','学生','35c4fqkx3p0wb64epc66afujmnztewtx','2022-02-21 11:46:32','2022-02-21 15:58:12'),(3,2,'a2','tuanzhang','团长','i960v5none3x43rdzyciy198g3bui98f','2022-02-21 13:52:44','2022-02-21 15:31:13'),(4,1,'a1','tuanzhang','团长','r2289kafhkffz8htqi5pule61j60ybcb','2022-02-21 14:31:06','2022-02-21 15:42:55'),(5,3,'a3','tuanzhang','团长','v54llt6qe4xlgtrvuveegowggdzp7tfm','2022-02-21 14:31:21','2022-02-21 15:31:22');

/*Table structure for table `tuanzhang` */

DROP TABLE IF EXISTS `tuanzhang`;

CREATE TABLE `tuanzhang` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `tuanzhang_name` varchar(200) DEFAULT NULL COMMENT '团长姓名 Search111 ',
  `tuanzhang_photo` varchar(255) DEFAULT NULL COMMENT '头像',
  `tuanzhang_phone` varchar(200) DEFAULT NULL COMMENT '团长手机号',
  `tuanzhang_id_number` varchar(200) DEFAULT NULL COMMENT '团长身份证号 ',
  `tuanzhang_email` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别 Search111 ',
  `tuanzhang_delete` int(11) DEFAULT '1' COMMENT '假删',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COMMENT='团长';

/*Data for the table `tuanzhang` */

insert  into `tuanzhang`(`id`,`username`,`password`,`tuanzhang_name`,`tuanzhang_photo`,`tuanzhang_phone`,`tuanzhang_id_number`,`tuanzhang_email`,`sex_types`,`tuanzhang_delete`,`create_time`) values (1,'a1','123456','团长姓名1','http://localhost:8080/shetuanguanlixitong/upload/1645420140140.jpg','17703786901','410224199610232001','1@qq.com',2,1,'2022-02-21 11:42:54'),(2,'a2','123456','团长姓名2','http://localhost:8080/shetuanguanlixitong/upload/1645420132932.jpg','17703786902','410224199610232002','2@qq.com',2,1,'2022-02-21 11:42:54'),(3,'a3','123456','团长姓名3','http://localhost:8080/shetuanguanlixitong/upload/1645420116890.jpg','17703786903','410224199610232003','3@qq.com',1,1,'2022-02-21 11:42:54');

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
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '学生姓名 Search111 ',
  `yonghu_photo` varchar(255) DEFAULT NULL COMMENT '头像',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '学生手机号',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '学生身份证号 ',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别 Search111 ',
  `yonghu_delete` int(11) DEFAULT '1' COMMENT '假删',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='学生';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`yonghu_name`,`yonghu_photo`,`yonghu_phone`,`yonghu_id_number`,`yonghu_email`,`sex_types`,`yonghu_delete`,`create_time`) values (1,'a1','123456','学生姓名1','http://localhost:8080/shetuanguanlixitong/upload/touxiang1.jpg','17703786901','410224199610232001','1@qq.com',1,1,'2022-02-21 11:42:54'),(2,'a2','123456','学生姓名2','http://localhost:8080/shetuanguanlixitong/upload/touxiang2.jpg','17703786902','410224199610232002','2@qq.com',2,1,'2022-02-21 11:42:54'),(3,'a3','123456','学生姓名3','http://localhost:8080/shetuanguanlixitong/upload/touxiang3.jpg','17703786903','410224199610232003','3@qq.com',2,1,'2022-02-21 11:42:54');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
