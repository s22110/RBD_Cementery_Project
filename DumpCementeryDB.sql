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

/* ####### Create Sectors ####### */

DROP TABLE IF EXISTS `Sectors`;
CREATE TABLE `Sectors` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  'number' varchar(15)
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4;


/* ####### Create Employees ####### */

DROP TABLE IF EXISTS `Employees`;
CREATE TABLE `Employees` (
    `id` int(11) NOT NULL AUTO_INCREMENT,
    `first_name` varchar(60) DEFAULT NULL,
    `last_name` varchar(60) DEFAULT NULL,
    'is_currently_employed' NUMBER DEFAULT 1, /* in mySQL there is no bool values, so i menaged that it could be a number, but only 0 and 1 */
    'salary' DECIMAL(7,2) DEFAULT NULL,
    'order_id' INT DEFAULT NULL,
    'sector_id' INT DEFAULT NULL
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4;


/* ####### Create Graves ######## */

DROP TABLE IF EXISTS `Graves`;
CREATE TABLE `Graves` (
    `id` int(11) NOT NULL AUTO_INCREMENT,
    'row' INT DEFAULT NULL,
    'customer_id' INT DEFAULT NULL,
    'sector_id' INT DEFAULT NULL
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4;


/* ####### Create Corpses ####### */

DROP TABLE IF EXISTS `Corpses`;
CREATE TABLE `Corpses` (
    `id` int(11) NOT NULL AUTO_INCREMENT,
    `fist_name` varchar(60) DEFAULT NULL,
    `last_name` varchar(60) DEFAULT NULL,
    'birth_date' DATE DEFAULT NULL,
    'death_date' DATE DEFAULT NULL,
    'burial_date' DATE DEFAULT NULL,
    'grave_id' INT DEFAULT NULL
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4;


/* ####### Create Customer ####### */

DROP TABLE IF EXISTS `Customer`;
CREATE TABLE `Customer` (
    `id` int(11) NOT NULL AUTO_INCREMENT,
    `fist_name` varchar(60) DEFAULT NULL,
    `last_name` varchar(60) DEFAULT NULL,
    'grave_id' INT DEFAULT NULL
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4;


/* ####### Create Orders ####### */

DROP TABLE IF EXISTS `Orders`;
CREATE TABLE `Orders` (
    `id` int(11) NOT NULL AUTO_INCREMENT,
    `description` varchar(80) DEFAULT NULL,
    'customer_id' INT DEFAULT NULL,
    'grave_id' INT DEFAULT NULL
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4;


/* ####### Create order_on_customer ####### */

DROP TABLE IF EXISTS `order_on_customer`;
CREATE TABLE `order_on_customer` (
  `order_id` int(11) DEFAULT NULL,
  `employee_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


/* ####### Create orders_on_customers ####### */

DROP TABLE IF EXISTS `orders_on_customers`;
CREATE TABLE `orders_on_customers` (
  `order_id` int(11) DEFAULT NULL,
  `employee_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


/* ####### Create graves_on_customers ####### */

DROP TABLE IF EXISTS `graves_on_customers`;
CREATE TABLE `graves_on_customers` (
  `grave_id` int(11) DEFAULT NULL,
  `customer_id` int(11) DEFAULT NULL
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