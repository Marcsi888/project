-- MySQL dump 10.13  Distrib 8.3.0, for Win64 (x86_64)
--
-- Host: localhost    Database: project_sergio_final
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
-- Temporary view structure for view `aparments_in_chamberi`
--

DROP TABLE IF EXISTS `aparments_in_chamberi`;
/*!50001 DROP VIEW IF EXISTS `aparments_in_chamberi`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `aparments_in_chamberi` AS SELECT 
 1 AS `apartment_id`,
 1 AS `apartment_name`,
 1 AS `rooms`,
 1 AS `amount_of_people`,
 1 AS `double_beds`,
 1 AS `single_beds`,
 1 AS `exterior_or_interior`,
 1 AS `zipcode`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `apartment`
--

DROP TABLE IF EXISTS `apartment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `apartment` (
  `apartment_id` int NOT NULL AUTO_INCREMENT,
  `building_id` int NOT NULL,
  `apartment_name` varchar(32) DEFAULT NULL,
  `rooms` varchar(32) NOT NULL,
  `amount_of_people` varchar(64) DEFAULT NULL,
  `double_beds` varchar(32) DEFAULT NULL,
  `single_beds` char(10) NOT NULL,
  `exterior_or_interior` varchar(16) DEFAULT NULL,
  PRIMARY KEY (`apartment_id`),
  KEY `fk_apartment_building_id` (`building_id`),
  CONSTRAINT `fk_apartment_building_id` FOREIGN KEY (`building_id`) REFERENCES `building` (`building_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `apartment`
--

LOCK TABLES `apartment` WRITE;
/*!40000 ALTER TABLE `apartment` DISABLE KEYS */;
INSERT INTO `apartment` VALUES (1,1,'319','2','7','2','3','exterior'),(2,1,'320','1','6','1','4','interior'),(3,1,'218','1','7','1','5','exterior'),(4,1,'217','1','8','2','4','exterior'),(5,1,'215','1','8','1','6','exterior'),(6,1,'213','1','7','2','3','exterior'),(7,1,'208','1','4','1','2','interior'),(8,1,'207','1','4','1','2','interior'),(9,1,'206','1','4','1','2','exterior'),(10,2,'215','1','3','1','1','interior'),(11,2,'213','1','2','0','2','exterior'),(12,2,'202','1','3','1','1','interior'),(13,3,'OLIVAR','1','4','1','2','interior'),(14,4,'COOREO 4','2','5','1','3','exterior');
/*!40000 ALTER TABLE `apartment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `apartments_by_zipcode`
--

DROP TABLE IF EXISTS `apartments_by_zipcode`;
/*!50001 DROP VIEW IF EXISTS `apartments_by_zipcode`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `apartments_by_zipcode` AS SELECT 
 1 AS `apartment_id`,
 1 AS `apartment_name`,
 1 AS `rooms`,
 1 AS `amount_of_people`,
 1 AS `double_beds`,
 1 AS `single_beds`,
 1 AS `exterior_or_interior`,
 1 AS `zipcode`*/;
SET character_set_client = @saved_cs_client;

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
-- Temporary view structure for view `building_apartments`
--

