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
-- Table structure for table `paxdetail`
--

DROP TABLE IF EXISTS `paxdetail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `paxdetail` (
  `paxid` int(11) NOT NULL AUTO_INCREMENT,
  `age` int(11) NOT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `beddet` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`paxid`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `paxdetail`
--

LOCK TABLES `paxdetail` WRITE;
/*!40000 ALTER TABLE `paxdetail` DISABLE KEYS */;
INSERT INTO `paxdetail` VALUES (1,14,'F','hhh','twinsharing'),(2,17,'F','dsf','singlebed'),(3,10,'F','dgd','childwithbed'),(4,27,'F','dgdfg','twinsharing'),(5,18,'F','gfdgd','twinsharing'),(6,18,'F','gfdgd','twinsharing'),(7,18,'F','gfdgd','twinsharing'),(8,18,'F','gfdgd','twinsharing'),(9,10,'F','dddd','childwithbed'),(10,13,'F','sfdsdf','singlebed'),(11,0,'F','sfdsdf',NULL),(12,14,'F','dfgdg','twinsharing'),(13,1,'F','rit','childwithbed'),(14,11,'F','nn','childwithbed'),(15,6,'F','sdf','childwithbed'),(16,11,'F','qqq','childwithbed'),(17,25,'F','wwww','twinsharing'),(18,5,NULL,'','childwithbed'),(19,2,'M','dfsd','childwithbed'),(20,3,'F','nbvn','childwithoutbed'),(21,17,NULL,'mnhvh','twinsharing'),(22,0,'M','','childwithoutbed'),(23,8,'M','asdsad','childwithoutbed'),(24,25,NULL,'Aasadasad','extraperson'),(25,8,'M','cxc','childwithoutbed'),(26,12,'M','cdc','childwithoutbed'),(27,12,'M','df','childwithoutbed'),(28,13,'F','namrata','twinsharing'),(29,26,NULL,'rita','singlebed'),(30,2,NULL,'rr','childwithbed'),(31,25,'F','sfds','extraperson'),(32,27,NULL,'adad','twinsharing'),(33,25,'F','sfds','extraperson'),(34,27,NULL,'adad','twinsharing'),(35,16,'M','dsvd','extraperson'),(36,8,'M','adasad','childwithbed'),(37,23,NULL,'sadda','twinsharing');
/*!40000 ALTER TABLE `paxdetail` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-01-31 12:19:11
