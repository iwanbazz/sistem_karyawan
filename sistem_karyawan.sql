-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 29, 2020 at 04:02 PM
-- Server version: 5.7.24
-- PHP Version: 7.2.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sistem_karyawan`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `parent_id`, `order`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, NULL, 1, 'Category 1', 'category-1', '2019-10-22 11:35:58', '2019-10-22 11:35:58'),
(2, NULL, 1, 'Category 2', 'category-2', '2019-10-22 11:35:58', '2019-10-22 11:35:58');

-- --------------------------------------------------------

--
-- Table structure for table `data_rows`
--

CREATE TABLE `data_rows` (
  `id` int(10) UNSIGNED NOT NULL,
  `data_type_id` int(10) UNSIGNED NOT NULL,
  `field` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `browse` tinyint(1) NOT NULL DEFAULT '1',
  `read` tinyint(1) NOT NULL DEFAULT '1',
  `edit` tinyint(1) NOT NULL DEFAULT '1',
  `add` tinyint(1) NOT NULL DEFAULT '1',
  `delete` tinyint(1) NOT NULL DEFAULT '1',
  `details` text COLLATE utf8mb4_unicode_ci,
  `order` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_rows`
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
(22, 4, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(23, 4, 'parent_id', 'select_dropdown', 'Parent', 0, 0, 1, 1, 1, 1, '{\"default\":\"\",\"null\":\"\",\"options\":{\"\":\"-- None --\"},\"relationship\":{\"key\":\"id\",\"label\":\"name\"}}', 2),
(24, 4, 'order', 'text', 'Order', 1, 1, 1, 1, 1, 1, '{\"default\":1}', 3),
(25, 4, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 4),
(26, 4, 'slug', 'text', 'Slug', 1, 1, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"name\"}}', 5),
(27, 4, 'created_at', 'timestamp', 'Created At', 0, 0, 1, 0, 0, 0, NULL, 6),
(28, 4, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
(29, 5, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(30, 5, 'author_id', 'text', 'Author', 1, 0, 1, 1, 0, 1, NULL, 2),
(31, 5, 'category_id', 'text', 'Category', 1, 0, 1, 1, 1, 0, NULL, 3),
(32, 5, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, NULL, 4),
(33, 5, 'excerpt', 'text_area', 'Excerpt', 1, 0, 1, 1, 1, 1, NULL, 5),
(34, 5, 'body', 'rich_text_box', 'Body', 1, 0, 1, 1, 1, 1, NULL, 6),
(35, 5, 'image', 'image', 'Post Image', 0, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"1000\",\"height\":\"null\"},\"quality\":\"70%\",\"upsize\":true,\"thumbnails\":[{\"name\":\"medium\",\"scale\":\"50%\"},{\"name\":\"small\",\"scale\":\"25%\"},{\"name\":\"cropped\",\"crop\":{\"width\":\"300\",\"height\":\"250\"}}]}', 7),
(36, 5, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\",\"forceUpdate\":true},\"validation\":{\"rule\":\"unique:posts,slug\"}}', 8),
(37, 5, 'meta_description', 'text_area', 'Meta Description', 1, 0, 1, 1, 1, 1, NULL, 9),
(38, 5, 'meta_keywords', 'text_area', 'Meta Keywords', 1, 0, 1, 1, 1, 1, NULL, 10),
(39, 5, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"DRAFT\",\"options\":{\"PUBLISHED\":\"published\",\"DRAFT\":\"draft\",\"PENDING\":\"pending\"}}', 11),
(40, 5, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, NULL, 12),
(41, 5, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 13),
(42, 5, 'seo_title', 'text', 'SEO Title', 0, 1, 1, 1, 1, 1, NULL, 14),
(43, 5, 'featured', 'checkbox', 'Featured', 1, 1, 1, 1, 1, 1, NULL, 15),
(44, 6, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(45, 6, 'author_id', 'text', 'Author', 1, 0, 0, 0, 0, 0, NULL, 2),
(46, 6, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, NULL, 3),
(47, 6, 'excerpt', 'text_area', 'Excerpt', 1, 0, 1, 1, 1, 1, NULL, 4),
(48, 6, 'body', 'rich_text_box', 'Body', 1, 0, 1, 1, 1, 1, NULL, 5),
(49, 6, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\"},\"validation\":{\"rule\":\"unique:pages,slug\"}}', 6),
(50, 6, 'meta_description', 'text', 'Meta Description', 1, 0, 1, 1, 1, 1, NULL, 7),
(51, 6, 'meta_keywords', 'text', 'Meta Keywords', 1, 0, 1, 1, 1, 1, NULL, 8),
(52, 6, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"INACTIVE\",\"options\":{\"INACTIVE\":\"INACTIVE\",\"ACTIVE\":\"ACTIVE\"}}', 9),
(53, 6, 'created_at', 'timestamp', 'Created At', 1, 1, 1, 0, 0, 0, NULL, 10),
(54, 6, 'updated_at', 'timestamp', 'Updated At', 1, 0, 0, 0, 0, 0, NULL, 11),
(55, 6, 'image', 'image', 'Page Image', 0, 1, 1, 1, 1, 1, NULL, 12),
(56, 13, 'id', 'text', 'Id Karyawan', 1, 1, 1, 1, 0, 1, '{}', 1),
(57, 13, 'nama', 'text', 'Nama Karyawan', 0, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required\",\"messages\":{\"required\":\"Nama Karyawan Harus Diisi\"}}}', 2),
(59, 13, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '{}', 4),
(60, 13, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 5),
(61, 14, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(62, 14, 'nama', 'select_dropdown', 'Nama Karyawan', 0, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required\",\"messages\":{\"required\":\"Nama Harus Diisi\"}}}', 2),
(63, 14, 'model_mesin', 'text', 'Model Mesin', 0, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required\",\"messages\":{\"required\":\"Model Mesin Harus Diisi\"}}}', 4),
(64, 14, 'nomor_series', 'text', 'Nomor Series', 0, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required\",\"messages\":{\"required\":\"Nomor Series Harus Diisi\"}}}', 5),
(65, 14, 'laporan_kerusakan', 'text', 'Laporan Kerusakan', 0, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required\",\"messages\":{\"required\":\"Laporan Kerusakan Harus Diisi\"}}}', 6),
(66, 14, 'sparepart_yang_diganti', 'text', 'Sparepart Yang Diganti', 0, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required\",\"messages\":{\"required\":\"Sparepart Yang Di Ganti Harus Diisi\"}}}', 7),
(67, 14, 'status', 'select_dropdown', 'Status', 0, 1, 1, 1, 1, 1, '{\"default\":\"option1\",\"options\":{\"option1\":\"OK\",\"option2\":\"Pending\"}}', 8),
(68, 14, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '{}', 9),
(69, 14, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 10),
(70, 15, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(71, 15, 'nama', 'select_dropdown', 'Nama Karyawan', 0, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required\",\"messages\":{\"required\":\"Nama Harus Diisi\"}}}', 2),
(72, 15, 'pelanggan', 'text', 'Pelanggan', 0, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required\",\"messages\":{\"required\":\"Pelanggan Harus Diisi\"}}}', 4),
(73, 15, 'alamat', 'text', 'Alamat', 0, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required\",\"messages\":{\"required\":\"Alamat Harus Diisi\"}}}', 5),
(74, 15, 'model_mesin', 'text', 'Model Mesin', 0, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required\",\"messages\":{\"required\":\"Model Mesin Harus Diisi\"}}}', 6),
(75, 15, 'nomor_series', 'text', 'Nomor Series', 0, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required\",\"messages\":{\"required\":\"Nomor Series Harus Diisi\"}}}', 7),
(76, 15, 'laporan_kerusakan', 'text', 'Laporan Kerusakan', 0, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required\",\"messages\":{\"required\":\"Laporan Kerusakan Harus Diisi\"}}}', 8),
(77, 15, 'sparepart_yang_diganti', 'text', 'Sparepart Yang Diganti', 0, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required\",\"messages\":{\"required\":\"Sparepart Harus Diisi\"}}}', 9),
(78, 15, 'status', 'select_dropdown', 'Status', 0, 1, 1, 1, 1, 1, '{\"default\":\"option1\",\"options\":{\"option1\":\"OK\",\"option2\":\"Pending\"}}', 10),
(79, 15, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '{}', 11),
(80, 15, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 12),
(81, 13, 'bagian', 'select_dropdown', 'Bagian', 0, 1, 1, 1, 1, 1, '{\"default\":\"option1\",\"options\":{\"option1\":\"Produksi\",\"option2\":\"Service\"},\"validation\":{\"rule\":\"required\",\"messages\":{\"required\":\"Nama Bagian Harus Diisi\"}}}', 3),
(82, 14, 'produksi_belongsto_karyawan_relationship', 'relationship', 'Nama Karyawan', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Karyawan\",\"table\":\"karyawans\",\"type\":\"belongsTo\",\"column\":\"nama\",\"key\":\"nama\",\"label\":\"nama\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":\"0\"}', 3),
(83, 15, 'service_belongsto_karyawan_relationship', 'relationship', 'Nama Karyawan', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Karyawan\",\"table\":\"karyawans\",\"type\":\"belongsTo\",\"column\":\"nama\",\"key\":\"nama\",\"label\":\"nama\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":\"0\"}', 3),
(84, 13, 'no_hp', 'text', 'No Hp', 0, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required\",\"messages\":{\"required\":\"No Hp Harus Diisi\"}}}', 6),
(85, 13, 'alamat', 'text', 'Alamat', 0, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required\",\"messages\":{\"required\":\"Alamat Harus Diisi\"}}}', 7);

-- --------------------------------------------------------

--
-- Table structure for table `data_types`
--

CREATE TABLE `data_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT '0',
  `server_side` tinyint(4) NOT NULL DEFAULT '0',
  `details` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_types`
--

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `details`, `created_at`, `updated_at`) VALUES
(1, 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', 'TCG\\Voyager\\Http\\Controllers\\VoyagerUserController', '', 1, 0, NULL, '2019-10-22 11:34:45', '2019-10-22 11:34:45'),
(2, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, NULL, '2019-10-22 11:34:47', '2019-10-22 11:34:47'),
(3, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, '', '', 1, 0, NULL, '2019-10-22 11:34:48', '2019-10-22 11:34:48'),
(4, 'categories', 'categories', 'Category', 'Categories', 'voyager-categories', 'TCG\\Voyager\\Models\\Category', NULL, '', '', 1, 0, NULL, '2019-10-22 11:35:56', '2019-10-22 11:35:56'),
(5, 'posts', 'posts', 'Post', 'Posts', 'voyager-news', 'TCG\\Voyager\\Models\\Post', 'TCG\\Voyager\\Policies\\PostPolicy', '', '', 1, 0, NULL, '2019-10-22 11:36:02', '2019-10-22 11:36:02'),
(6, 'pages', 'pages', 'Page', 'Pages', 'voyager-file-text', 'TCG\\Voyager\\Models\\Page', NULL, '', '', 1, 0, NULL, '2019-10-22 11:36:07', '2019-10-22 11:36:07'),
(13, 'karyawans', 'karyawans', 'Karyawan', 'Karyawan', NULL, 'App\\Karyawan', NULL, NULL, NULL, 1, 0, '{\"order_column\":\"id\",\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2019-11-13 06:13:46', '2019-12-17 09:29:26'),
(14, 'produksis', 'produksis', 'Produksi', 'Produksi', NULL, 'App\\Produksi', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2019-11-13 06:28:26', '2019-12-16 07:37:17'),
(15, 'services', 'services', 'Service', 'Service', NULL, 'App\\Service', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2019-11-13 06:33:39', '2019-12-17 09:19:41');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `karyawans`
--

CREATE TABLE `karyawans` (
  `id` int(10) UNSIGNED NOT NULL,
  `nama` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bagian` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `no_hp` int(11) DEFAULT NULL,
  `alamat` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `karyawans`
--

INSERT INTO `karyawans` (`id`, `nama`, `bagian`, `created_at`, `updated_at`, `no_hp`, `alamat`) VALUES
(1, 'dwi', 'option1', '2019-12-18 08:00:50', '2019-12-18 08:00:50', 12345, 'jl nangka'),
(2, 'idrial', 'option2', '2019-12-23 22:11:20', '2020-01-12 10:10:13', 322454, 'rumbai'),
(3, 'rian', 'option1', '2019-12-23 22:11:49', '2019-12-23 22:11:49', 876543, 'jl. srikandi'),
(4, 'nurcholis', 'option1', '2019-12-23 22:12:15', '2019-12-23 22:12:15', 98765, 'jl. garuda sakti'),
(5, 'imam', 'option1', '2019-12-23 22:12:39', '2019-12-23 22:12:39', 345673, 'jl. kereta api'),
(6, 'hadi', 'option2', '2019-12-23 22:13:10', '2019-12-23 22:13:10', 987654, 'jl. suka karya'),
(7, 'deni', 'option2', '2019-12-23 22:13:36', '2019-12-23 22:13:36', 890765, 'jl. harapan raya'),
(8, 'velki', 'option2', '2019-12-23 22:13:59', '2019-12-23 22:13:59', 654327, 'jl. marpoyan');

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2019-10-22 11:34:52', '2019-10-22 11:34:52');

-- --------------------------------------------------------

--
-- Table structure for table `menu_items`
--

CREATE TABLE `menu_items` (
  `id` int(10) UNSIGNED NOT NULL,
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
  `parameters` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
(1, 1, 'Dashboard', '', '_self', 'voyager-boat', NULL, NULL, 1, '2019-10-22 11:34:53', '2019-10-22 11:34:53', 'voyager.dashboard', NULL),
(2, 1, 'Media', '', '_self', 'voyager-images', NULL, NULL, 6, '2019-10-22 11:34:54', '2019-11-13 08:17:40', 'voyager.media.index', NULL),
(3, 1, 'Users', '', '_self', 'voyager-person', NULL, NULL, 5, '2019-10-22 11:34:54', '2019-11-13 08:17:28', 'voyager.users.index', NULL),
(4, 1, 'Roles', '', '_self', 'voyager-lock', NULL, NULL, 4, '2019-10-22 11:34:55', '2019-11-13 08:17:28', 'voyager.roles.index', NULL),
(6, 1, 'Menu Builder', '', '_self', 'voyager-list', NULL, 5, 1, '2019-10-22 11:34:55', '2019-11-13 08:15:45', 'voyager.menus.index', NULL),
(7, 1, 'Database', '', '_self', 'voyager-data', NULL, 5, 2, '2019-10-22 11:34:55', '2019-11-13 08:16:59', 'voyager.database.index', NULL),
(8, 1, 'Compass', '', '_self', 'voyager-compass', NULL, 5, 3, '2019-10-22 11:34:55', '2019-11-13 08:16:59', 'voyager.compass.index', NULL),
(9, 1, 'BREAD', '', '_self', 'voyager-bread', NULL, 5, 4, '2019-10-22 11:34:55', '2019-11-13 08:16:59', 'voyager.bread.index', NULL),
(10, 1, 'Settings', '', '_self', 'voyager-settings', NULL, NULL, 8, '2019-10-22 11:34:55', '2019-12-16 06:39:27', 'voyager.settings.index', NULL),
(11, 1, 'Categories', '', '_self', 'voyager-categories', NULL, NULL, 7, '2019-10-22 11:35:57', '2019-11-13 08:17:40', 'voyager.categories.index', NULL),
(14, 1, 'Hooks', '', '_self', 'voyager-hook', NULL, 5, 5, '2019-10-22 11:36:27', '2019-11-13 08:16:59', 'voyager.hooks', NULL),
(21, 1, 'Karyawan', '', '_self', 'voyager-person', '#000000', 24, 1, '2019-11-13 06:13:46', '2019-12-18 08:44:37', 'voyager.karyawans.index', 'null'),
(22, 1, 'Produksi', '', '_self', 'voyager-hammer', '#000000', 25, 1, '2019-11-13 06:28:26', '2019-12-18 08:49:08', 'voyager.produksis.index', 'null'),
(23, 1, 'Service', '', '_self', 'voyager-tools', '#000000', 25, 2, '2019-11-13 06:33:39', '2019-12-18 08:47:28', 'voyager.services.index', 'null'),
(24, 1, 'Manajemen Data', '', '_self', 'voyager-data', '#000000', NULL, 2, '2019-11-13 08:15:24', '2019-12-18 08:43:42', NULL, ''),
(25, 1, 'Laporan Kerja', '', '_self', 'voyager-documentation', '#000000', NULL, 3, '2019-11-13 08:16:45', '2019-12-18 08:46:03', NULL, ''),
(26, 1, 'Tools', '', '_self', 'voyager-tools', '#000000', NULL, 9, '2019-12-16 06:38:03', '2019-12-16 06:39:27', NULL, ''),
(27, 1, 'Menu Builder', '', '_self', 'voyager-list', '#000000', 26, 1, '2019-12-16 06:39:17', '2019-12-16 06:41:24', 'voyager.menus.index', 'null'),
(28, 1, 'Database', '', '_self', 'voyager-data', '#000000', 26, 2, '2019-12-16 06:40:39', '2019-12-16 06:40:49', 'voyager.database.index', NULL),
(29, 1, 'Compass', '', '_self', 'voyager-compass', '#000000', 26, 3, '2019-12-16 06:42:41', '2019-12-16 06:42:52', 'voyager.compass.index', NULL),
(30, 1, 'BREAD', '', '_self', 'voyager-bread', '#000000', 26, 4, '2019-12-16 06:43:24', '2019-12-16 06:43:32', 'voyager.bread.index', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_01_01_000000_add_voyager_user_fields', 1),
(4, '2016_01_01_000000_create_data_types_table', 1),
(5, '2016_05_19_173453_create_menu_table', 1),
(6, '2016_10_21_190000_create_roles_table', 1),
(7, '2016_10_21_190000_create_settings_table', 1),
(8, '2016_11_30_135954_create_permission_table', 1),
(9, '2016_11_30_141208_create_permission_role_table', 1),
(10, '2016_12_26_201236_data_types__add__server_side', 1),
(11, '2017_01_13_000000_add_route_to_menu_items_table', 1),
(12, '2017_01_14_005015_create_translations_table', 1),
(13, '2017_01_15_000000_make_table_name_nullable_in_permissions_table', 1),
(14, '2017_03_06_000000_add_controller_to_data_types_table', 1),
(15, '2017_04_21_000000_add_order_to_data_rows_table', 1),
(16, '2017_07_05_210000_add_policyname_to_data_types_table', 1),
(17, '2017_08_05_000000_add_group_to_settings_table', 1),
(18, '2017_11_26_013050_add_user_role_relationship', 1),
(19, '2017_11_26_015000_create_user_roles_table', 1),
(20, '2018_03_11_000000_add_user_settings', 1),
(21, '2018_03_14_000000_add_details_to_data_types_table', 1),
(22, '2018_03_16_000000_make_settings_value_nullable', 1),
(23, '2019_08_19_000000_create_failed_jobs_table', 1),
(24, '2016_01_01_000000_create_pages_table', 2),
(25, '2016_01_01_000000_create_posts_table', 2),
(26, '2016_02_15_204651_create_categories_table', 2),
(27, '2017_04_11_000000_alter_post_nullable_fields_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci,
  `body` text COLLATE utf8mb4_unicode_ci,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci,
  `status` enum('ACTIVE','INACTIVE') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'INACTIVE',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `author_id`, `title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `created_at`, `updated_at`) VALUES
(1, 0, 'Hello World', 'Hang the jib grog grog blossom grapple dance the hempen jig gangway pressgang bilge rat to go on account lugger. Nelsons folly gabion line draught scallywag fire ship gaff fluke fathom case shot. Sea Legs bilge rat sloop matey gabion long clothes run a shot across the bow Gold Road cog league.', '<p>Hello World. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', 'pages/page1.jpg', 'hello-world', 'Yar Meta Description', 'Keyword1, Keyword2', 'ACTIVE', '2019-10-22 11:36:11', '2019-10-22 11:36:11');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`) VALUES
(1, 'browse_admin', NULL, '2019-10-22 11:34:57', '2019-10-22 11:34:57'),
(2, 'browse_bread', NULL, '2019-10-22 11:34:57', '2019-10-22 11:34:57'),
(3, 'browse_database', NULL, '2019-10-22 11:34:57', '2019-10-22 11:34:57'),
(4, 'browse_media', NULL, '2019-10-22 11:34:57', '2019-10-22 11:34:57'),
(5, 'browse_compass', NULL, '2019-10-22 11:34:57', '2019-10-22 11:34:57'),
(6, 'browse_menus', 'menus', '2019-10-22 11:34:57', '2019-10-22 11:34:57'),
(7, 'read_menus', 'menus', '2019-10-22 11:34:57', '2019-10-22 11:34:57'),
(8, 'edit_menus', 'menus', '2019-10-22 11:34:57', '2019-10-22 11:34:57'),
(9, 'add_menus', 'menus', '2019-10-22 11:34:57', '2019-10-22 11:34:57'),
(10, 'delete_menus', 'menus', '2019-10-22 11:34:58', '2019-10-22 11:34:58'),
(11, 'browse_roles', 'roles', '2019-10-22 11:34:58', '2019-10-22 11:34:58'),
(12, 'read_roles', 'roles', '2019-10-22 11:34:58', '2019-10-22 11:34:58'),
(13, 'edit_roles', 'roles', '2019-10-22 11:34:58', '2019-10-22 11:34:58'),
(14, 'add_roles', 'roles', '2019-10-22 11:34:58', '2019-10-22 11:34:58'),
(15, 'delete_roles', 'roles', '2019-10-22 11:34:58', '2019-10-22 11:34:58'),
(16, 'browse_users', 'users', '2019-10-22 11:34:58', '2019-10-22 11:34:58'),
(17, 'read_users', 'users', '2019-10-22 11:34:58', '2019-10-22 11:34:58'),
(18, 'edit_users', 'users', '2019-10-22 11:34:58', '2019-10-22 11:34:58'),
(19, 'add_users', 'users', '2019-10-22 11:34:58', '2019-10-22 11:34:58'),
(20, 'delete_users', 'users', '2019-10-22 11:34:59', '2019-10-22 11:34:59'),
(21, 'browse_settings', 'settings', '2019-10-22 11:34:59', '2019-10-22 11:34:59'),
(22, 'read_settings', 'settings', '2019-10-22 11:34:59', '2019-10-22 11:34:59'),
(23, 'edit_settings', 'settings', '2019-10-22 11:34:59', '2019-10-22 11:34:59'),
(24, 'add_settings', 'settings', '2019-10-22 11:34:59', '2019-10-22 11:34:59'),
(25, 'delete_settings', 'settings', '2019-10-22 11:34:59', '2019-10-22 11:34:59'),
(26, 'browse_categories', 'categories', '2019-10-22 11:35:57', '2019-10-22 11:35:57'),
(27, 'read_categories', 'categories', '2019-10-22 11:35:57', '2019-10-22 11:35:57'),
(28, 'edit_categories', 'categories', '2019-10-22 11:35:58', '2019-10-22 11:35:58'),
(29, 'add_categories', 'categories', '2019-10-22 11:35:58', '2019-10-22 11:35:58'),
(30, 'delete_categories', 'categories', '2019-10-22 11:35:58', '2019-10-22 11:35:58'),
(31, 'browse_posts', 'posts', '2019-10-22 11:36:04', '2019-10-22 11:36:04'),
(32, 'read_posts', 'posts', '2019-10-22 11:36:04', '2019-10-22 11:36:04'),
(33, 'edit_posts', 'posts', '2019-10-22 11:36:04', '2019-10-22 11:36:04'),
(34, 'add_posts', 'posts', '2019-10-22 11:36:04', '2019-10-22 11:36:04'),
(35, 'delete_posts', 'posts', '2019-10-22 11:36:04', '2019-10-22 11:36:04'),
(36, 'browse_pages', 'pages', '2019-10-22 11:36:10', '2019-10-22 11:36:10'),
(37, 'read_pages', 'pages', '2019-10-22 11:36:10', '2019-10-22 11:36:10'),
(38, 'edit_pages', 'pages', '2019-10-22 11:36:10', '2019-10-22 11:36:10'),
(39, 'add_pages', 'pages', '2019-10-22 11:36:11', '2019-10-22 11:36:11'),
(40, 'delete_pages', 'pages', '2019-10-22 11:36:11', '2019-10-22 11:36:11'),
(41, 'browse_hooks', NULL, '2019-10-22 11:36:27', '2019-10-22 11:36:27'),
(72, 'browse_karyawans', 'karyawans', '2019-11-13 06:13:46', '2019-11-13 06:13:46'),
(73, 'read_karyawans', 'karyawans', '2019-11-13 06:13:46', '2019-11-13 06:13:46'),
(74, 'edit_karyawans', 'karyawans', '2019-11-13 06:13:46', '2019-11-13 06:13:46'),
(75, 'add_karyawans', 'karyawans', '2019-11-13 06:13:46', '2019-11-13 06:13:46'),
(76, 'delete_karyawans', 'karyawans', '2019-11-13 06:13:46', '2019-11-13 06:13:46'),
(77, 'browse_produksis', 'produksis', '2019-11-13 06:28:26', '2019-11-13 06:28:26'),
(78, 'read_produksis', 'produksis', '2019-11-13 06:28:26', '2019-11-13 06:28:26'),
(79, 'edit_produksis', 'produksis', '2019-11-13 06:28:26', '2019-11-13 06:28:26'),
(80, 'add_produksis', 'produksis', '2019-11-13 06:28:26', '2019-11-13 06:28:26'),
(81, 'delete_produksis', 'produksis', '2019-11-13 06:28:26', '2019-11-13 06:28:26'),
(82, 'browse_services', 'services', '2019-11-13 06:33:39', '2019-11-13 06:33:39'),
(83, 'read_services', 'services', '2019-11-13 06:33:39', '2019-11-13 06:33:39'),
(84, 'edit_services', 'services', '2019-11-13 06:33:39', '2019-11-13 06:33:39'),
(85, 'add_services', 'services', '2019-11-13 06:33:39', '2019-11-13 06:33:39'),
(86, 'delete_services', 'services', '2019-11-13 06:33:39', '2019-11-13 06:33:39');

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(1, 3),
(1, 4),
(2, 3),
(3, 3),
(4, 3),
(5, 3),
(6, 1),
(6, 3),
(6, 4),
(7, 1),
(7, 3),
(7, 4),
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
(16, 3),
(17, 3),
(18, 1),
(18, 3),
(19, 3),
(20, 3),
(21, 3),
(22, 3),
(23, 3),
(24, 3),
(25, 3),
(26, 3),
(27, 3),
(28, 3),
(29, 3),
(30, 3),
(31, 3),
(32, 3),
(33, 3),
(34, 3),
(35, 3),
(36, 3),
(37, 3),
(38, 3),
(39, 3),
(40, 3),
(41, 3),
(72, 1),
(72, 3),
(72, 4),
(73, 1),
(73, 3),
(73, 4),
(74, 1),
(74, 3),
(75, 1),
(75, 3),
(76, 1),
(76, 3),
(77, 1),
(77, 3),
(77, 4),
(78, 1),
(78, 3),
(78, 4),
(79, 1),
(79, 3),
(80, 1),
(80, 3),
(81, 1),
(81, 3),
(82, 1),
(82, 3),
(82, 4),
(83, 1),
(83, 3),
(83, 4),
(84, 1),
(84, 3),
(85, 1),
(85, 3),
(86, 1),
(86, 3);

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci,
  `status` enum('PUBLISHED','DRAFT','PENDING') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'DRAFT',
  `featured` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `author_id`, `category_id`, `title`, `seo_title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `featured`, `created_at`, `updated_at`) VALUES
(1, 0, NULL, 'Lorem Ipsum Post', NULL, 'This is the excerpt for the Lorem Ipsum Post', '<p>This is the body of the lorem ipsum post</p>', 'posts/post1.jpg', 'lorem-ipsum-post', 'This is the meta description', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2019-10-22 11:36:07', '2019-10-22 11:36:07'),
(2, 0, NULL, 'My Sample Post', NULL, 'This is the excerpt for the sample Post', '<p>This is the body for the sample post, which includes the body.</p>\n                <h2>We can use all kinds of format!</h2>\n                <p>And include a bunch of other stuff.</p>', 'posts/post2.jpg', 'my-sample-post', 'Meta Description for sample post', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2019-10-22 11:36:07', '2019-10-22 11:36:07'),
(3, 0, NULL, 'Latest Post', NULL, 'This is the excerpt for the latest post', '<p>This is the body for the latest post</p>', 'posts/post3.jpg', 'latest-post', 'This is the meta description', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2019-10-22 11:36:07', '2019-10-22 11:36:07'),
(4, 0, NULL, 'Yarr Post', NULL, 'Reef sails nipperkin bring a spring upon her cable coffer jury mast spike marooned Pieces of Eight poop deck pillage. Clipper driver coxswain galleon hempen halter come about pressgang gangplank boatswain swing the lead. Nipperkin yard skysail swab lanyard Blimey bilge water ho quarter Buccaneer.', '<p>Swab deadlights Buccaneer fire ship square-rigged dance the hempen jig weigh anchor cackle fruit grog furl. Crack Jennys tea cup chase guns pressgang hearties spirits hogshead Gold Road six pounders fathom measured fer yer chains. Main sheet provost come about trysail barkadeer crimp scuttle mizzenmast brig plunder.</p>\n<p>Mizzen league keelhaul galleon tender cog chase Barbary Coast doubloon crack Jennys tea cup. Blow the man down lugsail fire ship pinnace cackle fruit line warp Admiral of the Black strike colors doubloon. Tackle Jack Ketch come about crimp rum draft scuppers run a shot across the bow haul wind maroon.</p>\n<p>Interloper heave down list driver pressgang holystone scuppers tackle scallywag bilged on her anchor. Jack Tar interloper draught grapple mizzenmast hulk knave cable transom hogshead. Gaff pillage to go on account grog aft chase guns piracy yardarm knave clap of thunder.</p>', 'posts/post4.jpg', 'yarr-post', 'this be a meta descript', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2019-10-22 11:36:07', '2019-10-22 11:36:07');

-- --------------------------------------------------------

--
-- Table structure for table `produksis`
--

CREATE TABLE `produksis` (
  `id` int(10) UNSIGNED NOT NULL,
  `nama` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_mesin` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nomor_series` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `laporan_kerusakan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sparepart_yang_diganti` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `produksis`
--

INSERT INTO `produksis` (`id`, `nama`, `model_mesin`, `nomor_series`, `laporan_kerusakan`, `sparepart_yang_diganti`, `status`, `created_at`, `updated_at`) VALUES
(1, 'dwi', 'canon', '123', 'panel', 'lcd', 'option1', '2019-12-18 08:04:57', '2019-12-18 08:04:57'),
(2, 'rian', 'xerox', '89765', 'drum catridge', 'drum, cleaning blade, chip drum', 'option1', '2019-12-23 22:20:15', '2019-12-23 22:20:15'),
(3, 'nurcholis', 'bizhub', '3456', 'fuser', 'upper, lower', 'option2', '2019-12-23 22:21:03', '2019-12-23 22:21:03'),
(4, 'imam', 'canon', '97658', 'kertas nyangkut', 'sponge kaset, karet paper feed besar dan kecil', 'option2', '2019-12-23 22:22:27', '2019-12-23 22:22:27');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Administrator', '2019-10-22 11:34:56', '2019-10-22 11:34:56'),
(3, 'superadmin', 'super admin', '2019-11-13 08:06:16', '2019-11-13 08:06:16'),
(4, 'bos', 'bos', '2019-12-16 07:43:08', '2019-12-16 07:43:08');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` int(10) UNSIGNED NOT NULL,
  `nama` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pelanggan` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alamat` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_mesin` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nomor_series` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `laporan_kerusakan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sparepart_yang_diganti` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `nama`, `pelanggan`, `alamat`, `model_mesin`, `nomor_series`, `laporan_kerusakan`, `sparepart_yang_diganti`, `status`, `created_at`, `updated_at`) VALUES
(1, 'idrial', 'ahmad fc', 'jl. seroja', 'xerox', '78654', 'adf tidak tarik, karet kaset habis', 'karet adf, karet kaset', 'option1', '2019-12-23 22:29:36', '2019-12-23 22:29:36'),
(2, 'hadi', 'bonbon fc', 'jl. sudirman', 'canon', '89590', 'fuser pemanas', 'upper, lower, karet exit', 'option1', '2019-12-23 22:30:40', '2019-12-23 22:30:40'),
(3, 'velki', 'palapa fc', 'jl. harapan raya', 'canon', '90754', 'hasil pudar', 'wire', 'option2', '2019-12-23 22:31:46', '2019-12-23 22:31:46'),
(4, 'deni', 'safira fc', 'jl. nangka', 'xerox', '65950', 'kaset 4 tidak detect', 'sensor kaset', 'option2', '2019-12-23 22:32:55', '2019-12-23 22:32:55');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `details` text COLLATE utf8mb4_unicode_ci,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `group` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES
(1, 'site.title', 'Site Title', NULL, '', 'text', 1, 'Site'),
(2, 'site.description', 'Site Description', 'Site Description', '', 'text', 2, 'Site'),
(3, 'site.logo', 'Site Logo', 'settings\\December2019\\57HvksNh3sqU5VcXhfsA.png', '', 'image', 3, 'Site'),
(4, 'site.google_analytics_tracking_id', 'Google Analytics Tracking ID', NULL, '', 'text', 4, 'Site'),
(5, 'admin.bg_image', 'Admin Background Image', 'settings\\December2019\\8giEjot4Rs3cVoPcsQvH.png', '', 'image', 5, 'Admin'),
(6, 'admin.title', 'Admin Title', 'Laporan Kerja Teknisi (LKT)', '', 'text', 1, 'Admin'),
(7, 'admin.description', 'Admin Description', 'Selamat Datang di Sistem Informasi LKT CV. Insan Mandiri', '', 'text', 2, 'Admin'),
(8, 'admin.loader', 'Admin Loader', 'settings\\December2019\\d3lzmXn7DIi82ztOlbQn.png', '', 'image', 3, 'Admin'),
(9, 'admin.icon_image', 'Admin Icon Image', 'settings\\December2019\\fAXhOzl2RTDOaV3Jzn52.jpg', '', 'image', 4, 'Admin'),
(10, 'admin.google_analytics_client_id', 'Google Analytics Client ID (used for admin dashboard)', NULL, '', 'text', 1, 'Admin');

-- --------------------------------------------------------

--
-- Table structure for table `translations`
--

CREATE TABLE `translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int(10) UNSIGNED NOT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `translations`
--

INSERT INTO `translations` (`id`, `table_name`, `column_name`, `foreign_key`, `locale`, `value`, `created_at`, `updated_at`) VALUES
(1, 'data_types', 'display_name_singular', 5, 'pt', 'Post', '2019-10-22 11:36:12', '2019-10-22 11:36:12'),
(2, 'data_types', 'display_name_singular', 6, 'pt', 'Página', '2019-10-22 11:36:12', '2019-10-22 11:36:12'),
(3, 'data_types', 'display_name_singular', 1, 'pt', 'Utilizador', '2019-10-22 11:36:12', '2019-10-22 11:36:12'),
(4, 'data_types', 'display_name_singular', 4, 'pt', 'Categoria', '2019-10-22 11:36:13', '2019-10-22 11:36:13'),
(5, 'data_types', 'display_name_singular', 2, 'pt', 'Menu', '2019-10-22 11:36:13', '2019-10-22 11:36:13'),
(6, 'data_types', 'display_name_singular', 3, 'pt', 'Função', '2019-10-22 11:36:13', '2019-10-22 11:36:13'),
(7, 'data_types', 'display_name_plural', 5, 'pt', 'Posts', '2019-10-22 11:36:13', '2019-10-22 11:36:13'),
(8, 'data_types', 'display_name_plural', 6, 'pt', 'Páginas', '2019-10-22 11:36:14', '2019-10-22 11:36:14'),
(9, 'data_types', 'display_name_plural', 1, 'pt', 'Utilizadores', '2019-10-22 11:36:14', '2019-10-22 11:36:14'),
(10, 'data_types', 'display_name_plural', 4, 'pt', 'Categorias', '2019-10-22 11:36:14', '2019-10-22 11:36:14'),
(11, 'data_types', 'display_name_plural', 2, 'pt', 'Menus', '2019-10-22 11:36:14', '2019-10-22 11:36:14'),
(12, 'data_types', 'display_name_plural', 3, 'pt', 'Funções', '2019-10-22 11:36:15', '2019-10-22 11:36:15'),
(13, 'categories', 'slug', 1, 'pt', 'categoria-1', '2019-10-22 11:36:15', '2019-10-22 11:36:15'),
(14, 'categories', 'name', 1, 'pt', 'Categoria 1', '2019-10-22 11:36:15', '2019-10-22 11:36:15'),
(15, 'categories', 'slug', 2, 'pt', 'categoria-2', '2019-10-22 11:36:15', '2019-10-22 11:36:15'),
(16, 'categories', 'name', 2, 'pt', 'Categoria 2', '2019-10-22 11:36:15', '2019-10-22 11:36:15'),
(17, 'pages', 'title', 1, 'pt', 'Olá Mundo', '2019-10-22 11:36:15', '2019-10-22 11:36:15'),
(18, 'pages', 'slug', 1, 'pt', 'ola-mundo', '2019-10-22 11:36:15', '2019-10-22 11:36:15'),
(19, 'pages', 'body', 1, 'pt', '<p>Olá Mundo. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\r\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', '2019-10-22 11:36:16', '2019-10-22 11:36:16'),
(20, 'menu_items', 'title', 1, 'pt', 'Painel de Controle', '2019-10-22 11:36:16', '2019-10-22 11:36:16'),
(21, 'menu_items', 'title', 2, 'pt', 'Media', '2019-10-22 11:36:16', '2019-10-22 11:36:16'),
(22, 'menu_items', 'title', 12, 'pt', 'Publicações', '2019-10-22 11:36:16', '2019-10-22 11:36:16'),
(23, 'menu_items', 'title', 3, 'pt', 'Utilizadores', '2019-10-22 11:36:16', '2019-10-22 11:36:16'),
(24, 'menu_items', 'title', 11, 'pt', 'Categorias', '2019-10-22 11:36:16', '2019-10-22 11:36:16'),
(25, 'menu_items', 'title', 13, 'pt', 'Páginas', '2019-10-22 11:36:16', '2019-10-22 11:36:16'),
(26, 'menu_items', 'title', 4, 'pt', 'Funções', '2019-10-22 11:36:17', '2019-10-22 11:36:17'),
(27, 'menu_items', 'title', 5, 'pt', 'Ferramentas', '2019-10-22 11:36:17', '2019-10-22 11:36:17'),
(28, 'menu_items', 'title', 6, 'pt', 'Menus', '2019-10-22 11:36:18', '2019-10-22 11:36:18'),
(29, 'menu_items', 'title', 7, 'pt', 'Base de dados', '2019-10-22 11:36:18', '2019-10-22 11:36:18'),
(30, 'menu_items', 'title', 10, 'pt', 'Configurações', '2019-10-22 11:36:18', '2019-10-22 11:36:18');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `email_verified_at`, `password`, `remember_token`, `settings`, `created_at`, `updated_at`) VALUES
(1, 1, 'Admin', 'admin@admin.com', 'users\\January2020\\eX3Odrs7jpGWh9KGJbN0.jpg', NULL, '$2y$10$5My/ZkZJHAn5ZyYj.yfc.eI8lbgZv6iJ5AGyldIwANhdhMRuVD35q', 'RuJtjSzoesnHCFNK9OLNRHOro6qMee2A8hCNExDBvgEVZR6PvhD57euEgAYX', '{\"locale\":\"id\"}', '2019-10-22 11:36:02', '2020-01-12 10:36:46'),
(2, 3, 'dwi', 'dwiprasetiawan@gmail.com', 'users/default.png', NULL, '$2y$10$II.4KtsF9RA7Ou7tgmwNzu2fSQ2vCBG35FGlkkquZM5e0wDtL1Y0q', NULL, '{\"locale\":\"id\"}', '2019-11-13 08:07:46', '2019-11-13 08:07:46'),
(3, 4, 'bos', 'bos@bos.com', 'users/default.png', NULL, '$2y$10$7vSTPi6Xi6UCKhiNFTUXmeLk7SWguhmR9QX3OCjblxYAzHYscp.b6', NULL, '{\"locale\":\"id\"}', '2019-12-16 07:44:08', '2019-12-16 07:44:08');

-- --------------------------------------------------------

--
-- Table structure for table `user_roles`
--

CREATE TABLE `user_roles` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`),
  ADD KEY `categories_parent_id_foreign` (`parent_id`);

--
-- Indexes for table `data_rows`
--
ALTER TABLE `data_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `data_rows_data_type_id_foreign` (`data_type_id`);

--
-- Indexes for table `data_types`
--
ALTER TABLE `data_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `data_types_name_unique` (`name`),
  ADD UNIQUE KEY `data_types_slug_unique` (`slug`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `karyawans`
--
ALTER TABLE `karyawans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_name_unique` (`name`);

--
-- Indexes for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_items_menu_id_foreign` (`menu_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pages_slug_unique` (`slug`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permissions_key_index` (`key`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_permission_id_index` (`permission_id`),
  ADD KEY `permission_role_role_id_index` (`role_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`);

--
-- Indexes for table `produksis`
--
ALTER TABLE `produksis`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Indexes for table `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- Indexes for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `user_roles_user_id_index` (`user_id`),
  ADD KEY `user_roles_role_id_index` (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `data_rows`
--
ALTER TABLE `data_rows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;

--
-- AUTO_INCREMENT for table `data_types`
--
ALTER TABLE `data_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `karyawans`
--
ALTER TABLE `karyawans`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `produksis`
--
ALTER TABLE `produksis`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `data_rows`
--
ALTER TABLE `data_rows`
  ADD CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

--
-- Constraints for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
