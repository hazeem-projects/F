-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               8.0.20 - MySQL Community Server - GPL
-- Server OS:                    Win64
-- HeidiSQL Version:             11.2.0.6213
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

-- Dumping structure for table classic_lounge.invoice
CREATE TABLE IF NOT EXISTS `invoice` (
  `id` int NOT NULL AUTO_INCREMENT,
  `date_time` datetime DEFAULT NULL,
  `payment` double DEFAULT NULL,
  `balance` double DEFAULT NULL,
  `unique_id` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

-- Dumping data for table classic_lounge.invoice: ~21 rows (approximately)
/*!40000 ALTER TABLE `invoice` DISABLE KEYS */;
INSERT INTO `invoice` (`id`, `date_time`, `payment`, `balance`, `unique_id`) VALUES
	(1, '2022-11-21 01:58:51', 200, 50, NULL),
	(2, '2022-11-21 02:07:33', 200, 50, NULL),
	(3, '2022-11-21 02:10:33', 200, 50, NULL),
	(4, '2022-11-21 02:13:01', 200, 50, '1668976981455-1'),
	(5, '2022-11-21 02:16:17', 200, 50, '1668977177091-1'),
	(6, '2022-11-21 02:22:51', 500, 50, '1668977571229-1'),
	(7, '2022-11-23 14:23:05', 1500, 50, '1669193585688-1'),
	(8, '2023-01-10 00:21:31', 1600, 0, '1673290291746-1'),
	(9, '2023-01-10 00:25:11', 1100, 0, '1673290511671-1'),
	(10, '2023-01-10 00:29:42', 4300, 0, '1673290782608-1'),
	(11, '2023-01-10 00:33:00', 5150, 0, '1673290980200-1'),
	(12, '2023-01-10 00:38:04', 550, 0, '1673291284627-1'),
	(13, '2023-01-10 00:40:01', 2450, 0, '1673291401945-1'),
	(14, '2023-01-10 00:42:09', 2800, 0, '1673291529294-1'),
	(15, '2023-01-10 00:45:39', 2850, 0, '1673291739960-1'),
	(16, '2023-01-10 00:52:47', 2450, 0, '1673292167403-1'),
	(17, '2023-01-10 00:56:28', 2450, 0, '1673292388419-1'),
	(18, '2023-01-10 00:58:45', 2600, 0, '1673292525883-1'),
	(19, '2023-01-10 00:59:59', 5550, 0, '1673292599708-1'),
	(20, '2023-01-10 01:02:49', 4350, 0, '1673292769269-1'),
	(21, '2023-01-10 01:15:13', 6000, 0, '1673293513461-1');
/*!40000 ALTER TABLE `invoice` ENABLE KEYS */;

-- Dumping structure for table classic_lounge.invoice_item
CREATE TABLE IF NOT EXISTS `invoice_item` (
  `idinvoice_item` int NOT NULL AUTO_INCREMENT,
  `qty` int DEFAULT NULL,
  `products_id` int NOT NULL,
  `invoice_id` int NOT NULL,
  PRIMARY KEY (`idinvoice_item`),
  KEY `fk_invoice_item_products_idx` (`products_id`),
  KEY `fk_invoice_item_invoice1_idx` (`invoice_id`),
  CONSTRAINT `fk_invoice_item_invoice1` FOREIGN KEY (`invoice_id`) REFERENCES `invoice` (`id`),
  CONSTRAINT `fk_invoice_item_products` FOREIGN KEY (`products_id`) REFERENCES `products` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8;

-- Dumping data for table classic_lounge.invoice_item: ~45 rows (approximately)
/*!40000 ALTER TABLE `invoice_item` DISABLE KEYS */;
INSERT INTO `invoice_item` (`idinvoice_item`, `qty`, `products_id`, `invoice_id`) VALUES
	(1, 1, 1, 5),
	(2, 1, 1, 6),
	(3, 3, 2, 6),
	(4, 2, 5, 7),
	(5, 3, 1, 7),
	(6, 2, 1, 8),
	(7, 3, 2, 8),
	(8, 2, 3, 8),
	(9, 2, 1, 9),
	(10, 8, 2, 9),
	(11, 2, 1, 10),
	(12, 8, 3, 10),
	(13, 2, 1, 11),
	(14, 4, 3, 11),
	(15, 8, 2, 11),
	(16, 1, 4, 11),
	(17, 4, 5, 11),
	(18, 1, 1, 12),
	(19, 3, 2, 12),
	(20, 2, 4, 12),
	(21, 2, 1, 14),
	(22, 5, 2, 14),
	(23, 4, 3, 14),
	(24, 2, 1, 15),
	(25, 3, 2, 15),
	(26, 4, 3, 15),
	(27, 5, 4, 15),
	(28, 2, 1, 18),
	(29, 3, 2, 18),
	(30, 4, 3, 18),
	(31, 3, 1, 19),
	(32, 2, 2, 19),
	(33, 4, 3, 19),
	(34, 8, 4, 19),
	(35, 5, 5, 19),
	(36, 2, 1, 20),
	(37, 3, 2, 20),
	(38, 4, 3, 20),
	(39, 5, 4, 20),
	(40, 3, 5, 20),
	(41, 1, 1, 21),
	(42, 2, 2, 21),
	(43, 4, 3, 21),
	(44, 3, 4, 21),
	(45, 7, 5, 21);
/*!40000 ALTER TABLE `invoice_item` ENABLE KEYS */;

-- Dumping structure for table classic_lounge.products
CREATE TABLE IF NOT EXISTS `products` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `price` double DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- Dumping data for table classic_lounge.products: ~5 rows (approximately)
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` (`id`, `name`, `price`) VALUES
	(1, 'Water Bottle 150ml', 150),
	(2, 'Naan Rotti', 100),
	(3, 'Beef Rotti Kotthu Normal', 500),
	(4, 'bottle', 50),
	(5, 'barbeque ', 500);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;

-- Dumping structure for table classic_lounge.user
CREATE TABLE IF NOT EXISTS `user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- Dumping data for table classic_lounge.user: ~1 rows (approximately)
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` (`id`, `username`, `password`) VALUES
	(1, 'user', '123');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
