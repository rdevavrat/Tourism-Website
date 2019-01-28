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
-- Table structure for table `tourtourdate`
--

DROP TABLE IF EXISTS `tourtourdate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tourtourdate` (
  `tourref_tourid` int(11) DEFAULT NULL,
  `dateid` int(11) NOT NULL,
  PRIMARY KEY (`dateid`),
  KEY `FK87AB005E1B7C9D58` (`dateid`),
  KEY `FK87AB005EF32FE3D8` (`tourref_tourid`),
  CONSTRAINT `FK87AB005E1B7C9D58` FOREIGN KEY (`dateid`) REFERENCES `tourdate` (`dateid`),
  CONSTRAINT `FK87AB005EF32FE3D8` FOREIGN KEY (`tourref_tourid`) REFERENCES `tour` (`tourid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tourtourdate`
--

LOCK TABLES `tourtourdate` WRITE;
/*!40000 ALTER TABLE `tourtourdate` DISABLE KEYS */;
INSERT INTO `tourtourdate` VALUES (1,1),(1,2),(1,3),(2,4),(2,5),(2,6),(3,7),(3,8),(3,9),(4,10),(4,11),(4,12),(5,13),(5,14),(6,15),(6,16),(7,17),(7,18),(8,19),(8,20),(9,21),(9,22),(10,23),(10,24),(11,25),(11,26),(12,27),(12,28),(13,29),(13,30),(14,31),(14,32),(15,33),(15,34),(16,35),(16,36),(17,37),(17,38),(18,39),(18,40),(19,41),(19,42),(20,43),(20,44),(21,45),(21,46),(22,47),(22,48),(23,49),(23,50),(24,51),(24,52),(25,53),(25,54),(26,55),(26,56),(27,57),(27,58),(28,59),(28,60),(29,61),(29,62),(30,63),(30,64),(31,65),(31,66),(32,67),(32,68),(33,69),(33,70),(34,71),(34,72),(35,73),(35,74),(36,75),(36,76),(37,77),(37,78),(38,79),(38,80),(39,81),(39,82),(40,83),(40,84),(41,85),(41,86),(42,87),(42,88),(43,89),(43,90),(44,91),(44,92),(45,93),(45,94),(46,95),(46,96),(47,97),(47,98),(48,99),(48,100),(49,101),(49,102),(50,103),(50,104),(51,105),(51,106),(52,107),(52,108),(53,109),(53,110),(54,111),(54,112),(55,113),(55,114),(56,115),(56,116),(57,117),(57,118);
/*!40000 ALTER TABLE `tourtourdate` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-01-31 12:19:08
