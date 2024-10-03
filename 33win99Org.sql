-- MySQL dump 10.13  Distrib 5.7.44, for Linux (x86_64)
--
-- Host: localhost    Database: 33win99Org
-- ------------------------------------------------------
-- Server version	5.7.44

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categories` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
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
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `categories_uuid_unique` (`uuid`),
  KEY `categories_user_id_index` (`user_id`),
  KEY `categories_parent_id_index` (`parent_id`),
  KEY `categories_status_index` (`status`),
  KEY `categories_type_index` (`type`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'a2100745-1ba5-434f-8c60-1598bcbf9251',NULL,1,'Liên kết nhanh','lien-ket-nhanh',NULL,NULL,NULL,NULL,'#',0,'link',1,0,0,0,0,0,NULL,NULL,NULL,'2024-06-24 00:56:34','2024-06-24 01:24:32'),(2,'95cfdeb8-0183-41de-8faa-2a81a2230688',NULL,1,'Tổng hợp','tong-hop',NULL,NULL,NULL,NULL,'#',1,'link',1,0,0,0,0,0,NULL,NULL,NULL,'2024-06-24 01:01:46','2024-06-24 01:24:37'),(22,'ae8ac7df-3be3-41a0-a1e7-2079c91a5d21',1,1,'s666','s666',NULL,NULL,NULL,NULL,'https://s666.coupons/',NULL,'link',1,0,0,0,0,0,NULL,NULL,NULL,'2024-07-11 04:49:56','2024-09-20 03:46:54'),(23,'476fd7cd-0f3a-4810-a576-230774db95c9',1,1,'for88','for88',NULL,NULL,NULL,NULL,'https://for88.forum/',NULL,'link',1,0,0,0,0,0,NULL,NULL,NULL,'2024-07-15 19:11:59','2024-10-01 18:19:04'),(24,'9919add5-0271-46f2-b765-e3aca2b56548',1,1,'88go','88go',NULL,NULL,NULL,NULL,'https://88go.ink/',NULL,'link',1,0,0,0,0,0,NULL,NULL,NULL,'2024-07-16 03:30:53','2024-09-11 18:51:44'),(25,'dd73220c-149f-4a56-93cc-b1df4c1834fe',1,1,'fun97','fun97',NULL,NULL,NULL,NULL,'https://fun97.org/',NULL,'link',1,0,0,0,0,0,NULL,NULL,NULL,'2024-07-16 05:28:39','2024-09-23 23:00:49'),(26,'7db4fbab-8acd-4c0a-ad37-f2abf53163e4',2,1,'vipwin','vipwin',NULL,NULL,NULL,NULL,'https://vipwin.guru/',NULL,'link',1,0,0,0,0,0,NULL,NULL,NULL,'2024-07-25 02:13:41','2024-09-20 03:59:13'),(27,'b123c832-c452-473e-89ee-4f602eb0b2ee',1,1,'88nn','88nn',NULL,NULL,NULL,NULL,'https://88nn.cloud/',NULL,'link',1,0,0,0,0,0,NULL,NULL,NULL,'2024-07-27 22:40:52','2024-09-09 02:53:37'),(28,'28907f32-d55e-40f7-a47f-874678454fe8',2,1,'ev88','ev88',NULL,NULL,NULL,NULL,'https://ev88.fyi/',NULL,'link',1,0,0,0,0,0,NULL,NULL,NULL,'2024-07-29 05:50:00','2024-10-02 00:04:56'),(29,'9182968f-ef6c-4cc7-ab2d-b38cd20288c7',2,1,'79king9','79king9',NULL,NULL,NULL,NULL,'https://79king9.cloud/',NULL,'link',1,0,0,0,0,0,NULL,NULL,NULL,'2024-07-30 03:39:59','2024-09-24 05:08:32'),(30,'5cff93c1-eac8-4d45-bd94-ddd0d8981b55',1,1,'abc88','abc88',NULL,NULL,NULL,NULL,'https://abc88.blog/',NULL,'link',1,0,0,0,0,0,NULL,NULL,NULL,'2024-08-09 20:04:56','2024-08-09 20:04:56'),(31,'7c18d253-3a14-44df-845c-cf7d2296b394',2,1,'rr88','rr88',NULL,NULL,NULL,NULL,'https://rr88.monster/',NULL,'link',1,0,0,0,0,0,NULL,NULL,NULL,'2024-08-12 04:16:39','2024-09-09 01:10:09'),(32,'c848d00d-e3ac-4d51-bcb9-5cbc3daf89c4',1,1,'vvvwin','vvvwin',NULL,NULL,NULL,NULL,'https://vvvwin.forum/',NULL,'link',1,0,0,0,0,0,NULL,NULL,NULL,'2024-08-18 20:29:26','2024-09-08 02:27:30'),(33,'440160fa-30ea-4d97-82f6-9bdc4b86964e',1,1,'97win','97win',NULL,NULL,NULL,NULL,'https://97win.forum/',NULL,'link',1,0,0,0,0,0,NULL,NULL,NULL,'2024-08-20 20:24:11','2024-09-19 04:15:40'),(34,'2c7c8775-65e9-4fee-8b93-29b4eeb4f3f1',1,1,'tt88','tt88',NULL,NULL,NULL,NULL,'https://tt88.monster/',NULL,'link',1,0,0,0,0,0,NULL,NULL,NULL,'2024-08-20 20:49:50','2024-09-10 23:00:29'),(35,'41e6438e-5e3c-45db-a6e2-520d7c52801a',2,1,'sv66','sv66',NULL,NULL,NULL,NULL,'https://sv66.my/',NULL,'link',1,0,0,0,0,0,NULL,NULL,NULL,'2024-09-04 18:03:22','2024-09-19 04:30:15'),(36,'e952d206-9d00-45e0-b9f4-af1a36ec4814',2,1,'tg88','tg88',NULL,NULL,NULL,NULL,'https://tg88.monster/',NULL,'link',1,0,0,0,0,0,NULL,NULL,NULL,'2024-09-04 18:26:07','2024-09-23 23:27:39'),(37,'ac331c1b-e6bb-42b7-8fed-318ece7c091a',1,1,'u88','u88',NULL,NULL,NULL,NULL,'https://u88.my/',NULL,'link',1,0,0,0,0,0,NULL,NULL,NULL,'2024-10-01 19:58:57','2024-10-01 19:58:57'),(38,'29900610-4f26-4c05-b6d9-bfc3dfa535f0',1,1,'jun888','jun888',NULL,NULL,NULL,NULL,'https://jun888.cloud/',NULL,'link',1,0,0,0,0,0,NULL,NULL,NULL,'2024-10-01 20:17:03','2024-10-01 20:17:03');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_reset_tokens_table',1),(3,'2019_08_19_000000_create_failed_jobs_table',1),(4,'2019_12_14_000001_create_personal_access_tokens_table',1),(5,'2021_03_20_040647_create_categories_table',1),(6,'2021_03_20_040653_create_posts_table',1),(7,'2021_03_20_040653_create_products_table',1),(8,'2021_03_20_040700_create_settings_table',1),(9,'2023_11_05_123857_create_photos_table',1),(10,'2024_04_30_172114_add_fontawesome_icon_to_categories_table',1),(11,'2024_04_30_182319_add_thumbnail2_to_photos_table',1),(12,'2024_06_04_164144_change_field_to_settings_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_reset_tokens`
