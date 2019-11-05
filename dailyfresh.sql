-- MySQL dump 10.16  Distrib 10.1.34-MariaDB, for Win32 (AMD64)
--
-- Host: localhost    Database: dailyfresh
-- ------------------------------------------------------
-- Server version	10.1.34-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `group_id` (`group_id`,`permission_id`),
  KEY `auth_group__permission_id_61b118e914f35172_fk_auth_permission_id` (`permission_id`),
  CONSTRAINT `auth_group__permission_id_61b118e914f35172_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permission_group_id_7d3c2e255b3b7fb5_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `content_type_id` (`content_type_id`,`codename`),
  CONSTRAINT `auth__content_type_id_74e8165037372f70_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can add permission',2,'add_permission'),(5,'Can change permission',2,'change_permission'),(6,'Can delete permission',2,'delete_permission'),(7,'Can add group',3,'add_group'),(8,'Can change group',3,'change_group'),(9,'Can delete group',3,'delete_group'),(10,'Can add content type',4,'add_contenttype'),(11,'Can change content type',4,'change_contenttype'),(12,'Can delete content type',4,'delete_contenttype'),(13,'Can add session',5,'add_session'),(14,'Can change session',5,'change_session'),(15,'Can delete session',5,'delete_session'),(16,'Can add 用户',6,'add_user'),(17,'Can change 用户',6,'change_user'),(18,'Can delete 用户',6,'delete_user'),(19,'Can add 地址',7,'add_address'),(20,'Can change 地址',7,'change_address'),(21,'Can delete 地址',7,'delete_address'),(22,'Can add 商品种类',8,'add_goodstype'),(23,'Can change 商品种类',8,'change_goodstype'),(24,'Can delete 商品种类',8,'delete_goodstype'),(25,'Can add 商品',9,'add_goodssku'),(26,'Can change 商品',9,'change_goodssku'),(27,'Can delete 商品',9,'delete_goodssku'),(28,'Can add 商品SPU',10,'add_goods'),(29,'Can change 商品SPU',10,'change_goods'),(30,'Can delete 商品SPU',10,'delete_goods'),(31,'Can add 商品图片',11,'add_goodsimage'),(32,'Can change 商品图片',11,'change_goodsimage'),(33,'Can delete 商品图片',11,'delete_goodsimage'),(34,'Can add 首页轮播商品',12,'add_indexgoodsbanner'),(35,'Can change 首页轮播商品',12,'change_indexgoodsbanner'),(36,'Can delete 首页轮播商品',12,'delete_indexgoodsbanner'),(37,'Can add 主页分类展示商品',13,'add_indextypegoodsbanner'),(38,'Can change 主页分类展示商品',13,'change_indextypegoodsbanner'),(39,'Can delete 主页分类展示商品',13,'delete_indextypegoodsbanner'),(40,'Can add 主页促销活动',14,'add_indexpromotionbanner'),(41,'Can change 主页促销活动',14,'change_indexpromotionbanner'),(42,'Can delete 主页促销活动',14,'delete_indexpromotionbanner'),(43,'Can add 订单',15,'add_orderinfo'),(44,'Can change 订单',15,'change_orderinfo'),(45,'Can delete 订单',15,'delete_orderinfo'),(46,'Can add 订单商品',16,'add_ordergoods'),(47,'Can change 订单商品',16,'change_ordergoods'),(48,'Can delete 订单商品',16,'delete_ordergoods');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `df_address`
--

DROP TABLE IF EXISTS `df_address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `df_address` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  `is_delete` tinyint(1) NOT NULL,
  `receiver` varchar(20) NOT NULL,
  `addr` varchar(256) NOT NULL,
  `zip_code` varchar(6) DEFAULT NULL,
  `phone` varchar(11) NOT NULL,
  `is_default` tinyint(1) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `df_address_user_id_764003220f9b909c_fk_df_user_id` (`user_id`),
  CONSTRAINT `df_address_user_id_764003220f9b909c_fk_df_user_id` FOREIGN KEY (`user_id`) REFERENCES `df_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `df_address`
--

