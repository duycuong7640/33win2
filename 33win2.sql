-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Jun 24, 2024 at 09:20 AM
-- Server version: 5.7.39
-- PHP Version: 8.1.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `33win2`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `thumbnail` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `content` text COLLATE utf8mb4_unicode_ci,
  `fontawesome_icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect_url` text COLLATE utf8mb4_unicode_ci,
  `rank` int(11) DEFAULT '0',
  `type` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Type of category',
  `status` int(11) NOT NULL DEFAULT '1' COMMENT '1: Active 0: Blocked',
  `choose_1` int(11) DEFAULT '0' COMMENT '1: Active 0: Blocked',
  `choose_2` int(11) DEFAULT '0' COMMENT '1: Active 0: Blocked',
  `choose_3` int(11) DEFAULT '0' COMMENT '1: Active 0: Blocked',
  `choose_4` int(11) DEFAULT '0' COMMENT '1: Active 0: Blocked',
  `choose_5` int(11) DEFAULT '0' COMMENT '1: Active 0: Blocked',
  `title_seo` text COLLATE utf8mb4_unicode_ci,
  `meta_des` text COLLATE utf8mb4_unicode_ci,
  `meta_key` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `uuid`, `parent_id`, `user_id`, `title`, `slug`, `thumbnail`, `description`, `content`, `fontawesome_icon`, `redirect_url`, `rank`, `type`, `status`, `choose_1`, `choose_2`, `choose_3`, `choose_4`, `choose_5`, `title_seo`, `meta_des`, `meta_key`, `created_at`, `updated_at`) VALUES
