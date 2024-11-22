CREATE DATABASE  IF NOT EXISTS `dbbuses` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `dbbuses`;
-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: localhost    Database: dbbuses
-- ------------------------------------------------------
-- Server version	9.0.1

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
-- Table structure for table `bus`
--

DROP TABLE IF EXISTS `bus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bus` (
  `idbus` bigint NOT NULL AUTO_INCREMENT,
  `activo` bit(1) NOT NULL,
  `caracteristicas` varchar(255) DEFAULT NULL,
  `fecha_creacion` datetime(6) DEFAULT NULL,
  `nro_bus` int DEFAULT NULL,
  `placa` varchar(255) DEFAULT NULL,
  `marca` int DEFAULT NULL,
  PRIMARY KEY (`idbus`),
  KEY `FK4jjnvvjmf8bxn3fpugnr2q68t` (`marca`),
  CONSTRAINT `FK4jjnvvjmf8bxn3fpugnr2q68t` FOREIGN KEY (`marca`) REFERENCES `marca` (`idmarca`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bus`
--

LOCK TABLES `bus` WRITE;
/*!40000 ALTER TABLE `bus` DISABLE KEYS */;
INSERT INTO `bus` VALUES (1,_binary '','Pantalla LED, accesibilidad para sillas de ruedas',NULL,430,'GKL-414',1),(2,_binary '','Aire acondicionado, Wi-Fi, USB',NULL,513,'GKL-415',2),(3,_binary '','Pantalla LCD, acceso para discapacitados, espacio amplio',NULL,951,'KSQ-938',3),(4,_binary '','Asientos reclinables, cámaras de seguridad',NULL,852,'ARC-851',4),(5,_binary '\0','Conexión para carga de móviles, aire acondicionado',NULL,21,'AGF-461',5),(6,_binary '','Pantalla de información, accesibilidad para sillas de ruedas',NULL,536,'SGT-947',1),(7,_binary '','Wi-Fi, aire acondicionado, asientos ergonómicos',NULL,942,'YPX-836',2),(8,_binary '\0','Camaras de seguridad, Wi-Fi',NULL,152,'CQB-673',3),(9,_binary '','Pantalla LED, conexión para carga de móviles',NULL,592,'EVZ-354',4),(10,_binary '','Acceso para discapacitados, aire acondicionado',NULL,841,'QDQ-847',5);
/*!40000 ALTER TABLE `bus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `marca`
--

DROP TABLE IF EXISTS `marca`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `marca` (
  `idmarca` int NOT NULL AUTO_INCREMENT,
  `nommarca` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`idmarca`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `marca`
--

LOCK TABLES `marca` WRITE;
/*!40000 ALTER TABLE `marca` DISABLE KEYS */;
INSERT INTO `marca` VALUES (1,'Volvo'),(2,'Scania'),(3,'Fiat'),(4,'Mercedes-Benz'),(5,'Kia');
/*!40000 ALTER TABLE `marca` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'dbbuses'
--

--
-- Dumping routines for database 'dbbuses'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-11-22 14:11:23
