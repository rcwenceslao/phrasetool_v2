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
-- Table structure for table `phrase_klasse_merkmal`
--

CREATE TABLE `phrase_klasse_merkmal` (
  `klasse_ref_merkmal_id` int(10) UNSIGNED NOT NULL,
  `klasse_id` int(10) UNSIGNED NOT NULL,
  `merkmal_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `phrase_klasse_merkmal`
--

INSERT INTO `phrase_klasse_merkmal` (`klasse_ref_merkmal_id`, `klasse_id`, `merkmal_id`) VALUES
(1, 2, 2),
(8, 2, 3),
(3, 2, 4),
(4, 2, 5),
(7, 2, 7),
(6, 2, 8),
(9, 3, 9),
(10, 4, 10),
(1134, 219, 1054),
(1135, 220, 1055),
(1136, 220, 1056),
(1137, 220, 1057),
(1138, 220, 1058),
(1139, 220, 1059),
(1140, 220, 1060),
(1141, 220, 1061),
(1142, 221, 1062),
(1143, 221, 1063),
(1144, 221, 1064),
(1145, 221, 1065),
(1146, 221, 1066),
(1147, 221, 1067),
(1148, 221, 1068),
(1149, 221, 1069),
(1150, 221, 1070),
(1151, 221, 1071),
(1152, 222, 1072),
(1153, 222, 1073),
(1154, 222, 1074),
(1155, 222, 1075),
(1156, 222, 1076),
(1157, 222, 1077),
(1158, 222, 1078),
(1159, 222, 1079),
(1160, 222, 1080),
(1161, 222, 1081),
(1162, 223, 1082),
(1163, 223, 1083),
(1164, 223, 1084),
(1165, 223, 1085),
(1166, 223, 1086),
(1167, 223, 1087),
(1168, 223, 1088),
(1169, 223, 1089),
(1170, 223, 1090),
(1171, 223, 1091),
(1172, 223, 1092),
(1173, 223, 1093),
(1174, 223, 1094),
(1175, 223, 1095),
(1176, 223, 1096),
(1177, 223, 1097),
(1178, 223, 1098),
(1179, 223, 1099),
(1180, 223, 1100),
(1181, 223, 1101),
(1182, 223, 1102),
(1183, 223, 1103),
(1184, 224, 1104),
(1185, 224, 1105),
(1186, 224, 1106),
(1187, 224, 1107),
(1188, 224, 1108),
(1189, 225, 1109),
(1190, 225, 1110),
(1191, 225, 1111),
(1192, 225, 1112),
(1193, 225, 1113),
(1194, 225, 1114),
(1195, 225, 1115),
(1196, 226, 1116),
(1197, 227, 1117),
(1198, 228, 1118),
(1199, 229, 1119),
(1200, 230, 1120),
(1201, 231, 1121),
(1202, 232, 1122),
(1203, 232, 1123),
(1204, 232, 1124),
(1205, 232, 1125),
(1206, 232, 1126),
(1207, 232, 1127),
(1208, 232, 1128),
(1209, 232, 1129),
(1210, 232, 1130),
(1211, 232, 1131),
(1212, 232, 1132),
(1213, 232, 1133),
(1214, 233, 1134),
(1215, 234, 1135),
(1216, 234, 1136),
(1217, 235, 1137),
(1218, 236, 1138),
(1219, 237, 1139),
(1220, 237, 1140),
(1221, 238, 1141),
(1222, 239, 1142),
(1223, 239, 1143),
(1224, 239, 1144),
(1225, 239, 1145),
(1226, 240, 1146),
(1227, 241, 1147),
(1228, 242, 1148),
(1229, 243, 1149),
(1230, 244, 1150),
(1231, 245, 1151),
(1232, 246, 1152),
(1233, 247, 1153),
(1234, 247, 1154),
(1235, 248, 1155),
(1240, 249, 1156),
(1239, 249, 1157),
(1241, 249, 1158),
(1238, 249, 1159),
(1236, 249, 1160),
(1237, 249, 1161),
(1242, 250, 1162),
(1243, 250, 1163),
(1244, 250, 1164),
(1245, 250, 1165),
(1246, 250, 1166),
(1247, 250, 1167);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `phrase_klasse_merkmal`
--
ALTER TABLE `phrase_klasse_merkmal`
  ADD PRIMARY KEY (`klasse_ref_merkmal_id`),
  ADD UNIQUE KEY `klasse_merkmal` (`klasse_id`,`merkmal_id`),
  ADD KEY `klasse_id` (`klasse_id`),
  ADD KEY `merkmal_id` (`merkmal_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `phrase_klasse_merkmal`
--
ALTER TABLE `phrase_klasse_merkmal`
  MODIFY `klasse_ref_merkmal_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1248;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `phrase_klasse_merkmal`
--
ALTER TABLE `phrase_klasse_merkmal`
  ADD CONSTRAINT `phrase_klasse_merkmal_ibfk_1` FOREIGN KEY (`klasse_id`) REFERENCES `phrase_klasse` (`klasse_id`),
  ADD CONSTRAINT `phrase_klasse_merkmal_ibfk_2` FOREIGN KEY (`merkmal_id`) REFERENCES `phrase_merkmal` (`merkmal_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
