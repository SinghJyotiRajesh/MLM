-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 28, 2025 at 12:40 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mlm`
--

-- --------------------------------------------------------

--
-- Table structure for table `addresses`
--

CREATE TABLE `addresses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `locality` varchar(255) NOT NULL,
  `address` text NOT NULL,
  `city` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `landmark` varchar(255) DEFAULT NULL,
  `zip` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL DEFAULT 'home',
  `isdefault` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `addresses`
--

INSERT INTO `addresses` (`id`, `user_id`, `name`, `phone`, `locality`, `address`, `city`, `state`, `country`, `landmark`, `zip`, `type`, `isdefault`, `created_at`, `updated_at`) VALUES
(1, 3, 'jyoti rajesh singh', '9876543210', 'Sampuranagar road', '06 bamnager purani chakki', 'Palia, Kalan', 'Uttarpradesh', 'India', 'Near by Gurudware', '262904', 'home', 1, '2025-04-18 03:51:27', '2025-04-18 03:51:27');

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `name`, `slug`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Brand 1', 'brand-1', '1744708857.png', '2025-04-15 03:50:57', '2025-04-15 03:50:57'),
(2, 'Brand 2', 'brand-2', '1744708871.png', '2025-04-15 03:51:11', '2025-04-15 03:51:11'),
(3, 'Brand 3', 'brand-3', '1744708885.png', '2025-04-15 03:51:25', '2025-04-15 03:51:25'),
(4, 'Brand 4', 'brand-4', '1744708902.png', '2025-04-15 03:51:42', '2025-04-15 03:51:42'),
(5, 'Brand 5', 'brand-5', '1744708914.jpg', '2025-04-15 03:51:55', '2025-04-15 03:51:55');

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cache`
--

INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('admin@gmail.com|127.0.0.1', 'i:1;', 1745406068),
('admin@gmail.com|127.0.0.1:timer', 'i:1745406068;', 1745406068),
('jyotirajeshsingh173@gmail.com|127.0.0.1', 'i:1;', 1744890228),
('jyotirajeshsingh173@gmail.com|127.0.0.1:timer', 'i:1744890228;', 1744890228);

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `parent_id` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `image`, `parent_id`, `created_at`, `updated_at`) VALUES
(1, 'Category 1', 'category-1', '1744708611.jpg', NULL, '2025-04-15 03:46:55', '2025-04-15 03:46:55'),
(2, 'Category 2', 'category-2', '1744708644.jpg', NULL, '2025-04-15 03:47:24', '2025-04-15 03:47:24'),
(3, 'Category 3', 'category-3', '1744708659.jpg', NULL, '2025-04-15 03:47:39', '2025-04-15 03:47:39'),
(4, 'Category 4', 'category-4', '1744708818.jpg', NULL, '2025-04-15 03:50:18', '2025-04-15 03:50:18'),
(5, 'Category 5', 'category-5', '1744708835.jpg', NULL, '2025-04-15 03:50:36', '2025-04-15 03:50:36');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `comment` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `email`, `phone`, `comment`, `created_at`, `updated_at`) VALUES
(2, 'sujata', 'admin@demo.com', '1234566678', 'rwer', '2025-04-25 06:16:05', '2025-04-25 06:16:05'),
(3, 'krishna', 'user@gmail.com', '9876543210', 'hello', '2025-04-25 06:17:55', '2025-04-25 06:17:55');

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(255) NOT NULL,
  `type` enum('fixed','percent') NOT NULL,
  `value` decimal(8,2) NOT NULL,
  `cart_value` decimal(8,2) NOT NULL,
  `expiry_date` date NOT NULL DEFAULT cast(current_timestamp() as date),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `coupons`
--

INSERT INTO `coupons` (`id`, `code`, `type`, `value`, `cart_value`, `expiry_date`, `created_at`, `updated_at`) VALUES
(1, 'OOF10', 'fixed', 10.00, 100.00, '2025-05-16', '2025-04-15 03:35:43', '2025-04-15 03:35:43'),
(2, 'OFF50', 'fixed', 50.00, 500.00, '2025-06-03', '2025-04-15 03:59:02', '2025-04-15 04:26:26'),
(3, 'OOF30', 'fixed', 30.00, 300.00, '2025-05-17', '2025-04-15 04:00:15', '2025-04-15 04:26:48'),
(5, 'OOF40', 'fixed', 40.00, 400.00, '2025-06-04', '2025-04-15 04:22:10', '2025-04-15 04:22:10'),
(11, 'OOF60', 'fixed', 60.00, 600.00, '2025-04-30', '2025-04-18 06:06:06', '2025-04-18 06:06:06'),
(12, 'OOf70', 'fixed', 700.00, 70.00, '2025-05-09', '2025-04-23 05:31:07', '2025-04-23 05:31:07');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2025_02_03_085733_create_brands_table', 1),
(5, '2025_02_28_111935_create_categories_table', 1),
(6, '2025_03_01_085407_create_products_table', 1),
(7, '2025_04_14_113724_create_coupons_table', 1),
(8, '2025_04_16_090847_create_orders_table', 2),
(9, '2025_04_16_090909_create_order_items_table', 2),
(10, '2025_04_16_090932_create_addresses_table', 2),
(11, '2025_04_16_091011_create_transactions_table', 3),
(12, '2025_04_24_060843_create_slides_table', 4),
(13, '2025_04_25_072028_create_month_names_table', 5),
(14, '2025_04_25_110957_create_contacts_table', 6);

-- --------------------------------------------------------

--
-- Table structure for table `month_names`
--

CREATE TABLE `month_names` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `month_names`
--

INSERT INTO `month_names` (`id`, `name`) VALUES
(1, 'January'),
(2, 'February'),
(3, 'March'),
(4, 'April'),
(5, 'May'),
(6, 'June'),
(7, 'July'),
(8, 'August'),
(9, 'September'),
(10, 'October'),
(11, 'November'),
(12, 'December');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `subtotal` decimal(8,2) NOT NULL,
  `discount` decimal(8,2) NOT NULL DEFAULT 0.00,
  `tax` decimal(8,2) NOT NULL,
  `total` decimal(8,2) NOT NULL,
  `name` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `locality` varchar(255) NOT NULL,
  `address` text NOT NULL,
  `city` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `landmark` varchar(255) DEFAULT NULL,
  `zip` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL DEFAULT 'home',
  `status` enum('ordered','delivered','canceled') NOT NULL DEFAULT 'ordered',
  `is_shipping_different` tinyint(1) NOT NULL DEFAULT 0,
  `delivered_date` date DEFAULT NULL,
  `canceled_date` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `subtotal`, `discount`, `tax`, `total`, `name`, `phone`, `locality`, `address`, `city`, `state`, `country`, `landmark`, `zip`, `type`, `status`, `is_shipping_different`, `delivered_date`, `canceled_date`, `created_at`, `updated_at`) VALUES
(1, 3, 1350.00, 0.00, 283.50, 1633.50, 'jyoti rajesh singh', '9876543210', 'Sampuranagar road', '06 bamnager purani chakki', 'Palia, Kalan', 'Uttarpradesh', 'India', 'Near by Gurudware', '262904', 'home', 'ordered', 0, NULL, NULL, '2025-04-18 04:20:14', '2025-04-18 04:20:14'),
(2, 3, 760.00, 40.00, 159.60, 919.60, 'jyoti rajesh singh', '9876543210', 'Sampuranagar road', '06 bamnager purani chakki', 'Palia, Kalan', 'Uttarpradesh', 'India', 'Near by Gurudware', '262904', 'home', 'canceled', 0, NULL, '2025-04-23', '2025-04-18 05:46:40', '2025-04-23 00:33:43'),
(3, 3, 769.00, 60.00, 161.49, 930.49, 'jyoti rajesh singh', '9876543210', 'Sampuranagar road', '06 bamnager purani chakki', 'Palia, Kalan', 'Uttarpradesh', 'India', 'Near by Gurudware', '262904', 'home', 'canceled', 0, NULL, '2025-04-22', '2025-04-18 06:09:15', '2025-04-22 04:00:01'),
(4, 3, 579.00, 60.00, 121.59, 700.59, 'jyoti rajesh singh', '9876543210', 'Sampuranagar road', '06 bamnager purani chakki', 'Palia, Kalan', 'Uttarpradesh', 'India', 'Near by Gurudware', '262904', 'home', 'canceled', 0, NULL, '2025-04-22', '2025-04-19 05:42:34', '2025-04-22 01:36:13'),
(5, 3, 599.00, 40.00, 125.79, 724.79, 'jyoti rajesh singh', '9876543210', 'Sampuranagar road', '06 bamnager purani chakki', 'Palia, Kalan', 'Uttarpradesh', 'India', 'Near by Gurudware', '262904', 'home', 'delivered', 0, '2025-04-22', NULL, '2025-04-22 00:25:16', '2025-04-22 01:35:17'),
(6, 3, 500.00, 50.00, 105.00, 605.00, 'jyoti rajesh singh', '9876543210', 'Sampuranagar road', '06 bamnager purani chakki', 'Palia, Kalan', 'Uttarpradesh', 'India', 'Near by Gurudware', '262904', 'home', 'canceled', 0, NULL, '2025-04-23', '2025-04-23 00:38:46', '2025-04-23 00:39:08'),
(7, 3, 100.00, 700.00, 21.00, 121.00, 'jyoti rajesh singh', '9876543210', 'Sampuranagar road', '06 bamnager purani chakki', 'Palia, Kalan', 'Uttarpradesh', 'India', 'Near by Gurudware', '262904', 'home', 'canceled', 0, NULL, '2025-04-23', '2025-04-23 05:35:07', '2025-04-23 05:36:04'),
(8, 3, 500.00, 50.00, 105.00, 605.00, 'jyoti rajesh singh', '9876543210', 'Sampuranagar road', '06 bamnager purani chakki', 'Palia, Kalan', 'Uttarpradesh', 'India', 'Near by Gurudware', '262904', 'home', 'canceled', 0, NULL, '2025-04-23', '2025-04-23 05:55:06', '2025-04-23 05:55:20'),
(9, 3, 599.00, 40.00, 125.79, 724.79, 'jyoti rajesh singh', '9876543210', 'Sampuranagar road', '06 bamnager purani chakki', 'Palia, Kalan', 'Uttarpradesh', 'India', 'Near by Gurudware', '262904', 'home', 'canceled', 0, NULL, '2025-04-23', '2025-04-23 06:02:21', '2025-04-23 06:02:34'),
(10, 3, 100.00, 700.00, 21.00, 121.00, 'jyoti rajesh singh', '9876543210', 'Sampuranagar road', '06 bamnager purani chakki', 'Palia, Kalan', 'Uttarpradesh', 'India', 'Near by Gurudware', '262904', 'home', 'canceled', 0, NULL, '2025-04-23', '2025-04-23 06:20:02', '2025-04-23 06:25:32'),
(11, 3, 274.00, 700.00, 57.54, 331.54, 'jyoti rajesh singh', '9876543210', 'Sampuranagar road', '06 bamnager purani chakki', 'Palia, Kalan', 'Uttarpradesh', 'India', 'Near by Gurudware', '262904', 'home', 'canceled', 0, NULL, '2025-04-24', '2025-04-23 06:59:54', '2025-04-24 00:22:45'),
(12, 3, 665.00, 30.00, 139.65, 804.65, 'jyoti rajesh singh', '9876543210', 'Sampuranagar road', '06 bamnager purani chakki', 'Palia, Kalan', 'Uttarpradesh', 'India', 'Near by Gurudware', '262904', 'home', 'canceled', 0, NULL, '2025-04-24', '2025-04-23 23:23:48', '2025-04-24 00:27:09'),
(13, 3, 284.00, 700.00, 59.64, 343.64, 'jyoti rajesh singh', '9876543210', 'Sampuranagar road', '06 bamnager purani chakki', 'Palia, Kalan', 'Uttarpradesh', 'India', 'Near by Gurudware', '262904', 'home', 'canceled', 0, NULL, '2025-04-24', '2025-04-24 00:30:37', '2025-04-24 00:30:54');

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `price` decimal(8,2) NOT NULL,
  `quantity` int(11) NOT NULL,
  `options` longtext DEFAULT NULL,
  `rstatus` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`id`, `product_id`, `order_id`, `price`, `quantity`, `options`, `rstatus`, `created_at`, `updated_at`) VALUES
(1, 4, 2, 800.00, 1, NULL, 0, '2025-04-18 05:46:40', '2025-04-18 05:46:40'),
(2, 7, 3, 279.00, 1, NULL, 0, '2025-04-18 06:09:15', '2025-04-18 06:09:15'),
(3, 1, 3, 550.00, 1, NULL, 0, '2025-04-18 06:09:15', '2025-04-18 06:09:15'),
(4, 7, 4, 279.00, 1, NULL, 0, '2025-04-19 05:42:34', '2025-04-19 05:42:34'),
(5, 6, 4, 360.00, 1, NULL, 0, '2025-04-19 05:42:34', '2025-04-19 05:42:34'),
(6, 6, 5, 360.00, 1, NULL, 0, '2025-04-22 00:25:16', '2025-04-22 00:25:16'),
(7, 7, 5, 279.00, 1, NULL, 0, '2025-04-22 00:25:16', '2025-04-22 00:25:16'),
(8, 1, 6, 550.00, 1, NULL, 0, '2025-04-23 00:38:46', '2025-04-23 00:38:46'),
(9, 4, 7, 800.00, 1, NULL, 0, '2025-04-23 05:35:07', '2025-04-23 05:35:07'),
(10, 1, 8, 550.00, 1, NULL, 0, '2025-04-23 05:55:06', '2025-04-23 05:55:06'),
(11, 6, 9, 360.00, 1, NULL, 0, '2025-04-23 06:02:21', '2025-04-23 06:02:21'),
(12, 7, 9, 279.00, 1, NULL, 0, '2025-04-23 06:02:21', '2025-04-23 06:02:21'),
(13, 4, 10, 800.00, 1, NULL, 0, '2025-04-23 06:20:02', '2025-04-23 06:20:02'),
(14, 11, 11, 350.00, 1, NULL, 0, '2025-04-23 06:59:54', '2025-04-23 06:59:54'),
(15, 10, 11, 345.00, 1, NULL, 0, '2025-04-23 06:59:54', '2025-04-23 06:59:54'),
(16, 7, 11, 279.00, 1, NULL, 0, '2025-04-23 06:59:54', '2025-04-23 06:59:54'),
(17, 10, 12, 345.00, 1, NULL, 0, '2025-04-23 23:23:48', '2025-04-23 23:23:48'),
(18, 11, 12, 350.00, 1, NULL, 0, '2025-04-23 23:23:48', '2025-04-23 23:23:48'),
(19, 7, 13, 279.00, 1, NULL, 0, '2025-04-24 00:30:37', '2025-04-24 00:30:37'),
(20, 6, 13, 360.00, 1, NULL, 0, '2025-04-24 00:30:37', '2025-04-24 00:30:37'),
(21, 10, 13, 345.00, 1, NULL, 0, '2025-04-24 00:30:37', '2025-04-24 00:30:37');

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `short_description` varchar(255) DEFAULT NULL,
  `description` text NOT NULL,
  `regular_price` decimal(8,2) NOT NULL,
  `sale_price` decimal(8,2) DEFAULT NULL,
  `SKU` varchar(255) NOT NULL,
  `stock_status` enum('instock','outofstock') NOT NULL,
  `featured` tinyint(1) NOT NULL DEFAULT 0,
  `quantity` int(10) UNSIGNED NOT NULL DEFAULT 10,
  `image` varchar(255) DEFAULT NULL,
  `images` text DEFAULT NULL,
  `category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `brand_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `slug`, `short_description`, `description`, `regular_price`, `sale_price`, `SKU`, `stock_status`, `featured`, `quantity`, `image`, `images`, `category_id`, `brand_id`, `created_at`, `updated_at`) VALUES
(1, 'Product1', 'product1', 'good dress', 'nice', 1000.00, 550.00, 'Skt1001', 'instock', 0, 15, '1744708970.jpg', '1744708970-1.jpg,1744708970-2.jpg', 1, 1, '2025-04-15 03:52:50', '2025-04-15 03:52:50'),
(2, 'Product2', 'product2', 'beautiful', 'good', 10000.00, 9900.00, 'Skt1002', 'instock', 1, 14, '1744709049.jpg', '', 2, 2, '2025-04-15 03:54:09', '2025-04-25 05:37:58'),
(3, 'Product3', 'product3', 'v', 'jk', 5000.00, 3000.00, 'Skt1003', 'instock', 0, 13, '1744709129.jpg', '1744709129-1.jpg,1744709129-2.jpg', 3, 3, '2025-04-15 03:55:30', '2025-04-15 03:55:30'),
(4, 'Product4', 'product4', 'falling love', 'good choose', 1000.00, 800.00, 'Skt1004', 'instock', 0, 12, '1744709211.jpg', '1744709211-1.jpg,1744709211-2.jpg', 4, 4, '2025-04-15 03:56:52', '2025-04-15 03:56:52'),
(6, 'Product5', 'product5', 'fregr', 'eryrthy', 500.00, 360.00, 'Skt1005', 'instock', 0, 15, '1744976064.jpg', '1744976064-1.jpg,1744976064-2.jpg', 5, 4, '2025-04-18 06:04:28', '2025-04-18 06:04:28'),
(7, 'Product6', 'product6', 'hgfcd', 'fdsc', 300.00, 279.00, 'Skt1006', 'instock', 0, 20, '1744976115.jpg', '1744976115-1.jpg,1744976115-2.jpg', 3, 2, '2025-04-18 06:05:16', '2025-04-18 06:05:16'),
(8, 'Product7', 'product7', 'hello', 'hiii', 300.00, 350.00, 'Skt1007', 'instock', 1, 13, '1745411003.jpg', '1745411003-1.jpg,1745411003-2.jpg', 2, 2, '2025-04-23 06:53:26', '2025-04-25 05:37:43'),
(9, 'Product8', 'product8', 'jhgfd', 'yt5re', 1000.00, 859.00, 'Skt1008', 'instock', 0, 20, '1745411131.jpg', '1745411131-1.jpg,1745411131-2.jpg', 3, 3, '2025-04-23 06:55:31', '2025-04-23 06:55:31'),
(10, 'Product9', 'product9', 'gfds', 'erqawfaref', 300.00, 345.00, 'Skt1009', 'instock', 0, 25, '1745411203.jpg', '1745411203-1.jpg,1745411203-2.jpg', 4, 4, '2025-04-23 06:56:43', '2025-04-23 06:56:43'),
(11, 'Product10', 'product10', 'hgf', 'trgg', 299.00, 350.00, 'Skt10010', 'instock', 0, 30, '1745411262.jpg', '1745411262-1.jpg,1745411262-2.jpg', 5, 5, '2025-04-23 06:57:43', '2025-04-23 06:57:43');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('INvpHrhCHZj5RRSwkn7NWa8WJT9EXVwy4eTjbfoK', 2, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiQm9PQ1Fza2ZFNFpCN0xWTUlkWWdYaTl4VzF6dXRhY2tKZlJBVVFqYSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hZG1pbiI7fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjI7czo0OiJhdXRoIjthOjE6e3M6MjE6InBhc3N3b3JkX2NvbmZpcm1lZF9hdCI7aToxNzQ1ODIyNzQyO319', 1745836490);

-- --------------------------------------------------------

--
-- Table structure for table `slides`
--

CREATE TABLE `slides` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tagline` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `subtitle` varchar(255) NOT NULL,
  `link` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `slides`
