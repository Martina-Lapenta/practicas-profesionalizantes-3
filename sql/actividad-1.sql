CREATE DATABASE  IF NOT EXISTS `actividad-1` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `actividad-1`;
-- MySQL dump 10.13  Distrib 8.0.42, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: actividad-1
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
-- Dumping data for table `country`
--

LOCK TABLES `country` WRITE;
/*!40000 ALTER TABLE `country` DISABLE KEYS */;
INSERT INTO `country` VALUES (1,'Argentina','Buenos Aires','Spanish',2780000,46000000),(3,'France','Paris','French',551695,67848156),(4,'Germany','Berlin','German',357386,83190556),(5,'Japan','Tokyo','Japanese',377975,125360000),(6,'Canada','Ottawa','English/French',9984670,38562000),(7,'Italy','Rome','Italian',301340,58853482),(8,'Mexico','Mexico City','Spanish',1964380,126705138),(9,'India','New Delhi','Hindi/English',3287260,1428627663),(10,'Australia','Canberra','English',7692020,26495000),(11,'Uruguay','Montevideo','Spanish',176215,3518552),(12,'Uruguay','Montevideo','Spanish',176215,3518552),(13,'Chile','Santiago','Spanish',756102,19000000),(14,'Uruguay','Montevideo','Spanish',176215,3518552),(15,'Chile','Santiago','Spanish',756102,19000000),(16,'Uruguay','Montevideo','Spanish',176215,3518552),(17,'Chile','Santiago','Spanish',756102,19000000),(18,'Uruguay','Montevideo','Spanish',176215,3518552),(19,'Chile','Santiago','Spanish',756102,19000000),(20,'Uruguay','Montevideo','Spanish',176215,3518552),(21,'Chile','Santiago','Spanish',756102,19000000),(22,'Uruguay','Montevideo','Spanish',176215,3518552),(23,'Chile','Santiago','Spanish',756102,19000000);
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

-- Dump completed on 2025-07-10 22:29:26
-- Procedimientos almacenados

DROP PROCEDURE IF EXISTS country_create;
DROP PROCEDURE IF EXISTS country_get;
DROP PROCEDURE IF EXISTS country_update;
DROP PROCEDURE IF EXISTS country_delete;

DELIMITER //

CREATE PROCEDURE country_create(
  IN p_name VARCHAR(45),
  IN p_capital VARCHAR(45),
  IN p_language VARCHAR(45),
  IN p_area FLOAT,
  IN p_population INT
)
BEGIN
  INSERT INTO country (name, capital, language, area, population)
  VALUES (p_name, p_capital, p_language, p_area, p_population);
END;
//

CREATE PROCEDURE country_get(IN p_id INT)
BEGIN
  SELECT * FROM country WHERE id = p_id;
END;
//

CREATE PROCEDURE country_update(
  IN p_id INT,
  IN p_name VARCHAR(45),
  IN p_capital VARCHAR(45),
  IN p_language VARCHAR(45),
  IN p_area FLOAT,
  IN p_population INT
)
BEGIN
  UPDATE country
  SET name = p_name,
      capital = p_capital,
      language = p_language,
      area = p_area,
      population = p_population
  WHERE id = p_id;
END;
//

CREATE PROCEDURE country_delete(IN p_id INT)
BEGIN
  DELETE FROM country WHERE id = p_id;
END;
//

DELIMITER ;
