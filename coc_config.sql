/*
SQLyog Ultimate v11.24 (64 bit)
MySQL - 5.6.17 : Database - coc_config
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`coc_config` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `coc_config`;

/*Table structure for table `army_barbarian` */

DROP TABLE IF EXISTS `army_barbarian`;

CREATE TABLE `army_barbarian` (
  `level` int(11) NOT NULL,
  `id` int(11) DEFAULT NULL,
  `blood` int(11) DEFAULT NULL COMMENT '血量',
  `money` int(11) DEFAULT NULL COMMENT '训练需要的花费',
  `space` int(11) DEFAULT NULL COMMENT '人物所占军营空间',
  `time` int(11) DEFAULT NULL COMMENT '训练需要的时间',
  `damage` int(11) DEFAULT NULL COMMENT '每秒伤害',
  `damage_type` int(11) DEFAULT NULL COMMENT '伤害类型（0:单个目标 1:区域溅射）',
  `preference` int(11) DEFAULT NULL COMMENT '攻击偏好（0:任何）',
  `target` int(11) DEFAULT NULL COMMENT '攻击目标（0:地面目标 1:空中目标 2:地面和空中）',
  PRIMARY KEY (`level`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `army_barbarian` */

insert  into `army_barbarian`(`level`,`id`,`blood`,`money`,`space`,`time`,`damage`,`damage_type`,`preference`,`target`) values (1,1001,45,25,1,20,8,0,0,0);

/*Table structure for table `army_id` */

DROP TABLE IF EXISTS `army_id`;

CREATE TABLE `army_id` (
  `id` int(11) NOT NULL,
  `name` varchar(256) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `army_id` */

insert  into `army_id`(`id`,`name`) values (1001,'野蛮人'),(1002,'弓箭手'),(1003,'哥布林'),(1004,'巨人'),(1005,'炸弹人'),(1006,'气球兵'),(1007,'法师'),(1008,'天使'),(1009,'飞龙'),(1010,'皮卡超人');

/*Table structure for table `attack_build` */

DROP TABLE IF EXISTS `attack_build`;

CREATE TABLE `attack_build` (
  `level` int(11) NOT NULL,
  `id` int(11) DEFAULT NULL,
  `blood` int(11) DEFAULT NULL,
  `build_money` int(11) DEFAULT NULL,
  `build_money_type` int(11) DEFAULT NULL,
  `damage` int(11) DEFAULT NULL,
  `damage_type` int(11) DEFAULT NULL,
  `target` int(11) DEFAULT NULL,
  `preference` int(11) DEFAULT NULL,
  `radius` varchar(256) DEFAULT NULL,
  `build_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`level`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `attack_build` */

/*Table structure for table `barrack_build` */

DROP TABLE IF EXISTS `barrack_build`;

CREATE TABLE `barrack_build` (
  `level` int(11) DEFAULT NULL,
  `id` int(11) DEFAULT NULL,
  `blood` int(11) DEFAULT NULL,
  `build_money` int(11) DEFAULT NULL,
  `build_money_type` int(11) DEFAULT NULL,
  `troops` int(11) DEFAULT NULL,
  `build_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `barrack_build` */

insert  into `barrack_build`(`level`,`id`,`blood`,`build_money`,`build_money_type`,`troops`,`build_time`) values (1,108,250,200,1,20,60),(2,108,270,1000,1,25,900),(3,108,280,2500,1,30,7200),(4,108,290,5000,1,35,14400),(5,108,310,10000,1,40,36000),(6,108,320,80000,1,45,57600),(7,108,340,240000,1,50,86400),(8,108,350,700000,1,55,172800),(9,108,390,1500000,1,60,345600),(10,108,420,2000000,1,75,518400);

/*Table structure for table `build_id` */

DROP TABLE IF EXISTS `build_id`;

CREATE TABLE `build_id` (
  `id` int(11) NOT NULL,
  `name` varchar(256) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `build_id` */

insert  into `build_id`(`id`,`name`) values (100,'大本营'),(101,'圣水收集器'),(102,'圣水瓶'),(103,'金矿'),(104,'储金罐'),(105,'建筑工人小屋'),(106,'暗黑重油罐'),(107,'暗黑重油钻井'),(108,'兵营'),(109,'训练营'),(110,'试验室'),(111,'法术工厂'),(112,'野蛮人之王'),(113,'暗黑训练营'),(114,'弓箭女皇'),(115,'加农炮'),(116,'箭塔'),(117,'城墙'),(118,'迫击炮'),(119,'隐形炸弹'),(120,'防空火箭'),(121,'隐形弹簧'),(122,'法师塔'),(123,'空中炸弹'),(124,'巨型炸弹'),(125,'特斯拉电磁塔'),(126,'搜空地雷'),(127,'X连弩'),(128,'地狱之塔');

/*Table structure for table `build_lv_limit` */

DROP TABLE IF EXISTS `build_lv_limit`;

CREATE TABLE `build_lv_limit` (
  `camp_lv` int(11) NOT NULL,
  `value` varchar(2048) DEFAULT NULL,
  PRIMARY KEY (`camp_lv`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `build_lv_limit` */

insert  into `build_lv_limit`(`camp_lv`,`value`) values (1,'[103,2],[101,2],[107,2],[104,1],[102,1],[106,1],[108,3],[115,2]'),(2,'[103,4],[101,4],[107,4],[104,3],[102,3],[106,3],[108,4],[115,3],[116,2],[117,2]'),(3,'[103,6],[101,6],[107,6],[104,6],[102,6],[106,6],[108,5],[110,1],[115,4],[116,3],[117,3],[118,1]'),(4,'[103,8],[101,8],[107,8],[104,8],[102,8],[106,8],[108,6],[110,2],[115,5],[116,4],[117,4],[118,2],[120,2],[123,2],[126,2]'),(5,'[103,10],[101,10],[107,10],[104,9],[102,9],[106,9],[108,7],[110,3],[111,1],[115,6],[116,6],[117,5],[118,3],[120,3],[123,3],[126,3],[122,2]'),(6,'[103,10],[101,10],[107,10],[104,10],[102,10],[106,10],[108,8],[110,4],[111,2],[115,7],[116,7],[117,6],[118,4],[120,4],[123,4],[126,4],[122,3]'),(7,'[103,11],[101,11],[107,11],[104,11],[102,11],[106,11],[108,9],[110,5],[111,3],[115,8],[116,8],[117,7],[118,5],[120,5],[123,5],[126,5],[122,4],[125,3]'),(8,'[103,11],[101,11],[107,11],[104,11],[102,11],[106,11],[108,10],[110,6],[111,3],[115,10],[116,10],[117,8],[118,6],[120,6],[123,6],[126,6],[122,6],[125,6]'),(9,'[103,11],[101,11],[107,11],[104,11],[102,11],[106,11],[108,10],[110,7],[111,4],[115,11],[116,11],[117,10],[118,7],[120,7],[123,7],[126,7],[122,7],[125,6],[127,3]');

/*Table structure for table `build_num_limit` */

DROP TABLE IF EXISTS `build_num_limit`;

CREATE TABLE `build_num_limit` (
  `camp_lv` int(11) NOT NULL,
  `value` varchar(2048) DEFAULT NULL,
  PRIMARY KEY (`camp_lv`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `build_num_limit` */

insert  into `build_num_limit`(`camp_lv`,`value`) values (1,'[103,1],[101,1],[104,1],[102,1],[108,1],[115,2]'),(2,'[103,2],[101,2],[104,1],[102,1],[108,2],[115,2],[116,1],[117,25]'),(3,'[103,3],[101,3],[104,2],[102,2],[108,2],[110,1],[115,2],[116,1],[117,50],[118,1],[119,2]'),(4,'[103,4],[101,4],[104,2],[102,2],[108,3],[110,1],[115,2],[116,2],[117,75],[118,1],[119,2],[120,1],[121,2]'),(5,'[103,5],[101,5],[104,2],[102,2],[108,3],[110,1],[111,1],[115,3],[116,3],[117,100],[118,1],[119,4],[120,1],[121,2],[122,1],[123,2]'),(6,'[103,6],[101,6],[104,2],[102,2],[108,3],[110,1],[111,1],[115,3],[116,3],[117,125],[118,2],[119,4],[120,1],[121,4],[122,2],[123,2],[124,1]'),(7,'[103,6],[101,6],[104,2],[102,2],[106,1],[108,4],[110,1],[111,1],[115,5],[116,4],[117,150],[118,3],[119,6],[120,2],[121,4],[122,2],[123,2],[124,2],[126,1],[125,2]'),(8,'[103,6],[101,6],[107,1],[104,3],[102,3],[106,1],[108,4],[110,1],[111,1],[115,5],[116,5],[117,200],[118,3],[119,6],[120,2],[121,6],[122,3],[123,3],[124,3],[126,2],[125,3]'),(9,'[103,6],[101,6],[107,2],[104,4],[102,4],[106,1],[108,4],[110,1],[111,1],[115,5],[116,4],[117,200],[118,3],[119,6],[120,2],[121,6],[122,3],[123,3],[124,3],[126,3],[125,4],[128,2]');

/*Table structure for table `camp_build` */

DROP TABLE IF EXISTS `camp_build`;

CREATE TABLE `camp_build` (
  `level` int(11) NOT NULL,
  `id` int(11) DEFAULT NULL,
  `blood` int(11) DEFAULT NULL COMMENT '血量',
  `build_money` int(11) DEFAULT NULL COMMENT '升下一级所需金币',
  `build_money_type` int(11) DEFAULT NULL,
  `max_gold` int(11) DEFAULT NULL COMMENT '最大金币存储量',
  `max_water` int(11) DEFAULT NULL COMMENT '最大圣水存储量',
  `build_time` int(11) DEFAULT NULL COMMENT '升下一级所需时间（分）',
  PRIMARY KEY (`level`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `camp_build` */

insert  into `camp_build`(`level`,`id`,`blood`,`build_money`,`build_money_type`,`max_gold`,`max_water`,`build_time`) values (1,100,800,0,0,1500,1500,60),(2,100,1600,1000,0,6000,6000,900),(3,100,1800,4000,0,100000,100000,7200),(4,100,2000,25000,0,500000,500000,14400),(5,100,2200,150000,0,1000000,1000000,36000),(6,100,2400,750000,0,2000000,2000000,57600),(7,100,2600,1200000,0,4000000,4000000,86400),(8,100,2800,2000000,0,4000000,4000000,172800),(9,100,3000,4000000,0,4000000,4000000,345600);

/*Table structure for table `collect_gold_build` */

DROP TABLE IF EXISTS `collect_gold_build`;

CREATE TABLE `collect_gold_build` (
  `level` int(11) NOT NULL,
  `id` int(11) DEFAULT NULL,
  `blood` int(11) DEFAULT NULL,
  `build_money` int(11) DEFAULT NULL,
  `build_money_type` int(11) DEFAULT NULL,
  `max_value` int(11) DEFAULT NULL,
  `produce_speed` int(11) DEFAULT NULL,
  `build_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`level`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `collect_gold_build` */

insert  into `collect_gold_build`(`level`,`id`,`blood`,`build_money`,`build_money_type`,`max_value`,`produce_speed`,`build_time`) values (1,103,250,150,1,500,200,60),(2,103,270,300,1,1000,400,300),(3,103,280,700,1,1500,600,800),(4,103,290,1400,1,2500,800,3600),(5,103,310,3000,1,10000,1000,14400),(6,103,320,7000,1,20000,1300,43200),(7,103,340,14000,1,30000,1600,86400),(8,103,350,28000,1,50000,1900,172800),(9,103,390,56000,1,75000,2200,259200),(10,103,420,84000,1,100000,2500,345600),(11,103,450,168000,1,150000,3000,518400);

/*Table structure for table `collect_water_build` */

DROP TABLE IF EXISTS `collect_water_build`;

CREATE TABLE `collect_water_build` (
  `level` int(11) NOT NULL,
  `id` int(11) DEFAULT NULL,
  `blood` int(11) DEFAULT NULL,
  `build_money` int(11) DEFAULT NULL,
  `build_money_type` int(11) DEFAULT NULL,
  `max_value` int(11) DEFAULT NULL,
  `produce_speed` int(11) DEFAULT NULL,
  `build_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`level`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `collect_water_build` */

insert  into `collect_water_build`(`level`,`id`,`blood`,`build_money`,`build_money_type`,`max_value`,`produce_speed`,`build_time`) values (1,101,250,150,0,500,200,60),(2,101,270,300,0,1000,400,300),(3,101,280,700,0,1500,600,800),(4,101,290,1400,0,2500,800,3600),(5,101,310,3000,0,10000,1000,14400),(6,101,320,7000,0,20000,1300,43200),(7,101,340,14000,0,30000,1600,86400),(8,101,350,28000,0,50000,1900,172800),(9,101,390,56000,0,75000,2200,259200),(10,101,420,84000,0,100000,2500,345600),(11,101,450,168000,0,150000,3000,518400);

/*Table structure for table `dbserver` */

DROP TABLE IF EXISTS `dbserver`;

CREATE TABLE `dbserver` (
  `id` int(11) DEFAULT NULL,
  `svr_addr` varchar(256) DEFAULT NULL,
  `svr_port` int(11) DEFAULT NULL,
  `db_addr` varchar(256) DEFAULT NULL,
  `db_port` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `mod` int(11) DEFAULT NULL,
  `submod` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `dbserver` */

insert  into `dbserver`(`id`,`svr_addr`,`svr_port`,`db_addr`,`db_port`,`status`,`mod`,`submod`) values (1001,'192.168.1.250',10229,'192.168.1.250',9901,1,1,32),(1002,'192.168.1.250',10230,'192.168.1.250',9902,0,2,2);

/*Table structure for table `globalconfig` */

DROP TABLE IF EXISTS `globalconfig`;

CREATE TABLE `globalconfig` (
  `key` varchar(256) DEFAULT NULL,
  `value` varchar(256) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `globalconfig` */

insert  into `globalconfig`(`key`,`value`) values ('init_player_lv','1'),('init_player_exp','0'),('init_player_goldcoin','750'),('init_player_water','750'),('init_player_points','0'),('init_player_gem','500'),('init_palyer_build','100,103,105,108'),('init_player_max_goldcoin','1000'),('init_player_max_water','1000');

/*Table structure for table `laboratory_build` */

DROP TABLE IF EXISTS `laboratory_build`;

CREATE TABLE `laboratory_build` (
  `level` int(11) NOT NULL,
  `id` int(11) DEFAULT NULL,
  `blood` int(11) DEFAULT NULL,
  `build_money` int(11) DEFAULT NULL,
  `build_money_type` int(11) DEFAULT NULL,
  `build_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`level`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `laboratory_build` */

/*Table structure for table `spellfactory_build` */

DROP TABLE IF EXISTS `spellfactory_build`;

CREATE TABLE `spellfactory_build` (
  `level` int(11) NOT NULL,
  `id` int(11) DEFAULT NULL,
  `blood` int(11) DEFAULT NULL,
  `build_money` int(11) DEFAULT NULL,
  `build_money_type` int(11) DEFAULT NULL,
  `spells` varchar(11) DEFAULT NULL,
  `build_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`level`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `spellfactory_build` */

/*Table structure for table `tin_gold_build` */

DROP TABLE IF EXISTS `tin_gold_build`;

CREATE TABLE `tin_gold_build` (
  `levle` int(11) NOT NULL,
  `id` int(11) DEFAULT NULL,
  `blood` int(11) DEFAULT NULL,
  `build_money` int(11) DEFAULT NULL,
  `build_money_type` int(11) DEFAULT NULL,
  `capacity` int(11) DEFAULT NULL,
  `build_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`levle`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tin_gold_build` */

insert  into `tin_gold_build`(`levle`,`id`,`blood`,`build_money`,`build_money_type`,`capacity`,`build_time`) values (1,104,250,200,1,1500,60),(2,104,270,1000,1,2000,900),(3,104,280,2500,1,5000,7200),(4,104,290,5000,1,8000,14400),(5,104,310,10000,1,100000,36000),(6,104,320,80000,1,170000,57600),(7,104,340,240000,1,250000,86400),(8,104,350,700000,1,1000000,172800),(9,104,390,1500000,1,1500000,345600),(10,104,420,2000000,1,2000000,518400);

/*Table structure for table `tin_water_build` */

DROP TABLE IF EXISTS `tin_water_build`;

CREATE TABLE `tin_water_build` (
  `levle` int(11) NOT NULL,
  `id` int(11) DEFAULT NULL,
  `blood` int(11) DEFAULT NULL,
  `build_money` int(11) DEFAULT NULL,
  `build_money_type` int(11) DEFAULT NULL,
  `capacity` int(11) DEFAULT NULL,
  `build_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`levle`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tin_water_build` */

insert  into `tin_water_build`(`levle`,`id`,`blood`,`build_money`,`build_money_type`,`capacity`,`build_time`) values (1,102,250,200,0,1500,60),(2,102,270,1000,0,2000,900),(3,102,280,2500,0,5000,7200),(4,102,290,5000,0,8000,14400),(5,102,310,10000,0,100000,36000),(6,102,320,80000,0,170000,57600),(7,102,340,240000,0,250000,86400),(8,102,350,700000,0,1000000,172800),(9,102,390,1500000,0,1500000,345600),(10,102,420,2000000,0,2000000,518400);

/*Table structure for table `training_build` */

DROP TABLE IF EXISTS `training_build`;

CREATE TABLE `training_build` (
  `level` int(11) NOT NULL,
  `id` int(11) DEFAULT NULL,
  `blood` int(11) DEFAULT NULL,
  `build_money` int(11) DEFAULT NULL,
  `build_money_type` int(11) DEFAULT NULL,
  `army_forces` varchar(256) DEFAULT NULL,
  `build_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`level`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `training_build` */

insert  into `training_build`(`level`,`id`,`blood`,`build_money`,`build_money_type`,`army_forces`,`build_time`) values (1,109,200,1000,1,'1001',60),(2,109,270,2000,1,'1001,1002',900),(3,109,280,5000,1,'1001,1002,1003',7200),(4,109,290,10000,1,'1001,1002,1003,1004',14400),(5,109,310,30000,1,'1001,1002,1003,1004,1005',36000),(6,109,320,80000,1,'1001,1002,1003,1004,1005,1006',57600),(7,109,340,150000,1,'1001,1002,1003,1004,1005,1006,1007',86400),(8,109,350,250000,1,'1001,1002,1003,1004,1005,1006,1007,1008',172800),(9,109,390,300000,1,'1001,1002,1003,1004,1005,1006,1007,1008,1009',345600),(10,109,420,500000,1,'1001,1002,1003,1004,1005,1006,1007,1008,1009,1010',518400);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
