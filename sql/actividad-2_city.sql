CREATE DATABASE  IF NOT EXISTS `actividad-2` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `actividad-2`;
-- MySQL dump 10.13  Distrib 8.0.42, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: actividad-2
-- ------------------------------------------------------
-- Server version	8.2.0

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
-- Table structure for table `city`
--

DROP TABLE IF EXISTS `city`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `city` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `population` int DEFAULT NULL,
  `area` float DEFAULT NULL,
  `is_coastal` tinyint DEFAULT NULL,
  `postal_code` varchar(20) DEFAULT NULL,
  `country_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_city_country_idx` (`country_id`),
  CONSTRAINT `fk_city_country` FOREIGN KEY (`country_id`) REFERENCES `country` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `city`
--

LOCK TABLES `city` WRITE;
/*!40000 ALTER TABLE `city` DISABLE KEYS */;
INSERT INTO `city` VALUES (1,'Buenos Aires',3000000,203,1,'C1000',1),(2,'Cordoba',1400000,576,0,'X5000',1),(3,'Rio de Janeiro',6700000,1182,1,'20000',2),(4,'Sao Paulo',12300000,1521,0,'01000',2),(5,'Santiago',7000000,641,0,'8320000',3),(6,'Montevideo',1300000,200,1,'11000',4),(7,'Sydney',5300000,12368,1,'2000',5),(8,'Melbourne',5000000,9992,0,'3000',5),(9,'Buenos Aires',3050000,203,1,'C1000',1),(10,'São Paulo',12300000,1521,0,'01000-000',2),(11,'Rio de Janeiro',6748000,1182,1,'20000-000',2),(12,'Santiago',6150000,641,0,'8320000',3),(13,'Montevideo',1318000,200,1,'11000',4),(14,'Sydney',5230000,12368,1,'2000',5),(15,'Buenos Aires',3050000,203,1,'C1000',1),(16,'São Paulo',12300000,1521,0,'01000-000',2),(17,'Rio de Janeiro',6748000,1182,1,'20000-000',2),(18,'Santiago',6150000,641,0,'8320000',3),(19,'Montevideo',1318000,200,1,'11000',4),(20,'Sydney',5230000,12368,1,'2000',5),(21,'Buenos Aires',3000000,203,1,'C1000',1),(22,'Rio de Janeiro',6700000,1182,1,'20000',2),(23,'Santiago',6000000,641,0,'8320000',3),(24,'Barcelona',5500000,101.9,1,'08001',1);
/*!40000 ALTER TABLE `city` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-07-10 23:31:24
