-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jan 06, 2021 at 06:15 PM
-- Server version: 5.7.31
-- PHP Version: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `procodestores`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

DROP TABLE IF EXISTS `admins`;
CREATE TABLE IF NOT EXISTS `admins` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admins_email_unique` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `password`, `created_at`, `updated_at`) VALUES
(1, 'Emadeldeen Abdallah', 'emade09@gmail.com', '$2y$10$uPOgAQg5.lHdkwEP/AG/i.5VGKoNRQE6MO95JOM3n01P7HJz7zCG2', '2020-11-09 20:43:56', '2021-01-06 02:07:45');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `categories_slug_unique` (`slug`),
  KEY `categories_parent_id_foreign` (`parent_id`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `parent_id`, `slug`, `is_active`, `created_at`, `updated_at`) VALUES
(1, NULL, 'modi-aspernatur-dolore-animi-laborum-libero-aut-nihil', 0, '2021-01-06 15:25:46', '2021-01-06 15:25:46'),
(2, NULL, 'non-voluptatum-mollitia-perspiciatis-dolores', 1, '2021-01-06 15:25:46', '2021-01-06 15:25:46'),
(3, NULL, 'dicta-repellendus-commodi-in-error-exercitationem-qui-iusto-eum', 1, '2021-01-06 15:25:46', '2021-01-06 15:25:46'),
(4, NULL, 'velit-pariatur-vel-quia', 0, '2021-01-06 15:25:46', '2021-01-06 15:25:46'),
(5, NULL, 'quia-distinctio-delectus-et-ratione-dolorem-sunt', 1, '2021-01-06 15:25:46', '2021-01-06 15:25:46'),
(6, NULL, 'similique-incidunt-perspiciatis-et', 1, '2021-01-06 15:25:46', '2021-01-06 15:25:46'),
(7, NULL, 'delectus-sapiente-eum-nihil-vel', 1, '2021-01-06 15:25:46', '2021-01-06 15:25:46'),
(8, NULL, 'tempore-aut-adipisci-odio-unde', 1, '2021-01-06 15:25:46', '2021-01-06 15:25:46'),
(9, NULL, 'sunt-deserunt-quisquam-accusamus-suscipit', 0, '2021-01-06 15:25:46', '2021-01-06 15:25:46'),
(10, NULL, 'autem-expedita-sunt-ut-doloribus', 1, '2021-01-06 15:25:46', '2021-01-06 15:25:46'),
(11, NULL, 'expedita-aut-exercitationem-saepe-voluptates-libero-vel-et', 0, '2021-01-06 15:25:46', '2021-01-06 15:25:46'),
(12, NULL, 'exercitationem-labore-iusto-qui-quisquam', 0, '2021-01-06 15:25:46', '2021-01-06 15:25:46'),
(13, NULL, 'nesciunt-consectetur-voluptas-illo-eum-voluptas-aliquid-fuga', 1, '2021-01-06 15:25:46', '2021-01-06 15:25:46'),
(14, NULL, 'sunt-magnam-officia-blanditiis-eaque-vel-quas', 0, '2021-01-06 15:25:46', '2021-01-06 15:25:46'),
(15, NULL, 'pariatur-praesentium-non-et-occaecati-laudantium-ea', 1, '2021-01-06 15:25:46', '2021-01-06 15:25:46'),
(16, NULL, 'facilis-dolores-provident-facilis-numquam-est-non-nulla-ut', 1, '2021-01-06 15:25:46', '2021-01-06 15:25:46'),
(17, NULL, 'corrupti-excepturi-sequi-sint-non', 0, '2021-01-06 15:25:46', '2021-01-06 15:25:46'),
(18, NULL, 'voluptatem-ducimus-laudantium-ad-porro-ipsum-dolor-nostrum', 1, '2021-01-06 15:25:46', '2021-01-06 15:25:46'),
(19, NULL, 'fugiat-ut-unde-quidem-quo-voluptatem-qui-laudantium', 1, '2021-01-06 15:25:46', '2021-01-06 15:25:46'),
(20, NULL, 'minima-sit-praesentium-modi', 0, '2021-01-06 15:25:46', '2021-01-06 15:25:46');

-- --------------------------------------------------------

--
-- Table structure for table `category_translations`
--

DROP TABLE IF EXISTS `category_translations`;
CREATE TABLE IF NOT EXISTS `category_translations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `category_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `category_translations_category_id_locale_unique` (`category_id`,`locale`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category_translations`
--

