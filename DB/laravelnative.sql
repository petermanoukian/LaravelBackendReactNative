-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Oct 11, 2025 at 12:05 PM
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
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(31, 'Tggtg', 'images/cat/img/img/Tggtg-68e790a500121.gif', 'images/cat/img/img/thumb/Tggtg-68e790a500121.gif', 'files/cat/Tggtg-68e790a500121.jpg', '2025-10-08 03:22:28', '2025-10-09 06:38:30'),
(32, 'Rttt56', 'images/cat/img/img/Rttt56-68e790937a6dc.jpg', 'images/cat/img/img/thumb/Rttt56-68e790937a6dc.jpg', 'files/cat/Rttt56-68e790937a6dc.jpg', '2025-10-08 03:22:36', '2025-10-09 06:38:16'),
(33, '5tttt', 'images/cat/img/img/5tttt-68e7945279fce.gif', 'images/cat/img/img/thumb/5tttt-68e7945279fce.gif', 'files/cat/5tttt-68e794496e643.jpg', '2025-10-08 03:22:47', '2025-10-09 06:54:12');

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
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2025_10_03_102452_create_personal_access_tokens_table', 2),
(5, '2025_10_09_125627_create_subcats_table', 3);

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
) ENGINE=MyISAM AUTO_INCREMENT=64 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(62, 'App\\Models\\User', 1, 'auth_token', '50ef5128a5ffec643dac0c3acb9738fec8037202f1d8ac4819a84f7049a2a026', '[\"*\"]', '2025-10-11 05:09:42', '2025-10-14 06:54:46', '2025-10-07 06:54:46', '2025-10-11 05:09:42'),
(63, 'App\\Models\\User', 1, 'mobile', '337966745f700c9399dcd003e4df7dd2df092dc2264c1372762e0267c7860c62', '[\"*\"]', '2025-10-11 07:54:49', NULL, '2025-10-07 07:23:18', '2025-10-11 07:54:49');

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
('5elrkVmczoB2mzBT2Xk9IWJnK1STxxVjoQJ8VKRx', NULL, '192.168.11.50', '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWEk2SjNaMmJ2WXAyamZNYkZ0QmZOR2J3Mkc5QUNFSzBwZDE2UVhtMSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjU6Imh0dHA6Ly8xOTIuMTY4LjExLjUwOjgwMDAiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1760176300);

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
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subcats`
--

INSERT INTO `subcats` (`id`, `catid`, `name`, `created_at`, `updated_at`) VALUES
(1, 33, 'Sub1', '2025-10-10 08:27:15', '2025-10-10 08:27:15'),
(2, 33, 'Sub2', '2025-10-10 08:27:23', '2025-10-10 08:27:23'),
(3, 30, 'sub1', '2025-10-10 08:28:02', '2025-10-10 08:28:02'),
(4, 31, 'Sub1', '2025-10-10 08:30:46', '2025-10-10 08:30:46'),
(5, 30, 'Sub12', '2025-10-10 08:32:37', '2025-10-10 08:32:37'),
(6, 6, 'Rrrr', '2025-10-10 08:32:47', '2025-10-10 08:32:47'),
(7, 26, 'Sub1', '2025-10-10 09:03:58', '2025-10-10 09:03:58'),
(8, 2, 'New1', '2025-10-10 09:04:23', '2025-10-10 09:04:23'),
(9, 32, 'New1', '2025-10-10 09:04:34', '2025-10-10 09:04:34'),
(10, 32, 'Sub1', '2025-10-10 09:14:58', '2025-10-10 09:14:58'),
(11, 32, 'Sub14', '2025-10-10 09:15:13', '2025-10-10 09:15:13'),
(12, 33, '51', '2025-10-10 09:16:23', '2025-10-10 09:16:23'),
(13, 33, '514', '2025-10-10 09:16:33', '2025-10-10 09:16:33');

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
