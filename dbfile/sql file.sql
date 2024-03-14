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


-- Dumping database structure for adyapana_institute1
CREATE DATABASE IF NOT EXISTS `adyapana_institute1` /*!40100 DEFAULT CHARACTER SET utf8 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `adyapana_institute1`;

-- Dumping structure for table adyapana_institute1.class
CREATE TABLE IF NOT EXISTS `class` (
  `ClassNo` varchar(45) NOT NULL,
  `timeslot` varchar(245) DEFAULT NULL,
  `Subject_Subno` varchar(45) NOT NULL,
  `Teacher_Tno` varchar(45) NOT NULL,
  PRIMARY KEY (`ClassNo`),
  KEY `fk_Class_Subject_idx` (`Subject_Subno`),
  KEY `fk_Class_Teacher1_idx` (`Teacher_Tno`),
  CONSTRAINT `fk_Class_Subject` FOREIGN KEY (`Subject_Subno`) REFERENCES `subject` (`Subno`),
  CONSTRAINT `fk_Class_Teacher1` FOREIGN KEY (`Teacher_Tno`) REFERENCES `teacher` (`Tno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table adyapana_institute1.class: ~1 rows (approximately)
/*!40000 ALTER TABLE `class` DISABLE KEYS */;
INSERT INTO `class` (`ClassNo`, `timeslot`, `Subject_Subno`, `Teacher_Tno`) VALUES
	('Cls01', 'Morning', 'Sub01', 'Tn01'),
	('Cls02', 'EVENING', 'Sub02', 'Tn02');
/*!40000 ALTER TABLE `class` ENABLE KEYS */;

