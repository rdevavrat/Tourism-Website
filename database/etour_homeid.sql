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
-- Table structure for table `homeid`
--

DROP TABLE IF EXISTS `homeid`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `homeid` (
  `tour_tourid` int(11) NOT NULL,
  `categoryref_homeid` int(11) NOT NULL,
  PRIMARY KEY (`tour_tourid`,`categoryref_homeid`),
  UNIQUE KEY `categoryref_homeid` (`categoryref_homeid`),
  KEY `FKB7C7463AF9A989EB` (`categoryref_homeid`),
  KEY `FKB7C7463A1B723E1B` (`tour_tourid`),
  CONSTRAINT `FKB7C7463A1B723E1B` FOREIGN KEY (`tour_tourid`) REFERENCES `tour` (`tourid`),
  CONSTRAINT `FKB7C7463AF9A989EB` FOREIGN KEY (`categoryref_homeid`) REFERENCES `category` (`homeid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `homeid`
--

LOCK TABLES `homeid` WRITE;
/*!40000 ALTER TABLE `homeid` DISABLE KEYS */;
INSERT INTO `homeid` VALUES (55,19),(56,20),(57,21),(52,22),(53,23),(54,24),(1,26),(2,27),(3,28),(4,29),(5,30),(6,31),(7,32),(8,33),(9,34),(10,35),(11,36),(12,37),(13,38),(14,39),(15,40),(16,41),(17,42),(18,43),(19,44),(20,45),(21,46),(22,47),(23,48),(24,49),(25,50),(26,51),(27,52),(28,53),(29,54),(30,55),(31,56),(32,57),(33,58),(34,59),(35,60),(36,61),(37,62),(38,63),(39,64),(40,65),(41,66),(42,67),(43,68),(44,69),(45,70),(49,71),(50,72),(51,73),(36,74);
/*!40000 ALTER TABLE `homeid` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-01-31 12:19:13
