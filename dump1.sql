-- MySQL dump 10.16  Distrib 10.1.29-MariaDB, for Win32 (AMD64)
--
-- Host: localhost    Database: r_b_s
-- ------------------------------------------------------
-- Server version	10.1.29-MariaDB

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
-- Table structure for table `booking`
--

DROP TABLE IF EXISTS `booking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `booking` (
  `id` int(3) NOT NULL AUTO_INCREMENT,
  `date_time` datetime NOT NULL,
  `duration` time NOT NULL,
  `roomNumber` int(3) DEFAULT NULL,
  `BookedByID` int(3) DEFAULT NULL,
  `estimatedAttendies` int(3) DEFAULT NULL,
  `eventName` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_bookingID` (`id`),
  KEY `booking_ibfk_1` (`BookedByID`),
  KEY `room_idfk_2` (`roomNumber`),
  CONSTRAINT `booking_ibfk_1` FOREIGN KEY (`BookedByID`) REFERENCES `user` (`user_id`),
  CONSTRAINT `room_idfk_2` FOREIGN KEY (`roomNumber`) REFERENCES `room` (`roomNumber`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `booking`
--

LOCK TABLES `booking` WRITE;
/*!40000 ALTER TABLE `booking` DISABLE KEYS */;
INSERT INTO `booking` VALUES (2,'2018-01-02 10:00:00','02:00:00',9,3,20,'lesson'),(3,'2018-01-03 10:00:00','02:00:00',3,2,20,'lesson'),(4,'2018-01-04 10:00:00','02:00:00',4,3,20,'lesson'),(5,'2018-01-05 10:00:00','02:00:00',5,3,20,'lesson'),(6,'2018-01-06 10:00:00','02:00:00',1,1,20,'lesson'),(7,'2018-01-07 10:00:00','02:00:00',2,3,20,'lesson'),(8,'2018-01-08 10:00:00','02:00:00',3,2,20,'lesson'),(9,'2018-01-11 10:00:00','02:00:00',4,3,20,'lesson'),(10,'2018-01-18 10:00:00','02:00:00',4,8,20,'lesson'),(12,'2018-01-02 16:00:00','02:00:00',2,3,20,'lesson'),(13,'2018-01-03 16:00:00','02:00:00',3,2,20,'lesson'),(14,'2018-01-04 16:00:00','02:00:00',4,7,20,'lesson'),(15,'2018-01-05 16:00:00','02:00:00',5,2,20,'lesson'),(17,'2018-01-07 16:00:00','02:00:00',2,6,20,'lesson'),(18,'2018-01-08 16:00:00','02:00:00',3,2,20,'lesson'),(19,'2018-01-09 16:00:00','02:00:00',4,3,20,'lesson'),(20,'2018-01-10 16:00:00','02:00:00',5,10,20,'lesson'),(21,'2018-02-02 10:00:00','02:00:00',9,3,20,'lesson'),(22,'2018-02-03 10:00:00','02:00:00',3,2,20,'lesson'),(23,'2018-02-04 10:00:00','02:00:00',4,3,20,'lesson'),(24,'2018-02-05 10:00:00','02:00:00',5,3,20,'lesson'),(25,'2018-02-06 10:00:00','02:00:00',1,1,20,'lesson'),(26,'2018-02-07 10:00:00','02:00:00',2,3,20,'lesson'),(27,'2018-02-08 10:00:00','02:00:00',3,2,20,'lesson'),(28,'2018-02-09 10:00:00','02:00:00',4,3,20,'lesson'),(29,'2018-02-10 10:00:00','02:00:00',4,8,20,'lesson'),(30,'2018-02-02 16:00:00','02:00:00',2,3,20,'lesson'),(31,'2018-02-03 16:00:00','02:00:00',3,2,20,'lesson'),(32,'2018-02-04 16:00:00','02:00:00',4,7,20,'lesson'),(33,'2018-02-05 16:00:00','02:00:00',5,2,20,'lesson'),(34,'2018-02-07 16:00:00','02:00:00',2,6,20,'lesson'),(35,'2018-02-08 16:00:00','02:00:00',3,2,20,'lesson'),(36,'2018-02-09 16:00:00','02:00:00',4,3,20,'lesson'),(37,'2018-02-10 16:00:00','02:00:00',5,10,20,'lesson'),(41,'2018-04-18 08:00:00','02:00:00',1,2,12,'talk'),(42,'2018-04-11 08:00:00','02:00:00',1,2,12,'talk'),(43,'2018-04-25 08:00:00','02:00:00',1,2,12,'talk');
/*!40000 ALTER TABLE `booking` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `room`
--

DROP TABLE IF EXISTS `room`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `room` (
  `id` int(3) NOT NULL AUTO_INCREMENT,
  `roomNumber` int(3) DEFAULT NULL,
  `roomType` int(2) DEFAULT NULL,
  `capacity` int(3) DEFAULT NULL,
  `phoneNumber` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roomNumber` (`roomNumber`),
  KEY `idx_roomNumber` (`roomNumber`),
  KEY `roomtype_fkid_1` (`roomType`),
  CONSTRAINT `roomtype_fkid_1` FOREIGN KEY (`roomType`) REFERENCES `roomcat` (`roomType`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `room`
--

LOCK TABLES `room` WRITE;
/*!40000 ALTER TABLE `room` DISABLE KEYS */;
INSERT INTO `room` VALUES (1,1,1,30,123456),(2,2,2,30,543254),(3,3,3,30,45535),(4,4,3,30,354054),(5,5,2,30,354545),(6,6,1,40,354354),(7,7,0,40,454534),(8,8,2,40,453543),(9,9,3,40,435434);
/*!40000 ALTER TABLE `room` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roomcat`
--

DROP TABLE IF EXISTS `roomcat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roomcat` (
  `roomType` int(3) DEFAULT NULL,
  `typeOfRoom` varchar(50) DEFAULT NULL,
  UNIQUE KEY `roomType` (`roomType`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roomcat`
--

LOCK TABLES `roomcat` WRITE;
/*!40000 ALTER TABLE `roomcat` DISABLE KEYS */;
INSERT INTO `roomcat` VALUES (0,'lecture'),(1,'meeting'),(2,'computer lab'),(3,'music studio'),(4,'general');
/*!40000 ALTER TABLE `roomcat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `user_id` int(3) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `hashpass` char(166) DEFAULT NULL,
  `role` tinyint(1) DEFAULT '0',
  `email` varchar(50) DEFAULT NULL,
  `phoneNumber` int(10) DEFAULT NULL,
  `officeNumber` int(3) DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `name` (`name`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'joe','1000:ff5ce535ab10077a0ef88def31cc8056:51a92352da3a84c2af2b2a211c2af42e27cb30c53c6a98d74399eca8d44de93da3f23cd7b8006c3bceb4e7d3c0afd8641a72074efea3772a41deed1869cb347e',0,'joe@email.com',544651654,NULL),(2,'peter','1000:ff5ce535ab10077a0ef88def31cc8056:51a92352da3a84c2af2b2a211c2af42e27cb30c53c6a98d74399eca8d44de93da3f23cd7b8006c3bceb4e7d3c0afd8641a72074efea3772a41deed1869cb347e',1,'peter@email.com',544651654,NULL),(3,'mark','1000:ff5ce535ab10077a0ef88def31cc8056:51a92352da3a84c2af2b2a211c2af42e27cb30c53c6a98d74399eca8d44de93da3f23cd7b8006c3bceb4e7d3c0afd8641a72074efea3772a41deed1869cb347e',NULL,'mark@email.com',544651654,NULL),(4,'adam',NULL,NULL,'adam@email.com',544651654,NULL),(5,'terry',NULL,NULL,'terry@email.com',544651654,NULL),(6,'dylan',NULL,NULL,'dylan@email.com',544651654,1),(7,'jacob',NULL,NULL,'jacob@email.com',544651654,1),(8,'chirs',NULL,NULL,'chirs@email.com',544651654,2),(9,'patrik',NULL,NULL,'patrik@email.com',544651654,3),(10,'alfred',NULL,NULL,'alfred@email.com',544651654,4),(14,'tom','1000:ff5ce535ab10077a0ef88def31cc8056:51a92352da3a84c2af2b2a211c2af42e27cb30c53c6a98d74399eca8d44de93da3f23cd7b8006c3bceb4e7d3c0afd8641a72074efea3772a41deed1869cb347e',1,'tom@email',65465465,NULL);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-04-13 10:42:18