--

LOCK TABLES `password_reset_tokens` WRITE;
/*!40000 ALTER TABLE `password_reset_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_reset_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_access_tokens`
--

LOCK TABLES `personal_access_tokens` WRITE;
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `photos`
--

DROP TABLE IF EXISTS `photos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `photos` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
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
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `photos_uuid_unique` (`uuid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `photos`
--

LOCK TABLES `photos` WRITE;
/*!40000 ALTER TABLE `photos` DISABLE KEYS */;
INSERT INTO `photos` VALUES (1,'5d6afe04-8340-4185-89dd-eb90613d5784',1,'Logo',NULL,'loho-header.gif','33win1.jpeg',0,'logo',1,'2024-06-24 01:31:10','2024-06-24 01:31:10',NULL);
/*!40000 ALTER TABLE `photos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `posts` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
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
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `posts_uuid_unique` (`uuid`),
  KEY `posts_user_id_index` (`user_id`),
  KEY `posts_category_id_index` (`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `products` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
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
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `products_uuid_unique` (`uuid`),
  KEY `products_user_id_index` (`user_id`),
  KEY `products_category_id_index` (`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `settings` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
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
  `link10` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `settings_uuid_unique` (`uuid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settings`
--

LOCK TABLES `settings` WRITE;
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
INSERT INTO `settings` VALUES (1,'6c183897-a3d5-48ce-8112-1f638b8c06ac',1,'33win99',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'<!-- Google tag (gtag.js) -->\r\n<script async src=\"https://www.googletagmanager.com/gtag/js?id=G-9SFC0Y5LY6\"></script>\r\n<script>\r\n  window.dataLayer = window.dataLayer || [];\r\n  function gtag(){dataLayer.push(arguments);}\r\n  gtag(\'js\', new Date());\r\n\r\n  gtag(\'config\', \'G-9SFC0Y5LY6\');\r\n</script>\r\n\r\n<script type=\"application/ld+json\"> {\r\n        \"@context\": \"https://schema.org/\",\r\n        \"@type\": \"LocalBusiness\",\r\n        \"@id\": \"https://33win99.org/\",\r\n        \"name\": \"33win99\",\r\n        \"image\": \"https://33win99.org/storage/photos/33win1.jpeg\",\r\n        \"url\": \"https://33win99.org/\",\r\n        \"priceRange\": \"Competitive\",\r\n        \"sameAs\": [\r\n            \"https://x.com/3Win99\",\r\n            \"https://www.pinterest.com/33win99/\",\r\n            \"https://www.youtube.com/@33Win99org\",\r\n            \"https://gravatar.com/33win99org\",\r\n            \"https://www.instagram.com/33win99org/\",\r\n            \"https://www.twitch.tv/33win99\",\r\n            \"https://www.goodreads.com/user/show/179608330-33win99\",\r\n            \"https://www.reddit.com/user/33win99/\",\r\n            \"https://500px.com/p/33win99\",\r\n            \"https://www.tumblr.com/blog/33win99\",\r\n            \"https://community.fabric.microsoft.com/t5/user/viewprofilepage/user-id/769106\",\r\n            \"https://techcommunity.microsoft.com/t5/user/viewprofilepage/user-id/2553882#profile\",\r\n            \"https://github.com/33win99\"\r\n        ],\r\n        \"address\": {\r\n            \"@type\": \"PostalAddress\",\r\n            \"streetAddress\": \"22/1 Đường Số 5, P. Trường Thọ, TP Thủ Đức, Hồ Chí Minh\",\r\n            \"addressLocality\": \"Hà Nội\",\r\n            \"postalCode\": \"100000\",\r\n            \"addressCountry\": \"VN\"\r\n        },\r\n        \"geo\": {\r\n            \"@type\": \"GeoCoordinates\",\r\n            \"latitude\": 21.0123498,\r\n            \"longitude\": 105.807386\r\n        },\r\n        \"openingHoursSpecification\": {\r\n            \"@type\": \"OpeningHoursSpecification\",\r\n            \"dayOfWeek\": [\r\n                \"Monday\",\r\n                \"Tuesday\",\r\n                \"Wednesday\",\r\n                \"Thursday\",\r\n                \"Friday\",\r\n                \"Saturday\",\r\n                \"Sunday\"\r\n            ],\r\n            \"opens\": \"00:00\",\r\n            \"closes\": \"23:59\"\r\n        }\r\n    }\r\n</script>\r\n<script type=\"application/ld+json\"> {\r\n        \"@context\": \"https://schema.org/\",\r\n        \"@type\": \"WebSite\",\r\n        \"name\": \"33win99\",\r\n        \"alternateName\": \"33win99 Một địa chỉ uy tín để bạn có thể tham gia các trò chơi cá cược Online một cách nhanh chóng uy tín và nạp rút dễ dàng\",\r\n        \"url\": \"https://33win99.org/\",\r\n        \"potentialAction\": {\r\n            \"@type\": \"SearchAction\",\r\n            \"target\": {\r\n                \"@type\": \"EntryPoint\",\r\n                \"urlTemplate\": \"{search_term_string}\"\r\n            },\r\n            \"query-input\": {\r\n                \"@type\": \"PropertyValueSpecification\",\r\n                \"valueRequired\": \"http://schema.org/True\",\r\n                \"valueName\": \"search_term_string\"\r\n            }\r\n        }\r\n}\r\n</script>\r\n<script type=\"application/ld+json\"> {\r\n        \"@context\": \"https://schema.org/\",\r\n        \"@type\": \"Organization\",\r\n        \"name\": \"33win99\",\r\n        \"url\": \"https://33win99.org/\",\r\n        \"logo\": \"https://33win99.org/storage/photos/33win1.jpeg\",\r\n        \"sameAs\": [\r\n            \"https://x.com/3Win99\",\r\n            \"https://www.pinterest.com/33win99/\",\r\n            \"https://www.youtube.com/@33Win99org\",\r\n            \"https://gravatar.com/33win99org\",\r\n            \"https://www.instagram.com/33win99org/\",\r\n            \"https://www.twitch.tv/33win99\",\r\n            \"https://www.goodreads.com/user/show/179608330-33win99\",\r\n            \"https://www.reddit.com/user/33win99/\",\r\n            \"https://500px.com/p/33win99\",\r\n            \"https://www.tumblr.com/blog/33win99\",\r\n            \"https://community.fabric.microsoft.com/t5/user/viewprofilepage/user-id/769106\",\r\n            \"https://techcommunity.microsoft.com/t5/user/viewprofilepage/user-id/2553882#profile\",\r\n            \"https://github.com/33win99\"\r\n        ]\r\n}\r\n</script>',NULL,'<b id=\"API_VUATRAFFIC\"></b><script defer=\"\" src=\"https://trafficuservn.com/API_VUATF.php\" data-rocket-status=\"executed\"></script>','BẢN QUYỀN THUỘC VỀ ⭐️ 33win99.org','<p>Ch&uacute;ng t&ocirc;i c&oacute; c&aacute;c tr&ograve; chơi ph&ugrave; hợp với mọi người chơi khi chơi Casino Online. Kh&ocirc;ng chỉ c&oacute; h&agrave;ng trăm tr&ograve; chơi Casino, ch&uacute;ng t&ocirc;i c&ograve;n gửi tặng nhiều phần thưởng v&agrave; khuyến m&atilde;i cho c&aacute;c th&agrave;nh vi&ecirc;n của m&igrave;nh.</p>',1,'33win99 - Trang đăng ký đăng nhập chính thức uy tín của nhà cái','33win99 - Trang chuyên cung cấp các trò chơi cá cược online, có đa dạng các trò chơi như tài xỉu, bóng đá, bắn cá, E-Sports và nhiều thể loại khác nữa',NULL,'2024-06-24 00:28:01','2024-09-08 23:11:18','<p><!-- x-tinymce/html --></p>\r\n\r\n<p>Trong bối cảnh thị trường c&aacute; cược trực tuyến ng&agrave;y c&agrave;ng s&ocirc;i động v&agrave; cạnh tranh khốc liệt, việc lựa chọn một nh&agrave; c&aacute;i uy t&iacute;n, chất lượng v&agrave; đ&aacute;ng tin cậy l&agrave; một yếu tố then chốt để người chơi c&oacute; trải nghiệm game an to&agrave;n, minh bạch v&agrave; đầy đủ tiện &iacute;ch. B&agrave;i viết n&agrave;y sẽ cung cấp cho bạn một c&aacute;i nh&igrave;n to&agrave;n diện về những ưu điểm nổi bật của <a href=\"https://33win99.org/\">33win99</a> - một trong những nh&agrave; c&aacute;i h&agrave;ng đầu tr&ecirc;n thị trường, đặc biệt l&agrave; chương tr&igrave;nh ưu đ&atilde;i Nạp lần đầu tặng 99k d&agrave;nh ri&ecirc;ng cho c&aacute;c t&acirc;n thủ.</p>\r\n\r\n<h2>33win99 nh&agrave; c&aacute;i uy t&iacute;n</h2>\r\n\r\n<p>33win99 l&agrave; một trong những nh&agrave; c&aacute;i uy t&iacute;n h&agrave;ng đầu tr&ecirc;n thị trường c&aacute; cược trực tuyến Việt Nam. Được cấp ph&eacute;p hoạt động hợp ph&aacute;p bởi c&aacute;c tổ chức quản l&yacute; c&aacute; cược quốc tế uy t&iacute;n, 33win99 đảm bảo tu&acirc;n thủ c&aacute;c ti&ecirc;u chuẩn nghi&ecirc;m ngặt về bảo mật th&ocirc;ng tin, minh bạch trong c&aacute;c tr&ograve; chơi v&agrave; quyền lợi tối ưu cho người chơi.</p>\r\n\r\n<h3>Giấy ph&eacute;p hoạt động hợp ph&aacute;p</h3>\r\n\r\n<p>33win99 được cấp ph&eacute;p hoạt động hợp ph&aacute;p bởi tổ chức quản l&yacute; c&aacute; cược quốc tế uy t&iacute;n. Điều n&agrave;y chứng minh sự minh bạch v&agrave; t&iacute;nh hợp ph&aacute;p trong hoạt động kinh doanh của nh&agrave; c&aacute;i.</p>\r\n\r\n<h3>Bảo mật th&ocirc;ng tin tối ưu</h3>\r\n\r\n<p>Hệ thống bảo mật của 33win99 được x&acirc;y dựng tr&ecirc;n c&ocirc;ng nghệ m&atilde; h&oacute;a SSL 128-bit, đảm bảo th&ocirc;ng tin c&aacute; nh&acirc;n v&agrave; t&agrave;i khoản của người chơi lu&ocirc;n được bảo vệ an to&agrave;n tuyệt đối.</p>\r\n\r\n<h3>Giao dịch minh bạch</h3>\r\n\r\n<p>Mọi hoạt động giao dịch v&agrave; thanh to&aacute;n tại 33win99 đều được thực hiện một c&aacute;ch minh bạch, r&otilde; r&agrave;ng, đảm bảo quyền lợi cho người chơi.</p>\r\n\r\n<h3>Uy t&iacute;n v&agrave; danh tiếng</h3>\r\n\r\n<p>Với lịch sử hoạt động l&acirc;u năm v&agrave; uy t&iacute;n được khẳng định, 33win99 đ&atilde; trở th&agrave;nh một trong những nh&agrave; c&aacute;i được người chơi Việt Nam tin tưởng v&agrave; lựa chọn.</p>\r\n\r\n<h3>Đ&aacute;nh gi&aacute; từ người chơi</h3>\r\n\r\n<p>Kh&aacute;ch h&agrave;ng của 33win99 đều đ&aacute;nh gi&aacute; cao về chất lượng dịch vụ, sự uy t&iacute;n v&agrave; minh bạch của nh&agrave; c&aacute;i. Nhiều người chơi đ&atilde; chia sẻ những trải nghiệm t&iacute;ch cực khi tham gia tại 33win99.</p>\r\n\r\n<h2>33win99 đa dạng tr&ograve; chơi</h2>\r\n\r\n<p>B&ecirc;n cạnh sự uy t&iacute;n v&agrave; an to&agrave;n, 33win99 c&ograve;n được biết đến với sự đa dạng v&agrave; phong ph&uacute; về c&aacute;c loại h&igrave;nh tr&ograve; chơi, đ&aacute;p ứng mọi nhu cầu giải tr&iacute; của người chơi.</p>\r\n\r\n<h3>C&aacute;c loại h&igrave;nh c&aacute; cược thể thao</h3>\r\n\r\n<p>33win99 cung cấp một danh mục đa dạng c&aacute;c m&ocirc;n thể thao được c&aacute; cược, bao gồm b&oacute;ng đ&aacute;, tennis, b&oacute;ng rổ, golf, baseball, v&agrave; nhiều m&ocirc;n thể thao kh&aacute;c. Người chơi c&oacute; thể tham gia c&aacute; cược trực tiếp c&aacute;c trận đấu diễn ra tr&ecirc;n khắp thế giới.</p>\r\n\r\n<div>\r\n<table cellspacing=\"0\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<p>M&ocirc;n thể thao</p>\r\n			</td>\r\n			<td>\r\n			<p>Tỷ lệ k&egrave;o</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>B&oacute;ng đ&aacute;</p>\r\n			</td>\r\n			<td>\r\n			<p>1.85 - 1.95</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Tennis</p>\r\n			</td>\r\n			<td>\r\n			<p>1.90 - 2.00</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>B&oacute;ng rổ</p>\r\n			</td>\r\n			<td>\r\n			<p>1.88 - 1.92</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Golf</p>\r\n			</td>\r\n			<td>\r\n			<p>1.85 - 1.95</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Baseball</p>\r\n			</td>\r\n			<td>\r\n			<p>1.80 - 1.90</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n</div>\r\n\r\n<h3>C&aacute;c tr&ograve; chơi casino trực tuyến</h3>\r\n\r\n<p>Ngo&agrave;i c&aacute;c loại h&igrave;nh c&aacute; cược thể thao, 33win99 c&ograve;n cung cấp một danh mục đa dạng c&aacute;c tr&ograve; chơi casino trực tuyến như Baccarat, Blackjack, Roulette, Sicbo, Slot game v&agrave; nhiều tr&ograve; chơi hấp dẫn kh&aacute;c.</p>\r\n\r\n<ul>\r\n	<li>Baccarat</li>\r\n	<li>Blackjack</li>\r\n	<li>Roulette</li>\r\n	<li>Sicbo</li>\r\n	<li>Slot game</li>\r\n</ul>\r\n\r\n<h3>Tr&ograve; chơi đặc sắc</h3>\r\n\r\n<p>B&ecirc;n cạnh c&aacute;c tr&ograve; chơi phổ biến, 33win99 c&ograve;n cung cấp nhiều tr&ograve; chơi độc đ&aacute;o v&agrave; hấp dẫn như:</p>\r\n\r\n<ul>\r\n	<li>X&oacute;c Đĩa</li>\r\n	<li>T&agrave;i Xỉu</li>\r\n	<li>Tiến L&ecirc;n</li>\r\n	<li>Poker</li>\r\n</ul>\r\n\r\n<h3>Giao diện direct</h3>\r\n\r\n<p>Giao diện trực quan, dễ sử dụng của 33win99 gi&uacute;p người chơi dễ d&agrave;ng t&igrave;m kiếm v&agrave; truy cập v&agrave;o c&aacute;c tr&ograve; chơi y&ecirc;u th&iacute;ch.</p>\r\n\r\n<h2>33win99 r&uacute;t nạp nhanh ch&oacute;ng</h2>\r\n\r\n<p>Một trong những ưu điểm nổi bật của 33win99 l&agrave; t&iacute;nh năng r&uacute;t nạp tiền nhanh ch&oacute;ng, gi&uacute;p người chơi c&oacute; thể thực hiện c&aacute;c giao dịch một c&aacute;ch thuận tiện v&agrave; an to&agrave;n.</p>\r\n\r\n<h3>Đa dạng phương thức thanh to&aacute;n</h3>\r\n\r\n<p>33win99 cung cấp nhiều phương thức thanh to&aacute;n đa dạng, đ&aacute;p ứng nhu cầu của người chơi, bao gồm:</p>\r\n\r\n<ul>\r\n	<li>Thẻ ng&acirc;n h&agrave;ng</li>\r\n	<li>V&iacute; điện tử</li>\r\n	<li>Chuyển khoản ng&acirc;n h&agrave;ng</li>\r\n	<li>Tiền mặt tại quầy</li>\r\n</ul>\r\n\r\n<h3>Thời gian xử l&yacute; giao dịch nhanh ch&oacute;ng</h3>\r\n\r\n<p>Nhờ v&agrave;o hệ thống c&ocirc;ng nghệ hiện đại, 33win99 c&oacute; khả năng xử l&yacute; c&aacute;c giao dịch nạp tiền v&agrave; r&uacute;t tiền một c&aacute;ch nhanh ch&oacute;ng, gi&uacute;p người chơi kh&ocirc;ng phải chờ đợi l&acirc;u.</p>\r\n\r\n<div>\r\n<table cellspacing=\"0\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<p>Phương thức</p>\r\n			</td>\r\n			<td>\r\n			<p>Thời gian xử l&yacute;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Thẻ ng&acirc;n h&agrave;ng</p>\r\n			</td>\r\n			<td>\r\n			<p>5-10 ph&uacute;t</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>V&iacute; điện tử</p>\r\n			</td>\r\n			<td>\r\n			<p>Ngay lập tức</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Chuyển khoản ng&acirc;n h&agrave;ng</p>\r\n			</td>\r\n			<td>\r\n			<p>30 ph&uacute;t - 2 giờ</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Tiền mặt tại quầy</p>\r\n			</td>\r\n			<td>\r\n			<p>Ngay lập tức</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n</div>\r\n\r\n<h3>Hỗ trợ 24/7</h3>\r\n\r\n<p>Đội ngũ chăm s&oacute;c kh&aacute;ch h&agrave;ng của 33win99 lu&ocirc;n sẵn s&agrave;ng hỗ trợ người chơi 24 giờ mỗi ng&agrave;y, 7 ng&agrave;y trong tuần, đảm bảo mọi vấn đề li&ecirc;n quan đến giao dịch được xử l&yacute; kịp thời.</p>\r\n\r\n<h3>Bảo mật giao dịch</h3>\r\n\r\n<p>Tất cả c&aacute;c giao dịch t&agrave;i ch&iacute;nh tại 33win99 đều được thực hiện tr&ecirc;n nền tảng bảo mật cao, đảm bảo an to&agrave;n tuyệt đối cho người chơi.</p>\r\n\r\n<h2>33win99 hỗ trợ kh&aacute;ch h&agrave;ng</h2>\r\n\r\n<p>B&ecirc;n cạnh việc cung cấp c&aacute;c dịch vụ c&aacute; cược chất lượng, 33win99 cũng đặc biệt ch&uacute; trọng đến việc hỗ trợ kh&aacute;ch h&agrave;ng một c&aacute;ch tận t&igrave;nh v&agrave; chuy&ecirc;n nghiệp.</p>\r\n\r\n<h3>Đội ngũ chăm s&oacute;c kh&aacute;ch h&agrave;ng chuy&ecirc;n nghiệp</h3>\r\n\r\n<p>Đội ngũ nh&acirc;n vi&ecirc;n chăm s&oacute;c kh&aacute;ch h&agrave;ng của 33win99 được đ&agrave;o tạo b&agrave;i bản, c&oacute; kiến thức chuy&ecirc;n s&acirc;u v&agrave; kinh nghiệm phục vụ, sẵn s&agrave;ng giải đ&aacute;p mọi thắc mắc của người chơi một c&aacute;ch nhanh ch&oacute;ng v&agrave; hiệu quả.</p>\r\n\r\n<h3>K&ecirc;nh hỗ trợ đa dạng</h3>\r\n\r\n<p>Người chơi c&oacute; thể li&ecirc;n hệ với 33win99 th&ocirc;ng qua c&aacute;c k&ecirc;nh hỗ trợ đa dạng như:</p>\r\n\r\n<ul>\r\n	<li>Hotline</li>\r\n	<li>Email</li>\r\n	<li>Live chat</li>\r\n	<li>Ứng dụng di động</li>\r\n</ul>\r\n\r\n<h3>Phản hồi nhanh ch&oacute;ng</h3>\r\n\r\n<p>C&aacute;c y&ecirc;u cầu, phản hồi của người chơi lu&ocirc;n được 33win99 xử l&yacute; một c&aacute;ch nhanh ch&oacute;ng, đảm bảo quyền lợi v&agrave; sự h&agrave;i l&ograve;ng của kh&aacute;ch h&agrave;ng.</p>\r\n\r\n<h3>Giải đ&aacute;p thắc mắc tận t&igrave;nh</h3>\r\n\r\n<p>Đội ngũ chăm s&oacute;c kh&aacute;ch h&agrave;ng của 33win99 lu&ocirc;n sẵn s&agrave;ng lắng nghe v&agrave; giải đ&aacute;p mọi thắc mắc của người chơi một c&aacute;ch tận t&igrave;nh v&agrave; chi tiết.</p>\r\n\r\n<h3>Hỗ trợ đa ng&ocirc;n ngữ</h3>\r\n\r\n<p>33win99 cung cấp dịch vụ hỗ trợ kh&aacute;ch h&agrave;ng bằng nhiều ng&ocirc;n ngữ kh&aacute;c nhau, đ&aacute;p ứng nhu cầu của người chơi đến từ nhiều quốc gia.</p>\r\n\r\n<h2>Kết luận</h2>\r\n\r\n<p>T&oacute;m lại, 33win99 l&agrave; một trong những nh&agrave; c&aacute;i uy t&iacute;n h&agrave;ng đầu tr&ecirc;n thị trường c&aacute; cược trực tuyến Việt Nam, sở hữu nhiều ưu điểm nổi bật từ sự an to&agrave;n, minh bạch, đa dạng tr&ograve; chơi, đến t&iacute;nh năng r&uacute;t nạp nhanh ch&oacute;ng v&agrave; dịch vụ hỗ trợ kh&aacute;ch h&agrave;ng chuy&ecirc;n nghiệp. Đặc biệt, chương tr&igrave;nh ưu đ&atilde;i Nạp lần đầu tặng 99k d&agrave;nh ri&ecirc;ng cho t&acirc;n thủ l&agrave; một lợi &iacute;ch v&ocirc; c&ugrave;ng hấp dẫn, gi&uacute;p người chơi c&oacute; thể trải nghiệm c&aacute;c tr&ograve; chơi tại 33win99 một c&aacute;ch thoải m&aacute;i v&agrave; hiệu quả ngay từ những lần đầu ti&ecirc;n tham gia. Với những ưu điểm nổi trội như vậy, 33win99 xứng đ&aacute;ng l&agrave; sự lựa chọn h&agrave;ng đầu d&agrave;nh cho c&aacute;c game thủ Việt Nam.</p>\r\n\r\n<p>&nbsp;</p>','https://fb68.blog/f18','https://fb68.blog/f18','??33win99 - Chúng tôi cung cấp trò chơi phù hợp với mọi người chơi khi chơi Casino Online. Có hàng trăm trò chơi Casino như Thể Thao, E-Sports, Casino, Trò Chơi và Xổ Số.','https://68gamewin20.shop/f13',NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
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
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_uuid_unique` (`uuid`),
  UNIQUE KEY `users_email_unique` (`email`),
  KEY `users_user_type_index` (`user_type`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'e0f07016-2f00-4c81-a2b8-159d03d1ea66','admin@gmail.com','$2y$10$MR81ltwDTD2BmCAWQ2Eoz.1twkm3REwSEgN53vlU87BMXql0plt5O','a','b','1990-03-16',1,'0977444555','Ha Noi','ADMIN',NULL,1,'2024-06-24 00:27:58','63hTWaCVDx8mIRpxZ8EgASx5ylSqELKHRMTKJoQnk8MSDwYbg5BBt9QbdNrh','2024-06-24 00:27:58','2024-06-24 00:27:58');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-10-02 14:21:34
