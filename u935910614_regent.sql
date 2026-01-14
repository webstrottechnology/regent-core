-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Dec 24, 2025 at 08:50 AM
-- Server version: 11.8.3-MariaDB-log
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `u935910614_regent`
--

-- --------------------------------------------------------

--
-- Table structure for table `activations`
--

CREATE TABLE `activations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(120) NOT NULL,
  `completed` tinyint(1) NOT NULL DEFAULT 0,
  `completed_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `activations`
--

INSERT INTO `activations` (`id`, `user_id`, `code`, `completed`, `completed_at`, `created_at`, `updated_at`) VALUES
(1, 1, 'nDx5Cg9V90kHuDGVzFTx1kG4SySxzV4g', 1, '2025-10-20 17:05:48', '2025-10-20 17:05:48', '2025-10-20 17:05:48'),
(2, 2, '0U3MEmGhQQVdyNetGnS5YPGaWlKAp5gG', 1, '2025-11-05 13:14:13', '2025-11-05 13:14:13', '2025-11-05 13:14:13'),
(3, 3, 'YNYBYCUaxiWeOpn1n7W53DQHrr1AqQNN', 1, '2025-11-28 13:09:40', '2025-11-28 13:09:40', '2025-11-28 13:09:40');

-- --------------------------------------------------------

--
-- Table structure for table `admin_notifications`
--

CREATE TABLE `admin_notifications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) NOT NULL,
  `action_label` varchar(191) DEFAULT NULL,
  `action_url` varchar(191) DEFAULT NULL,
  `description` varchar(400) DEFAULT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `permission` varchar(191) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_notifications`
--

INSERT INTO `admin_notifications` (`id`, `title`, `action_label`, `action_url`, `description`, `read_at`, `created_at`, `updated_at`, `permission`) VALUES
(6, 'New order #SF-10000003', 'View', '/admin/ecommerce/orders/edit/3', 'Barrie Jones ordered 1 product(s)', NULL, '2025-11-15 12:28:18', '2025-11-15 12:28:18', ''),
(7, 'New order #SF-10000003', 'View', '/admin/ecommerce/orders/edit/4', 'Barrie Jones ordered 1 product(s)', NULL, '2025-11-15 12:51:48', '2025-11-15 12:51:48', ''),
(8, 'New order #SF-10000005', 'View', '/admin/ecommerce/orders/edit/5', 'Prateek Choudhary ordered 1 product(s)', NULL, '2025-11-19 09:14:04', '2025-11-19 09:14:04', ''),
(9, 'Confirm payment #SF-10000005', 'View', '/admin/ecommerce/orders/edit/5', 'Order #SF-10000005 Payment was confirmed (amount £413) by admin', NULL, '2025-11-24 06:48:09', '2025-11-24 06:48:09', '');

-- --------------------------------------------------------

--
-- Table structure for table `ads`
--

CREATE TABLE `ads` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `expired_at` datetime DEFAULT NULL,
  `location` varchar(120) DEFAULT NULL,
  `key` varchar(120) NOT NULL,
  `image` varchar(191) DEFAULT NULL,
  `url` varchar(191) DEFAULT NULL,
  `clicked` bigint(20) NOT NULL DEFAULT 0,
  `order` int(11) DEFAULT 0,
  `status` varchar(60) NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `open_in_new_tab` tinyint(1) NOT NULL DEFAULT 1,
  `tablet_image` varchar(191) DEFAULT NULL,
  `mobile_image` varchar(191) DEFAULT NULL,
  `ads_type` varchar(191) DEFAULT NULL,
  `google_adsense_slot_id` varchar(191) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ads`
--

INSERT INTO `ads` (`id`, `name`, `expired_at`, `location`, `key`, `image`, `url`, `clicked`, `order`, `status`, `created_at`, `updated_at`, `open_in_new_tab`, `tablet_image`, `mobile_image`, `ads_type`, `google_adsense_slot_id`) VALUES
(1, 'New Modern & Stylist <br> Crafts', '2027-10-21 00:06:01', NULL, 'IYHICPADQD5X', 'sliders/banner-slider-01.jpg', '/products', 0, 1, 'published', '2025-10-20 17:06:01', '2025-10-20 17:06:01', 1, NULL, NULL, NULL, NULL),
(2, 'Popular Energy with our <br> newest collection', '2030-10-21 00:06:01', NULL, 'R4YAV9FECJUS', 'sliders/banner-slider-02.jpg', '/products', 0, 2, 'published', '2025-10-20 17:06:01', '2025-10-20 17:06:01', 1, NULL, NULL, NULL, NULL),
(3, 'Winter <br> Exclusive In', '2030-10-21 00:06:01', NULL, 'QPTCBJBOJOSY', 'banners/banner-offer-01.jpg', '/products', 0, 3, 'published', '2025-10-20 17:06:01', '2025-10-20 17:06:01', 1, NULL, NULL, NULL, NULL),
(4, '50% Offer', '2026-10-21 00:06:01', NULL, 'T2VFLDYYIJEH', 'banners/banner-offer-02.jpg', '/products', 0, 4, 'published', '2025-10-20 17:06:01', '2025-10-20 17:06:01', 1, NULL, NULL, NULL, NULL),
(5, 'New Modern & Stylist <br> Crafts', '2028-10-21 00:06:01', NULL, 'JO7LLJHFH1RO', 'banners/banner-03-01.jpg', '/products', 0, 5, 'published', '2025-10-20 17:06:01', '2025-10-20 17:06:01', 1, NULL, NULL, NULL, NULL),
(6, 'Lamp <br> Collections', '2029-10-21 00:06:01', NULL, 'L8GDJUBVD2TQ', 'banners/banner-03-02.jpg', '/products', 0, 6, 'published', '2025-10-20 17:06:01', '2025-10-20 17:06:01', 1, NULL, NULL, NULL, NULL),
(7, 'Minimal Chair', '2029-10-21 00:06:01', NULL, 'PXJPAXLOCVRS', 'banners/banner-03-03.jpg', '/products', 0, 7, 'published', '2025-10-20 17:06:01', '2025-10-20 17:06:01', 1, NULL, NULL, NULL, NULL),
(8, '100% Fresh Product <br> Every Hour', '2026-10-21 00:06:01', NULL, 'EMRCINED6AX9', 'sliders/slider-05-banner-1.jpg', '/products', 0, 8, 'published', '2025-10-20 17:06:01', '2025-10-20 17:06:01', 1, NULL, NULL, NULL, NULL),
(9, '100% Fresh Product <br> Every Hour', '2027-10-21 00:06:01', NULL, 'JVMDAIB9HO2I', 'sliders/slider-05-banner-1.jpg', '/products', 0, 9, 'published', '2025-10-20 17:06:01', '2025-10-20 17:06:01', 1, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ads_translations`
--

CREATE TABLE `ads_translations` (
  `lang_code` varchar(191) NOT NULL,
  `ads_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) DEFAULT NULL,
  `image` varchar(191) DEFAULT NULL,
  `url` varchar(191) DEFAULT NULL,
  `tablet_image` varchar(191) DEFAULT NULL,
  `mobile_image` varchar(191) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `announcements`
--

CREATE TABLE `announcements` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `content` text NOT NULL,
  `has_action` tinyint(1) NOT NULL DEFAULT 0,
  `action_label` varchar(60) DEFAULT NULL,
  `action_url` varchar(400) DEFAULT NULL,
  `action_open_new_tab` tinyint(1) NOT NULL DEFAULT 0,
  `dismissible` tinyint(1) NOT NULL DEFAULT 0,
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `announcements`
--

INSERT INTO `announcements` (`id`, `name`, `content`, `has_action`, `action_label`, `action_url`, `action_open_new_tab`, `dismissible`, `start_date`, `end_date`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'Announcement 1', '<strong>Welcome to our international shop! Enjoy free shipping on orders $100 & up</strong>', 1, 'Shop now', '/', 0, 1, '2025-10-21 00:06:43', NULL, 1, '2025-10-20 17:06:43', '2025-10-20 17:06:43'),
(2, 'Announcement 2', '<strong>Trendy 25 silver jewelry, save up 35% off today</strong>', 1, 'Shop now', '/', 0, 1, '2025-10-21 00:06:43', NULL, 1, '2025-10-20 17:06:43', '2025-10-20 17:06:43'),
(3, 'Announcement 3', '<strong>Black Friday and Cyber Monday 2023 Deals for Motion Designers, grab it now!</strong>', 1, 'Shop now', '/', 0, 1, '2025-10-21 00:06:43', NULL, 1, '2025-10-20 17:06:43', '2025-10-20 17:06:43');

-- --------------------------------------------------------

--
-- Table structure for table `announcements_translations`
--

CREATE TABLE `announcements_translations` (
  `lang_code` varchar(191) NOT NULL,
  `announcements_id` bigint(20) UNSIGNED NOT NULL,
  `content` text DEFAULT NULL,
  `action_label` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `audit_histories`
--

CREATE TABLE `audit_histories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `user_type` varchar(191) DEFAULT 'Botble\\ACL\\Models\\User',
  `module` varchar(60) NOT NULL,
  `request` longtext DEFAULT NULL,
  `action` varchar(120) NOT NULL,
  `user_agent` text DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `actor_id` bigint(20) UNSIGNED NOT NULL,
  `actor_type` varchar(191) DEFAULT 'Botble\\ACL\\Models\\User',
  `reference_id` bigint(20) UNSIGNED NOT NULL,
  `reference_name` varchar(191) NOT NULL,
  `type` varchar(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `audit_histories`
--

INSERT INTO `audit_histories` (`id`, `user_id`, `user_type`, `module`, `request`, `action`, `user_agent`, `ip_address`, `actor_id`, `actor_type`, `reference_id`, `reference_name`, `type`, `created_at`, `updated_at`) VALUES
(1094, 2, 'Botble\\ACL\\Models\\User', 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2a0a:ef40:38f:8e02:215f:c5cd:e271:99fe', 2, 'Botble\\ACL\\Models\\User', 2, 'Regent Regent', 'info', '2025-11-19 15:00:18', '2025-11-19 15:00:18'),
(1095, 1, 'Botble\\ACL\\Models\\User', 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2405:201:3005:a991:157e:df6b:dab0:d931', 1, 'Botble\\ACL\\Models\\User', 1, 'Regent Regent', 'info', '2025-11-20 05:01:47', '2025-11-20 05:01:47'),
(1096, 1, 'Botble\\ACL\\Models\\User', 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2405:201:3005:a991:ccb7:4b2d:1bc5:bd62', 1, 'Botble\\ACL\\Models\\User', 1, 'Regent Regent', 'info', '2025-11-20 09:29:44', '2025-11-20 09:29:44'),
(1097, 1, 'Botble\\ACL\\Models\\User', 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2405:201:3005:a991:10d2:d826:ee30:b3f3', 1, 'Botble\\ACL\\Models\\User', 1, 'Regent Regent', 'info', '2025-11-21 06:42:20', '2025-11-21 06:42:20'),
(1098, 1, 'Botble\\ACL\\Models\\User', 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2405:201:3005:a991:8d0d:2933:6f33:53ca', 1, 'Botble\\ACL\\Models\\User', 1, 'Regent Regent', 'info', '2025-11-21 09:06:29', '2025-11-21 09:06:29'),
(1099, 1, 'Botble\\ACL\\Models\\User', 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2405:201:3005:a991:4d62:da7a:ec38:3e94', 1, 'Botble\\ACL\\Models\\User', 1, 'Regent Regent', 'info', '2025-11-22 05:42:27', '2025-11-22 05:42:27'),
(1100, 1, 'Botble\\ACL\\Models\\User', 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2405:201:3005:a991:e878:23a0:a64c:42e0', 1, 'Botble\\ACL\\Models\\User', 1, 'Regent Regent', 'info', '2025-11-24 04:50:59', '2025-11-24 04:50:59'),
(1101, 1, 'Botble\\ACL\\Models\\User', 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2405:201:3005:a991:8cf1:f412:3ce5:2811', 1, 'Botble\\ACL\\Models\\User', 1, 'Regent Regent', 'info', '2025-11-24 05:04:34', '2025-11-24 05:04:34'),
(1102, 1, 'Botble\\ACL\\Models\\User', 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2405:201:3005:a991:8cf1:f412:3ce5:2811', 1, 'Botble\\ACL\\Models\\User', 1, 'Regent Regent', 'info', '2025-11-24 09:04:28', '2025-11-24 09:04:28'),
(1103, 1, 'Botble\\ACL\\Models\\User', 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2405:201:3005:a991:495e:4bab:1940:bbe0', 1, 'Botble\\ACL\\Models\\User', 1, 'Regent Regent', 'info', '2025-11-24 11:30:16', '2025-11-24 11:30:16'),
(1104, 1, 'Botble\\ACL\\Models\\User', 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2405:201:3005:a991:6093:c2de:cde7:3e00', 1, 'Botble\\ACL\\Models\\User', 1, 'Regent Regent', 'info', '2025-11-26 05:40:17', '2025-11-26 05:40:17'),
(1105, 2, 'Botble\\ACL\\Models\\User', 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '116.212.183.52', 2, 'Botble\\ACL\\Models\\User', 2, 'Regent Regent', 'info', '2025-11-26 12:47:08', '2025-11-26 12:47:08'),
(1106, 1, 'Botble\\ACL\\Models\\User', 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2405:201:3005:a991:4914:f6e6:c012:227a', 1, 'Botble\\ACL\\Models\\User', 1, 'Regent Regent', 'info', '2025-11-28 05:09:34', '2025-11-28 05:09:34'),
(1107, 1, 'Botble\\ACL\\Models\\User', 'product', '{\"name\":\"test\",\"model\":\"Botble\\\\Ecommerce\\\\Models\\\\Product\",\"slug\":\"test\",\"slug_id\":\"0\",\"is_slug_editable\":\"1\",\"description\":\"<p>test description&nbsp;<\\/p>\",\"content\":null,\"images\":[null],\"product_type\":\"physical\",\"specification_table_id\":null,\"sale_type\":\"0\",\"sku\":\"SF-2443-46TP\",\"price\":\"0\",\"sale_price\":null,\"start_date\":null,\"end_date\":null,\"price_includes_tax\":\"0\",\"cost_per_item\":\"0\",\"product_id\":null,\"barcode\":null,\"with_storehouse_management\":\"0\",\"quantity\":\"0\",\"allow_checkout_when_out_of_stock\":\"0\",\"stock_status\":\"in_stock\",\"weight\":\"0\",\"length\":\"0\",\"wide\":\"0\",\"height\":\"0\",\"is_added_attributes\":\"0\",\"has_product_options\":\"1\",\"related_products\":null,\"faq_schema_config\":\"[]\",\"seo_meta\":{\"seo_title\":null,\"seo_description\":null,\"index\":\"index\"},\"seo_meta_image\":null,\"submitter\":\"apply\",\"status\":\"published\",\"is_featured\":\"1\",\"brand_id\":null,\"image\":\"5-1-4.png\",\"minimum_order_quantity\":\"0\",\"maximum_order_quantity\":\"0\",\"tag\":null}', 'created', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2405:201:3005:a991:4914:f6e6:c012:227a', 1, 'Botble\\ACL\\Models\\User', 375, 'test', 'info', '2025-11-28 05:26:36', '2025-11-28 05:26:36'),
(1108, 1, 'Botble\\ACL\\Models\\User', 'product', '{\"name\":\"test\",\"model\":\"Botble\\\\Ecommerce\\\\Models\\\\Product\",\"slug\":\"test\",\"slug_id\":\"465\",\"is_slug_editable\":\"1\",\"description\":\"<p>test description&nbsp;<\\/p>\",\"content\":null,\"images\":[null],\"product_type\":\"physical\",\"specification_table_id\":null,\"sale_type\":\"0\",\"sku\":\"SF-2443-46TP\",\"price\":\"120\",\"sale_price\":null,\"start_date\":null,\"end_date\":null,\"price_includes_tax\":\"0\",\"cost_per_item\":\"0\",\"product_id\":\"375\",\"barcode\":null,\"with_storehouse_management\":\"0\",\"quantity\":\"0\",\"allow_checkout_when_out_of_stock\":\"0\",\"stock_status\":\"in_stock\",\"weight\":\"0\",\"length\":\"0\",\"wide\":\"0\",\"height\":\"0\",\"is_added_attributes\":\"0\",\"has_product_options\":\"1\",\"related_products\":null,\"faq_schema_config\":[[{\"key\":\"question\",\"value\":null},{\"key\":\"answer\",\"value\":null}]],\"seo_meta\":{\"seo_title\":null,\"seo_description\":null,\"index\":\"index\"},\"seo_meta_image\":null,\"submitter\":\"apply\",\"status\":\"published\",\"is_featured\":\"1\",\"brand_id\":null,\"image\":\"5-1-4.png\",\"minimum_order_quantity\":\"0\",\"maximum_order_quantity\":\"0\",\"tag\":null}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2405:201:3005:a991:4914:f6e6:c012:227a', 1, 'Botble\\ACL\\Models\\User', 375, 'test', 'primary', '2025-11-28 05:26:56', '2025-11-28 05:26:56'),
(1109, 1, 'Botble\\ACL\\Models\\User', 'product', '{\"name\":\"test\",\"model\":\"Botble\\\\Ecommerce\\\\Models\\\\Product\",\"slug\":\"test\",\"slug_id\":\"465\",\"is_slug_editable\":\"1\",\"description\":\"<p>test description&nbsp;<\\/p>\",\"content\":null,\"images\":[null],\"product_type\":\"physical\",\"specification_table_id\":null,\"sale_type\":\"0\",\"sku\":\"SF-2443-46TP\",\"price\":\"120\",\"sale_price\":null,\"start_date\":null,\"end_date\":null,\"price_includes_tax\":\"0\",\"cost_per_item\":\"0\",\"product_id\":\"375\",\"barcode\":null,\"with_storehouse_management\":\"0\",\"quantity\":\"0\",\"allow_checkout_when_out_of_stock\":\"0\",\"stock_status\":\"in_stock\",\"weight\":\"0\",\"length\":\"0\",\"wide\":\"0\",\"height\":\"0\",\"is_added_attributes\":\"0\",\"has_product_options\":\"1\",\"related_products\":null,\"faq_schema_config\":[[{\"key\":\"question\",\"value\":null},{\"key\":\"answer\",\"value\":null}]],\"seo_meta\":{\"seo_title\":null,\"seo_description\":null,\"index\":\"index\"},\"seo_meta_image\":null,\"submitter\":\"apply\",\"status\":\"published\",\"is_featured\":\"1\",\"brand_id\":null,\"image\":\"5-1-4.png\",\"minimum_order_quantity\":\"0\",\"maximum_order_quantity\":\"0\",\"tag\":null}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2405:201:3005:a991:4914:f6e6:c012:227a', 1, 'Botble\\ACL\\Models\\User', 375, 'test', 'primary', '2025-11-28 05:27:13', '2025-11-28 05:27:13'),
(1110, 1, 'Botble\\ACL\\Models\\User', 'product', '{\"name\":\"test\",\"model\":\"Botble\\\\Ecommerce\\\\Models\\\\Product\",\"slug\":\"test\",\"slug_id\":\"465\",\"is_slug_editable\":\"1\",\"description\":\"<p>test description&nbsp;<\\/p>\",\"content\":null,\"images\":[null,\"5-1-4.png\",\"5-1-3.png\"],\"product_type\":\"physical\",\"specification_table_id\":null,\"sale_type\":\"0\",\"sku\":\"SF-2443-46TP\",\"price\":\"120\",\"sale_price\":null,\"start_date\":null,\"end_date\":null,\"price_includes_tax\":\"0\",\"cost_per_item\":\"0\",\"product_id\":\"375\",\"barcode\":null,\"with_storehouse_management\":\"0\",\"quantity\":\"0\",\"allow_checkout_when_out_of_stock\":\"0\",\"stock_status\":\"in_stock\",\"weight\":\"0\",\"length\":\"0\",\"wide\":\"0\",\"height\":\"0\",\"is_added_attributes\":\"0\",\"has_product_options\":\"1\",\"related_products\":null,\"faq_schema_config\":[[{\"key\":\"question\",\"value\":null},{\"key\":\"answer\",\"value\":null}]],\"seo_meta\":{\"seo_title\":null,\"seo_description\":null,\"index\":\"index\"},\"seo_meta_image\":null,\"submitter\":\"apply\",\"status\":\"published\",\"is_featured\":\"1\",\"brand_id\":null,\"image\":\"5-1-4.png\",\"minimum_order_quantity\":\"0\",\"maximum_order_quantity\":\"0\",\"tag\":null}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2405:201:3005:a991:4914:f6e6:c012:227a', 1, 'Botble\\ACL\\Models\\User', 375, 'test', 'primary', '2025-11-28 05:27:44', '2025-11-28 05:27:44'),
(1111, 1, 'Botble\\ACL\\Models\\User', 'product', '{\"name\":\"weapon 1\",\"model\":\"Botble\\\\Ecommerce\\\\Models\\\\Product\",\"slug\":\"weapon-1\",\"slug_id\":\"0\",\"is_slug_editable\":\"1\",\"description\":\"<p>product descrption here<\\/p>\",\"content\":null,\"images\":[null,\"1113.jpg\"],\"product_type\":\"physical\",\"specification_table_id\":null,\"sale_type\":\"0\",\"sku\":\"SF-2443-GRA5\",\"price\":\"100\",\"sale_price\":\"80\",\"start_date\":null,\"end_date\":null,\"price_includes_tax\":\"0\",\"cost_per_item\":\"0\",\"product_id\":null,\"barcode\":null,\"with_storehouse_management\":\"0\",\"quantity\":\"0\",\"allow_checkout_when_out_of_stock\":\"0\",\"stock_status\":\"in_stock\",\"weight\":\"0\",\"length\":\"0\",\"wide\":\"0\",\"height\":\"0\",\"is_added_attributes\":\"0\",\"has_product_options\":\"1\",\"related_products\":null,\"faq_schema_config\":\"[]\",\"seo_meta\":{\"seo_title\":null,\"seo_description\":null,\"index\":\"index\"},\"seo_meta_image\":null,\"status\":\"published\",\"is_featured\":\"1\",\"categories\":[\"29\"],\"brand_id\":null,\"image\":\"1113.jpg\",\"minimum_order_quantity\":\"0\",\"maximum_order_quantity\":\"0\",\"tag\":null,\"submitter\":\"apply\"}', 'created', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2405:201:3005:a991:4914:f6e6:c012:227a', 1, 'Botble\\ACL\\Models\\User', 376, 'weapon 1', 'info', '2025-11-28 06:41:17', '2025-11-28 06:41:17'),
(1112, 1, 'Botble\\ACL\\Models\\User', 'product', '{\"name\":\"weapon 2\",\"model\":\"Botble\\\\Ecommerce\\\\Models\\\\Product\",\"slug\":\"weapon-2\",\"slug_id\":\"0\",\"is_slug_editable\":\"1\",\"description\":\"<p>description of weapon 2&nbsp;<\\/p>\",\"content\":null,\"images\":[null,\"5-1-3.png\"],\"product_type\":\"physical\",\"specification_table_id\":null,\"sale_type\":\"0\",\"sku\":\"SF-2443-DNZG\",\"price\":\"100\",\"sale_price\":\"95\",\"start_date\":null,\"end_date\":null,\"price_includes_tax\":\"0\",\"cost_per_item\":\"0\",\"product_id\":null,\"barcode\":null,\"with_storehouse_management\":\"0\",\"quantity\":\"0\",\"allow_checkout_when_out_of_stock\":\"0\",\"stock_status\":\"in_stock\",\"weight\":\"0\",\"length\":\"0\",\"wide\":\"0\",\"height\":\"0\",\"is_added_attributes\":\"0\",\"has_product_options\":\"1\",\"related_products\":null,\"faq_schema_config\":\"[]\",\"seo_meta\":{\"seo_title\":null,\"seo_description\":null,\"index\":\"index\"},\"seo_meta_image\":null,\"status\":\"published\",\"is_featured\":\"1\",\"categories\":[\"29\",\"31\"],\"brand_id\":null,\"image\":\"5-1-4.png\",\"minimum_order_quantity\":\"0\",\"maximum_order_quantity\":\"0\",\"tag\":null,\"submitter\":\"apply\"}', 'created', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2405:201:3005:a991:4914:f6e6:c012:227a', 1, 'Botble\\ACL\\Models\\User', 377, 'weapon 2', 'info', '2025-11-28 06:44:41', '2025-11-28 06:44:41'),
(1113, 1, 'Botble\\ACL\\Models\\User', 'product', '{\"name\":\"weapon 1\",\"model\":\"Botble\\\\Ecommerce\\\\Models\\\\Product\",\"slug\":\"weapon-1-1\",\"slug_id\":\"0\",\"is_slug_editable\":\"1\",\"description\":\"<p>description for weapon1<\\/p>\",\"content\":null,\"images\":[null,\"5-1-3.png\",\"5-1-2.png\"],\"product_type\":\"physical\",\"specification_table_id\":null,\"sale_type\":\"0\",\"sku\":\"SF-2443-IRQR\",\"price\":\"100\",\"sale_price\":\"95\",\"start_date\":null,\"end_date\":null,\"price_includes_tax\":\"0\",\"cost_per_item\":\"0\",\"product_id\":null,\"barcode\":null,\"with_storehouse_management\":\"0\",\"quantity\":\"0\",\"allow_checkout_when_out_of_stock\":\"0\",\"stock_status\":\"in_stock\",\"weight\":\"0\",\"length\":\"0\",\"wide\":\"0\",\"height\":\"0\",\"is_added_attributes\":\"0\",\"has_product_options\":\"1\",\"related_products\":null,\"faq_schema_config\":\"[]\",\"seo_meta\":{\"seo_title\":null,\"seo_description\":null,\"index\":\"index\"},\"seo_meta_image\":null,\"status\":\"published\",\"is_featured\":\"0\",\"categories\":[\"31\"],\"brand_id\":null,\"image\":\"5-1-4.png\",\"minimum_order_quantity\":\"0\",\"maximum_order_quantity\":\"0\",\"tag\":null}', 'created', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2405:201:3005:a991:65bd:1fd7:f63a:5fc6', 1, 'Botble\\ACL\\Models\\User', 378, 'weapon 1', 'info', '2025-11-28 09:29:39', '2025-11-28 09:29:39'),
(1114, 1, 'Botble\\ACL\\Models\\User', 'of the system', '[]', 'logged out', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2405:201:3005:a991:65bd:1fd7:f63a:5fc6', 1, 'Botble\\ACL\\Models\\User', 1, 'Regent Regent', 'info', '2025-11-28 11:26:08', '2025-11-28 11:26:08'),
(1115, 1, 'Botble\\ACL\\Models\\User', 'from the admin panel', NULL, 'logged out', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2405:201:3005:a991:65bd:1fd7:f63a:5fc6', 1, 'Botble\\ACL\\Models\\User', 1, 'Regent Regent', 'info', '2025-11-28 11:26:08', '2025-11-28 11:26:08'),
(1116, 1, 'Botble\\ACL\\Models\\User', 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2405:201:3005:a991:65bd:1fd7:f63a:5fc6', 1, 'Botble\\ACL\\Models\\User', 1, 'Regent Regent', 'info', '2025-11-28 11:27:29', '2025-11-28 11:27:29'),
(1117, 2, 'Botble\\ACL\\Models\\User', 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2405:201:3005:a991:65bd:1fd7:f63a:5fc6', 2, 'Botble\\ACL\\Models\\User', 2, 'Regent Regent', 'info', '2025-11-28 11:31:26', '2025-11-28 11:31:26'),
(1118, 2, 'Botble\\ACL\\Models\\User', 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2405:201:3005:a991:bda1:290c:f1bc:5b25', 2, 'Botble\\ACL\\Models\\User', 2, 'Regent Regent', 'info', '2025-11-28 12:54:35', '2025-11-28 12:54:35'),
(1119, 2, 'Botble\\ACL\\Models\\User', 'of the system', '[]', 'logged out', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2405:201:3005:a991:bda1:290c:f1bc:5b25', 2, 'Botble\\ACL\\Models\\User', 2, 'Regent Regent', 'info', '2025-11-28 12:56:48', '2025-11-28 12:56:48'),
(1120, 2, 'Botble\\ACL\\Models\\User', 'from the admin panel', NULL, 'logged out', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2405:201:3005:a991:bda1:290c:f1bc:5b25', 2, 'Botble\\ACL\\Models\\User', 2, 'Regent Regent', 'info', '2025-11-28 12:56:48', '2025-11-28 12:56:48'),
(1121, 1, 'Botble\\ACL\\Models\\User', 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2405:201:3005:a991:bda1:290c:f1bc:5b25', 1, 'Botble\\ACL\\Models\\User', 1, 'Regent Regent', 'info', '2025-11-28 12:57:05', '2025-11-28 12:57:05'),
(1122, 1, 'Botble\\ACL\\Models\\User', 'user', '{\"first_name\":\"Shop\",\"last_name\":\"Manager\",\"email\":\"shop_manager@gmail.com\",\"phone\":null,\"submitter\":\"apply\",\"role_id\":null}', 'created', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2405:201:3005:a991:65bd:1fd7:f63a:5fc6', 1, 'Botble\\ACL\\Models\\User', 3, 'Shop Manager', 'info', '2025-11-28 13:09:40', '2025-11-28 13:09:40'),
(1123, 3, 'Botble\\ACL\\Models\\User', 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2405:201:3005:a991:65bd:1fd7:f63a:5fc6', 3, 'Botble\\ACL\\Models\\User', 3, 'Shop Manager', 'info', '2025-11-28 13:10:12', '2025-11-28 13:10:12'),
(1124, 3, 'Botble\\ACL\\Models\\User', 'of the system', '[]', 'logged out', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2405:201:3005:a991:65bd:1fd7:f63a:5fc6', 3, 'Botble\\ACL\\Models\\User', 3, 'Shop Manager', 'info', '2025-11-28 13:13:58', '2025-11-28 13:13:58'),
(1125, 3, 'Botble\\ACL\\Models\\User', 'from the admin panel', NULL, 'logged out', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2405:201:3005:a991:65bd:1fd7:f63a:5fc6', 3, 'Botble\\ACL\\Models\\User', 3, 'Shop Manager', 'info', '2025-11-28 13:13:59', '2025-11-28 13:13:59'),
(1126, 2, 'Botble\\ACL\\Models\\User', 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2405:201:3005:a991:65bd:1fd7:f63a:5fc6', 2, 'Botble\\ACL\\Models\\User', 2, 'Regent Regent', 'info', '2025-11-28 13:14:23', '2025-11-28 13:14:23'),
(1127, 2, 'Botble\\ACL\\Models\\User', 'of the system', '[]', 'logged out', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2405:201:3005:a991:65bd:1fd7:f63a:5fc6', 2, 'Botble\\ACL\\Models\\User', 2, 'Regent Regent', 'info', '2025-11-28 13:14:34', '2025-11-28 13:14:34'),
(1128, 2, 'Botble\\ACL\\Models\\User', 'from the admin panel', NULL, 'logged out', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2405:201:3005:a991:65bd:1fd7:f63a:5fc6', 2, 'Botble\\ACL\\Models\\User', 2, 'Regent Regent', 'info', '2025-11-28 13:14:34', '2025-11-28 13:14:34'),
(1129, 3, 'Botble\\ACL\\Models\\User', 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2405:201:3005:a991:65bd:1fd7:f63a:5fc6', 3, 'Botble\\ACL\\Models\\User', 3, 'Shop Manager', 'info', '2025-11-28 13:14:54', '2025-11-28 13:14:54'),
(1130, 1, 'Botble\\ACL\\Models\\User', 'user', '{\"_method\":\"PUT\",\"old_password\":\"12345678\"}', 'updated profile', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2405:201:3005:a991:65bd:1fd7:f63a:5fc6', 1, 'Botble\\ACL\\Models\\User', 1, 'Regent Regent', 'info', '2025-11-28 13:17:13', '2025-11-28 13:17:13'),
(1131, 1, 'Botble\\ACL\\Models\\User', 'user', '{\"_method\":\"PUT\",\"old_password\":\"12345678\"}', 'changed password', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2405:201:3005:a991:65bd:1fd7:f63a:5fc6', 1, 'Botble\\ACL\\Models\\User', 1, 'Regent Regent', 'danger', '2025-11-28 13:17:13', '2025-11-28 13:17:13'),
(1132, 1, 'Botble\\ACL\\Models\\User', 'user', '{\"_method\":\"PUT\",\"old_password\":\"12345678\"}', 'has updated his profile', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2405:201:3005:a991:65bd:1fd7:f63a:5fc6', 1, 'Botble\\ACL\\Models\\User', 1, 'Regent Regent', 'primary', '2025-11-28 13:17:13', '2025-11-28 13:17:13'),
(1133, 3, 'Botble\\ACL\\Models\\User', 'of the system', '[]', 'logged out', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2405:201:3005:a991:65bd:1fd7:f63a:5fc6', 3, 'Botble\\ACL\\Models\\User', 3, 'Shop Manager', 'info', '2025-11-28 13:17:46', '2025-11-28 13:17:46'),
(1134, 3, 'Botble\\ACL\\Models\\User', 'from the admin panel', NULL, 'logged out', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2405:201:3005:a991:65bd:1fd7:f63a:5fc6', 3, 'Botble\\ACL\\Models\\User', 3, 'Shop Manager', 'info', '2025-11-28 13:17:46', '2025-11-28 13:17:46'),
(1135, 1, 'Botble\\ACL\\Models\\User', 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2405:201:3005:a991:65bd:1fd7:f63a:5fc6', 1, 'Botble\\ACL\\Models\\User', 1, 'Regent Regent', 'info', '2025-11-28 13:17:51', '2025-11-28 13:17:51'),
(1136, 1, 'Botble\\ACL\\Models\\User', 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2405:201:3005:a991:549b:27a:9c58:8106', 1, 'Botble\\ACL\\Models\\User', 1, 'Regent Regent', 'info', '2025-11-29 05:34:16', '2025-11-29 05:34:16'),
(1137, 1, 'Botble\\ACL\\Models\\User', 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2405:201:3005:a991:549b:27a:9c58:8106', 1, 'Botble\\ACL\\Models\\User', 1, 'Regent Regent', 'info', '2025-11-29 05:34:17', '2025-11-29 05:34:17'),
(1138, 1, 'Botble\\ACL\\Models\\User', 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2405:201:3005:a991:549b:27a:9c58:8106', 1, 'Botble\\ACL\\Models\\User', 1, 'Regent Regent', 'info', '2025-11-29 08:00:12', '2025-11-29 08:00:12'),
(1139, 1, 'Botble\\ACL\\Models\\User', 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2405:201:3005:a991:71f3:8618:e5c4:1dd5', 1, 'Botble\\ACL\\Models\\User', 1, 'Regent Regent', 'info', '2025-12-02 09:42:52', '2025-12-02 09:42:52'),
(1140, 1, 'Botble\\ACL\\Models\\User', 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2405:201:3005:a991:71f3:8618:e5c4:1dd5', 1, 'Botble\\ACL\\Models\\User', 1, 'Regent Regent', 'info', '2025-12-02 13:02:14', '2025-12-02 13:02:14'),
(1141, 1, 'Botble\\ACL\\Models\\User', 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2405:201:3005:a99a:ec25:925c:4439:42cc', 1, 'Botble\\ACL\\Models\\User', 1, 'Regent Regent', 'info', '2025-12-16 05:41:56', '2025-12-16 05:41:56'),
(1142, 1, 'Botble\\ACL\\Models\\User', 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2405:201:3005:a99a:9143:1802:9f45:21ef', 1, 'Botble\\ACL\\Models\\User', 1, 'Regent Regent', 'info', '2025-12-16 09:04:21', '2025-12-16 09:04:21'),
(1143, 2, 'Botble\\ACL\\Models\\User', 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2a0a:ef40:36c:9a01:c486:311f:3eae:5541', 2, 'Botble\\ACL\\Models\\User', 2, 'Regent Regent', 'info', '2025-12-16 14:49:30', '2025-12-16 14:49:30'),
(1144, 2, 'Botble\\ACL\\Models\\User', 'order', '{\"_method\":\"delete\"}', 'deleted', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2a0a:ef40:36c:9a01:c486:311f:3eae:5541', 2, 'Botble\\ACL\\Models\\User', 5, 'ID: 5', 'danger', '2025-12-16 14:52:20', '2025-12-16 14:52:20'),
(1145, 1, 'Botble\\ACL\\Models\\User', 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2405:201:3005:a99a:95f6:775:ceaa:c861', 1, 'Botble\\ACL\\Models\\User', 1, 'Regent Regent', 'info', '2025-12-17 06:09:09', '2025-12-17 06:09:09'),
(1146, 2, 'Botble\\ACL\\Models\\User', 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2a0a:ef40:36c:9a01:57c:819c:6d35:7a98', 2, 'Botble\\ACL\\Models\\User', 2, 'Regent Regent', 'info', '2025-12-17 09:43:01', '2025-12-17 09:43:01'),
(1147, 1, 'Botble\\ACL\\Models\\User', 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2405:201:3005:a99a:95f6:775:ceaa:c861', 1, 'Botble\\ACL\\Models\\User', 1, 'Regent Regent', 'info', '2025-12-17 11:45:40', '2025-12-17 11:45:40'),
(1148, 1, 'Botble\\ACL\\Models\\User', 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2405:201:3005:a99a:882c:40a6:bca8:9132', 1, 'Botble\\ACL\\Models\\User', 1, 'Regent Regent', 'info', '2025-12-18 09:58:13', '2025-12-18 09:58:13'),
(1149, 1, 'Botble\\ACL\\Models\\User', 'of the system', '[]', 'logged out', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2405:201:3005:a99a:882c:40a6:bca8:9132', 1, 'Botble\\ACL\\Models\\User', 1, 'Regent Regent', 'info', '2025-12-18 09:58:21', '2025-12-18 09:58:21'),
(1150, 1, 'Botble\\ACL\\Models\\User', 'from the admin panel', NULL, 'logged out', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2405:201:3005:a99a:882c:40a6:bca8:9132', 1, 'Botble\\ACL\\Models\\User', 1, 'Regent Regent', 'info', '2025-12-18 09:58:21', '2025-12-18 09:58:21'),
(1151, 1, 'Botble\\ACL\\Models\\User', 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2405:201:3005:a99a:882c:40a6:bca8:9132', 1, 'Botble\\ACL\\Models\\User', 1, 'Regent Regent', 'info', '2025-12-18 09:58:37', '2025-12-18 09:58:37'),
(1152, 1, 'Botble\\ACL\\Models\\User', 'of the system', '[]', 'logged out', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2405:201:3005:a99a:882c:40a6:bca8:9132', 1, 'Botble\\ACL\\Models\\User', 1, 'Regent Regent', 'info', '2025-12-18 09:58:41', '2025-12-18 09:58:41'),
(1153, 1, 'Botble\\ACL\\Models\\User', 'from the admin panel', NULL, 'logged out', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2405:201:3005:a99a:882c:40a6:bca8:9132', 1, 'Botble\\ACL\\Models\\User', 1, 'Regent Regent', 'info', '2025-12-18 09:58:41', '2025-12-18 09:58:41'),
(1154, 3, 'Botble\\ACL\\Models\\User', 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2405:201:3005:a99a:882c:40a6:bca8:9132', 3, 'Botble\\ACL\\Models\\User', 3, 'Shop Manager', 'info', '2025-12-18 09:59:30', '2025-12-18 09:59:30'),
(1155, 3, 'Botble\\ACL\\Models\\User', 'of the system', '[]', 'logged out', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2405:201:3005:a99a:882c:40a6:bca8:9132', 3, 'Botble\\ACL\\Models\\User', 3, 'Shop Manager', 'info', '2025-12-18 10:00:31', '2025-12-18 10:00:31'),
(1156, 3, 'Botble\\ACL\\Models\\User', 'from the admin panel', NULL, 'logged out', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2405:201:3005:a99a:882c:40a6:bca8:9132', 3, 'Botble\\ACL\\Models\\User', 3, 'Shop Manager', 'info', '2025-12-18 10:00:31', '2025-12-18 10:00:31'),
(1157, 1, 'Botble\\ACL\\Models\\User', 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2405:201:3005:a99a:882c:40a6:bca8:9132', 1, 'Botble\\ACL\\Models\\User', 1, 'Regent Regent', 'info', '2025-12-18 10:00:36', '2025-12-18 10:00:36'),
(1158, 1, 'Botble\\ACL\\Models\\User', 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2405:201:3005:a99a:19b7:a6f5:6031:d159', 1, 'Botble\\ACL\\Models\\User', 1, 'Regent Regent', 'info', '2025-12-18 10:01:37', '2025-12-18 10:01:37'),
(1159, 1, 'Botble\\ACL\\Models\\User', 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2405:201:3005:a99a:19b7:a6f5:6031:d159', 1, 'Botble\\ACL\\Models\\User', 1, 'Regent Regent', 'info', '2025-12-18 14:07:34', '2025-12-18 14:07:34'),
(1160, 1, 'Botble\\ACL\\Models\\User', 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2405:201:3005:a99a:5825:1575:301a:f280', 1, 'Botble\\ACL\\Models\\User', 1, 'Regent Regent', 'info', '2025-12-19 06:34:44', '2025-12-19 06:34:44'),
(1161, 1, 'Botble\\ACL\\Models\\User', 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2405:201:3005:a99a:f135:23b2:942e:1132', 1, 'Botble\\ACL\\Models\\User', 1, 'Regent Regent', 'info', '2025-12-19 06:47:07', '2025-12-19 06:47:07'),
(1162, 1, 'Botble\\ACL\\Models\\User', 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2405:201:3005:a99a:f135:23b2:942e:1132', 1, 'Botble\\ACL\\Models\\User', 1, 'Regent Regent', 'info', '2025-12-19 09:02:32', '2025-12-19 09:02:32'),
(1163, 1, 'Botble\\ACL\\Models\\User', 'product', '{\"name\":\"weapon 1\",\"model\":\"Botble\\\\Ecommerce\\\\Models\\\\Product\",\"slug\":\"weapon-1-1\",\"slug_id\":\"468\",\"is_slug_editable\":\"1\",\"description\":\"<p>description for weapon1<\\/p>\",\"content\":null,\"images\":[null,\"5-1-3.png\",\"5-1-2.png\"],\"product_type\":\"physical\",\"specification_table_id\":null,\"sale_type\":\"0\",\"sku\":\"SF-2443-IRQR\",\"price\":\"100\",\"sale_price\":\"95\",\"start_date\":null,\"end_date\":null,\"price_includes_tax\":\"0\",\"cost_per_item\":\"0\",\"product_id\":\"378\",\"barcode\":null,\"with_storehouse_management\":\"0\",\"quantity\":\"0\",\"allow_checkout_when_out_of_stock\":\"0\",\"stock_status\":\"in_stock\",\"weight\":\"0\",\"length\":\"0\",\"wide\":\"0\",\"height\":\"0\",\"is_added_attributes\":\"0\",\"has_product_options\":\"1\",\"related_products\":null,\"faq_schema_config\":[[{\"key\":\"question\",\"value\":null},{\"key\":\"answer\",\"value\":null}]],\"seo_meta\":{\"seo_title\":null,\"seo_description\":null,\"index\":\"index\"},\"seo_meta_image\":null,\"status\":\"published\",\"is_featured\":\"0\",\"is_pmd_product\":\"1\",\"categories\":[\"31\"],\"brand_id\":null,\"image\":\"5-1-4.png\",\"minimum_order_quantity\":\"0\",\"maximum_order_quantity\":\"0\",\"tag\":null,\"submitter\":\"apply\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2405:201:3005:a99a:f135:23b2:942e:1132', 1, 'Botble\\ACL\\Models\\User', 378, 'weapon 1', 'primary', '2025-12-19 10:33:24', '2025-12-19 10:33:24'),
(1164, 1, 'Botble\\ACL\\Models\\User', 'product', '{\"name\":\"weapon 1\",\"model\":\"Botble\\\\Ecommerce\\\\Models\\\\Product\",\"slug\":\"weapon-1-1\",\"slug_id\":\"468\",\"is_slug_editable\":\"1\",\"description\":\"<p>description for weapon1<\\/p>\",\"content\":null,\"images\":[null,\"5-1-3.png\",\"5-1-2.png\"],\"product_type\":\"physical\",\"specification_table_id\":null,\"sale_type\":\"0\",\"sku\":\"SF-2443-IRQR\",\"price\":\"100\",\"sale_price\":\"95\",\"start_date\":null,\"end_date\":null,\"price_includes_tax\":\"0\",\"cost_per_item\":\"0\",\"product_id\":\"378\",\"barcode\":null,\"with_storehouse_management\":\"0\",\"quantity\":\"0\",\"allow_checkout_when_out_of_stock\":\"0\",\"stock_status\":\"in_stock\",\"weight\":\"0\",\"length\":\"0\",\"wide\":\"0\",\"height\":\"0\",\"is_added_attributes\":\"0\",\"has_product_options\":\"1\",\"related_products\":null,\"faq_schema_config\":[[{\"key\":\"question\",\"value\":null},{\"key\":\"answer\",\"value\":null}]],\"seo_meta\":{\"seo_title\":null,\"seo_description\":null,\"index\":\"index\"},\"seo_meta_image\":null,\"status\":\"published\",\"is_featured\":\"0\",\"is_pmd_product\":\"1\",\"categories\":[\"31\"],\"brand_id\":null,\"image\":\"5-1-4.png\",\"minimum_order_quantity\":\"0\",\"maximum_order_quantity\":\"0\",\"tag\":null,\"submitter\":\"apply\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2405:201:3005:a99a:f135:23b2:942e:1132', 1, 'Botble\\ACL\\Models\\User', 378, 'weapon 1', 'primary', '2025-12-19 10:34:11', '2025-12-19 10:34:11'),
(1165, 1, 'Botble\\ACL\\Models\\User', 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2405:201:3005:a99a:5825:1575:301a:f280', 1, 'Botble\\ACL\\Models\\User', 1, 'Regent Regent', 'info', '2025-12-19 10:39:33', '2025-12-19 10:39:33'),
(1166, 1, 'Botble\\ACL\\Models\\User', 'product', '{\"name\":\"weapon 1\",\"model\":\"Botble\\\\Ecommerce\\\\Models\\\\Product\",\"slug\":\"weapon-1-1\",\"slug_id\":\"468\",\"is_slug_editable\":\"1\",\"description\":\"<p>description for weapon1<\\/p>\",\"content\":null,\"images\":[null,\"5-1-3.png\",\"5-1-2.png\"],\"product_type\":\"physical\",\"specification_table_id\":null,\"sale_type\":\"0\",\"sku\":\"SF-2443-IRQR\",\"price\":\"100\",\"sale_price\":\"95\",\"start_date\":null,\"end_date\":null,\"price_includes_tax\":\"0\",\"cost_per_item\":\"0\",\"product_id\":\"378\",\"barcode\":null,\"with_storehouse_management\":\"0\",\"quantity\":\"0\",\"allow_checkout_when_out_of_stock\":\"0\",\"stock_status\":\"in_stock\",\"weight\":\"0\",\"length\":\"0\",\"wide\":\"0\",\"height\":\"0\",\"is_added_attributes\":\"0\",\"has_product_options\":\"1\",\"related_products\":null,\"faq_schema_config\":[[{\"key\":\"question\",\"value\":null},{\"key\":\"answer\",\"value\":null}]],\"seo_meta\":{\"seo_title\":null,\"seo_description\":null,\"index\":\"index\"},\"seo_meta_image\":null,\"status\":\"published\",\"is_featured\":\"0\",\"is_pmd_product\":\"1\",\"categories\":[\"31\"],\"brand_id\":null,\"image\":\"5-1-4.png\",\"minimum_order_quantity\":\"0\",\"maximum_order_quantity\":\"0\",\"tag\":null,\"submitter\":\"apply\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2405:201:3005:a99a:f135:23b2:942e:1132', 1, 'Botble\\ACL\\Models\\User', 378, 'weapon 1', 'primary', '2025-12-19 10:50:48', '2025-12-19 10:50:48'),
(1167, 1, 'Botble\\ACL\\Models\\User', 'customer', '{\"name\":\"Prateek Choudhary\",\"email\":\"Prateek.webstrot@gmail.com\",\"phone\":\"+919907642688\",\"dob\":null,\"is_change_password\":\"0\",\"private_notes\":null,\"botble-ecommerce-tables-customer-review-table_length\":\"10\",\"status\":\"activated\",\"is_pmd\":\"1\",\"avatar\":null,\"submitter\":\"apply\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2405:201:3005:a99a:f135:23b2:942e:1132', 1, 'Botble\\ACL\\Models\\User', 17, 'Prateek Choudhary', 'primary', '2025-12-19 11:03:22', '2025-12-19 11:03:22'),
(1168, 1, 'Botble\\ACL\\Models\\User', 'customer', '{\"name\":\"Prateek Choudhary\",\"email\":\"Prateek.webstrot@gmail.com\",\"phone\":\"+919907642688\",\"dob\":\"2025-12-19\",\"is_change_password\":\"0\",\"private_notes\":null,\"botble-ecommerce-tables-customer-review-table_length\":\"10\",\"status\":\"activated\",\"is_pmd\":\"1\",\"avatar\":null,\"submitter\":\"apply\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2405:201:3005:a99a:f135:23b2:942e:1132', 1, 'Botble\\ACL\\Models\\User', 17, 'Prateek Choudhary', 'primary', '2025-12-19 11:03:27', '2025-12-19 11:03:27'),
(1169, 17, 'Botble\\Ecommerce\\Models\\Customer', 'to the customer portal', NULL, 'logged in', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2405:201:3005:a99a:f135:23b2:942e:1132', 17, 'Botble\\Ecommerce\\Models\\Customer', 17, 'Prateek Choudhary', 'info', '2025-12-19 11:05:10', '2025-12-19 11:05:10'),
(1170, 17, 'Botble\\Ecommerce\\Models\\Customer', 'to the customer portal', NULL, 'logged in', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2405:201:3005:a99a:f135:23b2:942e:1132', 17, 'Botble\\Ecommerce\\Models\\Customer', 17, 'Prateek Choudhary', 'info', '2025-12-19 11:05:28', '2025-12-19 11:05:28'),
(1171, 1, 'Botble\\ACL\\Models\\User', 'customer', '{\"name\":\"Prateek Choudhary\",\"email\":\"Prateek.webstrot@gmail.com\",\"phone\":\"+919907642688\",\"dob\":\"2025-12-19\",\"is_change_password\":\"0\",\"private_notes\":null,\"botble-ecommerce-tables-customer-review-table_length\":\"10\",\"submitter\":\"apply\",\"status\":\"activated\",\"is_pmd\":\"0\",\"avatar\":null}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2405:201:3005:a99a:f135:23b2:942e:1132', 1, 'Botble\\ACL\\Models\\User', 17, 'Prateek Choudhary', 'primary', '2025-12-19 11:05:48', '2025-12-19 11:05:48'),
(1172, 1, 'Botble\\ACL\\Models\\User', 'customer', '{\"name\":\"Prateek Choudhary\",\"email\":\"Prateek.webstrot@gmail.com\",\"phone\":\"+919907642688\",\"dob\":\"2025-12-19\",\"is_change_password\":\"0\",\"private_notes\":null,\"botble-ecommerce-tables-customer-review-table_length\":\"10\",\"status\":\"activated\",\"is_pmd\":\"1\",\"avatar\":null,\"submitter\":\"apply\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2405:201:3005:a99a:f135:23b2:942e:1132', 1, 'Botble\\ACL\\Models\\User', 17, 'Prateek Choudhary', 'primary', '2025-12-19 11:08:04', '2025-12-19 11:08:04'),
(1173, 1, 'Botble\\ACL\\Models\\User', 'customer', '{\"name\":\"Prateek Choudhary\",\"email\":\"Prateek.webstrot@gmail.com\",\"phone\":\"+919907642688\",\"dob\":\"2025-12-19\",\"is_change_password\":\"0\",\"private_notes\":null,\"botble-ecommerce-tables-customer-review-table_length\":\"10\",\"status\":\"activated\",\"is_pmd\":\"1\",\"avatar\":null,\"submitter\":\"apply\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2405:201:3005:a99a:f135:23b2:942e:1132', 1, 'Botble\\ACL\\Models\\User', 17, 'Prateek Choudhary', 'primary', '2025-12-19 11:21:15', '2025-12-19 11:21:15'),
(1174, 1, 'Botble\\ACL\\Models\\User', 'customer', '{\"name\":\"Prateek Choudhary\",\"email\":\"Prateek.webstrot@gmail.com\",\"phone\":\"+919907642688\",\"dob\":\"2025-12-19\",\"is_change_password\":\"0\",\"private_notes\":null,\"botble-ecommerce-tables-customer-review-table_length\":\"10\",\"status\":\"activated\",\"is_pmd\":\"1\",\"avatar\":null,\"submitter\":\"apply\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2405:201:3005:a99a:f135:23b2:942e:1132', 1, 'Botble\\ACL\\Models\\User', 17, 'Prateek Choudhary', 'primary', '2025-12-19 11:27:08', '2025-12-19 11:27:08'),
(1175, 1, 'Botble\\ACL\\Models\\User', 'customer', '{\"name\":\"Prateek Choudhary\",\"email\":\"Prateek.webstrot@gmail.com\",\"phone\":\"+919907642688\",\"dob\":\"2025-12-19\",\"is_change_password\":\"0\",\"private_notes\":null,\"botble-ecommerce-tables-customer-review-table_length\":\"10\",\"status\":\"activated\",\"is_pmd\":\"1\",\"avatar\":null,\"submitter\":\"apply\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2405:201:3005:a99a:f135:23b2:942e:1132', 1, 'Botble\\ACL\\Models\\User', 17, 'Prateek Choudhary', 'primary', '2025-12-19 11:27:37', '2025-12-19 11:27:37'),
(1176, 1, 'Botble\\ACL\\Models\\User', 'customer', '{\"name\":\"Prateek Choudhary\",\"email\":\"Prateek.webstrot@gmail.com\",\"phone\":\"+919907642688\",\"dob\":\"2025-12-19\",\"is_change_password\":\"0\",\"private_notes\":null,\"botble-ecommerce-tables-customer-review-table_length\":\"10\",\"status\":\"activated\",\"is_pmd\":\"1\",\"avatar\":null,\"submitter\":\"apply\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2405:201:3005:a99a:f135:23b2:942e:1132', 1, 'Botble\\ACL\\Models\\User', 17, 'Prateek Choudhary', 'primary', '2025-12-19 11:28:18', '2025-12-19 11:28:18'),
(1177, 1, 'Botble\\ACL\\Models\\User', 'customer', '{\"name\":\"Prateek Choudhary\",\"email\":\"Prateek.webstrot@gmail.com\",\"phone\":\"+919907642688\",\"dob\":\"2025-12-19\",\"is_change_password\":\"0\",\"private_notes\":null,\"botble-ecommerce-tables-customer-review-table_length\":\"10\",\"status\":\"activated\",\"is_pmd\":\"0\",\"avatar\":null,\"submitter\":\"apply\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2405:201:3005:a99a:f135:23b2:942e:1132', 1, 'Botble\\ACL\\Models\\User', 17, 'Prateek Choudhary', 'primary', '2025-12-19 11:28:48', '2025-12-19 11:28:48'),
(1178, 1, 'Botble\\ACL\\Models\\User', 'customer', '{\"name\":\"Prateek Choudhary\",\"email\":\"Prateek.webstrot@gmail.com\",\"phone\":\"+919907642688\",\"dob\":\"2025-12-19\",\"is_change_password\":\"0\",\"private_notes\":null,\"botble-ecommerce-tables-customer-review-table_length\":\"10\",\"status\":\"activated\",\"is_pmd\":\"1\",\"avatar\":null,\"submitter\":\"apply\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2405:201:3005:a99a:f135:23b2:942e:1132', 1, 'Botble\\ACL\\Models\\User', 17, 'Prateek Choudhary', 'primary', '2025-12-19 11:29:10', '2025-12-19 11:29:10'),
(1179, 1, 'Botble\\ACL\\Models\\User', 'product', '{\"name\":\"weapon 1\",\"model\":\"Botble\\\\Ecommerce\\\\Models\\\\Product\",\"slug\":\"weapon-1-1\",\"slug_id\":\"468\",\"is_slug_editable\":\"1\",\"description\":\"<p>description for weapon1<\\/p>\",\"content\":null,\"images\":[null,\"5-1-3.png\",\"5-1-2.png\"],\"product_type\":\"physical\",\"specification_table_id\":null,\"sale_type\":\"0\",\"sku\":\"SF-2443-IRQR\",\"price\":\"100\",\"sale_price\":\"95\",\"start_date\":null,\"end_date\":null,\"price_includes_tax\":\"0\",\"cost_per_item\":\"0\",\"product_id\":\"378\",\"barcode\":null,\"with_storehouse_management\":\"0\",\"quantity\":\"0\",\"allow_checkout_when_out_of_stock\":\"0\",\"stock_status\":\"in_stock\",\"weight\":\"0\",\"length\":\"0\",\"wide\":\"0\",\"height\":\"0\",\"is_added_attributes\":\"0\",\"has_product_options\":\"1\",\"related_products\":null,\"faq_schema_config\":[[{\"key\":\"question\",\"value\":null},{\"key\":\"answer\",\"value\":null}]],\"seo_meta\":{\"seo_title\":null,\"seo_description\":null,\"index\":\"index\"},\"seo_meta_image\":null,\"status\":\"published\",\"is_featured\":\"0\",\"is_pmd_product\":\"0\",\"categories\":[\"31\"],\"brand_id\":null,\"image\":\"5-1-4.png\",\"minimum_order_quantity\":\"0\",\"maximum_order_quantity\":\"0\",\"tag\":null,\"submitter\":\"apply\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2405:201:3005:a99a:f135:23b2:942e:1132', 1, 'Botble\\ACL\\Models\\User', 378, 'weapon 1', 'primary', '2025-12-19 11:29:30', '2025-12-19 11:29:30'),
(1180, 1, 'Botble\\ACL\\Models\\User', 'customer', '{\"name\":\"Prateek Choudhary\",\"email\":\"Prateek.webstrot@gmail.com\",\"phone\":\"+919907642688\",\"dob\":\"2025-12-19\",\"is_change_password\":\"0\",\"private_notes\":null,\"botble-ecommerce-tables-customer-review-table_length\":\"10\",\"status\":\"activated\",\"is_pmd\":\"0\",\"avatar\":null,\"submitter\":\"apply\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2405:201:3005:a99a:f135:23b2:942e:1132', 1, 'Botble\\ACL\\Models\\User', 17, 'Prateek Choudhary', 'primary', '2025-12-19 11:29:44', '2025-12-19 11:29:44'),
(1181, 1, 'Botble\\ACL\\Models\\User', 'product', '{\"name\":\"weapon 1\",\"model\":\"Botble\\\\Ecommerce\\\\Models\\\\Product\",\"slug\":\"weapon-1-1\",\"slug_id\":\"468\",\"is_slug_editable\":\"1\",\"description\":\"<p>description for weapon1<\\/p>\",\"content\":null,\"images\":[null,\"5-1-3.png\",\"5-1-2.png\"],\"product_type\":\"physical\",\"specification_table_id\":null,\"sale_type\":\"0\",\"sku\":\"SF-2443-IRQR\",\"price\":\"100\",\"sale_price\":\"95\",\"start_date\":null,\"end_date\":null,\"price_includes_tax\":\"0\",\"cost_per_item\":\"0\",\"product_id\":\"378\",\"barcode\":null,\"with_storehouse_management\":\"0\",\"quantity\":\"0\",\"allow_checkout_when_out_of_stock\":\"0\",\"stock_status\":\"in_stock\",\"weight\":\"0\",\"length\":\"0\",\"wide\":\"0\",\"height\":\"0\",\"is_added_attributes\":\"0\",\"has_product_options\":\"1\",\"related_products\":null,\"faq_schema_config\":[[{\"key\":\"question\",\"value\":null},{\"key\":\"answer\",\"value\":null}]],\"seo_meta\":{\"seo_title\":null,\"seo_description\":null,\"index\":\"index\"},\"seo_meta_image\":null,\"status\":\"published\",\"is_featured\":\"0\",\"is_pmd_product\":\"1\",\"categories\":[\"31\"],\"brand_id\":null,\"image\":\"5-1-4.png\",\"minimum_order_quantity\":\"0\",\"maximum_order_quantity\":\"0\",\"tag\":null,\"submitter\":\"apply\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2405:201:3005:a99a:f135:23b2:942e:1132', 1, 'Botble\\ACL\\Models\\User', 378, 'weapon 1', 'primary', '2025-12-19 12:31:30', '2025-12-19 12:31:30'),
(1182, 1, 'Botble\\ACL\\Models\\User', 'product', '{\"name\":\"weapon 1\",\"model\":\"Botble\\\\Ecommerce\\\\Models\\\\Product\",\"slug\":\"weapon-1-1\",\"slug_id\":\"468\",\"is_slug_editable\":\"1\",\"description\":\"<p>description for weapon1<\\/p>\",\"content\":null,\"images\":[null,\"5-1-3.png\",\"5-1-2.png\"],\"product_type\":\"physical\",\"specification_table_id\":null,\"sale_type\":\"0\",\"sku\":\"SF-2443-IRQR\",\"price\":\"100\",\"sale_price\":\"95\",\"start_date\":null,\"end_date\":null,\"price_includes_tax\":\"0\",\"cost_per_item\":\"0\",\"product_id\":\"378\",\"barcode\":null,\"with_storehouse_management\":\"0\",\"quantity\":\"0\",\"allow_checkout_when_out_of_stock\":\"0\",\"stock_status\":\"in_stock\",\"weight\":\"0\",\"length\":\"0\",\"wide\":\"0\",\"height\":\"0\",\"is_added_attributes\":\"0\",\"has_product_options\":\"1\",\"related_products\":null,\"faq_schema_config\":[[{\"key\":\"question\",\"value\":null},{\"key\":\"answer\",\"value\":null}]],\"seo_meta\":{\"seo_title\":null,\"seo_description\":null,\"index\":\"index\"},\"seo_meta_image\":null,\"status\":\"published\",\"is_featured\":\"0\",\"is_pmd_product\":\"1\",\"categories\":[\"31\"],\"brand_id\":null,\"image\":\"5-1-4.png\",\"minimum_order_quantity\":\"0\",\"maximum_order_quantity\":\"0\",\"tag\":null,\"submitter\":\"apply\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2405:201:3005:a99a:f135:23b2:942e:1132', 1, 'Botble\\ACL\\Models\\User', 378, 'weapon 1', 'primary', '2025-12-19 12:31:44', '2025-12-19 12:31:44');
INSERT INTO `audit_histories` (`id`, `user_id`, `user_type`, `module`, `request`, `action`, `user_agent`, `ip_address`, `actor_id`, `actor_type`, `reference_id`, `reference_name`, `type`, `created_at`, `updated_at`) VALUES
(1183, 1, 'Botble\\ACL\\Models\\User', 'customer', '{\"name\":\"Prateek Choudhary\",\"email\":\"Prateek.webstrot@gmail.com\",\"phone\":\"+919907642688\",\"dob\":\"2025-12-19\",\"is_change_password\":\"0\",\"private_notes\":null,\"botble-ecommerce-tables-customer-review-table_length\":\"10\",\"status\":\"activated\",\"is_pmd\":\"1\",\"avatar\":null,\"submitter\":\"apply\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2405:201:3005:a99a:f135:23b2:942e:1132', 1, 'Botble\\ACL\\Models\\User', 17, 'Prateek Choudhary', 'primary', '2025-12-19 12:32:51', '2025-12-19 12:32:51'),
(1184, 2, 'Botble\\ACL\\Models\\User', 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2405:201:3005:a99a:818a:a2af:3787:46af', 2, 'Botble\\ACL\\Models\\User', 2, 'Regent Regent', 'info', '2025-12-19 13:22:47', '2025-12-19 13:22:47'),
(1185, 1, 'Botble\\ACL\\Models\\User', 'product', '{\"name\":\"weapon 2\",\"model\":\"Botble\\\\Ecommerce\\\\Models\\\\Product\",\"slug\":\"weapon-2\",\"slug_id\":\"467\",\"is_slug_editable\":\"1\",\"description\":\"<p>description of weapon 2&nbsp;<\\/p>\",\"content\":null,\"images\":[null,\"5-1-3.png\"],\"product_type\":\"physical\",\"specification_table_id\":null,\"sale_type\":\"0\",\"sku\":\"SF-2443-DNZG\",\"price\":\"100\",\"sale_price\":\"95\",\"start_date\":null,\"end_date\":null,\"price_includes_tax\":\"0\",\"cost_per_item\":\"0\",\"product_id\":\"377\",\"barcode\":null,\"with_storehouse_management\":\"0\",\"quantity\":\"0\",\"allow_checkout_when_out_of_stock\":\"0\",\"stock_status\":\"in_stock\",\"weight\":\"0\",\"length\":\"0\",\"wide\":\"0\",\"height\":\"0\",\"is_added_attributes\":\"0\",\"has_product_options\":\"1\",\"related_products\":null,\"faq_schema_config\":[[{\"key\":\"question\",\"value\":null},{\"key\":\"answer\",\"value\":null}]],\"seo_meta\":{\"seo_title\":null,\"seo_description\":null,\"index\":\"index\"},\"seo_meta_image\":null,\"status\":\"published\",\"is_featured\":\"1\",\"is_pmd_product\":\"1\",\"categories\":[\"29\",\"31\"],\"brand_id\":null,\"image\":\"5-1-4.png\",\"minimum_order_quantity\":\"0\",\"maximum_order_quantity\":\"0\",\"tag\":null,\"submitter\":\"apply\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2405:201:3005:a99a:f135:23b2:942e:1132', 1, 'Botble\\ACL\\Models\\User', 377, 'weapon 2', 'primary', '2025-12-19 13:39:15', '2025-12-19 13:39:15'),
(1186, 1, 'Botble\\ACL\\Models\\User', 'customer', '{\"name\":\"ajay\",\"email\":\"ajay.webstrot@gmail.com\",\"phone\":\"54451655654\",\"dob\":\"2024-04-16\",\"is_change_password\":\"0\",\"private_notes\":null,\"botble-ecommerce-tables-customer-review-table_length\":\"10\",\"status\":\"activated\",\"is_pmd\":\"1\",\"avatar\":null,\"submitter\":\"apply\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2405:201:3005:a99a:f135:23b2:942e:1132', 1, 'Botble\\ACL\\Models\\User', 12, 'ajay', 'primary', '2025-12-19 13:40:12', '2025-12-19 13:40:12'),
(1187, 17, 'Botble\\Ecommerce\\Models\\Customer', 'to the customer portal', NULL, 'logged in', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2405:201:3005:a99a:f135:23b2:942e:1132', 17, 'Botble\\Ecommerce\\Models\\Customer', 17, 'Prateek Choudhary', 'info', '2025-12-19 13:40:59', '2025-12-19 13:40:59'),
(1188, 1, 'Botble\\ACL\\Models\\User', 'customer', '{\"name\":\"Prateek Choudhary\",\"email\":\"Prateek.webstrot@gmail.com\",\"phone\":\"+919907642688\",\"dob\":\"2025-12-19\",\"is_change_password\":\"0\",\"private_notes\":null,\"botble-ecommerce-tables-customer-review-table_length\":\"10\",\"status\":\"activated\",\"is_pmd\":\"0\",\"avatar\":null,\"submitter\":\"apply\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2405:201:3005:a99a:f135:23b2:942e:1132', 1, 'Botble\\ACL\\Models\\User', 17, 'Prateek Choudhary', 'primary', '2025-12-19 13:41:13', '2025-12-19 13:41:13'),
(1189, 1, 'Botble\\ACL\\Models\\User', 'customer', '{\"name\":\"Prateek Choudhary\",\"email\":\"Prateek.webstrot@gmail.com\",\"phone\":\"+919907642688\",\"dob\":\"2025-12-19\",\"is_change_password\":\"0\",\"private_notes\":null,\"botble-ecommerce-tables-customer-review-table_length\":\"10\",\"status\":\"activated\",\"is_pmd\":\"1\",\"avatar\":null,\"submitter\":\"apply\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2405:201:3005:a99a:f135:23b2:942e:1132', 1, 'Botble\\ACL\\Models\\User', 17, 'Prateek Choudhary', 'primary', '2025-12-19 13:41:24', '2025-12-19 13:41:24'),
(1190, 1, 'Botble\\ACL\\Models\\User', 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2405:201:3005:aa11:c148:484f:4e17:8cef', 1, 'Botble\\ACL\\Models\\User', 1, 'Regent Regent', 'info', '2025-12-22 06:07:52', '2025-12-22 06:07:52'),
(1191, 1, 'Botble\\ACL\\Models\\User', 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2405:201:3005:aa11:c148:484f:4e17:8cef', 1, 'Botble\\ACL\\Models\\User', 1, 'Regent Regent', 'info', '2025-12-22 06:07:53', '2025-12-22 06:07:53'),
(1192, 1, 'Botble\\ACL\\Models\\User', 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2405:201:3005:aa11:38e0:c34f:31f7:c171', 1, 'Botble\\ACL\\Models\\User', 1, 'Regent Regent', 'info', '2025-12-22 11:11:57', '2025-12-22 11:11:57'),
(1193, 1, 'Botble\\ACL\\Models\\User', 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2405:201:3005:aa11:38e0:c34f:31f7:c171', 1, 'Botble\\ACL\\Models\\User', 1, 'Regent Regent', 'info', '2025-12-22 13:35:31', '2025-12-22 13:35:31'),
(1194, 2, 'Botble\\ACL\\Models\\User', 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2401:4900:8821:ed3f:f5b6:fe19:f88:b1fa', 2, 'Botble\\ACL\\Models\\User', 2, 'Regent Regent', 'info', '2025-12-23 12:34:11', '2025-12-23 12:34:11'),
(1195, 1, 'Botble\\ACL\\Models\\User', 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2405:201:3005:aa11:9518:2f45:2023:df75', 1, 'Botble\\ACL\\Models\\User', 1, 'Regent Regent', 'info', '2025-12-24 08:47:20', '2025-12-24 08:47:20');

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(191) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(191) NOT NULL,
  `owner` varchar(191) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(120) NOT NULL,
  `parent_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `description` varchar(400) DEFAULT NULL,
  `status` varchar(60) NOT NULL DEFAULT 'published',
  `author_id` bigint(20) UNSIGNED DEFAULT NULL,
  `author_type` varchar(191) NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `icon` varchar(60) DEFAULT NULL,
  `order` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `is_featured` tinyint(4) NOT NULL DEFAULT 0,
  `is_default` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `parent_id`, `description`, `status`, `author_id`, `author_type`, `icon`, `order`, `is_featured`, `is_default`, `created_at`, `updated_at`) VALUES
(5, 'Guns', 0, '', 'published', 1, 'Botble\\ACL\\Models\\User', NULL, 0, 0, 1, '2025-11-10 07:07:13', '2025-11-10 07:07:26');

-- --------------------------------------------------------

--
-- Table structure for table `categories_translations`
--

CREATE TABLE `categories_translations` (
  `lang_code` varchar(20) NOT NULL,
  `categories_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) DEFAULT NULL,
  `description` varchar(400) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(120) NOT NULL,
  `slug` varchar(120) DEFAULT NULL,
  `state_id` bigint(20) UNSIGNED DEFAULT NULL,
  `country_id` bigint(20) UNSIGNED DEFAULT NULL,
  `record_id` varchar(40) DEFAULT NULL,
  `order` tinyint(4) NOT NULL DEFAULT 0,
  `image` varchar(191) DEFAULT NULL,
  `is_default` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `status` varchar(60) NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `zip_code` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cities_translations`
--

CREATE TABLE `cities_translations` (
  `lang_code` varchar(20) NOT NULL,
  `cities_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(120) DEFAULT NULL,
  `slug` varchar(120) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(60) NOT NULL,
  `email` varchar(60) DEFAULT NULL,
  `phone` varchar(60) DEFAULT NULL,
  `address` varchar(120) DEFAULT NULL,
  `subject` varchar(120) DEFAULT NULL,
  `content` longtext NOT NULL,
  `custom_fields` text DEFAULT NULL,
  `status` varchar(60) NOT NULL DEFAULT 'unread',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `email`, `phone`, `address`, `subject`, `content`, `custom_fields`, `status`, `created_at`, `updated_at`) VALUES
(1, 'ajay', 'ajay.webstrot@gmail.com', '54451655654', 'Sikandarpur, Second Floor, 208, PAL Tower, MG Road, Sector 26, Gurugram, Haryana, 122002', '', 'wdfwadffd', NULL, 'read', '2025-10-29 09:28:16', '2025-11-10 08:15:14'),
(2, 'ajay', 'ajay.webstrot@gmail.com', '54451655654', 'Sikandarpur, Second Floor, 208, PAL Tower, MG Road, Sector 26, Gurugram, Haryana, 122002', '', 'dfd wdfdaw adwf sadfd', NULL, 'read', '2025-10-29 09:29:04', '2025-11-10 08:15:14'),
(3, 'Ajay', 'ajay.webstrot@gmail.com', '74451655654', 'Sikandarpur, Second Floor, 208, PAL Tower, MG Road, Sector 26, Gurugram, Haryana, 122002', 'hghh hbjkh jnjj khyj', 'kkj ikjuho ioujk jki iihyk jij', NULL, 'read', '2025-10-29 09:43:06', '2025-11-10 08:15:14'),
(4, 'Prateek Choudhary', 'Prateek.webstrot@gmail.com', '09907642688', 'ab road', 'test', 'test', NULL, 'read', '2025-11-05 12:03:54', '2025-11-10 08:15:14'),
(5, 'Prateek Choudhary', 'Prateekdewas@gmail.com', '09907642688', 'ab road', 'test', 'test', NULL, 'read', '2025-11-05 12:06:12', '2025-11-10 08:15:14'),
(6, 'Prateek Choudhary', 'Prateek.webstrot@gmail.com', '09907642688', 'ab road', 'test', 'test', NULL, 'unread', '2025-11-14 06:07:34', '2025-11-14 06:07:34'),
(7, 'Prateek Choudhary', 'Prateek.webstrot@gmail.com', '09907642688', 'ab road', 'test', 'test', NULL, 'unread', '2025-11-14 07:00:18', '2025-11-14 07:00:18'),
(8, 'prateek', 'prateek.webstrot@gmail.com', '8989898989', 'test', 'test', 'test msg', NULL, 'unread', '2025-11-14 12:23:03', '2025-11-14 12:23:03'),
(9, 'Prateek Choudhary', 'Prateek.webstrot@gmail.com', '09907642688', 'ab road', 'test', 'test', NULL, 'unread', '2025-11-17 05:20:55', '2025-11-17 05:20:55');

-- --------------------------------------------------------

--
-- Table structure for table `contact_custom_fields`
--

CREATE TABLE `contact_custom_fields` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(191) NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT 0,
  `name` varchar(191) NOT NULL,
  `placeholder` varchar(191) DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 999,
  `status` varchar(191) NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contact_custom_fields_translations`
--

CREATE TABLE `contact_custom_fields_translations` (
  `contact_custom_fields_id` bigint(20) UNSIGNED NOT NULL,
  `lang_code` varchar(191) NOT NULL,
  `name` varchar(191) DEFAULT NULL,
  `placeholder` varchar(191) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contact_custom_field_options`
--

CREATE TABLE `contact_custom_field_options` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `custom_field_id` bigint(20) UNSIGNED NOT NULL,
  `label` varchar(191) DEFAULT NULL,
  `value` varchar(191) NOT NULL,
  `order` int(11) NOT NULL DEFAULT 999,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contact_custom_field_options_translations`
--

CREATE TABLE `contact_custom_field_options_translations` (
  `contact_custom_field_options_id` bigint(20) UNSIGNED NOT NULL,
  `lang_code` varchar(191) NOT NULL,
  `label` varchar(191) DEFAULT NULL,
  `value` varchar(191) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contact_replies`
--

CREATE TABLE `contact_replies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `message` longtext NOT NULL,
  `contact_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(120) NOT NULL,
  `nationality` varchar(120) DEFAULT NULL,
  `order` tinyint(4) NOT NULL DEFAULT 0,
  `image` varchar(191) DEFAULT NULL,
  `is_default` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `status` varchar(60) NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `code` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `countries_translations`
--

CREATE TABLE `countries_translations` (
  `lang_code` varchar(20) NOT NULL,
  `countries_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(120) DEFAULT NULL,
  `nationality` varchar(120) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dashboard_widgets`
--

CREATE TABLE `dashboard_widgets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(120) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `dashboard_widgets`
--

INSERT INTO `dashboard_widgets` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'widget_total_1', '2025-10-24 07:00:22', '2025-10-24 07:00:22'),
(2, 'widget_total_2', '2025-10-24 07:00:22', '2025-10-24 07:00:22'),
(3, 'widget_total_3', '2025-10-24 07:00:23', '2025-10-24 07:00:23'),
(4, 'widget_total_4', '2025-10-24 07:00:23', '2025-10-24 07:00:23'),
(5, 'widget_total_themes', '2025-10-24 07:00:23', '2025-10-24 07:00:23'),
(6, 'widget_total_users', '2025-10-24 07:00:23', '2025-10-24 07:00:23'),
(7, 'widget_total_plugins', '2025-10-24 07:00:23', '2025-10-24 07:00:23'),
(8, 'widget_total_pages', '2025-10-24 07:00:24', '2025-10-24 07:00:24'),
(9, 'widget_posts_recent', '2025-10-24 07:00:24', '2025-10-24 07:00:24'),
(10, 'widget_audit_logs', '2025-10-24 07:00:26', '2025-10-24 07:00:26'),
(11, 'widget_ecommerce_report_general', '2025-10-24 07:00:26', '2025-10-24 07:00:26');

-- --------------------------------------------------------

--
-- Table structure for table `dashboard_widget_settings`
--

CREATE TABLE `dashboard_widget_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `settings` text DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `widget_id` bigint(20) UNSIGNED NOT NULL,
  `order` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `device_tokens`
--

CREATE TABLE `device_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `token` varchar(191) NOT NULL,
  `platform` varchar(191) DEFAULT NULL,
  `app_version` varchar(191) DEFAULT NULL,
  `device_id` varchar(191) DEFAULT NULL,
  `user_type` varchar(191) DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_abandoned_carts`
--

CREATE TABLE `ec_abandoned_carts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` bigint(20) UNSIGNED DEFAULT NULL,
  `session_id` varchar(191) DEFAULT NULL,
  `cart_data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`cart_data`)),
  `total_amount` decimal(15,2) NOT NULL DEFAULT 0.00,
  `items_count` int(11) NOT NULL DEFAULT 0,
  `email` varchar(191) DEFAULT NULL,
  `phone` varchar(191) DEFAULT NULL,
  `customer_name` varchar(191) DEFAULT NULL,
  `abandoned_at` timestamp NULL DEFAULT NULL,
  `reminder_sent_at` timestamp NULL DEFAULT NULL,
  `reminders_sent` int(11) NOT NULL DEFAULT 0,
  `is_recovered` tinyint(1) NOT NULL DEFAULT 0,
  `recovered_at` timestamp NULL DEFAULT NULL,
  `recovered_order_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_brands`
--

CREATE TABLE `ec_brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `description` mediumtext DEFAULT NULL,
  `website` varchar(191) DEFAULT NULL,
  `logo` varchar(191) DEFAULT NULL,
  `status` varchar(60) NOT NULL DEFAULT 'published',
  `order` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `is_featured` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_brands`
--

INSERT INTO `ec_brands` (`id`, `name`, `description`, `website`, `logo`, `status`, `order`, `is_featured`, `created_at`, `updated_at`) VALUES
(1, 'Fashion live', NULL, NULL, 'brands/brand-01.png', 'published', 0, 0, '2025-10-20 17:06:02', '2025-10-20 17:06:02'),
(2, 'Hand crafted', NULL, NULL, 'brands/brand-02.png', 'published', 1, 1, '2025-10-20 17:06:02', '2025-10-20 17:06:02'),
(3, 'Mestonix', NULL, NULL, 'brands/brand-03.png', 'published', 2, 0, '2025-10-20 17:06:02', '2025-10-20 17:06:02'),
(4, 'Sunshine', NULL, NULL, 'brands/brand-04.png', 'published', 3, 1, '2025-10-20 17:06:02', '2025-10-20 17:06:02'),
(5, 'Pure', NULL, NULL, 'brands/brand-05.png', 'published', 4, 1, '2025-10-20 17:06:02', '2025-10-20 17:06:02'),
(6, 'Anfold', NULL, NULL, 'brands/brand-06.png', 'published', 5, 1, '2025-10-20 17:06:02', '2025-10-20 17:06:02');

-- --------------------------------------------------------

--
-- Table structure for table `ec_brands_translations`
--

CREATE TABLE `ec_brands_translations` (
  `lang_code` varchar(191) NOT NULL,
  `ec_brands_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) DEFAULT NULL,
  `description` mediumtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_cart`
--

CREATE TABLE `ec_cart` (
  `identifier` varchar(60) NOT NULL,
  `instance` varchar(60) NOT NULL,
  `content` longtext NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_currencies`
--

CREATE TABLE `ec_currencies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) NOT NULL,
  `symbol` varchar(10) NOT NULL,
  `is_prefix_symbol` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `decimals` tinyint(3) UNSIGNED DEFAULT 0,
  `number_format_style` varchar(50) NOT NULL DEFAULT 'western',
  `space_between_price_and_currency` tinyint(1) NOT NULL DEFAULT 0,
  `order` int(10) UNSIGNED DEFAULT 0,
  `is_default` tinyint(4) NOT NULL DEFAULT 0,
  `exchange_rate` double NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_currencies`
--

INSERT INTO `ec_currencies` (`id`, `title`, `symbol`, `is_prefix_symbol`, `decimals`, `number_format_style`, `space_between_price_and_currency`, `order`, `is_default`, `exchange_rate`, `created_at`, `updated_at`) VALUES
(1, 'USD', '$', 1, 2, 'western', 0, 1, 0, 1, '2025-10-20 17:05:48', '2025-10-27 06:49:36'),
(2, 'EUR', '€', 0, 2, 'western', 0, 3, 0, 0.84, '2025-10-20 17:05:48', '2025-10-27 06:49:22'),
(3, 'GBP', '£', 1, 0, 'western', 0, 5, 1, 1.33, '2025-10-20 17:05:48', '2025-10-27 06:50:02'),
(4, 'NGN', '₦', 1, 2, 'western', 0, 7, 0, 895.52, '2025-10-20 17:05:48', '2025-10-27 06:49:22');

-- --------------------------------------------------------

--
-- Table structure for table `ec_customers`
--

CREATE TABLE `ec_customers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `email` varchar(191) DEFAULT NULL,
  `password` varchar(191) NOT NULL,
  `avatar` varchar(191) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `confirmed_at` datetime DEFAULT NULL,
  `email_verify_token` varchar(120) DEFAULT NULL,
  `status` varchar(60) NOT NULL DEFAULT 'activated',
  `private_notes` text DEFAULT NULL,
  `is_pmd` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_customers`
--

INSERT INTO `ec_customers` (`id`, `name`, `email`, `password`, `avatar`, `dob`, `phone`, `remember_token`, `created_at`, `updated_at`, `confirmed_at`, `email_verify_token`, `status`, `private_notes`, `is_pmd`) VALUES
(10, 'Breanne Dare DDS', 'zgraham@example.net', '$2y$12$h68AVMo8XLK8He1kxF/7n.FhU/rx23ZLjqurJ0i4JfVslk.qPizc2', 'customers/8.jpg', '2003-10-03', '+12766277750', NULL, '2025-10-20 17:06:39', '2025-10-20 17:06:39', '2025-10-21 00:06:39', NULL, 'activated', NULL, 0),
(12, 'ajay', 'ajay.webstrot@gmail.com', '$2y$12$x0MV8n1Kk33yHzbdjD2Miu5uG5hps7oUgadrWxSnfDAtRGeFpeETm', NULL, '2024-04-16', '54451655654', NULL, '2025-10-29 09:12:42', '2025-12-19 13:40:12', '2025-10-29 09:12:42', NULL, 'activated', NULL, 1),
(14, 'Akshay Handge', 'handge.akshay@gmail.com', '$2y$12$Vx9eKIUptrizNpiKxpZvUug2DhlR7296y/frTJvggvFuuQNCpSkla', 'customers/14/akshay.jpg', '1993-01-29', '+919098085819', 'gzEvl19KFWSzNi5n0JFWQYaUQML2AWWnZvRj9b5Czi7HX7Z9J66MfOfwlTiU', '2025-11-10 11:45:15', '2025-11-10 12:17:14', '2025-11-10 11:45:18', NULL, 'activated', NULL, 0),
(17, 'Prateek Choudhary', 'Prateek.webstrot@gmail.com', '$2y$12$TI2YLMnIlCwqIwNLqaDuLuYBIXKMOx5MpU5z20/7MWf48Wh94NSpu', NULL, '2025-12-19', '+919907642688', 'l52wuTunI391acvkS870SHODsvU3xujGBhKQDOb3Y0rggbsmPemOvSDpiOD1', '2025-11-11 10:08:07', '2025-12-19 13:41:24', '2025-11-11 10:08:09', NULL, 'activated', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `ec_customer_addresses`
--

CREATE TABLE `ec_customer_addresses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `email` varchar(60) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `country` varchar(120) DEFAULT NULL,
  `state` varchar(120) DEFAULT NULL,
  `city` varchar(120) DEFAULT NULL,
  `address` varchar(191) DEFAULT NULL,
  `customer_id` bigint(20) UNSIGNED NOT NULL,
  `is_default` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `zip_code` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_customer_addresses`
--

INSERT INTO `ec_customer_addresses` (`id`, `name`, `email`, `phone`, `country`, `state`, `city`, `address`, `customer_id`, `is_default`, `created_at`, `updated_at`, `zip_code`) VALUES
(12, 'Breanne Dare DDS', 'zgraham@example.net', '+15309811267', 'CK', 'Nebraska', 'Rickyville', '673 Margaretta Parkways', 10, 1, '2025-10-20 17:06:39', '2025-10-20 17:06:39', '31244'),
(13, 'Akshay Handge', 'handge.akshay@gmail.com', '09098085819', 'IN', 'M.P.', 'Dewas', '49 Laxman Nagar', 14, 1, '2025-11-10 12:14:56', '2025-11-10 12:14:56', NULL),
(14, 'Prateek Choudhary', 'Prateek.webstrot@gmail.com', '+919907642688', 'IN', 'mp', 'dewas', 'dewas', 17, 1, '2025-11-19 09:14:03', '2025-11-19 09:14:03', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ec_customer_deletion_requests`
--

CREATE TABLE `ec_customer_deletion_requests` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` bigint(20) UNSIGNED NOT NULL,
  `customer_name` varchar(191) DEFAULT NULL,
  `customer_phone` varchar(191) DEFAULT NULL,
  `customer_email` varchar(191) DEFAULT NULL,
  `token` varchar(191) NOT NULL,
  `verification_code` varchar(6) DEFAULT NULL,
  `code_expires_at` timestamp NULL DEFAULT NULL,
  `status` varchar(50) NOT NULL DEFAULT 'waiting_for_confirmation',
  `reason` text DEFAULT NULL,
  `confirmed_at` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_customer_password_resets`
--

CREATE TABLE `ec_customer_password_resets` (
  `email` varchar(191) NOT NULL,
  `token` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_customer_recently_viewed_products`
--

CREATE TABLE `ec_customer_recently_viewed_products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_customer_recently_viewed_products`
--

INSERT INTO `ec_customer_recently_viewed_products` (`id`, `customer_id`, `product_id`) VALUES
(1, 11, 289),
(2, 11, 275),
(3, 14, 274),
(4, 17, 374),
(5, 17, 378);

-- --------------------------------------------------------

--
-- Table structure for table `ec_customer_used_coupons`
--

CREATE TABLE `ec_customer_used_coupons` (
  `discount_id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_discounts`
--

CREATE TABLE `ec_discounts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(120) DEFAULT NULL,
  `code` varchar(20) DEFAULT NULL,
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `total_used` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `value` double DEFAULT NULL,
  `type` varchar(60) DEFAULT 'coupon',
  `can_use_with_promotion` tinyint(1) NOT NULL DEFAULT 0,
  `can_use_with_flash_sale` tinyint(1) NOT NULL DEFAULT 0,
  `discount_on` varchar(20) DEFAULT NULL,
  `product_quantity` int(10) UNSIGNED DEFAULT NULL,
  `type_option` varchar(100) NOT NULL DEFAULT 'amount',
  `target` varchar(100) NOT NULL DEFAULT 'all-orders',
  `min_order_price` decimal(15,2) DEFAULT NULL,
  `apply_via_url` tinyint(1) NOT NULL DEFAULT 0,
  `display_at_checkout` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `description` varchar(400) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_discounts`
--

INSERT INTO `ec_discounts` (`id`, `title`, `code`, `start_date`, `end_date`, `quantity`, `total_used`, `value`, `type`, `can_use_with_promotion`, `can_use_with_flash_sale`, `discount_on`, `product_quantity`, `type_option`, `target`, `min_order_price`, `apply_via_url`, `display_at_checkout`, `created_at`, `updated_at`, `description`) VALUES
(10, 'Discount 10', '3EPUHRB6TYGD', '2025-10-20 00:06:40', NULL, NULL, 0, 163, 'coupon', 0, 0, NULL, NULL, 'shipping', 'all-orders', NULL, 0, 1, '2025-10-20 17:06:40', '2025-10-20 17:06:40', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ec_discount_customers`
--

CREATE TABLE `ec_discount_customers` (
  `discount_id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_discount_products`
--

CREATE TABLE `ec_discount_products` (
  `discount_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_discount_product_categories`
--

CREATE TABLE `ec_discount_product_categories` (
  `discount_id` bigint(20) UNSIGNED NOT NULL,
  `product_category_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_discount_product_collections`
--

CREATE TABLE `ec_discount_product_collections` (
  `discount_id` bigint(20) UNSIGNED NOT NULL,
  `product_collection_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_flash_sales`
--

CREATE TABLE `ec_flash_sales` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `end_date` datetime NOT NULL,
  `status` varchar(60) NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_flash_sales`
--

INSERT INTO `ec_flash_sales` (`id`, `name`, `end_date`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Winter Sale', '2026-02-08 00:00:00', 'published', '2025-10-20 17:06:40', '2025-10-20 17:06:40'),
(2, 'Cosmetics Sale', '2026-05-28 00:00:00', 'published', '2025-10-20 17:06:40', '2025-10-20 17:06:40');

-- --------------------------------------------------------

--
-- Table structure for table `ec_flash_sales_translations`
--

CREATE TABLE `ec_flash_sales_translations` (
  `lang_code` varchar(191) NOT NULL,
  `ec_flash_sales_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_flash_sale_products`
--

CREATE TABLE `ec_flash_sale_products` (
  `flash_sale_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `price` double UNSIGNED DEFAULT NULL,
  `quantity` int(10) UNSIGNED DEFAULT NULL,
  `sold` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_flash_sale_products`
--

INSERT INTO `ec_flash_sale_products` (`flash_sale_id`, `product_id`, `price`, `quantity`, `sold`) VALUES
(1, 1, 223.72, 12, 4),
(1, 2, 153.92, 10, 2),
(1, 3, 219.6, 12, 1),
(1, 4, 110.39, 16, 2),
(1, 5, 184.07, 9, 2),
(1, 6, 198.37, 15, 5),
(1, 7, 93.62, 6, 3),
(1, 8, 111.2925, 14, 3),
(1, 9, 168, 19, 4),
(1, 10, 263.94, 13, 3),
(2, 1, 100, 10, 5);

-- --------------------------------------------------------

--
-- Table structure for table `ec_global_options`
--

CREATE TABLE `ec_global_options` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL COMMENT 'Name of options',
  `option_type` varchar(191) NOT NULL COMMENT 'option type',
  `required` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'Checked if this option is required',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_global_options_translations`
--

CREATE TABLE `ec_global_options_translations` (
  `lang_code` varchar(191) NOT NULL,
  `ec_global_options_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_global_option_value`
--

CREATE TABLE `ec_global_option_value` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `option_id` bigint(20) UNSIGNED NOT NULL COMMENT 'option id',
  `option_value` tinytext DEFAULT NULL COMMENT 'option value',
  `affect_price` double DEFAULT NULL COMMENT 'value of price of this option affect',
  `order` int(11) NOT NULL DEFAULT 9999,
  `affect_type` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0. fixed 1. percent',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_global_option_value_translations`
--

CREATE TABLE `ec_global_option_value_translations` (
  `lang_code` varchar(191) NOT NULL,
  `ec_global_option_value_id` bigint(20) UNSIGNED NOT NULL,
  `option_value` varchar(191) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_grouped_products`
--

CREATE TABLE `ec_grouped_products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `parent_product_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `fixed_qty` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_invoices`
--

CREATE TABLE `ec_invoices` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `reference_type` varchar(191) NOT NULL,
  `reference_id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(191) NOT NULL,
  `customer_name` varchar(191) DEFAULT NULL,
  `company_name` varchar(191) DEFAULT NULL,
  `company_logo` varchar(191) DEFAULT NULL,
  `customer_email` varchar(191) DEFAULT NULL,
  `customer_phone` varchar(191) DEFAULT NULL,
  `customer_address` varchar(191) DEFAULT NULL,
  `customer_country` varchar(191) DEFAULT NULL,
  `customer_state` varchar(191) DEFAULT NULL,
  `customer_city` varchar(191) DEFAULT NULL,
  `customer_zip_code` varchar(191) DEFAULT NULL,
  `customer_address_line` varchar(191) DEFAULT NULL,
  `customer_tax_id` varchar(191) DEFAULT NULL,
  `sub_total` decimal(15,2) UNSIGNED NOT NULL,
  `tax_amount` decimal(15,2) DEFAULT 0.00,
  `shipping_amount` decimal(15,2) UNSIGNED NOT NULL DEFAULT 0.00,
  `payment_fee` decimal(15,2) DEFAULT 0.00,
  `discount_amount` decimal(15,2) UNSIGNED NOT NULL DEFAULT 0.00,
  `shipping_option` varchar(60) DEFAULT NULL,
  `shipping_method` varchar(60) NOT NULL DEFAULT 'default',
  `coupon_code` varchar(120) DEFAULT NULL,
  `discount_description` varchar(191) DEFAULT NULL,
  `amount` decimal(15,2) UNSIGNED NOT NULL,
  `description` text DEFAULT NULL,
  `payment_id` bigint(20) UNSIGNED DEFAULT NULL,
  `status` varchar(191) NOT NULL DEFAULT 'pending',
  `paid_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_invoices`
--

INSERT INTO `ec_invoices` (`id`, `reference_type`, `reference_id`, `code`, `customer_name`, `company_name`, `company_logo`, `customer_email`, `customer_phone`, `customer_address`, `customer_country`, `customer_state`, `customer_city`, `customer_zip_code`, `customer_address_line`, `customer_tax_id`, `sub_total`, `tax_amount`, `shipping_amount`, `payment_fee`, `discount_amount`, `shipping_option`, `shipping_method`, `coupon_code`, `discount_description`, `amount`, `description`, `payment_id`, `status`, `paid_at`, `created_at`, `updated_at`) VALUES
(3, 'Botble\\Ecommerce\\Models\\Order', 4, 'INV-1', 'Tiny Panda Graphic Artists Ltd', '', NULL, 'tiny.panda@tiny-panda.com', NULL, '5 hollins court, off the larches', NULL, NULL, NULL, NULL, NULL, '1234567890', 2250.00, 225.00, 0.00, 0.00, 0.00, '1', 'default', NULL, NULL, 2475.00, NULL, 3, 'pending', NULL, '2025-11-15 12:50:46', '2025-11-15 12:51:48');

-- --------------------------------------------------------

--
-- Table structure for table `ec_invoice_items`
--

CREATE TABLE `ec_invoice_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `invoice_id` bigint(20) UNSIGNED NOT NULL,
  `reference_type` varchar(191) NOT NULL,
  `reference_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `description` varchar(400) DEFAULT NULL,
  `image` varchar(191) DEFAULT NULL,
  `qty` int(10) UNSIGNED NOT NULL,
  `price` decimal(15,2) NOT NULL DEFAULT 0.00,
  `sub_total` decimal(15,2) UNSIGNED NOT NULL,
  `tax_amount` decimal(15,2) UNSIGNED NOT NULL DEFAULT 0.00,
  `discount_amount` decimal(15,2) UNSIGNED NOT NULL DEFAULT 0.00,
  `amount` decimal(15,2) UNSIGNED NOT NULL,
  `options` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_invoice_items`
--

INSERT INTO `ec_invoice_items` (`id`, `invoice_id`, `reference_type`, `reference_id`, `name`, `description`, `image`, `qty`, `price`, `sub_total`, `tax_amount`, `discount_amount`, `amount`, `options`, `created_at`, `updated_at`) VALUES
(4, 3, 'Botble\\Ecommerce\\Models\\Product', 368, 'American Animal Arms - Lights Out Rail - 6.8\"\nFlat Dark Earth (FDE)', NULL, 'https://anandcomputer.com/products/ID-18 to 45 American Animal Arms Handguards/american-animal-arms-lights-out-rail-main-image.jpg', 6, 375.00, 2250.00, 225.00, 0.00, 2475.00, '{\"image\":\"https:\\/\\/anandcomputer.com\\/products\\/ID-18 to 45 American Animal Arms Handguards\\/american-animal-arms-lights-out-rail-main-image.jpg\",\"attributes\":\"\",\"taxRate\":10,\"taxClasses\":{\"VAT\":10},\"options\":[],\"extras\":[],\"sku\":\"RR-AAA-6.8-FDE\",\"weight\":null,\"price_includes_tax\":false}', '2025-11-15 12:51:48', '2025-11-15 12:51:48');

-- --------------------------------------------------------

--
-- Table structure for table `ec_options`
--

CREATE TABLE `ec_options` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL COMMENT 'Name of options',
  `option_type` varchar(191) DEFAULT NULL COMMENT 'option type',
  `product_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `order` int(11) NOT NULL DEFAULT 9999,
  `required` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'Checked if this option is required',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_options_translations`
--

CREATE TABLE `ec_options_translations` (
  `lang_code` varchar(191) NOT NULL,
  `ec_options_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_option_value`
--

CREATE TABLE `ec_option_value` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `option_id` bigint(20) UNSIGNED NOT NULL COMMENT 'option id',
  `option_value` tinytext DEFAULT NULL COMMENT 'option value',
  `affect_price` double DEFAULT NULL COMMENT 'value of price of this option affect',
  `order` int(11) NOT NULL DEFAULT 9999,
  `affect_type` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0. fixed 1. percent',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_option_value_translations`
--

CREATE TABLE `ec_option_value_translations` (
  `lang_code` varchar(191) NOT NULL,
  `ec_option_value_id` bigint(20) UNSIGNED NOT NULL,
  `option_value` varchar(191) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_orders`
--

CREATE TABLE `ec_orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(191) DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `shipping_option` varchar(60) DEFAULT NULL,
  `shipping_method` varchar(60) NOT NULL DEFAULT 'default',
  `status` varchar(120) NOT NULL DEFAULT 'pending',
  `amount` decimal(15,2) NOT NULL,
  `tax_amount` decimal(15,2) DEFAULT 0.00,
  `shipping_amount` decimal(15,2) DEFAULT NULL,
  `payment_fee` decimal(15,2) DEFAULT 0.00,
  `description` text DEFAULT NULL,
  `coupon_code` varchar(120) DEFAULT NULL,
  `discount_amount` decimal(15,2) DEFAULT NULL,
  `sub_total` decimal(15,2) NOT NULL,
  `is_confirmed` tinyint(1) NOT NULL DEFAULT 0,
  `discount_description` varchar(191) DEFAULT NULL,
  `is_finished` tinyint(1) DEFAULT 0,
  `cancellation_reason` varchar(191) DEFAULT NULL,
  `cancellation_reason_description` varchar(191) DEFAULT NULL,
  `completed_at` timestamp NULL DEFAULT NULL,
  `token` varchar(120) DEFAULT NULL,
  `payment_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `proof_file` varchar(191) DEFAULT NULL,
  `private_notes` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_orders`
--

INSERT INTO `ec_orders` (`id`, `code`, `user_id`, `shipping_option`, `shipping_method`, `status`, `amount`, `tax_amount`, `shipping_amount`, `payment_fee`, `description`, `coupon_code`, `discount_amount`, `sub_total`, `is_confirmed`, `discount_description`, `is_finished`, `cancellation_reason`, `cancellation_reason_description`, `completed_at`, `token`, `payment_id`, `created_at`, `updated_at`, `proof_file`, `private_notes`) VALUES
(2, '#SF-10000002', 0, NULL, 'default', 'pending', 412.50, 38.00, 0.00, 0.00, NULL, NULL, 0.00, 375.00, 0, NULL, 0, NULL, NULL, NULL, 'c967db0cab241a07a9b8ab724395ec74', NULL, '2025-11-13 09:43:18', '2025-11-13 09:43:18', NULL, NULL),
(4, '#SF-10000003', 0, '1', 'default', 'pending', 2475.00, 225.00, 0.00, 0.00, NULL, NULL, 0.00, 2250.00, 0, NULL, 1, NULL, NULL, NULL, 'd81823034bd78b073c8ab0ea149e11e5', 3, '2025-11-15 12:50:46', '2025-11-15 12:51:48', NULL, NULL),
(6, '#SF-10000005', 0, NULL, 'default', 'pending', 95.00, 0.00, 0.00, 0.00, NULL, NULL, 0.00, 95.00, 0, NULL, 0, NULL, NULL, NULL, '649791166791d5290c1d30d62de81ae6', NULL, '2025-12-17 09:43:33', '2025-12-17 09:43:33', NULL, NULL),
(7, '#SF-10000007', 0, '3', 'default', 'pending', 95.00, 0.00, 0.00, 0.00, NULL, NULL, 0.00, 95.00, 0, NULL, 0, NULL, NULL, NULL, 'e92f428df322219b971aadb5b50ace21', NULL, '2025-12-17 11:46:26', '2025-12-17 11:46:59', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ec_order_addresses`
--

CREATE TABLE `ec_order_addresses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `email` varchar(191) DEFAULT NULL,
  `country` varchar(120) DEFAULT NULL,
  `state` varchar(120) DEFAULT NULL,
  `city` varchar(120) DEFAULT NULL,
  `address` varchar(191) DEFAULT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `zip_code` varchar(20) DEFAULT NULL,
  `type` varchar(60) NOT NULL DEFAULT 'shipping_address'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_order_addresses`
--

INSERT INTO `ec_order_addresses` (`id`, `name`, `phone`, `email`, `country`, `state`, `city`, `address`, `order_id`, `zip_code`, `type`) VALUES
(3, 'Barrie Jones', '+447925450931', 'barrjonetkai1966@gmail.com', 'GB', 'England', 'Deeside', '5 hollins court, off the larches', 4, NULL, 'shipping_address'),
(5, 'Choudhary', '+919907642688', 'Prateek.webstrot@gmail.com', 'IN', 'Mp', 'Dewas', 'ab road, ab road', 7, NULL, 'shipping_address');

-- --------------------------------------------------------

--
-- Table structure for table `ec_order_histories`
--

CREATE TABLE `ec_order_histories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `action` varchar(120) NOT NULL,
  `description` varchar(400) DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `extras` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_order_histories`
--

INSERT INTO `ec_order_histories` (`id`, `action`, `description`, `user_id`, `order_id`, `extras`, `created_at`, `updated_at`) VALUES
(13, 'create_order_from_payment_page', 'Order was created from checkout page', NULL, 4, NULL, '2025-11-15 12:51:48', '2025-11-15 12:51:48'),
(14, 'send_order_confirmation_email', 'The email confirmation was sent to customer', NULL, 4, NULL, '2025-11-15 12:51:52', '2025-11-15 12:51:52'),
(15, 'create_order', 'New order #SF-10000003 from Barrie Jones', NULL, 4, NULL, '2025-11-15 12:51:52', '2025-11-15 12:51:52'),
(21, 'create_order_from_payment_page', 'Order was created from checkout page', NULL, 7, NULL, '2025-12-17 11:46:59', '2025-12-17 11:46:59');

-- --------------------------------------------------------

--
-- Table structure for table `ec_order_product`
--

CREATE TABLE `ec_order_product` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `qty` int(11) NOT NULL,
  `price` decimal(15,2) NOT NULL,
  `tax_amount` decimal(15,2) DEFAULT 0.00,
  `options` text DEFAULT NULL,
  `product_options` text DEFAULT NULL COMMENT 'product option data',
  `product_id` bigint(20) UNSIGNED DEFAULT NULL,
  `product_name` varchar(191) NOT NULL,
  `product_image` varchar(191) DEFAULT NULL,
  `weight` double DEFAULT 0,
  `restock_quantity` int(10) UNSIGNED DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `product_type` varchar(60) NOT NULL DEFAULT 'physical',
  `times_downloaded` int(11) NOT NULL DEFAULT 0,
  `license_code` text DEFAULT NULL,
  `downloaded_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_order_product`
--

INSERT INTO `ec_order_product` (`id`, `order_id`, `qty`, `price`, `tax_amount`, `options`, `product_options`, `product_id`, `product_name`, `product_image`, `weight`, `restock_quantity`, `created_at`, `updated_at`, `product_type`, `times_downloaded`, `license_code`, `downloaded_at`) VALUES
(5, 2, 1, 375.00, 38.00, '{\"image\":\"https:\\/\\/anandcomputer.com\\/products\\/ID-18 to 45 American Animal Arms Handguards\\/american-animal-arms-lights-out-rail-main-image.jpg\",\"attributes\":\"\",\"taxRate\":10,\"taxClasses\":{\"VAT\":10},\"options\":[],\"extras\":[],\"sku\":\"RR-AAA-6.8-CB\",\"weight\":null,\"price_includes_tax\":false}', '[]', 367, 'American Animal Arms - Lights Out Rail - 6.8\"\nCoyote Brown', 'https://anandcomputer.com/products/ID-18 to 45 American Animal Arms Handguards/american-animal-arms-lights-out-rail-main-image.jpg', 0.01, 0, '2025-11-13 09:43:18', '2025-11-13 09:43:18', 'physical', 0, NULL, NULL),
(9, 4, 6, 375.00, 225.00, '{\"image\":\"https:\\/\\/anandcomputer.com\\/products\\/ID-18 to 45 American Animal Arms Handguards\\/american-animal-arms-lights-out-rail-main-image.jpg\",\"attributes\":\"\",\"taxRate\":10,\"taxClasses\":{\"VAT\":10},\"options\":[],\"extras\":[],\"sku\":\"RR-AAA-6.8-FDE\",\"weight\":null,\"price_includes_tax\":false}', '[]', 368, 'American Animal Arms - Lights Out Rail - 6.8\"\nFlat Dark Earth (FDE)', 'https://anandcomputer.com/products/ID-18 to 45 American Animal Arms Handguards/american-animal-arms-lights-out-rail-main-image.jpg', NULL, 0, '2025-11-15 12:51:48', '2025-11-15 12:51:48', 'physical', 0, NULL, NULL),
(12, 6, 1, 95.00, 0.00, '{\"image\":\"5-1-4.png\",\"attributes\":\"\",\"taxRate\":0,\"taxClasses\":[],\"options\":[],\"extras\":[],\"sku\":\"SF-2443-IRQR\",\"weight\":0,\"price_includes_tax\":false}', '[]', 378, 'weapon 1', '5-1-4.png', 0.01, 0, '2025-12-17 09:43:33', '2025-12-17 09:43:33', 'physical', 0, NULL, NULL),
(14, 7, 1, 95.00, 0.00, '{\"image\":\"5-1-4.png\",\"attributes\":\"\",\"taxRate\":0,\"taxClasses\":[],\"options\":[],\"extras\":[],\"sku\":\"SF-2443-DNZG\",\"weight\":0,\"price_includes_tax\":false}', '[]', 377, 'weapon 2', '5-1-4.png', 0, 0, '2025-12-17 11:46:59', '2025-12-17 11:46:59', 'physical', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ec_order_referrals`
--

CREATE TABLE `ec_order_referrals` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ip` varchar(39) DEFAULT NULL,
  `landing_domain` varchar(191) DEFAULT NULL,
  `landing_page` varchar(191) DEFAULT NULL,
  `landing_params` varchar(191) DEFAULT NULL,
  `referral` varchar(191) DEFAULT NULL,
  `gclid` varchar(191) DEFAULT NULL,
  `fclid` varchar(191) DEFAULT NULL,
  `utm_source` varchar(191) DEFAULT NULL,
  `utm_campaign` varchar(191) DEFAULT NULL,
  `utm_medium` varchar(191) DEFAULT NULL,
  `utm_term` varchar(191) DEFAULT NULL,
  `utm_content` varchar(191) DEFAULT NULL,
  `referrer_url` text DEFAULT NULL,
  `referrer_domain` varchar(191) DEFAULT NULL,
  `order_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_order_referrals`
--

INSERT INTO `ec_order_referrals` (`id`, `ip`, `landing_domain`, `landing_page`, `landing_params`, `referral`, `gclid`, `fclid`, `utm_source`, `utm_campaign`, `utm_medium`, `utm_term`, `utm_content`, `referrer_url`, `referrer_domain`, `order_id`, `created_at`, `updated_at`) VALUES
(1, '2405:201:3005:a9a8:4503:cc9f:6a87:8e9d', 'tinypandademosite.org', '/', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2025-11-10 09:22:47', '2025-11-10 09:22:47'),
(2, '2405:201:3005:a9a8:1d4c:dd6b:f65d:8c25', 'tinypandademosite.org', 'regent-stage', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, '2025-11-13 09:43:18', '2025-11-13 09:43:18'),
(3, '2a0a:ef40:1583:5c01:477:3ad2:bf67:9857', 'tinypandademosite.org', 'admin/login', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, '2025-11-15 12:26:30', '2025-11-15 12:26:30'),
(4, '2a0a:ef40:1583:5c01:477:3ad2:bf67:9857', 'tinypandademosite.org', 'admin/login', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, '2025-11-15 12:50:46', '2025-11-15 12:50:46'),
(5, '2405:201:3005:a991:bdb7:fc61:abf2:c103', 'tinypandademosite.org', '/', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, '2025-11-19 09:13:42', '2025-11-19 09:13:42'),
(6, '2a0a:ef40:36c:9a01:c486:311f:3eae:5541', 'tinypandademosite.org', '/', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://hpanel.hostinger.com/', 'hpanel.hostinger.com', 6, '2025-12-17 09:43:33', '2025-12-17 09:43:33'),
(7, '2405:201:3005:a9a8:1d4c:dd6b:f65d:8c25', 'tinypandademosite.org', 'regent-stage', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 7, '2025-12-17 11:46:26', '2025-12-17 11:46:26');

-- --------------------------------------------------------

--
-- Table structure for table `ec_order_returns`
--

CREATE TABLE `ec_order_returns` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(191) DEFAULT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL COMMENT 'Order ID',
  `store_id` bigint(20) UNSIGNED DEFAULT NULL COMMENT 'Store ID',
  `user_id` bigint(20) UNSIGNED NOT NULL COMMENT 'Customer ID',
  `reason` text DEFAULT NULL COMMENT 'Reason return order',
  `order_status` varchar(191) DEFAULT NULL COMMENT 'Order current status',
  `return_status` varchar(191) NOT NULL COMMENT 'Return status',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_order_return_histories`
--

CREATE TABLE `ec_order_return_histories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `order_return_id` bigint(20) UNSIGNED NOT NULL,
  `action` varchar(191) NOT NULL,
  `description` varchar(400) DEFAULT NULL,
  `reason` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_order_return_items`
--

CREATE TABLE `ec_order_return_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_return_id` bigint(20) UNSIGNED NOT NULL COMMENT 'Order return id',
  `order_product_id` bigint(20) UNSIGNED NOT NULL COMMENT 'Order product id',
  `product_id` bigint(20) UNSIGNED NOT NULL COMMENT 'Product id',
  `product_name` varchar(191) NOT NULL,
  `product_image` varchar(191) DEFAULT NULL,
  `qty` int(11) NOT NULL COMMENT 'Quantity return',
  `price` decimal(15,2) NOT NULL COMMENT 'Price Product',
  `reason` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `refund_amount` decimal(12,2) DEFAULT 0.00
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_order_tax_information`
--

CREATE TABLE `ec_order_tax_information` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `company_name` varchar(120) NOT NULL,
  `company_address` varchar(191) NOT NULL,
  `company_tax_code` varchar(20) NOT NULL,
  `company_email` varchar(60) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_order_tax_information`
--

INSERT INTO `ec_order_tax_information` (`id`, `order_id`, `company_name`, `company_address`, `company_tax_code`, `company_email`, `created_at`, `updated_at`) VALUES
(1, 3, 'Tiny Panda Graphic Artists Ltd', '5 hollins court, off the larches', '1234567890', 'tiny.panda@tiny-panda.com', '2025-11-15 12:28:18', '2025-11-15 12:28:18'),
(2, 4, 'Tiny Panda Graphic Artists Ltd', '5 hollins court, off the larches', '1234567890', 'tiny.panda@tiny-panda.com', '2025-11-15 12:51:48', '2025-11-15 12:51:48');

-- --------------------------------------------------------

--
-- Table structure for table `ec_products`
--

CREATE TABLE `ec_products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `slug` varchar(191) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `content` longtext DEFAULT NULL,
  `status` varchar(60) NOT NULL DEFAULT 'published',
  `images` text DEFAULT NULL,
  `video_media` text DEFAULT NULL,
  `sku` varchar(191) DEFAULT NULL,
  `order` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `quantity` int(10) UNSIGNED DEFAULT NULL,
  `allow_checkout_when_out_of_stock` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `with_storehouse_management` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `stock_status` varchar(191) DEFAULT 'in_stock',
  `is_featured` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `brand_id` bigint(20) UNSIGNED DEFAULT NULL,
  `is_variation` tinyint(4) NOT NULL DEFAULT 0,
  `variations_count` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `reviews_count` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `reviews_avg` decimal(3,2) NOT NULL DEFAULT 0.00,
  `sale_type` tinyint(4) NOT NULL DEFAULT 0,
  `price` double UNSIGNED DEFAULT NULL,
  `sale_price` double UNSIGNED DEFAULT NULL,
  `start_date` timestamp NULL DEFAULT NULL,
  `end_date` timestamp NULL DEFAULT NULL,
  `length` double DEFAULT NULL,
  `wide` double DEFAULT NULL,
  `height` double DEFAULT NULL,
  `weight` double DEFAULT NULL,
  `tax_id` bigint(20) UNSIGNED DEFAULT NULL,
  `views` bigint(20) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by_id` bigint(20) UNSIGNED DEFAULT 0,
  `created_by_type` varchar(191) NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `image` varchar(191) DEFAULT NULL,
  `product_type` varchar(60) DEFAULT 'physical',
  `barcode` varchar(150) DEFAULT NULL,
  `cost_per_item` double DEFAULT NULL,
  `price_includes_tax` tinyint(1) NOT NULL DEFAULT 0,
  `generate_license_code` tinyint(1) NOT NULL DEFAULT 0,
  `license_code_type` enum('auto_generate','pick_from_list') NOT NULL DEFAULT 'auto_generate',
  `minimum_order_quantity` int(10) UNSIGNED DEFAULT 0,
  `maximum_order_quantity` int(10) UNSIGNED DEFAULT 0,
  `notify_attachment_updated` tinyint(1) NOT NULL DEFAULT 0,
  `specification_table_id` bigint(20) UNSIGNED DEFAULT NULL,
  `is_pmd_product` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_products`
--

INSERT INTO `ec_products` (`id`, `name`, `slug`, `description`, `content`, `status`, `images`, `video_media`, `sku`, `order`, `quantity`, `allow_checkout_when_out_of_stock`, `with_storehouse_management`, `stock_status`, `is_featured`, `brand_id`, `is_variation`, `variations_count`, `reviews_count`, `reviews_avg`, `sale_type`, `price`, `sale_price`, `start_date`, `end_date`, `length`, `wide`, `height`, `weight`, `tax_id`, `views`, `created_at`, `updated_at`, `created_by_id`, `created_by_type`, `image`, `product_type`, `barcode`, `cost_per_item`, `price_includes_tax`, `generate_license_code`, `license_code_type`, `minimum_order_quantity`, `maximum_order_quantity`, `notify_attachment_updated`, `specification_table_id`, `is_pmd_product`) VALUES
(12, 'American Animal Arms - Lights Out Rail G10', NULL, '<p>The Lights Out Rail is a premium, American-engineered handguard made from 6061-T6 aluminum with a Type III hard-anodized coating. It features the patent-pending SLIC™ cable management system, multi-position M-Lok slots, anti-rotational tabs, and a non-timing barrel nut for easy installation. Designed for durability, versatility, and precision fitment, it’s available in multiple lengths and finishes to suit professional use.</p>', '<p>The Lights Out Rail is a premium, American-engineered handguard built for professional end users who demand reliability, adaptability, and a refined finish. Constructed from 6061-T6 aluminum with a Type III hard-anodized coating, this rail system blends durability with clean, functional design.</p><p>At the heart of its innovation is the patent-pending SLIC™ system — a proprietary cable management and accessory mounting solution that eliminates clutter and maximizes operational efficiency.</p><p>Key features include the SLIC™ integrated cable channel with a protective cover that removes the need for zip ties or tape and conceals and protects wires while doubling as accessory mounting points. Multi-position accessory mounting is provided via M-Lok slots at the 2, 4, 7, and 10 o\'clock positions for ergonomic placement of lights, lasers, grips, and more. Precision-machined anti-rotational tabs (0.02″ tolerance) enhance stability and prevent rail movement under stress (not compatible with billet or non-mil-spec uppers).</p><p>The non-timing barrel nut system simplifies installation by removing the need for barrel nut timing and is available in a lightweight 1.75 oz anodized aluminum option or a heavy-duty 4.40 oz 4140 gas-nitride treated steel option for increased corrosion resistance.</p><p>Finish and build options are premium: made from 6061-T6 aluminum with Type III hard-anodized finishes available in Black, Flat Dark Earth (FDE), Coyote Brown, and OD Green, providing balanced strength, low weight, and corrosion resistance for harsh operational environments.</p><p>Available lengths: 6.8, 9.3, 10.5, 13.5, and 15 (select 13.5 and 15 variants available with a full Arca mount base). Quick-detach sling mounts use 1/4-turn QD points made from 17-4 stainless steel with an anti-rotational setup to prevent sling twist and ensure secure, one-handed operation. The rail is designed for use with .750 gas blocks (e.g., Superlative Arms adjustable gas block) and is not compatible with .875 or larger gas blocks.</p><p>Included tools: 4 mm Allen key, Torx T-15 wrench, and barrel nut tool (American Animal Arms).</p><p>Whether for a compact build or an extended rifle system, the Lights Out Rail delivers clean cable routing, rock-solid attachment, and precision fitment with the finish and reliability expected by modern professionals.</p>', 'published', '[\"icons\\/lights-out-product-3-1-1.jpg\",\"icons\\/20241115-144440.png\",\"icons\\/lights-out-rail-colors.webp\",\"icons\\/images.jpg\",\"icons\\/20250603-124620.webp\"]', NULL, 'NC-132-A0', 0, 33, 0, 1, 'in_stock', 1, 0, 0, 0, 0, 0.00, 0, 250, NULL, NULL, NULL, 17, 16, 16, 864, NULL, 41158, '2025-08-02 02:15:44', '2025-10-24 05:44:01', 0, 'Botble\\ACL\\Models\\User', 'icons/lights-out-product-3-1-1.jpg', 'physical', '', NULL, 0, 0, 'auto_generate', 0, 0, 0, 1, 0),
(99, 'American Animal Arms - Lights Out Rail', NULL, '', NULL, 'published', '[\"products\\/product-1.jpg\"]', NULL, 'NC-132-A0', 0, 16, 0, 1, 'in_stock', 0, 3, 1, 0, 0, 0.00, 0, 400, 280, NULL, NULL, 17, 16, 16, 864, NULL, 1, '2025-08-02 02:15:45', '2025-10-13 01:01:43', 0, 'Botble\\ACL\\Models\\User', NULL, 'physical', NULL, NULL, 0, 0, 'auto_generate', 0, 0, 0, NULL, 0),
(100, 'American Animal Arms - Lights Out Rail', NULL, NULL, NULL, 'published', '[\"products\\/product-42.jpg\"]', NULL, 'NC-132-A0-A1', 0, 17, 0, 1, 'in_stock', 0, 3, 1, 0, 0, 0.00, 0, 400, 344, NULL, NULL, 17, 16, 16, 864, NULL, 0, '2025-08-02 02:15:45', '2025-10-13 01:01:43', 0, 'Botble\\ACL\\Models\\User', NULL, 'physical', NULL, NULL, 0, 0, 'auto_generate', 0, 0, 0, NULL, 0),
(195, 'Dolmio Bolognese Pasta Sauce', NULL, NULL, NULL, 'published', '[\"products\\/product-47.jpg\"]', NULL, 'NC-156-A0-A2', 0, 14, 0, 1, 'in_stock', 0, 3, 1, 0, 0, 0.00, 0, 319, NULL, NULL, NULL, 10, 15, 13, 539, NULL, 0, '2025-08-02 02:15:46', '2025-08-02 02:15:47', 0, 'Botble\\ACL\\Models\\User', NULL, 'physical', NULL, NULL, 0, 0, 'auto_generate', 0, 0, 0, NULL, 0),
(196, 'Dolmio Bolognese Pasta Sauce', NULL, NULL, NULL, 'published', '[\"products\\/product-8.jpg\"]', NULL, 'NC-156-A0-A3', 0, 14, 0, 1, 'in_stock', 0, 3, 1, 0, 0, 0.00, 0, 319, NULL, NULL, NULL, 10, 15, 13, 539, NULL, 0, '2025-08-02 02:15:46', '2025-08-02 02:15:47', 0, 'Botble\\ACL\\Models\\User', NULL, 'physical', NULL, NULL, 0, 0, 'auto_generate', 0, 0, 0, NULL, 0),
(242, 'Honest Organic Still Lemonade', NULL, NULL, NULL, 'published', '[\"products\\/product-2.jpg\"]', NULL, 'NC-144-A0-A1', 0, 19, 0, 1, 'in_stock', 0, 1, 1, 0, 0, 0.00, 0, 459, NULL, NULL, NULL, 12, 17, 12, 793, NULL, 0, '2025-08-02 02:15:46', '2025-08-02 02:15:47', 0, 'Botble\\ACL\\Models\\User', NULL, 'digital', NULL, NULL, 0, 0, 'auto_generate', 0, 0, 0, NULL, 0),
(243, 'Honest Organic Still Lemonade', NULL, NULL, NULL, 'published', '[\"products\\/product-23.jpg\"]', NULL, 'NC-144-A0-A2', 0, 19, 0, 1, 'in_stock', 0, 1, 1, 0, 0, 0.00, 0, 459, NULL, NULL, NULL, 12, 17, 12, 793, NULL, 0, '2025-08-02 02:15:47', '2025-08-02 02:15:47', 0, 'Botble\\ACL\\Models\\User', NULL, 'digital', NULL, NULL, 0, 0, 'auto_generate', 0, 0, 0, NULL, 0),
(244, 'Ice Beck’s Beer 350ml x 24 Pieces', NULL, NULL, NULL, 'published', '[\"products\\/product-39.jpg\"]', NULL, 'NC-161-A0', 0, 15, 0, 1, 'in_stock', 0, 3, 1, 0, 0, 0.00, 0, 446, NULL, NULL, NULL, 18, 11, 18, 590, NULL, 0, '2025-08-02 02:15:47', '2025-08-02 02:15:47', 0, 'Botble\\ACL\\Models\\User', NULL, 'physical', NULL, NULL, 0, 0, 'auto_generate', 0, 0, 0, NULL, 0),
(245, 'Ice Beck’s Beer 350ml x 24 Pieces', NULL, NULL, NULL, 'published', '[\"products\\/product-22.jpg\"]', NULL, 'NC-161-A0-A1', 0, 15, 0, 1, 'in_stock', 0, 3, 1, 0, 0, 0.00, 0, 446, NULL, NULL, NULL, 18, 11, 18, 590, NULL, 0, '2025-08-02 02:15:47', '2025-08-02 02:15:47', 0, 'Botble\\ACL\\Models\\User', NULL, 'physical', NULL, NULL, 0, 0, 'auto_generate', 0, 0, 0, NULL, 0),
(246, 'Iceland 6 Hot Cross Buns', NULL, NULL, NULL, 'published', '[\"products\\/product-49.jpg\"]', NULL, 'NC-160-A0', 0, 10, 0, 1, 'in_stock', 0, 3, 1, 0, 0, 0.00, 0, 247, NULL, NULL, NULL, 15, 10, 13, 525, NULL, 0, '2025-08-02 02:15:47', '2025-08-02 02:15:47', 0, 'Botble\\ACL\\Models\\User', NULL, 'physical', NULL, NULL, 0, 0, 'auto_generate', 0, 0, 0, NULL, 0),
(265, 'American Animal Arms - Lights Out Rail', NULL, '', NULL, 'published', '[\"products\\/product-1.jpg\"]', NULL, 'NC-132-A0', 0, 16, 0, 1, 'in_stock', 0, 3, 1, 0, 0, 0.00, 0, 400, 280, NULL, NULL, 17, 16, 16, 864, NULL, 1, '2025-08-02 02:15:45', '2025-10-13 01:01:43', 0, 'Botble\\ACL\\Models\\User', NULL, 'physical', NULL, NULL, 0, 0, 'auto_generate', 0, 0, 0, NULL, 0),
(266, 'American Animal Arms - Lights Out Rail', NULL, NULL, NULL, 'published', '[\"products\\/product-42.jpg\"]', NULL, 'NC-132-A0-A1', 0, 17, 0, 1, 'in_stock', 0, 3, 1, 0, 0, 0.00, 0, 400, 344, NULL, NULL, 17, 16, 16, 864, NULL, 0, '2025-08-02 02:15:45', '2025-10-13 01:01:43', 0, 'Botble\\ACL\\Models\\User', NULL, 'physical', NULL, NULL, 0, 0, 'auto_generate', 0, 0, 0, NULL, 0),
(267, 'Dolmio Bolognese Pasta Sauce', NULL, NULL, NULL, 'published', '[\"products\\/product-47.jpg\"]', NULL, 'NC-156-A0-A2', 0, 14, 0, 1, 'in_stock', 0, 3, 1, 0, 0, 0.00, 0, 319, NULL, NULL, NULL, 10, 15, 13, 539, NULL, 0, '2025-08-02 02:15:46', '2025-08-02 02:15:47', 0, 'Botble\\ACL\\Models\\User', NULL, 'physical', NULL, NULL, 0, 0, 'auto_generate', 0, 0, 0, NULL, 0),
(268, 'Dolmio Bolognese Pasta Sauce', NULL, NULL, NULL, 'published', '[\"products\\/product-8.jpg\"]', NULL, 'NC-156-A0-A3', 0, 14, 0, 1, 'in_stock', 0, 3, 1, 0, 0, 0.00, 0, 319, NULL, NULL, NULL, 10, 15, 13, 539, NULL, 0, '2025-08-02 02:15:46', '2025-08-02 02:15:47', 0, 'Botble\\ACL\\Models\\User', NULL, 'physical', NULL, NULL, 0, 0, 'auto_generate', 0, 0, 0, NULL, 0),
(269, 'Honest Organic Still Lemonade', NULL, NULL, NULL, 'published', '[\"products\\/product-2.jpg\"]', NULL, 'NC-144-A0-A1', 0, 19, 0, 1, 'in_stock', 0, 1, 1, 0, 0, 0.00, 0, 459, NULL, NULL, NULL, 12, 17, 12, 793, NULL, 0, '2025-08-02 02:15:46', '2025-08-02 02:15:47', 0, 'Botble\\ACL\\Models\\User', NULL, 'digital', NULL, NULL, 0, 0, 'auto_generate', 0, 0, 0, NULL, 0),
(270, 'Honest Organic Still Lemonade', NULL, NULL, NULL, 'published', '[\"products\\/product-23.jpg\"]', NULL, 'NC-144-A0-A2', 0, 19, 0, 1, 'in_stock', 0, 1, 1, 0, 0, 0.00, 0, 459, NULL, NULL, NULL, 12, 17, 12, 793, NULL, 0, '2025-08-02 02:15:47', '2025-08-02 02:15:47', 0, 'Botble\\ACL\\Models\\User', NULL, 'digital', NULL, NULL, 0, 0, 'auto_generate', 0, 0, 0, NULL, 0),
(271, 'Ice Beck’s Beer 350ml x 24 Pieces', NULL, NULL, NULL, 'published', '[\"products\\/product-39.jpg\"]', NULL, 'NC-161-A0', 0, 15, 0, 1, 'in_stock', 0, 3, 1, 0, 0, 0.00, 0, 446, NULL, NULL, NULL, 18, 11, 18, 590, NULL, 0, '2025-08-02 02:15:47', '2025-08-02 02:15:47', 0, 'Botble\\ACL\\Models\\User', NULL, 'physical', NULL, NULL, 0, 0, 'auto_generate', 0, 0, 0, NULL, 0),
(272, 'Ice Beck’s Beer 350ml x 24 Pieces', NULL, NULL, NULL, 'published', '[\"products\\/product-22.jpg\"]', NULL, 'NC-161-A0-A1', 0, 15, 0, 1, 'in_stock', 0, 3, 1, 0, 0, 0.00, 0, 446, NULL, NULL, NULL, 18, 11, 18, 590, NULL, 0, '2025-08-02 02:15:47', '2025-08-02 02:15:47', 0, 'Botble\\ACL\\Models\\User', NULL, 'physical', NULL, NULL, 0, 0, 'auto_generate', 0, 0, 0, NULL, 0),
(273, 'Iceland 6 Hot Cross Buns', NULL, NULL, NULL, 'published', '[\"products\\/product-49.jpg\"]', NULL, 'NC-160-A0', 0, 10, 0, 1, 'in_stock', 0, 3, 1, 0, 0, 0.00, 0, 247, NULL, NULL, NULL, 15, 10, 13, 525, NULL, 0, '2025-08-02 02:15:47', '2025-08-02 02:15:47', 0, 'Botble\\ACL\\Models\\User', NULL, 'physical', NULL, NULL, 0, 0, 'auto_generate', 0, 0, 0, NULL, 0),
(274, 'ALPHA Gen II – Complete Modular Operator’s System G9', 'ALPHA Gen II – Complete Modular Operator’s System G9', '<p style=\"background-color:transparent;color:rgb(0,0,0);font-family:\'madefor-text\';\"><em style=\"background-color:transparent;margin:0px;padding:0px;\"><i>Note: Fully modular system - no shortcuts.</i></em></p><p style=\"background-color:transparent;color:rgb(0,0,0);font-family:\'madefor-text\';\"> </p><p style=\"background-color:transparent;color:rgb(0,0,0);font-family:\'madefor-text\';\">Built for professionals operating across all environments, the ALPHA Gen II Complete Modular Operator’s Systemdelivers a fully integrated sling and stock setup designed for maximum adaptability, strength, and manoeuvrability. Whether on duty, deployed, or training, this system gives you the confidence to perform without compromise.</p><p style=\"background-color:transparent;color:rgb(0,0,0);font-family:\'madefor-text\';\"> </p><p style=\"background-color:transparent;color:rgb(0,0,0);font-family:\'madefor-text\';\">Designed by veterans and manufactured in the United States, this system is trusted by military, law enforcement, and private operators alike.</p><p style=\"background-color:transparent;color:rgb(0,0,0);font-family:\'madefor-text\';\"> </p><p style=\"background-color:transparent;color:rgb(0,0,0);font-family:\'madefor-text\';\">System Includes</p><ul style=\"background-color:transparent;color:rgb(0,0,0);font-family:\'madefor-text\';\"><li style=\"background-color:transparent;margin-bottom:0px;margin-right:0px;margin-top:0px;padding:0px;\"><p style=\"background-color:transparent;margin:0px;padding:0px;\">1 × T10 ALPHA Gen II 2:1 Point Sling</p></li><li style=\"background-color:transparent;margin-bottom:0px;margin-right:0px;margin-top:0px;padding:0px;\"><p style=\"background-color:transparent;margin:0px;padding:0px;\">1 × Safe-Break Pull Tab System (modular and mission-continuity capable)</p></li><li style=\"background-color:transparent;margin-bottom:0px;margin-right:0px;margin-top:0px;padding:0px;\"><p style=\"background-color:transparent;margin:0px;padding:0px;\">1 × Swinger™ SOPMOD Stock</p></li><li style=\"background-color:transparent;margin-bottom:0px;margin-right:0px;margin-top:0px;padding:0px;\"><p style=\"background-color:transparent;margin:0px;padding:0px;\">1 × Swinger™ Sling Mount</p></li><li style=\"background-color:transparent;margin-bottom:0px;margin-right:0px;margin-top:0px;padding:0px;\"><p style=\"background-color:transparent;margin:0px;padding:0px;\">1 × 2:1 Point QD Adapter</p></li><li style=\"background-color:transparent;margin-bottom:0px;margin-right:0px;margin-top:0px;padding:0px;\"><p style=\"background-color:transparent;margin:0px;padding:0px;\">1 × T10 Heavy-Duty QD (Black Nitride finish)</p></li><li style=\"background-color:transparent;margin-bottom:0px;margin-right:0px;margin-top:0px;padding:0px;\"><p style=\"background-color:transparent;margin:0px;padding:0px;\">1 × 45° Offset 1913 QD Rail Adapter</p></li><li style=\"background-color:transparent;margin-bottom:0px;margin-right:0px;margin-top:0px;padding:0px;\"><p style=\"background-color:transparent;margin:0px;padding:0px;\">3 × Steel Thumb Loop Cables (5, 6 custom, 7)</p></li><li style=\"background-color:transparent;margin-bottom:0px;margin-right:0px;margin-top:0px;padding:0px;\"><p style=\"background-color:transparent;margin:0px;padding:0px;\">2 × Mil-Spec Triglides</p></li></ul><p style=\"background-color:transparent;color:rgb(0,0,0);font-family:\'madefor-text\';\"> </p><p style=\"background-color:transparent;color:rgb(0,0,0);font-family:\'madefor-text\';\">T10 ALPHA Sling – Built to Withstand Anything</p><p style=\"background-color:transparent;color:rgb(0,0,0);font-family:\'madefor-text\';\"> </p><p style=\"background-color:transparent;color:rgb(0,0,0);font-family:\'madefor-text\';\">The ALPHA Sling is constructed using:</p><ul style=\"background-color:transparent;color:rgb(0,0,0);font-family:\'madefor-text\';\"><li style=\"background-color:transparent;margin-bottom:0px;margin-right:0px;margin-top:0px;padding:0px;\"><p style=\"background-color:transparent;margin:0px;padding:0px;\">Solution-dyed mil-spec nylon webbing</p></li><li style=\"background-color:transparent;margin-bottom:0px;margin-right:0px;margin-top:0px;padding:0px;\"><p style=\"background-color:transparent;margin:0px;padding:0px;\">UV- and saltwater-resistant GORE® TENARA® thread</p></li><li style=\"background-color:transparent;margin-bottom:0px;margin-right:0px;margin-top:0px;padding:0px;\"><p style=\"background-color:transparent;margin:0px;padding:0px;\">316 stainless steel slider buckle, finished in black nitride</p></li></ul><p style=\"background-color:transparent;color:rgb(0,0,0);font-family:\'madefor-text\';\"> </p><p style=\"background-color:transparent;color:rgb(0,0,0);font-family:\'madefor-text\';\">The sling features the Safe-Break Pull Tab System, which detaches under tension to prevent entrapment during vehicle bailouts, CQB, or waterborne operations - without damaging the sling or compromising the mission.</p><p style=\"background-color:transparent;color:rgb(0,0,0);font-family:\'madefor-text\';\"> </p><p style=\"background-color:transparent;color:rgb(0,0,0);font-family:\'madefor-text\';\">Why This System Matters</p><ul style=\"background-color:transparent;color:rgb(0,0,0);font-family:\'madefor-text\';\"><li style=\"background-color:transparent;margin-bottom:0px;margin-right:0px;margin-top:0px;padding:0px;\"><p style=\"background-color:transparent;margin:0px;padding:0px;\">Engineered for complete modularity</p></li><li style=\"background-color:transparent;margin-bottom:0px;margin-right:0px;margin-top:0px;padding:0px;\"><p style=\"background-color:transparent;margin:0px;padding:0px;\">Provides unmatched adjustability in all climates and conditions</p></li><li style=\"background-color:transparent;margin-bottom:0px;margin-right:0px;margin-top:0px;padding:0px;\"><p style=\"background-color:transparent;margin:0px;padding:0px;\">Supports fast sling transitions with 2:1 point conversion</p></li><li style=\"background-color:transparent;margin-bottom:0px;margin-right:0px;margin-top:0px;padding:0px;\"><p style=\"background-color:transparent;margin:0px;padding:0px;\">Durable across ocean, desert, forest, swamp, and urban environments</p></li><li style=\"background-color:transparent;margin-bottom:0px;margin-right:0px;margin-top:0px;padding:0px;\"><p style=\"background-color:transparent;margin:0px;padding:0px;\">Delivers a professional-grade kit straight out of the box</p></li></ul><p style=\"background-color:transparent;color:rgb(0,0,0);font-family:\'madefor-text\';\"> </p><p style=\"background-color:transparent;color:rgb(0,0,0);font-family:\'madefor-text\';\">Confidence in your gear means confidence in your movement. The ALPHA Gen II System is built to meet the demands of today’s most capable professionals—and push beyond them.</p>', '', 'published', '[]', NULL, 'SF-2443-Q60S', 0, NULL, 0, 0, 'in_stock', 0, NULL, 0, 0, 0, 0.00, 0, 300, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10, '2025-10-10 04:30:35', '2025-10-27 04:32:33', 1, 'Botble\\ACL\\Models\\User', 'icons/img-20251010.png', 'physical', NULL, NULL, 0, 0, 'auto_generate', 0, 0, 0, NULL, 0),
(275, 'X-Ball® - Glass Breaching Tool G13', 'X-Ball® - Glass Breaching Tool G13', '<p>The X-Ball® is a compact, purpose-designed breaching tool engineered for rapid and effective glass penetration. Designed for simplicity and speed, it can shatter vehicle windows and other standard glass barriers with a single firm tapor underhand throw. Its low-profile construction allows the operator to maintain stand-off distance, reducing exposure and enhancing safety during entry by limiting contact with broken glass. Ideal for police, specialist units, and emergency responders requiring swift access through glazed surfaces. </p>', '', 'published', '[]', NULL, 'SF-2443-QH7K', 0, NULL, 0, 0, 'in_stock', 0, NULL, 0, 0, 0, 0.00, 0, 500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 16, '2025-10-13 02:30:33', '2025-10-27 04:31:47', 1, 'Botble\\ACL\\Models\\User', 'icons/20241115-144440-1.png', 'physical', NULL, NULL, 0, 0, 'auto_generate', 0, 0, 0, NULL, 0),
(349, 'RS149 Hydrogel Tape - 2\"', 'rs149-hydrogel-tape-2', 'TACTICAL HYDROGEL TAPE\n\nRS149 is a next-generation, scrim-reinforced soft hydrogel adhesive designed for mission-critical applications where adhesion, resilience, and adaptability are paramount. Engineered with a hydroactive gel core and biocompatible materials, RS149 excels in conditions where conventional adhesives fail - especially on complex or damp surfaces.\n\nBuilt with a dual siliconised release liner (HDPE and PET), RS149 is clean, cushioning, and ultra-tacky—providing a secure bond without irritation or residue. With a 20% water content gel layer and aggressive tack (300g patient surface), it forms a rapid, durable hold in any environment.\n\nIdeal for affixing charges to almost any surface, RS149 adheres effectively to firehose, steel, aluminum, wood/OSB, fiberglass, glass, and masonry brick/block. Whether in training or operational scenarios, it ensures reliable placement even in high-stress, wet, or dirty conditions.\n\nNow available in 2\", 4\", 6\", and 9\" wide rolls - each 20 metres long - RS149 offers rapid, flexible deployment and precise sizing in the field.\n\nGamma stable, ISO 10993 biocompatible, and backed by a 12-month shelf life.\n\nRS149 Hydrogel Tape – Because Precision Shouldn’t Leave a Mark.\n', '<p>TACTICAL HYDROGEL TAPE<br>RS149 is a next-generation, scrim-reinforced soft hydrogel adhesive designed for mission-critical applications where adhesion, resilience, and adaptability are paramount. Engineered with a hydroactive gel core and biocompatible materials, RS149 excels in conditions where conventional adhesives fail - especially on complex or damp surfaces.<br>Built with a dual siliconised release liner (HDPE and PET), RS149 is clean, cushioning, and ultra-tacky—providing a secure bond without irritation or residue. With a 20% water content gel layer and aggressive tack (300g patient surface), it forms a rapid, durable hold in any environment.<br>Ideal for affixing charges to almost any surface, RS149 adheres effectively to firehose, steel, aluminum, wood/OSB, fiberglass, glass, and masonry brick/block. Whether in training or operational scenarios, it ensures reliable placement even in high-stress, wet, or dirty conditions.<br>Now available in 2\", 4\", 6\", and 9\" wide rolls - each 20 metres long - RS149 offers rapid, flexible deployment and precise sizing in the field.<br>Gamma stable, ISO 10993 biocompatible, and backed by a 12-month shelf life.<br>RS149 Hydrogel Tape – Because Precision Shouldn’t Leave a Mark.</p>', 'published', '[\"products\\/rs149-hydrogel-tape-2-36.png\"]', NULL, 'RR-HYD-2', 0, 18, 0, 1, 'in_stock', 1, 0, 0, 0, 0, 0.00, 0, 260, 260, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6, '2025-11-13 09:25:43', '2025-11-13 09:25:43', 1, 'Botble\\ACL\\Models\\User', 'products/rs149-hydrogel-tape-2-37.png', 'physical', '', NULL, 0, 0, 'auto_generate', 0, 0, 0, NULL, 0),
(350, 'RS149 Hydrogel Tape - 4\"', 'rs149-hydrogel-tape-4', 'TACTICAL HYDROGEL TAPE\n\nRS149 is a next-generation, scrim-reinforced soft hydrogel adhesive designed for mission-critical applications where adhesion, resilience, and adaptability are paramount. Engineered with a hydroactive gel core and biocompatible materials, RS149 excels in conditions where conventional adhesives fail - especially on complex or damp surfaces.\n\nBuilt with a dual siliconised release liner (HDPE and PET), RS149 is clean, cushioning, and ultra-tacky—providing a secure bond without irritation or residue. With a 20% water content gel layer and aggressive tack (300g patient surface), it forms a rapid, durable hold in any environment.\n\nIdeal for affixing charges to almost any surface, RS149 adheres effectively to firehose, steel, aluminum, wood/OSB, fiberglass, glass, and masonry brick/block. Whether in training or operational scenarios, it ensures reliable placement even in high-stress, wet, or dirty conditions.\n\nNow available in 2\", 4\", 6\", and 9\" wide rolls - each 20 metres long - RS149 offers rapid, flexible deployment and precise sizing in the field.\n\nGamma stable, ISO 10993 biocompatible, and backed by a 12-month shelf life.\n\nRS149 Hydrogel Tape – Because Precision Shouldn’t Leave a Mark.\n', '<p>TACTICAL HYDROGEL TAPE<br>RS149 is a next-generation, scrim-reinforced soft hydrogel adhesive designed for mission-critical applications where adhesion, resilience, and adaptability are paramount. Engineered with a hydroactive gel core and biocompatible materials, RS149 excels in conditions where conventional adhesives fail - especially on complex or damp surfaces.<br>Built with a dual siliconised release liner (HDPE and PET), RS149 is clean, cushioning, and ultra-tacky—providing a secure bond without irritation or residue. With a 20% water content gel layer and aggressive tack (300g patient surface), it forms a rapid, durable hold in any environment.<br>Ideal for affixing charges to almost any surface, RS149 adheres effectively to firehose, steel, aluminum, wood/OSB, fiberglass, glass, and masonry brick/block. Whether in training or operational scenarios, it ensures reliable placement even in high-stress, wet, or dirty conditions.<br>Now available in 2\", 4\", 6\", and 9\" wide rolls - each 20 metres long - RS149 offers rapid, flexible deployment and precise sizing in the field.<br>Gamma stable, ISO 10993 biocompatible, and backed by a 12-month shelf life.<br>RS149 Hydrogel Tape – Because Precision Shouldn’t Leave a Mark.</p>', 'published', '[\"products\\/rs149-hydrogel-tape-2-38.png\"]', NULL, 'RR-HYD-4', 0, 18, 0, 1, 'in_stock', 1, 0, 0, 0, 0, 0.00, 0, 360, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, '2025-11-13 09:25:49', '2025-11-13 09:25:49', 1, 'Botble\\ACL\\Models\\User', 'products/rs149-hydrogel-tape-2-39.png', 'physical', '', NULL, 0, 0, 'auto_generate', 0, 0, 0, NULL, 0),
(351, 'RS149 Hydrogel Tape - 6\"', 'rs149-hydrogel-tape-6', 'TACTICAL HYDROGEL TAPE\n\nRS149 is a next-generation, scrim-reinforced soft hydrogel adhesive designed for mission-critical applications where adhesion, resilience, and adaptability are paramount. Engineered with a hydroactive gel core and biocompatible materials, RS149 excels in conditions where conventional adhesives fail - especially on complex or damp surfaces.\n\nBuilt with a dual siliconised release liner (HDPE and PET), RS149 is clean, cushioning, and ultra-tacky—providing a secure bond without irritation or residue. With a 20% water content gel layer and aggressive tack (300g patient surface), it forms a rapid, durable hold in any environment.\n\nIdeal for affixing charges to almost any surface, RS149 adheres effectively to firehose, steel, aluminum, wood/OSB, fiberglass, glass, and masonry brick/block. Whether in training or operational scenarios, it ensures reliable placement even in high-stress, wet, or dirty conditions.\n\nNow available in 2\", 4\", 6\", and 9\" wide rolls - each 20 metres long - RS149 offers rapid, flexible deployment and precise sizing in the field.\n\nGamma stable, ISO 10993 biocompatible, and backed by a 12-month shelf life.\n\nRS149 Hydrogel Tape – Because Precision Shouldn’t Leave a Mark.\n', '<p>TACTICAL HYDROGEL TAPE<br>RS149 is a next-generation, scrim-reinforced soft hydrogel adhesive designed for mission-critical applications where adhesion, resilience, and adaptability are paramount. Engineered with a hydroactive gel core and biocompatible materials, RS149 excels in conditions where conventional adhesives fail - especially on complex or damp surfaces.<br>Built with a dual siliconised release liner (HDPE and PET), RS149 is clean, cushioning, and ultra-tacky—providing a secure bond without irritation or residue. With a 20% water content gel layer and aggressive tack (300g patient surface), it forms a rapid, durable hold in any environment.<br>Ideal for affixing charges to almost any surface, RS149 adheres effectively to firehose, steel, aluminum, wood/OSB, fiberglass, glass, and masonry brick/block. Whether in training or operational scenarios, it ensures reliable placement even in high-stress, wet, or dirty conditions.<br>Now available in 2\", 4\", 6\", and 9\" wide rolls - each 20 metres long - RS149 offers rapid, flexible deployment and precise sizing in the field.<br>Gamma stable, ISO 10993 biocompatible, and backed by a 12-month shelf life.<br>RS149 Hydrogel Tape – Because Precision Shouldn’t Leave a Mark.</p>', 'published', '[\"products\\/rs149-hydrogel-tape-2-40.png\"]', NULL, 'RR-HYD-6', 0, 18, 0, 1, 'in_stock', 1, 0, 0, 0, 0, 0.00, 0, 505, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 7, '2025-11-13 09:25:56', '2025-11-13 09:25:56', 1, 'Botble\\ACL\\Models\\User', 'products/rs149-hydrogel-tape-2-41.png', 'physical', '', NULL, 0, 0, 'auto_generate', 0, 0, 0, NULL, 0),
(352, 'Vitruv17', 'vitruv17', 'The Vitruv™ is a mechanical beaching ram specifically designed with the operator in mind. Comprised of high strength alloy steel, well balanced and built to last. The Vitruv™ is internally dampened with a polyurethane material, that has been scientifically proven to reduce vibrations up to 30%. This design aids in reducing the energy transfer from the tool to the operator, in an effort to minimize operator fatigue and reduce potential injury. The exterior of the Vitruv™ is entirely coated in a durable black textured urethane.\n\nEngineered from AR500 steel with a 4140 strike face and internal damping for shock absorption.\n\nAvailable in:\nVitruv17 – 17″, 21 lb/43.5cm, 9.6kg\nVitruv23 – 23″, 35 lb/58.5cm, 16kg\nVitruv28 – 28″, 39 lb/99cm, 18kg\n\nPerfectly weighted and balanced for maximum impact with reduced operator fatigue.', '<p>The Vitruv™ is a mechanical beaching ram specifically designed with the operator in mind. Comprised of high strength alloy steel, well balanced and built to last. The Vitruv™ is internally dampened with a polyurethane material, that has been scientifically proven to reduce vibrations up to 30%. This design aids in reducing the energy transfer from the tool to the operator, in an effort to minimize operator fatigue and reduce potential injury. The exterior of the Vitruv™ is entirely coated in a durable black textured urethane.<br>Engineered from AR500 steel with a 4140 strike face and internal damping for shock absorption.<br>Available in:<br>Vitruv17 – 17″, 21 lb/43.5cm, 9.6kg<br>Vitruv23 – 23″, 35 lb/58.5cm, 16kg<br>Vitruv28 – 28″, 39 lb/99cm, 18kg<br>Perfectly weighted and balanced for maximum impact with reduced operator fatigue.</p>', 'published', '[\"products\\/vitruv-main-image.webp\",\"products\\/vitruv-option1.webp\",\"products\\/vitruv-option2.webp\"]', NULL, 'RR-FB-V17', 0, 18, 0, 1, 'in_stock', 1, 0, 0, 0, 0, 0.00, 0, 600, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 7, '2025-11-13 09:26:02', '2025-11-13 09:26:02', 1, 'Botble\\ACL\\Models\\User', 'products/vitruv-main-image-1.webp', 'physical', '', NULL, 0, 0, 'auto_generate', 0, 0, 0, NULL, 0),
(353, 'Vitruv23', 'vitruv23', 'The Vitruv™ is a mechanical beaching ram specifically designed with the operator in mind. Comprised of high strength alloy steel, well balanced and built to last. The Vitruv™ is internally dampened with a polyurethane material, that has been scientifically proven to reduce vibrations up to 30%. This design aids in reducing the energy transfer from the tool to the operator, in an effort to minimize operator fatigue and reduce potential injury. The exterior of the Vitruv™ is entirely coated in a durable black textured urethane.\n\nEngineered from AR500 steel with a 4140 strike face and internal damping for shock absorption.\n\nAvailable in:\nVitruv17 – 17″, 21 lb/43.5cm, 9.6kg\nVitruv23 – 23″, 35 lb/58.5cm, 16kg\nVitruv28 – 28″, 39 lb/99cm, 18kg\n\nPerfectly weighted and balanced for maximum impact with reduced operator fatigue.', '<p>The Vitruv™ is a mechanical beaching ram specifically designed with the operator in mind. Comprised of high strength alloy steel, well balanced and built to last. The Vitruv™ is internally dampened with a polyurethane material, that has been scientifically proven to reduce vibrations up to 30%. This design aids in reducing the energy transfer from the tool to the operator, in an effort to minimize operator fatigue and reduce potential injury. The exterior of the Vitruv™ is entirely coated in a durable black textured urethane.<br>Engineered from AR500 steel with a 4140 strike face and internal damping for shock absorption.<br>Available in:<br>Vitruv17 – 17″, 21 lb/43.5cm, 9.6kg<br>Vitruv23 – 23″, 35 lb/58.5cm, 16kg<br>Vitruv28 – 28″, 39 lb/99cm, 18kg<br>Perfectly weighted and balanced for maximum impact with reduced operator fatigue.</p>', 'published', '[\"https:\\/\\/anandcomputer.com\\/products\\/ID-307to309-Vitruv\\/vitruv-main-image.png\",\"https:\\/\\/anandcomputer.com\\/products\\/ID-307to309-Vitruv\\/vitruv-option1.png\",\"https:\\/\\/anandcomputer.com\\/products\\/ID-307to309-Vitruv\\/vitruv-option2.png\"]', NULL, 'RR-FB-V23', 0, 18, 0, 1, 'in_stock', 1, 0, 0, 0, 0, 0.00, 0, 650, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 7, '2025-11-13 09:26:05', '2025-11-13 09:26:05', 1, 'Botble\\ACL\\Models\\User', 'products/vitruv-main-image-2.webp', 'physical', '', NULL, 0, 0, 'auto_generate', 0, 0, 0, NULL, 0),
(354, 'Vitruv28', 'vitruv28', 'The Vitruv™ is a mechanical beaching ram specifically designed with the operator in mind. Comprised of high strength alloy steel, well balanced and built to last. The Vitruv™ is internally dampened with a polyurethane material, that has been scientifically proven to reduce vibrations up to 30%. This design aids in reducing the energy transfer from the tool to the operator, in an effort to minimize operator fatigue and reduce potential injury. The exterior of the Vitruv™ is entirely coated in a durable black textured urethane.\n\nEngineered from AR500 steel with a 4140 strike face and internal damping for shock absorption.\n\nAvailable in:\nVitruv17 – 17″, 21 lb/43.5cm, 9.6kg\nVitruv23 – 23″, 35 lb/58.5cm, 16kg\nVitruv28 – 28″, 39 lb/99cm, 18kg\n\nPerfectly weighted and balanced for maximum impact with reduced operator fatigue.', '<p>The Vitruv™ is a mechanical beaching ram specifically designed with the operator in mind. Comprised of high strength alloy steel, well balanced and built to last. The Vitruv™ is internally dampened with a polyurethane material, that has been scientifically proven to reduce vibrations up to 30%. This design aids in reducing the energy transfer from the tool to the operator, in an effort to minimize operator fatigue and reduce potential injury. The exterior of the Vitruv™ is entirely coated in a durable black textured urethane.<br>Engineered from AR500 steel with a 4140 strike face and internal damping for shock absorption.<br>Available in:<br>Vitruv17 – 17″, 21 lb/43.5cm, 9.6kg<br>Vitruv23 – 23″, 35 lb/58.5cm, 16kg<br>Vitruv28 – 28″, 39 lb/99cm, 18kg<br>Perfectly weighted and balanced for maximum impact with reduced operator fatigue.</p>', 'published', '[\"https:\\/\\/anandcomputer.com\\/products\\/ID-307to309-Vitruv\\/vitruv-main-image.png\",\"https:\\/\\/anandcomputer.com\\/products\\/ID-307to309-Vitruv\\/vitruv-option1.png\",\"https:\\/\\/anandcomputer.com\\/products\\/ID-307to309-Vitruv\\/vitruv-option2.png\"]', NULL, 'RR-FB-V28', 0, 18, 0, 1, 'in_stock', 1, 0, 0, 0, 0, 0.00, 0, 700, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9, '2025-11-13 09:26:09', '2025-11-13 09:26:09', 1, 'Botble\\ACL\\Models\\User', 'products/vitruv-main-image-3.webp', 'physical', '', NULL, 0, 0, 'auto_generate', 0, 0, 0, NULL, 0),
(355, 'Weapons Catch - Standard - MOLLE-LOK - Wolf Grey', 'weapons-catch-standard-molle-lok-wolf-grey', 'Designed by Falcon Breaching, this retention rig secures breaching shotguns, rifles, or tactical tools with confidence. Constructed from marine-grade aluminium, mil-spec textiles, and a durable ceramic-polymer finish, it’s built for demanding operational use.\n\nThe Tek‑Mount™ base allows quick angle adjustments and supports multiple attachment methods, including MOLLE, Tek‑Lok®, and direct-to-plate mounting.\n\nAvailable in:\nSlim\nStandard', '<p>Designed by Falcon Breaching, this retention rig secures breaching shotguns, rifles, or tactical tools with confidence. Constructed from marine-grade aluminium, mil-spec textiles, and a durable ceramic-polymer finish, it’s built for demanding operational use.<br>The Tek‑Mount™ base allows quick angle adjustments and supports multiple attachment methods, including MOLLE, Tek‑Lok®, and direct-to-plate mounting.<br>Available in:<br>Slim<br>Standard</p>', 'published', '[\"https:\\/\\/anandcomputer.com\\/products\\/ID-273to302-Weapons Catch\\/weapons-catch-main-image.png\",\"https:\\/\\/anandcomputer.com\\/products\\/ID-273to302-Weapons Catch\\/weapons-catch-option1.png\",\"https:\\/\\/anandcomputer.com\\/products\\/ID-273to302-Weapons Catch\\/weapons-catch-option2.png\",\"https:\\/\\/anandcomputer.com\\/products\\/ID-273to302-Weapons Catch\\/weapons-catch-option3.png\",\"https:\\/\\/anandcomputer.com\\/products\\/ID-273to302-Weapons Catch\\/weapons-catch-option4.png\"]', NULL, 'RR-FB-WC-Stnd-WG-ML', 0, 18, 0, 1, 'in_stock', 1, 0, 0, 0, 0, 0.00, 0, 92.5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 7, '2025-11-13 09:26:15', '2025-11-13 09:26:15', 1, 'Botble\\ACL\\Models\\User', 'products/weapons-catch-main-image.webp', 'physical', '', NULL, 0, 0, 'auto_generate', 0, 0, 0, NULL, 0),
(356, 'Weapons Catch - Standard - TEK-LOK - Black', 'weapons-catch-standard-tek-lok-black', 'Designed by Falcon Breaching, this retention rig secures breaching shotguns, rifles, or tactical tools with confidence. Constructed from marine-grade aluminium, mil-spec textiles, and a durable ceramic-polymer finish, it’s built for demanding operational use.\n\nThe Tek‑Mount™ base allows quick angle adjustments and supports multiple attachment methods, including MOLLE, Tek‑Lok®, and direct-to-plate mounting.\n\nAvailable in:\nSlim\nStandard', '<p>Designed by Falcon Breaching, this retention rig secures breaching shotguns, rifles, or tactical tools with confidence. Constructed from marine-grade aluminium, mil-spec textiles, and a durable ceramic-polymer finish, it’s built for demanding operational use.<br>The Tek‑Mount™ base allows quick angle adjustments and supports multiple attachment methods, including MOLLE, Tek‑Lok®, and direct-to-plate mounting.<br>Available in:<br>Slim<br>Standard</p>', 'published', '[\"https:\\/\\/anandcomputer.com\\/products\\/weapons-catch-main-image.png\",\"https:\\/\\/anandcomputer.com\\/products\\/weapons-catch-option1.png\",\"https:\\/\\/anandcomputer.com\\/products\\/weapons-catch-option2.png\",\"https:\\/\\/anandcomputer.com\\/products\\/weapons-catch-option3.png\",\"https:\\/\\/anandcomputer.com\\/products\\/weapons-catch-option4.png\"]', NULL, 'RR-FB-WC-Stnd-B-TL', 0, 18, 0, 1, 'in_stock', 1, 0, 0, 0, 0, 0.00, 0, 92.5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8, '2025-11-13 09:26:20', '2025-11-13 09:26:20', 1, 'Botble\\ACL\\Models\\User', 'products/weapons-catch-main-image-1.webp', 'physical', '', NULL, 0, 0, 'auto_generate', 0, 0, 0, NULL, 0),
(357, 'Weapons Catch - Standard - TEK-LOK - Coyote', 'weapons-catch-standard-tek-lok-coyote', 'Designed by Falcon Breaching, this retention rig secures breaching shotguns, rifles, or tactical tools with confidence. Constructed from marine-grade aluminium, mil-spec textiles, and a durable ceramic-polymer finish, it’s built for demanding operational use.\n\nThe Tek‑Mount™ base allows quick angle adjustments and supports multiple attachment methods, including MOLLE, Tek‑Lok®, and direct-to-plate mounting.\n\nAvailable in:\nSlim\nStandard', '<p>Designed by Falcon Breaching, this retention rig secures breaching shotguns, rifles, or tactical tools with confidence. Constructed from marine-grade aluminium, mil-spec textiles, and a durable ceramic-polymer finish, it’s built for demanding operational use.<br>The Tek‑Mount™ base allows quick angle adjustments and supports multiple attachment methods, including MOLLE, Tek‑Lok®, and direct-to-plate mounting.<br>Available in:<br>Slim<br>Standard</p>', 'published', '[\"https:\\/\\/anandcomputer.com\\/products\\/weapons-catch-main-image.png\",\"https:\\/\\/anandcomputer.com\\/products\\/weapons-catch-option1.png\",\"https:\\/\\/anandcomputer.com\\/products\\/weapons-catch-option2.png\",\"https:\\/\\/anandcomputer.com\\/products\\/weapons-catch-option3.png\",\"https:\\/\\/anandcomputer.com\\/products\\/weapons-catch-option4.png\"]', NULL, 'RR-FB-WC-Stnd-C-TL', 0, 18, 0, 1, 'in_stock', 1, 0, 0, 0, 0, 0.00, 0, 92.5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9, '2025-11-13 09:26:26', '2025-11-13 09:26:26', 1, 'Botble\\ACL\\Models\\User', 'products/weapons-catch-main-image-2.webp', 'physical', '', NULL, 0, 0, 'auto_generate', 0, 0, 0, NULL, 0),
(361, 'American Animal Arms - Lights Out Rail - 6.8\"\nBlack', 'american-animal-arms-lights-out-rail-68-black', 'The Lights Out Rail is a premium, American-engineered handguard built for professional end users who demand reliability, adaptability, and a refined finish. Constructed from 6061-T6 aluminium with a Type III hard anodised coating, this rail system blends durability with clean, functional design.\n\nAt the heart of its innovation is the patent-pending SLIC™ system—a proprietary cable management and accessory mounting solution that eliminates clutter and maximises operational efficiency.\n\nKey Features\n\nSLIC™ System (Slide Lock Integrated Channel)\nIntegrated cable channel with protective cover\nEliminates the need for zip ties, tape, or ranger bands\nConceals and protects wires while enhancing both form and function\nChannels double as accessory mounting points, increasing versatility\n\nMulti-Position Accessory Mounting\nM-Lok slots at 2, 4, 7, and 10 o\'clock positions\nOptimised for ergonomic placement of lights, lasers, grips, and more\nMaximises modularity across a range of mission profiles\n\nAnti-Rotational Tabs\nPrecision-machined to 0.02″ tolerance for mil-spec upper receivers\nEnhances stability and prevents rail movement under stress\nNote: Not compatible with billet or non-mil-spec uppers\n\nNon-Timing Barrel Nut System\nSimplifies installation by removing the need for barrel nut timing\nAvailable in:\n1.75 oz anodised aluminium (lightweight)\n4.40 oz 4140 gas-nitride treated steel (heavy-duty, corrosion-resistant)\n\nPremium Build and Coating Options\nMade from 6061-T6 aluminium\nType III hard anodised finishes available in:\nBlack\nFlat Dark Earth (FDE)\nCoyote Brown\nOD Green\nBalanced strength, weight, and corrosion resistance\nWithstands harsh operational environments\n\nAvailable Lengths\n6.8″, 9.3″, 10.5″, 13.5″, 15″\nSelect sizes available with full Arca mount base (13.5″ &amp; 15″ variants)\nAccommodates a wide range of platforms and user preferences\n\nQuick-Detach Sling Mounts\n1/4 turn QD points made from 17-4 stainless steel\nAnti-rotational setup prevents sling twist or snagging\nQuick, one-handed use with maximum retention under load\n\nGas Block Compatibility\nDesigned for use with .750 gas blocks (e.g., Superlative Arms adjustable gas block)\nNot compatible with .875 or larger gas blocks\n\nIncluded Tools\n4mm Allen key\nTorx T-15 wrench\nBarrel nut tool (American Animal Arms)\n\nWhether you\'re running a compact build or extended rifle system, the Lights Out Rail delivers clean cable routing, rock-solid attachment, and precision fitment - with the finish and reliability expected by modern professionals.', '<p>The Lights Out Rail is a premium, American-engineered handguard built for professional end users who demand reliability, adaptability, and a refined finish. Constructed from 6061-T6 aluminium with a Type III hard anodised coating, this rail system blends durability with clean, functional design.<br>At the heart of its innovation is the patent-pending SLIC™ system—a proprietary cable management and accessory mounting solution that eliminates clutter and maximises operational efficiency.<br>Key Features<br>SLIC™ System (Slide Lock Integrated Channel)<br>Integrated cable channel with protective cover<br>Eliminates the need for zip ties, tape, or ranger bands<br>Conceals and protects wires while enhancing both form and function<br>Channels double as accessory mounting points, increasing versatility<br>Multi-Position Accessory Mounting<br>M-Lok slots at 2, 4, 7, and 10 o\'clock positions<br>Optimised for ergonomic placement of lights, lasers, grips, and more<br>Maximises modularity across a range of mission profiles<br>Anti-Rotational Tabs<br>Precision-machined to 0.02″ tolerance for mil-spec upper receivers<br>Enhances stability and prevents rail movement under stress<br>Note: Not compatible with billet or non-mil-spec uppers<br>Non-Timing Barrel Nut System<br>Simplifies installation by removing the need for barrel nut timing<br>Available in:<br>1.75 oz anodised aluminium (lightweight)<br>4.40 oz 4140 gas-nitride treated steel (heavy-duty, corrosion-resistant)<br>Premium Build and Coating Options<br>Made from 6061-T6 aluminium<br>Type III hard anodised finishes available in:<br>Black<br>Flat Dark Earth (FDE)<br>Coyote Brown<br>OD Green<br>Balanced strength, weight, and corrosion resistance<br>Withstands harsh operational environments<br>Available Lengths<br>6.8″, 9.3″, 10.5″, 13.5″, 15″<br>Select sizes available with full Arca mount base (13.5″ &amp; 15″ variants)<br>Accommodates a wide range of platforms and user preferences<br>Quick-Detach Sling Mounts<br>1/4 turn QD points made from 17-4 stainless steel<br>Anti-rotational setup prevents sling twist or snagging<br>Quick, one-handed use with maximum retention under load<br>Gas Block Compatibility<br>Designed for use with .750 gas blocks (e.g., Superlative Arms adjustable gas block)<br>Not compatible with .875 or larger gas blocks<br>Included Tools<br>4mm Allen key<br>Torx T-15 wrench<br>Barrel nut tool (American Animal Arms)<br>Whether you\'re running a compact build or extended rifle system, the Lights Out Rail delivers clean cable routing, rock-solid attachment, and precision fitment - with the finish and reliability expected by modern professionals.</p>', 'published', '[\"https:\\/\\/anandcomputer.com\\/products\\/ID-18%20to%2045%20American%20Animal%20Arms%20Handguards\\/american-animal-arms-lights-out-rail-main-image.jpg\",\"products\\/american-animal-arms-lights-out-rail-option1.webp\",\"products\\/american-animal-arms-lights-out-rail-option2.webp\",\"products\\/american-animal-arms-lights-out-rail-option3.webp\",\"products\\/american-animal-arms-lights-out-rail-option4.webp\",\"https:\\/\\/anandcomputer.com\\/products\\/ID-18%20to%2045%20American%20Animal%20Arms%20Handguards\\/american-animal-arms-lights-out-rail-option5.png\",\"products\\/american-animal-arms-lights-out-rail-option6.webp\",\"products\\/american-animal-arms-lights-out-rail-option7.webp\",\"products\\/american-animal-arms-lights-out-rail-option8.webp\",\"products\\/american-animal-arms-lights-out-rail-option9.webp\",\"products\\/american-animal-arms-lights-out-rail-option10.jpg\",\"products\\/american-animal-arms-lights-out-rail-option11.jpg\",\"products\\/american-animal-arms-lights-out-rail-option12.jpg\",\"products\\/american-animal-arms-lights-out-rail-4-colour-opti.webp\",\"https:\\/\\/anandcomputer.com\\/products\\/ID-18%20to%2045%20American%20Animal%20Arms%20Handguards\\/american-animal-arms-lights-out-rail-logo.webp \\n```\"]', NULL, 'RR-AAA-6.8-B', 0, 18, 0, 1, 'in_stock', 1, 0, 0, 0, 0, 0.00, 0, 375, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9, '2025-11-13 09:26:50', '2025-11-13 09:26:50', 1, 'Botble\\ACL\\Models\\User', 'https://anandcomputer.com/products/ID-18 to 45 American Animal Arms Handguards/american-animal-arms-lights-out-rail-main-image.jpg', 'physical', '', NULL, 0, 0, 'auto_generate', 0, 0, 0, NULL, 0);
INSERT INTO `ec_products` (`id`, `name`, `slug`, `description`, `content`, `status`, `images`, `video_media`, `sku`, `order`, `quantity`, `allow_checkout_when_out_of_stock`, `with_storehouse_management`, `stock_status`, `is_featured`, `brand_id`, `is_variation`, `variations_count`, `reviews_count`, `reviews_avg`, `sale_type`, `price`, `sale_price`, `start_date`, `end_date`, `length`, `wide`, `height`, `weight`, `tax_id`, `views`, `created_at`, `updated_at`, `created_by_id`, `created_by_type`, `image`, `product_type`, `barcode`, `cost_per_item`, `price_includes_tax`, `generate_license_code`, `license_code_type`, `minimum_order_quantity`, `maximum_order_quantity`, `notify_attachment_updated`, `specification_table_id`, `is_pmd_product`) VALUES
(367, 'American Animal Arms - Lights Out Rail - 6.8\"\nCoyote Brown', 'american-animal-arms-lights-out-rail-68-coyote-brown', 'The Lights Out Rail is a premium, American-engineered handguard built for professional end users who demand reliability, adaptability, and a refined finish. Constructed from 6061-T6 aluminium with a Type III hard anodised coating, this rail system blends durability with clean, functional design.\n\nAt the heart of its innovation is the patent-pending SLIC™ system—a proprietary cable management and accessory mounting solution that eliminates clutter and maximises operational efficiency.\n\nKey Features\n\nSLIC™ System (Slide Lock Integrated Channel)\nIntegrated cable channel with protective cover\nEliminates the need for zip ties, tape, or ranger bands\nConceals and protects wires while enhancing both form and function\nChannels double as accessory mounting points, increasing versatility\n\nMulti-Position Accessory Mounting\nM-Lok slots at 2, 4, 7, and 10 o\'clock positions\nOptimised for ergonomic placement of lights, lasers, grips, and more\nMaximises modularity across a range of mission profiles\n\nAnti-Rotational Tabs\nPrecision-machined to 0.02″ tolerance for mil-spec upper receivers\nEnhances stability and prevents rail movement under stress\nNote: Not compatible with billet or non-mil-spec uppers\n\nNon-Timing Barrel Nut System\nSimplifies installation by removing the need for barrel nut timing\nAvailable in:\n1.75 oz anodised aluminium (lightweight)\n4.40 oz 4140 gas-nitride treated steel (heavy-duty, corrosion-resistant)\n\nPremium Build and Coating Options\nMade from 6061-T6 aluminium\nType III hard anodised finishes available in:\nBlack\nFlat Dark Earth (FDE)\nCoyote Brown\nOD Green\nBalanced strength, weight, and corrosion resistance\nWithstands harsh operational environments\n\nAvailable Lengths\n6.8″, 9.3″, 10.5″, 13.5″, 15″\nSelect sizes available with full Arca mount base (13.5″ &amp; 15″ variants)\nAccommodates a wide range of platforms and user preferences\n\nQuick-Detach Sling Mounts\n1/4 turn QD points made from 17-4 stainless steel\nAnti-rotational setup prevents sling twist or snagging\nQuick, one-handed use with maximum retention under load\n\nGas Block Compatibility\nDesigned for use with .750 gas blocks (e.g., Superlative Arms adjustable gas block)\nNot compatible with .875 or larger gas blocks\n\nIncluded Tools\n4mm Allen key\nTorx T-15 wrench\nBarrel nut tool (American Animal Arms)\n\nWhether you\'re running a compact build or extended rifle system, the Lights Out Rail delivers clean cable routing, rock-solid attachment, and precision fitment - with the finish and reliability expected by modern professionals.', '<p>The Lights Out Rail is a premium, American-engineered handguard built for professional end users who demand reliability, adaptability, and a refined finish. Constructed from 6061-T6 aluminium with a Type III hard anodised coating, this rail system blends durability with clean, functional design.<br>At the heart of its innovation is the patent-pending SLIC™ system—a proprietary cable management and accessory mounting solution that eliminates clutter and maximises operational efficiency.<br>Key Features<br>SLIC™ System (Slide Lock Integrated Channel)<br>Integrated cable channel with protective cover<br>Eliminates the need for zip ties, tape, or ranger bands<br>Conceals and protects wires while enhancing both form and function<br>Channels double as accessory mounting points, increasing versatility<br>Multi-Position Accessory Mounting<br>M-Lok slots at 2, 4, 7, and 10 o\'clock positions<br>Optimised for ergonomic placement of lights, lasers, grips, and more<br>Maximises modularity across a range of mission profiles<br>Anti-Rotational Tabs<br>Precision-machined to 0.02″ tolerance for mil-spec upper receivers<br>Enhances stability and prevents rail movement under stress<br>Note: Not compatible with billet or non-mil-spec uppers<br>Non-Timing Barrel Nut System<br>Simplifies installation by removing the need for barrel nut timing<br>Available in:<br>1.75 oz anodised aluminium (lightweight)<br>4.40 oz 4140 gas-nitride treated steel (heavy-duty, corrosion-resistant)<br>Premium Build and Coating Options<br>Made from 6061-T6 aluminium<br>Type III hard anodised finishes available in:<br>Black<br>Flat Dark Earth (FDE)<br>Coyote Brown<br>OD Green<br>Balanced strength, weight, and corrosion resistance<br>Withstands harsh operational environments<br>Available Lengths<br>6.8″, 9.3″, 10.5″, 13.5″, 15″<br>Select sizes available with full Arca mount base (13.5″ &amp; 15″ variants)<br>Accommodates a wide range of platforms and user preferences<br>Quick-Detach Sling Mounts<br>1/4 turn QD points made from 17-4 stainless steel<br>Anti-rotational setup prevents sling twist or snagging<br>Quick, one-handed use with maximum retention under load<br>Gas Block Compatibility<br>Designed for use with .750 gas blocks (e.g., Superlative Arms adjustable gas block)<br>Not compatible with .875 or larger gas blocks<br>Included Tools<br>4mm Allen key<br>Torx T-15 wrench<br>Barrel nut tool (American Animal Arms)<br>Whether you\'re running a compact build or extended rifle system, the Lights Out Rail delivers clean cable routing, rock-solid attachment, and precision fitment - with the finish and reliability expected by modern professionals.</p>', 'published', '[\"https:\\/\\/anandcomputer.com\\/products\\/ID-18%20to%2045%20American%20Animal%20Arms%20Handguards\\/american-animal-arms-lights-out-rail-main-image.jpg\",\"products\\/american-animal-arms-lights-out-rail-option1-2.webp\",\"products\\/american-animal-arms-lights-out-rail-option2-2.webp\",\"products\\/american-animal-arms-lights-out-rail-option3-2.webp\",\"products\\/american-animal-arms-lights-out-rail-option4-2.webp\",\"https:\\/\\/anandcomputer.com\\/products\\/ID-18%20to%2045%20American%20Animal%20Arms%20Handguards\\/american-animal-arms-lights-out-rail-option5.png\",\"products\\/american-animal-arms-lights-out-rail-option6-2.webp\",\"products\\/american-animal-arms-lights-out-rail-option7-2.webp\",\"products\\/american-animal-arms-lights-out-rail-option8-2.webp\",\"products\\/american-animal-arms-lights-out-rail-option9-2.webp\",\"products\\/american-animal-arms-lights-out-rail-option10-2.jpg\",\"products\\/american-animal-arms-lights-out-rail-option11-2.jpg\",\"products\\/american-animal-arms-lights-out-rail-option12-2.jpg\",\"products\\/american-animal-arms-lights-out-rail-4-colour-opti-2.webp\",\"products\\/american-animal-arms-lights-out-rail-logo-1.webp\"]', NULL, 'RR-AAA-6.8-CB', 0, 18, 0, 1, 'in_stock', 1, 0, 0, 0, 0, 0.00, 0, 375, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9, '2025-11-13 09:32:54', '2025-11-13 09:32:54', 1, 'Botble\\ACL\\Models\\User', 'https://anandcomputer.com/products/ID-18 to 45 American Animal Arms Handguards/american-animal-arms-lights-out-rail-main-image.jpg', 'physical', '', NULL, 0, 0, 'auto_generate', 0, 0, 0, NULL, 0),
(368, 'American Animal Arms - Lights Out Rail - 6.8\"\nFlat Dark Earth (FDE)', 'american-animal-arms-lights-out-rail-68-flat-dark-earth-fde', 'The Lights Out Rail is a premium, American-engineered handguard built for professional end users who demand reliability, adaptability, and a refined finish. Constructed from 6061-T6 aluminium with a Type III hard anodised coating, this rail system blends durability with clean, functional design.\n\nAt the heart of its innovation is the patent-pending SLIC™ system—a proprietary cable management and accessory mounting solution that eliminates clutter and maximises operational efficiency.\n\nKey Features\n\nSLIC™ System (Slide Lock Integrated Channel)\nIntegrated cable channel with protective cover\nEliminates the need for zip ties, tape, or ranger bands\nConceals and protects wires while enhancing both form and function\nChannels double as accessory mounting points, increasing versatility\n\nMulti-Position Accessory Mounting\nM-Lok slots at 2, 4, 7, and 10 o\'clock positions\nOptimised for ergonomic placement of lights, lasers, grips, and more\nMaximises modularity across a range of mission profiles\n\nAnti-Rotational Tabs\nPrecision-machined to 0.02″ tolerance for mil-spec upper receivers\nEnhances stability and prevents rail movement under stress\nNote: Not compatible with billet or non-mil-spec uppers\n\nNon-Timing Barrel Nut System\nSimplifies installation by removing the need for barrel nut timing\nAvailable in:\n1.75 oz anodised aluminium (lightweight)\n4.40 oz 4140 gas-nitride treated steel (heavy-duty, corrosion-resistant)\n\nPremium Build and Coating Options\nMade from 6061-T6 aluminium\nType III hard anodised finishes available in:\nBlack\nFlat Dark Earth (FDE)\nCoyote Brown\nOD Green\nBalanced strength, weight, and corrosion resistance\nWithstands harsh operational environments\n\nAvailable Lengths\n6.8″, 9.3″, 10.5″, 13.5″, 15″\nSelect sizes available with full Arca mount base (13.5″ &amp; 15″ variants)\nAccommodates a wide range of platforms and user preferences\n\nQuick-Detach Sling Mounts\n1/4 turn QD points made from 17-4 stainless steel\nAnti-rotational setup prevents sling twist or snagging\nQuick, one-handed use with maximum retention under load\n\nGas Block Compatibility\nDesigned for use with .750 gas blocks (e.g., Superlative Arms adjustable gas block)\nNot compatible with .875 or larger gas blocks\n\nIncluded Tools\n4mm Allen key\nTorx T-15 wrench\nBarrel nut tool (American Animal Arms)\n\nWhether you\'re running a compact build or extended rifle system, the Lights Out Rail delivers clean cable routing, rock-solid attachment, and precision fitment - with the finish and reliability expected by modern professionals.', '<p>The Lights Out Rail is a premium, American-engineered handguard built for professional end users who demand reliability, adaptability, and a refined finish. Constructed from 6061-T6 aluminium with a Type III hard anodised coating, this rail system blends durability with clean, functional design.<br>At the heart of its innovation is the patent-pending SLIC™ system—a proprietary cable management and accessory mounting solution that eliminates clutter and maximises operational efficiency.<br>Key Features<br>SLIC™ System (Slide Lock Integrated Channel)<br>Integrated cable channel with protective cover<br>Eliminates the need for zip ties, tape, or ranger bands<br>Conceals and protects wires while enhancing both form and function<br>Channels double as accessory mounting points, increasing versatility<br>Multi-Position Accessory Mounting<br>M-Lok slots at 2, 4, 7, and 10 o\'clock positions<br>Optimised for ergonomic placement of lights, lasers, grips, and more<br>Maximises modularity across a range of mission profiles<br>Anti-Rotational Tabs<br>Precision-machined to 0.02″ tolerance for mil-spec upper receivers<br>Enhances stability and prevents rail movement under stress<br>Note: Not compatible with billet or non-mil-spec uppers<br>Non-Timing Barrel Nut System<br>Simplifies installation by removing the need for barrel nut timing<br>Available in:<br>1.75 oz anodised aluminium (lightweight)<br>4.40 oz 4140 gas-nitride treated steel (heavy-duty, corrosion-resistant)<br>Premium Build and Coating Options<br>Made from 6061-T6 aluminium<br>Type III hard anodised finishes available in:<br>Black<br>Flat Dark Earth (FDE)<br>Coyote Brown<br>OD Green<br>Balanced strength, weight, and corrosion resistance<br>Withstands harsh operational environments<br>Available Lengths<br>6.8″, 9.3″, 10.5″, 13.5″, 15″<br>Select sizes available with full Arca mount base (13.5″ &amp; 15″ variants)<br>Accommodates a wide range of platforms and user preferences<br>Quick-Detach Sling Mounts<br>1/4 turn QD points made from 17-4 stainless steel<br>Anti-rotational setup prevents sling twist or snagging<br>Quick, one-handed use with maximum retention under load<br>Gas Block Compatibility<br>Designed for use with .750 gas blocks (e.g., Superlative Arms adjustable gas block)<br>Not compatible with .875 or larger gas blocks<br>Included Tools<br>4mm Allen key<br>Torx T-15 wrench<br>Barrel nut tool (American Animal Arms)<br>Whether you\'re running a compact build or extended rifle system, the Lights Out Rail delivers clean cable routing, rock-solid attachment, and precision fitment - with the finish and reliability expected by modern professionals.</p>', 'published', '[\"https:\\/\\/anandcomputer.com\\/products\\/ID-18%20to%2045%20American%20Animal%20Arms%20Handguards\\/american-animal-arms-lights-out-rail-main-image.jpg\",\"products\\/american-animal-arms-lights-out-rail-option1-3.webp\",\"products\\/american-animal-arms-lights-out-rail-option2-3.webp\",\"products\\/american-animal-arms-lights-out-rail-option3-3.webp\",\"products\\/american-animal-arms-lights-out-rail-option4-3.webp\",\"https:\\/\\/anandcomputer.com\\/products\\/ID-18%20to%2045%20American%20Animal%20Arms%20Handguards\\/american-animal-arms-lights-out-rail-option5.png\",\"products\\/american-animal-arms-lights-out-rail-option6-3.webp\",\"products\\/american-animal-arms-lights-out-rail-option7-3.webp\",\"products\\/american-animal-arms-lights-out-rail-option8-3.webp\",\"products\\/american-animal-arms-lights-out-rail-option9-3.webp\",\"products\\/american-animal-arms-lights-out-rail-option10-3.jpg\",\"products\\/american-animal-arms-lights-out-rail-option11-3.jpg\",\"products\\/american-animal-arms-lights-out-rail-option12-3.jpg\",\"products\\/american-animal-arms-lights-out-rail-4-colour-opti-3.webp\",\"products\\/american-animal-arms-lights-out-rail-logo-2.webp\"]', NULL, 'RR-AAA-6.8-FDE', 0, 12, 0, 1, 'in_stock', 1, 0, 0, 0, 0, 0.00, 0, 375, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 13, '2025-11-13 09:33:14', '2025-12-16 14:52:20', 1, 'Botble\\ACL\\Models\\User', 'https://anandcomputer.com/products/ID-18 to 45 American Animal Arms Handguards/american-animal-arms-lights-out-rail-main-image.jpg', 'physical', '', NULL, 0, 0, 'auto_generate', 0, 0, 0, NULL, 0),
(373, 'X-Pole – 4\' to 12\' Extendable (Pole Only)', 'x-pole-4-to-12-extendable-pole-only', 'The X-Pole is a telescopic, breaching pole designed to extend from 4 to 12 feet, giving operators the ability to strike windows or glass barriers from a safe distance. Built to interface seamlessly with the X-Ball® (sold separately), it enables a parallel or offset approach, significantly reducing the operator’s exposure to hostile angles.\n\nConstructed for durability and control, the pole features a secure locking mechanism to maintain stability at full extension. Compact when collapsed and quick to deploy, it is ideal for vehicle assaults, public order teams, and tactical operations requiring enhanced reach.\n\nNote: This product includes the extendable pole only. X-Ball® and hook attachments sold separately.', '<p>The X-Pole is a telescopic, breaching pole designed to extend from 4 to 12 feet, giving operators the ability to strike windows or glass barriers from a safe distance. Built to interface seamlessly with the X-Ball® (sold separately), it enables a parallel or offset approach, significantly reducing the operator’s exposure to hostile angles.<br>Constructed for durability and control, the pole features a secure locking mechanism to maintain stability at full extension. Compact when collapsed and quick to deploy, it is ideal for vehicle assaults, public order teams, and tactical operations requiring enhanced reach.<br>Note: This product includes the extendable pole only. X-Ball® and hook attachments sold separately.</p>', 'published', '[\"https:\\/\\/anandcomputer.com\\/products\\/x-pole\\u20134\\\"-12\\\"-extendable-pole-only.png\"]', NULL, 'RR-BXG-XP-EXT', 0, 18, 0, 1, 'in_stock', 1, 0, 0, 0, 0, 0.00, 0, 250, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12, '2025-11-13 11:05:36', '2025-11-13 11:05:36', 1, 'Botble\\ACL\\Models\\User', 'products/x-polee284a220-20tactical20glass20breaching.png', 'physical', '', NULL, 0, 0, 'auto_generate', 0, 0, 0, NULL, 0),
(374, 'X-Pole™ - Tactical Glass Breaching Pole without X Ball', 'x-pole-tactical-glass-breaching-pole-without-x-ball', '<p>The X-Pole™ is a robust steel breaching pole engineered to integrate with the X-Ball®, enabling effective glass strikes while maintaining maximum stand-off distance. Designed for a parallel approach to vehicles or windows, it significantly reduces the operator’s exposure - from a 180° threat angle down to just 5–10°. The pole also includes a hook attachment for break-and-rake operations, making it a versatile tool for controlled glass removal during high-risk entries. Ideal for tactical teams seeking to minimise risk while breaching in open or exposed environments.</p>', '<p>The X-Pole™ is a robust steel breaching pole engineered to integrate with the X-Ball®, enabling effective glass strikes while maintaining maximum stand-off distance. Designed for a parallel approach to vehicles or windows, it significantly reduces the operator’s exposure - from a 180° threat angle down to just 5–10°.<br>The pole also includes a hook attachment for break-and-rake operations, making it a versatile tool for controlled glass removal during high-risk entries.<br>Ideal for tactical teams seeking to minimise risk while breaching in open or exposed environments.</p>', 'published', '[\"products\\/x-polee284a220-20tactical20glass20breaching-1.png\",\"products\\/x-pole-tactical-glass-breaching-pole-with-x-bal.jpg\"]', NULL, 'RR-BXG-XP', 0, 18, 0, 1, 'in_stock', 1, NULL, 0, 0, 0, 0.00, 0, 250, 220, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 25, '2025-11-13 11:05:41', '2025-11-19 12:24:52', 1, 'Botble\\ACL\\Models\\User', 'products/x-polee284a220-20tactical20glass20breaching-2.png', 'physical', NULL, NULL, 0, 0, 'auto_generate', 0, 0, 0, NULL, 0),
(375, 'test', 'test', '<p>test description </p>', '', 'published', '[\"5-1-4.png\",\"5-1-3.png\"]', NULL, 'SF-2443-46TP', 0, 0, 0, 0, 'in_stock', 1, NULL, 0, 0, 0, 0.00, 0, 120, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 6, '2025-11-28 05:26:36', '2025-11-28 05:27:44', 1, 'Botble\\ACL\\Models\\User', '5-1-4.png', 'physical', NULL, 0, 0, 0, 'auto_generate', 0, 0, 0, NULL, 0),
(376, 'weapon 1', 'weapon-1', '<p>product descrption here</p>', '', 'published', '[\"1113.jpg\"]', NULL, 'SF-2443-GRA5', 0, 0, 0, 0, 'in_stock', 1, NULL, 0, 0, 0, 0.00, 0, 100, 80, NULL, NULL, 0, 0, 0, 0, NULL, 5, '2025-11-28 06:41:17', '2025-11-28 06:41:17', 1, 'Botble\\ACL\\Models\\User', '1113.jpg', 'physical', NULL, 0, 0, 0, 'auto_generate', 0, 0, 0, NULL, 0),
(377, 'weapon 2', 'weapon-2', '<p>description of weapon 2 </p>', '', 'published', '[\"5-1-3.png\"]', NULL, 'SF-2443-DNZG', 0, 0, 0, 0, 'in_stock', 1, NULL, 0, 0, 0, 0.00, 0, 100, 95, NULL, NULL, 0, 0, 0, 0, NULL, 5, '2025-11-28 06:44:41', '2025-12-19 13:39:15', 1, 'Botble\\ACL\\Models\\User', '5-1-4.png', 'physical', NULL, 0, 0, 0, 'auto_generate', 0, 0, 0, NULL, 1),
(378, 'weapon 1', 'weapon-1-1', '<p>description for weapon1</p>', '', 'published', '[\"5-1-3.png\",\"5-1-2.png\"]', NULL, 'SF-2443-IRQR', 0, 0, 0, 0, 'in_stock', 0, NULL, 0, 0, 0, 0.00, 0, 100, 95, NULL, NULL, 0, 0, 0, 0, NULL, 8, '2025-11-28 09:29:39', '2025-12-19 12:31:44', 1, 'Botble\\ACL\\Models\\User', '5-1-4.png', 'physical', NULL, 0, 0, 0, 'auto_generate', 0, 0, 0, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `ec_products_translations`
--

CREATE TABLE `ec_products_translations` (
  `lang_code` varchar(191) NOT NULL,
  `ec_products_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) DEFAULT NULL,
  `slug` varchar(191) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `content` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_product_attributes`
--

CREATE TABLE `ec_product_attributes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `attribute_set_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(120) NOT NULL,
  `slug` varchar(120) DEFAULT NULL,
  `color` varchar(120) DEFAULT NULL,
  `image` varchar(191) DEFAULT NULL,
  `is_default` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `order` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_product_attributes_translations`
--

CREATE TABLE `ec_product_attributes_translations` (
  `lang_code` varchar(191) NOT NULL,
  `ec_product_attributes_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_product_attribute_sets`
--

CREATE TABLE `ec_product_attribute_sets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(120) NOT NULL,
  `slug` varchar(120) DEFAULT NULL,
  `display_layout` varchar(191) NOT NULL DEFAULT 'dropdown',
  `is_searchable` tinyint(3) UNSIGNED NOT NULL DEFAULT 1,
  `is_comparable` tinyint(3) UNSIGNED NOT NULL DEFAULT 1,
  `is_use_in_product_listing` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `status` varchar(60) NOT NULL DEFAULT 'published',
  `order` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `use_image_from_product_variation` tinyint(3) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_product_attribute_sets`
--

INSERT INTO `ec_product_attribute_sets` (`id`, `title`, `slug`, `display_layout`, `is_searchable`, `is_comparable`, `is_use_in_product_listing`, `status`, `order`, `created_at`, `updated_at`, `use_image_from_product_variation`) VALUES
(3, 'Size', 'size', 'dropdown', 1, 1, 0, 'published', 0, '2025-11-01 10:54:53', '2025-11-01 10:54:53', 0),
(4, 'Size', 'size-1', 'dropdown', 1, 1, 0, 'published', 0, '2025-11-01 10:54:53', '2025-11-01 10:54:53', 0),
(5, 'Size', 'size-2', 'dropdown', 1, 1, 0, 'published', 0, '2025-11-01 10:54:53', '2025-11-01 10:54:53', 0),
(6, 'Size', 'size-3', 'dropdown', 1, 1, 0, 'published', 0, '2025-11-01 10:54:53', '2025-11-01 10:54:53', 0),
(7, 'Size', 'size-4', 'dropdown', 1, 1, 0, 'published', 0, '2025-11-01 10:54:53', '2025-11-01 10:54:53', 0),
(8, 'Size', 'size-5', 'dropdown', 1, 1, 0, 'published', 0, '2025-11-01 10:54:53', '2025-11-01 10:54:53', 0),
(9, 'Size', 'size-6', 'dropdown', 1, 1, 0, 'published', 0, '2025-11-01 10:54:53', '2025-11-01 10:54:53', 0),
(10, 'Size', 'size-7', 'dropdown', 1, 1, 0, 'published', 0, '2025-11-01 10:54:53', '2025-11-01 10:54:53', 0),
(11, 'Size', 'size-8', 'dropdown', 1, 1, 0, 'published', 0, '2025-11-01 10:54:53', '2025-11-01 10:54:53', 0);

-- --------------------------------------------------------

--
-- Table structure for table `ec_product_attribute_sets_translations`
--

CREATE TABLE `ec_product_attribute_sets_translations` (
  `lang_code` varchar(191) NOT NULL,
  `ec_product_attribute_sets_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_product_categories`
--

CREATE TABLE `ec_product_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `slug` varchar(191) DEFAULT NULL,
  `parent_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `description` mediumtext DEFAULT NULL,
  `status` varchar(60) NOT NULL DEFAULT 'published',
  `order` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `image` varchar(191) DEFAULT NULL,
  `is_featured` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `icon` varchar(191) DEFAULT NULL,
  `icon_image` varchar(191) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_product_categories`
--

INSERT INTO `ec_product_categories` (`id`, `name`, `slug`, `parent_id`, `description`, `status`, `order`, `image`, `is_featured`, `created_at`, `updated_at`, `icon`, `icon_image`) VALUES
(29, 'Breaching', 'breaching', 0, NULL, 'published', 1, NULL, 0, '2025-11-06 12:33:32', '2025-11-06 12:33:32', NULL, NULL),
(31, 'Breaching Weapon Retention', 'breaching-weapon-retention', 0, NULL, 'published', 3, NULL, 0, '2025-11-07 06:00:22', '2025-11-10 06:06:28', NULL, NULL),
(32, 'Method of Entry Breaching Tape & Adhesives', 'method-of-entry-breaching-tape-adhesives', 0, NULL, 'published', 4, NULL, 0, '2025-11-07 06:00:49', '2025-11-07 06:00:50', NULL, NULL),
(33, 'Method of Entry Breaching Tools', 'method-of-entry-breaching-tools', 0, NULL, 'published', 5, NULL, 0, '2025-11-07 06:01:10', '2025-11-07 06:01:10', NULL, NULL),
(34, 'Weapons & Small Arms Accessories', 'weapons-small-arms-accessories', 0, NULL, 'published', 6, NULL, 0, '2025-11-07 06:03:03', '2025-11-07 06:03:03', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ec_product_categories_translations`
--

CREATE TABLE `ec_product_categories_translations` (
  `lang_code` varchar(191) NOT NULL,
  `ec_product_categories_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) DEFAULT NULL,
  `slug` varchar(191) DEFAULT NULL,
  `description` mediumtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_product_categorizables`
--

CREATE TABLE `ec_product_categorizables` (
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `reference_id` bigint(20) UNSIGNED NOT NULL,
  `reference_type` varchar(120) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_product_category_product`
--

CREATE TABLE `ec_product_category_product` (
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_product_category_product`
--

INSERT INTO `ec_product_category_product` (`category_id`, `product_id`) VALUES
(29, 352),
(29, 353),
(29, 354),
(29, 376),
(29, 377),
(31, 377),
(31, 378);

-- --------------------------------------------------------

--
-- Table structure for table `ec_product_collections`
--

CREATE TABLE `ec_product_collections` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `slug` varchar(191) NOT NULL,
  `description` varchar(400) DEFAULT NULL,
  `image` varchar(191) DEFAULT NULL,
  `status` varchar(60) NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_featured` tinyint(3) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_product_collections`
--

INSERT INTO `ec_product_collections` (`id`, `name`, `slug`, `description`, `image`, `status`, `created_at`, `updated_at`, `is_featured`) VALUES
(1, 'New Arrival', 'new-arrival', NULL, NULL, 'published', '2025-10-20 17:06:03', '2025-10-20 17:06:03', 0),
(2, 'Best Sellers', 'best-sellers', NULL, NULL, 'published', '2025-10-20 17:06:03', '2025-10-20 17:06:03', 0),
(3, 'Special Offer', 'special-offer', NULL, NULL, 'published', '2025-10-20 17:06:03', '2025-10-20 17:06:03', 0),
(4, 'Reactive Providence Hair Color', 'reactive-providence-hair-color', NULL, 'banners/thumb-01.jpg', 'published', '2025-10-20 17:06:03', '2025-10-20 17:06:03', 0),
(5, 'New Modern &amp; Stylist Makeup', 'new-modern-stylist-makeup', NULL, 'banners/thumb-02.jpg', 'published', '2025-10-20 17:06:03', '2025-10-20 17:06:03', 0),
(6, 'Intensive Glow C+ Serum', 'intensive-glow-c-serum', NULL, 'banners/thumb-03.jpg', 'published', '2025-10-20 17:06:03', '2025-10-20 17:06:03', 0),
(7, 'Vogue', 'vogue', NULL, 'banners/thumb-04.jpg', 'published', '2025-10-20 17:06:03', '2025-10-20 17:06:03', 0);

-- --------------------------------------------------------

--
-- Table structure for table `ec_product_collections_translations`
--

CREATE TABLE `ec_product_collections_translations` (
  `lang_code` varchar(191) NOT NULL,
  `ec_product_collections_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) DEFAULT NULL,
  `description` varchar(400) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_product_collection_products`
--

CREATE TABLE `ec_product_collection_products` (
  `product_collection_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_product_collection_products`
--

INSERT INTO `ec_product_collection_products` (`product_collection_id`, `product_id`) VALUES
(1, 3),
(1, 4),
(1, 6),
(1, 7),
(1, 13),
(1, 15),
(1, 16),
(1, 19),
(1, 20),
(1, 22),
(1, 32),
(1, 37),
(1, 38),
(1, 39),
(1, 40),
(1, 46),
(1, 49),
(1, 50),
(1, 55),
(1, 59),
(1, 60),
(1, 61),
(1, 62),
(1, 64),
(1, 65),
(1, 67),
(1, 70),
(1, 72),
(1, 73),
(2, 2),
(2, 5),
(2, 8),
(2, 10),
(2, 11),
(2, 12),
(2, 17),
(2, 23),
(2, 25),
(2, 26),
(2, 27),
(2, 28),
(2, 33),
(2, 41),
(2, 42),
(2, 51),
(2, 52),
(2, 54),
(2, 57),
(2, 58),
(2, 66),
(2, 68),
(2, 69),
(2, 71),
(2, 74),
(2, 75),
(3, 1),
(3, 9),
(3, 14),
(3, 18),
(3, 21),
(3, 24),
(3, 29),
(3, 30),
(3, 31),
(3, 34),
(3, 35),
(3, 36),
(3, 43),
(3, 44),
(3, 45),
(3, 47),
(3, 48),
(3, 53),
(3, 56),
(3, 63);

-- --------------------------------------------------------

--
-- Table structure for table `ec_product_cross_sale_relations`
--

CREATE TABLE `ec_product_cross_sale_relations` (
  `from_product_id` bigint(20) UNSIGNED NOT NULL,
  `to_product_id` bigint(20) UNSIGNED NOT NULL,
  `is_variant` tinyint(1) NOT NULL DEFAULT 0,
  `price` decimal(15,2) DEFAULT 0.00,
  `price_type` varchar(191) NOT NULL DEFAULT 'fixed',
  `apply_to_all_variations` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_product_cross_sale_relations`
--

INSERT INTO `ec_product_cross_sale_relations` (`from_product_id`, `to_product_id`, `is_variant`, `price`, `price_type`, `apply_to_all_variations`) VALUES
(1, 16, 0, 0.00, 'fixed', 1),
(1, 67, 0, 0.00, 'fixed', 1),
(1, 69, 0, 0.00, 'fixed', 1),
(1, 75, 0, 0.00, 'fixed', 1),
(2, 9, 0, 0.00, 'fixed', 1),
(2, 30, 0, 0.00, 'fixed', 1),
(2, 47, 0, 0.00, 'fixed', 1),
(2, 66, 0, 0.00, 'fixed', 1),
(3, 12, 0, 0.00, 'fixed', 1),
(3, 24, 0, 0.00, 'fixed', 1),
(3, 35, 0, 0.00, 'fixed', 1),
(3, 60, 0, 0.00, 'fixed', 1),
(4, 3, 0, 0.00, 'fixed', 1),
(4, 27, 0, 0.00, 'fixed', 1),
(4, 36, 0, 0.00, 'fixed', 1),
(4, 51, 0, 0.00, 'fixed', 1),
(5, 15, 0, 0.00, 'fixed', 1),
(5, 27, 0, 0.00, 'fixed', 1),
(5, 72, 0, 0.00, 'fixed', 1),
(6, 15, 0, 0.00, 'fixed', 1),
(6, 24, 0, 0.00, 'fixed', 1),
(6, 25, 0, 0.00, 'fixed', 1),
(6, 39, 0, 0.00, 'fixed', 1),
(7, 19, 0, 0.00, 'fixed', 1),
(7, 61, 0, 0.00, 'fixed', 1),
(7, 65, 0, 0.00, 'fixed', 1),
(7, 67, 0, 0.00, 'fixed', 1),
(8, 4, 0, 0.00, 'fixed', 1),
(8, 38, 0, 0.00, 'fixed', 1),
(8, 44, 0, 0.00, 'fixed', 1),
(8, 56, 0, 0.00, 'fixed', 1),
(9, 28, 0, 0.00, 'fixed', 1),
(9, 35, 0, 0.00, 'fixed', 1),
(9, 59, 0, 0.00, 'fixed', 1),
(9, 67, 0, 0.00, 'fixed', 1),
(10, 5, 0, 0.00, 'fixed', 1),
(10, 30, 0, 0.00, 'fixed', 1),
(10, 35, 0, 0.00, 'fixed', 1),
(10, 70, 0, 0.00, 'fixed', 1),
(11, 10, 0, 0.00, 'fixed', 1),
(11, 13, 0, 0.00, 'fixed', 1),
(11, 63, 0, 0.00, 'fixed', 1),
(11, 75, 0, 0.00, 'fixed', 1),
(12, 33, 0, 0.00, 'fixed', 1),
(12, 35, 0, 0.00, 'fixed', 1),
(12, 44, 0, 0.00, 'fixed', 1),
(12, 51, 0, 0.00, 'fixed', 1),
(13, 4, 0, 0.00, 'fixed', 1),
(13, 38, 0, 0.00, 'fixed', 1),
(13, 63, 0, 0.00, 'fixed', 1),
(13, 65, 0, 0.00, 'fixed', 1),
(14, 18, 0, 0.00, 'fixed', 1),
(14, 39, 0, 0.00, 'fixed', 1),
(14, 55, 0, 0.00, 'fixed', 1),
(15, 6, 0, 0.00, 'fixed', 1),
(15, 27, 0, 0.00, 'fixed', 1),
(15, 53, 0, 0.00, 'fixed', 1),
(15, 68, 0, 0.00, 'fixed', 1),
(16, 21, 0, 0.00, 'fixed', 1),
(16, 46, 0, 0.00, 'fixed', 1),
(16, 54, 0, 0.00, 'fixed', 1),
(16, 74, 0, 0.00, 'fixed', 1),
(17, 1, 0, 0.00, 'fixed', 1),
(17, 50, 0, 0.00, 'fixed', 1),
(17, 58, 0, 0.00, 'fixed', 1),
(17, 70, 0, 0.00, 'fixed', 1),
(18, 9, 0, 0.00, 'fixed', 1),
(18, 21, 0, 0.00, 'fixed', 1),
(18, 39, 0, 0.00, 'fixed', 1),
(18, 64, 0, 0.00, 'fixed', 1),
(19, 13, 0, 0.00, 'fixed', 1),
(19, 25, 0, 0.00, 'fixed', 1),
(19, 39, 0, 0.00, 'fixed', 1),
(19, 58, 0, 0.00, 'fixed', 1),
(20, 9, 0, 0.00, 'fixed', 1),
(20, 42, 0, 0.00, 'fixed', 1),
(20, 43, 0, 0.00, 'fixed', 1),
(20, 61, 0, 0.00, 'fixed', 1),
(21, 26, 0, 0.00, 'fixed', 1),
(21, 34, 0, 0.00, 'fixed', 1),
(21, 47, 0, 0.00, 'fixed', 1),
(21, 64, 0, 0.00, 'fixed', 1),
(22, 4, 0, 0.00, 'fixed', 1),
(22, 19, 0, 0.00, 'fixed', 1),
(22, 29, 0, 0.00, 'fixed', 1),
(22, 41, 0, 0.00, 'fixed', 1),
(23, 24, 0, 0.00, 'fixed', 1),
(23, 26, 0, 0.00, 'fixed', 1),
(23, 34, 0, 0.00, 'fixed', 1),
(23, 75, 0, 0.00, 'fixed', 1),
(24, 22, 0, 0.00, 'fixed', 1),
(24, 47, 0, 0.00, 'fixed', 1),
(24, 57, 0, 0.00, 'fixed', 1),
(24, 64, 0, 0.00, 'fixed', 1),
(25, 41, 0, 0.00, 'fixed', 1),
(25, 47, 0, 0.00, 'fixed', 1),
(25, 53, 0, 0.00, 'fixed', 1),
(25, 74, 0, 0.00, 'fixed', 1),
(26, 3, 0, 0.00, 'fixed', 1),
(26, 51, 0, 0.00, 'fixed', 1),
(26, 53, 0, 0.00, 'fixed', 1),
(26, 58, 0, 0.00, 'fixed', 1),
(27, 7, 0, 0.00, 'fixed', 1),
(27, 17, 0, 0.00, 'fixed', 1),
(27, 38, 0, 0.00, 'fixed', 1),
(27, 51, 0, 0.00, 'fixed', 1),
(28, 27, 0, 0.00, 'fixed', 1),
(28, 45, 0, 0.00, 'fixed', 1),
(28, 70, 0, 0.00, 'fixed', 1),
(29, 14, 0, 0.00, 'fixed', 1),
(29, 18, 0, 0.00, 'fixed', 1),
(29, 20, 0, 0.00, 'fixed', 1),
(29, 52, 0, 0.00, 'fixed', 1),
(30, 18, 0, 0.00, 'fixed', 1),
(30, 29, 0, 0.00, 'fixed', 1),
(30, 56, 0, 0.00, 'fixed', 1),
(30, 70, 0, 0.00, 'fixed', 1),
(31, 12, 0, 0.00, 'fixed', 1),
(31, 20, 0, 0.00, 'fixed', 1),
(31, 33, 0, 0.00, 'fixed', 1),
(31, 70, 0, 0.00, 'fixed', 1),
(32, 58, 0, 0.00, 'fixed', 1),
(32, 64, 0, 0.00, 'fixed', 1),
(32, 65, 0, 0.00, 'fixed', 1),
(32, 74, 0, 0.00, 'fixed', 1),
(33, 2, 0, 0.00, 'fixed', 1),
(33, 25, 0, 0.00, 'fixed', 1),
(33, 41, 0, 0.00, 'fixed', 1),
(33, 69, 0, 0.00, 'fixed', 1),
(34, 15, 0, 0.00, 'fixed', 1),
(34, 20, 0, 0.00, 'fixed', 1),
(34, 29, 0, 0.00, 'fixed', 1),
(34, 67, 0, 0.00, 'fixed', 1),
(35, 5, 0, 0.00, 'fixed', 1),
(35, 18, 0, 0.00, 'fixed', 1),
(35, 53, 0, 0.00, 'fixed', 1),
(35, 62, 0, 0.00, 'fixed', 1),
(36, 12, 0, 0.00, 'fixed', 1),
(36, 18, 0, 0.00, 'fixed', 1),
(36, 38, 0, 0.00, 'fixed', 1),
(36, 62, 0, 0.00, 'fixed', 1),
(37, 8, 0, 0.00, 'fixed', 1),
(37, 23, 0, 0.00, 'fixed', 1),
(37, 53, 0, 0.00, 'fixed', 1),
(37, 74, 0, 0.00, 'fixed', 1),
(38, 5, 0, 0.00, 'fixed', 1),
(38, 44, 0, 0.00, 'fixed', 1),
(38, 57, 0, 0.00, 'fixed', 1),
(38, 65, 0, 0.00, 'fixed', 1),
(39, 23, 0, 0.00, 'fixed', 1),
(39, 36, 0, 0.00, 'fixed', 1),
(39, 42, 0, 0.00, 'fixed', 1),
(39, 60, 0, 0.00, 'fixed', 1),
(40, 23, 0, 0.00, 'fixed', 1),
(40, 33, 0, 0.00, 'fixed', 1),
(40, 71, 0, 0.00, 'fixed', 1),
(41, 30, 0, 0.00, 'fixed', 1),
(41, 40, 0, 0.00, 'fixed', 1),
(41, 58, 0, 0.00, 'fixed', 1),
(41, 64, 0, 0.00, 'fixed', 1),
(42, 12, 0, 0.00, 'fixed', 1),
(42, 67, 0, 0.00, 'fixed', 1),
(42, 68, 0, 0.00, 'fixed', 1),
(42, 71, 0, 0.00, 'fixed', 1),
(43, 3, 0, 0.00, 'fixed', 1),
(43, 54, 0, 0.00, 'fixed', 1),
(43, 58, 0, 0.00, 'fixed', 1),
(43, 61, 0, 0.00, 'fixed', 1),
(44, 7, 0, 0.00, 'fixed', 1),
(44, 12, 0, 0.00, 'fixed', 1),
(44, 25, 0, 0.00, 'fixed', 1),
(44, 41, 0, 0.00, 'fixed', 1),
(45, 30, 0, 0.00, 'fixed', 1),
(45, 37, 0, 0.00, 'fixed', 1),
(45, 42, 0, 0.00, 'fixed', 1),
(45, 54, 0, 0.00, 'fixed', 1),
(46, 1, 0, 0.00, 'fixed', 1),
(46, 20, 0, 0.00, 'fixed', 1),
(46, 32, 0, 0.00, 'fixed', 1),
(46, 41, 0, 0.00, 'fixed', 1),
(47, 24, 0, 0.00, 'fixed', 1),
(47, 53, 0, 0.00, 'fixed', 1),
(47, 54, 0, 0.00, 'fixed', 1),
(47, 56, 0, 0.00, 'fixed', 1),
(48, 7, 0, 0.00, 'fixed', 1),
(48, 15, 0, 0.00, 'fixed', 1),
(48, 36, 0, 0.00, 'fixed', 1),
(48, 51, 0, 0.00, 'fixed', 1),
(49, 28, 0, 0.00, 'fixed', 1),
(49, 38, 0, 0.00, 'fixed', 1),
(49, 55, 0, 0.00, 'fixed', 1),
(49, 67, 0, 0.00, 'fixed', 1),
(50, 3, 0, 0.00, 'fixed', 1),
(50, 6, 0, 0.00, 'fixed', 1),
(50, 26, 0, 0.00, 'fixed', 1),
(50, 30, 0, 0.00, 'fixed', 1),
(51, 14, 0, 0.00, 'fixed', 1),
(51, 17, 0, 0.00, 'fixed', 1),
(51, 29, 0, 0.00, 'fixed', 1),
(51, 32, 0, 0.00, 'fixed', 1),
(52, 21, 0, 0.00, 'fixed', 1),
(52, 27, 0, 0.00, 'fixed', 1),
(52, 51, 0, 0.00, 'fixed', 1),
(53, 24, 0, 0.00, 'fixed', 1),
(53, 31, 0, 0.00, 'fixed', 1),
(53, 32, 0, 0.00, 'fixed', 1),
(53, 52, 0, 0.00, 'fixed', 1),
(54, 8, 0, 0.00, 'fixed', 1),
(54, 31, 0, 0.00, 'fixed', 1),
(54, 38, 0, 0.00, 'fixed', 1),
(54, 41, 0, 0.00, 'fixed', 1),
(55, 2, 0, 0.00, 'fixed', 1),
(55, 10, 0, 0.00, 'fixed', 1),
(55, 19, 0, 0.00, 'fixed', 1),
(55, 42, 0, 0.00, 'fixed', 1),
(56, 11, 0, 0.00, 'fixed', 1),
(56, 61, 0, 0.00, 'fixed', 1),
(56, 63, 0, 0.00, 'fixed', 1),
(56, 64, 0, 0.00, 'fixed', 1),
(57, 9, 0, 0.00, 'fixed', 1),
(57, 24, 0, 0.00, 'fixed', 1),
(57, 61, 0, 0.00, 'fixed', 1),
(57, 63, 0, 0.00, 'fixed', 1),
(58, 16, 0, 0.00, 'fixed', 1),
(58, 19, 0, 0.00, 'fixed', 1),
(58, 20, 0, 0.00, 'fixed', 1),
(58, 30, 0, 0.00, 'fixed', 1),
(59, 1, 0, 0.00, 'fixed', 1),
(59, 28, 0, 0.00, 'fixed', 1),
(59, 36, 0, 0.00, 'fixed', 1),
(59, 61, 0, 0.00, 'fixed', 1),
(60, 31, 0, 0.00, 'fixed', 1),
(60, 54, 0, 0.00, 'fixed', 1),
(60, 64, 0, 0.00, 'fixed', 1),
(60, 66, 0, 0.00, 'fixed', 1),
(61, 36, 0, 0.00, 'fixed', 1),
(61, 46, 0, 0.00, 'fixed', 1),
(61, 57, 0, 0.00, 'fixed', 1),
(61, 59, 0, 0.00, 'fixed', 1),
(62, 19, 0, 0.00, 'fixed', 1),
(62, 29, 0, 0.00, 'fixed', 1),
(62, 49, 0, 0.00, 'fixed', 1),
(62, 73, 0, 0.00, 'fixed', 1),
(63, 41, 0, 0.00, 'fixed', 1),
(63, 54, 0, 0.00, 'fixed', 1),
(63, 57, 0, 0.00, 'fixed', 1),
(63, 70, 0, 0.00, 'fixed', 1),
(64, 6, 0, 0.00, 'fixed', 1),
(64, 41, 0, 0.00, 'fixed', 1),
(64, 46, 0, 0.00, 'fixed', 1),
(64, 61, 0, 0.00, 'fixed', 1),
(65, 11, 0, 0.00, 'fixed', 1),
(65, 13, 0, 0.00, 'fixed', 1),
(65, 22, 0, 0.00, 'fixed', 1),
(65, 40, 0, 0.00, 'fixed', 1),
(66, 4, 0, 0.00, 'fixed', 1),
(66, 15, 0, 0.00, 'fixed', 1),
(66, 27, 0, 0.00, 'fixed', 1),
(66, 32, 0, 0.00, 'fixed', 1),
(67, 40, 0, 0.00, 'fixed', 1),
(67, 46, 0, 0.00, 'fixed', 1),
(67, 59, 0, 0.00, 'fixed', 1),
(67, 68, 0, 0.00, 'fixed', 1),
(68, 26, 0, 0.00, 'fixed', 1),
(68, 52, 0, 0.00, 'fixed', 1),
(68, 60, 0, 0.00, 'fixed', 1),
(68, 63, 0, 0.00, 'fixed', 1),
(69, 50, 0, 0.00, 'fixed', 1),
(69, 51, 0, 0.00, 'fixed', 1),
(69, 56, 0, 0.00, 'fixed', 1),
(69, 72, 0, 0.00, 'fixed', 1),
(70, 33, 0, 0.00, 'fixed', 1),
(70, 45, 0, 0.00, 'fixed', 1),
(70, 72, 0, 0.00, 'fixed', 1),
(71, 20, 0, 0.00, 'fixed', 1),
(71, 50, 0, 0.00, 'fixed', 1),
(71, 53, 0, 0.00, 'fixed', 1),
(71, 57, 0, 0.00, 'fixed', 1),
(72, 27, 0, 0.00, 'fixed', 1),
(72, 30, 0, 0.00, 'fixed', 1),
(72, 41, 0, 0.00, 'fixed', 1),
(72, 73, 0, 0.00, 'fixed', 1),
(73, 1, 0, 0.00, 'fixed', 1),
(73, 22, 0, 0.00, 'fixed', 1),
(73, 34, 0, 0.00, 'fixed', 1),
(73, 55, 0, 0.00, 'fixed', 1),
(74, 25, 0, 0.00, 'fixed', 1),
(74, 30, 0, 0.00, 'fixed', 1),
(74, 72, 0, 0.00, 'fixed', 1),
(74, 75, 0, 0.00, 'fixed', 1),
(75, 1, 0, 0.00, 'fixed', 1),
(75, 28, 0, 0.00, 'fixed', 1),
(75, 57, 0, 0.00, 'fixed', 1),
(75, 69, 0, 0.00, 'fixed', 1);

-- --------------------------------------------------------

--
-- Table structure for table `ec_product_files`
--

CREATE TABLE `ec_product_files` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED DEFAULT NULL,
  `url` varchar(400) DEFAULT NULL,
  `extras` mediumtext DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_product_files`
--

INSERT INTO `ec_product_files` (`id`, `product_id`, `url`, `extras`, `created_at`, `updated_at`) VALUES
(1, 76, 'ecommerce/digital-product-files/product-55.jpg', '{\"filename\":\"product-55.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-55.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:19\",\"name\":\"product-55\",\"extension\":\"jpg\"}', '2025-10-20 17:06:19', '2025-10-20 17:06:19'),
(2, 76, 'ecommerce/digital-product-files/product-76.jpg', '{\"filename\":\"product-76.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-76.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:19\",\"name\":\"product-76\",\"extension\":\"jpg\"}', '2025-10-20 17:06:19', '2025-10-20 17:06:19'),
(3, 76, 'ecommerce/digital-product-files/product-30.jpg', '{\"filename\":\"product-30.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-30.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:19\",\"name\":\"product-30\",\"extension\":\"jpg\"}', '2025-10-20 17:06:19', '2025-10-20 17:06:19'),
(4, 76, 'ecommerce/digital-product-files/product-40.jpg', '{\"filename\":\"product-40.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-40.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:19\",\"name\":\"product-40\",\"extension\":\"jpg\"}', '2025-10-20 17:06:19', '2025-10-20 17:06:19'),
(5, 76, 'ecommerce/digital-product-files/product-19.jpg', '{\"filename\":\"product-19.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-19.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:19\",\"name\":\"product-19\",\"extension\":\"jpg\"}', '2025-10-20 17:06:19', '2025-10-20 17:06:19'),
(6, 76, 'ecommerce/digital-product-files/product-25.jpg', '{\"filename\":\"product-25.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-25.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:19\",\"name\":\"product-25\",\"extension\":\"jpg\"}', '2025-10-20 17:06:19', '2025-10-20 17:06:19'),
(7, 76, 'ecommerce/digital-product-files/product-20.jpg', '{\"filename\":\"product-20.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-20.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:19\",\"name\":\"product-20\",\"extension\":\"jpg\"}', '2025-10-20 17:06:19', '2025-10-20 17:06:19'),
(8, 76, 'ecommerce/digital-product-files/product-48.jpg', '{\"filename\":\"product-48.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-48.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:19\",\"name\":\"product-48\",\"extension\":\"jpg\"}', '2025-10-20 17:06:19', '2025-10-20 17:06:19'),
(9, 76, 'ecommerce/digital-product-files/product-4.jpg', '{\"filename\":\"product-4.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-4.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:19\",\"name\":\"product-4\",\"extension\":\"jpg\"}', '2025-10-20 17:06:19', '2025-10-20 17:06:19'),
(10, 76, 'ecommerce/digital-product-files/product-37.jpg', '{\"filename\":\"product-37.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-37.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:19\",\"name\":\"product-37\",\"extension\":\"jpg\"}', '2025-10-20 17:06:19', '2025-10-20 17:06:19'),
(11, 76, 'ecommerce/digital-product-files/product-31.jpg', '{\"filename\":\"product-31.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-31.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:19\",\"name\":\"product-31\",\"extension\":\"jpg\"}', '2025-10-20 17:06:19', '2025-10-20 17:06:19'),
(12, 76, 'ecommerce/digital-product-files/product-35.jpg', '{\"filename\":\"product-35.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-35.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:19\",\"name\":\"product-35\",\"extension\":\"jpg\"}', '2025-10-20 17:06:19', '2025-10-20 17:06:19'),
(13, 77, 'ecommerce/digital-product-files/product-55.jpg', '{\"filename\":\"product-55.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-55.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:19\",\"name\":\"product-55\",\"extension\":\"jpg\"}', '2025-10-20 17:06:19', '2025-10-20 17:06:19'),
(14, 77, 'ecommerce/digital-product-files/product-76.jpg', '{\"filename\":\"product-76.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-76.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:19\",\"name\":\"product-76\",\"extension\":\"jpg\"}', '2025-10-20 17:06:19', '2025-10-20 17:06:19'),
(15, 77, 'ecommerce/digital-product-files/product-30.jpg', '{\"filename\":\"product-30.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-30.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:19\",\"name\":\"product-30\",\"extension\":\"jpg\"}', '2025-10-20 17:06:19', '2025-10-20 17:06:19'),
(16, 77, 'ecommerce/digital-product-files/product-40.jpg', '{\"filename\":\"product-40.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-40.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:19\",\"name\":\"product-40\",\"extension\":\"jpg\"}', '2025-10-20 17:06:19', '2025-10-20 17:06:19'),
(17, 77, 'ecommerce/digital-product-files/product-19.jpg', '{\"filename\":\"product-19.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-19.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:19\",\"name\":\"product-19\",\"extension\":\"jpg\"}', '2025-10-20 17:06:19', '2025-10-20 17:06:19'),
(18, 77, 'ecommerce/digital-product-files/product-25.jpg', '{\"filename\":\"product-25.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-25.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:19\",\"name\":\"product-25\",\"extension\":\"jpg\"}', '2025-10-20 17:06:19', '2025-10-20 17:06:19'),
(19, 77, 'ecommerce/digital-product-files/product-20.jpg', '{\"filename\":\"product-20.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-20.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:19\",\"name\":\"product-20\",\"extension\":\"jpg\"}', '2025-10-20 17:06:19', '2025-10-20 17:06:19'),
(20, 77, 'ecommerce/digital-product-files/product-48.jpg', '{\"filename\":\"product-48.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-48.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:19\",\"name\":\"product-48\",\"extension\":\"jpg\"}', '2025-10-20 17:06:19', '2025-10-20 17:06:19'),
(21, 77, 'ecommerce/digital-product-files/product-4.jpg', '{\"filename\":\"product-4.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-4.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:19\",\"name\":\"product-4\",\"extension\":\"jpg\"}', '2025-10-20 17:06:19', '2025-10-20 17:06:19'),
(22, 77, 'ecommerce/digital-product-files/product-37.jpg', '{\"filename\":\"product-37.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-37.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:19\",\"name\":\"product-37\",\"extension\":\"jpg\"}', '2025-10-20 17:06:19', '2025-10-20 17:06:19'),
(23, 77, 'ecommerce/digital-product-files/product-31.jpg', '{\"filename\":\"product-31.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-31.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:19\",\"name\":\"product-31\",\"extension\":\"jpg\"}', '2025-10-20 17:06:19', '2025-10-20 17:06:19'),
(24, 77, 'ecommerce/digital-product-files/product-35.jpg', '{\"filename\":\"product-35.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-35.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:19\",\"name\":\"product-35\",\"extension\":\"jpg\"}', '2025-10-20 17:06:19', '2025-10-20 17:06:19'),
(25, 83, 'ecommerce/digital-product-files/product-32.jpg', '{\"filename\":\"product-32.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-32.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:20\",\"name\":\"product-32\",\"extension\":\"jpg\"}', '2025-10-20 17:06:20', '2025-10-20 17:06:20'),
(26, 83, 'ecommerce/digital-product-files/product-12.jpg', '{\"filename\":\"product-12.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-12.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:20\",\"name\":\"product-12\",\"extension\":\"jpg\"}', '2025-10-20 17:06:20', '2025-10-20 17:06:20'),
(27, 83, 'ecommerce/digital-product-files/product-48.jpg', '{\"filename\":\"product-48.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-48.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:20\",\"name\":\"product-48\",\"extension\":\"jpg\"}', '2025-10-20 17:06:20', '2025-10-20 17:06:20'),
(28, 83, 'ecommerce/digital-product-files/product-62.jpg', '{\"filename\":\"product-62.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-62.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:20\",\"name\":\"product-62\",\"extension\":\"jpg\"}', '2025-10-20 17:06:20', '2025-10-20 17:06:20'),
(29, 83, 'ecommerce/digital-product-files/product-6.jpg', '{\"filename\":\"product-6.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-6.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:20\",\"name\":\"product-6\",\"extension\":\"jpg\"}', '2025-10-20 17:06:20', '2025-10-20 17:06:20'),
(30, 84, 'ecommerce/digital-product-files/product-32.jpg', '{\"filename\":\"product-32.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-32.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:20\",\"name\":\"product-32\",\"extension\":\"jpg\"}', '2025-10-20 17:06:20', '2025-10-20 17:06:20'),
(31, 84, 'ecommerce/digital-product-files/product-12.jpg', '{\"filename\":\"product-12.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-12.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:20\",\"name\":\"product-12\",\"extension\":\"jpg\"}', '2025-10-20 17:06:20', '2025-10-20 17:06:20'),
(32, 84, 'ecommerce/digital-product-files/product-48.jpg', '{\"filename\":\"product-48.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-48.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:20\",\"name\":\"product-48\",\"extension\":\"jpg\"}', '2025-10-20 17:06:20', '2025-10-20 17:06:20'),
(33, 84, 'ecommerce/digital-product-files/product-62.jpg', '{\"filename\":\"product-62.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-62.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:20\",\"name\":\"product-62\",\"extension\":\"jpg\"}', '2025-10-20 17:06:20', '2025-10-20 17:06:20'),
(34, 84, 'ecommerce/digital-product-files/product-6.jpg', '{\"filename\":\"product-6.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-6.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:20\",\"name\":\"product-6\",\"extension\":\"jpg\"}', '2025-10-20 17:06:20', '2025-10-20 17:06:20'),
(35, 91, 'ecommerce/digital-product-files/product-23.jpg', '{\"filename\":\"product-23.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-23.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:21\",\"name\":\"product-23\",\"extension\":\"jpg\"}', '2025-10-20 17:06:21', '2025-10-20 17:06:21'),
(36, 91, 'ecommerce/digital-product-files/product-65.jpg', '{\"filename\":\"product-65.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-65.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:21\",\"name\":\"product-65\",\"extension\":\"jpg\"}', '2025-10-20 17:06:21', '2025-10-20 17:06:21'),
(37, 91, 'ecommerce/digital-product-files/product-33.jpg', '{\"filename\":\"product-33.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-33.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:21\",\"name\":\"product-33\",\"extension\":\"jpg\"}', '2025-10-20 17:06:21', '2025-10-20 17:06:21'),
(38, 91, 'ecommerce/digital-product-files/product-58.jpg', '{\"filename\":\"product-58.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-58.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:21\",\"name\":\"product-58\",\"extension\":\"jpg\"}', '2025-10-20 17:06:21', '2025-10-20 17:06:21'),
(39, 91, 'ecommerce/digital-product-files/product-7.jpg', '{\"filename\":\"product-7.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-7.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:21\",\"name\":\"product-7\",\"extension\":\"jpg\"}', '2025-10-20 17:06:21', '2025-10-20 17:06:21'),
(40, 91, 'ecommerce/digital-product-files/product-50.jpg', '{\"filename\":\"product-50.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-50.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:21\",\"name\":\"product-50\",\"extension\":\"jpg\"}', '2025-10-20 17:06:21', '2025-10-20 17:06:21'),
(41, 92, 'ecommerce/digital-product-files/product-23.jpg', '{\"filename\":\"product-23.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-23.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:21\",\"name\":\"product-23\",\"extension\":\"jpg\"}', '2025-10-20 17:06:21', '2025-10-20 17:06:21'),
(42, 92, 'ecommerce/digital-product-files/product-65.jpg', '{\"filename\":\"product-65.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-65.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:21\",\"name\":\"product-65\",\"extension\":\"jpg\"}', '2025-10-20 17:06:21', '2025-10-20 17:06:21'),
(43, 92, 'ecommerce/digital-product-files/product-33.jpg', '{\"filename\":\"product-33.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-33.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:21\",\"name\":\"product-33\",\"extension\":\"jpg\"}', '2025-10-20 17:06:21', '2025-10-20 17:06:21'),
(44, 92, 'ecommerce/digital-product-files/product-58.jpg', '{\"filename\":\"product-58.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-58.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:21\",\"name\":\"product-58\",\"extension\":\"jpg\"}', '2025-10-20 17:06:21', '2025-10-20 17:06:21'),
(45, 92, 'ecommerce/digital-product-files/product-7.jpg', '{\"filename\":\"product-7.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-7.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:21\",\"name\":\"product-7\",\"extension\":\"jpg\"}', '2025-10-20 17:06:21', '2025-10-20 17:06:21'),
(46, 92, 'ecommerce/digital-product-files/product-50.jpg', '{\"filename\":\"product-50.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-50.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:21\",\"name\":\"product-50\",\"extension\":\"jpg\"}', '2025-10-20 17:06:21', '2025-10-20 17:06:21'),
(47, 93, 'ecommerce/digital-product-files/product-23.jpg', '{\"filename\":\"product-23.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-23.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:21\",\"name\":\"product-23\",\"extension\":\"jpg\"}', '2025-10-20 17:06:21', '2025-10-20 17:06:21'),
(48, 93, 'ecommerce/digital-product-files/product-65.jpg', '{\"filename\":\"product-65.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-65.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:21\",\"name\":\"product-65\",\"extension\":\"jpg\"}', '2025-10-20 17:06:21', '2025-10-20 17:06:21'),
(49, 93, 'ecommerce/digital-product-files/product-33.jpg', '{\"filename\":\"product-33.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-33.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:21\",\"name\":\"product-33\",\"extension\":\"jpg\"}', '2025-10-20 17:06:21', '2025-10-20 17:06:21'),
(50, 93, 'ecommerce/digital-product-files/product-58.jpg', '{\"filename\":\"product-58.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-58.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:21\",\"name\":\"product-58\",\"extension\":\"jpg\"}', '2025-10-20 17:06:21', '2025-10-20 17:06:21'),
(51, 93, 'ecommerce/digital-product-files/product-7.jpg', '{\"filename\":\"product-7.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-7.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:21\",\"name\":\"product-7\",\"extension\":\"jpg\"}', '2025-10-20 17:06:21', '2025-10-20 17:06:21'),
(52, 93, 'ecommerce/digital-product-files/product-50.jpg', '{\"filename\":\"product-50.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-50.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:21\",\"name\":\"product-50\",\"extension\":\"jpg\"}', '2025-10-20 17:06:21', '2025-10-20 17:06:21'),
(53, 101, 'ecommerce/digital-product-files/product-39.jpg', '{\"filename\":\"product-39.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-39.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:21\",\"name\":\"product-39\",\"extension\":\"jpg\"}', '2025-10-20 17:06:21', '2025-10-20 17:06:21'),
(54, 101, 'ecommerce/digital-product-files/product-30.jpg', '{\"filename\":\"product-30.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-30.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:21\",\"name\":\"product-30\",\"extension\":\"jpg\"}', '2025-10-20 17:06:21', '2025-10-20 17:06:21'),
(55, 101, 'ecommerce/digital-product-files/product-74.jpg', '{\"filename\":\"product-74.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-74.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:21\",\"name\":\"product-74\",\"extension\":\"jpg\"}', '2025-10-20 17:06:21', '2025-10-20 17:06:21'),
(56, 101, 'ecommerce/digital-product-files/product-56.jpg', '{\"filename\":\"product-56.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-56.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:21\",\"name\":\"product-56\",\"extension\":\"jpg\"}', '2025-10-20 17:06:21', '2025-10-20 17:06:21'),
(57, 101, 'ecommerce/digital-product-files/product-86.jpg', '{\"filename\":\"product-86.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-86.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:21\",\"name\":\"product-86\",\"extension\":\"jpg\"}', '2025-10-20 17:06:21', '2025-10-20 17:06:21'),
(58, 101, 'ecommerce/digital-product-files/product-44.jpg', '{\"filename\":\"product-44.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-44.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:21\",\"name\":\"product-44\",\"extension\":\"jpg\"}', '2025-10-20 17:06:21', '2025-10-20 17:06:21'),
(59, 101, 'ecommerce/digital-product-files/product-48.jpg', '{\"filename\":\"product-48.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-48.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:21\",\"name\":\"product-48\",\"extension\":\"jpg\"}', '2025-10-20 17:06:21', '2025-10-20 17:06:21'),
(60, 102, 'ecommerce/digital-product-files/product-39.jpg', '{\"filename\":\"product-39.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-39.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:21\",\"name\":\"product-39\",\"extension\":\"jpg\"}', '2025-10-20 17:06:21', '2025-10-20 17:06:21'),
(61, 102, 'ecommerce/digital-product-files/product-30.jpg', '{\"filename\":\"product-30.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-30.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:21\",\"name\":\"product-30\",\"extension\":\"jpg\"}', '2025-10-20 17:06:21', '2025-10-20 17:06:21'),
(62, 102, 'ecommerce/digital-product-files/product-74.jpg', '{\"filename\":\"product-74.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-74.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:21\",\"name\":\"product-74\",\"extension\":\"jpg\"}', '2025-10-20 17:06:21', '2025-10-20 17:06:21'),
(63, 102, 'ecommerce/digital-product-files/product-56.jpg', '{\"filename\":\"product-56.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-56.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:21\",\"name\":\"product-56\",\"extension\":\"jpg\"}', '2025-10-20 17:06:21', '2025-10-20 17:06:21'),
(64, 102, 'ecommerce/digital-product-files/product-86.jpg', '{\"filename\":\"product-86.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-86.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:21\",\"name\":\"product-86\",\"extension\":\"jpg\"}', '2025-10-20 17:06:21', '2025-10-20 17:06:21'),
(65, 102, 'ecommerce/digital-product-files/product-44.jpg', '{\"filename\":\"product-44.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-44.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:21\",\"name\":\"product-44\",\"extension\":\"jpg\"}', '2025-10-20 17:06:21', '2025-10-20 17:06:21'),
(66, 102, 'ecommerce/digital-product-files/product-48.jpg', '{\"filename\":\"product-48.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-48.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:21\",\"name\":\"product-48\",\"extension\":\"jpg\"}', '2025-10-20 17:06:21', '2025-10-20 17:06:21'),
(67, 103, 'ecommerce/digital-product-files/product-39.jpg', '{\"filename\":\"product-39.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-39.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:21\",\"name\":\"product-39\",\"extension\":\"jpg\"}', '2025-10-20 17:06:21', '2025-10-20 17:06:21'),
(68, 103, 'ecommerce/digital-product-files/product-30.jpg', '{\"filename\":\"product-30.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-30.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:21\",\"name\":\"product-30\",\"extension\":\"jpg\"}', '2025-10-20 17:06:21', '2025-10-20 17:06:21'),
(69, 103, 'ecommerce/digital-product-files/product-74.jpg', '{\"filename\":\"product-74.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-74.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:21\",\"name\":\"product-74\",\"extension\":\"jpg\"}', '2025-10-20 17:06:21', '2025-10-20 17:06:21'),
(70, 103, 'ecommerce/digital-product-files/product-56.jpg', '{\"filename\":\"product-56.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-56.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:21\",\"name\":\"product-56\",\"extension\":\"jpg\"}', '2025-10-20 17:06:21', '2025-10-20 17:06:21'),
(71, 103, 'ecommerce/digital-product-files/product-86.jpg', '{\"filename\":\"product-86.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-86.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:21\",\"name\":\"product-86\",\"extension\":\"jpg\"}', '2025-10-20 17:06:21', '2025-10-20 17:06:21'),
(72, 103, 'ecommerce/digital-product-files/product-44.jpg', '{\"filename\":\"product-44.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-44.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:21\",\"name\":\"product-44\",\"extension\":\"jpg\"}', '2025-10-20 17:06:21', '2025-10-20 17:06:21'),
(73, 103, 'ecommerce/digital-product-files/product-48.jpg', '{\"filename\":\"product-48.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-48.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:21\",\"name\":\"product-48\",\"extension\":\"jpg\"}', '2025-10-20 17:06:21', '2025-10-20 17:06:21'),
(74, 113, 'ecommerce/digital-product-files/product-91.jpg', '{\"filename\":\"product-91.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-91.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:22\",\"name\":\"product-91\",\"extension\":\"jpg\"}', '2025-10-20 17:06:22', '2025-10-20 17:06:22'),
(75, 113, 'ecommerce/digital-product-files/product-1.jpg', '{\"filename\":\"product-1.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:22\",\"name\":\"product-1\",\"extension\":\"jpg\"}', '2025-10-20 17:06:22', '2025-10-20 17:06:22'),
(76, 113, 'ecommerce/digital-product-files/product-26.jpg', '{\"filename\":\"product-26.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-26.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:22\",\"name\":\"product-26\",\"extension\":\"jpg\"}', '2025-10-20 17:06:22', '2025-10-20 17:06:22'),
(77, 113, 'ecommerce/digital-product-files/product-70.jpg', '{\"filename\":\"product-70.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-70.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:22\",\"name\":\"product-70\",\"extension\":\"jpg\"}', '2025-10-20 17:06:22', '2025-10-20 17:06:22'),
(78, 113, 'ecommerce/digital-product-files/product-30.jpg', '{\"filename\":\"product-30.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-30.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:22\",\"name\":\"product-30\",\"extension\":\"jpg\"}', '2025-10-20 17:06:22', '2025-10-20 17:06:22'),
(79, 113, 'ecommerce/digital-product-files/product-36.jpg', '{\"filename\":\"product-36.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-36.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:22\",\"name\":\"product-36\",\"extension\":\"jpg\"}', '2025-10-20 17:06:22', '2025-10-20 17:06:22'),
(80, 113, 'ecommerce/digital-product-files/product-10.jpg', '{\"filename\":\"product-10.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-10.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:22\",\"name\":\"product-10\",\"extension\":\"jpg\"}', '2025-10-20 17:06:22', '2025-10-20 17:06:22'),
(81, 113, 'ecommerce/digital-product-files/product-39.jpg', '{\"filename\":\"product-39.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-39.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:22\",\"name\":\"product-39\",\"extension\":\"jpg\"}', '2025-10-20 17:06:22', '2025-10-20 17:06:22'),
(82, 113, 'ecommerce/digital-product-files/product-64.jpg', '{\"filename\":\"product-64.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-64.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:22\",\"name\":\"product-64\",\"extension\":\"jpg\"}', '2025-10-20 17:06:22', '2025-10-20 17:06:22'),
(83, 113, 'ecommerce/digital-product-files/product-17.jpg', '{\"filename\":\"product-17.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-17.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:22\",\"name\":\"product-17\",\"extension\":\"jpg\"}', '2025-10-20 17:06:22', '2025-10-20 17:06:22'),
(84, 113, 'ecommerce/digital-product-files/product-93.jpg', '{\"filename\":\"product-93.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-93.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:22\",\"name\":\"product-93\",\"extension\":\"jpg\"}', '2025-10-20 17:06:22', '2025-10-20 17:06:22'),
(85, 114, 'ecommerce/digital-product-files/product-91.jpg', '{\"filename\":\"product-91.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-91.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:22\",\"name\":\"product-91\",\"extension\":\"jpg\"}', '2025-10-20 17:06:22', '2025-10-20 17:06:22'),
(86, 114, 'ecommerce/digital-product-files/product-1.jpg', '{\"filename\":\"product-1.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:22\",\"name\":\"product-1\",\"extension\":\"jpg\"}', '2025-10-20 17:06:22', '2025-10-20 17:06:22'),
(87, 114, 'ecommerce/digital-product-files/product-26.jpg', '{\"filename\":\"product-26.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-26.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:22\",\"name\":\"product-26\",\"extension\":\"jpg\"}', '2025-10-20 17:06:22', '2025-10-20 17:06:22'),
(88, 114, 'ecommerce/digital-product-files/product-70.jpg', '{\"filename\":\"product-70.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-70.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:22\",\"name\":\"product-70\",\"extension\":\"jpg\"}', '2025-10-20 17:06:22', '2025-10-20 17:06:22'),
(89, 114, 'ecommerce/digital-product-files/product-30.jpg', '{\"filename\":\"product-30.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-30.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:22\",\"name\":\"product-30\",\"extension\":\"jpg\"}', '2025-10-20 17:06:22', '2025-10-20 17:06:22'),
(90, 114, 'ecommerce/digital-product-files/product-36.jpg', '{\"filename\":\"product-36.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-36.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:22\",\"name\":\"product-36\",\"extension\":\"jpg\"}', '2025-10-20 17:06:22', '2025-10-20 17:06:22'),
(91, 114, 'ecommerce/digital-product-files/product-10.jpg', '{\"filename\":\"product-10.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-10.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:22\",\"name\":\"product-10\",\"extension\":\"jpg\"}', '2025-10-20 17:06:22', '2025-10-20 17:06:22'),
(92, 114, 'ecommerce/digital-product-files/product-39.jpg', '{\"filename\":\"product-39.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-39.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:22\",\"name\":\"product-39\",\"extension\":\"jpg\"}', '2025-10-20 17:06:22', '2025-10-20 17:06:22'),
(93, 114, 'ecommerce/digital-product-files/product-64.jpg', '{\"filename\":\"product-64.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-64.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:22\",\"name\":\"product-64\",\"extension\":\"jpg\"}', '2025-10-20 17:06:22', '2025-10-20 17:06:22'),
(94, 114, 'ecommerce/digital-product-files/product-17.jpg', '{\"filename\":\"product-17.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-17.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:22\",\"name\":\"product-17\",\"extension\":\"jpg\"}', '2025-10-20 17:06:22', '2025-10-20 17:06:22'),
(95, 114, 'ecommerce/digital-product-files/product-93.jpg', '{\"filename\":\"product-93.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-93.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:22\",\"name\":\"product-93\",\"extension\":\"jpg\"}', '2025-10-20 17:06:22', '2025-10-20 17:06:22'),
(96, 115, 'ecommerce/digital-product-files/product-91.jpg', '{\"filename\":\"product-91.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-91.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:22\",\"name\":\"product-91\",\"extension\":\"jpg\"}', '2025-10-20 17:06:22', '2025-10-20 17:06:22'),
(97, 115, 'ecommerce/digital-product-files/product-1.jpg', '{\"filename\":\"product-1.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:22\",\"name\":\"product-1\",\"extension\":\"jpg\"}', '2025-10-20 17:06:22', '2025-10-20 17:06:22'),
(98, 115, 'ecommerce/digital-product-files/product-26.jpg', '{\"filename\":\"product-26.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-26.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:22\",\"name\":\"product-26\",\"extension\":\"jpg\"}', '2025-10-20 17:06:22', '2025-10-20 17:06:22'),
(99, 115, 'ecommerce/digital-product-files/product-70.jpg', '{\"filename\":\"product-70.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-70.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:22\",\"name\":\"product-70\",\"extension\":\"jpg\"}', '2025-10-20 17:06:22', '2025-10-20 17:06:22'),
(100, 115, 'ecommerce/digital-product-files/product-30.jpg', '{\"filename\":\"product-30.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-30.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:22\",\"name\":\"product-30\",\"extension\":\"jpg\"}', '2025-10-20 17:06:22', '2025-10-20 17:06:22'),
(101, 115, 'ecommerce/digital-product-files/product-36.jpg', '{\"filename\":\"product-36.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-36.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:22\",\"name\":\"product-36\",\"extension\":\"jpg\"}', '2025-10-20 17:06:22', '2025-10-20 17:06:22'),
(102, 115, 'ecommerce/digital-product-files/product-10.jpg', '{\"filename\":\"product-10.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-10.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:22\",\"name\":\"product-10\",\"extension\":\"jpg\"}', '2025-10-20 17:06:22', '2025-10-20 17:06:22'),
(103, 115, 'ecommerce/digital-product-files/product-39.jpg', '{\"filename\":\"product-39.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-39.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:22\",\"name\":\"product-39\",\"extension\":\"jpg\"}', '2025-10-20 17:06:22', '2025-10-20 17:06:22'),
(104, 115, 'ecommerce/digital-product-files/product-64.jpg', '{\"filename\":\"product-64.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-64.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:22\",\"name\":\"product-64\",\"extension\":\"jpg\"}', '2025-10-20 17:06:22', '2025-10-20 17:06:22'),
(105, 115, 'ecommerce/digital-product-files/product-17.jpg', '{\"filename\":\"product-17.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-17.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:22\",\"name\":\"product-17\",\"extension\":\"jpg\"}', '2025-10-20 17:06:22', '2025-10-20 17:06:22'),
(106, 115, 'ecommerce/digital-product-files/product-93.jpg', '{\"filename\":\"product-93.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-93.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:22\",\"name\":\"product-93\",\"extension\":\"jpg\"}', '2025-10-20 17:06:22', '2025-10-20 17:06:22'),
(107, 116, 'ecommerce/digital-product-files/product-91.jpg', '{\"filename\":\"product-91.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-91.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:22\",\"name\":\"product-91\",\"extension\":\"jpg\"}', '2025-10-20 17:06:22', '2025-10-20 17:06:22'),
(108, 116, 'ecommerce/digital-product-files/product-1.jpg', '{\"filename\":\"product-1.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:22\",\"name\":\"product-1\",\"extension\":\"jpg\"}', '2025-10-20 17:06:22', '2025-10-20 17:06:22'),
(109, 116, 'ecommerce/digital-product-files/product-26.jpg', '{\"filename\":\"product-26.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-26.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:22\",\"name\":\"product-26\",\"extension\":\"jpg\"}', '2025-10-20 17:06:22', '2025-10-20 17:06:22'),
(110, 116, 'ecommerce/digital-product-files/product-70.jpg', '{\"filename\":\"product-70.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-70.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:22\",\"name\":\"product-70\",\"extension\":\"jpg\"}', '2025-10-20 17:06:22', '2025-10-20 17:06:22'),
(111, 116, 'ecommerce/digital-product-files/product-30.jpg', '{\"filename\":\"product-30.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-30.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:22\",\"name\":\"product-30\",\"extension\":\"jpg\"}', '2025-10-20 17:06:22', '2025-10-20 17:06:22'),
(112, 116, 'ecommerce/digital-product-files/product-36.jpg', '{\"filename\":\"product-36.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-36.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:22\",\"name\":\"product-36\",\"extension\":\"jpg\"}', '2025-10-20 17:06:22', '2025-10-20 17:06:22'),
(113, 116, 'ecommerce/digital-product-files/product-10.jpg', '{\"filename\":\"product-10.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-10.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:22\",\"name\":\"product-10\",\"extension\":\"jpg\"}', '2025-10-20 17:06:22', '2025-10-20 17:06:22'),
(114, 116, 'ecommerce/digital-product-files/product-39.jpg', '{\"filename\":\"product-39.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-39.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:22\",\"name\":\"product-39\",\"extension\":\"jpg\"}', '2025-10-20 17:06:22', '2025-10-20 17:06:22'),
(115, 116, 'ecommerce/digital-product-files/product-64.jpg', '{\"filename\":\"product-64.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-64.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:22\",\"name\":\"product-64\",\"extension\":\"jpg\"}', '2025-10-20 17:06:22', '2025-10-20 17:06:22'),
(116, 116, 'ecommerce/digital-product-files/product-17.jpg', '{\"filename\":\"product-17.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-17.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:22\",\"name\":\"product-17\",\"extension\":\"jpg\"}', '2025-10-20 17:06:22', '2025-10-20 17:06:22'),
(117, 116, 'ecommerce/digital-product-files/product-93.jpg', '{\"filename\":\"product-93.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-93.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:22\",\"name\":\"product-93\",\"extension\":\"jpg\"}', '2025-10-20 17:06:22', '2025-10-20 17:06:22'),
(118, 123, 'ecommerce/digital-product-files/product-55.jpg', '{\"filename\":\"product-55.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-55.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:23\",\"name\":\"product-55\",\"extension\":\"jpg\"}', '2025-10-20 17:06:23', '2025-10-20 17:06:23'),
(119, 123, 'ecommerce/digital-product-files/product-88.jpg', '{\"filename\":\"product-88.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-88.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:23\",\"name\":\"product-88\",\"extension\":\"jpg\"}', '2025-10-20 17:06:23', '2025-10-20 17:06:23'),
(120, 123, 'ecommerce/digital-product-files/product-7.jpg', '{\"filename\":\"product-7.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-7.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:23\",\"name\":\"product-7\",\"extension\":\"jpg\"}', '2025-10-20 17:06:23', '2025-10-20 17:06:23'),
(121, 123, 'ecommerce/digital-product-files/product-18.jpg', '{\"filename\":\"product-18.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-18.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:23\",\"name\":\"product-18\",\"extension\":\"jpg\"}', '2025-10-20 17:06:23', '2025-10-20 17:06:23'),
(122, 123, 'ecommerce/digital-product-files/product-66.jpg', '{\"filename\":\"product-66.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-66.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:23\",\"name\":\"product-66\",\"extension\":\"jpg\"}', '2025-10-20 17:06:23', '2025-10-20 17:06:23'),
(123, 123, 'ecommerce/digital-product-files/product-20.jpg', '{\"filename\":\"product-20.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-20.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:23\",\"name\":\"product-20\",\"extension\":\"jpg\"}', '2025-10-20 17:06:23', '2025-10-20 17:06:23'),
(124, 123, 'ecommerce/digital-product-files/product-24.jpg', '{\"filename\":\"product-24.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-24.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:23\",\"name\":\"product-24\",\"extension\":\"jpg\"}', '2025-10-20 17:06:23', '2025-10-20 17:06:23'),
(125, 134, 'ecommerce/digital-product-files/product-57.jpg', '{\"filename\":\"product-57.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-57.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:23\",\"name\":\"product-57\",\"extension\":\"jpg\"}', '2025-10-20 17:06:23', '2025-10-20 17:06:23'),
(126, 134, 'ecommerce/digital-product-files/product-88.jpg', '{\"filename\":\"product-88.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-88.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:23\",\"name\":\"product-88\",\"extension\":\"jpg\"}', '2025-10-20 17:06:23', '2025-10-20 17:06:23'),
(127, 134, 'ecommerce/digital-product-files/product-52.jpg', '{\"filename\":\"product-52.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-52.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:23\",\"name\":\"product-52\",\"extension\":\"jpg\"}', '2025-10-20 17:06:23', '2025-10-20 17:06:23'),
(128, 134, 'ecommerce/digital-product-files/product-91.jpg', '{\"filename\":\"product-91.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-91.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:23\",\"name\":\"product-91\",\"extension\":\"jpg\"}', '2025-10-20 17:06:23', '2025-10-20 17:06:23'),
(129, 134, 'ecommerce/digital-product-files/product-70.jpg', '{\"filename\":\"product-70.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-70.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:23\",\"name\":\"product-70\",\"extension\":\"jpg\"}', '2025-10-20 17:06:23', '2025-10-20 17:06:23'),
(130, 134, 'ecommerce/digital-product-files/product-20.jpg', '{\"filename\":\"product-20.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-20.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:23\",\"name\":\"product-20\",\"extension\":\"jpg\"}', '2025-10-20 17:06:23', '2025-10-20 17:06:23'),
(131, 134, 'ecommerce/digital-product-files/product-31.jpg', '{\"filename\":\"product-31.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-31.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:23\",\"name\":\"product-31\",\"extension\":\"jpg\"}', '2025-10-20 17:06:23', '2025-10-20 17:06:23'),
(132, 134, 'ecommerce/digital-product-files/product-37.jpg', '{\"filename\":\"product-37.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-37.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:23\",\"name\":\"product-37\",\"extension\":\"jpg\"}', '2025-10-20 17:06:23', '2025-10-20 17:06:23'),
(133, 135, 'ecommerce/digital-product-files/product-57.jpg', '{\"filename\":\"product-57.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-57.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:23\",\"name\":\"product-57\",\"extension\":\"jpg\"}', '2025-10-20 17:06:23', '2025-10-20 17:06:23'),
(134, 135, 'ecommerce/digital-product-files/product-88.jpg', '{\"filename\":\"product-88.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-88.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:23\",\"name\":\"product-88\",\"extension\":\"jpg\"}', '2025-10-20 17:06:23', '2025-10-20 17:06:23'),
(135, 135, 'ecommerce/digital-product-files/product-52.jpg', '{\"filename\":\"product-52.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-52.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:23\",\"name\":\"product-52\",\"extension\":\"jpg\"}', '2025-10-20 17:06:23', '2025-10-20 17:06:23'),
(136, 135, 'ecommerce/digital-product-files/product-91.jpg', '{\"filename\":\"product-91.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-91.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:23\",\"name\":\"product-91\",\"extension\":\"jpg\"}', '2025-10-20 17:06:23', '2025-10-20 17:06:23'),
(137, 135, 'ecommerce/digital-product-files/product-70.jpg', '{\"filename\":\"product-70.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-70.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:23\",\"name\":\"product-70\",\"extension\":\"jpg\"}', '2025-10-20 17:06:23', '2025-10-20 17:06:23'),
(138, 135, 'ecommerce/digital-product-files/product-20.jpg', '{\"filename\":\"product-20.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-20.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:23\",\"name\":\"product-20\",\"extension\":\"jpg\"}', '2025-10-20 17:06:23', '2025-10-20 17:06:23'),
(139, 135, 'ecommerce/digital-product-files/product-31.jpg', '{\"filename\":\"product-31.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-31.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:23\",\"name\":\"product-31\",\"extension\":\"jpg\"}', '2025-10-20 17:06:23', '2025-10-20 17:06:23'),
(140, 135, 'ecommerce/digital-product-files/product-37.jpg', '{\"filename\":\"product-37.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-37.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:23\",\"name\":\"product-37\",\"extension\":\"jpg\"}', '2025-10-20 17:06:23', '2025-10-20 17:06:23'),
(141, 142, 'ecommerce/digital-product-files/product-34.jpg', '{\"filename\":\"product-34.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-34.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:24\",\"name\":\"product-34\",\"extension\":\"jpg\"}', '2025-10-20 17:06:24', '2025-10-20 17:06:24'),
(142, 142, 'ecommerce/digital-product-files/product-28.jpg', '{\"filename\":\"product-28.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-28.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:24\",\"name\":\"product-28\",\"extension\":\"jpg\"}', '2025-10-20 17:06:24', '2025-10-20 17:06:24'),
(143, 142, 'ecommerce/digital-product-files/product-44.jpg', '{\"filename\":\"product-44.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-44.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:24\",\"name\":\"product-44\",\"extension\":\"jpg\"}', '2025-10-20 17:06:24', '2025-10-20 17:06:24'),
(144, 142, 'ecommerce/digital-product-files/product-89.jpg', '{\"filename\":\"product-89.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-89.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:24\",\"name\":\"product-89\",\"extension\":\"jpg\"}', '2025-10-20 17:06:24', '2025-10-20 17:06:24'),
(145, 142, 'ecommerce/digital-product-files/product-51.jpg', '{\"filename\":\"product-51.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-51.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:24\",\"name\":\"product-51\",\"extension\":\"jpg\"}', '2025-10-20 17:06:24', '2025-10-20 17:06:24'),
(146, 142, 'ecommerce/digital-product-files/product-14.jpg', '{\"filename\":\"product-14.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-14.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:24\",\"name\":\"product-14\",\"extension\":\"jpg\"}', '2025-10-20 17:06:24', '2025-10-20 17:06:24'),
(147, 142, 'ecommerce/digital-product-files/product-88.jpg', '{\"filename\":\"product-88.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-88.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:24\",\"name\":\"product-88\",\"extension\":\"jpg\"}', '2025-10-20 17:06:24', '2025-10-20 17:06:24'),
(148, 142, 'ecommerce/digital-product-files/product-50.jpg', '{\"filename\":\"product-50.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-50.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:24\",\"name\":\"product-50\",\"extension\":\"jpg\"}', '2025-10-20 17:06:24', '2025-10-20 17:06:24'),
(149, 142, 'ecommerce/digital-product-files/product-47.jpg', '{\"filename\":\"product-47.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-47.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:24\",\"name\":\"product-47\",\"extension\":\"jpg\"}', '2025-10-20 17:06:24', '2025-10-20 17:06:24'),
(150, 142, 'ecommerce/digital-product-files/product-10.jpg', '{\"filename\":\"product-10.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-10.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:24\",\"name\":\"product-10\",\"extension\":\"jpg\"}', '2025-10-20 17:06:24', '2025-10-20 17:06:24');
INSERT INTO `ec_product_files` (`id`, `product_id`, `url`, `extras`, `created_at`, `updated_at`) VALUES
(151, 143, 'ecommerce/digital-product-files/product-34.jpg', '{\"filename\":\"product-34.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-34.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:24\",\"name\":\"product-34\",\"extension\":\"jpg\"}', '2025-10-20 17:06:24', '2025-10-20 17:06:24'),
(152, 143, 'ecommerce/digital-product-files/product-28.jpg', '{\"filename\":\"product-28.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-28.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:24\",\"name\":\"product-28\",\"extension\":\"jpg\"}', '2025-10-20 17:06:24', '2025-10-20 17:06:24'),
(153, 143, 'ecommerce/digital-product-files/product-44.jpg', '{\"filename\":\"product-44.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-44.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:24\",\"name\":\"product-44\",\"extension\":\"jpg\"}', '2025-10-20 17:06:24', '2025-10-20 17:06:24'),
(154, 143, 'ecommerce/digital-product-files/product-89.jpg', '{\"filename\":\"product-89.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-89.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:24\",\"name\":\"product-89\",\"extension\":\"jpg\"}', '2025-10-20 17:06:24', '2025-10-20 17:06:24'),
(155, 143, 'ecommerce/digital-product-files/product-51.jpg', '{\"filename\":\"product-51.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-51.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:24\",\"name\":\"product-51\",\"extension\":\"jpg\"}', '2025-10-20 17:06:24', '2025-10-20 17:06:24'),
(156, 143, 'ecommerce/digital-product-files/product-14.jpg', '{\"filename\":\"product-14.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-14.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:24\",\"name\":\"product-14\",\"extension\":\"jpg\"}', '2025-10-20 17:06:24', '2025-10-20 17:06:24'),
(157, 143, 'ecommerce/digital-product-files/product-88.jpg', '{\"filename\":\"product-88.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-88.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:24\",\"name\":\"product-88\",\"extension\":\"jpg\"}', '2025-10-20 17:06:24', '2025-10-20 17:06:24'),
(158, 143, 'ecommerce/digital-product-files/product-50.jpg', '{\"filename\":\"product-50.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-50.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:24\",\"name\":\"product-50\",\"extension\":\"jpg\"}', '2025-10-20 17:06:24', '2025-10-20 17:06:24'),
(159, 143, 'ecommerce/digital-product-files/product-47.jpg', '{\"filename\":\"product-47.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-47.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:24\",\"name\":\"product-47\",\"extension\":\"jpg\"}', '2025-10-20 17:06:24', '2025-10-20 17:06:24'),
(160, 143, 'ecommerce/digital-product-files/product-10.jpg', '{\"filename\":\"product-10.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-10.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:24\",\"name\":\"product-10\",\"extension\":\"jpg\"}', '2025-10-20 17:06:24', '2025-10-20 17:06:24'),
(161, 144, 'ecommerce/digital-product-files/product-34.jpg', '{\"filename\":\"product-34.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-34.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:24\",\"name\":\"product-34\",\"extension\":\"jpg\"}', '2025-10-20 17:06:24', '2025-10-20 17:06:24'),
(162, 144, 'ecommerce/digital-product-files/product-28.jpg', '{\"filename\":\"product-28.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-28.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:24\",\"name\":\"product-28\",\"extension\":\"jpg\"}', '2025-10-20 17:06:24', '2025-10-20 17:06:24'),
(163, 144, 'ecommerce/digital-product-files/product-44.jpg', '{\"filename\":\"product-44.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-44.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:24\",\"name\":\"product-44\",\"extension\":\"jpg\"}', '2025-10-20 17:06:24', '2025-10-20 17:06:24'),
(164, 144, 'ecommerce/digital-product-files/product-89.jpg', '{\"filename\":\"product-89.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-89.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:24\",\"name\":\"product-89\",\"extension\":\"jpg\"}', '2025-10-20 17:06:24', '2025-10-20 17:06:24'),
(165, 144, 'ecommerce/digital-product-files/product-51.jpg', '{\"filename\":\"product-51.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-51.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:24\",\"name\":\"product-51\",\"extension\":\"jpg\"}', '2025-10-20 17:06:24', '2025-10-20 17:06:24'),
(166, 144, 'ecommerce/digital-product-files/product-14.jpg', '{\"filename\":\"product-14.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-14.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:24\",\"name\":\"product-14\",\"extension\":\"jpg\"}', '2025-10-20 17:06:24', '2025-10-20 17:06:24'),
(167, 144, 'ecommerce/digital-product-files/product-88.jpg', '{\"filename\":\"product-88.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-88.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:24\",\"name\":\"product-88\",\"extension\":\"jpg\"}', '2025-10-20 17:06:24', '2025-10-20 17:06:24'),
(168, 144, 'ecommerce/digital-product-files/product-50.jpg', '{\"filename\":\"product-50.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-50.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:24\",\"name\":\"product-50\",\"extension\":\"jpg\"}', '2025-10-20 17:06:24', '2025-10-20 17:06:24'),
(169, 144, 'ecommerce/digital-product-files/product-47.jpg', '{\"filename\":\"product-47.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-47.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:24\",\"name\":\"product-47\",\"extension\":\"jpg\"}', '2025-10-20 17:06:24', '2025-10-20 17:06:24'),
(170, 144, 'ecommerce/digital-product-files/product-10.jpg', '{\"filename\":\"product-10.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-10.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:24\",\"name\":\"product-10\",\"extension\":\"jpg\"}', '2025-10-20 17:06:24', '2025-10-20 17:06:24'),
(171, 145, 'ecommerce/digital-product-files/product-34.jpg', '{\"filename\":\"product-34.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-34.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:24\",\"name\":\"product-34\",\"extension\":\"jpg\"}', '2025-10-20 17:06:24', '2025-10-20 17:06:24'),
(172, 145, 'ecommerce/digital-product-files/product-28.jpg', '{\"filename\":\"product-28.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-28.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:24\",\"name\":\"product-28\",\"extension\":\"jpg\"}', '2025-10-20 17:06:24', '2025-10-20 17:06:24'),
(173, 145, 'ecommerce/digital-product-files/product-44.jpg', '{\"filename\":\"product-44.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-44.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:24\",\"name\":\"product-44\",\"extension\":\"jpg\"}', '2025-10-20 17:06:24', '2025-10-20 17:06:24'),
(174, 145, 'ecommerce/digital-product-files/product-89.jpg', '{\"filename\":\"product-89.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-89.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:24\",\"name\":\"product-89\",\"extension\":\"jpg\"}', '2025-10-20 17:06:24', '2025-10-20 17:06:24'),
(175, 145, 'ecommerce/digital-product-files/product-51.jpg', '{\"filename\":\"product-51.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-51.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:24\",\"name\":\"product-51\",\"extension\":\"jpg\"}', '2025-10-20 17:06:24', '2025-10-20 17:06:24'),
(176, 145, 'ecommerce/digital-product-files/product-14.jpg', '{\"filename\":\"product-14.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-14.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:24\",\"name\":\"product-14\",\"extension\":\"jpg\"}', '2025-10-20 17:06:24', '2025-10-20 17:06:24'),
(177, 145, 'ecommerce/digital-product-files/product-88.jpg', '{\"filename\":\"product-88.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-88.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:24\",\"name\":\"product-88\",\"extension\":\"jpg\"}', '2025-10-20 17:06:24', '2025-10-20 17:06:24'),
(178, 145, 'ecommerce/digital-product-files/product-50.jpg', '{\"filename\":\"product-50.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-50.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:24\",\"name\":\"product-50\",\"extension\":\"jpg\"}', '2025-10-20 17:06:24', '2025-10-20 17:06:24'),
(179, 145, 'ecommerce/digital-product-files/product-47.jpg', '{\"filename\":\"product-47.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-47.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:24\",\"name\":\"product-47\",\"extension\":\"jpg\"}', '2025-10-20 17:06:24', '2025-10-20 17:06:24'),
(180, 145, 'ecommerce/digital-product-files/product-10.jpg', '{\"filename\":\"product-10.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-10.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:24\",\"name\":\"product-10\",\"extension\":\"jpg\"}', '2025-10-20 17:06:24', '2025-10-20 17:06:24'),
(181, 151, 'ecommerce/digital-product-files/product-36.jpg', '{\"filename\":\"product-36.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-36.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:24\",\"name\":\"product-36\",\"extension\":\"jpg\"}', '2025-10-20 17:06:24', '2025-10-20 17:06:24'),
(182, 151, 'ecommerce/digital-product-files/product-50.jpg', '{\"filename\":\"product-50.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-50.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:24\",\"name\":\"product-50\",\"extension\":\"jpg\"}', '2025-10-20 17:06:24', '2025-10-20 17:06:24'),
(183, 151, 'ecommerce/digital-product-files/product-43.jpg', '{\"filename\":\"product-43.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-43.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:24\",\"name\":\"product-43\",\"extension\":\"jpg\"}', '2025-10-20 17:06:24', '2025-10-20 17:06:24'),
(184, 151, 'ecommerce/digital-product-files/product-59.jpg', '{\"filename\":\"product-59.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-59.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:24\",\"name\":\"product-59\",\"extension\":\"jpg\"}', '2025-10-20 17:06:24', '2025-10-20 17:06:24'),
(185, 151, 'ecommerce/digital-product-files/product-72.jpg', '{\"filename\":\"product-72.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-72.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:24\",\"name\":\"product-72\",\"extension\":\"jpg\"}', '2025-10-20 17:06:24', '2025-10-20 17:06:24'),
(186, 151, 'ecommerce/digital-product-files/product-68.jpg', '{\"filename\":\"product-68.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-68.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:24\",\"name\":\"product-68\",\"extension\":\"jpg\"}', '2025-10-20 17:06:24', '2025-10-20 17:06:24'),
(187, 151, 'ecommerce/digital-product-files/product-6.jpg', '{\"filename\":\"product-6.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-6.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:24\",\"name\":\"product-6\",\"extension\":\"jpg\"}', '2025-10-20 17:06:24', '2025-10-20 17:06:24'),
(188, 151, 'ecommerce/digital-product-files/product-87.jpg', '{\"filename\":\"product-87.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-87.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:24\",\"name\":\"product-87\",\"extension\":\"jpg\"}', '2025-10-20 17:06:24', '2025-10-20 17:06:24'),
(189, 151, 'ecommerce/digital-product-files/product-90.jpg', '{\"filename\":\"product-90.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-90.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:24\",\"name\":\"product-90\",\"extension\":\"jpg\"}', '2025-10-20 17:06:24', '2025-10-20 17:06:24'),
(190, 151, 'ecommerce/digital-product-files/product-45.jpg', '{\"filename\":\"product-45.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-45.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:24\",\"name\":\"product-45\",\"extension\":\"jpg\"}', '2025-10-20 17:06:24', '2025-10-20 17:06:24'),
(191, 152, 'ecommerce/digital-product-files/product-36.jpg', '{\"filename\":\"product-36.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-36.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:24\",\"name\":\"product-36\",\"extension\":\"jpg\"}', '2025-10-20 17:06:24', '2025-10-20 17:06:24'),
(192, 152, 'ecommerce/digital-product-files/product-50.jpg', '{\"filename\":\"product-50.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-50.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:24\",\"name\":\"product-50\",\"extension\":\"jpg\"}', '2025-10-20 17:06:24', '2025-10-20 17:06:24'),
(193, 152, 'ecommerce/digital-product-files/product-43.jpg', '{\"filename\":\"product-43.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-43.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:24\",\"name\":\"product-43\",\"extension\":\"jpg\"}', '2025-10-20 17:06:24', '2025-10-20 17:06:24'),
(194, 152, 'ecommerce/digital-product-files/product-59.jpg', '{\"filename\":\"product-59.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-59.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:24\",\"name\":\"product-59\",\"extension\":\"jpg\"}', '2025-10-20 17:06:24', '2025-10-20 17:06:24'),
(195, 152, 'ecommerce/digital-product-files/product-72.jpg', '{\"filename\":\"product-72.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-72.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:24\",\"name\":\"product-72\",\"extension\":\"jpg\"}', '2025-10-20 17:06:24', '2025-10-20 17:06:24'),
(196, 152, 'ecommerce/digital-product-files/product-68.jpg', '{\"filename\":\"product-68.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-68.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:24\",\"name\":\"product-68\",\"extension\":\"jpg\"}', '2025-10-20 17:06:24', '2025-10-20 17:06:24'),
(197, 152, 'ecommerce/digital-product-files/product-6.jpg', '{\"filename\":\"product-6.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-6.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:24\",\"name\":\"product-6\",\"extension\":\"jpg\"}', '2025-10-20 17:06:24', '2025-10-20 17:06:24'),
(198, 152, 'ecommerce/digital-product-files/product-87.jpg', '{\"filename\":\"product-87.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-87.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:24\",\"name\":\"product-87\",\"extension\":\"jpg\"}', '2025-10-20 17:06:24', '2025-10-20 17:06:24'),
(199, 152, 'ecommerce/digital-product-files/product-90.jpg', '{\"filename\":\"product-90.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-90.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:24\",\"name\":\"product-90\",\"extension\":\"jpg\"}', '2025-10-20 17:06:24', '2025-10-20 17:06:24'),
(200, 152, 'ecommerce/digital-product-files/product-45.jpg', '{\"filename\":\"product-45.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-45.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:24\",\"name\":\"product-45\",\"extension\":\"jpg\"}', '2025-10-20 17:06:24', '2025-10-20 17:06:24'),
(201, 153, 'ecommerce/digital-product-files/product-36.jpg', '{\"filename\":\"product-36.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-36.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:24\",\"name\":\"product-36\",\"extension\":\"jpg\"}', '2025-10-20 17:06:24', '2025-10-20 17:06:24'),
(202, 153, 'ecommerce/digital-product-files/product-50.jpg', '{\"filename\":\"product-50.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-50.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:24\",\"name\":\"product-50\",\"extension\":\"jpg\"}', '2025-10-20 17:06:24', '2025-10-20 17:06:24'),
(203, 153, 'ecommerce/digital-product-files/product-43.jpg', '{\"filename\":\"product-43.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-43.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:24\",\"name\":\"product-43\",\"extension\":\"jpg\"}', '2025-10-20 17:06:24', '2025-10-20 17:06:24'),
(204, 153, 'ecommerce/digital-product-files/product-59.jpg', '{\"filename\":\"product-59.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-59.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:24\",\"name\":\"product-59\",\"extension\":\"jpg\"}', '2025-10-20 17:06:24', '2025-10-20 17:06:24'),
(205, 153, 'ecommerce/digital-product-files/product-72.jpg', '{\"filename\":\"product-72.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-72.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:24\",\"name\":\"product-72\",\"extension\":\"jpg\"}', '2025-10-20 17:06:24', '2025-10-20 17:06:24'),
(206, 153, 'ecommerce/digital-product-files/product-68.jpg', '{\"filename\":\"product-68.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-68.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:24\",\"name\":\"product-68\",\"extension\":\"jpg\"}', '2025-10-20 17:06:24', '2025-10-20 17:06:24'),
(207, 153, 'ecommerce/digital-product-files/product-6.jpg', '{\"filename\":\"product-6.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-6.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:24\",\"name\":\"product-6\",\"extension\":\"jpg\"}', '2025-10-20 17:06:24', '2025-10-20 17:06:24'),
(208, 153, 'ecommerce/digital-product-files/product-87.jpg', '{\"filename\":\"product-87.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-87.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:24\",\"name\":\"product-87\",\"extension\":\"jpg\"}', '2025-10-20 17:06:24', '2025-10-20 17:06:24'),
(209, 153, 'ecommerce/digital-product-files/product-90.jpg', '{\"filename\":\"product-90.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-90.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:24\",\"name\":\"product-90\",\"extension\":\"jpg\"}', '2025-10-20 17:06:24', '2025-10-20 17:06:24'),
(210, 153, 'ecommerce/digital-product-files/product-45.jpg', '{\"filename\":\"product-45.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-45.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:24\",\"name\":\"product-45\",\"extension\":\"jpg\"}', '2025-10-20 17:06:24', '2025-10-20 17:06:24'),
(211, 154, 'ecommerce/digital-product-files/product-36.jpg', '{\"filename\":\"product-36.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-36.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:24\",\"name\":\"product-36\",\"extension\":\"jpg\"}', '2025-10-20 17:06:24', '2025-10-20 17:06:24'),
(212, 154, 'ecommerce/digital-product-files/product-50.jpg', '{\"filename\":\"product-50.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-50.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:24\",\"name\":\"product-50\",\"extension\":\"jpg\"}', '2025-10-20 17:06:24', '2025-10-20 17:06:24'),
(213, 154, 'ecommerce/digital-product-files/product-43.jpg', '{\"filename\":\"product-43.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-43.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:24\",\"name\":\"product-43\",\"extension\":\"jpg\"}', '2025-10-20 17:06:24', '2025-10-20 17:06:24'),
(214, 154, 'ecommerce/digital-product-files/product-59.jpg', '{\"filename\":\"product-59.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-59.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:24\",\"name\":\"product-59\",\"extension\":\"jpg\"}', '2025-10-20 17:06:24', '2025-10-20 17:06:24'),
(215, 154, 'ecommerce/digital-product-files/product-72.jpg', '{\"filename\":\"product-72.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-72.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:24\",\"name\":\"product-72\",\"extension\":\"jpg\"}', '2025-10-20 17:06:24', '2025-10-20 17:06:24'),
(216, 154, 'ecommerce/digital-product-files/product-68.jpg', '{\"filename\":\"product-68.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-68.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:24\",\"name\":\"product-68\",\"extension\":\"jpg\"}', '2025-10-20 17:06:24', '2025-10-20 17:06:24'),
(217, 154, 'ecommerce/digital-product-files/product-6.jpg', '{\"filename\":\"product-6.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-6.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:24\",\"name\":\"product-6\",\"extension\":\"jpg\"}', '2025-10-20 17:06:24', '2025-10-20 17:06:24'),
(218, 154, 'ecommerce/digital-product-files/product-87.jpg', '{\"filename\":\"product-87.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-87.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:24\",\"name\":\"product-87\",\"extension\":\"jpg\"}', '2025-10-20 17:06:24', '2025-10-20 17:06:24'),
(219, 154, 'ecommerce/digital-product-files/product-90.jpg', '{\"filename\":\"product-90.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-90.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:24\",\"name\":\"product-90\",\"extension\":\"jpg\"}', '2025-10-20 17:06:24', '2025-10-20 17:06:24'),
(220, 154, 'ecommerce/digital-product-files/product-45.jpg', '{\"filename\":\"product-45.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-45.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:24\",\"name\":\"product-45\",\"extension\":\"jpg\"}', '2025-10-20 17:06:24', '2025-10-20 17:06:24'),
(221, 164, 'ecommerce/digital-product-files/product-80.jpg', '{\"filename\":\"product-80.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-80.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:25\",\"name\":\"product-80\",\"extension\":\"jpg\"}', '2025-10-20 17:06:25', '2025-10-20 17:06:25'),
(222, 164, 'ecommerce/digital-product-files/product-25.jpg', '{\"filename\":\"product-25.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-25.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:25\",\"name\":\"product-25\",\"extension\":\"jpg\"}', '2025-10-20 17:06:25', '2025-10-20 17:06:25'),
(223, 164, 'ecommerce/digital-product-files/product-17.jpg', '{\"filename\":\"product-17.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-17.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:25\",\"name\":\"product-17\",\"extension\":\"jpg\"}', '2025-10-20 17:06:25', '2025-10-20 17:06:25'),
(224, 164, 'ecommerce/digital-product-files/product-83.jpg', '{\"filename\":\"product-83.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-83.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:25\",\"name\":\"product-83\",\"extension\":\"jpg\"}', '2025-10-20 17:06:25', '2025-10-20 17:06:25'),
(225, 164, 'ecommerce/digital-product-files/product-18.jpg', '{\"filename\":\"product-18.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-18.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:25\",\"name\":\"product-18\",\"extension\":\"jpg\"}', '2025-10-20 17:06:25', '2025-10-20 17:06:25'),
(226, 165, 'ecommerce/digital-product-files/product-80.jpg', '{\"filename\":\"product-80.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-80.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:25\",\"name\":\"product-80\",\"extension\":\"jpg\"}', '2025-10-20 17:06:25', '2025-10-20 17:06:25'),
(227, 165, 'ecommerce/digital-product-files/product-25.jpg', '{\"filename\":\"product-25.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-25.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:25\",\"name\":\"product-25\",\"extension\":\"jpg\"}', '2025-10-20 17:06:25', '2025-10-20 17:06:25'),
(228, 165, 'ecommerce/digital-product-files/product-17.jpg', '{\"filename\":\"product-17.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-17.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:25\",\"name\":\"product-17\",\"extension\":\"jpg\"}', '2025-10-20 17:06:25', '2025-10-20 17:06:25'),
(229, 165, 'ecommerce/digital-product-files/product-83.jpg', '{\"filename\":\"product-83.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-83.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:25\",\"name\":\"product-83\",\"extension\":\"jpg\"}', '2025-10-20 17:06:25', '2025-10-20 17:06:25'),
(230, 165, 'ecommerce/digital-product-files/product-18.jpg', '{\"filename\":\"product-18.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-18.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:25\",\"name\":\"product-18\",\"extension\":\"jpg\"}', '2025-10-20 17:06:25', '2025-10-20 17:06:25'),
(231, 176, 'ecommerce/digital-product-files/product-80.jpg', '{\"filename\":\"product-80.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-80.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:26\",\"name\":\"product-80\",\"extension\":\"jpg\"}', '2025-10-20 17:06:26', '2025-10-20 17:06:26'),
(232, 176, 'ecommerce/digital-product-files/product-17.jpg', '{\"filename\":\"product-17.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-17.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:26\",\"name\":\"product-17\",\"extension\":\"jpg\"}', '2025-10-20 17:06:26', '2025-10-20 17:06:26'),
(233, 176, 'ecommerce/digital-product-files/product-76.jpg', '{\"filename\":\"product-76.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-76.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:26\",\"name\":\"product-76\",\"extension\":\"jpg\"}', '2025-10-20 17:06:26', '2025-10-20 17:06:26'),
(234, 176, 'ecommerce/digital-product-files/product-89.jpg', '{\"filename\":\"product-89.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-89.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:26\",\"name\":\"product-89\",\"extension\":\"jpg\"}', '2025-10-20 17:06:26', '2025-10-20 17:06:26'),
(235, 176, 'ecommerce/digital-product-files/product-54.jpg', '{\"filename\":\"product-54.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-54.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:26\",\"name\":\"product-54\",\"extension\":\"jpg\"}', '2025-10-20 17:06:26', '2025-10-20 17:06:26'),
(236, 177, 'ecommerce/digital-product-files/product-80.jpg', '{\"filename\":\"product-80.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-80.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:26\",\"name\":\"product-80\",\"extension\":\"jpg\"}', '2025-10-20 17:06:26', '2025-10-20 17:06:26'),
(237, 177, 'ecommerce/digital-product-files/product-17.jpg', '{\"filename\":\"product-17.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-17.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:26\",\"name\":\"product-17\",\"extension\":\"jpg\"}', '2025-10-20 17:06:26', '2025-10-20 17:06:26'),
(238, 177, 'ecommerce/digital-product-files/product-76.jpg', '{\"filename\":\"product-76.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-76.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:26\",\"name\":\"product-76\",\"extension\":\"jpg\"}', '2025-10-20 17:06:26', '2025-10-20 17:06:26'),
(239, 177, 'ecommerce/digital-product-files/product-89.jpg', '{\"filename\":\"product-89.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-89.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:26\",\"name\":\"product-89\",\"extension\":\"jpg\"}', '2025-10-20 17:06:26', '2025-10-20 17:06:26'),
(240, 177, 'ecommerce/digital-product-files/product-54.jpg', '{\"filename\":\"product-54.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-54.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:26\",\"name\":\"product-54\",\"extension\":\"jpg\"}', '2025-10-20 17:06:26', '2025-10-20 17:06:26'),
(241, 178, 'ecommerce/digital-product-files/product-80.jpg', '{\"filename\":\"product-80.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-80.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:26\",\"name\":\"product-80\",\"extension\":\"jpg\"}', '2025-10-20 17:06:26', '2025-10-20 17:06:26'),
(242, 178, 'ecommerce/digital-product-files/product-17.jpg', '{\"filename\":\"product-17.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-17.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:26\",\"name\":\"product-17\",\"extension\":\"jpg\"}', '2025-10-20 17:06:26', '2025-10-20 17:06:26'),
(243, 178, 'ecommerce/digital-product-files/product-76.jpg', '{\"filename\":\"product-76.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-76.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:26\",\"name\":\"product-76\",\"extension\":\"jpg\"}', '2025-10-20 17:06:26', '2025-10-20 17:06:26'),
(244, 178, 'ecommerce/digital-product-files/product-89.jpg', '{\"filename\":\"product-89.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-89.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:26\",\"name\":\"product-89\",\"extension\":\"jpg\"}', '2025-10-20 17:06:26', '2025-10-20 17:06:26'),
(245, 178, 'ecommerce/digital-product-files/product-54.jpg', '{\"filename\":\"product-54.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-54.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:26\",\"name\":\"product-54\",\"extension\":\"jpg\"}', '2025-10-20 17:06:26', '2025-10-20 17:06:26'),
(246, 179, 'ecommerce/digital-product-files/product-80.jpg', '{\"filename\":\"product-80.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-80.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:26\",\"name\":\"product-80\",\"extension\":\"jpg\"}', '2025-10-20 17:06:26', '2025-10-20 17:06:26'),
(247, 179, 'ecommerce/digital-product-files/product-17.jpg', '{\"filename\":\"product-17.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-17.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:26\",\"name\":\"product-17\",\"extension\":\"jpg\"}', '2025-10-20 17:06:26', '2025-10-20 17:06:26'),
(248, 179, 'ecommerce/digital-product-files/product-76.jpg', '{\"filename\":\"product-76.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-76.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:26\",\"name\":\"product-76\",\"extension\":\"jpg\"}', '2025-10-20 17:06:26', '2025-10-20 17:06:26'),
(249, 179, 'ecommerce/digital-product-files/product-89.jpg', '{\"filename\":\"product-89.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-89.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:26\",\"name\":\"product-89\",\"extension\":\"jpg\"}', '2025-10-20 17:06:26', '2025-10-20 17:06:26'),
(250, 179, 'ecommerce/digital-product-files/product-54.jpg', '{\"filename\":\"product-54.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-54.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:26\",\"name\":\"product-54\",\"extension\":\"jpg\"}', '2025-10-20 17:06:26', '2025-10-20 17:06:26'),
(251, 180, 'ecommerce/digital-product-files/product-80.jpg', '{\"filename\":\"product-80.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-80.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:26\",\"name\":\"product-80\",\"extension\":\"jpg\"}', '2025-10-20 17:06:26', '2025-10-20 17:06:26'),
(252, 180, 'ecommerce/digital-product-files/product-17.jpg', '{\"filename\":\"product-17.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-17.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:26\",\"name\":\"product-17\",\"extension\":\"jpg\"}', '2025-10-20 17:06:26', '2025-10-20 17:06:26'),
(253, 180, 'ecommerce/digital-product-files/product-76.jpg', '{\"filename\":\"product-76.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-76.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:26\",\"name\":\"product-76\",\"extension\":\"jpg\"}', '2025-10-20 17:06:26', '2025-10-20 17:06:26'),
(254, 180, 'ecommerce/digital-product-files/product-89.jpg', '{\"filename\":\"product-89.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-89.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:26\",\"name\":\"product-89\",\"extension\":\"jpg\"}', '2025-10-20 17:06:26', '2025-10-20 17:06:26'),
(255, 180, 'ecommerce/digital-product-files/product-54.jpg', '{\"filename\":\"product-54.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-54.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:26\",\"name\":\"product-54\",\"extension\":\"jpg\"}', '2025-10-20 17:06:26', '2025-10-20 17:06:26'),
(256, 187, 'ecommerce/digital-product-files/product-80.jpg', '{\"filename\":\"product-80.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-80.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:27\",\"name\":\"product-80\",\"extension\":\"jpg\"}', '2025-10-20 17:06:27', '2025-10-20 17:06:27'),
(257, 187, 'ecommerce/digital-product-files/product-76.jpg', '{\"filename\":\"product-76.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-76.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:27\",\"name\":\"product-76\",\"extension\":\"jpg\"}', '2025-10-20 17:06:27', '2025-10-20 17:06:27'),
(258, 187, 'ecommerce/digital-product-files/product-7.jpg', '{\"filename\":\"product-7.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-7.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:27\",\"name\":\"product-7\",\"extension\":\"jpg\"}', '2025-10-20 17:06:27', '2025-10-20 17:06:27'),
(259, 187, 'ecommerce/digital-product-files/product-39.jpg', '{\"filename\":\"product-39.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-39.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:27\",\"name\":\"product-39\",\"extension\":\"jpg\"}', '2025-10-20 17:06:27', '2025-10-20 17:06:27'),
(260, 187, 'ecommerce/digital-product-files/product-5.jpg', '{\"filename\":\"product-5.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-5.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:27\",\"name\":\"product-5\",\"extension\":\"jpg\"}', '2025-10-20 17:06:27', '2025-10-20 17:06:27'),
(261, 187, 'ecommerce/digital-product-files/product-53.jpg', '{\"filename\":\"product-53.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-53.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:27\",\"name\":\"product-53\",\"extension\":\"jpg\"}', '2025-10-20 17:06:27', '2025-10-20 17:06:27'),
(262, 187, 'ecommerce/digital-product-files/product-86.jpg', '{\"filename\":\"product-86.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-86.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:27\",\"name\":\"product-86\",\"extension\":\"jpg\"}', '2025-10-20 17:06:27', '2025-10-20 17:06:27'),
(263, 187, 'ecommerce/digital-product-files/product-57.jpg', '{\"filename\":\"product-57.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-57.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:27\",\"name\":\"product-57\",\"extension\":\"jpg\"}', '2025-10-20 17:06:27', '2025-10-20 17:06:27'),
(264, 187, 'ecommerce/digital-product-files/product-11.jpg', '{\"filename\":\"product-11.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-11.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:27\",\"name\":\"product-11\",\"extension\":\"jpg\"}', '2025-10-20 17:06:27', '2025-10-20 17:06:27'),
(265, 194, 'ecommerce/digital-product-files/product-71.jpg', '{\"filename\":\"product-71.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-71.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:27\",\"name\":\"product-71\",\"extension\":\"jpg\"}', '2025-10-20 17:06:27', '2025-10-20 17:06:27'),
(266, 194, 'ecommerce/digital-product-files/product-75.jpg', '{\"filename\":\"product-75.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-75.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:27\",\"name\":\"product-75\",\"extension\":\"jpg\"}', '2025-10-20 17:06:27', '2025-10-20 17:06:27'),
(267, 194, 'ecommerce/digital-product-files/product-5.jpg', '{\"filename\":\"product-5.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-5.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:27\",\"name\":\"product-5\",\"extension\":\"jpg\"}', '2025-10-20 17:06:27', '2025-10-20 17:06:27'),
(268, 194, 'ecommerce/digital-product-files/product-20.jpg', '{\"filename\":\"product-20.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-20.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:27\",\"name\":\"product-20\",\"extension\":\"jpg\"}', '2025-10-20 17:06:27', '2025-10-20 17:06:27'),
(269, 194, 'ecommerce/digital-product-files/product-19.jpg', '{\"filename\":\"product-19.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-19.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:27\",\"name\":\"product-19\",\"extension\":\"jpg\"}', '2025-10-20 17:06:27', '2025-10-20 17:06:27'),
(270, 195, 'ecommerce/digital-product-files/product-71.jpg', '{\"filename\":\"product-71.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-71.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:27\",\"name\":\"product-71\",\"extension\":\"jpg\"}', '2025-10-20 17:06:27', '2025-10-20 17:06:27'),
(271, 195, 'ecommerce/digital-product-files/product-75.jpg', '{\"filename\":\"product-75.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-75.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:27\",\"name\":\"product-75\",\"extension\":\"jpg\"}', '2025-10-20 17:06:27', '2025-10-20 17:06:27'),
(272, 195, 'ecommerce/digital-product-files/product-5.jpg', '{\"filename\":\"product-5.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-5.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:27\",\"name\":\"product-5\",\"extension\":\"jpg\"}', '2025-10-20 17:06:27', '2025-10-20 17:06:27'),
(273, 195, 'ecommerce/digital-product-files/product-20.jpg', '{\"filename\":\"product-20.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-20.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:27\",\"name\":\"product-20\",\"extension\":\"jpg\"}', '2025-10-20 17:06:27', '2025-10-20 17:06:27'),
(274, 195, 'ecommerce/digital-product-files/product-19.jpg', '{\"filename\":\"product-19.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-19.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:27\",\"name\":\"product-19\",\"extension\":\"jpg\"}', '2025-10-20 17:06:27', '2025-10-20 17:06:27'),
(275, 204, 'ecommerce/digital-product-files/product-94.jpg', '{\"filename\":\"product-94.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-94.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:28\",\"name\":\"product-94\",\"extension\":\"jpg\"}', '2025-10-20 17:06:28', '2025-10-20 17:06:28'),
(276, 204, 'ecommerce/digital-product-files/product-46.jpg', '{\"filename\":\"product-46.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-46.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:28\",\"name\":\"product-46\",\"extension\":\"jpg\"}', '2025-10-20 17:06:28', '2025-10-20 17:06:28'),
(277, 204, 'ecommerce/digital-product-files/product-59.jpg', '{\"filename\":\"product-59.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-59.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:28\",\"name\":\"product-59\",\"extension\":\"jpg\"}', '2025-10-20 17:06:28', '2025-10-20 17:06:28'),
(278, 204, 'ecommerce/digital-product-files/product-1.jpg', '{\"filename\":\"product-1.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:28\",\"name\":\"product-1\",\"extension\":\"jpg\"}', '2025-10-20 17:06:28', '2025-10-20 17:06:28'),
(279, 204, 'ecommerce/digital-product-files/product-2.jpg', '{\"filename\":\"product-2.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-2.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:28\",\"name\":\"product-2\",\"extension\":\"jpg\"}', '2025-10-20 17:06:28', '2025-10-20 17:06:28'),
(280, 204, 'ecommerce/digital-product-files/product-60.jpg', '{\"filename\":\"product-60.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-60.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:28\",\"name\":\"product-60\",\"extension\":\"jpg\"}', '2025-10-20 17:06:28', '2025-10-20 17:06:28'),
(281, 205, 'ecommerce/digital-product-files/product-94.jpg', '{\"filename\":\"product-94.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-94.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:28\",\"name\":\"product-94\",\"extension\":\"jpg\"}', '2025-10-20 17:06:28', '2025-10-20 17:06:28'),
(282, 205, 'ecommerce/digital-product-files/product-46.jpg', '{\"filename\":\"product-46.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-46.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:28\",\"name\":\"product-46\",\"extension\":\"jpg\"}', '2025-10-20 17:06:28', '2025-10-20 17:06:28'),
(283, 205, 'ecommerce/digital-product-files/product-59.jpg', '{\"filename\":\"product-59.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-59.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:28\",\"name\":\"product-59\",\"extension\":\"jpg\"}', '2025-10-20 17:06:28', '2025-10-20 17:06:28'),
(284, 205, 'ecommerce/digital-product-files/product-1.jpg', '{\"filename\":\"product-1.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:28\",\"name\":\"product-1\",\"extension\":\"jpg\"}', '2025-10-20 17:06:28', '2025-10-20 17:06:28'),
(285, 205, 'ecommerce/digital-product-files/product-2.jpg', '{\"filename\":\"product-2.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-2.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:28\",\"name\":\"product-2\",\"extension\":\"jpg\"}', '2025-10-20 17:06:28', '2025-10-20 17:06:28'),
(286, 205, 'ecommerce/digital-product-files/product-60.jpg', '{\"filename\":\"product-60.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-60.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:28\",\"name\":\"product-60\",\"extension\":\"jpg\"}', '2025-10-20 17:06:28', '2025-10-20 17:06:28'),
(287, 213, 'ecommerce/digital-product-files/product-94.jpg', '{\"filename\":\"product-94.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-94.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:28\",\"name\":\"product-94\",\"extension\":\"jpg\"}', '2025-10-20 17:06:28', '2025-10-20 17:06:28'),
(288, 213, 'ecommerce/digital-product-files/product-92.jpg', '{\"filename\":\"product-92.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-92.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:28\",\"name\":\"product-92\",\"extension\":\"jpg\"}', '2025-10-20 17:06:28', '2025-10-20 17:06:28'),
(289, 213, 'ecommerce/digital-product-files/product-44.jpg', '{\"filename\":\"product-44.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-44.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:28\",\"name\":\"product-44\",\"extension\":\"jpg\"}', '2025-10-20 17:06:28', '2025-10-20 17:06:28'),
(290, 213, 'ecommerce/digital-product-files/product-60.jpg', '{\"filename\":\"product-60.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-60.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:28\",\"name\":\"product-60\",\"extension\":\"jpg\"}', '2025-10-20 17:06:28', '2025-10-20 17:06:28'),
(291, 213, 'ecommerce/digital-product-files/product-17.jpg', '{\"filename\":\"product-17.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-17.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:28\",\"name\":\"product-17\",\"extension\":\"jpg\"}', '2025-10-20 17:06:28', '2025-10-20 17:06:28'),
(292, 213, 'ecommerce/digital-product-files/product-63.jpg', '{\"filename\":\"product-63.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-63.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:28\",\"name\":\"product-63\",\"extension\":\"jpg\"}', '2025-10-20 17:06:28', '2025-10-20 17:06:28'),
(293, 213, 'ecommerce/digital-product-files/product-73.jpg', '{\"filename\":\"product-73.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-73.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:28\",\"name\":\"product-73\",\"extension\":\"jpg\"}', '2025-10-20 17:06:28', '2025-10-20 17:06:28'),
(294, 213, 'ecommerce/digital-product-files/product-11.jpg', '{\"filename\":\"product-11.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-11.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:28\",\"name\":\"product-11\",\"extension\":\"jpg\"}', '2025-10-20 17:06:28', '2025-10-20 17:06:28'),
(295, 213, 'ecommerce/digital-product-files/product-86.jpg', '{\"filename\":\"product-86.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-86.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:28\",\"name\":\"product-86\",\"extension\":\"jpg\"}', '2025-10-20 17:06:28', '2025-10-20 17:06:28'),
(296, 213, 'ecommerce/digital-product-files/product-75.jpg', '{\"filename\":\"product-75.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-75.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:28\",\"name\":\"product-75\",\"extension\":\"jpg\"}', '2025-10-20 17:06:28', '2025-10-20 17:06:28'),
(297, 213, 'ecommerce/digital-product-files/product-6.jpg', '{\"filename\":\"product-6.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-6.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:28\",\"name\":\"product-6\",\"extension\":\"jpg\"}', '2025-10-20 17:06:28', '2025-10-20 17:06:28'),
(298, 214, 'ecommerce/digital-product-files/product-94.jpg', '{\"filename\":\"product-94.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-94.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:28\",\"name\":\"product-94\",\"extension\":\"jpg\"}', '2025-10-20 17:06:28', '2025-10-20 17:06:28'),
(299, 214, 'ecommerce/digital-product-files/product-92.jpg', '{\"filename\":\"product-92.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-92.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:28\",\"name\":\"product-92\",\"extension\":\"jpg\"}', '2025-10-20 17:06:28', '2025-10-20 17:06:28');
INSERT INTO `ec_product_files` (`id`, `product_id`, `url`, `extras`, `created_at`, `updated_at`) VALUES
(300, 214, 'ecommerce/digital-product-files/product-44.jpg', '{\"filename\":\"product-44.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-44.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:28\",\"name\":\"product-44\",\"extension\":\"jpg\"}', '2025-10-20 17:06:28', '2025-10-20 17:06:28'),
(301, 214, 'ecommerce/digital-product-files/product-60.jpg', '{\"filename\":\"product-60.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-60.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:28\",\"name\":\"product-60\",\"extension\":\"jpg\"}', '2025-10-20 17:06:28', '2025-10-20 17:06:28'),
(302, 214, 'ecommerce/digital-product-files/product-17.jpg', '{\"filename\":\"product-17.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-17.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:28\",\"name\":\"product-17\",\"extension\":\"jpg\"}', '2025-10-20 17:06:28', '2025-10-20 17:06:28'),
(303, 214, 'ecommerce/digital-product-files/product-63.jpg', '{\"filename\":\"product-63.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-63.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:28\",\"name\":\"product-63\",\"extension\":\"jpg\"}', '2025-10-20 17:06:28', '2025-10-20 17:06:28'),
(304, 214, 'ecommerce/digital-product-files/product-73.jpg', '{\"filename\":\"product-73.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-73.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:28\",\"name\":\"product-73\",\"extension\":\"jpg\"}', '2025-10-20 17:06:28', '2025-10-20 17:06:28'),
(305, 214, 'ecommerce/digital-product-files/product-11.jpg', '{\"filename\":\"product-11.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-11.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:28\",\"name\":\"product-11\",\"extension\":\"jpg\"}', '2025-10-20 17:06:28', '2025-10-20 17:06:28'),
(306, 214, 'ecommerce/digital-product-files/product-86.jpg', '{\"filename\":\"product-86.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-86.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:28\",\"name\":\"product-86\",\"extension\":\"jpg\"}', '2025-10-20 17:06:28', '2025-10-20 17:06:28'),
(307, 214, 'ecommerce/digital-product-files/product-75.jpg', '{\"filename\":\"product-75.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-75.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:28\",\"name\":\"product-75\",\"extension\":\"jpg\"}', '2025-10-20 17:06:28', '2025-10-20 17:06:28'),
(308, 214, 'ecommerce/digital-product-files/product-6.jpg', '{\"filename\":\"product-6.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-6.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:28\",\"name\":\"product-6\",\"extension\":\"jpg\"}', '2025-10-20 17:06:28', '2025-10-20 17:06:28'),
(309, 215, 'ecommerce/digital-product-files/product-94.jpg', '{\"filename\":\"product-94.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-94.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:29\",\"name\":\"product-94\",\"extension\":\"jpg\"}', '2025-10-20 17:06:29', '2025-10-20 17:06:29'),
(310, 215, 'ecommerce/digital-product-files/product-92.jpg', '{\"filename\":\"product-92.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-92.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:29\",\"name\":\"product-92\",\"extension\":\"jpg\"}', '2025-10-20 17:06:29', '2025-10-20 17:06:29'),
(311, 215, 'ecommerce/digital-product-files/product-44.jpg', '{\"filename\":\"product-44.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-44.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:29\",\"name\":\"product-44\",\"extension\":\"jpg\"}', '2025-10-20 17:06:29', '2025-10-20 17:06:29'),
(312, 215, 'ecommerce/digital-product-files/product-60.jpg', '{\"filename\":\"product-60.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-60.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:29\",\"name\":\"product-60\",\"extension\":\"jpg\"}', '2025-10-20 17:06:29', '2025-10-20 17:06:29'),
(313, 215, 'ecommerce/digital-product-files/product-17.jpg', '{\"filename\":\"product-17.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-17.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:29\",\"name\":\"product-17\",\"extension\":\"jpg\"}', '2025-10-20 17:06:29', '2025-10-20 17:06:29'),
(314, 215, 'ecommerce/digital-product-files/product-63.jpg', '{\"filename\":\"product-63.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-63.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:29\",\"name\":\"product-63\",\"extension\":\"jpg\"}', '2025-10-20 17:06:29', '2025-10-20 17:06:29'),
(315, 215, 'ecommerce/digital-product-files/product-73.jpg', '{\"filename\":\"product-73.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-73.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:29\",\"name\":\"product-73\",\"extension\":\"jpg\"}', '2025-10-20 17:06:29', '2025-10-20 17:06:29'),
(316, 215, 'ecommerce/digital-product-files/product-11.jpg', '{\"filename\":\"product-11.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-11.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:29\",\"name\":\"product-11\",\"extension\":\"jpg\"}', '2025-10-20 17:06:29', '2025-10-20 17:06:29'),
(317, 215, 'ecommerce/digital-product-files/product-86.jpg', '{\"filename\":\"product-86.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-86.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:29\",\"name\":\"product-86\",\"extension\":\"jpg\"}', '2025-10-20 17:06:29', '2025-10-20 17:06:29'),
(318, 215, 'ecommerce/digital-product-files/product-75.jpg', '{\"filename\":\"product-75.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-75.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:29\",\"name\":\"product-75\",\"extension\":\"jpg\"}', '2025-10-20 17:06:29', '2025-10-20 17:06:29'),
(319, 215, 'ecommerce/digital-product-files/product-6.jpg', '{\"filename\":\"product-6.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-6.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:29\",\"name\":\"product-6\",\"extension\":\"jpg\"}', '2025-10-20 17:06:29', '2025-10-20 17:06:29'),
(320, 223, 'ecommerce/digital-product-files/product-77.jpg', '{\"filename\":\"product-77.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-77.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:29\",\"name\":\"product-77\",\"extension\":\"jpg\"}', '2025-10-20 17:06:29', '2025-10-20 17:06:29'),
(321, 223, 'ecommerce/digital-product-files/product-1.jpg', '{\"filename\":\"product-1.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:29\",\"name\":\"product-1\",\"extension\":\"jpg\"}', '2025-10-20 17:06:29', '2025-10-20 17:06:29'),
(322, 223, 'ecommerce/digital-product-files/product-35.jpg', '{\"filename\":\"product-35.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-35.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:29\",\"name\":\"product-35\",\"extension\":\"jpg\"}', '2025-10-20 17:06:29', '2025-10-20 17:06:29'),
(323, 223, 'ecommerce/digital-product-files/product-36.jpg', '{\"filename\":\"product-36.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-36.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:29\",\"name\":\"product-36\",\"extension\":\"jpg\"}', '2025-10-20 17:06:29', '2025-10-20 17:06:29'),
(324, 223, 'ecommerce/digital-product-files/product-26.jpg', '{\"filename\":\"product-26.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-26.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:29\",\"name\":\"product-26\",\"extension\":\"jpg\"}', '2025-10-20 17:06:29', '2025-10-20 17:06:29'),
(325, 223, 'ecommerce/digital-product-files/product-38.jpg', '{\"filename\":\"product-38.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-38.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:29\",\"name\":\"product-38\",\"extension\":\"jpg\"}', '2025-10-20 17:06:29', '2025-10-20 17:06:29'),
(326, 223, 'ecommerce/digital-product-files/product-51.jpg', '{\"filename\":\"product-51.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-51.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:29\",\"name\":\"product-51\",\"extension\":\"jpg\"}', '2025-10-20 17:06:29', '2025-10-20 17:06:29'),
(327, 223, 'ecommerce/digital-product-files/product-40.jpg', '{\"filename\":\"product-40.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-40.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:29\",\"name\":\"product-40\",\"extension\":\"jpg\"}', '2025-10-20 17:06:29', '2025-10-20 17:06:29'),
(328, 223, 'ecommerce/digital-product-files/product-59.jpg', '{\"filename\":\"product-59.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-59.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:29\",\"name\":\"product-59\",\"extension\":\"jpg\"}', '2025-10-20 17:06:29', '2025-10-20 17:06:29'),
(329, 223, 'ecommerce/digital-product-files/product-61.jpg', '{\"filename\":\"product-61.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-61.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:29\",\"name\":\"product-61\",\"extension\":\"jpg\"}', '2025-10-20 17:06:29', '2025-10-20 17:06:29'),
(330, 223, 'ecommerce/digital-product-files/product-89.jpg', '{\"filename\":\"product-89.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-89.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:29\",\"name\":\"product-89\",\"extension\":\"jpg\"}', '2025-10-20 17:06:29', '2025-10-20 17:06:29'),
(331, 223, 'ecommerce/digital-product-files/product-79.jpg', '{\"filename\":\"product-79.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-79.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:29\",\"name\":\"product-79\",\"extension\":\"jpg\"}', '2025-10-20 17:06:29', '2025-10-20 17:06:29'),
(332, 224, 'ecommerce/digital-product-files/product-77.jpg', '{\"filename\":\"product-77.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-77.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:29\",\"name\":\"product-77\",\"extension\":\"jpg\"}', '2025-10-20 17:06:29', '2025-10-20 17:06:29'),
(333, 224, 'ecommerce/digital-product-files/product-1.jpg', '{\"filename\":\"product-1.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:29\",\"name\":\"product-1\",\"extension\":\"jpg\"}', '2025-10-20 17:06:29', '2025-10-20 17:06:29'),
(334, 224, 'ecommerce/digital-product-files/product-35.jpg', '{\"filename\":\"product-35.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-35.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:29\",\"name\":\"product-35\",\"extension\":\"jpg\"}', '2025-10-20 17:06:29', '2025-10-20 17:06:29'),
(335, 224, 'ecommerce/digital-product-files/product-36.jpg', '{\"filename\":\"product-36.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-36.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:29\",\"name\":\"product-36\",\"extension\":\"jpg\"}', '2025-10-20 17:06:29', '2025-10-20 17:06:29'),
(336, 224, 'ecommerce/digital-product-files/product-26.jpg', '{\"filename\":\"product-26.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-26.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:29\",\"name\":\"product-26\",\"extension\":\"jpg\"}', '2025-10-20 17:06:29', '2025-10-20 17:06:29'),
(337, 224, 'ecommerce/digital-product-files/product-38.jpg', '{\"filename\":\"product-38.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-38.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:29\",\"name\":\"product-38\",\"extension\":\"jpg\"}', '2025-10-20 17:06:29', '2025-10-20 17:06:29'),
(338, 224, 'ecommerce/digital-product-files/product-51.jpg', '{\"filename\":\"product-51.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-51.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:29\",\"name\":\"product-51\",\"extension\":\"jpg\"}', '2025-10-20 17:06:29', '2025-10-20 17:06:29'),
(339, 224, 'ecommerce/digital-product-files/product-40.jpg', '{\"filename\":\"product-40.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-40.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:29\",\"name\":\"product-40\",\"extension\":\"jpg\"}', '2025-10-20 17:06:29', '2025-10-20 17:06:29'),
(340, 224, 'ecommerce/digital-product-files/product-59.jpg', '{\"filename\":\"product-59.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-59.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:29\",\"name\":\"product-59\",\"extension\":\"jpg\"}', '2025-10-20 17:06:29', '2025-10-20 17:06:29'),
(341, 224, 'ecommerce/digital-product-files/product-61.jpg', '{\"filename\":\"product-61.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-61.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:29\",\"name\":\"product-61\",\"extension\":\"jpg\"}', '2025-10-20 17:06:29', '2025-10-20 17:06:29'),
(342, 224, 'ecommerce/digital-product-files/product-89.jpg', '{\"filename\":\"product-89.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-89.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:29\",\"name\":\"product-89\",\"extension\":\"jpg\"}', '2025-10-20 17:06:29', '2025-10-20 17:06:29'),
(343, 224, 'ecommerce/digital-product-files/product-79.jpg', '{\"filename\":\"product-79.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-79.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:29\",\"name\":\"product-79\",\"extension\":\"jpg\"}', '2025-10-20 17:06:29', '2025-10-20 17:06:29'),
(344, 233, 'ecommerce/digital-product-files/product-53.jpg', '{\"filename\":\"product-53.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-53.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:30\",\"name\":\"product-53\",\"extension\":\"jpg\"}', '2025-10-20 17:06:30', '2025-10-20 17:06:30'),
(345, 233, 'ecommerce/digital-product-files/product-21.jpg', '{\"filename\":\"product-21.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-21.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:30\",\"name\":\"product-21\",\"extension\":\"jpg\"}', '2025-10-20 17:06:30', '2025-10-20 17:06:30'),
(346, 233, 'ecommerce/digital-product-files/product-83.jpg', '{\"filename\":\"product-83.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-83.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:30\",\"name\":\"product-83\",\"extension\":\"jpg\"}', '2025-10-20 17:06:30', '2025-10-20 17:06:30'),
(347, 233, 'ecommerce/digital-product-files/product-67.jpg', '{\"filename\":\"product-67.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-67.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:30\",\"name\":\"product-67\",\"extension\":\"jpg\"}', '2025-10-20 17:06:30', '2025-10-20 17:06:30'),
(348, 233, 'ecommerce/digital-product-files/product-46.jpg', '{\"filename\":\"product-46.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-46.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:30\",\"name\":\"product-46\",\"extension\":\"jpg\"}', '2025-10-20 17:06:30', '2025-10-20 17:06:30'),
(349, 233, 'ecommerce/digital-product-files/product-49.jpg', '{\"filename\":\"product-49.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-49.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:30\",\"name\":\"product-49\",\"extension\":\"jpg\"}', '2025-10-20 17:06:30', '2025-10-20 17:06:30'),
(350, 233, 'ecommerce/digital-product-files/product-3.jpg', '{\"filename\":\"product-3.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-3.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:30\",\"name\":\"product-3\",\"extension\":\"jpg\"}', '2025-10-20 17:06:30', '2025-10-20 17:06:30'),
(351, 233, 'ecommerce/digital-product-files/product-48.jpg', '{\"filename\":\"product-48.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-48.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:30\",\"name\":\"product-48\",\"extension\":\"jpg\"}', '2025-10-20 17:06:30', '2025-10-20 17:06:30'),
(352, 233, 'ecommerce/digital-product-files/product-90.jpg', '{\"filename\":\"product-90.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-90.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:30\",\"name\":\"product-90\",\"extension\":\"jpg\"}', '2025-10-20 17:06:30', '2025-10-20 17:06:30'),
(353, 233, 'ecommerce/digital-product-files/product-93.jpg', '{\"filename\":\"product-93.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-93.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:30\",\"name\":\"product-93\",\"extension\":\"jpg\"}', '2025-10-20 17:06:30', '2025-10-20 17:06:30'),
(354, 233, 'ecommerce/digital-product-files/product-43.jpg', '{\"filename\":\"product-43.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-43.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:30\",\"name\":\"product-43\",\"extension\":\"jpg\"}', '2025-10-20 17:06:30', '2025-10-20 17:06:30'),
(355, 233, 'ecommerce/digital-product-files/product-55.jpg', '{\"filename\":\"product-55.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-55.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:30\",\"name\":\"product-55\",\"extension\":\"jpg\"}', '2025-10-20 17:06:30', '2025-10-20 17:06:30'),
(356, 234, 'ecommerce/digital-product-files/product-53.jpg', '{\"filename\":\"product-53.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-53.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:30\",\"name\":\"product-53\",\"extension\":\"jpg\"}', '2025-10-20 17:06:30', '2025-10-20 17:06:30'),
(357, 234, 'ecommerce/digital-product-files/product-21.jpg', '{\"filename\":\"product-21.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-21.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:30\",\"name\":\"product-21\",\"extension\":\"jpg\"}', '2025-10-20 17:06:30', '2025-10-20 17:06:30'),
(358, 234, 'ecommerce/digital-product-files/product-83.jpg', '{\"filename\":\"product-83.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-83.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:30\",\"name\":\"product-83\",\"extension\":\"jpg\"}', '2025-10-20 17:06:30', '2025-10-20 17:06:30'),
(359, 234, 'ecommerce/digital-product-files/product-67.jpg', '{\"filename\":\"product-67.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-67.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:30\",\"name\":\"product-67\",\"extension\":\"jpg\"}', '2025-10-20 17:06:30', '2025-10-20 17:06:30'),
(360, 234, 'ecommerce/digital-product-files/product-46.jpg', '{\"filename\":\"product-46.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-46.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:30\",\"name\":\"product-46\",\"extension\":\"jpg\"}', '2025-10-20 17:06:30', '2025-10-20 17:06:30'),
(361, 234, 'ecommerce/digital-product-files/product-49.jpg', '{\"filename\":\"product-49.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-49.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:30\",\"name\":\"product-49\",\"extension\":\"jpg\"}', '2025-10-20 17:06:30', '2025-10-20 17:06:30'),
(362, 234, 'ecommerce/digital-product-files/product-3.jpg', '{\"filename\":\"product-3.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-3.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:30\",\"name\":\"product-3\",\"extension\":\"jpg\"}', '2025-10-20 17:06:30', '2025-10-20 17:06:30'),
(363, 234, 'ecommerce/digital-product-files/product-48.jpg', '{\"filename\":\"product-48.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-48.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:30\",\"name\":\"product-48\",\"extension\":\"jpg\"}', '2025-10-20 17:06:30', '2025-10-20 17:06:30'),
(364, 234, 'ecommerce/digital-product-files/product-90.jpg', '{\"filename\":\"product-90.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-90.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:30\",\"name\":\"product-90\",\"extension\":\"jpg\"}', '2025-10-20 17:06:30', '2025-10-20 17:06:30'),
(365, 234, 'ecommerce/digital-product-files/product-93.jpg', '{\"filename\":\"product-93.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-93.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:30\",\"name\":\"product-93\",\"extension\":\"jpg\"}', '2025-10-20 17:06:30', '2025-10-20 17:06:30'),
(366, 234, 'ecommerce/digital-product-files/product-43.jpg', '{\"filename\":\"product-43.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-43.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:30\",\"name\":\"product-43\",\"extension\":\"jpg\"}', '2025-10-20 17:06:30', '2025-10-20 17:06:30'),
(367, 234, 'ecommerce/digital-product-files/product-55.jpg', '{\"filename\":\"product-55.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-55.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:30\",\"name\":\"product-55\",\"extension\":\"jpg\"}', '2025-10-20 17:06:30', '2025-10-20 17:06:30'),
(368, 235, 'ecommerce/digital-product-files/product-53.jpg', '{\"filename\":\"product-53.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-53.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:30\",\"name\":\"product-53\",\"extension\":\"jpg\"}', '2025-10-20 17:06:30', '2025-10-20 17:06:30'),
(369, 235, 'ecommerce/digital-product-files/product-21.jpg', '{\"filename\":\"product-21.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-21.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:30\",\"name\":\"product-21\",\"extension\":\"jpg\"}', '2025-10-20 17:06:30', '2025-10-20 17:06:30'),
(370, 235, 'ecommerce/digital-product-files/product-83.jpg', '{\"filename\":\"product-83.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-83.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:30\",\"name\":\"product-83\",\"extension\":\"jpg\"}', '2025-10-20 17:06:30', '2025-10-20 17:06:30'),
(371, 235, 'ecommerce/digital-product-files/product-67.jpg', '{\"filename\":\"product-67.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-67.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:30\",\"name\":\"product-67\",\"extension\":\"jpg\"}', '2025-10-20 17:06:30', '2025-10-20 17:06:30'),
(372, 235, 'ecommerce/digital-product-files/product-46.jpg', '{\"filename\":\"product-46.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-46.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:30\",\"name\":\"product-46\",\"extension\":\"jpg\"}', '2025-10-20 17:06:30', '2025-10-20 17:06:30'),
(373, 235, 'ecommerce/digital-product-files/product-49.jpg', '{\"filename\":\"product-49.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-49.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:30\",\"name\":\"product-49\",\"extension\":\"jpg\"}', '2025-10-20 17:06:30', '2025-10-20 17:06:30'),
(374, 235, 'ecommerce/digital-product-files/product-3.jpg', '{\"filename\":\"product-3.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-3.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:30\",\"name\":\"product-3\",\"extension\":\"jpg\"}', '2025-10-20 17:06:30', '2025-10-20 17:06:30'),
(375, 235, 'ecommerce/digital-product-files/product-48.jpg', '{\"filename\":\"product-48.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-48.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:30\",\"name\":\"product-48\",\"extension\":\"jpg\"}', '2025-10-20 17:06:30', '2025-10-20 17:06:30'),
(376, 235, 'ecommerce/digital-product-files/product-90.jpg', '{\"filename\":\"product-90.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-90.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:30\",\"name\":\"product-90\",\"extension\":\"jpg\"}', '2025-10-20 17:06:30', '2025-10-20 17:06:30'),
(377, 235, 'ecommerce/digital-product-files/product-93.jpg', '{\"filename\":\"product-93.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-93.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:30\",\"name\":\"product-93\",\"extension\":\"jpg\"}', '2025-10-20 17:06:30', '2025-10-20 17:06:30'),
(378, 235, 'ecommerce/digital-product-files/product-43.jpg', '{\"filename\":\"product-43.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-43.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:30\",\"name\":\"product-43\",\"extension\":\"jpg\"}', '2025-10-20 17:06:30', '2025-10-20 17:06:30'),
(379, 235, 'ecommerce/digital-product-files/product-55.jpg', '{\"filename\":\"product-55.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-55.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:30\",\"name\":\"product-55\",\"extension\":\"jpg\"}', '2025-10-20 17:06:30', '2025-10-20 17:06:30'),
(380, 236, 'ecommerce/digital-product-files/product-53.jpg', '{\"filename\":\"product-53.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-53.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:30\",\"name\":\"product-53\",\"extension\":\"jpg\"}', '2025-10-20 17:06:30', '2025-10-20 17:06:30'),
(381, 236, 'ecommerce/digital-product-files/product-21.jpg', '{\"filename\":\"product-21.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-21.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:30\",\"name\":\"product-21\",\"extension\":\"jpg\"}', '2025-10-20 17:06:30', '2025-10-20 17:06:30'),
(382, 236, 'ecommerce/digital-product-files/product-83.jpg', '{\"filename\":\"product-83.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-83.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:30\",\"name\":\"product-83\",\"extension\":\"jpg\"}', '2025-10-20 17:06:30', '2025-10-20 17:06:30'),
(383, 236, 'ecommerce/digital-product-files/product-67.jpg', '{\"filename\":\"product-67.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-67.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:30\",\"name\":\"product-67\",\"extension\":\"jpg\"}', '2025-10-20 17:06:30', '2025-10-20 17:06:30'),
(384, 236, 'ecommerce/digital-product-files/product-46.jpg', '{\"filename\":\"product-46.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-46.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:30\",\"name\":\"product-46\",\"extension\":\"jpg\"}', '2025-10-20 17:06:30', '2025-10-20 17:06:30'),
(385, 236, 'ecommerce/digital-product-files/product-49.jpg', '{\"filename\":\"product-49.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-49.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:30\",\"name\":\"product-49\",\"extension\":\"jpg\"}', '2025-10-20 17:06:30', '2025-10-20 17:06:30'),
(386, 236, 'ecommerce/digital-product-files/product-3.jpg', '{\"filename\":\"product-3.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-3.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:30\",\"name\":\"product-3\",\"extension\":\"jpg\"}', '2025-10-20 17:06:30', '2025-10-20 17:06:30'),
(387, 236, 'ecommerce/digital-product-files/product-48.jpg', '{\"filename\":\"product-48.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-48.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:30\",\"name\":\"product-48\",\"extension\":\"jpg\"}', '2025-10-20 17:06:30', '2025-10-20 17:06:30'),
(388, 236, 'ecommerce/digital-product-files/product-90.jpg', '{\"filename\":\"product-90.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-90.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:30\",\"name\":\"product-90\",\"extension\":\"jpg\"}', '2025-10-20 17:06:30', '2025-10-20 17:06:30'),
(389, 236, 'ecommerce/digital-product-files/product-93.jpg', '{\"filename\":\"product-93.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-93.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:30\",\"name\":\"product-93\",\"extension\":\"jpg\"}', '2025-10-20 17:06:30', '2025-10-20 17:06:30'),
(390, 236, 'ecommerce/digital-product-files/product-43.jpg', '{\"filename\":\"product-43.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-43.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:30\",\"name\":\"product-43\",\"extension\":\"jpg\"}', '2025-10-20 17:06:30', '2025-10-20 17:06:30'),
(391, 236, 'ecommerce/digital-product-files/product-55.jpg', '{\"filename\":\"product-55.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-55.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:30\",\"name\":\"product-55\",\"extension\":\"jpg\"}', '2025-10-20 17:06:30', '2025-10-20 17:06:30'),
(392, 237, 'ecommerce/digital-product-files/product-53.jpg', '{\"filename\":\"product-53.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-53.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:30\",\"name\":\"product-53\",\"extension\":\"jpg\"}', '2025-10-20 17:06:30', '2025-10-20 17:06:30'),
(393, 237, 'ecommerce/digital-product-files/product-21.jpg', '{\"filename\":\"product-21.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-21.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:30\",\"name\":\"product-21\",\"extension\":\"jpg\"}', '2025-10-20 17:06:30', '2025-10-20 17:06:30'),
(394, 237, 'ecommerce/digital-product-files/product-83.jpg', '{\"filename\":\"product-83.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-83.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:30\",\"name\":\"product-83\",\"extension\":\"jpg\"}', '2025-10-20 17:06:30', '2025-10-20 17:06:30'),
(395, 237, 'ecommerce/digital-product-files/product-67.jpg', '{\"filename\":\"product-67.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-67.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:30\",\"name\":\"product-67\",\"extension\":\"jpg\"}', '2025-10-20 17:06:30', '2025-10-20 17:06:30'),
(396, 237, 'ecommerce/digital-product-files/product-46.jpg', '{\"filename\":\"product-46.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-46.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:30\",\"name\":\"product-46\",\"extension\":\"jpg\"}', '2025-10-20 17:06:30', '2025-10-20 17:06:30'),
(397, 237, 'ecommerce/digital-product-files/product-49.jpg', '{\"filename\":\"product-49.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-49.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:30\",\"name\":\"product-49\",\"extension\":\"jpg\"}', '2025-10-20 17:06:30', '2025-10-20 17:06:30'),
(398, 237, 'ecommerce/digital-product-files/product-3.jpg', '{\"filename\":\"product-3.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-3.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:30\",\"name\":\"product-3\",\"extension\":\"jpg\"}', '2025-10-20 17:06:30', '2025-10-20 17:06:30'),
(399, 237, 'ecommerce/digital-product-files/product-48.jpg', '{\"filename\":\"product-48.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-48.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:30\",\"name\":\"product-48\",\"extension\":\"jpg\"}', '2025-10-20 17:06:30', '2025-10-20 17:06:30'),
(400, 237, 'ecommerce/digital-product-files/product-90.jpg', '{\"filename\":\"product-90.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-90.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:30\",\"name\":\"product-90\",\"extension\":\"jpg\"}', '2025-10-20 17:06:30', '2025-10-20 17:06:30'),
(401, 237, 'ecommerce/digital-product-files/product-93.jpg', '{\"filename\":\"product-93.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-93.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:30\",\"name\":\"product-93\",\"extension\":\"jpg\"}', '2025-10-20 17:06:30', '2025-10-20 17:06:30'),
(402, 237, 'ecommerce/digital-product-files/product-43.jpg', '{\"filename\":\"product-43.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-43.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:30\",\"name\":\"product-43\",\"extension\":\"jpg\"}', '2025-10-20 17:06:30', '2025-10-20 17:06:30'),
(403, 237, 'ecommerce/digital-product-files/product-55.jpg', '{\"filename\":\"product-55.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-55.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:30\",\"name\":\"product-55\",\"extension\":\"jpg\"}', '2025-10-20 17:06:30', '2025-10-20 17:06:30'),
(404, 245, 'ecommerce/digital-product-files/product-26.jpg', '{\"filename\":\"product-26.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-26.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:31\",\"name\":\"product-26\",\"extension\":\"jpg\"}', '2025-10-20 17:06:31', '2025-10-20 17:06:31'),
(405, 245, 'ecommerce/digital-product-files/product-79.jpg', '{\"filename\":\"product-79.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-79.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:31\",\"name\":\"product-79\",\"extension\":\"jpg\"}', '2025-10-20 17:06:31', '2025-10-20 17:06:31'),
(406, 245, 'ecommerce/digital-product-files/product-22.jpg', '{\"filename\":\"product-22.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-22.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:31\",\"name\":\"product-22\",\"extension\":\"jpg\"}', '2025-10-20 17:06:31', '2025-10-20 17:06:31'),
(407, 245, 'ecommerce/digital-product-files/product-69.jpg', '{\"filename\":\"product-69.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-69.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:31\",\"name\":\"product-69\",\"extension\":\"jpg\"}', '2025-10-20 17:06:31', '2025-10-20 17:06:31'),
(408, 245, 'ecommerce/digital-product-files/product-74.jpg', '{\"filename\":\"product-74.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-74.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:31\",\"name\":\"product-74\",\"extension\":\"jpg\"}', '2025-10-20 17:06:31', '2025-10-20 17:06:31'),
(409, 245, 'ecommerce/digital-product-files/product-75.jpg', '{\"filename\":\"product-75.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-75.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:31\",\"name\":\"product-75\",\"extension\":\"jpg\"}', '2025-10-20 17:06:31', '2025-10-20 17:06:31'),
(410, 245, 'ecommerce/digital-product-files/product-2.jpg', '{\"filename\":\"product-2.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-2.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:31\",\"name\":\"product-2\",\"extension\":\"jpg\"}', '2025-10-20 17:06:31', '2025-10-20 17:06:31'),
(411, 245, 'ecommerce/digital-product-files/product-65.jpg', '{\"filename\":\"product-65.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-65.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:31\",\"name\":\"product-65\",\"extension\":\"jpg\"}', '2025-10-20 17:06:31', '2025-10-20 17:06:31'),
(412, 245, 'ecommerce/digital-product-files/product-31.jpg', '{\"filename\":\"product-31.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-31.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:31\",\"name\":\"product-31\",\"extension\":\"jpg\"}', '2025-10-20 17:06:31', '2025-10-20 17:06:31'),
(413, 245, 'ecommerce/digital-product-files/product-53.jpg', '{\"filename\":\"product-53.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-53.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:31\",\"name\":\"product-53\",\"extension\":\"jpg\"}', '2025-10-20 17:06:31', '2025-10-20 17:06:31'),
(414, 246, 'ecommerce/digital-product-files/product-26.jpg', '{\"filename\":\"product-26.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-26.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:31\",\"name\":\"product-26\",\"extension\":\"jpg\"}', '2025-10-20 17:06:31', '2025-10-20 17:06:31'),
(415, 246, 'ecommerce/digital-product-files/product-79.jpg', '{\"filename\":\"product-79.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-79.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:31\",\"name\":\"product-79\",\"extension\":\"jpg\"}', '2025-10-20 17:06:31', '2025-10-20 17:06:31'),
(416, 246, 'ecommerce/digital-product-files/product-22.jpg', '{\"filename\":\"product-22.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-22.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:31\",\"name\":\"product-22\",\"extension\":\"jpg\"}', '2025-10-20 17:06:31', '2025-10-20 17:06:31'),
(417, 246, 'ecommerce/digital-product-files/product-69.jpg', '{\"filename\":\"product-69.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-69.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:31\",\"name\":\"product-69\",\"extension\":\"jpg\"}', '2025-10-20 17:06:31', '2025-10-20 17:06:31'),
(418, 246, 'ecommerce/digital-product-files/product-74.jpg', '{\"filename\":\"product-74.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-74.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:31\",\"name\":\"product-74\",\"extension\":\"jpg\"}', '2025-10-20 17:06:31', '2025-10-20 17:06:31'),
(419, 246, 'ecommerce/digital-product-files/product-75.jpg', '{\"filename\":\"product-75.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-75.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:31\",\"name\":\"product-75\",\"extension\":\"jpg\"}', '2025-10-20 17:06:31', '2025-10-20 17:06:31'),
(420, 246, 'ecommerce/digital-product-files/product-2.jpg', '{\"filename\":\"product-2.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-2.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:31\",\"name\":\"product-2\",\"extension\":\"jpg\"}', '2025-10-20 17:06:31', '2025-10-20 17:06:31'),
(421, 246, 'ecommerce/digital-product-files/product-65.jpg', '{\"filename\":\"product-65.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-65.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:31\",\"name\":\"product-65\",\"extension\":\"jpg\"}', '2025-10-20 17:06:31', '2025-10-20 17:06:31'),
(422, 246, 'ecommerce/digital-product-files/product-31.jpg', '{\"filename\":\"product-31.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-31.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:31\",\"name\":\"product-31\",\"extension\":\"jpg\"}', '2025-10-20 17:06:31', '2025-10-20 17:06:31'),
(423, 246, 'ecommerce/digital-product-files/product-53.jpg', '{\"filename\":\"product-53.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-53.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:31\",\"name\":\"product-53\",\"extension\":\"jpg\"}', '2025-10-20 17:06:31', '2025-10-20 17:06:31'),
(424, 253, 'ecommerce/digital-product-files/product-88.jpg', '{\"filename\":\"product-88.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-88.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:31\",\"name\":\"product-88\",\"extension\":\"jpg\"}', '2025-10-20 17:06:31', '2025-10-20 17:06:31'),
(425, 253, 'ecommerce/digital-product-files/product-58.jpg', '{\"filename\":\"product-58.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-58.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:31\",\"name\":\"product-58\",\"extension\":\"jpg\"}', '2025-10-20 17:06:31', '2025-10-20 17:06:31'),
(426, 253, 'ecommerce/digital-product-files/product-38.jpg', '{\"filename\":\"product-38.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-38.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:31\",\"name\":\"product-38\",\"extension\":\"jpg\"}', '2025-10-20 17:06:31', '2025-10-20 17:06:31'),
(427, 253, 'ecommerce/digital-product-files/product-11.jpg', '{\"filename\":\"product-11.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-11.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:31\",\"name\":\"product-11\",\"extension\":\"jpg\"}', '2025-10-20 17:06:31', '2025-10-20 17:06:31'),
(428, 253, 'ecommerce/digital-product-files/product-59.jpg', '{\"filename\":\"product-59.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-59.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:31\",\"name\":\"product-59\",\"extension\":\"jpg\"}', '2025-10-20 17:06:31', '2025-10-20 17:06:31'),
(429, 253, 'ecommerce/digital-product-files/product-9.jpg', '{\"filename\":\"product-9.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-9.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:31\",\"name\":\"product-9\",\"extension\":\"jpg\"}', '2025-10-20 17:06:31', '2025-10-20 17:06:31'),
(430, 253, 'ecommerce/digital-product-files/product-44.jpg', '{\"filename\":\"product-44.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-44.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:31\",\"name\":\"product-44\",\"extension\":\"jpg\"}', '2025-10-20 17:06:31', '2025-10-20 17:06:31'),
(431, 253, 'ecommerce/digital-product-files/product-56.jpg', '{\"filename\":\"product-56.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-56.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:31\",\"name\":\"product-56\",\"extension\":\"jpg\"}', '2025-10-20 17:06:31', '2025-10-20 17:06:31'),
(432, 253, 'ecommerce/digital-product-files/product-14.jpg', '{\"filename\":\"product-14.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-14.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:31\",\"name\":\"product-14\",\"extension\":\"jpg\"}', '2025-10-20 17:06:31', '2025-10-20 17:06:31'),
(433, 253, 'ecommerce/digital-product-files/product-84.jpg', '{\"filename\":\"product-84.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-84.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:31\",\"name\":\"product-84\",\"extension\":\"jpg\"}', '2025-10-20 17:06:31', '2025-10-20 17:06:31'),
(434, 253, 'ecommerce/digital-product-files/product-72.jpg', '{\"filename\":\"product-72.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-72.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:31\",\"name\":\"product-72\",\"extension\":\"jpg\"}', '2025-10-20 17:06:31', '2025-10-20 17:06:31'),
(435, 254, 'ecommerce/digital-product-files/product-88.jpg', '{\"filename\":\"product-88.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-88.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:31\",\"name\":\"product-88\",\"extension\":\"jpg\"}', '2025-10-20 17:06:31', '2025-10-20 17:06:31'),
(436, 254, 'ecommerce/digital-product-files/product-58.jpg', '{\"filename\":\"product-58.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-58.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:31\",\"name\":\"product-58\",\"extension\":\"jpg\"}', '2025-10-20 17:06:31', '2025-10-20 17:06:31'),
(437, 254, 'ecommerce/digital-product-files/product-38.jpg', '{\"filename\":\"product-38.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-38.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:31\",\"name\":\"product-38\",\"extension\":\"jpg\"}', '2025-10-20 17:06:31', '2025-10-20 17:06:31'),
(438, 254, 'ecommerce/digital-product-files/product-11.jpg', '{\"filename\":\"product-11.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-11.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:31\",\"name\":\"product-11\",\"extension\":\"jpg\"}', '2025-10-20 17:06:31', '2025-10-20 17:06:31'),
(439, 254, 'ecommerce/digital-product-files/product-59.jpg', '{\"filename\":\"product-59.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-59.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:31\",\"name\":\"product-59\",\"extension\":\"jpg\"}', '2025-10-20 17:06:31', '2025-10-20 17:06:31'),
(440, 254, 'ecommerce/digital-product-files/product-9.jpg', '{\"filename\":\"product-9.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-9.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:31\",\"name\":\"product-9\",\"extension\":\"jpg\"}', '2025-10-20 17:06:31', '2025-10-20 17:06:31'),
(441, 254, 'ecommerce/digital-product-files/product-44.jpg', '{\"filename\":\"product-44.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-44.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:31\",\"name\":\"product-44\",\"extension\":\"jpg\"}', '2025-10-20 17:06:31', '2025-10-20 17:06:31'),
(442, 254, 'ecommerce/digital-product-files/product-56.jpg', '{\"filename\":\"product-56.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-56.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:31\",\"name\":\"product-56\",\"extension\":\"jpg\"}', '2025-10-20 17:06:31', '2025-10-20 17:06:31'),
(443, 254, 'ecommerce/digital-product-files/product-14.jpg', '{\"filename\":\"product-14.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-14.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:31\",\"name\":\"product-14\",\"extension\":\"jpg\"}', '2025-10-20 17:06:31', '2025-10-20 17:06:31'),
(444, 254, 'ecommerce/digital-product-files/product-84.jpg', '{\"filename\":\"product-84.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-84.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:31\",\"name\":\"product-84\",\"extension\":\"jpg\"}', '2025-10-20 17:06:31', '2025-10-20 17:06:31'),
(445, 254, 'ecommerce/digital-product-files/product-72.jpg', '{\"filename\":\"product-72.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-72.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:31\",\"name\":\"product-72\",\"extension\":\"jpg\"}', '2025-10-20 17:06:31', '2025-10-20 17:06:31'),
(446, 255, 'ecommerce/digital-product-files/product-88.jpg', '{\"filename\":\"product-88.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-88.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:32\",\"name\":\"product-88\",\"extension\":\"jpg\"}', '2025-10-20 17:06:32', '2025-10-20 17:06:32'),
(447, 255, 'ecommerce/digital-product-files/product-58.jpg', '{\"filename\":\"product-58.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-58.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:32\",\"name\":\"product-58\",\"extension\":\"jpg\"}', '2025-10-20 17:06:32', '2025-10-20 17:06:32'),
(448, 255, 'ecommerce/digital-product-files/product-38.jpg', '{\"filename\":\"product-38.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-38.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:32\",\"name\":\"product-38\",\"extension\":\"jpg\"}', '2025-10-20 17:06:32', '2025-10-20 17:06:32');
INSERT INTO `ec_product_files` (`id`, `product_id`, `url`, `extras`, `created_at`, `updated_at`) VALUES
(449, 255, 'ecommerce/digital-product-files/product-11.jpg', '{\"filename\":\"product-11.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-11.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:32\",\"name\":\"product-11\",\"extension\":\"jpg\"}', '2025-10-20 17:06:32', '2025-10-20 17:06:32'),
(450, 255, 'ecommerce/digital-product-files/product-59.jpg', '{\"filename\":\"product-59.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-59.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:32\",\"name\":\"product-59\",\"extension\":\"jpg\"}', '2025-10-20 17:06:32', '2025-10-20 17:06:32'),
(451, 255, 'ecommerce/digital-product-files/product-9.jpg', '{\"filename\":\"product-9.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-9.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:32\",\"name\":\"product-9\",\"extension\":\"jpg\"}', '2025-10-20 17:06:32', '2025-10-20 17:06:32'),
(452, 255, 'ecommerce/digital-product-files/product-44.jpg', '{\"filename\":\"product-44.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-44.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:32\",\"name\":\"product-44\",\"extension\":\"jpg\"}', '2025-10-20 17:06:32', '2025-10-20 17:06:32'),
(453, 255, 'ecommerce/digital-product-files/product-56.jpg', '{\"filename\":\"product-56.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-56.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:32\",\"name\":\"product-56\",\"extension\":\"jpg\"}', '2025-10-20 17:06:32', '2025-10-20 17:06:32'),
(454, 255, 'ecommerce/digital-product-files/product-14.jpg', '{\"filename\":\"product-14.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-14.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:32\",\"name\":\"product-14\",\"extension\":\"jpg\"}', '2025-10-20 17:06:32', '2025-10-20 17:06:32'),
(455, 255, 'ecommerce/digital-product-files/product-84.jpg', '{\"filename\":\"product-84.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-84.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:32\",\"name\":\"product-84\",\"extension\":\"jpg\"}', '2025-10-20 17:06:32', '2025-10-20 17:06:32'),
(456, 255, 'ecommerce/digital-product-files/product-72.jpg', '{\"filename\":\"product-72.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-72.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:32\",\"name\":\"product-72\",\"extension\":\"jpg\"}', '2025-10-20 17:06:32', '2025-10-20 17:06:32'),
(457, 256, 'ecommerce/digital-product-files/product-88.jpg', '{\"filename\":\"product-88.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-88.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:32\",\"name\":\"product-88\",\"extension\":\"jpg\"}', '2025-10-20 17:06:32', '2025-10-20 17:06:32'),
(458, 256, 'ecommerce/digital-product-files/product-58.jpg', '{\"filename\":\"product-58.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-58.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:32\",\"name\":\"product-58\",\"extension\":\"jpg\"}', '2025-10-20 17:06:32', '2025-10-20 17:06:32'),
(459, 256, 'ecommerce/digital-product-files/product-38.jpg', '{\"filename\":\"product-38.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-38.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:32\",\"name\":\"product-38\",\"extension\":\"jpg\"}', '2025-10-20 17:06:32', '2025-10-20 17:06:32'),
(460, 256, 'ecommerce/digital-product-files/product-11.jpg', '{\"filename\":\"product-11.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-11.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:32\",\"name\":\"product-11\",\"extension\":\"jpg\"}', '2025-10-20 17:06:32', '2025-10-20 17:06:32'),
(461, 256, 'ecommerce/digital-product-files/product-59.jpg', '{\"filename\":\"product-59.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-59.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:32\",\"name\":\"product-59\",\"extension\":\"jpg\"}', '2025-10-20 17:06:32', '2025-10-20 17:06:32'),
(462, 256, 'ecommerce/digital-product-files/product-9.jpg', '{\"filename\":\"product-9.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-9.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:32\",\"name\":\"product-9\",\"extension\":\"jpg\"}', '2025-10-20 17:06:32', '2025-10-20 17:06:32'),
(463, 256, 'ecommerce/digital-product-files/product-44.jpg', '{\"filename\":\"product-44.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-44.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:32\",\"name\":\"product-44\",\"extension\":\"jpg\"}', '2025-10-20 17:06:32', '2025-10-20 17:06:32'),
(464, 256, 'ecommerce/digital-product-files/product-56.jpg', '{\"filename\":\"product-56.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-56.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:32\",\"name\":\"product-56\",\"extension\":\"jpg\"}', '2025-10-20 17:06:32', '2025-10-20 17:06:32'),
(465, 256, 'ecommerce/digital-product-files/product-14.jpg', '{\"filename\":\"product-14.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-14.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:32\",\"name\":\"product-14\",\"extension\":\"jpg\"}', '2025-10-20 17:06:32', '2025-10-20 17:06:32'),
(466, 256, 'ecommerce/digital-product-files/product-84.jpg', '{\"filename\":\"product-84.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-84.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:32\",\"name\":\"product-84\",\"extension\":\"jpg\"}', '2025-10-20 17:06:32', '2025-10-20 17:06:32'),
(467, 256, 'ecommerce/digital-product-files/product-72.jpg', '{\"filename\":\"product-72.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-72.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:32\",\"name\":\"product-72\",\"extension\":\"jpg\"}', '2025-10-20 17:06:32', '2025-10-20 17:06:32');

-- --------------------------------------------------------

--
-- Table structure for table `ec_product_labels`
--

CREATE TABLE `ec_product_labels` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `color` varchar(120) DEFAULT NULL,
  `status` varchar(60) NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `text_color` varchar(120) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_product_labels`
--

INSERT INTO `ec_product_labels` (`id`, `name`, `color`, `status`, `created_at`, `updated_at`, `text_color`) VALUES
(1, 'Hot', '#d71e2d', 'published', '2025-10-20 17:06:03', '2025-10-20 17:06:03', NULL),
(2, 'New', '#02856e', 'published', '2025-10-20 17:06:03', '2025-10-20 17:06:03', NULL),
(3, 'Sale', '#fe9931', 'published', '2025-10-20 17:06:03', '2025-10-20 17:06:03', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ec_product_labels_translations`
--

CREATE TABLE `ec_product_labels_translations` (
  `lang_code` varchar(191) NOT NULL,
  `ec_product_labels_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) DEFAULT NULL,
  `description` varchar(400) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_product_label_products`
--

CREATE TABLE `ec_product_label_products` (
  `product_label_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_product_label_products`
--

INSERT INTO `ec_product_label_products` (`product_label_id`, `product_id`) VALUES
(1, 14),
(1, 49),
(2, 7),
(2, 35),
(2, 42),
(2, 63),
(2, 70),
(3, 21),
(3, 28),
(3, 56);

-- --------------------------------------------------------

--
-- Table structure for table `ec_product_license_codes`
--

CREATE TABLE `ec_product_license_codes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `license_code` text NOT NULL,
  `status` varchar(60) NOT NULL DEFAULT 'available',
  `assigned_order_product_id` bigint(20) UNSIGNED DEFAULT NULL,
  `assigned_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_product_related_relations`
--

CREATE TABLE `ec_product_related_relations` (
  `from_product_id` bigint(20) UNSIGNED NOT NULL,
  `to_product_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_product_specification_attribute`
--

CREATE TABLE `ec_product_specification_attribute` (
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `attribute_id` bigint(20) UNSIGNED NOT NULL,
  `value` text DEFAULT NULL,
  `hidden` tinyint(1) NOT NULL DEFAULT 0,
  `order` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_product_specification_attribute`
--

INSERT INTO `ec_product_specification_attribute` (`product_id`, `attribute_id`, `value`, `hidden`, `order`) VALUES
(1, 1, '22.39 cm', 0, 0),
(1, 2, '61.07 cm', 0, 0),
(1, 3, '34.4 cm', 0, 0),
(1, 4, '16.17 cm', 0, 0),
(1, 5, '87.41 cm', 0, 0),
(2, 1, '28.85 cm', 0, 0),
(2, 2, '39.57 cm', 0, 0),
(2, 3, '91.91 cm', 0, 0),
(2, 4, '99.53 cm', 0, 0),
(2, 5, '73.69 cm', 0, 0),
(3, 1, '45.87 cm', 0, 0),
(3, 2, '5.66 cm', 0, 0),
(3, 3, '74.88 cm', 0, 0),
(3, 4, '83.78 cm', 0, 0),
(3, 5, '46.56 cm', 0, 0),
(4, 6, '11.19 cm', 0, 0),
(4, 7, '41.11 cm', 0, 0),
(4, 8, '2560x1440', 0, 0),
(5, 1, '82.99 cm', 0, 0),
(5, 2, '52.88 cm', 0, 0),
(5, 3, '15.15 cm', 0, 0),
(5, 4, '35.08 cm', 0, 0),
(5, 5, '98.13 cm', 0, 0),
(6, 1, '85.77 cm', 0, 0),
(6, 2, '51.6 cm', 0, 0),
(6, 3, '70.9 cm', 0, 0),
(6, 4, '17.82 cm', 0, 0),
(6, 5, '97.56 cm', 0, 0),
(7, 1, '69.31 cm', 0, 0),
(7, 2, '68.83 cm', 0, 0),
(7, 3, '33.58 cm', 0, 0),
(7, 4, '43.74 cm', 0, 0),
(7, 5, '89.45 cm', 0, 0),
(8, 1, '94.14 cm', 0, 0),
(8, 2, '97.27 cm', 0, 0),
(8, 3, '65 cm', 0, 0),
(8, 4, '50.5 cm', 0, 0),
(8, 5, '82.62 cm', 0, 0),
(9, 6, '46.78 cm', 0, 0),
(9, 7, '60.5 cm', 0, 0),
(9, 8, '2560x1440', 0, 0),
(10, 1, '14.87 cm', 0, 0),
(10, 2, '10.35 cm', 0, 0),
(10, 3, '59.1 cm', 0, 0),
(10, 4, '99.35 cm', 0, 0),
(10, 5, '72.49 cm', 0, 0),
(11, 1, '13.83 cm', 0, 0),
(11, 2, '24.06 cm', 0, 0),
(11, 3, '61.72 cm', 0, 0),
(11, 4, '80.81 cm', 0, 0),
(11, 5, '18.95 cm', 0, 0),
(12, 6, '48.64 cm', 0, 0),
(12, 7, '68.91 cm', 0, 0),
(12, 8, '3840x2160', 0, 0),
(13, 1, '34.61 cm', 0, 0),
(13, 2, '75.15 cm', 0, 0),
(13, 3, '25.53 cm', 0, 0),
(13, 4, '78 cm', 0, 0),
(13, 5, '43.45 cm', 0, 0),
(14, 1, '52.64 cm', 0, 0),
(14, 2, '14.05 cm', 0, 0),
(14, 3, '31.45 cm', 0, 0),
(14, 4, '72.85 cm', 0, 0),
(14, 5, '3.63 cm', 0, 0),
(15, 1, '79.55 cm', 0, 0),
(15, 2, '75.33 cm', 0, 0),
(15, 3, '41.85 cm', 0, 0),
(15, 4, '18.36 cm', 0, 0),
(15, 5, '73.75 cm', 0, 0),
(16, 6, '48.31 cm', 0, 0),
(16, 7, '46.38 cm', 0, 0),
(16, 8, '2560x1440', 0, 0),
(17, 1, '56.57 cm', 0, 0),
(17, 2, '4.19 cm', 0, 0),
(17, 3, '38.04 cm', 0, 0),
(17, 4, '12.22 cm', 0, 0),
(17, 5, '73.51 cm', 0, 0),
(18, 6, '59.31 cm', 0, 0),
(18, 7, '36.51 cm', 0, 0),
(18, 8, '1920x1080', 0, 0),
(19, 6, '34.2 cm', 0, 0),
(19, 7, '95.8 cm', 0, 0),
(19, 8, '2560x1440', 0, 0),
(20, 6, '57.19 cm', 0, 0),
(20, 7, '29.25 cm', 0, 0),
(20, 8, '1920x1080', 0, 0),
(21, 6, '90.75 cm', 0, 0),
(21, 7, '87.99 cm', 0, 0),
(21, 8, '1920x1080', 0, 0),
(22, 1, '18.24 cm', 0, 0),
(22, 2, '73.77 cm', 0, 0),
(22, 3, '39.73 cm', 0, 0),
(22, 4, '68.56 cm', 0, 0),
(22, 5, '74.26 cm', 0, 0),
(23, 6, '82.45 cm', 0, 0),
(23, 7, '80.3 cm', 0, 0),
(23, 8, '2560x1440', 0, 0),
(24, 1, '53.38 cm', 0, 0),
(24, 2, '93.4 cm', 0, 0),
(24, 3, '62.43 cm', 0, 0),
(24, 4, '82.47 cm', 0, 0),
(24, 5, '37.97 cm', 0, 0),
(25, 1, '60.08 cm', 0, 0),
(25, 2, '38.19 cm', 0, 0),
(25, 3, '73.91 cm', 0, 0),
(25, 4, '51.58 cm', 0, 0),
(25, 5, '86.3 cm', 0, 0),
(26, 1, '26.53 cm', 0, 0),
(26, 2, '64.6 cm', 0, 0),
(26, 3, '79.77 cm', 0, 0),
(26, 4, '74.74 cm', 0, 0),
(26, 5, '88.47 cm', 0, 0),
(27, 1, '55.5 cm', 0, 0),
(27, 2, '42.91 cm', 0, 0),
(27, 3, '4.38 cm', 0, 0),
(27, 4, '43.85 cm', 0, 0),
(27, 5, '5.82 cm', 0, 0),
(28, 1, '95.63 cm', 0, 0),
(28, 2, '98.41 cm', 0, 0),
(28, 3, '29.96 cm', 0, 0),
(28, 4, '20.48 cm', 0, 0),
(28, 5, '52.2 cm', 0, 0),
(29, 6, '69.61 cm', 0, 0),
(29, 7, '88.3 cm', 0, 0),
(29, 8, '2560x1440', 0, 0),
(30, 1, '70.16 cm', 0, 0),
(30, 2, '53.29 cm', 0, 0),
(30, 3, '78.8 cm', 0, 0),
(30, 4, '31.17 cm', 0, 0),
(30, 5, '57.78 cm', 0, 0),
(31, 6, '8.57 cm', 0, 0),
(31, 7, '4.08 cm', 0, 0),
(31, 8, '1920x1080', 0, 0),
(32, 1, '88.24 cm', 0, 0),
(32, 2, '54.79 cm', 0, 0),
(32, 3, '7.36 cm', 0, 0),
(32, 4, '80.81 cm', 0, 0),
(32, 5, '19.62 cm', 0, 0),
(33, 1, '48.33 cm', 0, 0),
(33, 2, '37.52 cm', 0, 0),
(33, 3, '90.91 cm', 0, 0),
(33, 4, '46.7 cm', 0, 0),
(33, 5, '69.22 cm', 0, 0),
(34, 1, '97.12 cm', 0, 0),
(34, 2, '92.72 cm', 0, 0),
(34, 3, '31.7 cm', 0, 0),
(34, 4, '25.49 cm', 0, 0),
(34, 5, '32.29 cm', 0, 0),
(35, 1, '46.04 cm', 0, 0),
(35, 2, '94.2 cm', 0, 0),
(35, 3, '93.47 cm', 0, 0),
(35, 4, '84.01 cm', 0, 0),
(35, 5, '59.67 cm', 0, 0),
(36, 6, '68.54 cm', 0, 0),
(36, 7, '83.83 cm', 0, 0),
(36, 8, '1920x1080', 0, 0),
(37, 1, '76.08 cm', 0, 0),
(37, 2, '89.05 cm', 0, 0),
(37, 3, '50.41 cm', 0, 0),
(37, 4, '95.02 cm', 0, 0),
(37, 5, '58.63 cm', 0, 0),
(38, 1, '10.95 cm', 0, 0),
(38, 2, '46.54 cm', 0, 0),
(38, 3, '58.44 cm', 0, 0),
(38, 4, '12.52 cm', 0, 0),
(38, 5, '83.94 cm', 0, 0),
(39, 1, '6.4 cm', 0, 0),
(39, 2, '97.2 cm', 0, 0),
(39, 3, '92.32 cm', 0, 0),
(39, 4, '42.07 cm', 0, 0),
(39, 5, '60.69 cm', 0, 0),
(40, 6, '25.45 cm', 0, 0),
(40, 7, '78.21 cm', 0, 0),
(40, 8, '3840x2160', 0, 0),
(41, 6, '90.52 cm', 0, 0),
(41, 7, '5.6 cm', 0, 0),
(41, 8, '3840x2160', 0, 0),
(42, 1, '59.04 cm', 0, 0),
(42, 2, '1.06 cm', 0, 0),
(42, 3, '91.94 cm', 0, 0),
(42, 4, '5.58 cm', 0, 0),
(42, 5, '7.84 cm', 0, 0),
(43, 6, '9.09 cm', 0, 0),
(43, 7, '75.12 cm', 0, 0),
(43, 8, '2560x1440', 0, 0),
(44, 6, '22.04 cm', 0, 0),
(44, 7, '40.26 cm', 0, 0),
(44, 8, '1920x1080', 0, 0),
(45, 6, '35.99 cm', 0, 0),
(45, 7, '28.24 cm', 0, 0),
(45, 8, '3840x2160', 0, 0),
(46, 1, '66.01 cm', 0, 0),
(46, 2, '79.38 cm', 0, 0),
(46, 3, '71.26 cm', 0, 0),
(46, 4, '37.53 cm', 0, 0),
(46, 5, '8.49 cm', 0, 0),
(47, 1, '9.09 cm', 0, 0),
(47, 2, '36.65 cm', 0, 0),
(47, 3, '97.25 cm', 0, 0),
(47, 4, '3.03 cm', 0, 0),
(47, 5, '22.46 cm', 0, 0),
(48, 1, '21.91 cm', 0, 0),
(48, 2, '89.92 cm', 0, 0),
(48, 3, '83 cm', 0, 0),
(48, 4, '58.53 cm', 0, 0),
(48, 5, '5.23 cm', 0, 0),
(49, 6, '44.06 cm', 0, 0),
(49, 7, '81.77 cm', 0, 0),
(49, 8, '3840x2160', 0, 0),
(50, 1, '93.92 cm', 0, 0),
(50, 2, '23.56 cm', 0, 0),
(50, 3, '99.24 cm', 0, 0),
(50, 4, '26.65 cm', 0, 0),
(50, 5, '84.73 cm', 0, 0),
(51, 1, '15.73 cm', 0, 0),
(51, 2, '52.11 cm', 0, 0),
(51, 3, '49.85 cm', 0, 0),
(51, 4, '81.69 cm', 0, 0),
(51, 5, '58.83 cm', 0, 0),
(52, 6, '54.22 cm', 0, 0),
(52, 7, '50.22 cm', 0, 0),
(52, 8, '3840x2160', 0, 0),
(53, 1, '93.69 cm', 0, 0),
(53, 2, '16.43 cm', 0, 0),
(53, 3, '44.54 cm', 0, 0),
(53, 4, '69.87 cm', 0, 0),
(53, 5, '55.21 cm', 0, 0),
(54, 1, '59.88 cm', 0, 0),
(54, 2, '10.9 cm', 0, 0),
(54, 3, '70.25 cm', 0, 0),
(54, 4, '87.21 cm', 0, 0),
(54, 5, '13.55 cm', 0, 0),
(55, 6, '89.84 cm', 0, 0),
(55, 7, '21.03 cm', 0, 0),
(55, 8, '2560x1440', 0, 0),
(56, 6, '11.48 cm', 0, 0),
(56, 7, '84.96 cm', 0, 0),
(56, 8, '3840x2160', 0, 0),
(57, 1, '52.13 cm', 0, 0),
(57, 2, '96.04 cm', 0, 0),
(57, 3, '48.32 cm', 0, 0),
(57, 4, '64.79 cm', 0, 0),
(57, 5, '46.01 cm', 0, 0),
(58, 6, '12.03 cm', 0, 0),
(58, 7, '74.44 cm', 0, 0),
(58, 8, '2560x1440', 0, 0),
(59, 1, '13.8 cm', 0, 0),
(59, 2, '54.93 cm', 0, 0),
(59, 3, '72.69 cm', 0, 0),
(59, 4, '44.66 cm', 0, 0),
(59, 5, '79.99 cm', 0, 0),
(60, 6, '1.3 cm', 0, 0),
(60, 7, '33.22 cm', 0, 0),
(60, 8, '1920x1080', 0, 0),
(61, 1, '90.63 cm', 0, 0),
(61, 2, '23.4 cm', 0, 0),
(61, 3, '87.3 cm', 0, 0),
(61, 4, '40.65 cm', 0, 0),
(61, 5, '17.96 cm', 0, 0),
(62, 6, '20.6 cm', 0, 0),
(62, 7, '57.83 cm', 0, 0),
(62, 8, '2560x1440', 0, 0),
(63, 1, '95.88 cm', 0, 0),
(63, 2, '15.87 cm', 0, 0),
(63, 3, '15.48 cm', 0, 0),
(63, 4, '92.36 cm', 0, 0),
(63, 5, '58.82 cm', 0, 0),
(64, 1, '65.85 cm', 0, 0),
(64, 2, '65.79 cm', 0, 0),
(64, 3, '10.78 cm', 0, 0),
(64, 4, '11.63 cm', 0, 0),
(64, 5, '21.31 cm', 0, 0),
(65, 6, '66.09 cm', 0, 0),
(65, 7, '1.22 cm', 0, 0),
(65, 8, '2560x1440', 0, 0),
(66, 1, '70.09 cm', 0, 0),
(66, 2, '78.96 cm', 0, 0),
(66, 3, '37.85 cm', 0, 0),
(66, 4, '80.39 cm', 0, 0),
(66, 5, '30.24 cm', 0, 0),
(67, 1, '21.29 cm', 0, 0),
(67, 2, '68.5 cm', 0, 0),
(67, 3, '41.75 cm', 0, 0),
(67, 4, '96.69 cm', 0, 0),
(67, 5, '62.42 cm', 0, 0),
(68, 1, '15.99 cm', 0, 0),
(68, 2, '83.9 cm', 0, 0),
(68, 3, '3.9 cm', 0, 0),
(68, 4, '97.87 cm', 0, 0),
(68, 5, '21.05 cm', 0, 0),
(69, 1, '20.58 cm', 0, 0),
(69, 2, '33.11 cm', 0, 0),
(69, 3, '76.06 cm', 0, 0),
(69, 4, '17.24 cm', 0, 0),
(69, 5, '65.06 cm', 0, 0),
(70, 1, '34.49 cm', 0, 0),
(70, 2, '19.19 cm', 0, 0),
(70, 3, '33.37 cm', 0, 0),
(70, 4, '43.59 cm', 0, 0),
(70, 5, '62.89 cm', 0, 0),
(71, 6, '37.48 cm', 0, 0),
(71, 7, '78.04 cm', 0, 0),
(71, 8, '1920x1080', 0, 0),
(72, 1, '3.64 cm', 0, 0),
(72, 2, '26.59 cm', 0, 0),
(72, 3, '11.27 cm', 0, 0),
(72, 4, '88.76 cm', 0, 0),
(72, 5, '64.21 cm', 0, 0),
(73, 1, '72.46 cm', 0, 0),
(73, 2, '48.08 cm', 0, 0),
(73, 3, '76.45 cm', 0, 0),
(73, 4, '35.72 cm', 0, 0),
(73, 5, '96.98 cm', 0, 0),
(74, 1, '24.44 cm', 0, 0),
(74, 2, '65.06 cm', 0, 0),
(74, 3, '32.35 cm', 0, 0),
(74, 4, '54.63 cm', 0, 0),
(74, 5, '16.5 cm', 0, 0),
(75, 6, '87.18 cm', 0, 0),
(75, 7, '86.28 cm', 0, 0),
(75, 8, '2560x1440', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ec_product_specification_attribute_translations`
--

CREATE TABLE `ec_product_specification_attribute_translations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `attribute_id` bigint(20) UNSIGNED NOT NULL,
  `lang_code` varchar(20) NOT NULL,
  `value` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_product_tags`
--

CREATE TABLE `ec_product_tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(120) NOT NULL,
  `description` varchar(400) DEFAULT NULL,
  `status` varchar(60) NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_product_tags_translations`
--

CREATE TABLE `ec_product_tags_translations` (
  `lang_code` varchar(191) NOT NULL,
  `ec_product_tags_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_product_tag_product`
--

CREATE TABLE `ec_product_tag_product` (
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `tag_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_product_tag_product`
--

INSERT INTO `ec_product_tag_product` (`product_id`, `tag_id`) VALUES
(1, 1),
(1, 4),
(1, 5),
(2, 3),
(2, 4),
(2, 6),
(3, 1),
(3, 2),
(3, 4),
(4, 2),
(4, 3),
(4, 5),
(5, 2),
(5, 3),
(5, 4),
(6, 1),
(6, 4),
(6, 6),
(7, 1),
(7, 2),
(8, 1),
(8, 2),
(8, 3),
(9, 4),
(9, 6),
(10, 4),
(11, 1),
(11, 3),
(12, 1),
(12, 3),
(12, 6),
(13, 3),
(13, 6),
(14, 2),
(14, 3),
(14, 4),
(15, 3),
(15, 6),
(16, 1),
(16, 3),
(16, 6),
(17, 4),
(17, 5),
(17, 6),
(18, 4),
(18, 5),
(19, 4),
(20, 3),
(20, 4),
(20, 6),
(21, 1),
(21, 4),
(21, 6),
(22, 1),
(22, 3),
(22, 6),
(23, 2),
(23, 3),
(23, 5),
(24, 1),
(24, 4),
(25, 1),
(25, 3),
(25, 5),
(26, 2),
(26, 5),
(26, 6),
(27, 2),
(27, 3),
(27, 4),
(28, 1),
(28, 2),
(29, 4),
(29, 6),
(30, 3),
(30, 6),
(31, 1),
(31, 6),
(32, 2),
(32, 3),
(32, 5),
(33, 2),
(33, 4),
(33, 6),
(34, 2),
(34, 5),
(35, 1),
(35, 4),
(36, 4),
(36, 5),
(37, 3),
(37, 6),
(38, 1),
(38, 4),
(39, 1),
(39, 4),
(40, 2),
(40, 4),
(40, 6),
(41, 3),
(41, 4),
(41, 6),
(42, 1),
(42, 3),
(42, 5),
(43, 1),
(43, 5),
(43, 6),
(44, 3),
(44, 5),
(44, 6),
(45, 1),
(45, 3),
(45, 4),
(46, 1),
(46, 4),
(47, 2),
(47, 4),
(47, 5),
(48, 2),
(48, 3),
(49, 4),
(49, 6),
(50, 2),
(50, 3),
(50, 4),
(51, 2),
(51, 5),
(51, 6),
(52, 1),
(52, 3),
(52, 4),
(53, 4),
(53, 5),
(54, 2),
(54, 5),
(54, 6),
(55, 1),
(55, 3),
(55, 5),
(56, 1),
(56, 2),
(56, 3),
(57, 2),
(57, 5),
(58, 1),
(58, 2),
(58, 6),
(59, 2),
(59, 4),
(60, 1),
(60, 2),
(60, 5),
(61, 2),
(61, 4),
(61, 6),
(62, 1),
(62, 2),
(63, 2),
(63, 5),
(63, 6),
(64, 2),
(64, 3),
(64, 5),
(65, 1),
(65, 6),
(66, 1),
(66, 3),
(66, 4),
(67, 3),
(67, 5),
(67, 6),
(68, 4),
(68, 6),
(69, 1),
(69, 2),
(69, 3),
(70, 4),
(70, 5),
(71, 2),
(71, 5),
(71, 6),
(72, 2),
(72, 3),
(73, 2),
(73, 6),
(74, 2),
(74, 3),
(74, 5),
(75, 2),
(75, 5);

-- --------------------------------------------------------

--
-- Table structure for table `ec_product_up_sale_relations`
--

CREATE TABLE `ec_product_up_sale_relations` (
  `from_product_id` bigint(20) UNSIGNED NOT NULL,
  `to_product_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_product_variations`
--

CREATE TABLE `ec_product_variations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED DEFAULT NULL,
  `configurable_product_id` bigint(20) UNSIGNED NOT NULL,
  `is_default` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_product_variations`
--

INSERT INTO `ec_product_variations` (`id`, `product_id`, `configurable_product_id`, `is_default`) VALUES
(1, 76, 1, 1),
(2, 77, 1, 0),
(3, 78, 2, 1),
(4, 79, 2, 0),
(5, 80, 3, 1),
(6, 81, 4, 1),
(7, 82, 4, 0),
(8, 83, 5, 1),
(9, 84, 5, 0),
(10, 85, 6, 1),
(11, 86, 6, 0),
(12, 87, 6, 0),
(13, 88, 7, 1),
(14, 89, 7, 0),
(15, 90, 8, 1),
(16, 91, 9, 1),
(17, 92, 9, 0),
(18, 93, 9, 0),
(19, 94, 10, 1),
(20, 95, 10, 0),
(21, 96, 11, 1),
(22, 97, 11, 0),
(23, 98, 12, 1),
(24, 99, 12, 0),
(25, 100, 12, 0),
(26, 101, 13, 1),
(27, 102, 13, 0),
(28, 103, 13, 0),
(29, 104, 14, 1),
(30, 105, 14, 0),
(31, 106, 15, 1),
(32, 107, 15, 0),
(33, 108, 15, 0),
(34, 109, 16, 1),
(35, 110, 16, 0),
(36, 111, 16, 0),
(37, 112, 16, 0),
(38, 113, 17, 1),
(39, 114, 17, 0),
(40, 115, 17, 0),
(41, 116, 17, 0),
(42, 117, 18, 1),
(43, 118, 18, 0),
(44, 119, 19, 1),
(45, 120, 20, 1),
(46, 121, 20, 0),
(47, 122, 20, 0),
(48, 123, 21, 1),
(49, 124, 22, 1),
(50, 125, 22, 0),
(51, 126, 22, 0),
(52, 127, 22, 0),
(53, 128, 23, 1),
(54, 129, 23, 0),
(55, 130, 23, 0),
(56, 131, 23, 0),
(57, 132, 24, 1),
(58, 133, 24, 0),
(59, 134, 25, 1),
(60, 135, 25, 0),
(61, 136, 26, 1),
(62, 137, 27, 1),
(63, 138, 27, 0),
(64, 139, 27, 0),
(65, 140, 27, 0),
(66, 141, 28, 1),
(67, 142, 29, 1),
(68, 143, 29, 0),
(69, 144, 29, 0),
(70, 145, 29, 0),
(71, 146, 30, 1),
(72, 147, 31, 1),
(73, 148, 31, 0),
(74, 149, 31, 0),
(75, 150, 32, 1),
(76, 151, 33, 1),
(77, 152, 33, 0),
(78, 153, 33, 0),
(79, 154, 33, 0),
(80, 155, 34, 1),
(81, 156, 34, 0),
(82, 157, 35, 1),
(83, 158, 35, 0),
(84, 159, 35, 0),
(85, 160, 35, 0),
(86, 161, 36, 1),
(87, 162, 36, 0),
(88, 163, 36, 0),
(89, 164, 37, 1),
(90, 165, 37, 0),
(91, 166, 38, 1),
(92, 167, 38, 0),
(93, 168, 38, 0),
(94, 169, 38, 0),
(95, 170, 39, 1),
(96, 171, 39, 0),
(97, 172, 39, 0),
(98, 173, 40, 1),
(99, 174, 40, 0),
(100, 175, 40, 0),
(101, 176, 41, 1),
(102, 177, 41, 0),
(103, 178, 41, 0),
(104, 179, 41, 0),
(105, 180, 41, 0),
(106, 181, 42, 1),
(107, 182, 43, 1),
(108, 183, 43, 0),
(109, 184, 43, 0),
(110, 185, 44, 1),
(111, 186, 44, 0),
(112, 187, 45, 1),
(113, 188, 46, 1),
(114, 189, 46, 0),
(115, 190, 47, 1),
(116, 191, 48, 1),
(117, 192, 48, 0),
(118, 193, 48, 0),
(119, 194, 49, 1),
(120, 195, 49, 0),
(121, 196, 50, 1),
(122, 197, 50, 0),
(123, 198, 51, 1),
(124, 199, 51, 0),
(125, 200, 51, 0),
(126, 201, 52, 1),
(127, 202, 52, 0),
(128, 203, 52, 0),
(129, 204, 53, 1),
(130, 205, 53, 0),
(131, 206, 54, 1),
(132, 207, 54, 0),
(133, 208, 55, 1),
(134, 209, 55, 0),
(135, 210, 55, 0),
(136, 211, 56, 1),
(137, 212, 56, 0),
(138, 213, 57, 1),
(139, 214, 57, 0),
(140, 215, 57, 0),
(141, 216, 58, 1),
(142, 217, 58, 0),
(143, 218, 59, 1),
(144, 219, 59, 0),
(145, 220, 60, 1),
(146, 221, 60, 0),
(147, 222, 60, 0),
(148, 223, 61, 1),
(149, 224, 61, 0),
(150, 225, 62, 1),
(151, 226, 62, 0),
(152, 227, 63, 1),
(153, 228, 63, 0),
(154, 229, 64, 1),
(155, 230, 64, 0),
(156, 231, 64, 0),
(157, 232, 64, 0),
(158, 233, 65, 1),
(159, 234, 65, 0),
(160, 235, 65, 0),
(161, 236, 65, 0),
(162, 237, 65, 0),
(163, 238, 66, 1),
(164, 239, 66, 0),
(165, 240, 67, 1),
(166, 241, 68, 1),
(167, 242, 68, 0),
(168, 243, 68, 0),
(169, 244, 68, 0),
(170, 245, 69, 1),
(171, 246, 69, 0),
(173, 248, 71, 1),
(175, 250, 72, 1),
(176, 251, 72, 0),
(177, 252, 72, 0),
(178, 253, 73, 1),
(179, 254, 73, 0),
(180, 255, 73, 0),
(181, 256, 73, 0),
(182, 257, 74, 1),
(183, 258, 74, 0),
(184, 259, 74, 0),
(185, 260, 75, 1),
(186, 261, 75, 0),
(187, 262, 75, 0),
(188, 263, 75, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ec_product_variation_items`
--

CREATE TABLE `ec_product_variation_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `attribute_id` bigint(20) UNSIGNED NOT NULL,
  `variation_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_product_views`
--

CREATE TABLE `ec_product_views` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `views` int(11) NOT NULL DEFAULT 1,
  `date` date NOT NULL DEFAULT '2025-10-21'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_product_views`
--

INSERT INTO `ec_product_views` (`id`, `product_id`, `views`, `date`) VALUES
(1, 73, 1, '2025-10-25'),
(2, 75, 1, '2025-10-25'),
(3, 275, 2, '2025-10-27'),
(5, 12, 1, '2025-10-27'),
(6, 275, 2, '2025-10-28'),
(7, 12, 3, '2025-10-28'),
(9, 274, 2, '2025-10-28'),
(13, 275, 1, '2025-10-29'),
(14, 275, 2, '2025-10-30'),
(18, 275, 1, '2025-11-01'),
(19, 274, 1, '2025-11-01'),
(25, 12, 1, '2025-11-06'),
(26, 275, 1, '2025-11-07'),
(33, 12, 1, '2025-11-08'),
(36, 275, 1, '2025-11-10'),
(38, 274, 1, '2025-11-10'),
(40, 274, 1, '2025-11-12'),
(44, 361, 1, '2025-11-13'),
(46, 367, 1, '2025-11-13'),
(47, 368, 1, '2025-11-13'),
(48, 356, 1, '2025-11-13'),
(49, 355, 1, '2025-11-13'),
(53, 374, 1, '2025-11-13'),
(54, 373, 1, '2025-11-13'),
(56, 357, 1, '2025-11-13'),
(57, 373, 2, '2025-11-15'),
(58, 368, 1, '2025-11-15'),
(60, 374, 1, '2025-11-17'),
(61, 368, 1, '2025-11-17'),
(62, 12, 1, '2025-11-18'),
(63, 373, 2, '2025-11-19'),
(64, 367, 2, '2025-11-19'),
(65, 374, 5, '2025-11-19'),
(68, 357, 2, '2025-11-19'),
(69, 368, 4, '2025-11-19'),
(75, 361, 1, '2025-11-19'),
(79, 275, 1, '2025-11-19'),
(80, 274, 1, '2025-11-19'),
(81, 354, 2, '2025-11-20'),
(82, 353, 2, '2025-11-20'),
(83, 357, 2, '2025-11-20'),
(84, 352, 2, '2025-11-20'),
(85, 355, 2, '2025-11-20'),
(86, 374, 4, '2025-11-20'),
(87, 356, 2, '2025-11-20'),
(88, 368, 3, '2025-11-20'),
(89, 349, 2, '2025-11-20'),
(90, 351, 2, '2025-11-20'),
(91, 367, 2, '2025-11-20'),
(92, 361, 1, '2025-11-20'),
(93, 373, 2, '2025-11-20'),
(94, 275, 1, '2025-11-20'),
(95, 274, 1, '2025-11-20'),
(109, 350, 1, '2025-11-20'),
(112, 361, 2, '2025-11-21'),
(113, 368, 1, '2025-11-21'),
(114, 373, 1, '2025-11-21'),
(115, 374, 1, '2025-11-21'),
(116, 367, 1, '2025-11-21'),
(117, 350, 1, '2025-11-21'),
(119, 351, 1, '2025-11-21'),
(120, 352, 1, '2025-11-21'),
(121, 349, 1, '2025-11-21'),
(122, 356, 1, '2025-11-21'),
(123, 274, 1, '2025-11-21'),
(124, 357, 1, '2025-11-21'),
(125, 353, 1, '2025-11-21'),
(126, 355, 1, '2025-11-21'),
(127, 354, 1, '2025-11-21'),
(128, 275, 1, '2025-11-21'),
(129, 374, 1, '2025-11-24'),
(130, 374, 1, '2025-11-25'),
(131, 374, 4, '2025-11-26'),
(135, 374, 1, '2025-11-27'),
(136, 375, 1, '2025-11-28'),
(137, 376, 1, '2025-11-28'),
(138, 377, 1, '2025-11-28'),
(139, 378, 1, '2025-11-28'),
(140, 377, 1, '2025-11-29'),
(141, 378, 1, '2025-11-29'),
(142, 376, 1, '2025-11-29'),
(143, 375, 2, '2025-11-30'),
(144, 354, 1, '2025-11-30'),
(146, 356, 1, '2025-12-01'),
(147, 374, 1, '2025-12-02'),
(148, 373, 1, '2025-12-02'),
(149, 367, 1, '2025-12-02'),
(150, 368, 1, '2025-12-02'),
(151, 361, 1, '2025-12-02'),
(152, 12, 1, '2025-12-02'),
(153, 357, 1, '2025-12-02'),
(154, 378, 1, '2025-12-02'),
(155, 351, 2, '2025-12-03'),
(156, 354, 1, '2025-12-03'),
(157, 353, 1, '2025-12-03'),
(158, 352, 1, '2025-12-03'),
(159, 275, 1, '2025-12-03'),
(160, 274, 1, '2025-12-03'),
(161, 350, 1, '2025-12-03'),
(162, 356, 1, '2025-12-03'),
(163, 355, 1, '2025-12-03'),
(165, 377, 1, '2025-12-07'),
(166, 376, 1, '2025-12-07'),
(167, 378, 1, '2025-12-07'),
(168, 375, 1, '2025-12-07'),
(169, 374, 1, '2025-12-08'),
(170, 373, 1, '2025-12-08'),
(171, 368, 1, '2025-12-08'),
(172, 361, 1, '2025-12-08'),
(173, 12, 1, '2025-12-10'),
(174, 374, 2, '2025-12-10'),
(176, 357, 1, '2025-12-10'),
(177, 354, 1, '2025-12-11'),
(178, 353, 1, '2025-12-11'),
(179, 352, 1, '2025-12-11'),
(180, 349, 1, '2025-12-11'),
(181, 350, 1, '2025-12-11'),
(182, 275, 1, '2025-12-11'),
(183, 356, 1, '2025-12-11'),
(184, 355, 1, '2025-12-11'),
(185, 351, 1, '2025-12-11'),
(186, 377, 1, '2025-12-12'),
(187, 378, 1, '2025-12-12'),
(188, 353, 1, '2025-12-12'),
(189, 375, 1, '2025-12-12'),
(190, 374, 1, '2025-12-13'),
(191, 373, 1, '2025-12-13'),
(192, 367, 1, '2025-12-13'),
(193, 361, 1, '2025-12-13'),
(194, 12, 1, '2025-12-15'),
(195, 357, 1, '2025-12-15'),
(196, 354, 2, '2025-12-16'),
(197, 353, 1, '2025-12-16'),
(198, 352, 1, '2025-12-16'),
(200, 349, 1, '2025-12-16'),
(201, 350, 1, '2025-12-16'),
(202, 275, 1, '2025-12-17'),
(203, 274, 1, '2025-12-17'),
(204, 355, 1, '2025-12-17'),
(205, 377, 1, '2025-12-17'),
(206, 356, 1, '2025-12-17'),
(207, 376, 2, '2025-12-17'),
(208, 351, 1, '2025-12-17'),
(209, 378, 2, '2025-12-17'),
(212, 375, 1, '2025-12-19'),
(213, 378, 1, '2025-12-19'),
(214, 374, 1, '2025-12-19'),
(215, 373, 1, '2025-12-19'),
(216, 367, 1, '2025-12-19'),
(217, 361, 1, '2025-12-20'),
(218, 12, 1, '2025-12-22'),
(219, 354, 1, '2025-12-23'),
(220, 352, 1, '2025-12-23'),
(221, 349, 1, '2025-12-24');

-- --------------------------------------------------------

--
-- Table structure for table `ec_product_with_attribute_set`
--

CREATE TABLE `ec_product_with_attribute_set` (
  `attribute_set_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `order` tinyint(3) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_product_with_attribute_set`
--

INSERT INTO `ec_product_with_attribute_set` (`attribute_set_id`, `product_id`, `order`) VALUES
(1, 1, 0),
(2, 1, 0),
(1, 2, 0),
(2, 2, 0),
(1, 3, 0),
(2, 3, 0),
(1, 4, 0),
(2, 4, 0),
(1, 5, 0),
(2, 5, 0),
(1, 6, 0),
(2, 6, 0),
(1, 7, 0),
(2, 7, 0),
(1, 8, 0),
(2, 8, 0),
(1, 9, 0),
(2, 9, 0),
(1, 10, 0),
(2, 10, 0),
(1, 11, 0),
(2, 11, 0),
(1, 12, 0),
(2, 12, 0),
(1, 13, 0),
(2, 13, 0),
(1, 14, 0),
(2, 14, 0),
(1, 15, 0),
(2, 15, 0),
(1, 16, 0),
(2, 16, 0),
(1, 17, 0),
(2, 17, 0),
(1, 18, 0),
(2, 18, 0),
(1, 19, 0),
(2, 19, 0),
(1, 20, 0),
(2, 20, 0),
(1, 21, 0),
(2, 21, 0),
(1, 22, 0),
(2, 22, 0),
(1, 23, 0),
(2, 23, 0),
(1, 24, 0),
(2, 24, 0),
(1, 25, 0),
(2, 25, 0),
(1, 26, 0),
(2, 26, 0),
(1, 27, 0),
(2, 27, 0),
(1, 28, 0),
(2, 28, 0),
(1, 29, 0),
(2, 29, 0),
(1, 30, 0),
(2, 30, 0),
(1, 31, 0),
(2, 31, 0),
(1, 32, 0),
(2, 32, 0),
(1, 33, 0),
(2, 33, 0),
(1, 34, 0),
(2, 34, 0),
(1, 35, 0),
(2, 35, 0),
(1, 36, 0),
(2, 36, 0),
(1, 37, 0),
(2, 37, 0),
(1, 38, 0),
(2, 38, 0),
(1, 39, 0),
(2, 39, 0),
(1, 40, 0),
(2, 40, 0),
(1, 41, 0),
(2, 41, 0),
(1, 42, 0),
(2, 42, 0),
(1, 43, 0),
(2, 43, 0),
(1, 44, 0),
(2, 44, 0),
(1, 45, 0),
(2, 45, 0),
(1, 46, 0),
(2, 46, 0),
(1, 47, 0),
(2, 47, 0),
(1, 48, 0),
(2, 48, 0),
(1, 49, 0),
(2, 49, 0),
(1, 50, 0),
(2, 50, 0),
(1, 51, 0),
(2, 51, 0),
(1, 52, 0),
(2, 52, 0),
(1, 53, 0),
(2, 53, 0),
(1, 54, 0),
(2, 54, 0),
(1, 55, 0),
(2, 55, 0),
(1, 56, 0),
(2, 56, 0),
(1, 57, 0),
(2, 57, 0),
(1, 58, 0),
(2, 58, 0),
(1, 59, 0),
(2, 59, 0),
(1, 60, 0),
(2, 60, 0),
(1, 61, 0),
(2, 61, 0),
(1, 62, 0),
(2, 62, 0),
(1, 63, 0),
(2, 63, 0),
(1, 64, 0),
(2, 64, 0),
(1, 65, 0),
(2, 65, 0),
(1, 66, 0),
(2, 66, 0),
(1, 67, 0),
(2, 67, 0),
(1, 68, 0),
(2, 68, 0),
(1, 69, 0),
(2, 69, 0),
(1, 70, 0),
(2, 70, 0),
(1, 71, 0),
(2, 71, 0),
(1, 72, 0),
(2, 72, 0),
(1, 73, 0),
(2, 73, 0),
(1, 74, 0),
(2, 74, 0),
(1, 75, 0),
(2, 75, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ec_reviews`
--

CREATE TABLE `ec_reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` bigint(20) UNSIGNED DEFAULT NULL,
  `customer_name` varchar(191) DEFAULT NULL,
  `customer_email` varchar(191) DEFAULT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `star` double NOT NULL,
  `comment` text NOT NULL,
  `status` varchar(60) NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `images` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_review_replies`
--

CREATE TABLE `ec_review_replies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `review_id` bigint(20) UNSIGNED NOT NULL,
  `message` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_shared_wishlists`
--

CREATE TABLE `ec_shared_wishlists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(191) NOT NULL,
  `product_ids` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_shared_wishlists`
--

INSERT INTO `ec_shared_wishlists` (`id`, `code`, `product_ids`, `created_at`, `updated_at`) VALUES
(1, 'ukPtGxJM', '[274]', '2025-10-29 06:36:24', '2025-10-29 07:00:03'),
(2, 'qm9qxTzd', '[367,12,373]', '2025-11-17 07:05:26', '2025-11-17 07:06:22');

-- --------------------------------------------------------

--
-- Table structure for table `ec_shipments`
--

CREATE TABLE `ec_shipments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `weight` double DEFAULT 0,
  `shipment_id` varchar(120) DEFAULT NULL,
  `rate_id` varchar(120) DEFAULT NULL,
  `note` text DEFAULT NULL,
  `status` varchar(120) NOT NULL DEFAULT 'pending',
  `cod_amount` decimal(15,2) DEFAULT 0.00,
  `cod_status` varchar(60) NOT NULL DEFAULT 'pending',
  `cross_checking_status` varchar(60) NOT NULL DEFAULT 'pending',
  `price` decimal(15,2) DEFAULT 0.00,
  `store_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `tracking_id` varchar(191) DEFAULT NULL,
  `shipping_company_name` varchar(191) DEFAULT NULL,
  `tracking_link` varchar(191) DEFAULT NULL,
  `estimate_date_shipped` datetime DEFAULT NULL,
  `date_shipped` datetime DEFAULT NULL,
  `customer_delivered_confirmed_at` timestamp NULL DEFAULT NULL,
  `label_url` text DEFAULT NULL,
  `metadata` mediumtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_shipments`
--

INSERT INTO `ec_shipments` (`id`, `order_id`, `user_id`, `weight`, `shipment_id`, `rate_id`, `note`, `status`, `cod_amount`, `cod_status`, `cross_checking_status`, `price`, `store_id`, `created_at`, `updated_at`, `tracking_id`, `shipping_company_name`, `tracking_link`, `estimate_date_shipped`, `date_shipped`, `customer_delivered_confirmed_at`, `label_url`, `metadata`) VALUES
(3, 4, 0, 0.01, '', '', NULL, 'pending', 0.00, 'pending', 'pending', 0.00, NULL, '2025-11-15 12:51:48', '2025-11-15 12:51:48', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(5, 7, 0, 0.01, '', '', NULL, 'pending', 0.00, 'pending', 'pending', 0.00, NULL, '2025-12-17 11:46:59', '2025-12-17 11:46:59', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ec_shipment_histories`
--

CREATE TABLE `ec_shipment_histories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `action` varchar(120) NOT NULL,
  `description` varchar(400) DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `shipment_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_type` varchar(191) NOT NULL DEFAULT 'Botble\\ACL\\Models\\User'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_shipping`
--

CREATE TABLE `ec_shipping` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) DEFAULT NULL,
  `country` varchar(120) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_shipping`
--

INSERT INTO `ec_shipping` (`id`, `title`, `country`, `created_at`, `updated_at`) VALUES
(1, 'All', NULL, '2025-10-20 17:06:01', '2025-10-20 17:06:01');

-- --------------------------------------------------------

--
-- Table structure for table `ec_shipping_rules`
--

CREATE TABLE `ec_shipping_rules` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(120) NOT NULL,
  `shipping_id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(24) DEFAULT 'based_on_price',
  `from` decimal(15,2) DEFAULT 0.00,
  `to` decimal(15,2) DEFAULT 0.00,
  `price` decimal(15,2) DEFAULT 0.00,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_shipping_rules`
--

INSERT INTO `ec_shipping_rules` (`id`, `name`, `shipping_id`, `type`, `from`, `to`, `price`, `created_at`, `updated_at`) VALUES
(1, 'Free delivery', 1, 'based_on_price', 1000.00, NULL, 0.00, '2025-10-20 17:06:01', '2025-10-20 17:06:01'),
(2, 'Flat Rate', 1, 'based_on_price', 0.00, NULL, 20.00, '2025-10-20 17:06:01', '2025-10-20 17:06:01'),
(3, 'Local Pickup', 1, 'based_on_price', 0.00, NULL, 0.00, '2025-10-20 17:06:01', '2025-10-20 17:06:01');

-- --------------------------------------------------------

--
-- Table structure for table `ec_shipping_rule_items`
--

CREATE TABLE `ec_shipping_rule_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `shipping_rule_id` bigint(20) UNSIGNED NOT NULL,
  `country` varchar(120) DEFAULT NULL,
  `state` varchar(120) DEFAULT NULL,
  `city` varchar(120) DEFAULT NULL,
  `zip_code` varchar(20) DEFAULT NULL,
  `adjustment_price` decimal(15,2) DEFAULT 0.00,
  `is_enabled` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_specification_attributes`
--

CREATE TABLE `ec_specification_attributes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `group_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `type` varchar(20) NOT NULL,
  `options` text DEFAULT NULL,
  `default_value` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `author_type` varchar(191) DEFAULT NULL,
  `author_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_specification_attributes`
--

INSERT INTO `ec_specification_attributes` (`id`, `group_id`, `name`, `type`, `options`, `default_value`, `created_at`, `updated_at`, `author_type`, `author_id`) VALUES
(1, 1, 'Height', 'text', NULL, NULL, '2025-10-20 17:06:32', '2025-10-20 17:06:32', NULL, NULL),
(2, 1, 'Width', 'text', NULL, NULL, '2025-10-20 17:06:32', '2025-10-20 17:06:32', NULL, NULL),
(3, 1, 'Weight', 'text', NULL, NULL, '2025-10-20 17:06:32', '2025-10-20 17:06:32', NULL, NULL),
(4, 2, 'Power', 'text', NULL, NULL, '2025-10-20 17:06:32', '2025-10-20 17:06:32', NULL, NULL),
(5, 2, 'Speed', 'text', NULL, NULL, '2025-10-20 17:06:32', '2025-10-20 17:06:32', NULL, NULL),
(6, 3, 'Battery Life', 'text', NULL, NULL, '2025-10-20 17:06:32', '2025-10-20 17:06:32', NULL, NULL),
(7, 4, 'Screen Size', 'text', NULL, NULL, '2025-10-20 17:06:32', '2025-10-20 17:06:32', NULL, NULL),
(8, 4, 'Resolution', 'select', '[\"1920x1080\",\"2560x1440\",\"3840x2160\"]', NULL, '2025-10-20 17:06:32', '2025-10-20 17:06:32', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ec_specification_attributes_translations`
--

CREATE TABLE `ec_specification_attributes_translations` (
  `lang_code` varchar(20) NOT NULL,
  `ec_specification_attributes_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) DEFAULT NULL,
  `options` text DEFAULT NULL,
  `default_value` varchar(191) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_specification_groups`
--

CREATE TABLE `ec_specification_groups` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `description` varchar(400) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `author_type` varchar(191) DEFAULT NULL,
  `author_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_specification_groups`
--

INSERT INTO `ec_specification_groups` (`id`, `name`, `description`, `created_at`, `updated_at`, `author_type`, `author_id`) VALUES
(1, 'Dimensions', NULL, '2025-10-20 17:06:32', '2025-10-20 17:06:32', NULL, NULL),
(2, 'Performance', NULL, '2025-10-20 17:06:32', '2025-10-20 17:06:32', NULL, NULL),
(3, 'Battery', NULL, '2025-10-20 17:06:32', '2025-10-20 17:06:32', NULL, NULL),
(4, 'Display', NULL, '2025-10-20 17:06:32', '2025-10-20 17:06:32', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ec_specification_groups_translations`
--

CREATE TABLE `ec_specification_groups_translations` (
  `lang_code` varchar(20) NOT NULL,
  `ec_specification_groups_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) DEFAULT NULL,
  `description` varchar(400) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_specification_tables`
--

CREATE TABLE `ec_specification_tables` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `description` varchar(400) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `author_type` varchar(191) DEFAULT NULL,
  `author_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_specification_tables`
--

INSERT INTO `ec_specification_tables` (`id`, `name`, `description`, `created_at`, `updated_at`, `author_type`, `author_id`) VALUES
(1, 'General Specification', NULL, '2025-10-20 17:06:32', '2025-10-20 17:06:32', NULL, NULL),
(2, 'Technical Specification', NULL, '2025-10-20 17:06:32', '2025-10-20 17:06:32', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ec_specification_tables_translations`
--

CREATE TABLE `ec_specification_tables_translations` (
  `lang_code` varchar(20) NOT NULL,
  `ec_specification_tables_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) DEFAULT NULL,
  `description` varchar(400) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_specification_table_group`
--

CREATE TABLE `ec_specification_table_group` (
  `table_id` bigint(20) UNSIGNED NOT NULL,
  `group_id` bigint(20) UNSIGNED NOT NULL,
  `order` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_specification_table_group`
--

INSERT INTO `ec_specification_table_group` (`table_id`, `group_id`, `order`) VALUES
(1, 1, 0),
(1, 2, 0),
(2, 3, 0),
(2, 4, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ec_store_locators`
--

CREATE TABLE `ec_store_locators` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(60) NOT NULL,
  `email` varchar(60) DEFAULT NULL,
  `phone` varchar(20) NOT NULL,
  `address` varchar(191) NOT NULL,
  `country` varchar(120) DEFAULT NULL,
  `state` varchar(120) DEFAULT NULL,
  `city` varchar(120) DEFAULT NULL,
  `is_primary` tinyint(1) DEFAULT 0,
  `is_shipping_location` tinyint(1) DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `zip_code` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_taxes`
--

CREATE TABLE `ec_taxes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) DEFAULT NULL,
  `percentage` float DEFAULT NULL,
  `priority` int(11) DEFAULT NULL,
  `status` varchar(60) NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_taxes`
--

INSERT INTO `ec_taxes` (`id`, `title`, `percentage`, `priority`, `status`, `created_at`, `updated_at`) VALUES
(1, 'VAT', 10, 1, 'published', '2025-10-20 17:06:03', '2025-10-20 17:06:03'),
(2, 'None', 0, 2, 'published', '2025-10-20 17:06:03', '2025-10-20 17:06:03'),
(3, 'Import Tax', 15, 3, 'published', '2025-10-20 17:06:03', '2025-10-20 17:06:03');

-- --------------------------------------------------------

--
-- Table structure for table `ec_taxes_translations`
--

CREATE TABLE `ec_taxes_translations` (
  `lang_code` varchar(191) NOT NULL,
  `ec_taxes_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_tax_products`
--

CREATE TABLE `ec_tax_products` (
  `tax_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_tax_products`
--

INSERT INTO `ec_tax_products` (`tax_id`, `product_id`) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(1, 5),
(1, 6),
(1, 7),
(1, 8),
(1, 9),
(1, 10),
(1, 11),
(1, 12),
(1, 13),
(1, 14),
(1, 15),
(1, 16),
(1, 17),
(1, 18),
(1, 19),
(1, 20),
(1, 21),
(1, 22),
(1, 23),
(1, 24),
(1, 25),
(1, 26),
(1, 27),
(1, 28),
(1, 29),
(1, 30),
(1, 31),
(1, 32),
(1, 33),
(1, 34),
(1, 35),
(1, 36),
(1, 37),
(1, 38),
(1, 39),
(1, 40),
(1, 41),
(1, 42),
(1, 43),
(1, 44),
(1, 45),
(1, 46),
(1, 47),
(1, 48),
(1, 49),
(1, 50),
(1, 51),
(1, 52),
(1, 53),
(1, 54),
(1, 55),
(1, 56),
(1, 57),
(1, 58),
(1, 59),
(1, 60),
(1, 61),
(1, 62),
(1, 63),
(1, 64),
(1, 65),
(1, 66),
(1, 67),
(1, 68),
(1, 69),
(1, 70),
(1, 71),
(1, 72),
(1, 73),
(1, 74),
(1, 75),
(1, 349),
(1, 350),
(1, 351),
(1, 352),
(1, 353),
(1, 354),
(1, 355),
(1, 356),
(1, 357),
(1, 361),
(1, 367),
(1, 368),
(1, 373),
(1, 374);

-- --------------------------------------------------------

--
-- Table structure for table `ec_tax_rules`
--

CREATE TABLE `ec_tax_rules` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tax_id` bigint(20) UNSIGNED NOT NULL,
  `country` varchar(120) DEFAULT NULL,
  `state` varchar(120) DEFAULT NULL,
  `city` varchar(120) DEFAULT NULL,
  `zip_code` varchar(20) DEFAULT NULL,
  `priority` int(11) DEFAULT NULL,
  `is_enabled` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `percentage` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_wish_lists`
--

CREATE TABLE `ec_wish_lists` (
  `customer_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(191) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `faqs`
--

CREATE TABLE `faqs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `question` text NOT NULL,
  `answer` text NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `status` varchar(60) NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `faqs`
--

INSERT INTO `faqs` (`id`, `question`, `answer`, `category_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 'How do I place an order?', 'To place an order, navigate to the product page, select the desired options, and click the \"Add to Cart\" button.', 2, 'published', '2025-10-20 17:06:03', '2025-10-20 17:06:03'),
(2, 'What are the shipping options?', 'We offer standard and expedited shipping options. Shipping costs and delivery times vary based on your location and chosen shipping method.', 1, 'published', '2025-10-20 17:06:03', '2025-10-20 17:06:03'),
(3, 'How can I return a product?', 'If you are not satisfied with your purchase, you can initiate a return within 30 days of receiving the product. Contact our customer service for further instructions.', 2, 'published', '2025-10-20 17:06:03', '2025-10-20 17:06:03'),
(4, 'What payment methods do you accept?', 'We accept major credit cards, PayPal, and other secure payment methods.', 2, 'published', '2025-10-20 17:06:03', '2025-10-20 17:06:03'),
(5, 'How can I update my account information?', 'Log in to your account and go to the \"Account Settings\" page to update your information, including your password and shipping address.', 3, 'published', '2025-10-20 17:06:03', '2025-10-20 17:06:03'),
(6, 'Are there any ongoing promotions or discounts?', 'Check our \"Promotions\" page for information on current discounts, special offers, and ongoing promotions.', 2, 'published', '2025-10-20 17:06:03', '2025-10-20 17:06:03'),
(7, 'Is the product in stock?', 'Product availability is indicated on each product page. If a product is out of stock, you may choose to be notified when it becomes available.', 1, 'published', '2025-10-20 17:06:03', '2025-10-20 17:06:03'),
(8, 'How is my personal information secured?', 'We take the security and privacy of your information seriously. Our website uses encryption technology to protect your personal data.', 3, 'published', '2025-10-20 17:06:03', '2025-10-20 17:06:03'),
(9, 'How do I get technical support?', 'For technical issues or assistance, contact our customer support team through the \"Contact Us\" page, and we will help you resolve any problems.', 1, 'published', '2025-10-20 17:06:03', '2025-10-20 17:06:03'),
(10, 'Do you offer international shipping?', 'Yes, we offer international shipping to many countries. Shipping costs and delivery times vary based on the destination.', 2, 'published', '2025-10-20 17:06:03', '2025-10-20 17:06:03'),
(11, 'Can I purchase a gift card?', 'Yes, we offer gift cards of varying denominations. Gift cards can be purchased on our website and make for a great gift for friends and family.', 2, 'published', '2025-10-20 17:06:03', '2025-10-20 17:06:03'),
(12, 'What is the warranty on your products?', 'Our products come with a standard warranty. Check the product documentation or contact our customer service for details on specific product warranties.', 2, 'published', '2025-10-20 17:06:03', '2025-10-20 17:06:03');

-- --------------------------------------------------------

--
-- Table structure for table `faqs_translations`
--

CREATE TABLE `faqs_translations` (
  `lang_code` varchar(20) NOT NULL,
  `faqs_id` bigint(20) UNSIGNED NOT NULL,
  `question` text DEFAULT NULL,
  `answer` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `faq_categories`
--

CREATE TABLE `faq_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(120) NOT NULL,
  `order` tinyint(4) NOT NULL DEFAULT 0,
  `status` varchar(60) NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `description` varchar(400) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `faq_categories`
--

INSERT INTO `faq_categories` (`id`, `name`, `order`, `status`, `created_at`, `updated_at`, `description`) VALUES
(1, 'Ordering Process', 0, 'published', '2025-10-20 17:06:03', '2025-10-20 17:06:03', NULL),
(2, 'Product Returns', 1, 'published', '2025-10-20 17:06:03', '2025-10-20 17:06:03', NULL),
(3, 'Product Availability', 2, 'published', '2025-10-20 17:06:03', '2025-10-20 17:06:03', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `faq_categories_translations`
--

CREATE TABLE `faq_categories_translations` (
  `lang_code` varchar(20) NOT NULL,
  `faq_categories_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(120) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `galleries`
--

CREATE TABLE `galleries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(120) NOT NULL,
  `description` longtext NOT NULL,
  `is_featured` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `order` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `image` varchar(191) DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `status` varchar(60) NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `galleries`
--

INSERT INTO `galleries` (`id`, `name`, `description`, `is_featured`, `order`, `image`, `user_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Perfect', 'Quia ipsa eos placeat fugit sed deserunt. Autem fugit aspernatur architecto quia voluptatem et. Ducimus culpa repellat sint nihil magnam fuga.', 1, 0, 'galleries/1.jpg', 1, 'published', '2025-10-20 17:06:41', '2025-10-20 17:06:41'),
(2, 'New Day', 'Ut quo voluptatem eligendi officia repellat dolorem rerum. Deleniti eum et enim qui quis laudantium autem. Consequatur qui ad in sit in at.', 1, 0, 'galleries/2.jpg', 1, 'published', '2025-10-20 17:06:41', '2025-10-20 17:06:41'),
(3, 'Happy Day', 'Perferendis id omnis molestias incidunt. Quisquam qui fugiat voluptates laboriosam commodi nostrum. Dolorum voluptates magnam molestiae dolorum.', 1, 0, 'galleries/3.jpg', 1, 'published', '2025-10-20 17:06:41', '2025-10-20 17:06:41'),
(4, 'Nature', 'Tempora placeat possimus corporis perspiciatis aliquid. Quas sit repellat ipsam corporis dolorem. Impedit et officiis doloremque et.', 1, 0, 'galleries/4.jpg', 1, 'published', '2025-10-20 17:06:41', '2025-10-20 17:06:41'),
(5, 'Morning', 'Aliquam quis sed aspernatur dicta. At impedit aut cumque dolorem. Exercitationem fugit voluptatem sit voluptatem eligendi corporis nihil.', 1, 0, 'galleries/5.jpg', 1, 'published', '2025-10-20 17:06:41', '2025-10-20 17:06:41'),
(6, 'Photography', 'Praesentium eos officia quos aspernatur. Aspernatur provident facere aut inventore. Fuga sapiente excepturi qui praesentium omnis.', 1, 0, 'galleries/6.jpg', 1, 'published', '2025-10-20 17:06:41', '2025-10-20 17:06:41');

-- --------------------------------------------------------

--
-- Table structure for table `galleries_translations`
--

CREATE TABLE `galleries_translations` (
  `lang_code` varchar(20) NOT NULL,
  `galleries_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) DEFAULT NULL,
  `description` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `gallery_meta`
--

CREATE TABLE `gallery_meta` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `images` text DEFAULT NULL,
  `reference_id` bigint(20) UNSIGNED NOT NULL,
  `reference_type` varchar(120) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gallery_meta`
--

INSERT INTO `gallery_meta` (`id`, `images`, `reference_id`, `reference_type`, `created_at`, `updated_at`) VALUES
(1, '[{\"img\":\"galleries\\/1.jpg\",\"description\":\"Ex reiciendis reprehenderit at qui. Sequi deserunt ratione inventore tenetur modi quia est. Molestiae at quos omnis quia mollitia autem tempore.\"},{\"img\":\"galleries\\/2.jpg\",\"description\":\"Corporis omnis quaerat quas eos sequi. Vel mollitia a sapiente necessitatibus qui. Et voluptas itaque nulla qui.\"},{\"img\":\"galleries\\/3.jpg\",\"description\":\"Debitis fuga ex iure ut omnis accusantium. Cum cumque ab accusantium rem quisquam. Fuga architecto et ut optio.\"},{\"img\":\"galleries\\/4.jpg\",\"description\":\"Ut vero id libero vitae est voluptatem. In molestias quod sapiente et aut.\"},{\"img\":\"galleries\\/5.jpg\",\"description\":\"Dolor perferendis necessitatibus aut enim. Dolorem rerum voluptas ut laboriosam quidem. Cumque consequatur quis sint quisquam.\"},{\"img\":\"galleries\\/6.jpg\",\"description\":\"A adipisci mollitia animi sint modi sed quia qui. Eum dolores cum repellat sit totam rerum. Nobis magnam asperiores et aut.\"}]', 1, 'Botble\\Gallery\\Models\\Gallery', '2025-10-20 17:06:41', '2025-10-20 17:06:41'),
(2, '[{\"img\":\"galleries\\/1.jpg\",\"description\":\"Ex reiciendis reprehenderit at qui. Sequi deserunt ratione inventore tenetur modi quia est. Molestiae at quos omnis quia mollitia autem tempore.\"},{\"img\":\"galleries\\/2.jpg\",\"description\":\"Corporis omnis quaerat quas eos sequi. Vel mollitia a sapiente necessitatibus qui. Et voluptas itaque nulla qui.\"},{\"img\":\"galleries\\/3.jpg\",\"description\":\"Debitis fuga ex iure ut omnis accusantium. Cum cumque ab accusantium rem quisquam. Fuga architecto et ut optio.\"},{\"img\":\"galleries\\/4.jpg\",\"description\":\"Ut vero id libero vitae est voluptatem. In molestias quod sapiente et aut.\"},{\"img\":\"galleries\\/5.jpg\",\"description\":\"Dolor perferendis necessitatibus aut enim. Dolorem rerum voluptas ut laboriosam quidem. Cumque consequatur quis sint quisquam.\"},{\"img\":\"galleries\\/6.jpg\",\"description\":\"A adipisci mollitia animi sint modi sed quia qui. Eum dolores cum repellat sit totam rerum. Nobis magnam asperiores et aut.\"}]', 2, 'Botble\\Gallery\\Models\\Gallery', '2025-10-20 17:06:41', '2025-10-20 17:06:41'),
(3, '[{\"img\":\"galleries\\/1.jpg\",\"description\":\"Ex reiciendis reprehenderit at qui. Sequi deserunt ratione inventore tenetur modi quia est. Molestiae at quos omnis quia mollitia autem tempore.\"},{\"img\":\"galleries\\/2.jpg\",\"description\":\"Corporis omnis quaerat quas eos sequi. Vel mollitia a sapiente necessitatibus qui. Et voluptas itaque nulla qui.\"},{\"img\":\"galleries\\/3.jpg\",\"description\":\"Debitis fuga ex iure ut omnis accusantium. Cum cumque ab accusantium rem quisquam. Fuga architecto et ut optio.\"},{\"img\":\"galleries\\/4.jpg\",\"description\":\"Ut vero id libero vitae est voluptatem. In molestias quod sapiente et aut.\"},{\"img\":\"galleries\\/5.jpg\",\"description\":\"Dolor perferendis necessitatibus aut enim. Dolorem rerum voluptas ut laboriosam quidem. Cumque consequatur quis sint quisquam.\"},{\"img\":\"galleries\\/6.jpg\",\"description\":\"A adipisci mollitia animi sint modi sed quia qui. Eum dolores cum repellat sit totam rerum. Nobis magnam asperiores et aut.\"}]', 3, 'Botble\\Gallery\\Models\\Gallery', '2025-10-20 17:06:41', '2025-10-20 17:06:41'),
(4, '[{\"img\":\"galleries\\/1.jpg\",\"description\":\"Ex reiciendis reprehenderit at qui. Sequi deserunt ratione inventore tenetur modi quia est. Molestiae at quos omnis quia mollitia autem tempore.\"},{\"img\":\"galleries\\/2.jpg\",\"description\":\"Corporis omnis quaerat quas eos sequi. Vel mollitia a sapiente necessitatibus qui. Et voluptas itaque nulla qui.\"},{\"img\":\"galleries\\/3.jpg\",\"description\":\"Debitis fuga ex iure ut omnis accusantium. Cum cumque ab accusantium rem quisquam. Fuga architecto et ut optio.\"},{\"img\":\"galleries\\/4.jpg\",\"description\":\"Ut vero id libero vitae est voluptatem. In molestias quod sapiente et aut.\"},{\"img\":\"galleries\\/5.jpg\",\"description\":\"Dolor perferendis necessitatibus aut enim. Dolorem rerum voluptas ut laboriosam quidem. Cumque consequatur quis sint quisquam.\"},{\"img\":\"galleries\\/6.jpg\",\"description\":\"A adipisci mollitia animi sint modi sed quia qui. Eum dolores cum repellat sit totam rerum. Nobis magnam asperiores et aut.\"}]', 4, 'Botble\\Gallery\\Models\\Gallery', '2025-10-20 17:06:41', '2025-10-20 17:06:41'),
(5, '[{\"img\":\"galleries\\/1.jpg\",\"description\":\"Ex reiciendis reprehenderit at qui. Sequi deserunt ratione inventore tenetur modi quia est. Molestiae at quos omnis quia mollitia autem tempore.\"},{\"img\":\"galleries\\/2.jpg\",\"description\":\"Corporis omnis quaerat quas eos sequi. Vel mollitia a sapiente necessitatibus qui. Et voluptas itaque nulla qui.\"},{\"img\":\"galleries\\/3.jpg\",\"description\":\"Debitis fuga ex iure ut omnis accusantium. Cum cumque ab accusantium rem quisquam. Fuga architecto et ut optio.\"},{\"img\":\"galleries\\/4.jpg\",\"description\":\"Ut vero id libero vitae est voluptatem. In molestias quod sapiente et aut.\"},{\"img\":\"galleries\\/5.jpg\",\"description\":\"Dolor perferendis necessitatibus aut enim. Dolorem rerum voluptas ut laboriosam quidem. Cumque consequatur quis sint quisquam.\"},{\"img\":\"galleries\\/6.jpg\",\"description\":\"A adipisci mollitia animi sint modi sed quia qui. Eum dolores cum repellat sit totam rerum. Nobis magnam asperiores et aut.\"}]', 5, 'Botble\\Gallery\\Models\\Gallery', '2025-10-20 17:06:41', '2025-10-20 17:06:41'),
(6, '[{\"img\":\"galleries\\/1.jpg\",\"description\":\"Ex reiciendis reprehenderit at qui. Sequi deserunt ratione inventore tenetur modi quia est. Molestiae at quos omnis quia mollitia autem tempore.\"},{\"img\":\"galleries\\/2.jpg\",\"description\":\"Corporis omnis quaerat quas eos sequi. Vel mollitia a sapiente necessitatibus qui. Et voluptas itaque nulla qui.\"},{\"img\":\"galleries\\/3.jpg\",\"description\":\"Debitis fuga ex iure ut omnis accusantium. Cum cumque ab accusantium rem quisquam. Fuga architecto et ut optio.\"},{\"img\":\"galleries\\/4.jpg\",\"description\":\"Ut vero id libero vitae est voluptatem. In molestias quod sapiente et aut.\"},{\"img\":\"galleries\\/5.jpg\",\"description\":\"Dolor perferendis necessitatibus aut enim. Dolorem rerum voluptas ut laboriosam quidem. Cumque consequatur quis sint quisquam.\"},{\"img\":\"galleries\\/6.jpg\",\"description\":\"A adipisci mollitia animi sint modi sed quia qui. Eum dolores cum repellat sit totam rerum. Nobis magnam asperiores et aut.\"}]', 6, 'Botble\\Gallery\\Models\\Gallery', '2025-10-20 17:06:41', '2025-10-20 17:06:41'),
(19, NULL, 8, 'Botble\\Page\\Models\\Page', '2025-11-05 12:08:28', '2025-11-05 12:08:28'),
(22, NULL, 15, 'Botble\\Blog\\Models\\Post', '2025-11-10 07:08:32', '2025-11-10 07:08:32'),
(23, NULL, 13, 'Botble\\Blog\\Models\\Post', '2025-11-10 07:09:01', '2025-11-10 07:09:01'),
(24, NULL, 12, 'Botble\\Blog\\Models\\Post', '2025-11-10 07:09:08', '2025-11-10 07:09:08'),
(25, NULL, 4, 'Botble\\Page\\Models\\Page', '2025-11-10 08:50:40', '2025-11-10 08:50:40'),
(26, NULL, 5, 'Botble\\Page\\Models\\Page', '2025-11-10 08:50:49', '2025-11-10 08:50:49'),
(27, NULL, 3, 'Botble\\Page\\Models\\Page', '2025-11-10 08:51:00', '2025-11-10 08:51:00'),
(28, NULL, 2, 'Botble\\Page\\Models\\Page', '2025-11-10 08:51:34', '2025-11-10 08:51:34'),
(29, NULL, 9, 'Botble\\Page\\Models\\Page', '2025-11-10 08:52:01', '2025-11-10 08:52:01'),
(30, NULL, 10, 'Botble\\Page\\Models\\Page', '2025-11-10 08:55:13', '2025-11-10 08:55:13'),
(35, NULL, 12, 'Botble\\Page\\Models\\Page', '2025-11-11 06:27:51', '2025-11-11 06:27:51'),
(38, NULL, 1, 'Botble\\Page\\Models\\Page', '2025-11-18 12:04:02', '2025-11-18 12:04:02');

-- --------------------------------------------------------

--
-- Table structure for table `gallery_meta_translations`
--

CREATE TABLE `gallery_meta_translations` (
  `lang_code` varchar(20) NOT NULL,
  `gallery_meta_id` bigint(20) UNSIGNED NOT NULL,
  `images` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(191) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `lang_id` bigint(20) UNSIGNED NOT NULL,
  `lang_name` varchar(120) NOT NULL,
  `lang_locale` varchar(20) NOT NULL,
  `lang_code` varchar(20) NOT NULL,
  `lang_flag` varchar(20) DEFAULT NULL,
  `lang_is_default` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `lang_order` int(11) NOT NULL DEFAULT 0,
  `lang_is_rtl` tinyint(3) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`lang_id`, `lang_name`, `lang_locale`, `lang_code`, `lang_flag`, `lang_is_default`, `lang_order`, `lang_is_rtl`) VALUES
(1, 'English', 'en', 'en_US', 'us', 1, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `language_meta`
--

CREATE TABLE `language_meta` (
  `lang_meta_id` bigint(20) UNSIGNED NOT NULL,
  `lang_meta_code` varchar(20) DEFAULT NULL,
  `lang_meta_origin` varchar(32) NOT NULL,
  `reference_id` bigint(20) UNSIGNED NOT NULL,
  `reference_type` varchar(120) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `language_meta`
--

INSERT INTO `language_meta` (`lang_meta_id`, `lang_meta_code`, `lang_meta_origin`, `reference_id`, `reference_type`) VALUES
(1, 'en_US', 'd8e1c61b279443a6579aeb032146a1b1', 1, 'Botble\\SimpleSlider\\Models\\SimpleSlider'),
(2, 'en_US', '87c444ea893e6ea4d008b0473666d9b8', 2, 'Botble\\SimpleSlider\\Models\\SimpleSlider'),
(3, 'en_US', '88ac6166da45b0926c63b342289351dc', 3, 'Botble\\SimpleSlider\\Models\\SimpleSlider'),
(4, 'en_US', 'cd371da3c114879c33fa9f994bc7ebfe', 4, 'Botble\\SimpleSlider\\Models\\SimpleSlider'),
(5, 'en_US', '2da2e61e4c79fb11f173658becc2c665', 5, 'Botble\\SimpleSlider\\Models\\SimpleSlider'),
(6, 'en_US', '64feb11dcb5fdd73787f4306b7be51ef', 1, 'Botble\\Menu\\Models\\MenuLocation'),
(7, 'en_US', 'd4ce996665060c39d15f02b76e47640a', 1, 'Botble\\Menu\\Models\\Menu'),
(8, 'en_US', 'ab7268d87aaad93b54f828b04a990b1a', 2, 'Botble\\Menu\\Models\\MenuLocation'),
(9, 'en_US', '2351f2f7a5f887f866b67ad3a8c5819a', 2, 'Botble\\Menu\\Models\\Menu'),
(10, 'en_US', '5f4f363437ea8a5325f20dac05150ab9', 3, 'Botble\\Menu\\Models\\MenuLocation'),
(11, 'en_US', 'e61375055a044e8706458605ad9142a8', 3, 'Botble\\Menu\\Models\\Menu'),
(12, 'en_US', '168627e2b424eed3b7c3a00922b28467', 4, 'Botble\\Menu\\Models\\MenuLocation'),
(13, 'en_US', '9ac1157855f2d239a0bee040018471a1', 4, 'Botble\\Menu\\Models\\Menu'),
(14, 'en_US', '0a69cdf3f5c2f26f6d5034e4e368845b', 1, 'Botble\\Menu\\Models\\MenuNode'),
(15, 'en_US', '0edc2ed386ed7f32a3c3d6180a9e10bd', 2, 'Botble\\Menu\\Models\\MenuNode'),
(16, 'en_US', 'fa8298a0f15b1baaebe8cd393c454d35', 7, 'Botble\\Menu\\Models\\MenuNode'),
(17, 'en_US', '42036699bbaad63ea6a4756257bb1ec4', 14, 'Botble\\Menu\\Models\\MenuNode'),
(18, 'en_US', '4fd6792d0160e117dca88b8cdf9c687f', 15, 'Botble\\Menu\\Models\\MenuNode'),
(19, 'en_US', '370421cce88b8b4c4a7a9b7ee2402bef', 16, 'Botble\\Menu\\Models\\MenuNode'),
(20, 'en_US', 'def85f640d35518ff7a7f4e5ee0a26c3', 17, 'Botble\\Menu\\Models\\MenuNode'),
(21, 'en_US', '25838bb2b0f91ff717c674243f3e41f0', 18, 'Botble\\Menu\\Models\\MenuNode'),
(22, 'en_US', 'c2f71408bbbf6c698bc7cb95534ad764', 19, 'Botble\\Menu\\Models\\MenuNode'),
(23, 'en_US', '1c2573a2aacfbf791087da51f2aa7fba', 20, 'Botble\\Menu\\Models\\MenuNode'),
(24, 'en_US', '5ef574d3e05ae15ebbe47a187582096a', 21, 'Botble\\Menu\\Models\\MenuNode'),
(25, 'en_US', 'aa6549653a7fd91c0a824601c56a4bed', 22, 'Botble\\Menu\\Models\\MenuNode'),
(26, 'en_US', 'b290a854290822fabc2332cb3531c8b1', 23, 'Botble\\Menu\\Models\\MenuNode'),
(27, 'en_US', '9cd4fc601f5ab1fbdf6eae8ad44a4c9f', 24, 'Botble\\Menu\\Models\\MenuNode'),
(28, 'en_US', 'fd40626da260a30d77c265578113eccc', 40, 'Botble\\Menu\\Models\\MenuNode'),
(29, 'en_US', 'abcc6abe467401a88d3c04d058705544', 42, 'Botble\\Menu\\Models\\MenuNode'),
(30, 'en_US', 'f94e0d8bba441117d3e6c9ad5a2a33c1', 41, 'Botble\\Menu\\Models\\MenuNode'),
(31, 'en_US', '241d68699692b1f69766a23ef9a8ae14', 43, 'Botble\\Menu\\Models\\MenuNode'),
(32, 'en_US', 'bc39de98172db80ae2b895007951344d', 44, 'Botble\\Menu\\Models\\MenuNode'),
(33, 'en_US', '2debb974ffde4ccb488270ad32ec0248', 45, 'Botble\\Menu\\Models\\MenuNode');

-- --------------------------------------------------------

--
-- Table structure for table `media_files`
--

CREATE TABLE `media_files` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `alt` varchar(191) DEFAULT NULL,
  `folder_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `mime_type` varchar(120) NOT NULL,
  `size` int(11) NOT NULL,
  `url` varchar(191) NOT NULL,
  `options` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `visibility` varchar(191) NOT NULL DEFAULT 'public'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `media_files`
--

INSERT INTO `media_files` (`id`, `user_id`, `name`, `alt`, `folder_id`, `mime_type`, `size`, `url`, `options`, `created_at`, `updated_at`, `deleted_at`, `visibility`) VALUES
(1, 1, 'logo', 'logo', 0, 'image/png', 9033, 'logo-3.png', '[]', '2025-10-25 05:15:32', '2025-10-25 07:28:47', '2025-10-25 07:28:47', 'public'),
(2, 1, 'login_logo', 'login_logo', 0, 'image/png', 9992, 'login-logo-2.png', '[]', '2025-10-25 05:36:52', '2025-10-25 07:28:47', '2025-10-25 07:28:47', 'public'),
(3, 1, 'logo-1', 'logo-1', 0, 'image/png', 9033, 'logo-1-1.png', '[]', '2025-10-25 05:36:53', '2025-10-25 07:28:47', '2025-10-25 07:28:47', 'public'),
(4, 1, 'preloader', 'preloader', 0, 'image/gif', 16061, 'preloader.gif', '[]', '2025-10-25 05:37:01', '2025-10-25 07:28:47', '2025-10-25 07:28:47', 'public'),
(5, 1, 'favicon', 'favicon', 0, 'image/png', 1307, 'favicon-1.png', '[]', '2025-10-25 05:37:07', '2025-10-25 07:28:47', '2025-10-25 07:28:47', 'public'),
(6, 1, 'favicon-1', 'favicon-1', 0, 'image/png', 1307, 'favicon-1-1.png', '[]', '2025-10-25 05:38:04', '2025-10-25 07:28:47', '2025-10-25 07:28:47', 'public'),
(7, 1, '01', '01', 0, 'image/png', 1570, '01.png', '[]', '2025-10-25 07:28:58', '2025-10-25 07:28:58', NULL, 'public'),
(8, 1, '1', '1', 0, 'image/jpeg', 84270, '1.jpg', '[]', '2025-10-25 07:29:01', '2025-10-25 07:29:01', NULL, 'public'),
(9, 1, '1-1', '1-1', 0, 'image/png', 11596, '1-1.png', '[]', '2025-10-25 07:29:02', '2025-10-25 07:29:02', NULL, 'public'),
(10, 1, '1-2', '1-2', 0, 'image/png', 208644, '1-2.png', '[]', '2025-10-25 07:29:05', '2025-10-25 07:29:05', NULL, 'public'),
(11, 1, '1-150x150', '1-150x150', 0, 'image/jpeg', 3743, '1-150x150-1.jpg', '[]', '2025-10-25 07:29:07', '2025-10-25 07:29:07', NULL, 'public'),
(12, 1, '02', '02', 0, 'image/png', 2157, '02.png', '[]', '2025-10-25 07:29:09', '2025-10-25 07:29:09', NULL, 'public'),
(13, 1, '2', '2', 0, 'image/jpeg', 132406, '2.jpg', '[]', '2025-10-25 07:29:11', '2025-10-25 07:29:11', NULL, 'public'),
(14, 1, '2-1', '2-1', 0, 'image/jpeg', 5175, '2-1.jpg', '[]', '2025-10-25 07:29:13', '2025-10-25 07:29:13', NULL, 'public'),
(15, 1, '2-1-1', '2-1-1', 0, 'image/png', 145044, '2-1-1.png', '[]', '2025-10-25 07:29:16', '2025-10-25 07:29:16', NULL, 'public'),
(16, 1, '2-2', '2-2', 0, 'image/jpeg', 31412, '2-2.jpg', '[]', '2025-10-25 07:29:18', '2025-10-25 07:29:18', NULL, 'public'),
(17, 1, '3', '3', 0, 'image/jpeg', 171705, '3.jpg', '[]', '2025-10-25 07:29:20', '2025-10-25 07:29:20', NULL, 'public'),
(18, 1, '3-1', '3-1', 0, 'image/png', 13498, '3-1.png', '[]', '2025-10-25 07:29:22', '2025-10-25 07:29:22', NULL, 'public'),
(19, 1, 'sm1', 'sm1', 0, 'image/png', 1447, 'sm1.png', '[]', '2025-10-25 07:30:18', '2025-10-25 07:30:18', NULL, 'public'),
(20, 1, '01-1', '01-1', 0, 'image/png', 1570, '01-1.png', '[]', '2025-10-25 07:30:20', '2025-10-25 07:30:20', NULL, 'public'),
(21, 1, '1-3', '1-3', 0, 'image/jpeg', 84270, '1-3.jpg', '[]', '2025-10-25 07:30:23', '2025-10-25 07:30:23', NULL, 'public'),
(22, 1, '1-1-1', '1-1-1', 0, 'image/png', 11596, '1-1-1.png', '[]', '2025-10-25 07:30:25', '2025-10-25 07:30:25', NULL, 'public'),
(23, 1, '1-2-1', '1-2-1', 0, 'image/png', 208644, '1-2-1.png', '[]', '2025-10-25 07:30:28', '2025-10-25 07:30:28', NULL, 'public'),
(24, 1, '1-150x150-1', '1-150x150-1', 0, 'image/jpeg', 3743, '1-150x150-1-1.jpg', '[]', '2025-10-25 07:30:29', '2025-10-25 07:30:29', NULL, 'public'),
(25, 1, '02-1', '02-1', 0, 'image/png', 2157, '02-1.png', '[]', '2025-10-25 07:30:31', '2025-10-25 07:30:31', NULL, 'public'),
(26, 1, '2-3', '2-3', 0, 'image/jpeg', 132406, '2-3.jpg', '[]', '2025-10-25 07:30:34', '2025-10-25 07:30:34', NULL, 'public'),
(27, 1, '2-1-2', '2-1-2', 0, 'image/jpeg', 5175, '2-1-2.jpg', '[]', '2025-10-25 07:30:35', '2025-10-25 07:30:35', NULL, 'public'),
(28, 1, '2-1-3', '2-1-3', 0, 'image/png', 145044, '2-1-3.png', '[]', '2025-10-25 07:30:38', '2025-10-25 07:30:38', NULL, 'public'),
(29, 1, '2-2-1', '2-2-1', 0, 'image/jpeg', 31412, '2-2-1.jpg', '[]', '2025-10-25 07:30:39', '2025-10-25 07:30:39', NULL, 'public'),
(30, 1, '3-2', '3-2', 0, 'image/jpeg', 171705, '3-2.jpg', '[]', '2025-10-25 07:30:42', '2025-10-25 07:30:42', NULL, 'public'),
(31, 1, '3-1-1', '3-1-1', 0, 'image/png', 13498, '3-1-1.png', '[]', '2025-10-25 07:30:44', '2025-10-25 07:30:44', NULL, 'public'),
(32, 1, '3-2-1', '3-2-1', 0, 'image/jpeg', 7542, '3-2-1.jpg', '[]', '2025-10-25 07:30:46', '2025-10-25 07:30:46', NULL, 'public'),
(33, 1, '4', '4', 0, 'image/png', 11394, '4.png', '[]', '2025-10-25 07:30:48', '2025-10-25 07:30:48', NULL, 'public'),
(34, 1, '4-1', '4-1', 0, 'image/jpeg', 128555, '4-1.jpg', '[]', '2025-10-25 07:30:52', '2025-10-25 07:30:52', NULL, 'public'),
(35, 1, '4-1-1', '4-1-1', 0, 'image/jpeg', 4837, '4-1-1.jpg', '[]', '2025-10-25 07:31:13', '2025-10-25 07:31:13', NULL, 'public'),
(36, 1, '4-2', '4-2', 0, 'image/jpeg', 128555, '4-2.jpg', '[]', '2025-10-25 07:31:34', '2025-10-25 07:31:34', NULL, 'public'),
(37, 1, '5', '5', 0, 'image/png', 11065, '5.png', '[]', '2025-10-25 07:31:36', '2025-10-25 07:31:36', NULL, 'public'),
(38, 1, '5-1', '5-1', 0, 'image/jpeg', 32248, '5-1.jpg', '[]', '2025-10-25 07:31:41', '2025-10-25 07:31:41', NULL, 'public'),
(39, 1, '5-1-1', '5-1-1', 0, 'image/png', 5482, '5-1-1.png', '[]', '2025-10-25 07:31:45', '2025-10-25 07:31:45', NULL, 'public'),
(40, 1, '6', '6', 0, 'image/png', 8114, '6.png', '[]', '2025-10-25 07:31:47', '2025-10-25 07:31:47', NULL, 'public'),
(41, 1, '6-1', '6-1', 0, 'image/jpeg', 28502, '6-1.jpg', '[]', '2025-10-25 07:31:50', '2025-10-25 07:31:50', NULL, 'public'),
(42, 1, '7', '7', 0, 'image/png', 4102, '7.png', '[]', '2025-10-25 07:31:51', '2025-10-25 07:31:51', NULL, 'public'),
(43, 1, '8', '8', 0, 'image/png', 5350, '8.png', '[]', '2025-10-25 07:31:53', '2025-10-25 07:31:53', NULL, 'public'),
(44, 1, '9', '9', 0, 'image/png', 3352, '9.png', '[]', '2025-10-25 07:31:55', '2025-10-25 07:31:55', NULL, 'public'),
(45, 1, '10', '10', 0, 'image/png', 4592, '10.png', '[]', '2025-10-25 07:31:57', '2025-10-25 07:31:57', NULL, 'public'),
(46, 1, 'favicon-2', 'favicon-2', 0, 'image/png', 1307, 'favicon-2.png', '[]', '2025-10-25 07:32:00', '2025-10-25 07:32:00', NULL, 'public'),
(47, 1, 'login-bg', 'login-bg', 0, 'image/png', 2015357, 'login-bg.png', '[]', '2025-10-25 07:32:45', '2025-10-25 07:32:45', NULL, 'public'),
(48, 1, 'login-logo', 'login-logo', 0, 'image/png', 9992, 'login-logo.png', '[]', '2025-10-25 07:32:49', '2025-10-25 07:32:49', NULL, 'public'),
(49, 1, 'logo-2', 'logo-2', 0, 'image/png', 9033, 'logo-2.png', '[]', '2025-10-25 07:32:51', '2025-10-25 07:32:51', NULL, 'public'),
(50, 1, 'sm1-1', 'sm1-1', 0, 'image/png', 1447, 'sm1-1.png', '[]', '2025-10-25 07:43:02', '2025-10-25 07:43:02', NULL, 'public'),
(51, 1, 'login-bg-1', 'login-bg-1', 0, 'image/png', 2015357, 'login-bg-1.png', '[]', '2025-10-25 07:43:15', '2025-10-25 07:43:15', NULL, 'public'),
(52, 1, '5-1-2', '5-1-2', 0, 'image/png', 5482, '5-1-2.png', '[]', '2025-10-25 07:51:50', '2025-10-25 07:51:50', NULL, 'public'),
(53, 1, '3-3', '3-3', 0, 'image/jpeg', 7542, '3-3.jpg', '[]', '2025-10-25 07:52:16', '2025-10-25 07:52:16', NULL, 'public'),
(54, 1, '5-1-3', '5-1-3', 0, 'image/png', 5482, '5-1-3.png', '[]', '2025-10-25 07:53:34', '2025-10-25 07:53:34', NULL, 'public'),
(55, 1, '1-4', '1-4', 0, 'image/png', 228985, '1-4.png', '[]', '2025-10-25 07:56:24', '2025-10-25 07:56:24', NULL, 'public'),
(56, 1, '5-1-4', '5-1-4', 0, 'image/png', 5482, '5-1-4.png', '[]', '2025-10-25 08:03:22', '2025-10-25 08:03:22', NULL, 'public'),
(57, 1, '1113', '1113', 0, 'image/jpeg', 23368, '1113.jpg', '[]', '2025-10-27 02:12:58', '2025-10-27 02:12:58', NULL, 'public'),
(58, 1, '114', '114', 0, 'image/jpeg', 31191, '114.jpg', '[]', '2025-10-27 02:13:00', '2025-10-27 02:13:00', NULL, 'public'),
(59, 1, '1-720x720', '1-720x720', 0, 'image/jpeg', 11998, '1-720x720-1.jpg', '[]', '2025-10-27 02:23:30', '2025-10-27 02:23:30', NULL, 'public'),
(60, 1, 'about_img_01', 'about_img_01', 0, 'image/png', 269671, 'about-img-01.png', '[]', '2025-10-28 12:01:42', '2025-10-28 12:01:42', NULL, 'public'),
(61, 1, 'bg-2', 'bg-2', 0, 'image/png', 662984, 'bg-2-3.png', '[]', '2025-10-28 12:11:20', '2025-10-28 12:11:20', NULL, 'public'),
(62, 1, 'banner-img-2', 'banner-img-2', 0, 'image/png', 1197524, 'banner-img-2-1.png', '[]', '2025-10-31 07:37:21', '2025-10-31 07:37:21', NULL, 'public'),
(63, 1, 'rs149-hydrogel-tape-2', 'rs149-hydrogel-tape-2', 1, 'image/png', 1413665, 'products/rs149-hydrogel-tape-2.png', '[]', '2025-11-01 12:06:03', '2025-11-01 12:06:03', NULL, 'public'),
(64, 1, 'rs149-hydrogel-tape-2-1', 'rs149-hydrogel-tape-2-1', 1, 'image/png', 1413665, 'products/rs149-hydrogel-tape-2-1.png', '[]', '2025-11-01 12:06:07', '2025-11-01 12:06:07', NULL, 'public'),
(65, 1, 'rs149-hydrogel-tape-2-2', 'rs149-hydrogel-tape-2-2', 1, 'image/png', 1413665, 'products/rs149-hydrogel-tape-2-2.png', '[]', '2025-11-01 12:09:15', '2025-11-01 12:09:15', NULL, 'public'),
(66, 1, 'rs149-hydrogel-tape-2-3', 'rs149-hydrogel-tape-2-3', 1, 'image/png', 1413665, 'products/rs149-hydrogel-tape-2-3.png', '[]', '2025-11-01 12:09:18', '2025-11-01 12:09:18', NULL, 'public'),
(67, 1, 'rs149-hydrogel-tape-2-4', 'rs149-hydrogel-tape-2-4', 1, 'image/png', 1413665, 'products/rs149-hydrogel-tape-2-4.png', '[]', '2025-11-01 12:10:19', '2025-11-01 12:10:19', NULL, 'public'),
(68, 1, 'rs149-hydrogel-tape-2-5', 'rs149-hydrogel-tape-2-5', 1, 'image/png', 1413665, 'products/rs149-hydrogel-tape-2-5.png', '[]', '2025-11-01 12:10:22', '2025-11-01 12:10:22', NULL, 'public'),
(69, 1, 'rs149-hydrogel-tape-2-6', 'rs149-hydrogel-tape-2-6', 1, 'image/png', 1413665, 'products/rs149-hydrogel-tape-2-6.png', '[]', '2025-11-01 12:49:59', '2025-11-01 12:49:59', NULL, 'public'),
(70, 1, 'rs149-hydrogel-tape-2-7', 'rs149-hydrogel-tape-2-7', 1, 'image/png', 1413665, 'products/rs149-hydrogel-tape-2-7.png', '[]', '2025-11-01 12:52:01', '2025-11-01 12:52:01', NULL, 'public'),
(71, 1, 'rs149-hydrogel-tape-2-8', 'rs149-hydrogel-tape-2-8', 1, 'image/png', 1413665, 'products/rs149-hydrogel-tape-2-8.png', '[]', '2025-11-01 12:52:05', '2025-11-01 12:52:05', NULL, 'public'),
(72, 1, 'rs149-hydrogel-tape-2-9', 'rs149-hydrogel-tape-2-9', 1, 'image/png', 1413665, 'products/rs149-hydrogel-tape-2-9.png', '[]', '2025-11-03 13:26:13', '2025-11-03 13:26:13', NULL, 'public'),
(73, 1, 'rs149-hydrogel-tape-2-10', 'rs149-hydrogel-tape-2-10', 1, 'image/png', 1413665, 'products/rs149-hydrogel-tape-2-10.png', '[]', '2025-11-03 13:26:17', '2025-11-03 13:26:17', NULL, 'public'),
(74, 1, 'rs149-hydrogel-tape-2-11', 'rs149-hydrogel-tape-2-11', 1, 'image/png', 1413665, 'products/rs149-hydrogel-tape-2-11.png', '[]', '2025-11-04 05:49:56', '2025-11-04 05:49:56', NULL, 'public'),
(75, 1, 'rs149-hydrogel-tape-2-12', 'rs149-hydrogel-tape-2-12', 1, 'image/png', 1413665, 'products/rs149-hydrogel-tape-2-12.png', '[]', '2025-11-04 05:49:59', '2025-11-04 05:49:59', NULL, 'public'),
(76, 1, 'rs149-hydrogel-tape-2-13', 'rs149-hydrogel-tape-2-13', 1, 'image/png', 1413665, 'products/rs149-hydrogel-tape-2-13.png', '[]', '2025-11-04 05:50:03', '2025-11-04 05:50:03', NULL, 'public'),
(77, 1, 'rs149-hydrogel-tape-2-14', 'rs149-hydrogel-tape-2-14', 1, 'image/png', 1413665, 'products/rs149-hydrogel-tape-2-14.png', '[]', '2025-11-07 06:26:06', '2025-11-07 06:26:06', NULL, 'public'),
(78, 1, 'rs149-hydrogel-tape-2-15', 'rs149-hydrogel-tape-2-15', 1, 'image/png', 1413665, 'products/rs149-hydrogel-tape-2-15.png', '[]', '2025-11-07 06:31:06', '2025-11-07 06:31:06', NULL, 'public'),
(79, 1, 'rs149-hydrogel-tape-2-16', 'rs149-hydrogel-tape-2-16', 1, 'image/png', 1413665, 'products/rs149-hydrogel-tape-2-16.png', '[]', '2025-11-07 06:34:00', '2025-11-07 06:34:00', NULL, 'public'),
(80, 1, 'rs149-hydrogel-tape-2-17', 'rs149-hydrogel-tape-2-17', 1, 'image/png', 1413665, 'products/rs149-hydrogel-tape-2-17.png', '[]', '2025-11-07 06:34:03', '2025-11-07 06:34:03', NULL, 'public'),
(81, 1, 'rs149-hydrogel-tape-2-18', 'rs149-hydrogel-tape-2-18', 1, 'image/png', 1413665, 'products/rs149-hydrogel-tape-2-18.png', '[]', '2025-11-07 11:00:18', '2025-11-07 11:00:18', NULL, 'public'),
(82, 1, 'rs149-hydrogel-tape-2-19', 'rs149-hydrogel-tape-2-19', 1, 'image/png', 1413665, 'products/rs149-hydrogel-tape-2-19.png', '[]', '2025-11-07 11:00:21', '2025-11-07 11:00:21', NULL, 'public'),
(83, 1, 'bg-2-1', 'bg-2-1', 0, 'image/png', 662984, 'bg-2-1-1.png', '[]', '2025-11-10 07:49:14', '2025-11-10 07:49:14', NULL, 'public'),
(84, 1, 'img_20251110', 'img_20251110', 0, 'image/png', 1078623, 'img-20251110.png', '[]', '2025-11-10 09:01:07', '2025-11-10 09:01:07', NULL, 'public'),
(85, 1, 'bg-1', 'bg-1', 0, 'image/jpeg', 46421, 'bg-1-1.jpg', '[]', '2025-11-10 09:49:05', '2025-11-10 09:49:05', NULL, 'public'),
(86, 1, 'bg-5', 'bg-5', 0, 'image/png', 1373733, 'bg-5-1.png', '[]', '2025-11-10 09:54:01', '2025-11-10 09:54:01', NULL, 'public'),
(87, 1, 'trusted_section_bg_img', 'trusted_section_bg_img', 0, 'image/png', 429833, 'trusted-section-bg-img.png', '[]', '2025-11-10 10:01:30', '2025-11-10 10:01:30', NULL, 'public'),
(88, 1, 'bg-6', 'bg-6', 0, 'image/png', 1742073, 'bg-6-2.png', '[]', '2025-11-10 10:04:56', '2025-11-10 10:04:56', NULL, 'public'),
(89, 1, 'trusted_section_bg_img-1', 'trusted_section_bg_img-1', 0, 'image/png', 429833, 'trusted-section-bg-img-1.png', '[]', '2025-11-10 10:15:52', '2025-11-10 10:16:29', '2025-11-10 10:16:29', 'public'),
(90, 1, 'trusted_section_bg_img-2', 'trusted_section_bg_img-2', 0, 'image/png', 429833, 'trusted-section-bg-img-2.png', '[]', '2025-11-10 10:23:21', '2025-11-10 10:23:21', NULL, 'public'),
(91, 0, 'akshay', 'akshay', 3, 'image/jpeg', 108308, 'customers/14/akshay.jpg', '[]', '2025-11-10 12:14:23', '2025-11-10 12:14:23', NULL, 'public'),
(92, 1, 'rs149-hydrogel-tape-2-20', 'rs149-hydrogel-tape-2-20', 1, 'image/png', 1413665, 'products/rs149-hydrogel-tape-2-20.png', '[]', '2025-11-12 06:14:48', '2025-11-12 06:14:48', NULL, 'public'),
(93, 1, 'rs149-hydrogel-tape-2-21', 'rs149-hydrogel-tape-2-21', 1, 'image/png', 1413665, 'products/rs149-hydrogel-tape-2-21.png', '[]', '2025-11-12 06:14:51', '2025-11-12 06:14:51', NULL, 'public'),
(94, 1, 'rs149-hydrogel-tape-2-22', 'rs149-hydrogel-tape-2-22', 1, 'image/png', 1413665, 'products/rs149-hydrogel-tape-2-22.png', '[]', '2025-11-12 07:23:11', '2025-11-12 07:23:11', NULL, 'public'),
(95, 1, 'rs149-hydrogel-tape-2-23', 'rs149-hydrogel-tape-2-23', 1, 'image/png', 1413665, 'products/rs149-hydrogel-tape-2-23.png', '[]', '2025-11-12 07:23:14', '2025-11-12 07:23:14', NULL, 'public'),
(96, 1, 'rs149-hydrogel-tape-2-24', 'rs149-hydrogel-tape-2-24', 1, 'image/png', 1413665, 'products/rs149-hydrogel-tape-2-24.png', '[]', '2025-11-12 07:23:17', '2025-11-12 07:23:17', NULL, 'public'),
(97, 1, 'rs149-hydrogel-tape-2-25', 'rs149-hydrogel-tape-2-25', 1, 'image/png', 1413665, 'products/rs149-hydrogel-tape-2-25.png', '[]', '2025-11-12 07:23:21', '2025-11-12 07:23:21', NULL, 'public'),
(98, 1, 'rs149-hydrogel-tape-2-26', 'rs149-hydrogel-tape-2-26', 1, 'image/png', 1413665, 'products/rs149-hydrogel-tape-2-26.png', '[]', '2025-11-12 07:26:50', '2025-11-12 07:26:50', NULL, 'public'),
(99, 1, 'rs149-hydrogel-tape-2-27', 'rs149-hydrogel-tape-2-27', 1, 'image/png', 1413665, 'products/rs149-hydrogel-tape-2-27.png', '[]', '2025-11-12 07:26:53', '2025-11-12 07:26:53', NULL, 'public'),
(100, 1, 'rs149-hydrogel-tape-2-28', 'rs149-hydrogel-tape-2-28', 1, 'image/png', 1413665, 'products/rs149-hydrogel-tape-2-28.png', '[]', '2025-11-12 07:26:57', '2025-11-12 07:26:57', NULL, 'public'),
(101, 1, 'rs149-hydrogel-tape-2-29', 'rs149-hydrogel-tape-2-29', 1, 'image/png', 1413665, 'products/rs149-hydrogel-tape-2-29.png', '[]', '2025-11-12 07:27:00', '2025-11-12 07:27:00', NULL, 'public'),
(102, 1, 'rs149-hydrogel-tape-2-30', 'rs149-hydrogel-tape-2-30', 1, 'image/png', 1413665, 'products/rs149-hydrogel-tape-2-30.png', '[]', '2025-11-13 06:45:17', '2025-11-13 06:45:17', NULL, 'public'),
(103, 1, 'rs149-hydrogel-tape-2-31', 'rs149-hydrogel-tape-2-31', 1, 'image/png', 1413665, 'products/rs149-hydrogel-tape-2-31.png', '[]', '2025-11-13 06:45:20', '2025-11-13 06:45:20', NULL, 'public'),
(104, 1, 'rs149-hydrogel-tape-2-32', 'rs149-hydrogel-tape-2-32', 1, 'image/png', 1413665, 'products/rs149-hydrogel-tape-2-32.png', '[]', '2025-11-13 06:45:24', '2025-11-13 06:45:24', NULL, 'public'),
(105, 1, 'rs149-hydrogel-tape-2-33', 'rs149-hydrogel-tape-2-33', 1, 'image/png', 1413665, 'products/rs149-hydrogel-tape-2-33.png', '[]', '2025-11-13 06:45:27', '2025-11-13 06:45:27', NULL, 'public'),
(106, 1, 'rs149-hydrogel-tape-2-34', 'rs149-hydrogel-tape-2-34', 1, 'image/png', 1413665, 'products/rs149-hydrogel-tape-2-34.png', '[]', '2025-11-13 06:45:30', '2025-11-13 06:45:30', NULL, 'public'),
(107, 1, 'rs149-hydrogel-tape-2-35', 'rs149-hydrogel-tape-2-35', 1, 'image/png', 1413665, 'products/rs149-hydrogel-tape-2-35.png', '[]', '2025-11-13 06:45:34', '2025-11-13 06:45:34', NULL, 'public'),
(108, 1, 'rs149-hydrogel-tape-2-36', 'rs149-hydrogel-tape-2-36', 1, 'image/png', 1413665, 'products/rs149-hydrogel-tape-2-36.png', '[]', '2025-11-13 09:25:39', '2025-11-13 09:25:39', NULL, 'public'),
(109, 1, 'rs149-hydrogel-tape-2-37', 'rs149-hydrogel-tape-2-37', 1, 'image/png', 1413665, 'products/rs149-hydrogel-tape-2-37.png', '[]', '2025-11-13 09:25:42', '2025-11-13 09:25:42', NULL, 'public'),
(110, 1, 'rs149-hydrogel-tape-2-38', 'rs149-hydrogel-tape-2-38', 1, 'image/png', 1413665, 'products/rs149-hydrogel-tape-2-38.png', '[]', '2025-11-13 09:25:46', '2025-11-13 09:25:46', NULL, 'public'),
(111, 1, 'rs149-hydrogel-tape-2-39', 'rs149-hydrogel-tape-2-39', 1, 'image/png', 1413665, 'products/rs149-hydrogel-tape-2-39.png', '[]', '2025-11-13 09:25:49', '2025-11-13 09:25:49', NULL, 'public'),
(112, 1, 'rs149-hydrogel-tape-2-40', 'rs149-hydrogel-tape-2-40', 1, 'image/png', 1413665, 'products/rs149-hydrogel-tape-2-40.png', '[]', '2025-11-13 09:25:52', '2025-11-13 09:25:52', NULL, 'public'),
(113, 1, 'rs149-hydrogel-tape-2-41', 'rs149-hydrogel-tape-2-41', 1, 'image/png', 1413665, 'products/rs149-hydrogel-tape-2-41.png', '[]', '2025-11-13 09:25:55', '2025-11-13 09:25:55', NULL, 'public'),
(114, 1, 'vitruv-main-image', 'vitruv-main-image', 1, 'image/webp', 38288, 'products/vitruv-main-image.webp', '[]', '2025-11-13 09:25:57', '2025-11-13 09:25:57', NULL, 'public'),
(115, 1, 'vitruv-option1', 'vitruv-option1', 1, 'image/webp', 22748, 'products/vitruv-option1.webp', '[]', '2025-11-13 09:25:58', '2025-11-13 09:25:58', NULL, 'public'),
(116, 1, 'vitruv-option2', 'vitruv-option2', 1, 'image/webp', 138894, 'products/vitruv-option2.webp', '[]', '2025-11-13 09:26:00', '2025-11-13 09:26:00', NULL, 'public'),
(117, 1, 'vitruv-main-image-1', 'vitruv-main-image-1', 1, 'image/webp', 38288, 'products/vitruv-main-image-1.webp', '[]', '2025-11-13 09:26:01', '2025-11-13 09:26:01', NULL, 'public'),
(118, 1, 'vitruv-main-image-2', 'vitruv-main-image-2', 1, 'image/webp', 38288, 'products/vitruv-main-image-2.webp', '[]', '2025-11-13 09:26:05', '2025-11-13 09:26:05', NULL, 'public'),
(119, 1, 'vitruv-main-image-3', 'vitruv-main-image-3', 1, 'image/webp', 38288, 'products/vitruv-main-image-3.webp', '[]', '2025-11-13 09:26:09', '2025-11-13 09:26:09', NULL, 'public'),
(120, 1, 'weapons-catch-main-image', 'weapons-catch-main-image', 1, 'image/webp', 134934, 'products/weapons-catch-main-image.webp', '[]', '2025-11-13 09:26:14', '2025-11-13 09:26:14', NULL, 'public'),
(121, 1, 'weapons-catch-main-image-1', 'weapons-catch-main-image-1', 1, 'image/webp', 134934, 'products/weapons-catch-main-image-1.webp', '[]', '2025-11-13 09:26:20', '2025-11-13 09:26:20', NULL, 'public'),
(122, 1, 'weapons-catch-main-image-2', 'weapons-catch-main-image-2', 1, 'image/webp', 134934, 'products/weapons-catch-main-image-2.webp', '[]', '2025-11-13 09:26:26', '2025-11-13 09:26:26', NULL, 'public'),
(123, 1, 'american-animal-arms-lights-out-rail-option1', 'american-animal-arms-lights-out-rail-option1', 1, 'image/webp', 1980, 'products/american-animal-arms-lights-out-rail-option1.webp', '[]', '2025-11-13 09:26:33', '2025-11-13 09:26:33', NULL, 'public'),
(124, 1, 'american-animal-arms-lights-out-rail-option2', 'american-animal-arms-lights-out-rail-option2', 1, 'image/webp', 2208, 'products/american-animal-arms-lights-out-rail-option2.webp', '[]', '2025-11-13 09:26:34', '2025-11-13 09:26:34', NULL, 'public'),
(125, 1, 'american-animal-arms-lights-out-rail-option3', 'american-animal-arms-lights-out-rail-option3', 1, 'image/webp', 2580, 'products/american-animal-arms-lights-out-rail-option3.webp', '[]', '2025-11-13 09:26:35', '2025-11-13 09:26:35', NULL, 'public'),
(126, 1, 'american-animal-arms-lights-out-rail-option4', 'american-animal-arms-lights-out-rail-option4', 1, 'image/webp', 1988, 'products/american-animal-arms-lights-out-rail-option4.webp', '[]', '2025-11-13 09:26:36', '2025-11-13 09:26:36', NULL, 'public'),
(127, 1, 'american-animal-arms-lights-out-rail-option6', 'american-animal-arms-lights-out-rail-option6', 1, 'image/webp', 3580, 'products/american-animal-arms-lights-out-rail-option6.webp', '[]', '2025-11-13 09:26:37', '2025-11-13 09:26:37', NULL, 'public'),
(128, 1, 'american-animal-arms-lights-out-rail-option7', 'american-animal-arms-lights-out-rail-option7', 1, 'image/webp', 3698, 'products/american-animal-arms-lights-out-rail-option7.webp', '[]', '2025-11-13 09:26:38', '2025-11-13 09:26:38', NULL, 'public'),
(129, 1, 'american-animal-arms-lights-out-rail-option8', 'american-animal-arms-lights-out-rail-option8', 1, 'image/webp', 3370, 'products/american-animal-arms-lights-out-rail-option8.webp', '[]', '2025-11-13 09:26:39', '2025-11-13 09:26:39', NULL, 'public'),
(130, 1, 'american-animal-arms-lights-out-rail-option9', 'american-animal-arms-lights-out-rail-option9', 1, 'image/webp', 3992, 'products/american-animal-arms-lights-out-rail-option9.webp', '[]', '2025-11-13 09:26:41', '2025-11-13 09:26:41', NULL, 'public'),
(131, 1, 'american-animal-arms-lights-out-rail-option10', 'american-animal-arms-lights-out-rail-option10', 1, 'image/jpeg', 427903, 'products/american-animal-arms-lights-out-rail-option10.jpg', '[]', '2025-11-13 09:26:43', '2025-11-13 09:26:43', NULL, 'public'),
(132, 1, 'american-animal-arms-lights-out-rail-option11', 'american-animal-arms-lights-out-rail-option11', 1, 'image/jpeg', 255255, 'products/american-animal-arms-lights-out-rail-option11.jpg', '[]', '2025-11-13 09:26:45', '2025-11-13 09:26:45', NULL, 'public'),
(133, 1, 'american-animal-arms-lights-out-rail-option12', 'american-animal-arms-lights-out-rail-option12', 1, 'image/jpeg', 244404, 'products/american-animal-arms-lights-out-rail-option12.jpg', '[]', '2025-11-13 09:26:47', '2025-11-13 09:26:47', NULL, 'public'),
(134, 1, 'american-animal-arms-lights-out-rail-4-colour-opti', 'american-animal-arms-lights-out-rail-4-colour-opti', 1, 'image/webp', 9978, 'products/american-animal-arms-lights-out-rail-4-colour-opti.webp', '[]', '2025-11-13 09:26:48', '2025-11-13 09:26:48', NULL, 'public'),
(135, 1, 'american-animal-arms-lights-out-rail-option1-1', 'american-animal-arms-lights-out-rail-option1-1', 1, 'image/webp', 1980, 'products/american-animal-arms-lights-out-rail-option1-1.webp', '[]', '2025-11-13 09:26:53', '2025-11-13 09:26:53', NULL, 'public'),
(136, 1, 'american-animal-arms-lights-out-rail-option2-1', 'american-animal-arms-lights-out-rail-option2-1', 1, 'image/webp', 2208, 'products/american-animal-arms-lights-out-rail-option2-1.webp', '[]', '2025-11-13 09:26:54', '2025-11-13 09:26:54', NULL, 'public'),
(137, 1, 'american-animal-arms-lights-out-rail-option3-1', 'american-animal-arms-lights-out-rail-option3-1', 1, 'image/webp', 2580, 'products/american-animal-arms-lights-out-rail-option3-1.webp', '[]', '2025-11-13 09:26:55', '2025-11-13 09:26:55', NULL, 'public'),
(138, 1, 'american-animal-arms-lights-out-rail-option4-1', 'american-animal-arms-lights-out-rail-option4-1', 1, 'image/webp', 1988, 'products/american-animal-arms-lights-out-rail-option4-1.webp', '[]', '2025-11-13 09:26:55', '2025-11-13 09:26:55', NULL, 'public'),
(139, 1, 'american-animal-arms-lights-out-rail-option6-1', 'american-animal-arms-lights-out-rail-option6-1', 1, 'image/webp', 3580, 'products/american-animal-arms-lights-out-rail-option6-1.webp', '[]', '2025-11-13 09:26:57', '2025-11-13 09:26:57', NULL, 'public'),
(140, 1, 'american-animal-arms-lights-out-rail-option7-1', 'american-animal-arms-lights-out-rail-option7-1', 1, 'image/webp', 3698, 'products/american-animal-arms-lights-out-rail-option7-1.webp', '[]', '2025-11-13 09:26:58', '2025-11-13 09:26:58', NULL, 'public'),
(141, 1, 'american-animal-arms-lights-out-rail-option8-1', 'american-animal-arms-lights-out-rail-option8-1', 1, 'image/webp', 3370, 'products/american-animal-arms-lights-out-rail-option8-1.webp', '[]', '2025-11-13 09:26:59', '2025-11-13 09:26:59', NULL, 'public'),
(142, 1, 'american-animal-arms-lights-out-rail-option9-1', 'american-animal-arms-lights-out-rail-option9-1', 1, 'image/webp', 3992, 'products/american-animal-arms-lights-out-rail-option9-1.webp', '[]', '2025-11-13 09:27:00', '2025-11-13 09:27:00', NULL, 'public'),
(143, 1, 'american-animal-arms-lights-out-rail-option10-1', 'american-animal-arms-lights-out-rail-option10-1', 1, 'image/jpeg', 427903, 'products/american-animal-arms-lights-out-rail-option10-1.jpg', '[]', '2025-11-13 09:27:02', '2025-11-13 09:27:02', NULL, 'public'),
(144, 1, 'american-animal-arms-lights-out-rail-option11-1', 'american-animal-arms-lights-out-rail-option11-1', 1, 'image/jpeg', 255255, 'products/american-animal-arms-lights-out-rail-option11-1.jpg', '[]', '2025-11-13 09:27:04', '2025-11-13 09:27:04', NULL, 'public'),
(145, 1, 'american-animal-arms-lights-out-rail-option12-1', 'american-animal-arms-lights-out-rail-option12-1', 1, 'image/jpeg', 244404, 'products/american-animal-arms-lights-out-rail-option12-1.jpg', '[]', '2025-11-13 09:27:06', '2025-11-13 09:27:06', NULL, 'public'),
(146, 1, 'american-animal-arms-lights-out-rail-4-colour-opti-1', 'american-animal-arms-lights-out-rail-4-colour-opti-1', 1, 'image/webp', 9978, 'products/american-animal-arms-lights-out-rail-4-colour-opti-1.webp', '[]', '2025-11-13 09:27:07', '2025-11-13 09:27:07', NULL, 'public'),
(147, 1, 'american-animal-arms-lights-out-rail-logo', 'american-animal-arms-lights-out-rail-logo', 1, 'image/webp', 11636, 'products/american-animal-arms-lights-out-rail-logo.webp', '[]', '2025-11-13 09:27:08', '2025-11-13 09:27:08', NULL, 'public'),
(148, 1, 'american-animal-arms-lights-out-rail-option1-2', 'american-animal-arms-lights-out-rail-option1-2', 1, 'image/webp', 1980, 'products/american-animal-arms-lights-out-rail-option1-2.webp', '[]', '2025-11-13 09:32:37', '2025-11-13 09:32:37', NULL, 'public'),
(149, 1, 'american-animal-arms-lights-out-rail-option2-2', 'american-animal-arms-lights-out-rail-option2-2', 1, 'image/webp', 2208, 'products/american-animal-arms-lights-out-rail-option2-2.webp', '[]', '2025-11-13 09:32:37', '2025-11-13 09:32:37', NULL, 'public'),
(150, 1, 'american-animal-arms-lights-out-rail-option3-2', 'american-animal-arms-lights-out-rail-option3-2', 1, 'image/webp', 2580, 'products/american-animal-arms-lights-out-rail-option3-2.webp', '[]', '2025-11-13 09:32:38', '2025-11-13 09:32:38', NULL, 'public'),
(151, 1, 'american-animal-arms-lights-out-rail-option4-2', 'american-animal-arms-lights-out-rail-option4-2', 1, 'image/webp', 1988, 'products/american-animal-arms-lights-out-rail-option4-2.webp', '[]', '2025-11-13 09:32:39', '2025-11-13 09:32:39', NULL, 'public'),
(152, 1, 'american-animal-arms-lights-out-rail-option6-2', 'american-animal-arms-lights-out-rail-option6-2', 1, 'image/webp', 3580, 'products/american-animal-arms-lights-out-rail-option6-2.webp', '[]', '2025-11-13 09:32:41', '2025-11-13 09:32:41', NULL, 'public'),
(153, 1, 'american-animal-arms-lights-out-rail-option7-2', 'american-animal-arms-lights-out-rail-option7-2', 1, 'image/webp', 3698, 'products/american-animal-arms-lights-out-rail-option7-2.webp', '[]', '2025-11-13 09:32:42', '2025-11-13 09:32:42', NULL, 'public'),
(154, 1, 'american-animal-arms-lights-out-rail-option8-2', 'american-animal-arms-lights-out-rail-option8-2', 1, 'image/webp', 3370, 'products/american-animal-arms-lights-out-rail-option8-2.webp', '[]', '2025-11-13 09:32:43', '2025-11-13 09:32:43', NULL, 'public'),
(155, 1, 'american-animal-arms-lights-out-rail-option9-2', 'american-animal-arms-lights-out-rail-option9-2', 1, 'image/webp', 3992, 'products/american-animal-arms-lights-out-rail-option9-2.webp', '[]', '2025-11-13 09:32:44', '2025-11-13 09:32:44', NULL, 'public'),
(156, 1, 'american-animal-arms-lights-out-rail-option10-2', 'american-animal-arms-lights-out-rail-option10-2', 1, 'image/jpeg', 427903, 'products/american-animal-arms-lights-out-rail-option10-2.jpg', '[]', '2025-11-13 09:32:46', '2025-11-13 09:32:46', NULL, 'public'),
(157, 1, 'american-animal-arms-lights-out-rail-option11-2', 'american-animal-arms-lights-out-rail-option11-2', 1, 'image/jpeg', 255255, 'products/american-animal-arms-lights-out-rail-option11-2.jpg', '[]', '2025-11-13 09:32:48', '2025-11-13 09:32:48', NULL, 'public'),
(158, 1, 'american-animal-arms-lights-out-rail-option12-2', 'american-animal-arms-lights-out-rail-option12-2', 1, 'image/jpeg', 244404, 'products/american-animal-arms-lights-out-rail-option12-2.jpg', '[]', '2025-11-13 09:32:50', '2025-11-13 09:32:50', NULL, 'public'),
(159, 1, 'american-animal-arms-lights-out-rail-4-colour-opti-2', 'american-animal-arms-lights-out-rail-4-colour-opti-2', 1, 'image/webp', 9978, 'products/american-animal-arms-lights-out-rail-4-colour-opti-2.webp', '[]', '2025-11-13 09:32:51', '2025-11-13 09:32:51', NULL, 'public'),
(160, 1, 'american-animal-arms-lights-out-rail-logo-1', 'american-animal-arms-lights-out-rail-logo-1', 1, 'image/webp', 11636, 'products/american-animal-arms-lights-out-rail-logo-1.webp', '[]', '2025-11-13 09:32:52', '2025-11-13 09:32:52', NULL, 'public'),
(161, 1, 'american-animal-arms-lights-out-rail-option1-3', 'american-animal-arms-lights-out-rail-option1-3', 1, 'image/webp', 1980, 'products/american-animal-arms-lights-out-rail-option1-3.webp', '[]', '2025-11-13 09:32:56', '2025-11-13 09:32:56', NULL, 'public'),
(162, 1, 'american-animal-arms-lights-out-rail-option2-3', 'american-animal-arms-lights-out-rail-option2-3', 1, 'image/webp', 2208, 'products/american-animal-arms-lights-out-rail-option2-3.webp', '[]', '2025-11-13 09:32:57', '2025-11-13 09:32:57', NULL, 'public'),
(163, 1, 'american-animal-arms-lights-out-rail-option3-3', 'american-animal-arms-lights-out-rail-option3-3', 1, 'image/webp', 2580, 'products/american-animal-arms-lights-out-rail-option3-3.webp', '[]', '2025-11-13 09:32:58', '2025-11-13 09:32:58', NULL, 'public'),
(164, 1, 'american-animal-arms-lights-out-rail-option4-3', 'american-animal-arms-lights-out-rail-option4-3', 1, 'image/webp', 1988, 'products/american-animal-arms-lights-out-rail-option4-3.webp', '[]', '2025-11-13 09:32:59', '2025-11-13 09:32:59', NULL, 'public'),
(165, 1, 'american-animal-arms-lights-out-rail-option6-3', 'american-animal-arms-lights-out-rail-option6-3', 1, 'image/webp', 3580, 'products/american-animal-arms-lights-out-rail-option6-3.webp', '[]', '2025-11-13 09:33:00', '2025-11-13 09:33:00', NULL, 'public'),
(166, 1, 'american-animal-arms-lights-out-rail-option7-3', 'american-animal-arms-lights-out-rail-option7-3', 1, 'image/webp', 3698, 'products/american-animal-arms-lights-out-rail-option7-3.webp', '[]', '2025-11-13 09:33:01', '2025-11-13 09:33:01', NULL, 'public'),
(167, 1, 'american-animal-arms-lights-out-rail-option8-3', 'american-animal-arms-lights-out-rail-option8-3', 1, 'image/webp', 3370, 'products/american-animal-arms-lights-out-rail-option8-3.webp', '[]', '2025-11-13 09:33:03', '2025-11-13 09:33:03', NULL, 'public'),
(168, 1, 'american-animal-arms-lights-out-rail-option9-3', 'american-animal-arms-lights-out-rail-option9-3', 1, 'image/webp', 3992, 'products/american-animal-arms-lights-out-rail-option9-3.webp', '[]', '2025-11-13 09:33:04', '2025-11-13 09:33:04', NULL, 'public'),
(169, 1, 'american-animal-arms-lights-out-rail-option10-3', 'american-animal-arms-lights-out-rail-option10-3', 1, 'image/jpeg', 427903, 'products/american-animal-arms-lights-out-rail-option10-3.jpg', '[]', '2025-11-13 09:33:06', '2025-11-13 09:33:06', NULL, 'public'),
(170, 1, 'american-animal-arms-lights-out-rail-option11-3', 'american-animal-arms-lights-out-rail-option11-3', 1, 'image/jpeg', 255255, 'products/american-animal-arms-lights-out-rail-option11-3.jpg', '[]', '2025-11-13 09:33:08', '2025-11-13 09:33:08', NULL, 'public'),
(171, 1, 'american-animal-arms-lights-out-rail-option12-3', 'american-animal-arms-lights-out-rail-option12-3', 1, 'image/jpeg', 244404, 'products/american-animal-arms-lights-out-rail-option12-3.jpg', '[]', '2025-11-13 09:33:09', '2025-11-13 09:33:09', NULL, 'public'),
(172, 1, 'american-animal-arms-lights-out-rail-4-colour-opti-3', 'american-animal-arms-lights-out-rail-4-colour-opti-3', 1, 'image/webp', 9978, 'products/american-animal-arms-lights-out-rail-4-colour-opti-3.webp', '[]', '2025-11-13 09:33:11', '2025-11-13 09:33:11', NULL, 'public'),
(173, 1, 'american-animal-arms-lights-out-rail-logo-2', 'american-animal-arms-lights-out-rail-logo-2', 1, 'image/webp', 11636, 'products/american-animal-arms-lights-out-rail-logo-2.webp', '[]', '2025-11-13 09:33:12', '2025-11-13 09:33:12', NULL, 'public'),
(174, 1, 'X-Pole%E2%84%A2%20-%20Tactical%20Glass%20Breaching', 'X-Pole%E2%84%A2%20-%20Tactical%20Glass%20Breaching', 1, 'image/png', 174967, 'products/x-polee284a220-20tactical20glass20breaching.png', '[]', '2025-11-13 11:05:36', '2025-11-13 11:05:36', NULL, 'public'),
(175, 1, 'X-Pole%E2%84%A2%20-%20Tactical%20Glass%20Breaching-1', 'X-Pole%E2%84%A2%20-%20Tactical%20Glass%20Breaching-1', 1, 'image/png', 174967, 'products/x-polee284a220-20tactical20glass20breaching-1.png', '[]', '2025-11-13 11:05:38', '2025-11-13 11:05:38', NULL, 'public'),
(176, 1, 'X-Pole™ - Tactical Glass Breaching Pole with X Bal', 'X-Pole™ - Tactical Glass Breaching Pole with X Bal', 1, 'image/jpeg', 10547, 'products/x-pole-tactical-glass-breaching-pole-with-x-bal.jpg', '[]', '2025-11-13 11:05:39', '2025-11-13 11:05:39', NULL, 'public'),
(177, 1, 'X-Pole%E2%84%A2%20-%20Tactical%20Glass%20Breaching-2', 'X-Pole%E2%84%A2%20-%20Tactical%20Glass%20Breaching-2', 1, 'image/png', 174967, 'products/x-polee284a220-20tactical20glass20breaching-2.png', '[]', '2025-11-13 11:05:41', '2025-11-13 11:05:41', NULL, 'public');

-- --------------------------------------------------------

--
-- Table structure for table `media_folders`
--

CREATE TABLE `media_folders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) DEFAULT NULL,
  `color` varchar(191) DEFAULT NULL,
  `slug` varchar(191) DEFAULT NULL,
  `parent_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `media_folders`
--

INSERT INTO `media_folders` (`id`, `user_id`, `name`, `color`, `slug`, `parent_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'products', NULL, 'products', 0, '2025-11-01 12:06:03', '2025-11-01 12:06:03', NULL),
(2, 0, 'customers', NULL, 'customers', 0, '2025-11-10 12:14:23', '2025-11-10 12:14:23', NULL),
(3, 0, '14', NULL, '14', 2, '2025-11-10 12:14:23', '2025-11-10 12:14:23', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `media_settings`
--

CREATE TABLE `media_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(120) NOT NULL,
  `value` text DEFAULT NULL,
  `media_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `media_settings`
--

INSERT INTO `media_settings` (`id`, `key`, `value`, `media_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'recent_items', '[{\"id\":52,\"is_folder\":false},{\"id\":54,\"is_folder\":false},{\"id\":56,\"is_folder\":false},{\"id\":57,\"is_folder\":false},{\"id\":90,\"is_folder\":false},{\"id\":87,\"is_folder\":false},{\"id\":89,\"is_folder\":false},{\"id\":88,\"is_folder\":false},{\"id\":86,\"is_folder\":false},{\"id\":85,\"is_folder\":false},{\"id\":26,\"is_folder\":false},{\"id\":34,\"is_folder\":false},{\"id\":38,\"is_folder\":false},{\"id\":36,\"is_folder\":false},{\"id\":48,\"is_folder\":false},{\"id\":49,\"is_folder\":false},{\"id\":84,\"is_folder\":false},{\"id\":1,\"is_folder\":true},{\"id\":83,\"is_folder\":false},{\"id\":62,\"is_folder\":false}]', NULL, 1, '2025-10-25 05:15:34', '2025-11-28 09:24:57');

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(120) NOT NULL,
  `slug` varchar(120) DEFAULT NULL,
  `status` varchar(60) NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `name`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Main menu', 'main-menu', 'published', '2025-10-20 17:06:40', '2025-10-28 12:02:46'),
(2, 'Information', 'information', 'published', '2025-10-20 17:06:40', '2025-10-20 17:06:40'),
(3, 'My Account', 'my-account', 'published', '2025-10-20 17:06:40', '2025-10-20 17:06:40'),
(4, 'Social Network', 'social-network', 'published', '2025-10-20 17:06:41', '2025-10-20 17:06:41');

-- --------------------------------------------------------

--
-- Table structure for table `menu_locations`
--

CREATE TABLE `menu_locations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `menu_id` bigint(20) UNSIGNED NOT NULL,
  `location` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_locations`
--

INSERT INTO `menu_locations` (`id`, `menu_id`, `location`, `created_at`, `updated_at`) VALUES
(1, 1, 'main-menu', '2025-10-20 17:06:40', '2025-10-20 17:06:40'),
(2, 2, 'information', '2025-10-20 17:06:40', '2025-10-20 17:06:40'),
(3, 3, 'my-account', '2025-10-20 17:06:40', '2025-10-20 17:06:40'),
(4, 4, 'social-network', '2025-10-20 17:06:41', '2025-10-20 17:06:41');

-- --------------------------------------------------------

--
-- Table structure for table `menu_nodes`
--

CREATE TABLE `menu_nodes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `menu_id` bigint(20) UNSIGNED NOT NULL,
  `parent_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `reference_id` bigint(20) UNSIGNED DEFAULT NULL,
  `reference_type` varchar(191) DEFAULT NULL,
  `url` varchar(191) DEFAULT NULL,
  `icon_font` varchar(191) DEFAULT NULL,
  `position` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `title` varchar(191) DEFAULT NULL,
  `css_class` varchar(191) DEFAULT NULL,
  `target` varchar(20) NOT NULL DEFAULT '_self',
  `has_child` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_nodes`
--

INSERT INTO `menu_nodes` (`id`, `menu_id`, `parent_id`, `reference_id`, `reference_type`, `url`, `icon_font`, `position`, `title`, `css_class`, `target`, `has_child`, `created_at`, `updated_at`) VALUES
(7, 1, 0, 0, NULL, '//products', '', 3, 'Shop', '', '_self', 0, '2025-10-20 17:06:40', '2025-10-28 12:02:46'),
(25, 2, 0, NULL, NULL, '/', NULL, 0, 'Custom Service', NULL, '_self', 0, '2025-10-20 17:06:40', '2025-10-20 17:06:40'),
(26, 2, 0, 11, 'Botble\\Page\\Models\\Page', '/faqs', NULL, 1, 'FAQs', NULL, '_self', 0, '2025-10-20 17:06:40', '2025-10-20 17:06:41'),
(27, 2, 0, NULL, NULL, 'orders/tracking', NULL, 2, 'Order Tracking', NULL, '_self', 0, '2025-10-20 17:06:40', '2025-10-20 17:06:40'),
(28, 2, 0, 8, 'Botble\\Page\\Models\\Page', '/contact', NULL, 3, 'Contact', NULL, '_self', 0, '2025-10-20 17:06:40', '2025-10-20 17:06:41'),
(29, 2, 0, NULL, NULL, '/', NULL, 4, 'Events', NULL, '_self', 0, '2025-10-20 17:06:40', '2025-10-20 17:06:40'),
(30, 3, 0, NULL, NULL, '/', NULL, 0, 'Delivery Information', NULL, '_self', 0, '2025-10-20 17:06:40', '2025-10-20 17:06:40'),
(31, 3, 0, NULL, NULL, '/', NULL, 1, 'Privacy Policy', NULL, '_self', 0, '2025-10-20 17:06:40', '2025-10-20 17:06:40'),
(32, 3, 0, NULL, NULL, '/', NULL, 2, 'Discount', NULL, '_self', 0, '2025-10-20 17:06:41', '2025-10-20 17:06:41'),
(33, 3, 0, NULL, NULL, '/', NULL, 3, 'Custom Service', NULL, '_self', 0, '2025-10-20 17:06:41', '2025-10-20 17:06:41'),
(34, 3, 0, NULL, NULL, '/', NULL, 4, 'Terms & Condition', NULL, '_self', 0, '2025-10-20 17:06:41', '2025-10-20 17:06:41'),
(35, 4, 0, NULL, NULL, 'https://facebook.com', 'ti ti-brand-facebook', 0, 'Facebook', NULL, '_self', 0, '2025-10-20 17:06:41', '2025-10-20 17:06:41'),
(36, 4, 0, NULL, NULL, 'https://dribbble.com', 'ti ti-brand-dribbble', 1, 'Dribble', NULL, '_self', 0, '2025-10-20 17:06:41', '2025-10-20 17:06:41'),
(37, 4, 0, NULL, NULL, 'https://x.com', 'ti ti-brand-x', 2, 'X (Twitter)', NULL, '_self', 0, '2025-10-20 17:06:41', '2025-10-20 17:06:41'),
(38, 4, 0, NULL, NULL, 'https://behance.com', 'ti ti-brand-behance', 3, 'Behance', NULL, '_self', 0, '2025-10-20 17:06:41', '2025-10-20 17:06:41'),
(39, 4, 0, NULL, NULL, 'https://youtube.com', 'ti ti-brand-youtube', 4, 'YouTube', NULL, '_self', 0, '2025-10-20 17:06:41', '2025-10-20 17:06:41'),
(40, 1, 0, 1, 'Botble\\Page\\Models\\Page', '', '', 0, 'Home', '', '_self', 0, '2025-10-25 05:49:49', '2025-10-28 12:02:46'),
(41, 1, 0, 7, 'Botble\\Page\\Models\\Page', '/about', '', 1, 'About', '', '_self', 0, '2025-10-25 06:37:30', '2025-10-28 12:02:46'),
(43, 1, 0, 8, 'Botble\\Page\\Models\\Page', '/contact', '', 4, 'Contact', '', '_self', 0, '2025-10-25 06:43:01', '2025-10-28 12:02:46'),
(45, 1, 0, 12, 'Botble\\Page\\Models\\Page', '/partners', NULL, 2, 'PARTNERS', NULL, '_self', 0, '2025-10-28 12:02:36', '2025-10-28 12:02:46');

-- --------------------------------------------------------

--
-- Table structure for table `meta_boxes`
--

CREATE TABLE `meta_boxes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `meta_key` varchar(191) NOT NULL,
  `meta_value` text DEFAULT NULL,
  `reference_id` bigint(20) UNSIGNED NOT NULL,
  `reference_type` varchar(120) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `meta_boxes`
--

INSERT INTO `meta_boxes` (`id`, `meta_key`, `meta_value`, `reference_id`, `reference_type`, `created_at`, `updated_at`) VALUES
(1, 'header_style', '[\"collapsed\"]', 1, 'Botble\\Page\\Models\\Page', '2025-10-20 17:05:54', '2025-10-20 17:05:54'),
(2, 'customize_footer', '[\"custom\"]', 2, 'Botble\\Page\\Models\\Page', '2025-10-20 17:05:54', '2025-10-20 17:05:54'),
(3, 'footer_background_color', '[\"#040404\"]', 2, 'Botble\\Page\\Models\\Page', '2025-10-20 17:05:54', '2025-10-20 17:05:54'),
(4, 'footer_text_color', '[\"#fff\"]', 2, 'Botble\\Page\\Models\\Page', '2025-10-20 17:05:54', '2025-10-20 17:05:54'),
(5, 'footer_text_muted_color', '[\"#a0a0a0\"]', 2, 'Botble\\Page\\Models\\Page', '2025-10-20 17:05:54', '2025-10-20 17:05:54'),
(6, 'footer_logo', '[\"general\\/logo-white.png\"]', 2, 'Botble\\Page\\Models\\Page', '2025-10-20 17:05:54', '2025-10-20 17:05:54'),
(7, 'footer_border_color', '[\"#282828\"]', 2, 'Botble\\Page\\Models\\Page', '2025-10-20 17:05:54', '2025-10-20 17:05:54'),
(8, 'footer_bottom_background_color', '[\"#040404\"]', 2, 'Botble\\Page\\Models\\Page', '2025-10-20 17:05:54', '2025-10-20 17:05:54'),
(9, 'customize_footer', '[\"custom\"]', 3, 'Botble\\Page\\Models\\Page', '2025-10-20 17:05:54', '2025-10-20 17:05:54'),
(10, 'footer_bottom_background_color', '[\"#f8f8f8\"]', 3, 'Botble\\Page\\Models\\Page', '2025-10-20 17:05:54', '2025-10-20 17:05:54'),
(11, 'header_style', '[\"centered-logo\"]', 4, 'Botble\\Page\\Models\\Page', '2025-10-20 17:05:54', '2025-10-20 17:05:54'),
(12, 'customize_footer', '[\"custom\"]', 4, 'Botble\\Page\\Models\\Page', '2025-10-20 17:05:54', '2025-10-20 17:05:54'),
(13, 'footer_background_color', '[\"#F7EFEC\"]', 4, 'Botble\\Page\\Models\\Page', '2025-10-20 17:05:54', '2025-10-20 17:05:54'),
(14, 'footer_bottom_background_color', '[\"#F7EFEC\"]', 4, 'Botble\\Page\\Models\\Page', '2025-10-20 17:05:54', '2025-10-20 17:05:54'),
(15, 'customize_footer', '[\"custom\"]', 5, 'Botble\\Page\\Models\\Page', '2025-10-20 17:05:54', '2025-10-20 17:05:54'),
(16, 'footer_background_color', '[\"#F7EFEC\"]', 5, 'Botble\\Page\\Models\\Page', '2025-10-20 17:05:54', '2025-10-20 17:05:54'),
(17, 'footer_bottom_background_color', '[\"#F7EFEC\"]', 5, 'Botble\\Page\\Models\\Page', '2025-10-20 17:05:54', '2025-10-20 17:05:54'),
(18, 'customize_footer', '[\"custom\"]', 7, 'Botble\\Page\\Models\\Page', '2025-10-20 17:05:54', '2025-10-20 17:05:54'),
(19, 'footer_background_color', '[\"#040404\"]', 7, 'Botble\\Page\\Models\\Page', '2025-10-20 17:05:54', '2025-10-20 17:05:54'),
(20, 'footer_text_color', '[\"#fff\"]', 7, 'Botble\\Page\\Models\\Page', '2025-10-20 17:05:54', '2025-10-20 17:05:54'),
(21, 'footer_text_muted_color', '[\"#a0a0a0\"]', 7, 'Botble\\Page\\Models\\Page', '2025-10-20 17:05:54', '2025-10-20 17:05:54'),
(22, 'footer_logo', '[\"general\\/logo-white.png\"]', 7, 'Botble\\Page\\Models\\Page', '2025-10-20 17:05:54', '2025-10-20 17:05:54'),
(23, 'footer_border_color', '[\"#282828\"]', 7, 'Botble\\Page\\Models\\Page', '2025-10-20 17:05:54', '2025-10-20 17:05:54'),
(24, 'footer_bottom_background_color', '[\"#040404\"]', 7, 'Botble\\Page\\Models\\Page', '2025-10-20 17:05:54', '2025-10-20 17:05:54'),
(25, 'subtitle', '[\"Accessories\"]', 1, 'Botble\\SimpleSlider\\Models\\SimpleSliderItem', '2025-10-20 17:06:01', '2025-10-20 17:06:01'),
(26, 'action_label', '[\"Shop Now\"]', 1, 'Botble\\SimpleSlider\\Models\\SimpleSliderItem', '2025-10-20 17:06:01', '2025-10-20 17:06:01'),
(27, 'subtitle', '[\"Accessories\"]', 2, 'Botble\\SimpleSlider\\Models\\SimpleSliderItem', '2025-10-20 17:06:01', '2025-10-20 17:06:01'),
(28, 'action_label', '[\"Shop Now\"]', 2, 'Botble\\SimpleSlider\\Models\\SimpleSliderItem', '2025-10-20 17:06:01', '2025-10-20 17:06:01'),
(29, 'subtitle', '[\"Accessories\"]', 3, 'Botble\\SimpleSlider\\Models\\SimpleSliderItem', '2025-10-20 17:06:01', '2025-10-20 17:06:01'),
(30, 'action_label', '[\"Shop Now\"]', 3, 'Botble\\SimpleSlider\\Models\\SimpleSliderItem', '2025-10-20 17:06:01', '2025-10-20 17:06:01'),
(31, 'subtitle', '[\"Winter\"]', 4, 'Botble\\SimpleSlider\\Models\\SimpleSliderItem', '2025-10-20 17:06:01', '2025-10-20 17:06:01'),
(32, 'action_label', '[\"Shop Now\"]', 4, 'Botble\\SimpleSlider\\Models\\SimpleSliderItem', '2025-10-20 17:06:01', '2025-10-20 17:06:01'),
(33, 'subtitle', '[\"Winter\"]', 5, 'Botble\\SimpleSlider\\Models\\SimpleSliderItem', '2025-10-20 17:06:01', '2025-10-20 17:06:01'),
(34, 'action_label', '[\"Shop Now\"]', 5, 'Botble\\SimpleSlider\\Models\\SimpleSliderItem', '2025-10-20 17:06:01', '2025-10-20 17:06:01'),
(35, 'subtitle', '[\"Winter\"]', 6, 'Botble\\SimpleSlider\\Models\\SimpleSliderItem', '2025-10-20 17:06:01', '2025-10-20 17:06:01'),
(36, 'action_label', '[\"Shop Now\"]', 6, 'Botble\\SimpleSlider\\Models\\SimpleSliderItem', '2025-10-20 17:06:01', '2025-10-20 17:06:01'),
(37, 'subtitle', '[null]', 7, 'Botble\\SimpleSlider\\Models\\SimpleSliderItem', '2025-10-20 17:06:01', '2025-10-20 17:06:01'),
(38, 'action_label', '[\"Shop Now\"]', 7, 'Botble\\SimpleSlider\\Models\\SimpleSliderItem', '2025-10-20 17:06:01', '2025-10-20 17:06:01'),
(39, 'subtitle', '[\"New Modern Stylist Fashionable Women\'s Wear holder\"]', 8, 'Botble\\SimpleSlider\\Models\\SimpleSliderItem', '2025-10-20 17:06:01', '2025-10-20 17:06:01'),
(40, 'action_label', '[\"Shop Now\"]', 8, 'Botble\\SimpleSlider\\Models\\SimpleSliderItem', '2025-10-20 17:06:01', '2025-10-20 17:06:01'),
(41, 'subtitle', '[\"New Modern Stylist Fashionable Women\'s Wear holder\"]', 9, 'Botble\\SimpleSlider\\Models\\SimpleSliderItem', '2025-10-20 17:06:01', '2025-10-20 17:06:01'),
(42, 'action_label', '[\"Shop Now\"]', 9, 'Botble\\SimpleSlider\\Models\\SimpleSliderItem', '2025-10-20 17:06:01', '2025-10-20 17:06:01'),
(43, 'subtitle', '[null]', 10, 'Botble\\SimpleSlider\\Models\\SimpleSliderItem', '2025-10-20 17:06:01', '2025-10-20 17:06:01'),
(44, 'action_label', '[\"Shop Now\"]', 10, 'Botble\\SimpleSlider\\Models\\SimpleSliderItem', '2025-10-20 17:06:01', '2025-10-20 17:06:01'),
(45, 'subtitle', '[null]', 11, 'Botble\\SimpleSlider\\Models\\SimpleSliderItem', '2025-10-20 17:06:01', '2025-10-20 17:06:01'),
(46, 'action_label', '[\"Shop Now\"]', 11, 'Botble\\SimpleSlider\\Models\\SimpleSliderItem', '2025-10-20 17:06:01', '2025-10-20 17:06:01'),
(47, 'subtitle', '[null]', 12, 'Botble\\SimpleSlider\\Models\\SimpleSliderItem', '2025-10-20 17:06:01', '2025-10-20 17:06:01'),
(48, 'action_label', '[\"Shop Now\"]', 12, 'Botble\\SimpleSlider\\Models\\SimpleSliderItem', '2025-10-20 17:06:01', '2025-10-20 17:06:01'),
(49, 'subtitle', '[null]', 13, 'Botble\\SimpleSlider\\Models\\SimpleSliderItem', '2025-10-20 17:06:01', '2025-10-20 17:06:01'),
(50, 'action_label', '[\"Shop Now\"]', 13, 'Botble\\SimpleSlider\\Models\\SimpleSliderItem', '2025-10-20 17:06:01', '2025-10-20 17:06:01'),
(51, 'subtitle', '[null]', 14, 'Botble\\SimpleSlider\\Models\\SimpleSliderItem', '2025-10-20 17:06:01', '2025-10-20 17:06:01'),
(52, 'action_label', '[\"Shop Now\"]', 14, 'Botble\\SimpleSlider\\Models\\SimpleSliderItem', '2025-10-20 17:06:01', '2025-10-20 17:06:01'),
(53, 'subtitle', '[null]', 15, 'Botble\\SimpleSlider\\Models\\SimpleSliderItem', '2025-10-20 17:06:01', '2025-10-20 17:06:01'),
(54, 'action_label', '[\"Shop Now\"]', 15, 'Botble\\SimpleSlider\\Models\\SimpleSliderItem', '2025-10-20 17:06:01', '2025-10-20 17:06:01'),
(55, 'subtitle', '[\"Collection\"]', 3, 'Botble\\Ads\\Models\\Ads', '2025-10-20 17:06:01', '2025-10-20 17:06:01'),
(56, 'subtitle', '[\"New Modern Stylist Fashionable <br> Women\'s Wear holder\"]', 4, 'Botble\\Ads\\Models\\Ads', '2025-10-20 17:06:01', '2025-10-20 17:06:01'),
(57, 'subtitle', '[\"Furniture\"]', 5, 'Botble\\Ads\\Models\\Ads', '2025-10-20 17:06:01', '2025-10-20 17:06:01'),
(58, 'subtitle', '[\"100 Added\"]', 6, 'Botble\\Ads\\Models\\Ads', '2025-10-20 17:06:01', '2025-10-20 17:06:01'),
(59, 'subtitle', '[\"-60% Offer\"]', 7, 'Botble\\Ads\\Models\\Ads', '2025-10-20 17:06:01', '2025-10-20 17:06:01'),
(60, 'subtitle', '[\"Best Bakery Products\"]', 8, 'Botble\\Ads\\Models\\Ads', '2025-10-20 17:06:01', '2025-10-20 17:06:01'),
(61, 'subtitle', '[\"Best Bakery Products\"]', 9, 'Botble\\Ads\\Models\\Ads', '2025-10-20 17:06:01', '2025-10-20 17:06:01'),
(62, 'faq_schema_config', '[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]', 1, 'Botble\\Ecommerce\\Models\\Product', '2025-10-20 17:06:15', '2025-10-20 17:06:15'),
(63, 'faq_schema_config', '[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]', 2, 'Botble\\Ecommerce\\Models\\Product', '2025-10-20 17:06:15', '2025-10-20 17:06:15'),
(64, 'faq_schema_config', '[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]', 3, 'Botble\\Ecommerce\\Models\\Product', '2025-10-20 17:06:15', '2025-10-20 17:06:15'),
(65, 'faq_schema_config', '[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]', 4, 'Botble\\Ecommerce\\Models\\Product', '2025-10-20 17:06:15', '2025-10-20 17:06:15'),
(66, 'faq_schema_config', '[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]', 5, 'Botble\\Ecommerce\\Models\\Product', '2025-10-20 17:06:16', '2025-10-20 17:06:16'),
(67, 'faq_schema_config', '[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]', 6, 'Botble\\Ecommerce\\Models\\Product', '2025-10-20 17:06:16', '2025-10-20 17:06:16'),
(68, 'faq_schema_config', '[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]', 7, 'Botble\\Ecommerce\\Models\\Product', '2025-10-20 17:06:16', '2025-10-20 17:06:16'),
(69, 'faq_schema_config', '[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]', 8, 'Botble\\Ecommerce\\Models\\Product', '2025-10-20 17:06:16', '2025-10-20 17:06:16'),
(70, 'faq_schema_config', '[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]', 9, 'Botble\\Ecommerce\\Models\\Product', '2025-10-20 17:06:16', '2025-10-20 17:06:16'),
(71, 'faq_schema_config', '[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]', 10, 'Botble\\Ecommerce\\Models\\Product', '2025-10-20 17:06:16', '2025-10-20 17:06:16'),
(72, 'faq_schema_config', '[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]', 11, 'Botble\\Ecommerce\\Models\\Product', '2025-10-20 17:06:16', '2025-10-20 17:06:16'),
(73, 'faq_schema_config', '[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]', 12, 'Botble\\Ecommerce\\Models\\Product', '2025-10-20 17:06:16', '2025-10-20 17:06:16'),
(74, 'faq_schema_config', '[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]', 13, 'Botble\\Ecommerce\\Models\\Product', '2025-10-20 17:06:16', '2025-10-20 17:06:16'),
(75, 'faq_schema_config', '[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]', 14, 'Botble\\Ecommerce\\Models\\Product', '2025-10-20 17:06:16', '2025-10-20 17:06:16'),
(76, 'faq_schema_config', '[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]', 15, 'Botble\\Ecommerce\\Models\\Product', '2025-10-20 17:06:16', '2025-10-20 17:06:16'),
(77, 'faq_schema_config', '[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]', 16, 'Botble\\Ecommerce\\Models\\Product', '2025-10-20 17:06:16', '2025-10-20 17:06:16'),
(78, 'faq_schema_config', '[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]', 17, 'Botble\\Ecommerce\\Models\\Product', '2025-10-20 17:06:16', '2025-10-20 17:06:16'),
(79, 'faq_schema_config', '[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]', 18, 'Botble\\Ecommerce\\Models\\Product', '2025-10-20 17:06:16', '2025-10-20 17:06:16'),
(80, 'faq_schema_config', '[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]', 19, 'Botble\\Ecommerce\\Models\\Product', '2025-10-20 17:06:16', '2025-10-20 17:06:16'),
(81, 'faq_schema_config', '[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]', 20, 'Botble\\Ecommerce\\Models\\Product', '2025-10-20 17:06:16', '2025-10-20 17:06:16'),
(82, 'faq_schema_config', '[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]', 21, 'Botble\\Ecommerce\\Models\\Product', '2025-10-20 17:06:16', '2025-10-20 17:06:16'),
(83, 'faq_schema_config', '[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]', 22, 'Botble\\Ecommerce\\Models\\Product', '2025-10-20 17:06:16', '2025-10-20 17:06:16'),
(84, 'faq_schema_config', '[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]', 23, 'Botble\\Ecommerce\\Models\\Product', '2025-10-20 17:06:16', '2025-10-20 17:06:16');
INSERT INTO `meta_boxes` (`id`, `meta_key`, `meta_value`, `reference_id`, `reference_type`, `created_at`, `updated_at`) VALUES
(85, 'faq_schema_config', '[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]', 24, 'Botble\\Ecommerce\\Models\\Product', '2025-10-20 17:06:16', '2025-10-20 17:06:16'),
(86, 'faq_schema_config', '[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]', 25, 'Botble\\Ecommerce\\Models\\Product', '2025-10-20 17:06:16', '2025-10-20 17:06:16'),
(87, 'faq_schema_config', '[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]', 26, 'Botble\\Ecommerce\\Models\\Product', '2025-10-20 17:06:16', '2025-10-20 17:06:16'),
(88, 'faq_schema_config', '[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]', 27, 'Botble\\Ecommerce\\Models\\Product', '2025-10-20 17:06:16', '2025-10-20 17:06:16'),
(89, 'faq_schema_config', '[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]', 28, 'Botble\\Ecommerce\\Models\\Product', '2025-10-20 17:06:16', '2025-10-20 17:06:16'),
(90, 'faq_schema_config', '[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]', 29, 'Botble\\Ecommerce\\Models\\Product', '2025-10-20 17:06:16', '2025-10-20 17:06:16'),
(91, 'faq_schema_config', '[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]', 30, 'Botble\\Ecommerce\\Models\\Product', '2025-10-20 17:06:16', '2025-10-20 17:06:16'),
(92, 'faq_schema_config', '[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]', 31, 'Botble\\Ecommerce\\Models\\Product', '2025-10-20 17:06:16', '2025-10-20 17:06:16'),
(93, 'faq_schema_config', '[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]', 32, 'Botble\\Ecommerce\\Models\\Product', '2025-10-20 17:06:17', '2025-10-20 17:06:17'),
(94, 'faq_schema_config', '[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]', 33, 'Botble\\Ecommerce\\Models\\Product', '2025-10-20 17:06:17', '2025-10-20 17:06:17'),
(95, 'faq_schema_config', '[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]', 34, 'Botble\\Ecommerce\\Models\\Product', '2025-10-20 17:06:17', '2025-10-20 17:06:17'),
(96, 'faq_schema_config', '[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]', 35, 'Botble\\Ecommerce\\Models\\Product', '2025-10-20 17:06:17', '2025-10-20 17:06:17'),
(97, 'faq_schema_config', '[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]', 36, 'Botble\\Ecommerce\\Models\\Product', '2025-10-20 17:06:17', '2025-10-20 17:06:17'),
(98, 'faq_schema_config', '[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]', 37, 'Botble\\Ecommerce\\Models\\Product', '2025-10-20 17:06:17', '2025-10-20 17:06:17'),
(99, 'faq_schema_config', '[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]', 38, 'Botble\\Ecommerce\\Models\\Product', '2025-10-20 17:06:17', '2025-10-20 17:06:17'),
(100, 'faq_schema_config', '[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]', 39, 'Botble\\Ecommerce\\Models\\Product', '2025-10-20 17:06:17', '2025-10-20 17:06:17'),
(101, 'faq_schema_config', '[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]', 40, 'Botble\\Ecommerce\\Models\\Product', '2025-10-20 17:06:17', '2025-10-20 17:06:17'),
(102, 'faq_schema_config', '[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]', 41, 'Botble\\Ecommerce\\Models\\Product', '2025-10-20 17:06:17', '2025-10-20 17:06:17'),
(103, 'faq_schema_config', '[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]', 42, 'Botble\\Ecommerce\\Models\\Product', '2025-10-20 17:06:17', '2025-10-20 17:06:17'),
(104, 'faq_schema_config', '[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]', 43, 'Botble\\Ecommerce\\Models\\Product', '2025-10-20 17:06:17', '2025-10-20 17:06:17'),
(105, 'faq_schema_config', '[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]', 44, 'Botble\\Ecommerce\\Models\\Product', '2025-10-20 17:06:17', '2025-10-20 17:06:17'),
(106, 'faq_schema_config', '[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]', 45, 'Botble\\Ecommerce\\Models\\Product', '2025-10-20 17:06:17', '2025-10-20 17:06:17'),
(107, 'faq_schema_config', '[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]', 46, 'Botble\\Ecommerce\\Models\\Product', '2025-10-20 17:06:17', '2025-10-20 17:06:17'),
(108, 'faq_schema_config', '[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]', 47, 'Botble\\Ecommerce\\Models\\Product', '2025-10-20 17:06:17', '2025-10-20 17:06:17'),
(109, 'faq_schema_config', '[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]', 48, 'Botble\\Ecommerce\\Models\\Product', '2025-10-20 17:06:17', '2025-10-20 17:06:17'),
(110, 'faq_schema_config', '[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]', 49, 'Botble\\Ecommerce\\Models\\Product', '2025-10-20 17:06:17', '2025-10-20 17:06:17'),
(111, 'faq_schema_config', '[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]', 50, 'Botble\\Ecommerce\\Models\\Product', '2025-10-20 17:06:17', '2025-10-20 17:06:17');
INSERT INTO `meta_boxes` (`id`, `meta_key`, `meta_value`, `reference_id`, `reference_type`, `created_at`, `updated_at`) VALUES
(112, 'faq_schema_config', '[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]', 51, 'Botble\\Ecommerce\\Models\\Product', '2025-10-20 17:06:17', '2025-10-20 17:06:17'),
(113, 'faq_schema_config', '[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]', 52, 'Botble\\Ecommerce\\Models\\Product', '2025-10-20 17:06:17', '2025-10-20 17:06:17'),
(114, 'faq_schema_config', '[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]', 53, 'Botble\\Ecommerce\\Models\\Product', '2025-10-20 17:06:17', '2025-10-20 17:06:17'),
(115, 'faq_schema_config', '[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]', 54, 'Botble\\Ecommerce\\Models\\Product', '2025-10-20 17:06:17', '2025-10-20 17:06:17'),
(116, 'faq_schema_config', '[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]', 55, 'Botble\\Ecommerce\\Models\\Product', '2025-10-20 17:06:17', '2025-10-20 17:06:17'),
(117, 'faq_schema_config', '[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]', 56, 'Botble\\Ecommerce\\Models\\Product', '2025-10-20 17:06:18', '2025-10-20 17:06:18'),
(118, 'faq_schema_config', '[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]', 57, 'Botble\\Ecommerce\\Models\\Product', '2025-10-20 17:06:18', '2025-10-20 17:06:18'),
(119, 'faq_schema_config', '[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]', 58, 'Botble\\Ecommerce\\Models\\Product', '2025-10-20 17:06:18', '2025-10-20 17:06:18'),
(120, 'faq_schema_config', '[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]', 59, 'Botble\\Ecommerce\\Models\\Product', '2025-10-20 17:06:18', '2025-10-20 17:06:18'),
(121, 'faq_schema_config', '[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]', 60, 'Botble\\Ecommerce\\Models\\Product', '2025-10-20 17:06:18', '2025-10-20 17:06:18'),
(122, 'faq_schema_config', '[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]', 61, 'Botble\\Ecommerce\\Models\\Product', '2025-10-20 17:06:18', '2025-10-20 17:06:18'),
(123, 'faq_schema_config', '[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]', 62, 'Botble\\Ecommerce\\Models\\Product', '2025-10-20 17:06:18', '2025-10-20 17:06:18'),
(124, 'faq_schema_config', '[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]', 63, 'Botble\\Ecommerce\\Models\\Product', '2025-10-20 17:06:18', '2025-10-20 17:06:18'),
(125, 'faq_schema_config', '[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]', 64, 'Botble\\Ecommerce\\Models\\Product', '2025-10-20 17:06:18', '2025-10-20 17:06:18'),
(126, 'faq_schema_config', '[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]', 65, 'Botble\\Ecommerce\\Models\\Product', '2025-10-20 17:06:18', '2025-10-20 17:06:18'),
(127, 'faq_schema_config', '[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]', 66, 'Botble\\Ecommerce\\Models\\Product', '2025-10-20 17:06:18', '2025-10-20 17:06:18'),
(128, 'faq_schema_config', '[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]', 67, 'Botble\\Ecommerce\\Models\\Product', '2025-10-20 17:06:18', '2025-10-20 17:06:18'),
(129, 'faq_schema_config', '[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]', 68, 'Botble\\Ecommerce\\Models\\Product', '2025-10-20 17:06:18', '2025-10-20 17:06:18'),
(130, 'faq_schema_config', '[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]', 69, 'Botble\\Ecommerce\\Models\\Product', '2025-10-20 17:06:18', '2025-10-20 17:06:18'),
(131, 'faq_schema_config', '[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]', 70, 'Botble\\Ecommerce\\Models\\Product', '2025-10-20 17:06:18', '2025-10-20 17:06:18'),
(132, 'faq_schema_config', '[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]', 71, 'Botble\\Ecommerce\\Models\\Product', '2025-10-20 17:06:19', '2025-10-20 17:06:19'),
(133, 'faq_schema_config', '[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]', 72, 'Botble\\Ecommerce\\Models\\Product', '2025-10-20 17:06:19', '2025-10-20 17:06:19'),
(134, 'faq_schema_config', '[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]', 73, 'Botble\\Ecommerce\\Models\\Product', '2025-10-20 17:06:19', '2025-10-20 17:06:19'),
(135, 'faq_schema_config', '[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]', 74, 'Botble\\Ecommerce\\Models\\Product', '2025-10-20 17:06:19', '2025-10-20 17:06:19'),
(136, 'faq_schema_config', '[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]', 75, 'Botble\\Ecommerce\\Models\\Product', '2025-10-20 17:06:19', '2025-10-20 17:06:19'),
(137, 'title', '[\"Satisfied client testimonial\"]', 1, 'Botble\\Testimonial\\Models\\Testimonial', '2025-10-20 17:06:42', '2025-10-20 17:06:42'),
(138, 'star', '[5]', 1, 'Botble\\Testimonial\\Models\\Testimonial', '2025-10-20 17:06:42', '2025-10-20 17:06:42'),
(139, 'title', '[\"98% of residents recommend us\"]', 2, 'Botble\\Testimonial\\Models\\Testimonial', '2025-10-20 17:06:42', '2025-10-20 17:06:42'),
(140, 'star', '[5]', 2, 'Botble\\Testimonial\\Models\\Testimonial', '2025-10-20 17:06:42', '2025-10-20 17:06:42'),
(141, 'title', '[\"Our success stories\"]', 3, 'Botble\\Testimonial\\Models\\Testimonial', '2025-10-20 17:06:43', '2025-10-20 17:06:43'),
(142, 'star', '[5]', 3, 'Botble\\Testimonial\\Models\\Testimonial', '2025-10-20 17:06:43', '2025-10-20 17:06:43'),
(143, 'title', '[\"This is simply unbelievable\"]', 4, 'Botble\\Testimonial\\Models\\Testimonial', '2025-10-20 17:06:43', '2025-10-20 17:06:43'),
(144, 'star', '[5]', 4, 'Botble\\Testimonial\\Models\\Testimonial', '2025-10-20 17:06:43', '2025-10-20 17:06:43'),
(145, 'customize_footer', '[\"inherit\"]', 1, 'Botble\\Page\\Models\\Page', '2025-10-25 01:51:06', '2025-10-25 01:51:06'),
(146, 'footer_background_color', '[\"#F8F8F8\"]', 1, 'Botble\\Page\\Models\\Page', '2025-10-25 01:51:06', '2025-10-25 01:51:06'),
(147, 'footer_text_color', '[\"#000000\"]', 1, 'Botble\\Page\\Models\\Page', '2025-10-25 01:51:06', '2025-10-25 01:51:06'),
(148, 'footer_text_muted_color', '[\"#686666\"]', 1, 'Botble\\Page\\Models\\Page', '2025-10-25 01:51:06', '2025-10-25 01:51:06'),
(149, 'footer_logo', '[\"general\\/logo-white.png\"]', 1, 'Botble\\Page\\Models\\Page', '2025-10-25 01:51:06', '2025-10-25 01:51:06'),
(150, 'footer_border_color', '[\"#E0E0E0\"]', 1, 'Botble\\Page\\Models\\Page', '2025-10-25 01:51:06', '2025-10-25 01:51:06'),
(151, 'footer_bottom_background_color', '[\"#ededed\"]', 1, 'Botble\\Page\\Models\\Page', '2025-10-25 01:51:06', '2025-10-25 01:51:06'),
(152, 'seo_meta', '[{\"index\":\"index\"}]', 12, 'Botble\\Blog\\Models\\Post', '2025-10-25 08:00:03', '2025-10-25 08:00:03'),
(153, 'seo_meta', '[{\"index\":\"index\"}]', 13, 'Botble\\Blog\\Models\\Post', '2025-10-25 08:02:20', '2025-10-25 08:02:20'),
(154, 'seo_meta', '[{\"index\":\"index\"}]', 14, 'Botble\\Blog\\Models\\Post', '2025-10-27 02:27:48', '2025-10-27 02:27:48'),
(155, 'seo_meta', '[{\"index\":\"index\"}]', 15, 'Botble\\Blog\\Models\\Post', '2025-10-27 03:57:00', '2025-10-27 03:57:00'),
(165, 'seo_meta', '[{\"index\":\"index\"}]', 275, 'Botble\\Ecommerce\\Models\\Product', '2025-10-27 04:31:46', '2025-10-27 04:31:46'),
(166, 'seo_meta', '[{\"index\":\"index\"}]', 274, 'Botble\\Ecommerce\\Models\\Product', '2025-10-27 04:32:33', '2025-10-27 04:32:33'),
(168, 'header_style', '[\"inherit\"]', 7, 'Botble\\Page\\Models\\Page', '2025-10-28 12:01:24', '2025-10-28 12:01:24'),
(169, 'seo_meta', '[{\"index\":\"index\"}]', 7, 'Botble\\Page\\Models\\Page', '2025-10-28 12:01:24', '2025-10-28 12:01:24'),
(170, 'header_style', '[\"inherit\"]', 12, 'Botble\\Page\\Models\\Page', '2025-10-28 12:02:15', '2025-10-28 12:02:15'),
(171, 'customize_footer', '[\"inherit\"]', 12, 'Botble\\Page\\Models\\Page', '2025-10-28 12:02:15', '2025-10-28 12:02:15'),
(172, 'footer_background_color', '[\"#F8F8F8\"]', 12, 'Botble\\Page\\Models\\Page', '2025-10-28 12:02:15', '2025-10-28 12:02:15'),
(173, 'footer_text_color', '[\"#000000\"]', 12, 'Botble\\Page\\Models\\Page', '2025-10-28 12:02:15', '2025-10-28 12:02:15'),
(174, 'footer_text_muted_color', '[\"#686666\"]', 12, 'Botble\\Page\\Models\\Page', '2025-10-28 12:02:15', '2025-10-28 12:02:15'),
(175, 'footer_logo', '[\"logo-2.png\"]', 12, 'Botble\\Page\\Models\\Page', '2025-10-28 12:02:15', '2025-10-28 12:02:15'),
(176, 'footer_border_color', '[\"#E0E0E0\"]', 12, 'Botble\\Page\\Models\\Page', '2025-10-28 12:02:15', '2025-10-28 12:02:15'),
(177, 'footer_bottom_background_color', '[\"#ededed\"]', 12, 'Botble\\Page\\Models\\Page', '2025-10-28 12:02:15', '2025-10-28 12:02:15'),
(178, 'seo_meta', '[{\"index\":\"index\"}]', 12, 'Botble\\Page\\Models\\Page', '2025-10-28 12:02:15', '2025-10-28 12:02:15'),
(180, 'header_style', '[\"inherit\"]', 8, 'Botble\\Page\\Models\\Page', '2025-10-31 07:32:54', '2025-10-31 07:32:54'),
(181, 'customize_footer', '[\"inherit\"]', 8, 'Botble\\Page\\Models\\Page', '2025-10-31 07:32:54', '2025-10-31 07:32:54'),
(182, 'footer_background_color', '[\"#F8F8F8\"]', 8, 'Botble\\Page\\Models\\Page', '2025-10-31 07:32:54', '2025-10-31 07:32:54'),
(183, 'footer_text_color', '[\"#000000\"]', 8, 'Botble\\Page\\Models\\Page', '2025-10-31 07:32:54', '2025-10-31 07:32:54'),
(184, 'footer_text_muted_color', '[\"#686666\"]', 8, 'Botble\\Page\\Models\\Page', '2025-10-31 07:32:54', '2025-10-31 07:32:54');
INSERT INTO `meta_boxes` (`id`, `meta_key`, `meta_value`, `reference_id`, `reference_type`, `created_at`, `updated_at`) VALUES
(185, 'footer_logo', '[\"logo-2.png\"]', 8, 'Botble\\Page\\Models\\Page', '2025-10-31 07:32:54', '2025-10-31 07:32:54'),
(186, 'footer_border_color', '[\"#E0E0E0\"]', 8, 'Botble\\Page\\Models\\Page', '2025-10-31 07:32:54', '2025-10-31 07:32:54'),
(187, 'footer_bottom_background_color', '[\"#ededed\"]', 8, 'Botble\\Page\\Models\\Page', '2025-10-31 07:32:54', '2025-10-31 07:32:54'),
(188, 'seo_meta', '[{\"index\":\"index\"}]', 8, 'Botble\\Page\\Models\\Page', '2025-10-31 07:32:54', '2025-10-31 07:32:54'),
(189, 'seo_meta', '[{\"index\":\"index\"}]', 29, 'Botble\\Ecommerce\\Models\\ProductCategory', '2025-11-06 12:33:32', '2025-11-06 12:33:32'),
(191, 'seo_meta', '[{\"index\":\"index\"}]', 31, 'Botble\\Ecommerce\\Models\\ProductCategory', '2025-11-07 06:00:22', '2025-11-07 06:00:22'),
(192, 'seo_meta', '[{\"index\":\"index\"}]', 32, 'Botble\\Ecommerce\\Models\\ProductCategory', '2025-11-07 06:00:49', '2025-11-07 06:00:49'),
(193, 'seo_meta', '[{\"index\":\"index\"}]', 33, 'Botble\\Ecommerce\\Models\\ProductCategory', '2025-11-07 06:01:10', '2025-11-07 06:01:10'),
(194, 'seo_meta', '[{\"index\":\"index\"}]', 34, 'Botble\\Ecommerce\\Models\\ProductCategory', '2025-11-07 06:03:03', '2025-11-07 06:03:03'),
(195, 'seo_meta', '[{\"index\":\"index\"}]', 5, 'Botble\\Blog\\Models\\Category', '2025-11-10 07:07:13', '2025-11-10 07:07:13'),
(196, 'footer_text_color', '[\"#000000\"]', 4, 'Botble\\Page\\Models\\Page', '2025-11-10 08:50:40', '2025-11-10 08:50:40'),
(197, 'footer_text_muted_color', '[\"#686666\"]', 4, 'Botble\\Page\\Models\\Page', '2025-11-10 08:50:40', '2025-11-10 08:50:40'),
(198, 'footer_logo', '[\"logo-2.png\"]', 4, 'Botble\\Page\\Models\\Page', '2025-11-10 08:50:40', '2025-11-10 08:50:40'),
(199, 'footer_border_color', '[\"#E0E0E0\"]', 4, 'Botble\\Page\\Models\\Page', '2025-11-10 08:50:40', '2025-11-10 08:50:40'),
(200, 'seo_meta', '[{\"index\":\"index\"}]', 4, 'Botble\\Page\\Models\\Page', '2025-11-10 08:50:40', '2025-11-10 08:50:40'),
(201, 'header_style', '[\"inherit\"]', 5, 'Botble\\Page\\Models\\Page', '2025-11-10 08:50:49', '2025-11-10 08:50:49'),
(202, 'footer_text_color', '[\"#000000\"]', 5, 'Botble\\Page\\Models\\Page', '2025-11-10 08:50:49', '2025-11-10 08:50:49'),
(203, 'footer_text_muted_color', '[\"#686666\"]', 5, 'Botble\\Page\\Models\\Page', '2025-11-10 08:50:49', '2025-11-10 08:50:49'),
(204, 'footer_logo', '[\"logo-2.png\"]', 5, 'Botble\\Page\\Models\\Page', '2025-11-10 08:50:49', '2025-11-10 08:50:49'),
(205, 'footer_border_color', '[\"#E0E0E0\"]', 5, 'Botble\\Page\\Models\\Page', '2025-11-10 08:50:49', '2025-11-10 08:50:49'),
(206, 'seo_meta', '[{\"index\":\"index\"}]', 5, 'Botble\\Page\\Models\\Page', '2025-11-10 08:50:49', '2025-11-10 08:50:49'),
(207, 'header_style', '[\"inherit\"]', 3, 'Botble\\Page\\Models\\Page', '2025-11-10 08:51:00', '2025-11-10 08:51:00'),
(208, 'footer_background_color', '[\"#F8F8F8\"]', 3, 'Botble\\Page\\Models\\Page', '2025-11-10 08:51:00', '2025-11-10 08:51:00'),
(209, 'footer_text_color', '[\"#000000\"]', 3, 'Botble\\Page\\Models\\Page', '2025-11-10 08:51:00', '2025-11-10 08:51:00'),
(210, 'footer_text_muted_color', '[\"#686666\"]', 3, 'Botble\\Page\\Models\\Page', '2025-11-10 08:51:00', '2025-11-10 08:51:00'),
(211, 'footer_logo', '[\"logo-2.png\"]', 3, 'Botble\\Page\\Models\\Page', '2025-11-10 08:51:00', '2025-11-10 08:51:00'),
(212, 'footer_border_color', '[\"#E0E0E0\"]', 3, 'Botble\\Page\\Models\\Page', '2025-11-10 08:51:00', '2025-11-10 08:51:00'),
(213, 'seo_meta', '[{\"index\":\"index\"}]', 3, 'Botble\\Page\\Models\\Page', '2025-11-10 08:51:00', '2025-11-10 08:51:00'),
(214, 'header_style', '[\"inherit\"]', 2, 'Botble\\Page\\Models\\Page', '2025-11-10 08:51:34', '2025-11-10 08:51:34'),
(215, 'seo_meta', '[{\"index\":\"index\"}]', 2, 'Botble\\Page\\Models\\Page', '2025-11-10 08:51:34', '2025-11-10 08:51:34'),
(216, 'header_style', '[\"inherit\"]', 9, 'Botble\\Page\\Models\\Page', '2025-11-10 08:52:01', '2025-11-10 08:52:01'),
(217, 'customize_footer', '[\"inherit\"]', 9, 'Botble\\Page\\Models\\Page', '2025-11-10 08:52:01', '2025-11-10 08:52:01'),
(218, 'footer_background_color', '[\"#F8F8F8\"]', 9, 'Botble\\Page\\Models\\Page', '2025-11-10 08:52:01', '2025-11-10 08:52:01'),
(219, 'footer_text_color', '[\"#000000\"]', 9, 'Botble\\Page\\Models\\Page', '2025-11-10 08:52:01', '2025-11-10 08:52:01'),
(220, 'footer_text_muted_color', '[\"#686666\"]', 9, 'Botble\\Page\\Models\\Page', '2025-11-10 08:52:01', '2025-11-10 08:52:01'),
(221, 'footer_logo', '[\"logo-2.png\"]', 9, 'Botble\\Page\\Models\\Page', '2025-11-10 08:52:01', '2025-11-10 08:52:01'),
(222, 'footer_border_color', '[\"#E0E0E0\"]', 9, 'Botble\\Page\\Models\\Page', '2025-11-10 08:52:01', '2025-11-10 08:52:01'),
(223, 'footer_bottom_background_color', '[\"#ededed\"]', 9, 'Botble\\Page\\Models\\Page', '2025-11-10 08:52:01', '2025-11-10 08:52:01'),
(224, 'seo_meta', '[{\"index\":\"index\"}]', 9, 'Botble\\Page\\Models\\Page', '2025-11-10 08:52:01', '2025-11-10 08:52:01'),
(225, 'header_style', '[\"inherit\"]', 10, 'Botble\\Page\\Models\\Page', '2025-11-10 08:55:13', '2025-11-10 08:55:13'),
(226, 'customize_footer', '[\"inherit\"]', 10, 'Botble\\Page\\Models\\Page', '2025-11-10 08:55:13', '2025-11-10 08:55:13'),
(227, 'footer_background_color', '[\"#F8F8F8\"]', 10, 'Botble\\Page\\Models\\Page', '2025-11-10 08:55:13', '2025-11-10 08:55:13'),
(228, 'footer_text_color', '[\"#000000\"]', 10, 'Botble\\Page\\Models\\Page', '2025-11-10 08:55:13', '2025-11-10 08:55:13'),
(229, 'footer_text_muted_color', '[\"#686666\"]', 10, 'Botble\\Page\\Models\\Page', '2025-11-10 08:55:13', '2025-11-10 08:55:13'),
(230, 'footer_logo', '[\"logo-2.png\"]', 10, 'Botble\\Page\\Models\\Page', '2025-11-10 08:55:13', '2025-11-10 08:55:13'),
(231, 'footer_border_color', '[\"#E0E0E0\"]', 10, 'Botble\\Page\\Models\\Page', '2025-11-10 08:55:13', '2025-11-10 08:55:13'),
(232, 'footer_bottom_background_color', '[\"#ededed\"]', 10, 'Botble\\Page\\Models\\Page', '2025-11-10 08:55:13', '2025-11-10 08:55:13'),
(233, 'seo_meta', '[{\"index\":\"index\"}]', 10, 'Botble\\Page\\Models\\Page', '2025-11-10 08:55:13', '2025-11-10 08:55:13'),
(234, 'seo_meta', '[{\"index\":\"index\"}]', 374, 'Botble\\Ecommerce\\Models\\Product', '2025-11-19 12:24:52', '2025-11-19 12:24:52'),
(235, 'seo_meta', '[{\"index\":\"index\"}]', 375, 'Botble\\Ecommerce\\Models\\Product', '2025-11-28 05:26:36', '2025-11-28 05:26:36'),
(236, 'seo_meta', '[{\"index\":\"index\"}]', 376, 'Botble\\Ecommerce\\Models\\Product', '2025-11-28 06:41:17', '2025-11-28 06:41:17'),
(237, 'seo_meta', '[{\"index\":\"index\"}]', 377, 'Botble\\Ecommerce\\Models\\Product', '2025-11-28 06:44:41', '2025-11-28 06:44:41'),
(238, 'seo_meta', '[{\"index\":\"index\"}]', 378, 'Botble\\Ecommerce\\Models\\Product', '2025-11-28 09:29:39', '2025-11-28 09:29:39');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000001_create_cache_table', 1),
(2, '2013_04_09_032329_create_base_tables', 1),
(3, '2013_04_09_062329_create_revisions_table', 1),
(4, '2014_10_12_000000_create_users_table', 1),
(5, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(6, '2016_06_10_230148_create_acl_tables', 1),
(7, '2016_06_14_230857_create_menus_table', 1),
(8, '2016_06_28_221418_create_pages_table', 1),
(9, '2016_10_05_074239_create_setting_table', 1),
(10, '2016_11_28_032840_create_dashboard_widget_tables', 1),
(11, '2016_12_16_084601_create_widgets_table', 1),
(12, '2017_05_09_070343_create_media_tables', 1),
(13, '2017_11_03_070450_create_slug_table', 1),
(14, '2019_01_05_053554_create_jobs_table', 1),
(15, '2019_08_19_000000_create_failed_jobs_table', 1),
(16, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(17, '2022_04_20_100851_add_index_to_media_table', 1),
(18, '2022_04_20_101046_add_index_to_menu_table', 1),
(19, '2022_07_10_034813_move_lang_folder_to_root', 1),
(20, '2022_08_04_051940_add_missing_column_expires_at', 1),
(21, '2022_09_01_000001_create_admin_notifications_tables', 1),
(22, '2022_10_14_024629_drop_column_is_featured', 1),
(23, '2022_11_18_063357_add_missing_timestamp_in_table_settings', 1),
(24, '2022_12_02_093615_update_slug_index_columns', 1),
(25, '2023_01_30_024431_add_alt_to_media_table', 1),
(26, '2023_02_16_042611_drop_table_password_resets', 1),
(27, '2023_04_23_005903_add_column_permissions_to_admin_notifications', 1),
(28, '2023_05_10_075124_drop_column_id_in_role_users_table', 1),
(29, '2023_08_21_090810_make_page_content_nullable', 1),
(30, '2023_08_26_080444_fix_missing_copyright_widget', 1),
(31, '2023_09_07_025340_activate_mollie_and_sale_popup_plugin', 1),
(32, '2023_09_14_021936_update_index_for_slugs_table', 1),
(33, '2023_10_27_023808_update_page_metabox', 1),
(34, '2023_11_22_071805_migrate_header_messages_to_announcements_table', 1),
(35, '2023_12_07_095130_add_color_column_to_media_folders_table', 1),
(36, '2023_12_17_162208_make_sure_column_color_in_media_folders_nullable', 1),
(37, '2024_03_25_000000_migrate_rename_shortcode_contact_box_to_contact_form', 1),
(38, '2024_04_04_110758_update_value_column_in_user_meta_table', 1),
(39, '2024_05_12_091229_add_column_visibility_to_table_media_files', 1),
(40, '2024_07_07_091316_fix_column_url_in_menu_nodes_table', 1),
(41, '2024_07_12_100000_change_random_hash_for_media', 1),
(42, '2024_09_30_024515_create_sessions_table', 1),
(43, '2024_12_19_000001_create_device_tokens_table', 1),
(44, '2024_12_19_000002_create_push_notifications_table', 1),
(45, '2024_12_19_000003_create_push_notification_recipients_table', 1),
(46, '2024_12_30_000001_create_user_settings_table', 1),
(47, '2025_07_06_030754_add_phone_to_users_table', 1),
(48, '2025_07_31_add_performance_indexes_to_slugs_table', 1),
(49, '2020_11_18_150916_ads_create_ads_table', 2),
(50, '2021_12_02_035301_add_ads_translations_table', 2),
(51, '2023_04_17_062645_add_open_in_new_tab', 2),
(52, '2023_11_07_023805_add_tablet_mobile_image', 2),
(53, '2024_04_01_043317_add_google_adsense_slot_id_to_ads_table', 2),
(54, '2025_04_21_000000_add_tablet_mobile_image_to_ads_translations_table', 2),
(55, '2024_04_27_100730_improve_analytics_setting', 3),
(56, '2023_08_11_060908_create_announcements_table', 4),
(57, '2025_02_11_153025_add_action_label_to_announcement_translations', 4),
(58, '2015_06_29_025744_create_audit_history', 5),
(59, '2023_11_14_033417_change_request_column_in_table_audit_histories', 5),
(60, '2025_05_05_000001_add_user_type_to_audit_histories_table', 5),
(61, '2015_06_18_033822_create_blog_table', 6),
(62, '2021_02_16_092633_remove_default_value_for_author_type', 6),
(63, '2021_12_03_030600_create_blog_translations', 6),
(64, '2022_04_19_113923_add_index_to_table_posts', 6),
(65, '2023_08_29_074620_make_column_author_id_nullable', 6),
(66, '2024_07_30_091615_fix_order_column_in_categories_table', 6),
(67, '2025_01_06_033807_add_default_value_for_categories_author_type', 6),
(68, '2016_06_17_091537_create_contacts_table', 7),
(69, '2023_11_10_080225_migrate_contact_blacklist_email_domains_to_core', 7),
(70, '2024_03_20_080001_migrate_change_attribute_email_to_nullable_form_contacts_table', 7),
(71, '2024_03_25_000001_update_captcha_settings_for_contact', 7),
(72, '2024_04_19_063914_create_custom_fields_table', 7),
(73, '2020_03_05_041139_create_ecommerce_tables', 8),
(74, '2021_01_01_044147_ecommerce_create_flash_sale_table', 8),
(75, '2021_01_17_082713_add_column_is_featured_to_product_collections_table', 8),
(76, '2021_01_18_024333_add_zip_code_into_table_customer_addresses', 8),
(77, '2021_02_18_073505_update_table_ec_reviews', 8),
(78, '2021_03_10_024419_add_column_confirmed_at_to_table_ec_customers', 8),
(79, '2021_03_10_025153_change_column_tax_amount', 8),
(80, '2021_03_20_033103_add_column_availability_to_table_ec_products', 8),
(81, '2021_04_28_074008_ecommerce_create_product_label_table', 8),
(82, '2021_05_31_173037_ecommerce_create_ec_products_translations', 8),
(83, '2021_08_17_105016_remove_column_currency_id_in_some_tables', 8),
(84, '2021_08_30_142128_add_images_column_to_ec_reviews_table', 8),
(85, '2021_10_04_030050_add_column_created_by_to_table_ec_products', 8),
(86, '2021_10_05_122616_add_status_column_to_ec_customers_table', 8),
(87, '2021_11_03_025806_nullable_phone_number_in_ec_customer_addresses', 8),
(88, '2021_11_23_071403_correct_languages_for_product_variations', 8),
(89, '2021_11_28_031808_add_product_tags_translations', 8),
(90, '2021_12_01_031123_add_featured_image_to_ec_products', 8),
(91, '2022_01_01_033107_update_table_ec_shipments', 8),
(92, '2022_02_16_042457_improve_product_attribute_sets', 8),
(93, '2022_03_22_075758_correct_product_name', 8),
(94, '2022_04_19_113334_add_index_to_ec_products', 8),
(95, '2022_04_28_144405_remove_unused_table', 8),
(96, '2022_05_05_115015_create_ec_customer_recently_viewed_products_table', 8),
(97, '2022_05_18_143720_add_index_to_table_ec_product_categories', 8),
(98, '2022_06_16_095633_add_index_to_some_tables', 8),
(99, '2022_06_30_035148_create_order_referrals_table', 8),
(100, '2022_07_24_153815_add_completed_at_to_ec_orders_table', 8),
(101, '2022_08_14_032836_create_ec_order_returns_table', 8),
(102, '2022_08_14_033554_create_ec_order_return_items_table', 8),
(103, '2022_08_15_040324_add_billing_address', 8),
(104, '2022_08_30_091114_support_digital_products_table', 8),
(105, '2022_09_13_095744_create_options_table', 8),
(106, '2022_09_13_104347_create_option_value_table', 8),
(107, '2022_10_05_163518_alter_table_ec_order_product', 8),
(108, '2022_10_12_041517_create_invoices_table', 8),
(109, '2022_10_12_142226_update_orders_table', 8),
(110, '2022_10_13_024916_update_table_order_returns', 8),
(111, '2022_10_21_030830_update_columns_in_ec_shipments_table', 8),
(112, '2022_10_28_021046_update_columns_in_ec_shipments_table', 8),
(113, '2022_11_16_034522_update_type_column_in_ec_shipping_rules_table', 8),
(114, '2022_11_19_041643_add_ec_tax_product_table', 8),
(115, '2022_12_12_063830_update_tax_defadult_in_ec_tax_products_table', 8),
(116, '2022_12_17_041532_fix_address_in_order_invoice', 8),
(117, '2022_12_26_070329_create_ec_product_views_table', 8),
(118, '2023_01_04_033051_fix_product_categories', 8),
(119, '2023_01_09_050400_add_ec_global_options_translations_table', 8),
(120, '2023_01_10_093754_add_missing_option_value_id', 8),
(121, '2023_01_17_082713_add_column_barcode_and_cost_per_item_to_product_table', 8),
(122, '2023_01_26_021854_add_ec_customer_used_coupons_table', 8),
(123, '2023_02_08_015900_update_options_column_in_ec_order_product_table', 8),
(124, '2023_02_27_095752_remove_duplicate_reviews', 8),
(125, '2023_03_20_115757_add_user_type_column_to_ec_shipment_histories_table', 8),
(126, '2023_04_21_082427_create_ec_product_categorizables_table', 8),
(127, '2023_05_03_011331_add_missing_column_price_into_invoice_items_table', 8),
(128, '2023_05_17_025812_fix_invoice_issue', 8),
(129, '2023_05_26_073140_move_option_make_phone_field_optional_at_checkout_page_to_mandatory_fields', 8),
(130, '2023_05_27_144611_fix_exchange_rate_setting', 8),
(131, '2023_06_22_084331_add_generate_license_code_to_ec_products_table', 8),
(132, '2023_06_30_042512_create_ec_order_tax_information_table', 8),
(133, '2023_07_14_022724_remove_column_id_from_ec_product_collection_products', 8),
(134, '2023_08_09_012940_remove_column_status_in_ec_product_attributes', 8),
(135, '2023_08_15_064505_create_ec_tax_rules_table', 8),
(136, '2023_08_21_021819_make_column_address_in_ec_customer_addresses_nullable', 8),
(137, '2023_08_22_094114_drop_unique_for_barcode', 8),
(138, '2023_08_30_031811_add_apply_via_url_column_to_ec_discounts_table', 8),
(139, '2023_09_07_094312_add_index_to_product_sku_and_translations', 8),
(140, '2023_09_19_024955_create_discount_product_categories_table', 8),
(141, '2023_10_17_070728_add_icon_and_icon_image_to_product_categories_table', 8),
(142, '2023_11_22_154643_add_unique_in_table_ec_products_variations', 8),
(143, '2023_11_27_032313_add_price_columns_to_ec_product_cross_sale_relations_table', 8),
(144, '2023_12_06_023945_add_display_on_checkout_column_to_ec_discounts_table', 8),
(145, '2023_12_25_040604_ec_create_review_replies_table', 8),
(146, '2023_12_26_090340_add_private_notes_column_to_ec_customers_table', 8),
(147, '2024_01_16_070706_fix_translation_tables', 8),
(148, '2024_01_23_075227_add_proof_file_to_ec_orders_table', 8),
(149, '2024_03_26_041531_add_cancel_reason_to_ec_orders_table', 8),
(150, '2024_03_27_062402_create_ec_customer_deletion_requests_table', 8),
(151, '2024_03_29_042242_migrate_old_captcha_settings', 8),
(152, '2024_03_29_093946_create_ec_order_return_histories_table', 8),
(153, '2024_04_01_063523_add_customer_columns_to_ec_reviews_table', 8),
(154, '2024_04_15_092654_migrate_ecommerce_google_tag_manager_code_setting', 8),
(155, '2024_04_16_035713_add_min_max_order_quantity_columns_to_products_table', 8),
(156, '2024_05_07_073153_improve_table_wishlist', 8),
(157, '2024_05_07_093703_add_missing_zip_code_into_table_store_locators', 8),
(158, '2024_05_15_021503_fix_invoice_path', 8),
(159, '2024_06_20_160724_create_ec_shared_wishlists_table', 8),
(160, '2024_06_28_025104_add_notify_attachment_updated_column_to_ec_products_table', 8),
(161, '2024_07_03_030900_add_downloaded_at_column_to_ec_order_product_table', 8),
(162, '2024_07_14_071826_make_customer_email_nullable', 8),
(163, '2024_07_15_104916_add_video_media_column_to_ec_products_table', 8),
(164, '2024_07_26_052530_add_percentage_to_tax_rules_table', 8),
(165, '2024_08_14_123028_add_customer_delivered_confirmed_at_column_to_ec_shipments_table', 8),
(166, '2024_08_19_132849_create_specification_tables', 8),
(167, '2024_09_07_060744_add_author_column_to_specification_tables', 8),
(168, '2024_09_14_064023_add_can_use_with_flash_sale_column_to_ec_discounts_table', 8),
(169, '2024_09_25_073928_remove_wrong_product_slugs', 8),
(170, '2025_01_10_000000_fix_order_invoice_rounding_issues', 8),
(171, '2025_01_15_050230_migrate_old_theme_options', 8),
(172, '2025_01_15_optimize_products_export_index', 8),
(173, '2025_01_17_082713_correct_column_barcode_and_cost_per_item_to_product_table', 8),
(174, '2025_01_24_044641_migrate_old_country_data', 8),
(175, '2025_01_28_233602_add_private_notes_into_ec_orders_table', 8),
(176, '2025_02_13_021247_add_tax_translations', 8),
(177, '2025_02_24_152621_add_text_color_to_product_labels_table', 8),
(178, '2025_04_12_000001_add_payment_fee_to_ec_orders_table', 8),
(179, '2025_04_12_000002_add_payment_fee_to_ec_invoices_table', 8),
(180, '2025_05_05_092036_make_user_id_and_tax_amount_nullable', 8),
(181, '2025_05_15_082342_drop_email_unique_index_in_ec_customers_table', 8),
(182, '2025_06_07_081731_add_translations_for_specification_groups_and_tables', 8),
(183, '2025_06_17_091813_increase_note_in_shipments_table', 8),
(184, '2025_06_24_000001_create_ec_product_license_codes_table', 8),
(185, '2025_06_24_080427_add_license_code_type_to_products_table', 8),
(186, '2025_07_06_062402_create_ec_customer_deletion_requests_table', 8),
(187, '2025_07_07_161729_change_license_code_to_text_in_ec_product_license_codes_table', 8),
(188, '2025_07_08_162756_increase_license_code_column_size_in_ec_order_product_table', 8),
(189, '2025_07_09_000001_add_customer_address_fields_to_ec_invoices_table', 8),
(190, '2025_07_15_090809_create_ec_abandoned_carts_table', 8),
(191, '2025_07_24_120510_increase_barcode_column_length_in_ec_products_table', 8),
(192, '2025_07_31_133600_add_performance_indexes_to_ec_product_categories_table', 8),
(193, '2025_08_01_161205_optimize_product_variation_query_indexes', 8),
(194, '2025_08_08_145059_correct_tax_amount_in_order_and_invoice_tables', 8),
(195, '2025_09_05_025247_create_ec_product_specification_attribute_translations_table', 8),
(196, '2025_09_08_025516_add_variations_count_to_ec_products_table', 8),
(197, '2025_09_08_080248_add_slug_column_to_ec_product_categories_table', 8),
(198, '2025_09_08_080330_add_slug_column_to_ec_product_categories_translations_table', 8),
(199, '2025_09_08_080443_populate_slug_column_for_product_categories', 8),
(200, '2025_09_08_081216_add_slug_column_to_ec_products_table', 8),
(201, '2025_09_08_081237_add_slug_column_to_ec_products_translations_table', 8),
(202, '2025_09_08_081321_populate_slug_column_for_products', 8),
(203, '2025_09_10_073321_add_performance_indexes_to_ecommerce_tables', 8),
(204, '2025_09_18_093922_fix_tax_rounding_in_order_products_and_invoices', 8),
(205, '2025_09_21_030756_add_reviews_cache_to_ec_products_table', 8),
(206, '2025_09_30_090432_add_performance_indexes_to_ec_product_categories_table', 8),
(207, '2025_10_10_090331_add_number_format_style_to_ec_currencies_table', 8),
(208, '2025_10_10_092235_add_space_between_price_and_currency_to_ec_currencies_table', 8),
(209, '2025_10_11_074318_add_price_includes_tax_to_ec_products_table', 8),
(210, '2025_10_13_043527_generate_slugs_for_product_collections', 8),
(211, '2018_07_09_221238_create_faq_table', 9),
(212, '2021_12_03_082134_create_faq_translations', 9),
(213, '2023_11_17_063408_add_description_column_to_faq_categories_table', 9),
(214, '2016_10_13_150201_create_galleries_table', 10),
(215, '2021_12_03_082953_create_gallery_translations', 10),
(216, '2022_04_30_034048_create_gallery_meta_translations_table', 10),
(217, '2023_08_29_075308_make_column_user_id_nullable', 10),
(218, '2016_10_03_032336_create_languages_table', 11),
(219, '2023_09_14_022423_add_index_for_language_table', 11),
(220, '2021_10_25_021023_fix-priority-load-for-language-advanced', 12),
(221, '2021_12_03_075608_create_page_translations', 12),
(222, '2023_07_06_011444_create_slug_translations_table', 12),
(223, '2019_11_18_061011_create_country_table', 13),
(224, '2021_12_03_084118_create_location_translations', 13),
(225, '2021_12_03_094518_migrate_old_location_data', 13),
(226, '2021_12_10_034440_switch_plugin_location_to_use_language_advanced', 13),
(227, '2022_01_16_085908_improve_plugin_location', 13),
(228, '2022_08_04_052122_delete_location_backup_tables', 13),
(229, '2023_04_23_061847_increase_state_translations_abbreviation_column', 13),
(230, '2023_07_26_041451_add_more_columns_to_location_table', 13),
(231, '2023_07_27_041451_add_more_columns_to_location_translation_table', 13),
(232, '2023_08_15_073307_drop_unique_in_states_cities_translations', 13),
(233, '2023_10_21_065016_make_state_id_in_table_cities_nullable', 13),
(234, '2024_08_17_094600_add_image_into_countries', 13),
(235, '2025_01_08_093652_add_zip_code_to_cities', 13),
(236, '2025_07_31_083459_add_indexes_for_location_search_performance', 13),
(237, '2017_10_24_154832_create_newsletter_table', 14),
(238, '2024_03_25_000001_update_captcha_settings_for_newsletter', 14),
(239, '2017_05_18_080441_create_payment_tables', 15),
(240, '2021_03_27_144913_add_customer_type_into_table_payments', 15),
(241, '2021_05_24_034720_make_column_currency_nullable', 15),
(242, '2021_08_09_161302_add_metadata_column_to_payments_table', 15),
(243, '2021_10_19_020859_update_metadata_field', 15),
(244, '2022_06_28_151901_activate_paypal_stripe_plugin', 15),
(245, '2022_07_07_153354_update_charge_id_in_table_payments', 15),
(246, '2024_07_04_083133_create_payment_logs_table', 15),
(247, '2025_04_12_000003_add_payment_fee_to_payments_table', 15),
(248, '2025_05_22_000001_add_payment_fee_type_to_settings_table', 15),
(249, '2017_07_11_140018_create_simple_slider_table', 16),
(250, '2025_04_08_040931_create_social_logins_table', 17),
(251, '2022_11_02_092723_team_create_team_table', 18),
(252, '2023_08_11_094574_update_team_table', 18),
(253, '2023_11_30_085354_add_missing_description_to_team', 18),
(254, '2024_10_02_030027_add_more_columns_to_teams_translations_table', 18),
(255, '2018_07_09_214610_create_testimonial_table', 19),
(256, '2021_12_03_083642_create_testimonials_translations', 19),
(257, '2016_10_07_193005_create_translations_table', 20),
(258, '2023_12_12_105220_drop_translations_table', 20),
(259, '2025_10_22_020518_add_verification_code_to_ec_customer_deletion_requests_table', 21),
(260, '2025_10_22_090000_remove_duplicate_order_addresses', 21);

-- --------------------------------------------------------

--
-- Table structure for table `newsletters`
--

CREATE TABLE `newsletters` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(120) NOT NULL,
  `name` varchar(120) DEFAULT NULL,
  `status` varchar(60) NOT NULL DEFAULT 'subscribed',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `newsletters`
--

INSERT INTO `newsletters` (`id`, `email`, `name`, `status`, `created_at`, `updated_at`) VALUES
(2, 'handge.akshay@gmail.com', NULL, 'unsubscribed', '2025-11-10 06:04:40', '2025-11-10 06:40:07'),
(3, 'dharmendra.webstrot@gmail.com', NULL, 'subscribed', '2025-11-10 06:33:32', '2025-11-10 06:33:32'),
(4, 'ajay.webstrot@gmail.com', NULL, 'subscribed', '2025-11-10 06:38:28', '2025-11-10 06:38:28'),
(6, 'Prateek.webstrot@gmail.com', NULL, 'subscribed', '2025-11-11 06:42:54', '2025-11-11 06:42:54'),
(7, 'deepak.webstrot@gmail.com', NULL, 'subscribed', '2025-11-19 11:06:24', '2025-11-19 11:06:24');

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(120) NOT NULL,
  `content` longtext DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `image` varchar(191) DEFAULT NULL,
  `template` varchar(60) DEFAULT NULL,
  `description` varchar(400) DEFAULT NULL,
  `status` varchar(60) NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `name`, `content`, `user_id`, `image`, `template`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Wooden Home', '<shortcode>[simple-slider key=\"slider-home-2\" style=\"fashion\" ads_1=\"IYHICPADQD5X\" ads_2=\"IYHICPADQD5X\" background_color=\"#f4f1ec\" show_slider_image_on_mobile=\"0\" show_ads_title=\"0,1\" background_image=\"1.jpg\" enable_lazy_loading=\"no\"][/simple-slider]</shortcode><shortcode>[custom-html]&lt;div class=\"productThubnail\"&gt;&lt;div class=\"productThubnailInner\"&gt;&lt;div class=\"productThubnailItem\"&gt;&lt;div class=\"productThubnailImg\"&gt;&lt;a href=\"#\"&gt;&lt;img src=\"/storage/2-1.jpg\" alt=\"product\" class=\"img-fluid\"&gt;&lt;/a&gt;&lt;/div&gt;&lt;div class=\"productThubnailContent\"&gt;&lt;h4&gt;&lt;a href=\"#\"&gt;Suppressors&lt;/a&gt;&lt;/h4&gt;&lt;span&gt;£1,499.00&lt;/span&gt;&lt;/div&gt;&lt;/div&gt;&lt;div class=\"productThubnailItem\"&gt;&lt;div class=\"productThubnailImg\"&gt;&lt;a href=\"#\"&gt;&lt;img src=\"/storage/5-1.png\" alt=\"product\" class=\"img-fluid\"&gt;&lt;/a&gt;&lt;/div&gt;&lt;div class=\"productThubnailContent\"&gt;&lt;h4&gt;&lt;a href=\"#\"&gt;Firearms&lt;/a&gt;&lt;/h4&gt;&lt;span&gt;£1,799.00&lt;/span&gt;&lt;/div&gt;&lt;/div&gt;&lt;div class=\"productThubnailItem\"&gt;&lt;div class=\"productThubnailImg\"&gt;&lt;a href=\"#\"&gt;&lt;img src=\"/storage/3-3.jpg\" alt=\"product\" class=\"img-fluid\"&gt;&lt;/a&gt;&lt;/div&gt;&lt;div class=\"productThubnailContent\"&gt;&lt;h4&gt;&lt;a href=#\"&gt;Breach X Gear&lt;/a&gt;&lt;/h4&gt;&lt;span&gt;£1,199.00&lt;/span&gt;&lt;/div&gt;&lt;/div&gt;&lt;div class=\"productThubnailItem\"&gt;&lt;div class=\"productThubnailImg\"&gt;&lt;a href=\"#\"&gt;&lt;img src=\"/storage/4-1-1.jpg\" alt=\"product\" class=\"img-fluid\"&gt;&lt;/a&gt;&lt;/div&gt;&lt;div class=\"productThubnailContent\"&gt;&lt;h4&gt;&lt;a href=\"#\"&gt;Bushido Tactical&lt;/a&gt;&lt;/h4&gt;&lt;span&gt;£1,899.00&lt;/span&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;[/custom-html]</shortcode><shortcode>[custom-html]&lt;section class=\"about-area section bg-img jarallax\"&gt;&lt;div class=\"container\"&gt;&lt;div class=\"row\"&gt;&lt;div class=\"col-md-7 col-sm-12\"&gt;&lt;div class=\"section-heading2\"&gt;&lt;h2&gt;Who We Are&lt;/h2&gt;&lt;/div&gt;&lt;div class=\"about-contents\"&gt;&lt;p&gt;At Regent Rogue, we are more than a supplier of arms and tactical gear — we are engineers of precision and partners in readiness. Our mission is to equip professionals, operators, and enthusiasts with tools they can trust in the field, the range, and beyond.&lt;/p&gt;&lt;p&gt;From innovative suppressors and modular systems to breaching solutions and operator accessories, every product is tested for performance, durability, and reliability. We work alongside industry specialists and field operators to ensure our catalog isn\'t just built to spec — it\'s built to win.&lt;/p&gt;&lt;div class=\"buttons\"&gt;&lt;a href=\"/about\" class=\"btn1\"&gt;Read More&lt;/a&gt;&lt;a href=\"/products\" class=\"btn2\"&gt;Our Shop&lt;/a&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;div class=\"col-md-5 col-sm-12 \"&gt;&lt;div class=\"about-cata\"&gt;&lt;div class=\"list-main-t cata-list-main1\"&gt;&lt;div class=\"cata-list list-t1\"&gt;&lt;div class=\"dbox\"&gt;&lt;div class=\"dleft\"&gt;&lt;div class=\"content\"&gt;&lt;h4&gt;Innovation&lt;/h4&gt;&lt;a href=\"/about\" class=\"btn3\"&gt;Read More&lt;i class=\"fas fa-arrow-right\"&gt;&lt;/i&gt;&lt;/a&gt;&lt;/div&gt;&lt;/div&gt;&lt;div class=\"dright\"&gt;&lt;div class=\"cate-ico\"&gt;&lt;img src=\"/storage/02.png\" alt=\"\" /&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;div class=\"list-main-t cata-list-main2\"&gt;&lt;div class=\"cata-list list-t2\"&gt;&lt;div class=\"dbox\"&gt;&lt;div class=\"dleft\"&gt;&lt;div class=\"content\"&gt;&lt;h4&gt;Engineering&lt;/h4&gt;&lt;a href=\"/products\" class=\"btn3\"&gt;Read More&lt;i class=\"fas fa-arrow-right\"&gt;&lt;/i&gt;&lt;/a&gt;&lt;/div&gt;&lt;/div&gt;&lt;div class=\"dright\"&gt;&lt;div class=\"cate-ico\"&gt;&lt;img src=\"/storage/01.png\" alt=\"\" /&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;/section&gt;[/custom-html]</shortcode><shortcode>[custom-html]&lt;section class=\"banner-area section bg-img af\"&gt;&lt;div class=\"container\"&gt;&lt;div class=\"banner-area-img-group\"&gt;&lt;div class=\"banner-area-img\"&gt;&lt;div class=\"bannerImg\"&gt;&lt;img src=\"/storage/1-2.png\" alt=\"Img\" class=\"img-fluid gunBig\"&gt;&lt;div class=\"tooltipContant\"&gt;&lt;div class=\"growPointOuter1\"&gt;&lt;a href=\"javascript:void(0);\" class=\"d-inline-block\" data-bs-toggle=\"popover\" data-bs-trigger=\"hover\" title=\"Rear Brakes\" data-bs-content=\"Single Ø255mm disc, Nissin single piston sliding axial caliper, ABS\"&gt;&lt;div class=\"growPoint\"&gt;&lt;img src=\"/storage/plus.png\" alt=\"plus\" class=\"img-fluid\"&gt;&lt;/div&gt;&lt;/a&gt;&lt;/div&gt;&lt;div class=\"growPointOuter2\"&gt;&lt;a href=\"javascript:void(0);\" data-bs-toggle=\"popover\" title=\"Rear Brakes\" data-bs-trigger=\"hover\" data-bs-content=\"Single Ø255mm disc, Nissin single piston sliding axial caliper, ABS\"&gt;&lt;div class=\"growPoint\"&gt;&lt;img src=\"/storage/plus.png\" alt=\"plus\" class=\"img-fluid\"&gt;&lt;/div&gt;&lt;/a&gt;&lt;/div&gt;&lt;div class=\"growPointOuter3\"&gt;&lt;a href=\"javascript:void(0);\" data-bs-toggle=\"popover\" title=\"Rear Brakes\" data-bs-trigger=\"hover\" data-bs-content=\"Single Ø255mm disc, Nissin single piston sliding axial caliper, ABS\"&gt;&lt;div class=\"growPoint\"&gt;&lt;img src=\"/storage/plus.png\" alt=\"plus\" class=\"img-fluid\"&gt;&lt;/div&gt;&lt;/a&gt;&lt;/div&gt;&lt;div class=\"growPointOuter4\"&gt;&lt;a href=\"javascript:void(0);\" data-bs-toggle=\"popover\" title=\"Rear Brakes\" data-bs-trigger=\"hover\" data-bs-content=\"Single Ø255mm disc, Nissin single piston sliding axial caliper, ABS\"&gt;&lt;div class=\"growPoint\"&gt;&lt;img src=\"/storage/plus.png\" alt=\"plus\" class=\"img-fluid\"&gt;&lt;/div&gt;&lt;/a&gt;&lt;/div&gt;&lt;div class=\"growPointOuter5\"&gt;&lt;a href=\"javascript:void(0);\" data-bs-toggle=\"popover\" title=\"Rear Brakes\" data-bs-trigger=\"hover\" data-bs-content=\"Single Ø255mm disc, Nissin single piston sliding axial caliper, ABS\"&gt;&lt;div class=\"growPoint\"&gt;&lt;img src=\"/storage/plus.png\" alt=\"plus\" class=\"img-fluid\"&gt;&lt;/div&gt;&lt;/a&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;div class=\"col-lg-5 col-md-12\"&gt;&lt;div class=\"banner-area-content\"&gt;&lt;div class=\"banner-con\"&gt;&lt;h2&gt;MD:9K PISTOl&lt;/h2&gt;&lt;p&gt;COMPACT CONTROL, MAXIM PERFORMANCE&lt;/p&gt;&lt;div class=\"price\"&gt;&lt;del&gt;£2,895.00&lt;/del&gt;&lt;strong&gt;£1,999.00&lt;/strong&gt;&lt;/div&gt;&lt;a href=\"/products\" class=\"btn1\"&gt;Buy Now&lt;/a&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;/section&gt;[/custom-html]</shortcode><shortcode>[custom-html]&lt;section class=\"events-area section bg-img jarallax\"&gt;&lt;div class=\"container\"&gt;&lt;div class=\"row\"&gt;&lt;div class=\"col-md-12 col-sm-12\"&gt;&lt;div class=\"section-heading text-center\"&gt;&lt;h2&gt;Regent Rogue in Action&lt;/h2&gt;&lt;p&gt;Experience the power, precision, and reliability of our firearms in the field.&lt;/p&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;div class=\"row events-img text-center\"&gt;&lt;div class=\"col-md-4 col-sm-4 mb-4\"&gt;&lt;img src=\"/storage/ee1.png\" alt=\"Event 1\" class=\"img-fluid\" /&gt;&lt;/div&gt;&lt;div class=\"col-md-4 col-sm-4 mb-4\"&gt;&lt;img src=\"/storage/ee2.png\" alt=\"Event 2\" class=\"img-fluid\" /&gt;&lt;/div&gt;&lt;div class=\"col-md-4 col-sm-4 mb-4\"&gt;&lt;img src=\"/storage/ee3.png\" alt=\"Event 3\" class=\"img-fluid\" /&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;/section&gt;[/custom-html]</shortcode><shortcode>[custom-html]&lt;section class=\"banner-area2 bg-img jarallax af\"&gt;&lt;div class=\"container\"&gt;&lt;div class=\"row\"&gt;&lt;div class=\"col-md-12 col-sm-12\"&gt;&lt;div class=\"videos-area text-center\"&gt;&lt;div class=\"video-popups\"&gt;&lt;a href=\"https://www.youtube.com/watch?v=tyKOAdpSNfI\" class=\"video-play-icon\"&gt;&lt;i class=\"fas fa-play\"&gt;&lt;/i&gt;&lt;/a&gt;&lt;/div&gt;&lt;div class=\"section-heading mr-0\"&gt;&lt;h2 class=\"mr-0\"&gt;HOTTEST DEAL&lt;/h2&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;div class=\"lg-text\"&gt;&lt;h1&gt;Coming Soon&lt;/h1&gt;&lt;/div&gt;&lt;/section&gt;[/custom-html]</shortcode><shortcode>[custom-html]&lt;section class=\"products-area section bg-img jarallax\"&gt;&lt;div class=\"container\"&gt;&lt;div class=\"row\"&gt;&lt;div class=\"col-md-12 col-sm-12\"&gt;&lt;div class=\"section-heading\"&gt;&lt;h2&gt;Our Products&lt;/h2&gt;&lt;p&gt;All modern weapons can benefit from our wide range of services — from precision engineering to advanced support solutions, ensuring top performance and reliability.&lt;/p&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;div class=\"row\"&gt;&lt;div class=\"col-md-12 col-sm-12 pro-ctg\"&gt;&lt;div class=\"nav-pills\"&gt;&lt;div class=\"row\"&gt;&lt;div class=\"col-md-3 col-sm-6 pd-0\"&gt;&lt;div class=\"catagories-lists\"&gt;&lt;a href=\"/product-categories/breaching-weapon-retention\"&gt;&lt;div class=\"contents\"&gt;&lt;figure&gt;&lt;svg width=\"70\" height=\"70\" viewBox=\"0 0 70 70\" fill=\"none\" xmlns=\"http://www.w3.org/2000/svg\"&gt;&lt;g clip-path=\"url(#clip0_60_32)\"&gt;&lt;path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M4.29517 43.3484C1.83341 43.3484 0 40.3867 0 38.0336V30.6963C0 29.0499 1.33876 27.7112 2.98513 27.7112H20.1433C20.6498 27.7112 21.037 28.1681 20.9521 28.6681L19.5448 36.8655C19.4993 37.1448 19.3115 37.3782 19.0494 37.4865L5.46289 43.1147C5.08145 43.2742 4.6881 43.348 4.29517 43.348V43.3484ZM6.32299 39.0077C4.90877 39.0077 3.86779 37.427 3.86779 36.0854V32.6507C3.86779 31.6368 4.6881 30.8165 5.70201 30.8165H14.139C14.6455 30.8165 15.0327 31.2738 14.9478 31.7734L14.287 35.6182C14.2358 35.9029 14.0422 36.1424 13.7743 36.2449C12.6386 36.6838 7.08096 39.0077 6.32299 39.0077Z\" fill=\"#0198B5\" /&gt;&lt;path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M50.1988 37.5548H48.4897V33.904C48.4897 32.8241 46.849 32.8241 46.849 33.904V37.5548H45.1686V33.904C45.1686 32.8241 43.528 32.8241 43.528 33.904V37.5548H41.8418V33.904C41.8418 32.8241 40.2012 32.8241 40.2012 33.904V37.5548H18.7364C18.2258 37.5548 17.8439 37.0922 17.9276 36.5979L19.3348 28.4005C19.4033 28.0076 19.745 27.7168 20.1437 27.7168H50.1992C51.0536 27.7168 51.7488 28.4116 51.7488 29.2664V36.0053C51.7488 36.8596 51.0536 37.5548 50.1992 37.5548H50.1988Z\" fill=\"#0198B5\" /&gt;&lt;path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M24.4274 51.8707H17.1585C16.6106 51.8707 16.2226 51.3494 16.3665 50.8281L20.377 36.5123C20.4738 36.1592 20.7987 35.9143 21.1691 35.9143H28.4379C28.9858 35.9143 29.3739 36.436 29.2299 36.9569L25.2194 51.2669C25.1168 51.6201 24.792 51.8707 24.4278 51.8707H24.4274ZM21.5275 49.3699C20.9898 49.3699 20.592 48.8597 20.7355 48.3331L23.276 39.0135C23.5586 37.9766 25.1455 38.3982 24.8597 39.4466L22.3191 48.7662C22.2166 49.1308 21.8864 49.3699 21.5275 49.3699Z\" fill=\"#0198B5\" /&gt;&lt;path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M31.8159 40.9842C29.307 40.9842 28.3554 38.5663 28.7816 36.4298C29.1663 34.5 32.126 35.0874 31.7278 37.0365C31.6867 37.2378 31.5571 37.9696 31.8725 37.9827C33.8093 38.0627 33.7589 40.9842 31.8159 40.9842Z\" fill=\"#0198B5\" /&gt;&lt;path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M51.748 33.1233H65.2549V31.8018H51.748V33.1233Z\" fill=\"#0198B5\" /&gt;&lt;path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M66.0752 34.7639H50.9276C50.4777 34.7639 50.1073 34.3993 50.1073 33.9436V30.9814C50.1073 30.5258 50.4777 30.1611 50.9276 30.1611H66.0752C66.5251 30.1611 66.8955 30.5258 66.8955 30.9814V33.9436C66.8955 34.3993 66.5251 34.7639 66.0752 34.7639Z\" fill=\"#0198B5\" /&gt;&lt;path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M66.8955 34.667H68.3594V30.6052H66.8955V34.667Z\" fill=\"#0198B5\" /&gt;&lt;path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M69.1797 36.3072H66.0752C65.6253 36.3072 65.2549 35.9369 65.2549 35.4869V29.7849C65.2549 29.3292 65.6253 28.9646 66.0752 28.9646H69.1797C69.6296 28.9646 70 29.3292 70 29.7849V35.4869C70 35.9369 69.6296 36.3072 69.1797 36.3072Z\" fill=\"#0198B5\" /&gt;&lt;path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M34.9545 29.3574H27.9535C27.4978 29.3574 27.1332 28.9928 27.1332 28.5371V24.0881C27.1332 23.6325 27.4978 23.2678 27.9535 23.2678H34.9545C35.4102 23.2678 35.7748 23.6325 35.7748 24.0881V28.5371C35.7748 28.9871 35.4044 29.3574 34.9545 29.3574Z\" fill=\"#0198B5\" /&gt;&lt;path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M42.0125 25.7518H38.0877C37.632 25.7518 37.2674 25.3938 37.2674 24.9032L25.6349 24.9315C25.6349 25.3872 25.2702 25.7518 24.8146 25.7518H20.8893C20.4337 25.7518 20.069 25.3872 20.069 24.9315V18.9502C20.069 18.4945 20.4337 18.1299 20.8893 18.1299H24.8146C25.2768 18.1299 25.6349 18.4888 25.6349 18.9785L37.2674 18.9502C37.2674 18.4945 37.6377 18.1299 38.0877 18.1299H42.0125C42.4624 18.1299 42.8328 18.4945 42.8328 18.9502V24.9373C42.8328 25.3872 42.4682 25.7518 42.0125 25.7518Z\" fill=\"#0198B5\" /&gt;&lt;path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M25.9092 45.6022L26.8748 42.1577C30.7458 42.1577 34.7182 41.3136 35.6472 36.9052L35.7616 36.3625H39.2365L39.111 37.1533C38.0946 43.5588 32.6334 45.6022 26.8112 45.6022H25.9097H25.9092Z\" fill=\"#0198B5\" /&gt;&lt;/g&gt;&lt;defs&gt;&lt;clipPath id=\"clip0_60_32\"&gt;&lt;rect width=\"70\" height=\"70\" fill=\"white\" /&gt;&lt;/clipPath&gt;&lt;/defs&gt;&lt;/svg&gt;&lt;/figure&gt;&lt;h3&gt;Breaching Weapon Retention&lt;/h3&gt;&lt;/div&gt;&lt;/a&gt;&lt;/div&gt;&lt;/div&gt;&lt;div class=\"col-md-3 col-sm-6 pd-0\"&gt;&lt;div class=\"catagories-lists nd\"&gt;&lt;a href=\"/product-categories/method-of-entry-breaching-tape-adhesives\"&gt;&lt;div class=\"contents\"&gt;&lt;figure&gt;&lt;svg width=\"56\" height=\"56\" viewBox=\"0 0 56 56\" fill=\"none\" xmlns=\"http://www.w3.org/2000/svg\"&gt;&lt;path d=\"M37.7755 18.676L56 3.9172L53.4205 0L48.4393 4.0334L46.2364 1.3153L44.422 2.7825L46.6256 5.5006L27.5856 20.9202L25.3848 18.2014L23.5711 19.6693L23.961 23.8574C21.385 25.9448 19.6168 28.6559 18.6837 31.5959L14.8939 31.1997L1.295 42.2121C-0.203702 43.4238 -0.434702 45.6393 0.776298 47.1338L7.0406 54.8702C8.2523 56.3675 10.2501 56.3759 11.4793 54.8947L20.0382 44.5844C20.4771 45.3586 20.9678 46.1139 21.5467 46.8286L32.4282 38.0219C31.3824 36.7276 30.6712 35.2786 30.2561 33.7701L39.4639 26.3186C40.9633 25.0992 41.1957 22.8963 39.9763 21.3969L37.7755 18.676ZM29.8914 29.5631C30.1805 26.5552 31.6183 23.6635 34.1502 21.6125L35.0546 20.8789L37.2575 23.597L29.8914 29.5631Z\" fill=\"#0198B5\" /&gt;&lt;/svg&gt;&lt;/figure&gt;&lt;h3&gt;Method of Entry Breaching Tape &amp; Adhesives&lt;/h3&gt;&lt;/div&gt;&lt;/a&gt;&lt;/div&gt;&lt;/div&gt;&lt;div class=\"col-md-3 col-sm-6 pd-0\"&gt;&lt;div class=\"catagories-lists\"&gt;&lt;a href=\"/product-categories/method-of-entry-breaching-tools\"&gt;&lt;div class=\"contents\"&gt;&lt;figure&gt;&lt;svg width=\"42\" height=\"42\" viewBox=\"0 0 42 42\" fill=\"none\" xmlns=\"http://www.w3.org/2000/svg\"&gt;&lt;path d=\"M39.8097 30.0204C38.9119 29.1187 37.7813 28.484 36.544 28.187C35.3067 27.8901 34.0112 27.9425 32.8019 28.3385L13.6616 9.19823C15.3507 4.31792 10.7866 -0.799581 5.75534 0.285731C5.58152 0.322113 5.42732 0.421558 5.32247 0.564893C5.21762 0.708228 5.16955 0.885304 5.18753 1.06198C5.20909 1.22501 5.27921 1.37778 5.38878 1.50042L8.26378 4.37542L7.41565 7.41573L4.34659 8.23511L1.47159 5.36011C1.3156 5.23461 1.11782 5.17296 0.91815 5.18761C0.766046 5.2027 0.622714 5.26589 0.508972 5.368C0.39523 5.47011 0.317002 5.60582 0.28565 5.75542C-0.828412 10.7867 4.38253 15.3939 9.21253 13.6617L28.3385 32.802C26.6422 37.6823 31.2135 42.7998 36.2447 41.7145C36.4185 41.6781 36.5727 41.5787 36.6776 41.4353C36.7824 41.292 36.8305 41.1149 36.8125 40.9382C36.791 40.7752 36.7208 40.6224 36.6113 40.4998L33.7363 37.6248L34.5844 34.5845L37.6535 33.7651L40.5285 36.6401C40.6726 36.7623 40.8507 36.8375 41.0388 36.8557C41.2079 36.8588 41.3728 36.8021 41.5042 36.6956C41.6357 36.5891 41.7254 36.4397 41.7575 36.2735C41.9769 35.1515 41.9138 33.9924 41.5738 32.9009C41.2337 31.8093 40.6275 30.8194 39.8097 30.0204Z\" fill=\"#0198B5\" /&gt;&lt;path d=\"M22.7826 15.7173L26.2901 19.2248C26.3569 19.2922 26.4364 19.3456 26.524 19.3821C26.6115 19.4186 26.7055 19.4374 26.8004 19.4374C26.8952 19.4374 26.9892 19.4186 27.0768 19.3821C27.1644 19.3456 27.2439 19.2922 27.3107 19.2248L32.5863 13.9348C37.5313 15.6886 42.7926 11.0023 41.6641 5.90637C41.6328 5.75677 41.5545 5.62105 41.4408 5.51895C41.3271 5.41684 41.1837 5.35365 41.0316 5.33855C40.926 5.33144 40.8201 5.34558 40.7201 5.38015C40.6201 5.41472 40.5281 5.46901 40.4494 5.5398L37.5744 8.4148L34.4407 7.57387L33.571 4.46887L36.446 1.59387C36.5169 1.51558 36.5708 1.4234 36.6042 1.32318C36.6376 1.22295 36.6498 1.11687 36.6401 1.01168C36.6352 0.854883 36.5792 0.703976 36.4806 0.581988C36.3819 0.46 36.2461 0.373629 36.0938 0.336054C30.9619 -0.770821 26.3547 4.46887 28.0726 9.39949L22.7826 14.6967C22.7152 14.7635 22.6617 14.843 22.6252 14.9306C22.5887 15.0182 22.5699 15.1121 22.5699 15.207C22.5699 15.3019 22.5887 15.3958 22.6252 15.4834C22.6617 15.571 22.7152 15.6505 22.7826 15.7173Z\" fill=\"#0198B5\" /&gt;&lt;path d=\"M15.7172 22.7827C15.6504 22.7153 15.5709 22.6618 15.4833 22.6253C15.3957 22.5889 15.3018 22.5701 15.2069 22.5701C15.112 22.5701 15.0181 22.5889 14.9305 22.6253C14.8429 22.6618 14.7634 22.7153 14.6966 22.7827L9.02564 28.4536C2.31252 26.4339 -2.76186 34.7211 2.21908 39.7811C7.20002 44.8411 15.595 39.6877 13.5538 32.9746L19.2247 27.3108C19.2921 27.244 19.3455 27.1645 19.382 27.0769C19.4185 26.9893 19.4373 26.8954 19.4373 26.8005C19.4373 26.7056 19.4185 26.6117 19.382 26.5241C19.3455 26.4365 19.2921 26.357 19.2247 26.2902L15.7172 22.7827ZM10.686 34.3617L9.89533 37.3158C9.86282 37.4383 9.79849 37.55 9.70887 37.6397C9.61925 37.7293 9.50752 37.7936 9.38502 37.8261L6.43095 38.6167C6.30549 38.654 6.17224 38.6563 6.04557 38.6233C5.91891 38.5904 5.80364 38.5235 5.7122 38.4299L3.55595 36.2736C3.46232 36.1822 3.39543 36.0669 3.3625 35.9402C3.32956 35.8136 3.33184 35.6803 3.36908 35.5549L4.1597 32.6008C4.19222 32.4783 4.25655 32.3666 4.34617 32.277C4.43579 32.1873 4.54752 32.123 4.67002 32.0905L7.62408 31.2999C7.74955 31.2626 7.8828 31.2603 8.00946 31.2933C8.13613 31.3262 8.25139 31.3931 8.34283 31.4867L10.4991 33.643C10.5927 33.7344 10.6596 33.8497 10.6925 33.9764C10.7255 34.103 10.7232 34.2363 10.686 34.3617Z\" fill=\"#0198B5\" /&gt;&lt;/svg&gt;&lt;/figure&gt;&lt;h3&gt;Method of Entry Breaching Tools&lt;/h3&gt;&lt;/div&gt;&lt;/a&gt;&lt;/div&gt;&lt;/div&gt;&lt;div class=\"col-md-3 col-sm-6 pd-0\"&gt;&lt;div class=\"catagories-lists nd lastCatChild\"&gt;&lt;a href=\"/product-categories/weapons-small-arms-accessories\"&gt;&lt;div class=\"contents\"&gt;&lt;figure&gt;&lt;svg width=\"46\" height=\"46\" viewBox=\"0 0 46 46\" fill=\"none\" xmlns=\"http://www.w3.org/2000/svg\"&gt;&lt;g clip-path=\"url(#clip0_60_87)\"&gt;&lt;path d=\"M23.6358 30.517C24.2132 31.4831 25.0866 32.2374 26.1264 32.6681C27.1663 33.0988 28.3172 33.183 29.4086 32.9081C29.8981 32.7846 30.3668 32.59 30.7998 32.3307C31.5457 31.8855 32.1692 31.262 32.6144 30.5161C32.8738 30.0831 33.0683 29.6143 33.1918 29.1249C33.4679 28.0334 33.3842 26.8819 32.9532 25.8418C32.5222 24.8017 31.767 23.9285 30.7999 23.3521C30.3668 23.0928 29.8981 22.8983 29.4086 22.7747C28.4064 22.5205 27.3513 22.5692 26.3769 22.9148C25.4024 23.2604 24.5523 23.8874 23.9343 24.7163C23.3162 25.5451 22.958 26.5388 22.9049 27.5713C22.8517 28.6039 23.1061 29.6291 23.6358 30.517Z\" fill=\"#0198B5\" /&gt;&lt;path d=\"M42.9739 25.509H41.9473C41.598 23.4214 40.7778 21.4409 39.549 19.7175L40.2756 18.9908C40.712 18.553 40.9568 17.9599 40.9563 17.3417C40.9558 16.7235 40.71 16.1308 40.2729 15.6936C39.8358 15.2565 39.243 15.0107 38.6249 15.0102C38.0067 15.0097 37.4135 15.2545 36.9757 15.6909L36.2491 16.4176C34.5265 15.1889 32.5463 14.3693 30.4593 14.021V12.9927C30.4592 12.5203 30.3158 12.059 30.048 11.6698C29.7801 11.2807 29.4004 10.982 28.9591 10.8133C28.5179 10.6446 28.0358 10.6138 27.5766 10.725C27.1174 10.8362 26.7029 11.0841 26.3877 11.4361C26.6776 11.9526 26.8292 12.5353 26.8277 13.1277C26.8267 13.9226 26.5541 14.6934 26.0553 15.3123C25.5564 15.9312 24.861 16.3612 24.0844 16.5309C23.8606 17.2711 23.5642 17.9873 23.1994 18.6692C23.3636 18.9256 23.4936 19.2024 23.5861 19.4925C24.2823 19.1125 25.0237 18.8219 25.7927 18.6275C27.3245 18.2431 28.9275 18.2431 30.4593 18.6275C31.3493 18.8522 32.2016 19.2059 32.9891 19.6775C34.7465 20.7271 36.1187 22.3153 36.9023 24.2063C37.6858 26.0973 37.839 28.1906 37.3391 30.1756C37.1144 31.0656 36.7607 31.9179 36.2891 32.7055C35.4794 34.0618 34.3455 35.1957 32.9892 36.0054C32.2016 36.477 31.3493 36.8307 30.4593 37.0554C28.7266 37.4942 26.9054 37.4356 25.2045 36.8864C23.5037 36.3371 21.9922 35.3194 20.8435 33.95C19.6948 32.5807 18.9555 30.9152 18.7104 29.1448C18.4653 27.3743 18.7244 25.5706 19.4579 23.9407C19.0768 23.8504 18.7139 23.696 18.3845 23.4841C17.7026 23.8474 16.9871 24.1438 16.2479 24.369C16.0778 25.1453 15.6477 25.8403 15.0289 26.3388C14.41 26.8374 13.6394 27.1097 12.8447 27.1106C12.2833 27.1115 11.73 26.9753 11.2331 26.714C11.0372 27.0693 10.9374 27.4696 10.9434 27.8753C10.9494 28.2811 11.061 28.6782 11.2672 29.0276C11.4735 29.3771 11.7673 29.6667 12.1196 29.868C12.4719 30.0693 12.8706 30.1753 13.2763 30.1756H14.3047C14.6528 32.2629 15.4731 34.2432 16.7029 35.9654L15.9763 36.692C15.7596 36.9086 15.5877 37.1657 15.4704 37.4487C15.3531 37.7317 15.2927 38.0351 15.2926 38.3414C15.2925 38.6478 15.3528 38.9511 15.4699 39.2342C15.5871 39.5173 15.7589 39.7745 15.9754 39.9912C16.192 40.2078 16.4491 40.3797 16.7321 40.497C17.0151 40.6143 17.3185 40.6748 17.6248 40.6748C17.9312 40.6749 18.2345 40.6146 18.5176 40.4975C18.8007 40.3803 19.0579 40.2085 19.2746 39.992L20.0012 39.2653C21.7246 40.4941 23.7051 41.3143 25.7927 41.6636V42.6902C25.7935 43.3085 26.0396 43.9013 26.4771 44.3382C26.9146 44.7752 27.5076 45.0206 28.126 45.0206C28.7443 45.0206 29.3373 44.7752 29.7748 44.3382C30.2123 43.9013 30.4585 43.3085 30.4593 42.6902V41.6619C32.5463 41.3136 34.5264 40.4939 36.2491 39.2653L36.9757 39.9919C37.4134 40.4288 38.0067 40.674 38.6252 40.6737C39.2436 40.6734 39.8366 40.4276 40.2739 39.9903C40.7112 39.553 40.9571 38.9599 40.9574 38.3415C40.9577 37.723 40.7125 37.1298 40.2756 36.692L39.549 35.9654C40.7776 34.2427 41.5973 32.2626 41.9456 30.1756H42.9739C43.2805 30.1759 43.5843 30.1159 43.8677 29.9988C44.1511 29.8817 44.4087 29.7099 44.6256 29.4932C44.8426 29.2765 45.0147 29.0191 45.1322 28.7359C45.2496 28.4526 45.3101 28.1489 45.3101 27.8423C45.3101 27.5356 45.2496 27.232 45.1322 26.9487C45.0147 26.6654 44.8426 26.4081 44.6256 26.1914C44.4087 25.9747 44.1511 25.8029 43.8677 25.6858C43.5843 25.5687 43.2805 25.5086 42.9739 25.509Z\" fill=\"#0198B5\" /&gt;&lt;path d=\"M11.1939 23.6276C11.1939 24.0652 11.3677 24.4848 11.6772 24.7943C11.9866 25.1037 12.4063 25.2776 12.8439 25.2776C13.2815 25.2776 13.7012 25.1037 14.0106 24.7943C14.3201 24.4848 14.4939 24.0652 14.4939 23.6276V22.9004C15.9698 22.6541 17.3701 22.0745 18.5883 21.2056L19.1021 21.7195C19.2554 21.8727 19.4373 21.9942 19.6375 22.0772C19.8377 22.1601 20.0522 22.2028 20.2689 22.2028C20.4856 22.2028 20.7002 22.1601 20.9004 22.0772C21.1006 21.9942 21.2825 21.8727 21.4357 21.7195C21.5889 21.5662 21.7105 21.3843 21.7934 21.1841C21.8763 20.9839 21.919 20.7694 21.919 20.5527C21.919 20.336 21.8763 20.1214 21.7934 19.9212C21.7105 19.721 21.5889 19.5391 21.4357 19.3859L20.9218 18.872C21.7907 17.6538 22.3703 16.2536 22.6166 14.7777H23.3438C23.7814 14.7777 24.2011 14.6038 24.5106 14.2944C24.82 13.9849 24.9938 13.5653 24.9938 13.1276C24.9938 12.69 24.82 12.2703 24.5106 11.9609C24.2011 11.6515 23.7814 11.4776 23.3438 11.4776H22.6178C22.3708 10.0014 21.7908 8.6008 20.9218 7.38211L21.4357 6.86825C21.7448 6.55873 21.9184 6.13913 21.9182 5.70168C21.9181 5.26424 21.7443 4.84476 21.4349 4.53544C21.1256 4.22613 20.7061 4.05229 20.2687 4.05215C19.8312 4.05201 19.4116 4.22557 19.1021 4.53468L18.5883 5.04854C17.3701 4.17967 15.9698 3.60005 14.4939 3.35375V2.62657C14.4939 2.18896 14.3201 1.76927 14.0106 1.45984C13.7012 1.1504 13.2815 0.976563 12.8439 0.976562C12.4063 0.976563 11.9866 1.1504 11.6772 1.45984C11.3677 1.76927 11.1939 2.18896 11.1939 2.62657V3.35257C9.71764 3.59958 8.31703 4.17958 7.09833 5.04855L6.58447 4.53469C6.43124 4.38154 6.24936 4.26008 6.04919 4.17722C5.84902 4.09437 5.6345 4.05176 5.41786 4.05181C5.20122 4.05187 4.98672 4.09459 4.78659 4.17755C4.58647 4.2605 4.40464 4.38206 4.25149 4.53528C4.09835 4.68851 3.97688 4.8704 3.89403 5.07056C3.81118 5.27073 3.76856 5.48526 3.76862 5.70189C3.76867 5.91853 3.8114 6.13304 3.89435 6.33316C3.9773 6.53329 4.09886 6.71511 4.25209 6.86826L4.76595 7.38212C3.89613 8.60046 3.3157 10.0012 3.06883 11.4776H2.34277C1.90515 11.4776 1.48547 11.6515 1.17603 11.9609C0.86659 12.2704 0.692749 12.69 0.692749 13.1277C0.692749 13.5653 0.86659 13.985 1.17603 14.2944C1.48547 14.6038 1.90515 14.7777 2.34277 14.7777H3.06995C3.31615 16.2538 3.89624 17.6542 4.76596 18.872L4.2521 19.3859C4.09847 19.5389 3.97653 19.7208 3.89325 19.921C3.80997 20.1212 3.76699 20.3359 3.76676 20.5528C3.76653 20.7697 3.80906 20.9844 3.89192 21.1848C3.97477 21.3852 4.09633 21.5673 4.24963 21.7207C4.40294 21.8741 4.58498 21.9958 4.78534 22.0787C4.98571 22.1617 5.20046 22.2043 5.41732 22.2042C5.63418 22.2041 5.84889 22.1612 6.04916 22.078C6.24943 21.9948 6.43134 21.873 6.58448 21.7195L7.09834 21.2056C8.31704 22.0746 9.71765 22.6545 11.1939 22.9016V23.6276ZM10.1105 17.7138C9.00992 17.0564 8.18255 16.025 7.77951 14.808C7.37646 13.591 7.42464 12.2696 7.91523 11.0852C8.40583 9.90082 9.30611 8.93241 10.4516 8.35685C11.5972 7.7813 12.9115 7.63702 14.1546 7.95037C14.6547 8.07657 15.1336 8.27532 15.576 8.54028C16.5634 9.13 17.3343 10.0223 17.7746 11.0847C18.2148 12.1472 18.3009 13.3232 18.02 14.4384C17.8938 14.9385 17.695 15.4174 17.4301 15.8599C16.9752 16.6219 16.3381 17.259 15.576 17.7138C15.1336 17.9788 14.6547 18.1776 14.1546 18.3038C13.4749 18.4761 12.7678 18.5127 12.0738 18.4115C11.3799 18.3103 10.7127 18.0732 10.1105 17.7138Z\" fill=\"#0198B5\" /&gt;&lt;/g&gt;&lt;defs&gt;&lt;clipPath id=\"clip0_60_87\"&gt;&lt;rect width=\"46\" height=\"46\" fill=\"white\" /&gt;&lt;/clipPath&gt;&lt;/defs&gt;&lt;/svg&gt;&lt;/figure&gt;&lt;h3&gt;Weapons &amp; Small Arms Accessories&lt;/h3&gt;&lt;/div&gt;&lt;/a&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;/section&gt;[/custom-html]</shortcode><shortcode>[products title=\"Popular &lt;span&gt;Products&lt;/span&gt;\" limit=\"4\" tabs=\"all,featured,on-sale,trending,top-rated\" enable_lazy_loading=\"no\"][/products]</shortcode><shortcode>[custom-html]&lt;section class=\"gallery-area section2 bg-img jarallax position-relative\"&gt;&lt;div class=\"container\"&gt;&lt;div class=\"row\"&gt;&lt;div class=\"col-md-12 col-sm-12\"&gt;&lt;div class=\"section-heading\"&gt;&lt;h2&gt;Photo Gallery&lt;/h2&gt;&lt;p&gt;All modern weapons can benefit from our wide range of services — from precision engineering to advanced support solutions, ensuring top performance and reliability.&lt;/p&gt;&lt;/div&gt;&lt;/div&gt;&lt;div class=\"gallery col-sm-12 pd-0 position-relative\"&gt;&lt;div class=\"row\"&gt;&lt;div class=\"col-md-4 col-sm-4 col-xs-12 pd-0\"&gt;&lt;div class=\"row\"&gt;&lt;div class=\"col-sm-12 mr-b30\"&gt;&lt;div class=\"gimg\"&gt;&lt;figure&gt;&lt;a href=\"/storage/11111.jpg\"&gt;&lt;img src=\"/storage/11111.jpg\" alt=\"\" /&gt;&lt;div class=\"con-pop\"&gt;&lt;span&gt;&lt;i class=\"fas fa-search\"&gt;&lt;/i&gt;&lt;/span&gt;&lt;/div&gt;&lt;/a&gt;&lt;div class=\"content\"&gt;&lt;h3&gt;Bullets Roll&lt;/h3&gt;&lt;p&gt;All modern weaponts can aiate our broad services akshay.&lt;/p&gt;&lt;/div&gt;&lt;/figure&gt;&lt;/div&gt;&lt;/div&gt;&lt;div class=\"col-sm-12 mr-b30\"&gt;&lt;div class=\"gimg\"&gt;&lt;figure&gt;&lt;a href=\"/storage/114.jpg\"&gt;&lt;img src=\"/storage/114.jpg\" alt=\"\" /&gt;&lt;div class=\"con-pop\"&gt;&lt;span&gt;&lt;i class=\"fas fa-search\"&gt;&lt;/i&gt;&lt;/span&gt;&lt;/div&gt;&lt;/a&gt;&lt;div class=\"content\"&gt;&lt;h3&gt;Bullets Roll&lt;/h3&gt;&lt;p&gt;All modern weaponts can aiate our broad services akshay.&lt;/p&gt;&lt;/div&gt;&lt;/figure&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;div class=\"col-md-4 col-sm-4 col-xs-12 pd-0\"&gt;&lt;div class=\"col-sm-12 mr-b30\"&gt;&lt;div class=\"gimg\"&gt;&lt;figure&gt;&lt;a href=\"/storage/2-2.jpg\"&gt;&lt;img src=\"/storage/2-2.jpg\" alt=\"\" /&gt;&lt;div class=\"con-pop\"&gt;&lt;span&gt;&lt;i class=\"fas fa-search\"&gt;&lt;/i&gt;&lt;/span&gt;&lt;/div&gt;&lt;/a&gt;&lt;div class=\"content\"&gt;&lt;h3&gt;Bullets Roll&lt;/h3&gt;&lt;p&gt;All modern weaponts can aiate our broad services akshay.&lt;/p&gt;&lt;/div&gt;&lt;/figure&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;div class=\"col-md-4 col-sm-4 col-xs-12 pd-0\"&gt;&lt;div class=\"row\"&gt;&lt;div class=\"col-sm-12 mr-b30\"&gt;&lt;div class=\"gimg\"&gt;&lt;figure&gt;&lt;a href=\"/storage/1113.jpg\"&gt;&lt;img src=\"/storage/1113.jpg\" alt=\"\" /&gt;&lt;div class=\"con-pop\"&gt;&lt;span&gt;&lt;i class=\"fas fa-search\"&gt;&lt;/i&gt;&lt;/span&gt;&lt;/div&gt;&lt;/a&gt;&lt;div class=\"content\"&gt;&lt;h3&gt;Bullets Roll&lt;/h3&gt;&lt;p&gt;All modern weaponts can aiate our broad services akshay.&lt;/p&gt;&lt;/div&gt;&lt;/figure&gt;&lt;/div&gt;&lt;/div&gt;&lt;div class=\"col-sm-12 mr-b30\"&gt;&lt;div class=\"gimg\"&gt;&lt;figure&gt;&lt;a href=\"/storage/6-1.jpg\"&gt;&lt;img src=\"/storage/6-1.jpg\" alt=\"\" /&gt;&lt;div class=\"con-pop\"&gt;&lt;span&gt;&lt;i class=\"fas fa-search\"&gt;&lt;/i&gt;&lt;/span&gt;&lt;/div&gt;&lt;/a&gt;&lt;div class=\"content\"&gt;&lt;h3&gt;Bullets Roll&lt;/h3&gt;&lt;p&gt;All modern weaponts can aiate our broad services akshay.&lt;/p&gt;&lt;/div&gt;&lt;/figure&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;div class=\"col-md-8 col-sm-8 col-xs-12 pd-0 position-relative\"&gt;&lt;div class=\"col-sm-12 mr-b30 lst_div_box_galery d-md-block d-sm-none d-none\"&gt;&lt;div class=\"gimg\"&gt;&lt;figure&gt;&lt;a href=\"/storage/5-1.jpg\"&gt;&lt;img src=\"/storage/5-1.jpg\" alt=\"\" /&gt;&lt;div class=\"con-pop\"&gt;&lt;span&gt;&lt;i class=\"fas fa-search\"&gt;&lt;/i&gt;&lt;/span&gt;&lt;/div&gt;&lt;/a&gt;&lt;div class=\"content\"&gt;&lt;h3&gt;Bullets Roll&lt;/h3&gt;&lt;p&gt;All modern weaponts can aiate our broad services akshay.&lt;/p&gt;&lt;/div&gt;&lt;/figure&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;/section&gt;[/custom-html]</shortcode><p>[custom-html]&lt;section class=\"training-area section bg-img jarallax af home-contact1\"&gt;&lt;div class=\"container\"&gt;&lt;div class=\"row\"&gt;&lt;div class=\"col-lg-6 col-md-12\"&gt;&nbsp;</p><shortcode>[contact-box display_fields=\"phone,email,subject,address\" mandatory_fields=\"email\" button_label_1=\"Send\" button_icon_1=\"fa fa-headphones-alt\" button_icon_2=\"fa fa-map-marker-alt\"][/contact-box]</shortcode><p>&nbsp;&lt;/div&gt;&lt;div class=\"col-lg-6 col-md-12\"&gt;&lt;div class=\"training-con pd-t60\"&gt;&lt;h2&gt;Weapon Trainings&lt;/h2&gt;&lt;p&gt;Have questions about our products or need assistance with an order? Our team is here to help you find the right solution.&lt;/p&gt;&lt;h1&gt;P. +44 7878 348318&lt;/h1&gt;&lt;p&gt; At Regent Rogue, we believe in building lasting relationships with our customers and partners. Whether you have questions about our products, need technical support, or want collaboration, our team is ready to help. &lt;/p&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;/section&gt; [/custom-html]</p><shortcode>[featured-posts title=\"Latest News\" limit=\"4\" text_color=\"#040404\" background_color=\"#F8F8F8\" enable_lazy_loading=\"yes\"][/featured-posts]</shortcode><shortcode>[google-map height=\"500\"]The Larches, Deeside CH5 3RY, United Kingdom[/google-map]</shortcode><shortcode>[custom-html]&lt;section class=\"partner-area section bg-img jarallax\"&gt;&lt;div class=\"container\"&gt;&lt;div class=\"row\"&gt;&lt;div class=\"col-md-12 col-sm-12\"&gt;&lt;div class=\"section-heading\"&gt;&lt;h2&gt;Our Trusted Partners&lt;/h2&gt;&lt;p&gt;All modern weapons can benefit from our wide range of services — from precision engineering to advanced support solutions, ensuring top performance and reliability.&lt;/p&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;div class=\"row\"&gt;&lt;div class=\"col-md-12 col-sm-12\"&gt;&lt;div class=\"partner-list\"&gt;&lt;ul&gt;&lt;li&gt;&lt;a href=\"#\"&gt;&lt;img src=\"/storage/1-1.png\" alt=\"\" /&gt;&lt;/a&gt;&lt;/li&gt;&lt;li&gt;&lt;a href=\"#\"&gt;&lt;img src=\"/storage/222.png\" alt=\"\" /&gt;&lt;/a&gt;&lt;/li&gt;&lt;li&gt;&lt;a href=\"#\"&gt;&lt;img src=\"/storage/3-1.png\" alt=\"\" /&gt;&lt;/a&gt;&lt;/li&gt;&lt;li&gt;&lt;a href=\"#\"&gt;&lt;img src=\"/storage/4.png\" alt=\"\" /&gt;&lt;/a&gt;&lt;/li&gt;&lt;li&gt;&lt;a href=\"#\"&gt;&lt;img src=\"/storage/5.png\" alt=\"\" /&gt;&lt;/a&gt;&lt;/li&gt;&lt;li&gt;&lt;a href=\"#\"&gt;&lt;img src=\"/storage/6.png\" alt=\"\" /&gt;&lt;/a&gt;&lt;/li&gt;&lt;li&gt;&lt;a href=\"#\"&gt;&lt;img src=\"/storage/7.png\" alt=\"\" /&gt;&lt;/a&gt;&lt;/li&gt;&lt;li&gt;&lt;a href=\"#\"&gt;&lt;img src=\"/storage/8.png\" alt=\"\" /&gt;&lt;/a&gt;&lt;/li&gt;&lt;li&gt;&lt;a href=\"#\"&gt;&lt;img src=\"/storage/9.png\" alt=\"\" /&gt;&lt;/a&gt;&lt;/li&gt;&lt;li&gt;&lt;a href=\"#\"&gt;&lt;img src=\"/storage/10.png\" alt=\"\" /&gt;&lt;/a&gt;&lt;/li&gt;&lt;/ul&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;/section&gt;[/custom-html]</shortcode>', 1, NULL, 'full-width', '', 'published', '2025-10-20 17:05:54', '2025-11-18 12:04:02'),
(2, 'Fashion Home', '<shortcode>[simple-slider key=\"slider-home-2\" style=\"fashion\"][/simple-slider]</shortcode><shortcode>[product-categories title=\"Top &lt;span&gt;Categories&lt;/span&gt;\" category_ids=\"1,2,3,4\" style=\"fashion\" enable_lazy_loading=\"yes\"][/product-categories]</shortcode><shortcode>[products style=\"fashion\" title=\"Popular &lt;span&gt;Products&lt;/span&gt;\" limit=\"10\" enable_lazy_loading=\"yes\"][/products]</shortcode><shortcode>[theme-ads key_1=\"QPTCBJBOJOSY\" key_2=\"T2VFLDYYIJEH\" enable_lazy_loading=\"yes\"][/theme-ads]</shortcode><shortcode>[featured-posts title=\"Popular Posts\" limit=\"4\" enable_lazy_loading=\"yes\"][/featured-posts]</shortcode><shortcode>[brands title=\"Happy Sponsors\" quantity=\"6\" name_1=\"Bustle\" image_1=\"brands/brand-01.png\" link_1=\"#\" name_2=\"Bazaar\" image_2=\"brands/brand-02.png\" link_2=\"#\" name_3=\"goop\" image_3=\"brands/brand-03.png\" link_3=\"#\" name_4=\"Brit + Co\" image_4=\"brands/brand-04.png\" link_4=\"#\" name_5=\"The Coveteur\" image_5=\"brands/brand-05.png\" link_5=\"#\" name_6=\"allure\" image_6=\"brands/brand-06.png\" link_6=\"#\" enable_lazy_loading=\"yes\"][/brands]</shortcode>', 1, NULL, 'full-width', '', 'draft', '2025-10-20 17:05:54', '2025-11-10 08:51:34'),
(3, 'Furniture Home', '<shortcode>[simple-slider key=\"slider-furniture\" style=\"furniture\"][/simple-slider]</shortcode><shortcode>[services quantity=\"4\" title_1=\"Free shipping\" description_1=\"Free shipping on orders over.\" image_1=\"icons/box.png\" title_2=\"Free Returns\" description_2=\"30-days free return policy\" image_2=\"icons/car.png\" title_3=\"Secured Payments\" description_3=\"We accept all major credit cards\" image_3=\"icons/payment.png\" title_4=\"Customer Service\" description_4=\"Top notch customer service\" image_4=\"icons/hours.png\" enable_lazy_loading=\"yes\"][/services]</shortcode><shortcode>[products style=\"wooden\" title=\"Popular &lt;span&gt;Products&lt;/span&gt;\" limit=\"10\" enable_lazy_loading=\"yes\"][/products]</shortcode><shortcode>[theme-ads style=\"furniture\" key_1=\"JO7LLJHFH1RO\" key_2=\"L8GDJUBVD2TQ\" key_3=\"PXJPAXLOCVRS\" enable_lazy_loading=\"yes\"][/theme-ads]</shortcode><shortcode>[deal-product flash_sale_id=\"1\" enable_lazy_loading=\"yes\"][/deal-product]</shortcode><shortcode>[products-slide title=\"Top Sell In Month\" limit=\"5\" type=\"trending\" enable_lazy_loading=\"yes\"][/products-slide]</shortcode><shortcode>[brands title=\"Happy Sponsors\" background_color=\"#040404\" quantity=\"6\" name_1=\"Bustle\" image_1=\"brands/brand-w-01.png\" link_1=\"https://www.bustle.com\" name_2=\"Bazaar\" image_2=\"brands/brand-w-02.png\" link_2=\"https://www.harpersbazaar.com\" name_3=\"Goop\" image_3=\"brands/brand-w-03.png\" link_3=\"https://goop.com/\" name_4=\"Brit + Co\" image_4=\"brands/brand-w-04.png\" link_4=\"https://www.brit.co\" name_5=\"The Couture Club\" image_5=\"brands/brand-w-05.png\" link_5=\"https://www.thecoutureclub.com\" name_6=\"Allure\" image_6=\"brands/brand-w-06.png\" link_6=\"https://www.allure.com\" enable_lazy_loading=\"yes\"][/brands]</shortcode><shortcode>[featured-posts title=\"Blog &amp; Insights\" limit=\"4\" type=\"popular\" url=\"/blog\" enable_lazy_loading=\"yes\"][/featured-posts]</shortcode>', 1, NULL, 'full-width', '', 'draft', '2025-10-20 17:05:54', '2025-11-10 08:51:00'),
(4, 'Cosmetics Home', '<shortcode>[simple-slider key=\"slider-cosmetics\" style=\"cosmetics\"][/simple-slider]</shortcode><shortcode>[brands background_color=\"#F7EFEC\" quantity=\"6\" name_1=\"Bustle\" image_1=\"brands/pla-brand-01.png\" link_1=\"https://www.bustle.com\" name_2=\"Bazaar\" image_2=\"brands/pla-brand-02.png\" link_2=\"https://www.harpersbazaar.com\" name_3=\"Goop\" image_3=\"brands/pla-brand-03.png\" link_3=\"https://goop.com/\" name_4=\"Brit + Co\" image_4=\"brands/pla-brand-04.png\" link_4=\"https://www.brit.co\" name_5=\"The Couture Club\" image_5=\"brands/pla-brand-05.png\" link_5=\"https://www.thecoutureclub.com\" name_6=\"Allure\" image_6=\"brands/pla-brand-06.png\" link_6=\"https://www.allure.com\" enable_lazy_loading=\"yes\"][/brands]</shortcode><shortcode>[product-collections collection_ids=\"4,5,6,7\" enable_lazy_loading=\"yes\"][/product-collections]</shortcode><shortcode>[products style=\"wooden\" title=\"Popular &lt;span&gt;Products&lt;/span&gt;\" limit=\"4\" enable_lazy_loading=\"yes\"][/products]</shortcode><shortcode>[product-categories category_ids=\"10,11,12,13,14,15\" style=\"cosmetics\" enable_lazy_loading=\"yes\"][/product-categories]</shortcode><shortcode>[deal-product flash_sale_id=\"1\" style=\"cosmetics\" marque_text=\"Great Deal Of The Day Shop Now\" marque_highlight_text=\"Shop Now\" marque_highlight_url=\"/products\" highlight_background=\"blog/9.jpg\" enable_lazy_loading=\"yes\"][/deal-product]</shortcode><shortcode>[testimonials title=\"User Feedbacks\" limit=\"3\" enable_lazy_loading=\"yes\"][/testimonials]</shortcode><shortcode>[featured-posts title=\"Blog &amp; Insights\" limit=\"4\" type=\"popular\" url=\"/blog\" enable_lazy_loading=\"yes\"][/featured-posts]</shortcode>', 1, NULL, 'full-width', '', 'draft', '2025-10-20 17:05:54', '2025-11-10 08:50:40'),
(5, 'Food Grocery Home', '<shortcode>[simple-slider key=\"slider-grocery\" style=\"grocery\" ads_1=\"EMRCINED6AX9\" ads_2=\"JVMDAIB9HO2I\" background_image=\"banners/banner-bg-05.jpg\"][/simple-slider]</shortcode><shortcode>[services quantity=\"4\" title_1=\"Free shipping\" description_1=\"Free shipping on orders over.\" image_1=\"icons/box.png\" title_2=\"Free Returns\" description_2=\"30-days free return policy\" image_2=\"icons/car.png\" title_3=\"Secured Payments\" description_3=\"We accept all major credit cards\" image_3=\"icons/payment.png\" title_4=\"Customer Service\" description_4=\"Top notch customer service\" image_4=\"icons/hours.png\" enable_lazy_loading=\"yes\"][/services]</shortcode><shortcode>[products style=\"wooden\" title=\"Popular &lt;span&gt;Products&lt;/span&gt;\" limit=\"10\" enable_lazy_loading=\"yes\"][/products]</shortcode><shortcode>[deal-product flash_sale_id=\"1\" style=\"cosmetics\" enable_lazy_loading=\"yes\"][/deal-product]</shortcode><shortcode>[products-by-categories category_ids=\"2,3,6,11\" number_of_products=\"4\" enable_lazy_loading=\"yes\"][/products-by-categories]</shortcode><shortcode>[testimonials title=\"User Feedbacks\" limit=\"3\" background_color=\"#F7EFEC\" card_color=\"#FFFFFF\" enable_lazy_loading=\"yes\"][/testimonials]</shortcode><shortcode>[featured-posts title=\"Blog &amp; Insights\" limit=\"4\" url=\"/blog\" enable_lazy_loading=\"yes\"][/featured-posts]</shortcode>', 1, NULL, 'full-width', '', 'draft', '2025-10-20 17:05:54', '2025-11-10 08:50:49'),
(6, 'Blog', NULL, 1, NULL, NULL, NULL, 'published', '2025-10-20 17:05:54', '2025-10-20 17:05:54'),
(7, 'About', '<shortcode>[custom-html]&lt;section class=\"about-area section bg-img jarallax\"&gt;&lt;div class=\"container\"&gt;&lt;div class=\"row\"&gt;&lt;div class=\"col-md-7 col-sm-12\"&gt;&lt;div class=\"section-heading2\"&gt;&lt;h2&gt;Who We Are&lt;/h2&gt;&lt;/div&gt;&lt;div class=\"about-contents\"&gt;&lt;p&gt; At Regent Rogue, we are more than a supplier of arms and tactical gear — we are engineers of precision and partners in readiness. Our mission is to equip professionals, operators, and enthusiasts with tools they can trust in the field, the range, and beyond. &lt;/p&gt;&lt;p&gt; From innovative suppressors and modular systems to breaching solutions and operator accessories, every product is tested for performance, durability, and reliability. We work alongside industry specialists and field operators to ensure our catalog isn’t just built to spec — it’s built to win. &lt;/p&gt;&lt;/div&gt;&lt;/div&gt;&lt;div class=\"col-md-5 col-sm-12 \"&gt;&lt;div class=\"about-cata\"&gt;&lt;img src=\"/storage/about-img-01.png\" alt=\"\" class=\"img-fluid\"&gt;&lt;/div&gt;&lt;/div&gt;&lt;div class=\"paraBox\"&gt;&lt;p&gt; I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences. &lt;/p&gt;&lt;p&gt; rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.\" &lt;/p&gt;&lt;/div&gt;&lt;div class=\"buttons\"&gt;&lt;a href=\"/products\" class=\"btn1\"&gt;Our Shop&lt;/a&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;/section&gt;[/custom-html]</shortcode><shortcode>[custom-html]&lt;section class=\"partner-area section bg-img jarallax\"&gt;&lt;div class=\"container\"&gt;&lt;div class=\"row\"&gt;&lt;div class=\"col-md-12 col-sm-12\"&gt;&lt;div class=\"section-heading\"&gt;&lt;h2&gt;Our Trusted Partners&lt;/h2&gt;&lt;p&gt;All modern weapons can benefit from our wide range of services — from precision engineering to advanced support solutions, ensuring top performance and reliability.&lt;/p&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;div class=\"row\"&gt;&lt;div class=\"col-md-12 col-sm-12\"&gt;&lt;div class=\"partner-list\"&gt;&lt;ul&gt;&lt;li&gt;&lt;a href=\"#\"&gt;&lt;img src=\"/storage/1-1.png\" alt=\"\" /&gt;&lt;/a&gt;&lt;/li&gt;&lt;li&gt;&lt;a href=\"#\"&gt;&lt;img src=\"/storage/222.png\" alt=\"\" /&gt;&lt;/a&gt;&lt;/li&gt;&lt;li&gt;&lt;a href=\"#\"&gt;&lt;img src=\"/storage/3-1.png\" alt=\"\" /&gt;&lt;/a&gt;&lt;/li&gt;&lt;li&gt;&lt;a href=\"#\"&gt;&lt;img src=\"/storage/4.png\" alt=\"\" /&gt;&lt;/a&gt;&lt;/li&gt;&lt;li&gt;&lt;a href=\"#\"&gt;&lt;img src=\"/storage/5.png\" alt=\"\" /&gt;&lt;/a&gt;&lt;/li&gt;&lt;li&gt;&lt;a href=\"#\"&gt;&lt;img src=\"/storage/6.png\" alt=\"\" /&gt;&lt;/a&gt;&lt;/li&gt;&lt;li&gt;&lt;a href=\"#\"&gt;&lt;img src=\"/storage/7.png\" alt=\"\" /&gt;&lt;/a&gt;&lt;/li&gt;&lt;li&gt;&lt;a href=\"#\"&gt;&lt;img src=\"/storage/8.png\" alt=\"\" /&gt;&lt;/a&gt;&lt;/li&gt;&lt;li&gt;&lt;a href=\"#\"&gt;&lt;img src=\"/storage/9.png\" alt=\"\" /&gt;&lt;/a&gt;&lt;/li&gt;&lt;li&gt;&lt;a href=\"#\"&gt;&lt;img src=\"/storage/10.png\" alt=\"\" /&gt;&lt;/a&gt;&lt;/li&gt;&lt;/ul&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;/section&gt;[/custom-html]</shortcode><p>&nbsp;</p>', 1, NULL, 'default', '', 'published', '2025-10-20 17:05:54', '2025-11-10 13:05:35'),
(8, 'Contact', '<shortcode>[contact-box display_fields=\"phone,email,subject,address\" mandatory_fields=\"email\" title=\"Get In Touch\" address=\"24/26 Strait Bargate, Boston, PE21, United Kingdom\" phone=\" +098 (905) 786 897 8\" email=\"support@tinypandademosite.org\" hours=\"10 am - 10 pm EST, 7 days a week\" button_label_1=\"Get Support On Call\" button_url_1=\"#\" button_icon_1=\"fa fa-headphones-alt\" button_label_2=\"Get Direction\" button_url_2=\"#\" button_icon_2=\"fa fa-map-marker-alt\"][/contact-box]</shortcode><shortcode>[google-map]24/26 Strait Bargate, Boston, PE21, United Kingdom[/google-map]</shortcode>', 1, NULL, 'default', '', 'published', '2025-10-20 17:05:54', '2025-11-05 12:08:28'),
(9, 'Coming soon', '<shortcode>[coming-soon title=\"We are Coming Soon\" subtitle=\"Coming Soon!\" time=\"2025-10-24\" background_image=\"banners/coming-soon.jpg\" logo_style=\"general/logo-white.png\" show_subscribe_form=\"1\"][/coming-soon]</shortcode>', 1, NULL, 'blank', '', 'published', '2025-10-20 17:05:54', '2025-11-10 08:52:01'),
(10, 'Store Locator', '<shortcode>[shop-location quantity=\"4\" name_1=\"Baldwin Hills Crenshaw Plaza\" address_1=\"24/26 Strait Bargate, Boston, PE21, United Kingdom\" phone_1=\"+098 (905) 786 897 8\" hours_1=\"10 am - 10 pm EST, 7 days a week\" image_1=\"shop/location-1.png\" name_2=\"Ninico Hills Crenshaw Plaza\" address_2=\" 36/26 Strait Bargate, Boston, PE21, United Kingdom\" phone_2=\"+098 112 786 897 8\" hours_2=\"9 am - 10 pm EST, 5 days a week\" image_2=\"shop/location-2.png\" name_3=\"Vegas BGM Crenshaw Plaza\" address_3=\"40/26 Strait Bargate, Vegas, PE21, United Kingdom\" phone_3=\" +098 (905) 786 897 8\" hours_3=\"10 am - 10 pm EST, 7 days a week\" image_3=\"shop/location-3.png\" name_4=\"Bargate Cine Crenshaw Plaza\" address_4=\"38/26 Strait Bargate, Point, PE21, United Kingdom\" phone_4=\"6 - 146 - 389 - 5748\" hours_4=\"10 am - 10 pm EST, 7 days a week\" image_4=\"shop/location-4.png\" enable_lazy_loading=\"yes\"][/shop-location]</shortcode><shortcode>[google-map]New York, USA[/google-map]</shortcode>', 1, NULL, 'default', '', 'draft', '2025-10-20 17:05:54', '2025-11-10 08:55:13'),
(11, 'FAQs', '[faqs category_ids=\"1,2,3\"][/faqs]', 1, NULL, NULL, NULL, 'published', '2025-10-20 17:05:54', '2025-10-20 17:05:54');
INSERT INTO `pages` (`id`, `name`, `content`, `user_id`, `image`, `template`, `description`, `status`, `created_at`, `updated_at`) VALUES
(12, 'PARTNERS', '<shortcode>[custom-html]&lt;section class=\"partner-area section bg-img jarallax\"&gt;&lt;div class=\"container\"&gt;&lt;div class=\"row\"&gt;&lt;div class=\"col-md-12 col-sm-12\"&gt;&lt;div class=\"section-heading\"&gt;&lt;h2&gt;Our Trusted Partners&lt;/h2&gt;&lt;p&gt;All modern weapons can benefit from our wide range of services — from precision engineering to advanced support solutions, ensuring top performance and reliability.&lt;/p&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;div class=\"row\"&gt;&lt;div class=\"col-md-12 col-sm-12\"&gt;&lt;div class=\"partner-list\"&gt;&lt;ul&gt;&lt;li&gt;&lt;a href=\"#\"&gt;&lt;img src=\"/storage/1-1.png\" alt=\"\" /&gt;&lt;/a&gt;&lt;/li&gt;&lt;li&gt;&lt;a href=\"#\"&gt;&lt;img src=\"/storage/222.png\" alt=\"\" /&gt;&lt;/a&gt;&lt;/li&gt;&lt;li&gt;&lt;a href=\"#\"&gt;&lt;img src=\"/storage/3-1.png\" alt=\"\" /&gt;&lt;/a&gt;&lt;/li&gt;&lt;li&gt;&lt;a href=\"#\"&gt;&lt;img src=\"/storage/4.png\" alt=\"\" /&gt;&lt;/a&gt;&lt;/li&gt;&lt;li&gt;&lt;a href=\"#\"&gt;&lt;img src=\"/storage/5.png\" alt=\"\" /&gt;&lt;/a&gt;&lt;/li&gt;&lt;li&gt;&lt;a href=\"#\"&gt;&lt;img src=\"/storage/6.png\" alt=\"\" /&gt;&lt;/a&gt;&lt;/li&gt;&lt;li&gt;&lt;a href=\"#\"&gt;&lt;img src=\"/storage/7.png\" alt=\"\" /&gt;&lt;/a&gt;&lt;/li&gt;&lt;li&gt;&lt;a href=\"#\"&gt;&lt;img src=\"/storage/8.png\" alt=\"\" /&gt;&lt;/a&gt;&lt;/li&gt;&lt;li&gt;&lt;a href=\"#\"&gt;&lt;img src=\"/storage/9.png\" alt=\"\" /&gt;&lt;/a&gt;&lt;/li&gt;&lt;li&gt;&lt;a href=\"#\"&gt;&lt;img src=\"/storage/10.png\" alt=\"\" /&gt;&lt;/a&gt;&lt;/li&gt;&lt;li&gt;&lt;a href=\"#\"&gt;&lt;img src=\"/storage/1-1.png\" alt=\"\" /&gt;&lt;/a&gt;&lt;/li&gt;&lt;li&gt;&lt;a href=\"#\"&gt;&lt;img src=\"/storage/222.png\" alt=\"\" /&gt;&lt;/a&gt;&lt;/li&gt;&lt;li&gt;&lt;a href=\"#\"&gt;&lt;img src=\"/storage/3-1.png\" alt=\"\" /&gt;&lt;/a&gt;&lt;/li&gt;&lt;li&gt;&lt;a href=\"#\"&gt;&lt;img src=\"/storage/4.png\" alt=\"\" /&gt;&lt;/a&gt;&lt;/li&gt;&lt;li&gt;&lt;a href=\"#\"&gt;&lt;img src=\"/storage/5.png\" alt=\"\" /&gt;&lt;/a&gt;&lt;/li&gt;&lt;li&gt;&lt;a href=\"#\"&gt;&lt;img src=\"/storage/6.png\" alt=\"\" /&gt;&lt;/a&gt;&lt;/li&gt;&lt;li&gt;&lt;a href=\"#\"&gt;&lt;img src=\"/storage/7.png\" alt=\"\" /&gt;&lt;/a&gt;&lt;/li&gt;&lt;li&gt;&lt;a href=\"#\"&gt;&lt;img src=\"/storage/8.png\" alt=\"\" /&gt;&lt;/a&gt;&lt;/li&gt;&lt;li&gt;&lt;a href=\"#\"&gt;&lt;img src=\"/storage/9.png\" alt=\"\" /&gt;&lt;/a&gt;&lt;/li&gt;&lt;li&gt;&lt;a href=\"#\"&gt;&lt;img src=\"/storage/10.png\" alt=\"\" /&gt;&lt;/a&gt;&lt;/li&gt;&lt;li&gt;&lt;a href=\"#\"&gt;&lt;img src=\"/storage/1-1.png\" alt=\"\" /&gt;&lt;/a&gt;&lt;/li&gt;&lt;li&gt;&lt;a href=\"#\"&gt;&lt;img src=\"/storage/222.png\" alt=\"\" /&gt;&lt;/a&gt;&lt;/li&gt;&lt;li&gt;&lt;a href=\"#\"&gt;&lt;img src=\"/storage/3-1.png\" alt=\"\" /&gt;&lt;/a&gt;&lt;/li&gt;&lt;li&gt;&lt;a href=\"#\"&gt;&lt;img src=\"/storage/4.png\" alt=\"\" /&gt;&lt;/a&gt;&lt;/li&gt;&lt;li&gt;&lt;a href=\"#\"&gt;&lt;img src=\"/storage/5.png\" alt=\"\" /&gt;&lt;/a&gt;&lt;/li&gt;&lt;li&gt;&lt;a href=\"#\"&gt;&lt;img src=\"/storage/6.png\" alt=\"\" /&gt;&lt;/a&gt;&lt;/li&gt;&lt;li&gt;&lt;a href=\"#\"&gt;&lt;img src=\"/storage/7.png\" alt=\"\" /&gt;&lt;/a&gt;&lt;/li&gt;&lt;li&gt;&lt;a href=\"#\"&gt;&lt;img src=\"/storage/8.png\" alt=\"\" /&gt;&lt;/a&gt;&lt;/li&gt;&lt;li&gt;&lt;a href=\"#\"&gt;&lt;img src=\"/storage/9.png\" alt=\"\" /&gt;&lt;/a&gt;&lt;/li&gt;&lt;li&gt;&lt;a href=\"#\"&gt;&lt;img src=\"/storage/10.png\" alt=\"\" /&gt;&lt;/a&gt;&lt;/li&gt;&lt;/ul&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;/section&gt; [/custom-html]</shortcode>', 1, NULL, 'default', '', 'published', '2025-10-28 12:02:15', '2025-11-11 06:27:51');

-- --------------------------------------------------------

--
-- Table structure for table `pages_translations`
--

CREATE TABLE `pages_translations` (
  `lang_code` varchar(20) NOT NULL,
  `pages_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) DEFAULT NULL,
  `description` varchar(400) DEFAULT NULL,
  `content` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(191) NOT NULL,
  `token` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `currency` varchar(120) DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `charge_id` varchar(191) DEFAULT NULL,
  `payment_channel` varchar(60) DEFAULT NULL,
  `description` varchar(400) DEFAULT NULL,
  `amount` decimal(15,2) UNSIGNED NOT NULL,
  `payment_fee` decimal(15,2) DEFAULT 0.00,
  `order_id` bigint(20) UNSIGNED DEFAULT NULL,
  `status` varchar(60) DEFAULT 'pending',
  `payment_type` varchar(191) DEFAULT 'confirm',
  `customer_id` bigint(20) UNSIGNED DEFAULT NULL,
  `refunded_amount` decimal(15,2) UNSIGNED DEFAULT NULL,
  `refund_note` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `customer_type` varchar(191) DEFAULT NULL,
  `metadata` mediumtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`id`, `currency`, `user_id`, `charge_id`, `payment_channel`, `description`, `amount`, `payment_fee`, `order_id`, `status`, `payment_type`, `customer_id`, `refunded_amount`, `refund_note`, `created_at`, `updated_at`, `customer_type`, `metadata`) VALUES
(3, 'GBP', 0, 'EN4IOFWWAS', 'cod', NULL, 2475.00, 0.00, 4, 'pending', 'confirm', NULL, NULL, NULL, '2025-11-15 12:51:48', '2025-11-15 12:51:48', 'Botble\\Ecommerce\\Models\\Customer', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `payment_logs`
--

CREATE TABLE `payment_logs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `payment_method` varchar(191) NOT NULL,
  `request` longtext DEFAULT NULL,
  `response` longtext DEFAULT NULL,
  `ip_address` varchar(45) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payment_logs`
--

INSERT INTO `payment_logs` (`id`, `payment_method`, `request`, `response`, `ip_address`, `created_at`, `updated_at`) VALUES
(1, 'stripe', '{\"line_items\":[{\"price_data\":{\"product_data\":{\"name\":\"weapon 2\",\"metadata\":{\"pro_id\":377},\"description\":\"weapon 2\",\"images\":[\"https:\\/\\/tinypandademosite.org\\/storage\\/5-1-4.png\"]},\"unit_amount\":9500,\"currency\":\"GBP\"},\"quantity\":1}],\"mode\":\"payment\",\"locale\":\"en\",\"success_url\":\"https:\\/\\/tinypandademosite.org\\/payment\\/stripe\\/success?session_id={CHECKOUT_SESSION_ID}\",\"cancel_url\":\"https:\\/\\/tinypandademosite.org\\/payment\\/stripe\\/error\",\"metadata\":{\"order_id\":\"[7]\",\"amount\":95,\"currency\":\"GBP\",\"customer_id\":null,\"customer_type\":\"Botble\\\\Ecommerce\\\\Models\\\\Customer\",\"return_url\":\"https:\\/\\/tinypandademosite.org\\/checkout\\/e92f428df322219b971aadb5b50ace21?error=1&error_type=payment\",\"callback_url\":\"https:\\/\\/tinypandademosite.org\\/checkout\\/e92f428df322219b971aadb5b50ace21\\/success\",\"payment_fee\":0},\"shipping_options\":[{\"shipping_rate_data\":{\"type\":\"fixed_amount\",\"fixed_amount\":{\"amount\":0,\"currency\":\"GBP\"},\"display_name\":\"Default\"}}]}', '{\"id\":\"cs_live_a1vEpl9U6705Vjr5avSAQbs3oDoXP6Eoly5n1NFZj0P78BOcKIfPKeyLVr\",\"object\":\"checkout.session\",\"adaptive_pricing\":{\"enabled\":true},\"after_expiration\":null,\"allow_promotion_codes\":null,\"amount_subtotal\":9500,\"amount_total\":9500,\"automatic_tax\":{\"enabled\":false,\"liability\":null,\"provider\":null,\"status\":null},\"billing_address_collection\":null,\"branding_settings\":{\"background_color\":\"#000000\",\"border_style\":\"rounded\",\"button_color\":\"#02a7c9\",\"display_name\":\"Regent Rogue LLC\",\"font_family\":\"default\",\"icon\":{\"file\":\"file_1SUvkpIMYgnLXIxoS8StV4Ax\",\"type\":\"file\"},\"logo\":{\"file\":\"file_1SVSpZIMYgnLXIxoDY2ucEqv\",\"type\":\"file\"}},\"cancel_url\":\"https:\\/\\/tinypandademosite.org\\/payment\\/stripe\\/error\",\"client_reference_id\":null,\"client_secret\":null,\"collected_information\":null,\"consent\":null,\"consent_collection\":null,\"created\":1765972020,\"currency\":\"gbp\",\"currency_conversion\":null,\"custom_fields\":[],\"custom_text\":{\"after_submit\":null,\"shipping_address\":null,\"submit\":null,\"terms_of_service_acceptance\":null},\"customer\":null,\"customer_account\":null,\"customer_creation\":\"if_required\",\"customer_details\":null,\"customer_email\":null,\"discounts\":[],\"expires_at\":1766058420,\"invoice\":null,\"invoice_creation\":{\"enabled\":false,\"invoice_data\":{\"account_tax_ids\":null,\"custom_fields\":null,\"description\":null,\"footer\":null,\"issuer\":null,\"metadata\":[],\"rendering_options\":null}},\"livemode\":true,\"locale\":\"en\",\"metadata\":{\"amount\":\"95\",\"callback_url\":\"https:\\/\\/tinypandademosite.org\\/checkout\\/e92f428df322219b971aadb5b50ace21\\/success\",\"currency\":\"GBP\",\"customer_type\":\"Botble\\\\Ecommerce\\\\Models\\\\Customer\",\"order_id\":\"[7]\",\"payment_fee\":\"0\",\"return_url\":\"https:\\/\\/tinypandademosite.org\\/checkout\\/e92f428df322219b971aadb5b50ace21?error=1&error_type=payment\"},\"mode\":\"payment\",\"origin_context\":null,\"payment_intent\":null,\"payment_link\":null,\"payment_method_collection\":\"if_required\",\"payment_method_configuration_details\":{\"id\":\"pmc_1SUub4IMYgnLXIxoFcKMjlsk\",\"parent\":null},\"payment_method_options\":{\"card\":{\"request_three_d_secure\":\"automatic\"}},\"payment_method_types\":[\"card\",\"link\"],\"payment_status\":\"unpaid\",\"permissions\":null,\"phone_number_collection\":{\"enabled\":false},\"recovered_from\":null,\"saved_payment_method_options\":null,\"setup_intent\":null,\"shipping_address_collection\":null,\"shipping_cost\":{\"amount_subtotal\":0,\"amount_tax\":0,\"amount_total\":0,\"shipping_rate\":\"shr_1SfJC4IMYgnLXIxo3BxlLklH\"},\"shipping_options\":[{\"shipping_amount\":0,\"shipping_rate\":\"shr_1SfJC4IMYgnLXIxo3BxlLklH\"}],\"status\":\"open\",\"submit_type\":null,\"subscription\":null,\"success_url\":\"https:\\/\\/tinypandademosite.org\\/payment\\/stripe\\/success?session_id={CHECKOUT_SESSION_ID}\",\"total_details\":{\"amount_discount\":0,\"amount_shipping\":0,\"amount_tax\":0},\"ui_mode\":\"hosted\",\"url\":\"https:\\/\\/checkout.stripe.com\\/c\\/pay\\/cs_live_a1vEpl9U6705Vjr5avSAQbs3oDoXP6Eoly5n1NFZj0P78BOcKIfPKeyLVr#fidnandhYHdWcXxpYCc%2FJ2FgY2RwaXEnKSdpamZkaWAnPydgaycpJ2R1bE5gfCc%2FJ3VuWmlsc2BaMDRWUHBkXExIXGJrSV1MfWpgZ1xAYmIxVlxvYTZUaUI3VnBBbWMzPDdJSjwySkFdQ1NKZE5janYzd21GbE9CczQ8U0NhUXVCfW92bklQTGdPb2loREtpZnU1NUlSdVBzPH18JyknY3dqaFZgd3Ngdyc%2FcXdwYCknZ2RmbmJ3anBrYUZqaWp3Jz8nJjU1NTU1NScpJ2lkfGpwcVF8dWAnPyd2bGtiaWBabHFgaCcpJ2BrZGdpYFVpZGZgbWppYWB3dic%2FcXdwYHgl\",\"wallet_options\":null}', '2405:201:3005:a99a:95f6:775:ceaa:c861', '2025-12-17 11:47:01', '2025-12-17 11:47:01');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(191) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `description` varchar(400) DEFAULT NULL,
  `content` longtext DEFAULT NULL,
  `status` varchar(60) NOT NULL DEFAULT 'published',
  `author_id` bigint(20) UNSIGNED DEFAULT NULL,
  `author_type` varchar(191) NOT NULL,
  `is_featured` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `image` varchar(191) DEFAULT NULL,
  `views` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `format_type` varchar(30) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `name`, `description`, `content`, `status`, `author_id`, `author_type`, `is_featured`, `image`, `views`, `format_type`, `created_at`, `updated_at`) VALUES
(12, 'Expanding Breaching Solutions', '', NULL, 'published', 1, 'Botble\\ACL\\Models\\User', 0, '1-720x720-1.jpg', 7, NULL, '2025-10-25 08:00:02', '2025-11-10 07:09:08'),
(13, 'Expanding Breaching Solutions', '', NULL, 'published', 1, 'Botble\\ACL\\Models\\User', 0, '1-720x720-1.jpg', 5, NULL, '2025-10-25 08:02:20', '2025-11-10 07:09:01'),
(14, 'Field Testing Success: ALPHA Gen II Modular System', '', NULL, 'published', 1, 'Botble\\ACL\\Models\\User', 0, '1-720x720-1.jpg', 7, NULL, '2025-10-27 02:27:47', '2025-11-10 07:08:45'),
(15, 'Field Testing Success: ALPHA Gen II Modular System', '', NULL, 'published', 1, 'Botble\\ACL\\Models\\User', 0, '1-720x720-1.jpg', 9, NULL, '2025-10-27 03:56:59', '2025-11-10 07:08:32');

-- --------------------------------------------------------

--
-- Table structure for table `posts_translations`
--

CREATE TABLE `posts_translations` (
  `lang_code` varchar(20) NOT NULL,
  `posts_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) DEFAULT NULL,
  `description` varchar(400) DEFAULT NULL,
  `content` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `post_categories`
--

CREATE TABLE `post_categories` (
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `post_categories`
--

INSERT INTO `post_categories` (`category_id`, `post_id`) VALUES
(5, 15),
(5, 14),
(5, 13),
(5, 12);

-- --------------------------------------------------------

--
-- Table structure for table `post_tags`
--

CREATE TABLE `post_tags` (
  `tag_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `push_notifications`
--

CREATE TABLE `push_notifications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) NOT NULL,
  `message` text NOT NULL,
  `type` varchar(191) NOT NULL DEFAULT 'general',
  `target_type` varchar(191) DEFAULT NULL,
  `target_value` varchar(191) DEFAULT NULL,
  `action_url` varchar(191) DEFAULT NULL,
  `image_url` varchar(191) DEFAULT NULL,
  `data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`data`)),
  `status` varchar(191) NOT NULL DEFAULT 'sent',
  `sent_count` int(11) NOT NULL DEFAULT 0,
  `failed_count` int(11) NOT NULL DEFAULT 0,
  `delivered_count` int(11) NOT NULL DEFAULT 0,
  `read_count` int(11) NOT NULL DEFAULT 0,
  `scheduled_at` timestamp NULL DEFAULT NULL,
  `sent_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `push_notification_recipients`
--

CREATE TABLE `push_notification_recipients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `push_notification_id` bigint(20) UNSIGNED NOT NULL,
  `user_type` varchar(50) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `device_token` varchar(191) DEFAULT NULL,
  `platform` varchar(20) DEFAULT NULL,
  `status` varchar(20) NOT NULL DEFAULT 'sent',
  `sent_at` timestamp NULL DEFAULT NULL,
  `delivered_at` timestamp NULL DEFAULT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `clicked_at` timestamp NULL DEFAULT NULL,
  `fcm_response` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`fcm_response`)),
  `error_message` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `revisions`
--

CREATE TABLE `revisions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `revisionable_type` varchar(191) NOT NULL,
  `revisionable_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `key` varchar(120) NOT NULL,
  `old_value` text DEFAULT NULL,
  `new_value` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `revisions`
--

INSERT INTO `revisions` (`id`, `revisionable_type`, `revisionable_id`, `user_id`, `key`, `old_value`, `new_value`, `created_at`, `updated_at`) VALUES
(1, 'Botble\\Page\\Models\\Page', 1, 1, 'description', NULL, '', '2025-10-25 01:51:06', '2025-10-25 01:51:06'),
(2, 'Botble\\Blog\\Models\\Post', 13, 1, 'name', 'MS:5.7K Suppressor', '4 Expert Tips On How To Choose The Right Men’s Wallet', '2025-10-27 02:23:44', '2025-10-27 02:23:44'),
(3, 'Botble\\Blog\\Models\\Post', 13, 1, 'image', NULL, '1-720x720-1.jpg', '2025-10-27 02:23:44', '2025-10-27 02:23:44'),
(4, 'Botble\\Blog\\Models\\Post', 13, 1, 'name', '4 Expert Tips On How To Choose The Right Men’s Wallet', 'Expanding Breaching Solutions', '2025-10-27 02:27:24', '2025-10-27 02:27:24'),
(5, 'Botble\\Blog\\Models\\Post', 14, 1, 'image', NULL, '1-720x720-1.jpg', '2025-10-27 02:28:28', '2025-10-27 02:28:28'),
(6, 'Botble\\Blog\\Models\\Post', 12, 1, 'name', 'Field Testing Success: ALPHA Gen II Modular System', 'Expanding Breaching Solutions', '2025-10-27 03:55:37', '2025-10-27 03:55:37'),
(7, 'Botble\\Blog\\Models\\Post', 12, 1, 'image', NULL, '1-720x720-1.jpg', '2025-10-27 03:55:37', '2025-10-27 03:55:37'),
(8, 'Botble\\Page\\Models\\Page', 7, 1, 'description', NULL, '', '2025-10-28 12:01:24', '2025-10-28 12:01:24'),
(9, 'Botble\\Page\\Models\\Page', 8, 1, 'template', NULL, 'default', '2025-10-31 07:32:54', '2025-10-31 07:32:54'),
(10, 'Botble\\Page\\Models\\Page', 8, 1, 'description', NULL, '', '2025-10-31 07:32:54', '2025-10-31 07:32:54'),
(11, 'Botble\\Page\\Models\\Page', 4, 1, 'description', NULL, '', '2025-11-10 08:50:40', '2025-11-10 08:50:40'),
(12, 'Botble\\Page\\Models\\Page', 4, 1, 'status', 'published', 'draft', '2025-11-10 08:50:40', '2025-11-10 08:50:40'),
(13, 'Botble\\Page\\Models\\Page', 5, 1, 'description', NULL, '', '2025-11-10 08:50:49', '2025-11-10 08:50:49'),
(14, 'Botble\\Page\\Models\\Page', 5, 1, 'status', 'published', 'draft', '2025-11-10 08:50:49', '2025-11-10 08:50:49'),
(15, 'Botble\\Page\\Models\\Page', 3, 1, 'description', NULL, '', '2025-11-10 08:51:00', '2025-11-10 08:51:00'),
(16, 'Botble\\Page\\Models\\Page', 3, 1, 'status', 'published', 'draft', '2025-11-10 08:51:00', '2025-11-10 08:51:00'),
(17, 'Botble\\Page\\Models\\Page', 2, 1, 'description', NULL, '', '2025-11-10 08:51:34', '2025-11-10 08:51:34'),
(18, 'Botble\\Page\\Models\\Page', 2, 1, 'status', 'published', 'draft', '2025-11-10 08:51:34', '2025-11-10 08:51:34'),
(19, 'Botble\\Page\\Models\\Page', 9, 1, 'description', NULL, '', '2025-11-10 08:52:01', '2025-11-10 08:52:01'),
(20, 'Botble\\Page\\Models\\Page', 10, 1, 'template', NULL, 'default', '2025-11-10 08:55:13', '2025-11-10 08:55:13'),
(21, 'Botble\\Page\\Models\\Page', 10, 1, 'description', NULL, '', '2025-11-10 08:55:13', '2025-11-10 08:55:13'),
(22, 'Botble\\Page\\Models\\Page', 10, 1, 'status', 'published', 'draft', '2025-11-10 08:55:13', '2025-11-10 08:55:13');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `slug` varchar(120) NOT NULL,
  `name` varchar(120) NOT NULL,
  `permissions` text DEFAULT NULL,
  `description` varchar(400) DEFAULT NULL,
  `is_default` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `created_by` bigint(20) UNSIGNED NOT NULL,
  `updated_by` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `slug`, `name`, `permissions`, `description`, `is_default`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Admin', '{\"users.index\":true,\"users.create\":true,\"users.edit\":true,\"users.destroy\":true,\"roles.index\":true,\"roles.create\":true,\"roles.edit\":true,\"roles.destroy\":true,\"core.system\":true,\"core.cms\":true,\"core.manage.license\":true,\"systems.cronjob\":true,\"core.tools\":true,\"tools.data-synchronize\":true,\"media.index\":true,\"files.index\":true,\"files.create\":true,\"files.edit\":true,\"files.trash\":true,\"files.destroy\":true,\"folders.index\":true,\"folders.create\":true,\"folders.edit\":true,\"folders.trash\":true,\"folders.destroy\":true,\"settings.index\":true,\"settings.common\":true,\"settings.options\":true,\"settings.email\":true,\"settings.media\":true,\"settings.admin-appearance\":true,\"settings.cache\":true,\"settings.datatables\":true,\"settings.email.rules\":true,\"settings.others\":true,\"menus.index\":true,\"menus.create\":true,\"menus.edit\":true,\"menus.destroy\":true,\"optimize.settings\":true,\"pages.index\":true,\"pages.create\":true,\"pages.edit\":true,\"pages.destroy\":true,\"plugins.index\":true,\"plugins.edit\":true,\"plugins.remove\":true,\"plugins.marketplace\":true,\"sitemap.settings\":true,\"core.appearance\":true,\"theme.index\":true,\"theme.activate\":true,\"theme.remove\":true,\"theme.options\":true,\"theme.custom-css\":true,\"theme.custom-js\":true,\"theme.custom-html\":true,\"theme.robots-txt\":true,\"settings.website-tracking\":true,\"widgets.index\":true,\"ads.index\":true,\"ads.create\":true,\"ads.edit\":true,\"ads.destroy\":true,\"ads.settings\":true,\"analytics.general\":true,\"analytics.page\":true,\"analytics.browser\":true,\"analytics.referrer\":true,\"analytics.settings\":true,\"announcements.index\":true,\"announcements.create\":true,\"announcements.edit\":true,\"announcements.destroy\":true,\"announcements.settings\":true,\"audit-log.index\":true,\"audit-log.destroy\":true,\"backups.index\":true,\"backups.create\":true,\"backups.restore\":true,\"backups.destroy\":true,\"plugins.blog\":true,\"posts.index\":true,\"posts.create\":true,\"posts.edit\":true,\"posts.destroy\":true,\"categories.index\":true,\"categories.create\":true,\"categories.edit\":true,\"categories.destroy\":true,\"tags.index\":true,\"tags.create\":true,\"tags.edit\":true,\"tags.destroy\":true,\"blog.settings\":true,\"posts.export\":true,\"posts.import\":true,\"captcha.settings\":true,\"contacts.index\":true,\"contacts.edit\":true,\"contacts.destroy\":true,\"contact.custom-fields\":true,\"contact.settings\":true,\"plugins.ecommerce\":true,\"ecommerce.report.index\":true,\"products.index\":true,\"products.create\":true,\"products.edit\":true,\"products.destroy\":true,\"products.duplicate\":true,\"ecommerce.product-prices.index\":true,\"ecommerce.product-prices.edit\":true,\"ecommerce.product-inventory.index\":true,\"ecommerce.product-inventory.edit\":true,\"product-categories.index\":true,\"product-categories.create\":true,\"product-categories.edit\":true,\"product-categories.destroy\":true,\"product-tag.index\":true,\"product-tag.create\":true,\"product-tag.edit\":true,\"product-tag.destroy\":true,\"brands.index\":true,\"brands.create\":true,\"brands.edit\":true,\"brands.destroy\":true,\"product-collections.index\":true,\"product-collections.create\":true,\"product-collections.edit\":true,\"product-collections.destroy\":true,\"product-attribute-sets.index\":true,\"product-attribute-sets.create\":true,\"product-attribute-sets.edit\":true,\"product-attribute-sets.destroy\":true,\"product-attributes.index\":true,\"product-attributes.create\":true,\"product-attributes.edit\":true,\"product-attributes.destroy\":true,\"tax.index\":true,\"tax.create\":true,\"tax.edit\":true,\"tax.destroy\":true,\"reviews.index\":true,\"reviews.create\":true,\"reviews.destroy\":true,\"reviews.publish\":true,\"reviews.reply\":true,\"ecommerce.shipments.index\":true,\"ecommerce.shipments.create\":true,\"ecommerce.shipments.edit\":true,\"ecommerce.shipments.destroy\":true,\"orders.index\":true,\"orders.create\":true,\"orders.edit\":true,\"orders.destroy\":true,\"discounts.index\":true,\"discounts.create\":true,\"discounts.edit\":true,\"discounts.destroy\":true,\"customers.index\":true,\"customers.create\":true,\"customers.edit\":true,\"customers.destroy\":true,\"ecommerce.customers.import\":true,\"ecommerce.customers.export\":true,\"flash-sale.index\":true,\"flash-sale.create\":true,\"flash-sale.edit\":true,\"flash-sale.destroy\":true,\"product-label.index\":true,\"product-label.create\":true,\"product-label.edit\":true,\"product-label.destroy\":true,\"ecommerce.import.products.index\":true,\"ecommerce.export.products.index\":true,\"order_returns.index\":true,\"order_returns.edit\":true,\"order_returns.destroy\":true,\"global-option.index\":true,\"global-option.create\":true,\"global-option.edit\":true,\"global-option.destroy\":true,\"ecommerce.invoice.index\":true,\"ecommerce.invoice.edit\":true,\"ecommerce.invoice.destroy\":true,\"ecommerce.settings\":true,\"ecommerce.settings.general\":true,\"ecommerce.invoice-template.index\":true,\"ecommerce.settings.currencies\":true,\"ecommerce.settings.products\":true,\"ecommerce.settings.product-search\":true,\"ecommerce.settings.digital-products\":true,\"ecommerce.settings.store-locators\":true,\"ecommerce.settings.invoices\":true,\"ecommerce.settings.product-reviews\":true,\"ecommerce.settings.customers\":true,\"ecommerce.settings.shopping\":true,\"ecommerce.settings.taxes\":true,\"ecommerce.settings.shipping\":true,\"ecommerce.shipping-rule-items.index\":true,\"ecommerce.shipping-rule-items.create\":true,\"ecommerce.shipping-rule-items.edit\":true,\"ecommerce.shipping-rule-items.destroy\":true,\"ecommerce.shipping-rule-items.bulk-import\":true,\"ecommerce.settings.tracking\":true,\"ecommerce.settings.standard-and-format\":true,\"ecommerce.settings.checkout\":true,\"ecommerce.settings.return\":true,\"ecommerce.settings.flash-sale\":true,\"ecommerce.settings.product-specification\":true,\"product-categories.export\":true,\"product-categories.import\":true,\"orders.export\":true,\"ecommerce.product-specification.index\":true,\"ecommerce.specification-groups.index\":true,\"ecommerce.specification-groups.create\":true,\"ecommerce.specification-groups.edit\":true,\"ecommerce.specification-groups.destroy\":true,\"ecommerce.specification-attributes.index\":true,\"ecommerce.specification-attributes.create\":true,\"ecommerce.specification-attributes.edit\":true,\"ecommerce.specification-attributes.destroy\":true,\"ecommerce.specification-tables.index\":true,\"ecommerce.specification-tables.create\":true,\"ecommerce.specification-tables.edit\":true,\"ecommerce.specification-tables.destroy\":true,\"plugin.faq\":true,\"faq.index\":true,\"faq.create\":true,\"faq.edit\":true,\"faq.destroy\":true,\"faq_category.index\":true,\"faq_category.create\":true,\"faq_category.edit\":true,\"faq_category.destroy\":true,\"faqs.settings\":true,\"galleries.index\":true,\"galleries.create\":true,\"galleries.edit\":true,\"galleries.destroy\":true,\"languages.index\":true,\"languages.create\":true,\"languages.edit\":true,\"languages.destroy\":true,\"translations.import\":true,\"translations.export\":true,\"property-translations.import\":true,\"property-translations.export\":true,\"plugin.location\":true,\"country.index\":true,\"country.create\":true,\"country.edit\":true,\"country.destroy\":true,\"state.index\":true,\"state.create\":true,\"state.edit\":true,\"state.destroy\":true,\"city.index\":true,\"city.create\":true,\"city.edit\":true,\"city.destroy\":true,\"newsletter.index\":true,\"newsletter.destroy\":true,\"newsletter.settings\":true,\"payment.index\":true,\"payments.settings\":true,\"payment.destroy\":true,\"payments.logs\":true,\"payments.logs.show\":true,\"payments.logs.destroy\":true,\"sale-popup.settings\":true,\"simple-slider.index\":true,\"simple-slider.create\":true,\"simple-slider.edit\":true,\"simple-slider.destroy\":true,\"simple-slider-item.index\":true,\"simple-slider-item.create\":true,\"simple-slider-item.edit\":true,\"simple-slider-item.destroy\":true,\"simple-slider.settings\":true,\"social-login.settings\":true,\"team.index\":true,\"team.create\":true,\"team.edit\":true,\"team.destroy\":true,\"testimonial.index\":true,\"testimonial.create\":true,\"testimonial.edit\":true,\"testimonial.destroy\":true,\"plugins.translation\":true,\"translations.locales\":true,\"translations.theme-translations\":true,\"translations.index\":true,\"theme-translations.export\":true,\"other-translations.export\":true,\"theme-translations.import\":true,\"other-translations.import\":true,\"api.settings\":true,\"api.sanctum-token.index\":true,\"api.sanctum-token.create\":true,\"api.sanctum-token.destroy\":true}', 'Admin users role', 1, 1, 1, '2025-10-20 17:05:48', '2025-10-20 17:05:48'),
(2, 'shop-keeper', 'Shop Keeper', '{\"plugins.ecommerce\":true,\"ecommerce.report.index\":true,\"products.index\":true,\"products.create\":true,\"products.edit\":true,\"products.destroy\":true,\"products.duplicate\":true,\"ecommerce.product-prices.index\":true,\"ecommerce.product-prices.edit\":true,\"ecommerce.product-inventory.index\":true,\"ecommerce.product-inventory.edit\":true,\"product-categories.index\":true,\"product-categories.create\":true,\"product-categories.edit\":true,\"product-categories.destroy\":true,\"product-tag.index\":true,\"product-tag.create\":true,\"product-tag.edit\":true,\"product-tag.destroy\":true,\"brands.index\":true,\"brands.create\":true,\"brands.edit\":true,\"brands.destroy\":true,\"product-collections.index\":true,\"product-collections.create\":true,\"product-collections.edit\":true,\"product-collections.destroy\":true,\"product-attribute-sets.index\":true,\"product-attribute-sets.create\":true,\"product-attribute-sets.edit\":true,\"product-attribute-sets.destroy\":true,\"product-attributes.index\":true,\"product-attributes.create\":true,\"product-attributes.edit\":true,\"product-attributes.destroy\":true,\"tax.index\":true,\"tax.create\":true,\"tax.edit\":true,\"tax.destroy\":true,\"reviews.index\":true,\"reviews.create\":true,\"reviews.destroy\":true,\"reviews.publish\":true,\"reviews.reply\":true,\"ecommerce.shipments.index\":true,\"ecommerce.shipments.create\":true,\"ecommerce.shipments.edit\":true,\"ecommerce.shipments.destroy\":true,\"orders.index\":true,\"orders.create\":true,\"orders.edit\":true,\"orders.destroy\":true,\"discounts.index\":true,\"discounts.create\":true,\"discounts.edit\":true,\"discounts.destroy\":true,\"customers.index\":true,\"customers.create\":true,\"customers.edit\":true,\"customers.destroy\":true,\"ecommerce.customers.import\":true,\"ecommerce.customers.export\":true,\"flash-sale.index\":true,\"flash-sale.create\":true,\"flash-sale.edit\":true,\"flash-sale.destroy\":true,\"product-label.index\":true,\"product-label.create\":true,\"product-label.edit\":true,\"product-label.destroy\":true,\"order_returns.index\":true,\"order_returns.edit\":true,\"order_returns.destroy\":true,\"global-option.index\":true,\"global-option.create\":true,\"global-option.edit\":true,\"global-option.destroy\":true,\"ecommerce.invoice.index\":true,\"ecommerce.invoice.edit\":true,\"ecommerce.invoice.destroy\":true,\"ecommerce.product-specification.index\":true,\"ecommerce.specification-groups.index\":true,\"ecommerce.specification-groups.create\":true,\"ecommerce.specification-groups.edit\":true,\"ecommerce.specification-groups.destroy\":true,\"ecommerce.specification-attributes.index\":true,\"ecommerce.specification-attributes.create\":true,\"ecommerce.specification-attributes.edit\":true,\"ecommerce.specification-attributes.destroy\":true,\"ecommerce.specification-tables.index\":true,\"ecommerce.specification-tables.create\":true,\"ecommerce.specification-tables.edit\":true,\"ecommerce.specification-tables.destroy\":true}', '', 0, 1, 1, '2025-11-05 13:08:51', '2025-11-05 13:08:51'),
(3, 'shop-manager', 'shop Manager', '{\"ads.index\":true,\"ads.create\":true,\"ads.edit\":true,\"ads.destroy\":true,\"announcements.index\":true,\"announcements.create\":true,\"announcements.edit\":true,\"announcements.destroy\":true,\"core.cms\":true,\"media.index\":true,\"files.index\":true,\"files.create\":true,\"files.edit\":true,\"files.trash\":true,\"files.destroy\":true,\"folders.index\":true,\"folders.create\":true,\"folders.edit\":true,\"folders.trash\":true,\"folders.destroy\":true,\"pages.index\":true,\"pages.create\":true,\"pages.edit\":true,\"pages.destroy\":true,\"plugins.blog\":true,\"posts.index\":true,\"posts.create\":true,\"posts.edit\":true,\"posts.destroy\":true,\"categories.index\":true,\"categories.create\":true,\"categories.edit\":true,\"categories.destroy\":true,\"tags.index\":true,\"tags.create\":true,\"tags.edit\":true,\"tags.destroy\":true,\"contacts.index\":true,\"contacts.edit\":true,\"contacts.destroy\":true,\"contact.custom-fields\":true,\"galleries.index\":true,\"galleries.create\":true,\"galleries.edit\":true,\"galleries.destroy\":true,\"plugins.ecommerce\":true,\"ecommerce.report.index\":true,\"products.index\":true,\"products.create\":true,\"products.edit\":true,\"products.destroy\":true,\"products.duplicate\":true,\"ecommerce.product-prices.index\":true,\"ecommerce.product-prices.edit\":true,\"ecommerce.product-inventory.index\":true,\"ecommerce.product-inventory.edit\":true,\"product-categories.index\":true,\"product-categories.create\":true,\"product-categories.edit\":true,\"product-categories.destroy\":true,\"product-tag.index\":true,\"product-tag.create\":true,\"product-tag.edit\":true,\"product-tag.destroy\":true,\"brands.index\":true,\"brands.create\":true,\"brands.edit\":true,\"brands.destroy\":true,\"product-collections.index\":true,\"product-collections.create\":true,\"product-collections.edit\":true,\"product-collections.destroy\":true,\"product-attribute-sets.index\":true,\"product-attribute-sets.create\":true,\"product-attribute-sets.edit\":true,\"product-attribute-sets.destroy\":true,\"product-attributes.index\":true,\"product-attributes.create\":true,\"product-attributes.edit\":true,\"product-attributes.destroy\":true,\"tax.index\":true,\"tax.create\":true,\"tax.edit\":true,\"tax.destroy\":true,\"reviews.index\":true,\"reviews.create\":true,\"reviews.destroy\":true,\"reviews.publish\":true,\"reviews.reply\":true,\"ecommerce.shipments.index\":true,\"ecommerce.shipments.create\":true,\"ecommerce.shipments.edit\":true,\"ecommerce.shipments.destroy\":true,\"orders.index\":true,\"orders.create\":true,\"orders.edit\":true,\"orders.destroy\":true,\"discounts.index\":true,\"discounts.create\":true,\"discounts.edit\":true,\"discounts.destroy\":true,\"customers.index\":true,\"customers.create\":true,\"customers.edit\":true,\"customers.destroy\":true,\"ecommerce.customers.import\":true,\"ecommerce.customers.export\":true,\"flash-sale.index\":true,\"flash-sale.create\":true,\"flash-sale.edit\":true,\"flash-sale.destroy\":true,\"product-label.index\":true,\"product-label.create\":true,\"product-label.edit\":true,\"product-label.destroy\":true,\"order_returns.index\":true,\"order_returns.edit\":true,\"order_returns.destroy\":true,\"global-option.index\":true,\"global-option.create\":true,\"global-option.edit\":true,\"global-option.destroy\":true,\"ecommerce.invoice.index\":true,\"ecommerce.invoice.edit\":true,\"ecommerce.invoice.destroy\":true,\"ecommerce.product-specification.index\":true,\"ecommerce.specification-groups.index\":true,\"ecommerce.specification-groups.create\":true,\"ecommerce.specification-groups.edit\":true,\"ecommerce.specification-groups.destroy\":true,\"ecommerce.specification-attributes.index\":true,\"ecommerce.specification-attributes.create\":true,\"ecommerce.specification-attributes.edit\":true,\"ecommerce.specification-attributes.destroy\":true,\"ecommerce.specification-tables.index\":true,\"ecommerce.specification-tables.create\":true,\"ecommerce.specification-tables.edit\":true,\"ecommerce.specification-tables.destroy\":true,\"plugin.faq\":true,\"faq.index\":true,\"faq.create\":true,\"faq.edit\":true,\"faq.destroy\":true,\"faq_category.index\":true,\"faq_category.create\":true,\"faq_category.edit\":true,\"faq_category.destroy\":true,\"plugin.location\":true,\"country.index\":true,\"country.create\":true,\"country.edit\":true,\"country.destroy\":true,\"state.index\":true,\"state.create\":true,\"state.edit\":true,\"state.destroy\":true,\"city.index\":true,\"city.create\":true,\"city.edit\":true,\"city.destroy\":true,\"newsletter.index\":true,\"newsletter.destroy\":true,\"payment.index\":true,\"payments.settings\":true,\"payment.destroy\":true,\"payments.logs\":true,\"payments.logs.show\":true,\"payments.logs.destroy\":true,\"sale-popup.settings\":true,\"simple-slider.edit\":true,\"team.index\":true,\"team.create\":true,\"team.edit\":true,\"team.destroy\":true,\"testimonial.index\":true,\"testimonial.create\":true,\"testimonial.edit\":true,\"testimonial.destroy\":true}', '', 0, 1, 1, '2025-11-28 13:08:15', '2025-11-28 13:08:15'),
(4, 'pmd', 'PMD', '[]', 'police  militry defence', 0, 1, 1, '2025-12-19 09:41:19', '2025-12-19 09:41:19');

-- --------------------------------------------------------

--
-- Table structure for table `role_users`
--

CREATE TABLE `role_users` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_users`
--

INSERT INTO `role_users` (`user_id`, `role_id`, `created_at`, `updated_at`) VALUES
(2, 2, '2025-11-05 13:14:13', '2025-11-05 13:14:13'),
(3, 3, '2025-11-28 13:15:46', '2025-11-28 13:15:46');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(191) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(191) NOT NULL,
  `value` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `value`, `created_at`, `updated_at`) VALUES
(1, 'media_random_hash', '50a2a782fc1dad8253f1e11bd9cb04e3', NULL, '2025-11-21 06:45:50'),
(2, 'api_enabled', '0', NULL, '2025-11-21 06:45:50'),
(3, 'activated_plugins', '[\"language\",\"language-advanced\",\"ads\",\"analytics\",\"announcement\",\"audit-log\",\"backup\",\"blog\",\"captcha\",\"contact\",\"cookie-consent\",\"ecommerce\",\"faq\",\"gallery\",\"location\",\"mollie\",\"newsletter\",\"payment\",\"paypal\",\"paystack\",\"razorpay\",\"sale-popup\",\"shippo\",\"simple-slider\",\"social-login\",\"sslcommerz\",\"stripe\",\"team\",\"testimonial\",\"translation\"]', NULL, '2025-11-21 06:45:50'),
(4, 'analytics_dashboard_widgets', '0', '2025-10-20 17:05:43', '2025-11-21 06:45:50'),
(5, 'enable_recaptcha_botble_contact_forms_fronts_contact_form', '1', '2025-10-20 17:05:44', '2025-11-21 06:45:50'),
(6, 'api_layer_api_key', '', NULL, '2025-11-21 06:45:50'),
(9, 'enable_recaptcha_botble_newsletter_forms_fronts_newsletter_form', '1', '2025-10-20 17:05:47', '2025-11-21 06:45:50'),
(10, 'payment_cod_fee_type', 'fixed', NULL, '2025-11-21 06:45:50'),
(11, 'payment_bank_transfer_fee_type', 'fixed', NULL, '2025-11-21 06:45:50'),
(12, 'theme', 'ninico', NULL, '2025-11-21 06:45:50'),
(13, 'show_admin_bar', '1', NULL, '2025-11-21 06:45:50'),
(14, 'language_hide_default', '1', NULL, '2025-11-21 06:45:50'),
(15, 'language_switcher_display', 'dropdown', NULL, '2025-11-21 06:45:50'),
(16, 'language_display', 'all', NULL, '2025-11-21 06:45:50'),
(17, 'language_hide_languages', '[]', NULL, '2025-11-21 06:45:50'),
(18, 'admin_favicon', 'favicon-2.png', NULL, '2025-11-21 06:45:50'),
(19, 'admin_logo', 'logo-2.png', NULL, '2025-11-21 06:45:50'),
(20, 'payment_cod_status', '1', NULL, '2025-11-21 06:45:50'),
(21, 'payment_bank_transfer_status', '1', NULL, '2025-11-21 06:45:50'),
(22, 'payment_cod_description', 'Please pay money directly to the postman, if you choose cash on delivery method (COD).', NULL, '2025-11-21 06:45:50'),
(23, 'payment_bank_transfer_description', 'Please send money to our bank account: ACB - 69270 213 19.', NULL, '2025-11-21 06:45:50'),
(24, 'payment_stripe_payment_type', 'stripe_checkout', NULL, '2025-11-21 06:45:50'),
(25, 'plugins_ecommerce_customer_new_order_status', '1', NULL, '2025-11-21 06:45:50'),
(26, 'plugins_ecommerce_admin_new_order_status', '1', NULL, '2025-11-21 06:45:50'),
(27, 'ecommerce_is_enabled_support_digital_products', '1', NULL, '2025-11-21 06:45:50'),
(28, 'ecommerce_enable_license_codes_for_digital_products', '1', NULL, '2025-11-21 06:45:50'),
(29, 'ecommerce_auto_complete_digital_orders_after_payment', '1', NULL, '2025-11-21 06:45:50'),
(30, 'ecommerce_load_countries_states_cities_from_location_plugin', '0', NULL, '2025-11-21 06:45:50'),
(31, 'ecommerce_product_sku_format', 'SF-2443-%s%s%s%s', NULL, '2025-11-21 06:45:50'),
(32, 'ecommerce_store_order_prefix', 'SF', NULL, '2025-11-21 06:45:50'),
(33, 'ecommerce_enable_product_specification', '1', NULL, '2025-11-21 06:45:50'),
(34, 'payment_bank_transfer_display_bank_info_at_the_checkout_success_page', '1', NULL, '2025-11-21 06:45:50'),
(35, 'payment_cod_logo', 'payments/cod.png', NULL, '2025-11-21 06:45:50'),
(36, 'payment_bank_transfer_logo', 'payments/bank-transfer.png', NULL, '2025-11-21 06:45:50'),
(37, 'payment_stripe_logo', 'payments/stripe.webp', NULL, '2025-11-21 06:45:50'),
(38, 'payment_paypal_logo', 'payments/paypal.png', NULL, '2025-11-21 06:45:50'),
(39, 'payment_mollie_logo', 'payments/mollie.png', NULL, '2025-11-21 06:45:50'),
(40, 'payment_paystack_logo', 'payments/paystack.png', NULL, '2025-11-21 06:45:50'),
(41, 'payment_razorpay_logo', 'payments/razorpay.png', NULL, '2025-11-21 06:45:50'),
(42, 'payment_sslcommerz_logo', 'payments/sslcommerz.png', NULL, '2025-11-21 06:45:50'),
(43, 'permalink-botble-blog-models-post', 'blog', NULL, '2025-11-21 06:45:50'),
(44, 'permalink-botble-blog-models-category', 'blog', NULL, '2025-11-21 06:45:50'),
(45, 'theme-ninico-site_title', 'Regent Rogue', NULL, '2025-11-21 06:45:50'),
(46, 'theme-ninico-seo_description', 'Your needs, our solutions: Designed by you, made by us. Delivering tailored defence equipment &amp; innovative solutions to enhance ops &amp; drive mission success', NULL, '2025-11-21 06:45:50'),
(47, 'theme-ninico-favicon', 'favicon-2.png', NULL, '2025-11-21 06:45:50'),
(48, 'theme-ninico-logo_light', 'logo-2.png', NULL, '2025-11-21 06:45:50'),
(49, 'theme-ninico-logo', 'logo-2.png', NULL, '2025-11-21 06:45:50'),
(50, 'theme-ninico-primary_font', 'Jost', NULL, '2025-11-21 06:45:50'),
(51, 'theme-ninico-primary_color', '#0198b5', NULL, '2025-11-21 06:45:50'),
(52, 'theme-ninico-hotline', '', NULL, '2025-11-21 06:45:50'),
(53, 'theme-ninico-homepage_id', '1', NULL, '2025-11-21 06:45:50'),
(54, 'theme-ninico-blog_page_id', '6', NULL, '2025-11-21 06:45:50'),
(55, 'theme-ninico-cart_footer_description', 'Free shipping for orders <b>under 10km</b>', NULL, '2025-11-21 06:45:50'),
(56, 'theme-ninico-breadcrumb_background', 'bg-2-3.png', NULL, '2025-11-21 06:45:50'),
(57, 'theme-ninico-login_background', '4-2.jpg', NULL, '2025-11-21 06:45:50'),
(58, 'theme-ninico-register_background', '2-3.jpg', NULL, '2025-11-21 06:45:50'),
(59, 'theme-ninico-404_not_found_icon', 'icons/error.png', NULL, '2025-11-21 06:45:50'),
(60, 'theme-ninico-order_tracking_background', 'banners/track-bg.jpg', NULL, '2025-11-21 06:45:50'),
(61, 'theme-ninico-default_product_list_layout', 'grid', NULL, '2025-11-21 06:45:50'),
(62, 'theme-ninico-number_of_products_per_page', '16', NULL, '2025-11-21 06:45:50'),
(63, 'theme-ninico-footer_background_color', '#F8F8F8', NULL, '2025-11-21 06:45:50'),
(64, 'theme-ninico-footer_text_color', '#000000', NULL, '2025-11-21 06:45:50'),
(65, 'theme-ninico-footer_text_muted_color', '#686666', NULL, '2025-11-21 06:45:50'),
(66, 'theme-ninico-footer_border_color', '#E0E0E0', NULL, '2025-11-21 06:45:50'),
(67, 'theme-ninico-footer_bottom_background_color', '#ededed', NULL, '2025-11-21 06:45:50'),
(68, 'theme-ninico-preloader_version', 'v2', NULL, '2025-11-21 06:45:50'),
(69, 'theme-ninico-newsletter_popup_enable', '0', NULL, '2025-11-21 06:45:50'),
(70, 'theme-ninico-newsletter_popup_image', 'general/newsletter-popup.png', NULL, '2025-11-21 06:45:50'),
(71, 'theme-ninico-newsletter_popup_title', 'Subscribe Now', NULL, '2025-11-21 06:45:50'),
(72, 'theme-ninico-newsletter_popup_subtitle', 'Newsletter', NULL, '2025-11-21 06:45:50'),
(73, 'theme-ninico-newsletter_popup_description', 'Subscribe to our newsletter and get 10% off your first purchase', NULL, '2025-11-21 06:45:50'),
(74, 'theme-ninico-social_links', '[[{\"key\":\"name\",\"value\":\"Facebook\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-facebook\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.facebook.com\\/profile.php?id=61571614301088\"},{\"key\":\"image\",\"value\":null},{\"key\":\"color\",\"value\":\"transparent\"},{\"key\":\"background-color\",\"value\":\"transparent\"}],[{\"key\":\"name\",\"value\":\"X (Twitter)\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-x\"},{\"key\":\"url\",\"value\":\"https:\\/\\/x.com\"},{\"key\":\"image\",\"value\":null},{\"key\":\"color\",\"value\":\"transparent\"},{\"key\":\"background-color\",\"value\":\"transparent\"}],[{\"key\":\"name\",\"value\":\"Linkedin\"},{\"key\":\"icon\",\"value\":\"fab fa-linkedin\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.linkedin.com\\/company\\/regentrogue\\/\"},{\"key\":\"image\",\"value\":null},{\"key\":\"color\",\"value\":\"transparent\"},{\"key\":\"background-color\",\"value\":\"transparent\"}],[{\"key\":\"name\",\"value\":\"Instagram\"},{\"key\":\"icon\",\"value\":\"fab fa-instagram\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.instagram.com\\/regent.rogue\\/\"},{\"key\":\"image\",\"value\":null},{\"key\":\"color\",\"value\":\"transparent\"},{\"key\":\"background-color\",\"value\":\"transparent\"}]]', NULL, '2025-11-21 06:45:50'),
(75, 'announcement_text_alignment', 'start', NULL, '2025-11-21 06:45:50'),
(76, 'announcement_background_color', '#f3eee7', NULL, '2025-11-21 06:45:50'),
(77, 'announcement_text_color', '#000000', NULL, '2025-11-21 06:45:50'),
(78, 'announcement_font_size', '13', NULL, '2025-11-21 06:45:50'),
(79, 'announcement_font_size_unit', 'px', NULL, '2025-11-21 06:45:50'),
(80, 'announcement_autoplay', '1', NULL, '2025-11-21 06:45:50'),
(81, 'announcement_autoplay_delay', '5000', NULL, '2025-11-21 06:45:50'),
(82, 'theme-ninico-display_product_categories_select_on_header', 'yes', NULL, '2025-11-21 06:45:50'),
(83, 'theme-ninico-display_product_categories_on_mobile_menu', 'yes', NULL, '2025-11-21 06:45:50'),
(84, 'theme-ninico-ecommerce_product_gallery_image_style', 'vertical', NULL, '2025-11-21 06:45:50'),
(85, 'theme-ninico-ecommerce_products_page_layout', 'left_sidebar', NULL, '2025-11-21 06:45:50'),
(86, 'theme-ninico-ecommerce_header_categories_limit', '10', NULL, '2025-11-21 06:45:50'),
(87, 'theme-ninico-number_of_products_per_row', '4', NULL, '2025-11-21 06:45:50'),
(88, 'theme-ninico-ecommerce_products_per_row_mobile', '2', NULL, '2025-11-21 06:45:50'),
(89, 'theme-ninico-enable_quick_view', 'yes', NULL, '2025-11-21 06:45:50'),
(90, 'theme-ninico-number_of_cross_sale_product', '4', NULL, '2025-11-21 06:45:50'),
(91, 'theme-ninico-number_of_related_product', '4', NULL, '2025-11-21 06:45:50'),
(92, 'theme-ninico-max_filter_price', '500', NULL, '2025-11-21 06:45:50'),
(93, 'theme-ninico-logo_in_the_checkout_page', 'login-logo.png', NULL, '2025-11-21 06:45:50'),
(94, 'theme-ninico-merchant_return_policy_url', NULL, NULL, '2025-11-21 06:45:50'),
(95, 'theme-ninico-merchant_return_days', '30', NULL, '2025-11-21 06:45:50'),
(96, 'theme-ninico-merchant_return_applicable_country', NULL, NULL, '2025-11-21 06:45:50'),
(97, 'theme-ninico-sticky_header_enabled', 'no', NULL, '2025-11-21 06:45:50'),
(98, 'theme-ninico-sticky_header_mobile_enabled', 'no', NULL, '2025-11-21 06:45:50'),
(99, 'theme-ninico-bottom_mobile_menu_enabled', 'yes', NULL, '2025-11-21 06:45:50'),
(100, 'theme-ninico-bottom_mobile_menu_show_label', 'no', NULL, '2025-11-21 06:45:50'),
(101, 'theme-ninico-preloader_enabled', 'yes', NULL, '2025-11-21 06:45:50'),
(102, 'theme-ninico-show_site_name', '1', NULL, '2025-11-21 06:45:50'),
(103, 'theme-ninico-site_title_separator', '-', NULL, '2025-11-21 06:45:50'),
(104, 'theme-ninico-seo_title', 'Regent Rogue', NULL, '2025-11-21 06:45:50'),
(105, 'theme-ninico-seo_index', '1', NULL, '2025-11-21 06:45:50'),
(106, 'theme-ninico-seo_og_image', 'img-20251110.png', NULL, '2025-11-21 06:45:50'),
(107, 'theme-ninico-term_and_privacy_policy_url', '', NULL, '2025-11-21 06:45:50'),
(108, 'theme-ninico-date_format', 'M d, Y', NULL, '2025-11-21 06:45:50'),
(109, 'theme-ninico-favicon_type', 'image/x-icon', NULL, '2025-11-21 06:45:50'),
(110, 'theme-ninico-logo_height', '35', NULL, '2025-11-21 06:45:50'),
(111, 'ecommerce_enable_auto_detect_visitor_currency', '0', NULL, '2025-11-21 06:45:50'),
(112, 'ecommerce_add_space_between_price_and_currency', '0', NULL, '2025-11-21 06:45:50'),
(113, 'ecommerce_thousands_separator', ',', NULL, '2025-11-21 06:45:50'),
(114, 'ecommerce_decimal_separator', '.', NULL, '2025-11-21 06:45:50'),
(115, 'ecommerce_exchange_rate_api_provider', 'none', NULL, '2025-11-21 06:45:50'),
(116, 'ecommerce_api_layer_api_key', '', NULL, '2025-11-21 06:45:50'),
(117, 'ecommerce_open_exchange_app_id', '', NULL, '2025-11-21 06:45:50'),
(118, 'ecommerce_use_exchange_rate_from_api', '0', NULL, '2025-11-21 06:45:50'),
(119, 'ecommerce_currencies_is_default', '5', NULL, '2025-11-21 06:45:50'),
(120, 'admin_logo_max_height', '32', NULL, '2025-11-21 06:45:50'),
(121, 'admin_favicon_type', 'image/x-icon', NULL, '2025-11-21 06:45:50'),
(122, 'login_screen_backgrounds', '{\"1\":\"login-bg-1.png\"}', NULL, '2025-11-21 06:45:50'),
(123, 'admin_title', 'Regent', NULL, '2025-11-21 06:45:50'),
(124, 'admin_appearance_locale', 'en', NULL, '2025-11-21 06:45:50'),
(125, 'rich_editor', 'ckeditor', NULL, '2025-11-21 06:45:50'),
(126, 'admin_appearance_layout', 'vertical', NULL, '2025-11-21 06:45:50'),
(127, 'admin_appearance_show_menu_item_icon', '1', NULL, '2025-11-21 06:45:50'),
(128, 'admin_appearance_container_width', 'container-xl', NULL, '2025-11-21 06:45:50'),
(129, 'admin_primary_font', 'Inter', NULL, '2025-11-21 06:45:50'),
(130, 'admin_primary_color', '#206bc4', NULL, '2025-11-21 06:45:50'),
(131, 'admin_secondary_color', '#6c7a91', NULL, '2025-11-21 06:45:50'),
(132, 'admin_heading_color', 'inherit', NULL, '2025-11-21 06:45:50'),
(133, 'admin_text_color', '#182433', NULL, '2025-11-21 06:45:50'),
(134, 'admin_link_color', '#206bc4', NULL, '2025-11-21 06:45:50'),
(135, 'admin_link_hover_color', '#1a569d', NULL, '2025-11-21 06:45:50'),
(136, 'admin_appearance_custom_css', '', NULL, '2025-11-21 06:45:50'),
(137, 'admin_appearance_custom_header_js', '', NULL, '2025-11-21 06:45:50'),
(138, 'admin_appearance_custom_body_js', '', NULL, '2025-11-21 06:45:50'),
(139, 'admin_appearance_custom_footer_js', '', NULL, '2025-11-21 06:45:50'),
(140, 'show_theme_guideline_link', '0', NULL, '2025-11-21 06:45:50'),
(141, 'admin_appearance_locale_direction', 'ltr', NULL, '2025-11-21 06:45:50'),
(142, 'email_driver', 'smtp', NULL, '2025-11-21 06:45:50'),
(143, 'email_from_name', 'Regent Rogue', NULL, '2025-11-21 06:45:50'),
(144, 'email_from_address', 'support@tinypandademosite.org', NULL, '2025-11-21 06:45:50'),
(145, 'email_port', '465', NULL, '2025-11-21 06:45:50'),
(146, 'email_host', 'smtp.hostinger.com', NULL, '2025-11-21 06:45:50'),
(147, 'email_username', 'support@tinypandademosite.org', NULL, '2025-11-21 06:45:50'),
(148, 'email_password', 'TinyPanda1966!', NULL, '2025-11-21 06:45:50'),
(149, 'email_local_domain', 'smtp.hostinger.com', NULL, '2025-11-21 06:45:50'),
(150, 'email_encryption', '', NULL, '2025-11-21 06:45:50'),
(151, 'email_mail_gun_domain', '', NULL, '2025-11-21 06:45:50'),
(152, 'email_mail_gun_secret', '', NULL, '2025-11-21 06:45:50'),
(153, 'email_mail_gun_endpoint', 'api.mailgun.net', NULL, '2025-11-21 06:45:50'),
(154, 'email_ses_key', '', NULL, '2025-11-21 06:45:50'),
(155, 'email_ses_secret', '', NULL, '2025-11-21 06:45:50'),
(156, 'email_ses_region', 'us-east-1', NULL, '2025-11-21 06:45:50'),
(157, 'email_postmark_token', '', NULL, '2025-11-21 06:45:50'),
(158, 'email_resend_key', '', NULL, '2025-11-21 06:45:50'),
(159, 'email_log_channel', 'single', NULL, '2025-11-21 06:45:50'),
(160, 'email_sendmail_path', '/usr/sbin/sendmail -bs -i', NULL, '2025-11-21 06:45:50'),
(161, 'theme-ninico-theme_breadcrumb_enabled', '1', NULL, '2025-11-21 06:45:50'),
(162, 'theme-ninico-breadcrumb_background_color', 'rgba(0, 0, 0, 0.78)', NULL, '2025-11-21 06:45:50'),
(163, 'email_template_logo', 'login-logo.png', NULL, '2025-11-21 06:45:50'),
(164, 'email_template_email_contact', '', NULL, '2025-11-21 06:45:50'),
(165, 'email_template_social_links', '', NULL, '2025-11-21 06:45:50'),
(166, 'email_template_copyright_text', '', NULL, '2025-11-21 06:45:50'),
(167, 'email_template_custom_css', '/* Change all blue buttons and borders globally */\r\n.bb-bg-blue,\r\n.bb-btn,\r\na.bb-btn {\r\n    background-color: #0198B5 !important;\r\n    border-color: #0198B5 !important;\r\n    color: #ffffff !important;\r\n}\r\n\r\n/* If some borders or highlights use the same blue */\r\n.bb-border-blue {\r\n    border-color: #0198B5 !important;\r\n}\r\n\r\n/* Optional: change link hover or icon accent color */\r\na:hover,\r\n.bb-text-blue {\r\n    color: #0198B5 !important;\r\n}', NULL, '2025-11-21 06:45:50'),
(168, 'email_template_max_height_for_logo', '40', NULL, '2025-11-21 06:45:50'),
(169, 'plugins_ecommerce_welcome_status', '1', NULL, '2025-11-21 06:45:50'),
(170, 'plugins_contact_sender-confirmation_status', '1', NULL, '2025-11-21 06:45:50'),
(171, 'plugins_ecommerce_order_cancellation_to_admin_status', '1', NULL, '2025-11-21 06:45:50'),
(172, 'plugins_ecommerce_customer_order_delivered_status', '1', NULL, '2025-11-21 06:45:50'),
(173, 'plugins_ecommerce_invoice-payment-created_status', '1', NULL, '2025-11-21 06:45:50'),
(174, 'plugins_ecommerce_review_products_status', '1', NULL, '2025-11-21 06:45:50'),
(175, 'theme-ninico-newsletter_popup_delay', '5', NULL, '2025-11-21 06:45:50'),
(176, 'theme-ninico-newsletter_popup_display_pages', '[\"public.index\"]', NULL, '2025-11-21 06:45:50'),
(177, 'ecommerce_company_name_for_invoicing', 'Regent Rogue', NULL, '2025-11-21 06:45:50'),
(178, 'ecommerce_company_address_for_invoicing', '', NULL, '2025-11-21 06:45:50'),
(179, 'ecommerce_company_country_for_invoicing', 'GB', NULL, '2025-11-21 06:45:50'),
(180, 'ecommerce_company_state_for_invoicing', '', NULL, '2025-11-21 06:45:50'),
(181, 'ecommerce_company_city_for_invoicing', '', NULL, '2025-11-21 06:45:50'),
(182, 'ecommerce_company_email_for_invoicing', 'st@regentrogue.com', NULL, '2025-11-21 06:45:50'),
(183, 'ecommerce_company_phone_for_invoicing', '123456789', NULL, '2025-11-21 06:45:50'),
(184, 'ecommerce_company_tax_id_for_invoicing', '', NULL, '2025-11-21 06:45:50'),
(185, 'ecommerce_company_logo_for_invoicing', 'login-logo.png', NULL, '2025-11-21 06:45:50'),
(186, 'ecommerce_using_custom_font_for_invoice', '0', NULL, '2025-11-21 06:45:50'),
(187, 'ecommerce_invoice_language_support', 'default', NULL, '2025-11-21 06:45:50'),
(188, 'ecommerce_enable_invoice_stamp', '1', NULL, '2025-11-21 06:45:50'),
(189, 'ecommerce_invoice_code_prefix', 'INV-', NULL, '2025-11-21 06:45:50'),
(190, 'ecommerce_disable_order_invoice_until_order_confirmed', '0', NULL, '2025-11-21 06:45:50'),
(191, 'ecommerce_invoice_font_family', '', NULL, '2025-11-21 06:45:50'),
(192, 'ecommerce_invoice_date_format', 'F d, Y', NULL, '2025-11-21 06:45:50'),
(193, 'ecommerce_invoice_processing_library', 'dompdf', NULL, '2025-11-21 06:45:50'),
(194, 'theme-ninico-header_style', 'default', NULL, '2025-11-21 06:45:50'),
(195, 'theme-ninico-collapsing_product_categories_on_homepage', 'no', NULL, '2025-11-21 06:45:50'),
(196, 'theme-ninico-header_background_color', '#fff', NULL, '2025-11-21 06:45:50'),
(197, 'theme-ninico-header_text_color', '#040404', NULL, '2025-11-21 06:45:50'),
(198, 'theme-ninico-header_menu_text_color', '#040404', NULL, '2025-11-21 06:45:50'),
(199, 'theme-ninico-header_menu_text_hover_color', 'rgb(1, 152, 181)', NULL, '2025-11-21 06:45:50'),
(200, 'plugins_ecommerce_welcome_subject', 'Welcome to {{ site_title }}!', NULL, '2025-11-21 06:45:50'),
(201, 'membership_authorization_at', '2025-11-17 05:02:21', NULL, '2025-11-21 06:45:50'),
(202, 'payment_stripe_name', 'Pay online via Stripe', NULL, NULL),
(203, 'payment_stripe_description', 'Payment with Stripe', NULL, NULL),
(204, 'payment_stripe_fee', '0', NULL, NULL),
(205, 'payment_stripe_fee_type', 'fixed', NULL, NULL),
(206, 'payment_stripe_client_id', 'pk_live_51SUuaYIMYgnLXIxoebYEgg4SYjd3QlG2SuDhf692LO97ODXFVOaKfos6rhCiJGv19VFdTpGxjskLUIbJjlmANlcp00LWpUv9xy', NULL, NULL),
(207, 'payment_stripe_secret', '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', NULL, NULL),
(208, 'payment_stripe_webhook_secret', '', NULL, NULL),
(209, 'payment_stripe_available_countries_checkall', '1', NULL, NULL),
(210, 'payment_stripe_available_countries', '[\"AF\",\"AX\",\"AL\",\"DZ\",\"AS\",\"AD\",\"AO\",\"AI\",\"AQ\",\"AG\",\"AR\",\"AM\",\"AW\",\"AU\",\"AT\",\"AZ\",\"BS\",\"BH\",\"BD\",\"BB\",\"BY\",\"BE\",\"PW\",\"BZ\",\"BJ\",\"BM\",\"BT\",\"BO\",\"BQ\",\"BA\",\"BW\",\"BV\",\"BR\",\"IO\",\"BN\",\"BG\",\"BF\",\"BI\",\"KH\",\"CM\",\"CA\",\"CV\",\"KY\",\"CF\",\"TD\",\"CL\",\"CN\",\"CX\",\"CC\",\"CO\",\"KM\",\"CG\",\"CD\",\"CK\",\"CR\",\"HR\",\"CU\",\"CW\",\"CY\",\"CZ\",\"DK\",\"DJ\",\"DM\",\"DO\",\"EC\",\"EG\",\"SV\",\"GQ\",\"ER\",\"EE\",\"ET\",\"FK\",\"FO\",\"FJ\",\"FI\",\"FR\",\"GF\",\"PF\",\"TF\",\"GA\",\"GM\",\"GE\",\"DE\",\"GH\",\"GI\",\"GR\",\"GL\",\"GD\",\"GP\",\"GU\",\"GT\",\"GG\",\"GN\",\"GW\",\"GY\",\"HT\",\"HM\",\"HN\",\"HK\",\"HU\",\"IS\",\"IN\",\"ID\",\"IR\",\"IQ\",\"IE\",\"IM\",\"IL\",\"IT\",\"CI\",\"JM\",\"JP\",\"JE\",\"JO\",\"KZ\",\"KE\",\"KI\",\"KW\",\"XK\",\"KG\",\"LA\",\"LV\",\"LB\",\"LS\",\"LR\",\"LY\",\"LI\",\"LT\",\"LU\",\"MO\",\"MK\",\"MG\",\"MW\",\"MY\",\"MV\",\"ML\",\"MT\",\"MH\",\"MQ\",\"MR\",\"MU\",\"YT\",\"MX\",\"FM\",\"MD\",\"MC\",\"MN\",\"ME\",\"MS\",\"MA\",\"MZ\",\"MM\",\"NA\",\"NR\",\"NP\",\"NL\",\"NC\",\"NZ\",\"NI\",\"NE\",\"NG\",\"NU\",\"NF\",\"MP\",\"KP\",\"NO\",\"OM\",\"PK\",\"PS\",\"PA\",\"PG\",\"PY\",\"PE\",\"PH\",\"PN\",\"PL\",\"PT\",\"PR\",\"QA\",\"RE\",\"RO\",\"RU\",\"RW\",\"BL\",\"SH\",\"KN\",\"LC\",\"MF\",\"SX\",\"PM\",\"VC\",\"SM\",\"ST\",\"SA\",\"SN\",\"RS\",\"SC\",\"SL\",\"SG\",\"SK\",\"SI\",\"SB\",\"SO\",\"ZA\",\"GS\",\"KR\",\"SS\",\"ES\",\"LK\",\"SD\",\"SR\",\"SJ\",\"SZ\",\"SE\",\"CH\",\"SY\",\"TW\",\"TJ\",\"TZ\",\"TH\",\"TL\",\"TG\",\"TK\",\"TO\",\"TT\",\"TN\",\"TR\",\"TM\",\"TC\",\"TV\",\"UG\",\"UA\",\"AE\",\"GB\",\"US\",\"UM\",\"UY\",\"UZ\",\"VU\",\"VA\",\"VE\",\"VN\",\"VG\",\"VI\",\"WF\",\"EH\",\"WS\",\"YE\",\"ZM\",\"ZW\"]', NULL, NULL),
(211, 'payment_stripe_status', '1', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `simple_sliders`
--

CREATE TABLE `simple_sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(120) NOT NULL,
  `key` varchar(120) NOT NULL,
  `description` varchar(400) DEFAULT NULL,
  `status` varchar(60) NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `simple_sliders`
--

INSERT INTO `simple_sliders` (`id`, `name`, `key`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Slider home 1', 'slider-home-1', 'The slider on home page 1', 'published', '2025-10-20 17:06:01', '2025-10-20 17:06:01'),
(2, 'Slider home 2', 'slider-home-2', 'The slider on home page 2', 'published', '2025-10-20 17:06:01', '2025-10-20 17:06:01'),
(3, 'Slider Furniture', 'slider-furniture', 'The slider for furniture style', 'published', '2025-10-20 17:06:01', '2025-10-20 17:06:01'),
(4, 'Slider Cosmetics', 'slider-cosmetics', 'The slider for cosmetics style', 'published', '2025-10-20 17:06:01', '2025-10-20 17:06:01'),
(5, 'Slider Grocery', 'slider-grocery', 'The slider for grocery style', 'published', '2025-10-20 17:06:01', '2025-10-20 17:06:01');

-- --------------------------------------------------------

--
-- Table structure for table `simple_slider_items`
--

CREATE TABLE `simple_slider_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `simple_slider_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) DEFAULT NULL,
  `image` varchar(191) NOT NULL,
  `link` varchar(191) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `order` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `simple_slider_items`
--

INSERT INTO `simple_slider_items` (`id`, `simple_slider_id`, `title`, `image`, `link`, `description`, `order`, `created_at`, `updated_at`) VALUES
(1, 1, 'Up To <i>40% Off</i> latest Creations', 'sliders/banner-1.jpg', '/products', 'Accessories', 1, '2025-10-20 17:06:01', '2025-10-20 17:06:01'),
(2, 1, 'Up To <i>40% Off</i> latest Creations', 'sliders/banner-2.jpg', '/products', 'Accessories', 2, '2025-10-20 17:06:01', '2025-10-20 17:06:01'),
(3, 1, 'Up To <i>40% Off</i> latest Creations', 'sliders/banner-3.jpg', '/products', 'Accessories', 3, '2025-10-20 17:06:01', '2025-10-20 17:06:01'),
(4, 2, 'Exclusive <br> Winter Collection', 'sliders/slider-01.png', '/products', 'New Modern Stylist Fashionable Women\'s Wear holder', 1, '2025-10-20 17:06:01', '2025-10-20 17:06:01'),
(5, 2, 'Exclusive <br> Women\'s Fashion', 'sliders/slider-02.png', '/products', 'New Modern Stylist Fashionable Women\'s Wear holder', 2, '2025-10-20 17:06:01', '2025-10-20 17:06:01'),
(6, 2, 'Exclusive <br> Summer Collection', 'sliders/slider-03.png', '/products', 'New Modern Stylist Fashionable Women\'s Wear holder', 3, '2025-10-20 17:06:01', '2025-10-20 17:06:01'),
(7, 3, 'Wooden <br> Lounge Furniture', 'sliders/slider-04.png', '/products', 'New Modern Stylist Fashionable Women\'s Wear holder', 1, '2025-10-20 17:06:01', '2025-10-20 17:06:01'),
(8, 3, 'Wooden <br> Lounge Chair', 'sliders/slider-05.png', '/products', NULL, 2, '2025-10-20 17:06:01', '2025-10-20 17:06:01'),
(9, 3, 'Wooden <br> Houston Furniture', 'sliders/slider-06.png', '/products', NULL, 3, '2025-10-20 17:06:01', '2025-10-20 17:06:01'),
(10, 4, 'Will Never <br> Compromise Beauty', 'sliders/slider-bg-04.png', '/products', 'New Modern Stylist Fashionable Women\'s Wear holder', 1, '2025-10-20 17:06:01', '2025-10-20 17:06:01'),
(11, 4, 'Will Never <br> Compromise Glow', 'sliders/slider-bg-05.png', '/products', 'New Modern Stylist Fashionable Women\'s Wear holder', 2, '2025-10-20 17:06:01', '2025-10-20 17:06:01'),
(12, 4, 'Will Never <br> Compromise Health', 'sliders/slider-bg-06.png', '/products', 'New Modern Stylist Fashionable Women\'s Wear holder', 3, '2025-10-20 17:06:01', '2025-10-20 17:06:01'),
(13, 5, 'Fresh Grocery <br> Products.', 'sliders/slider-05-bg-1.jpg', '/products', 'Quality &amp; Fresh Products', 1, '2025-10-20 17:06:01', '2025-10-20 17:06:01'),
(14, 5, 'Fresh Grocery <br> Products.', 'sliders/slider-05-bg-2.jpg', '/products', 'Quality &amp; Fresh Products', 2, '2025-10-20 17:06:01', '2025-10-20 17:06:01'),
(15, 5, 'Fresh Grocery <br> Products.', 'sliders/slider-05-bg-3.jpg', '/products', 'Quality &amp; Fresh Products', 3, '2025-10-20 17:06:01', '2025-10-20 17:06:01');

-- --------------------------------------------------------

--
-- Table structure for table `slugs`
--

CREATE TABLE `slugs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(191) NOT NULL,
  `reference_id` bigint(20) UNSIGNED NOT NULL,
  `reference_type` varchar(191) NOT NULL,
  `prefix` varchar(120) DEFAULT '',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `slugs`
--

INSERT INTO `slugs` (`id`, `key`, `reference_id`, `reference_type`, `prefix`, `created_at`, `updated_at`) VALUES
(5, 'general', 1, 'Botble\\Blog\\Models\\Tag', 'tag', '2025-10-20 17:05:52', '2025-10-20 17:05:52'),
(6, 'design', 2, 'Botble\\Blog\\Models\\Tag', 'tag', '2025-10-20 17:05:52', '2025-10-20 17:05:52'),
(7, 'fashion', 3, 'Botble\\Blog\\Models\\Tag', 'tag', '2025-10-20 17:05:52', '2025-10-20 17:05:52'),
(8, 'branding', 4, 'Botble\\Blog\\Models\\Tag', 'tag', '2025-10-20 17:05:52', '2025-10-20 17:05:52'),
(9, 'modern', 5, 'Botble\\Blog\\Models\\Tag', 'tag', '2025-10-20 17:05:52', '2025-10-20 17:05:52'),
(21, 'wooden-home', 1, 'Botble\\Page\\Models\\Page', '', '2025-10-20 17:05:54', '2025-10-20 17:05:54'),
(22, 'fashion-home', 2, 'Botble\\Page\\Models\\Page', '', '2025-10-20 17:05:54', '2025-10-20 17:05:54'),
(23, 'furniture-home', 3, 'Botble\\Page\\Models\\Page', '', '2025-10-20 17:05:54', '2025-10-20 17:05:54'),
(24, 'cosmetics-home', 4, 'Botble\\Page\\Models\\Page', '', '2025-10-20 17:05:54', '2025-10-20 17:05:54'),
(25, 'food-grocery-home', 5, 'Botble\\Page\\Models\\Page', '', '2025-10-20 17:05:54', '2025-10-20 17:05:54'),
(26, 'blog', 6, 'Botble\\Page\\Models\\Page', '', '2025-10-20 17:05:54', '2025-10-20 17:05:54'),
(27, 'about', 7, 'Botble\\Page\\Models\\Page', '', '2025-10-20 17:05:54', '2025-10-20 17:05:54'),
(28, 'contact', 8, 'Botble\\Page\\Models\\Page', '', '2025-10-20 17:05:54', '2025-10-20 17:05:54'),
(29, 'coming-soon', 9, 'Botble\\Page\\Models\\Page', '', '2025-10-20 17:05:54', '2025-10-20 17:05:54'),
(30, 'store-locator', 10, 'Botble\\Page\\Models\\Page', '', '2025-10-20 17:05:54', '2025-10-20 17:05:54'),
(31, 'faqs', 11, 'Botble\\Page\\Models\\Page', '', '2025-10-20 17:05:54', '2025-10-20 17:05:54'),
(32, 'fashion-live', 1, 'Botble\\Ecommerce\\Models\\Brand', 'brands', '2025-10-20 17:06:02', '2025-10-20 17:06:02'),
(33, 'hand-crafted', 2, 'Botble\\Ecommerce\\Models\\Brand', 'brands', '2025-10-20 17:06:02', '2025-10-20 17:06:02'),
(34, 'mestonix', 3, 'Botble\\Ecommerce\\Models\\Brand', 'brands', '2025-10-20 17:06:02', '2025-10-20 17:06:02'),
(35, 'sunshine', 4, 'Botble\\Ecommerce\\Models\\Brand', 'brands', '2025-10-20 17:06:02', '2025-10-20 17:06:02'),
(36, 'pure', 5, 'Botble\\Ecommerce\\Models\\Brand', 'brands', '2025-10-20 17:06:02', '2025-10-20 17:06:02'),
(37, 'anfold', 6, 'Botble\\Ecommerce\\Models\\Brand', 'brands', '2025-10-20 17:06:02', '2025-10-20 17:06:02'),
(61, 'miko-wooden-bluetooth-speaker', 1, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-10-20 17:06:15', '2025-10-20 17:06:15'),
(62, 'gorgeous-wooden-gloves', 2, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-10-20 17:06:15', '2025-10-20 17:06:15'),
(63, 'pinkol-enormous-granite-bottle', 3, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-10-20 17:06:15', '2025-10-20 17:06:15'),
(64, 'gorgeous-aluminum-table', 4, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-10-20 17:06:15', '2025-10-20 17:06:15'),
(65, 'evo-lightweight-granite-shirt', 5, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-10-20 17:06:16', '2025-10-20 17:06:16'),
(66, 'clco-incredible-paper-car', 6, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-10-20 17:06:16', '2025-10-20 17:06:16'),
(67, 'progash-durable-granite-hat', 7, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-10-20 17:06:16', '2025-10-20 17:06:16'),
(68, 'purab-enormous-miranda-bottle', 8, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-10-20 17:06:16', '2025-10-20 17:06:16'),
(69, 'miklonda-co-crafted-candles', 9, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-10-20 17:06:16', '2025-10-20 17:06:16'),
(70, 'pinkol-enormous-granite-bottle', 10, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-10-20 17:06:16', '2025-10-20 17:06:16'),
(71, 'dual-camera-20mp', 11, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-10-20 17:06:16', '2025-10-20 17:06:16'),
(72, 'smart-watches', 12, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-10-20 17:06:16', '2025-10-20 17:06:16'),
(73, 'beat-headphone', 13, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-10-20 17:06:16', '2025-10-20 17:06:16'),
(74, 'red-black-headphone', 14, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-10-20 17:06:16', '2025-10-20 17:06:16'),
(75, 'smart-watch-external', 15, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-10-20 17:06:16', '2025-10-20 17:06:16'),
(76, 'nikon-hd-camera', 16, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-10-20 17:06:16', '2025-10-20 17:06:16'),
(77, 'audio-equipment', 17, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-10-20 17:06:16', '2025-10-20 17:06:16'),
(78, 'smart-televisions', 18, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-10-20 17:06:16', '2025-10-20 17:06:16'),
(79, 'samsung-smart-phone', 19, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-10-20 17:06:16', '2025-10-20 17:06:16'),
(80, 'herschel-leather-duffle-bag-in-brown-color', 20, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-10-20 17:06:16', '2025-10-20 17:06:16'),
(81, 'xbox-one-wireless-controller-black-color', 21, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-10-20 17:06:16', '2025-10-20 17:06:16'),
(82, 'epsion-plaster-printer', 22, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-10-20 17:06:16', '2025-10-20 17:06:16'),
(83, 'sound-intone-i65-earphone-white-version', 23, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-10-20 17:06:16', '2025-10-20 17:06:16'),
(84, 'bo-play-mini-bluetooth-speaker', 24, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-10-20 17:06:16', '2025-10-20 17:06:16'),
(85, 'apple-macbook-air-retina-133-inch-laptop', 25, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-10-20 17:06:16', '2025-10-20 17:06:16'),
(86, 'apple-macbook-air-retina-12-inch-laptop', 26, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-10-20 17:06:16', '2025-10-20 17:06:16'),
(87, 'samsung-gear-vr-virtual-reality-headset', 27, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-10-20 17:06:16', '2025-10-20 17:06:16'),
(88, 'aveeno-moisturizing-body-shower-450ml', 28, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-10-20 17:06:16', '2025-10-20 17:06:16'),
(89, 'nyx-beauty-couton-pallete-makeup-12', 29, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-10-20 17:06:16', '2025-10-20 17:06:16'),
(90, 'nyx-beauty-couton-pallete-makeup-12', 30, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-10-20 17:06:16', '2025-10-20 17:06:16'),
(91, 'mvmth-classical-leather-watch-in-black', 31, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-10-20 17:06:16', '2025-10-20 17:06:16'),
(92, 'baxter-care-hair-kit-for-bearded-mens', 32, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-10-20 17:06:17', '2025-10-20 17:06:17'),
(93, 'ciate-palemore-lipstick-bold-red-color', 33, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-10-20 17:06:17', '2025-10-20 17:06:17'),
(94, 'vimto-squash-remix-apple-15-litres', 34, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-10-20 17:06:17', '2025-10-20 17:06:17'),
(95, 'crock-pot-slow-cooker', 35, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-10-20 17:06:17', '2025-10-20 17:06:17'),
(96, 'taylors-of-harrogate-yorkshire-coffee', 36, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-10-20 17:06:17', '2025-10-20 17:06:17'),
(97, 'soft-mochi-galeto-ice-cream', 37, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-10-20 17:06:17', '2025-10-20 17:06:17'),
(98, 'naked-noodle-egg-noodles-singapore', 38, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-10-20 17:06:17', '2025-10-20 17:06:17'),
(99, 'saute-pan-silver', 39, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-10-20 17:06:17', '2025-10-20 17:06:17'),
(100, 'bar-s-classic-bun-length-franks', 40, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-10-20 17:06:17', '2025-10-20 17:06:17'),
(101, 'broccoli-crowns', 41, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-10-20 17:06:17', '2025-10-20 17:06:17'),
(102, 'slimming-world-vegan-mac-greens', 42, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-10-20 17:06:17', '2025-10-20 17:06:17'),
(103, 'haagen-dazs-salted-caramel', 43, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-10-20 17:06:17', '2025-10-20 17:06:17'),
(104, 'iceland-3-solo-exotic-burst', 44, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-10-20 17:06:17', '2025-10-20 17:06:17'),
(105, 'extreme-budweiser-light-can', 45, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-10-20 17:06:17', '2025-10-20 17:06:17'),
(106, 'iceland-macaroni-cheese-traybake', 46, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-10-20 17:06:17', '2025-10-20 17:06:17'),
(107, 'dolmio-bolognese-pasta-sauce', 47, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-10-20 17:06:17', '2025-10-20 17:06:17'),
(108, 'sitema-bakeit-plastic-box', 48, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-10-20 17:06:17', '2025-10-20 17:06:17'),
(109, 'wayfair-basics-dinner-plate-storage', 49, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-10-20 17:06:17', '2025-10-20 17:06:17'),
(110, 'miko-the-panda-water-bottle', 50, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-10-20 17:06:17', '2025-10-20 17:06:17'),
(111, 'sesame-seed-bread', 51, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-10-20 17:06:17', '2025-10-20 17:06:17'),
(112, 'morrisons-the-best-beef', 52, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-10-20 17:06:17', '2025-10-20 17:06:17'),
(113, 'avocado-hass-large', 53, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-10-20 17:06:17', '2025-10-20 17:06:17'),
(114, 'italia-beef-lasagne', 54, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-10-20 17:06:17', '2025-10-20 17:06:17'),
(115, 'maxwell-house-classic-roast-mocha', 55, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-10-20 17:06:17', '2025-10-20 17:06:17'),
(116, 'bottled-pure-water-500ml', 56, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-10-20 17:06:17', '2025-10-20 17:06:17'),
(117, 'famart-farmhouse-soft-white', 57, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-10-20 17:06:18', '2025-10-20 17:06:18'),
(118, 'coca-cola-original-taste', 58, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-10-20 17:06:18', '2025-10-20 17:06:18'),
(119, 'casillero-diablo-cabernet-sauvignon', 59, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-10-20 17:06:18', '2025-10-20 17:06:18'),
(120, 'arla-organic-free-range-milk', 60, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-10-20 17:06:18', '2025-10-20 17:06:18'),
(121, 'aptamil-follow-on-baby-milk', 61, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-10-20 17:06:18', '2025-10-20 17:06:18'),
(122, 'cuisinart-chefs-classic-hard-anodized', 62, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-10-20 17:06:18', '2025-10-20 17:06:18'),
(123, 'corn-yellow-sweet', 63, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-10-20 17:06:18', '2025-10-20 17:06:18'),
(124, 'hobnobs-the-nobbly-biscuit', 64, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-10-20 17:06:18', '2025-10-20 17:06:18'),
(125, 'honest-organic-still-lemonade', 65, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-10-20 17:06:18', '2025-10-20 17:06:18'),
(126, 'ice-becks-beer-350ml-x-24-pieces', 66, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-10-20 17:06:18', '2025-10-20 17:06:18'),
(127, 'iceland-6-hot-cross-buns', 67, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-10-20 17:06:18', '2025-10-20 17:06:18'),
(128, 'iceland-luxury-4-panini-rolls', 68, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-10-20 17:06:18', '2025-10-20 17:06:18'),
(129, 'iceland-soft-scoop-vanilla', 69, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-10-20 17:06:18', '2025-10-20 17:06:18'),
(130, 'iceland-spaghetti-bolognese', 70, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-10-20 17:06:18', '2025-10-20 17:06:18'),
(131, 'kelloggs-coco-pops-cereal', 71, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-10-20 17:06:19', '2025-10-20 17:06:19'),
(132, 'kit-kat-chunky-milk-chocolate', 72, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-10-20 17:06:19', '2025-10-20 17:06:19'),
(133, 'large-green-bell-pepper', 73, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-10-20 17:06:19', '2025-10-20 17:06:19'),
(134, 'pice-94w-beasley-journal', 74, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-10-20 17:06:19', '2025-10-20 17:06:19'),
(135, 'province-piece-glass-drinking-glass', 75, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-10-20 17:06:19', '2025-10-20 17:06:19'),
(136, 'perfect', 1, 'Botble\\Gallery\\Models\\Gallery', 'galleries', '2025-10-20 17:06:41', '2025-10-20 17:06:41'),
(137, 'new-day', 2, 'Botble\\Gallery\\Models\\Gallery', 'galleries', '2025-10-20 17:06:41', '2025-10-20 17:06:41'),
(138, 'happy-day', 3, 'Botble\\Gallery\\Models\\Gallery', 'galleries', '2025-10-20 17:06:41', '2025-10-20 17:06:41'),
(139, 'nature', 4, 'Botble\\Gallery\\Models\\Gallery', 'galleries', '2025-10-20 17:06:41', '2025-10-20 17:06:41'),
(140, 'morning', 5, 'Botble\\Gallery\\Models\\Gallery', 'galleries', '2025-10-20 17:06:41', '2025-10-20 17:06:41'),
(141, 'photography', 6, 'Botble\\Gallery\\Models\\Gallery', 'galleries', '2025-10-20 17:06:41', '2025-10-20 17:06:41'),
(142, 'miko-wooden-bluetooth-speaker', 76, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-10-20 17:06:43', '2025-10-20 17:06:43'),
(143, 'miko-wooden-bluetooth-speaker', 77, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-10-20 17:06:43', '2025-10-20 17:06:43'),
(144, 'gorgeous-wooden-gloves', 78, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-10-20 17:06:43', '2025-10-20 17:06:43'),
(145, 'gorgeous-wooden-gloves', 79, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-10-20 17:06:43', '2025-10-20 17:06:43'),
(146, 'pinkol-enormous-granite-bottle', 80, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-10-20 17:06:43', '2025-10-20 17:06:43'),
(147, 'gorgeous-aluminum-table', 81, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-10-20 17:06:43', '2025-10-20 17:06:43'),
(148, 'gorgeous-aluminum-table', 82, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-10-20 17:06:43', '2025-10-20 17:06:43'),
(149, 'evo-lightweight-granite-shirt', 83, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-10-20 17:06:43', '2025-10-20 17:06:43'),
(150, 'evo-lightweight-granite-shirt', 84, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-10-20 17:06:43', '2025-10-20 17:06:43'),
(151, 'clco-incredible-paper-car', 85, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-10-20 17:06:43', '2025-10-20 17:06:43'),
(152, 'clco-incredible-paper-car', 86, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-10-20 17:06:43', '2025-10-20 17:06:43'),
(153, 'clco-incredible-paper-car', 87, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-10-20 17:06:43', '2025-10-20 17:06:43'),
(154, 'progash-durable-granite-hat', 88, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-10-20 17:06:43', '2025-10-20 17:06:43'),
(155, 'progash-durable-granite-hat', 89, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-10-20 17:06:43', '2025-10-20 17:06:43'),
(156, 'purab-enormous-miranda-bottle', 90, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-10-20 17:06:43', '2025-10-20 17:06:43'),
(157, 'miklonda-co-crafted-candles', 91, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-10-20 17:06:43', '2025-10-20 17:06:43'),
(158, 'miklonda-co-crafted-candles', 92, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-10-20 17:06:43', '2025-10-20 17:06:43'),
(159, 'miklonda-co-crafted-candles', 93, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-10-20 17:06:43', '2025-10-20 17:06:43'),
(160, 'pinkol-enormous-granite-bottle', 94, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-10-20 17:06:43', '2025-10-20 17:06:43'),
(161, 'pinkol-enormous-granite-bottle', 95, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-10-20 17:06:43', '2025-10-20 17:06:43'),
(162, 'dual-camera-20mp', 96, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-10-20 17:06:43', '2025-10-20 17:06:43'),
(163, 'dual-camera-20mp', 97, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-10-20 17:06:43', '2025-10-20 17:06:43'),
(164, 'smart-watches', 98, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-10-20 17:06:43', '2025-10-20 17:06:43'),
(165, 'smart-watches', 99, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-10-20 17:06:43', '2025-10-20 17:06:43'),
(166, 'smart-watches', 100, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-10-20 17:06:43', '2025-10-20 17:06:43'),
(167, 'beat-headphone', 101, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-10-20 17:06:43', '2025-10-20 17:06:43'),
(168, 'beat-headphone', 102, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-10-20 17:06:43', '2025-10-20 17:06:43'),
(169, 'beat-headphone', 103, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-10-20 17:06:43', '2025-10-20 17:06:43'),
(170, 'red-black-headphone', 104, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-10-20 17:06:43', '2025-10-20 17:06:43'),
(171, 'red-black-headphone', 105, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-10-20 17:06:43', '2025-10-20 17:06:43'),
(172, 'smart-watch-external', 106, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-10-20 17:06:43', '2025-10-20 17:06:43'),
(173, 'smart-watch-external', 107, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-10-20 17:06:43', '2025-10-20 17:06:43'),
(174, 'smart-watch-external', 108, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-10-20 17:06:43', '2025-10-20 17:06:43'),
(175, 'nikon-hd-camera', 109, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-10-20 17:06:43', '2025-10-20 17:06:43'),
(176, 'nikon-hd-camera', 110, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-10-20 17:06:43', '2025-10-20 17:06:43'),
(177, 'nikon-hd-camera', 111, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-10-20 17:06:43', '2025-10-20 17:06:43'),
(178, 'nikon-hd-camera', 112, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-10-20 17:06:43', '2025-10-20 17:06:43'),
(179, 'audio-equipment', 113, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-10-20 17:06:43', '2025-10-20 17:06:43'),
(180, 'audio-equipment', 114, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-10-20 17:06:43', '2025-10-20 17:06:43'),
(181, 'audio-equipment', 115, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-10-20 17:06:43', '2025-10-20 17:06:43'),
(182, 'audio-equipment', 116, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-10-20 17:06:43', '2025-10-20 17:06:43'),
(183, 'smart-televisions', 117, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-10-20 17:06:43', '2025-10-20 17:06:43'),
(184, 'smart-televisions', 118, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-10-20 17:06:43', '2025-10-20 17:06:43'),
(185, 'samsung-smart-phone', 119, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-10-20 17:06:43', '2025-10-20 17:06:43'),
(186, 'herschel-leather-duffle-bag-in-brown-color', 120, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-10-20 17:06:43', '2025-10-20 17:06:43'),
(187, 'herschel-leather-duffle-bag-in-brown-color', 121, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-10-20 17:06:43', '2025-10-20 17:06:43'),
(188, 'herschel-leather-duffle-bag-in-brown-color', 122, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-10-20 17:06:43', '2025-10-20 17:06:43'),
(189, 'xbox-one-wireless-controller-black-color', 123, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-10-20 17:06:43', '2025-10-20 17:06:43'),
(190, 'epsion-plaster-printer', 124, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-10-20 17:06:43', '2025-10-20 17:06:43'),
(191, 'epsion-plaster-printer', 125, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-10-20 17:06:43', '2025-10-20 17:06:43'),
(192, 'epsion-plaster-printer', 126, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-10-20 17:06:43', '2025-10-20 17:06:43'),
(193, 'epsion-plaster-printer', 127, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-10-20 17:06:43', '2025-10-20 17:06:43'),
(194, 'sound-intone-i65-earphone-white-version', 128, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-10-20 17:06:43', '2025-10-20 17:06:43'),
(195, 'sound-intone-i65-earphone-white-version', 129, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-10-20 17:06:43', '2025-10-20 17:06:43'),
(196, 'sound-intone-i65-earphone-white-version', 130, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-10-20 17:06:43', '2025-10-20 17:06:43'),
(197, 'sound-intone-i65-earphone-white-version', 131, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-10-20 17:06:43', '2025-10-20 17:06:43'),
(198, 'bo-play-mini-bluetooth-speaker', 132, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-10-20 17:06:43', '2025-10-20 17:06:43'),
(199, 'bo-play-mini-bluetooth-speaker', 133, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-10-20 17:06:43', '2025-10-20 17:06:43'),
(200, 'apple-macbook-air-retina-133-inch-laptop', 134, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-10-20 17:06:43', '2025-10-20 17:06:43'),
(201, 'apple-macbook-air-retina-133-inch-laptop', 135, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-10-20 17:06:43', '2025-10-20 17:06:43'),
(202, 'apple-macbook-air-retina-12-inch-laptop', 136, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-10-20 17:06:43', '2025-10-20 17:06:43'),
(203, 'samsung-gear-vr-virtual-reality-headset', 137, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-10-20 17:06:43', '2025-10-20 17:06:43'),
(204, 'samsung-gear-vr-virtual-reality-headset', 138, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-10-20 17:06:43', '2025-10-20 17:06:43'),
(205, 'samsung-gear-vr-virtual-reality-headset', 139, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-10-20 17:06:43', '2025-10-20 17:06:43'),
(206, 'samsung-gear-vr-virtual-reality-headset', 140, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-10-20 17:06:43', '2025-10-20 17:06:43'),
(207, 'aveeno-moisturizing-body-shower-450ml', 141, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-10-20 17:06:43', '2025-10-20 17:06:43'),
(208, 'nyx-beauty-couton-pallete-makeup-12', 142, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-10-20 17:06:43', '2025-10-20 17:06:43'),
(209, 'nyx-beauty-couton-pallete-makeup-12', 143, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-10-20 17:06:43', '2025-10-20 17:06:43'),
(210, 'nyx-beauty-couton-pallete-makeup-12', 144, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-10-20 17:06:43', '2025-10-20 17:06:43'),
(211, 'nyx-beauty-couton-pallete-makeup-12', 145, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-10-20 17:06:43', '2025-10-20 17:06:43'),
(212, 'nyx-beauty-couton-pallete-makeup-12', 146, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-10-20 17:06:43', '2025-10-20 17:06:43'),
(213, 'mvmth-classical-leather-watch-in-black', 147, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-10-20 17:06:43', '2025-10-20 17:06:43'),
(214, 'mvmth-classical-leather-watch-in-black', 148, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-10-20 17:06:43', '2025-10-20 17:06:43'),
(215, 'mvmth-classical-leather-watch-in-black', 149, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-10-20 17:06:43', '2025-10-20 17:06:43'),
(216, 'baxter-care-hair-kit-for-bearded-mens', 150, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-10-20 17:06:43', '2025-10-20 17:06:43'),
(217, 'ciate-palemore-lipstick-bold-red-color', 151, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-10-20 17:06:43', '2025-10-20 17:06:43'),
(218, 'ciate-palemore-lipstick-bold-red-color', 152, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-10-20 17:06:43', '2025-10-20 17:06:43'),
(219, 'ciate-palemore-lipstick-bold-red-color', 153, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-10-20 17:06:43', '2025-10-20 17:06:43'),
(220, 'ciate-palemore-lipstick-bold-red-color', 154, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-10-20 17:06:43', '2025-10-20 17:06:43'),
(221, 'vimto-squash-remix-apple-15-litres', 155, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-10-20 17:06:43', '2025-10-20 17:06:43'),
(222, 'vimto-squash-remix-apple-15-litres', 156, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-10-20 17:06:43', '2025-10-20 17:06:43'),
(223, 'crock-pot-slow-cooker', 157, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-10-20 17:06:43', '2025-10-20 17:06:43'),
(224, 'crock-pot-slow-cooker', 158, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-10-20 17:06:43', '2025-10-20 17:06:43'),
(225, 'crock-pot-slow-cooker', 159, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-10-20 17:06:43', '2025-10-20 17:06:43'),
(226, 'crock-pot-slow-cooker', 160, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-10-20 17:06:43', '2025-10-20 17:06:43'),
(227, 'taylors-of-harrogate-yorkshire-coffee', 161, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-10-20 17:06:43', '2025-10-20 17:06:43'),
(228, 'taylors-of-harrogate-yorkshire-coffee', 162, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-10-20 17:06:43', '2025-10-20 17:06:43'),
(229, 'taylors-of-harrogate-yorkshire-coffee', 163, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-10-20 17:06:43', '2025-10-20 17:06:43'),
(230, 'soft-mochi-galeto-ice-cream', 164, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-10-20 17:06:43', '2025-10-20 17:06:43'),
(231, 'soft-mochi-galeto-ice-cream', 165, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-10-20 17:06:43', '2025-10-20 17:06:43'),
(232, 'naked-noodle-egg-noodles-singapore', 166, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-10-20 17:06:43', '2025-10-20 17:06:43'),
(233, 'naked-noodle-egg-noodles-singapore', 167, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-10-20 17:06:43', '2025-10-20 17:06:43'),
(234, 'naked-noodle-egg-noodles-singapore', 168, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-10-20 17:06:43', '2025-10-20 17:06:43'),
(235, 'naked-noodle-egg-noodles-singapore', 169, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-10-20 17:06:43', '2025-10-20 17:06:43'),
(236, 'saute-pan-silver', 170, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-10-20 17:06:43', '2025-10-20 17:06:43'),
(237, 'saute-pan-silver', 171, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-10-20 17:06:43', '2025-10-20 17:06:43'),
(238, 'saute-pan-silver', 172, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-10-20 17:06:43', '2025-10-20 17:06:43'),
(239, 'bar-s-classic-bun-length-franks', 173, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-10-20 17:06:43', '2025-10-20 17:06:43'),
(240, 'bar-s-classic-bun-length-franks', 174, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-10-20 17:06:43', '2025-10-20 17:06:43'),
(241, 'bar-s-classic-bun-length-franks', 175, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-10-20 17:06:43', '2025-10-20 17:06:43'),
(242, 'broccoli-crowns', 176, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-10-20 17:06:43', '2025-10-20 17:06:43'),
(243, 'broccoli-crowns', 177, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-10-20 17:06:43', '2025-10-20 17:06:43'),
(244, 'broccoli-crowns', 178, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-10-20 17:06:43', '2025-10-20 17:06:43'),
(245, 'broccoli-crowns', 179, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-10-20 17:06:43', '2025-10-20 17:06:43'),
(246, 'broccoli-crowns', 180, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-10-20 17:06:43', '2025-10-20 17:06:43'),
(247, 'slimming-world-vegan-mac-greens', 181, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-10-20 17:06:43', '2025-10-20 17:06:43'),
(248, 'haagen-dazs-salted-caramel', 182, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-10-20 17:06:43', '2025-10-20 17:06:43'),
(249, 'haagen-dazs-salted-caramel', 183, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-10-20 17:06:43', '2025-10-20 17:06:43'),
(250, 'haagen-dazs-salted-caramel', 184, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-10-20 17:06:43', '2025-10-20 17:06:43'),
(251, 'iceland-3-solo-exotic-burst', 185, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-10-20 17:06:43', '2025-10-20 17:06:43'),
(252, 'iceland-3-solo-exotic-burst', 186, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-10-20 17:06:43', '2025-10-20 17:06:43'),
(253, 'extreme-budweiser-light-can', 187, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-10-20 17:06:43', '2025-10-20 17:06:43'),
(254, 'iceland-macaroni-cheese-traybake', 188, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-10-20 17:06:43', '2025-10-20 17:06:43'),
(255, 'iceland-macaroni-cheese-traybake', 189, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-10-20 17:06:43', '2025-10-20 17:06:43'),
(256, 'dolmio-bolognese-pasta-sauce', 190, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-10-20 17:06:43', '2025-10-20 17:06:43'),
(257, 'sitema-bakeit-plastic-box', 191, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-10-20 17:06:43', '2025-10-20 17:06:43'),
(258, 'sitema-bakeit-plastic-box', 192, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-10-20 17:06:43', '2025-10-20 17:06:43'),
(259, 'sitema-bakeit-plastic-box', 193, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-10-20 17:06:43', '2025-10-20 17:06:43'),
(260, 'wayfair-basics-dinner-plate-storage', 194, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-10-20 17:06:43', '2025-10-20 17:06:43'),
(261, 'wayfair-basics-dinner-plate-storage', 195, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-10-20 17:06:43', '2025-10-20 17:06:43'),
(262, 'miko-the-panda-water-bottle', 196, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-10-20 17:06:43', '2025-10-20 17:06:43'),
(263, 'miko-the-panda-water-bottle', 197, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-10-20 17:06:43', '2025-10-20 17:06:43'),
(264, 'sesame-seed-bread', 198, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-10-20 17:06:43', '2025-10-20 17:06:43'),
(265, 'sesame-seed-bread', 199, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-10-20 17:06:43', '2025-10-20 17:06:43'),
(266, 'sesame-seed-bread', 200, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-10-20 17:06:43', '2025-10-20 17:06:43'),
(267, 'morrisons-the-best-beef', 201, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-10-20 17:06:43', '2025-10-20 17:06:43'),
(268, 'morrisons-the-best-beef', 202, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-10-20 17:06:43', '2025-10-20 17:06:43'),
(269, 'morrisons-the-best-beef', 203, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-10-20 17:06:43', '2025-10-20 17:06:43'),
(270, 'avocado-hass-large', 204, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-10-20 17:06:43', '2025-10-20 17:06:43'),
(271, 'avocado-hass-large', 205, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-10-20 17:06:43', '2025-10-20 17:06:43'),
(272, 'italia-beef-lasagne', 206, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-10-20 17:06:43', '2025-10-20 17:06:43'),
(273, 'italia-beef-lasagne', 207, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-10-20 17:06:43', '2025-10-20 17:06:43'),
(274, 'maxwell-house-classic-roast-mocha', 208, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-10-20 17:06:43', '2025-10-20 17:06:43'),
(275, 'maxwell-house-classic-roast-mocha', 209, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-10-20 17:06:43', '2025-10-20 17:06:43'),
(276, 'maxwell-house-classic-roast-mocha', 210, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-10-20 17:06:43', '2025-10-20 17:06:43'),
(277, 'bottled-pure-water-500ml', 211, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-10-20 17:06:43', '2025-10-20 17:06:43'),
(278, 'bottled-pure-water-500ml', 212, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-10-20 17:06:43', '2025-10-20 17:06:43'),
(279, 'famart-farmhouse-soft-white', 213, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-10-20 17:06:43', '2025-10-20 17:06:43'),
(280, 'famart-farmhouse-soft-white', 214, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-10-20 17:06:43', '2025-10-20 17:06:43'),
(281, 'famart-farmhouse-soft-white', 215, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-10-20 17:06:43', '2025-10-20 17:06:43'),
(282, 'coca-cola-original-taste', 216, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-10-20 17:06:43', '2025-10-20 17:06:43'),
(283, 'coca-cola-original-taste', 217, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-10-20 17:06:43', '2025-10-20 17:06:43'),
(284, 'casillero-diablo-cabernet-sauvignon', 218, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-10-20 17:06:43', '2025-10-20 17:06:43'),
(285, 'casillero-diablo-cabernet-sauvignon', 219, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-10-20 17:06:43', '2025-10-20 17:06:43'),
(286, 'arla-organic-free-range-milk', 220, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-10-20 17:06:43', '2025-10-20 17:06:43'),
(287, 'arla-organic-free-range-milk', 221, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-10-20 17:06:43', '2025-10-20 17:06:43'),
(288, 'arla-organic-free-range-milk', 222, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-10-20 17:06:43', '2025-10-20 17:06:43'),
(289, 'aptamil-follow-on-baby-milk', 223, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-10-20 17:06:43', '2025-10-20 17:06:43'),
(290, 'aptamil-follow-on-baby-milk', 224, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-10-20 17:06:43', '2025-10-20 17:06:43'),
(291, 'cuisinart-chefs-classic-hard-anodized', 225, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-10-20 17:06:43', '2025-10-20 17:06:43'),
(292, 'cuisinart-chefs-classic-hard-anodized', 226, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-10-20 17:06:43', '2025-10-20 17:06:43'),
(293, 'corn-yellow-sweet', 227, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-10-20 17:06:43', '2025-10-20 17:06:43'),
(294, 'corn-yellow-sweet', 228, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-10-20 17:06:43', '2025-10-20 17:06:43'),
(295, 'hobnobs-the-nobbly-biscuit', 229, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-10-20 17:06:43', '2025-10-20 17:06:43'),
(296, 'hobnobs-the-nobbly-biscuit', 230, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-10-20 17:06:43', '2025-10-20 17:06:43'),
(297, 'hobnobs-the-nobbly-biscuit', 231, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-10-20 17:06:43', '2025-10-20 17:06:43'),
(298, 'hobnobs-the-nobbly-biscuit', 232, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-10-20 17:06:43', '2025-10-20 17:06:43'),
(299, 'honest-organic-still-lemonade', 233, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-10-20 17:06:43', '2025-10-20 17:06:43'),
(300, 'honest-organic-still-lemonade', 234, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-10-20 17:06:43', '2025-10-20 17:06:43'),
(301, 'honest-organic-still-lemonade', 235, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-10-20 17:06:43', '2025-10-20 17:06:43'),
(302, 'honest-organic-still-lemonade', 236, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-10-20 17:06:43', '2025-10-20 17:06:43'),
(303, 'honest-organic-still-lemonade', 237, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-10-20 17:06:43', '2025-10-20 17:06:43'),
(304, 'ice-becks-beer-350ml-x-24-pieces', 238, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-10-20 17:06:43', '2025-10-20 17:06:43'),
(305, 'ice-becks-beer-350ml-x-24-pieces', 239, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-10-20 17:06:43', '2025-10-20 17:06:43'),
(306, 'iceland-6-hot-cross-buns', 240, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-10-20 17:06:43', '2025-10-20 17:06:43'),
(307, 'iceland-luxury-4-panini-rolls', 241, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-10-20 17:06:43', '2025-10-20 17:06:43'),
(308, 'iceland-luxury-4-panini-rolls', 242, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-10-20 17:06:43', '2025-10-20 17:06:43'),
(309, 'iceland-luxury-4-panini-rolls', 243, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-10-20 17:06:43', '2025-10-20 17:06:43'),
(310, 'iceland-luxury-4-panini-rolls', 244, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-10-20 17:06:43', '2025-10-20 17:06:43'),
(311, 'iceland-soft-scoop-vanilla', 245, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-10-20 17:06:43', '2025-10-20 17:06:43'),
(312, 'iceland-soft-scoop-vanilla', 246, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-10-20 17:06:43', '2025-10-20 17:06:43'),
(314, 'kelloggs-coco-pops-cereal', 248, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-10-20 17:06:43', '2025-10-20 17:06:43'),
(316, 'kit-kat-chunky-milk-chocolate', 250, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-10-20 17:06:43', '2025-10-20 17:06:43'),
(317, 'kit-kat-chunky-milk-chocolate', 251, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-10-20 17:06:43', '2025-10-20 17:06:43'),
(318, 'kit-kat-chunky-milk-chocolate', 252, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-10-20 17:06:43', '2025-10-20 17:06:43'),
(319, 'large-green-bell-pepper', 253, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-10-20 17:06:43', '2025-10-20 17:06:43'),
(320, 'large-green-bell-pepper', 254, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-10-20 17:06:43', '2025-10-20 17:06:43'),
(321, 'large-green-bell-pepper', 255, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-10-20 17:06:43', '2025-10-20 17:06:43'),
(322, 'large-green-bell-pepper', 256, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-10-20 17:06:43', '2025-10-20 17:06:43'),
(323, 'pice-94w-beasley-journal', 257, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-10-20 17:06:43', '2025-10-20 17:06:43'),
(324, 'pice-94w-beasley-journal', 258, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-10-20 17:06:43', '2025-10-20 17:06:43'),
(325, 'pice-94w-beasley-journal', 259, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-10-20 17:06:43', '2025-10-20 17:06:43'),
(326, 'province-piece-glass-drinking-glass', 260, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-10-20 17:06:43', '2025-10-20 17:06:43'),
(327, 'province-piece-glass-drinking-glass', 261, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-10-20 17:06:43', '2025-10-20 17:06:43'),
(328, 'province-piece-glass-drinking-glass', 262, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-10-20 17:06:43', '2025-10-20 17:06:43'),
(329, 'province-piece-glass-drinking-glass', 263, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-10-20 17:06:43', '2025-10-20 17:06:43'),
(330, 'new-arrival', 1, 'Botble\\Ecommerce\\Models\\ProductCollection', 'collections', '2025-10-20 17:06:44', '2025-10-20 17:06:44'),
(331, 'best-sellers', 2, 'Botble\\Ecommerce\\Models\\ProductCollection', 'collections', '2025-10-20 17:06:44', '2025-10-20 17:06:44'),
(332, 'special-offer', 3, 'Botble\\Ecommerce\\Models\\ProductCollection', 'collections', '2025-10-20 17:06:44', '2025-10-20 17:06:44'),
(333, 'reactive-providence-hair-color', 4, 'Botble\\Ecommerce\\Models\\ProductCollection', 'collections', '2025-10-20 17:06:44', '2025-10-20 17:06:44'),
(334, 'new-modern-stylist-makeup', 5, 'Botble\\Ecommerce\\Models\\ProductCollection', 'collections', '2025-10-20 17:06:44', '2025-10-20 17:06:44'),
(335, 'intensive-glow-c-serum', 6, 'Botble\\Ecommerce\\Models\\ProductCollection', 'collections', '2025-10-20 17:06:44', '2025-10-20 17:06:44'),
(336, 'vogue', 7, 'Botble\\Ecommerce\\Models\\ProductCollection', 'collections', '2025-10-20 17:06:44', '2025-10-20 17:06:44'),
(337, 'rosalina-d-willson', 1, 'Botble\\Team\\Models\\Team', 'teams', '2025-10-20 17:06:44', '2025-10-20 17:06:44'),
(338, 'ukolilix-x-xilanorix', 2, 'Botble\\Team\\Models\\Team', 'teams', '2025-10-20 17:06:44', '2025-10-20 17:06:44'),
(339, 'alonso-m-miklonax', 3, 'Botble\\Team\\Models\\Team', 'teams', '2025-10-20 17:06:44', '2025-10-20 17:06:44'),
(340, 'miranda-h-halim', 4, 'Botble\\Team\\Models\\Team', 'teams', '2025-10-20 17:06:44', '2025-10-20 17:06:44'),
(341, 'field-testing-success-alpha-gen-ii-modular-system', 12, 'Botble\\Blog\\Models\\Post', 'blog', '2025-10-25 08:00:03', '2025-10-25 08:00:03'),
(342, 'ms57k-suppressor', 13, 'Botble\\Blog\\Models\\Post', 'blog', '2025-10-25 08:02:20', '2025-10-25 08:02:20'),
(343, 'field-testing-success-alpha-gen-ii-modular-system-1', 14, 'Botble\\Blog\\Models\\Post', 'blog', '2025-10-27 02:27:48', '2025-10-27 02:27:48'),
(344, 'field-testing-success-alpha-gen-ii-modular-system-2', 15, 'Botble\\Blog\\Models\\Post', 'blog', '2025-10-27 03:57:00', '2025-10-27 03:57:00'),
(354, 'X-Ball® - Glass Breaching Tool G13', 275, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-10-27 04:31:46', '2025-10-27 04:31:46'),
(355, 'ALPHA Gen II – Complete Modular Operator’s System G9', 274, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-10-27 04:32:33', '2025-10-27 04:32:33'),
(357, 'partners', 12, 'Botble\\Page\\Models\\Page', '', '2025-10-28 12:02:15', '2025-10-28 12:02:15'),
(386, 'breaching', 29, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2025-11-06 12:33:32', '2025-11-06 12:33:32'),
(390, 'breaching-weapon-retention', 31, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2025-11-07 06:00:22', '2025-11-07 06:00:22'),
(391, 'method-of-entry-breaching-tape-adhesives', 32, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2025-11-07 06:00:49', '2025-11-07 06:00:49'),
(392, 'method-of-entry-breaching-tools', 33, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2025-11-07 06:01:10', '2025-11-07 06:01:10'),
(393, 'weapons-small-arms-accessories', 34, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2025-11-07 06:03:03', '2025-11-07 06:03:03'),
(400, 'guns', 5, 'Botble\\Blog\\Models\\Category', 'blog', '2025-11-10 07:07:13', '2025-11-10 07:07:13'),
(439, 'rs149-hydrogel-tape-2', 349, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-11-13 09:25:43', '2025-11-13 09:25:43'),
(440, 'rs149-hydrogel-tape-4', 350, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-11-13 09:25:49', '2025-11-13 09:25:49'),
(441, 'rs149-hydrogel-tape-6', 351, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-11-13 09:25:56', '2025-11-13 09:25:56'),
(442, 'vitruv17', 352, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-11-13 09:26:02', '2025-11-13 09:26:02'),
(443, 'vitruv23', 353, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-11-13 09:26:05', '2025-11-13 09:26:05'),
(444, 'vitruv28', 354, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-11-13 09:26:09', '2025-11-13 09:26:09'),
(445, 'weapons-catch-standard-molle-lok-wolf-grey', 355, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-11-13 09:26:15', '2025-11-13 09:26:15'),
(446, 'weapons-catch-standard-tek-lok-black', 356, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-11-13 09:26:20', '2025-11-13 09:26:20'),
(447, 'weapons-catch-standard-tek-lok-coyote', 357, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-11-13 09:26:26', '2025-11-13 09:26:26'),
(451, 'american-animal-arms-lights-out-rail-68-black', 361, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-11-13 09:26:50', '2025-11-13 09:26:50'),
(457, 'american-animal-arms-lights-out-rail-68-coyote-brown', 367, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-11-13 09:32:54', '2025-11-13 09:32:54'),
(458, 'american-animal-arms-lights-out-rail-68-flat-dark-earth-fde', 368, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-11-13 09:33:14', '2025-11-13 09:33:14'),
(463, 'x-pole-4-to-12-extendable-pole-only', 373, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-11-13 11:05:36', '2025-11-13 11:05:36'),
(464, 'x-pole-tactical-glass-breaching-pole-without-x-ball', 374, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-11-13 11:05:41', '2025-11-13 11:05:41'),
(465, 'test', 375, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-11-28 05:26:36', '2025-11-28 05:26:36'),
(466, 'weapon-1', 376, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-11-28 06:41:17', '2025-11-28 06:41:17'),
(467, 'weapon-2', 377, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-11-28 06:44:41', '2025-11-28 06:44:41'),
(468, 'weapon-1-1', 378, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-11-28 09:29:39', '2025-11-28 09:29:39');

-- --------------------------------------------------------

--
-- Table structure for table `slugs_translations`
--

CREATE TABLE `slugs_translations` (
  `lang_code` varchar(20) NOT NULL,
  `slugs_id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(191) DEFAULT NULL,
  `prefix` varchar(120) DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `social_logins`
--

CREATE TABLE `social_logins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_type` varchar(191) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `provider` varchar(191) NOT NULL,
  `provider_id` varchar(191) NOT NULL,
  `token` text DEFAULT NULL,
  `refresh_token` text DEFAULT NULL,
  `token_expires_at` timestamp NULL DEFAULT NULL,
  `provider_data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`provider_data`)),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `states`
--

CREATE TABLE `states` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(120) NOT NULL,
  `slug` varchar(120) DEFAULT NULL,
  `abbreviation` varchar(10) DEFAULT NULL,
  `country_id` bigint(20) UNSIGNED DEFAULT NULL,
  `order` tinyint(4) NOT NULL DEFAULT 0,
  `image` varchar(191) DEFAULT NULL,
  `is_default` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `status` varchar(60) NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `states_translations`
--

CREATE TABLE `states_translations` (
  `lang_code` varchar(20) NOT NULL,
  `states_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(120) DEFAULT NULL,
  `slug` varchar(120) DEFAULT NULL,
  `abbreviation` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(120) NOT NULL,
  `author_id` bigint(20) UNSIGNED DEFAULT NULL,
  `author_type` varchar(191) NOT NULL,
  `description` varchar(400) DEFAULT NULL,
  `status` varchar(60) NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `name`, `author_id`, `author_type`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'General', 1, 'Botble\\ACL\\Models\\User', NULL, 'published', '2025-10-20 17:05:52', '2025-10-20 17:05:52'),
(2, 'Design', 1, 'Botble\\ACL\\Models\\User', NULL, 'published', '2025-10-20 17:05:52', '2025-10-20 17:05:52'),
(3, 'Fashion', 1, 'Botble\\ACL\\Models\\User', NULL, 'published', '2025-10-20 17:05:52', '2025-10-20 17:05:52'),
(4, 'Branding', 1, 'Botble\\ACL\\Models\\User', NULL, 'published', '2025-10-20 17:05:52', '2025-10-20 17:05:52'),
(5, 'Modern', 1, 'Botble\\ACL\\Models\\User', NULL, 'published', '2025-10-20 17:05:52', '2025-10-20 17:05:52');

-- --------------------------------------------------------

--
-- Table structure for table `tags_translations`
--

CREATE TABLE `tags_translations` (
  `lang_code` varchar(20) NOT NULL,
  `tags_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) DEFAULT NULL,
  `description` varchar(400) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `teams`
--

CREATE TABLE `teams` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `photo` varchar(191) DEFAULT NULL,
  `title` varchar(191) DEFAULT NULL,
  `location` varchar(191) DEFAULT NULL,
  `socials` varchar(191) DEFAULT NULL,
  `status` varchar(60) NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `content` longtext DEFAULT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `email` varchar(191) DEFAULT NULL,
  `address` varchar(191) DEFAULT NULL,
  `website` varchar(191) DEFAULT NULL,
  `description` varchar(400) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `teams`
--

INSERT INTO `teams` (`id`, `name`, `photo`, `title`, `location`, `socials`, `status`, `created_at`, `updated_at`, `content`, `phone`, `email`, `address`, `website`, `description`) VALUES
(1, 'Rosalina D. Willson', 'testimonials/team-1.jpg', 'Founder', 'USA', NULL, 'published', '2025-10-20 17:06:42', '2025-10-20 17:06:42', NULL, NULL, NULL, NULL, NULL, NULL),
(2, 'Ukolilix X. Xilanorix', 'testimonials/team-2.jpg', 'CEO', 'Qatar', NULL, 'published', '2025-10-20 17:06:42', '2025-10-20 17:06:42', NULL, NULL, NULL, NULL, NULL, NULL),
(3, 'Alonso M. Miklonax', 'testimonials/team-3.jpg', 'Designer', 'India', NULL, 'published', '2025-10-20 17:06:42', '2025-10-20 17:06:42', NULL, NULL, NULL, NULL, NULL, NULL),
(4, 'Miranda H. Halim', 'testimonials/team-4.jpg', 'Developer', 'China', NULL, 'published', '2025-10-20 17:06:42', '2025-10-20 17:06:42', NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `teams_translations`
--

CREATE TABLE `teams_translations` (
  `lang_code` varchar(191) NOT NULL,
  `teams_id` int(11) NOT NULL,
  `name` varchar(191) NOT NULL,
  `title` varchar(191) DEFAULT NULL,
  `location` varchar(191) DEFAULT NULL,
  `content` longtext DEFAULT NULL,
  `address` varchar(191) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `testimonials`
--

CREATE TABLE `testimonials` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(120) NOT NULL,
  `content` text NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `company` varchar(120) DEFAULT NULL,
  `status` varchar(60) NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `testimonials`
--

INSERT INTO `testimonials` (`id`, `name`, `content`, `image`, `company`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Guy Hawkins', 'Five stars! Their cosmetics are magic. Transformed my skin, enhanced my beauty. A go-to for quality and results ⭐⭐⭐⭐⭐', 'testimonials/avatar-1.png', 'Bank of America', 'published', '2025-10-20 17:06:42', '2025-10-20 17:06:42'),
(2, 'Eleanor Pena', 'Top-notch! 5 stars. Makeup, skincare, all exceptional. Delighted with my purchases. A must-visit for every beauty enthusiast! ⭐⭐⭐⭐⭐', 'testimonials/avatar-2.png', 'Nintendo', 'published', '2025-10-20 17:06:42', '2025-10-20 17:06:42'),
(3, 'Cody Fisher', 'Thrilled with results! 5 stars. Solved my sensitive skin issues. The cosmetics shop is a gem. Highly recommended. ⭐⭐⭐⭐⭐', 'testimonials/avatar-3.png', 'Starbucks', 'published', '2025-10-20 17:06:42', '2025-10-20 17:06:42'),
(4, 'Albert Flores', 'Wedding day savior! 5 stars. Their bridal collection is a game-changer. Made me feel like a star. Impressed beyond words. ⭐⭐⭐⭐⭐', 'testimonials/avatar-4.png', 'Bank of America', 'published', '2025-10-20 17:06:43', '2025-10-20 17:06:43');

-- --------------------------------------------------------

--
-- Table structure for table `testimonials_translations`
--

CREATE TABLE `testimonials_translations` (
  `lang_code` varchar(191) NOT NULL,
  `testimonials_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `content` text DEFAULT NULL,
  `company` varchar(120) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(191) NOT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(120) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `first_name` varchar(120) DEFAULT NULL,
  `last_name` varchar(120) DEFAULT NULL,
  `username` varchar(60) DEFAULT NULL,
  `avatar_id` bigint(20) UNSIGNED DEFAULT NULL,
  `super_user` tinyint(1) NOT NULL DEFAULT 0,
  `manage_supers` tinyint(1) NOT NULL DEFAULT 0,
  `permissions` text DEFAULT NULL,
  `last_login` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `phone`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `first_name`, `last_name`, `username`, `avatar_id`, `super_user`, `manage_supers`, `permissions`, `last_login`) VALUES
(1, 'support@tinypandademosite.org', NULL, NULL, '$2y$12$bULvwb/4QT/781ojmkVyPOlklHxD837mG721R.Q/fvV9fvPEgHMe.', 'dORsWme4nstoQjuMLx1YhFlsej12hM6pG2hIWbP2TPPqT2JZl3sPij5x2EFh', '2025-10-20 17:05:48', '2025-12-24 08:47:20', 'Regent', 'Regent', 'admin', NULL, 1, 1, NULL, '2025-12-24 08:47:20'),
(2, 'support1@tinypandademosite.org', NULL, NULL, '$2y$12$o.g5/DhHd/qvCCuJSBCzkeFUvW12yH/UgrCBGwpOc0A25rxvie0gG', 'i71yNX2QTToAcrYwzvL5jIEFvY5YNxUAN6NN7O0e3WeNdsmVWIxwGU16QlUd', '2025-11-05 13:14:13', '2025-12-23 12:34:11', 'Regent', 'Regent', 'regent_weapon', NULL, 0, 0, '{\"plugins.ecommerce\":true,\"ecommerce.report.index\":true,\"products.index\":true,\"products.create\":true,\"products.edit\":true,\"products.destroy\":true,\"products.duplicate\":true,\"ecommerce.product-prices.index\":true,\"ecommerce.product-prices.edit\":true,\"ecommerce.product-inventory.index\":true,\"ecommerce.product-inventory.edit\":true,\"product-categories.index\":true,\"product-categories.create\":true,\"product-categories.edit\":true,\"product-categories.destroy\":true,\"product-tag.index\":true,\"product-tag.create\":true,\"product-tag.edit\":true,\"product-tag.destroy\":true,\"brands.index\":true,\"brands.create\":true,\"brands.edit\":true,\"brands.destroy\":true,\"product-collections.index\":true,\"product-collections.create\":true,\"product-collections.edit\":true,\"product-collections.destroy\":true,\"product-attribute-sets.index\":true,\"product-attribute-sets.create\":true,\"product-attribute-sets.edit\":true,\"product-attribute-sets.destroy\":true,\"product-attributes.index\":true,\"product-attributes.create\":true,\"product-attributes.edit\":true,\"product-attributes.destroy\":true,\"tax.index\":true,\"tax.create\":true,\"tax.edit\":true,\"tax.destroy\":true,\"reviews.index\":true,\"reviews.create\":true,\"reviews.destroy\":true,\"reviews.publish\":true,\"reviews.reply\":true,\"ecommerce.shipments.index\":true,\"ecommerce.shipments.create\":true,\"ecommerce.shipments.edit\":true,\"ecommerce.shipments.destroy\":true,\"orders.index\":true,\"orders.create\":true,\"orders.edit\":true,\"orders.destroy\":true,\"discounts.index\":true,\"discounts.create\":true,\"discounts.edit\":true,\"discounts.destroy\":true,\"customers.index\":true,\"customers.create\":true,\"customers.edit\":true,\"customers.destroy\":true,\"ecommerce.customers.import\":true,\"ecommerce.customers.export\":true,\"flash-sale.index\":true,\"flash-sale.create\":true,\"flash-sale.edit\":true,\"flash-sale.destroy\":true,\"product-label.index\":true,\"product-label.create\":true,\"product-label.edit\":true,\"product-label.destroy\":true,\"order_returns.index\":true,\"order_returns.edit\":true,\"order_returns.destroy\":true,\"global-option.index\":true,\"global-option.create\":true,\"global-option.edit\":true,\"global-option.destroy\":true,\"ecommerce.invoice.index\":true,\"ecommerce.invoice.edit\":true,\"ecommerce.invoice.destroy\":true,\"ecommerce.product-specification.index\":true,\"ecommerce.specification-groups.index\":true,\"ecommerce.specification-groups.create\":true,\"ecommerce.specification-groups.edit\":true,\"ecommerce.specification-groups.destroy\":true,\"ecommerce.specification-attributes.index\":true,\"ecommerce.specification-attributes.create\":true,\"ecommerce.specification-attributes.edit\":true,\"ecommerce.specification-attributes.destroy\":true,\"ecommerce.specification-tables.index\":true,\"ecommerce.specification-tables.create\":true,\"ecommerce.specification-tables.edit\":true,\"ecommerce.specification-tables.destroy\":true,\"superuser\":null,\"manage_supers\":null}', '2025-12-23 12:34:11'),
(3, 'shop_manager@gmail.com', NULL, NULL, '$2y$12$8hfY15WfUmdsjLD/Pf8ByeQLUp8HhhtZ9bCvQ6SV9lxI0zNMbmK1K', 'Ffjk92n2Sj6sWO9tNjUrYMaA5ClvSMNXrCFxeMXwlAYsi6ITIMrIZ24MMI26', '2025-11-28 13:09:40', '2025-12-18 09:59:30', 'Shop', 'Manager', 'shop_manager', NULL, 0, 0, '{\"ads.index\":true,\"ads.create\":true,\"ads.edit\":true,\"ads.destroy\":true,\"announcements.index\":true,\"announcements.create\":true,\"announcements.edit\":true,\"announcements.destroy\":true,\"core.cms\":true,\"media.index\":true,\"files.index\":true,\"files.create\":true,\"files.edit\":true,\"files.trash\":true,\"files.destroy\":true,\"folders.index\":true,\"folders.create\":true,\"folders.edit\":true,\"folders.trash\":true,\"folders.destroy\":true,\"pages.index\":true,\"pages.create\":true,\"pages.edit\":true,\"pages.destroy\":true,\"plugins.blog\":true,\"posts.index\":true,\"posts.create\":true,\"posts.edit\":true,\"posts.destroy\":true,\"categories.index\":true,\"categories.create\":true,\"categories.edit\":true,\"categories.destroy\":true,\"tags.index\":true,\"tags.create\":true,\"tags.edit\":true,\"tags.destroy\":true,\"contacts.index\":true,\"contacts.edit\":true,\"contacts.destroy\":true,\"contact.custom-fields\":true,\"galleries.index\":true,\"galleries.create\":true,\"galleries.edit\":true,\"galleries.destroy\":true,\"plugins.ecommerce\":true,\"ecommerce.report.index\":true,\"products.index\":true,\"products.create\":true,\"products.edit\":true,\"products.destroy\":true,\"products.duplicate\":true,\"ecommerce.product-prices.index\":true,\"ecommerce.product-prices.edit\":true,\"ecommerce.product-inventory.index\":true,\"ecommerce.product-inventory.edit\":true,\"product-categories.index\":true,\"product-categories.create\":true,\"product-categories.edit\":true,\"product-categories.destroy\":true,\"product-tag.index\":true,\"product-tag.create\":true,\"product-tag.edit\":true,\"product-tag.destroy\":true,\"brands.index\":true,\"brands.create\":true,\"brands.edit\":true,\"brands.destroy\":true,\"product-collections.index\":true,\"product-collections.create\":true,\"product-collections.edit\":true,\"product-collections.destroy\":true,\"product-attribute-sets.index\":true,\"product-attribute-sets.create\":true,\"product-attribute-sets.edit\":true,\"product-attribute-sets.destroy\":true,\"product-attributes.index\":true,\"product-attributes.create\":true,\"product-attributes.edit\":true,\"product-attributes.destroy\":true,\"tax.index\":true,\"tax.create\":true,\"tax.edit\":true,\"tax.destroy\":true,\"reviews.index\":true,\"reviews.create\":true,\"reviews.destroy\":true,\"reviews.publish\":true,\"reviews.reply\":true,\"ecommerce.shipments.index\":true,\"ecommerce.shipments.create\":true,\"ecommerce.shipments.edit\":true,\"ecommerce.shipments.destroy\":true,\"orders.index\":true,\"orders.create\":true,\"orders.edit\":true,\"orders.destroy\":true,\"discounts.index\":true,\"discounts.create\":true,\"discounts.edit\":true,\"discounts.destroy\":true,\"customers.index\":true,\"customers.create\":true,\"customers.edit\":true,\"customers.destroy\":true,\"ecommerce.customers.import\":true,\"ecommerce.customers.export\":true,\"flash-sale.index\":true,\"flash-sale.create\":true,\"flash-sale.edit\":true,\"flash-sale.destroy\":true,\"product-label.index\":true,\"product-label.create\":true,\"product-label.edit\":true,\"product-label.destroy\":true,\"order_returns.index\":true,\"order_returns.edit\":true,\"order_returns.destroy\":true,\"global-option.index\":true,\"global-option.create\":true,\"global-option.edit\":true,\"global-option.destroy\":true,\"ecommerce.invoice.index\":true,\"ecommerce.invoice.edit\":true,\"ecommerce.invoice.destroy\":true,\"ecommerce.product-specification.index\":true,\"ecommerce.specification-groups.index\":true,\"ecommerce.specification-groups.create\":true,\"ecommerce.specification-groups.edit\":true,\"ecommerce.specification-groups.destroy\":true,\"ecommerce.specification-attributes.index\":true,\"ecommerce.specification-attributes.create\":true,\"ecommerce.specification-attributes.edit\":true,\"ecommerce.specification-attributes.destroy\":true,\"ecommerce.specification-tables.index\":true,\"ecommerce.specification-tables.create\":true,\"ecommerce.specification-tables.edit\":true,\"ecommerce.specification-tables.destroy\":true,\"plugin.faq\":true,\"faq.index\":true,\"faq.create\":true,\"faq.edit\":true,\"faq.destroy\":true,\"faq_category.index\":true,\"faq_category.create\":true,\"faq_category.edit\":true,\"faq_category.destroy\":true,\"plugin.location\":true,\"country.index\":true,\"country.create\":true,\"country.edit\":true,\"country.destroy\":true,\"state.index\":true,\"state.create\":true,\"state.edit\":true,\"state.destroy\":true,\"city.index\":true,\"city.create\":true,\"city.edit\":true,\"city.destroy\":true,\"newsletter.index\":true,\"newsletter.destroy\":true,\"payment.index\":true,\"payments.settings\":true,\"payment.destroy\":true,\"payments.logs\":true,\"payments.logs.show\":true,\"payments.logs.destroy\":true,\"sale-popup.settings\":true,\"simple-slider.edit\":true,\"team.index\":true,\"team.create\":true,\"team.edit\":true,\"team.destroy\":true,\"testimonial.index\":true,\"testimonial.create\":true,\"testimonial.edit\":true,\"testimonial.destroy\":true,\"superuser\":0,\"manage_supers\":0}', '2025-12-18 09:59:30');

-- --------------------------------------------------------

--
-- Table structure for table `user_meta`
--

CREATE TABLE `user_meta` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(120) DEFAULT NULL,
  `value` text DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_meta`
--

INSERT INTO `user_meta` (`id`, `key`, `value`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'minimal_sidebar', 'no', 2, '2025-11-05 13:16:14', '2025-11-28 12:56:44'),
(2, 'theme_mode', 'light', 1, '2025-11-10 13:12:13', '2025-11-10 13:12:16'),
(3, 'minimal_sidebar', 'no', 1, '2025-11-24 04:52:39', '2025-11-24 04:52:40'),
(4, 'minimal_sidebar', 'no', 3, '2025-11-28 13:10:17', '2025-11-28 13:15:06');

-- --------------------------------------------------------

--
-- Table structure for table `user_settings`
--

CREATE TABLE `user_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_type` varchar(191) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(191) NOT NULL,
  `value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`value`)),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `widgets`
--

CREATE TABLE `widgets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `widget_id` varchar(120) NOT NULL,
  `sidebar_id` varchar(120) NOT NULL,
  `theme` varchar(120) NOT NULL,
  `position` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `data` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `widgets`
--

INSERT INTO `widgets` (`id`, `widget_id`, `sidebar_id`, `theme`, `position`, `data`, `created_at`, `updated_at`) VALUES
(1, 'SiteInfoWidget', 'footer_sidebar', 'ninico', 0, '{\"description\":\"Elegant pink origami design three dimensional view and decoration co-exist. Great for adding a decorative touch to any room\\u2019s decor.\",\"logo\":null}', '2025-10-20 17:06:01', '2025-10-20 17:06:01'),
(2, 'CustomMenuWidget', 'footer_sidebar', 'ninico', 1, '{\"name\":\"Information\",\"menu_id\":\"information\"}', '2025-10-20 17:06:01', '2025-10-20 17:06:01'),
(3, 'CustomMenuWidget', 'footer_sidebar', 'ninico', 2, '{\"name\":\"My Account\",\"menu_id\":\"my-account\"}', '2025-10-20 17:06:01', '2025-10-20 17:06:01'),
(4, 'CustomMenuWidget', 'footer_sidebar', 'ninico', 3, '{\"name\":\"Social Network\",\"menu_id\":\"social-network\"}', '2025-10-20 17:06:01', '2025-10-20 17:06:01'),
(5, 'NewsletterWidget', 'footer_sidebar', 'ninico', 4, '[]', '2025-10-20 17:06:01', '2025-10-20 17:06:01'),
(6, 'CtaContactWidget', 'footer_middle_sidebar', 'ninico', 1, '[]', '2025-10-20 17:06:01', '2025-10-20 17:06:01'),
(7, 'DownloadAppsWidget', 'footer_middle_sidebar', 'ninico', 2, '{\"ios_image\":\"general\\/f-app.jpg\",\"android_image\":\"general\\/f-google.jpg\"}', '2025-10-20 17:06:01', '2025-10-20 17:06:01'),
(8, 'SiteCopyrightWidget', 'footer_bottom_sidebar', 'ninico', 0, '{\"description\":\"Copyright 2025 \\u00a9 Ninico. All rights reserved. Powered by Botble.\"}', '2025-10-20 17:06:01', '2025-10-20 17:06:01'),
(9, 'SiteAcceptedPaymentsWidget', 'footer_bottom_sidebar', 'ninico', 1, '{\"image\":\"general\\/f-brand-icon-01.png\",\"url\":\"\\/\"}', '2025-10-20 17:06:01', '2025-10-20 17:06:01'),
(10, 'BlogSearchWidget', 'blog_sidebar', 'ninico', 1, '{\"name\":\"Search\"}', '2025-10-20 17:06:01', '2025-10-20 17:06:01'),
(11, 'BlogCategoriesWidget', 'blog_sidebar', 'ninico', 2, '{\"name\":\"Categories\"}', '2025-10-20 17:06:01', '2025-10-20 17:06:01'),
(12, 'BlogPostsWidget', 'blog_sidebar', 'ninico', 3, '{\"name\":\"Recent Posts\",\"type\":\"recent\"}', '2025-10-20 17:06:01', '2025-10-20 17:06:01'),
(13, 'BlogTagsWidget', 'blog_sidebar', 'ninico', 4, '{\"name\":\"Popular Tag\"}', '2025-10-20 17:06:01', '2025-10-20 17:06:01'),
(15, 'ProductCategoriesWidget', 'ecommerce_products_sidebar', 'ninico', 0, '{\"id\":\"ProductCategoriesWidget\"}', '2025-10-27 04:39:29', '2025-10-27 04:39:29'),
(18, 'NewsletterWidget', 'primary_sidebar', 'ninico', 0, '{\"id\":\"NewsletterWidget\",\"title\":\"\",\"subtitle\":\"\"}', '2025-11-06 11:03:14', '2025-11-06 11:03:14');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activations`
--
ALTER TABLE `activations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `activations_user_id_index` (`user_id`);

--
-- Indexes for table `admin_notifications`
--
ALTER TABLE `admin_notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ads`
--
ALTER TABLE `ads`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ads_key_unique` (`key`);

--
-- Indexes for table `ads_translations`
--
ALTER TABLE `ads_translations`
  ADD PRIMARY KEY (`lang_code`,`ads_id`);

--
-- Indexes for table `announcements`
--
ALTER TABLE `announcements`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `announcements_translations`
--
ALTER TABLE `announcements_translations`
  ADD PRIMARY KEY (`lang_code`,`announcements_id`);

--
-- Indexes for table `audit_histories`
--
ALTER TABLE `audit_histories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `audit_histories_user_id_index` (`user_id`),
  ADD KEY `audit_histories_module_index` (`module`);

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
  ADD KEY `categories_parent_id_index` (`parent_id`),
  ADD KEY `categories_status_index` (`status`),
  ADD KEY `categories_created_at_index` (`created_at`);

--
-- Indexes for table `categories_translations`
--
ALTER TABLE `categories_translations`
  ADD PRIMARY KEY (`lang_code`,`categories_id`);

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `cities_slug_unique` (`slug`),
  ADD KEY `idx_cities_name` (`name`),
  ADD KEY `idx_cities_state_status` (`state_id`,`status`),
  ADD KEY `idx_cities_status` (`status`),
  ADD KEY `idx_cities_state_id` (`state_id`);

--
-- Indexes for table `cities_translations`
--
ALTER TABLE `cities_translations`
  ADD PRIMARY KEY (`lang_code`,`cities_id`),
  ADD KEY `idx_cities_trans_city_lang` (`cities_id`,`lang_code`),
  ADD KEY `idx_cities_trans_name` (`name`),
  ADD KEY `idx_cities_trans_cities_id` (`cities_id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_custom_fields`
--
ALTER TABLE `contact_custom_fields`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_custom_fields_translations`
--
ALTER TABLE `contact_custom_fields_translations`
  ADD PRIMARY KEY (`lang_code`,`contact_custom_fields_id`);

--
-- Indexes for table `contact_custom_field_options`
--
ALTER TABLE `contact_custom_field_options`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_custom_field_options_translations`
--
ALTER TABLE `contact_custom_field_options_translations`
  ADD PRIMARY KEY (`lang_code`,`contact_custom_field_options_id`);

--
-- Indexes for table `contact_replies`
--
ALTER TABLE `contact_replies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_countries_name` (`name`),
  ADD KEY `idx_countries_status` (`status`);

--
-- Indexes for table `countries_translations`
--
ALTER TABLE `countries_translations`
  ADD PRIMARY KEY (`lang_code`,`countries_id`),
  ADD KEY `idx_countries_trans_country_lang` (`countries_id`,`lang_code`),
  ADD KEY `idx_countries_trans_name` (`name`),
  ADD KEY `idx_countries_trans_countries_id` (`countries_id`);

--
-- Indexes for table `dashboard_widgets`
--
ALTER TABLE `dashboard_widgets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dashboard_widget_settings`
--
ALTER TABLE `dashboard_widget_settings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dashboard_widget_settings_user_id_index` (`user_id`),
  ADD KEY `dashboard_widget_settings_widget_id_index` (`widget_id`);

--
-- Indexes for table `device_tokens`
--
ALTER TABLE `device_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `device_tokens_token_unique` (`token`),
  ADD KEY `device_tokens_user_type_user_id_index` (`user_type`,`user_id`),
  ADD KEY `device_tokens_platform_is_active_index` (`platform`,`is_active`),
  ADD KEY `device_tokens_is_active_index` (`is_active`);

--
-- Indexes for table `ec_abandoned_carts`
--
ALTER TABLE `ec_abandoned_carts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ec_abandoned_carts_abandoned_at_is_recovered_index` (`abandoned_at`,`is_recovered`),
  ADD KEY `ec_abandoned_carts_created_at_is_recovered_index` (`created_at`,`is_recovered`),
  ADD KEY `ec_abandoned_carts_customer_id_index` (`customer_id`),
  ADD KEY `ec_abandoned_carts_session_id_index` (`session_id`),
  ADD KEY `ec_abandoned_carts_email_index` (`email`),
  ADD KEY `ec_abandoned_carts_recovered_order_id_index` (`recovered_order_id`);

--
-- Indexes for table `ec_brands`
--
ALTER TABLE `ec_brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_brands_translations`
--
ALTER TABLE `ec_brands_translations`
  ADD PRIMARY KEY (`lang_code`,`ec_brands_id`);

--
-- Indexes for table `ec_cart`
--
ALTER TABLE `ec_cart`
  ADD PRIMARY KEY (`identifier`,`instance`);

--
-- Indexes for table `ec_currencies`
--
ALTER TABLE `ec_currencies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_customers`
--
ALTER TABLE `ec_customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_customer_addresses`
--
ALTER TABLE `ec_customer_addresses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_customer_deletion_requests`
--
ALTER TABLE `ec_customer_deletion_requests`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ec_customer_deletion_requests_token_unique` (`token`);

--
-- Indexes for table `ec_customer_password_resets`
--
ALTER TABLE `ec_customer_password_resets`
  ADD KEY `ec_customer_password_resets_email_index` (`email`),
  ADD KEY `ec_customer_password_resets_token_index` (`token`);

--
-- Indexes for table `ec_customer_recently_viewed_products`
--
ALTER TABLE `ec_customer_recently_viewed_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_customer_used_coupons`
--
ALTER TABLE `ec_customer_used_coupons`
  ADD PRIMARY KEY (`discount_id`,`customer_id`);

--
-- Indexes for table `ec_discounts`
--
ALTER TABLE `ec_discounts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ec_discounts_code_unique` (`code`);

--
-- Indexes for table `ec_discount_customers`
--
ALTER TABLE `ec_discount_customers`
  ADD PRIMARY KEY (`discount_id`,`customer_id`);

--
-- Indexes for table `ec_discount_products`
--
ALTER TABLE `ec_discount_products`
  ADD PRIMARY KEY (`discount_id`,`product_id`);

--
-- Indexes for table `ec_discount_product_categories`
--
ALTER TABLE `ec_discount_product_categories`
  ADD PRIMARY KEY (`discount_id`,`product_category_id`);

--
-- Indexes for table `ec_discount_product_collections`
--
ALTER TABLE `ec_discount_product_collections`
  ADD PRIMARY KEY (`discount_id`,`product_collection_id`);

--
-- Indexes for table `ec_flash_sales`
--
ALTER TABLE `ec_flash_sales`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_flash_sales_translations`
--
ALTER TABLE `ec_flash_sales_translations`
  ADD PRIMARY KEY (`lang_code`,`ec_flash_sales_id`);

--
-- Indexes for table `ec_global_options`
--
ALTER TABLE `ec_global_options`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_global_options_translations`
--
ALTER TABLE `ec_global_options_translations`
  ADD PRIMARY KEY (`lang_code`,`ec_global_options_id`);

--
-- Indexes for table `ec_global_option_value`
--
ALTER TABLE `ec_global_option_value`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_global_option_value_translations`
--
ALTER TABLE `ec_global_option_value_translations`
  ADD PRIMARY KEY (`lang_code`,`ec_global_option_value_id`);

--
-- Indexes for table `ec_grouped_products`
--
ALTER TABLE `ec_grouped_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_invoices`
--
ALTER TABLE `ec_invoices`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ec_invoices_code_unique` (`code`),
  ADD KEY `ec_invoices_reference_type_reference_id_index` (`reference_type`,`reference_id`),
  ADD KEY `ec_invoices_payment_id_index` (`payment_id`),
  ADD KEY `ec_invoices_status_index` (`status`);

--
-- Indexes for table `ec_invoice_items`
--
ALTER TABLE `ec_invoice_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ec_invoice_items_reference_type_reference_id_index` (`reference_type`,`reference_id`);

--
-- Indexes for table `ec_options`
--
ALTER TABLE `ec_options`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_options_translations`
--
ALTER TABLE `ec_options_translations`
  ADD PRIMARY KEY (`lang_code`,`ec_options_id`);

--
-- Indexes for table `ec_option_value`
--
ALTER TABLE `ec_option_value`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_option_value_translations`
--
ALTER TABLE `ec_option_value_translations`
  ADD PRIMARY KEY (`lang_code`,`ec_option_value_id`);

--
-- Indexes for table `ec_orders`
--
ALTER TABLE `ec_orders`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ec_orders_code_unique` (`code`),
  ADD KEY `ec_orders_user_id_status_created_at_index` (`user_id`,`status`,`created_at`);

--
-- Indexes for table `ec_order_addresses`
--
ALTER TABLE `ec_order_addresses`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ec_order_addresses_order_id_type_unique` (`order_id`,`type`);

--
-- Indexes for table `ec_order_histories`
--
ALTER TABLE `ec_order_histories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_order_product`
--
ALTER TABLE `ec_order_product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_order_referrals`
--
ALTER TABLE `ec_order_referrals`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ec_order_referrals_order_id_index` (`order_id`);

--
-- Indexes for table `ec_order_returns`
--
ALTER TABLE `ec_order_returns`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ec_order_returns_code_unique` (`code`);

--
-- Indexes for table `ec_order_return_histories`
--
ALTER TABLE `ec_order_return_histories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_order_return_items`
--
ALTER TABLE `ec_order_return_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_order_tax_information`
--
ALTER TABLE `ec_order_tax_information`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ec_order_tax_information_order_id_index` (`order_id`);

--
-- Indexes for table `ec_products`
--
ALTER TABLE `ec_products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ec_products_brand_id_status_is_variation_created_at_index` (`brand_id`,`status`,`is_variation`,`created_at`),
  ADD KEY `sale_type_index` (`sale_type`),
  ADD KEY `start_date_index` (`start_date`),
  ADD KEY `end_date_index` (`end_date`),
  ADD KEY `sale_price_index` (`sale_price`),
  ADD KEY `is_variation_index` (`is_variation`),
  ADD KEY `ec_products_sku_index` (`sku`),
  ADD KEY `idx_products_export` (`id`,`is_variation`),
  ADD KEY `idx_variation_name_id` (`is_variation`,`name`,`id`),
  ADD KEY `ec_products_variations_count_index` (`variations_count`),
  ADD KEY `ec_products_slug_index` (`slug`),
  ADD KEY `idx_products_status_variation` (`status`,`is_variation`,`id`),
  ADD KEY `idx_products_price_sale` (`sale_type`,`sale_price`,`price`),
  ADD KEY `idx_products_order_created` (`order`,`created_at`),
  ADD KEY `idx_products_stock` (`with_storehouse_management`,`stock_status`,`quantity`),
  ADD KEY `ec_products_reviews_count_index` (`reviews_count`),
  ADD KEY `ec_products_reviews_avg_index` (`reviews_avg`);

--
-- Indexes for table `ec_products_translations`
--
ALTER TABLE `ec_products_translations`
  ADD PRIMARY KEY (`lang_code`,`ec_products_id`);

--
-- Indexes for table `ec_product_attributes`
--
ALTER TABLE `ec_product_attributes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `attribute_set_status_index` (`attribute_set_id`),
  ADD KEY `idx_attribute_set_id` (`attribute_set_id`),
  ADD KEY `idx_attribute_set_order_id` (`attribute_set_id`,`order`,`id`);

--
-- Indexes for table `ec_product_attributes_translations`
--
ALTER TABLE `ec_product_attributes_translations`
  ADD PRIMARY KEY (`lang_code`,`ec_product_attributes_id`);

--
-- Indexes for table `ec_product_attribute_sets`
--
ALTER TABLE `ec_product_attribute_sets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_order_id` (`order`,`id`);

--
-- Indexes for table `ec_product_attribute_sets_translations`
--
ALTER TABLE `ec_product_attribute_sets_translations`
  ADD PRIMARY KEY (`lang_code`,`ec_product_attribute_sets_id`);

--
-- Indexes for table `ec_product_categories`
--
ALTER TABLE `ec_product_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ec_product_categories_parent_id_status_created_at_index` (`parent_id`,`status`,`created_at`),
  ADD KEY `ec_product_categories_parent_id_status_index` (`parent_id`,`status`),
  ADD KEY `idx_categories_status_order` (`status`,`order`),
  ADD KEY `idx_categories_order` (`order`),
  ADD KEY `ec_product_categories_slug_index` (`slug`),
  ADD KEY `idx_ec_product_categories_status` (`status`),
  ADD KEY `idx_ec_product_categories_parent_id` (`parent_id`),
  ADD KEY `idx_ec_product_categories_status_parent_order` (`status`,`parent_id`,`order`),
  ADD KEY `idx_ec_product_categories_is_featured` (`is_featured`),
  ADD KEY `idx_ec_product_categories_name` (`name`),
  ADD KEY `idx_ec_product_categories_slug` (`slug`);

--
-- Indexes for table `ec_product_categories_translations`
--
ALTER TABLE `ec_product_categories_translations`
  ADD PRIMARY KEY (`lang_code`,`ec_product_categories_id`);

--
-- Indexes for table `ec_product_categorizables`
--
ALTER TABLE `ec_product_categorizables`
  ADD PRIMARY KEY (`category_id`,`reference_id`,`reference_type`),
  ADD KEY `ec_product_categorizables_category_id_index` (`category_id`),
  ADD KEY `ec_product_categorizables_reference_id_index` (`reference_id`),
  ADD KEY `ec_product_categorizables_reference_type_index` (`reference_type`);

--
-- Indexes for table `ec_product_category_product`
--
ALTER TABLE `ec_product_category_product`
  ADD PRIMARY KEY (`product_id`,`category_id`),
  ADD KEY `ec_product_category_product_category_id_index` (`category_id`),
  ADD KEY `ec_product_category_product_product_id_index` (`product_id`),
  ADD KEY `idx_product_category` (`product_id`,`category_id`);

--
-- Indexes for table `ec_product_collections`
--
ALTER TABLE `ec_product_collections`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_product_collections_translations`
--
ALTER TABLE `ec_product_collections_translations`
  ADD PRIMARY KEY (`lang_code`,`ec_product_collections_id`);

--
-- Indexes for table `ec_product_collection_products`
--
ALTER TABLE `ec_product_collection_products`
  ADD PRIMARY KEY (`product_id`,`product_collection_id`),
  ADD KEY `ec_product_collection_products_product_collection_id_index` (`product_collection_id`),
  ADD KEY `ec_product_collection_products_product_id_index` (`product_id`);

--
-- Indexes for table `ec_product_cross_sale_relations`
--
ALTER TABLE `ec_product_cross_sale_relations`
  ADD PRIMARY KEY (`from_product_id`,`to_product_id`),
  ADD KEY `ec_product_cross_sale_relations_from_product_id_index` (`from_product_id`),
  ADD KEY `ec_product_cross_sale_relations_to_product_id_index` (`to_product_id`),
  ADD KEY `idx_product_cross_sale` (`from_product_id`,`to_product_id`);

--
-- Indexes for table `ec_product_files`
--
ALTER TABLE `ec_product_files`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ec_product_files_product_id_index` (`product_id`);

--
-- Indexes for table `ec_product_labels`
--
ALTER TABLE `ec_product_labels`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_product_labels_translations`
--
ALTER TABLE `ec_product_labels_translations`
  ADD PRIMARY KEY (`lang_code`,`ec_product_labels_id`);

--
-- Indexes for table `ec_product_label_products`
--
ALTER TABLE `ec_product_label_products`
  ADD PRIMARY KEY (`product_label_id`,`product_id`),
  ADD KEY `ec_product_label_products_product_label_id_index` (`product_label_id`),
  ADD KEY `ec_product_label_products_product_id_index` (`product_id`);

--
-- Indexes for table `ec_product_license_codes`
--
ALTER TABLE `ec_product_license_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ec_product_license_codes_product_id_status_index` (`product_id`,`status`);

--
-- Indexes for table `ec_product_related_relations`
--
ALTER TABLE `ec_product_related_relations`
  ADD PRIMARY KEY (`from_product_id`,`to_product_id`),
  ADD KEY `ec_product_related_relations_from_product_id_index` (`from_product_id`),
  ADD KEY `ec_product_related_relations_to_product_id_index` (`to_product_id`);

--
-- Indexes for table `ec_product_specification_attribute`
--
ALTER TABLE `ec_product_specification_attribute`
  ADD PRIMARY KEY (`product_id`,`attribute_id`);

--
-- Indexes for table `ec_product_specification_attribute_translations`
--
ALTER TABLE `ec_product_specification_attribute_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `psat_unique` (`product_id`,`attribute_id`,`lang_code`),
  ADD KEY `psat_product_attribute_index` (`product_id`,`attribute_id`),
  ADD KEY `psat_product_id_index` (`product_id`),
  ADD KEY `psat_attribute_id_index` (`attribute_id`);

--
-- Indexes for table `ec_product_tags`
--
ALTER TABLE `ec_product_tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_product_tags_translations`
--
ALTER TABLE `ec_product_tags_translations`
  ADD PRIMARY KEY (`lang_code`,`ec_product_tags_id`);

--
-- Indexes for table `ec_product_tag_product`
--
ALTER TABLE `ec_product_tag_product`
  ADD PRIMARY KEY (`product_id`,`tag_id`),
  ADD KEY `ec_product_tag_product_product_id_index` (`product_id`),
  ADD KEY `ec_product_tag_product_tag_id_index` (`tag_id`);

--
-- Indexes for table `ec_product_up_sale_relations`
--
ALTER TABLE `ec_product_up_sale_relations`
  ADD PRIMARY KEY (`from_product_id`,`to_product_id`),
  ADD KEY `ec_product_up_sale_relations_from_product_id_index` (`from_product_id`),
  ADD KEY `ec_product_up_sale_relations_to_product_id_index` (`to_product_id`);

--
-- Indexes for table `ec_product_variations`
--
ALTER TABLE `ec_product_variations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ec_product_variations_product_id_configurable_product_id_unique` (`product_id`,`configurable_product_id`),
  ADD KEY `configurable_product_index` (`product_id`,`configurable_product_id`),
  ADD KEY `idx_configurable_product_id` (`configurable_product_id`),
  ADD KEY `idx_product_variations_config` (`configurable_product_id`,`is_default`);

--
-- Indexes for table `ec_product_variation_items`
--
ALTER TABLE `ec_product_variation_items`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ec_product_variation_items_attribute_id_variation_id_unique` (`attribute_id`,`variation_id`),
  ADD KEY `attribute_variation_index` (`attribute_id`,`variation_id`),
  ADD KEY `idx_variation_id` (`variation_id`),
  ADD KEY `idx_variation_attribute_covering` (`variation_id`,`attribute_id`);

--
-- Indexes for table `ec_product_views`
--
ALTER TABLE `ec_product_views`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ec_product_views_product_id_date_unique` (`product_id`,`date`),
  ADD KEY `ec_product_views_product_id_index` (`product_id`);

--
-- Indexes for table `ec_product_with_attribute_set`
--
ALTER TABLE `ec_product_with_attribute_set`
  ADD PRIMARY KEY (`product_id`,`attribute_set_id`);

--
-- Indexes for table `ec_reviews`
--
ALTER TABLE `ec_reviews`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ec_reviews_product_id_customer_id_unique` (`product_id`,`customer_id`),
  ADD KEY `ec_reviews_product_id_customer_id_status_created_at_index` (`product_id`,`customer_id`,`status`,`created_at`),
  ADD KEY `review_relation_index` (`product_id`,`customer_id`,`status`);

--
-- Indexes for table `ec_review_replies`
--
ALTER TABLE `ec_review_replies`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ec_review_replies_review_id_user_id_unique` (`review_id`,`user_id`);

--
-- Indexes for table `ec_shared_wishlists`
--
ALTER TABLE `ec_shared_wishlists`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ec_shared_wishlists_code_unique` (`code`);

--
-- Indexes for table `ec_shipments`
--
ALTER TABLE `ec_shipments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_shipment_histories`
--
ALTER TABLE `ec_shipment_histories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_shipping`
--
ALTER TABLE `ec_shipping`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_shipping_rules`
--
ALTER TABLE `ec_shipping_rules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_shipping_rule_items`
--
ALTER TABLE `ec_shipping_rule_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_specification_attributes`
--
ALTER TABLE `ec_specification_attributes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ec_specification_attributes_author_type_author_id_index` (`author_type`,`author_id`);

--
-- Indexes for table `ec_specification_attributes_translations`
--
ALTER TABLE `ec_specification_attributes_translations`
  ADD PRIMARY KEY (`lang_code`,`ec_specification_attributes_id`);

--
-- Indexes for table `ec_specification_groups`
--
ALTER TABLE `ec_specification_groups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ec_specification_groups_author_type_author_id_index` (`author_type`,`author_id`);

--
-- Indexes for table `ec_specification_groups_translations`
--
ALTER TABLE `ec_specification_groups_translations`
  ADD PRIMARY KEY (`lang_code`,`ec_specification_groups_id`);

--
-- Indexes for table `ec_specification_tables`
--
ALTER TABLE `ec_specification_tables`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ec_specification_tables_author_type_author_id_index` (`author_type`,`author_id`);

--
-- Indexes for table `ec_specification_tables_translations`
--
ALTER TABLE `ec_specification_tables_translations`
  ADD PRIMARY KEY (`lang_code`,`ec_specification_tables_id`);

--
-- Indexes for table `ec_specification_table_group`
--
ALTER TABLE `ec_specification_table_group`
  ADD PRIMARY KEY (`table_id`,`group_id`);

--
-- Indexes for table `ec_store_locators`
--
ALTER TABLE `ec_store_locators`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_taxes`
--
ALTER TABLE `ec_taxes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_taxes_translations`
--
ALTER TABLE `ec_taxes_translations`
  ADD PRIMARY KEY (`lang_code`,`ec_taxes_id`);

--
-- Indexes for table `ec_tax_products`
--
ALTER TABLE `ec_tax_products`
  ADD PRIMARY KEY (`product_id`,`tax_id`),
  ADD KEY `ec_tax_products_tax_id_index` (`tax_id`),
  ADD KEY `ec_tax_products_product_id_index` (`product_id`);

--
-- Indexes for table `ec_tax_rules`
--
ALTER TABLE `ec_tax_rules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_wish_lists`
--
ALTER TABLE `ec_wish_lists`
  ADD PRIMARY KEY (`customer_id`,`product_id`),
  ADD KEY `wishlist_relation_index` (`product_id`,`customer_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faqs_translations`
--
ALTER TABLE `faqs_translations`
  ADD PRIMARY KEY (`lang_code`,`faqs_id`);

--
-- Indexes for table `faq_categories`
--
ALTER TABLE `faq_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faq_categories_translations`
--
ALTER TABLE `faq_categories_translations`
  ADD PRIMARY KEY (`lang_code`,`faq_categories_id`);

--
-- Indexes for table `galleries`
--
ALTER TABLE `galleries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `galleries_user_id_index` (`user_id`);

--
-- Indexes for table `galleries_translations`
--
ALTER TABLE `galleries_translations`
  ADD PRIMARY KEY (`lang_code`,`galleries_id`);

--
-- Indexes for table `gallery_meta`
--
ALTER TABLE `gallery_meta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `gallery_meta_reference_id_index` (`reference_id`);

--
-- Indexes for table `gallery_meta_translations`
--
ALTER TABLE `gallery_meta_translations`
  ADD PRIMARY KEY (`lang_code`,`gallery_meta_id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`lang_id`),
  ADD KEY `lang_locale_index` (`lang_locale`),
  ADD KEY `lang_code_index` (`lang_code`),
  ADD KEY `lang_is_default_index` (`lang_is_default`);

--
-- Indexes for table `language_meta`
--
ALTER TABLE `language_meta`
  ADD PRIMARY KEY (`lang_meta_id`),
  ADD KEY `language_meta_reference_id_index` (`reference_id`),
  ADD KEY `meta_code_index` (`lang_meta_code`),
  ADD KEY `meta_origin_index` (`lang_meta_origin`),
  ADD KEY `meta_reference_type_index` (`reference_type`);

--
-- Indexes for table `media_files`
--
ALTER TABLE `media_files`
  ADD PRIMARY KEY (`id`),
  ADD KEY `media_files_user_id_index` (`user_id`),
  ADD KEY `media_files_index` (`folder_id`,`user_id`,`created_at`);

--
-- Indexes for table `media_folders`
--
ALTER TABLE `media_folders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `media_folders_user_id_index` (`user_id`),
  ADD KEY `media_folders_index` (`parent_id`,`user_id`,`created_at`);

--
-- Indexes for table `media_settings`
--
ALTER TABLE `media_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_slug_unique` (`slug`);

--
-- Indexes for table `menu_locations`
--
ALTER TABLE `menu_locations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_locations_menu_id_created_at_index` (`menu_id`,`created_at`);

--
-- Indexes for table `menu_nodes`
--
ALTER TABLE `menu_nodes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_nodes_menu_id_index` (`menu_id`),
  ADD KEY `menu_nodes_parent_id_index` (`parent_id`),
  ADD KEY `reference_id` (`reference_id`),
  ADD KEY `reference_type` (`reference_type`);

--
-- Indexes for table `meta_boxes`
--
ALTER TABLE `meta_boxes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `meta_boxes_reference_id_index` (`reference_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `newsletters`
--
ALTER TABLE `newsletters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pages_user_id_index` (`user_id`);

--
-- Indexes for table `pages_translations`
--
ALTER TABLE `pages_translations`
  ADD PRIMARY KEY (`lang_code`,`pages_id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment_logs`
--
ALTER TABLE `payment_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `posts_status_index` (`status`),
  ADD KEY `posts_author_id_index` (`author_id`),
  ADD KEY `posts_author_type_index` (`author_type`),
  ADD KEY `posts_created_at_index` (`created_at`);

--
-- Indexes for table `posts_translations`
--
ALTER TABLE `posts_translations`
  ADD PRIMARY KEY (`lang_code`,`posts_id`);

--
-- Indexes for table `post_categories`
--
ALTER TABLE `post_categories`
  ADD KEY `post_categories_category_id_index` (`category_id`),
  ADD KEY `post_categories_post_id_index` (`post_id`);

--
-- Indexes for table `post_tags`
--
ALTER TABLE `post_tags`
  ADD KEY `post_tags_tag_id_index` (`tag_id`),
  ADD KEY `post_tags_post_id_index` (`post_id`);

--
-- Indexes for table `push_notifications`
--
ALTER TABLE `push_notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `push_notifications_type_created_at_index` (`type`,`created_at`),
  ADD KEY `push_notifications_status_scheduled_at_index` (`status`,`scheduled_at`),
  ADD KEY `push_notifications_created_by_index` (`created_by`);

--
-- Indexes for table `push_notification_recipients`
--
ALTER TABLE `push_notification_recipients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pnr_notification_user_index` (`push_notification_id`,`user_type`,`user_id`),
  ADD KEY `pnr_user_status_index` (`user_type`,`user_id`,`status`),
  ADD KEY `pnr_user_read_index` (`user_type`,`user_id`,`read_at`),
  ADD KEY `pnr_status_index` (`status`);

--
-- Indexes for table `revisions`
--
ALTER TABLE `revisions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `revisions_revisionable_id_revisionable_type_index` (`revisionable_id`,`revisionable_type`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_slug_unique` (`slug`),
  ADD KEY `roles_created_by_index` (`created_by`),
  ADD KEY `roles_updated_by_index` (`updated_by`);

--
-- Indexes for table `role_users`
--
ALTER TABLE `role_users`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `role_users_user_id_index` (`user_id`),
  ADD KEY `role_users_role_id_index` (`role_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Indexes for table `simple_sliders`
--
ALTER TABLE `simple_sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `simple_slider_items`
--
ALTER TABLE `simple_slider_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `slugs`
--
ALTER TABLE `slugs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `slugs_reference_id_index` (`reference_id`),
  ADD KEY `slugs_key_index` (`key`),
  ADD KEY `slugs_prefix_index` (`prefix`),
  ADD KEY `slugs_reference_index` (`reference_id`,`reference_type`),
  ADD KEY `idx_slugs_reference` (`reference_type`,`reference_id`);

--
-- Indexes for table `slugs_translations`
--
ALTER TABLE `slugs_translations`
  ADD PRIMARY KEY (`lang_code`,`slugs_id`);

--
-- Indexes for table `social_logins`
--
ALTER TABLE `social_logins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `social_logins_provider_provider_id_unique` (`provider`,`provider_id`),
  ADD KEY `social_logins_user_type_user_id_index` (`user_type`,`user_id`),
  ADD KEY `social_logins_user_id_user_type_index` (`user_id`,`user_type`);

--
-- Indexes for table `states`
--
ALTER TABLE `states`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `states_slug_unique` (`slug`),
  ADD KEY `idx_states_name` (`name`),
  ADD KEY `idx_states_status` (`status`),
  ADD KEY `idx_states_country_id` (`country_id`);

--
-- Indexes for table `states_translations`
--
ALTER TABLE `states_translations`
  ADD PRIMARY KEY (`lang_code`,`states_id`),
  ADD KEY `idx_states_trans_state_lang` (`states_id`,`lang_code`),
  ADD KEY `idx_states_trans_name` (`name`),
  ADD KEY `idx_states_trans_states_id` (`states_id`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tags_translations`
--
ALTER TABLE `tags_translations`
  ADD PRIMARY KEY (`lang_code`,`tags_id`);

--
-- Indexes for table `teams`
--
ALTER TABLE `teams`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teams_translations`
--
ALTER TABLE `teams_translations`
  ADD PRIMARY KEY (`lang_code`,`teams_id`);

--
-- Indexes for table `testimonials`
--
ALTER TABLE `testimonials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `testimonials_translations`
--
ALTER TABLE `testimonials_translations`
  ADD PRIMARY KEY (`lang_code`,`testimonials_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_username_unique` (`username`);

--
-- Indexes for table `user_meta`
--
ALTER TABLE `user_meta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_meta_user_id_index` (`user_id`);

--
-- Indexes for table `user_settings`
--
ALTER TABLE `user_settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_settings_user_type_user_id_key_unique` (`user_type`,`user_id`,`key`),
  ADD KEY `user_settings_user_type_user_id_index` (`user_type`,`user_id`),
  ADD KEY `user_settings_key_index` (`key`);

--
-- Indexes for table `widgets`
--
ALTER TABLE `widgets`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activations`
--
ALTER TABLE `activations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `admin_notifications`
--
ALTER TABLE `admin_notifications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `ads`
--
ALTER TABLE `ads`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `announcements`
--
ALTER TABLE `announcements`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `audit_histories`
--
ALTER TABLE `audit_histories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1196;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `contact_custom_fields`
--
ALTER TABLE `contact_custom_fields`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `contact_custom_field_options`
--
ALTER TABLE `contact_custom_field_options`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contact_replies`
--
ALTER TABLE `contact_replies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dashboard_widgets`
--
ALTER TABLE `dashboard_widgets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `dashboard_widget_settings`
--
ALTER TABLE `dashboard_widget_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `device_tokens`
--
ALTER TABLE `device_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ec_abandoned_carts`
--
ALTER TABLE `ec_abandoned_carts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ec_brands`
--
ALTER TABLE `ec_brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `ec_currencies`
--
ALTER TABLE `ec_currencies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `ec_customers`
--
ALTER TABLE `ec_customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `ec_customer_addresses`
--
ALTER TABLE `ec_customer_addresses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `ec_customer_deletion_requests`
--
ALTER TABLE `ec_customer_deletion_requests`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ec_customer_recently_viewed_products`
--
ALTER TABLE `ec_customer_recently_viewed_products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `ec_discounts`
--
ALTER TABLE `ec_discounts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `ec_flash_sales`
--
ALTER TABLE `ec_flash_sales`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `ec_global_options`
--
ALTER TABLE `ec_global_options`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `ec_global_option_value`
--
ALTER TABLE `ec_global_option_value`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `ec_grouped_products`
--
ALTER TABLE `ec_grouped_products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ec_invoices`
--
ALTER TABLE `ec_invoices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `ec_invoice_items`
--
ALTER TABLE `ec_invoice_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `ec_options`
--
ALTER TABLE `ec_options`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ec_option_value`
--
ALTER TABLE `ec_option_value`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ec_orders`
--
ALTER TABLE `ec_orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `ec_order_addresses`
--
ALTER TABLE `ec_order_addresses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `ec_order_histories`
--
ALTER TABLE `ec_order_histories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `ec_order_product`
--
ALTER TABLE `ec_order_product`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `ec_order_referrals`
--
ALTER TABLE `ec_order_referrals`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `ec_order_returns`
--
ALTER TABLE `ec_order_returns`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ec_order_return_histories`
--
ALTER TABLE `ec_order_return_histories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ec_order_return_items`
--
ALTER TABLE `ec_order_return_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ec_order_tax_information`
--
ALTER TABLE `ec_order_tax_information`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `ec_products`
--
ALTER TABLE `ec_products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=379;

--
-- AUTO_INCREMENT for table `ec_product_attributes`
--
ALTER TABLE `ec_product_attributes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `ec_product_attribute_sets`
--
ALTER TABLE `ec_product_attribute_sets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `ec_product_categories`
--
ALTER TABLE `ec_product_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `ec_product_collections`
--
ALTER TABLE `ec_product_collections`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `ec_product_files`
--
ALTER TABLE `ec_product_files`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=468;

--
-- AUTO_INCREMENT for table `ec_product_labels`
--
ALTER TABLE `ec_product_labels`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `ec_product_license_codes`
--
ALTER TABLE `ec_product_license_codes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ec_product_specification_attribute_translations`
--
ALTER TABLE `ec_product_specification_attribute_translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ec_product_tags`
--
ALTER TABLE `ec_product_tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `ec_product_variations`
--
ALTER TABLE `ec_product_variations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=189;

--
-- AUTO_INCREMENT for table `ec_product_variation_items`
--
ALTER TABLE `ec_product_variation_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=377;

--
-- AUTO_INCREMENT for table `ec_product_views`
--
ALTER TABLE `ec_product_views`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=222;

--
-- AUTO_INCREMENT for table `ec_reviews`
--
ALTER TABLE `ec_reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1001;

--
-- AUTO_INCREMENT for table `ec_review_replies`
--
ALTER TABLE `ec_review_replies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ec_shared_wishlists`
--
ALTER TABLE `ec_shared_wishlists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `ec_shipments`
--
ALTER TABLE `ec_shipments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `ec_shipment_histories`
--
ALTER TABLE `ec_shipment_histories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `ec_shipping`
--
ALTER TABLE `ec_shipping`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ec_shipping_rules`
--
ALTER TABLE `ec_shipping_rules`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `ec_shipping_rule_items`
--
ALTER TABLE `ec_shipping_rule_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ec_specification_attributes`
--
ALTER TABLE `ec_specification_attributes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `ec_specification_groups`
--
ALTER TABLE `ec_specification_groups`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `ec_specification_tables`
--
ALTER TABLE `ec_specification_tables`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `ec_store_locators`
--
ALTER TABLE `ec_store_locators`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ec_taxes`
--
ALTER TABLE `ec_taxes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `ec_tax_rules`
--
ALTER TABLE `ec_tax_rules`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `faq_categories`
--
ALTER TABLE `faq_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `galleries`
--
ALTER TABLE `galleries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `gallery_meta`
--
ALTER TABLE `gallery_meta`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `lang_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `language_meta`
--
ALTER TABLE `language_meta`
  MODIFY `lang_meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `media_files`
--
ALTER TABLE `media_files`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=178;

--
-- AUTO_INCREMENT for table `media_folders`
--
ALTER TABLE `media_folders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `media_settings`
--
ALTER TABLE `media_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `menu_locations`
--
ALTER TABLE `menu_locations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `menu_nodes`
--
ALTER TABLE `menu_nodes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `meta_boxes`
--
ALTER TABLE `meta_boxes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=239;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=261;

--
-- AUTO_INCREMENT for table `newsletters`
--
ALTER TABLE `newsletters`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `payment_logs`
--
ALTER TABLE `payment_logs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `push_notifications`
--
ALTER TABLE `push_notifications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `push_notification_recipients`
--
ALTER TABLE `push_notification_recipients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `revisions`
--
ALTER TABLE `revisions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=212;

--
-- AUTO_INCREMENT for table `simple_sliders`
--
ALTER TABLE `simple_sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `simple_slider_items`
--
ALTER TABLE `simple_slider_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `slugs`
--
ALTER TABLE `slugs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=469;

--
-- AUTO_INCREMENT for table `social_logins`
--
ALTER TABLE `social_logins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `states`
--
ALTER TABLE `states`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `teams`
--
ALTER TABLE `teams`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `testimonials`
--
ALTER TABLE `testimonials`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `user_meta`
--
ALTER TABLE `user_meta`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `user_settings`
--
ALTER TABLE `user_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `widgets`
--
ALTER TABLE `widgets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
