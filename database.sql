-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Mar 12, 2023 at 04:01 AM
-- Server version: 8.0.31
-- PHP Version: 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `maisonneuve2194679`
--
CREATE DATABASE IF NOT EXISTS `maisonneuve2194679` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `maisonneuve2194679`;

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

DROP TABLE IF EXISTS `cities`;
CREATE TABLE IF NOT EXISTS `cities` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'New Elishamouth', '2023-03-12 02:38:19', '2023-03-12 02:38:19'),
(2, 'North Desiree', '2023-03-12 02:38:19', '2023-03-12 02:38:19'),
(3, 'East Elisabeth', '2023-03-12 02:38:19', '2023-03-12 02:38:19'),
(4, 'Adamsborough', '2023-03-12 02:38:19', '2023-03-12 02:38:19'),
(5, 'North Beverlyfort', '2023-03-12 02:38:19', '2023-03-12 02:38:19'),
(6, 'Okunevatown', '2023-03-12 02:38:19', '2023-03-12 02:38:19'),
(7, 'Deonfort', '2023-03-12 02:38:19', '2023-03-12 02:38:19'),
(8, 'Kerluketown', '2023-03-12 02:38:19', '2023-03-12 02:38:19'),
(9, 'Eunashire', '2023-03-12 02:38:19', '2023-03-12 02:38:19'),
(10, 'Port Valerie', '2023-03-12 02:38:19', '2023-03-12 02:38:19'),
(11, 'New Idafurt', '2023-03-12 02:38:19', '2023-03-12 02:38:19'),
(12, 'North Cassidyshire', '2023-03-12 02:38:19', '2023-03-12 02:38:19'),
(13, 'East Kelsiechester', '2023-03-12 02:38:19', '2023-03-12 02:38:19'),
(14, 'Croninburgh', '2023-03-12 02:38:19', '2023-03-12 02:38:19'),
(15, 'Feliciamouth', '2023-03-12 02:38:19', '2023-03-12 02:38:19');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(2, '2023_03_11_205417_create_students_table', 1),
(3, '2023_03_11_205441_create_cities_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
CREATE TABLE IF NOT EXISTS `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

DROP TABLE IF EXISTS `students`;
CREATE TABLE IF NOT EXISTS `students` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `students_city_id_foreign` (`city_id`)
) ENGINE=MyISAM AUTO_INCREMENT=105 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `name`, `email`, `phone`, `address`, `city_id`, `created_at`, `updated_at`) VALUES
(104, 'étudiant', 'etudiant@gmai.com', '3rt782y578123412', '412749812', 2, '2023-03-12 07:44:55', '2023-03-12 07:54:01'),
(102, 'Test 123', 'test@gagagoogoo.ca', '45124214', '2212 Theodore', 5, '2023-03-12 07:05:17', '2023-03-12 07:44:29'),
(5, 'Mr. Lavern Johnson I', 'lehner.jayce@example.com', '(124) 993-9176', '140 Hirthe Center\nMcCulloughborough, BC  Y8H 7N0', 8, '2023-03-12 02:39:10', '2023-03-12 02:39:10'),
(6, 'Mrs. Mazie Mayert Jr.', 'lueilwitz.maureen@example.net', '(293) 626-7677 x194', '441 Pacocha Terrace\nZiememouth, MB  N4K1G1', 5, '2023-03-12 02:39:10', '2023-03-12 02:39:10'),
(7, 'Norma Heathcote', 'hirthe.grant@example.org', '(944) 871-5339', '6253 Arden Land\nKlingberg, BC  L2M-2L7', 7, '2023-03-12 02:39:10', '2023-03-12 02:39:10'),
(8, 'Miss Lue Corwin', 'jcrooks@example.org', '142 352 0009', '8087 Mueller Plains\nLake Lorenborough, ON  C6B2H3', 1, '2023-03-12 02:39:10', '2023-03-12 02:39:10'),
(9, 'Miss June Smith DDS', 'kheidenreich@example.com', '949-167-2485 x111', '50832 Kshlerin Walk\nElbertmouth, NL  B2N5K4', 9, '2023-03-12 02:39:10', '2023-03-12 02:39:10'),
(10, 'Sarina Keebler', 'chauck@example.com', '503 493 2100', '886 Kuhlman Hollow\nEast Marlene, PE  G8R 1E5', 15, '2023-03-12 02:39:10', '2023-03-12 02:39:10'),
(11, 'Elise Weimann', 'holly.rempel@example.net', '1-121-161-1621', '99501 Emard Inlet\nEvertberg, NS  M4R-4P5', 8, '2023-03-12 02:39:10', '2023-03-12 02:39:10'),
(12, 'Coby Muller', 'dickens.christiana@example.net', '(253) 306-9378 x106', '309 Noemie Ways Apt. 665\nWest Gracie, NT  E7M7J1', 11, '2023-03-12 02:39:10', '2023-03-12 02:39:10'),
(13, 'Cassandre Gusikowski PhD', 'yhuels@example.com', '+1 (116) 914-2012', '8802 Cruz Vista\nPort Torey, NU  B2S-9A9', 11, '2023-03-12 02:39:10', '2023-03-12 02:39:10'),
(14, 'Eddie McDermott III', 'jerrell84@example.com', '771-999-7545 x680', '789 Armstrong Island\nNorth Thaddeushaven, NU  B4P-7J3', 11, '2023-03-12 02:39:10', '2023-03-12 02:39:10'),
(15, 'Mr. Antwon O\'Keefe Sr.', 'shania.fay@example.org', '(906) 600-9149 x891', '784 Hauck Spurs\nCassandreborough, QC  L8A9N9', 3, '2023-03-12 02:39:10', '2023-03-12 02:39:10'),
(16, 'Prof. Deondre Smith', 'fernando22@example.org', '930 129 2660', '98230 Roslyn Mountain Apt. 362\nSouth Haylie, NB  A3P 1Y0', 1, '2023-03-12 02:39:10', '2023-03-12 02:39:10'),
(17, 'Elsie Spencer', 'moore.krista@example.net', '334.470.2477', '3365 Candice Rue\nWest Ricky, NB  P3T-9N2', 11, '2023-03-12 02:39:10', '2023-03-12 02:39:10'),
(18, 'Mozell Donnelly Jr.', 'mtowne@example.com', '954.303.7434', '1717 Sanford Divide\nJoshstad, QC  G4Y 4V5', 10, '2023-03-12 02:39:10', '2023-03-12 02:39:10'),
(19, 'Kennedi Rosenbaum V', 'tavares65@example.net', '(125) 253-1080', '2802 Runte Stream\nDareton, ON  C0X2C7', 11, '2023-03-12 02:39:10', '2023-03-12 02:39:10'),
(20, 'Mr. Bertrand Ratke DDS', 'scottie84@example.net', '(467) 767-4207', '2332 Ryann Gateway Apt. 113\nLake Carolyne, MB  R0R 4P8', 15, '2023-03-12 02:39:10', '2023-03-12 02:39:10'),
(21, 'Tito Upton V', 'lexus.goldner@example.org', '590-024-8558', '59688 Klein Creek\nAdeleland, NB  Y0G9L7', 1, '2023-03-12 02:39:10', '2023-03-12 02:39:10'),
(22, 'Destinee Mills', 'carlos.parisian@example.org', '(196) 949-4253 x218', '797 Luettgen Islands\nBeahanmouth, NB  A1E-4C9', 15, '2023-03-12 02:39:10', '2023-03-12 02:39:10'),
(23, 'Ariane Bayer I', 'jmertz@example.com', '+1 (133) 367-0274', '1924 Hauck Street\nRuthhaven, PE  G2C 7J6', 2, '2023-03-12 02:39:10', '2023-03-12 02:39:10'),
(24, 'Prof. Maximus McCullough', 'percy66@example.com', '598-317-3188 x580', '707 Bernhard Vista\nRonnyport, NB  H1V-9T2', 9, '2023-03-12 02:39:10', '2023-03-12 02:39:10'),
(25, 'Fanny Douglas', 'elody.gislason@example.com', '1 (917) 268-3401', '40959 Kemmer Lock Apt. 434\nNew Jasenton, SK  C1S8L6', 4, '2023-03-12 02:39:10', '2023-03-12 02:39:10'),
(26, 'Zoie Weissnat IV', 'salvador81@example.com', '476-361-5595', '95639 Destini Hill Apt. 045\nSouth Cindy, NB  T1C-6X6', 15, '2023-03-12 02:39:10', '2023-03-12 02:39:10'),
(27, 'Miss Amber O\'Keefe', 'mitchel51@example.com', '1 (164) 013-2565', '395 Gina Square Apt. 093\nSouth Edythe, ON  C8L7C1', 2, '2023-03-12 02:39:10', '2023-03-12 02:39:10'),
(28, 'Araceli Thompson', 'alejandrin92@example.org', '1-473-420-3463', '542 Abbott Meadow Apt. 938\nRolfsonfort, NT  C7V 4H6', 3, '2023-03-12 02:39:10', '2023-03-12 02:39:10'),
(29, 'Palma Gerlach', 'eliane80@example.com', '259 739 7383', '8958 Zieme Causeway Apt. 321\nGreenfelderside, BC  H2J 8J0', 15, '2023-03-12 02:39:10', '2023-03-12 02:39:10'),
(30, 'Mrs. Sheila Schumm', 'olson.anibal@example.org', '944 387 3230', '74945 Chandler Key\nEast Kiarraton, AB  A4K 4S8', 10, '2023-03-12 02:39:10', '2023-03-12 02:39:10'),
(31, 'Miss Fatima Sauer', 'okey70@example.net', '(538) 365-9478', '530 White Bypass Suite 947\nEast Isai, NU  C1V-9A0', 5, '2023-03-12 02:39:10', '2023-03-12 02:39:10'),
(32, 'Anastasia Bode I', 'millie35@example.com', '1-392-581-1746', '4409 Nikolaus Corners Apt. 633\nAuermouth, PE  S1P-8X2', 9, '2023-03-12 02:39:10', '2023-03-12 02:39:10'),
(33, 'Uriah White', 'kayden23@example.com', '1 (601) 813-0073', '298 Bogisich Via\nEast Daphneeshire, NU  M7N 9E5', 14, '2023-03-12 02:39:10', '2023-03-12 02:39:10'),
(34, 'Blaise Bednar', 'katrina.wehner@example.com', '1 (341) 185-4255', '63226 Assunta Lake\nWolffmouth, MB  P7X 5V4', 13, '2023-03-12 02:39:10', '2023-03-12 02:39:10'),
(35, 'Isadore Strosin', 'gabrielle14@example.net', '340-384-2622 x504', '701 Nash Locks Suite 394\nEast Lenoreberg, YT  C3N-7X5', 15, '2023-03-12 02:39:10', '2023-03-12 02:39:10'),
(36, 'Reyna Carroll', 'hettinger.gwen@example.org', '946-301-5236', '440 Violette Village\nEast Marquesville, QC  N5E0V5', 13, '2023-03-12 02:39:10', '2023-03-12 02:39:10'),
(37, 'Eugenia Watsica', 'schoen.teresa@example.com', '+1 (182) 840-8822', '58931 Thiel Track Apt. 790\nNorth Daniellafort, NU  V2P 6Y7', 15, '2023-03-12 02:39:10', '2023-03-12 02:39:10'),
(38, 'Lennie O\'Kon', 'kaci.ruecker@example.org', '(944) 249-5969 x164', '544 Mueller Spur\nSouth Lesterchester, YT  M3R5T1', 4, '2023-03-12 02:39:10', '2023-03-12 02:39:10'),
(39, 'Obie Howe PhD', 'bode.elias@example.org', '684-507-3707', '71333 Idella Hollow\nWest Haleighburgh, NU  L3G-0P3', 15, '2023-03-12 02:39:10', '2023-03-12 02:39:10'),
(40, 'Tyrese Ratke DVM', 'udamore@example.com', '576-596-1122', '9318 Medhurst Cliffs Suite 519\nHellerburgh, ON  N2X2T3', 3, '2023-03-12 02:39:10', '2023-03-12 02:39:10'),
(41, 'Grover Murphy', 'polly42@example.org', '(198) 556-6116', '745 Dare Park Suite 851\nRupertville, BC  N9L 7L9', 15, '2023-03-12 02:39:10', '2023-03-12 02:39:10'),
(42, 'Prof. Rosanna Friesen IV', 'uwehner@example.com', '394.279.1772', '345 Jan Passage Suite 444\nSwiftmouth, NU  E8V7N7', 6, '2023-03-12 02:39:10', '2023-03-12 02:39:10'),
(43, 'Wilburn Luettgen', 'chad17@example.com', '1 (300) 626-4607', '390 Shany Dale Apt. 802\nPort Alekstad, NL  P2R 2N6', 1, '2023-03-12 02:39:10', '2023-03-12 02:39:10'),
(44, 'Chadd Yundt', 'uconn@example.com', '(257) 177-5692 x970', '7273 Odell Pine\nRosenbaumport, NL  K0N 6Y4', 9, '2023-03-12 02:39:10', '2023-03-12 02:39:10'),
(45, 'Edd Ankunding', 'kacie34@example.org', '536 296 9791', '1822 Emmitt Throughway Suite 801\nBrownland, NB  M3N 1T4', 6, '2023-03-12 02:39:10', '2023-03-12 02:39:10'),
(46, 'Christophe Larkin DVM', 'mhermann@example.com', '1-240-325-9801', '2554 Wisozk Street\nShermanshire, NB  K9S 0L0', 15, '2023-03-12 02:39:10', '2023-03-12 02:39:10'),
(47, 'Elaina Gusikowski', 'kiehn.clementine@example.org', '(729) 234-7891', '14177 Garrett Dam\nWest Alessandro, NS  H7R 9G9', 7, '2023-03-12 02:39:10', '2023-03-12 02:39:10'),
(48, 'Enola Ritchie', 'wlang@example.org', '1 (284) 752-2109', '20473 Macy Skyway Suite 563\nPort Annabel, AB  R0M1H4', 14, '2023-03-12 02:39:10', '2023-03-12 02:39:10'),
(49, 'Nola Johnson Sr.', 'terrance.christiansen@example.com', '566-484-2907 x752', '2972 Miller Green\nSouth Mertiemouth, QC  K0M-1R1', 5, '2023-03-12 02:39:10', '2023-03-12 02:39:10'),
(50, 'Dr. Alfonso Fritsch II', 'mable.kuhlman@example.org', '454-301-0842', '901 Spencer Lakes Suite 192\nBergeville, MB  S6G-8Y6', 9, '2023-03-12 02:39:10', '2023-03-12 02:39:10'),
(51, 'Jerrell Goodwin', 'aschneider@example.org', '(921) 207-3716', '810 Gust Trafficway\nLake Dulce, NB  N8E 9T8', 14, '2023-03-12 02:39:10', '2023-03-12 02:39:10'),
(52, 'Dr. Emely Casper', 'xblick@example.com', '(521) 152-0118 x080', '7864 Conner Bypass\nNorth Marieshire, NB  B0T-1E4', 11, '2023-03-12 02:39:10', '2023-03-12 02:39:10'),
(53, 'Alexandro Keeling PhD', 'samanta.shanahan@example.org', '507.914.4763', '33744 Krajcik Union\nNorth Babyfurt, MB  R5S2Y1', 14, '2023-03-12 02:39:10', '2023-03-12 02:39:10'),
(54, 'Billy Schumm', 'beier.lucile@example.org', '432-192-4347 x057', '42904 Daugherty Points\nAltastad, NL  G4M-0P6', 2, '2023-03-12 02:39:10', '2023-03-12 02:39:10'),
(55, 'Kennedi Bradtke', 'jarvis11@example.net', '+1 (387) 086-4064', '353 Medhurst Burg\nPort Mabelleborough, ON  T6H-9A8', 8, '2023-03-12 02:39:10', '2023-03-12 02:39:10'),
(56, 'Ms. Ilene Sipes', 'ernser.dolly@example.net', '(605) 576-3868', '741 Lydia Squares\nNorth Marcos, YT  P1G9G6', 14, '2023-03-12 02:39:10', '2023-03-12 02:39:10'),
(57, 'Catharine Runolfsdottir I', 'dasia97@example.org', '780-618-3509 x593', '5653 Jade View\nPort Joaquin, NB  X3S6X6', 9, '2023-03-12 02:39:10', '2023-03-12 02:39:10'),
(58, 'Bethany Goyette', 'marta.wolf@example.org', '(652) 378-9972', '5037 Quitzon Mission Suite 178\nNorth Arne, MB  N3H6T8', 5, '2023-03-12 02:39:10', '2023-03-12 02:39:10'),
(59, 'Clovis Blick', 'bennett17@example.net', '1-829-258-6787', '481 Ankunding Ferry Suite 840\nWest Monserrateside, YT  K0P-3G4', 11, '2023-03-12 02:39:10', '2023-03-12 02:39:10'),
(60, 'Princess O\'Keefe IV', 'telly.dickens@example.net', '(862) 553-3550 x464', '171 Deangelo Extension\nPort Jaylan, YT  H8B 6Y8', 5, '2023-03-12 02:39:10', '2023-03-12 02:39:10'),
(61, 'Mr. Keshawn Medhurst', 'marquardt.americo@example.org', '174.164.5893', '61678 Maida Drive\nJonesfort, NS  X8R0C4', 14, '2023-03-12 02:39:10', '2023-03-12 02:39:10'),
(62, 'Hector Hintz', 'roberto.mann@example.org', '(297) 681-6485 x666', '726 Wiegand Burgs Suite 759\nRandallside, SK  G8X 0J3', 10, '2023-03-12 02:39:10', '2023-03-12 02:39:10'),
(63, 'Filiberto Jaskolski', 'flindgren@example.net', '(598) 236-2917', '320 Watson Center\nPort Ben, NS  E9B-8J2', 1, '2023-03-12 02:39:10', '2023-03-12 02:39:10'),
(64, 'Ms. Kristin Upton IV', 'lschmidt@example.com', '(639) 366-4345', '37590 Gina Glen Apt. 855\nShaniechester, ON  J4C 9M7', 1, '2023-03-12 02:39:10', '2023-03-12 02:39:10'),
(65, 'Claudine Spinka', 'myrna30@example.com', '(484) 423-0396 x334', '79055 Cremin Crossing Suite 751\nBashirianfurt, NU  A1L4P1', 8, '2023-03-12 02:39:10', '2023-03-12 02:39:10'),
(66, 'Izabella Bogan', 'rosanna09@example.org', '986 735 9617', '81323 Gleason Island\nPort Jacquesville, NT  K9L 6C5', 7, '2023-03-12 02:39:10', '2023-03-12 02:39:10'),
(67, 'Eric Zulauf', 'marianne00@example.com', '1 (719) 745-7440', '2190 Walker Isle\nNew Wilfred, BC  A0A-3H2', 8, '2023-03-12 02:39:10', '2023-03-12 02:39:10'),
(68, 'Prof. Felton Lowe II', 'zpollich@example.org', '536 265 7230', '92537 Strosin Pass Suite 500\nDietrichburgh, AB  V9J 3H3', 8, '2023-03-12 02:39:10', '2023-03-12 02:39:10'),
(69, 'Dr. Giovanny Frami DVM', 'guido.corwin@example.org', '1-958-153-6613', '4698 Savanna Ridges Suite 113\nBaileyburgh, QC  V4T 3Y0', 13, '2023-03-12 02:39:10', '2023-03-12 02:39:10'),
(70, 'Sherwood Marks', 'qbins@example.com', '1 (977) 292-2851', '24783 Rodrick Lock Suite 532\nBrianaland, NS  H9T6G4', 2, '2023-03-12 02:39:10', '2023-03-12 02:39:10'),
(71, 'Ms. Cindy Hartmann DVM', 'laurence.waters@example.com', '+1 (912) 075-8367', '1015 Jamir View Apt. 221\nEast Clint, NB  G6X 3N0', 6, '2023-03-12 02:39:10', '2023-03-12 02:39:10'),
(72, 'Lilliana Marvin', 'yhamill@example.net', '1-164-710-1694', '3215 McKenzie Route\nDaughertyfort, NB  J9A1Y5', 13, '2023-03-12 02:39:10', '2023-03-12 02:39:10'),
(73, 'Dr. Karianne Wisozk', 'dbeahan@example.org', '(229) 950-7211 x620', '136 Carroll Village Suite 775\nBreitenbergmouth, MB  V2R-4X1', 1, '2023-03-12 02:39:10', '2023-03-12 02:39:10'),
(74, 'Cary Rau DVM', 'stuart.schumm@example.com', '881-324-5983 x107', '412 Huel Road Apt. 159\nPort Zelda, NT  T9P6C4', 13, '2023-03-12 02:39:10', '2023-03-12 02:39:10'),
(75, 'Electa Fay II', 'pschaden@example.org', '1-801-351-6073', '21262 Velva Passage\nWest Isidromouth, NT  G3S-2P8', 1, '2023-03-12 02:39:10', '2023-03-12 02:39:10'),
(76, 'Josue Jones', 'regan.hills@example.org', '1 (832) 491-5926', '4475 Newell Keys\nPort Johnathon, YT  V4S-2T6', 8, '2023-03-12 02:39:10', '2023-03-12 02:39:10'),
(77, 'Amely Luettgen Jr.', 'bergstrom.stephen@example.org', '1-681-531-8130', '927 Kozey Lodge\nCamrynshire, MB  K1B 8R5', 5, '2023-03-12 02:39:10', '2023-03-12 02:39:10'),
(78, 'Rico Rowe', 'pacocha.cordie@example.net', '+1 (612) 353-3807', '41082 Beier Drive Suite 179\nLake Alaina, QC  Y4X-0P9', 3, '2023-03-12 02:39:10', '2023-03-12 02:39:10'),
(79, 'Britney Barrows', 'abbott.ressie@example.com', '210.418.8737', '6351 Julien Mission\nPort Adrianchester, PE  L0T 3V8', 4, '2023-03-12 02:39:10', '2023-03-12 02:39:10'),
(80, 'Prof. Adelle White', 'kgaylord@example.net', '390-175-0235 x413', '2073 Hackett Shoal\nShanahanburgh, ON  E0L-8R0', 14, '2023-03-12 02:39:10', '2023-03-12 02:39:10'),
(81, 'Aliyah Koss', 'eichmann.trevor@example.org', '351-346-4381 x368', '11656 Lizzie Grove\nVerlieview, NS  H1T-1Y9', 8, '2023-03-12 02:39:10', '2023-03-12 02:39:10'),
(82, 'Miss Maci Kulas MD', 'marc.durgan@example.net', '1 (493) 751-3394', '24844 Sawayn Run\nNorth Genoveva, NS  M5Y8T9', 8, '2023-03-12 02:39:10', '2023-03-12 02:39:10'),
(83, 'Dr. Malinda Kerluke PhD', 'goldner.krystal@example.com', '1-721-687-8562', '555 Vandervort Station\nNew Elna, NS  V9E1T3', 8, '2023-03-12 02:39:10', '2023-03-12 02:39:10'),
(84, 'Dr. Josefa Stroman', 'mckenna70@example.org', '1 (140) 058-6279', '3169 Rafaela Coves\nProhaskahaven, NB  E9T-6G4', 7, '2023-03-12 02:39:10', '2023-03-12 02:39:10'),
(85, 'Prof. Hilda Pagac I', 'terry.tyrel@example.com', '(183) 037-9287 x666', '5315 Crona Lock Suite 159\nMantetown, NL  C7G9L1', 10, '2023-03-12 02:39:10', '2023-03-12 02:39:10'),
(86, 'Linwood Rice V', 'mossie21@example.net', '1-963-546-6367', '3436 Cecilia Loop\nO\'Connellville, AB  B4K-1T8', 14, '2023-03-12 02:39:10', '2023-03-12 02:39:10'),
(87, 'Vernice Wolf', 'mante.dayne@example.com', '1-957-504-7837', '32523 Gregorio Coves\nLake Lucious, NB  V4X-9T6', 3, '2023-03-12 02:39:10', '2023-03-12 02:39:10'),
(88, 'Mrs. Susie Reichert', 'kub.destiney@example.net', '1-812-675-2178', '690 Destinee Fields\nWest Micaelatown, YT  N4K3A6', 1, '2023-03-12 02:39:10', '2023-03-12 02:39:10'),
(89, 'Dr. Marco Dooley Jr.', 'lenora06@example.com', '(850) 257-4920 x707', '66241 Danial Circle\nLake Pascaleport, NS  A9L 3B1', 3, '2023-03-12 02:39:11', '2023-03-12 02:39:11'),
(90, 'Deanna Barrows', 'bernard.frami@example.net', '608-800-7766 x932', '372 Gaetano Parkway\nPasqualeside, BC  C9J4V2', 13, '2023-03-12 02:39:11', '2023-03-12 02:39:11'),
(91, 'Sophie Yundt', 'brando.block@example.net', '1-135-573-9314', '872 Mavis Forest\nAuerfurt, NS  J8B 5H9', 5, '2023-03-12 02:39:11', '2023-03-12 02:39:11'),
(92, 'Prof. Justina Zboncak', 'oberbrunner.roma@example.com', '(938) 849-3475', '84797 Reilly Glens Apt. 374\nKoeppport, SK  E7L-4J7', 9, '2023-03-12 02:39:11', '2023-03-12 02:39:11'),
(93, 'Sanford O\'Conner', 'stroman.antonio@example.org', '916-410-6765 x974', '194 Reynolds Radial Suite 211\nNorth Ashton, YT  B4H 2B5', 11, '2023-03-12 02:39:11', '2023-03-12 02:39:11'),
(94, 'Herminio Crooks', 'white.fernando@example.org', '657-953-5669', '9691 Balistreri Falls Suite 343\nKertzmannview, QC  B7N 7E7', 4, '2023-03-12 02:39:11', '2023-03-12 02:39:11'),
(95, 'Chelsey Pouros', 'zschneider@example.org', '1 (396) 928-4995', '61606 Kira Village Apt. 695\nCotyland, NT  K6V 1K7', 3, '2023-03-12 02:39:11', '2023-03-12 02:39:11'),
(96, 'Abbigail Bogisich', 'sandy60@example.net', '108-721-6718 x429', '451 Cole Meadow Apt. 399\nHaagfurt, BC  Y3M3B3', 7, '2023-03-12 02:39:11', '2023-03-12 02:39:11'),
(97, 'Josianne Blick', 'lehner.caleigh@example.org', '(685) 401-0313', '3298 Adrien Corner Suite 175\nPort Oswaldoview, NT  X1Y4E4', 10, '2023-03-12 02:39:11', '2023-03-12 02:39:11'),
(98, 'Doris Adams', 'riley.reinger@example.net', '(874) 089-4133', '56642 Deckow Via Suite 523\nPort Odessatown, YT  T6B-8G1', 12, '2023-03-12 02:39:11', '2023-03-12 02:39:11'),
(99, 'Kari Prosacco', 'ludie.kling@example.com', '945.221.1327', '75656 Spinka Locks\nSouth Jaceyside, NS  Y9P3N1', 6, '2023-03-12 02:39:11', '2023-03-12 02:39:11');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
