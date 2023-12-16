CREATE DATABASE  IF NOT EXISTS `db_110403004_3` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `db_110403004_3`;
-- MySQL dump 10.13  Distrib 8.0.33, for Linux (x86_64)
--
-- Host: localhost    Database: db_110403004_3
-- ------------------------------------------------------
-- Server version	8.0.33-0ubuntu0.20.04.2

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
-- Table structure for table `Course`
--

DROP TABLE IF EXISTS `Course`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Course` (
  `cou_id` int NOT NULL AUTO_INCREMENT,
  `cou_code` varchar(45) NOT NULL,
  `cou_name` varchar(100) NOT NULL,
  `cou_semester` int NOT NULL,
  `cou_room` varchar(45) NOT NULL,
  `cou_date` varchar(45) NOT NULL,
  `cou_time` varchar(45) NOT NULL,
  PRIMARY KEY (`cou_id`),
  UNIQUE KEY `course_id_UNIQUE` (`cou_id`)
) ENGINE=InnoDB AUTO_INCREMENT=82 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Course`
--

LOCK TABLES `Course` WRITE;
/*!40000 ALTER TABLE `Course` DISABLE KEYS */;
INSERT INTO `Course` VALUES (1,'IM1023','Finance Management',1121,'I1-104','Wed','234'),(2,'IM1023','Finance Management',1111,'I1-104','Wed','234'),(3,'IM1022','Data Science',1121,'I1-404','Fri','234'),(4,'IM1022','Data Science',1112,'I1-404','Fri','234'),(5,'IM1022','Data Science',1112,'I1-404','Fri','567'),(6,'IM560','Programming(Basic)',1111,'I1-407','Sun','678'),(7,'IM560','Programming(Basic)',1101,'I1-407','Fri','678'),(9,'IM2056','Introduction to Blockchain',1112,'I1-404','Mon','234'),(10,'IM2056','Introduction to Blockchain',1101,'I1-404','Mon','234'),(11,'IM1025','Machine Learning',1121,'I1-104','Mon','567'),(12,'IM1025','Machine Learning',1092,'I1-104','Mon','567'),(13,'IM2048','Introduction to DataBase',1121,'I1-103','Wed','567'),(14,'IM2048','Introduction to DataBase',1111,'I1-103','Mon','567'),(15,'IM2048','Introduction to DataBase',1101,'I1-103','Mon','567'),(16,'IM2048','Introduction to DataBase',1091,'I1-103','Mon','567'),(17,'IM561','Programming(Advanced)',1112,'I1-407','Tue','234'),(18,'IM561','Programming(Advanced)',1102,'I1-407','Tue','234'),(19,'IM561','Programming(Advanced)',1092,'I1-407','Tue','234'),(20,'IM4085','Basic Chinese',1121,'I1-404','Wed','789'),(21,'IM4085','Basic Chinese',1112,'I1-404','Wed','789'),(22,'IM4085','Basic Chinese',1102,'I1-404','Wed','789'),(23,'IM2060','Information Security',1121,'I1-404','Tue','678'),(24,'IM2060','Information Security',1111,'I1-404','Tue','678'),(25,'IM2060','Information Security',1101,'I1-404','Tue','678'),(26,'IM2062','Introduction to Internet',1121,'l1-409','Thu','678'),(27,'IM2062','Introduction to Internet',1111,'l1-409','Thu','678'),(28,'IM4083','Basic English',1121,'I1-404','Mon','234'),(29,'IM4083','Basic English',1111,'I1-404','Mon','234'),(30,'IM4083','Basic English',1101,'I1-404','Mon','234'),(31,'IM2063','Practical Course of Cloud Computing',1121,'I1-407','Thu','678'),(32,'IM2063','Practical Course of Cloud Computing',1112,'I1-407','Thu','678'),(33,'IM1050','Marketing Management',1121,'I1-507','Thu','567'),(34,'IM1050','Marketing Management',1111,'I1-507','Thu','567'),(35,'IM1050','Marketing Management',1101,'I1-507','Thu','567'),(36,'IM1062','Physical Education',1121,'I1-408','Wed','678'),(37,'IM1062','Physical Education',1111,'I1-408','Wed','678'),(38,'IM1062','Physical Education',1101,'I1-408','Wed','678'),(39,'IM1023','Finance Management',1121,'I1-104','Sun','234'),(40,'IM1023','Finance Management',1121,'I1-104','Mon','234'),(41,'IM1023','Finance Management',1121,'I1-104','Tue','234'),(42,'IM2056','Introduction to Blockchain',1112,'I1-404','Tue','234'),(43,'IM560','Programming(Basic)',1121,'I1-407','Fri','678'),(44,'IM1022','Data Science',1102,'I1-404','Sun','234'),(45,'IM1025','Machine Learning',1121,'I1-104','Tue','567'),(46,'IM1025','Machine Learning',1121,'I1-104','Wed','567'),(47,'IM1023','Finance Management',1111,'I1-104','Sun','234'),(48,'IM1023','Finance Management',1111,'I1-104','Mon','234'),(49,'IM1023','Finance Management',1111,'I1-104','Tue','234'),(50,'IM560','Programming(Basic)',1121,'I1-407','Sun','678'),(51,'IM2056','Introduction to Blockchain',1121,'I1-404','Wed','234'),(52,'IM1022','Data Science',1121,'l1-404','Sun','234'),(53,'IM560','Programming(Basic)',1101,'l1-407','Mon','678'),(54,'IM560','Programming(Basic)',1101,'l1-407','Sun','678'),(55,'IM560','Programming(Basic)',1091,'l1-407','Mon','678'),(56,'IM560','Programming(Basic)',1091,'I1-407','Fri','678'),(57,'IM560','Programming(Basic)',1091,'I1-407','Sun','678'),(58,'IM2056','Introduction to Blockchain',1101,'l1-404','Tue','234'),(59,'IM1025','Machine Learning',1092,'l1-104','Tue','567'),(60,'IM1025','Machine Learning',1092,'l1-104','Wed','567'),(61,'IM2048','Introduction to DataBase',1121,'l1-103','Tue','567'),(62,'IM2048','Introduction to DataBase',1111,'l1-103','Tue','567'),(63,'IM2048','Introduction to DataBase',1111,'l1-103','Wed','567'),(64,'IM2048','Introduction to DataBase',1111,'l1-103','Thu','567'),(65,'IM2048','Introduction to DataBase',1101,'l1-103','Tue','567'),(66,'IM2048','Introduction to DataBase',1101,'l1-103','Wed','567'),(67,'IM2048','Introduction to DataBase',1091,'l1-103','Tue','567'),(68,'IM2048','Introduction to DataBase',1091,'l1-103','Wed','567'),(69,'IM561','Programming(Advanced)',1112,'l1-407','Wed','234'),(70,'IM561','Programming(Advanced)',1102,'l1-407','Wed','234'),(71,'IM561','Programming(Advanced)',1092,'I1-407','Wed','234'),(72,'IM2060','Information Security',1121,'l1-404','Mon','678'),(73,'IM2060','Information Security',1101,'l1-404','Mon','678'),(74,'IM2062','Introduction to Internet',1121,'l1-409','Mon','678'),(75,'IM2062','Introduction to Internet',1111,'l1-409','Mon','678'),(76,'IM2063','Practical Course of Cloud Computing',1112,'I1-407','Mon','234'),(77,'IM1050','Marketing Management',1121,'l1-507','Wed','234'),(78,'IM1050','Marketing Management',1121,'l1-507','Fri','567'),(79,'IM1050','Marketing Management',1111,'I1-507','Fri','567'),(80,'IM1050','Marketing Management',1101,'I1-507','Fri','567'),(81,'IM561','Programming(Advanced)',1092,'I1-407','Fri','234');
/*!40000 ALTER TABLE `Course` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CourseCard`
--

DROP TABLE IF EXISTS `CourseCard`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `CourseCard` (
  `cc_id` int NOT NULL AUTO_INCREMENT,
  `cc_serial_number` int NOT NULL,
  `cc_cou_id` int NOT NULL,
  `used_y/n` varchar(45) NOT NULL,
  PRIMARY KEY (`cc_id`),
  UNIQUE KEY `coursecard_id_UNIQUE` (`cc_id`),
  UNIQUE KEY `serial_number_UNIQUE` (`cc_serial_number`),
  CONSTRAINT `coursecard_to_course_coursecard_id` FOREIGN KEY (`cc_id`) REFERENCES `Course` (`cou_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CourseCard`
--

LOCK TABLES `CourseCard` WRITE;
/*!40000 ALTER TABLE `CourseCard` DISABLE KEYS */;
INSERT INTO `CourseCard` VALUES (1,50001,20,'y'),(2,50002,20,'y'),(3,50003,20,'y'),(4,50004,20,'n'),(5,50005,20,'n'),(6,50006,13,'y'),(7,50007,44,'n'),(9,50009,44,'n'),(10,50010,44,'n'),(11,50013,51,'n'),(12,50014,51,'n'),(13,50015,51,'y'),(14,50016,51,'n'),(15,50017,51,'n');
/*!40000 ALTER TABLE `CourseCard` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CourseToDegreeProgram`
--

DROP TABLE IF EXISTS `CourseToDegreeProgram`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `CourseToDegreeProgram` (
  `course_to_degree_program_id` int NOT NULL,
  `cou_id` int NOT NULL,
  `dp_id` int NOT NULL,
  PRIMARY KEY (`course_to_degree_program_id`),
  KEY `coursetodegreeprogram_to_degreeprogram_degree_program_id_idx` (`dp_id`),
  KEY `coursetodegreeprogram_to_course_course_id` (`cou_id`),
  CONSTRAINT `coursetodegreeprogram_to_course_course_id` FOREIGN KEY (`cou_id`) REFERENCES `Course` (`cou_id`),
  CONSTRAINT `coursetodegreeprogram_to_degreeprogram_degree_program_id` FOREIGN KEY (`dp_id`) REFERENCES `DegreeProgram` (`dp_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CourseToDegreeProgram`
--

LOCK TABLES `CourseToDegreeProgram` WRITE;
/*!40000 ALTER TABLE `CourseToDegreeProgram` DISABLE KEYS */;
INSERT INTO `CourseToDegreeProgram` VALUES (1,1,1),(2,1,2),(3,1,3),(4,39,2),(5,40,3),(6,41,4),(7,2,1),(8,47,2),(9,48,3),(10,49,4),(11,52,1),(12,3,4),(13,4,4),(14,5,1),(15,44,4),(16,50,1),(17,6,1),(18,43,2),(19,7,1),(20,53,2),(21,54,3),(22,55,1),(23,56,2),(24,57,3),(25,9,3),(26,42,4),(27,51,1),(28,58,3),(29,10,4),(30,11,1),(31,45,2),(32,46,3),(33,59,1),(34,60,2),(35,12,3),(36,13,1),(37,61,3),(38,53,4),(39,62,1),(40,63,2),(41,64,3),(42,14,4),(43,65,2),(44,66,3),(45,15,4),(46,67,2),(47,68,3),(48,16,4),(49,69,2),(50,17,4),(51,70,2),(52,18,4),(53,71,2),(54,81,2),(55,19,4),(56,20,5),(57,21,5),(58,22,5),(59,72,1),(60,23,2),(61,24,1),(62,52,2),(63,73,1),(64,25,2),(65,74,1),(66,26,2),(67,75,1),(68,27,2),(69,28,5),(70,29,5),(71,30,5),(72,81,1),(73,31,4),(74,76,3),(75,32,4),(76,77,2),(77,78,3),(78,33,4),(79,79,3),(80,34,4),(81,80,3),(82,35,4),(83,36,5),(84,37,5),(85,38,5);
/*!40000 ALTER TABLE `CourseToDegreeProgram` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CourseToTeacher`
--

DROP TABLE IF EXISTS `CourseToTeacher`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `CourseToTeacher` (
  `course_to_teacher_id` int NOT NULL,
  `tea_id` int NOT NULL,
  `cou_id` int NOT NULL,
  PRIMARY KEY (`course_to_teacher_id`),
  KEY `coursetocourse_to_course_id_idx` (`cou_id`),
  KEY `coursetoteacher_to_teacher_id` (`tea_id`),
  CONSTRAINT `coursetocourse_to_course_id` FOREIGN KEY (`cou_id`) REFERENCES `Course` (`cou_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `coursetoteacher_to_teacher_id` FOREIGN KEY (`tea_id`) REFERENCES `Teacher` (`tea_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CourseToTeacher`
--

LOCK TABLES `CourseToTeacher` WRITE;
/*!40000 ALTER TABLE `CourseToTeacher` DISABLE KEYS */;
INSERT INTO `CourseToTeacher` VALUES (1,5623,11),(2,1245,11),(3,5623,45),(4,1245,45),(5,5623,46),(6,1245,46),(7,5620,17),(8,5623,17),(9,5620,18),(10,5623,18),(11,5623,19),(12,5620,19),(13,2356,1),(14,2356,39),(15,2356,40),(16,2356,41),(17,2356,2),(18,2356,47),(19,2356,48),(20,2356,49),(21,5623,52),(22,5623,3),(23,5620,4),(24,5620,5),(25,5620,44),(26,5623,50),(27,5623,6),(28,5623,43),(29,5623,7),(30,1234,53),(31,1234,54),(32,1234,55),(33,5623,56),(34,1234,57),(35,5623,9),(36,1245,42),(37,5623,51),(38,1234,58),(39,5623,10),(40,1234,59),(41,1234,60),(42,1245,12),(43,5620,13),(44,1234,61),(45,5620,53),(46,1234,62),(47,1234,63),(48,1234,64),(49,5620,14),(50,1234,65),(51,1234,66),(52,5620,15),(53,1234,67),(54,1234,68),(55,5620,16),(56,1234,69),(57,1234,70),(58,1234,71),(59,3120,81),(60,3120,20),(61,3120,21),(62,3120,22),(63,1234,72),(64,5620,23),(65,1245,24),(66,1245,52),(67,2356,73),(68,1245,25),(69,2356,74),(70,5623,26),(71,1234,75),(72,1245,27),(73,3120,28),(74,3120,29),(75,3120,30),(76,1234,81),(77,1245,31),(78,1234,76),(79,1245,32),(80,1234,77),(81,1234,78),(82,2356,33),(83,1234,79),(84,2356,34),(85,1234,80),(86,2356,35),(87,2356,36),(88,3120,37),(89,3120,38);
/*!40000 ALTER TABLE `CourseToTeacher` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DegreeProgram`
--

DROP TABLE IF EXISTS `DegreeProgram`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `DegreeProgram` (
  `dp_id` int NOT NULL,
  `dp_name` varchar(100) NOT NULL,
  PRIMARY KEY (`dp_id`),
  UNIQUE KEY `degree_program_id_UNIQUE` (`dp_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DegreeProgram`
--

LOCK TABLES `DegreeProgram` WRITE;
/*!40000 ALTER TABLE `DegreeProgram` DISABLE KEYS */;
INSERT INTO `DegreeProgram` VALUES (1,'Bachelor of Information Management Degree Program'),(2,'Bachelor of Business Management Degree Program'),(3,'Bachelor of Applied Economics Degree Program'),(4,'Bachelor of Financial Management Degree Program'),(5,'Liberal Education');
/*!40000 ALTER TABLE `DegreeProgram` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ElectiveCourse`
--

DROP TABLE IF EXISTS `ElectiveCourse`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ElectiveCourse` (
  `el_id` int NOT NULL,
  `dp_id` int NOT NULL,
  `el_elective_course` varchar(45) NOT NULL,
  PRIMARY KEY (`el_id`),
  KEY `electivecourse_to_degreeprogram_idx` (`dp_id`),
  CONSTRAINT `electivecourse_to_degreeprogram` FOREIGN KEY (`dp_id`) REFERENCES `DegreeProgram` (`dp_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ElectiveCourse`
--

LOCK TABLES `ElectiveCourse` WRITE;
/*!40000 ALTER TABLE `ElectiveCourse` DISABLE KEYS */;
INSERT INTO `ElectiveCourse` VALUES (1,1,'IM1022'),(2,1,'IM2056'),(3,1,'IM2060'),(4,1,'IM2063'),(5,2,'IM1025'),(6,2,'IM561'),(7,2,'IM2060'),(8,2,'IM2062'),(9,3,'IM560'),(10,3,'IM1025'),(11,3,'IM2048'),(12,3,'IM2063'),(13,4,'IM1022'),(14,4,'IM2048'),(15,4,'IM2063'),(16,4,'IM2062'),(17,5,'IM4085'),(18,5,'IM4083'),(19,5,'IM1062');
/*!40000 ALTER TABLE `ElectiveCourse` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PrerequisiteCourse`
--

DROP TABLE IF EXISTS `PrerequisiteCourse`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `PrerequisiteCourse` (
  `pc_id` int NOT NULL,
  `cou_id` int NOT NULL,
  `from_course_code` varchar(100) NOT NULL,
  `from_course` varchar(100) NOT NULL,
  `prerequisite_code` varchar(100) NOT NULL,
  `pc_prerequisite_course` varchar(100) NOT NULL,
  PRIMARY KEY (`pc_id`),
  KEY `rerequisiteourse_to_course_idx` (`cou_id`),
  CONSTRAINT `rerequisiteourse_to_course` FOREIGN KEY (`cou_id`) REFERENCES `Course` (`cou_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PrerequisiteCourse`
--

LOCK TABLES `PrerequisiteCourse` WRITE;
/*!40000 ALTER TABLE `PrerequisiteCourse` DISABLE KEYS */;
INSERT INTO `PrerequisiteCourse` VALUES (1,52,'IM1022','Data Science','IM560','Programming(Basic)'),(2,52,'IM1022','Data Science','IM2048','Introduction to DataBase'),(3,3,'IM1022','Data Science','IM560','Programming(Basic)'),(4,3,'IM1022','Data Science','IM2048','Introduction to DataBase'),(5,4,'IM1022','Data Science','IM560','Programming(Basic)'),(6,4,'IM1022','Data Science','IM2048','Introduction to DataBase'),(7,5,'IM1022','Data Science','IM560','Programming(Basic)'),(8,5,'IM1022','Data Science','IM2048','Introduction to DataBase'),(9,44,'IM1022','Data Science','IM560','Programming(Basic)'),(10,44,'IM1022','Data Science','IM2048','Introduction to DataBase'),(11,9,'IM2056','Introduction to Blockchain','IM2060','Information Security'),(12,42,'IM2056','Introduction to Blockchain','IM2060','Information Security'),(13,51,'IM2056','Introduction to Blockchain','IM2060','Information Security'),(14,58,'IM2056','Introduction to Blockchain','IM2060','Information Security'),(15,10,'IM2056','Introduction to Blockchain','IM2060','Information Security'),(16,11,'IM1025','Machine Learning','IM560','Programming(Basic)'),(17,45,'IM1025','Machine Learning','IM560','Programming(Basic)'),(18,46,'IM1025','Machine Learning','IM560','Programming(Basic)'),(19,59,'IM1025','Machine Learning','IM560','Programming(Basic)'),(20,60,'IM1025','Machine Learning','IM560','Programming(Basic)'),(21,12,'IM1025','Machine Learning','IM560','Programming(Basic)'),(22,69,'IM561','Programming(Advanced)','IM560','Programming(Basic)'),(23,17,'IM561','Programming(Advanced)','IM560','Programming(Basic)'),(24,70,'IM561','Programming(Advanced)','IM560','Programming(Basic)'),(25,18,'IM561','Programming(Advanced)','IM560','Programming(Basic)'),(26,71,'IM561','Programming(Advanced)','IM560','Programming(Basic)'),(27,19,'IM561','Programming(Advanced)','IM560','Programming(Basic)'),(28,81,'IM4083','Practical Course of Cloud Computing','IM2062','Introduction to Internet'),(29,31,'IM4083','Practical Course of Cloud Computing','IM2062','Introduction to Internet'),(30,76,'IM4083','Practical Course of Cloud Computing','IM2062','Introduction to Internet'),(31,32,'IM2063','Practical Course of Cloud Computing','IM2062','Introduction to Internet');
/*!40000 ALTER TABLE `PrerequisiteCourse` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RequiredCourse`
--

DROP TABLE IF EXISTS `RequiredCourse`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `RequiredCourse` (
  `re_id` int NOT NULL,
  `dp_id` int NOT NULL,
  `re_required_course` varchar(45) NOT NULL,
  `re_prerequisite_year_of_required_course` int NOT NULL,
  PRIMARY KEY (`re_id`),
  KEY `requiredourse_to_degreeprogram_idx` (`dp_id`),
  CONSTRAINT `requiredourse_to_degreeprogram` FOREIGN KEY (`dp_id`) REFERENCES `DegreeProgram` (`dp_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RequiredCourse`
--

LOCK TABLES `RequiredCourse` WRITE;
/*!40000 ALTER TABLE `RequiredCourse` DISABLE KEYS */;
INSERT INTO `RequiredCourse` VALUES (1,1,'IM1023',1),(2,1,'IM560',1),(3,1,'IM1025',2),(4,1,'IM2048',2),(5,1,'IM561',3),(6,1,'IM2062',3),(7,2,'IM1023',1),(8,2,'IM560',1),(9,2,'IM2048',2),(10,2,'IM1050',3),(11,3,'IM1023',1),(12,3,'IM2056',1),(13,3,'IM1050',2),(14,3,'IM2060',3),(15,3,'IM2062',4),(16,4,'IM560',1),(17,4,'IM1023',1),(18,4,'IM2056',2),(19,4,'IM561',3),(20,4,'IM1050',3),(21,4,'IM2060',4);
/*!40000 ALTER TABLE `RequiredCourse` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Student`
--

DROP TABLE IF EXISTS `Student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Student` (
  `stu_id` int NOT NULL AUTO_INCREMENT,
  `stu_name` varchar(200) NOT NULL,
  `stu_phone` int NOT NULL,
  `stu_email` varchar(100) NOT NULL,
  `stu_grade` int NOT NULL,
  PRIMARY KEY (`stu_id`),
  UNIQUE KEY `stu_email_UNIQUE` (`stu_email`),
  UNIQUE KEY `student_id_UNIQUE` (`stu_id`),
  UNIQUE KEY `stu_phone_UNIQUE` (`stu_phone`)
) ENGINE=InnoDB AUTO_INCREMENT=110143124 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Student`
--

LOCK TABLES `Student` WRITE;
/*!40000 ALTER TABLE `Student` DISABLE KEYS */;
INSERT INTO `Student` VALUES (107123143,'Timmy Huang',912587773,'sagittis.nullam@google.com',4),(108123122,'Peter Wang',958351743,'sed.auctor@hotmail.com',3),(109123123,'Kevin Wang',921003614,'in.consequat@yahoo.com',2),(109143123,'Jeter Liu',922830125,'nullam.velit@yahoo.com',2),(110143123,'Mei',988008346,'adipiscing.enim.mi@outlook.com',1);
/*!40000 ALTER TABLE `Student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `StudentCourse`
--

DROP TABLE IF EXISTS `StudentCourse`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `StudentCourse` (
  `stu_course_id` int NOT NULL,
  `stu_id` int NOT NULL,
  `cou_id` int NOT NULL,
  `sc_selection_status` varchar(45) NOT NULL,
  `sc_pass` varchar(45) NOT NULL,
  `cardnumber` varchar(45) DEFAULT NULL,
  `sc_semester` int NOT NULL,
  PRIMARY KEY (`stu_course_id`),
  UNIQUE KEY `student_course_id_UNIQUE` (`stu_course_id`),
  KEY `studentcourse_to_student_stu_id` (`stu_id`),
  KEY `studentcourse_to_course_course_id` (`cou_id`),
  CONSTRAINT `studentcourse_to_course_course_id` FOREIGN KEY (`cou_id`) REFERENCES `Course` (`cou_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `studentcourse_to_student_stu_id` FOREIGN KEY (`stu_id`) REFERENCES `Student` (`stu_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `StudentCourse`
--

LOCK TABLES `StudentCourse` WRITE;
/*!40000 ALTER TABLE `StudentCourse` DISABLE KEYS */;
INSERT INTO `StudentCourse` VALUES (1,109123123,2,'enrolled','T','',1111),(2,109123123,6,'enrolled','T','',1111),(3,109123123,24,'enrolled','T','',1111),(4,109123123,20,'enrolled','F','50001',1121),(5,109123123,13,'enrolled','F','50006',1121),(6,109123123,51,'preliminary','F','50015',1121),(7,110143123,51,'enrolled','T','',1121),(8,110143123,20,'enrolled','T','50002',1121),(9,110143123,7,'unselected','N','',1101),(10,108123122,58,'preliminary','F','',1101),(11,107123143,41,'enrolled','T','',1121),(12,107123143,20,'enrolled','T','50003',1121);
/*!40000 ALTER TABLE `StudentCourse` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `StudentCredential`
--

DROP TABLE IF EXISTS `StudentCredential`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `StudentCredential` (
  `stu_hash_id` int NOT NULL AUTO_INCREMENT,
  `stu_id` int NOT NULL,
  `stu_salt` char(64) NOT NULL,
  `stu_hashed_pwd_string` varchar(1000) NOT NULL,
  PRIMARY KEY (`stu_hash_id`,`stu_id`),
  UNIQUE KEY `hash_id_UNIQUE` (`stu_hash_id`),
  UNIQUE KEY `hash_student_id_UNIQUE` (`stu_id`),
  UNIQUE KEY `hashed_pwd_string_UNIQUE` (`stu_hashed_pwd_string`),
  UNIQUE KEY `salt_UNIQUE` (`stu_salt`),
  CONSTRAINT `studentcredential_to_student_stu_id` FOREIGN KEY (`stu_id`) REFERENCES `Student` (`stu_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `StudentCredential`
--

LOCK TABLES `StudentCredential` WRITE;
/*!40000 ALTER TABLE `StudentCredential` DISABLE KEYS */;
INSERT INTO `StudentCredential` VALUES (1,109123123,'2434BY46U5M','BTNRNNNYRNR'),(2,110143123,'7gB%z9Svg8EW','07703ba76ae595a212c8317146fb292fb773f34314a3708a6f3e916bbf6e499c'),(3,109143123,'JJQF0j%tkx3i','1caf7cfa34bdb90fd7a332dfed5a5e0d1a153d6a164234aa98b7ba611b83abe7'),(4,108123122,'Rv$uGmL&C!%g','ea8ced964d6826e1eede67dccaea05e543e4bcf84ff06d6af8f7877413a91538'),(5,107123143,'XcZg6Be^cU2y','7a09363a667de652e1666b0810219bb7886036dca13af909cd755c80df946365');
/*!40000 ALTER TABLE `StudentCredential` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `StudentDegreeProgram`
--

DROP TABLE IF EXISTS `StudentDegreeProgram`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `StudentDegreeProgram` (
  `sdp_id` int NOT NULL,
  `stu_id` int NOT NULL,
  `sdp_degree_program` varchar(45) NOT NULL,
  PRIMARY KEY (`sdp_id`,`stu_id`),
  KEY `studentdegreeprogram_to_student_idx` (`stu_id`),
  CONSTRAINT `studentdegreeprogram_to_student` FOREIGN KEY (`stu_id`) REFERENCES `Student` (`stu_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `StudentDegreeProgram`
--

LOCK TABLES `StudentDegreeProgram` WRITE;
/*!40000 ALTER TABLE `StudentDegreeProgram` DISABLE KEYS */;
INSERT INTO `StudentDegreeProgram` VALUES (1,109123123,'1'),(2,109123123,'5'),(3,110143123,'1'),(4,110143123,'5'),(5,109143123,'2'),(6,109143123,'5'),(7,108123122,'3'),(8,108123122,'5'),(9,107123143,'4'),(10,107123143,'5');
/*!40000 ALTER TABLE `StudentDegreeProgram` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Teacher`
--

DROP TABLE IF EXISTS `Teacher`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Teacher` (
  `tea_id` int NOT NULL,
  `tea_name` varchar(200) NOT NULL,
  `tea_phone` int NOT NULL,
  `tea_email` varchar(100) NOT NULL,
  PRIMARY KEY (`tea_id`),
  UNIQUE KEY `teacher_id_UNIQUE` (`tea_id`),
  UNIQUE KEY `teacher_phone_UNIQUE` (`tea_phone`),
  UNIQUE KEY `teacher_email_UNIQUE` (`tea_email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Teacher`
--

LOCK TABLES `Teacher` WRITE;
/*!40000 ALTER TABLE `Teacher` DISABLE KEYS */;
INSERT INTO `Teacher` VALUES (1234,'Anita Ann',965265315,'dua.quis.accumsan@google.com'),(1245,'Thor Chang',970691667,'dui.quis.accumsan@google.com'),(2356,'Ota Huang',960105109,'nec.leo.morbi@protonmail.com'),(3120,'Charle Yang',961749001,'sociosqu.ad@yahoo.com'),(5620,'Pole Huang',928735721,'proin.non@protonmail.com'),(5623,'LIlly Chang',968169143,'arcu.vel.quam@hotmail.com');
/*!40000 ALTER TABLE `Teacher` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TeacherCredential`
--

DROP TABLE IF EXISTS `TeacherCredential`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `TeacherCredential` (
  `tea_hash_id` int NOT NULL,
  `tea_id` int NOT NULL,
  `tea_salt` char(64) NOT NULL,
  `tea_hashed_pwd_string` varchar(1000) NOT NULL,
  PRIMARY KEY (`tea_id`),
  UNIQUE KEY `teacher_id_UNIQUE` (`tea_hash_id`),
  UNIQUE KEY `hased_teacher_id_UNIQUE` (`tea_id`),
  UNIQUE KEY `salt_UNIQUE` (`tea_salt`),
  UNIQUE KEY `hashed_pwd_string_UNIQUE` (`tea_hashed_pwd_string`),
  CONSTRAINT `tea_hashed_teacher_id` FOREIGN KEY (`tea_id`) REFERENCES `Teacher` (`tea_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TeacherCredential`
--

LOCK TABLES `TeacherCredential` WRITE;
/*!40000 ALTER TABLE `TeacherCredential` DISABLE KEYS */;
INSERT INTO `TeacherCredential` VALUES (6,1234,'f1nd1ngn3m0','07dbb6e6832da0841dd79701200e4b179f1a94a7b3dd26f612817f3c03117434'),(5,1245,'&@^ODhk0MH&l','5ad2e13f01b6c6597301b4dd8fa5b2a055c6e4245e84f63344f6bbb5c0f3c802'),(1,2356,'aZjy*GvZt@s*','ccd108b762527fcdcdb8c5b6cad6480e9b81a5d92f29e6793d6865b274bc50dc'),(2,3120,'j8tI5!wG88PM','a5c5e74448987538a8bffda3518f59e2f3785cf460d4f882a2c563af654fe13f'),(3,5620,'n7UDOe0uspZk','1a4c96ddeda1e2bfc16abd7bd6f8a72dc416c10c824747cbe5b1f9cc20671c40'),(4,5623,'wlmM33nAD@SR','e9c59dd5748d8c0be520b37658c8da542720916cc6d7ff627ad2ba0e76237bca');
/*!40000 ALTER TABLE `TeacherCredential` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'db_110403004_3'
--
/*!50003 DROP PROCEDURE IF EXISTS `sp_GetCourseStudent` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`110403004`@`192.168.56.1` PROCEDURE `sp_GetCourseStudent`(
	IN course_id int
)
BEGIN
	select
		cou_semester semester,
        dp_id degree_program,
        cou_code course_code,
        cou_name course_name,
        stu_id student_id,
        stu_name student_name
	from
		Course
        inner join
			StudentCourse using(cou_id)
            inner join
				Student using(stu_id)
                inner join
					CourseToDegreeProgram using(cou_id)
	where
		cou_id = course_id and sc_selection_status = 'enrolled';

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_GetCourseWithSemesterAndTeacher` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`110403004`@`192.168.56.1` PROCEDURE `sp_GetCourseWithSemesterAndTeacher`(
	IN semester INT,
    IN teacher_id INT
)
BEGIN
	select
		cou_semester semester,
        tea_id teacher_id,
        cou_code course_code,
        cou_name course_name,
        dp_id degree_program
	from
		Course
        inner join
			CourseToTeacher using(cou_id)
            inner join
				CourseToDegreeProgram using(cou_id)
	 where
		 tea_id = teacher_id and cou_semester = semester;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_GetDegreeProgramCourse` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`110403004`@`192.168.56.1` PROCEDURE `sp_GetDegreeProgramCourse`(
	in degree_program_id int
)
BEGIN

	select 
		dp_name degree_program_name, 
		re_required_course course_code, 
		cou_name course_name, 
		required_or_elective 
    from
    (select distinct dp_id, dp_name, re_required_course, cou_name, 'required' as required_or_elective
    from
		DegreeProgram
		inner join 
			(select dp_id, re_required_course from RequiredCourse) front
		using(dp_id)
			left join
				(select cou_name, cou_code from Course) median
			on median.cou_code = re_required_course
	union
    select dp_id, dp_name, el_elective_course, cou_name, 'elective' as required_or_elective
    from
		DegreeProgram
		inner join 
			(select dp_id, el_elective_course from ElectiveCourse) front2
		using(dp_id)
			left join
				(select cou_name, cou_code from Course) median2
            on median2.cou_code = el_elective_course) final
	where final.dp_id = degree_program_id;
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_GetPrerequisiteCourse` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`110403004`@`192.168.56.1` PROCEDURE `sp_GetPrerequisiteCourse`(
	in course_code varchar(45)
)
BEGIN
    select  distinct
		from_course_code course_code,
        from_course course_name,
		prerequisite_code Prerequisite_Course_code,
        pc_prerequisite_course Prerequisite_Course_name
	from
		PrerequisiteCourse
	where
		from_course_code = course_code;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_GetSelectableCourses` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`110403004`@`192.168.56.1` PROCEDURE `sp_GetSelectableCourses`(
	in student_id int,
    in semester int
)
BEGIN
	select * from
    (select distinct 
		stu_id student_id, 
        cou_semester semester, 
        dp_name degree_program_name, 
        reel_code course_code, 
        cou_name course_name
	from
    (select
		stu_id,
		sdp_degree_program 
	from 
		StudentDegreeProgram 
	where stu_id = student_id) first
    
    inner join
    (select 
		dp_name,
        dp_id
	from 
		DegreeProgram) second
    on second.dp_id = first.sdp_degree_program
    
    inner join
    (select re_required_course reel_code, dp_id from RequiredCourse
    union
    select el_elective_course reel_code, dp_id from ElectiveCourse) code
    on code.dp_id = second.dp_id
    
    inner join
    (select
		cou_id,
        cou_name,
        cou_semester,
        cou_code,
        dp_id
	from
		Course c
        inner join
			CourseToDegreeProgram
		using(cou_id)
	where cou_semester = semester) courseinfo
    on courseinfo.cou_code = code.reel_code and courseinfo.dp_id = first.sdp_degree_program
    
    inner join
    (select
		from_course_code,
        prerequisite_code,
        sc_pass prerequisite_pass,
        prerequisite.cou_id
	from PrerequisiteCourse
		inner join 
			(select cou_id, cou_code from Course)prerequisite
		on prerequisite.cou_code = prerequisite_code
            inner join 
				(select sc_pass, cou_id from StudentCourse)checkpass
			on checkpass.cou_id = prerequisite.cou_id) pass
	on from_course_code = courseinfo.cou_code
    
    inner join
    (select 
		cou_id,
        sc_pass course_pass
	from StudentCourse)fail
    on fail.cou_id = courseinfo.cou_id
    
    where pass.prerequisite_pass = 'T' and fail.course_pass != 'T')total;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_GetSelectionCourse` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`110403004`@`192.168.56.1` PROCEDURE `sp_GetSelectionCourse`(
	IN student_id int,
    IN semester int
)
BEGIN
	select stu_id student_id, 
		   sc_semester semester, 
           cou_code course_code,
           cou_name course_name,
           sc_selection_status status
	from
		StudentCourse
        inner join Course using(cou_id)
	where
		stu_id = student_id and sc_semester = semester;
	
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_GetStudentCourseWithCourseCard` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`110403004`@`192.168.56.1` PROCEDURE `sp_GetStudentCourseWithCourseCard`(
	in course_id int
)
BEGIN
	select 
		sc_semester semester,
        dp_id degree_program_id,
        cou_code course_code,
        cou_name course_name,
        stu_id student_id,
		stu_name student_name,
        cc_serial_number serial_number
    from
    (select
		cc_serial_number,
        cc_cou_id,
        stu_id,
        sc_semester
	from
		CourseCard
        inner join StudentCourse
        on cc_serial_number = cardnumber
	where cc_cou_id = course_id and `used_y/n` = 'y') cardinfo
	inner join 
    
    (select stu_id, stu_name from Student)studentinfo
    using(stu_id)

    inner join
    (select
		cou_code,
        cou_name,
        cou_id
	from
		Course 
        where cou_id = course_id) courseinfo
    on cardinfo.cc_cou_id = courseinfo.cou_id
    
    inner join
    (select
		dp_id
	from CourseToDegreeProgram
    where cou_id = course_id) degreeprograminfo;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_Login` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`110403004`@`192.168.56.1` PROCEDURE `sp_Login`(
	IN student_id INT,
    IN hashedpwd varchar(200),
	OUT status_code INT
)
BEGIN
	SELECT 
        CASE
			when exists(select 1 from StudentCredential where stu_id = student_id and stu_hashed_pwd_string = hashedpwd)
			THEN '1'
			when exists(select 1 from StudentCredential where stu_id = student_id and stu_hashed_pwd_string != hashedpwd)
			THEN '2'
			when exists(select 1 from StudentCredential where stu_id != student_id and stU_hashed_pwd_string != hashedpwd)
			THEN '3'
		END
        INTO status_code;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_UpdatePwd` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`110403004`@`192.168.56.1` PROCEDURE `sp_UpdatePwd`(
	IN student_id INT,
    IN hashedPwd Varchar(200),
    IN salt char(64)
)
BEGIN
	set SQL_SAFE_UPDATES = 0;
    
    update StudentCredential
	set stu_salt = salt, stu_hashed_pwd_string = hashedPwd
	where 
		stu_id = student_id;
    
    set SQL_SAFE_UPDATES = 1;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_UpdateWithdrawCourse` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`110403004`@`192.168.56.1` PROCEDURE `sp_UpdateWithdrawCourse`(
	IN student_id INT,
    IN course_id INT
)
BEGIN
	set SQL_SAFE_UPDATES = 0;
    
    update StudentCourse
    set sc_selection_status = 'withdrawn'
    where stu_id = student_id and cou_id = course_id;
    
    set SQL_SAFE_UPDATES = 1;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-06-14 20:58:16