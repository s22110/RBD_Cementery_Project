-- MySQL dump 10.16  Distrib 10.1.26-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: s22110
-- ------------------------------------------------------
-- Server version	10.1.26-MariaDB-0+deb9u1

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
-- Table structure for table `corpse`
--

DROP TABLE IF EXISTS `corpse`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `corpse` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(60) NOT NULL DEFAULT 'N',
  `last_name` varchar(60) NOT NULL DEFAULT 'N',
  `birth_date` date DEFAULT NULL,
  `death_date` date DEFAULT NULL,
  `burial_date` date NOT NULL,
  `grave_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `corpse`
--

LOCK TABLES `corpse` WRITE;
/*!40000 ALTER TABLE `corpse` DISABLE KEYS */;
INSERT INTO `corpse` VALUES (1,'Zinaida','Kołmogorowa','0000-00-00','0000-00-00','0000-00-00',0),(2,'Jurij','Doroszenko','0000-00-00','0000-00-00','0000-00-00',0),(3,'Liudmiła','Dubinina','0000-00-00','0000-00-00','0000-00-00',0),(4,'Aleksander','Kolewatow','0000-00-00','0000-00-00','0000-00-00',0),(5,'Rustem','Słobodin','0000-00-00','0000-00-00','0000-00-00',0),(6,'ᛚᛟᚲᛚᛁ','ᛚᛁᛖᚠᚨᛏᚺᛖᚱ','0000-00-00','0000-00-00','0000-00-00',0),(7,'ᛏᚺᛟᚱ','ᛟᛞᛁᚾᛋᛟᚾ','0000-00-00','0000-00-00','0000-00-00',0),(8,'ᚠᛖᚾᚱᛁᚱ','ᛞᛟᛟᛗᛒᚱᛁᚾᚷᛖᚱ','0000-00-00','0000-00-00','0000-00-00',0),(9,'ᚨᛋᛏᚱᛁᛞ','ᛒᛃᛟᚱᚾᛞᛟᛏᛏᛁᚱ','0000-00-00','0000-00-00','0000-00-00',0),(10,'N','N','0000-00-00','0000-00-00','0000-00-00',0),(11,'N','N','0000-00-00','0000-00-00','0000-00-00',0),(12,'Peter','Parker','0000-00-00','0000-00-00','0000-00-00',0),(13,'Bruce','Banner','0000-00-00','0000-00-00','0000-00-00',0),(14,'Steven','Strange','0000-00-00','0000-00-00','0000-00-00',0),(15,'Kurt','Cobain','0000-00-00','0000-00-00','0000-00-00',0),(16,'Alice','Cooper','0000-00-00','0000-00-00','0000-00-00',0),(17,'Bob','Marley','0000-00-00','0000-00-00','0000-00-00',0),(18,'Frodo','Baggins','0000-00-00','0000-00-00','0000-00-00',0),(19,'Antoni','Zieliński','0000-00-00','0000-00-00','0000-00-00',0),(20,'Kacper','Woźniak','0000-00-00','0000-00-00','0000-00-00',0);
/*!40000 ALTER TABLE `corpse` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(60) NOT NULL,
  `last_name` varchar(60) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (1,'Al','Capone'),(2,'Igor','Diatłow'),(3,'Stanisław','Lem'),(4,'Juri','Judin'),(5,'Leonid','Patruszew'),(6,'Gieorgij','Kriwoniszczenko'),(7,'Luke','Skywalker'),(8,'Joanna','D`arc'),(9,'Rustem','Słobodin'),(10,'Sławomir','Myszka'),(11,'Olga','Brzoza'),(12,'Tadeusz','Śmiały'),(13,'Luiza','Jarzębska'),(14,'Anita','Królik'),(15,'Tom','Major'),(16,'Mateusz','Złoty'),(17,'Agata','Polewa'),(18,'Mateusz','Borek'),(19,'Tomasz','Sawicki'),(20,'Piotr','Zarzycki');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employee` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(60) NOT NULL,
  `last_name` varchar(60) NOT NULL,
  `position` enum('DWARF','DIGGER','COACH','PRIEST','THIEF','GRIM_REAPER') DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES (1,'Gimli','Gimlowski','DWARF'),(2,'Mirek','Kosiarski','GRIM_REAPER'),(3,'Dariusz','Radzicki','COACH'),(4,'Lucjan','Niewierny','PRIEST'),(5,'Zdzisław','Lepkoręki','THIEF'),(6,'Lucyfer','Gwiazdoranny','PRIEST'),(7,'Katarzyna','Adamowska','DWARF'),(8,'Zawisza','Czarny','DIGGER'),(9,'Piotr','Gratowski','DIGGER'),(10,'Weronika','Lasocka','DIGGER'),(11,'Michał','Sołtys','COACH'),(12,'Emil','Pawlicz','PRIEST'),(13,'Marzena','Królik','DIGGER'),(14,'Anna','Parafiańczyk','THIEF'),(15,'Zenon','Jarzębski','DWARF'),(16,'Mateusz','Marowiecki','DWARF'),(17,'Lidia','Migowiak','GRIM_REAPER'),(18,'Milena','Aktoriusz','PRIEST'),(19,'Dariusz','Skulowski','THIEF'),(20,'Paweł','Kiepściuch','DIGGER');
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee_order`
--

DROP TABLE IF EXISTS `employee_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employee_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee_order`
--

LOCK TABLES `employee_order` WRITE;
/*!40000 ALTER TABLE `employee_order` DISABLE KEYS */;
INSERT INTO `employee_order` VALUES (1,1,1),(2,2,1),(3,3,1),(4,7,1),(5,10,2),(6,9,3),(7,2,3),(8,6,4),(9,8,4),(10,2,5),(11,4,6),(12,7,7),(13,5,8),(14,8,9),(15,10,10),(16,3,11),(17,4,12),(18,5,13),(19,6,15),(20,7,16);
/*!40000 ALTER TABLE `employee_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grave`
--

DROP TABLE IF EXISTS `grave`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grave` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `row` int(11) DEFAULT '0',
  `sector_id` int(11) NOT NULL DEFAULT '0',
  `capacity` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grave`
--

LOCK TABLES `grave` WRITE;
/*!40000 ALTER TABLE `grave` DISABLE KEYS */;
INSERT INTO `grave` VALUES (1,1,0,200),(2,1,0,2),(3,1,0,22),(4,1,0,2),(5,1,0,4),(6,1,0,4),(7,1,0,2),(8,2,0,3),(9,3,0,2),(10,4,0,2),(11,2,0,2),(12,3,0,1),(13,2,0,2),(14,2,0,9),(15,4,0,2),(16,3,0,3),(17,2,0,2),(18,3,0,4),(19,3,0,2),(20,2,0,1);
/*!40000 ALTER TABLE `grave` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grave_customer`
--

