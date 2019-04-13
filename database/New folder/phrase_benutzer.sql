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
-- Table structure for table `phrase_benutzer`
--

CREATE TABLE `phrase_benutzer` (
  `benutzer_id` mediumint(8) UNSIGNED NOT NULL,
  `firma_id` smallint(5) UNSIGNED NOT NULL DEFAULT '1',
  `firma_text` varchar(45) NOT NULL,
  `sprache_id` smallint(5) UNSIGNED NOT NULL,
  `uebersetzungsprache_id` smallint(5) UNSIGNED NOT NULL,
  `abteilung` varchar(45) DEFAULT NULL,
  `titel` varchar(15) DEFAULT NULL,
  `anrede` varchar(5) NOT NULL,
  `vorname` varchar(45) NOT NULL,
  `nachname` varchar(45) NOT NULL,
  `strasse1` varchar(45) DEFAULT NULL,
  `strasse2` varchar(45) DEFAULT NULL,
  `strasse3` varchar(45) DEFAULT NULL,
  `plz` varchar(10) DEFAULT NULL,
  `ort` varchar(60) DEFAULT NULL,
  `land_id` smallint(5) UNSIGNED DEFAULT NULL,
  `telefon` varchar(25) NOT NULL,
  `mobil` varchar(25) DEFAULT NULL,
  `telefax` varchar(25) DEFAULT NULL,
  `email` varchar(60) NOT NULL,
  `emailhash` varchar(64) NOT NULL DEFAULT '''''',
  `email_pruef` tinyint(1) DEFAULT '0',
  `benutzername` varchar(30) NOT NULL,
  `passwort` varchar(64) NOT NULL,
  `gruppe` tinyint(3) UNSIGNED NOT NULL DEFAULT '99',
  `datenschutz` tinyint(1) DEFAULT '0',
  `agb` tinyint(1) DEFAULT '0',
  `alle_uebersetzungen` tinyint(1) NOT NULL DEFAULT '0',
  `zeitstempel` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `phrase_benutzer`
--

INSERT INTO `phrase_benutzer` (`benutzer_id`, `firma_id`, `firma_text`, `sprache_id`, `uebersetzungsprache_id`, `abteilung`, `titel`, `anrede`, `vorname`, `nachname`, `strasse1`, `strasse2`, `strasse3`, `plz`, `ort`, `land_id`, `telefon`, `mobil`, `telefax`, `email`, `emailhash`, `email_pruef`, `benutzername`, `passwort`, `gruppe`, `datenschutz`, `agb`, `alle_uebersetzungen`, `zeitstempel`) VALUES
(2, 3, 'Rimpido', 14, 15, 'EH&S-Team', 'Dr.', 'Herr', 'Thorsten', 'Werner', 'Mendelssohnstraße 74', '', '', '22761', 'Hamburg', 56, '040', '', '', 'thworx@gmx.de', '4a606ae826254069231fb52f48caefb85889d325', 1, 'thorsten', '0eb04a0222504d00ee62867f749783df474a515e', 99, 1, 1, 0, '2017-02-24 20:39:00'),
(4, 7, 'DocÖga', 14, 15, 'EH&S-Team', 'Dr.', 'Herr', 'Thorsten', 'Werner', 'Reiherstieg 40', '', '', '21244', 'Nuchholz i.d.N.', 56, '04181/1386456', '', '', 'thorsten.werner@rimpido.com', '79406b0fd99cff0ff153b10cd8a70a25b40b5f0b', 1, 'thorsten-sap', '0eb04a0222504d00ee62867f749783df474a515e', 99, 1, 1, 0, '2017-02-24 20:39:27'),
(6, 1, 'rimpido GmbH', 15, 15, 'Leitung', 'Dr.', 'Herr', 'Jan', 'Schuur', 'Reiherstieg 40', '', '', '21244', 'Buchholz', 56, '041811386456', '', '', 'schuur@rimpido.com', 'eaf562a50c80d832e363f3169e1bd0f8bd067565', 1, 'Jan', 'cb9c7f2a0874061d6d3e6b36822ad81ad53bc362', 1, 1, 1, 1, '2018-05-16 15:48:46'),
(7, 1, 'rimpido GmBH', 14, 15, 'Übersetzer-Team', '', 'Frau', 'Anne-Sophie', 'Schuur', 'Reiherstieg', '', '', '21244', 'Buchholz', 56, '041811386456', '', '', 'anne@schuur-nordheide.de', '', 0, 'Anne', 'eebd2815067791ea5524705a947fca6b5525168f', 6, 1, 1, 0, '2013-08-05 14:26:36'),
(8, 1, 'rimpido GmbH', 14, 27, 'Übersetzer-Team', '', 'Frau', 'Armonika', 'Sergeeva', 'Seidenstickerstr. 13a', '', '', '33609', 'Bielefeld', 56, '017646327400', '', '', 'ushka89@mail.ru', '372ae810d1decfc1209be818fe4829c48eb2d6c7', 1, 'nika', '07c08b36f24f167c18d1a413c6c8b7cfc41789f3', 5, 1, 1, 0, '2014-08-05 09:25:20'),
(9, 1, 'rimpido GmbH', 14, 20, 'Übersetzer-Team', '', 'Frau', 'Yukiko', 'Kasami', 'Meyersche Weg 39', '', '', '21244', 'Buchholz', 56, '04181 1386456', '', '', 'ponmame910@hotmail.com', '4ad7172cbaae0f8bf7d97ef91f70d3f3f843df94', 1, 'YUKIKO', '74149d6e2262de5551a4f8513d42d9ff03e00228', 5, 1, 1, 0, '2015-07-02 07:47:38'),
(10, 1, 'rimpido', 14, 2, 'Übersetzer-Team', '', 'Frau', 'Huafang', 'Jin', 'Beethovenstrasse 43b', '', '', '26655', 'Westerstede', 56, '0049-17650162252', '', '', 'Huafang.Jin@rimpido.com', '9ac2f720d5139a9e3fa030417435be0c571846a0', 1, 'huafang', '648efb0939c39ce4096a631253ee074bf23e7353', 1, 1, 1, 0, '2017-09-28 14:02:33'),
(11, 3, 'Rimpido', 14, 14, 'EH&S-Team', '', 'Frau', 'Jannie', 'Martwich', 'Reiherstieg 40', '', '', '21244', 'Buchholz i.d.N.', 56, '0176', '', '', 'jannie.martwich@rimpido.com', '3ccbad5ed9d1800fabdc8830ecc79f0702f92a09', 1, 'jannie', 'd415f60a4ac59204d72e2e7b64df8410f3a5e3c0', 80, 1, 1, 0, '2015-10-25 15:53:44'),
(12, 1, 'rimpido', 14, 15, 'Übersetzer-Team', '', 'Herr', 'Max', 'Schuur', 'Reiherstieg', '40', '', '21244', 'Buchholz', 56, '04181212695', '', '', 'max@schuur-nordheide.de', '2fbb9c052e0c089ae1697c857f4d4c132592b767', 1, 'MaxSchuur1', '4c81fea5e16e9a920f6bd4b6ba25757795b550a9', 2, 1, 1, 0, '2017-12-11 08:48:53'),
(13, 3, 'privat', 14, 15, 'Privat', '', 'Herr', 'Lars', 'Satow', 'grosse strasse', '', '', 'qwert', 'qwert', 12, 'qwert', '', '', 'lars_satow@hotmail.com', '532d0b823d7c3699bee5c91d5d21d45eb1cb236d', 1, 'phrase123', '4e671ac133db088eea67b3a08cc504878559a1cf', 2, 1, 1, 0, '2013-08-05 14:15:15'),
(21, 1, 'Rimd', 15, 15, 'Rim', '', 'Frau', 'Thorsten', 'Werner', '', '', '', '', '', 12, '', '', '', 'thorsten.werner@rimpido.com', '', 0, 'thorsten123', '4418f9424a4f3d59a3082c98ffc5c5c2eba0e481', 98, 1, 1, 0, '2013-09-03 13:05:03'),
(22, 4, 'Sigma-Aldrich', 15, 15, 'Compliance', 'PhD.', 'Frau', 'Annalisa', 'Poletti', 'Via Gallarate 154', '', '', '20151', 'Milano', 105, '+39 02 33417345', '', '+39 02 33417209', 'annalisa.poletti@sial.com', '', 0, 'poletti', 'd33b7ddfec4fe866214d3d35773834f9db7b38e6', 3, 1, 1, 1, '2013-12-11 12:58:26'),
(23, 1, 'Rimpido', 14, 28, 'Beratung', 'Dr.', 'Herr', 'Noel', 'Ferro Diaz', '', '', '', '', '', 56, '', '', '', 'noel.ferro@rimpido.com', '600eca89e27ddeb1016dd10e550abc2215ef592d', 1, 'noel.ferro', 'e979028b58f7be9319db5f823ad7c8cde481cd39', 2, 1, 1, 0, '2017-02-28 09:57:28'),
(24, 5, 'Krka', 15, 6, 'ITT', '', 'Frau', 'Alenka', 'Tomc', '', '', '', '', '', 193, '', '', '', 'alenka.tomc@krka.biz', '34e643c5c6932f36d2a6a6bd9f561eb36d2699c2', 1, 'tomca', 'cd0f8ffdd9bf29efea47ab1b96b3fb6864ca3939', 2, 1, 1, 0, '2014-05-14 12:01:29'),
(25, 4, 'Sigma-Aldrich', 15, 15, 'Compliance', 'Dr.', 'Frau', 'Annalisa', 'Poletti', 'Via Gallarate 154', '', '', '20151', 'Milano', 105, '390233417345', '390233417345', '', 'annalisa.poletti@sial.com', '', 0, 'apoletti', 'd33b7ddfec4fe866214d3d35773834f9db7b38e6', 2, 1, 1, 1, '2014-05-14 11:58:38'),
(27, 4, 'Sigma-Aldrich International GmbH', 15, 15, 'Compliance', '', 'Herr', 'Roberto', 'Cialfi', 'Wassergasse 7', '', '', '9000', 'St. Gallen', 40, '+4171 242 80 66', '+4179 305 22 80', '+4171 242 80 80', 'roberto.cialfi@sial.com', '', 0, 'rcialfi', '6c45937770c99123aa104f9a0a8ebc3d9f30a151', 3, 1, 1, 0, '2014-05-14 11:58:10'),
(28, 1, 'Rimpido', 14, 14, 'Etiketten', '', 'Herr', 'Rimpido', 'GmbH', '', '', '', '', '', 56, '', '', '', 'info@rimpido.com', '', 0, 'rimpido', '6cb874104fbb0fac0f6bf091ae018a786bf7789b', 20, 1, 1, 0, '2014-05-15 13:26:32'),
(29, 1, 'Rimpido', 14, 5, 'Ubersetzung', '', 'Frau', 'Corina', 'Vasilescu', 'Zimbrului', '', '', '300072', 'Timisoara', 183, '+40746078978', '', '', 'corina_m_vasilescu@yahoo.com', '3e922d02777e7fe68aadb756057442f43ede3484', 1, 'CorinaV', '101e871656e30f2035cfdbab8ccb4c4770acbe47', 80, 1, 1, 1, '2015-09-30 16:08:28'),
(30, 1, 'Rimpido', 14, 14, '---', '', 'Herr', 'Christoph', 'Reimann', '', '', '', '', '', 56, '', '', '', 'christoph.reimann@rimpido.com', 'a654bbd30ae3f904cf6519884c7b7166e9cd4353', 1, 'christoph.reimann', '4b44e3b184cc65958ee8684cbc32d3bb130d1a24', 2, 1, 1, 0, '2014-11-04 09:22:33'),
(31, 1, 'Werzel', 14, 14, 'MoD', '', 'Frau', 'Thorsten', 'Werner', '', '', '', '', '', 12, '', '', '', 'thorsten.werner@werzel.de', '0369929ed3a3b7964220795979a3a7715c8579ca', 1, 'ThorstenW', '2febd7d82bc7b8c9d1b033a9578895374f6684b3', 99, 1, 1, 0, '2015-03-09 20:39:31'),
(32, 6, 'Schülke & Mayr GmbH', 14, 14, 'IT', '', 'Frau', 'Ann-Christin', 'Benecke', '', '', '', '', '', 12, '', '', '', 'ann-christin.benecke@schuelke.com', '0429fabc111d517f104e2818c286ba1f233650b8', 1, 'SchuelkeEHS', '3eee8272ae22f4b0f2a862135d737d6e6a4c212b', 2, 1, 1, 0, '2015-03-24 09:53:00'),
(33, 1, 'ريمبيدو', 15, 11, 'ألمانيا', '', 'Frau', 'وفاء', 'حجازي', '', '', '', '', '', 56, '', '', '', 'wafaa-job80@hotmail.com', 'b4dbd712410ecb4bb2444052fef0644eadbc234f', 1, 'wafaa', '2402a5d54c5fabada1a707c73b155c74ada3271f', 2, 1, 1, 1, '2015-10-26 09:54:30'),
(34, 1, 'Rimpido', 14, 11, 'Germany', '', 'Herr', 'Fadi', 'Alhassan', '', '', '', '', '', 56, '', '', '', 'fadi-job79@hotmail.com', '76145fdcd90aff5673639e7f1a271a38b30c910e', 1, 'FADI', '99205bf2334bea482774b6b033f04040636af9b3', 2, 1, 1, 1, '2015-10-27 10:35:28'),
(35, 1, 'rimpido', 14, 14, 'intern', '', 'Herr', 'Rico', 'WIlde', '', '', '', '', '', 56, '', '', '', 'rico.wilde@rimpido.com', '8a1826985a3aae650160e8e311799ee96b190748', 1, 'rico.wilde', '8d3f6397e5bc97480c97127dd41317bcafe169ff', 2, 1, 1, 0, '2016-02-10 10:52:28'),
(36, 1, 'rimpido', 14, 11, 'IT', '', 'Herr', 'Tarek', 'Bayaa', '', '', '', '', 'Hamburg', 56, '', '', '', 'tarek.bayaa@rimpido.com', '4f670cf0cf776cc583e9e8ec083a196edda3734a', 1, 'tarek.bayaa', '1682027b8427424fb76f54893051f8eabe0b2413', 70, 1, 1, 1, '2017-11-27 20:23:20'),
(37, 1, 'rimpido GmbH', 14, 14, 'rimpido', '', 'Herr', 'Marc', 'Bachmann', '', '', '', '', '', 56, '', '', '', 'marc.bachmann@rimpido.com', '32d1507169d853ea1763b563f7337510cbd6a808', 1, 'Marc', 'c13641d69e3184ab74b5cc8ebf64dbb5f6a21544', 1, 1, 1, 0, '2016-06-07 09:56:45'),
(38, 7, 'Compo Expert GmbH', 14, 14, 'QSE', '', 'Frau', 'Lea', 'Küchler', '', '', '', '', '', 56, '', '', '', 'lea.kuechler@compo-expert.com', '9142fb964c7d0a1f1849685c57a7d9ad88634ab7', 1, 'L.Kuechler', 'a9caa0f457b0a32f1c72dcd4bd6a9cfc56306771', 3, 1, 1, 0, '2016-05-30 08:29:01'),
(39, 9, 'Lonza AG', 14, 14, 'Data and System ', '', 'Herr', 'Edgar', 'Zimmermann', '', '', '', '', 'Visp', 40, '+41279485906', '', '', 'edgar.zimmermann@lonza.com', '40c4a098ef863cabd2e079e81ebedea8f52a2299', 1, 'ezimmerman', 'fc49b7e5d7f80472d97430aa55d5936ca6fa4580', 3, 1, 1, 0, '2016-07-22 11:51:51'),
(40, 1, 'Rimpido Gmbh', 14, 14, 'ab', '', 'Herr', 'Kay Heinrich ', 'Schuur', '', '', '', '', '', 56, '', '', '', 'kay@schuur-nordheide.de', 'c6946cf490ea5b79bd783fbefee8fda935421741', 1, 'kay', '464e1ae4b3dccb725672814cad2922169c394ad1', 3, 1, 1, 0, '2017-11-15 14:58:51'),
(41, 1, 'None', 15, 43, 'None', '', 'Frau', 'Cherry', 'Valiente', '', '', '', '', '', 172, '', '', '', 'cmvaliente23@gmail.com', 'a25d5556911074eba618ed155c57a4f2ef77f24d', 1, 'Cherry1991', '6ecaedbe9160a44da5d164242de7c2051d0a9d06', 3, 1, 1, 1, '2017-11-27 20:26:29'),
(42, 1, '', 14, 15, 'IT', '', 'Herr', 'Test', 'Rimpido', '', '', '', '', '', 56, '', '', '', 'it.admin@rimpido.com', '67cc2e592dd5fc23fd8277a785fb2bec2f388d35', 1, 'test', 'b1519a184783b23a8f20540bf9938e3329d17a0c', 11, 1, 1, 0, '2017-09-18 12:15:44');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `phrase_benutzer`
--
ALTER TABLE `phrase_benutzer`
  ADD PRIMARY KEY (`benutzer_id`),
  ADD UNIQUE KEY `Benutzername` (`benutzername`),
  ADD KEY `firma_id` (`firma_id`),
  ADD KEY `uebersetzungsprache_id` (`uebersetzungsprache_id`),
  ADD KEY `sprache_id` (`sprache_id`),
  ADD KEY `land_id` (`land_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `phrase_benutzer`
--
ALTER TABLE `phrase_benutzer`
  MODIFY `benutzer_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `phrase_benutzer`
--
ALTER TABLE `phrase_benutzer`
  ADD CONSTRAINT `phrase_benutzer_ibfk_1` FOREIGN KEY (`firma_id`) REFERENCES `phrase_firma` (`firma_id`),
  ADD CONSTRAINT `phrase_benutzer_ibfk_2` FOREIGN KEY (`sprache_id`) REFERENCES `phrase_sprache` (`sprache_id`),
  ADD CONSTRAINT `phrase_benutzer_ibfk_3` FOREIGN KEY (`land_id`) REFERENCES `phrase_land` (`land_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
