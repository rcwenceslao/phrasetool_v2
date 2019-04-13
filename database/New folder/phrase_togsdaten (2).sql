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
-- Table structure for table `phrase_togsdaten`
--

CREATE TABLE `phrase_togsdaten` (
  `togsdaten_id` int(10) UNSIGNED NOT NULL,
  `guid` varchar(32) NOT NULL,
  `merkmal_kurz` varchar(45) NOT NULL,
  `phrasentext_kombiniert` text NOT NULL,
  `phrasenid_kombiniert` text,
  `komplett` tinyint(1) NOT NULL DEFAULT '0',
  `test` tinyint(1) DEFAULT NULL,
  `test1` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `phrase_togsdaten`
--
ALTER TABLE `phrase_togsdaten`
  ADD PRIMARY KEY (`togsdaten_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `phrase_togsdaten`
--
ALTER TABLE `phrase_togsdaten`
  MODIFY `togsdaten_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
