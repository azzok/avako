-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jul 15, 2025 at 01:20 PM
-- Server version: 9.3.0
-- PHP Version: 8.3.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `avako`
--

-- --------------------------------------------------------

--
-- Table structure for table `activations`
--

CREATE TABLE `activations` (
  `id` int UNSIGNED NOT NULL,
  `user_id` int UNSIGNED NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `completed` tinyint(1) NOT NULL DEFAULT '0',
  `completed_at` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `activations`
--

INSERT INTO `activations` (`id`, `user_id`, `code`, `completed`, `completed_at`, `created_at`, `updated_at`) VALUES
(1, 1, 'pelJffXiT7BfZ7GBmmiKrkG7g4mVX4bE', 1, '2025-06-29 06:54:28', '2025-06-29 01:24:28', '2025-06-29 01:24:28'),
(2, 2, 'JAOfg4mrwtOnFblETZPYJEpmDyedL3ea', 1, '2025-06-29 06:58:19', '2025-06-29 01:28:19', '2025-06-29 01:28:19');

-- --------------------------------------------------------

--
-- Table structure for table `addresses`
--

CREATE TABLE `addresses` (
  `id` int UNSIGNED NOT NULL,
  `customer_id` int UNSIGNED NOT NULL,
  `first_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address_1` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address_2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zip` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `addresses`
--

INSERT INTO `addresses` (`id`, `customer_id`, `first_name`, `last_name`, `address_1`, `address_2`, `city`, `state`, `zip`, `country`, `created_at`, `updated_at`) VALUES
(1, 2, 'Ashok', 'Kumar', 'Test', 'Test', 'Chennai', 'TN', '600044', 'IN', '2025-06-30 17:05:00', '2025-06-30 17:05:00');

-- --------------------------------------------------------

--
-- Table structure for table `attributes`
--

CREATE TABLE `attributes` (
  `id` int UNSIGNED NOT NULL,
  `attribute_set_id` int UNSIGNED NOT NULL,
  `is_filterable` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `attribute_categories`
--

CREATE TABLE `attribute_categories` (
  `attribute_id` int UNSIGNED NOT NULL,
  `category_id` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `attribute_sets`
--

CREATE TABLE `attribute_sets` (
  `id` int UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `attribute_set_translations`
--

CREATE TABLE `attribute_set_translations` (
  `id` int UNSIGNED NOT NULL,
  `attribute_set_id` int UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `attribute_translations`
--

CREATE TABLE `attribute_translations` (
  `id` int UNSIGNED NOT NULL,
  `attribute_id` int UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `attribute_values`
--

CREATE TABLE `attribute_values` (
  `id` int UNSIGNED NOT NULL,
  `attribute_id` int UNSIGNED NOT NULL,
  `position` int UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `attribute_value_translations`
--

CREATE TABLE `attribute_value_translations` (
  `id` int UNSIGNED NOT NULL,
  `attribute_value_id` int UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `blog_categories`
--

CREATE TABLE `blog_categories` (
  `id` bigint UNSIGNED NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `blog_category_translations`
--

CREATE TABLE `blog_category_translations` (
  `id` int UNSIGNED NOT NULL,
  `blog_category_id` bigint UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `blog_posts`
--

CREATE TABLE `blog_posts` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` int UNSIGNED NOT NULL,
  `blog_category_id` bigint UNSIGNED DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `publish_status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `blog_post_blog_tag`
--

CREATE TABLE `blog_post_blog_tag` (
  `blog_post_id` bigint UNSIGNED NOT NULL,
  `blog_tag_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `blog_post_translations`
--

CREATE TABLE `blog_post_translations` (
  `id` int UNSIGNED NOT NULL,
  `blog_post_id` bigint UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `blog_tags`
--

CREATE TABLE `blog_tags` (
  `id` bigint UNSIGNED NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `blog_tag_translations`
--

CREATE TABLE `blog_tag_translations` (
  `id` int UNSIGNED NOT NULL,
  `blog_tag_id` bigint UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` int UNSIGNED NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `brand_translations`
--

CREATE TABLE `brand_translations` (
  `id` int UNSIGNED NOT NULL,
  `brand_id` int NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brand_translations`
--

INSERT INTO `brand_translations` (`id`, `brand_id`, `locale`, `name`) VALUES
(1, 1, 'en', 'LG'),
(2, 2, 'en', 'Apple');

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `data` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `carts`
--

INSERT INTO `carts` (`id`, `data`, `created_at`, `updated_at`) VALUES
('4Lfyvo5c0kcnY8pLHJ0LjcmPZU29emY3FNS71CT3_cart_conditions', 'O:41:\"Darryldecode\\Cart\\CartConditionCollection\":2:{s:8:\"\0*\0items\";a:1:{s:13:\"Free Shipping\";O:26:\"Modules\\Cart\\CartCondition\":2:{s:37:\"\0Darryldecode\\Cart\\CartCondition\0args\";a:6:{s:4:\"name\";s:13:\"Free Shipping\";s:4:\"type\";s:15:\"shipping_method\";s:6:\"target\";s:5:\"total\";s:5:\"value\";i:0;s:5:\"order\";i:1;s:10:\"attributes\";a:1:{s:15:\"shipping_method\";O:23:\"Modules\\Shipping\\Method\":3:{s:4:\"name\";s:13:\"free_shipping\";s:5:\"label\";s:13:\"Free Shipping\";s:4:\"cost\";O:21:\"Modules\\Support\\Money\":2:{s:29:\"\0Modules\\Support\\Money\0amount\";i:0;s:31:\"\0Modules\\Support\\Money\0currency\";s:3:\"INR\";}}}}s:14:\"parsedRawValue\";N;}}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2025-07-10 23:38:35', '2025-07-11 01:33:17');
INSERT INTO `carts` (`id`, `data`, `created_at`, `updated_at`) VALUES
('4Lfyvo5c0kcnY8pLHJ0LjcmPZU29emY3FNS71CT3_cart_items', 'O:32:\"Darryldecode\\Cart\\CartCollection\":2:{s:8:\"\0*\0items\";a:1:{s:32:\"aedb90608a4a770478833197a0fa8f8f\";O:32:\"Darryldecode\\Cart\\ItemCollection\":3:{s:8:\"\0*\0items\";a:6:{s:2:\"id\";s:32:\"aedb90608a4a770478833197a0fa8f8f\";s:4:\"name\";s:88:\"Hill Black Pepper | மிளகு | Kali Mirch – Organic and Natural Pepper -Premium\";s:5:\"price\";d:175;s:8:\"quantity\";i:1;s:10:\"attributes\";O:41:\"Darryldecode\\Cart\\ItemAttributeCollection\":2:{s:8:\"\0*\0items\";a:6:{s:7:\"product\";O:32:\"Modules\\Product\\Entities\\Product\":35:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"products\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:1:{i:0;s:12:\"translations\";}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:22:{s:2:\"id\";i:15;s:8:\"brand_id\";N;s:12:\"tax_class_id\";N;s:4:\"slug\";s:63:\"hill-black-pepper-kali-mirch-organic-and-natural-pepper-premium\";s:5:\"price\";N;s:13:\"special_price\";N;s:18:\"special_price_type\";s:5:\"fixed\";s:19:\"special_price_start\";N;s:17:\"special_price_end\";N;s:13:\"selling_price\";N;s:3:\"sku\";N;s:12:\"manage_stock\";i:0;s:3:\"qty\";N;s:8:\"in_stock\";i:1;s:6:\"viewed\";i:3;s:9:\"is_active\";i:1;s:8:\"new_from\";N;s:6:\"new_to\";N;s:10:\"deleted_at\";N;s:10:\"created_at\";s:19:\"2025-07-03 02:45:00\";s:10:\"updated_at\";s:19:\"2025-07-09 21:49:13\";s:10:\"is_virtual\";i:0;}s:11:\"\0*\0original\";a:22:{s:2:\"id\";i:15;s:8:\"brand_id\";N;s:12:\"tax_class_id\";N;s:4:\"slug\";s:63:\"hill-black-pepper-kali-mirch-organic-and-natural-pepper-premium\";s:5:\"price\";N;s:13:\"special_price\";N;s:18:\"special_price_type\";s:5:\"fixed\";s:19:\"special_price_start\";N;s:17:\"special_price_end\";N;s:13:\"selling_price\";N;s:3:\"sku\";N;s:12:\"manage_stock\";i:0;s:3:\"qty\";N;s:8:\"in_stock\";i:1;s:6:\"viewed\";i:3;s:9:\"is_active\";i:1;s:8:\"new_from\";N;s:6:\"new_to\";N;s:10:\"deleted_at\";N;s:10:\"created_at\";s:19:\"2025-07-03 02:45:00\";s:10:\"updated_at\";s:19:\"2025-07-09 21:49:13\";s:10:\"is_virtual\";i:0;}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:9:{s:10:\"is_virtual\";s:7:\"boolean\";s:9:\"is_active\";s:7:\"boolean\";s:19:\"special_price_start\";s:8:\"datetime\";s:17:\"special_price_end\";s:8:\"datetime\";s:8:\"new_from\";s:8:\"datetime\";s:6:\"new_to\";s:8:\"datetime\";s:10:\"start_date\";s:8:\"datetime\";s:8:\"end_date\";s:8:\"datetime\";s:10:\"deleted_at\";s:8:\"datetime\";}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:13:{i:0;s:10:\"base_image\";i:1;s:17:\"additional_images\";i:2;s:5:\"media\";i:3;s:15:\"formatted_price\";i:4;s:21:\"formatted_price_range\";i:5;s:28:\"has_percentage_special_price\";i:6;s:21:\"special_price_percent\";i:7;s:14:\"rating_percent\";i:8;s:17:\"does_manage_stock\";i:9;s:11:\"is_in_stock\";i:10;s:15:\"is_out_of_stock\";i:11;s:6:\"is_new\";i:12;s:7:\"variant\";}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:4:{s:12:\"translations\";O:39:\"Illuminate\\Database\\Eloquent\\Collection\":2:{s:8:\"\0*\0items\";a:1:{i:0;O:43:\"Modules\\Product\\Entities\\ProductTranslation\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:20:\"product_translations\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:6:{s:2:\"id\";i:15;s:10:\"product_id\";i:15;s:6:\"locale\";s:2:\"en\";s:4:\"name\";s:88:\"Hill Black Pepper | மிளகு | Kali Mirch – Organic and Natural Pepper -Premium\";s:11:\"description\";s:968:\"<p><strong>HEALTH BENEFITS OF BLACKPEPPER</strong></p>\n<ul>\n<li>Prevent Any Sort of Cancer</li>\n<li>Good for Digestion</li>\n<li>Prevent Constipation</li>\n<li>Treat Skin Problems</li>\n<li>Good for Your Hair</li>\n<li>Helps in Treating Respiratory Diseases</li>\n</ul>\n<table>\n<tbody>\n<tr>\n<td width=\"157\"><strong>BRAND</strong></td>\n<td width=\"246\">AVAKO.IN</td>\n</tr>\n<tr>\n<td width=\"157\"><strong>VARIETY</strong></td>\n<td width=\"246\">ORIGINAL&nbsp; PURE BLACK PEPPER |</td>\n</tr>\n<tr>\n<td width=\"157\"><strong>ITEM FORM</strong></td>\n<td width=\"246\">SEED</td>\n</tr>\n<tr>\n<td width=\"157\"><strong>COUNTRY OF ORIGIN</strong></td>\n<td width=\"246\">INDIA</td>\n</tr>\n<tr>\n<td width=\"157\"><strong>DIET TYPE</strong></td>\n<td width=\"246\">VEGETARIAN</td>\n</tr>\n<tr>\n<td width=\"157\"><strong>ITEM WEIGHT</strong></td>\n<td width=\"246\">150g, 200g, 300g</td>\n</tr>\n<tr>\n<td width=\"157\"><strong>SPECIALITY</strong></td>\n<td width=\"246\">NATURAL &amp; ORGANIC</td>\n</tr>\n</tbody>\n</table>\";s:17:\"short_description\";s:1443:\"Hill Black pepper is Organically produced from the pepper Plant which cultivated in the mountainous region of the western Ghats especially in Kodaikanal Hills\n\nOur avako.in hill Black pepper are selectively handpicked by our farmers\nWe are preparing our avako.in hill Black pepper by farmers old traditional method as follows\nNO ARTIFICIAL COLOURS AND PRESERVATIVES\n\nWe are using Preservative free Products those that do not contain any kind of artificial ingredients\nThey reduce the risks or exposure to side effects mentioned above and usually have a fresher compared to those containing chemical preservative\nBlack pepper is packed full of healthy nutrients for the body. The regular consumption of this spice will help achieve a glowing complexion and happy skin. It can also be used as an exfoliator added to honey or yogurt; Black pepper acts as an anti-inflammatory which helps to reduce arthritis, improve digestion\nBlack pepper is a rich source of minerals like manganese, copper, magnesium, calcium, phosphorus, iron, potassium, and vitamin c, vitamin k and vitamin B6.\nBlack pepper has a high content of dietary fiber and has a moderate amount of protein and carbohydrates too.\nBlack pepper recipes\n\nBlack pepper can be used in many dishes as this adds an aroma and a taste that can leave you craving for it all day. We also Have Black Pepper Powder Alsohttps://www.avako.in/product/avako-hilly-original-organic-pepper-powder-50gms/\";}s:11:\"\0*\0original\";a:6:{s:2:\"id\";i:15;s:10:\"product_id\";i:15;s:6:\"locale\";s:2:\"en\";s:4:\"name\";s:88:\"Hill Black Pepper | மிளகு | Kali Mirch – Organic and Natural Pepper -Premium\";s:11:\"description\";s:968:\"<p><strong>HEALTH BENEFITS OF BLACKPEPPER</strong></p>\n<ul>\n<li>Prevent Any Sort of Cancer</li>\n<li>Good for Digestion</li>\n<li>Prevent Constipation</li>\n<li>Treat Skin Problems</li>\n<li>Good for Your Hair</li>\n<li>Helps in Treating Respiratory Diseases</li>\n</ul>\n<table>\n<tbody>\n<tr>\n<td width=\"157\"><strong>BRAND</strong></td>\n<td width=\"246\">AVAKO.IN</td>\n</tr>\n<tr>\n<td width=\"157\"><strong>VARIETY</strong></td>\n<td width=\"246\">ORIGINAL&nbsp; PURE BLACK PEPPER |</td>\n</tr>\n<tr>\n<td width=\"157\"><strong>ITEM FORM</strong></td>\n<td width=\"246\">SEED</td>\n</tr>\n<tr>\n<td width=\"157\"><strong>COUNTRY OF ORIGIN</strong></td>\n<td width=\"246\">INDIA</td>\n</tr>\n<tr>\n<td width=\"157\"><strong>DIET TYPE</strong></td>\n<td width=\"246\">VEGETARIAN</td>\n</tr>\n<tr>\n<td width=\"157\"><strong>ITEM WEIGHT</strong></td>\n<td width=\"246\">150g, 200g, 300g</td>\n</tr>\n<tr>\n<td width=\"157\"><strong>SPECIALITY</strong></td>\n<td width=\"246\">NATURAL &amp; ORGANIC</td>\n</tr>\n</tbody>\n</table>\";s:17:\"short_description\";s:1443:\"Hill Black pepper is Organically produced from the pepper Plant which cultivated in the mountainous region of the western Ghats especially in Kodaikanal Hills\n\nOur avako.in hill Black pepper are selectively handpicked by our farmers\nWe are preparing our avako.in hill Black pepper by farmers old traditional method as follows\nNO ARTIFICIAL COLOURS AND PRESERVATIVES\n\nWe are using Preservative free Products those that do not contain any kind of artificial ingredients\nThey reduce the risks or exposure to side effects mentioned above and usually have a fresher compared to those containing chemical preservative\nBlack pepper is packed full of healthy nutrients for the body. The regular consumption of this spice will help achieve a glowing complexion and happy skin. It can also be used as an exfoliator added to honey or yogurt; Black pepper acts as an anti-inflammatory which helps to reduce arthritis, improve digestion\nBlack pepper is a rich source of minerals like manganese, copper, magnesium, calcium, phosphorus, iron, potassium, and vitamin c, vitamin k and vitamin B6.\nBlack pepper has a high content of dietary fiber and has a moderate amount of protein and carbohydrates too.\nBlack pepper recipes\n\nBlack pepper can be used in many dishes as this adds an aroma and a taste that can leave you craving for it all day. We also Have Black Pepper Powder Alsohttps://www.avako.in/product/avako-hilly-original-organic-pepper-powder-50gms/\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:0;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:3:{i:0;s:4:\"name\";i:1;s:11:\"description\";i:2;s:17:\"short_description\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}s:5:\"files\";O:39:\"Illuminate\\Database\\Eloquent\\Collection\":2:{s:8:\"\0*\0items\";a:5:{i:0;O:27:\"Modules\\Media\\Entities\\File\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:5:\"files\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:10:{s:2:\"id\";i:102;s:7:\"user_id\";i:2;s:8:\"filename\";s:52:\"hilll-black-pepper-organic-and-natural-premium-2.jpg\";s:4:\"disk\";s:14:\"public_storage\";s:4:\"path\";s:50:\"media/8ij4RoShbwm8FglLya7XDT4aE6jgm6FB1igxcCfb.jpg\";s:9:\"extension\";s:3:\"jpg\";s:4:\"mime\";s:10:\"image/jpeg\";s:4:\"size\";s:6:\"125887\";s:10:\"created_at\";s:19:\"2025-07-03 02:42:27\";s:10:\"updated_at\";s:19:\"2025-07-03 02:42:27\";}s:11:\"\0*\0original\";a:17:{s:2:\"id\";i:102;s:7:\"user_id\";i:2;s:8:\"filename\";s:52:\"hilll-black-pepper-organic-and-natural-premium-2.jpg\";s:4:\"disk\";s:14:\"public_storage\";s:4:\"path\";s:50:\"media/8ij4RoShbwm8FglLya7XDT4aE6jgm6FB1igxcCfb.jpg\";s:9:\"extension\";s:3:\"jpg\";s:4:\"mime\";s:10:\"image/jpeg\";s:4:\"size\";s:6:\"125887\";s:10:\"created_at\";s:19:\"2025-07-03 02:42:27\";s:10:\"updated_at\";s:19:\"2025-07-03 02:42:27\";s:15:\"pivot_entity_id\";i:15;s:13:\"pivot_file_id\";i:102;s:17:\"pivot_entity_type\";s:32:\"Modules\\Product\\Entities\\Product\";s:8:\"pivot_id\";i:511;s:10:\"pivot_zone\";s:10:\"base_image\";s:16:\"pivot_created_at\";s:19:\"2025-07-09 21:49:13\";s:16:\"pivot_updated_at\";s:19:\"2025-07-09 21:49:13\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:1:{s:5:\"pivot\";O:49:\"Illuminate\\Database\\Eloquent\\Relations\\MorphPivot\":36:{s:13:\"\0*\0connection\";N;s:8:\"\0*\0table\";s:12:\"entity_files\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:0;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:7:{s:11:\"entity_type\";s:32:\"Modules\\Product\\Entities\\Product\";s:9:\"entity_id\";i:15;s:7:\"file_id\";i:102;s:2:\"id\";i:511;s:4:\"zone\";s:10:\"base_image\";s:10:\"created_at\";s:19:\"2025-07-09 21:49:13\";s:10:\"updated_at\";s:19:\"2025-07-09 21:49:13\";}s:11:\"\0*\0original\";a:7:{s:11:\"entity_type\";s:32:\"Modules\\Product\\Entities\\Product\";s:9:\"entity_id\";i:15;s:7:\"file_id\";i:102;s:2:\"id\";i:511;s:4:\"zone\";s:10:\"base_image\";s:10:\"created_at\";s:19:\"2025-07-09 21:49:13\";s:10:\"updated_at\";s:19:\"2025-07-09 21:49:13\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}s:11:\"pivotParent\";O:32:\"Modules\\Product\\Entities\\Product\":35:{s:13:\"\0*\0connection\";N;s:8:\"\0*\0table\";s:8:\"products\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:1:{i:0;s:12:\"translations\";}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:0;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:0:{}s:11:\"\0*\0original\";a:0:{}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:9:{s:10:\"is_virtual\";s:7:\"boolean\";s:9:\"is_active\";s:7:\"boolean\";s:19:\"special_price_start\";s:8:\"datetime\";s:17:\"special_price_end\";s:8:\"datetime\";s:8:\"new_from\";s:8:\"datetime\";s:6:\"new_to\";s:8:\"datetime\";s:10:\"start_date\";s:8:\"datetime\";s:8:\"end_date\";s:8:\"datetime\";s:10:\"deleted_at\";s:8:\"datetime\";}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:13:{i:0;s:10:\"base_image\";i:1;s:17:\"additional_images\";i:2;s:5:\"media\";i:3;s:15:\"formatted_price\";i:4;s:21:\"formatted_price_range\";i:5;s:28:\"has_percentage_special_price\";i:6;s:21:\"special_price_percent\";i:7;s:14:\"rating_percent\";i:8;s:17:\"does_manage_stock\";i:9;s:11:\"is_in_stock\";i:10;s:15:\"is_out_of_stock\";i:11;s:6:\"is_new\";i:12;s:7:\"variant\";}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:17:{i:0;s:8:\"brand_id\";i:1;s:12:\"tax_class_id\";i:2;s:4:\"slug\";i:3;s:3:\"sku\";i:4;s:5:\"price\";i:5;s:13:\"special_price\";i:6;s:18:\"special_price_type\";i:7;s:19:\"special_price_start\";i:8;s:17:\"special_price_end\";i:9;s:13:\"selling_price\";i:10;s:12:\"manage_stock\";i:11;s:3:\"qty\";i:12;s:8:\"in_stock\";i:13;s:10:\"is_virtual\";i:14;s:9:\"is_active\";i:15;s:8:\"new_from\";i:16;s:6:\"new_to\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}s:23:\"\0*\0translatedAttributes\";a:3:{i:0;s:4:\"name\";i:1;s:11:\"description\";i:2;s:17:\"short_description\";}s:16:\"\0*\0slugAttribute\";s:4:\"name\";s:16:\"\0*\0defaultLocale\";N;s:16:\"\0*\0scoutMetadata\";a:0:{}s:16:\"\0*\0forceDeleting\";b:0;}s:12:\"pivotRelated\";O:27:\"Modules\\Media\\Entities\\File\":30:{s:13:\"\0*\0connection\";N;s:8:\"\0*\0table\";N;s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:0;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:0:{}s:11:\"\0*\0original\";a:0:{}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:3:{i:0;s:2:\"id\";i:1;s:8:\"filename\";i:2;s:4:\"path\";}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}}s:13:\"\0*\0foreignKey\";s:9:\"entity_id\";s:13:\"\0*\0relatedKey\";s:7:\"file_id\";s:12:\"\0*\0morphType\";s:11:\"entity_type\";s:13:\"\0*\0morphClass\";s:32:\"Modules\\Product\\Entities\\Product\";}}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:3:{i:0;s:2:\"id\";i:1;s:8:\"filename\";i:2;s:4:\"path\";}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}}i:1;O:27:\"Modules\\Media\\Entities\\File\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:5:\"files\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:10:{s:2:\"id\";i:103;s:7:\"user_id\";i:2;s:8:\"filename\";s:52:\"hilll-black-pepper-organic-and-natural-premium-3.jpg\";s:4:\"disk\";s:14:\"public_storage\";s:4:\"path\";s:50:\"media/122sf1JL7xYTqG7mAmk84BO88NBUBc358I1qmt9C.jpg\";s:9:\"extension\";s:3:\"jpg\";s:4:\"mime\";s:10:\"image/jpeg\";s:4:\"size\";s:6:\"162823\";s:10:\"created_at\";s:19:\"2025-07-03 02:42:27\";s:10:\"updated_at\";s:19:\"2025-07-03 02:42:27\";}s:11:\"\0*\0original\";a:17:{s:2:\"id\";i:103;s:7:\"user_id\";i:2;s:8:\"filename\";s:52:\"hilll-black-pepper-organic-and-natural-premium-3.jpg\";s:4:\"disk\";s:14:\"public_storage\";s:4:\"path\";s:50:\"media/122sf1JL7xYTqG7mAmk84BO88NBUBc358I1qmt9C.jpg\";s:9:\"extension\";s:3:\"jpg\";s:4:\"mime\";s:10:\"image/jpeg\";s:4:\"size\";s:6:\"162823\";s:10:\"created_at\";s:19:\"2025-07-03 02:42:27\";s:10:\"updated_at\";s:19:\"2025-07-03 02:42:27\";s:15:\"pivot_entity_id\";i:15;s:13:\"pivot_file_id\";i:103;s:17:\"pivot_entity_type\";s:32:\"Modules\\Product\\Entities\\Product\";s:8:\"pivot_id\";i:512;s:10:\"pivot_zone\";s:17:\"additional_images\";s:16:\"pivot_created_at\";s:19:\"2025-07-09 21:49:13\";s:16:\"pivot_updated_at\";s:19:\"2025-07-09 21:49:13\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:1:{s:5:\"pivot\";O:49:\"Illuminate\\Database\\Eloquent\\Relations\\MorphPivot\":36:{s:13:\"\0*\0connection\";N;s:8:\"\0*\0table\";s:12:\"entity_files\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:0;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:7:{s:11:\"entity_type\";s:32:\"Modules\\Product\\Entities\\Product\";s:9:\"entity_id\";i:15;s:7:\"file_id\";i:103;s:2:\"id\";i:512;s:4:\"zone\";s:17:\"additional_images\";s:10:\"created_at\";s:19:\"2025-07-09 21:49:13\";s:10:\"updated_at\";s:19:\"2025-07-09 21:49:13\";}s:11:\"\0*\0original\";a:7:{s:11:\"entity_type\";s:32:\"Modules\\Product\\Entities\\Product\";s:9:\"entity_id\";i:15;s:7:\"file_id\";i:103;s:2:\"id\";i:512;s:4:\"zone\";s:17:\"additional_images\";s:10:\"created_at\";s:19:\"2025-07-09 21:49:13\";s:10:\"updated_at\";s:19:\"2025-07-09 21:49:13\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}s:11:\"pivotParent\";r:250;s:12:\"pivotRelated\";r:330;s:13:\"\0*\0foreignKey\";s:9:\"entity_id\";s:13:\"\0*\0relatedKey\";s:7:\"file_id\";s:12:\"\0*\0morphType\";s:11:\"entity_type\";s:13:\"\0*\0morphClass\";s:32:\"Modules\\Product\\Entities\\Product\";}}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:3:{i:0;s:2:\"id\";i:1;s:8:\"filename\";i:2;s:4:\"path\";}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}}i:2;O:27:\"Modules\\Media\\Entities\\File\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:5:\"files\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:10:{s:2:\"id\";i:104;s:7:\"user_id\";i:2;s:8:\"filename\";s:52:\"hilll-black-pepper-organic-and-natural-premium-4.jpg\";s:4:\"disk\";s:14:\"public_storage\";s:4:\"path\";s:50:\"media/NH7QHjFEE62lwWypKAwtuf6EffsHRT6hbudTcTk4.jpg\";s:9:\"extension\";s:3:\"jpg\";s:4:\"mime\";s:10:\"image/jpeg\";s:4:\"size\";s:6:\"125887\";s:10:\"created_at\";s:19:\"2025-07-03 02:42:27\";s:10:\"updated_at\";s:19:\"2025-07-03 02:42:27\";}s:11:\"\0*\0original\";a:17:{s:2:\"id\";i:104;s:7:\"user_id\";i:2;s:8:\"filename\";s:52:\"hilll-black-pepper-organic-and-natural-premium-4.jpg\";s:4:\"disk\";s:14:\"public_storage\";s:4:\"path\";s:50:\"media/NH7QHjFEE62lwWypKAwtuf6EffsHRT6hbudTcTk4.jpg\";s:9:\"extension\";s:3:\"jpg\";s:4:\"mime\";s:10:\"image/jpeg\";s:4:\"size\";s:6:\"125887\";s:10:\"created_at\";s:19:\"2025-07-03 02:42:27\";s:10:\"updated_at\";s:19:\"2025-07-03 02:42:27\";s:15:\"pivot_entity_id\";i:15;s:13:\"pivot_file_id\";i:104;s:17:\"pivot_entity_type\";s:32:\"Modules\\Product\\Entities\\Product\";s:8:\"pivot_id\";i:513;s:10:\"pivot_zone\";s:17:\"additional_images\";s:16:\"pivot_created_at\";s:19:\"2025-07-09 21:49:13\";s:16:\"pivot_updated_at\";s:19:\"2025-07-09 21:49:13\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:1:{s:5:\"pivot\";O:49:\"Illuminate\\Database\\Eloquent\\Relations\\MorphPivot\":36:{s:13:\"\0*\0connection\";N;s:8:\"\0*\0table\";s:12:\"entity_files\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:0;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:7:{s:11:\"entity_type\";s:32:\"Modules\\Product\\Entities\\Product\";s:9:\"entity_id\";i:15;s:7:\"file_id\";i:104;s:2:\"id\";i:513;s:4:\"zone\";s:17:\"additional_images\";s:10:\"created_at\";s:19:\"2025-07-09 21:49:13\";s:10:\"updated_at\";s:19:\"2025-07-09 21:49:13\";}s:11:\"\0*\0original\";a:7:{s:11:\"entity_type\";s:32:\"Modules\\Product\\Entities\\Product\";s:9:\"entity_id\";i:15;s:7:\"file_id\";i:104;s:2:\"id\";i:513;s:4:\"zone\";s:17:\"additional_images\";s:10:\"created_at\";s:19:\"2025-07-09 21:49:13\";s:10:\"updated_at\";s:19:\"2025-07-09 21:49:13\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}s:11:\"pivotParent\";r:250;s:12:\"pivotRelated\";r:330;s:13:\"\0*\0foreignKey\";s:9:\"entity_id\";s:13:\"\0*\0relatedKey\";s:7:\"file_id\";s:12:\"\0*\0morphType\";s:11:\"entity_type\";s:13:\"\0*\0morphClass\";s:32:\"Modules\\Product\\Entities\\Product\";}}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:3:{i:0;s:2:\"id\";i:1;s:8:\"filename\";i:2;s:4:\"path\";}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}}i:3;O:27:\"Modules\\Media\\Entities\\File\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:5:\"files\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:10:{s:2:\"id\";i:105;s:7:\"user_id\";i:2;s:8:\"filename\";s:52:\"hilll-black-pepper-organic-and-natural-premium-5.jpg\";s:4:\"disk\";s:14:\"public_storage\";s:4:\"path\";s:50:\"media/XjyWYsbceVzULnTys01GMEM5Zn3YOc3H6iwtHJu2.jpg\";s:9:\"extension\";s:3:\"jpg\";s:4:\"mime\";s:10:\"image/jpeg\";s:4:\"size\";s:6:\"162403\";s:10:\"created_at\";s:19:\"2025-07-03 02:42:27\";s:10:\"updated_at\";s:19:\"2025-07-03 02:42:27\";}s:11:\"\0*\0original\";a:17:{s:2:\"id\";i:105;s:7:\"user_id\";i:2;s:8:\"filename\";s:52:\"hilll-black-pepper-organic-and-natural-premium-5.jpg\";s:4:\"disk\";s:14:\"public_storage\";s:4:\"path\";s:50:\"media/XjyWYsbceVzULnTys01GMEM5Zn3YOc3H6iwtHJu2.jpg\";s:9:\"extension\";s:3:\"jpg\";s:4:\"mime\";s:10:\"image/jpeg\";s:4:\"size\";s:6:\"162403\";s:10:\"created_at\";s:19:\"2025-07-03 02:42:27\";s:10:\"updated_at\";s:19:\"2025-07-03 02:42:27\";s:15:\"pivot_entity_id\";i:15;s:13:\"pivot_file_id\";i:105;s:17:\"pivot_entity_type\";s:32:\"Modules\\Product\\Entities\\Product\";s:8:\"pivot_id\";i:514;s:10:\"pivot_zone\";s:17:\"additional_images\";s:16:\"pivot_created_at\";s:19:\"2025-07-09 21:49:13\";s:16:\"pivot_updated_at\";s:19:\"2025-07-09 21:49:13\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:1:{s:5:\"pivot\";O:49:\"Illuminate\\Database\\Eloquent\\Relations\\MorphPivot\":36:{s:13:\"\0*\0connection\";N;s:8:\"\0*\0table\";s:12:\"entity_files\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:0;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:7:{s:11:\"entity_type\";s:32:\"Modules\\Product\\Entities\\Product\";s:9:\"entity_id\";i:15;s:7:\"file_id\";i:105;s:2:\"id\";i:514;s:4:\"zone\";s:17:\"additional_images\";s:10:\"created_at\";s:19:\"2025-07-09 21:49:13\";s:10:\"updated_at\";s:19:\"2025-07-09 21:49:13\";}s:11:\"\0*\0original\";a:7:{s:11:\"entity_type\";s:32:\"Modules\\Product\\Entities\\Product\";s:9:\"entity_id\";i:15;s:7:\"file_id\";i:105;s:2:\"id\";i:514;s:4:\"zone\";s:17:\"additional_images\";s:10:\"created_at\";s:19:\"2025-07-09 21:49:13\";s:10:\"updated_at\";s:19:\"2025-07-09 21:49:13\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}s:11:\"pivotParent\";r:250;s:12:\"pivotRelated\";r:330;s:13:\"\0*\0foreignKey\";s:9:\"entity_id\";s:13:\"\0*\0relatedKey\";s:7:\"file_id\";s:12:\"\0*\0morphType\";s:11:\"entity_type\";s:13:\"\0*\0morphClass\";s:32:\"Modules\\Product\\Entities\\Product\";}}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:3:{i:0;s:2:\"id\";i:1;s:8:\"filename\";i:2;s:4:\"path\";}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}}i:4;O:27:\"Modules\\Media\\Entities\\File\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:5:\"files\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:10:{s:2:\"id\";i:106;s:7:\"user_id\";i:2;s:8:\"filename\";s:52:\"hilll-black-pepper-organic-and-natural-premium-6.jpg\";s:4:\"disk\";s:14:\"public_storage\";s:4:\"path\";s:50:\"media/G8DwXdGVEDEWTj8wmEsd73WtH7mzvjwv2PJdbnaq.jpg\";s:9:\"extension\";s:3:\"jpg\";s:4:\"mime\";s:10:\"image/jpeg\";s:4:\"size\";s:5:\"83468\";s:10:\"created_at\";s:19:\"2025-07-03 02:42:27\";s:10:\"updated_at\";s:19:\"2025-07-03 02:42:27\";}s:11:\"\0*\0original\";a:17:{s:2:\"id\";i:106;s:7:\"user_id\";i:2;s:8:\"filename\";s:52:\"hilll-black-pepper-organic-and-natural-premium-6.jpg\";s:4:\"disk\";s:14:\"public_storage\";s:4:\"path\";s:50:\"media/G8DwXdGVEDEWTj8wmEsd73WtH7mzvjwv2PJdbnaq.jpg\";s:9:\"extension\";s:3:\"jpg\";s:4:\"mime\";s:10:\"image/jpeg\";s:4:\"size\";s:5:\"83468\";s:10:\"created_at\";s:19:\"2025-07-03 02:42:27\";s:10:\"updated_at\";s:19:\"2025-07-03 02:42:27\";s:15:\"pivot_entity_id\";i:15;s:13:\"pivot_file_id\";i:106;s:17:\"pivot_entity_type\";s:32:\"Modules\\Product\\Entities\\Product\";s:8:\"pivot_id\";i:515;s:10:\"pivot_zone\";s:17:\"additional_images\";s:16:\"pivot_created_at\";s:19:\"2025-07-09 21:49:13\";s:16:\"pivot_updated_at\";s:19:\"2025-07-09 21:49:13\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:1:{s:5:\"pivot\";O:49:\"Illuminate\\Database\\Eloquent\\Relations\\MorphPivot\":36:{s:13:\"\0*\0connection\";N;s:8:\"\0*\0table\";s:12:\"entity_files\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:0;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:7:{s:11:\"entity_type\";s:32:\"Modules\\Product\\Entities\\Product\";s:9:\"entity_id\";i:15;s:7:\"file_id\";i:106;s:2:\"id\";i:515;s:4:\"zone\";s:17:\"additional_images\";s:10:\"created_at\";s:19:\"2025-07-09 21:49:13\";s:10:\"updated_at\";s:19:\"2025-07-09 21:49:13\";}s:11:\"\0*\0original\";a:7:{s:11:\"entity_type\";s:32:\"Modules\\Product\\Entities\\Product\";s:9:\"entity_id\";i:15;s:7:\"file_id\";i:106;s:2:\"id\";i:515;s:4:\"zone\";s:17:\"additional_images\";s:10:\"created_at\";s:19:\"2025-07-09 21:49:13\";s:10:\"updated_at\";s:19:\"2025-07-09 21:49:13\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}s:11:\"pivotParent\";r:250;s:12:\"pivotRelated\";r:330;s:13:\"\0*\0foreignKey\";s:9:\"entity_id\";s:13:\"\0*\0relatedKey\";s:7:\"file_id\";s:12:\"\0*\0morphType\";s:11:\"entity_type\";s:13:\"\0*\0morphClass\";s:32:\"Modules\\Product\\Entities\\Product\";}}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:3:{i:0;s:2:\"id\";i:1;s:8:\"filename\";i:2;s:4:\"path\";}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}}}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}s:10:\"categories\";O:26:\"TypiCMS\\NestableCollection\":8:{s:8:\"\0*\0items\";a:3:{i:0;O:34:\"Modules\\Category\\Entities\\Category\":33:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:10:\"categories\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:1:{i:0;s:12:\"translations\";}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:8:{s:2:\"id\";i:9;s:9:\"parent_id\";N;s:4:\"slug\";s:21:\"biriyani-hilly-spices\";s:8:\"position\";N;s:13:\"is_searchable\";i:1;s:9:\"is_active\";i:1;s:10:\"created_at\";s:19:\"2025-06-29 13:21:47\";s:10:\"updated_at\";s:19:\"2025-07-03 02:10:58\";}s:11:\"\0*\0original\";a:10:{s:2:\"id\";i:9;s:9:\"parent_id\";N;s:4:\"slug\";s:21:\"biriyani-hilly-spices\";s:8:\"position\";N;s:13:\"is_searchable\";i:1;s:9:\"is_active\";i:1;s:10:\"created_at\";s:19:\"2025-06-29 13:21:47\";s:10:\"updated_at\";s:19:\"2025-07-03 02:10:58\";s:16:\"pivot_product_id\";i:15;s:17:\"pivot_category_id\";i:9;}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:2:{s:13:\"is_searchable\";s:7:\"boolean\";s:9:\"is_active\";s:7:\"boolean\";}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:2:{s:5:\"pivot\";O:44:\"Illuminate\\Database\\Eloquent\\Relations\\Pivot\":34:{s:13:\"\0*\0connection\";N;s:8:\"\0*\0table\";s:18:\"product_categories\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:0;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:2:{s:10:\"product_id\";i:15;s:11:\"category_id\";i:9;}s:11:\"\0*\0original\";a:2:{s:10:\"product_id\";i:15;s:11:\"category_id\";i:9;}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:0;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}s:11:\"pivotParent\";O:32:\"Modules\\Product\\Entities\\Product\":35:{s:13:\"\0*\0connection\";N;s:8:\"\0*\0table\";s:8:\"products\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:1:{i:0;s:12:\"translations\";}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:0;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:0:{}s:11:\"\0*\0original\";a:0:{}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:9:{s:10:\"is_virtual\";s:7:\"boolean\";s:9:\"is_active\";s:7:\"boolean\";s:19:\"special_price_start\";s:8:\"datetime\";s:17:\"special_price_end\";s:8:\"datetime\";s:8:\"new_from\";s:8:\"datetime\";s:6:\"new_to\";s:8:\"datetime\";s:10:\"start_date\";s:8:\"datetime\";s:8:\"end_date\";s:8:\"datetime\";s:10:\"deleted_at\";s:8:\"datetime\";}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:13:{i:0;s:10:\"base_image\";i:1;s:17:\"additional_images\";i:2;s:5:\"media\";i:3;s:15:\"formatted_price\";i:4;s:21:\"formatted_price_range\";i:5;s:28:\"has_percentage_special_price\";i:6;s:21:\"special_price_percent\";i:7;s:14:\"rating_percent\";i:8;s:17:\"does_manage_stock\";i:9;s:11:\"is_in_stock\";i:10;s:15:\"is_out_of_stock\";i:11;s:6:\"is_new\";i:12;s:7:\"variant\";}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:17:{i:0;s:8:\"brand_id\";i:1;s:12:\"tax_class_id\";i:2;s:4:\"slug\";i:3;s:3:\"sku\";i:4;s:5:\"price\";i:5;s:13:\"special_price\";i:6;s:18:\"special_price_type\";i:7;s:19:\"special_price_start\";i:8;s:17:\"special_price_end\";i:9;s:13:\"selling_price\";i:10;s:12:\"manage_stock\";i:11;s:3:\"qty\";i:12;s:8:\"in_stock\";i:13;s:10:\"is_virtual\";i:14;s:9:\"is_active\";i:15;s:8:\"new_from\";i:16;s:6:\"new_to\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}s:23:\"\0*\0translatedAttributes\";a:3:{i:0;s:4:\"name\";i:1;s:11:\"description\";i:2;s:17:\"short_description\";}s:16:\"\0*\0slugAttribute\";s:4:\"name\";s:16:\"\0*\0defaultLocale\";N;s:16:\"\0*\0scoutMetadata\";a:0:{}s:16:\"\0*\0forceDeleting\";b:0;}s:12:\"pivotRelated\";O:34:\"Modules\\Category\\Entities\\Category\":33:{s:13:\"\0*\0connection\";N;s:8:\"\0*\0table\";N;s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:1:{i:0;s:12:\"translations\";}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:0;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:0:{}s:11:\"\0*\0original\";a:0:{}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:2:{s:13:\"is_searchable\";s:7:\"boolean\";s:9:\"is_active\";s:7:\"boolean\";}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:1:{i:0;s:12:\"translations\";}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:5:{i:0;s:9:\"parent_id\";i:1;s:4:\"slug\";i:2;s:8:\"position\";i:3;s:13:\"is_searchable\";i:4;s:9:\"is_active\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}s:23:\"\0*\0translatedAttributes\";a:1:{i:0;s:4:\"name\";}s:16:\"\0*\0slugAttribute\";s:4:\"name\";s:16:\"\0*\0defaultLocale\";N;}s:13:\"\0*\0foreignKey\";s:10:\"product_id\";s:13:\"\0*\0relatedKey\";s:11:\"category_id\";}s:12:\"translations\";O:39:\"Illuminate\\Database\\Eloquent\\Collection\":2:{s:8:\"\0*\0items\";a:1:{i:0;O:45:\"Modules\\Category\\Entities\\CategoryTranslation\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:21:\"category_translations\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:4:{s:2:\"id\";i:9;s:11:\"category_id\";i:9;s:6:\"locale\";s:2:\"en\";s:4:\"name\";s:21:\"Biriyani Hilly Spices\";}s:11:\"\0*\0original\";a:4:{s:2:\"id\";i:9;s:11:\"category_id\";i:9;s:6:\"locale\";s:2:\"en\";s:4:\"name\";s:21:\"Biriyani Hilly Spices\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:0;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:1:{i:0;s:4:\"name\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:1:{i:0;s:12:\"translations\";}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:5:{i:0;s:9:\"parent_id\";i:1;s:4:\"slug\";i:2;s:8:\"position\";i:3;s:13:\"is_searchable\";i:4;s:9:\"is_active\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}s:23:\"\0*\0translatedAttributes\";a:1:{i:0;s:4:\"name\";}s:16:\"\0*\0slugAttribute\";s:4:\"name\";s:16:\"\0*\0defaultLocale\";N;}i:1;O:34:\"Modules\\Category\\Entities\\Category\":33:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:10:\"categories\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:1:{i:0;s:12:\"translations\";}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:8:{s:2:\"id\";i:16;s:9:\"parent_id\";N;s:4:\"slug\";s:12:\"hilly-pepper\";s:8:\"position\";N;s:13:\"is_searchable\";i:1;s:9:\"is_active\";i:1;s:10:\"created_at\";s:19:\"2025-06-29 13:22:55\";s:10:\"updated_at\";s:19:\"2025-07-03 02:12:38\";}s:11:\"\0*\0original\";a:10:{s:2:\"id\";i:16;s:9:\"parent_id\";N;s:4:\"slug\";s:12:\"hilly-pepper\";s:8:\"position\";N;s:13:\"is_searchable\";i:1;s:9:\"is_active\";i:1;s:10:\"created_at\";s:19:\"2025-06-29 13:22:55\";s:10:\"updated_at\";s:19:\"2025-07-03 02:12:38\";s:16:\"pivot_product_id\";i:15;s:17:\"pivot_category_id\";i:16;}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:2:{s:13:\"is_searchable\";s:7:\"boolean\";s:9:\"is_active\";s:7:\"boolean\";}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:2:{s:5:\"pivot\";O:44:\"Illuminate\\Database\\Eloquent\\Relations\\Pivot\":34:{s:13:\"\0*\0connection\";N;s:8:\"\0*\0table\";s:18:\"product_categories\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:0;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:2:{s:10:\"product_id\";i:15;s:11:\"category_id\";i:16;}s:11:\"\0*\0original\";a:2:{s:10:\"product_id\";i:15;s:11:\"category_id\";i:16;}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:0;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}s:11:\"pivotParent\";r:909;s:12:\"pivotRelated\";r:989;s:13:\"\0*\0foreignKey\";s:10:\"product_id\";s:13:\"\0*\0relatedKey\";s:11:\"category_id\";}s:12:\"translations\";O:39:\"Illuminate\\Database\\Eloquent\\Collection\":2:{s:8:\"\0*\0items\";a:1:{i:0;O:45:\"Modules\\Category\\Entities\\CategoryTranslation\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:21:\"category_translations\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:4:{s:2:\"id\";i:16;s:11:\"category_id\";i:16;s:6:\"locale\";s:2:\"en\";s:4:\"name\";s:12:\"Hilly Pepper\";}s:11:\"\0*\0original\";a:4:{s:2:\"id\";i:16;s:11:\"category_id\";i:16;s:6:\"locale\";s:2:\"en\";s:4:\"name\";s:12:\"Hilly Pepper\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:0;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:1:{i:0;s:4:\"name\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:1:{i:0;s:12:\"translations\";}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:5:{i:0;s:9:\"parent_id\";i:1;s:4:\"slug\";i:2;s:8:\"position\";i:3;s:13:\"is_searchable\";i:4;s:9:\"is_active\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}s:23:\"\0*\0translatedAttributes\";a:1:{i:0;s:4:\"name\";}s:16:\"\0*\0slugAttribute\";s:4:\"name\";s:16:\"\0*\0defaultLocale\";N;}i:2;O:34:\"Modules\\Category\\Entities\\Category\":33:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:10:\"categories\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:1:{i:0;s:12:\"translations\";}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:8:{s:2:\"id\";i:17;s:9:\"parent_id\";N;s:4:\"slug\";s:21:\"hilly-spices-original\";s:8:\"position\";N;s:13:\"is_searchable\";i:1;s:9:\"is_active\";i:1;s:10:\"created_at\";s:19:\"2025-06-29 13:23:05\";s:10:\"updated_at\";s:19:\"2025-07-03 02:12:30\";}s:11:\"\0*\0original\";a:10:{s:2:\"id\";i:17;s:9:\"parent_id\";N;s:4:\"slug\";s:21:\"hilly-spices-original\";s:8:\"position\";N;s:13:\"is_searchable\";i:1;s:9:\"is_active\";i:1;s:10:\"created_at\";s:19:\"2025-06-29 13:23:05\";s:10:\"updated_at\";s:19:\"2025-07-03 02:12:30\";s:16:\"pivot_product_id\";i:15;s:17:\"pivot_category_id\";i:17;}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:2:{s:13:\"is_searchable\";s:7:\"boolean\";s:9:\"is_active\";s:7:\"boolean\";}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:2:{s:5:\"pivot\";O:44:\"Illuminate\\Database\\Eloquent\\Relations\\Pivot\":34:{s:13:\"\0*\0connection\";N;s:8:\"\0*\0table\";s:18:\"product_categories\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:0;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:2:{s:10:\"product_id\";i:15;s:11:\"category_id\";i:17;}s:11:\"\0*\0original\";a:2:{s:10:\"product_id\";i:15;s:11:\"category_id\";i:17;}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:0;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}s:11:\"pivotParent\";r:909;s:12:\"pivotRelated\";r:989;s:13:\"\0*\0foreignKey\";s:10:\"product_id\";s:13:\"\0*\0relatedKey\";s:11:\"category_id\";}s:12:\"translations\";O:39:\"Illuminate\\Database\\Eloquent\\Collection\":2:{s:8:\"\0*\0items\";a:1:{i:0;O:45:\"Modules\\Category\\Entities\\CategoryTranslation\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:21:\"category_translations\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:4:{s:2:\"id\";i:17;s:11:\"category_id\";i:17;s:6:\"locale\";s:2:\"en\";s:4:\"name\";s:21:\"Hilly Spices Original\";}s:11:\"\0*\0original\";a:4:{s:2:\"id\";i:17;s:11:\"category_id\";i:17;s:6:\"locale\";s:2:\"en\";s:4:\"name\";s:21:\"Hilly Spices Original\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:0;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:1:{i:0;s:4:\"name\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:1:{i:0;s:12:\"translations\";}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:5:{i:0;s:9:\"parent_id\";i:1;s:4:\"slug\";i:2;s:8:\"position\";i:3;s:13:\"is_searchable\";i:4;s:9:\"is_active\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}s:23:\"\0*\0translatedAttributes\";a:1:{i:0;s:4:\"name\";}s:16:\"\0*\0slugAttribute\";s:4:\"name\";s:16:\"\0*\0defaultLocale\";N;}}s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:8:\"\0*\0total\";i:3;s:15:\"\0*\0parentColumn\";s:9:\"parent_id\";s:33:\"\0*\0removeItemsWithMissingAncestor\";b:1;s:14:\"\0*\0indentChars\";s:8:\"    \";s:15:\"\0*\0childrenName\";s:5:\"items\";s:17:\"\0*\0parentRelation\";s:6:\"parent\";}s:8:\"taxClass\";O:29:\"Modules\\Tax\\Entities\\TaxClass\":33:{s:13:\"\0*\0connection\";N;s:8:\"\0*\0table\";s:11:\"tax_classes\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:1:{i:0;s:12:\"translations\";}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:0;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:0:{}s:11:\"\0*\0original\";a:0:{}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:3:{s:10:\"start_date\";s:8:\"datetime\";s:8:\"end_date\";s:8:\"datetime\";s:10:\"deleted_at\";s:8:\"datetime\";}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:1:{i:0;s:8:\"based_on\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}s:20:\"translatedAttributes\";a:1:{i:0;s:5:\"label\";}s:16:\"\0*\0defaultLocale\";N;s:16:\"\0*\0forceDeleting\";b:0;}}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:17:{i:0;s:8:\"brand_id\";i:1;s:12:\"tax_class_id\";i:2;s:4:\"slug\";i:3;s:3:\"sku\";i:4;s:5:\"price\";i:5;s:13:\"special_price\";i:6;s:18:\"special_price_type\";i:7;s:19:\"special_price_start\";i:8;s:17:\"special_price_end\";i:9;s:13:\"selling_price\";i:10;s:12:\"manage_stock\";i:11;s:3:\"qty\";i:12;s:8:\"in_stock\";i:13;s:10:\"is_virtual\";i:14;s:9:\"is_active\";i:15;s:8:\"new_from\";i:16;s:6:\"new_to\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}s:23:\"\0*\0translatedAttributes\";a:3:{i:0;s:4:\"name\";i:1;s:11:\"description\";i:2;s:17:\"short_description\";}s:16:\"\0*\0slugAttribute\";s:4:\"name\";s:16:\"\0*\0defaultLocale\";N;s:16:\"\0*\0scoutMetadata\";a:0:{}s:16:\"\0*\0forceDeleting\";b:0;}s:7:\"variant\";O:39:\"Modules\\Product\\Entities\\ProductVariant\":31:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:16:\"product_variants\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:1:{i:0;s:5:\"files\";}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:21:{s:2:\"id\";i:31;s:3:\"uid\";s:32:\"1dbd3840b747eed312f889a770e7bb13\";s:4:\"uids\";s:12:\"368dtoyqgxl7\";s:10:\"product_id\";i:15;s:4:\"name\";s:4:\"150g\";s:5:\"price\";s:8:\"220.0000\";s:13:\"special_price\";s:8:\"175.0000\";s:18:\"special_price_type\";s:5:\"fixed\";s:19:\"special_price_start\";N;s:17:\"special_price_end\";N;s:13:\"selling_price\";s:8:\"175.0000\";s:3:\"sku\";N;s:12:\"manage_stock\";i:0;s:3:\"qty\";N;s:8:\"in_stock\";i:1;s:10:\"is_default\";i:1;s:9:\"is_active\";i:1;s:8:\"position\";i:1;s:10:\"deleted_at\";N;s:10:\"created_at\";s:19:\"2025-07-03 02:45:00\";s:10:\"updated_at\";s:19:\"2025-07-09 21:49:13\";}s:11:\"\0*\0original\";a:21:{s:2:\"id\";i:31;s:3:\"uid\";s:32:\"1dbd3840b747eed312f889a770e7bb13\";s:4:\"uids\";s:12:\"368dtoyqgxl7\";s:10:\"product_id\";i:15;s:4:\"name\";s:4:\"150g\";s:5:\"price\";s:8:\"220.0000\";s:13:\"special_price\";s:8:\"175.0000\";s:18:\"special_price_type\";s:5:\"fixed\";s:19:\"special_price_start\";N;s:17:\"special_price_end\";N;s:13:\"selling_price\";s:8:\"175.0000\";s:3:\"sku\";N;s:12:\"manage_stock\";i:0;s:3:\"qty\";N;s:8:\"in_stock\";i:1;s:10:\"is_default\";i:1;s:9:\"is_active\";i:1;s:8:\"position\";i:1;s:10:\"deleted_at\";N;s:10:\"created_at\";s:19:\"2025-07-03 02:45:00\";s:10:\"updated_at\";s:19:\"2025-07-09 21:49:13\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:5:{s:9:\"is_active\";s:7:\"boolean\";s:10:\"is_default\";s:7:\"boolean\";s:19:\"special_price_start\";s:8:\"datetime\";s:17:\"special_price_end\";s:8:\"datetime\";s:10:\"deleted_at\";s:8:\"datetime\";}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:9:{i:0;s:10:\"base_image\";i:1;s:17:\"additional_images\";i:2;s:5:\"media\";i:3;s:15:\"formatted_price\";i:4;s:28:\"has_percentage_special_price\";i:5;s:21:\"special_price_percent\";i:6;s:17:\"does_manage_stock\";i:7;s:11:\"is_in_stock\";i:8;s:15:\"is_out_of_stock\";}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:1:{s:5:\"files\";O:39:\"Illuminate\\Database\\Eloquent\\Collection\":2:{s:8:\"\0*\0items\";a:1:{i:0;O:27:\"Modules\\Media\\Entities\\File\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:5:\"files\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:10:{s:2:\"id\";i:102;s:7:\"user_id\";i:2;s:8:\"filename\";s:52:\"hilll-black-pepper-organic-and-natural-premium-2.jpg\";s:4:\"disk\";s:14:\"public_storage\";s:4:\"path\";s:50:\"media/8ij4RoShbwm8FglLya7XDT4aE6jgm6FB1igxcCfb.jpg\";s:9:\"extension\";s:3:\"jpg\";s:4:\"mime\";s:10:\"image/jpeg\";s:4:\"size\";s:6:\"125887\";s:10:\"created_at\";s:19:\"2025-07-03 02:42:27\";s:10:\"updated_at\";s:19:\"2025-07-03 02:42:27\";}s:11:\"\0*\0original\";a:17:{s:2:\"id\";i:102;s:7:\"user_id\";i:2;s:8:\"filename\";s:52:\"hilll-black-pepper-organic-and-natural-premium-2.jpg\";s:4:\"disk\";s:14:\"public_storage\";s:4:\"path\";s:50:\"media/8ij4RoShbwm8FglLya7XDT4aE6jgm6FB1igxcCfb.jpg\";s:9:\"extension\";s:3:\"jpg\";s:4:\"mime\";s:10:\"image/jpeg\";s:4:\"size\";s:6:\"125887\";s:10:\"created_at\";s:19:\"2025-07-03 02:42:27\";s:10:\"updated_at\";s:19:\"2025-07-03 02:42:27\";s:15:\"pivot_entity_id\";i:31;s:13:\"pivot_file_id\";i:102;s:17:\"pivot_entity_type\";s:39:\"Modules\\Product\\Entities\\ProductVariant\";s:8:\"pivot_id\";i:508;s:10:\"pivot_zone\";s:10:\"base_image\";s:16:\"pivot_created_at\";s:19:\"2025-07-09 21:49:13\";s:16:\"pivot_updated_at\";s:19:\"2025-07-09 21:49:13\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:1:{s:5:\"pivot\";O:49:\"Illuminate\\Database\\Eloquent\\Relations\\MorphPivot\":36:{s:13:\"\0*\0connection\";N;s:8:\"\0*\0table\";s:12:\"entity_files\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:0;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:7:{s:11:\"entity_type\";s:39:\"Modules\\Product\\Entities\\ProductVariant\";s:9:\"entity_id\";i:31;s:7:\"file_id\";i:102;s:2:\"id\";i:508;s:4:\"zone\";s:10:\"base_image\";s:10:\"created_at\";s:19:\"2025-07-09 21:49:13\";s:10:\"updated_at\";s:19:\"2025-07-09 21:49:13\";}s:11:\"\0*\0original\";a:7:{s:11:\"entity_type\";s:39:\"Modules\\Product\\Entities\\ProductVariant\";s:9:\"entity_id\";i:31;s:7:\"file_id\";i:102;s:2:\"id\";i:508;s:4:\"zone\";s:10:\"base_image\";s:10:\"created_at\";s:19:\"2025-07-09 21:49:13\";s:10:\"updated_at\";s:19:\"2025-07-09 21:49:13\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}s:11:\"pivotParent\";O:39:\"Modules\\Product\\Entities\\ProductVariant\":31:{s:13:\"\0*\0connection\";N;s:8:\"\0*\0table\";s:16:\"product_variants\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:1:{i:0;s:5:\"files\";}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:0;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:0:{}s:11:\"\0*\0original\";a:0:{}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:5:{s:9:\"is_active\";s:7:\"boolean\";s:10:\"is_default\";s:7:\"boolean\";s:19:\"special_price_start\";s:8:\"datetime\";s:17:\"special_price_end\";s:8:\"datetime\";s:10:\"deleted_at\";s:8:\"datetime\";}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:9:{i:0;s:10:\"base_image\";i:1;s:17:\"additional_images\";i:2;s:5:\"media\";i:3;s:15:\"formatted_price\";i:4;s:28:\"has_percentage_special_price\";i:5;s:21:\"special_price_percent\";i:6;s:17:\"does_manage_stock\";i:7;s:11:\"is_in_stock\";i:8;s:15:\"is_out_of_stock\";}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:16:{i:0;s:3:\"uid\";i:1;s:4:\"uids\";i:2;s:4:\"name\";i:3;s:3:\"sku\";i:4;s:8:\"position\";i:5;s:5:\"price\";i:6;s:13:\"special_price\";i:7;s:18:\"special_price_type\";i:8;s:19:\"special_price_start\";i:9;s:17:\"special_price_end\";i:10;s:13:\"selling_price\";i:11;s:12:\"manage_stock\";i:12;s:3:\"qty\";i:13;s:8:\"in_stock\";i:14;s:9:\"is_active\";i:15;s:10:\"is_default\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}s:16:\"\0*\0forceDeleting\";b:0;}s:12:\"pivotRelated\";O:27:\"Modules\\Media\\Entities\\File\":30:{s:13:\"\0*\0connection\";N;s:8:\"\0*\0table\";N;s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:0;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:0:{}s:11:\"\0*\0original\";a:0:{}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:3:{i:0;s:2:\"id\";i:1;s:8:\"filename\";i:2;s:4:\"path\";}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}}s:13:\"\0*\0foreignKey\";s:9:\"entity_id\";s:13:\"\0*\0relatedKey\";s:7:\"file_id\";s:12:\"\0*\0morphType\";s:11:\"entity_type\";s:13:\"\0*\0morphClass\";s:39:\"Modules\\Product\\Entities\\ProductVariant\";}}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:3:{i:0;s:2:\"id\";i:1;s:8:\"filename\";i:2;s:4:\"path\";}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}}}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:16:{i:0;s:3:\"uid\";i:1;s:4:\"uids\";i:2;s:4:\"name\";i:3;s:3:\"sku\";i:4;s:8:\"position\";i:5;s:5:\"price\";i:6;s:13:\"special_price\";i:7;s:18:\"special_price_type\";i:8;s:19:\"special_price_start\";i:9;s:17:\"special_price_end\";i:10;s:13:\"selling_price\";i:11;s:12:\"manage_stock\";i:12;s:3:\"qty\";i:13;s:8:\"in_stock\";i:14;s:9:\"is_active\";i:15;s:10:\"is_default\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}s:16:\"\0*\0forceDeleting\";b:0;}s:4:\"item\";r:1471;s:10:\"variations\";O:39:\"Illuminate\\Database\\Eloquent\\Collection\":2:{s:8:\"\0*\0items\";a:1:{i:0;O:36:\"Modules\\Variation\\Entities\\Variation\":33:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:10:\"variations\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:2:{i:0;s:12:\"translations\";i:1;s:6:\"values\";}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:8:{s:2:\"id\";i:14;s:3:\"uid\";s:12:\"4i7yudd2uid3\";s:4:\"type\";s:4:\"text\";s:9:\"is_global\";i:0;s:8:\"position\";i:1;s:10:\"deleted_at\";N;s:10:\"created_at\";s:19:\"2025-07-03 02:45:00\";s:10:\"updated_at\";s:19:\"2025-07-03 02:45:00\";}s:11:\"\0*\0original\";a:10:{s:2:\"id\";i:14;s:3:\"uid\";s:12:\"4i7yudd2uid3\";s:4:\"type\";s:4:\"text\";s:9:\"is_global\";i:0;s:8:\"position\";i:1;s:10:\"deleted_at\";N;s:10:\"created_at\";s:19:\"2025-07-03 02:45:00\";s:10:\"updated_at\";s:19:\"2025-07-03 02:45:00\";s:16:\"pivot_product_id\";i:15;s:18:\"pivot_variation_id\";i:14;}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:2:{s:9:\"is_global\";s:7:\"boolean\";s:10:\"deleted_at\";s:8:\"datetime\";}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:3:{s:5:\"pivot\";O:44:\"Illuminate\\Database\\Eloquent\\Relations\\Pivot\":34:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:18:\"product_variations\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:0;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:2:{s:10:\"product_id\";i:15;s:12:\"variation_id\";i:14;}s:11:\"\0*\0original\";a:2:{s:10:\"product_id\";i:15;s:12:\"variation_id\";i:14;}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:0;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}s:11:\"pivotParent\";r:11;s:12:\"pivotRelated\";O:36:\"Modules\\Variation\\Entities\\Variation\":33:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";N;s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:2:{i:0;s:12:\"translations\";i:1;s:6:\"values\";}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:0;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:0:{}s:11:\"\0*\0original\";a:0:{}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:2:{s:9:\"is_global\";s:7:\"boolean\";s:10:\"deleted_at\";s:8:\"datetime\";}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:4:{i:0;s:3:\"uid\";i:1;s:4:\"type\";i:2;s:9:\"is_global\";i:3;s:8:\"position\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}s:23:\"\0*\0translatedAttributes\";a:1:{i:0;s:4:\"name\";}s:16:\"\0*\0defaultLocale\";N;s:16:\"\0*\0forceDeleting\";b:0;}s:13:\"\0*\0foreignKey\";s:10:\"product_id\";s:13:\"\0*\0relatedKey\";s:12:\"variation_id\";}s:12:\"translations\";O:39:\"Illuminate\\Database\\Eloquent\\Collection\":2:{s:8:\"\0*\0items\";a:1:{i:0;O:47:\"Modules\\Variation\\Entities\\VariationTranslation\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:22:\"variation_translations\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:4:{s:2:\"id\";i:14;s:12:\"variation_id\";i:14;s:6:\"locale\";s:2:\"en\";s:4:\"name\";s:6:\"Weight\";}s:11:\"\0*\0original\";a:4:{s:2:\"id\";i:14;s:12:\"variation_id\";i:14;s:6:\"locale\";s:2:\"en\";s:4:\"name\";s:6:\"Weight\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:0;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:1:{i:0;s:4:\"name\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}s:6:\"values\";O:39:\"Illuminate\\Database\\Eloquent\\Collection\":2:{s:8:\"\0*\0items\";a:1:{i:0;O:41:\"Modules\\Variation\\Entities\\VariationValue\":32:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:16:\"variation_values\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:1:{i:0;s:12:\"translations\";}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:7:{s:2:\"id\";i:66;s:3:\"uid\";s:12:\"368dtoyqgxl7\";s:12:\"variation_id\";i:14;s:5:\"value\";s:0:\"\";s:8:\"position\";i:1;s:10:\"created_at\";s:19:\"2025-07-03 02:45:00\";s:10:\"updated_at\";s:19:\"2025-07-03 02:45:00\";}s:11:\"\0*\0original\";a:7:{s:2:\"id\";i:66;s:3:\"uid\";s:12:\"368dtoyqgxl7\";s:12:\"variation_id\";i:14;s:5:\"value\";s:0:\"\";s:8:\"position\";i:1;s:10:\"created_at\";s:19:\"2025-07-03 02:45:00\";s:10:\"updated_at\";s:19:\"2025-07-03 02:45:00\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:2:{i:0;s:5:\"color\";i:1;s:5:\"image\";}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:1:{s:12:\"translations\";O:39:\"Illuminate\\Database\\Eloquent\\Collection\":2:{s:8:\"\0*\0items\";a:1:{i:0;O:52:\"Modules\\Variation\\Entities\\VariationValueTranslation\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:28:\"variation_value_translations\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:4:{s:2:\"id\";i:66;s:18:\"variation_value_id\";i:66;s:6:\"locale\";s:2:\"en\";s:5:\"label\";s:4:\"150g\";}s:11:\"\0*\0original\";a:4:{s:2:\"id\";i:66;s:18:\"variation_value_id\";i:66;s:6:\"locale\";s:2:\"en\";s:5:\"label\";s:4:\"150g\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:0;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:1:{i:0;s:5:\"label\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:3:{i:0;s:3:\"uid\";i:1;s:5:\"value\";i:2;s:8:\"position\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}s:23:\"\0*\0translatedAttributes\";a:1:{i:0;s:5:\"label\";}s:16:\"\0*\0defaultLocale\";N;}}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:4:{i:0;s:3:\"uid\";i:1;s:4:\"type\";i:2;s:9:\"is_global\";i:3;s:8:\"position\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}s:23:\"\0*\0translatedAttributes\";a:1:{i:0;s:4:\"name\";}s:16:\"\0*\0defaultLocale\";N;s:16:\"\0*\0forceDeleting\";b:0;}}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}s:7:\"options\";O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}s:10:\"created_at\";i:1752190713;}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}s:10:\"conditions\";a:0:{}}s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:9:\"\0*\0config\";a:5:{s:14:\"format_numbers\";b:0;s:8:\"decimals\";i:0;s:9:\"dec_point\";s:1:\".\";s:13:\"thousands_sep\";s:1:\",\";s:6:\"events\";N;}}}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2025-07-10 23:38:33', '2025-07-10 23:38:33');
INSERT INTO `carts` (`id`, `data`, `created_at`, `updated_at`) VALUES
('kHGV8URpUXgtyJn5IClIBsoJv6Prpaxfa82XkTwg_cart_conditions', 'a:0:{}', '2025-06-30 17:00:58', '2025-06-30 17:05:00'),
('kHGV8URpUXgtyJn5IClIBsoJv6Prpaxfa82XkTwg_cart_items', 'a:0:{}', '2025-06-30 17:00:56', '2025-06-30 17:05:00'),
('z16JKoUcWmsGegYFrXSB8CMyKaTpgAPQx0YeToOH_cart_conditions', 'O:41:\"Darryldecode\\Cart\\CartConditionCollection\":2:{s:8:\"\0*\0items\";a:1:{s:13:\"Free Shipping\";O:26:\"Modules\\Cart\\CartCondition\":2:{s:37:\"\0Darryldecode\\Cart\\CartCondition\0args\";a:6:{s:4:\"name\";s:13:\"Free Shipping\";s:4:\"type\";s:15:\"shipping_method\";s:6:\"target\";s:5:\"total\";s:5:\"value\";i:0;s:5:\"order\";i:1;s:10:\"attributes\";a:1:{s:15:\"shipping_method\";O:23:\"Modules\\Shipping\\Method\":3:{s:4:\"name\";s:13:\"free_shipping\";s:5:\"label\";s:13:\"Free Shipping\";s:4:\"cost\";O:21:\"Modules\\Support\\Money\":2:{s:29:\"\0Modules\\Support\\Money\0amount\";i:0;s:31:\"\0Modules\\Support\\Money\0currency\";s:3:\"INR\";}}}}s:14:\"parsedRawValue\";N;}}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2025-07-11 06:22:32', '2025-07-11 07:59:50');
INSERT INTO `carts` (`id`, `data`, `created_at`, `updated_at`) VALUES
('z16JKoUcWmsGegYFrXSB8CMyKaTpgAPQx0YeToOH_cart_items', 'O:32:\"Darryldecode\\Cart\\CartCollection\":2:{s:8:\"\0*\0items\";a:1:{s:32:\"09e4a992bda4d048b1d90eb6b08abd54\";O:32:\"Darryldecode\\Cart\\ItemCollection\":3:{s:8:\"\0*\0items\";a:6:{s:2:\"id\";s:32:\"09e4a992bda4d048b1d90eb6b08abd54\";s:4:\"name\";s:96:\"Cloves | Kirambu | Lavenham | கிராம்பு | Hilly Cloves with Oil | Spices Avako.in\";s:5:\"price\";d:149;s:8:\"quantity\";i:1;s:10:\"attributes\";O:41:\"Darryldecode\\Cart\\ItemAttributeCollection\":2:{s:8:\"\0*\0items\";a:6:{s:7:\"product\";O:32:\"Modules\\Product\\Entities\\Product\":35:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"products\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:1:{i:0;s:12:\"translations\";}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:22:{s:2:\"id\";i:14;s:8:\"brand_id\";N;s:12:\"tax_class_id\";N;s:4:\"slug\";s:60:\"cloves-kirambu-lavenham-hilly-cloves-with-oil-spices-avakoin\";s:5:\"price\";N;s:13:\"special_price\";N;s:18:\"special_price_type\";s:5:\"fixed\";s:19:\"special_price_start\";N;s:17:\"special_price_end\";N;s:13:\"selling_price\";N;s:3:\"sku\";N;s:12:\"manage_stock\";i:0;s:3:\"qty\";N;s:8:\"in_stock\";i:1;s:6:\"viewed\";i:1;s:9:\"is_active\";i:1;s:8:\"new_from\";N;s:6:\"new_to\";N;s:10:\"deleted_at\";N;s:10:\"created_at\";s:19:\"2025-07-03 02:38:22\";s:10:\"updated_at\";s:19:\"2025-07-09 21:48:28\";s:10:\"is_virtual\";i:0;}s:11:\"\0*\0original\";a:22:{s:2:\"id\";i:14;s:8:\"brand_id\";N;s:12:\"tax_class_id\";N;s:4:\"slug\";s:60:\"cloves-kirambu-lavenham-hilly-cloves-with-oil-spices-avakoin\";s:5:\"price\";N;s:13:\"special_price\";N;s:18:\"special_price_type\";s:5:\"fixed\";s:19:\"special_price_start\";N;s:17:\"special_price_end\";N;s:13:\"selling_price\";N;s:3:\"sku\";N;s:12:\"manage_stock\";i:0;s:3:\"qty\";N;s:8:\"in_stock\";i:1;s:6:\"viewed\";i:1;s:9:\"is_active\";i:1;s:8:\"new_from\";N;s:6:\"new_to\";N;s:10:\"deleted_at\";N;s:10:\"created_at\";s:19:\"2025-07-03 02:38:22\";s:10:\"updated_at\";s:19:\"2025-07-09 21:48:28\";s:10:\"is_virtual\";i:0;}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:9:{s:10:\"is_virtual\";s:7:\"boolean\";s:9:\"is_active\";s:7:\"boolean\";s:19:\"special_price_start\";s:8:\"datetime\";s:17:\"special_price_end\";s:8:\"datetime\";s:8:\"new_from\";s:8:\"datetime\";s:6:\"new_to\";s:8:\"datetime\";s:10:\"start_date\";s:8:\"datetime\";s:8:\"end_date\";s:8:\"datetime\";s:10:\"deleted_at\";s:8:\"datetime\";}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:13:{i:0;s:10:\"base_image\";i:1;s:17:\"additional_images\";i:2;s:5:\"media\";i:3;s:15:\"formatted_price\";i:4;s:21:\"formatted_price_range\";i:5;s:28:\"has_percentage_special_price\";i:6;s:21:\"special_price_percent\";i:7;s:14:\"rating_percent\";i:8;s:17:\"does_manage_stock\";i:9;s:11:\"is_in_stock\";i:10;s:15:\"is_out_of_stock\";i:11;s:6:\"is_new\";i:12;s:7:\"variant\";}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:4:{s:12:\"translations\";O:39:\"Illuminate\\Database\\Eloquent\\Collection\":2:{s:8:\"\0*\0items\";a:1:{i:0;O:43:\"Modules\\Product\\Entities\\ProductTranslation\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:20:\"product_translations\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:6:{s:2:\"id\";i:14;s:10:\"product_id\";i:14;s:6:\"locale\";s:2:\"en\";s:4:\"name\";s:96:\"Cloves | Kirambu | Lavenham | கிராம்பு | Hilly Cloves with Oil | Spices Avako.in\";s:11:\"description\";s:561:\"<p><strong>Avako Hilly Cloves are one of the most important and useful spices and its uses are</strong></p>\n<ul class=\"i8Z77e\">\n<li class=\"TrT0Xe\">Cloves as Natural Breath Fresheners.</li>\n<li class=\"TrT0Xe\">Cloves Spice acts as an Effective Digestive Aids.</li>\n<li class=\"TrT0Xe\">Powerful Antioxidant Properties of Cloves.</li>\n<li class=\"TrT0Xe\">Cloves and Their Positive Impact on Cardiovascular Health.</li>\n<li class=\"TrT0Xe\">Cloves&rsquo; Natural Anti-Inflammatory Compounds.</li>\n<li class=\"TrT0Xe\">Effect of cloves on blood sugar management.</li>\n</ul>\";s:17:\"short_description\";s:1111:\"Kodaikanal Avako.in Hilly Cloves are one of the most important and useful spices. They are the dried, unopened flower buds of Syzygium aromaicum. The shape of the bud is naillike. The plant is a small, conical evergreen tree.The value of Avako Hilly cloves is due to the presence of essential oil content\n\nCloves are aromatic and richly flavored. It is antiseptic in nature and used for tooth ache. It is also used in certain tooth paste and for mouth washing. . More recently, clove oil has been employed for its analgesic effects in dentistry. It is a preservative and is also used as a flavouring agent for meat dishes. It is also used to flavor a wide variety of sweet and savoury dishes. It has been an essential flavor component in many traditional dishes\n\nCloves are rich in nutrients such as manganese, Vitamin K & C.\nCloves not only have anti-inflammatory and antioxidant properties but they also help to boost your liver health, helps with digestion, relieve constipation, \nHelp to boost immunity and they act as natural pain relieverdue to its analgesic properties and its benefits don’t stop here.\";}s:11:\"\0*\0original\";a:6:{s:2:\"id\";i:14;s:10:\"product_id\";i:14;s:6:\"locale\";s:2:\"en\";s:4:\"name\";s:96:\"Cloves | Kirambu | Lavenham | கிராம்பு | Hilly Cloves with Oil | Spices Avako.in\";s:11:\"description\";s:561:\"<p><strong>Avako Hilly Cloves are one of the most important and useful spices and its uses are</strong></p>\n<ul class=\"i8Z77e\">\n<li class=\"TrT0Xe\">Cloves as Natural Breath Fresheners.</li>\n<li class=\"TrT0Xe\">Cloves Spice acts as an Effective Digestive Aids.</li>\n<li class=\"TrT0Xe\">Powerful Antioxidant Properties of Cloves.</li>\n<li class=\"TrT0Xe\">Cloves and Their Positive Impact on Cardiovascular Health.</li>\n<li class=\"TrT0Xe\">Cloves&rsquo; Natural Anti-Inflammatory Compounds.</li>\n<li class=\"TrT0Xe\">Effect of cloves on blood sugar management.</li>\n</ul>\";s:17:\"short_description\";s:1111:\"Kodaikanal Avako.in Hilly Cloves are one of the most important and useful spices. They are the dried, unopened flower buds of Syzygium aromaicum. The shape of the bud is naillike. The plant is a small, conical evergreen tree.The value of Avako Hilly cloves is due to the presence of essential oil content\n\nCloves are aromatic and richly flavored. It is antiseptic in nature and used for tooth ache. It is also used in certain tooth paste and for mouth washing. . More recently, clove oil has been employed for its analgesic effects in dentistry. It is a preservative and is also used as a flavouring agent for meat dishes. It is also used to flavor a wide variety of sweet and savoury dishes. It has been an essential flavor component in many traditional dishes\n\nCloves are rich in nutrients such as manganese, Vitamin K & C.\nCloves not only have anti-inflammatory and antioxidant properties but they also help to boost your liver health, helps with digestion, relieve constipation, \nHelp to boost immunity and they act as natural pain relieverdue to its analgesic properties and its benefits don’t stop here.\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:0;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:3:{i:0;s:4:\"name\";i:1;s:11:\"description\";i:2;s:17:\"short_description\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}s:5:\"files\";O:39:\"Illuminate\\Database\\Eloquent\\Collection\":2:{s:8:\"\0*\0items\";a:5:{i:0;O:27:\"Modules\\Media\\Entities\\File\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:5:\"files\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:10:{s:2:\"id\";i:96;s:7:\"user_id\";i:2;s:8:\"filename\";s:48:\"cloves-kirambu-lavenham-avako-hilly-cloves-1.jpg\";s:4:\"disk\";s:14:\"public_storage\";s:4:\"path\";s:50:\"media/BmPM0XwNdp7fAlIUNM84UE0KXu6r8BM9If5YGc2M.jpg\";s:9:\"extension\";s:3:\"jpg\";s:4:\"mime\";s:10:\"image/jpeg\";s:4:\"size\";s:6:\"140012\";s:10:\"created_at\";s:19:\"2025-07-03 02:35:42\";s:10:\"updated_at\";s:19:\"2025-07-03 02:35:42\";}s:11:\"\0*\0original\";a:17:{s:2:\"id\";i:96;s:7:\"user_id\";i:2;s:8:\"filename\";s:48:\"cloves-kirambu-lavenham-avako-hilly-cloves-1.jpg\";s:4:\"disk\";s:14:\"public_storage\";s:4:\"path\";s:50:\"media/BmPM0XwNdp7fAlIUNM84UE0KXu6r8BM9If5YGc2M.jpg\";s:9:\"extension\";s:3:\"jpg\";s:4:\"mime\";s:10:\"image/jpeg\";s:4:\"size\";s:6:\"140012\";s:10:\"created_at\";s:19:\"2025-07-03 02:35:42\";s:10:\"updated_at\";s:19:\"2025-07-03 02:35:42\";s:15:\"pivot_entity_id\";i:14;s:13:\"pivot_file_id\";i:96;s:17:\"pivot_entity_type\";s:32:\"Modules\\Product\\Entities\\Product\";s:8:\"pivot_id\";i:496;s:10:\"pivot_zone\";s:10:\"base_image\";s:16:\"pivot_created_at\";s:19:\"2025-07-09 21:48:28\";s:16:\"pivot_updated_at\";s:19:\"2025-07-09 21:48:28\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:1:{s:5:\"pivot\";O:49:\"Illuminate\\Database\\Eloquent\\Relations\\MorphPivot\":36:{s:13:\"\0*\0connection\";N;s:8:\"\0*\0table\";s:12:\"entity_files\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:0;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:7:{s:11:\"entity_type\";s:32:\"Modules\\Product\\Entities\\Product\";s:9:\"entity_id\";i:14;s:7:\"file_id\";i:96;s:2:\"id\";i:496;s:4:\"zone\";s:10:\"base_image\";s:10:\"created_at\";s:19:\"2025-07-09 21:48:28\";s:10:\"updated_at\";s:19:\"2025-07-09 21:48:28\";}s:11:\"\0*\0original\";a:7:{s:11:\"entity_type\";s:32:\"Modules\\Product\\Entities\\Product\";s:9:\"entity_id\";i:14;s:7:\"file_id\";i:96;s:2:\"id\";i:496;s:4:\"zone\";s:10:\"base_image\";s:10:\"created_at\";s:19:\"2025-07-09 21:48:28\";s:10:\"updated_at\";s:19:\"2025-07-09 21:48:28\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}s:11:\"pivotParent\";O:32:\"Modules\\Product\\Entities\\Product\":35:{s:13:\"\0*\0connection\";N;s:8:\"\0*\0table\";s:8:\"products\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:1:{i:0;s:12:\"translations\";}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:0;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:0:{}s:11:\"\0*\0original\";a:0:{}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:9:{s:10:\"is_virtual\";s:7:\"boolean\";s:9:\"is_active\";s:7:\"boolean\";s:19:\"special_price_start\";s:8:\"datetime\";s:17:\"special_price_end\";s:8:\"datetime\";s:8:\"new_from\";s:8:\"datetime\";s:6:\"new_to\";s:8:\"datetime\";s:10:\"start_date\";s:8:\"datetime\";s:8:\"end_date\";s:8:\"datetime\";s:10:\"deleted_at\";s:8:\"datetime\";}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:13:{i:0;s:10:\"base_image\";i:1;s:17:\"additional_images\";i:2;s:5:\"media\";i:3;s:15:\"formatted_price\";i:4;s:21:\"formatted_price_range\";i:5;s:28:\"has_percentage_special_price\";i:6;s:21:\"special_price_percent\";i:7;s:14:\"rating_percent\";i:8;s:17:\"does_manage_stock\";i:9;s:11:\"is_in_stock\";i:10;s:15:\"is_out_of_stock\";i:11;s:6:\"is_new\";i:12;s:7:\"variant\";}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:17:{i:0;s:8:\"brand_id\";i:1;s:12:\"tax_class_id\";i:2;s:4:\"slug\";i:3;s:3:\"sku\";i:4;s:5:\"price\";i:5;s:13:\"special_price\";i:6;s:18:\"special_price_type\";i:7;s:19:\"special_price_start\";i:8;s:17:\"special_price_end\";i:9;s:13:\"selling_price\";i:10;s:12:\"manage_stock\";i:11;s:3:\"qty\";i:12;s:8:\"in_stock\";i:13;s:10:\"is_virtual\";i:14;s:9:\"is_active\";i:15;s:8:\"new_from\";i:16;s:6:\"new_to\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}s:23:\"\0*\0translatedAttributes\";a:3:{i:0;s:4:\"name\";i:1;s:11:\"description\";i:2;s:17:\"short_description\";}s:16:\"\0*\0slugAttribute\";s:4:\"name\";s:16:\"\0*\0defaultLocale\";N;s:16:\"\0*\0scoutMetadata\";a:0:{}s:16:\"\0*\0forceDeleting\";b:0;}s:12:\"pivotRelated\";O:27:\"Modules\\Media\\Entities\\File\":30:{s:13:\"\0*\0connection\";N;s:8:\"\0*\0table\";N;s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:0;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:0:{}s:11:\"\0*\0original\";a:0:{}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:3:{i:0;s:2:\"id\";i:1;s:8:\"filename\";i:2;s:4:\"path\";}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}}s:13:\"\0*\0foreignKey\";s:9:\"entity_id\";s:13:\"\0*\0relatedKey\";s:7:\"file_id\";s:12:\"\0*\0morphType\";s:11:\"entity_type\";s:13:\"\0*\0morphClass\";s:32:\"Modules\\Product\\Entities\\Product\";}}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:3:{i:0;s:2:\"id\";i:1;s:8:\"filename\";i:2;s:4:\"path\";}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}}i:1;O:27:\"Modules\\Media\\Entities\\File\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:5:\"files\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:10:{s:2:\"id\";i:97;s:7:\"user_id\";i:2;s:8:\"filename\";s:48:\"cloves-kirambu-lavenham-avako-hilly-cloves-2.jpg\";s:4:\"disk\";s:14:\"public_storage\";s:4:\"path\";s:50:\"media/e1ChWOKtBvLinaaXcQZtvepXLg3zu06vJhOYQAOO.jpg\";s:9:\"extension\";s:3:\"jpg\";s:4:\"mime\";s:10:\"image/jpeg\";s:4:\"size\";s:6:\"128373\";s:10:\"created_at\";s:19:\"2025-07-03 02:35:42\";s:10:\"updated_at\";s:19:\"2025-07-03 02:35:42\";}s:11:\"\0*\0original\";a:17:{s:2:\"id\";i:97;s:7:\"user_id\";i:2;s:8:\"filename\";s:48:\"cloves-kirambu-lavenham-avako-hilly-cloves-2.jpg\";s:4:\"disk\";s:14:\"public_storage\";s:4:\"path\";s:50:\"media/e1ChWOKtBvLinaaXcQZtvepXLg3zu06vJhOYQAOO.jpg\";s:9:\"extension\";s:3:\"jpg\";s:4:\"mime\";s:10:\"image/jpeg\";s:4:\"size\";s:6:\"128373\";s:10:\"created_at\";s:19:\"2025-07-03 02:35:42\";s:10:\"updated_at\";s:19:\"2025-07-03 02:35:42\";s:15:\"pivot_entity_id\";i:14;s:13:\"pivot_file_id\";i:97;s:17:\"pivot_entity_type\";s:32:\"Modules\\Product\\Entities\\Product\";s:8:\"pivot_id\";i:497;s:10:\"pivot_zone\";s:17:\"additional_images\";s:16:\"pivot_created_at\";s:19:\"2025-07-09 21:48:28\";s:16:\"pivot_updated_at\";s:19:\"2025-07-09 21:48:28\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:1:{s:5:\"pivot\";O:49:\"Illuminate\\Database\\Eloquent\\Relations\\MorphPivot\":36:{s:13:\"\0*\0connection\";N;s:8:\"\0*\0table\";s:12:\"entity_files\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:0;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:7:{s:11:\"entity_type\";s:32:\"Modules\\Product\\Entities\\Product\";s:9:\"entity_id\";i:14;s:7:\"file_id\";i:97;s:2:\"id\";i:497;s:4:\"zone\";s:17:\"additional_images\";s:10:\"created_at\";s:19:\"2025-07-09 21:48:28\";s:10:\"updated_at\";s:19:\"2025-07-09 21:48:28\";}s:11:\"\0*\0original\";a:7:{s:11:\"entity_type\";s:32:\"Modules\\Product\\Entities\\Product\";s:9:\"entity_id\";i:14;s:7:\"file_id\";i:97;s:2:\"id\";i:497;s:4:\"zone\";s:17:\"additional_images\";s:10:\"created_at\";s:19:\"2025-07-09 21:48:28\";s:10:\"updated_at\";s:19:\"2025-07-09 21:48:28\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}s:11:\"pivotParent\";r:250;s:12:\"pivotRelated\";r:330;s:13:\"\0*\0foreignKey\";s:9:\"entity_id\";s:13:\"\0*\0relatedKey\";s:7:\"file_id\";s:12:\"\0*\0morphType\";s:11:\"entity_type\";s:13:\"\0*\0morphClass\";s:32:\"Modules\\Product\\Entities\\Product\";}}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:3:{i:0;s:2:\"id\";i:1;s:8:\"filename\";i:2;s:4:\"path\";}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}}i:2;O:27:\"Modules\\Media\\Entities\\File\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:5:\"files\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:10:{s:2:\"id\";i:98;s:7:\"user_id\";i:2;s:8:\"filename\";s:48:\"cloves-kirambu-lavenham-avako-hilly-cloves-3.jpg\";s:4:\"disk\";s:14:\"public_storage\";s:4:\"path\";s:50:\"media/xVRYnk2caRe4Yt3i5brEFzsUcUCLrLTzb15PlZ0L.jpg\";s:9:\"extension\";s:3:\"jpg\";s:4:\"mime\";s:10:\"image/jpeg\";s:4:\"size\";s:6:\"153704\";s:10:\"created_at\";s:19:\"2025-07-03 02:35:42\";s:10:\"updated_at\";s:19:\"2025-07-03 02:35:42\";}s:11:\"\0*\0original\";a:17:{s:2:\"id\";i:98;s:7:\"user_id\";i:2;s:8:\"filename\";s:48:\"cloves-kirambu-lavenham-avako-hilly-cloves-3.jpg\";s:4:\"disk\";s:14:\"public_storage\";s:4:\"path\";s:50:\"media/xVRYnk2caRe4Yt3i5brEFzsUcUCLrLTzb15PlZ0L.jpg\";s:9:\"extension\";s:3:\"jpg\";s:4:\"mime\";s:10:\"image/jpeg\";s:4:\"size\";s:6:\"153704\";s:10:\"created_at\";s:19:\"2025-07-03 02:35:42\";s:10:\"updated_at\";s:19:\"2025-07-03 02:35:42\";s:15:\"pivot_entity_id\";i:14;s:13:\"pivot_file_id\";i:98;s:17:\"pivot_entity_type\";s:32:\"Modules\\Product\\Entities\\Product\";s:8:\"pivot_id\";i:498;s:10:\"pivot_zone\";s:17:\"additional_images\";s:16:\"pivot_created_at\";s:19:\"2025-07-09 21:48:28\";s:16:\"pivot_updated_at\";s:19:\"2025-07-09 21:48:28\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:1:{s:5:\"pivot\";O:49:\"Illuminate\\Database\\Eloquent\\Relations\\MorphPivot\":36:{s:13:\"\0*\0connection\";N;s:8:\"\0*\0table\";s:12:\"entity_files\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:0;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:7:{s:11:\"entity_type\";s:32:\"Modules\\Product\\Entities\\Product\";s:9:\"entity_id\";i:14;s:7:\"file_id\";i:98;s:2:\"id\";i:498;s:4:\"zone\";s:17:\"additional_images\";s:10:\"created_at\";s:19:\"2025-07-09 21:48:28\";s:10:\"updated_at\";s:19:\"2025-07-09 21:48:28\";}s:11:\"\0*\0original\";a:7:{s:11:\"entity_type\";s:32:\"Modules\\Product\\Entities\\Product\";s:9:\"entity_id\";i:14;s:7:\"file_id\";i:98;s:2:\"id\";i:498;s:4:\"zone\";s:17:\"additional_images\";s:10:\"created_at\";s:19:\"2025-07-09 21:48:28\";s:10:\"updated_at\";s:19:\"2025-07-09 21:48:28\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}s:11:\"pivotParent\";r:250;s:12:\"pivotRelated\";r:330;s:13:\"\0*\0foreignKey\";s:9:\"entity_id\";s:13:\"\0*\0relatedKey\";s:7:\"file_id\";s:12:\"\0*\0morphType\";s:11:\"entity_type\";s:13:\"\0*\0morphClass\";s:32:\"Modules\\Product\\Entities\\Product\";}}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:3:{i:0;s:2:\"id\";i:1;s:8:\"filename\";i:2;s:4:\"path\";}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}}i:3;O:27:\"Modules\\Media\\Entities\\File\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:5:\"files\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:10:{s:2:\"id\";i:99;s:7:\"user_id\";i:2;s:8:\"filename\";s:48:\"cloves-kirambu-lavenham-avako-hilly-cloves-4.jpg\";s:4:\"disk\";s:14:\"public_storage\";s:4:\"path\";s:50:\"media/ys11uiY0UCR5FKubYR9wlV6sd56tOXMajSRjMfnD.jpg\";s:9:\"extension\";s:3:\"jpg\";s:4:\"mime\";s:10:\"image/jpeg\";s:4:\"size\";s:6:\"124727\";s:10:\"created_at\";s:19:\"2025-07-03 02:35:42\";s:10:\"updated_at\";s:19:\"2025-07-03 02:35:42\";}s:11:\"\0*\0original\";a:17:{s:2:\"id\";i:99;s:7:\"user_id\";i:2;s:8:\"filename\";s:48:\"cloves-kirambu-lavenham-avako-hilly-cloves-4.jpg\";s:4:\"disk\";s:14:\"public_storage\";s:4:\"path\";s:50:\"media/ys11uiY0UCR5FKubYR9wlV6sd56tOXMajSRjMfnD.jpg\";s:9:\"extension\";s:3:\"jpg\";s:4:\"mime\";s:10:\"image/jpeg\";s:4:\"size\";s:6:\"124727\";s:10:\"created_at\";s:19:\"2025-07-03 02:35:42\";s:10:\"updated_at\";s:19:\"2025-07-03 02:35:42\";s:15:\"pivot_entity_id\";i:14;s:13:\"pivot_file_id\";i:99;s:17:\"pivot_entity_type\";s:32:\"Modules\\Product\\Entities\\Product\";s:8:\"pivot_id\";i:499;s:10:\"pivot_zone\";s:17:\"additional_images\";s:16:\"pivot_created_at\";s:19:\"2025-07-09 21:48:28\";s:16:\"pivot_updated_at\";s:19:\"2025-07-09 21:48:28\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:1:{s:5:\"pivot\";O:49:\"Illuminate\\Database\\Eloquent\\Relations\\MorphPivot\":36:{s:13:\"\0*\0connection\";N;s:8:\"\0*\0table\";s:12:\"entity_files\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:0;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:7:{s:11:\"entity_type\";s:32:\"Modules\\Product\\Entities\\Product\";s:9:\"entity_id\";i:14;s:7:\"file_id\";i:99;s:2:\"id\";i:499;s:4:\"zone\";s:17:\"additional_images\";s:10:\"created_at\";s:19:\"2025-07-09 21:48:28\";s:10:\"updated_at\";s:19:\"2025-07-09 21:48:28\";}s:11:\"\0*\0original\";a:7:{s:11:\"entity_type\";s:32:\"Modules\\Product\\Entities\\Product\";s:9:\"entity_id\";i:14;s:7:\"file_id\";i:99;s:2:\"id\";i:499;s:4:\"zone\";s:17:\"additional_images\";s:10:\"created_at\";s:19:\"2025-07-09 21:48:28\";s:10:\"updated_at\";s:19:\"2025-07-09 21:48:28\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}s:11:\"pivotParent\";r:250;s:12:\"pivotRelated\";r:330;s:13:\"\0*\0foreignKey\";s:9:\"entity_id\";s:13:\"\0*\0relatedKey\";s:7:\"file_id\";s:12:\"\0*\0morphType\";s:11:\"entity_type\";s:13:\"\0*\0morphClass\";s:32:\"Modules\\Product\\Entities\\Product\";}}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:3:{i:0;s:2:\"id\";i:1;s:8:\"filename\";i:2;s:4:\"path\";}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}}i:4;O:27:\"Modules\\Media\\Entities\\File\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:5:\"files\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:10:{s:2:\"id\";i:100;s:7:\"user_id\";i:2;s:8:\"filename\";s:48:\"cloves-kirambu-lavenham-avako-hilly-cloves-5.jpg\";s:4:\"disk\";s:14:\"public_storage\";s:4:\"path\";s:50:\"media/yNJN7SUvGi7DDhRrYZOZHihkM34HXzI99xYroqbw.jpg\";s:9:\"extension\";s:3:\"jpg\";s:4:\"mime\";s:10:\"image/jpeg\";s:4:\"size\";s:6:\"139057\";s:10:\"created_at\";s:19:\"2025-07-03 02:35:42\";s:10:\"updated_at\";s:19:\"2025-07-03 02:35:42\";}s:11:\"\0*\0original\";a:17:{s:2:\"id\";i:100;s:7:\"user_id\";i:2;s:8:\"filename\";s:48:\"cloves-kirambu-lavenham-avako-hilly-cloves-5.jpg\";s:4:\"disk\";s:14:\"public_storage\";s:4:\"path\";s:50:\"media/yNJN7SUvGi7DDhRrYZOZHihkM34HXzI99xYroqbw.jpg\";s:9:\"extension\";s:3:\"jpg\";s:4:\"mime\";s:10:\"image/jpeg\";s:4:\"size\";s:6:\"139057\";s:10:\"created_at\";s:19:\"2025-07-03 02:35:42\";s:10:\"updated_at\";s:19:\"2025-07-03 02:35:42\";s:15:\"pivot_entity_id\";i:14;s:13:\"pivot_file_id\";i:100;s:17:\"pivot_entity_type\";s:32:\"Modules\\Product\\Entities\\Product\";s:8:\"pivot_id\";i:500;s:10:\"pivot_zone\";s:17:\"additional_images\";s:16:\"pivot_created_at\";s:19:\"2025-07-09 21:48:28\";s:16:\"pivot_updated_at\";s:19:\"2025-07-09 21:48:28\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:1:{s:5:\"pivot\";O:49:\"Illuminate\\Database\\Eloquent\\Relations\\MorphPivot\":36:{s:13:\"\0*\0connection\";N;s:8:\"\0*\0table\";s:12:\"entity_files\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:0;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:7:{s:11:\"entity_type\";s:32:\"Modules\\Product\\Entities\\Product\";s:9:\"entity_id\";i:14;s:7:\"file_id\";i:100;s:2:\"id\";i:500;s:4:\"zone\";s:17:\"additional_images\";s:10:\"created_at\";s:19:\"2025-07-09 21:48:28\";s:10:\"updated_at\";s:19:\"2025-07-09 21:48:28\";}s:11:\"\0*\0original\";a:7:{s:11:\"entity_type\";s:32:\"Modules\\Product\\Entities\\Product\";s:9:\"entity_id\";i:14;s:7:\"file_id\";i:100;s:2:\"id\";i:500;s:4:\"zone\";s:17:\"additional_images\";s:10:\"created_at\";s:19:\"2025-07-09 21:48:28\";s:10:\"updated_at\";s:19:\"2025-07-09 21:48:28\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}s:11:\"pivotParent\";r:250;s:12:\"pivotRelated\";r:330;s:13:\"\0*\0foreignKey\";s:9:\"entity_id\";s:13:\"\0*\0relatedKey\";s:7:\"file_id\";s:12:\"\0*\0morphType\";s:11:\"entity_type\";s:13:\"\0*\0morphClass\";s:32:\"Modules\\Product\\Entities\\Product\";}}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:3:{i:0;s:2:\"id\";i:1;s:8:\"filename\";i:2;s:4:\"path\";}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}}}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}s:10:\"categories\";O:26:\"TypiCMS\\NestableCollection\":8:{s:8:\"\0*\0items\";a:2:{i:0;O:34:\"Modules\\Category\\Entities\\Category\":33:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:10:\"categories\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:1:{i:0;s:12:\"translations\";}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:8:{s:2:\"id\";i:9;s:9:\"parent_id\";N;s:4:\"slug\";s:21:\"biriyani-hilly-spices\";s:8:\"position\";N;s:13:\"is_searchable\";i:1;s:9:\"is_active\";i:1;s:10:\"created_at\";s:19:\"2025-06-29 13:21:47\";s:10:\"updated_at\";s:19:\"2025-07-03 02:10:58\";}s:11:\"\0*\0original\";a:10:{s:2:\"id\";i:9;s:9:\"parent_id\";N;s:4:\"slug\";s:21:\"biriyani-hilly-spices\";s:8:\"position\";N;s:13:\"is_searchable\";i:1;s:9:\"is_active\";i:1;s:10:\"created_at\";s:19:\"2025-06-29 13:21:47\";s:10:\"updated_at\";s:19:\"2025-07-03 02:10:58\";s:16:\"pivot_product_id\";i:14;s:17:\"pivot_category_id\";i:9;}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:2:{s:13:\"is_searchable\";s:7:\"boolean\";s:9:\"is_active\";s:7:\"boolean\";}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:2:{s:5:\"pivot\";O:44:\"Illuminate\\Database\\Eloquent\\Relations\\Pivot\":34:{s:13:\"\0*\0connection\";N;s:8:\"\0*\0table\";s:18:\"product_categories\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:0;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:2:{s:10:\"product_id\";i:14;s:11:\"category_id\";i:9;}s:11:\"\0*\0original\";a:2:{s:10:\"product_id\";i:14;s:11:\"category_id\";i:9;}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:0;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}s:11:\"pivotParent\";O:32:\"Modules\\Product\\Entities\\Product\":35:{s:13:\"\0*\0connection\";N;s:8:\"\0*\0table\";s:8:\"products\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:1:{i:0;s:12:\"translations\";}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:0;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:0:{}s:11:\"\0*\0original\";a:0:{}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:9:{s:10:\"is_virtual\";s:7:\"boolean\";s:9:\"is_active\";s:7:\"boolean\";s:19:\"special_price_start\";s:8:\"datetime\";s:17:\"special_price_end\";s:8:\"datetime\";s:8:\"new_from\";s:8:\"datetime\";s:6:\"new_to\";s:8:\"datetime\";s:10:\"start_date\";s:8:\"datetime\";s:8:\"end_date\";s:8:\"datetime\";s:10:\"deleted_at\";s:8:\"datetime\";}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:13:{i:0;s:10:\"base_image\";i:1;s:17:\"additional_images\";i:2;s:5:\"media\";i:3;s:15:\"formatted_price\";i:4;s:21:\"formatted_price_range\";i:5;s:28:\"has_percentage_special_price\";i:6;s:21:\"special_price_percent\";i:7;s:14:\"rating_percent\";i:8;s:17:\"does_manage_stock\";i:9;s:11:\"is_in_stock\";i:10;s:15:\"is_out_of_stock\";i:11;s:6:\"is_new\";i:12;s:7:\"variant\";}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:17:{i:0;s:8:\"brand_id\";i:1;s:12:\"tax_class_id\";i:2;s:4:\"slug\";i:3;s:3:\"sku\";i:4;s:5:\"price\";i:5;s:13:\"special_price\";i:6;s:18:\"special_price_type\";i:7;s:19:\"special_price_start\";i:8;s:17:\"special_price_end\";i:9;s:13:\"selling_price\";i:10;s:12:\"manage_stock\";i:11;s:3:\"qty\";i:12;s:8:\"in_stock\";i:13;s:10:\"is_virtual\";i:14;s:9:\"is_active\";i:15;s:8:\"new_from\";i:16;s:6:\"new_to\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}s:23:\"\0*\0translatedAttributes\";a:3:{i:0;s:4:\"name\";i:1;s:11:\"description\";i:2;s:17:\"short_description\";}s:16:\"\0*\0slugAttribute\";s:4:\"name\";s:16:\"\0*\0defaultLocale\";N;s:16:\"\0*\0scoutMetadata\";a:0:{}s:16:\"\0*\0forceDeleting\";b:0;}s:12:\"pivotRelated\";O:34:\"Modules\\Category\\Entities\\Category\":33:{s:13:\"\0*\0connection\";N;s:8:\"\0*\0table\";N;s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:1:{i:0;s:12:\"translations\";}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:0;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:0:{}s:11:\"\0*\0original\";a:0:{}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:2:{s:13:\"is_searchable\";s:7:\"boolean\";s:9:\"is_active\";s:7:\"boolean\";}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:1:{i:0;s:12:\"translations\";}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:5:{i:0;s:9:\"parent_id\";i:1;s:4:\"slug\";i:2;s:8:\"position\";i:3;s:13:\"is_searchable\";i:4;s:9:\"is_active\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}s:23:\"\0*\0translatedAttributes\";a:1:{i:0;s:4:\"name\";}s:16:\"\0*\0slugAttribute\";s:4:\"name\";s:16:\"\0*\0defaultLocale\";N;}s:13:\"\0*\0foreignKey\";s:10:\"product_id\";s:13:\"\0*\0relatedKey\";s:11:\"category_id\";}s:12:\"translations\";O:39:\"Illuminate\\Database\\Eloquent\\Collection\":2:{s:8:\"\0*\0items\";a:1:{i:0;O:45:\"Modules\\Category\\Entities\\CategoryTranslation\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:21:\"category_translations\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:4:{s:2:\"id\";i:9;s:11:\"category_id\";i:9;s:6:\"locale\";s:2:\"en\";s:4:\"name\";s:21:\"Biriyani Hilly Spices\";}s:11:\"\0*\0original\";a:4:{s:2:\"id\";i:9;s:11:\"category_id\";i:9;s:6:\"locale\";s:2:\"en\";s:4:\"name\";s:21:\"Biriyani Hilly Spices\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:0;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:1:{i:0;s:4:\"name\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:1:{i:0;s:12:\"translations\";}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:5:{i:0;s:9:\"parent_id\";i:1;s:4:\"slug\";i:2;s:8:\"position\";i:3;s:13:\"is_searchable\";i:4;s:9:\"is_active\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}s:23:\"\0*\0translatedAttributes\";a:1:{i:0;s:4:\"name\";}s:16:\"\0*\0slugAttribute\";s:4:\"name\";s:16:\"\0*\0defaultLocale\";N;}i:1;O:34:\"Modules\\Category\\Entities\\Category\":33:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:10:\"categories\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:1:{i:0;s:12:\"translations\";}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:8:{s:2:\"id\";i:17;s:9:\"parent_id\";N;s:4:\"slug\";s:21:\"hilly-spices-original\";s:8:\"position\";N;s:13:\"is_searchable\";i:1;s:9:\"is_active\";i:1;s:10:\"created_at\";s:19:\"2025-06-29 13:23:05\";s:10:\"updated_at\";s:19:\"2025-07-03 02:12:30\";}s:11:\"\0*\0original\";a:10:{s:2:\"id\";i:17;s:9:\"parent_id\";N;s:4:\"slug\";s:21:\"hilly-spices-original\";s:8:\"position\";N;s:13:\"is_searchable\";i:1;s:9:\"is_active\";i:1;s:10:\"created_at\";s:19:\"2025-06-29 13:23:05\";s:10:\"updated_at\";s:19:\"2025-07-03 02:12:30\";s:16:\"pivot_product_id\";i:14;s:17:\"pivot_category_id\";i:17;}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:2:{s:13:\"is_searchable\";s:7:\"boolean\";s:9:\"is_active\";s:7:\"boolean\";}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:2:{s:5:\"pivot\";O:44:\"Illuminate\\Database\\Eloquent\\Relations\\Pivot\":34:{s:13:\"\0*\0connection\";N;s:8:\"\0*\0table\";s:18:\"product_categories\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:0;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:2:{s:10:\"product_id\";i:14;s:11:\"category_id\";i:17;}s:11:\"\0*\0original\";a:2:{s:10:\"product_id\";i:14;s:11:\"category_id\";i:17;}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:0;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}s:11:\"pivotParent\";r:909;s:12:\"pivotRelated\";r:989;s:13:\"\0*\0foreignKey\";s:10:\"product_id\";s:13:\"\0*\0relatedKey\";s:11:\"category_id\";}s:12:\"translations\";O:39:\"Illuminate\\Database\\Eloquent\\Collection\":2:{s:8:\"\0*\0items\";a:1:{i:0;O:45:\"Modules\\Category\\Entities\\CategoryTranslation\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:21:\"category_translations\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:4:{s:2:\"id\";i:17;s:11:\"category_id\";i:17;s:6:\"locale\";s:2:\"en\";s:4:\"name\";s:21:\"Hilly Spices Original\";}s:11:\"\0*\0original\";a:4:{s:2:\"id\";i:17;s:11:\"category_id\";i:17;s:6:\"locale\";s:2:\"en\";s:4:\"name\";s:21:\"Hilly Spices Original\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:0;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:1:{i:0;s:4:\"name\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:1:{i:0;s:12:\"translations\";}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:5:{i:0;s:9:\"parent_id\";i:1;s:4:\"slug\";i:2;s:8:\"position\";i:3;s:13:\"is_searchable\";i:4;s:9:\"is_active\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}s:23:\"\0*\0translatedAttributes\";a:1:{i:0;s:4:\"name\";}s:16:\"\0*\0slugAttribute\";s:4:\"name\";s:16:\"\0*\0defaultLocale\";N;}}s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:8:\"\0*\0total\";i:2;s:15:\"\0*\0parentColumn\";s:9:\"parent_id\";s:33:\"\0*\0removeItemsWithMissingAncestor\";b:1;s:14:\"\0*\0indentChars\";s:8:\"    \";s:15:\"\0*\0childrenName\";s:5:\"items\";s:17:\"\0*\0parentRelation\";s:6:\"parent\";}s:8:\"taxClass\";O:29:\"Modules\\Tax\\Entities\\TaxClass\":33:{s:13:\"\0*\0connection\";N;s:8:\"\0*\0table\";s:11:\"tax_classes\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:1:{i:0;s:12:\"translations\";}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:0;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:0:{}s:11:\"\0*\0original\";a:0:{}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:3:{s:10:\"start_date\";s:8:\"datetime\";s:8:\"end_date\";s:8:\"datetime\";s:10:\"deleted_at\";s:8:\"datetime\";}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:1:{i:0;s:8:\"based_on\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}s:20:\"translatedAttributes\";a:1:{i:0;s:5:\"label\";}s:16:\"\0*\0defaultLocale\";N;s:16:\"\0*\0forceDeleting\";b:0;}}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:17:{i:0;s:8:\"brand_id\";i:1;s:12:\"tax_class_id\";i:2;s:4:\"slug\";i:3;s:3:\"sku\";i:4;s:5:\"price\";i:5;s:13:\"special_price\";i:6;s:18:\"special_price_type\";i:7;s:19:\"special_price_start\";i:8;s:17:\"special_price_end\";i:9;s:13:\"selling_price\";i:10;s:12:\"manage_stock\";i:11;s:3:\"qty\";i:12;s:8:\"in_stock\";i:13;s:10:\"is_virtual\";i:14;s:9:\"is_active\";i:15;s:8:\"new_from\";i:16;s:6:\"new_to\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}s:23:\"\0*\0translatedAttributes\";a:3:{i:0;s:4:\"name\";i:1;s:11:\"description\";i:2;s:17:\"short_description\";}s:16:\"\0*\0slugAttribute\";s:4:\"name\";s:16:\"\0*\0defaultLocale\";N;s:16:\"\0*\0scoutMetadata\";a:0:{}s:16:\"\0*\0forceDeleting\";b:0;}s:7:\"variant\";O:39:\"Modules\\Product\\Entities\\ProductVariant\":31:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:16:\"product_variants\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:1:{i:0;s:5:\"files\";}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:21:{s:2:\"id\";i:27;s:3:\"uid\";s:32:\"e22b336ea33bfc4242693d3c580af3dd\";s:4:\"uids\";s:12:\"dduqa5kbnzaz\";s:10:\"product_id\";i:14;s:4:\"name\";s:6:\"150gms\";s:5:\"price\";s:8:\"209.0000\";s:13:\"special_price\";s:8:\"149.0000\";s:18:\"special_price_type\";s:5:\"fixed\";s:19:\"special_price_start\";N;s:17:\"special_price_end\";N;s:13:\"selling_price\";s:8:\"149.0000\";s:3:\"sku\";N;s:12:\"manage_stock\";i:0;s:3:\"qty\";N;s:8:\"in_stock\";i:1;s:10:\"is_default\";i:1;s:9:\"is_active\";i:1;s:8:\"position\";i:1;s:10:\"deleted_at\";N;s:10:\"created_at\";s:19:\"2025-07-03 02:38:22\";s:10:\"updated_at\";s:19:\"2025-07-09 21:48:28\";}s:11:\"\0*\0original\";a:21:{s:2:\"id\";i:27;s:3:\"uid\";s:32:\"e22b336ea33bfc4242693d3c580af3dd\";s:4:\"uids\";s:12:\"dduqa5kbnzaz\";s:10:\"product_id\";i:14;s:4:\"name\";s:6:\"150gms\";s:5:\"price\";s:8:\"209.0000\";s:13:\"special_price\";s:8:\"149.0000\";s:18:\"special_price_type\";s:5:\"fixed\";s:19:\"special_price_start\";N;s:17:\"special_price_end\";N;s:13:\"selling_price\";s:8:\"149.0000\";s:3:\"sku\";N;s:12:\"manage_stock\";i:0;s:3:\"qty\";N;s:8:\"in_stock\";i:1;s:10:\"is_default\";i:1;s:9:\"is_active\";i:1;s:8:\"position\";i:1;s:10:\"deleted_at\";N;s:10:\"created_at\";s:19:\"2025-07-03 02:38:22\";s:10:\"updated_at\";s:19:\"2025-07-09 21:48:28\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:5:{s:9:\"is_active\";s:7:\"boolean\";s:10:\"is_default\";s:7:\"boolean\";s:19:\"special_price_start\";s:8:\"datetime\";s:17:\"special_price_end\";s:8:\"datetime\";s:10:\"deleted_at\";s:8:\"datetime\";}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:9:{i:0;s:10:\"base_image\";i:1;s:17:\"additional_images\";i:2;s:5:\"media\";i:3;s:15:\"formatted_price\";i:4;s:28:\"has_percentage_special_price\";i:5;s:21:\"special_price_percent\";i:6;s:17:\"does_manage_stock\";i:7;s:11:\"is_in_stock\";i:8;s:15:\"is_out_of_stock\";}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:1:{s:5:\"files\";O:39:\"Illuminate\\Database\\Eloquent\\Collection\":2:{s:8:\"\0*\0items\";a:1:{i:0;O:27:\"Modules\\Media\\Entities\\File\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:5:\"files\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:10:{s:2:\"id\";i:96;s:7:\"user_id\";i:2;s:8:\"filename\";s:48:\"cloves-kirambu-lavenham-avako-hilly-cloves-1.jpg\";s:4:\"disk\";s:14:\"public_storage\";s:4:\"path\";s:50:\"media/BmPM0XwNdp7fAlIUNM84UE0KXu6r8BM9If5YGc2M.jpg\";s:9:\"extension\";s:3:\"jpg\";s:4:\"mime\";s:10:\"image/jpeg\";s:4:\"size\";s:6:\"140012\";s:10:\"created_at\";s:19:\"2025-07-03 02:35:42\";s:10:\"updated_at\";s:19:\"2025-07-03 02:35:42\";}s:11:\"\0*\0original\";a:17:{s:2:\"id\";i:96;s:7:\"user_id\";i:2;s:8:\"filename\";s:48:\"cloves-kirambu-lavenham-avako-hilly-cloves-1.jpg\";s:4:\"disk\";s:14:\"public_storage\";s:4:\"path\";s:50:\"media/BmPM0XwNdp7fAlIUNM84UE0KXu6r8BM9If5YGc2M.jpg\";s:9:\"extension\";s:3:\"jpg\";s:4:\"mime\";s:10:\"image/jpeg\";s:4:\"size\";s:6:\"140012\";s:10:\"created_at\";s:19:\"2025-07-03 02:35:42\";s:10:\"updated_at\";s:19:\"2025-07-03 02:35:42\";s:15:\"pivot_entity_id\";i:27;s:13:\"pivot_file_id\";i:96;s:17:\"pivot_entity_type\";s:39:\"Modules\\Product\\Entities\\ProductVariant\";s:8:\"pivot_id\";i:492;s:10:\"pivot_zone\";s:10:\"base_image\";s:16:\"pivot_created_at\";s:19:\"2025-07-09 21:48:28\";s:16:\"pivot_updated_at\";s:19:\"2025-07-09 21:48:28\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:1:{s:5:\"pivot\";O:49:\"Illuminate\\Database\\Eloquent\\Relations\\MorphPivot\":36:{s:13:\"\0*\0connection\";N;s:8:\"\0*\0table\";s:12:\"entity_files\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:0;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:7:{s:11:\"entity_type\";s:39:\"Modules\\Product\\Entities\\ProductVariant\";s:9:\"entity_id\";i:27;s:7:\"file_id\";i:96;s:2:\"id\";i:492;s:4:\"zone\";s:10:\"base_image\";s:10:\"created_at\";s:19:\"2025-07-09 21:48:28\";s:10:\"updated_at\";s:19:\"2025-07-09 21:48:28\";}s:11:\"\0*\0original\";a:7:{s:11:\"entity_type\";s:39:\"Modules\\Product\\Entities\\ProductVariant\";s:9:\"entity_id\";i:27;s:7:\"file_id\";i:96;s:2:\"id\";i:492;s:4:\"zone\";s:10:\"base_image\";s:10:\"created_at\";s:19:\"2025-07-09 21:48:28\";s:10:\"updated_at\";s:19:\"2025-07-09 21:48:28\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}s:11:\"pivotParent\";O:39:\"Modules\\Product\\Entities\\ProductVariant\":31:{s:13:\"\0*\0connection\";N;s:8:\"\0*\0table\";s:16:\"product_variants\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:1:{i:0;s:5:\"files\";}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:0;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:0:{}s:11:\"\0*\0original\";a:0:{}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:5:{s:9:\"is_active\";s:7:\"boolean\";s:10:\"is_default\";s:7:\"boolean\";s:19:\"special_price_start\";s:8:\"datetime\";s:17:\"special_price_end\";s:8:\"datetime\";s:10:\"deleted_at\";s:8:\"datetime\";}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:9:{i:0;s:10:\"base_image\";i:1;s:17:\"additional_images\";i:2;s:5:\"media\";i:3;s:15:\"formatted_price\";i:4;s:28:\"has_percentage_special_price\";i:5;s:21:\"special_price_percent\";i:6;s:17:\"does_manage_stock\";i:7;s:11:\"is_in_stock\";i:8;s:15:\"is_out_of_stock\";}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:16:{i:0;s:3:\"uid\";i:1;s:4:\"uids\";i:2;s:4:\"name\";i:3;s:3:\"sku\";i:4;s:8:\"position\";i:5;s:5:\"price\";i:6;s:13:\"special_price\";i:7;s:18:\"special_price_type\";i:8;s:19:\"special_price_start\";i:9;s:17:\"special_price_end\";i:10;s:13:\"selling_price\";i:11;s:12:\"manage_stock\";i:12;s:3:\"qty\";i:13;s:8:\"in_stock\";i:14;s:9:\"is_active\";i:15;s:10:\"is_default\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}s:16:\"\0*\0forceDeleting\";b:0;}s:12:\"pivotRelated\";O:27:\"Modules\\Media\\Entities\\File\":30:{s:13:\"\0*\0connection\";N;s:8:\"\0*\0table\";N;s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:0;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:0:{}s:11:\"\0*\0original\";a:0:{}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:3:{i:0;s:2:\"id\";i:1;s:8:\"filename\";i:2;s:4:\"path\";}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}}s:13:\"\0*\0foreignKey\";s:9:\"entity_id\";s:13:\"\0*\0relatedKey\";s:7:\"file_id\";s:12:\"\0*\0morphType\";s:11:\"entity_type\";s:13:\"\0*\0morphClass\";s:39:\"Modules\\Product\\Entities\\ProductVariant\";}}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:3:{i:0;s:2:\"id\";i:1;s:8:\"filename\";i:2;s:4:\"path\";}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}}}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:16:{i:0;s:3:\"uid\";i:1;s:4:\"uids\";i:2;s:4:\"name\";i:3;s:3:\"sku\";i:4;s:8:\"position\";i:5;s:5:\"price\";i:6;s:13:\"special_price\";i:7;s:18:\"special_price_type\";i:8;s:19:\"special_price_start\";i:9;s:17:\"special_price_end\";i:10;s:13:\"selling_price\";i:11;s:12:\"manage_stock\";i:12;s:3:\"qty\";i:13;s:8:\"in_stock\";i:14;s:9:\"is_active\";i:15;s:10:\"is_default\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}s:16:\"\0*\0forceDeleting\";b:0;}s:4:\"item\";r:1325;s:10:\"variations\";O:39:\"Illuminate\\Database\\Eloquent\\Collection\":2:{s:8:\"\0*\0items\";a:1:{i:0;O:36:\"Modules\\Variation\\Entities\\Variation\":33:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:10:\"variations\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:2:{i:0;s:12:\"translations\";i:1;s:6:\"values\";}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:8:{s:2:\"id\";i:13;s:3:\"uid\";s:12:\"hg69ke8tcxfi\";s:4:\"type\";s:4:\"text\";s:9:\"is_global\";i:0;s:8:\"position\";i:1;s:10:\"deleted_at\";N;s:10:\"created_at\";s:19:\"2025-07-03 02:38:22\";s:10:\"updated_at\";s:19:\"2025-07-03 02:38:22\";}s:11:\"\0*\0original\";a:10:{s:2:\"id\";i:13;s:3:\"uid\";s:12:\"hg69ke8tcxfi\";s:4:\"type\";s:4:\"text\";s:9:\"is_global\";i:0;s:8:\"position\";i:1;s:10:\"deleted_at\";N;s:10:\"created_at\";s:19:\"2025-07-03 02:38:22\";s:10:\"updated_at\";s:19:\"2025-07-03 02:38:22\";s:16:\"pivot_product_id\";i:14;s:18:\"pivot_variation_id\";i:13;}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:2:{s:9:\"is_global\";s:7:\"boolean\";s:10:\"deleted_at\";s:8:\"datetime\";}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:3:{s:5:\"pivot\";O:44:\"Illuminate\\Database\\Eloquent\\Relations\\Pivot\":34:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:18:\"product_variations\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:0;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:2:{s:10:\"product_id\";i:14;s:12:\"variation_id\";i:13;}s:11:\"\0*\0original\";a:2:{s:10:\"product_id\";i:14;s:12:\"variation_id\";i:13;}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:0;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}s:11:\"pivotParent\";r:11;s:12:\"pivotRelated\";O:36:\"Modules\\Variation\\Entities\\Variation\":33:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";N;s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:2:{i:0;s:12:\"translations\";i:1;s:6:\"values\";}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:0;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:0:{}s:11:\"\0*\0original\";a:0:{}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:2:{s:9:\"is_global\";s:7:\"boolean\";s:10:\"deleted_at\";s:8:\"datetime\";}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:4:{i:0;s:3:\"uid\";i:1;s:4:\"type\";i:2;s:9:\"is_global\";i:3;s:8:\"position\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}s:23:\"\0*\0translatedAttributes\";a:1:{i:0;s:4:\"name\";}s:16:\"\0*\0defaultLocale\";N;s:16:\"\0*\0forceDeleting\";b:0;}s:13:\"\0*\0foreignKey\";s:10:\"product_id\";s:13:\"\0*\0relatedKey\";s:12:\"variation_id\";}s:12:\"translations\";O:39:\"Illuminate\\Database\\Eloquent\\Collection\":2:{s:8:\"\0*\0items\";a:1:{i:0;O:47:\"Modules\\Variation\\Entities\\VariationTranslation\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:22:\"variation_translations\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:4:{s:2:\"id\";i:13;s:12:\"variation_id\";i:13;s:6:\"locale\";s:2:\"en\";s:4:\"name\";s:6:\"Weight\";}s:11:\"\0*\0original\";a:4:{s:2:\"id\";i:13;s:12:\"variation_id\";i:13;s:6:\"locale\";s:2:\"en\";s:4:\"name\";s:6:\"Weight\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:0;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:1:{i:0;s:4:\"name\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}s:6:\"values\";O:39:\"Illuminate\\Database\\Eloquent\\Collection\":2:{s:8:\"\0*\0items\";a:1:{i:0;O:41:\"Modules\\Variation\\Entities\\VariationValue\":32:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:16:\"variation_values\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:1:{i:0;s:12:\"translations\";}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:7:{s:2:\"id\";i:59;s:3:\"uid\";s:12:\"dduqa5kbnzaz\";s:12:\"variation_id\";i:13;s:5:\"value\";s:0:\"\";s:8:\"position\";i:1;s:10:\"created_at\";s:19:\"2025-07-03 02:38:22\";s:10:\"updated_at\";s:19:\"2025-07-03 02:38:22\";}s:11:\"\0*\0original\";a:7:{s:2:\"id\";i:59;s:3:\"uid\";s:12:\"dduqa5kbnzaz\";s:12:\"variation_id\";i:13;s:5:\"value\";s:0:\"\";s:8:\"position\";i:1;s:10:\"created_at\";s:19:\"2025-07-03 02:38:22\";s:10:\"updated_at\";s:19:\"2025-07-03 02:38:22\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:2:{i:0;s:5:\"color\";i:1;s:5:\"image\";}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:1:{s:12:\"translations\";O:39:\"Illuminate\\Database\\Eloquent\\Collection\":2:{s:8:\"\0*\0items\";a:1:{i:0;O:52:\"Modules\\Variation\\Entities\\VariationValueTranslation\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:28:\"variation_value_translations\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:4:{s:2:\"id\";i:59;s:18:\"variation_value_id\";i:59;s:6:\"locale\";s:2:\"en\";s:5:\"label\";s:6:\"150gms\";}s:11:\"\0*\0original\";a:4:{s:2:\"id\";i:59;s:18:\"variation_value_id\";i:59;s:6:\"locale\";s:2:\"en\";s:5:\"label\";s:6:\"150gms\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:0;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:1:{i:0;s:5:\"label\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:3:{i:0;s:3:\"uid\";i:1;s:5:\"value\";i:2;s:8:\"position\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}s:23:\"\0*\0translatedAttributes\";a:1:{i:0;s:5:\"label\";}s:16:\"\0*\0defaultLocale\";N;}}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:4:{i:0;s:3:\"uid\";i:1;s:4:\"type\";i:2;s:9:\"is_global\";i:3;s:8:\"position\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}s:23:\"\0*\0translatedAttributes\";a:1:{i:0;s:4:\"name\";}s:16:\"\0*\0defaultLocale\";N;s:16:\"\0*\0forceDeleting\";b:0;}}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}s:7:\"options\";O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}s:10:\"created_at\";i:1752214950;}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}s:10:\"conditions\";a:0:{}}s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:9:\"\0*\0config\";a:5:{s:14:\"format_numbers\";b:0;s:8:\"decimals\";i:0;s:9:\"dec_point\";s:1:\".\";s:13:\"thousands_sep\";s:1:\",\";s:6:\"events\";N;}}}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2025-07-11 06:22:30', '2025-07-11 06:22:30');
INSERT INTO `carts` (`id`, `data`, `created_at`, `updated_at`) VALUES
('Zx0m7KvbeleT93Ye3SbsIEI0N0dpXoAejtB9MFH1_cart_conditions', 'O:41:\"Darryldecode\\Cart\\CartConditionCollection\":2:{s:8:\"\0*\0items\";a:1:{s:13:\"Free Shipping\";O:26:\"Modules\\Cart\\CartCondition\":2:{s:37:\"\0Darryldecode\\Cart\\CartCondition\0args\";a:6:{s:4:\"name\";s:13:\"Free Shipping\";s:4:\"type\";s:15:\"shipping_method\";s:6:\"target\";s:5:\"total\";s:5:\"value\";i:0;s:5:\"order\";i:1;s:10:\"attributes\";a:1:{s:15:\"shipping_method\";O:23:\"Modules\\Shipping\\Method\":3:{s:4:\"name\";s:13:\"free_shipping\";s:5:\"label\";s:13:\"Free Shipping\";s:4:\"cost\";O:21:\"Modules\\Support\\Money\":2:{s:29:\"\0Modules\\Support\\Money\0amount\";i:0;s:31:\"\0Modules\\Support\\Money\0currency\";s:3:\"INR\";}}}}s:14:\"parsedRawValue\";N;}}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2025-06-29 09:11:37', '2025-06-29 09:11:38'),
('Zx0m7KvbeleT93Ye3SbsIEI0N0dpXoAejtB9MFH1_cart_items', 'O:32:\"Darryldecode\\Cart\\CartCollection\":2:{s:8:\"\0*\0items\";a:1:{s:32:\"038ae6e63e8ba11b5b7df16b5b9f0c97\";O:32:\"Darryldecode\\Cart\\ItemCollection\":3:{s:8:\"\0*\0items\";a:6:{s:2:\"id\";s:32:\"038ae6e63e8ba11b5b7df16b5b9f0c97\";s:4:\"name\";s:57:\"Custard Apple Hill |Sitha | Fresh Organic Fruit | Premium\";s:5:\"price\";d:320;s:8:\"quantity\";i:1;s:10:\"attributes\";O:41:\"Darryldecode\\Cart\\ItemAttributeCollection\":2:{s:8:\"\0*\0items\";a:6:{s:7:\"product\";O:32:\"Modules\\Product\\Entities\\Product\":35:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"products\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:1:{i:0;s:12:\"translations\";}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:22:{s:2:\"id\";i:4;s:8:\"brand_id\";N;s:12:\"tax_class_id\";N;s:4:\"slug\";s:52:\"custard-apple-hill-sitha-fresh-organic-fruit-premium\";s:5:\"price\";N;s:13:\"special_price\";N;s:18:\"special_price_type\";s:5:\"fixed\";s:19:\"special_price_start\";N;s:17:\"special_price_end\";N;s:13:\"selling_price\";N;s:3:\"sku\";N;s:12:\"manage_stock\";i:0;s:3:\"qty\";N;s:8:\"in_stock\";i:1;s:6:\"viewed\";i:1;s:9:\"is_active\";i:1;s:8:\"new_from\";N;s:6:\"new_to\";N;s:10:\"deleted_at\";N;s:10:\"created_at\";s:19:\"2025-06-29 14:41:11\";s:10:\"updated_at\";s:19:\"2025-06-29 14:41:11\";s:10:\"is_virtual\";i:0;}s:11:\"\0*\0original\";a:22:{s:2:\"id\";i:4;s:8:\"brand_id\";N;s:12:\"tax_class_id\";N;s:4:\"slug\";s:52:\"custard-apple-hill-sitha-fresh-organic-fruit-premium\";s:5:\"price\";N;s:13:\"special_price\";N;s:18:\"special_price_type\";s:5:\"fixed\";s:19:\"special_price_start\";N;s:17:\"special_price_end\";N;s:13:\"selling_price\";N;s:3:\"sku\";N;s:12:\"manage_stock\";i:0;s:3:\"qty\";N;s:8:\"in_stock\";i:1;s:6:\"viewed\";i:1;s:9:\"is_active\";i:1;s:8:\"new_from\";N;s:6:\"new_to\";N;s:10:\"deleted_at\";N;s:10:\"created_at\";s:19:\"2025-06-29 14:41:11\";s:10:\"updated_at\";s:19:\"2025-06-29 14:41:11\";s:10:\"is_virtual\";i:0;}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:9:{s:10:\"is_virtual\";s:7:\"boolean\";s:9:\"is_active\";s:7:\"boolean\";s:19:\"special_price_start\";s:8:\"datetime\";s:17:\"special_price_end\";s:8:\"datetime\";s:8:\"new_from\";s:8:\"datetime\";s:6:\"new_to\";s:8:\"datetime\";s:10:\"start_date\";s:8:\"datetime\";s:8:\"end_date\";s:8:\"datetime\";s:10:\"deleted_at\";s:8:\"datetime\";}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:13:{i:0;s:10:\"base_image\";i:1;s:17:\"additional_images\";i:2;s:5:\"media\";i:3;s:15:\"formatted_price\";i:4;s:21:\"formatted_price_range\";i:5;s:28:\"has_percentage_special_price\";i:6;s:21:\"special_price_percent\";i:7;s:14:\"rating_percent\";i:8;s:17:\"does_manage_stock\";i:9;s:11:\"is_in_stock\";i:10;s:15:\"is_out_of_stock\";i:11;s:6:\"is_new\";i:12;s:7:\"variant\";}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:4:{s:12:\"translations\";O:39:\"Illuminate\\Database\\Eloquent\\Collection\":2:{s:8:\"\0*\0items\";a:1:{i:0;O:43:\"Modules\\Product\\Entities\\ProductTranslation\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:20:\"product_translations\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:6:{s:2:\"id\";i:4;s:10:\"product_id\";i:4;s:6:\"locale\";s:2:\"en\";s:4:\"name\";s:57:\"Custard Apple Hill |Sitha | Fresh Organic Fruit | Premium\";s:11:\"description\";s:702:\"<p><span style=\"color: green;\">Custard Apple |Sitha | Fresh Organic Fruit From Western Ghats </span></p>\n<p><span style=\"color: green;\">Custard apples are a fruit with a creamy, white flesh and a slightly acidic taste</span></p>\n<p><span style=\"color: green;\">Avako.in Fruits are fully Cultivated and Harvested Naturally without using Fertilizers</span></p>\n<p><span style=\"color: green;\">Avako.in Custard Apple Beneficial nutrients that may support your mood, immunity, and digestion.</span></p>\n<p><span style=\"color: green;\">For More Fruits Visit&nbsp; &nbsp;</span><a href=\"https://www.avako.in/product-category/hill-fruits-fruits/\">https://www.avako.in/product-category/hill-fruits-fruits/</a></p>\";s:17:\"short_description\";s:676:\"Benefits Of Custard Apple (Sita)\n\nLoaded with Energy. Custard apple is an excellent source of energy, thanks to its high carbohydrate content. \n\nControls Diabetes. \n\nTreats Skin Infections.\n\nImproves Heart Function. \n\nReduces Risk of Cancer. \n\nGood For Eye Health. \n\nEnhances Brain Activity and Function. \n\nPromotes Good Digestion.\n\nBenefits Of Custard Apple (Sita)\n\nLoaded with Energy. Custard apple is an excellent source of energy, thanks to its high carbohydrate content. \n\nControls Diabetes. \n\nTreats Skin Infections.\n\nImproves Heart Function. \n\nReduces Risk of Cancer. \n\nGood For Eye Health. \n\nEnhances Brain Activity and Function. \n\nPromotes Good Digestion.\";}s:11:\"\0*\0original\";a:6:{s:2:\"id\";i:4;s:10:\"product_id\";i:4;s:6:\"locale\";s:2:\"en\";s:4:\"name\";s:57:\"Custard Apple Hill |Sitha | Fresh Organic Fruit | Premium\";s:11:\"description\";s:702:\"<p><span style=\"color: green;\">Custard Apple |Sitha | Fresh Organic Fruit From Western Ghats </span></p>\n<p><span style=\"color: green;\">Custard apples are a fruit with a creamy, white flesh and a slightly acidic taste</span></p>\n<p><span style=\"color: green;\">Avako.in Fruits are fully Cultivated and Harvested Naturally without using Fertilizers</span></p>\n<p><span style=\"color: green;\">Avako.in Custard Apple Beneficial nutrients that may support your mood, immunity, and digestion.</span></p>\n<p><span style=\"color: green;\">For More Fruits Visit&nbsp; &nbsp;</span><a href=\"https://www.avako.in/product-category/hill-fruits-fruits/\">https://www.avako.in/product-category/hill-fruits-fruits/</a></p>\";s:17:\"short_description\";s:676:\"Benefits Of Custard Apple (Sita)\n\nLoaded with Energy. Custard apple is an excellent source of energy, thanks to its high carbohydrate content. \n\nControls Diabetes. \n\nTreats Skin Infections.\n\nImproves Heart Function. \n\nReduces Risk of Cancer. \n\nGood For Eye Health. \n\nEnhances Brain Activity and Function. \n\nPromotes Good Digestion.\n\nBenefits Of Custard Apple (Sita)\n\nLoaded with Energy. Custard apple is an excellent source of energy, thanks to its high carbohydrate content. \n\nControls Diabetes. \n\nTreats Skin Infections.\n\nImproves Heart Function. \n\nReduces Risk of Cancer. \n\nGood For Eye Health. \n\nEnhances Brain Activity and Function. \n\nPromotes Good Digestion.\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:0;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:3:{i:0;s:4:\"name\";i:1;s:11:\"description\";i:2;s:17:\"short_description\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}s:5:\"files\";O:39:\"Illuminate\\Database\\Eloquent\\Collection\":2:{s:8:\"\0*\0items\";a:2:{i:0;O:27:\"Modules\\Media\\Entities\\File\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:5:\"files\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:10:{s:2:\"id\";i:36;s:7:\"user_id\";i:2;s:8:\"filename\";s:18:\"Custrd-apple-p.jpg\";s:4:\"disk\";s:14:\"public_storage\";s:4:\"path\";s:50:\"media/9Nrr2ADjJA8fakefKbWuNPu0sXHgKp1NGk58D0BZ.jpg\";s:9:\"extension\";s:3:\"jpg\";s:4:\"mime\";s:10:\"image/jpeg\";s:4:\"size\";s:5:\"55859\";s:10:\"created_at\";s:19:\"2025-06-29 14:40:27\";s:10:\"updated_at\";s:19:\"2025-06-29 14:40:27\";}s:11:\"\0*\0original\";a:17:{s:2:\"id\";i:36;s:7:\"user_id\";i:2;s:8:\"filename\";s:18:\"Custrd-apple-p.jpg\";s:4:\"disk\";s:14:\"public_storage\";s:4:\"path\";s:50:\"media/9Nrr2ADjJA8fakefKbWuNPu0sXHgKp1NGk58D0BZ.jpg\";s:9:\"extension\";s:3:\"jpg\";s:4:\"mime\";s:10:\"image/jpeg\";s:4:\"size\";s:5:\"55859\";s:10:\"created_at\";s:19:\"2025-06-29 14:40:27\";s:10:\"updated_at\";s:19:\"2025-06-29 14:40:27\";s:15:\"pivot_entity_id\";i:4;s:13:\"pivot_file_id\";i:36;s:17:\"pivot_entity_type\";s:32:\"Modules\\Product\\Entities\\Product\";s:8:\"pivot_id\";i:47;s:10:\"pivot_zone\";s:10:\"base_image\";s:16:\"pivot_created_at\";s:19:\"2025-06-29 14:41:11\";s:16:\"pivot_updated_at\";s:19:\"2025-06-29 14:41:11\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:1:{s:5:\"pivot\";O:49:\"Illuminate\\Database\\Eloquent\\Relations\\MorphPivot\":36:{s:13:\"\0*\0connection\";N;s:8:\"\0*\0table\";s:12:\"entity_files\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:0;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:7:{s:11:\"entity_type\";s:32:\"Modules\\Product\\Entities\\Product\";s:9:\"entity_id\";i:4;s:7:\"file_id\";i:36;s:2:\"id\";i:47;s:4:\"zone\";s:10:\"base_image\";s:10:\"created_at\";s:19:\"2025-06-29 14:41:11\";s:10:\"updated_at\";s:19:\"2025-06-29 14:41:11\";}s:11:\"\0*\0original\";a:7:{s:11:\"entity_type\";s:32:\"Modules\\Product\\Entities\\Product\";s:9:\"entity_id\";i:4;s:7:\"file_id\";i:36;s:2:\"id\";i:47;s:4:\"zone\";s:10:\"base_image\";s:10:\"created_at\";s:19:\"2025-06-29 14:41:11\";s:10:\"updated_at\";s:19:\"2025-06-29 14:41:11\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}s:11:\"pivotParent\";O:32:\"Modules\\Product\\Entities\\Product\":35:{s:13:\"\0*\0connection\";N;s:8:\"\0*\0table\";s:8:\"products\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:1:{i:0;s:12:\"translations\";}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:0;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:0:{}s:11:\"\0*\0original\";a:0:{}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:9:{s:10:\"is_virtual\";s:7:\"boolean\";s:9:\"is_active\";s:7:\"boolean\";s:19:\"special_price_start\";s:8:\"datetime\";s:17:\"special_price_end\";s:8:\"datetime\";s:8:\"new_from\";s:8:\"datetime\";s:6:\"new_to\";s:8:\"datetime\";s:10:\"start_date\";s:8:\"datetime\";s:8:\"end_date\";s:8:\"datetime\";s:10:\"deleted_at\";s:8:\"datetime\";}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:13:{i:0;s:10:\"base_image\";i:1;s:17:\"additional_images\";i:2;s:5:\"media\";i:3;s:15:\"formatted_price\";i:4;s:21:\"formatted_price_range\";i:5;s:28:\"has_percentage_special_price\";i:6;s:21:\"special_price_percent\";i:7;s:14:\"rating_percent\";i:8;s:17:\"does_manage_stock\";i:9;s:11:\"is_in_stock\";i:10;s:15:\"is_out_of_stock\";i:11;s:6:\"is_new\";i:12;s:7:\"variant\";}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:17:{i:0;s:8:\"brand_id\";i:1;s:12:\"tax_class_id\";i:2;s:4:\"slug\";i:3;s:3:\"sku\";i:4;s:5:\"price\";i:5;s:13:\"special_price\";i:6;s:18:\"special_price_type\";i:7;s:19:\"special_price_start\";i:8;s:17:\"special_price_end\";i:9;s:13:\"selling_price\";i:10;s:12:\"manage_stock\";i:11;s:3:\"qty\";i:12;s:8:\"in_stock\";i:13;s:10:\"is_virtual\";i:14;s:9:\"is_active\";i:15;s:8:\"new_from\";i:16;s:6:\"new_to\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}s:23:\"\0*\0translatedAttributes\";a:3:{i:0;s:4:\"name\";i:1;s:11:\"description\";i:2;s:17:\"short_description\";}s:16:\"\0*\0slugAttribute\";s:4:\"name\";s:16:\"\0*\0defaultLocale\";N;s:16:\"\0*\0scoutMetadata\";a:0:{}s:16:\"\0*\0forceDeleting\";b:0;}s:12:\"pivotRelated\";O:27:\"Modules\\Media\\Entities\\File\":30:{s:13:\"\0*\0connection\";N;s:8:\"\0*\0table\";N;s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:0;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:0:{}s:11:\"\0*\0original\";a:0:{}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:3:{i:0;s:2:\"id\";i:1;s:8:\"filename\";i:2;s:4:\"path\";}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}}s:13:\"\0*\0foreignKey\";s:9:\"entity_id\";s:13:\"\0*\0relatedKey\";s:7:\"file_id\";s:12:\"\0*\0morphType\";s:11:\"entity_type\";s:13:\"\0*\0morphClass\";s:32:\"Modules\\Product\\Entities\\Product\";}}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:3:{i:0;s:2:\"id\";i:1;s:8:\"filename\";i:2;s:4:\"path\";}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}}i:1;O:27:\"Modules\\Media\\Entities\\File\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:5:\"files\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:10:{s:2:\"id\";i:37;s:7:\"user_id\";i:2;s:8:\"filename\";s:15:\"oil-gallery.jpg\";s:4:\"disk\";s:14:\"public_storage\";s:4:\"path\";s:50:\"media/15He4BwNK2UhML1oX7ug8VY3tzuZXIQ8AzUKkS99.jpg\";s:9:\"extension\";s:3:\"jpg\";s:4:\"mime\";s:10:\"image/jpeg\";s:4:\"size\";s:5:\"58245\";s:10:\"created_at\";s:19:\"2025-06-29 14:40:29\";s:10:\"updated_at\";s:19:\"2025-06-29 14:40:29\";}s:11:\"\0*\0original\";a:17:{s:2:\"id\";i:37;s:7:\"user_id\";i:2;s:8:\"filename\";s:15:\"oil-gallery.jpg\";s:4:\"disk\";s:14:\"public_storage\";s:4:\"path\";s:50:\"media/15He4BwNK2UhML1oX7ug8VY3tzuZXIQ8AzUKkS99.jpg\";s:9:\"extension\";s:3:\"jpg\";s:4:\"mime\";s:10:\"image/jpeg\";s:4:\"size\";s:5:\"58245\";s:10:\"created_at\";s:19:\"2025-06-29 14:40:29\";s:10:\"updated_at\";s:19:\"2025-06-29 14:40:29\";s:15:\"pivot_entity_id\";i:4;s:13:\"pivot_file_id\";i:37;s:17:\"pivot_entity_type\";s:32:\"Modules\\Product\\Entities\\Product\";s:8:\"pivot_id\";i:48;s:10:\"pivot_zone\";s:17:\"additional_images\";s:16:\"pivot_created_at\";s:19:\"2025-06-29 14:41:11\";s:16:\"pivot_updated_at\";s:19:\"2025-06-29 14:41:11\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:1:{s:5:\"pivot\";O:49:\"Illuminate\\Database\\Eloquent\\Relations\\MorphPivot\":36:{s:13:\"\0*\0connection\";N;s:8:\"\0*\0table\";s:12:\"entity_files\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:0;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:7:{s:11:\"entity_type\";s:32:\"Modules\\Product\\Entities\\Product\";s:9:\"entity_id\";i:4;s:7:\"file_id\";i:37;s:2:\"id\";i:48;s:4:\"zone\";s:17:\"additional_images\";s:10:\"created_at\";s:19:\"2025-06-29 14:41:11\";s:10:\"updated_at\";s:19:\"2025-06-29 14:41:11\";}s:11:\"\0*\0original\";a:7:{s:11:\"entity_type\";s:32:\"Modules\\Product\\Entities\\Product\";s:9:\"entity_id\";i:4;s:7:\"file_id\";i:37;s:2:\"id\";i:48;s:4:\"zone\";s:17:\"additional_images\";s:10:\"created_at\";s:19:\"2025-06-29 14:41:11\";s:10:\"updated_at\";s:19:\"2025-06-29 14:41:11\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}s:11:\"pivotParent\";r:250;s:12:\"pivotRelated\";r:330;s:13:\"\0*\0foreignKey\";s:9:\"entity_id\";s:13:\"\0*\0relatedKey\";s:7:\"file_id\";s:12:\"\0*\0morphType\";s:11:\"entity_type\";s:13:\"\0*\0morphClass\";s:32:\"Modules\\Product\\Entities\\Product\";}}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:3:{i:0;s:2:\"id\";i:1;s:8:\"filename\";i:2;s:4:\"path\";}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}}}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}s:10:\"categories\";O:26:\"TypiCMS\\NestableCollection\":8:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:8:\"\0*\0total\";i:0;s:15:\"\0*\0parentColumn\";s:9:\"parent_id\";s:33:\"\0*\0removeItemsWithMissingAncestor\";b:1;s:14:\"\0*\0indentChars\";s:8:\"    \";s:15:\"\0*\0childrenName\";s:5:\"items\";s:17:\"\0*\0parentRelation\";s:6:\"parent\";}s:8:\"taxClass\";O:29:\"Modules\\Tax\\Entities\\TaxClass\":33:{s:13:\"\0*\0connection\";N;s:8:\"\0*\0table\";s:11:\"tax_classes\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:1:{i:0;s:12:\"translations\";}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:0;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:0:{}s:11:\"\0*\0original\";a:0:{}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:3:{s:10:\"start_date\";s:8:\"datetime\";s:8:\"end_date\";s:8:\"datetime\";s:10:\"deleted_at\";s:8:\"datetime\";}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:1:{i:0;s:8:\"based_on\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}s:20:\"translatedAttributes\";a:1:{i:0;s:5:\"label\";}s:16:\"\0*\0defaultLocale\";N;s:16:\"\0*\0forceDeleting\";b:0;}}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:17:{i:0;s:8:\"brand_id\";i:1;s:12:\"tax_class_id\";i:2;s:4:\"slug\";i:3;s:3:\"sku\";i:4;s:5:\"price\";i:5;s:13:\"special_price\";i:6;s:18:\"special_price_type\";i:7;s:19:\"special_price_start\";i:8;s:17:\"special_price_end\";i:9;s:13:\"selling_price\";i:10;s:12:\"manage_stock\";i:11;s:3:\"qty\";i:12;s:8:\"in_stock\";i:13;s:10:\"is_virtual\";i:14;s:9:\"is_active\";i:15;s:8:\"new_from\";i:16;s:6:\"new_to\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}s:23:\"\0*\0translatedAttributes\";a:3:{i:0;s:4:\"name\";i:1;s:11:\"description\";i:2;s:17:\"short_description\";}s:16:\"\0*\0slugAttribute\";s:4:\"name\";s:16:\"\0*\0defaultLocale\";N;s:16:\"\0*\0scoutMetadata\";a:0:{}s:16:\"\0*\0forceDeleting\";b:0;}s:7:\"variant\";O:39:\"Modules\\Product\\Entities\\ProductVariant\":31:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:16:\"product_variants\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:1:{i:0;s:5:\"files\";}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:21:{s:2:\"id\";i:3;s:3:\"uid\";s:32:\"105b717f792cb986d1ce80a7911cdd28\";s:4:\"uids\";s:12:\"rplo6sg6w78t\";s:10:\"product_id\";i:4;s:4:\"name\";s:4:\"1 KG\";s:5:\"price\";s:8:\"450.0000\";s:13:\"special_price\";s:8:\"320.0000\";s:18:\"special_price_type\";s:5:\"fixed\";s:19:\"special_price_start\";N;s:17:\"special_price_end\";N;s:13:\"selling_price\";s:8:\"320.0000\";s:3:\"sku\";s:11:\"AVAKO000002\";s:12:\"manage_stock\";i:0;s:3:\"qty\";N;s:8:\"in_stock\";i:1;s:10:\"is_default\";i:1;s:9:\"is_active\";i:1;s:8:\"position\";i:1;s:10:\"deleted_at\";N;s:10:\"created_at\";s:19:\"2025-06-29 14:41:11\";s:10:\"updated_at\";s:19:\"2025-06-29 14:41:11\";}s:11:\"\0*\0original\";a:21:{s:2:\"id\";i:3;s:3:\"uid\";s:32:\"105b717f792cb986d1ce80a7911cdd28\";s:4:\"uids\";s:12:\"rplo6sg6w78t\";s:10:\"product_id\";i:4;s:4:\"name\";s:4:\"1 KG\";s:5:\"price\";s:8:\"450.0000\";s:13:\"special_price\";s:8:\"320.0000\";s:18:\"special_price_type\";s:5:\"fixed\";s:19:\"special_price_start\";N;s:17:\"special_price_end\";N;s:13:\"selling_price\";s:8:\"320.0000\";s:3:\"sku\";s:11:\"AVAKO000002\";s:12:\"manage_stock\";i:0;s:3:\"qty\";N;s:8:\"in_stock\";i:1;s:10:\"is_default\";i:1;s:9:\"is_active\";i:1;s:8:\"position\";i:1;s:10:\"deleted_at\";N;s:10:\"created_at\";s:19:\"2025-06-29 14:41:11\";s:10:\"updated_at\";s:19:\"2025-06-29 14:41:11\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:5:{s:9:\"is_active\";s:7:\"boolean\";s:10:\"is_default\";s:7:\"boolean\";s:19:\"special_price_start\";s:8:\"datetime\";s:17:\"special_price_end\";s:8:\"datetime\";s:10:\"deleted_at\";s:8:\"datetime\";}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:9:{i:0;s:10:\"base_image\";i:1;s:17:\"additional_images\";i:2;s:5:\"media\";i:3;s:15:\"formatted_price\";i:4;s:28:\"has_percentage_special_price\";i:5;s:21:\"special_price_percent\";i:6;s:17:\"does_manage_stock\";i:7;s:11:\"is_in_stock\";i:8;s:15:\"is_out_of_stock\";}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:1:{s:5:\"files\";O:39:\"Illuminate\\Database\\Eloquent\\Collection\":2:{s:8:\"\0*\0items\";a:1:{i:0;O:27:\"Modules\\Media\\Entities\\File\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:5:\"files\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:10:{s:2:\"id\";i:36;s:7:\"user_id\";i:2;s:8:\"filename\";s:18:\"Custrd-apple-p.jpg\";s:4:\"disk\";s:14:\"public_storage\";s:4:\"path\";s:50:\"media/9Nrr2ADjJA8fakefKbWuNPu0sXHgKp1NGk58D0BZ.jpg\";s:9:\"extension\";s:3:\"jpg\";s:4:\"mime\";s:10:\"image/jpeg\";s:4:\"size\";s:5:\"55859\";s:10:\"created_at\";s:19:\"2025-06-29 14:40:27\";s:10:\"updated_at\";s:19:\"2025-06-29 14:40:27\";}s:11:\"\0*\0original\";a:17:{s:2:\"id\";i:36;s:7:\"user_id\";i:2;s:8:\"filename\";s:18:\"Custrd-apple-p.jpg\";s:4:\"disk\";s:14:\"public_storage\";s:4:\"path\";s:50:\"media/9Nrr2ADjJA8fakefKbWuNPu0sXHgKp1NGk58D0BZ.jpg\";s:9:\"extension\";s:3:\"jpg\";s:4:\"mime\";s:10:\"image/jpeg\";s:4:\"size\";s:5:\"55859\";s:10:\"created_at\";s:19:\"2025-06-29 14:40:27\";s:10:\"updated_at\";s:19:\"2025-06-29 14:40:27\";s:15:\"pivot_entity_id\";i:3;s:13:\"pivot_file_id\";i:36;s:17:\"pivot_entity_type\";s:39:\"Modules\\Product\\Entities\\ProductVariant\";s:8:\"pivot_id\";i:46;s:10:\"pivot_zone\";s:10:\"base_image\";s:16:\"pivot_created_at\";s:19:\"2025-06-29 14:41:11\";s:16:\"pivot_updated_at\";s:19:\"2025-06-29 14:41:11\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:1:{s:5:\"pivot\";O:49:\"Illuminate\\Database\\Eloquent\\Relations\\MorphPivot\":36:{s:13:\"\0*\0connection\";N;s:8:\"\0*\0table\";s:12:\"entity_files\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:0;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:7:{s:11:\"entity_type\";s:39:\"Modules\\Product\\Entities\\ProductVariant\";s:9:\"entity_id\";i:3;s:7:\"file_id\";i:36;s:2:\"id\";i:46;s:4:\"zone\";s:10:\"base_image\";s:10:\"created_at\";s:19:\"2025-06-29 14:41:11\";s:10:\"updated_at\";s:19:\"2025-06-29 14:41:11\";}s:11:\"\0*\0original\";a:7:{s:11:\"entity_type\";s:39:\"Modules\\Product\\Entities\\ProductVariant\";s:9:\"entity_id\";i:3;s:7:\"file_id\";i:36;s:2:\"id\";i:46;s:4:\"zone\";s:10:\"base_image\";s:10:\"created_at\";s:19:\"2025-06-29 14:41:11\";s:10:\"updated_at\";s:19:\"2025-06-29 14:41:11\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}s:11:\"pivotParent\";O:39:\"Modules\\Product\\Entities\\ProductVariant\":31:{s:13:\"\0*\0connection\";N;s:8:\"\0*\0table\";s:16:\"product_variants\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:1:{i:0;s:5:\"files\";}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:0;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:0:{}s:11:\"\0*\0original\";a:0:{}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:5:{s:9:\"is_active\";s:7:\"boolean\";s:10:\"is_default\";s:7:\"boolean\";s:19:\"special_price_start\";s:8:\"datetime\";s:17:\"special_price_end\";s:8:\"datetime\";s:10:\"deleted_at\";s:8:\"datetime\";}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:9:{i:0;s:10:\"base_image\";i:1;s:17:\"additional_images\";i:2;s:5:\"media\";i:3;s:15:\"formatted_price\";i:4;s:28:\"has_percentage_special_price\";i:5;s:21:\"special_price_percent\";i:6;s:17:\"does_manage_stock\";i:7;s:11:\"is_in_stock\";i:8;s:15:\"is_out_of_stock\";}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:16:{i:0;s:3:\"uid\";i:1;s:4:\"uids\";i:2;s:4:\"name\";i:3;s:3:\"sku\";i:4;s:8:\"position\";i:5;s:5:\"price\";i:6;s:13:\"special_price\";i:7;s:18:\"special_price_type\";i:8;s:19:\"special_price_start\";i:9;s:17:\"special_price_end\";i:10;s:13:\"selling_price\";i:11;s:12:\"manage_stock\";i:12;s:3:\"qty\";i:13;s:8:\"in_stock\";i:14;s:9:\"is_active\";i:15;s:10:\"is_default\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}s:16:\"\0*\0forceDeleting\";b:0;}s:12:\"pivotRelated\";O:27:\"Modules\\Media\\Entities\\File\":30:{s:13:\"\0*\0connection\";N;s:8:\"\0*\0table\";N;s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:0;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:0:{}s:11:\"\0*\0original\";a:0:{}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:3:{i:0;s:2:\"id\";i:1;s:8:\"filename\";i:2;s:4:\"path\";}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}}s:13:\"\0*\0foreignKey\";s:9:\"entity_id\";s:13:\"\0*\0relatedKey\";s:7:\"file_id\";s:12:\"\0*\0morphType\";s:11:\"entity_type\";s:13:\"\0*\0morphClass\";s:39:\"Modules\\Product\\Entities\\ProductVariant\";}}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:3:{i:0;s:2:\"id\";i:1;s:8:\"filename\";i:2;s:4:\"path\";}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}}}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:16:{i:0;s:3:\"uid\";i:1;s:4:\"uids\";i:2;s:4:\"name\";i:3;s:3:\"sku\";i:4;s:8:\"position\";i:5;s:5:\"price\";i:6;s:13:\"special_price\";i:7;s:18:\"special_price_type\";i:8;s:19:\"special_price_start\";i:9;s:17:\"special_price_end\";i:10;s:13:\"selling_price\";i:11;s:12:\"manage_stock\";i:12;s:3:\"qty\";i:13;s:8:\"in_stock\";i:14;s:9:\"is_active\";i:15;s:10:\"is_default\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}s:16:\"\0*\0forceDeleting\";b:0;}s:4:\"item\";r:574;s:10:\"variations\";O:39:\"Illuminate\\Database\\Eloquent\\Collection\":2:{s:8:\"\0*\0items\";a:1:{i:0;O:36:\"Modules\\Variation\\Entities\\Variation\":33:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:10:\"variations\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:2:{i:0;s:12:\"translations\";i:1;s:6:\"values\";}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:8:{s:2:\"id\";i:3;s:3:\"uid\";s:12:\"lwt3nvlu8nt9\";s:4:\"type\";s:4:\"text\";s:9:\"is_global\";i:0;s:8:\"position\";i:1;s:10:\"deleted_at\";N;s:10:\"created_at\";s:19:\"2025-06-29 14:41:11\";s:10:\"updated_at\";s:19:\"2025-06-29 14:41:11\";}s:11:\"\0*\0original\";a:10:{s:2:\"id\";i:3;s:3:\"uid\";s:12:\"lwt3nvlu8nt9\";s:4:\"type\";s:4:\"text\";s:9:\"is_global\";i:0;s:8:\"position\";i:1;s:10:\"deleted_at\";N;s:10:\"created_at\";s:19:\"2025-06-29 14:41:11\";s:10:\"updated_at\";s:19:\"2025-06-29 14:41:11\";s:16:\"pivot_product_id\";i:4;s:18:\"pivot_variation_id\";i:3;}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:2:{s:9:\"is_global\";s:7:\"boolean\";s:10:\"deleted_at\";s:8:\"datetime\";}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:3:{s:5:\"pivot\";O:44:\"Illuminate\\Database\\Eloquent\\Relations\\Pivot\":34:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:18:\"product_variations\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:0;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:2:{s:10:\"product_id\";i:4;s:12:\"variation_id\";i:3;}s:11:\"\0*\0original\";a:2:{s:10:\"product_id\";i:4;s:12:\"variation_id\";i:3;}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:0;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}s:11:\"pivotParent\";r:11;s:12:\"pivotRelated\";O:36:\"Modules\\Variation\\Entities\\Variation\":33:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";N;s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:2:{i:0;s:12:\"translations\";i:1;s:6:\"values\";}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:0;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:0:{}s:11:\"\0*\0original\";a:0:{}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:2:{s:9:\"is_global\";s:7:\"boolean\";s:10:\"deleted_at\";s:8:\"datetime\";}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:4:{i:0;s:3:\"uid\";i:1;s:4:\"type\";i:2;s:9:\"is_global\";i:3;s:8:\"position\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}s:23:\"\0*\0translatedAttributes\";a:1:{i:0;s:4:\"name\";}s:16:\"\0*\0defaultLocale\";N;s:16:\"\0*\0forceDeleting\";b:0;}s:13:\"\0*\0foreignKey\";s:10:\"product_id\";s:13:\"\0*\0relatedKey\";s:12:\"variation_id\";}s:12:\"translations\";O:39:\"Illuminate\\Database\\Eloquent\\Collection\":2:{s:8:\"\0*\0items\";a:1:{i:0;O:47:\"Modules\\Variation\\Entities\\VariationTranslation\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:22:\"variation_translations\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:4:{s:2:\"id\";i:3;s:12:\"variation_id\";i:3;s:6:\"locale\";s:2:\"en\";s:4:\"name\";s:6:\"Weight\";}s:11:\"\0*\0original\";a:4:{s:2:\"id\";i:3;s:12:\"variation_id\";i:3;s:6:\"locale\";s:2:\"en\";s:4:\"name\";s:6:\"Weight\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:0;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:1:{i:0;s:4:\"name\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}s:6:\"values\";O:39:\"Illuminate\\Database\\Eloquent\\Collection\":2:{s:8:\"\0*\0items\";a:1:{i:0;O:41:\"Modules\\Variation\\Entities\\VariationValue\":32:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:16:\"variation_values\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:1:{i:0;s:12:\"translations\";}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:7:{s:2:\"id\";i:8;s:3:\"uid\";s:12:\"rplo6sg6w78t\";s:12:\"variation_id\";i:3;s:5:\"value\";s:0:\"\";s:8:\"position\";i:1;s:10:\"created_at\";s:19:\"2025-06-29 14:41:11\";s:10:\"updated_at\";s:19:\"2025-06-29 14:41:11\";}s:11:\"\0*\0original\";a:7:{s:2:\"id\";i:8;s:3:\"uid\";s:12:\"rplo6sg6w78t\";s:12:\"variation_id\";i:3;s:5:\"value\";s:0:\"\";s:8:\"position\";i:1;s:10:\"created_at\";s:19:\"2025-06-29 14:41:11\";s:10:\"updated_at\";s:19:\"2025-06-29 14:41:11\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:2:{i:0;s:5:\"color\";i:1;s:5:\"image\";}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:1:{s:12:\"translations\";O:39:\"Illuminate\\Database\\Eloquent\\Collection\":2:{s:8:\"\0*\0items\";a:1:{i:0;O:52:\"Modules\\Variation\\Entities\\VariationValueTranslation\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:28:\"variation_value_translations\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:4:{s:2:\"id\";i:8;s:18:\"variation_value_id\";i:8;s:6:\"locale\";s:2:\"en\";s:5:\"label\";s:4:\"1 KG\";}s:11:\"\0*\0original\";a:4:{s:2:\"id\";i:8;s:18:\"variation_value_id\";i:8;s:6:\"locale\";s:2:\"en\";s:5:\"label\";s:4:\"1 KG\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:0;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:1:{i:0;s:5:\"label\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:3:{i:0;s:3:\"uid\";i:1;s:5:\"value\";i:2;s:8:\"position\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}s:23:\"\0*\0translatedAttributes\";a:1:{i:0;s:5:\"label\";}s:16:\"\0*\0defaultLocale\";N;}}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:4:{i:0;s:3:\"uid\";i:1;s:4:\"type\";i:2;s:9:\"is_global\";i:3;s:8:\"position\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}s:23:\"\0*\0translatedAttributes\";a:1:{i:0;s:4:\"name\";}s:16:\"\0*\0defaultLocale\";N;s:16:\"\0*\0forceDeleting\";b:0;}}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}s:7:\"options\";O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}s:10:\"created_at\";i:1751188294;}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}s:10:\"conditions\";a:0:{}}s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:9:\"\0*\0config\";a:5:{s:14:\"format_numbers\";b:0;s:8:\"decimals\";i:0;s:9:\"dec_point\";s:1:\".\";s:13:\"thousands_sep\";s:1:\",\";s:6:\"events\";N;}}}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2025-06-29 09:11:34', '2025-06-29 09:11:34');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int UNSIGNED NOT NULL,
  `parent_id` int UNSIGNED DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` int UNSIGNED DEFAULT NULL,
  `is_searchable` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `parent_id`, `slug`, `position`, `is_searchable`, `is_active`, `created_at`, `updated_at`) VALUES
(1, NULL, 'gadgets', NULL, 0, 0, '2025-06-29 07:29:23', '2025-06-29 09:34:49'),
(2, 1, 'consumer-electronics', NULL, 0, 1, '2025-06-29 07:29:23', '2025-06-29 07:29:23'),
(3, 2, 'televisions', NULL, 0, 1, '2025-06-29 07:29:23', '2025-06-29 07:29:23'),
(4, 3, 'electronics', NULL, 0, 1, '2025-06-29 07:29:23', '2025-06-29 07:29:23'),
(5, NULL, 'electronics-MY166P1k', NULL, 0, 0, '2025-06-29 07:29:23', '2025-06-29 09:34:52'),
(6, 5, 'laptops', NULL, 0, 1, '2025-06-29 07:29:23', '2025-06-29 07:29:23'),
(7, 6, 'all-laptops', NULL, 0, 1, '2025-06-29 07:29:23', '2025-06-29 07:29:23'),
(8, NULL, 'bird-eye-chili', NULL, 1, 1, '2025-06-29 07:51:13', '2025-07-02 20:41:15'),
(9, NULL, 'biriyani-hilly-spices', NULL, 1, 1, '2025-06-29 07:51:47', '2025-07-02 20:40:58'),
(10, NULL, 'coffee-powder-bean', NULL, 1, 1, '2025-06-29 07:52:01', '2025-07-02 22:26:07'),
(11, NULL, 'eucalyptus-oil', NULL, 1, 1, '2025-06-29 07:52:11', '2025-07-02 20:41:39'),
(12, NULL, 'hilly-fresh-vegetable', NULL, 1, 1, '2025-06-29 07:52:21', '2025-07-02 20:41:46'),
(13, NULL, 'hilly-garlic', NULL, 1, 1, '2025-06-29 07:52:30', '2025-07-02 20:41:57'),
(14, NULL, 'hilly-honey', NULL, 1, 1, '2025-06-29 07:52:38', '2025-07-02 20:42:05'),
(15, NULL, 'hilly-natural-fruits', NULL, 1, 1, '2025-06-29 07:52:47', '2025-07-02 20:42:14'),
(16, NULL, 'hilly-pepper', NULL, 1, 1, '2025-06-29 07:52:55', '2025-07-02 20:42:38'),
(17, NULL, 'hilly-spices-original', NULL, 1, 1, '2025-06-29 07:53:05', '2025-07-02 20:42:30'),
(18, NULL, 'homemade-chocolate', NULL, 1, 1, '2025-06-29 07:53:12', '2025-07-02 20:42:23');

-- --------------------------------------------------------

--
-- Table structure for table `category_translations`
--

CREATE TABLE `category_translations` (
  `id` int UNSIGNED NOT NULL,
  `category_id` int UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category_translations`
--

INSERT INTO `category_translations` (`id`, `category_id`, `locale`, `name`) VALUES
(1, 1, 'en', 'Gadgets'),
(2, 2, 'en', 'Consumer Electronics'),
(3, 3, 'en', 'Televisions'),
(4, 4, 'en', 'Electronics'),
(5, 5, 'en', 'Electronics'),
(6, 6, 'en', 'Laptops'),
(7, 7, 'en', 'All Laptops'),
(8, 8, 'en', 'Bird Eye Chili'),
(9, 9, 'en', 'Biriyani Hilly Spices'),
(10, 10, 'en', 'Coffee Powder and Bean'),
(11, 11, 'en', 'Eucalyptus oil'),
(12, 12, 'en', 'Hilly Fresh Vegetable'),
(13, 13, 'en', 'Hilly Garlic / மலை பூண்டு'),
(14, 14, 'en', 'Hilly Honey /மலை தேன்'),
(15, 15, 'en', 'Hilly Natural Fruits'),
(16, 16, 'en', 'Hilly Pepper'),
(17, 17, 'en', 'Hilly Spices Original'),
(18, 18, 'en', 'Homemade Chocolate');

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` int UNSIGNED NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` decimal(18,4) UNSIGNED DEFAULT NULL,
  `is_percent` tinyint(1) NOT NULL,
  `free_shipping` tinyint(1) NOT NULL,
  `minimum_spend` decimal(18,4) UNSIGNED DEFAULT NULL,
  `maximum_spend` decimal(18,4) UNSIGNED DEFAULT NULL,
  `usage_limit_per_coupon` int UNSIGNED DEFAULT NULL,
  `usage_limit_per_customer` int UNSIGNED DEFAULT NULL,
  `used` int NOT NULL DEFAULT '0',
  `is_active` tinyint(1) NOT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `coupon_categories`
--

CREATE TABLE `coupon_categories` (
  `coupon_id` int UNSIGNED NOT NULL,
  `category_id` int UNSIGNED NOT NULL,
  `exclude` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `coupon_products`
--

CREATE TABLE `coupon_products` (
  `coupon_id` int UNSIGNED NOT NULL,
  `product_id` int UNSIGNED NOT NULL,
  `exclude` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `coupon_translations`
--

CREATE TABLE `coupon_translations` (
  `id` int UNSIGNED NOT NULL,
  `coupon_id` int UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cross_sell_products`
--

CREATE TABLE `cross_sell_products` (
  `product_id` int UNSIGNED NOT NULL,
  `cross_sell_product_id` int UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `currency_rates`
--

CREATE TABLE `currency_rates` (
  `id` int UNSIGNED NOT NULL,
  `currency` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rate` decimal(12,4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `currency_rates`
--

INSERT INTO `currency_rates` (`id`, `currency`, `rate`, `created_at`, `updated_at`) VALUES
(1, 'USD', 1.0000, '2025-06-29 01:28:19', '2025-06-29 01:28:19'),
(2, 'INR', 1.0000, '2025-06-29 07:26:46', '2025-06-29 07:26:46');

-- --------------------------------------------------------

--
-- Table structure for table `default_addresses`
--

CREATE TABLE `default_addresses` (
  `id` int UNSIGNED NOT NULL,
  `customer_id` int UNSIGNED NOT NULL,
  `address_id` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `default_addresses`
--

INSERT INTO `default_addresses` (`id`, `customer_id`, `address_id`) VALUES
(1, 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `entity_files`
--

CREATE TABLE `entity_files` (
  `id` int UNSIGNED NOT NULL,
  `file_id` int UNSIGNED NOT NULL,
  `entity_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `entity_id` bigint UNSIGNED NOT NULL,
  `zone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `entity_files`
--

INSERT INTO `entity_files` (`id`, `file_id`, `entity_type`, `entity_id`, `zone`, `created_at`, `updated_at`) VALUES
(42, 34, 'Modules\\Product\\Entities\\ProductVariant', 1, 'base_image', '2025-06-29 09:06:37', '2025-06-29 09:06:37'),
(43, 35, 'Modules\\Product\\Entities\\ProductVariant', 2, 'base_image', '2025-06-29 09:06:37', '2025-06-29 09:06:37'),
(44, 35, 'Modules\\Product\\Entities\\Product', 3, 'base_image', '2025-06-29 09:06:37', '2025-06-29 09:06:37'),
(45, 34, 'Modules\\Product\\Entities\\Product', 3, 'additional_images', '2025-06-29 09:06:37', '2025-06-29 09:06:37'),
(49, 36, 'Modules\\Product\\Entities\\ProductVariant', 3, 'base_image', '2025-06-29 09:23:03', '2025-06-29 09:23:03'),
(50, 36, 'Modules\\Product\\Entities\\Product', 4, 'base_image', '2025-06-29 09:23:03', '2025-06-29 09:23:03'),
(51, 37, 'Modules\\Product\\Entities\\Product', 4, 'additional_images', '2025-06-29 09:23:03', '2025-06-29 09:23:03'),
(53, 38, 'Modules\\Product\\Entities\\Product', 5, 'base_image', '2025-06-29 09:33:25', '2025-06-29 09:33:25'),
(54, 41, 'Modules\\Product\\Entities\\ProductVariant', 6, 'base_image', '2025-06-29 09:38:17', '2025-06-29 09:38:17'),
(55, 40, 'Modules\\Product\\Entities\\ProductVariant', 7, 'base_image', '2025-06-29 09:38:17', '2025-06-29 09:38:17'),
(56, 41, 'Modules\\Product\\Entities\\Product', 6, 'base_image', '2025-06-29 09:38:17', '2025-06-29 09:38:17'),
(79, 12, 'Modules\\Product\\Entities\\Product', 2, 'base_image', '2025-06-29 10:13:21', '2025-06-29 10:13:21'),
(80, 13, 'Modules\\Product\\Entities\\Product', 2, 'additional_images', '2025-06-29 10:13:21', '2025-06-29 10:13:21'),
(90, 3, 'Modules\\Product\\Entities\\Product', 1, 'base_image', '2025-06-29 10:13:54', '2025-06-29 10:13:54'),
(91, 4, 'Modules\\Product\\Entities\\Product', 1, 'additional_images', '2025-06-29 10:13:54', '2025-06-29 10:13:54'),
(92, 5, 'Modules\\Product\\Entities\\Product', 1, 'additional_images', '2025-06-29 10:13:54', '2025-06-29 10:13:54'),
(93, 6, 'Modules\\Product\\Entities\\Product', 1, 'additional_images', '2025-06-29 10:13:54', '2025-06-29 10:13:54'),
(94, 7, 'Modules\\Product\\Entities\\Product', 1, 'additional_images', '2025-06-29 10:13:54', '2025-06-29 10:13:54'),
(95, 8, 'Modules\\Product\\Entities\\Product', 1, 'additional_images', '2025-06-29 10:13:54', '2025-06-29 10:13:54'),
(96, 9, 'Modules\\Product\\Entities\\Product', 1, 'additional_images', '2025-06-29 10:13:54', '2025-06-29 10:13:54'),
(97, 10, 'Modules\\Product\\Entities\\Product', 1, 'additional_images', '2025-06-29 10:13:54', '2025-06-29 10:13:54'),
(98, 11, 'Modules\\Product\\Entities\\Product', 1, 'additional_images', '2025-06-29 10:13:54', '2025-06-29 10:13:54'),
(99, 58, 'Modules\\Product\\Entities\\ProductVariant', 8, 'base_image', '2025-06-29 10:33:57', '2025-06-29 10:33:57'),
(100, 59, 'Modules\\Product\\Entities\\ProductVariant', 9, 'base_image', '2025-06-29 10:33:57', '2025-06-29 10:33:57'),
(101, 58, 'Modules\\Product\\Entities\\Product', 7, 'base_image', '2025-06-29 10:33:57', '2025-06-29 10:33:57'),
(102, 59, 'Modules\\Product\\Entities\\Product', 7, 'additional_images', '2025-06-29 10:33:57', '2025-06-29 10:33:57'),
(103, 60, 'Modules\\Product\\Entities\\Product', 7, 'additional_images', '2025-06-29 10:33:57', '2025-06-29 10:33:57'),
(112, 63, 'Modules\\Product\\Entities\\Product', 8, 'base_image', '2025-06-30 16:07:59', '2025-06-30 16:07:59'),
(113, 64, 'Modules\\Product\\Entities\\Product', 8, 'additional_images', '2025-06-30 16:08:00', '2025-06-30 16:08:00'),
(114, 65, 'Modules\\Product\\Entities\\Product', 8, 'additional_images', '2025-06-30 16:08:00', '2025-06-30 16:08:00'),
(119, 69, 'Modules\\Product\\Entities\\Product', 10, 'base_image', '2025-06-30 16:16:09', '2025-06-30 16:16:09'),
(120, 70, 'Modules\\Product\\Entities\\Product', 10, 'additional_images', '2025-06-30 16:16:09', '2025-06-30 16:16:09'),
(121, 71, 'Modules\\Product\\Entities\\Product', 10, 'additional_images', '2025-06-30 16:16:09', '2025-06-30 16:16:09'),
(122, 72, 'Modules\\Product\\Entities\\Product', 10, 'additional_images', '2025-06-30 16:16:09', '2025-06-30 16:16:09'),
(128, 73, 'Modules\\Product\\Entities\\Product', 11, 'base_image', '2025-06-30 16:28:46', '2025-06-30 16:28:46'),
(129, 74, 'Modules\\Product\\Entities\\Product', 11, 'additional_images', '2025-06-30 16:28:46', '2025-06-30 16:28:46'),
(130, 75, 'Modules\\Product\\Entities\\Product', 11, 'additional_images', '2025-06-30 16:28:46', '2025-06-30 16:28:46'),
(131, 76, 'Modules\\Product\\Entities\\Product', 11, 'additional_images', '2025-06-30 16:28:46', '2025-06-30 16:28:46'),
(132, 77, 'Modules\\Product\\Entities\\Product', 11, 'additional_images', '2025-06-30 16:28:46', '2025-06-30 16:28:46'),
(136, 56, 'Modules\\Category\\Entities\\Category', 9, 'logo', '2025-07-02 20:40:58', '2025-07-02 20:40:58'),
(137, 48, 'Modules\\Category\\Entities\\Category', 8, 'logo', '2025-07-02 20:41:15', '2025-07-02 20:41:15'),
(139, 47, 'Modules\\Category\\Entities\\Category', 11, 'logo', '2025-07-02 20:41:39', '2025-07-02 20:41:39'),
(140, 46, 'Modules\\Category\\Entities\\Category', 12, 'logo', '2025-07-02 20:41:46', '2025-07-02 20:41:46'),
(141, 49, 'Modules\\Category\\Entities\\Category', 13, 'logo', '2025-07-02 20:41:57', '2025-07-02 20:41:57'),
(142, 53, 'Modules\\Category\\Entities\\Category', 14, 'logo', '2025-07-02 20:42:05', '2025-07-02 20:42:05'),
(143, 51, 'Modules\\Category\\Entities\\Category', 15, 'logo', '2025-07-02 20:42:14', '2025-07-02 20:42:14'),
(144, 55, 'Modules\\Category\\Entities\\Category', 18, 'logo', '2025-07-02 20:42:23', '2025-07-02 20:42:23'),
(145, 54, 'Modules\\Category\\Entities\\Category', 17, 'logo', '2025-07-02 20:42:30', '2025-07-02 20:42:30'),
(146, 50, 'Modules\\Category\\Entities\\Category', 16, 'logo', '2025-07-02 20:42:38', '2025-07-02 20:42:38'),
(292, 132, 'Modules\\Product\\Entities\\ProductVariant', 48, 'base_image', '2025-07-02 22:09:59', '2025-07-02 22:09:59'),
(293, 132, 'Modules\\Product\\Entities\\ProductVariant', 49, 'base_image', '2025-07-02 22:09:59', '2025-07-02 22:09:59'),
(294, 132, 'Modules\\Product\\Entities\\ProductVariant', 50, 'base_image', '2025-07-02 22:09:59', '2025-07-02 22:09:59'),
(295, 132, 'Modules\\Product\\Entities\\Product', 21, 'base_image', '2025-07-02 22:09:59', '2025-07-02 22:09:59'),
(296, 133, 'Modules\\Product\\Entities\\Product', 21, 'additional_images', '2025-07-02 22:09:59', '2025-07-02 22:09:59'),
(297, 134, 'Modules\\Product\\Entities\\Product', 21, 'additional_images', '2025-07-02 22:09:59', '2025-07-02 22:09:59'),
(298, 135, 'Modules\\Product\\Entities\\Product', 21, 'additional_images', '2025-07-02 22:09:59', '2025-07-02 22:09:59'),
(299, 136, 'Modules\\Product\\Entities\\Product', 21, 'additional_images', '2025-07-02 22:09:59', '2025-07-02 22:09:59'),
(300, 137, 'Modules\\Product\\Entities\\ProductVariant', 51, 'base_image', '2025-07-02 22:16:53', '2025-07-02 22:16:53'),
(301, 137, 'Modules\\Product\\Entities\\ProductVariant', 52, 'base_image', '2025-07-02 22:16:53', '2025-07-02 22:16:53'),
(302, 137, 'Modules\\Product\\Entities\\ProductVariant', 53, 'base_image', '2025-07-02 22:16:53', '2025-07-02 22:16:53'),
(303, 137, 'Modules\\Product\\Entities\\ProductVariant', 54, 'base_image', '2025-07-02 22:16:53', '2025-07-02 22:16:53'),
(304, 137, 'Modules\\Product\\Entities\\Product', 22, 'base_image', '2025-07-02 22:16:53', '2025-07-02 22:16:53'),
(305, 138, 'Modules\\Product\\Entities\\Product', 22, 'additional_images', '2025-07-02 22:16:53', '2025-07-02 22:16:53'),
(306, 139, 'Modules\\Product\\Entities\\Product', 22, 'additional_images', '2025-07-02 22:16:53', '2025-07-02 22:16:53'),
(307, 140, 'Modules\\Product\\Entities\\Product', 22, 'additional_images', '2025-07-02 22:16:53', '2025-07-02 22:16:53'),
(308, 141, 'Modules\\Product\\Entities\\Product', 22, 'additional_images', '2025-07-02 22:16:53', '2025-07-02 22:16:53'),
(317, 52, 'Modules\\Category\\Entities\\Category', 10, 'logo', '2025-07-02 22:26:07', '2025-07-02 22:26:07'),
(318, 142, 'Modules\\Product\\Entities\\ProductVariant', 55, 'base_image', '2025-07-02 22:26:42', '2025-07-02 22:26:42'),
(319, 142, 'Modules\\Product\\Entities\\ProductVariant', 56, 'base_image', '2025-07-02 22:26:42', '2025-07-02 22:26:42'),
(320, 142, 'Modules\\Product\\Entities\\Product', 23, 'base_image', '2025-07-02 22:26:42', '2025-07-02 22:26:42'),
(321, 143, 'Modules\\Product\\Entities\\Product', 23, 'additional_images', '2025-07-02 22:26:42', '2025-07-02 22:26:42'),
(322, 144, 'Modules\\Product\\Entities\\Product', 23, 'additional_images', '2025-07-02 22:26:42', '2025-07-02 22:26:42'),
(323, 145, 'Modules\\Product\\Entities\\Product', 23, 'additional_images', '2025-07-02 22:26:42', '2025-07-02 22:26:42'),
(324, 146, 'Modules\\Product\\Entities\\Product', 23, 'additional_images', '2025-07-02 22:26:42', '2025-07-02 22:26:42'),
(325, 147, 'Modules\\Product\\Entities\\Product', 23, 'additional_images', '2025-07-02 22:26:42', '2025-07-02 22:26:42'),
(326, 148, 'Modules\\Product\\Entities\\ProductVariant', 57, 'base_image', '2025-07-03 14:44:07', '2025-07-03 14:44:07'),
(327, 148, 'Modules\\Product\\Entities\\ProductVariant', 58, 'base_image', '2025-07-03 14:44:07', '2025-07-03 14:44:07'),
(328, 148, 'Modules\\Product\\Entities\\Product', 24, 'base_image', '2025-07-03 14:44:07', '2025-07-03 14:44:07'),
(329, 149, 'Modules\\Product\\Entities\\Product', 24, 'additional_images', '2025-07-03 14:44:07', '2025-07-03 14:44:07'),
(330, 150, 'Modules\\Product\\Entities\\Product', 24, 'additional_images', '2025-07-03 14:44:07', '2025-07-03 14:44:07'),
(331, 151, 'Modules\\Product\\Entities\\Product', 24, 'additional_images', '2025-07-03 14:44:07', '2025-07-03 14:44:07'),
(332, 152, 'Modules\\Product\\Entities\\Product', 24, 'additional_images', '2025-07-03 14:44:07', '2025-07-03 14:44:07'),
(333, 153, 'Modules\\Product\\Entities\\Product', 24, 'additional_images', '2025-07-03 14:44:07', '2025-07-03 14:44:07'),
(334, 154, 'Modules\\Product\\Entities\\ProductVariant', 59, 'base_image', '2025-07-03 14:47:47', '2025-07-03 14:47:47'),
(335, 154, 'Modules\\Product\\Entities\\ProductVariant', 60, 'base_image', '2025-07-03 14:47:47', '2025-07-03 14:47:47'),
(336, 154, 'Modules\\Product\\Entities\\ProductVariant', 61, 'base_image', '2025-07-03 14:47:47', '2025-07-03 14:47:47'),
(337, 154, 'Modules\\Product\\Entities\\Product', 25, 'base_image', '2025-07-03 14:47:47', '2025-07-03 14:47:47'),
(338, 155, 'Modules\\Product\\Entities\\Product', 25, 'additional_images', '2025-07-03 14:47:47', '2025-07-03 14:47:47'),
(339, 156, 'Modules\\Product\\Entities\\Product', 25, 'additional_images', '2025-07-03 14:47:47', '2025-07-03 14:47:47'),
(340, 157, 'Modules\\Product\\Entities\\Product', 25, 'additional_images', '2025-07-03 14:47:47', '2025-07-03 14:47:47'),
(341, 158, 'Modules\\Product\\Entities\\Product', 25, 'additional_images', '2025-07-03 14:47:47', '2025-07-03 14:47:47'),
(342, 159, 'Modules\\Product\\Entities\\Product', 25, 'additional_images', '2025-07-03 14:47:47', '2025-07-03 14:47:47'),
(343, 160, 'Modules\\Product\\Entities\\Product', 26, 'base_image', '2025-07-03 14:50:43', '2025-07-03 14:50:43'),
(344, 161, 'Modules\\Product\\Entities\\Product', 26, 'additional_images', '2025-07-03 14:50:43', '2025-07-03 14:50:43'),
(345, 162, 'Modules\\Product\\Entities\\Product', 26, 'additional_images', '2025-07-03 14:50:43', '2025-07-03 14:50:43'),
(346, 163, 'Modules\\Product\\Entities\\Product', 26, 'additional_images', '2025-07-03 14:50:43', '2025-07-03 14:50:43'),
(347, 164, 'Modules\\Product\\Entities\\ProductVariant', 65, 'base_image', '2025-07-03 14:55:26', '2025-07-03 14:55:26'),
(348, 164, 'Modules\\Product\\Entities\\ProductVariant', 66, 'base_image', '2025-07-03 14:55:26', '2025-07-03 14:55:26'),
(349, 164, 'Modules\\Product\\Entities\\Product', 27, 'base_image', '2025-07-03 14:55:26', '2025-07-03 14:55:26'),
(350, 165, 'Modules\\Product\\Entities\\Product', 27, 'additional_images', '2025-07-03 14:55:26', '2025-07-03 14:55:26'),
(351, 166, 'Modules\\Product\\Entities\\Product', 27, 'additional_images', '2025-07-03 14:55:26', '2025-07-03 14:55:26'),
(352, 167, 'Modules\\Product\\Entities\\Product', 27, 'additional_images', '2025-07-03 14:55:26', '2025-07-03 14:55:26'),
(353, 168, 'Modules\\Product\\Entities\\Product', 27, 'additional_images', '2025-07-03 14:55:26', '2025-07-03 14:55:26'),
(354, 169, 'Modules\\Product\\Entities\\Product', 27, 'additional_images', '2025-07-03 14:55:26', '2025-07-03 14:55:26'),
(360, 170, 'Modules\\Product\\Entities\\ProductVariant', 67, 'base_image', '2025-07-03 14:58:11', '2025-07-03 14:58:11'),
(361, 171, 'Modules\\Product\\Entities\\ProductVariant', 68, 'base_image', '2025-07-03 14:58:11', '2025-07-03 14:58:11'),
(362, 170, 'Modules\\Product\\Entities\\Product', 28, 'base_image', '2025-07-03 14:58:11', '2025-07-03 14:58:11'),
(363, 171, 'Modules\\Product\\Entities\\Product', 28, 'additional_images', '2025-07-03 14:58:11', '2025-07-03 14:58:11'),
(364, 172, 'Modules\\Product\\Entities\\Product', 28, 'additional_images', '2025-07-03 14:58:11', '2025-07-03 14:58:11'),
(365, 173, 'Modules\\Product\\Entities\\ProductVariant', 69, 'base_image', '2025-07-03 15:00:46', '2025-07-03 15:00:46'),
(366, 173, 'Modules\\Product\\Entities\\ProductVariant', 70, 'base_image', '2025-07-03 15:00:46', '2025-07-03 15:00:46'),
(367, 173, 'Modules\\Product\\Entities\\Product', 29, 'base_image', '2025-07-03 15:00:46', '2025-07-03 15:00:46'),
(368, 174, 'Modules\\Product\\Entities\\Product', 29, 'additional_images', '2025-07-03 15:00:46', '2025-07-03 15:00:46'),
(369, 175, 'Modules\\Product\\Entities\\Product', 29, 'additional_images', '2025-07-03 15:00:46', '2025-07-03 15:00:46'),
(370, 176, 'Modules\\Product\\Entities\\ProductVariant', 71, 'base_image', '2025-07-03 15:03:38', '2025-07-03 15:03:38'),
(371, 176, 'Modules\\Product\\Entities\\ProductVariant', 72, 'base_image', '2025-07-03 15:03:38', '2025-07-03 15:03:38'),
(372, 176, 'Modules\\Product\\Entities\\Product', 30, 'base_image', '2025-07-03 15:03:38', '2025-07-03 15:03:38'),
(373, 177, 'Modules\\Product\\Entities\\Product', 30, 'additional_images', '2025-07-03 15:03:38', '2025-07-03 15:03:38'),
(374, 178, 'Modules\\Product\\Entities\\Product', 30, 'additional_images', '2025-07-03 15:03:38', '2025-07-03 15:03:38'),
(375, 179, 'Modules\\Product\\Entities\\Product', 30, 'additional_images', '2025-07-03 15:03:38', '2025-07-03 15:03:38'),
(376, 180, 'Modules\\Product\\Entities\\Product', 30, 'additional_images', '2025-07-03 15:03:38', '2025-07-03 15:03:38'),
(383, 182, 'Modules\\Product\\Entities\\ProductVariant', 73, 'base_image', '2025-07-03 15:06:19', '2025-07-03 15:06:19'),
(384, 182, 'Modules\\Product\\Entities\\ProductVariant', 74, 'base_image', '2025-07-03 15:06:19', '2025-07-03 15:06:19'),
(385, 181, 'Modules\\Product\\Entities\\Product', 31, 'base_image', '2025-07-03 15:06:19', '2025-07-03 15:06:19'),
(386, 182, 'Modules\\Product\\Entities\\Product', 31, 'additional_images', '2025-07-03 15:06:19', '2025-07-03 15:06:19'),
(387, 183, 'Modules\\Product\\Entities\\Product', 31, 'additional_images', '2025-07-03 15:06:19', '2025-07-03 15:06:19'),
(388, 184, 'Modules\\Product\\Entities\\Product', 31, 'additional_images', '2025-07-03 15:06:19', '2025-07-03 15:06:19'),
(389, 185, 'Modules\\Product\\Entities\\ProductVariant', 75, 'base_image', '2025-07-03 15:09:42', '2025-07-03 15:09:42'),
(390, 185, 'Modules\\Product\\Entities\\ProductVariant', 76, 'base_image', '2025-07-03 15:09:42', '2025-07-03 15:09:42'),
(391, 185, 'Modules\\Product\\Entities\\Product', 32, 'base_image', '2025-07-03 15:09:42', '2025-07-03 15:09:42'),
(392, 186, 'Modules\\Product\\Entities\\Product', 32, 'additional_images', '2025-07-03 15:09:42', '2025-07-03 15:09:42'),
(393, 187, 'Modules\\Product\\Entities\\Product', 32, 'additional_images', '2025-07-03 15:09:42', '2025-07-03 15:09:42'),
(394, 188, 'Modules\\Product\\Entities\\Product', 32, 'additional_images', '2025-07-03 15:09:42', '2025-07-03 15:09:42'),
(395, 189, 'Modules\\Product\\Entities\\ProductVariant', 77, 'base_image', '2025-07-09 15:22:51', '2025-07-09 15:22:51'),
(396, 190, 'Modules\\Product\\Entities\\ProductVariant', 77, 'additional_images', '2025-07-09 15:22:51', '2025-07-09 15:22:51'),
(397, 191, 'Modules\\Product\\Entities\\ProductVariant', 77, 'additional_images', '2025-07-09 15:22:51', '2025-07-09 15:22:51'),
(398, 192, 'Modules\\Product\\Entities\\ProductVariant', 77, 'additional_images', '2025-07-09 15:22:51', '2025-07-09 15:22:51'),
(399, 189, 'Modules\\Product\\Entities\\ProductVariant', 78, 'base_image', '2025-07-09 15:22:51', '2025-07-09 15:22:51'),
(400, 189, 'Modules\\Product\\Entities\\Product', 33, 'base_image', '2025-07-09 15:22:51', '2025-07-09 15:22:51'),
(401, 190, 'Modules\\Product\\Entities\\Product', 33, 'additional_images', '2025-07-09 15:22:51', '2025-07-09 15:22:51'),
(402, 191, 'Modules\\Product\\Entities\\Product', 33, 'additional_images', '2025-07-09 15:22:51', '2025-07-09 15:22:51'),
(403, 192, 'Modules\\Product\\Entities\\Product', 33, 'additional_images', '2025-07-09 15:22:51', '2025-07-09 15:22:51'),
(404, 193, 'Modules\\Product\\Entities\\ProductVariant', 79, 'base_image', '2025-07-09 15:27:41', '2025-07-09 15:27:41'),
(405, 194, 'Modules\\Product\\Entities\\ProductVariant', 80, 'base_image', '2025-07-09 15:27:41', '2025-07-09 15:27:41'),
(406, 193, 'Modules\\Product\\Entities\\Product', 34, 'base_image', '2025-07-09 15:27:41', '2025-07-09 15:27:41'),
(407, 194, 'Modules\\Product\\Entities\\Product', 34, 'additional_images', '2025-07-09 15:27:41', '2025-07-09 15:27:41'),
(408, 195, 'Modules\\Product\\Entities\\Product', 34, 'additional_images', '2025-07-09 15:27:41', '2025-07-09 15:27:41'),
(409, 113, 'Modules\\Product\\Entities\\ProductVariant', 38, 'base_image', '2025-07-09 15:31:01', '2025-07-09 15:31:01'),
(410, 113, 'Modules\\Product\\Entities\\ProductVariant', 39, 'base_image', '2025-07-09 15:31:01', '2025-07-09 15:31:01'),
(411, 113, 'Modules\\Product\\Entities\\ProductVariant', 40, 'base_image', '2025-07-09 15:31:01', '2025-07-09 15:31:01'),
(412, 113, 'Modules\\Product\\Entities\\Product', 17, 'base_image', '2025-07-09 15:31:01', '2025-07-09 15:31:01'),
(413, 114, 'Modules\\Product\\Entities\\Product', 17, 'additional_images', '2025-07-09 15:31:01', '2025-07-09 15:31:01'),
(414, 115, 'Modules\\Product\\Entities\\Product', 17, 'additional_images', '2025-07-09 15:31:01', '2025-07-09 15:31:01'),
(415, 116, 'Modules\\Product\\Entities\\Product', 17, 'additional_images', '2025-07-09 15:31:01', '2025-07-09 15:31:01'),
(416, 117, 'Modules\\Product\\Entities\\Product', 17, 'additional_images', '2025-07-09 15:31:01', '2025-07-09 15:31:01'),
(417, 118, 'Modules\\Product\\Entities\\ProductVariant', 41, 'base_image', '2025-07-09 15:31:42', '2025-07-09 15:31:42'),
(418, 118, 'Modules\\Product\\Entities\\ProductVariant', 42, 'base_image', '2025-07-09 15:31:42', '2025-07-09 15:31:42'),
(419, 118, 'Modules\\Product\\Entities\\ProductVariant', 43, 'base_image', '2025-07-09 15:31:42', '2025-07-09 15:31:42'),
(420, 118, 'Modules\\Product\\Entities\\Product', 18, 'base_image', '2025-07-09 15:31:42', '2025-07-09 15:31:42'),
(421, 119, 'Modules\\Product\\Entities\\Product', 18, 'additional_images', '2025-07-09 15:31:42', '2025-07-09 15:31:42'),
(422, 120, 'Modules\\Product\\Entities\\Product', 18, 'additional_images', '2025-07-09 15:31:42', '2025-07-09 15:31:42'),
(423, 121, 'Modules\\Product\\Entities\\Product', 18, 'additional_images', '2025-07-09 15:31:42', '2025-07-09 15:31:42'),
(424, 122, 'Modules\\Product\\Entities\\Product', 18, 'additional_images', '2025-07-09 15:31:42', '2025-07-09 15:31:42'),
(425, 123, 'Modules\\Product\\Entities\\ProductVariant', 44, 'base_image', '2025-07-09 15:37:36', '2025-07-09 15:37:36'),
(426, 123, 'Modules\\Product\\Entities\\ProductVariant', 45, 'base_image', '2025-07-09 15:37:36', '2025-07-09 15:37:36'),
(427, 123, 'Modules\\Product\\Entities\\Product', 19, 'base_image', '2025-07-09 15:37:36', '2025-07-09 15:37:36'),
(428, 124, 'Modules\\Product\\Entities\\Product', 19, 'additional_images', '2025-07-09 15:37:36', '2025-07-09 15:37:36'),
(429, 125, 'Modules\\Product\\Entities\\Product', 19, 'additional_images', '2025-07-09 15:37:36', '2025-07-09 15:37:36'),
(430, 126, 'Modules\\Product\\Entities\\Product', 19, 'additional_images', '2025-07-09 15:37:36', '2025-07-09 15:37:36'),
(431, 196, 'Modules\\Product\\Entities\\ProductVariant', 81, 'base_image', '2025-07-09 15:43:25', '2025-07-09 15:43:25'),
(432, 196, 'Modules\\Product\\Entities\\ProductVariant', 82, 'base_image', '2025-07-09 15:43:25', '2025-07-09 15:43:25'),
(433, 196, 'Modules\\Product\\Entities\\ProductVariant', 83, 'base_image', '2025-07-09 15:43:25', '2025-07-09 15:43:25'),
(434, 196, 'Modules\\Product\\Entities\\Product', 35, 'base_image', '2025-07-09 15:43:25', '2025-07-09 15:43:25'),
(435, 197, 'Modules\\Product\\Entities\\Product', 35, 'additional_images', '2025-07-09 15:43:25', '2025-07-09 15:43:25'),
(436, 198, 'Modules\\Product\\Entities\\Product', 35, 'additional_images', '2025-07-09 15:43:25', '2025-07-09 15:43:25'),
(437, 199, 'Modules\\Product\\Entities\\Product', 35, 'additional_images', '2025-07-09 15:43:25', '2025-07-09 15:43:25'),
(438, 200, 'Modules\\Product\\Entities\\Product', 35, 'additional_images', '2025-07-09 15:43:25', '2025-07-09 15:43:25'),
(439, 201, 'Modules\\Product\\Entities\\ProductVariant', 84, 'base_image', '2025-07-09 15:54:30', '2025-07-09 15:54:30'),
(440, 201, 'Modules\\Product\\Entities\\ProductVariant', 85, 'base_image', '2025-07-09 15:54:30', '2025-07-09 15:54:30'),
(441, 201, 'Modules\\Product\\Entities\\ProductVariant', 86, 'base_image', '2025-07-09 15:54:30', '2025-07-09 15:54:30'),
(442, 201, 'Modules\\Product\\Entities\\Product', 36, 'base_image', '2025-07-09 15:54:30', '2025-07-09 15:54:30'),
(443, 202, 'Modules\\Product\\Entities\\Product', 36, 'additional_images', '2025-07-09 15:54:30', '2025-07-09 15:54:30'),
(444, 203, 'Modules\\Product\\Entities\\Product', 36, 'additional_images', '2025-07-09 15:54:30', '2025-07-09 15:54:30'),
(445, 204, 'Modules\\Product\\Entities\\Product', 36, 'additional_images', '2025-07-09 15:54:30', '2025-07-09 15:54:30'),
(446, 205, 'Modules\\Product\\Entities\\ProductVariant', 87, 'base_image', '2025-07-09 16:00:42', '2025-07-09 16:00:42'),
(447, 205, 'Modules\\Product\\Entities\\ProductVariant', 88, 'base_image', '2025-07-09 16:00:42', '2025-07-09 16:00:42'),
(448, 206, 'Modules\\Product\\Entities\\ProductVariant', 89, 'base_image', '2025-07-09 16:00:42', '2025-07-09 16:00:42'),
(449, 205, 'Modules\\Product\\Entities\\Product', 37, 'base_image', '2025-07-09 16:00:42', '2025-07-09 16:00:42'),
(450, 206, 'Modules\\Product\\Entities\\Product', 37, 'additional_images', '2025-07-09 16:00:42', '2025-07-09 16:00:42'),
(451, 207, 'Modules\\Product\\Entities\\Product', 37, 'additional_images', '2025-07-09 16:00:42', '2025-07-09 16:00:42'),
(452, 208, 'Modules\\Product\\Entities\\Product', 37, 'additional_images', '2025-07-09 16:00:42', '2025-07-09 16:00:42'),
(467, 67, 'Modules\\Product\\Entities\\ProductVariant', 12, 'base_image', '2025-07-09 16:16:15', '2025-07-09 16:16:15'),
(468, 67, 'Modules\\Product\\Entities\\ProductVariant', 13, 'base_image', '2025-07-09 16:16:15', '2025-07-09 16:16:15'),
(469, 67, 'Modules\\Product\\Entities\\Product', 9, 'base_image', '2025-07-09 16:16:15', '2025-07-09 16:16:15'),
(470, 68, 'Modules\\Product\\Entities\\Product', 9, 'additional_images', '2025-07-09 16:16:15', '2025-07-09 16:16:15'),
(471, 66, 'Modules\\Product\\Entities\\Product', 9, 'additional_images', '2025-07-09 16:16:15', '2025-07-09 16:16:15'),
(472, 209, 'Modules\\Product\\Entities\\ProductVariant', 90, 'base_image', '2025-07-09 16:17:11', '2025-07-09 16:17:11'),
(473, 209, 'Modules\\Product\\Entities\\ProductVariant', 91, 'base_image', '2025-07-09 16:17:11', '2025-07-09 16:17:11'),
(474, 209, 'Modules\\Product\\Entities\\Product', 38, 'base_image', '2025-07-09 16:17:11', '2025-07-09 16:17:11'),
(475, 210, 'Modules\\Product\\Entities\\Product', 38, 'additional_images', '2025-07-09 16:17:11', '2025-07-09 16:17:11'),
(476, 211, 'Modules\\Product\\Entities\\Product', 38, 'additional_images', '2025-07-09 16:17:11', '2025-07-09 16:17:11'),
(477, 212, 'Modules\\Product\\Entities\\Product', 38, 'additional_images', '2025-07-09 16:17:11', '2025-07-09 16:17:11'),
(478, 87, 'Modules\\Product\\Entities\\ProductVariant', 22, 'base_image', '2025-07-09 16:17:48', '2025-07-09 16:17:48'),
(479, 87, 'Modules\\Product\\Entities\\ProductVariant', 23, 'base_image', '2025-07-09 16:17:48', '2025-07-09 16:17:48'),
(480, 87, 'Modules\\Product\\Entities\\ProductVariant', 24, 'base_image', '2025-07-09 16:17:48', '2025-07-09 16:17:48'),
(481, 87, 'Modules\\Product\\Entities\\Product', 12, 'base_image', '2025-07-09 16:17:48', '2025-07-09 16:17:48'),
(482, 88, 'Modules\\Product\\Entities\\Product', 12, 'additional_images', '2025-07-09 16:17:48', '2025-07-09 16:17:48'),
(483, 89, 'Modules\\Product\\Entities\\Product', 12, 'additional_images', '2025-07-09 16:17:48', '2025-07-09 16:17:48'),
(484, 90, 'Modules\\Product\\Entities\\Product', 12, 'additional_images', '2025-07-09 16:17:48', '2025-07-09 16:17:48'),
(485, 91, 'Modules\\Product\\Entities\\Product', 12, 'additional_images', '2025-07-09 16:17:48', '2025-07-09 16:17:48'),
(486, 92, 'Modules\\Product\\Entities\\ProductVariant', 25, 'base_image', '2025-07-09 16:18:10', '2025-07-09 16:18:10'),
(487, 92, 'Modules\\Product\\Entities\\ProductVariant', 26, 'base_image', '2025-07-09 16:18:10', '2025-07-09 16:18:10'),
(488, 92, 'Modules\\Product\\Entities\\Product', 13, 'base_image', '2025-07-09 16:18:10', '2025-07-09 16:18:10'),
(489, 93, 'Modules\\Product\\Entities\\Product', 13, 'additional_images', '2025-07-09 16:18:10', '2025-07-09 16:18:10'),
(490, 94, 'Modules\\Product\\Entities\\Product', 13, 'additional_images', '2025-07-09 16:18:10', '2025-07-09 16:18:10'),
(491, 95, 'Modules\\Product\\Entities\\Product', 13, 'additional_images', '2025-07-09 16:18:10', '2025-07-09 16:18:10'),
(492, 96, 'Modules\\Product\\Entities\\ProductVariant', 27, 'base_image', '2025-07-09 16:18:28', '2025-07-09 16:18:28'),
(493, 96, 'Modules\\Product\\Entities\\ProductVariant', 28, 'base_image', '2025-07-09 16:18:28', '2025-07-09 16:18:28'),
(494, 96, 'Modules\\Product\\Entities\\ProductVariant', 29, 'base_image', '2025-07-09 16:18:28', '2025-07-09 16:18:28'),
(495, 96, 'Modules\\Product\\Entities\\ProductVariant', 30, 'base_image', '2025-07-09 16:18:28', '2025-07-09 16:18:28'),
(496, 96, 'Modules\\Product\\Entities\\Product', 14, 'base_image', '2025-07-09 16:18:28', '2025-07-09 16:18:28'),
(497, 97, 'Modules\\Product\\Entities\\Product', 14, 'additional_images', '2025-07-09 16:18:28', '2025-07-09 16:18:28'),
(498, 98, 'Modules\\Product\\Entities\\Product', 14, 'additional_images', '2025-07-09 16:18:28', '2025-07-09 16:18:28'),
(499, 99, 'Modules\\Product\\Entities\\Product', 14, 'additional_images', '2025-07-09 16:18:28', '2025-07-09 16:18:28'),
(500, 100, 'Modules\\Product\\Entities\\Product', 14, 'additional_images', '2025-07-09 16:18:28', '2025-07-09 16:18:28'),
(501, 127, 'Modules\\Product\\Entities\\ProductVariant', 46, 'base_image', '2025-07-09 16:18:52', '2025-07-09 16:18:52'),
(502, 127, 'Modules\\Product\\Entities\\ProductVariant', 47, 'base_image', '2025-07-09 16:18:52', '2025-07-09 16:18:52'),
(503, 127, 'Modules\\Product\\Entities\\Product', 20, 'base_image', '2025-07-09 16:18:52', '2025-07-09 16:18:52'),
(504, 128, 'Modules\\Product\\Entities\\Product', 20, 'additional_images', '2025-07-09 16:18:52', '2025-07-09 16:18:52'),
(505, 129, 'Modules\\Product\\Entities\\Product', 20, 'additional_images', '2025-07-09 16:18:52', '2025-07-09 16:18:52'),
(506, 130, 'Modules\\Product\\Entities\\Product', 20, 'additional_images', '2025-07-09 16:18:52', '2025-07-09 16:18:52'),
(507, 131, 'Modules\\Product\\Entities\\Product', 20, 'additional_images', '2025-07-09 16:18:52', '2025-07-09 16:18:52'),
(508, 102, 'Modules\\Product\\Entities\\ProductVariant', 31, 'base_image', '2025-07-09 16:19:13', '2025-07-09 16:19:13'),
(509, 102, 'Modules\\Product\\Entities\\ProductVariant', 32, 'base_image', '2025-07-09 16:19:13', '2025-07-09 16:19:13'),
(510, 102, 'Modules\\Product\\Entities\\ProductVariant', 33, 'base_image', '2025-07-09 16:19:13', '2025-07-09 16:19:13'),
(511, 102, 'Modules\\Product\\Entities\\Product', 15, 'base_image', '2025-07-09 16:19:13', '2025-07-09 16:19:13'),
(512, 103, 'Modules\\Product\\Entities\\Product', 15, 'additional_images', '2025-07-09 16:19:13', '2025-07-09 16:19:13'),
(513, 104, 'Modules\\Product\\Entities\\Product', 15, 'additional_images', '2025-07-09 16:19:13', '2025-07-09 16:19:13'),
(514, 105, 'Modules\\Product\\Entities\\Product', 15, 'additional_images', '2025-07-09 16:19:13', '2025-07-09 16:19:13'),
(515, 106, 'Modules\\Product\\Entities\\Product', 15, 'additional_images', '2025-07-09 16:19:13', '2025-07-09 16:19:13'),
(516, 107, 'Modules\\Product\\Entities\\ProductVariant', 34, 'base_image', '2025-07-09 16:19:32', '2025-07-09 16:19:32'),
(517, 107, 'Modules\\Product\\Entities\\ProductVariant', 35, 'base_image', '2025-07-09 16:19:32', '2025-07-09 16:19:32'),
(518, 107, 'Modules\\Product\\Entities\\ProductVariant', 36, 'base_image', '2025-07-09 16:19:32', '2025-07-09 16:19:32'),
(519, 107, 'Modules\\Product\\Entities\\ProductVariant', 37, 'base_image', '2025-07-09 16:19:32', '2025-07-09 16:19:32'),
(520, 107, 'Modules\\Product\\Entities\\Product', 16, 'base_image', '2025-07-09 16:19:32', '2025-07-09 16:19:32'),
(521, 108, 'Modules\\Product\\Entities\\Product', 16, 'additional_images', '2025-07-09 16:19:32', '2025-07-09 16:19:32'),
(522, 109, 'Modules\\Product\\Entities\\Product', 16, 'additional_images', '2025-07-09 16:19:32', '2025-07-09 16:19:32'),
(523, 110, 'Modules\\Product\\Entities\\Product', 16, 'additional_images', '2025-07-09 16:19:32', '2025-07-09 16:19:32'),
(524, 111, 'Modules\\Product\\Entities\\Product', 16, 'additional_images', '2025-07-09 16:19:32', '2025-07-09 16:19:32'),
(525, 112, 'Modules\\Product\\Entities\\Product', 16, 'additional_images', '2025-07-09 16:19:32', '2025-07-09 16:19:32'),
(526, 213, 'Modules\\Product\\Entities\\ProductVariant', 92, 'base_image', '2025-07-10 14:17:20', '2025-07-10 14:17:20'),
(527, 213, 'Modules\\Product\\Entities\\Product', 39, 'base_image', '2025-07-10 14:17:20', '2025-07-10 14:17:20'),
(528, 214, 'Modules\\Product\\Entities\\Product', 39, 'additional_images', '2025-07-10 14:17:20', '2025-07-10 14:17:20'),
(529, 215, 'Modules\\Product\\Entities\\Product', 39, 'additional_images', '2025-07-10 14:17:20', '2025-07-10 14:17:20'),
(530, 216, 'Modules\\Product\\Entities\\Product', 39, 'additional_images', '2025-07-10 14:17:20', '2025-07-10 14:17:20'),
(531, 217, 'Modules\\Product\\Entities\\Product', 39, 'additional_images', '2025-07-10 14:17:20', '2025-07-10 14:17:20'),
(532, 219, 'Modules\\Product\\Entities\\ProductVariant', 93, 'base_image', '2025-07-10 14:19:58', '2025-07-10 14:19:58'),
(533, 218, 'Modules\\Product\\Entities\\Product', 40, 'base_image', '2025-07-10 14:19:58', '2025-07-10 14:19:58'),
(534, 219, 'Modules\\Product\\Entities\\Product', 40, 'additional_images', '2025-07-10 14:19:58', '2025-07-10 14:19:58'),
(535, 220, 'Modules\\Product\\Entities\\Product', 40, 'additional_images', '2025-07-10 14:19:58', '2025-07-10 14:19:58'),
(536, 221, 'Modules\\Product\\Entities\\Product', 40, 'additional_images', '2025-07-10 14:19:58', '2025-07-10 14:19:58'),
(537, 222, 'Modules\\Product\\Entities\\Product', 40, 'additional_images', '2025-07-10 14:19:58', '2025-07-10 14:19:58'),
(545, 228, 'Modules\\Product\\Entities\\ProductVariant', 96, 'base_image', '2025-07-10 14:28:19', '2025-07-10 14:28:19'),
(546, 228, 'Modules\\Product\\Entities\\ProductVariant', 97, 'base_image', '2025-07-10 14:28:19', '2025-07-10 14:28:19'),
(547, 228, 'Modules\\Product\\Entities\\Product', 42, 'base_image', '2025-07-10 14:28:19', '2025-07-10 14:28:19'),
(548, 229, 'Modules\\Product\\Entities\\Product', 42, 'additional_images', '2025-07-10 14:28:19', '2025-07-10 14:28:19'),
(549, 230, 'Modules\\Product\\Entities\\Product', 42, 'additional_images', '2025-07-10 14:28:19', '2025-07-10 14:28:19'),
(550, 231, 'Modules\\Product\\Entities\\Product', 42, 'additional_images', '2025-07-10 14:28:19', '2025-07-10 14:28:19'),
(551, 223, 'Modules\\Product\\Entities\\ProductVariant', 94, 'base_image', '2025-07-10 14:29:37', '2025-07-10 14:29:37'),
(552, 223, 'Modules\\Product\\Entities\\ProductVariant', 95, 'base_image', '2025-07-10 14:29:37', '2025-07-10 14:29:37'),
(553, 223, 'Modules\\Product\\Entities\\Product', 41, 'base_image', '2025-07-10 14:29:37', '2025-07-10 14:29:37'),
(554, 224, 'Modules\\Product\\Entities\\Product', 41, 'additional_images', '2025-07-10 14:29:37', '2025-07-10 14:29:37'),
(555, 225, 'Modules\\Product\\Entities\\Product', 41, 'additional_images', '2025-07-10 14:29:37', '2025-07-10 14:29:37'),
(556, 226, 'Modules\\Product\\Entities\\Product', 41, 'additional_images', '2025-07-10 14:29:37', '2025-07-10 14:29:37'),
(557, 227, 'Modules\\Product\\Entities\\Product', 41, 'additional_images', '2025-07-10 14:29:37', '2025-07-10 14:29:37'),
(558, 233, 'Modules\\Product\\Entities\\ProductVariant', 98, 'base_image', '2025-07-10 14:32:51', '2025-07-10 14:32:51'),
(559, 233, 'Modules\\Product\\Entities\\ProductVariant', 99, 'base_image', '2025-07-10 14:32:51', '2025-07-10 14:32:51'),
(560, 233, 'Modules\\Product\\Entities\\Product', 43, 'base_image', '2025-07-10 14:32:51', '2025-07-10 14:32:51'),
(561, 232, 'Modules\\Product\\Entities\\Product', 43, 'additional_images', '2025-07-10 14:32:51', '2025-07-10 14:32:51'),
(562, 234, 'Modules\\Product\\Entities\\Product', 43, 'additional_images', '2025-07-10 14:32:51', '2025-07-10 14:32:51'),
(563, 235, 'Modules\\Product\\Entities\\Product', 43, 'additional_images', '2025-07-10 14:32:51', '2025-07-10 14:32:51'),
(564, 236, 'Modules\\Product\\Entities\\ProductVariant', 100, 'base_image', '2025-07-10 14:36:17', '2025-07-10 14:36:17'),
(565, 236, 'Modules\\Product\\Entities\\ProductVariant', 101, 'base_image', '2025-07-10 14:36:17', '2025-07-10 14:36:17'),
(566, 236, 'Modules\\Product\\Entities\\Product', 44, 'base_image', '2025-07-10 14:36:17', '2025-07-10 14:36:17'),
(567, 237, 'Modules\\Product\\Entities\\Product', 44, 'additional_images', '2025-07-10 14:36:17', '2025-07-10 14:36:17'),
(568, 238, 'Modules\\Product\\Entities\\Product', 44, 'additional_images', '2025-07-10 14:36:17', '2025-07-10 14:36:17'),
(569, 239, 'Modules\\Product\\Entities\\Product', 44, 'additional_images', '2025-07-10 14:36:17', '2025-07-10 14:36:17'),
(570, 240, 'Modules\\Product\\Entities\\Product', 44, 'additional_images', '2025-07-10 14:36:17', '2025-07-10 14:36:17'),
(571, 242, 'Modules\\Product\\Entities\\ProductVariant', 102, 'base_image', '2025-07-10 14:41:29', '2025-07-10 14:41:29'),
(572, 242, 'Modules\\Product\\Entities\\ProductVariant', 103, 'base_image', '2025-07-10 14:41:29', '2025-07-10 14:41:29'),
(573, 242, 'Modules\\Product\\Entities\\ProductVariant', 104, 'base_image', '2025-07-10 14:41:29', '2025-07-10 14:41:29'),
(574, 242, 'Modules\\Product\\Entities\\Product', 45, 'base_image', '2025-07-10 14:41:29', '2025-07-10 14:41:29'),
(575, 241, 'Modules\\Product\\Entities\\Product', 45, 'additional_images', '2025-07-10 14:41:29', '2025-07-10 14:41:29'),
(576, 243, 'Modules\\Product\\Entities\\Product', 45, 'additional_images', '2025-07-10 14:41:29', '2025-07-10 14:41:29'),
(577, 244, 'Modules\\Product\\Entities\\Product', 45, 'additional_images', '2025-07-10 14:41:29', '2025-07-10 14:41:29'),
(578, 245, 'Modules\\Product\\Entities\\Product', 45, 'additional_images', '2025-07-10 14:41:29', '2025-07-10 14:41:29'),
(579, 246, 'Modules\\Product\\Entities\\ProductVariant', 105, 'base_image', '2025-07-10 14:45:26', '2025-07-10 14:45:26'),
(580, 247, 'Modules\\Product\\Entities\\ProductVariant', 106, 'base_image', '2025-07-10 14:45:26', '2025-07-10 14:45:26'),
(581, 246, 'Modules\\Product\\Entities\\ProductVariant', 107, 'base_image', '2025-07-10 14:45:26', '2025-07-10 14:45:26'),
(582, 246, 'Modules\\Product\\Entities\\Product', 46, 'base_image', '2025-07-10 14:45:26', '2025-07-10 14:45:26'),
(583, 247, 'Modules\\Product\\Entities\\Product', 46, 'additional_images', '2025-07-10 14:45:26', '2025-07-10 14:45:26'),
(584, 248, 'Modules\\Product\\Entities\\Product', 46, 'additional_images', '2025-07-10 14:45:26', '2025-07-10 14:45:26'),
(585, 249, 'Modules\\Product\\Entities\\Product', 46, 'additional_images', '2025-07-10 14:45:26', '2025-07-10 14:45:26'),
(586, 250, 'Modules\\Product\\Entities\\ProductVariant', 108, 'base_image', '2025-07-10 14:48:52', '2025-07-10 14:48:52'),
(587, 251, 'Modules\\Product\\Entities\\ProductVariant', 108, 'additional_images', '2025-07-10 14:48:52', '2025-07-10 14:48:52'),
(588, 252, 'Modules\\Product\\Entities\\ProductVariant', 108, 'additional_images', '2025-07-10 14:48:52', '2025-07-10 14:48:52'),
(589, 250, 'Modules\\Product\\Entities\\ProductVariant', 109, 'base_image', '2025-07-10 14:48:52', '2025-07-10 14:48:52'),
(590, 250, 'Modules\\Product\\Entities\\ProductVariant', 110, 'base_image', '2025-07-10 14:48:53', '2025-07-10 14:48:53'),
(591, 250, 'Modules\\Product\\Entities\\Product', 47, 'base_image', '2025-07-10 14:48:53', '2025-07-10 14:48:53'),
(592, 251, 'Modules\\Product\\Entities\\Product', 47, 'additional_images', '2025-07-10 14:48:53', '2025-07-10 14:48:53'),
(593, 252, 'Modules\\Product\\Entities\\Product', 47, 'additional_images', '2025-07-10 14:48:53', '2025-07-10 14:48:53'),
(594, 253, 'Modules\\Product\\Entities\\ProductVariant', 111, 'base_image', '2025-07-10 14:52:38', '2025-07-10 14:52:38'),
(595, 253, 'Modules\\Product\\Entities\\ProductVariant', 112, 'base_image', '2025-07-10 14:52:38', '2025-07-10 14:52:38'),
(596, 253, 'Modules\\Product\\Entities\\ProductVariant', 113, 'base_image', '2025-07-10 14:52:38', '2025-07-10 14:52:38'),
(597, 253, 'Modules\\Product\\Entities\\Product', 48, 'base_image', '2025-07-10 14:52:38', '2025-07-10 14:52:38'),
(598, 254, 'Modules\\Product\\Entities\\Product', 48, 'additional_images', '2025-07-10 14:52:38', '2025-07-10 14:52:38'),
(599, 255, 'Modules\\Product\\Entities\\Product', 48, 'additional_images', '2025-07-10 14:52:38', '2025-07-10 14:52:38'),
(600, 256, 'Modules\\Product\\Entities\\Product', 48, 'additional_images', '2025-07-10 14:52:38', '2025-07-10 14:52:38'),
(601, 257, 'Modules\\Product\\Entities\\ProductVariant', 114, 'base_image', '2025-07-10 14:55:08', '2025-07-10 14:55:08'),
(602, 257, 'Modules\\Product\\Entities\\ProductVariant', 115, 'base_image', '2025-07-10 14:55:08', '2025-07-10 14:55:08'),
(603, 257, 'Modules\\Product\\Entities\\ProductVariant', 116, 'base_image', '2025-07-10 14:55:08', '2025-07-10 14:55:08'),
(604, 257, 'Modules\\Product\\Entities\\Product', 49, 'base_image', '2025-07-10 14:55:08', '2025-07-10 14:55:08'),
(605, 258, 'Modules\\Product\\Entities\\Product', 49, 'additional_images', '2025-07-10 14:55:08', '2025-07-10 14:55:08'),
(606, 259, 'Modules\\Product\\Entities\\Product', 49, 'additional_images', '2025-07-10 14:55:08', '2025-07-10 14:55:08'),
(607, 260, 'Modules\\Product\\Entities\\ProductVariant', 117, 'base_image', '2025-07-10 14:57:49', '2025-07-10 14:57:49'),
(608, 260, 'Modules\\Product\\Entities\\ProductVariant', 118, 'base_image', '2025-07-10 14:57:49', '2025-07-10 14:57:49'),
(609, 260, 'Modules\\Product\\Entities\\ProductVariant', 119, 'base_image', '2025-07-10 14:57:49', '2025-07-10 14:57:49'),
(610, 260, 'Modules\\Product\\Entities\\Product', 50, 'base_image', '2025-07-10 14:57:49', '2025-07-10 14:57:49'),
(611, 261, 'Modules\\Product\\Entities\\Product', 50, 'additional_images', '2025-07-10 14:57:49', '2025-07-10 14:57:49'),
(612, 262, 'Modules\\Product\\Entities\\Product', 50, 'additional_images', '2025-07-10 14:57:49', '2025-07-10 14:57:49'),
(613, 263, 'Modules\\Product\\Entities\\Product', 50, 'additional_images', '2025-07-10 14:57:49', '2025-07-10 14:57:49'),
(614, 264, 'Modules\\Product\\Entities\\ProductVariant', 120, 'base_image', '2025-07-10 15:00:22', '2025-07-10 15:00:22'),
(615, 264, 'Modules\\Product\\Entities\\ProductVariant', 121, 'base_image', '2025-07-10 15:00:22', '2025-07-10 15:00:22'),
(616, 264, 'Modules\\Product\\Entities\\ProductVariant', 122, 'base_image', '2025-07-10 15:00:22', '2025-07-10 15:00:22'),
(617, 264, 'Modules\\Product\\Entities\\Product', 51, 'base_image', '2025-07-10 15:00:22', '2025-07-10 15:00:22'),
(618, 265, 'Modules\\Product\\Entities\\Product', 51, 'additional_images', '2025-07-10 15:00:22', '2025-07-10 15:00:22'),
(619, 266, 'Modules\\Product\\Entities\\Product', 51, 'additional_images', '2025-07-10 15:00:22', '2025-07-10 15:00:22'),
(620, 267, 'Modules\\Product\\Entities\\Product', 51, 'additional_images', '2025-07-10 15:00:22', '2025-07-10 15:00:22'),
(621, 268, 'Modules\\Product\\Entities\\ProductVariant', 123, 'base_image', '2025-07-10 15:03:14', '2025-07-10 15:03:14'),
(622, 268, 'Modules\\Product\\Entities\\ProductVariant', 124, 'base_image', '2025-07-10 15:03:14', '2025-07-10 15:03:14'),
(623, 268, 'Modules\\Product\\Entities\\ProductVariant', 125, 'base_image', '2025-07-10 15:03:14', '2025-07-10 15:03:14'),
(624, 268, 'Modules\\Product\\Entities\\Product', 52, 'base_image', '2025-07-10 15:03:14', '2025-07-10 15:03:14'),
(625, 269, 'Modules\\Product\\Entities\\Product', 52, 'additional_images', '2025-07-10 15:03:14', '2025-07-10 15:03:14'),
(626, 270, 'Modules\\Product\\Entities\\Product', 52, 'additional_images', '2025-07-10 15:03:14', '2025-07-10 15:03:14');

-- --------------------------------------------------------

--
-- Table structure for table `files`
--

CREATE TABLE `files` (
  `id` int UNSIGNED NOT NULL,
  `user_id` int UNSIGNED NOT NULL,
  `filename` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `disk` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `path` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `extension` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mime` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `files`
--

INSERT INTO `files` (`id`, `user_id`, `filename`, `disk`, `path`, `extension`, `mime`, `size`, `created_at`, `updated_at`) VALUES
(1, 2, 'cropped-Avako_logo-min.png', 'public_storage', 'media/e46jVsG11B3beoUpXiG2X58Iay7FXPjAyg3jsxxM.png', 'png', 'image/png', '25560', '2025-06-29 07:22:34', '2025-06-29 07:22:34'),
(2, 2, 'Screenshot 2025-06-29 at 12.51.52 PM.png', 'public_storage', 'media/ucvP8Ubk4EMlLzPehxcIVwNDuMX51YgxLJzmEBQS.png', 'png', 'image/png', '213835', '2025-06-29 07:22:55', '2025-06-29 07:22:55'),
(3, 2, 'Large01.jpg', 'public_storage', 'media/q7ObpBgEBCYfzrZGrHxS3rMfiOOFOmaU8hIfUexl.jpg', 'jpg', 'image/jpeg', '181051', '2025-06-29 07:29:23', '2025-06-29 07:29:23'),
(4, 2, 'G9NTv78PyOutz8tobeUq3hEx6ayZmrYBR7FwoCKy.jpeg', 'public_storage', 'media/660fZTLRRz2QRdPiwo2qj6kjWvVlcRTjm0y6wBiE.jpeg', 'jpeg', 'image/jpeg', '96176', '2025-06-29 07:29:23', '2025-06-29 07:29:23'),
(5, 2, 'DZ-3.jpg', 'public_storage', 'media/MZxwBYmK2cL6QhifQWZLeDMdE8ZiGri5Q1A98Mso.jpg', 'jpg', 'image/jpeg', '133446', '2025-06-29 07:29:23', '2025-06-29 07:29:23'),
(6, 2, 'DZ-7.jpg', 'public_storage', 'media/dkqpk2G3VUt9g99YcgIGCQgVKfj9JIIdXv2NPbBb.jpg', 'jpg', 'image/jpeg', '122473', '2025-06-29 07:29:23', '2025-06-29 07:29:23'),
(7, 2, 'DZ-8.jpg', 'public_storage', 'media/41ftOxE9ziMe6RNCHAvLm2dQvBrwkFAfoEygs60i.jpg', 'jpg', 'image/jpeg', '39935', '2025-06-29 07:29:23', '2025-06-29 07:29:23'),
(8, 2, 'OLED55C3PSA-OLED-TV-DZ-03.jpg', 'public_storage', 'media/XU5cyAzjPcvVnqzoHW6guSJyDgPOIjeddPcqzMJ8.jpg', 'jpg', 'image/jpeg', '388593', '2025-06-29 07:29:23', '2025-06-29 07:29:23'),
(9, 2, 'OLED55C3PSA-OLED-TV-DZ-08.jpg', 'public_storage', 'media/Fk3r0qBblrw9CC9bEr8vjQGIDfDWIN7yvuAD6b0R.jpg', 'jpg', 'image/jpeg', '44353', '2025-06-29 07:29:23', '2025-06-29 07:29:23'),
(10, 2, 'OLED55C3PSA-OLED-TV-DZ-14.jpg', 'public_storage', 'media/56mGhLxETWi0CcTWOPWfwODghKs9rgqCRkdR1zPz.jpg', 'jpg', 'image/jpeg', '422947', '2025-06-29 07:29:23', '2025-06-29 07:29:23'),
(11, 2, 'OLED55C3PSA-OLED-TV-DZ-15.jpg', 'public_storage', 'media/1oI5p1Qzk1F6DdpUC7tZK0DkjA531bMhIr2CWFi9.jpg', 'jpg', 'image/jpeg', '325183', '2025-06-29 07:29:23', '2025-06-29 07:29:23'),
(12, 2, 'MacBook-Pro-M3-16inch---Silver-3587.jpg', 'public_storage', 'media/Y6fi5sIGwhb41neZkJqmq53bA6kvDSfTpvxni5Su.jpg', 'jpg', 'image/jpeg', '25104', '2025-06-29 07:29:23', '2025-06-29 07:29:23'),
(13, 2, 'MacBook-Pro-M3-16inch-Space-Black-9948.jpg', 'public_storage', 'media/yPQVC7QJUqPHUKm3BRxKTE4Q0VqdlyKUmUgvHV3u.jpg', 'jpg', 'image/jpeg', '25087', '2025-06-29 07:29:23', '2025-06-29 07:29:23'),
(14, 2, 'payment-methods.png', 'public_storage', 'media/YxPFEU1BOW0VVBRzyAWifOMgyfSzzsKIr04uPMKE.png', 'png', 'image/png', '3893', '2025-06-29 08:07:16', '2025-06-29 08:07:16'),
(15, 2, 'shownow.png', 'public_storage', 'media/5XiLmnx5WX3febRn9mJgjATGZNSUigSxwJ3HH4yo.png', 'png', 'image/png', '10157', '2025-06-29 08:11:38', '2025-06-29 08:11:38'),
(16, 2, 'firstbanner.png', 'public_storage', 'media/Y6fTqOpclGnYdEL3OrkgJlfQxXLekFdhIGa0HW9W.png', 'png', 'image/png', '47396', '2025-06-29 08:17:56', '2025-06-29 08:17:56'),
(17, 2, 'secondbanner.png', 'public_storage', 'media/FV0fzmpHfcovf8W6bWtxCv6vTuweUqnnBGgIGVtN.png', 'png', 'image/png', '23823', '2025-06-29 08:18:06', '2025-06-29 08:18:06'),
(18, 2, 'background1.png', 'public_storage', 'media/DExdJS1xreqzKfpqCeECKsVaT7lv2t5cIJEcPTeY.png', 'png', 'image/png', '14603', '2025-06-29 08:20:44', '2025-06-29 08:20:44'),
(19, 2, 'background-bg.png', 'public_storage', 'media/151xRnEDE7x44lkmLhpjMbSn21VRar4VYJ3CmvTD.png', 'png', 'image/png', '27919', '2025-06-29 08:20:44', '2025-06-29 08:20:44'),
(20, 2, 'background2.png', 'public_storage', 'media/Tt5XULj79RGDy5eQRkFVmfqUdlkpUFPjfajXNHlw.png', 'png', 'image/png', '74687', '2025-06-29 08:20:44', '2025-06-29 08:20:44'),
(21, 2, 'background3.png', 'public_storage', 'media/rTnMYcfiEHfjKQWFT3M95FttpQwq4qxd7TLwjT9B.png', 'png', 'image/png', '8127', '2025-06-29 08:20:44', '2025-06-29 08:20:44'),
(22, 2, 'background1.png', 'public_storage', 'media/iiSwasYO22i70UpxXgHZK6i7VpmbX7pWg3QUhbB0.png', 'png', 'image/png', '14603', '2025-06-29 08:26:01', '2025-06-29 08:26:01'),
(23, 2, 'background-bg.png', 'public_storage', 'media/DFc02r0f4D8J0oO3zkg3y2S4xzIv84v8nnFmhWo2.png', 'png', 'image/png', '27919', '2025-06-29 08:26:01', '2025-06-29 08:26:01'),
(24, 2, 'banner1.png', 'public_storage', 'media/BftGpEokrfBrKoD8VUkXnX2eGm4SUpyBfdxkvDar.png', 'png', 'image/png', '32578', '2025-06-29 08:26:39', '2025-06-29 08:26:39'),
(25, 2, 'banner2.png', 'public_storage', 'media/qTBqNKpzZYEwCnWV2RxTiUzbFhjF2vAQVQlYLZHO.png', 'png', 'image/png', '17516', '2025-06-29 08:26:39', '2025-06-29 08:26:39'),
(26, 2, 'banner3.png', 'public_storage', 'media/xrm1xsEEUQELaNUf9drBL6Jbr5JtlggrHvfhfDq0.png', 'png', 'image/png', '24349', '2025-06-29 08:30:12', '2025-06-29 08:30:12'),
(27, 2, 'banner4.png', 'public_storage', 'media/foNfpMWL9RJfSjTD9GjhT8lpd4TRfGAPsF1CivSe.png', 'png', 'image/png', '20017', '2025-06-29 08:30:12', '2025-06-29 08:30:12'),
(28, 2, 'banner5.png', 'public_storage', 'media/pwTlifsgnzX5lzTNfxkVugI6EsGTP5XhsqPc7CrL.png', 'png', 'image/png', '47851', '2025-06-29 08:30:12', '2025-06-29 08:30:12'),
(29, 2, 'onebanner.png', 'public_storage', 'media/YNmYiYIhRzEV1UUfvuggNCsIonlfnpvwB5jpo1N9.png', 'png', 'image/png', '56858', '2025-06-29 08:31:53', '2025-06-29 08:31:53'),
(30, 2, 'avako-banner1.jpg', 'public_storage', 'media/7psf8qVsvy6ftmLACnSttYvbeP3xedriTy3enuDT.jpg', 'jpg', 'image/jpeg', '40573', '2025-06-29 08:36:11', '2025-06-29 08:36:11'),
(31, 2, 'avako-banner2.jpg', 'public_storage', 'media/pojxoQkuLAbD3ZpUKeL9JH56kHUNBgZwEyMpjyiT.jpg', 'jpg', 'image/jpeg', '221665', '2025-06-29 08:36:11', '2025-06-29 08:36:11'),
(32, 2, 'avako-banner3.png', 'public_storage', 'media/U8r9UtEQkYdioKDFigzkBA3xWVPprn5KlKk2RDoy.png', 'png', 'image/png', '241320', '2025-06-29 08:36:11', '2025-06-29 08:36:11'),
(33, 2, 'avako-banner4.jpg', 'public_storage', 'media/F4QY3SMG2sOjna3KOWHNhGpvTGANN8GrEEKZaV9m.jpg', 'jpg', 'image/jpeg', '68363', '2025-06-29 08:44:43', '2025-06-29 08:44:43'),
(34, 2, 'potato-gallery.jpg', 'public_storage', 'media/1kVW7EiVaSPwRFvRlnx5vPQUg1eChQM3wAvuj9tX.jpg', 'jpg', 'image/jpeg', '17120', '2025-06-29 09:01:41', '2025-06-29 09:01:41'),
(35, 2, 'potato.jpg', 'public_storage', 'media/eSfh0tAxftLhnmTswgU7SoZ4BxYSE2HJrhT6FYjG.jpg', 'jpg', 'image/jpeg', '28988', '2025-06-29 09:01:41', '2025-06-29 09:01:41'),
(36, 2, 'Custrd-apple-p.jpg', 'public_storage', 'media/9Nrr2ADjJA8fakefKbWuNPu0sXHgKp1NGk58D0BZ.jpg', 'jpg', 'image/jpeg', '55859', '2025-06-29 09:10:27', '2025-06-29 09:10:27'),
(37, 2, 'oil-gallery.jpg', 'public_storage', 'media/15He4BwNK2UhML1oX7ug8VY3tzuZXIQ8AzUKkS99.jpg', 'jpg', 'image/jpeg', '58245', '2025-06-29 09:10:29', '2025-06-29 09:10:29'),
(38, 2, 'Custard-Apple.jpg', 'public_storage', 'media/T7447pEtLQKYkkUhmDmr1TydXDt5BC2S8PC15z0W.jpg', 'jpg', 'image/jpeg', '81086', '2025-06-29 09:30:28', '2025-06-29 09:30:28'),
(39, 2, 'Custard-Apple2.jpg', 'public_storage', 'media/XG6bCtLDnGlLLyc7zgOmLCMaVrnrJoi5ez4fsPyz.jpg', 'jpg', 'image/jpeg', '58245', '2025-06-29 09:30:28', '2025-06-29 09:30:28'),
(40, 2, 'plums-3-300x300.jpg', 'public_storage', 'media/Q6YAG2BfmbODYvnvdPYKhd4O6yHbUPHzVqqU5HQm.jpg', 'jpg', 'image/jpeg', '13602', '2025-06-29 09:36:40', '2025-06-29 09:36:40'),
(41, 2, 'Plums-600x600.jpg', 'public_storage', 'media/k7PexF1zvk4fymroU94mZdrJEwduDpfVerCiEtIF.jpg', 'jpg', 'image/jpeg', '61451', '2025-06-29 09:36:40', '2025-06-29 09:36:40'),
(42, 2, 'pepper-banner.png', 'public_storage', 'media/JwR5Oeq5u4ZvOuCcbgQC52qcbhnmtnlys1ncbt3W.png', 'png', 'image/png', '102135', '2025-06-29 09:41:04', '2025-06-29 09:41:04'),
(43, 2, 'Coffee-banner-Image-Avako.jpg', 'public_storage', 'media/ILNA6ZGl5XjXMUEE6UBG9FhDYaEsRfEsz16yMlgl.jpg', 'jpg', 'image/jpeg', '158619', '2025-06-29 09:41:19', '2025-06-29 09:41:19'),
(44, 2, 'avako-ads.jpg', 'public_storage', 'media/iHVrWyWog7sth2AwzMmrtXiDKkAfeMir5pL3YPQG.jpg', 'jpg', 'image/jpeg', '92335', '2025-06-29 09:43:41', '2025-06-29 09:43:41'),
(45, 2, 'avako-two-banner2.jpg', 'public_storage', 'media/0dHjN1HY7jHe5onu4ZKGF3Njtcg3lHSxmlwyhwFg.jpg', 'jpg', 'image/jpeg', '145754', '2025-06-29 09:45:23', '2025-06-29 09:45:23'),
(46, 2, 'avako-two-banner1.png', 'public_storage', 'media/Ula9DxvpkuPB0OSdYqkBvpkQSsK6tSKdUBvjKoE1.png', 'png', 'image/png', '169482', '2025-06-29 09:45:23', '2025-06-29 09:45:23'),
(47, 2, 'Avako-Hilly-Raw-Eucalyptus-Oil-600x600.jpg', 'public_storage', 'media/yB2HnEj4LwJyYw7jI1j7df7uHTckFbvLhjKFvb8h.jpg', 'jpg', 'image/jpeg', '78061', '2025-06-29 10:00:06', '2025-06-29 10:00:06'),
(48, 2, 'Bird-Eye-Chili.jpg', 'public_storage', 'media/ljjpZXjEyQ643iKYf16v5LQCssxcc6cf7ppyMTT6.jpg', 'jpg', 'image/jpeg', '108025', '2025-06-29 10:00:06', '2025-06-29 10:00:06'),
(49, 2, 'Hilly-Garlic.jpg', 'public_storage', 'media/8yeCy2TLiGaHVvZZBvDsGwhvbX2jlzPjnQNeKXgl.jpg', 'jpg', 'image/jpeg', '48811', '2025-06-29 10:00:06', '2025-06-29 10:00:06'),
(50, 2, 'Hilly-Pepper.jpg', 'public_storage', 'media/Wot970ZZ8obf5Ahmudwk2DuhNbeGosVE2nICuGFV.jpg', 'jpg', 'image/jpeg', '81680', '2025-06-29 10:00:06', '2025-06-29 10:00:06'),
(51, 2, 'natural-fuilt.jpg', 'public_storage', 'media/f3IDpu9ciZKnIe8ca1j5SgUtOipiORN33PpDI99x.jpg', 'jpg', 'image/jpeg', '37903', '2025-06-29 10:02:30', '2025-06-29 10:02:30'),
(52, 2, 'Coffee-Powder.jpg', 'public_storage', 'media/aMUXx0gGW34uLGAtCp78u8cTjjWADvikvSl89QwY.jpg', 'jpg', 'image/jpeg', '134806', '2025-06-29 10:04:44', '2025-06-29 10:04:44'),
(53, 2, 'Hilly-Forest-Raw-Honey.jpg', 'public_storage', 'media/0qMYKkuOfAxonIBSQjmq3zVFnymPbKlwdurFPWAY.jpg', 'jpg', 'image/jpeg', '136008', '2025-06-29 10:07:25', '2025-06-29 10:07:25'),
(54, 2, 'Hilly-Spices-Original.jpg', 'public_storage', 'media/P6zS0FT1PLqrfJwa849I69AodpB5vITkBiDwSYnW.jpg', 'jpg', 'image/jpeg', '77783', '2025-06-29 10:08:57', '2025-06-29 10:08:57'),
(55, 2, 'Dark-White-Melody-Choco-With-Yemmy-Jam-2-600x600.jpg', 'public_storage', 'media/MgDnp2tZTAd31koxOw5mAKQMtO7dT1xCn3AaXDea.jpg', 'jpg', 'image/jpeg', '49580', '2025-06-29 10:10:03', '2025-06-29 10:10:03'),
(56, 2, 'Biriyani-Hilly-Spices.jpg', 'public_storage', 'media/DZ38u88GdOXmRsAKvMpylIZ0yLl00sc6jgCtVrZi.jpg', 'jpg', 'image/jpeg', '62296', '2025-06-29 10:11:18', '2025-06-29 10:11:18'),
(57, 2, 'veb-bg.jpg', 'public_storage', 'media/mAGy2J1O1rzgb50aaEZwHHHPCUAm8vJ7rJmBhMkQ.jpg', 'jpg', 'image/jpeg', '334181', '2025-06-29 10:22:43', '2025-06-29 10:22:43'),
(58, 2, 'Avako-Hilly-Raw-Eucalyptus-Oil.jpg', 'public_storage', 'media/50PzzxgxVlsE30CnoKSIyKqTb8TdjGMfxw9EoCjg.jpg', 'jpg', 'image/jpeg', '171855', '2025-06-29 10:32:50', '2025-06-29 10:32:50'),
(59, 2, 'Avako-Hilly-Raw-Eucalyptus-Oil-1.jpg', 'public_storage', 'media/3hqz9h7SDmifPCvLKwJLPSclYPPCy4jaXjY2bkAf.jpg', 'jpg', 'image/jpeg', '322412', '2025-06-29 10:32:50', '2025-06-29 10:32:50'),
(60, 2, 'avako.in-organic-farm.jpg', 'public_storage', 'media/VqhCDyHkhGnTJSI76uPzPOlZG1xXeSS7JFCXqBLl.jpg', 'jpg', 'image/jpeg', '47519', '2025-06-29 10:32:50', '2025-06-29 10:32:50'),
(61, 2, 'Avako-Hilly-Raw-Eucalyptus-Oil.jpg', 'public_storage', 'media/Q78H93RTLzzW7RrsRmjSQxoxGythHqK0GQc5Li8y.jpg', 'jpg', 'image/jpeg', '171855', '2025-06-29 10:33:09', '2025-06-29 10:33:09'),
(62, 2, 'about-us.jpeg', 'public_storage', 'media/77sC7UivQWFv5ZCIHW9g9F7GgGOFK1LOYUnXlqDu.jpg', 'jpg', 'image/jpeg', '78721', '2025-06-30 15:23:58', '2025-06-30 15:23:58'),
(63, 2, 'Avako-Hilly-Raw-Eucalyptus-Oil.jpg', 'public_storage', 'media/9Kk6uXFZb0sRgg3cZNXUlJGfnGP13TvfiokPQChO.jpg', 'jpg', 'image/jpeg', '171855', '2025-06-30 15:50:35', '2025-06-30 15:50:35'),
(64, 2, 'Avako-Hilly-Raw-Eucalyptus-Oil-1.jpg', 'public_storage', 'media/0G6oRzkWXyHcxf64EsnzCn9k88ti3eGUwCuVTj1W.jpg', 'jpg', 'image/jpeg', '322412', '2025-06-30 15:50:35', '2025-06-30 15:50:35'),
(65, 2, 'avako.in-organic-farm.jpg', 'public_storage', 'media/yUt5GyX75os15KxaBRKIDX2tppc7MybvgE3RYt4J.jpg', 'jpg', 'image/jpeg', '47519', '2025-06-30 15:50:36', '2025-06-30 15:50:36'),
(66, 2, 'Birds-Eye-Chili-3-1536x1536.jpg', 'public_storage', 'media/qhUGnyuMkYRUp9mInpzd0JZN3kUYr4BPakMHn0OR.jpg', 'jpg', 'image/jpeg', '304057', '2025-06-30 15:58:14', '2025-06-30 15:58:14'),
(67, 2, 'Birds-Eye-Chili-4-1536x1536.jpg', 'public_storage', 'media/cvo6fZR7tsuvL33T5z1GLkzm3FGL4FVV2myMX1f5.jpg', 'jpg', 'image/jpeg', '454521', '2025-06-30 15:58:14', '2025-06-30 15:58:14'),
(68, 2, 'Birds-Eye-Chili-2-1536x1536.jpg', 'public_storage', 'media/SRYePN8ZHuXfZEuZd6cK8ZfJOjFE0s5maIKPtwj5.jpg', 'jpg', 'image/jpeg', '460279', '2025-06-30 15:58:14', '2025-06-30 15:58:14'),
(69, 2, 'avako-hilly-original-pepper-organic.jpg', 'public_storage', 'media/5Nf5kDUi5rtRndGOoOWZIkmRY6muJBwIod9pJIqP.jpg', 'jpg', 'image/jpeg', '155648', '2025-06-30 16:11:28', '2025-06-30 16:11:28'),
(70, 2, 'avako-hilly-original-pepper-organic-1.jpg', 'public_storage', 'media/Oxhr2eniBXUl20zzcuWJNk0tF85bLrD4XZpMK5VC.jpg', 'jpg', 'image/jpeg', '162403', '2025-06-30 16:11:28', '2025-06-30 16:11:28'),
(71, 2, 'avako-hilly-original-pepper-organic-3.jpg', 'public_storage', 'media/VEBAWEuAi9YEGDKXEwWu8RHEa1ynCiI2GNhy1xBA.jpg', 'jpg', 'image/jpeg', '162616', '2025-06-30 16:11:28', '2025-06-30 16:11:28'),
(72, 2, 'Pepper-Avako-Products-5.jpg', 'public_storage', 'media/XCLRBmXXojiST1n9USRkLPQbRU7inH86akXMUODp.jpg', 'jpg', 'image/jpeg', '125887', '2025-06-30 16:11:28', '2025-06-30 16:11:28'),
(73, 2, 'avako-green-cardamom-elaichi-premium.jpg', 'public_storage', 'media/Dkzi1UkMTI1JVniy6KDzWlsqE527VAGLzYp9Kz4s.jpg', 'jpg', 'image/jpeg', '47236', '2025-06-30 16:24:35', '2025-06-30 16:24:35'),
(74, 2, 'avako-green-cardamom-elaichi-premium-2.jpg', 'public_storage', 'media/pCjshRpauUcOfjD62waEZSbXhydpZzJrqug90ozT.jpg', 'jpg', 'image/jpeg', '17472', '2025-06-30 16:24:35', '2025-06-30 16:24:35'),
(75, 2, 'avako-green-cardamom-elaichi-premium-3.jpg', 'public_storage', 'media/GgnwBeeJXQrM0tObDNPinm5c5MPirMesZNisFWnk.jpg', 'jpg', 'image/jpeg', '17684', '2025-06-30 16:24:35', '2025-06-30 16:24:35'),
(76, 2, 'avako-green-cardamom-elaichi-premium-4.jpg', 'public_storage', 'media/hPQFoMbK5At2e6f1Rm1lqkBOWyb7JHApavYUbbKi.jpg', 'jpg', 'image/jpeg', '28158', '2025-06-30 16:24:35', '2025-06-30 16:24:35'),
(77, 2, 'avako-green-cardamom-elaichi-premium-5.jpg', 'public_storage', 'media/VmB1ojfi6mOUYYMOMAqAeYEIDkdeQpk2IpPOF2YM.jpg', 'jpg', 'image/jpeg', '28349', '2025-06-30 16:24:35', '2025-06-30 16:24:35'),
(78, 2, 'Banner-1-2.jpg', 'public_storage', 'media/ERpHq00C6fLmgDFJn8Br4hMfFcbplqTpYlJ2kwgZ.jpg', 'jpg', 'image/jpeg', '68363', '2025-06-30 17:00:21', '2025-06-30 17:00:21'),
(79, 2, 'assortment-fresh-organic-fruits-vegetables-rainbow-colors-panoramic-food-background-171245196.jpg', 'public_storage', 'media/Sh0rbopqHUiFVr1A6FuLysA8QxUs0lpYRAewg4v6.jpg', 'jpg', 'image/jpeg', '67170', '2025-06-30 17:10:32', '2025-06-30 17:10:32'),
(80, 2, 'Gemini_Generated_Image_51cags51cags51ca.png', 'public_storage', 'media/ad1WvNjpdC1w121sjUhFjGPD7JWT9TC8zeiNkycA.png', 'png', 'image/png', '1215822', '2025-06-30 17:16:32', '2025-06-30 17:16:32'),
(81, 2, 'Gemini_Generated_Image_j4rhsdj4rhsdj4rh.png', 'public_storage', 'media/yAXvLDFmAHKGTRLrY0RqA3pb7gIuuAPbQqY3ypuW.png', 'png', 'image/png', '1191044', '2025-06-30 17:18:38', '2025-06-30 17:18:38'),
(82, 2, 'group-of-vegetables-top-view-with-aesthetic-arrangement-black-background-photo.jpg', 'public_storage', 'media/aNlDNStphF8rZzqnU8CDrdFZLUOLRkQbjDpdRKrn.jpg', 'jpg', 'image/jpeg', '67714', '2025-06-30 17:20:52', '2025-06-30 17:20:52'),
(83, 2, 'background-food-fruits-vegetables-collection-fruit-vegetable-healthy-eating-diet-apples-oranges-banner-tomatoes-backgrounds-190445608.jpg', 'public_storage', 'media/Yg5S0ZC8RhCFRNeewUyjHax7qjw6zHJ3VJb4RndC.jpg', 'jpg', 'image/jpeg', '164751', '2025-06-30 17:24:28', '2025-06-30 17:24:28'),
(84, 2, 'background-food-fruits-vegetables-collection-fruit-vegetable-healthy-eating-diet-apples-oranges-banner-tomatoes-backgrounds-190445608.jpg', 'public_storage', 'media/Yay948qeOR2EEGvyaVYIDSMoPlmFLRMFRTv163Rw.jpg', 'jpg', 'image/jpeg', '164751', '2025-06-30 17:25:09', '2025-06-30 17:25:09'),
(85, 2, 'Screenshot 2025-06-30 at 10.54.58 PM.png', 'public_storage', 'media/wtdzI92aBB88PkMeLRIPTrbhUg5mx0Ry8OY7A0R1.png', 'png', 'image/png', '3362466', '2025-06-30 17:25:18', '2025-06-30 17:25:18'),
(86, 2, 'biriyani-hilly-spices-banner.jpg', 'public_storage', 'media/mtaV85pWOeYVvY4760IGdQnMo28lWlaNhxGESqfM.jpg', 'jpg', 'image/jpeg', '109400', '2025-07-02 20:39:53', '2025-07-02 20:39:53'),
(87, 2, 'avako-true-cardamom-powder-1.jpg', 'public_storage', 'media/6yxK9AttcucoHWtp717hJOnRPhq0OYm25YSQJ79j.jpg', 'jpg', 'image/jpeg', '109327', '2025-07-02 20:49:58', '2025-07-02 20:49:58'),
(88, 2, 'avako-true-cardamom-powder-2.jpg', 'public_storage', 'media/XBASpo0eoZSGvmdQFup43clFIIuJbWaPtbig5nTp.jpg', 'jpg', 'image/jpeg', '123136', '2025-07-02 20:49:58', '2025-07-02 20:49:58'),
(89, 2, 'avako-true-cardamom-powder-3.jpg', 'public_storage', 'media/K2RzGMuXS4Fc4kTnAxOBH8ZJ2PxM42FPJRfjOKMh.jpg', 'jpg', 'image/jpeg', '179013', '2025-07-02 20:49:58', '2025-07-02 20:49:58'),
(90, 2, 'avako-true-cardamom-powder-4.jpg', 'public_storage', 'media/jjmEYc3DfxfgrXMab8949P7TTU8abxuahZoW1WIB.jpg', 'jpg', 'image/jpeg', '165318', '2025-07-02 20:49:58', '2025-07-02 20:49:58'),
(91, 2, 'avako-true-cardamom-powder-5.jpg', 'public_storage', 'media/ZLZcL0FrRLb0hbt8MplqbWZ1SlEE81YedNFFZ4e4.jpg', 'jpg', 'image/jpeg', '47519', '2025-07-02 20:49:58', '2025-07-02 20:49:58'),
(92, 2, 'cinnamon-pattai-avako-300gms-1.jpg', 'public_storage', 'media/QAsu7qmTcQSizkv7gdMu2J8KwEFyoA02Nqefm3OU.jpg', 'jpg', 'image/jpeg', '174508', '2025-07-02 20:55:18', '2025-07-02 20:55:18'),
(93, 2, 'cinnamon-pattai-avako-300gms-2.jpg', 'public_storage', 'media/sYYhLNr1XISuBNiWgCMS52QGP96OWrvOcbaYUw0Y.jpg', 'jpg', 'image/jpeg', '174508', '2025-07-02 20:55:18', '2025-07-02 20:55:18'),
(94, 2, 'cinnamon-pattai-avako-300gms-3.jpg', 'public_storage', 'media/cH90kOYkv0A1apu3B683I8mmDx4puOY0fWxRp2Mu.jpg', 'jpg', 'image/jpeg', '123583', '2025-07-02 20:55:18', '2025-07-02 20:55:18'),
(95, 2, 'cinnamon-pattai-avako-300gms-4.jpg', 'public_storage', 'media/iTB2xZmC7SNXOApTug1oSbt8yuoSKkzAzcxxerrt.jpg', 'jpg', 'image/jpeg', '173133', '2025-07-02 20:55:18', '2025-07-02 20:55:18'),
(96, 2, 'cloves-kirambu-lavenham-avako-hilly-cloves-1.jpg', 'public_storage', 'media/BmPM0XwNdp7fAlIUNM84UE0KXu6r8BM9If5YGc2M.jpg', 'jpg', 'image/jpeg', '140012', '2025-07-02 21:05:42', '2025-07-02 21:05:42'),
(97, 2, 'cloves-kirambu-lavenham-avako-hilly-cloves-2.jpg', 'public_storage', 'media/e1ChWOKtBvLinaaXcQZtvepXLg3zu06vJhOYQAOO.jpg', 'jpg', 'image/jpeg', '128373', '2025-07-02 21:05:42', '2025-07-02 21:05:42'),
(98, 2, 'cloves-kirambu-lavenham-avako-hilly-cloves-3.jpg', 'public_storage', 'media/xVRYnk2caRe4Yt3i5brEFzsUcUCLrLTzb15PlZ0L.jpg', 'jpg', 'image/jpeg', '153704', '2025-07-02 21:05:42', '2025-07-02 21:05:42'),
(99, 2, 'cloves-kirambu-lavenham-avako-hilly-cloves-4.jpg', 'public_storage', 'media/ys11uiY0UCR5FKubYR9wlV6sd56tOXMajSRjMfnD.jpg', 'jpg', 'image/jpeg', '124727', '2025-07-02 21:05:42', '2025-07-02 21:05:42'),
(100, 2, 'cloves-kirambu-lavenham-avako-hilly-cloves-5.jpg', 'public_storage', 'media/yNJN7SUvGi7DDhRrYZOZHihkM34HXzI99xYroqbw.jpg', 'jpg', 'image/jpeg', '139057', '2025-07-02 21:05:42', '2025-07-02 21:05:42'),
(101, 2, 'hilll-black-pepper-organic-and-natural-premium-1.jpg', 'public_storage', 'media/ezeUlJO8DnEreoBPaEaEqxrj1JzDUhXBE6ipCphz.jpg', 'jpg', 'image/jpeg', '4613', '2025-07-02 21:12:27', '2025-07-02 21:12:27'),
(102, 2, 'hilll-black-pepper-organic-and-natural-premium-2.jpg', 'public_storage', 'media/8ij4RoShbwm8FglLya7XDT4aE6jgm6FB1igxcCfb.jpg', 'jpg', 'image/jpeg', '125887', '2025-07-02 21:12:27', '2025-07-02 21:12:27'),
(103, 2, 'hilll-black-pepper-organic-and-natural-premium-3.jpg', 'public_storage', 'media/122sf1JL7xYTqG7mAmk84BO88NBUBc358I1qmt9C.jpg', 'jpg', 'image/jpeg', '162823', '2025-07-02 21:12:27', '2025-07-02 21:12:27'),
(104, 2, 'hilll-black-pepper-organic-and-natural-premium-4.jpg', 'public_storage', 'media/NH7QHjFEE62lwWypKAwtuf6EffsHRT6hbudTcTk4.jpg', 'jpg', 'image/jpeg', '125887', '2025-07-02 21:12:27', '2025-07-02 21:12:27'),
(105, 2, 'hilll-black-pepper-organic-and-natural-premium-5.jpg', 'public_storage', 'media/XjyWYsbceVzULnTys01GMEM5Zn3YOc3H6iwtHJu2.jpg', 'jpg', 'image/jpeg', '162403', '2025-07-02 21:12:27', '2025-07-02 21:12:27'),
(106, 2, 'hilll-black-pepper-organic-and-natural-premium-6.jpg', 'public_storage', 'media/G8DwXdGVEDEWTj8wmEsd73WtH7mzvjwv2PJdbnaq.jpg', 'jpg', 'image/jpeg', '83468', '2025-07-02 21:12:27', '2025-07-02 21:12:27'),
(107, 2, 'avako-true-cardamom-elaichi-premium-1.jpg', 'public_storage', 'media/VyOxBniiaf5cZrtgFY5G9rHQ9QUruw7lOelJ4abr.jpg', 'jpg', 'image/jpeg', '74925', '2025-07-02 21:23:23', '2025-07-02 21:23:23'),
(108, 2, 'avako-true-cardamom-elaichi-premium-2.jpg', 'public_storage', 'media/zGaC33Qxl7ED3JEldkzT7tPM4KH3tP2uXDsLTSdt.jpg', 'jpg', 'image/jpeg', '120508', '2025-07-02 21:23:23', '2025-07-02 21:23:23'),
(109, 2, 'avako-true-cardamom-elaichi-premium-3.jpg', 'public_storage', 'media/p2C0HdWISQAB7wPfCppyCJyqsSTOVVN3fHZzOxk2.jpg', 'jpg', 'image/jpeg', '144544', '2025-07-02 21:23:23', '2025-07-02 21:23:23'),
(110, 2, 'avako-true-cardamom-elaichi-premium-4.jpg', 'public_storage', 'media/7C4vsIRl0RMBSoAyVNOcVW7ZicSPNrkkkFyFIUqQ.jpg', 'jpg', 'image/jpeg', '282679', '2025-07-02 21:23:23', '2025-07-02 21:23:23'),
(111, 2, 'avako-true-cardamom-elaichi-premium-5.jpg', 'public_storage', 'media/tOx9Q6SMf2DVWGdtb6MfJTD6eXRm12Mq6iZZP9r4.jpg', 'jpg', 'image/jpeg', '124917', '2025-07-02 21:23:24', '2025-07-02 21:23:24'),
(112, 2, 'avako-true-cardamom-elaichi-premium-6.jpg', 'public_storage', 'media/4iJsTS3etMlYPKL2lNXHaLqGI9xJ7fL2yLfb8lVB.jpg', 'jpg', 'image/jpeg', '47519', '2025-07-02 21:23:24', '2025-07-02 21:23:24'),
(113, 2, 'avako-hill-garlic-organic-1.jpg', 'public_storage', 'media/bturUivcHAoS8Oy0A02Q29e1zJIfUOKFxFo4VaMw.jpg', 'jpg', 'image/jpeg', '130279', '2025-07-02 21:34:52', '2025-07-02 21:34:52'),
(114, 2, 'avako-hill-garlic-organic-2.jpg', 'public_storage', 'media/PCvMnRqEqYZ4IK9I3FvVNzytqmETDaWaRKTCSI2s.jpg', 'jpg', 'image/jpeg', '206831', '2025-07-02 21:34:53', '2025-07-02 21:34:53'),
(115, 2, 'avako-hill-garlic-organic-3.jpg', 'public_storage', 'media/gF9YXwGCPUu5uHNAJg2X3Mf4FvRFHrpFcJyZBRTL.jpg', 'jpg', 'image/jpeg', '191446', '2025-07-02 21:34:53', '2025-07-02 21:34:53'),
(116, 2, 'avako-hill-garlic-organic-4.jpg', 'public_storage', 'media/wVy0DbGZ95Eo4h5AoukdVkToea6GV7k5qOkoHqQx.jpg', 'jpg', 'image/jpeg', '173203', '2025-07-02 21:34:53', '2025-07-02 21:34:53'),
(117, 2, 'avako-hill-garlic-organic-5.jpg', 'public_storage', 'media/CCHEbFiYBDO87unDW6azUZdYJmr2pOprkdGjf6pS.jpg', 'jpg', 'image/jpeg', '205529', '2025-07-02 21:34:53', '2025-07-02 21:34:53'),
(118, 2, 'avako-hilly-original-garlic-premium-organic-1.jpg', 'public_storage', 'media/YxcvE0eej9rDgnPASFZlSiTnM2RKf3w2I5dUiHKF.jpg', 'jpg', 'image/jpeg', '82383', '2025-07-02 21:38:06', '2025-07-02 21:38:06'),
(119, 2, 'avako-hilly-original-garlic-premium-organic-2.jpg', 'public_storage', 'media/wojpgWpil5dbmbCShybhsu7VzguknCGJ1o2TH8Um.jpg', 'jpg', 'image/jpeg', '92496', '2025-07-02 21:38:06', '2025-07-02 21:38:06'),
(120, 2, 'avako-hilly-original-garlic-premium-organic-3.jpg', 'public_storage', 'media/5cMrqO9yjIRwkDJxS6fKxMlnPwduucotXUP6kL4G.jpg', 'jpg', 'image/jpeg', '124491', '2025-07-02 21:38:06', '2025-07-02 21:38:06'),
(121, 2, 'avako-hilly-original-garlic-premium-organic-4.jpg', 'public_storage', 'media/uwE9SdW43yaJnWo4PsDCYHTTPe8bPwubDgaGCOOY.jpg', 'jpg', 'image/jpeg', '89972', '2025-07-02 21:38:06', '2025-07-02 21:38:06'),
(122, 2, 'avako-hilly-original-garlic-premium-organic-5.jpg', 'public_storage', 'media/yH6GfVRzV8xWoLZsgQBun7KkWBO3kHqAgT0oFUUD.jpg', 'jpg', 'image/jpeg', '47519', '2025-07-02 21:38:06', '2025-07-02 21:38:06'),
(123, 2, 'single-clove-hill-garlic-ஒற்றை-பல்-மலை-பூண்டு-kodaikanal-pre-1.jpg', 'public_storage', 'media/z7QmCIZjp0QAi4XL54P8Wm6nntMtlzTNYZgCyLTD.jpg', 'jpg', 'image/jpeg', '111853', '2025-07-02 21:44:25', '2025-07-02 21:44:25'),
(124, 2, 'single-clove-hill-garlic-ஒற்றை-பல்-மலை-பூண்டு-kodaikanal-pre-2.jpg', 'public_storage', 'media/icEXpN8K3HH9sCpbHnazbsB2Ncx3E6fY1hKIiuWY.jpg', 'jpg', 'image/jpeg', '110797', '2025-07-02 21:44:25', '2025-07-02 21:44:25'),
(125, 2, 'single-clove-hill-garlic-ஒற்றை-பல்-மலை-பூண்டு-kodaikanal-pre-3.jpg', 'public_storage', 'media/1U3MY56dEnYUJtAJKjqkzIvRT8PK7XgQEqQzzig3.jpg', 'jpg', 'image/jpeg', '154315', '2025-07-02 21:44:25', '2025-07-02 21:44:25'),
(126, 2, 'single-clove-hill-garlic-ஒற்றை-பல்-மலை-பூண்டு-kodaikanal-pre-4.jpg', 'public_storage', 'media/mwPLLLhMvtzLFWXXZ9BDOy4sW62x7EZwd0qUhxto.jpg', 'jpg', 'image/jpeg', '136209', '2025-07-02 21:44:25', '2025-07-02 21:44:25'),
(127, 2, 'avako-dhani-lanka-red-chili-original-1.jpg', 'public_storage', 'media/rmffmnxXCXwpsTzXXs1b0COKjr9Pecacp1RRhO81.jpg', 'jpg', 'image/jpeg', '85781', '2025-07-02 22:00:37', '2025-07-02 22:00:37'),
(128, 2, 'avako-dhani-lanka-red-chili-original-2.jpg', 'public_storage', 'media/NcQkNziDyeO1Ch91qlWPRYn0aNlcGjB0yj9aV78t.jpg', 'jpg', 'image/jpeg', '175912', '2025-07-02 22:00:37', '2025-07-02 22:00:37'),
(129, 2, 'avako-dhani-lanka-red-chili-original-3.jpg', 'public_storage', 'media/A8uVOPRFnnPIwLtcV9UhXk853xxrlOJhJm7DvzoR.jpg', 'jpg', 'image/jpeg', '105183', '2025-07-02 22:00:37', '2025-07-02 22:00:37'),
(130, 2, 'avako-dhani-lanka-red-chili-original-4.jpg', 'public_storage', 'media/kSnKFTmHDh6kfUxRTxCiLWXEe8Gik522iQhhMhJp.jpg', 'jpg', 'image/jpeg', '155888', '2025-07-02 22:00:38', '2025-07-02 22:00:38'),
(131, 2, 'avako-dhani-lanka-red-chili-original-5.jpg', 'public_storage', 'media/D7L9qzusKfKbIy57FhAbpYXk4jDT3HNtYLchQMCv.jpg', 'jpg', 'image/jpeg', '47519', '2025-07-02 22:00:38', '2025-07-02 22:00:38'),
(132, 2, 'avako-original-coffee-powder-with-delicate-aroma-1.jpg', 'public_storage', 'media/rpsMabF1nKt8QYmJHTw1HPY7T7kTlqtCMB58ulkO.jpg', 'jpg', 'image/jpeg', '134806', '2025-07-02 22:06:32', '2025-07-02 22:06:32'),
(133, 2, 'avako-original-coffee-powder-with-delicate-aroma-2.jpg', 'public_storage', 'media/uY3dm6mzX9hkIwFovftW1eqDvLb2zABPciXqhS9w.jpg', 'jpg', 'image/jpeg', '110740', '2025-07-02 22:06:32', '2025-07-02 22:06:32'),
(134, 2, 'avako-original-coffee-powder-with-delicate-aroma-3.jpg', 'public_storage', 'media/DvYL53wKqJzDYfyeeNWrzdiZ31CmLf0ZnFV32zjQ.jpg', 'jpg', 'image/jpeg', '125950', '2025-07-02 22:06:32', '2025-07-02 22:06:32'),
(135, 2, 'avako-original-coffee-powder-with-delicate-aroma-4.jpg', 'public_storage', 'media/yMeI9zzGFlPSteSPkb3l3lvwMQy8oXwH6d047KMC.jpg', 'jpg', 'image/jpeg', '127436', '2025-07-02 22:06:32', '2025-07-02 22:06:32'),
(136, 2, 'avako-original-coffee-powder-with-delicate-aroma-5.jpg', 'public_storage', 'media/gkv3oFdUzoxxfFwomw3LIMrtRtuGnYddrvr2YVnm.jpg', 'jpg', 'image/jpeg', '90537', '2025-07-02 22:06:33', '2025-07-02 22:06:33'),
(137, 2, 'avako-original-filter-coffee-powder-with-delicate-aroma-1.jpg', 'public_storage', 'media/LoHnyDEK77r2DdxJRvuChDRF7TQ2IQduyS0BG16j.jpg', 'jpg', 'image/jpeg', '110711', '2025-07-02 22:14:03', '2025-07-02 22:14:03'),
(138, 2, 'avako-original-filter-coffee-powder-with-delicate-aroma-2.jpg', 'public_storage', 'media/D6qlaQOWtw0DkRMz7UYfST35hzNtU3BuTWd0iiTM.jpg', 'jpg', 'image/jpeg', '191166', '2025-07-02 22:14:03', '2025-07-02 22:14:03'),
(139, 2, 'avako-original-filter-coffee-powder-with-delicate-aroma-3.jpg', 'public_storage', 'media/TkDrnetBgY8deBriUzA8rIDH2zh86s7W0ahIEzZp.jpg', 'jpg', 'image/jpeg', '147310', '2025-07-02 22:14:03', '2025-07-02 22:14:03'),
(140, 2, 'avako-original-filter-coffee-powder-with-delicate-aroma-4.jpg', 'public_storage', 'media/lfC52JiwMKilgzRtpNOrA1570URgFaMajoUqHwLm.jpg', 'jpg', 'image/jpeg', '130961', '2025-07-02 22:14:03', '2025-07-02 22:14:03'),
(141, 2, 'avako-original-filter-coffee-powder-with-delicate-aroma-5.jpg', 'public_storage', 'media/JTUJLD7dT0DRzpVyBbYv0xhrc5YfwzwpTns78sO8.jpg', 'jpg', 'image/jpeg', '96528', '2025-07-02 22:14:04', '2025-07-02 22:14:04'),
(142, 2, 'avako-herbalfilter-coffee-powder-herbal-black-coffee-1.jpg', 'public_storage', 'media/bstLaLP84lhDSs8RnravNCuQQzFQy0SKsL0N3LXp.jpg', 'jpg', 'image/jpeg', '130941', '2025-07-02 22:25:09', '2025-07-02 22:25:09'),
(143, 2, 'avako-herbalfilter-coffee-powder-herbal-black-coffee-2.jpg', 'public_storage', 'media/5Nk4ARkM4A7DiCvDESgriDPyv8pe1AyXC6ycDZJD.jpg', 'jpg', 'image/jpeg', '188347', '2025-07-02 22:25:09', '2025-07-02 22:25:09'),
(144, 2, 'avako-herbalfilter-coffee-powder-herbal-black-coffee-3.jpg', 'public_storage', 'media/kY022rdLg8KHSZZD3NbcoyQIYDZcPuRIRHMcrzum.jpg', 'jpg', 'image/jpeg', '71772', '2025-07-02 22:25:09', '2025-07-02 22:25:09'),
(145, 2, 'avako-herbalfilter-coffee-powder-herbal-black-coffee-4.jpg', 'public_storage', 'media/3tTe5u4WlElcXfP46pk4hqGd7JkLV3ehcu0qekWn.jpg', 'jpg', 'image/jpeg', '296216', '2025-07-02 22:25:09', '2025-07-02 22:25:09'),
(146, 2, 'avako-herbalfilter-coffee-powder-herbal-black-coffee-5.jpg', 'public_storage', 'media/trooyl9caxvkqZ4pU5xyphoHPr4vxuLdoreSrlZK.jpg', 'jpg', 'image/jpeg', '83690', '2025-07-02 22:25:09', '2025-07-02 22:25:09'),
(147, 2, 'avako-herbalfilter-coffee-powder-herbal-black-coffee-6.jpg', 'public_storage', 'media/iajdVJo4KUXfgRQXTxHXywYL0fwDbyypXmcrZvUC.jpg', 'jpg', 'image/jpeg', '87562', '2025-07-02 22:25:09', '2025-07-02 22:25:09'),
(148, 2, 'palm-jaggery-coffee-karupatti-coffee-கருப்பட்டி-காபி-premium-avako-1.jpg', 'public_storage', 'media/OWDpRm06KaIVmlQ9kGzNg4t9IQbpuQBfGsOmZvXm.jpg', 'jpg', 'image/jpeg', '117737', '2025-07-03 14:42:45', '2025-07-03 14:42:45'),
(149, 2, 'palm-jaggery-coffee-karupatti-coffee-கருப்பட்டி-காபி-premium-avako-2.jpg', 'public_storage', 'media/reMmnf6NPBxC34msYfvuIEhd1LPsV6OVrRhzNp53.jpg', 'jpg', 'image/jpeg', '99513', '2025-07-03 14:42:45', '2025-07-03 14:42:45'),
(150, 2, 'palm-jaggery-coffee-karupatti-coffee-கருப்பட்டி-காபி-premium-avako-3.jpg', 'public_storage', 'media/teo3fUT4WAsaK57WPYuZh5USjuamS3XWYlEBZtxH.jpg', 'jpg', 'image/jpeg', '145535', '2025-07-03 14:42:45', '2025-07-03 14:42:45'),
(151, 2, 'palm-jaggery-coffee-karupatti-coffee-கருப்பட்டி-காபி-premium-avako-4.jpg', 'public_storage', 'media/Uyv1zuk5qlFRMqtyq4Jc0IrWDonzb3r1amUEjKUd.jpg', 'jpg', 'image/jpeg', '143398', '2025-07-03 14:42:45', '2025-07-03 14:42:45'),
(152, 2, 'palm-jaggery-coffee-karupatti-coffee-கருப்பட்டி-காபி-premium-avako-5.jpg', 'public_storage', 'media/kHj9jdSA5rwAzNxnCQTXEojCVSsrZHa5d4jnpa6s.jpg', 'jpg', 'image/jpeg', '152568', '2025-07-03 14:42:45', '2025-07-03 14:42:45'),
(153, 2, 'palm-jaggery-coffee-karupatti-coffee-கருப்பட்டி-காபி-premium-avako-6.jpg', 'public_storage', 'media/NlQRvzlM5dEY9YPAF2FtC7zJtvL7PjR6kwK7IKug.jpg', 'jpg', 'image/jpeg', '86048', '2025-07-03 14:42:45', '2025-07-03 14:42:45'),
(154, 2, 'non-roasted-coffee-bean-avako-1.jpg', 'public_storage', 'media/cb4RFsdIHHrU6Vu4BCeBV9q0TfoQgsIle4eLEQ72.jpg', 'jpg', 'image/jpeg', '275622', '2025-07-03 14:46:36', '2025-07-03 14:46:36'),
(155, 2, 'non-roasted-coffee-bean-avako-2.jpg', 'public_storage', 'media/vQhwshe7YkUsdBLakTjCBbfFxuMnlQTmNyPH1Ej5.jpg', 'jpg', 'image/jpeg', '273388', '2025-07-03 14:46:36', '2025-07-03 14:46:36'),
(156, 2, 'non-roasted-coffee-bean-avako-3.jpg', 'public_storage', 'media/hlYHNB8IhZGASGaLLEW8jSOPpKhRcHQGgAfWLnES.jpg', 'jpg', 'image/jpeg', '65992', '2025-07-03 14:46:36', '2025-07-03 14:46:36'),
(157, 2, 'non-roasted-coffee-bean-avako-4.jpg', 'public_storage', 'media/HIT6D3UogWWh3hChBRs1T0byBS6lbl0FIRRGBiiC.jpg', 'jpg', 'image/jpeg', '265774', '2025-07-03 14:46:36', '2025-07-03 14:46:36'),
(158, 2, 'non-roasted-coffee-bean-avako-5.jpg', 'public_storage', 'media/dmn20yJLZIW17ZZwnuGdZ1Ha0GkozlqLNaGuFjNZ.jpg', 'jpg', 'image/jpeg', '54453', '2025-07-03 14:46:36', '2025-07-03 14:46:36'),
(159, 2, 'non-roasted-coffee-bean-avako-6.jpg', 'public_storage', 'media/M5hcBSnhJrjMbLeXCcSCSZfHnAKHLZIyBucqXdvj.jpg', 'jpg', 'image/jpeg', '213445', '2025-07-03 14:46:36', '2025-07-03 14:46:36'),
(160, 2, 'avako-roasted-coffee-bean-with-delicious-aroma-1.jpg', 'public_storage', 'media/gnjliG2iCpDp6uu4skZUl39fXqPq06WOfMuOCQwK.jpg', 'jpg', 'image/jpeg', '241213', '2025-07-03 14:49:02', '2025-07-03 14:49:02'),
(161, 2, 'avako-roasted-coffee-bean-with-delicious-aroma-2.jpg', 'public_storage', 'media/gSuG9eztbnZj2rxWcl9StNdbCNXq5AVHYzWvmhMF.jpg', 'jpg', 'image/jpeg', '241213', '2025-07-03 14:49:02', '2025-07-03 14:49:02'),
(162, 2, 'avako-roasted-coffee-bean-with-delicious-aroma-3.jpg', 'public_storage', 'media/33IDTKwLVfNImTbFSQbGC5KN35Ag6y7PSCwclWrg.jpg', 'jpg', 'image/jpeg', '86616', '2025-07-03 14:49:02', '2025-07-03 14:49:02'),
(163, 2, 'avako-roasted-coffee-bean-with-delicious-aroma-4.jpg', 'public_storage', 'media/KiBH9MKUAMq6zl9fCiTlpyQdzT7a5p2OKN9FwRkz.jpg', 'jpg', 'image/jpeg', '93841', '2025-07-03 14:49:02', '2025-07-03 14:49:02'),
(164, 2, 'kodaikanal-organic-broccoli-avako-1.jpg', 'public_storage', 'media/dOU7mKTPhPkr2XagYOBNtvyjAVlO429zkIPQIapk.jpg', 'jpg', 'image/jpeg', '116171', '2025-07-03 14:54:06', '2025-07-03 14:54:06'),
(165, 2, 'kodaikanal-organic-broccoli-avako-2.jpg', 'public_storage', 'media/VhHbkxKvCMuOTeXX0y3AicdySCEJiRkT62su0dDC.jpg', 'jpg', 'image/jpeg', '130599', '2025-07-03 14:54:06', '2025-07-03 14:54:06'),
(166, 2, 'kodaikanal-organic-broccoli-avako-3.jpg', 'public_storage', 'media/kWEMGWzZBoyQcrXmjR77godY0qsccKaV3Nb8qOrJ.jpg', 'jpg', 'image/jpeg', '85168', '2025-07-03 14:54:06', '2025-07-03 14:54:06'),
(167, 2, 'kodaikanal-organic-broccoli-avako-4.jpg', 'public_storage', 'media/zXKHQ2v8mo6TXcqlTrYCW2Ntg1L6FY0P7kkWot46.jpg', 'jpg', 'image/jpeg', '83593', '2025-07-03 14:54:06', '2025-07-03 14:54:06'),
(168, 2, 'kodaikanal-organic-broccoli-avako-5.jpg', 'public_storage', 'media/DHPToafLYjea5Cn4NK2i4l85Q2p0BinMFlgeUIWe.jpg', 'jpg', 'image/jpeg', '374068', '2025-07-03 14:54:06', '2025-07-03 14:54:06'),
(169, 2, 'kodaikanal-organic-broccoli-avako-6.jpg', 'public_storage', 'media/BBOqujMhxdLyO2FKNxmnLtYLXQFMnC1X9w66t7Gl.jpg', 'jpg', 'image/jpeg', '79623', '2025-07-03 14:54:06', '2025-07-03 14:54:06'),
(170, 2, 'butter-beans-lima-healthy-vegetables-organic-1.jpg', 'public_storage', 'media/ccJOULKrbIHFzVRUsSlNbkgGIPO6JjJsApG9F39G.jpg', 'jpg', 'image/jpeg', '65514', '2025-07-03 14:56:53', '2025-07-03 14:56:53'),
(171, 2, 'butter-beans-lima-healthy-vegetables-organic-2.jpg', 'public_storage', 'media/B5fwQTY6kw1xoMHvUAS0JqwgAIODOmlW2x6iKm9G.jpg', 'jpg', 'image/jpeg', '133439', '2025-07-03 14:56:53', '2025-07-03 14:56:53'),
(172, 2, 'butter-beans-lima-healthy-vegetables-organic-3.jpg', 'public_storage', 'media/8qCB6JZ85FCmA8HIqOvMGLj3iFox3Lfu1sNoRIOe.jpg', 'jpg', 'image/jpeg', '120424', '2025-07-03 14:56:53', '2025-07-03 14:56:53'),
(173, 2, 'chow-chow-சௌ-சௌ-chayote-squash-vegetables-organic-1.jpg', 'public_storage', 'media/nqWpcU8iTy3nFouC0jYP0N2oE65VWSFS0MuXNd2W.jpg', 'jpg', 'image/jpeg', '43346', '2025-07-03 14:59:28', '2025-07-03 14:59:28'),
(174, 2, 'chow-chow-சௌ-சௌ-chayote-squash-vegetables-organic-2.jpg', 'public_storage', 'media/v2itW1PStRzGV1lCJjtE2UOXhPGvF4D7LNuUUTPE.jpg', 'jpg', 'image/jpeg', '78800', '2025-07-03 14:59:28', '2025-07-03 14:59:28'),
(175, 2, 'chow-chow-சௌ-சௌ-chayote-squash-vegetables-organic-3.jpg', 'public_storage', 'media/8VHgt5ScNcEUVt1uWXgkoffMN7KneF5R85eT1Zwc.jpg', 'jpg', 'image/jpeg', '69831', '2025-07-03 14:59:28', '2025-07-03 14:59:28'),
(176, 2, 'kodaikanal-beet-root-from-organic-garden-avako-1.jpg', 'public_storage', 'media/h1b32WSDbs3CwLM3sIWPS1Rz58GdGqHT2rYZhdFH.jpg', 'jpg', 'image/jpeg', '227897', '2025-07-03 15:02:52', '2025-07-03 15:02:52'),
(177, 2, 'kodaikanal-beet-root-from-organic-garden-avako-2.jpg', 'public_storage', 'media/YSGx2j8HYmd5SSo9E0ugqUGf4E4BmLkAhbiN5Ux6.jpg', 'jpg', 'image/jpeg', '241647', '2025-07-03 15:02:52', '2025-07-03 15:02:52'),
(178, 2, 'kodaikanal-beet-root-from-organic-garden-avako-3.jpg', 'public_storage', 'media/leUzRk52BtR0fZDPSfl60MiyFD9bwHmmtei8BBSG.jpg', 'jpg', 'image/jpeg', '226938', '2025-07-03 15:02:52', '2025-07-03 15:02:52'),
(179, 2, 'kodaikanal-beet-root-from-organic-garden-avako-4.jpg', 'public_storage', 'media/nMHBB523v4LfQgPsGh7h2IyPGnaZZZoVZQEWxqtf.jpg', 'jpg', 'image/jpeg', '103566', '2025-07-03 15:02:52', '2025-07-03 15:02:52'),
(180, 2, 'kodaikanal-beet-root-from-organic-garden-avako-5.jpg', 'public_storage', 'media/3k7y1Ii0nyCZkHIfxuyTu0jxsNuRFLWm7ndy6ymc.jpg', 'jpg', 'image/jpeg', '227894', '2025-07-03 15:02:53', '2025-07-03 15:02:53'),
(181, 2, 'kodaikanal-organic-carrot-avako-2.jpg', 'public_storage', 'media/mtYaAijlu4CoMMNhlQXxlVkGN2rLCF9hKuByii5r.jpg', 'jpg', 'image/jpeg', '43388', '2025-07-03 15:05:05', '2025-07-03 15:05:05'),
(182, 2, 'kodaikanal-organic-carrot-avako-1.jpg', 'public_storage', 'media/2Ilga1vAPKlxOlUvHGYU2JYVIw9fg9qrTXV9f7FE.jpg', 'jpg', 'image/jpeg', '728038', '2025-07-03 15:05:05', '2025-07-03 15:05:05'),
(183, 2, 'kodaikanal-organic-carrot-avako-3.jpg', 'public_storage', 'media/dZYh8JLeXEB7mx4rhErAPwBEnEphmPX8CqseeX6J.jpg', 'jpg', 'image/jpeg', '50561', '2025-07-03 15:05:05', '2025-07-03 15:05:05'),
(184, 2, 'kodaikanal-organic-carrot-avako-4.jpg', 'public_storage', 'media/balbC1qR6yECMD9IiBeqtis3bJgrL1zmNhZR0apr.jpg', 'jpg', 'image/jpeg', '68461', '2025-07-03 15:05:05', '2025-07-03 15:05:05'),
(185, 2, 'murugai-beans-organic-vegetable-beans-1.jpg', 'public_storage', 'media/BiUjJSRy8hDI8gQoBSptTJEp3DIJM6AfUS3r4t8s.jpg', 'jpg', 'image/jpeg', '50899', '2025-07-03 15:08:59', '2025-07-03 15:08:59'),
(186, 2, 'murugai-beans-organic-vegetable-beans-2.jpg', 'public_storage', 'media/FYOAORCY2TztF3yr5oZJUULO7aOpsiQ6Ww5ZP5aD.jpg', 'jpg', 'image/jpeg', '314783', '2025-07-03 15:08:59', '2025-07-03 15:08:59'),
(187, 2, 'murugai-beans-organic-vegetable-beans-3.jpg', 'public_storage', 'media/tPnUcO5b4OqD9JNbEjPp01ETFi50qAdC9YzQdh8i.jpg', 'jpg', 'image/jpeg', '73361', '2025-07-03 15:08:59', '2025-07-03 15:08:59'),
(188, 2, 'murugai-beans-organic-vegetable-beans-4.jpg', 'public_storage', 'media/eK80v3rBRWU2OozyuqI7R0jMghowHqnpr53ujClA.jpg', 'jpg', 'image/jpeg', '57564', '2025-07-03 15:08:59', '2025-07-03 15:08:59'),
(189, 2, 'nookal-kohlrabi-organic-natural-vegetables-from-western-ghats.jpg', 'public_storage', 'media/f3g3Tn6G4tTNxovSDHepMBjma1gBORA0YXMfeJk2.jpg', 'jpg', 'image/jpeg', '55375', '2025-07-09 15:22:28', '2025-07-09 15:22:28'),
(190, 2, 'nookal-kohlrabi-organic-natural-vegetables-from-western-ghats-2.jpg', 'public_storage', 'media/ipX8vdDbjCLxTKmzqtvHAVpYqYCiNdoLh7tRXvyl.jpg', 'jpg', 'image/jpeg', '38011', '2025-07-09 15:22:28', '2025-07-09 15:22:28'),
(191, 2, 'nookal-kohlrabi-organic-natural-vegetables-from-western-ghats-3.jpg', 'public_storage', 'media/Z39qiUY3gLanW68VNZVw4Lm4w4tgRtaZ4S0QNpvo.jpg', 'jpg', 'image/jpeg', '42984', '2025-07-09 15:22:28', '2025-07-09 15:22:28'),
(192, 2, 'nookal-kohlrabi-organic-natural-vegetables-from-western-ghats-4.jpg', 'public_storage', 'media/VGlEJYhYkYNVOSFqWOwl1pTOH0HlXmT0u7nFWWln.jpg', 'jpg', 'image/jpeg', '55375', '2025-07-09 15:22:28', '2025-07-09 15:22:28'),
(193, 2, 'radish-red-fresh-natural-vegetables-from-western-ghats.jpg', 'public_storage', 'media/LTY2YGIrAKzEGfDve9gWWya0lWLqRxolHJG00jwL.jpg', 'jpg', 'image/jpeg', '121579', '2025-07-09 15:25:46', '2025-07-09 15:25:46'),
(194, 2, 'radish-red-fresh-natural-vegetables-from-western-ghats-2.jpg', 'public_storage', 'media/hKj0pjz83naIRuxj2hpIlyc5xZyF4ggrrNP6bwVx.jpg', 'jpg', 'image/jpeg', '117023', '2025-07-09 15:25:46', '2025-07-09 15:25:46'),
(195, 2, 'radish-red-fresh-natural-vegetables-from-western-ghats-3.jpg', 'public_storage', 'media/dUGP9Q27qgKnVkrDEgYKvf8heRAtL4cfX4FvCBRR.jpg', 'jpg', 'image/jpeg', '45428', '2025-07-09 15:25:46', '2025-07-09 15:25:46'),
(196, 2, 'avako-hilly-original-malai-thean-raw-honey-premium-200ml.jpg', 'public_storage', 'media/QQov6iNYdx4hJ3yRnmgmPMIobwvRhevpiETQI58x.jpg', 'jpg', 'image/jpeg', '136008', '2025-07-09 15:41:45', '2025-07-09 15:41:45'),
(197, 2, 'avako-hilly-original-malai-thean-raw-honey-premium-200ml-2.jpg', 'public_storage', 'media/hdncJrstabqYkLzLPwy7rozfOELXoiGelk3lU21g.jpg', 'jpg', 'image/jpeg', '93435', '2025-07-09 15:41:45', '2025-07-09 15:41:45'),
(198, 2, 'avako-hilly-original-malai-thean-raw-honey-premium-200ml-3.jpg', 'public_storage', 'media/XcQZnG9qDPhKPDJDl26yHCR0STXnsOPbl4tH9Xai.jpg', 'jpg', 'image/jpeg', '93295', '2025-07-09 15:41:45', '2025-07-09 15:41:45'),
(199, 2, 'avako-hilly-original-malai-thean-raw-honey-premium-200ml-4.jpg', 'public_storage', 'media/tZ0lrq3mkAsDSG5IAu2nilmvn27SVDKZO4IX60Dz.jpg', 'jpg', 'image/jpeg', '44555', '2025-07-09 15:41:45', '2025-07-09 15:41:45'),
(200, 2, 'avako-hilly-original-malai-thean-raw-honey-premium-200ml-5.jpg', 'public_storage', 'media/4m1yoEJjlGHN1EZCr41InMNP1SoJonz0w4fwR56j.jpg', 'jpg', 'image/jpeg', '234819', '2025-07-09 15:41:45', '2025-07-09 15:41:45'),
(201, 2, 'avako-western-ghats-small-bees-honey-200ml.jpg', 'public_storage', 'media/PDfHwjanqLyCNcinLmKidOW1DXjI4ZlInQnMIZb4.jpg', 'jpg', 'image/jpeg', '80083', '2025-07-09 15:52:46', '2025-07-09 15:52:46'),
(202, 2, 'avako-western-ghats-small-bees-honey-200ml-2.jpg', 'public_storage', 'media/8kZPL42QrdVt1JIDT2mFLKN7hna5TkzHJqGi8Grh.jpg', 'jpg', 'image/jpeg', '140267', '2025-07-09 15:52:46', '2025-07-09 15:52:46'),
(203, 2, 'avako-western-ghats-small-bees-honey-200ml-3.jpg', 'public_storage', 'media/givM8ZiVEcFraMy3ve05Av3caRJXbJQfP79B8Ap1.jpg', 'jpg', 'image/jpeg', '44086', '2025-07-09 15:52:46', '2025-07-09 15:52:46'),
(204, 2, 'avako-western-ghats-small-bees-honey-200ml-4.jpg', 'public_storage', 'media/cyG54dRuYzbCryXeXNkNESxkGSUIzXJyN9PaAy5m.jpg', 'jpg', 'image/jpeg', '93435', '2025-07-09 15:52:46', '2025-07-09 15:52:46'),
(205, 2, 'avako-hilly-natural-malai-theanunprocessed-honey-300ml.jpg', 'public_storage', 'media/pfvIfVk6kEC4PaQSXQFQVmrJU51fCoNpI5FFKfI3.jpg', 'jpg', 'image/jpeg', '77586', '2025-07-09 15:58:27', '2025-07-09 15:58:27'),
(206, 2, 'avako-hilly-natural-malai-theanunprocessed-honey-300ml-2.jpg', 'public_storage', 'media/bBqDTB3SNFFaiy9XJhZPkOntbDHkOAVkZ6OgdJJe.jpg', 'jpg', 'image/jpeg', '176333', '2025-07-09 15:58:27', '2025-07-09 15:58:27'),
(207, 2, 'avako-hilly-natural-malai-theanunprocessed-honey-300ml-3.jpg', 'public_storage', 'media/F8W79j2XH3lFkLCTrat2H31ERYVhSh8K44bF70jI.jpg', 'jpg', 'image/jpeg', '244318', '2025-07-09 15:58:27', '2025-07-09 15:58:27'),
(208, 2, 'avako-hilly-natural-malai-theanunprocessed-honey-300ml-4.jpg', 'public_storage', 'media/bEBV9oCSUB7aGG9kUKUC06glgNEE2Ogvuw4EsV05.jpg', 'jpg', 'image/jpeg', '91867', '2025-07-09 15:58:27', '2025-07-09 15:58:27'),
(209, 2, 'avako-hilly-original-organic-pepper-powder-50gms.jpg', 'public_storage', 'media/tDgYkZw3RR2qcrLjVqWuV4vYaQCb3gfeqqjBL7OK.jpg', 'jpg', 'image/jpeg', '116396', '2025-07-09 16:09:49', '2025-07-09 16:09:49'),
(210, 2, 'avako-hilly-original-organic-pepper-powder-50gms-2.jpg', 'public_storage', 'media/6br23IZgpvf2QJzzafGVEhp28jJUzFJ9WreBKpR1.jpg', 'jpg', 'image/jpeg', '128756', '2025-07-09 16:09:49', '2025-07-09 16:09:49'),
(211, 2, 'avako-hilly-original-organic-pepper-powder-50gms-3.jpg', 'public_storage', 'media/FQwr4eZYaOskVM87SLSd0g2Ue3nKh5FEaf9HOpAQ.jpg', 'jpg', 'image/jpeg', '101467', '2025-07-09 16:09:49', '2025-07-09 16:09:49'),
(212, 2, 'avako.in-organic-farm-4.jpg', 'public_storage', 'media/bVjTBg6v42rHMu1csGl6hHx11Sa1I4SP02U21ncJ.jpg', 'jpg', 'image/jpeg', '47519', '2025-07-09 16:09:49', '2025-07-09 16:09:49'),
(213, 2, 'avako-avocado-100-organic-fruit.jpg', 'public_storage', 'media/5fK8FOMAr7qmFwdjIrPnF2LD2LnzW2w3EAmz4FXY.jpg', 'jpg', 'image/jpeg', '77527', '2025-07-10 14:16:01', '2025-07-10 14:16:01'),
(214, 2, 'avako-avocado-100-organic-fruit-2.jpg', 'public_storage', 'media/OpZmNSkMkWJtMQ7NFx0msakHdmnP8nTdAW7jBzNv.jpg', 'jpg', 'image/jpeg', '255794', '2025-07-10 14:16:02', '2025-07-10 14:16:02'),
(215, 2, 'avako-avocado-100-organic-fruit-3.jpg', 'public_storage', 'media/Xt8mvylZOu9wlm5p7b0RCflIRmLGHlaCYuQxIEOr.jpg', 'jpg', 'image/jpeg', '221073', '2025-07-10 14:16:02', '2025-07-10 14:16:02'),
(216, 2, 'avako-avocado-100-organic-fruit-4.jpg', 'public_storage', 'media/4PBgnTqNNXfyzut1BE8EKgDv4aB3bFU3L0iK3SPm.jpg', 'jpg', 'image/jpeg', '67447', '2025-07-10 14:16:02', '2025-07-10 14:16:02'),
(217, 2, 'avako-avocado-100-organic-fruit-5.jpg', 'public_storage', 'media/9lGCScquqWlYtVBcsEm2LKQbmUnESh9aBT9c0WOh.jpg', 'jpg', 'image/jpeg', '42768', '2025-07-10 14:16:02', '2025-07-10 14:16:02'),
(218, 2, 'avako-hilly-original-avocado-100-organic-fruit-2.jpg', 'public_storage', 'media/KlQCU29wJ53S6r2neNNQYsDk7xxonUEYHdyNtUP4.jpg', 'jpg', 'image/jpeg', '76322', '2025-07-10 14:18:26', '2025-07-10 14:18:26'),
(219, 2, 'avako-hilly-original-avocado-100-organic-fruit.jpg', 'public_storage', 'media/Be5v5IQM1S3z27RpEaJsiZIS0QwA6YoNGut5R5PB.jpg', 'jpg', 'image/jpeg', '147935', '2025-07-10 14:18:26', '2025-07-10 14:18:26'),
(220, 2, 'avako-hilly-original-avocado-100-organic-fruit-3.jpg', 'public_storage', 'media/pEDbtkl0NJ9kHL9k6gg4FMfz9CpHNwqJaJT7OffR.jpg', 'jpg', 'image/jpeg', '119242', '2025-07-10 14:18:27', '2025-07-10 14:18:27'),
(221, 2, 'avako-hilly-original-avocado-100-organic-fruit-4.jpg', 'public_storage', 'media/XT8RxHzTzYI5Kuz2F5uBJK7zwQSR7jzHAcKQwjYn.jpg', 'jpg', 'image/jpeg', '284584', '2025-07-10 14:18:27', '2025-07-10 14:18:27'),
(222, 2, 'avako-hilly-original-avocado-100-organic-fruit-5.jpg', 'public_storage', 'media/TTl0Q0EG6HJ6OcF2Z6R3wzypmpa0VWwXyvc4F0LU.jpg', 'jpg', 'image/jpeg', '61757', '2025-07-10 14:18:27', '2025-07-10 14:18:27'),
(223, 2, 'avako-hilly-banana-100-organic-premium-fruit-1kg.jpg', 'public_storage', 'media/jCDT3mrNdb9UYd8rT6Iq7CxJFKiVAnjZ4yqJr4pR.jpg', 'jpg', 'image/jpeg', '92335', '2025-07-10 14:22:40', '2025-07-10 14:22:40'),
(224, 2, 'avako-hilly-banana-100-organic-premium-fruit-1kg-2.jpg', 'public_storage', 'media/bzOogoly04qVcpKzu98X5HuHFzbu3p9lCZmYOeAI.jpg', 'jpg', 'image/jpeg', '102347', '2025-07-10 14:22:40', '2025-07-10 14:22:40'),
(225, 2, 'avako-hilly-banana-100-organic-premium-fruit-1kg-3.jpg', 'public_storage', 'media/fdHYfWjWnEqgpTwVDg3GuIwGuc5TpoQ0VaR6uoXI.jpg', 'jpg', 'image/jpeg', '44743', '2025-07-10 14:22:40', '2025-07-10 14:22:40'),
(226, 2, 'avako-hilly-banana-100-organic-premium-fruit-1kg-4.jpg', 'public_storage', 'media/TDDNrVDhDuxxdpnPaBwdlQx90DtS6EssxxliLIE8.jpg', 'jpg', 'image/jpeg', '100978', '2025-07-10 14:22:40', '2025-07-10 14:22:40'),
(227, 2, 'avako-hilly-banana-100-organic-premium-fruit-1kg-5.jpg', 'public_storage', 'media/W2f2Jc8axe4PPlBlSrZ88I7IbDSv5CdhRAJqJi9F.jpg', 'jpg', 'image/jpeg', '47519', '2025-07-10 14:22:40', '2025-07-10 14:22:40'),
(228, 2, 'avako-hilly-banana-100-organic-fruit.jpg', 'public_storage', 'media/QU40shuTsPp2J52E1vGFFcUVZ5Z21flmga6rdWWm.jpg', 'jpg', 'image/jpeg', '74551', '2025-07-10 14:26:26', '2025-07-10 14:26:26'),
(229, 2, 'avako-hilly-banana-100-organic-fruit-2.jpg', 'public_storage', 'media/hmvdiJvlwzNM9hwgbNfOwejV4A24bbQayi8XeFnV.jpg', 'jpg', 'image/jpeg', '195725', '2025-07-10 14:26:26', '2025-07-10 14:26:26'),
(230, 2, 'avako-hilly-banana-100-organic-fruit-3.jpg', 'public_storage', 'media/uXjRFEcMHYRdiLMNNbUGJjjiTu8luIqYmRcsKD2q.jpg', 'jpg', 'image/jpeg', '62285', '2025-07-10 14:26:26', '2025-07-10 14:26:26'),
(231, 2, 'avako-hilly-banana-100-organic-fruit-4.jpg', 'public_storage', 'media/nysOhC5fjTitv932repbReBrc0tL5UfQ2Hfza5ef.jpg', 'jpg', 'image/jpeg', '70052', '2025-07-10 14:26:26', '2025-07-10 14:26:26'),
(232, 2, 'avako-hilly-organic-orange-1kg-2.jpg', 'public_storage', 'media/3n8TDtkMs3Jv68540f5TTvwu6eThNINo971Gi1OL.jpg', 'jpg', 'image/jpeg', '75712', '2025-07-10 14:31:32', '2025-07-10 14:31:32'),
(233, 2, 'avako-hilly-organic-orange-1kg.jpg', 'public_storage', 'media/cZQQwuxgmC9NIqiOh6AOpc27ELCdLgYoQwHZulUo.jpg', 'jpg', 'image/jpeg', '113308', '2025-07-10 14:31:32', '2025-07-10 14:31:32'),
(234, 2, 'avako-hilly-organic-orange-1kg-3.jpg', 'public_storage', 'media/GNw1symnHMYs7PsbhoymearEbTOOU5Xo8ruTQNsn.jpg', 'jpg', 'image/jpeg', '162551', '2025-07-10 14:31:32', '2025-07-10 14:31:32'),
(235, 2, 'avako-hilly-organic-orange-1kg-4.jpg', 'public_storage', 'media/LOKPto4RTNy3TDcdf4y9xav6MfUo8SID5gMN5G5e.jpg', 'jpg', 'image/jpeg', '336275', '2025-07-10 14:31:32', '2025-07-10 14:31:32'),
(236, 2, 'passion-fruit-organic-avako.jpg', 'public_storage', 'media/Z1qRdm0Q9YyJHHZ3BGvvtXE2KxvJDD3t7AXmIhmn.jpg', 'jpg', 'image/jpeg', '84970', '2025-07-10 14:35:07', '2025-07-10 14:35:07'),
(237, 2, 'passion-fruit-organic-avako-2.jpg', 'public_storage', 'media/KsKTklLE5votrEauxjMjAiBe5WtgKGzv7mbbJnxV.jpg', 'jpg', 'image/jpeg', '82062', '2025-07-10 14:35:07', '2025-07-10 14:35:07'),
(238, 2, 'passion-fruit-organic-avako-3.jpg', 'public_storage', 'media/Zzy5w3PWgWY2F8YSSckM3cUarwNX9pBQpDxMUgvq.jpg', 'jpg', 'image/jpeg', '84156', '2025-07-10 14:35:07', '2025-07-10 14:35:07'),
(239, 2, 'passion-fruit-organic-avako-4.jpg', 'public_storage', 'media/V5aqO3ZdsUbUlcW489WpXSn8pExTE70n7HXamO5y.jpg', 'jpg', 'image/jpeg', '86910', '2025-07-10 14:35:07', '2025-07-10 14:35:07'),
(240, 2, 'passion-fruit-organic-avako-5.jpg', 'public_storage', 'media/4E7gBep86yHZDevfGBc7BaGDLcAEJ2ZsA0DzIGvA.jpg', 'jpg', 'image/jpeg', '68120', '2025-07-10 14:35:07', '2025-07-10 14:35:07'),
(241, 2, 'brown-almond-premium-choko-candy-250gms-2.jpg', 'public_storage', 'media/TqYPVbUCjE70ofH1gnzIXnOVAajQjqFz9s0oTm2Q.jpg', 'jpg', 'image/jpeg', '86409', '2025-07-10 14:39:30', '2025-07-10 14:39:30'),
(242, 2, 'brown-almond-premium-choko-candy-250gms.jpg', 'public_storage', 'media/MvSayK4lFTEYZjqgwdBWWQfzJWVUdenMIbGga60b.jpg', 'jpg', 'image/jpeg', '184339', '2025-07-10 14:39:30', '2025-07-10 14:39:30'),
(243, 2, 'brown-almond-premium-choko-candy-250gms-3.jpg', 'public_storage', 'media/RKs0AjBpE7oz1e4FfAW6o42F5rx9MFtCFvJBSGRX.jpg', 'jpg', 'image/jpeg', '75209', '2025-07-10 14:39:30', '2025-07-10 14:39:30'),
(244, 2, 'brown-almond-premium-choko-candy-250gms-4.jpg', 'public_storage', 'media/RD54zBm85oXYEHBYwERNrAVRsWCyejVGUXoC3i90.jpg', 'jpg', 'image/jpeg', '86409', '2025-07-10 14:39:30', '2025-07-10 14:39:30'),
(245, 2, 'brown-almond-premium-choko-candy-250gms-5.jpg', 'public_storage', 'media/55tKBFacKw8saWOBpclAlJBbbiDMyEbf4fV2LzPP.jpg', 'jpg', 'image/jpeg', '107161', '2025-07-10 14:39:30', '2025-07-10 14:39:30'),
(246, 2, 'chaco-crispy-yummy-color-stones-250gms.jpg', 'public_storage', 'media/ejBFWXEMSj3RLGu9rx61aGhXq9BwlGdgkjNRKQKs.jpg', 'jpg', 'image/jpeg', '191485', '2025-07-10 14:43:18', '2025-07-10 14:43:18'),
(247, 2, 'chaco-crispy-yummy-color-stones-250gms-2.jpg', 'public_storage', 'media/UqFCz1sG9U27rAp6JpnNkHP6FhYWpgSO8La8Ybmy.jpg', 'jpg', 'image/jpeg', '114844', '2025-07-10 14:43:18', '2025-07-10 14:43:18');
INSERT INTO `files` (`id`, `user_id`, `filename`, `disk`, `path`, `extension`, `mime`, `size`, `created_at`, `updated_at`) VALUES
(248, 2, 'chaco-crispy-yummy-color-stones-250gms-3.jpg', 'public_storage', 'media/btmcWeAHo6siODnfe1nDk2O0ukqDxxqNviaZXxiy.jpg', 'jpg', 'image/jpeg', '187503', '2025-07-10 14:43:18', '2025-07-10 14:43:18'),
(249, 2, 'chaco-crispy-yummy-color-stones-250gms-4.jpg', 'public_storage', 'media/UvUbjc7JGiQyhcsj8gdHbVAiW4xKGfGo3lFvUt6p.jpg', 'jpg', 'image/jpeg', '99721', '2025-07-10 14:43:18', '2025-07-10 14:43:18'),
(250, 2, 'crispy-balls-with-chocolate-mixture-250gms.jpg', 'public_storage', 'media/q9jLcEEvpgb9AWgILCBIVK1d6tKr0QjRMoBFb6Ug.jpg', 'jpg', 'image/jpeg', '87444', '2025-07-10 14:48:30', '2025-07-10 14:48:30'),
(251, 2, 'crispy-balls-with-chocolate-mixture-250gms-2.jpg', 'public_storage', 'media/S2dYxdmcenFo8pVOfsz0idE0MlV3za3W7fqRrzho.jpg', 'jpg', 'image/jpeg', '101066', '2025-07-10 14:48:30', '2025-07-10 14:48:30'),
(252, 2, 'crispy-balls-with-chocolate-mixture-250gms-3.jpg', 'public_storage', 'media/mqBDwtDayYkQhLOM9mSYmaaQyUkqKH4lC23cwNLk.jpg', 'jpg', 'image/jpeg', '206123', '2025-07-10 14:48:30', '2025-07-10 14:48:30'),
(253, 2, 'dark-white-melody-chaco-with-yummy-jam-250gms.jpg', 'public_storage', 'media/rHFPtjVeNRLH1yBHU2ht8Tg0G9bNeOJAOyyyav8R.jpg', 'jpg', 'image/jpeg', '103847', '2025-07-10 14:50:38', '2025-07-10 14:50:38'),
(254, 2, 'dark-white-melody-chaco-with-yummy-jam-250gms-2.jpg', 'public_storage', 'media/H1wSMMHfj3mNzsvmmYE6X88UWUTdkYAu2JKOZdkD.jpg', 'jpg', 'image/jpeg', '177551', '2025-07-10 14:50:38', '2025-07-10 14:50:38'),
(255, 2, 'dark-white-melody-chaco-with-yummy-jam-250gms-3.jpg', 'public_storage', 'media/988nrCJLpzQBQGqOGpeiq8ypFHsnbigq3iqYcVuQ.jpg', 'jpg', 'image/jpeg', '64902', '2025-07-10 14:50:38', '2025-07-10 14:50:38'),
(256, 2, 'dark-white-melody-chaco-with-yummy-jam-250gms-4.jpg', 'public_storage', 'media/dnk8PDEZRpTSZ0A4ivc9kgPBMBVqLQyR26AFyGID.jpg', 'jpg', 'image/jpeg', '112826', '2025-07-10 14:50:38', '2025-07-10 14:50:38'),
(257, 2, 'dark-bar-with-splited-almond-chocolate-250gms.jpg', 'public_storage', 'media/EYOx9DIn1fujbzhYsAMzMpJ3cHCQOXEigA5djnf9.jpg', 'jpg', 'image/jpeg', '101830', '2025-07-10 14:53:41', '2025-07-10 14:53:41'),
(258, 2, 'dark-bar-with-splited-almond-chocolate-250gms-2.jpg', 'public_storage', 'media/4srm0Yd6i8URPFwm1H92z2aUlksI5J7B4oSxc4yi.jpg', 'jpg', 'image/jpeg', '191571', '2025-07-10 14:53:41', '2025-07-10 14:53:41'),
(259, 2, 'dark-bar-with-splited-almond-chocolate-250gms-3.jpg', 'public_storage', 'media/1E8L3RskeKzYyyPP1d0S4THBCDqhLWgUmA1A6e2F.jpg', 'jpg', 'image/jpeg', '81703', '2025-07-10 14:53:41', '2025-07-10 14:53:41'),
(260, 2, 'plain-dark-bar-chocolate-250gms.jpg', 'public_storage', 'media/2kzbGTjc0AjcCXt5lEdCffMPaxpPW84TJWx89kbA.jpg', 'jpg', 'image/jpeg', '82776', '2025-07-10 14:56:24', '2025-07-10 14:56:24'),
(261, 2, 'plain-dark-bar-chocolate-250gms-2.jpg', 'public_storage', 'media/bW60CUycB9Gv3jy4dMdyCOzKYbuam7HPWvXIBZbB.jpg', 'jpg', 'image/jpeg', '134682', '2025-07-10 14:56:24', '2025-07-10 14:56:24'),
(262, 2, 'plain-dark-bar-chocolate-250gms-3.jpg', 'public_storage', 'media/sZARpRuU1SOjP2wGPF87r50DxnqHDqbYz8EDM8Xt.jpg', 'jpg', 'image/jpeg', '60729', '2025-07-10 14:56:24', '2025-07-10 14:56:24'),
(263, 2, 'plain-dark-bar-chocolate-250gms-4.jpg', 'public_storage', 'media/ov8zVCLzDfWkEBLtLh2XTNI93TmsXOC1X1ON1qP5.jpg', 'jpg', 'image/jpeg', '50824', '2025-07-10 14:56:24', '2025-07-10 14:56:24'),
(264, 2, 'filling-dairy-chacolate-with-rapper-cover-chocolate-250gms.jpg', 'public_storage', 'media/gOcf530F3sF0wLuj9XU8uLjxzkuXY9zSWvjOZTxt.jpg', 'jpg', 'image/jpeg', '112916', '2025-07-10 14:58:53', '2025-07-10 14:58:53'),
(265, 2, 'filling-dairy-chacolate-with-rapper-cover-chocolate-250gms-2.jpg', 'public_storage', 'media/M34yC5EmxZnbDpMBmF5RoWAeekWHvwvew65aI9Pt.jpg', 'jpg', 'image/jpeg', '96494', '2025-07-10 14:58:53', '2025-07-10 14:58:53'),
(266, 2, 'filling-dairy-chacolate-with-rapper-cover-chocolate-250gms-3.jpg', 'public_storage', 'media/W9RvOdRJUl9q85B9wFDVVDk3yNpGxG8ICCo3d96S.jpg', 'jpg', 'image/jpeg', '74523', '2025-07-10 14:58:53', '2025-07-10 14:58:53'),
(267, 2, 'filling-dairy-chacolate-with-rapper-cover-chocolate-250gms-4.jpg', 'public_storage', 'media/SJNQpkxnrPprD1XL4qhymkALk3KA0WHofOgfjZyl.jpg', 'jpg', 'image/jpeg', '98162', '2025-07-10 14:58:53', '2025-07-10 14:58:53'),
(268, 2, 'gems-homemade-chocolate-250gms.jpg', 'public_storage', 'media/JZEZddlpaSzdVJiAdx2yWO6qieIIJ82w7M49BVgH.jpg', 'jpg', 'image/jpeg', '76634', '2025-07-10 15:01:46', '2025-07-10 15:01:46'),
(269, 2, 'gems-homemade-chocolate-250gms-2.jpg', 'public_storage', 'media/gyqWBFzOZMuTtxpnOVkvMiT2pmAa0wuHf0baZKmD.jpg', 'jpg', 'image/jpeg', '84320', '2025-07-10 15:01:46', '2025-07-10 15:01:46'),
(270, 2, 'gems-homemade-chocolate-250gms-3.jpg', 'public_storage', 'media/0mS4O9b0q9abfg4IKSGPcVxJWkLQOIaykdSQqbxA.jpg', 'jpg', 'image/jpeg', '68860', '2025-07-10 15:01:46', '2025-07-10 15:01:46');

-- --------------------------------------------------------

--
-- Table structure for table `flash_sales`
--

CREATE TABLE `flash_sales` (
  `id` int UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `flash_sales`
--

INSERT INTO `flash_sales` (`id`, `created_at`, `updated_at`) VALUES
(1, '2025-06-30 16:46:33', '2025-06-30 16:46:33');

-- --------------------------------------------------------

--
-- Table structure for table `flash_sale_products`
--

CREATE TABLE `flash_sale_products` (
  `id` int UNSIGNED NOT NULL,
  `flash_sale_id` int UNSIGNED NOT NULL,
  `product_id` int UNSIGNED NOT NULL,
  `end_date` date NOT NULL,
  `price` decimal(18,4) UNSIGNED NOT NULL,
  `qty` int NOT NULL,
  `position` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `flash_sale_products`
--

INSERT INTO `flash_sale_products` (`id`, `flash_sale_id`, `product_id`, `end_date`, `price`, `qty`, `position`) VALUES
(1, 1, 11, '2025-07-31', 289.0000, 10, 0);

-- --------------------------------------------------------

--
-- Table structure for table `flash_sale_product_orders`
--

CREATE TABLE `flash_sale_product_orders` (
  `flash_sale_product_id` int UNSIGNED NOT NULL,
  `order_id` int UNSIGNED NOT NULL,
  `qty` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `flash_sale_translations`
--

CREATE TABLE `flash_sale_translations` (
  `id` int UNSIGNED NOT NULL,
  `flash_sale_id` int UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `campaign_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `flash_sale_translations`
--

INSERT INTO `flash_sale_translations` (`id`, `flash_sale_id`, `locale`, `campaign_name`) VALUES
(1, 1, 'en', 'Flash Sale');

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` int UNSIGNED NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 1, '2025-06-29 07:37:51', '2025-06-29 07:39:13'),
(2, 1, '2025-06-29 07:53:40', '2025-06-29 07:53:40'),
(3, 1, '2025-06-29 07:59:06', '2025-06-29 07:59:06'),
(4, 1, '2025-06-29 08:00:40', '2025-06-29 08:00:40');

-- --------------------------------------------------------

--
-- Table structure for table `menu_items`
--

CREATE TABLE `menu_items` (
  `id` int UNSIGNED NOT NULL,
  `menu_id` int UNSIGNED NOT NULL,
  `parent_id` int UNSIGNED DEFAULT NULL,
  `category_id` int UNSIGNED DEFAULT NULL,
  `page_id` int UNSIGNED DEFAULT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` int UNSIGNED DEFAULT NULL,
  `is_root` tinyint(1) NOT NULL DEFAULT '0',
  `is_fluid` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `parent_id`, `category_id`, `page_id`, `type`, `url`, `icon`, `target`, `position`, `is_root`, `is_fluid`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, NULL, NULL, 'URL', NULL, NULL, '_self', 0, 1, 0, 1, '2025-06-29 07:37:51', '2025-06-29 07:37:51'),
(2, 1, 1, NULL, NULL, 'url', '/products', NULL, '_self', 2, 0, 0, 1, '2025-06-29 07:38:20', '2025-06-30 15:37:28'),
(3, 1, 1, NULL, NULL, 'url', '/blog/posts', NULL, '_self', 3, 0, 0, 1, '2025-06-29 07:38:43', '2025-06-30 15:37:28'),
(4, 1, 1, NULL, NULL, 'url', '/', NULL, '_self', 0, 0, 0, 1, '2025-06-29 07:39:07', '2025-06-29 07:39:11'),
(5, 2, NULL, NULL, NULL, 'URL', NULL, NULL, '_self', 0, 1, 0, 1, '2025-06-29 07:53:40', '2025-06-29 07:53:40'),
(6, 2, 5, 8, NULL, 'category', NULL, NULL, '_self', NULL, 0, 0, 1, '2025-06-29 07:54:15', '2025-06-29 07:56:46'),
(7, 2, 5, 9, NULL, 'category', NULL, NULL, '_self', NULL, 0, 0, 1, '2025-06-29 07:54:34', '2025-06-29 07:56:51'),
(8, 2, 5, 10, NULL, 'category', NULL, NULL, '_self', NULL, 0, 0, 1, '2025-06-29 07:55:07', '2025-06-29 07:56:54'),
(9, 2, 5, 12, NULL, 'category', NULL, NULL, '_self', NULL, 0, 0, 1, '2025-06-29 07:55:25', '2025-06-29 07:56:58'),
(10, 2, 5, 13, NULL, 'category', NULL, NULL, '_self', NULL, 0, 0, 1, '2025-06-29 07:57:33', '2025-06-29 07:57:33'),
(11, 2, 5, 14, NULL, 'category', NULL, NULL, '_self', NULL, 0, 0, 1, '2025-06-29 07:57:45', '2025-06-29 07:57:45'),
(12, 2, 5, 15, NULL, 'category', NULL, NULL, '_self', NULL, 0, 0, 1, '2025-06-29 07:57:56', '2025-06-29 07:57:56'),
(13, 2, 5, 16, NULL, 'category', NULL, NULL, '_self', NULL, 0, 0, 1, '2025-06-29 07:58:06', '2025-06-29 07:58:06'),
(14, 2, 5, 17, NULL, 'category', NULL, NULL, '_self', NULL, 0, 0, 1, '2025-06-29 07:58:20', '2025-06-29 07:58:20'),
(15, 2, 5, 18, NULL, 'category', NULL, NULL, '_self', NULL, 0, 0, 1, '2025-06-29 07:58:29', '2025-06-29 07:58:29'),
(16, 3, NULL, NULL, NULL, 'URL', NULL, NULL, '_self', 0, 1, 0, 1, '2025-06-29 07:59:06', '2025-06-29 07:59:06'),
(21, 4, NULL, NULL, NULL, 'URL', NULL, NULL, '_self', 0, 1, 0, 1, '2025-06-29 08:00:40', '2025-06-29 08:00:40'),
(22, 4, 21, NULL, NULL, 'url', '/categories/hot-sale/products', NULL, '_self', NULL, 0, 0, 1, '2025-06-29 08:00:58', '2025-06-29 08:00:58'),
(23, 4, 21, NULL, NULL, 'url', '/categories/bird-eye-chili/products', NULL, '_self', NULL, 0, 0, 1, '2025-06-29 08:01:40', '2025-06-29 08:01:40'),
(24, 4, 21, 12, NULL, 'category', NULL, NULL, '_self', NULL, 0, 0, 1, '2025-06-29 08:02:01', '2025-06-29 08:02:01'),
(25, 4, 21, 15, NULL, 'category', NULL, NULL, '_self', NULL, 0, 0, 1, '2025-06-29 08:02:31', '2025-06-29 08:02:31'),
(26, 3, 16, NULL, 3, 'page', NULL, NULL, '_self', NULL, 0, 0, 1, '2025-06-30 15:30:20', '2025-06-30 15:30:20'),
(27, 3, 16, NULL, 2, 'page', NULL, NULL, '_self', NULL, 0, 0, 1, '2025-06-30 15:31:15', '2025-06-30 15:31:15'),
(28, 3, 16, NULL, 5, 'page', NULL, NULL, '_self', NULL, 0, 0, 1, '2025-06-30 15:31:38', '2025-06-30 15:31:38'),
(29, 3, 16, NULL, 4, 'page', NULL, NULL, '_self', NULL, 0, 0, 1, '2025-06-30 15:32:09', '2025-06-30 15:32:09'),
(30, 1, 1, NULL, 1, 'page', NULL, NULL, '_self', 1, 0, 0, 1, '2025-06-30 15:37:17', '2025-06-30 15:37:28');

-- --------------------------------------------------------

--
-- Table structure for table `menu_item_translations`
--

CREATE TABLE `menu_item_translations` (
  `id` int UNSIGNED NOT NULL,
  `menu_item_id` int UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_item_translations`
--

INSERT INTO `menu_item_translations` (`id`, `menu_item_id`, `locale`, `name`) VALUES
(1, 1, 'en', 'root'),
(2, 2, 'en', 'Shop'),
(3, 3, 'en', 'Blog'),
(4, 4, 'en', 'Home'),
(5, 5, 'en', 'root'),
(6, 6, 'en', 'Bird Eye Chili'),
(7, 7, 'en', 'Biriyani Hilly Spices'),
(8, 8, 'en', 'Coffee Powder & Bean'),
(9, 9, 'en', 'Hilly Fresh Vegetable'),
(10, 10, 'en', 'Hilly Garlic / மலை பூண்டு'),
(11, 11, 'en', 'Hilly Honey /மலை தேன்'),
(12, 12, 'en', 'Hilly Natural Fruits'),
(13, 13, 'en', 'Hilly Pepper'),
(14, 14, 'en', 'Hilly Spices Original'),
(15, 15, 'en', 'Homemade Chocolate'),
(16, 16, 'en', 'root'),
(21, 21, 'en', 'root'),
(22, 22, 'en', 'New Arrivals'),
(23, 23, 'en', 'Specials'),
(24, 24, 'en', 'Hot Deals'),
(25, 25, 'en', 'New Deals'),
(26, 26, 'en', 'Return Policy'),
(27, 27, 'en', 'FAQ'),
(28, 28, 'en', 'Privacy & Policy'),
(29, 29, 'en', 'Terms & Conditions'),
(30, 30, 'en', 'About Us');

-- --------------------------------------------------------

--
-- Table structure for table `menu_translations`
--

CREATE TABLE `menu_translations` (
  `id` int UNSIGNED NOT NULL,
  `menu_id` int UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_translations`
--

INSERT INTO `menu_translations` (`id`, `menu_id`, `locale`, `name`) VALUES
(1, 1, 'en', 'Primary Menu'),
(2, 2, 'en', 'Category Menu'),
(3, 3, 'en', 'Footer Menu 1'),
(4, 4, 'en', 'Footer Menu 2');

-- --------------------------------------------------------

--
-- Table structure for table `meta_data`
--

CREATE TABLE `meta_data` (
  `id` int UNSIGNED NOT NULL,
  `entity_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `entity_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `meta_data`
--

INSERT INTO `meta_data` (`id`, `entity_type`, `entity_id`, `created_at`, `updated_at`) VALUES
(1, 'Modules\\Brand\\Entities\\Brand', 1, '2025-06-29 07:29:23', '2025-06-29 07:29:23'),
(2, 'Modules\\Product\\Entities\\Product', 1, '2025-06-29 07:29:23', '2025-06-29 07:29:23'),
(3, 'Modules\\Brand\\Entities\\Brand', 2, '2025-06-29 07:29:23', '2025-06-29 07:29:23'),
(4, 'Modules\\Product\\Entities\\Product', 2, '2025-06-29 07:29:23', '2025-06-29 07:29:23'),
(5, 'Modules\\Product\\Entities\\Product', 3, '2025-06-29 09:01:28', '2025-06-29 09:01:28'),
(6, 'Modules\\Product\\Entities\\Product', 4, '2025-06-29 09:11:11', '2025-06-29 09:11:11'),
(7, 'Modules\\Product\\Entities\\Product', 5, '2025-06-29 09:32:04', '2025-06-29 09:32:04'),
(8, 'Modules\\Product\\Entities\\Product', 6, '2025-06-29 09:38:17', '2025-06-29 09:38:17'),
(9, 'Modules\\Product\\Entities\\Product', 7, '2025-06-29 10:33:57', '2025-06-29 10:33:57'),
(10, 'Modules\\Page\\Entities\\Page', 1, '2025-06-30 15:24:15', '2025-06-30 15:24:15'),
(11, 'Modules\\Page\\Entities\\Page', 2, '2025-06-30 15:26:01', '2025-06-30 15:26:01'),
(12, 'Modules\\Page\\Entities\\Page', 3, '2025-06-30 15:27:04', '2025-06-30 15:27:04'),
(13, 'Modules\\Page\\Entities\\Page', 4, '2025-06-30 15:27:54', '2025-06-30 15:27:54'),
(14, 'Modules\\Page\\Entities\\Page', 5, '2025-06-30 15:29:00', '2025-06-30 15:29:00'),
(15, 'Modules\\Product\\Entities\\Product', 8, '2025-06-30 15:53:14', '2025-06-30 15:53:14'),
(16, 'Modules\\Product\\Entities\\Product', 9, '2025-06-30 16:07:34', '2025-06-30 16:07:34'),
(17, 'Modules\\Product\\Entities\\Product', 10, '2025-06-30 16:15:10', '2025-06-30 16:15:10'),
(18, 'Modules\\Product\\Entities\\Product', 11, '2025-06-30 16:28:21', '2025-06-30 16:28:21'),
(19, 'Modules\\Product\\Entities\\Product', 12, '2025-07-02 20:51:37', '2025-07-02 20:51:37'),
(20, 'Modules\\Product\\Entities\\Product', 13, '2025-07-02 20:57:21', '2025-07-02 20:57:21'),
(21, 'Modules\\Product\\Entities\\Product', 14, '2025-07-02 21:08:22', '2025-07-02 21:08:22'),
(22, 'Modules\\Product\\Entities\\Product', 15, '2025-07-02 21:15:00', '2025-07-02 21:15:00'),
(23, 'Modules\\Product\\Entities\\Product', 16, '2025-07-02 21:27:51', '2025-07-02 21:27:51'),
(24, 'Modules\\Product\\Entities\\Product', 17, '2025-07-02 21:36:00', '2025-07-02 21:36:00'),
(25, 'Modules\\Product\\Entities\\Product', 18, '2025-07-02 21:42:14', '2025-07-02 21:42:14'),
(26, 'Modules\\Product\\Entities\\Product', 19, '2025-07-02 21:45:48', '2025-07-02 21:45:48'),
(27, 'Modules\\Product\\Entities\\Product', 20, '2025-07-02 22:02:59', '2025-07-02 22:02:59'),
(28, 'Modules\\Product\\Entities\\Product', 21, '2025-07-02 22:09:59', '2025-07-02 22:09:59'),
(29, 'Modules\\Product\\Entities\\Product', 22, '2025-07-02 22:16:53', '2025-07-02 22:16:53'),
(30, 'Modules\\Product\\Entities\\Product', 23, '2025-07-02 22:25:42', '2025-07-02 22:25:42'),
(31, 'Modules\\Product\\Entities\\Product', 24, '2025-07-03 14:44:07', '2025-07-03 14:44:07'),
(32, 'Modules\\Product\\Entities\\Product', 25, '2025-07-03 14:47:47', '2025-07-03 14:47:47'),
(33, 'Modules\\Product\\Entities\\Product', 26, '2025-07-03 14:50:43', '2025-07-03 14:50:43'),
(34, 'Modules\\Product\\Entities\\Product', 27, '2025-07-03 14:55:26', '2025-07-03 14:55:26'),
(35, 'Modules\\Product\\Entities\\Product', 28, '2025-07-03 14:57:50', '2025-07-03 14:57:50'),
(36, 'Modules\\Product\\Entities\\Product', 29, '2025-07-03 15:00:46', '2025-07-03 15:00:46'),
(37, 'Modules\\Product\\Entities\\Product', 30, '2025-07-03 15:03:38', '2025-07-03 15:03:38'),
(38, 'Modules\\Product\\Entities\\Product', 31, '2025-07-03 15:06:06', '2025-07-03 15:06:06'),
(39, 'Modules\\Product\\Entities\\Product', 32, '2025-07-03 15:09:42', '2025-07-03 15:09:42'),
(40, 'Modules\\Product\\Entities\\Product', 33, '2025-07-09 15:22:51', '2025-07-09 15:22:51'),
(41, 'Modules\\Product\\Entities\\Product', 34, '2025-07-09 15:27:41', '2025-07-09 15:27:41'),
(42, 'Modules\\Product\\Entities\\Product', 35, '2025-07-09 15:43:25', '2025-07-09 15:43:25'),
(43, 'Modules\\Product\\Entities\\Product', 36, '2025-07-09 15:54:30', '2025-07-09 15:54:30'),
(44, 'Modules\\Product\\Entities\\Product', 37, '2025-07-09 16:00:42', '2025-07-09 16:00:42'),
(45, 'Modules\\Product\\Entities\\Product', 38, '2025-07-09 16:13:19', '2025-07-09 16:13:19'),
(46, 'Modules\\Product\\Entities\\Product', 39, '2025-07-10 14:17:20', '2025-07-10 14:17:20'),
(47, 'Modules\\Product\\Entities\\Product', 40, '2025-07-10 14:19:58', '2025-07-10 14:19:58'),
(48, 'Modules\\Product\\Entities\\Product', 41, '2025-07-10 14:24:05', '2025-07-10 14:24:05'),
(49, 'Modules\\Product\\Entities\\Product', 42, '2025-07-10 14:28:19', '2025-07-10 14:28:19'),
(50, 'Modules\\Product\\Entities\\Product', 43, '2025-07-10 14:32:51', '2025-07-10 14:32:51'),
(51, 'Modules\\Product\\Entities\\Product', 44, '2025-07-10 14:36:17', '2025-07-10 14:36:17'),
(52, 'Modules\\Product\\Entities\\Product', 45, '2025-07-10 14:41:29', '2025-07-10 14:41:29'),
(53, 'Modules\\Product\\Entities\\Product', 46, '2025-07-10 14:45:26', '2025-07-10 14:45:26'),
(54, 'Modules\\Product\\Entities\\Product', 47, '2025-07-10 14:48:53', '2025-07-10 14:48:53'),
(55, 'Modules\\Product\\Entities\\Product', 48, '2025-07-10 14:52:38', '2025-07-10 14:52:38'),
(56, 'Modules\\Product\\Entities\\Product', 49, '2025-07-10 14:55:08', '2025-07-10 14:55:08'),
(57, 'Modules\\Product\\Entities\\Product', 50, '2025-07-10 14:57:49', '2025-07-10 14:57:49'),
(58, 'Modules\\Product\\Entities\\Product', 51, '2025-07-10 15:00:22', '2025-07-10 15:00:22'),
(59, 'Modules\\Product\\Entities\\Product', 52, '2025-07-10 15:03:14', '2025-07-10 15:03:14');

-- --------------------------------------------------------

--
-- Table structure for table `meta_data_translations`
--

CREATE TABLE `meta_data_translations` (
  `id` int UNSIGNED NOT NULL,
  `meta_data_id` int UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `meta_data_translations`
--

INSERT INTO `meta_data_translations` (`id`, `meta_data_id`, `locale`, `meta_title`, `meta_description`) VALUES
(1, 2, 'en', 'LG OLED65CXPUA 65\" 4K Smart OLED TV with Alexa | CX Series Ultra HD', 'Experience stunning visuals with the LG OLED65CXPUA 65\" CX Series 4K Ultra HD Smart TV. Features built-in Alexa, OLED display technology, and premium sound�perfect for home entertainment.'),
(2, 3, 'en', 'LG OLED65CXPUA 65\" 4K Smart OLED TV with Alexa | CX Series Ultra HD', 'Experience stunning visuals with the LG OLED65CXPUA 65\" CX Series 4K Ultra HD Smart TV. Features built-in Alexa, OLED display technology, and premium sound�perfect for home entertainment.'),
(3, 4, 'en', NULL, NULL),
(4, 5, 'en', NULL, NULL),
(5, 6, 'en', NULL, NULL),
(6, 7, 'en', NULL, NULL),
(7, 10, 'en', NULL, NULL),
(8, 11, 'en', NULL, NULL),
(9, 12, 'en', NULL, NULL),
(10, 13, 'en', NULL, NULL),
(11, 14, 'en', NULL, NULL),
(12, 15, 'en', NULL, NULL),
(13, 17, 'en', NULL, NULL),
(14, 18, 'en', NULL, NULL),
(15, 19, 'en', NULL, NULL),
(16, 21, 'en', NULL, 'Kodaikanal Avako.in Hilly Cloves are one of the most important and useful spices. They are the dried, unopened flower buds of Syzygium aromaicum. The shape of the bud is naillike. The plant is a small, conical evergreen tree.The value of Avako Hilly cloves is due to the presence of essential oil content\n\nCloves are aromatic and richly flavored. It is antiseptic in nature and used for tooth ache. It is also used in certain tooth paste and for mouth washing. . More recently, clove oil has been employed for its analgesic effects in dentistry. It is a preservative and is also used as a flavouring agent for meat dishes. It is also used to flavor a wide variety of sweet and savoury dishes. It has been an essential flavor component in many traditional dishes\n\nCloves are rich in nutrients such as manganese, Vitamin K & C.\nCloves not only have anti-inflammatory and antioxidant properties but they also help to boost your liver health, helps with digestion, relieve constipation, \nHelp to boost immunity and they act as natural pain relieverdue to its analgesic properties and its benefits don’t stop here.'),
(17, 22, 'en', NULL, NULL),
(18, 23, 'en', NULL, NULL),
(19, 16, 'en', NULL, NULL),
(20, 27, 'en', NULL, NULL),
(21, 30, 'en', NULL, NULL),
(22, 35, 'en', NULL, 'Murugai Beans is Fresh & Natural Vegetable From Western Ghats especially from Kodaikanal Hills\n\nAvako.in Vegetables are fully Cultivated and Harvested Naturally without using Fertilizers\n\nButter Beans are a fantastically healthy ingredient – they’re high in protein and fiber, and they’re an excellent source of carbohydrates. Low in fat and calories but high in folate, starch and iron\n\n A very popular variety of Butter Beans (lima) that’s prized in Madurai and Southern Tamilnadu. It is cultivated in Kodaikanal and Palani hills.\n\nThe butter bean is held on par with meat as an ingredient in the kitchens of Madurai, Butter beans are added while making pulao and also to their mutton kuzhambu.\n\n It’s very rare to get butter beans\n\nFor More Products Click https://www.avako.in/product-category/hill-vegetable/'),
(23, 38, 'en', NULL, NULL),
(24, 24, 'en', NULL, NULL),
(25, 25, 'en', NULL, NULL),
(26, 26, 'en', NULL, NULL),
(27, 45, 'en', NULL, NULL),
(28, 20, 'en', NULL, NULL),
(29, 48, 'en', NULL, NULL),
(30, 51, 'en', NULL, 'Passion fruit:\nPassion fruits is Yellow round  and oval Shape fruit which contains more number of seed which is covered by sweet jelly like fruit substance\n\nPassion fruit is also know as Krishna Fal\n\nOur Passion Fruit Is fully cultivated and grown in kodaikanal hills in natural ways\n\nHow To Eat Passion Fruit :\nBuy a Passion Fruit From Avako.in after you receive the fruit just Cut it half and eat the jelly with seeds ,,,,,,,its very sweetie and Yummy');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_07_02_230147_migration_cartalyst_sentinel', 1),
(2, '2014_10_14_200250_create_settings_table', 1),
(3, '2014_10_26_162751_create_files_table', 1),
(4, '2014_10_30_191858_create_pages_table', 1),
(5, '2014_11_31_125848_create_page_translations_table', 1),
(6, '2015_02_27_105241_create_entity_files_table', 1),
(7, '2015_11_20_184604486385_create_translations_table', 1),
(8, '2015_11_20_184604743083_create_translation_translations_table', 1),
(9, '2017_05_29_155126144426_create_products_table', 1),
(10, '2017_05_30_155126416338_create_product_translations_table', 1),
(11, '2017_08_02_153217_create_options_table', 1),
(12, '2017_08_02_153217_create_variations_table', 1),
(13, '2017_08_02_153348_create_option_translations_table', 1),
(14, '2017_08_02_153348_create_variation_translations_table', 1),
(15, '2017_08_02_153406_create_option_values_table', 1),
(16, '2017_08_02_153406_create_variation_values_table', 1),
(17, '2017_08_02_153736_create_option_value_translations_table', 1),
(18, '2017_08_02_153736_create_variation_value_translations_table', 1),
(19, '2017_08_03_156576_create_product_options_table', 1),
(20, '2017_08_17_170128_create_related_products_table', 1),
(21, '2017_08_17_175236_create_up_sell_products_table', 1),
(22, '2017_08_17_175828_create_cross_sell_products_table', 1),
(23, '2017_11_09_141332910964_create_categories_table', 1),
(24, '2017_11_09_141332931539_create_category_translations_table', 1),
(25, '2017_11_26_083614526622_create_meta_data_table', 1),
(26, '2017_11_26_083614526828_create_meta_data_translations_table', 1),
(27, '2018_01_24_125642_create_product_categories_table', 1),
(28, '2018_02_04_150917488267_create_coupons_table', 1),
(29, '2018_02_04_150917488698_create_coupon_translations_table', 1),
(30, '2018_03_11_181317_create_coupon_products_table', 1),
(31, '2018_03_15_091937_create_coupon_categories_table', 1),
(32, '2018_04_18_154028776225_create_reviews_table', 1),
(33, '2018_05_17_115822452977_create_currency_rates_table', 1),
(34, '2018_07_03_124153537506_create_sliders_table', 1),
(35, '2018_07_03_124153537695_create_slider_translations_table', 1),
(36, '2018_07_03_133107770172_create_slider_slides_table', 1),
(37, '2018_07_03_133107770486_create_slider_slide_translations_table', 1),
(38, '2018_07_28_190524758357_create_attribute_sets_table', 1),
(39, '2018_07_28_190524758497_create_attribute_set_translations_table', 1),
(40, '2018_07_28_190524758646_create_attributes_table', 1),
(41, '2018_07_28_190524758877_create_attribute_translations_table', 1),
(42, '2018_07_28_190524759461_create_product_attributes_table', 1),
(43, '2018_08_01_001919718631_create_tax_classes_table', 1),
(44, '2018_08_01_001919718935_create_tax_class_translations_table', 1),
(45, '2018_08_01_001919723551_create_tax_rates_table', 1),
(46, '2018_08_01_001919723781_create_tax_rate_translations_table', 1),
(47, '2018_08_03_195922206748_create_attribute_values_table', 1),
(48, '2018_08_03_195922207019_create_attribute_value_translations_table', 1),
(49, '2018_08_04_190524764275_create_product_attribute_values_table', 1),
(50, '2018_08_07_135631306565_create_orders_table', 1),
(51, '2018_08_07_135631309451_create_order_products_table', 1),
(52, '2018_08_07_135631309512_create_order_product_options_table', 1),
(53, '2018_08_07_135631309624_create_order_product_option_values_table', 1),
(54, '2018_09_11_213926106353_create_transactions_table', 1),
(55, '2018_09_19_081602135631_create_order_taxes_table', 1),
(56, '2018_09_19_103745_create_setting_translations_table', 1),
(57, '2018_10_01_224852175056_create_wish_lists_table', 1),
(58, '2018_10_04_185608_create_search_terms_table', 1),
(59, '2018_11_03_160015_create_menus_table', 1),
(60, '2018_11_03_160138_create_menu_translations_table', 1),
(61, '2018_11_03_160753_create_menu_items_table', 1),
(62, '2018_11_03_160804_create_menu_item_translation_table', 1),
(63, '2019_02_05_162605_add_position_to_slider_slides_table', 1),
(64, '2019_02_09_164343_remove_file_id_from_slider_slides_table', 1),
(65, '2019_02_09_164434_add_file_id_to_slider_slide_translations_table', 1),
(66, '2019_02_14_103408_create_attribute_categories_table', 1),
(67, '2019_08_09_164759_add_slug_column_to_attributes_table', 1),
(68, '2019_11_01_201511_add_special_price_type_column_to_products_table', 1),
(69, '2019_11_23_193101_add_value_column_to_order_product_options_table', 1),
(70, '2020_01_04_211424_add_icon_column_to_menu_items_table', 1),
(71, '2020_01_05_160502_add_direction_column_to_slider_slide_translations_table', 1),
(72, '2020_01_05_234014_add_speed_column_to_sliders_table', 1),
(73, '2020_01_05_235014_add_fade_column_to_sliders_table', 1),
(74, '2020_01_15_000346259038_create_flash_sales_table', 1),
(75, '2020_01_15_000346259349_create_flash_sale_translations_table', 1),
(76, '2020_01_23_011234_create_flash_sale_products_table', 1),
(77, '2020_01_30_015722_create_flash_sale_product_orders_table', 1),
(78, '2020_02_22_215943_delete_meta_keywords_column_from_meta_data_translations_table', 1),
(79, '2020_03_05_214602901973_create_brands_table', 1),
(80, '2020_03_05_214602902369_create_brand_translations_table', 1),
(81, '2020_03_06_234605_add_brand_id_column_to_products_table', 1),
(82, '2020_04_06_211526_add_note_column_to_orders_table', 1),
(83, '2020_04_28_034118164376_create_tags_table', 1),
(84, '2020_04_28_034118164618_create_tag_translations_table', 1),
(85, '2020_04_28_225657_create_product_tags_table', 1),
(86, '2020_05_10_041616_create_updater_scripts_table', 1),
(87, '2020_10_07_175000_create_addresses_table', 1),
(88, '2020_10_07_175004_create_default_addresses_table', 1),
(89, '2020_11_21_163822_add_downloads_columns_to_products_table', 1),
(90, '2021_01_08_203241_change_shipping_method_column_in_orders_table', 1),
(91, '2021_01_09_172744_add_phone_column_to_users_table', 1),
(92, '2021_01_11_170516_create_order_downloads_table', 1),
(93, '2023_05_04_194556_rename_column_virtual_to_is_virtual', 1),
(94, '2023_05_16_156576_create_product_variations_table', 1),
(95, '2023_05_16_170651_create_product_variants_table', 1),
(96, '2023_06_11_150030_create_order_product_variations_table', 1),
(97, '2023_06_11_150044_create_order_product_variation_values_table', 1),
(98, '2023_06_11_150456_add_product_variant_id_column_to_order_products_table', 1),
(99, '2023_11_06_084429_create_carts_table', 1),
(100, '2023_11_07_113308_add_timestamp_columns_to_related_products_table', 1),
(101, '2023_11_07_113325_add_timestamp_columns_to_up_sell_products_table', 1),
(102, '2023_11_07_113341_add_timestamp_columns_to_cross_sell_products_table', 1),
(103, '2023_11_21_164218_make_price_column_in_the_products_table_nullable', 1),
(104, '2024_02_12_115822452977_increase_currency_rate_decimal_total_digits', 1),
(105, '2024_03_13_100000_create_blog_categories_table', 1),
(106, '2024_03_13_100001_create_blog_category_translations_table', 1),
(107, '2024_03_13_100002_create_blog_tags_table', 1),
(108, '2024_03_13_100003_create_blog_tag_translations_table', 1),
(109, '2024_03_13_100004_create_blog_posts_table', 1),
(110, '2024_03_13_100005_create_blog_post_translations_table', 1),
(111, '2024_03_13_100006_create_blog_post_blog_tag_table', 1),
(112, '2025_05_19_0000001_add_tracking_reference_column_to_orders_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `options`
--

CREATE TABLE `options` (
  `id` int UNSIGNED NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_required` tinyint(1) NOT NULL,
  `is_global` tinyint(1) NOT NULL DEFAULT '1',
  `position` int UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `options`
--

INSERT INTO `options` (`id`, `type`, `is_required`, `is_global`, `position`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'dropdown', 1, 1, NULL, NULL, '2025-06-29 07:29:23', '2025-06-29 07:29:23'),
(2, 'field', 0, 1, NULL, NULL, '2025-06-29 07:29:23', '2025-06-29 07:29:23'),
(3, 'checkbox', 0, 1, NULL, NULL, '2025-06-29 07:29:23', '2025-06-29 07:29:23'),
(4, 'date', 1, 1, NULL, NULL, '2025-06-29 07:29:23', '2025-06-29 07:29:23'),
(5, 'dropdown', 1, 1, NULL, NULL, '2025-06-29 07:29:23', '2025-06-29 07:29:23'),
(6, 'checkbox_custom', 0, 1, NULL, NULL, '2025-06-29 07:29:23', '2025-06-29 07:29:23'),
(7, 'textarea', 0, 1, NULL, NULL, '2025-06-29 07:29:23', '2025-06-29 07:29:23'),
(8, 'radio', 1, 1, NULL, NULL, '2025-06-29 07:29:23', '2025-06-29 07:29:23'),
(9, 'date', 1, 1, NULL, NULL, '2025-06-29 07:29:23', '2025-06-29 07:29:23'),
(10, 'checkbox', 0, 1, NULL, NULL, '2025-06-29 07:29:23', '2025-06-29 07:29:23'),
(11, 'dropdown', 1, 0, 1, NULL, '2025-06-29 10:13:21', '2025-06-29 10:13:21'),
(12, 'checkbox_custom', 0, 0, 2, NULL, '2025-06-29 10:13:21', '2025-06-29 10:13:21'),
(13, 'textarea', 0, 0, 3, NULL, '2025-06-29 10:13:21', '2025-06-29 10:13:21'),
(14, 'radio', 1, 0, 4, NULL, '2025-06-29 10:13:21', '2025-06-29 10:13:21'),
(15, 'date', 1, 0, 5, NULL, '2025-06-29 10:13:21', '2025-06-29 10:13:21'),
(16, 'checkbox', 0, 0, 6, NULL, '2025-06-29 10:13:21', '2025-06-29 10:13:21'),
(17, 'dropdown', 1, 0, 5, NULL, '2025-06-29 10:13:52', '2025-06-29 10:13:54'),
(18, 'field', 0, 0, 6, NULL, '2025-06-29 10:13:52', '2025-06-29 10:13:54'),
(19, 'checkbox', 0, 0, 7, NULL, '2025-06-29 10:13:52', '2025-06-29 10:13:54'),
(20, 'date', 1, 0, 8, NULL, '2025-06-29 10:13:52', '2025-06-29 10:13:54'),
(21, 'dropdown', 1, 0, 1, NULL, '2025-06-29 10:13:54', '2025-06-29 10:13:54'),
(22, 'field', 0, 0, 2, NULL, '2025-06-29 10:13:54', '2025-06-29 10:13:54'),
(23, 'checkbox', 0, 0, 3, NULL, '2025-06-29 10:13:54', '2025-06-29 10:13:54'),
(24, 'date', 1, 0, 4, NULL, '2025-06-29 10:13:54', '2025-06-29 10:13:54');

-- --------------------------------------------------------

--
-- Table structure for table `option_translations`
--

CREATE TABLE `option_translations` (
  `id` int UNSIGNED NOT NULL,
  `option_id` int UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `option_translations`
--

INSERT INTO `option_translations` (`id`, `option_id`, `locale`, `name`) VALUES
(1, 1, 'en', 'Size'),
(2, 2, 'en', 'Personalization'),
(3, 3, 'en', 'Gift Wrap'),
(4, 4, 'en', 'Delivery Date'),
(5, 5, 'en', 'Box Theme'),
(6, 6, 'en', 'Dietary Restrictions'),
(7, 7, 'en', 'Personalized Note'),
(8, 8, 'en', 'Delivery Frequency'),
(9, 9, 'en', 'First Delivery Date'),
(10, 10, 'en', 'Add Premium Item'),
(11, 11, 'en', 'Box Theme'),
(12, 12, 'en', 'Dietary Restrictions'),
(13, 13, 'en', 'Personalized Note'),
(14, 14, 'en', 'Delivery Frequency'),
(15, 15, 'en', 'First Delivery Date'),
(16, 16, 'en', 'Add Premium Item'),
(17, 17, 'en', 'Size'),
(18, 18, 'en', 'Personalization'),
(19, 19, 'en', 'Gift Wrap'),
(20, 20, 'en', 'Delivery Date'),
(21, 21, 'en', 'Size'),
(22, 22, 'en', 'Personalization'),
(23, 23, 'en', 'Gift Wrap'),
(24, 24, 'en', 'Delivery Date');

-- --------------------------------------------------------

--
-- Table structure for table `option_values`
--

CREATE TABLE `option_values` (
  `id` int UNSIGNED NOT NULL,
  `option_id` int UNSIGNED NOT NULL,
  `price` decimal(18,4) UNSIGNED DEFAULT NULL,
  `price_type` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` int UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `option_values`
--

INSERT INTO `option_values` (`id`, `option_id`, `price`, `price_type`, `position`, `created_at`, `updated_at`) VALUES
(1, 1, 0.0000, 'fixed', 1, '2025-06-29 07:29:23', '2025-06-29 07:29:23'),
(2, 1, 2.0000, 'fixed', 2, '2025-06-29 07:29:23', '2025-06-29 07:29:23'),
(3, 1, 3.0000, 'fixed', 3, '2025-06-29 07:29:23', '2025-06-29 07:29:23'),
(4, 2, 0.0000, 'fixed', 1, '2025-06-29 07:29:23', '2025-06-29 07:29:23'),
(5, 3, 4.5000, 'fixed', 1, '2025-06-29 07:29:23', '2025-06-29 07:29:23'),
(6, 4, 0.0000, 'fixed', 1, '2025-06-29 07:29:23', '2025-06-29 07:29:23'),
(7, 5, 0.0000, 'fixed', 1, '2025-06-29 07:29:23', '2025-06-29 07:29:23'),
(8, 5, 2.0000, 'fixed', 2, '2025-06-29 07:29:23', '2025-06-29 07:29:23'),
(9, 5, 3.5000, 'fixed', 3, '2025-06-29 07:29:23', '2025-06-29 07:29:23'),
(10, 6, 1.0000, 'fixed', 1, '2025-06-29 07:29:23', '2025-06-29 07:29:23'),
(11, 6, 1.5000, 'fixed', 2, '2025-06-29 07:29:23', '2025-06-29 07:29:23'),
(12, 6, 0.5000, 'fixed', 3, '2025-06-29 07:29:23', '2025-06-29 07:29:23'),
(13, 7, 0.0000, 'fixed', 1, '2025-06-29 07:29:23', '2025-06-29 07:29:23'),
(14, 8, 0.0000, 'fixed', 1, '2025-06-29 07:29:23', '2025-06-29 07:29:23'),
(15, 8, 0.0000, 'fixed', 2, '2025-06-29 07:29:23', '2025-06-29 07:29:23'),
(16, 9, 0.0000, 'fixed', 1, '2025-06-29 07:29:23', '2025-06-29 07:29:23'),
(17, 10, 7.9900, 'fixed', 1, '2025-06-29 07:29:23', '2025-06-29 07:29:23'),
(18, 11, 0.0000, 'fixed', 1, '2025-06-29 10:13:21', '2025-06-29 10:13:21'),
(19, 11, 2.0000, 'fixed', 2, '2025-06-29 10:13:21', '2025-06-29 10:13:21'),
(20, 11, 3.5000, 'fixed', 3, '2025-06-29 10:13:21', '2025-06-29 10:13:21'),
(21, 12, 1.0000, 'fixed', 1, '2025-06-29 10:13:21', '2025-06-29 10:13:21'),
(22, 12, 1.5000, 'fixed', 2, '2025-06-29 10:13:21', '2025-06-29 10:13:21'),
(23, 12, 0.5000, 'fixed', 3, '2025-06-29 10:13:21', '2025-06-29 10:13:21'),
(24, 13, 0.0000, 'fixed', 1, '2025-06-29 10:13:21', '2025-06-29 10:13:21'),
(25, 14, 0.0000, 'fixed', 1, '2025-06-29 10:13:21', '2025-06-29 10:13:21'),
(26, 14, 0.0000, 'fixed', 2, '2025-06-29 10:13:21', '2025-06-29 10:13:21'),
(27, 15, 0.0000, 'fixed', 1, '2025-06-29 10:13:21', '2025-06-29 10:13:21'),
(28, 16, 7.9900, 'fixed', 1, '2025-06-29 10:13:21', '2025-06-29 10:13:21'),
(29, 17, 0.0000, 'fixed', 1, '2025-06-29 10:13:52', '2025-06-29 10:13:52'),
(30, 17, 2.0000, 'fixed', 2, '2025-06-29 10:13:52', '2025-06-29 10:13:52'),
(31, 17, 3.0000, 'fixed', 3, '2025-06-29 10:13:52', '2025-06-29 10:13:52'),
(32, 18, 0.0000, 'fixed', 1, '2025-06-29 10:13:52', '2025-06-29 10:13:52'),
(33, 19, 4.5000, 'fixed', 1, '2025-06-29 10:13:52', '2025-06-29 10:13:52'),
(34, 20, 0.0000, 'fixed', 1, '2025-06-29 10:13:52', '2025-06-29 10:13:52'),
(35, 21, 0.0000, 'fixed', 1, '2025-06-29 10:13:54', '2025-06-29 10:13:54'),
(36, 21, 2.0000, 'fixed', 2, '2025-06-29 10:13:54', '2025-06-29 10:13:54'),
(37, 21, 3.0000, 'fixed', 3, '2025-06-29 10:13:54', '2025-06-29 10:13:54'),
(38, 22, 0.0000, 'fixed', 1, '2025-06-29 10:13:54', '2025-06-29 10:13:54'),
(39, 23, 4.5000, 'fixed', 1, '2025-06-29 10:13:54', '2025-06-29 10:13:54'),
(40, 24, 0.0000, 'fixed', 1, '2025-06-29 10:13:54', '2025-06-29 10:13:54');

-- --------------------------------------------------------

--
-- Table structure for table `option_value_translations`
--

CREATE TABLE `option_value_translations` (
  `id` int UNSIGNED NOT NULL,
  `option_value_id` int UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `label` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `option_value_translations`
--

INSERT INTO `option_value_translations` (`id`, `option_value_id`, `locale`, `label`) VALUES
(1, 1, 'en', 'Medium'),
(2, 2, 'en', 'Large'),
(3, 3, 'en', 'X-Large'),
(4, 4, 'en', 'Price'),
(5, 5, 'en', 'Add Gift Wrap'),
(6, 6, 'en', 'Price'),
(7, 7, 'en', 'Snacks & Sweets'),
(8, 8, 'en', 'Coffee Lovers'),
(9, 9, 'en', 'Relax & Pamper'),
(10, 10, 'en', 'Gluten Free'),
(11, 11, 'en', 'Vegan'),
(12, 12, 'en', 'Nut Free'),
(13, 13, 'en', 'Price'),
(14, 14, 'en', 'Monthly'),
(15, 15, 'en', 'Every 2 Months'),
(16, 16, 'en', 'Price'),
(17, 17, 'en', 'Include this month\'s premium featured item'),
(18, 18, 'en', 'Snacks & Sweets'),
(19, 19, 'en', 'Coffee Lovers'),
(20, 20, 'en', 'Relax & Pamper'),
(21, 21, 'en', 'Gluten Free'),
(22, 22, 'en', 'Vegan'),
(23, 23, 'en', 'Nut Free'),
(24, 25, 'en', 'Monthly'),
(25, 26, 'en', 'Every 2 Months'),
(26, 28, 'en', 'Include this month\'s premium featured item'),
(27, 29, 'en', 'Medium'),
(28, 30, 'en', 'Large'),
(29, 31, 'en', 'X-Large'),
(30, 33, 'en', 'Add Gift Wrap'),
(31, 35, 'en', 'Medium'),
(32, 36, 'en', 'Large'),
(33, 37, 'en', 'X-Large'),
(34, 39, 'en', 'Add Gift Wrap');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int UNSIGNED NOT NULL,
  `customer_id` int DEFAULT NULL,
  `customer_email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_first_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_last_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `billing_first_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `billing_last_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `billing_address_1` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `billing_address_2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_city` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `billing_state` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `billing_zip` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `billing_country` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_first_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_last_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_address_1` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_address_2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_city` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_state` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_zip` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_country` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sub_total` decimal(18,4) UNSIGNED NOT NULL,
  `shipping_method` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_cost` decimal(18,4) UNSIGNED NOT NULL,
  `coupon_id` int DEFAULT NULL,
  `discount` decimal(18,4) UNSIGNED NOT NULL,
  `total` decimal(18,4) UNSIGNED NOT NULL,
  `payment_method` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency_rate` decimal(18,4) NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci,
  `tracking_reference` text COLLATE utf8mb4_unicode_ci,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `customer_id`, `customer_email`, `customer_phone`, `customer_first_name`, `customer_last_name`, `billing_first_name`, `billing_last_name`, `billing_address_1`, `billing_address_2`, `billing_city`, `billing_state`, `billing_zip`, `billing_country`, `shipping_first_name`, `shipping_last_name`, `shipping_address_1`, `shipping_address_2`, `shipping_city`, `shipping_state`, `shipping_zip`, `shipping_country`, `sub_total`, `shipping_method`, `shipping_cost`, `coupon_id`, `discount`, `total`, `payment_method`, `currency`, `currency_rate`, `locale`, `status`, `note`, `tracking_reference`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 2, 'azzok17@gmail.com', '9360676505', 'Ashok', 'Kumar', 'Ashok', 'Kumar', 'Test', 'Test', 'Chennai', 'TN', '600044', 'IN', 'Ashok', 'Kumar', 'Test', 'Test', 'Chennai', 'TN', '600044', 'IN', 139.0000, 'free_shipping', 0.0000, NULL, 0.0000, 139.0000, 'cod', 'INR', 1.0000, 'en', 'pending', NULL, NULL, NULL, '2025-06-30 17:05:00', '2025-06-30 17:05:00'),
(2, 2, 'azzok17@gmail.com', '9360676505', 'Ashok', 'Kumar', 'Ashok', 'Kumar', 'Test', 'Test', 'Chennai', 'TN', '600044', 'IN', 'Ashok', 'Kumar', 'Test', 'Test', 'Chennai', 'TN', '600044', 'IN', 175.0000, 'free_shipping', 0.0000, NULL, 0.0000, 175.0000, 'razorpay', 'INR', 1.0000, 'en', 'pending_payment', NULL, NULL, '2025-07-11 00:01:40', '2025-07-11 00:01:40', '2025-07-11 00:01:40'),
(3, 2, 'azzok17@gmail.com', '9360676505', 'Ashok', 'Kumar', 'Ashok', 'Kumar', 'Test', 'Test', 'Chennai', 'TN', '600044', 'IN', 'Ashok', 'Kumar', 'Test', 'Test', 'Chennai', 'TN', '600044', 'IN', 175.0000, 'free_shipping', 0.0000, NULL, 0.0000, 175.0000, 'ccavenue', 'INR', 1.0000, 'en', 'pending_payment', NULL, NULL, NULL, '2025-07-11 01:13:41', '2025-07-11 01:13:41'),
(4, 2, 'azzok17@gmail.com', '9360676505', 'Ashok', 'Kumar', 'Ashok', 'Kumar', 'Test', 'Test', 'Chennai', 'TN', '600044', 'IN', 'Ashok', 'Kumar', 'Test', 'Test', 'Chennai', 'TN', '600044', 'IN', 175.0000, 'free_shipping', 0.0000, NULL, 0.0000, 175.0000, 'ccavenue', 'INR', 1.0000, 'en', 'pending_payment', NULL, NULL, NULL, '2025-07-11 01:17:37', '2025-07-11 01:17:37'),
(5, 2, 'azzok17@gmail.com', '9360676505', 'Ashok', 'Kumar', 'Ashok', 'Kumar', 'Test', 'Test', 'Chennai', 'TN', '600044', 'IN', 'Ashok', 'Kumar', 'Test', 'Test', 'Chennai', 'TN', '600044', 'IN', 149.0000, 'free_shipping', 0.0000, NULL, 0.0000, 149.0000, 'ccavenue', 'INR', 1.0000, 'en', 'pending_payment', NULL, NULL, NULL, '2025-07-11 06:23:32', '2025-07-11 06:23:32'),
(6, 2, 'azzok17@gmail.com', '9360676505', 'Ashok', 'Kumar', 'Ashok', 'Kumar', 'Test', 'Test', 'Chennai', 'TN', '600044', 'IN', 'Ashok', 'Kumar', 'Test', 'Test', 'Chennai', 'TN', '600044', 'IN', 149.0000, 'free_shipping', 0.0000, NULL, 0.0000, 149.0000, 'ccavenue', 'INR', 1.0000, 'en', 'pending_payment', NULL, NULL, NULL, '2025-07-11 06:34:06', '2025-07-11 06:34:06'),
(7, 2, 'azzok17@gmail.com', '9360676505', 'Ashok', 'Kumar', 'Ashok', 'Kumar', 'Test', 'Test', 'Chennai', 'TN', '600044', 'IN', 'Ashok', 'Kumar', 'Test', 'Test', 'Chennai', 'TN', '600044', 'IN', 149.0000, 'free_shipping', 0.0000, NULL, 0.0000, 149.0000, 'ccavenue', 'INR', 1.0000, 'en', 'pending_payment', NULL, NULL, NULL, '2025-07-11 06:34:12', '2025-07-11 06:34:12'),
(8, 2, 'azzok17@gmail.com', '9360676505', 'Ashok', 'Kumar', 'Ashok', 'Kumar', 'Test', 'Test', 'Chennai', 'TN', '600044', 'IN', 'Ashok', 'Kumar', 'Test', 'Test', 'Chennai', 'TN', '600044', 'IN', 149.0000, 'free_shipping', 0.0000, NULL, 0.0000, 149.0000, 'ccavenue', 'INR', 1.0000, 'en', 'pending_payment', NULL, NULL, NULL, '2025-07-11 06:40:06', '2025-07-11 06:40:06'),
(9, 2, 'azzok17@gmail.com', '9360676505', 'Ashok', 'Kumar', 'Ashok', 'Kumar', 'Test', 'Test', 'Chennai', 'TN', '600044', 'IN', 'Ashok', 'Kumar', 'Test', 'Test', 'Chennai', 'TN', '600044', 'IN', 149.0000, 'free_shipping', 0.0000, NULL, 0.0000, 149.0000, 'ccavenue', 'INR', 1.0000, 'en', 'pending_payment', NULL, NULL, NULL, '2025-07-11 06:41:20', '2025-07-11 06:41:20'),
(10, 2, 'azzok17@gmail.com', '9360676505', 'Ashok', 'Kumar', 'Ashok', 'Kumar', 'Test', 'Test', 'Chennai', 'TN', '600044', 'IN', 'Ashok', 'Kumar', 'Test', 'Test', 'Chennai', 'TN', '600044', 'IN', 149.0000, 'free_shipping', 0.0000, NULL, 0.0000, 149.0000, 'ccavenue', 'INR', 1.0000, 'en', 'pending_payment', NULL, NULL, NULL, '2025-07-11 06:46:27', '2025-07-11 06:46:27'),
(11, 2, 'azzok17@gmail.com', '9360676505', 'Ashok', 'Kumar', 'Ashok', 'Kumar', 'Test', 'Test', 'Chennai', 'TN', '600044', 'IN', 'Ashok', 'Kumar', 'Test', 'Test', 'Chennai', 'TN', '600044', 'IN', 149.0000, 'free_shipping', 0.0000, NULL, 0.0000, 149.0000, 'ccavenue', 'INR', 1.0000, 'en', 'pending_payment', NULL, NULL, NULL, '2025-07-11 06:47:39', '2025-07-11 06:47:39'),
(12, 2, 'azzok17@gmail.com', '9360676505', 'Ashok', 'Kumar', 'Ashok', 'Kumar', 'Test', 'Test', 'Chennai', 'TN', '600044', 'IN', 'Ashok', 'Kumar', 'Test', 'Test', 'Chennai', 'TN', '600044', 'IN', 149.0000, 'free_shipping', 0.0000, NULL, 0.0000, 149.0000, 'ccavenue', 'INR', 1.0000, 'en', 'pending_payment', NULL, NULL, NULL, '2025-07-11 06:48:41', '2025-07-11 06:48:41'),
(13, 2, 'azzok17@gmail.com', '9360676505', 'Ashok', 'Kumar', 'Ashok', 'Kumar', 'Test', 'Test', 'Chennai', 'TN', '600044', 'IN', 'Ashok', 'Kumar', 'Test', 'Test', 'Chennai', 'TN', '600044', 'IN', 149.0000, 'free_shipping', 0.0000, NULL, 0.0000, 149.0000, 'ccavenue', 'INR', 1.0000, 'en', 'pending_payment', NULL, NULL, '2025-07-11 06:49:43', '2025-07-11 06:49:43', '2025-07-11 06:49:43'),
(14, 2, 'azzok17@gmail.com', '9360676505', 'Ashok', 'Kumar', 'Ashok', 'Kumar', 'Test', 'Test', 'Chennai', 'TN', '600044', 'IN', 'Ashok', 'Kumar', 'Test', 'Test', 'Chennai', 'TN', '600044', 'IN', 149.0000, 'free_shipping', 0.0000, NULL, 0.0000, 149.0000, 'ccavenue', 'INR', 1.0000, 'en', 'pending_payment', NULL, NULL, NULL, '2025-07-11 06:50:38', '2025-07-11 06:50:38'),
(15, 2, 'azzok17@gmail.com', '9360676505', 'Ashok', 'Kumar', 'Ashok', 'Kumar', 'Test', 'Test', 'Chennai', 'TN', '600044', 'IN', 'Ashok', 'Kumar', 'Test', 'Test', 'Chennai', 'TN', '600044', 'IN', 149.0000, 'free_shipping', 0.0000, NULL, 0.0000, 149.0000, 'ccavenue', 'INR', 1.0000, 'en', 'pending_payment', NULL, NULL, NULL, '2025-07-11 06:51:03', '2025-07-11 06:51:03'),
(16, 2, 'azzok17@gmail.com', '9360676505', 'Ashok', 'Kumar', 'Ashok', 'Kumar', 'Test', 'Test', 'Chennai', 'TN', '600044', 'IN', 'Ashok', 'Kumar', 'Test', 'Test', 'Chennai', 'TN', '600044', 'IN', 149.0000, 'free_shipping', 0.0000, NULL, 0.0000, 149.0000, 'ccavenue', 'INR', 1.0000, 'en', 'pending_payment', NULL, NULL, NULL, '2025-07-11 06:51:12', '2025-07-11 06:51:12'),
(17, 2, 'azzok17@gmail.com', '9360676505', 'Ashok', 'Kumar', 'Ashok', 'Kumar', 'Test', 'Test', 'Chennai', 'TN', '600044', 'IN', 'Ashok', 'Kumar', 'Test', 'Test', 'Chennai', 'TN', '600044', 'IN', 149.0000, 'free_shipping', 0.0000, NULL, 0.0000, 149.0000, 'ccavenue', 'INR', 1.0000, 'en', 'pending_payment', NULL, NULL, NULL, '2025-07-11 06:52:11', '2025-07-11 06:52:11'),
(18, 2, 'azzok17@gmail.com', '9360676505', 'Ashok', 'Kumar', 'Ashok', 'Kumar', 'Test', 'Test', 'Chennai', 'TN', '600044', 'IN', 'Ashok', 'Kumar', 'Test', 'Test', 'Chennai', 'TN', '600044', 'IN', 149.0000, 'free_shipping', 0.0000, NULL, 0.0000, 149.0000, 'ccavenue', 'INR', 1.0000, 'en', 'pending_payment', NULL, NULL, NULL, '2025-07-11 06:53:21', '2025-07-11 06:53:21'),
(19, 2, 'azzok17@gmail.com', '9360676505', 'Ashok', 'Kumar', 'Ashok', 'Kumar', 'Test', 'Test', 'Chennai', 'TN', '600044', 'IN', 'Ashok', 'Kumar', 'Test', 'Test', 'Chennai', 'TN', '600044', 'IN', 149.0000, 'free_shipping', 0.0000, NULL, 0.0000, 149.0000, 'ccavenue', 'INR', 1.0000, 'en', 'pending_payment', NULL, NULL, NULL, '2025-07-11 07:15:06', '2025-07-11 07:15:06'),
(20, 2, 'azzok17@gmail.com', '9360676505', 'Ashok', 'Kumar', 'Ashok', 'Kumar', 'Test', 'Test', 'Chennai', 'TN', '600044', 'IN', 'Ashok', 'Kumar', 'Test', 'Test', 'Chennai', 'TN', '600044', 'IN', 149.0000, 'free_shipping', 0.0000, NULL, 0.0000, 149.0000, 'ccavenue', 'INR', 1.0000, 'en', 'pending_payment', NULL, NULL, NULL, '2025-07-11 07:18:27', '2025-07-11 07:18:27'),
(22, 2, 'azzok17@gmail.com', '9360676505', 'Ashok', 'Kumar', 'Ashok', 'Kumar', 'Test', 'Test', 'Chennai', 'TN', '600044', 'IN', 'Ashok', 'Kumar', 'Test', 'Test', 'Chennai', 'TN', '600044', 'IN', 149.0000, 'free_shipping', 0.0000, NULL, 0.0000, 149.0000, 'ccavenue', 'INR', 1.0000, 'en', 'pending_payment', NULL, NULL, NULL, '2025-07-11 07:20:49', '2025-07-11 07:20:49'),
(23, 2, 'azzok17@gmail.com', '9360676505', 'Ashok', 'Kumar', 'Ashok', 'Kumar', 'Test', 'Test', 'Chennai', 'TN', '600044', 'IN', 'Ashok', 'Kumar', 'Test', 'Test', 'Chennai', 'TN', '600044', 'IN', 149.0000, 'free_shipping', 0.0000, NULL, 0.0000, 149.0000, 'ccavenue', 'INR', 1.0000, 'en', 'pending_payment', NULL, NULL, NULL, '2025-07-11 07:22:16', '2025-07-11 07:22:16'),
(24, 2, 'azzok17@gmail.com', '9360676505', 'Ashok', 'Kumar', 'Ashok', 'Kumar', 'Test', 'Test', 'Chennai', 'TN', '600044', 'IN', 'Ashok', 'Kumar', 'Test', 'Test', 'Chennai', 'TN', '600044', 'IN', 149.0000, 'free_shipping', 0.0000, NULL, 0.0000, 149.0000, 'ccavenue', 'INR', 1.0000, 'en', 'pending_payment', NULL, NULL, NULL, '2025-07-11 07:27:46', '2025-07-11 07:27:46'),
(25, 2, 'azzok17@gmail.com', '9360676505', 'Ashok', 'Kumar', 'Ashok', 'Kumar', 'Test', 'Test', 'Chennai', 'TN', '600044', 'IN', 'Ashok', 'Kumar', 'Test', 'Test', 'Chennai', 'TN', '600044', 'IN', 149.0000, 'free_shipping', 0.0000, NULL, 0.0000, 149.0000, 'ccavenue', 'INR', 1.0000, 'en', 'pending_payment', NULL, NULL, NULL, '2025-07-11 07:59:44', '2025-07-11 07:59:44');

-- --------------------------------------------------------

--
-- Table structure for table `order_downloads`
--

CREATE TABLE `order_downloads` (
  `id` int UNSIGNED NOT NULL,
  `order_id` int UNSIGNED NOT NULL,
  `file_id` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_products`
--

CREATE TABLE `order_products` (
  `id` int UNSIGNED NOT NULL,
  `order_id` int UNSIGNED NOT NULL,
  `product_id` int UNSIGNED NOT NULL,
  `product_variant_id` bigint UNSIGNED DEFAULT NULL,
  `unit_price` decimal(18,4) UNSIGNED NOT NULL,
  `qty` int NOT NULL,
  `line_total` decimal(18,4) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_products`
--

INSERT INTO `order_products` (`id`, `order_id`, `product_id`, `product_variant_id`, `unit_price`, `qty`, `line_total`) VALUES
(1, 1, 9, 12, 139.0000, 1, 139.0000),
(2, 2, 15, 31, 175.0000, 1, 175.0000),
(3, 3, 15, 31, 175.0000, 1, 175.0000),
(4, 4, 15, 31, 175.0000, 1, 175.0000),
(5, 5, 14, 27, 149.0000, 1, 149.0000),
(6, 6, 14, 27, 149.0000, 1, 149.0000),
(7, 7, 14, 27, 149.0000, 1, 149.0000),
(8, 8, 14, 27, 149.0000, 1, 149.0000),
(9, 9, 14, 27, 149.0000, 1, 149.0000),
(10, 10, 14, 27, 149.0000, 1, 149.0000),
(11, 11, 14, 27, 149.0000, 1, 149.0000),
(12, 12, 14, 27, 149.0000, 1, 149.0000),
(13, 13, 14, 27, 149.0000, 1, 149.0000),
(14, 14, 14, 27, 149.0000, 1, 149.0000),
(15, 15, 14, 27, 149.0000, 1, 149.0000),
(16, 16, 14, 27, 149.0000, 1, 149.0000),
(17, 17, 14, 27, 149.0000, 1, 149.0000),
(18, 18, 14, 27, 149.0000, 1, 149.0000),
(19, 19, 14, 27, 149.0000, 1, 149.0000),
(20, 20, 14, 27, 149.0000, 1, 149.0000),
(22, 22, 14, 27, 149.0000, 1, 149.0000),
(23, 23, 14, 27, 149.0000, 1, 149.0000),
(24, 24, 14, 27, 149.0000, 1, 149.0000),
(25, 25, 14, 27, 149.0000, 1, 149.0000);

-- --------------------------------------------------------

--
-- Table structure for table `order_product_options`
--

CREATE TABLE `order_product_options` (
  `id` int UNSIGNED NOT NULL,
  `order_product_id` int UNSIGNED NOT NULL,
  `option_id` int UNSIGNED NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_product_option_values`
--

CREATE TABLE `order_product_option_values` (
  `order_product_option_id` int UNSIGNED NOT NULL,
  `option_value_id` int UNSIGNED NOT NULL,
  `price` decimal(18,4) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_product_variations`
--

CREATE TABLE `order_product_variations` (
  `id` int UNSIGNED NOT NULL,
  `order_product_id` int UNSIGNED NOT NULL,
  `variation_id` int UNSIGNED NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_product_variations`
--

INSERT INTO `order_product_variations` (`id`, `order_product_id`, `variation_id`, `type`, `value`) VALUES
(1, 1, 8, 'text', '100 gm'),
(2, 2, 14, 'text', '150g'),
(3, 3, 14, 'text', '150g'),
(4, 4, 14, 'text', '150g'),
(5, 5, 13, 'text', '150gms'),
(6, 6, 13, 'text', '150gms'),
(7, 7, 13, 'text', '150gms'),
(8, 8, 13, 'text', '150gms'),
(9, 9, 13, 'text', '150gms'),
(10, 10, 13, 'text', '150gms'),
(11, 11, 13, 'text', '150gms'),
(12, 12, 13, 'text', '150gms'),
(13, 13, 13, 'text', '150gms'),
(14, 14, 13, 'text', '150gms'),
(15, 15, 13, 'text', '150gms'),
(16, 16, 13, 'text', '150gms'),
(17, 17, 13, 'text', '150gms'),
(18, 18, 13, 'text', '150gms'),
(19, 19, 13, 'text', '150gms'),
(20, 20, 13, 'text', '150gms'),
(22, 22, 13, 'text', '150gms'),
(23, 23, 13, 'text', '150gms'),
(24, 24, 13, 'text', '150gms'),
(25, 25, 13, 'text', '150gms');

-- --------------------------------------------------------

--
-- Table structure for table `order_product_variation_values`
--

CREATE TABLE `order_product_variation_values` (
  `order_product_variation_id` int UNSIGNED NOT NULL,
  `variation_value_id` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_product_variation_values`
--

INSERT INTO `order_product_variation_values` (`order_product_variation_id`, `variation_value_id`) VALUES
(1, 27),
(5, 59),
(6, 59),
(7, 59),
(8, 59),
(9, 59),
(10, 59),
(11, 59),
(12, 59),
(13, 59),
(14, 59),
(15, 59),
(16, 59),
(17, 59),
(18, 59),
(19, 59),
(20, 59),
(22, 59),
(23, 59),
(24, 59),
(25, 59),
(2, 66),
(3, 66),
(4, 66);

-- --------------------------------------------------------

--
-- Table structure for table `order_taxes`
--

CREATE TABLE `order_taxes` (
  `order_id` int UNSIGNED NOT NULL,
  `tax_rate_id` int UNSIGNED NOT NULL,
  `amount` decimal(15,4) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int UNSIGNED NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `slug`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'about-us', 1, '2025-06-30 15:24:14', '2025-06-30 15:36:45'),
(2, 'faq', 1, '2025-06-30 15:26:01', '2025-06-30 15:26:01'),
(3, 'return-policy', 1, '2025-06-30 15:27:04', '2025-06-30 15:27:04'),
(4, 'terms-conditions', 1, '2025-06-30 15:27:54', '2025-06-30 15:27:54'),
(5, 'privacy-policy', 1, '2025-06-30 15:29:00', '2025-06-30 15:29:00');

-- --------------------------------------------------------

--
-- Table structure for table `page_translations`
--

CREATE TABLE `page_translations` (
  `id` int UNSIGNED NOT NULL,
  `page_id` int UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` longtext COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `page_translations`
--

INSERT INTO `page_translations` (`id`, `page_id`, `locale`, `name`, `body`) VALUES
(1, 1, 'en', 'About Us', '<h1 style=\"text-align: center;\">About Us</h1>\r\n<h1 style=\"text-align: center;\"><img src=\"/storage/media/HmOKyObsMLWvxahqNqsnvjox2PYfZJMPNxuHMs29.jpeg\" alt=\"\" width=\"100%\" loading=\"lazy\" /><img src=\"/storage/media/77sC7UivQWFv5ZCIHW9g9F7GgGOFK1LOYUnXlqDu.jpg\" alt=\"\" width=\"1395\" loading=\"lazy\" /></h1>\r\n<p>&nbsp;</p>\r\n<ul>\r\n<li>AVAKO.IN is purely farmers handmade products. the online platform operated by&nbsp;<strong>SIVASAKTHI Poultry Farm.&nbsp;</strong>The products are all around western Ghats especially in Kodaikanal areas. We are the farmers and we are getting all over products from the well cultivated farmers .I am very sure that our products are highly Organic.</li>\r\n<li>Organic is not a word ,it means a lot (ie) very pure and I assured that our products are like that. We are feeding Fermi compost manure to our plants and we are strictly against fertilizers and pesticides.</li>\r\n<li>At first we are launching organic products through our website and soon we will give you all other good products through site. So always check into our website and get the good products in your hands.</li>\r\n<li>Honey is sweet but our honey is more delight because it was taken rock, caves and well grown Trees which was built by our environmental Mr.Honey Bee.., Who takes the nectar in colorful fresh flowers. Buy and taste the delightness that you can.\r\n<ul>\r\n<li>If you want to visit our farm, we can arrange it. So you can visit, Stay , Enjoy and Purchase what you need.</li>\r\n<li>Getting things is not only happiness Giving Good Things is also the happiness. So visit our website , Choose and purchase the product Taste and enjoy healthy Life.</li>\r\n<li>For Poultry Farm Visit&nbsp;:&nbsp;<a href=\"http://www.sivasakthipoultry.com/\">http://www.sivasakthipoultry.com</a>&nbsp;</li>\r\n</ul>\r\n</li>\r\n</ul>'),
(2, 2, 'en', 'FAQ', '<h1 style=\"text-align: center;\">Help &amp; FAQ</h1>\r\n<p>&nbsp;</p>\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<h4>What does LOREM mean?</h4>\r\n<p>&lsquo;Lorem ipsum dolor sit amet, consectetur adipisici elit&hellip;&rsquo; (complete text) is dummy text that is not meant to mean anything. It is used as a placeholder in magazine layouts, for example, in order to give an impression of the finished document. The text is intentionally unintelligible so that the viewer is not distracted by the content. The language is not real Latin and even the first word &lsquo;Lorem&rsquo; does not exist. It is said that the lorem ipsum text has been common among typesetters since the 16th century.</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<h4>Why do we use it?</h4>\r\n<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<h4>Where does it come from?</h4>\r\n<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source.</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<h4>Where can I get some?</h4>\r\n<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<h4>Why do we use Lorem Ipsum?</h4>\r\n<p>Many times, readers will get distracted by readable text when looking at the layout of a page. Instead of using filler text that says &ldquo;Insert content here,&rdquo; Lorem Ipsum uses a normal distribution of letters, making it resemble standard English. This makes it easier for designers to focus on visual elements, as opposed to what the text on a page actually says. Lorem Ipsum is absolutely necessary in most design cases, too. Web design projects like landing pages, website redesigns and so on only look as intended when they\'re fully-fleshed out with content.</p>'),
(3, 3, 'en', 'Return Policy', '<h1 style=\"text-align: center;\">Return Policy</h1>\r\n<p>&nbsp;</p>\r\n<p>Studio Lorem Ipsum will accept returns of UNWORN MERCHANDISE within 14 days of receipt of your order. If 14 days have gone by since receipt of your order, unfortunately we can&rsquo;t offer you a refund or exchange.</p>\r\n<p>&nbsp;</p>\r\n<p>To be eligible for a return, your item must be unused and in the same condition that you received it. It must also be in the original packaging.</p>\r\n<p>&nbsp;</p>\r\n<p>To complete your return, we require a receipt or proof of purchase.</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<h4>Refunds (if applicable)</h4>\r\n<p>Once your return is received and inspected, we will send you an email to notify you that we have received your returned item. We will also notify you of the approval or rejection of your refund.<br />If you are approved, then your refund will be processed, and a credit will automatically be applied to your credit card or original method of payment, within a certain amount of days.</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<h4>Late or missing refunds (if applicable)</h4>\r\n<ul>\r\n<li>If you haven&rsquo;t received a refund yet, first check your bank account again.</li>\r\n<li>Then contact your credit card company, it may take some time before your refund is officially posted.</li>\r\n<li>Next contact your bank. There is often some processing time before a refund is posted.</li>\r\n<li>If you&rsquo;ve done all of this and you still have not received your refund yet, please contact us.</li>\r\n</ul>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<h4>Gifts</h4>\r\n<p>If the item was marked as a gift when purchased and shipped directly to you, you&rsquo;ll receive a gift credit for the value of your return. Once the returned item is received, a gift certificate will be mailed to you.</p>\r\n<p>&nbsp;</p>\r\n<p>If the item wasn&rsquo;t marked as a gift when purchased, or the gift giver had the order shipped to themselves to give to you later, we will send a refund to the gift giver and he will find out about your return.</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<h4>Shipping</h4>\r\n<p>To return your product, you can request to return the product within 14 days of receipt of your order, and we will email you the return label which you can use to ship the product. Once your return is received and inspected, the refund will be processed to your original method of payment.</p>'),
(4, 4, 'en', 'Terms & Conditions', '<h1 style=\"text-align: center;\">Terms of Service</h1>\r\n<p>&nbsp;</p>\r\n<p>This website is operated by a.season. Throughout the site, the terms &ldquo;we&rdquo;, &ldquo;us&rdquo; and &ldquo;our&rdquo; refer to a.season. a.season offers this website, including all information, tools and services available from this site to you, the user, conditioned upon your acceptance of all terms, conditions, policies and notices stated here.</p>\r\n<p>&nbsp;</p>\r\n<p>By visiting our site and/ or purchasing something from us, you engage in our &ldquo;Service&rdquo; and agree to be bound by the following terms and conditions (&ldquo;Terms of Service&rdquo;, &ldquo;Terms&rdquo;), including those additional terms and conditions and policies referenced herein and/or available by hyperlink. These Terms of Service apply to all users of the site, including without limitation users who are browsers, vendors, customers, merchants, and/ or contributors of content.</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<h4>Online Store Terms</h4>\r\n<p>By agreeing to these Terms of Service, you represent that you are at least the age of majority in your state or province of residence, or that you are the age of majority in your state or province of residence and you have given us your consent to allow any of your minor dependents to use this site.</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<h4>General Conditions</h4>\r\n<p>We reserve the right to refuse service to anyone for any reason at any time.<br />You understand that your content (not including credit card information), may be transferred unencrypted and involve (a) transmissions over various networks; and (b) changes to conform and adapt to technical requirements of connecting networks or devices. Credit card information is always encrypted during transfer over networks.</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<h4>License</h4>\r\n<p>You must not:</p>\r\n<p>&nbsp;</p>\r\n<ul>\r\n<li>Republish material from&nbsp;<span class=\"highlight preview_website_name\">Website Name</span></li>\r\n<li>Sell, rent or sub-license material from&nbsp;<span class=\"highlight preview_website_name\">Website Name</span></li>\r\n<li>Reproduce, duplicate or copy material from&nbsp;<span class=\"highlight preview_website_name\">Website Name</span></li>\r\n<li>Redistribute content from&nbsp;<span class=\"highlight preview_website_name\">Website Name</span></li>\r\n</ul>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<h4>Disclaimer</h4>\r\n<p>To the maximum extent permitted by applicable law, we exclude all representations:</p>\r\n<p>&nbsp;</p>\r\n<ul>\r\n<li>limit or exclude our or your liability for death or personal injury;</li>\r\n<li>limit or exclude our or your liability for fraud or fraudulent misrepresentation;</li>\r\n<li>limit any of our or your liabilities in any way that is not permitted under applicable law; or</li>\r\n<li>exclude any of our or your liabilities that may not be excluded under applicable law.</li>\r\n</ul>\r\n<p>&nbsp;</p>\r\n<p>As long as the website and the information and services on the website are provided free of charge, we will not be liable for any loss or damage of any nature.</p>'),
(5, 5, 'en', 'Privacy & Policy', '<h1 style=\"text-align: center;\">Privacy Policy</h1>\r\n<p>&nbsp;</p>\r\n<p>Your privacy is as important to us as it is to you. We know you hate SPAM and so do we. That is why we will never sell or share your information with anyone without your express permission. We respect your rights and will do everything in our power to protect your personal information. In the interest of full disclosure, we provide this notice explaining our online information collection practices. This privacy notice discloses the privacy practices for <a href=\"https://envaysoft.com/\">EnvaySoft</a>&nbsp;(herein known as we, us and our company) and applies solely to information collected by this web site.</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<h4>Information Collection, Use, and Sharing</h4>\r\n<p>We are the sole owners of the information collected on this site. We only have access to information that you voluntarily give us via email or other direct contact from you. We will not sell or rent this information to anyone. We will use your information to respond to you, regarding the reason you contacted us. We will not share your information with any third party outside of our organization, other than as necessary to fulfill your request, e.g. to ship an order.</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<h4>Disclosure</h4>\r\n<p>This site uses Google web analytics service. Google may record mouse clicks, mouse movements, scrolling activity as well as text you type in this website. This site does not use Google to collect any personally identifiable information entered in this website. Google does track your browsing habits across web sites which do not use Google services.</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<h4>Security</h4>\r\n<p>We take precautions to protect your information. When you submit sensitive information via the website, your information is protected both online and offline.</p>\r\n<p>Wherever we collect sensitive information (such as credit card data), that information is encrypted and transmitted to us in a secure way. You can verify this by looking for a closed lock icon at the bottom of your web browser, or looking for &ldquo;https&rdquo; at the beginning of the address of the web page.</p>\r\n<p>While we use encryption to protect sensitive information transmitted online, we also protect your information offline. Only employees who need the information to perform a specific job (for example, billing or customer service) are granted access to personally identifiable information. The computers/servers in which we store personally identifiable information are kept in a secure environment.</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<h4>Email Policy</h4>\r\n<p>The following are situations in which you may provide Your Information to us:</p>\r\n<p>&nbsp;</p>\r\n<ul>\r\n<li>\r\n<p>When you fill out forms or fields through our Services.</p>\r\n</li>\r\n<li>\r\n<p>When you register for an account with our Service.</p>\r\n</li>\r\n<li>\r\n<p>When you create a subscription for our newsletter or Services.</p>\r\n</li>\r\n<li>\r\n<p>When you provide responses to a survey.</p>\r\n</li>\r\n<li>\r\n<p>When you answer questions on a quiz.</p>\r\n</li>\r\n<li>\r\n<p>When you join or enroll in an event through our Services.</p>\r\n</li>\r\n<li>\r\n<p>When you order services or products from, or through our Service.</p>\r\n</li>\r\n<li>\r\n<p>When you provide information to us through a third-party application, service or Website.</p>\r\n</li>\r\n</ul>');

-- --------------------------------------------------------

--
-- Table structure for table `persistences`
--

CREATE TABLE `persistences` (
  `id` int UNSIGNED NOT NULL,
  `user_id` int UNSIGNED NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `persistences`
--

INSERT INTO `persistences` (`id`, `user_id`, `code`, `created_at`, `updated_at`) VALUES
(2, 2, 'K7ZM5cbzz1JWSFuu1qHj4oU20R8kiyIL', '2025-06-29 07:23:09', '2025-06-29 07:23:09'),
(3, 2, 'JLXBRpRo1ROjDnxbllMDLVmp6hPgE5vy', '2025-06-30 15:20:13', '2025-06-30 15:20:13'),
(6, 2, 'ZSIF9V5E0VzfinAjO6g5hijNI5Knn9sm', '2025-07-11 00:50:56', '2025-07-11 00:50:56'),
(7, 2, '1B3HjchB2yCkP6M7JYcNReP1nb0jjiey', '2025-07-11 06:23:17', '2025-07-11 06:23:17');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int UNSIGNED NOT NULL,
  `brand_id` int UNSIGNED DEFAULT NULL,
  `tax_class_id` int UNSIGNED DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` decimal(18,4) DEFAULT NULL,
  `special_price` decimal(18,4) UNSIGNED DEFAULT NULL,
  `special_price_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `special_price_start` date DEFAULT NULL,
  `special_price_end` date DEFAULT NULL,
  `selling_price` decimal(18,4) UNSIGNED DEFAULT NULL,
  `sku` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `manage_stock` tinyint(1) NOT NULL DEFAULT '0',
  `qty` int DEFAULT NULL,
  `in_stock` tinyint(1) NOT NULL DEFAULT '1',
  `viewed` int UNSIGNED NOT NULL DEFAULT '0',
  `is_active` tinyint(1) NOT NULL,
  `new_from` datetime DEFAULT NULL,
  `new_to` datetime DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_virtual` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `brand_id`, `tax_class_id`, `slug`, `price`, `special_price`, `special_price_type`, `special_price_start`, `special_price_end`, `selling_price`, `sku`, `manage_stock`, `qty`, `in_stock`, `viewed`, `is_active`, `new_from`, `new_to`, `deleted_at`, `created_at`, `updated_at`, `is_virtual`) VALUES
(1, NULL, NULL, 'lg-oled65cxpua-alexa-built-in-cx-series-65-4k-ultra-hd-smart-oled-tv', 2700.0000, 26.0000, 'percent', '2020-05-13', '3000-05-20', 1998.0000, '6SJL492G', 1, 5, 1, 1, 0, '2020-04-30 18:30:00', '2020-05-31 18:30:00', NULL, '2025-06-29 07:29:23', '2025-06-29 10:13:54', 0),
(2, NULL, 1, 'apple-macbook-pro-m4-pro-14-inch-24gb512gb-12-core-cpu-16-core-gpu', 244500.0000, 2.6000, 'percent', '2020-05-31', '3000-06-30', 238143.0000, '8FJD627D', 1, 10, 1, 1, 0, '2020-05-31 18:30:00', '2020-06-30 18:30:00', NULL, '2025-06-29 07:29:23', '2025-06-29 10:13:21', 0),
(3, NULL, NULL, 'potato-hill-baby-potato-organic-vegetables-from-kodaikanal', NULL, NULL, 'fixed', NULL, NULL, NULL, NULL, 0, NULL, 1, 1, 1, NULL, NULL, NULL, '2025-06-29 09:01:28', '2025-06-29 09:06:37', 0),
(4, NULL, NULL, 'custard-apple-hill-sitha-fresh-organic-fruit-premium', NULL, NULL, 'fixed', NULL, NULL, NULL, NULL, 0, NULL, 1, 3, 1, NULL, NULL, NULL, '2025-06-29 09:11:11', '2025-06-29 09:23:03', 0),
(5, NULL, NULL, 'custard-apple-sitha-fresh-organic-fruit-from-western-ghats', NULL, NULL, 'fixed', NULL, NULL, NULL, NULL, 0, NULL, 1, 2, 1, NULL, NULL, NULL, '2025-06-29 09:32:04', '2025-06-29 09:33:25', 0),
(6, NULL, NULL, 'plums-fruit-natural-organic-fresh-fruits-from-western-ghats', NULL, NULL, 'fixed', NULL, NULL, NULL, NULL, 0, NULL, 1, 1, 1, NULL, NULL, NULL, '2025-06-29 09:38:17', '2025-06-29 09:38:17', 0),
(7, NULL, NULL, 'eucalyptus-oil-pure-premium', NULL, NULL, 'fixed', NULL, NULL, NULL, NULL, 0, NULL, 1, 2, 1, NULL, NULL, NULL, '2025-06-29 10:33:57', '2025-06-29 10:33:57', 0),
(8, NULL, NULL, 'the-eucalyptus-oil-natural-oil-from-the-kodaikanal-region', NULL, NULL, 'fixed', NULL, NULL, NULL, NULL, 0, NULL, 1, 2, 1, NULL, NULL, NULL, '2025-06-30 15:53:14', '2025-06-30 16:08:00', 0),
(9, NULL, NULL, 'bird-eye-chili-kanthaari-mulaku-thai-chili-premium-avakoin', NULL, NULL, 'fixed', NULL, NULL, NULL, NULL, 0, NULL, 1, 1, 1, NULL, NULL, NULL, '2025-06-30 16:07:34', '2025-07-09 16:16:15', 0),
(10, NULL, NULL, 'black-pepper-natural-organic-avakoin', NULL, NULL, 'fixed', NULL, NULL, NULL, NULL, 0, NULL, 1, 0, 1, NULL, NULL, NULL, '2025-06-30 16:15:10', '2025-06-30 16:16:09', 0),
(11, NULL, NULL, 'cardamom-premium-spices-organic', NULL, NULL, 'fixed', NULL, NULL, NULL, NULL, 0, NULL, 1, 2, 1, NULL, NULL, NULL, '2025-06-30 16:28:20', '2025-06-30 16:28:46', 0),
(12, NULL, NULL, 'cardamom-powder-elaichi-powder-organic', NULL, NULL, 'fixed', NULL, NULL, NULL, NULL, 0, NULL, 1, 2, 1, NULL, NULL, NULL, '2025-07-02 20:51:37', '2025-07-09 16:17:48', 0),
(13, NULL, NULL, 'cinnamon-pattai-avako', NULL, NULL, 'fixed', NULL, NULL, NULL, NULL, 0, NULL, 1, 1, 1, NULL, NULL, NULL, '2025-07-02 20:57:21', '2025-07-09 16:18:10', 0),
(14, NULL, NULL, 'cloves-kirambu-lavenham-hilly-cloves-with-oil-spices-avakoin', NULL, NULL, 'fixed', NULL, NULL, NULL, NULL, 0, NULL, 1, 1, 1, NULL, NULL, NULL, '2025-07-02 21:08:22', '2025-07-09 16:18:28', 0),
(15, NULL, NULL, 'hill-black-pepper-kali-mirch-organic-and-natural-pepper-premium', NULL, NULL, 'fixed', NULL, NULL, NULL, NULL, 0, NULL, 1, 3, 1, NULL, NULL, NULL, '2025-07-02 21:15:00', '2025-07-09 16:19:13', 0),
(16, NULL, NULL, 'hill-cardamom-elaichi-original-organic', NULL, NULL, 'fixed', NULL, NULL, NULL, NULL, 0, NULL, 1, 0, 1, '2025-07-01 01:00:00', '2025-08-30 01:00:00', NULL, '2025-07-02 21:27:50', '2025-07-09 16:19:32', 0),
(17, NULL, NULL, 'hill-garlic-kodaikanal-malai-poondu', NULL, NULL, 'fixed', NULL, NULL, NULL, NULL, 0, NULL, 1, 0, 1, NULL, NULL, NULL, '2025-07-02 21:36:00', '2025-07-09 15:31:01', 0),
(18, NULL, NULL, 'hill-garlic-original-premium-organic-kodaikanal-avakoin', NULL, NULL, 'fixed', NULL, NULL, NULL, NULL, 0, NULL, 1, 0, 1, NULL, NULL, NULL, '2025-07-02 21:42:14', '2025-07-09 15:31:42', 0),
(19, NULL, NULL, 'single-clove-hill-garlic-kodaikanal-premium-avakoin', NULL, NULL, 'fixed', NULL, NULL, NULL, NULL, 0, NULL, 1, 0, 1, NULL, NULL, NULL, '2025-07-02 21:45:48', '2025-07-09 15:37:36', 0),
(20, NULL, NULL, 'dhani-lanka-red-chili-thai-chili-pepper-original', NULL, NULL, 'fixed', NULL, NULL, NULL, NULL, 0, NULL, 1, 0, 1, '2025-07-01 01:00:00', '2025-08-30 01:00:00', NULL, '2025-07-02 22:02:59', '2025-07-09 16:18:52', 0),
(21, NULL, NULL, 'coffee-powder-black-coffee-powder-premium-arabica-original-100-natural-graded-coffee-powder-without-chicory', NULL, NULL, 'fixed', NULL, NULL, NULL, NULL, 0, NULL, 1, 0, 1, '2025-07-01 12:00:00', '2025-08-30 12:00:00', NULL, '2025-07-02 22:09:59', '2025-07-02 22:09:59', 0),
(22, NULL, NULL, 'filter-coffee-powder-traditional-south-indian-filter-coffee-powder-premium80-coffee-20-chicory-freshly-roasted-ground-coffee-avakoin', NULL, NULL, 'fixed', NULL, NULL, NULL, NULL, 0, NULL, 1, 0, 1, '2025-07-01 12:00:00', '2025-08-30 12:00:00', NULL, '2025-07-02 22:16:53', '2025-07-02 22:16:53', 0),
(23, NULL, NULL, 'herbal-filter-coffee-powder-herbal-black-coffee-sukku-malli-coffee', NULL, NULL, 'fixed', NULL, NULL, NULL, NULL, 0, NULL, 1, 0, 1, NULL, NULL, NULL, '2025-07-02 22:25:42', '2025-07-02 22:26:42', 0),
(24, NULL, NULL, 'karupatti-coffee-palm-jaggery-coffee-premium', NULL, NULL, 'fixed', NULL, NULL, NULL, NULL, 0, NULL, 1, 0, 1, NULL, NULL, NULL, '2025-07-03 14:44:07', '2025-07-03 14:44:07', 0),
(25, NULL, NULL, 'non-roasted-coffee-bean-avakoin', NULL, NULL, 'fixed', NULL, NULL, NULL, NULL, 0, NULL, 1, 0, 1, NULL, NULL, NULL, '2025-07-03 14:47:47', '2025-07-03 14:47:47', 0),
(26, NULL, NULL, 'roasted-coffee-bean-with-delicious-aroma', NULL, NULL, 'fixed', NULL, NULL, NULL, NULL, 0, NULL, 1, 0, 1, NULL, NULL, NULL, '2025-07-03 14:50:42', '2025-07-03 14:50:42', 0),
(27, NULL, NULL, 'broccoli-organic-natural-fresh-vegetables', NULL, NULL, 'fixed', NULL, NULL, NULL, NULL, 0, NULL, 1, 0, 1, NULL, NULL, NULL, '2025-07-03 14:55:26', '2025-07-03 14:55:26', 0),
(28, NULL, NULL, 'butter-beans-lima-healthy-vegetables-organic', NULL, NULL, 'fixed', NULL, NULL, NULL, NULL, 0, NULL, 1, 0, 1, NULL, NULL, NULL, '2025-07-03 14:57:50', '2025-07-03 14:58:11', 0),
(29, NULL, NULL, 'chow-chow-chayote-squash-vegetables-fully-organic', NULL, NULL, 'fixed', NULL, NULL, NULL, NULL, 0, NULL, 1, 0, 1, NULL, NULL, NULL, '2025-07-03 15:00:46', '2025-07-03 15:00:46', 0),
(30, NULL, NULL, 'kodaikanal-beet-root-organic-garden-abc-product', NULL, NULL, 'fixed', NULL, NULL, NULL, NULL, 0, NULL, 1, 0, 1, NULL, NULL, NULL, '2025-07-03 15:03:38', '2025-07-03 15:03:38', 0),
(31, NULL, NULL, 'kodaikanal-carrot-organic-fresh-garden', NULL, NULL, 'fixed', NULL, NULL, NULL, NULL, 0, NULL, 1, 1, 1, NULL, NULL, NULL, '2025-07-03 15:06:06', '2025-07-03 15:06:19', 0),
(32, NULL, NULL, 'murugai-beans-organic-vegetable-beans', NULL, NULL, 'fixed', NULL, NULL, NULL, NULL, 0, NULL, 1, 0, 1, NULL, NULL, NULL, '2025-07-03 15:09:42', '2025-07-03 15:09:42', 0),
(33, NULL, NULL, 'nookal-kohlrabi-organic-natural-vegetables-from-western-ghats', NULL, NULL, 'fixed', NULL, NULL, NULL, NULL, 0, NULL, 1, 0, 1, NULL, NULL, NULL, '2025-07-09 15:22:51', '2025-07-09 15:22:51', 0),
(34, NULL, NULL, 'radish-red-fresh-natural-vegetables-from-western-ghats', NULL, NULL, 'fixed', NULL, NULL, NULL, NULL, 0, NULL, 1, 0, 1, NULL, NULL, NULL, '2025-07-09 15:27:41', '2025-07-09 15:27:41', 0),
(35, NULL, NULL, 'hilly-forest-raw-honey-100-pure-honey-with-no-sugar-added-kombu-thean', NULL, NULL, 'fixed', NULL, NULL, NULL, NULL, 0, NULL, 1, 0, 1, NULL, NULL, NULL, '2025-07-09 15:43:25', '2025-07-09 15:43:25', 0),
(36, NULL, NULL, 'malai-thean-small-bees-honey-raw-and-unprocessed-honey-avakoin', NULL, NULL, 'fixed', NULL, NULL, NULL, NULL, 0, NULL, 1, 0, 1, NULL, NULL, NULL, '2025-07-09 15:54:30', '2025-07-09 15:54:30', 0),
(37, NULL, NULL, 'wild-forest-raw-honey-pure-honey-from-western-ghats-online-avakoin', NULL, NULL, 'fixed', NULL, NULL, NULL, NULL, 0, NULL, 1, 0, 1, NULL, NULL, NULL, '2025-07-09 16:00:42', '2025-07-09 16:00:42', 0),
(38, NULL, NULL, 'black-pepper-powder-pure-organic-100-natural-masala-ideal-for-seasoning-flavor-dishes-avakoin', NULL, NULL, 'fixed', NULL, NULL, NULL, NULL, 0, NULL, 1, 0, 1, NULL, NULL, NULL, '2025-07-09 16:13:19', '2025-07-09 16:17:11', 0),
(39, NULL, NULL, 'avocado-organic-butter-fruit-cultivated-naturally-in-west-ghats-hills-avakoin', NULL, NULL, 'fixed', NULL, NULL, NULL, NULL, 0, NULL, 1, 0, 1, '2025-07-01 12:00:00', '2025-08-28 12:00:00', NULL, '2025-07-10 14:17:19', '2025-07-10 14:17:19', 0),
(40, NULL, NULL, 'avocado-fruit-organic-healthy-premium', NULL, NULL, 'fixed', NULL, NULL, NULL, NULL, 0, NULL, 1, 0, 1, '2025-07-01 12:00:00', '2025-07-31 12:00:00', NULL, '2025-07-10 14:19:58', '2025-07-10 14:19:58', 0),
(41, NULL, NULL, 'hill-banana-fruit-organic-premium', NULL, NULL, 'fixed', NULL, NULL, NULL, NULL, 0, NULL, 1, 1, 1, NULL, NULL, NULL, '2025-07-10 14:24:05', '2025-07-10 14:29:37', 0),
(42, NULL, NULL, 'hill-banana-original-organic-banana-western-ghats-avakoin', NULL, NULL, 'fixed', NULL, NULL, NULL, NULL, 0, NULL, 1, 0, 1, NULL, NULL, NULL, '2025-07-10 14:28:19', '2025-07-10 14:28:19', 0),
(43, NULL, NULL, 'orange-fresh-natural-original-orange-from-western-ghats', NULL, NULL, 'fixed', NULL, NULL, NULL, NULL, 0, NULL, 1, 1, 1, NULL, NULL, NULL, '2025-07-10 14:32:50', '2025-07-10 14:32:50', 0),
(44, NULL, NULL, 'passion-fruit-organic-avako', NULL, NULL, 'fixed', NULL, NULL, NULL, NULL, 0, NULL, 1, 0, 1, NULL, NULL, NULL, '2025-07-10 14:36:17', '2025-07-10 14:36:17', 0),
(45, NULL, NULL, 'brown-almond-chocolate-premium-homemade-avakoin', NULL, NULL, 'fixed', NULL, NULL, NULL, NULL, 0, NULL, 1, 0, 1, NULL, NULL, NULL, '2025-07-10 14:41:28', '2025-07-10 14:41:28', 0),
(46, NULL, NULL, 'crispy-yummy-color-pebble-stone-chocolate-homemade-avakoin', NULL, NULL, 'fixed', NULL, NULL, NULL, NULL, 0, NULL, 1, 0, 1, NULL, NULL, NULL, '2025-07-10 14:45:26', '2025-07-10 14:45:26', 0),
(47, NULL, NULL, 'crunch-balls-chocolate-homemade-avakoin', NULL, NULL, 'fixed', NULL, NULL, NULL, NULL, 0, NULL, 1, 0, 1, NULL, NULL, NULL, '2025-07-10 14:48:52', '2025-07-10 14:48:52', 0),
(48, NULL, NULL, 'dark-white-melody-chocolate-with-yummy-jam-homemade', NULL, NULL, 'fixed', NULL, NULL, NULL, NULL, 0, NULL, 1, 0, 1, NULL, NULL, NULL, '2025-07-10 14:52:38', '2025-07-10 14:52:38', 0),
(49, NULL, NULL, 'dark-chocolate-with-splited-almond-nuts-homemade', NULL, NULL, 'fixed', NULL, NULL, NULL, NULL, 0, NULL, 1, 0, 1, NULL, NULL, NULL, '2025-07-10 14:55:08', '2025-07-10 14:55:08', 0),
(50, NULL, NULL, 'dark-plain-bar-chocolate-homemade-dark-chocolate-avakoin', NULL, NULL, 'fixed', NULL, NULL, NULL, NULL, 0, NULL, 1, 0, 1, NULL, NULL, NULL, '2025-07-10 14:57:49', '2025-07-10 14:57:49', 0),
(51, NULL, NULL, 'filling-dairy-chocolate-with-rapper-homemade-avakoin', NULL, NULL, 'fixed', NULL, NULL, NULL, NULL, 0, NULL, 1, 0, 1, NULL, NULL, NULL, '2025-07-10 15:00:22', '2025-07-10 15:00:22', 0),
(52, NULL, NULL, 'gems-colorful-chocolate-homemade-candy-avakoin', NULL, NULL, 'fixed', NULL, NULL, NULL, NULL, 0, NULL, 1, 0, 1, NULL, NULL, NULL, '2025-07-10 15:03:13', '2025-07-10 15:03:13', 0);

-- --------------------------------------------------------

--
-- Table structure for table `product_attributes`
--

CREATE TABLE `product_attributes` (
  `id` int UNSIGNED NOT NULL,
  `product_id` int UNSIGNED NOT NULL,
  `attribute_id` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_attribute_values`
--

CREATE TABLE `product_attribute_values` (
  `product_attribute_id` int UNSIGNED NOT NULL,
  `attribute_value_id` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_categories`
--

CREATE TABLE `product_categories` (
  `product_id` int UNSIGNED NOT NULL,
  `category_id` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_categories`
--

INSERT INTO `product_categories` (`product_id`, `category_id`) VALUES
(1, 4),
(2, 7),
(9, 8),
(20, 8),
(9, 9),
(10, 9),
(11, 9),
(12, 9),
(13, 9),
(14, 9),
(15, 9),
(16, 9),
(17, 9),
(18, 9),
(19, 9),
(21, 10),
(22, 10),
(23, 10),
(24, 10),
(25, 10),
(26, 10),
(7, 11),
(8, 11),
(3, 12),
(27, 12),
(28, 12),
(29, 12),
(30, 12),
(31, 12),
(32, 12),
(33, 12),
(34, 12),
(17, 13),
(18, 13),
(19, 13),
(35, 14),
(36, 14),
(37, 14),
(4, 15),
(5, 15),
(6, 15),
(39, 15),
(40, 15),
(41, 15),
(42, 15),
(43, 15),
(44, 15),
(10, 16),
(15, 16),
(38, 16),
(9, 17),
(10, 17),
(11, 17),
(12, 17),
(13, 17),
(14, 17),
(15, 17),
(16, 17),
(20, 17),
(38, 17),
(45, 18),
(46, 18),
(47, 18),
(48, 18),
(49, 18),
(50, 18),
(51, 18),
(52, 18);

-- --------------------------------------------------------

--
-- Table structure for table `product_options`
--

CREATE TABLE `product_options` (
  `product_id` int UNSIGNED NOT NULL,
  `option_id` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_options`
--

INSERT INTO `product_options` (`product_id`, `option_id`) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(2, 5),
(2, 6),
(2, 7),
(2, 8),
(2, 9),
(2, 10),
(2, 11),
(2, 12),
(2, 13),
(2, 14),
(2, 15),
(2, 16),
(1, 17),
(1, 18),
(1, 19),
(1, 20),
(1, 21),
(1, 22),
(1, 23),
(1, 24);

-- --------------------------------------------------------

--
-- Table structure for table `product_tags`
--

CREATE TABLE `product_tags` (
  `product_id` int UNSIGNED NOT NULL,
  `tag_id` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_tags`
--

INSERT INTO `product_tags` (`product_id`, `tag_id`) VALUES
(1, 1),
(12, 1),
(13, 1),
(14, 1),
(20, 1),
(1, 2),
(12, 2),
(13, 2),
(20, 2),
(1, 3),
(12, 3),
(16, 3),
(17, 3),
(20, 3),
(1, 4),
(12, 4),
(14, 4),
(20, 4),
(1, 5),
(17, 5),
(20, 5),
(2, 6),
(12, 6),
(13, 6),
(14, 6),
(16, 6),
(17, 6),
(18, 6),
(2, 7),
(12, 7),
(13, 7),
(14, 7),
(16, 7),
(17, 7),
(12, 8),
(13, 8),
(16, 8),
(12, 9),
(13, 9),
(16, 9),
(12, 10),
(13, 10),
(16, 10),
(22, 10),
(21, 11),
(22, 11),
(23, 11),
(24, 11),
(25, 11),
(26, 11),
(21, 12),
(22, 12),
(23, 12),
(24, 12),
(25, 12),
(26, 12),
(27, 15),
(28, 15),
(29, 15),
(30, 15),
(31, 15),
(32, 15),
(33, 15),
(34, 15),
(27, 16),
(28, 16),
(17, 17),
(28, 17),
(29, 17),
(30, 17),
(31, 17),
(32, 17),
(34, 17),
(17, 18),
(18, 18),
(19, 18),
(17, 19),
(18, 19),
(19, 19),
(19, 20),
(35, 21),
(36, 21),
(37, 21),
(35, 22),
(37, 22),
(35, 23),
(36, 23),
(37, 23),
(39, 24),
(40, 24),
(41, 24),
(42, 24),
(43, 24),
(44, 24),
(39, 25),
(40, 25),
(41, 25),
(42, 25),
(43, 25),
(44, 25),
(39, 26),
(40, 26),
(41, 26),
(42, 26),
(43, 26),
(44, 26),
(38, 27),
(38, 28),
(45, 32),
(46, 32),
(47, 32),
(48, 32),
(49, 32),
(51, 32),
(52, 32),
(45, 33),
(46, 33),
(47, 33),
(48, 33),
(49, 33),
(50, 33),
(51, 33),
(52, 33),
(45, 35),
(46, 35),
(47, 35),
(48, 35),
(49, 35),
(50, 35),
(51, 35),
(52, 35);

-- --------------------------------------------------------

--
-- Table structure for table `product_translations`
--

CREATE TABLE `product_translations` (
  `id` int UNSIGNED NOT NULL,
  `product_id` int UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_description` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_translations`
--

INSERT INTO `product_translations` (`id`, `product_id`, `locale`, `name`, `description`, `short_description`) VALUES
(1, 1, 'en', 'LG OLED65CXPUA Alexa Built-in CX Series 65\" 4K Ultra HD Smart OLED TV', 'LG Alexa Built-in 65\" 4K Ultra HD Smart OLED TV', 'See More of Your Content in 4K'),
(2, 2, 'en', 'Apple MacBook Pro M4 Pro 14-Inch 24GB/512GB 12 Core CPU 16 Core GPU', 'The MacBook Pro M4 Pro 14-Inch delivers exceptional performance with Apple�s latest 12-core CPU and 16-core GPU, making it perfect for demanding workflows like video editing, coding, and 3D rendering. With 24GB of unified memory and a fast 512GB SSD, it ensures smooth multitasking and lightning-fast file access. A stunning Liquid Retina XDR display, long battery life, and robust macOS ecosystem make it an ideal choice for professionals who need power and portability.', 'MacBook Pro M4 Pro 14\" with 12-core CPU, 16-core GPU, 24GB RAM, and 512GB SSD�built for power users and creative pros.'),
(3, 3, 'en', 'Potato | Hill Baby Potato | Organic Vegetables From Kodaikanal', '<p><span style=\"color: #339966;\">Potato | Hill Baby Potato | Organic Vegetables From Kodaikanal</span></p>\n<p><span style=\"color: #339966;\">Avako.in Vegetables are fully Cultivated and Harvested Naturally without using Fertilizers</span></p>\n<p><span style=\"color: #339966;\">Baby potatoes are small in size and excellent in taste</span></p>\n<p><span style=\"color: #339966;\">Especially Kodaikanal potato has a unique taste</span></p>\n<p><span style=\"color: #339966;\">For More Vegetables click&nbsp; &nbsp; &nbsp; &nbsp;<a href=\"https://www.avako.in/product-category/hill-vegetable/\">https://www.avako.in/product-category/hill-vegetable/</a></span></p>\n<p>&nbsp;</p>', 'Nutrients: Baby potatoes are rich in nutrients like vitamin C, vitamin B6, and potassium\n\nVitamin C: An antioxidant that helps fight infections, stress, allergies, and asthma\n\nVitamin B6: Helps with the nervous system, red blood cells, and immune system\n\nPotassium: Helps regulate blood pressure and supports heart health\n\nFiber: Helps with digestion and may reduce the risk of colon cancer\n\nAntioxidants: Help protect against inflammation and cell damage\n\nComplex carbohydrates: Provide steady energy for weight management\n\nResistant starch: May improve digestive health by feeding beneficial gut bacteria'),
(4, 4, 'en', 'Custard Apple Hill |Sitha | Fresh Organic Fruit | Premium', '<p><span style=\"color: green;\">Custard Apple |Sitha | Fresh Organic Fruit From Western Ghats </span></p>\n<p><span style=\"color: green;\">Custard apples are a fruit with a creamy, white flesh and a slightly acidic taste</span></p>\n<p><span style=\"color: green;\">Avako.in Fruits are fully Cultivated and Harvested Naturally without using Fertilizers</span></p>\n<p><span style=\"color: green;\">Avako.in Custard Apple Beneficial nutrients that may support your mood, immunity, and digestion.</span></p>\n<p><span style=\"color: green;\">For More Fruits Visit&nbsp; &nbsp;</span><a href=\"https://www.avako.in/product-category/hill-fruits-fruits/\">https://www.avako.in/product-category/hill-fruits-fruits/</a></p>', 'Benefits Of Custard Apple (Sita)\n\nLoaded with Energy. Custard apple is an excellent source of energy, thanks to its high carbohydrate content. \n\nControls Diabetes. \n\nTreats Skin Infections.\n\nImproves Heart Function. \n\nReduces Risk of Cancer. \n\nGood For Eye Health. \n\nEnhances Brain Activity and Function. \n\nPromotes Good Digestion.\n\nBenefits Of Custard Apple (Sita)\n\nLoaded with Energy. Custard apple is an excellent source of energy, thanks to its high carbohydrate content. \n\nControls Diabetes. \n\nTreats Skin Infections.\n\nImproves Heart Function. \n\nReduces Risk of Cancer. \n\nGood For Eye Health. \n\nEnhances Brain Activity and Function. \n\nPromotes Good Digestion.'),
(5, 5, 'en', 'Custard Apple |Sitha | Fresh Organic Fruit From Western Ghats', '<p>Benefits Of Custard Apple (Sita)</p>\n<p>Loaded with Energy. Custard apple is an excellent source of energy, thanks to its high carbohydrate content.&nbsp;</p>\n<p>Controls Diabetes.&nbsp;</p>\n<p>Treats Skin Infections.</p>\n<p>Improves Heart Function.&nbsp;</p>\n<p>Reduces Risk of Cancer.&nbsp;</p>\n<p>Good For Eye Health.&nbsp;</p>\n<p>Enhances Brain Activity and Function.&nbsp;</p>\n<p>Promotes Good Digestion.</p>', 'Custard Apple |Sitha | Fresh Organic Fruit From Western Ghats\n\nCustard apples are a fruit with a creamy, white flesh and a slightly acidic taste\n\nAvako.in Fruits are fully Cultivated and Harvested Naturally without using Fertilizers\n\nAvako.in Custard Apple Beneficial nutrients that may support your mood, immunity, and digestion.\n\nFor More Fruits Visit   https://www.avako.in/product-category/hill-fruits-fruits/'),
(6, 6, 'en', 'Plums Fruit | Natural | Organic | Fresh Fruits From Western Ghats', '<h1><span style=\"color: #339966;\">Plum Benefits</span></h1>\n<p><span style=\"color: #339966;\">The vitamin C in plums helps your body heal, build muscle, and form blood vessels. It\'s great for your&nbsp;<a style=\"color: #339966;\" href=\"https://www.webmd.com/eye-health/picture-of-the-eyes\">eyes</a>, too.</span></p>\n<p><span style=\"color: #339966;\">Here are other ways that plums are good for your health:</span></p>\n<p><span style=\"color: #339966;\">&nbsp; &nbsp; &nbsp; &nbsp;Heart disease. Phytochemicals and nutrients in plums lower the inflammation that triggers heart disease.</span></p>\n<p><span style=\"color: #339966;\">&nbsp; &nbsp; &nbsp; &nbsp;Anxiety.&nbsp;A plum a day may keep anxiety away. When your antioxidants are low, anxiety can be high.</span></p>\n<p><span style=\"color: #339966;\">&nbsp; &nbsp; &nbsp; &nbsp; Constipation.&nbsp;Plums, like prunes, can also help keep things moving through your system. They have a lot of sorbitol, a sugar alcohol that acts as a natural laxative.</span></p>\n<p><span style=\"color: #339966;\">&nbsp; &nbsp; &nbsp; &nbsp;High blood pressure and stroke.&nbsp;The potassium in plums is good for blood pressure control in two ways. It helps your body get rid of sodium when you pee, and it lessens tension in the walls of your blood vessels. When your blood pressure is low, your odds of getting a stroke go down.</span></p>\n<p><span style=\"color: #339966;\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Antioxidants. These substances protect the body against the cell and tissue damage that can lead to diabetes, Alzheimer\'s disease, Parkinson\'s disease, and cancer.</span></p>\n<p><span style=\"color: #339966;\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Blood sugar. Plums are chock full of fiber, which helps slow down a blood sugar spike after you eat carbs. They can also boost your body\'s production of adiponectin, a hormone that helps regulate your&nbsp;blood sugar&nbsp;levels.</span></p>\n<p><span style=\"color: #339966;\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Bone health. Some studies show that prunes (dried plums) may help reduce bone loss and may even preserve it.</span></p>\n<p>&nbsp;</p>\n<p>&nbsp;</p>', 'Plums Fruit | Natural | Organic | Fresh Fruits From Western Ghats\n\nAvako.in Fruits are fully Cultivated and Harvested Naturally without using Fertilizers\n\nPlums are a sweet, juicy fruit with a smooth skin and a hard pit in the middle\n\nPlums can be round to oblong, and range in size from small to large. They can be red, purple, yellow, green, or orange in color, and have pink, yellow, or orange flesh. \n\nPlums can taste sweet, tart, honeyed, floral, or melon. The skin can be especially tart.\n\nFor More Fruits Visit    https://www.avako.in/product-category/hill-fruits-fruits/'),
(7, 7, 'en', 'Eucalyptus Oil Pure & Premium | யூக்கலிப்ட்டஸ் தைலம்', '<ul data-sourcepos=\"5:1-9:0\">\n<li>Silence a cough.</li>\n<li>Clear your chest.</li>\n<li>Keep the bugs away.</li>\n<li>Disinfect wounds.</li>\n<li>Breathe easy.</li>\n<li>Soothe cold sores.</li>\n<li>Freshen breath.</li>\n<li>Ease joint and leg pain relief.</li>\n<li>Eucalyptus oil for colds and coughs.</li>\n</ul>', 'Avako Hilly Eucalyptus Oil essential oil is extracted from the leaves of the Kodaikanal Hills Eucalyptus tree (Eucalyptus globules) using steam distillation. The essential oil has a  refreshing, minty, soothing, and vibrant aroma.\n\nAvako Hilly Eucalyptus Oil essential oil has multi-faceted medicinal properties. In India, it is commonly referred to as Kodaikanal oil or Kodaikanal Thailam. This is one of the go-to essential oils if you are having a cold or congestion.\n\nThe anti-viral healing property of this oil is known to help decongest and loosen phlegm. The anti-inflammatory properties will help reduce coughing.\n\nBenefits of Eucalyptus Oil:\n\nSilence a cough.\nClear your chest.\nKeep the bugs away.\nDisinfect wounds.\nBreathe easy.\nSoothe cold sores.\nFreshen breath.\nEase joint and leg pain relief.\nEucalyptus oil for colds and coughs.\n\nUsage of Eucalyptus Essential Oil\n\nNatural Decongestant: Add a few drops of eucalyptus oil to a steam bath, place a towel over your head, and inhale to relieve the congestion.\nNatural Deodorizer:  A few drops of eucalyptus oil in mop water, toilet cleaner, or even laundry detergent will do away with microbes.\nNatural Air Refresher:  Add a few drops of this oil to a spray bottle containing water and spray. It cleanses the air.\nNatural Pain Reliever:  Not only does eucalyptus oil relieve the sting of the bees and bug bits, but it also prevents infection while hastening the healing of the wounds, sores, burns, and abrasions.'),
(8, 8, 'en', 'THE EUCALYPTUS OIL | Natural Oil (யூக்கலிப்ட்டஸ் தைலம்) from the Kodaikanal Region', '<ul>\n<li>Silence a cough.</li>\n<li>Clear your chest.</li>\n<li>Keep the bugs away.</li>\n<li>Disinfect wounds.</li>\n<li>Breathe easy.</li>\n<li>Soothe cold sores.</li>\n<li>Freshen breath.</li>\n<li>Ease joint and leg pain relief.</li>\n<li>Eucalyptus oil for colds and coughs.</li>\n</ul>', 'Avako Hilly Eucalyptus Oil essential oil is extracted from the leaves of the Kodaikanal Hills Eucalyptus tree (Eucalyptus globules) using steam distillation. The essential oil has a  refreshing, minty, soothing, and vibrant aroma.\n\nAvako Hilly Eucalyptus Oil essential oil has multi-faceted medicinal properties. In India, it is commonly referred to as Kodaikanal oil or Kodaikanal Thailam. This is one of the go-to essential oils if you are having a cold or congestion.\n\nThe anti-viral healing property of this oil is known to help decongest and loosen phlegm. The anti-inflammatory properties will help reduce coughing.\n\nBenefits of Eucalyptus Oil:\n\nSilence a cough.\nClear your chest.\nKeep the bugs away.\nDisinfect wounds.\nBreathe easy.\nSoothe cold sores.\nFreshen breath.\nEase joint and leg pain relief.\nEucalyptus oil for colds and coughs.\n\nUsage of Eucalyptus Essential Oil\n\nNatural Decongestant: Add a few drops of eucalyptus oil to a steam bath, place a towel over your head, and inhale to relieve the congestion.\nNatural Deodorizer:  A few drops of eucalyptus oil in mop water, toilet cleaner, or even laundry detergent will do away with microbes.\nNatural Air Refresher:  Add a few drops of this oil to a spray bottle containing water and spray. It cleanses the air.\nNatural Pain Reliever:  Not only does eucalyptus oil relieve the sting of the bees and bug bits, but it also prevents infection while hastening the healing of the wounds, sores, burns, and abrasions.'),
(9, 9, 'en', 'Bird Eye Chili | Kanthaari Mulaku |காந்தாரி மிளகாய் | Thai Chili – Premium – Avako.in', '<ul>\n<li>Avako Bird\'s Eye Chili contains up to seven times the vitamin C level of an orange and has a range of health benefits, including fighting sinus congestion, aiding digestion and helping to relieve migraines and muscle, joint and nerve pain.</li>\n<li>It&rsquo;s also a good source of vitamins A and E, beta-carotene, folic acid and potassium.</li>\n<li>Chili has long been used to reduce food micro-contamination and is also considered a potential metabolism booster for weight loss.</li>\n<li>Several studies have found it may also play a role in treating lung and prostate cancer and leukemia.</li>\n<li>With the help of Avako Bird\'s Eye Chili, diet goers can supplement their program by consuming it, but at modest levels. Asides from helping digestion, Avako Dhani Lanka Red Chili Original &rsquo;s eye chili also works for diet programs by burning excessive fat cells.</li>\n<li>High blood pressure may lead to heart attacks, which can also be stabilized by taking Avako Bird\'s Eye Chili.</li>\n<li>Avako Bird\'s Eye Chili The heart&rsquo;s health will be assured in the long run, negative cholesterol as well as triglyceride will be gotten rid of from the body system. It also avoids the risk of cardiac arrests by opening and widening the arteries that lead into the heart.</li>\n</ul>', 'Avako.in Bird\'s Eye Chili are small, intensely hot and blood red in colour. The Pungency level in Dhani Lanka Red (Bird Eye ) Chili is very High.\nAvako.in Bird\'s Eye Chili, or chilies in general are classified as vegetables. They are widely used in cooking to spice up food, which gives a hot and spicy flavor.\nAvako.in Bird\'s Eye Chili or காந்தாரி மிளகாய் or Kanthaari Mulaku or Thai Chili can also be found in India, particularly in Western Ghats (Kodaikanal)\n\nIt is used in traditional dishes Health Benefits\n\nAvako.in Bird\'s Eye Chili contains up to seven times the vitamin C level of an orange and has a range of health benefits, including fighting sinus congestion, aiding digestion and helping to relieve migraines and muscle, joint and nerve pain.\nIt’s also a good source of vitamins A and E, beta-carotene, folic acid and potassium.\nChili has long been used to reduce food micro-contamination and is also considered a potential metabolism booster for weight loss.\nSeveral studies have found it may also play a role in treating lung and prostate cancer and leukemia.\nWith the help of Avako.in Bird\'s Eye Chili, diet goers can supplement their program by consuming it, but at modest levels. Asides from helping digestion, Avako.in Dhani Lanka Red Chili Original ’s eye chili also works for diet programs by burning excessive fat cells.\nHigh blood pressure may lead to heart attacks, which can also be stabilized by taking Avako.in Bird\'s Eye Chili.\nAvako.in Bird\'s Eye Chili The heart’s health will be assured in the long run, negative cholesterol as well as triglyceride will be gotten rid of from the body system. It also avoids the risk of cardiac arrests by opening and widening the arteries that lead into the heart.\n\nPackage Type : Standing pouch\nWeight : 100 gms , 200gms\nCategory : Veg'),
(10, 10, 'en', 'Black Pepper Natural & Organic | மலை மிளகு – Avako.in', '<p>&nbsp;</p>\n<p><span style=\"color: #993366;\"><strong>HEALTH BENEFITS OF BLACK PEPPER :</strong></span></p>\n<ul>\n<li><span style=\"color: #339966;\">Prevent Any Sort of Cancer</span></li>\n<li><span style=\"color: #339966;\">Good for Digestion</span></li>\n<li><span style=\"color: #339966;\">Prevent Constipation</span></li>\n<li><span style=\"color: #339966;\">Treat Skin Problems</span></li>\n<li><span style=\"color: #339966;\">Good for Your Hair</span></li>\n<li><span style=\"color: #339966;\">Helps in Treating Respiratory Diseases</span></li>\n</ul>\n<p>&nbsp;</p>\n<table>\n<tbody>\n<tr>\n<td width=\"157\"><span style=\"color: #339966;\"><strong>BRAND</strong></span></td>\n<td width=\"246\"><span style=\"color: #339966;\">AVAKO.IN</span></td>\n</tr>\n<tr>\n<td width=\"157\"><span style=\"color: #339966;\"><strong>VARIETY</strong></span></td>\n<td width=\"246\"><span style=\"color: #339966;\">NATURAL BLACK PEPPER</span></td>\n</tr>\n<tr>\n<td width=\"157\"><span style=\"color: #339966;\"><strong>ITEM FORM</strong></span></td>\n<td width=\"246\"><span style=\"color: #339966;\">SEED</span></td>\n</tr>\n<tr>\n<td width=\"157\"><span style=\"color: #339966;\"><strong>COUNTRY OF ORIGIN</strong></span></td>\n<td width=\"246\"><span style=\"color: #339966;\">INDIA</span></td>\n</tr>\n<tr>\n<td width=\"157\"><span style=\"color: #339966;\"><strong>DIET TYPE</strong></span></td>\n<td width=\"246\"><span style=\"color: #339966;\">VEGETARIAN</span></td>\n</tr>\n<tr>\n<td width=\"157\"><span style=\"color: #339966;\"><strong>ITEM WEIGHT</strong></span></td>\n<td width=\"246\"><span style=\"color: #339966;\">150g, 200g,300g,500gm</span></td>\n</tr>\n<tr>\n<td width=\"157\"><span style=\"color: #339966;\"><strong>SPECIALITY</strong></span></td>\n<td width=\"246\"><span style=\"color: #339966;\">ORGANIC</span></td>\n</tr>\n</tbody>\n</table>', 'Black Pepper Natural மலை மிளகு is Organically produced from the pepper Plant which cultivated in the mountainous region of the western Ghats especially in Kodaikanal Hills\n\nOur avako.in hilly pepper are selectively handpicked by our farmers\nWe are preparing our avako.in hilly pepper by farmers old traditional method as follows\n\nNO ARTIFICIAL COLOURS AND PRESERVATIVES : \n\nWe are using Preservative free Products those that do not contain any kind of artificial ingredients\nThey reduce the risks or exposure to side effects mentioned above and usually have a fresher compared to those containing chemical preservative\nBlack pepper is packed full of healthy nutrients for the body. The regular consumption of this spice will help achieve a glowing complexion and happy skin. It can also be used as an exfoliator added to honey or yogurt; Black pepper acts as an anti-inflammatory which helps to reduce arthritis, improve digestion\nBlack pepper is a rich source of minerals like manganese, copper, magnesium, calcium, phosphorus, iron, potassium, and vitamin c, vitamin k and vitamin B6.\nBlack pepper has a high content of dietary fiber and has a moderate amount of protein and carbohydrates too.\nBlack Pepper Powder மிளகு தூள் : https://www.avako.in/product/avako-hilly-original-organic-pepper-powder-50gms/'),
(11, 11, 'en', 'Cardamom | ஏலக்காய் | Premium| Spices | Organic', '<ul>\n<li><strong>HEALTH BENEFITS OF CARDAMOM</strong>\n<ul>\n<li>Antioxidant and Diuretic Properties May Lower Blood Pressure</li>\n<li>May Contain Cancer Fighting Compounds</li>\n<li>May Protect from Chronic Diseases</li>\n<li>May Help with Digestive Problems ,Including Ulcer</li>\n<li>May Treat Bad Breath and Prevent Cavities</li>\n</ul>\n<table>\n<tbody>\n<tr>\n<td width=\"157\"><strong>BRAND</strong></td>\n<td width=\"246\">AVAKO.IN</td>\n</tr>\n<tr>\n<td width=\"157\"><strong>VARIETY</strong></td>\n<td width=\"246\">CARDAMOM</td>\n</tr>\n<tr>\n<td width=\"157\"><strong>ITEM FORM</strong></td>\n<td width=\"246\">SEED</td>\n</tr>\n<tr>\n<td width=\"157\"><strong>COUNTRY OF ORIGIN</strong></td>\n<td width=\"246\">INDIA</td>\n</tr>\n<tr>\n<td width=\"157\"><strong>DIET TYPE</strong></td>\n<td width=\"246\">VEGETARIAN</td>\n</tr>\n<tr>\n<td width=\"157\"><strong>ITEM WEIGHT</strong></td>\n<td width=\"246\">100g, 150g, 200g ,300g</td>\n</tr>\n<tr>\n<td width=\"157\"><strong>SPECIALITRY&nbsp;</strong></td>\n<td width=\"246\">ORGANIC</td>\n</tr>\n</tbody>\n</table>\n</li>\n</ul>', 'Avako.in hilly green Cardamom / elaichi is Organically produced from the cardamom Plant which cultivated in the mountainous region of the western Ghats especially in Kodaikanal Hills. Our avako.in hilly cardamom are selectively hand picked by our farmers , We are preparing our avako.in hilly cardamom by farmers old traditional method ,In our cardamom we didn\'t done any type of grading so all sizes are mixed and only we done only cleaning and Processing so Direct Garden to Your House , Avako.in Cardamom Has a Highly Aromatic.\nCardamom or elachi is an aromatic seed pod used in Indian Traditional cuisine. It has sweet flavor and unique aroma which enhances the flavor of the dish Cardamom has several health benefits and healing properties such as , rich in antioxidants , boost immunity. It may helps curing cough , cold and respiratory problems. It can help enhancing digestion. Cardamom has long history in ayurvedic medicines, often used to enhance stamina and immunity. Cardamom is used in kheer, biriyani, curries, tea and also as mouth freshener. The easiest way to include cardamom in diet is to separate seeds from pod and crush it, then it can be added to your tea, coffee, milk or warm with honey. NO ARTIFICIAL COLOURS AND PRESERVATIVES\nWe are using Preservative free Products those that do not contain any kind of artificial ingredients\nTwo Type Of Quality Available : Premium and Non Premium https://www.avako.in/product/avako-true-cardamom-elaichi-premium/'),
(12, 12, 'en', 'Cardamom Powder | Elaichi Powder |Organic | ஏலக்காய் தூள்', '<pre><strong>HEALTH BENEFITS OF CARDAMOM :</strong></pre>\n<ul>\n<li>Antioxidant and Diuretic&nbsp;&nbsp; Properties May&nbsp;&nbsp; Lower Blood Pressure</li>\n<li>May Contain Cancer Fighting Compounds</li>\n<li>May Protect from Chronic&nbsp;&nbsp; Diseases</li>\n<li>May Help with Digestive Problems ,Including Ulcer</li>\n<li>May Treat Bad Breath and Prevent Cavities</li>\n</ul>\n<table>\n<tbody>\n<tr>\n<td style=\"text-align: left;\" width=\"157\"><strong>BRAND</strong></td>\n<td style=\"text-align: left;\" width=\"246\">AVAKO.IN</td>\n</tr>\n<tr>\n<td style=\"text-align: left;\" width=\"157\"><strong>VARIETY</strong></td>\n<td style=\"text-align: left;\" width=\"246\">CARDAMOM</td>\n</tr>\n<tr>\n<td style=\"text-align: left;\" width=\"157\"><strong>ITEM FORM</strong></td>\n<td style=\"text-align: left;\" width=\"246\">POWDER</td>\n</tr>\n<tr>\n<td style=\"text-align: left;\" width=\"157\"><strong>COUNTRY OF ORIGIN</strong></td>\n<td style=\"text-align: left;\" width=\"246\">INDIA</td>\n</tr>\n<tr>\n<td style=\"text-align: left;\" width=\"157\"><strong>DIET TYPE</strong></td>\n<td style=\"text-align: left;\" width=\"246\">VEGETARIAN</td>\n</tr>\n<tr>\n<td style=\"text-align: left;\" width=\"157\"><strong>ITEM WEIGHT</strong></td>\n<td style=\"text-align: left;\" width=\"246\">&nbsp;60gms ,120gms ,200gms</td>\n</tr>\n<tr>\n<td style=\"text-align: left;\" width=\"157\"><strong>SPECIALITRY&nbsp;</strong></td>\n<td style=\"text-align: left;\" width=\"246\">ORGANIC</td>\n</tr>\n</tbody>\n</table>', 'Avako.in hill green cardamom Powder or elaichi powder  is Organically produced from the pure cardamom  which cultivated in the mountainous region of the western Ghats especially in  Kodaikanal  Hills\n\nOur avako.in hilly cardamom are selectively hand picked by our farmers\nWe are preparing our avako.in hilly cardamom Powder by farmers old traditional method.\nAvako.in Have pure Cardamom https://www.avako.in/product/avako-true-cardamom-elaichi-premium/\nNO ARTIFICIAL COLOURS AND PRESERVATIVES & Usage :\nWe are not using any  Preservative Products those that do not contain any kind of artificial ingredients\nUsage :Cardamom has several health benefits and healing properties such as , rich in antioxidants , boost immunity. It may  helps curing cough , cold and respiratory problems. It can help enhancing digestion.\nCardamom has long history in ayurvedic medicines, often used to enhance stamina and immunity.\nCardamom is used in kheer, Biriyani, curries, tea and also as mouth freshener. The easiest way to include cardamom in diet is to separate seeds from pod and crush it, then it can be added to your tea, coffee, milk or warm with honey'),
(13, 13, 'en', 'Cinnamon – Pattai – Avako இலவங்கப் பட்டை', '<p><strong>Avako Cinnamon Is not only organic but also a natural Product</strong></p>\n<p><strong>&nbsp;It is popular in cooking gravies and baking. Due to its antimicrobial and antifungal properties, it is favored in topical beauty treatments. Combined with honey and warm water, it makes for a soothing cleanse.</strong></p>', 'Cinnamon is a refreshing culinary spice with a warm aromatic flavor. Avako Cinnamon Is Cultivated And Collected From the Western Ghats of Kodaikanal .\n\nAvako Cinnamon Is not only organic but also a natural Product\n\n It is popular in cooking gravies and baking. Due to its antimicrobial and antifungal properties, it is favored in topical beauty treatments. Combined with honey and warm water, it makes for a soothing cleanse.\n\n Pure & Unadulterated\n Strong & Flavorful\n Iron-pounded\nContains anti-inflammatory and anti-microbial properties and is abundant in antioxidants\nHelps in regulating blood sugar levels and lowering cholesterol\nHelps in maintaining gut health\nCan be used for blood sugar regulation\n \nUses :\nUsed as a delicious aromatic seasoning in both Indian and Western cuisines.\nWhile baking, it is added to enhance the taste and sprinkled on top of breads and pastries to amp up the flavor. Prepare this delectable Spiced Pear bread cake and savour every bite of it.\nIt can also be added to Porridge and Yogurt to add extra flavor.\nUse atop coffee for a delicious cappuccino. Can also be used to make tea.'),
(14, 14, 'en', 'Cloves | Kirambu | Lavenham | கிராம்பு | Hilly Cloves with Oil | Spices Avako.in', '<p><strong>Avako Hilly Cloves are one of the most important and useful spices and its uses are</strong></p>\n<ul class=\"i8Z77e\">\n<li class=\"TrT0Xe\">Cloves as Natural Breath Fresheners.</li>\n<li class=\"TrT0Xe\">Cloves Spice acts as an Effective Digestive Aids.</li>\n<li class=\"TrT0Xe\">Powerful Antioxidant Properties of Cloves.</li>\n<li class=\"TrT0Xe\">Cloves and Their Positive Impact on Cardiovascular Health.</li>\n<li class=\"TrT0Xe\">Cloves&rsquo; Natural Anti-Inflammatory Compounds.</li>\n<li class=\"TrT0Xe\">Effect of cloves on blood sugar management.</li>\n</ul>', 'Kodaikanal Avako.in Hilly Cloves are one of the most important and useful spices. They are the dried, unopened flower buds of Syzygium aromaicum. The shape of the bud is naillike. The plant is a small, conical evergreen tree.The value of Avako Hilly cloves is due to the presence of essential oil content\n\nCloves are aromatic and richly flavored. It is antiseptic in nature and used for tooth ache. It is also used in certain tooth paste and for mouth washing. . More recently, clove oil has been employed for its analgesic effects in dentistry. It is a preservative and is also used as a flavouring agent for meat dishes. It is also used to flavor a wide variety of sweet and savoury dishes. It has been an essential flavor component in many traditional dishes\n\nCloves are rich in nutrients such as manganese, Vitamin K & C.\nCloves not only have anti-inflammatory and antioxidant properties but they also help to boost your liver health, helps with digestion, relieve constipation, \nHelp to boost immunity and they act as natural pain relieverdue to its analgesic properties and its benefits don’t stop here.'),
(15, 15, 'en', 'Hill Black Pepper | மிளகு | Kali Mirch – Organic and Natural Pepper -Premium', '<p><strong>HEALTH BENEFITS OF BLACKPEPPER</strong></p>\n<ul>\n<li>Prevent Any Sort of Cancer</li>\n<li>Good for Digestion</li>\n<li>Prevent Constipation</li>\n<li>Treat Skin Problems</li>\n<li>Good for Your Hair</li>\n<li>Helps in Treating Respiratory Diseases</li>\n</ul>\n<table>\n<tbody>\n<tr>\n<td width=\"157\"><strong>BRAND</strong></td>\n<td width=\"246\">AVAKO.IN</td>\n</tr>\n<tr>\n<td width=\"157\"><strong>VARIETY</strong></td>\n<td width=\"246\">ORIGINAL&nbsp; PURE BLACK PEPPER |</td>\n</tr>\n<tr>\n<td width=\"157\"><strong>ITEM FORM</strong></td>\n<td width=\"246\">SEED</td>\n</tr>\n<tr>\n<td width=\"157\"><strong>COUNTRY OF ORIGIN</strong></td>\n<td width=\"246\">INDIA</td>\n</tr>\n<tr>\n<td width=\"157\"><strong>DIET TYPE</strong></td>\n<td width=\"246\">VEGETARIAN</td>\n</tr>\n<tr>\n<td width=\"157\"><strong>ITEM WEIGHT</strong></td>\n<td width=\"246\">150g, 200g, 300g</td>\n</tr>\n<tr>\n<td width=\"157\"><strong>SPECIALITY</strong></td>\n<td width=\"246\">NATURAL &amp; ORGANIC</td>\n</tr>\n</tbody>\n</table>', 'Hill Black pepper is Organically produced from the pepper Plant which cultivated in the mountainous region of the western Ghats especially in Kodaikanal Hills\n\nOur avako.in hill Black pepper are selectively handpicked by our farmers\nWe are preparing our avako.in hill Black pepper by farmers old traditional method as follows\nNO ARTIFICIAL COLOURS AND PRESERVATIVES\n\nWe are using Preservative free Products those that do not contain any kind of artificial ingredients\nThey reduce the risks or exposure to side effects mentioned above and usually have a fresher compared to those containing chemical preservative\nBlack pepper is packed full of healthy nutrients for the body. The regular consumption of this spice will help achieve a glowing complexion and happy skin. It can also be used as an exfoliator added to honey or yogurt; Black pepper acts as an anti-inflammatory which helps to reduce arthritis, improve digestion\nBlack pepper is a rich source of minerals like manganese, copper, magnesium, calcium, phosphorus, iron, potassium, and vitamin c, vitamin k and vitamin B6.\nBlack pepper has a high content of dietary fiber and has a moderate amount of protein and carbohydrates too.\nBlack pepper recipes\n\nBlack pepper can be used in many dishes as this adds an aroma and a taste that can leave you craving for it all day. We also Have Black Pepper Powder Alsohttps://www.avako.in/product/avako-hilly-original-organic-pepper-powder-50gms/'),
(16, 16, 'en', 'Hill Cardamom | Elaichi | Original & Organic |ஏலக்காய்', '<table>\n<tbody>\n<tr>\n<td width=\"157\"><strong>BRAND</strong></td>\n<td width=\"246\">AVAKO.IN</td>\n</tr>\n<tr>\n<td width=\"157\"><strong>VARIETY</strong></td>\n<td width=\"246\">&nbsp;NATURAL CARDAMOM</td>\n</tr>\n<tr>\n<td width=\"157\"><strong>ITEM FORM</strong></td>\n<td width=\"246\">SEED</td>\n</tr>\n<tr>\n<td width=\"157\"><strong>COUNTRY OF ORIGIN</strong></td>\n<td width=\"246\">INDIA</td>\n</tr>\n<tr>\n<td width=\"157\"><strong>DIET TYPE</strong></td>\n<td width=\"246\">VEGETARIAN</td>\n</tr>\n<tr>\n<td width=\"157\"><strong>ITEM WEIGHT</strong></td>\n<td width=\"246\">100g, 150g, 200g, 300g</td>\n</tr>\n<tr>\n<td width=\"157\"><strong>SPECIALITRY&nbsp;</strong></td>\n<td width=\"246\">ORGANIC</td>\n</tr>\n</tbody>\n</table>', 'Avako.in hilly green Cardamom / elaichi is Organically produced from the cardamom Plant which cultivated in the mountainous region of the western Ghats especially in Kodaikanal Hills. Our avako.in hilly cardamom are selectively hand picked by our farmers , We are preparing our avako.in hilly cardamom by farmers old traditional method ,In our cardamom we didn’t done any type of grading so all sizes are mixed and only we done only cleaning and Processing so Direct Garden to Your House Cardamom or elachi is an aromatic seed pod used in Indian Traditional cuisine. It has sweet flavor and unique aroma which enhances the flavor of the dish Cardamom has several health benefits and healing properties such as , rich in antioxidants , boost immunity. It may helps curing cough , cold and respiratory problems. It can help enhancing digestion. Cardamom has long history in ayurvedic medicines, often used to enhance stamina and immunity. Cardamom is used in kheer, biriyani, curries, tea and also as mouth freshener. The easiest way to include cardamom in diet is to separate seeds from pod and crush it, then it can be added to your tea, coffee, milk or warm with honey. NO ARTIFICIAL COLOURS AND PRESERVATIVES\n\nQualities :https://www.avako.in/product/avako-green-cardamom-elaichi-premium/'),
(17, 17, 'en', 'Hill Garlic | Kodaikanal மலைபூண்டு – Malai Poondu', '<p><strong>IS MALAI POONDU GOOD FOR HEALTH</strong></p>\n<ul>\n<li>Kodaikanal Malai Poondu is known for its medicinal and &nbsp;preservative properties due to its antioxidant and antimicrobial potential.</li>\n<li>Hill garlic is often referred as &lsquo;power food&rsquo; as it is loaded with immense amounts of nutrients and healing properties.</li>\n</ul>\n<table>\n<tbody>\n<tr>\n<td width=\"157\"><strong>BRAND</strong></td>\n<td width=\"246\">&nbsp; AVAKO.IN</td>\n</tr>\n<tr>\n<td width=\"157\"><strong>COUNTRY OF ORIGIN</strong></td>\n<td width=\"246\">&nbsp; INDIA</td>\n</tr>\n<tr>\n<td width=\"157\"><strong>DIET TYPE</strong></td>\n<td width=\"246\">&nbsp; VEGETARIAN</td>\n</tr>\n<tr>\n<td width=\"157\"><strong>ITEM WEIGHT</strong></td>\n<td width=\"246\">&nbsp; 300gm, 500gm,1kg</td>\n</tr>\n<tr>\n<td width=\"157\">SPECIALITRY</td>\n<td width=\"246\">&nbsp; ORGANIC</td>\n</tr>\n<tr>\n<td width=\"157\">PACKAGE INFORMATION</td>\n<td width=\"246\">&nbsp; POUCH</td>\n</tr>\n</tbody>\n</table>', 'Hill Garlic மலைபூண்டு was organically produced, cropped and cultivated in the western Ghats especially in Kodaikanal areas\n\nWe are giving good and quality products. Which are organically grown and collected by the farmers.\nBuy hills garlic, natural Malai Poondu https://www.avako.in/product/avako-hilly-original-garlic-premium-organic/\nAvako.in Kodaikanal hill garlic (Malai Poondu), which is a pungent, raindrop shaped bulb, has earned the geographical indication tag, making it an agricultural product unique only to this southern hill station\nAvako.in hilly garlic is high in aroma and flavor\nAvako.in hilly garlic (Malai Poondu) natural garlic makes your dish more delicious and delightful\nAvako.in hilly garlic (Malai Poondu) has a strong smell and a pungent taste'),
(18, 18, 'en', 'Hill Garlic Original Premium Organic | Kodaikanal மலை பூண்டு – Avako.in', '<p><strong>IS MALAI POONDU GOOD FOR HEALTH</strong></p>\n<ul>\n<li>Kodaikanal malai Poondu is known for its medicinal and &nbsp;preservative properties due to its antioxidant and antimicrobial potential.</li>\n<li>Hilly garlic is often referred as &lsquo;power food&rsquo; as it is loaded with immense amounts of nutrients and healing properties.</li>\n</ul>\n<table width=\"375\">\n<tbody>\n<tr>\n<td width=\"157\"><strong>BRAND</strong></td>\n<td width=\"246\">&nbsp; &nbsp; AVAKO.IN</td>\n</tr>\n<tr>\n<td width=\"157\"><strong>COUNTRY OF ORIGIN</strong></td>\n<td width=\"246\">&nbsp; &nbsp; INDIA</td>\n</tr>\n<tr>\n<td width=\"157\"><strong>DIET TYPE</strong></td>\n<td width=\"246\">&nbsp; &nbsp; VEGETARIAN</td>\n</tr>\n<tr>\n<td width=\"157\"><strong>ITEM WEIGHT</strong></td>\n<td width=\"246\">&nbsp; &nbsp; 300gm, 500gm , 1 kg</td>\n</tr>\n<tr>\n<td width=\"157\">SPECIALITRY</td>\n<td width=\"246\">&nbsp; &nbsp; ORGANIC</td>\n</tr>\n<tr>\n<td width=\"157\">PACKAGE INFORMATION</td>\n<td width=\"246\">&nbsp; &nbsp; POUCH</td>\n</tr>\n</tbody>\n</table>', 'Hill Garlic Original Premium Organic | மலை பூண்டு – Avako.in  was organically produced, cropped and cultivated in the western Ghats especially in Kodaikanal areas\n\nWe are giving good and quality products. Which are organically grown and collected by the farmers.\nBuy hills garlic, natural malai Poondu\nAVAKO KODAI HILLY ORGANIC GARLIC\n\nAvako.in Kodaikanal hill garlic (malai Poondu), which is a pungent, raindrop shaped bulb, has earned the geographical indication tag, making it an agricultural product unique only to this southern hill station\nAvako.in hilly garlic is high in aroma and flavor\nAvako.in hilly garlic (malai Poondu) natural garlic makes your dish more delicious and delightful\nAvako.in hilly garlic (malai Poondu) has a strong smell and a pungent taste   \n           More Variety Available https://www.avako.in/product-category/hilly-garlic-%e0%ae%ae%e0%ae%b2%e0%af%88-%e0%ae%aa%e0%af%82%e0%ae%a3%e0%af%8d%e0%ae%9f%e0%af%81/'),
(19, 19, 'en', 'Single Clove Hill Garlic | ஒற்றை பல் மலை பூண்டு | Kodaikanal Premium |Avako.in', '<ul>\n<li>Antioxidants:&nbsp;Single clove garlic has a higher antioxidant capacity than multi-clove garlic.&nbsp;This helps reduce oxidative stress and scavenge free radicals.</li>\n<li>Antibacterial properties:&nbsp;Single clove garlic can inhibit the growth of bacteria.</li>\n<li>Anti-diabetic effects:&nbsp;Single clove garlic can reduce blood sugar levels, increase insulin levels, and decrease insulin resistance.</li>\n<li>Hepatoprotective effects:&nbsp;Single clove garlic can help with liver damage and dyslipidemia.</li>\n<li>Sperm quality:&nbsp;Single clove garlic can improve sperm quality in hyperlipidemic conditions.</li>\n<li>Eating a Avako.in Single Clove Garlic a day for 30 days can also have health benefits, such as:&nbsp;Reducing LDL (bad) cholesterol and triglycerides, Improving HDL (good) cholesterol, Increasing the genes for immunity and death of cancer cells, and Decreasing blood pressure</li>\n</ul>', 'Single Clove Hill Garlic  or ஒற்றை பல் மலை பூண்டு or  Kodaikanal Garlic was organically produced, cropped and cultivated in the western Ghats especially in Kodaikanal areas\n\nWe are giving good and quality products. Which are organically grown and collected by the farmers.\nBuy Single Clove  Hill Garlic, Natural Malai Poondu (ஒற்றை பல் மலை பூண்டு)\nMore Qualities available in hill Garlic https://www.avako.in/product-category/hilly-garlic/\nAVAKO.IN KODAIKANAL HILLY ORGANIC SINGLE CLOVE GARLIC :\n\nSingle Clove Hill Garlic is known as the most potent herb on earth. It is said to be is seven times stronger than the normal garlic. It is know that pearl garlic contains more than 400 chemical components'),
(20, 20, 'en', 'Dhani Lanka Red Chili | Thai Chili Pepper Original', '<table class=\" aligncenter\">\n<tbody>\n<tr>\n<td width=\"154\">Brand</td>\n<td width=\"166\">&nbsp;AVAKO.IN</td>\n</tr>\n<tr>\n<td width=\"154\">Product</td>\n<td width=\"166\">Dhani Lanka Red Chili</td>\n</tr>\n<tr>\n<td width=\"154\">Weight</td>\n<td width=\"166\">50gms ,100gms</td>\n</tr>\n<tr>\n<td width=\"154\">Package</td>\n<td width=\"166\">Standing Pouch</td>\n</tr>\n<tr>\n<td width=\"154\">Category</td>\n<td width=\"166\">Veg</td>\n</tr>\n<tr>\n<td width=\"154\">Quality</td>\n<td width=\"166\">Organic &amp; Natural</td>\n</tr>\n</tbody>\n</table>', 'Avako.in Dhani Lanka Red Chili (காந்தாரி மிளகாய்) Original are small, intensely hot and blood red in colour. The Pungency level in Dhani Lanka Red Chili is very High.\nAvako.in Dhani Lanka Red Chili Original ’s eye chili, or chilies in general are classified as vegetables. They are widely used in cooking to spice up food, which gives a hot and spicy flavor.\nAvako.in Dhani Lanka Red Chili Original can also be found in India, particularly in Western Ghats (Kodaikanal)\nIt is used in traditional dishes Health Benefits\n\nAvako.in Dhani Lanka Red Chili (காந்தாரி மிளகாய்) Original contains up to seven times the vitamin C level of an orange and has a range of health benefits, including fighting sinus congestion, aiding digestion and helping to relieve migraines and muscle, joint and nerve pain.\nIt’s also a good source of vitamins A and E, beta-carotene, folic acid and potassium.\nChili has long been used to reduce food micro-contamination and is also considered a potential metabolism booster for weight loss.\nSeveral studies have found it may also play a role in treating lung and prostate cancer and leukemia.\n Asides from helping digestion, Avako.in Dhani Lanka Red Chili Original ’s eye chili also works for diet programs by burning excessive fat cells.\nHigh blood pressure may lead to heart attacks, which can also be stabilized by taking Avako.in Dhani Lanka Red Chili Original ’s eye chili.'),
(21, 21, 'en', 'Coffee Powder | Black Coffee Powder | Premium Arabica Original 100% Natural graded Coffee Powder | Without Chicory', '<p data-sourcepos=\"15:1-15:65\"><strong>Benefits of Black Coffee Powder Premium Avako.in:</strong></p>\n<ul data-sourcepos=\"17:1-22:0\">\n<li data-sourcepos=\"17:1-17:66\">Contains caffeine, which can help to improve alertness and focus</li>\n<li data-sourcepos=\"18:1-18:46\">May help improve mood and cognitive function</li>\n<li data-sourcepos=\"19:1-19:45\">May help reduce the risk of type 2 diabetes</li>\n<li data-sourcepos=\"20:1-20:70\">May help protect against Alzheimer&rsquo;s disease and Parkinson&rsquo;s disease</li>\n<li data-sourcepos=\"21:1-22:0\">May help improve liver health</li>\n</ul>', 'Black Coffee Powder Premium –  Avako.in\n\n                                           Black Coffee Powder Premium Avako.in is a great choice for people who are looking for a delicious(This Coffee is so delicious that you will never taste it anywhere still) and convenient way to enjoy coffee. It is made with 100% Arabica beans without adding chicory, which are known for their high quality and smooth flavor. Black Coffee Powder Premium Avako.in is a great choice for people who are on the go. It can be enjoyed at home, at work, or on the go. It is also a good choice for people who are looking for a Natural and Different coffee that is not too acidic.\n\nHow to store Black Coffee Powder Premium Avako.in:\n\nBlack Coffee Powder Premium Avako.in should be stored in an airtight container in a cool, dry place.\n\nHow to prepare Coffee Powder Premium Avako.in:\n\nTo prepare Black Coffee Powder Premium Avako.in, simply add a small quantity of  Palm Jaggery to water and Boil It well. After boiling  then added  1 or 2 Teaspoon of Black Coffee Powder Premium Avako.in then mixed well and switch of the Buner and keep it for 5 minutes after the Black Coffee Powder is settle down and pour the coffee into the cup (If you wish you can add milk into it) and enjoy your coffee 😍\n\nIf you are looking for a Natural Pure  delicious, convenient, and healthy way to enjoy coffee, then Black Coffee Powder Premium Avako.in is a great choice for you. we have more coffee varieties https://www.avako.in/product-category/coffee-powder/'),
(22, 22, 'en', 'Filter Coffee Powder | பில்டர் காபி | | Traditional South Indian Filter Coffee Powder Premium(80% Coffee – 20% Chicory) | Freshly Roasted Ground Coffee – Avako.in', '<ul data-sourcepos=\"5:1-9:0\">\n<li>Contains caffeine, which can help to improve alertness and focus</li>\n<li>May help improve mood and cognitive function</li>\n<li>May help reduce the risk of type 2 diabetes</li>\n<li>May help protect against Alzheimer&rsquo;s disease and Parkinson&rsquo;s disease</li>\n<li>May help improve liver health</li>\n</ul>\n<table width=\"349\">\n<tbody>\n<tr>\n<td width=\"162\">ITEM FORM</td>\n<td width=\"85\">Filter Coffee Powder</td>\n</tr>\n<tr>\n<td>FLAVOR</td>\n<td>Original</td>\n</tr>\n<tr>\n<td>PACKAGE INFORMATION</td>\n<td>Bag (pouch)</td>\n</tr>\n<tr>\n<td>DIET TYPE</td>\n<td>Vegetarian</td>\n</tr>\n<tr>\n<td>WEIGHT</td>\n<td>&nbsp;250gms,750gms,500gms,1kg</td>\n</tr>\n</tbody>\n</table>', 'Filter Coffee Powder Avako.in பில்டர் காபி  is Organically produced from the coffee plant which cultivated in the mountainous region of the western Ghats especially in Kodaikanal Hills.Avako.in Original Filter Coffee Powder is completely Made with 100% Arabica Coffee beansAvako.in Traditional South Indian Filter Coffee Powder  Contains 80% coffee and 20% Chicory mix. Kodaikanal Palani Hills coffee has a unique taste and aroma. Split roasted coffee beans to enhance coffee flavor. Our Avako.in Filter coffee beans are selectively hand picked by our farmers. We are preparing our coffee powder by farmers old authentic traditional method \n\nNot Only Our Coffee Powder But also our aroma of our coffee powder will energize you\n\n“With our coffee, you can fully enjoy every cup of coffee!”\n\nPreparation : Add 2 tablespoons of Avako.in Filter Coffee Powder to the upper portion of the ﬁlter. Fill it with 50ml hot water and cover it. Let it brew for 15 minutes. Pour the decoction and hot milk into a cup & add sugar or Country sugar to taste. Transfer the coﬀee from one cup to another for the perfect froth and serve hot\n\nStorage Instructions: Once opened, transfer the contents into an airtight container. Store in a dry, cool, and hygienic place\n\nAvako.in Coffee Varieties  https://www.avako.in/product-category/coffee-powder/'),
(23, 23, 'en', 'Herbal Filter Coffee Powder | Herbal Black Coffee | Sukku Malli Coffee சுக்கு மல்லி காபி', '<p><strong>Benefits:</strong></p>\n<ul>\n<li>Rich in antioxidants</li>\n<li>Activates the Mind</li>\n<li>Helps protect against headaches</li>\n<li>It keeps Athletes refreshed, Energized, and Alert</li>\n<li>Helps&nbsp; alleviate cough and cold</li>\n</ul>\n<p><strong>PRODUCT&nbsp;&nbsp;&nbsp; DETAILS</strong></p>\n<table>\n<tbody>\n<tr>\n<td width=\"130\">Brand</td>\n<td width=\"170\">Avako.in</td>\n</tr>\n<tr>\n<td width=\"130\">Variety</td>\n<td width=\"170\">Herbal Filter Coffee Powder</td>\n</tr>\n<tr>\n<td width=\"130\">Item Form</td>\n<td width=\"170\">Powder</td>\n</tr>\n<tr>\n<td width=\"130\">Net Quantity</td>\n<td width=\"170\">120g, 200g,250g,500g</td>\n</tr>\n<tr>\n<td width=\"130\">Diet Type</td>\n<td width=\"170\">Vegetarian</td>\n</tr>\n<tr>\n<td width=\"130\">Specialty</td>\n<td width=\"170\">Organic and Natural</td>\n</tr>\n</tbody>\n</table>', 'Herbal Filter Coffee Powder / Herbal Black Coffee Avako.in is Organically produced from the coffee plant which cultivated in the mountainous region of the western Ghats especially in Kodaikanal Hills. Avako.in Herbal Filter Coffee Powder is completely Made with 100% Arabica Coffee beans with Herbals Avako.in Traditional South Indian Filter Coffee Powder  Contains 80% coffee and 20% Chicory mix with Herbal Mix. Kodaikanal Palani Hills coffee has a unique taste and aroma. Split roasted coffee beans to enhance coffee flavor. Our Avako.in Herbal Filter Coffee Powder Beans are selectively hand picked by our farmers. We are preparing our coffee powder by farmers old authentic traditional method \n\nNot Only Our Coffee Powder But also our aroma of our coffee powder will energize you\n\n“With our coffee, you can fully enjoy every cup of coffee!”\n\nPreparation For Herbal Filter Coffee : Add 2 tablespoons of Avako.in Herbal Filter Coffee Powder to the upper portion of the ﬁlter. Fill it with 50ml hot water and cover it. Let it brew for 15 minutes. Pour the decoction and hot milk into a cup & add sugar or Country sugar to taste. Transfer the coﬀee from one cup to another for the perfect froth and serve hot\n\nPreparation For Herbal Black Coffee :To prepare Herbal Black Coffee Powder Premium Avako.in, simply add a small quantity of  Palm Jaggery to water and Boil It well. After boiling  then added  1 or 2 Teaspoon of Herbal Black Coffee Powder Premium Avako.in then mixed well and switch of the Buner and keep it for 5 minutes after the Black Coffee Powder is settle down and pour the coffee into the cup (If you wish you can add milk into it) and enjoy your coffee 😍\n\nStorage Instructions: Once opened, transfer the contents into an airtight container. Store in a dry, cool, and hygienic place\n\nNot Only Our Coffee Powder But also our aroma of our coffee powder will energize you\n\nINGREDIENTS : Spiced  coffee  mix , with Ayurvedic ingredients (  pepper, Dried Ginger, Coriander Seed) helps  alleviate cough and cold\n\nOur Coffee Varieties : https://www.avako.in/product-category/coffee-powder/'),
(24, 24, 'en', 'Karupatti Coffee | Palm Jaggery Coffee |கருப்பட்டி காபி -Premium', '<ul>\n<li>Rich in minerals : Karupatti is a good source of minerals like calcium, iron, and phosphorous, which are important for strong bones and teeth.</li>\n<li>Low GI</li>\n<li>Healthy alternative to white sugar</li>\n<li>No chemical agents</li>\n</ul>', 'Karupatti Coffee | Palm Jaggery Coffee |கருப்பட்டி காபி Premium –  Avako.in\n\n    Karupatti Coffee | Palm Jaggery Coffee |கருப்பட்டி காபி is a great choice for people who are looking for a delicious(This Coffee is so delicious that you will never taste it anywhere still) and convenient way to enjoy coffee. It is made with 100% Arabica beans without adding chicory, which are known for their high quality and smooth flavor. Karupatti Coffee is a great choice for people who are on the go. It can be enjoyed at home, at work, or on the go. It is also a good choice for people who are looking for a Natural and Different coffee that is not too acidic.\n\nHow to store Karupatti Coffee  Premium Avako.in:\n\nKarupatti Coffee  should be stored in an airtight container in a cool, dry place.\n\nHow to prepare Karupatti Coffee கருப்பட்டி காபி Premium Avako.in:\n\nTo prepare Karupatti Coffee  simply add a small quantity of  Palm Jaggery to water and Boil It well. After boiling  then added  1 or 2 Teaspoon of Black Coffee Powder Premium Avako.in then mixed well and switch of the Buner and keep it for 5 minutes after the Black Coffee Powder is settle down and pour the coffee into the cup (If you wish you can add milk into it) and enjoy your coffee 😍\n\nIf you are looking for a Natural Pure  delicious, convenient, and healthy way to enjoy coffee, then Karupatti Coffee | Palm Jaggery Coffee |கருப்பட்டி காபிPremium Avako.in is a great choice for you. we have more coffee\n\nOur Coffee Varieties –https://www.avako.in/product-category/coffee-powder/'),
(25, 25, 'en', 'Non – Roasted Coffee Bean -Avako.in', '<ul>\n<li>After Purchasing Avako Non Roasted Coffee Bean</li>\n<li>Roast The Bean Using Roaster Machine Or Traditional Method</li>\n<li>After That Grinding The Roasted Coffee Beans Using Mixed Grinder</li>\n</ul>', 'Non – Roasted Coffee Bean is Organically produced from the coffee plant which cultivated in the mountainous region of the western Ghats especially in Kodaikanal Hills.\n\nAvako.in Coffee Bean is completely Made with 100% Arabica Coffee Plant in organic manner . Simply Avako.in Coffee is a Homemade Coffee Bean and Coffee Powder.\nKodaikanal Palani Hills coffee has a unique taste and aroma.\nSplit roasted coffee beans to enhance coffee flavor.\nOur Avako.in coffee beans are selectively hand picked by our farmers.\nThe Process Of Preparing Avako Coffee Bean By Plucking, Grinding, Cleaning, Natural Drying And Removing Outer Layer Of The Coffee Beans. For Buy Coffee Powder https://www.avako.in/product-category/coffee-powder/\nUsage :\n\nAfter Purchasing Avako Non Roasted Coffee Bean\nRoast The Bean Using Roaster Machine Or Traditional Method\nAfter That Grinding The Roasted Coffee Beans Using Mixed Grinder');
INSERT INTO `product_translations` (`id`, `product_id`, `locale`, `name`, `description`, `short_description`) VALUES
(26, 26, 'en', 'Roasted Coffee Bean With Delicious Aroma', '<ul>\n<li><strong>A delicious and invigorating coffee made from 100% Arabica beans</strong></li>\n<li><strong>Is a good source of antioxidants and other beneficial compounds</strong></li>\n<li><strong>Has a rich and full-bodied flavor with notes of chocolate and caramel</strong></li>\n<li><strong>Is roasted to perfection for a smooth and balanced taste</strong></li>\n<li><strong>Can be enjoyed black or with milk and sugar</strong></li>\n</ul>\n<table width=\"306\">\n<tbody>\n<tr>\n<td width=\"162\">ITEM FORM</td>\n<td width=\"144\">Roasted Coffee Beans</td>\n</tr>\n<tr>\n<td>PACKAGE INFORMATION</td>\n<td>&nbsp;250gms,500gms in Pouches</td>\n</tr>\n<tr>\n<td>DIET TYPE</td>\n<td>Vegetarian</td>\n</tr>\n<tr>\n<td colspan=\"2\">Made In India(Kodaikanal)</td>\n</tr>\n</tbody>\n</table>', 'Coffee Bean is Organically produced from the coffee plant which cultivated in the mountainous region of the western Ghats especially in Kodaikanal Hills\n\nAvako.in Coffee Bean is completely Made with 100% Arabica Coffee Plant in organic manner . Simply Avako.in Coffee is a Homemade Coffee Bean and Coffee Powder\nKodaikanal Palani Hills coffee has a unique taste and aroma\nSplit roasted coffee beans to enhance coffee flavor\nOur Avako.in coffee beans are selectively hand picked by our farmers\nThe Process Of Preparing Avako.in Coffee Bean By Plucking, Grinding, Cleaning, Natural Drying And Roasting\nFor Coffee Powder  https://www.avako.in/product/avako-original-filter-coffee-powder-with-delicate-aroma/\nUsage:\n\nAfter Purchasing Avako.in Roasted Coffee Bean\nGrinding The Roasted Coffee Beans Using Mixed Grinder Or Coffee\nPowder Mixer'),
(27, 27, 'en', 'Broccoli | Organic & Natural | Fresh Vegetables | ப்ரோக்கோலி', '<ul>\n<li class=\"TrT0Xe\">Good for heart health.</li>\n<li class=\"TrT0Xe\">Contains cancer-protective compounds.</li>\n<li class=\"TrT0Xe\">May be good for eye health.</li>\n<li class=\"TrT0Xe\">May support hormonal balance.</li>\n<li class=\"TrT0Xe\">May support the immune system.</li>\n<li>Nutrient-rich green vegetable known for its distinctive appearance with florets and stems.</li>\n<li>Mild, earthy flavor that pairs well with various dishes.</li>\n<li>Excellent source of vitamins, including vitamin C and vitamin K.</li>\n<li>Rich in fiber, making it a healthy addition to meals.</li>\n<li>Versatile in cooking, can be steamed, roasted, saut&eacute;ed, or enjoyed raw in salads.</li>\n<li>Belongs to the cruciferous vegetable family, known for potential health benefits.</li>\n<li>Adds color, texture, and nutrition to a wide range of recipes.</li>\n</ul>', 'Broccoli is fully cultivated and Harvested in Kodaikanal Hills Farmers.\nAvako.in Broccoli is Organically Grown In Kodaikanal hills.\nBroccoli Have More Health Benefits\nReducing the risk of cancer. Cruciferous vegetables contain a range of antioxidants, which may help prevent the type of cell damage that leads to cancer.\nBoosting immune health. Vitamin C is an antioxidant that provides a range of benefits.\nImproving skin health.\nReducing the risk of diabetes.'),
(28, 28, 'en', 'Butter Beans | Lima | Healthy Vegetables | Organic', '<p>Butter beans are&nbsp;<strong>rich in vitamins and minerals, which are important for overall health</strong>.</p>\n<p>A source of potassium, magnesium, folate, iron, and zinc, they also contain calcium and protein.</p>\n<p>Both plant-based foodies and meat-lovers can really benefit from adding butter beans to their diet</p>', 'Murugai Beans is Fresh & Natural Vegetable From Western Ghats especially from Kodaikanal Hills\n\nAvako.in Vegetables are fully Cultivated and Harvested Naturally without using Fertilizers\n\nButter Beans are a fantastically healthy ingredient – they’re high in protein and fiber, and they’re an excellent source of carbohydrates. Low in fat and calories but high in folate, starch and iron\n\n A very popular variety of Butter Beans (lima) that’s prized in Madurai and Southern Tamilnadu. It is cultivated in Kodaikanal and Palani hills.\n\nThe butter bean is held on par with meat as an ingredient in the kitchens of Madurai, Butter beans are added while making pulao and also to their mutton kuzhambu.\n\n It’s very rare to get butter beans\n\nFor More Products Click https://www.avako.in/product-category/hill-vegetable/'),
(29, 29, 'en', 'Chow Chow | சௌ சௌ |Chayote squash | Vegetables | Fully Organic', '<p>A single Chow Chow (203 grams) provides the following nutrients &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>\n<ul>\n<li><strong>Calories:</strong>&nbsp;39</li>\n<li><strong>Carbs:</strong>&nbsp;9 grams</li>\n<li><strong>Protein:</strong>&nbsp;2 grams</li>\n<li><strong>Fat:</strong>&nbsp;0 grams</li>\n<li><strong>Fiber:</strong>&nbsp;4 grams &mdash; 14%<br />of the Reference Daily Intake (RDI)</li>\n<li><strong>Vitamin C:</strong>&nbsp;26% of the RDI</li>\n<li><strong>Vitamin B9 (folate):</strong>&nbsp;47% of the RDI</li>\n<li><strong>Vitamin K:</strong>&nbsp;10% of the RDI</li>\n<li><strong>Vitamin B6:</strong>&nbsp;8% of the RDI</li>\n<li><strong>Manganese:</strong>&nbsp;19% of the RDI</li>\n<li><strong>Copper:</strong>&nbsp;12% of the RDI</li>\n<li><strong>Zinc:</strong>&nbsp;10% of the RDI</li>\n<li><strong>Potassium:</strong>&nbsp;7% of the RDI</li>\n<li><strong>Magnesium:</strong> 6% of the RDI<strong style=\"font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Oxygen, Ubuntu, Cantarell, \'Open Sans\', \'Helvetica Neue\', sans-serif;\">&nbsp;</strong></li>\n</ul>', 'Chow Chow (சௌ சௌ) is Fresh & Natural Vegetable From Western Ghats especially from Kodaikanal Hills\n\nAvako.in Vegetables are fully Cultivated and Harvested Naturally without using Fertilizers\n\nChow Chow Make more health benefits\n\nChow Chow or chayote squash much loved vegetable in south Indian cuisine, often added to sambar and other dishes.\n\nFor More Vegetables click https://www.avako.in/product-category/hill-vegetable/'),
(30, 30, 'en', 'Kodaikanal Beet Root | Organic Garden | ABC Product', '<ul>\n<li><strong>Beet Root and its juice help your heart and lungs work better during exercise.</strong></li>\n<li><strong>Nitric oxide from beets increases blood flow to your muscles.</strong></li>\n<li><strong>Some athletes eat beetroot or drink beet juice when exercising to improve their performance.</strong></li>\n<li><strong>Beets are rich in foliate (vitamin B9) which helps cells grow and function.</strong></li>\n<li>\n<table>\n<tbody>\n<tr>\n<td width=\"146\"><strong>Item Weight</strong></td>\n<td width=\"138\"><strong>1Kg , 2Kg</strong></td>\n</tr>\n<tr>\n<td width=\"146\"><strong>Product</strong></td>\n<td width=\"138\"><strong>Beet Root</strong></td>\n</tr>\n<tr>\n<td width=\"146\"><strong>Size</strong></td>\n<td width=\"138\"><strong>Medium &amp; Big</strong></td>\n</tr>\n<tr>\n<td width=\"146\"><strong>Brand</strong></td>\n<td width=\"138\"><strong>AVAKO.IN</strong>\n<p>&nbsp;</p>\n<p><strong>Grown In India</strong></p>\n</td>\n</tr>\n<tr>\n<td width=\"146\"><strong>Specialty</strong></td>\n<td width=\"138\"><strong>N0 Preservatives</strong></td>\n</tr>\n<tr>\n<td width=\"146\"><strong>Produce sold as</strong></td>\n<td width=\"138\"><strong>Fresh Package</strong></td>\n</tr>\n<tr>\n<td width=\"146\"><strong>Temperature Condition</strong></td>\n<td width=\"138\"><strong>Fresh</strong></td>\n</tr>\n<tr>\n<td width=\"146\"><strong>Number of Items</strong></td>\n<td width=\"138\"><strong>10 to 12</strong></td>\n</tr>\n</tbody>\n</table>\n</li>\n</ul>', 'Kodaikanal Beet Root | Organic Garden | ABC Product\n\nAvako.in Beet Root is fully cultivated and Harvested in Kodaikanal Hills Farmers\nAvako.in Beet Root is Organically Grown In Kodaikanal hills\nKodai Hills is Famous For Under Soli Grown Vegetables Like Beet Root, Carrot, Potato, Garlic , Broccoli etc.\nHilly Beet Root Have More Health Benefits\n\nBeet Root and its juice help your heart and lungs work better during exercise.\nNitric oxide from beets increases blood flow to your muscles.\nSome athletes eat beetroot or drink beet juice when exercising to improve their performance.\nBeets are rich in foliate (vitamin B9) which helps cells grow and function.\nFor More Vegetables click  https://www.avako.in/product-category/hill-vegetable/'),
(31, 31, 'en', 'Kodaikanal Carrot | Organic Fresh Garden | கேரட்', '<p>Hilly Carrot Have More Health Benefits.</p>\n<ul>\n<li>They may promote healthy vision</li>\n<li>Balance your blood sugar, help with weight management</li>\n<li>Lower your risk of cancer</li>\n<li>Regulate blood pressure</li>\n<li>Reduce heart disease</li>\n<li>Improve immunity, and</li>\n<li>Boost brain health.</li>\n</ul>', 'Our Carrot கேரட் is fully cultivated and Harvested in Kodaikanal Hills Farmers. Avako.in Carrot is Organically Grown In Kodaikanal hills Without any Chemicals & Preservatives. Kodai Hills is Famous For Under Soli Grown Vegetables Like Beet root, Carrot, Potato, Garlic , Broccoli etc\n\nFresh Products\n100% Healthy\nItem Weight	1Kg , 2Kg\nProduct	Carrot\nSize	Medium & Big\nBrand	AVAKO.IN\nGrown In India\n\nSpecialty	N0 Preservatives\nProduce sold as	Fresh Package\nTemperature Condition	Fresh\nNumber of Items	10 to 12'),
(32, 32, 'en', 'Murugai Beans – Organic Vegetable | Beans', '<p><strong>Protein</strong>:&nbsp;A plant-based protein source that can help build muscle, bone, cartilage, and skin&nbsp;</p>\n<p><strong>Fiber</strong>:&nbsp;Helps control blood sugar and maintain a healthy gut&nbsp;</p>\n<p><strong>Vitamins and minerals</strong>:&nbsp;Contain B vitamins, iron, potassium, magnesium, and other nutrients&nbsp;</p>\n<p><strong>Chronic disease prevention</strong>:&nbsp;May help prevent type 2 diabetes, heart disease, and some cancers&nbsp;</p>\n<p><strong>Low in fat and sodium</strong>:&nbsp;Contain little or no total fat, trans fat, sodium, and cholesterol</p>', 'Murugai Beans is Fresh & Natural Vegetable From Western Ghats especially from Kodaikanal Hills\n\nAvako.in Vegetables are fully Cultivated and Harvested Naturally without using Fertilizers\n\nComparing with all beans variety Murugai beans taste is very good\n\nFor More Vegetables Click https://www.avako.in/product-category/hill-vegetable/'),
(33, 33, 'en', 'Nookal -Kohlrabi Organic & Natural Vegetables From Western Ghats', '<p><strong>Strong bones</strong>:&nbsp;Nookal is high in calcium and magnesium, which can help strengthen bones.</p>\n<p>&nbsp;<strong>Cancer prevention</strong>:&nbsp;Nookal has anti-cancer properties and its potassium content can reduce the risk of cancer.</p>\n<p>&nbsp;<strong>Reduced cholesterol and glucose levels</strong>:&nbsp;Nookal can help reduce blood cholesterol and glucose levels.</p>\n<p>&nbsp;<strong>Improved heart health</strong>:&nbsp;Nookal&rsquo;s potassium content can help reduce the risk of heart disease.</p>\n<p>&nbsp;<strong>Immune system boost</strong>:&nbsp;Nookal is high in vitamin C, which can help boost the immune system and protect the body from infections and diseases.</p>\n<p>&nbsp;<strong>Improved digestion</strong>:&nbsp;Nookal is high in fiber, which can help regulate bowel movements and reduce constipation.</p>\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong>Ayurveda</strong>:&nbsp;Ayurveda recommends regular consumption of nookal for those with &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;pitta disorders</p>', 'Nookal -Kohlrabi Organic & Natural Vegetables From Western Ghats\n\nNookal or Kohlrabi is also called a German turnip, it can be eaten raw or cooked.\n\nRadish-Red-Fresh & Natural Vegetable From Western Ghats especially from Kodaikanal Hills\n\nAvako.in Vegetables are fully Cultivated and Harvested Naturally without using Fertilizers\n\nFor More Vegetables Click https://www.avako.in/product-category/hill-vegetable/'),
(34, 34, 'en', 'Radish-Red-Fresh & Natural Vegetables From Western Ghats', '<p>Radishes are&nbsp;<strong>heart-friendly</strong>&nbsp;thanks to being a source of sulforaphane as well as other plant compounds, like anthocyanins. With a protective antioxidant action, these plant compounds help reduce the inflammatory damage caused by oxidative stress, a process which plays a key role in the development of heart disease.</p>\n<p>Red radishes are a good source of vitamin C and fiber.&nbsp;They are low in calories and have many medicinal functions, including helping to cure the common cold, detoxify the liver, and regulate blood pressure.</p>', 'Radish-Red-Fresh & Natural Vegetable From Western Ghats especially from Kodaikanal Hills\n\nAvako.in Vegetables are fully Cultivated and Harvested Naturally without using Fertilizers\n\nRadishes offer a host of health benefits, but are typically under-appreciated. Their pungent flavor and natural spice helps eliminate excess mucus in the body and can be especially helpful with fighting a cold or soothing a sore throat.\n\nFor More Vegetables Click  https://www.avako.in/product-category/hill-vegetable/'),
(35, 35, 'en', 'Hilly Forest Raw Honey |100% Pure Honey with No Sugar Added | தேன் | Kombu Thean', '<table>\n<tbody>\n<tr>\n<td width=\"157\"><strong>BRAND</strong></td>\n<td width=\"246\">AVAKO.IN</td>\n</tr>\n<tr>\n<td width=\"157\"><strong>SPECIALITY</strong></td>\n<td width=\"246\">RAW HONEY ORIGINAL (NO PRESERVATIVES)</td>\n</tr>\n<tr>\n<td width=\"157\"><strong>COUNTRY OF ORIGIN</strong></td>\n<td width=\"246\">INDIA</td>\n</tr>\n<tr>\n<td width=\"157\"><strong>DIET TYPE</strong></td>\n<td width=\"246\">VEGETARIAN</td>\n</tr>\n<tr>\n<td width=\"157\"><strong>ITEM WEIGHT</strong></td>\n<td width=\"246\">&nbsp;250 Ml,350Ml</td>\n</tr>\n</tbody>\n</table>', 'Our Avako.In honey from the heart of kodai forest,\nWe gather the honey that is natural and unpasteurized.\nThe honey produced varies depending on seasons, different flowers and the type of bee species that produce it.\nOur honey has a strong aroma\nRaw, unprocessed and unpasteurized honey\nOur honey sourced from the Trees in Kodaikanal hills naturally.\nOur honey Collecting directly from the Our Garden and Farmers\nOur honey is raw honey with no artificial flavor and preservative free\nOur honey is not as industrial made honey; this is pure raw natural honey.\nOur Honey Varieties  https://www.avako.in/product/avako-western-ghats-small-bees-honey-200ml/'),
(36, 36, 'en', 'Malai Thean Small Bees Honey |மலை சிறு தேன் | Raw and Unprocessed Honey -Avako.in', '<table>\n<tbody>\n<tr>\n<td width=\"157\"><strong>BRAND</strong></td>\n<td width=\"246\">AVAKO.IN</td>\n</tr>\n<tr>\n<td width=\"157\"><strong>SPECIALITY</strong></td>\n<td width=\"246\">RAW HONEY (NO PRESERVATIVES)</td>\n</tr>\n<tr>\n<td width=\"157\"><strong>COUNTRY OF ORIGIN</strong></td>\n<td width=\"246\">INDIA</td>\n</tr>\n<tr>\n<td width=\"157\"><strong>DIET TYPE</strong></td>\n<td width=\"246\">VEGETARIAN</td>\n</tr>\n<tr>\n<td width=\"157\"><strong>ITEM WEIGHT</strong></td>\n<td width=\"246\">200Ml ,250ml</td>\n</tr>\n</tbody>\n</table>', 'We gather the Malai Thean Small Bees Honey From Kodaikanal Forest that is natural and unpasteurized Honey\n\nThe honey produced varies depending on seasons, different flowers and the type of bee species that produce it.\nOur honey has a strong aroma\nRaw, unprocessed and unpasteurized honey\nin honey sourced from the Trees in Kodaikanal hills naturally.\nOur honey Collecting directly from the Our Garden and Farmers\nOur honey is raw honey with no artificial flavor and preservative free\nOur honey is not as industrial made honey; this is pure raw natural honey.   \n              More Varieties : https://www.avako.in/product-category/hill-honey-%e0%ae%ae%e0%ae%b2%e0%af%88-%e0%ae%a4%e0%af%87%e0%ae%a9%e0%af%8d/'),
(37, 37, 'en', 'Wild Forest Raw Honey | தேன் |Pure Honey from Western Ghats Online – Avako.in', '<table>\n<tbody>\n<tr>\n<td width=\"157\"><strong>BRAND</strong></td>\n<td width=\"246\">AVAKO.IN</td>\n</tr>\n<tr>\n<td width=\"157\"><strong>SPECIALITY</strong></td>\n<td width=\"246\">Pure Raw Honey from Western Ghats</td>\n</tr>\n<tr>\n<td width=\"157\"><strong>COUNTRY OF ORIGIN</strong></td>\n<td width=\"246\">India</td>\n</tr>\n<tr>\n<td width=\"157\"><strong>DIET TYPE</strong></td>\n<td width=\"246\">&nbsp;Vegetarian</td>\n</tr>\n<tr>\n<td width=\"157\"><strong>ITEM WEIGHT</strong></td>\n<td width=\"246\">300 ml , 400 ml</td>\n</tr>\n</tbody>\n</table>', 'Wild Forest Raw Honey | தேன் |Pure Honey from Western Ghats from the heart of kodaikanal forest ( Western Ghats ),\n\nWe gather the honey that is natural and unpasteurized ,\nThe honey produced varies depending on seasons, different flowers and the type of bee species that produce it.\nOur honey has a strong aroma\nRaw, unprocessed and unpasteurized honey\nin honey sourced from the Trees in Kodai hills naturally.\nOur honey Collecting directly from the Our Garden and Farmers\nOur honey is raw honey with no artificial flavor and preservative free\nOur honey is not as industrial made honey; this is pure raw natural honey.\n       More Quantity Click    https://www.avako.in/product-category/hill-honey-%e0%ae%ae%e0%ae%b2%e0%af%88-%e0%ae%a4%e0%af%87%e0%ae%a9%e0%af%8d/'),
(38, 38, 'en', 'Black Pepper Powder Pure organic |மிளகு தூள் | 100% Natural Masala | Ideal for Seasoning & Flavor Dishes – Avako.in', '<p><strong>HEALTH BENEFITS OF BLACKPEPPER</strong></p>\n<ul>\n<li>Prevent Any Sort of Cancer</li>\n<li>Good for Digestion</li>\n<li>Prevent Constipation</li>\n<li>Treat Skin Problems</li>\n<li>Good for Your Hair</li>\n<li>Helps in Treating Respiratory Diseases</li>\n</ul>\n<table>\n<tbody>\n<tr>\n<td width=\"157\"><strong>BRAND</strong></td>\n<td width=\"246\">AVAKO.IN</td>\n</tr>\n<tr>\n<td width=\"157\"><strong>VARIETY</strong></td>\n<td width=\"246\">Natural BLACK PEPPER</td>\n</tr>\n<tr>\n<td width=\"157\"><strong>ITEM FORM</strong></td>\n<td width=\"246\">POWDER</td>\n</tr>\n<tr>\n<td width=\"157\"><strong>COUNTRY OF ORIGIN</strong></td>\n<td width=\"246\">INDIA</td>\n</tr>\n<tr>\n<td width=\"157\"><strong>DIET TYPE</strong></td>\n<td width=\"246\">VEGETARIAN</td>\n</tr>\n<tr>\n<td width=\"157\"><strong>ITEM WEIGHT</strong></td>\n<td width=\"246\">100gm ,200 gm</td>\n</tr>\n<tr>\n<td width=\"157\"><strong>SPECIALITY</strong></td>\n<td width=\"246\">ORGANIC</td>\n</tr>\n</tbody>\n</table>', 'Black Pepper Powder is Organically produced from the pepper Plant which cultivated in the mountainous region of the western Ghats especially in Kodaikanal Hills\n\nOur avako.in hilly pepper are selectively handpicked by our farmers\nWe are preparing our avako.in hilly pepper by farmers old traditional method as follows\nNO ARTIFICIAL COLOURS AND PRESERVATIVES\n\nWe are using Preservative free Products those that do not contain any kind of artificial ingredients\nThey reduce the risks or exposure to side effects mentioned above and usually have a fresher compared to those containing chemical preservative\nBlack pepper is packed full of healthy nutrients for the body. The regular consumption of this spice will help achieve a glowing complexion and happy skin. It can also be used as an exfoliator added to honey or yogurt; Black pepper acts as an anti-inflammatory which helps to reduce arthritis, improve digestion\nBlack pepper is a rich source of minerals like manganese, copper, magnesium, calcium, phosphorus, iron, potassium, and vitamin c, vitamin k and vitamin B6.\nBlack pepper has a high content of dietary fiber and has a moderate amount of protein and carbohydrates too.\nPepper https://www.avako.in/product/hilll-black-pepper-organic-and-natural-premium/'),
(39, 39, 'en', 'Avocado | Organic Butter Fruit | Cultivated Naturally in West Ghats Hills- Avako.in', '<ul>\n<li><strong>Anti inflammatory properties</strong></li>\n<li><strong>Helps to lose weight</strong></li>\n<li><strong>Keep your heart healthy</strong></li>\n<li><strong>Regulates blood pressure</strong></li>\n<li><strong>Great for vision</strong></li>\n<li><strong>Improve digestion</strong></li>\n<li><strong>Essential for a healthy pregnancy</strong></li>\n</ul>', 'Avocado | Butter Fruit  was organically produced, cropped and cultivated in the western Ghats especially in kodaikanal areas\n\nWe are giving good and quality products. Which are collected freshly and organically in the our Garden.\n\nOur avocado’s are fresh and best in taste\n\nKodaikanal Hills Avocado has a high validity Comparing with other areas\n\nIs an avocado a hard or soft fruit\n\nRipe avocados will feel firm , with a slight give when squeezed, and will typically be very dark green in color.\nIf it looks black and mushy , the avocado is past its prime.\nOn the other hand , if it’s bright green and very hard, the avocado is under ripe and can still be used with one of the tricks below\nHow do you cut an avocado\n\nThis smooth creamy fruit can be sliced and diced for recipes, scooped out for a guacamole, and even eaten on its own as a healthy snack\nAvocado with your creamy, velvety smooth texture, and delicious taste\nwhat does avocado look like?\n\nAvocados are pear shaped fruits that grow on tropical evergreen trees. They generally have a rough, green outer skin, buttery flesh, and large seed in the middle.\n\nFor More Fruits https://www.avako.in/product-category/hill-fruits-fruits/'),
(40, 40, 'en', 'Avocado Fruit |Organic & Healthy |அவகொடா | Premium', '<ul>\n<li>Anti inflammatory properties</li>\n<li>Helps to lose weight</li>\n<li>Keep your heart healthy</li>\n<li>Regulates blood pressure</li>\n<li>Great for vision</li>\n<li>Improve digestion</li>\n<li>Essential for a healthy pregnancy</li>\n</ul>\n<table>\n<tbody>\n<tr>\n<td width=\"146\">Item Weight</td>\n<td width=\"138\">1Kg , 2Kg</td>\n</tr>\n<tr>\n<td width=\"146\">Product</td>\n<td width=\"138\">Avocado</td>\n</tr>\n<tr>\n<td width=\"146\">Size</td>\n<td width=\"138\">Medium &amp; Big</td>\n</tr>\n<tr>\n<td width=\"146\">Brand</td>\n<td width=\"138\">AVAKO.IN\n<p>&nbsp;</p>\n<p>Grown In India</p>\n</td>\n</tr>\n<tr>\n<td width=\"146\">Specialty</td>\n<td width=\"138\">N0 Preservatives</td>\n</tr>\n<tr>\n<td width=\"146\">Produce sold as</td>\n<td width=\"138\">Fresh Package</td>\n</tr>\n<tr>\n<td width=\"146\">Temperature Condition</td>\n<td width=\"138\">Fresh</td>\n</tr>\n<tr>\n<td width=\"146\">Number of Items</td>\n<td width=\"138\">4 to 6</td>\n</tr>\n</tbody>\n</table>', 'Avocado Fruit are organically produced, cropped and cultivated in the western Ghats especially in kodaikanal areas\n\nWe are giving good and quality products. Which are collected freshly and organically in our Garden.\nOur avocado is fresh and best in taste\nKodai Hills Avocado has a high validity\nIs an avocado a hard or soft fruit\n\nRipe avocados will feel firm, with a slight give when squeezed, and will typically be very dark green in color. If it looks black and mushy, the avocado is past its prime.\nOn the other hands if it’s bright green and very hard, the avocado is underripe and can still be used with one of the tricks below\nHow do you cut an avocado\n\nThis smooth creamy fruit can be sliced and diced for recipes, scooped out for a guacamole, and even eaten on its own as a healthy snack\nAvocado with your creamy, velvety smooth texture, and delicious taste\nwhat does avocado look like?\n\nAvocados are pear shaped fruits that grow on tropical evergreen trees. They generally have a rough, green outer skin, buttery flesh, and large seed in the middle\nAverage size of an avocado\n\nAvocados are exceedingly variable in size, Weight 1-2 kg\nFor More Fruits https://www.avako.in/product-category/hill-fruits-fruits/'),
(41, 41, 'en', 'Hill Banana Fruit | மலை வாழை | Organic | Premium', '<p>Hill Banana Fruits are a unique fruit that provides many health benefits :</p>\n<ul>\n<li>Rich in vitamins C and B6.</li>\n</ul>\n<ul>\n<li>Hill bananas are easy to digest and Very Healthy Food For &nbsp;Babies From 6 months and also can improve bowel movements.</li>\n<li>Hill bananas are high in fiber, which can help your body from summer heat and heat-related diseases</li>\n<li>&nbsp;Bananas are high in potassium, which can help maintain a healthy heart and blood pressure</li>\n<li>&nbsp;Bananas can help strengthen your immune system.</li>\n<li>Low-calorie but high-fiber addition to meals, snacks, and nourishing desserts</li>\n</ul>', 'Hill  Banana Fruit  (Malai vazhaipazham )Is Fully Cultivated And Harvested In Kodai Hills , ​Hill Banana had been the predominant crop in Lower Palani Hills, Kodaikanal Range.\n\n Hill bananas are easy to digest and Very Healthy Food For  Babies From 6 months and also can improve bowel movements.\nAvako.in Hilly Banana is Grown In Organic Method\nNo Chemical Preservatives can be added in fruit\nThe shelf life of the fruit is more than 10 days under normal temperature conditions. The fruit can be consumed with good taste even when the skin turns dark. This fruit is rich in potassium, helps in good health and improving digestion.\nHill Banana is grown well with good flavour and aroma when cultivated at higher elevations. Hill Bananas are small to medium sized, bright yellow in colour. Riped hill bananas have a delicious and distinctive sweet taste.\nUnlike other banana varieties, hill banana takes ~15months to generate matured fruit for harvesting.\n \n\n \n\nItem Weight	1Kg\nSize	Medium & Big\nBrand	AVAKO.IN\nSpecialty	N0 Preservatives\nProduce sold as	Fresh Package\nTemperature Condition	Fresh\nNumber of Items	8 to 15'),
(42, 42, 'en', 'Hill Banana Original | Organic Banana | மலை வாழைப்பழம் | Western Ghats -Avako.in', '<ul>\n<li>Hill bananas are a unique fruit that provides many health benefits :\n<ul>\n<li>Rich in vitamins C and B6.</li>\n</ul>\n<ul>\n<li><strong>Hill bananas are easy to digest and Very Healthy Food For &nbsp;Babies From 6 months and also can improve bowel movements.</strong></li>\n<li>Hill bananas are high in fiber, which can help your body from summer heat and heat-related diseases</li>\n<li>&nbsp;Bananas are high in potassium, which can help maintain a healthy heart and blood pressure</li>\n<li>&nbsp;Bananas can help strengthen your immune system.</li>\n<li>Low-calorie but high-fiber addition to meals, snacks, and nourishing desserts</li>\n</ul>\n</li>\n</ul>\n<table>\n<tbody>\n<tr>\n<td width=\"146\">Item Weight</td>\n<td width=\"138\">1Kg</td>\n</tr>\n<tr>\n<td width=\"146\">Product</td>\n<td width=\"138\">Hill Banana</td>\n</tr>\n<tr>\n<td width=\"146\">Size</td>\n<td width=\"138\">Medium &amp; Big</td>\n</tr>\n<tr>\n<td width=\"146\">Brand</td>\n<td width=\"138\">AVAKO.IN</td>\n</tr>\n<tr>\n<td width=\"146\">Specialty</td>\n<td width=\"138\">N0 Preservatives</td>\n</tr>\n<tr>\n<td width=\"146\">Produce sold as</td>\n<td width=\"138\">Fresh Package</td>\n</tr>\n<tr>\n<td width=\"146\">Temperature Condition</td>\n<td width=\"138\">Fresh</td>\n</tr>\n<tr>\n<td width=\"146\">Number of Items</td>\n<td width=\"138\">10 to 12</td>\n</tr>\n</tbody>\n</table>', 'Hill Banana Original (Malai vazhaipazham –  மலை வாழைப்பழம் )Is Fully Cultivated And Harvested In Kodai Hills , ​Hill Banana had been the predominant crop in Lower Palani Hills, Kodaikanal Range.\n\nHill bananas are easy to digest and Very Healthy Food For  Babies From 6 months and also can improve bowel movements.Avako.in Hilly Banana is Grown In Organic Method No Chemical Preservatives can be added in fruit The shelf life of the fruit is more than 10 days under normal temperature conditions.\n\nThe fruit can be consumed with good taste even when the skin turns dark. This fruit is rich in potassium, helps in good health and improving digestion. Unlike other banana varieties, hill banana takes ~15months to generate matured fruit for harvesting.\n\nHill Banana Available in two Qualities https://www.avako.in/product/avako-hilly-banana-100-organic-premium-fruit-1kg/'),
(43, 43, 'en', 'Orange -Fresh & Natural Original Orange From Western Ghats', '<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Avako.in Oranges, being rich in Vitamins B6, help support the production of hemoglobin and also help keep blood pressure under check due to the presence of magnesium.</p>\n<ul>\n<li>Protects your cells from damage.</li>\n<li>Helps your body make collagen, a protein that heals wounds and gives you smoother skin.</li>\n<li>Makes it easier to absorb iron to fight anemia.</li>\n<li>Boosts your immune system, your body&rsquo;s defense against germs.</li>\n</ul>', 'Orange Fruit is Fresh & Natural Original Orange From Western Ghats and fully cultivated in Kodai Hills\n\nAvako.in orange is non hybrid original Organic orange Fruit \nFor More Fruits Click https://www.avako.in/product-category/hill-fruits-fruits/\n \n\nPacking : Carton Box\nSize : 1Kg,2kg\nCountry Of Origin : India'),
(44, 44, 'en', 'Passion Fruit – Organic -Avako', '<h2><strong>Benefits of Passion Fruit :</strong></h2>\n<p>Passion Fruit is an main source of vitamin C to maintain and increase our immune system</p>\n<p>Vitamin A also enrich in this fruit its helps to increase the good vision</p>\n<p>Passion Fruit keep our skin Very Healthy</p>\n<p>Passion Fruit contains 73% of water and 23% of carbohydrate a,2% of protein</p>\n<p>&nbsp;</p>\n<p>Our Passion Fruit Is fully cultivated and grown in kodaikanal hills in natural ways</p>', 'Passion fruit:\nPassion fruits is Yellow round  and oval Shape fruit which contains more number of seed which is covered by sweet jelly like fruit substance\n\nPassion fruit is also know as Krishna Fal\n\nOur Passion Fruit Is fully cultivated and grown in kodaikanal hills in natural ways\n\nHow To Eat Passion Fruit :\nBuy a Passion Fruit From Avako.in after you receive the fruit just Cut it half and eat the jelly with seeds ,,,,,,,its very sweetie and Yummy'),
(45, 45, 'en', 'Brown Almond Chocolate Premium | Homemade -Avako.in', '<p>Dark Chocolate is rich in flavonoids,</p>\n<p>Which are powerful antioxidants that can helps protect against cardiovascular disease.</p>\n<p>In Almond ,Magnesium comes back to play another role .It happens to help to control your blood sugar by increasing your insulin sensitivity</p>\n<p>Eating Almond with dark chocolate also provides a great source of dietary fiber and vitamin-E , Making it an excellent healthy snack choice</p>\n<p>This is the benefits of our AVAKO.IN &ndash; Brown Almond Premium Chocolate</p>', 'Brown Almond Chocolate \n\nAre You Chocolate Lover? You are at the right Place to Buy. Kodaikanal made is well known for Chocolates. We are from kodaikanal hills.\n\nCocoa powder, Vanilla extract are the main inheritance of our chocolates, Avako.in Chocolate is said to have amazing and unique taste sensation and aromas. It is produced by natural and fresh ingredients and a lot of expertise to deliver its delightful flavor.\n\nWe still follow the old Traditional way of like tempering the chocolate manually and using over 40% cocoa. Their chocolate is hand tempered at a specific temperature to produce a finer quality and then blended with untempered chocolate. They are mostly known for their use of rich dark chocolate.\n\nOur collection boasts the best chocolate in India, with a variety that spans the spectrum from decadent dark chocolate to velvety white chocolate. Immerse yourself in the richness of flavor with our almond, fruit, and assorted chocolates, each handcrafted to perfection.\n\nFor All Food Products No cash on delivery and No return Option\n\nMore Varieties https://www.avako.in/product-category/homemade-chocolate/ \n\nNote:\nOnce you receive our chocolate box, please keep the chocolates in the refrigerator for 30+ minutes before eating them. We suggest you store our chocolate in cool and dry places to preserve the best aroma and taste of the chocolate.\n\nIf they are exposed to high temperatures, they may begin to soften, compromising the appearance and flavor.\n\nThe image displayed is indicative in nature. The actual product may vary in shape or design as per availability.\n\nAvailable Wholesale and Retail too. For Bulk Orders for any occasions contact us through WhatsApp @ 9626646861'),
(46, 46, 'en', 'Crispy Yummy Color Pebble Stone Chocolate | Homemade-Avako.in', '<p>Are You Chocolate Lover? You are at the right Place to Buy. Kodaikanal made is well known for Chocolates. We are from kodaikanal hills.</p>\n<p>Cocoa powder, Vanilla extract are the main inheritance of our chocolates, Avako Chocolate is said to have amazing and unique taste sensation and aromas. It is produced by natural and fresh ingredients and a lot of expertise to deliver its delightful flavor.</p>', 'Crispy Yummy Color Pebble Stone Chocolate  : Are You Chocolate Lover? You are at the right Place to Buy. Kodaikanal made is well known for Chocolates. We are from kodaikanal hills.\n\nCocoa powder, Vanilla extract are the main inheritance of our chocolates, Avako Chocolate is said to have amazing and unique taste sensation and aromas. It is produced by natural and fresh ingredients and a lot of expertise to deliver its delightful flavor.\n\nWe still follow the old Traditional way of like tempering the chocolate manually and using over 40% cocoa. Their chocolate is hand tempered at a specific temperature to produce a finer quality and then blended with untempered chocolate. They are mostly known for their use of rich dark chocolate.\n\nOur collection boasts the best chocolate in India, with a variety that spans the spectrum from decadent dark chocolate to velvety white chocolate. Immerse yourself in the richness of flavor with our almond, fruit, and assorted chocolates, each handcrafted to perfection.\n\nFor All Food Products No cash on delivery and No return Option\n\nMore Varieties https://www.avako.in/product-category/homemade-chocolate\n\nNote:\nOnce you receive our chocolate box, please keep the chocolates in the refrigerator for 30+ minutes before eating them. We suggest you store our chocolate in cool and dry places to preserve the best aroma and taste of the chocolate.\n\nIf they are exposed to high temperatures, they may begin to soften, compromising the appearance and flavor.\n\nThe image displayed is indicative in nature. The actual product may vary in shape or design as per availability.\n\nAvailable Wholesale and Retail too. For Bulk Orders for any occasions contact us through WhatsApp @ 9626646861'),
(47, 47, 'en', 'Crunch Balls Chocolate | Homemade – Avako.in', '<p>Are You Chocolate Lover? You are at the right Place to Buy. Kodaikanal made is well known for Chocolates. We are from kodaikanal hills.</p>\n<p>Cocoa powder, Vanilla extract are the main inheritance of our chocolates, Avako.in Chocolate is said to have amazing and unique taste sensation and aromas. It is produced by natural and fresh ingredients and a lot of expertise to deliver its delightful flavor.</p>', 'Crunch Balls Chocolate : Are You Chocolate Lover? You are at the right Place to Buy. Kodaikanal made is well known for Chocolates. We are from kodaikanal hills.\n\nCocoa powder, Vanilla extract are the main inheritance of our chocolates, Avako Chocolate is said to have amazing and unique taste sensation and aromas. It is produced by natural and fresh ingredients and a lot of expertise to deliver its delightful flavor.\n\nWe still follow the old Traditional way of like tempering the chocolate manually and using over 40% cocoa. Their chocolate is hand tempered at a specific temperature to produce a finer quality and then blended with untempered chocolate. They are mostly known for their use of rich dark chocolate.\n\nOur collection boasts the best chocolate in India, with a variety that spans the spectrum from decadent dark chocolate to velvety white chocolate. Immerse yourself in the richness of flavor with our almond, fruit, and assorted chocolates, each handcrafted to perfection.\n\nFor All Food Products No cash on delivery and No return Option\n\nMore Varieties https://www.avako.in/product-category/homemade-chocolate\n\nNote:\nOnce you receive our chocolate box, please keep the chocolates in the refrigerator for 30+ minutes before eating them. We suggest you store our chocolate in cool and dry places to preserve the best aroma and taste of the chocolate.\n\nIf they are exposed to high temperatures, they may begin to soften, compromising the appearance and flavor.\n\nThe image displayed is indicative in nature. The actual product may vary in shape or design as per availability.\n\nAvailable Wholesale and Retail too. For Bulk Orders for any occasions contact us through WhatsApp @ 9626646861'),
(48, 48, 'en', 'Dark & White Melody Chocolate With Yummy Jam | Homemade', '<p>Are You Chocolate Lover? You are at the right Place to Buy. Kodaikanal made is well known for Chocolates. We are from kodaikanal hills.</p>\n<p>Cocoa powder, Vanilla extract are the main inheritance of our chocolates, Avako.in Chocolate is said to have amazing and unique taste sensation and aromas. It is produced by natural and fresh ingredients and a lot of expertise to deliver its delightful flavor.</p>', 'Dark & White Melody Chocolate\n\nAre You Chocolate Lover? You are at the right Place to Buy. Kodaikanal made is well known for Chocolates. We are from kodaikanal hills.\n\nCocoa powder, Vanilla extract are the main inheritance of our chocolates, Avako.in Chocolate is said to have amazing and unique taste sensation and aromas. It is produced by natural and fresh ingredients and a lot of expertise to deliver its delightful flavor.\n\nWe still follow the old Traditional way of like tempering the chocolate manually and using over 40% cocoa. Their chocolate is hand tempered at a specific temperature to produce a finer quality and then blended with untempered chocolate. They are mostly known for their use of rich dark chocolate.\n\nOur collection boasts the best chocolate in India, with a variety that spans the spectrum from decadent dark chocolate to velvety white chocolate. Immerse yourself in the richness of flavor with our almond, fruit, and assorted chocolates, each handcrafted to perfection.\n\nFor All Food Products No cash on delivery and No return Option\n\nMore Varieties https://www.avako.in/product-category/homemade-chocolate/ \n\nNote:\nOnce you receive our chocolate box, please keep the chocolates in the refrigerator for 30+ minutes before eating them. We suggest you store our chocolate in cool and dry places to preserve the best aroma and taste of the chocolate.\n\nIf they are exposed to high temperatures, they may begin to soften, compromising the appearance and flavor.\n\nThe image displayed is indicative in nature. The actual product may vary in shape or design as per availability.\n\nAvailable Wholesale and Retail too. For Bulk Orders for any occasions contact us through WhatsApp @ 9626646861'),
(49, 49, 'en', 'Dark Chocolate with Splited Almond Nuts | Homemade', '<p>Are You Chocolate Lover? You are at the right Place to Buy. Kodaikanal made is well known for Chocolates. We are from kodaikanal hills.</p>\n<p>Cocoa powder, Vanilla extract are the main inheritance of our chocolates, Avako Chocolate is said to have amazing and unique taste sensation and aromas. It is produced by natural and fresh ingredients and a lot of expertise to deliver its delightful flavor.</p>', 'Are You Chocolate Lover? You are at the right Place to Buy. Kodaikanal made is well known for Chocolates. We are from kodaikanal hills.\n\nCocoa powder, Vanilla extract are the main inheritance of our chocolates, Avako Chocolate is said to have amazing and unique taste sensation and aromas. It is produced by natural and fresh ingredients and a lot of expertise to deliver its delightful flavor.\n\nWe still follow the old Traditional way of like tempering the chocolate manually and using over 40% cocoa. Their chocolate is hand tempered at a specific temperature to produce a finer quality and then blended with untempered chocolate. They are mostly known for their use of rich dark chocolate.\n\nOur collection boasts the best chocolate in India, with a variety that spans the spectrum from decadent dark chocolate to velvety white chocolate. Immerse yourself in the richness of flavor with our almond, fruit, and assorted chocolates, each handcrafted to perfection.\n\nFor All Food Products No cash on delivery and No return Option\n\nNote:\nOnce you receive our chocolate box, please keep the chocolates in the refrigerator for 30+ minutes before eating them. We suggest you store our chocolate in cool and dry places to preserve the best aroma and taste of the chocolate.\n\nIf they are exposed to high temperatures, they may begin to soften, compromising the appearance and flavor.\n\nThe image displayed is indicative in nature. The actual product may vary in shape or design as per availability.\n\nAvailable Wholesale and Retail too. For Bulk Orders for any occasions contact us through WhatsApp @ 9626646861'),
(50, 50, 'en', 'Dark Plain Bar Chocolate | Homemade |Dark Chocolate -Avako.in', '<p>Are You Chocolate Lover? You are at the right Place to Buy. Kodaikanal made is well known for Chocolates. We are from kodaikanal hills.</p>\n<p>Cocoa powder, Vanilla extract are the main inheritance of our chocolates, Avako.in Chocolate is said to have amazing and unique taste sensation and aromas. It is produced by natural and fresh ingredients and a lot of expertise to deliver its delightful flavor.</p>', 'Dark Plain Bar Chocolate\n\nAre You Chocolate Lover? You are at the right Place to Buy. Kodaikanal made is well known for Chocolates. We are from kodaikanal hills.\n\nCocoa powder, Vanilla extract are the main inheritance of our chocolates, Avako.in Chocolate is said to have amazing and unique taste sensation and aromas. It is produced by natural and fresh ingredients and a lot of expertise to deliver its delightful flavor.\n\nWe still follow the old Traditional way of like tempering the chocolate manually and using over 40% cocoa. Their chocolate is hand tempered at a specific temperature to produce a finer quality and then blended with untempered chocolate. They are mostly known for their use of rich dark chocolate.\n\nOur collection boasts the best chocolate in India, with a variety that spans the spectrum from decadent dark chocolate to velvety white chocolate. Immerse yourself in the richness of flavor with our almond, fruit, and assorted chocolates, each handcrafted to perfection.\n\nFor All Food Products No cash on delivery and No return Option\n\nMore Varieties https://www.avako.in/product-category/homemade-chocolate\n\nNote:\nOnce you receive our chocolate box, please keep the chocolates in the refrigerator for 30+ minutes before eating them. We suggest you store our chocolate in cool and dry places to preserve the best aroma and taste of the chocolate.\n\nIf they are exposed to high temperatures, they may begin to soften, compromising the appearance and flavor.\n\nThe image displayed is indicative in nature. The actual product may vary in shape or design as per availability.\n\nAvailable Wholesale and Retail too. For Bulk Orders for any occasions contact us through WhatsApp @ 9626646861\n\nBenefits'),
(51, 51, 'en', 'Filling Dairy Chocolate With Rapper | Homemade – Avako.in', '<p>Are You Chocolate Lover? You are at the right Place to Buy. Kodaikanal made is well known for Chocolates. We are from kodaikanal hills.</p>\n<p>Cocoa powder, Vanilla extract are the main inheritance of our chocolates, Avako.in Chocolate is said to have amazing and unique taste sensation and aromas. It is produced by natural and fresh ingredients and a lot of expertise to deliver its delightful flavor.</p>', 'Filling Dairy Chocolate With Rapper  : Are You Chocolate Lover? You are at the right Place to Buy. Kodaikanal made is well known for Chocolates. We are from kodaikanal hills.\n\nCocoa powder, Vanilla extract are the main inheritance of our chocolates, Avako Chocolate is said to have amazing and unique taste sensation and aromas. It is produced by natural and fresh ingredients and a lot of expertise to deliver its delightful flavor.\n\nWe still follow the old Traditional way of like tempering the chocolate manually and using over 40% cocoa. Their chocolate is hand tempered at a specific temperature to produce a finer quality and then blended with untempered chocolate. They are mostly known for their use of rich dark chocolate.\n\nOur collection boasts the best chocolate in India, with a variety that spans the spectrum from decadent dark chocolate to velvety white chocolate. Immerse yourself in the richness of flavor with our almond, fruit, and assorted chocolates, each handcrafted to perfection.\n\nFor All Food Products No cash on delivery and No return Option\n\nMore Varieties https://www.avako.in/product-category/homemade-chocolate\n\nNote:\nOnce you receive our chocolate box, please keep the chocolates in the refrigerator for 30+ minutes before eating them. We suggest you store our chocolate in cool and dry places to preserve the best aroma and taste of the chocolate.\n\nIf they are exposed to high temperatures, they may begin to soften, compromising the appearance and flavor.\n\nThe image displayed is indicative in nature. The actual product may vary in shape or design as per availability.\n\nAvailable Wholesale and Retail too. For Bulk Orders for any occasions contact us through WhatsApp @ 9626646861'),
(52, 52, 'en', 'Gems Colorful Chocolate | Homemade Candy – Avako.in', '<p>Gems Colorful Chocolate&nbsp;: Are You Chocolate Lover? You are at the right Place to Buy. Kodaikanal made is well known for Chocolates. We are from kodaikanal hills.</p>\n<p>Cocoa powder, Vanilla extract are the main inheritance of our chocolates, Avako.in Chocolate is said to have amazing and unique taste sensation and aromas. It is produced by natural and fresh ingredients and a lot of expertise to deliver its delightful flavor.</p>\n<p>We still follow the old Traditional way of like tempering the chocolate manually and using over 40% cocoa. Their chocolate is hand tempered at a specific temperature to produce a finer quality and then blended with untempered chocolate. They are mostly known for their use of rich dark chocolate.</p>\n<p>Our collection boasts the best chocolate in India, with a variety that spans the spectrum from decadent dark chocolate to velvety white chocolate. Immerse yourself in the richness of flavor with our almond, fruit, and assorted chocolates, each handcrafted to perfection.</p>\n<p>For All Food Products No cash on delivery and No return Option</p>\n<p>More Varieties&nbsp;<a href=\"https://www.avako.in/product-category/homemade-chocolate/\">https://www.avako.in/product-category/homemade-chocolate</a></p>', 'Gems Colorful Chocolate : Are You Chocolate Lover? You are at the right Place to Buy. Kodaikanal made is well known for Chocolates. We are from kodaikanal hills.\n\nCocoa powder, Vanilla extract are the main inheritance of our chocolates, Avako.in Chocolate is said to have amazing and unique taste sensation and aromas. It is produced by natural and fresh ingredients and a lot of expertise to deliver its delightful flavor.\n\nWe still follow the old Traditional way of like tempering the chocolate manually and using over 40% cocoa. Their chocolate is hand tempered at a specific temperature to produce a finer quality and then blended with untempered chocolate. They are mostly known for their use of rich dark chocolate.\n\nOur collection boasts the best chocolate in India, with a variety that spans the spectrum from decadent dark chocolate to velvety white chocolate. Immerse yourself in the richness of flavor with our almond, fruit, and assorted chocolates, each handcrafted to perfection.\n\nFor All Food Products No cash on delivery and No return Option\n\nMore Varieties https://www.avako.in/product-category/homemade-chocolate\n\nNote:\nOnce you receive our chocolate box, please keep the chocolates in the refrigerator for 30+ minutes before eating them. We suggest you store our chocolate in cool and dry places to preserve the best aroma and taste of the chocolate.\n\nIf they are exposed to high temperatures, they may begin to soften, compromising the appearance and flavor.\n\nThe image displayed is indicative in nature. The actual product may vary in shape or design as per availability.\n\nAvailable Wholesale and Retail too. For Bulk Orders for any occasions contact us through WhatsApp @ 9626646861');

-- --------------------------------------------------------

--
-- Table structure for table `product_variants`
--

CREATE TABLE `product_variants` (
  `id` int UNSIGNED NOT NULL,
  `uid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uids` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` int UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` decimal(18,4) UNSIGNED DEFAULT NULL,
  `special_price` decimal(18,4) UNSIGNED DEFAULT NULL,
  `special_price_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `special_price_start` date DEFAULT NULL,
  `special_price_end` date DEFAULT NULL,
  `selling_price` decimal(18,4) UNSIGNED DEFAULT NULL,
  `sku` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `manage_stock` tinyint(1) DEFAULT NULL,
  `qty` int DEFAULT NULL,
  `in_stock` tinyint(1) DEFAULT NULL,
  `is_default` tinyint(1) DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `position` int UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_variants`
--

INSERT INTO `product_variants` (`id`, `uid`, `uids`, `product_id`, `name`, `price`, `special_price`, `special_price_type`, `special_price_start`, `special_price_end`, `selling_price`, `sku`, `manage_stock`, `qty`, `in_stock`, `is_default`, `is_active`, `position`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, '213184c3ff2c264d9169664f88bc5761', '6615a4owlpk4', 3, '1 KG', 120.0000, 120.0000, 'fixed', NULL, NULL, 120.0000, 'AVAKO000001', 0, NULL, 1, 1, 1, 1, NULL, '2025-06-29 09:06:37', '2025-06-29 09:06:37'),
(2, '965216fdbb59fd1b1e151536ae9b44ff', 'gjc8tij8cazy', 3, '1/2 KG', 70.0000, 70.0000, 'fixed', NULL, NULL, 70.0000, 'AVAKO000002', 0, NULL, 1, 0, 1, 2, NULL, '2025-06-29 09:06:37', '2025-06-29 09:06:37'),
(3, '105b717f792cb986d1ce80a7911cdd28', 'rplo6sg6w78t', 4, '1 KG', 450.0000, 320.0000, 'fixed', NULL, NULL, 320.0000, 'AVAKO000002', 0, NULL, 1, 1, 1, 1, NULL, '2025-06-29 09:11:11', '2025-06-29 09:23:03'),
(4, '1649cbd9658542e639e0dc776d19e8af', 'dl9v3el3o5qo', 5, '1 KG', 120.0000, 85.0000, 'fixed', NULL, NULL, 85.0000, 'AVAKO000004', 0, NULL, 1, 1, 1, 1, NULL, '2025-06-29 09:32:04', '2025-06-29 09:33:25'),
(5, 'a2e62654bce72856d860f261cf33c2c6', '2cin91ix301t', 5, '1/2 KG', 200.0000, 165.0000, 'fixed', NULL, NULL, 165.0000, 'AVAKO000005', 0, NULL, 1, 0, 1, 2, NULL, '2025-06-29 09:32:04', '2025-06-29 09:33:25'),
(6, '19da8f5af6ded0eb822a0eaf1890cc6f', '5b470t0ccewm', 6, '1 KG', 600.0000, 499.0000, 'fixed', NULL, NULL, 499.0000, 'AVAKO000006', 0, NULL, 1, 1, 1, 1, NULL, '2025-06-29 09:38:17', '2025-06-29 09:38:17'),
(7, 'dea28bc230fea9db77caffd56d83a709', 'bf4yee21oawu', 6, '1/2 KG', 300.0000, 250.0000, 'fixed', NULL, NULL, 250.0000, 'AVAKO000007', 0, NULL, 1, 0, 1, 2, NULL, '2025-06-29 09:38:17', '2025-06-29 09:38:17'),
(8, '11a4ca6f1c0d8d1adc5c5a457ed322db', 'k2sy7eknrcq9', 7, '100ml', 400.0000, 199.0000, 'fixed', NULL, NULL, 199.0000, NULL, 0, NULL, 1, 1, 1, 1, NULL, '2025-06-29 10:33:57', '2025-06-29 10:33:57'),
(9, 'e985c120968e7ae53ec7a127c54da788', '2dikfo101b38', 7, '60ml', 199.0000, 109.0000, 'fixed', NULL, NULL, 109.0000, NULL, 0, NULL, 1, 0, 1, 2, NULL, '2025-06-29 10:33:57', '2025-06-29 10:33:57'),
(10, '6d8256be8816dbd6d695abb7d16ed611', 'iux46ixnl97e', 8, '100 ml', 299.0000, 189.0000, 'fixed', NULL, NULL, 189.0000, NULL, 0, NULL, 1, 1, 1, 1, NULL, '2025-06-30 15:53:14', '2025-06-30 16:07:59'),
(11, '4226b3664c9fac23b855b91554b27b04', 'ek1or912df85', 8, '60ml', 160.0000, 99.0000, 'fixed', NULL, NULL, 99.0000, NULL, 0, NULL, 1, 0, 1, 2, NULL, '2025-06-30 15:53:14', '2025-06-30 16:07:59'),
(12, 'e468842305dc1a5d2e09b4c17b91b7c4', '5g3k1f6yzuxw', 9, '100 gm', 200.0000, 139.0000, 'fixed', NULL, NULL, 139.0000, NULL, 0, NULL, 1, 1, 1, 1, NULL, '2025-06-30 16:07:34', '2025-07-09 16:16:15'),
(13, '77adaa6267dc484e9fc882b1aee5ea36', '42a1ldbkxncm', 9, '200 gm', 360.0000, 279.0000, 'fixed', NULL, NULL, 279.0000, NULL, 0, NULL, 1, 0, 1, 2, NULL, '2025-06-30 16:07:34', '2025-07-09 16:16:15'),
(14, '77e2f29a3b3ff881b5876bc1c9eb9c7a', '61cg2pd03v89', 10, '150g', 190.0000, 159.0000, 'fixed', NULL, NULL, 159.0000, NULL, 0, NULL, 1, 1, 1, 1, NULL, '2025-06-30 16:15:10', '2025-06-30 16:16:09'),
(15, '1e6a59d74e0389d63b6b14ae5731ab19', 'g0x9br4lntel', 10, '200g', 300.0000, 199.0000, 'fixed', NULL, NULL, 199.0000, NULL, 0, NULL, 1, 0, 1, 2, NULL, '2025-06-30 16:15:10', '2025-06-30 16:16:09'),
(16, 'b2f5608caa45751d5e35e86ed9b254a6', 'csnfe6q7jh91', 10, '300g', 400.0000, 297.0000, 'fixed', NULL, NULL, 297.0000, NULL, 0, NULL, 1, 0, 1, 3, NULL, '2025-06-30 16:15:10', '2025-06-30 16:16:09'),
(17, '0b423db2968362b229788db95aac26bb', '6coonq0al7qt', 10, '500g', 600.0000, 479.0000, 'fixed', NULL, NULL, 479.0000, NULL, 0, NULL, 1, 0, 1, 4, NULL, '2025-06-30 16:15:10', '2025-06-30 16:16:09'),
(18, '9f49134e0c9dfebef0139b0761935ee2', 'kuw21c5raiy2', 11, '100gms', 350.0000, 289.0000, 'fixed', NULL, NULL, 289.0000, NULL, 0, NULL, 1, 1, 1, 1, NULL, '2025-06-30 16:28:21', '2025-06-30 16:28:46'),
(19, '7c6a2f4459fd8a33db99f58da283623b', 'euwlp7kqoejb', 11, '150gms', 550.0000, 429.0000, 'fixed', NULL, NULL, 429.0000, NULL, 0, NULL, 1, 0, 1, 2, NULL, '2025-06-30 16:28:21', '2025-06-30 16:28:46'),
(20, 'fa94fdcc030c1e8378866693777e340f', 'admf0gu6k33c', 11, '200gms', 690.0000, 579.0000, 'fixed', NULL, NULL, 579.0000, NULL, 0, NULL, 1, 0, 1, 3, NULL, '2025-06-30 16:28:21', '2025-06-30 16:28:46'),
(21, '0cd71627b1b2958c771fceb2981a879b', 'hxdb07k9hy5c', 11, '300gms', 990.0000, 859.0000, 'fixed', NULL, NULL, 859.0000, NULL, 0, NULL, 1, 0, 1, 4, NULL, '2025-06-30 16:28:21', '2025-06-30 16:28:46'),
(22, 'e90e0d6ba7c37c5257e4fa55272638aa', 'lfzdvison4i3', 12, '60gms', 220.0000, 169.0000, 'fixed', NULL, NULL, 169.0000, NULL, 0, NULL, 1, 1, 1, 1, NULL, '2025-07-02 20:51:37', '2025-07-09 16:17:48'),
(23, '8331b829a41be2545a377795ae1181bf', '47nn3msadis1', 12, '120gms', 399.0000, 339.0000, 'fixed', NULL, NULL, 339.0000, NULL, 0, NULL, 1, 0, 1, 2, NULL, '2025-07-02 20:51:37', '2025-07-09 16:17:48'),
(24, '5e2f53d51f02e93ee458a64d5f619099', 'k5jk22s9cjt7', 12, '200gms', 650.0000, 559.0000, 'fixed', NULL, NULL, 559.0000, NULL, 0, NULL, 1, 0, 1, 3, NULL, '2025-07-02 20:51:37', '2025-07-09 16:17:48'),
(25, 'cde364dffd140b0920d78ea381d8649b', '3eqqgmum5tta', 13, '150gms', 150.0000, 89.0000, 'fixed', NULL, NULL, 89.0000, NULL, 0, NULL, 1, 1, 1, 1, NULL, '2025-07-02 20:57:21', '2025-07-09 16:18:10'),
(26, '7fd25a2b0078bd11e04abace5a2f1a96', 'cmcqj8gvftdw', 13, '300gms', 180.0000, 139.0000, 'fixed', NULL, NULL, 139.0000, NULL, 0, NULL, 1, 0, 1, 2, NULL, '2025-07-02 20:57:21', '2025-07-09 16:18:10'),
(27, 'e22b336ea33bfc4242693d3c580af3dd', 'dduqa5kbnzaz', 14, '150gms', 209.0000, 149.0000, 'fixed', NULL, NULL, 149.0000, NULL, 0, NULL, 1, 1, 1, 1, NULL, '2025-07-02 21:08:22', '2025-07-09 16:18:28'),
(28, '29fb786ebd4b23e9fdfb90bb462fbd36', '3hnbt1tcdfxw', 14, '300gms', 360.0000, 297.0000, 'fixed', NULL, NULL, 297.0000, NULL, 0, NULL, 1, 0, 1, 2, NULL, '2025-07-02 21:08:22', '2025-07-09 16:18:28'),
(29, '0720e0da31d45428f30a2f204f1b2577', 'dxywsyc612k1', 14, '500gms', 590.0000, 495.0000, 'fixed', NULL, NULL, 495.0000, NULL, 0, NULL, 1, 0, 1, 3, NULL, '2025-07-02 21:08:22', '2025-07-09 16:18:28'),
(30, '541459a046bd80a1f8da43f4c2bff5c5', 'f9sbf49cjetr', 14, '1Kg', 1200.0000, 990.0000, 'fixed', NULL, NULL, 990.0000, NULL, 0, NULL, 1, 0, 1, 4, NULL, '2025-07-02 21:08:22', '2025-07-09 16:18:28'),
(31, '1dbd3840b747eed312f889a770e7bb13', '368dtoyqgxl7', 15, '150g', 220.0000, 175.0000, 'fixed', NULL, NULL, 175.0000, NULL, 0, NULL, 1, 1, 1, 1, NULL, '2025-07-02 21:15:00', '2025-07-09 16:19:13'),
(32, '0539b7fba2b7ca76a015e2c2fb0ad0dd', 'f5i105d724lo', 15, '200g', 330.0000, 239.0000, 'fixed', NULL, NULL, 239.0000, NULL, 0, NULL, 1, 0, 1, 2, NULL, '2025-07-02 21:15:00', '2025-07-09 16:19:13'),
(33, 'a98576863a3bbd8426171fa8973699b2', 'br5la7ooiqvw', 15, '300g', 400.0000, 357.0000, 'fixed', NULL, NULL, 357.0000, NULL, 0, NULL, 1, 0, 1, 3, NULL, '2025-07-02 21:15:00', '2025-07-09 16:19:13'),
(34, '0b9440834d12df2ac791e75af49be72d', 'hw3dgvt84a1l', 16, '100gms', 340.0000, 279.0000, 'fixed', NULL, NULL, 279.0000, NULL, 0, NULL, 1, 1, 1, 1, NULL, '2025-07-02 21:27:51', '2025-07-09 16:19:32'),
(35, 'acc606d3a63f09ca2b47e316679059b7', '2frn9qryxock', 16, '150gms', 490.0000, 409.0000, 'fixed', NULL, NULL, 409.0000, NULL, 0, NULL, 1, 0, 1, 2, NULL, '2025-07-02 21:27:51', '2025-07-09 16:19:32'),
(36, '705592b5a39bd48a149223f14d1fccd0', 'bs6884qoml67', 16, '200gms', 690.0000, 559.0000, 'fixed', NULL, NULL, 559.0000, NULL, 0, NULL, 1, 0, 1, 3, NULL, '2025-07-02 21:27:51', '2025-07-09 16:19:32'),
(37, 'bb4044ddad2b459aae1061f37f23c75d', '5j3un2w1451d', 16, '300gms', 990.0000, 829.0000, 'fixed', NULL, NULL, 829.0000, NULL, 0, NULL, 1, 0, 1, 4, NULL, '2025-07-02 21:27:51', '2025-07-09 16:19:32'),
(38, '54cec69f3108e8d609948b023d8bdbe3', '9ji7qrrnmqeu', 17, '500g', 350.0000, 190.0000, 'fixed', NULL, NULL, 190.0000, NULL, 0, NULL, 1, 1, 1, 1, NULL, '2025-07-02 21:36:00', '2025-07-09 15:31:01'),
(39, 'f52a0cba3df1b0f437fde91fb6461e82', 'colkybo05h8x', 17, '1kg', 600.0000, 370.0000, 'fixed', NULL, NULL, 370.0000, NULL, 0, NULL, 1, 0, 1, 2, NULL, '2025-07-02 21:36:00', '2025-07-09 15:31:01'),
(40, 'd26f79404a487eb67bd7c4080f0282d9', 'guhdb8cl3zwc', 17, '2kg', 850.0000, 740.0000, 'fixed', NULL, NULL, 740.0000, NULL, 0, NULL, 1, 0, 1, 3, NULL, '2025-07-02 21:36:00', '2025-07-09 15:31:01'),
(41, '71d63672add7fa5726bb7306683c2b33', 'j30jwbdhw6a5', 18, '500g', 390.0000, 180.0000, 'fixed', NULL, NULL, 180.0000, NULL, 0, NULL, 1, 1, 1, 1, NULL, '2025-07-02 21:42:14', '2025-07-09 15:31:42'),
(42, '302fd9c3308db656eb0d896bb141131b', '99e03zkfoihs', 18, '1kg', 690.0000, 385.0000, 'fixed', NULL, NULL, 385.0000, NULL, 0, NULL, 1, 0, 1, 2, NULL, '2025-07-02 21:42:14', '2025-07-09 15:31:42'),
(43, 'e6369490e887624eb35e6661d8f5ea87', '2klx25x3ddxz', 18, '2kg', 800.0000, 640.0000, 'fixed', NULL, NULL, 640.0000, NULL, 0, NULL, 1, 0, 1, 3, NULL, '2025-07-02 21:42:14', '2025-07-09 15:31:42'),
(44, '782eac455e3e3205e0b52b3bf14a1e0a', '7werz24n7m83', 19, '500g', 400.0000, 250.0000, 'fixed', NULL, NULL, 250.0000, NULL, 0, NULL, 1, 1, 1, 1, NULL, '2025-07-02 21:45:48', '2025-07-09 15:37:36'),
(45, 'e08ab9027b9d3e883ff7aaf16369f5d3', '78lk84tmqkmj', 19, '1kg', 700.0000, 499.0000, 'fixed', NULL, NULL, 499.0000, NULL, 0, NULL, 1, 0, 1, 2, NULL, '2025-07-02 21:45:48', '2025-07-09 15:37:36'),
(46, 'd5a28d9f854111314b8f4f739775fefa', '5uieogt11pwf', 20, '50g', 80.0000, 69.0000, 'fixed', NULL, NULL, 69.0000, NULL, 0, NULL, 1, 1, 1, 1, NULL, '2025-07-02 22:02:59', '2025-07-09 16:18:52'),
(47, 'e22783423fc8b8a5358ffaed14c16572', 'jhp8q3glbp6y', 20, '100g', 200.0000, 119.0000, 'fixed', NULL, NULL, 119.0000, NULL, 0, NULL, 1, 0, 1, 2, NULL, '2025-07-02 22:02:59', '2025-07-09 16:18:52'),
(48, '56432e8315230c004f8a3d328fd097b0', 'chfh1ak39jk2', 21, '250g', 280.0000, 215.0000, 'fixed', NULL, NULL, 215.0000, NULL, 0, NULL, 1, 1, 1, 1, NULL, '2025-07-02 22:09:59', '2025-07-02 22:09:59'),
(49, '4cd845a13e612bb66fcb121e878d0da6', '7ryx0x5xvymc', 21, '500g', 450.0000, 425.0000, 'fixed', NULL, NULL, 425.0000, NULL, 0, NULL, 1, 0, 1, 2, NULL, '2025-07-02 22:09:59', '2025-07-02 22:09:59'),
(50, '50eb27bb765ef9d1a050b1c2e2365ecd', '3jlltfeqo645', 21, '1kg', 950.0000, 850.0000, 'fixed', NULL, NULL, 850.0000, NULL, 0, NULL, 1, 0, 1, 3, NULL, '2025-07-02 22:09:59', '2025-07-02 22:09:59'),
(51, '62db2760123616122506191b58d18a7b', '2khv118j1ija', 22, '250g', 340.0000, 205.0000, 'fixed', NULL, NULL, 205.0000, NULL, 0, NULL, 1, 1, 1, 1, NULL, '2025-07-02 22:16:53', '2025-07-02 22:16:53'),
(52, '6adb03c0f9c84d4183d552aa4b79e0e8', '87tkagx1l1zp', 22, '500g', 490.0000, 405.0000, 'fixed', NULL, NULL, 405.0000, NULL, 0, NULL, 1, 0, 1, 2, NULL, '2025-07-02 22:16:53', '2025-07-02 22:16:53'),
(53, 'f42ab44765496c39e97faecd3a75b670', '1ddwinr68f0s', 22, '750g', 750.0000, 610.0000, 'fixed', NULL, NULL, 610.0000, NULL, 0, NULL, 1, 0, 1, 3, NULL, '2025-07-02 22:16:53', '2025-07-02 22:16:53'),
(54, 'd76eb4add33633a43f8744cb668447a7', 'cfh2xhm4aqnp', 22, '1kg', 900.0000, 810.0000, 'fixed', NULL, NULL, 810.0000, NULL, 0, NULL, 1, 0, 1, 4, NULL, '2025-07-02 22:16:53', '2025-07-02 22:16:53'),
(55, '5aae4d6410890ebd9e80e9b31462f3e4', '1xn3i4jylvn3', 23, '250g', 290.0000, 220.0000, 'fixed', NULL, NULL, 220.0000, NULL, 0, NULL, 1, 1, 1, 1, NULL, '2025-07-02 22:25:42', '2025-07-02 22:26:42'),
(56, 'e43c9a36d7df7a0ba931801d4b574e49', '3z8jwtzbx2hj', 23, '500g', 550.0000, 440.0000, 'fixed', NULL, NULL, 440.0000, NULL, 0, NULL, 1, 0, 1, 2, NULL, '2025-07-02 22:25:42', '2025-07-02 22:26:42'),
(57, '7507fb4a9d2d10e13ad913f4ef1b6155', '32qa55br23ct', 24, '250g', 270.0000, 259.0000, 'fixed', NULL, NULL, 259.0000, NULL, 0, NULL, 1, 1, 1, 1, NULL, '2025-07-03 14:44:07', '2025-07-03 14:44:07'),
(58, 'a8c44f140d3d689e80e6ac9f5b0a1a79', 'jpo0twjsh9ql', 24, '500g', 470.0000, 409.0000, 'fixed', NULL, NULL, 409.0000, NULL, 0, NULL, 1, 0, 1, 2, NULL, '2025-07-03 14:44:07', '2025-07-03 14:44:07'),
(59, 'eb4aa6f4882e94426ea6684f7ac76ce0', 'b9gynteyfgkh', 25, '500g', 410.0000, 355.0000, 'fixed', NULL, NULL, 355.0000, NULL, 0, NULL, 1, 1, 1, 1, NULL, '2025-07-03 14:47:47', '2025-07-03 14:47:47'),
(60, '6ddd30e9acc2619a89219e2c6bf1e3f0', 'e30njhagh2i7', 25, '1kg', 800.0000, 710.0000, 'fixed', NULL, NULL, 710.0000, NULL, 0, NULL, 1, 0, 1, 2, NULL, '2025-07-03 14:47:47', '2025-07-03 14:47:47'),
(61, '41026669df47fce186f388a26ed313cb', 'imimr4nfe1i3', 25, '2kg', 1500.0000, 1400.0000, 'fixed', NULL, NULL, 1400.0000, NULL, 0, NULL, 1, 0, 1, 3, NULL, '2025-07-03 14:47:47', '2025-07-03 14:47:47'),
(62, 'a9e600c943f3369863f132d939101313', '3toe7vx5xe80', 26, '500g', 460.0000, 380.0000, 'fixed', NULL, NULL, 380.0000, NULL, 0, NULL, 1, 1, 1, 1, NULL, '2025-07-03 14:50:43', '2025-07-03 14:50:43'),
(63, '33e6b9b823e6cb65f73153dde8dc3d02', 'i8mgo62537hd', 26, '1kg', 800.0000, 760.0000, 'fixed', NULL, NULL, 760.0000, NULL, 0, NULL, 1, 0, 1, 2, NULL, '2025-07-03 14:50:43', '2025-07-03 14:50:43'),
(64, 'e1baa6f66bb6e08ed63dc38cfc0f3da3', 'aetn1xgnaf0k', 26, '2kg', 1600.0000, 1500.0000, 'fixed', NULL, NULL, 1500.0000, NULL, 0, NULL, 1, 0, 1, 3, NULL, '2025-07-03 14:50:43', '2025-07-03 14:50:43'),
(65, 'f4b214652f1712be93f8b3fa931d6587', '51loxmkkp9ky', 27, '1kg', 350.0000, 279.0000, 'fixed', NULL, NULL, 279.0000, NULL, 0, NULL, 1, 1, 1, 1, NULL, '2025-07-03 14:55:26', '2025-07-03 14:55:26'),
(66, 'd9d0c9ebe496d2f0e301fa1966ac062f', '8cry9wsvm149', 27, '2kg', 600.0000, 549.0000, 'fixed', NULL, NULL, 549.0000, NULL, 0, NULL, 1, 0, 1, 2, NULL, '2025-07-03 14:55:26', '2025-07-03 14:55:26'),
(67, '551283104a2f6a864ab2da7e8555a9cb', 'jsp32xbco0xs', 28, '500g', 180.0000, 155.0000, 'fixed', NULL, NULL, 155.0000, NULL, 0, NULL, 1, 1, 1, 1, NULL, '2025-07-03 14:57:50', '2025-07-03 14:58:11'),
(68, 'ef4612f9fe0035981562b18ea26d2455', 'kgvbrx8y9313', 28, '1kg', 350.0000, 285.0000, 'fixed', NULL, NULL, 285.0000, NULL, 0, NULL, 1, 0, 1, 2, NULL, '2025-07-03 14:57:50', '2025-07-03 14:58:11'),
(69, '2fea13aad4115da852d8eee5d4a9e575', '1hr41sum5dz8', 29, '2kg', 100.0000, 70.0000, 'fixed', NULL, NULL, 70.0000, NULL, 0, NULL, 1, 1, 1, 1, NULL, '2025-07-03 15:00:46', '2025-07-03 15:00:46'),
(70, 'bfa70b7789961b5c56587047848189b4', '2den7bzipoh7', 29, '4kg', 200.0000, 140.0000, 'fixed', NULL, NULL, 140.0000, NULL, 0, NULL, 1, 0, 1, 2, NULL, '2025-07-03 15:00:46', '2025-07-03 15:00:46'),
(71, 'c0d5a85a0a723a09b392774dd6124746', 'cwrywixm6jn3', 30, '1kg', 180.0000, 155.0000, 'fixed', NULL, NULL, 155.0000, NULL, 0, NULL, 1, 1, 1, 1, NULL, '2025-07-03 15:03:38', '2025-07-03 15:03:38'),
(72, '6c22ec3cfc4ecb7657672709a0e98a75', '7umnblsjyuv3', 30, '2kg', 330.0000, 299.0000, 'fixed', NULL, NULL, 299.0000, NULL, 0, NULL, 1, 0, 1, 2, NULL, '2025-07-03 15:03:38', '2025-07-03 15:03:38'),
(73, 'f5e8c716b0a23728cd45852a3fc58b47', 'df5nmvsk9d20', 31, '1kg', 199.0000, 139.0000, 'fixed', NULL, NULL, 139.0000, NULL, 0, NULL, 1, 1, 1, 1, NULL, '2025-07-03 15:06:06', '2025-07-03 15:06:19'),
(74, 'c54af0f565d4df7136db765072d34b97', 'kl4zs1icnntb', 31, '2kg', 299.0000, 279.0000, 'fixed', NULL, NULL, 279.0000, NULL, 0, NULL, 1, 0, 1, 2, NULL, '2025-07-03 15:06:06', '2025-07-03 15:06:19'),
(75, 'aeed734cb3fb419e6c519cca0dcf7c2c', 'bivvnum1z7gb', 32, '500g', 100.0000, 85.0000, 'fixed', NULL, NULL, 85.0000, NULL, 0, NULL, 1, 1, 1, 1, NULL, '2025-07-03 15:09:42', '2025-07-03 15:09:42'),
(76, '31b4c63b01cb056c2893ad763003528e', '3ee8twexo6yk', 32, '1kg', 200.0000, 155.0000, 'fixed', NULL, NULL, 155.0000, NULL, 0, NULL, 1, 0, 1, 2, NULL, '2025-07-03 15:09:42', '2025-07-03 15:09:42'),
(77, 'a9872e4e161ea584e960d86c6b56522c', '3kyin4678f3n', 33, '1/2 kg', 100.0000, 75.0000, 'fixed', NULL, NULL, 75.0000, NULL, 0, NULL, 1, 1, 1, 1, NULL, '2025-07-09 15:22:51', '2025-07-09 15:22:51'),
(78, '391c934cc59c67cadd6f66adca1b123a', '392sjxfxr5mw', 33, '1kg', 200.0000, 139.0000, 'fixed', NULL, NULL, 139.0000, NULL, 0, NULL, 1, 0, 1, 2, NULL, '2025-07-09 15:22:51', '2025-07-09 15:22:51'),
(79, '8d48498f51de566737624e448b5feaa2', 'bzarnx0d6cy6', 34, '1/2kg', 100.0000, 75.0000, 'fixed', '2025-07-09', '2025-07-31', 100.0000, NULL, 0, NULL, 1, 1, 1, 1, NULL, '2025-07-09 15:27:41', '2025-07-09 15:27:41'),
(80, 'f653ffab23af7df29a74bd9be6d83fc9', 'je1n5z3ck61n', 34, '1kg', 200.0000, 139.0000, 'fixed', NULL, NULL, 139.0000, NULL, 0, NULL, 1, 0, 1, 2, NULL, '2025-07-09 15:27:41', '2025-07-09 15:27:41'),
(81, '4f7e509f4ae3628421ba7e2cef82574d', 'k6amtah7ww15', 35, '250ml', 400.0000, 299.0000, 'fixed', NULL, NULL, 299.0000, NULL, 0, NULL, 1, 1, 1, 1, NULL, '2025-07-09 15:43:25', '2025-07-09 15:43:25'),
(82, '6d5b2c696682b30e84f55bb22ec26ae2', 'bg4zftzgacmp', 35, '500ml', 780.0000, 590.0000, 'fixed', NULL, NULL, 590.0000, NULL, 0, NULL, 1, 0, 1, 2, NULL, '2025-07-09 15:43:25', '2025-07-09 15:43:25'),
(83, '823266e838311277994932e82be49d68', 'irnxbsjicidy', 35, '1liter', 1300.0000, 1180.0000, 'fixed', NULL, NULL, 1180.0000, NULL, 0, NULL, 1, 0, 1, 3, NULL, '2025-07-09 15:43:25', '2025-07-09 15:43:25'),
(84, '438137cc79b342486fc56459038e622c', '61fkd6fqukfy', 36, '250ml', 400.0000, 315.0000, 'fixed', NULL, NULL, 315.0000, NULL, 0, NULL, 1, 1, 1, 1, NULL, '2025-07-09 15:54:30', '2025-07-09 15:54:30'),
(85, '58c0a0d40f98543fbf3579d2caafe0d7', '9jtck8xbi5gy', 36, '500ml', 750.0000, 625.0000, 'fixed', NULL, NULL, 625.0000, NULL, 0, NULL, 1, 0, 1, 2, NULL, '2025-07-09 15:54:30', '2025-07-09 15:54:30'),
(86, '921a1c74e188ef21d0be4ebd56712493', '1z6qxr7s6g63', 36, '1liter', 1500.0000, 1250.0000, 'fixed', NULL, NULL, 1250.0000, NULL, 0, NULL, 1, 0, 1, 3, NULL, '2025-07-09 15:54:30', '2025-07-09 15:54:30'),
(87, 'e416180b8fcc5b7fa94d246cea404646', 'c63ejm7ntlw6', 37, '250ml', 400.0000, 280.0000, 'fixed', NULL, NULL, 280.0000, NULL, 0, NULL, 1, 1, 1, 1, NULL, '2025-07-09 16:00:42', '2025-07-09 16:00:42'),
(88, 'a7a07a23dc23c93d773c00819a719fb7', 'h9ziso9hj3zl', 37, '500ml', 700.0000, 550.0000, 'fixed', NULL, NULL, 550.0000, NULL, 0, NULL, 1, 0, 1, 2, NULL, '2025-07-09 16:00:42', '2025-07-09 16:00:42'),
(89, 'd8e28c2a8726cc027f71999a613f82da', '5b1f0jzs0gx1', 37, '1liter', 1300.0000, 1099.0000, 'fixed', NULL, NULL, 1099.0000, NULL, 0, NULL, 1, 0, 1, 3, NULL, '2025-07-09 16:00:42', '2025-07-09 16:00:42'),
(90, '5c7764efab287ec9f6bd873bcc090d95', 'kg53651y2g0b', 38, '100g', 160.0000, 139.0000, 'fixed', NULL, NULL, 139.0000, NULL, 0, NULL, 1, 1, 1, 1, NULL, '2025-07-09 16:13:19', '2025-07-09 16:17:11'),
(91, '7f453a4d6b00e83d84d9ccc25899882b', '9yz9m1efflv5', 38, '200g', 300.0000, 276.0000, 'fixed', NULL, NULL, 276.0000, NULL, 0, NULL, 1, 0, 1, 2, NULL, '2025-07-09 16:13:19', '2025-07-09 16:17:11'),
(92, 'cc07df1f637dca5702a90bc49d48aaaa', '8fgzwe16rtwf', 39, '1kg', 490.0000, 370.0000, 'fixed', NULL, NULL, 370.0000, NULL, 0, NULL, 1, 1, 1, 1, NULL, '2025-07-10 14:17:20', '2025-07-10 14:17:20'),
(93, '2ee668d020d27356b5657f4750c16648', 'h73tn6eu7341', 40, '1kg', 540.0000, 399.0000, 'fixed', NULL, NULL, 399.0000, NULL, 0, NULL, 1, 1, 1, 1, NULL, '2025-07-10 14:19:58', '2025-07-10 14:19:58'),
(94, '18e5d7a1d3b194142ab378c949acec57', 'awlq51zgpnnx', 41, '1kg', 260.0000, 219.0000, 'fixed', NULL, NULL, 219.0000, NULL, 0, NULL, 1, 1, 1, 1, NULL, '2025-07-10 14:24:05', '2025-07-10 14:29:37'),
(95, 'd9799894df75e20a30321ff84d9dcf0f', '52liymu7nn6i', 41, '2kg', 499.0000, 399.0000, 'fixed', NULL, NULL, 399.0000, NULL, 0, NULL, 1, 0, 1, 2, NULL, '2025-07-10 14:24:05', '2025-07-10 14:29:37'),
(96, '767cef292a8e7b447cbbc01deec8383e', 'iupjqodeapbd', 42, '1kg', 240.0000, 199.0000, 'fixed', NULL, NULL, 199.0000, NULL, 0, NULL, 1, 1, 1, 1, NULL, '2025-07-10 14:28:19', '2025-07-10 14:28:19'),
(97, '2e208aab0654c10b9ad6f801b4a1b047', 'efh2d1sh3upu', 42, '2kg', 450.0000, 389.0000, 'fixed', NULL, NULL, 389.0000, NULL, 0, NULL, 1, 0, 1, 2, NULL, '2025-07-10 14:28:19', '2025-07-10 14:28:19'),
(98, 'fa03747dbf42643826f08c633855763f', 'fabl36iylrhb', 43, '1kg', 300.0000, 200.0000, 'fixed', NULL, NULL, 200.0000, NULL, 0, NULL, 1, 1, 1, 1, NULL, '2025-07-10 14:32:51', '2025-07-10 14:32:51'),
(99, '7efb21fc2b05aa5ccc1d5bb7553617be', 'lygly1bnoqh0', 43, '2kg', 400.0000, 299.0000, 'fixed', NULL, NULL, 299.0000, NULL, 0, NULL, 1, 0, 1, 2, NULL, '2025-07-10 14:32:51', '2025-07-10 14:32:51'),
(100, '91b56aa710773b52e63268e28d4d4ebc', 'd7o7loj83fui', 44, '500gm', 250.0000, 200.0000, 'fixed', NULL, NULL, 200.0000, NULL, 0, NULL, 1, 1, 1, 1, NULL, '2025-07-10 14:36:17', '2025-07-10 14:36:17'),
(101, 'eb4e8d6093830d45242918986d1fa93b', 'ce53iz5zs2ic', 44, '1kg', 500.0000, 399.0000, 'fixed', NULL, NULL, 399.0000, NULL, 0, NULL, 1, 0, 1, 2, NULL, '2025-07-10 14:36:17', '2025-07-10 14:36:17'),
(102, '3d656c1b45f12ec193846ba2a0ec3447', '5grc1g17407y', 45, '250gm', 400.0000, 300.0000, 'fixed', NULL, NULL, 300.0000, NULL, 0, NULL, 1, 1, 1, 1, NULL, '2025-07-10 14:41:29', '2025-07-10 14:41:29'),
(103, '40a03036433dbce4f9c004dc519bdf4a', 'gmi1hb6ovhrv', 45, '500gm', 800.0000, 600.0000, 'fixed', NULL, NULL, 600.0000, NULL, 0, NULL, 1, 0, 1, 2, NULL, '2025-07-10 14:41:29', '2025-07-10 14:41:29'),
(104, '2592eb2a5418c8c85d5f7a7b27052434', '3pc08239fgi3', 45, '1kg', 1400.0000, 1200.0000, 'fixed', NULL, NULL, 1200.0000, NULL, 0, NULL, 1, 0, 1, 3, NULL, '2025-07-10 14:41:29', '2025-07-10 14:41:29'),
(105, '10219780e09bf0f60b5e1fc19e0d023d', 'bsp30hb0cb9b', 46, '250gm', 220.0000, 159.0000, 'fixed', NULL, NULL, 159.0000, NULL, 0, NULL, 1, 1, 1, 1, NULL, '2025-07-10 14:45:26', '2025-07-10 14:45:26'),
(106, 'a3543cc9fd738bb698dee70dc90ea3ec', '8vyy88wwhi15', 46, '500gm', 450.0000, 319.0000, 'fixed', NULL, NULL, 319.0000, NULL, 0, NULL, 1, 0, 1, 2, NULL, '2025-07-10 14:45:26', '2025-07-10 14:45:26'),
(107, '83e05ccde8f8d723c797cad3594dcdbe', 'h39t6duf81qb', 46, '1kg', 850.0000, 599.0000, 'fixed', NULL, NULL, 599.0000, NULL, 0, NULL, 1, 0, 1, 3, NULL, '2025-07-10 14:45:26', '2025-07-10 14:45:26'),
(108, 'c9c3f4239dfbead849678a574e0f19d9', 'itrnj1sak5um', 47, '250gm', 298.0000, 169.0000, 'fixed', NULL, NULL, 169.0000, NULL, 0, NULL, 1, 1, 1, 1, NULL, '2025-07-10 14:48:52', '2025-07-10 14:48:52'),
(109, '7c63ab6fd70ece09baaaac9db1edbbbb', 'gcfamsqh97t2', 47, '500gm', 450.0000, 349.0000, 'fixed', NULL, NULL, 349.0000, NULL, 0, NULL, 1, 0, 1, 2, NULL, '2025-07-10 14:48:52', '2025-07-10 14:48:52'),
(110, 'cc72922a3c50154bd9d31db524e665b2', 'ac1fugnoa522', 47, '1kg', 800.0000, 689.0000, 'fixed', NULL, NULL, 689.0000, NULL, 0, NULL, 1, 0, 1, 3, NULL, '2025-07-10 14:48:53', '2025-07-10 14:48:53'),
(111, 'b8aa813a1530fb6232dc191fceb34eb1', 'ddijnyfk2n91', 48, '250gm', 250.0000, 199.0000, 'fixed', NULL, NULL, 199.0000, NULL, 0, NULL, 1, 1, 1, 1, NULL, '2025-07-10 14:52:38', '2025-07-10 14:52:38'),
(112, 'f5491e85d582339d94c0d747db7729c4', 'a5ili6jxn7ns', 48, '500gm', 500.0000, 399.0000, 'fixed', NULL, NULL, 399.0000, NULL, 0, NULL, 1, 0, 1, 2, NULL, '2025-07-10 14:52:38', '2025-07-10 14:52:38'),
(113, '2b969b14455df058b9bdb1a9b394bdd2', '8x5bfvsxe681', 48, '1kg', 1000.0000, 799.0000, 'fixed', NULL, NULL, 799.0000, NULL, 0, NULL, 1, 0, 1, 3, NULL, '2025-07-10 14:52:38', '2025-07-10 14:52:38'),
(114, 'c711af4be2f23f1da22305cd41bd71be', 'dleqo8ogqb9w', 49, '250gm', 299.0000, 199.0000, 'fixed', NULL, NULL, 199.0000, NULL, 0, NULL, 1, 1, 1, 1, NULL, '2025-07-10 14:55:08', '2025-07-10 14:55:08'),
(115, 'b3f26f540999e9c29392e846bd19b1dc', 'kjwej682zuv7', 49, '500gm', 500.0000, 399.0000, 'fixed', NULL, NULL, 399.0000, NULL, 0, NULL, 1, 0, 1, 2, NULL, '2025-07-10 14:55:08', '2025-07-10 14:55:08'),
(116, 'b172e05a90918bb76274a6dc2209f645', '6qloytyb1kl5', 49, '1kg', 900.0000, 789.0000, 'fixed', NULL, NULL, 789.0000, NULL, 0, NULL, 1, 0, 1, 3, NULL, '2025-07-10 14:55:08', '2025-07-10 14:55:08'),
(117, 'f6d12a03ba8c0407b11f3961dba9d653', 'j5bkyv3nfy9x', 50, '250gm', 250.0000, 169.0000, 'fixed', NULL, NULL, 169.0000, NULL, 0, NULL, 1, 1, 1, 1, NULL, '2025-07-10 14:57:49', '2025-07-10 14:57:49'),
(118, '1a2faf96998de942abd470df0487ee06', '1z7v6v5ao5h4', 50, '500gm', 450.0000, 349.0000, 'fixed', NULL, NULL, 349.0000, NULL, 0, NULL, 1, 0, 1, 2, NULL, '2025-07-10 14:57:49', '2025-07-10 14:57:49'),
(119, 'cd71d129b396cccbe090631e88f94f32', '5g72i797ctky', 50, '1kg', 900.0000, 699.0000, 'fixed', NULL, NULL, 699.0000, NULL, 0, NULL, 1, 0, 1, 3, NULL, '2025-07-10 14:57:49', '2025-07-10 14:57:49'),
(120, 'b5b00f431ff6a78b6f972f825072a919', '9n4qnarpno4l', 51, '250gm', 199.0000, 159.0000, 'fixed', NULL, NULL, 159.0000, NULL, 0, NULL, 1, 1, 1, 1, NULL, '2025-07-10 15:00:22', '2025-07-10 15:00:22'),
(121, 'ea8fc66032e9ae65b5f76b04eb76a2b0', 'aeyvicvpfvyo', 51, '500gm', 450.0000, 319.0000, 'fixed', NULL, NULL, 319.0000, NULL, 0, NULL, 1, 0, 1, 2, NULL, '2025-07-10 15:00:22', '2025-07-10 15:00:22'),
(122, '8675858eb78ce3e1a511fa5b86e5a3ad', '7x0t36k9knfk', 51, '1kg', 790.0000, 619.0000, 'fixed', NULL, NULL, 619.0000, NULL, 0, NULL, 1, 0, 1, 3, NULL, '2025-07-10 15:00:22', '2025-07-10 15:00:22'),
(123, '9a16f0c596afebc0e3bd75a9c72ac88b', '6zyn48c3pizz', 52, '250gm', 189.0000, 149.0000, 'fixed', NULL, NULL, 149.0000, NULL, 0, NULL, 1, 1, 1, 1, NULL, '2025-07-10 15:03:13', '2025-07-10 15:03:13'),
(124, 'c0c69af38b2d3d60193e321aa090bb0f', '5lsnykja592t', 52, '500gm', 400.0000, 299.0000, 'fixed', NULL, NULL, 299.0000, NULL, 0, NULL, 1, 0, 1, 2, NULL, '2025-07-10 15:03:14', '2025-07-10 15:03:14'),
(125, '6c0038bfa253d71ad88f72df289d9976', '5cx4kpcbef6j', 52, '1kg', 750.0000, 589.0000, 'fixed', NULL, NULL, 589.0000, NULL, 0, NULL, 1, 0, 1, 3, NULL, '2025-07-10 15:03:14', '2025-07-10 15:03:14');

-- --------------------------------------------------------

--
-- Table structure for table `product_variations`
--

CREATE TABLE `product_variations` (
  `product_id` int UNSIGNED NOT NULL,
  `variation_id` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_variations`
--

INSERT INTO `product_variations` (`product_id`, `variation_id`) VALUES
(3, 2),
(4, 3),
(5, 4),
(6, 5),
(7, 6),
(8, 7),
(9, 8),
(10, 9),
(11, 10),
(12, 11),
(13, 12),
(14, 13),
(15, 14),
(16, 15),
(17, 16),
(18, 17),
(19, 18),
(20, 19),
(21, 20),
(22, 21),
(23, 22),
(24, 23),
(25, 24),
(26, 25),
(27, 26),
(28, 27),
(29, 28),
(30, 29),
(31, 30),
(32, 31),
(33, 32),
(34, 33),
(35, 34),
(36, 35),
(37, 36),
(38, 37),
(39, 38),
(40, 39),
(41, 40),
(42, 41),
(43, 42),
(44, 43),
(45, 44),
(46, 45),
(47, 46),
(48, 47),
(49, 48),
(50, 49),
(51, 50),
(52, 51);

-- --------------------------------------------------------

--
-- Table structure for table `related_products`
--

CREATE TABLE `related_products` (
  `product_id` int UNSIGNED NOT NULL,
  `related_product_id` int UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reminders`
--

CREATE TABLE `reminders` (
  `id` int UNSIGNED NOT NULL,
  `user_id` int UNSIGNED NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `completed` tinyint(1) NOT NULL DEFAULT '0',
  `completed_at` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` int UNSIGNED NOT NULL,
  `reviewer_id` int UNSIGNED DEFAULT NULL,
  `product_id` int UNSIGNED NOT NULL,
  `rating` int NOT NULL,
  `reviewer_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_approved` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int UNSIGNED NOT NULL,
  `permissions` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `permissions`, `created_at`, `updated_at`) VALUES
(1, '{\"admin.users.index\":true,\"admin.users.create\":true,\"admin.users.edit\":true,\"admin.users.destroy\":true,\"admin.roles.index\":true,\"admin.roles.create\":true,\"admin.roles.edit\":true,\"admin.roles.destroy\":true,\"admin.products.index\":true,\"admin.products.create\":true,\"admin.products.edit\":true,\"admin.products.destroy\":true,\"admin.brands.index\":true,\"admin.brands.create\":true,\"admin.brands.edit\":true,\"admin.brands.destroy\":true,\"admin.attributes.index\":true,\"admin.attributes.create\":true,\"admin.attributes.edit\":true,\"admin.attributes.destroy\":true,\"admin.attribute_sets.index\":true,\"admin.attribute_sets.create\":true,\"admin.attribute_sets.edit\":true,\"admin.attribute_sets.destroy\":true,\"admin.variations.index\":true,\"admin.variations.create\":true,\"admin.variations.edit\":true,\"admin.variations.destroy\":true,\"admin.options.index\":true,\"admin.options.create\":true,\"admin.options.edit\":true,\"admin.options.destroy\":true,\"admin.filters.index\":true,\"admin.filters.create\":true,\"admin.filters.edit\":true,\"admin.filters.destroy\":true,\"admin.reviews.index\":true,\"admin.reviews.create\":true,\"admin.reviews.edit\":true,\"admin.reviews.destroy\":true,\"admin.categories.index\":true,\"admin.categories.create\":true,\"admin.categories.edit\":true,\"admin.categories.destroy\":true,\"admin.tags.index\":true,\"admin.tags.create\":true,\"admin.tags.edit\":true,\"admin.tags.destroy\":true,\"admin.orders.index\":true,\"admin.orders.show\":true,\"admin.orders.edit\":true,\"admin.flash_sales.index\":true,\"admin.flash_sales.create\":true,\"admin.flash_sales.edit\":true,\"admin.flash_sales.destroy\":true,\"admin.transactions.index\":true,\"admin.coupons.index\":true,\"admin.coupons.create\":true,\"admin.coupons.edit\":true,\"admin.coupons.destroy\":true,\"admin.menus.index\":true,\"admin.menus.create\":true,\"admin.menus.edit\":true,\"admin.menus.destroy\":true,\"admin.menu_items.index\":true,\"admin.menu_items.create\":true,\"admin.menu_items.edit\":true,\"admin.menu_items.destroy\":true,\"admin.media.index\":true,\"admin.media.create\":true,\"admin.media.destroy\":true,\"admin.pages.index\":true,\"admin.pages.create\":true,\"admin.pages.edit\":true,\"admin.pages.destroy\":true,\"admin.currency_rates.index\":true,\"admin.currency_rates.edit\":true,\"admin.taxes.index\":true,\"admin.taxes.create\":true,\"admin.taxes.edit\":true,\"admin.taxes.destroy\":true,\"admin.translations.index\":true,\"admin.translations.edit\":true,\"admin.sliders.index\":true,\"admin.sliders.create\":true,\"admin.sliders.edit\":true,\"admin.sliders.destroy\":true,\"admin.reports.index\":true,\"admin.settings.edit\":true,\"admin.storefront.edit\":true}', '2025-06-29 01:24:28', '2025-06-29 01:24:28'),
(2, '{\"admin.users.index\":true,\"admin.users.create\":true,\"admin.users.edit\":true,\"admin.users.destroy\":true,\"admin.roles.index\":true,\"admin.roles.create\":true,\"admin.roles.edit\":true,\"admin.roles.destroy\":true,\"admin.products.index\":true,\"admin.products.create\":true,\"admin.products.edit\":true,\"admin.products.destroy\":true,\"admin.brands.index\":true,\"admin.brands.create\":true,\"admin.brands.edit\":true,\"admin.brands.destroy\":true,\"admin.attributes.index\":true,\"admin.attributes.create\":true,\"admin.attributes.edit\":true,\"admin.attributes.destroy\":true,\"admin.attribute_sets.index\":true,\"admin.attribute_sets.create\":true,\"admin.attribute_sets.edit\":true,\"admin.attribute_sets.destroy\":true,\"admin.variations.index\":true,\"admin.variations.create\":true,\"admin.variations.edit\":true,\"admin.variations.destroy\":true,\"admin.options.index\":true,\"admin.options.create\":true,\"admin.options.edit\":true,\"admin.options.destroy\":true,\"admin.filters.index\":true,\"admin.filters.create\":true,\"admin.filters.edit\":true,\"admin.filters.destroy\":true,\"admin.reviews.index\":true,\"admin.reviews.create\":true,\"admin.reviews.edit\":true,\"admin.reviews.destroy\":true,\"admin.categories.index\":true,\"admin.categories.create\":true,\"admin.categories.edit\":true,\"admin.categories.destroy\":true,\"admin.tags.index\":true,\"admin.tags.create\":true,\"admin.tags.edit\":true,\"admin.tags.destroy\":true,\"admin.orders.index\":true,\"admin.orders.show\":true,\"admin.orders.edit\":true,\"admin.flash_sales.index\":true,\"admin.flash_sales.create\":true,\"admin.flash_sales.edit\":true,\"admin.flash_sales.destroy\":true,\"admin.transactions.index\":true,\"admin.coupons.index\":true,\"admin.coupons.create\":true,\"admin.coupons.edit\":true,\"admin.coupons.destroy\":true,\"admin.menus.index\":true,\"admin.menus.create\":true,\"admin.menus.edit\":true,\"admin.menus.destroy\":true,\"admin.menu_items.index\":true,\"admin.menu_items.create\":true,\"admin.menu_items.edit\":true,\"admin.menu_items.destroy\":true,\"admin.blog_posts.index\":true,\"admin.blog_posts.create\":true,\"admin.blog_posts.edit\":true,\"admin.blog_posts.destroy\":true,\"admin.blog_categories.index\":true,\"admin.blog_categories.create\":true,\"admin.blog_categories.edit\":true,\"admin.blog_categories.destroy\":true,\"admin.blog_tags.index\":true,\"admin.blog_tags.create\":true,\"admin.blog_tags.edit\":true,\"admin.blog_tags.destroy\":true,\"admin.importer.import\":true,\"admin.media.index\":true,\"admin.media.create\":true,\"admin.media.destroy\":true,\"admin.pages.index\":true,\"admin.pages.create\":true,\"admin.pages.edit\":true,\"admin.pages.destroy\":true,\"admin.currency_rates.index\":true,\"admin.currency_rates.edit\":true,\"admin.taxes.index\":true,\"admin.taxes.create\":true,\"admin.taxes.edit\":true,\"admin.taxes.destroy\":true,\"admin.languages.index\":true,\"admin.languages.add\":true,\"admin.translations.index\":true,\"admin.translations.edit\":true,\"admin.sliders.index\":true,\"admin.sliders.create\":true,\"admin.sliders.edit\":true,\"admin.sliders.destroy\":true,\"admin.reports.index\":true,\"admin.settings.edit\":true,\"admin.storefront.edit\":true}', '2025-06-29 01:28:19', '2025-06-29 01:28:19'),
(3, NULL, '2025-06-29 01:28:19', '2025-06-29 01:28:19');

-- --------------------------------------------------------

--
-- Table structure for table `role_translations`
--

CREATE TABLE `role_translations` (
  `id` int UNSIGNED NOT NULL,
  `role_id` int UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_translations`
--

INSERT INTO `role_translations` (`id`, `role_id`, `locale`, `name`) VALUES
(1, 1, 'en', 'Super Admin'),
(2, 2, 'en', 'Admin'),
(3, 3, 'en', 'Customer');

-- --------------------------------------------------------

--
-- Table structure for table `search_terms`
--

CREATE TABLE `search_terms` (
  `id` int UNSIGNED NOT NULL,
  `term` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `results` int UNSIGNED NOT NULL,
  `hits` int UNSIGNED NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int UNSIGNED NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_translatable` tinyint(1) NOT NULL DEFAULT '0',
  `plain_value` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `is_translatable`, `plain_value`, `created_at`, `updated_at`) VALUES
(1, 'store_name', 1, NULL, '2025-06-29 01:28:19', '2025-06-29 01:28:19'),
(2, 'store_email', 0, 's:17:\"azzok17@gmail.com\";', '2025-06-29 01:28:19', '2025-06-29 01:28:19'),
(3, 'store_phone', 0, 's:13:\"044 4347 1800\";', '2025-06-29 01:28:19', '2025-06-29 07:26:05'),
(4, 'search_engine', 0, 's:5:\"mysql\";', '2025-06-29 01:28:19', '2025-06-29 01:28:19'),
(5, 'algolia_app_id', 0, 'N;', '2025-06-29 01:28:19', '2025-06-29 01:28:19'),
(6, 'algolia_secret', 0, 'N;', '2025-06-29 01:28:19', '2025-06-29 01:28:19'),
(7, 'meilisearch_host', 0, 'N;', '2025-06-29 01:28:19', '2025-06-29 01:28:19'),
(8, 'meilisearch_key', 0, 'N;', '2025-06-29 01:28:19', '2025-06-29 01:28:19'),
(9, 'supported_countries', 0, 'a:1:{i:0;s:2:\"IN\";}', '2025-06-29 01:28:19', '2025-06-29 07:50:37'),
(10, 'default_country', 0, 's:2:\"IN\";', '2025-06-29 01:28:19', '2025-06-29 07:50:37'),
(11, 'supported_locales', 0, 'a:1:{i:0;s:2:\"en\";}', '2025-06-29 01:28:19', '2025-06-29 01:28:19'),
(12, 'default_locale', 0, 's:2:\"en\";', '2025-06-29 01:28:19', '2025-06-29 01:28:19'),
(13, 'default_timezone', 0, 's:12:\"Asia/Kolkata\";', '2025-06-29 01:28:19', '2025-06-29 07:50:37'),
(14, 'customer_role', 0, 's:1:\"3\";', '2025-06-29 01:28:19', '2025-06-29 07:50:37'),
(15, 'reviews_enabled', 0, 's:1:\"1\";', '2025-06-29 01:28:19', '2025-06-29 07:50:37'),
(16, 'auto_approve_reviews', 0, 's:1:\"1\";', '2025-06-29 01:28:19', '2025-06-29 07:50:37'),
(17, 'cookie_bar_enabled', 0, 's:1:\"1\";', '2025-06-29 01:28:19', '2025-06-29 07:50:37'),
(18, 'supported_currencies', 0, 'a:1:{i:0;s:3:\"INR\";}', '2025-06-29 01:28:19', '2025-06-29 07:26:46'),
(19, 'default_currency', 0, 's:3:\"INR\";', '2025-06-29 01:28:19', '2025-06-29 07:26:46'),
(20, 'send_order_invoice_email', 0, 'b:0;', '2025-06-29 01:28:19', '2025-06-29 01:28:19'),
(21, 'newsletter_enabled', 0, 's:1:\"0\";', '2025-06-29 01:28:19', '2025-06-29 07:50:37'),
(22, 'local_pickup_cost', 0, 's:1:\"0\";', '2025-06-29 01:28:19', '2025-06-29 07:50:37'),
(23, 'flat_rate_cost', 0, 's:1:\"0\";', '2025-06-29 01:28:19', '2025-06-29 07:50:37'),
(24, 'pwa_direction', 1, NULL, '2025-06-29 01:28:19', '2025-06-29 01:28:19'),
(25, 'free_shipping_label', 1, NULL, '2025-06-29 01:28:19', '2025-06-29 01:28:19'),
(26, 'local_pickup_label', 1, NULL, '2025-06-29 01:28:19', '2025-06-29 01:28:19'),
(27, 'flat_rate_label', 1, NULL, '2025-06-29 01:28:19', '2025-06-29 01:28:19'),
(28, 'paypal_label', 1, NULL, '2025-06-29 01:28:19', '2025-06-29 01:28:19'),
(29, 'paypal_description', 1, NULL, '2025-06-29 01:28:19', '2025-06-29 01:28:19'),
(30, 'stripe_label', 1, NULL, '2025-06-29 01:28:19', '2025-06-29 01:28:19'),
(31, 'stripe_description', 1, NULL, '2025-06-29 01:28:19', '2025-06-29 01:28:19'),
(32, 'paytm_label', 1, NULL, '2025-06-29 01:28:19', '2025-06-29 01:28:19'),
(33, 'paytm_description', 1, NULL, '2025-06-29 01:28:19', '2025-06-29 01:28:19'),
(34, 'razorpay_label', 1, NULL, '2025-06-29 01:28:19', '2025-06-29 01:28:19'),
(35, 'razorpay_description', 1, NULL, '2025-06-29 01:28:19', '2025-06-29 01:28:19'),
(36, 'instamojo_label', 1, NULL, '2025-06-29 01:28:19', '2025-06-29 01:28:19'),
(37, 'instamojo_description', 1, NULL, '2025-06-29 01:28:19', '2025-06-29 01:28:19'),
(38, 'authorizenet_label', 1, NULL, '2025-06-29 01:28:19', '2025-06-29 01:28:19'),
(39, 'authorizenet_description', 1, NULL, '2025-06-29 01:28:19', '2025-06-29 01:28:19'),
(40, 'paystack_label', 1, NULL, '2025-06-29 01:28:19', '2025-06-29 01:28:19'),
(41, 'paystack_description', 1, NULL, '2025-06-29 01:28:19', '2025-06-29 01:28:19'),
(42, 'mercadopago_label', 1, NULL, '2025-06-29 01:28:19', '2025-06-29 01:28:19'),
(43, 'mercadopago_description', 1, NULL, '2025-06-29 01:28:19', '2025-06-29 01:28:19'),
(44, 'flutterwave_label', 1, NULL, '2025-06-29 01:28:19', '2025-06-29 01:28:19'),
(45, 'flutterwave_description', 1, NULL, '2025-06-29 01:28:19', '2025-06-29 01:28:19'),
(46, 'iyzico_label', 1, NULL, '2025-06-29 01:28:19', '2025-06-29 01:28:19'),
(47, 'iyzico_description', 1, NULL, '2025-06-29 01:28:19', '2025-06-29 01:28:19'),
(48, 'payfast_label', 1, NULL, '2025-06-29 01:28:19', '2025-06-29 01:28:19'),
(49, 'payfast_description', 1, NULL, '2025-06-29 01:28:19', '2025-06-29 01:28:19'),
(50, 'bkash_label', 1, NULL, '2025-06-29 01:28:19', '2025-06-29 01:28:19'),
(51, 'bkash_description', 1, NULL, '2025-06-29 01:28:19', '2025-06-29 01:28:19'),
(52, 'nagad_label', 1, NULL, '2025-06-29 01:28:19', '2025-06-29 01:28:19'),
(53, 'nagad_description', 1, NULL, '2025-06-29 01:28:19', '2025-06-29 01:28:19'),
(54, 'sslcommerz_label', 1, NULL, '2025-06-29 01:28:19', '2025-06-29 01:28:19'),
(55, 'sslcommerz_description', 1, NULL, '2025-06-29 01:28:19', '2025-06-29 01:28:19'),
(56, 'cod_label', 1, NULL, '2025-06-29 01:28:19', '2025-06-29 01:28:19'),
(57, 'cod_description', 1, NULL, '2025-06-29 01:28:19', '2025-06-29 01:28:19'),
(58, 'bank_transfer_label', 1, NULL, '2025-06-29 01:28:19', '2025-06-29 01:28:19'),
(59, 'bank_transfer_description', 1, NULL, '2025-06-29 01:28:19', '2025-06-29 01:28:19'),
(60, 'check_payment_label', 1, NULL, '2025-06-29 01:28:19', '2025-06-29 01:28:19'),
(61, 'check_payment_description', 1, NULL, '2025-06-29 01:28:19', '2025-06-29 01:28:19'),
(62, 'storefront_copyright_text', 1, 's:92:\"Copyright © <a href=\"{{ store_url }}\">{{ store_name }}</a> {{ year }}. All rights reserved.\";', '2025-06-29 01:28:19', '2025-06-29 07:56:09'),
(63, 'maintenance_mode', 0, 's:1:\"0\";', '2025-06-29 07:50:37', '2025-06-29 07:36:02'),
(64, 'store_tagline', 1, NULL, '2025-06-29 07:50:37', '2025-06-29 07:50:37'),
(65, 'store_description', 1, NULL, '2025-06-29 07:50:37', '2025-06-29 07:50:37'),
(66, 'bank_transfer_instructions', 1, NULL, '2025-06-29 07:50:37', '2025-06-29 07:50:37'),
(67, 'check_payment_instructions', 1, NULL, '2025-06-29 07:50:37', '2025-06-29 07:50:37'),
(68, 'store_address_1', 0, 's:35:\"1583, 15th Main Rd, Bharathi Colony\";', '2025-06-29 07:50:37', '2025-06-29 07:26:05'),
(69, 'store_address_2', 0, 's:35:\"J Block, Bharathi Nagar, Anna Nagar\";', '2025-06-29 07:50:37', '2025-06-29 07:26:05'),
(70, 'store_city', 0, 's:7:\"Chennai\";', '2025-06-29 07:50:37', '2025-06-29 07:26:05'),
(71, 'store_country', 0, 's:2:\"IN\";', '2025-06-29 07:50:37', '2025-06-29 07:26:05'),
(72, 'store_state', 0, 's:2:\"TN\";', '2025-06-29 07:50:37', '2025-06-29 07:26:05'),
(73, 'store_zip', 0, 's:6:\"600040\";', '2025-06-29 07:50:37', '2025-06-29 07:26:05'),
(74, 'store_phone_hide', 0, 's:1:\"0\";', '2025-06-29 07:50:37', '2025-06-29 07:50:37'),
(75, 'store_email_hide', 0, 's:1:\"0\";', '2025-06-29 07:50:37', '2025-06-29 07:50:37'),
(76, 'pwa_enabled', 0, 's:1:\"0\";', '2025-06-29 07:50:37', '2025-06-29 07:50:37'),
(77, 'pwa_theme_color', 0, 's:7:\"#000000\";', '2025-06-29 07:50:37', '2025-06-29 07:50:37'),
(78, 'pwa_background_color', 0, 's:7:\"#000000\";', '2025-06-29 07:50:37', '2025-06-29 07:50:37'),
(79, 'pwa_status_bar', 0, 's:7:\"#000000\";', '2025-06-29 07:50:37', '2025-06-29 07:50:37'),
(80, 'pwa_display', 0, 's:10:\"fullscreen\";', '2025-06-29 07:50:37', '2025-06-29 07:50:37'),
(81, 'pwa_orientation', 0, 's:3:\"any\";', '2025-06-29 07:50:37', '2025-06-29 07:50:37'),
(82, 'currency_rate_exchange_service', 0, 'N;', '2025-06-29 07:50:37', '2025-06-29 07:50:37'),
(83, 'fixer_access_key', 0, 's:6:\"123456\";', '2025-06-29 07:50:37', '2025-06-29 07:50:37'),
(84, 'forge_api_key', 0, 'N;', '2025-06-29 07:50:37', '2025-06-29 07:50:37'),
(85, 'currency_data_feed_api_key', 0, 'N;', '2025-06-29 07:50:37', '2025-06-29 07:50:37'),
(86, 'auto_refresh_currency_rates', 0, 's:1:\"0\";', '2025-06-29 07:50:37', '2025-06-29 07:50:37'),
(87, 'auto_refresh_currency_rate_frequency', 0, 's:5:\"daily\";', '2025-06-29 07:50:37', '2025-06-29 07:50:37'),
(88, 'sms_from', 0, 'N;', '2025-06-29 07:50:37', '2025-06-29 07:50:37'),
(89, 'sms_service', 0, 'N;', '2025-06-29 07:50:37', '2025-06-29 07:50:37'),
(90, 'vonage_key', 0, 'N;', '2025-06-29 07:50:37', '2025-06-29 07:50:37'),
(91, 'vonage_secret', 0, 'N;', '2025-06-29 07:50:37', '2025-06-29 07:50:37'),
(92, 'twilio_sid', 0, 'N;', '2025-06-29 07:50:37', '2025-06-29 07:50:37'),
(93, 'twilio_token', 0, 'N;', '2025-06-29 07:50:37', '2025-06-29 07:50:37'),
(94, 'welcome_sms', 0, 's:1:\"0\";', '2025-06-29 07:50:37', '2025-06-29 07:50:37'),
(95, 'new_order_admin_sms', 0, 's:1:\"0\";', '2025-06-29 07:50:37', '2025-06-29 07:50:37'),
(96, 'new_order_sms', 0, 's:1:\"0\";', '2025-06-29 07:50:37', '2025-06-29 07:50:37'),
(97, 'mail_from_address', 0, 'N;', '2025-06-29 07:50:37', '2025-06-29 07:50:37'),
(98, 'mail_from_name', 0, 'N;', '2025-06-29 07:50:37', '2025-06-29 07:50:37'),
(99, 'mail_host', 0, 'N;', '2025-06-29 07:50:37', '2025-06-29 07:50:37'),
(100, 'mail_port', 0, 'N;', '2025-06-29 07:50:37', '2025-06-29 07:50:37'),
(101, 'mail_username', 0, 'N;', '2025-06-29 07:50:37', '2025-06-29 07:50:37'),
(102, 'mail_password', 0, 'N;', '2025-06-29 07:50:37', '2025-06-29 07:50:37'),
(103, 'mail_encryption', 0, 'N;', '2025-06-29 07:50:37', '2025-06-29 07:50:37'),
(104, 'welcome_email', 0, 's:1:\"0\";', '2025-06-29 07:50:37', '2025-06-29 07:50:37'),
(105, 'admin_order_email', 0, 's:1:\"0\";', '2025-06-29 07:50:37', '2025-06-29 07:50:37'),
(106, 'invoice_email', 0, 's:1:\"0\";', '2025-06-29 07:50:37', '2025-06-29 07:50:37'),
(107, 'mailchimp_api_key', 0, 'N;', '2025-06-29 07:50:37', '2025-06-29 07:50:37'),
(108, 'mailchimp_list_id', 0, 'N;', '2025-06-29 07:50:37', '2025-06-29 07:50:37'),
(109, 'google_recaptcha_enabled', 0, 's:1:\"0\";', '2025-06-29 07:50:37', '2025-06-29 07:50:37'),
(110, 'google_recaptcha_site_key', 0, 'N;', '2025-06-29 07:50:37', '2025-06-29 07:50:37'),
(111, 'google_recaptcha_secret_key', 0, 'N;', '2025-06-29 07:50:37', '2025-06-29 07:50:37'),
(112, 'custom_header_assets', 0, 's:128:\"<style>\r\n.home-slider .slide-content .caption-1, .home-slider .slide-content .caption-2{\r\n color: white !important;\r\n}\r\n</style>\";', '2025-06-29 07:50:37', '2025-06-29 10:29:02'),
(113, 'custom_footer_assets', 0, 'N;', '2025-06-29 07:50:37', '2025-06-29 10:27:37'),
(114, 'facebook_login_enabled', 0, 's:1:\"0\";', '2025-06-29 07:50:37', '2025-06-29 07:50:37'),
(115, 'facebook_login_app_id', 0, 'N;', '2025-06-29 07:50:37', '2025-06-29 07:50:37'),
(116, 'facebook_login_app_secret', 0, 'N;', '2025-06-29 07:50:37', '2025-06-29 07:50:37'),
(117, 'google_login_enabled', 0, 's:1:\"0\";', '2025-06-29 07:50:37', '2025-06-29 07:50:37'),
(118, 'google_login_client_id', 0, 'N;', '2025-06-29 07:50:37', '2025-06-29 07:50:37'),
(119, 'google_login_client_secret', 0, 'N;', '2025-06-29 07:50:37', '2025-06-29 07:50:37'),
(120, 'free_shipping_enabled', 0, 's:1:\"1\";', '2025-06-29 07:50:37', '2025-06-29 07:27:20'),
(121, 'free_shipping_min_amount', 0, 'N;', '2025-06-29 07:50:37', '2025-06-29 07:50:37'),
(122, 'local_pickup_enabled', 0, 's:1:\"0\";', '2025-06-29 07:50:37', '2025-06-29 07:50:37'),
(123, 'flat_rate_enabled', 0, 's:1:\"0\";', '2025-06-29 07:50:37', '2025-06-29 07:50:37'),
(124, 'paypal_enabled', 0, 's:1:\"0\";', '2025-06-29 07:50:37', '2025-06-29 07:50:37'),
(125, 'paypal_test_mode', 0, 's:1:\"0\";', '2025-06-29 07:50:37', '2025-06-29 07:50:37'),
(126, 'paypal_client_id', 0, 'N;', '2025-06-29 07:50:37', '2025-06-29 07:50:37'),
(127, 'paypal_secret', 0, 'N;', '2025-06-29 07:50:37', '2025-06-29 07:50:37'),
(128, 'stripe_enabled', 0, 's:1:\"0\";', '2025-06-29 07:50:37', '2025-06-29 07:50:37'),
(129, 'stripe_publishable_key', 0, 'N;', '2025-06-29 07:50:37', '2025-06-29 07:50:37'),
(130, 'stripe_secret_key', 0, 'N;', '2025-06-29 07:50:37', '2025-06-29 07:50:37'),
(131, 'stripe_integration_type', 0, 's:13:\"embedded_form\";', '2025-06-29 07:50:37', '2025-06-29 07:50:37'),
(132, 'paytm_enabled', 0, 's:1:\"0\";', '2025-06-29 07:50:37', '2025-06-29 07:50:37'),
(133, 'paytm_test_mode', 0, 's:1:\"0\";', '2025-06-29 07:50:37', '2025-06-29 07:50:37'),
(134, 'paytm_merchant_id', 0, 'N;', '2025-06-29 07:50:37', '2025-06-29 07:50:37'),
(135, 'paytm_merchant_key', 0, 'N;', '2025-06-29 07:50:37', '2025-06-29 07:50:37'),
(136, 'razorpay_enabled', 0, 's:1:\"0\";', '2025-06-29 07:50:37', '2025-07-11 00:55:56'),
(137, 'razorpay_key_id', 0, 's:4:\"test\";', '2025-06-29 07:50:37', '2025-07-11 00:00:17'),
(138, 'razorpay_key_secret', 0, 's:4:\"test\";', '2025-06-29 07:50:37', '2025-07-11 00:00:17'),
(139, 'instamojo_enabled', 0, 's:1:\"0\";', '2025-06-29 07:50:37', '2025-06-29 07:50:37'),
(140, 'instamojo_test_mode', 0, 's:1:\"0\";', '2025-06-29 07:50:37', '2025-06-29 07:50:37'),
(141, 'instamojo_api_key', 0, 'N;', '2025-06-29 07:50:37', '2025-06-29 07:50:37'),
(142, 'instamojo_auth_token', 0, 'N;', '2025-06-29 07:50:37', '2025-06-29 07:50:37'),
(143, 'paystack_enabled', 0, 's:1:\"0\";', '2025-06-29 07:50:37', '2025-06-29 07:50:37'),
(144, 'paystack_test_mode', 0, 's:1:\"0\";', '2025-06-29 07:50:37', '2025-06-29 07:50:37'),
(145, 'paystack_public_key', 0, 'N;', '2025-06-29 07:50:37', '2025-06-29 07:50:37'),
(146, 'paystack_secret_key', 0, 'N;', '2025-06-29 07:50:37', '2025-06-29 07:50:37'),
(147, 'authorizenet_enabled', 0, 's:1:\"0\";', '2025-06-29 07:50:37', '2025-07-11 00:56:03'),
(148, 'authorizenet_test_mode', 0, 's:1:\"0\";', '2025-06-29 07:50:37', '2025-06-29 07:50:37'),
(149, 'authorizenet_merchant_login_id', 0, 's:4:\"test\";', '2025-06-29 07:50:37', '2025-07-11 00:00:58'),
(150, 'authorizenet_merchant_transaction_key', 0, 's:4:\"test\";', '2025-06-29 07:50:37', '2025-07-11 00:00:58'),
(151, 'mercadopago_enabled', 0, 's:1:\"0\";', '2025-06-29 07:50:37', '2025-06-29 07:50:37'),
(152, 'mercadopago_test_mode', 0, 's:1:\"0\";', '2025-06-29 07:50:37', '2025-06-29 07:50:37'),
(153, 'mercadopago_supported_currency', 0, 's:3:\"UYU\";', '2025-06-29 07:50:37', '2025-06-29 07:50:37'),
(154, 'mercadopago_public_key', 0, 'N;', '2025-06-29 07:50:37', '2025-06-29 07:50:37'),
(155, 'mercadopago_access_token', 0, 'N;', '2025-06-29 07:50:37', '2025-06-29 07:50:37'),
(156, 'flutterwave_enabled', 0, 's:1:\"0\";', '2025-06-29 07:50:37', '2025-06-29 07:50:37'),
(157, 'flutterwave_test_mode', 0, 's:1:\"0\";', '2025-06-29 07:50:37', '2025-06-29 07:50:37'),
(158, 'flutterwave_public_key', 0, 'N;', '2025-06-29 07:50:37', '2025-06-29 07:50:37'),
(159, 'flutterwave_secret_key', 0, 'N;', '2025-06-29 07:50:37', '2025-06-29 07:50:37'),
(160, 'flutterwave_encryption_key', 0, 'N;', '2025-06-29 07:50:37', '2025-06-29 07:50:37'),
(161, 'iyzico_enabled', 0, 's:1:\"0\";', '2025-06-29 07:50:37', '2025-06-29 07:50:37'),
(162, 'iyzico_test_mode', 0, 's:1:\"0\";', '2025-06-29 07:50:37', '2025-06-29 07:50:37'),
(163, 'iyzico_api_key', 0, 'N;', '2025-06-29 07:50:37', '2025-06-29 07:50:37'),
(164, 'iyzico_api_secret', 0, 'N;', '2025-06-29 07:50:37', '2025-06-29 07:50:37'),
(165, 'payfast_enabled', 0, 's:1:\"0\";', '2025-06-29 07:50:37', '2025-06-29 07:50:37'),
(166, 'payfast_test_mode', 0, 's:1:\"0\";', '2025-06-29 07:50:37', '2025-06-29 07:50:37'),
(167, 'payfast_merchant_id', 0, 'N;', '2025-06-29 07:50:37', '2025-06-29 07:50:37'),
(168, 'payfast_merchant_key', 0, 'N;', '2025-06-29 07:50:37', '2025-06-29 07:50:37'),
(169, 'payfast_passphrase', 0, 'N;', '2025-06-29 07:50:37', '2025-06-29 07:50:37'),
(170, 'bkash_enabled', 0, 's:1:\"0\";', '2025-06-29 07:50:37', '2025-06-29 07:50:37'),
(171, 'bkash_test_mode', 0, 's:1:\"0\";', '2025-06-29 07:50:37', '2025-06-29 07:50:37'),
(172, 'bkash_app_key', 0, 'N;', '2025-06-29 07:50:37', '2025-06-29 07:50:37'),
(173, 'bkash_app_secret', 0, 'N;', '2025-06-29 07:50:37', '2025-06-29 07:50:37'),
(174, 'bkash_username', 0, 'N;', '2025-06-29 07:50:37', '2025-06-29 07:50:37'),
(175, 'bkash_password', 0, 'N;', '2025-06-29 07:50:37', '2025-06-29 07:50:37'),
(176, 'nagad_enabled', 0, 's:1:\"0\";', '2025-06-29 07:50:37', '2025-06-29 07:50:37'),
(177, 'nagad_test_mode', 0, 's:1:\"0\";', '2025-06-29 07:50:37', '2025-06-29 07:50:37'),
(178, 'nagad_merchant_id', 0, 'N;', '2025-06-29 07:50:37', '2025-06-29 07:50:37'),
(179, 'nagad_merchant_number', 0, 'N;', '2025-06-29 07:50:37', '2025-06-29 07:50:37'),
(180, 'nagad_public_key', 0, 'N;', '2025-06-29 07:50:37', '2025-06-29 07:50:37'),
(181, 'nagad_private_key', 0, 'N;', '2025-06-29 07:50:37', '2025-06-29 07:50:37'),
(182, 'sslcommerz_enabled', 0, 's:1:\"0\";', '2025-06-29 07:50:37', '2025-06-29 07:50:37'),
(183, 'sslcommerz_test_mode', 0, 's:1:\"0\";', '2025-06-29 07:50:37', '2025-06-29 07:50:37'),
(184, 'sslcommerz_store_id', 0, 'N;', '2025-06-29 07:50:37', '2025-06-29 07:50:37'),
(185, 'sslcommerz_store_password', 0, 'N;', '2025-06-29 07:50:37', '2025-06-29 07:50:37'),
(186, 'sslcommerz_is_localhost', 0, 's:1:\"0\";', '2025-06-29 07:50:37', '2025-06-29 07:50:37'),
(187, 'cod_enabled', 0, 's:1:\"1\";', '2025-06-29 07:50:37', '2025-06-30 17:01:56'),
(188, 'bank_transfer_enabled', 0, 's:1:\"0\";', '2025-06-29 07:50:37', '2025-06-29 07:50:37'),
(189, 'check_payment_enabled', 0, 's:1:\"0\";', '2025-06-29 07:50:37', '2025-06-29 07:50:37'),
(190, 'sms_order_statuses', 0, 'N;', '2025-06-29 07:50:37', '2025-06-29 07:50:37'),
(191, 'email_order_statuses', 0, 'N;', '2025-06-29 07:50:37', '2025-06-29 07:50:37'),
(192, 'tab', 0, 's:8:\"ccavenue\";', '2025-06-29 07:50:37', '2025-07-11 01:02:34'),
(193, 'admin_logo', 1, NULL, '2025-06-29 07:23:00', '2025-06-29 07:23:00'),
(194, 'admin_small_logo', 1, NULL, '2025-06-29 07:23:00', '2025-06-29 07:23:00'),
(195, 'storefront_welcome_text', 1, NULL, '2025-06-29 07:56:09', '2025-06-29 07:56:09'),
(196, 'storefront_address', 1, NULL, '2025-06-29 07:56:09', '2025-06-29 07:56:09'),
(197, 'storefront_footer_menu_one_title', 1, NULL, '2025-06-29 07:56:09', '2025-06-29 07:56:09'),
(198, 'storefront_footer_menu_two_title', 1, NULL, '2025-06-29 07:56:09', '2025-06-29 07:56:09'),
(199, 'storefront_feature_1_title', 1, NULL, '2025-06-29 07:56:09', '2025-06-29 07:56:09'),
(200, 'storefront_feature_1_subtitle', 1, NULL, '2025-06-29 07:56:09', '2025-06-29 07:56:09'),
(201, 'storefront_feature_2_title', 1, NULL, '2025-06-29 07:56:09', '2025-06-29 07:56:09'),
(202, 'storefront_feature_2_subtitle', 1, NULL, '2025-06-29 07:56:09', '2025-06-29 07:56:09'),
(203, 'storefront_feature_3_title', 1, NULL, '2025-06-29 07:56:09', '2025-06-29 07:56:09'),
(204, 'storefront_feature_3_subtitle', 1, NULL, '2025-06-29 07:56:09', '2025-06-29 07:56:09'),
(205, 'storefront_feature_4_title', 1, NULL, '2025-06-29 07:56:09', '2025-06-29 07:56:09'),
(206, 'storefront_feature_4_subtitle', 1, NULL, '2025-06-29 07:56:09', '2025-06-29 07:56:09'),
(207, 'storefront_feature_5_title', 1, NULL, '2025-06-29 07:56:09', '2025-06-29 07:56:09'),
(208, 'storefront_feature_5_subtitle', 1, NULL, '2025-06-29 07:56:09', '2025-06-29 07:56:09'),
(209, 'storefront_product_page_banner_file_id', 1, NULL, '2025-06-29 07:56:09', '2025-06-29 07:56:09'),
(210, 'storefront_slider_banner_1_file_id', 1, NULL, '2025-06-29 07:56:09', '2025-06-29 07:56:09'),
(211, 'storefront_slider_banner_2_file_id', 1, NULL, '2025-06-29 07:56:09', '2025-06-29 07:56:09'),
(212, 'storefront_three_column_full_width_banners_1_file_id', 1, NULL, '2025-06-29 07:56:09', '2025-06-29 07:56:09'),
(213, 'storefront_three_column_full_width_banners_2_file_id', 1, NULL, '2025-06-29 07:56:09', '2025-06-29 07:56:09'),
(214, 'storefront_three_column_full_width_banners_3_file_id', 1, NULL, '2025-06-29 07:56:09', '2025-06-29 07:56:09'),
(215, 'storefront_featured_categories_section_title', 1, NULL, '2025-06-29 07:56:09', '2025-06-29 07:56:09'),
(216, 'storefront_featured_categories_section_subtitle', 1, NULL, '2025-06-29 07:56:09', '2025-06-29 07:56:09'),
(217, 'storefront_product_tabs_1_section_tab_1_title', 1, NULL, '2025-06-29 07:56:09', '2025-06-29 07:56:09'),
(218, 'storefront_product_tabs_1_section_tab_2_title', 1, NULL, '2025-06-29 07:56:09', '2025-06-29 07:56:09'),
(219, 'storefront_product_tabs_1_section_tab_3_title', 1, NULL, '2025-06-29 07:56:09', '2025-06-29 07:56:09'),
(220, 'storefront_product_tabs_1_section_tab_4_title', 1, NULL, '2025-06-29 07:56:09', '2025-06-29 07:56:09'),
(221, 'storefront_two_column_banners_1_file_id', 1, NULL, '2025-06-29 07:56:09', '2025-06-29 07:56:09'),
(222, 'storefront_two_column_banners_2_file_id', 1, NULL, '2025-06-29 07:56:09', '2025-06-29 07:56:09'),
(223, 'storefront_product_grid_section_tab_1_title', 1, NULL, '2025-06-29 07:56:09', '2025-06-29 07:56:09'),
(224, 'storefront_product_grid_section_tab_2_title', 1, NULL, '2025-06-29 07:56:09', '2025-06-29 07:56:09'),
(225, 'storefront_product_grid_section_tab_3_title', 1, NULL, '2025-06-29 07:56:09', '2025-06-29 07:56:09'),
(226, 'storefront_product_grid_section_tab_4_title', 1, NULL, '2025-06-29 07:56:09', '2025-06-29 07:56:09'),
(227, 'storefront_three_column_banners_1_file_id', 1, NULL, '2025-06-29 07:56:09', '2025-06-29 07:56:09'),
(228, 'storefront_three_column_banners_2_file_id', 1, NULL, '2025-06-29 07:56:09', '2025-06-29 07:56:09'),
(229, 'storefront_three_column_banners_3_file_id', 1, NULL, '2025-06-29 07:56:09', '2025-06-29 07:56:09'),
(230, 'storefront_product_tabs_2_section_title', 1, NULL, '2025-06-29 07:56:09', '2025-06-29 07:56:09'),
(231, 'storefront_product_tabs_2_section_tab_1_title', 1, NULL, '2025-06-29 07:56:09', '2025-06-29 07:56:09'),
(232, 'storefront_product_tabs_2_section_tab_2_title', 1, NULL, '2025-06-29 07:56:09', '2025-06-29 07:56:09'),
(233, 'storefront_product_tabs_2_section_tab_3_title', 1, NULL, '2025-06-29 07:56:09', '2025-06-29 07:56:09'),
(234, 'storefront_product_tabs_2_section_tab_4_title', 1, NULL, '2025-06-29 07:56:09', '2025-06-29 07:56:09'),
(235, 'storefront_one_column_banner_file_id', 1, NULL, '2025-06-29 07:56:09', '2025-06-29 07:56:09'),
(236, 'storefront_blogs_section_title', 1, NULL, '2025-06-29 07:56:09', '2025-06-29 07:56:09'),
(237, 'storefront_display_font', 0, 's:7:\"Poppins\";', '2025-06-29 07:56:09', '2025-06-29 07:56:09'),
(238, 'storefront_theme_color', 0, 's:12:\"custom_color\";', '2025-06-29 07:56:09', '2025-06-29 08:04:26'),
(239, 'storefront_custom_theme_color', 0, 's:7:\"#178d17\";', '2025-06-29 07:56:09', '2025-06-29 08:04:26'),
(240, 'storefront_mail_theme_color', 0, 's:12:\"custom_color\";', '2025-06-29 07:56:09', '2025-06-29 08:04:26'),
(241, 'storefront_custom_mail_theme_color', 0, 's:7:\"#178d17\";', '2025-06-29 07:56:09', '2025-06-29 08:04:26'),
(242, 'storefront_slider', 0, 's:1:\"1\";', '2025-06-29 07:56:09', '2025-06-29 08:40:46'),
(243, 'storefront_terms_page', 0, 'N;', '2025-06-29 07:56:09', '2025-06-29 07:56:09'),
(244, 'storefront_privacy_page', 0, 'N;', '2025-06-29 07:56:09', '2025-06-29 07:56:09'),
(245, 'storefront_most_searched_keywords_enabled', 0, 's:1:\"1\";', '2025-06-29 07:56:09', '2025-06-29 08:05:16'),
(246, 'storefront_primary_menu', 0, 's:1:\"1\";', '2025-06-29 07:56:09', '2025-06-29 07:56:09'),
(247, 'storefront_category_menu', 0, 's:1:\"2\";', '2025-06-29 07:56:09', '2025-06-29 07:56:09'),
(248, 'storefront_footer_menu_one', 0, 's:1:\"3\";', '2025-06-29 07:56:09', '2025-06-29 08:02:47'),
(249, 'storefront_footer_menu_two', 0, 's:1:\"4\";', '2025-06-29 07:56:09', '2025-06-29 08:02:47'),
(250, 'storefront_features_section_enabled', 0, 's:1:\"1\";', '2025-06-29 07:56:09', '2025-06-29 08:10:56'),
(251, 'storefront_feature_1_icon', 0, 's:17:\"las la-headphones\";', '2025-06-29 07:56:09', '2025-06-29 08:10:56'),
(252, 'storefront_feature_2_icon', 0, 's:18:\"las la-credit-card\";', '2025-06-29 07:56:09', '2025-06-29 08:10:56'),
(253, 'storefront_feature_3_icon', 0, 's:17:\"las la-shield-alt\";', '2025-06-29 07:56:09', '2025-06-29 08:10:56'),
(254, 'storefront_feature_4_icon', 0, 's:12:\"las la-truck\";', '2025-06-29 07:56:09', '2025-06-29 08:10:56'),
(255, 'storefront_feature_5_icon', 0, 's:21:\"las la-calendar-minus\";', '2025-06-29 07:56:09', '2025-06-29 08:10:56'),
(256, 'storefront_product_page_banner_call_to_action_url', 0, 's:34:\"categories/bird-eye-chili/products\";', '2025-06-29 07:56:09', '2025-06-29 08:11:59'),
(257, 'storefront_product_page_banner_open_in_new_window', 0, 's:1:\"0\";', '2025-06-29 07:56:09', '2025-06-29 07:56:09'),
(258, 'storefront_facebook_link', 0, 's:1:\"#\";', '2025-06-29 07:56:09', '2025-06-29 08:12:18'),
(259, 'storefront_twitter_link', 0, 's:1:\"#\";', '2025-06-29 07:56:09', '2025-06-29 08:12:18'),
(260, 'storefront_instagram_link', 0, 's:1:\"#\";', '2025-06-29 07:56:09', '2025-06-29 08:12:18'),
(261, 'storefront_youtube_link', 0, 's:1:\"#\";', '2025-06-29 07:56:09', '2025-06-29 08:12:18'),
(262, 'storefront_slider_banner_1_call_to_action_url', 0, 's:1:\"#\";', '2025-06-29 07:56:09', '2025-06-29 08:18:12'),
(263, 'storefront_slider_banner_1_open_in_new_window', 0, 's:1:\"0\";', '2025-06-29 07:56:09', '2025-06-29 07:56:09'),
(264, 'storefront_slider_banner_2_call_to_action_url', 0, 's:1:\"#\";', '2025-06-29 07:56:09', '2025-06-29 08:18:12'),
(265, 'storefront_slider_banner_2_open_in_new_window', 0, 's:1:\"0\";', '2025-06-29 07:56:09', '2025-06-29 07:56:09'),
(266, 'storefront_three_column_full_width_banners_enabled', 0, 's:1:\"1\";', '2025-06-29 07:56:09', '2025-06-29 08:21:18'),
(267, 'storefront_three_column_full_width_banners_1_call_to_action_url', 0, 's:1:\"#\";', '2025-06-29 07:56:09', '2025-06-29 08:21:18'),
(268, 'storefront_three_column_full_width_banners_1_open_in_new_window', 0, 's:1:\"0\";', '2025-06-29 07:56:09', '2025-06-29 07:56:09'),
(269, 'storefront_three_column_full_width_banners_2_call_to_action_url', 0, 's:1:\"#\";', '2025-06-29 07:56:09', '2025-06-29 08:21:18'),
(270, 'storefront_three_column_full_width_banners_2_open_in_new_window', 0, 's:1:\"0\";', '2025-06-29 07:56:09', '2025-06-29 07:56:09'),
(271, 'storefront_three_column_full_width_banners_3_call_to_action_url', 0, 's:1:\"#\";', '2025-06-29 07:56:09', '2025-06-29 08:21:18'),
(272, 'storefront_three_column_full_width_banners_3_open_in_new_window', 0, 's:1:\"0\";', '2025-06-29 07:56:09', '2025-06-29 07:56:09'),
(273, 'storefront_featured_categories_section_enabled', 0, 's:1:\"1\";', '2025-06-29 07:56:09', '2025-06-29 08:22:47'),
(274, 'storefront_featured_categories_section_category_1_category_id', 0, 's:1:\"9\";', '2025-06-29 07:56:09', '2025-06-30 16:20:00'),
(275, 'storefront_featured_categories_section_category_1_product_type', 0, 's:17:\"category_products\";', '2025-06-29 07:56:09', '2025-06-29 08:22:47'),
(276, 'storefront_featured_categories_section_category_1_products_limit', 0, 'N;', '2025-06-29 07:56:09', '2025-07-02 21:15:49'),
(277, 'storefront_featured_categories_section_category_2_category_id', 0, 's:2:\"12\";', '2025-06-29 07:56:09', '2025-06-30 16:20:00'),
(278, 'storefront_featured_categories_section_category_2_product_type', 0, 's:17:\"category_products\";', '2025-06-29 07:56:09', '2025-06-29 08:22:47'),
(279, 'storefront_featured_categories_section_category_2_products_limit', 0, 'N;', '2025-06-29 07:56:09', '2025-07-02 21:15:49'),
(280, 'storefront_featured_categories_section_category_3_category_id', 0, 's:2:\"13\";', '2025-06-29 07:56:09', '2025-06-30 16:20:00'),
(281, 'storefront_featured_categories_section_category_3_product_type', 0, 's:17:\"category_products\";', '2025-06-29 07:56:09', '2025-06-29 08:22:47'),
(282, 'storefront_featured_categories_section_category_3_products_limit', 0, 'N;', '2025-06-29 07:56:09', '2025-07-02 21:15:49'),
(283, 'storefront_featured_categories_section_category_4_category_id', 0, 's:1:\"8\";', '2025-06-29 07:56:09', '2025-06-30 16:20:00'),
(284, 'storefront_featured_categories_section_category_4_product_type', 0, 's:17:\"category_products\";', '2025-06-29 07:56:09', '2025-06-29 08:22:47'),
(285, 'storefront_featured_categories_section_category_4_products_limit', 0, 'N;', '2025-06-29 07:56:09', '2025-07-02 21:15:49'),
(286, 'storefront_featured_categories_section_category_5_category_id', 0, 's:2:\"18\";', '2025-06-29 07:56:09', '2025-06-30 16:20:00'),
(287, 'storefront_featured_categories_section_category_5_product_type', 0, 's:17:\"category_products\";', '2025-06-29 07:56:09', '2025-06-29 08:22:47'),
(288, 'storefront_featured_categories_section_category_5_products_limit', 0, 'N;', '2025-06-29 07:56:09', '2025-07-02 21:15:49'),
(289, 'storefront_featured_categories_section_category_6_category_id', 0, 's:2:\"10\";', '2025-06-29 07:56:09', '2025-06-30 16:20:00'),
(290, 'storefront_featured_categories_section_category_6_product_type', 0, 's:17:\"category_products\";', '2025-06-29 07:56:09', '2025-06-29 08:22:47'),
(291, 'storefront_featured_categories_section_category_6_products_limit', 0, 'N;', '2025-06-29 07:56:09', '2025-07-02 21:15:49'),
(292, 'storefront_product_tabs_1_section_enabled', 0, 's:1:\"1\";', '2025-06-29 07:56:09', '2025-06-29 08:24:31'),
(293, 'storefront_product_tabs_1_section_tab_1_product_type', 0, 's:17:\"category_products\";', '2025-06-29 07:56:09', '2025-06-29 08:24:31'),
(294, 'storefront_product_tabs_1_section_tab_1_category_id', 0, 's:1:\"9\";', '2025-06-29 07:56:09', '2025-06-29 08:24:31'),
(295, 'storefront_product_tabs_1_section_tab_1_products_limit', 0, 's:1:\"5\";', '2025-06-29 07:56:09', '2025-07-02 20:58:30'),
(296, 'storefront_product_tabs_1_section_tab_2_product_type', 0, 's:17:\"category_products\";', '2025-06-29 07:56:09', '2025-06-29 08:24:31'),
(297, 'storefront_product_tabs_1_section_tab_2_category_id', 0, 's:2:\"10\";', '2025-06-29 07:56:09', '2025-06-29 08:24:31'),
(298, 'storefront_product_tabs_1_section_tab_2_products_limit', 0, 's:1:\"3\";', '2025-06-29 07:56:09', '2025-07-02 20:58:30'),
(299, 'storefront_product_tabs_1_section_tab_3_product_type', 0, 's:17:\"category_products\";', '2025-06-29 07:56:09', '2025-06-29 08:24:31'),
(300, 'storefront_product_tabs_1_section_tab_3_category_id', 0, 's:2:\"12\";', '2025-06-29 07:56:09', '2025-06-29 08:24:31'),
(301, 'storefront_product_tabs_1_section_tab_3_products_limit', 0, 's:1:\"5\";', '2025-06-29 07:56:09', '2025-07-02 20:58:30'),
(302, 'storefront_product_tabs_1_section_tab_4_product_type', 0, 's:17:\"category_products\";', '2025-06-29 07:56:09', '2025-06-29 08:24:31'),
(303, 'storefront_product_tabs_1_section_tab_4_category_id', 0, 's:2:\"15\";', '2025-06-29 07:56:09', '2025-06-29 08:24:31'),
(304, 'storefront_product_tabs_1_section_tab_4_products_limit', 0, 's:1:\"5\";', '2025-06-29 07:56:09', '2025-07-02 20:58:30'),
(305, 'storefront_top_brands_section_enabled', 0, 's:1:\"0\";', '2025-06-29 07:56:09', '2025-06-29 08:39:33'),
(306, 'storefront_flash_sale_and_vertical_products_section_enabled', 0, 's:1:\"1\";', '2025-06-29 07:56:09', '2025-06-29 08:25:27'),
(307, 'storefront_flash_sale_title', 0, 's:17:\"Best <b>Deals</b>\";', '2025-06-29 07:56:09', '2025-06-29 08:25:27'),
(308, 'storefront_active_flash_sale_campaign', 0, 's:1:\"1\";', '2025-06-29 07:56:09', '2025-06-30 16:47:00'),
(309, 'storefront_vertical_products_1_title', 0, 's:21:\"Biriyani Hilly Spices\";', '2025-06-29 07:56:09', '2025-06-30 16:37:43'),
(310, 'storefront_vertical_products_1_product_type', 0, 's:17:\"category_products\";', '2025-06-29 07:56:09', '2025-06-30 16:37:43'),
(311, 'storefront_vertical_products_1_category_id', 0, 's:1:\"9\";', '2025-06-29 07:56:09', '2025-06-30 16:37:43'),
(312, 'storefront_vertical_products_1_products_limit', 0, 's:1:\"3\";', '2025-06-29 07:56:09', '2025-06-30 16:40:11'),
(313, 'storefront_vertical_products_2_title', 0, 's:15:\"Latest Products\";', '2025-06-29 07:56:09', '2025-06-30 16:39:43'),
(314, 'storefront_vertical_products_2_product_type', 0, 's:15:\"latest_products\";', '2025-06-29 07:56:09', '2025-06-30 16:39:43'),
(315, 'storefront_vertical_products_2_category_id', 0, 'N;', '2025-06-29 07:56:09', '2025-06-29 07:56:09'),
(316, 'storefront_vertical_products_2_products_limit', 0, 's:1:\"3\";', '2025-06-29 07:56:09', '2025-06-30 16:40:11'),
(317, 'storefront_vertical_products_3_title', 0, 's:21:\"Hilly Fresh Vegetable\";', '2025-06-29 07:56:09', '2025-06-30 16:39:43'),
(318, 'storefront_vertical_products_3_product_type', 0, 's:17:\"category_products\";', '2025-06-29 07:56:09', '2025-06-30 16:39:43'),
(319, 'storefront_vertical_products_3_category_id', 0, 's:2:\"12\";', '2025-06-29 07:56:09', '2025-06-30 16:39:43'),
(320, 'storefront_vertical_products_3_products_limit', 0, 's:1:\"3\";', '2025-06-29 07:56:09', '2025-06-30 16:40:11'),
(321, 'storefront_two_column_banners_enabled', 0, 's:1:\"1\";', '2025-06-29 07:56:09', '2025-06-29 08:27:05'),
(322, 'storefront_two_column_banners_1_call_to_action_url', 0, 's:1:\"#\";', '2025-06-29 07:56:09', '2025-06-29 08:26:53'),
(323, 'storefront_two_column_banners_1_open_in_new_window', 0, 's:1:\"0\";', '2025-06-29 07:56:09', '2025-06-29 07:56:09'),
(324, 'storefront_two_column_banners_2_call_to_action_url', 0, 's:1:\"#\";', '2025-06-29 07:56:09', '2025-06-29 08:26:53'),
(325, 'storefront_two_column_banners_2_open_in_new_window', 0, 's:1:\"0\";', '2025-06-29 07:56:09', '2025-06-29 07:56:09'),
(326, 'storefront_product_grid_section_enabled', 0, 's:1:\"1\";', '2025-06-29 07:56:09', '2025-06-29 08:29:15'),
(327, 'storefront_product_grid_section_tab_1_product_type', 0, 's:17:\"category_products\";', '2025-06-29 07:56:09', '2025-06-29 08:29:15'),
(328, 'storefront_product_grid_section_tab_1_category_id', 0, 's:1:\"9\";', '2025-06-29 07:56:09', '2025-06-30 16:32:21'),
(329, 'storefront_product_grid_section_tab_1_products_limit', 0, 'N;', '2025-06-29 07:56:09', '2025-06-29 07:56:09'),
(330, 'storefront_product_grid_section_tab_2_product_type', 0, 's:17:\"category_products\";', '2025-06-29 07:56:09', '2025-06-29 08:29:15'),
(331, 'storefront_product_grid_section_tab_2_category_id', 0, 's:2:\"12\";', '2025-06-29 07:56:09', '2025-06-30 16:32:21'),
(332, 'storefront_product_grid_section_tab_2_products_limit', 0, 'N;', '2025-06-29 07:56:09', '2025-06-29 07:56:09'),
(333, 'storefront_product_grid_section_tab_3_product_type', 0, 's:17:\"category_products\";', '2025-06-29 07:56:09', '2025-06-29 08:29:15'),
(334, 'storefront_product_grid_section_tab_3_category_id', 0, 's:2:\"10\";', '2025-06-29 07:56:09', '2025-06-29 08:29:15'),
(335, 'storefront_product_grid_section_tab_3_products_limit', 0, 'N;', '2025-06-29 07:56:09', '2025-06-29 07:56:09'),
(336, 'storefront_product_grid_section_tab_4_product_type', 0, 's:17:\"category_products\";', '2025-06-29 07:56:09', '2025-06-29 08:29:15'),
(337, 'storefront_product_grid_section_tab_4_category_id', 0, 's:2:\"17\";', '2025-06-29 07:56:09', '2025-06-29 08:29:15'),
(338, 'storefront_product_grid_section_tab_4_products_limit', 0, 'N;', '2025-06-29 07:56:09', '2025-06-29 07:56:09'),
(339, 'storefront_three_column_banners_enabled', 0, 's:1:\"0\";', '2025-06-29 07:56:09', '2025-06-29 07:56:09'),
(340, 'storefront_three_column_banners_1_call_to_action_url', 0, 'N;', '2025-06-29 07:56:09', '2025-06-29 07:56:09'),
(341, 'storefront_three_column_banners_1_open_in_new_window', 0, 's:1:\"0\";', '2025-06-29 07:56:09', '2025-06-29 07:56:09'),
(342, 'storefront_three_column_banners_2_call_to_action_url', 0, 'N;', '2025-06-29 07:56:09', '2025-06-29 07:56:09'),
(343, 'storefront_three_column_banners_2_open_in_new_window', 0, 's:1:\"0\";', '2025-06-29 07:56:09', '2025-06-29 07:56:09'),
(344, 'storefront_three_column_banners_3_call_to_action_url', 0, 'N;', '2025-06-29 07:56:09', '2025-06-29 07:56:09'),
(345, 'storefront_three_column_banners_3_open_in_new_window', 0, 's:1:\"0\";', '2025-06-29 07:56:09', '2025-06-29 07:56:09'),
(346, 'storefront_product_tabs_2_section_enabled', 0, 's:1:\"1\";', '2025-06-29 07:56:09', '2025-06-29 08:31:24'),
(347, 'storefront_product_tabs_2_section_tab_1_product_type', 0, 's:15:\"latest_products\";', '2025-06-29 07:56:09', '2025-06-29 08:31:24'),
(348, 'storefront_product_tabs_2_section_tab_1_category_id', 0, 'N;', '2025-06-29 07:56:09', '2025-06-29 07:56:09'),
(349, 'storefront_product_tabs_2_section_tab_1_products_limit', 0, 's:2:\"10\";', '2025-06-29 07:56:09', '2025-06-29 08:31:24'),
(350, 'storefront_product_tabs_2_section_tab_2_product_type', 0, 's:24:\"recently_viewed_products\";', '2025-06-29 07:56:09', '2025-06-29 08:31:24'),
(351, 'storefront_product_tabs_2_section_tab_2_category_id', 0, 'N;', '2025-06-29 07:56:09', '2025-06-29 07:56:09'),
(352, 'storefront_product_tabs_2_section_tab_2_products_limit', 0, 's:2:\"10\";', '2025-06-29 07:56:09', '2025-06-29 08:31:24'),
(353, 'storefront_product_tabs_2_section_tab_3_product_type', 0, 's:17:\"category_products\";', '2025-06-29 07:56:09', '2025-06-29 08:31:24'),
(354, 'storefront_product_tabs_2_section_tab_3_category_id', 0, 's:2:\"10\";', '2025-06-29 07:56:09', '2025-06-29 08:31:24'),
(355, 'storefront_product_tabs_2_section_tab_3_products_limit', 0, 'N;', '2025-06-29 07:56:09', '2025-06-29 07:56:09'),
(356, 'storefront_product_tabs_2_section_tab_4_product_type', 0, 's:17:\"category_products\";', '2025-06-29 07:56:09', '2025-06-29 08:31:24'),
(357, 'storefront_product_tabs_2_section_tab_4_category_id', 0, 's:2:\"13\";', '2025-06-29 07:56:09', '2025-06-29 08:31:24'),
(358, 'storefront_product_tabs_2_section_tab_4_products_limit', 0, 'N;', '2025-06-29 07:56:09', '2025-06-29 07:56:09'),
(359, 'storefront_one_column_banner_enabled', 0, 's:1:\"0\";', '2025-06-29 07:56:09', '2025-06-29 07:56:09'),
(360, 'storefront_one_column_banner_call_to_action_url', 0, 'N;', '2025-06-29 07:56:09', '2025-06-29 07:56:09'),
(361, 'storefront_one_column_banner_open_in_new_window', 0, 's:1:\"0\";', '2025-06-29 07:56:09', '2025-06-29 07:56:09'),
(362, 'storefront_blogs_section_enabled', 0, 's:1:\"0\";', '2025-06-29 07:56:09', '2025-07-02 22:27:31'),
(363, 'storefront_recent_blogs', 0, 's:1:\"5\";', '2025-06-29 07:56:09', '2025-06-29 07:56:09'),
(364, 'storefront_footer_tags', 0, 'a:10:{i:0;s:1:\"8\";i:1;s:1:\"1\";i:2;s:2:\"35\";i:3;s:1:\"5\";i:4;s:2:\"14\";i:5;s:2:\"11\";i:6;s:2:\"15\";i:7;s:1:\"4\";i:8;s:1:\"3\";i:9;s:2:\"26\";}', '2025-06-29 07:56:09', '2025-06-30 16:57:42'),
(365, 'storefront_featured_categories_section_category_1_products', 0, 'N;', '2025-06-29 07:56:09', '2025-06-29 07:56:09'),
(366, 'storefront_featured_categories_section_category_2_products', 0, 'N;', '2025-06-29 07:56:09', '2025-06-29 07:56:09'),
(367, 'storefront_featured_categories_section_category_3_products', 0, 'N;', '2025-06-29 07:56:09', '2025-06-29 07:56:09'),
(368, 'storefront_featured_categories_section_category_4_products', 0, 'N;', '2025-06-29 07:56:09', '2025-06-29 07:56:09'),
(369, 'storefront_featured_categories_section_category_5_products', 0, 'N;', '2025-06-29 07:56:09', '2025-06-29 07:56:09'),
(370, 'storefront_featured_categories_section_category_6_products', 0, 'N;', '2025-06-29 07:56:09', '2025-06-29 07:56:09'),
(371, 'storefront_product_tabs_1_section_tab_1_products', 0, 'N;', '2025-06-29 07:56:09', '2025-06-29 07:56:09'),
(372, 'storefront_product_tabs_1_section_tab_2_products', 0, 'N;', '2025-06-29 07:56:09', '2025-06-29 07:56:09'),
(373, 'storefront_product_tabs_1_section_tab_3_products', 0, 'N;', '2025-06-29 07:56:09', '2025-06-29 07:56:09'),
(374, 'storefront_product_tabs_1_section_tab_4_products', 0, 'N;', '2025-06-29 07:56:09', '2025-06-29 07:56:09'),
(375, 'storefront_top_brands', 0, 'a:2:{i:0;s:1:\"2\";i:1;s:1:\"1\";}', '2025-06-29 07:56:09', '2025-06-29 08:24:59'),
(376, 'storefront_vertical_products_1_products', 0, 'N;', '2025-06-29 07:56:09', '2025-06-29 07:56:09'),
(377, 'storefront_vertical_products_2_products', 0, 'N;', '2025-06-29 07:56:09', '2025-06-29 07:56:09'),
(378, 'storefront_vertical_products_3_products', 0, 'N;', '2025-06-29 07:56:09', '2025-06-29 07:56:09'),
(379, 'storefront_product_grid_section_tab_1_products', 0, 'N;', '2025-06-29 07:56:09', '2025-06-29 07:56:09'),
(380, 'storefront_product_grid_section_tab_2_products', 0, 'N;', '2025-06-29 07:56:09', '2025-06-29 07:56:09'),
(381, 'storefront_product_grid_section_tab_3_products', 0, 'N;', '2025-06-29 07:56:09', '2025-06-29 07:56:09'),
(382, 'storefront_product_grid_section_tab_4_products', 0, 'N;', '2025-06-29 07:56:09', '2025-06-29 07:56:09'),
(383, 'storefront_product_tabs_2_section_tab_1_products', 0, 'N;', '2025-06-29 07:56:09', '2025-06-29 07:56:09'),
(384, 'storefront_product_tabs_2_section_tab_2_products', 0, 'N;', '2025-06-29 07:56:09', '2025-06-29 07:56:09'),
(385, 'storefront_product_tabs_2_section_tab_3_products', 0, 'N;', '2025-06-29 07:56:09', '2025-06-29 07:56:09'),
(386, 'storefront_product_tabs_2_section_tab_4_products', 0, 'N;', '2025-06-29 07:56:09', '2025-06-29 07:56:09'),
(387, 'storefront_header_logo', 1, NULL, '2025-06-29 08:05:49', '2025-06-29 08:05:49'),
(388, 'storefront_mail_logo', 1, NULL, '2025-06-29 08:05:49', '2025-06-29 08:05:49'),
(389, 'storefront_favicon', 0, 's:1:\"2\";', '2025-06-29 08:05:49', '2025-06-29 08:05:49'),
(390, 'storefront_accepted_payment_methods_image', 0, 's:2:\"14\";', '2025-06-29 08:07:21', '2025-06-29 08:07:21'),
(391, 'storefront_three_column_full_width_banners_background_file_id', 0, 's:2:\"80\";', '2025-06-29 08:21:18', '2025-06-30 17:19:47'),
(392, 'ccavenue_enabled', 0, 's:1:\"1\";', '2025-07-11 00:55:27', '2025-07-11 00:55:27'),
(393, 'ccavenue_label', 1, NULL, '2025-07-11 01:02:34', '2025-07-11 01:02:34'),
(394, 'ccavenue_description', 1, NULL, '2025-07-11 01:07:41', '2025-07-11 01:07:41');

-- --------------------------------------------------------

--
-- Table structure for table `setting_translations`
--

CREATE TABLE `setting_translations` (
  `id` int UNSIGNED NOT NULL,
  `setting_id` int UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `setting_translations`
--

INSERT INTO `setting_translations` (`id`, `setting_id`, `locale`, `value`) VALUES
(1, 1, 'en', 's:5:\"Avako\";'),
(2, 24, 'en', 's:4:\"auto\";'),
(3, 25, 'en', 's:13:\"Free Shipping\";'),
(4, 26, 'en', 's:12:\"Local Pickup\";'),
(5, 27, 'en', 's:9:\"Flat Rate\";'),
(6, 28, 'en', 's:6:\"PayPal\";'),
(7, 29, 'en', 's:28:\"Pay via your PayPal account.\";'),
(8, 30, 'en', 's:6:\"Stripe\";'),
(9, 31, 'en', 's:29:\"Pay via credit or debit card.\";'),
(10, 32, 'en', 's:5:\"Paytm\";'),
(11, 33, 'en', 's:103:\"The best payment gateway provider in India for e-payment through credit card, debit card & net banking.\";'),
(12, 34, 'en', 's:8:\"Razorpay\";'),
(13, 35, 'en', 's:74:\"Pay securely by Credit or Debit card or Internet Banking through Razorpay.\";'),
(14, 36, 'en', 's:9:\"Instamojo\";'),
(15, 37, 'en', 's:16:\"CC/DB/NB/Wallets\";'),
(16, 38, 'en', 's:13:\"Authorize.net\";'),
(17, 39, 'en', 's:33:\"Accept payments anytime, anywhere\";'),
(18, 40, 'en', 's:8:\"Paystack\";'),
(19, 41, 'en', 's:45:\"Modern online and offline payments for Africa\";'),
(20, 42, 'en', 's:12:\"Mercado Pago\";'),
(21, 43, 'en', 's:36:\"From now on, do more with your money\";'),
(22, 44, 'en', 's:11:\"Flutterwave\";'),
(23, 45, 'en', 's:40:\"Endless possibilities for every business\";'),
(24, 46, 'en', 's:6:\"Iyzico\";'),
(25, 47, 'en', 's:33:\"Pay for your shopping with iyzico\";'),
(26, 48, 'en', 's:7:\"Payfast\";'),
(27, 49, 'en', 's:31:\"Online Payments In South Africa\";'),
(28, 50, 'en', 's:5:\"bKash\";'),
(29, 51, 'en', 's:27:\"Pay via your bKash account.\";'),
(30, 52, 'en', 's:5:\"Nagad\";'),
(31, 53, 'en', 's:27:\"Pay via your Nagad account.\";'),
(32, 54, 'en', 's:10:\"SSLCommerz\";'),
(33, 55, 'en', 's:32:\"Pay via your SSLCommerz account.\";'),
(34, 56, 'en', 's:16:\"Cash On Delivery\";'),
(35, 57, 'en', 's:28:\"Pay with cash upon delivery.\";'),
(36, 58, 'en', 's:13:\"Bank Transfer\";'),
(37, 59, 'en', 's:100:\"Make your payment directly into our bank account. Please use your Order ID as the payment reference.\";'),
(38, 60, 'en', 's:19:\"Check / Money Order\";'),
(39, 61, 'en', 's:33:\"Please send a check to our store.\";'),
(40, 64, 'en', 's:45:\"Online Platform for Natural & Organic Product\";'),
(41, 65, 'en', 's:45:\"Online Platform for Natural & Organic Product\";'),
(42, 66, 'en', 'N;'),
(43, 67, 'en', 'N;'),
(44, 193, 'en', 's:1:\"1\";'),
(45, 194, 'en', 's:1:\"2\";'),
(46, 195, 'en', 's:22:\"Welcome to Avako Store\";'),
(47, 196, 'en', 's:94:\"1583, 15th Main Rd, Bharathi Colony,\r\nJ Block, Bharathi Nagar, Anna Nagar, Chennai, Tamil Nadu\";'),
(48, 197, 'en', 's:12:\"Our Services\";'),
(49, 198, 'en', 's:11:\"Information\";'),
(50, 62, 'en', 's:92:\"Copyright © <a href=\"{{ store_url }}\">{{ store_name }}</a> {{ year }}. All rights reserved.\";'),
(51, 199, 'en', 's:12:\"24/7 SUPPORT\";'),
(52, 200, 'en', 's:18:\"Support every time\";'),
(53, 201, 'en', 's:14:\"ACCEPT PAYMENT\";'),
(54, 202, 'en', 's:20:\"Visa, Paypal, Master\";'),
(55, 203, 'en', 's:15:\"SECURED PAYMENT\";'),
(56, 204, 'en', 's:12:\"100% secured\";'),
(57, 205, 'en', 's:13:\"FREE SHIPPING\";'),
(58, 206, 'en', 's:17:\"Order over ₹100\";'),
(59, 207, 'en', 's:14:\"30 DAYS RETURN\";'),
(60, 208, 'en', 's:17:\"30 days guarantee\";'),
(61, 209, 'en', 's:2:\"44\";'),
(62, 210, 'en', 's:2:\"45\";'),
(63, 211, 'en', 's:2:\"46\";'),
(64, 212, 'en', 's:2:\"81\";'),
(65, 213, 'en', 's:2:\"85\";'),
(66, 214, 'en', 's:2:\"81\";'),
(67, 215, 'en', 's:36:\"Top Categories in Sales and Trending\";'),
(68, 216, 'en', 's:108:\"Last Month up to 1500+ Products Sales From this category. You can choose a product from here and save money.\";'),
(69, 217, 'en', 's:8:\"Featured\";'),
(70, 218, 'en', 's:7:\"Special\";'),
(71, 219, 'en', 's:11:\"New Arrival\";'),
(72, 220, 'en', 's:6:\"Latest\";'),
(73, 221, 'en', 's:2:\"43\";'),
(74, 222, 'en', 's:2:\"42\";'),
(75, 223, 'en', 's:21:\"Biriyani Hilly Spices\";'),
(76, 224, 'en', 's:21:\"Hilly Fresh Vegetable\";'),
(77, 225, 'en', 's:20:\"Coffee Powder & Bean\";'),
(78, 226, 'en', 's:21:\"Hilly Spices Original\";'),
(79, 227, 'en', 's:2:\"26\";'),
(80, 228, 'en', 's:2:\"27\";'),
(81, 229, 'en', 's:2:\"28\";'),
(82, 230, 'en', 's:16:\"Hot Best Sellers\";'),
(83, 231, 'en', 's:15:\"Latest Products\";'),
(84, 232, 'en', 's:15:\"Recently Viewed\";'),
(85, 233, 'en', 's:7:\"On Sale\";'),
(86, 234, 'en', 's:11:\"Top Selling\";'),
(87, 235, 'en', 's:2:\"29\";'),
(88, 236, 'en', 's:12:\"Recent Posts\";'),
(89, 387, 'en', 's:1:\"1\";'),
(90, 388, 'en', 's:1:\"1\";'),
(91, 393, 'en', 's:8:\"CCAvenue\";'),
(92, 394, 'en', 's:28:\"Pay via credit or debit card\";');

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` int UNSIGNED NOT NULL,
  `speed` int DEFAULT NULL,
  `autoplay` tinyint(1) DEFAULT NULL,
  `autoplay_speed` int DEFAULT NULL,
  `fade` tinyint(1) NOT NULL DEFAULT '0',
  `dots` tinyint(1) DEFAULT NULL,
  `arrows` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `speed`, `autoplay`, `autoplay_speed`, `fade`, `dots`, `arrows`, `created_at`, `updated_at`) VALUES
(1, 1000, 1, 5000, 0, 1, 1, '2025-06-29 08:38:04', '2025-06-30 17:00:32');

-- --------------------------------------------------------

--
-- Table structure for table `slider_slides`
--

CREATE TABLE `slider_slides` (
  `id` int UNSIGNED NOT NULL,
  `slider_id` int UNSIGNED NOT NULL,
  `options` text COLLATE utf8mb4_unicode_ci,
  `call_to_action_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `open_in_new_window` tinyint(1) DEFAULT NULL,
  `position` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `slider_slides`
--

INSERT INTO `slider_slides` (`id`, `slider_id`, `options`, `call_to_action_url`, `open_in_new_window`, `position`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, '#', 1, 0, '2025-06-29 08:38:04', '2025-06-29 08:38:04'),
(2, 1, NULL, '#', 1, 1, '2025-06-29 08:38:04', '2025-06-29 08:38:04'),
(3, 1, NULL, '#', 1, 2, '2025-06-29 08:38:04', '2025-06-29 08:38:04');

-- --------------------------------------------------------

--
-- Table structure for table `slider_slide_translations`
--

CREATE TABLE `slider_slide_translations` (
  `id` int UNSIGNED NOT NULL,
  `slider_slide_id` int UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_id` int UNSIGNED DEFAULT NULL,
  `caption_1` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `caption_2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `call_to_action_text` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `direction` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `slider_slide_translations`
--

INSERT INTO `slider_slide_translations` (`id`, `slider_slide_id`, `locale`, `file_id`, `caption_1`, `caption_2`, `call_to_action_text`, `direction`) VALUES
(1, 1, 'en', 78, '<b>Hilly Natural Coffee Products</b>', NULL, NULL, 'left'),
(2, 2, 'en', 31, '<b>Hilly organic Bird Eye  Chilli</b>', 'Hilly organic Bird Eye Chilli', NULL, 'right'),
(3, 3, 'en', 32, '<b>Pure Homemade Chocolates</b>', 'Pure Homemade Chocolates', NULL, 'left');

-- --------------------------------------------------------

--
-- Table structure for table `slider_translations`
--

CREATE TABLE `slider_translations` (
  `id` int UNSIGNED NOT NULL,
  `slider_id` int UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `slider_translations`
--

INSERT INTO `slider_translations` (`id`, `slider_id`, `locale`, `name`) VALUES
(1, 1, 'en', 'Main Slider');

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` int UNSIGNED NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'birdeyechili', '2025-06-29 07:29:23', '2025-06-30 16:49:23'),
(2, 'spicychili', '2025-06-29 07:29:23', '2025-06-30 16:49:41'),
(3, 'organicchili', '2025-06-29 07:29:23', '2025-06-30 16:49:54'),
(4, 'hillychili', '2025-06-29 07:29:23', '2025-06-30 16:50:08'),
(5, 'dryredchili', '2025-06-29 07:29:23', '2025-06-30 16:50:23'),
(6, 'biriyanimasala', '2025-06-29 07:29:23', '2025-06-30 16:50:38'),
(7, 'hillyspices', '2025-06-29 07:29:23', '2025-06-30 16:50:53'),
(8, 'aromaticspices', '2025-06-30 16:51:31', '2025-06-30 16:51:31'),
(9, 'traditionalmasala', '2025-06-30 16:51:44', '2025-06-30 16:51:44'),
(10, 'naturalspices', '2025-06-30 16:51:51', '2025-06-30 16:51:51'),
(11, 'freshcoffee', '2025-06-30 16:52:08', '2025-06-30 16:52:08'),
(12, 'coffeebeans', '2025-06-30 16:52:15', '2025-06-30 16:52:15'),
(13, 'eucalyptusoil', '2025-06-30 16:52:23', '2025-06-30 16:52:23'),
(14, 'essentialoils', '2025-06-30 16:52:29', '2025-06-30 16:52:29'),
(15, 'freshvegetables', '2025-06-30 16:52:37', '2025-06-30 16:52:37'),
(16, 'hillyproduce', '2025-06-30 16:52:44', '2025-06-30 16:52:44'),
(17, 'organicveggies', '2025-06-30 16:52:51', '2025-06-30 16:52:51'),
(18, 'hillygarlic', '2025-06-30 16:52:58', '2025-06-30 16:52:58'),
(19, 'organicgarlic', '2025-06-30 16:53:03', '2025-06-30 16:53:03'),
(20, 'malaipoondu', '2025-06-30 16:53:13', '2025-06-30 16:53:13'),
(21, 'hillyhoney', '2025-06-30 16:53:22', '2025-06-30 16:53:22'),
(22, 'malaithen', '2025-06-30 16:53:28', '2025-06-30 16:53:28'),
(23, 'rawhoney', '2025-06-30 16:53:35', '2025-06-30 16:53:35'),
(24, 'naturalfruits', '2025-06-30 16:53:42', '2025-06-30 16:53:42'),
(25, 'hillyfruits', '2025-06-30 16:53:48', '2025-06-30 16:53:48'),
(26, 'organicfruits', '2025-06-30 16:53:55', '2025-06-30 16:53:55'),
(27, 'hillypepper', '2025-06-30 16:54:02', '2025-06-30 16:54:02'),
(28, 'blackpepper', '2025-06-30 16:54:08', '2025-06-30 16:54:08'),
(29, 'originalspices', '2025-06-30 16:54:14', '2025-06-30 16:54:14'),
(30, 'hillyflavors', '2025-06-30 16:54:22', '2025-06-30 16:54:22'),
(31, 'traditionalspices', '2025-06-30 16:54:30', '2025-06-30 16:54:30'),
(32, 'homemadechocolate', '2025-06-30 16:54:37', '2025-06-30 16:54:37'),
(33, 'artisanchocolate', '2025-06-30 16:54:44', '2025-06-30 16:54:44'),
(34, 'handcraftedsweets', '2025-06-30 16:54:50', '2025-06-30 16:54:50'),
(35, 'chocolovers', '2025-06-30 16:54:58', '2025-06-30 16:54:58'),
(36, 'purecocoa', '2025-06-30 16:55:06', '2025-06-30 16:55:06');

-- --------------------------------------------------------

--
-- Table structure for table `tag_translations`
--

CREATE TABLE `tag_translations` (
  `id` int UNSIGNED NOT NULL,
  `tag_id` int UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tag_translations`
--

INSERT INTO `tag_translations` (`id`, `tag_id`, `locale`, `name`) VALUES
(1, 1, 'en', 'BirdEyeChili'),
(2, 2, 'en', 'SpicyChili'),
(3, 3, 'en', 'OrganicChili'),
(4, 4, 'en', 'HillyChili'),
(5, 5, 'en', 'DryRedChili'),
(6, 6, 'en', 'BiriyaniMasala'),
(7, 7, 'en', 'HillySpices'),
(8, 8, 'en', 'AromaticSpices'),
(9, 9, 'en', 'TraditionalMasala'),
(10, 10, 'en', 'NaturalSpices'),
(11, 11, 'en', 'FreshCoffee'),
(12, 12, 'en', 'CoffeeBeans'),
(13, 13, 'en', 'EucalyptusOil'),
(14, 14, 'en', 'EssentialOils'),
(15, 15, 'en', 'FreshVegetables'),
(16, 16, 'en', 'HillyProduce'),
(17, 17, 'en', 'OrganicVeggies'),
(18, 18, 'en', 'HillyGarlic'),
(19, 19, 'en', 'OrganicGarlic'),
(20, 20, 'en', 'MalaiPoondu'),
(21, 21, 'en', 'HillyHoney'),
(22, 22, 'en', 'MalaiThen'),
(23, 23, 'en', 'RawHoney'),
(24, 24, 'en', 'NaturalFruits'),
(25, 25, 'en', 'HillyFruits'),
(26, 26, 'en', 'OrganicFruits'),
(27, 27, 'en', 'HillyPepper'),
(28, 28, 'en', 'BlackPepper'),
(29, 29, 'en', 'OriginalSpices'),
(30, 30, 'en', 'HillyFlavors'),
(31, 31, 'en', 'TraditionalSpices'),
(32, 32, 'en', 'HomemadeChocolate'),
(33, 33, 'en', 'ArtisanChocolate'),
(34, 34, 'en', 'HandcraftedSweets'),
(35, 35, 'en', 'ChocoLovers'),
(36, 36, 'en', 'PureCocoa');

-- --------------------------------------------------------

--
-- Table structure for table `tax_classes`
--

CREATE TABLE `tax_classes` (
  `id` int UNSIGNED NOT NULL,
  `based_on` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tax_class_translations`
--

CREATE TABLE `tax_class_translations` (
  `id` int UNSIGNED NOT NULL,
  `tax_class_id` int UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `label` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tax_rates`
--

CREATE TABLE `tax_rates` (
  `id` int UNSIGNED NOT NULL,
  `tax_class_id` int UNSIGNED NOT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zip` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rate` decimal(8,4) UNSIGNED NOT NULL,
  `position` int UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tax_rate_translations`
--

CREATE TABLE `tax_rate_translations` (
  `id` int UNSIGNED NOT NULL,
  `tax_rate_id` int UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `throttle`
--

CREATE TABLE `throttle` (
  `id` int UNSIGNED NOT NULL,
  `user_id` int UNSIGNED DEFAULT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `throttle`
--

INSERT INTO `throttle` (`id`, `user_id`, `type`, `ip`, `created_at`, `updated_at`) VALUES
(1, NULL, 'global', NULL, '2025-07-11 00:50:49', '2025-07-11 00:50:49'),
(2, NULL, 'ip', '127.0.0.1', '2025-07-11 00:50:49', '2025-07-11 00:50:49');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` int UNSIGNED NOT NULL,
  `order_id` int UNSIGNED NOT NULL,
  `transaction_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_method` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `translations`
--

CREATE TABLE `translations` (
  `id` int UNSIGNED NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `translation_translations`
--

CREATE TABLE `translation_translations` (
  `id` int UNSIGNED NOT NULL,
  `translation_id` int UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `updater_scripts`
--

CREATE TABLE `updater_scripts` (
  `id` int UNSIGNED NOT NULL,
  `script` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `updater_scripts`
--

INSERT INTO `updater_scripts` (`id`, `script`) VALUES
(1, 'V2_0_0');

-- --------------------------------------------------------

--
-- Table structure for table `up_sell_products`
--

CREATE TABLE `up_sell_products` (
  `product_id` int UNSIGNED NOT NULL,
  `up_sell_product_id` int UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int UNSIGNED NOT NULL,
  `first_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `permissions` text COLLATE utf8mb4_unicode_ci,
  `last_login` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `password`, `permissions`, `last_login`, `created_at`, `updated_at`) VALUES
(1, 'Super', 'Admin', 'superadmin@email.com', '0123456789', '$2y$10$GMf8VaMq9bnsKjrLYPJuCutYjAbuyx3bBQpYlP/tu31nX4MqSwxc.', NULL, NULL, '2025-06-29 01:24:28', '2025-06-29 01:24:28'),
(2, 'Avako', 'Admin', 'azzok17@gmail.com', '9360676505', '$2y$10$mtgU23YcDkVc2Z3dSM/Efu1ZL1g2fAyXDxUo6baEOjJ5ClwC2oVEO', NULL, '2025-07-11 11:53:17', '2025-06-29 01:28:19', '2025-07-11 06:23:17');

-- --------------------------------------------------------

--
-- Table structure for table `user_roles`
--

CREATE TABLE `user_roles` (
  `user_id` int UNSIGNED NOT NULL,
  `role_id` int UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_roles`
--

INSERT INTO `user_roles` (`user_id`, `role_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2025-06-29 01:24:28', '2025-06-29 01:24:28'),
(2, 2, '2025-06-29 01:28:19', '2025-06-29 01:28:19');

-- --------------------------------------------------------

--
-- Table structure for table `variations`
--

CREATE TABLE `variations` (
  `id` int UNSIGNED NOT NULL,
  `uid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_global` tinyint(1) NOT NULL DEFAULT '1',
  `position` int UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `variations`
--

INSERT INTO `variations` (`id`, `uid`, `type`, `is_global`, `position`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'l1ty4l257yg5', 'text', 1, NULL, NULL, '2025-06-29 09:03:20', '2025-06-29 09:03:20'),
(2, 'arl843dm0cl0', 'text', 0, 1, NULL, '2025-06-29 09:06:37', '2025-06-29 09:06:37'),
(3, 'lwt3nvlu8nt9', 'text', 0, 1, NULL, '2025-06-29 09:11:11', '2025-06-29 09:11:11'),
(4, 'abnpwb260fbv', 'text', 0, 1, NULL, '2025-06-29 09:32:04', '2025-06-29 09:32:04'),
(5, '8vmizll1zers', 'text', 0, 1, NULL, '2025-06-29 09:38:17', '2025-06-29 09:38:17'),
(6, 'iynik5phr6wu', 'text', 0, 1, NULL, '2025-06-29 10:33:57', '2025-06-29 10:33:57'),
(7, 'g5zddfttmjo9', 'text', 0, 1, NULL, '2025-06-30 15:53:14', '2025-06-30 15:53:14'),
(8, 'fejg7j7r3oc2', 'text', 0, 1, NULL, '2025-06-30 16:07:34', '2025-06-30 16:07:34'),
(9, '8svv7ucnsn9w', 'text', 0, 1, NULL, '2025-06-30 16:15:10', '2025-06-30 16:15:10'),
(10, '4rd3qwjj0z7c', 'text', 0, 1, NULL, '2025-06-30 16:28:20', '2025-06-30 16:28:20'),
(11, '9kt0bifk692i', 'text', 0, 1, NULL, '2025-07-02 20:51:37', '2025-07-02 20:51:37'),
(12, '2joa4iec2tl1', 'text', 0, 1, NULL, '2025-07-02 20:57:21', '2025-07-02 20:57:21'),
(13, 'hg69ke8tcxfi', 'text', 0, 1, NULL, '2025-07-02 21:08:22', '2025-07-02 21:08:22'),
(14, '4i7yudd2uid3', 'text', 0, 1, NULL, '2025-07-02 21:15:00', '2025-07-02 21:15:00'),
(15, 'kj0gs2gsmuvr', 'text', 0, 1, NULL, '2025-07-02 21:27:50', '2025-07-02 21:27:50'),
(16, 'edw2grafynr1', 'text', 0, 1, NULL, '2025-07-02 21:36:00', '2025-07-02 21:36:00'),
(17, 'kzhv38bq2ueo', 'text', 0, 1, NULL, '2025-07-02 21:42:14', '2025-07-02 21:42:14'),
(18, 'jpd1fd4ob3jc', 'text', 0, 1, NULL, '2025-07-02 21:45:48', '2025-07-02 21:45:48'),
(19, '87ojwc0bw7ao', 'text', 0, 1, NULL, '2025-07-02 22:02:59', '2025-07-02 22:02:59'),
(20, 'bhqk5pvbrnwc', 'text', 0, 1, NULL, '2025-07-02 22:09:59', '2025-07-02 22:09:59'),
(21, 'gwyo95rct5ke', 'text', 0, 1, NULL, '2025-07-02 22:16:53', '2025-07-02 22:16:53'),
(22, 'ivhho27qj8e3', 'text', 0, 1, NULL, '2025-07-02 22:25:42', '2025-07-02 22:25:42'),
(23, '6l7mlzkmhz1w', 'text', 0, 1, NULL, '2025-07-03 14:44:07', '2025-07-03 14:44:07'),
(24, 'lzpwl4wbcwml', 'text', 0, 1, NULL, '2025-07-03 14:47:47', '2025-07-03 14:47:47'),
(25, 'i3vcsnc37zmj', 'text', 0, 1, NULL, '2025-07-03 14:50:42', '2025-07-03 14:50:42'),
(26, 'c6msphzt6n92', 'text', 0, 1, NULL, '2025-07-03 14:55:26', '2025-07-03 14:55:26'),
(27, 'fhboslciiqh3', 'text', 0, 1, NULL, '2025-07-03 14:57:50', '2025-07-03 14:57:50'),
(28, '29d26hwfzkf9', 'text', 0, 1, NULL, '2025-07-03 15:00:46', '2025-07-03 15:00:46'),
(29, 'jhkzgznh2bg8', 'text', 0, 1, NULL, '2025-07-03 15:03:38', '2025-07-03 15:03:38'),
(30, 'd0a8iedlobhn', 'text', 0, 1, NULL, '2025-07-03 15:06:06', '2025-07-03 15:06:06'),
(31, 'lo3sxgw9ut34', 'text', 0, 1, NULL, '2025-07-03 15:09:42', '2025-07-03 15:09:42'),
(32, 'ib0xx0g0y3vb', 'text', 0, 1, NULL, '2025-07-09 15:22:51', '2025-07-09 15:22:51'),
(33, 'qwsfm85qnfzl', 'text', 0, 1, NULL, '2025-07-09 15:27:41', '2025-07-09 15:27:41'),
(34, 'fy38nzqhk7px', 'text', 0, 1, NULL, '2025-07-09 15:43:25', '2025-07-09 15:43:25'),
(35, 'oymzd3ddwv34', 'text', 0, 1, NULL, '2025-07-09 15:54:30', '2025-07-09 15:54:30'),
(36, 'lqniww8g15mv', 'text', 0, 1, NULL, '2025-07-09 16:00:42', '2025-07-09 16:00:42'),
(37, 'l91y20kwb255', 'text', 0, 1, NULL, '2025-07-09 16:13:19', '2025-07-09 16:13:19'),
(38, 'lw7kwki3uvzg', 'text', 0, 1, NULL, '2025-07-10 14:17:19', '2025-07-10 14:17:19'),
(39, '7fwcwpgb4sil', 'text', 0, 1, NULL, '2025-07-10 14:19:58', '2025-07-10 14:19:58'),
(40, '9z7tlpvjbhy3', 'text', 0, 1, NULL, '2025-07-10 14:24:05', '2025-07-10 14:24:05'),
(41, 'ea1kc9nxifyi', 'text', 0, 1, NULL, '2025-07-10 14:28:19', '2025-07-10 14:28:19'),
(42, 'eszellja2xul', 'text', 0, 1, NULL, '2025-07-10 14:32:50', '2025-07-10 14:32:50'),
(43, '4mifve8twuk4', 'text', 0, 1, NULL, '2025-07-10 14:36:17', '2025-07-10 14:36:17'),
(44, '9g2hfmyhf4qn', 'text', 0, 1, NULL, '2025-07-10 14:41:28', '2025-07-10 14:41:28'),
(45, 'jejxxz8v8jrv', 'text', 0, 1, NULL, '2025-07-10 14:45:26', '2025-07-10 14:45:26'),
(46, '17la1bfmex46', 'text', 0, 1, NULL, '2025-07-10 14:48:52', '2025-07-10 14:48:52'),
(47, 'mcjqdyl6p49n', 'text', 0, 1, NULL, '2025-07-10 14:52:38', '2025-07-10 14:52:38'),
(48, 'j4ovyyrwn71u', 'text', 0, 1, NULL, '2025-07-10 14:55:08', '2025-07-10 14:55:08'),
(49, '621omu2lfpyn', 'text', 0, 1, NULL, '2025-07-10 14:57:49', '2025-07-10 14:57:49'),
(50, 'fcart95xmeis', 'text', 0, 1, NULL, '2025-07-10 15:00:22', '2025-07-10 15:00:22'),
(51, '1f8lxj5ipjb8', 'text', 0, 1, NULL, '2025-07-10 15:03:13', '2025-07-10 15:03:13');

-- --------------------------------------------------------

--
-- Table structure for table `variation_translations`
--

CREATE TABLE `variation_translations` (
  `id` int UNSIGNED NOT NULL,
  `variation_id` int UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `variation_translations`
--

INSERT INTO `variation_translations` (`id`, `variation_id`, `locale`, `name`) VALUES
(1, 1, 'en', 'Weight'),
(2, 2, 'en', 'Weight'),
(3, 3, 'en', 'Weight'),
(4, 4, 'en', 'Weight'),
(5, 5, 'en', 'Weight'),
(6, 6, 'en', 'Size'),
(7, 7, 'en', 'Weight'),
(8, 8, 'en', 'Weight'),
(9, 9, 'en', 'Weight'),
(10, 10, 'en', 'Weight'),
(11, 11, 'en', 'Weight'),
(12, 12, 'en', 'Weight'),
(13, 13, 'en', 'Weight'),
(14, 14, 'en', 'Weight'),
(15, 15, 'en', 'Weight'),
(16, 16, 'en', 'Weight'),
(17, 17, 'en', 'Weight'),
(18, 18, 'en', 'Weight'),
(19, 19, 'en', 'Weight'),
(20, 20, 'en', 'Weight'),
(21, 21, 'en', 'Weight'),
(22, 22, 'en', 'Weight'),
(23, 23, 'en', 'Weight'),
(24, 24, 'en', 'Weight'),
(25, 25, 'en', 'Weight'),
(26, 26, 'en', 'Weight'),
(27, 27, 'en', 'Weight'),
(28, 28, 'en', 'Weight'),
(29, 29, 'en', 'Weight'),
(30, 30, 'en', 'Weight'),
(31, 31, 'en', 'Weight'),
(32, 32, 'en', 'Weight'),
(33, 33, 'en', 'Weight'),
(34, 34, 'en', 'Weight'),
(35, 35, 'en', 'Weight'),
(36, 36, 'en', 'Weight'),
(37, 37, 'en', 'Weight'),
(38, 38, 'en', 'Weight'),
(39, 39, 'en', 'Weight'),
(40, 40, 'en', 'Weight'),
(41, 41, 'en', 'Weight'),
(42, 42, 'en', 'Weight'),
(43, 43, 'en', 'Weight'),
(44, 44, 'en', 'Weight'),
(45, 45, 'en', 'Weight'),
(46, 46, 'en', 'Weight'),
(47, 47, 'en', 'Weight'),
(48, 48, 'en', 'Weight'),
(49, 49, 'en', 'Weight'),
(50, 50, 'en', 'Weight'),
(51, 51, 'en', 'Weight');

-- --------------------------------------------------------

--
-- Table structure for table `variation_values`
--

CREATE TABLE `variation_values` (
  `id` int UNSIGNED NOT NULL,
  `uid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `variation_id` int UNSIGNED NOT NULL,
  `value` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` int UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `variation_values`
--

INSERT INTO `variation_values` (`id`, `uid`, `variation_id`, `value`, `position`, `created_at`, `updated_at`) VALUES
(1, '43ha9vs1dthr', 1, '', 1, '2025-06-29 09:03:20', '2025-06-29 09:03:20'),
(2, '9hy5hy28ouz9', 1, '', 2, '2025-06-29 09:03:20', '2025-06-29 09:03:20'),
(5, '6615a4owlpk4', 2, '', 1, '2025-06-29 09:06:37', '2025-06-29 09:06:37'),
(6, 'gjc8tij8cazy', 2, '', 2, '2025-06-29 09:06:37', '2025-06-29 09:06:37'),
(8, 'rplo6sg6w78t', 3, '', 1, '2025-06-29 09:11:11', '2025-06-29 09:11:11'),
(11, 'dl9v3el3o5qo', 4, '', 1, '2025-06-29 09:32:04', '2025-06-29 09:32:04'),
(12, '2cin91ix301t', 4, '', 2, '2025-06-29 09:32:04', '2025-06-29 09:32:04'),
(15, '5b470t0ccewm', 5, '', 1, '2025-06-29 09:38:17', '2025-06-29 09:38:17'),
(16, 'bf4yee21oawu', 5, '', 2, '2025-06-29 09:38:17', '2025-06-29 09:38:17'),
(19, 'k2sy7eknrcq9', 6, '', 1, '2025-06-29 10:33:57', '2025-06-29 10:33:57'),
(20, '2dikfo101b38', 6, '', 2, '2025-06-29 10:33:57', '2025-06-29 10:33:57'),
(23, 'iux46ixnl97e', 7, '', 1, '2025-06-30 15:53:14', '2025-06-30 15:53:14'),
(24, 'ek1or912df85', 7, '', 2, '2025-06-30 15:53:14', '2025-06-30 15:53:14'),
(27, '5g3k1f6yzuxw', 8, '', 1, '2025-06-30 16:07:34', '2025-06-30 16:07:34'),
(28, '42a1ldbkxncm', 8, '', 2, '2025-06-30 16:07:34', '2025-06-30 16:07:34'),
(33, '61cg2pd03v89', 9, '', 1, '2025-06-30 16:15:10', '2025-06-30 16:15:10'),
(34, 'g0x9br4lntel', 9, '', 2, '2025-06-30 16:15:10', '2025-06-30 16:15:10'),
(35, 'csnfe6q7jh91', 9, '', 3, '2025-06-30 16:15:10', '2025-06-30 16:15:10'),
(36, '6coonq0al7qt', 9, '', 4, '2025-06-30 16:15:10', '2025-06-30 16:15:10'),
(41, 'kuw21c5raiy2', 10, '', 1, '2025-06-30 16:28:20', '2025-06-30 16:28:20'),
(42, 'euwlp7kqoejb', 10, '', 2, '2025-06-30 16:28:20', '2025-06-30 16:28:20'),
(43, 'admf0gu6k33c', 10, '', 3, '2025-06-30 16:28:21', '2025-06-30 16:28:21'),
(44, 'hxdb07k9hy5c', 10, '', 4, '2025-06-30 16:28:21', '2025-06-30 16:28:21'),
(48, 'lfzdvison4i3', 11, '', 1, '2025-07-02 20:51:37', '2025-07-02 20:51:37'),
(49, '47nn3msadis1', 11, '', 2, '2025-07-02 20:51:37', '2025-07-02 20:51:37'),
(50, 'k5jk22s9cjt7', 11, '', 3, '2025-07-02 20:51:37', '2025-07-02 20:51:37'),
(53, '3eqqgmum5tta', 12, '', 1, '2025-07-02 20:57:21', '2025-07-02 20:57:21'),
(54, 'cmcqj8gvftdw', 12, '', 2, '2025-07-02 20:57:21', '2025-07-02 20:57:21'),
(59, 'dduqa5kbnzaz', 13, '', 1, '2025-07-02 21:08:22', '2025-07-02 21:08:22'),
(60, '3hnbt1tcdfxw', 13, '', 2, '2025-07-02 21:08:22', '2025-07-02 21:08:22'),
(61, 'dxywsyc612k1', 13, '', 3, '2025-07-02 21:08:22', '2025-07-02 21:08:22'),
(62, 'f9sbf49cjetr', 13, '', 4, '2025-07-02 21:08:22', '2025-07-02 21:08:22'),
(66, '368dtoyqgxl7', 14, '', 1, '2025-07-02 21:15:00', '2025-07-02 21:15:00'),
(67, 'f5i105d724lo', 14, '', 2, '2025-07-02 21:15:00', '2025-07-02 21:15:00'),
(68, 'br5la7ooiqvw', 14, '', 3, '2025-07-02 21:15:00', '2025-07-02 21:15:00'),
(73, 'hw3dgvt84a1l', 15, '', 1, '2025-07-02 21:27:50', '2025-07-02 21:27:50'),
(74, '2frn9qryxock', 15, '', 2, '2025-07-02 21:27:50', '2025-07-02 21:27:50'),
(75, 'bs6884qoml67', 15, '', 3, '2025-07-02 21:27:51', '2025-07-02 21:27:51'),
(76, '5j3un2w1451d', 15, '', 4, '2025-07-02 21:27:51', '2025-07-02 21:27:51'),
(80, '9ji7qrrnmqeu', 16, '', 1, '2025-07-02 21:36:00', '2025-07-02 21:36:00'),
(81, 'colkybo05h8x', 16, '', 2, '2025-07-02 21:36:00', '2025-07-02 21:36:00'),
(82, 'guhdb8cl3zwc', 16, '', 3, '2025-07-02 21:36:00', '2025-07-02 21:36:00'),
(86, 'j30jwbdhw6a5', 17, '', 1, '2025-07-02 21:42:14', '2025-07-02 21:42:14'),
(87, '99e03zkfoihs', 17, '', 2, '2025-07-02 21:42:14', '2025-07-02 21:42:14'),
(88, '2klx25x3ddxz', 17, '', 3, '2025-07-02 21:42:14', '2025-07-02 21:42:14'),
(91, '7werz24n7m83', 18, '', 1, '2025-07-02 21:45:48', '2025-07-02 21:45:48'),
(92, '78lk84tmqkmj', 18, '', 2, '2025-07-02 21:45:48', '2025-07-02 21:45:48'),
(95, '5uieogt11pwf', 19, '', 1, '2025-07-02 22:02:59', '2025-07-02 22:02:59'),
(96, 'jhp8q3glbp6y', 19, '', 2, '2025-07-02 22:02:59', '2025-07-02 22:02:59'),
(100, 'chfh1ak39jk2', 20, '', 1, '2025-07-02 22:09:59', '2025-07-02 22:09:59'),
(101, '7ryx0x5xvymc', 20, '', 2, '2025-07-02 22:09:59', '2025-07-02 22:09:59'),
(102, '3jlltfeqo645', 20, '', 3, '2025-07-02 22:09:59', '2025-07-02 22:09:59'),
(107, '2khv118j1ija', 21, '', 1, '2025-07-02 22:16:53', '2025-07-02 22:16:53'),
(108, '87tkagx1l1zp', 21, '', 2, '2025-07-02 22:16:53', '2025-07-02 22:16:53'),
(109, '1ddwinr68f0s', 21, '', 3, '2025-07-02 22:16:53', '2025-07-02 22:16:53'),
(110, 'cfh2xhm4aqnp', 21, '', 4, '2025-07-02 22:16:53', '2025-07-02 22:16:53'),
(113, '1xn3i4jylvn3', 22, '', 1, '2025-07-02 22:25:42', '2025-07-02 22:25:42'),
(114, '3z8jwtzbx2hj', 22, '', 2, '2025-07-02 22:25:42', '2025-07-02 22:25:42'),
(117, '32qa55br23ct', 23, '', 1, '2025-07-03 14:44:07', '2025-07-03 14:44:07'),
(118, 'jpo0twjsh9ql', 23, '', 2, '2025-07-03 14:44:07', '2025-07-03 14:44:07'),
(122, 'b9gynteyfgkh', 24, '', 1, '2025-07-03 14:47:47', '2025-07-03 14:47:47'),
(123, 'e30njhagh2i7', 24, '', 2, '2025-07-03 14:47:47', '2025-07-03 14:47:47'),
(124, 'imimr4nfe1i3', 24, '', 3, '2025-07-03 14:47:47', '2025-07-03 14:47:47'),
(128, '3toe7vx5xe80', 25, '', 1, '2025-07-03 14:50:42', '2025-07-03 14:50:42'),
(129, 'i8mgo62537hd', 25, '', 2, '2025-07-03 14:50:42', '2025-07-03 14:50:42'),
(130, 'aetn1xgnaf0k', 25, '', 3, '2025-07-03 14:50:42', '2025-07-03 14:50:42'),
(133, '51loxmkkp9ky', 26, '', 1, '2025-07-03 14:55:26', '2025-07-03 14:55:26'),
(134, '8cry9wsvm149', 26, '', 2, '2025-07-03 14:55:26', '2025-07-03 14:55:26'),
(137, 'jsp32xbco0xs', 27, '', 1, '2025-07-03 14:57:50', '2025-07-03 14:57:50'),
(138, 'kgvbrx8y9313', 27, '', 2, '2025-07-03 14:57:50', '2025-07-03 14:57:50'),
(141, '1hr41sum5dz8', 28, '', 1, '2025-07-03 15:00:46', '2025-07-03 15:00:46'),
(142, '2den7bzipoh7', 28, '', 2, '2025-07-03 15:00:46', '2025-07-03 15:00:46'),
(145, 'cwrywixm6jn3', 29, '', 1, '2025-07-03 15:03:38', '2025-07-03 15:03:38'),
(146, '7umnblsjyuv3', 29, '', 2, '2025-07-03 15:03:38', '2025-07-03 15:03:38'),
(149, 'df5nmvsk9d20', 30, '', 1, '2025-07-03 15:06:06', '2025-07-03 15:06:06'),
(150, 'kl4zs1icnntb', 30, '', 2, '2025-07-03 15:06:06', '2025-07-03 15:06:06'),
(153, 'bivvnum1z7gb', 31, '', 1, '2025-07-03 15:09:42', '2025-07-03 15:09:42'),
(154, '3ee8twexo6yk', 31, '', 2, '2025-07-03 15:09:42', '2025-07-03 15:09:42'),
(157, '3kyin4678f3n', 32, '', 1, '2025-07-09 15:22:51', '2025-07-09 15:22:51'),
(158, '392sjxfxr5mw', 32, '', 2, '2025-07-09 15:22:51', '2025-07-09 15:22:51'),
(161, 'bzarnx0d6cy6', 33, '', 1, '2025-07-09 15:27:41', '2025-07-09 15:27:41'),
(162, 'je1n5z3ck61n', 33, '', 2, '2025-07-09 15:27:41', '2025-07-09 15:27:41'),
(166, 'k6amtah7ww15', 34, '', 1, '2025-07-09 15:43:25', '2025-07-09 15:43:25'),
(167, 'bg4zftzgacmp', 34, '', 2, '2025-07-09 15:43:25', '2025-07-09 15:43:25'),
(168, 'irnxbsjicidy', 34, '', 3, '2025-07-09 15:43:25', '2025-07-09 15:43:25'),
(172, '61fkd6fqukfy', 35, '', 1, '2025-07-09 15:54:30', '2025-07-09 15:54:30'),
(173, '9jtck8xbi5gy', 35, '', 2, '2025-07-09 15:54:30', '2025-07-09 15:54:30'),
(174, '1z6qxr7s6g63', 35, '', 3, '2025-07-09 15:54:30', '2025-07-09 15:54:30'),
(178, 'c63ejm7ntlw6', 36, '', 1, '2025-07-09 16:00:42', '2025-07-09 16:00:42'),
(179, 'h9ziso9hj3zl', 36, '', 2, '2025-07-09 16:00:42', '2025-07-09 16:00:42'),
(180, '5b1f0jzs0gx1', 36, '', 3, '2025-07-09 16:00:42', '2025-07-09 16:00:42'),
(183, 'kg53651y2g0b', 37, '', 1, '2025-07-09 16:13:19', '2025-07-09 16:13:19'),
(184, '9yz9m1efflv5', 37, '', 2, '2025-07-09 16:13:19', '2025-07-09 16:13:19'),
(186, '8fgzwe16rtwf', 38, '', 1, '2025-07-10 14:17:19', '2025-07-10 14:17:19'),
(188, 'h73tn6eu7341', 39, '', 1, '2025-07-10 14:19:58', '2025-07-10 14:19:58'),
(191, 'awlq51zgpnnx', 40, '', 1, '2025-07-10 14:24:05', '2025-07-10 14:24:05'),
(192, '52liymu7nn6i', 40, '', 2, '2025-07-10 14:24:05', '2025-07-10 14:24:05'),
(195, 'iupjqodeapbd', 41, '', 1, '2025-07-10 14:28:19', '2025-07-10 14:28:19'),
(196, 'efh2d1sh3upu', 41, '', 2, '2025-07-10 14:28:19', '2025-07-10 14:28:19'),
(199, 'fabl36iylrhb', 42, '', 1, '2025-07-10 14:32:50', '2025-07-10 14:32:50'),
(200, 'lygly1bnoqh0', 42, '', 2, '2025-07-10 14:32:50', '2025-07-10 14:32:50'),
(203, 'd7o7loj83fui', 43, '', 1, '2025-07-10 14:36:17', '2025-07-10 14:36:17'),
(204, 'ce53iz5zs2ic', 43, '', 2, '2025-07-10 14:36:17', '2025-07-10 14:36:17'),
(208, '5grc1g17407y', 44, '', 1, '2025-07-10 14:41:28', '2025-07-10 14:41:28'),
(209, 'gmi1hb6ovhrv', 44, '', 2, '2025-07-10 14:41:28', '2025-07-10 14:41:28'),
(210, '3pc08239fgi3', 44, '', 3, '2025-07-10 14:41:28', '2025-07-10 14:41:28'),
(214, 'bsp30hb0cb9b', 45, '', 1, '2025-07-10 14:45:26', '2025-07-10 14:45:26'),
(215, '8vyy88wwhi15', 45, '', 2, '2025-07-10 14:45:26', '2025-07-10 14:45:26'),
(216, 'h39t6duf81qb', 45, '', 3, '2025-07-10 14:45:26', '2025-07-10 14:45:26'),
(220, 'itrnj1sak5um', 46, '', 1, '2025-07-10 14:48:52', '2025-07-10 14:48:52'),
(221, 'gcfamsqh97t2', 46, '', 2, '2025-07-10 14:48:52', '2025-07-10 14:48:52'),
(222, 'ac1fugnoa522', 46, '', 3, '2025-07-10 14:48:52', '2025-07-10 14:48:52'),
(226, 'ddijnyfk2n91', 47, '', 1, '2025-07-10 14:52:38', '2025-07-10 14:52:38'),
(227, 'a5ili6jxn7ns', 47, '', 2, '2025-07-10 14:52:38', '2025-07-10 14:52:38'),
(228, '8x5bfvsxe681', 47, '', 3, '2025-07-10 14:52:38', '2025-07-10 14:52:38'),
(232, 'dleqo8ogqb9w', 48, '', 1, '2025-07-10 14:55:08', '2025-07-10 14:55:08'),
(233, 'kjwej682zuv7', 48, '', 2, '2025-07-10 14:55:08', '2025-07-10 14:55:08'),
(234, '6qloytyb1kl5', 48, '', 3, '2025-07-10 14:55:08', '2025-07-10 14:55:08'),
(238, 'j5bkyv3nfy9x', 49, '', 1, '2025-07-10 14:57:49', '2025-07-10 14:57:49'),
(239, '1z7v6v5ao5h4', 49, '', 2, '2025-07-10 14:57:49', '2025-07-10 14:57:49'),
(240, '5g72i797ctky', 49, '', 3, '2025-07-10 14:57:49', '2025-07-10 14:57:49'),
(244, '9n4qnarpno4l', 50, '', 1, '2025-07-10 15:00:22', '2025-07-10 15:00:22'),
(245, 'aeyvicvpfvyo', 50, '', 2, '2025-07-10 15:00:22', '2025-07-10 15:00:22'),
(246, '7x0t36k9knfk', 50, '', 3, '2025-07-10 15:00:22', '2025-07-10 15:00:22'),
(250, '6zyn48c3pizz', 51, '', 1, '2025-07-10 15:03:13', '2025-07-10 15:03:13'),
(251, '5lsnykja592t', 51, '', 2, '2025-07-10 15:03:13', '2025-07-10 15:03:13'),
(252, '5cx4kpcbef6j', 51, '', 3, '2025-07-10 15:03:13', '2025-07-10 15:03:13');

-- --------------------------------------------------------

--
-- Table structure for table `variation_value_translations`
--

CREATE TABLE `variation_value_translations` (
  `id` int UNSIGNED NOT NULL,
  `variation_value_id` int UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `label` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `variation_value_translations`
--

INSERT INTO `variation_value_translations` (`id`, `variation_value_id`, `locale`, `label`) VALUES
(1, 1, 'en', '1 KG'),
(2, 2, 'en', '1/2 KG'),
(5, 5, 'en', '1 KG'),
(6, 6, 'en', '1/2 KG'),
(8, 8, 'en', '1 KG'),
(11, 11, 'en', '1 KG'),
(12, 12, 'en', '1/2 KG'),
(15, 15, 'en', '1 KG'),
(16, 16, 'en', '1/2 KG'),
(19, 19, 'en', '100ml'),
(20, 20, 'en', '60ml'),
(23, 23, 'en', '100 ml'),
(24, 24, 'en', '60ml'),
(27, 27, 'en', '100 gm'),
(28, 28, 'en', '200 gm'),
(33, 33, 'en', '150g'),
(34, 34, 'en', '200g'),
(35, 35, 'en', '300g'),
(36, 36, 'en', '500g'),
(41, 41, 'en', '100gms'),
(42, 42, 'en', '150gms'),
(43, 43, 'en', '200gms'),
(44, 44, 'en', '300gms'),
(48, 48, 'en', '60gms'),
(49, 49, 'en', '120gms'),
(50, 50, 'en', '200gms'),
(53, 53, 'en', '150gms'),
(54, 54, 'en', '300gms'),
(59, 59, 'en', '150gms'),
(60, 60, 'en', '300gms'),
(61, 61, 'en', '500gms'),
(62, 62, 'en', '1Kg'),
(66, 66, 'en', '150g'),
(67, 67, 'en', '200g'),
(68, 68, 'en', '300g'),
(73, 73, 'en', '100gms'),
(74, 74, 'en', '150gms'),
(75, 75, 'en', '200gms'),
(76, 76, 'en', '300gms'),
(80, 80, 'en', '500g'),
(81, 81, 'en', '1kg'),
(82, 82, 'en', '2kg'),
(86, 86, 'en', '500g'),
(87, 87, 'en', '1kg'),
(88, 88, 'en', '2kg'),
(91, 91, 'en', '500g'),
(92, 92, 'en', '1kg'),
(95, 95, 'en', '50g'),
(96, 96, 'en', '100g'),
(100, 100, 'en', '250g'),
(101, 101, 'en', '500g'),
(102, 102, 'en', '1kg'),
(107, 107, 'en', '250g'),
(108, 108, 'en', '500g'),
(109, 109, 'en', '750g'),
(110, 110, 'en', '1kg'),
(113, 113, 'en', '250g'),
(114, 114, 'en', '500g'),
(117, 117, 'en', '250g'),
(118, 118, 'en', '500g'),
(122, 122, 'en', '500g'),
(123, 123, 'en', '1kg'),
(124, 124, 'en', '2kg'),
(128, 128, 'en', '500g'),
(129, 129, 'en', '1kg'),
(130, 130, 'en', '2kg'),
(133, 133, 'en', '1kg'),
(134, 134, 'en', '2kg'),
(137, 137, 'en', '500g'),
(138, 138, 'en', '1kg'),
(141, 141, 'en', '2kg'),
(142, 142, 'en', '4kg'),
(145, 145, 'en', '1kg'),
(146, 146, 'en', '2kg'),
(149, 149, 'en', '1kg'),
(150, 150, 'en', '2kg'),
(153, 153, 'en', '500g'),
(154, 154, 'en', '1kg'),
(157, 157, 'en', '1/2 kg'),
(158, 158, 'en', '1kg'),
(161, 161, 'en', '1/2kg'),
(162, 162, 'en', '1kg'),
(166, 166, 'en', '250ml'),
(167, 167, 'en', '500ml'),
(168, 168, 'en', '1liter'),
(172, 172, 'en', '250ml'),
(173, 173, 'en', '500ml'),
(174, 174, 'en', '1liter'),
(178, 178, 'en', '250ml'),
(179, 179, 'en', '500ml'),
(180, 180, 'en', '1liter'),
(183, 183, 'en', '100g'),
(184, 184, 'en', '200g'),
(186, 186, 'en', '1kg'),
(188, 188, 'en', '1kg'),
(191, 191, 'en', '1kg'),
(192, 192, 'en', '2kg'),
(195, 195, 'en', '1kg'),
(196, 196, 'en', '2kg'),
(199, 199, 'en', '1kg'),
(200, 200, 'en', '2kg'),
(203, 203, 'en', '500gm'),
(204, 204, 'en', '1kg'),
(208, 208, 'en', '250gm'),
(209, 209, 'en', '500gm'),
(210, 210, 'en', '1kg'),
(214, 214, 'en', '250gm'),
(215, 215, 'en', '500gm'),
(216, 216, 'en', '1kg'),
(220, 220, 'en', '250gm'),
(221, 221, 'en', '500gm'),
(222, 222, 'en', '1kg'),
(226, 226, 'en', '250gm'),
(227, 227, 'en', '500gm'),
(228, 228, 'en', '1kg'),
(232, 232, 'en', '250gm'),
(233, 233, 'en', '500gm'),
(234, 234, 'en', '1kg'),
(238, 238, 'en', '250gm'),
(239, 239, 'en', '500gm'),
(240, 240, 'en', '1kg'),
(244, 244, 'en', '250gm'),
(245, 245, 'en', '500gm'),
(246, 246, 'en', '1kg'),
(250, 250, 'en', '250gm'),
(251, 251, 'en', '500gm'),
(252, 252, 'en', '1kg');

-- --------------------------------------------------------

--
-- Table structure for table `wish_lists`
--

CREATE TABLE `wish_lists` (
  `user_id` int UNSIGNED NOT NULL,
  `product_id` int UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Indexes for table `addresses`
--
ALTER TABLE `addresses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `addresses_customer_id_foreign` (`customer_id`);

--
-- Indexes for table `attributes`
--
ALTER TABLE `attributes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `attributes_slug_unique` (`slug`),
  ADD KEY `attributes_attribute_set_id_index` (`attribute_set_id`);

--
-- Indexes for table `attribute_categories`
--
ALTER TABLE `attribute_categories`
  ADD PRIMARY KEY (`attribute_id`,`category_id`),
  ADD KEY `attribute_categories_category_id_foreign` (`category_id`);

--
-- Indexes for table `attribute_sets`
--
ALTER TABLE `attribute_sets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attribute_set_translations`
--
ALTER TABLE `attribute_set_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `attribute_set_translations_attribute_set_id_locale_unique` (`attribute_set_id`,`locale`);

--
-- Indexes for table `attribute_translations`
--
ALTER TABLE `attribute_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `attribute_translations_attribute_id_locale_unique` (`attribute_id`,`locale`);

--
-- Indexes for table `attribute_values`
--
ALTER TABLE `attribute_values`
  ADD PRIMARY KEY (`id`),
  ADD KEY `attribute_values_attribute_id_index` (`attribute_id`);

--
-- Indexes for table `attribute_value_translations`
--
ALTER TABLE `attribute_value_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `attribute_value_translations_attribute_value_id_locale_unique` (`attribute_value_id`,`locale`);

--
-- Indexes for table `blog_categories`
--
ALTER TABLE `blog_categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `blog_categories_slug_unique` (`slug`);

--
-- Indexes for table `blog_category_translations`
--
ALTER TABLE `blog_category_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `blog_category_translations_blog_category_id_locale_unique` (`blog_category_id`,`locale`);

--
-- Indexes for table `blog_posts`
--
ALTER TABLE `blog_posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `blog_posts_slug_unique` (`slug`),
  ADD KEY `blog_posts_user_id_foreign` (`user_id`),
  ADD KEY `blog_posts_blog_category_id_foreign` (`blog_category_id`);

--
-- Indexes for table `blog_post_blog_tag`
--
ALTER TABLE `blog_post_blog_tag`
  ADD PRIMARY KEY (`blog_post_id`,`blog_tag_id`),
  ADD KEY `blog_post_blog_tag_blog_tag_id_foreign` (`blog_tag_id`);

--
-- Indexes for table `blog_post_translations`
--
ALTER TABLE `blog_post_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `blog_post_translations_blog_post_id_locale_unique` (`blog_post_id`,`locale`);
ALTER TABLE `blog_post_translations` ADD FULLTEXT KEY `title` (`title`);

--
-- Indexes for table `blog_tags`
--
ALTER TABLE `blog_tags`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `blog_tags_slug_unique` (`slug`);

--
-- Indexes for table `blog_tag_translations`
--
ALTER TABLE `blog_tag_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `blog_tag_translations_blog_tag_id_locale_unique` (`blog_tag_id`,`locale`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `brands_slug_unique` (`slug`);

--
-- Indexes for table `brand_translations`
--
ALTER TABLE `brand_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `brand_translations_brand_id_locale_unique` (`brand_id`,`locale`);

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `carts_id_index` (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`),
  ADD KEY `categories_parent_id_foreign` (`parent_id`);

--
-- Indexes for table `category_translations`
--
ALTER TABLE `category_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `category_translations_category_id_locale_unique` (`category_id`,`locale`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`),
  ADD KEY `coupons_code_index` (`code`);

--
-- Indexes for table `coupon_categories`
--
ALTER TABLE `coupon_categories`
  ADD PRIMARY KEY (`coupon_id`,`category_id`,`exclude`),
  ADD KEY `coupon_categories_category_id_foreign` (`category_id`);

--
-- Indexes for table `coupon_products`
--
ALTER TABLE `coupon_products`
  ADD PRIMARY KEY (`coupon_id`,`product_id`),
  ADD KEY `coupon_products_product_id_foreign` (`product_id`);

--
-- Indexes for table `coupon_translations`
--
ALTER TABLE `coupon_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `coupon_translations_coupon_id_locale_unique` (`coupon_id`,`locale`);

--
-- Indexes for table `cross_sell_products`
--
ALTER TABLE `cross_sell_products`
  ADD PRIMARY KEY (`product_id`,`cross_sell_product_id`),
  ADD KEY `cross_sell_products_cross_sell_product_id_foreign` (`cross_sell_product_id`);

--
-- Indexes for table `currency_rates`
--
ALTER TABLE `currency_rates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `currency_rates_currency_unique` (`currency`);

--
-- Indexes for table `default_addresses`
--
ALTER TABLE `default_addresses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `default_addresses_customer_id_foreign` (`customer_id`),
  ADD KEY `default_addresses_address_id_foreign` (`address_id`);

--
-- Indexes for table `entity_files`
--
ALTER TABLE `entity_files`
  ADD PRIMARY KEY (`id`),
  ADD KEY `entity_files_entity_type_entity_id_index` (`entity_type`,`entity_id`),
  ADD KEY `entity_files_file_id_index` (`file_id`),
  ADD KEY `entity_files_zone_index` (`zone`);

--
-- Indexes for table `files`
--
ALTER TABLE `files`
  ADD PRIMARY KEY (`id`),
  ADD KEY `files_user_id_index` (`user_id`),
  ADD KEY `files_filename_index` (`filename`);

--
-- Indexes for table `flash_sales`
--
ALTER TABLE `flash_sales`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `flash_sale_products`
--
ALTER TABLE `flash_sale_products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `flash_sale_products_flash_sale_id_foreign` (`flash_sale_id`),
  ADD KEY `flash_sale_products_product_id_foreign` (`product_id`);

--
-- Indexes for table `flash_sale_product_orders`
--
ALTER TABLE `flash_sale_product_orders`
  ADD PRIMARY KEY (`flash_sale_product_id`,`order_id`),
  ADD KEY `flash_sale_product_orders_order_id_foreign` (`order_id`);

--
-- Indexes for table `flash_sale_translations`
--
ALTER TABLE `flash_sale_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `flash_sale_translations_flash_sale_id_locale_unique` (`flash_sale_id`,`locale`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_items_parent_id_foreign` (`parent_id`),
  ADD KEY `menu_items_category_id_foreign` (`category_id`),
  ADD KEY `menu_items_page_id_foreign` (`page_id`),
  ADD KEY `menu_items_menu_id_index` (`menu_id`);

--
-- Indexes for table `menu_item_translations`
--
ALTER TABLE `menu_item_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menu_item_translations_menu_item_id_locale_unique` (`menu_item_id`,`locale`);

--
-- Indexes for table `menu_translations`
--
ALTER TABLE `menu_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menu_translations_menu_id_locale_unique` (`menu_id`,`locale`);

--
-- Indexes for table `meta_data`
--
ALTER TABLE `meta_data`
  ADD PRIMARY KEY (`id`),
  ADD KEY `meta_data_entity_type_entity_id_index` (`entity_type`,`entity_id`);

--
-- Indexes for table `meta_data_translations`
--
ALTER TABLE `meta_data_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `meta_data_translations_meta_data_id_locale_unique` (`meta_data_id`,`locale`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `options`
--
ALTER TABLE `options`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `option_translations`
--
ALTER TABLE `option_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `option_translations_option_id_locale_unique` (`option_id`,`locale`);

--
-- Indexes for table `option_values`
--
ALTER TABLE `option_values`
  ADD PRIMARY KEY (`id`),
  ADD KEY `option_values_option_id_index` (`option_id`);

--
-- Indexes for table `option_value_translations`
--
ALTER TABLE `option_value_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `option_value_translations_option_value_id_locale_unique` (`option_value_id`,`locale`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_customer_id_index` (`customer_id`),
  ADD KEY `orders_coupon_id_index` (`coupon_id`);

--
-- Indexes for table `order_downloads`
--
ALTER TABLE `order_downloads`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_downloads_order_id_foreign` (`order_id`),
  ADD KEY `order_downloads_file_id_foreign` (`file_id`);

--
-- Indexes for table `order_products`
--
ALTER TABLE `order_products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_products_order_id_foreign` (`order_id`),
  ADD KEY `order_products_product_id_foreign` (`product_id`);

--
-- Indexes for table `order_product_options`
--
ALTER TABLE `order_product_options`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `order_product_options_order_product_id_option_id_unique` (`order_product_id`,`option_id`),
  ADD KEY `order_product_options_option_id_foreign` (`option_id`);

--
-- Indexes for table `order_product_option_values`
--
ALTER TABLE `order_product_option_values`
  ADD PRIMARY KEY (`order_product_option_id`,`option_value_id`),
  ADD KEY `order_product_option_values_option_value_id_foreign` (`option_value_id`);

--
-- Indexes for table `order_product_variations`
--
ALTER TABLE `order_product_variations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `order_product_variations_order_product_id_variation_id_unique` (`order_product_id`,`variation_id`),
  ADD KEY `order_product_variations_variation_id_foreign` (`variation_id`);

--
-- Indexes for table `order_product_variation_values`
--
ALTER TABLE `order_product_variation_values`
  ADD PRIMARY KEY (`order_product_variation_id`,`variation_value_id`),
  ADD KEY `order_product_variation_values_variation_value_id_foreign` (`variation_value_id`);

--
-- Indexes for table `order_taxes`
--
ALTER TABLE `order_taxes`
  ADD PRIMARY KEY (`order_id`,`tax_rate_id`),
  ADD KEY `order_taxes_tax_rate_id_foreign` (`tax_rate_id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pages_slug_unique` (`slug`);

--
-- Indexes for table `page_translations`
--
ALTER TABLE `page_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `page_translations_page_id_locale_unique` (`page_id`,`locale`);

--
-- Indexes for table `persistences`
--
ALTER TABLE `persistences`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `persistences_code_unique` (`code`),
  ADD KEY `persistences_user_id_foreign` (`user_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_slug_unique` (`slug`),
  ADD KEY `products_brand_id_foreign` (`brand_id`);

--
-- Indexes for table `product_attributes`
--
ALTER TABLE `product_attributes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_attributes_product_id_index` (`product_id`),
  ADD KEY `product_attributes_attribute_id_index` (`attribute_id`);

--
-- Indexes for table `product_attribute_values`
--
ALTER TABLE `product_attribute_values`
  ADD PRIMARY KEY (`product_attribute_id`,`attribute_value_id`),
  ADD KEY `product_attribute_values_attribute_value_id_foreign` (`attribute_value_id`);

--
-- Indexes for table `product_categories`
--
ALTER TABLE `product_categories`
  ADD PRIMARY KEY (`product_id`,`category_id`),
  ADD KEY `product_categories_category_id_foreign` (`category_id`);

--
-- Indexes for table `product_options`
--
ALTER TABLE `product_options`
  ADD PRIMARY KEY (`product_id`,`option_id`),
  ADD KEY `product_options_option_id_foreign` (`option_id`);

--
-- Indexes for table `product_tags`
--
ALTER TABLE `product_tags`
  ADD PRIMARY KEY (`product_id`,`tag_id`),
  ADD KEY `product_tags_tag_id_foreign` (`tag_id`);

--
-- Indexes for table `product_translations`
--
ALTER TABLE `product_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `product_translations_product_id_locale_unique` (`product_id`,`locale`);
ALTER TABLE `product_translations` ADD FULLTEXT KEY `name` (`name`);

--
-- Indexes for table `product_variants`
--
ALTER TABLE `product_variants`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_variants_product_id_foreign` (`product_id`);

--
-- Indexes for table `product_variations`
--
ALTER TABLE `product_variations`
  ADD PRIMARY KEY (`product_id`,`variation_id`),
  ADD KEY `product_variations_variation_id_foreign` (`variation_id`);

--
-- Indexes for table `related_products`
--
ALTER TABLE `related_products`
  ADD PRIMARY KEY (`product_id`,`related_product_id`),
  ADD KEY `related_products_related_product_id_foreign` (`related_product_id`);

--
-- Indexes for table `reminders`
--
ALTER TABLE `reminders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reminders_user_id_foreign` (`user_id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reviews_reviewer_id_index` (`reviewer_id`),
  ADD KEY `reviews_product_id_index` (`product_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_translations`
--
ALTER TABLE `role_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `role_translations_role_id_locale_unique` (`role_id`,`locale`);

--
-- Indexes for table `search_terms`
--
ALTER TABLE `search_terms`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `search_terms_term_unique` (`term`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Indexes for table `setting_translations`
--
ALTER TABLE `setting_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `setting_translations_setting_id_locale_unique` (`setting_id`,`locale`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `slider_slides`
--
ALTER TABLE `slider_slides`
  ADD PRIMARY KEY (`id`),
  ADD KEY `slider_slides_slider_id_foreign` (`slider_id`);

--
-- Indexes for table `slider_slide_translations`
--
ALTER TABLE `slider_slide_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slider_slide_translations_slider_slide_id_locale_unique` (`slider_slide_id`,`locale`);

--
-- Indexes for table `slider_translations`
--
ALTER TABLE `slider_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slider_translations_slider_id_locale_unique` (`slider_id`,`locale`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tags_slug_unique` (`slug`);

--
-- Indexes for table `tag_translations`
--
ALTER TABLE `tag_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tag_translations_tag_id_locale_unique` (`tag_id`,`locale`);

--
-- Indexes for table `tax_classes`
--
ALTER TABLE `tax_classes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tax_class_translations`
--
ALTER TABLE `tax_class_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tax_class_translations_tax_class_id_locale_unique` (`tax_class_id`,`locale`);

--
-- Indexes for table `tax_rates`
--
ALTER TABLE `tax_rates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tax_rates_tax_class_id_index` (`tax_class_id`);

--
-- Indexes for table `tax_rate_translations`
--
ALTER TABLE `tax_rate_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tax_rate_translations_tax_rate_id_locale_unique` (`tax_rate_id`,`locale`);

--
-- Indexes for table `throttle`
--
ALTER TABLE `throttle`
  ADD PRIMARY KEY (`id`),
  ADD KEY `throttle_user_id_foreign` (`user_id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `transactions_order_id_unique` (`order_id`);

--
-- Indexes for table `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `translations_key_index` (`key`);

--
-- Indexes for table `translation_translations`
--
ALTER TABLE `translation_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `translation_translations_translation_id_locale_unique` (`translation_id`,`locale`);

--
-- Indexes for table `updater_scripts`
--
ALTER TABLE `updater_scripts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `up_sell_products`
--
ALTER TABLE `up_sell_products`
  ADD PRIMARY KEY (`product_id`,`up_sell_product_id`),
  ADD KEY `up_sell_products_up_sell_product_id_foreign` (`up_sell_product_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `user_roles_role_id_foreign` (`role_id`);

--
-- Indexes for table `variations`
--
ALTER TABLE `variations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `variations_uid_unique` (`uid`);

--
-- Indexes for table `variation_translations`
--
ALTER TABLE `variation_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `variation_translations_variation_id_locale_unique` (`variation_id`,`locale`);

--
-- Indexes for table `variation_values`
--
ALTER TABLE `variation_values`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `variation_values_uid_unique` (`uid`),
  ADD KEY `variation_values_variation_id_index` (`variation_id`);

--
-- Indexes for table `variation_value_translations`
--
ALTER TABLE `variation_value_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `variation_value_translations_variation_value_id_locale_unique` (`variation_value_id`,`locale`);

--
-- Indexes for table `wish_lists`
--
ALTER TABLE `wish_lists`
  ADD PRIMARY KEY (`user_id`,`product_id`),
  ADD KEY `wish_lists_product_id_foreign` (`product_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activations`
--
ALTER TABLE `activations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `addresses`
--
ALTER TABLE `addresses`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `attributes`
--
ALTER TABLE `attributes`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `attribute_sets`
--
ALTER TABLE `attribute_sets`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `attribute_set_translations`
--
ALTER TABLE `attribute_set_translations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `attribute_translations`
--
ALTER TABLE `attribute_translations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `attribute_values`
--
ALTER TABLE `attribute_values`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `attribute_value_translations`
--
ALTER TABLE `attribute_value_translations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `blog_categories`
--
ALTER TABLE `blog_categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `blog_category_translations`
--
ALTER TABLE `blog_category_translations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `blog_posts`
--
ALTER TABLE `blog_posts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `blog_post_translations`
--
ALTER TABLE `blog_post_translations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `blog_tags`
--
ALTER TABLE `blog_tags`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `blog_tag_translations`
--
ALTER TABLE `blog_tag_translations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `brand_translations`
--
ALTER TABLE `brand_translations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `category_translations`
--
ALTER TABLE `category_translations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `coupon_translations`
--
ALTER TABLE `coupon_translations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `currency_rates`
--
ALTER TABLE `currency_rates`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `default_addresses`
--
ALTER TABLE `default_addresses`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `entity_files`
--
ALTER TABLE `entity_files`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=627;

--
-- AUTO_INCREMENT for table `files`
--
ALTER TABLE `files`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=271;

--
-- AUTO_INCREMENT for table `flash_sales`
--
ALTER TABLE `flash_sales`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `flash_sale_products`
--
ALTER TABLE `flash_sale_products`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `flash_sale_translations`
--
ALTER TABLE `flash_sale_translations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `menu_item_translations`
--
ALTER TABLE `menu_item_translations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `menu_translations`
--
ALTER TABLE `menu_translations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `meta_data`
--
ALTER TABLE `meta_data`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `meta_data_translations`
--
ALTER TABLE `meta_data_translations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=113;

--
-- AUTO_INCREMENT for table `options`
--
ALTER TABLE `options`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `option_translations`
--
ALTER TABLE `option_translations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `option_values`
--
ALTER TABLE `option_values`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `option_value_translations`
--
ALTER TABLE `option_value_translations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `order_downloads`
--
ALTER TABLE `order_downloads`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order_products`
--
ALTER TABLE `order_products`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `order_product_options`
--
ALTER TABLE `order_product_options`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order_product_variations`
--
ALTER TABLE `order_product_variations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `page_translations`
--
ALTER TABLE `page_translations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `persistences`
--
ALTER TABLE `persistences`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `product_attributes`
--
ALTER TABLE `product_attributes`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_translations`
--
ALTER TABLE `product_translations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `product_variants`
--
ALTER TABLE `product_variants`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=126;

--
-- AUTO_INCREMENT for table `reminders`
--
ALTER TABLE `reminders`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `role_translations`
--
ALTER TABLE `role_translations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `search_terms`
--
ALTER TABLE `search_terms`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=395;

--
-- AUTO_INCREMENT for table `setting_translations`
--
ALTER TABLE `setting_translations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `slider_slides`
--
ALTER TABLE `slider_slides`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `slider_slide_translations`
--
ALTER TABLE `slider_slide_translations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `slider_translations`
--
ALTER TABLE `slider_translations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `tag_translations`
--
ALTER TABLE `tag_translations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `tax_classes`
--
ALTER TABLE `tax_classes`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tax_class_translations`
--
ALTER TABLE `tax_class_translations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tax_rates`
--
ALTER TABLE `tax_rates`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tax_rate_translations`
--
ALTER TABLE `tax_rate_translations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `throttle`
--
ALTER TABLE `throttle`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `translation_translations`
--
ALTER TABLE `translation_translations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `updater_scripts`
--
ALTER TABLE `updater_scripts`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `variations`
--
ALTER TABLE `variations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `variation_translations`
--
ALTER TABLE `variation_translations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `variation_values`
--
ALTER TABLE `variation_values`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=253;

--
-- AUTO_INCREMENT for table `variation_value_translations`
--
ALTER TABLE `variation_value_translations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=253;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `activations`
--
ALTER TABLE `activations`
  ADD CONSTRAINT `activations_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `addresses`
--
ALTER TABLE `addresses`
  ADD CONSTRAINT `addresses_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `attributes`
--
ALTER TABLE `attributes`
  ADD CONSTRAINT `attributes_attribute_set_id_foreign` FOREIGN KEY (`attribute_set_id`) REFERENCES `attribute_sets` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `attribute_categories`
--
ALTER TABLE `attribute_categories`
  ADD CONSTRAINT `attribute_categories_attribute_id_foreign` FOREIGN KEY (`attribute_id`) REFERENCES `attributes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `attribute_categories_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `attribute_set_translations`
--
ALTER TABLE `attribute_set_translations`
  ADD CONSTRAINT `attribute_set_translations_attribute_set_id_foreign` FOREIGN KEY (`attribute_set_id`) REFERENCES `attribute_sets` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `attribute_translations`
--
ALTER TABLE `attribute_translations`
  ADD CONSTRAINT `attribute_translations_attribute_id_foreign` FOREIGN KEY (`attribute_id`) REFERENCES `attributes` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `attribute_values`
--
ALTER TABLE `attribute_values`
  ADD CONSTRAINT `attribute_values_attribute_id_foreign` FOREIGN KEY (`attribute_id`) REFERENCES `attributes` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `attribute_value_translations`
--
ALTER TABLE `attribute_value_translations`
  ADD CONSTRAINT `attribute_value_translations_attribute_value_id_foreign` FOREIGN KEY (`attribute_value_id`) REFERENCES `attribute_values` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `blog_category_translations`
--
ALTER TABLE `blog_category_translations`
  ADD CONSTRAINT `blog_category_translations_blog_category_id_foreign` FOREIGN KEY (`blog_category_id`) REFERENCES `blog_categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `blog_posts`
--
ALTER TABLE `blog_posts`
  ADD CONSTRAINT `blog_posts_blog_category_id_foreign` FOREIGN KEY (`blog_category_id`) REFERENCES `blog_categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `blog_posts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `blog_post_blog_tag`
--
ALTER TABLE `blog_post_blog_tag`
  ADD CONSTRAINT `blog_post_blog_tag_blog_post_id_foreign` FOREIGN KEY (`blog_post_id`) REFERENCES `blog_posts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `blog_post_blog_tag_blog_tag_id_foreign` FOREIGN KEY (`blog_tag_id`) REFERENCES `blog_tags` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `blog_post_translations`
--
ALTER TABLE `blog_post_translations`
  ADD CONSTRAINT `blog_post_translations_blog_post_id_foreign` FOREIGN KEY (`blog_post_id`) REFERENCES `blog_posts` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `blog_tag_translations`
--
ALTER TABLE `blog_tag_translations`
  ADD CONSTRAINT `blog_tag_translations_blog_tag_id_foreign` FOREIGN KEY (`blog_tag_id`) REFERENCES `blog_tags` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `category_translations`
--
ALTER TABLE `category_translations`
  ADD CONSTRAINT `category_translations_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `coupon_categories`
--
ALTER TABLE `coupon_categories`
  ADD CONSTRAINT `coupon_categories_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `coupon_categories_coupon_id_foreign` FOREIGN KEY (`coupon_id`) REFERENCES `coupons` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `coupon_products`
--
ALTER TABLE `coupon_products`
  ADD CONSTRAINT `coupon_products_coupon_id_foreign` FOREIGN KEY (`coupon_id`) REFERENCES `coupons` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `coupon_products_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `coupon_translations`
--
ALTER TABLE `coupon_translations`
  ADD CONSTRAINT `coupon_translations_coupon_id_foreign` FOREIGN KEY (`coupon_id`) REFERENCES `coupons` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `cross_sell_products`
--
ALTER TABLE `cross_sell_products`
  ADD CONSTRAINT `cross_sell_products_cross_sell_product_id_foreign` FOREIGN KEY (`cross_sell_product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `cross_sell_products_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `default_addresses`
--
ALTER TABLE `default_addresses`
  ADD CONSTRAINT `default_addresses_address_id_foreign` FOREIGN KEY (`address_id`) REFERENCES `addresses` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `default_addresses_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `entity_files`
--
ALTER TABLE `entity_files`
  ADD CONSTRAINT `entity_files_file_id_foreign` FOREIGN KEY (`file_id`) REFERENCES `files` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `flash_sale_products`
--
ALTER TABLE `flash_sale_products`
  ADD CONSTRAINT `flash_sale_products_flash_sale_id_foreign` FOREIGN KEY (`flash_sale_id`) REFERENCES `flash_sales` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `flash_sale_products_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `flash_sale_product_orders`
--
ALTER TABLE `flash_sale_product_orders`
  ADD CONSTRAINT `flash_sale_product_orders_flash_sale_product_id_foreign` FOREIGN KEY (`flash_sale_product_id`) REFERENCES `flash_sale_products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `flash_sale_product_orders_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `flash_sale_translations`
--
ALTER TABLE `flash_sale_translations`
  ADD CONSTRAINT `flash_sale_translations_flash_sale_id_foreign` FOREIGN KEY (`flash_sale_id`) REFERENCES `flash_sales` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD CONSTRAINT `menu_items_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `menu_items_page_id_foreign` FOREIGN KEY (`page_id`) REFERENCES `pages` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `menu_items_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `menu_items` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `menu_item_translations`
--
ALTER TABLE `menu_item_translations`
  ADD CONSTRAINT `menu_item_translations_menu_item_id_foreign` FOREIGN KEY (`menu_item_id`) REFERENCES `menu_items` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `menu_translations`
--
ALTER TABLE `menu_translations`
  ADD CONSTRAINT `menu_translations_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `meta_data_translations`
--
ALTER TABLE `meta_data_translations`
  ADD CONSTRAINT `meta_data_translations_meta_data_id_foreign` FOREIGN KEY (`meta_data_id`) REFERENCES `meta_data` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `option_translations`
--
ALTER TABLE `option_translations`
  ADD CONSTRAINT `option_translations_option_id_foreign` FOREIGN KEY (`option_id`) REFERENCES `options` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `option_values`
--
ALTER TABLE `option_values`
  ADD CONSTRAINT `option_values_option_id_foreign` FOREIGN KEY (`option_id`) REFERENCES `options` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `option_value_translations`
--
ALTER TABLE `option_value_translations`
  ADD CONSTRAINT `option_value_translations_option_value_id_foreign` FOREIGN KEY (`option_value_id`) REFERENCES `option_values` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `order_downloads`
--
ALTER TABLE `order_downloads`
  ADD CONSTRAINT `order_downloads_file_id_foreign` FOREIGN KEY (`file_id`) REFERENCES `files` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `order_downloads_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `order_products`
--
ALTER TABLE `order_products`
  ADD CONSTRAINT `order_products_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `order_products_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `order_product_options`
--
ALTER TABLE `order_product_options`
  ADD CONSTRAINT `order_product_options_option_id_foreign` FOREIGN KEY (`option_id`) REFERENCES `options` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `order_product_options_order_product_id_foreign` FOREIGN KEY (`order_product_id`) REFERENCES `order_products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `order_product_option_values`
--
ALTER TABLE `order_product_option_values`
  ADD CONSTRAINT `order_product_option_values_option_value_id_foreign` FOREIGN KEY (`option_value_id`) REFERENCES `option_values` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `order_product_option_values_order_product_option_id_foreign` FOREIGN KEY (`order_product_option_id`) REFERENCES `order_product_options` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `order_product_variations`
--
ALTER TABLE `order_product_variations`
  ADD CONSTRAINT `order_product_variations_order_product_id_foreign` FOREIGN KEY (`order_product_id`) REFERENCES `order_products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `order_product_variations_variation_id_foreign` FOREIGN KEY (`variation_id`) REFERENCES `variations` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `order_product_variation_values`
--
ALTER TABLE `order_product_variation_values`
  ADD CONSTRAINT `order_product_variation_values_order_product_variation_id` FOREIGN KEY (`order_product_variation_id`) REFERENCES `order_product_variations` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `order_product_variation_values_variation_value_id_foreign` FOREIGN KEY (`variation_value_id`) REFERENCES `variation_values` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `order_taxes`
--
ALTER TABLE `order_taxes`
  ADD CONSTRAINT `order_taxes_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `order_taxes_tax_rate_id_foreign` FOREIGN KEY (`tax_rate_id`) REFERENCES `tax_rates` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `page_translations`
--
ALTER TABLE `page_translations`
  ADD CONSTRAINT `page_translations_page_id_foreign` FOREIGN KEY (`page_id`) REFERENCES `pages` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `persistences`
--
ALTER TABLE `persistences`
  ADD CONSTRAINT `persistences_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_brand_id_foreign` FOREIGN KEY (`brand_id`) REFERENCES `brands` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `product_attributes`
--
ALTER TABLE `product_attributes`
  ADD CONSTRAINT `product_attributes_attribute_id_foreign` FOREIGN KEY (`attribute_id`) REFERENCES `attributes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `product_attributes_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_attribute_values`
--
ALTER TABLE `product_attribute_values`
  ADD CONSTRAINT `product_attribute_values_attribute_value_id_foreign` FOREIGN KEY (`attribute_value_id`) REFERENCES `attribute_values` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `product_attribute_values_product_attribute_id_foreign` FOREIGN KEY (`product_attribute_id`) REFERENCES `product_attributes` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_categories`
--
ALTER TABLE `product_categories`
  ADD CONSTRAINT `product_categories_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `product_categories_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_options`
--
ALTER TABLE `product_options`
  ADD CONSTRAINT `product_options_option_id_foreign` FOREIGN KEY (`option_id`) REFERENCES `options` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `product_options_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_tags`
--
ALTER TABLE `product_tags`
  ADD CONSTRAINT `product_tags_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `product_tags_tag_id_foreign` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_translations`
--
ALTER TABLE `product_translations`
  ADD CONSTRAINT `product_translations_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_variants`
--
ALTER TABLE `product_variants`
  ADD CONSTRAINT `product_variants_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_variations`
--
ALTER TABLE `product_variations`
  ADD CONSTRAINT `product_variations_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `product_variations_variation_id_foreign` FOREIGN KEY (`variation_id`) REFERENCES `variations` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `related_products`
--
ALTER TABLE `related_products`
  ADD CONSTRAINT `related_products_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `related_products_related_product_id_foreign` FOREIGN KEY (`related_product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `reminders`
--
ALTER TABLE `reminders`
  ADD CONSTRAINT `reminders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `reviews_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_translations`
--
ALTER TABLE `role_translations`
  ADD CONSTRAINT `role_translations_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `setting_translations`
--
ALTER TABLE `setting_translations`
  ADD CONSTRAINT `setting_translations_setting_id_foreign` FOREIGN KEY (`setting_id`) REFERENCES `settings` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `slider_slides`
--
ALTER TABLE `slider_slides`
  ADD CONSTRAINT `slider_slides_slider_id_foreign` FOREIGN KEY (`slider_id`) REFERENCES `sliders` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `slider_slide_translations`
--
ALTER TABLE `slider_slide_translations`
  ADD CONSTRAINT `slider_slide_translations_slider_slide_id_foreign` FOREIGN KEY (`slider_slide_id`) REFERENCES `slider_slides` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `slider_translations`
--
ALTER TABLE `slider_translations`
  ADD CONSTRAINT `slider_translations_slider_id_foreign` FOREIGN KEY (`slider_id`) REFERENCES `sliders` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `tag_translations`
--
ALTER TABLE `tag_translations`
  ADD CONSTRAINT `tag_translations_tag_id_foreign` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `tax_class_translations`
--
ALTER TABLE `tax_class_translations`
  ADD CONSTRAINT `tax_class_translations_tax_class_id_foreign` FOREIGN KEY (`tax_class_id`) REFERENCES `tax_classes` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `tax_rates`
--
ALTER TABLE `tax_rates`
  ADD CONSTRAINT `tax_rates_tax_class_id_foreign` FOREIGN KEY (`tax_class_id`) REFERENCES `tax_classes` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `tax_rate_translations`
--
ALTER TABLE `tax_rate_translations`
  ADD CONSTRAINT `tax_rate_translations_tax_rate_id_foreign` FOREIGN KEY (`tax_rate_id`) REFERENCES `tax_rates` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `throttle`
--
ALTER TABLE `throttle`
  ADD CONSTRAINT `throttle_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `transactions`
--
ALTER TABLE `transactions`
  ADD CONSTRAINT `transactions_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `translation_translations`
--
ALTER TABLE `translation_translations`
  ADD CONSTRAINT `translation_translations_translation_id_foreign` FOREIGN KEY (`translation_id`) REFERENCES `translations` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `up_sell_products`
--
ALTER TABLE `up_sell_products`
  ADD CONSTRAINT `up_sell_products_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `up_sell_products_up_sell_product_id_foreign` FOREIGN KEY (`up_sell_product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `variation_translations`
--
ALTER TABLE `variation_translations`
  ADD CONSTRAINT `variation_translations_variation_id_foreign` FOREIGN KEY (`variation_id`) REFERENCES `variations` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `variation_values`
--
ALTER TABLE `variation_values`
  ADD CONSTRAINT `variation_values_variation_id_foreign` FOREIGN KEY (`variation_id`) REFERENCES `variations` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `variation_value_translations`
--
ALTER TABLE `variation_value_translations`
  ADD CONSTRAINT `variation_value_translations_variation_value_id_foreign` FOREIGN KEY (`variation_value_id`) REFERENCES `variation_values` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `wish_lists`
--
ALTER TABLE `wish_lists`
  ADD CONSTRAINT `wish_lists_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `wish_lists_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
