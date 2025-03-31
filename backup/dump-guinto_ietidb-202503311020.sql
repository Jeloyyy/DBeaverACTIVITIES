-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: localhost    Database: guinto_ietidb
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.32-MariaDB

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
-- Table structure for table `clubevents`
--

DROP TABLE IF EXISTS `clubevents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clubevents` (
  `ClubID` int(11) NOT NULL,
  `EventID` int(11) NOT NULL,
  PRIMARY KEY (`EventID`,`ClubID`),
  KEY `ClubID` (`ClubID`),
  CONSTRAINT `clubevents_ibfk_1` FOREIGN KEY (`ClubID`) REFERENCES `clubs` (`ClubID`),
  CONSTRAINT `clubevents_ibfk_2` FOREIGN KEY (`EventID`) REFERENCES `events` (`EventID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clubevents`
--

LOCK TABLES `clubevents` WRITE;
/*!40000 ALTER TABLE `clubevents` DISABLE KEYS */;
/*!40000 ALTER TABLE `clubevents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clubs`
--

DROP TABLE IF EXISTS `clubs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clubs` (
  `ClubID` int(11) NOT NULL,
  `ClubName` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ClubID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clubs`
--

LOCK TABLES `clubs` WRITE;
/*!40000 ALTER TABLE `clubs` DISABLE KEYS */;
/*!40000 ALTER TABLE `clubs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `courses`
--

DROP TABLE IF EXISTS `courses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `courses` (
  `CourseID` int(11) NOT NULL AUTO_INCREMENT,
  `CourseName` varchar(100) DEFAULT NULL,
  `InstructorID` int(11) DEFAULT NULL,
  PRIMARY KEY (`CourseID`),
  KEY `InstructorID` (`InstructorID`),
  CONSTRAINT `courses_ibfk_1` FOREIGN KEY (`InstructorID`) REFERENCES `instructors` (`InstructorID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `courses`
--

LOCK TABLES `courses` WRITE;
/*!40000 ALTER TABLE `courses` DISABLE KEYS */;
/*!40000 ALTER TABLE `courses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `events`
--

DROP TABLE IF EXISTS `events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `events` (
  `EventID` int(11) NOT NULL,
  `EventName` varchar(100) DEFAULT NULL,
  `EventDate` date DEFAULT NULL,
  PRIMARY KEY (`EventID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `events`
--

LOCK TABLES `events` WRITE;
/*!40000 ALTER TABLE `events` DISABLE KEYS */;
/*!40000 ALTER TABLE `events` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hobbies`
--

DROP TABLE IF EXISTS `hobbies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hobbies` (
  `HobbiesID` int(11) NOT NULL AUTO_INCREMENT,
  `Hobbies` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`HobbiesID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hobbies`
--

LOCK TABLES `hobbies` WRITE;
/*!40000 ALTER TABLE `hobbies` DISABLE KEYS */;
/*!40000 ALTER TABLE `hobbies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `instructors`
--

DROP TABLE IF EXISTS `instructors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `instructors` (
  `InstructorID` int(11) NOT NULL,
  `InstructorName` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`InstructorID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `instructors`
--

LOCK TABLES `instructors` WRITE;
/*!40000 ALTER TABLE `instructors` DISABLE KEYS */;
/*!40000 ALTER TABLE `instructors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `languages`
--

DROP TABLE IF EXISTS `languages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `languages` (
  `LanguageID` int(11) NOT NULL AUTO_INCREMENT,
  `Languages` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`LanguageID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `languages`
--

LOCK TABLES `languages` WRITE;
/*!40000 ALTER TABLE `languages` DISABLE KEYS */;
/*!40000 ALTER TABLE `languages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phonenumbers`
--

DROP TABLE IF EXISTS `phonenumbers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `phonenumbers` (
  `PhoneID` int(11) NOT NULL AUTO_INCREMENT,
  `PhoneNumber` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`PhoneID`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phonenumbers`
--

LOCK TABLES `phonenumbers` WRITE;
/*!40000 ALTER TABLE `phonenumbers` DISABLE KEYS */;
INSERT INTO `phonenumbers` VALUES (1,'09456789012'),(2,'09567890123'),(3,'09234567891'),(4,'09678901234'),(5,'09789012345'),(6,'09111222334'),(7,'09890123456'),(8,'09901234567'),(9,'09345678902'),(10,'09112345678'),(11,'09223456789'),(12,'09567890124'),(13,'09334567890'),(14,'09445678901'),(15,'09678901235'),(16,'09556789012');
/*!40000 ALTER TABLE `phonenumbers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profiles`
--

DROP TABLE IF EXISTS `profiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `profiles` (
  `StudentID` int(11) DEFAULT NULL,
  `ProfileImage` varchar(100) DEFAULT NULL,
  `Address` varchar(255) DEFAULT NULL,
  `Birtdate` date DEFAULT NULL,
  `Bio` varchar(100) DEFAULT NULL,
  `ProfileLinks` varchar(255) DEFAULT NULL,
  KEY `StudentID` (`StudentID`),
  CONSTRAINT `profiles_ibfk_1` FOREIGN KEY (`StudentID`) REFERENCES `students` (`StudentID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profiles`
--

LOCK TABLES `profiles` WRITE;
/*!40000 ALTER TABLE `profiles` DISABLE KEYS */;
/*!40000 ALTER TABLE `profiles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `skills`
--

DROP TABLE IF EXISTS `skills`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `skills` (
  `SKillID` int(11) NOT NULL AUTO_INCREMENT,
  `Skills` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`SKillID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `skills`
--

LOCK TABLES `skills` WRITE;
/*!40000 ALTER TABLE `skills` DISABLE KEYS */;
/*!40000 ALTER TABLE `skills` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `studentclubs`
--

DROP TABLE IF EXISTS `studentclubs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `studentclubs` (
  `StudentID` int(11) NOT NULL,
  `ClubID` int(11) NOT NULL,
  PRIMARY KEY (`StudentID`,`ClubID`),
  KEY `ClubID` (`ClubID`),
  CONSTRAINT `studentclubs_ibfk_1` FOREIGN KEY (`StudentID`) REFERENCES `students` (`StudentID`),
  CONSTRAINT `studentclubs_ibfk_2` FOREIGN KEY (`ClubID`) REFERENCES `clubs` (`ClubID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `studentclubs`
--

LOCK TABLES `studentclubs` WRITE;
/*!40000 ALTER TABLE `studentclubs` DISABLE KEYS */;
/*!40000 ALTER TABLE `studentclubs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `studentcourses`
--

DROP TABLE IF EXISTS `studentcourses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `studentcourses` (
  `StudentID` int(11) NOT NULL,
  `CourseID` int(11) NOT NULL,
  PRIMARY KEY (`StudentID`,`CourseID`),
  KEY `CourseID` (`CourseID`),
  CONSTRAINT `studentcourses_ibfk_1` FOREIGN KEY (`StudentID`) REFERENCES `students` (`StudentID`),
  CONSTRAINT `studentcourses_ibfk_2` FOREIGN KEY (`CourseID`) REFERENCES `courses` (`CourseID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `studentcourses`
--

LOCK TABLES `studentcourses` WRITE;
/*!40000 ALTER TABLE `studentcourses` DISABLE KEYS */;
/*!40000 ALTER TABLE `studentcourses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `studenthobbies`
--

DROP TABLE IF EXISTS `studenthobbies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `studenthobbies` (
  `StudentID` int(11) NOT NULL,
  `HobbiesID` int(11) NOT NULL,
  PRIMARY KEY (`StudentID`,`HobbiesID`),
  KEY `HobbiesID` (`HobbiesID`),
  CONSTRAINT `studenthobbies_ibfk_1` FOREIGN KEY (`StudentID`) REFERENCES `students` (`StudentID`),
  CONSTRAINT `studenthobbies_ibfk_2` FOREIGN KEY (`HobbiesID`) REFERENCES `hobbies` (`HobbiesID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `studenthobbies`
--

LOCK TABLES `studenthobbies` WRITE;
/*!40000 ALTER TABLE `studenthobbies` DISABLE KEYS */;
/*!40000 ALTER TABLE `studenthobbies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `studentlanguages`
--

DROP TABLE IF EXISTS `studentlanguages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `studentlanguages` (
  `StudentID` int(11) NOT NULL,
  `LanguageID` int(11) NOT NULL,
  PRIMARY KEY (`StudentID`,`LanguageID`),
  KEY `LanguageID` (`LanguageID`),
  CONSTRAINT `studentlanguages_ibfk_1` FOREIGN KEY (`StudentID`) REFERENCES `students` (`StudentID`),
  CONSTRAINT `studentlanguages_ibfk_2` FOREIGN KEY (`LanguageID`) REFERENCES `languages` (`LanguageID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `studentlanguages`
--

LOCK TABLES `studentlanguages` WRITE;
/*!40000 ALTER TABLE `studentlanguages` DISABLE KEYS */;
/*!40000 ALTER TABLE `studentlanguages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `studentphonenumbers`
--

DROP TABLE IF EXISTS `studentphonenumbers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `studentphonenumbers` (
  `StudentID` int(11) NOT NULL,
  `PhoneID` int(11) NOT NULL,
  PRIMARY KEY (`StudentID`,`PhoneID`),
  KEY `PhoneID` (`PhoneID`),
  CONSTRAINT `studentphonenumbers_ibfk_1` FOREIGN KEY (`StudentID`) REFERENCES `students` (`StudentID`),
  CONSTRAINT `studentphonenumbers_ibfk_2` FOREIGN KEY (`PhoneID`) REFERENCES `phonenumbers` (`PhoneID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `studentphonenumbers`
--

LOCK TABLES `studentphonenumbers` WRITE;
/*!40000 ALTER TABLE `studentphonenumbers` DISABLE KEYS */;
/*!40000 ALTER TABLE `studentphonenumbers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `students`
--

DROP TABLE IF EXISTS `students`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `students` (
  `StudentID` int(11) NOT NULL AUTO_INCREMENT,
  `Fullname` varchar(100) DEFAULT NULL,
  `Email` varchar(100) DEFAULT NULL,
  `Username` varchar(50) DEFAULT NULL,
  `Password` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`StudentID`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `students`
--

LOCK TABLES `students` WRITE;
/*!40000 ALTER TABLE `students` DISABLE KEYS */;
INSERT INTO `students` VALUES (22,'Jake Angelo Guinto','jakeangelo10701@gmail.com','JNK777','$2b$10$CAtX4BnzEzGpYwxSMLLBqumkmkmgR15VuVaO1HzFUUuVIZAPFnOqS'),(23,'Justin Garcia','Justin@gmail.com','JustinG','$2b$10$LIPQkuxQSdeUhco/7QzXGuurnFdQJN.QwmTR9S0gRt5jVXc1A/PPG');
/*!40000 ALTER TABLE `students` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `studentskills`
--

DROP TABLE IF EXISTS `studentskills`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `studentskills` (
  `StudentID` int(11) NOT NULL,
  `SkillID` int(11) NOT NULL,
  PRIMARY KEY (`StudentID`,`SkillID`),
  KEY `SkillID` (`SkillID`),
  CONSTRAINT `studentskills_ibfk_1` FOREIGN KEY (`StudentID`) REFERENCES `students` (`StudentID`),
  CONSTRAINT `studentskills_ibfk_2` FOREIGN KEY (`SkillID`) REFERENCES `skills` (`SKillID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `studentskills`
--

LOCK TABLES `studentskills` WRITE;
/*!40000 ALTER TABLE `studentskills` DISABLE KEYS */;
/*!40000 ALTER TABLE `studentskills` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'guinto_ietidb'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-03-31 10:20:29
