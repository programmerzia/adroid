-- MySQL dump 10.13  Distrib 5.7.25, for Linux (x86_64)
--
-- Host: localhost    Database: adroid
-- ------------------------------------------------------
-- Server version	5.7.25-0ubuntu0.18.04.2

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

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
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

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
  `order_type` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

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
  `shipper_address` text CHARACTER SET utf8,
  `shipper_city` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `shipper_zip_code` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `shipper_province` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `shipper_country` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `shipper_contact_name` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `shipper_phone` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `receiver_name` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `receiver_address` text CHARACTER SET utf8,
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
  `insurance_value` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `delivery_instruction` tinytext COLLATE utf8_unicode_ci,
  `order_status` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `products` text COLLATE utf8_unicode_ci,
  `order_type` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`idorders`),
  UNIQUE KEY `awb_UNIQUE` (`awb`),
  KEY `id` (`shipper_company`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

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
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-01-27 23:31:25
