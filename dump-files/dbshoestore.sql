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

-- Dumping structure for table shoe_store.customer
CREATE TABLE IF NOT EXISTS `customer` (
  `mobile` varchar(10) NOT NULL,
  `name` varchar(115) DEFAULT NULL,
  `email` varchar(115) DEFAULT NULL,
  PRIMARY KEY (`mobile`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table shoe_store.customer: ~1 rows (approximately)
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` (`mobile`, `name`, `email`) VALUES
	('0773342225', 'hazeem', NULL);
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;

-- Dumping structure for table shoe_store.employees
CREATE TABLE IF NOT EXISTS `employees` (
  `mobile` varchar(10) NOT NULL,
  `name` varchar(115) NOT NULL,
  `email` varchar(115) NOT NULL,
  `address` varchar(415) DEFAULT NULL,
  PRIMARY KEY (`mobile`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table shoe_store.employees: ~10 rows (approximately)
/*!40000 ALTER TABLE `employees` DISABLE KEYS */;
INSERT INTO `employees` (`mobile`, `name`, `email`, `address`) VALUES
	('0714568923', 'mcbfvfmh', 'vbfmhvmh@hmbfwh.b', 'mcbdm'),
	('0714856639', 'hbmhfbkjhbj', 'bfbmb@gvn.hb', 'ncn'),
	('074569845', 'hdebh', 'dgejgje@vghv.gvg', 'ehjhb'),
	('0745869153', 'hgcvdjcdjhcb', 'hbdmhb@fhbvfh.gvg', 'ehdbjden'),
	('0773115474', 'dhekdhbkj', 'bdcbdk@bhb.lk', 'vjn'),
	('0773115484', 'hbdcjdbkj', 'bdkcbkj@hbdh.hb', 'hbdmhbj'),
	('0773342228', 'hjfbmvn', 'mm@kjdn.hb', 'bbbnk'),
	('0785469854', 'mbrmr', 'bd nbc n@v.weghdv', 'wmhbcdhmbm'),
	('0789456258', 'ds vcndvc', 'cbd nbc n@nev.dhc', 'ndcdhmcmhb'),
	('0789654123', 'vddnc', 'nvjcv@eh.gd', 'dnbejh');
/*!40000 ALTER TABLE `employees` ENABLE KEYS */;

-- Dumping structure for table shoe_store.grn
CREATE TABLE IF NOT EXISTS `grn` (
  `idgrn` int NOT NULL AUTO_INCREMENT,
  `date_time` varchar(115) DEFAULT NULL,
  `payment` double DEFAULT NULL,
  `balance` double DEFAULT NULL,
  `supplier_mobile` varchar(10) NOT NULL,
  PRIMARY KEY (`idgrn`),
  KEY `fk_grn_supplier1_idx` (`supplier_mobile`),
  CONSTRAINT `fk_grn_supplier1` FOREIGN KEY (`supplier_mobile`) REFERENCES `supplier` (`mobile`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- Dumping data for table shoe_store.grn: ~6 rows (approximately)
/*!40000 ALTER TABLE `grn` DISABLE KEYS */;
INSERT INTO `grn` (`idgrn`, `date_time`, `payment`, `balance`, `supplier_mobile`) VALUES
	(1, '12:30:11 PM  2021:09:11 ', 7500, 100, '0773342256'),
	(2, '12:47:57 PM  2021:09:11 ', 7500, 100, '0773342256'),
	(3, '01:07:26 PM  2021:09:11 ', 10000, 1000, '0773342256'),
	(4, '01:12:55 PM  2021:09:11 ', 7500, 100, '0773342256'),
	(5, '01:15:52 PM  2021:09:11 ', 7500, 100, '0773342256'),
	(6, '01:19:17 PM  2021:09:11 ', 7500, 100, '0773342256');
/*!40000 ALTER TABLE `grn` ENABLE KEYS */;

-- Dumping structure for table shoe_store.grn_item
CREATE TABLE IF NOT EXISTS `grn_item` (
  `idgrn_item` int NOT NULL AUTO_INCREMENT,
  `qty` int DEFAULT NULL,
  `grn_idgrn` int NOT NULL,
  `product_idproduct` int NOT NULL,
  PRIMARY KEY (`idgrn_item`),
  KEY `fk_grn_item_grn_idx` (`grn_idgrn`),
  KEY `fk_grn_item_product1_idx` (`product_idproduct`),
  CONSTRAINT `fk_grn_item_grn` FOREIGN KEY (`grn_idgrn`) REFERENCES `grn` (`idgrn`),
  CONSTRAINT `fk_grn_item_product1` FOREIGN KEY (`product_idproduct`) REFERENCES `product` (`idproduct`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- Dumping data for table shoe_store.grn_item: ~6 rows (approximately)
/*!40000 ALTER TABLE `grn_item` DISABLE KEYS */;
INSERT INTO `grn_item` (`idgrn_item`, `qty`, `grn_idgrn`, `product_idproduct`) VALUES
	(1, 3, 1, 1),
	(2, 3, 2, 1),
	(3, 4, 3, 1),
	(4, 3, 4, 1),
	(5, 3, 5, 1),
	(6, 3, 6, 1);
/*!40000 ALTER TABLE `grn_item` ENABLE KEYS */;

-- Dumping structure for table shoe_store.invoice
CREATE TABLE IF NOT EXISTS `invoice` (
  `idinvoice` int NOT NULL AUTO_INCREMENT,
  `date_time` varchar(115) DEFAULT NULL,
  `payment` double DEFAULT NULL,
  `bal` double DEFAULT NULL,
  `customer_mobile` varchar(10) NOT NULL,
  PRIMARY KEY (`idinvoice`),
  KEY `fk_invoice_customer1_idx` (`customer_mobile`),
  CONSTRAINT `fk_invoice_customer1` FOREIGN KEY (`customer_mobile`) REFERENCES `customer` (`mobile`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- Dumping data for table shoe_store.invoice: ~3 rows (approximately)
/*!40000 ALTER TABLE `invoice` DISABLE KEYS */;
INSERT INTO `invoice` (`idinvoice`, `date_time`, `payment`, `bal`, `customer_mobile`) VALUES
	(1, 'name', 2600, 100, '0773342225'),
	(2, 'name', 7800, 200, '0773342225'),
	(3, 'name', 10400, 600, '0773342225');
/*!40000 ALTER TABLE `invoice` ENABLE KEYS */;

-- Dumping structure for table shoe_store.invoice_item
CREATE TABLE IF NOT EXISTS `invoice_item` (
  `idinvoice_item` int NOT NULL AUTO_INCREMENT,
  `qty` int DEFAULT NULL,
  `product_idproduct` int NOT NULL,
  `invoice_idinvoice` int NOT NULL,
  PRIMARY KEY (`idinvoice_item`),
  KEY `fk_invoice_item_product1_idx` (`product_idproduct`),
  KEY `fk_invoice_item_invoice1_idx` (`invoice_idinvoice`),
  CONSTRAINT `fk_invoice_item_invoice1` FOREIGN KEY (`invoice_idinvoice`) REFERENCES `invoice` (`idinvoice`),
  CONSTRAINT `fk_invoice_item_product1` FOREIGN KEY (`product_idproduct`) REFERENCES `product` (`idproduct`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- Dumping data for table shoe_store.invoice_item: ~3 rows (approximately)
/*!40000 ALTER TABLE `invoice_item` DISABLE KEYS */;
INSERT INTO `invoice_item` (`idinvoice_item`, `qty`, `product_idproduct`, `invoice_idinvoice`) VALUES
	(1, 1, 1, 1),
	(2, 3, 1, 2),
	(3, 4, 1, 3);
/*!40000 ALTER TABLE `invoice_item` ENABLE KEYS */;

-- Dumping structure for table shoe_store.owner
CREATE TABLE IF NOT EXISTS `owner` (
  `idowner` int NOT NULL,
  `name` varchar(115) DEFAULT NULL,
  `username` varchar(115) NOT NULL,
  `password` varchar(115) NOT NULL,
  PRIMARY KEY (`idowner`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table shoe_store.owner: ~1 rows (approximately)
/*!40000 ALTER TABLE `owner` DISABLE KEYS */;
INSERT INTO `owner` (`idowner`, `name`, `username`, `password`) VALUES
	(1, 'Hazeem', 'hazeem', '1234');
/*!40000 ALTER TABLE `owner` ENABLE KEYS */;

-- Dumping structure for table shoe_store.product
CREATE TABLE IF NOT EXISTS `product` (
  `idproduct` int NOT NULL AUTO_INCREMENT,
  `name` varchar(115) DEFAULT NULL,
  `qty` varchar(45) DEFAULT NULL,
  `size` varchar(45) DEFAULT NULL,
  `buyprice` double(22,0) DEFAULT NULL,
  `sellprice` double(22,0) DEFAULT NULL,
  PRIMARY KEY (`idproduct`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- Dumping data for table shoe_store.product: ~1 rows (approximately)
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` (`idproduct`, `name`, `qty`, `size`, `buyprice`, `sellprice`) VALUES
	(1, 'mens walk shoes', '14', '36', 2500, 2600);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;

-- Dumping structure for table shoe_store.supplier
CREATE TABLE IF NOT EXISTS `supplier` (
  `mobile` varchar(10) NOT NULL,
  `name` varchar(115) NOT NULL,
  `email` varchar(115) NOT NULL,
  PRIMARY KEY (`mobile`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table shoe_store.supplier: ~1 rows (approximately)
/*!40000 ALTER TABLE `supplier` DISABLE KEYS */;
INSERT INTO `supplier` (`mobile`, `name`, `email`) VALUES
	('0773342256', 'DSI', 'dsi@gmail.com');
/*!40000 ALTER TABLE `supplier` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
