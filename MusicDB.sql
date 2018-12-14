CREATE DATABASE  IF NOT EXISTS `dojomusicdb` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */;
USE `dojomusicdb`;
-- MySQL dump 10.13  Distrib 8.0.12, for Win64 (x86_64)
--
-- Host: localhost    Database: dojomusicdb
-- ------------------------------------------------------
-- Server version	8.0.11

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `albums`
--

DROP TABLE IF EXISTS `albums`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `albums` (
  `AlbumId` int(11) NOT NULL AUTO_INCREMENT,
  `ArtistId` int(11) DEFAULT NULL,
  `Name` text,
  `ReleaseDate` datetime NOT NULL,
  `Duration` int(11) NOT NULL,
  PRIMARY KEY (`AlbumId`),
  KEY `IX_Albums_ArtistId` (`ArtistId`),
  CONSTRAINT `FK_Albums_Artists_ArtistId` FOREIGN KEY (`ArtistId`) REFERENCES `artists` (`artistid`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `albums`
--

LOCK TABLES `albums` WRITE;
/*!40000 ALTER TABLE `albums` DISABLE KEYS */;
INSERT INTO `albums` VALUES 
(1,1,'Here Come The Moths!','1994-04-26 00:00:00',3873),
(2,1,'Moth Music','1996-08-27 00:00:00',3443),
(3,1,'Molting','1998-09-29 00:00:00',4487),
(4,2,'Visons','1963-03-22 00:00:00',1965),
(5,2,'Hello Again My Friend','1965-12-03 00:00:00',2095),
(6,2,'Baby Music','1967-11-27 00:00:00',2195),
(7,3,'Lil Moose is in Your Area','1984-07-27 00:00:00',2848),
(8,3,'Trunk Bumpers','1986-03-03 00:00:00',3287),
(9,3,'Turn it UP','1988-05-01 00:00:00',3933),
(10,4,'Songs From the Future','1997-09-16 00:00:00',2421),
(11,4,'It is me (Carlton)','2001-08-07 00:00:00',3439),
(13,5,'A.N.G.E.R','2000-01-01 00:00:00',4630),
(14,5,'Sophmore Slump','2001-03-23 00:00:00',2620),
(15,5,'Gray Green Skies','2002-03-23 00:00:00',2340),
(16,5,'To all the haters...','2003-03-23 00:00:00',3730),
(17,5,'A.R.M.Y','2009-03-23 00:00:00',3630);
/*!40000 ALTER TABLE `albums` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `artists`
--

DROP TABLE IF EXISTS `artists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `artists` (
  `ArtistId` int(11) NOT NULL AUTO_INCREMENT,
  `IsGroup` tinyint(1) NOT NULL,
  `Name` text,
  PRIMARY KEY (`ArtistId`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `artists`
--

LOCK TABLES `artists` WRITE;
/*!40000 ALTER TABLE `artists` DISABLE KEYS */;
INSERT INTO `artists` VALUES (1,1,'The Moths'),(2,1,'King Baby'),(3,0,'Lil Moose'),(4,0,'Carlton Dansby'),(5,1,'Anger Army');
/*!40000 ALTER TABLE `artists` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-08-30 15:17:38
