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


-- Dumping database structure for codefestthree
CREATE DATABASE IF NOT EXISTS `codefestthree` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `codefestthree`;

-- Dumping structure for table codefestthree.category
CREATE TABLE IF NOT EXISTS `category` (
  `idcategory` int NOT NULL AUTO_INCREMENT,
  `category_name` varchar(425) NOT NULL,
  `category_desc` varchar(445) DEFAULT NULL,
  PRIMARY KEY (`idcategory`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8COLLATE=utf8;

-- Dumping data for table codefestthree.category: ~2 rows (approximately)
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` (`idcategory`, `category_name`, `category_desc`) VALUES
	(1, 'car', NULL),
	(2, 'bike', NULL),
	(3, 'van', NULL),
	(4, 'Tuk', NULL);
/*!40000 ALTER TABLE `category` ENABLE KEYS */;

-- Dumping structure for table codefestthree.invoice
CREATE TABLE IF NOT EXISTS `invoice` (
  `idinvoice` int NOT NULL AUTO_INCREMENT,
  `date` datetime NOT NULL,
  `tatal_amount` double NOT NULL,
  `invoice_to` int NOT NULL,
  `invoiceheckedby` int DEFAULT NULL,
  `status` int DEFAULT NULL,
  PRIMARY KEY (`idinvoice`),
  KEY `fk_user_1_idx` (`invoice_to`),
  KEY `fk_user_2_idx` (`invoiceheckedby`),
  CONSTRAINT `fk_user_1` FOREIGN KEY (`invoice_to`) REFERENCES `users` (`idusers`),
  CONSTRAINT `fk_user_2` FOREIGN KEY (`invoiceheckedby`) REFERENCES `users` (`idusers`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COLLATE=utf8;

-- Dumping data for table codefestthree.invoice: ~9 rows (approximately)
/*!40000 ALTER TABLE `invoice` DISABLE KEYS */;
INSERT INTO `invoice` (`idinvoice`, `date`, `tatal_amount`, `invoice_to`, `invoiceheckedby`, `status`) VALUES
	(1, '2021-02-12 21:05:36', 400000, 18, NULL, 2),
	(2, '2021-02-12 21:09:12', 600000, 19, NULL, 2),
	(3, '2021-02-12 21:28:00', 200000, 20, NULL, 2),
	(4, '2021-02-12 22:28:53', 400000, 21, NULL, 2),
	(5, '2021-02-12 22:32:30', 400000, 22, NULL, 2),
	(6, '2021-02-12 22:34:25', 400000, 23, NULL, 2),
	(10, '2021-02-13 00:45:56', 200000, 33, NULL, 2),
	(12, '2021-02-13 02:25:30', 400000, 35, NULL, 2),
	(13, '2021-02-13 02:31:51', 400000, 36, NULL, 2),
	(14, '2021-02-16 00:34:04', 400000, 37, NULL, 2),
	(15, '2021-02-16 01:00:36', 800000, 38, NULL, 2),
	(16, '2021-02-16 01:13:51', 1200000, 39, NULL, 2),
	(17, '2021-02-16 01:17:20', 1200000, 40, NULL, 2),
	(18, '2021-02-16 01:17:21', 1400000, 40, NULL, 2),
	(19, '2021-02-16 01:42:30', 200000, 41, NULL, 1),
	(20, '2021-02-16 02:07:54', 400000, 42, NULL, 1),
	(21, '2021-02-16 02:10:48', 200000, 43, NULL, 1);
/*!40000 ALTER TABLE `invoice` ENABLE KEYS */;

-- Dumping structure for table codefestthree.invoice_items
CREATE TABLE IF NOT EXISTS `invoice_items` (
  `idinvoice_items` int NOT NULL AUTO_INCREMENT,
  `id_item` int DEFAULT NULL,
  `id_invoice` int DEFAULT NULL,
  `line_qty` int DEFAULT NULL,
  `line_price` double DEFAULT NULL,
  PRIMARY KEY (`idinvoice_items`),
  KEY `fk_item_1_idx` (`id_invoice`),
  KEY `fk_item_2_idx` (`id_item`),
  CONSTRAINT `fk_item_1` FOREIGN KEY (`id_invoice`) REFERENCES `invoice` (`idinvoice`),
  CONSTRAINT `fk_item_2` FOREIGN KEY (`id_item`) REFERENCES `products` (`idproducts`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8;

-- Dumping data for table codefestthree.invoice_items: ~6 rows (approximately)
/*!40000 ALTER TABLE `invoice_items` DISABLE KEYS */;
INSERT INTO `invoice_items` (`idinvoice_items`, `id_item`, `id_invoice`, `line_qty`, `line_price`) VALUES
	(1, 2, 2, 1, 400000),
	(2, 3, 2, 1, 200000),
	(3, 3, 3, 1, 200000),
	(4, 2, 4, 1, 400000),
	(5, 2, 5, 1, 400000),
	(6, 2, 6, 1, 400000),
	(7, 4, 10, 1, 200000);
/*!40000 ALTER TABLE `invoice_items` ENABLE KEYS */;

-- Dumping structure for table codefestthree.products
CREATE TABLE IF NOT EXISTS `products` (
  `idproducts` int NOT NULL AUTO_INCREMENT,
  `name` varchar(245) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `sell_price` double DEFAULT NULL,
  `buy_price` double DEFAULT NULL,
  `avl_qty` double DEFAULT NULL,
  `category_product` int DEFAULT NULL,
  `image` varchar(245) DEFAULT NULL,
  `is_active` tinyint DEFAULT NULL,
  PRIMARY KEY (`idproducts`),
  KEY `FK_idproducts_category_idx` (`category_product`),
  CONSTRAINT `FK_idproducts_category` FOREIGN KEY (`category_product`) REFERENCES `category` (`idcategory`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8;

-- Dumping data for table codefestthree.products: ~3 rows (approximately)
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` (`idproducts`, `name`, `description`, `sell_price`, `buy_price`, `avl_qty`, `category_product`, `image`, `is_active`) VALUES
	(2, 'bajaj auto', 'xgfcxf', 400000, 300000, 4, 4, 'productImages/overview.jpg', 1),
	(3, 'bmw', 'vfsv', 200000, 100000, 4, 2, 'productImages/bajaj-v15-pearl-white-300x184.jpg', 1),
	(4, 'bajaj', 'Bajaj Auto Limited is an Indian multinational two-wheeler and three-wheeler manufacturing company based in Pune,', 200000, 250000, 10, 1, 'productImages/150-twin-disk-red.png', 1);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;

-- Dumping structure for table codefestthree.users
CREATE TABLE IF NOT EXISTS `users` (
  `idusers` int NOT NULL AUTO_INCREMENT,
  `name` varchar(245) NOT NULL,
  `address` varchar(545) NOT NULL,
  `contactno` varchar(50) NOT NULL DEFAULT '0',
  `email` varchar(45) NOT NULL,
  `username` varchar(145) NOT NULL,
  `password` varchar(50) DEFAULT NULL,
  `user_type` varchar(45) NOT NULL,
  `is_active` tinyint NOT NULL,
  PRIMARY KEY (`idusers`),
  UNIQUE KEY `email_UNIQUE` (`email`),
  UNIQUE KEY `username_UNIQUE` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8 COLLATE=utf8;

-- Dumping data for table codefestthree.users: ~26 rows (approximately)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`idusers`, `name`, `address`, `contactno`, `email`, `username`, `password`, `user_type`, `is_active`) VALUES
	(1, 'Hazeem', '87/1,1/1,abdulhameed street, colombo-12.', '773342225', 'hazeemdonz@gmail.com', 'hazeem', '1234', '2', 1),
	(2, 'waseem', '78,col-12', '717134567', 'wasemcool@gmail.com', 'waseem', '1234', '2', 1),
	(4, 'admin', 'colom', '0764406436', 'admin1@gmail.com', 'admin', '123', '2', 1),
	(5, 'bk', 'kjnjnk', '0764406436', 'bk@gmail.com', 'bk', 'bk', '2', 1),
	(8, 'abdullah', 'nljflllml', '0717134567', 'mdfm@gmail.com', 'abdullah', '123', '2', 1),
	(11, 'hassan', '75,col-12', '0717134456', 'hassan@gmail.com', 'hassan', '1234', '2', 1),
	(13, 'arkam', 'gvng', '0123456789', 'arkam@gmail.com', 'arkam', '12', '2', 1),
	(14, 'rdgt', 'jgvjhgj', '0717134567', 'df@dfdgf.lk', 'df', 'df', '2', 1),
	(15, 'gfh', 'fhgfv', '4356789876', 'fjhjhbjm@jhg.lj', 'jhj', '45', '2', 1),
	(16, 'yrdr', 'tftyfh', '0764406436', 'cghch@jbmj.lk', 'yr', 'yr', '2', 1),
	(18, 'arkam', 'jikj', '0717134567', 'arkam1@gmail.com', 'arkam1', '1234', '2', 1),
	(19, 'bilal', 'canada', '0123456897', 'bilal@gmail.com', 'bilal', '1234', '2', 1),
	(20, 'kjhkj', 'nmn', '0123456789', 'hjkb@k.l', 'hjkb', 'hj', '2', 1),
	(21, 'fcbf', 'vhjnbvjmn', '0773342235', 'fcb@kj.lk', 'fcb', 'fc', '2', 1),
	(22, 'hgvj', 'ghvnh', '0764406436', 'bfcb@hk.lk', 'hb', 'mbm', '2', 1),
	(23, 'fbj', 'bjbbhb', '0773342235', 'fbj@kjhkj.lk', 'hgjh', 'hbm', '2', 1),
	(24, 'bmgvm', 'gnvmh', '0773342235', 'vnb@kl.kjk', 'bmgvc', 'gvn', '2', 1),
	(25, 'khalidh', '87/1,1/1,abdulhameed street, colombo-12.', '0773342225', 'khalidh@gmail.com', 'khalidh', '1234', '2', 1),
	(27, 'rgrg', 'rfgrg', '0717134567', 'rg@lk.lj', 'rg', 're', '2', 1),
	(29, 'gdth', 'rsgtdh', '0773342225', 'abdulrahumanmuhammedwaseem@gmail.com', 'admin4', '12', '2', 1),
	(30, 'hamidh', '87/1,1/1,abdulhameed street, colombo-12.', '0123456789', 'hamidh@gmail.com', 'hamidh', 'nkl', '2', 1),
	(31, 'backround', 'frf', '0773342235', 'b@jk.lj', 'bdlk', 'nlm', '2', 1),
	(33, 'hgcgh', 'bmn ', '0132341567', 'hg@k.k', 'hg', '75', '2', 1),
	(35, 'vhgvjh', 'gfghvj', '0773342225', 'vhg@vhgvh.gj', 'vhg', 'bjb', '2', 1),
	(36, 'fcgh', 'vhjb', '0123456789', 'v@hbk.sze', 'vhsfe', '45', '2', 1),
	(37, 'admin6', 'fvcgjv', '0773342235', 'vhvbj@tfh.jnj', 'vhvb', ' nvb', '2', 1),
	(38, 'gnvjh', 'bh kj', '0717134456', 'hbjhb@bjn.jnkj', 'gn', 'dada', '2', 1),
	(39, 'mhbmhj', 'vhjgyj', '0773342235', 'ddfgc@cbc.lhbhm', 'mh', 'mhb', '2', 1),
	(40, 'frw', 'rgreger', '0717134456', 'frwg@fef.fr', 'frw', 'frf', '2', 1),
	(41, 'sfsf', 'frgr', '0717134456', 'fefa@sgfs.lfs', 'we', 'qwde', '2', 1),
	(42, 'uhdk', 'emkfme', '0717134456', ' ffnefm@mkld.fef', 'ed', 'ef', '2', 1),
	(43, 'wgrg', 'efef', '0764406436', 'efef@ffa.fa', 'faef', 'wefaf', '2', 1);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
