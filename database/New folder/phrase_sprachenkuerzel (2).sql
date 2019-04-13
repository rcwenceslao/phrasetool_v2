-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 10, 2019 at 05:01 AM
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
-- Table structure for table `phrase_sprachenkuerzel`
--

CREATE TABLE `phrase_sprachenkuerzel` (
  `sprachenkuerzel_id` mediumint(8) UNSIGNED NOT NULL,
  `sprache_id` smallint(5) UNSIGNED NOT NULL,
  `firma_id` smallint(5) UNSIGNED NOT NULL,
  `sprache_kurz` varchar(1) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `phrase_sprachenkuerzel`
--

INSERT INTO `phrase_sprachenkuerzel` (`sprachenkuerzel_id`, `sprache_id`, `firma_id`, `sprache_kurz`) VALUES
(90, 1, 1, '0'),
(91, 2, 1, '1'),
(92, 3, 1, '2'),
(93, 4, 1, '3'),
(94, 5, 1, '4'),
(95, 6, 1, '5'),
(96, 7, 1, '6'),
(97, 8, 1, '7'),
(98, 9, 1, '8'),
(99, 10, 1, '9'),
(100, 11, 1, 'A'),
(101, 12, 1, 'B'),
(102, 13, 1, 'C'),
(103, 14, 1, 'D'),
(104, 15, 1, 'E'),
(105, 16, 1, 'F'),
(106, 17, 1, 'G'),
(107, 18, 1, 'H'),
(108, 19, 1, 'I'),
(109, 20, 1, 'J'),
(110, 21, 1, 'K'),
(111, 22, 1, 'L'),
(112, 23, 1, 'M'),
(113, 24, 1, 'N'),
(114, 429, 1, 'O'),
(115, 25, 1, 'P'),
(116, 26, 1, 'Q'),
(117, 27, 1, 'R'),
(118, 28, 1, 'S'),
(119, 29, 1, 'T'),
(120, 30, 1, 'U'),
(121, 31, 1, 'V'),
(122, 32, 1, 'W'),
(123, 33, 1, 'X'),
(124, 34, 1, 'Y'),
(125, 36, 1, 'a'),
(126, 37, 1, 'b'),
(127, 38, 1, 'c'),
(128, 39, 1, 'd'),
(129, 40, 1, 'i'),
(130, 41, 1, '늘'),
(131, 42, 1, '덆'),
(132, 159, 1, '묩'),
(133, 43, 1, '븑'),
(134, 407, 1, '쁩'),
(135, 15, 6, 'E'),
(136, 14, 6, 'D'),
(137, 24, 6, 'N'),
(138, 16, 6, 'F'),
(139, 22, 6, 'L'),
(140, 2, 6, '1'),
(141, 19, 6, 'I'),
(142, 1, 7, '0'),
(143, 2, 7, '1'),
(144, 3, 7, '2'),
(145, 4, 7, '3'),
(146, 5, 7, '4'),
(147, 6, 7, '5'),
(148, 7, 7, '6'),
(149, 8, 7, '7'),
(150, 9, 7, '8'),
(151, 10, 7, '9'),
(152, 11, 7, 'A'),
(153, 12, 7, 'B'),
(154, 13, 7, 'C'),
(155, 14, 7, 'D'),
(156, 15, 7, 'E'),
(157, 16, 7, 'F'),
(158, 17, 7, 'G'),
(159, 18, 7, 'H'),
(160, 19, 7, 'I'),
(161, 20, 7, 'J'),
(162, 21, 7, 'K'),
(163, 22, 7, 'L'),
(164, 23, 7, 'M'),
(165, 24, 7, 'N'),
(166, 429, 7, 'O'),
(167, 25, 7, 'P'),
(168, 26, 7, 'Q'),
(169, 27, 7, 'R'),
(170, 28, 7, 'S'),
(171, 29, 7, 'T'),
(172, 30, 7, 'U'),
(173, 31, 7, 'V'),
(174, 32, 7, 'W'),
(175, 33, 7, 'X'),
(176, 34, 7, 'Y'),
(177, 36, 7, 'a'),
(178, 37, 7, 'b'),
(179, 38, 7, 'c'),
(180, 39, 7, 'd'),
(181, 40, 7, 'i'),
(182, 41, 7, '늘'),
(183, 42, 7, '덆'),
(184, 159, 7, '묩'),
(185, 43, 7, '븑'),
(186, 407, 7, '쁩');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `phrase_sprachenkuerzel`
--
ALTER TABLE `phrase_sprachenkuerzel`
  ADD PRIMARY KEY (`sprachenkuerzel_id`),
  ADD UNIQUE KEY `sprache_und_firma` (`sprache_id`,`firma_id`),
  ADD KEY `firma_id` (`firma_id`),
  ADD KEY `sprache_id` (`sprache_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `phrase_sprachenkuerzel`
--
ALTER TABLE `phrase_sprachenkuerzel`
  MODIFY `sprachenkuerzel_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=187;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `phrase_sprachenkuerzel`
--
ALTER TABLE `phrase_sprachenkuerzel`
  ADD CONSTRAINT `phrase_sprachenkuerzel_ibfk_1` FOREIGN KEY (`sprache_id`) REFERENCES `phrase_sprache` (`sprache_id`),
  ADD CONSTRAINT `phrase_sprachenkuerzel_ibfk_2` FOREIGN KEY (`firma_id`) REFERENCES `phrase_firma` (`firma_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