DROP TABLE IF EXISTS `building_apartments`;
/*!50001 DROP VIEW IF EXISTS `building_apartments`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `building_apartments` AS SELECT 
 1 AS `building_id`,
 1 AS `building_name`,
 1 AS `address`,
 1 AS `town`,
 1 AS `zipcode`,
 1 AS `apartment_id`,
 1 AS `apartment_name`,
 1 AS `rooms`,
 1 AS `amount_of_people`,
 1 AS `double_beds`,
 1 AS `single_beds`,
 1 AS `exterior_or_interior`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `buildings_with_exterior_apartments`
--

DROP TABLE IF EXISTS `buildings_with_exterior_apartments`;
/*!50001 DROP VIEW IF EXISTS `buildings_with_exterior_apartments`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `buildings_with_exterior_apartments` AS SELECT 
 1 AS `building_id`,
 1 AS `building_name`,
 1 AS `address`,
 1 AS `town`,
 1 AS `zipcode`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `cleaning`
--

DROP TABLE IF EXISTS `cleaning`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cleaning` (
  `cleaning_id` int NOT NULL AUTO_INCREMENT,
  `employee_id` varchar(10) NOT NULL,
  `building_id` int NOT NULL,
  `apartment_id` int NOT NULL,
  PRIMARY KEY (`cleaning_id`),
  KEY `employee_id` (`employee_id`),
  KEY `building_id` (`building_id`),
  KEY `apartment_id` (`apartment_id`),
  CONSTRAINT `cleaning_ibfk_1` FOREIGN KEY (`employee_id`) REFERENCES `employee` (`employee_id`),
  CONSTRAINT `cleaning_ibfk_2` FOREIGN KEY (`building_id`) REFERENCES `building` (`building_id`),
  CONSTRAINT `cleaning_ibfk_3` FOREIGN KEY (`apartment_id`) REFERENCES `apartment` (`apartment_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cleaning`
--

LOCK TABLES `cleaning` WRITE;
/*!40000 ALTER TABLE `cleaning` DISABLE KEYS */;
INSERT INTO `cleaning` VALUES (1,'C1',1,1),(2,'C1',1,3),(3,'C1',3,13),(4,'C2',1,6),(5,'C2',1,7),(6,'C2',2,12);
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (1,'SERGIO','RUANO','657284829A','UNITED STATES','305878910'),(2,'GABRIEL','MIERS','1847194928K','UNITED STATES','7864920382'),(3,'LAURA','GIL','682836183L','SPAIN','675892312'),(6,'JOHN','SMITH','56787SE','UNITED STATES','3083659556');
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
INSERT INTO `employee` VALUES ('C1','JULIO','IGLESIAS','CALLE MORITA 65','MADRID','28032','7682992731'),('C2','MIRIAM','GIMENEZ','CALLE CEA BERMUDEZ 12','MADRID','28021','657302849'),('C3','Maria','Lopez','CALLE GRAN VIA 23','MADRID','28013','6123456789'),('C4','Pedro','Martinez','AVENIDA DE AMERICA 54','MADRID','28002','6234567890'),('M1','CARLOS','PEREIRA','CALLE PIYO , 20','MADRID','28043','275728482'),('M2','Antonio','Garcia','CALLE GOYA 123','MADRID','28006','6345678901'),('M3','Isabel','Rodriguez','PLAZA MAYOR 1','MADRID','28001','6456789012'),('M4','MATTEO','DEAZ',' CALLE DE MONASTERIOS SUSO Y YUSO 24','MADRID','28049','3475987770'),('S1','JOSE','ORTEGA','BARRIO SAMANENCO IGNACIO','VENEZUELA','839521','564729142'),('S2','DANIEL','ESPINOZA','BARRIO FAVELAS','BRASIL','6572812','6891046212'),('S3','Emily','Brown','CALLE ALONSO MARTINEZ 12','MADRID','28004','6458473890'),('S4','Laura','Gomez','CALLE PRINCIPE 45','MADRID','28005','6678901234');
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `employeesalaries`
--

