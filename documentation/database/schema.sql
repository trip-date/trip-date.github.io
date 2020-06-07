-- MySQL dump 10.17  Distrib 10.3.22-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: tripdate
-- ------------------------------------------------------
-- Server version	10.3.22-MariaDB-0+deb10u1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `poi`
--

DROP TABLE IF EXISTS `poi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `poi` (
  `poi_ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `poi_name` varchar(128) NOT NULL,
  `poi_lat` float NOT NULL,
  `poi_lng` float NOT NULL,
  `poi_image` varchar(1000) DEFAULT NULL,
  `poi_featured` tinyint(1) NOT NULL DEFAULT 0,
  `poi_type` text DEFAULT NULL,
  `wikidata_ID` varchar(32) NOT NULL,
  PRIMARY KEY (`poi_ID`),
  UNIQUE KEY `wikidata_ID` (`wikidata_ID`),
  KEY `poi_lat` (`poi_lat`,`poi_lng`),
  KEY `poi_featured` (`poi_featured`)
) ENGINE=InnoDB AUTO_INCREMENT=104 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `poi`
--

LOCK TABLES `poi` WRITE;
/*!40000 ALTER TABLE `poi` DISABLE KEYS */;
INSERT INTO `poi` VALUES (48,'Swiss Customs Museum',45.9994,9.02108,'Swiss%20Customs%20Museum.jpg',0,NULL,'Q1725173'),(49,'Museum of natural history',46.0041,8.96036,'Mus%C3%A9e%20cantonal%20d%27histoire%20naturelle%20de%20Lugano%2008.JPG',1,NULL,'Q3329515'),(50,'Q687065',45.9535,8.95085,'Swiss%20miniatur%201.jpg',0,NULL,'Q687065'),(51,'Brissago Islands',46.1333,8.735,'Isole%20di%20Brissago%20House.jpg',0,NULL,'Q673757'),(52,'Museum of Cultures',45.9964,8.94683,'Mus%C3%A9e%20d%27Art%20moderne%20de%20Lugano%2003.JPG',0,NULL,'Q665206'),(53,'Q3868103',45.9672,8.88377,'Villa%20carolina.jpg',0,NULL,'Q3868103'),(54,'Museo Cantonale d’Arte',46.0043,8.95327,'%E2%97%8F%208626%20Museo%20Cantonale%20d%27Art.JPG',0,NULL,'Q3329511'),(55,'Q3329637',45.9959,8.94631,'Mus%C3%A9e%20d%27Art%20moderne%20de%20Lugano%2003.JPG',0,NULL,'Q3329637'),(56,'Museo Vela',45.864,8.95018,'Vela1.tif',0,NULL,'Q3867651'),(57,'Pinacoteca cantonale Giovanni Züst',45.8717,8.96887,'Rancate.jpg',0,NULL,'Q3905095'),(58,'Museo comunale d\'arte moderna',46.1557,8.76719,'Ascona%20musee%20communal%202011-07-10%2014%2027%2053%20PICT3229.JPG',0,NULL,'Q18019535'),(59,'Q27479540',46.1585,8.76286,'Casa%20Selma.jpg',0,NULL,'Q27479540'),(60,'Q27479546',46.1612,8.77449,'Entrance%20of%20Museo%20Castello%20San%20Materno.jpg',0,NULL,'Q27479546'),(61,'Q27479558',46.1546,8.76987,NULL,0,NULL,'Q27479558'),(62,'Q27479758',46.1882,9.03036,NULL,0,NULL,'Q27479758'),(63,'Q27479763',46.204,9.03299,NULL,0,NULL,'Q27479763'),(64,'Museo Villa dei Cedri',46.1846,9.02043,'Villa%20dei%20Cedri-Bellinzona.jpg',0,NULL,'Q27479764'),(65,'Q27481283',46.4055,8.87053,NULL,0,NULL,'Q27481283'),(66,'Q27484767',46.1695,8.79151,'Pinacoteca%20Casa%20Rusca.jpg',0,NULL,'Q27484767'),(67,'Q27484986',45.9841,8.94264,NULL,0,NULL,'Q27484986'),(68,'Q27484989',46.0115,8.99787,NULL,0,NULL,'Q27484989'),(69,'Q27484996',46.0046,8.9566,'Villa%20Ciani%2002.JPG',0,NULL,'Q27484996'),(70,'Mendrisio art museum',45.8728,8.9879,'Mendrisio%20art%20museum.png',0,NULL,'Q27485112'),(71,'Elisarion museum',46.1736,8.81054,'Museo%20Elisarion.jpg',0,NULL,'Q27485157'),(72,'Q27485159',46.1748,8.81482,NULL,0,NULL,'Q27485159'),(73,'Q27487042',46.1753,8.79353,'120OrselinaMadonnaSasso.jpg',0,NULL,'Q27487042'),(74,'Museum Val Verzasca',46.3502,8.78653,'Sognono%20Haus%20TI.jpg',1,NULL,'Q25399919'),(75,'Q27478270',45.9976,8.89755,NULL,0,NULL,'Q27478270'),(76,'Saint Gotthard national museum',46.5553,8.56676,'Gotthardmuseum.JPG',0,NULL,'Q27478285'),(77,'Walserhaus',46.3172,8.48997,'Walserhaus%20External%20Museum%20and%20Garden.jpg',0,NULL,'Q27479851'),(78,'Q27479969',46.1777,8.70023,NULL,0,NULL,'Q27479969'),(79,'Museum Leventina',46.4017,8.87573,'Giornico1.jpg',1,NULL,'Q27481281'),(80,'Q27481503',46.2024,8.67256,NULL,0,NULL,'Q27481503'),(81,'Blenio museum',46.4695,8.94364,'Museo%20della%20Valle%20di%20Blenio%2006.jpg',0,NULL,'Q27485116'),(82,'Museo della civiltà contadina del Mendrisiotto (Stabio, Switzerland)',45.8512,8.93919,NULL,0,NULL,'Q27488998'),(83,'Fondazione Ignaz e Mischa Epper',46.151,8.77344,'Ascona%20musee%20Epper%202011-07-10%2015%2047%2020%20PICT3259.JPG',0,NULL,'Q3747181'),(84,'Malcantone di Curio museum',46.0028,8.86169,'Museo%20del%20malcantone.jpg',0,NULL,'Q3867915'),(85,'Ethnographic museum Valle di Muggio',45.8984,9.04618,NULL,0,NULL,'Q3868364'),(86,'Q27485108',45.8706,8.98125,NULL,0,NULL,'Q27485108'),(87,'m.a.x.museo',45.8369,9.02671,NULL,0,NULL,'Q16574566'),(88,'Museo civico e archeologico',46.1679,8.79333,NULL,0,NULL,'Q27484731'),(89,'Civic museum Montebello castle',46.1913,9.02666,'Bellinzona%20Montebello.JPG',0,NULL,'Q56810164'),(90,'Q27478267',45.9679,8.85854,NULL,0,NULL,'Q27478267'),(91,'Q27478283',46.5588,8.56667,NULL,0,NULL,'Q27478283'),(92,'Q27479712',45.8423,9.0045,NULL,0,NULL,'Q27479712'),(93,'Q27479762',45.9986,8.94808,NULL,0,NULL,'Q27479762'),(94,'Q27479900',46.1193,8.71155,'Brissago%20Baccal%C3%A0%202011-07-10%2012%2019%2000%20PICT3217.JPG',0,NULL,'Q27479900'),(95,'Q27479959',46.0721,8.95008,'Complesso%20del%20Convento%20di%20S.%20Maria%20Assunta%20e%20Museo%20a%20Bigorio%20%28Kloster%20Santa%20Maria%20Assunta%20und%20Museum%29.jpg',0,NULL,'Q27479959'),(96,'Q27479964',45.974,8.87237,NULL,0,NULL,'Q27479964'),(97,'Museum Hermann Hesse Montagnola',45.983,8.91897,'2012-07-04%20Montagnola%20Hesse%20Museum%2030.JPG',0,NULL,'Q27479991'),(98,'Q27487051',45.9771,8.94702,NULL,0,NULL,'Q27487051'),(99,'Q27489063',46.1855,8.73142,NULL,0,NULL,'Q27489063'),(100,'Villa Anatta',46.1582,8.76306,'Ascona%20Monte%20Verit%C3%A0%20Casa%20Anatta%201K4A3756%20%28cropped%29.jpg',0,NULL,'Q43269234'),(101,'Q27485183',45.9239,8.91096,NULL,0,NULL,'Q27485183'),(102,'Casalgrande historical museum',46.1924,9.02207,'Castelgrande%20%28Bellinzona%29%20IV.jpg',0,NULL,'Q27479756'),(103,'Q27479821',46.358,8.9705,NULL,0,NULL,'Q27479821');
/*!40000 ALTER TABLE `poi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trip`
--

DROP TABLE IF EXISTS `trip`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trip` (
  `trip_ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `osm_ID` varchar(64) DEFAULT NULL,
  `trip_name` varchar(64) NOT NULL,
  `trip_length_m` int(10) unsigned DEFAULT NULL,
  `trip_location` varchar(64) NOT NULL,
  `trip_height` int(10) unsigned DEFAULT NULL,
  `trip_minutes` int(10) unsigned DEFAULT NULL,
  `trip_description` text DEFAULT NULL,
  `poi_ID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`trip_ID`),
  UNIQUE KEY `osm_ID` (`osm_ID`),
  KEY `poi_ID` (`poi_ID`),
  CONSTRAINT `trip_ibfk_1` FOREIGN KEY (`poi_ID`) REFERENCES `poi` (`poi_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trip`
--

LOCK TABLES `trip` WRITE;
/*!40000 ALTER TABLE `trip` DISABLE KEYS */;
INSERT INTO `trip` VALUES (2,NULL,'Path of the legends of Verzasca',4000,'Gerra Verzasca',NULL,NULL,NULL,74),(3,NULL,'Inventiveness in the absence of water',4200,'Revöira',NULL,NULL,NULL,74),(4,NULL,'The wild hay',11000,'Odro',NULL,NULL,NULL,74),(5,NULL,'Time travel',7000,'Vegornèss',NULL,NULL,NULL,74),(6,NULL,'Val Piora',NULL,'Val Piora',NULL,NULL,NULL,49),(7,NULL,'Water and Fire',2000,'Frasco',120,1,NULL,74);
/*!40000 ALTER TABLE `trip` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-06-07  9:35:13
