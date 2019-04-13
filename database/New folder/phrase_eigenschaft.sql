-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 10, 2019 at 04:54 AM
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
-- Table structure for table `phrase_eigenschaft`
--

CREATE TABLE `phrase_eigenschaft` (
  `eigenschaft_id` int(10) UNSIGNED NOT NULL,
  `eigenschaft_kurz` varchar(45) NOT NULL,
  `typ` tinyint(2) UNSIGNED NOT NULL DEFAULT '1',
  `kopie_zulassen` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `neu_zulassen` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `aendern_zulassen` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `einzelinstanz` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `intern` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `profil` varchar(10) DEFAULT NULL,
  `firma_id` smallint(5) UNSIGNED NOT NULL,
  `klasse_id` int(10) UNSIGNED DEFAULT NULL,
  `zeitstempel` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `phrase_eigenschaft`
--

INSERT INTO `phrase_eigenschaft` (`eigenschaft_id`, `eigenschaft_kurz`, `typ`, `kopie_zulassen`, `neu_zulassen`, `aendern_zulassen`, `einzelinstanz`, `intern`, `profil`, `firma_id`, `klasse_id`, `zeitstempel`) VALUES
(2, 'Z_RIM_EHS_01_001', 1, 1, 1, 1, 0, 0, '', 1, 2, '2012-11-29 11:44:32'),
(4, 'Z_RIM_EHS_09_001', 1, 1, 1, 1, 0, 0, '', 1, 4, '2012-12-20 14:15:52'),
(277, 'Z_RIM_LABEL_CLASS', 1, 1, 1, 1, 0, 0, '', 1, 219, '2013-10-12 08:19:34'),
(278, 'SAP_EHS_1000', 5, 1, 1, 1, 0, 0, NULL, 1, NULL, '2013-10-14 08:32:26'),
(279, 'ZRIMPIDO_SOP_CHAPTER_02', 5, 0, 0, 0, 0, 0, '', 1, NULL, '2015-06-29 12:05:02'),
(280, 'SAP_EHS_1023_004', 2, 1, 1, 1, 0, 0, 'PROF001', 1, 220, '2013-10-14 08:32:26'),
(281, 'SAP_EHS_1023_001', 2, 1, 1, 1, 0, 0, 'PROF001', 1, 221, '2013-10-14 08:32:26'),
(282, 'SAP_EHS_1023_043', 2, 1, 1, 1, 0, 0, 'PROF001', 1, 222, '2013-10-14 08:32:26'),
(283, 'SAP_EHS_1023_044', 3, 1, 1, 1, 0, 0, 'PROF001', 1, 223, '2013-10-14 08:32:26'),
(284, 'SAP_EHS_1014_019', 1, 0, 0, 0, 0, 0, NULL, 1, 224, '2013-10-14 08:32:27'),
(285, 'SAP_EHS_1023_009', 2, 1, 1, 1, 0, 0, 'PROF001', 1, 225, '2013-10-14 08:32:27'),
(286, 'ZRIMPIDO_SOP_CHAPTER_03', 5, 0, 0, 0, 0, 0, '', 1, NULL, '2015-06-29 12:05:12'),
(287, 'SAP_EHS_1016_017', 1, 0, 0, 0, 0, 0, NULL, 1, 226, '2013-10-14 08:32:27'),
(288, 'SAP_EHS_1016_009', 1, 0, 0, 0, 0, 0, NULL, 1, 227, '2013-10-14 08:32:27'),
(289, 'SAP_EHS_1016_010', 1, 0, 0, 0, 0, 0, NULL, 1, 228, '2013-10-14 08:32:27'),
(290, 'SAP_EHS_1021_006', 1, 0, 0, 0, 0, 0, NULL, 1, 229, '2013-10-14 08:32:28'),
(291, 'SAP_EHS_1016_011', 1, 0, 0, 0, 0, 0, NULL, 1, 230, '2013-10-14 08:32:28'),
(292, 'SAP_EHS_1016_014', 1, 0, 0, 0, 0, 0, NULL, 1, 231, '2013-10-14 08:32:28'),
(293, 'SAP_EHS_1016_013', 1, 0, 0, 0, 0, 0, NULL, 1, 232, '2013-10-14 08:32:28'),
(294, 'SAP_EHS_1016_015', 1, 0, 0, 0, 0, 0, NULL, 1, 233, '2013-10-14 08:32:28'),
(295, 'SAP_EHS_1016_012', 1, 0, 0, 0, 0, 0, NULL, 1, 234, '2013-10-14 08:32:29'),
(296, 'ZSAP_EHS_1016_023', 1, 1, 1, 1, 0, 0, 'PROF001', 1, 235, '2013-10-14 08:32:30'),
(297, 'ZRIMPIDO_SOP_CHAPTER_04', 5, 0, 0, 0, 0, 0, '', 1, NULL, '2015-06-29 12:05:22'),
(298, 'SAP_EHS_1016_003', 1, 0, 0, 0, 0, 0, NULL, 1, 236, '2013-10-14 08:32:30'),
(299, 'SAP_EHS_1016_001', 1, 0, 0, 0, 0, 0, NULL, 1, 237, '2013-10-14 08:32:30'),
(300, 'SAP_EHS_1016_004', 1, 0, 0, 0, 0, 0, NULL, 1, 238, '2013-10-14 08:32:30'),
(301, 'SAP_EHS_1016_006', 1, 0, 0, 0, 0, 0, NULL, 1, 239, '2013-10-14 08:32:30'),
(302, 'ZRIMPIDO_SOP_CHAPTER_05', 5, 0, 0, 0, 0, 0, '', 1, NULL, '2015-06-29 12:05:33'),
(303, 'SAP_EHS_1015_002', 1, 0, 0, 0, 0, 0, NULL, 1, 240, '2013-10-14 08:32:31'),
(304, 'SAP_EHS_1015_003', 1, 0, 0, 0, 0, 0, NULL, 1, 241, '2013-10-14 08:32:31'),
(305, 'SAP_EHS_1015_004', 1, 0, 0, 0, 0, 0, NULL, 1, 242, '2013-10-14 08:32:31'),
(306, 'SAP_EHS_1015_005', 1, 0, 0, 0, 0, 0, NULL, 1, 243, '2013-10-14 08:32:31'),
(307, 'SAP_EHS_1015_006', 1, 0, 0, 0, 0, 0, NULL, 1, 244, '2013-10-14 08:32:31'),
(308, 'ZSAP_EHS_1015_013', 1, 1, 1, 1, 0, 0, 'PROF001', 1, 245, '2013-10-14 08:32:31'),
(309, 'ZRIMPIDO_SOP_CHAPTER_06', 5, 0, 0, 0, 0, 0, '', 1, NULL, '2015-06-29 12:05:48'),
(310, 'SAP_EHS_1023_019', 1, 0, 0, 0, 0, 0, NULL, 1, 246, '2013-10-14 08:32:31'),
(311, 'SAP_EHS_1023_018', 1, 0, 0, 0, 0, 0, NULL, 1, 247, '2013-10-14 08:32:32'),
(312, 'SAP_EHS_1016_007', 1, 0, 0, 0, 0, 0, NULL, 1, 248, '2013-10-14 08:32:32'),
(313, 'Z_KRKA_LIN_ROT', 1, 1, 1, 1, 0, 0, '', 1, 249, '2014-04-08 09:09:54'),
(314, 'SAP_EHS_1000', 1, 1, 1, 1, 0, 0, NULL, 5, NULL, '2014-05-14 12:57:32'),
(315, 'Z_KRKA_LIN_ROT', 1, 1, 1, 1, 0, 0, NULL, 5, 250, '2014-05-14 12:57:32');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `phrase_eigenschaft`
--
ALTER TABLE `phrase_eigenschaft`
  ADD PRIMARY KEY (`eigenschaft_id`),
  ADD UNIQUE KEY `eigenschaftsap_firma` (`eigenschaft_kurz`,`firma_id`),
  ADD KEY `firma_id` (`firma_id`),
  ADD KEY `klasse_id` (`klasse_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `phrase_eigenschaft`
--
ALTER TABLE `phrase_eigenschaft`
  MODIFY `eigenschaft_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=316;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `phrase_eigenschaft`
--
ALTER TABLE `phrase_eigenschaft`
  ADD CONSTRAINT `phrase_eigenschaft_ibfk_1` FOREIGN KEY (`firma_id`) REFERENCES `phrase_firma` (`firma_id`),
  ADD CONSTRAINT `phrase_eigenschaft_ibfk_2` FOREIGN KEY (`klasse_id`) REFERENCES `phrase_klasse` (`klasse_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