DROP TABLE IF EXISTS `employeesalaries`;
/*!50001 DROP VIEW IF EXISTS `employeesalaries`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `employeesalaries` AS SELECT 
 1 AS `employee_id`,
 1 AS `fname`,
 1 AS `lname`,
 1 AS `date_sent`,
 1 AS `hours_worked`,
 1 AS `pay_per_hour`,
 1 AS `total_pay`,
 1 AS `payment_method`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `income`
--

DROP TABLE IF EXISTS `income`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `income` (
  `reservation_id` int NOT NULL AUTO_INCREMENT,
  `revenue` char(4) DEFAULT NULL,
  `price_per_day` decimal(10,2) DEFAULT NULL,
  `amount_of_days` int DEFAULT NULL,
  `cleaning_price` decimal(10,2) DEFAULT NULL,
  `total_income` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`reservation_id`),
  CONSTRAINT `reservation_id` FOREIGN KEY (`reservation_id`) REFERENCES `reservation` (`reservation_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `income`
--

LOCK TABLES `income` WRITE;
/*!40000 ALTER TABLE `income` DISABLE KEYS */;
INSERT INTO `income` VALUES (1,'$210',NULL,NULL,NULL,NULL),(2,'$530',NULL,NULL,NULL,NULL),(3,'$960',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `income` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `income_in_total`
--

DROP TABLE IF EXISTS `income_in_total`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `income_in_total` (
  `reservation_id` int NOT NULL,
  `price_per_day` varchar(50) NOT NULL,
  `amount_of_days` int NOT NULL,
  `cleaning_price` varchar(50) NOT NULL,
  `revenue` varchar(50) NOT NULL,
  `total_income` varchar(50) NOT NULL,
  PRIMARY KEY (`reservation_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `income_in_total`
--

LOCK TABLES `income_in_total` WRITE;
/*!40000 ALTER TABLE `income_in_total` DISABLE KEYS */;
/*!40000 ALTER TABLE `income_in_total` ENABLE KEYS */;
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
  `building_id` int NOT NULL,
  `apartment_id` int NOT NULL,
  PRIMARY KEY (`maintanance_id`),
  KEY `f_employee_id` (`employee_id`),
  KEY `fk_maintanance_building_id` (`building_id`),
  KEY `fk_maintanace_apartment_id` (`apartment_id`),
  CONSTRAINT `f_employee_id` FOREIGN KEY (`employee_id`) REFERENCES `employee` (`employee_id`),
  CONSTRAINT `fk_employee_id` FOREIGN KEY (`employee_id`) REFERENCES `employee` (`employee_id`),
  CONSTRAINT `fk_maintanace_apartment_id` FOREIGN KEY (`apartment_id`) REFERENCES `apartment` (`apartment_id`),
  CONSTRAINT `fk_maintanance_building_id` FOREIGN KEY (`building_id`) REFERENCES `building` (`building_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `maintanance`
--

LOCK TABLES `maintanance` WRITE;
/*!40000 ALTER TABLE `maintanance` DISABLE KEYS */;
INSERT INTO `maintanance` VALUES (1,'M1',1,1),(2,'M1',1,7),(3,'M2',4,14),(4,'M2',2,12),(5,'M3',3,13),(6,'M3',2,11),(7,'M3',2,10),(8,'M4',1,2),(9,'M4',1,3),(10,'M1',1,4),(11,'M1',1,5),(12,'M4',1,6),(13,'M4',1,8),(14,'M4',1,9);
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
  `customer_id` int NOT NULL,
  `building_id` int NOT NULL,
  `apartment_id` int NOT NULL,
  `arrival_date` varchar(64) DEFAULT NULL,
  `leaving_date` varchar(32) DEFAULT NULL,
  `amount_of_days` char(10) NOT NULL,
  `price_per_day` varchar(16) DEFAULT NULL,
  `cleaning_price` varchar(16) DEFAULT NULL,
  PRIMARY KEY (`reservation_id`),
  KEY `fk_reservation_building_id` (`building_id`),
  KEY `fk_reservation_customer_id` (`customer_id`),
  KEY `fk_reservation_apartment_id` (`apartment_id`),
  CONSTRAINT `fk_reservation_apartment_id` FOREIGN KEY (`apartment_id`) REFERENCES `apartment` (`apartment_id`),
  CONSTRAINT `fk_reservation_building_id` FOREIGN KEY (`building_id`) REFERENCES `building` (`building_id`),
  CONSTRAINT `fk_reservation_customer_id` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reservation`
--

LOCK TABLES `reservation` WRITE;
/*!40000 ALTER TABLE `reservation` DISABLE KEYS */;
INSERT INTO `reservation` VALUES (1,1,1,1,'12/04/2024','14/04/2024','2','$80','$50'),(2,1,1,5,'17/04/2024','21/04/2024','4','$120','$50'),(3,3,1,4,'23/04/2024','30/04/2024','7','$130','$50'),(4,1,1,1,'2024-04-12','2024-04-14','2','$80','$50'),(5,1,1,5,'2024-05-01','2024-05-04','4','$200','$50'),(6,1,1,1,'2024-04-12','2024-04-14','2','$80','$50'),(7,2,1,5,'2024-05-01','2024-05-04','4','$200','$50');
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
  PRIMARY KEY (`employee_id`,`date_sent`),
  CONSTRAINT `fk_salaries_employee_id` FOREIGN KEY (`employee_id`) REFERENCES `employee` (`employee_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `salaries`
--

LOCK TABLES `salaries` WRITE;
/*!40000 ALTER TABLE `salaries` DISABLE KEYS */;
INSERT INTO `salaries` VALUES ('C1','2/04/2024','80','$12','$960','CASH'),('C2','5-04-2024','100','$10','$1000','BANK TRANSFER'),('C3','5-04-2024','120','$11','$1320','CASH'),('C4','5-04-2024','160','$10','$1600','BANK TRANSFER'),('M1','2/04/2024','80','$20','$1600','BANK TRANSFER'),('M2','5-04-2024','80','$12','$960','BANK TRANSFER'),('M3','5-04-2024','75','$14','$1050','CASH'),('M4','5-04-2024','80','$12','$960','BANK TRANSFER'),('S1','2/04/2024','45','$9','$405','CASH'),('S2','5-04-2024','45','$8','$360','BANK TRANSFER'),('S3','5-04-2024','45','$9','$405','BANK TRANSFER'),('S4','5-04-2024','45','$10','$450','BANK TRANSFER');
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
  `building_id` int NOT NULL,
  `morning_or_afternoon` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`employee_id`),
  KEY `fk_supervision_building_id` (`building_id`),
  CONSTRAINT `fk_supervision_building_id` FOREIGN KEY (`building_id`) REFERENCES `building` (`building_id`),
  CONSTRAINT `fk_supervision_employee_id` FOREIGN KEY (`employee_id`) REFERENCES `employee` (`employee_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `supervision`
--

LOCK TABLES `supervision` WRITE;
/*!40000 ALTER TABLE `supervision` DISABLE KEYS */;
INSERT INTO `supervision` VALUES ('S1',1,'AFTERNOON'),('S2',2,' AFTERNOON'),('S3',3,'AFTERNOON'),('S4',4,'MORNING');
/*!40000 ALTER TABLE `supervision` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `total_income`
--

DROP TABLE IF EXISTS `total_income`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `total_income` (
  `reservation_id` int NOT NULL,
  `price_per_day` varchar(50) NOT NULL,
  `amount_of_days` int NOT NULL,
  `cleaning_price` varchar(50) NOT NULL,
  `revenue` varchar(50) NOT NULL,
  `total_income` varchar(50) NOT NULL,
  PRIMARY KEY (`reservation_id`),
  CONSTRAINT `f_income_reservation_id` FOREIGN KEY (`reservation_id`) REFERENCES `income` (`reservation_id`),
  CONSTRAINT `f_reservation_id` FOREIGN KEY (`reservation_id`) REFERENCES `reservation` (`reservation_id`),
  CONSTRAINT `fk_income_reservation_id` FOREIGN KEY (`reservation_id`) REFERENCES `income` (`reservation_id`),
  CONSTRAINT `fk_reservation_id` FOREIGN KEY (`reservation_id`) REFERENCES `reservation` (`reservation_id`),
  CONSTRAINT `total_income_ibfk_1` FOREIGN KEY (`reservation_id`) REFERENCES `reservation` (`reservation_id`),
  CONSTRAINT `total_income_ibfk_2` FOREIGN KEY (`reservation_id`) REFERENCES `income` (`reservation_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `total_income`
--

LOCK TABLES `total_income` WRITE;
/*!40000 ALTER TABLE `total_income` DISABLE KEYS */;
INSERT INTO `total_income` VALUES (1,'80',2,'50','210','$420'),(2,'120',4,'50','530','$1060'),(3,'130',7,'50','960','$1920');
/*!40000 ALTER TABLE `total_income` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'project_sergio_final'
--

--
-- Final view structure for view `aparments_in_chamberi`
--

/*!50001 DROP VIEW IF EXISTS `aparments_in_chamberi`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`Maria`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `aparments_in_chamberi` AS select `apartments_by_zipcode`.`apartment_id` AS `apartment_id`,`apartments_by_zipcode`.`apartment_name` AS `apartment_name`,`apartments_by_zipcode`.`rooms` AS `rooms`,`apartments_by_zipcode`.`amount_of_people` AS `amount_of_people`,`apartments_by_zipcode`.`double_beds` AS `double_beds`,`apartments_by_zipcode`.`single_beds` AS `single_beds`,`apartments_by_zipcode`.`exterior_or_interior` AS `exterior_or_interior`,`apartments_by_zipcode`.`zipcode` AS `zipcode` from `apartments_by_zipcode` where (`apartments_by_zipcode`.`zipcode` = '28015') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `apartments_by_zipcode`
--

/*!50001 DROP VIEW IF EXISTS `apartments_by_zipcode`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`Maria`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `apartments_by_zipcode` AS select `apartment`.`apartment_id` AS `apartment_id`,`apartment`.`apartment_name` AS `apartment_name`,`apartment`.`rooms` AS `rooms`,`apartment`.`amount_of_people` AS `amount_of_people`,`apartment`.`double_beds` AS `double_beds`,`apartment`.`single_beds` AS `single_beds`,`apartment`.`exterior_or_interior` AS `exterior_or_interior`,`building`.`zipcode` AS `zipcode` from (`apartment` join `building` on((`apartment`.`building_id` = `building`.`building_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `building_apartments`
--

/*!50001 DROP VIEW IF EXISTS `building_apartments`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`Maria`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `building_apartments` AS select `b`.`building_id` AS `building_id`,`b`.`building_name` AS `building_name`,`b`.`address` AS `address`,`b`.`town` AS `town`,`b`.`zipcode` AS `zipcode`,`a`.`apartment_id` AS `apartment_id`,`a`.`apartment_name` AS `apartment_name`,`a`.`rooms` AS `rooms`,`a`.`amount_of_people` AS `amount_of_people`,`a`.`double_beds` AS `double_beds`,`a`.`single_beds` AS `single_beds`,`a`.`exterior_or_interior` AS `exterior_or_interior` from (`building` `b` join `apartment` `a` on((`b`.`building_id` = `a`.`building_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `buildings_with_exterior_apartments`
--

/*!50001 DROP VIEW IF EXISTS `buildings_with_exterior_apartments`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`Maria`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `buildings_with_exterior_apartments` AS select distinct `building`.`building_id` AS `building_id`,`building`.`building_name` AS `building_name`,`building`.`address` AS `address`,`building`.`town` AS `town`,`building`.`zipcode` AS `zipcode` from (`building` join `apartment` on((`building`.`building_id` = `apartment`.`building_id`))) where (`apartment`.`exterior_or_interior` = 'exterior') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `employeesalaries`
--

/*!50001 DROP VIEW IF EXISTS `employeesalaries`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`Maria`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `employeesalaries` AS select `e`.`employee_id` AS `employee_id`,`e`.`fname` AS `fname`,`e`.`lname` AS `lname`,`s`.`date_sent` AS `date_sent`,`s`.`hours_worked` AS `hours_worked`,`s`.`pay_per_hour` AS `pay_per_hour`,`s`.`total_pay` AS `total_pay`,`s`.`payment_method` AS `payment_method` from (`employee` `e` join `salaries` `s` on((`e`.`employee_id` = `s`.`employee_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-04-06 16:05:57
