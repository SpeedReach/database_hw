-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: hw1
-- ------------------------------------------------------
-- Server version	8.0.36

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
-- Table structure for table `department`
--

DROP TABLE IF EXISTS `department`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `department` (
  `DNUMBER` int NOT NULL,
  `DNAME` varchar(30) NOT NULL,
  `MGRSSN` char(9) DEFAULT NULL,
  `MGRSTARTDATE` date DEFAULT NULL,
  PRIMARY KEY (`DNUMBER`),
  KEY `MGRSSN` (`MGRSSN`),
  CONSTRAINT `department_ibfk_1` FOREIGN KEY (`MGRSSN`) REFERENCES `employee` (`SSN`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `department`
--

LOCK TABLES `department` WRITE;
/*!40000 ALTER TABLE `department` DISABLE KEYS */;
INSERT INTO `department` VALUES (1,'Headquarters','888665555','1981-06-19'),(4,'Administration','987654321','1995-01-01'),(5,'Research','888665555','1988-05-22');
/*!40000 ALTER TABLE `department` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dependent`
--

DROP TABLE IF EXISTS `dependent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dependent` (
  `ESSN` char(9) NOT NULL,
  `DEPENDENT_NAME` varchar(15) NOT NULL,
  `SEX` char(1) NOT NULL,
  `BDATE` date NOT NULL,
  `RELATIONSHIP` varchar(8) NOT NULL,
  PRIMARY KEY (`ESSN`,`DEPENDENT_NAME`),
  CONSTRAINT `dependent_ibfk_1` FOREIGN KEY (`ESSN`) REFERENCES `employee` (`SSN`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dependent`
--

LOCK TABLES `dependent` WRITE;
/*!40000 ALTER TABLE `dependent` DISABLE KEYS */;
INSERT INTO `dependent` VALUES ('123456789','Alice','F','1988-12-30','Daughter'),('123456789','Elizabeth','F','1967-05-05','Spouse'),('123456789','Michael','M','1988-01-04','Son'),('333445555','Alice','F','1986-04-05','Daughter'),('333445555','Joy','F','1958-05-03','Spouse'),('333445555','Theodore','M','1983-10-25','Son'),('987654321','Abner','M','1942-02-28','Spouse');
/*!40000 ALTER TABLE `dependent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dept_locations`
--

DROP TABLE IF EXISTS `dept_locations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dept_locations` (
  `DNUMBER` int NOT NULL,
  `DLOCATION` varchar(30) NOT NULL,
  PRIMARY KEY (`DNUMBER`,`DLOCATION`),
  CONSTRAINT `dept_locations_ibfk_1` FOREIGN KEY (`DNUMBER`) REFERENCES `department` (`DNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dept_locations`
--

LOCK TABLES `dept_locations` WRITE;
/*!40000 ALTER TABLE `dept_locations` DISABLE KEYS */;
INSERT INTO `dept_locations` VALUES (1,'Houston'),(4,'Stafford'),(5,'Bellaire'),(5,'Houston'),(5,'Sugarland');
/*!40000 ALTER TABLE `dept_locations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee` (
  `SSN` char(9) NOT NULL,
  `FNAME` varchar(15) NOT NULL,
  `MINIT` char(1) NOT NULL,
  `LNAME` varchar(15) NOT NULL,
  `BDATE` date NOT NULL,
  `ADDRESS` varchar(30) NOT NULL,
  `SEX` char(1) NOT NULL,
  `SALARY` decimal(10,2) NOT NULL,
  `SUPERSSN` char(9) DEFAULT NULL,
  `DNO` int NOT NULL,
  PRIMARY KEY (`SSN`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES ('123456789','John','B','Smith','1965-01-09','731-Fondren-Houston-TX','M',30000.00,'333445555',5),('333445555','Franklin','T','Wong','1955-12-08','638-Voss-Houston-TX','M',40000.00,'888665555',5),('453453453','Joyce','A','English','1972-07-31','5631-Rice-Houston-TX','F',25000.00,'333445555',5),('666884444','Ramesh','K','Narayan','1962-09-15','975-Fire-Oak-Humble-TX','M',38000.00,'333445555',5),('888665555','James','E','Borg','1937-11-10','450-Stone-Houston-TX','M',55000.00,NULL,1),('987654321','Jennifer','S','Wallace','1941-06-20','291-Berry-Bellaire-TX','F',43000.00,'888665555',4),('987987987','Ahmad','V','Jabbar','1969-03-29','980-Dallas-Houston-TX','M',25000.00,'987654321',4),('999887777','Alicia','J','Zelaya','1968-01-19','3321-Castle-Spring-TX','F',25000.00,'987654321',4);
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project`
--

DROP TABLE IF EXISTS `project`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `project` (
  `PNUMBER` int NOT NULL,
  `PNAME` varchar(30) NOT NULL,
  `PLOCATION` varchar(30) NOT NULL,
  `DNUM` int NOT NULL,
  PRIMARY KEY (`PNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project`
--

LOCK TABLES `project` WRITE;
/*!40000 ALTER TABLE `project` DISABLE KEYS */;
INSERT INTO `project` VALUES (1,'ProductX','Bellaire',5),(2,'ProductY','Sugarland',5),(3,'ProductZ','Houston',5),(10,'Computerization','Stafford',4),(20,'Reorganization','Houston',1),(30,'Newbenefits','Stafford',4);
/*!40000 ALTER TABLE `project` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `works_on`
--

DROP TABLE IF EXISTS `works_on`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `works_on` (
  `ESSN` char(9) NOT NULL,
  `PNO` int NOT NULL,
  `HOURS` decimal(3,1) DEFAULT NULL,
  PRIMARY KEY (`ESSN`,`PNO`),
  KEY `PNO` (`PNO`),
  CONSTRAINT `works_on_ibfk_1` FOREIGN KEY (`ESSN`) REFERENCES `employee` (`SSN`),
  CONSTRAINT `works_on_ibfk_2` FOREIGN KEY (`PNO`) REFERENCES `project` (`PNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `works_on`
--

LOCK TABLES `works_on` WRITE;
/*!40000 ALTER TABLE `works_on` DISABLE KEYS */;
INSERT INTO `works_on` VALUES ('123456789',1,32.5),('123456789',2,7.5),('333445555',2,10.0),('333445555',3,10.0),('333445555',10,10.0),('333445555',20,10.0),('453453453',1,20.0),('453453453',2,20.0),('666884444',3,40.0),('888665555',20,NULL),('987654321',20,15.0),('987654321',30,20.0),('987987987',10,35.0),('987987987',30,5.0),('999887777',10,10.0),('999887777',30,30.0);
/*!40000 ALTER TABLE `works_on` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-03-24 17:25:48
