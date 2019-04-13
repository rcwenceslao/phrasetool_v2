-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 10, 2019 at 04:53 AM
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
-- Table structure for table `phrase_auswahlmenge_merkmal`
--

CREATE TABLE `phrase_auswahlmenge_merkmal` (
  `auswahlmenge_ref_merkmal_id` int(10) UNSIGNED NOT NULL,
  `auswahlmenge_id` int(10) UNSIGNED NOT NULL,
  `merkmal_id` int(10) UNSIGNED NOT NULL,
  `eigenschaft_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `phrase_auswahlmenge_merkmal`
--

INSERT INTO `phrase_auswahlmenge_merkmal` (`auswahlmenge_ref_merkmal_id`, `auswahlmenge_id`, `merkmal_id`, `eigenschaft_id`) VALUES
(1, 1, 9, 3),
(2, 2, 10, 4),
(884, 3, 1054, 277),
(885, 4, 1107, 284),
(886, 5, 1106, 284),
(887, 6, 1104, 284),
(888, 7, 1105, 284),
(889, 8, 1146, 303),
(890, 9, 1147, 304),
(891, 10, 1148, 305),
(892, 11, 1149, 306),
(893, 12, 1150, 307),
(894, 13, 1140, 299),
(895, 14, 1139, 299),
(896, 15, 1138, 298),
(897, 16, 1141, 300),
(898, 17, 1142, 301),
(899, 18, 1155, 312),
(900, 19, 1117, 288),
(901, 20, 1118, 289),
(902, 21, 1120, 291),
(903, 22, 1135, 295),
(904, 23, 1132, 293),
(905, 24, 1121, 292),
(906, 25, 1134, 294),
(907, 26, 1116, 287),
(908, 27, 1119, 290),
(909, 28, 1071, 281),
(910, 29, 1070, 281),
(911, 30, 1065, 281),
(912, 31, 1062, 281),
(913, 32, 1067, 281),
(914, 33, 1069, 281),
(915, 34, 1066, 281),
(916, 35, 1068, 281),
(917, 36, 1061, 280),
(918, 37, 1058, 280),
(919, 38, 1055, 280),
(920, 39, 1060, 280),
(921, 40, 1059, 280),
(922, 41, 1112, 285),
(923, 42, 1115, 285),
(924, 43, 1153, 311),
(925, 44, 1154, 311),
(926, 45, 1152, 310),
(927, 46, 1143, 301),
(928, 47, 1144, 301),
(929, 48, 1145, 301),
(930, 49, 1136, 295),
(931, 50, 1126, 293),
(932, 51, 1130, 293),
(933, 52, 1127, 293),
(934, 53, 1122, 293),
(935, 54, 1129, 293),
(936, 55, 1128, 293),
(937, 56, 1114, 285),
(938, 57, 1109, 285),
(939, 58, 1080, 282),
(940, 59, 1076, 282),
(941, 60, 1075, 282),
(942, 61, 1079, 282),
(943, 62, 1078, 282),
(944, 63, 1072, 282),
(945, 64, 1081, 282),
(946, 65, 1077, 282),
(947, 66, 1102, 283),
(948, 67, 1087, 283),
(949, 68, 1098, 283),
(950, 69, 1094, 283),
(951, 70, 1101, 283),
(952, 71, 1100, 283),
(953, 72, 1099, 283),
(954, 73, 1097, 283),
(955, 74, 1096, 283),
(956, 75, 1095, 283),
(957, 76, 1089, 283),
(958, 77, 1093, 283),
(959, 78, 1090, 283),
(960, 79, 1091, 283),
(961, 80, 1092, 283),
(962, 81, 1082, 283),
(963, 82, 1103, 283),
(964, 83, 1086, 283),
(965, 84, 1088, 283),
(966, 85, 1085, 283),
(967, 86, 1151, 308),
(968, 87, 1137, 296);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `phrase_auswahlmenge_merkmal`
--
ALTER TABLE `phrase_auswahlmenge_merkmal`
  ADD PRIMARY KEY (`auswahlmenge_ref_merkmal_id`),
  ADD UNIQUE KEY `awm_merkmal_eigenschaft` (`auswahlmenge_id`,`merkmal_id`,`eigenschaft_id`),
  ADD KEY `auswahlmenge_id` (`auswahlmenge_id`),
  ADD KEY `merkmal_id` (`merkmal_id`),
  ADD KEY `eigenschaft_id` (`eigenschaft_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `phrase_auswahlmenge_merkmal`
--
ALTER TABLE `phrase_auswahlmenge_merkmal`
  MODIFY `auswahlmenge_ref_merkmal_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=969;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `phrase_auswahlmenge_merkmal`
--
ALTER TABLE `phrase_auswahlmenge_merkmal`
  ADD CONSTRAINT `phrase_auswahlmenge_merkmal_ibfk_1` FOREIGN KEY (`auswahlmenge_id`) REFERENCES `phrase_auswahlmenge` (`auswahlmenge_id`),
  ADD CONSTRAINT `phrase_auswahlmenge_merkmal_ibfk_2` FOREIGN KEY (`merkmal_id`) REFERENCES `phrase_merkmal` (`merkmal_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
