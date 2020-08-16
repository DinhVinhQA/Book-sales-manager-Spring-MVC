-- MySQL dump 10.13  Distrib 8.0.20, for Win64 (x86_64)
--
-- Host: localhost    Database: khosach
-- ------------------------------------------------------
-- Server version	8.0.20

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
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `dateofbirth` date DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `fullname` varchar(255) DEFAULT NULL,
  `gender` int DEFAULT NULL,
  `numberphone` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `status` int DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Huế','2020-10-10','d','Trần Đình Vĩnh',1,'032','$2a$10$/RUbuT9KIqk6f8enaTQiLOXzhnUkiwEJRdtzdrMXXwU7dgnLKTCYG',1,'Admin'),(3,'KDC 1 - thôn Phú Hòa - xã Trà Phú - huyện Trà Bồng - tỉnh Quảng Ngãi','2020-06-06','dinhvinh.qa@gmail.com','Trần Đình Vĩnh',1,'0328622121','$2a$10$PFszQUtbahCrImHtreRsae9XWnx9cOlfCoTq9lTNPnUJ9s9RyWn9O',1,'VinhTD'),(4,'Số 2a/118 Nguyễn Lộ Trạch - Tp.Huế','2006-03-08','bao@gmail.com','Trần Đình Bao',1,'0328622123','$2a$10$Hqzio31ENqPUuSHer0YZFuvtntjXyuePuwTg6h1OFHBbDZXusU61G',1,'BaoTD'),(5,'Số 213 Trần Phú - Thành phố Đà Nẳng','2006-03-04','quang@gmail.com','Trần Đình Quang',1,'0328622124','$2a$10$mUA2bSJkLBRxsycqQuv25OIV6t9qDFBDoGuvH8utrSB5UUas69.rm',1,'QuangTD'),(6,'Số nhà 23 Đường Nguyễn Tuân - Thành phố Huế','2020-06-21','Avn@gmail.com','Nguyễn Văn A',1,'0328622125','$2a$10$6/B.zGGCWi8NCnUqC1v79O5gvbnhrhBvKn9V13iDCgDB/XBRJrG.i',1,'NguyenVA');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-06-22 10:14:08
