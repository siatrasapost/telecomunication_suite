CREATE DATABASE  IF NOT EXISTS `mydb` /*!40100 DEFAULT CHARACTER SET utf8 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `mydb`;
-- MySQL dump 10.13  Distrib 8.0.20, for Win64 (x86_64)
--
-- Host: localhost    Database: mydb
-- ------------------------------------------------------
-- Server version	8.0.20

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `admins`
--

DROP TABLE IF EXISTS `admins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admins` (
  `username` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `name` varchar(45) NOT NULL,
  `surname` varchar(45) NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admins`
--

LOCK TABLES `admins` WRITE;
/*!40000 ALTER TABLE `admins` DISABLE KEYS */;
INSERT INTO `admins` VALUES ('dpg7000','9C22E429860140B21746F7E7BA6AD7D9','ΔΗΜΗΤΡΙΟΣ','ΓΙΑΝΝΑΚΟΠΟΥΛΟΣ'),('root','8480F3D037035D41BDF0332DE3D04B8C','SUPER','ROOT');
/*!40000 ALTER TABLE `admins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bills`
--

DROP TABLE IF EXISTS `bills`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bills` (
  `number` varchar(10) NOT NULL,
  `date_issued` varchar(45) NOT NULL,
  `calls_number` int DEFAULT NULL,
  `messages_number` int DEFAULT NULL,
  `total_duration` int DEFAULT NULL,
  `total_cost` double NOT NULL,
  `paid` tinyint(1) NOT NULL,
  PRIMARY KEY (`number`,`date_issued`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bills`
--

LOCK TABLES `bills` WRITE;
/*!40000 ALTER TABLE `bills` DISABLE KEYS */;
INSERT INTO `bills` VALUES ('6932649255','2020-05-30',2,363,275,105.75,1),('6932649255','2020-06-30',1,144,225,43.75,1),('6946628894','2020-05-30',2,361,78,208.86,1),('6946628894','2020-06-30',1,74,159,76.84,1),('6948596231','2020-05-30',2,283,221,171.5,1),('6948596231','2020-06-30',1,229,151,144.5,1),('6972136158','2020-05-30',2,260,39,139,1),('6972136158','2020-06-30',1,231,204,117.25,1),('6972596196','2020-05-30',1,130,132,85,0),('6972596196','2020-06-30',2,331,231,85,0);
/*!40000 ALTER TABLE `bills` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `calls`
--

DROP TABLE IF EXISTS `calls`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `calls` (
  `caller` varchar(11) NOT NULL,
  `number` varchar(10) NOT NULL,
  `time` timestamp NOT NULL,
  `minutes_duration` varchar(45) DEFAULT NULL,
  `seconds_duration` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`caller`,`number`,`time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `calls`
--

LOCK TABLES `calls` WRITE;
/*!40000 ALTER TABLE `calls` DISABLE KEYS */;
INSERT INTO `calls` VALUES ('6932649255','6938678599','2020-06-03 02:36:33','224','39'),('6932649255','6955275745','2020-05-21 11:55:25','195','40'),('6932649255','6976610869','2020-05-08 12:02:58','78','8'),('6946628894','6957854205','2020-05-05 13:11:18','45','20'),('6946628894','6990258909','2020-06-04 08:45:32','158','56'),('6946628894','6991276594','2020-05-05 11:32:01','31','49'),('6948596231','6949954360','2020-05-26 14:46:36','111','6'),('6948596231','6951648992','2020-06-11 12:15:05','150','49'),('6948596231','6997985484','2020-05-28 08:48:41','108','20'),('6972136158','6940389053','2020-05-03 07:08:40','11','6'),('6972136158','6965949850','2020-05-21 14:52:47','26','33'),('6972136158','6980428276','2020-06-13 10:48:00','203','16'),('6972596196','6964276154','2020-06-13 22:49:30','46','49'),('6972596196','6971467859','2020-06-14 21:15:24','183','10'),('6972596196','6983894764','2020-05-23 01:18:17','131','52');
/*!40000 ALTER TABLE `calls` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clients`
--

DROP TABLE IF EXISTS `clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clients` (
  `username` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `name` varchar(45) NOT NULL,
  `surname` varchar(45) NOT NULL,
  `tin` varchar(45) NOT NULL,
  `phone_number` varchar(10) NOT NULL,
  PRIMARY KEY (`username`,`phone_number`),
  UNIQUE KEY `phone_number_UNIQUE` (`phone_number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clients`
--

LOCK TABLES `clients` WRITE;
/*!40000 ALTER TABLE `clients` DISABLE KEYS */;
INSERT INTO `clients` VALUES ('bogrinho','B517A0CBBCFEAD5FBACE3543CA615023','ΓΕΩΡΓΙΟΣ','ΜΠΟΓΡΗΣ','6178618310','6948596231'),('fortounis7','6F9EE1385F43D5F0390166D62CAB9139','ΚΩΝΣΤΑΝΤΙΝΟΣ','ΦΟΡΤΟΥΝΗΣ','4929892251','6972596196'),('macakias','58A000C07F47599DD9B66D22043B1A9C','ΔΗΜΗΤΡΗΣ','ΜΟΣΧΟΥ','3499592932','6932649255'),('pmantalos','544382F771275489A0EB07417FDC058A','ΠΕΤΡΟΣ','ΜΑΝΤΑΛΟΣ','3498335929','6946628894'),('sapostolos','1AFA7C25D1F33998D87B9042BAB974EA','ΑΠΟΣΤΟΛΟΣ','ΣΙΑΤΡΑΣ','7842392852','6972136158');
/*!40000 ALTER TABLE `clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `numbers`
--

DROP TABLE IF EXISTS `numbers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `numbers` (
  `phone_number` varchar(10) NOT NULL,
  `program_name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`phone_number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `numbers`
--

LOCK TABLES `numbers` WRITE;
/*!40000 ALTER TABLE `numbers` DISABLE KEYS */;
INSERT INTO `numbers` VALUES ('6932649255','Chat250'),('6946628894','Talk700'),('6948596231','Basic500'),('6972136158','UniStudents'),('6972596196','Business5000');
/*!40000 ALTER TABLE `numbers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `programs`
--

DROP TABLE IF EXISTS `programs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `programs` (
  `program_name` varchar(45) NOT NULL,
  `fixed_charge` int NOT NULL,
  `minutes_charge` double NOT NULL,
  `messages_charge` double NOT NULL,
  `minutes` int DEFAULT NULL,
  `messages` int DEFAULT NULL,
  PRIMARY KEY (`program_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `programs`
--

LOCK TABLES `programs` WRITE;
/*!40000 ALTER TABLE `programs` DISABLE KEYS */;
INSERT INTO `programs` VALUES ('Basic500',30,0.19,0.5,500,0),('Business5000',85,0.1,0.31,5000,500),('Chat250',19,0.11,0.49,0,250),('Talk700',52,0.18,0.46,700,20),('UniStudents',19,0.19,0.75,1000,100);
/*!40000 ALTER TABLE `programs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sellers`
--

DROP TABLE IF EXISTS `sellers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sellers` (
  `username` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `name` varchar(45) NOT NULL,
  `surname` varchar(45) NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sellers`
--

LOCK TABLES `sellers` WRITE;
/*!40000 ALTER TABLE `sellers` DISABLE KEYS */;
INSERT INTO `sellers` VALUES ('tasosbak','36EB30A40F2B071068291FA69BA78FAB','ΑΝΑΣΤΑΣΙΟΣ','ΜΠΑΚΑΣΕΤΑΣ'),('test','8480F3D037035D41BDF0332DE3D04B8C','Hello','World'),('thytpost','D17168A2E6E70ABF242B3AA9E2B57A22','ΘΥΤΗΣ','ΠΟΣΤΙΔΙΑ'),('vagiwan','07A4CC3FF7E3C0B1B2DE8615C87EAB4C','ΕΥΑΓΓΕΛΟΣ','ΙΩΑΝΝΟΥ');
/*!40000 ALTER TABLE `sellers` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-07-08 22:01:30
