-- MySQL dump 10.13  Distrib 5.7.12, for Win32 (AMD64)
--
-- Host: localhost    Database: etour
-- ------------------------------------------------------
-- Server version	5.1.38-community

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `paxbooking`
--

DROP TABLE IF EXISTS `paxbooking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `paxbooking` (
  `booking_bookingid` int(11) NOT NULL,
  `paxdetailref_paxid` int(11) NOT NULL,
  UNIQUE KEY `paxdetailref_paxid` (`paxdetailref_paxid`),
  KEY `FKC3779DD2E550DB6D` (`paxdetailref_paxid`),
  KEY `FKC3779DD26BDC7FE` (`booking_bookingid`),
  CONSTRAINT `FKC3779DD26BDC7FE` FOREIGN KEY (`booking_bookingid`) REFERENCES `booking` (`bookingid`),
  CONSTRAINT `FKC3779DD2E550DB6D` FOREIGN KEY (`paxdetailref_paxid`) REFERENCES `paxdetail` (`paxid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `paxbooking`
--

LOCK TABLES `paxbooking` WRITE;
/*!40000 ALTER TABLE `paxbooking` DISABLE KEYS */;
INSERT INTO `paxbooking` VALUES (1,1),(2,2),(3,3),(4,4),(5,5),(6,6),(7,7),(8,8),(9,9),(10,10),(11,11),(12,12),(13,13),(14,14),(15,15),(16,16),(17,17),(17,18),(18,19),(19,20),(19,21),(20,22),(21,23),(21,24),(22,25),(23,26),(24,27),(25,28),(25,29),(25,30),(26,31),(26,32),(27,33),(27,34),(28,35),(29,36),(29,37);
/*!40000 ALTER TABLE `paxbooking` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-01-31 12:19:03