--

INSERT INTO `slides` (`id`, `tagline`, `title`, `subtitle`, `link`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 'First Tagline', 'Test Title', 'Test Subtitle', 'http://127.0.0.1:8000/shop', '1745486368.png', 1, '2025-04-24 03:49:29', '2025-04-24 03:49:29'),
(3, 'Long Dress', 'white dress', 'Test Subtitle', 'http://127.0.0.1:8000/shop', '1745492192.jpg', 1, '2025-04-24 05:08:31', '2025-04-24 06:29:32');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `mode` enum('cod','card','paypal') NOT NULL,
  `status` enum('pending','approved','declined','refunded') NOT NULL DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `user_id`, `order_id`, `mode`, `status`, `created_at`, `updated_at`) VALUES
(1, 3, 2, 'cod', 'pending', '2025-04-18 05:46:40', '2025-04-18 05:46:40'),
(2, 3, 3, 'cod', 'pending', '2025-04-18 06:09:15', '2025-04-18 06:09:15'),
(3, 3, 4, 'cod', 'pending', '2025-04-19 05:42:34', '2025-04-19 05:42:34'),
(4, 3, 5, 'cod', 'approved', '2025-04-22 00:25:16', '2025-04-22 01:35:17'),
(5, 3, 6, 'cod', 'pending', '2025-04-23 00:38:46', '2025-04-23 00:38:46'),
(6, 3, 7, 'cod', 'pending', '2025-04-23 05:35:07', '2025-04-23 05:35:07'),
(7, 3, 8, 'cod', 'pending', '2025-04-23 05:55:06', '2025-04-23 05:55:06'),
(8, 3, 9, 'cod', 'pending', '2025-04-23 06:02:21', '2025-04-23 06:02:21'),
(9, 3, 10, 'cod', 'pending', '2025-04-23 06:20:02', '2025-04-23 06:20:02'),
(10, 3, 11, 'cod', 'pending', '2025-04-23 06:59:54', '2025-04-23 06:59:54'),
(11, 3, 12, 'cod', 'pending', '2025-04-23 23:23:48', '2025-04-23 23:23:48'),
(12, 3, 13, 'cod', 'pending', '2025-04-24 00:30:37', '2025-04-24 00:30:37');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `mobile` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `utype` varchar(255) NOT NULL DEFAULT 'USR' COMMENT 'ADM for Admin and USR for User or Customer',
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `mobile`, `email_verified_at`, `password`, `utype`, `remember_token`, `created_at`, `updated_at`) VALUES
(2, 'admin', 'admin@admin.com', '9876543210', NULL, '$2y$12$aVAw/8nKDlJfi3ckp/m8wuWasv.E2LWveY4Rj8.z6cI56u3TI3grq', 'ADM', NULL, '2025-04-15 03:34:07', '2025-04-15 03:34:07'),
(3, 'user', 'user@gmail.com', '7317253998', NULL, '$2y$12$pst2wSwAKjVANgpVW.eSouWkpc3p7Psa7kZBkkAGiW/aTUuZj5iZi', 'USR', NULL, '2025-04-17 06:05:20', '2025-04-17 06:05:20');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addresses`
--
ALTER TABLE `addresses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `addresses_user_id_foreign` (`user_id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `brands_slug_unique` (`slug`);

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `coupons_code_unique` (`code`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `month_names`
--
ALTER TABLE `month_names`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_user_id_foreign` (`user_id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_items_product_id_foreign` (`product_id`),
  ADD KEY `order_items_order_id_foreign` (`order_id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_slug_unique` (`slug`),
  ADD KEY `products_category_id_foreign` (`category_id`),
  ADD KEY `products_brand_id_foreign` (`brand_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `slides`
--
ALTER TABLE `slides`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transactions_user_id_foreign` (`user_id`),
  ADD KEY `transactions_order_id_foreign` (`order_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_mobile_unique` (`mobile`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `addresses`
--
ALTER TABLE `addresses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `month_names`
--
ALTER TABLE `month_names`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `slides`
--
ALTER TABLE `slides`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `addresses`
--
ALTER TABLE `addresses`
  ADD CONSTRAINT `addresses_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `order_items_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `order_items_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_brand_id_foreign` FOREIGN KEY (`brand_id`) REFERENCES `brands` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `transactions`
--
ALTER TABLE `transactions`
  ADD CONSTRAINT `transactions_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `transactions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
