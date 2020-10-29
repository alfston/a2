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
-- Table structure for table `website_priviledges`
--

DROP TABLE IF EXISTS `website_priviledges`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `website_priviledges` (
  `id` int NOT NULL AUTO_INCREMENT,
  `priviledge` varchar(45) DEFAULT NULL,
  `website_id` int DEFAULT NULL,
  `developer_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `priviledge_enum_idx` (`priviledge`),
  KEY `developer_priviledge_idx` (`developer_id`),
  KEY `website_priviledge_idx` (`website_id`),
  CONSTRAINT `developer_priviledge` FOREIGN KEY (`developer_id`) REFERENCES `developers` (`id`),
  CONSTRAINT `priviledge_enum` FOREIGN KEY (`priviledge`) REFERENCES `priviledges` (`priviledge`) ON UPDATE CASCADE,
  CONSTRAINT `website_priviledge` FOREIGN KEY (`website_id`) REFERENCES `websites` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=394 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `website_priviledges`
--

LOCK TABLES `website_priviledges` WRITE;
/*!40000 ALTER TABLE `website_priviledges` DISABLE KEYS */;
INSERT INTO `website_priviledges` VALUES (132,'update',123,12),(133,'read',123,12),(274,'create',123,12),(275,'update',123,12),(276,'delete',123,12),(277,'read',123,12),(278,'update',123,23),(279,'read',123,23),(280,'create',123,34),(281,'update',123,34),(282,'delete',123,34),(283,'read',123,34),(284,'create',234,23),(285,'update',234,23),(286,'delete',234,23),(287,'read',234,23),(288,'update',234,34),(289,'read',234,34),(290,'create',234,12),(291,'update',234,12),(292,'delete',234,12),(293,'read',234,12),(294,'create',345,34),(295,'update',345,34),(296,'delete',345,34),(297,'read',345,34),(298,'update',345,12),(299,'read',345,12),(300,'create',345,23),(301,'update',345,23),(302,'delete',345,23),(303,'read',345,23),(304,'create',456,12),(305,'update',456,12),(306,'delete',456,12),(307,'read',456,12),(308,'update',456,23),(309,'read',456,23),(310,'create',456,34),(311,'update',456,34),(312,'delete',456,34),(313,'read',456,34),(324,'create',678,34),(325,'update',678,34),(326,'delete',678,34),(327,'read',678,34),(328,'update',678,12),(329,'read',678,12),(330,'create',678,23),(331,'update',678,23),(332,'delete',678,23),(333,'read',678,23),(334,'create',123,12),(335,'update',123,12),(336,'delete',123,12),(337,'read',123,12),(338,'update',123,23),(339,'read',123,23),(340,'create',123,34),(341,'update',123,34),(342,'delete',123,34),(343,'read',123,34),(344,'create',234,23),(345,'update',234,23),(346,'delete',234,23),(347,'read',234,23),(348,'update',234,34),(349,'read',234,34),(350,'create',234,12),(351,'update',234,12),(352,'delete',234,12),(353,'read',234,12),(354,'create',345,34),(355,'update',345,34),(356,'delete',345,34),(357,'read',345,34),(358,'update',345,12),(359,'read',345,12),(360,'create',345,23),(361,'update',345,23),(362,'delete',345,23),(363,'read',345,23),(364,'create',456,12),(365,'update',456,12),(366,'delete',456,12),(367,'read',456,12),(368,'update',456,23),(369,'read',456,23),(370,'create',456,34),(371,'update',456,34),(372,'delete',456,34),(373,'read',456,34),(384,'create',678,34),(385,'update',678,34),(386,'delete',678,34),(387,'read',678,34),(388,'update',678,12),(389,'read',678,12),(390,'create',678,23),(391,'update',678,23),(392,'delete',678,23),(393,'read',678,23);
/*!40000 ALTER TABLE `website_priviledges` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-10-29  1:43:49
