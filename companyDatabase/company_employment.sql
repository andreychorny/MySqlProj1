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
-- Table structure for table `employment`
--

DROP TABLE IF EXISTS `employment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `employment` (
  `e_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `emp_id` int(10) unsigned NOT NULL,
  `dept_id` int(10) unsigned NOT NULL,
  `p_id` int(10) unsigned NOT NULL,
  `salary` decimal(12,2) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date DEFAULT NULL,
  PRIMARY KEY (`e_id`),
  KEY `dept_id` (`dept_id`),
  KEY `emp_id` (`emp_id`),
  KEY `p_id` (`p_id`),
  CONSTRAINT `employment_ibfk_1` FOREIGN KEY (`dept_id`) REFERENCES `department` (`dept_id`),
  CONSTRAINT `employment_ibfk_2` FOREIGN KEY (`emp_id`) REFERENCES `employee` (`emp_id`),
  CONSTRAINT `employment_ibfk_3` FOREIGN KEY (`p_id`) REFERENCES `position` (`p_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employment`
--

LOCK TABLES `employment` WRITE;
/*!40000 ALTER TABLE `employment` DISABLE KEYS */;
INSERT INTO `employment` VALUES (1,1,1,1,19000.00,'2019-03-27',NULL),(2,2,1,2,12000.00,'2019-03-27',NULL),(3,3,1,3,11000.00,'2019-03-27',NULL),(4,4,1,2,10000.00,'2019-03-27',NULL),(5,5,2,3,9500.00,'2019-03-27',NULL),(6,6,2,2,9000.00,'2019-03-27',NULL),(7,7,1,3,9000.00,'2019-03-27',NULL),(8,8,1,2,8000.00,'2019-03-27','2012-05-15'),(9,9,2,3,7000.00,'2019-03-27',NULL),(10,10,2,4,7000.00,'2019-03-27',NULL),(11,11,3,4,6000.00,'2019-03-27',NULL),(12,12,3,3,5000.00,'2019-03-27','2013-10-15'),(13,13,3,3,5000.00,'2019-03-27',NULL),(14,14,3,2,6000.00,'2019-03-27',NULL),(15,15,3,1,7000.00,'2019-03-27',NULL),(16,16,1,4,4000.00,'2019-03-27',NULL),(17,16,1,4,6000.00,'2019-03-27',NULL),(18,16,2,3,5000.00,'2019-03-27',NULL),(19,8,2,2,9000.00,'2019-03-27',NULL),(20,12,2,2,6000.00,'2019-03-27',NULL);
/*!40000 ALTER TABLE `employment` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-03-27  1:23:32
