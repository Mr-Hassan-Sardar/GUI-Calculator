-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: CalculatorDB
-- ------------------------------------------------------
-- Server version	8.0.36

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
-- Table structure for table `addition_table`
--

DROP TABLE IF EXISTS `addition_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `addition_table` (
  `id` int NOT NULL AUTO_INCREMENT,
  `Operand1` double NOT NULL,
  `Operand2` double NOT NULL,
  `Result` double NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `addition_table`
--

LOCK TABLES `addition_table` WRITE;
/*!40000 ALTER TABLE `addition_table` DISABLE KEYS */;
INSERT INTO `addition_table` VALUES (1,25,6,31),(2,2,2,4),(3,6,6,12);
/*!40000 ALTER TABLE `addition_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `division_table`
--

DROP TABLE IF EXISTS `division_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `division_table` (
  `id` int NOT NULL AUTO_INCREMENT,
  `Operand1` double NOT NULL,
  `Operand2` double NOT NULL,
  `Result` double NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `division_table`
--

LOCK TABLES `division_table` WRITE;
/*!40000 ALTER TABLE `division_table` DISABLE KEYS */;
INSERT INTO `division_table` VALUES (1,26,2,13),(2,6,2,3);
/*!40000 ALTER TABLE `division_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `multiplication_table`
--

DROP TABLE IF EXISTS `multiplication_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `multiplication_table` (
  `id` int NOT NULL AUTO_INCREMENT,
  `Operand1` double NOT NULL,
  `Operand2` double NOT NULL,
  `Result` double NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `multiplication_table`
--

LOCK TABLES `multiplication_table` WRITE;
/*!40000 ALTER TABLE `multiplication_table` DISABLE KEYS */;
INSERT INTO `multiplication_table` VALUES (1,7,7,49);
/*!40000 ALTER TABLE `multiplication_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `square_table`
--

DROP TABLE IF EXISTS `square_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `square_table` (
  `id` int NOT NULL AUTO_INCREMENT,
  `Operand` double NOT NULL,
  `Result` double NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `square_table`
--

LOCK TABLES `square_table` WRITE;
/*!40000 ALTER TABLE `square_table` DISABLE KEYS */;
INSERT INTO `square_table` VALUES (1,7,49);
/*!40000 ALTER TABLE `square_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `squareroot_table`
--

DROP TABLE IF EXISTS `squareroot_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `squareroot_table` (
  `id` int NOT NULL AUTO_INCREMENT,
  `Operand` double NOT NULL,
  `Result` double NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `squareroot_table`
--

LOCK TABLES `squareroot_table` WRITE;
/*!40000 ALTER TABLE `squareroot_table` DISABLE KEYS */;
INSERT INTO `squareroot_table` VALUES (1,49,7),(2,49,7);
/*!40000 ALTER TABLE `squareroot_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subtraction_table`
--

DROP TABLE IF EXISTS `subtraction_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `subtraction_table` (
  `id` int NOT NULL AUTO_INCREMENT,
  `Operand1` double NOT NULL,
  `Operand2` double NOT NULL,
  `Result` double NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subtraction_table`
--

LOCK TABLES `subtraction_table` WRITE;
/*!40000 ALTER TABLE `subtraction_table` DISABLE KEYS */;
INSERT INTO `subtraction_table` VALUES (1,31,5,26),(2,12,5,7);
/*!40000 ALTER TABLE `subtraction_table` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-03-31 16:08:59
