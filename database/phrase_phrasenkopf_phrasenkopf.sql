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
-- Table structure for table `phrase_phrasenkopf_phrasenkopf`
--

CREATE TABLE `phrase_phrasenkopf_phrasenkopf` (
  `phrasenkopf_ref_phrasenkopf_id` int(10) UNSIGNED NOT NULL,
  `phrasenkopf_id` int(10) UNSIGNED NOT NULL,
  `ref_phrasenkopf_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `phrase_phrasenkopf_phrasenkopf`
--
ALTER TABLE `phrase_phrasenkopf_phrasenkopf`
  ADD PRIMARY KEY (`phrasenkopf_ref_phrasenkopf_id`),
  ADD UNIQUE KEY `phrasenkopf_phrasenkopf` (`phrasenkopf_id`,`ref_phrasenkopf_id`),
  ADD KEY `ref_phrasenkopf_id` (`ref_phrasenkopf_id`),
  ADD KEY `phrasenkopf_id` (`phrasenkopf_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `phrase_phrasenkopf_phrasenkopf`
--
ALTER TABLE `phrase_phrasenkopf_phrasenkopf`
  MODIFY `phrasenkopf_ref_phrasenkopf_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
