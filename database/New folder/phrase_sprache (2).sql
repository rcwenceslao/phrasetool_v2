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
-- Table structure for table `phrase_sprache`
--

CREATE TABLE `phrase_sprache` (
  `sprache_id` smallint(5) UNSIGNED NOT NULL,
  `sprache_iso2` varchar(2) DEFAULT NULL,
  `sprache_iso3` varchar(3) NOT NULL,
  `sprache_iso4` varchar(4) DEFAULT NULL,
  `prioritaet` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `komplett` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `phrase_sprache`
--

INSERT INTO `phrase_sprache` (`sprache_id`, `sprache_iso2`, `sprache_iso3`, `sprache_iso4`, `prioritaet`, `komplett`) VALUES
(1, 'sr', 'srp', NULL, 1, 0),
(2, 'zh', 'zho', NULL, 1, 0),
(3, 'th', 'tha', NULL, 1, 0),
(4, 'ko', 'kor', NULL, 1, 0),
(5, 'ro', 'ron', NULL, 1, 0),
(6, 'sl', 'slv', NULL, 1, 0),
(7, 'hr', 'hrv', NULL, 1, 0),
(8, 'ms', 'msa', NULL, 1, 0),
(9, 'uk', 'ukr', NULL, 1, 0),
(10, 'et', 'est', NULL, 1, 0),
(11, 'ar', 'ara', NULL, 1, 0),
(12, 'he', 'heb', NULL, 1, 0),
(13, 'cs', 'ces', NULL, 1, 0),
(14, 'de', 'deu', NULL, 1, 1),
(15, 'en', 'eng', NULL, 1, 1),
(16, 'fr', 'fra', NULL, 1, 0),
(17, 'el', 'grc', NULL, 1, 0),
(18, 'hu', 'hun', NULL, 1, 0),
(19, 'it', 'ita', NULL, 1, 0),
(20, 'ja', 'jpn', NULL, 1, 1),
(21, 'da', 'dan', NULL, 1, 0),
(22, 'pl', 'pol', NULL, 1, 0),
(23, 'zf', 'zft', NULL, 1, 0),
(24, 'nl', 'nld', NULL, 1, 0),
(25, 'pt', 'por', NULL, 1, 0),
(26, 'sk', 'slk', NULL, 1, 0),
(27, 'ru', 'rus', NULL, 1, 1),
(28, 'es', 'spa', NULL, 1, 0),
(29, 'tr', 'tur', NULL, 1, 0),
(30, 'fi', 'fin', NULL, 1, 0),
(31, 'sv', 'swe', NULL, 1, 0),
(32, 'bg', 'bul', NULL, 1, 0),
(33, 'lt', 'lit', NULL, 1, 0),
(34, 'lv', 'lav', NULL, 1, 0),
(36, 'af', 'afr', NULL, 1, 0),
(37, 'is', 'isl', NULL, 1, 0),
(38, 'ca', 'cat', NULL, 1, 0),
(39, 'sh', 'srp', NULL, 1, 0),
(40, 'id', 'ind', NULL, 1, 0),
(41, '1x', 'spa', NULL, 1, 0),
(42, '3f', 'fra', NULL, 1, 0),
(43, 'p1', 'phi', NULL, 1, 0),
(44, 'ab', 'abq', NULL, 0, 0),
(45, 'ab', 'abk', NULL, 0, 0),
(46, '', 'ace', NULL, 0, 0),
(47, '', 'ady', NULL, 0, 0),
(48, 'aa', 'aar', NULL, 0, 0),
(50, '', 'arz', NULL, 0, 0),
(51, '', 'ain', NULL, 0, 0),
(52, 'ak', '\r', NULL, 0, 0),
(53, 'sq', 'sqi', NULL, 0, 0),
(54, '', 'als', NULL, 0, 0),
(55, 'ar', 'arq', NULL, 0, 0),
(56, '', 'ang', NULL, 0, 0),
(57, '', 'grc', NULL, 0, 0),
(58, 'cu', 'chu', NULL, 0, 0),
(59, '', 'non', NULL, 0, 0),
(60, '', 'otk', NULL, 0, 0),
(61, '', 'amr', NULL, 0, 0),
(62, 'am', 'amh', NULL, 0, 0),
(63, 'qu', 'qxn', NULL, 0, 0),
(64, '', 'anp', NULL, 0, 0),
(65, 'ao', 'njo', NULL, 0, 0),
(67, 'an', 'arg', NULL, 0, 0),
(68, '', 'arc', NULL, 0, 0),
(69, '', 'aro', NULL, 0, 0),
(70, 'hy', 'hye', NULL, 0, 0),
(71, '', 'rup', NULL, 0, 0),
(72, 'az', 'aze', NULL, 0, 0),
(73, 'as', 'asm', NULL, 0, 0),
(74, '', 'ast', NULL, 0, 0),
(75, 'av', 'ava', NULL, 0, 0),
(76, 'ay', 'aym', NULL, 0, 0),
(77, '', 'bqi', NULL, 0, 0),
(78, '', 'bfq', NULL, 0, 0),
(79, '', 'bar', NULL, 0, 0),
(80, '', 'ban', NULL, 0, 0),
(81, 'bm', 'bam', NULL, 0, 0),
(82, '', 'bjn', NULL, 0, 0),
(83, 'jv', 'jav', NULL, 0, 0),
(84, 'ba', 'bak', NULL, 0, 0),
(85, 'eu', 'eus', NULL, 0, 0),
(86, '', 'bcc', NULL, 0, 0),
(87, 'bn', 'ben', NULL, 0, 0),
(88, 'bh', 'bho', NULL, 0, 0),
(89, '', 'bik', NULL, 0, 0),
(90, 'my', 'mya', NULL, 0, 0),
(91, '', 'bpy', NULL, 0, 0),
(92, 'bi', 'bis', NULL, 0, 0),
(93, '', 'brx', NULL, 0, 0),
(94, 'bs', 'bos', NULL, 0, 0),
(95, '', 'brh', NULL, 0, 0),
(96, 'br', 'bre', NULL, 0, 0),
(97, '', 'bug', NULL, 0, 0),
(98, 'bg', 'bul', NULL, 0, 0),
(100, '', 'bxr', NULL, 0, 0),
(101, '', 'ceb', NULL, 0, 0),
(102, '', 'cbk', NULL, 0, 0),
(103, '', 'kjh', NULL, 0, 0),
(104, 'ch', 'cha', NULL, 0, 0),
(105, '', 'chr', NULL, 0, 0),
(106, '', 'chy', NULL, 0, 0),
(107, '', 'chi', NULL, 0, 0),
(108, 'ny', 'nya', NULL, 0, 0),
(110, '', 'chn', NULL, 0, 0),
(111, '', 'cho', NULL, 0, 0),
(112, 'cr', 'cre', NULL, 0, 0),
(114, '', 'prs', NULL, 0, 0),
(116, 'dv', 'div', NULL, 0, 0),
(117, '', 'dng', NULL, 0, 0),
(118, '', 'dtp', NULL, 0, 0),
(119, 'dz', 'dzo', NULL, 0, 0),
(120, '', 'sim', NULL, 0, 0),
(121, '', 'als', NULL, 0, 0),
(122, '', 'eml', NULL, 0, 0),
(124, '', 'ese', NULL, 0, 0),
(125, '', 'myv', NULL, 0, 0),
(126, 'eo', 'epo', NULL, 0, 0),
(128, 'ee', 'evn', NULL, 0, 0),
(129, '', 'ext', NULL, 0, 0),
(130, 'fo', 'fao', NULL, 0, 0),
(131, 'fa', 'fas', NULL, 0, 0),
(132, 'fa', 'pes', NULL, 0, 0),
(133, 'fj', 'fij', NULL, 0, 0),
(134, '', 'hif', NULL, 0, 0),
(135, '', 'fil', NULL, 0, 0),
(137, '', 'frp', NULL, 0, 0),
(139, 'ff', 'ful', NULL, 0, 0),
(140, '', 'fur', NULL, 0, 0),
(141, '', 'gag', NULL, 0, 0),
(142, 'gl', 'glg', NULL, 0, 0),
(143, 'zh', 'gan', NULL, 0, 0),
(144, '', 'aln', NULL, 0, 0),
(145, 'ka', 'kat', NULL, 0, 0),
(146, '', 'glk', NULL, 0, 0),
(147, '', 'got', NULL, 0, 0),
(150, 'gn', 'grn', NULL, 0, 0),
(151, 'gu', 'guj', NULL, 0, 0),
(152, 'ht', 'hat', NULL, 0, 0),
(153, 'zh', 'hak', NULL, 0, 0),
(154, 'ha', 'hau', NULL, 0, 0),
(155, '', 'haw', NULL, 0, 0),
(156, '', 'haz', NULL, 0, 0),
(158, '', 'hil', NULL, 0, 0),
(159, 'hi', 'hin', NULL, 0, 0),
(160, '', 'ho\r', NULL, 0, 0),
(161, '', 'hmn', NULL, 0, 0),
(162, '', 'ibb', NULL, 0, 0),
(163, 'io', 'ido', NULL, 0, 0),
(164, 'ig', 'ibo', NULL, 0, 0),
(165, '', 'ilo', NULL, 0, 0),
(167, '', 'inh', NULL, 0, 0),
(168, 'ia', 'ina', NULL, 0, 0),
(169, 'ie', 'ile', NULL, 0, 0),
(171, 'ik', 'ipk', NULL, 0, 0),
(172, 'ga', 'gle', NULL, 0, 0),
(173, 'xh', 'xho', NULL, 0, 0),
(174, 'zu', 'zul', NULL, 0, 0),
(177, '', 'sah', NULL, 0, 0),
(178, '', 'jam', NULL, 0, 0),
(181, 'yi', 'yid', NULL, 0, 0),
(182, '', 'kac', NULL, 0, 0),
(183, '', 'kbd', NULL, 0, 0),
(184, '', 'kab', NULL, 0, 0),
(185, '', 'xal', NULL, 0, 0),
(186, 'kn', 'kan', NULL, 0, 0),
(187, 'zh', 'yue', NULL, 0, 0),
(188, 'kr', 'kau', NULL, 0, 0),
(189, '', 'pam', NULL, 0, 0),
(190, '', 'kaa', NULL, 0, 0),
(192, '', 'krl', NULL, 0, 0),
(193, '', 'rue', NULL, 0, 0),
(194, 'kk', 'kaz', NULL, 0, 0),
(195, '', 'csb', NULL, 0, 0),
(196, 'ks', 'kas', NULL, 0, 0),
(198, 'km', 'khm', NULL, 0, 0),
(199, '', 'khw', NULL, 0, 0),
(200, 'qu', 'qug', NULL, 0, 0),
(201, 'kg', 'kon', NULL, 0, 0),
(202, 'ki', 'kik', NULL, 0, 0),
(203, '', 'sjd', NULL, 0, 0),
(204, '', 'krj', NULL, 0, 0),
(205, 'rw', 'kin', NULL, 0, 0),
(206, '', 'sgc', NULL, 0, 0),
(207, 'ky', 'kir', NULL, 0, 0),
(208, 'rn', 'run', NULL, 0, 0),
(209, '', 'lzh', NULL, 0, 0),
(210, '', 'trp', NULL, 0, 0),
(211, 'kv', 'kpv', NULL, 0, 0),
(212, 'kv', 'koi', NULL, 0, 0),
(213, '', 'kok', NULL, 0, 0),
(215, 'kw', 'cor', NULL, 0, 0),
(216, 'co', 'cos', NULL, 0, 0),
(217, '', 'crh', NULL, 0, 0),
(218, '', 'jct', NULL, 0, 0),
(220, '', 'kum', NULL, 0, 0),
(221, 'ku', 'kur', NULL, 0, 0),
(222, 'kj', 'kua', NULL, 0, 0),
(223, '', 'lld', NULL, 0, 0),
(224, '', 'lad', NULL, 0, 0),
(225, '', 'lhu', NULL, 0, 0),
(226, '', 'lbe', NULL, 0, 0),
(227, 'lo', 'lao', NULL, 0, 0),
(228, '', 'lzz', NULL, 0, 0),
(229, 'la', 'lat', NULL, 0, 0),
(230, '', 'lez', NULL, 0, 0),
(231, 'lv', 'ltg', NULL, 0, 0),
(233, '', 'lij', NULL, 0, 0),
(234, 'll', 'lim', NULL, 0, 0),
(235, 'ln', 'lin', NULL, 0, 0),
(237, '', 'liv', NULL, 0, 0),
(238, '', 'jbo', NULL, 0, 0),
(239, '', 'lmo', NULL, 0, 0),
(240, '', 'loz', NULL, 0, 0),
(241, 'lg', 'lug', NULL, 0, 0),
(242, 'lb', 'ltz', NULL, 0, 0),
(243, '', 'mad', NULL, 0, 0),
(244, '', 'mai', NULL, 0, 0),
(245, 'mg', 'mlg', NULL, 0, 0),
(247, 'ml', 'mal', NULL, 0, 0),
(248, 'mt', 'mlt', NULL, 1, 0),
(249, '', 'mnc', NULL, 0, 0),
(250, 'gv', 'glv', NULL, 0, 0),
(251, 'mi', 'mri', NULL, 0, 0),
(252, '', 'arn', NULL, 0, 0),
(253, 'mr', 'mar', NULL, 0, 0),
(254, '', 'mhr', NULL, 0, 0),
(255, '', 'mrj', NULL, 0, 0),
(256, '', 'ary', NULL, 0, 0),
(257, 'mh', 'mah', NULL, 0, 0),
(258, '', 'mzn', NULL, 0, 0),
(259, '', 'yua', NULL, 0, 0),
(260, '', 'maz', NULL, 0, 0),
(261, 'mk', 'mdk', NULL, 0, 0),
(262, '', 'ruq', NULL, 0, 0),
(263, 'zh', 'cdo', NULL, 0, 0),
(264, 'zh', 'nan', NULL, 0, 0),
(265, '', 'min', NULL, 0, 0),
(266, '', 'xmf', NULL, 0, 0),
(267, '', 'mwl', NULL, 0, 0),
(268, '', 'enm', NULL, 0, 0),
(269, '', 'lus', NULL, 0, 0),
(270, '', 'mdf', NULL, 0, 0),
(271, 'mn', 'mon', NULL, 0, 0),
(272, '', 'mfe', NULL, 0, 0),
(273, '', 'mus', NULL, 0, 0),
(274, '', 'nah', NULL, 0, 0),
(275, 'na', 'nau', NULL, 0, 0),
(276, 'nv', 'nav', NULL, 0, 0),
(277, '', 'ppl', NULL, 0, 0),
(278, '', 'nap', NULL, 0, 0),
(279, '', 'nds', NULL, 0, 0),
(280, '', 'ne\r', NULL, 0, 0),
(281, '', 'new', NULL, 0, 0),
(282, '', 'yrl', NULL, 0, 0),
(284, '', 'nds', NULL, 0, 0),
(285, '', 'dsb', NULL, 0, 0),
(286, '', 'niu', NULL, 0, 0),
(287, '', 'atv', NULL, 0, 0),
(288, '', 'frr', NULL, 0, 0),
(289, '', 'lrc', NULL, 0, 0),
(290, 'se', 'sme', NULL, 0, 0),
(291, '', 'nso', NULL, 0, 0),
(292, '', 'kiu', NULL, 0, 0),
(293, '', 'pih', NULL, 0, 0),
(294, '', 'nrm', NULL, 0, 0),
(295, 'nb', 'nob', NULL, 1, 0),
(296, 'nn', 'nno', NULL, 0, 0),
(297, '', 'nov', NULL, 0, 0),
(298, '', 'hsb', NULL, 0, 0),
(299, '', 'ryu', NULL, 0, 0),
(300, 'oc', 'oci', NULL, 0, 0),
(301, 'or', 'ori', NULL, 0, 0),
(302, 'om', 'orm', NULL, 0, 0),
(303, 'ng', 'ndo', NULL, 0, 0),
(304, '', 'ota', NULL, 0, 0),
(305, 'os', 'oss', NULL, 0, 0),
(306, '', 'vmf', NULL, 0, 0),
(307, 'hz', 'her', NULL, 0, 0),
(308, '', 'ote', NULL, 0, 0),
(309, 'pi', 'pli', NULL, 0, 0),
(310, '', 'pag', NULL, 0, 0),
(311, 'pa', 'pan', NULL, 0, 0),
(312, '', 'pap', NULL, 0, 0),
(313, 'ps', 'pus', NULL, 0, 0),
(314, '', 'uun', NULL, 0, 0),
(315, '', 'pdc', NULL, 0, 0),
(316, '', 'pfl', NULL, 0, 0),
(317, '', 'pcd', NULL, 0, 0),
(318, '', 'pms', NULL, 0, 0),
(319, '', 'pis', NULL, 0, 0),
(320, '', 'pdt', NULL, 0, 0),
(321, '', 'pko', NULL, 0, 0),
(323, '', 'pnt', NULL, 0, 0),
(325, 'qu', 'que', NULL, 0, 0),
(326, '', 'rar', NULL, 0, 0),
(327, '', 'bto', NULL, 0, 0),
(328, '', 'ksh', NULL, 0, 0),
(329, '', 'rtm', NULL, 0, 0),
(332, '', 'slr', NULL, 0, 0),
(333, 'sm', 'smo', NULL, 0, 0),
(334, 'sg', 'sag', NULL, 0, 0),
(335, 'sa', 'san', NULL, 0, 0),
(336, '', 'skr', NULL, 0, 0),
(337, 'sc', 'srd', NULL, 0, 0),
(338, '', 'sdc', NULL, 0, 0),
(339, '', 'stq', NULL, 0, 0),
(340, '', 'sgs', NULL, 0, 0),
(341, '', 'sli', NULL, 0, 0),
(342, '', 'szl', NULL, 0, 0),
(343, 'gd', 'gla', NULL, 0, 0),
(344, '', 'swg', NULL, 0, 0),
(346, '', 'sco', NULL, 0, 0),
(347, '', 'zea', NULL, 0, 0),
(349, 'sh', 'hbs', NULL, 0, 0),
(350, '', 'sei', NULL, 0, 0),
(351, 'st', 'sot', NULL, 0, 0),
(352, 'tn', 'tsn', NULL, 0, 0),
(353, 'sn', 'sna', NULL, 0, 0),
(354, 'ii', 'iii', NULL, 0, 0),
(355, 'sd', 'snd', NULL, 0, 0),
(356, 'si', 'sin', NULL, 0, 0),
(357, 'ss', 'ssw', NULL, 0, 0),
(358, '', 'scn', NULL, 0, 0),
(361, 'so', 'som', NULL, 0, 0),
(362, '', 'ckb', NULL, 0, 0),
(364, '', 'srn', NULL, 0, 0),
(365, '', 'alt', NULL, 0, 0),
(366, 'az', 'azb', NULL, 0, 0),
(367, '', 'sma', NULL, 0, 0),
(368, '', 'diq', NULL, 0, 0),
(369, 'su', 'sun', NULL, 0, 0),
(370, 'sw', 'swa', NULL, 0, 0),
(371, 'tg', 'tgk', NULL, 0, 0),
(372, 'tl', 'tgl', NULL, 0, 0),
(373, 'ty', 'tah', NULL, 0, 0),
(374, '', 'tzm', NULL, 0, 0),
(375, 'ta', 'tam', NULL, 0, 0),
(376, '', 'roa', NULL, 0, 0),
(377, '', 'rif', NULL, 0, 0),
(378, '', 'shi', NULL, 0, 0),
(379, 'tt', 'tat', NULL, 0, 0),
(380, 'te', 'tel', NULL, 0, 0),
(381, '', 'tet', NULL, 0, 0),
(383, 'bo', 'bod', NULL, 0, 0),
(384, 'ti', 'tir', NULL, 0, 0),
(385, '', 'tpi', NULL, 0, 0),
(386, 'to', 'ton', NULL, 0, 0),
(387, '', 'tsd', NULL, 0, 0),
(389, 'ce', 'che', NULL, 0, 0),
(390, '', 'ckt', NULL, 0, 0),
(391, 'cv', 'chv', NULL, 0, 0),
(392, 've', 'ven', NULL, 0, 0),
(393, '', 'tcy', NULL, 0, 0),
(394, '', 'tum', NULL, 0, 0),
(395, '', 'aeb', NULL, 0, 0),
(397, 'tk', 'tuk', NULL, 0, 0),
(398, '', 'tvl', NULL, 0, 0),
(399, '', 'tyv', NULL, 0, 0),
(400, 'tw', 'twi', NULL, 0, 0),
(401, '', 'udm', NULL, 0, 0),
(402, 'ug', 'uig', NULL, 0, 0),
(405, 'ur', 'urd', NULL, 0, 0),
(406, 'uz', 'uzb', NULL, 0, 0),
(407, 'vi', 'vie', NULL, 0, 0),
(408, 'vo', 'vol', NULL, 0, 0),
(409, 'et', 'vro', NULL, 0, 0),
(410, '', 'rmy', NULL, 0, 0),
(411, 'cy', 'cym', NULL, 0, 0),
(413, '', 'wls', NULL, 0, 0),
(414, 'wa', 'wln', NULL, 0, 0),
(415, '', 'war', NULL, 0, 0),
(416, 'be', 'bel', NULL, 0, 0),
(417, 'be', 'bex', NULL, 0, 0),
(418, '', 'vep', NULL, 0, 0),
(419, '', 'vls', NULL, 0, 0),
(420, 'fy', 'fry', NULL, 0, 0),
(421, 'pa', 'pnb', NULL, 0, 0),
(422, '', 'wym', NULL, 0, 0),
(423, 'wo', 'wol', NULL, 0, 0),
(424, 'zh', 'wuu', NULL, 0, 0),
(425, 'zh', 'hsn', NULL, 0, 0),
(426, 'ts', 'tso', NULL, 0, 0),
(427, 'yo', 'yor', NULL, 0, 0),
(428, 'za', 'zha', NULL, 0, 0),
(429, 'no', 'nor', NULL, 1, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `phrase_sprache`
--
ALTER TABLE `phrase_sprache`
  ADD PRIMARY KEY (`sprache_id`),
  ADD KEY `komplett` (`komplett`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `phrase_sprache`
--
ALTER TABLE `phrase_sprache`
  MODIFY `sprache_id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=430;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
