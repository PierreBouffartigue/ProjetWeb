-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  lun. 13 avr. 2020 à 19:27
-- Version du serveur :  10.4.10-MariaDB
-- Version de PHP :  7.4.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `laravel`
--

-- --------------------------------------------------------

--
-- Structure de la table `categories`
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 1,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `categories_slug_unique` (`slug`) USING HASH,
  KEY `categories_parent_id_foreign` (`parent_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `categories`
--

INSERT INTO `categories` (`id`, `parent_id`, `order`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, NULL, 1, 'Category 1', 'category-1', '2020-04-11 15:37:29', '2020-04-11 15:37:29'),
(2, NULL, 1, 'Category 2', 'category-2', '2020-04-11 15:37:29', '2020-04-11 15:37:29');

-- --------------------------------------------------------

--
-- Structure de la table `data_rows`
--

DROP TABLE IF EXISTS `data_rows`;
CREATE TABLE IF NOT EXISTS `data_rows` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `data_type_id` int(10) UNSIGNED NOT NULL,
  `field` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT 0,
  `browse` tinyint(1) NOT NULL DEFAULT 1,
  `read` tinyint(1) NOT NULL DEFAULT 1,
  `edit` tinyint(1) NOT NULL DEFAULT 1,
  `add` tinyint(1) NOT NULL DEFAULT 1,
  `delete` tinyint(1) NOT NULL DEFAULT 1,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`),
  KEY `data_rows_data_type_id_foreign` (`data_type_id`)
) ENGINE=MyISAM AUTO_INCREMENT=80 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `data_rows`
--

INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES
(1, 1, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(2, 1, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(3, 1, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, NULL, 3),
(4, 1, 'password', 'password', 'Password', 1, 0, 0, 1, 1, 0, NULL, 4),
(5, 1, 'remember_token', 'text', 'Remember Token', 0, 0, 0, 0, 0, 0, NULL, 5),
(6, 1, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, NULL, 6),
(7, 1, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
(8, 1, 'avatar', 'image', 'Avatar', 0, 1, 1, 1, 1, 1, NULL, 8),
(9, 1, 'user_belongsto_role_relationship', 'relationship', 'Role', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":0}', 10),
(10, 1, 'user_belongstomany_role_relationship', 'relationship', 'Roles', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}', 11),
(11, 1, 'settings', 'hidden', 'Settings', 0, 0, 0, 0, 0, 0, NULL, 12),
(12, 2, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(13, 2, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(14, 2, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(15, 2, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(16, 3, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(17, 3, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(18, 3, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(19, 3, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(20, 3, 'display_name', 'text', 'Display Name', 1, 1, 1, 1, 1, 1, NULL, 5),
(21, 1, 'role_id', 'text', 'Role', 1, 1, 1, 1, 1, 1, NULL, 9),
(22, 5, 'id', 'text', 'Id', 1, 1, 1, 1, 1, 1, '{}', 1),
(23, 8, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(24, 8, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, '{}', 2),
(25, 8, 'slug', 'text', 'Slug', 1, 1, 1, 1, 1, 1, '{}', 3),
(26, 8, 'subtitle', 'text', 'Subtitle', 1, 1, 1, 1, 1, 1, '{}', 4),
(27, 8, 'description', 'text', 'Description', 1, 1, 1, 1, 1, 1, '{}', 5),
(28, 8, 'price', 'text', 'Price', 1, 1, 1, 1, 1, 1, '{}', 6),
(29, 8, 'image', 'text', 'Image', 1, 1, 1, 1, 1, 1, '{}', 7),
(30, 8, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 8),
(31, 8, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 9),
(32, 13, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(33, 13, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(34, 13, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(35, 13, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(36, 13, 'display_name', 'text', 'Display Name', 1, 1, 1, 1, 1, 1, NULL, 5),
(37, 14, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(38, 14, 'parent_id', 'select_dropdown', 'Parent', 0, 0, 1, 1, 1, 1, '{\"default\":\"\",\"null\":\"\",\"options\":{\"\":\"-- None --\"},\"relationship\":{\"key\":\"id\",\"label\":\"name\"}}', 2),
(39, 14, 'order', 'text', 'Order', 1, 1, 1, 1, 1, 1, '{\"default\":1}', 3),
(40, 14, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 4),
(41, 14, 'slug', 'text', 'Slug', 1, 1, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"name\"}}', 5),
(42, 14, 'created_at', 'timestamp', 'Created At', 0, 0, 1, 0, 0, 0, NULL, 6),
(43, 14, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
(44, 15, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(45, 15, 'author_id', 'text', 'Author', 1, 0, 1, 1, 0, 1, NULL, 2),
(46, 15, 'category_id', 'text', 'Category', 1, 0, 1, 1, 1, 0, NULL, 3),
(47, 15, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, NULL, 4),
(48, 15, 'excerpt', 'text_area', 'Excerpt', 1, 0, 1, 1, 1, 1, NULL, 5),
(49, 15, 'body', 'rich_text_box', 'Body', 1, 0, 1, 1, 1, 1, NULL, 6),
(50, 15, 'image', 'image', 'Post Image', 0, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"1000\",\"height\":\"null\"},\"quality\":\"70%\",\"upsize\":true,\"thumbnails\":[{\"name\":\"medium\",\"scale\":\"50%\"},{\"name\":\"small\",\"scale\":\"25%\"},{\"name\":\"cropped\",\"crop\":{\"width\":\"300\",\"height\":\"250\"}}]}', 7),
(51, 15, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\",\"forceUpdate\":true},\"validation\":{\"rule\":\"unique:posts,slug\"}}', 8),
(52, 15, 'meta_description', 'text_area', 'Meta Description', 1, 0, 1, 1, 1, 1, NULL, 9),
(53, 15, 'meta_keywords', 'text_area', 'Meta Keywords', 1, 0, 1, 1, 1, 1, NULL, 10),
(54, 15, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"DRAFT\",\"options\":{\"PUBLISHED\":\"published\",\"DRAFT\":\"draft\",\"PENDING\":\"pending\"}}', 11),
(55, 15, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, NULL, 12),
(56, 15, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 13),
(57, 15, 'seo_title', 'text', 'SEO Title', 0, 1, 1, 1, 1, 1, NULL, 14),
(58, 15, 'featured', 'checkbox', 'Featured', 1, 1, 1, 1, 1, 1, NULL, 15),
(59, 16, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(60, 16, 'author_id', 'text', 'Author', 1, 0, 0, 0, 0, 0, NULL, 2),
(61, 16, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, NULL, 3),
(62, 16, 'excerpt', 'text_area', 'Excerpt', 1, 0, 1, 1, 1, 1, NULL, 4),
(63, 16, 'body', 'rich_text_box', 'Body', 1, 0, 1, 1, 1, 1, NULL, 5),
(64, 16, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\"},\"validation\":{\"rule\":\"unique:pages,slug\"}}', 6),
(65, 16, 'meta_description', 'text', 'Meta Description', 1, 0, 1, 1, 1, 1, NULL, 7),
(66, 16, 'meta_keywords', 'text', 'Meta Keywords', 1, 0, 1, 1, 1, 1, NULL, 8),
(67, 16, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"INACTIVE\",\"options\":{\"INACTIVE\":\"INACTIVE\",\"ACTIVE\":\"ACTIVE\"}}', 9),
(68, 16, 'created_at', 'timestamp', 'Created At', 1, 1, 1, 0, 0, 0, NULL, 10),
(69, 16, 'updated_at', 'timestamp', 'Updated At', 1, 0, 0, 0, 0, 0, NULL, 11),
(70, 16, 'image', 'image', 'Page Image', 0, 1, 1, 1, 1, 1, NULL, 12),
(71, 17, 'id', 'hidden', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(72, 17, 'title', 'rich_text_box', 'Title', 1, 1, 1, 1, 1, 1, '{}', 2),
(73, 17, 'slug', 'text', 'Slug', 1, 1, 1, 1, 1, 1, '{}', 3),
(74, 17, 'subtitle', 'text', 'Subtitle', 1, 1, 1, 1, 1, 1, '{}', 4),
(75, 17, 'description', 'rich_text_box', 'Description', 1, 1, 1, 1, 1, 1, '{}', 5),
(76, 17, 'price', 'number', 'Price', 1, 1, 1, 1, 1, 1, '{}', 6),
(77, 17, 'image', 'image', 'Image', 1, 1, 1, 1, 1, 1, '{}', 7),
(78, 17, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 8),
(79, 17, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 9);

-- --------------------------------------------------------

--
-- Structure de la table `data_types`
--

DROP TABLE IF EXISTS `data_types`;
CREATE TABLE IF NOT EXISTS `data_types` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT 0,
  `server_side` tinyint(4) NOT NULL DEFAULT 0,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `data_types_name_unique` (`name`) USING HASH,
  UNIQUE KEY `data_types_slug_unique` (`slug`) USING HASH
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `data_types`
--

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `details`, `created_at`, `updated_at`) VALUES
(1, 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', 'TCG\\Voyager\\Http\\Controllers\\VoyagerUserController', '', 1, 0, NULL, '2020-03-16 22:57:27', '2020-03-16 22:57:27'),
(2, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, NULL, '2020-03-16 22:57:27', '2020-03-16 22:57:27'),
(15, 'posts', 'posts', 'Post', 'Posts', 'voyager-news', 'TCG\\Voyager\\Models\\Post', 'TCG\\Voyager\\Policies\\PostPolicy', '', '', 1, 0, NULL, '2020-04-11 15:37:29', '2020-04-11 15:37:29'),
(4, 'permissions', 'permissions', 'Permission', 'Permissions', NULL, 'App\\Permission', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2020-04-06 14:37:37', '2020-04-06 14:37:37'),
(13, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, 'TCG\\Voyager\\Http\\Controllers\\VoyagerRoleController', '', 1, 0, NULL, '2020-04-11 15:37:28', '2020-04-11 15:37:28'),
(14, 'categories', 'categories', 'Category', 'Categories', 'voyager-categories', 'TCG\\Voyager\\Models\\Category', NULL, '', '', 1, 0, NULL, '2020-04-11 15:37:29', '2020-04-11 15:37:29'),
(16, 'pages', 'pages', 'Page', 'Pages', 'voyager-file-text', 'TCG\\Voyager\\Models\\Page', NULL, '', '', 1, 0, NULL, '2020-04-11 15:37:29', '2020-04-11 15:37:29'),
(17, 'products', 'products', 'Product', 'Products', 'voyager-basket', 'App\\Product', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2020-04-12 20:30:09', '2020-04-12 20:37:27');

-- --------------------------------------------------------

--
-- Structure de la table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `menus`
--

DROP TABLE IF EXISTS `menus`;
CREATE TABLE IF NOT EXISTS `menus` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `menus_name_unique` (`name`) USING HASH
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `menus`
--

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2020-03-16 22:57:27', '2020-03-16 22:57:27');

-- --------------------------------------------------------

--
-- Structure de la table `menu_items`
--

DROP TABLE IF EXISTS `menu_items`;
CREATE TABLE IF NOT EXISTS `menu_items` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `menu_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `menu_items_menu_id_foreign` (`menu_id`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
(1, 1, 'Dashboard', '', '_self', 'voyager-boat', NULL, NULL, 1, '2020-03-16 22:57:27', '2020-03-16 22:57:27', 'voyager.dashboard', NULL),
(2, 1, 'Media', '', '_self', 'voyager-images', NULL, NULL, 6, '2020-03-16 22:57:27', '2020-04-12 20:30:39', 'voyager.media.index', NULL),
(3, 1, 'Users', '', '_self', 'voyager-person', NULL, NULL, 5, '2020-03-16 22:57:27', '2020-04-12 20:30:39', 'voyager.users.index', NULL),
(15, 1, 'Categories', '', '_self', 'voyager-categories', NULL, NULL, 9, '2020-04-11 15:37:29', '2020-04-12 20:30:36', 'voyager.categories.index', NULL),
(5, 1, 'Tools', '', '_self', 'voyager-tools', NULL, NULL, 7, '2020-03-16 22:57:27', '2020-04-12 20:30:39', NULL, NULL),
(6, 1, 'Menu Builder', '', '_self', 'voyager-list', NULL, 5, 1, '2020-03-16 22:57:27', '2020-04-09 13:21:52', 'voyager.menus.index', NULL),
(7, 1, 'Database', '', '_self', 'voyager-data', NULL, 5, 2, '2020-03-16 22:57:27', '2020-04-09 13:21:52', 'voyager.database.index', NULL),
(8, 1, 'Compass', '', '_self', 'voyager-compass', NULL, 5, 3, '2020-03-16 22:57:27', '2020-04-09 13:21:52', 'voyager.compass.index', NULL),
(9, 1, 'BREAD', '', '_self', 'voyager-bread', NULL, 5, 4, '2020-03-16 22:57:27', '2020-04-09 13:21:52', 'voyager.bread.index', NULL),
(10, 1, 'Settings', '', '_self', 'voyager-settings', NULL, 5, 6, '2020-03-16 22:57:27', '2020-04-12 20:30:45', 'voyager.settings.index', NULL),
(11, 1, 'Hooks', '', '_self', 'voyager-hook', NULL, 5, 5, '2020-03-16 22:57:27', '2020-04-09 13:21:52', 'voyager.hooks', NULL),
(14, 1, 'Roles', '', '_self', 'voyager-lock', NULL, NULL, 3, '2020-04-11 15:37:28', '2020-04-12 20:30:36', 'voyager.roles.index', NULL),
(16, 1, 'Posts', '', '_self', 'voyager-news', NULL, NULL, 4, '2020-04-11 15:37:29', '2020-04-12 20:30:39', 'voyager.posts.index', NULL),
(17, 1, 'Pages', '', '_self', 'voyager-file-text', NULL, NULL, 8, '2020-04-11 15:37:29', '2020-04-12 20:30:36', 'voyager.pages.index', NULL),
(18, 1, 'Products', '', '_self', 'voyager-basket', NULL, NULL, 2, '2020-04-12 20:30:09', '2020-04-12 20:30:36', 'voyager.products.index', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2016_01_01_000000_add_voyager_user_fields', 1),
(3, '2016_01_01_000000_create_data_types_table', 1),
(4, '2016_05_19_173453_create_menu_table', 1),
(5, '2016_10_21_190000_create_roles_table', 1),
(6, '2016_10_21_190000_create_settings_table', 1),
(7, '2016_11_30_135954_create_permission_table', 1),
(8, '2016_11_30_141208_create_permission_role_table', 1),
(9, '2016_12_26_201236_data_types__add__server_side', 1),
(10, '2017_01_13_000000_add_route_to_menu_items_table', 1),
(11, '2017_01_14_005015_create_translations_table', 1),
(12, '2017_01_15_000000_make_table_name_nullable_in_permissions_table', 1),
(13, '2017_03_06_000000_add_controller_to_data_types_table', 1),
(14, '2017_04_21_000000_add_order_to_data_rows_table', 1),
(15, '2017_07_05_210000_add_policyname_to_data_types_table', 1),
(16, '2017_08_05_000000_add_group_to_settings_table', 1),
(17, '2017_11_26_013050_add_user_role_relationship', 1),
(18, '2017_11_26_015000_create_user_roles_table', 1),
(19, '2018_03_11_000000_add_user_settings', 1),
(20, '2018_03_14_000000_add_details_to_data_types_table', 1),
(21, '2018_03_16_000000_make_settings_value_nullable', 1),
(25, '2014_10_12_100000_create_password_resets_table', 2),
(26, '2019_08_19_000000_create_failed_jobs_table', 2),
(27, '2020_04_11_145010_create_products_table', 2),
(28, '2016_01_01_000000_create_pages_table', 3),
(29, '2016_01_01_000000_create_posts_table', 3),
(30, '2016_02_15_204651_create_categories_table', 3),
(31, '2017_04_11_000000_alter_post_nullable_fields_table', 3),
(32, '2020_04_13_192307_vote_count', 4);

-- --------------------------------------------------------

--
-- Structure de la table `pages`
--

DROP TABLE IF EXISTS `pages`;
CREATE TABLE IF NOT EXISTS `pages` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `author_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('ACTIVE','INACTIVE') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'INACTIVE',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `pages_slug_unique` (`slug`) USING HASH
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `pages`
--

INSERT INTO `pages` (`id`, `author_id`, `title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `created_at`, `updated_at`) VALUES
(3, 1, 'CGV', 'CGV', NULL, NULL, 'cgvcgu', 'cgv', 'cgv', 'ACTIVE', '2020-04-12 11:53:54', '2020-04-12 11:53:54');

-- --------------------------------------------------------

--
-- Structure de la table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`(250))
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `permissions`
--

DROP TABLE IF EXISTS `permissions`;
CREATE TABLE IF NOT EXISTS `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `permissions_key_index` (`key`(250))
) ENGINE=MyISAM AUTO_INCREMENT=62 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `permissions`
--

INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`) VALUES
(1, 'browse_admin', NULL, '2020-03-16 22:57:27', '2020-03-16 22:57:27'),
(2, 'browse_bread', NULL, '2020-03-16 22:57:27', '2020-03-16 22:57:27'),
(3, 'browse_database', NULL, '2020-03-16 22:57:27', '2020-03-16 22:57:27'),
(4, 'browse_media', NULL, '2020-03-16 22:57:27', '2020-03-16 22:57:27'),
(5, 'browse_compass', NULL, '2020-03-16 22:57:27', '2020-03-16 22:57:27'),
(6, 'browse_menus', 'menus', '2020-03-16 22:57:27', '2020-03-16 22:57:27'),
(7, 'read_menus', 'menus', '2020-03-16 22:57:27', '2020-03-16 22:57:27'),
(8, 'edit_menus', 'menus', '2020-03-16 22:57:27', '2020-03-16 22:57:27'),
(9, 'add_menus', 'menus', '2020-03-16 22:57:27', '2020-03-16 22:57:27'),
(10, 'delete_menus', 'menus', '2020-03-16 22:57:27', '2020-03-16 22:57:27'),
(44, 'edit_categories', 'categories', '2020-04-11 15:37:29', '2020-04-11 15:37:29'),
(43, 'read_categories', 'categories', '2020-04-11 15:37:29', '2020-04-11 15:37:29'),
(16, 'browse_users', 'users', '2020-03-16 22:57:27', '2020-03-16 22:57:27'),
(17, 'read_users', 'users', '2020-03-16 22:57:27', '2020-03-16 22:57:27'),
(18, 'edit_users', 'users', '2020-03-16 22:57:27', '2020-03-16 22:57:27'),
(19, 'add_users', 'users', '2020-03-16 22:57:27', '2020-03-16 22:57:27'),
(20, 'delete_users', 'users', '2020-03-16 22:57:27', '2020-03-16 22:57:27'),
(21, 'browse_settings', 'settings', '2020-03-16 22:57:27', '2020-03-16 22:57:27'),
(22, 'read_settings', 'settings', '2020-03-16 22:57:27', '2020-03-16 22:57:27'),
(23, 'edit_settings', 'settings', '2020-03-16 22:57:27', '2020-03-16 22:57:27'),
(24, 'add_settings', 'settings', '2020-03-16 22:57:27', '2020-03-16 22:57:27'),
(25, 'delete_settings', 'settings', '2020-03-16 22:57:27', '2020-03-16 22:57:27'),
(26, 'browse_hooks', NULL, '2020-03-16 22:57:27', '2020-03-16 22:57:27'),
(42, 'browse_categories', 'categories', '2020-04-11 15:37:29', '2020-04-11 15:37:29'),
(41, 'delete_roles', 'roles', '2020-04-11 15:37:28', '2020-04-11 15:37:28'),
(39, 'edit_roles', 'roles', '2020-04-11 15:37:28', '2020-04-11 15:37:28'),
(40, 'add_roles', 'roles', '2020-04-11 15:37:28', '2020-04-11 15:37:28'),
(38, 'read_roles', 'roles', '2020-04-11 15:37:28', '2020-04-11 15:37:28'),
(37, 'browse_roles', 'roles', '2020-04-11 15:37:28', '2020-04-11 15:37:28'),
(45, 'add_categories', 'categories', '2020-04-11 15:37:29', '2020-04-11 15:37:29'),
(46, 'delete_categories', 'categories', '2020-04-11 15:37:29', '2020-04-11 15:37:29'),
(47, 'browse_posts', 'posts', '2020-04-11 15:37:29', '2020-04-11 15:37:29'),
(48, 'read_posts', 'posts', '2020-04-11 15:37:29', '2020-04-11 15:37:29'),
(49, 'edit_posts', 'posts', '2020-04-11 15:37:29', '2020-04-11 15:37:29'),
(50, 'add_posts', 'posts', '2020-04-11 15:37:29', '2020-04-11 15:37:29'),
(51, 'delete_posts', 'posts', '2020-04-11 15:37:29', '2020-04-11 15:37:29'),
(52, 'browse_pages', 'pages', '2020-04-11 15:37:29', '2020-04-11 15:37:29'),
(53, 'read_pages', 'pages', '2020-04-11 15:37:29', '2020-04-11 15:37:29'),
(54, 'edit_pages', 'pages', '2020-04-11 15:37:29', '2020-04-11 15:37:29'),
(55, 'add_pages', 'pages', '2020-04-11 15:37:29', '2020-04-11 15:37:29'),
(56, 'delete_pages', 'pages', '2020-04-11 15:37:29', '2020-04-11 15:37:29'),
(57, 'browse_products', 'products', '2020-04-12 20:30:09', '2020-04-12 20:30:09'),
(58, 'read_products', 'products', '2020-04-12 20:30:09', '2020-04-12 20:30:09'),
(59, 'edit_products', 'products', '2020-04-12 20:30:09', '2020-04-12 20:30:09'),
(60, 'add_products', 'products', '2020-04-12 20:30:09', '2020-04-12 20:30:09'),
(61, 'delete_products', 'products', '2020-04-12 20:30:09', '2020-04-12 20:30:09');

-- --------------------------------------------------------

--
-- Structure de la table `permission_role`
--

DROP TABLE IF EXISTS `permission_role`;
CREATE TABLE IF NOT EXISTS `permission_role` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL,
  PRIMARY KEY (`permission_id`,`role_id`),
  KEY `permission_role_permission_id_index` (`permission_id`),
  KEY `permission_role_role_id_index` (`role_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(1, 3),
(2, 1),
(2, 3),
(3, 1),
(3, 3),
(4, 1),
(4, 3),
(5, 1),
(5, 3),
(6, 1),
(6, 3),
(7, 1),
(7, 3),
(8, 1),
(8, 3),
(9, 1),
(9, 3),
(10, 1),
(10, 3),
(11, 3),
(12, 3),
(13, 3),
(14, 3),
(15, 3),
(16, 1),
(16, 3),
(17, 1),
(17, 3),
(18, 1),
(18, 3),
(19, 1),
(19, 3),
(20, 1),
(20, 3),
(21, 1),
(21, 3),
(22, 1),
(22, 3),
(23, 1),
(23, 3),
(24, 1),
(24, 3),
(25, 1),
(25, 3),
(26, 1),
(26, 3),
(27, 3),
(28, 3),
(29, 3),
(30, 3),
(31, 3),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(41, 1),
(42, 1),
(43, 1),
(44, 1),
(45, 1),
(46, 1),
(47, 1),
(48, 1),
(49, 1),
(50, 1),
(51, 1),
(52, 1),
(53, 1),
(54, 1),
(55, 1),
(56, 1),
(57, 1),
(58, 1),
(59, 1),
(60, 1),
(61, 1);

-- --------------------------------------------------------

--
-- Structure de la table `posts`
--

DROP TABLE IF EXISTS `posts`;
CREATE TABLE IF NOT EXISTS `posts` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `author_id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('PUBLISHED','DRAFT','PENDING') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'DRAFT',
  `featured` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `posts_slug_unique` (`slug`) USING HASH
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `posts`
--

INSERT INTO `posts` (`id`, `author_id`, `category_id`, `title`, `seo_title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `featured`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'Réglement', 'Réglement Pixelmon Epicka', 'Réglement du serveur', '<p style=\"box-sizing: border-box; margin: 0px 0px 10px; color: #ffffff; font-family: \'Open Sans\', sans-serif;\"><span style=\"box-sizing: border-box; font-family: Whitney, \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 16px; white-space: pre-wrap; color: #ffffff; background-image: none !important; background-position: initial !important; background-size: initial !important; background-repeat: initial !important; background-attachment: initial !important; background-origin: initial !important; background-clip: initial !important;\">1) Le racisme ou la discrimination ne sont pas tol&eacute;r&eacute;s.</span></p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; color: #ffffff; font-family: \'Open Sans\', sans-serif;\"><span style=\"box-sizing: border-box; font-family: Whitney, \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 16px; white-space: pre-wrap; color: #ffffff; background-image: none !important; background-position: initial !important; background-size: initial !important; background-repeat: initial !important; background-attachment: initial !important; background-origin: initial !important; background-clip: initial !important;\">2) Le respect est bien entendu le bienvenue sur ce serveur !</span></p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; color: #ffffff; font-family: \'Open Sans\', sans-serif;\"><span style=\"box-sizing: border-box; font-family: Whitney, \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 16px; white-space: pre-wrap; color: #ffffff; background-image: none !important; background-position: initial !important; background-size: initial !important; background-repeat: initial !important; background-attachment: initial !important; background-origin: initial !important; background-clip: initial !important;\">3) Ne r&eacute;glez pas les probl&egrave;mes par vous-m&ecirc;mes, Le staff est l&agrave; pour vous aider.</span></p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; color: #ffffff; font-family: \'Open Sans\', sans-serif;\"><span style=\"box-sizing: border-box; font-family: Whitney, \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 16px; white-space: pre-wrap; color: #ffffff; background-image: none !important; background-position: initial !important; background-size: initial !important; background-repeat: initial !important; background-attachment: initial !important; background-origin: initial !important; background-clip: initial !important;\">4) Toute n&eacute;gligence des r&egrave;gles peut occasionner une exclusion, une restriction de droits, ou un ban d&eacute;finitif.</span></p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; color: #ffffff; font-family: \'Open Sans\', sans-serif;\"><span style=\"box-sizing: border-box; font-family: Whitney, \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 16px; white-space: pre-wrap; color: #ffffff; background-image: none !important; background-position: initial !important; background-size: initial !important; background-repeat: initial !important; background-attachment: initial !important; background-origin: initial !important; background-clip: initial !important;\">5) Toute g&ecirc;ne occasionn&eacute;e volontairement en vocal est passable de graves sanctions.</span></p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; color: #ffffff; font-family: \'Open Sans\', sans-serif;\"><span style=\"box-sizing: border-box; font-family: Whitney, \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 16px; white-space: pre-wrap; color: #ffffff; background-image: none !important; background-position: initial !important; background-size: initial !important; background-repeat: initial !important; background-attachment: initial !important; background-origin: initial !important; background-clip: initial !important;\">6) Il est interdit de d&eacute;truire ou utiliser des v&eacute;hicules ne vous appartenant pas.</span></p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; color: #ffffff; font-family: \'Open Sans\', sans-serif;\"><span style=\"box-sizing: border-box; font-family: Whitney, \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 16px; white-space: pre-wrap; color: #ffffff; background-image: none !important; background-position: initial !important; background-size: initial !important; background-repeat: initial !important; background-attachment: initial !important; background-origin: initial !important; background-clip: initial !important;\">7) L\'utilisation du mod schematica est autoris&eacute;e.</span></p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; color: #ffffff; font-family: \'Open Sans\', sans-serif;\"><span style=\"box-sizing: border-box; font-family: Whitney, \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 16px; white-space: pre-wrap; color: #ffffff; background-image: none !important; background-position: initial !important; background-size: initial !important; background-repeat: initial !important; background-attachment: initial !important; background-origin: initial !important; background-clip: initial !important;\">8) Tout ajout de mod pouvant donner un avantage au joueur est interdit et entrainera un ban d&eacute;finitif.</span></p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; color: #ffffff; font-family: \'Open Sans\', sans-serif;\"><span style=\"box-sizing: border-box; font-family: Whitney, \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 16px; white-space: pre-wrap; color: #ffffff; background-image: none !important; background-position: initial !important; background-size: initial !important; background-repeat: initial !important; background-attachment: initial !important; background-origin: initial !important; background-clip: initial !important;\">9) Le serveur est la&iuml;que, il vous est donc demander d\'&eacute;viter les sujets religieux bien que nous les respectons.</span></p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; color: #ffffff; font-family: \'Open Sans\', sans-serif;\"><span style=\"box-sizing: border-box; font-family: Whitney, \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 16px; white-space: pre-wrap; color: #ffffff; background-image: none !important; background-position: initial !important; background-size: initial !important; background-repeat: initial !important; background-attachment: initial !important; background-origin: initial !important; background-clip: initial !important;\">10) Tout use bug utilis&eacute; est interdit.</span></p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; color: #ffffff; font-family: \'Open Sans\', sans-serif;\"><span style=\"box-sizing: border-box; font-family: Whitney, \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 16px; white-space: pre-wrap; color: #ffffff; background-image: none !important; background-position: initial !important; background-size: initial !important; background-repeat: initial !important; background-attachment: initial !important; background-origin: initial !important; background-clip: initial !important;\">11) Tout claim visant &agrave; emb&ecirc;ter d\'autre personnes sera supprim&eacute;.</span></p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; color: #ffffff; font-family: \'Open Sans\', sans-serif;\"><span style=\"box-sizing: border-box; font-family: Whitney, \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 16px; white-space: pre-wrap; color: #ffffff; background-image: none !important; background-position: initial !important; background-size: initial !important; background-repeat: initial !important; background-attachment: initial !important; background-origin: initial !important; background-clip: initial !important;\">12) Toute destruction massive sans but est interdit.</span></p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; color: #ffffff; font-family: \'Open Sans\', sans-serif;\"><span style=\"box-sizing: border-box; font-family: Whitney, \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 16px; white-space: pre-wrap; color: #ffffff; background-image: none !important; background-position: initial !important; background-size: initial !important; background-repeat: initial !important; background-attachment: initial !important; background-origin: initial !important; background-clip: initial !important;\">13) La revente d\'items, pok&eacute;mons ou encore points boutique du serveur avec de l\'argent r&eacute;el est strictement interdit.</span></p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; color: #ffffff; font-family: \'Open Sans\', sans-serif;\"><span style=\"box-sizing: border-box; font-family: Whitney, \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 16px; white-space: pre-wrap; color: #ffffff; background-image: none !important; background-position: initial !important; background-size: initial !important; background-repeat: initial !important; background-attachment: initial !important; background-origin: initial !important; background-clip: initial !important;\">14) Les multi-comptes sont autoris&eacute;s mais la sanction d\'un compte comptera pour les deux.</span></p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; color: #ffffff; font-family: \'Open Sans\', sans-serif;\"><span style=\"box-sizing: border-box; font-family: Whitney, \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 16px; white-space: pre-wrap; color: #ffffff; background-image: none !important; background-position: initial !important; background-size: initial !important; background-repeat: initial !important; background-attachment: initial !important; background-origin: initial !important; background-clip: initial !important;\">15) L\'utilisation abusive du /nick ou le vol d\'identit&eacute; est interdit.</span></p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; color: #ffffff; font-family: \'Open Sans\', sans-serif;\"><span style=\"box-sizing: border-box; font-family: Whitney, \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 16px; white-space: pre-wrap; color: #ffffff; background-image: none !important; background-position: initial !important; background-size: initial !important; background-repeat: initial !important; background-attachment: initial !important; background-origin: initial !important; background-clip: initial !important;\">16) Des blocs d\'&eacute;change sont disponibles dans les centres pok&eacute;mon, l\'arnaque lors d\'un &eacute;change d\'item ne pourra pas &ecirc;tre rembours&eacute;e.</span></p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; color: #ffffff; font-family: \'Open Sans\', sans-serif;\"><span style=\"color: #ffffff;\">&nbsp;</span></p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; color: #ffffff; font-family: \'Open Sans\', sans-serif;\"><span style=\"color: #ffffff;\"><span style=\"box-sizing: border-box; font-family: Whitney, \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 16px; white-space: pre-wrap; background-image: none !important; background-position: initial !important; background-size: initial !important; background-repeat: initial !important; background-attachment: initial !important; background-origin: initial !important; background-clip: initial !important;\">Le staff se r&eacute;serve le droit de d&eacute;cider</span><span style=\"box-sizing: border-box; font-family: Whitney, \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 16px; white-space: pre-wrap; background-image: none !important; background-position: initial !important; background-size: initial !important; background-repeat: initial !important; background-attachment: initial !important; background-origin: initial !important; background-clip: initial !important;\"> des sanctions et de les</span><span style=\"box-sizing: border-box; font-family: Whitney, \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 16px; white-space: pre-wrap; background-image: none !important; background-position: initial !important; background-size: initial !important; background-repeat: initial !important; background-attachment: initial !important; background-origin: initial !important; background-clip: initial !important;\"> augmenter selon les ant&eacute;c&eacute;dents et le comportement des joueurs.</span></span></p>', 'posts/post1.jpg', 'reglement', 'Réglement du serveur', 'rules, reglement', 'PUBLISHED', 1, '2020-04-11 15:37:29', '2020-04-12 10:17:43');

-- --------------------------------------------------------

--
-- Structure de la table `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subtitle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `products_title_unique` (`title`) USING HASH,
  UNIQUE KEY `products_slug_unique` (`slug`) USING HASH
) ENGINE=MyISAM AUTO_INCREMENT=64 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `products`
--

INSERT INTO `products` (`id`, `title`, `slug`, `subtitle`, `description`, `price`, `image`, `created_at`, `updated_at`) VALUES
(61, '<h2><span style=\"color: #999999;\"><strong>TopDresseur</strong></span></h2>', 'Grade 1', 'Grade 1', '<h4 style=\"box-sizing: border-box; margin: 0px 0px 10px; color: #000000; font-family: \'Open Sans\', sans-serif; font-size: 18px;\"><span style=\"color: #ffffff;\">&nbsp;<span style=\"box-sizing: border-box;\"><span style=\"box-sizing: border-box; font-size: 14pt;\">Lors de l\'achat :</span></span></span></h4>\r\n<h4 style=\"box-sizing: border-box; margin: 0px 0px 10px; color: #000000; font-family: \'Open Sans\', sans-serif; font-size: 18px;\"><span style=\"color: #ffffff;\">- Ecaille rouge ( Acc&egrave;s &agrave; des zones et qu&ecirc;tes&nbsp;bonus )</span></h4>\r\n<h4 style=\"box-sizing: border-box; margin: 0px 0px 10px; color: #000000; font-family: \'Open Sans\', sans-serif; font-size: 18px;\"><span style=\"color: #ffffff;\">- 1.500 blocs de claim suppl&eacute;mentaires</span></h4>\r\n<h4 style=\"box-sizing: border-box; margin: 0px 0px 10px; color: #000000; font-family: \'Open Sans\', sans-serif; font-size: 18px;\"><span style=\"color: #ffffff;\">- 3 Jetons en or p&ucirc;r</span></h4>\r\n<h4 style=\"box-sizing: border-box; margin: 0px 0px 10px; color: #000000; font-family: \'Open Sans\', sans-serif; font-size: 18px;\"><span style=\"color: #ffffff;\">- 3 /home dans la r&eacute;gion Palma</span></h4>\r\n<h4 style=\"box-sizing: border-box; margin: 0px 0px 10px; color: #000000; font-family: \'Open Sans\', sans-serif; font-size: 18px;\"><span style=\"color: #ffffff;\">&nbsp;<span style=\"box-sizing: border-box;\"><span style=\"box-sizing: border-box; font-size: 14pt;\">Kit ( 12h ) :</span></span></span></h4>\r\n<h4 style=\"box-sizing: border-box; margin: 0px 0px 10px; color: #000000; font-family: \'Open Sans\', sans-serif; font-size: 18px;\"><span style=\"color: #ffffff;\">- 12 Super balls</span></h4>\r\n<h4 style=\"box-sizing: border-box; margin: 0px 0px 10px; color: #000000; font-family: \'Open Sans\', sans-serif; font-size: 18px;\"><span style=\"color: #ffffff;\">- 1 super bonbon</span></h4>', 1000, 'https://cdn.discordapp.com/attachments/698581960179843262/699026473591242772/grade.png', '2020-04-12 20:42:00', '2020-04-13 12:44:43'),
(62, '<h2><strong><span style=\"color: #999999;\">TopDresseur+</span></strong></h2>', 'Grade', 'grade', '<h4 style=\"box-sizing: border-box; margin: 0px 0px 10px; color: #000000; font-family: \'Open Sans\', sans-serif; font-size: 18px;\"><span style=\"color: #ffffff;\">&nbsp;<span style=\"box-sizing: border-box;\"><span style=\"box-sizing: border-box; font-size: 14pt;\">Lors de l\'achat :</span></span></span></h4>\r\n<h4 style=\"box-sizing: border-box; margin: 0px 0px 10px; color: #000000; font-family: \'Open Sans\', sans-serif; font-size: 18px;\"><span style=\"color: #ffffff;\">- Ecaille rouge ( Acc&egrave;s &agrave; des zones et qu&ecirc;tes&nbsp;bonus )</span></h4>\r\n<h4 style=\"box-sizing: border-box; margin: 0px 0px 10px; color: #000000; font-family: \'Open Sans\', sans-serif; font-size: 18px;\"><span style=\"color: #ffffff;\">- 1.500 blocs de claim suppl&eacute;mentaires</span></h4>\r\n<h4 style=\"box-sizing: border-box; margin: 0px 0px 10px; color: #000000; font-family: \'Open Sans\', sans-serif; font-size: 18px;\"><span style=\"color: #ffffff;\">- 3 Jetons en or p&ucirc;r</span></h4>\r\n<h4 style=\"box-sizing: border-box; margin: 0px 0px 10px; color: #000000; font-family: \'Open Sans\', sans-serif; font-size: 18px;\"><span style=\"color: #ffffff;\">- 3 /home dans la r&eacute;gion Palma</span></h4>\r\n<h4 style=\"box-sizing: border-box; margin: 0px 0px 10px; color: #000000; font-family: \'Open Sans\', sans-serif; font-size: 18px;\"><span style=\"color: #ffffff;\">&nbsp;<span style=\"box-sizing: border-box;\"><span style=\"box-sizing: border-box; font-size: 14pt;\">Kit ( 12h ) :</span></span></span></h4>\r\n<h4 style=\"box-sizing: border-box; margin: 0px 0px 10px; color: #000000; font-family: \'Open Sans\', sans-serif; font-size: 18px;\"><span style=\"color: #ffffff;\">- 12 Super balls</span></h4>\r\n<h4 style=\"box-sizing: border-box; margin: 0px 0px 10px; color: #000000; font-family: \'Open Sans\', sans-serif; font-size: 18px;\"><span style=\"color: #ffffff;\">- 1 super bonbon</span></h4>', 3000, 'https://cdn.discordapp.com/attachments/698581960179843262/699026473591242772/grade.png', '2020-04-12 20:42:00', '2020-04-13 16:46:16'),
(63, '<h2><strong><span style=\"color: #999999;\">Legende</span></strong></h2>', 'grade 2', 'grade', '<h4 style=\"box-sizing: border-box; margin: 0px 0px 10px; color: #000000; font-family: \'Open Sans\', sans-serif; font-size: 18px;\"><span style=\"color: #ffffff;\">&nbsp;<span style=\"box-sizing: border-box;\"><span style=\"box-sizing: border-box; font-size: 14pt;\">Lors de l\'achat :</span></span></span></h4>\r\n<h4 style=\"box-sizing: border-box; margin: 0px 0px 10px; color: #000000; font-family: \'Open Sans\', sans-serif; font-size: 18px;\"><span style=\"color: #ffffff;\">- Ecaille rouge ( Acc&egrave;s &agrave; des zones et qu&ecirc;tes&nbsp;bonus )</span></h4>\r\n<h4 style=\"box-sizing: border-box; margin: 0px 0px 10px; color: #000000; font-family: \'Open Sans\', sans-serif; font-size: 18px;\"><span style=\"color: #ffffff;\">- 1.500 blocs de claim suppl&eacute;mentaires</span></h4>\r\n<h4 style=\"box-sizing: border-box; margin: 0px 0px 10px; color: #000000; font-family: \'Open Sans\', sans-serif; font-size: 18px;\"><span style=\"color: #ffffff;\">- 3 Jetons en or p&ucirc;r</span></h4>\r\n<h4 style=\"box-sizing: border-box; margin: 0px 0px 10px; color: #000000; font-family: \'Open Sans\', sans-serif; font-size: 18px;\"><span style=\"color: #ffffff;\">- 3 /home dans la r&eacute;gion Palma</span></h4>\r\n<h4 style=\"box-sizing: border-box; margin: 0px 0px 10px; color: #000000; font-family: \'Open Sans\', sans-serif; font-size: 18px;\"><span style=\"color: #ffffff;\">&nbsp;<span style=\"box-sizing: border-box;\"><span style=\"box-sizing: border-box; font-size: 14pt;\">Kit ( 12h ) :</span></span></span></h4>\r\n<h4 style=\"box-sizing: border-box; margin: 0px 0px 10px; color: #000000; font-family: \'Open Sans\', sans-serif; font-size: 18px;\"><span style=\"color: #ffffff;\">- 12 Super balls</span></h4>\r\n<h4 style=\"box-sizing: border-box; margin: 0px 0px 10px; color: #000000; font-family: \'Open Sans\', sans-serif; font-size: 18px;\"><span style=\"color: #ffffff;\">- 1 super bonbon</span></h4>', 5000, 'https://cdn.discordapp.com/attachments/698581960179843262/699026473591242772/grade.png', '2020-04-12 20:42:00', '2020-04-13 16:46:24');

-- --------------------------------------------------------

--
-- Structure de la table `roles`
--

DROP TABLE IF EXISTS `roles`;
CREATE TABLE IF NOT EXISTS `roles` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_name_unique` (`name`) USING HASH
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Administrator', '2020-03-16 22:57:27', '2020-03-16 22:57:27'),
(2, 'user', 'Normal User', '2020-03-16 22:57:27', '2020-03-16 22:57:27');

-- --------------------------------------------------------

--
-- Structure de la table `settings`
--

DROP TABLE IF EXISTS `settings`;
CREATE TABLE IF NOT EXISTS `settings` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT 1,
  `group` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `settings_key_unique` (`key`) USING HASH
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `settings`
--

INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES
(1, 'site.title', 'Site Title', 'EpickCMS', '', 'text', 1, 'Site'),
(2, 'site.description', 'Site Description', 'CMS en cours de création', '', 'text', 2, 'Site'),
(3, 'site.logo', 'Site Logo', '', '', 'image', 3, 'Site'),
(4, 'site.google_analytics_tracking_id', 'Google Analytics Tracking ID', NULL, '', 'text', 4, 'Site'),
(5, 'admin.bg_image', 'Admin Background Image', '', '', 'image', 5, 'Admin'),
(6, 'admin.title', 'Admin Title', 'Admin', '', 'text', 1, 'Admin'),
(7, 'admin.description', 'Admin Description', 'Panel admin', '', 'text', 2, 'Admin'),
(8, 'admin.loader', 'Admin Loader', '', '', 'image', 3, 'Admin'),
(9, 'admin.icon_image', 'Admin Icon Image', '', '', 'image', 4, 'Admin'),
(10, 'admin.google_analytics_client_id', 'Google Analytics Client ID (used for admin dashboard)', NULL, '', 'text', 1, 'Admin');

-- --------------------------------------------------------

--
-- Structure de la table `translations`
--

DROP TABLE IF EXISTS `translations`;
CREATE TABLE IF NOT EXISTS `translations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int(10) UNSIGNED NOT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`) USING HASH
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `translations`
--

INSERT INTO `translations` (`id`, `table_name`, `column_name`, `foreign_key`, `locale`, `value`, `created_at`, `updated_at`) VALUES
(1, 'data_types', 'display_name_singular', 15, 'pt', 'Post', '2020-04-11 15:37:29', '2020-04-11 15:37:29'),
(2, 'data_types', 'display_name_singular', 16, 'pt', 'Página', '2020-04-11 15:37:29', '2020-04-11 15:37:29'),
(3, 'data_types', 'display_name_singular', 1, 'pt', 'Utilizador', '2020-04-11 15:37:29', '2020-04-11 15:37:29'),
(4, 'data_types', 'display_name_singular', 14, 'pt', 'Categoria', '2020-04-11 15:37:29', '2020-04-11 15:37:29'),
(5, 'data_types', 'display_name_singular', 2, 'pt', 'Menu', '2020-04-11 15:37:29', '2020-04-11 15:37:29'),
(6, 'data_types', 'display_name_singular', 13, 'pt', 'Função', '2020-04-11 15:37:29', '2020-04-11 15:37:29'),
(7, 'data_types', 'display_name_plural', 15, 'pt', 'Posts', '2020-04-11 15:37:29', '2020-04-11 15:37:29'),
(8, 'data_types', 'display_name_plural', 16, 'pt', 'Páginas', '2020-04-11 15:37:29', '2020-04-11 15:37:29'),
(9, 'data_types', 'display_name_plural', 1, 'pt', 'Utilizadores', '2020-04-11 15:37:29', '2020-04-11 15:37:29'),
(10, 'data_types', 'display_name_plural', 14, 'pt', 'Categorias', '2020-04-11 15:37:29', '2020-04-11 15:37:29'),
(11, 'data_types', 'display_name_plural', 2, 'pt', 'Menus', '2020-04-11 15:37:29', '2020-04-11 15:37:29'),
(12, 'data_types', 'display_name_plural', 13, 'pt', 'Funções', '2020-04-11 15:37:29', '2020-04-11 15:37:29'),
(13, 'categories', 'slug', 1, 'pt', 'categoria-1', '2020-04-11 15:37:29', '2020-04-11 15:37:29'),
(14, 'categories', 'name', 1, 'pt', 'Categoria 1', '2020-04-11 15:37:29', '2020-04-11 15:37:29'),
(15, 'categories', 'slug', 2, 'pt', 'categoria-2', '2020-04-11 15:37:29', '2020-04-11 15:37:29'),
(16, 'categories', 'name', 2, 'pt', 'Categoria 2', '2020-04-11 15:37:29', '2020-04-11 15:37:29'),
(17, 'pages', 'title', 1, 'pt', 'Olá Mundo', '2020-04-11 15:37:29', '2020-04-11 15:37:29'),
(18, 'pages', 'slug', 1, 'pt', 'ola-mundo', '2020-04-11 15:37:29', '2020-04-11 15:37:29'),
(19, 'pages', 'body', 1, 'pt', '<p>Olá Mundo. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\r\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', '2020-04-11 15:37:29', '2020-04-11 15:37:29'),
(20, 'menu_items', 'title', 1, 'pt', 'Painel de Controle', '2020-04-11 15:37:29', '2020-04-11 15:37:29'),
(21, 'menu_items', 'title', 2, 'pt', 'Media', '2020-04-11 15:37:29', '2020-04-11 15:37:29'),
(22, 'menu_items', 'title', 16, 'pt', 'Publicações', '2020-04-11 15:37:29', '2020-04-11 15:37:29'),
(23, 'menu_items', 'title', 3, 'pt', 'Utilizadores', '2020-04-11 15:37:29', '2020-04-11 15:37:29'),
(24, 'menu_items', 'title', 15, 'pt', 'Categorias', '2020-04-11 15:37:29', '2020-04-11 15:37:29'),
(25, 'menu_items', 'title', 17, 'pt', 'Páginas', '2020-04-11 15:37:29', '2020-04-11 15:37:29'),
(26, 'menu_items', 'title', 14, 'pt', 'Funções', '2020-04-11 15:37:29', '2020-04-11 15:37:29'),
(27, 'menu_items', 'title', 5, 'pt', 'Ferramentas', '2020-04-11 15:37:29', '2020-04-11 15:37:29'),
(28, 'menu_items', 'title', 6, 'pt', 'Menus', '2020-04-11 15:37:29', '2020-04-11 15:37:29'),
(29, 'menu_items', 'title', 7, 'pt', 'Base de dados', '2020-04-11 15:37:29', '2020-04-11 15:37:29'),
(30, 'menu_items', 'title', 10, 'pt', 'Configurações', '2020-04-11 15:37:29', '2020-04-11 15:37:29');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `role_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`) USING HASH,
  KEY `users_role_id_foreign` (`role_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `email_verified_at`, `password`, `remember_token`, `settings`, `created_at`, `updated_at`) VALUES
(1, 1, 'pierre', 'pierre.bouffartigue@yahoo.fr', 'users\\April2020\\MYIRu7s54P9ke70uP7xu.png', NULL, '$2y$10$OZPBqp1k.dUAmnRe9a5bJ.hf5kD3Y0aNOWyO2L3tKW2H0VJmSnZpC', '1rbLWC6T8AVOdpxvGBzp7LhGDGF8iUaXu6QboFAaZSWln3YP16LMkCCITPK4', '{\"locale\":\"fr\"}', '2020-03-16 22:59:51', '2020-04-09 12:25:16'),
(2, 2, 'Test Deux', 'jfezfeziu@yahoo.fr', 'users/default.png', NULL, '$2y$10$BMwUHqj6Wr2slrIBBmXWpe7Q/nAUyiQxJHB7AwxP3WDatxGcTl87O', NULL, NULL, '2020-04-12 14:10:03', '2020-04-12 14:10:03');

-- --------------------------------------------------------

--
-- Structure de la table `user_roles`
--

DROP TABLE IF EXISTS `user_roles`;
CREATE TABLE IF NOT EXISTS `user_roles` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `user_roles_user_id_index` (`user_id`),
  KEY `user_roles_role_id_index` (`role_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `vote`
--

DROP TABLE IF EXISTS `vote`;
CREATE TABLE IF NOT EXISTS `vote` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `count` text COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
