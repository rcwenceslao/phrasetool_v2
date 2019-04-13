-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 09, 2019 at 12:19 PM
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
-- Table structure for table `phrase_landtext`
--

CREATE TABLE `phrase_landtext` (
  `landtext_id` mediumint(8) UNSIGNED NOT NULL,
  `land_id` smallint(5) UNSIGNED NOT NULL,
  `sprache_id` smallint(5) UNSIGNED NOT NULL,
  `landesname` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `phrase_landtext`
--

INSERT INTO `phrase_landtext` (`landtext_id`, `land_id`, `sprache_id`, `landesname`) VALUES
(2, 2, 14, 'Andorra'),
(3, 3, 14, 'Ver.Arab.Emir.'),
(4, 4, 14, 'Afghanistan'),
(5, 5, 14, 'Antigua/Barbuda'),
(6, 6, 14, 'Albanien'),
(7, 7, 14, 'Armenien'),
(8, 8, 14, 'Niederl.Antill.'),
(9, 9, 14, 'Angola'),
(10, 10, 14, 'Argentinien'),
(11, 11, 14, 'Samoa, American'),
(12, 12, 14, 'Österreich'),
(13, 13, 14, 'Australien'),
(14, 14, 14, 'Aruba'),
(15, 15, 14, 'Aserbaidschan'),
(16, 16, 14, 'Bosnien-Herz.'),
(17, 17, 14, 'Barbados'),
(18, 18, 14, 'Bangladesch'),
(19, 19, 14, 'Belgien'),
(20, 20, 14, 'Burkina Faso'),
(21, 21, 14, 'Bulgarien'),
(22, 22, 14, 'Bahrain'),
(23, 23, 14, 'Burundi'),
(24, 24, 14, 'Benin'),
(25, 25, 14, 'Bermuda'),
(26, 26, 14, 'Brunei'),
(27, 27, 14, 'Bolivien'),
(28, 28, 14, 'Brasilien'),
(29, 29, 14, 'Bahamas'),
(30, 30, 14, 'Bhutan'),
(31, 31, 14, '(Birma) s. MM'),
(32, 32, 14, 'Botswana'),
(33, 33, 14, 'Weißrußland'),
(34, 34, 14, 'Belize'),
(35, 35, 14, 'Kanada'),
(36, 36, 14, 'Kokosinseln'),
(37, 37, 14, 'Republik Kongo'),
(38, 38, 14, 'Zentralaf. Rep.'),
(39, 39, 14, 'Kongo'),
(40, 40, 14, 'Schweiz'),
(41, 41, 14, 'Elfenbeinküste'),
(42, 42, 14, 'Cookinseln'),
(43, 43, 14, 'Chile'),
(44, 44, 14, 'Kamerun'),
(45, 45, 14, 'China'),
(46, 46, 14, 'Kolumbien'),
(47, 47, 14, 'Costa Rica'),
(48, 48, 14, '(siehe XS)'),
(49, 49, 14, 'Kuba'),
(50, 50, 14, 'Kap Verde'),
(51, 51, 14, 'Weihnachtsinsel'),
(52, 52, 14, 'Zypern'),
(53, 53, 14, 'Zypern'),
(54, 54, 14, 'Tschechien'),
(55, 55, 14, '(Andorra) s.AD'),
(56, 56, 14, 'Deutschland'),
(57, 57, 14, 'Dschibuti'),
(58, 58, 14, 'Dänemark'),
(59, 59, 14, 'Dominica'),
(60, 60, 14, 'Dominik. Rep.'),
(61, 61, 14, 'Algerien'),
(62, 62, 14, 'Ecuador'),
(63, 63, 14, 'Estland'),
(64, 64, 14, 'Ägypten'),
(65, 65, 14, 'Eritrea'),
(66, 66, 14, 'Spanien'),
(67, 67, 14, 'Äthiopien'),
(68, 68, 14, 'Finnland'),
(69, 69, 14, 'Fidschi'),
(70, 70, 14, 'Falklandinseln'),
(71, 71, 14, '(Liechtenst.)LI'),
(72, 72, 14, 'Mikronesien'),
(73, 73, 14, 'Färöer'),
(74, 74, 14, 'Frankreich'),
(75, 75, 14, 'Gabun'),
(76, 76, 14, 'Grossbritannien'),
(77, 77, 14, 'Grenada'),
(78, 78, 14, 'Georgien'),
(79, 79, 14, 'Französ. Guinea'),
(80, 80, 14, 'Ghana'),
(81, 81, 14, 'Gibraltar'),
(82, 82, 14, 'Grönland'),
(83, 83, 14, 'Gambia'),
(84, 84, 14, 'Guinea'),
(85, 85, 14, 'Guadeloupe'),
(86, 86, 14, 'Äquatorialguine'),
(87, 87, 14, 'Griechenland'),
(88, 88, 14, 'Guatemala'),
(89, 89, 14, 'Guam'),
(90, 90, 14, 'Guinea-Bissau'),
(91, 91, 14, 'Guyana'),
(92, 92, 14, 'Hongkong'),
(93, 93, 14, 'Honduras'),
(94, 94, 14, 'Kroatien'),
(95, 95, 14, 'Haiti'),
(96, 96, 14, 'Ungarn'),
(97, 97, 14, 'Indonesien'),
(98, 98, 14, 'Irland'),
(99, 99, 14, 'Israel'),
(100, 100, 14, 'Isle of Man'),
(101, 101, 14, 'Indien'),
(102, 102, 14, 'Irak'),
(103, 103, 14, 'Iran'),
(104, 104, 14, 'Island'),
(105, 105, 14, 'Italien'),
(106, 106, 14, 'Jamaika'),
(107, 107, 14, 'Jordanien'),
(108, 108, 14, 'Japan'),
(109, 109, 14, 'Kenia'),
(110, 110, 14, 'Kirgisistan'),
(111, 111, 14, 'Kambodscha'),
(112, 112, 14, 'Kiribati'),
(113, 113, 14, 'Komoren'),
(114, 114, 14, 'St.Chr.,Nevis'),
(115, 115, 14, '(Kroatien)s.HR'),
(116, 116, 14, 'Nordkorea'),
(117, 117, 14, 'Südkorea'),
(118, 118, 14, 'Kuwait'),
(119, 119, 14, 'Kaimaninseln'),
(120, 120, 14, 'Kasachstan'),
(121, 121, 14, 'Laos'),
(122, 122, 14, 'Libanon'),
(123, 123, 14, 'St. Lucia'),
(124, 124, 14, '(Lettland) s.LV'),
(125, 125, 14, 'Liechtenstein'),
(126, 126, 14, 'Sri Lanka'),
(127, 127, 14, 'Liberia'),
(128, 128, 14, 'Lesotho'),
(129, 129, 14, 'Litauen'),
(130, 130, 14, 'Luxemburg'),
(131, 131, 14, 'Lettland'),
(132, 132, 14, 'Libyen'),
(133, 133, 14, 'Marokko'),
(134, 134, 14, 'Monaco'),
(135, 135, 14, 'Moldau'),
(136, 136, 14, 'Montenegro'),
(137, 137, 14, 'Madagaskar'),
(138, 138, 14, 'Marshall-Insel'),
(139, 139, 14, 'Mazedonien'),
(140, 140, 14, '(Mazedon.)s.MK'),
(141, 141, 14, 'Mali'),
(142, 142, 14, 'Myanmar (Birma)'),
(143, 143, 14, 'Mongolei'),
(144, 144, 14, 'Macau'),
(145, 145, 14, 'Martinique'),
(146, 146, 14, 'Mauretanien'),
(147, 147, 14, 'Montserrat'),
(148, 148, 14, 'Malta'),
(149, 149, 14, 'Mauritius'),
(150, 150, 14, 'Malediven'),
(151, 151, 14, 'Malawi'),
(152, 152, 14, 'Mexiko'),
(153, 153, 14, 'Malaysia'),
(154, 154, 14, 'Mosambik'),
(155, 155, 14, 'Namibia'),
(156, 156, 14, 'Neukaledonien'),
(157, 157, 14, 'Niger'),
(158, 158, 14, 'Nordfolkinseln'),
(159, 159, 14, 'Nigeria'),
(160, 160, 14, 'Nicaragua'),
(161, 161, 14, 'Niederlande'),
(162, 162, 14, 'Norwegen'),
(163, 163, 14, 'Nepal'),
(164, 164, 14, 'Nauru'),
(165, 165, 14, 'Niue-Inseln'),
(166, 166, 14, 'Neuseeland'),
(167, 167, 14, 'Oman'),
(168, 168, 14, 'Panama'),
(169, 169, 14, 'Peru'),
(170, 170, 14, 'FranzPolynesien'),
(171, 171, 14, 'Papua-Neuguinea'),
(172, 172, 14, 'Philippinen'),
(173, 173, 14, 'Pakistan'),
(174, 174, 14, 'Polen'),
(175, 175, 14, 'St.Pier,Miquel.'),
(176, 176, 14, 'Nicht verwenden'),
(177, 177, 14, 'Portugal'),
(178, 178, 14, 'Paraguay'),
(179, 179, 14, 'Katar'),
(180, 180, 14, '(Katar) s. QA'),
(181, 181, 14, 'Reunion'),
(182, 182, 14, 'nicht nutzen:RU'),
(183, 183, 14, 'Rumänien'),
(184, 184, 14, 'Russ.Föderation'),
(185, 185, 14, 'Ruanda'),
(186, 186, 14, 'Saudi-Arabien'),
(187, 187, 14, 'Salomonen'),
(188, 188, 14, 'Seschellen'),
(189, 189, 14, 'Sudan'),
(190, 190, 14, 'Schweden'),
(191, 191, 14, 'Singapur'),
(192, 192, 14, 'St. Helena'),
(193, 193, 14, 'Slowenien'),
(194, 194, 14, 'Slowakische Rep'),
(195, 195, 14, 'Sierra Leone'),
(196, 196, 14, 'San Marino'),
(197, 197, 14, 'Senegal'),
(198, 198, 14, 'Somalia'),
(199, 199, 14, 'Suriname'),
(200, 200, 14, '(Sloven.) s.SI'),
(201, 201, 14, 'S.Tome,Principe'),
(202, 202, 14, 'GUS'),
(203, 203, 14, 'El Salvador'),
(204, 204, 14, '(Slow.Rep) s.SK'),
(205, 205, 14, 'Syrien'),
(206, 206, 14, 'Swasiland'),
(207, 207, 14, 'Turks-,Caicosin'),
(208, 208, 14, 'Tschad'),
(209, 209, 14, 'Togo'),
(210, 210, 14, 'Thailand'),
(211, 211, 14, 'Tadschikistan'),
(212, 212, 14, 'Turkmenistan'),
(213, 213, 14, 'Tunesien'),
(214, 214, 14, 'Tonga'),
(215, 215, 14, 'Türkei'),
(216, 216, 14, 'Trinidad,Tobago'),
(217, 217, 14, 'Tuvalu'),
(218, 218, 14, 'Taiwan'),
(219, 219, 14, 'Tansania'),
(220, 220, 14, 'Ukraine'),
(221, 221, 14, '(V.Ar.Emir.) AE'),
(222, 222, 14, 'Uganda'),
(223, 223, 14, 'USA'),
(224, 224, 14, 'Uruguay'),
(225, 225, 14, 'Usbekistan'),
(226, 226, 14, 'Vatikanstadt'),
(227, 227, 14, 'St. Vincent'),
(228, 228, 14, 'Venezuela'),
(229, 229, 14, 'Brit.Jungferni.'),
(230, 230, 14, 'Amer.Jungferni.'),
(231, 231, 14, 'Vietnam'),
(232, 232, 14, 'Vanuatu'),
(233, 233, 14, 'Wallis,Futuna'),
(234, 234, 14, 'Westsamoa'),
(235, 235, 14, 'Kosovo'),
(236, 236, 14, '(nicht verw)'),
(237, 237, 14, 'Serbien'),
(238, 238, 14, '(Südjemen)s.YE'),
(239, 239, 14, 'Jemen'),
(240, 240, 14, 'Mayotte'),
(241, 241, 14, '(Serb&Mo)->CS'),
(242, 242, 14, 'Südafrika'),
(243, 243, 14, 'Sambia'),
(244, 244, 14, 'Zaire'),
(245, 245, 14, 'Simbabwe'),
(246, 246, 14, '(n.EG-Ursprung)'),
(247, 56, 15, 'Germany'),
(248, 56, 27, 'Германия'),
(249, 56, 20, 'ドイツ'),
(250, 12, 15, 'Austria');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `phrase_landtext`
--
ALTER TABLE `phrase_landtext`
  ADD PRIMARY KEY (`landtext_id`),
  ADD UNIQUE KEY `unique_land_und_sprache` (`land_id`,`sprache_id`),
  ADD KEY `land_id` (`land_id`),
  ADD KEY `sprache_id` (`sprache_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `phrase_landtext`
--
ALTER TABLE `phrase_landtext`
  MODIFY `landtext_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=251;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `phrase_landtext`
--
ALTER TABLE `phrase_landtext`
  ADD CONSTRAINT `phrase_landtext_ibfk_1` FOREIGN KEY (`land_id`) REFERENCES `phrase_land` (`land_id`),
  ADD CONSTRAINT `phrase_landtext_ibfk_2` FOREIGN KEY (`sprache_id`) REFERENCES `phrase_sprache` (`sprache_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
