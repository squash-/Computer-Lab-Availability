-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               5.7.18-0ubuntu0.16.04.1 - (Ubuntu)
-- Server OS:                    Linux
-- HeidiSQL Version:             9.4.0.5125
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for labusage
CREATE DATABASE IF NOT EXISTS `labusage` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `labusage`;

-- Dumping structure for table labusage.comptrack
CREATE TABLE IF NOT EXISTS `comptrack` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `comp_name` varchar(100) NOT NULL,
  `login_date` date DEFAULT NULL,
  `login_time` time DEFAULT NULL,
  `login_timestamp` int(11) DEFAULT NULL,
  `logout_date` date DEFAULT NULL,
  `logout_time` time DEFAULT NULL,
  `logout_timestamp` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- Dumping data for table labusage.comptrack: 4 rows
DELETE FROM `comptrack`;
/*!40000 ALTER TABLE `comptrack` DISABLE KEYS */;
/*!40000 ALTER TABLE `comptrack` ENABLE KEYS */;

-- Dumping structure for table labusage.computer
CREATE TABLE IF NOT EXISTS `computer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `mstatus` tinyint(1) NOT NULL DEFAULT '1',
  `lab` varchar(50) NOT NULL,
  `lab_id` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `machine` (`name`),
  FULLTEXT KEY `machine_fulltext` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- Dumping data for table labusage.computer: 1 rows
DELETE FROM `computer`;
/*!40000 ALTER TABLE `computer` DISABLE KEYS */;
INSERT INTO `computer` (`id`, `name`, `mstatus`, `lab`, `lab_id`) VALUES
	(1, 'Lab01', 0, 'LAB1', 1);
/*!40000 ALTER TABLE `computer` ENABLE KEYS */;

-- Dumping structure for table labusage.lab
CREATE TABLE IF NOT EXISTS `lab` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `title` text,
  `description` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- Dumping data for table labusage.lab: 1 rows
DELETE FROM `lab`;
/*!40000 ALTER TABLE `lab` DISABLE KEYS */;
INSERT INTO `lab` (`id`, `name`, `title`, `description`) VALUES
	(1, 'LAB1', 'LAB1 (Test)', 'Test VMs');
/*!40000 ALTER TABLE `lab` ENABLE KEYS */;

-- Dumping structure for table labusage.labstats
CREATE TABLE IF NOT EXISTS `labstats` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `lab` text NOT NULL,
  `lab_id` int(11) NOT NULL,
  `stat_date` date NOT NULL,
  `stat_time` time NOT NULL,
  `available` int(11) NOT NULL,
  `occupied` int(11) NOT NULL,
  `offline` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table labusage.labstats: 0 rows
DELETE FROM `labstats`;
/*!40000 ALTER TABLE `labstats` DISABLE KEYS */;
/*!40000 ALTER TABLE `labstats` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
