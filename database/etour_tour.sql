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
-- Table structure for table `tour`
--

DROP TABLE IF EXISTS `tour`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tour` (
  `tourid` int(11) NOT NULL AUTO_INCREMENT,
  `cost` double NOT NULL,
  `imagepath` varchar(255) DEFAULT NULL,
  `tourname` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`tourid`)
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tour`
--

LOCK TABLES `tour` WRITE;
/*!40000 ALTER TABLE `tour` DISABLE KEYS */;
INSERT INTO `tour` VALUES (1,100000,'images/International/Dubai/Breathtaking  Mauritius & Dubai/Mauritius_3.jpg','Breathtaking Mauritius & Dubai'),(2,99000,'images/International/Dubai/Dubai Bollywood Special/20_shutterstock_114722140.jpg','Dubai Bollywood Special'),(3,200000,'images/International/Dubai/Dubai Escapade/Dubai_9.jpg','Dubai \n\nEscapade'),(4,190000,'images/International/Dubai/Marhaba Dubai/Dubai_Mall_Dubai_1514458098.jpg','Marhaba Dubai'),(5,196000,'images/International/Dubai/Winters In Dubai/Beautiful_skyline_of_Dubai_surrounded_by_sand_dust.jpg','Winters In Dubai'),(6,200000,'images/International/Europe/Central \n\nEurope/Prague_18.jpg','Central Europe'),(7,210000,'images/International/Europe/Glimpses of Europe/Zurich_Map.jpg','Glimpses of Europe'),(8,160000,'images/International/Europe/Highlights of East \n\nEurope/Budapest_Basilica_of_St_Stephen.jpg','Highlights of East Europe'),(9,230000,'images/International/Europe/Jewels of Europe/London1234.jpg','Jewels of Europe'),(10,240000,'images/International/Europe/Swiss Paris Dreams/Switzerland Blog_1471505689.jpg','Swiss Paris Dreams'),(11,224560,'images/International/Macau/Explore Macau with Holiday Inn Cotai/Macau_Macau_Fishermans_Wharf.jpg','Explore Macau with Holiday Inn \n\nCotai'),(12,240315,'images/International/Macau/Hong Kong & \n\nMacau/Macau_cityscape_sunset.jpg','Hong Kong & Macau'),(13,340000,'images/International/Macau/Macau and Zhuhai Wonders/Chimelong_Penguin_Hotel4.jpg','Macau and Zhuhai Wonders'),(14,137457,'images/International/Macau/Venetian Delight/Macau_21.jpg','Venetian Delight'),(15,99999,'images/International/Singapore/Affordable Singapore/Singapore-Buddha_Tooth_Relic_Temple1.jpg','Affordable Singapore'),(16,109999,'images/International/Singapore/Best Of Singapore/singapore_1.jpg','Best Of Singapore'),(17,233333,'images/International/Singapore/Marvellous Singapore/Singapore_Map.jpg','Marvellous Singapore'),(18,132122,'images/International/Singapore/Soul Stirring Singapore/Sentosa_island.jpg','Soul Stirring \n\nSingapore'),(19,321563,'images/International/Singapore/Wonders of \n\nSingapore/Sentosa_Island_Weather.jpg','Wonders of Singapore'),(20,24856,'images/International/SriLanka/Beautiful SriLanka/Colombo_Colombo_National_Museum.jpg','Beautiful SriLanka'),(21,30000,'images/International/SriLanka/Charms of SriLanka/Bentota3.jpg','Charms of SriLanka'),(22,50000,'images/International/SriLanka/Scenic Sri Lanka - Ex BOM/shutterstock_123482239.jpg','Scenic Sri Lanka - Ex BOM'),(23,25000,'images/International/SriLanka/Sojourn Sri Lanka Deluxe/Dambulaa.jpg','Sojourn Sri Lanka Deluxe'),(24,39000,'images/International/SriLanka/Sun and Sand Its Sri lanka - Standard/Bentota_How_to_Reach.jpg','Sun and Sand Its Sri lanka - \n\nStandard'),(25,80000,'images/International/Australia/Australia at \n\na Glance/Sydney_Circular_Quay.jpg','Australia at a Glance'),(26,90000,'images/International/Australia/Australian Fantasy/Australia_Melbourne_MEL.jpg','Australian Fantasy'),(27,100000,'images/International/Australia/Beautiful Australia/129903-56.jpg','Beautiful Australia'),(28,99999,'images/International/Australia/Experience Australia/Melbourne_Arts_Centre_Melbourne.jpg',' Experience Australia'),(29,98000,'images/International/Australia/Melbourne-Sydney \n\nSpecial/Sydney_Chinatown.jpg','Melbourne-Sydney Special'),(30,22514,'images/Domestic tour package/Assam/Assam Hill Station Package/tawang-assam.jpg','Assam Hill Station Package'),(31,25000,'images/Domestic tour package/Assam/Assam Special Interest Tour Package/tea-testing.jpg','Assam Special Interest Tour Package'),(32,27000,'images/Domestic tour package/Goa/Fun-Filled Week in Goa/funfilled-week-in-goa-7409.jpg','Fun-Filled Week in Goa'),(33,28000,'images/Domestic tour package/Goa/Goa Honeymoon Tour/goa-honeymoon-tour-7306.jpg','Goa Honeymoon Tour'),(34,34000,'images/Domestic tour package/Himachal Pradesh/BEAUTY OF HIMACHAL/manali.jpg','BEAUTY OF HIMACHAL'),(35,35000,'images/Domestic tour package/Himachal Pradesh/BEST OF HIMACHAL PRADESH WITH AMRITSAR/Amritsar.jpg','BEST OF HIMACHAL PRADESH WITH AMRITSAR'),(36,25640,'images/Domestic tour package/kerala/Kerala Ayurveda Tour/nattika-beach-resort-ayurveda.jpg','Kerala Ayurveda Tour'),(37,26518,'images/Domestic tour package/kerala/Kerala Backwater Tour/backwater-and-beaches.jpg','Kerala Backwater Tour'),(38,24351,'images/Domestic tour package/Madhya Pradesh/Honeymoon tour/pachmarhi-tours.jpg','Honeymoon tour'),(39,29314,'images/Domestic tour package/Madhya Pradesh/Pilgrimage/allahabad.jpg','Pilgrimage'),(40,30000,'images/Domestic tour package/Maharashtra/Wardha Bapukuti/sevagram.jpg','Wardha Bapukut'),(41,22314,'images/Domestic tour package/Maharashtra/Best Beach Vacation Tour Packages for Maharashtra/alibaug-murud-beach-tour1.jpg','Best Beach Vacation Tour Packages for Maharashtra'),(42,32514,'images/Pilgrimage/12 Jyotirlinga Darshan/12-jyotirlinga-tour-package-4039.jpg','12 Jyotirlinga Darshan'),(43,24651,'images/Pilgrimage/Buddhist Circuit with Agra with Chartered Plane/buddhist-circuit-7334.jpg','Buddhist Circuit with Agra with Chartered Plane'),(44,24856,'images/Pilgrimage/Char Dham Yatra/chardham-yatra-1957.jpg','Char Dham Yatra'),(45,50000,'images/Pilgrimage/Holy Tirupati with Pondicherry/holy-tirupati-pondicherry-5281.jpg','Holy Tirupati with Pondicherry'),(46,41201,'images/Rainy Tour/6 Days Andaman Tour Package/6-days-andaman-tour-package-6273.jpg','6 Days Andaman Tour Package'),(47,54682,'images/Rainy Tour/Beautiful Shillong with Guwahatii/guwahati-shillong-5172.jpg','Beautiful Shillong with Guwahati'),(48,25468,'images/Rainy Tour/Delightful Meghalaya Tour/meghalaya-cultural-tour-715.jpg','Delightful Meghalaya Tour'),(49,90000,'images/Sports Tour/Australian Open/Novak-Djokovic-winner-Australian-Open-2013.jpg','Australian Open'),(50,200000,'images/Sports Tour/England Cricket Tour to New Zealand 2018/163783756_0_0.jpg','England Cricket Tour to New Zealand 2018'),(51,300000,'images/Sports Tour/India tour of South Africa, 2017-18/531697907-IndiavsSouthAfrica_6.jpg','India tour of South Africa, 2017-18'),(52,6000,'images/Weekend/Awesome Munnar (Online Only)/Boon-Rawd-Farm_820x318.jpg','Awesome Munnar (Online Only)'),(53,7000,'images/Weekend/Shimla Weekend Getaway/Oberoi Wildflower Hall (9)_820x318.jpg','Shimla Weekend Getaway'),(54,9000,'images/Weekend/Weekend in Lonawala/image1_820x318.jpg','Weekend in Lonawala'),(55,15000,'images/Adventure/River Rafting/brahmpuri-rishikesh-river-rafting.jpg','River Rafting'),(56,15489,'images/Adventure/Motorbiking/char-dham-motor-bike-safari.jpg','Motorbiking'),(57,25000,'images/Adventure/Mountain Biking/kaumaon-mountain-biking.jpg','Mountain Biking');
/*!40000 ALTER TABLE `tour` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-01-31 12:19:06
