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

/*
DB Structure Goes Here...
*/

/* ####### Create Sector ####### */

DROP TABLE IF EXISTS `sektor`;
CREATE TABLE `sektor` (
  `id` int(11) NOT NULL AUTO_INCREMENT
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4;


/* ####### Create Pracownik ####### */

DROP TABLE IF EXISTS `pracownik`;
CREATE TABLE `pracownik` (
    `id` int(11) NOT NULL AUTO_INCREMENT,
    `imie` varchar(60) DEFAULT NULL,
    `nazwisko` varchar(60) DEFAULT NULL,
    'data_zatrudnienia' DATE DEFAULT NULL,
    'wynagrodzenie' DECIMAL(7,5) DEFAULT NULL,
    'id_zlecenia' INT DEFAULT NULL,
    'id_kwatery' INT DEFAULT NULL
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4;


/* ####### Create grob ######## */

DROP TABLE IF EXISTS `grob`;
CREATE TABLE `grob` (
    `id` int(11) NOT NULL AUTO_INCREMENT,
    'rzad' INT DEFAULT NULL,
    'id_opiekuna' INT DEFAULT NULL,
    'id_kwatery' INT DEFAULT NULL
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4;


/* ####### Create zmarly ####### */

DROP TABLE IF EXISTS `zmarly`;
CREATE TABLE `zmarly` (
    `id` int(11) NOT NULL AUTO_INCREMENT,
    `imie` varchar(60) DEFAULT NULL,
    `nazwisko` varchar(60) DEFAULT NULL,
    'data_urodzenia' DATE DEFAULT NULL,
    'data_smierci' DECIMAL(7,5) DEFAULT NULL,
    'data_pochowku' INT DEFAULT NULL,
    'id_grobu' INT DEFAULT NULL
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4;


/* ####### Create Opiekun ####### */

DROP TABLE IF EXISTS `opiekun`;
CREATE TABLE `opiekun` (
    `id` int(11) NOT NULL AUTO_INCREMENT,
    `imie` varchar(60) DEFAULT NULL,
    `nazwisko` varchar(60) DEFAULT NULL,
    'id_grobu' INT DEFAULT NULL
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4;


/* ####### Create zlecenie ####### */

DROP TABLE IF EXISTS `zlecenie`;
CREATE TABLE `zlecenie` (
    `id` int(11) NOT NULL AUTO_INCREMENT,
    `opis` varchar(80) DEFAULT NULL,
    'data_wykonania' DATE DEFAULT NULL,
    'id_opiekuna' INT DEFAULT NULL,
    'id_grobu' INT DEFAULT NULL
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4;


/* ####### Create z-p ####### */

DROP TABLE IF EXISTS `z-p`;
CREATE TABLE `z-p` (
  `id_zlecenia` int(11) DEFAULT NULL,
  `id_pracownika` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


/* ####### Create z-o ####### */

DROP TABLE IF EXISTS `z-o`;
CREATE TABLE `z-o` (
  `id_zlecenia` int(11) DEFAULT NULL,
  `id_opiekuna` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


/* ####### Create g-o ####### */

DROP TABLE IF EXISTS `g-o`;
CREATE TABLE `g-o` (
  `id_grobu` int(11) DEFAULT NULL,
  `id_opiekuna` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-12-12 13:08:11