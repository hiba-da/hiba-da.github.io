-- MySQL dump 10.13  Distrib 8.0.13, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: election_mgmt
-- ------------------------------------------------------
-- Server version	8.0.13

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
-- Table structure for table `pollingstations`
--

DROP TABLE IF EXISTS `pollingstations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `pollingstations` (
  `PolID` int(11) NOT NULL,
  `ElecID` int(11) NOT NULL,
  `NACode` varchar(45) NOT NULL,
  `PACode` varchar(45) NOT NULL,
  PRIMARY KEY (`PolID`,`ElecID`),
  KEY `EID_idx` (`ElecID`),
  KEY `NA fk_idx` (`NACode`),
  KEY `PA fk_idx` (`PACode`),
  CONSTRAINT `ElectionID fk` FOREIGN KEY (`ElecID`) REFERENCES `election` (`electionid`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `NA fk` FOREIGN KEY (`NACode`) REFERENCES `constituency` (`C_Code`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `PK fk` FOREIGN KEY (`PACode`) REFERENCES `constituency` (`C_Code`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `PolID fk` FOREIGN KEY (`PolID`) REFERENCES `pollingstatdets` (`polid`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollingstations`
--

LOCK TABLES `pollingstations` WRITE;
/*!40000 ALTER TABLE `pollingstations` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollingstations` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-11-06 22:45:16
