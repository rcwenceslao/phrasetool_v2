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
-- Table structure for table `phrase_baum`
--

CREATE TABLE `phrase_baum` (
  `baum_id` mediumint(8) UNSIGNED NOT NULL,
  `baum_kurz` varchar(15) NOT NULL,
  `firma_id` smallint(5) UNSIGNED NOT NULL,
  `zeitstempel` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `phrase_baum`
--

INSERT INTO `phrase_baum` (`baum_id`, `baum_kurz`, `firma_id`, `zeitstempel`) VALUES
(1, 'Z_HAMBURG_SEL', 1, '2012-11-29 08:12:38'),
(2, 'Z_RIMPIDO', 1, '2012-11-29 08:12:17'),
(4, 'ZHSM_SOPM', 1, '2013-10-14 08:32:25'),
(5, 'rimpido4Krka', 1, '2014-04-08 08:34:31'),
(6, 'rimpido4Krka', 5, '2014-05-14 12:57:32'),
(7, 'Z_VOSS', 1, '2014-07-04 13:17:25');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `phrase_baum`
--
ALTER TABLE `phrase_baum`
  ADD PRIMARY KEY (`baum_id`),
  ADD KEY `firma_id` (`firma_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `phrase_baum`
--
ALTER TABLE `phrase_baum`
  MODIFY `baum_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `phrase_baum`
--
ALTER TABLE `phrase_baum`
  ADD CONSTRAINT `phrase_baum_ibfk_1` FOREIGN KEY (`firma_id`) REFERENCES `phrase_firma` (`firma_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
