-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: localhost    Database: project_sergio
-- ------------------------------------------------------
-- Server version	8.3.0

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
-- Table structure for table `apartment`
--

DROP TABLE IF EXISTS `apartment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `apartment` (
  `apartment_id` int NOT NULL AUTO_INCREMENT,
  `building_id` char(4) DEFAULT NULL,
  `apartment_name` varchar(32) DEFAULT NULL,
  `rooms` varchar(32) NOT NULL,
  `amount_of_people` varchar(64) DEFAULT NULL,
  `double_beds` varchar(32) DEFAULT NULL,
  `single_beds` char(10) NOT NULL,
  `exterior_or_interior` varchar(16) DEFAULT NULL,
  PRIMARY KEY (`apartment_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `apartment`
--

LOCK TABLES `apartment` WRITE;
/*!40000 ALTER TABLE `apartment` DISABLE KEYS */;
INSERT INTO `apartment` VALUES (1,'1','319','2','7','2','3','exterior'),(2,'1','320','1','6','1','4','interior'),(3,'1','218','1','7','1','5','exterior'),(4,'1','217','1','8','2','4','exterior'),(5,'1','215','1','8','1','6','exterior'),(6,'1','213','1','7','2','3','exterior'),(7,'1','208','1','4','1','2','interior'),(8,'1','207','1','4','1','2','interior'),(9,'1','206','1','4','1','2','exterior'),(10,'2','215','1','3','1','1','interior'),(11,'2','213','1','2','0','2','exterior'),(12,'2','202','1','3','1','1','interior'),(13,'3','OLIVAR','1','4','1','2','interior'),(14,'4','COOREO 4','2','5','1','3','exterior');
/*!40000 ALTER TABLE `apartment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `building`
--

DROP TABLE IF EXISTS `building`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `building` (
  `building_id` int NOT NULL AUTO_INCREMENT,
  `building_name` varchar(50) DEFAULT NULL,
  `address` varchar(64) DEFAULT NULL,
  `town` varchar(32) DEFAULT NULL,
  `zipcode` char(10) NOT NULL,
  PRIMARY KEY (`building_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `building`
--

LOCK TABLES `building` WRITE;
/*!40000 ALTER TABLE `building` DISABLE KEYS */;
INSERT INTO `building` VALUES (1,'AV','CALLE MAYOR 1','MADRID','28012'),(2,'HA','CALLE SANTA BARBARA','MADRID','28015'),(3,' OLIVAR','CALLE OLIVAR','MADRID','28008'),(4,'CORREOS','CALLE CORREO 4','MADRID','28012');
/*!40000 ALTER TABLE `building` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cleaning`
--

DROP TABLE IF EXISTS `cleaning`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cleaning` (
  `employee_id` varchar(10) NOT NULL,
  `building_id` char(4) NOT NULL,
  `apartment_id` varchar(32) NOT NULL,
  PRIMARY KEY (`employee_id`,`building_id`,`apartment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cleaning`
--

LOCK TABLES `cleaning` WRITE;
/*!40000 ALTER TABLE `cleaning` DISABLE KEYS */;
INSERT INTO `cleaning` VALUES ('C1','1','1'),('C1','1','3'),('C1','3','13'),('C2','1','6'),('C2','1','7'),('C2','2','12');
/*!40000 ALTER TABLE `cleaning` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer` (
  `customer_id` int NOT NULL AUTO_INCREMENT,
  `fname` varchar(100) DEFAULT NULL,
  `lname` varchar(32) DEFAULT NULL,
  `documents_or_identification` varchar(32) NOT NULL,
  `country` varchar(64) DEFAULT NULL,
  `phone` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`customer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (1,'SERGIO','RUANO','UNITED STATES','657284829A','305878910'),(2,'GABRIEL','MIERS','1847194928K','UNITED STATES','7864920382'),(3,'LAURA','GIL','682836183L','SPAIN','675892312');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee` (
  `employee_id` varchar(10) NOT NULL,
  `fname` varchar(100) DEFAULT NULL,
  `lname` varchar(32) DEFAULT NULL,
  `addressline` varchar(64) DEFAULT NULL,
  `town` varchar(32) DEFAULT NULL,
  `zipcode` char(10) NOT NULL,
  `phone` varchar(16) DEFAULT NULL,
  PRIMARY KEY (`employee_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES ('C1','JULIO','IGLESIAS','CALLE MORITA 65','MADRID','28032','7682992731'),('C2','MIRIAM','GIMENEZ','CALLE CEA BERMUDEZ 12','MADRID','28021','657302849'),('M1','CARLOS','PEREIRA','CALLE PIYO , 20','MADRID','28043','275728482'),('S1','JOSE','ORTEGA','BARRIO SAMANENCO IGNACIO','VENEZUELA','839521','564729142'),('S2','DANIEL','ESPINOZA','BARRIO FAVELAS','BRASIL','6572812','6891046212');
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `income`
--

DROP TABLE IF EXISTS `income`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `income` (
  `reservation_id` int NOT NULL AUTO_INCREMENT,
  `revenue` char(4) DEFAULT NULL,
  PRIMARY KEY (`reservation_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `income`
--

LOCK TABLES `income` WRITE;
/*!40000 ALTER TABLE `income` DISABLE KEYS */;
INSERT INTO `income` VALUES (1,'$210'),(2,'$530'),(3,'$960');
/*!40000 ALTER TABLE `income` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `maintanance`
--

DROP TABLE IF EXISTS `maintanance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `maintanance` (
  `maintanance_id` int NOT NULL AUTO_INCREMENT,
  `employee_id` varchar(10) DEFAULT NULL,
  `building_id` char(4) DEFAULT NULL,
  `apartment_id` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`maintanance_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `maintanance`
--

LOCK TABLES `maintanance` WRITE;
/*!40000 ALTER TABLE `maintanance` DISABLE KEYS */;
INSERT INTO `maintanance` VALUES (1,'M1','1','1'),(2,'M1','1','2');
/*!40000 ALTER TABLE `maintanance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reservation`
--

DROP TABLE IF EXISTS `reservation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reservation` (
  `reservation_id` int NOT NULL AUTO_INCREMENT,
  `customer_id` char(4) DEFAULT NULL,
  `building_id` varchar(32) DEFAULT NULL,
  `apartment_id` varchar(32) NOT NULL,
  `arrival_date` varchar(64) DEFAULT NULL,
  `leaving_date` varchar(32) DEFAULT NULL,
  `amount_of_days` char(10) NOT NULL,
  `price_per_day` varchar(16) DEFAULT NULL,
  `cleaning_price` varchar(16) DEFAULT NULL,
  PRIMARY KEY (`reservation_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reservation`
--

LOCK TABLES `reservation` WRITE;
/*!40000 ALTER TABLE `reservation` DISABLE KEYS */;
INSERT INTO `reservation` VALUES (1,'1','1','1','12/04/2024','14/04/2024','2','$80','$50'),(2,'1','1','5','17/04/2024','21/04/2024','4','$120','$50'),(3,'3','1','4','23/04/2024','30/04/2024','7','$130','$50');
/*!40000 ALTER TABLE `reservation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `salaries`
--

DROP TABLE IF EXISTS `salaries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `salaries` (
  `employee_id` varchar(32) NOT NULL,
  `date_sent` varchar(32) NOT NULL,
  `hours_worked` char(4) DEFAULT NULL,
  `pay_per_hour` varchar(32) DEFAULT NULL,
  `total_pay` varchar(32) NOT NULL,
  `payment_method` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`employee_id`,`date_sent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `salaries`
--

LOCK TABLES `salaries` WRITE;
/*!40000 ALTER TABLE `salaries` DISABLE KEYS */;
INSERT INTO `salaries` VALUES ('C1','2/04/2024','80','$12','$960','CASH'),('M1','2/04/2024','80','$20','$1600','BANK TRANSFER'),('S1','2/04/2024','45','$9','$405','CASH');
/*!40000 ALTER TABLE `salaries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `supervision`
--

DROP TABLE IF EXISTS `supervision`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `supervision` (
  `employee_id` varchar(32) NOT NULL,
  `building_id` char(4) DEFAULT NULL,
  `morning_or_afternoon` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`employee_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `supervision`
--

LOCK TABLES `supervision` WRITE;
/*!40000 ALTER TABLE `supervision` DISABLE KEYS */;
INSERT INTO `supervision` VALUES ('S1','1','AFTERNOON');
/*!40000 ALTER TABLE `supervision` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'project_sergio'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-04-02 21:22:03