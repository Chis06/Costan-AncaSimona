-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: localhost    Database: sistem bancar simplificat
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.32-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `beneficiari`
--

DROP TABLE IF EXISTS `beneficiari`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `beneficiari` (
  `BeneficiarID` int(11) DEFAULT NULL,
  `ClientID` int(11) DEFAULT NULL,
  `NumeBeneficiar` varchar(100) DEFAULT NULL,
  `IBANBeneficiar` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `beneficiari`
--

LOCK TABLES `beneficiari` WRITE;
/*!40000 ALTER TABLE `beneficiari` DISABLE KEYS */;
/*!40000 ALTER TABLE `beneficiari` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clienți`
--

DROP TABLE IF EXISTS `clienți`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clienți` (
  `Nume` varchar(100) DEFAULT NULL,
  `Prenume` varchar(100) DEFAULT NULL,
  `CNP` varchar(100) DEFAULT NULL,
  `Adresă` varchar(100) DEFAULT NULL,
  `Email` varchar(100) DEFAULT NULL,
  `Telefon` varchar(100) DEFAULT NULL,
  `ID` int(11) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clienți`
--

LOCK TABLES `clienți` WRITE;
/*!40000 ALTER TABLE `clienți` DISABLE KEYS */;
/*!40000 ALTER TABLE `clienți` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `conturi`
--

DROP TABLE IF EXISTS `conturi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `conturi` (
  `ContID` int(11) NOT NULL,
  `ClientID` int(11) DEFAULT NULL,
  `TipContID` int(11) DEFAULT NULL,
  `IBAN` char(1) DEFAULT NULL,
  `Sold` decimal(10,0) DEFAULT NULL,
  `Monedă` char(1) DEFAULT NULL,
  `DataDeschiderii` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `conturi`
--

LOCK TABLES `conturi` WRITE;
/*!40000 ALTER TABLE `conturi` DISABLE KEYS */;
/*!40000 ALTER TABLE `conturi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `extrasecont`
--

DROP TABLE IF EXISTS `extrasecont`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `extrasecont` (
  `ExtrasID` int(11) NOT NULL,
  `ContID` int(11) DEFAULT NULL,
  `DataGenerare` datetime DEFAULT NULL,
  `Perioadă` varchar(100) DEFAULT NULL,
  `CaleFisier` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `extrasecont`
--

LOCK TABLES `extrasecont` WRITE;
/*!40000 ALTER TABLE `extrasecont` DISABLE KEYS */;
/*!40000 ALTER TABLE `extrasecont` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notificari`
--

DROP TABLE IF EXISTS `notificari`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notificari` (
  `NotificareID` int(11) DEFAULT NULL,
  `ClientID` int(11) DEFAULT NULL,
  `Mesaj` varchar(100) DEFAULT NULL,
  `Citit` bit(1) DEFAULT NULL,
  `DataNotificare` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notificari`
--

LOCK TABLES `notificari` WRITE;
/*!40000 ALTER TABLE `notificari` DISABLE KEYS */;
/*!40000 ALTER TABLE `notificari` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipuricont`
--

DROP TABLE IF EXISTS `tipuricont`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tipuricont` (
  `TipCont` int(11) DEFAULT NULL,
  `Denumire` varchar(100) DEFAULT NULL,
  `Dobandă` decimal(10,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipuricont`
--

LOCK TABLES `tipuricont` WRITE;
/*!40000 ALTER TABLE `tipuricont` DISABLE KEYS */;
/*!40000 ALTER TABLE `tipuricont` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transferuri`
--

DROP TABLE IF EXISTS `transferuri`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transferuri` (
  `TransferID` bigint(20) DEFAULT NULL,
  `ContSursa` int(11) DEFAULT NULL,
  `ContDestinatie` int(11) DEFAULT NULL,
  `Suma` decimal(10,0) DEFAULT NULL,
  `Detalii` varchar(100) DEFAULT NULL,
  `DataTransfer` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transferuri`
--

LOCK TABLES `transferuri` WRITE;
/*!40000 ALTER TABLE `transferuri` DISABLE KEYS */;
/*!40000 ALTER TABLE `transferuri` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tranzacții`
--

DROP TABLE IF EXISTS `tranzacții`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tranzacții` (
  `TranzacțieID` bigint(20) DEFAULT NULL,
  `ContID` int(11) DEFAULT NULL,
  `TipTranzacție` varchar(100) DEFAULT NULL,
  `Suma` decimal(10,0) DEFAULT NULL,
  `DataTranzacție` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tranzacții`
--

LOCK TABLES `tranzacții` WRITE;
/*!40000 ALTER TABLE `tranzacții` DISABLE KEYS */;
/*!40000 ALTER TABLE `tranzacții` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'sistem bancar simplificat'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-03-26 19:25:51