-- Dumping structure for table adyapana_institute1.invoice
CREATE TABLE IF NOT EXISTS `invoice` (
  `invoiceNo` varchar(45) NOT NULL,
  `Student_Sno` varchar(45) NOT NULL,
  `Teacher_Tno` varchar(45) NOT NULL,
  `Subject_Subno` varchar(45) NOT NULL,
  `month` varchar(45) NOT NULL,
  `value` double NOT NULL,
  PRIMARY KEY (`invoiceNo`),
  KEY `fk_Invoice_Subject1_idx` (`Subject_Subno`),
  KEY `fk_Invoice_Teacher1_idx` (`Teacher_Tno`),
  KEY `fk_Invoice_Student1_idx` (`Student_Sno`),
  CONSTRAINT `fk_Invoice_Student1` FOREIGN KEY (`Student_Sno`) REFERENCES `student` (`Sno`),
  CONSTRAINT `fk_Invoice_Subject1` FOREIGN KEY (`Subject_Subno`) REFERENCES `subject` (`Subno`),
  CONSTRAINT `fk_Invoice_Teacher1` FOREIGN KEY (`Teacher_Tno`) REFERENCES `teacher` (`Tno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table adyapana_institute1.invoice: ~1 rows (approximately)
/*!40000 ALTER TABLE `invoice` DISABLE KEYS */;
INSERT INTO `invoice` (`invoiceNo`, `Student_Sno`, `Teacher_Tno`, `Subject_Subno`, `month`, `value`) VALUES
	('In01', 'Std01', 'Tn01', 'Sub01', 'March', 1500),
	('In02', 'Std02', 'Tn02', 'Sub01', 'April', 1500),
	('In03', 'Std02', 'Tn03', 'Sub02', 'June', 1100);
/*!40000 ALTER TABLE `invoice` ENABLE KEYS */;

-- Dumping structure for table adyapana_institute1.student
CREATE TABLE IF NOT EXISTS `student` (
  `Sno` varchar(45) NOT NULL,
  `Name` varchar(245) NOT NULL,
  `Address` varchar(245) DEFAULT NULL,
  `dob` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Sno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table adyapana_institute1.student: ~2 rows (approximately)
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
INSERT INTO `student` (`Sno`, `Name`, `Address`, `dob`) VALUES
	('Std01', 'Hazeem', '80,col-12.', '1998.12.19'),
	('Std02', 'Waseem', '70,col-12.', '2001.05.04'),
	('Std03', 'waseem', 'bdhbjnkl', '2005.06.04');
/*!40000 ALTER TABLE `student` ENABLE KEYS */;

-- Dumping structure for table adyapana_institute1.student_has_class
CREATE TABLE IF NOT EXISTS `student_has_class` (
  `StudentNo` varchar(45) NOT NULL,
  `ClassNo` varchar(45) NOT NULL,
  PRIMARY KEY (`StudentNo`,`ClassNo`),
  KEY `fk_Student_has_Class_Class1_idx` (`ClassNo`),
  KEY `fk_Student_has_Class_Student1_idx` (`StudentNo`),
  CONSTRAINT `fk_Student_has_Class_Class1` FOREIGN KEY (`ClassNo`) REFERENCES `class` (`ClassNo`),
  CONSTRAINT `fk_Student_has_Class_Student1` FOREIGN KEY (`StudentNo`) REFERENCES `student` (`Sno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table adyapana_institute1.student_has_class: ~2 rows (approximately)
/*!40000 ALTER TABLE `student_has_class` DISABLE KEYS */;
INSERT INTO `student_has_class` (`StudentNo`, `ClassNo`) VALUES
	('Std01', 'Cls01'),
	('Std02', 'Cls01');
/*!40000 ALTER TABLE `student_has_class` ENABLE KEYS */;

-- Dumping structure for table adyapana_institute1.subject
CREATE TABLE IF NOT EXISTS `subject` (
  `Subno` varchar(45) NOT NULL,
  `Name` varchar(245) NOT NULL,
  `Description` varchar(245) DEFAULT NULL,
  `Price` double NOT NULL,
  PRIMARY KEY (`Subno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table adyapana_institute1.subject: ~3 rows (approximately)
/*!40000 ALTER TABLE `subject` DISABLE KEYS */;
INSERT INTO `subject` (`Subno`, `Name`, `Description`, `Price`) VALUES
	('Sub01', 'Mathemetics', 'A/L', 1500),
	('Sub02', 'Science', 'O/L', 450);
/*!40000 ALTER TABLE `subject` ENABLE KEYS */;

-- Dumping structure for table adyapana_institute1.teacher
CREATE TABLE IF NOT EXISTS `teacher` (
  `Tno` varchar(45) NOT NULL,
  `Name` varchar(245) DEFAULT NULL,
  `Address` varchar(245) DEFAULT NULL,
  `Subject` varchar(145) DEFAULT NULL,
  PRIMARY KEY (`Tno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table adyapana_institute1.teacher: ~4 rows (approximately)
/*!40000 ALTER TABLE `teacher` DISABLE KEYS */;
INSERT INTO `teacher` (`Tno`, `Name`, `Address`, `Subject`) VALUES
	('Tn01', 'Kamil', '70,col-11.', 'Maths'),
	('Tn02', 'Riyas', '50,kandy.', 'science'),
	('Tn03', 'Firdows', '86.colombo-10.', 'Islam'),
	('Tn05', 'haris', '51,col-5.', 'Mathemetics');
/*!40000 ALTER TABLE `teacher` ENABLE KEYS */;

-- Dumping structure for table adyapana_institute1.users
CREATE TABLE IF NOT EXISTS `users` (
  `idusers` int NOT NULL AUTO_INCREMENT,
  `name` varchar(145) DEFAULT NULL,
  `username` varchar(145) DEFAULT NULL,
  `password` varchar(145) DEFAULT NULL,
  PRIMARY KEY (`idusers`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- Dumping data for table adyapana_institute1.users: ~0 rows (approximately)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`idusers`, `name`, `username`, `password`) VALUES
	(1, 'Hazeem', 'hazeem', '1234'),
	(2, 'admin', 'admin', '123');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
