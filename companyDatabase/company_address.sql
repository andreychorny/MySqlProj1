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
-- Table structure for table `address`
--

DROP TABLE IF EXISTS `address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `address` (
  `address_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `street` varchar(40) NOT NULL,
  `city` varchar(50) NOT NULL,
  `postal_code` varchar(10) NOT NULL,
  `country_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`address_id`),
  KEY `country_id` (`country_id`),
  CONSTRAINT `address_ibfk_1` FOREIGN KEY (`country_id`) REFERENCES `country` (`country_id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address`
--

LOCK TABLES `address` WRITE;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
INSERT INTO `address` VALUES (1,'22 Banacha','Lodz','90-238',1),(2,'11 Nowa','Krakow','60-438',1),(3,'14 Zieona','Warsaw','00-983',1),(4,'23 Granitowa','Lodz','90-922',1),(5,'145 Piotrkowska','Lodz','90-289',1),(6,'90 Targowa','Warsaw','00-987',1),(7,'56 Kwaitowa','Lodz','90-454',1),(8,'54 Bednarska','Krakow','60-238',1),(9,'76 Mickiewicza','Warsaw','00-424',1),(10,'53 Rojna','Lodz','90-253',1),(11,'89 Sarnia','Lodz','90-532',1),(12,'33 Zachodnia','Warsaw','00-231',1),(13,'28 Polna','Lodz','90-532',1),(14,'23 Wschodnia','Krakow','60-124',1),(15,'16 Senatorska','Warsaw','00-342',1),(16,'63 Akacjowa','Lodz','90-922',1),(17,'22 Bema','Lodz','90-482',1),(18,'10 Jaracza','Warsaw','00-225',1),(19,'45 Narutowicza','Lodz','90-238',1),(20,'14 Kresowa','Krakow','60-438',1),(21,'53 Banacha','Warsaw','00-233',1);
/*!40000 ALTER TABLE `address` ENABLE KEYS */;
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