INSERT INTO `category_translations` (`id`, `category_id`, `locale`, `name`) VALUES
(1, 1, 'ar', 'alias'),
(2, 2, 'ar', 'non'),
(3, 3, 'ar', 'voluptas'),
(4, 4, 'ar', 'dolores'),
(5, 5, 'ar', 'dolor'),
(6, 6, 'ar', 'esse'),
(7, 7, 'ar', 'reprehenderit'),
(8, 8, 'ar', 'sapiente'),
(9, 9, 'ar', 'eum'),
(10, 10, 'ar', 'explicabo'),
(11, 11, 'ar', 'omnis'),
(12, 12, 'ar', 'dolor'),
(13, 13, 'ar', 'atque'),
(14, 14, 'ar', 'et'),
(15, 15, 'ar', 'quasi'),
(16, 16, 'ar', 'commodi'),
(17, 17, 'ar', 'eius'),
(18, 18, 'ar', 'aut'),
(19, 19, 'ar', 'blanditiis'),
(20, 20, 'ar', 'velit');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
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
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_11_09_213058_create_admins_table', 1),
(8, '2021_01_02_133114_create_setting_translations_table', 2),
(7, '2021_01_02_132924_create_settings_table', 2),
(9, '2021_01_06_163921_create_categories_table', 3),
(10, '2021_01_06_163947_create_category_translations_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
CREATE TABLE IF NOT EXISTS `settings` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_translatable` tinyint(1) NOT NULL DEFAULT '0',
  `plain_value` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `settings_key_unique` (`key`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `is_translatable`, `plain_value`, `created_at`, `updated_at`) VALUES
(1, 'default_locale', 0, 'ar', '2021-01-04 11:33:19', '2021-01-04 11:33:19'),
(2, 'default_timezone', 0, 'Africa/Cairo', '2021-01-04 11:33:19', '2021-01-04 11:33:19'),
(3, 'reviews_enabled', 0, '1', '2021-01-04 11:33:19', '2021-01-04 11:33:19'),
(4, 'auto_approve_reviews', 0, '1', '2021-01-04 11:33:19', '2021-01-04 11:33:19'),
(5, 'supported_currencies', 0, '[\"USD\",\"LE\",\"SAR\"]', '2021-01-04 11:33:19', '2021-01-04 11:33:19'),
(6, 'default_currency', 0, 'USD', '2021-01-04 11:33:19', '2021-01-04 11:33:19'),
(7, 'store_email', 0, 'admin@ecommerce.test', '2021-01-04 11:33:19', '2021-01-04 11:33:19'),
(8, 'search_engine', 0, 'mysql', '2021-01-04 11:33:19', '2021-01-04 11:33:19'),
(9, 'local_shipping_cost', 0, '0', '2021-01-04 11:33:19', '2021-01-04 11:33:19'),
(10, 'outer_shipping_cost', 0, '0', '2021-01-04 11:33:19', '2021-01-04 11:33:19'),
(11, 'free_shipping_cost', 0, '0', '2021-01-04 11:33:19', '2021-01-04 11:33:19'),
(12, 'store_name', 1, NULL, '2021-01-04 11:33:19', '2021-01-04 11:33:19'),
(13, 'free_shipping_label', 1, '0000000', '2021-01-04 11:33:19', '2021-01-04 19:58:05'),
(14, 'local_label', 1, NULL, '2021-01-04 11:33:19', '2021-01-04 11:33:19'),
(15, 'outer_label', 1, NULL, '2021-01-04 11:33:19', '2021-01-04 11:33:19');

-- --------------------------------------------------------

--
-- Table structure for table `setting_translations`
--

DROP TABLE IF EXISTS `setting_translations`;
CREATE TABLE IF NOT EXISTS `setting_translations` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `setting_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `value` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `setting_translations_setting_id_locale_unique` (`setting_id`,`locale`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `setting_translations`
--

INSERT INTO `setting_translations` (`id`, `setting_id`, `locale`, `value`, `created_at`, `updated_at`) VALUES
(1, 12, 'ar', 'متجر عماد', '2021-01-04 11:33:19', '2021-01-04 11:33:19'),
(2, 13, 'ar', 'توصيل مجاني 23', '2021-01-04 11:33:19', '2021-01-04 19:57:33'),
(3, 14, 'ar', 'توصيل محلي', '2021-01-04 11:33:19', '2021-01-04 11:33:19'),
(4, 15, 'ar', 'توصيل خارجي', '2021-01-04 11:33:19', '2021-01-04 11:33:19');

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
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'emad', 'emade09@gmail.com', NULL, '$2y$10$d1T6sOQ8tLY1jgnaS9VWeO.ij6iJpGpUyEHNwdZy9clSWo28sBsWq', NULL, NULL, NULL);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
