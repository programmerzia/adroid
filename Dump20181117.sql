-- MySQL dump 10.13  Distrib 5.7.24, for Linux (x86_64)
--
-- Host: localhost    Database: adroid
-- ------------------------------------------------------
-- Server version	5.7.24-0ubuntu0.18.04.1

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
-- Table structure for table `company`
--

DROP TABLE IF EXISTS `company`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `company` (
  `idcompany` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(75) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `city` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `state` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `address` tinytext COLLATE utf8_unicode_ci,
  `poboxno` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mobile` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `telephone` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fax` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `business_nature` tinytext COLLATE utf8_unicode_ci,
  `total_volume` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `agreed_volume` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `due_amount` float DEFAULT NULL,
  `last_paid_date` date DEFAULT NULL,
  `operations_contact` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `operation_designation` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `operation_email` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `finance_contact` varchar(75) COLLATE utf8_unicode_ci DEFAULT NULL,
  `finance_designation` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `finance_email` varchar(75) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bank_details` varchar(220) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ntn` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gst` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `billing_address` tinytext COLLATE utf8_unicode_ci,
  `billing_poboxno` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `billing_mobile` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `billing_telephone` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `billing_fax` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `billing_contact` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `billing_designation` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `billing_email` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pickup_address` tinytext COLLATE utf8_unicode_ci,
  `pickup_poboxno` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pickup_mobile` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pickup_telephone` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pickup_fax` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pickup_contact` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pickup_designation` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pickup_email` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pickup_frequency` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `estimated_pickup_time` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `office_closing_time` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `aguseAccountNo` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `aguseCity` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `aguseEstNetBilling` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `aguseSecurityAmount` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tariffDiscountLevel` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tariffAlternativeBilling` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tariffSpecialInstructions` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `security_amount` int(11) DEFAULT NULL,
  PRIMARY KEY (`idcompany`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `company`
--

LOCK TABLES `company` WRITE;
/*!40000 ALTER TABLE `company` DISABLE KEYS */;
INSERT INTO `company` VALUES (1,'Adroid Global Ltd.','Bangladesh','Dhaka','Dhaka','Dhaka, Bangladesh','1201','1727229000','8802569875','4558788','Software Company',NULL,'1254685',NULL,NULL,'Ziaur Rahman','Software Engineer','zia@email.com','hi','hello','hell@hell.com','Bank ALfalah','123456','12','hello there','1245','45112335','1246565','123456','hello','jsdlkf','ldfj@email.com','lsfdjlkfdj','1201','123545','1235466','526565','sdfjk','sdjfk','dskjf@email.com','12','121','14','1223','Dhaka','1','2','5','no','hell',NULL),(2,'Ayoton Technologies Ltd','Bangladesh','Pabna','Rajshahi','96/3, Bosundhora, Dhaka.','6630','+8801738739176','','','Technology Services',NULL,'',NULL,NULL,'','','','','','','','123456','','','','','','','','','','','','','','','','','','','','','','','','','','','',NULL);
/*!40000 ALTER TABLE `company` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `login_history`
--

DROP TABLE IF EXISTS `login_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `login_history` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `userid` int(20) NOT NULL,
  `log_date` datetime DEFAULT NULL,
  `logout` datetime DEFAULT NULL,
  `station` varchar(200) DEFAULT NULL,
  `area` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `login_history`
--

LOCK TABLES `login_history` WRITE;
/*!40000 ALTER TABLE `login_history` DISABLE KEYS */;
INSERT INTO `login_history` VALUES (1,1,'2018-11-20 21:28:28',NULL,NULL,NULL),(2,1,'2018-11-20 21:33:25',NULL,NULL,NULL),(3,1,'2018-11-20 21:45:13',NULL,NULL,NULL),(4,1,'2018-11-21 13:09:58',NULL,NULL,NULL),(5,1,'2018-11-25 20:08:20',NULL,NULL,NULL),(6,1,'2019-01-08 20:19:00','2019-01-08 20:19:06',NULL,NULL),(7,1,'2019-01-08 20:34:17',NULL,'Dhaka','mirpur'),(8,1,'2019-01-09 20:35:16',NULL,'dhaka','Baridhara'),(9,1,'2019-01-12 22:19:45',NULL,'Admin','Pakistan'),(10,1,'2019-01-12 22:20:35',NULL,'Admin','Pakistan'),(11,1,'2019-01-12 22:22:34','2019-01-12 22:23:33','Admin','Pakistan'),(12,1,'2019-01-12 22:23:43',NULL,'Admin','Pakistan'),(13,1,'2019-01-12 22:23:59','2019-01-12 22:25:29','Admin','Pakistan'),(14,1,'2019-01-12 22:25:37','2019-01-12 22:26:23','',''),(15,1,'2019-01-12 22:26:33',NULL,'Admin','Pakistan'),(16,1,'2019-01-12 22:27:31','2019-01-12 22:44:02','Admin','Pakistan'),(17,1,'2019-01-12 22:44:11',NULL,'Admin','Pakistan'),(18,1,'2019-01-13 19:44:20','2019-01-13 19:45:13','Admin','Pakistan'),(19,1,'2019-01-13 19:45:35',NULL,'Admin','Pakistan'),(20,1,'2019-01-15 23:49:51',NULL,'Admin','Pakistan'),(21,1,'2019-01-16 17:42:53',NULL,'Admin','Pakistan'),(22,1,'2019-01-19 17:32:01',NULL,'Admin','Pakistan'),(23,1,'2019-01-19 23:09:42',NULL,'Admin','Pakistan');
/*!40000 ALTER TABLE `login_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `manifest`
--

DROP TABLE IF EXISTS `manifest`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `manifest` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `orders` varchar(45) DEFAULT NULL,
  `process_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `manifest`
--

LOCK TABLES `manifest` WRITE;
/*!40000 ALTER TABLE `manifest` DISABLE KEYS */;
INSERT INTO `manifest` VALUES (1,'12,11,10','2019-01-19 17:44:57');
/*!40000 ALTER TABLE `manifest` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders` (
  `idorders` int(11) NOT NULL AUTO_INCREMENT,
  `awb` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `shipper_company` int(11) DEFAULT NULL,
  `shipper_reference` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `shipper_name` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `shipper_address` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `shipper_city` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `shipper_zip_code` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `shipper_province` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `shipper_country` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `shipper_contact_name` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `shipper_phone` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `receiver_name` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `receiver_address` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `receiver_city` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `receiver_zip_code` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `receiver_province` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `receiver_country` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `receiver_contact_name` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `receiver_phone` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `service_type` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `order_date` date DEFAULT NULL,
  `payment_type` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `currency` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `amount` float DEFAULT NULL,
  `service_charge` float DEFAULT NULL,
  `special_handling_fee` float DEFAULT NULL,
  `taxes` float DEFAULT NULL,
  `other` float DEFAULT NULL,
  `total` float DEFAULT NULL,
  `insurance` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `insurance_currency` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `insurance_value` float DEFAULT NULL,
  `delivery_instruction` tinytext COLLATE utf8_unicode_ci,
  `order_status` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `products` text COLLATE utf8_unicode_ci,
  `order_type` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `security_amount` int(11) DEFAULT '0',
  PRIMARY KEY (`idorders`),
  KEY `id` (`shipper_company`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (6,'AWBPA-101',1,'2','','','','','','','','','Zia','dhaka','dhaka','1215','dhaka','Bangladesh','zia','1727229001','Global Non-Document','2018-11-21','cash','usd',100,10,20,40,30,100,'yes','usd',100,'testing','processing','[{\"sn\":2,\"description\":\"Trimmer\",\"quantity\":\"20\",\"weight\":\"250 Grams\",\"dimension\":\"10 X 500 Pixels\"},{\"sn\":3,\"description\":\"HDD\",\"quantity\":\"15\",\"weight\":\"450 Grams\",\"dimension\":\"3 X 10 Inches\"}]',NULL,0),(7,'AWBPA-1011',0,'0','zia','sdk','sdjfa','sdk','dk','sadk','dsj','dj','Zia','dhaka','dhaka','1215','dhaka','Bangladesh','zia','1727229001','Global Non-Document','2018-11-21','cash','usd',100,10,20,40,30,100,'yes','usd',100,'testing','processing','[{\"sn\":2,\"description\":\"Trimmer\",\"quantity\":\"20\",\"weight\":\"250 Grams\",\"dimension\":\"10 X 500 Pixels\"},{\"sn\":3,\"description\":\"HDD\",\"quantity\":\"15\",\"weight\":\"450 Grams\",\"dimension\":\"3 X 10 Inches\"}]',NULL,0),(8,'AWBPA-1012',1,'2','','','','','','','','','Zia','dhaka','dhaka','1215','dhaka','Bangladesh','zia','1727229001','Global Non-Document','2018-11-21','cash','usd',100,10,20,40,30,100,'yes','usd',100,'testing','processing','[{\"sn\":2,\"description\":\"Trimmer\",\"quantity\":\"20\",\"weight\":\"250 Grams\",\"dimension\":\"10 X 500 Pixels\"},{\"sn\":3,\"description\":\"HDD\",\"quantity\":\"15\",\"weight\":\"450 Grams\",\"dimension\":\"3 X 10 Inches\"}]',NULL,0),(9,'AWBPA-1013',0,'0','zia','sdk','sdjfa','sdk','dk','sadk','dsj','dj','Zia','dhaka','dhaka','1215','dhaka','Bangladesh','zia','1727229001','Global Non-Document','2018-11-21','cash','usd',100,10,20,40,30,100,'yes','usd',100,'testing','processing','[{\"sn\":2,\"description\":\"Trimmer\",\"quantity\":\"20\",\"weight\":\"250 Grams\",\"dimension\":\"10 X 500 Pixels\"},{\"sn\":3,\"description\":\"HDD\",\"quantity\":\"15\",\"weight\":\"450 Grams\",\"dimension\":\"3 X 10 Inches\"}]',NULL,0),(10,'AWBPA-101',1,'2','','','','','','','','','Hasinoor','dhaka','dhaka','1215','dhaka','Bangladesh','zia','1727229001','Global Non-Document','2018-11-21','cash','usd',100,10,20,40,30,100,'yes','usd',100,'testing','processing','[{\"sn\":2,\"description\":\"Trimmer\",\"quantity\":\"20\",\"weight\":\"250 Grams\",\"dimension\":\"10 X 500 Pixels\"},{\"sn\":3,\"description\":\"HDD\",\"quantity\":\"15\",\"weight\":\"450 Grams\",\"dimension\":\"3 X 10 Inches\"}]',NULL,0),(11,'AWBPA-1011',0,'0','zia','sdk','sdjfa','sdk','dk','sadk','dsj','dj','Zia','dhaka','dhaka','1215','dhaka','Bangladesh','zia','1727229001','Global Non-Document','2018-11-21','cash','usd',100,10,20,40,30,100,'yes','usd',100,'testing','processing','[{\"sn\":2,\"description\":\"Trimmer\",\"quantity\":\"20\",\"weight\":\"250 Grams\",\"dimension\":\"10 X 500 Pixels\"},{\"sn\":3,\"description\":\"HDD\",\"quantity\":\"15\",\"weight\":\"450 Grams\",\"dimension\":\"3 X 10 Inches\"}]',NULL,0),(12,'AWBPA-1012',1,'2','','','','','','','','','Zia','dhaka','dhaka','1215','dhaka','Bangladesh','zia','1727229001','Global Non-Document','2018-11-21','cash','usd',100,10,20,40,30,100,'yes','usd',100,'testing','processing','[{\"sn\":2,\"description\":\"Trimmer\",\"quantity\":\"20\",\"weight\":\"250 Grams\",\"dimension\":\"10 X 500 Pixels\"},{\"sn\":3,\"description\":\"HDD\",\"quantity\":\"15\",\"weight\":\"450 Grams\",\"dimension\":\"3 X 10 Inches\"}]',NULL,0),(13,'AWBPA-1013',0,'0','Hasinoor','sdk','sdjfa','sdk','dk','sadk','dsj','dj','Zia','dhaka','dhaka','1215','dhaka','Bangladesh','zia','1727229001','Global Non-Document','2018-11-21','cash','usd',100,10,20,40,30,100,'yes','usd',100,'testing','processing','[{\"sn\":2,\"description\":\"Trimmer\",\"quantity\":\"20\",\"weight\":\"250 Grams\",\"dimension\":\"10 X 500 Pixels\"},{\"sn\":3,\"description\":\"HDD\",\"quantity\":\"15\",\"weight\":\"450 Grams\",\"dimension\":\"3 X 10 Inches\"}]',NULL,0);
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_name` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cnic` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `useremail` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(220) CHARACTER SET utf8 DEFAULT NULL,
  `father_name` varchar(65) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mother_name` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `city` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(220) COLLATE utf8_unicode_ci DEFAULT NULL,
  `office` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_permission` text COLLATE utf8_unicode_ci,
  `access_type` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Ziaur','Rahman','sahasf','zia.91cse@gmail.com','3081e54f9ecbff61b01a19815b9bf0f82ef8435b29371c108','Azahar Ali','Firoza Khatun','Pabna','96/3, Bosundhora, Dhaka.','Dhaka',NULL,'Super User');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-01-20  0:03:14
