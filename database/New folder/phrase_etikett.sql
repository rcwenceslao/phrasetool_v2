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
-- Table structure for table `phrase_etikett`
--

CREATE TABLE `phrase_etikett` (
  `etikett_id` int(10) UNSIGNED NOT NULL,
  `benutzer_id` mediumint(8) UNSIGNED DEFAULT NULL,
  `cas-nummer` varchar(20) NOT NULL,
  `einecs-nummer` varchar(20) DEFAULT NULL,
  `un-nummer` smallint(5) UNSIGNED DEFAULT NULL,
  `produktname` varchar(127) NOT NULL,
  `beschreibung` text,
  `sprache_1_id` smallint(5) UNSIGNED NOT NULL,
  `inhalt_sprache_1` varchar(100) NOT NULL,
  `sprache_2_id` smallint(5) UNSIGNED NOT NULL,
  `inhalt_sprache_2` varchar(100) NOT NULL,
  `anzahl-symbole` tinyint(2) UNSIGNED NOT NULL,
  `symbol1` int(11) UNSIGNED DEFAULT NULL,
  `symbol2` int(11) UNSIGNED DEFAULT NULL,
  `symbol3` int(11) UNSIGNED DEFAULT NULL,
  `symbol4` int(11) UNSIGNED DEFAULT NULL,
  `symbol5` int(11) UNSIGNED DEFAULT NULL,
  `symbol6` int(11) UNSIGNED DEFAULT NULL,
  `signalwort` int(11) UNSIGNED DEFAULT NULL,
  `hphrase1` int(11) UNSIGNED DEFAULT NULL,
  `hphrase2` int(11) UNSIGNED DEFAULT NULL,
  `hphrase3` int(11) UNSIGNED DEFAULT NULL,
  `hphrase4` int(11) UNSIGNED DEFAULT NULL,
  `hphrase5` int(11) UNSIGNED DEFAULT NULL,
  `hphrase6` int(11) UNSIGNED DEFAULT NULL,
  `pphrase1` int(11) UNSIGNED DEFAULT NULL,
  `pphrase2` int(11) UNSIGNED DEFAULT NULL,
  `pphrase3` int(11) UNSIGNED DEFAULT NULL,
  `pphrase4` int(11) UNSIGNED DEFAULT NULL,
  `pphrase5` int(11) UNSIGNED DEFAULT NULL,
  `pphrase6` int(11) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `phrase_etikett`
--

INSERT INTO `phrase_etikett` (`etikett_id`, `benutzer_id`, `cas-nummer`, `einecs-nummer`, `un-nummer`, `produktname`, `beschreibung`, `sprache_1_id`, `inhalt_sprache_1`, `sprache_2_id`, `inhalt_sprache_2`, `anzahl-symbole`, `symbol1`, `symbol2`, `symbol3`, `symbol4`, `symbol5`, `symbol6`, `signalwort`, `hphrase1`, `hphrase2`, `hphrase3`, `hphrase4`, `hphrase5`, `hphrase6`, `pphrase1`, `pphrase2`, `pphrase3`, `pphrase4`, `pphrase5`, `pphrase6`) VALUES
(1, 2, '', '', 1963, 'Testetikett', '', 27, 'Teststoff 1 und Teststoff 2', 2, 'Testsubstance 1 and Testsubstance 2', 2, 7103, 7102, NULL, NULL, NULL, NULL, 7091, 8678, 8698, 8726, 8739, NULL, NULL, 8780, 8841, 8846, 8891, NULL, NULL),
(2, 6, '', '', 1791, 'pursus plus', 'Reinigungsmittel gegen Algen und Moose', 14, '1310-73-2 Natriumhydroxid', 15, '1310-73-2 natrium hydroxide', 1, 5003, NULL, NULL, NULL, NULL, NULL, 7091, NULL, NULL, NULL, NULL, NULL, NULL, 8811, 8828, 8845, 8852, 8914, NULL),
(3, 6, '50-00-0', '', 1963, 'Testetiketten 2', 'Testprodukt für die Etikettenentwicklung', 5, '', 15, '', 2, 5003, 35630, NULL, NULL, NULL, NULL, 7091, 8678, 8706, NULL, NULL, NULL, NULL, 8870, 8895, NULL, NULL, NULL, NULL),
(4, 30, '', '', NULL, 'Rimpido-Test-141104-1', 'Zusammensetzung: NaOH + Natriumbenothiazol-2-ylsulfid', 15, 'sodium hydroxide and sodium benothiazol-2-yl sulphide', 16, 'sodium hydroxide and sodium benothiazol-2-yl sulphide', 3, 5003, 7103, 35630, NULL, NULL, NULL, 7091, 5444, 5446, 8747, 8748, NULL, NULL, 8810, 8811, 8856, 8872, 8876, 8880),
(5, 30, '', '', NULL, 'Rimpido-Test-141104-2', '', 15, 'methyl acetate and methanol', 16, 'methyl acetate and methanol', 3, 7098, 7102, 7104, NULL, NULL, NULL, 7091, 8689, 8723, 8731, 8742, NULL, NULL, 8783, 8802, 8811, 8870, 8876, 8880),
(6, 30, '', '', NULL, 'Rimpido-Test-141104-3', '', 15, 'aluminium chloride', 16, 'aluminium chloride', 2, 7103, 7104, NULL, NULL, NULL, NULL, 7093, 5445, 5448, 35537, NULL, NULL, NULL, 8802, 8811, 8832, 8874, 8880, 8888),
(7, 6, '', '', NULL, 'Test hartmann', '', 14, 'Test de', 16, 'Test fr', 3, 5003, 7098, 7104, NULL, NULL, NULL, 7091, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(8, 6, '', '', 3175, 'Test product for Arabia', 'Test product for Arab - not implemented yet.', 14, 'Natriumhydroxid', 15, 'Natrium Hydroxide', 2, 5003, 7104, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8820, NULL, NULL, NULL, NULL, NULL),
(9, 35, '64-17-5', '200-578-6', 1170, 'Ethanol', 'Ethanol reinst', 14, '', 15, '', 1, 7098, NULL, NULL, NULL, NULL, NULL, 7091, 8689, NULL, NULL, NULL, NULL, NULL, 8783, 8795, 8909, NULL, NULL, NULL),
(10, 35, '110-00-9', '203-727-3', 2389, 'Furan', 'Furan reinst', 27, '', 15, '', 2, 7098, 7104, NULL, NULL, NULL, NULL, 7091, 5445, 8688, 8720, 8726, 8750, NULL, 8781, 8783, 8810, 8812, 8883, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `phrase_etikett`
--
ALTER TABLE `phrase_etikett`
  ADD PRIMARY KEY (`etikett_id`),
  ADD KEY `benutzer_id` (`benutzer_id`),
  ADD KEY `cas-nummer` (`cas-nummer`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `phrase_etikett`
--
ALTER TABLE `phrase_etikett`
  MODIFY `etikett_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `phrase_etikett`
--
ALTER TABLE `phrase_etikett`
  ADD CONSTRAINT `phrase_etikett_ibfk_1` FOREIGN KEY (`benutzer_id`) REFERENCES `phrase_benutzer` (`benutzer_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
