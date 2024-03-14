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

-- Dumping structure for table rxpharmacy.customer
CREATE TABLE IF NOT EXISTS `customer` (
  `idcustomer` int NOT NULL AUTO_INCREMENT,
  `name` varchar(145) NOT NULL,
  `email` varchar(145) NOT NULL,
  `address` varchar(245) NOT NULL,
  `prescription` varchar(145) NOT NULL,
  `note` varchar(45) NOT NULL,
  `phoneno` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`idcustomer`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- Dumping data for table rxpharmacy.customer: ~4 rows (approximately)
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` (`idcustomer`, `name`, `email`, `address`, `prescription`, `note`, `phoneno`) VALUES
	(2, 'Hazeem', 'hazeemdoz@gmail.com', '87/1,1/1,abdulhameed street, colombo-12.', 'productImages/pres2.jpg', 'nnddmae', '+94773342225'),
	(3, 'admin', 'hazeemdoz@gmail.com', '87/1,1/1,abdulhameed street, colombo-12.', 'productImages/pres2.jpg', 'jbjblkfndllkwelfnlek', '+94773342225'),
	(4, 'bk', 'hazeemdoz@gmail.com', '87/1,1/1,abdulhameed street, colombo-12.', 'productImages/pres2.jpg', 'jkqndqekfmel;', '+94773342225'),
	(5, 'admin', 'hazeemdoz@gmail.com', '87/1,1/1,abdulhameed street, colombo-12.', 'productImages/pres2.jpg', 'fdthgmfhjvjhf', '+94773342225');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;

-- Dumping structure for table rxpharmacy.products
CREATE TABLE IF NOT EXISTS `products` (
  `idproducts` int NOT NULL AUTO_INCREMENT,
  `name` varchar(245) DEFAULT NULL,
  `description` varchar(545) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `qty` varchar(45) DEFAULT NULL,
  `is_active` tinyint DEFAULT NULL,
  `sell_price` double DEFAULT NULL,
  PRIMARY KEY (`idproducts`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- Dumping data for table rxpharmacy.products: ~3 rows (approximately)
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` (`idproducts`, `name`, `description`, `qty`, `is_active`, `sell_price`) VALUES
	(1, 'piriton', 'A colourless syrup containing 2mg of chlorphenamine maleate in 5ml. Syrup. Piriton Syrup is indicated for symptomatic control of all allergic conditions responsive to antihistamines, including hay fever, vasomotor rhinitis, urticaria, angioneurotic oedema, food allergy, drug and serum reactions, insect bites', '4', 1, 200),
	(2, 'omocrazole', 'Omeprazole is used to treat certain conditions where there is too much acid in the stomach. It is used to treat gastric and duodenal ulcers, erosive esophagitis, and gastroesophageal reflux disease (GERD). GERD is a condition where the acid in the stomach washes back up into the esophagus', '5', 1, 150),
	(3, 'amoxiline', 'Amoxicillin is used to treat a wide variety of bacterial infections. This medication is a penicillin-type antibiotic. It works by stopping the growth of bacteria. This antibiotic treats only bacterial infections. It will not work for viral infections (such as common cold, flu).', '5', 1, 200);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;

-- Dumping structure for table rxpharmacy.users
CREATE TABLE IF NOT EXISTS `users` (
  `idusers` int NOT NULL AUTO_INCREMENT,
  `name` varchar(145) NOT NULL,
  `username` varchar(245) NOT NULL,
  `password` varchar(145) NOT NULL,
  PRIMARY KEY (`idusers`,`password`),
  UNIQUE KEY `username_UNIQUE` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- Dumping data for table rxpharmacy.users: ~1 rows (approximately)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`idusers`, `name`, `username`, `password`) VALUES
	(1, 'hazeem', 'hazeem', '1234');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
