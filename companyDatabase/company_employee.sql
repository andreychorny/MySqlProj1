-- MySQL dump 10.13  Distrib 8.0.15, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: company
-- ------------------------------------------------------
-- Server version	8.0.15

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
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `employee` (
  `emp_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `first_name` varchar(25) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `birth_date` date NOT NULL,
  `gender` char(1) DEFAULT NULL,
  `email` varchar(40) DEFAULT NULL,
  `manager_id` int(10) unsigned DEFAULT NULL,
  `address_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`emp_id`),
  UNIQUE KEY `email` (`email`),
  KEY `manager_id` (`manager_id`),
  KEY `address_id` (`address_id`),
  CONSTRAINT `employee_ibfk_1` FOREIGN KEY (`manager_id`) REFERENCES `employee` (`emp_id`),
  CONSTRAINT `employee_ibfk_2` FOREIGN KEY (`address_id`) REFERENCES `address` (`address_id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES (1,'John','Smith','1980-08-08','M','JSMITH@COMPEDU.EU',NULL,1),(2,'Adam','Parker','1985-05-24','M','APARKER@COMPEDU.EU',1,2),(3,'Filiph','Miller','1984-04-12','M','FMILLER@COMPEDU.EU',1,3),(4,'Henry','Bell','1976-05-23','M','HBELL@COMPEDU.EU',2,4),(5,'James','Collins','1986-00-14','M','JCOLLINS@COMPEDU.EU',2,5),(6,'Adrien','Powell','1988-06-11','M','APOWELL@COMPEDU.EU',3,6),(7,'Albert','Foster','1980-04-08','M','AFOSTER@COMPEDU.EU',1,7),(8,'Alice','Adams','1984-07-25','F','AADAMS@COMPEDU.EU',2,8),(9,'Eva','Owen','1979-02-16','F','EOWEN@COMPEDU.EU',3,9),(10,'Hannah','Mills','1987-04-30','F','HMILLS@COMPEDU.EU',3,10),(11,'Justina','Stevens','1980-09-23','F','JSTEVENS@COMPEDU.EU',2,11),(12,'Laura','Fisher','1982-03-11','F','LFISHER@COMPEDU.EU',4,12),(13,'Monica','Shaw','1980-04-23','F','MSHAW@COMPEDU.EU',5,13),(14,'Richard','Cook','1899-06-11','M','RCOOK@COMPEDU.EU',4,14),(15,'Thomas','Smith','1980-12-14','M','TSMITH@COMPEDU.EU',2,15),(16,'Victor','Palmer','1980-11-18','M','VPALMER@COMPEDU.EU',1,16),(17,'Simon','Mills','1983-09-28','M','SMILLS@COMPEDU.EU',6,17),(18,'John','Tylor','1977-05-28','M','JTYLOR@COMPEDU.EU',3,18);
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-03-27  1:23:31
