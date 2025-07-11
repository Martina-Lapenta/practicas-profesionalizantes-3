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
-- Table structure for table `country`
--

DROP TABLE IF EXISTS `country`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `country` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `capital` varchar(45) DEFAULT NULL,
  `language` varchar(45) DEFAULT NULL,
  `area` float DEFAULT NULL,
  `population` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `country`
--

LOCK TABLES `country` WRITE;
/*!40000 ALTER TABLE `country` DISABLE KEYS */;
INSERT INTO `country` VALUES (1,'Argentina','Buenos Aires','Spanish',2780000,46000000),(2,'Brazil','Brasília','Portuguese',8515770,213993437),(3,'Chile','Santiago','Spanish',756102,19000000),(4,'Uruguay','Montevideo','Spanish',176215,3518552),(5,'Australia','Canberra','English',7692020,26495000),(6,'Argentina','Buenos Aires','Spanish',2780000,46000000),(7,'Brazil','Brasília','Portuguese',8515770,213993437),(8,'Chile','Santiago','Spanish',756102,19000000),(9,'Uruguay','Montevideo','Spanish',176215,3518552),(10,'Australia','Canberra','English',7692020,26495000),(11,'Argentina','Buenos Aires','Spanish',2780000,46000000),(12,'Brazil','Brasília','Portuguese',8515770,213993437),(13,'Chile','Santiago','Spanish',756102,19000000),(14,'Uruguay','Montevideo','Spanish',176215,3518552),(15,'Australia','Canberra','English',7692020,26495000),(16,'Argentina','Buenos Aires','Spanish',2780000,46000000),(17,'Brazil','Brasília','Portuguese',8515770,213993437),(18,'Chile','Santiago','Spanish',756102,19000000),(19,'Uruguay','Montevideo','Spanish',176215,3518552),(20,'Australia','Canberra','English',7692020,26495000),(21,'Argentina','Buenos Aires','Spanish',2780000,46000000),(22,'Brazil','Brasília','Portuguese',8516000,213000000),(23,'Chile','Santiago','Spanish',756000,19000000),(24,'España','Madrid','Español',505990,47000000);
/*!40000 ALTER TABLE `country` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-07-10 23:31:25
