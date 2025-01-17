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
-- Temporary view structure for view `developer_roles_and_priviledges`
--

DROP TABLE IF EXISTS `developer_roles_and_priviledges`;
/*!50001 DROP VIEW IF EXISTS `developer_roles_and_priviledges`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `developer_roles_and_priviledges` AS SELECT 
 1 AS `firstName`,
 1 AS `lastName`,
 1 AS `username`,
 1 AS `email`,
 1 AS `website_name`,
 1 AS `website_visits`,
 1 AS `website_update`,
 1 AS `website_role`,
 1 AS `webiste_priviledge`,
 1 AS `page_title`,
 1 AS `page_visits`,
 1 AS `page_update`,
 1 AS `page_role`,
 1 AS `page_priviledge`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `developer_roles_and_priviledges`
--

/*!50001 DROP VIEW IF EXISTS `developer_roles_and_priviledges`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `developer_roles_and_priviledges` AS select `persons`.`firstName` AS `firstName`,`persons`.`lastName` AS `lastName`,`persons`.`username` AS `username`,`persons`.`email` AS `email`,`websites`.`name` AS `website_name`,`websites`.`visits` AS `website_visits`,`websites`.`updated` AS `website_update`,`website_roles`.`role` AS `website_role`,`website_priviledges`.`priviledge` AS `webiste_priviledge`,`pages`.`title` AS `page_title`,`pages`.`visits` AS `page_visits`,`pages`.`updated` AS `page_update`,`page_role`.`role` AS `page_role`,`page_priviledges`.`priviledge` AS `page_priviledge` from (`pages` join (((((`persons` join `website_roles` on((`persons`.`id` = `website_roles`.`developer_id`))) join `websites` on((`websites`.`id` = `website_roles`.`website_id`))) join `website_priviledges` on((`persons`.`id` = `website_priviledges`.`developer_id`))) join `page_role` on((`persons`.`id` = `page_role`.`developer_id`))) join `page_priviledges` on((`persons`.`id` = `page_priviledges`.`developer_id`)))) where ((`website_roles`.`website_id` = `website_priviledges`.`website_id`) and (`website_roles`.`developer_id` = `website_priviledges`.`developer_id`) and (`pages`.`website_id` = `websites`.`id`) and (`page_priviledges`.`developer_id` = `page_role`.`developer_id`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-10-29  1:43:51
