-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: localhost    Database: studentdb
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
-- Table structure for table `courses`
--

DROP TABLE IF EXISTS `courses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `courses` (
  `CourseID` int NOT NULL AUTO_INCREMENT,
  `CourseName` varchar(100) DEFAULT NULL,
  `CourseCode` varchar(20) DEFAULT NULL,
  `Schedule` varchar(100) DEFAULT NULL,
  `Edition` varchar(50) DEFAULT NULL,
  `ProfID` int DEFAULT NULL,
  `StudentID` int DEFAULT NULL,
  `DegreeProgram` varchar(50) DEFAULT NULL,
  `MajorID` int DEFAULT NULL,
  PRIMARY KEY (`CourseID`),
  UNIQUE KEY `CourseCode` (`CourseCode`),
  KEY `MajorID` (`MajorID`),
  CONSTRAINT `courses_ibfk_1` FOREIGN KEY (`MajorID`) REFERENCES `majors` (`MajorID`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `courses`
--

LOCK TABLES `courses` WRITE;
/*!40000 ALTER TABLE `courses` DISABLE KEYS */;
INSERT INTO `courses` VALUES (1,'Introduction to Computer Science','CS101','Mon-Wed-Fri 9:00-10:30','Fall 2022',1,1,'Bachelor of Science in Computer Science',1),(2,'Database Management Systems','CS201','Tue-Thu 11:00-12:30','Spring 2023',2,2,'Bachelor of Science in Computer Science',1),(3,'Data Structures and Algorithms','CS301','Mon-Wed 14:00-15:30','Fall 2023',3,3,'Bachelor of Science in Computer Science',1),(4,'Web Development','CS401','Tue-Thu 9:00-10:30','Spring 2024',4,4,'Bachelor of Science in Computer Science',1),(5,'Chemistry Fundamentals','CHEM201','Tue-Thu 11:00-12:30','Fall 2023',5,4,'Bachelor of Science in Chemistry',3),(6,'Software Engineering','CS601','Tue-Thu 13:00-14:30','Spring 2024',1,3,'Bachelor of Science in Computer Science',1),(7,'Computer Networks','CS701','Mon-Wed-Fri 11:00-12:30','Spring 2024',2,2,'Bachelor of Science in Computer Science',1),(8,'Operating Systems','CS801','Tue-Thu 14:00-15:30','Spring 2024',3,1,'Bachelor of Science in Computer Science',1),(9,'Computer Graphics','CS901','Mon-Wed-Fri 15:30-17:00','Spring 2024',4,2,'Bachelor of Science in Computer Science',1),(10,'Introduction to Biology','BIO101','Mon-Wed-Fri 9:00-10:30','Spring 2024',5,2,'Bachelor of Science in Biology',2),(11,'Introduction to Mehcanical Engineering','ENG101','Mon-Wed-Fri 9:00-10:30','Fall 2023',20,1,'Bachelor of Science in Engineering',11),(12,'Introduction to Physics','PHY301','Mon-Wed 14:00-15:30','Summer 2023',4,1,'Bachelor of Science in Physics',4),(13,'Principles of Economics','ECO401','Tue-Thu 9:00-10:30','Fall 2022',3,2,'Bachelor of Arts in Economics',5),(14,'History of Art','ART501','Mon-Wed-Fri 13:00-14:30','Spring 2023',2,3,'Bachelor of Arts in Art History',6),(15,'Introduction to Psychology','PSY601','Tue-Thu 13:00-14:30','Summer 2022',1,1,'Bachelor of Arts in Psychology',7),(16,'Literature Survey','LIT701','Mon-Wed-Fri 11:00-12:30','Fall 2024',2,4,'Bachelor of Arts in English Literature',8),(17,'Political Science','POL801','Tue-Thu 14:00-15:30','Spring 2022',3,3,'Bachelor of Arts in Political Science',9),(18,'Introduction to Music','MUS901','Mon-Wed-Fri 15:30-17:00','Summer 2024',6,4,'Bachelor of Arts in Music',10);
/*!40000 ALTER TABLE `courses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dean`
--

DROP TABLE IF EXISTS `dean`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dean` (
  `DeanID` int NOT NULL AUTO_INCREMENT,
  `FirstName` varchar(50) DEFAULT NULL,
  `LastName` varchar(50) DEFAULT NULL,
  `BirthDate` date DEFAULT NULL,
  `DeanEmail` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`DeanID`),
  UNIQUE KEY `DeanEmail` (`DeanEmail`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dean`
--

LOCK TABLES `dean` WRITE;
/*!40000 ALTER TABLE `dean` DISABLE KEYS */;
INSERT INTO `dean` VALUES (1,'Jose','Martin','1964-06-18','jose.martin@scuniversity.com'),(2,'Evelin','Smith','1992-08-23','evelin.smith@scuniversity.com');
/*!40000 ALTER TABLE `dean` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `department`
--

DROP TABLE IF EXISTS `department`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `department` (
  `DepartmentID` int NOT NULL AUTO_INCREMENT,
  `DepartmentName` varchar(100) DEFAULT NULL,
  `ProfID` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`DepartmentID`),
  KEY `fk_professors_new2` (`ProfID`),
  CONSTRAINT `fk_professors_new2` FOREIGN KEY (`ProfID`) REFERENCES `professors` (`ProfID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `department`
--

LOCK TABLES `department` WRITE;
/*!40000 ALTER TABLE `department` DISABLE KEYS */;
INSERT INTO `department` VALUES (1,'Computer Science Department',NULL),(2,'Biology Department',NULL),(3,'Civil Engineering Department',NULL),(4,'Economics Department',NULL);
/*!40000 ALTER TABLE `department` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `finance`
--

DROP TABLE IF EXISTS `finance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `finance` (
  `FinanceID` int NOT NULL AUTO_INCREMENT,
  `StudentID` int DEFAULT NULL,
  `firstname` varchar(50) DEFAULT NULL,
  `lastname` varchar(50) DEFAULT NULL,
  `scholarshipname` varchar(100) DEFAULT NULL,
  `financialaid` varchar(100) DEFAULT NULL,
  `amount` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`FinanceID`),
  KEY `StudentID` (`StudentID`),
  CONSTRAINT `finance_ibfk_1` FOREIGN KEY (`StudentID`) REFERENCES `students` (`StudentID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `finance`
--

LOCK TABLES `finance` WRITE;
/*!40000 ALTER TABLE `finance` DISABLE KEYS */;
INSERT INTO `finance` VALUES (1,1,NULL,NULL,'Merit Scholarship','Yes',5000.00),(2,2,NULL,NULL,NULL,'No',0.00),(3,3,NULL,NULL,'Athletic Scholarship','Yes',3000.00),(4,4,NULL,NULL,'Presidential Scholarship','Yes',10000.00),(5,5,NULL,NULL,'Need-based Scholarship','Yes',4000.00);
/*!40000 ALTER TABLE `finance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `germanstudents`
--

DROP TABLE IF EXISTS `germanstudents`;
/*!50001 DROP VIEW IF EXISTS `germanstudents`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `germanstudents` AS SELECT 
 1 AS `FirstName`,
 1 AS `LastName`,
 1 AS `MajorID`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `grades`
--

DROP TABLE IF EXISTS `grades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `grades` (
  `GradeID` int NOT NULL AUTO_INCREMENT,
  `StudentID` int DEFAULT NULL,
  `CourseID` int DEFAULT NULL,
  `NumericalGrade` decimal(4,2) DEFAULT NULL,
  `LetterGrade` varchar(2) DEFAULT NULL,
  PRIMARY KEY (`GradeID`),
  KEY `fk_student` (`StudentID`),
  KEY `fk_course` (`CourseID`),
  CONSTRAINT `fk_course` FOREIGN KEY (`CourseID`) REFERENCES `courses` (`CourseID`),
  CONSTRAINT `fk_student` FOREIGN KEY (`StudentID`) REFERENCES `students` (`StudentID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grades`
--

LOCK TABLES `grades` WRITE;
/*!40000 ALTER TABLE `grades` DISABLE KEYS */;
INSERT INTO `grades` VALUES (1,1,1,85.00,'B+'),(2,1,2,90.00,'A-'),(3,2,3,78.00,'C+'),(4,2,4,92.00,'A'),(5,3,5,85.00,'B+'),(6,3,6,88.00,'B+'),(7,4,7,75.00,'C'),(8,4,8,80.00,'B-'),(9,5,9,95.00,'A'),(10,5,10,82.00,'B');
/*!40000 ALTER TABLE `grades` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `internship`
--

DROP TABLE IF EXISTS `internship`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `internship` (
  `FirstName` varchar(50) DEFAULT NULL,
  `LastName` varchar(50) DEFAULT NULL,
  `BirthDate` date DEFAULT NULL,
  `CompanyName` varchar(100) DEFAULT NULL,
  `position` varchar(50) DEFAULT NULL,
  `startdate` date DEFAULT NULL,
  `duration` int DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `MajorID` int DEFAULT NULL,
  `InternshipID` int NOT NULL,
  `StudentID` int DEFAULT NULL,
  `DeanID` int DEFAULT NULL,
  PRIMARY KEY (`InternshipID`),
  KEY `StudentID` (`StudentID`),
  KEY `DeanID` (`DeanID`),
  CONSTRAINT `internship_ibfk_1` FOREIGN KEY (`StudentID`) REFERENCES `students` (`StudentID`),
  CONSTRAINT `internship_ibfk_2` FOREIGN KEY (`DeanID`) REFERENCES `dean` (`DeanID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `internship`
--

LOCK TABLES `internship` WRITE;
/*!40000 ALTER TABLE `internship` DISABLE KEYS */;
INSERT INTO `internship` VALUES ('Matteo','Deaz','1998-05-15','Microsoft','data analyst intern','2023-09-01',10,'2024-06-30',1,1,1,1),('Emily','Brown','2000-12-05','alanata21','cleaner','2024-01-02',7,'2024-08-02',3,2,4,2);
/*!40000 ALTER TABLE `internship` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `majors`
--

DROP TABLE IF EXISTS `majors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `majors` (
  `MajorID` int NOT NULL AUTO_INCREMENT,
  `MajorName` varchar(100) DEFAULT NULL,
  `StudentID` int DEFAULT NULL,
  PRIMARY KEY (`MajorID`),
  UNIQUE KEY `MajorName` (`MajorName`),
  KEY `StudentID` (`StudentID`),
  CONSTRAINT `majors_ibfk_1` FOREIGN KEY (`StudentID`) REFERENCES `students` (`StudentID`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `majors`
--

LOCK TABLES `majors` WRITE;
/*!40000 ALTER TABLE `majors` DISABLE KEYS */;
INSERT INTO `majors` VALUES (1,'Computer Science',1),(2,'Mathematics',4),(3,'Physics',NULL),(4,'Chemistry',NULL),(5,'Biology',NULL),(6,'Psychology',NULL),(7,'English',NULL),(8,'History',NULL),(9,'Sociology',NULL),(10,'Economics',NULL),(11,'Political Science',NULL),(12,'Art History',NULL),(13,'Music',NULL),(14,'Theatre',NULL),(15,'Engineering',NULL),(16,'Business Administration',NULL),(17,'Accounting',NULL),(18,'Marketing',NULL),(19,'Finance',NULL),(20,'Human Resources',NULL),(21,'Nursing',NULL),(22,'Education',NULL),(23,'Communications',NULL),(24,'Information Technology',NULL),(25,'Environmental Science',NULL),(26,'Geology',NULL),(27,'Anthropology',NULL),(28,'Linguistics',NULL),(29,'Philosophy',NULL),(30,'Religious Studies',NULL),(31,'Astronomy',NULL),(32,'International Relations',NULL),(33,'Criminal Justice',NULL),(34,'Nutrition',NULL),(35,'Kinesiology',NULL),(36,'Public Health',NULL),(37,'Social Work',NULL),(38,'Foreign Languages',NULL),(39,'Architecture',NULL),(40,'Dance',NULL);
/*!40000 ALTER TABLE `majors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `professors`
--

DROP TABLE IF EXISTS `professors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `professors` (
  `ProfID` varchar(50) NOT NULL,
  `FirstName` varchar(50) DEFAULT NULL,
  `LastName` varchar(50) DEFAULT NULL,
  `Prof_email` varchar(100) DEFAULT NULL,
  `Course_ID` int DEFAULT NULL,
  `Speciality` varchar(100) DEFAULT NULL,
  `DepartmentID` int DEFAULT NULL,
  PRIMARY KEY (`ProfID`),
  UNIQUE KEY `Prof_email` (`Prof_email`),
  KEY `fk_department` (`DepartmentID`),
  CONSTRAINT `fk_department` FOREIGN KEY (`DepartmentID`) REFERENCES `department` (`DepartmentID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `professors`
--

LOCK TABLES `professors` WRITE;
/*!40000 ALTER TABLE `professors` DISABLE KEYS */;
INSERT INTO `professors` VALUES ('1','John','Smith','john.smith@example.com',1,'Computer Science',NULL),('2','Alice','Johnson','alice.johnson@example.com',2,'Biology',NULL),('3','Michael','Williams','michael.williams@example.com',3,'Artificial Intelligence',NULL),('4','Emily','Brown','emily.brown@example.com',4,'Urban Planning',NULL),('5','James','Taylor','james.taylor@example.com',5,'Economic Policy',NULL);
/*!40000 ALTER TABLE `professors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `professors_view`
--

DROP TABLE IF EXISTS `professors_view`;
/*!50001 DROP VIEW IF EXISTS `professors_view`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `professors_view` AS SELECT 
 1 AS `ProfID`,
 1 AS `Firstname`,
 1 AS `LastName`,
 1 AS `Prof_email`,
 1 AS `Course_ID`,
 1 AS `Speciality`,
 1 AS `DepartmentID`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `publications`
--

DROP TABLE IF EXISTS `publications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `publications` (
  `PublicationID` int NOT NULL AUTO_INCREMENT,
  `ProfID` varchar(50) DEFAULT NULL,
  `Topic` varchar(50) DEFAULT NULL,
  `Publicationdate` date DEFAULT NULL,
  `Publication_name` int DEFAULT NULL,
  `Title` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`PublicationID`),
  KEY `fk_professors` (`ProfID`),
  CONSTRAINT `fk_professors` FOREIGN KEY (`ProfID`) REFERENCES `professors` (`ProfID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `publications`
--

LOCK TABLES `publications` WRITE;
/*!40000 ALTER TABLE `publications` DISABLE KEYS */;
INSERT INTO `publications` VALUES (1,'1','Computer and Information Techonolgy','2023-04-05',NULL,'Information technologies of 21st century and their impact on the society'),(2,'5','Economical analysis','2024-01-02',NULL,'The economic state of Hungary in the past decade'),(3,'2','Biology and medical studies','2008-09-10',NULL,'How gen modification will shape the future of medicine'),(4,'4','Urban engineering','2022-12-12',NULL,'Dinamic changes in the landscape and mobility in Madrid ');
/*!40000 ALTER TABLE `publications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `research`
--

DROP TABLE IF EXISTS `research`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `research` (
  `ResearchID` int NOT NULL AUTO_INCREMENT,
  `ResearchTitle` varchar(100) DEFAULT NULL,
  `ResearchDescription` text,
  `ResearchGroupID` int DEFAULT NULL,
  `ProfID` varchar(50) DEFAULT NULL,
  `CourseID` int DEFAULT NULL,
  `MajorID` int DEFAULT NULL,
  PRIMARY KEY (`ResearchID`),
  KEY `ResearchGroupID` (`ResearchGroupID`),
  KEY `ProfID` (`ProfID`),
  KEY `CourseID` (`CourseID`),
  KEY `MajorID` (`MajorID`),
  CONSTRAINT `research_ibfk_1` FOREIGN KEY (`ResearchGroupID`) REFERENCES `researchgroup` (`ResearchGroupID`),
  CONSTRAINT `research_ibfk_2` FOREIGN KEY (`ProfID`) REFERENCES `professors` (`ProfID`),
  CONSTRAINT `research_ibfk_3` FOREIGN KEY (`CourseID`) REFERENCES `courses` (`CourseID`),
  CONSTRAINT `research_ibfk_4` FOREIGN KEY (`MajorID`) REFERENCES `majors` (`MajorID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `research`
--

LOCK TABLES `research` WRITE;
/*!40000 ALTER TABLE `research` DISABLE KEYS */;
/*!40000 ALTER TABLE `research` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `researchgroup`
--

DROP TABLE IF EXISTS `researchgroup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `researchgroup` (
  `ResearchGroupID` int NOT NULL AUTO_INCREMENT,
  `ResearchGroupName` varchar(100) DEFAULT NULL,
  `StudentID` int DEFAULT NULL,
  PRIMARY KEY (`ResearchGroupID`),
  KEY `StudentID` (`StudentID`),
  CONSTRAINT `researchgroup_ibfk_1` FOREIGN KEY (`StudentID`) REFERENCES `students` (`StudentID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `researchgroup`
--

LOCK TABLES `researchgroup` WRITE;
/*!40000 ALTER TABLE `researchgroup` DISABLE KEYS */;
INSERT INTO `researchgroup` VALUES (1,'Genetic Engineering Research Group',NULL),(2,'Environmental Sustainability Research Group',NULL),(3,'Artificial Intelligence Research Group',NULL),(4,'Urban Planning Research Group',NULL),(5,'Economic Policy Research Group',NULL);
/*!40000 ALTER TABLE `researchgroup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `students`
--

DROP TABLE IF EXISTS `students`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `students` (
  `StudentID` int NOT NULL AUTO_INCREMENT,
  `FirstName` varchar(50) DEFAULT NULL,
  `LastName` varchar(50) DEFAULT NULL,
  `BirthDate` date DEFAULT NULL,
  `Email` varchar(100) DEFAULT NULL,
  `PhoneNumber` varchar(20) DEFAULT NULL,
  `Gender` enum('Male','Female','Other') DEFAULT NULL,
  `SocialSecurityNumber` varchar(20) DEFAULT NULL,
  `Nationality` varchar(50) DEFAULT NULL,
  `MajorID` int DEFAULT NULL,
  `Enrollmentdate` date DEFAULT NULL,
  `ExpectedGraduationDate` date DEFAULT NULL,
  PRIMARY KEY (`StudentID`),
  UNIQUE KEY `Email` (`Email`),
  KEY `MajorID` (`MajorID`),
  CONSTRAINT `students_ibfk_1` FOREIGN KEY (`MajorID`) REFERENCES `majors` (`MajorID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `students`
--

LOCK TABLES `students` WRITE;
/*!40000 ALTER TABLE `students` DISABLE KEYS */;
INSERT INTO `students` VALUES (1,'Matteo','Deaz','1998-05-15','matteo.deaz@example.com','+1234567890','Male','123-45-6789','American',1,'2020-09-01','2024-05-15'),(2,'Alice','Smith','1999-08-20','alice.smith@example.com','+1987654321','Female','987-65-4321','Canadian',1,'2021-01-15','2025-05-30'),(3,'Michael','Johnson','1997-03-10','michael.johnson@example.com','+1122334455','Male','654-32-1098','British',2,'2019-08-25','2023-06-01'),(4,'Emily','Brown','2000-12-05','emily.brown@example.com','+1554433221','Female','321-54-9876','Australian',3,'2020-10-10','2024-06-15'),(5,'James','Taylor','1996-09-18','james.taylor@example.com','+1777888999','Male','789-12-3456','German',2,'2021-02-20','2025-07-01');
/*!40000 ALTER TABLE `students` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `students_view`
--

DROP TABLE IF EXISTS `students_view`;
/*!50001 DROP VIEW IF EXISTS `students_view`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `students_view` AS SELECT 
 1 AS `FirstName`,
 1 AS `LastName`,
 1 AS `Nationality`*/;
SET character_set_client = @saved_cs_client;

--
-- Dumping routines for database 'studentdb'
--
/*!50003 DROP PROCEDURE IF EXISTS `InsertProfessors` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`Maria`@`%` PROCEDURE `InsertProfessors`()
BEGIN
    DECLARE i INT DEFAULT 1;
    WHILE i <= 100 DO
        INSERT INTO Professors (FirstName, LastName, Email)
        VALUES (
            CONCAT('Professor', FLOOR(1000 + RAND() * 9000)), 
            CONCAT('Last', FLOOR(1000 + RAND() * 9000)), 
            CONCAT('professor', i, '@example.com')
        );
        SET i = i + 1;
    END WHILE;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Insertstudents` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`Maria`@`%` PROCEDURE `Insertstudents`()
begin
	declare i int default 1;
	while i <= 500 DO
		insert into students (FirstName, LastName, BirthDate,Email)
		values(
			concat('Student', FLOOR(1000+ RAND()*9000)),
			concat('Last', FLOOR(1000 + RAND() * 9000)),
			DATE_SUB(CURDATE(), interval FLOOR(RAND()* 25) year),
			concat('student', i ,'@example.com')
		);
		set i = i +1;
	end while;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `germanstudents`
--

/*!50001 DROP VIEW IF EXISTS `germanstudents`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`Maria`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `germanstudents` AS select `students`.`FirstName` AS `FirstName`,`students`.`LastName` AS `LastName`,`students`.`MajorID` AS `MajorID` from `students` where (`students`.`Nationality` = 'German') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `professors_view`
--

/*!50001 DROP VIEW IF EXISTS `professors_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`Maria`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `professors_view` AS select `professors`.`ProfID` AS `ProfID`,`professors`.`FirstName` AS `Firstname`,`professors`.`LastName` AS `LastName`,`professors`.`Prof_email` AS `Prof_email`,`professors`.`Course_ID` AS `Course_ID`,`professors`.`Speciality` AS `Speciality`,`professors`.`DepartmentID` AS `DepartmentID` from `professors` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `students_view`
--

/*!50001 DROP VIEW IF EXISTS `students_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`Maria`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `students_view` AS select `students`.`FirstName` AS `FirstName`,`students`.`LastName` AS `LastName`,`students`.`Nationality` AS `Nationality` from `students` where (`students`.`MajorID` = 1) */;
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

-- Dump completed on 2024-04-02 21:13:23