DROP TABLE IF EXISTS `grave_customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grave_customer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `grave_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grave_customer`
--

LOCK TABLES `grave_customer` WRITE;
/*!40000 ALTER TABLE `grave_customer` DISABLE KEYS */;
INSERT INTO `grave_customer` VALUES (1,1,4),(2,2,3),(3,3,5),(4,4,7),(5,5,10),(6,6,14),(7,7,16),(8,8,19),(9,9,20),(10,10,6),(11,11,1),(12,12,2),(13,13,12),(14,14,11),(15,15,9),(16,16,14),(17,17,8),(18,18,16),(19,19,15),(20,20,13);
/*!40000 ALTER TABLE `grave_customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_customer`
--

DROP TABLE IF EXISTS `order_customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order_customer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_customer`
--

LOCK TABLES `order_customer` WRITE;
/*!40000 ALTER TABLE `order_customer` DISABLE KEYS */;
INSERT INTO `order_customer` VALUES (1,1,3),(2,3,1),(3,4,3),(4,3,18),(5,9,16),(6,3,19),(7,4,17),(8,2,4),(9,1,9),(10,5,10),(11,6,20),(12,8,12),(13,2,15),(14,10,3),(15,4,18),(16,8,7),(17,6,13),(18,3,15),(19,5,11),(20,7,10);
/*!40000 ALTER TABLE `order_customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ordr`
--

DROP TABLE IF EXISTS `ordr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ordr` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(20) NOT NULL,
  `description` varchar(80) DEFAULT NULL,
  `price` decimal(7,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ordr`
--

LOCK TABLES `ordr` WRITE;
/*!40000 ALTER TABLE `ordr` DISABLE KEYS */;
INSERT INTO `ordr` VALUES (1,'Pogrzeb na Peję','Wiecie co z nim zrobić',2.47),(2,'Pogrzeb na Janka','Może kremóweczkę?',21.37),(3,'Sprzątanie grobu','Sprzątnąć go',6.59),(4,'Dostaraczanie klient','Porozmawiać po swojemu i do kostnicy',100.47),(5,'Ukryte zlecenie dla ','Nie zadawać pytań',12.44),(6,'Pakiet Janusza','Dostawić większy znicz niż od wujka Staszka',8.75),(7,'Grawerowanie urny','Napisać: `alt+ctrl+delete`',12.47),(8,'Edukacja','Dostarczenie materiałów dydaktycznych studentom',241.47),(9,'Dodatek do pogrzebu','Opłata za przybicie wieka trumny na wszelki wypadek',2000.00),(10,'Pakiet Fraknenstain','...',1420.47);
/*!40000 ALTER TABLE `ordr` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sector`
--

DROP TABLE IF EXISTS `sector`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sector` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sector`
--

LOCK TABLES `sector` WRITE;
/*!40000 ALTER TABLE `sector` DISABLE KEYS */;
INSERT INTO `sector` VALUES (1),(2),(3),(4),(5),(6),(7),(8),(9),(10);
/*!40000 ALTER TABLE `sector` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-01-02 17:27:13
