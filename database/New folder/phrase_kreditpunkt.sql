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
-- Table structure for table `phrase_kreditpunkt`
--

CREATE TABLE `phrase_kreditpunkt` (
  `kreditpunkt_id` int(10) UNSIGNED NOT NULL,
  `phrasentext_id` bigint(20) UNSIGNED NOT NULL,
  `firma_id` smallint(5) UNSIGNED NOT NULL,
  `wert` smallint(6) NOT NULL DEFAULT '0',
  `benutzer_id` mediumint(8) UNSIGNED NOT NULL,
  `zeitstempel` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `phrase_kreditpunkt`
--

INSERT INTO `phrase_kreditpunkt` (`kreditpunkt_id`, `phrasentext_id`, `firma_id`, `wert`, `benutzer_id`, `zeitstempel`) VALUES
(1, 1, 1, -1, 2, '2012-07-27 13:20:29'),
(2, 19082, 1, 1, 2, '2012-07-27 15:52:48'),
(3, 12, 1, 1, 2, '2012-07-30 15:04:42'),
(4, 19169, 1, 1, 2, '2012-07-30 15:57:05'),
(5, 19171, 1, 1, 2, '2012-07-30 15:58:46');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `phrase_kreditpunkt`
--
ALTER TABLE `phrase_kreditpunkt`
  ADD PRIMARY KEY (`kreditpunkt_id`),
  ADD UNIQUE KEY `phrasentext_und_firma` (`phrasentext_id`,`firma_id`),
  ADD KEY `firma_id` (`firma_id`),
  ADD KEY `benutzer_id` (`benutzer_id`),
  ADD KEY `phrasentext_id` (`phrasentext_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `phrase_kreditpunkt`
--
ALTER TABLE `phrase_kreditpunkt`
  MODIFY `kreditpunkt_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `phrase_kreditpunkt`
--
ALTER TABLE `phrase_kreditpunkt`
  ADD CONSTRAINT `phrase_kreditpunkt_ibfk_1` FOREIGN KEY (`firma_id`) REFERENCES `phrase_firma` (`firma_id`),
  ADD CONSTRAINT `phrase_kreditpunkt_ibfk_2` FOREIGN KEY (`benutzer_id`) REFERENCES `phrase_benutzer` (`benutzer_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
