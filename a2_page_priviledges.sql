-- MySQL dump 10.13  Distrib 8.0.21, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: a2
-- ------------------------------------------------------
-- Server version	8.0.21

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
-- Table structure for table `page_priviledges`
--

DROP TABLE IF EXISTS `page_priviledges`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `page_priviledges` (
  `id` int NOT NULL AUTO_INCREMENT,
  `priviledge` varchar(45) DEFAULT NULL,
  `page_id` int DEFAULT NULL,
  `developer_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `priviledge_enum_idx` (`priviledge`),
  KEY `developer_priviledge_idx` (`developer_id`),
  KEY `page_priviledge_idx` (`page_id`),
  CONSTRAINT `developer_page_priviledge` FOREIGN KEY (`developer_id`) REFERENCES `developers` (`id`),
  CONSTRAINT `page_priviledge` FOREIGN KEY (`page_id`) REFERENCES `pages` (`id`) ON DELETE CASCADE,
  CONSTRAINT `page_priviledge_enum` FOREIGN KEY (`priviledge`) REFERENCES `priviledges` (`priviledge`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=105 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `page_priviledges`
--

LOCK TABLES `page_priviledges` WRITE;
/*!40000 ALTER TABLE `page_priviledges` DISABLE KEYS */;
INSERT INTO `page_priviledges` VALUES (81,'update',234,23),(82,'read',234,23),(83,'read',234,34),(84,'create',234,12),(85,'update',234,12),(86,'read',234,12),(93,'update',456,12),(94,'read',456,12),(95,'read',456,23),(96,'create',456,34),(97,'update',456,34),(98,'read',456,34);
/*!40000 ALTER TABLE `page_priviledges` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-10-29  1:43:50
