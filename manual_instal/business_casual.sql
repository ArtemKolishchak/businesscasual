-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Dec 26, 2019 at 08:32 PM
-- Server version: 8.0.15
-- PHP Version: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `business_casual`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

DROP TABLE IF EXISTS `wp_commentmeta`;
CREATE TABLE IF NOT EXISTS `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

DROP TABLE IF EXISTS `wp_comments`;
CREATE TABLE IF NOT EXISTS `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

DROP TABLE IF EXISTS `wp_links`;
CREATE TABLE IF NOT EXISTS `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

DROP TABLE IF EXISTS `wp_options`;
CREATE TABLE IF NOT EXISTS `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`),
  KEY `autoload` (`autoload`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'your_website_url_here', 'yes'),
(2, 'home', 'your_website_url_here', 'yes'),
(3, 'blogname', 'Business Casual', 'yes'),
(4, 'blogdescription', '', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'admin@demolink.org', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '0', 'yes'),
(22, 'posts_per_page', '1', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:87:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:38:\"index.php?&page_id=7&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:1:{i:1;s:17:\"unyson/unyson.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'businesscasual', 'yes'),
(41, 'stylesheet', 'businesscasual', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '45805', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '0', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'page', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '9', 'yes'),
(84, 'page_on_front', '7', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'show_comments_cookies_opt_in', '1', 'yes'),
(93, 'admin_email_lifespan', '1592692549', 'yes'),
(94, 'initial_db_version', '45805', 'yes'),
(95, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(96, 'fresh_site', '0', 'yes'),
(97, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'sidebars_widgets', 'a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:13:\"array_version\";i:3;}', 'yes'),
(103, 'cron', 'a:7:{i:1577381751;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1577399750;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1577399751;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1577399879;a:1:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1577399880;a:1:{s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1577399881;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes'),
(104, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(114, 'recovery_keys', 'a:1:{s:22:\"Ovf6OvZ6phMJn0nZLsX82i\";a:2:{s:10:\"hashed_key\";s:34:\"$P$ByA1UPlUZj8/TUSKXFyAkDosd/h4DR.\";s:10:\"created_at\";i:1577379820;}}', 'yes'),
(115, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.3.2.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.3.2.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.3.2-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.3.2-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.3.2\";s:7:\"version\";s:5:\"5.3.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1577381256;s:15:\"version_checked\";s:5:\"5.3.2\";s:12:\"translations\";a:0:{}}', 'no'),
(118, 'theme_mods_twentytwenty', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1577140688;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";}s:9:\"sidebar-2\";a:3:{i:0;s:10:\"archives-2\";i:1;s:12:\"categories-2\";i:2;s:6:\"meta-2\";}}}}', 'yes'),
(121, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1577381257;s:7:\"checked\";a:5:{s:14:\"businesscasual\";s:5:\"1.0.0\";s:14:\"twentynineteen\";s:3:\"1.4\";s:15:\"twentyseventeen\";s:3:\"2.2\";s:13:\"twentysixteen\";s:3:\"2.0\";s:12:\"twentytwenty\";s:3:\"1.1\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(129, 'can_compress_scripts', '1', 'no'),
(140, 'current_theme', 'Business Casual', 'yes'),
(141, 'theme_mods_businesscasual', 'a:5:{i:0;b:0;s:18:\"nav_menu_locations\";a:2:{s:6:\"menu-1\";i:2;s:11:\"header-menu\";i:2;}s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1577140761;s:4:\"data\";a:2:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}}}s:18:\"custom_css_post_id\";i:-1;s:16:\"header_textcolor\";s:6:\"000000\";}', 'yes'),
(142, 'theme_switched', '', 'yes'),
(144, 'theme_mods_twentynineteen', 'a:3:{i:0;b:0;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1577140769;s:4:\"data\";a:2:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}}}s:18:\"nav_menu_locations\";a:0:{}}', 'yes'),
(152, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(155, 'category_children', 'a:0:{}', 'yes'),
(161, 'recently_activated', 'a:2:{s:47:\"rvg-optimize-database/rvg-optimize-database.php\";i:1577381520;s:17:\"unyson/unyson.php\";i:1577379924;}', 'yes'),
(171, 'fw_active_extensions', 'a:22:{s:4:\"blog\";a:0:{}s:6:\"update\";a:0:{}s:16:\"bitbucket-update\";a:0:{}s:13:\"custom-update\";a:0:{}s:13:\"github-update\";a:0:{}s:10:\"shortcodes\";a:0:{}s:12:\"page-builder\";a:0:{}s:17:\"editor-shortcodes\";a:0:{}s:7:\"builder\";a:0:{}s:5:\"forms\";a:0:{}s:13:\"contact-forms\";a:0:{}s:6:\"mailer\";a:0:{}s:5:\"media\";a:0:{}s:6:\"slider\";a:0:{}s:9:\"bx-slider\";a:0:{}s:11:\"nivo-slider\";a:0:{}s:12:\"owl-carousel\";a:0:{}s:17:\"population-method\";a:0:{}s:28:\"population-method-categories\";a:0:{}s:24:\"population-method-custom\";a:0:{}s:23:\"population-method-posts\";a:0:{}s:22:\"population-method-tags\";a:0:{}}', 'yes'),
(237, 'fw_extensions', 'a:1:{s:7:\"builder\";a:2:{s:17:\"templates:section\";a:1:{s:12:\"page-builder\";a:0:{}}s:16:\"templates:column\";a:1:{s:12:\"page-builder\";a:0:{}}}}', 'no'),
(245, 'fw:bt:s:page-builder:37669f2abd674bcd5b7dc3649b0e3d0a', 'a:3:{s:5:\"title\";s:26:\"template-section-home-page\";s:4:\"json\";s:1908:\"{\"type\":\"section\",\"atts\":{\"is_fullwidth\":false,\"background_color\":\"\",\"background_image\":\"\",\"video\":\"\"},\"_items\":[{\"type\":\"column\",\"width\":\"1_1\",\"_items\":[{\"type\":\"simple\",\"shortcode\":\"divider\",\"atts\":{\"style\":{\"ruler_type\":\"line\",\"space\":{\"height\":\"50\"}}},\"_items\":[]},{\"type\":\"simple\",\"shortcode\":\"text_block\",\"atts\":{\"text\":\"<h2 style=\\\"text-align: center;\\\"><span style=\\\"color: #333333;\\\">Build a website <strong>worth visiting</strong></span></h2>\"},\"_items\":[]},{\"type\":\"simple\",\"shortcode\":\"divider\",\"atts\":{\"style\":{\"ruler_type\":\"line\",\"space\":{\"height\":\"50\"}}},\"_items\":[]},{\"type\":\"simple\",\"shortcode\":\"text_block\",\"atts\":{\"text\":\"<p><span style=\\\"color: #000000;\\\"><img class=\\\"alignleft size-full wp-image-56\\\" src=\\\"your_website_url_here/wp-content/uploads/2019/12/intro-pic.jpg\\\" alt=\\\"\\\" width=\\\"250\\\" height=\\\"150\\\" />The boxes used in this template are nested inbetween a normal Bootstrap row and the start of your column layout. The boxes will be full-width boxes, so if you want to make them smaller then you will need to customize.</span></p><p><span style=\\\"color: #000000;\\\">A huge thanks to <a style=\\\"color: #000000;\\\" href=\\\"http://join.deathtothestockphoto.com\\\" target=\\\"_blank\\\" rel=\\\"noopener\\\">Death to the Stock Photo</a> for allowing us to use the beautiful photos that make this template really come to life. When using this template, make sure your photos are decent. Also make sure that the file size on your photos is kept to a minumum to keep load times to a minimum.</span></p><p><span style=\\\"color: #000000;\\\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc placerat diam quis nisl vestibulum dignissim. In hac habitasse platea dictumst. Interdum et malesuada fames ac ante ipsum primis in faucibus. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.</span></p>\"},\"_items\":[]}]}]}\";s:7:\"created\";i:1577316603;}', 'no'),
(247, 'fw-option-types:gmap-key', 'AIzaSyAWf_qyE4J17pJ4j6YcuYghuRzBzP7qY8Y', 'no'),
(256, 'fw:ext:cf:fd:c0c67c0643d749e582545bbca4e97a3f', 'a:9:{s:5:\"width\";s:3:\"1_1\";s:2:\"id\";s:32:\"c0c67c0643d749e582545bbca4e97a3f\";s:4:\"form\";a:1:{s:4:\"json\";s:110:\"[{\"type\":\"form-header-title\",\"shortcode\":\"form_header_title\",\"width\":\"\",\"options\":{\"title\":\"\",\"subtitle\":\"\"}}]\";}s:8:\"email_to\";s:0:\"\";s:15:\"subject_message\";s:12:\"Contact Form\";s:18:\"submit_button_text\";s:4:\"Send\";s:15:\"success_message\";s:13:\"Message sent!\";s:15:\"failure_message\";s:26:\"Oops something went wrong.\";s:6:\"mailer\";a:0:{}}', 'no'),
(257, 'fw:ext:cf:fd:fc9b9f11e915e5a91a304da34e5b25d4', 'a:9:{s:5:\"width\";s:3:\"1_1\";s:2:\"id\";s:32:\"fc9b9f11e915e5a91a304da34e5b25d4\";s:4:\"form\";a:1:{s:4:\"json\";s:110:\"[{\"type\":\"form-header-title\",\"shortcode\":\"form_header_title\",\"width\":\"\",\"options\":{\"title\":\"\",\"subtitle\":\"\"}}]\";}s:8:\"email_to\";s:0:\"\";s:15:\"subject_message\";s:12:\"Contact Form\";s:18:\"submit_button_text\";s:4:\"Send\";s:15:\"success_message\";s:13:\"Message sent!\";s:15:\"failure_message\";s:26:\"Oops something went wrong.\";s:6:\"mailer\";a:0:{}}', 'no'),
(258, 'fw_ext_settings_options:mailer', 'a:4:{s:6:\"method\";s:6:\"wpmail\";s:4:\"smtp\";a:5:{s:4:\"host\";s:0:\"\";s:8:\"username\";s:0:\"\";s:8:\"password\";s:0:\"\";s:6:\"secure\";s:2:\"no\";s:4:\"port\";s:0:\"\";}s:7:\"general\";a:2:{s:9:\"from_name\";s:0:\"\";s:12:\"from_address\";s:0:\"\";}s:15:\"test-connection\";a:1:{s:15:\"test-connection\";s:0:\"\";}}', 'no'),
(259, 'fw:ext:cf:fd:ba1e872f37ed344bb210f3c946065e40', 'a:9:{s:5:\"width\";s:3:\"1_1\";s:2:\"id\";s:32:\"ba1e872f37ed344bb210f3c946065e40\";s:4:\"form\";a:1:{s:4:\"json\";s:1021:\"[{\"type\":\"form-header-title\",\"shortcode\":\"form_header_title\",\"width\":\"\",\"options\":{\"title\":\"\",\"subtitle\":\"\"}},{\"type\":\"text\",\"shortcode\":\"text_1c27824\",\"width\":\"1_3\",\"options\":{\"label\":\"Name\",\"required\":true,\"placeholder\":\"\",\"default_value\":\"\",\"constraints\":{\"constraint\":\"characters\",\"characters\":{\"min\":\"0\",\"max\":\"\"},\"words\":{\"min\":\"0\",\"max\":\"\"}},\"info\":\"\"}},{\"type\":\"email\",\"shortcode\":\"email_f694bb1\",\"width\":\"1_3\",\"options\":{\"label\":\"Email Address\",\"required\":true,\"placeholder\":\"\",\"info\":\"\"}},{\"type\":\"text\",\"shortcode\":\"text_8c76bfd\",\"width\":\"1_3\",\"options\":{\"label\":\"Phone Number\",\"required\":true,\"placeholder\":\"\",\"default_value\":\"\",\"constraints\":{\"constraint\":\"characters\",\"characters\":{\"min\":\"0\",\"max\":\"\"},\"words\":{\"min\":\"0\",\"max\":\"\"}},\"info\":\"\"}},{\"type\":\"textarea\",\"shortcode\":\"textarea_ca1bc6a\",\"width\":\"1_1\",\"options\":{\"label\":\"Message\",\"required\":false,\"placeholder\":\"\",\"default_value\":\"\",\"constraints\":{\"constraint\":\"characters\",\"characters\":{\"min\":\"0\",\"max\":\"\"},\"words\":{\"min\":\"0\",\"max\":\"\"}},\"info\":\"\"}}]\";}s:8:\"email_to\";s:18:\"admin@demolink.org\";s:15:\"subject_message\";s:12:\"Contact Form\";s:18:\"submit_button_text\";s:6:\"Sumbit\";s:15:\"success_message\";s:13:\"Message sent!\";s:15:\"failure_message\";s:26:\"Oops something went wrong.\";s:6:\"mailer\";a:4:{s:6:\"method\";s:6:\"wpmail\";s:4:\"smtp\";a:5:{s:4:\"host\";s:0:\"\";s:8:\"username\";s:0:\"\";s:8:\"password\";s:0:\"\";s:6:\"secure\";s:2:\"no\";s:4:\"port\";s:0:\"\";}s:7:\"general\";a:2:{s:9:\"from_name\";s:0:\"\";s:12:\"from_address\";s:0:\"\";}s:15:\"test-connection\";a:1:{s:15:\"test-connection\";s:0:\"\";}}}', 'no'),
(260, 'fw:ext:cf:fd:3b175c439864c62e07fcbd8c5d23b599', 'a:9:{s:5:\"width\";s:3:\"1_1\";s:2:\"id\";s:32:\"3b175c439864c62e07fcbd8c5d23b599\";s:4:\"form\";a:1:{s:4:\"json\";s:1021:\"[{\"type\":\"form-header-title\",\"shortcode\":\"form_header_title\",\"width\":\"\",\"options\":{\"title\":\"\",\"subtitle\":\"\"}},{\"type\":\"text\",\"shortcode\":\"text_1c27824\",\"width\":\"1_3\",\"options\":{\"label\":\"Name\",\"required\":true,\"placeholder\":\"\",\"default_value\":\"\",\"constraints\":{\"constraint\":\"characters\",\"characters\":{\"min\":\"0\",\"max\":\"\"},\"words\":{\"min\":\"0\",\"max\":\"\"}},\"info\":\"\"}},{\"type\":\"email\",\"shortcode\":\"email_f694bb1\",\"width\":\"1_3\",\"options\":{\"label\":\"Email Address\",\"required\":true,\"placeholder\":\"\",\"info\":\"\"}},{\"type\":\"text\",\"shortcode\":\"text_8c76bfd\",\"width\":\"1_3\",\"options\":{\"label\":\"Phone Number\",\"required\":true,\"placeholder\":\"\",\"default_value\":\"\",\"constraints\":{\"constraint\":\"characters\",\"characters\":{\"min\":\"0\",\"max\":\"\"},\"words\":{\"min\":\"0\",\"max\":\"\"}},\"info\":\"\"}},{\"type\":\"textarea\",\"shortcode\":\"textarea_ca1bc6a\",\"width\":\"1_1\",\"options\":{\"label\":\"Message\",\"required\":false,\"placeholder\":\"\",\"default_value\":\"\",\"constraints\":{\"constraint\":\"characters\",\"characters\":{\"min\":\"0\",\"max\":\"\"},\"words\":{\"min\":\"0\",\"max\":\"\"}},\"info\":\"\"}}]\";}s:8:\"email_to\";s:18:\"admin@demolink.org\";s:15:\"subject_message\";s:12:\"Contact Form\";s:18:\"submit_button_text\";s:6:\"Sumbit\";s:15:\"success_message\";s:13:\"Message sent!\";s:15:\"failure_message\";s:26:\"Oops something went wrong.\";s:6:\"mailer\";a:4:{s:6:\"method\";s:6:\"wpmail\";s:4:\"smtp\";a:5:{s:4:\"host\";s:0:\"\";s:8:\"username\";s:0:\"\";s:8:\"password\";s:0:\"\";s:6:\"secure\";s:2:\"no\";s:4:\"port\";s:0:\"\";}s:7:\"general\";a:2:{s:9:\"from_name\";s:0:\"\";s:12:\"from_address\";s:0:\"\";}s:15:\"test-connection\";a:1:{s:15:\"test-connection\";s:0:\"\";}}}', 'no'),
(262, 'fw:ext:cf:fd:50374b4fb2415819fbc9bd85dc1dfdcb', 'a:9:{s:5:\"width\";s:3:\"1_1\";s:2:\"id\";s:32:\"50374b4fb2415819fbc9bd85dc1dfdcb\";s:4:\"form\";a:1:{s:4:\"json\";s:1021:\"[{\"type\":\"form-header-title\",\"shortcode\":\"form_header_title\",\"width\":\"\",\"options\":{\"title\":\"\",\"subtitle\":\"\"}},{\"type\":\"text\",\"shortcode\":\"text_1c27824\",\"width\":\"1_3\",\"options\":{\"label\":\"Name\",\"required\":true,\"placeholder\":\"\",\"default_value\":\"\",\"constraints\":{\"constraint\":\"characters\",\"characters\":{\"min\":\"0\",\"max\":\"\"},\"words\":{\"min\":\"0\",\"max\":\"\"}},\"info\":\"\"}},{\"type\":\"email\",\"shortcode\":\"email_f694bb1\",\"width\":\"1_3\",\"options\":{\"label\":\"Email Address\",\"required\":true,\"placeholder\":\"\",\"info\":\"\"}},{\"type\":\"text\",\"shortcode\":\"text_8c76bfd\",\"width\":\"1_3\",\"options\":{\"label\":\"Phone Number\",\"required\":true,\"placeholder\":\"\",\"default_value\":\"\",\"constraints\":{\"constraint\":\"characters\",\"characters\":{\"min\":\"0\",\"max\":\"\"},\"words\":{\"min\":\"0\",\"max\":\"\"}},\"info\":\"\"}},{\"type\":\"textarea\",\"shortcode\":\"textarea_ca1bc6a\",\"width\":\"1_1\",\"options\":{\"label\":\"Message\",\"required\":false,\"placeholder\":\"\",\"default_value\":\"\",\"constraints\":{\"constraint\":\"characters\",\"characters\":{\"min\":\"0\",\"max\":\"\"},\"words\":{\"min\":\"0\",\"max\":\"\"}},\"info\":\"\"}}]\";}s:8:\"email_to\";s:18:\"admin@demolink.org\";s:15:\"subject_message\";s:12:\"Contact Form\";s:18:\"submit_button_text\";s:6:\"Sumbit\";s:15:\"success_message\";s:13:\"Message sent!\";s:15:\"failure_message\";s:26:\"Oops something went wrong.\";s:6:\"mailer\";a:4:{s:6:\"method\";s:6:\"wpmail\";s:4:\"smtp\";a:5:{s:4:\"host\";s:0:\"\";s:8:\"username\";s:0:\"\";s:8:\"password\";s:0:\"\";s:6:\"secure\";s:2:\"no\";s:4:\"port\";s:0:\"\";}s:7:\"general\";a:2:{s:9:\"from_name\";s:0:\"\";s:12:\"from_address\";s:0:\"\";}s:15:\"test-connection\";a:1:{s:15:\"test-connection\";s:0:\"\";}}}', 'no'),
(264, 'fw:ext:cf:fd:d63927a039dc2d907fc620a983d1b3e5', 'a:9:{s:5:\"width\";s:3:\"1_1\";s:2:\"id\";s:32:\"d63927a039dc2d907fc620a983d1b3e5\";s:4:\"form\";a:1:{s:4:\"json\";s:1021:\"[{\"type\":\"form-header-title\",\"shortcode\":\"form_header_title\",\"width\":\"\",\"options\":{\"title\":\"\",\"subtitle\":\"\"}},{\"type\":\"text\",\"shortcode\":\"text_1c27824\",\"width\":\"1_3\",\"options\":{\"label\":\"Name\",\"required\":true,\"placeholder\":\"\",\"default_value\":\"\",\"constraints\":{\"constraint\":\"characters\",\"characters\":{\"min\":\"0\",\"max\":\"\"},\"words\":{\"min\":\"0\",\"max\":\"\"}},\"info\":\"\"}},{\"type\":\"email\",\"shortcode\":\"email_f694bb1\",\"width\":\"1_3\",\"options\":{\"label\":\"Email Address\",\"required\":true,\"placeholder\":\"\",\"info\":\"\"}},{\"type\":\"text\",\"shortcode\":\"text_8c76bfd\",\"width\":\"1_3\",\"options\":{\"label\":\"Phone Number\",\"required\":true,\"placeholder\":\"\",\"default_value\":\"\",\"constraints\":{\"constraint\":\"characters\",\"characters\":{\"min\":\"0\",\"max\":\"\"},\"words\":{\"min\":\"0\",\"max\":\"\"}},\"info\":\"\"}},{\"type\":\"textarea\",\"shortcode\":\"textarea_ca1bc6a\",\"width\":\"1_1\",\"options\":{\"label\":\"Message\",\"required\":false,\"placeholder\":\"\",\"default_value\":\"\",\"constraints\":{\"constraint\":\"characters\",\"characters\":{\"min\":\"0\",\"max\":\"\"},\"words\":{\"min\":\"0\",\"max\":\"\"}},\"info\":\"\"}}]\";}s:8:\"email_to\";s:18:\"admin@demolink.org\";s:15:\"subject_message\";s:12:\"Contact Form\";s:18:\"submit_button_text\";s:6:\"Sumbit\";s:15:\"success_message\";s:13:\"Message sent!\";s:15:\"failure_message\";s:26:\"Oops something went wrong.\";s:6:\"mailer\";a:4:{s:6:\"method\";s:6:\"wpmail\";s:4:\"smtp\";a:5:{s:4:\"host\";s:0:\"\";s:8:\"username\";s:0:\"\";s:8:\"password\";s:0:\"\";s:6:\"secure\";s:2:\"no\";s:4:\"port\";s:0:\"\";}s:7:\"general\";a:2:{s:9:\"from_name\";s:0:\"\";s:12:\"from_address\";s:0:\"\";}s:15:\"test-connection\";a:1:{s:15:\"test-connection\";s:0:\"\";}}}', 'no'),
(285, 'recovery_mode_email_last_sent', '1577379820', 'yes'),
(292, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1577381259;s:7:\"checked\";a:4:{s:19:\"akismet/akismet.php\";s:5:\"4.1.3\";s:9:\"hello.php\";s:5:\"1.7.2\";s:47:\"rvg-optimize-database/rvg-optimize-database.php\";s:5:\"4.8.8\";s:17:\"unyson/unyson.php\";s:6:\"2.7.22\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:4:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.1.3\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.1.3.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}}s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}}s:47:\"rvg-optimize-database/rvg-optimize-database.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:35:\"w.org/plugins/rvg-optimize-database\";s:4:\"slug\";s:21:\"rvg-optimize-database\";s:6:\"plugin\";s:47:\"rvg-optimize-database/rvg-optimize-database.php\";s:11:\"new_version\";s:5:\"4.8.8\";s:3:\"url\";s:52:\"https://wordpress.org/plugins/rvg-optimize-database/\";s:7:\"package\";s:70:\"https://downloads.wordpress.org/plugin/rvg-optimize-database.4.8.8.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:74:\"https://ps.w.org/rvg-optimize-database/assets/icon-256x256.jpg?rev=1079059\";s:2:\"1x\";s:74:\"https://ps.w.org/rvg-optimize-database/assets/icon-128x128.jpg?rev=1079059\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:77:\"https://ps.w.org/rvg-optimize-database/assets/banner-1544x500.jpg?rev=1079581\";s:2:\"1x\";s:76:\"https://ps.w.org/rvg-optimize-database/assets/banner-772x250.jpg?rev=1079581\";}s:11:\"banners_rtl\";a:0:{}}s:17:\"unyson/unyson.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:20:\"w.org/plugins/unyson\";s:4:\"slug\";s:6:\"unyson\";s:6:\"plugin\";s:17:\"unyson/unyson.php\";s:11:\"new_version\";s:6:\"2.7.22\";s:3:\"url\";s:37:\"https://wordpress.org/plugins/unyson/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/unyson.2.7.22.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/unyson/assets/icon-256x256.jpg?rev=1034261\";s:2:\"1x\";s:59:\"https://ps.w.org/unyson/assets/icon-128x128.jpg?rev=1034260\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:62:\"https://ps.w.org/unyson/assets/banner-1544x500.png?rev=1034271\";s:2:\"1x\";s:61:\"https://ps.w.org/unyson/assets/banner-772x250.png?rev=1034270\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no'),
(297, '_site_transient_timeout_fw_ext_upd_gh_fw', '1577424703', 'no'),
(298, '_site_transient_fw_ext_upd_gh_fw', 'a:9:{s:31:\"ThemeFuse/Unyson-Blog-Extension\";s:6:\"v1.0.2\";s:34:\"ThemeFuse/Unyson-Builder-Extension\";s:7:\"v1.2.11\";s:32:\"ThemeFuse/Unyson-Forms-Extension\";s:7:\"v2.0.31\";s:33:\"ThemeFuse/Unyson-Mailer-Extension\";s:7:\"v1.2.12\";s:44:\"ThemeFuse/Unyson-PopulationMethods-Extension\";s:7:\"v1.0.19\";s:34:\"ThemeFuse/Unyson-Sliders-Extension\";s:7:\"v1.1.19\";s:37:\"ThemeFuse/Unyson-Shortcodes-Extension\";s:7:\"v1.3.31\";s:38:\"ThemeFuse/Unyson-PageBuilder-Extension\";s:7:\"v1.6.17\";s:33:\"ThemeFuse/Unyson-Update-Extension\";s:7:\"v1.0.12\";}', 'no'),
(299, '_transient_timeout_plugin_slugs', '1577467922', 'no'),
(300, '_transient_plugin_slugs', 'a:4:{i:0;s:19:\"akismet/akismet.php\";i:1;s:9:\"hello.php\";i:2;s:47:\"rvg-optimize-database/rvg-optimize-database.php\";i:3;s:17:\"unyson/unyson.php\";}', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

DROP TABLE IF EXISTS `wp_postmeta`;
CREATE TABLE IF NOT EXISTS `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(9, 7, '_edit_lock', '1577316584:1'),
(10, 9, '_edit_lock', '1577140709:1'),
(11, 11, '_edit_lock', '1577316214:1'),
(12, 13, '_edit_lock', '1577374811:1'),
(13, 15, '_menu_item_type', 'custom'),
(14, 15, '_menu_item_menu_item_parent', '0'),
(15, 15, '_menu_item_object_id', '15'),
(16, 15, '_menu_item_object', 'custom'),
(17, 15, '_menu_item_target', ''),
(18, 15, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(19, 15, '_menu_item_xfn', ''),
(20, 15, '_menu_item_url', 'your_website_url_here/'),
(21, 15, '_menu_item_orphaned', '1577140882'),
(22, 16, '_menu_item_type', 'post_type'),
(23, 16, '_menu_item_menu_item_parent', '0'),
(24, 16, '_menu_item_object_id', '11'),
(25, 16, '_menu_item_object', 'page'),
(26, 16, '_menu_item_target', ''),
(27, 16, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(28, 16, '_menu_item_xfn', ''),
(29, 16, '_menu_item_url', ''),
(31, 17, '_menu_item_type', 'post_type'),
(32, 17, '_menu_item_menu_item_parent', '0'),
(33, 17, '_menu_item_object_id', '9'),
(34, 17, '_menu_item_object', 'page'),
(35, 17, '_menu_item_target', ''),
(36, 17, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(37, 17, '_menu_item_xfn', ''),
(38, 17, '_menu_item_url', ''),
(40, 18, '_menu_item_type', 'post_type'),
(41, 18, '_menu_item_menu_item_parent', '0'),
(42, 18, '_menu_item_object_id', '13'),
(43, 18, '_menu_item_object', 'page'),
(44, 18, '_menu_item_target', ''),
(45, 18, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(46, 18, '_menu_item_xfn', ''),
(47, 18, '_menu_item_url', ''),
(49, 19, '_menu_item_type', 'post_type'),
(50, 19, '_menu_item_menu_item_parent', '0'),
(51, 19, '_menu_item_object_id', '7'),
(52, 19, '_menu_item_object', 'page'),
(53, 19, '_menu_item_target', ''),
(54, 19, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(55, 19, '_menu_item_xfn', ''),
(56, 19, '_menu_item_url', ''),
(71, 26, '_wp_attached_file', '2019/12/slide-1.jpg'),
(72, 26, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:843;s:6:\"height\";i:403;s:4:\"file\";s:19:\"2019/12/slide-1.jpg\";s:5:\"sizes\";a:3:{s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"slide-1-300x143.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:143;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"slide-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:19:\"slide-1-768x367.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:367;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:7:\"resizes\";a:2:{s:6:\"138x75\";s:27:\"/2019/12/slide-1-138x75.jpg\";s:8:\"1110x530\";s:29:\"/2019/12/slide-1-1110x530.jpg\";}}'),
(73, 27, '_wp_attached_file', '2019/12/slide-2.jpg'),
(74, 27, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:843;s:6:\"height\";i:403;s:4:\"file\";s:19:\"2019/12/slide-2.jpg\";s:5:\"sizes\";a:3:{s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"slide-2-300x143.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:143;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"slide-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:19:\"slide-2-768x367.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:367;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:7:\"resizes\";a:2:{s:6:\"138x75\";s:27:\"/2019/12/slide-2-138x75.jpg\";s:8:\"1110x530\";s:29:\"/2019/12/slide-2-1110x530.jpg\";}}'),
(75, 28, '_wp_attached_file', '2019/12/slide-3.jpg'),
(76, 28, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:843;s:6:\"height\";i:403;s:4:\"file\";s:19:\"2019/12/slide-3.jpg\";s:5:\"sizes\";a:3:{s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"slide-3-300x143.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:143;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"slide-3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:19:\"slide-3-768x367.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:367;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:7:\"resizes\";a:2:{s:6:\"138x75\";s:27:\"/2019/12/slide-3-138x75.jpg\";s:8:\"1110x530\";s:29:\"/2019/12/slide-3-1110x530.jpg\";}}'),
(77, 7, '_edit_last', '1'),
(78, 7, 'fw:opt:ext:pb:page-builder:json', '[{\"type\":\"section\",\"atts\":{\"is_fullwidth\":false,\"background_color\":\"\",\"background_image\":\"\",\"video\":\"\"},\"_items\":[{\"type\":\"column\",\"width\":\"1_1\",\"_items\":[{\"type\":\"simple\",\"shortcode\":\"slider\",\"atts\":{\"slider_id\":\"46\",\"width\":\"1110\",\"height\":\"530\"}},{\"type\":\"simple\",\"shortcode\":\"text_block\",\"atts\":{\"text\":\"<h2 style=\\\"text-align: center;\\\"><span style=\\\"color: #777777;\\\">Welcome to<\\/span><\\/h2>\"}},{\"type\":\"simple\",\"shortcode\":\"text_block\",\"atts\":{\"text\":\"<h1 style=\\\"text-align: center;\\\"><span style=\\\"color: #333333;\\\">Business Casual<\\/span><\\/h1>\"}},{\"type\":\"simple\",\"shortcode\":\"divider\",\"atts\":{\"style\":{\"ruler_type\":\"line\",\"space\":{\"height\":\"50\"}}}},{\"type\":\"simple\",\"shortcode\":\"text_block\",\"atts\":{\"text\":\"<h2 style=\\\"text-align: center;\\\"><span style=\\\"color: #777777;\\\">By <strong>Start Bootstrap<\\/strong><\\/span><\\/h2>\"}}]}]},{\"type\":\"section\",\"atts\":{\"is_fullwidth\":false,\"background_color\":\"\",\"background_image\":\"\",\"video\":\"\"},\"_items\":[{\"type\":\"column\",\"width\":\"1_1\",\"_items\":[{\"type\":\"simple\",\"shortcode\":\"divider\",\"atts\":{\"style\":{\"ruler_type\":\"line\",\"space\":{\"height\":\"50\"}}}},{\"type\":\"simple\",\"shortcode\":\"text_block\",\"atts\":{\"text\":\"<h2 style=\\\"text-align: center;\\\"><span style=\\\"color: #333333;\\\">Build a website <strong>worth visiting<\\/strong><\\/span><\\/h2>\"}},{\"type\":\"simple\",\"shortcode\":\"divider\",\"atts\":{\"style\":{\"ruler_type\":\"line\",\"space\":{\"height\":\"50\"}}}},{\"type\":\"simple\",\"shortcode\":\"text_block\",\"atts\":{\"text\":\"<p><span style=\\\"color: #000000;\\\"><img class=\\\"alignleft size-full wp-image-56\\\" src=\\\"http:\\/\\/your_website_url_here/wp-content\\/uploads\\/2019\\/12\\/intro-pic.jpg\\\" alt=\\\"\\\" width=\\\"250\\\" height=\\\"150\\\" \\/>The boxes used in this template are nested inbetween a normal Bootstrap row and the start of your column layout. The boxes will be full-width boxes, so if you want to make them smaller then you will need to customize.<\\/span><\\/p><p><span style=\\\"color: #000000;\\\">A huge thanks to <a style=\\\"color: #000000;\\\" href=\\\"http:\\/\\/join.deathtothestockphoto.com\\\" target=\\\"_blank\\\" rel=\\\"noopener\\\">Death to the Stock Photo<\\/a> for allowing us to use the beautiful photos that make this template really come to life. When using this template, make sure your photos are decent. Also make sure that the file size on your photos is kept to a minumum to keep load times to a minimum.<\\/span><\\/p><p><span style=\\\"color: #000000;\\\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc placerat diam quis nisl vestibulum dignissim. In hac habitasse platea dictumst. Interdum et malesuada fames ac ante ipsum primis in faucibus. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.<\\/span><\\/p>\"}}]}]},{\"type\":\"section\",\"atts\":{\"is_fullwidth\":false,\"background_color\":\"\",\"background_image\":\"\",\"video\":\"\"},\"_items\":[{\"type\":\"column\",\"width\":\"1_1\",\"_items\":[{\"type\":\"simple\",\"shortcode\":\"divider\",\"atts\":{\"style\":{\"ruler_type\":\"line\",\"space\":{\"height\":\"50\"}}}},{\"type\":\"simple\",\"shortcode\":\"text_block\",\"atts\":{\"text\":\"<h2 style=\\\"text-align: center;\\\"><span style=\\\"color: #333333;\\\">Beautiful boxes <strong>to showcase your content<\\/strong><\\/span><\\/h2>\"}},{\"type\":\"simple\",\"shortcode\":\"divider\",\"atts\":{\"style\":{\"ruler_type\":\"line\",\"space\":{\"height\":\"50\"}}}},{\"type\":\"simple\",\"shortcode\":\"text_block\",\"atts\":{\"text\":\"<p><span style=\\\"color: #000000;\\\">Use as many boxes as you like, and put anything you want in them! They are great for just about anything, the sky\'s the limit!<\\/span><\\/p><p><span style=\\\"color: #000000;\\\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc placerat diam quis nisl vestibulum dignissim. In hac habitasse platea dictumst. Interdum et malesuada fames ac ante ipsum primis in faucibus. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.<\\/span><\\/p>\"}}]}]}]'),
(79, 7, 'fw_options', 'a:1:{s:12:\"page-builder\";a:2:{s:4:\"json\";s:2:\"[]\";s:14:\"builder_active\";b:1;}}'),
(94, 39, '_edit_lock', '1577222164:1'),
(128, 46, '_edit_last', '1'),
(129, 46, 'fw_options', 'a:6:{s:6:\"slider\";a:4:{s:8:\"selected\";s:9:\"bx-slider\";s:9:\"bx-slider\";a:3:{s:17:\"population-method\";s:6:\"custom\";s:5:\"title\";s:8:\"Slider-2\";s:15:\"custom-settings\";a:1:{s:6:\"test1z\";s:10:\"horizontal\";}}s:11:\"nivo-slider\";a:2:{s:17:\"population-method\";s:0:\"\";s:5:\"title\";s:0:\"\";}s:12:\"owl-carousel\";a:2:{s:17:\"population-method\";s:0:\"\";s:5:\"title\";s:0:\"\";}}s:9:\"populated\";s:1:\"1\";s:11:\"slider_type\";s:9:\"bx-slider\";s:5:\"title\";s:17:\"Slider-Front-Page\";s:15:\"custom-settings\";a:1:{s:6:\"test1z\";s:10:\"horizontal\";}s:13:\"custom-slides\";a:3:{i:0;a:5:{s:10:\"multimedia\";a:3:{s:8:\"selected\";s:5:\"image\";s:5:\"image\";a:1:{s:3:\"src\";a:2:{s:13:\"attachment_id\";s:2:\"26\";s:3:\"url\";s:86:\"//192.168.0.139/wordpress_themes/businesscasual/wp-content/uploads/2019/12/slide-1.jpg\";}}s:5:\"video\";a:1:{s:3:\"src\";s:0:\"\";}}s:5:\"thumb\";s:98:\"your_website_url_here/wp-content/uploads/2019/12/slide-1-138x75.jpg\";s:5:\"title\";s:0:\"\";s:4:\"desc\";s:0:\"\";s:13:\"extra-options\";a:1:{s:8:\"subtitle\";s:0:\"\";}}i:1;a:5:{s:10:\"multimedia\";a:3:{s:8:\"selected\";s:5:\"image\";s:5:\"image\";a:1:{s:3:\"src\";a:2:{s:13:\"attachment_id\";s:2:\"27\";s:3:\"url\";s:86:\"//192.168.0.139/wordpress_themes/businesscasual/wp-content/uploads/2019/12/slide-2.jpg\";}}s:5:\"video\";a:1:{s:3:\"src\";s:0:\"\";}}s:5:\"thumb\";s:98:\"your_website_url_here/wp-content/uploads/2019/12/slide-2-138x75.jpg\";s:5:\"title\";s:0:\"\";s:4:\"desc\";s:0:\"\";s:13:\"extra-options\";a:1:{s:8:\"subtitle\";s:0:\"\";}}i:2;a:5:{s:10:\"multimedia\";a:3:{s:8:\"selected\";s:5:\"image\";s:5:\"image\";a:1:{s:3:\"src\";a:2:{s:13:\"attachment_id\";s:2:\"28\";s:3:\"url\";s:86:\"//192.168.0.139/wordpress_themes/businesscasual/wp-content/uploads/2019/12/slide-3.jpg\";}}s:5:\"video\";a:1:{s:3:\"src\";s:0:\"\";}}s:5:\"thumb\";s:98:\"your_website_url_here/wp-content/uploads/2019/12/slide-3-138x75.jpg\";s:5:\"title\";s:0:\"\";s:4:\"desc\";s:0:\"\";s:13:\"extra-options\";a:1:{s:8:\"subtitle\";s:0:\"\";}}}}'),
(130, 46, '_edit_lock', '1577290414:1'),
(149, 56, '_wp_attached_file', '2019/12/intro-pic.jpg'),
(150, 56, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:250;s:6:\"height\";i:150;s:4:\"file\";s:21:\"2019/12/intro-pic.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"intro-pic-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(170, 11, '_edit_last', '1'),
(171, 11, 'fw:opt:ext:pb:page-builder:json', '[{\"type\":\"section\",\"atts\":{\"is_fullwidth\":false,\"background_color\":\"\",\"background_image\":\"\",\"video\":\"\"},\"_items\":[{\"type\":\"column\",\"width\":\"1_1\",\"_items\":[{\"type\":\"simple\",\"shortcode\":\"divider\",\"atts\":{\"style\":{\"ruler_type\":\"line\",\"space\":{\"height\":\"50\"}}}},{\"type\":\"simple\",\"shortcode\":\"text_block\",\"atts\":{\"text\":\"<h2 style=\\\"text-align: center;\\\">About <strong>business casual<\\/strong><\\/h2>\"}},{\"type\":\"simple\",\"shortcode\":\"divider\",\"atts\":{\"style\":{\"ruler_type\":\"line\",\"space\":{\"height\":\"50\"}}}}]},{\"type\":\"column\",\"_items\":[{\"type\":\"simple\",\"shortcode\":\"media_image\",\"atts\":{\"image\":{\"attachment_id\":\"27\",\"url\":\"\\/\\/your_website_url_here/wp-content\\/uploads\\/2019\\/12\\/slide-2.jpg\"},\"width\":\"\",\"height\":\"\",\"link\":\"\",\"target\":\"_self\"}}],\"width\":\"1_2\"},{\"type\":\"column\",\"width\":\"1_2\",\"_items\":[{\"type\":\"simple\",\"shortcode\":\"text_block\",\"atts\":{\"text\":\"<p>This is a great place to introduce your company or project and describe what you do.<\\/p><p>Lid est laborum dolo rumes fugats untras. Etharums ser quidem rerum facilis dolores nemis omnis fugats vitaes nemo minima rerums unsers sadips amets.<\\/p><p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.<\\/p>\"}}]}]},{\"type\":\"section\",\"_items\":[{\"type\":\"column\",\"_items\":[{\"type\":\"simple\",\"shortcode\":\"divider\",\"atts\":{\"style\":{\"ruler_type\":\"line\",\"space\":{\"height\":\"50\"}}}},{\"type\":\"simple\",\"shortcode\":\"text_block\",\"atts\":{\"text\":\"<h2 style=\\\"text-align: center;\\\">Our <strong>Team<\\/strong><\\/h2>\"}},{\"type\":\"simple\",\"shortcode\":\"divider\",\"atts\":{\"style\":{\"ruler_type\":\"line\",\"space\":{\"height\":\"50\"}}}}],\"width\":\"1_1\"},{\"type\":\"column\",\"_items\":[{\"type\":\"simple\",\"shortcode\":\"team_member\",\"atts\":{\"image\":{\"attachment_id\":\"68\",\"url\":\"\\/\\/your_website_url_here/wp-content\\/uploads\\/2019\\/12\\/750x450.png\"},\"name\":\"John Smith\",\"job\":\"Job Title\",\"desc\":\"\"}}],\"width\":\"1_3\"},{\"type\":\"column\",\"width\":\"1_3\",\"_items\":[{\"type\":\"simple\",\"shortcode\":\"team_member\",\"atts\":{\"image\":{\"attachment_id\":\"68\",\"url\":\"\\/\\/your_website_url_here/wp-content\\/uploads\\/2019\\/12\\/750x450.png\"},\"name\":\"John Smith\",\"job\":\"Job Title\",\"desc\":\"\"}}]},{\"type\":\"column\",\"width\":\"1_3\",\"_items\":[{\"type\":\"simple\",\"shortcode\":\"team_member\",\"atts\":{\"image\":{\"attachment_id\":\"68\",\"url\":\"\\/\\/your_website_url_here/wp-content\\/uploads\\/2019\\/12\\/750x450.png\"},\"name\":\"John Smith\",\"job\":\"Job Title\",\"desc\":\"\"}}]}],\"atts\":{\"is_fullwidth\":false,\"background_color\":\"\",\"background_image\":\"\",\"video\":\"\"}}]'),
(172, 11, 'fw_options', 'a:1:{s:12:\"page-builder\";a:2:{s:4:\"json\";s:2:\"[]\";s:14:\"builder_active\";b:1;}}'),
(179, 68, '_wp_attached_file', '2019/12/750x450.png'),
(180, 68, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:750;s:6:\"height\";i:450;s:4:\"file\";s:19:\"2019/12/750x450.png\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"750x450-300x180.png\";s:5:\"width\";i:300;s:6:\"height\";i:180;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"750x450-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(183, 13, '_edit_last', '1'),
(184, 13, 'fw:opt:ext:pb:page-builder:json', '[{\"type\":\"section\",\"atts\":{\"is_fullwidth\":false,\"background_color\":\"\",\"background_image\":\"\",\"video\":\"\"},\"_items\":[{\"type\":\"column\",\"width\":\"1_1\",\"_items\":[{\"type\":\"simple\",\"shortcode\":\"divider\",\"atts\":{\"style\":{\"ruler_type\":\"line\",\"space\":{\"height\":\"50\"}}}},{\"type\":\"simple\",\"shortcode\":\"text_block\",\"atts\":{\"text\":\"<h2 style=\\\"text-align: center;\\\">Contact <strong>business casual<\\/strong><\\/h2>\"}},{\"type\":\"simple\",\"shortcode\":\"divider\",\"atts\":{\"style\":{\"ruler_type\":\"line\",\"space\":{\"height\":\"50\"}}}}]},{\"type\":\"column\",\"width\":\"2_3\",\"_items\":[{\"type\":\"simple\",\"shortcode\":\"map\",\"atts\":{\"data_provider\":{\"population_method\":\"custom\",\"custom\":{\"locations\":[{\"location\":{\"location\":\"3481 Melrose Place Beverly Hills, CA 90210\",\"venue\":\"\",\"address\":\"\",\"city\":\"\",\"state\":\"\",\"country\":\"\",\"zip\":\"\",\"coordinates\":{\"lat\":-34,\"lng\":150}},\"title\":\"3481 Melrose Place Beverly Hills, CA 90210\",\"description\":\"\",\"url\":\"\",\"thumb\":\"\"}]}},\"gmap-key\":\"AIzaSyAWf_qyE4J17pJ4j6YcuYghuRzBzP7qY8Y\",\"map_type\":\"roadmap\",\"map_height\":\"400\",\"disable_scrolling\":false}}]},{\"type\":\"column\",\"width\":\"1_3\",\"_items\":[{\"type\":\"simple\",\"shortcode\":\"text_block\",\"atts\":{\"text\":\"<p>Phone: <strong>123.456.7890<\\/strong><\\/p><p>Email: <a href=\\\"mailto:name@example.com\\\"><strong>name@example.com<\\/strong><\\/a><\\/p><p>Address: <strong>3481 Melrose Place<br \\/>Beverly Hills, CA 90210<\\/strong><\\/p>\"}}]}]},{\"type\":\"section\",\"_items\":[{\"type\":\"column\",\"_items\":[{\"type\":\"simple\",\"shortcode\":\"divider\",\"atts\":{\"style\":{\"ruler_type\":\"line\",\"space\":{\"height\":\"50\"}}}},{\"type\":\"simple\",\"shortcode\":\"text_block\",\"atts\":{\"text\":\"<h2 style=\\\"text-align: center;\\\">Contact <strong>form<\\/strong><\\/h2>\"}},{\"type\":\"simple\",\"shortcode\":\"divider\",\"atts\":{\"style\":{\"ruler_type\":\"line\",\"space\":{\"height\":\"50\"}}}},{\"type\":\"simple\",\"shortcode\":\"text_block\",\"atts\":{\"text\":\"<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Fugiat, vitae, distinctio, possimus repudiandae cupiditate ipsum excepturi dicta neque eaque voluptates tempora veniam esse earum sapiente optio deleniti consequuntur eos voluptatem.<\\/p>\"}},{\"type\":\"contact-form\",\"_items\":[],\"atts\":{\"id\":\"3b175c439864c62e07fcbd8c5d23b599\",\"form\":{\"json\":\"[{\\\"type\\\":\\\"form-header-title\\\",\\\"shortcode\\\":\\\"form_header_title\\\",\\\"width\\\":\\\"\\\",\\\"options\\\":{\\\"title\\\":\\\"\\\",\\\"subtitle\\\":\\\"\\\"}},{\\\"type\\\":\\\"text\\\",\\\"shortcode\\\":\\\"text_1c27824\\\",\\\"width\\\":\\\"1_3\\\",\\\"options\\\":{\\\"label\\\":\\\"Name\\\",\\\"required\\\":true,\\\"placeholder\\\":\\\"\\\",\\\"default_value\\\":\\\"\\\",\\\"constraints\\\":{\\\"constraint\\\":\\\"characters\\\",\\\"characters\\\":{\\\"min\\\":\\\"0\\\",\\\"max\\\":\\\"\\\"},\\\"words\\\":{\\\"min\\\":\\\"0\\\",\\\"max\\\":\\\"\\\"}},\\\"info\\\":\\\"\\\"}},{\\\"type\\\":\\\"email\\\",\\\"shortcode\\\":\\\"email_f694bb1\\\",\\\"width\\\":\\\"1_3\\\",\\\"options\\\":{\\\"label\\\":\\\"Email Address\\\",\\\"required\\\":true,\\\"placeholder\\\":\\\"\\\",\\\"info\\\":\\\"\\\"}},{\\\"type\\\":\\\"text\\\",\\\"shortcode\\\":\\\"text_8c76bfd\\\",\\\"width\\\":\\\"1_3\\\",\\\"options\\\":{\\\"label\\\":\\\"Phone Number\\\",\\\"required\\\":true,\\\"placeholder\\\":\\\"\\\",\\\"default_value\\\":\\\"\\\",\\\"constraints\\\":{\\\"constraint\\\":\\\"characters\\\",\\\"characters\\\":{\\\"min\\\":\\\"0\\\",\\\"max\\\":\\\"\\\"},\\\"words\\\":{\\\"min\\\":\\\"0\\\",\\\"max\\\":\\\"\\\"}},\\\"info\\\":\\\"\\\"}},{\\\"type\\\":\\\"textarea\\\",\\\"shortcode\\\":\\\"textarea_ca1bc6a\\\",\\\"width\\\":\\\"1_1\\\",\\\"options\\\":{\\\"label\\\":\\\"Message\\\",\\\"required\\\":false,\\\"placeholder\\\":\\\"\\\",\\\"default_value\\\":\\\"\\\",\\\"constraints\\\":{\\\"constraint\\\":\\\"characters\\\",\\\"characters\\\":{\\\"min\\\":\\\"0\\\",\\\"max\\\":\\\"\\\"},\\\"words\\\":{\\\"min\\\":\\\"0\\\",\\\"max\\\":\\\"\\\"}},\\\"info\\\":\\\"\\\"}}]\"},\"email_to\":\"admin@demolink.org\",\"subject_message\":\"Contact Form\",\"submit_button_text\":\"Sumbit\",\"success_message\":\"Message sent!\",\"failure_message\":\"Oops something went wrong.\",\"mailer\":[]}}],\"width\":\"1_1\"}],\"atts\":{\"is_fullwidth\":false,\"background_color\":\"\",\"background_image\":\"\",\"video\":\"\"}}]'),
(185, 13, 'fw_options', 'a:1:{s:12:\"page-builder\";a:2:{s:4:\"json\";s:2:\"[]\";s:14:\"builder_active\";b:1;}}'),
(210, 82, '_edit_lock', '1577375936:1'),
(211, 83, '_edit_lock', '1577376038:1'),
(214, 82, '_thumbnail_id', '28'),
(215, 85, '_edit_lock', '1577375960:1'),
(216, 86, '_edit_lock', '1577376083:1'),
(219, 85, '_thumbnail_id', '27'),
(220, 88, '_edit_lock', '1577375983:1'),
(221, 89, '_edit_lock', '1577376107:1'),
(224, 88, '_thumbnail_id', '26');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

DROP TABLE IF EXISTS `wp_posts`;
CREATE TABLE IF NOT EXISTS `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(7, 1, '2019-12-23 22:40:40', '2019-12-23 22:40:40', '<section class=\"fw-main-row \">\n	<div class=\"fw-container\">\n		<div class=\"fw-row\">\n	<div class=\"fw-col-xs-12\">\n		\n	<ul class=\"bxslider\">\n					<li>\n									<img src=\"your_website_url_here/wp-content/uploads/2019/12/slide-1-1110x530.jpg\" alt=\"\" width=\"1110\" height=\"530\" />\n							</li>\n					<li>\n									<img src=\"your_website_url_here/wp-content/uploads/2019/12/slide-2-1110x530.jpg\" alt=\"\" width=\"1110\" height=\"530\" />\n							</li>\n					<li>\n									<img src=\"your_website_url_here/wp-content/uploads/2019/12/slide-3-1110x530.jpg\" alt=\"\" width=\"1110\" height=\"530\" />\n							</li>\n			</ul>\n<h2 style=\"text-align: center\"><span style=\"color: #777777\">Welcome to</span></h2><h1 style=\"text-align: center\"><span style=\"color: #333333\">Business Casual</span></h1>	<div class=\"fw-divider-line\"><hr /></div>\n\n<h2 style=\"text-align: center\"><span style=\"color: #777777\">By <strong>Start Bootstrap</strong></span></h2></div>\n</div>\n\n	</div>\n</section>\n<section class=\"fw-main-row \">\n	<div class=\"fw-container\">\n		<div class=\"fw-row\">\n	<div class=\"fw-col-xs-12\">\n		<div class=\"fw-divider-line\"><hr /></div>\n\n<h2 style=\"text-align: center\"><span style=\"color: #333333\">Build a website <strong>worth visiting</strong></span></h2>	<div class=\"fw-divider-line\"><hr /></div>\n\n<p><span style=\"color: #000000\"><img class=\"alignleft size-full wp-image-56\" src=\"your_website_url_here/wp-content/uploads/2019/12/intro-pic.jpg\" alt=\"\" width=\"250\" height=\"150\" />The boxes used in this template are nested inbetween a normal Bootstrap row and the start of your column layout. The boxes will be full-width boxes, so if you want to make them smaller then you will need to customize.</span></p><p><span style=\"color: #000000\">A huge thanks to <a style=\"color: #000000\" href=\"http://join.deathtothestockphoto.com\" target=\"_blank\" rel=\"noopener noreferrer\">Death to the Stock Photo</a> for allowing us to use the beautiful photos that make this template really come to life. When using this template, make sure your photos are decent. Also make sure that the file size on your photos is kept to a minumum to keep load times to a minimum.</span></p><p><span style=\"color: #000000\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc placerat diam quis nisl vestibulum dignissim. In hac habitasse platea dictumst. Interdum et malesuada fames ac ante ipsum primis in faucibus. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.</span></p></div>\n</div>\n\n	</div>\n</section>\n<section class=\"fw-main-row \">\n	<div class=\"fw-container\">\n		<div class=\"fw-row\">\n	<div class=\"fw-col-xs-12\">\n		<div class=\"fw-divider-line\"><hr /></div>\n\n<h2 style=\"text-align: center\"><span style=\"color: #333333\">Beautiful boxes <strong>to showcase your content</strong></span></h2>	<div class=\"fw-divider-line\"><hr /></div>\n\n<p><span style=\"color: #000000\">Use as many boxes as you like, and put anything you want in them! They are great for just about anything, the sky\'s the limit!</span></p><p><span style=\"color: #000000\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc placerat diam quis nisl vestibulum dignissim. In hac habitasse platea dictumst. Interdum et malesuada fames ac ante ipsum primis in faucibus. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.</span></p></div>\n</div>\n\n	</div>\n</section>\n\n\n<!-- 3401d50fab8549809aabe1348a008899 -->', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2019-12-25 23:29:13', '2019-12-25 23:29:13', '', 0, 'your_website_url_here/?page_id=7', 0, 'page', '', 0),
(9, 1, '2019-12-23 22:40:51', '2019-12-23 22:40:51', '', 'Blog', '', 'publish', 'closed', 'closed', '', 'blog', '', '', '2019-12-23 22:40:51', '2019-12-23 22:40:51', '', 0, 'your_website_url_here/?page_id=9', 0, 'page', '', 0),
(11, 1, '2019-12-23 22:41:03', '2019-12-23 22:41:03', '<section class=\"fw-main-row \">\n	<div class=\"fw-container\">\n		<div class=\"fw-row\">\n	<div class=\"fw-col-xs-12\">\n		<div class=\"fw-divider-line\"><hr /></div>\n\n<h2 style=\"text-align: center\">About <strong>business casual</strong></h2>	<div class=\"fw-divider-line\"><hr /></div>\n\n</div>\n</div>\n\n<div class=\"fw-row\">\n	<div class=\"fw-col-xs-12 fw-col-sm-6\">\n	<img src=\"//192.168.0.139/wordpress_themes/businesscasual/wp-content/uploads/2019/12/slide-2.jpg\" alt=\"//192.168.0.139/wordpress_themes/businesscasual/wp-content/uploads/2019/12/slide-2.jpg\" /></div>\n<div class=\"fw-col-xs-12 fw-col-sm-6\">\n	<p>This is a great place to introduce your company or project and describe what you do.</p><p>Lid est laborum dolo rumes fugats untras. Etharums ser quidem rerum facilis dolores nemis omnis fugats vitaes nemo minima rerums unsers sadips amets.</p><p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.</p></div>\n</div>\n\n	</div>\n</section>\n<section class=\"fw-main-row \">\n	<div class=\"fw-container\">\n		<div class=\"fw-row\">\n	<div class=\"fw-col-xs-12\">\n		<div class=\"fw-divider-line\"><hr /></div>\n\n<h2 style=\"text-align: center\">Our <strong>Team</strong></h2>	<div class=\"fw-divider-line\"><hr /></div>\n\n</div>\n</div>\n\n<div class=\"fw-row\">\n	<div class=\"fw-col-xs-12 fw-col-sm-4\">\n	<div class=\"fw-team\">\n	<div class=\"fw-team-image\"><img src=\"//192.168.0.139/wordpress_themes/businesscasual/wp-content/uploads/2019/12/750x450.png\" alt=\"John Smith\" /></div>\n	<div class=\"fw-team-inner\">\n		<div class=\"fw-team-name\">\n			<h3>John Smith</h3>\n			<span>Job Title</span>\n		</div>\n		<div class=\"fw-team-text\">\n			<p></p>\n		</div>\n	</div>\n</div></div>\n<div class=\"fw-col-xs-12 fw-col-sm-4\">\n	<div class=\"fw-team\">\n	<div class=\"fw-team-image\"><img src=\"//192.168.0.139/wordpress_themes/businesscasual/wp-content/uploads/2019/12/750x450.png\" alt=\"John Smith\" /></div>\n	<div class=\"fw-team-inner\">\n		<div class=\"fw-team-name\">\n			<h3>John Smith</h3>\n			<span>Job Title</span>\n		</div>\n		<div class=\"fw-team-text\">\n			<p></p>\n		</div>\n	</div>\n</div></div>\n<div class=\"fw-col-xs-12 fw-col-sm-4\">\n	<div class=\"fw-team\">\n	<div class=\"fw-team-image\"><img src=\"//192.168.0.139/wordpress_themes/businesscasual/wp-content/uploads/2019/12/750x450.png\" alt=\"John Smith\" /></div>\n	<div class=\"fw-team-inner\">\n		<div class=\"fw-team-name\">\n			<h3>John Smith</h3>\n			<span>Job Title</span>\n		</div>\n		<div class=\"fw-team-text\">\n			<p></p>\n		</div>\n	</div>\n</div></div>\n</div>\n\n	</div>\n</section>\n\n\n<!-- 55f0134bca0535116e0edeac1dbd25f3 -->', 'About', '', 'publish', 'closed', 'closed', '', 'about', '', '', '2019-12-25 23:23:34', '2019-12-25 23:23:34', '', 0, 'your_website_url_here/?page_id=11', 0, 'page', '', 0),
(13, 1, '2019-12-23 22:41:12', '2019-12-23 22:41:12', '<section class=\"fw-main-row \">\n	<div class=\"fw-container\">\n		<div class=\"fw-row\">\n	<div class=\"fw-col-xs-12\">\n		<div class=\"fw-divider-line\"><hr /></div>\n\n<h2 style=\"text-align: center\">Contact <strong>business casual</strong></h2>	<div class=\"fw-divider-line\"><hr /></div>\n\n</div>\n</div>\n\n<div class=\"fw-row\">\n	<div class=\"fw-col-xs-12 fw-col-sm-8\">\n	<div class=\"fw-map\" data-locations=\"[{&quot;title&quot;:&quot;3481 Melrose Place Beverly Hills, CA 90210&quot;,&quot;url&quot;:&quot;&quot;,&quot;thumb&quot;:false,&quot;coordinates&quot;:{&quot;lat&quot;:-34,&quot;lng&quot;:150},&quot;description&quot;:&quot;&quot;}]\" data-map-type=\"ROADMAP\" data-map-height=\"400\" data-gmap-key=\"AIzaSyAWf_qyE4J17pJ4j6YcuYghuRzBzP7qY8Y\" data-disable-scrolling=\"\">\n	<div class=\"fw-map-canvas\"></div>\n</div></div>\n<div class=\"fw-col-xs-12 fw-col-sm-4\">\n	<p>Phone: <strong>123.456.7890</strong></p><p>Email: <a href=\"mailto:name@example.com\"><strong>name@example.com</strong></a></p><p>Address: <strong>3481 Melrose Place<br />Beverly Hills, CA 90210</strong></p></div>\n</div>\n\n	</div>\n</section>\n<section class=\"fw-main-row \">\n	<div class=\"fw-container\">\n		<div class=\"fw-row\">\n	<div class=\"fw-col-xs-12\">\n		<div class=\"fw-divider-line\"><hr /></div>\n\n<h2 style=\"text-align: center\">Contact <strong>form</strong></h2>	<div class=\"fw-divider-line\"><hr /></div>\n\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Fugiat, vitae, distinctio, possimus repudiandae cupiditate ipsum excepturi dicta neque eaque voluptates tempora veniam esse earum sapiente optio deleniti consequuntur eos voluptatem.</p><div class=\"form-wrapper fw-contact-form contact-form\">\n	<div class=\"wrap-forms\">\n	<div class=\"fw-row\"></div><div class=\"fw-row\"><div class=\"fw-col-xs-12 fw-col-sm-4 form-builder-item\">\n	<div class=\"field-text\">\n				<label for=\"id-1\">Name			<sup>*</sup>		</label>\n				\n			</div>\n</div><div class=\"fw-col-xs-12 fw-col-sm-4 form-builder-item\">\n	<div class=\"field-text\">\n				<label for=\"id-2\">Email Address			<sup>*</sup>		</label>\n				\n			</div>\n</div><div class=\"fw-col-xs-12 fw-col-sm-4 form-builder-item\">\n	<div class=\"field-text\">\n				<label for=\"id-3\">Phone Number			<sup>*</sup>		</label>\n				\n			</div>\n</div></div><div class=\"fw-row\"><div class=\"fw-col-xs-12 form-builder-item\">\n	<div class=\"field-textarea\">\n				<label for=\"id-4\">Message					</label>\n				<textarea name=\"textarea_ca1bc6a\" id=\"id-4\"></textarea>\n			</div>\n</div></div><div class=\"fw-row\"></div></div><div>\n	\n</div></div></div>\n</div>\n\n	</div>\n</section>\n\n\n<!-- c514a6665d396a021198b32887118068 -->', 'Contact', '', 'publish', 'closed', 'closed', '', 'contact', '', '', '2019-12-26 15:40:11', '2019-12-26 15:40:11', '', 0, 'your_website_url_here/?page_id=13', 0, 'page', '', 0),
(15, 1, '2019-12-23 22:41:22', '0000-00-00 00:00:00', '', 'Home', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-12-23 22:41:22', '0000-00-00 00:00:00', '', 0, 'your_website_url_here/?p=15', 1, 'nav_menu_item', '', 0),
(16, 1, '2019-12-23 22:41:46', '2019-12-23 22:41:46', ' ', '', '', 'publish', 'closed', 'closed', '', '16', '', '', '2019-12-23 23:04:10', '2019-12-23 23:04:10', '', 0, 'your_website_url_here/?p=16', 2, 'nav_menu_item', '', 0),
(17, 1, '2019-12-23 22:41:46', '2019-12-23 22:41:46', ' ', '', '', 'publish', 'closed', 'closed', '', '17', '', '', '2019-12-23 23:04:10', '2019-12-23 23:04:10', '', 0, 'your_website_url_here/?p=17', 3, 'nav_menu_item', '', 0),
(18, 1, '2019-12-23 22:41:46', '2019-12-23 22:41:46', ' ', '', '', 'publish', 'closed', 'closed', '', '18', '', '', '2019-12-23 23:04:10', '2019-12-23 23:04:10', '', 0, 'your_website_url_here/?p=18', 4, 'nav_menu_item', '', 0),
(19, 1, '2019-12-23 22:41:46', '2019-12-23 22:41:46', ' ', '', '', 'publish', 'closed', 'closed', '', '19', '', '', '2019-12-23 23:04:10', '2019-12-23 23:04:10', '', 0, 'your_website_url_here/?p=19', 1, 'nav_menu_item', '', 0),
(26, 1, '2019-12-24 20:14:15', '2019-12-24 20:14:15', '', 'slide-1', '', 'inherit', 'open', 'closed', '', 'slide-1', '', '', '2019-12-24 20:14:15', '2019-12-24 20:14:15', '', 0, 'your_website_url_here/wp-content/uploads/2019/12/slide-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(27, 1, '2019-12-24 20:14:15', '2019-12-24 20:14:15', '', 'slide-2', '', 'inherit', 'open', 'closed', '', 'slide-2', '', '', '2019-12-24 20:14:15', '2019-12-24 20:14:15', '', 0, 'your_website_url_here/wp-content/uploads/2019/12/slide-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(28, 1, '2019-12-24 20:14:16', '2019-12-24 20:14:16', '', 'slide-3', '', 'inherit', 'open', 'closed', '', 'slide-3', '', '', '2019-12-24 20:14:16', '2019-12-24 20:14:16', '', 0, 'your_website_url_here/wp-content/uploads/2019/12/slide-3.jpg', 0, 'attachment', 'image/jpeg', 0),
(39, 1, '2019-12-24 21:18:04', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-12-24 21:18:04', '0000-00-00 00:00:00', '', 0, 'your_website_url_here/?p=39', 0, 'post', '', 0),
(46, 1, '2019-12-24 21:21:32', '2019-12-24 21:21:32', '', 'Slider-Front-Page', '', 'publish', 'closed', 'closed', '', 'auto-draft-2', '', '', '2019-12-25 16:15:55', '2019-12-25 16:15:55', '', 0, 'your_website_url_here/?post_type=fw-slider&#038;p=46', 0, 'fw-slider', '', 0),
(56, 1, '2019-12-25 00:11:20', '2019-12-25 00:11:20', '', 'intro-pic', '', 'inherit', 'open', 'closed', '', 'intro-pic', '', '', '2019-12-25 00:11:20', '2019-12-25 00:11:20', '', 7, 'your_website_url_here/wp-content/uploads/2019/12/intro-pic.jpg', 0, 'attachment', 'image/jpeg', 0),
(68, 1, '2019-12-25 22:27:38', '2019-12-25 22:27:38', '', '750x450', '', 'inherit', 'open', 'closed', '', '750x450', '', '', '2019-12-25 22:27:38', '2019-12-25 22:27:38', '', 11, 'your_website_url_here/wp-content/uploads/2019/12/750x450.png', 0, 'attachment', 'image/png', 0),
(82, 1, '2019-12-26 16:01:19', '2019-12-26 16:01:19', '<!-- wp:paragraph -->\n<p>Lid est laborum dolo rumes fugats untras. Etharums ser quidem rerum facilis dolores nemis omnis fugats vitaes nemo minima rerums unsers sadips amets. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.</p>\n<!-- /wp:paragraph -->', 'Post Title', '', 'publish', 'open', 'open', '', 'post-title', '', '', '2019-12-26 16:01:19', '2019-12-26 16:01:19', '', 0, 'your_website_url_here/?p=82', 0, 'post', '', 0),
(83, 1, '2019-12-26 16:00:38', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-12-26 16:00:38', '0000-00-00 00:00:00', '', 0, 'your_website_url_here/?p=83', 0, 'post', '', 0),
(85, 1, '2019-12-26 16:01:43', '2019-12-26 16:01:43', '<!-- wp:paragraph -->\n<p>Lid est laborum dolo rumes fugats untras. Etharums ser quidem rerum facilis dolores nemis omnis fugats vitaes nemo minima rerums unsers sadips amets. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.</p>\n<!-- /wp:paragraph -->', 'Post Title', '', 'publish', 'open', 'open', '', 'post-title-2', '', '', '2019-12-26 16:01:43', '2019-12-26 16:01:43', '', 0, 'your_website_url_here/?p=85', 0, 'post', '', 0),
(86, 1, '2019-12-26 16:01:23', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-12-26 16:01:23', '0000-00-00 00:00:00', '', 0, 'your_website_url_here/?p=86', 0, 'post', '', 0),
(88, 1, '2019-12-26 16:02:04', '2019-12-26 16:02:04', '<!-- wp:paragraph -->\n<p>Lid est laborum dolo rumes fugats untras. Etharums ser quidem rerum facilis dolores nemis omnis fugats vitaes nemo minima rerums unsers sadips amets. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.</p>\n<!-- /wp:paragraph -->', 'Post Title', '', 'publish', 'open', 'open', '', 'post-title-3', '', '', '2019-12-26 16:02:04', '2019-12-26 16:02:04', '', 0, 'your_website_url_here/?p=88', 0, 'post', '', 0),
(89, 1, '2019-12-26 16:01:47', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-12-26 16:01:47', '0000-00-00 00:00:00', '', 0, 'your_website_url_here/?p=89', 0, 'post', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

DROP TABLE IF EXISTS `wp_termmeta`;
CREATE TABLE IF NOT EXISTS `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

DROP TABLE IF EXISTS `wp_terms`;
CREATE TABLE IF NOT EXISTS `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'main-menu', 'main-menu', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

DROP TABLE IF EXISTS `wp_term_relationships`;
CREATE TABLE IF NOT EXISTS `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(16, 2, 0),
(17, 2, 0),
(18, 2, 0),
(19, 2, 0),
(82, 1, 0),
(85, 1, 0),
(88, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

DROP TABLE IF EXISTS `wp_term_taxonomy`;
CREATE TABLE IF NOT EXISTS `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 3),
(2, 2, 'nav_menu', '', 0, 4);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
