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
-- Table structure for table `phrase_eigenschaftsbaum`
--

CREATE TABLE `phrase_eigenschaftsbaum` (
  `eigenschaftsbaum_id` int(10) UNSIGNED NOT NULL,
  `baum_id` mediumint(8) UNSIGNED NOT NULL,
  `eigenschaft_id` int(10) UNSIGNED NOT NULL,
  `eltern_id` int(10) UNSIGNED DEFAULT NULL,
  `links_id` int(10) UNSIGNED NOT NULL,
  `rechts_id` int(10) UNSIGNED NOT NULL,
  `zeitstempel` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `phrase_eigenschaftsbaum`
--

INSERT INTO `phrase_eigenschaftsbaum` (`eigenschaftsbaum_id`, `baum_id`, `eigenschaft_id`, `eltern_id`, `links_id`, `rechts_id`, `zeitstempel`) VALUES
(4, 2, 2, NULL, 1, 2, '2015-07-02 07:37:40'),
(7, 2, 4, NULL, 3, 4, '2015-07-02 07:37:40'),
(286, 4, 278, NULL, 1, 66, '2015-06-29 13:47:41'),
(289, 4, 281, 327, 3, 4, '2015-06-29 13:47:30'),
(291, 4, 283, 327, 5, 6, '2015-06-29 13:47:34'),
(292, 4, 284, 327, 7, 8, '2015-06-29 13:47:37'),
(293, 4, 285, 327, 9, 10, '2015-06-29 13:47:41'),
(294, 4, 286, 286, 12, 33, '2015-06-29 13:47:41'),
(295, 4, 287, 294, 13, 14, '2015-06-29 13:47:41'),
(296, 4, 288, 294, 15, 16, '2015-06-29 13:47:41'),
(297, 4, 289, 294, 17, 18, '2015-06-29 13:47:41'),
(298, 4, 290, 294, 19, 20, '2015-06-29 13:47:41'),
(299, 4, 291, 294, 21, 22, '2015-06-29 13:47:41'),
(300, 4, 292, 294, 23, 24, '2015-06-29 13:47:41'),
(301, 4, 293, 294, 25, 26, '2015-06-29 13:47:41'),
(302, 4, 294, 294, 27, 28, '2015-06-29 13:47:41'),
(303, 4, 295, 294, 29, 30, '2015-06-29 13:47:41'),
(304, 4, 296, 294, 31, 32, '2015-06-29 13:47:41'),
(305, 4, 297, 286, 34, 43, '2015-06-29 13:47:41'),
(306, 4, 298, 305, 35, 36, '2015-06-29 13:47:41'),
(307, 4, 299, 305, 37, 38, '2015-06-29 13:47:41'),
(308, 4, 300, 305, 39, 40, '2015-06-29 13:47:41'),
(309, 4, 301, 305, 41, 42, '2015-06-29 13:47:41'),
(310, 4, 302, 286, 44, 57, '2015-06-29 13:47:41'),
(311, 4, 303, 310, 45, 46, '2015-06-29 13:47:41'),
(312, 4, 304, 310, 47, 48, '2015-06-29 13:47:41'),
(313, 4, 305, 310, 49, 50, '2015-06-29 13:47:41'),
(314, 4, 306, 310, 51, 52, '2015-06-29 13:47:41'),
(315, 4, 307, 310, 53, 54, '2015-06-29 13:47:41'),
(316, 4, 308, 310, 55, 56, '2015-06-29 13:47:41'),
(317, 4, 309, 286, 58, 65, '2015-06-29 13:47:41'),
(318, 4, 310, 317, 59, 60, '2015-06-29 13:47:41'),
(319, 4, 311, 317, 61, 62, '2015-06-29 13:47:41'),
(320, 4, 312, 317, 63, 64, '2015-06-29 13:47:41'),
(322, 5, 313, NULL, 1, 4, '2015-06-29 12:17:19'),
(323, 6, 314, NULL, 1, 6, '2015-06-29 12:17:19'),
(325, 7, 278, NULL, 1, 4, '2015-06-29 12:17:19'),
(327, 4, 279, 286, 2, 11, '2015-06-29 13:47:41');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `phrase_eigenschaftsbaum`
--
ALTER TABLE `phrase_eigenschaftsbaum`
  ADD PRIMARY KEY (`eigenschaftsbaum_id`),
  ADD KEY `baum_id` (`baum_id`),
  ADD KEY `eigenschaft_id` (`eigenschaft_id`),
  ADD KEY `eltern_id` (`eltern_id`),
  ADD KEY `rechts_id` (`rechts_id`),
  ADD KEY `links_id` (`links_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `phrase_eigenschaftsbaum`
--
ALTER TABLE `phrase_eigenschaftsbaum`
  MODIFY `eigenschaftsbaum_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=328;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `phrase_eigenschaftsbaum`
--
ALTER TABLE `phrase_eigenschaftsbaum`
  ADD CONSTRAINT `phrase_eigenschaftsbaum_ibfk_1` FOREIGN KEY (`baum_id`) REFERENCES `phrase_baum` (`baum_id`),
  ADD CONSTRAINT `phrase_eigenschaftsbaum_ibfk_2` FOREIGN KEY (`eigenschaft_id`) REFERENCES `phrase_eigenschaft` (`eigenschaft_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
