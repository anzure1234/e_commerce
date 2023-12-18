-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: localhost    Database: hyt
-- ------------------------------------------------------
-- Server version	8.0.33

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Current Database: `hyt`
--

/*!40000 DROP DATABASE IF EXISTS `hyt`*/;

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `hyt` /*!40100 DEFAULT CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `hyt`;

--
-- Table structure for table `addresses`
--

DROP TABLE IF EXISTS `addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `addresses` (
  `id` int NOT NULL AUTO_INCREMENT,
  `customer_id` int DEFAULT NULL,
  `country_id` int DEFAULT NULL,
  `first_name` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `last_name` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `phone_number` varchar(15) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `address_line_1` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `address_line_2` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `city` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `state` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `postal_code` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `default_address` bit(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKn3sth7s3kur1rafwbbrqqnswt` (`country_id`),
  KEY `FKhrpf5e8dwasvdc5cticysrt2k` (`customer_id`),
  CONSTRAINT `FKhrpf5e8dwasvdc5cticysrt2k` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`),
  CONSTRAINT `FKn3sth7s3kur1rafwbbrqqnswt` FOREIGN KEY (`country_id`) REFERENCES `countries` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `addresses`
--

LOCK TABLES `addresses` WRITE;
/*!40000 ALTER TABLE `addresses` DISABLE KEYS */;
INSERT INTO `addresses` VALUES (9,17,1,'rtt','qưtqt','09897647845','12412','3245','3245','Bà Rịa – Vũng Tàu','5572727',_binary ''),(10,20,9,'Nguyen','Test','0874115112','123','okg','test','Amnat Charoen','87787',_binary '\0'),(11,24,1,'sad','ád','052555555','12412','3245','65','TP Hồ Chí Minh','5572727',_binary '');
/*!40000 ALTER TABLE `addresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `backup`
--

DROP TABLE IF EXISTS `backup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `backup` (
  `id` int NOT NULL AUTO_INCREMENT,
  `count_download` int DEFAULT NULL,
  `path_file` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `time_create` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `backup`
--

LOCK TABLES `backup` WRITE;
/*!40000 ALTER TABLE `backup` DISABLE KEYS */;
INSERT INTO `backup` VALUES (1,1,'backup_data/backup_18-04-2023_08-29-07.sql','2023-04-18 08:29:07.910000'),(2,0,'backup_data/backup_18-04-2023_09-50-38.sql','2023-04-18 09:50:39.389000'),(3,1,'backup_data/backup_25-04-2023_22-20-00.sql','2023-04-25 22:20:00.264000'),(4,1,'backup_data/backup_25-04-2023_23-19-00.sql','2023-04-25 23:19:00.225000'),(5,0,'backup_data/backup_02-06-2023_13-35-33.sql','2023-06-02 13:35:34.066000'),(6,0,'backup_data/backup_02-06-2023_13-35-34.sql','2023-06-02 13:35:34.341000'),(7,0,'backup_data/backup_02-06-2023_13-35-34.sql','2023-06-02 13:35:34.535000'),(8,0,'backup_data/backup_02-06-2023_13-35-34.sql','2023-06-02 13:35:34.716000'),(9,0,'backup_data/backup_02-06-2023_13-35-34.sql','2023-06-02 13:35:34.896000'),(10,0,'backup_data/backup_02-06-2023_13-35-34.sql','2023-06-02 13:35:35.085000'),(11,0,'backup_data/backup_02-06-2023_13-35-35.sql','2023-06-02 13:35:35.299000'),(12,0,'backup_data/backup_02-06-2023_13-35-35.sql','2023-06-02 13:35:35.492000'),(13,0,'backup_data/backup_02-06-2023_13-35-35.sql','2023-06-02 13:35:35.671000'),(14,0,'backup_data/backup_14-06-2023_19-15-15.sql','2023-06-14 19:15:18.153000'),(15,0,'backup_data/backup_14-06-2023_19-23-54.sql','2023-06-14 19:23:55.308000'),(16,1,'backup_data/backup_17-06-2023_22-53-44.sql','2023-06-17 22:53:45.091000'),(17,2,'backup_data/backup_19-06-2023_20-55-58.sql','2023-06-19 20:55:59.084000');
/*!40000 ALTER TABLE `backup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `board`
--

DROP TABLE IF EXISTS `board`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `board` (
  `id` int NOT NULL AUTO_INCREMENT,
  `board_cate` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `board_no` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `created_time` datetime(6) DEFAULT NULL,
  `enabled` bit(1) NOT NULL,
  `end_date` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `full_description` blob,
  `kind_content` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `main_image` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `start_date` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `title` varchar(1024) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `updated_time` datetime(6) DEFAULT NULL,
  `work_user` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `number_views` decimal(19,2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `board`
--

LOCK TABLES `board` WRITE;
/*!40000 ALTER TABLE `board` DISABLE KEYS */;
/*!40000 ALTER TABLE `board` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `brands`
--

DROP TABLE IF EXISTS `brands`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `brands` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `logo` varchar(128) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_oce3937d2f4mpfqrycbr0l93m` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `brands`
--

LOCK TABLES `brands` WRITE;
/*!40000 ALTER TABLE `brands` DISABLE KEYS */;
INSERT INTO `brands` VALUES (2,'DELL','dell-png-logo-3741.png'),(4,'ASUS','logiasus1.png'),(6,'Acer','logoacer1.jpg'),(7,'Xiaomi','xiaomi1.png'),(8,'EVGA','logoevga1.jpg'),(9,'Galax','logogalax2.png'),(10,'MSI','MSI.png'),(13,'Apple','AppleLogo.png'),(14,'Gigabyte','logogigabyte.png'),(15,'Logitech','logologetich.png'),(16,'Các linh kiện hỗ trợ','camera.jpg'),(17,'Intel','logointel.png');
/*!40000 ALTER TABLE `brands` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `brands_categories`
--

DROP TABLE IF EXISTS `brands_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `brands_categories` (
  `brand_id` int NOT NULL,
  `category_id` int NOT NULL,
  PRIMARY KEY (`brand_id`,`category_id`),
  KEY `FK6x68tjj3eay19skqlhn7ls6ai` (`category_id`),
  CONSTRAINT `FK58ksmicdguvu4d7b6yglgqvxo` FOREIGN KEY (`brand_id`) REFERENCES `brands` (`id`),
  CONSTRAINT `FK6x68tjj3eay19skqlhn7ls6ai` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `brands_categories`
--

LOCK TABLES `brands_categories` WRITE;
/*!40000 ALTER TABLE `brands_categories` DISABLE KEYS */;
INSERT INTO `brands_categories` VALUES (7,1),(13,1),(2,2),(4,2),(6,2),(10,2),(13,2),(14,2),(13,4),(16,4),(7,5),(16,7),(13,8),(14,9),(16,10),(14,11),(4,27),(8,27),(9,27),(10,27),(14,27),(17,27),(4,28),(17,29),(4,35),(7,36),(10,36),(15,36),(7,39),(9,40),(16,41),(16,42),(14,48),(10,49),(9,50),(10,51),(14,52),(4,53),(4,54),(14,58),(4,59),(10,60),(4,61),(10,62),(14,63),(10,64),(4,65),(14,66),(4,67),(10,68),(14,69),(16,70),(16,71),(16,72),(4,73),(10,74),(14,75),(4,76),(10,77),(14,78),(10,79),(4,80),(14,81),(10,82),(4,83),(14,84),(2,85),(10,85),(2,86),(4,86),(2,87),(2,88),(14,88),(9,89),(9,90),(9,91),(9,92),(9,93),(8,94),(8,95),(8,96),(8,97),(8,98),(8,100),(8,101),(4,102),(10,103),(14,104),(2,105),(6,105),(2,106),(13,106),(7,107),(15,108),(15,109),(15,110),(15,111),(15,112),(13,113);
/*!40000 ALTER TABLE `brands_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cart_items`
--

DROP TABLE IF EXISTS `cart_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cart_items` (
  `id` int NOT NULL AUTO_INCREMENT,
  `customer_id` int DEFAULT NULL,
  `product_id` int DEFAULT NULL,
  `quantity` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKdagcsk6v6x4n1kxw3rkp57921` (`customer_id`),
  KEY `FK1re40cjegsfvw58xrkdp6bac6` (`product_id`),
  CONSTRAINT `FK1re40cjegsfvw58xrkdp6bac6` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  CONSTRAINT `FKdagcsk6v6x4n1kxw3rkp57921` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart_items`
--

LOCK TABLES `cart_items` WRITE;
/*!40000 ALTER TABLE `cart_items` DISABLE KEYS */;
INSERT INTO `cart_items` VALUES (42,15,41,1),(49,17,41,1),(50,17,53,1),(51,17,32,1),(53,17,52,1),(54,17,40,2),(61,24,35,1);
/*!40000 ALTER TABLE `cart_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `id` int NOT NULL AUTO_INCREMENT,
  `alias` varchar(128) NOT NULL,
  `enabled` bit(1) NOT NULL,
  `image` varchar(128) NOT NULL,
  `name` varchar(128) NOT NULL,
  `parent_id` int DEFAULT NULL,
  `all_parent_ids` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_jx1ptm0r46dop8v0o7nmgfbeq` (`alias`),
  UNIQUE KEY `UK_t8o6pivur7nn124jehx7cygw5` (`name`),
  KEY `FKsaok720gsu4u2wrgbk10b5n8d` (`parent_id`),
  CONSTRAINT `FKsaok720gsu4u2wrgbk10b5n8d` FOREIGN KEY (`parent_id`) REFERENCES `categories` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=117 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'Điện thoại',_binary '','phone1.png','Điện thoại',NULL,NULL),(2,'laptop',_binary '','laptop-icon-5.png','Laptop',NULL,NULL),(3,'samsung',_binary '','samsung-logo-png-1286.png','Samsung',1,'-1-'),(4,'pc',_binary '','maytinh.png','PC bộ ',NULL,NULL),(5,'xiaomi',_binary '','xiaomi.png','Xiaomi',1,'-1-'),(6,'123456',_binary '','dell.png','123456',6,'-6-'),(7,'thiết bị chuyển đổi',_binary '','thietbichuyendoi.png','Thiết bị chuyển đổi',11,'-11-'),(8,'iphone',_binary '','png-apple-logo-9711.png','Iphone',1,'-1-'),(9,'Balo',_binary '','balo.png','Balo',11,'-11-'),(10,'Camera',_binary '','camera.png','Camera',NULL,NULL),(11,'phụ kiện',_binary '','phukien.png','Phụ kiện',NULL,NULL),(27,'Linh kiện vi tính',_binary '','cat_b4005c2d3f956dbc5610478b056c8e3e.png','Linh kiện vi tính',NULL,NULL),(28,'Main',_binary '','main.png','Main',27,'-27-'),(29,'cpu',_binary '','cpu.png','CPU',27,'-27-'),(30,'Ram',_binary '','ram.png','Ram',27,'-27-'),(31,'vga',_binary '','Vga.png','Vga',27,'-27-'),(32,'vỏ case',_binary '','vocase.png','Vỏ case',27,'-27-'),(33,'tản nhiệt cpu',_binary '','tannhiet.png','Tản nhiệt cpu',27,'-27-'),(34,'PSU',_binary '','psu.png','Nguồn máy tính',27,'-27-'),(35,'màn hình',_binary '','manhinh.png','Màn hình',NULL,NULL),(36,'gear',_binary '','gear.jpg','Phím, chuột, tai nghe',NULL,NULL),(37,'phím',_binary '','banphim.png','Bàn phím',36,'-36-'),(38,'mouse',_binary '','mouse.png','Chuột vi tính',36,'-36-'),(39,'tai nghe',_binary '','headphone.png','Tai nghe',36,'-36-'),(40,'ghế',_binary '','ghengoi.png','Ghế gaming',NULL,NULL),(41,'Hub',_binary '','hub.png','Bộ chia',11,'-11-'),(42,'modem',_binary '','modem.png','Thiết bị mạng',NULL,NULL),(43,'loa',_binary '','loa.png','Thiết bị âm thanh',NULL,NULL),(44,'loa có dây',_binary '','loa.png','Loa có dây',43,'-43-'),(45,'loa bluetooth',_binary '','loablutooth.png','Loa Bluetooth',43,'-43-'),(46,'chuột có dây',_binary '','mouse.png','Chuột có dây',38,'-36-38-'),(47,'Chuột bluetooth',_binary '','chuotbluetooth.png','Chuột không dây',38,'-36-38-'),(48,'main giga',_binary '','main.png','Main giga',28,'-27-28-'),(49,'Main msi',_binary '','main.png','Main Msi',28,'-27-28-'),(50,'main galax',_binary '','main.png','Main Galax',28,'-27-28-'),(51,'nguồn msi',_binary '','psu.png','Nguồn MSI',34,'-27-34-'),(52,'nguồn giga',_binary '','psu.png','Nguồn Gigabyte',34,'-27-34-'),(53,'nguồn asus',_binary '','psu.png','Nguồn Asus',34,'-27-34-'),(54,'main asus',_binary '','main.png','Main Asus',28,'-27-28-'),(55,'ram corsair',_binary '','ram.png','RAM Corsair',30,'-27-30-'),(56,'RAM G.Skill',_binary '','ram.png','RAM G.Skill',30,'-27-30-'),(57,'RAM Kingston',_binary '','ram.png','RAM Kingston',30,'-27-30-'),(58,'Tản aio gigabyte',_binary '','tannhiet.png','Tản AIO Gigabyte',33,'-27-33-'),(59,'tản aio asus',_binary '','tannhiet.png','Tản AIO Asus',33,'-27-33-'),(60,'tản aio msi',_binary '','tannhiet.png','Tản AIO MSI',33,'-27-33-'),(61,'vga asus',_binary '','Vga.png','VGA Asus',31,'-27-31-'),(62,'vga msi',_binary '','Vga.png','Vga MSI',31,'-27-31-'),(63,'vga gigabyte',_binary '','Vga.png','Vga Gigabyte',31,'-27-31-'),(64,'vỏ case msi',_binary '','vocase.png','Vỏ case MSI',32,'-27-32-'),(65,'vỏ case asus',_binary '','vocase.png','Vỏ case Asus',32,'-27-32-'),(66,'vỏ case gigabyte',_binary '','vocase.png','Vỏ case Gigabyte',32,'-27-32-'),(67,'màn hình asus',_binary '','manhinh.png','Màn hình Asus',35,'-35-'),(68,'màn hình msi',_binary '','manhinh.png','Màn hình MSI',35,'-35-'),(69,'màn hình gigabyte',_binary '','manhinh.png','Màn hình Gigabyte',35,'-35-'),(70,'pc gaming',_binary '','maytinh.png','PC Gaming',4,'-4-'),(71,'pc đồ họa',_binary '','maytinh.png','PC đồ họa',4,'-4-'),(72,'pc Văn Phòng',_binary '','maytinh.png','PC Văn Phòng',4,'-4-'),(73,'chuột asus',_binary '','mouse.png','Chuột Asus ',46,'-36-38-46-'),(74,'chuột msi',_binary '','mouse.png','Chuột MSI',46,'-36-38-46-'),(75,'chuột gigabyte',_binary '','mouse.png','Chuột Gigabyte',46,'-36-38-46-'),(76,'chuột asus bluetooth',_binary '','chuotbluetooth.png','Chuột Asus bluetooth',47,'-36-38-47-'),(77,'chuột msi bluetooth',_binary '','chuotbluetooth.png','Chuột MSI bluetooth',47,'-36-38-47-'),(78,'chuột gigabyte bluetooth',_binary '','chuotbluetooth.png','Chuột Gigabyte bluetooth',47,'-36-38-47-'),(79,'tai nghe msi',_binary '','tainghe.png','Tai nghe MSI',39,'-36-39-'),(80,'tai nghe asus',_binary '','tainghe.png','Tai nghe Asus',39,'-36-39-'),(81,'tai nghe gigabyte',_binary '','tainghe.png','Tai nghe Gigabyte',39,'-36-39-'),(82,'Balo MSI',_binary '','balo.png','Balo MSI',9,'-11-9-'),(83,'Balo asus',_binary '','balo.png','Balo Asus',9,'-11-9-'),(84,'balo gigabyte',_binary '','balo.png','Balo Gigabyte',9,'-11-9-'),(85,'laptop msi',_binary '','iconlaptop.png','Laptop MSI',2,'-2-'),(86,'laptop asus',_binary '','iconlaptop.png','Laptop Asus',2,'-2-'),(87,'laptop dell',_binary '','iconlaptop.png','Laptop Dell',2,'-2-'),(88,'laptop giga',_binary '','iconlaptop.png','Laptop Gigabyte',2,'-2-'),(89,'ghế galax',_binary '','ghegalax.png','Ghế Galax',40,'-40-'),(90,'ram galax',_binary '','ram.png','Ram Galax',30,'-27-30-'),(91,'vga galax',_binary '','Vga.png','Vga Galax',31,'-27-31-'),(92,'vỏ case galax',_binary '','vocase.png','Vỏ case Galax',32,'-27-32-'),(93,'tai nghe galax',_binary '','tainghe.png','Tai nghe Galax',39,'-36-39-'),(94,'main evga',_binary '','main.png','Main EVGA',28,'-27-28-'),(95,'Tản aio evga',_binary '','tannhiet.png','Tản AIO EVGA',33,'-27-33-'),(96,'vga evga',_binary '','Vga.png','VGA EVGA',31,'-27-31-'),(97,'vỏ case evga',_binary '','vocase.png','Vỏ case EVGA',32,'-27-32-'),(98,'nguồn evga',_binary '','psu.png','Nguồn EVGA',34,'-27-34-'),(99,'màn hình galax',_binary '','manhinh.png','Màn hình GALAX',35,'-35-'),(100,'chuột evga',_binary '','mouse.png','Chuột EVGA',46,'-36-38-46-'),(101,'bàn phím evga',_binary '','banphimicon.png','Bàn phím EVGA',37,'-36-37-'),(102,'bàn phím asus',_binary '','banphimicon.png','Bàn phím Asus',37,'-36-37-'),(103,'bàn phím msi',_binary '','banphimicon.png','Bàn phím MSI',37,'-36-37-'),(104,'bàn phím gigabyte',_binary '','banphimicon.png','Bàn phím Gigabyte',37,'-36-37-'),(105,'laptop acer',_binary '','iconlaptop.png','Laptop Acer',2,'-2-'),(106,'macbook',_binary '','iconlaptop.png','Macbook',2,'-2-'),(107,'tai nghe xiaomi',_binary '','tainghe.png','Tai nghe xiaomi',39,'-36-39-'),(108,'tai nghe logitech',_binary '','tainghe.png','Tai nghe logitech',39,'-36-39-'),(109,'chuột logitech',_binary '','mouse.png','Chuột logitech',46,'-36-38-46-'),(110,'chuột logitech bluetooth',_binary '','chuotbluetooth.png','Chuột logitech bluetooth',47,'-36-38-47-'),(111,'loa logitech',_binary '','loa.png','Loa logitech',44,'-43-44-'),(112,'loa logitech bluetooth',_binary '','loablutooth.jpg','Loa logitech Bluetooth',45,'-43-45-'),(113,'mac',_binary '','maytinh.png','mac',4,'-4-');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `client_info`
--

DROP TABLE IF EXISTS `client_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `client_info` (
  `id` int NOT NULL AUTO_INCREMENT,
  `browser_name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `browser_version` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `device_infor` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `ip_address` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `mac_address` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `client_info`
--

LOCK TABLES `client_info` WRITE;
/*!40000 ALTER TABLE `client_info` DISABLE KEYS */;
INSERT INTO `client_info` VALUES (2,'Chrome','114.0.0.0','Unknown','0:0:0:0:0:0:0:1','30-24-32-A7-BB-A6'),(3,'Chrome','114.0.0.0','Unknown','0:0:0:0:0:0:0:1','5C-92-5E-81-02-F7');
/*!40000 ALTER TABLE `client_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comment_replies`
--

DROP TABLE IF EXISTS `comment_replies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comment_replies` (
  `id` int NOT NULL AUTO_INCREMENT,
  `created_time` datetime(6) DEFAULT NULL,
  `updated_time` datetime(6) DEFAULT NULL,
  `work_user` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `content` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `comment_id` int DEFAULT NULL,
  `customer_id` int DEFAULT NULL,
  `product_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKrrv53wwt4b7plhna65ixeiiio` (`comment_id`),
  KEY `FKlkq2iw5fqt8gx5ubf645m6d8p` (`customer_id`),
  KEY `FK3me1ei56u3kwl3v43mfn815wb` (`product_id`),
  CONSTRAINT `FK3me1ei56u3kwl3v43mfn815wb` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  CONSTRAINT `FKlkq2iw5fqt8gx5ubf645m6d8p` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`),
  CONSTRAINT `FKrrv53wwt4b7plhna65ixeiiio` FOREIGN KEY (`comment_id`) REFERENCES `comments` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comment_replies`
--

LOCK TABLES `comment_replies` WRITE;
/*!40000 ALTER TABLE `comment_replies` DISABLE KEYS */;
INSERT INTO `comment_replies` VALUES (1,'2023-04-26 19:35:49.885000',NULL,NULL,'sử dụng rất tốt',3,21,36),(2,'2023-04-26 19:36:41.847000',NULL,NULL,'tôi đã mua và sử dụng rất tốt',3,22,36),(3,'2023-04-26 19:38:36.165000',NULL,NULL,'cảm ơn bạn',4,22,36);
/*!40000 ALTER TABLE `comment_replies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comments` (
  `id` int NOT NULL AUTO_INCREMENT,
  `created_time` datetime(6) DEFAULT NULL,
  `updated_time` datetime(6) DEFAULT NULL,
  `work_user` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `content` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `customer_id` int DEFAULT NULL,
  `product_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKev1bd87g1c51ujncao608e6qa` (`customer_id`),
  KEY `FK6uv0qku8gsu6x1r2jkrtqwjtn` (`product_id`),
  CONSTRAINT `FK6uv0qku8gsu6x1r2jkrtqwjtn` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  CONSTRAINT `FKev1bd87g1c51ujncao608e6qa` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comments`
--

LOCK TABLES `comments` WRITE;
/*!40000 ALTER TABLE `comments` DISABLE KEYS */;
INSERT INTO `comments` VALUES (1,'2023-04-25 23:20:40.236000',NULL,NULL,'sản phẩm này sử dụng tốt không?',21,48),(2,'2023-04-25 23:38:35.920000',NULL,NULL,'mua sản phẩm này?',22,42),(3,'2023-04-26 19:34:42.333000',NULL,NULL,'sản phẩm sử dụng tốt không?',17,36),(4,'2023-04-26 19:37:43.525000',NULL,NULL,'tôi rất thích sản phẩm này',22,36),(5,'2023-06-14 19:24:43.603000',NULL,NULL,'jhjgjh',17,53);
/*!40000 ALTER TABLE `comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `countries`
--

DROP TABLE IF EXISTS `countries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `countries` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `code` varchar(5) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `countries`
--

LOCK TABLES `countries` WRITE;
/*!40000 ALTER TABLE `countries` DISABLE KEYS */;
INSERT INTO `countries` VALUES (1,'Việt Nam','VN'),(8,'Hàn Quốc','KR'),(9,'Thái Lan','THAI'),(10,'Trung Quốc','CN');
/*!40000 ALTER TABLE `countries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `currencies`
--

DROP TABLE IF EXISTS `currencies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `currencies` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(64) DEFAULT NULL,
  `symbol` varchar(3) NOT NULL,
  `code` varchar(4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `currencies`
--

LOCK TABLES `currencies` WRITE;
/*!40000 ALTER TABLE `currencies` DISABLE KEYS */;
INSERT INTO `currencies` VALUES (1,'United States Dollar','$','USD'),(2,'British Pound','£','GPB'),(3,'Japanese Yen','¥','JPY'),(4,'Euro','€','EUR'),(5,'Russian Ruble','₽','RUB'),(6,'South Korean Won','₩','KRW'),(7,'Chinese Yuan','¥','CNY'),(8,'Brazilian Real','R$','BRL'),(9,'Australian Dollar','$','AUD'),(10,'Canadian Dollar','$','CAD'),(11,'Việt Nam đồng','đ','VND'),(12,'Indian Rupee','₹','INR');
/*!40000 ALTER TABLE `currencies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer_activity`
--

DROP TABLE IF EXISTS `customer_activity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer_activity` (
  `id` int NOT NULL AUTO_INCREMENT,
  `ativity` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `log_in` datetime(6) DEFAULT NULL,
  `log_out` datetime(6) DEFAULT NULL,
  `time_ativity` datetime(6) DEFAULT NULL,
  `customer_id` int DEFAULT NULL,
  `url_log` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKdyksoexu86euux7t1cy57wrs` (`customer_id`),
  CONSTRAINT `FKdyksoexu86euux7t1cy57wrs` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=86 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer_activity`
--

LOCK TABLES `customer_activity` WRITE;
/*!40000 ALTER TABLE `customer_activity` DISABLE KEYS */;
INSERT INTO `customer_activity` VALUES (50,'Thay đổi địa chỉ nhận hàng',NULL,NULL,'2023-06-14 19:14:07.170000',17,'address_book/edit/0'),(51,'Thay đổi địa chỉ nhận hàng',NULL,NULL,'2023-06-14 19:22:36.252000',17,'address_book/edit/9'),(65,'Đã cập thay đổi mật khẩu',NULL,NULL,'2023-06-19 21:58:24.717000',33,'account_details'),(66,'Thêm sản phẩm vào giỏ',NULL,NULL,'2023-06-19 22:00:32.577000',33,'p/Dell-Vostro-3510-i5'),(67,'Đã thêm địa chỉ nhận hàng',NULL,NULL,'2023-06-19 22:01:43.292000',33,'address_book/edit/12'),(68,'Thay đổi địa chỉ nhận hàng',NULL,NULL,'2023-06-19 22:02:27.232000',33,'address_book/edit/12'),(69,'Đã xóa địa chỉ nhận hàng',NULL,NULL,'2023-06-19 22:02:58.321000',33,'address_book'),(70,'Đã cập nhật thông tin tài khoản',NULL,NULL,'2023-06-19 22:04:09.705000',33,'account_details'),(71,'Thêm sản phẩm vào giỏ',NULL,NULL,'2023-06-19 22:08:28.653000',33,'p/Laptop-Gaming-MSI-Alpha-17-B5EEK-031VN-Radeon-RX6600M-8GB-Ryzen-7-5800H'),(72,'Thay đổi số lượng sản phẩm trong giỏ',NULL,NULL,'2023-06-19 22:08:38.623000',33,'p/Laptop-Gaming-MSI-Alpha-17-B5EEK-031VN-Radeon-RX6600M-8GB-Ryzen-7-5800H'),(73,'Thay đổi số lượng sản phẩm trong giỏ',NULL,NULL,'2023-06-19 22:08:41.583000',33,'p/Laptop-Gaming-MSI-Alpha-17-B5EEK-031VN-Radeon-RX6600M-8GB-Ryzen-7-5800H'),(74,'Thay đổi số lượng sản phẩm trong giỏ',NULL,NULL,'2023-06-19 22:08:43.456000',33,'p/Laptop-Gaming-MSI-Alpha-17-B5EEK-031VN-Radeon-RX6600M-8GB-Ryzen-7-5800H'),(75,'Đã xóa sản phẩm trong giỏ',NULL,NULL,'2023-06-19 22:09:00.544000',33,'p/Laptop-Gaming-MSI-Alpha-17-B5EEK-031VN-Radeon-RX6600M-8GB-Ryzen-7-5800H'),(76,'Thay đổi số lượng sản phẩm trong giỏ',NULL,NULL,'2023-06-19 22:09:17.867000',33,'p/Dell-Vostro-3510-i5'),(77,'Thay đổi số lượng sản phẩm trong giỏ',NULL,NULL,'2023-06-19 22:09:18.268000',33,'p/Dell-Vostro-3510-i5'),(78,'Thay đổi số lượng sản phẩm trong giỏ',NULL,NULL,'2023-06-19 22:09:19.438000',33,'p/Dell-Vostro-3510-i5'),(79,'Thay đổi số lượng sản phẩm trong giỏ',NULL,NULL,'2023-06-19 22:09:20.455000',33,'p/Dell-Vostro-3510-i5'),(80,'Thay đổi số lượng sản phẩm trong giỏ',NULL,NULL,'2023-06-19 22:09:49.049000',33,'p/Dell-Vostro-3510-i5'),(81,'Thay đổi số lượng sản phẩm trong giỏ',NULL,NULL,'2023-06-19 22:09:49.514000',33,'p/Dell-Vostro-3510-i5'),(82,'Thay đổi số lượng sản phẩm trong giỏ',NULL,NULL,'2023-06-19 22:09:49.939000',33,'p/Dell-Vostro-3510-i5'),(83,'Thay đổi số lượng sản phẩm trong giỏ',NULL,NULL,'2023-06-19 22:09:51.200000',33,'p/Dell-Vostro-3510-i5'),(84,'Đã xóa sản phẩm trong giỏ',NULL,NULL,'2023-06-19 22:10:49.031000',33,''),(85,'Đã đặt hàng',NULL,NULL,'2023-06-19 22:10:52.223000',33,'order/detail/46');
/*!40000 ALTER TABLE `customer_activity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customers` (
  `id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(45) NOT NULL,
  `password` varchar(64) NOT NULL,
  `first_name` varchar(45) NOT NULL,
  `last_name` varchar(45) NOT NULL,
  `phone_number` varchar(15) NOT NULL,
  `address_line_1` varchar(64) NOT NULL,
  `address_line_2` varchar(64) DEFAULT NULL,
  `city` varchar(45) NOT NULL,
  `state` varchar(45) NOT NULL,
  `country_id` int DEFAULT NULL,
  `postal_code` varchar(10) NOT NULL,
  `created_time` datetime(6) DEFAULT NULL,
  `updated_time` datetime(6) DEFAULT NULL,
  `enabled` bit(1) NOT NULL,
  `verification_code` varchar(64) DEFAULT NULL,
  `authentication_type` varchar(10) DEFAULT NULL,
  `reset_password_token` varchar(30) DEFAULT NULL,
  `work_user` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_rfbvkrffamfql7cjmen8v976v` (`email`),
  KEY `FK7b7p2myt0y31l4nyj1p7sk0b1` (`country_id`),
  CONSTRAINT `FK7b7p2myt0y31l4nyj1p7sk0b1` FOREIGN KEY (`country_id`) REFERENCES `countries` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` VALUES (15,'rinokumura615@yahoo.com','','Lê','Huỳnh Ý','098752145415','12','test','Test','Bình Dương',1,'12515','2023-03-26 15:43:53.805000',NULL,_binary '',NULL,'FACEBOOK',NULL,NULL),(17,'lehuyny2110@gmail.com','','Y','Le','098745612','12412','3245','3245','Bình Dương',1,'5572727','2023-03-27 13:01:11.426000',NULL,_binary '',NULL,'GOOGLE',NULL,NULL),(20,'lehuynhy2106@gmail.com','','1247_Lê','Huỳnh Ý','0985411111','158','lê hồng phong','dĩ an','Bình Dương',1,'7500000','2023-04-11 21:37:37.086000',NULL,_binary '',NULL,'GOOGLE',NULL,NULL),(21,'lehuynhy2107@gmail.com','','ede','efde','65124513','2345','3245','65','Bình Dương',1,'123','2023-04-25 23:20:07.235000',NULL,_binary '',NULL,'GOOGLE',NULL,NULL),(22,'lehuynhy2108@gmail.com','','asdasad','sdasd','544531','12412','12412','65','Bình Dương',1,'5572727','2023-04-25 23:31:49.489000',NULL,_binary '',NULL,'GOOGLE',NULL,NULL),(23,'lehuynhy2109@gmail.com','$2a$10$.8HTiLzZ4Fy89xFv1r67IuyTKDRLJGQzZWn0VILSjtZndl0C4mtOq','rtt','qưtqt','6564566','12412',NULL,'65','Bà Rịa – Vũng Tàu',1,'235','2023-06-01 22:46:51.242000',NULL,_binary '','uL25XgLc4KTsreavFktmkO1qiUVg8PQHuRvgeewZV0iNeflgAU7HEeqNtafO9Hxx','DATABASE',NULL,NULL),(24,'phucthinhpham2302@gmail.com','','Kan','Phạm','','',NULL,'','',1,'','2023-06-03 08:17:37.605000',NULL,_binary '',NULL,'GOOGLE',NULL,NULL),(28,'phucthinhpham1901@gmail.com','$2a$10$HmaMB2kRjcmvIfVXTZzTsO1uiCF/gQNKnFCxfsuAnKVOXOZmun3V.','asdasad','sdasd','0123456','12412',NULL,'65','TP Hồ Chí Minh',1,'5572727','2023-06-03 08:47:39.462000',NULL,_binary '\0','D6qkI1U6QSvodZjlBG3x9ZK29WAecK1lWzWKmWPwhvfxhCX68hTO45HFhufRy1wt','DATABASE',NULL,NULL),(33,'vannguyen003st@gmail.com','$2a$10$BGgz8KzsgWjy9ua8IidNZOFc/sdHIDyNs0k4ZL94BmUU6guUcGySG','Lê','Văn A','0368023380','109','đường D1','Dĩ An','Bình Dương',1,'64434','2023-06-19 21:56:13.329000',NULL,_binary '',NULL,'DATABASE',NULL,NULL),(34,'vannguyen002st@gmail.com','','van','nguyen','','',NULL,'','',NULL,'','2023-06-19 21:59:35.632000',NULL,_binary '',NULL,'GOOGLE',NULL,NULL);
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notice`
--

DROP TABLE IF EXISTS `notice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notice` (
  `id` int NOT NULL AUTO_INCREMENT,
  `created_time` datetime(6) DEFAULT NULL,
  `enabled` bit(1) NOT NULL,
  `end_date` date DEFAULT NULL,
  `full_description` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin,
  `number_views` decimal(19,2) DEFAULT NULL,
  `short_description` varchar(512) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `start_date` date DEFAULT NULL,
  `updated_time` datetime(6) DEFAULT NULL,
  `work_user` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `poppup` bit(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notice`
--

LOCK TABLES `notice` WRITE;
/*!40000 ALTER TABLE `notice` DISABLE KEYS */;
INSERT INTO `notice` VALUES (9,'2023-03-27 13:10:44.399000',_binary '','2023-06-16','<p>xin nghỉ v&agrave;i ng&agrave;y</p>',NULL,'nghỉ khỏe','2023-03-26','2023-06-14 19:08:27.693000','HUYNH Y',_binary '\0');
/*!40000 ALTER TABLE `notice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_details`
--

DROP TABLE IF EXISTS `order_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_details` (
  `id` int NOT NULL AUTO_INCREMENT,
  `product_cost` float NOT NULL,
  `quantity` int NOT NULL,
  `shipping_cost` float NOT NULL,
  `subtotal` float NOT NULL,
  `unit_price` float NOT NULL,
  `order_id` int DEFAULT NULL,
  `product_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKjyu2qbqt8gnvno9oe9j2s2ldk` (`order_id`),
  KEY `FK4q98utpd73imf4yhttm3w0eax` (`product_id`),
  CONSTRAINT `FK4q98utpd73imf4yhttm3w0eax` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  CONSTRAINT `FKjyu2qbqt8gnvno9oe9j2s2ldk` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_details`
--

LOCK TABLES `order_details` WRITE;
/*!40000 ALTER TABLE `order_details` DISABLE KEYS */;
INSERT INTO `order_details` VALUES (23,30000,2,0,80000,40000,27,32),(24,50,1,0,100000,100000,28,53),(25,1200,1,1000,100000,100000,29,41),(28,150,3,0,480000,160000,36,53),(29,16000000,2,0,18800000,9400000,38,46),(30,2500000,1,3597120,3500000,3500000,39,48),(31,50000,1,0,6000000,6000000,40,42),(32,50000,1,0,6000000,6000000,42,42),(33,50000,1,0,6000000,6000000,43,42),(36,3000,1,0,50000,50000,46,52);
/*!40000 ALTER TABLE `order_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_track`
--

DROP TABLE IF EXISTS `order_track`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_track` (
  `id` int NOT NULL AUTO_INCREMENT,
  `notes` varchar(256) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `status` varchar(256) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `updated_time` datetime(6) DEFAULT NULL,
  `work_user` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `order_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK31jv1s212kajfn3kk1ksmnyfl` (`order_id`),
  CONSTRAINT `FK31jv1s212kajfn3kk1ksmnyfl` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_track`
--

LOCK TABLES `order_track` WRITE;
/*!40000 ALTER TABLE `order_track` DISABLE KEYS */;
INSERT INTO `order_track` VALUES (4,'Đặt hàng bởi khách hàng','NEW','2023-04-04 11:40:23.000000',NULL,27),(5,'Đơn hàng đang được xử lý','PROCESSING','2023-05-05 11:42:27.000000',NULL,27),(6,'Đặt hàng bởi khách hàng','NEW','2023-04-11 09:40:46.000000',NULL,28),(7,'Đơn hàng đang được xử lý','NEW','2023-06-02 03:23:02.000000',NULL,28),(8,'Đặt hàng bởi khách hàng','NEW','2023-06-02 03:27:19.000000',NULL,29),(10,'Đơn hàng đang được xử lý','NEW','2023-06-02 03:30:48.000000',NULL,29),(17,'Đặt hàng bởi khách hàng','NEW','2023-06-03 02:38:15.000000',NULL,36),(18,'Đơn hàng đang được xử lý','NEW','2023-06-03 02:38:53.000000',NULL,36),(19,'Đặt hàng bởi khách hàng','NEW','2023-06-03 02:39:28.859000',NULL,37),(20,'Đặt hàng bởi khách hàng','NEW','2023-06-03 02:40:50.042000',NULL,38),(21,'Đặt hàng bởi khách hàng','NEW','2023-06-03 08:48:39.691000',NULL,39),(22,'Đặt hàng bởi khách hàng','NEW','2023-06-03 08:49:27.123000',NULL,40),(23,'Đặt hàng bởi khách hàng','NEW','2023-06-03 08:49:41.573000',NULL,41),(24,'Đặt hàng bởi khách hàng','NEW','2023-06-03 08:51:57.645000',NULL,42),(25,'Đặt hàng bởi khách hàng','NEW','2023-06-03 09:36:32.341000',NULL,43),(28,'Đơn hàng đang được đóng gói','PACKAGED','2023-06-19 21:51:21.000000',NULL,28),(29,'Đặt hàng bởi khách hàng','NEW','2023-06-19 10:10:48.000000',NULL,46),(30,'Đơn hàng đang được xử lý','PROCESSING','2023-06-19 22:14:32.000000',NULL,46);
/*!40000 ALTER TABLE `order_track` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `id` int NOT NULL AUTO_INCREMENT,
  `address_line_1` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `address_line_2` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `city` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `country` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `deliver_date` datetime(6) DEFAULT NULL,
  `deliver_days` int NOT NULL,
  `first_name` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `last_name` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `order_time` datetime(6) DEFAULT NULL,
  `payment_method` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `phone_number` varchar(15) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `postal_code` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `product_cost` float NOT NULL,
  `shipping_cost` float NOT NULL,
  `state` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `status` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `subtotal` float NOT NULL,
  `tax` float NOT NULL,
  `total` float NOT NULL,
  `customer_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKpxtb8awmi0dk6smoh2vp1litg` (`customer_id`),
  CONSTRAINT `FKpxtb8awmi0dk6smoh2vp1litg` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (27,'12412','3245','3245','Việt Nam','2023-04-07 00:00:00.000000',3,'Y','Le','2023-04-04 11:40:23.713000','COD','098745612','5572727',30000,0,'Bình Dương','NEW',80000,0,80000,17),(28,'158','lê hồng phong','dĩ an','Việt Nam','2023-04-14 00:00:00.000000',3,'1247_Lê','Huỳnh Ý','2023-04-11 21:40:46.833000','COD','0985411111','7500000',50,0,'Bình Dương','DELIVERD',100000,0,100000,20),(29,'2345','3245','65','Việt Nam','2023-06-05 00:00:00.000000',3,'ede','efde','2023-06-02 15:27:19.680000','COD','65124513','123',1200,1000,'Bình Dương','PROCESSING',100000,0,101000,21),(36,'2345','3245','65','Việt Nam','2023-06-06 00:00:00.000000',3,'ede','efde','2023-06-03 02:38:15.266000','COD','65124513','123',450,0,'Bình Dương','NEW',480000,0,480000,21),(37,'2345','3245','65','Việt Nam','2023-06-06 02:39:28.859000',3,'ede','efde','2023-06-03 02:39:28.859000','COD','65124513','123',0,0,'Bình Dương','NEW',0,0,0,21),(38,'2345','3245','65','Việt Nam','2023-06-06 02:40:50.041000',3,'ede','efde','2023-06-03 02:40:50.041000','COD','65124513','123',16000000,0,'Bình Dương','NEW',18800000,0,18800000,21),(39,'12412','12412','65','Việt Nam','2023-06-06 08:48:39.691000',3,'asdasad','sdasd','2023-06-03 08:48:39.691000','COD','544531','5572727',2500000,3597120,'Bình Dương','NEW',3500000,0,7097120,22),(40,'12412','12412','65','Việt Nam','2023-06-06 08:49:27.123000',3,'asdasad','sdasd','2023-06-03 08:49:27.123000','COD','544531','5572727',50000,0,'Bình Dương','NEW',6000000,0,6000000,22),(41,'12412','12412','65','Việt Nam','2023-06-06 08:49:41.573000',3,'asdasad','sdasd','2023-06-03 08:49:41.573000','COD','544531','5572727',0,0,'Bình Dương','NEW',0,0,0,22),(42,'12412','12412','65','Việt Nam','2023-06-06 08:51:57.645000',3,'asdasad','sdasd','2023-06-03 08:51:57.645000','COD','544531','5572727',50000,0,'Bình Dương','NEW',6000000,0,6000000,22),(43,'2345','3245','65','Việt Nam','2023-06-06 09:36:32.341000',3,'ede','efde','2023-06-03 09:36:32.341000','COD','65124513','123',50000,0,'Bình Dương','NEW',6000000,0,6000000,21),(46,'109','đường D1','Dĩ An','Việt Nam','2023-06-22 00:00:00.000000',3,'Lê','Văn A','2023-06-19 22:10:48.990000','COD','0368023380','64434',3000,0,'Bình Dương','NEW',50000,0,50000,33);
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_details`
--

DROP TABLE IF EXISTS `product_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_details` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `value` varchar(255) NOT NULL,
  `product_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKnfvvq3meg4ha3u1bju9k4is3r` (`product_id`),
  CONSTRAINT `FKnfvvq3meg4ha3u1bju9k4is3r` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_details`
--

LOCK TABLES `product_details` WRITE;
/*!40000 ALTER TABLE `product_details` DISABLE KEYS */;
INSERT INTO `product_details` VALUES (22,'thẻ nhớ MicroSD','128GB',32),(23,'Ram','6gb',40),(24,'Ram','6GB',36),(25,'Bộ nhớ','128GB',36),(26,'Ram','8GB',46),(27,'Bộ nhớ','128GB',46),(38,'VGA 4090','16GB',35),(39,'RAM','1TB',35),(40,'Ram','8gb',51),(41,'Ram','8gb',53),(47,'Ram','8gb',47),(48,'Ram','8gb',42),(49,'Tốc độ','300Mbps',70);
/*!40000 ALTER TABLE `product_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_images`
--

DROP TABLE IF EXISTS `product_images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_images` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `product_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKqnq71xsohugpqwf3c9gxmsuy` (`product_id`),
  CONSTRAINT `FKqnq71xsohugpqwf3c9gxmsuy` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_images`
--

LOCK TABLES `product_images` WRITE;
/*!40000 ALTER TABLE `product_images` DISABLE KEYS */;
INSERT INTO `product_images` VALUES (28,'vi-vn-dell-vostro-3510-i5-p112f002bbl-1.jpg',52);
/*!40000 ALTER TABLE `product_images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(256) NOT NULL,
  `alias` varchar(256) NOT NULL,
  `short_description` varchar(512) NOT NULL,
  `full_description` blob NOT NULL,
  `main_image` varchar(255) DEFAULT NULL,
  `created_time` datetime(6) DEFAULT NULL,
  `updated_time` datetime(6) DEFAULT NULL,
  `enabled` bit(1) NOT NULL DEFAULT b'1',
  `in_stock` bit(1) DEFAULT b'1',
  `cost` float NOT NULL DEFAULT '0',
  `price` float NOT NULL DEFAULT '0',
  `discount_percent` float DEFAULT '0',
  `lenght` float NOT NULL DEFAULT '0',
  `width` float NOT NULL DEFAULT '0',
  `height` float NOT NULL DEFAULT '0',
  `weight` float NOT NULL DEFAULT '0',
  `brand_id` int DEFAULT NULL,
  `category_id` int DEFAULT NULL,
  `size` varchar(255) DEFAULT NULL,
  `color` varchar(255) DEFAULT NULL,
  `fabric` varchar(255) DEFAULT NULL,
  `work_user` varchar(255) DEFAULT NULL,
  `number_views` decimal(19,2) DEFAULT NULL,
  `related_pdt` bit(1) NOT NULL,
  `qty` decimal(19,2) DEFAULT NULL,
  `kind` varchar(255) DEFAULT NULL,
  `pdt_code` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_8qwq8q3hk7cxkp9gruxupnif5` (`alias`),
  UNIQUE KEY `UK_o61fmio5yukmmiqgnxf8pnavn` (`name`),
  KEY `FKa3a4mpsfdf4d2y6r8ra3sc8mv` (`brand_id`),
  KEY `FKog2rp4qthbtt2lfyhfo32lsw9` (`category_id`),
  FULLTEXT KEY `products_FTS` (`name`,`short_description`),
  CONSTRAINT `FKa3a4mpsfdf4d2y6r8ra3sc8mv` FOREIGN KEY (`brand_id`) REFERENCES `brands` (`id`),
  CONSTRAINT `FKog2rp4qthbtt2lfyhfo32lsw9` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=75 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (32,'Camera IP Ngoài Trời 3MP TP-link Tapo C310','Camera-IP-Ngoài-Trời-3MP-TP-link-Tapo-C310','<div>Mã giảm 100.000đ áp dụng đơn hàng từ 500.000đ</div><div><br></div><div>Đại siêu thị Online với 15.000 sản phẩm tiêu dùng, thịt, cá, rau…</div><div><br></div><div>FREEship đơn hàng từ 300.000đ hoặc thành viên VÀNG</div><div><br></div><div>Giao nhanh trong 2 giờ</div>',_binary '<div><div>Thu phát video cực nét với độ phân giải 3MP</div><div>Với độ nét cao, camera TP-Link mang đến hình ảnh sống động, rõ ràng, không bị mờ, nhòe khi phóng to, nhờ đó người dùng dễ dàng xác minh và nhận dạng tình huống qua camera từ xa mọi lúc.</div><div><br></div><div>Camera Giám Sát Ngoài Trời 3MP TP-link Tapo C310 - Thu phát video cực nét với độ phân giải 3MP</div><div><br></div><div>Quan sát hiệu quả vào ban đêm với đèn hồng ngoại cho tầm nhìn xa đến 30 m</div><div>Camera giám sát cung cấp tầm nhìn thực tế tối đa 30 m trong điều kiện đủ sáng và trong bóng tối, cho bạn hoàn toàn an tâm khi đi ra ngoài hay ngủ ngon suốt đêm.&nbsp;</div><div><br></div><div>Camera Giám Sát Ngoài Trời 3MP TP-link Tapo C310 - Quan sát hiệu quả vào ban đêm với đèn hồng ngoại cho tầm nhìn xa đến 30 m</div><div><br></div><div>Kết nối và cài đặt camera thuận tiện thông qua Ethernet hoặc WiFi&nbsp;</div><div>Lựa chọn mạng có dây hoặc không dây tùy theo nhu cầu, tình trạng hệ thống mạng hiện tại của bạn.&nbsp;</div><div><br></div><div>Camera Giám Sát Ngoài Trời 3MP TP-link Tapo C310 - Kết nối và cài đặt camera thuận tiện thông qua Ethernet hoặc WiFi</div><div><br></div><div>Điều khiển camera IP tiện lợi bằng điện thoại qua ứng dụng Tapo&nbsp;</div><div>Ứng dụng phù hợp cho thiết bị chạy hệ điều hành Android 4.4 trở lên hoặc iOS 9.0 trở lên, sau khi cài đặt, bạn có thể xem trực tiếp hình ảnh từ camera, phát lại, lưu video, nhận thông báo khi camera phát hiện chuyển động, giao tiếp,...&nbsp;</div><div><br></div><div>Tải ứng dụng Tapo: Android | iOS.</div><div><br></div><div>Camera Giám Sát Ngoài Trời 3MP TP-link Tapo C310 - Điều khiển camera IP tiện lợi bằng điện thoại qua ứng dụng Tapo</div><div><br></div><div>Gửi thông báo, báo động tự động khi camera phát hiện chuyển động</div><div>Ngay khi có chuyển động trước thiết bị, camera Giám Sát Ngoài Trời 3MP TP-link Tapo C310 sẽ gửi thông báo đến điện thoại của bạn trong tích tắc, giúp người dùng theo dõi và xử lý các tình huống phát sinh chủ động.&nbsp;</div><div><br></div><div>Hơn nữa, thiết bị còn tự động phát cảnh báo bằng ánh sáng và âm thanh đến những \"khách không mời\" khi phát hiện có sự chuyển động trong tầm giám sát để họ tránh xa ngôi nhà bạn.</div><div><br></div><div>Camera Giám Sát Ngoài Trời 3MP TP-link Tapo C310 - Gửi thông báo, báo động tự động khi camera phát hiện chuyển động</div><div><br></div><div>Giao tiếp thông qua micro và loa tích hợp dễ dàng với âm thanh 2 chiều</div><div>Với micro và loa tích hợp, mang đến giải pháp giao tiếp linh động, từ nay bạn không cần phải mở cửa để nhận bưu kiện khi có thể trò chuyện với người giao hàng qua camera khi họ đứng trong khu vực quan sát của thiết bị hoặc phát cảnh báo, nhắc nhở đến camera qua ứng dụng Tapo trên điện thoại.&nbsp;</div><div><br></div><div>Camera Giám Sát Ngoài Trời 3MP TP-link Tapo C310 - Giao tiếp thông qua micro và loa tích hợp dễ dàng với âm thanh 2 chiều</div><div><br></div><div>Thiết kế ngộ nghĩnh, hiện đại, phù hợp bố trí ở ngoài trời</div><div>Hình dạng của camera trông như một người lính nhỏ sẵn sàng đứng canh gác bên ngoài ngôi nhà bạn để đảm bảo không có kẻ xấu nào xâm nhập vào bên trong. Kích thước nhỏ nhắn, bạn có thể cầm được bằng 1 bàn tay, chân đế tròn cân bằng cho phép bạn đặt thiết bị lên bàn, lắp treo tường hoặc trên trần nhà linh hoạt.&nbsp;</div><div><br></div><div>Camera Giám Sát Ngoài Trời 3MP TP-link Tapo C310 - Thiết kế ngộ nghĩnh, hiện đại, phù hợp bố trí ở ngoài trời</div><div><br></div><div>Thiết bị đạt chuẩn chống nước chống bụi IP66 cho khả năng hoạt động tốt ngay cả trong điều kiện thời tiết khắc nghiệt thường xuyên mưa gió, có nhiều bụi bẩn.&nbsp;</div><div><br></div><div>Camera Giám Sát Ngoài Trời 3MP TP-link Tapo C310 - Thiết bị đạt chuẩn chống nước chống bụi IP66</div><div><br></div><div>Lưu trữ các dữ liệu trong 15 đến 20 ngày qua thẻ nhớ MicroSD 128 GB</div><div>Tích hợp thẻ nhớ vào khe cắm nằm ở mặt lưng của camera trước khi sử dụng, bạn có thể lưu trữ lượng lớn video 3MP, tiện truy cập vào xem bất cứ lúc nào bạn muốn.&nbsp;</div><div><br></div><div>Lưu ý: Bạn cần mua thêm thẻ nhớ MicroSD để lưu trữ thông tin.&nbsp;</div><div><br></div><div>Camera Giám Sát Ngoài Trời 3MP TP-link Tapo C310 - Lưu trữ các dữ liệu trong 15 đến 20 ngày qua thẻ nhớ MicroSD 128 GB</div><div><br></div><div>TP-link Tapo C310 thiết kế đẹp mắt, nhỏ nhắn, tầm nhìn sắc nét ngay cả vào ban đêm, tích hợp nhiều tính năng tiện ích, lựa chọn đúng đắn cho mọi gia chủ.&nbsp;</div></div>','camera-giam-sat-ngoai-troi-3mp-tp-link-tapo-c310-030822-045845-600x600.jpg','2023-01-31 23:09:26.678000','2023-06-03 06:44:06.203000',_binary '',_binary '',400000,1000000,100000,0,0,0,0,16,10,'S','Đen','Cotton','HUYNH Y',4.00,_binary '',10.00,'A01','A0100003'),(35,'Laptop Asus ROG Strix Scar 18 G834JY-N6039W Geforce RTX 4090 16GB Intel Core i9 13980HX 64GB 2TB 18″ WQXGA 240Hz IPS Per-key Keyboard RGB','Laptop-Asus-ROG-Strix-Scar-18-G834JY-N6039W-Geforce-RTX-4090-16GB-Intel-Core-i9-13980HX-64GB-2TB-18″-WQXGA-240Hz-IPS-Per-key-Keyboard-RGB','<div>Túi chống sốc.</div><div>Ram Laptop DDR4 8GB chỉ 450.000đ (khi mua kèm Laptop).</div><div>Ram Laptop DDR4 16GB chỉ 850.000đ (khi mua kèm Laptop).</div><div>Ram Laptop DDR5 8GB chỉ 890.000đ (khi mua kèm Laptop).</div><div>Nhận ngay Pad chuột size xxxl khi đánh giá 5 sao.</div><div>Giảm ngay 50.000đ khi mua thêm Gaming Gear.</div><div>Giảm ngay 100.000đ khi mua thêm Màn hình.</div><div>Đổi mới trong 7 ngày (nếu lỗi phần cứng).</div><div>Miễn phí vệ sinh máy.</div><div>Miễn phí giao hàng toàn quốc</div>',_binary '<div><div>Mô tả</div><div>Asus ROG Strix Scar 18 G834JY-N6039W</div><div>Asus ROG Strix Scar 18 G834JY-N6039W</div><div>Thống trị chiến trường với Asus ROG Strix Scar 18 G834JY-N6039W hoàn toàn mới. Lần đầu tiên Asus giới thiệu màn hình 18 inch cho dòng sản phẩm SCAR, giúp nhìn rõ kẻ thù hơn bao giờ hết. Asus ROG Strix Scar 18 G834JY-N6039W được trang bị bộ xử lý Intel® Core™ i9-13980HX thế hệ thứ 13 và GPU NVIDIA® GeForce RTX™ 4090 với TGP tối đa 175W, SCAR 18 dễ dàng xử lý ngay cả những trò chơi đòi hỏi khắt khe nhất. Nó cũng đi kèm với MUX Switch chuyên dụng hỗ trợ NVIDIA Advanced Optimus, cho phép bạn dễ dàng khai thác sức mạnh thực sự của GPU khi chơi game. Với sự hỗ trợ lên đến 64GB RAM DDR5 và bộ nhớ lưu trữ PCIe Gen4x4 lên đến 4TB, SCAR 18 có thể dễ dàng chơi trò chơi, live stream và tạo nội dung cùng lúc một cách dễ dàng. Đối với máy tính xách tay chơi game đỉnh cao, không gì khác ngoài Strix SCAR 18.</div><div><br></div><div>Manual Mode</div><div><br></div><div>Turbo Mode</div><div><br></div><div>Sức mạnh và hiệu suất</div><div>Asus ROG Strix Scar 18 G834JY-N6039W có thể vượt qua bất kỳ trò chơi hoặc dự án nào với bộ xử lý Intel® Core™ i9-13980HX, có TDP lên đến 65W và kiến trúc kết hợp được xây dựng tương thích cho Windows 11. Với tối đa 8 lõi Hiệu suất và 16 lõi Hiệu quả, chơi game AAA hoàn hảo và livestream thật dễ dàng.</div><div><br></div><div>Giải phóng hiệu năng đồ họa</div><div>Asus ROG Strix Scar 18 G834JY-N6039W sở hữu GPU nằm trong top-tier của GPU về sức mạnh, đặc biệt là khi bạn cần hiệu suất GPU đỉnh nhất. Dựa trên bởi NVIDIA DLSS 3, kiến trúc Ada Lovelace siêu hiệu quả và công nghệ Max-Q,&nbsp; NVIDIA® GeForce RTX™ 4090 được giải phóng hoàn toàn với TGP tối đa 175W với Dynamic Boost.</div><div><br></div><div>Các trang bị vượt trội</div><div>– Trang bị NVIDIA® Advanced Optimus, Asus ROG Strix Scar 18 G834JY-N6039W có thể tự động định tuyến các khung hình từ GPU trực tiếp đến màn hình bằng cách sử dụng MUX switch bỏ qua đồ họa tích hợp. Việc này cải thiện hiệu suất 5-10% so với các máy không có MUX Switch, đảm bảo bạn có được trải nghiệm chơi trò chơi tốt nhất mà không cần chạm vào một nút nào. Việc chuyển đổi tự động này cũng giúp duy trì tuổi thọ pin cho máy của bạn vì nó có thể tự động chuyển đổi giữa GPU rời công suất cao và GPU tích hợp công suất thấp hơn. Bất kể bạn đang làm gì, máy của bạn sẽ chuyển sang chế độ tối ưu nhất mà bạn không cần phải nhấc một ngón tay.</div><div><br></div><div>– Trang bị Ram DDR5 hoàn toàn mới, tận hưởng hiệu suất khổng lồ lên đén 4800Mhz, với thời gian ghi nhanh hơn 50% so với các máy được trang bị DDR4. Bộ nhớ cực nhanh này làm cho mọi khía cạnh của Asus ROG Strix Scar 18 G834JY-N6039W đều hoạt động linh hoạt, từ chơi game cường độ cao đến duyệt web nhẹ nhàng.</div><div><br></div><div>– Đảm đương các những dự án lớn nhất một cách tự tin nhờ vào trang bị SSD PCIE Gen4 được cấu hình ở RAID 0. Với băng thông lên đến 7000 MB/giây, các tệp lớn và chi tiết trò chơi sẽ được tải trong nháy mắt.</div><div><br></div><div>GeForce RTX 40 Series Laptops</div><div>Nhanh vượt trội dành cho game thủ và nhà sáng tạo nội dung với GeForce RTX 40 Series mới nhất với các tính năng nổi bật như:</div><div><br></div><div>– Tăng hiệu suất với công nghệ AI của DLSS 3 giúp đồ họa sống động như thật với tính năng Ray Tracing.</div><div><br></div><div>– NVIDIA Studio đưa các dự án của bạn lên một tầm cao mới. Mở khóa RTX và AI trong các ứng dụng sáng tạo hàng đầu, NVIDIA Studio cho độ ổn định tối đa và bộ công cụ độc quyền để theo dõi nhanh khả năng sáng tạo của bạn.</div><div><br></div><div>– NVIDIA Max-Q là công nghệ tiên tiến được hỗ trợ bởi AI giúp tối ưu hóa hệ thống của bạn để đạt hiệu suất cao nhất. Điều này cho phép máy nhanh, mỏng, yên tĩnh và có thời lượng pin đáng kinh ngạc.</div><div><br></div><div>GAME ENGINE</div><div>Game – Stream – Create</div><div><br></div><div>SCAR series được xây dựng dành cho các game thủ — và tất nhiên là cả các nhà làm game. Asus ROG Strix Scar 18 G834JY-N6039W có thể chạy tất cả các engines mới nhất, cho phép bạn thỏa sức sáng tạo và thử sức mình trong việc sáng tạo ra game mới. Cho dù bạn là digital artist, streamer, video editor hay vẽ hoạt hình và làm game thì Asus ROG Strix Scar 18 G834JY-N6039W có tất cả sức mạnh mà bạn cần để đưa những sáng tạo của mình lên một tầm cao mới. Nổi bật với bộ xử lý Intel® Core™ i9 và GPU cho laptop NVIDIA® GeForce RTX™ 40 Series. Các dự án phức tạp được làm trên các công cụ phổ biến như Unity và Autodesk sẽ thành hình trong tích tắc. Bạn có mọi thứ cần thiết để trở thành người giỏi nhất trên chiến trường, nhưng bạn đã sẵn sàng để thiết kế cái tiếp theo chưa?</div><div><br></div><div>Hệ thống tản nhiệt</div><div><br></div><div>Để phù hợp với cấu hình mạnh mẽ như vậy, khung máy và bo mạch chủ của Asus ROG Strix Scar 18 G834JY-N6039W đều được thiết kế lại với tản nhiệt toàn chiều rộng mới của Asus, các lá tản nhiệt bằng đồng được di chuyển đến gần lỗ thông hơi hơn để làm mát hiệu quả hơn. Tản nhiệt độc đáo này được xây dựng từ ba phần khác nhau, bao quanh bo mạch chủ với các lá tản nhiệt dày đặc để có tổng diện tích bề mặt là 195.509mm², tăng 82,5% so với Strix SCAR 17 2022. Thiết kế này tối đa hóa đường dẫn có sẵn để khí nóng thoát ra khỏi máy và tăng đáng kể khả năng làm mát tổng thể.</div><div><br></div><div>Cuối cùng, hầu hết các laptop gaming đều có hệ thống làm mát quạt kép, nhưng Asus ROG Strix Scar 18 G834JY-N6039W đã có thể đẩy mạnh hiệu suất hơn nữa khi trang bị quạt thứ ba giúp giữ cho GPU và VRAM mát mẻ. Được kết hợp với bảy ống dẫn nhiệt và kim loại lỏng Conductonaut Extreme trên cả CPU và GPU, hệ thống làm mát của SCAR 18 là một tuyệt tác kỹ thuật.</div><div><br></div><div>Màn hình ROG Nebula</div><div>Dành cho những game thủ yêu cầu độ rõ nét của hình ảnh và chuyển động tốt nhất, Asus ROG Strix Scar 18 G834JY-N6039W cung cấp màn hình Nebula đáng kinh ngạc với tốc độ làm mới 240Hz, độ bao phủ 100% DCI-P3 và độ sáng đáng kinh ngạc 500 nits để chơi game. Màn hình QHD 2K 18 inch, tỷ lệ khung hình 16:10 mini led mang lại màu đen sâu đáng kinh ngạc, cho dù bạn đang xem phim hay chơi game bắn súng đấu trường chuyển động nhanh. Asus ROG Strix Scar 18 G834JY-N6039W cũng có thể chuyển đổi về FullHD 165Hz, với mỗi tùy chọn cung cấp màu sắc tuyệt vời cho đồ họa, hỗ trợ Dolby Vision, Adaptive-Sync, tỷ lệ màn hình so với thân máy là 89% để mang lại trải nghiệm xem và chơi game tuyệt vời nhất.</div><div><br></div><div>Thiết kế để dành chiến thắng</div><div>Republic of Gamers được xây dựng bởi những người thích chơi games. Tất cả các thiết kế và cân nhắc của ROG đều hướng tới game thủ đầu tiên, từ thiết kế khung máy, tích hợp hệ thống led, điều khiển phần mềm và chức năng macro. Những tính năng thiết kế độc quyền của ROG không chỉ mang lại cho bạn lợi thế cạnh tranh mà còn đảm bảo bạn không bao giờ bị lẫn vào đám đông.</div><div><br></div><div>Phần mềm tùy chỉnh vô tận</div><div><br></div><div>Với các tính năng tùy chỉnh mọi ngóc ngách của máy từ hiệu năng, macro, các chế độ chơi game cho đến đèn led và hình nền bạn có thể tùy chỉnh máy Asus ROG Strix Scar 18 G834JY-N6039W của mình một các tận hứng mà không biết chán là gì.</div><div><br></div><div>Thiết kế để trình diễn</div><div><br></div><div>Asus ROG Strix Scar 18 G834JY-N6039W tiếp tục thể hiện phong cách riêng biệt của ROG. Với thiết kế khung máy sắc nét, điểm nhấn RGB độc đáo và cảm giác gaming khác biệt, Strix Scar 18 sẽ luôn nổi bật giữa đám đông. Khác với Scar 2022, Strix SCAR 2023 có dải led RGB phía sau, kết hợp với hệ thống led RGB Per-keys trên bàn phím và thanh ánh sáng giúp Asus ROG Strix Scar 18 G834JY-N6039W trở thành ngọn hải đăng cho sức mạnh chơi game từ mọi góc độ.</div><div><br></div><div>Âm thanh chất lượng như phòng thu</div><div><br></div><div>Asus ROG Strix Scar 18 G834JY-N6039W phát triển dựa trên Dolby Atmos bao gồm hai loa tweeter và hai loa trầm hướng xuống để tạo ra một sân khấu âm thanh chân thực cho bạn. Âm thanh Hi-Res đảm bảo bạn nghe nhạc với chất lượng như bản ghi. Tính năng Khử tiếng ồn AI hai chiều xử lý cả âm thanh đầu vào và đầu ra để lọc mọi tiếng ồn không phù hợp xung quanh, đảm bảo các cuộc gọi, cuộc trò chuyện và streams của bạn diễn ra mà không bị phân tâm.</div><div><br></div><div>Bền bỉ cả ngày</div><div><br></div><div>Asus ROG Strix Scar 18 G834JY-N6039W với pin 90Wh, Strix Scar 18 có thể dễ dàng duyệt web hàng giờ liền trước khi cần sạc lại. Để linh hoạt khi di chuyển, sạc USB Type-C được hỗ trợ lên đến 100W. Khi sạc bằng bộ nguồn 330W, SCAR 18 có thể sạc lại từ 0 đến 50% chỉ trong 30 phút.</div><div><br></div><div>Kết nối ổn định</div><div><br></div><div>Trong các game online hiện nay, bắt buộc phải có kết nối internet ổn định. Asus ROG Strix Scar 18 G834JY-N6039W sẵn sàng tham chiến với cổng RJ45 chuyên dụng cũng như chuẩn không dây Wi-Fi 6E mới nhất. Trên các mạng được hỗ trợ Wi-Fi 6E, tận hưởng quyền truy cập vào băng tần không dây mới nhất, không bị ảnh hưởng và nhiễu từ các thiết bị không dây khác trong nhà của bạn, Asus ROG Strix Scar 18 G834JY-N6039W đảm bảo bạn sẽ không bao giờ bị lag nữa.</div><div><br></div><div>Cổng kết nối đa dạng</div><div><br></div><div>Khi bạn cần kết nối với màn hình lớn, Asus ROG Strix Scar 18 G834JY-N6039W sẽ cung cấp cổng HDMI 2.1 cho TV và màn hình mới nhất, tăng tổng băng thông từ 18 lên 48Gbps và hỗ trợ nội dung lên đến 4K 120Hz và 8K 60Hz. Hai cổng USB Type-C cho phép nhiều kết nối—một cổng dành cho DisplayPort và cấp nguồn, cổng thứ hai hỗ trợ Thunderbolt 4.</div><div><br></div></div>','asusroglap.jpg','2023-02-01 11:45:53.365000','2023-06-03 06:48:47.398000',_binary '',_binary '',150000,250000,0,0,0,0,0,4,2,'S','Đen','Cotton','HUYNH Y',12.00,_binary '\0',1.00,'A01','A0100004'),(36,'iPhone 14','iPhone-14','<div>Thu cũ Đổi mới: Giảm đến 2 triệu (Tuỳ model máy cũ, Không kèm các hình thức thanh toán online, mua kèm)&nbsp;</div><div>Giảm 100,000đ Cho Đơn Hàng Từ 10 Triệu Khi Thanh Toán Quét Mã SmartPay QR Bằng Ứng Dụng Ngân Hàng.</div>',_binary '<div><div>iPhone 14 128GB được xem là mẫu smartphone bùng nổ của nhà táo trong năm 2022, ấn tượng với ngoại hình trẻ trung, màn hình chất lượng đi kèm với những cải tiến về hệ điều hành và thuật toán xử lý hình ảnh, giúp máy trở thành cái tên thu hút được đông đảo người dùng quan tâm tại thời điểm ra mắt.</div><div>iPhone 14 sở hữu thiết kế cao cấp</div><div>Với phiên bản tiêu chuẩn thì nhà Apple vẫn giữ nguyên kiểu dáng thiết kế so với thế hệ tiền nhiệm, vẫn là mặt lưng phẳng cùng bộ khung vuông giúp máy trở nên hiện đại hơn.</div><div><br></div><div>Thiết kế hiện đại - iPhone 14 128GB</div><div><br></div><div>iPhone 14 có kích thước chiều ngang là 71.5 mm nên máy có thể dễ dàng nằm gọn trong lòng bàn tay mỗi khi sử dụng, điều này làm cho điện thoại trở nên phù hợp hơn với nhiều đối tượng người dùng hơn, kể cả những bạn nữ có bàn tay nhỏ nhắn.</div><div><br></div><div>Camera - iPhone 14 128GB</div><div><br></div><div>Mặt lưng của điện thoại được thiết kế từ kính cường lực và hoàn thiện theo kiểu nhẵn bóng, theo mình thì cách làm này giúp cho iPhone 14 trông cuốn hút hơn, bên cạnh đó nó máy cũng khá bền bỉ có thể mang lại khả năng chống chịu các vết xước được tốt hơn.</div><div><br></div><div>Mặt lưng kính cường lực - iPhone 14 128GB</div><div><br></div><div>Có một lưu ý nhỏ ở phần thiết kế là máy khá dễ bám dấu vân tay, điều này càng thêm lộ rõ ở những phiên bản có màu đậm như đen và đỏ, còn ở các phiên bản màu sáng như xanh dương, trắng và tím nhạt thì điều này cũng được cải thiện.</div><div><br></div><div>Hạn chế vết bám - iPhone 14 128GB</div><div><br></div><div>Tuy nhiên đây cũng là điều thường gặp trên các mẫu điện thoại có mặt lưng kính nên mình cũng không xem đây là điểm trừ dành cho iPhone 14, bằng cách trang bị thêm ốp lưng là ta đã có thể khắc phục hoàn toàn tình trạng trên và còn tăng thêm độ bền cho điện thoại.</div><div><br></div><div>Năm nay Apple cho ra mắt hai phiên bản có màu mới dành cho iPhone 14 là tím nhạt và xanh dương, theo mình thấy thì màu xanh này có màu dịu nhẹ hơn so với iPhone 13. Vậy nên nhờ màu sắc mà mình có thể dễ dàng phân biệt giữa hai dòng điện thoại, nếu muốn mọi người xung quanh biết được rằng bạn đang sở hữu iPhone 14 thì hai màu sắc này sẽ là sự lựa chọn rất phù hợp.</div><div><br></div><div>Màu sắc khác biệt - iPhone 14 128GB</div><div><br></div><div>Giải trí đã mắt hơn trên màn hình chất lượng của iPhone 14</div><div>Máy sử dụng tấm nền OLED nên màu sắc mà máy mang lại rất có chiều sâu, màu sắc hiển thị với độ chính xác màu cao nên sẽ không bị quá ảo như trên những tấm nền khác mà ta hay gặp là AMOLED và Super AMOLED.</div><div><br></div><div>Xem thêm: Màn hình OLED là gì? Có gì nổi bật? Thiết bị nào có màn hình OLED?</div><div><br></div><div>Trên iPhone 14 vẫn sẽ sử dụng màn hình kiểu giọt nữa, màn hình Dynamic Island chỉ xuất hiện trên dòng sản phẩm Pro của hãng, như iPhone 14 Pro và iPhone 14 Pro Max.</div><div><br></div><div>Màn hình sinh động - iPhone 14 128GB</div><div><br></div><div>Màn hình của điện thoại iPhone có kích thước 6.1 inch, độ phân giải 1170 x 2532 Pixels, mật độ điểm ảnh mà máy mang đến khá cao, theo như hãng công bố thì iPhone 14 có mật độ điểm ảnh khoảng 460 ppi.</div><div><br></div><div>HIển thị hình ảnh sắc - iPhone 14 128GB</div><div><br></div><div>Điều mà mình khá ấn tượng trên màn hình của iPhone 14 là về độ sáng, máy có một khá ổn định khi sử dụng điện thoại ở những môi trường có độ sáng cao như ngoài trời nắng cũng trở nên dễ dàng hơn.</div><div><br></div><div>Hiển thị hình ảnh độ sáng cao - iPhone 14 128GB</div><div><br></div><div>Bắt trọn mọi khoảnh khắc qua cụm camera chất lượng</div><div>Từ trước đến nay thì camera của iPhone luôn được đánh giá cao về chất lượng và đối với iPhone 14 thì điều này cũng không là ngoại lệ. Tuy không có sự nâng cấp về độ phân giải so với thế hệ trước, nhưng với những gì mà máy làm được thì mình thấy iPhone 14 cho ra hình ảnh có độ chân thực về màu sắc bắt mắt hơn iPhone 13.</div><div><br></div><div>Ảnh chụp đẹp mắt - iPhone 14 128GB</div><div><br></div><div>Vẫn sẽ là bộ đôi ống kính 12 MP được trang bị ở mặt lưng và một trong số đó là camera góc siêu rộng có khả năng ghi hình với trường nhìn 120 độ.</div><div><br></div><div>Ảnh chụp được từ tính năng mặc định cho ra có độ chi tiết khá cao, ảnh khi zoom lên khoảng 30% cũng ít khi bị bể, nhờ vậy mà mình có thể thay đổi bức hình bằng cách phóng to mà không quá lo lắng đến việc chất lượng ảnh bị giảm đi nhiều.</div><div><br></div><div>Ảnh chụp sắc nét - iPhone 14 128GB</div><div><br></div><div>*Ảnh chụp từ tính năng mặc định&nbsp;</div><div><br></div><div>Ảnh chụp từ camera - iPhone 14 128GB</div><div><br></div><div>*Ảnh chụp sau khi phóng to</div><div><br></div><div>Ở những khung cảnh có nhiều chi tiết nhỏ thì máy cũng có thể xử lý và thu lại một cách sắc nét, như bức ảnh mà mình có chụp bên dưới thì những tán lá đều tái hiện lại một cách rõ ràng mà không phải dùng AI để mô phỏng lại như một vài mẫu điện thoại Android có trên thị trường.</div><div><br></div><div>Ảnh chụp từ camera - iPhone 14 128GB</div><div><br></div><div>iPhone 14 được hỗ trợ tính năng Smart HDR 4 nên những bức ảnh mà mình chụp ở điều kiện ngược sáng hay ngoài trời cũng trở nên chất lượng hơn, màu sắc được tái hiện lại tươi tắn và độ sáng cũng sẽ tự động tinh chỉnh giúp cho bức ảnh trở nên nịnh mắt và dễ nhìn.</div><div><br></div><div>Ảnh chụp ngoài trời - iPhone 14 128GB</div><div><br></div><div>Còn ở bức hình chụp từ tính năng góc siêu rộng thì kết quả cũng làm mình khá bất ngờ, ảnh có độ chi tiết tốt, các mảng sáng tối trong hình được xử lý tách bạch rõ ràng, màu sắc cũng được xử lý thông minh để cho bức ảnh trông đẹp mắt không thua kém nhiều so với camera chính.</div><div><br></div><div>Ảnh chụp góc siêu rộng - iPhone 14 128GB</div><div><br></div><div>Ảnh chụp góc siêu rộng - iPhone 14 128GB</div><div><br></div><div>Đối với những khung cảnh có nhiều đường dẫn hay điểm hút thì tính năng chụp ảnh góc siêu rộng trên iPhone 14 sẽ làm cho bức hình trông có chiều sâu hơn, với tay mơ về chụp ảnh như mình thì cũng dễ dàng có được những bức ảnh cuốn hút mang đậm vẻ nghệ thuật.</div><div><br></div><div>Ảnh chụp từ camera - iPhone 14 128GB</div><div><br></div><div>Ảnh chụp từ camera - iPhone 14 128GB</div><div><br></div><div>Ngoài việc chụp ảnh tốt ra thì khả năng quay video của iPhone 14 cũng làm cho mình cực kỳ thích thú, máy có thể quay video đạt chuẩn 4K ở tốc độ khung hình 60 fps.</div><div><br></div><div>Bên cạnh đó thì máy cũng sẽ được hỗ trợ các tính năng xịn sò như Cinematic và chống rung quang học (OIS), điều này giúp cho những thước phim quay được trở nên ổn định hơn trông rất chuyên nghiệp.</div><div><br></div><div>Quay video chuyên nghiệp - iPhone 14 128GB</div><div><br></div><div>Hiệu năng vượt trội nhờ con chip Apple A15 Bionic</div><div>Apple A15 Bionic sẽ là con chip được trang bị cho điện thoại iPhone 14 năm nay, đây vốn dĩ là con chip từng xuất hiện trên mẫu iPhone 13 và đạt được rất nhiều thành tựu về khả năng xử lý tác vụ vượt trội, được đánh giá là con chip có hiệu năng nhất nhì thị trường điện thoại vào thời điểm đó.</div><div><br></div><div>Hiệu năng mạnh mẽ - iPhone 14 128GB</div><div><br></div><div>Thế nhưng đến năm 2022 thì con chip này vẫn tiếp tục xuất hiện trên iPhone 14 và nó làm cho khá nhiều người dùng đặt câu hỏi: “Liệu nó có thực sự khác biệt với iPhone 13 và ta có nên bỏ tiền ra mua không?”.&nbsp;</div><div><br></div><div>Và câu trả lời của mình về vấn đề này là “có”, nó quả thực đã tốt hơn khá nhiều về hiệu năng bởi con chip này khi được trang bị trên iPhone 14 sẽ hoạt động với 5 nhân GPU thay vì 4 nhân trên iPhone 13, và điều này đã góp phần làm cho các tác vụ chơi game hay xử lý công việc đồ họa trở của mình trở nên mượt mà và nhanh chóng hơn.</div><div><br></div><div>Xử lý công việc nhanh chóng - iPhone 14 128GB</div><div><br></div><div>Để có thể đánh giá hiệu năng của máy một cách trực quan hơn thông qua những con số thì mình cũng đã test qua một vài phần mềm đánh giá hiệu năng, mức điểm mà iPhone 14 đạt được cũng rất cao và cụ thể như sau: 1730 (đơn nhân), 4500 (đa nhân) trên Geekbench và 833198 điểm trên AnTuTu Benchmark.</div><div><br></div><div>Điểm hiệu năng cao - iPhone 14 128GB</div><div><br></div><div>Tại thời điểm ra mắt iPhone 14 thì Apple A15 Bionic vẫn được xếp loại năm trong top 10 chipset có hiệu năng mạnh nhất thị trường, nhờ vậy mà hầu hết mọi tựa game mà mình chơi qua đều được máy xử lý dễ dàng, kể cả Genshin Impact ở mức cấu hình cao thì điện thoại cũng có thể xử lý được và cho ra trải nghiệm khi chơi là khá ổn.</div><div><br></div><div>Chơi game ổn định - iPhone 14 128GB</div><div><br></div><div>Kể từ khi kích hoạt thì máy đã được tích hợp sẵn hệ điều hành iOS 16 tiên tiến nhất của Apple trong năm 2022, ở phiên bản này thì máy được bổ sung khá nhiều các tính năng từ tối ưu hóa giao diện cho tới khả năng kết nối và tương thích với những món phụ kiện.</div><div><br></div><div>Điều mà mình thích nhất trên iOS 16 lần này là về giao diện, máy cho phép mình tùy biến không gian hiển thị và màn hình khóa với nhiều chủ đề khác nhau hết sức mới mẻ. Ngoài ra thì trên cửa hàng ứng dụng của Apple còn xuất hiện thêm nhiều app có widget đầy thú vị để làm cho màn hình của mình trông sinh động hơn.</div><div><br></div><div>Hỗ trợ hệ điều hành mới - iPhone 14 128GB</div><div><br></div><div>Duy trì thời gian sử dụng dài lâu</div><div>iPhone 14 trang bị viên pin có dung lượng 3279 mAh, sau một thời gian sử dụng thì mình thấy máy có thể đáp ứng nhu cầu sử dụng lâu hơn mình tưởng tượng, cụ thể là máy có thể đạt 8 giờ 5 phút khi sử dụng đa tác vụ trong vòng một ngày liên tục.</div><div><br></div><div>Sử dụng dài lâu - iPhone 14 128GB</div><div><br></div><div>Còn về thời gian lấp đầy viên pin của máy cũng rất nhanh bởi thiết bị được hỗ trợ sạc nhanh 20 W, bên cạnh đó thì máy cũng được trang bị công nghệ sạc không dây MagSafe tiện lợi. Khá tiếc là máy không trang bị kèm theo củ sạc sạc, vì thế mà mình có trang bị thêm phụ kiện từ bên ngoài để test, sau khoảng 1 tiếng hơn là máy đã có thể lấp đầy từ 0% đến 100% pin.</div><div><br></div><div>Hỗ trợ sạc nhanh - iPhone 14 128GB</div><div><br></div><div>Sau những gì mà mình trải nghiệm được trên iPhone 14 thì đây quả thực là một sự lựa chọn rất đáng để đầu tư, máy có gần như những loại công nghệ hàng đầu trên thị trường, có thể đáp ứng tốt cho mình mọi tác vụ sử dụng, và hơn hết là điện thoại được hỗ trợ hệ điều hành mới nhất, vậy nên ta cũng sẽ an tâm hơn vì Apple vẫn sẽ tiếp tục hỗ trợ và nâng cấp cho iPhone 14 nhiều phiên bản hệ điều hành mới trong tương lai.</div></div>','iPhone-14-thumb-do-600x600.jpg','2023-02-01 11:47:00.454000','2023-06-03 06:48:38.331000',_binary '',_binary '',15000000,21000000,2000000,0,0,0,0,13,1,'S','Đen','Cotton','HUYNH Y',24.00,_binary '\0',3.00,'A01','A0100005'),(40,'iPhone 13 Pro Max 1TB','iPhone-13-Pro-Max-1TB','<div>Trả góp 0%</div><div>Giảm đến 30% hệ sinh thái Apple</div><div>Thu cũ đổi mới trợ giá ngay đến 2 triệu (SmartExchange)&nbsp;</div><div>Giảm đến 20% củ sạc nhanh 25W&nbsp;</div>',_binary '<div><div>Đánh giá chi tiết iPhone 13 Pro Max</div><div>iPhone 13 Pro Max xứng đáng là một chiếc iPhone lớn nhất, mạnh mẽ nhất và có thời lượng pin dài nhất từ trước đến nay sẽ cho bạn trải nghiệm tuyệt vời, từ những tác vụ bình thường cho đến các ứng dụng chuyên nghiệp.</div><div><br></div><div>Điện thoại iPhone 13 Pro Max 128GB</div><div><br></div><div>Đắm chìm trong không gian màn hình lớn cực đã</div><div>Dù là giải trí khi xem phim, chơi game hay kiểm tra email, đọc tài liệu thì màn hình lớn tới 6,7 inch của iPhone 13 Pro Max cũng luôn cho trải nghiệm tuyệt vời nhất.</div><div><br></div><div>Không chỉ lớn, đây còn là màn hình chất lượng hàng đầu thế giới smartphone với tấm nền OLED tuyệt đẹp, công nghệ Super Retina XDR siêu nét và độ sáng tối đa đạt mức khó tin, lên tới 1200 nits cho nội dung HDR. Trước mắt bạn là một không gian giải trí mãn nhãn, một thiết bị di động lý tưởng để giải quyết nhanh công việc với màn hình thực sự xuất sắc.</div><div><br></div><div>Đắm chìm trong không gian màn hình lớn iPhone 13 Pro Max</div><div><br></div><div>iPhone 13 Pro Max xanh lá sang trọng, bí ẩn</div><div>iPhone 13 Pro Max giờ đây đã khoác lên màu xanh lá Alpine Green bí ẩn mà không kém phần sang trọng. Sắc màu mới đem lại cảm nhận mới mẻ mà giúp bạn có thêm nhiều lựa chọn khi sắm sửa cho bản thân một chiếc iPhone cao cấp thế hệ mới. Cầm iPhone 13 Pro Max màu xanh lá trên tay, bạn sẽ có cảm giác như đang sử dụng phiên bản giới hạn của sản phẩm này.</div><div><br></div><div>iPhone 13 Pro Max màu xanh lá</div><div><br></div><div>Bước nhảy vọt về thời lượng pin</div><div>Dòng iPhone Pro Max luôn được người dùng yêu thích nhờ thời lượng pin siêu dài, tuy nhiên iPhone 13 Pro Max còn làm được nhiều hơn thế. Dung lượng pin lớn hơn, màn hình mới và bộ vi xử lý Apple A15 Bionic tiết kiệm điện hơn giúp nó trở thành chiếc iPhone có thời lượng pin tốt nhất từ trước đến nay.</div><div><br></div><div>So với iPhone 12 Pro Max, iPhone 13 Pro Max có thời gian sử dụng dài hơn 2,5 giờ. Bạn sẽ cảm nhận rõ sự khác biệt khi sử dụng thực tế, thời lượng pin iPhone 13 Pro Max thậm chí còn có thể kéo dài đến ngày thứ 3 với nhu cầu sử dụng thông thường.</div><div><br></div><div>Bước nhảy vọt về thời lượng pin iPhone 13 Pro Max</div><div><br></div><div>Sang trọng, lịch lãm và quý phái</div><div>iPhone 13 Pro Max có kiểu dáng sang trọng, thời thượng và sự tinh xảo đến từng đường nét. Phần khung máy cứng cáp làm từ thép không gỉ nằm giữa hai mặt kính cao cấp, trong đó phần kính bảo vệ màn hình có chất liệu gốm siêu cứng, vừa tuyệt đẹp, lại vừa vô cùng bền bỉ.</div><div><br></div><div>Hơn nữa, điện thoại còn có khả năng chống nước chuẩn IP68, cho phép bạn sử dụng mà không sợ các nguy cơ như đổ nước hay gặp trời mưa. Sẽ có 4 lựa chọn màu sắc dành cho iPhone 13 Pro Max là Xám, Vàng, Trắng và Xanh Sierra, tất cả các màu đều có khí chất riêng biệt, đẳng cấp.</div><div><br></div><div>iPhone 13 Pro Max sang trọng, lịch lãm và quý phái</div><div><br></div><div>Sức mạnh của hệ thống camera Pro mới</div><div>Cả 3 camera trên iPhone 13 Pro Max đều sử dụng cảm biến mới với chất lượng ống kính hàng đầu hiện nay. Nổi bật nhất là camera chính có khẩu độ lên tới f/1.5, kích thước điểm ảnh 1.9um, những con số khó tin đối với một chiếc điện thoại di động, cho hình ảnh và video thiếu sáng tốt hơn bao giờ hết.</div><div><br></div><div>Camera góc siêu rộng cũng được nâng cấp với khẩu độ f/1.8, cảm biến nhanh hơn, mang tới những bức ảnh góc siêu rộng tự nhiên và chân thực. Cuối cùng là camera Tele hỗ trợ zoom quang học 3x. Đặc biệt, hệ thống chống rung quang học kép có mặt trên cả camera chính và camera Tele.</div><div><br></div><div>Sức mạnh của hệ thống camera iPhone 13 Pro Max</div><div><br></div><div>Điện thoại đầu tiên trên thế giới có khả năng quay video macro</div><div>Camera góc siêu rộng của siêu phẩm này không chỉ chụp được những hình ảnh khung hình rộng mà còn có khả năng lấy nét ở khoảng cách chỉ 2cm, mang đến tính năng macro đầy thú vị. Bạn có thể nhìn rõ từng chi tiết nhỏ như nhụy hoa, côn trùng, đồng xu, mặt đồng hồ,...</div><div><br></div><div>Ấn tượng hơn nữa khi iPhone 13 Pro Max còn có thể quay video macro, để bạn có những thước phim như chương trình truyền hình Discovery, lưu lại cảnh thiên nhiên ở góc nhìn gần nhất.</div><div><br></div><div>Điện thoại đầu tiên trên thế giới có khả năng quay video macro</div><div><br></div><div>Chụp đêm sáng rõ như ban ngày</div><div>iPhone 13 Pro Max hội tụ đủ những yếu tố để trở thành chiếc điện thoại chụp đêm xuất sắc nhất hiện nay. Khẩu độ và kích thước cảm biến siêu lớn; máy quét LiDAR chuyên dụng đi cùng chip xử lý hình ảnh ISP mới tích hợp trên Apple A15 Bionic và thuật toán phần mềm thông minh giúp thu sáng tốt hơn tới 2,2 lần ở camera chính, hơn 92% ở camera góc siêu rộng. Hơn nữa, tất cả các camera trên điện thoại đều có chế độ chụp đêm, cho hình ảnh luôn rõ nét trong đêm tối.</div><div><br></div><div>Chụp đêm sáng rõ như ban ngày</div><div><br></div><div>Điều kỳ diệu từ camera Tele</div><div>Camera Tele chỉ có mặt trên dòng iPhone Pro. Với iPhone 13 Pro Max, camera Tele có thể zoom quang học 3x, phóng to hình ảnh và video gấp 3 lần nhưng vẫn giữ nguyên chất lượng. Camera Tele còn tham gia vào tính năng chụp ảnh chân dung xóa phông, cho khả năng tách phông nền mượt mà, nổi bật chủ thể một cách tự nhiên, chế độ chân dung đêm độc đáo. Các hiệu ứng ánh sáng chuẩn studio có sẵn còn làm bức ảnh của bạn trở nên nghệ thuật hơn.</div><div><br></div><div>Điều kỳ diệu từ camera Tele</div><div><br></div><div>Chế độ quay video xóa phông điện ảnh Cinematic</div><div>Giờ đây bạn đã có thể sáng tạo những thước phim chất lượng tương đương các bom tấn điện ảnh trên chiếc điện thoại iPhone 13 Pro Max. Chế độ quay phim điện ảnh Cinemactic có thể lấy nét vào chủ thể, đồng thời làm mờ hậu cảnh và những nhân vật khác trong khung hình. Thậm chí cả trong và sau khi quay, bạn còn có thể đổi chủ thể lấy nét một cách dễ dàng. Hiệu ứng chiều sâu cùng hình ảnh nổi bật tạo thành những đoạn video đầy thú vị và sống động.</div><div><br></div><div>Chế độ quay video xóa phông điện ảnh Cinematic</div><div><br></div><div>Nhiếp ảnh chưa bao giờ dễ dàng đến thế</div><div>Ngoài việc chụp ảnh sắc nét, flagship này còn có những công cụ chỉnh sửa ảnh đơn giản và hiệu quả. Trên điện thoại có sẵn rất nhiều bộ lọc màu, đơn giản bạn chỉ cần vuốt để xem trước và áp dụng những bộ lọc màu khác nhau để có được bức ảnh đúng như ý muốn. Dù là chỉnh sửa đơn giản hay chuyên sâu, điện thoại cũng đáp ứng một cách hoàn hảo để bạn tận hưởng cảm giác như là một nhiếp ảnh gia chuyên nghiệp.</div><div><br></div><div>Nhiếp ảnh chưa bao giờ dễ dàng đến thế</div><div><br></div><div>Quay, dựng, biên tập video ProRes</div><div>Bạn có thể sản xuất những bộ phim hay dự án điện ảnh chỉ bằng chiếc iPhone 13 Pro Max. Phần cứng mạnh mẽ, ống kính camera hàng đầu, nhiều tính năng và chế độ ProRes hoàn toàn mới cho phép bạn quay, dựng, biên tập video hiệu quả. Chế độ ProRes với nhiều thiết lập chuyên sâu, có thể chỉnh sửa ở ứng dụng Final Cut Pro trên máy tính Mac, tạo nên những thước phim chất lượng đáng kinh ngạc.</div><div><br></div><div>Quay, dựng, biên tập video ProRes</div><div><br></div><div>Selfie đẳng cấp Pro Max</div><div>Không chỉ đơn thuần đóng vai trò selfie, camera trước của iPhone 13 Pro Max còn tích hợp đầy đủ những tính năng cao cấp có mặt trên camera chính. Bạn có thể chụp ảnh chân dung xóa phông, chế độ chụp đêm, Smart HDR 4, Apple ProRAW, quay video 4K HDR Dolby Vison, chế độ điện ảnh Cinematic, video ProRes trên camera trước độ phân giải 12MP. Cũng không thể không nhắc đến tính năng nhận diện khuôn mặt Face ID an toàn và tiện lợi bậc nhất thế giới smartphone.</div><div><br></div><div>Selfie đẳng cấp Pro Max</div><div><br></div><div>Cảm nhận độ mượt trên từng ngón tay</div><div>iPhone 13 Pro Max lần đầu tiên trình diễn màn hình ProMotion 120Hz siêu mượt với tốc độ làm tươi nhanh gấp đôi các thế hệ trước. Tất cả những gì trên điện thoại, từ hiệu ứng chuyển cảnh cho đến thao tác vuốt chạm đều mượt mà hơn bao giờ hết.</div><div><br></div><div>Bạn có thể cảm nhận rõ rệt kể cả khi sử dụng những tác vụ thông thường hay chơi game nặng. Thậm chí màn hình của nó còn tự động điều chỉnh tần số quét linh hoạt từ 10 đến 120Hz dựa theo tác vụ bạn đang sử dụng, hiệu ứng chuyển cảnh dựa theo tốc độ ngón tay cuộn trang của bạn để mọi thứ mượt mà đến khó tin.</div><div><br></div><div>Cảm nhận độ mượt trên từng ngón tay</div><div><br></div><div>Hiệu năng không đối thủ</div><div>Apple A14 Bionic cho đến nay vẫn là con chip mạnh nhất thế giới smartphone, vì thế bạn có thể hình dung được Apple A15 Bionic với những nâng cấp đột phá mạnh mẽ đến mức nào. So với các đối thủ hiện tại trên thị trường, iPhone 13 Pro Max mạnh hơn về 50% ở cả CPU và GPU, mọi tác vụ phức tạp đều được xử lý trong chớp mắt, mọi game nặng đều được tái hiện với đồ họa sống động và mượt mà.</div><div><br></div><div>Không chỉ mang đến tốc độ cao, Apple A15 Bionic còn tích hợp bộ xử lý hình ảnh mới ISP; bảo mật an toàn dữ liệu Face ID, các thông tin cá nhân; hỗ trợ trí tuệ nhân tạo với 15,8 nghìn tỉ phép tính mỗi giây, cho phép chạy các tính năng như Cinematic hay Smart HDR 4 trơn tru và ổn định.</div><div><br></div><div>Hiệu năng không đối thủ</div><div><br></div><div>Tốc độ mạng 5G nhanh nhất</div><div>Thêm một cái nhất nữa dành cho siêu phẩm này, đây là chiếc điện thoại có tốc độ mạng 5G nhanh nhất thế giới hiện tại. Với việc trang bị nhiều băng tần 5G, tương thích với nhiều nhà mạng ở các quốc gia khác nhau, iPhone 13 Pro Max luôn cho tốc độ mạng tối đa. Bạn có thể xem phim 4K mượt mà, tải tệp tin trong chớp mắt, chơi game online không độ trễ ở bất cứ đâu.</div><div><br></div><div>Tốc độ mạng 5G nhanh nhất</div></div>','iphone-13-pro-max-graphite-600x600.jpg','2023-02-01 12:12:12.203000','2023-06-03 06:48:29.511000',_binary '',_binary '',25000000,35900000,69000000,0,0,0,0,13,1,'S','Đen','Cotton','HUYNH Y',18.00,_binary '\0',4.00,'A01','C0100002'),(41,'Laptop Gaming MSI Alpha 17 B5EEK 031VN Radeon RX6600M 8GB Ryzen 7 5800H 8GB 512GB 17.3” IPS 144Hz RGB','Laptop-Gaming-MSI-Alpha-17-B5EEK-031VN-Radeon-RX6600M-8GB-Ryzen-7-5800H','<div>Túi chống sốc.</div><div>Ram Laptop DDR4 8GB chỉ 450.000đ (khi mua kèm Laptop).</div><div>Ram Laptop DDR4 16GB chỉ 850.000đ (khi mua kèm Laptop).</div><div>Ram Laptop DDR5 8GB chỉ 890.000đ (khi mua kèm Laptop).</div><div>Nhận ngay Pad chuột size xxxl khi đánh giá 5 sao.</div><div>Giảm ngay 50.000đ khi mua thêm Gaming Gear.</div><div>Giảm ngay 100.000đ khi mua thêm Màn hình.</div><div>Đổi mới trong 7 ngày (nếu lỗi phần cứng).</div><div>Miễn phí vệ sinh máy.</div><div>Miễn phí giao hàng toàn quốc</div>',_binary '<div>Mô tả</div><div>MSI Alpha 17 B5EEK 031VN</div><div>MSI Alpha 17 B5EEK 031VN</div><div>ĐƯỢC HỖ TRỢ BỞI CÔNG NGHỆ TIÊN TIẾN NHẤT</div><div><br></div><div>MSI Alpha 17 B5EEK 031VN được xây dựng bằng công nghệ 7nm đột phá mới nhất. Bộ xử lý di động AMD Ryzen ™ 7 5800H. Với Đồ họa di động Radeon ™ RX 6600M mang đến hiệu suất ngang tầm máy tính để bàn trong máy tính xách tay chơi game. Tận hưởng trải nghiệm chơi game và đa phương tiện sống động.</div><div><br></div><div>ĐÈN NỀN BÀN PHÍM</div><div>Tùy chỉnh bàn phím ánh sáng RGB của bạn với Mystic Light từ Trung tâm MSI để phù hợp với phong cách chơi game độc ​​đáo của bạn.</div><div><br></div><div>MÀN HÌNH MƯỢT MÀ</div><div>Màn hình máy tính xách tay chơi game MSI Alpha 17 B5EEK 031VN được thiết kế riêng và tối ưu hóa cao cho các game thủ. Với tốc độ làm mới cao và hình ảnh mượt mà. Nó trở thành sự hỗ trợ tối ưu giúp game thủ trở thành kẻ bất khả chiến bại.</div><div><br></div><div>TẢN NHIỆT COOLER BOOST 5</div><div>Các giải pháp tản nhiệt chuyên dụng cho CPU và GPU với tối đa 6 ống dẫn nhiệt. Bằng cách mở rộng đường kính bên trong của ống dẫn nhiệt. Và sử dụng mỡ tản nhiệt độc quyền của MSI Alpha 17 B5EEK 031VN để đảm bảo hiệu suất tối đa khi chơi game khắc nghiệt.</div><div><br></div><div>ÂM THANH</div><div>MSI Alpha 17 B5EEK 031VN đắm mình trong âm nhạc lossless và tận hưởng chất lượng âm thanh cao cấp với âm thanh độ phân giải cao, trải nghiệm và nghe âm thanh theo cách nó đã dự định.</div><div><br></div><div>MSI CENTER</div><div>MSI Dragoncenter độc quyền giúp bạn kiểm soát và tùy chỉnh máy MSI Alpha 17 B5EEK 031VN của mình theo cách bạn muốn. Giám sát, điều chỉnh, tối ưu hóa và có thể các tính năng hữu ích được xây dựng trong một hệ thống thống nhất. Nó mang lại sự linh hoạt tối đa với các chức năng mới như Smart Image Finder, tùy chọn UI Skin.</div><div><br></div><div>WIFI 6</div><div>Wi-Fi 6 mới nhất có tiêu chuẩn 802.11ax và nhanh hơn gấp 3 lần so với Wi-Fi 5. Được thiết kế để mang đến trải nghiệm giải trí, phát trực tuyến tốt nhất và trải nghiệm giao tiếp sống động nhất. Chơi trên các cài đặt chơi game tối ưu nhất với Wi-Fi 6.</div>','dell-vostro-3510-i5-p112f002bbl-(14).jpg','2023-02-01 12:13:01.150000','2023-06-03 06:49:11.646000',_binary '',_binary '',12000,50000,10000,1,1,1,1,10,2,'S','Đen','Cotton','HUYNH Y',11.00,_binary '\0',11.00,'A01','C0100002'),(42,'Mac mini M1 2020 Silver (MGNT3SA/A)','Mac-mini-M1-2020-Silver','<div>Giảm ngay 50.000đ khi mua thêm Gaming Gear.</div><div>Giảm ngay 100.000đ khi mua thêm Màn hình.</div><div>Đổi mới trong 7 ngày (nếu lỗi phần cứng).</div><div>Miễn phí vệ sinh máy.</div><div>Miễn phí giao hàng toàn quốc</div>',_binary '<div><div>Mac Mini 2020 M1(MGNT3SA/A) gây ấn tượng cho người dùng với thiết kế nhỏ gọn, tiện lợi cùng sức mạnh vượt trội đến từ con chip M1 mạnh mẽ, đáp ứng mọi nhu cầu văn phòng, đồ họa chuyên nghiệp.</div><div>Khám phá sức mạnh tiềm năng đến từ con chip M1</div><div>Được trang bị bộ vi xử lý độc quyền đến từ nhà Apple với 8 lõi trong CPU gồm 4 lõi hiệu năng cao và 4 lõi tiết kiệm điện, giúp bạn xử lý tốt các công việc nhẹ như lướt web, nghe nhạc, xem phim,... hay thậm chí là vận hành trơn tru những tác vụ nặng như chỉnh sửa hình ảnh, render video,... mang đến hiệu suất vượt trội gấp 3 lần so với thế hệ tiền nhiệm nhờ tiến trình 5 nm và 16 tỷ bóng bán dẫn.</div><div><br></div><div>Mac Mini 2020 M1(MGNT3SA/A) - Hiệu năng từ M1</div><div>Đi kèm theo đó là 8 nhân GPU mạnh mẽ gia tăng khả năng thiết kế đồ họa, dựng phim,... trên các ứng dụng như Photoshop, Illustrator, Final Cut,... được diễn ra mạch lạc với mức xung nhịp lớn.</div><div><br></div><div>Mac Mini được cấu hình với bộ nhớ RAM 8 GB cho khả năng đa nhiệm mượt mà và có độ trễ thấp, giúp chiếc máy tính của bạn luôn chạy mượt mà giữa các ứng dụng cùng lúc mà không lo giật lag, đồng thời chia sẻ dữ liệu giữa CPU, GPU và Neural Engine hay mở hàng loạt layer trong phần mềm đồ họa một cách trơn tru, hiệu quả.</div><div><br></div><div>Mac Mini 2020 M1(MGNT3SA/A) - Hiệu năng vượt trội</div><div>Ổ cứng SSD 512 GB cho tốc độ đọc ghi và phản hồi dữ liệu nhanh chóng, đồng thời cung cấp không gian lưu trữ đủ để bạn tải các tệp tin hữu ích hay những bộ phim yêu thích về máy, phục vụ tối đa nhu cầu học tập và làm việc hằng ngày.</div><div><br></div><div>Chạy trên hệ điều hành macOS Big Sur với giao diện hiện đại, Mac mini mang lại những trải nghiệm thú vị cho người dùng với những tính năng hữu ích tích hợp cùng lớp bảo mật cao đến từ con chip Apple M1, đảm bảo an toàn cho mọi thông tin cá nhân khi bạn đang lướt web hay làm việc.&nbsp;</div><div>Nhỏ gọn, linh hoạt và tinh tế trên từng đường nét</div><div>Sở hữu thiết kế khối vuông hiện đại với những đường nét bo tròn tinh tế, Mac mini M1 2020 mang đến cảm giác mềm mại nhưng không kém phần sang trọng với sắc bạc hiện đại, độ dày 36 mm và khối lượng chỉ vỏn vẹn 1.2 kg, giúp người dùng di chuyển tiện lợi đồng thời tiết kiệm được lượng điện năng đáng kể hơn so với thế hệ trước.</div><div><br></div><div>Mac Mini 2020 M1(MGNT3SA/A) - Thiết kế nhỏ gọn</div><div>Nhờ thiết kế siêu di động đặc biệt, nhà Apple đã mở ra một khái niệm mới cho máy tính để bàn, không còn là những cỗ máy CPU to lớn, cồng kềnh như các dòng khác, ngược lại bạn có thể bố trí ở bất cứ nơi đâu bạn thích mà không sợ chiếm quá nhiều không gian.</div><div><br></div><div>Bộ vi xử lý Secure Enclave cho khả năng bảo mật tối ưu với cơ chế mã hóa lưu trữ dữ liệu AES trên ổ cứng chuyên dụng, xác định danh tính với Apple ID cho bạn độ an toàn gần như là hoàn hảo.</div><div><br></div><div>Mac Mini 2020 M1(MGNT3SA/A) - Thiết kế nhỏ gọn tinh tế</div><div>Tuy sở hữu thiết kế nhỏ gọn nhưng mức độ tản nhiệt trên máy vẫn là một điểm cộng lớn cho chiếc máy tính để bàn Apple khi được trang bị hệ thống quạt lớn hơn với lỗ thông hơi mở rộng và bộ nguồn linh hoạt giúp luồng không khí được lưu thông tốt hơn, mang lại hiệu suất tối ưu khi hoạt động.</div><div><br></div><div>Đa dạng các cổng kết nối hiện đại</div><div>Máy được trang bị đầy đủ các cổng kết nối phổ biến hiện nay như 2 cổng USB A, HDMI, Jack 3.5 mm, LAN (RJ45) và đặc biệt là 2 cổng Thunderbolt 4 với tốc độ truyền tải lên đến 40 GB/s, hỗ trợ kết xuất hình ảnh chất lượng 6K sắc nét đồng thời giúp máy tương thích với nhiều thiết bị ngoại vi khác.</div><div><br></div><div>Mac Mini 2020 M1(MGNT3SA/A) - Cổng kết nối</div><div>Hai kết nối không dây chuẩn Bluetooth 5.0 và Wi-Fi 6 AX201 cho tốc độ truyền tải dữ liệu nhanh chóng và chính xác hơn với băng thông lên đến 10.000 Mbps, đảm bảo đường truyền luôn trong trạng thái ổn định mà không lo bị giật lag.</div><div><br></div><div>Với thiết kế nhỏ gọn cùng những thông số kỹ thuật mạnh mẽ, Mac mini M1 2020 sẽ là một chiếc máy tính để bàn mới mẻ mang đến những trải nghiệm thú vị cho người dùng trong các tác vụ văn phòng thường ngày hay thiết kế đồ họa chuyên nghiệp.</div></div>','mac-mini-2020-m1-8-core-8gb-512gb-silver-mgnt3sa-a-600x600.jpg','2023-02-01 12:20:21.992000','2023-06-03 06:49:39.676000',_binary '',_binary '',50000,6000000,0,0,0,0,0,13,4,'S','Đen','Cotton','HUYNH Y',18.00,_binary '\0',3.00,'A01','C0100002'),(43,'CPU Intel Core i9-13900K (5.8 GHz, 24 Nhân 32 Luồng, 36M Cache, Raptor Lake)','CPU-Intel-Core-i9-13900K-','<br>',_binary '<div>Intel Core i9 13900K là CPU cao cấp nhất trong dòng sản phẩm Thế hệ thứ 13 của Intel. So với i9-12900K thế hệ thứ 12 của năm ngoái, i9 13900K thế hệ thứ 13 mới đi kèm với một số nâng cấp như chipset mới, nhiều lõi hơn, xung nhịp tăng tốc cao hơn và những thứ khác.</div><div><br></div><div>1. Tổng Quan Về Intel Core i9 13900k</div><div>Core i9 13900K vẫn sẽ là mẫu CPU cao cấp nhất của Intel với tổng cộng 24 nhân và 32 luồng, trong đó là 8 P-Core (Nhân hiệu năng cao) và 16 E-Core (Nhân tiết kiệm điện).&nbsp;</div><div><br></div><div>CPU thế hệ thứ 13 của Intel vẫn sử dụng socket LGA 1700 như thế hệ 12 tiền nhiệm nên người dùng cũng không phải lo lắng quá nhiều về việc phải nâng cấp bo mạch chủ nếu muốn sở hữu những chiếc CPU này. Với mức tiêu thụ điện là 125W xung nhịp boost của Core i9 13900K có thể đạt tới ngưỡng 5.8 GHz Và được trang bị một số công nghệ mới.</div><div><br></div><div>CPU Intel Core i9-13900K</div><div><br></div><div>#Kiến trúc hồ Raptor</div><div>Các CPU thế hệ thứ 13 mới của Intel được thiết kế trên kiến ​​trúc Raptor Lake . Bộ xử lý Intel Core i9, i7 và i5 mới nhất được tạo ra bằng cách sử dụng nút quy trình sản xuất 10nm mà Intel đã đặt tên là Intel 7 (một tên gây nhầm lẫn cho nút 10nm). Theo Intel, kiến ​​trúc mới đã được tinh chỉnh để mang lại hiệu quả tốt hơn, với biến thể i9 lần này có số lượng lõi cao hơn.</div><div><br></div><div>Core i9 13900K được xây dựng trên thiết kế lai cải tiến, với 24 lõi và 32 luồng . Đây là một sự gia tăng đáng kể so với i9-12900K của thế hệ trước, có 16 lõi và 24 luồng. Ngoài ra, còn có 32MB L2 Cachetrên i9-13900K, so với 14 MB trên i9-12900K. Bộ nhớ đệm L3 cũng tăng lên, với 36MB Bộ nhớ đệm L3 trên i9-13900K so với 30MB trên i9-12900K.</div><div><br></div><div>Về hiệu suất trên mỗi watt, được sử dụng để đo mức độ hiệu quả của kiến ​​trúc bộ xử lý, Intel tuyên bố rằng Core i9 13900K thế hệ thứ 13 của họ (công suất giới hạn ở 65 watt) có thể sánh ngang với hiệu suất của Core i9-12900K. cần 241 watt cho cùng một sức mạnh tính toán.</div><div><br></div><div>Rõ ràng, kiến ​​trúc Raptor Lake mới của CPU thế hệ thứ 13 của Intel tốt hơn một chút và tiêu thụ ít năng lượng hơn mặc dù sử dụng quy trình sản xuất 10nm đã lỗi thời. Core i9 13900K cũng có tốc độ xung nhịp tăng cao hơn là 5,8 GHz , so với 5,2 GHz của CPU i9 năm ngoái. Tuy nhiên, đồng hồ cơ sở đã giảm 200 MHz xuống còn 5,0 GHz. Điều này đã được thực hiện bằng sự lựa chọn để điều chỉnh hiệu suất trong chế độ Turbo Boost.</div><div><br></div><div>#Chipset bo mạch chủ Z790 mới</div><div>Bên cạnh CPU thế hệ thứ 13, Intel cũng phát hành bo mạch chủ sê-ri 700 mới và chipset của họ mang đến một số nâng cấp lặp đi lặp lại. Chỉ có những khác biệt nhỏ giữa bo mạch chủ Z690 và Z790, với bo mạch chủ sau này cũng dựa trên gói LGA 1700 dưới dạng bộ xử lý máy tính để bàn Alder Lake thế hệ thứ 12.</div><div><br></div><div>Hơn nữa, bo mạch chủ Z790 hỗ trợ thêm một cổng USB 3.2 Gen 2×2 , cổng này có tốc độ 20Gbps. I/O khác không thay đổi và bản nâng cấp khác bao gồm nhiều làn PCI-E 4.0 hơn. Điều này thật tuyệt vời khi chạy các ổ SSD NVMe Gen 4 bổ sung. Thunderbolt 4 cũng được áp dụng rộng rãi hơn trong các bo mạch Z790. Có hỗ trợ tốt hơn cho tiêu chuẩn NVMe Gen 5 sắp tới.</div><div><br></div><div>Có, bo mạch chủ Z690 và B660 từ năm ngoái hỗ trợ cả bộ xử lý Intel Raptor Lake thế hệ thứ 13 và Alder Lake thế hệ thứ 12. Nhưng chúng tôi khuyên bạn nên xác nhận tính tương thích trên trang web của nhà sản xuất trước khi mua hàng. Ngoài ra, bạn có thể cần cập nhật BIOS trước khi cài đặt CPU thế hệ thứ 13 mới.</div><div><br></div><div>#Hỗ trợ DDR5 &amp; PCI-E 5.0</div><div>Tiếp theo, Intel đã tăng hỗ trợ riêng cho bộ nhớ DDR5 lên 5600MHz với bộ xử lý Raptor Lake thế hệ thứ 13. Alder Lake thế hệ thứ 12 hỗ trợ bộ nhớ DDR5 lên đến 4800MHz. Tuy nhiên, điều này khác với tần số RAM được hỗ trợ tối đa của bo mạch chủ, có thể cao hơn nhiều. Trước đây, hầu hết các bo mạch chủ Z690 đều không có khe cắm M.2 hỗ trợ PCI-E 5.0. Điều này hiện đã thay đổi, với nhiều bo mạch chủ hỗ trợ tính năng này, giúp hỗ trợ PCI-E 5.0 trong Raptor Lake trở nên phù hợp hơn trong tương lai.</div><div><br></div><div>Tuy nhiên, nếu bạn đang tự hỏi liệu bộ vi xử lý Intel Raptor Lake có hỗ trợ bộ nhớ DDR4 hay không, câu trả lời là có. CPU thế hệ thứ 13 tương thích với bo mạch chủ B660/ Z690/ Z790 sử dụng RAM DDR4 nhưng chúng tôi khuyên dùng bộ nhớ DDR5 so với DDR4 cho các bản dựng có bộ xử lý i7 và i9.</div><div><br></div><div>2. Intel Core i9 13900K: Điểm chuẩn và Hiệu suất</div><div>Tất cả các thử nghiệm của chúng tôi được thực hiện trên Core i9-13900K đều được thực hiện khi tắt MCE (Cải tiến đa lõi). Giới hạn công suất cổ phiếu của Intel cũng được thực thi. Về cơ bản, không có cải tiến bo mạch chủ nào được kích hoạt vì những tối ưu hóa đó sẽ khác nhau tùy thuộc vào bo mạch được sử dụng. Mục đích của chúng tôi là giới thiệu i9-13900K với mức độ tiếp xúc tối thiểu với các cải tiến bên ngoài để làm nổi bật hiệu suất vượt trội của nó. Vì vậy, hãy xem điểm chuẩn của CPU Core i9 thế hệ thứ 13:</div><div><br></div><div>#Điểm chuẩn tổng hợp</div><div>Core i9 13900K lần đầu tiên trải qua một loạt các thử nghiệm tổng hợp. Mục đích của chúng tôi là đo lường hiệu suất thô của bộ xử lý và so sánh nó với các bộ xử lý i9 &amp; i7 thế hệ trước khác. Ngoài ra, chúng tôi cũng đã thử nghiệm Core i7-13700K (đơn vị Beebom) để cho thấy sự khác biệt giữa biến thể i9 hàng đầu so với biến thể i7.</div><div><br></div><div>3. Tổng kết</div><div>Nhìn chung với sự bùng nổ của Intel Core thế hệ thứ 12 Alder Lake thì những chỉ số của Intel Core thế hệ thứ 13 Raptor Lake là không quá vượt trội nhưng vẫn để lại ấn tượng theo một vài khía cạnh nào đó. Chúng vẫn sẽ là những CPU rất đáng để sở hữu, đặc biệt là Core i9 13900K - một mẫu CPU hi-end của thế hệ này với khả năng xử lý dữ liệu vô cùng khủng khiếp khi mà chúng ta đã được chứng kiến người tiền nhiệm của nó là Core i9 12900K đã làm tốt như thế nào để đưa Intel lên dẫn trước với AMD.</div><div><br></div>','i9.jpg','2023-02-01 12:20:53.169000','2023-06-03 06:45:23.172000',_binary '',_binary '',500000,1564500,154000,0,0,0,0,17,27,'S','Đen','Cotton','HUYNH Y',5.00,_binary '',5.00,'A01','A0100006'),(46,'Nguồn Asus ROG Thor 1000P2 1000W Platinum','Nguồn-Asus-ROG-Thor-1000P2-','<div>Giảm thêm tới 1% cho thành viên Smember (áp dụng tùy sản phẩm)</div><div>Bảo vệ sản phẩm toàn diện với dịch vụ bảo hành mở rộng</div><div>Thu cũ đổi mới: Giá thu cao - Thủ tục nhanh chóng - Trợ giá tốt nhất</div>',_binary '<div>Nguồn ASUS ROG THOR – 1000P2 Gaming Platinum – 1000W</div><div>Bộ tản nhiệt ROG có khối lượng lớn hơn gấp 2 lần so với các thiết kế truyền thống, giúp tản nhiệt hiệu quả hơn hơn tăng tuổi thọ linh kiện&nbsp; kéo dài hoạt động 0dB.</div><div><br></div><div>Công nghệ fan Axial với kích thước 135mm của quạt tản nhiệt làm mát hiệu quả</div><div><br></div><div>Thiết kế thông minh với công nghê 0dB giúp nguồn hoạt đông luôn yên tĩnh khi công suất hoạt động dưới mức 50%</div>','nguonasus.jpg','2023-02-01 12:53:05.089000','2023-06-03 06:50:49.296000',_binary '',_binary '',500000,5000000,1000000,0,0,0,0,4,27,'S','Đen','Cotton','HUYNH Y',4.00,_binary '\0',1.00,'A01','C0100002'),(47,'Laptop Gaming Acer Aspire 7 A715-42G-R05G GTX 1650 4GB Ryzen 5 5500U 8GB 512GB 15.6 FHD 144Hz IPS ','Laptop-Gaming-Acer-Aspire-7-A715-42G-R05G-GTX-1650-4GB-Ryzen-5-5500U-8GB-512GB-15.6-FHD-144Hz-IPS-','sản phầm bla nla.....',_binary '<div>cái gì đây ?&nbsp; &nbsp;&nbsp;<div style=\"text-align:center;\"><img src=\"https://product.hstatic.net/1000026716/product/dell_u2422h_gearvn_e8dfce5719b0455aa386bf41352592cd_large.jpg\"></div></div>','msi1.jpeg','2023-02-01 12:59:14.842000','2023-06-03 06:49:05.066000',_binary '',_binary '',14000000,14000000,0,0,0,0,0,6,2,'S','Đen','Cotton','HUYNH Y',12.00,_binary '',5.00,'B01','B0100004'),(48,'Ghế Gaming Galax RGB GC-01S Black','Ghế-Gaming-Galax-RGB-GC-01S-Black','<div>Góc: 90 – 180 độ</div><div>Chiều rộng mặt sau: 53cm</div><div>Chiều rộng mặt ghế: 52cm</div><div>Chân ghế khung sắt</div><div>Gas Lift: 100mm Class 4 được chứng nhận SGS</div><div>Có RGB</div><div>Phụ kiện: Tựa đầu, Gối thắt lưng</div>',_binary '<div><div>Ghế Galax Gaming Chair GC-01S RGB Black</div><div>Ghế Galax Gaming Chair GC-01S RGB Black là một sản phẩm ghế gaming đầy tính năng và tiện ích cho các game thủ chuyên nghiệp. Với thiết kế hiện đại và chất lượng vật liệu cao cấp, ghế Galax Gaming Chair GC-01S RGB Black sẽ đem lại trải nghiệm ngồi thoải mái và êm ái cho người sử dụng. Ngoài ra, với hệ thống đèn LED RGB, ghế này còn giúp trang trí và tạo điểm nhấn cho không gian chơi game của bạn.</div><div><br></div><div>Để hiểu rõ hơn về sản phẩm, chúng ta hãy cùng điểm qua một số thông số kỹ thuật đáng chú ý của ghế Galax Gaming Chair GC-01S RGB Black:</div><div><br></div><div>Vật liệu bọc ghế: da PU cao cấp, chân ghế bằng nhôm</div><div><br></div><div>Điều chỉnh độ cao của ghế, tay ghế và góc nghiêng của tựa lưng</div><div><br></div><div>Hỗ trợ trọng lượng tối đa: 150kg</div><div><br></div><div>Đệm ngồi và tựa lưng êm ái và thoải mái</div><div><br></div><div>Hệ thống đèn LED RGB</div><div><br></div><div>Galax Gaming Chair GC-01S RGB Black là một sản phẩm cao cấp, được thiết kế đặc biệt để đáp ứng nhu cầu của các game thủ chuyên nghiệp. Với vật liệu bọc da PU cao cấp và chân ghế bằng nhôm, ghế này đem lại sự bền bỉ và độ ổn định cao, đồng thời tạo cảm giác thoải mái và êm ái cho người sử dụng.</div><div><br></div><div>Hệ thống điều chỉnh độ cao, tay ghế và góc nghiêng của tựa lưng Galax Gaming GC-01S RGB Black giúp người sử dụng có thể tùy chỉnh để phù hợp với thói quen sử dụng và tránh tình trạng mỏi lưng. Đệm ngồi và tựa lưng êm ái và thoải mái cùng với khả năng hỗ trợ trọng lượng tối đa lên đến 150kg giúp người sử dụng có thể ngồi lâu mà không bị đau mỏi.</div><div><br></div><div>Ngoài ra, hệ thống đèn LED RGB trên Galax GC-01S RGB Black giúp tạo điểm nhấn cho không gian chơi game của bạn. Bạn có thể tùy chỉnh màu sắc và hiệu ứng ánh sáng của đèn LED theo ý thích để tạo ra một không gian chơi game độc đáo và ấn tượng.</div></div>','ghegalax2.png','2023-02-01 13:07:28.767000','2023-06-03 08:15:16.906000',_binary '',_binary '',2500000,4500000,1000000,50,50,20,5,9,89,'S','Đen','Cotton','HUYNH Y',25.00,_binary '\0',1.00,'D01','D0100001'),(51,'Laptop Dell Vostro 5620 i5 1240P/8GB/256GB/OfficeHS/Win11','Laptop-Dell-Vostro-5620-i5-1240P','<div>Túi chống sốc.</div><div>Ram Laptop DDR4 8GB chỉ 450.000đ (khi mua kèm Laptop).</div><div>Ram Laptop DDR4 16GB chỉ 850.000đ (khi mua kèm Laptop).</div><div>Ram Laptop DDR5 8GB chỉ 890.000đ (khi mua kèm Laptop).</div><div>Nhận ngay Pad chuột size xxxl khi đánh giá 5 sao.</div><div>Giảm ngay 50.000đ khi mua thêm Gaming Gear.</div><div>Giảm ngay 100.000đ khi mua thêm Màn hình.</div><div>Đổi mới trong 7 ngày (nếu lỗi phần cứng).</div><div>Miễn phí vệ sinh máy.</div><div>Miễn phí giao hàng toàn quốc</div>',_binary '<div><div>Laptop Dell Vostro 5620 i5 (V6I5001W1) có lối thiết kế đơn giản nhưng hiện đại, sở hữu cấu hình mạnh mẽ đến từ bộ vi xử lý Intel Gen 12 đi cùng màn hình kích thước lớn hỗ trợ mình giải quyết mọi tác vụ trong cả công việc và học tập.</div><div>Cấu hình mạnh mẽ đáp ứng đa nhu cầu khác nhau</div><div>Mang trong mình bộ vi xử lý Intel Core i5 1240P với điểm số Cinebench R23 mình đo được là 6196 điểm đa nhân và 1611 điểm đơn nhân, chiếc laptop học tập - văn phòng này hỗ trợ mình làm việc, học tập một cách mượt mà trên các phần mềm văn phòng như Word, Excel, PowerPoint,... cũng như thoả mãn niềm đam mê chỉnh sửa hình ảnh 2D cơ bản trên các ứng dụng của nhà Adobe như Photoshop, Illustrator,... nhờ card đồ họa tích hợp Intel UHD.&nbsp;</div><div><br></div><div>Dell Vostro 5620 i5 (V6I5001W1) - Cinebench R23</div><div><br></div><div>Bộ đôi Windows 11 Home SL + Office Home &amp; Student vĩnh viễn được tích hợp sẵn trong máy mang đến sự tiện lợi, hỗ trợ mình hoàn thành công việc tốt hơn trong thời gian ngắn hơn, hơn nữa dữ liệu còn luôn được bảo đảm an toàn khi sao lưu trên OneDrive.</div><div><br></div><div>Laptop RAM 8 GB chuẩn DDR4 có khả năng xử lý trơn tru tác vụ đa nhiệm, mình không cần phải phân vân đóng các ứng dụng trong quá trình sử dụng thông thường. Đối với mình 8 GB cũng đã đủ đáp ứng mọi nhu cầu nhưng để nâng cao thêm khả năng đa nhiệm và kích hoạt Dual Channel thì bạn có thể nâng cấp RAM cho máy lên đến tối đa 32 GB sử dụng cho thoải mái.&nbsp;</div><div><br></div><div>Dell Vostro 5620 i5 (V6I5001W1) - Làm việc</div><div><br></div><div>Mở máy hay khởi động ứng dụng cũng đều nhanh chóng nhờ tốc độ truy xuất dữ liệu nhanh từ ổ cứng SSD 256 GB NVMe PCIe, không gian bộ nhớ hơi hạn hẹp nhưng bù lại mình có thể tải dữ liệu lên OneDrive của Microsoft để lưu trữ mà không cần phải lo nghĩ quá nhiều về việc xóa những thứ mình còn cần dùng đến.</div><div><br></div><div>Dell Vostro 5620 i5 (V6I5001W1) - Cấu hình</div><div><br></div><div>Laptop được trang bị pin 54 Wh cho mình thời gian sử dụng khoảng 4.5 tiếng với các tác vụ văn phòng, cụ thể mình mở hơn 10 tabs Chrome, độ sáng màn hình 100%, luôn kết nối Wi-Fi và nghe nhạc liên tục. Thời lượng pin của máy đáp ứng đủ cho một buổi sử dụng ở quán cà phê hay trên lớp học.</div><div><br></div><div>Màn hình lớn làm việc, giải trí đều thoải mái</div><div>Màn hình kích thước lớn 16 inch cùng tỷ lệ khung hình 16:10 lớn hơn 11% so với tỷ lệ 16:9 mang đến cho mình không gian lớn hơn, có thể chia nhiều cửa sổ để làm việc đồng thời rất tiện lợi. Độ phân giải Full HD+ (1920 x 1200) cho khả năng hiển thị hình ảnh với độ sắc nét cao, mọi nội dung đều được thể hiện rõ nét với màu sắc chân thực và sống động, khi giải trí xem phim rất đã mắt.</div><div><br></div><div>Dell Vostro 5620 i5 (V6I5001W1) - Màn hình</div><div><br></div><div>Sự kết hợp giữa công nghệ chống chói Anti Glare và WVA mở rộng góc nhìn, cho phép mình nhìn được nội dung hiển thị trên màn hình từ nhiều góc khác nhau mà hình ảnh không bị biến dạng gây khó chịu, chia sẻ thông tin đến cho những người ngồi bên cạnh cũng dễ dàng hơn nhiều, không cần xoay máy tốn thời gian.</div><div><br></div><div>Độ sáng màn hình 250 nits vẫn đảm bảo nội dung hiển thị rõ nét khi mình làm việc ở văn phòng có ánh đèn điện cao, nhưng sẽ hơi tối một chút khi mình sử dụng ở quán cà phê hay những nơi có ánh sáng mạnh như cạnh cửa sổ. Màn hình theo cảm nhận về mặt thị giác của mình thì hơi bị ám xanh, nhưng có thể tinh chỉnh trong Cài đặt của Windows.</div><div><br></div><div>Dell Vostro 5620 i5 (V6I5001W1) - Làm việc đa nhiệm</div><div><br></div><div>Các thông số màn hình mà mình đo đạc bằng công cụ Spyder 5 Pro được 64% sRGB, 48% Adobe RGB và 48% DCI-P3. Những con số trên vẫn có thể đáp ứng tốt nhu cầu sử dụng thông thường của mình với các tác vụ làm việc văn phòng, giải trí xem phim hoặc chỉnh sửa hình ảnh cơ bản, còn đối với những bạn chuyên chỉnh màu hoặc làm việc với hình ảnh thì nên cân nhắc hơn.</div><div><br></div><div>Dell Vostro 5620 i5 (V6I5001W1) - Thông số màn hình</div><div><br></div><div>Laptop Dell được trang bị công nghệ âm thanh Realtek Audio mang đến cho mình trải nghiệm giải trí cực kỳ đã nhờ chất âm to rõ, mạnh mẽ và độ khuếch đại lớn, kể cả nghe nhạc Remix hay xem phim hành động cũng đều hay.</div><div><br></div><div>Thân hình gọn gàng phù hợp mọi đối tượng</div><div>Laptop Dell Vostro có ngoại hình lớn đúng chuẩn một chiếc laptop 16 inch, bù lại độ mỏng chỉ 18 mm cùng khối lượng 1.97 kg vẫn tương đối gọn để mình có thể bỏ vừa trong một ngăn của balo, đem theo bên mình đi mọi nơi để phục vụ cho công việc và giải trí khi cần. Nắp lưng và chiếu nghỉ tay của máy được làm bằng kim loại sơn màu xám trông rất sang trọng, dùng máy ở quán cà phê luôn thu hút được ánh nhìn từ những người xung quanh.</div><div><br></div><div>Dell Vostro 5620 i5 (V6I5001W1) - Thiết kế</div><div><br></div><div>Phía dưới bản lề máy được trang bị một dải cao su dài giúp giải quyết vấn đề trầy xước máy. Nhờ vào kích thước máy lớn nên bố cục bàn phím cũng được bố trí rộng rãi, có đầy đủ cả khu vực bàn phím số để mình nhập liệu thêm dễ dàng hơn. Hành trình phím tương đối tốt, độ nảy vừa phải phù hợp để soạn thảo văn bản hay viết lách khi gõ lướt rất nhanh.&nbsp;</div><div><br></div><div>Dell Vostro 5620 i5 (V6I5001W1) - Bàn phím</div><div><br></div><div>Máy có cả cảm biến vân tay tích hợp ngay trên nút nguồn hỗ trợ cho mình mở khóa máy nhanh chóng và đồng thời cũng bảo mật thông tin cá nhân, tránh được sự nhòm ngó từ những người có cơ hội đụng chạm đến máy.</div><div><br></div><div>Bàn phím hỗ trợ đèn nền với hai mức sáng khác nhau, cho phép mình hoàn thành công việc tốt hơn trong các môi trường thiếu sáng hay về đêm, hạn chế được tình trạng gõ nhầm phím gây khó chịu. Bàn di chuột của máy cũng được hoàn thiện tốt với kích thước lớn, khả năng di vuốt cũng rất mượt mà không có gì để chê cả.</div><div><br></div><div>Dell Vostro 5620 i5 (V6I5001W1) - Bàn phím hỗ trợ đèn nền</div><div><br></div><div>Cổng kết nối của máy đáp ứng đủ mọi nhu cầu sử dụng của mình, các cổng như USB 3.2, Jack tai nghe 3.5 mm, USB Type-C cho phép mình sử dụng các thiết bị ngoại vi cần thiết như chuột, bàn phím, tai nghe cùng lúc. Cổng HDMI xuất hình ảnh hay bài thuyết trình lên máy chiếu, cổng mạng LAN (RJ45) hỗ trợ mình kết nối mạng dây để có đường truyền nhanh và ổn định hơn, khe đọc thẻ nhớ SD không cần thiết đối với mình nhưng lại cực kỳ hữu ích cho những bạn sử dụng máy ảnh.</div><div><br></div><div>Dell Vostro 5620 i5 (V6I5001W1) - Cổng kết nối</div><div><br></div><div>Với lối thiết kế thanh lịch, màn hình kích thước lớn và cấu hình mạnh mẽ từ bộ vi xử lý Intel Gen 12, Dell Vostro 5620 i5 (V6I5001W1) đáp ứng được mọi nhu cầu của mình trong cả công việc hay giải trí.</div></div>','dell-vostro-3510-i5-p112f002bbl-(14).jpg','2023-02-01 13:11:48.542000','2023-06-03 06:48:57.569000',_binary '',_binary '',8000000,9990000,1000000,0,0,0,0,2,2,'S','Đen','Cotton','HUYNH Y',36.00,_binary '\0',3.00,'A01','A0100007'),(52,'Dell Vostro 3510 i5','Dell-Vostro-3510-i5','Sản phẩm tiêu biểu của năm',_binary '<div><h3 style=\"margin: 20px 0px 15px; padding: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-weight: bold; font-stretch: normal; font-size: 20px; line-height: 28px; font-family: Arial, Helvetica, sans-serif; color: rgb(51, 51, 51); outline: none;\"><a href=\"https://www.thegioididong.com/laptop/dell-vostro-3510-i5-p112f002bbl\" target=\"_blank\" title=\"Dell Vostro 3510 i5 (P112F002BBL) đang bán tại dienmayxanh.com\" style=\"margin: 0px; padding: 0px; transition: all 0.2s ease 0s; color: rgb(47, 128, 237); font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-stretch: normal; line-height: 18px; outline: none;\">Laptop Dell Vostro 3510 i5 (P112F002BBL)</a>&nbsp;sở hữu cấu hình mạnh mẽ, đa nhiệm mượt mà trên sức mạnh của bộ vi xử lý Intel thế hệ 11, cùng một thiết kế đơn giản mà sang đẹp, sẽ là lựa chọn đắt giá đáp ứng nhu cầu học tập, làm việc hay giải trí của bạn.</h3><h3 style=\"margin: 20px 0px 15px; padding: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-weight: bold; font-stretch: normal; font-size: 20px; line-height: 28px; font-family: Arial, Helvetica, sans-serif; color: rgb(51, 51, 51); outline: none;\">Hiệu năng mạnh mẽ, ổn định</h3><div>Được trang bị dòng chip&nbsp;<strong style=\"margin: 0px; padding: 0px;\">Intel Core i5&nbsp;Tiger Lake 1135G7</strong>&nbsp;mạnh mẽ, hoạt động trên xung nhịp cơ bản&nbsp;<strong style=\"margin: 0px; padding: 0px;\">2.4 GHz</strong>&nbsp;và ép xung lên đến&nbsp;<strong style=\"margin: 0px; padding: 0px;\">4.2 GHz</strong>&nbsp;ở chế độ Turbo Boost, Dell Vostro 3510 dễ dàng giải quyết mượt mà các tác vụ như soạn thảo hợp đồng trên Word, nhập liệu và thống kê qua Excel, tạo bảng thuyết trình cùng PowerPoint,... hay thiết kế đồ hoạ cơ bản trên các ứng dụng nhà Adobe cũng hiệu quả không kém.</div><div>Sự hỗ trợ của bộ nhớ&nbsp;<strong style=\"margin: 0px; padding: 0px;\">RAM 8 GB</strong>&nbsp;chuẩn<strong style=\"margin: 0px; padding: 0px;\">&nbsp;DDR4 2 khe</strong>&nbsp;(1 khe&nbsp;<strong style=\"margin: 0px; padding: 0px;\">8 GB</strong>&nbsp;+ 1 khe rời) với tốc độ Bus RAM lên đến<strong style=\"margin: 0px; padding: 0px;\">&nbsp;3200 MHz</strong>&nbsp;cho quá trình đa nhiệm trên&nbsp;<a href=\"https://www.dienmayxanh.com/laptop\" target=\"_blank\" title=\"Xem thêm các mẫu Laptop hiện đang kinh doanh tại dienmayxanh.com\" style=\"margin: 0px; padding: 0px; transition: all 0.2s ease 0s; color: rgb(47, 128, 237);\">laptop</a>&nbsp;càng trơn tru, ổn định hơn, không gặp tình trạng giật lag máy, đơ màn hình. Máy cho phép nâng cấp RAM lên đến&nbsp;<strong style=\"margin: 0px; padding: 0px;\">16 GB</strong>&nbsp;để tăng sức mạnh cấu hình cho những tác vụ nặng.</div><div>Bên cạnh đó, sức mạnh đồ họa từ card đồ họa rời&nbsp;<strong style=\"margin: 0px; padding: 0px;\">NVIDIA GeForce MX350 2 GB&nbsp;</strong>cải tiến khả năng xử lý đồ họa thiết kế sản phẩm poster, banner,... ấn tượng cũng hiệu render video ngắn hiệu quả, từ đó giúp tăng trải nghiệm của người dùng, bạn cũng dễ dàng thử các tựa game nhẹ nhàng thịnh hành một cách mượt mà.</div><div><a href=\"https://www.thegioididong.com/laptop?g=ssd-512-gb\" target=\"_blank\" title=\"Xem thêm một số sản phẩm laptop có ổ cứng SSD 512 Gb đang kinh doanh tại Thegioididong.com\" style=\"margin: 0px; padding: 0px; transition: all 0.2s ease 0s; color: rgb(47, 128, 237);\">Laptop SSD 512 GB</a><strong style=\"margin: 0px; padding: 0px;\">&nbsp;NVMe PCIe</strong>&nbsp;(Có thể tháo ra, lắp thanh khác tối đa&nbsp;<strong style=\"margin: 0px; padding: 0px;\">2 TB&nbsp;(2280) / 1 TB (2230)</strong>) cho phép lưu trữ khá thoải mái dữ liệu cá nhân cho công việc, giải trí, hỗ trợ khởi động máy nhanh chóng, truy xuất dữ liệu ổn định. Khi cần mở rộng không gian lưu trữ, bạn cũng có thể dùng&nbsp;<strong style=\"margin: 0px; padding: 0px;\">khe cắm HDD SATA&nbsp;</strong>(nâng cấp tối đa&nbsp;<strong style=\"margin: 0px; padding: 0px;\">2 TB</strong>).</div><div><div style=\"text-align:center;\"><img src=\"https://cdn.tgdd.vn/Products/Images/44/266280/dell-vostro-3510-i5-p112f002bbl-5-1.jpg\"></div><h3 style=\"margin: 20px 0px 15px; padding: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-weight: bold; font-stretch: normal; font-size: 20px; line-height: 28px; font-family: Arial, Helvetica, sans-serif; color: rgb(51, 51, 51); outline: none;\">Thiết kế thanh lịch, sang đẹp</h3><div><a href=\"https://www.thegioididong.com/laptop-dell-vostro\" target=\"_blank\" title=\"Một số laptop Dell Vostro đang kinh doanh tại thegioididong.com\" style=\"margin: 0px; padding: 0px; transition: all 0.2s ease 0s; color: rgb(47, 128, 237);\">Laptop Dell Vostro</a>&nbsp;có lớp vỏ ngoài bằng nhựa màu đen hiện đại, tổng thể thiết kế toát lên sự chắc chắn, sang trọng mà rất thanh lịch, các chi tiết tinh tế, đẹp mắt. Máy có khối lượng&nbsp;<strong style=\"margin: 0px; padding: 0px;\">1.69 kg</strong>, độ dày&nbsp;<strong style=\"margin: 0px; padding: 0px;\">18.9 mm</strong>&nbsp;dễ dàng để mang theo trong hành trang thường nhật cho học tập, làm việc.</div></div><div><div style=\"text-align:center;\"><img src=\"https://cdn.tgdd.vn/Products/Images/44/266280/dell-vostro-3510-i5-p112f002bbl-2-1.jpg\"></div><br></div><div><a class=\"preventdefault\" href=\"https://cdn.tgdd.vn/Products/Images/44/266280/dell-vostro-3510-i5-p112f002bbl-5-1.jpg\" style=\"margin: 0px; padding: 0px; transition: all 0.2s ease 0s; color: rgb(47, 128, 237); cursor: default;\"></a></div></div>','dell-vostro-3510-i5-p112f002bbl-(14).jpg','2023-02-01 13:12:55.488000','2023-06-03 06:46:00.030000',_binary '',_binary '',3000000,5000000,100000,0,0,0,0,2,2,'S','Đen','Cotton','HUYNH Y',20.00,_binary '\0',4.00,'B01','B0100005'),(53,'Laptop Gigabyte G5 GD-51VN123SO RTX 3050 4GB Intel Core i5 11400H 16GB 512GB 15.6″ FHD 144Hz Black','Laptop-Gigabyte-G5-GD-51VN123SO-RTX-3050-4GB-Intel-Core-i5-11400H-16GB-512GB-15.6″-FHD-144Hz-Black','<div>Túi chống sốc.</div><div>Ram Laptop DDR4 8GB chỉ 450.000đ (khi mua kèm Laptop).</div><div>Ram Laptop DDR4 16GB chỉ 850.000đ (khi mua kèm Laptop).</div><div>Ram Laptop DDR5 8GB chỉ 890.000đ (khi mua kèm Laptop).</div><div>Nhận ngay Pad chuột size xxxl khi đánh giá 5 sao.</div><div>Giảm ngay 50.000đ khi mua thêm Gaming Gear.</div><div>Giảm ngay 100.000đ khi mua thêm Màn hình.</div><div>Đổi mới trong 7 ngày (nếu lỗi phần cứng).</div><div>Miễn phí vệ sinh máy.</div><div>Miễn phí giao hàng toàn quốc</div>',_binary '<div><div>Mô tả</div><div>Laptop Gigabyte G5 GD-51VN123SO</div><div>Hiệu năng xử lý mạnh mẽ</div><div>Trang bị cho Laptop Gigabyte G5 GD-51VN123SO con chip Intel Core i5-11400H, với tốc độ xử lý tối đa đạt 4.5GHz sẻ giúp bạn tối ưu tốc độ xử lý các tác vụ từ công việc đến giải trí. Kết hợp cùng 16GB RAM đem lại khả năng đa tác vụ mượt mà, cho bạn có thể làm nhiều công việc cùng lúc; 512GB SSD cung cấp cho bạn không gian lưu trữ tài liệu khổng lồ cùng tốc độ khởi động máy nhanh.</div><div><br></div><div>Sức mạnh xử lý đồ họa đỉnh cao từ RTX</div><div>Sức mạnh từ chiếc card đồ họa RTX 3050 hứa hẹn mang đến cho Laptop Gigabyte G5 GD-51VN123SO hiệu quả xử lý tuyệt vời nhất. Mang đến những công nghệ như Ray Tracing, DLSS AI, Resizable BAR, Dynamic Boost 2.0,… Tất cả sẽ đem đến trải nghiệm chơi game, làm việc mạnh mẽ nhất cho người dùng.</div><div><br></div><div>Tản nhiệt mang đến hiệu suất cao</div><div>Hệ thống tản nhiệt WINDFORCE gồm 2 chiếc quạt 5V với 47 cánh, 4 ống dẫn nhiệt và 3 lỗ thoát khí đem lại khả năng thoát nhiệt tối ưu nhất cho Laptop Gigabyte G5 GD-51VN123SO. Hướng đến khả năng duy trì hiệu năng hoạt động mạnh mẽ và lâu dài nhất cho chiếc laptop khi sử dụng cho làm việc và chơi game.</div><div><br></div><div>Những khung hình đỉnh nhất cho game thủ</div><div>Sở hữu cho mình màn hình 15.6 inch, Laptop Gigabyte G5 GD-51VN123SO sẽ mang đến trải nghiệm thị giác tuyệt vời nhất cho game thủ. Thiết kế viền mỏng thời thường mang lại khung hình lớn hơn cùng tấm nền IPS hiển thị LCD cho góc nhìn rộng hơn, dễ dàng quan sát cho người dùng. Điểm cuốn hút các game thủ sẽ đến từ tần số quét 144Hz của chiếc màn, sẽ loại bỏ tình trạng giật lag, xé màn hình cùng độ phản hồi cao, mượt mà nhất đến cho game thủ.</div><div><br></div><div>Hệ thống cổng kết nối đa dụng</div><div>Với các kết nối DP, Mini DP và HDMI, Laptop Gigabyte G5 GD-51VN123SO hỗ trợ lên tới 3 màn hình ngoài, khiến nó trở thành một trợ thủ đắc với khả năng phát màn hình 1 + 3. Hỗ trợ tốt nhất cho công việc và tất cả các phương tiện giải trí của bạn. Cùng với đó là những cổng USB 2.0 Type-A, USB 3.2 Type-A, cổng tai nghe, đọc thẻ nhớ SD và RJ45, bạn có thể thoải mái kết nối với mọi thiết bị ngoại vi mình muốn.</div><div><br></div></div>','LaptopGamingGigabyte.png','2023-02-01 18:19:43.278000','2023-06-03 06:49:24.785000',_binary '',_binary '\0',45000000,55400000,3900000,0,0,0,0,14,2,'S','Đen','Cotton','HUYNH Y',26.00,_binary '',0.00,'D01','A0100008'),(55,'Mainboard Asus ROG Strix Z590-F Gaming Wifi','Mainboard-Asus-ROG-Strix-Z590-F-','<div>Test</div>',_binary '<div>Giới thiệu Mainboard Asus ROG Strix Z590-F Gaming Wifi</div><div>Intel® Z590 LGA 1200 ATX motherboard ROG STRIX Z590-F GAMING WIFI với PCIe 4.0, 14 + 2 tầng công suất nguồn kết hợp, Khử nhiễu hai chiều, Ép xung, Làm mát, Tối ưu mạng tất cả đều dùng công nghệ máy học AI mới nhất.</div><div><br></div><div>Mainboard Asus ROG Strix Z590-F Gaming Wifi</div><div><br></div><div>– Sẵn sàng cho bộ vi xử lý Intel® Core™ thế hệ thứ 11 và thế hệ thứ 10</div><div><br></div><div>– Giải pháp công suất tối ưu: 14 + 2 tầng nguồn với đầu nối nguồn ProCool II, cuộn cảm hợp kim chất lượng cao và tụ điện bền để hỗ trợ bộ vi xử lý đa lõi</div><div><br></div><div>– Thiết kế tản nhiệt tối ưu: tản nhiệt I/O VRM và nhôm, ống tản nhiệt hình chữ L, bốn tản nhiệt M.2 tích hợp và tấm nền M.2 cho khe cắm PCIe 4.0 M.2</div><div><br></div><div>– Kết nối mạng hiệu suất cao: Intel® WiFi 6E AX210 (802.11ax) trên bo mạch và Intel® 2.5 Gb Ethernet với ASUS LANGuard</div><div><br></div><div>– Kết nối chơi game tốt nhất: Hỗ trợ đầu ra HDMI™ 2.0 và DisplayPort 1.4, bốn khe cắm M.2, cũng như USB 3.2 Thế hệ thứ 2 2×2 USB Type-C®</div><div><br></div><div>– Điều khiển thông minh: Ép xung bằng AI độc quyền của ASUS, Làm mát bằng AI, Mạng AI và Loại bỏ tiếng ồn AI hai chiều để đơn giản hóa việc thiết lập và cải thiện hiệu suất</div><div><br></div><div>– Thiết kế thân thiện với DIY: M.2 Q-Latch, tấm chắn I/O gắn sẵn, BIOS FlashBack™, nút Clr CMOS và FlexKey</div><div><br></div><div>– Cá nhân hóa chưa từng có: Hệ thống chiếu sáng Aura Sync RGB độc quyền của ASUS, bao gồm đầu cắm RGB và đầu cắm định địa chỉ Gen 2</div><div><br></div><div>– Âm thanh chơi game hàng đầu trong ngành: ALC4080 với bộ khuếch đại Savitech SV3H712, cùng với DTS® Sound Unbound và Sonic Studio III</div><div><br></div><div>– Phần mềm nổi tiếng: Gói đăng ký AIDA64 Extreme trong 60 ngày và bảng điều khiển UEFI BIOS trực quan với MemTest86 tích hợp</div>','mainasus.jpg','2023-03-19 23:18:20.780000','2023-06-03 06:49:56.865000',_binary '',_binary '',50000,80000,3000,1,1,1,1,4,27,'S','Đen','Cotton','HUYNH Y',3.00,_binary '\0',2.00,'A01','A0100003'),(56,'Main B760M GiGa DR4','Main-B760M-GiGa','<div><div>Socket: LGA1700 hỗ trợ CPU Intel thế hệ 12 &amp; 13</div><div>Kích thước: ATX</div><div>Khe cắm RAM: 4 khe (Tối đa 128GB)</div><div>Khe cắm mở rộng: 1 x PCIe 4.0 x16, 2 x PCIe 3.0 x1</div></div>',_binary '<div><div>Mainboard Gigabyte B760 AORUS ELITE DDR4</div><div>Với sự thay đổi nhanh chóng của công nghệ, Mainboard đên từ GIGABYTE luôn đi theo xu hướng mới nhất và cung cấp cho khách hàng những tính năng tiên tiến và công nghệ mới nhất. Các bo mạch chủ GIGABYTE được trang bị giải pháp năng lượng nâng cấp, các tiêu chuẩn lưu trữ mới nhất và khả năng kết nối vượt trội để mang lại hiệu suất tối ưu cho việc chơi game. Cùng tìm hiểu Mainboard Gigabyte B760 AORUS ELITE DDR4 !</div><div><br></div><div>HIỆU SUẤT VÔ SONG</div><div>Để đảm bảo hiệu suất Turbo Boost và ép xung tối đa của CPU thế hệ mới của Intel, bo mạch chủ dòng GIGABYTE AORUS trang bị thiết kế VRM tốt nhất từng được chế tạo với các thành phần chất lượng cao nhất.</div><div><br></div><div>Gigabyte B760 AORUS ELITE DDR4 có thiết kế PCle 4.0.</div><div>Aorus đang cung cấp một nền tảng đã được thử nghiệm và chứng minh, đảm bảo khả năng tương thích phù hợp với các cấu hình lên đến 5333MHz và hơn thế nữa. Tất cả những gì người dùng cần làm để đạt được mức tăng hiệu suất này là đảm bảo rằng mô-đun bộ nhớ của họ có khả năng XMP và chức năng XMP được kích hoạt và kích hoạt trên bo mạch chủ AORUS của họ.</div><div><br></div><div>Bo mạch chủ chơi game Gigabyte B760 AORUS ELITE DDR4 tập trung vào việc cung cấp công nghệ M.2 cho những người đam mê muốn tối đa hóa tiềm năng Hệ thống của họ.</div><div><br></div><div>Công nghệ PerfDrive tích hợp nhiều cài đặt BIOS độc quyền của GIGABYTE cho phép người dùng cân bằng giữa các mức hiệu năng, mức tiêu thụ điện năng và nhiệt độ khác nhau theo nhu cầu một cách dễ dàng khi sử dụng bộ vi xử lý Intel ® Core™ thế hệ thứ 13.</div><div><br></div><div>THIẾT KẾ TẢN NHIỆT VƯỢT TRỘI</div><div>Hiệu suất tuyệt vời của Bo mạch chủ Gigabyte B760 AORUS ELITE DDR4 được đảm bảo bởi thiết kế tản nhiệt sáng tạo và tối ưu hóa để đảm bảo CPU, Chipset, SSD ổn định nhất và nhiệt độ thấp trong ứng dụng đầy tải và hiệu suất chơi game.</div><div><br></div><div>Smart Fan 6 chứa một số tính năng làm mát độc đáo đảm bảo PC chơi game duy trì hiệu suất của nó trong khi vẫn mát và yên tĩnh. Nhiều đầu cắm quạt có thể hỗ trợ bơm và quạt PWM/DC, đồng thời người dùng có thể dễ dàng xác định từng đường cong của quạt dựa trên các cảm biến nhiệt độ khác nhau trên bo mạch thông qua giao diện người dùng trực quan.</div><div><br></div><div>Kết nối</div><div>Bo mạch chủ GIGABYTE cho phép trải nghiệm kết nối đỉnh cao với tốc độ truyền dữ liệu cực nhanh thông qua mạng thế hệ tiếp theo và kết nối lưu trữ.</div><div><br></div><div>Cá nhân hóa</div><div>Thiết kế trình diễn ánh sáng đa vùng RGB Fusion, cung cấp nhiều tùy chỉnh đèn LED hơn bao giờ hết, người dùng thực sự có thể điều chỉnh PC của mình để thể hiện phong cách sống của họ. Với hỗ trợ RGB đầy đủ và ứng dụng RGB Fusion 2.0 được thiết kế lại, người dùng có toàn quyền kiểm soát các đèn LED bao quanh bo mạch chủ.</div><div><br></div><div>GIGABYTE CONTROL CENTER (GCC) là một phần mềm hợp nhất cho tất cả các sản phẩm được GIGABYTE hỗ trợ. Nó cung cấp giao diện người dùng trực quan được thiết kế mới để kiểm soát tất cả các chức năng thiết yếu.</div><div><br></div><div>Nút đặt lại đa chức năng có thể được cấu hình lại thành chức năng khác trong BIOS cho các tình huống người dùng khác nhau.</div><div><br></div></div>','maingiga.png','2023-04-18 08:59:29.293000','2023-06-03 06:49:49.886000',_binary '',_binary '',5000000,6000000,0,0,0,0,0,14,27,'S','Đen','Cotton','HUYNH Y',3.00,_binary '\0',10.00,'B01','B0100006'),(57,'RAM Galax HOF II 16GB (2x8GB) – 3600MHz RGB','RAM-Galax-HOF-II-','<div><br></div>',_binary '<div><br></div>','ramgalax.jpg','2023-06-03 05:30:20.068000','2023-06-03 06:50:56.408000',_binary '',_binary '',1000000,5000000,500000,0,0,0,0,9,27,'S','Đen','Cotton','HUYNH Y',NULL,_binary '\0',2.00,'A01','A0100003'),(58,'Tản nhiệt nước GIGABYTE AORUS WATERFORCE X 360','Tản-nhiệt-nước-GIGABYTE-AORUS-WATERFORCE-X-360','<div><div>Thông tin chung:</div><div>Nhà sản xuất: Gigabyte</div><div>Bảo hành: 24 Tháng</div></div>',_binary '<div><div>Tản Nhiệt Nước AIO Gigabyte AORUS Waterforce X 360 với màn hình LCD tròn độc đáo, RGB Fusion 2.0, Quạt 120mm ARGB Graphene Nano Lubricant đem lại hiệu năng cực kỳ mạnh mẽ cho các hệ thống cao cấp.</div><div>Tính năng chính</div><div>- Máy bơm hiệu suất cao mới giúp tản nhiệt hiệu quả từ các CPU cao cấp.</div><div>- Màn hình LCD màu tròn 60x60mm độc đáo, hỗ trợ phát video / văn bản tùy chỉnh.</div><div>- Hướng màn hình có thể điều chỉnh xoay 330 độ.</div><div>- Hiệu suất cao, độ ồn thấp, quạt ARGB Graphene Nano Lubricant.</div><div>- Hỗ trợ đồng bộ hóa RGB FUSION 2.0 với các thiết bị AORUS khác.</div><div>- Thiết kế phổ biến cho điều khiển RPM của quạt và máy bơm, hỗ trợ tất cả các nhãn hiệu mainboard.</div><div><br></div><div>Màn hình LCD độc đáo</div><div>Gigabyte AORUS Waterforce X 360 được trang bị màn hình LCD có thể xoay 330 độ dành cho người đam mê và Chế độ Chibi đặc biệt. Nó cũng hỗ trợ chơi các định dạng MP4 / GIF / JPG của riêng bạn để tùy chỉnh nhiều hơn.</div><div><br></div><div>Trục gốm bền bỉ</div><div>Trục gốm có thời gian sử dụng lâu hơn (376,715 giờ) so với trục kim loại truyền thống. Ngoài ra, nó bền hơn và có đặc tính chống ăn mòn.</div><div><br></div><div>Ống nước lớn</div><div>Đường kính ống 5,1 mmØ mở rộng thành 7,8 mmØ, Tăng lưu lượng nước lên đến 37% và giúp tản nhiệt nhanh hơn và hiệu quả hơn.</div><div>Quạt AORUS SILENT</div><div>Thông qua quá trình thử nghiệm rộng rãi, AORUS đã phát triển thiết kế cánh quạt tối ưu nhất để đi cùng với bộ tản nhiệt AORUS Waterforce X 360. Nó sẽ mang lại khả năng tản nhiệt hiệu quả nhất trong khi vẫn duy trì độ ồn thấp nhất, ngay cả ở tốc độ tối đa.</div><div><br></div><div>Quạt thiết kế lưỡi quạt độc đáo cung cấp luồng không khí được tràn ra nhờ mép quạt tam giác và được dẫn hướng mượt mà qua đường cong sọc 3D trên bề mặt quạt, giúp tăng cường hiệu quả luồng không khí so với các loại quạt truyền thống.</div><div><br></div><div>Chất bôi trơn graphene nano trong ổ trục làm giảm mức độ tiếng ồn đồng thời kéo dài tuổi thọ của quạt thêm 2,1 lần (73.500 giờ), tương đương với tuổi thọ của thiết kế ổ bi kép đồng thời hoạt động êm ái hơn.</div><div><br></div><div>Thông qua phần mềm Fusion 2.0 cho phép người dùng điều khiển các kiểu chiếu sáng trên logo AORUS Falcon và cánh quạt, đồng thời cho phép đồng bộ hóa ánh sáng với các thiết bị ngoại vi để người dùng có thể thể hiện phong cách của riêng mình.</div></div>','tanaoru1.png','2023-06-03 05:33:34.919000','2023-06-03 06:51:56.570000',_binary '',_binary '',2000000,6000000,100000,0,0,0,0,14,27,'S','Đen','Cotton','HUYNH Y',NULL,_binary '\0',3.00,'A01','A0100003'),(59,'Tản nhiệt nước ASUS ROG RYUJIN II 240 ARGB','Tản-nhiệt-nước-ASUS-ROG-RYUJIN-II-240-ARGB','<div><div>Thông tin sản phẩm:</div><div>Nhà sản xuất: ASUS</div><div>Bảo hành: 72 Tháng</div></div>',_binary '<div><div></div><div>Asus ROG Ryujin II Bộ tản nhiệt nước hàng đầu với hiệu suất tản nhiệt tối ưu</div><div>Bộ tản nhiệt nước all in one ROG Ryujin II mang lại hiệu suất tản nhiệt tối ưu cho các game thủ đang tìm kiếm sản phẩm tản nhiệt tốt nhất.</div><div><br></div><div>ROG Ryujin II sử dụng&nbsp; máy bơm Asetek thế hệ thứ 7, đi kèm với quạt tản nhiệt PPC Noctua cao cấp và quạt mini tích hợp sẵn cho khu vực tiếp xúc CPU mang đến khả năng làm mát đáng kinh ngạc.&nbsp;</div><div><br></div><div>Màn hình LCD kích thước lớn 3,5 thế hệ mới, tùy chỉnh theo sở thích cá nhân</div><div><br></div><div>Màn hình LCD 3,5 inch trên bộ tản nhiệt nước Asus ROG Ryujin II là màn hình LCD có kích thước lớn nhất trên bộ làm mát AIO trong ngành tản nhiệt nước, màn hình có thể tùy chỉnh với nhiều hình ảnh hiển thị</div><div><br></div><div>Quạt tản nhiệt cao cấp NOCTUA mang lại hiệu suất tản nhiệt cao và yên tĩnh tuyệt đối</div><div><br></div><div>Để vượt qua những thách thức về nhiệt độ&nbsp; của các CPU đa nhân mới nhất, Tản nhiệt nước Asus ROG Ryujin II được tích hợp quạt tản nhiệt Noctua iPPC-2000 PWM cấp công nghiệp mang lại hiệu suất cao và hoạt động tối thiểu tiếng ồn.&nbsp;</div><div><br></div><div>Khả năng tương thích mở rộng</div><div>Bộ tản nhiệt nước Asus ROG Ryujin II tương thích với nhiều nền tảng bo mạch chủ Intel® và AMD, cho phép bạn ghép nối linh hoạt với sự lựa chọn của bộ xử lý. Nó cũng được trang bị ống dẫn dài 38 cm để giúp việc lắp dễ dàng hơn</div><div><br></div></div>','tanaioasus.png','2023-06-03 05:39:48.235000','2023-06-03 06:51:47.098000',_binary '',_binary '',2000000,5000000,500000,0,0,0,0,4,27,'S','Đen','Cotton','HUYNH Y',NULL,_binary '\0',1.00,'A01','A0100003'),(60,'VGA EVGA GeForce RTX 3070Ti FTW3 ULTRA GAMING – 8GB GDDR6X ','VGA-EVGA-GeForce-RTX-3070Ti-FTW3-ULTRA-GAMING','<div><div>Nhân đồ họa: Nvidia RTX 3070 Ti</div><div>Số nhân Cuda: 6144</div><div>Dung lượng VRAM: 8GB GDDR6X</div><div>Xung nhịp GPU tối đa: 1800 Mhz</div></div>',_binary '<div><div>VGA EVGA GeForce RTX 3070Ti FTW3 ULTRA GAMING – 8GB GDDR6X</div><div>VGA EVGA GeForce RTX 3070Ti FTW3 ULTRA GAMING là một sản phẩm card màn hình chất lượng cao với các thông số kỹ thuật ấn tượng. Với vi xử lý đồ họa GeForce RTX 3070 Ti và boost clock lên đến 1860 MHz, EVGA GeForce RTX 3070Ti FTW3 ULTRA GAMING đem đến hiệu năng mạnh mẽ cho các game thủ và người dùng đòi hỏi sự truyền tải dữ liệu nhanh chóng.</div><div><br></div><div>EVGA GeForce RTX 3070Ti FTW3 ULTRA GAMING được trang bị bộ nhớ 8192MB GDDR6X với băng thông 608 GB/s, cùng với 6144 CUDA Cores giúp tăng khả năng xử lý đồ họa nhanh chóng và mượt mà. Với Bus Type PCIe 4.0, đây là một sản phẩm hiện đại và sẵn sàng đáp ứng các yêu cầu của những game thủ và những ứng dụng đòi hỏi sự truyền tải dữ liệu nhanh chóng.</div><div><br></div><div>EVGA RTX 3070Ti FTW3 ULTRA GAMING được trang bị công nghệ làm mát iCX3 Cooling giúp cho việc làm mát được hiệu quả hơn, giúp cho card đồ họa hoạt động ổn định hơn và kéo dài tuổi thọ. Hơn nữa, sản phẩm còn được trang bị LED Logo ARGB giúp tăng thêm tính thẩm mỹ cho hệ thống máy tính.</div><div><br></div><div>Card đồ họa này được thiết kế với kích thước cao 136.75mm, dài 300mm và rộng 2.75 Slots, vì vậy sẽ đòi hỏi không gian lắp đặt rộng rãi hơn so với một số sản phẩm khác. RTX 3070Ti FTW3 ULTRA GAMING yêu cầu nguồn cung cấp điện tối thiểu 750W, hai cổng 8-pin hoặc 6+2pin PCIe power dongles và tổng công suất tiêu thụ 290W. Với những thông số kỹ thuật tuyệt vời như vậy, đây là một sản phẩm card đồ họa VGA đáng mua và sử dụng cho những người đam mê chơi game và đòi hỏi hiệu năng tốt.</div><div><br></div><div>KCCShop là nhà cung cấp các sản phẩm Màn hình máy tính cao cấp, PC Gaming, CPU-Bộ vi xử lý,Laptop Gaming … chính hãng cùng với giá cả hợp lý, chất lượng hàng đầu tại Hà Nội, TP.HCM. Với phương châm luôn đặt sự hài long của khách hàng lên hàng đầu, chúng tôi mong muốn đen tới cho khách hàng những trải nghiệm mua sắm tuyệt vời nhất</div></div>','3070tievga.jpg','2023-06-03 05:44:50.649000','2023-06-03 06:52:03.683000',_binary '',_binary '',1000000,10000000,500000,0,0,0,0,8,27,'S','Đen','Cotton','HUYNH Y',NULL,_binary '\0',3.00,'A01','A0100003'),(61,'Vỏ case MSI MAG FORGE M100A','Vỏ-case-MSI-MAG-FORGE-M100A','<div><div>Mã hàng: ATMS195</div><div>Bảo hành: 12 Tháng</div><div>Hãng sản xuất: MSI</div></div>',_binary '<div><br></div>','vomsi.png','2023-06-03 05:47:16.075000','2023-06-03 06:52:10.054000',_binary '',_binary '',200000,1000000,10000,0,0,0,0,10,27,'S','Đen','Cotton','HUYNH Y',NULL,_binary '\0',3.00,'A01','A0100003'),(62,'Màn hình ASUS TUF GAMING VG279Q1A 27\" IPS 165Hz G-Sync','Màn-hình-ASUS-TUF-GAMING-VG279Q1A-27\"','<div><div>Thông tin chung</div><div>Nhà sản xuất: ASUS</div><div>Bảo hành: 36 tháng</div><div>Hỗ trợ đổi mới trong 7 ngày</div></div>',_binary '<div><div>Màn hình Asus TUF GAMING VG279Q1A là màn hình 27 inch, được trang bị công nghệ ELMB độc quyền kết hợp với công nghệ đồng bộ hóa thích ứng AMD Freesync giúp game thủ đắm chìm vào những trận game đầy gây cấn. Thiết kế màn hình đẹp và hiện đại làm cho không gian chơi game của bạn trở nên sang trọng và hút mắt hơn.</div><div><br></div><div>Khả năng hiển thị tốt</div><div>Màn hình Asus TUF GAMING VG279Q1A được trang bị màn hình với kích thước 27 inch tiêu chuẩn. Độ phân giải Full HD dưới tấm nền IPS cho màu sắc hiển thị tốt và rõ nét hơn. VG279Q1A còn có khả năng mang đến hình ảnh tuyệt đẹp từ mọi góc độ với góc nhìn rộng 178 độ đảm bảo giảm thiểu sự biến dạng và chuyển màu ngay cả khi bạn đang xem từ các vị trí khác nhau.</div><div><br></div><div>Thiết kế TUF GAMING VG279Q1A độc đáo</div><div>Được lấy cảm hứng từ những chiếc máy bay chiến đấu mạnh mẽ nên TUF GAMING VG279Q1A sở hữu thiết kế năng động và mang hơi hướng tương lai. Bảng điều khiển phía sau có các chi tiết giống như cánh, tạo cảm giác tốc độ. Chân đế nhỏ gọn, tối giản đảm bảo sự ổn định nhưng vẫn giữ được nét sang trọng.</div><div><br></div><div>Chơi game mượt mà</div><div>Tần số quét của TUF GAMING VG279Q1A vô cùng ấn tượng 165Hz, nó loại bỏ độ trễ và nhòe khi chuyển động để mang đến cho bạn ưu thế trong các tựa game bắn súng góc nhìn thứ nhất, đua xe, chiến lược thời gian thực và thể thao. Tần số quét cực nhanh này cũng cho phép bạn chơi ở cài đặt hình ảnh cao nhất và phản ứng tức thì với những gì trên màn hình.</div><div><br></div><div>Ngoài ra, công nghệ Extreme Low Motion Blur mới nhất độc quyền của ASUS cũng được tích hợp trên VG279Q1A, đạt được 1ms MPRT để loại bỏ hiện tượng nhòe, đồng thời làm cho các đối tượng khi chuyển động trông sắc nét hơn. Nhờ đó, bạn sẽ có được trải nghiệm chơi game mượt mà và ấn tượng hơn bao giờ hết.</div><div><br></div><div>Phần mềm điều khiển trực quan</div><div>ASUS DisplayWidget Lite là một tiện ích phần mềm trực quan cho phép bạn dễ dàng và nhanh chóng điều chỉnh các cài đặt hoặc cấu hình các tính năng độc quyền của ASUS như Shadow Boost, ASUS GameVisual, v.v. Và đương nhiên, bạn cũng có thể sử dụng phần mềm này cho màn hình TUF GAMING VG279Q1A.</div><div><br></div><div>Bên cạnh đó, màn hình Asus còn trang bị nhiều lựa chọn kết nối đa dạng và phong phú như DisplayPort 1.2, hai HDMI (V1.4) và giắc cắm âm thanh 3,5 mm để kết nối với nhiều loại thiết bị đa phương tiện khác.</div></div>','mahinhtuf.png','2023-06-03 05:51:15.207000','2023-06-03 06:50:41.941000',_binary '',_binary '',3000000,6000000,100000,0,0,0,0,4,35,'S','Đen','Cotton','HUYNH Y',NULL,_binary '\0',5.00,'A01','A0100003'),(63,'Homework Pentium + Màn hình','Homework-Pentium-','<div><div>Nhận ngay bộ quà tặng trị giá 298,000đ</div><div>Nâng cấp SSD giảm ngay 300.000đ&nbsp;</div><div>Mua thêm RAM giảm ngay 300,000đ&nbsp;</div><div><br></div></div>',_binary '<div><div>ASUS PRIME H510M-A WIFI cung cấp cho người dùng những công cụ từ chính tay ASUS tạo ra giúp bạn dễ dàng điều chỉnh hiệu suất phù hợp với nhu cầu sử dụng.&nbsp;</div><div><br></div><div>Intel Pentium G6405 / 4MB / 4.1GHz / 2 Nhân 4 Luồng / LGA 1200</div><div>CPU Intel Pentium G6405 đã được cải tiến lên 0.1 GHz so với phiên bản tiền nhiệm G6400. Là điểm ăn tiền của G6405 kết hợp với 2 nhân 4 luồng, đem lại tốc độ xử lý nhanh hơn, hỗ trợ tốt cho khả năng trải nghiệm những tựa game hot như LOL, Valorant,…</div><div><br></div><div>Sở hữu socket LGA 1200 giúp CPU Intel Pentium G6405 tương thích với những bo mạch chủ hot nhất hiện nay như H410, H510, B460 và những mainboard cao cấp như Z490, Z590. Những bo mạch chủ sẽ đem lại khả năng tận dụng tối đa sức mạnh của bộ vi xử lý từ Intel.</div><div><br></div><div>RAM TeamGroup T-Force Vulcan Z Red 8GB 3200 DDR4</div><div>Đi cùng mainboard thế hệ mới, chắc chắn không thể bỏ qua dòng RAM “quốc dân” RAM TeamGroup T-Force Vulcan Z Red 8GB 3200 DDR4 với mức xung nhịp 3200 Mhz. Với thanh RAM 8GB máy thừa sức đáp ứng hầu hết những tác vụ cơ bản mà không gặp bất kỳ khó khăn gì.&nbsp;</div><div><br></div><div>SSD PNY CS900 240G 2.5 Sata 3</div><div>Máy tính để bàn GVN Homework Pentium sở hữu không gian lưu trữ 240GB đến từ PNY CS900 240G 2.5\" Sata 3. Tốc độ đọc/ghi file ấn tượng lần lượt là 535MB/s và 500MB/s sẽ là những thông số cần thiết cho việc sao lưu, lưu trữ dữ liệu như video, hình ảnh và game. Với bộ nhớ SSD, tối ưu tốc độ khởi động cho dàn PC chơi game của chúng ta.</div><div><br></div><div>Case Jetek EM4</div><div>Case Jetek EM4 được sản xuất bởi hãng Jetek là thương hiệu rất mới đối với người dùng Việt Nam. Các sản phẩm của Jetek gồm có vỏ case và PSU với các loại sản phẩm có chất lượng và giá thành từ thấp tới cao, phục vụ mọi phân khúc người dùng.</div><div><br></div></div>','maybovanphong.png','2023-06-03 05:56:34.851000','2023-06-03 06:46:36.671000',_binary '',_binary '',5000000,12000000,1000000,0,0,0,0,16,4,'S','Đen','Cotton','HUYNH Y',NULL,_binary '\0',3.00,'A01','A0100003'),(64,'Bàn Phím Có Dây Gaming MSI Vigor GK30 US','Bàn-Phím-Có-Dây-Gaming-MSI-Vigor-GK30-US','<div><div>Điều kiện áp dụng:</div><div>Giao hàng nhanh chóng (tuỳ khu vực).</div><div>Chính sách bảo hành, đổi trả áp dụng như mua giá thường.</div></div><div><br></div>',_binary '<div><div>Bàn phím Có dây Gaming MSI Vigor GK30 US Đen với chân đế gaming vững vàng ngay bên dưới phím Space Bar đem đến sự vững vàng, chống trượt khi chơi game.</div><div>Thiết kế phím nổi chống nước không chỉ giúp bàn phím đẹp hơn, mà còn giúp cho bạn dễ dàng lau chùi bàn phím hơn khi dính bẩn.</div><div><br></div><div>Bàn phím MSI được trang bị các switch tịnh tiến tương tự switch cơ học với ba bộ phận đem đến trải nghiệm gõ phím chắc chắn với độ bền hơn 12 triệu lần nhấn.</div><div><br></div><div>Thông qua phần mềm MSI Center bạn có thể tuỳ biến bàn phím gaming với hàng triệu màu sắc và đến 7 hiệu ứng đèn trên 6 khu vực.</div><div><br></div><div>Ngoài ra, với các phím tắt tiện lợi bạn dễ dàng thay đổi nhanh tốc độ, hướng hay chế độ đèn mà không cần cài đặt phần mềm. Phía trên của bàn phím là dãy phím tắt điều chỉnh âm lượng.</div><div><br></div><div>Bàn phím có dây kết nối nhanh chóng với PC, Laptop qua cổng USB với đầu nối mạ vàng, dây dài 1.85 m.</div></div>','banphimmsi.jpg','2023-06-03 06:04:08.375000','2023-06-03 06:55:53.678000',_binary '',_binary '',500000,1200000,200000,0,0,0,0,10,36,'S','Đen','Cotton','HUYNH Y',2.00,_binary '\0',6.00,'A01','A0100003'),(65,'Chuột Logitech G502 X Black','Chuột-Logitech-G502-X-Black','<div><div>Nhà Sản Xuất: Logitech</div><div>Tình Trạng: Mới&nbsp;</div><div>Bảo Hành: 24 Tháng</div></div>',_binary '<div><div>Đánh giá chi tiết chuột Logitech G502 X Black</div><div>Logitech G502, lineup chuột gaming đã quá nổi tiếng với mọi game thủ và người dùng. Gây ấn tượng mạnh với chúng ta thông qua ngoại hình ngầu lòi và mạnh mẽ, Logitech G502 nay đã được nâng cấp với phiên bản hoàn toàn mới mang tên Logitech G502 X Black. Vậy thì chú chuột gaming này sẽ được trang bị những gì? Cùng tìm hiểu với GEARVN ngay sau đây nhé !</div><div><br></div><div>Switch bấm siêu tốc độ, siêu bền</div><div>Trang bị switch bấm cơ học với nhiều cải tiến, Logitech G502 X Black hướng đến tốc độ cùng độ bền cao cấp nhờ vào truyền động quang học. Tất cả sẽ đảm bảo độ chính xác tuyệt đối trong từng cú click chuột với từng thao tác và hành động mà cần có trên những chú chuột gaming, tạo ra tactile rõ ràng đến với người dùng.</div><div><br></div><div>Cảm biến HERO 25K chính xác trên từng pha di chuột</div><div>Giữ nguyên tinh túy từ thế hệ G502 và G502 HERO, Logitech G502 X Black tiếp tục được trang bị cảm biến HERO 25K đem đến sự chính xác trên từng milimet trên pad chuột với năng lực tracking cực kì tốt. Cảm biến HERO 25K đảm bảo sự mượt mà và tốc độ trên từng cú di chuột, mang lại lợi thế nhất định trong những trận đấu căng thẳng. Cảm biến trên Logitech G502 X Black sở hữu thêm khả năng sử dụng năng lượng một cách thông minh để cho ra hiệu suất và thời gian sử dụng tối ưu nhất cho người dùng.</div><div><br></div><div>Nút DPI-Shift với thiết kế mới</div><div>Nút điều chỉnh DPI trên Logitech G502 X Black đã được thiết kế lại với vị trí và kiểu bấm để tạo trải nghiệm sử dụng thoải mái hơn cho người dùng phổ thông. Hoặc nếu cảm thấy không vừa vặn với form tay của mình, bạn có thể tháo rời nút DPI-Shift và thay vào đó tấm cover, biến Logitech G502 X Black trở thành con chuột Logitech phổ biến.</div><div><br></div><div>Tối ưu trọng lượng</div><div>Vẫn là một vẻ ngoài đậm chất hầm hố của thế hệ G502, Logitech G502 X Black được tối ưu hơn về trọng lượng khi những chi tiết và thành phần đã được làm mỏng và nhẹ hơn, bao gồm cả con lăn chuột. Điều này đã giúp cho Logitech G502 X Black “giảm cân” thành công với trọng lượng chỉ còn vỏn vẹn 89g, tạo cảm giác cầm đầm và nhẹ tay hơn cho sự thoải mái trong từng thao tác sử dụng.</div><div><br></div><div>Con lăn với 2 chế độ cuộn thông minh</div><div>Con lăn trên Logitech G502 X Black đem đến cho người dùng 2 chế độ cuộn. Một là siêu tốc độ chỉ với 1 cú đẩy nhẹ trên con lăn để cuộn trang hay điều chỉnh cùng tốc độ “tia chớp”. Sau đó chỉ với nút điều chỉnh ngay phía sau, bạn có thể sử dụng con lăn trên Logitech G502 X Black như những chú chuột văn phòng thông thường, cuộn trang với từng nấc rõ ràng.</div></div><div><br></div>','chuotlogitechcoday.png','2023-06-03 06:07:32.975000','2023-06-03 06:45:13.708000',_binary '',_binary '',1000000,3000000,500000,0,0,0,0,15,36,'S','Đen','Cotton','HUYNH Y',NULL,_binary '\0',6.00,'A01','A0100003'),(66,'Chuột Logitech G502 X Plus LightSpeed Black','Chuột-Logitech-G502-X-Plus-LightSpeed-Black','<div><div>Nhà Sản Xuất: Logitech</div><div>Tình Trạng: Mới&nbsp;</div><div>Bảo Hành: 24 Tháng</div></div>',_binary '<div><div>Đánh giá chi tiết chuột Logitech G502 X Plus LightSpeed Black</div><div>Chuột Logitech G502 X PLUS Black là sản phẩm mới nhất của series G502 đình đám. Được thiết kế lại và cải tiến với công nghệ chơi game hiện đại, bao gồm công tắc Lightforce lai quang học - cơ học đầu tiên, Lightspeed không dây, LIGHT SYNC RGB và cảm biến quang học Hero 25K, Logitech G502 X PLUS chắc chắn là một trong những gaming gear đáng mua nhất cho game thủ thời gian sắp tới.</div><div><br></div><div>Switch LightForce lai quang học - cơ học</div><div>Các phím switch quang học lai cơ học đột phá, đạt được cấp độ mới về tốc độ và độ tin cậy thông qua kích hoạt quang học. Song song đó, kích hoạt cơ học giữ lại phản hồi rõ ràng, trực quan mà người chơi yêu thích.&nbsp;</div><div><br></div><div>Hỗ trợ đèn RGB Light Sync</div><div>Công nghệ RGB Light Sync cho phép chiếu sáng toàn phổ động với khả năng kiểm soát hoàn toàn khoảng 16,8 triệu màu sống động trong dãy 8 đèn LED. Tính năng phát hiện chơi chủ động sẽ tự động tắt đèn khi bạn dùng tay che nó, giúp tiết kiệm pin. Người dùng có thể tùy chỉnh mọi thứ trên phần mềm trực quan G HUB, bao gồm cá nhân hóa nâng cao và các hiệu ứng phương tiện khác.</div><div><br></div><div>Công nghệ Lightspeed không dây</div><div>Kết nối cấp độ chuyên nghiệp, hiện có giao thức được cập nhật, đáp ứng nhanh hơn 68% so với thế hệ trước. Với hiệu suất đáng kinh ngạc của công nghệ Lightspeed, Logitech G502 X PLUS cũng có thể đạt được thời lượng pin lên đến 130 giờ khi tắt RGB và lên đến 37 giờ khi bật RGB.</div><div><br></div><div>Cảm biến Hero 25K</div><div>Các cảm biến chơi game hiện đại trên các dòng chuột gaming Logitech đều đạt được độ chính xác ở cấp độ micromet thông qua việc làm mịn, lọc và tăng tốc. Cảm biến Hero 25K mang lại hiệu suất, độ chính xác và tiết kiệm năng lượng chưa từng có với khả năng theo dõi vượt trội và mức tiêu thụ năng lượng thông minh.</div><div><br></div><div>Công tắc DPI và con lăn ở chế độ kép</div><div>Logitech đã thiết kế lại công tắc DPI để người dùng có thể chọn cấu hình phù hợp với kiểu tay cầm và phong cách chơi game riêng biệt của mình. Bạn hoàn toàn có thể tháo và lật ngược lại để đưa nó gần ngón tay cái của bạn hơn hoặc thay thế nó bằng nắp nút đi kèm. Bên cạnh đó, con lăn trên Logitech G502 X PLUS cũng được trang bị hai chế độ tiện lợi. Cuộn tự do nhẹ nhàng và siêu nhạy. Hoặc chế độ nhạy cóc để cuộn chính xác hơn.</div><div><br></div><div>Tương thích với PowerPlay</div><div>PowerPlay đã khiến việc sạc pin trở thành dĩ vãng khi nó có thể tự động sạc nhanh thiết bị bất kể lúc chơi game hay không làm gì cả. Hoạt động bằng cơ chế sạc pin không dây độc đáo, bạn không cần lo lắng chuột máy tính hết pin đột ngột khi đang chơi game nữa.</div></div>','chuotlogitechbluetooth.png','2023-06-03 06:10:07.046000','2023-06-03 06:45:18.374000',_binary '',_binary '',2000000,4000000,500000,0,0,0,0,15,36,'S','Đen','Cotton','HUYNH Y',NULL,_binary '\0',3.00,'A01','A0100003'),(67,'Tai nghe Bluetooth TWS Xiaomi Redmi Buds 4 Lite','Tai-nghe-Bluetooth-TWS-Xiaomi-Redmi-Buds-4-Lite','<div>Tai nghe Xiaomi Buds 4 Lite giảm 200K khi mua kèm điện thoại, tablet Xiaomi<br></div>',_binary '<div><div>Tai nghe Bluetooth TWS Xiaomi Redmi Buds 4 Lite là dạng tai nghe Earbuds với thiết kế độc đáo, kích thước gọn nhẹ, chất lượng âm thanh tuyệt đỉnh cùng trải nghiệm pin ấn tượng, hứa hẹn sẽ chinh phục nhiều người dùng.</div><div>Thiết kế đẹp mắt, màu sắc thời thượng</div><div>Thiết kế gọn gàng, các cạnh góc được bo cong mềm mại giúp cảm giác cầm nắm êm tay, đồng thời tạo nên một tổng thể sang trọng, thu hút. Cách thiết kế nắp đóng mở hộp sạc độc đáo tạo mang đến một thiết kế hơi hướng tàu vũ trụ không gian mới lạ, nam châm trong hộp sạc hỗ trợ giữ vững tai nghe bên trong, hút tai nghe ngay khi vừa bỏ vào hộp sạc.</div><div><br></div><div>Tai nghe Bluetooth TWS Xiaomi Redmi Buds 4 Lite - Thiết kế gọn gàng, nam châm dính hút chắc chắn</div><div>Tai nghe Earbuds được thiết kế vừa vặn với kích cỡ phổ thông, khít với hầu hết đôi tai của mọi người dùng, mang đến cảm giác đeo không bị bí bách, hạn chế đau tai hay ù tai khi đeo lâu, tận hưởng âm nhạc một cách thoải mái nhất. Phần housing vừa phải giúp giữ cố định tai nghe khi di chuyển, thậm chí là vận động mạnh.</div><div><br></div><div>Tai nghe Bluetooth TWS Xiaomi Redmi Buds 4 Lite - Housing vừa phải, đem vừa vặn</div><div>Tận hưởng không gian âm nhạc của riêng bạn với chất âm cuốn hút</div><div>Âm thanh sống động và đầy đủ chi tiết, với dải âm rộng tai nghe thể hiện khá tốt hầu hết các thể loại nhạc, đáp ứng gu âm nhạc đa dạng của người dùng.</div><div><br></div><div>Tai nghe Bluetooth TWS Xiaomi Redmi Buds 4 Lite - Tận hưởng không gian âm thanh sống động và chân thực</div><div>Yên tâm sử dụng hàng ngày với chuẩn chống nước kháng bụi IP54</div><div>Chuẩn chống nước, chống bụi IP54 cho phép người dùng yên tâm sử dụng tai nghe trong những tình huống tai nghe vô tình dính nước hoặc môi trường xung quanh có nhiều bụi bẩn.</div><div><br></div><div>Tai nghe Bluetooth TWS Xiaomi Redmi Buds 4 Lite - Chuẩn chống nước IP54 tối ưu trải nghiệm sử dụng</div><div>Tiện ích điều khiển và kết nối giúp tối ưu trải nghiệm</div><div>Điều khiển nhanh nhạy với vùng cảm ứng chạm ngay trên tai nghe, hỗ trợ các thao điều khiển cơ bản như: Nghe/nhận cuộc gọi, phát/dừng chơi nhạc, chuyển bài hát, bật tắt chế độ Game Mode.</div><div><br></div><div>Kết nối nhanh chóng với công nghệ Bluetooth 5.3 cho đường truyền ổn định, âm thanh mượt mà, giảm độ trễ khi sử dụng, đặc biệt khi chơi game hay trong các cuộc đàm thoại, để giảm tối đa độ trễ và bắt nhịp kịp thời, người dùng có thể đặt tai nghe sang chế độ Game Mode.</div><div><br></div><div>Tai nghe Bluetooth TWS Xiaomi Redmi Buds 4 Lite - Công nghệ Bluetooth 5.3, kết nối dễ dàng và nhanh chóng</div><div>Nghe nhạc liên tục suốt 5 giờ chỉ sau 2 giờ sạc pin</div><div>Nghe nhạc liền mạch trong 5 giờ, khi kết hợp tai nghe Xiaomi với hộp sạc có thể kéo dài lên tới 20 tiếng, tự tin mang theo tai nghe trong những chuyến đi xa. Khi hết pin, người dùng chỉ cần bỏ tai nghe vào hộp sạc trong vòng 2 tiếng là có ngay 5 tiếng sử dụng nữa.</div><div><br></div><div>Tai nghe Bluetooth TWS Xiaomi Redmi Buds 4 Lite - Nghe nhạc liên tục suốt 5 tiếng</div><div>Tóm lại, với những tiện ích sử dụng cũng như chất lượng âm thanh mà chiếc tai nghe Bluetooth TWS Xiaomi Redmi Buds 4 Lite mang lại sẽ đáp ứng tốt các nhu cầu sử dụng tai nghe cơ bản hằng ngày của bạn.</div></div>','TAINGHEXIAOMI.jpg','2023-06-03 06:12:42.418000','2023-06-03 06:51:36.512000',_binary '',_binary '',200000,900000,200000,0,0,0,0,7,36,'S','Đen','Cotton','HUYNH Y',NULL,_binary '\0',1.00,'A01','A0100003'),(68,'Balo Laptop Gigabyte Kit Bag 17 inch 2016','Balo-Laptop-Gigabyte-Kit-Bag','<div><div>Nhà Sản Xuất: Gigabyte</div><div>Tình Trạng: Mới&nbsp;</div><div>Bảo Hành: 12 Tháng</div></div>',_binary '<div><div>Balo laptop Gigabyte KIT BAG 17 inch 2016 - Thiết kế mới với sự đầy đủ sự tiện nghi</div><div>Balo laptop Gigabyte KIT BAG 17 inch 2016 là một thiết kế mới với điểm nhấn viền màu nổi bật. Thiết kế mới của sản phẩm balo laptop đến từ thương hiệu Gigabyte là một thiết kế mang lại sự tiện nghi và thoải mái nhất cho người dùng với những tính năng tiện dụng cần thiết.</div><div><br></div><div>Tính năng 2 trong 1 kết hợp: bảo vệ và chứa đựng</div><div>Thiết kế mà balo laptop Gigabyte KIT BAG 17 inch 2016 hướng đến chính là có thể mang đến sự tiện nghi nhất cho người dùng. Chính vì thế, ở balo laptop Gigabyte KIT BAG 17 inch 2016 đã tích hợp đầy đủ các tính năng cần có của một chiếc balo laptop. Được thiết kế với kích cỡ lớn nên balo có thể chứa đựng và bảo vệ chiếc laptop với kích thước lên đến 17 inch.</div><div><br></div><div>Tính năng 2 trong 1 kết hợp: bảo vệ và chứa đựng</div><div><br></div><div>Thiết kế mới của balo laptop Gigabyte KIT BAG 17 inch 2016 còn đảm bảo được những tính năng cần thiết, balo có thể chứa đựng và bảo vệ đồng thời cả máy tính xách tay và máy tính bảng, hồ sơ cùng một số thiết bị điện tử khác với những ngăn đựng riêng biệt. Bên cạnh đó, balo còn được bổ sung một ngăn đựng quần áo, tiện cho người dùng trong những chuyến đi công tác xa hoặc đi du lịch ngắn ngày.</div><div><br></div><div>Thiết kế viền màu nổi bật mang lại sự tiện nghi và thoải mái</div><div>Balo laptop Gigabyte KIT BAG 17 inch 2016 được thiết kế balo đeo vai với điểm nhấn viền màu cam thật sự nổi bật. Kiểu dáng gọn nhẹ và sự cá tính mà chiếc balo thể hiện được chính là chính là một sự lý tưởng dành cho những ai đang muốn có một chiếc balo hỗ trợ cho cả công việc hay những chuyến du lịch cá nhân.</div><div><br></div><div>Đánh giá thiết kế Balo laptop Gigabyte KIT BAG 17 inch 2016&nbsp;</div><div>Mua ngay balo laptop Gigabyte KIT BAG 17 inch 2016 chính hãng mới nhất tại CellphoneS</div><div>Là thương hiệu vốn chuyên về dòng laptop, máy tính chính hãng, chính vì thế mà tại CellphoneS không thể thiếu những dòng linh kiện, sản phẩm bảo vệ laptop, máy tính. Và balo laptop Gigabyte KIT BAG 17 inch 2016 chính là một trong những sản phẩm bảo vệ laptop tốt nhất ở kích cỡ lớn mà CellphoneS cung cấp đến quý khách hàng. Đến ngay CellphoneS để được hưởng những ưu đãi và khuyến mãi mới nhất về sản phẩm này.</div></div>','balogiga.jpg','2023-06-03 06:18:25.407000','2023-06-03 06:54:49.570000',_binary '',_binary '',200000,1000000,200000,0,0,0,0,14,11,'S','Đen','Cotton','HUYNH Y',1.00,_binary '\0',1.00,'A01','A0100003'),(69,'Hub USB SSK 7-1 USB 3.0 (SHU370)','Hub-USB-SSK-7-1-USB-3.0-(SHU370)','<div><div>&nbsp;HUB 7-1 USB 3.0 SSK (SHU370)</div><div>&nbsp;Cổng vào : USB 3.0 (5Gbps)</div><div>&nbsp;Cổng ra : 7 USB 3.0 (5Gbps)</div><div>&nbsp;Hỗ trợ cổng DC (5V-3.5A) để cấp nguồn</div><div>&nbsp;Màu : Bạc</div></div>',_binary '<div><div>Giới thiệu Hub USB SSK 7-1 USB 3.0 (SHU370)</div><div>Hub USB 7 cổng SSK 3.0 SHU 370</div><div>Từ 1 cổng USB 3.0 chia ra 7 cổng USB 3.0</div><div>Truyền dữ liệu USB 3.0 lên đến 5 Gbps</div><div>Tương thích với USB 2.0 tốc độ 480 Mbps</div><div>Đầu vào: 5V- 3.5A Adapter</div><div>Chỉ cần cắm vào là tự động nhận dạng thiết bị</div><div>1. Cổng vào : USB 3.0 (5Gbps)</div><div>2.Cổng ra : 7 USB 3.0 (5Gbps</div><div>3.Hỗ trợ cổng DC (5V-3.5A) để cấp nguồn</div><div>4. Màu : Trắng</div><div>5. Yêu cầu hệ thống: Windows XP / Vista / 7/8 / 8.1 / 10, Mac OS 9.1, Linux 2.4 trở lên</div><div>6. 500 g</div><div>7. 23 x 8 x 5 cm</div></div>','hubusb.jpg','2023-06-03 06:22:19.791000','2023-06-03 06:46:51.332000',_binary '',_binary '',100000,500000,50000,0,0,0,0,16,7,'S','Đen','Cotton','HUYNH Y',NULL,_binary '\0',3.00,'A01','A0100003'),(70,'Phát Wifi Tenda N301 Chuẩn N 300Mbps 2 anten','Phát-Wifi-Tenda-N301-','<div><div>Tenda N301 là Router WiFi thiết kế dành riêng cho gia đình.</div><div>Với giao diện dễ cài đặt, bạn có thể nhanh chóng thiết lập mạng WIFi của riêng mình chỉ với vài bước đơn giản</div><div>Cung cấp WiFi chuẩn N tốc độ 300Mbps, Tenda N301 đảm bảo nhu cầu lướt web , xem phim…. mượt mà</div><div>Tenda N301 hỗ trợ nhiều chế độ hoạt động như Router/AP/Repeater</div></div>',_binary '<div><div>Tenda N301 – Router Chuẩn N Không Dây Tốc Độ 300Mbps</div><div>Tenda N301 – Router Chuẩn N Không Dây Tốc Độ 300Mbps được sản xuất và thiết kế nhỏ gọn theo tiêu chuẩn hiện đại, trang bị nhiều chuẩn wifi phát khác nhau như B/G/N phù hợp với nhiều nhu cầu đối tượng người dùng. Sản phẩm có công dụng tự thiết lập mạng lưới internet không dây tốc độ cao lên tới 300Mbps với phạm vi phủ sóng wifi cực kì rộng rãi và ổn định. Thiết bị phù hợp để sử dụng cho các tòa nhà, văn phòng, khu nhà ở rộng rãi với việc được trang bị 2 ăng ten 5dBI và khả năng phát sóng wifi mạnh mẽ.</div><div><br></div><div>Router WiFi cho gia đình</div><div>Tenda N301 là Router WiFi thiết kế dành riêng cho gia đình.</div><div>Với giao diện dễ cài đặt, bạn có thể nhanh chóng thiết lập mạng WIFi của riêng mình chỉ với vài bước đơn giản</div><div>Cung cấp WiFi chuẩn N tốc độ 300Mbps, Tenda N301 đảm bảo nhu cầu lướt web , xem phim…. mượt mà</div><div>Tenda N301 hỗ trợ nhiều chế độ hoạt động như Router/AP/Repeater</div><div><br></div><div>Tính năng chính</div><div>Cài đặt mạng WiFi của riêng bạn chỉ trong 1 phút</div><div>Kết nối nhanh với nút WPS</div><div>Trang bị 3 cổng LAN 100Mbps giúp dễ dàng kết nối máy tính bàn hay mở rộng hệ thống mạng dây</div><div>Thiết kế nhỏ gọn, phù hợp treo tường hoặc để bàn</div><div>Trang bị 2 anten ngoài 5dBi đảm bảo khả năng phát sóng WiFi mạnh mẽ</div><div><br></div><div>Tính năng đa nhiệm</div><div>Tenda N301 có thể làm như một Access Point wifi, có thể sử dụng chức năng Repeater wifi, bộ lọc MAC, hạn chế băng thông, cũng như quyền kiểm soát các thiết bị truy cập… đầy đủ các tiện ích đi kèm của một router chuyên dụng trên thị trường hiện nay mà giá thành thì thấp hơn rất nhiều so với các thiết bị cùng cấp độ khác.</div><div><br></div><div>Tốc độ truyền tải cao</div><div>Tenda N301 tuy nhỏ gọn nhưng nó đem lại tốc độ lên đến 300Mbps với chuẩn phát sóng wifi N băng tần 2,4Ghz, kết hợp cùng hai ăng ten đem lại vùng phủ sóng mạnh mẽ và mượt mà hơn phù hợp cho các kết nối có nhu cầu sử dụng internet tốc độ cao như chơi game online, nghe nhạc hay xem phim HD thoải mái mà không bị giật hay trễ tín hiệu kết nối.</div><div><br></div><div>Chế độ bảo mật hoàn hảo</div><div>Tenda N301 được cung cấp tùy chọn mã hóa không dây đa cấp để ngăn chặn truy cập trái phép và bảo vệ dữ liệu quan trọng của bạn cùng chuẩn 1,64 / 128bit WEP, WPA-PSK, WPA2-PSK đem lại sự an toàn tối đa cho mạng lưới wifi internet không dây của bạn tránh các tín hiệu xấu xâm nhập vòng kết nối của bạn để ăn cắp thông tin hay phá rối, giúp bạn xây dựng một điểm phát sóng wifi không dây cũng như có dây an toàn và mạnh mẽ.</div><div><br></div><div>Thiết kế tiện lợi</div><div>Sản phẩm có thiết kế nhỏ, gọn, nhẹ không chiếm nhiều diện tích. Ngoài ra, Tenda N301 còn được trang bị hệ thống đèn tín hiệu và chú thích rõ ràng, bên cạnh đó là các cổng cắm tiện dụng tương thích với mọi thiết bị, trang bị nhiều chuẩn phát khác nhau phù hợp với nhiều nhu cầu đối tượng người dùng.</div><div><br></div><div>Thông số kỹ thuật</div><div>Chipset&nbsp; broadcom.</div><div>Chuẩn N với tốc độ 300M, chuẩn 2T2R băng tần&nbsp; 2.4GHz.</div><div>Có 3 cổng LAN tốc độ 10/100Mbps,&nbsp; và&nbsp; 1 cổng WAN tốc độ 10/100Mbps.</div><div>Thiết kế thời trang có 2 Ăng-ten 5 dBI sóng siêu khỏe .</div><div>Chế độ làm việc: Universal Repeater/ AP/ WISP/ WDS Bridge.</div></div>','modem.jpg','2023-06-03 06:26:27.440000','2023-06-03 06:26:58.880000',_binary '',_binary '',100000,300000,50000,0,0,0,0,16,42,'S','Đen','Cotton','HUYNH Y',NULL,_binary '\0',6.00,'A01','A0100003');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `id` int NOT NULL AUTO_INCREMENT,
  `description` varchar(150) NOT NULL,
  `name` varchar(40) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_ofx66keruapi6vyqpv6f2or37` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'manage everything','Admin'),(2,'manage product price, customer, shipping, order and sales report','Salesperson'),(3,'manage categories, brandsproducts, articles and menus','Editor'),(4,'View products, view orders and update orders status','Shipper'),(5,'manage questions and review','Assistant');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `settings` (
  `key` varchar(128) NOT NULL,
  `value` varchar(1024) NOT NULL,
  `category` varchar(45) NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settings`
--

LOCK TABLES `settings` WRITE;
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
INSERT INTO `settings` VALUES ('ADDRESS_COMPANY','154 Âu Dương Lân, Phường 3, Quận 8','GENERAL'),('BACKUP_YN','Y','GENERAL'),('COPYRIGHT','Copyright © 2022 ❤️ by huynh Y','GENERAL'),('CURRENCY_ID','11','CURRENCY'),('CURRENCY_SYMBOL','đ','CURRENCY'),('CURRENCY_SYMBOL_POSITION','After price','CURRENCY'),('CUSTOMER_VERIFY_CONTENT','dear [[name]],<div><span style=\"font-size:16px;\"><br></span></div><div><span style=\"font-size:16px;\">Vui lòng xác nhận kích hoạt tài khoản của bạn</span></div><div><span style=\"font-size:16px;\"><br></span></div><div><span style=\"font-size:16px;\"><a href=\"[[URL]]\" target=\"_blank\">Xác nhận</a></span></div>','MAIL_TEMPLATES'),('CUSTOMER_VERIFY_SUBJECT','Xác nhận mật khẩu','MAIL_TEMPLATES'),('DECIMAL_DIGITS','0','CURRENCY'),('DECIMAL_POINT_TYPE','COMMA','CURRENCY'),('EMAIL_COMPANY','lehuynhy2106@gmail.com','GENERAL'),('LINK_CONNECT','https://twitter.com/?lang=vi','GENERAL'),('LINK_FB','https://www.facebook.com/profile.php?id=100006973774596','GENERAL'),('LINK_YT','https://www.youtube.com/channel/UCH7d4_IYGTjBTjp-IXb9HBg','GENERAL'),('LINK_ZALO','https://zalo.me/0903182936','GENERAL'),('MAIL_FROM','vannguyen002st@gmail.com','MAIL_SERVER'),('MAIL_HOST','smtp.gmail.com','MAIL_SERVER'),('MAIL_PASSWORD','phhempjclppinigr','MAIL_SERVER'),('MAIL_PORT','587','MAIL_SERVER'),('MAIL_SENDER_NAME','HYT Tech','MAIL_SERVER'),('MAIL_USERNAME','vannguyen002st@gmail.com','MAIL_SERVER'),('ORDER_CONFIRMATION_CONTENT','Xin chào [[name]],&nbsp;<div>Chân thành cảm ơn bạn đã tin tưởng và ủng hộ chúng tôi. Sau đây là nội dung đơn hàng của bạn.</div><div><br><div>- Mã đơn hàng: [[orderId]]</div></div><div>- Thời gian đặt hàng : [[oderTime]]</div><div>- Gửi tới : [[shippingAddress]]</div><div>- Giá đơn hàng : [[total]]</div><div>- Loại hình thanh toán : [[paymentMethod]]</div><div><br></div><div>Để xem trạng thái đơn hàng của bạn, vui lòng truy cập HYT Computer</div><div>Mọi thắc mắc vui lòng liên hệ Zalo: 0903182936</div>','MAIL_TEMPLATES'),('ORDER_CONFIRMATION_SUBJECT','Thông tin đơn hàng của bạn','MAIL_TEMPLATES'),('PAYPAL_API_BASE_URL','https://api-m.sandbox.paypal.com','PAYMENT'),('PAYPAL_API_CLIENT_ID','PAYPAL_CLIENT_ID','PAYMENT'),('PAYPAL_API_CLIENT_SECRET','PAYPAL_CLIENT_SECRET','PAYMENT'),('PHONE','0903182937','GENERAL'),('SITE_LOGO','/site-logo/hyt2.png','GENERAL'),('SITE_NAME','HYT Tech','GENERAL'),('SMTP_AUTH','true','MAIL_SERVER'),('SMTP_SECURED','true','MAIL_SERVER'),('TAX_CODE','0266485482','GENERAL'),('TEL','0903182937','GENERAL'),('THOUSANDS_POINT_TYPE','POINT','CURRENCY'),('TIMES','9h - 22h','GENERAL');
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shipping_rates`
--

DROP TABLE IF EXISTS `shipping_rates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shipping_rates` (
  `id` int NOT NULL AUTO_INCREMENT,
  `cod_supported` bit(1) DEFAULT NULL,
  `days` int NOT NULL,
  `rate` float NOT NULL,
  `state` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `country_id` int DEFAULT NULL,
  `created_time` datetime(6) DEFAULT NULL,
  `updated_time` datetime(6) DEFAULT NULL,
  `work_user` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKef7sfgeybt3xn13nlt2j6sljw` (`country_id`),
  CONSTRAINT `FKef7sfgeybt3xn13nlt2j6sljw` FOREIGN KEY (`country_id`) REFERENCES `countries` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shipping_rates`
--

LOCK TABLES `shipping_rates` WRITE;
/*!40000 ALTER TABLE `shipping_rates` DISABLE KEYS */;
INSERT INTO `shipping_rates` VALUES (10,_binary '',3,10000,'Bình Dương',1,'2023-03-26 16:05:15.507000','2023-03-26 16:05:15.507000','Nghia'),(11,_binary '',0,0,'Bà Rịa – Vũng Tàu',1,'2023-06-14 19:23:15.767000','2023-06-14 19:23:15.767000','HUYNH Y'),(12,_binary '',5,50000,'Vân Nam',10,'2023-06-19 21:46:22.717000','2023-06-19 21:46:22.717000','HUYNH Y');
/*!40000 ALTER TABLE `shipping_rates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `slider`
--

DROP TABLE IF EXISTS `slider`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `slider` (
  `id` int NOT NULL AUTO_INCREMENT,
  `created_time` datetime(6) DEFAULT NULL,
  `updated_time` datetime(6) DEFAULT NULL,
  `work_user` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `enabled` bit(1) NOT NULL,
  `end_date` date DEFAULT NULL,
  `image_url` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `start_date` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `slider`
--

LOCK TABLES `slider` WRITE;
/*!40000 ALTER TABLE `slider` DISABLE KEYS */;
INSERT INTO `slider` VALUES (1,'2023-05-18 20:14:15.092000','2023-05-18 20:14:15.092000','Tạo bởi HUYNH Y',_binary '','2023-06-25','1.png','2023-05-17'),(2,'2023-05-18 20:15:11.770000','2023-06-19 21:48:45.901000','Sửa bởi HUYNH Y',_binary '','2023-06-24','2.png','2023-05-19'),(3,'2023-06-19 21:49:15.542000','2023-06-19 21:49:15.542000','Tạo bởi HUYNH Y',_binary '','2023-06-22','404.jpg','2023-06-18');
/*!40000 ALTER TABLE `slider` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `states`
--

DROP TABLE IF EXISTS `states`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `states` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `country_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKskkdphjml9vjlrqn4m5hi251y` (`country_id`),
  CONSTRAINT `FKskkdphjml9vjlrqn4m5hi251y` FOREIGN KEY (`country_id`) REFERENCES `countries` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=122 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `states`
--

LOCK TABLES `states` WRITE;
/*!40000 ALTER TABLE `states` DISABLE KEYS */;
INSERT INTO `states` VALUES (21,'An Giang',1),(22,'Bà Rịa – Vũng Tàu',1),(23,'Bắc Giang',1),(24,'Bắc Kạn',1),(25,'Bạc Liêu',1),(26,'Bắc Ninh',1),(27,'Bến Tre',1),(28,'Bình Định',1),(29,'Bình Dương',1),(30,'Bình Phước',1),(31,'Bình Thuận',1),(32,'Cà Mau',1),(33,'Cần Thơ',1),(34,'Cao Bằng',1),(35,'Đà Nẵng',1),(36,'Đắk Lắk',1),(37,'Đắk Nông',1),(38,'Điện Biên',1),(39,'Đồng Nai',1),(40,'Đồng Tháp',1),(41,'Gia Lai',1),(42,'Hà Giang',1),(43,'Hà Nam',1),(44,'Hà Nội',1),(45,'Hà Tĩnh',1),(46,'Hải Dương',1),(47,'Hải Phòng',1),(48,'Hậu Giang',1),(49,'Hòa Bình',1),(50,'Hưng Yên',1),(51,'Khánh Hòa',1),(52,'Kiên Giang',1),(53,'Kon Tum',1),(54,'Lai Châu',1),(55,'Lâm Đồng',1),(56,'Lạng Sơn',1),(57,'Lào Cai',1),(58,'Long An',1),(59,'Nam Định',1),(60,'Nghệ An',1),(61,'Ninh Bình',1),(62,'Ninh Thuận',1),(63,'Phú Thọ',1),(64,'Phú Yên',1),(65,'Quảng Bình',1),(66,'Quảng Nam',1),(67,'Quảng Ngãi',1),(68,'Quảng Ninh',1),(69,'Quảng Trị',1),(70,'Sóc Trăng',1),(71,'Sơn La',1),(72,'Tây Ninh',1),(73,'Thái Bình',1),(74,'Thái Nguyên',1),(75,'Thanh Hóa',1),(76,'Thừa Thiên Huế',1),(77,'Tiền Giang',1),(78,'TP Hồ Chí Minh',1),(79,'Trà Vinh',1),(80,'Tuyên Quang',1),(81,'Vĩnh Long',1),(82,'Vĩnh Phúc',1),(83,'Yên Bái',1),(84,'Chiang Mai',9),(85,'Chiang Rai',9),(86,'Kamphaeng Phet',9),(87,'Lampang',9),(88,'Lamphun',9),(89,'Mae Hong Son',9),(90,'Nakhon Sawan',9),(91,'Nan',9),(92,'Phayao',9),(93,'Phetchabun',9),(94,'Phichit',9),(95,'Phitsanulok',9),(96,'Phrae',9),(97,'Sukhothai',9),(98,'Tak',9),(99,'Uthai Thani',9),(100,'Uttaradit',9),(101,'Amnat Charoen',9),(102,'Buri Ram',9),(103,'Chaiyaphum',9),(104,'Kalasin',9),(105,'Khon Kaen',9),(106,'Loei',9),(107,'Maha Sarakham',9),(108,'Mukdahan',9),(109,'Nakhon Phanom',9),(110,'Nakhon Ratchasima',9),(111,'Nong Bua Lamphu',9),(112,'Nong Khai',9),(113,'Roi Et',9),(114,'Sakon Nakhon',9),(115,'Si Sa Ket',9),(116,'Surin',9),(117,'Ubon Ratchathani',9),(118,'Udon Thani',9),(119,'Yasothon',9),(120,'Bung Kan',9),(121,'Vân Nam',10);
/*!40000 ALTER TABLE `states` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `adress` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `birth_place` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `date` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `date_range` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `email` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `enabled` bit(1) NOT NULL,
  `full_name` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `identity_card` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `issued_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `log_date` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `password` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `phone` varchar(55) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `photos` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `created_time` datetime(6) DEFAULT NULL,
  `updated_time` datetime(6) DEFAULT NULL,
  `work_user` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `degrees` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `maritals` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `sexs` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_6dotkott2kjsp8vw4d0m25fb7` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (52,'Hà Nội','Đăk lăk','2022-06-27','2022-07-04','admin@admin.com',_binary '','HUYNH Y','123456478','Đăk Lăk',NULL,'$2a$10$ujCVBfNlIEM5.PysLYU.1OkSdCnQ6x33HKCyE27srowWbdqgsHpMy','0368023380','user.png','2022-08-12 15:01:43.211000','2023-03-27 13:32:17.694000','HUYNH Y','E01','U01','S01'),(53,'Đăk lăk','Đăk lăk','2022-07-11','2022-06-26','edit@edit.com',_binary '','Edit','123456','Đăk Lăk',NULL,'$2a$10$x/IHW.gxVTWzLC5mAx5ieumowDJcKe1Obg8X4aRAO/tLiFJ9W/Lt6','123456','user.png','2022-08-19 14:49:22.329000','2023-06-19 20:44:53.040000','HUYNH Y','E01','U01','S01'),(56,'Hà Nội','Đăk lăk','2022-06-26','2022-06-26','assistant@assistant.com',_binary '','Assistant','12456','Đăk Lăk',NULL,'$2a$10$JAg1dDWCkd0HtY2iUX1S5Oa8QptKhU/U.3jlNbiUI9M/NsOcUd7n2','123456','user.png','2022-08-22 09:22:12.806000','2023-03-27 14:31:27.017000','HUYNH Y','E01','U01','S01'),(59,'Bình Dương','Bình Dương','2023-02-08','2000-02-09','salesperson@salesperson.com',_binary '','Sale','02348416269','Bình Dương',NULL,'$2a$10$BfgdrUkOxyki2CdtON6aR.nXPiZGpaZJKMw7Rhii8zV/88JIGB9bu','0368023380','user.png','2023-02-17 00:34:00.856000','2023-03-19 01:17:18.951000','Nghia','E01','U01','S01'),(61,'Bình Dương','Bình Dương','2023-03-22','2023-03-06','ship@admin.com',_binary '','Shiper','1254316567','Bình Dương',NULL,'$2a$10$JyiPvSmFKH5fNy4bnfAy3eYkfBZ5RmeKx2b6aQVVJ5Qo/fqQmMIyG','0368023380','user.png','2023-03-19 23:09:06.547000','2023-03-19 23:09:06.547000','Nghia','E01','U01','S01');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_roles`
--

DROP TABLE IF EXISTS `users_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users_roles` (
  `user_id` int NOT NULL,
  `role_id` int NOT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `FKj6m8fwv7oqv74fcehir1a9ffy` (`role_id`),
  CONSTRAINT `FK2o0jvgh89lemvvo17cbqvdxaa` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `FKj6m8fwv7oqv74fcehir1a9ffy` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_roles`
--

LOCK TABLES `users_roles` WRITE;
/*!40000 ALTER TABLE `users_roles` DISABLE KEYS */;
INSERT INTO `users_roles` VALUES (52,1),(59,2),(53,3),(61,4),(56,5);
/*!40000 ALTER TABLE `users_roles` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-06-19 23:19:05
