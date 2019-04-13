-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 10, 2019 at 04:53 AM
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
-- Table structure for table `phrase_baumtext`
--

CREATE TABLE `phrase_baumtext` (
  `baumtext_id` int(10) UNSIGNED NOT NULL,
  `baumtext` varchar(45) NOT NULL,
  `baum_id` mediumint(8) UNSIGNED NOT NULL,
  `firma_id` smallint(5) UNSIGNED NOT NULL,
  `sprache_id` smallint(5) UNSIGNED NOT NULL,
  `zeitstempel` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `phrase_baumtext`
--

INSERT INTO `phrase_baumtext` (`baumtext_id`, `baumtext`, `baum_id`, `firma_id`, `sprache_id`, `zeitstempel`) VALUES
(1, 'Rimpido Standard Selektionsbaum', 1, 1, 14, '2012-10-12 07:52:41'),
(2, 'Rimpido Standard Selectiontree', 1, 1, 15, '2012-10-12 07:52:35'),
(3, 'rimpido Testbaum', 2, 1, 14, '2012-12-06 23:38:46'),
(4, 'rimpido test tree', 2, 1, 15, '2012-12-06 23:38:39'),
(5, 'KRKA by Rimpido', 5, 1, 15, '2014-04-08 09:54:15'),
(6, 'KRKA by Rimpido', 5, 1, 14, '2014-04-08 09:54:23'),
(7, 'KRKA by Rimpido', 5, 1, 6, '2014-04-08 09:54:41');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `phrase_baumtext`
--
ALTER TABLE `phrase_baumtext`
  ADD PRIMARY KEY (`baumtext_id`),
  ADD UNIQUE KEY `baum_firma_sprache` (`baum_id`,`firma_id`,`sprache_id`),
  ADD KEY `baum_id` (`baum_id`),
  ADD KEY `firma_id` (`firma_id`),
  ADD KEY `sprache_id` (`sprache_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `phrase_baumtext`
--
ALTER TABLE `phrase_baumtext`
  MODIFY `baumtext_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `phrase_baumtext`
--
ALTER TABLE `phrase_baumtext`
  ADD CONSTRAINT `phrase_baumtext_ibfk_1` FOREIGN KEY (`baum_id`) REFERENCES `phrase_baum` (`baum_id`),
  ADD CONSTRAINT `phrase_baumtext_ibfk_2` FOREIGN KEY (`sprache_id`) REFERENCES `phrase_sprache` (`sprache_id`),
  ADD CONSTRAINT `phrase_baumtext_ibfk_3` FOREIGN KEY (`firma_id`) REFERENCES `phrase_firma` (`firma_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
