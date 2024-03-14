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

-- Dumping data for table mydb.admin: ~0 rows (approximately)
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` (`NIC`, `name`, `dob`, `mobile`, `address`, `email`, `password`, `is_active`) VALUES
	('199835410549', 'Hazeem', '1998-12-19', '0773342225', 'col-12.', 'hazeemdonz@gmail.com', '12345', 1);
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;

-- Dumping data for table mydb.candidates: ~5 rows (approximately)
/*!40000 ALTER TABLE `candidates` DISABLE KEYS */;
INSERT INTO `candidates` (`id`, `name`, `NIC`, `mobile`, `email`, `address`, `dob`, `party_idparty`) VALUES
	(1, 'Abdullah', '200410304063', '0781047835', 'abdullahzufar04@gmail.com', 'Colombo-12', '2004-04-12', 2),
	(3, 'Hassan', '199865410549', '0774663747', 'hassan@gmail.com', 'Kandy.', '1998-08-24', 3),
	(4, 'Hazeem', '199835410549', '0773342225', 'hazeemcool@gmail.com', 'col-12.', '1998-12-19', 4),
	(5, 'Waseem', '200112502120', '0764406436', 'waseemcool@gmail.com', 'col-12.', '2001-05-04', 3),
	(6, 'Fazeel', '199335410659', '0773102549', 'fazeelcool@gmail.com', 'Kandy.', '1993-06-05', 2),
	(7, 'Amad', '199546789411', '0784512364', 'amad@gmail.com', 'Galle', '1995-05-24', 4);
/*!40000 ALTER TABLE `candidates` ENABLE KEYS */;

-- Dumping data for table mydb.party: ~2 rows (approximately)
/*!40000 ALTER TABLE `party` DISABLE KEYS */;
INSERT INTO `party` (`idparty`, `name`, `image`) VALUES
	(2, 'Samagi jana bala vagaya', 'logos//sjb.png'),
	(3, 'Janat vimukti peramuna', 'logos//jvp.jpg'),
	(4, 'United national party', 'logos//unp.png');
/*!40000 ALTER TABLE `party` ENABLE KEYS */;

-- Dumping data for table mydb.users: ~9 rows (approximately)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`NIC`, `name`, `dob`, `mobile`, `address`, `email`, `password`, `is_active`) VALUES
	('198721548796', 'Rashad', '1987-12-27', 714567892, 'Kandy.', 'rashad@gmail.com', '1234', 1),
	('199054128715', 'zameer', '1990-10-21', 768745120, 'Kandy.', 'zameer@gmail.com', '1234', 1),
	('199798741254', 'Arkam', '1997-06-04', 724567891, 'Wattala.', 'arkam@gmail.com', 'arkam1234', 1),
	('199835410549', 'hazeem', '1998-12-19', 773342225, 'col-12.', 'hazeem@gmail.com', '12345', 1),
	('199864587912', 'Fahad', '1998-06-28', 784596321, 'KAndy.', 'fahad@gmail.com', 'fahad456', 1),
	('199865421598', 'Hassan', '1998-05-08', 714569874, 'Kandy.', 'hassan@gmail.com', '1234', 1),
	('200020010020', 'zamrin', '2000-10-26', 765412398, 'Matale', 'zamrin@gmail.com', '1234', 1),
	('200112502120', 'waseem', '2001-04-06', 764406436, 'col-12.', 'waseem@gmail.com', '1234', 1),
	('200410304063', 'Abdullah', '2004-04-12', 781047836, '111/2,Abdul Hameed Street Colombo-12', 'abdullahzufar04@gmail.com', 'Abdullah', 1);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

-- Dumping data for table mydb.voting: ~9 rows (approximately)
/*!40000 ALTER TABLE `voting` DISABLE KEYS */;
INSERT INTO `voting` (`id`, `candidates_idcandidates`, `users_NIC`, `date`) VALUES
	(4, 1, '199835410549', '2021-09-24 14:49:15'),
	(5, 3, '199054128715', '2021-09-24 17:14:40'),
	(6, 3, '200410304063', '2021-09-24 23:22:44'),
	(7, 4, '199864587912', '2021-09-24 23:26:57'),
	(8, 1, '200112502120', '2021-09-24 23:31:46'),
	(9, 1, '199798741254', '2021-09-24 23:36:46'),
	(10, 1, '198721548796', '2021-09-24 23:37:50'),
	(12, 1, '199865421598', '2021-09-24 23:47:37'),
	(13, 1, '200020010020', '2021-09-25 00:44:03');
/*!40000 ALTER TABLE `voting` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
