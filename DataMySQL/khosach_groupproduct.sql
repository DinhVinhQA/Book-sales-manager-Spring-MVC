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
-- Table structure for table `groupproduct`
--

DROP TABLE IF EXISTS `groupproduct`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `groupproduct` (
  `groupproductid` bigint NOT NULL AUTO_INCREMENT,
  `groupproductname` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `categoryid` bigint DEFAULT NULL,
  PRIMARY KEY (`groupproductid`),
  KEY `FK_5ugmagstln8w09wc0rtoplaij` (`categoryid`),
  CONSTRAINT `FK_5ugmagstln8w09wc0rtoplaij` FOREIGN KEY (`categoryid`) REFERENCES `categories` (`categoryid`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `groupproduct`
--

LOCK TABLES `groupproduct` WRITE;
/*!40000 ALTER TABLE `groupproduct` DISABLE KEYS */;
INSERT INTO `groupproduct` VALUES (1,'Tiểu Thuyết Lịch Sử',1),(2,'Tiểu Thuyết Lãng Mạn',1),(3,'Phóng Sự Ký Sự',1),(4,'Truyện - Thơ Ca Dân Gian',1),(5,'Thơ Ca',1),(6,'Truyện Dài',1),(7,'Truyện Ngắn - Tản Văn',1),(8,'Ngôn Tình',1),(9,'Tác Phẩm Kinh Điển',1),(10,'Huyền Bí',1),(11,'Ký Sự Phê Bình Văn Học',1),(12,'Tự Truyện - Hồi Ký',1),(13,'Truyện Trinh Thám Vụ Án',1),(14,'Khoa Học Tự Nhiên',5),(15,'Khoa Học Xã Hội',5),(16,'Truyện Cổ Tích',5),(17,'Truyện Connan',5),(18,'Truyện Doraemon',5),(19,'Truyện Kể Bé Nghe',5),(20,'Truyện Thần Đồng Đất Việt',5),(21,'Truyện Trạng Quỳnh',5),(22,'Truyện Onepice',5),(23,'Truyện Dân Gian',5),(24,'Truyện Phiêu Lưu',5);
/*!40000 ALTER TABLE `groupproduct` ENABLE KEYS */;
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
