-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Feb 13, 2023 at 01:07 AM
-- Server version: 8.0.31
-- PHP Version: 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kladionica`
--

-- --------------------------------------------------------

--
-- Table structure for table `mecevi`
--

DROP TABLE IF EXISTS `mecevi`;
CREATE TABLE IF NOT EXISTS `mecevi` (
  `id_mec` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `naziv` varchar(50) NOT NULL,
  `domaci_kv` double NOT NULL,
  `gosti_kv` double NOT NULL,
  `nereseno_kv` double NOT NULL,
  `konacan_ish` varchar(1) NOT NULL,
  PRIMARY KEY (`id_mec`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mecevi`
--

INSERT INTO `mecevi` (`id_mec`, `naziv`, `domaci_kv`, `gosti_kv`, `nereseno_kv`, `konacan_ish`) VALUES
(1, 'Bugarska - Engleska', 14, 1.2, 6.75, '?'),
(2, 'Srbija M19 - Spanija M19', 3.55, 3.3, 2.2, '?'),
(3, 'Litvanija - Srbija', 14, 6.74, 1.2, '?'),
(4, 'Madagaskar - Crna Gora', 1.55, 3.6, 6, '?'),
(5, 'Francuska - Turska', 1.55, 4.4, 7.5, '?'),
(6, 'Moldova - Albanija', 5.1, 3.3, 1.85, '?');

-- --------------------------------------------------------

--
-- Table structure for table `stavka_tiketa`
--

DROP TABLE IF EXISTS `stavka_tiketa`;
CREATE TABLE IF NOT EXISTS `stavka_tiketa` (
  `izab_ishod` varchar(1) NOT NULL,
  `mecevi_id_mec` int NOT NULL,
  `tiket_id_tiket` int NOT NULL,
  PRIMARY KEY (`mecevi_id_mec`,`tiket_id_tiket`),
  KEY `stavka_tiketa_tiket_fk` (`tiket_id_tiket`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tiket`
--

DROP TABLE IF EXISTS `tiket`;
CREATE TABLE IF NOT EXISTS `tiket` (
  `id_tiket` int NOT NULL AUTO_INCREMENT,
  `uplata` int NOT NULL,
  PRIMARY KEY (`id_tiket`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
