-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 10, 2019 at 04:55 AM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 7.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db538199618`
--

-- --------------------------------------------------------

--
-- Table structure for table `phrase_firma`
--

CREATE TABLE `phrase_firma` (
  `firma_id` smallint(5) UNSIGNED NOT NULL,
  `firma` varchar(45) NOT NULL,
  `strasse1` varchar(45) NOT NULL,
  `strasse2` varchar(45) DEFAULT NULL,
  `strasse3` varchar(45) DEFAULT NULL,
  `plz` varchar(10) NOT NULL,
  `ort` varchar(60) NOT NULL,
  `land_id` smallint(5) UNSIGNED NOT NULL,
  `telefon` varchar(25) NOT NULL,
  `telefax` varchar(25) DEFAULT NULL,
  `email` varchar(30) NOT NULL,
  `phrasenkatalog_id` int(10) UNSIGNED DEFAULT NULL,
  `kuerzel` varchar(15) DEFAULT NULL,
  `kreditpunkte` mediumint(9) NOT NULL,
  `zeitstempel` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `phrase_firma`
--

INSERT INTO `phrase_firma` (`firma_id`, `firma`, `strasse1`, `strasse2`, `strasse3`, `plz`, `ort`, `land_id`, `telefon`, `telefax`, `email`, `phrasenkatalog_id`, `kuerzel`, `kreditpunkte`, `zeitstempel`) VALUES
(1, 'Rimpido GmbH', 'Reiherstieg 40', '', '', '21244', 'Buchholz in der Nordheide', 56, '04181/1386456', '04181/1386457', 'info@rimpido.com', NULL, NULL, 3, '2012-07-30 16:25:00'),
(2, 'DocÖga', 'Mendelssohnstraße 74', '', '', '22761', 'Hamburg', 56, '040/23409022', '', 'x@y.de', NULL, NULL, 0, '2012-08-24 10:29:43'),
(3, 'Privat', 'Auch hier', '', '', '333', 'Heaven', 56, '0900 666 666', '', '6to4@sixxs.com', NULL, '', 0, '2013-06-17 19:30:40'),
(4, 'Sigma-Aldrich', 'Via Gallarate 154', '', '', '20151', 'Milano', 12, '+39 02 33417345', '+39 02 33417209', '', NULL, 'ZSIAL', 0, '2013-12-11 12:57:59'),
(5, 'Krka', 'Šmarješka cesta 6 ', '', '', '8000', 'Novo mesto ', 193, '+386 7 331 21 11', '+386 7 332 15 37', 'info@krka.biz', NULL, '', 0, '2014-05-14 12:00:59'),
(6, 'Schülke & Mayr GmbH', 'Robert-Koch-Straße 2', '', '', '22851', 'Norderstedt ', 56, '', '', '', NULL, 'ZSM', 0, '2015-02-27 10:15:57'),
(7, 'Compo-Expert', 'Gildenstraße 38', '', '', '48157 ', 'Münster ', 56, '', '', '', NULL, '', 0, '2016-05-27 09:57:45'),
(8, 'Compo-Consumer', 'Gildenstraße 38', '', '', 'Münster ', '48157', 56, '', '', '', NULL, '', 0, '2016-05-27 09:59:42'),
(9, 'Lonza AG', 'Muenchensteinerstrasse 38', '', '', '4002', 'Basel', 40, '', '', '', NULL, '', 0, '2016-07-22 11:51:02');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `phrase_firma`
--
ALTER TABLE `phrase_firma`
  ADD PRIMARY KEY (`firma_id`),
  ADD KEY `land_id` (`land_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `phrase_firma`
--
ALTER TABLE `phrase_firma`
  MODIFY `firma_id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `phrase_firma`
--
ALTER TABLE `phrase_firma`
  ADD CONSTRAINT `phrase_firma_ibfk_1` FOREIGN KEY (`land_id`) REFERENCES `phrase_land` (`land_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
