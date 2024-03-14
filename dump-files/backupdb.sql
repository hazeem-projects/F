-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               8.0.20 - MySQL Community Server - GPL
-- Server OS:                    Win64
-- HeidiSQL Version:             11.0.0.5919
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for ezybooks
CREATE DATABASE IF NOT EXISTS `ezybooks` /*!40100 DEFAULT CHARACTER SET utf8 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `ezybooks`;

-- Dumping structure for table ezybooks.category
CREATE TABLE IF NOT EXISTS `category` (
  `idcategory` int NOT NULL AUTO_INCREMENT,
  `name` varchar(245) COLLATE utf8_bin NOT NULL,
  `description` varchar(345) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`idcategory`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Dumping data for table ezybooks.category: ~3 rows (approximately)
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` (`idcategory`, `name`, `description`) VALUES
	(1, 'Educational books', NULL),
	(2, 'Children books', NULL),
	(3, 'Literature books', NULL);
/*!40000 ALTER TABLE `category` ENABLE KEYS */;

-- Dumping structure for table ezybooks.invoice
CREATE TABLE IF NOT EXISTS `invoice` (
  `idinvoice` int NOT NULL AUTO_INCREMENT,
  `date` datetime NOT NULL,
  `status` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `invoice_to` int NOT NULL,
  `invoice_checkedby` int DEFAULT NULL,
  `total_amount` double DEFAULT NULL,
  PRIMARY KEY (`idinvoice`),
  KEY `fk_invoice_users1_idx` (`invoice_to`),
  KEY `fk_invoice_users2_idx` (`invoice_checkedby`),
  CONSTRAINT `fk_invoice_users1` FOREIGN KEY (`invoice_to`) REFERENCES `users` (`idusers`),
  CONSTRAINT `fk_invoice_users2` FOREIGN KEY (`invoice_checkedby`) REFERENCES `users` (`idusers`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Dumping data for table ezybooks.invoice: ~28 rows (approximately)
/*!40000 ALTER TABLE `invoice` DISABLE KEYS */;
INSERT INTO `invoice` (`idinvoice`, `date`, `status`, `invoice_to`, `invoice_checkedby`, `total_amount`) VALUES
	(1, '2021-02-27 18:06:10', '2', 3, NULL, 0),
	(2, '2021-02-27 18:22:05', '2', 1, NULL, 0),
	(3, '2021-02-27 18:31:37', '2', 1, NULL, 470),
	(4, '2021-02-27 20:26:28', '2', 1, NULL, 960),
	(5, '2021-02-27 20:27:53', '2', 1, NULL, 960),
	(6, '2021-02-27 20:41:55', '2', 1, NULL, 960),
	(7, '2021-02-27 21:22:00', '2', 1, NULL, 1920),
	(8, '2021-02-27 21:38:05', '2', 1, NULL, 960),
	(9, '2021-02-27 21:38:05', '2', 1, NULL, 1430),
	(10, '2021-02-27 21:38:16', '2', 1, NULL, 960),
	(11, '2021-02-27 21:38:16', '2', 1, NULL, 1430),
	(12, '2021-02-27 21:54:37', '2', 1, NULL, 960),
	(13, '2021-02-27 21:54:38', '2', 1, NULL, 1430),
	(14, '2021-02-27 21:54:47', '2', 1, NULL, 960),
	(15, '2021-02-28 10:39:34', '2', 2, NULL, 320),
	(16, '2021-02-28 10:46:23', '1', 3, NULL, 470),
	(17, '2021-02-28 10:56:56', '1', 3, NULL, 470),
	(18, '2021-02-28 17:44:01', '2', 3, NULL, 470),
	(19, '2021-02-28 17:44:02', '2', 3, NULL, 1430),
	(20, '2021-02-28 17:44:02', '1', 3, NULL, 1750),
	(21, '2021-04-05 20:33:18', '1', 4, NULL, 470),
	(22, '2021-04-05 20:40:19', '2', 1, NULL, 960),
	(23, '2021-04-05 20:40:19', '1', 1, NULL, 1430),
	(24, '2021-05-02 13:46:16', '2', 5, NULL, 960),
	(25, '2021-05-02 13:46:16', '1', 5, NULL, 1900),
	(26, '2021-05-03 20:48:40', '2', 6, NULL, 2150),
	(27, '2021-05-03 20:48:40', '2', 6, NULL, 2620),
	(30, '2021-05-03 21:09:04', '2', 9, NULL, 320),
	(31, '2021-07-19 23:37:35', '2', 1, NULL, 320),
	(32, '2021-10-10 00:21:13', '1', 2, NULL, 320),
	(33, '2021-10-10 00:37:41', '1', 5, NULL, 1450),
	(34, '2021-10-10 01:38:08', '2', 2, NULL, 320);
/*!40000 ALTER TABLE `invoice` ENABLE KEYS */;

-- Dumping structure for table ezybooks.invoice_items
CREATE TABLE IF NOT EXISTS `invoice_items` (
  `idinvoice_items` int NOT NULL AUTO_INCREMENT,
  `line_qty` int DEFAULT NULL,
  `line_price` double DEFAULT NULL,
  `invoice_idinvoice` int NOT NULL,
  `products_idproducts` int NOT NULL,
  PRIMARY KEY (`idinvoice_items`),
  KEY `fk_invoice_items_invoice1_idx` (`invoice_idinvoice`),
  KEY `fk_invoice_items_products1_idx` (`products_idproducts`),
  CONSTRAINT `fk_invoice_items_invoice1` FOREIGN KEY (`invoice_idinvoice`) REFERENCES `invoice` (`idinvoice`),
  CONSTRAINT `fk_invoice_items_products1` FOREIGN KEY (`products_idproducts`) REFERENCES `products` (`idproducts`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Dumping data for table ezybooks.invoice_items: ~25 rows (approximately)
/*!40000 ALTER TABLE `invoice_items` DISABLE KEYS */;
INSERT INTO `invoice_items` (`idinvoice_items`, `line_qty`, `line_price`, `invoice_idinvoice`, `products_idproducts`) VALUES
	(1, 2, 960, 6, 3),
	(2, 1, 470, 16, 1),
	(3, 1, 470, 17, 1),
	(4, 1, 470, 18, 1),
	(5, 1, 960, 18, 3),
	(6, 1, 320, 18, 4),
	(7, 1, 470, 19, 1),
	(8, 1, 960, 19, 3),
	(9, 1, 320, 19, 4),
	(10, 1, 470, 20, 1),
	(11, 1, 960, 20, 3),
	(12, 1, 320, 20, 4),
	(13, 1, 470, 21, 1),
	(14, 1, 960, 22, 3),
	(15, 1, 470, 22, 1),
	(16, 1, 960, 23, 3),
	(17, 1, 470, 23, 1),
	(18, 1, 960, 24, 3),
	(19, 2, 470, 24, 1),
	(20, 1, 960, 25, 3),
	(21, 2, 470, 25, 1),
	(22, 1, 2150, 26, 5),
	(23, 1, 470, 26, 1),
	(24, 1, 2150, 27, 5),
	(25, 1, 470, 27, 1),
	(26, 1, 320, 30, 4),
	(27, 1, 320, 31, 4),
	(28, 1, 320, 32, 4),
	(29, 1, 1450, 33, 7),
	(30, 1, 320, 34, 4);
/*!40000 ALTER TABLE `invoice_items` ENABLE KEYS */;

-- Dumping structure for table ezybooks.products
CREATE TABLE IF NOT EXISTS `products` (
  `idproducts` int NOT NULL AUTO_INCREMENT,
  `title` varchar(145) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `description` varchar(345) COLLATE utf8_bin DEFAULT NULL,
  `sell_price` double DEFAULT NULL,
  `buy_price` double DEFAULT NULL,
  `image` varchar(145) COLLATE utf8_bin DEFAULT NULL,
  `is_active` tinyint DEFAULT NULL,
  `product_category` int DEFAULT NULL,
  `avl_qty` int DEFAULT NULL,
  `author` varchar(150) COLLATE utf8_bin DEFAULT NULL,
  `ISBN` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `publisher` varchar(400) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`idproducts`),
  KEY `fk_products_category_idx` (`product_category`),
  CONSTRAINT `fk_products_category` FOREIGN KEY (`product_category`) REFERENCES `category` (`idcategory`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Dumping data for table ezybooks.products: ~6 rows (approximately)
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` (`idproducts`, `title`, `description`, `sell_price`, `buy_price`, `image`, `is_active`, `product_category`, `avl_qty`, `author`, `ISBN`, `publisher`) VALUES
	(1, 'Essential English Grammar', 'gfsbf', 470, 420, 'productImages/download (2).jfif', 1, 1, 4, 'Raymond Murphy', '9788175960299', 'Cambridge University Press'),
	(3, 'Intermediate English Grammar', 'scklcadmksa', 960, 900, 'productImages/download (3).jfif', 1, 1, 4, 'Raymond Murphy', '9788185618517', 'Cambridge University Press'),
	(4, ' Stories of Princes and Princesses', 'gvchfchg', 320, 280, 'productImages/download (6).jfif', 1, 2, 3, 'Christopher Rawson', '9780746054062', 'Raintree Publishers'),
	(5, 'Cambridge Global English Learners Book', 'ISBN:9781107613805 Author:Caroline Linse Edition:1', 2150, 2400, 'productImages/cge.jfif', 1, 1, 5, 'Caroline Linse', '9781107613805', 'Cambridge University Press'),
	(6, ' Stories for 3 Year Olds', 'Stories for 3 Year Olds', 1050, 900, 'productImages/childold.jfif', 1, 2, 6, 'Brown Watson', '9780709724933', 'Brown Watson'),
	(7, 'Cambridge English IELTS 11', 'Cambridge English IELTS 11', 1450, 1300, 'productImages/ielts11.jfif', 1, 1, 4, 'Cambridge University Pres', '9781316627303', 'Cambridge University Press');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;

-- Dumping structure for table ezybooks.users
CREATE TABLE IF NOT EXISTS `users` (
  `idusers` int NOT NULL AUTO_INCREMENT,
  `name` varchar(245) COLLATE utf8_bin NOT NULL,
  `address` varchar(345) COLLATE utf8_bin NOT NULL,
  `contactno` varchar(45) COLLATE utf8_bin NOT NULL,
  `email` varchar(145) COLLATE utf8_bin NOT NULL,
  `username` varchar(245) COLLATE utf8_bin NOT NULL,
  `password` varchar(145) COLLATE utf8_bin NOT NULL,
  `user_type` varchar(45) COLLATE utf8_bin NOT NULL,
  `is_active` tinyint NOT NULL,
  PRIMARY KEY (`idusers`),
  UNIQUE KEY `username_UNIQUE` (`username`),
  UNIQUE KEY `email_UNIQUE` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Dumping data for table ezybooks.users: ~7 rows (approximately)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`idusers`, `name`, `address`, `contactno`, `email`, `username`, `password`, `user_type`, `is_active`) VALUES
	(1, 'Hazeem', '87/1,1/1,abdulhameed street, colombo-12.', '0773342225', 'hazeemdoz@gmail.com', 'hazeem', '1234', '1', 1),
	(2, 'waseem', '87/1,1/1,abdulhameed street, colombo-12.', '0764406436', 'wasem@gmail.com', 'waseem', '1234', '2', 1),
	(3, 'admin', '87/1,1/1,abdulhameed street, colombo-12.', '0773342225', 'admin@gmail.com', 'admin', '1234', '2', 1),
	(4, 'humaidh', '12.colombo road, kandy', '0123456789', 'humaidh@dfcf.yfy', 'humaidh', '1234', '2', 1),
	(5, 'zaid', '80,abugastalava', '0745123868', 'zaid@gmail.com', 'zaid', '1234', '2', 1),
	(6, 'dfgdh', 'fhghjgfjfh', '0754689732', 'vfv@gmail.com', 'rtg', '1452', '2', 1),
	(9, 'bvnh', 'b b', '0783694569', 'bk@gmail.com', 'mhm', '45', '2', 1),
	(10, 'Abdullah', '111/2,Abdul Hameed Street Colombo-12', '0771414818', 'abdullahzufar04@gmail.com', 'kind2004', '123', '2', 1);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
