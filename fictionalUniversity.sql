-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 15, 2018 at 12:24 PM
-- Server version: 5.6.38
-- PHP Version: 7.2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fictionalUniversity`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
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
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2018-02-08 13:20:37', '2018-02-08 13:20:37', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.', 0, '1', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
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
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://fictionaluniversity.site/', 'yes'),
(2, 'home', 'http://fictionaluniversity.site/', 'yes'),
(3, 'blogname', 'Fictional University', 'yes'),
(4, 'blogdescription', 'Just another WordPress site', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'locaulker@gmail.com', 'yes'),
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
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:91:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:39:\"index.php?&page_id=44&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:0:{}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'fictionalUniversity', 'yes'),
(41, 'stylesheet', 'fictionalUniversity', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '38590', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
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
(79, 'widget_text', 'a:0:{}', 'yes'),
(80, 'widget_rss', 'a:0:{}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '46', 'yes'),
(84, 'page_on_front', '44', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'initial_db_version', '38590', 'yes'),
(92, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(93, 'fresh_site', '0', 'yes'),
(94, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(95, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(96, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(97, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'sidebars_widgets', 'a:2:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:13:\"array_version\";i:3;}', 'yes'),
(100, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'cron', 'a:4:{i:1523841638;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1523889893;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1523891576;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes'),
(110, 'theme_mods_twentyseventeen', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1523545663;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}}}}', 'yes'),
(124, 'auto_core_update_notified', 'a:4:{s:4:\"type\";s:7:\"success\";s:5:\"email\";s:19:\"locaulker@gmail.com\";s:7:\"version\";s:5:\"4.9.5\";s:9:\"timestamp\";i:1523544283;}', 'no'),
(125, '_site_transient_timeout_browser_cffcb8140921e0d14b31935178051df3', '1524149093', 'no'),
(126, '_site_transient_browser_cffcb8140921e0d14b31935178051df3', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"65.0.3325.181\";s:8:\"platform\";s:9:\"Macintosh\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(130, 'can_compress_scripts', '1', 'no'),
(144, 'recently_activated', 'a:0:{}', 'yes'),
(148, 'WPLANG', '', 'yes'),
(149, 'new_admin_email', 'locaulker@gmail.com', 'yes'),
(152, 'current_theme', 'Fictional University', 'yes'),
(153, 'theme_mods_fictionalUniversity', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:3:{s:18:\"headerMenuLocation\";i:3;s:17:\"footerLocationOne\";i:4;s:17:\"footerLocationTwo\";i:5;}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(154, 'theme_switched', '', 'yes'),
(159, '_site_transient_timeout_browser_41ae052b7cb95d34944d8bb4821ad6cc', '1524225350', 'no'),
(160, '_site_transient_browser_41ae052b7cb95d34944d8bb4821ad6cc', 'a:10:{s:4:\"name\";s:7:\"Firefox\";s:7:\"version\";s:4:\"59.0\";s:8:\"platform\";s:9:\"Macintosh\";s:10:\"update_url\";s:24:\"https://www.firefox.com/\";s:7:\"img_src\";s:44:\"http://s.w.org/images/browsers/firefox.png?1\";s:11:\"img_src_ssl\";s:45:\"https://s.w.org/images/browsers/firefox.png?1\";s:15:\"current_version\";s:2:\"56\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(194, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(203, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1523808604;s:7:\"checked\";a:4:{s:19:\"fictionalUniversity\";s:3:\"1.0\";s:13:\"twentyfifteen\";s:3:\"1.9\";s:15:\"twentyseventeen\";s:3:\"1.5\";s:13:\"twentysixteen\";s:3:\"1.4\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(204, '_site_transient_update_plugins', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1523798493;s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:0:{}}', 'no'),
(221, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-4.9.5.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-4.9.5.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-4.9.5-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-4.9.5-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"4.9.5\";s:7:\"version\";s:5:\"4.9.5\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"4.7\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1523798493;s:15:\"version_checked\";s:5:\"4.9.5\";s:12:\"translations\";a:0:{}}', 'no'),
(237, '_transient_timeout_plugin_slugs', '1523867234', 'no'),
(238, '_transient_plugin_slugs', 'a:0:{}', 'no'),
(243, 'category_children', 'a:0:{}', 'yes'),
(252, '_site_transient_timeout_theme_roots', '1523810402', 'no'),
(253, '_site_transient_theme_roots', 'a:4:{s:19:\"fictionalUniversity\";s:7:\"/themes\";s:13:\"twentyfifteen\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:13:\"twentysixteen\";s:7:\"/themes\";}', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 4, '_edit_last', '1'),
(3, 4, '_edit_lock', '1523783533:1'),
(6, 6, '_edit_last', '1'),
(7, 6, '_edit_lock', '1523545935:1'),
(10, 8, '_edit_last', '1'),
(11, 8, '_edit_lock', '1523622779:1'),
(12, 10, '_edit_last', '1'),
(13, 10, '_edit_lock', '1523622938:1'),
(14, 12, '_edit_last', '1'),
(15, 12, '_edit_lock', '1523648261:1'),
(16, 15, '_edit_last', '1'),
(17, 15, '_edit_lock', '1523636848:1'),
(18, 17, '_edit_last', '1'),
(19, 17, '_edit_lock', '1523643642:1'),
(20, 19, '_edit_last', '1'),
(21, 19, '_edit_lock', '1523636684:1'),
(103, 30, '_menu_item_type', 'custom'),
(104, 30, '_menu_item_menu_item_parent', '0'),
(105, 30, '_menu_item_object_id', '30'),
(106, 30, '_menu_item_object', 'custom'),
(107, 30, '_menu_item_target', ''),
(108, 30, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(109, 30, '_menu_item_xfn', ''),
(110, 30, '_menu_item_url', 'http://fictionaluniversity.site/'),
(111, 30, '_menu_item_orphaned', '1523646305'),
(112, 31, '_menu_item_type', 'post_type'),
(113, 31, '_menu_item_menu_item_parent', '0'),
(114, 31, '_menu_item_object_id', '10'),
(115, 31, '_menu_item_object', 'page'),
(116, 31, '_menu_item_target', ''),
(117, 31, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(118, 31, '_menu_item_xfn', ''),
(119, 31, '_menu_item_url', ''),
(120, 31, '_menu_item_orphaned', '1523646305'),
(121, 32, '_menu_item_type', 'post_type'),
(122, 32, '_menu_item_menu_item_parent', '0'),
(123, 32, '_menu_item_object_id', '15'),
(124, 32, '_menu_item_object', 'page'),
(125, 32, '_menu_item_target', ''),
(126, 32, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(127, 32, '_menu_item_xfn', ''),
(128, 32, '_menu_item_url', ''),
(129, 32, '_menu_item_orphaned', '1523646305'),
(130, 33, '_menu_item_type', 'post_type'),
(131, 33, '_menu_item_menu_item_parent', '0'),
(132, 33, '_menu_item_object_id', '17'),
(133, 33, '_menu_item_object', 'page'),
(134, 33, '_menu_item_target', ''),
(135, 33, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(136, 33, '_menu_item_xfn', ''),
(137, 33, '_menu_item_url', ''),
(138, 33, '_menu_item_orphaned', '1523646305'),
(139, 34, '_menu_item_type', 'post_type'),
(140, 34, '_menu_item_menu_item_parent', '0'),
(141, 34, '_menu_item_object_id', '12'),
(142, 34, '_menu_item_object', 'page'),
(143, 34, '_menu_item_target', ''),
(144, 34, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(145, 34, '_menu_item_xfn', ''),
(146, 34, '_menu_item_url', ''),
(147, 34, '_menu_item_orphaned', '1523646305'),
(148, 35, '_menu_item_type', 'post_type'),
(149, 35, '_menu_item_menu_item_parent', '0'),
(150, 35, '_menu_item_object_id', '19'),
(151, 35, '_menu_item_object', 'page'),
(152, 35, '_menu_item_target', ''),
(153, 35, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(154, 35, '_menu_item_xfn', ''),
(155, 35, '_menu_item_url', ''),
(156, 35, '_menu_item_orphaned', '1523646305'),
(157, 36, '_menu_item_type', 'post_type'),
(158, 36, '_menu_item_menu_item_parent', '0'),
(159, 36, '_menu_item_object_id', '2'),
(160, 36, '_menu_item_object', 'page'),
(161, 36, '_menu_item_target', ''),
(162, 36, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(163, 36, '_menu_item_xfn', ''),
(164, 36, '_menu_item_url', ''),
(165, 36, '_menu_item_orphaned', '1523646305'),
(166, 37, '_menu_item_type', 'post_type'),
(167, 37, '_menu_item_menu_item_parent', '0'),
(168, 37, '_menu_item_object_id', '8'),
(169, 37, '_menu_item_object', 'page'),
(170, 37, '_menu_item_target', ''),
(171, 37, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(172, 37, '_menu_item_xfn', ''),
(173, 37, '_menu_item_url', ''),
(174, 37, '_menu_item_orphaned', '1523646305'),
(175, 38, '_menu_item_type', 'post_type'),
(176, 38, '_menu_item_menu_item_parent', '0'),
(177, 38, '_menu_item_object_id', '10'),
(178, 38, '_menu_item_object', 'page'),
(179, 38, '_menu_item_target', ''),
(180, 38, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(181, 38, '_menu_item_xfn', ''),
(182, 38, '_menu_item_url', ''),
(184, 39, '_menu_item_type', 'post_type'),
(185, 39, '_menu_item_menu_item_parent', '0'),
(186, 39, '_menu_item_object_id', '12'),
(187, 39, '_menu_item_object', 'page'),
(188, 39, '_menu_item_target', ''),
(189, 39, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(190, 39, '_menu_item_xfn', ''),
(191, 39, '_menu_item_url', ''),
(193, 40, '_menu_item_type', 'post_type'),
(194, 40, '_menu_item_menu_item_parent', '0'),
(195, 40, '_menu_item_object_id', '2'),
(196, 40, '_menu_item_object', 'page'),
(197, 40, '_menu_item_target', ''),
(198, 40, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(199, 40, '_menu_item_xfn', ''),
(200, 40, '_menu_item_url', ''),
(202, 41, '_menu_item_type', 'post_type'),
(203, 41, '_menu_item_menu_item_parent', '0'),
(204, 41, '_menu_item_object_id', '19'),
(205, 41, '_menu_item_object', 'page'),
(206, 41, '_menu_item_target', ''),
(207, 41, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(208, 41, '_menu_item_xfn', ''),
(209, 41, '_menu_item_url', ''),
(211, 42, '_menu_item_type', 'post_type'),
(212, 42, '_menu_item_menu_item_parent', '0'),
(213, 42, '_menu_item_object_id', '10'),
(214, 42, '_menu_item_object', 'page'),
(215, 42, '_menu_item_target', ''),
(216, 42, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(217, 42, '_menu_item_xfn', ''),
(218, 42, '_menu_item_url', ''),
(220, 43, '_menu_item_type', 'custom'),
(221, 43, '_menu_item_menu_item_parent', '0'),
(222, 43, '_menu_item_object_id', '43'),
(223, 43, '_menu_item_object', 'custom'),
(224, 43, '_menu_item_target', ''),
(225, 43, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(226, 43, '_menu_item_xfn', ''),
(227, 43, '_menu_item_url', 'http://google.com'),
(228, 44, '_edit_last', '1'),
(229, 44, '_edit_lock', '1523679501:1'),
(230, 46, '_edit_last', '1'),
(231, 46, '_edit_lock', '1523679526:1'),
(232, 48, '_edit_last', '1'),
(233, 48, '_edit_lock', '1523783459:1');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
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
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2018-02-08 13:20:37', '2018-02-08 13:20:37', 'Welcome to WordPress. This is your first post. Edit or delete it, then start writing!', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2018-02-08 13:20:37', '2018-02-08 13:20:37', '', 0, 'http://fictionaluniversity.site/?p=1', 0, 'post', '', 1),
(2, 1, '2018-02-08 13:20:37', '2018-02-08 13:20:37', 'This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n\n<blockquote>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</blockquote>\n\n...or something like this:\n\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\n\nAs a new WordPress user, you should go to <a href=\"http://fictionaluniversity.site/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Sample Page', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2018-02-08 13:20:37', '2018-02-08 13:20:37', '', 0, 'http://fictionaluniversity.site/?page_id=2', 0, 'page', '', 0),
(3, 1, '2018-04-12 14:44:53', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-04-12 14:44:53', '0000-00-00 00:00:00', '', 0, 'http://fictionaluniversity.site/?p=3', 0, 'post', '', 0),
(4, 1, '2018-04-12 15:13:37', '2018-04-12 15:13:37', 'Today the design was beyond system design the practician, having become specific way of designing of reality, at least, to that its part which can be designated as the ordinary and daily occurrence.', 'Test Post', '', 'publish', 'open', 'open', '', 'test-post', '', '', '2018-04-15 09:12:13', '2018-04-15 09:12:13', '', 0, 'http://fictionaluniversity.site/?p=4', 0, 'post', '', 0),
(5, 1, '2018-04-12 15:13:37', '2018-04-12 15:13:37', 'Today the design was beyond system design the practician, having become specific way of designing of reality, at least, to that its part which can be designated as the ordinary and daily occurrence.', 'Test Post', '', 'inherit', 'closed', 'closed', '', '4-revision-v1', '', '', '2018-04-12 15:13:37', '2018-04-12 15:13:37', '', 4, 'http://fictionaluniversity.site/2018/04/12/4-revision-v1/', 0, 'revision', '', 0),
(6, 1, '2018-04-12 15:14:21', '2018-04-12 15:14:21', 'Astronomy is a science that studies the structure and evolution of the universe, as well as the motion of all cosmic and celestial bodies, their origin, development and interconnection.', 'Second Test Post', '', 'publish', 'open', 'open', '', 'second-test-post', '', '', '2018-04-12 15:14:21', '2018-04-12 15:14:21', '', 0, 'http://fictionaluniversity.site/?p=6', 0, 'post', '', 0),
(7, 1, '2018-04-12 15:14:21', '2018-04-12 15:14:21', 'Astronomy is a science that studies the structure and evolution of the universe, as well as the motion of all cosmic and celestial bodies, their origin, development and interconnection.', 'Second Test Post', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2018-04-12 15:14:21', '2018-04-12 15:14:21', '', 6, 'http://fictionaluniversity.site/2018/04/12/6-revision-v1/', 0, 'revision', '', 0),
(8, 1, '2018-04-12 15:58:09', '2018-04-12 15:58:09', 'In today\'s world with a host of unfavorable factors, many women face the problem of poor hair growth.\r\nThe ecological situation, drying hair with a hair dryer, stress, some diseases, as well as malnutrition lead to negative consequences. Of course, today there are many ready-made preparations for strengthening and hair growth, however they are either quite expensive or not effective.', 'Test Page 123', '', 'publish', 'closed', 'closed', '', 'test-page-123', '', '', '2018-04-12 15:58:09', '2018-04-12 15:58:09', '', 0, 'http://fictionaluniversity.site/?page_id=8', 0, 'page', '', 0),
(9, 1, '2018-04-12 15:58:09', '2018-04-12 15:58:09', 'In today\'s world with a host of unfavorable factors, many women face the problem of poor hair growth.\r\nThe ecological situation, drying hair with a hair dryer, stress, some diseases, as well as malnutrition lead to negative consequences. Of course, today there are many ready-made preparations for strengthening and hair growth, however they are either quite expensive or not effective.', 'Test Page 123', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2018-04-12 15:58:09', '2018-04-12 15:58:09', '', 8, 'http://fictionaluniversity.site/2018/04/12/8-revision-v1/', 0, 'revision', '', 0),
(10, 1, '2018-04-13 12:36:39', '2018-04-13 12:36:39', 'This is the About Us Page content.\r\n\r\nAffiliation of legal entities in corporate disputes\r\nThe affiliate can use the influence for receiving complete control over the enterprise, purchase or sales of goods and services on conditions, profitable to itself, purposes of loyal management, bankruptcy of the legal person, issue or receiving the credits on non-standard conditions.\r\nIf shareholders consider action of the connected person unfriendly, they have the right to dispute transactions or decisions judicially. The court meets requirements of claimants if affiliation of the legal entity is confirmed.', 'About Us', '', 'publish', 'closed', 'closed', '', 'about-us', '', '', '2018-04-13 12:36:39', '2018-04-13 12:36:39', '', 0, 'http://fictionaluniversity.site/?page_id=10', 0, 'page', '', 0),
(11, 1, '2018-04-13 12:36:39', '2018-04-13 12:36:39', 'This is the About Us Page content.\r\n\r\nAffiliation of legal entities in corporate disputes\r\nThe affiliate can use the influence for receiving complete control over the enterprise, purchase or sales of goods and services on conditions, profitable to itself, purposes of loyal management, bankruptcy of the legal person, issue or receiving the credits on non-standard conditions.\r\nIf shareholders consider action of the connected person unfriendly, they have the right to dispute transactions or decisions judicially. The court meets requirements of claimants if affiliation of the legal entity is confirmed.', 'About Us', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2018-04-13 12:36:39', '2018-04-13 12:36:39', '', 10, 'http://fictionaluniversity.site/2018/04/13/10-revision-v1/', 0, 'revision', '', 0),
(12, 1, '2018-04-13 12:38:51', '2018-04-13 12:38:51', 'This is the Privacy Policy Content.\r\n\r\nBursitis - an inflammation of the mucous bags periarticular. Bursitis most often occurs in the elbow or shoulder joints, sometimes at the knees. Its symptoms are clearly limited tumor, elastic to the touch and quite painful, as well as redness and fever swollen places.\r\n\r\nThis disease usually occurs in a person who wants to hit someone, but the pent-up anger. Most often it is the person who strives for perfection in everything, even in small things.', 'Privacy Policy', '', 'publish', 'closed', 'closed', '', 'privacy-policy', '', '', '2018-04-13 12:53:44', '2018-04-13 12:53:44', '', 0, 'http://fictionaluniversity.site/?page_id=12', 0, 'page', '', 0),
(13, 1, '2018-04-13 12:38:51', '2018-04-13 12:38:51', 'This is the Privacy Policy Page.\r\n\r\nBursitis - an inflammation of the mucous bags periarticular. Bursitis most often occurs in the elbow or shoulder joints, sometimes at the knees. Its symptoms are clearly limited tumor, elastic to the touch and quite painful, as well as redness and fever swollen places.\r\n\r\nThis disease usually occurs in a person who wants to hit someone, but the pent-up anger. Most often it is the person who strives for perfection in everything, even in small things.', 'Privacy Policy', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2018-04-13 12:38:51', '2018-04-13 12:38:51', '', 12, 'http://fictionaluniversity.site/2018/04/13/12-revision-v1/', 0, 'revision', '', 0),
(14, 1, '2018-04-13 12:53:44', '2018-04-13 12:53:44', 'This is the Privacy Policy Content.\r\n\r\nBursitis - an inflammation of the mucous bags periarticular. Bursitis most often occurs in the elbow or shoulder joints, sometimes at the knees. Its symptoms are clearly limited tumor, elastic to the touch and quite painful, as well as redness and fever swollen places.\r\n\r\nThis disease usually occurs in a person who wants to hit someone, but the pent-up anger. Most often it is the person who strives for perfection in everything, even in small things.', 'Privacy Policy', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2018-04-13 12:53:44', '2018-04-13 12:53:44', '', 12, 'http://fictionaluniversity.site/2018/04/13/12-revision-v1/', 0, 'revision', '', 0),
(15, 1, '2018-04-13 13:33:28', '2018-04-13 13:33:28', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer nec odio. Praesent libero. Sed cursus ante dapibus diam. Sed nisi. Nulla quis sem at nibh elementum imperdiet. Duis sagittis ipsum. Praesent mauris. Fusce nec tellus sed augue semper porta. Mauris massa. Vestibulum lacinia arcu eget nulla. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur sodales ligula in libero. Sed dignissim lacinia nunc.\r\n\r\nCurabitur tortor. Pellentesque nibh. Aenean quam. In scelerisque sem at dolor. Maecenas mattis. Sed convallis tristique sem. Proin ut ligula vel nunc egestas porttitor. Morbi lectus risus, iaculis vel, suscipit quis, luctus non, massa. Fusce ac turpis quis ligula lacinia aliquet.', 'Our History', '', 'publish', 'closed', 'closed', '', 'our-history', '', '', '2018-04-13 16:29:45', '2018-04-13 16:29:45', '', 10, 'http://fictionaluniversity.site/?page_id=15', 1, 'page', '', 0),
(16, 1, '2018-04-13 13:33:28', '2018-04-13 13:33:28', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer nec odio. Praesent libero. Sed cursus ante dapibus diam. Sed nisi. Nulla quis sem at nibh elementum imperdiet. Duis sagittis ipsum. Praesent mauris. Fusce nec tellus sed augue semper porta. Mauris massa. Vestibulum lacinia arcu eget nulla. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur sodales ligula in libero. Sed dignissim lacinia nunc.\r\n\r\nCurabitur tortor. Pellentesque nibh. Aenean quam. In scelerisque sem at dolor. Maecenas mattis. Sed convallis tristique sem. Proin ut ligula vel nunc egestas porttitor. Morbi lectus risus, iaculis vel, suscipit quis, luctus non, massa. Fusce ac turpis quis ligula lacinia aliquet.', 'Our History', '', 'inherit', 'closed', 'closed', '', '15-revision-v1', '', '', '2018-04-13 13:33:28', '2018-04-13 13:33:28', '', 15, 'http://fictionaluniversity.site/2018/04/13/15-revision-v1/', 0, 'revision', '', 0),
(17, 1, '2018-04-13 13:35:00', '2018-04-13 13:35:00', 'Complex treatment consists of massage and therapeutic gymnastics. Thus, blood circulation improves and the inflammatory processes of the superficial layer of bone tissue decrease. Physiotherapy is also used. Great success is enjoyed by electrophoresis, laser therapy, ultrasound, magnetotherapy, UFO. Throughout the therapeutic course, you should spare the heels, do not load them, use orthopedic insoles, which allow you to distribute the load on the entire foot evenly.\r\n\r\nIn exceptional cases, shock wave therapy is used. But this method has contraindications for use. For people suffering from blood clotting disorders, malignant formations, another treatment should be chosen. Pregnant women also use shockwave therapy.\r\n\r\nThey stop the pain syndrome with the help of intensive medicinal blockades.', 'Our Goals', '', 'publish', 'closed', 'closed', '', 'our-goals', '', '', '2018-04-13 16:30:07', '2018-04-13 16:30:07', '', 10, 'http://fictionaluniversity.site/?page_id=17', 2, 'page', '', 0),
(18, 1, '2018-04-13 13:35:00', '2018-04-13 13:35:00', 'Complex treatment consists of massage and therapeutic gymnastics. Thus, blood circulation improves and the inflammatory processes of the superficial layer of bone tissue decrease. Physiotherapy is also used. Great success is enjoyed by electrophoresis, laser therapy, ultrasound, magnetotherapy, UFO. Throughout the therapeutic course, you should spare the heels, do not load them, use orthopedic insoles, which allow you to distribute the load on the entire foot evenly.\r\n\r\nIn exceptional cases, shock wave therapy is used. But this method has contraindications for use. For people suffering from blood clotting disorders, malignant formations, another treatment should be chosen. Pregnant women also use shockwave therapy.\r\n\r\nThey stop the pain syndrome with the help of intensive medicinal blockades.', 'Our Goals', '', 'inherit', 'closed', 'closed', '', '17-revision-v1', '', '', '2018-04-13 13:35:00', '2018-04-13 13:35:00', '', 17, 'http://fictionaluniversity.site/2018/04/13/17-revision-v1/', 0, 'revision', '', 0),
(19, 1, '2018-04-13 14:46:37', '2018-04-13 14:46:37', 'Within the framework of this article, we will refer to the emotional and psychological state of the employee as motivation, which, when setting the task, allows us to get more energy from it than invested in bringing it to him.\r\n\r\nThis definition and ensures the life of the running processes, not letting them fade away. In a sense, this definition is equivalent to determining the engagement of users providing viral marketing of the product. And this is not surprising. User engagement is based on the same cognitive mechanisms as employee motivation, and the marketing company is similar to collective project creativity.\r\n\r\nThis definition also shows why, in the absence of motivation (or at low rates), the project needs a periodic injection of energy in the form of kicks and so loved by all employees questions \"well, how is the task?\". If you are riding a bicycle, then you need to pedal all the time. By car, you can press the pedal once, and she will take you by herself. Motivation, by the way, etymologically also goes back to the Latin verb moveo, meaning to \"move\" (compare with the English move).', 'Cookie Policy', '', 'publish', 'closed', 'closed', '', 'cookie-policy', '', '', '2018-04-13 14:46:37', '2018-04-13 14:46:37', '', 12, 'http://fictionaluniversity.site/?page_id=19', 0, 'page', '', 0),
(20, 1, '2018-04-13 14:46:37', '2018-04-13 14:46:37', 'Within the framework of this article, we will refer to the emotional and psychological state of the employee as motivation, which, when setting the task, allows us to get more energy from it than invested in bringing it to him.\r\n\r\nThis definition and ensures the life of the running processes, not letting them fade away. In a sense, this definition is equivalent to determining the engagement of users providing viral marketing of the product. And this is not surprising. User engagement is based on the same cognitive mechanisms as employee motivation, and the marketing company is similar to collective project creativity.\r\n\r\nThis definition also shows why, in the absence of motivation (or at low rates), the project needs a periodic injection of energy in the form of kicks and so loved by all employees questions \"well, how is the task?\". If you are riding a bicycle, then you need to pedal all the time. By car, you can press the pedal once, and she will take you by herself. Motivation, by the way, etymologically also goes back to the Latin verb moveo, meaning to \"move\" (compare with the English move).', 'Cookie Policy', '', 'inherit', 'closed', 'closed', '', '19-revision-v1', '', '', '2018-04-13 14:46:37', '2018-04-13 14:46:37', '', 19, 'http://fictionaluniversity.site/2018/04/13/19-revision-v1/', 0, 'revision', '', 0),
(30, 1, '2018-04-13 19:05:05', '0000-00-00 00:00:00', '', 'Home', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-04-13 19:05:05', '0000-00-00 00:00:00', '', 0, 'http://fictionaluniversity.site/?p=30', 1, 'nav_menu_item', '', 0),
(31, 1, '2018-04-13 19:05:05', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-04-13 19:05:05', '0000-00-00 00:00:00', '', 0, 'http://fictionaluniversity.site/?p=31', 1, 'nav_menu_item', '', 0),
(32, 1, '2018-04-13 19:05:05', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-04-13 19:05:05', '0000-00-00 00:00:00', '', 10, 'http://fictionaluniversity.site/?p=32', 1, 'nav_menu_item', '', 0),
(33, 1, '2018-04-13 19:05:05', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-04-13 19:05:05', '0000-00-00 00:00:00', '', 10, 'http://fictionaluniversity.site/?p=33', 1, 'nav_menu_item', '', 0),
(34, 1, '2018-04-13 19:05:05', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-04-13 19:05:05', '0000-00-00 00:00:00', '', 0, 'http://fictionaluniversity.site/?p=34', 1, 'nav_menu_item', '', 0),
(35, 1, '2018-04-13 19:05:05', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-04-13 19:05:05', '0000-00-00 00:00:00', '', 12, 'http://fictionaluniversity.site/?p=35', 1, 'nav_menu_item', '', 0),
(36, 1, '2018-04-13 19:05:05', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-04-13 19:05:05', '0000-00-00 00:00:00', '', 0, 'http://fictionaluniversity.site/?p=36', 1, 'nav_menu_item', '', 0),
(37, 1, '2018-04-13 19:05:05', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-04-13 19:05:05', '0000-00-00 00:00:00', '', 0, 'http://fictionaluniversity.site/?p=37', 1, 'nav_menu_item', '', 0),
(38, 1, '2018-04-13 19:06:17', '2018-04-13 19:06:17', ' ', '', '', 'publish', 'closed', 'closed', '', '38', '', '', '2018-04-13 19:50:25', '2018-04-13 19:50:25', '', 0, 'http://fictionaluniversity.site/?p=38', 1, 'nav_menu_item', '', 0),
(39, 1, '2018-04-13 19:06:17', '2018-04-13 19:06:17', ' ', '', '', 'publish', 'closed', 'closed', '', '39', '', '', '2018-04-13 19:50:25', '2018-04-13 19:50:25', '', 0, 'http://fictionaluniversity.site/?p=39', 2, 'nav_menu_item', '', 0),
(40, 1, '2018-04-13 19:43:42', '2018-04-13 19:43:42', ' ', '', '', 'publish', 'closed', 'closed', '', '40', '', '', '2018-04-13 19:43:42', '2018-04-13 19:43:42', '', 0, 'http://fictionaluniversity.site/?p=40', 1, 'nav_menu_item', '', 0),
(41, 1, '2018-04-13 19:43:42', '2018-04-13 19:43:42', ' ', '', '', 'publish', 'closed', 'closed', '', '41', '', '', '2018-04-13 19:43:42', '2018-04-13 19:43:42', '', 12, 'http://fictionaluniversity.site/?p=41', 2, 'nav_menu_item', '', 0),
(42, 1, '2018-04-13 19:45:38', '2018-04-13 19:45:38', ' ', '', '', 'publish', 'closed', 'closed', '', '42', '', '', '2018-04-13 19:45:38', '2018-04-13 19:45:38', '', 0, 'http://fictionaluniversity.site/?p=42', 1, 'nav_menu_item', '', 0),
(43, 1, '2018-04-13 19:45:38', '2018-04-13 19:45:38', '', 'Google', '', 'publish', 'closed', 'closed', '', 'google', '', '', '2018-04-13 19:45:38', '2018-04-13 19:45:38', '', 0, 'http://fictionaluniversity.site/?p=43', 2, 'nav_menu_item', '', 0),
(44, 1, '2018-04-14 04:20:43', '2018-04-14 04:20:43', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2018-04-14 04:20:43', '2018-04-14 04:20:43', '', 0, 'http://fictionaluniversity.site/?page_id=44', 0, 'page', '', 0),
(45, 1, '2018-04-14 04:20:43', '2018-04-14 04:20:43', '', 'Home', '', 'inherit', 'closed', 'closed', '', '44-revision-v1', '', '', '2018-04-14 04:20:43', '2018-04-14 04:20:43', '', 44, 'http://fictionaluniversity.site/2018/04/14/44-revision-v1/', 0, 'revision', '', 0),
(46, 1, '2018-04-14 04:20:52', '2018-04-14 04:20:52', '', 'Blog', '', 'publish', 'closed', 'closed', '', 'blog', '', '', '2018-04-14 04:20:52', '2018-04-14 04:20:52', '', 0, 'http://fictionaluniversity.site/?page_id=46', 0, 'page', '', 0),
(47, 1, '2018-04-14 04:20:52', '2018-04-14 04:20:52', '', 'Blog', '', 'inherit', 'closed', 'closed', '', '46-revision-v1', '', '', '2018-04-14 04:20:52', '2018-04-14 04:20:52', '', 46, 'http://fictionaluniversity.site/2018/04/14/46-revision-v1/', 0, 'revision', '', 0),
(48, 1, '2018-04-14 06:08:59', '2018-04-14 06:08:59', 'Modern computers work more slowly, not coping with the tasks that the person puts before them. Scientists are already developing probabilistic processors, molecular and biological, optical computers and quantum computers that will replace the obsolete devices.\r\n\r\nThe main role in the work of the computer is played by electrons.', 'We Won an Award', '', 'publish', 'open', 'open', '', 'we-won-and-award', '', '', '2018-04-15 09:10:59', '2018-04-15 09:10:59', '', 0, 'http://fictionaluniversity.site/?p=48', 0, 'post', '', 0),
(49, 1, '2018-04-14 06:08:59', '2018-04-14 06:08:59', 'Modern computers work more slowly, not coping with the tasks that the person puts before them. Scientists are already developing probabilistic processors, molecular and biological, optical computers and quantum computers that will replace the obsolete devices.\r\n\r\nThe main role in the work of the computer is played by electrons.', 'We Won and Award', '', 'inherit', 'closed', 'closed', '', '48-revision-v1', '', '', '2018-04-14 06:08:59', '2018-04-14 06:08:59', '', 48, 'http://fictionaluniversity.site/2018/04/14/48-revision-v1/', 0, 'revision', '', 0),
(50, 1, '2018-04-15 09:10:59', '2018-04-15 09:10:59', 'Modern computers work more slowly, not coping with the tasks that the person puts before them. Scientists are already developing probabilistic processors, molecular and biological, optical computers and quantum computers that will replace the obsolete devices.\r\n\r\nThe main role in the work of the computer is played by electrons.', 'We Won an Award', '', 'inherit', 'closed', 'closed', '', '48-revision-v1', '', '', '2018-04-15 09:10:59', '2018-04-15 09:10:59', '', 48, 'http://fictionaluniversity.site/2018/04/15/48-revision-v1/', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(3, 'My Main Header Menu', 'my-main-header-menu', 0),
(4, 'My Magical Menu', 'my-magical-menu', 0),
(5, 'Super Amazing Menu', 'super-amazing-menu', 0),
(6, 'Awards', 'awards', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(4, 1, 0),
(6, 1, 0),
(38, 3, 0),
(39, 3, 0),
(40, 4, 0),
(41, 4, 0),
(42, 5, 0),
(43, 5, 0),
(48, 6, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 3),
(3, 3, 'nav_menu', '', 0, 2),
(4, 4, 'nav_menu', '', 0, 2),
(5, 5, 'nav_menu', '', 0, 2),
(6, 6, 'category', 'We love to blog about our awards', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'Lawrence'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', 'This is from my Bio Info'),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:2:{s:64:\"2f3991c83096875c521a54728145738825a3f0b9496b61a46b57aaa75038cbd5\";a:4:{s:10:\"expiration\";i:1523793349;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:82:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:59.0) Gecko/20100101 Firefox/59.0\";s:5:\"login\";i:1523620549;}s:64:\"2bbcbf0575dc5e6381f93e833e079ab3c430f09a2ac05e56b66d72d152224667\";a:4:{s:10:\"expiration\";i:1523952741;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:121:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36\";s:5:\"login\";i:1523779941;}}'),
(17, 1, 'wp_user-settings', 'editor=tinymce&unfold=1&mfold=o'),
(18, 1, 'wp_user-settings-time', '1523544288'),
(19, 1, 'wp_dashboard_quick_press_last_post_id', '3'),
(20, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:2:\"::\";}'),
(21, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(22, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:\"add-post_tag\";}'),
(23, 1, 'nav_menu_recently_edited', '3');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$BMxQz/mSpNkHP2P5QzS09nHVv9jRsP0', 'admin', 'locaulker@gmail.com', '', '2018-02-08 13:20:37', '', 0, 'Lawrence');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Indexes for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=254;

--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=238;

--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