(1, 'a2100745-1ba5-434f-8c60-1598bcbf9251', NULL, 1, 'Liên kết nhanh', 'lien-ket-nhanh', NULL, NULL, NULL, NULL, '#', 0, 'link', 1, 0, 0, 0, 0, 0, NULL, NULL, NULL, '2024-06-24 00:56:34', '2024-06-24 01:24:32'),
(2, '95cfdeb8-0183-41de-8faa-2a81a2230688', NULL, 1, 'Tổng hợp', 'tong-hop', NULL, NULL, NULL, NULL, '#', 1, 'link', 1, 0, 0, 0, 0, 0, NULL, NULL, NULL, '2024-06-24 01:01:46', '2024-06-24 01:24:37'),
(3, 'dbc4507a-2d7d-4948-a0d2-0268bbdfbdfa', 1, 1, '33win2', '33win2', NULL, NULL, NULL, NULL, '#', NULL, 'link', 1, 0, 0, 0, 0, 0, NULL, NULL, NULL, '2024-06-24 01:02:25', '2024-06-24 01:02:25'),
(4, '4318f60f-1e51-4604-b6a6-5a08e8e6c2e1', 1, 1, '33win3', '33win3', NULL, NULL, NULL, NULL, '#', NULL, 'link', 1, 0, 0, 0, 0, 0, NULL, NULL, NULL, '2024-06-24 01:02:38', '2024-06-24 01:02:38'),
(5, 'bbab943a-30db-4410-9fba-0379b05b3e9b', 1, 1, '33win4', '33win4', NULL, NULL, NULL, NULL, '#', NULL, 'link', 1, 0, 0, 0, 0, 0, NULL, NULL, NULL, '2024-06-24 01:02:44', '2024-06-24 01:02:44'),
(6, '72a2ed18-fc03-43b8-bd03-ee0186b37c09', 2, 1, '33win5', '33win5', NULL, NULL, NULL, NULL, '#', NULL, 'link', 1, 0, 0, 0, 0, 0, NULL, NULL, NULL, '2024-06-24 01:03:23', '2024-06-24 01:03:23'),
(7, '8e3590c9-aedb-4132-9e04-53aa8b0b6d90', 2, 1, '33win6', '33win6', NULL, NULL, NULL, NULL, '#', NULL, 'link', 1, 0, 0, 0, 0, 0, NULL, NULL, NULL, '2024-06-24 01:03:30', '2024-06-24 01:03:30'),
(8, 'd2d6c946-b2dc-4448-a3b1-bde461edc9c5', 2, 1, '33win7', '33win7', NULL, NULL, NULL, NULL, '#', NULL, 'link', 1, 0, 0, 0, 0, 0, NULL, NULL, NULL, '2024-06-24 01:03:38', '2024-06-24 01:03:38'),
(9, 'bddf9d55-6ef9-43ac-91f8-0103682d4eb8', 2, 1, '33win8', '33win8', NULL, NULL, NULL, NULL, '#', NULL, 'link', 1, 0, 0, 0, 0, 0, NULL, NULL, NULL, '2024-06-24 01:03:47', '2024-06-24 01:03:47'),
(10, 'c71c66f8-5753-43a9-94c5-5eec734354f2', 2, 1, '33win9', '33win9', NULL, NULL, NULL, NULL, '#', NULL, 'link', 1, 0, 0, 0, 0, 0, NULL, NULL, NULL, '2024-06-24 01:03:53', '2024-06-24 01:03:53'),
(11, 'd2ab0756-668a-4e06-8c39-f1aa369d2952', 2, 1, '33win10', '33win10', NULL, NULL, NULL, NULL, '#', NULL, 'link', 1, 0, 0, 0, 0, 0, NULL, NULL, NULL, '2024-06-24 01:04:02', '2024-06-24 01:04:02');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2021_03_20_040647_create_categories_table', 1),
(6, '2021_03_20_040653_create_posts_table', 1),
(7, '2021_03_20_040653_create_products_table', 1),
(8, '2021_03_20_040700_create_settings_table', 1),
(9, '2023_11_05_123857_create_photos_table', 1),
(10, '2024_04_30_172114_add_fontawesome_icon_to_categories_table', 1),
(11, '2024_04_30_182319_add_thumbnail2_to_photos_table', 1),
(12, '2024_06_04_164144_change_field_to_settings_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `photos`
--

CREATE TABLE `photos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `thumbnail` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `thumbnail2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rank` int(11) DEFAULT '0',
  `type` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '1' COMMENT '1: Active 0: Blocked',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `photos`
--

INSERT INTO `photos` (`id`, `uuid`, `user_id`, `title`, `link`, `thumbnail`, `thumbnail2`, `rank`, `type`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, '5d6afe04-8340-4185-89dd-eb90613d5784', 1, 'Logo', NULL, 'loho-header.gif', '33win1.jpeg', 0, 'logo', 1, '2024-06-24 01:31:10', '2024-06-24 01:31:10', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` bigint(20) NOT NULL,
  `category_multi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `thumbnail` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rank` int(11) DEFAULT '0',
  `view` int(11) DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '1',
  `type` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `choose_1` int(11) DEFAULT '0' COMMENT '1: Active 0: Blocked',
  `choose_2` int(11) DEFAULT '0' COMMENT '1: Active 0: Blocked',
  `choose_3` int(11) DEFAULT '0' COMMENT '1: Active 0: Blocked',
  `choose_4` int(11) DEFAULT '0' COMMENT '1: Active 0: Blocked',
  `choose_5` int(11) DEFAULT '0' COMMENT '1: Active 0: Blocked',
  `title_seo` text COLLATE utf8mb4_unicode_ci,
  `meta_des` text COLLATE utf8mb4_unicode_ci,
  `meta_key` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `author_id` bigint(20) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_short` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_alternate` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` bigint(20) DEFAULT NULL,
  `category_multi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `thumbnail` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `thumbnail_root` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url_mtlnovel_com` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rank` int(11) DEFAULT '0',
  `view` int(11) DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '1',
  `type` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `choose_1` int(11) DEFAULT '0' COMMENT '1: Active 0: Blocked',
  `choose_2` int(11) DEFAULT '0' COMMENT '1: Active 0: Blocked',
  `choose_3` int(11) DEFAULT '0' COMMENT '1: Active 0: Blocked',
  `choose_4` int(11) DEFAULT '0' COMMENT '1: Active 0: Blocked',
  `choose_5` int(11) DEFAULT '0' COMMENT '1: Active 0: Blocked',
  `title_seo` text COLLATE utf8mb4_unicode_ci,
  `meta_des` text COLLATE utf8mb4_unicode_ci,
  `meta_key` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hotline` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instagram` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `youtube` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `google` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telephone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code_header` text COLLATE utf8mb4_unicode_ci,
  `code_body` text COLLATE utf8mb4_unicode_ci,
  `code_footer` text COLLATE utf8mb4_unicode_ci,
  `copyright` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content_footer` text COLLATE utf8mb4_unicode_ci,
  `google_index` int(11) DEFAULT NULL,
  `title_seo` text COLLATE utf8mb4_unicode_ci,
  `meta_des` text COLLATE utf8mb4_unicode_ci,
  `meta_key` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `home_content` text COLLATE utf8mb4_unicode_ci,
  `link1` text COLLATE utf8mb4_unicode_ci,
  `link2` text COLLATE utf8mb4_unicode_ci,
  `link3` text COLLATE utf8mb4_unicode_ci,
  `link4` text COLLATE utf8mb4_unicode_ci,
  `link5` text COLLATE utf8mb4_unicode_ci,
  `link6` text COLLATE utf8mb4_unicode_ci,
  `link7` text COLLATE utf8mb4_unicode_ci,
  `link8` text COLLATE utf8mb4_unicode_ci,
  `link9` text COLLATE utf8mb4_unicode_ci,
  `link10` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `uuid`, `user_id`, `name`, `email`, `hotline`, `address`, `instagram`, `facebook`, `youtube`, `google`, `telephone`, `code_header`, `code_body`, `code_footer`, `copyright`, `content_footer`, `google_index`, `title_seo`, `meta_des`, `meta_key`, `created_at`, `updated_at`, `home_content`, `link1`, `link2`, `link3`, `link4`, `link5`, `link6`, `link7`, `link8`, `link9`, `link10`) VALUES
