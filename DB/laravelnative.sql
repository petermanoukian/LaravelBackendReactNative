-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Oct 19, 2025 at 07:29 AM
-- Server version: 5.7.40
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravelnative`
--

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

DROP TABLE IF EXISTS `cache`;
CREATE TABLE IF NOT EXISTS `cache` (
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int(11) NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

DROP TABLE IF EXISTS `cache_locks`;
CREATE TABLE IF NOT EXISTS `cache_locks` (
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int(11) NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cats`
--

DROP TABLE IF EXISTS `cats`;
CREATE TABLE IF NOT EXISTS `cats` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(199) COLLATE utf8mb4_unicode_ci NOT NULL,
  `img` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `img2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `filer` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cats`
--

INSERT INTO `cats` (`id`, `name`, `img`, `img2`, `filer`, `created_at`, `updated_at`) VALUES
(1, 'VCat1', 'images/cat/img/Cat1-68e4d73537994.jpg', 'images/cat/img/thumb/Cat1-68e4d73537994.jpg', 'files/cat/Cat1-68e4d73537994.jpg', '2025-10-07 05:02:54', '2025-10-07 05:02:54'),
(2, 'BCat333', NULL, NULL, NULL, '2025-10-07 05:03:18', '2025-10-07 05:03:18'),
(3, 'Cat3', 'images/cat/img/Cat3-68e4d765ad9fa.jpg', 'images/cat/img/thumb/Cat3-68e4d765ad9fa.jpg', 'files/cat/Cat3-68e4d765ad9fa.jpg', '2025-10-07 05:03:36', '2025-10-07 05:03:36'),
(4, 'eCat4', 'images/cat/img/Cat4-68e4d783b3522.jpg', 'images/cat/img/thumb/Cat4-68e4d783b3522.jpg', 'files/cat/Cat4-68e4d783b3522.jpg', '2025-10-07 05:04:06', '2025-10-07 05:04:06'),
(5, 'XXCat5', 'images/cat/img/Cat5-68e4d7a40709c.gif', 'images/cat/img/thumb/Cat5-68e4d7a40709c.gif', 'files/cat/Cat5-68e4d7a40709c.gif', '2025-10-07 05:04:39', '2025-10-07 05:04:39'),
(6, 'dat13', 'images/cat/img/Cat13-68e4ebbea4f0f.jpg', 'images/cat/img/thumb/Cat13-68e4ebbea4f0f.jpg', 'files/cat/Cat13-68e4ebbea4f0f.jpg', '2025-10-07 06:30:23', '2025-10-07 06:30:23'),
(7, 'Rtt', 'images/cat/img/Rtt-68e4ec378ebd4.jpg', 'images/cat/img/thumb/Rtt-68e4ec378ebd4.jpg', NULL, '2025-10-07 06:32:26', '2025-10-07 06:32:26'),
(8, 'Rttt', NULL, NULL, NULL, '2025-10-07 06:32:38', '2025-10-07 06:32:38'),
(9, 'gghhTyyy', NULL, NULL, 'files/cat/Tyyy-68e4ec50293b4.jpg', '2025-10-07 06:32:48', '2025-10-07 06:32:48'),
(10, 'pdfer', 'images/cat/img/pdfer-68e4f0f8e1fc5.jpg', 'images/cat/img/thumb/pdfer-68e4f0f8e1fc5.jpg', 'files/cat/pdfer-68e4f0f8e1fc5.pdf', '2025-10-07 06:52:41', '2025-10-07 06:52:41'),
(11, 'Tÿuyuu', 'images/cat/img/Tÿuyuu-68e4f14a8ef45.gif', 'images/cat/img/thumb/Tÿuyuu-68e4f14a8ef45.gif', NULL, '2025-10-07 06:54:04', '2025-10-07 06:54:04'),
(12, 'yytytyt', NULL, NULL, NULL, '2025-10-07 06:54:54', '2025-10-07 06:54:54'),
(13, 'Monm4', 'images/cat/img/Monm4-68e4f8376c7c0.gif', 'images/cat/img/thumb/Monm4-68e4f8376c7c0.gif', 'files/cat/Monm4-68e4f8376c7c0.jpg', '2025-10-07 07:23:36', '2025-10-07 07:23:36'),
(14, 'fromweb1', 'images/cat/img/fromweb1-68e4f854b176e.jpg', 'images/cat/img/thumb/fromweb1-68e4f854b176e.jpg', 'files/cat/fromweb1-68e4f854b176e.pdf', '2025-10-07 07:24:04', '2025-10-07 07:24:04'),
(15, 'Mob34', NULL, NULL, NULL, '2025-10-07 07:24:17', '2025-10-07 07:24:17'),
(16, 'web45', NULL, NULL, NULL, '2025-10-07 07:24:28', '2025-10-07 07:24:28'),
(17, 'Mibt56', 'images/cat/img/Mibt56-68e4f8771bf29.gif', 'images/cat/img/thumb/Mibt56-68e4f8771bf29.gif', NULL, '2025-10-07 07:24:40', '2025-10-07 07:24:40'),
(18, 'Liana', 'images/cat/img/Liana-68e4f8ae0e7f2.jpg', 'images/cat/img/thumb/Liana-68e4f8ae0e7f2.jpg', 'files/cat/Liana-68e4f8ae0e7f2.jpg', '2025-10-07 07:25:38', '2025-10-07 07:25:38'),
(19, 'ytyytt', NULL, NULL, NULL, '2025-10-07 07:27:03', '2025-10-07 07:27:03'),
(20, 'Pageinat1', 'images/cat/img/Pageinat1-68e4fd272f89d.jpg', 'images/cat/img/thumb/Pageinat1-68e4fd272f89d.jpg', 'files/cat/Pageinat1-68e4fd272f89d.jpg', '2025-10-07 07:44:40', '2025-10-07 07:44:40'),
(21, 'Gggg', NULL, NULL, NULL, '2025-10-07 07:44:59', '2025-10-07 07:44:59'),
(22, 'Tttty', 'images/cat/img/Tttty-68e4fd57001f8.jpg', 'images/cat/img/thumb/Tttty-68e4fd57001f8.jpg', NULL, '2025-10-07 07:45:28', '2025-10-07 07:45:28'),
(23, 'Fgggg', NULL, NULL, 'files/cat/Fgggg-68e4fd6252481.jpg', '2025-10-07 07:45:38', '2025-10-07 07:45:38'),
(24, 'Fgggg45', 'images/cat/img/Fgggg45-68e4fd71246b1.jpg', 'images/cat/img/thumb/Fgggg45-68e4fd71246b1.jpg', 'files/cat/Fgggg45-68e4fd71246b1.jpg', '2025-10-07 07:45:58', '2025-10-07 07:45:58'),
(25, 'Marry', 'images/cat/img/Marry-68e4fde2f3618.jpg', 'images/cat/img/thumb/Marry-68e4fde2f3618.jpg', 'files/cat/Marry-68e4fde2f3618.jpg', '2025-10-07 07:47:51', '2025-10-07 07:47:51'),
(26, 'Anotjer', NULL, NULL, NULL, '2025-10-08 02:54:54', '2025-10-08 02:54:54'),
(27, 'Liana3', NULL, NULL, NULL, '2025-10-08 02:55:06', '2025-10-08 02:55:06'),
(28, 'Tgfff', 'images/cat/img/Tgfff-68e6111697d26.jpg', 'images/cat/img/thumb/Tgfff-68e6111697d26.jpg', 'files/cat/Tgfff-68e6111697d26.jpg', '2025-10-08 03:22:02', '2025-10-08 03:22:02'),
(29, 'Rrrŕ', NULL, NULL, NULL, '2025-10-08 03:22:10', '2025-10-08 03:22:10'),
(30, 'cat1', 'images/cat/img/Fffftt-68e6112c0be45.jpg', 'images/cat/img/Fffftt-68e6112c0be45.jpg', NULL, '2025-10-08 03:22:21', '2025-10-09 08:32:35'),
(31, 'Tggtg', 'images/cat/img/img/Tggtg-68eba68d64999.jpg', 'images/cat/img/img/thumb/Tggtg-68eba68d64999.jpg', 'files/cat/Tggtg-68e790a500121.jpg', '2025-10-08 03:22:28', '2025-10-12 09:01:05'),
(32, 'Rttt56', 'images/cat/img/img/Rttt56-68e790937a6dc.jpg', 'images/cat/img/img/thumb/Rttt56-68e790937a6dc.jpg', 'files/cat/Rttt56-68e790937a6dc.jpg', '2025-10-08 03:22:36', '2025-10-09 06:38:16'),
(34, 'Brrr', 'images/cat/img/Brrr-68eba64b28773.jpg', 'images/cat/img/thumb/Brrr-68eba64b28773.jpg', NULL, '2025-10-12 08:59:59', '2025-10-12 08:59:59'),
(35, 'Tttt', 'images/cat/img/Tttt-68eba66fece16.jpg', 'images/cat/img/thumb/Tttt-68eba66fece16.jpg', NULL, '2025-10-12 09:00:35', '2025-10-12 09:00:35'),
(36, '566', 'images/cat/img/566-68eba78e6123b.jpg', 'images/cat/img/thumb/566-68eba78e6123b.jpg', NULL, '2025-10-12 09:05:22', '2025-10-12 09:05:22'),
(37, 'New5', 'images/cat/large/New5-68eba8f646163.jpg', 'images/cat/thumbnail/New5-68eba8f646163.jpg', NULL, '2025-10-12 09:11:22', '2025-10-12 09:11:22'),
(38, 'Ttt45', 'images/cat/large/Ttt45-68eba94aea2c5.jpg', 'images/cat/thumbnail/Ttt45-68eba94aea2c5.jpg', 'files/cat/Ttt45-68eba94aea2c5.jpg', '2025-10-12 09:12:46', '2025-10-12 09:12:46'),
(39, '455', 'images/cat/large/455-68ebaa02457fc.jpg', NULL, 'files/cat/455-68ebaa02457fc.jpg', '2025-10-12 09:15:50', '2025-10-12 09:15:50'),
(40, 'Tyyy', 'images/cat/img/large/Tyyy-68ebaa59bf5c4.jpg', 'images/cat/img/thumb/Tyyy-68ebaa59bf5c4.jpg', 'files/cat/Tyyy-68ebaa13488b0.jpg', '2025-10-12 09:16:07', '2025-10-12 09:17:18'),
(41, 'Ty42', 'images/cat/large/Ty42-68ebac7b0f728.jpg', 'images/cat/thumb/Ty42-68ebac7b0f728.jpg', 'files/cat/Ty42-68ebaa40914c7.jpg', '2025-10-12 09:16:52', '2025-10-12 09:26:22'),
(42, 'Many', 'images/cat/large/Tyyy55-68ebac48a45a5.jpg', 'images/cat/large/Tyyy55-68ebac48a45a5.jpg', 'files/cat/Tyyy55-68ebac48a45a5.jpg', '2025-10-12 09:25:32', '2025-10-18 12:24:29');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
CREATE TABLE IF NOT EXISTS `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `queue` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_index` (`queue`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

DROP TABLE IF EXISTS `job_batches`;
CREATE TABLE IF NOT EXISTS `job_batches` (
  `id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2025_10_03_102452_create_personal_access_tokens_table', 2),
(5, '2025_10_09_125627_create_subcats_table', 3),
(6, '2025_10_12_094256_create_prods_table', 4);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
CREATE TABLE IF NOT EXISTS `password_reset_tokens` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
CREATE TABLE IF NOT EXISTS `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`),
  KEY `personal_access_tokens_expires_at_index` (`expires_at`)
) ENGINE=MyISAM AUTO_INCREMENT=100 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(62, 'App\\Models\\User', 1, 'auth_token', '50ef5128a5ffec643dac0c3acb9738fec8037202f1d8ac4819a84f7049a2a026', '[\"*\"]', '2025-10-14 04:59:04', '2025-10-14 06:54:46', '2025-10-07 06:54:46', '2025-10-14 04:59:04'),
(99, 'App\\Models\\User', 1, 'mobile', 'c5ece403d54a221b7879ad2698838693b9497d9bd484cc02f154994d69f4f411', '[\"*\"]', '2025-10-19 03:06:21', NULL, '2025-10-19 03:02:56', '2025-10-19 03:06:21'),
(98, 'App\\Models\\User', 1, 'web', 'a53c425647231a130394b509b0aaa7bc6d5069ee723564aa0f0b344bb70db74a', '[\"*\"]', '2025-10-19 02:55:16', NULL, '2025-10-19 02:55:13', '2025-10-19 02:55:16');

-- --------------------------------------------------------

--
-- Table structure for table `prods`
--

DROP TABLE IF EXISTS `prods`;
CREATE TABLE IF NOT EXISTS `prods` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `catid` bigint(20) UNSIGNED NOT NULL,
  `subcatid` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `coder` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `des` text COLLATE utf8mb4_unicode_ci,
  `dess` longtext COLLATE utf8mb4_unicode_ci,
  `img` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `img2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `filer` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vis` enum('yes','no') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `prods_name_catid_subcatid_unique` (`name`,`catid`,`subcatid`),
  UNIQUE KEY `prods_coder_unique` (`coder`),
  KEY `prods_catid_foreign` (`catid`),
  KEY `prods_subcatid_foreign` (`subcatid`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `prods`
--

INSERT INTO `prods` (`id`, `catid`, `subcatid`, `name`, `coder`, `des`, `dess`, `img`, `img2`, `filer`, `vis`, `created_at`, `updated_at`) VALUES
(1, 36, 19, 'LAST', 'Yy', NULL, 'Ttt', 'images/prod/large/555-68ee0c36b7725.jpg', 'images/prod/thumb/555-68ee0c36b7725.jpg', 'files/prod/555-68ee0c36b7725.jpg', 'yes', '2025-10-14 04:39:22', '2025-10-14 04:39:22'),
(2, 30, 3, 'Prod1', 'Code1', NULL, NULL, 'images/prod/large/Prod1-68f242accc73f.jpg', 'images/prod/thumb/Prod1-68f242accc73f.jpg', 'files/prod/Prod1-68f242accc73f.jpg', 'yes', '2025-10-17 09:20:46', '2025-10-17 09:20:46'),
(3, 30, 5, 'Prod1', 'Code3', NULL, 'Gg', 'images/prod/large/Prod1-68f36379c5899.jpg', 'images/prod/thumb/Prod1-68f36379c5899.jpg', 'files/prod/Prod1-68f36379c5899.jpg', 'yes', '2025-10-18 05:53:00', '2025-10-18 05:53:00'),
(4, 39, 16, 'Prid33', '555', NULL, 'Hĥh', 'images/prod/large/Prid33-68f3678e78d3f.jpg', 'images/prod/thumb/Prid33-68f3678e78d3f.jpg', NULL, 'no', '2025-10-18 06:10:25', '2025-10-18 06:10:25'),
(5, 41, 15, 'Prod5', 'Rrŕr', NULL, 'Hhĥ', 'images/prod/large/Prod5-68f367af60994.jpg', 'images/prod/thumb/Prod5-68f367af60994.jpg', NULL, 'yes', '2025-10-18 06:10:56', '2025-10-18 06:10:56'),
(6, 30, 5, 'Prod45', 'Tt', NULL, 'Hhh', NULL, NULL, 'files/prod/Prod45-68f367efec725.jpg', 'yes', '2025-10-18 06:11:59', '2025-10-18 06:11:59'),
(7, 41, 15, 'Tttt', 'Code2', NULL, NULL, NULL, NULL, NULL, 'yes', '2025-10-18 06:13:28', '2025-10-18 06:13:28'),
(8, 2, 8, 'Tyyy', 'Dfff', NULL, NULL, 'images/prod/large/Tyyy-68f36868921a6.jpg', 'images/prod/thumb/Tyyy-68f36868921a6.jpg', NULL, 'yes', '2025-10-18 06:14:02', '2025-10-18 06:14:02'),
(9, 36, 19, 'Tþttthhhh', 'Tþ', NULL, NULL, NULL, NULL, NULL, 'yes', '2025-10-18 06:15:04', '2025-10-18 06:15:04'),
(10, 39, 16, 'Yuuu66', '4rrr', NULL, NULL, NULL, NULL, NULL, 'yes', '2025-10-18 06:15:44', '2025-10-18 06:15:44'),
(11, 37, 23, 'Fffff', 'Dddd', NULL, NULL, NULL, NULL, NULL, 'yes', '2025-10-18 06:16:41', '2025-10-18 06:16:41'),
(12, 26, 24, 'Tttt', 'Rrrr555', NULL, 'Gggg', 'images/prod/large/Tttt-68f36950a3542.jpg', 'images/prod/thumb/Tttt-68f36950a3542.jpg', 'files/prod/Tttt-68f36950a3542.jpg', 'yes', '2025-10-18 06:17:55', '2025-10-18 06:17:55'),
(13, 37, 22, 'Ttttt', 'Fffffyyy', NULL, NULL, 'images/prod/large/Ttttt-68f3696b5ecb2.jpg', 'images/prod/thumb/Ttttt-68f3696b5ecb2.jpg', 'files/prod/Ttttt-68f3696b5ecb2.jpg', 'yes', '2025-10-18 06:18:22', '2025-10-18 06:18:22'),
(14, 30, 5, 'Rrrt', 'Ttyyyyy', NULL, NULL, NULL, NULL, NULL, 'yes', '2025-10-18 07:18:27', '2025-10-18 07:18:27'),
(15, 27, 28, 'Gggg', 'Tttt', NULL, NULL, 'images/prod/large/Gggg-68f377a690fc9.jpg', 'images/prod/thumb/Gggg-68f377a690fc9.jpg', 'files/prod/Gggg-68f377a690fc9.jpg', 'yes', '2025-10-18 07:19:05', '2025-10-18 07:19:05'),
(16, 6, 6, 'Tttttg', 'Rtttt', NULL, NULL, 'images/prod/large/Tttttg-68f377d003f6f.jpg', 'images/prod/thumb/Tttttg-68f377d003f6f.jpg', 'files/prod/Tttttg-68f377d003f6f.jpg', 'yes', '2025-10-18 07:19:46', '2025-10-18 07:19:46'),
(17, 42, 37, 'Ffff', 'Ggggg', NULL, NULL, NULL, NULL, NULL, 'yes', '2025-10-18 07:29:52', '2025-10-18 07:29:52'),
(18, 42, 35, 'Ggʻg', 'Ffff', NULL, NULL, NULL, NULL, NULL, 'yes', '2025-10-18 07:30:09', '2025-10-18 07:30:09'),
(19, 41, 14, 'Gggg', 'Cfff', NULL, NULL, NULL, NULL, NULL, 'yes', '2025-10-18 07:30:25', '2025-10-18 07:30:25'),
(20, 40, 36, 'Ggg', 'Hghh', NULL, NULL, NULL, NULL, NULL, 'yes', '2025-10-18 07:30:38', '2025-10-18 07:30:38'),
(21, 42, 37, 'new1', 'gfgfg', NULL, NULL, NULL, NULL, NULL, 'yes', '2025-10-18 09:45:27', '2025-10-18 09:45:27'),
(22, 42, 37, 'new2', 'fggf', NULL, NULL, NULL, NULL, NULL, 'yes', '2025-10-18 09:45:52', '2025-10-18 09:45:52'),
(23, 40, 36, 'Ttþ', 'Fffff', NULL, NULL, NULL, NULL, NULL, 'yes', '2025-10-18 12:24:08', '2025-10-18 12:24:08'),
(24, 42, 37, 'Hggh', 'Ggʻ', NULL, NULL, NULL, NULL, NULL, 'yes', '2025-10-18 12:25:30', '2025-10-18 12:25:30'),
(25, 42, 37, 'Gggg', 'Rrr', NULL, NULL, NULL, NULL, NULL, 'yes', '2025-10-18 12:25:42', '2025-10-18 12:25:42'),
(26, 42, 35, 'Yyy', 'Ttttyyy', NULL, NULL, NULL, NULL, NULL, 'yes', '2025-10-18 12:26:01', '2025-10-18 12:26:01'),
(27, 42, 35, 'Ggʻggg', 'Gggg', NULL, NULL, NULL, NULL, NULL, 'yes', '2025-10-18 12:26:19', '2025-10-18 12:26:19'),
(28, 42, 35, 'Ttt', 'Ttt', NULL, NULL, NULL, NULL, NULL, 'yes', '2025-10-18 12:26:29', '2025-10-18 12:26:29'),
(29, 42, 37, 'Yyy', '455', NULL, NULL, NULL, NULL, NULL, 'yes', '2025-10-18 12:54:50', '2025-10-18 12:54:50'),
(30, 42, 37, '555555', '4552', NULL, NULL, NULL, NULL, NULL, 'yes', '2025-10-18 12:55:07', '2025-10-18 12:55:07'),
(31, 42, 37, 'Yyy33', '56611', NULL, NULL, NULL, NULL, NULL, 'yes', '2025-10-18 12:55:19', '2025-10-18 12:55:19'),
(32, 42, 37, 'Many2', '34', NULL, NULL, NULL, NULL, NULL, 'yes', '2025-10-18 12:55:33', '2025-10-18 12:55:33'),
(33, 42, 37, '5565ttt', '4rrrr', NULL, NULL, 'images/prod/large/5565ttt-68f3c6a525305.jpg', 'images/prod/thumb/5565ttt-68f3c6a525305.jpg', NULL, 'yes', '2025-10-18 12:56:07', '2025-10-18 12:56:07'),
(34, 42, 37, 'Ttttff', 'Decide', NULL, NULL, NULL, NULL, NULL, 'yes', '2025-10-18 12:56:26', '2025-10-18 12:56:26'),
(35, 42, 37, 'Ttt', '45fff', NULL, NULL, NULL, NULL, NULL, 'yes', '2025-10-18 12:57:03', '2025-10-18 12:57:03'),
(36, 42, 35, 'Fggg', 'Fffg', NULL, NULL, NULL, NULL, NULL, 'yes', '2025-10-18 12:57:18', '2025-10-18 12:57:18'),
(37, 42, 37, 'Ggggsddd', 'Cofe', NULL, NULL, NULL, NULL, NULL, 'yes', '2025-10-18 12:57:33', '2025-10-18 12:57:33'),
(38, 42, 37, 'Manyptrid2', 'Prd2', NULL, NULL, NULL, NULL, NULL, 'yes', '2025-10-18 12:57:46', '2025-10-18 12:57:46'),
(39, 42, 37, 'Tytfff', '445rr', NULL, NULL, NULL, NULL, NULL, 'yes', '2025-10-18 12:59:11', '2025-10-18 12:59:11'),
(40, 42, 37, 'Tyÿ', 'Ttttþt', NULL, NULL, NULL, NULL, NULL, 'yes', '2025-10-18 12:59:23', '2025-10-18 12:59:23'),
(41, 42, 37, 'Gþtttt', 'Gggggf', NULL, NULL, NULL, NULL, NULL, 'yes', '2025-10-18 12:59:46', '2025-10-18 12:59:46'),
(42, 42, 37, '55⁵555t', 'Rrrrrrtt', NULL, NULL, NULL, NULL, NULL, 'yes', '2025-10-18 13:02:16', '2025-10-18 13:02:16'),
(43, 42, 37, 'Ttþtt', 'Ffffffgf', NULL, NULL, NULL, NULL, NULL, 'yes', '2025-10-18 13:02:46', '2025-10-18 13:02:46'),
(44, 42, 37, 'Ggʻggg', 'Rrrŕrrr', NULL, NULL, NULL, NULL, NULL, 'yes', '2025-10-18 13:02:59', '2025-10-18 13:02:59'),
(45, 42, 37, 'Ty67', '56t', NULL, NULL, NULL, NULL, NULL, 'yes', '2025-10-18 13:03:09', '2025-10-18 13:03:09'),
(46, 42, 37, 'Tyyyy', '666yytf', NULL, NULL, NULL, NULL, NULL, 'yes', '2025-10-18 13:03:35', '2025-10-18 13:03:35'),
(47, 42, 37, 'Tyyyygg', 'Ggʻggggg', NULL, NULL, NULL, NULL, NULL, 'yes', '2025-10-18 13:03:46', '2025-10-18 13:03:46');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
CREATE TABLE IF NOT EXISTS `sessions` (
  `id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sessions_user_id_index` (`user_id`),
  KEY `sessions_last_activity_index` (`last_activity`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('uHG3x8XL91Ri8k09oHVu3XGFFWtnwDVp4WtwsO9Z', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQ3NEbUdWT3RydGR1M2g4NFNrYjJOMWZtSmE0MTc0SFdwUVROUnF4UCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1759485283),
('ZPBaXN9YzMeKmXbpBPE7zlwy8WGajClQexKU2Dxl', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTDF6ejYyTmNnelI5b3VkcFJOV0VRajgwNW05WUEzRVdhVTRpNmQ2VyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1759485280),
('gAacbKVIXtcl2hWqftnvVa2nk3XvGkV75nomTSfY', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:143.0) Gecko/20100101 Firefox/143.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMUd0OVZYU3BWR0JuTVN4RXRNWEdLNzNsUmJMRVY1ZHFibFBCa0ZSMSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1759505913),
('naoEtfilpbUlwXE5X4uQbyBOi1ewOnxvjXtXnJi0', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoibnhVZVAzcGF2WjFlUXZWTVpxMFNJcXo1bzZ3Z3J2TEVUamYzalFQZyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1759505921),
('bwVECG5Ruk5Z08Qu5FQkmKF4T8t6BO2PopNoTLbz', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZ01oZDY2ZkdlNGV4SjV5cWZqUGhaMmw2bUp3Y2ZoNVAwd2J5WTVtRyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1759505927),
('npe5UPvEN9FrdDOamd6SYGSWoOFjm849BdEuaWFm', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:143.0) Gecko/20100101 Firefox/143.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSW9qZG9HMmp4Y1VkQ0gzc2FTTmdCMFJuVG5jM1dDNktwTUJWcm1NbSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1759505942),
('z42fDk1zbvN79gIGQFM3abhvPUMAxqLQTvWPIHe3', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:143.0) Gecko/20100101 Firefox/143.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoieEtPeU9TZ3pQTmdKSGU5eE1JSTRrYWhzU0wybWlQQUxqYWppT2JCMiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1759506208),
('wB6Z4jxc53VHO6WdB8gwGWJFwb0NlpV1mQKEX1yu', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:143.0) Gecko/20100101 Firefox/143.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZEI2bVdTaUhQZjBram5zYTJIUDc1dFBIWGtRTWhFVE5nRVA1ZmZ0MCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1759506211),
('xhGK5LdG8E130XLfXGy0fdNzXcqMlDIjXE7upsuB', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:143.0) Gecko/20100101 Firefox/143.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZTJKamlWbnJkQlp4U0FKWlFmcndNTXJSQ0JxT2lkOW5OODRtdDhjOCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1759562815),
('rYdoUVhbPCTErX3AnLK5R2RaVRa6AGSEb64VBO4r', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:143.0) Gecko/20100101 Firefox/143.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiOGVBTmswWkdmQ25BV2I0a3kwMHJlMHlZa21WQ2VtYUhkZzJxOXowYyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1759562818),
('CGxMTIlc8p4P7JuaQC87kILVaTny56bpwfDN4kKO', NULL, '192.168.11.50', 'Avast Antivirus', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSEY0N05RZ0xpQlpubUtTNExWajZtTDlyaXhqeWZOWnE1dUF1YzlWTCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjU6Imh0dHA6Ly8xOTIuMTY4LjExLjUwOjgwMDAiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1759569204),
('bFuSMYtxJXjYEUfadcOO3aWAEltsc0UfZHgQWpxK', NULL, '192.168.11.50', '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRUJTOERBaWN6QXppNGhTU002b1hwclVCRVdxRmdRR2NzUEs3aWFqaiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjU6Imh0dHA6Ly8xOTIuMTY4LjExLjUwOjgwMDAiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1759569213),
('bVgzAJy66M14ssVQHyNGkY2xDhvhFfj9QqC5Hn1I', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:143.0) Gecko/20100101 Firefox/143.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiY0xubHRjR255bEhXalVvMFNnMUZSampsTEoyUjQ4YmttY2c1amdSayI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1759647002),
('NNmIDSwC3CONkgZfaVGiyKx2VzB6WwfeXdJYwROw', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:143.0) Gecko/20100101 Firefox/143.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWlpLUXl2WWNiTE85ZFMxMTZHUXBEUDFRamVwalJSems0OFBacmsxbyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1759647032),
('E1EsogbVbg5DTyixXZpvD9JnpFmtZLPU5E6kycT0', NULL, '192.168.11.50', 'Avast Antivirus', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQVM0QURjRkU5amZacklzWkhVOXZZNlhGUjNJZUlDS0hsYno4b0IwOCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjU6Imh0dHA6Ly8xOTIuMTY4LjExLjUwOjgwMDAiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1759656132),
('KwaYSbce8lamEiy5bp0qOhbphHGrAWxnqwHqnZpp', NULL, '192.168.11.50', '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSjhSdGk5aGF6c3NpbEZvV0tMZ1dWRVQ2dmU4ODJLYU1rSFlXOXhMMiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjU6Imh0dHA6Ly8xOTIuMTY4LjExLjUwOjgwMDAiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1759656140),
('EvwgPMdzxh7ZXvmp1X9koracyXIHCDFnhflgeIqa', NULL, '192.168.11.50', 'Avast Antivirus', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiczlrTkVhUVk0SjJUd2xJTzlFcng5ajljaW9QRVNhaDRDNmx0RDI2YiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjU6Imh0dHA6Ly8xOTIuMTY4LjExLjUwOjgwMDAiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1759742702),
('qVHDq3GPXjaTV5BoXnE5kYCZsW9OuL0QWyxIBk5S', NULL, '192.168.11.50', '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQzdZUXQycTM5SGwyclQ3aGNOdDRTcWZYckY0V2pmZVNkQ0dza3hVSCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjU6Imh0dHA6Ly8xOTIuMTY4LjExLjUwOjgwMDAiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1759742716),
('C0ZfDzVsHwf7BF4axj5ojKCXLr2bUkd4195Df4VT', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:143.0) Gecko/20100101 Firefox/143.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidGRJN0xUY2F0eFVzZ0EzMDk5eWZ6eHU5TzhhVTRXZXVPNmJiRjdJUiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1759748009),
('40C0YJcJaTG2g2cstp7dWz0mHpLXEy2mBVX77pQq', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:143.0) Gecko/20100101 Firefox/143.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMlhpWXR6QU1HdzNHUThRWWYzSU5XWElLUmFPQUR2WWl3Sk1FMXk1ZSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1759748014),
('dNpUhyPDBOo5haioEYRPFO5BB8MQ9dMwPN9Go65X', NULL, '192.168.11.50', 'Avast Antivirus', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidG0yTjVOMEdyZEVJY0ZOeTQwa3p2ejBySnUyMEFldzBHREFtZWgyTSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjU6Imh0dHA6Ly8xOTIuMTY4LjExLjUwOjgwMDAiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1759829280),
('YtgDfZpDzjMgFiStJzXiN2T77CYuCeJx3FB3oHp1', NULL, '192.168.11.50', '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRHVOTXlwM0UyYXdlOE5ZSEdLbG9OZEVaUUxyeFVyeVBITmQ5UDRMUyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjU6Imh0dHA6Ly8xOTIuMTY4LjExLjUwOjgwMDAiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1759829295),
('tjyjAsuix2fsUZO2nQZMHFSYYIjb8m7nL1rIAaNR', NULL, '192.168.11.50', 'Avast Antivirus', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMkVOZDJmVnlzZjkwb00xUmhONXFBN0FsRGJSM2Mya2hSdkJuaDNPcSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjU6Imh0dHA6Ly8xOTIuMTY4LjExLjUwOjgwMDAiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1759915925),
('7lV8IL8pUpUyFac20uggCl4w6FAKIil5YcUVMIV3', NULL, '192.168.11.50', '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNnExNzZNZlZza3NDdkI5M2hJaFhicHM5aWJ4Qk9jeEVRVTcwZXB4ZyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjU6Imh0dHA6Ly8xOTIuMTY4LjExLjUwOjgwMDAiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1759915938),
('zgGetcGMzwMwFaiUMyKbeGuJB70XBOmVDaV5QQ58', NULL, '192.168.11.50', 'Avast Antivirus', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiT3F4QVlJVDFwMHVvRU9kb2VFeUZQNERSemlMRkFKZnhzSGtHdXBIbCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjU6Imh0dHA6Ly8xOTIuMTY4LjExLjUwOjgwMDAiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1760002608),
('AoocEIttDshwWJNv6dfgh9ZWq2JLHWgDH5PcVWHN', NULL, '192.168.11.50', '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidnZDaTNNS1FQR3ZzbkppTDgzcm5Md016cm9VUzlMdDBnSnZmank4VSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjU6Imh0dHA6Ly8xOTIuMTY4LjExLjUwOjgwMDAiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1760002622),
('bM8RYqR7n78pCVaZmdg7nT80nTCa6de2y7lowDef', NULL, '192.168.11.50', 'Avast Antivirus', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoienlCc042cEdvV0g3cGoxekhOUkFyTFVRaHhmeVJENEFNbnBSaHRocyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjU6Imh0dHA6Ly8xOTIuMTY4LjExLjUwOjgwMDAiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1760002761),
('HIDnD0ruWgKRtknXpeUy7LmEUu5cle3dWIHYo23O', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:143.0) Gecko/20100101 Firefox/143.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSG1JanV0MmkwbmFSbnNSSDBGeHRSSG84ZDBtdWs2MWpaNGQ1U2RpRiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1760077325),
('mJ5hZiFta2Vks7ByAkXJuGvBIlKnKGs20ADJpwTk', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:143.0) Gecko/20100101 Firefox/143.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNUh2cWVTTHE5eENXSmw1QTZTMUZhRnJONjlVTmphcXZ1cERhc3F2MCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1760077355),
('Xk8wunDNh9JCQ1ckezi2DA7QZK7zT94oOdCfHT4D', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:143.0) Gecko/20100101 Firefox/143.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoibUFETzlHb3J1aFlSV01JcHNRRERuTUFVWU5HN0hkWWhOaDRlVUQxcSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1760077429),
('raa2U8H4R6r2JuIMo2MN5dLTQl4jYKPAF8JBnTEW', NULL, '192.168.11.50', 'Avast Antivirus', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVG1kMWVVb2VyeVAwNFdoalc3YmRtREw2eERZQkJQRkNoa29SZXoxdiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjU6Imh0dHA6Ly8xOTIuMTY4LjExLjUwOjgwMDAiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1760089289),
('e7hRcsU5EmFklU19DZyL85kU5T8ft2AR9Cs4IlSt', NULL, '192.168.11.50', '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiU3VKUHFReW40Rmo1c3RQVmkzeXVwblJ5VjhwOUxVQjRRWEYySXd1TiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjU6Imh0dHA6Ly8xOTIuMTY4LjExLjUwOjgwMDAiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1760089303),
('U7Zje6TgJp6LUubFpEF5IKzaCSWEXejzzJIYZHWJ', NULL, '192.168.11.50', 'Avast Antivirus', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiYUlQSGxHTUw2NTliUFF6YmF6aDJ1OGVPUTM0ZGh0V2tIbjhLRmEybSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjU6Imh0dHA6Ly8xOTIuMTY4LjExLjUwOjgwMDAiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1760176286),
('5elrkVmczoB2mzBT2Xk9IWJnK1STxxVjoQJ8VKRx', NULL, '192.168.11.50', '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWEk2SjNaMmJ2WXAyamZNYkZ0QmZOR2J3Mkc5QUNFSzBwZDE2UVhtMSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjU6Imh0dHA6Ly8xOTIuMTY4LjExLjUwOjgwMDAiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1760176300),
('h9TU904S6SySzzRVA4h6nf0Zm23i7IWRKXiKeqn4', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:143.0) Gecko/20100101 Firefox/143.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiS2xOTzNBNUdKcmdwT1JrYkQxaWpRZ0NIN1k5b2h0OFdVMjA0Znp6SSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1760203386),
('gz6qkgPBmvTW6LawEHBB4VAJsd6Ich0zzNNui43V', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:143.0) Gecko/20100101 Firefox/143.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiOEdTYWZpRDdnczRmQkROVk9yN01YSHd5NWM5dW1JalNDcUc2eXFYYSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1760203443),
('XEWoHUDYtY2f5IzNdiVW2ftrpjYAVIR2Trjwxgjs', NULL, '192.168.11.50', 'Avast Antivirus', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiM016M3B3UkU4R3ZHSVBkcmZwY1hHR3ZFeXlNQzJVSm10NW5wYVdBaCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjU6Imh0dHA6Ly8xOTIuMTY4LjExLjUwOjgwMDAiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1760263010),
('1Dx3HjVrji8153r45VuGqGSPisxowyGrDGVqgQUp', NULL, '192.168.11.50', '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoib3lVU3JVZ2gyYjVEZnpMQ3dPSHI5NVFVbkFNMWN5ZUxMVXd3S1ZLeCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjU6Imh0dHA6Ly8xOTIuMTY4LjExLjUwOjgwMDAiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1760263023),
('lApYVCDEr5PxxeaaO7MyLHWG5YKJJl3mcjDrWVzv', NULL, '192.168.11.50', 'Avast Antivirus', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVGJRYURkdEhvQU94V0R6dktmTVR0Q2lEUm15QXNSa1M3Nk5JbTdqcSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjU6Imh0dHA6Ly8xOTIuMTY4LjExLjUwOjgwMDAiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1760349867),
('NEktMdkvR97iSdOxvvxlqV5GycTcP8NPpTxvPGFX', NULL, '192.168.11.50', '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoieGFhaE5VMzdMZ0N4VG02bDN2bENaU3IyRXd3aXhGYllWTURZVDM0dCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjU6Imh0dHA6Ly8xOTIuMTY4LjExLjUwOjgwMDAiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1760349881),
('imhz5V75EY9X21bxapzLobLP4juMigDN7OTceKWg', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:143.0) Gecko/20100101 Firefox/143.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoieDN2c3RFOHJZZGM3cTRJQTF5SGZUaXVuM0hIN2RzNWdkc3FnZjgwMCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1760361737),
('EhzixuEAJF8SmqOZtVg05tDafBEs4RmgVyCL4QW8', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:143.0) Gecko/20100101 Firefox/143.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiaUVMbHIxZ1VLaDF2OUF0SXNtUWNiTktRUGI5NTJ3dElWUFo3bjgySyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1760361741),
('85o777fKCXB2IHxzwcUcDQjuYaJ99G7GPIluujwg', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:143.0) Gecko/20100101 Firefox/143.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTHh0YkFPQndUaTV6ZlVwSmVqRXEyeE81WExzNkdnRUZmRE8ySkVidyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1760421667),
('PecmhG7bJSbc4eTgoLwkM9paI2RCDg5aUJNJmVfA', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:143.0) Gecko/20100101 Firefox/143.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWnA5RlZSN2NNWjFZRkRtcTVhcGhNQldJc0RFcFNlOGY5ZHE3c2U3ciI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1760421672),
('Kd2yjAyEELXsm50160rqqArJ28t9wufpexXFq9Rw', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiV0RsdVZOTEM2MGhkTWpWWXN3cm13NDk4anpnUmdPVlA0eGk0aVNYWiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1760621039),
('kr63ihkB5wtuTLPTvXTzhxrDHzqOQXdus1ANnIXo', NULL, '192.168.11.50', 'Avast Antivirus', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVmw0YnF0ZEdnVUFSS1pZYkVKbHVoTEtYbjhiU1BRSzNoYkFWS2NBTyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjU6Imh0dHA6Ly8xOTIuMTY4LjExLjUwOjgwMDAiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1760783221),
('z9VHPqqi2JjEm1ficD3wlLsHozNQsVidA5UQk6Nu', NULL, '192.168.11.50', '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiOXFDNWV5ZVZGbzI0ZlhLZU5xTmV3MUFKaDFnTTZZRWYwVk90TkJLTiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjU6Imh0dHA6Ly8xOTIuMTY4LjExLjUwOjgwMDAiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1760783236);

-- --------------------------------------------------------

--
-- Table structure for table `subcats`
--

DROP TABLE IF EXISTS `subcats`;
CREATE TABLE IF NOT EXISTS `subcats` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `catid` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `subcats_catid_name_unique` (`catid`,`name`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subcats`
--

INSERT INTO `subcats` (`id`, `catid`, `name`, `created_at`, `updated_at`) VALUES
(3, 30, 'sub1', '2025-10-10 08:28:02', '2025-10-10 08:28:02'),
(4, 31, 'Sub1', '2025-10-10 08:30:46', '2025-10-10 08:30:46'),
(5, 30, 'Sub12', '2025-10-10 08:32:37', '2025-10-10 08:32:37'),
(6, 6, 'Rrrr', '2025-10-10 08:32:47', '2025-10-10 08:32:47'),
(8, 2, 'New1', '2025-10-10 09:04:23', '2025-10-10 09:04:23'),
(9, 32, 'New1', '2025-10-10 09:04:34', '2025-10-10 09:04:34'),
(10, 32, 'Sub1', '2025-10-10 09:14:58', '2025-10-10 09:14:58'),
(11, 32, 'Sub14', '2025-10-10 09:15:13', '2025-10-10 09:15:13'),
(12, 6, 'Tytyy', '2025-10-13 02:44:32', '2025-10-13 02:44:32'),
(13, 2, 'Tttt', '2025-10-13 10:11:15', '2025-10-13 10:11:15'),
(14, 41, 'Ttttt', '2025-10-13 10:11:28', '2025-10-13 10:11:28'),
(15, 41, 'Ttggʻg', '2025-10-13 10:11:42', '2025-10-13 10:11:42'),
(16, 39, 'Subfg', '2025-10-13 10:11:55', '2025-10-13 10:11:55'),
(17, 37, 'Bnew1', '2025-10-13 10:12:08', '2025-10-13 10:12:08'),
(18, 37, 'New33', '2025-10-13 10:12:17', '2025-10-13 10:12:17'),
(19, 36, 'Sunb3', '2025-10-13 10:12:31', '2025-10-13 10:12:31'),
(20, 41, 'Yyyy', '2025-10-18 06:16:05', '2025-10-18 06:16:05'),
(21, 41, 'Yyþttt', '2025-10-18 06:16:16', '2025-10-18 06:16:16'),
(22, 37, 'Ffffff', '2025-10-18 06:16:23', '2025-10-18 06:16:23'),
(23, 37, 'Ggʻgg', '2025-10-18 06:16:30', '2025-10-18 06:16:30'),
(24, 26, 'Tttttt', '2025-10-18 06:17:16', '2025-10-18 06:17:16'),
(25, 25, 'Sss', '2025-10-18 07:16:30', '2025-10-18 07:16:30'),
(26, 22, 'Ttty', '2025-10-18 07:16:44', '2025-10-18 07:16:44'),
(27, 31, 'Gggg', '2025-10-18 07:16:53', '2025-10-18 07:16:53'),
(28, 27, 'Llll', '2025-10-18 07:17:10', '2025-10-18 07:17:10'),
(29, 23, 'Gghhh', '2025-10-18 07:17:22', '2025-10-18 07:17:22'),
(30, 23, 'Gghh', '2025-10-18 07:17:35', '2025-10-18 07:17:35'),
(31, 23, '111', '2025-10-18 07:17:48', '2025-10-18 07:17:48'),
(32, 23, '1113', '2025-10-18 07:17:56', '2025-10-18 07:17:56'),
(33, 20, 'Ffggg', '2025-10-18 07:18:13', '2025-10-18 07:18:13'),
(34, 39, 'Gʻgggg', '2025-10-18 07:29:17', '2025-10-18 07:29:17'),
(35, 42, 'Manysub2', '2025-10-18 07:29:25', '2025-10-18 12:25:05'),
(36, 40, 'Ggggg', '2025-10-18 07:29:34', '2025-10-18 07:29:34'),
(37, 42, 'Manysub1', '2025-10-18 07:29:41', '2025-10-18 12:24:41');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin User', 'admin@admin.com', '2025-10-03 07:00:30', '$2y$12$ad9COKIfqqFekOmIbrMISOZLzWMGeQCsMho22kgtTyMJY9rZ34qmW', 'bkrylZ5KFf', '2025-10-03 07:00:30', '2025-10-03 07:00:30');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
