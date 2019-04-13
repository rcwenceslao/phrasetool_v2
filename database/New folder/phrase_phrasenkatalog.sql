-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 10, 2019 at 05:00 AM
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
-- Table structure for table `phrase_phrasenkatalog`
--

CREATE TABLE `phrase_phrasenkatalog` (
  `phrasenkatalog_id` int(10) UNSIGNED NOT NULL,
  `katalog_pin` varchar(60) NOT NULL,
  `katalog_distributor` varchar(60) NOT NULL,
  `katalog_version` varchar(10) NOT NULL,
  `katalog_datum` date NOT NULL,
  `num_range` varchar(10) NOT NULL,
  `firma_id` smallint(5) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `phrase_phrasenkatalog`
--

INSERT INTO `phrase_phrasenkatalog` (`phrasenkatalog_id`, `katalog_pin`, `katalog_distributor`, `katalog_version`, `katalog_datum`, `num_range`, `firma_id`) VALUES
(1, 'rimpi', 'rimpido GmbH, Buchholz', '1.X', '2012-05-31', 'ESN_PHRID', 1),
(2, 'EuPC', 'Bund der Deutschen Industrie', '1.1', '2012-07-30', 'ESN_PHRID', 1),
(11, 'zzepla', 'rimpido GmbH', '1.X', '2012-07-30', 'ESN_PHRID', 1),
(12, 'BDI', 'Bund der Deutschen Industrie', '1.1', '2012-08-29', 'ESN_PHRID', 2),
(33, 'EPOS', 'Epos', '1.0', '2013-08-27', 'ESN_PHRID', 1),
(34, 'KRKA', 'Krka', '1.0', '2014-04-08', 'ESN_PHRID', 5),
(38, 'ZSM', 'Schülke', '1.0', '2015-05-18', 'ESN_PHRID', 6),
(39, 'ACT01', 'SASOL A01 001', '1', '2016-04-07', 'ESN_PHRID', 1),
(40, 'ACT20', 'SASOL A01 020', '1', '2016-04-07', 'ESN_PHRID', 1),
(41, 'ZKSA', 'Kali+Salz Phrasenkatalog aktiv', '2011-1', '2011-05-01', 'ESN_PHRID', 7),
(42, 'ARIEL', '3ECompany', 'July 2016', '2016-07-22', 'ESN_PHRID', 9),
(43, 'CED', 'SAP', 'July 2016', '2016-07-22', 'ESN_PHRID', 9),
(44, 'eu_phra', 'rimpido GmbH', '1.0', '2017-02-28', 'ESN_PHRID', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `phrase_phrasenkatalog`
--
ALTER TABLE `phrase_phrasenkatalog`
  ADD PRIMARY KEY (`phrasenkatalog_id`),
  ADD UNIQUE KEY `katalog-pin_und_firma` (`katalog_pin`,`firma_id`),
  ADD KEY `firma_id` (`firma_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `phrase_phrasenkatalog`
--
ALTER TABLE `phrase_phrasenkatalog`
  MODIFY `phrasenkatalog_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `phrase_phrasenkatalog`
--
ALTER TABLE `phrase_phrasenkatalog`
  ADD CONSTRAINT `phrase_phrasenkatalog_ibfk_1` FOREIGN KEY (`firma_id`) REFERENCES `phrase_firma` (`firma_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
