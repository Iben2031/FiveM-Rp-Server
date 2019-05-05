-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 04, 2019 at 08:30 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `essentialmode`
--

-- --------------------------------------------------------

--
-- Table structure for table `addon_account`
--

CREATE TABLE `addon_account` (
  `name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shared` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `addon_account`
--

INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
('caution', 'Caution', 0),
('property_black_money', 'Argent Sale Propriété', 0),
('society_ambulance', 'Ambulance', 1),
('society_avocat', 'Advokat', 1),
('society_cardealer', 'Concessionnaire', 1),
('society_mechanic', 'Mécano', 1),
('society_police', 'Police', 1),
('society_taxi', 'Taxi', 1);

-- --------------------------------------------------------

--
-- Table structure for table `addon_account_data`
--

CREATE TABLE `addon_account_data` (
  `id` int(11) NOT NULL,
  `account_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `money` double NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `addon_account_data`
--

INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
(1, 'society_ambulance', 0, NULL),
(2, 'society_cardealer', 0, NULL),
(3, 'society_mechanic', 0, NULL),
(4, 'society_police', 0, NULL),
(5, 'society_taxi', 0, NULL),
(6, 'caution', 0, 'steam:11000010dc30d43'),
(7, 'caution', 0, 'steam:11000011b02e87e'),
(8, 'property_black_money', 0, 'steam:11000010dc30d43'),
(9, 'property_black_money', 0, 'steam:11000011b02e87e'),
(10, 'caution', 2000, 'steam:11000010db3bd17'),
(11, 'property_black_money', 0, 'steam:11000010db3bd17'),
(12, 'society_avocat', 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `addon_inventory`
--

CREATE TABLE `addon_inventory` (
  `name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shared` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `addon_inventory`
--

INSERT INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
('property', 'Propriété', 0),
('society_ambulance', 'Ambulance', 1),
('society_avocat', 'Advokat', 1),
('society_cardealer', 'Concesionnaire', 1),
('society_mechanic', 'Mécano', 1),
('society_police', 'Police', 1),
('society_taxi', 'Taxi', 1);

-- --------------------------------------------------------

--
-- Table structure for table `addon_inventory_items`
--

CREATE TABLE `addon_inventory_items` (
  `id` int(11) NOT NULL,
  `inventory_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `count` int(11) NOT NULL,
  `owner` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `addon_inventory_items`
--

INSERT INTO `addon_inventory_items` (`id`, `inventory_name`, `name`, `count`, `owner`) VALUES
(1, 'society_mechanic', 'carotool', 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `billing`
--

CREATE TABLE `billing` (
  `id` int(11) NOT NULL,
  `identifier` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sender` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target_type` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cardealer_vehicles`
--

CREATE TABLE `cardealer_vehicles` (
  `id` int(11) NOT NULL,
  `vehicle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `characters`
--

CREATE TABLE `characters` (
  `id` int(11) NOT NULL,
  `identifier` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `firstname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dateofbirth` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sex` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'M',
  `height` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `characters`
--

INSERT INTO `characters` (`id`, `identifier`, `firstname`, `lastname`, `dateofbirth`, `sex`, `height`) VALUES
(1, 'steam:11000010dc30d43', 'Kimuji', 'Hatana', '1992-05-06', 'm', '175'),
(2, 'steam:11000011b02e87e', 'Kuma', 'Chaa', '2000-02-03', 'm', '185'),
(3, 'steam:11000010db3bd17', 'Kroekprakai', 'Al-kaum', '1/1/1991', 'm', '200');

-- --------------------------------------------------------

--
-- Table structure for table `datastore`
--

CREATE TABLE `datastore` (
  `name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shared` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `datastore`
--

INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
('property', 'Propriété', 0),
('society_ambulance', 'Ambulance', 1),
('society_avocat', 'Advokat', 1),
('society_police', 'Police', 1),
('society_taxi', 'Taxi', 1);

-- --------------------------------------------------------

--
-- Table structure for table `datastore_data`
--

CREATE TABLE `datastore_data` (
  `id` int(11) NOT NULL,
  `name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `data` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `datastore_data`
--

INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
(1, 'society_ambulance', NULL, '{}'),
(2, 'society_police', NULL, '{}'),
(3, 'society_taxi', NULL, '{}'),
(4, 'property', 'steam:11000010dc30d43', '{}'),
(5, 'property', 'steam:11000011b02e87e', '{\"dressing\":[{\"label\":1,\"skin\":{\"tshirt_2\":0,\"decals_1\":0,\"chest_3\":0,\"ears_2\":0,\"blush_3\":0,\"bodyb_1\":0,\"shoes_2\":9,\"glasses_2\":0,\"blemishes_1\":0,\"bags_1\":0,\"beard_1\":0,\"hair_2\":0,\"pants_1\":26,\"chest_2\":0,\"lipstick_2\":0,\"sex\":0,\"skin\":0,\"glasses_1\":0,\"eyebrows_4\":0,\"arms\":6,\"beard_3\":0,\"face\":0,\"chain_2\":0,\"eyebrows_2\":0,\"moles_1\":0,\"tshirt_1\":1,\"helmet_2\":0,\"makeup_2\":0,\"hair_color_1\":0,\"makeup_1\":0,\"chest_1\":0,\"sun_1\":0,\"beard_4\":0,\"sun_2\":0,\"blemishes_2\":0,\"bags_2\":0,\"shoes_1\":12,\"beard_2\":0,\"eyebrows_3\":0,\"eye_color\":0,\"torso_2\":14,\"age_1\":0,\"age_2\":0,\"ears_1\":-1,\"helmet_1\":-1,\"lipstick_4\":0,\"mask_2\":0,\"complexion_1\":0,\"blush_2\":0,\"lipstick_3\":0,\"hair_1\":0,\"hair_color_2\":0,\"torso_1\":3,\"bodyb_2\":0,\"watches_1\":-1,\"makeup_3\":0,\"makeup_4\":0,\"bracelets_1\":-1,\"bproof_2\":0,\"blush_1\":0,\"eyebrows_1\":0,\"decals_2\":0,\"bracelets_2\":0,\"arms_2\":0,\"bproof_1\":0,\"lipstick_1\":0,\"complexion_2\":0,\"watches_2\":0,\"pants_2\":0,\"chain_1\":0,\"mask_1\":0,\"moles_2\":0}},[],{\"label\":1,\"skin\":{\"tshirt_2\":0,\"watches_1\":-1,\"chest_3\":0,\"ears_2\":0,\"blush_3\":0,\"bodyb_1\":0,\"shoes_2\":9,\"glasses_2\":0,\"blemishes_1\":0,\"bags_1\":0,\"beard_1\":0,\"hair_2\":0,\"pants_1\":79,\"chest_2\":0,\"lipstick_2\":0,\"sex\":0,\"skin\":0,\"glasses_1\":0,\"eyebrows_4\":0,\"arms\":6,\"beard_3\":0,\"face\":0,\"chain_2\":0,\"eyebrows_2\":0,\"torso_1\":113,\"tshirt_1\":15,\"helmet_2\":0,\"makeup_2\":0,\"hair_color_1\":0,\"makeup_1\":0,\"chest_1\":0,\"sun_1\":0,\"beard_4\":0,\"sun_2\":0,\"blemishes_2\":0,\"bags_2\":0,\"shoes_1\":12,\"beard_2\":0,\"eyebrows_3\":0,\"bracelets_2\":0,\"eye_color\":0,\"age_1\":0,\"age_2\":0,\"ears_1\":-1,\"helmet_1\":-1,\"lipstick_4\":0,\"mask_2\":0,\"complexion_1\":0,\"blush_2\":0,\"lipstick_3\":0,\"torso_2\":1,\"hair_1\":0,\"pants_2\":2,\"bodyb_2\":0,\"hair_color_2\":0,\"moles_1\":0,\"makeup_4\":0,\"bracelets_1\":-1,\"makeup_3\":0,\"bproof_2\":0,\"eyebrows_1\":0,\"bproof_1\":0,\"blush_1\":0,\"arms_2\":0,\"decals_2\":0,\"lipstick_1\":0,\"complexion_2\":0,\"watches_2\":0,\"decals_1\":0,\"chain_1\":0,\"mask_1\":0,\"moles_2\":0}}]}'),
(6, 'property', 'steam:11000010db3bd17', '{}'),
(7, 'society_avocat', NULL, '{}');

-- --------------------------------------------------------

--
-- Table structure for table `fine_types`
--

CREATE TABLE `fine_types` (
  `id` int(11) NOT NULL,
  `label` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `category` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `fine_types`
--

INSERT INTO `fine_types` (`id`, `label`, `amount`, `category`) VALUES
(1, 'Usage abusif du klaxon', 30, 0),
(2, 'Franchir une ligne continue', 40, 0),
(3, 'Circulation à contresens', 250, 0),
(4, 'Demi-tour non autorisé', 250, 0),
(5, 'Circulation hors-route', 170, 0),
(6, 'Non-respect des distances de sécurité', 30, 0),
(7, 'Arrêt dangereux / interdit', 150, 0),
(8, 'Stationnement gênant / interdit', 70, 0),
(9, 'Non respect  de la priorité à droite', 70, 0),
(10, 'Non-respect à un véhicule prioritaire', 90, 0),
(11, 'Non-respect d\'un stop', 105, 0),
(12, 'Non-respect d\'un feu rouge', 130, 0),
(13, 'Dépassement dangereux', 100, 0),
(14, 'Véhicule non en état', 100, 0),
(15, 'Conduite sans permis', 1500, 0),
(16, 'Délit de fuite', 800, 0),
(17, 'Excès de vitesse < 5 kmh', 90, 0),
(18, 'Excès de vitesse 5-15 kmh', 120, 0),
(19, 'Excès de vitesse 15-30 kmh', 180, 0),
(20, 'Excès de vitesse > 30 kmh', 300, 0),
(21, 'Entrave de la circulation', 110, 1),
(22, 'Dégradation de la voie publique', 90, 1),
(23, 'Trouble à l\'ordre publique', 90, 1),
(24, 'Entrave opération de police', 130, 1),
(25, 'Insulte envers / entre civils', 75, 1),
(26, 'Outrage à agent de police', 110, 1),
(27, 'Menace verbale ou intimidation envers civil', 90, 1),
(28, 'Menace verbale ou intimidation envers policier', 150, 1),
(29, 'Manifestation illégale', 250, 1),
(30, 'Tentative de corruption', 1500, 1),
(31, 'Arme blanche sortie en ville', 120, 2),
(32, 'Arme léthale sortie en ville', 300, 2),
(33, 'Port d\'arme non autorisé (défaut de license)', 600, 2),
(34, 'Port d\'arme illégal', 700, 2),
(35, 'Pris en flag lockpick', 300, 2),
(36, 'Vol de voiture', 1800, 2),
(37, 'Vente de drogue', 1500, 2),
(38, 'Fabriquation de drogue', 1500, 2),
(39, 'Possession de drogue', 650, 2),
(40, 'Prise d\'ôtage civil', 1500, 2),
(41, 'Prise d\'ôtage agent de l\'état', 2000, 2),
(42, 'Braquage particulier', 650, 2),
(43, 'Braquage magasin', 650, 2),
(44, 'Braquage de banque', 1500, 2),
(45, 'Tir sur civil', 2000, 3),
(46, 'Tir sur agent de l\'état', 2500, 3),
(47, 'Tentative de meurtre sur civil', 3000, 3),
(48, 'Tentative de meurtre sur agent de l\'état', 5000, 3),
(49, 'Meurtre sur civil', 10000, 3),
(50, 'Meurte sur agent de l\'état', 30000, 3),
(51, 'Meurtre involontaire', 1800, 3),
(52, 'Escroquerie à l\'entreprise', 2000, 2);

-- --------------------------------------------------------

--
-- Table structure for table `impounded_vehicles`
--

CREATE TABLE `impounded_vehicles` (
  `id` int(11) NOT NULL,
  `plate` varchar(12) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vehicle` text COLLATE utf8mb4_unicode_ci,
  `owner` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `impounded_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `label` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `limit` int(11) NOT NULL DEFAULT '-1',
  `rare` int(11) NOT NULL DEFAULT '0',
  `can_remove` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`) VALUES
('alive_chicken', '🐓ไก่สด', 20, 0, 1),
('bandage', '💉ชุดปฐมพยาบาล', 20, 0, 1),
('blowpipe', 'Chalumeaux', 10, 0, 1),
('bread', '🍔เบอร์เกอร์', -1, 0, 1),
('cannabis', '🍃กัญชาอย่างดี', 40, 0, 1),
('carokit', '🔧ชุดเครื่องมือซ่อมรถ', 3, 0, 1),
('carotool', 'carotool', 4, 0, 1),
('clothe', '👕เสื้อผ้า', 40, 0, 1),
('coke', '🌿ใบโคคา', 300, 0, 1),
('coke_pooch', '📦โคเคนแพ็ค', 60, 0, 1),
('contrat', 'Salvage', 15, 0, 1),
('copper', 'ทองแดง', 56, 0, 1),
('cutted_wood', 'Bois coupé', 20, 0, 1),
('diamond', '💎เพชร', 50, 0, 1),
('essence', 'Essence', 24, 0, 1),
('fabric', 'Tissu', 80, 0, 1),
('fish', 'ปลาแมคเคอเรล', 100, 0, 1),
('fixkit', 'Kit réparation', 5, 0, 1),
('fixtool', 'outils réparation', 6, 0, 1),
('gazbottle', 'bouteille de gaz', 11, 0, 1),
('gold', 'ทอง', 21, 0, 1),
('iron', 'เหล็ก', 42, 0, 1),
('jewels', 'Jewels', -1, 0, 1),
('leather', 'หนังสัตว์', -1, 0, 1),
('marijuana', '🚬กัญชามวล', 14, 0, 1),
('meat', 'Meat', -1, 0, 1),
('medikit', '💓ชุดกู้ชีพ', 5, 0, 1),
('meth', 'สารสกัดไอซ์', 250, 0, 1),
('meth_pooch', 'ไอซ์แพ็ค', 50, 0, 1),
('opium', 'ดอกฝิ่น', 250, 0, 1),
('opium_pooch', 'ยางฝิ่นสกัด', 50, 0, 1),
('packaged_chicken', 'Poulet en barquette', 100, 0, 1),
('packaged_plank', 'Paquet de planches', 100, 0, 1),
('petrol', 'Pétrole', 24, 0, 1),
('petrol_raffin', 'Pétrole Raffiné', 24, 0, 1),
('plongee1', 'Plongee courte', -1, 0, 1),
('plongee2', 'Plongee longue', -1, 0, 1),
('slaughtered_chicken', 'Poulet abattu', 20, 0, 1),
('stone', 'Pierre', 7, 0, 1),
('washed_stone', 'Pierre Lavée', 7, 0, 1),
('water', '💧น้ำดื่ม', -1, 0, 1),
('weed', '🍀กัญชาเกรดต่ำ', 200, 0, 1),
('weed_pooch', '📦กัญชาอัดแท่ง', 40, 0, 1),
('wood', 'Bois', 20, 0, 1),
('wool', 'Laine', 40, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `jail`
--

CREATE TABLE `jail` (
  `identifier` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jail_time` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jail`
--

INSERT INTO `jail` (`identifier`, `jail_time`) VALUES
('steam:11000010dc30d43', 60);

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `label` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `whitelisted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jobs`
--

INSERT INTO `jobs` (`name`, `label`, `whitelisted`) VALUES
('ambulance', 'Ambulance', 0),
('avocat', 'Advokat', 1),
('cardealer', 'Concessionnaire', 0),
('fisherman', 'Pêcheur', 0),
('fueler', 'Raffineur', 0),
('gopostal', 'Correios', 0),
('lumberjack', 'Bûcheron', 0),
('mechanic', 'Mécano', 0),
('miner', 'Mineur', 0),
('police', 'LSPD', 0),
('reporter', 'Journaliste', 0),
('salvage', 'Salvage', 0),
('slaughterer', 'Abatteur', 0),
('tailor', 'Couturier', 0),
('taxi', 'Taxi', 0),
('unemployed', 'Unemployed', 0);

-- --------------------------------------------------------

--
-- Table structure for table `job_grades`
--

CREATE TABLE `job_grades` (
  `id` int(11) NOT NULL,
  `job_name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `grade` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `label` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `salary` int(11) NOT NULL,
  `skin_male` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `skin_female` longtext COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `job_grades`
--

INSERT INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
(1, 'unemployed', 0, 'unemployed', 'Unemployed', 200, '{}', '{}'),
(2, 'lumberjack', 0, 'employee', 'Intérimaire', 0, '{}', '{}'),
(3, 'fisherman', 0, 'employee', 'Intérimaire', 0, '{}', '{}'),
(4, 'fueler', 0, 'employee', 'Intérimaire', 0, '{}', '{}'),
(5, 'reporter', 0, 'employee', 'Intérimaire', 0, '{}', '{}'),
(6, 'tailor', 0, 'employee', 'Intérimaire', 0, '{\"mask_1\":0,\"arms\":1,\"glasses_1\":0,\"hair_color_2\":4,\"makeup_1\":0,\"face\":19,\"glasses\":0,\"mask_2\":0,\"makeup_3\":0,\"skin\":29,\"helmet_2\":0,\"lipstick_4\":0,\"sex\":0,\"torso_1\":24,\"makeup_2\":0,\"bags_2\":0,\"chain_2\":0,\"ears_1\":-1,\"bags_1\":0,\"bproof_1\":0,\"shoes_2\":0,\"lipstick_2\":0,\"chain_1\":0,\"tshirt_1\":0,\"eyebrows_3\":0,\"pants_2\":0,\"beard_4\":0,\"torso_2\":0,\"beard_2\":6,\"ears_2\":0,\"hair_2\":0,\"shoes_1\":36,\"tshirt_2\":0,\"beard_3\":0,\"hair_1\":2,\"hair_color_1\":0,\"pants_1\":48,\"helmet_1\":-1,\"bproof_2\":0,\"eyebrows_4\":0,\"eyebrows_2\":0,\"decals_1\":0,\"age_2\":0,\"beard_1\":5,\"shoes\":10,\"lipstick_1\":0,\"eyebrows_1\":0,\"glasses_2\":0,\"makeup_4\":0,\"decals_2\":0,\"lipstick_3\":0,\"age_1\":0}', '{\"mask_1\":0,\"arms\":5,\"glasses_1\":5,\"hair_color_2\":4,\"makeup_1\":0,\"face\":19,\"glasses\":0,\"mask_2\":0,\"makeup_3\":0,\"skin\":29,\"helmet_2\":0,\"lipstick_4\":0,\"sex\":1,\"torso_1\":52,\"makeup_2\":0,\"bags_2\":0,\"chain_2\":0,\"ears_1\":-1,\"bags_1\":0,\"bproof_1\":0,\"shoes_2\":1,\"lipstick_2\":0,\"chain_1\":0,\"tshirt_1\":23,\"eyebrows_3\":0,\"pants_2\":0,\"beard_4\":0,\"torso_2\":0,\"beard_2\":6,\"ears_2\":0,\"hair_2\":0,\"shoes_1\":42,\"tshirt_2\":4,\"beard_3\":0,\"hair_1\":2,\"hair_color_1\":0,\"pants_1\":36,\"helmet_1\":-1,\"bproof_2\":0,\"eyebrows_4\":0,\"eyebrows_2\":0,\"decals_1\":0,\"age_2\":0,\"beard_1\":5,\"shoes\":10,\"lipstick_1\":0,\"eyebrows_1\":0,\"glasses_2\":0,\"makeup_4\":0,\"decals_2\":0,\"lipstick_3\":0,\"age_1\":0}'),
(7, 'miner', 0, 'employee', 'Intérimaire', 0, '{\"tshirt_2\":1,\"ears_1\":8,\"glasses_1\":15,\"torso_2\":0,\"ears_2\":2,\"glasses_2\":3,\"shoes_2\":1,\"pants_1\":75,\"shoes_1\":51,\"bags_1\":0,\"helmet_2\":0,\"pants_2\":7,\"torso_1\":71,\"tshirt_1\":59,\"arms\":2,\"bags_2\":0,\"helmet_1\":0}', '{}'),
(8, 'slaughterer', 0, 'employee', 'Intérimaire', 0, '{\"age_1\":0,\"glasses_2\":0,\"beard_1\":5,\"decals_2\":0,\"beard_4\":0,\"shoes_2\":0,\"tshirt_2\":0,\"lipstick_2\":0,\"hair_2\":0,\"arms\":67,\"pants_1\":36,\"skin\":29,\"eyebrows_2\":0,\"shoes\":10,\"helmet_1\":-1,\"lipstick_1\":0,\"helmet_2\":0,\"hair_color_1\":0,\"glasses\":0,\"makeup_4\":0,\"makeup_1\":0,\"hair_1\":2,\"bproof_1\":0,\"bags_1\":0,\"mask_1\":0,\"lipstick_3\":0,\"chain_1\":0,\"eyebrows_4\":0,\"sex\":0,\"torso_1\":56,\"beard_2\":6,\"shoes_1\":12,\"decals_1\":0,\"face\":19,\"lipstick_4\":0,\"tshirt_1\":15,\"mask_2\":0,\"age_2\":0,\"eyebrows_3\":0,\"chain_2\":0,\"glasses_1\":0,\"ears_1\":-1,\"bags_2\":0,\"ears_2\":0,\"torso_2\":0,\"bproof_2\":0,\"makeup_2\":0,\"eyebrows_1\":0,\"makeup_3\":0,\"pants_2\":0,\"beard_3\":0,\"hair_color_2\":4}', '{\"age_1\":0,\"glasses_2\":0,\"beard_1\":5,\"decals_2\":0,\"beard_4\":0,\"shoes_2\":0,\"tshirt_2\":0,\"lipstick_2\":0,\"hair_2\":0,\"arms\":72,\"pants_1\":45,\"skin\":29,\"eyebrows_2\":0,\"shoes\":10,\"helmet_1\":-1,\"lipstick_1\":0,\"helmet_2\":0,\"hair_color_1\":0,\"glasses\":0,\"makeup_4\":0,\"makeup_1\":0,\"hair_1\":2,\"bproof_1\":0,\"bags_1\":0,\"mask_1\":0,\"lipstick_3\":0,\"chain_1\":0,\"eyebrows_4\":0,\"sex\":1,\"torso_1\":49,\"beard_2\":6,\"shoes_1\":24,\"decals_1\":0,\"face\":19,\"lipstick_4\":0,\"tshirt_1\":9,\"mask_2\":0,\"age_2\":0,\"eyebrows_3\":0,\"chain_2\":0,\"glasses_1\":5,\"ears_1\":-1,\"bags_2\":0,\"ears_2\":0,\"torso_2\":0,\"bproof_2\":0,\"makeup_2\":0,\"eyebrows_1\":0,\"makeup_3\":0,\"pants_2\":0,\"beard_3\":0,\"hair_color_2\":4}'),
(9, 'cardealer', 0, 'recruit', 'Recrue', 10, '{}', '{}'),
(10, 'cardealer', 1, 'novice', 'Novice', 25, '{}', '{}'),
(11, 'cardealer', 2, 'experienced', 'Experimente', 40, '{}', '{}'),
(12, 'cardealer', 3, 'boss', 'Patron', 0, '{}', '{}'),
(13, 'ambulance', 0, 'ambulance', 'Ambulancier', 20, '{\"tshirt_2\":0,\"hair_color_1\":5,\"glasses_2\":3,\"shoes\":9,\"torso_2\":3,\"hair_color_2\":0,\"pants_1\":24,\"glasses_1\":4,\"hair_1\":2,\"sex\":0,\"decals_2\":0,\"tshirt_1\":15,\"helmet_1\":8,\"helmet_2\":0,\"arms\":92,\"face\":19,\"decals_1\":60,\"torso_1\":13,\"hair_2\":0,\"skin\":34,\"pants_2\":5}', '{\"tshirt_2\":3,\"decals_2\":0,\"glasses\":0,\"hair_1\":2,\"torso_1\":73,\"shoes\":1,\"hair_color_2\":0,\"glasses_1\":19,\"skin\":13,\"face\":6,\"pants_2\":5,\"tshirt_1\":75,\"pants_1\":37,\"helmet_1\":57,\"torso_2\":0,\"arms\":14,\"sex\":1,\"glasses_2\":0,\"decals_1\":0,\"hair_2\":0,\"helmet_2\":0,\"hair_color_1\":0}'),
(14, 'ambulance', 1, 'doctor', 'Medecin', 40, '{\"tshirt_2\":0,\"hair_color_1\":5,\"glasses_2\":3,\"shoes\":9,\"torso_2\":3,\"hair_color_2\":0,\"pants_1\":24,\"glasses_1\":4,\"hair_1\":2,\"sex\":0,\"decals_2\":0,\"tshirt_1\":15,\"helmet_1\":8,\"helmet_2\":0,\"arms\":92,\"face\":19,\"decals_1\":60,\"torso_1\":13,\"hair_2\":0,\"skin\":34,\"pants_2\":5}', '{\"tshirt_2\":3,\"decals_2\":0,\"glasses\":0,\"hair_1\":2,\"torso_1\":73,\"shoes\":1,\"hair_color_2\":0,\"glasses_1\":19,\"skin\":13,\"face\":6,\"pants_2\":5,\"tshirt_1\":75,\"pants_1\":37,\"helmet_1\":57,\"torso_2\":0,\"arms\":14,\"sex\":1,\"glasses_2\":0,\"decals_1\":0,\"hair_2\":0,\"helmet_2\":0,\"hair_color_1\":0}'),
(15, 'ambulance', 2, 'chief_doctor', 'Medecin-chef', 60, '{\"tshirt_2\":0,\"hair_color_1\":5,\"glasses_2\":3,\"shoes\":9,\"torso_2\":3,\"hair_color_2\":0,\"pants_1\":24,\"glasses_1\":4,\"hair_1\":2,\"sex\":0,\"decals_2\":0,\"tshirt_1\":15,\"helmet_1\":8,\"helmet_2\":0,\"arms\":92,\"face\":19,\"decals_1\":60,\"torso_1\":13,\"hair_2\":0,\"skin\":34,\"pants_2\":5}', '{\"tshirt_2\":3,\"decals_2\":0,\"glasses\":0,\"hair_1\":2,\"torso_1\":73,\"shoes\":1,\"hair_color_2\":0,\"glasses_1\":19,\"skin\":13,\"face\":6,\"pants_2\":5,\"tshirt_1\":75,\"pants_1\":37,\"helmet_1\":57,\"torso_2\":0,\"arms\":14,\"sex\":1,\"glasses_2\":0,\"decals_1\":0,\"hair_2\":0,\"helmet_2\":0,\"hair_color_1\":0}'),
(16, 'ambulance', 3, 'boss', 'Chirurgien', 80, '{\"tshirt_2\":0,\"hair_color_1\":5,\"glasses_2\":3,\"shoes\":9,\"torso_2\":3,\"hair_color_2\":0,\"pants_1\":24,\"glasses_1\":4,\"hair_1\":2,\"sex\":0,\"decals_2\":0,\"tshirt_1\":15,\"helmet_1\":8,\"helmet_2\":0,\"arms\":92,\"face\":19,\"decals_1\":60,\"torso_1\":13,\"hair_2\":0,\"skin\":34,\"pants_2\":5}', '{\"tshirt_2\":3,\"decals_2\":0,\"glasses\":0,\"hair_1\":2,\"torso_1\":73,\"shoes\":1,\"hair_color_2\":0,\"glasses_1\":19,\"skin\":13,\"face\":6,\"pants_2\":5,\"tshirt_1\":75,\"pants_1\":37,\"helmet_1\":57,\"torso_2\":0,\"arms\":14,\"sex\":1,\"glasses_2\":0,\"decals_1\":0,\"hair_2\":0,\"helmet_2\":0,\"hair_color_1\":0}'),
(17, 'taxi', 0, 'recrue', 'Recrue', 12, '{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":32,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":31,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":0,\"age_2\":0,\"glasses_2\":0,\"ears_2\":0,\"arms\":27,\"lipstick_1\":0,\"ears_1\":-1,\"mask_2\":0,\"sex\":0,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":0,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":1,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":10,\"pants_1\":24}', '{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":57,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":38,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":1,\"age_2\":0,\"glasses_2\":0,\"ears_2\":0,\"arms\":21,\"lipstick_1\":0,\"ears_1\":-1,\"mask_2\":0,\"sex\":1,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":5,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":1,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":49,\"pants_1\":11}'),
(18, 'taxi', 1, 'novice', 'Novice', 24, '{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":32,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":31,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":0,\"age_2\":0,\"glasses_2\":0,\"ears_2\":0,\"arms\":27,\"lipstick_1\":0,\"ears_1\":-1,\"mask_2\":0,\"sex\":0,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":0,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":1,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":10,\"pants_1\":24}', '{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":57,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":38,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":1,\"age_2\":0,\"glasses_2\":0,\"ears_2\":0,\"arms\":21,\"lipstick_1\":0,\"ears_1\":-1,\"mask_2\":0,\"sex\":1,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":5,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":1,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":49,\"pants_1\":11}'),
(19, 'taxi', 2, 'experimente', 'Experimente', 36, '{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":26,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":57,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":4,\"age_2\":0,\"glasses_2\":0,\"ears_2\":0,\"arms\":11,\"lipstick_1\":0,\"ears_1\":-1,\"mask_2\":0,\"sex\":0,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":0,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":0,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":10,\"pants_1\":24}', '{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":57,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":38,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":1,\"age_2\":0,\"glasses_2\":0,\"ears_2\":0,\"arms\":21,\"lipstick_1\":0,\"ears_1\":-1,\"mask_2\":0,\"sex\":1,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":5,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":1,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":49,\"pants_1\":11}'),
(20, 'taxi', 3, 'uber', 'Uber', 48, '{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":26,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":57,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":4,\"age_2\":0,\"glasses_2\":0,\"ears_2\":0,\"arms\":11,\"lipstick_1\":0,\"ears_1\":-1,\"mask_2\":0,\"sex\":0,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":0,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":0,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":10,\"pants_1\":24}', '{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":57,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":38,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":1,\"age_2\":0,\"glasses_2\":0,\"ears_2\":0,\"arms\":21,\"lipstick_1\":0,\"ears_1\":-1,\"mask_2\":0,\"sex\":1,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":5,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":1,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":49,\"pants_1\":11}'),
(21, 'taxi', 4, 'boss', 'Patron', 0, '{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":29,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":31,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":4,\"age_2\":0,\"glasses_2\":0,\"ears_2\":0,\"arms\":1,\"lipstick_1\":0,\"ears_1\":-1,\"mask_2\":0,\"sex\":0,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":0,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":0,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":4,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":10,\"pants_1\":24}', '{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":57,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":38,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":1,\"age_2\":0,\"glasses_2\":0,\"ears_2\":0,\"arms\":21,\"lipstick_1\":0,\"ears_1\":-1,\"mask_2\":0,\"sex\":1,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":5,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":1,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":49,\"pants_1\":11}'),
(22, 'mechanic', 0, 'recrue', 'Recrue', 12, '{}', '{}'),
(23, 'mechanic', 1, 'novice', 'Novice', 24, '{}', '{}'),
(24, 'mechanic', 2, 'experimente', 'Experimente', 36, '{}', '{}'),
(25, 'mechanic', 3, 'chief', 'Chef d\'équipe', 48, '{}', '{}'),
(26, 'mechanic', 4, 'boss', 'Patron', 0, '{}', '{}'),
(27, 'police', 0, 'recruit', 'Recrue', 20, '{}', '{}'),
(28, 'police', 1, 'officer', 'Officier', 40, '{}', '{}'),
(29, 'police', 2, 'sergeant', 'Sergent', 60, '{}', '{}'),
(30, 'police', 3, 'lieutenant', 'Lieutenant', 85, '{}', '{}'),
(31, 'police', 4, 'boss', 'Commandant', 100, '{}', '{}'),
(32, 'gopostal', 0, 'employee', 'Sedex', 200, '{\"tshirt_1\":59,\"torso_1\":89,\"arms\":31,\"pants_1\":36,\"glasses_1\":19,\"decals_2\":0,\"hair_color_2\":0,\"helmet_2\":0,\"hair_color_1\":0,\"face\":2,\"glasses_2\":0,\"torso_2\":1,\"shoes\":35,\"hair_1\":0,\"skin\":0,\"sex\":0,\"glasses_1\":19,\"pants_2\":0,\"hair_2\":0,\"decals_1\":0,\"tshirt_2\":0,\"helmet_1\":5}', '{\"tshirt_1\":36,\"torso_1\":0,\"arms\":68,\"pants_1\":30,\"glasses_1\":15,\"decals_2\":0,\"hair_color_2\":0,\"helmet_2\":0,\"hair_color_1\":0,\"face\":27,\"glasses_2\":0,\"torso_2\":11,\"shoes\":26,\"hair_1\":5,\"skin\":0,\"sex\":1,\"glasses_1\":15,\"pants_2\":2,\"hair_2\":0,\"decals_1\":0,\"tshirt_2\":0,\"helmet_1\":19}'),
(33, 'salvage', 0, 'employee', 'Diver', 80, '{}', '{}'),
(34, 'avocat', 0, 'boss', 'Patron', 500, '{}', '{}');

-- --------------------------------------------------------

--
-- Table structure for table `jsfour_atm`
--

CREATE TABLE `jsfour_atm` (
  `identifier` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `account` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jsfour_atm`
--

INSERT INTO `jsfour_atm` (`identifier`, `account`) VALUES
('steam:11000010dc30d43', '4272-2, 1 451 538-8'),
('steam:11000011b02e87e', '4272-2, 0 809 40-2'),
('steam:11000010db3bd17', '4272-2, 9 730 0-2');

-- --------------------------------------------------------

--
-- Table structure for table `licenses`
--

CREATE TABLE `licenses` (
  `type` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `label` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `licenses`
--

INSERT INTO `licenses` (`type`, `label`) VALUES
('dmv', 'Code de la route'),
('drive', 'Permis de conduire'),
('drive_bike', 'Permis moto'),
('drive_truck', 'Permis camion'),
('weapon', 'Permis de port d\'arme'),
('weed_processing', 'Weed Processing License');

-- --------------------------------------------------------

--
-- Table structure for table `owned_properties`
--

CREATE TABLE `owned_properties` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double NOT NULL,
  `rented` int(11) NOT NULL,
  `owner` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `owned_properties`
--

INSERT INTO `owned_properties` (`id`, `name`, `price`, `rented`, `owner`) VALUES
(1, 'LowEndApartment', 2813, 1, 'steam:11000010dc30d43'),
(2, 'HillcrestAvenue2862', 7500, 1, 'steam:11000011b02e87e'),
(4, 'TinselTowersApt12', 8500, 1, 'steam:11000011b02e87e'),
(5, 'ExecutiveCool', 5000000, 0, 'steam:11000011b02e87e'),
(6, 'NorthConkerAvenue2044', 7500, 1, 'steam:11000011b02e87e'),
(7, 'MBWPowerBrokerPolished', 2700000, 0, 'steam:11000010db3bd17');

-- --------------------------------------------------------

--
-- Table structure for table `owned_vehicles`
--

CREATE TABLE `owned_vehicles` (
  `owner` varchar(22) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Etat de la voiture',
  `plate` varchar(12) COLLATE utf8mb4_unicode_ci NOT NULL,
  `vehicle` longtext COLLATE utf8mb4_unicode_ci,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'car',
  `job` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stored` tinyint(1) NOT NULL DEFAULT '0',
  `fourrieremecano` tinyint(1) NOT NULL DEFAULT '0',
  `vehiclename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'voiture'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `owned_vehicles`
--

INSERT INTO `owned_vehicles` (`owner`, `state`, `plate`, `vehicle`, `type`, `job`, `stored`, `fourrieremecano`, `vehiclename`) VALUES
('steam:11000011b02e87e', 1, 'ECG 003', '{\"modTrimA\":-1,\"modSmokeEnabled\":1,\"windowTint\":1,\"modVanityPlate\":-1,\"plateIndex\":0,\"model\":-1045541610,\"wheelColor\":159,\"modExhaust\":0,\"modSideSkirt\":-1,\"modRightFender\":-1,\"modHorns\":-1,\"color1\":15,\"modFrontBumper\":1,\"modArchCover\":-1,\"modTrunk\":-1,\"modFrontWheels\":21,\"modFender\":-1,\"modArmor\":-1,\"modSpeakers\":-1,\"modDashboard\":-1,\"pearlescentColor\":11,\"modAerials\":-1,\"modStruts\":-1,\"modAPlate\":-1,\"modTransmission\":-1,\"modEngine\":-1,\"modPlateHolder\":-1,\"modShifterLeavers\":-1,\"modTurbo\":false,\"modDial\":-1,\"neonColor\":[41,36,33],\"health\":1000,\"modSteeringWheel\":-1,\"modRearBumper\":-1,\"modOrnaments\":-1,\"modSpoilers\":1,\"modAirFilter\":-1,\"modTank\":-1,\"modSuspension\":-1,\"modHood\":-1,\"modXenon\":false,\"modSeats\":-1,\"modRoof\":0,\"plate\":\"ECG 003\",\"color2\":30,\"modFrame\":-1,\"modDoorSpeaker\":-1,\"modBrakes\":-1,\"modBackWheels\":-1,\"modLivery\":-1,\"neonEnabled\":[1,1,1,1],\"modGrille\":-1,\"tyreSmokeColor\":[255,255,255],\"modWindows\":-1,\"wheels\":0,\"modTrimB\":-1,\"dirtLevel\":5.4418992996216,\"modHydrolic\":-1,\"modEngineBlock\":-1}', 'car', NULL, 0, 0, 'voiture'),
('steam:11000010dc30d43', 1, 'HWE 513', '{\"modTrimB\":-1,\"modArmor\":-1,\"modShifterLeavers\":-1,\"plateIndex\":0,\"modDial\":-1,\"modRearBumper\":-1,\"color1\":38,\"modTank\":-1,\"modBackWheels\":-1,\"wheelColor\":156,\"modSideSkirt\":-1,\"modFender\":-1,\"modSeats\":-1,\"neonEnabled\":[false,false,false,false],\"modPlateHolder\":-1,\"modExhaust\":-1,\"modFrame\":-1,\"modFrontWheels\":-1,\"health\":1000,\"modSpeakers\":-1,\"modFrontBumper\":-1,\"modTurbo\":false,\"wheels\":7,\"modDoorSpeaker\":-1,\"modRoof\":-1,\"modAPlate\":-1,\"modHorns\":-1,\"modSpoilers\":-1,\"modHydrolic\":-1,\"modDashboard\":-1,\"modOrnaments\":-1,\"modAerials\":-1,\"model\":-1829802492,\"plate\":\"HWE 513\",\"modSuspension\":-1,\"modStruts\":-1,\"modEngine\":-1,\"modSteeringWheel\":-1,\"modWindows\":-1,\"pearlescentColor\":160,\"modHood\":-1,\"modEngineBlock\":-1,\"neonColor\":[255,0,255],\"modAirFilter\":-1,\"modTransmission\":-1,\"windowTint\":-1,\"modRightFender\":-1,\"tyreSmokeColor\":[255,255,255],\"modBrakes\":-1,\"modGrille\":-1,\"modArchCover\":-1,\"color2\":5,\"modTrimA\":-1,\"modLivery\":-1,\"modSmokeEnabled\":1,\"modTrunk\":-1,\"dirtLevel\":9.1378145217896,\"modVanityPlate\":-1,\"modXenon\":false}', 'car', NULL, 0, 0, 'voiture'),
('steam:11000011b02e87e', 1, 'JAM 421', '{\"modRightFender\":-1,\"modTrimB\":-1,\"modSideSkirt\":-1,\"color2\":12,\"modBackWheels\":-1,\"wheels\":0,\"modFrontWheels\":33,\"modBrakes\":-1,\"modGrille\":-1,\"plate\":\"JAM 421\",\"modSpoilers\":1,\"modShifterLeavers\":-1,\"modAirFilter\":-1,\"modRearBumper\":-1,\"modDashboard\":-1,\"health\":1000,\"neonColor\":[41,36,33],\"modFrontBumper\":-1,\"modDoorSpeaker\":-1,\"modHood\":0,\"modTransmission\":-1,\"modHydrolic\":-1,\"modTrimA\":-1,\"pearlescentColor\":149,\"modRoof\":-1,\"modDial\":-1,\"modLivery\":-1,\"modPlateHolder\":-1,\"modTurbo\":false,\"color1\":12,\"neonEnabled\":[1,1,1,1],\"modStruts\":-1,\"modSeats\":-1,\"plateIndex\":1,\"wheelColor\":156,\"modXenon\":false,\"modFrame\":-1,\"modFender\":-1,\"dirtLevel\":5.2944827079773,\"modSpeakers\":-1,\"modVanityPlate\":-1,\"modTrunk\":-1,\"modTank\":-1,\"modSuspension\":-1,\"modEngineBlock\":-1,\"modArchCover\":-1,\"modWindows\":-1,\"modArmor\":-1,\"modAerials\":-1,\"modEngine\":-1,\"model\":2072687711,\"modExhaust\":0,\"modSmokeEnabled\":1,\"modAPlate\":-1,\"windowTint\":2,\"modSteeringWheel\":-1,\"tyreSmokeColor\":[255,255,255],\"modHorns\":-1,\"modOrnaments\":-1}', 'car', NULL, 0, 0, 'voiture'),
('steam:11000011b02e87e', 1, 'KPS 669', '{\"modTrimA\":-1,\"modSmokeEnabled\":1,\"windowTint\":1,\"modVanityPlate\":-1,\"plateIndex\":1,\"model\":633712403,\"wheelColor\":158,\"modExhaust\":3,\"modSideSkirt\":3,\"modRightFender\":-1,\"modHorns\":-1,\"color1\":12,\"modFrontBumper\":3,\"modArchCover\":-1,\"modTrunk\":-1,\"modFrontWheels\":21,\"modFender\":-1,\"modArmor\":-1,\"modSpeakers\":-1,\"modDashboard\":-1,\"pearlescentColor\":3,\"modAerials\":-1,\"modStruts\":-1,\"modAPlate\":-1,\"modTransmission\":-1,\"modEngine\":-1,\"modPlateHolder\":-1,\"modShifterLeavers\":-1,\"modTurbo\":false,\"modDial\":-1,\"neonColor\":[41,36,33],\"health\":941,\"modSteeringWheel\":-1,\"modRearBumper\":-1,\"modOrnaments\":-1,\"modSpoilers\":4,\"modAirFilter\":-1,\"modTank\":-1,\"modSuspension\":-1,\"modHood\":2,\"modXenon\":1,\"modSeats\":-1,\"modRoof\":-1,\"plate\":\"KPS 669\",\"color2\":12,\"modFrame\":-1,\"modDoorSpeaker\":-1,\"modBrakes\":-1,\"modBackWheels\":-1,\"modLivery\":-1,\"neonEnabled\":[1,1,1,1],\"modGrille\":0,\"tyreSmokeColor\":[255,255,255],\"modWindows\":-1,\"wheels\":0,\"modTrimB\":-1,\"dirtLevel\":4.5191068649292,\"modHydrolic\":-1,\"modEngineBlock\":-1}', 'car', NULL, 0, 0, 'voiture'),
('steam:11000010dc30d43', 0, 'MUW 552', '{\"modExhaust\":-1,\"modEngineBlock\":-1,\"modTrimB\":-1,\"modRearBumper\":-1,\"modLivery\":-1,\"modRoof\":-1,\"plate\":\"MUW 552\",\"modDashboard\":-1,\"modHydrolic\":-1,\"modSpoilers\":-1,\"health\":1000,\"modArchCover\":-1,\"plateIndex\":0,\"modTransmission\":-1,\"modShifterLeavers\":-1,\"modTrimA\":-1,\"modTank\":-1,\"modTrunk\":-1,\"windowTint\":-1,\"modSteeringWheel\":-1,\"modDoorSpeaker\":-1,\"neonColor\":[255,0,255],\"modTurbo\":false,\"wheels\":3,\"modSmokeEnabled\":false,\"modOrnaments\":-1,\"modStruts\":-1,\"color1\":12,\"modHood\":-1,\"modBrakes\":-1,\"modSeats\":-1,\"pearlescentColor\":2,\"neonEnabled\":[false,false,false,false],\"modBackWheels\":-1,\"modWindows\":-1,\"modFender\":-1,\"modSuspension\":-1,\"modAerials\":-1,\"dirtLevel\":10.000012397766,\"color2\":0,\"modFrontWheels\":-1,\"modGrille\":-1,\"modFrontBumper\":-1,\"modArmor\":-1,\"modEngine\":-1,\"modFrame\":-1,\"model\":683047626,\"modSpeakers\":-1,\"modXenon\":false,\"modSideSkirt\":-1,\"modHorns\":-1,\"modAirFilter\":-1,\"modVanityPlate\":-1,\"modRightFender\":-1,\"wheelColor\":7,\"modDial\":-1,\"modAPlate\":-1,\"modPlateHolder\":-1,\"tyreSmokeColor\":[255,255,255]}', 'car', NULL, 0, 0, 'voiture'),
('steam:11000010dc30d43', 0, 'NAM 841', '{\"modPlateHolder\":-1,\"neonEnabled\":[false,false,false,false],\"modArmor\":-1,\"modSpeakers\":-1,\"modRearBumper\":-1,\"modAirFilter\":-1,\"modStruts\":-1,\"modRoof\":-1,\"modLivery\":-1,\"modWindows\":-1,\"dirtLevel\":7.0,\"modRightFender\":-1,\"modHorns\":-1,\"modTurbo\":false,\"plateIndex\":4,\"modVanityPlate\":-1,\"modXenon\":false,\"modAPlate\":-1,\"modSteeringWheel\":-1,\"modSpoilers\":-1,\"modTrimA\":-1,\"modBackWheels\":-1,\"modDial\":-1,\"modDashboard\":-1,\"health\":1000,\"modFrame\":-1,\"modAerials\":-1,\"model\":-1205689942,\"plate\":\"NAM 841\",\"modSideSkirt\":-1,\"modGrille\":-1,\"pearlescentColor\":0,\"modArchCover\":-1,\"modHood\":-1,\"modTransmission\":-1,\"color2\":0,\"modSeats\":-1,\"wheels\":0,\"modEngineBlock\":-1,\"modFender\":-1,\"modTrimB\":-1,\"modFrontWheels\":-1,\"modHydrolic\":-1,\"modBrakes\":-1,\"windowTint\":-1,\"neonColor\":[255,0,255],\"modTank\":-1,\"color1\":132,\"modExhaust\":-1,\"modEngine\":-1,\"modDoorSpeaker\":-1,\"modSmokeEnabled\":false,\"modShifterLeavers\":-1,\"modFrontBumper\":-1,\"tyreSmokeColor\":[255,255,255],\"modOrnaments\":-1,\"modSuspension\":-1,\"modTrunk\":-1,\"wheelColor\":156}', 'car', 'police', 0, 0, 'voiture'),
('steam:11000011b02e87e', 1, 'NLA 192', '{\"modRightFender\":-1,\"modTrimB\":-1,\"modSideSkirt\":-1,\"color2\":0,\"modBackWheels\":-1,\"wheels\":6,\"modFrontWheels\":-1,\"modBrakes\":-1,\"modGrille\":-1,\"plate\":\"NLA 192\",\"modSpoilers\":-1,\"modShifterLeavers\":-1,\"modAirFilter\":-1,\"modRearBumper\":-1,\"modDashboard\":-1,\"health\":856,\"neonColor\":[255,0,255],\"modFrontBumper\":4,\"modDoorSpeaker\":-1,\"modHood\":-1,\"modTransmission\":-1,\"modHydrolic\":-1,\"modTrimA\":-1,\"pearlescentColor\":18,\"modRoof\":1,\"modDial\":-1,\"modLivery\":-1,\"modPlateHolder\":-1,\"modTurbo\":false,\"color1\":0,\"neonEnabled\":[false,false,false,false],\"modStruts\":-1,\"modSeats\":-1,\"plateIndex\":0,\"wheelColor\":156,\"modXenon\":false,\"modFrame\":-1,\"modFender\":-1,\"dirtLevel\":6.5781817436218,\"modSpeakers\":-1,\"modVanityPlate\":-1,\"modTrunk\":-1,\"modTank\":-1,\"modSuspension\":-1,\"modEngineBlock\":-1,\"modArchCover\":-1,\"modWindows\":-1,\"modArmor\":-1,\"modAerials\":-1,\"modEngine\":-1,\"model\":-255678177,\"modExhaust\":3,\"modSmokeEnabled\":1,\"modAPlate\":-1,\"windowTint\":-1,\"modSteeringWheel\":-1,\"tyreSmokeColor\":[255,255,255],\"modHorns\":-1,\"modOrnaments\":-1}', 'car', NULL, 0, 0, 'voiture'),
('steam:11000010dc30d43', 0, 'SVZ 557', '{\"windowTint\":-1,\"modTrimB\":-1,\"modSpeakers\":-1,\"modAerials\":-1,\"neonColor\":[255,0,255],\"modTrunk\":-1,\"modEngine\":-1,\"modDial\":-1,\"modBackWheels\":-1,\"modSideSkirt\":-1,\"plate\":\"SVZ 557\",\"modTurbo\":false,\"wheelColor\":156,\"modWindows\":-1,\"color1\":0,\"modRoof\":-1,\"modOrnaments\":-1,\"modFrontBumper\":-1,\"plateIndex\":0,\"modArmor\":-1,\"modRightFender\":-1,\"neonEnabled\":[false,false,false,false],\"modArchCover\":-1,\"modVanityPlate\":-1,\"modSteeringWheel\":-1,\"wheels\":6,\"modRearBumper\":-1,\"tyreSmokeColor\":[255,255,255],\"modShifterLeavers\":-1,\"modHood\":-1,\"modFender\":-1,\"modHorns\":-1,\"modSuspension\":-1,\"modAPlate\":-1,\"modStruts\":-1,\"modLivery\":-1,\"modSmokeEnabled\":false,\"modPlateHolder\":-1,\"modBrakes\":-1,\"modGrille\":-1,\"modFrame\":-1,\"dirtLevel\":6.0000352859497,\"health\":1000,\"modFrontWheels\":-1,\"model\":-255678177,\"modTank\":-1,\"modEngineBlock\":-1,\"modSpoilers\":-1,\"modTrimA\":-1,\"modDashboard\":-1,\"modDoorSpeaker\":-1,\"modSeats\":-1,\"modHydrolic\":-1,\"modTransmission\":-1,\"modExhaust\":-1,\"pearlescentColor\":18,\"color2\":0,\"modAirFilter\":-1,\"modXenon\":false}', 'car', NULL, 0, 0, 'voiture'),
('steam:11000011b02e87e', 1, 'UKO 048', '{\"modTrimA\":-1,\"modSmokeEnabled\":1,\"windowTint\":1,\"modVanityPlate\":-1,\"plateIndex\":1,\"model\":1349725314,\"wheelColor\":156,\"modExhaust\":2,\"modSideSkirt\":0,\"modRightFender\":-1,\"modHorns\":-1,\"color1\":12,\"modFrontBumper\":1,\"modArchCover\":-1,\"modTrunk\":-1,\"modFrontWheels\":32,\"modFender\":-1,\"modArmor\":-1,\"modSpeakers\":-1,\"modDashboard\":-1,\"pearlescentColor\":11,\"modAerials\":-1,\"modStruts\":-1,\"modAPlate\":-1,\"modTransmission\":-1,\"modEngine\":-1,\"modPlateHolder\":-1,\"modShifterLeavers\":-1,\"modTurbo\":false,\"modDial\":-1,\"neonColor\":[41,36,33],\"health\":977,\"modSteeringWheel\":-1,\"modRearBumper\":0,\"modOrnaments\":-1,\"modSpoilers\":3,\"modAirFilter\":-1,\"modTank\":-1,\"modSuspension\":-1,\"modHood\":0,\"modXenon\":false,\"modSeats\":-1,\"modRoof\":-1,\"plate\":\"UKO 048\",\"color2\":12,\"modFrame\":-1,\"modDoorSpeaker\":-1,\"modBrakes\":-1,\"modBackWheels\":-1,\"modLivery\":-1,\"neonEnabled\":[1,1,1,1],\"modGrille\":-1,\"tyreSmokeColor\":[255,255,255],\"modWindows\":-1,\"wheels\":0,\"modTrimB\":-1,\"dirtLevel\":5.6031832695007,\"modHydrolic\":-1,\"modEngineBlock\":-1}', 'car', NULL, 0, 0, 'voiture'),
('steam:11000010db3bd17', 0, 'UUC 128', '{\"modRearBumper\":-1,\"wheelColor\":156,\"modDashboard\":-1,\"wheels\":1,\"modSmokeEnabled\":false,\"modSpoilers\":-1,\"modTank\":-1,\"modWindows\":-1,\"dirtLevel\":3.0,\"color2\":134,\"modFrame\":-1,\"modSideSkirt\":-1,\"modStruts\":-1,\"modFender\":-1,\"modSpeakers\":-1,\"modShifterLeavers\":-1,\"modVanityPlate\":-1,\"modEngineBlock\":-1,\"modAirFilter\":-1,\"color1\":134,\"pearlescentColor\":0,\"modGrille\":-1,\"modAPlate\":-1,\"plateIndex\":4,\"neonColor\":[255,0,255],\"modOrnaments\":-1,\"modRoof\":-1,\"health\":1000,\"modSeats\":-1,\"windowTint\":-1,\"modPlateHolder\":-1,\"modTrunk\":-1,\"modSuspension\":-1,\"modHood\":-1,\"tyreSmokeColor\":[255,255,255],\"modHorns\":-1,\"modBrakes\":-1,\"modTurbo\":false,\"modRightFender\":-1,\"modTrimA\":-1,\"modDoorSpeaker\":-1,\"modBackWheels\":-1,\"modExhaust\":-1,\"modDial\":-1,\"modLivery\":-1,\"modHydrolic\":-1,\"modXenon\":false,\"model\":2046537925,\"modAerials\":-1,\"modArmor\":-1,\"modSteeringWheel\":-1,\"plate\":\"UUC 128\",\"modFrontBumper\":-1,\"modTrimB\":-1,\"modTransmission\":-1,\"modArchCover\":-1,\"modEngine\":-1,\"neonEnabled\":[false,false,false,false],\"modFrontWheels\":-1}', 'car', 'police', 0, 0, 'voiture'),
('steam:11000011b02e87e', 0, 'VKT 875', '{\"modHorns\":-1,\"model\":-609625092,\"modSpoilers\":-1,\"plateIndex\":0,\"health\":1000,\"modArmor\":-1,\"modShifterLeavers\":-1,\"neonColor\":[255,0,255],\"modExhaust\":0,\"modRightFender\":-1,\"modAPlate\":-1,\"modHydrolic\":-1,\"modTrimB\":-1,\"modVanityPlate\":-1,\"tyreSmokeColor\":[255,255,255],\"modTurbo\":false,\"modSideSkirt\":-1,\"modArchCover\":-1,\"modStruts\":-1,\"modBrakes\":-1,\"modOrnaments\":-1,\"neonEnabled\":[false,false,false,false],\"modRearBumper\":-1,\"modAerials\":-1,\"modFrame\":-1,\"plate\":\"VKT 875\",\"wheelColor\":156,\"modGrille\":-1,\"modSpeakers\":-1,\"modTrunk\":-1,\"modBackWheels\":-1,\"modTransmission\":-1,\"modHood\":1,\"dirtLevel\":11.526957511902,\"modSmokeEnabled\":1,\"modSteeringWheel\":-1,\"modWindows\":-1,\"modDoorSpeaker\":-1,\"modSeats\":-1,\"modSuspension\":-1,\"color1\":12,\"modEngine\":-1,\"modDashboard\":-1,\"modFrontBumper\":-1,\"modAirFilter\":-1,\"modTank\":-1,\"windowTint\":-1,\"color2\":120,\"modFender\":0,\"wheels\":6,\"modRoof\":0,\"modEngineBlock\":-1,\"pearlescentColor\":72,\"modTrimA\":-1,\"modXenon\":1,\"modLivery\":-1,\"modDial\":-1,\"modFrontWheels\":-1,\"modPlateHolder\":-1}', 'car', NULL, 0, 0, 'voiture'),
('steam:11000011b02e87e', 1, 'YMI 562', '{\"wheelColor\":156,\"modHydrolic\":-1,\"modPlateHolder\":-1,\"modAerials\":-1,\"modTurbo\":false,\"modShifterLeavers\":-1,\"modEngineBlock\":-1,\"plateIndex\":3,\"modDoorSpeaker\":-1,\"modSmokeEnabled\":1,\"color1\":12,\"pearlescentColor\":72,\"modBackWheels\":-1,\"modStruts\":-1,\"modLivery\":-1,\"modFender\":-1,\"modSeats\":-1,\"modTank\":-1,\"color2\":12,\"modRearBumper\":0,\"modTrimB\":-1,\"wheels\":0,\"modFrontWheels\":34,\"modSuspension\":-1,\"modTrunk\":-1,\"modSpoilers\":2,\"modHood\":-1,\"modTransmission\":-1,\"modVanityPlate\":-1,\"modFrontBumper\":1,\"modSideSkirt\":0,\"modBrakes\":-1,\"windowTint\":-1,\"dirtLevel\":0.55139744281769,\"health\":993,\"modExhaust\":0,\"neonEnabled\":[1,1,1,1],\"modTrimA\":-1,\"modArmor\":-1,\"modRoof\":0,\"plate\":\"YMI 562\",\"modDial\":-1,\"modDashboard\":-1,\"modFrame\":-1,\"modArchCover\":-1,\"modSteeringWheel\":-1,\"modRightFender\":-1,\"modEngine\":-1,\"neonColor\":[41,36,33],\"tyreSmokeColor\":[255,255,255],\"model\":970598228,\"modAPlate\":-1,\"modAirFilter\":-1,\"modSpeakers\":-1,\"modWindows\":-1,\"modHorns\":-1,\"modGrille\":-1,\"modXenon\":1,\"modOrnaments\":-1}', 'car', NULL, 0, 0, 'voiture');

-- --------------------------------------------------------

--
-- Table structure for table `phone_app_chat`
--

CREATE TABLE `phone_app_chat` (
  `id` int(11) NOT NULL,
  `channel` varchar(20) NOT NULL,
  `message` varchar(255) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `phone_calls`
--

CREATE TABLE `phone_calls` (
  `id` int(11) NOT NULL,
  `owner` varchar(10) NOT NULL COMMENT 'Num tel proprio',
  `num` varchar(10) NOT NULL COMMENT 'Num reférence du contact',
  `incoming` int(11) NOT NULL COMMENT 'Défini si on est à l''origine de l''appels',
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `accepts` int(11) NOT NULL COMMENT 'Appels accepter ou pas'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `phone_calls`
--

INSERT INTO `phone_calls` (`id`, `owner`, `num`, `incoming`, `time`, `accepts`) VALUES
(122, '1111', '333-3', 1, '2019-05-04 10:35:47', 0),
(123, '3333', '111-1', 1, '2019-05-04 10:36:14', 0),
(124, '2222', '222-2', 1, '2019-05-04 10:38:38', 0),
(126, '1111', '222-2', 1, '2019-05-04 10:47:06', 0),
(131, '1111', '2222', 1, '2019-05-04 11:04:53', 0),
(132, '1111', '1111', 1, '2019-05-04 11:05:06', 0),
(133, '1111', '1111', 1, '2019-05-04 11:06:33', 0),
(134, '1111', '1111', 0, '2019-05-04 11:06:33', 0),
(135, '1111', '1111', 1, '2019-05-04 11:07:33', 0),
(136, '1111', '1111', 0, '2019-05-04 11:07:33', 0),
(137, '1111', '1111', 1, '2019-05-04 11:08:25', 0),
(138, '1111', '1111', 0, '2019-05-04 11:08:25', 0),
(139, '1111', '1111', 1, '2019-05-04 11:17:29', 0),
(140, '1111', '1111', 0, '2019-05-04 11:17:29', 0),
(141, '1111', '7777', 1, '2019-05-04 11:18:25', 0),
(142, '1111', '1111', 1, '2019-05-04 11:18:38', 0),
(143, '1111', '1111', 0, '2019-05-04 11:18:38', 0),
(144, '1111', '2222', 1, '2019-05-04 11:21:04', 1),
(145, '2222', '1111', 0, '2019-05-04 11:21:04', 1),
(146, '2222', '1111', 1, '2019-05-04 11:22:19', 1),
(147, '1111', '2222', 0, '2019-05-04 11:22:19', 1),
(148, '1111', '2222', 1, '2019-05-04 11:32:05', 0),
(149, '2222', '1111', 0, '2019-05-04 11:32:05', 0),
(150, '1111', '2222', 1, '2019-05-04 11:39:45', 1),
(151, '2222', '1111', 0, '2019-05-04 11:39:45', 1),
(152, '1111', '2222', 1, '2019-05-04 11:41:45', 1),
(153, '2222', '1111', 0, '2019-05-04 11:41:45', 1),
(154, '1111', '2222', 1, '2019-05-04 11:47:39', 1),
(155, '2222', '1111', 0, '2019-05-04 11:47:39', 1),
(156, '1111', '2222', 1, '2019-05-04 11:54:41', 1),
(157, '2222', '1111', 0, '2019-05-04 11:54:41', 1),
(158, '1111', '2222', 1, '2019-05-04 11:58:08', 1),
(159, '2222', '1111', 0, '2019-05-04 11:58:08', 1),
(160, '1111', '2222', 1, '2019-05-04 12:03:01', 1),
(161, '2222', '1111', 0, '2019-05-04 12:03:01', 1);

-- --------------------------------------------------------

--
-- Table structure for table `phone_messages`
--

CREATE TABLE `phone_messages` (
  `id` int(11) NOT NULL,
  `transmitter` varchar(10) NOT NULL,
  `receiver` varchar(10) NOT NULL,
  `message` varchar(255) NOT NULL DEFAULT '0',
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `isRead` int(11) NOT NULL DEFAULT '0',
  `owner` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `phone_messages`
--

INSERT INTO `phone_messages` (`id`, `transmitter`, `receiver`, `message`, `time`, `isRead`, `owner`) VALUES
(106, 'police', '3333', 'From #3333 : police', '2019-05-04 10:34:06', 1, 0),
(107, 'police', '1111', 'From #3333 : police', '2019-05-04 10:34:06', 1, 0),
(108, 'police', '1111', 'GPS: 1870.8657226563, 2605.4345703125', '2019-05-04 10:34:06', 1, 0),
(109, 'police', '3333', 'GPS: 1870.8657226563, 2605.4345703125', '2019-05-04 10:34:06', 1, 0),
(110, '3333', '1111', 'hi', '2019-05-04 10:36:40', 1, 0),
(111, '1111', '3333', 'hi', '2019-05-04 10:36:40', 1, 1),
(112, '1111', '1111', 'hrllo', '2019-05-04 11:06:46', 1, 0),
(113, '1111', '1111', 'hrllo', '2019-05-04 11:06:46', 1, 1),
(114, '2222', '1111', 'Hi', '2019-05-04 11:22:53', 1, 0),
(115, '1111', '2222', 'Hi', '2019-05-04 11:22:53', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `phone_users_contacts`
--

CREATE TABLE `phone_users_contacts` (
  `id` int(11) NOT NULL,
  `identifier` varchar(60) CHARACTER SET utf8mb4 DEFAULT NULL,
  `number` varchar(10) CHARACTER SET utf8mb4 DEFAULT NULL,
  `display` varchar(64) CHARACTER SET utf8mb4 NOT NULL DEFAULT '-1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `properties`
--

CREATE TABLE `properties` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `label` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `entering` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `exit` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `inside` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `outside` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ipls` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '[]',
  `gateway` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_single` int(11) DEFAULT NULL,
  `is_room` int(11) DEFAULT NULL,
  `is_gateway` int(11) DEFAULT NULL,
  `room_menu` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `properties`
--

INSERT INTO `properties` (`id`, `name`, `label`, `entering`, `exit`, `inside`, `outside`, `ipls`, `gateway`, `is_single`, `is_room`, `is_gateway`, `room_menu`, `price`) VALUES
(1, 'WhispymoundDrive', '2677 Whispymound Drive', '{\"y\":564.89,\"z\":182.959,\"x\":119.384}', '{\"x\":117.347,\"y\":559.506,\"z\":183.304}', '{\"y\":557.032,\"z\":183.301,\"x\":118.037}', '{\"y\":567.798,\"z\":182.131,\"x\":119.249}', '[]', NULL, 1, 1, 0, '{\"x\":118.748,\"y\":566.573,\"z\":175.697}', 1500000),
(2, 'NorthConkerAvenue2045', '2045 North Conker Avenue', '{\"x\":372.796,\"y\":428.327,\"z\":144.685}', '{\"x\":373.548,\"y\":422.982,\"z\":144.907},', '{\"y\":420.075,\"z\":145.904,\"x\":372.161}', '{\"x\":372.454,\"y\":432.886,\"z\":143.443}', '[]', NULL, 1, 1, 0, '{\"x\":377.349,\"y\":429.422,\"z\":137.3}', 1500000),
(3, 'RichardMajesticApt2', 'Richard Majestic, Apt 2', '{\"y\":-379.165,\"z\":37.961,\"x\":-936.363}', '{\"y\":-365.476,\"z\":113.274,\"x\":-913.097}', '{\"y\":-367.637,\"z\":113.274,\"x\":-918.022}', '{\"y\":-382.023,\"z\":37.961,\"x\":-943.626}', '[]', NULL, 1, 1, 0, '{\"x\":-927.554,\"y\":-377.744,\"z\":112.674}', 1700000),
(4, 'NorthConkerAvenue2044', '2044 North Conker Avenue', '{\"y\":440.8,\"z\":146.702,\"x\":346.964}', '{\"y\":437.456,\"z\":148.394,\"x\":341.683}', '{\"y\":435.626,\"z\":148.394,\"x\":339.595}', '{\"x\":350.535,\"y\":443.329,\"z\":145.764}', '[]', NULL, 1, 1, 0, '{\"x\":337.726,\"y\":436.985,\"z\":140.77}', 1500000),
(5, 'WildOatsDrive', '3655 Wild Oats Drive', '{\"y\":502.696,\"z\":136.421,\"x\":-176.003}', '{\"y\":497.817,\"z\":136.653,\"x\":-174.349}', '{\"y\":495.069,\"z\":136.666,\"x\":-173.331}', '{\"y\":506.412,\"z\":135.0664,\"x\":-177.927}', '[]', NULL, 1, 1, 0, '{\"x\":-174.725,\"y\":493.095,\"z\":129.043}', 1500000),
(6, 'HillcrestAvenue2862', '2862 Hillcrest Avenue', '{\"y\":596.58,\"z\":142.641,\"x\":-686.554}', '{\"y\":591.988,\"z\":144.392,\"x\":-681.728}', '{\"y\":590.608,\"z\":144.392,\"x\":-680.124}', '{\"y\":599.019,\"z\":142.059,\"x\":-689.492}', '[]', NULL, 1, 1, 0, '{\"x\":-680.46,\"y\":588.6,\"z\":136.769}', 1500000),
(7, 'LowEndApartment', 'Appartement de base', '{\"y\":-1078.735,\"z\":28.4031,\"x\":292.528}', '{\"y\":-1007.152,\"z\":-102.002,\"x\":265.845}', '{\"y\":-1002.802,\"z\":-100.008,\"x\":265.307}', '{\"y\":-1078.669,\"z\":28.401,\"x\":296.738}', '[]', NULL, 1, 1, 0, '{\"x\":265.916,\"y\":-999.38,\"z\":-100.008}', 562500),
(8, 'MadWayneThunder', '2113 Mad Wayne Thunder', '{\"y\":454.955,\"z\":96.462,\"x\":-1294.433}', '{\"x\":-1289.917,\"y\":449.541,\"z\":96.902}', '{\"y\":446.322,\"z\":96.899,\"x\":-1289.642}', '{\"y\":455.453,\"z\":96.517,\"x\":-1298.851}', '[]', NULL, 1, 1, 0, '{\"x\":-1287.306,\"y\":455.901,\"z\":89.294}', 1500000),
(9, 'HillcrestAvenue2874', '2874 Hillcrest Avenue', '{\"x\":-853.346,\"y\":696.678,\"z\":147.782}', '{\"y\":690.875,\"z\":151.86,\"x\":-859.961}', '{\"y\":688.361,\"z\":151.857,\"x\":-859.395}', '{\"y\":701.628,\"z\":147.773,\"x\":-855.007}', '[]', NULL, 1, 1, 0, '{\"x\":-858.543,\"y\":697.514,\"z\":144.253}', 1500000),
(10, 'HillcrestAvenue2868', '2868 Hillcrest Avenue', '{\"y\":620.494,\"z\":141.588,\"x\":-752.82}', '{\"y\":618.62,\"z\":143.153,\"x\":-759.317}', '{\"y\":617.629,\"z\":143.153,\"x\":-760.789}', '{\"y\":621.281,\"z\":141.254,\"x\":-750.919}', '[]', NULL, 1, 1, 0, '{\"x\":-762.504,\"y\":618.992,\"z\":135.53}', 1500000),
(11, 'TinselTowersApt12', 'Tinsel Towers, Apt 42', '{\"y\":37.025,\"z\":42.58,\"x\":-618.299}', '{\"y\":58.898,\"z\":97.2,\"x\":-603.301}', '{\"y\":58.941,\"z\":97.2,\"x\":-608.741}', '{\"y\":30.603,\"z\":42.524,\"x\":-620.017}', '[]', NULL, 1, 1, 0, '{\"x\":-622.173,\"y\":54.585,\"z\":96.599}', 1700000),
(12, 'MiltonDrive', 'Milton Drive', '{\"x\":-775.17,\"y\":312.01,\"z\":84.658}', NULL, NULL, '{\"x\":-775.346,\"y\":306.776,\"z\":84.7}', '[]', NULL, 0, 0, 1, NULL, 0),
(13, 'Modern1Apartment', 'Appartement Moderne 1', NULL, '{\"x\":-784.194,\"y\":323.636,\"z\":210.997}', '{\"x\":-779.751,\"y\":323.385,\"z\":210.997}', NULL, '[\"apa_v_mp_h_01_a\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-766.661,\"y\":327.672,\"z\":210.396}', 1300000),
(14, 'Modern2Apartment', 'Appartement Moderne 2', NULL, '{\"x\":-786.8663,\"y\":315.764,\"z\":186.913}', '{\"x\":-781.808,\"y\":315.866,\"z\":186.913}', NULL, '[\"apa_v_mp_h_01_c\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-795.735,\"y\":326.757,\"z\":186.313}', 1300000),
(15, 'Modern3Apartment', 'Appartement Moderne 3', NULL, '{\"x\":-774.012,\"y\":342.042,\"z\":195.686}', '{\"x\":-779.057,\"y\":342.063,\"z\":195.686}', NULL, '[\"apa_v_mp_h_01_b\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-765.386,\"y\":330.782,\"z\":195.08}', 1300000),
(16, 'Mody1Apartment', 'Appartement Mode 1', NULL, '{\"x\":-784.194,\"y\":323.636,\"z\":210.997}', '{\"x\":-779.751,\"y\":323.385,\"z\":210.997}', NULL, '[\"apa_v_mp_h_02_a\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-766.615,\"y\":327.878,\"z\":210.396}', 1300000),
(17, 'Mody2Apartment', 'Appartement Mode 2', NULL, '{\"x\":-786.8663,\"y\":315.764,\"z\":186.913}', '{\"x\":-781.808,\"y\":315.866,\"z\":186.913}', NULL, '[\"apa_v_mp_h_02_c\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-795.297,\"y\":327.092,\"z\":186.313}', 1300000),
(18, 'Mody3Apartment', 'Appartement Mode 3', NULL, '{\"x\":-774.012,\"y\":342.042,\"z\":195.686}', '{\"x\":-779.057,\"y\":342.063,\"z\":195.686}', NULL, '[\"apa_v_mp_h_02_b\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-765.303,\"y\":330.932,\"z\":195.085}', 1300000),
(19, 'Vibrant1Apartment', 'Appartement Vibrant 1', NULL, '{\"x\":-784.194,\"y\":323.636,\"z\":210.997}', '{\"x\":-779.751,\"y\":323.385,\"z\":210.997}', NULL, '[\"apa_v_mp_h_03_a\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-765.885,\"y\":327.641,\"z\":210.396}', 1300000),
(20, 'Vibrant2Apartment', 'Appartement Vibrant 2', NULL, '{\"x\":-786.8663,\"y\":315.764,\"z\":186.913}', '{\"x\":-781.808,\"y\":315.866,\"z\":186.913}', NULL, '[\"apa_v_mp_h_03_c\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-795.607,\"y\":327.344,\"z\":186.313}', 1300000),
(21, 'Vibrant3Apartment', 'Appartement Vibrant 3', NULL, '{\"x\":-774.012,\"y\":342.042,\"z\":195.686}', '{\"x\":-779.057,\"y\":342.063,\"z\":195.686}', NULL, '[\"apa_v_mp_h_03_b\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-765.525,\"y\":330.851,\"z\":195.085}', 1300000),
(22, 'Sharp1Apartment', 'Appartement Persan 1', NULL, '{\"x\":-784.194,\"y\":323.636,\"z\":210.997}', '{\"x\":-779.751,\"y\":323.385,\"z\":210.997}', NULL, '[\"apa_v_mp_h_04_a\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-766.527,\"y\":327.89,\"z\":210.396}', 1300000),
(23, 'Sharp2Apartment', 'Appartement Persan 2', NULL, '{\"x\":-786.8663,\"y\":315.764,\"z\":186.913}', '{\"x\":-781.808,\"y\":315.866,\"z\":186.913}', NULL, '[\"apa_v_mp_h_04_c\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-795.642,\"y\":326.497,\"z\":186.313}', 1300000),
(24, 'Sharp3Apartment', 'Appartement Persan 3', NULL, '{\"x\":-774.012,\"y\":342.042,\"z\":195.686}', '{\"x\":-779.057,\"y\":342.063,\"z\":195.686}', NULL, '[\"apa_v_mp_h_04_b\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-765.503,\"y\":331.318,\"z\":195.085}', 1300000),
(25, 'Monochrome1Apartment', 'Appartement Monochrome 1', NULL, '{\"x\":-784.194,\"y\":323.636,\"z\":210.997}', '{\"x\":-779.751,\"y\":323.385,\"z\":210.997}', NULL, '[\"apa_v_mp_h_05_a\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-766.289,\"y\":328.086,\"z\":210.396}', 1300000),
(26, 'Monochrome2Apartment', 'Appartement Monochrome 2', NULL, '{\"x\":-786.8663,\"y\":315.764,\"z\":186.913}', '{\"x\":-781.808,\"y\":315.866,\"z\":186.913}', NULL, '[\"apa_v_mp_h_05_c\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-795.692,\"y\":326.762,\"z\":186.313}', 1300000),
(27, 'Monochrome3Apartment', 'Appartement Monochrome 3', NULL, '{\"x\":-774.012,\"y\":342.042,\"z\":195.686}', '{\"x\":-779.057,\"y\":342.063,\"z\":195.686}', NULL, '[\"apa_v_mp_h_05_b\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-765.094,\"y\":330.976,\"z\":195.085}', 1300000),
(28, 'Seductive1Apartment', 'Appartement Séduisant 1', NULL, '{\"x\":-784.194,\"y\":323.636,\"z\":210.997}', '{\"x\":-779.751,\"y\":323.385,\"z\":210.997}', NULL, '[\"apa_v_mp_h_06_a\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-766.263,\"y\":328.104,\"z\":210.396}', 1300000),
(29, 'Seductive2Apartment', 'Appartement Séduisant 2', NULL, '{\"x\":-786.8663,\"y\":315.764,\"z\":186.913}', '{\"x\":-781.808,\"y\":315.866,\"z\":186.913}', NULL, '[\"apa_v_mp_h_06_c\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-795.655,\"y\":326.611,\"z\":186.313}', 1300000),
(30, 'Seductive3Apartment', 'Appartement Séduisant 3', NULL, '{\"x\":-774.012,\"y\":342.042,\"z\":195.686}', '{\"x\":-779.057,\"y\":342.063,\"z\":195.686}', NULL, '[\"apa_v_mp_h_06_b\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-765.3,\"y\":331.414,\"z\":195.085}', 1300000),
(31, 'Regal1Apartment', 'Appartement Régal 1', NULL, '{\"x\":-784.194,\"y\":323.636,\"z\":210.997}', '{\"x\":-779.751,\"y\":323.385,\"z\":210.997}', NULL, '[\"apa_v_mp_h_07_a\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-765.956,\"y\":328.257,\"z\":210.396}', 1300000),
(32, 'Regal2Apartment', 'Appartement Régal 2', NULL, '{\"x\":-786.8663,\"y\":315.764,\"z\":186.913}', '{\"x\":-781.808,\"y\":315.866,\"z\":186.913}', NULL, '[\"apa_v_mp_h_07_c\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-795.545,\"y\":326.659,\"z\":186.313}', 1300000),
(33, 'Regal3Apartment', 'Appartement Régal 3', NULL, '{\"x\":-774.012,\"y\":342.042,\"z\":195.686}', '{\"x\":-779.057,\"y\":342.063,\"z\":195.686}', NULL, '[\"apa_v_mp_h_07_b\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-765.087,\"y\":331.429,\"z\":195.123}', 1300000),
(34, 'Aqua1Apartment', 'Appartement Aqua 1', NULL, '{\"x\":-784.194,\"y\":323.636,\"z\":210.997}', '{\"x\":-779.751,\"y\":323.385,\"z\":210.997}', NULL, '[\"apa_v_mp_h_08_a\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-766.187,\"y\":328.47,\"z\":210.396}', 1300000),
(35, 'Aqua2Apartment', 'Appartement Aqua 2', NULL, '{\"x\":-786.8663,\"y\":315.764,\"z\":186.913}', '{\"x\":-781.808,\"y\":315.866,\"z\":186.913}', NULL, '[\"apa_v_mp_h_08_c\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-795.658,\"y\":326.563,\"z\":186.313}', 1300000),
(36, 'Aqua3Apartment', 'Appartement Aqua 3', NULL, '{\"x\":-774.012,\"y\":342.042,\"z\":195.686}', '{\"x\":-779.057,\"y\":342.063,\"z\":195.686}', NULL, '[\"apa_v_mp_h_08_b\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-765.287,\"y\":331.084,\"z\":195.086}', 1300000),
(37, 'IntegrityWay', '4 Integrity Way', '{\"x\":-47.804,\"y\":-585.867,\"z\":36.956}', NULL, NULL, '{\"x\":-54.178,\"y\":-583.762,\"z\":35.798}', '[]', NULL, 0, 0, 1, NULL, 0),
(38, 'IntegrityWay28', '4 Integrity Way - Apt 28', NULL, '{\"x\":-31.409,\"y\":-594.927,\"z\":79.03}', '{\"x\":-26.098,\"y\":-596.909,\"z\":79.03}', NULL, '[]', 'IntegrityWay', 0, 1, 0, '{\"x\":-11.923,\"y\":-597.083,\"z\":78.43}', 1700000),
(39, 'IntegrityWay30', '4 Integrity Way - Apt 30', NULL, '{\"x\":-17.702,\"y\":-588.524,\"z\":89.114}', '{\"x\":-16.21,\"y\":-582.569,\"z\":89.114}', NULL, '[]', 'IntegrityWay', 0, 1, 0, '{\"x\":-26.327,\"y\":-588.384,\"z\":89.123}', 1700000),
(40, 'DellPerroHeights', 'Dell Perro Heights', '{\"x\":-1447.06,\"y\":-538.28,\"z\":33.74}', NULL, NULL, '{\"x\":-1440.022,\"y\":-548.696,\"z\":33.74}', '[]', NULL, 0, 0, 1, NULL, 0),
(41, 'DellPerroHeightst4', 'Dell Perro Heights - Apt 28', NULL, '{\"x\":-1452.125,\"y\":-540.591,\"z\":73.044}', '{\"x\":-1455.435,\"y\":-535.79,\"z\":73.044}', NULL, '[]', 'DellPerroHeights', 0, 1, 0, '{\"x\":-1467.058,\"y\":-527.571,\"z\":72.443}', 1700000),
(42, 'DellPerroHeightst7', 'Dell Perro Heights - Apt 30', NULL, '{\"x\":-1451.562,\"y\":-523.535,\"z\":55.928}', '{\"x\":-1456.02,\"y\":-519.209,\"z\":55.929}', NULL, '[]', 'DellPerroHeights', 0, 1, 0, '{\"x\":-1457.026,\"y\":-530.219,\"z\":55.937}', 1700000),
(43, 'MazeBankBuilding', 'Maze Bank Building', '{\"x\":-79.18,\"y\":-795.92,\"z\":43.35}', NULL, NULL, '{\"x\":-72.50,\"y\":-786.92,\"z\":43.40}', '[]', NULL, 0, 0, 1, NULL, 0),
(44, 'OldSpiceWarm', 'Old Spice Warm', NULL, '{\"x\":-75.69,\"y\":-827.08,\"z\":242.43}', '{\"x\":-75.51,\"y\":-823.90,\"z\":242.43}', NULL, '[\"ex_dt1_11_office_01a\"]', 'MazeBankBuilding', 0, 1, 0, '{\"x\":-71.81,\"y\":-814.34,\"z\":242.39}', 5000000),
(45, 'OldSpiceClassical', 'Old Spice Classical', NULL, '{\"x\":-75.69,\"y\":-827.08,\"z\":242.43}', '{\"x\":-75.51,\"y\":-823.90,\"z\":242.43}', NULL, '[\"ex_dt1_11_office_01b\"]', 'MazeBankBuilding', 0, 1, 0, '{\"x\":-71.81,\"y\":-814.34,\"z\":242.39}', 5000000),
(46, 'OldSpiceVintage', 'Old Spice Vintage', NULL, '{\"x\":-75.69,\"y\":-827.08,\"z\":242.43}', '{\"x\":-75.51,\"y\":-823.90,\"z\":242.43}', NULL, '[\"ex_dt1_11_office_01c\"]', 'MazeBankBuilding', 0, 1, 0, '{\"x\":-71.81,\"y\":-814.34,\"z\":242.39}', 5000000),
(47, 'ExecutiveRich', 'Executive Rich', NULL, '{\"x\":-75.69,\"y\":-827.08,\"z\":242.43}', '{\"x\":-75.51,\"y\":-823.90,\"z\":242.43}', NULL, '[\"ex_dt1_11_office_02b\"]', 'MazeBankBuilding', 0, 1, 0, '{\"x\":-71.81,\"y\":-814.34,\"z\":242.39}', 5000000),
(48, 'ExecutiveCool', 'Executive Cool', NULL, '{\"x\":-75.69,\"y\":-827.08,\"z\":242.43}', '{\"x\":-75.51,\"y\":-823.90,\"z\":242.43}', NULL, '[\"ex_dt1_11_office_02c\"]', 'MazeBankBuilding', 0, 1, 0, '{\"x\":-71.81,\"y\":-814.34,\"z\":242.39}', 5000000),
(49, 'ExecutiveContrast', 'Executive Contrast', NULL, '{\"x\":-75.69,\"y\":-827.08,\"z\":242.43}', '{\"x\":-75.51,\"y\":-823.90,\"z\":242.43}', NULL, '[\"ex_dt1_11_office_02a\"]', 'MazeBankBuilding', 0, 1, 0, '{\"x\":-71.81,\"y\":-814.34,\"z\":242.39}', 5000000),
(50, 'PowerBrokerIce', 'Power Broker Ice', NULL, '{\"x\":-75.69,\"y\":-827.08,\"z\":242.43}', '{\"x\":-75.51,\"y\":-823.90,\"z\":242.43}', NULL, '[\"ex_dt1_11_office_03a\"]', 'MazeBankBuilding', 0, 1, 0, '{\"x\":-71.81,\"y\":-814.34,\"z\":242.39}', 5000000),
(51, 'PowerBrokerConservative', 'Power Broker Conservative', NULL, '{\"x\":-75.69,\"y\":-827.08,\"z\":242.43}', '{\"x\":-75.51,\"y\":-823.90,\"z\":242.43}', NULL, '[\"ex_dt1_11_office_03b\"]', 'MazeBankBuilding', 0, 1, 0, '{\"x\":-71.81,\"y\":-814.34,\"z\":242.39}', 5000000),
(52, 'PowerBrokerPolished', 'Power Broker Polished', NULL, '{\"x\":-75.69,\"y\":-827.08,\"z\":242.43}', '{\"x\":-75.51,\"y\":-823.90,\"z\":242.43}', NULL, '[\"ex_dt1_11_office_03c\"]', 'MazeBankBuilding', 0, 1, 0, '{\"x\":-71.81,\"y\":-814.34,\"z\":242.39}', 5000000),
(53, 'LomBank', 'Lom Bank', '{\"x\":-1581.36,\"y\":-558.23,\"z\":34.07}', NULL, NULL, '{\"x\":-1583.60,\"y\":-555.12,\"z\":34.07}', '[]', NULL, 0, 0, 1, NULL, 0),
(54, 'LBOldSpiceWarm', 'LB Old Spice Warm', NULL, '{\"x\":-1579.53,\"y\":-564.89,\"z\":107.62}', '{\"x\":-1576.42,\"y\":-567.57,\"z\":107.62}', NULL, '[\"ex_sm_13_office_01a\"]', 'LomBank', 0, 1, 0, '{\"x\":-1571.26,\"y\":-575.76,\"z\":107.52}', 3500000),
(55, 'LBOldSpiceClassical', 'LB Old Spice Classical', NULL, '{\"x\":-1579.53,\"y\":-564.89,\"z\":107.62}', '{\"x\":-1576.42,\"y\":-567.57,\"z\":107.62}', NULL, '[\"ex_sm_13_office_01b\"]', 'LomBank', 0, 1, 0, '{\"x\":-1571.26,\"y\":-575.76,\"z\":107.52}', 3500000),
(56, 'LBOldSpiceVintage', 'LB Old Spice Vintage', NULL, '{\"x\":-1579.53,\"y\":-564.89,\"z\":107.62}', '{\"x\":-1576.42,\"y\":-567.57,\"z\":107.62}', NULL, '[\"ex_sm_13_office_01c\"]', 'LomBank', 0, 1, 0, '{\"x\":-1571.26,\"y\":-575.76,\"z\":107.52}', 3500000),
(57, 'LBExecutiveRich', 'LB Executive Rich', NULL, '{\"x\":-1579.53,\"y\":-564.89,\"z\":107.62}', '{\"x\":-1576.42,\"y\":-567.57,\"z\":107.62}', NULL, '[\"ex_sm_13_office_02b\"]', 'LomBank', 0, 1, 0, '{\"x\":-1571.26,\"y\":-575.76,\"z\":107.52}', 3500000),
(58, 'LBExecutiveCool', 'LB Executive Cool', NULL, '{\"x\":-1579.53,\"y\":-564.89,\"z\":107.62}', '{\"x\":-1576.42,\"y\":-567.57,\"z\":107.62}', NULL, '[\"ex_sm_13_office_02c\"]', 'LomBank', 0, 1, 0, '{\"x\":-1571.26,\"y\":-575.76,\"z\":107.52}', 3500000),
(59, 'LBExecutiveContrast', 'LB Executive Contrast', NULL, '{\"x\":-1579.53,\"y\":-564.89,\"z\":107.62}', '{\"x\":-1576.42,\"y\":-567.57,\"z\":107.62}', NULL, '[\"ex_sm_13_office_02a\"]', 'LomBank', 0, 1, 0, '{\"x\":-1571.26,\"y\":-575.76,\"z\":107.52}', 3500000),
(60, 'LBPowerBrokerIce', 'LB Power Broker Ice', NULL, '{\"x\":-1579.53,\"y\":-564.89,\"z\":107.62}', '{\"x\":-1576.42,\"y\":-567.57,\"z\":107.62}', NULL, '[\"ex_sm_13_office_03a\"]', 'LomBank', 0, 1, 0, '{\"x\":-1571.26,\"y\":-575.76,\"z\":107.52}', 3500000),
(61, 'LBPowerBrokerConservative', 'LB Power Broker Conservative', NULL, '{\"x\":-1579.53,\"y\":-564.89,\"z\":107.62}', '{\"x\":-1576.42,\"y\":-567.57,\"z\":107.62}', NULL, '[\"ex_sm_13_office_03b\"]', 'LomBank', 0, 1, 0, '{\"x\":-1571.26,\"y\":-575.76,\"z\":107.52}', 3500000),
(62, 'LBPowerBrokerPolished', 'LB Power Broker Polished', NULL, '{\"x\":-1579.53,\"y\":-564.89,\"z\":107.62}', '{\"x\":-1576.42,\"y\":-567.57,\"z\":107.62}', NULL, '[\"ex_sm_13_office_03c\"]', 'LomBank', 0, 1, 0, '{\"x\":-1571.26,\"y\":-575.76,\"z\":107.52}', 3500000),
(63, 'MazeBankWest', 'Maze Bank West', '{\"x\":-1379.58,\"y\":-499.63,\"z\":32.22}', NULL, NULL, '{\"x\":-1378.95,\"y\":-502.82,\"z\":32.22}', '[]', NULL, 0, 0, 1, NULL, 0),
(64, 'MBWOldSpiceWarm', 'MBW Old Spice Warm', NULL, '{\"x\":-1392.74,\"y\":-480.18,\"z\":71.14}', '{\"x\":-1389.43,\"y\":-479.01,\"z\":71.14}', NULL, '[\"ex_sm_15_office_01a\"]', 'MazeBankWest', 0, 1, 0, '{\"x\":-1390.76,\"y\":-479.22,\"z\":72.04}', 2700000),
(65, 'MBWOldSpiceClassical', 'MBW Old Spice Classical', NULL, '{\"x\":-1392.74,\"y\":-480.18,\"z\":71.14}', '{\"x\":-1389.43,\"y\":-479.01,\"z\":71.14}', NULL, '[\"ex_sm_15_office_01b\"]', 'MazeBankWest', 0, 1, 0, '{\"x\":-1390.76,\"y\":-479.22,\"z\":72.04}', 2700000),
(66, 'MBWOldSpiceVintage', 'MBW Old Spice Vintage', NULL, '{\"x\":-1392.74,\"y\":-480.18,\"z\":71.14}', '{\"x\":-1389.43,\"y\":-479.01,\"z\":71.14}', NULL, '[\"ex_sm_15_office_01c\"]', 'MazeBankWest', 0, 1, 0, '{\"x\":-1390.76,\"y\":-479.22,\"z\":72.04}', 2700000),
(67, 'MBWExecutiveRich', 'MBW Executive Rich', NULL, '{\"x\":-1392.74,\"y\":-480.18,\"z\":71.14}', '{\"x\":-1389.43,\"y\":-479.01,\"z\":71.14}', NULL, '[\"ex_sm_15_office_02b\"]', 'MazeBankWest', 0, 1, 0, '{\"x\":-1390.76,\"y\":-479.22,\"z\":72.04}', 2700000),
(68, 'MBWExecutiveCool', 'MBW Executive Cool', NULL, '{\"x\":-1392.74,\"y\":-480.18,\"z\":71.14}', '{\"x\":-1389.43,\"y\":-479.01,\"z\":71.14}', NULL, '[\"ex_sm_15_office_02c\"]', 'MazeBankWest', 0, 1, 0, '{\"x\":-1390.76,\"y\":-479.22,\"z\":72.04}', 2700000),
(69, 'MBWExecutive Contrast', 'MBW Executive Contrast', NULL, '{\"x\":-1392.74,\"y\":-480.18,\"z\":71.14}', '{\"x\":-1389.43,\"y\":-479.01,\"z\":71.14}', NULL, '[\"ex_sm_15_office_02a\"]', 'MazeBankWest', 0, 1, 0, '{\"x\":-1390.76,\"y\":-479.22,\"z\":72.04}', 2700000),
(70, 'MBWPowerBrokerIce', 'MBW Power Broker Ice', NULL, '{\"x\":-1392.74,\"y\":-480.18,\"z\":71.14}', '{\"x\":-1389.43,\"y\":-479.01,\"z\":71.14}', NULL, '[\"ex_sm_15_office_03a\"]', 'MazeBankWest', 0, 1, 0, '{\"x\":-1390.76,\"y\":-479.22,\"z\":72.04}', 2700000),
(71, 'MBWPowerBrokerConvservative', 'MBW Power Broker Convservative', NULL, '{\"x\":-1392.74,\"y\":-480.18,\"z\":71.14}', '{\"x\":-1389.43,\"y\":-479.01,\"z\":71.14}', NULL, '[\"ex_sm_15_office_03b\"]', 'MazeBankWest', 0, 1, 0, '{\"x\":-1390.76,\"y\":-479.22,\"z\":72.04}', 2700000),
(72, 'MBWPowerBrokerPolished', 'MBW Power Broker Polished', NULL, '{\"x\":-1392.74,\"y\":-480.18,\"z\":71.14}', '{\"x\":-1389.43,\"y\":-479.01,\"z\":71.14}', NULL, '[\"ex_sm_15_office_03c\"]', 'MazeBankWest', 0, 1, 0, '{\"x\":-1390.76,\"y\":-479.22,\"z\":72.04}', 2700000);

-- --------------------------------------------------------

--
-- Table structure for table `rented_vehicles`
--

CREATE TABLE `rented_vehicles` (
  `vehicle` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `plate` varchar(12) COLLATE utf8mb4_unicode_ci NOT NULL,
  `player_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `base_price` int(11) NOT NULL,
  `rent_price` int(11) NOT NULL,
  `owner` varchar(22) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `shops`
--

CREATE TABLE `shops` (
  `id` int(11) NOT NULL,
  `store` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `item` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shops`
--

INSERT INTO `shops` (`id`, `store`, `item`, `price`) VALUES
(1, 'TwentyFourSeven', 'bread', 30),
(2, 'TwentyFourSeven', 'water', 15),
(3, 'RobsLiquor', 'bread', 30),
(4, 'RobsLiquor', 'water', 15),
(5, 'LTDgasoline', 'bread', 30),
(6, 'LTDgasoline', 'water', 15),
(7, 'LTDgasoline', 'plongee1', 250),
(8, 'RobsLiquor', 'plongee1', 250),
(9, 'TwentyFourSeven', 'plongee1', 250),
(10, 'LTDgasoline', 'plongee2', 350),
(11, 'RobsLiquor', 'plongee2', 350),
(12, 'TwentyFourSeven', 'plongee2', 350);

-- --------------------------------------------------------

--
-- Table structure for table `society_moneywash`
--

CREATE TABLE `society_moneywash` (
  `id` int(11) NOT NULL,
  `identifier` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `society` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `truck_inventory`
--

CREATE TABLE `truck_inventory` (
  `id` int(11) NOT NULL,
  `item` varchar(100) NOT NULL,
  `count` int(11) NOT NULL,
  `plate` varchar(8) NOT NULL,
  `name` varchar(255) NOT NULL,
  `owned` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `truck_inventory`
--

INSERT INTO `truck_inventory` (`id`, `item`, `count`, `plate`, `name`, `owned`) VALUES
(1, 'cannabis', 1, 'NVU 694 ', 'Cannabis', '0'),
(2, 'coke_pooch', 0, 'TRO 637 ', '?????????', '0');

-- --------------------------------------------------------

--
-- Table structure for table `twitter_accounts`
--

CREATE TABLE `twitter_accounts` (
  `id` int(11) NOT NULL,
  `username` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT '0',
  `password` varchar(50) COLLATE utf8mb4_bin NOT NULL DEFAULT '0',
  `avatar_url` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Table structure for table `twitter_likes`
--

CREATE TABLE `twitter_likes` (
  `id` int(11) NOT NULL,
  `authorId` int(11) DEFAULT NULL,
  `tweetId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Table structure for table `twitter_tweets`
--

CREATE TABLE `twitter_tweets` (
  `id` int(11) NOT NULL,
  `authorId` int(11) NOT NULL,
  `realUser` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `likes` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `identifier` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `license` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  `money` int(11) DEFAULT NULL,
  `name` varchar(50) COLLATE utf8mb4_bin DEFAULT '',
  `skin` longtext COLLATE utf8mb4_bin,
  `job` varchar(50) COLLATE utf8mb4_bin DEFAULT 'unemployed',
  `job_grade` int(11) DEFAULT '0',
  `loadout` longtext COLLATE utf8mb4_bin,
  `position` varchar(36) COLLATE utf8mb4_bin DEFAULT NULL,
  `bank` int(11) DEFAULT NULL,
  `permission_level` int(11) DEFAULT NULL,
  `group` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  `is_dead` tinyint(1) DEFAULT '0',
  `firstname` varchar(50) COLLATE utf8mb4_bin DEFAULT '',
  `lastname` varchar(50) COLLATE utf8mb4_bin DEFAULT '',
  `dateofbirth` varchar(25) COLLATE utf8mb4_bin DEFAULT '',
  `sex` varchar(10) COLLATE utf8mb4_bin DEFAULT '',
  `height` varchar(5) COLLATE utf8mb4_bin DEFAULT '',
  `last_property` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `phone_number` int(11) DEFAULT NULL,
  `status` longtext COLLATE utf8mb4_bin
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`identifier`, `license`, `money`, `name`, `skin`, `job`, `job_grade`, `loadout`, `position`, `bank`, `permission_level`, `group`, `is_dead`, `firstname`, `lastname`, `dateofbirth`, `sex`, `height`, `last_property`, `phone_number`, `status`) VALUES
('steam:11000010db3bd17', 'license:5a6724ce384bbf16c7173a160a9871ab3d2d7a7c', 2143299883, 'Emerble', '{\"complexion_2\":0,\"lipstick_3\":0,\"decals_2\":0,\"eyebrows_3\":0,\"shoes_2\":0,\"eyebrows_4\":0,\"beard_4\":0,\"sex\":1,\"bracelets_1\":-1,\"decals_1\":0,\"mask_1\":0,\"hair_color_1\":0,\"chest_3\":0,\"chain_1\":0,\"bodyb_2\":0,\"blemishes_1\":0,\"blush_2\":0,\"makeup_1\":0,\"makeup_4\":0,\"ears_1\":-1,\"moles_2\":0,\"lipstick_2\":0,\"makeup_2\":0,\"lipstick_1\":0,\"beard_2\":0,\"moles_1\":0,\"glasses_1\":0,\"bracelets_2\":0,\"arms_2\":0,\"bodyb_1\":0,\"mask_2\":0,\"blush_3\":0,\"hair_1\":2,\"helmet_2\":0,\"bproof_1\":0,\"chest_2\":0,\"shoes_1\":0,\"beard_3\":0,\"chest_1\":0,\"makeup_3\":0,\"skin\":3,\"torso_1\":0,\"beard_1\":0,\"hair_color_2\":0,\"lipstick_4\":0,\"face\":16,\"eyebrows_1\":0,\"age_1\":0,\"arms\":0,\"sun_2\":0,\"sun_1\":0,\"torso_2\":0,\"helmet_1\":-1,\"pants_2\":0,\"eye_color\":0,\"ears_2\":0,\"complexion_1\":0,\"watches_1\":-1,\"chain_2\":0,\"tshirt_2\":0,\"watches_2\":0,\"blush_1\":0,\"tshirt_1\":0,\"pants_1\":0,\"hair_2\":0,\"eyebrows_2\":0,\"bproof_2\":0,\"bags_2\":0,\"bags_1\":0,\"blemishes_2\":0,\"age_2\":0,\"glasses_2\":0}', 'police', 4, '[]', '{\"x\":178.5,\"y\":-32.5,\"z\":68.2}', 99987084, 4, 'superadmin', 0, 'Kroekprakai', 'Al-kaum', '1/1/1991', 'm', '200', NULL, 333, '[{\"name\":\"hunger\",\"val\":275200,\"percent\":27.52},{\"name\":\"thirst\",\"val\":331400,\"percent\":33.14}]'),
('steam:11000010dc30d43', 'license:42bb79df634d7c6dcc616aeac2cc987c69d213eb', 4000, 'RobertSmoke', '{\"bracelets_2\":0,\"age_2\":0,\"blush_1\":0,\"bproof_1\":16,\"arms_2\":0,\"beard_2\":0,\"skin\":4,\"bproof_2\":2,\"hair_2\":0,\"bags_2\":0,\"blush_3\":0,\"mask_1\":0,\"eye_color\":0,\"watches_2\":0,\"complexion_2\":0,\"bracelets_1\":-1,\"blush_2\":0,\"ears_1\":-1,\"ears_2\":0,\"chain_1\":0,\"blemishes_1\":0,\"lipstick_1\":0,\"beard_3\":0,\"eyebrows_3\":0,\"pants_1\":4,\"mask_2\":0,\"chest_1\":0,\"decals_2\":0,\"eyebrows_2\":0,\"face\":13,\"bodyb_2\":0,\"bodyb_1\":0,\"pants_2\":1,\"hair_1\":10,\"chain_2\":0,\"shoes_1\":1,\"tshirt_2\":0,\"sun_2\":0,\"bags_1\":0,\"helmet_1\":45,\"age_1\":0,\"moles_2\":0,\"makeup_4\":0,\"arms\":0,\"sex\":0,\"makeup_1\":0,\"beard_4\":0,\"hair_color_1\":4,\"lipstick_2\":0,\"sun_1\":0,\"makeup_2\":0,\"hair_color_2\":0,\"torso_2\":2,\"eyebrows_1\":0,\"torso_1\":75,\"shoes_2\":2,\"chest_3\":0,\"blemishes_2\":0,\"lipstick_4\":0,\"decals_1\":0,\"beard_1\":0,\"glasses_1\":7,\"glasses_2\":1,\"complexion_1\":0,\"makeup_3\":0,\"tshirt_1\":5,\"lipstick_3\":0,\"helmet_2\":1,\"chest_2\":0,\"moles_1\":0,\"eyebrows_4\":0,\"watches_1\":-1}', 'taxi', 0, '[]', '{\"z\":45.6,\"y\":2568.3,\"x\":1642.6}', 84, 4, 'superadmin', 0, 'Kimuji', 'Hatana', '1992-05-06', 'm', '175', NULL, 1111, '[{\"percent\":31.62,\"name\":\"hunger\",\"val\":316200},{\"percent\":36.215,\"name\":\"thirst\",\"val\":362150}]'),
('steam:11000011b02e87e', 'license:58cd64a47c0afe0a32b120075c9f7964910edaab', 21991198, 'Kuma Chaa', '{\"shoes_1\":12,\"blemishes_2\":0,\"makeup_4\":0,\"chest_1\":0,\"moles_1\":0,\"beard_4\":0,\"glasses_1\":0,\"pants_2\":2,\"mask_2\":0,\"eyebrows_4\":13,\"sun_2\":0,\"lipstick_1\":0,\"blush_3\":0,\"bags_2\":0,\"eyebrows_3\":41,\"hair_1\":31,\"torso_2\":1,\"helmet_2\":0,\"beard_1\":11,\"skin\":0,\"beard_3\":0,\"lipstick_2\":0,\"complexion_2\":0,\"ears_1\":-1,\"decals_2\":0,\"arms_2\":0,\"chest_2\":0,\"arms\":6,\"age_2\":0,\"helmet_1\":-1,\"blush_1\":0,\"hair_2\":0,\"bodyb_1\":0,\"watches_2\":0,\"bracelets_2\":0,\"complexion_1\":0,\"hair_color_2\":11,\"eye_color\":0,\"lipstick_4\":0,\"tshirt_1\":15,\"moles_2\":0,\"bracelets_1\":-1,\"age_1\":0,\"ears_2\":0,\"decals_1\":0,\"hair_color_1\":55,\"sex\":0,\"shoes_2\":9,\"chain_1\":0,\"makeup_2\":0,\"bproof_2\":0,\"watches_1\":-1,\"bags_1\":0,\"bproof_1\":0,\"tshirt_2\":0,\"lipstick_3\":0,\"beard_2\":10,\"glasses_2\":0,\"torso_1\":113,\"chain_2\":0,\"makeup_3\":0,\"bodyb_2\":0,\"chest_3\":0,\"blemishes_1\":0,\"mask_1\":0,\"pants_1\":79,\"makeup_1\":0,\"blush_2\":0,\"eyebrows_1\":1,\"eyebrows_2\":10,\"face\":0,\"sun_1\":0}', 'reporter', 0, '[]', '{\"z\":33.0,\"y\":-481.7,\"x\":-437.6}', 977319, 4, 'superadmin', 0, 'Kuma', 'Chaa', '2000-02-03', 'm', '185', NULL, 2222, '[{\"name\":\"hunger\",\"val\":733200,\"percent\":73.32},{\"name\":\"thirst\",\"val\":799600,\"percent\":79.96}]');

-- --------------------------------------------------------

--
-- Table structure for table `user_accounts`
--

CREATE TABLE `user_accounts` (
  `id` int(11) NOT NULL,
  `identifier` varchar(22) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `money` double NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_accounts`
--

INSERT INTO `user_accounts` (`id`, `identifier`, `name`, `money`) VALUES
(2, 'steam:11000010dc30d43', 'black_money', 0),
(3, 'steam:11000011b02e87e', 'black_money', 4012),
(4, 'steam:11000010db3bd17', 'black_money', 6273);

-- --------------------------------------------------------

--
-- Table structure for table `user_contacts`
--

CREATE TABLE `user_contacts` (
  `id` int(11) NOT NULL,
  `identifier` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `number` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_inventory`
--

CREATE TABLE `user_inventory` (
  `id` int(11) NOT NULL,
  `identifier` varchar(22) COLLATE utf8mb4_unicode_ci NOT NULL,
  `item` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `count` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_inventory`
--

INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
(1, 'steam:11000010dc30d43', 'gold', 0),
(2, 'steam:11000010dc30d43', 'medikit', 0),
(3, 'steam:11000010dc30d43', 'essence', 0),
(4, 'steam:11000010dc30d43', 'cutted_wood', 0),
(5, 'steam:11000010dc30d43', 'washed_stone', 0),
(6, 'steam:11000010dc30d43', 'bandage', 0),
(7, 'steam:11000010dc30d43', 'diamond', 0),
(8, 'steam:11000010dc30d43', 'alive_chicken', 0),
(9, 'steam:11000010dc30d43', 'clothe', 0),
(10, 'steam:11000010dc30d43', 'packaged_plank', 0),
(11, 'steam:11000010dc30d43', 'packaged_chicken', 0),
(12, 'steam:11000010dc30d43', 'fabric', 0),
(13, 'steam:11000010dc30d43', 'stone', 0),
(14, 'steam:11000010dc30d43', 'blowpipe', 0),
(15, 'steam:11000010dc30d43', 'carokit', 1),
(16, 'steam:11000010dc30d43', 'petrol', 0),
(17, 'steam:11000010dc30d43', 'iron', 0),
(18, 'steam:11000010dc30d43', 'petrol_raffin', 0),
(19, 'steam:11000010dc30d43', 'copper', 0),
(20, 'steam:11000010dc30d43', 'slaughtered_chicken', 0),
(21, 'steam:11000010dc30d43', 'carotool', 2),
(22, 'steam:11000010dc30d43', 'wool', 0),
(23, 'steam:11000010dc30d43', 'wood', 0),
(24, 'steam:11000010dc30d43', 'gazbottle', 0),
(25, 'steam:11000010dc30d43', 'fixkit', 0),
(26, 'steam:11000010dc30d43', 'fixtool', 0),
(27, 'steam:11000010dc30d43', 'fish', 0),
(28, 'steam:11000011b02e87e', 'carokit', 0),
(29, 'steam:11000011b02e87e', 'stone', 0),
(30, 'steam:11000011b02e87e', 'washed_stone', 0),
(31, 'steam:11000011b02e87e', 'wool', 0),
(32, 'steam:11000011b02e87e', 'alive_chicken', 0),
(33, 'steam:11000011b02e87e', 'diamond', 0),
(34, 'steam:11000011b02e87e', 'packaged_chicken', 0),
(35, 'steam:11000011b02e87e', 'copper', 0),
(36, 'steam:11000011b02e87e', 'wood', 0),
(37, 'steam:11000011b02e87e', 'fabric', 0),
(38, 'steam:11000011b02e87e', 'iron', 0),
(39, 'steam:11000011b02e87e', 'packaged_plank', 0),
(40, 'steam:11000011b02e87e', 'essence', 0),
(41, 'steam:11000011b02e87e', 'fish', 0),
(42, 'steam:11000011b02e87e', 'fixtool', 0),
(43, 'steam:11000011b02e87e', 'carotool', 1),
(44, 'steam:11000011b02e87e', 'clothe', 0),
(45, 'steam:11000011b02e87e', 'cutted_wood', 0),
(46, 'steam:11000011b02e87e', 'slaughtered_chicken', 0),
(47, 'steam:11000011b02e87e', 'petrol_raffin', 0),
(48, 'steam:11000011b02e87e', 'petrol', 0),
(49, 'steam:11000011b02e87e', 'fixkit', 0),
(50, 'steam:11000011b02e87e', 'gazbottle', 0),
(51, 'steam:11000011b02e87e', 'bandage', 0),
(52, 'steam:11000011b02e87e', 'gold', 0),
(53, 'steam:11000011b02e87e', 'medikit', 0),
(54, 'steam:11000011b02e87e', 'blowpipe', 0),
(55, 'steam:11000010dc30d43', 'marijuana', 0),
(56, 'steam:11000010dc30d43', 'cannabis', 0),
(57, 'steam:11000011b02e87e', 'cannabis', 4),
(58, 'steam:11000011b02e87e', 'marijuana', 8),
(59, 'steam:11000010db3bd17', 'washed_stone', 0),
(60, 'steam:11000010db3bd17', 'diamond', 0),
(61, 'steam:11000010db3bd17', 'cutted_wood', 0),
(62, 'steam:11000010db3bd17', 'medikit', 0),
(63, 'steam:11000010db3bd17', 'carotool', 1),
(64, 'steam:11000010db3bd17', 'marijuana', 0),
(65, 'steam:11000010db3bd17', 'alive_chicken', 0),
(66, 'steam:11000010db3bd17', 'fabric', 0),
(67, 'steam:11000010db3bd17', 'fixtool', 0),
(68, 'steam:11000010db3bd17', 'packaged_plank', 0),
(69, 'steam:11000010db3bd17', 'fixkit', 0),
(70, 'steam:11000010db3bd17', 'stone', 0),
(71, 'steam:11000010db3bd17', 'slaughtered_chicken', 0),
(72, 'steam:11000010db3bd17', 'petrol_raffin', 0),
(73, 'steam:11000010db3bd17', 'bandage', 0),
(74, 'steam:11000010db3bd17', 'petrol', 0),
(75, 'steam:11000010db3bd17', 'iron', 0),
(76, 'steam:11000010db3bd17', 'essence', 0),
(77, 'steam:11000010db3bd17', 'packaged_chicken', 0),
(78, 'steam:11000010db3bd17', 'wool', 0),
(79, 'steam:11000010db3bd17', 'gazbottle', 0),
(80, 'steam:11000010db3bd17', 'copper', 0),
(81, 'steam:11000010db3bd17', 'cannabis', 2),
(82, 'steam:11000010db3bd17', 'blowpipe', 0),
(83, 'steam:11000010db3bd17', 'gold', 0),
(84, 'steam:11000010db3bd17', 'wood', 0),
(85, 'steam:11000010db3bd17', 'carokit', 0),
(86, 'steam:11000010db3bd17', 'fish', 0),
(87, 'steam:11000010db3bd17', 'clothe', 0),
(88, 'steam:11000011b02e87e', 'meth', 0),
(89, 'steam:11000011b02e87e', 'meth_pooch', 0),
(94, 'steam:11000010dc30d43', 'opium_pooch', 0),
(95, 'steam:11000010dc30d43', 'opium', 0),
(96, 'steam:11000010dc30d43', 'meth', 0),
(97, 'steam:11000010dc30d43', 'coke_pooch', 18),
(98, 'steam:11000010dc30d43', 'coke', 0),
(99, 'steam:11000010dc30d43', 'weed_pooch', 0),
(100, 'steam:11000010dc30d43', 'meth_pooch', 0),
(101, 'steam:11000010dc30d43', 'weed', 0),
(102, 'steam:11000011b02e87e', 'coke', 10),
(103, 'steam:11000011b02e87e', 'weed', 2),
(104, 'steam:11000011b02e87e', 'weed_pooch', 10),
(105, 'steam:11000011b02e87e', 'opium_pooch', 0),
(106, 'steam:11000011b02e87e', 'coke_pooch', 0),
(107, 'steam:11000011b02e87e', 'opium', 0),
(108, 'steam:11000010db3bd17', 'opium_pooch', 0),
(109, 'steam:11000010db3bd17', 'coke_pooch', 6),
(110, 'steam:11000010db3bd17', 'opium', 0),
(111, 'steam:11000010db3bd17', 'coke', 1),
(112, 'steam:11000010db3bd17', 'weed_pooch', 0),
(113, 'steam:11000010db3bd17', 'weed', 6),
(114, 'steam:11000010db3bd17', 'meth', 0),
(115, 'steam:11000010db3bd17', 'meth_pooch', 0),
(116, 'steam:11000011b02e87e', 'contrat', 0),
(117, 'steam:11000011b02e87e', 'water', 24),
(118, 'steam:11000011b02e87e', 'bread', 27),
(119, 'steam:11000011b02e87e', 'plongee2', 2),
(120, 'steam:11000011b02e87e', 'plongee1', 0),
(121, 'steam:11000010db3bd17', 'contrat', 0),
(122, 'steam:11000010db3bd17', 'water', 0),
(123, 'steam:11000010db3bd17', 'bread', 0),
(124, 'steam:11000010db3bd17', 'plongee2', 0),
(125, 'steam:11000010db3bd17', 'plongee1', 0),
(126, 'steam:11000011b02e87e', 'jewels', 0),
(127, 'steam:11000010db3bd17', 'jewels', 0),
(128, 'steam:11000010dc30d43', 'bread', 1),
(129, 'steam:11000010dc30d43', 'jewels', 0),
(130, 'steam:11000010dc30d43', 'plongee1', 0),
(131, 'steam:11000010dc30d43', 'plongee2', 0),
(132, 'steam:11000010dc30d43', 'water', 4),
(133, 'steam:11000010dc30d43', 'contrat', 0),
(134, 'steam:11000011b02e87e', 'leather', 0),
(135, 'steam:11000011b02e87e', 'meat', 0),
(136, 'steam:11000010dc30d43', 'leather', 0),
(137, 'steam:11000010dc30d43', 'meat', 0),
(138, 'steam:11000010db3bd17', 'meat', 0),
(139, 'steam:11000010db3bd17', 'leather', 0);

-- --------------------------------------------------------

--
-- Table structure for table `user_licenses`
--

CREATE TABLE `user_licenses` (
  `id` int(11) NOT NULL,
  `type` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vehicles`
--

CREATE TABLE `vehicles` (
  `name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `category` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `vehicles`
--

INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
('Adder', 'adder', 900000, 'super'),
('Akuma', 'AKUMA', 7500, 'motorcycles'),
('Alpha', 'alpha', 60000, 'sports'),
('Ardent', 'ardent', 1150000, 'sportsclassics'),
('Asea', 'asea', 5500, 'sedans'),
('Autarch', 'autarch', 1955000, 'super'),
('Avarus', 'avarus', 18000, 'motorcycles'),
('Bagger', 'bagger', 13500, 'motorcycles'),
('Baller', 'baller2', 40000, 'suvs'),
('Baller Sport', 'baller3', 60000, 'suvs'),
('Banshee', 'banshee', 70000, 'sports'),
('Banshee 900R', 'banshee2', 255000, 'super'),
('Bati 801', 'bati', 12000, 'motorcycles'),
('Bati 801RR', 'bati2', 19000, 'motorcycles'),
('Bestia GTS', 'bestiagts', 55000, 'sports'),
('BF400', 'bf400', 6500, 'motorcycles'),
('Bf Injection', 'bfinjection', 16000, 'offroad'),
('Bifta', 'bifta', 12000, 'offroad'),
('Bison', 'bison', 45000, 'vans'),
('Blade', 'blade', 15000, 'muscle'),
('Blazer', 'blazer', 6500, 'offroad'),
('Blazer Sport', 'blazer4', 8500, 'offroad'),
('blazer5', 'blazer5', 1755600, 'offroad'),
('Blista', 'blista', 8000, 'compacts'),
('BMX (velo)', 'bmx', 160, 'motorcycles'),
('Bobcat XL', 'bobcatxl', 32000, 'vans'),
('Brawler', 'brawler', 45000, 'offroad'),
('Brioso R/A', 'brioso', 18000, 'compacts'),
('Btype', 'btype', 62000, 'sportsclassics'),
('Btype Hotroad', 'btype2', 155000, 'sportsclassics'),
('Btype Luxe', 'btype3', 85000, 'sportsclassics'),
('Buccaneer', 'buccaneer', 18000, 'muscle'),
('Buccaneer Rider', 'buccaneer2', 24000, 'muscle'),
('Buffalo', 'buffalo', 12000, 'sports'),
('Buffalo S', 'buffalo2', 20000, 'sports'),
('Bullet', 'bullet', 90000, 'super'),
('Burrito', 'burrito3', 19000, 'vans'),
('Camper', 'camper', 42000, 'vans'),
('Carbonizzare', 'carbonizzare', 75000, 'sports'),
('Carbon RS', 'carbonrs', 18000, 'motorcycles'),
('Casco', 'casco', 30000, 'sportsclassics'),
('Cavalcade', 'cavalcade2', 55000, 'suvs'),
('Cheetah', 'cheetah', 375000, 'super'),
('Chimera', 'chimera', 38000, 'motorcycles'),
('Chino', 'chino', 15000, 'muscle'),
('Chino Luxe', 'chino2', 19000, 'muscle'),
('Cliffhanger', 'cliffhanger', 9500, 'motorcycles'),
('Cognoscenti Cabrio', 'cogcabrio', 55000, 'coupes'),
('Cognoscenti', 'cognoscenti', 55000, 'sedans'),
('Comet', 'comet2', 65000, 'sports'),
('Comet 5', 'comet5', 1145000, 'sports'),
('Contender', 'contender', 70000, 'suvs'),
('Coquette', 'coquette', 65000, 'sports'),
('Coquette Classic', 'coquette2', 40000, 'sportsclassics'),
('Coquette BlackFin', 'coquette3', 55000, 'muscle'),
('Cruiser (velo)', 'cruiser', 510, 'motorcycles'),
('Cyclone', 'cyclone', 1890000, 'super'),
('Daemon', 'daemon', 11500, 'motorcycles'),
('Daemon High', 'daemon2', 13500, 'motorcycles'),
('Defiler', 'defiler', 9800, 'motorcycles'),
('Deluxo', 'deluxo', 4721500, 'sportsclassics'),
('Dominator', 'dominator', 35000, 'muscle'),
('Double T', 'double', 28000, 'motorcycles'),
('Dubsta', 'dubsta', 45000, 'suvs'),
('Dubsta Luxuary', 'dubsta2', 60000, 'suvs'),
('Bubsta 6x6', 'dubsta3', 120000, 'offroad'),
('Dukes', 'dukes', 28000, 'muscle'),
('Dune Buggy', 'dune', 8000, 'offroad'),
('Elegy', 'elegy2', 38500, 'sports'),
('Emperor', 'emperor', 8500, 'sedans'),
('Enduro', 'enduro', 5500, 'motorcycles'),
('Entity XF', 'entityxf', 425000, 'super'),
('Esskey', 'esskey', 4200, 'motorcycles'),
('Exemplar', 'exemplar', 32000, 'coupes'),
('F620', 'f620', 40000, 'coupes'),
('Faction', 'faction', 20000, 'muscle'),
('Faction Rider', 'faction2', 30000, 'muscle'),
('Faction XL', 'faction3', 40000, 'muscle'),
('Faggio', 'faggio', 1900, 'motorcycles'),
('Vespa', 'faggio2', 2800, 'motorcycles'),
('Felon', 'felon', 42000, 'coupes'),
('Felon GT', 'felon2', 55000, 'coupes'),
('Feltzer', 'feltzer2', 55000, 'sports'),
('Stirling GT', 'feltzer3', 65000, 'sportsclassics'),
('Fixter (velo)', 'fixter', 225, 'motorcycles'),
('FMJ', 'fmj', 185000, 'super'),
('Fhantom', 'fq2', 17000, 'suvs'),
('Fugitive', 'fugitive', 12000, 'sedans'),
('Furore GT', 'furoregt', 45000, 'sports'),
('Fusilade', 'fusilade', 40000, 'sports'),
('Gargoyle', 'gargoyle', 16500, 'motorcycles'),
('Gauntlet', 'gauntlet', 30000, 'muscle'),
('Gang Burrito', 'gburrito', 45000, 'vans'),
('Burrito', 'gburrito2', 29000, 'vans'),
('Glendale', 'glendale', 6500, 'sedans'),
('Grabger', 'granger', 50000, 'suvs'),
('Gresley', 'gresley', 47500, 'suvs'),
('GT 500', 'gt500', 785000, 'sportsclassics'),
('Guardian', 'guardian', 45000, 'offroad'),
('Hakuchou', 'hakuchou', 31000, 'motorcycles'),
('Hakuchou Sport', 'hakuchou2', 55000, 'motorcycles'),
('Hermes', 'hermes', 535000, 'muscle'),
('Hexer', 'hexer', 12000, 'motorcycles'),
('Hotknife', 'hotknife', 125000, 'muscle'),
('Huntley S', 'huntley', 40000, 'suvs'),
('Hustler', 'hustler', 625000, 'muscle'),
('Infernus', 'infernus', 180000, 'super'),
('Innovation', 'innovation', 23500, 'motorcycles'),
('Intruder', 'intruder', 7500, 'sedans'),
('Issi', 'issi2', 10000, 'compacts'),
('Jackal', 'jackal', 38000, 'coupes'),
('Jester', 'jester', 65000, 'sports'),
('Jester(Racecar)', 'jester2', 135000, 'sports'),
('Journey', 'journey', 6500, 'vans'),
('Kamacho', 'kamacho', 345000, 'offroad'),
('Khamelion', 'khamelion', 38000, 'sports'),
('Kuruma', 'kuruma', 30000, 'sports'),
('Landstalker', 'landstalker', 35000, 'suvs'),
('RE-7B', 'le7b', 325000, 'super'),
('Lynx', 'lynx', 40000, 'sports'),
('Mamba', 'mamba', 70000, 'sports'),
('Manana', 'manana', 12800, 'sportsclassics'),
('Manchez', 'manchez', 5300, 'motorcycles'),
('Massacro', 'massacro', 65000, 'sports'),
('Massacro(Racecar)', 'massacro2', 130000, 'sports'),
('Mesa', 'mesa', 16000, 'suvs'),
('Mesa Trail', 'mesa3', 40000, 'suvs'),
('Minivan', 'minivan', 13000, 'vans'),
('Monroe', 'monroe', 55000, 'sportsclassics'),
('The Liberator', 'monster', 210000, 'offroad'),
('Moonbeam', 'moonbeam', 18000, 'vans'),
('Moonbeam Rider', 'moonbeam2', 35000, 'vans'),
('Nemesis', 'nemesis', 5800, 'motorcycles'),
('Neon', 'neon', 1500000, 'sports'),
('Nightblade', 'nightblade', 35000, 'motorcycles'),
('Nightshade', 'nightshade', 65000, 'muscle'),
('9F', 'ninef', 65000, 'sports'),
('9F Cabrio', 'ninef2', 80000, 'sports'),
('Omnis', 'omnis', 35000, 'sports'),
('Oppressor', 'oppressor', 3524500, 'super'),
('Oracle XS', 'oracle2', 35000, 'coupes'),
('Osiris', 'osiris', 160000, 'super'),
('Panto', 'panto', 10000, 'compacts'),
('Paradise', 'paradise', 19000, 'vans'),
('Pariah', 'pariah', 1420000, 'sports'),
('Patriot', 'patriot', 55000, 'suvs'),
('PCJ-600', 'pcj', 6200, 'motorcycles'),
('Penumbra', 'penumbra', 28000, 'sports'),
('Pfister', 'pfister811', 85000, 'super'),
('Phoenix', 'phoenix', 12500, 'muscle'),
('Picador', 'picador', 18000, 'muscle'),
('Pigalle', 'pigalle', 20000, 'sportsclassics'),
('Prairie', 'prairie', 12000, 'compacts'),
('Premier', 'premier', 8000, 'sedans'),
('Primo Custom', 'primo2', 14000, 'sedans'),
('X80 Proto', 'prototipo', 2500000, 'super'),
('Radius', 'radi', 29000, 'suvs'),
('raiden', 'raiden', 1375000, 'sports'),
('Rapid GT', 'rapidgt', 35000, 'sports'),
('Rapid GT Convertible', 'rapidgt2', 45000, 'sports'),
('Rapid GT3', 'rapidgt3', 885000, 'sportsclassics'),
('Reaper', 'reaper', 150000, 'super'),
('Rebel', 'rebel2', 35000, 'offroad'),
('Regina', 'regina', 5000, 'sedans'),
('Retinue', 'retinue', 615000, 'sportsclassics'),
('Revolter', 'revolter', 1610000, 'sports'),
('riata', 'riata', 380000, 'offroad'),
('Rocoto', 'rocoto', 45000, 'suvs'),
('Ruffian', 'ruffian', 6800, 'motorcycles'),
('Ruiner 2', 'ruiner2', 5745600, 'muscle'),
('Rumpo', 'rumpo', 15000, 'vans'),
('Rumpo Trail', 'rumpo3', 19500, 'vans'),
('Sabre Turbo', 'sabregt', 20000, 'muscle'),
('Sabre GT', 'sabregt2', 25000, 'muscle'),
('Sanchez', 'sanchez', 5300, 'motorcycles'),
('Sanchez Sport', 'sanchez2', 5300, 'motorcycles'),
('Sanctus', 'sanctus', 25000, 'motorcycles'),
('Sandking', 'sandking', 55000, 'offroad'),
('Savestra', 'savestra', 990000, 'sportsclassics'),
('SC 1', 'sc1', 1603000, 'super'),
('Schafter', 'schafter2', 25000, 'sedans'),
('Schafter V12', 'schafter3', 50000, 'sports'),
('Scorcher (velo)', 'scorcher', 280, 'motorcycles'),
('Seminole', 'seminole', 25000, 'suvs'),
('Sentinel', 'sentinel', 32000, 'coupes'),
('Sentinel XS', 'sentinel2', 40000, 'coupes'),
('Sentinel3', 'sentinel3', 650000, 'sports'),
('Seven 70', 'seven70', 39500, 'sports'),
('ETR1', 'sheava', 220000, 'super'),
('Shotaro Concept', 'shotaro', 320000, 'motorcycles'),
('Slam Van', 'slamvan3', 11500, 'muscle'),
('Sovereign', 'sovereign', 22000, 'motorcycles'),
('Stinger', 'stinger', 80000, 'sportsclassics'),
('Stinger GT', 'stingergt', 75000, 'sportsclassics'),
('Streiter', 'streiter', 500000, 'sports'),
('Stretch', 'stretch', 90000, 'sedans'),
('Stromberg', 'stromberg', 3185350, 'sports'),
('Sultan', 'sultan', 15000, 'sports'),
('Sultan RS', 'sultanrs', 65000, 'super'),
('Super Diamond', 'superd', 130000, 'sedans'),
('Surano', 'surano', 50000, 'sports'),
('Surfer', 'surfer', 12000, 'vans'),
('T20', 't20', 300000, 'super'),
('Tailgater', 'tailgater', 30000, 'sedans'),
('Tampa', 'tampa', 16000, 'muscle'),
('Drift Tampa', 'tampa2', 80000, 'sports'),
('Thrust', 'thrust', 24000, 'motorcycles'),
('Tri bike (velo)', 'tribike3', 520, 'motorcycles'),
('Trophy Truck', 'trophytruck', 60000, 'offroad'),
('Trophy Truck Limited', 'trophytruck2', 80000, 'offroad'),
('Tropos', 'tropos', 40000, 'sports'),
('Turismo R', 'turismor', 350000, 'super'),
('Tyrus', 'tyrus', 600000, 'super'),
('Vacca', 'vacca', 120000, 'super'),
('Vader', 'vader', 7200, 'motorcycles'),
('Verlierer', 'verlierer2', 70000, 'sports'),
('Vigero', 'vigero', 12500, 'muscle'),
('Virgo', 'virgo', 14000, 'muscle'),
('Viseris', 'viseris', 875000, 'sportsclassics'),
('Visione', 'visione', 2250000, 'super'),
('Voltic', 'voltic', 90000, 'super'),
('Voltic 2', 'voltic2', 3830400, 'super'),
('Voodoo', 'voodoo', 7200, 'muscle'),
('Vortex', 'vortex', 9800, 'motorcycles'),
('Warrener', 'warrener', 4000, 'sedans'),
('Washington', 'washington', 9000, 'sedans'),
('Windsor', 'windsor', 95000, 'coupes'),
('Windsor Drop', 'windsor2', 125000, 'coupes'),
('Woflsbane', 'wolfsbane', 9000, 'motorcycles'),
('XLS', 'xls', 32000, 'suvs'),
('Yosemite', 'yosemite', 485000, 'muscle'),
('Youga', 'youga', 10800, 'vans'),
('Youga Luxuary', 'youga2', 14500, 'vans'),
('Z190', 'z190', 900000, 'sportsclassics'),
('Zentorno', 'zentorno', 1500000, 'super'),
('Zion', 'zion', 36000, 'coupes'),
('Zion Cabrio', 'zion2', 45000, 'coupes'),
('Zombie', 'zombiea', 9500, 'motorcycles'),
('Zombie Luxuary', 'zombieb', 12000, 'motorcycles'),
('Z-Type', 'ztype', 220000, 'sportsclassics');

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_categories`
--

CREATE TABLE `vehicle_categories` (
  `name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `label` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `vehicle_categories`
--

INSERT INTO `vehicle_categories` (`name`, `label`) VALUES
('compacts', 'Compacts'),
('coupes', 'Coupés'),
('motorcycles', 'Motos'),
('muscle', 'Muscle'),
('offroad', 'Off Road'),
('sedans', 'Sedans'),
('sports', 'Sports'),
('sportsclassics', 'Sports Classics'),
('super', 'Super'),
('suvs', 'SUVs'),
('vans', 'Vans');

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_sold`
--

CREATE TABLE `vehicle_sold` (
  `client` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `plate` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `soldby` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `weashops`
--

CREATE TABLE `weashops` (
  `id` int(11) NOT NULL,
  `zone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `item` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `weashops`
--

INSERT INTO `weashops` (`id`, `zone`, `item`, `price`) VALUES
(1, 'GunShop', 'WEAPON_PISTOL', 300),
(2, 'BlackWeashop', 'WEAPON_PISTOL', 500),
(3, 'GunShop', 'WEAPON_FLASHLIGHT', 60),
(4, 'BlackWeashop', 'WEAPON_FLASHLIGHT', 70),
(5, 'GunShop', 'WEAPON_MACHETE', 90),
(6, 'BlackWeashop', 'WEAPON_MACHETE', 110),
(7, 'GunShop', 'WEAPON_NIGHTSTICK', 150),
(8, 'BlackWeashop', 'WEAPON_NIGHTSTICK', 150),
(9, 'GunShop', 'WEAPON_BAT', 100),
(10, 'BlackWeashop', 'WEAPON_BAT', 100),
(11, 'GunShop', 'WEAPON_STUNGUN', 50),
(12, 'BlackWeashop', 'WEAPON_STUNGUN', 50),
(13, 'GunShop', 'WEAPON_MICROSMG', 1400),
(14, 'BlackWeashop', 'WEAPON_MICROSMG', 1700),
(15, 'GunShop', 'WEAPON_PUMPSHOTGUN', 3400),
(16, 'BlackWeashop', 'WEAPON_PUMPSHOTGUN', 3500),
(17, 'GunShop', 'WEAPON_ASSAULTRIFLE', 10000),
(18, 'BlackWeashop', 'WEAPON_ASSAULTRIFLE', 11000),
(19, 'GunShop', 'WEAPON_SPECIALCARBINE', 15000),
(20, 'BlackWeashop', 'WEAPON_SPECIALCARBINE', 16500),
(21, 'GunShop', 'WEAPON_SNIPERRIFLE', 22000),
(22, 'BlackWeashop', 'WEAPON_SNIPERRIFLE', 24000),
(23, 'GunShop', 'WEAPON_FIREWORK', 18000),
(24, 'BlackWeashop', 'WEAPON_FIREWORK', 20000),
(25, 'GunShop', 'WEAPON_GRENADE', 500),
(26, 'BlackWeashop', 'WEAPON_GRENADE', 650),
(27, 'GunShop', 'WEAPON_BZGAS', 200),
(28, 'BlackWeashop', 'WEAPON_BZGAS', 350),
(29, 'GunShop', 'WEAPON_FIREEXTINGUISHER', 100),
(30, 'BlackWeashop', 'WEAPON_FIREEXTINGUISHER', 100),
(31, 'GunShop', 'WEAPON_BALL', 50),
(32, 'BlackWeashop', 'WEAPON_BALL', 50),
(33, 'GunShop', 'WEAPON_SMOKEGRENADE', 100),
(34, 'BlackWeashop', 'WEAPON_SMOKEGRENADE', 100),
(35, 'BlackWeashop', 'WEAPON_APPISTOL', 1100),
(36, 'BlackWeashop', 'WEAPON_CARBINERIFLE', 12000),
(37, 'BlackWeashop', 'WEAPON_HEAVYSNIPER', 30000),
(38, 'BlackWeashop', 'WEAPON_MINIGUN', 45000),
(39, 'BlackWeashop', 'WEAPON_RAILGUN', 50000),
(40, 'BlackWeashop', 'WEAPON_STICKYBOMB', 500);

-- --------------------------------------------------------

--
-- Table structure for table `whitelist`
--

CREATE TABLE `whitelist` (
  `identifier` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `whitelist`
--

INSERT INTO `whitelist` (`identifier`) VALUES
('steam:11000010db3bd17'),
('steam:11000010dc30d43'),
('steam:11000011b02e87e');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addon_account`
--
ALTER TABLE `addon_account`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `addon_account_data`
--
ALTER TABLE `addon_account_data`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `addon_inventory`
--
ALTER TABLE `addon_inventory`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `addon_inventory_items`
--
ALTER TABLE `addon_inventory_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `billing`
--
ALTER TABLE `billing`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cardealer_vehicles`
--
ALTER TABLE `cardealer_vehicles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `characters`
--
ALTER TABLE `characters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `datastore`
--
ALTER TABLE `datastore`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `datastore_data`
--
ALTER TABLE `datastore_data`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_datastore_owner_name` (`owner`,`name`),
  ADD KEY `index_datastore_name` (`name`);

--
-- Indexes for table `fine_types`
--
ALTER TABLE `fine_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `impounded_vehicles`
--
ALTER TABLE `impounded_vehicles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `owner` (`owner`),
  ADD KEY `plate` (`plate`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `jail`
--
ALTER TABLE `jail`
  ADD PRIMARY KEY (`identifier`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `job_grades`
--
ALTER TABLE `job_grades`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `licenses`
--
ALTER TABLE `licenses`
  ADD PRIMARY KEY (`type`);

--
-- Indexes for table `owned_properties`
--
ALTER TABLE `owned_properties`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `owned_vehicles`
--
ALTER TABLE `owned_vehicles`
  ADD PRIMARY KEY (`plate`),
  ADD KEY `vehsowned` (`owner`);

--
-- Indexes for table `phone_app_chat`
--
ALTER TABLE `phone_app_chat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `phone_calls`
--
ALTER TABLE `phone_calls`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `phone_messages`
--
ALTER TABLE `phone_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `phone_users_contacts`
--
ALTER TABLE `phone_users_contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `properties`
--
ALTER TABLE `properties`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rented_vehicles`
--
ALTER TABLE `rented_vehicles`
  ADD PRIMARY KEY (`plate`);

--
-- Indexes for table `shops`
--
ALTER TABLE `shops`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `society_moneywash`
--
ALTER TABLE `society_moneywash`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `truck_inventory`
--
ALTER TABLE `truck_inventory`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `item` (`item`,`plate`);

--
-- Indexes for table `twitter_accounts`
--
ALTER TABLE `twitter_accounts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `twitter_likes`
--
ALTER TABLE `twitter_likes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_twitter_likes_twitter_accounts` (`authorId`),
  ADD KEY `FK_twitter_likes_twitter_tweets` (`tweetId`);

--
-- Indexes for table `twitter_tweets`
--
ALTER TABLE `twitter_tweets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_twitter_tweets_twitter_accounts` (`authorId`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`identifier`);

--
-- Indexes for table `user_accounts`
--
ALTER TABLE `user_accounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_contacts`
--
ALTER TABLE `user_contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_inventory`
--
ALTER TABLE `user_inventory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_licenses`
--
ALTER TABLE `user_licenses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vehicles`
--
ALTER TABLE `vehicles`
  ADD PRIMARY KEY (`model`);

--
-- Indexes for table `vehicle_categories`
--
ALTER TABLE `vehicle_categories`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `vehicle_sold`
--
ALTER TABLE `vehicle_sold`
  ADD PRIMARY KEY (`plate`);

--
-- Indexes for table `weashops`
--
ALTER TABLE `weashops`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `whitelist`
--
ALTER TABLE `whitelist`
  ADD PRIMARY KEY (`identifier`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `addon_account_data`
--
ALTER TABLE `addon_account_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `addon_inventory_items`
--
ALTER TABLE `addon_inventory_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `billing`
--
ALTER TABLE `billing`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cardealer_vehicles`
--
ALTER TABLE `cardealer_vehicles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `characters`
--
ALTER TABLE `characters`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `datastore_data`
--
ALTER TABLE `datastore_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `fine_types`
--
ALTER TABLE `fine_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `impounded_vehicles`
--
ALTER TABLE `impounded_vehicles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `job_grades`
--
ALTER TABLE `job_grades`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `owned_properties`
--
ALTER TABLE `owned_properties`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `phone_app_chat`
--
ALTER TABLE `phone_app_chat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `phone_calls`
--
ALTER TABLE `phone_calls`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=162;

--
-- AUTO_INCREMENT for table `phone_messages`
--
ALTER TABLE `phone_messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=116;

--
-- AUTO_INCREMENT for table `phone_users_contacts`
--
ALTER TABLE `phone_users_contacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `properties`
--
ALTER TABLE `properties`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT for table `shops`
--
ALTER TABLE `shops`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `society_moneywash`
--
ALTER TABLE `society_moneywash`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `truck_inventory`
--
ALTER TABLE `truck_inventory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `twitter_accounts`
--
ALTER TABLE `twitter_accounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `twitter_likes`
--
ALTER TABLE `twitter_likes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=137;

--
-- AUTO_INCREMENT for table `twitter_tweets`
--
ALTER TABLE `twitter_tweets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=170;

--
-- AUTO_INCREMENT for table `user_accounts`
--
ALTER TABLE `user_accounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `user_contacts`
--
ALTER TABLE `user_contacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_inventory`
--
ALTER TABLE `user_inventory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=140;

--
-- AUTO_INCREMENT for table `user_licenses`
--
ALTER TABLE `user_licenses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `weashops`
--
ALTER TABLE `weashops`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `twitter_likes`
--
ALTER TABLE `twitter_likes`
  ADD CONSTRAINT `FK_twitter_likes_twitter_accounts` FOREIGN KEY (`authorId`) REFERENCES `twitter_accounts` (`id`),
  ADD CONSTRAINT `FK_twitter_likes_twitter_tweets` FOREIGN KEY (`tweetId`) REFERENCES `twitter_tweets` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `twitter_tweets`
--
ALTER TABLE `twitter_tweets`
  ADD CONSTRAINT `FK_twitter_tweets_twitter_accounts` FOREIGN KEY (`authorId`) REFERENCES `twitter_accounts` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
