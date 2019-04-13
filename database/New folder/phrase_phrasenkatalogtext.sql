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
-- Table structure for table `phrase_phrasenkatalogtext`
--

CREATE TABLE `phrase_phrasenkatalogtext` (
  `phrasenkatalogtext_id` int(10) UNSIGNED NOT NULL,
  `phrasenkatalog_id` int(10) UNSIGNED NOT NULL,
  `phrasenkatalogtext` tinytext NOT NULL,
  `sprache_id` smallint(5) UNSIGNED NOT NULL,
  `firma_id` smallint(5) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `phrase_phrasenkatalogtext`
--

INSERT INTO `phrase_phrasenkatalogtext` (`phrasenkatalogtext_id`, `phrasenkatalog_id`, `phrasenkatalogtext`, `sprache_id`, `firma_id`) VALUES
(1, 1, 'rimpido Phrasenkatalog', 14, 1),
(2, 1, 'rimpido Phrases catalog', 15, 1),
(3, 33, 'Epos', 15, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `phrase_phrasenkatalogtext`
--
ALTER TABLE `phrase_phrasenkatalogtext`
  ADD PRIMARY KEY (`phrasenkatalogtext_id`),
  ADD UNIQUE KEY `phrasenkatalog_und_sprache_und_firma` (`phrasenkatalog_id`,`sprache_id`,`firma_id`),
  ADD KEY `sprache_id` (`sprache_id`),
  ADD KEY `phrasenkatalog_id` (`phrasenkatalog_id`),
  ADD KEY `firma_id` (`firma_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `phrase_phrasenkatalogtext`
--
ALTER TABLE `phrase_phrasenkatalogtext`
  MODIFY `phrasenkatalogtext_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `phrase_phrasenkatalogtext`
--
ALTER TABLE `phrase_phrasenkatalogtext`
  ADD CONSTRAINT `phrase_phrasenkatalogtext_ibfk_1` FOREIGN KEY (`sprache_id`) REFERENCES `phrase_sprache` (`sprache_id`),
  ADD CONSTRAINT `phrase_phrasenkatalogtext_ibfk_2` FOREIGN KEY (`firma_id`) REFERENCES `phrase_firma` (`firma_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
