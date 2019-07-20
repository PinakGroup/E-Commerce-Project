-- MySQL dump 10.13  Distrib 8.0.13, for Win64 (x86_64)
--
-- Host: localhost    Database: e-commerce
-- ------------------------------------------------------
-- Server version	8.0.13

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `brand`
--

DROP TABLE IF EXISTS `brand`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `brand` (
  `id` binary(16) NOT NULL,
  `description` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `description_UNIQUE` (`description`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `brand`
--

LOCK TABLES `brand` WRITE;
/*!40000 ALTER TABLE `brand` DISABLE KEYS */;
INSERT INTO `brand` VALUES (_binary '¨`\\íQüé¡','Addidas'),(_binary '`Owæ½GÎ\�','Neat Feat'),(_binary '°Ï´Qüé\�','Nike');
/*!40000 ALTER TABLE `brand` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `category` (
  `id` binary(16) NOT NULL,
  `description` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `category_id` binary(16) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_id___category_id` (`category_id`,`id`),
  KEY `fk_category__category_idx` (`category_id`),
  CONSTRAINT `fk_category__category` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (_binary '>oR\ré¡<R','Sport',_binary 'ãÍËQüé\�'),(_binary 'ïÇ°R\ré¡','Sport',_binary 'èt¨Qüé¡'),(_binary '\'ÊwR\ré¡<','Casual',_binary 'ãÍËQüé\�'),(_binary '+ÝüXR\ré¡<','Classic',_binary 'ãÍËQüé\�'),(_binary '.óásR\ré¡<','Classic',_binary 'èt¨Qüé¡'),(_binary '²~bERé¡<R','casual',_binary 'èt¨Qüé¡'),(_binary 'ãÍËQüé\�','Man',NULL),(_binary 'èt¨Qüé¡','Woman',NULL);
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `country`
--

DROP TABLE IF EXISTS `country`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `country` (
  `id` binary(16) NOT NULL,
  `name` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name_UNIQUE` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `country`
--

LOCK TABLES `country` WRITE;
/*!40000 ALTER TABLE `country` DISABLE KEYS */;
INSERT INTO `country` VALUES (_binary '	$|�R2麐T�P7M\�','Afghanistan'),(_binary '�4R2麐T�P7M\�','Albania'),(_binary '&a\�\"R2麐T�P7M\�','Algeria'),(_binary '.��R2麐T�P7M\�','Andorra'),(_binary '5\��tR2麐T�P7M\�','Angola'),(_binary 'C:3R2麐T�P7M\�','Antigua and Barbuda'),(_binary 'OK	�R2麐T�P7M\�','Argentina'),(_binary '[߁\\R2麐T�P7M\�','Armenia'),(_binary 'cYB\'R2麐T�P7M\�','Australia'),(_binary 'n\"\�\�R2麐T�P7M\�','Austria'),(_binary '��;iR2麐T�P7M\�','Bahrain'),(_binary '���R2麐T�P7M\�','Bangladesh'),(_binary '�\�\�R2麐T�P7M\�','Barbados'),(_binary '�eR2麐T�P7M\�','Belarus'),(_binary '����R2麐T�P7M\�','Belgium'),(_binary '�涹R2麐T�P7M\�','Belize'),(_binary 'ÿKSR2麐T�P7M\�','Benin'),(_binary '\�gx�R2麐T�P7M\�','Bhutan'),(_binary '\�:P�R2麐T�P7M\�','Bolivia'),(_binary '\�Ŗ\�R2麐T�P7M\�','Bosnia and Herzegovina'),(_binary '\�\�XhR2麐T�P7M\�','Botswana'),(_binary '\�6�R2麐T�P7M\�','Brazil'),(_binary '�~b8R2麐T�P7M\�','Brunei'),(_binary '����R2麐T�P7M\�','Bulgaria'),(_binary '\�y�R3麐T�P7M\�','Burkina Faso'),(_binary '��xR3麐T�P7M\�','Burundi'),(_binary '\�`*R3麐T�P7M\�','Cabo Verde'),(_binary '-\�R3麐T�P7M\�','Cambodia'),(_binary '%�;	R3麐T�P7M\�','Cameroon'),(_binary '.��R3麐T�P7M\�','Canada'),(_binary '8x�>R3麐T�P7M\�','Central African Republic'),(_binary '@�E}R3麐T�P7M\�','Chad'),(_binary 'I5KUR3麐T�P7M\�','Chile'),(_binary 'O�NbR3麐T�P7M\�','China'),(_binary 'W$d\�R3麐T�P7M\�','Colombia'),(_binary '^�p\�R3麐T�P7M\�','Comoros'),(_binary '���hR0麐T�P7M\�','Egypt'),(_binary '�L`�R0麐T�P7M\�','Sudan'),(_binary 'yN�R2麐T�P7M\�','The Bahamas');
/*!40000 ALTER TABLE `country` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `coupon`
--

DROP TABLE IF EXISTS `coupon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `coupon` (
  `id` binary(16) NOT NULL,
  `code` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `discount` smallint(3) NOT NULL,
  `start_date` datetime NOT NULL,
  `end_date` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `code_UNIQUE` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `coupon`
--

LOCK TABLES `coupon` WRITE;
/*!40000 ALTER TABLE `coupon` DISABLE KEYS */;
/*!40000 ALTER TABLE `coupon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `delivery_status`
--

DROP TABLE IF EXISTS `delivery_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `delivery_status` (
  `id` binary(16) NOT NULL,
  `description` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `description_UNIQUE` (`description`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delivery_status`
--

LOCK TABLES `delivery_status` WRITE;
/*!40000 ALTER TABLE `delivery_status` DISABLE KEYS */;
/*!40000 ALTER TABLE `delivery_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `employee` (
  `ID` int(11) DEFAULT NULL,
  `F_Name` varchar(255) DEFAULT NULL,
  `L_Name` varchar(255) DEFAULT NULL,
  `Sex` varchar(255) DEFAULT NULL,
  `Age` int(11) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `PhoneNumber` varchar(255) DEFAULT NULL,
  `Vacation_Balance` int(11) DEFAULT '30'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES (1,'Mr.amr','hesham','male',24,'22ST','075',30),(2,'Mr.mohamed','jamal','male',24,'23ST','0799',30),(3,'Mrs.mona','Medhat','female',45,'22ST','0999',45),(4,'Mrs.mona','Mohamed','female',45,'22ST','000',45),(5,'Mr.Hussien','Medhat','male',45,'22ST','000',45),(1,'Mr.amr','hesham','male',24,'22ST','075',30),(2,'Mr.mohamed','jamal','male',24,'23ST','0799',30),(3,'Mrs.mona','Medhat','female',45,'22ST','0999',45),(4,'Mrs.mona','Mohamed','female',45,'22ST','000',45),(5,'Mr.Hussien','Medhat','male',45,'22ST','000',45),(1,'Mr.amr','hesham','male',24,'22ST','075',30),(2,'Mr.mohamed','jamal','male',24,'23ST','0799',30),(3,'Mrs.mona','Medhat','female',45,'22ST','0999',45),(4,'Mrs.mona','Mohamed','female',45,'22ST','000',45),(5,'Mr.Hussien','Medhat','male',45,'22ST','000',45);
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_products`
--

DROP TABLE IF EXISTS `order_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `order_products` (
  `id` binary(16) NOT NULL,
  `user_orders_id` binary(16) NOT NULL,
  `product_id` binary(16) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price_before_discount` int(11) NOT NULL,
  `total_discount` smallint(3) DEFAULT NULL,
  `coupon_id` binary(16) DEFAULT NULL,
  `deliver_status_id` binary(16) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_order_products___coupon_idx` (`coupon_id`),
  KEY `fk_order_products___delivery_status_idx` (`deliver_status_id`),
  KEY `fk_order_products___user_orders_idx` (`user_orders_id`),
  KEY `fk_order_products___product_idx` (`product_id`),
  CONSTRAINT `fk_order_products___coupon` FOREIGN KEY (`coupon_id`) REFERENCES `coupon` (`id`),
  CONSTRAINT `fk_order_products___delivery_status` FOREIGN KEY (`deliver_status_id`) REFERENCES `delivery_status` (`id`),
  CONSTRAINT `fk_order_products___product` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`),
  CONSTRAINT `fk_order_products___user_orders` FOREIGN KEY (`user_orders_id`) REFERENCES `user_orders` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_products`
--

LOCK TABLES `order_products` WRITE;
/*!40000 ALTER TABLE `order_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `persons`
--

DROP TABLE IF EXISTS `persons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `persons` (
  `PersonID` int(11) DEFAULT NULL,
  `LastName` varchar(255) DEFAULT NULL,
  `FirstName` varchar(255) DEFAULT NULL,
  `Address` varchar(255) DEFAULT NULL,
  `City` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `persons`
--

LOCK TABLES `persons` WRITE;
/*!40000 ALTER TABLE `persons` DISABLE KEYS */;
INSERT INTO `persons` VALUES (1,'hesham','amr','22st','cairo'),(2,'jammal','mohamed','55st','alex');
/*!40000 ALTER TABLE `persons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `product` (
  `id` binary(16) NOT NULL,
  `description` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `detailed_description` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `price` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `buying_count` int(11) NOT NULL DEFAULT '0',
  `main_photo_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `discount` smallint(3) DEFAULT NULL,
  `category_id` binary(16) NOT NULL,
  `brand_id` binary(16) NOT NULL,
  `short_lined_description` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_product_category_idx` (`category_id`),
  KEY `fk_product_brand_idx` (`brand_id`),
  CONSTRAINT `fk_product_brand` FOREIGN KEY (`brand_id`) REFERENCES `brand` (`id`),
  CONSTRAINT `fk_product_category` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (_binary '%pRé¡<R','product11111','product11 description product 11 yaah',150,5,0,'product10c29725-7052-1511-c3a9-c28fc2a13c52.jpg',0,_binary '\'ÊwR\ré¡<',_binary '¨`\\íQüé¡',''),(_binary '\�\�\�J̆j\�\�\�\�\�$','mmmmmmmmmm','kjghkjh',555,5555,0,'.jpg',NULL,_binary '>oR\ré¡<R',_binary '¨`\\íQüé¡',''),(_binary 'RÄ³Ré¡<','prodjkhjkhjk','product12 description',150,5,0,'path',0,_binary 'ïÇ°R\ré¡',_binary '¨`\\íQüé¡',''),(_binary 'Z¤Ré¡<','product13','product13 description',150,5,0,'path',0,_binary '²~bERé¡<R',_binary '¨`\\íQüé¡',''),(_binary 'jµåÜRé¡','product14','product14 description',150,5,0,'path',0,_binary '²~bERé¡<R',_binary '¨`\\íQüé¡',''),(_binary 'mmRé¡<R','product15','product15 description',150,5,0,'path',0,_binary '²~bERé¡<R',_binary '¨`\\íQüé¡',''),(_binary 'x¢ðRé¡<','product16','product16 description',150,5,0,'path',0,_binary '\'ÊwR\ré¡<',_binary '¨`\\íQüé¡',''),(_binary '{gLtRé¡<R\�','product17','product17 description',150,5,0,'path',0,_binary '\'ÊwR\ré¡<',_binary '¨`\\íQüé¡',''),(_binary '|u�>�bAe��G\�O�4','aaa','aaaaa',150,10,0,'.jpg',NULL,_binary '>oR\ré¡<R',_binary '¨`\\íQüé¡','Good'),(_binary 'ÃÜÍRé\�','product18','product18 description',150,5,0,'path',0,_binary '+ÝüXR\ré¡<',_binary '¨`\\íQüé¡',''),(_binary 'úQRé¡<','product19','product19 description',150,5,0,'path',0,_binary '+ÝüXR\ré¡<',_binary '¨`\\íQüé¡',''),(_binary '÷çRé\�','product20','product20 description',150,5,0,'path',0,_binary '+ÝüXR\ré¡<',_binary '¨`\\íQüé¡',''),(_binary 'ªæqRé¡','product1','product1 description',150,5,0,'path',0,_binary 'ãÍËQüé\�',_binary '¨`\\íQüé¡',''),(_binary '»©èRé¡','product2','product2 description',150,5,0,'path',0,_binary 'èt¨Qüé¡',_binary '¨`\\íQüé¡',''),(_binary 'Á¾ÙERé¡','product3','product3 description',150,5,0,'path',0,_binary 'èt¨Qüé¡',_binary '¨`\\íQüé¡',''),(_binary 'Å?ôRé¡','product4','product4 description',150,5,0,'path',0,_binary 'èt¨Qüé¡',_binary '¨`\\íQüé¡',''),(_binary 'Î»Ré\�','product5','product5 description',150,5,0,'path',0,_binary 'ãÍËQüé\�',_binary '¨`\\íQüé¡',''),(_binary 'ÒåÑRé\�','product6','product6 description',150,5,0,'path',0,_binary 'ãÍËQüé\�',_binary '¨`\\íQüé¡',''),(_binary 'Õ±¸Ré\�','product7','product7 description',150,5,0,'path',0,_binary 'ãÍËQüé\�',_binary '¨`\\íQüé¡',''),(_binary 'æN¨Ré¡','product8','product8 description',150,5,0,'path',0,_binary '.óásR\ré¡<',_binary '¨`\\íQüé¡',''),(_binary 'éÎÙzRé¡','product9','product9 description',150,5,0,'path',0,_binary '.óásR\ré¡<',_binary '¨`\\íQüé¡',''),(_binary 'ûöÛÂRé\�','product10','product10 description',150,5,0,'path',0,_binary '+ÝüXR\ré¡<',_binary '¨`\\íQüé¡','');
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_media`
--

DROP TABLE IF EXISTS `product_media`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `product_media` (
  `id` binary(16) NOT NULL,
  `product_id` binary(16) NOT NULL,
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_product_media___product_idx` (`product_id`),
  CONSTRAINT `fk_product_media___product` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_media`
--

LOCK TABLES `product_media` WRITE;
/*!40000 ALTER TABLE `product_media` DISABLE KEYS */;
/*!40000 ALTER TABLE `product_media` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shopping_cart`
--

DROP TABLE IF EXISTS `shopping_cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `shopping_cart` (
  `id` binary(16) NOT NULL,
  `user_id` binary(16) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id_UNIQUE` (`user_id`),
  KEY `fk_user_email_idx` (`user_id`),
  CONSTRAINT `fk_shopping_cart___user` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shopping_cart`
--

LOCK TABLES `shopping_cart` WRITE;
/*!40000 ALTER TABLE `shopping_cart` DISABLE KEYS */;
INSERT INTO `shopping_cart` VALUES (_binary '�����@M��?o\�U\'\�)',_binary '��\�b�+O!�Bx\n+v*\�');
/*!40000 ALTER TABLE `shopping_cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shopping_cart_products`
--

DROP TABLE IF EXISTS `shopping_cart_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `shopping_cart_products` (
  `id` binary(16) NOT NULL,
  `shopping_cart_id` binary(16) NOT NULL,
  `product_id` binary(16) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price_before_discount` int(11) NOT NULL,
  `product_discount` smallint(3) DEFAULT NULL,
  `coupon_id` binary(16) DEFAULT NULL,
  `coupon_discount` smallint(3) DEFAULT NULL,
  `total_discount` smallint(3) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_shpping_cart_id___product_id_idx` (`shopping_cart_id`,`product_id`),
  KEY `fk_shopping_cart_products___product_idx` (`product_id`),
  KEY `fk_shopping_cart_products___shopping_cart_idx` (`shopping_cart_id`),
  KEY `fk_shopping_cart_products___coupon_idx` (`coupon_id`),
  CONSTRAINT `fk_shopping_cart_products___coupon` FOREIGN KEY (`coupon_id`) REFERENCES `coupon` (`id`),
  CONSTRAINT `fk_shopping_cart_products___product` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`),
  CONSTRAINT `fk_shopping_cart_products___shopping_cart` FOREIGN KEY (`shopping_cart_id`) REFERENCES `shopping_cart` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shopping_cart_products`
--

LOCK TABLES `shopping_cart_products` WRITE;
/*!40000 ALTER TABLE `shopping_cart_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `shopping_cart_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `user` (
  `id` binary(16) NOT NULL,
  `email` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `password` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `birthdate` date NOT NULL,
  `gender` bit(1) NOT NULL,
  `credit_limit` int(11) NOT NULL,
  `job` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `address` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `phone` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `photo_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `country_id` binary(16) DEFAULT NULL,
  `user_role_id` binary(16) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email_UNIQUE` (`email`),
  KEY `fk_user___country_idx` (`country_id`),
  KEY `fk_user___user_roles_idx` (`user_role_id`),
  CONSTRAINT `fk_user___country` FOREIGN KEY (`country_id`) REFERENCES `country` (`id`),
  CONSTRAINT `fk_user___user_roles` FOREIGN KEY (`user_role_id`) REFERENCES `user_roles` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (_binary '\0��n\�K��Ov�I��\�','fares@gmail.com','123456','fares','2019-03-30',_binary '',0,'programmer','el mansoura','01064046540','\\UsersImages',_binary '	$|�R2麐T�P7M\�',_binary 'i\�R_\�@T�P7M\�'),(_binary '.��i�FEQ�@�D��','frndz_3alosh@yahoo.com','123','ALIA MAHMOUD MOHEB','2019-03-30',_binary '\0',123,'','54 ELKHAMYEL','01004929859','\\UsersImages\\user01004929859.jpg',_binary '���hR0麐T�P7M\�',_binary 'i\�R_\�@T�P7M\�'),(_binary '<=\���K<��ت\ni�{','alimahmoud@gmail.com','123456','Ali ','2019-03-30',_binary '',154845,'','54 ELKHAMYEL','01009950312','\\UsersImagesuser01009950312.jpg',_binary '���hR0麐T�P7M\�',_binary 'i\�R_\�@T�P7M\�'),(_binary '<E�5\�Eڬ�v\�\�$','new@gmail.com','123','aaa','2019-03-30',_binary '',123,'','','01004929859','\\UsersImages\\user01004929859.jpg',_binary '	$|�R2麐T�P7M\�',_binary 'i\�R_\�@T�P7M\�'),(_binary '>�ȶ�\�G��m\'\�ad\�','aliahmahmoud52fdfdf@gmail.com','Amr@12345','ALIA MAHMOUD MOHEB','2019-03-31',_binary '',100,'programmer','54 ELKHAMYEL','01117538430',NULL,_binary 'W$d\�R3麐T�P7M\�',_binary 'i\�R_\�@T�P7M\�'),(_binary 'Hs5\��Eq�m\n�\�\�/T','aliahmahmoud@gmail.com','123','ALIA MAHMOUD MOHEB','2019-03-30',_binary '\0',0,'','54 ELKHAMYEL','01004929859','\\UsersImages\\user01004929859.jpg',_binary '���hR0麐T�P7M\�',_binary 'i\�R_\�@T�P7M\�'),(_binary 'I��[$I��\�$\�*\�_','dhbsdbhvsdhbsdvhb@gmail.com','123','ALIA MAHMOUD MOHEB','2019-03-31',_binary '\0',123,'','54 ELKHAMYEL','01004929859',NULL,_binary '���hR0麐T�P7M\�',_binary 'i\�R_\�@T�P7M\�'),(_binary 'S�GsF�L��[��,�x','hjehjehj@gmail.com','2222','erjejkvr','2019-03-30',_binary '',22546556,'','rfjefehveewe','01004785961','D:\\Alia\\01-ITIJavaTrackMaterials\\00-JEE Track\\New Web Project\\neat-feet\\target\\neat-feet-1.0-SNAPSHOT\\\\UsersImages\\user01004785961.jpg',_binary '	$|�R2麐T�P7M\�',_binary 'i\�R_\�@T�P7M\�'),(_binary 'V�\�D5\�D̀�lޮ���','hbvshbvsdhd@gmail.com','123','ALIA MAHMOUD MOHEB','2019-03-31',_binary '\0',123,'','54 ELKHAMYEL','01004929859',NULL,_binary '���hR0麐T�P7M\�',_binary 'i\�R_\�@T�P7M\�'),(_binary 'Y��\�E\�E,��毕�\�','ggg123@gmail.com','123','ALIA MAHMOUD MOHEB','2019-03-31',_binary '',123,'','54 ELKHAMYEL','01004929859',NULL,_binary '���hR0麐T�P7M\�',_binary 'i\�R_\�@T�P7M\�'),(_binary 'j8\�DGJ[�\��\�\�Y','aaaabbbbccc@gmail.com','123','ALIA MAHMOUD MOHEB','2019-04-03',_binary '\0',123,'','faisal','01009950312',NULL,_binary '���hR0麐T�P7M\�',_binary 'i\�R_\�@T�P7M\�'),(_binary 'k#h\�hOŦ\�\'��\Z\�','aliahmahmoud52@gmail.com','123','Alia  Mahmoud','1995-09-19',_binary '\0',100000,'yyyyy','54 yyyyy','01004929859','\\UsersImages\\user6b2368ea-0668-4fc5-a6c4-0827b2ff1aec.jpg',_binary '���hR0麐T�P7M\�',_binary 'i\�R_\�@T�P7M\�'),(_binary 'w�\�\� cK��\Z\�Ӓԍ','123moud52@gmail.com','123','ALIA MAHMOUD MOHEB','2019-03-31',_binary '\0',123,'','54 ELKHAMYEL','01004929859',NULL,_binary '���hR0麐T�P7M\�',_binary 'i\�R_\�@T�P7M\�'),(_binary 'zh�Wk)B�]��W�\�','aliahm@gmail.com','123','ALIA MAHMOUD MOHEB','2019-03-31',_binary '\0',123,'','54 ELKHAMYEL','01004929859',NULL,_binary '���hR0麐T�P7M\�',_binary 'i\�R_\�@T�P7M\�'),(_binary '~&)*M����\Zk�l�','12sgrgfs@gmail.com','123','ALIA MAHMOUD MOHEB','2019-03-31',_binary '\0',123,'','54 ELKHAMYEL','01004929859',NULL,_binary '���hR0麐T�P7M\�',_binary 'i\�R_\�@T�P7M\�'),(_binary '�b�\n�M+��kD\�C','mahmoud@gmail.com','123456','Mahmoud sherif','2019-03-30',_binary '',10000,'','','01141744785','\\UsersImages\\user01141744785.jpg',_binary '���hR0麐T�P7M\�',_binary 'i\�R_\�@T�P7M\�'),(_binary '�\��<�B@\�\�h�\�7Ϻ','000000@gmail.com','000','ALIA MAHMOUD MOHEB','2019-04-04',_binary '\0',123,'123','54 ELKHAMYEL','01004929859',NULL,_binary '���hR0麐T�P7M\�',_binary 'i\�R_\�@T�P7M\�'),(_binary '�H�JJ\�:�.�','012alia@gmail.com','123','ALIA MAHMOUD MOHEB','2019-04-03',_binary '\0',123,'','54 ELKHAMYEL','01009950312',NULL,_binary '���hR0麐T�P7M\�',_binary 'i\�R_\�@T�P7M\�'),(_binary '�6�s�L��uX/\0�','newemail@gmail.com','123','ALIA MAHMOUD MOHEB','2019-04-03',_binary '\0',123,'','54 ELKHAMYEL','01004929859',NULL,_binary '���hR0麐T�P7M\�',_binary 'i\�R_\�@T�P7M\�'),(_binary '�BA\�e\�Ml��\�tս\�','000@gmail.com','000','ALIA MAHMOUD MOHEB','2019-04-03',_binary '\0',11111,'','54 ELKHAMYEL','01004929859','\\UsersImages\\user974241dd-65d1-4d6c-9793-dc74d5bd07cd.jpg',_binary '���hR0麐T�P7M\�',_binary 'i\�R_\�@T�P7M\�'),(_binary '�fyU�BJ��=)\���P','amer@neatfeat.com','123456','amer','2019-04-02',_binary '',1000,'','','01092423389',NULL,_binary '	$|�R2麐T�P7M\�',_binary 'i\�R_\�@T�P7M\�'),(_binary '�Z!�\�\\B����s}�\�\�','beautiful@gmail.com','123456','ALIA MAHMOUD MOHEB','2019-04-03',_binary '\0',123,'','54 ELKHAMYEL','01009950312',NULL,_binary '���hR0麐T�P7M\�',_binary 'i\�R_\�@T�P7M\�'),(_binary '���Z\�D��\�]9��!','hmoud52@gmail.com','123','ALIA MAHMOUD MOHEB','2019-03-31',_binary '\0',123,'','54 ELKHAMYEL','01004929859',NULL,_binary '���hR0麐T�P7M\�',_binary 'i\�R_\�@T�P7M\�'),(_binary '��\�b�+O!�Bx\n+v*\�','amer@neetfeet.com','123456','amer','1996-08-04',_binary '',1000,'','','01092423389',NULL,_binary '	$|�R2麐T�P7M\�',_binary 'i\�R_\�@T�P7M\�'),(_binary '��~���DP�²\nd)t!','newmailya3am@gmail.com','123','ALIA MAHMOUD MOHEB','2019-04-02',_binary '\0',123,'','54 ELKHAMYEL','01004929859',NULL,_binary '���hR0麐T�P7M\�',_binary 'i\�R_\�@T�P7M\�'),(_binary '��\�GP�¾(��}�','aliamoheb123@gmail.com','123','ALIA MAHMOUD MOHEB','2019-04-02',_binary '\0',123,'','54 ELKHAMYEL','01004929859',NULL,_binary '���hR0麐T�P7M\�',_binary 'i\�R_\�@T�P7M\�'),(_binary '���:V/M���.�g!�\�','aa@neatfeet.com','123456','aa','2019-04-02',_binary '',1000,'','','01092423389',NULL,_binary '	$|�R2麐T�P7M\�',_binary 'i\�R_\�@T�P7M\�'),(_binary '�\���Գ@S��\��OEp','fares12@gmail.com','123','fares','2019-03-31',_binary '\0',123,'','','01004929859',NULL,_binary '	$|�R2麐T�P7M\�',_binary 'i\�R_\�@T�P7M\�'),(_binary '�O�OE3�\�GCA\�','newlastemail@gmail.com','123','ALIA MAHMOUD MOHEB','2019-04-03',_binary '\0',123,'','54 ELKHAMYEL','01004929859','userba4fb118-4f16-4533-8dd6-47430141e384.jpg',_binary '���hR0麐T�P7M\�',_binary 'i\�R_\�@T�P7M\�'),(_binary '�\�R�W�@ݞ佁)Z�','00myemail@yahoo.com','123','Alia Mahmoud','2019-04-03',_binary '\0',122,'','54 ELKHAMYEL','01004929859',NULL,_binary '���hR0麐T�P7M\�',_binary 'i\�R_\�@T�P7M\�'),(_binary '\�\�J�?8H����\�\�}s','0112@gmail.com','123','ALIA MAHMOUD MOHEB','2019-04-03',_binary '\0',99999,'','54 ELKHAMYEL','01004929859','\\UsersImages\\userc9cc4abb-3f38-4886-8b84-16a0e7c87d73.jpg',_binary '���hR0麐T�P7M\�',_binary 'i\�R_\�@T�P7M\�'),(_binary '\�|�AǶ�\r47y0','0abs@gmail.com','123','ALIA MAHMOUD MOHEB','2019-04-03',_binary '\0',123,'','54 ELKHAMYEL','01009950312',NULL,_binary '���hR0麐T�P7M\�',_binary 'i\�R_\�@T�P7M\�'),(_binary '\�\r�a2�O��;_���*%','255fwfwewehmoud52@gmail.com','123','ALIA MAHMOUD MOHEB','2019-03-31',_binary '\0',123,'','54 ELKHAMYEL','01004929859',NULL,_binary '���hR0麐T�P7M\�',_binary 'i\�R_\�@T�P7M\�'),(_binary '\�Ƽ*��DY�R1�x\�	','amr@gmail.com','123456','Amr','2019-03-30',_binary '',15478,'programmer','cairo','01117538430','\\UsersImages\\user01117538430.jpg',_binary '���hR0麐T�P7M\�',_binary 'i\�R_\�@T�P7M\�'),(_binary '\�/\�^\�@T��\r\�\"\�\�','ayemail@gmail.com','123','ALIA MAHMOUD MOHEB','2019-04-02',_binary '\0',123,'','54 ELKHAMYEL','01004929859',NULL,_binary '���hR0麐T�P7M\�',_binary 'i\�R_\�@T�P7M\�'),(_binary '�E4���A�p�}�k+\�','amrelkady93@gmail.com','Amr@12345','amr','2019-03-31',_binary '',150,'programmer','54 ELKHAMYEL','01117538430',NULL,_binary '���hR0麐T�P7M\�',_binary 'i\�R_\�@T�P7M\�'),(_binary '�2�\�A1�Uu�*\�0','aaa@gmail.com','123','aaa','2019-03-30',_binary '',10000,'','aaa','01125478961','D:\\Alia\\01-ITIJavaTrackMaterials\\00-JEE Track\\New Web Project\\neat-feet\\target\\neat-feet-1.0-SNAPSHOT\\\\UsersImages',_binary '	$|�R2麐T�P7M\�',_binary 'i\�R_\�@T�P7M\�'),(_binary '�\�7���IC��\"��fT[','ali@yahoo.com','123','Ali','2019-03-30',_binary '',100000,'','54 ELKHAMYEL','01234567891','',_binary '	$|�R2麐T�P7M\�',_binary 'i\�R_\�@T�P7M\�');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_orders`
--

DROP TABLE IF EXISTS `user_orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `user_orders` (
  `id` binary(16) NOT NULL,
  `user_id` binary(16) NOT NULL,
  `date_purchased` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `_user_orders___user_idx` (`user_id`),
  CONSTRAINT `_user_orders___user` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_orders`
--

LOCK TABLES `user_orders` WRITE;
/*!40000 ALTER TABLE `user_orders` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_reviews`
--

DROP TABLE IF EXISTS `user_reviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `user_reviews` (
  `id` binary(16) NOT NULL,
  `user_id` binary(16) NOT NULL,
  `product_id` binary(16) NOT NULL,
  `rating` tinyint(4) NOT NULL,
  `review_details` varchar(400) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_user_id___product_id` (`user_id`,`product_id`),
  KEY `fk_user_reviews___user_orders_idx` (`user_id`),
  KEY `fk_user_reviews____idx` (`product_id`),
  CONSTRAINT `fk_user_reviews___order_products` FOREIGN KEY (`product_id`) REFERENCES `order_products` (`product_id`),
  CONSTRAINT `fk_user_reviews___user_orders` FOREIGN KEY (`user_id`) REFERENCES `user_orders` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_reviews`
--

LOCK TABLES `user_reviews` WRITE;
/*!40000 ALTER TABLE `user_reviews` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_reviews` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_roles`
--

DROP TABLE IF EXISTS `user_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `user_roles` (
  `id` binary(16) NOT NULL,
  `description` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `description_UNIQUE` (`description`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_roles`
--

LOCK TABLES `user_roles` WRITE;
/*!40000 ALTER TABLE `user_roles` DISABLE KEYS */;
INSERT INTO `user_roles` VALUES (_binary 'i\�R_\�@T�P7M\�','customer');
/*!40000 ALTER TABLE `user_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_visit_products`
--

DROP TABLE IF EXISTS `user_visit_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `user_visit_products` (
  `id` binary(16) NOT NULL,
  `user_id` binary(16) NOT NULL,
  `product_id` binary(16) NOT NULL,
  `visit_count` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_user___product` (`user_id`,`product_id`),
  KEY `fk_user_visit_products___user_idx` (`user_id`),
  KEY `fk_user_visit_products___product_idx` (`product_id`),
  CONSTRAINT `fk_user_visit_products___product` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`),
  CONSTRAINT `fk_user_visit_products___user` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_visit_products`
--

LOCK TABLES `user_visit_products` WRITE;
/*!40000 ALTER TABLE `user_visit_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_visit_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wishing_list`
--

DROP TABLE IF EXISTS `wishing_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wishing_list` (
  `id` binary(16) NOT NULL,
  `user_id` binary(16) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id_UNIQUE` (`user_id`),
  KEY `fk_wishing_list__user_idx` (`user_id`),
  CONSTRAINT `fk_wishing_list__user` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wishing_list`
--

LOCK TABLES `wishing_list` WRITE;
/*!40000 ALTER TABLE `wishing_list` DISABLE KEYS */;
/*!40000 ALTER TABLE `wishing_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wishing_list_products`
--

DROP TABLE IF EXISTS `wishing_list_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wishing_list_products` (
  `id` binary(16) NOT NULL,
  `wishing_list_id` binary(16) NOT NULL,
  `product_id` binary(16) NOT NULL,
  `price_before_discount` int(11) NOT NULL,
  `discount` smallint(16) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_wishing_list___product` (`wishing_list_id`,`product_id`),
  KEY `fk_wishing_list_products___wishing_list_idx` (`wishing_list_id`),
  KEY `fk_wishing_list_products___product_idx` (`product_id`),
  CONSTRAINT `fk_wishing_list_products___product` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`),
  CONSTRAINT `fk_wishing_list_products___wishing_list` FOREIGN KEY (`wishing_list_id`) REFERENCES `wishing_list` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wishing_list_products`
--

LOCK TABLES `wishing_list_products` WRITE;
/*!40000 ALTER TABLE `wishing_list_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `wishing_list_products` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-07-19 18:13:01