(1, '6c183897-a3d5-48ce-8112-1f638b8c06ac', 1, '33win', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'BẢN QUYỀN THUỘC VỀ ⭐️ 33win2', '<p>Ch&uacute;ng t&ocirc;i c&oacute; c&aacute;c tr&ograve; chơi ph&ugrave; hợp với mọi người chơi khi chơi Casino Online. Kh&ocirc;ng chỉ c&oacute; h&agrave;ng trăm tr&ograve; chơi Casino, ch&uacute;ng t&ocirc;i c&ograve;n gửi tặng nhiều phần thưởng v&agrave; khuyến m&atilde;i cho c&aacute;c th&agrave;nh vi&ecirc;n của m&igrave;nh.</p>', 0, NULL, NULL, NULL, '2024-06-24 00:28:01', '2024-06-24 01:37:47', '<h2>Giới thiệu về nh&agrave; c&aacute;i 33Win2</h2>\r\n\r\n<p>Nh&agrave; c&aacute;i&nbsp;<a href=\"https://33win2.org/\" rel=\"dofollow\">33Win2</a>&nbsp;l&agrave; một trong những nh&agrave; c&aacute;i trực tuyến h&agrave;ng đầu hiện nay, nổi tiếng với sự uy t&iacute;n v&agrave; đa dạng trong c&aacute;c loại h&igrave;nh giải tr&iacute;. Được biết đến với việc cung cấp trải nghiệm c&aacute; cược v&agrave; chơi game đỉnh cao, 33Win2 kh&ocirc;ng ngừng n&acirc;ng cao chất lượng dịch vụ để đ&aacute;p ứng nhu cầu của người chơi. Từ giao diện th&acirc;n thiện, ch&iacute;nh s&aacute;ch bảo mật nghi&ecirc;m ngặt đến dịch vụ chăm s&oacute;c kh&aacute;ch h&agrave;ng tận t&igrave;nh, 33Win2 thực sự l&agrave; lựa chọn ho&agrave;n hảo cho những ai đam m&ecirc; c&aacute; cược trực tuyến.</p>\r\n\r\n<h3>Giao Diện</h3>\r\n\r\n<p>Giao diện của 33Win2 được thiết kế một c&aacute;ch tinh tế v&agrave; hiện đại, mang lại cảm gi&aacute;c th&acirc;n thiện v&agrave; dễ sử dụng cho người chơi. M&agrave;u sắc chủ đạo của trang web l&agrave; m&agrave;u xanh v&agrave; trắng, tạo n&ecirc;n sự h&agrave;i h&ograve;a v&agrave; dễ chịu cho mắt. C&aacute;c mục v&agrave; danh mục tr&ograve; chơi được bố tr&iacute; một c&aacute;ch khoa học, gi&uacute;p người chơi dễ d&agrave;ng t&igrave;m thấy tr&ograve; chơi y&ecirc;u th&iacute;ch của m&igrave;nh m&agrave; kh&ocirc;ng gặp bất kỳ kh&oacute; khăn n&agrave;o. B&ecirc;n cạnh đ&oacute;, trang web c&ograve;n hỗ trợ đa ng&ocirc;n ngữ, gi&uacute;p người chơi từ nhiều quốc gia kh&aacute;c nhau c&oacute; thể dễ d&agrave;ng truy cập v&agrave; sử dụng.</p>\r\n\r\n<h3>Ch&iacute;nh s&aacute;ch bảo mật</h3>\r\n\r\n<p>33Win2 đặc biệt ch&uacute; trọng đến việc bảo mật th&ocirc;ng tin c&aacute; nh&acirc;n v&agrave; t&agrave;i khoản của người chơi. Nh&agrave; c&aacute;i sử dụng c&ocirc;ng nghệ m&atilde; h&oacute;a SSL 128-bit ti&ecirc;n tiến, đảm bảo rằng mọi giao dịch v&agrave; th&ocirc;ng tin c&aacute; nh&acirc;n đều được bảo vệ một c&aacute;ch tối đa. Hơn nữa, 33Win2 cam kết kh&ocirc;ng tiết lộ bất kỳ th&ocirc;ng tin n&agrave;o của người chơi cho b&ecirc;n thứ ba m&agrave; kh&ocirc;ng c&oacute; sự đồng &yacute; của người chơi, đảm bảo sự an t&acirc;m v&agrave; tin tưởng tuyệt đối.</p>\r\n\r\n<h3>Chăm s&oacute;c kh&aacute;ch h&agrave;ng</h3>\r\n\r\n<p>Dịch vụ chăm s&oacute;c kh&aacute;ch h&agrave;ng tại 33Win2 được đ&aacute;nh gi&aacute; rất cao nhờ v&agrave;o đội ngũ nh&acirc;n vi&ecirc;n chuy&ecirc;n nghiệp v&agrave; tận t&acirc;m. Hệ thống hỗ trợ kh&aacute;ch h&agrave;ng hoạt động 24/7, gi&uacute;p giải đ&aacute;p mọi thắc mắc v&agrave; hỗ trợ người chơi kịp thời. Người chơi c&oacute; thể li&ecirc;n hệ với bộ phận chăm s&oacute;c kh&aacute;ch h&agrave;ng th&ocirc;ng qua nhiều k&ecirc;nh kh&aacute;c nhau như live chat, email hoặc điện thoại, đảm bảo rằng mọi vấn đề đều được giải quyết nhanh ch&oacute;ng v&agrave; hiệu quả.</p>\r\n\r\n<h3>Nạp r&uacute;t tiền nhanh ch&oacute;ng</h3>\r\n\r\n<p>Một trong những yếu tố quan trọng tạo n&ecirc;n sự uy t&iacute;n của&nbsp;<a href=\"https://33win1.vip/\" rel=\"dofollow\">33Win1</a>&nbsp;ch&iacute;nh l&agrave; hệ thống nạp r&uacute;t tiền nhanh ch&oacute;ng v&agrave; tiện lợi. Người chơi c&oacute; thể nạp tiền v&agrave;o t&agrave;i khoản th&ocirc;ng qua nhiều phương thức kh&aacute;c nhau như chuyển khoản ng&acirc;n h&agrave;ng, v&iacute; điện tử hoặc thẻ c&agrave;o. Quy tr&igrave;nh r&uacute;t tiền cũng được thực hiện một c&aacute;ch nhanh ch&oacute;ng v&agrave; an to&agrave;n, gi&uacute;p người chơi c&oacute; thể dễ d&agrave;ng r&uacute;t tiền thưởng m&agrave; kh&ocirc;ng gặp bất kỳ trở ngại n&agrave;o.</p>\r\n\r\n<h2>Hệ thống tr&ograve; chơi đa dạng</h2>\r\n\r\n<p>33Win2 tự h&agrave;o sở hữu một hệ thống tr&ograve; chơi đa dạng, phong ph&uacute;, đ&aacute;p ứng mọi nhu cầu giải tr&iacute; của người chơi. Dưới đ&acirc;y l&agrave; một số tr&ograve; chơi nổi bật tại 33Win2:</p>\r\n\r\n<h3>Slots 777</h3>\r\n\r\n<p>Slots 777 l&agrave; một trong những tr&ograve; chơi phổ biến nhất tại 33Win2. Với đồ họa đẹp mắt v&agrave; &acirc;m thanh sống động, tr&ograve; chơi n&agrave;y mang lại những trải nghiệm th&uacute; vị v&agrave; hấp dẫn. Người chơi c&oacute; thể tham gia v&agrave;o những v&ograve;ng quay may mắn v&agrave; c&oacute; cơ hội tr&uacute;ng những giải thưởng lớn.</p>\r\n\r\n<h3>Bắn c&aacute;</h3>\r\n\r\n<p>Tr&ograve; chơi bắn c&aacute; tại 33Win2 l&agrave; sự kết hợp ho&agrave;n hảo giữa kỹ năng v&agrave; may mắn. Người chơi sẽ được trải nghiệm những trận bắn c&aacute; sống động với nhiều lo&agrave;i c&aacute; đa dạng v&agrave; c&aacute;c loại vũ kh&iacute; phong ph&uacute;. Đ&acirc;y chắc chắn l&agrave; tr&ograve; chơi kh&ocirc;ng thể bỏ qua đối với những ai y&ecirc;u th&iacute;ch sự thử th&aacute;ch v&agrave; giải tr&iacute;.</p>\r\n\r\n<h3>Game b&agrave;i 3D</h3>\r\n\r\n<p>Game b&agrave;i 3D tại 33Win2 mang lại cảm gi&aacute;c ch&acirc;n thực v&agrave; sống động như đang chơi tại một s&ograve;ng b&agrave;i thực thụ. C&aacute;c tr&ograve; chơi b&agrave;i phổ biến như poker, blackjack, baccarat đều c&oacute; mặt tại đ&acirc;y với giao diện 3D đẹp mắt v&agrave; luật chơi chuẩn quốc tế.</p>\r\n\r\n<h3>S&ograve;ng b&agrave;i</h3>\r\n\r\n<p>S&ograve;ng b&agrave;i trực tuyến của 33Win2 l&agrave; nơi hội tụ của những tr&ograve; chơi kinh điển như roulette, sicbo, v&agrave; nhiều tr&ograve; chơi kh&aacute;c. Với giao diện chuy&ecirc;n nghiệp v&agrave; chất lượng h&igrave;nh ảnh sắc n&eacute;t, người chơi sẽ c&oacute; cảm gi&aacute;c như đang ngồi tại một s&ograve;ng b&agrave;i cao cấp tại Las Vegas.</p>\r\n\r\n<h3>Thể thao</h3>\r\n\r\n<p>Mục thể thao của 33Win2 cung cấp c&aacute;c loại k&egrave;o cược hấp dẫn cho nhiều m&ocirc;n thể thao kh&aacute;c nhau như b&oacute;ng đ&aacute;, b&oacute;ng rổ, quần vợt, v&agrave; nhiều m&ocirc;n thể thao kh&aacute;c. Người chơi c&oacute; thể tham gia đặt cược v&agrave;o c&aacute;c trận đấu y&ecirc;u th&iacute;ch v&agrave; theo d&otilde;i kết quả trực tiếp ngay tr&ecirc;n trang web.</p>\r\n\r\n<h3>Xổ số</h3>\r\n\r\n<p>Xổ số tại 33Win2 mang đến cơ hội tr&uacute;ng thưởng lớn cho người chơi. Với nhiều loại h&igrave;nh xổ số đa dạng như xổ số kiến thiết, xổ số l&ocirc; t&ocirc;, v&agrave; xổ số tự chọn, người chơi c&oacute; thể thử vận may của m&igrave;nh v&agrave; gi&agrave;nh những giải thưởng hấp dẫn.</p>\r\n\r\n<h3>Thần t&agrave;i</h3>\r\n\r\n<p>Tr&ograve; chơi Thần t&agrave;i tại 33Win2 l&agrave; một tr&ograve; chơi may mắn, nơi người chơi c&oacute; thể thử vận may của m&igrave;nh v&agrave; nhận được những phần thưởng lớn. Tr&ograve; chơi n&agrave;y được thiết kế với giao diện đẹp mắt v&agrave; luật chơi đơn giản, ph&ugrave; hợp với mọi đối tượng người chơi.</p>\r\n\r\n<h3>Nổ hũ</h3>\r\n\r\n<p><a href=\"https://nohu95.org/\" rel=\"dofollow\">Nohu95</a>&nbsp;l&agrave; tr&ograve; chơi được y&ecirc;u th&iacute;ch tại 33Win2 nhờ v&agrave;o sự kịch t&iacute;nh v&agrave; cơ hội tr&uacute;ng những giải thưởng khổng lồ. Người chơi chỉ cần quay hũ v&agrave; chờ đợi sự may mắn đến với m&igrave;nh, hứa hẹn những khoảnh khắc hồi hộp v&agrave; th&uacute; vị.</p>\r\n\r\n<p>&gt;&gt;&gt; Người chơi c&oacute; thể cập nhật th&ecirc;m link truy cập mới nhất của nh&agrave; c&aacute;i tại&nbsp;<a href=\"https://33win03.org/\" rel=\"dofollow\">33Win03</a>&nbsp;nh&eacute;.</p>\r\n\r\n<h2>Những ưu đ&atilde;i của nh&agrave; c&aacute;i 33Win2</h2>\r\n\r\n<p>Nh&agrave; c&aacute;i 33Win2 kh&ocirc;ng chỉ mang đến những tr&ograve; chơi hấp dẫn m&agrave; c&ograve;n c&oacute; nhiều chương tr&igrave;nh ưu đ&atilde;i hấp dẫn d&agrave;nh cho người chơi. Dưới đ&acirc;y l&agrave; một số ưu đ&atilde;i nổi bật:</p>\r\n\r\n<h3>Nạp lần đầu tặng 33k</h3>\r\n\r\n<p>Khi người chơi nạp tiền lần đầu v&agrave;o t&agrave;i khoản tại 33Win2, họ sẽ nhận được ngay 33k v&agrave;o t&agrave;i khoản, gi&uacute;p tăng th&ecirc;m vốn cược v&agrave; cơ hội chiến thắng.</p>\r\n\r\n<h3>Mỗi lần nạp tặng 1%</h3>\r\n\r\n<p>Mỗi lần nạp tiền v&agrave;o t&agrave;i khoản, người chơi sẽ nhận được th&ecirc;m 1% số tiền nạp. Đ&acirc;y l&agrave; ưu đ&atilde;i hấp dẫn gi&uacute;p người chơi c&oacute; th&ecirc;m nguồn vốn để tham gia c&aacute;c tr&ograve; chơi y&ecirc;u th&iacute;ch.</p>\r\n\r\n<h3>Thưởng ng&agrave;y 29 h&agrave;ng th&aacute;ng l&ecirc;n đến 1 tỷ đồng</h3>\r\n\r\n<p>V&agrave;o ng&agrave;y 29 h&agrave;ng th&aacute;ng, 33Win2 tổ chức chương tr&igrave;nh thưởng đặc biệt với tổng gi&aacute; trị giải thưởng l&ecirc;n đến 1 tỷ đồng. Đ&acirc;y l&agrave; cơ hội tuyệt vời để người chơi c&oacute; thể nhận được những phần thưởng lớn.</p>\r\n\r\n<h3>Đặt cược c&agrave;ng nhiều thưởng c&agrave;ng lớn</h3>\r\n\r\n<p>33Win2 c&oacute; ch&iacute;nh s&aacute;ch thưởng hấp dẫn d&agrave;nh cho những người chơi đặt cược nhiều. C&agrave;ng đặt cược nhiều, người chơi sẽ nhận được c&agrave;ng nhiều phần thưởng gi&aacute; trị, gi&uacute;p tăng th&ecirc;m động lực v&agrave; hứng th&uacute; khi tham gia c&aacute; cược.</p>\r\n\r\n<h2>Tổng kết</h2>\r\n\r\n<p>Nh&agrave; c&aacute;i 33Win2 kh&ocirc;ng chỉ nổi bật với giao diện đẹp mắt, ch&iacute;nh s&aacute;ch bảo mật nghi&ecirc;m ngặt v&agrave; dịch vụ chăm s&oacute;c kh&aacute;ch h&agrave;ng chuy&ecirc;n nghiệp m&agrave; c&ograve;n mang đến một hệ thống tr&ograve; chơi đa dạng v&agrave; nhiều ưu đ&atilde;i hấp dẫn. Đ&acirc;y thực sự l&agrave; lựa chọn l&yacute; tưởng cho những ai đam m&ecirc; c&aacute; cược trực tuyến v&agrave; mong muốn t&igrave;m kiếm một s&acirc;n chơi uy t&iacute;n, chất lượng. H&atilde;y tham gia 33Win2 ngay h&ocirc;m nay để trải nghiệm những gi&acirc;y ph&uacute;t giải tr&iacute; tuyệt vời v&agrave; cơ hội tr&uacute;ng những giải thưởng hấp dẫn!</p>', '#', '#', '👉👉33win2 - Chúng tôi cung cấp trò chơi phù hợp với mọi người chơi khi chơi Casino Online. Có hàng trăm trò chơi Casino như Thể Thao, E-Sports, Casino, Trò Chơi và Xổ Số.', NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `first_name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `gender` int(11) NOT NULL DEFAULT '0',
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_type` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_id` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '1' COMMENT '1: Active 0: Blocked',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `uuid`, `email`, `password`, `last_name`, `first_name`, `birthday`, `gender`, `phone`, `address`, `user_type`, `customer_id`, `status`, `email_verified_at`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'e0f07016-2f00-4c81-a2b8-159d03d1ea66', 'admin@gmail.com', '$2y$10$MR81ltwDTD2BmCAWQ2Eoz.1twkm3REwSEgN53vlU87BMXql0plt5O', 'a', 'b', '1990-03-16', 1, '0977444555', 'Ha Noi', 'ADMIN', NULL, 1, '2024-06-24 00:27:58', NULL, '2024-06-24 00:27:58', '2024-06-24 00:27:58');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_uuid_unique` (`uuid`),
  ADD KEY `categories_user_id_index` (`user_id`),
  ADD KEY `categories_parent_id_index` (`parent_id`),
  ADD KEY `categories_status_index` (`status`),
  ADD KEY `categories_type_index` (`type`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `photos`
--
ALTER TABLE `photos`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `photos_uuid_unique` (`uuid`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_uuid_unique` (`uuid`),
  ADD KEY `posts_user_id_index` (`user_id`),
  ADD KEY `posts_category_id_index` (`category_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_uuid_unique` (`uuid`),
  ADD KEY `products_user_id_index` (`user_id`),
  ADD KEY `products_category_id_index` (`category_id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_uuid_unique` (`uuid`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_uuid_unique` (`uuid`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_user_type_index` (`user_type`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `photos`
--
ALTER TABLE `photos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