LOCK TABLES `df_address` WRITE;
/*!40000 ALTER TABLE `df_address` DISABLE KEYS */;
INSERT INTO `df_address` VALUES (1,'2019-09-27 14:19:50','2019-09-27 14:19:50',0,'小罗','河南省信阳市',NULL,'18588888888',1,22),(2,'2019-09-27 14:21:16','2019-09-27 14:21:16',0,'中罗','河南省信阳市',NULL,'18588888888',0,22),(3,'2019-09-27 14:24:58','2019-09-27 14:24:58',0,'中罗','sasadadasdsa','121212','18588888888',0,22),(4,'2019-09-27 15:19:42','2019-09-27 15:19:42',0,'中罗','sasas','12121','18588898989',0,22),(5,'2019-09-27 15:21:28','2019-09-27 15:21:28',0,'中罗','sadasdas','121212','18588898989',0,22);
/*!40000 ALTER TABLE `df_address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `df_goods`
--

DROP TABLE IF EXISTS `df_goods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `df_goods` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  `is_delete` tinyint(1) NOT NULL,
  `name` varchar(20) NOT NULL,
  `detail` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `df_goods`
--

LOCK TABLES `df_goods` WRITE;
/*!40000 ALTER TABLE `df_goods` DISABLE KEYS */;
INSERT INTO `df_goods` VALUES (1,'2019-11-03 10:31:00','2019-11-03 12:28:28',0,'草莓','<p>好吃的草莓们。</p>'),(2,'2019-11-03 14:34:23','2019-11-03 14:34:23',0,'香蕉','<p>好吃的香蕉啊</p>'),(3,'2019-11-03 14:44:20','2019-11-03 14:44:20',0,'贝壳','<p>贝壳一类的食物</p>'),(4,'2019-11-04 03:23:28','2019-11-04 03:23:28',0,'海里的鱼','<p>都是海里的鱼</p>'),(5,'2019-11-04 03:27:05','2019-11-04 03:27:05',0,'畜类的肉','<p>都是一般牲口的肉</p>'),(6,'2019-11-04 03:33:55','2019-11-04 03:33:55',0,'苹果','<p>苹果的种类有红苹果绿苹果，各种各样的苹果</p>'),(7,'2019-11-04 03:36:06','2019-11-04 03:36:06',0,'橘子','<p>有散装的盒装的</p>');
/*!40000 ALTER TABLE `df_goods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `df_goods_image`
--

DROP TABLE IF EXISTS `df_goods_image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `df_goods_image` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  `is_delete` tinyint(1) NOT NULL,
  `image` varchar(100) NOT NULL,
  `sku_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `df_goods_image_22ad5bca` (`sku_id`),
  CONSTRAINT `df_goods_image_sku_id_79ad9e1883bb3605_fk_df_goods_sku_id` FOREIGN KEY (`sku_id`) REFERENCES `df_goods_sku` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `df_goods_image`
--

LOCK TABLES `df_goods_image` WRITE;
/*!40000 ALTER TABLE `df_goods_image` DISABLE KEYS */;
/*!40000 ALTER TABLE `df_goods_image` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `df_goods_sku`
--

DROP TABLE IF EXISTS `df_goods_sku`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `df_goods_sku` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  `is_delete` tinyint(1) NOT NULL,
  `name` varchar(20) NOT NULL,
  `desc` varchar(256) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `unite` varchar(20) NOT NULL,
  `image` varchar(100) NOT NULL,
  `stock` int(11) NOT NULL,
  `sales` int(11) NOT NULL,
  `status` smallint(6) NOT NULL,
  `goods_id` int(11) NOT NULL,
  `type_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `df_goods_sku_goods_id_76aaff9696352f96_fk_df_goods_id` (`goods_id`),
  KEY `df_goods_sku_94757cae` (`type_id`),
  CONSTRAINT `df_goods_sku_goods_id_76aaff9696352f96_fk_df_goods_id` FOREIGN KEY (`goods_id`) REFERENCES `df_goods` (`id`),
  CONSTRAINT `df_goods_sku_type_id_3fb7d029b9cb332_fk_df_goods_type_id` FOREIGN KEY (`type_id`) REFERENCES `df_goods_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `df_goods_sku`
--

LOCK TABLES `df_goods_sku` WRITE;
/*!40000 ALTER TABLE `df_goods_sku` DISABLE KEYS */;
INSERT INTO `df_goods_sku` VALUES (10,'2019-11-03 12:38:38','2019-11-03 12:49:50',0,'草莓','散装的草莓',15.00,'500','group1/M00/00/00/wKjpjl2-zO6AdoK7AAAljHPuXJg1197293',50,0,1,1,19),(11,'2019-11-03 14:35:21','2019-11-03 14:35:21',0,'大香蕉','好吃的香蕉',16.00,'500','group1/M00/00/00/wKjpjl2-5amAAj_SAAAaabPqzqc7937867',12,0,1,2,19),(12,'2019-11-03 14:45:04','2019-11-03 14:45:04',0,'扇贝','好吃的扇贝',45.00,'500','group1/M00/00/00/wKjpjl2-5_CASPioAAAk8WCqqmI7955327',12,5,1,3,20),(13,'2019-11-04 03:24:10','2019-11-04 03:24:10',0,'带鱼','好吃的带鱼',24.00,'500','group1/M00/00/00/wKjpjl2_mduAMmlCAAAkaP_7_188888149',12,0,1,4,20),(14,'2019-11-04 03:30:13','2019-11-04 03:30:13',0,'猪肉','好吃的猪肉',33.00,'500','group1/M00/00/00/wKjpjl2_m0WAc4rzAABYLfJTwIY2399423',15,6,1,5,21),(15,'2019-11-04 03:34:57','2019-11-04 03:34:57',0,'青苹果','好吃的苹果',34.00,'500','group1/M00/00/00/wKjpjl2_nGGAFaAUAAAWnwO6wpU4929441',15,9,1,6,19),(16,'2019-11-04 03:38:00','2019-11-04 03:38:00',0,'散装橘子','散装的好吃的橘子',7.00,'500','group1/M00/00/00/wKjpjl2_nRiAD9MLAAAlcPqsn-E2221263',10,5,1,7,19);
/*!40000 ALTER TABLE `df_goods_sku` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `df_goods_type`
--

DROP TABLE IF EXISTS `df_goods_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `df_goods_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  `is_delete` tinyint(1) NOT NULL,
  `name` varchar(20) NOT NULL,
  `logo` varchar(20) NOT NULL,
  `image` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `df_goods_type`
--

LOCK TABLES `df_goods_type` WRITE;
/*!40000 ALTER TABLE `df_goods_type` DISABLE KEYS */;
INSERT INTO `df_goods_type` VALUES (19,'2019-11-03 12:10:19','2019-11-03 12:10:19',0,'新鲜水果','fruit','group1/M00/00/00/wKjpjl2-w6mAdcFCAAAmv27pX4k2431060'),(20,'2019-11-03 12:22:37','2019-11-03 12:22:37',0,'海鲜水产','seafood','group1/M00/00/00/wKjpjl2-xoyAQhiPAABHr3RQqFs1451957'),(21,'2019-11-03 14:30:43','2019-11-03 14:30:43',0,'猪牛羊肉','meet','group1/M00/00/00/wKjpjl2-5JOAAc6IAAAy1Tlm9So7207417'),(22,'2019-11-03 14:31:25','2019-11-03 14:31:25',0,'禽类蛋品','egg','group1/M00/00/00/wKjpjl2-5L2ANTcyAAAqR4DoSUg0508297'),(23,'2019-11-03 14:31:59','2019-11-03 14:31:59',0,'新鲜蔬菜','vegetables','group1/M00/00/00/wKjpjl2-5N-AP-U-AAA-0ZoYkpM0090819'),(24,'2019-11-03 14:33:02','2019-11-03 14:33:02',0,'速冻食品','ice','group1/M00/00/00/wKjpjl2-5R6AAqRhAAA3sZPrVzQ3974625');
/*!40000 ALTER TABLE `df_goods_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `df_index_banner`
--

DROP TABLE IF EXISTS `df_index_banner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `df_index_banner` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  `is_delete` tinyint(1) NOT NULL,
  `image` varchar(100) NOT NULL,
  `index` smallint(6) NOT NULL,
  `sku_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `df_index_banner_sku_id_f9df5527acf96ef_fk_df_goods_sku_id` (`sku_id`),
  CONSTRAINT `df_index_banner_sku_id_f9df5527acf96ef_fk_df_goods_sku_id` FOREIGN KEY (`sku_id`) REFERENCES `df_goods_sku` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `df_index_banner`
--

LOCK TABLES `df_index_banner` WRITE;
/*!40000 ALTER TABLE `df_index_banner` DISABLE KEYS */;
INSERT INTO `df_index_banner` VALUES (1,'2019-11-03 14:37:13','2019-11-03 14:37:13',0,'group1/M00/00/00/wKjpjl2-5hmAfQq9AACpB-LsCdE3362354',0,10),(2,'2019-11-03 14:46:23','2019-11-03 14:46:23',0,'group1/M00/00/00/wKjpjl2-6D-AK0CtAAD0akkXmFo7461147',3,12),(4,'2019-11-04 03:32:37','2019-11-04 03:32:37',0,'group1/M00/00/00/wKjpjl2_m9WAOcIEAAETwXb_pso6414338',5,14);
/*!40000 ALTER TABLE `df_index_banner` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `df_index_promotion`
--

DROP TABLE IF EXISTS `df_index_promotion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `df_index_promotion` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  `is_delete` tinyint(1) NOT NULL,
  `name` varchar(20) NOT NULL,
  `url` varchar(256) NOT NULL,
  `image` varchar(100) NOT NULL,
  `index` smallint(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `df_index_promotion`
--

LOCK TABLES `df_index_promotion` WRITE;
/*!40000 ALTER TABLE `df_index_promotion` DISABLE KEYS */;
INSERT INTO `df_index_promotion` VALUES (1,'2019-11-03 14:51:39','2019-11-03 14:51:39',0,'水果甩卖','http://127.0.0.1:8000/index','group1/M00/00/00/wKjpjl2-6XuAAx9KAAA2pLUeB605432667',1),(2,'2019-11-03 14:51:58','2019-11-03 14:51:58',0,'缤纷夏日','http://127.0.0.1:8000/index','group1/M00/00/00/wKjpjl2-6Y6AfsOVAAA98yvCs1I6632275',0);
/*!40000 ALTER TABLE `df_index_promotion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `df_index_type_goods`
--

DROP TABLE IF EXISTS `df_index_type_goods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `df_index_type_goods` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  `is_delete` tinyint(1) NOT NULL,
  `display_type` smallint(6) NOT NULL,
  `index` smallint(6) NOT NULL,
  `sku_id` int(11) NOT NULL,
  `type_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `df_index_type_goods_sku_id_4bd8dd2371032b3b_fk_df_goods_sku_id` (`sku_id`),
  KEY `df_index_type_goods_type_id_409cd22d4b3f7acc_fk_df_goods_type_id` (`type_id`),
  CONSTRAINT `df_index_type_goods_sku_id_4bd8dd2371032b3b_fk_df_goods_sku_id` FOREIGN KEY (`sku_id`) REFERENCES `df_goods_sku` (`id`),
  CONSTRAINT `df_index_type_goods_type_id_409cd22d4b3f7acc_fk_df_goods_type_id` FOREIGN KEY (`type_id`) REFERENCES `df_goods_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `df_index_type_goods`
--

LOCK TABLES `df_index_type_goods` WRITE;
/*!40000 ALTER TABLE `df_index_type_goods` DISABLE KEYS */;
INSERT INTO `df_index_type_goods` VALUES (2,'2019-11-03 12:42:12','2019-11-03 12:42:12',0,1,0,10,19),(3,'2019-11-03 14:35:47','2019-11-04 03:35:30',0,1,1,11,19),(4,'2019-11-03 14:45:38','2019-11-03 14:45:38',0,1,0,12,20),(5,'2019-11-04 03:30:55','2019-11-04 03:30:55',0,1,0,14,21),(6,'2019-11-04 03:35:11','2019-11-04 03:35:26',0,1,2,15,19),(7,'2019-11-04 03:38:13','2019-11-04 03:38:26',0,1,4,16,19);
/*!40000 ALTER TABLE `df_index_type_goods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `df_order_goods`
--

DROP TABLE IF EXISTS `df_order_goods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `df_order_goods` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  `is_delete` tinyint(1) NOT NULL,
  `count` int(11) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `comment` varchar(256) NOT NULL,
  `order_id` varchar(128) NOT NULL,
  `sku_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `df_order_goods_69dfcb07` (`order_id`),
  KEY `df_order_goods_22ad5bca` (`sku_id`),
  CONSTRAINT `df_order_goo_order_id_609e47fe052323df_fk_df_order_info_order_id` FOREIGN KEY (`order_id`) REFERENCES `df_order_info` (`order_id`),
  CONSTRAINT `df_order_goods_sku_id_249b2487ef1683b8_fk_df_goods_sku_id` FOREIGN KEY (`sku_id`) REFERENCES `df_goods_sku` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `df_order_goods`
--

LOCK TABLES `df_order_goods` WRITE;
/*!40000 ALTER TABLE `df_order_goods` DISABLE KEYS */;
/*!40000 ALTER TABLE `df_order_goods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `df_order_info`
--

DROP TABLE IF EXISTS `df_order_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `df_order_info` (
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  `is_delete` tinyint(1) NOT NULL,
  `order_id` varchar(128) NOT NULL,
  `pay_method` smallint(6) NOT NULL,
  `total_count` int(11) NOT NULL,
  `total_price` decimal(10,2) NOT NULL,
  `transit_price` decimal(10,2) NOT NULL,
  `order_status` smallint(6) NOT NULL,
  `trade_no` varchar(128) NOT NULL,
  `addr_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`order_id`),
  KEY `df_order_info_90ccbf41` (`addr_id`),
  KEY `df_order_info_e8701ad4` (`user_id`),
  CONSTRAINT `df_order_info_addr_id_2e4ea1ac385badf6_fk_df_address_id` FOREIGN KEY (`addr_id`) REFERENCES `df_address` (`id`),
  CONSTRAINT `df_order_info_user_id_7c3ec8767096a8ed_fk_df_user_id` FOREIGN KEY (`user_id`) REFERENCES `df_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `df_order_info`
--

LOCK TABLES `df_order_info` WRITE;
/*!40000 ALTER TABLE `df_order_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `df_order_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `df_user`
--

DROP TABLE IF EXISTS `df_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `df_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(30) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime NOT NULL,
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  `is_delete` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `df_user`
--

LOCK TABLES `df_user` WRITE;
/*!40000 ALTER TABLE `df_user` DISABLE KEYS */;
INSERT INTO `df_user` VALUES (1,'pbkdf2_sha256$36000$aHzJIDbnYUun$Axu5tLomYMC+UKoJLEt9RM+JxMGRSU9OawGIKT5PViI=','2019-11-04 03:14:25',1,'admin','','','63702168@qq.com',1,1,'2019-09-24 15:42:24','2019-09-24 15:42:24','2019-09-24 15:42:24',0),(2,'pbkdf2_sha256$20000$PU3LEPNaOvJa$mD/6WfLw+VWSzJ+iGynbOvSXyUZ13vmaxSbNmtD/RJc=',NULL,0,'smart','','','813338303@qq.com',0,1,'2019-09-25 06:41:11','2019-09-25 06:41:11','2019-09-25 06:41:11',0),(6,'pbkdf2_sha256$20000$kRQ8A9JQUe7l$8NhOcxHHnG4j89ougsXpeA++4PzgDAN5vgLFzpPwomk=',NULL,0,'smar01','','','898121208@qq.com',0,1,'2019-09-25 06:57:38','2019-09-25 06:57:38','2019-09-25 06:57:38',0),(7,'pbkdf2_sha256$36000$BCi49X5cmjO3$ZNyPgwHgdmdjisRkFN6uqh0+XoPXAoO8EGn09FYewMI=','2019-09-27 13:13:11',0,'smart02','','','813338303@qq.com',0,1,'2019-09-25 07:03:40','2019-09-25 07:03:40','2019-09-25 07:03:40',0),(8,'pbkdf2_sha256$20000$HAOQWkBDGOn2$4f1zla5zWtyCDs9pocotNrc5f3o8FxexRU7w3LJciDE=',NULL,0,'smart03','','','813338303@qq.com',0,0,'2019-09-25 07:05:46','2019-09-25 07:05:46','2019-09-25 07:05:46',0),(11,'pbkdf2_sha256$20000$Qizyf79UQTpJ$4AaUQtty2UILnxbJDknpCRvO5IMsbTPd0VF1vKvENXw=',NULL,0,'smart07','','','813338303@qq.com',0,0,'2019-09-25 09:41:52','2019-09-25 09:41:52','2019-09-25 09:41:52',0),(12,'pbkdf2_sha256$20000$TvOHaRzkxfdV$M+rj6JqU1bMLsTmO7753xbytkW8JUcvhsNeekrIpM3s=',NULL,0,'smart06','','','813338303@qq.com',0,0,'2019-09-25 10:24:48','2019-09-25 10:24:48','2019-09-25 10:24:48',0),(13,'pbkdf2_sha256$20000$jk8vWzuGT0Fz$74x26ql0CtizGrWXLwFkIG2/HPG3XaucdBv6uvKcYOY=',NULL,0,'smart05','','','813338303@qq.com',0,0,'2019-09-25 10:40:00','2019-09-25 10:40:00','2019-09-25 10:40:00',0),(14,'pbkdf2_sha256$20000$EHF4v79z4EJQ$SMuv1FAfwTfJoG/MFHDSJ/97mrdHkzSZUGm8AMvCVq8=',NULL,0,'smart8','','','813338303@qq.com',0,0,'2019-09-25 13:24:39','2019-09-25 13:24:39','2019-09-25 13:24:39',0),(15,'pbkdf2_sha256$20000$IO1BBa5cAPyT$k/Hk/gKIc56568kvcerIpv0rn/mpF5n8sQKUiTOwqto=',NULL,0,'smart9','','','813338303@qq.com',0,1,'2019-09-25 13:33:03','2019-09-25 13:33:03','2019-09-25 13:37:06',0),(16,'pbkdf2_sha256$20000$vNjaPGhdP3w4$DOHwZuWIbu72khiYmpOGhNcox8FBA87cZvZoVaMoNp0=',NULL,0,'smart10','','','luola63702168@163.com',0,1,'2019-09-25 13:39:19','2019-09-25 13:39:19','2019-09-25 13:39:47',0),(17,'pbkdf2_sha256$20000$mBCPngoAboQ5$CvzJ7ehD37CrLNp3EnHI6puzfEB9/97V28hvANj46S4=',NULL,0,'smart11','','','813338303@qq.com',0,1,'2019-09-25 13:42:03','2019-09-25 13:42:03','2019-09-25 13:42:58',0),(18,'pbkdf2_sha256$20000$idg2PL2CYZHw$WPzvs5HlNQgT37qBrmOL8p+wXuY3jZAbjB0LuI/sSGc=',NULL,0,'smart12','','','luola63702168@163.com',0,1,'2019-09-25 13:50:35','2019-09-25 13:50:35','2019-09-25 14:14:38',0),(19,'pbkdf2_sha256$20000$935SsUp7L3LB$pIBfZg5W2bnqYsowZJEERLMhIS/h6pg2FmZH8RECtC8=',NULL,0,'smart13','','','813338303@qq.com',0,0,'2019-09-26 05:38:48','2019-09-26 05:38:48','2019-09-26 05:38:48',0),(20,'pbkdf2_sha256$20000$7QciDgKFQNKs$uf5RIe3Ku0SmHMqe7393F1fom32veNM1QjdoiIH1TDU=',NULL,0,'smart14','','','813338303@qq.com',0,0,'2019-09-26 05:42:06','2019-09-26 05:42:06','2019-09-26 05:42:06',0),(21,'pbkdf2_sha256$20000$bxeI2uIDZJtr$OeD3+1BOz3jyHo9plkbqTVbx5PS9FmiEi0lZaxRZU8o=',NULL,0,'smart15','','','813338303@qq.com',0,0,'2019-09-26 05:44:25','2019-09-26 05:44:25','2019-09-26 05:44:25',0),(22,'pbkdf2_sha256$36000$bzZgvaVIWGwD$J3MSFKFwYw3Jy3pqA1o47TO/k/t3EtnkQ1tx7wTQ0xs=','2019-11-03 09:40:22',0,'smart16','','','813338303@qq.com',0,1,'2019-09-26 05:47:13','2019-09-26 05:47:13','2019-09-26 05:47:41',0),(23,'pbkdf2_sha256$36000$9D3sBukiEytu$J09PPxnR4pxIpCqOqG1xAEMnf4uBm9xwfj3IW1qnpsM=','2019-09-27 13:13:41',0,'smart17','','','813338303@qq.com',0,1,'2019-09-26 10:00:12','2019-09-26 10:00:12','2019-09-26 10:00:45',0);
/*!40000 ALTER TABLE `df_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `df_user_groups`
--

DROP TABLE IF EXISTS `df_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `df_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`group_id`),
  KEY `df_user_groups_group_id_10af9e31179732fe_fk_auth_group_id` (`group_id`),
  CONSTRAINT `df_user_groups_group_id_10af9e31179732fe_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `df_user_groups_user_id_51e4284b91ad8267_fk_df_user_id` FOREIGN KEY (`user_id`) REFERENCES `df_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `df_user_groups`
--

LOCK TABLES `df_user_groups` WRITE;
/*!40000 ALTER TABLE `df_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `df_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `df_user_user_permissions`
--

DROP TABLE IF EXISTS `df_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `df_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`permission_id`),
  KEY `df_user_use_permission_id_4bb551c3d7f68043_fk_auth_permission_id` (`permission_id`),
  CONSTRAINT `df_user_use_permission_id_4bb551c3d7f68043_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `df_user_user_permissions_user_id_17effb35fc52f20f_fk_df_user_id` FOREIGN KEY (`user_id`) REFERENCES `df_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `df_user_user_permissions`
--

LOCK TABLES `df_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `df_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `df_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `djang_content_type_id_505cff59ce7fe631_fk_django_content_type_id` (`content_type_id`),
  KEY `django_admin_log_user_id_23c71dcdc1c8b69e_fk_df_user_id` (`user_id`),
  CONSTRAINT `djang_content_type_id_505cff59ce7fe631_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_23c71dcdc1c8b69e_fk_df_user_id` FOREIGN KEY (`user_id`) REFERENCES `df_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=80 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2019-09-29 07:45:10','1','猪牛羊肉',1,'[{\"added\": {}}]',8,1),(2,'2019-10-03 07:23:08','2','时令水果',1,'[{\"added\": {}}]',8,1),(3,'2019-10-03 07:24:58','2','时令水果',3,'',8,1),(4,'2019-10-03 07:29:25','3','时令水果',1,'[{\"added\": {}}]',8,1),(5,'2019-10-03 07:35:17','3','时令水果',3,'',8,1),(6,'2019-10-03 07:36:21','4','时令水果',1,'[{\"added\": {}}]',8,1),(7,'2019-10-03 07:37:02','4','时令水果',3,'',8,1),(8,'2019-10-03 07:37:55','5','时令水果',1,'[{\"added\": {}}]',8,1),(9,'2019-10-03 07:45:23','5','时令水果',3,'',8,1),(10,'2019-10-03 07:46:53','6','时令水果',1,'[{\"added\": {}}]',8,1),(11,'2019-10-03 07:47:05','1','猪牛羊肉',3,'',8,1),(12,'2019-10-03 07:47:35','7','猪牛羊肉',1,'[{\"added\": {}}]',8,1),(13,'2019-10-03 07:47:42','6','时令水果',3,'',8,1),(14,'2019-10-03 07:47:49','7','猪牛羊肉',3,'',8,1),(15,'2019-10-03 07:48:13','8','时令水果',1,'[{\"added\": {}}]',8,1),(16,'2019-10-03 07:48:29','9','时令水果',1,'[{\"added\": {}}]',8,1),(17,'2019-10-03 07:48:36','9','时令水果',3,'',8,1),(18,'2019-10-03 07:49:05','8','时令水果',3,'',8,1),(19,'2019-10-03 07:49:22','10','时令水果',1,'[{\"added\": {}}]',8,1),(20,'2019-10-03 07:49:32','10','时令水果',3,'',8,1),(21,'2019-10-03 07:49:52','11','时令水果',1,'[{\"added\": {}}]',8,1),(22,'2019-10-03 07:50:00','12','猪牛羊肉',1,'[{\"added\": {}}]',8,1),(23,'2019-10-03 11:53:30','11','时令水果',3,'',8,1),(24,'2019-10-03 11:53:42','13','时令水果',1,'[{\"added\": {}}]',8,1),(25,'2019-10-03 12:15:04','14','海鲜水产',1,'[{\"added\": {}}]',8,1),(26,'2019-11-03 10:31:00','1','Goods object',1,'[{\"added\": {}}]',10,1),(27,'2019-11-03 11:07:02','9','散装草莓',1,'[{\"added\": {}}]',9,1),(28,'2019-11-03 11:21:48','12','猪牛羊肉',3,'',8,1),(29,'2019-11-03 11:23:07','15','猪牛羊肉',1,'[{\"added\": {}}]',8,1),(30,'2019-11-03 11:24:30','16','禽类蛋品',1,'[{\"added\": {}}]',8,1),(31,'2019-11-03 11:35:02','17','新鲜蔬菜',1,'[{\"added\": {}}]',8,1),(32,'2019-11-03 11:39:41','18','速冻食品',1,'[{\"added\": {}}]',8,1),(33,'2019-11-03 11:51:53','18','速冻食品',3,'',8,1),(34,'2019-11-03 11:55:12','13','时令水果',3,'',8,1),(35,'2019-11-03 12:05:44','14','海鲜水产',3,'',8,1),(36,'2019-11-03 12:06:53','15','猪牛羊肉',3,'',8,1),(37,'2019-11-03 12:07:41','16','禽类蛋品',3,'',8,1),(38,'2019-11-03 12:09:02','17','新鲜蔬菜',3,'',8,1),(39,'2019-11-03 12:10:19','19','新鲜水果',1,'[{\"added\": {}}]',8,1),(40,'2019-11-03 12:22:37','20','海鲜水产',1,'[{\"added\": {}}]',8,1),(41,'2019-11-03 12:28:24','1','草莓',2,'[]',10,1),(42,'2019-11-03 12:28:28','1','草莓',2,'[]',10,1),(43,'2019-11-03 12:38:38','10','散装草莓',1,'[{\"added\": {}}]',9,1),(44,'2019-11-03 12:40:29','1','IndexTypeGoodsBanner object',1,'[{\"added\": {}}]',13,1),(45,'2019-11-03 12:41:34','1','IndexTypeGoodsBanner object',3,'',13,1),(46,'2019-11-03 12:41:57','10','草莓',2,'[{\"changed\": {\"fields\": [\"name\", \"image\"]}}]',9,1),(47,'2019-11-03 12:42:12','2','IndexTypeGoodsBanner object',1,'[{\"added\": {}}]',13,1),(48,'2019-11-03 12:49:50','10','草莓',2,'[{\"changed\": {\"fields\": [\"image\", \"stock\"]}}]',9,1),(49,'2019-11-03 14:30:43','21','猪牛羊肉',1,'[{\"added\": {}}]',8,1),(50,'2019-11-03 14:31:25','22','禽类蛋品',1,'[{\"added\": {}}]',8,1),(51,'2019-11-03 14:31:59','23','新鲜蔬菜',1,'[{\"added\": {}}]',8,1),(52,'2019-11-03 14:33:02','24','速冻食品',1,'[{\"added\": {}}]',8,1),(53,'2019-11-03 14:34:23','2','香蕉',1,'[{\"added\": {}}]',10,1),(54,'2019-11-03 14:35:21','11','大香蕉',1,'[{\"added\": {}}]',9,1),(55,'2019-11-03 14:35:47','3','大香蕉',1,'[{\"added\": {}}]',13,1),(56,'2019-11-03 14:37:13','1','IndexGoodsBanner object',1,'[{\"added\": {}}]',12,1),(57,'2019-11-03 14:44:20','3','贝壳',1,'[{\"added\": {}}]',10,1),(58,'2019-11-03 14:45:04','12','扇贝',1,'[{\"added\": {}}]',9,1),(59,'2019-11-03 14:45:38','4','扇贝',1,'[{\"added\": {}}]',13,1),(60,'2019-11-03 14:46:23','2','扇贝',1,'[{\"added\": {}}]',12,1),(61,'2019-11-03 14:51:39','1','IndexPromotionBanner object',1,'[{\"added\": {}}]',14,1),(62,'2019-11-03 14:51:58','2','IndexPromotionBanner object',1,'[{\"added\": {}}]',14,1),(63,'2019-11-04 03:23:28','4','海里的鱼',1,'[{\"added\": {}}]',10,1),(64,'2019-11-04 03:24:11','13','带鱼',1,'[{\"added\": {}}]',9,1),(65,'2019-11-04 03:25:29','3','带鱼',1,'[{\"added\": {}}]',12,1),(66,'2019-11-04 03:25:59','3','带鱼',3,'',12,1),(67,'2019-11-04 03:27:05','5','畜类的肉',1,'[{\"added\": {}}]',10,1),(68,'2019-11-04 03:30:13','14','猪肉',1,'[{\"added\": {}}]',9,1),(69,'2019-11-04 03:30:55','5','猪肉',1,'[{\"added\": {}}]',13,1),(70,'2019-11-04 03:32:37','4','猪肉',1,'[{\"added\": {}}]',12,1),(71,'2019-11-04 03:33:55','6','苹果',1,'[{\"added\": {}}]',10,1),(72,'2019-11-04 03:34:57','15','青苹果',1,'[{\"added\": {}}]',9,1),(73,'2019-11-04 03:35:11','6','青苹果',1,'[{\"added\": {}}]',13,1),(74,'2019-11-04 03:35:26','6','青苹果',2,'[{\"changed\": {\"fields\": [\"index\"]}}]',13,1),(75,'2019-11-04 03:35:30','3','大香蕉',2,'[]',13,1),(76,'2019-11-04 03:36:06','7','橘子',1,'[{\"added\": {}}]',10,1),(77,'2019-11-04 03:38:00','16','散装橘子',1,'[{\"added\": {}}]',9,1),(78,'2019-11-04 03:38:13','7','散装橘子',1,'[{\"added\": {}}]',13,1),(79,'2019-11-04 03:38:26','7','散装橘子',2,'[{\"changed\": {\"fields\": [\"index\"]}}]',13,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_8db24bb4d89a42c_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'contenttypes','contenttype'),(10,'goods','goods'),(11,'goods','goodsimage'),(9,'goods','goodssku'),(8,'goods','goodstype'),(12,'goods','indexgoodsbanner'),(14,'goods','indexpromotionbanner'),(13,'goods','indextypegoodsbanner'),(16,'order','ordergoods'),(15,'order','orderinfo'),(5,'sessions','session'),(7,'user','address'),(6,'user','user');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2019-09-24 15:39:43'),(2,'contenttypes','0002_remove_content_type_name','2019-09-24 15:39:43'),(3,'auth','0001_initial','2019-09-24 15:39:43'),(4,'auth','0002_alter_permission_name_max_length','2019-09-24 15:39:43'),(5,'auth','0003_alter_user_email_max_length','2019-09-24 15:39:43'),(6,'auth','0004_alter_user_username_opts','2019-09-24 15:39:43'),(7,'auth','0005_alter_user_last_login_null','2019-09-24 15:39:43'),(8,'auth','0006_require_contenttypes_0002','2019-09-24 15:39:43'),(9,'user','0001_initial','2019-09-24 15:39:43'),(10,'admin','0001_initial','2019-09-24 15:39:43'),(11,'goods','0001_initial','2019-09-24 15:39:44'),(12,'order','0001_initial','2019-09-24 15:39:44'),(13,'order','0002_auto_20171113_1813','2019-09-24 15:39:44'),(14,'sessions','0001_initial','2019-09-24 15:39:44'),(15,'admin','0002_logentry_remove_auto_add','2019-10-06 05:12:39'),(16,'auth','0007_alter_validators_add_error_messages','2019-10-06 05:12:39'),(17,'auth','0008_alter_user_username_max_length','2019-10-06 05:12:39'),(18,'goods','0002_auto_20191006_1311','2019-10-06 05:12:39'),(19,'order','0003_auto_20191006_1312','2019-10-06 05:12:39'),(20,'order','0004_auto_20191017_1819','2019-10-17 10:19:30');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_de54fa62` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('0ayzijmohfwvgxnsbhdougyv4v9jypnu','N2Q3NzRiNDI3YjBlMjZhYWQxMmZmNzRjY2JlYzAyZGFiNGQ0ZmMzYzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI3MjI2OGZjZWQzNjM2MzEwYTkyOTUzNzBmZDlhMjQ3OGM3NmY1M2RlIn0=','2019-10-10 09:34:09'),('45scm5b6nw4rvb5f9oavx6oilxpcrkhj','N2Q3NzRiNDI3YjBlMjZhYWQxMmZmNzRjY2JlYzAyZGFiNGQ0ZmMzYzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI3MjI2OGZjZWQzNjM2MzEwYTkyOTUzNzBmZDlhMjQ3OGM3NmY1M2RlIn0=','2019-10-10 09:37:11'),('5bk478okw5ut6sym5bobxlz4igw3chw8','N2Q3NzRiNDI3YjBlMjZhYWQxMmZmNzRjY2JlYzAyZGFiNGQ0ZmMzYzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI3MjI2OGZjZWQzNjM2MzEwYTkyOTUzNzBmZDlhMjQ3OGM3NmY1M2RlIn0=','2019-10-10 09:36:50'),('8sae15ouoefauembtad8jj3d1w6cpogy','N2Q3NzRiNDI3YjBlMjZhYWQxMmZmNzRjY2JlYzAyZGFiNGQ0ZmMzYzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI3MjI2OGZjZWQzNjM2MzEwYTkyOTUzNzBmZDlhMjQ3OGM3NmY1M2RlIn0=','2019-10-10 09:36:33'),('yp1d4whlpb94s0msvpxwt5t1r4ylh77j','N2Q3NzRiNDI3YjBlMjZhYWQxMmZmNzRjY2JlYzAyZGFiNGQ0ZmMzYzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI3MjI2OGZjZWQzNjM2MzEwYTkyOTUzNzBmZDlhMjQ3OGM3NmY1M2RlIn0=','2019-10-08 15:43:00');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-11-05 13:23:59
