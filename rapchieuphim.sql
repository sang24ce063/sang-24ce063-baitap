-- MySQL dump 10.13  Distrib 8.0.42, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: rapchieuphim
-- ------------------------------------------------------
-- Server version	8.0.42

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
-- Table structure for table `account`
--

DROP TABLE IF EXISTS `account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `account` (
  `account_id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `ho_ten` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `so_dien_thoai` varchar(20) DEFAULT NULL,
  `ngay_tao` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `lan_dang_nhap_cuoi` timestamp NULL DEFAULT NULL,
  `trang_thai_hoat_dong` tinyint(1) DEFAULT '1',
  `role` varchar(20) DEFAULT 'user',
  PRIMARY KEY (`account_id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account`
--

LOCK TABLES `account` WRITE;
/*!40000 ALTER TABLE `account` DISABLE KEYS */;
INSERT INTO `account` VALUES (1,'admin','admin123','Administrator','admin@example.com','0123456789','2025-06-07 03:25:54','2025-06-20 09:48:03',1,'admin'),(2,'user1','password1','Người Dùng 1','user1@example.com','0987654321','2025-06-07 03:25:54',NULL,1,'user'),(3,'sang','123456','','','','2025-06-07 03:29:31','2025-06-20 06:12:09',1,'user'),(4,'Huy bùi','123456','','','','2025-06-07 09:00:53',NULL,1,'user'),(5,'HUY','123456','Lê Quang Huy','123@gmail.com','1234567890','2025-06-07 09:06:42',NULL,1,'user'),(6,'San','123456','Nguyễn Quang Thanh Sang','1234@gmail.com','6566786643','2025-06-07 09:21:22',NULL,1,'user'),(7,'quoc','123456','dsdgdth','ewgere@gmail.com','32564574563','2025-06-07 02:27:48',NULL,1,'user'),(8,'lai','123456','Đãi Minh Lô','safeg@gmail.com','35478574545','2025-06-07 02:32:56',NULL,1,'user'),(9,'das','123456','Nguyễn das','das123@gmail.com','1234567890','2025-06-07 02:46:02',NULL,1,'user'),(10,'VUB','123456','Lê Duy Vub','vub@gmail.com','1234567890','2025-06-07 03:06:59',NULL,1,'user'),(14,'fds','123456','fds','fds123@gmail.com','0356041253','2025-06-07 03:20:18',NULL,1,'user'),(16,'123','123123','123','sang@gmail.com','1231231234','2025-06-07 03:50:33',NULL,1,'user'),(17,'bui','123456','bui','bui@gmail.com','1234321234','2025-06-07 04:09:10',NULL,1,'user'),(18,'sang1','123456','sang1','sang1@gmail.com','0356041253','2025-06-13 08:12:21',NULL,1,'user'),(19,'Vũ Huy','$2a$10$nDYTYzNWOZEkdL9y6up1vO1945w5g9pQ2/avxZGvsApMT76QanEfW','sang','sangdrs123@gmail.com','0356041253','2025-06-14 09:59:52',NULL,1,'user'),(20,'Sang Lai','123456','Huykk','sangdrs123@gmail.com','0356041253','2025-06-14 11:02:01','2025-06-14 11:03:43',1,'user'),(21,'Sang Huy','123456','Nguyen Sang Huy','123@gmail.com','1234567890','2025-06-19 06:22:07',NULL,1,'user'),(22,'Huy dẻ rách','123456','Huy de rach','1@gmail.com','1234567890','2025-06-19 21:42:16','2025-06-20 20:18:38',1,'user');
/*!40000 ALTER TABLE `account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `doanhthungay`
--

DROP TABLE IF EXISTS `doanhthungay`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `doanhthungay` (
  `ngay` date NOT NULL,
  `so_ve_ban` int NOT NULL DEFAULT '0',
  `tong_doanh_thu` decimal(15,2) DEFAULT '0.00',
  PRIMARY KEY (`ngay`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `doanhthungay`
--

LOCK TABLES `doanhthungay` WRITE;
/*!40000 ALTER TABLE `doanhthungay` DISABLE KEYS */;
INSERT INTO `doanhthungay` VALUES ('2025-06-20',30,2490000.00),('2025-06-21',2,170000.00);
/*!40000 ALTER TABLE `doanhthungay` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ghe`
--

DROP TABLE IF EXISTS `ghe`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ghe` (
  `id_ghe` int NOT NULL AUTO_INCREMENT,
  `phong_chieu` varchar(20) NOT NULL,
  `ma_ghe` varchar(10) NOT NULL,
  `loai_ghe` varchar(20) NOT NULL,
  `gia` decimal(10,2) NOT NULL,
  `trang_thai` varchar(20) DEFAULT 'Hoạt động',
  PRIMARY KEY (`id_ghe`),
  UNIQUE KEY `phong_chieu` (`phong_chieu`,`ma_ghe`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ghe`
--

LOCK TABLES `ghe` WRITE;
/*!40000 ALTER TABLE `ghe` DISABLE KEYS */;
INSERT INTO `ghe` VALUES (1,'P01','A1','VIP',85000.00,'Hoạt động'),(2,'P01','A2','VIP',85000.00,'Hoạt động'),(3,'P01','A3','VIP',85000.00,'Hoạt động'),(4,'P01','B1','Thường',75000.00,'Hoạt động'),(5,'P01','B2','Thường',75000.00,'Hoạt động'),(6,'P02','A1','VIP',85000.00,'Hoạt động'),(7,'P02','A2','VIP',85000.00,'Hoạt động'),(8,'P02','B1','Thường',75000.00,'Hoạt động'),(9,'P03','A1','VIP',85000.00,'Hoạt động'),(10,'P03','A2','VIP',85000.00,'Hoạt động'),(51,'P01','A4','VIP',85000.00,'Hoạt động'),(52,'P01','A5','VIP',85000.00,'Hoạt động'),(53,'P01','B3','Thường',75000.00,'Hoạt động'),(54,'P01','B4','Thường',75000.00,'Hoạt động'),(55,'P01','B5','Thường',75000.00,'Hoạt động'),(56,'P01','C1','Thường',75000.00,'Hoạt động'),(57,'P01','C2','Thường',75000.00,'Hoạt động'),(58,'P01','C3','Thường',75000.00,'Hoạt động'),(59,'P01','C4','Thường',75000.00,'Hoạt động'),(60,'P01','C5','Thường',75000.00,'Hoạt động'),(61,'P01','D1','VIP',85000.00,'Hoạt động'),(62,'P01','D2','VIP',85000.00,'Hoạt động'),(63,'P01','D3','VIP',85000.00,'Hoạt động'),(64,'P01','D4','VIP',85000.00,'Hoạt động'),(65,'P01','D5','VIP',85000.00,'Hoạt động'),(66,'P02','A3','VIP',85000.00,'Hoạt động'),(67,'P02','A4','VIP',85000.00,'Hoạt động'),(68,'P02','A5','VIP',85000.00,'Hoạt động'),(69,'P02','B2','Thường',75000.00,'Hoạt động'),(70,'P02','B3','Thường',75000.00,'Hoạt động'),(71,'P02','B4','Thường',75000.00,'Hoạt động'),(72,'P02','B5','Thường',75000.00,'Hoạt động'),(73,'P02','C1','Thường',75000.00,'Hoạt động'),(74,'P02','C2','Thường',75000.00,'Hoạt động'),(75,'P02','C3','Thường',75000.00,'Hoạt động'),(76,'P02','C4','Thường',75000.00,'Hoạt động'),(77,'P02','C5','Thường',75000.00,'Hoạt động'),(78,'P02','D1','VIP',85000.00,'Hoạt động'),(79,'P02','D2','VIP',85000.00,'Hoạt động'),(80,'P02','D3','VIP',85000.00,'Hoạt động'),(81,'P02','D4','VIP',85000.00,'Hoạt động'),(82,'P02','D5','VIP',85000.00,'Hoạt động'),(83,'P03','A3','VIP',85000.00,'Hoạt động'),(84,'P03','A4','VIP',85000.00,'Hoạt động'),(85,'P03','A5','VIP',85000.00,'Hoạt động'),(86,'P03','B1','Thường',75000.00,'Hoạt động'),(87,'P03','B2','Thường',75000.00,'Hoạt động'),(88,'P03','B3','Thường',75000.00,'Hoạt động'),(89,'P03','B4','Thường',75000.00,'Hoạt động'),(90,'P03','B5','Thường',75000.00,'Hoạt động'),(91,'P03','C1','Thường',75000.00,'Hoạt động'),(92,'P03','C2','Thường',75000.00,'Hoạt động'),(93,'P03','C3','Thường',75000.00,'Hoạt động'),(94,'P03','C4','Thường',75000.00,'Hoạt động'),(95,'P03','C5','Thường',75000.00,'Hoạt động'),(96,'P03','D1','VIP',85000.00,'Hoạt động'),(97,'P03','D2','VIP',85000.00,'Hoạt động'),(98,'P03','D3','VIP',85000.00,'Hoạt động'),(99,'P03','D4','VIP',85000.00,'Hoạt động'),(100,'P03','D5','VIP',85000.00,'Hoạt động');
/*!40000 ALTER TABLE `ghe` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `khachhang`
--

DROP TABLE IF EXISTS `khachhang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `khachhang` (
  `id_khach_hang` int NOT NULL AUTO_INCREMENT,
  `ten_khach_hang` varchar(255) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `so_dien_thoai` varchar(20) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `ngay_tao` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `role` varchar(20) DEFAULT 'user',
  `so_ve_da_mua` int DEFAULT '0',
  PRIMARY KEY (`id_khach_hang`),
  UNIQUE KEY `username` (`username`),
  CONSTRAINT `khachhang_ibfk_1` FOREIGN KEY (`username`) REFERENCES `account` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `khachhang`
--

LOCK TABLES `khachhang` WRITE;
/*!40000 ALTER TABLE `khachhang` DISABLE KEYS */;
INSERT INTO `khachhang` VALUES (1,'Nguyễn Văn A','nguyenvana@example.com','0901234567','user1','2025-06-07 03:25:54','user',17),(2,'Trần Thị B','tranthib@example.com','0912345678',NULL,'2025-06-07 03:25:54','user',0),(3,'Lê Quang Huy','123@gmail.com','1234567890','HUY','2025-06-07 09:15:03','user',0),(5,'dsdgdth','ewgere@gmail.com','32564574563','quoc','2025-06-07 11:10:26','user',0),(6,'sang','sangdrs123@gmail.com','0356041253','Vũ Huy','2025-06-14 09:59:52','user',0),(7,'Huykk','sangdrs123@gmail.com','0356041253','Sang Lai','2025-06-14 11:02:01','user',0),(8,'Nguyen Sang Huy','123@gmail.com','1234567890','Sang Huy','2025-06-19 06:22:07','user',0),(9,'Huy de rach','1@gmail.com','1234567890','Huy dẻ rách','2025-06-19 21:42:16','user',21);
/*!40000 ALTER TABLE `khachhang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lichchieuphim`
--

DROP TABLE IF EXISTS `lichchieuphim`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lichchieuphim` (
  `id_lich` int NOT NULL AUTO_INCREMENT,
  `id_phim` int DEFAULT NULL,
  `ngay_chieu` date NOT NULL,
  `gio_chieu` time NOT NULL,
  `phong_chieu` varchar(20) NOT NULL,
  `so_ghe_tong` int NOT NULL,
  `so_ghe_da_dat` int DEFAULT '0',
  `gia_ve` decimal(10,2) NOT NULL,
  `trang_thai` varchar(20) DEFAULT 'Đang mở bán',
  `ngay_tao` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_lich`),
  KEY `id_phim` (`id_phim`),
  CONSTRAINT `lichchieuphim_ibfk_1` FOREIGN KEY (`id_phim`) REFERENCES `phim` (`id_phim`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lichchieuphim`
--

LOCK TABLES `lichchieuphim` WRITE;
/*!40000 ALTER TABLE `lichchieuphim` DISABLE KEYS */;
INSERT INTO `lichchieuphim` VALUES (1,1,'2025-06-10','19:30:00','P01',120,0,90000.00,'Đang mở bán','2025-06-07 03:25:54'),(2,2,'2025-06-10','20:00:00','P02',80,0,85000.00,'Đang mở bán','2025-06-07 03:25:54'),(3,3,'2025-06-11','18:45:00','P01',120,0,75000.00,'Đang mở bán','2025-06-07 03:25:54'),(4,4,'2025-06-11','20:30:00','P03',100,0,95000.00,'Đang mở bán','2025-06-07 03:25:54'),(5,5,'2025-06-12','19:00:00','P02',80,0,90000.00,'Đang mở bán','2025-06-07 03:25:54'),(6,6,'2025-06-12','21:15:00','P01',120,0,100000.00,'Đang mở bán','2025-06-07 03:25:54');
/*!40000 ALTER TABLE `lichchieuphim` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phim`
--

DROP TABLE IF EXISTS `phim`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `phim` (
  `id_phim` int NOT NULL AUTO_INCREMENT,
  `ten_phim` varchar(255) NOT NULL,
  `the_loai` varchar(100) DEFAULT NULL,
  `thoi_luong` int DEFAULT NULL,
  `mo_ta` text,
  `ngay_tao` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_phim`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phim`
--

LOCK TABLES `phim` WRITE;
/*!40000 ALTER TABLE `phim` DISABLE KEYS */;
INSERT INTO `phim` VALUES (1,'Nhà bà nữ','Gia đình',102,'Phim về tình cảm gia đình','2025-06-07 03:25:54'),(2,'Chị chị em em 2','Tâm lý',95,'Câu chuyện phức tạp giữa hai chị em','2025-06-07 03:25:54'),(3,'Pororo: Cuộc phiêu lưu đến dinh thự rồng','Hoạt hình',80,'Hành trình thú vị của Pororo','2025-06-07 03:25:54'),(4,'Avengers: Endgame','Hành động, Viễn tưởng',180,'Trận chiến cuối cùng của các siêu anh hùng','2025-06-07 03:25:54'),(5,'Spider-Man: No Way Home','Hành động, Phiêu lưu',148,'Spider-Man đối mặt với đa vũ trụ','2025-06-07 03:25:54'),(6,'Doctor Strange in the Multiverse of Madness','Hành động, Phiêu lưu, Kinh dị',126,'Doctor Strange khám phá đa vũ trụ','2025-06-07 03:25:54'),(7,'Avatar','3D',120,'Cuộc phiêu lưu','2025-06-13 16:42:13');
/*!40000 ALTER TABLE `phim` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ve`
--

DROP TABLE IF EXISTS `ve`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ve` (
  `id_ve` int NOT NULL AUTO_INCREMENT,
  `id_phim` int DEFAULT NULL,
  `id_khach_hang` int DEFAULT NULL,
  `id_ghe` int DEFAULT NULL,
  `gia_ve` decimal(10,2) NOT NULL DEFAULT '100000.00',
  `ngay_ban` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `trang_thai` varchar(20) DEFAULT 'Đã thanh toán',
  `id_xuat_chieu` int DEFAULT NULL,
  PRIMARY KEY (`id_ve`),
  KEY `id_phim` (`id_phim`),
  KEY `id_khach_hang` (`id_khach_hang`),
  KEY `id_ghe` (`id_ghe`),
  KEY `fk_xuat_chieu` (`id_xuat_chieu`),
  CONSTRAINT `fk_xuat_chieu` FOREIGN KEY (`id_xuat_chieu`) REFERENCES `xuatchieu` (`id_xuat_chieu`),
  CONSTRAINT `ve_ibfk_2` FOREIGN KEY (`id_phim`) REFERENCES `phim` (`id_phim`),
  CONSTRAINT `ve_ibfk_3` FOREIGN KEY (`id_khach_hang`) REFERENCES `khachhang` (`id_khach_hang`),
  CONSTRAINT `ve_ibfk_4` FOREIGN KEY (`id_ghe`) REFERENCES `ghe` (`id_ghe`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ve`
--

LOCK TABLES `ve` WRITE;
/*!40000 ALTER TABLE `ve` DISABLE KEYS */;
INSERT INTO `ve` VALUES (1,1,1,1,90000.00,'2025-06-07 03:25:55','Đã thanh toán',1),(2,1,1,2,90000.00,'2025-06-07 03:25:55','Đã thanh toán',1),(3,2,2,6,85000.00,'2025-06-07 03:25:55','Đã thanh toán',2),(4,3,1,4,75000.00,'2025-06-07 03:25:55','Đã thanh toán',3),(5,1,1,2,100000.00,'2025-06-19 21:33:55','Đã thanh toán',4),(6,1,1,3,100000.00,'2025-06-19 21:33:55','Đã thanh toán',4),(7,6,1,2,100000.00,'2025-06-19 21:35:10','Đã thanh toán',9),(8,6,1,3,100000.00,'2025-06-19 21:35:10','Đã thanh toán',9),(9,6,1,5,100000.00,'2025-06-19 21:35:10','Đã thanh toán',9),(10,1,1,3,100000.00,'2025-06-19 21:42:51','Đã thanh toán',1),(11,1,1,2,100000.00,'2025-06-19 21:42:51','Đã thanh toán',1),(12,1,1,2,100000.00,'2025-06-19 22:06:29','Đã thanh toán',4),(13,1,1,3,100000.00,'2025-06-19 22:06:29','Đã thanh toán',4),(14,1,1,2,100000.00,'2025-06-19 22:10:39','Đã thanh toán',1),(15,1,1,1,100000.00,'2025-06-19 22:10:39','Đã thanh toán',1),(16,1,1,3,100000.00,'2025-06-19 22:10:39','Đã thanh toán',1),(17,1,1,3,100000.00,'2025-06-20 00:21:57','Đã thanh toán',4),(18,1,1,2,100000.00,'2025-06-20 00:21:57','Đã thanh toán',4),(22,1,9,2,100000.00,'2025-06-20 00:45:36','Đã thanh toán',4),(23,1,9,2,100000.00,'2025-06-20 00:58:22','Đã thanh toán',1),(24,1,9,2,85000.00,'2025-06-20 09:42:53','Đã thanh toán',4),(25,1,1,1,85000.00,'2025-06-20 02:44:19','Đã thanh toán',1),(26,1,9,1,85000.00,'2025-06-20 02:45:14','Đã thanh toán',1),(27,1,9,5,75000.00,'2025-06-20 03:01:54','Đã thanh toán',4),(28,2,1,7,85000.00,'2025-06-20 06:12:25','Đã thanh toán',2),(29,2,1,6,85000.00,'2025-06-20 06:12:25','Đã thanh toán',2),(45,1,9,58,75000.00,'2025-06-20 08:56:13','Đã thanh toán',4),(46,1,9,57,75000.00,'2025-06-20 08:56:13','Đã thanh toán',4),(47,1,9,59,75000.00,'2025-06-20 08:56:13','Đã thanh toán',4),(48,1,9,51,85000.00,'2025-06-20 08:57:48','Đã thanh toán',4),(49,1,9,2,85000.00,'2025-06-20 08:57:48','Đã thanh toán',4),(50,1,9,1,85000.00,'2025-06-20 08:57:48','Đã thanh toán',4),(51,1,9,3,85000.00,'2025-06-20 08:57:48','Đã thanh toán',4),(52,1,9,3,85000.00,'2025-06-20 08:58:32','Đã thanh toán',4),(53,1,9,2,85000.00,'2025-06-20 08:58:32','Đã thanh toán',4),(54,1,9,2,85000.00,'2025-06-20 09:03:00','Đã thanh toán',4),(55,1,9,3,85000.00,'2025-06-20 09:03:00','Đã thanh toán',4),(56,1,9,51,85000.00,'2025-06-20 09:06:30','Đã thanh toán',4),(57,1,9,3,85000.00,'2025-06-20 09:06:30','Đã thanh toán',4),(58,1,9,3,85000.00,'2025-06-20 09:32:02','Đã thanh toán',4),(59,1,9,51,85000.00,'2025-06-20 09:32:02','Đã thanh toán',4),(60,1,9,51,85000.00,'2025-06-20 20:19:09','Đã thanh toán',4);
/*!40000 ALTER TABLE `ve` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xuatchieu`
--

DROP TABLE IF EXISTS `xuatchieu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `xuatchieu` (
  `id_xuat_chieu` int NOT NULL AUTO_INCREMENT,
  `id_phim` int NOT NULL,
  `phong_chieu` varchar(20) NOT NULL,
  `thoi_gian_bat_dau` datetime NOT NULL,
  `thoi_gian_ket_thuc` datetime DEFAULT NULL,
  PRIMARY KEY (`id_xuat_chieu`),
  KEY `id_phim` (`id_phim`),
  CONSTRAINT `xuatchieu_ibfk_1` FOREIGN KEY (`id_phim`) REFERENCES `phim` (`id_phim`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xuatchieu`
--

LOCK TABLES `xuatchieu` WRITE;
/*!40000 ALTER TABLE `xuatchieu` DISABLE KEYS */;
INSERT INTO `xuatchieu` VALUES (1,1,'P01','2025-06-10 19:30:00','2025-06-10 21:12:00'),(2,2,'P02','2025-06-10 20:00:00','2025-06-10 21:35:00'),(3,3,'P01','2025-06-11 18:45:00','2025-06-11 20:05:00'),(4,1,'P01','2025-06-13 14:00:00','2025-06-13 15:42:00'),(5,2,'P02','2025-06-13 16:00:00','2025-06-13 17:35:00'),(6,3,'P01','2025-06-13 18:00:00','2025-06-13 19:20:00'),(7,4,'P03','2025-06-13 20:00:00','2025-06-13 23:00:00'),(8,5,'P02','2025-06-14 17:30:00','2025-06-14 20:00:00'),(9,6,'P01','2025-06-14 21:00:00','2025-06-14 23:06:00'),(10,6,'P01','2025-06-15 17:00:00','2025-06-15 19:06:00'),(11,5,'P02','2025-06-15 20:00:00','2025-06-15 22:28:00'),(12,3,'P03','2025-06-16 10:00:00','2025-06-16 11:20:00'),(13,2,'P01','2025-06-16 14:30:00','2025-06-16 16:05:00'),(14,4,'P02','2025-06-16 18:00:00','2025-06-16 21:00:00'),(15,1,'P03','2025-06-16 20:30:00','2025-06-16 22:12:00');
/*!40000 ALTER TABLE `xuatchieu` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-06-21 10:30:02
