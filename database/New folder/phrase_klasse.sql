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
-- Table structure for table `phrase_klasse`
--

CREATE TABLE `phrase_klasse` (
  `klasse_id` int(10) UNSIGNED NOT NULL,
  `klasse_kurz` varchar(45) NOT NULL,
  `klasse_typ` tinyint(3) UNSIGNED NOT NULL,
  `firma_id` smallint(5) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `phrase_klasse`
--

INSERT INTO `phrase_klasse` (`klasse_id`, `klasse_kurz`, `klasse_typ`, `firma_id`) VALUES
(1, 'RIM_TEST_1023_666', 100, 1),
(2, 'Z_RIM_EHS_01_001', 100, 1),
(3, 'Z_RIM_EHS_99_001', 100, 1),
(4, 'Z_RIM_EHS_09_001', 100, 1),
(5, 'Z_test', 99, 3),
(219, 'Z_RIM_LABEL_CLASS', 100, 1),
(220, 'SAP_EHS_1023_004', 100, 1),
(221, 'SAP_EHS_1023_001', 100, 1),
(222, 'SAP_EHS_1023_043', 100, 1),
(223, 'SAP_EHS_1023_044', 100, 1),
(224, 'SAP_EHS_1014_019', 100, 1),
(225, 'SAP_EHS_1023_009', 100, 1),
(226, 'SAP_EHS_1016_017', 100, 1),
(227, 'SAP_EHS_1016_009', 100, 1),
(228, 'SAP_EHS_1016_010', 100, 1),
(229, 'SAP_EHS_1021_006', 100, 1),
(230, 'SAP_EHS_1016_011', 100, 1),
(231, 'SAP_EHS_1016_014', 100, 1),
(232, 'SAP_EHS_1016_013', 100, 1),
(233, 'SAP_EHS_1016_015', 100, 1),
(234, 'SAP_EHS_1016_012', 100, 1),
(235, 'ZSAP_EHS_1016_023', 100, 1),
(236, 'SAP_EHS_1016_003', 100, 1),
(237, 'SAP_EHS_1016_001', 100, 1),
(238, 'SAP_EHS_1016_004', 100, 1),
(239, 'SAP_EHS_1016_006', 100, 1),
(240, 'SAP_EHS_1015_002', 100, 1),
(241, 'SAP_EHS_1015_003', 100, 1),
(242, 'SAP_EHS_1015_004', 100, 1),
(243, 'SAP_EHS_1015_005', 100, 1),
(244, 'SAP_EHS_1015_006', 100, 1),
(245, 'ZSAP_EHS_1015_013', 100, 1),
(246, 'SAP_EHS_1023_019', 100, 1),
(247, 'SAP_EHS_1023_018', 100, 1),
(248, 'SAP_EHS_1016_007', 100, 1),
(249, 'Z_KRKA_LIN_ROT', 100, 1),
(250, 'Z_KRKA_LIN_ROT', 100, 5);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `phrase_klasse`
--
ALTER TABLE `phrase_klasse`
  ADD PRIMARY KEY (`klasse_id`),
  ADD UNIQUE KEY `klassesap_firma` (`klasse_kurz`,`firma_id`),
  ADD KEY `firma_id` (`firma_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `phrase_klasse`
--
ALTER TABLE `phrase_klasse`
  MODIFY `klasse_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=251;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `phrase_klasse`
--
ALTER TABLE `phrase_klasse`
  ADD CONSTRAINT `phrase_klasse_ibfk_1` FOREIGN KEY (`firma_id`) REFERENCES `phrase_firma` (`firma_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
