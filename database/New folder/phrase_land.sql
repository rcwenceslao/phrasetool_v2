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
-- Table structure for table `phrase_land`
--

CREATE TABLE `phrase_land` (
  `land_id` smallint(5) UNSIGNED NOT NULL,
  `sap_code` varchar(2) NOT NULL,
  `iso2_code` varchar(2) NOT NULL,
  `prioritaet` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `phrase_land`
--

INSERT INTO `phrase_land` (`land_id`, `sap_code`, `iso2_code`, `prioritaet`) VALUES
(2, 'AD', 'AD', 0),
(3, 'AE', 'AE', 0),
(4, 'AF', 'AF', 0),
(5, 'AG', 'AG', 0),
(6, 'AL', 'AL', 0),
(7, 'AM', 'AM', 0),
(8, 'AN', 'AN', 0),
(9, 'AO', 'AO', 0),
(10, 'AR', 'AR', 0),
(11, 'AS', 'AS', 0),
(12, 'AT', 'AT', 1),
(13, 'AU', 'AU', 1),
(14, 'AW', 'AW', 0),
(15, 'AZ', 'AZ', 0),
(16, 'BA', 'BA', 0),
(17, 'BB', 'BB', 0),
(18, 'BD', 'BD', 0),
(19, 'BE', 'BE', 1),
(20, 'BF', 'BF', 0),
(21, 'BG', 'BG', 0),
(22, 'BH', 'BH', 0),
(23, 'BI', 'BI', 0),
(24, 'BJ', 'BJ', 0),
(25, 'BM', 'BM', 0),
(26, 'BN', 'BN', 0),
(27, 'BO', 'BO', 0),
(28, 'BR', 'BR', 0),
(29, 'BS', 'BS', 0),
(30, 'BT', 'BT', 0),
(31, 'BU', 'BU', 0),
(32, 'BW', 'BW', 0),
(33, 'BY', 'BY', 0),
(34, 'BZ', 'BZ', 0),
(35, 'CA', 'CA', 0),
(36, 'CC', 'CC', 0),
(37, 'CD', 'CD', 0),
(38, 'CF', 'CF', 0),
(39, 'CG', 'CG', 0),
(40, 'CH', 'CH', 1),
(41, 'CI', 'CI', 0),
(42, 'CK', 'CK', 0),
(43, 'CL', 'CL', 0),
(44, 'CM', 'CM', 0),
(45, 'CN', 'CN', 0),
(46, 'CO', 'CO', 0),
(47, 'CR', 'CR', 0),
(48, 'CS', 'CS', 0),
(49, 'CU', 'CU', 0),
(50, 'CV', 'CV', 0),
(51, 'CX', 'CX', 0),
(52, 'CY', 'CY', 0),
(53, 'CY', 'CY', 0),
(54, 'CZ', 'CZ', 1),
(55, 'D', 'D', 0),
(56, 'DE', 'DE', 1),
(57, 'DJ', 'DJ', 0),
(58, 'DK', 'DK', 1),
(59, 'DM', 'DM', 0),
(60, 'DO', 'DO', 0),
(61, 'DZ', 'DZ', 0),
(62, 'EC', 'EC', 0),
(63, 'EE', 'EE', 0),
(64, 'EG', 'EG', 0),
(65, 'ER', 'ER', 0),
(66, 'ES', 'ES', 1),
(67, 'ET', 'ET', 0),
(68, 'FI', 'FI', 1),
(69, 'FJ', 'FJ', 0),
(70, 'FK', 'FK', 0),
(71, 'FL', 'FL', 0),
(72, 'FM', 'FM', 0),
(73, 'FO', 'FO', 0),
(74, 'FR', 'FR', 1),
(75, 'GA', 'GA', 0),
(76, 'GB', 'GB', 1),
(77, 'GD', 'GD', 0),
(78, 'GE', 'GE', 0),
(79, 'GF', 'GF', 0),
(80, 'GH', 'GH', 0),
(81, 'GI', 'GI', 0),
(82, 'GL', 'GL', 0),
(83, 'GM', 'GM', 0),
(84, 'GN', 'GN', 0),
(85, 'GP', 'GP', 0),
(86, 'GQ', 'GQ', 0),
(87, 'GR', 'GR', 0),
(88, 'GT', 'GT', 0),
(89, 'GU', 'GU', 0),
(90, 'GW', 'GW', 0),
(91, 'GY', 'GY', 0),
(92, 'HK', 'HK', 0),
(93, 'HN', 'HN', 0),
(94, 'HR', 'HR', 0),
(95, 'HT', 'HT', 0),
(96, 'HU', 'HU', 0),
(97, 'ID', 'ID', 0),
(98, 'IE', 'IE', 1),
(99, 'IL', 'IL', 0),
(100, 'IM', 'IM', 0),
(101, 'IN', 'IN', 0),
(102, 'IQ', 'IQ', 0),
(103, 'IR', 'IR', 0),
(104, 'IS', 'IS', 0),
(105, 'IT', 'IT', 1),
(106, 'JM', 'JM', 0),
(107, 'JO', 'JO', 0),
(108, 'JP', 'JP', 1),
(109, 'KE', 'KE', 0),
(110, 'KG', 'KG', 0),
(111, 'KH', 'KH', 0),
(112, 'KI', 'KI', 0),
(113, 'KM', 'KM', 0),
(114, 'KN', 'KN', 0),
(115, 'KO', 'HR', 0),
(116, 'KP', 'KP', 0),
(117, 'KR', 'KR', 0),
(118, 'KW', 'KW', 0),
(119, 'KY', 'KY', 0),
(120, 'KZ', 'KZ', 0),
(121, 'LA', 'LA', 0),
(122, 'LB', 'LB', 0),
(123, 'LC', 'LC', 0),
(124, 'LE', 'LV', 0),
(125, 'LI', 'LI', 0),
(126, 'LK', 'LK', 0),
(127, 'LR', 'LR', 0),
(128, 'LS', 'LS', 0),
(129, 'LT', 'LT', 0),
(130, 'LU', 'LU', 0),
(131, 'LV', 'LV', 0),
(132, 'LY', 'LY', 0),
(133, 'MA', 'MA', 0),
(134, 'MC', 'MC', 0),
(135, 'MD', 'MD', 0),
(136, 'ME', 'ME', 0),
(137, 'MG', 'MG', 0),
(138, 'MH', 'MH', 0),
(139, 'MK', 'MK', 0),
(140, 'MK', 'MK', 0),
(141, 'ML', 'ML', 0),
(142, 'MM', 'MM', 0),
(143, 'MN', 'MN', 0),
(144, 'MO', 'MO', 0),
(145, 'MQ', 'MQ', 0),
(146, 'MR', 'MR', 0),
(147, 'MS', 'MS', 0),
(148, 'MT', 'MT', 0),
(149, 'MU', 'MU', 0),
(150, 'MV', 'MV', 0),
(151, 'MW', 'MW', 0),
(152, 'MX', 'MX', 0),
(153, 'MY', 'MY', 0),
(154, 'MZ', 'MZ', 0),
(155, 'NA', 'NA', 0),
(156, 'NC', 'NC', 0),
(157, 'NE', 'NE', 0),
(158, 'NF', 'NF', 0),
(159, 'NG', 'NG', 0),
(160, 'NI', 'NI', 0),
(161, 'NL', 'NL', 1),
(162, 'NO', 'NO', 1),
(163, 'NP', 'NP', 0),
(164, 'NR', 'NR', 0),
(165, 'NU', 'NU', 0),
(166, 'NZ', 'NZ', 0),
(167, 'OM', 'OM', 0),
(168, 'PA', 'PA', 0),
(169, 'PE', 'PE', 0),
(170, 'PF', 'PF', 0),
(171, 'PG', 'PG', 0),
(172, 'PH', 'PH', 0),
(173, 'PK', 'PK', 0),
(174, 'PL', 'PL', 1),
(175, 'PM', 'PM', 0),
(176, 'PR', 'PR', 0),
(177, 'PT', 'PT', 1),
(178, 'PY', 'PY', 0),
(179, 'QA', 'QA', 0),
(180, 'QU', 'QU', 0),
(181, 'RE', 'RE', 0),
(182, 'RF', 'RF', 0),
(183, 'RO', 'RO', 0),
(184, 'RU', 'RU', 1),
(185, 'RW', 'RW', 0),
(186, 'SA', 'SA', 0),
(187, 'SB', 'SB', 0),
(188, 'SC', 'SC', 0),
(189, 'SD', 'SD', 0),
(190, 'SE', 'SE', 1),
(191, 'SG', 'SG', 0),
(192, 'SH', 'SH', 0),
(193, 'SI', 'SI', 0),
(194, 'SK', 'SK', 0),
(195, 'SL', 'SL', 0),
(196, 'SM', 'SM', 0),
(197, 'SN', 'SN', 0),
(198, 'SO', 'SO', 0),
(199, 'SR', 'SR', 0),
(200, 'SS', 'SS', 0),
(201, 'ST', 'ST', 0),
(202, 'SU', 'SU', 0),
(203, 'SV', 'SV', 0),
(204, 'SW', 'SW', 0),
(205, 'SY', 'SY', 0),
(206, 'SZ', 'SZ', 0),
(207, 'TC', 'TC', 0),
(208, 'TD', 'TD', 0),
(209, 'TG', 'TG', 0),
(210, 'TH', 'TH', 0),
(211, 'TJ', 'TJ', 0),
(212, 'TM', 'TM', 0),
(213, 'TN', 'TN', 0),
(214, 'TO', 'TO', 0),
(215, 'TR', 'TR', 0),
(216, 'TT', 'TT', 0),
(217, 'TV', 'TV', 0),
(218, 'TW', 'TW', 0),
(219, 'TZ', 'TZ', 0),
(220, 'UA', 'UA', 0),
(221, 'UA', 'AE', 0),
(222, 'UG', 'UG', 0),
(223, 'US', 'US', 1),
(224, 'UY', 'UY', 0),
(225, 'UZ', 'UZ', 0),
(226, 'VA', 'VA', 0),
(227, 'VC', 'VC', 0),
(228, 'VE', 'VE', 0),
(229, 'VG', 'VG', 0),
(230, 'VI', 'VI', 0),
(231, 'VN', 'VN', 0),
(232, 'VU', 'VU', 0),
(233, 'WF', 'WF', 0),
(234, 'WS', 'WS', 0),
(235, 'XK', 'XK', 0),
(236, 'XM', 'XM', 0),
(237, 'XS', 'XS', 0),
(238, 'YD', 'YD', 0),
(239, 'YE', 'YE', 0),
(240, 'YT', 'YT', 0),
(241, 'YU', 'YU', 0),
(242, 'ZA', 'ZA', 0),
(243, 'ZM', 'ZM', 0),
(244, 'ZR', 'ZR', 0),
(245, 'ZW', 'ZW', 0),
(246, 'ZZ', '', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `phrase_land`
--
ALTER TABLE `phrase_land`
  ADD PRIMARY KEY (`land_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `phrase_land`
--
ALTER TABLE `phrase_land`
  MODIFY `land_id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=247;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
