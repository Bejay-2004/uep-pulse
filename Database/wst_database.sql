-- MySQL dump 10.13  Distrib 8.0.40, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: belly
-- ------------------------------------------------------
-- Server version	8.0.40

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
-- Table structure for table `admin_actions`
--

DROP TABLE IF EXISTS `admin_actions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin_actions` (
  `ActionID` int NOT NULL AUTO_INCREMENT,
  `AdminID` int NOT NULL,
  `PostID` int DEFAULT NULL,
  `ActionType` enum('Edit','Delete','Restore') NOT NULL,
  `ActionTimestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ActionID`),
  KEY `PostID` (`PostID`),
  KEY `admin_actions_ibfk_1_idx` (`AdminID`),
  CONSTRAINT `admin_actions_ibfk_1` FOREIGN KEY (`AdminID`) REFERENCES `admins` (`admin_id`) ON DELETE CASCADE,
  CONSTRAINT `admin_actions_ibfk_2` FOREIGN KEY (`PostID`) REFERENCES `posts` (`PostID`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_actions`
--

LOCK TABLES `admin_actions` WRITE;
/*!40000 ALTER TABLE `admin_actions` DISABLE KEYS */;
/*!40000 ALTER TABLE `admin_actions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admins`
--

DROP TABLE IF EXISTS `admins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admins` (
  `admin_id` int NOT NULL AUTO_INCREMENT,
  `admin_name` varchar(50) NOT NULL,
  `admin_password` varchar(255) NOT NULL,
  PRIMARY KEY (`admin_id`),
  UNIQUE KEY `admin_name` (`admin_name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admins`
--

LOCK TABLES `admins` WRITE;
/*!40000 ALTER TABLE `admins` DISABLE KEYS */;
INSERT INTO `admins` VALUES (1,'lovely','diega'),(2,'bellyjoe','garin');
/*!40000 ALTER TABLE `admins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admins_table`
--

DROP TABLE IF EXISTS `admins_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admins_table` (
  `AdminID` int NOT NULL AUTO_INCREMENT,
  `Username` varchar(50) NOT NULL,
  `PasswordHash` varchar(255) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `CreatedAt` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`AdminID`),
  UNIQUE KEY `Username` (`Username`),
  UNIQUE KEY `Email` (`Email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admins_table`
--

LOCK TABLES `admins_table` WRITE;
/*!40000 ALTER TABLE `admins_table` DISABLE KEYS */;
/*!40000 ALTER TABLE `admins_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `belly`
--

DROP TABLE IF EXISTS `belly`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `belly` (
  `user_id` int NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `belly`
--

LOCK TABLES `belly` WRITE;
/*!40000 ALTER TABLE `belly` DISABLE KEYS */;
INSERT INTO `belly` VALUES (124316,'bellyjoe','$2b$10$qedG9Lz0mTjd5Ztm0ZzsvuHQ8QLJa0dYhInAUipb276MFu5A9YJCa'),(251487,'rosamae','$2b$10$GASNY3ubgBJ.Yf59kshSxu88FfqMKcDrUaCAgC7UNo5XeYEaKyy5u'),(427670,'bellyjoe','garin'),(484244,'maricel','$2b$10$UNLHm6XuOcFw4Q1S8rAr4u0piDy6BF00QCZRPufpkI/dDFicBFd5.'),(623538,'mhia','$2b$10$o3ZdJ761wH4Fi/YjuOgob.6F.6nlkcKhnRpOBBm9EnLMBkm87teY6'),(633733,'rosemarie','$2b$10$liQ2siqVcsuDpGqqGnvoFe0LHANzDLHlwqpjkngzPvrozPIFob6ra'),(636647,'bellyjoe','$2b$10$HxBWNjVqFK2CJDMW8H2rHe.f.CCyj7CjHISHthtFa8OMLZLSZ9CPi'),(831691,'Noel','$2b$10$ZgU2eSGZNY3rqcCXS/ujwe/1s80NOGXRdqfs8hCFg.FEzUZCsOd3S'),(982772,'username','$2b$10$ePnfqXEmbOoyq6Uv6mvZi.s.GDSFLSfQcht4825835/b863bw4Xqm'),(999874,'hi','$2b$10$nbrK6XAiTfUHXK57aCfjjuTqiSugikoiVO6wMvESevDZajrTOMqv2');
/*!40000 ALTER TABLE `belly` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bookmarks`
--

DROP TABLE IF EXISTS `bookmarks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bookmarks` (
  `BookmarkID` int NOT NULL AUTO_INCREMENT,
  `PostID` int NOT NULL,
  `UserID` int NOT NULL,
  `CreatedAt` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`BookmarkID`),
  KEY `PostID` (`PostID`),
  KEY `bookmarks_ibfk_2_idx` (`UserID`),
  CONSTRAINT `bookmarks_ibfk_1` FOREIGN KEY (`PostID`) REFERENCES `posts` (`PostID`) ON DELETE CASCADE,
  CONSTRAINT `bookmarks_ibfk_2` FOREIGN KEY (`UserID`) REFERENCES `belly` (`user_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bookmarks`
--

LOCK TABLES `bookmarks` WRITE;
/*!40000 ALTER TABLE `bookmarks` DISABLE KEYS */;
/*!40000 ALTER TABLE `bookmarks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comments` (
  `CommentID` int NOT NULL AUTO_INCREMENT,
  `PostID` int NOT NULL,
  `UserID` int NOT NULL,
  `Content` text NOT NULL,
  `CreatedAt` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`CommentID`),
  KEY `PostID` (`PostID`),
  KEY `comments_ibfk_2_idx` (`UserID`),
  CONSTRAINT `comments_ibfk_1` FOREIGN KEY (`PostID`) REFERENCES `posts` (`PostID`) ON DELETE CASCADE,
  CONSTRAINT `comments_ibfk_2` FOREIGN KEY (`UserID`) REFERENCES `belly` (`user_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comments`
--

LOCK TABLES `comments` WRITE;
/*!40000 ALTER TABLE `comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contacts`
--

DROP TABLE IF EXISTS `contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contacts` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `notes` text,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacts`
--

LOCK TABLES `contacts` WRITE;
/*!40000 ALTER TABLE `contacts` DISABLE KEYS */;
INSERT INTO `contacts` VALUES (1,'Kristine Custorio','jomei23@gmail.com','09254565614','Hi sir!','2024-12-14 15:57:58'),(4,'Belly Joe','garinbellyjoe223209@gmail.com','09207256221','Hello Belly','2024-12-14 16:06:06'),(6,'Maricel','maricelgarin@gmail.com','09207256221','Hello nanay','2024-12-14 16:45:24'),(7,'Noel','noelgarin@gmail.com','09207256221','Hello Tatay','2024-12-14 17:15:08'),(8,'Rosemarie','beros23@gmail.com','09254565614','Hello Beros','2024-12-16 05:15:34');
/*!40000 ALTER TABLE `contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `likes`
--

DROP TABLE IF EXISTS `likes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `likes` (
  `LikeID` int NOT NULL AUTO_INCREMENT,
  `PostID` int NOT NULL,
  `UserID` int NOT NULL,
  `CreatedAt` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`LikeID`),
  KEY `likes_ibfk_1_idx` (`UserID`),
  CONSTRAINT `likes_ibfk_1` FOREIGN KEY (`UserID`) REFERENCES `belly` (`user_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `likes`
--

LOCK TABLES `likes` WRITE;
/*!40000 ALTER TABLE `likes` DISABLE KEYS */;
/*!40000 ALTER TABLE `likes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posts` (
  `PostID` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `Content` text NOT NULL,
  `CreatedAt` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdatedAt` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `IsDeleted` tinyint(1) DEFAULT '0',
  `category` enum('#academic-concerns','#social-events','#campus-facilities','#suggestions-for-improvement','#other') DEFAULT NULL,
  `Likes` int DEFAULT '0',
  PRIMARY KEY (`PostID`),
  KEY `posts_ibfk_1_idx` (`user_id`),
  CONSTRAINT `posts_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `belly` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (20,124316,'Hello UEP','2024-12-19 12:21:16','2024-12-19 12:21:16',0,'#social-events',0),(21,124316,'UEP cares','2024-12-19 12:22:28','2024-12-19 12:22:28',0,'#campus-facilities',0),(22,484244,'Proud here','2024-12-19 14:26:12','2024-12-19 14:26:12',0,'#social-events',0),(23,124316,'Acad Building','2024-12-19 15:18:41','2024-12-19 15:18:41',0,'#campus-facilities',0),(24,124316,'hello','2024-12-19 15:38:01','2024-12-19 15:38:01',0,'#campus-facilities',0),(25,124316,'hello UEP','2024-12-20 04:15:23','2024-12-20 04:15:23',0,'#academic-concerns',0),(26,124316,'mabuhay uep','2024-12-20 05:01:36','2024-12-20 05:01:36',0,'#academic-concerns',0),(27,124316,'ccs','2024-12-20 05:03:46','2024-12-20 05:03:46',0,'#campus-facilities',0),(28,124316,'hello cs people','2024-12-20 05:36:24','2024-12-20 05:36:24',0,'#social-events',0),(29,124316,'Hello sir','2024-12-20 05:37:14','2024-12-20 05:37:14',0,'#social-events',0),(30,124316,'Hello Uep','2024-12-20 05:39:52','2024-12-20 05:39:52',0,'#social-events',0),(31,124316,'Merry Christmas','2024-12-20 05:40:55','2024-12-20 05:40:55',0,'#academic-concerns',0),(32,124316,'Like It','2024-12-20 05:44:20','2024-12-20 05:44:20',0,'#social-events',0),(33,124316,'Christmas Break','2024-12-20 05:46:17','2024-12-20 05:46:17',0,'#social-events',0),(34,124316,'Arduino','2024-12-20 05:50:03','2024-12-20 05:50:03',0,'#campus-facilities',0),(35,124316,'More cr\'s please','2024-12-20 05:51:54','2024-12-20 05:51:54',0,'#suggestions-for-improvement',0);
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'bellyjoe','garin'),(2,'belj','fifrifijr'),(3,'wilnie','gabriel'),(4,'nikar','garin'),(5,'marl','garin'),(6,'ara','mau'),(7,'nica','makdkdk'),(9,'noel','ijdiwjiej'),(11,'rose','diega'),(12,'kristine','garin'),(13,'irvie','sheen'),(14,'maricris','castillo'),(15,'marcel','jdjejjrf'),(16,'gerald','oladive'),(17,'maecie','quibal'),(18,'rosa','diega'),(21,'marily','pilintoy'),(22,'juecl','hahshdhsdh'),(24,'bibo','jfjdfjdjf'),(26,'lovely','diega'),(27,'mami','kajdjdj'),(28,'sandra','mae'),(29,'marlo','maejje'),(30,'max','jdjwj');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_table`
--

DROP TABLE IF EXISTS `users_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users_table` (
  `UserID` int NOT NULL AUTO_INCREMENT,
  `Username` varchar(50) NOT NULL,
  `PasswordHash` varchar(255) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `Role` enum('User') DEFAULT 'User',
  `CreatedAt` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`UserID`),
  UNIQUE KEY `Username` (`Username`),
  UNIQUE KEY `Email` (`Email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_table`
--

LOCK TABLES `users_table` WRITE;
/*!40000 ALTER TABLE `users_table` DISABLE KEYS */;
INSERT INTO `users_table` VALUES (1,'bellyjoe','garin','garinbellyjoe','User','2024-12-11 15:28:02');
/*!40000 ALTER TABLE `users_table` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-12-20 14:00:58
