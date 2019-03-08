-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 07-03-2019 a las 13:53:48
-- Versión del servidor: 5.6.41-84.1
-- Versión de PHP: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `gomserve_presco`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_comments`
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
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_links`
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
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Volcado de datos para la tabla `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://presco.gomserver.net/cms', 'yes'),
(2, 'home', 'http://presco.gomserver.net/cms', 'yes'),
(3, 'blogname', 'Presco', 'yes'),
(4, 'blogdescription', 'Presco', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'desarrollo@gomultimedios.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '100', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'closed', 'yes'),
(20, 'default_ping_status', 'closed', 'yes'),
(21, 'default_pingback_flag', '', 'yes'),
(22, 'posts_per_page', '100', 'yes'),
(23, 'date_format', 'm/d/Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'j F, Y g:i a', 'yes'),
(26, 'comment_moderation', '', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:86:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:1:{i:0;s:51:\"all-in-one-wp-migration/all-in-one-wp-migration.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'Presco_wp', 'yes'),
(41, 'stylesheet', 'Presco_wp', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '43764', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'posts', 'yes'),
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
(69, 'close_comments_for_old_posts', '', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:0:{}', 'yes'),
(80, 'widget_rss', 'a:0:{}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '0', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'show_comments_cookies_opt_in', '', 'yes'),
(93, 'initial_db_version', '43764', 'yes'),
(94, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(95, 'fresh_site', '0', 'yes'),
(96, 'WPLANG', 'es_MX', 'yes'),
(97, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'sidebars_widgets', 'a:5:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:12:\"categories-2\";i:3;s:6:\"meta-2\";i:4;s:10:\"archives-2\";i:5;s:17:\"recent-comments-2\";}s:9:\"sidebar-1\";a:0:{}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}s:13:\"array_version\";i:3;}', 'yes'),
(154, 'current_theme', 'Presco', 'yes'),
(155, 'theme_mods_Presco_wp', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(156, 'theme_switched', '', 'yes'),
(103, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'cron', 'a:6:{i:1551932321;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1551950321;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1551991995;a:1:{s:18:\"ai1wm_cleanup_cron\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1551993830;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1551998250;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes'),
(113, 'theme_mods_twentynineteen', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1544738673;s:4:\"data\";a:2:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}}}}', 'yes'),
(123, 'auto_core_update_notified', 'a:4:{s:4:\"type\";s:7:\"success\";s:5:\"email\";s:28:\"desarrollo@gomultimedios.com\";s:7:\"version\";s:5:\"5.0.3\";s:9:\"timestamp\";i:1547072570;}', 'no'),
(624, 'ai1wm_secret_key', 'x1dSW7v6OeNP', 'yes'),
(625, 'ai1wm_status', 'a:2:{s:4:\"type\";s:8:\"download\";s:7:\"message\";s:256:\"<a href=\"http://presco.gomserver.net/cms/wp-content/ai1wm-backups/presco.gomserver.net-cms-20190118-205455-978.wpress\" class=\"ai1wm-button-green ai1wm-emphasize\" title=\"presco.gomserver.net\"><span>Download presco.gomserver.net</span><em>Size: 7 MB</em></a>\";}', 'yes'),
(628, 'ai1wm_updater', 'a:0:{}', 'yes'),
(938, '_site_transient_timeout_theme_roots', '1551931806', 'no'),
(939, '_site_transient_theme_roots', 'a:1:{s:9:\"Presco_wp\";s:7:\"/themes\";}', 'no'),
(160, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1551930006;s:7:\"checked\";a:1:{s:9:\"Presco_wp\";s:1:\"1\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(133, 'can_compress_scripts', '0', 'no'),
(142, 'new_admin_email', 'desarrollo@gomultimedios.com', 'yes'),
(309, 'category_children', 'a:0:{}', 'yes'),
(559, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:2:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:57:\"https://downloads.wordpress.org/release/wordpress-5.1.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:57:\"https://downloads.wordpress.org/release/wordpress-5.1.zip\";s:10:\"no_content\";s:68:\"https://downloads.wordpress.org/release/wordpress-5.1-no-content.zip\";s:11:\"new_bundled\";s:69:\"https://downloads.wordpress.org/release/wordpress-5.1-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:3:\"5.1\";s:7:\"version\";s:3:\"5.1\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.0\";s:15:\"partial_version\";s:0:\"\";}i:1;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:57:\"https://downloads.wordpress.org/release/wordpress-5.1.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:57:\"https://downloads.wordpress.org/release/wordpress-5.1.zip\";s:10:\"no_content\";s:68:\"https://downloads.wordpress.org/release/wordpress-5.1-no-content.zip\";s:11:\"new_bundled\";s:69:\"https://downloads.wordpress.org/release/wordpress-5.1-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:3:\"5.1\";s:7:\"version\";s:3:\"5.1\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.0\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}}s:12:\"last_checked\";i:1551930005;s:15:\"version_checked\";s:5:\"5.0.3\";s:12:\"translations\";a:0:{}}', 'no'),
(617, 'recently_activated', 'a:0:{}', 'yes'),
(940, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1551930007;s:7:\"checked\";a:3:{s:19:\"akismet/akismet.php\";s:3:\"4.1\";s:51:\"all-in-one-wp-migration/all-in-one-wp-migration.php\";s:4:\"6.83\";s:9:\"hello.php\";s:5:\"1.7.1\";}s:8:\"response\";a:2:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.1.1\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.1.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:3:\"5.1\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:51:\"all-in-one-wp-migration/all-in-one-wp-migration.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:37:\"w.org/plugins/all-in-one-wp-migration\";s:4:\"slug\";s:23:\"all-in-one-wp-migration\";s:6:\"plugin\";s:51:\"all-in-one-wp-migration/all-in-one-wp-migration.php\";s:11:\"new_version\";s:4:\"6.86\";s:3:\"url\";s:54:\"https://wordpress.org/plugins/all-in-one-wp-migration/\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/plugin/all-in-one-wp-migration.6.86.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:76:\"https://ps.w.org/all-in-one-wp-migration/assets/icon-256x256.png?rev=2031177\";s:2:\"1x\";s:76:\"https://ps.w.org/all-in-one-wp-migration/assets/icon-128x128.png?rev=2031177\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:79:\"https://ps.w.org/all-in-one-wp-migration/assets/banner-1544x500.png?rev=2031177\";s:2:\"1x\";s:78:\"https://ps.w.org/all-in-one-wp-migration/assets/banner-772x250.png?rev=2031177\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:3:\"5.1\";s:12:\"requires_php\";s:6:\"5.2.17\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:1:{s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:3:\"1.6\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/plugin/hello-dolly.1.6.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=969907\";s:2:\"1x\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=969907\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:65:\"https://ps.w.org/hello-dolly/assets/banner-772x250.png?rev=478342\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no'),
(785, '_transient_twentysixteen_categories', '2', 'yes');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Volcado de datos para la tabla `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(14, 8, '_edit_lock', '1545948591:1'),
(2, 3, '_wp_page_template', 'default'),
(287, 156, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:360;s:6:\"height\";i:74;s:4:\"file\";s:16:\"2018/12/logo.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"logo-150x74.png\";s:5:\"width\";i:150;s:6:\"height\";i:74;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:15:\"logo-300x62.png\";s:5:\"width\";i:300;s:6:\"height\";i:62;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(286, 156, '_wp_attached_file', '2018/12/logo.png'),
(13, 3, '_edit_lock', '1545172245:1'),
(21, 13, '_edit_lock', '1546031154:1'),
(289, 8, '_thumbnail_id', '156'),
(22, 15, '_wp_attached_file', '2018/12/item1.png'),
(23, 15, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:66;s:6:\"height\";i:66;s:4:\"file\";s:17:\"2018/12/item1.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(35, 21, '_edit_lock', '1545950227:1'),
(31, 19, '_edit_lock', '1545251037:1'),
(33, 19, '_thumbnail_id', '15'),
(36, 22, '_wp_attached_file', '2018/12/item2.png'),
(37, 22, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:66;s:6:\"height\";i:66;s:4:\"file\";s:17:\"2018/12/item2.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(44, 27, '_edit_lock', '1545950354:1'),
(39, 21, '_thumbnail_id', '22'),
(48, 31, '_edit_lock', '1545950689:1'),
(49, 32, '_wp_attached_file', '2018/12/reclutamiento.jpg'),
(50, 32, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:244;s:6:\"height\";i:245;s:4:\"file\";s:25:\"2018/12/reclutamiento.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:25:\"reclutamiento-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(53, 34, '_edit_lock', '1545252186:1'),
(52, 31, '_thumbnail_id', '32'),
(54, 35, '_wp_attached_file', '2018/12/contratacion.jpg'),
(55, 35, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:244;s:6:\"height\";i:245;s:4:\"file\";s:24:\"2018/12/contratacion.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"contratacion-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(58, 37, '_edit_lock', '1545954252:1'),
(57, 34, '_thumbnail_id', '35'),
(59, 38, '_wp_attached_file', '2018/12/cursos.jpg'),
(60, 38, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:244;s:6:\"height\";i:245;s:4:\"file\";s:18:\"2018/12/cursos.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"cursos-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(65, 42, '_edit_lock', '1545950676:1'),
(62, 37, '_thumbnail_id', '38'),
(66, 43, '_wp_attached_file', '2018/12/logistica.jpg'),
(67, 43, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:244;s:6:\"height\";i:245;s:4:\"file\";s:21:\"2018/12/logistica.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"logistica-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(72, 47, '_edit_lock', '1545253556:1'),
(69, 42, '_thumbnail_id', '43'),
(73, 48, '_wp_attached_file', '2018/12/icoUniforme.png'),
(74, 48, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:43;s:6:\"height\";i:58;s:4:\"file\";s:23:\"2018/12/icoUniforme.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(77, 50, '_edit_lock', '1545253763:1'),
(76, 47, '_thumbnail_id', '48'),
(78, 51, '_wp_attached_file', '2018/12/icoSuministro.png'),
(79, 51, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:55;s:6:\"height\";i:49;s:4:\"file\";s:25:\"2018/12/icoSuministro.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(84, 55, '_edit_lock', '1545253954:1'),
(81, 50, '_thumbnail_id', '51'),
(88, 59, '_edit_lock', '1545254116:1'),
(89, 60, '_wp_attached_file', '2018/12/certificacion1.png'),
(90, 60, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:104;s:6:\"height\";i:123;s:4:\"file\";s:26:\"2018/12/certificacion1.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(93, 62, '_edit_lock', '1545254202:1'),
(92, 59, '_thumbnail_id', '60'),
(96, 64, '_wp_attached_file', '2018/12/certificacion2.png'),
(97, 64, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:100;s:6:\"height\";i:83;s:4:\"file\";s:26:\"2018/12/certificacion2.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(100, 66, '_edit_lock', '1545254418:1'),
(99, 62, '_thumbnail_id', '64'),
(101, 67, '_wp_attached_file', '2018/12/certificacion3.png'),
(102, 67, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:100;s:6:\"height\";i:90;s:4:\"file\";s:26:\"2018/12/certificacion3.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(105, 69, '_edit_lock', '1545254952:1'),
(104, 66, '_thumbnail_id', '67'),
(106, 70, '_wp_attached_file', '2018/12/certificacion4.png'),
(107, 70, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:100;s:6:\"height\";i:100;s:4:\"file\";s:26:\"2018/12/certificacion4.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(110, 72, '_edit_lock', '1546232175:1'),
(109, 69, '_thumbnail_id', '70'),
(114, 76, '_edit_lock', '1545952087:1'),
(115, 77, '_wp_attached_file', '2018/12/icoOfertas.png'),
(116, 77, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:50;s:6:\"height\";i:50;s:4:\"file\";s:22:\"2018/12/icoOfertas.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(118, 76, '_thumbnail_id', '77'),
(121, 81, '_edit_lock', '1545255686:1'),
(122, 82, '_wp_attached_file', '2018/12/icoSube.png'),
(123, 82, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:35;s:6:\"height\";i:43;s:4:\"file\";s:19:\"2018/12/icoSube.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(131, 89, '_edit_lock', '1545255811:1'),
(125, 81, '_thumbnail_id', '82'),
(133, 89, '_edit_last', '1'),
(137, 93, '_edit_lock', '1545952875:1'),
(302, 42, '_edit_last', '1'),
(139, 93, '_edit_last', '1'),
(172, 107, '_edit_lock', '1545962399:1'),
(147, 62, '_edit_last', '1'),
(150, 66, '_edit_last', '1'),
(167, 105, '_edit_lock', '1545961198:1'),
(153, 69, '_edit_last', '1'),
(155, 101, '_edit_lock', '1545247466:1'),
(162, 104, '_wp_attached_file', '2018/12/duns.png'),
(163, 104, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:99;s:6:\"height\";i:87;s:4:\"file\";s:16:\"2018/12/duns.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(165, 101, '_thumbnail_id', '104'),
(197, 117, '_edit_lock', '1545252184:1'),
(296, 21, '_edit_last', '1'),
(160, 101, '_edit_last', '1'),
(174, 107, '_edit_last', '1'),
(170, 105, '_edit_last', '1'),
(176, 109, '_edit_lock', '1545961415:1'),
(179, 109, '_edit_last', '1'),
(178, 109, '_thumbnail_id', '15'),
(181, 111, '_edit_lock', '1545961521:1'),
(184, 111, '_edit_last', '1'),
(183, 111, '_thumbnail_id', '22'),
(186, 113, '_edit_lock', '1545961382:1'),
(188, 113, '_edit_last', '1'),
(190, 115, '_edit_lock', '1545252165:1'),
(192, 115, '_edit_last', '1'),
(238, 135, '_edit_lock', '1545254200:1'),
(195, 115, '_thumbnail_id', '32'),
(200, 117, '_edit_last', '1'),
(199, 117, '_thumbnail_id', '35'),
(202, 119, '_edit_lock', '1545961491:1'),
(205, 119, '_edit_last', '1'),
(204, 119, '_thumbnail_id', '38'),
(207, 121, '_edit_lock', '1545961633:1'),
(210, 121, '_edit_last', '1'),
(209, 121, '_thumbnail_id', '43'),
(212, 123, '_edit_lock', '1545252598:1'),
(299, 27, '_edit_last', '1'),
(214, 125, '_edit_lock', '1545959147:1'),
(221, 50, '_edit_last', '1'),
(216, 125, '_thumbnail_id', '48'),
(217, 125, '_edit_last', '1'),
(219, 127, '_edit_lock', '1545253758:1'),
(225, 127, '_edit_last', '1'),
(224, 127, '_thumbnail_id', '51'),
(227, 130, '_edit_lock', '1545253952:1'),
(229, 130, '_edit_last', '1'),
(231, 132, '_edit_lock', '1545254113:1'),
(233, 132, '_edit_last', '1'),
(248, 139, '_edit_lock', '1545254410:1'),
(236, 132, '_thumbnail_id', '60'),
(241, 135, '_edit_last', '1'),
(240, 135, '_thumbnail_id', '64'),
(243, 137, '_edit_lock', '1545254278:1'),
(245, 137, '_thumbnail_id', '67'),
(246, 137, '_edit_last', '1'),
(251, 139, '_edit_last', '1'),
(250, 139, '_thumbnail_id', '70'),
(253, 141, '_edit_lock', '1545254950:1'),
(256, 141, '_edit_last', '1'),
(255, 141, '_thumbnail_id', '104'),
(258, 143, '_edit_lock', '1546232545:1'),
(260, 143, '_edit_last', '1'),
(262, 145, '_edit_lock', '1545255357:1'),
(267, 145, '_thumbnail_id', '77'),
(264, 145, '_edit_last', '1'),
(282, 153, '_edit_lock', '1545256991:1'),
(269, 147, '_edit_lock', '1545255684:1'),
(272, 147, '_edit_last', '1'),
(271, 147, '_thumbnail_id', '82'),
(274, 149, '_edit_lock', '1545255815:1'),
(276, 149, '_edit_last', '1'),
(290, 8, '_edit_last', '1'),
(284, 153, '_edit_last', '1'),
(293, 105, '_thumbnail_id', '156'),
(307, 31, '_edit_last', '1'),
(312, 72, '_edit_last', '1'),
(317, 76, '_edit_last', '1'),
(320, 13, '_edit_last', '1'),
(329, 37, '_edit_last', '1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_posts`
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
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Volcado de datos para la tabla `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(14, 1, '2018-12-18 22:47:39', '2018-12-18 22:47:39', '<!-- wp:heading -->\n<h2>aa</h2>\n<!-- /wp:heading -->', 'Untitled Reusable Block', '', 'publish', 'closed', 'closed', '', 'untitled-reusable-block', '', '', '2018-12-18 22:47:39', '2018-12-18 22:47:39', '', 0, 'http://presco.gomserver.net/cms/untitled-reusable-block/', 0, 'wp_block', '', 0),
(15, 1, '2018-12-18 22:50:54', '2018-12-18 22:50:54', '', 'item1', '', 'inherit', 'closed', 'closed', '', 'item1', '', '', '2018-12-18 22:50:54', '2018-12-18 22:50:54', '', 13, 'http://presco.gomserver.net/cms/wp-content/uploads/2018/12/item1.png', 0, 'attachment', 'image/png', 0),
(18, 1, '2018-12-18 23:12:36', '2018-12-18 23:12:36', '<!-- wp:paragraph -->\n<p>Somos una&nbsp;<strong>empresa 100% mexicana</strong> especializada en el&nbsp;<strong>desarrollo de soluciones integrales para el capital humano, suministro de equipo de protección personal y comercialización de textiles.</strong></p>\n<!-- /wp:paragraph -->', 'Acerca de Nosotros', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2018-12-18 23:12:36', '2018-12-18 23:12:36', '', 13, 'http://presco.gomserver.net/cms/13-revision-v1/', 0, 'revision', '', 0),
(19, 1, '2018-12-18 23:16:07', '2018-12-18 23:16:07', '<!-- wp:paragraph -->\n<p>Actualmente la oficina matriz se encuentra ubicada en  <strong>Ciudad del Carmen, Campeche</strong> para brindar los servicios en el <strong>sector energético</strong>, sector turismo y de exportación.</p>\n<!-- /wp:paragraph -->', 'Texto 1 lista', '', 'publish', 'closed', 'closed', '', 'texto-1-lista', '', '', '2018-12-18 23:25:45', '2018-12-18 23:25:45', '', 0, 'http://presco.gomserver.net/cms/?p=19', 0, 'post', '', 0),
(20, 1, '2018-12-18 23:16:07', '2018-12-18 23:16:07', '<!-- wp:paragraph -->\n<p>Actualmente la oficina matriz se encuentra ubicada en&nbsp;<strong>Ciudad del Carmen, Campeche</strong>&nbsp;para brindar los servicios en el&nbsp;<strong>sector energético</strong>, sector turismo y de exportación.</p>\n<!-- /wp:paragraph -->', 'Texto 1 lista', '', 'inherit', 'closed', 'closed', '', '19-revision-v1', '', '', '2018-12-18 23:16:07', '2018-12-18 23:16:07', '', 19, 'http://presco.gomserver.net/cms/19-revision-v1/', 0, 'revision', '', 0),
(3, 1, '2018-12-13 21:18:41', '2018-12-13 21:18:41', '<!-- wp:heading --><h2>Quiénes somos</h2><!-- /wp:heading --><!-- wp:paragraph --><p>La dirección de nuestra web es: http://presco.gomserver.net/cms.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Qué datos personales recogemos y por qué los recogemos</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Comentarios</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Cuando los visitantes dejan comentarios en la web, recopilamos los datos que se muestran en el formulario de comentarios, así como la dirección IP del visitante y la cadena de agentes de usuario del navegador para ayudar a la detección de spam.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Una cadena anónima creada a partir de tu dirección de correo electrónico (también llamada hash) puede ser proporcionada al servicio de Gravatar para ver si la estás usando. La política de privacidad del servicio Gravatar está disponible aquí: https://automattic.com/privacy/. Después de la aprobación de tu comentario, la imagen de tu perfil es visible para el público en el contexto de su comentario.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Medios</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Si subes imágenes a la web deberías evitar subir imágenes con datos de ubicación (GPS EXIF) incluidos. Los visitantes de la web pueden descargar y extraer cualquier dato de localización de las imágenes de la web.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Formularios de contacto</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Si dejas un comentario en nuestro sitio puedes elegir guardar tu nombre, dirección de correo electrónico y web en cookies. Esto es para tu comodidad, para que no tengas que volver a rellenar tus datos cuando dejes otro comentario. Estas cookies tendrán una duración de un año.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Si tienes una cuenta y te conectas a este sitio, instalaremos una cookie temporal para determinar si tu navegador acepta cookies. Esta cookie no contiene datos personales y se elimina al cerrar el navegador.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Cuando inicias sesión, también instalaremos varias cookies para guardar tu información de inicio de sesión y tus opciones de visualización de pantalla. Las cookies de inicio de sesión duran dos días, y las cookies de opciones de pantalla duran un año. Si seleccionas &quot;Recordarme&quot;, tu inicio de sesión perdurará durante dos semanas. Si sales de tu cuenta, las cookies de inicio de sesión se eliminarán.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Si editas o publicas un artículo se guardará una cookie adicional en tu navegador. Esta cookie no incluye datos personales y simplemente indica el ID del artículo que acabas de editar. Caduca después de 1 día.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Contenido incrustado de otros sitios web</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Los artículos de este sitio pueden incluir contenido incrustado (por ejemplo, vídeos, imágenes, artículos, etc.). El contenido incrustado de otras web se comporta exactamente de la misma manera que si el visitante hubiera visitado la otra web.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Estas web pueden recopilar datos sobre ti, utilizar cookies, incrustar un seguimiento adicional de terceros, y supervisar tu interacción con ese contenido incrustado, incluido el seguimiento de tu interacción con el contenido incrustado si tienes una cuenta y estás conectado a esa web.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Analítica</h3><!-- /wp:heading --><!-- wp:heading --><h2>Con quién compartimos tus datos</h2><!-- /wp:heading --><!-- wp:heading --><h2>Cuánto tiempo conservamos tus datos</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Si dejas un comentario, el comentario y sus metadatos se conservan indefinidamente. Esto es para que podamos reconocer y aprobar comentarios sucesivos automáticamente en lugar de mantenerlos en una cola de moderación.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>De los usuarios que se registran en nuestra web (si los hay), también almacenamos la información personal que proporcionan en su perfil de usuario. Todos los usuarios pueden ver, editar o eliminar su información personal en cualquier momento (excepto que no pueden cambiar su nombre de usuario). Los administradores de la web también pueden ver y editar esa información.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Qué derechos tienes sobre tus datos</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Si tienes una cuenta o has dejado comentarios en esta web, puedes solicitar recibir un archivo de exportación de los datos personales que tenemos sobre ti, incluyendo cualquier dato que nos hayas proporcionado. También puedes solicitar que eliminemos cualquier dato personal que tengamos sobre ti. Esto no incluye ningún dato que estemos obligados a conservar con fines administrativos, legales o de seguridad.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Dónde enviamos tus datos</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Los comentarios de los visitantes puede que los revise un servicio de detección automática de spam.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Tu información de contacto</h2><!-- /wp:heading --><!-- wp:heading --><h2>Información adicional</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cómo protegemos tus datos</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Qué procedimientos utilizamos contra las brechas de datos</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>De qué terceros recibimos datos</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Qué tipo de toma de decisiones automatizada y/o perfilado hacemos con los datos del usuario</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Requerimientos regulatorios de revelación de información del sector</h3><!-- /wp:heading -->', 'Política de privacidad', '', 'draft', 'closed', 'open', '', 'politica-privacidad', '', '', '2018-12-18 22:32:40', '2018-12-18 22:32:40', '', 0, 'http://presco.gomserver.net/cms/?page_id=3', 0, 'page', '', 0),
(6, 1, '2018-12-18 22:32:25', '2018-12-18 22:32:25', '<!-- wp:heading --><h2>Quiénes somos</h2><!-- /wp:heading --><!-- wp:paragraph --><p>La dirección de nuestra web es: http://presco.gomserver.net/cms.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Qué datos personales recogemos y por qué los recogemos</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Comentarios</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Cuando los visitantes dejan comentarios en la web, recopilamos los datos que se muestran en el formulario de comentarios, así como la dirección IP del visitante y la cadena de agentes de usuario del navegador para ayudar a la detección de spam.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Una cadena anónima creada a partir de tu dirección de correo electrónico (también llamada hash) puede ser proporcionada al servicio de Gravatar para ver si la estás usando. La política de privacidad del servicio Gravatar está disponible aquí: https://automattic.com/privacy/. Después de la aprobación de tu comentario, la imagen de tu perfil es visible para el público en el contexto de su comentario.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Medios</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Si subes imágenes a la web deberías evitar subir imágenes con datos de ubicación (GPS EXIF) incluidos. Los visitantes de la web pueden descargar y extraer cualquier dato de localización de las imágenes de la web.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Formularios de contacto</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Si dejas un comentario en nuestro sitio puedes elegir guardar tu nombre, dirección de correo electrónico y web en cookies. Esto es para tu comodidad, para que no tengas que volver a rellenar tus datos cuando dejes otro comentario. Estas cookies tendrán una duración de un año.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Si tienes una cuenta y te conectas a este sitio, instalaremos una cookie temporal para determinar si tu navegador acepta cookies. Esta cookie no contiene datos personales y se elimina al cerrar el navegador.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Cuando inicias sesión, también instalaremos varias cookies para guardar tu información de inicio de sesión y tus opciones de visualización de pantalla. Las cookies de inicio de sesión duran dos días, y las cookies de opciones de pantalla duran un año. Si seleccionas &quot;Recordarme&quot;, tu inicio de sesión perdurará durante dos semanas. Si sales de tu cuenta, las cookies de inicio de sesión se eliminarán.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Si editas o publicas un artículo se guardará una cookie adicional en tu navegador. Esta cookie no incluye datos personales y simplemente indica el ID del artículo que acabas de editar. Caduca después de 1 día.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Contenido incrustado de otros sitios web</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Los artículos de este sitio pueden incluir contenido incrustado (por ejemplo, vídeos, imágenes, artículos, etc.). El contenido incrustado de otras web se comporta exactamente de la misma manera que si el visitante hubiera visitado la otra web.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Estas web pueden recopilar datos sobre ti, utilizar cookies, incrustar un seguimiento adicional de terceros, y supervisar tu interacción con ese contenido incrustado, incluido el seguimiento de tu interacción con el contenido incrustado si tienes una cuenta y estás conectado a esa web.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Analítica</h3><!-- /wp:heading --><!-- wp:heading --><h2>Con quién compartimos tus datos</h2><!-- /wp:heading --><!-- wp:heading --><h2>Cuánto tiempo conservamos tus datos</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Si dejas un comentario, el comentario y sus metadatos se conservan indefinidamente. Esto es para que podamos reconocer y aprobar comentarios sucesivos automáticamente en lugar de mantenerlos en una cola de moderación.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>De los usuarios que se registran en nuestra web (si los hay), también almacenamos la información personal que proporcionan en su perfil de usuario. Todos los usuarios pueden ver, editar o eliminar su información personal en cualquier momento (excepto que no pueden cambiar su nombre de usuario). Los administradores de la web también pueden ver y editar esa información.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Qué derechos tienes sobre tus datos</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Si tienes una cuenta o has dejado comentarios en esta web, puedes solicitar recibir un archivo de exportación de los datos personales que tenemos sobre ti, incluyendo cualquier dato que nos hayas proporcionado. También puedes solicitar que eliminemos cualquier dato personal que tengamos sobre ti. Esto no incluye ningún dato que estemos obligados a conservar con fines administrativos, legales o de seguridad.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Dónde enviamos tus datos</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Los comentarios de los visitantes puede que los revise un servicio de detección automática de spam.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Tu información de contacto</h2><!-- /wp:heading --><!-- wp:heading --><h2>Información adicional</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cómo protegemos tus datos</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Qué procedimientos utilizamos contra las brechas de datos</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>De qué terceros recibimos datos</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Qué tipo de toma de decisiones automatizada y/o perfilado hacemos con los datos del usuario</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Requerimientos regulatorios de revelación de información del sector</h3><!-- /wp:heading -->', 'Política de privacidad', '', 'inherit', 'closed', 'closed', '', '3-revision-v1', '', '', '2018-12-18 22:32:25', '2018-12-18 22:32:25', '', 3, 'http://presco.gomserver.net/cms/3-revision-v1/', 0, 'revision', '', 0),
(8, 1, '2018-12-18 22:42:02', '2018-12-18 22:42:02', '', 'Desarrollo de soluciones integrales para el capital humano, suministro de equipo de protección personal y comercialización de textiles.', '', 'publish', 'closed', 'closed', '', 'desarrollo-de-soluciones-integrales-para-el-capital-humano-suministro-de-equipo-de-proteccion-personal-y-comercializacion-de-textiles', '', '', '2018-12-27 22:11:26', '2018-12-27 22:11:26', '', 0, 'http://presco.gomserver.net/cms/?p=8', 0, 'post', '', 0),
(156, 1, '2018-12-27 22:11:19', '2018-12-27 22:11:19', '', 'logo', '', 'inherit', 'closed', 'closed', '', 'logo', '', '', '2018-12-27 22:11:19', '2018-12-27 22:11:19', '', 8, 'http://presco.gomserver.net/cms/wp-content/uploads/2018/12/logo.png', 0, 'attachment', 'image/png', 0),
(10, 1, '2018-12-18 22:42:02', '2018-12-18 22:42:02', '', 'Desarrollo de soluciones integrales para el capital humano, suministro de equipo de protección personal y comercialización de textiles.', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2018-12-18 22:42:02', '2018-12-18 22:42:02', '', 8, 'http://presco.gomserver.net/cms/8-revision-v1/', 0, 'revision', '', 0),
(11, 1, '2018-12-18 22:42:56', '2018-12-18 22:42:56', '', 'Desarrollo de soluciones integrales para el capital humano, suministro de equipo de protección personal y comercialización de textiles.2', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2018-12-18 22:42:56', '2018-12-18 22:42:56', '', 8, 'http://presco.gomserver.net/cms/8-revision-v1/', 0, 'revision', '', 0),
(12, 1, '2018-12-18 22:43:05', '2018-12-18 22:43:05', '', 'Desarrollo de soluciones integrales para el capital humano, suministro de equipo de protección personal y comercialización de textiles.', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2018-12-18 22:43:05', '2018-12-18 22:43:05', '', 8, 'http://presco.gomserver.net/cms/8-revision-v1/', 0, 'revision', '', 0),
(13, 1, '2018-12-18 23:08:23', '2018-12-18 23:08:23', '<!-- wp:paragraph -->\n<p>Somos una <strong>empresa 100% mexicana</strong> especializada en el <strong>desarrollo de soluciones integrales para el capital humano, suministro de equipo de protección personal y comercialización de textiles industriales.</strong></p>\n<!-- /wp:paragraph -->', 'Acerca de Nosotros', '', 'publish', 'closed', 'closed', '', 'acerca-de-nosotros', '', '', '2018-12-28 18:58:33', '2018-12-28 18:58:33', '', 0, 'http://presco.gomserver.net/cms/?p=13', 0, 'post', '', 0),
(16, 1, '2018-12-18 23:08:23', '2018-12-18 23:08:23', '<!-- wp:paragraph -->\n<p>Somos una <strong>empresa 100% mexicana </strong>especializada en el <strong>desarrollo de soluciones integrales para el capital humano, suministro de equipo de protección personal y comercialización de textiles.</strong></p>\n<!-- /wp:paragraph -->', 'Acerca de Nosotros', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2018-12-18 23:08:23', '2018-12-18 23:08:23', '', 13, 'http://presco.gomserver.net/cms/13-revision-v1/', 0, 'revision', '', 0),
(17, 1, '2018-12-18 23:12:01', '2018-12-18 23:12:01', '<!-- wp:paragraph -->\n<p>Somos una <strong>empresa 100% mexicana</strong>especializada en el <strong>desarrollo de soluciones integrales para el capital humano, suministro de equipo de protección personal y comercialización de textiles.</strong></p>\n<!-- /wp:paragraph -->', 'Acerca de Nosotros', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2018-12-18 23:12:01', '2018-12-18 23:12:01', '', 13, 'http://presco.gomserver.net/cms/13-revision-v1/', 0, 'revision', '', 0),
(21, 1, '2018-12-18 23:19:51', '2018-12-18 23:19:51', '<!-- wp:paragraph -->\n<p>Contamos con una <strong>amplia experiencia en el mercado</strong> acompañado de la visión y soporte de CEMZA, así como los recursos y alternativas necesarias para atender los requerimientos de nuestros clientes.</p>\n<!-- /wp:paragraph -->', 'Texto 2 lista', '', 'publish', 'closed', 'closed', '', 'texto-2-lista', '', '', '2018-12-27 22:37:06', '2018-12-27 22:37:06', '', 0, 'http://presco.gomserver.net/cms/?p=21', 0, 'post', '', 0),
(22, 1, '2018-12-18 23:19:16', '2018-12-18 23:19:16', '', 'item2', '', 'inherit', 'closed', 'closed', '', 'item2', '', '', '2018-12-18 23:19:16', '2018-12-18 23:19:16', '', 21, 'http://presco.gomserver.net/cms/wp-content/uploads/2018/12/item2.png', 0, 'attachment', 'image/png', 0),
(23, 1, '2018-12-18 23:19:51', '2018-12-18 23:19:51', '<!-- wp:paragraph -->\n<p>Contamos con&nbsp;<strong>experiencia de 9 años en el mercado</strong>acompañado de la visión y soporte de CEMZA, así como los recursos y alternativas necesarias para atender los requerimientos de nuestros clientes.</p>\n<!-- /wp:paragraph -->', 'Texto 2 lista', '', 'inherit', 'closed', 'closed', '', '21-revision-v1', '', '', '2018-12-18 23:19:51', '2018-12-18 23:19:51', '', 21, 'http://presco.gomserver.net/cms/21-revision-v1/', 0, 'revision', '', 0),
(24, 1, '2018-12-18 23:23:21', '2018-12-18 23:23:21', '<!-- wp:paragraph -->\n<p>Contamos con <strong>experiencia de 9 años en el mercado</strong>acompañado de la visión y soporte de CEMZA, así como los recursos y alternativas necesarias para atender los requerimientos de nuestros clientes.2</p>\n<!-- /wp:paragraph -->', 'Texto 2 lista', '', 'inherit', 'closed', 'closed', '', '21-revision-v1', '', '', '2018-12-18 23:23:21', '2018-12-18 23:23:21', '', 21, 'http://presco.gomserver.net/cms/21-revision-v1/', 0, 'revision', '', 0),
(25, 1, '2018-12-18 23:24:29', '2018-12-18 23:24:29', '<!-- wp:paragraph -->\n<p>Contamos con <strong>experiencia de 9 años en el mercado</strong> acompañado de la visión y soporte de CEMZA, así como los recursos y alternativas necesarias para atender los requerimientos de nuestros clientes.</p>\n<!-- /wp:paragraph -->', 'Texto 2 lista', '', 'inherit', 'closed', 'closed', '', '21-revision-v1', '', '', '2018-12-18 23:24:29', '2018-12-18 23:24:29', '', 21, 'http://presco.gomserver.net/cms/21-revision-v1/', 0, 'revision', '', 0),
(26, 1, '2018-12-18 23:25:45', '2018-12-18 23:25:45', '<!-- wp:paragraph -->\n<p>Actualmente la oficina matriz se encuentra ubicada en  <strong>Ciudad del Carmen, Campeche</strong> para brindar los servicios en el <strong>sector energético</strong>, sector turismo y de exportación.</p>\n<!-- /wp:paragraph -->', 'Texto 1 lista', '', 'inherit', 'closed', 'closed', '', '19-revision-v1', '', '', '2018-12-18 23:25:45', '2018-12-18 23:25:45', '', 19, 'http://presco.gomserver.net/cms/19-revision-v1/', 0, 'revision', '', 0),
(27, 1, '2018-12-18 23:27:31', '2018-12-18 23:27:31', '<!-- wp:paragraph -->\n<p>Contamos con el personal, capacidad y recursos para atender las necesidades de la industria.</p>\n<!-- /wp:paragraph -->', 'Servicios', '', 'publish', 'closed', 'closed', '', 'nuestros-servicios', '', '', '2018-12-27 22:37:58', '2018-12-27 22:37:58', '', 0, 'http://presco.gomserver.net/cms/?p=27', 0, 'post', '', 0),
(28, 1, '2018-12-18 23:27:31', '2018-12-18 23:27:31', '<!-- wp:paragraph -->\n<p>Contamos con el personal, capacidad y recursos para atender las necesidades de la industria.</p>\n<!-- /wp:paragraph -->', 'Nuestros Servicios', '', 'inherit', 'closed', 'closed', '', '27-revision-v1', '', '', '2018-12-18 23:27:31', '2018-12-18 23:27:31', '', 27, 'http://presco.gomserver.net/cms/27-revision-v1/', 0, 'revision', '', 0),
(29, 1, '2018-12-18 23:29:14', '2018-12-18 23:29:14', '<!-- wp:paragraph -->\n<p>Contamos con el personal, capacidad y recursos para atender las necesidades de la industria.2</p>\n<!-- /wp:paragraph -->', 'Nuestros Servicios', '', 'inherit', 'closed', 'closed', '', '27-revision-v1', '', '', '2018-12-18 23:29:14', '2018-12-18 23:29:14', '', 27, 'http://presco.gomserver.net/cms/27-revision-v1/', 0, 'revision', '', 0),
(30, 1, '2018-12-18 23:31:26', '2018-12-18 23:31:26', '<!-- wp:paragraph -->\n<p>Contamos con el personal, capacidad y recursos para atender las necesidades de la industria.</p>\n<!-- /wp:paragraph -->', 'Nuestros Servicios', '', 'inherit', 'closed', 'closed', '', '27-revision-v1', '', '', '2018-12-18 23:31:26', '2018-12-18 23:31:26', '', 27, 'http://presco.gomserver.net/cms/27-revision-v1/', 0, 'revision', '', 0),
(31, 1, '2018-12-18 23:35:53', '2018-12-18 23:35:53', '<!-- wp:paragraph -->\n<p>En PRESCO buscamos ser tu aliado en la búsqueda y suministro eficiente de talento operativo, administrativo y ejecutivo a través de:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list -->\n<ul><li>Reclutamiento selectivo y masivo</li><li>Selección eficiente acorde a puesto</li><li>HeadHunting ejecutivo especializado</li></ul>\n<!-- /wp:list -->', 'Reclutamiento y Selección de Personal', '', 'publish', 'closed', 'closed', '', 'reclutamiento-y-seleccion-de-personal', '', '', '2018-12-27 22:45:50', '2018-12-27 22:45:50', '', 0, 'http://presco.gomserver.net/cms/?p=31', 0, 'post', '', 0),
(32, 1, '2018-12-18 23:35:15', '2018-12-18 23:35:15', '', 'reclutamiento', '', 'inherit', 'closed', 'closed', '', 'reclutamiento', '', '', '2018-12-18 23:35:15', '2018-12-18 23:35:15', '', 31, 'http://presco.gomserver.net/cms/wp-content/uploads/2018/12/reclutamiento.jpg', 0, 'attachment', 'image/jpeg', 0),
(33, 1, '2018-12-18 23:35:53', '2018-12-18 23:35:53', '<!-- wp:paragraph -->\n<p>En PRESCO buscamos a ser tu aliado en la búsqueda y suministro eficientemente talento operativo, administrativo y ejecutivo, a través de:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list -->\n<ul><li>Reclutamiento selectivo y masivo</li><li>Selección eficiente acorde a puesto</li><li>HeadHunting ejecutivo especializado</li></ul>\n<!-- /wp:list -->', 'Reclutamiento y Selección de Personal', '', 'inherit', 'closed', 'closed', '', '31-revision-v1', '', '', '2018-12-18 23:35:53', '2018-12-18 23:35:53', '', 31, 'http://presco.gomserver.net/cms/31-revision-v1/', 0, 'revision', '', 0),
(34, 1, '2018-12-18 23:46:02', '2018-12-18 23:46:02', '<!-- wp:paragraph -->\n<p>En PRESCO le ofrecemos el servicio completo o parcial relacionado al proceso de pagos de nómina, incluyendo los salarios, bonificaciones, compensaciones y deducciones. Realizamos la compilación y manejo de información y contratos de los trabajadores. Nuestro servicio le permite contar con profesionistas especializados en el cálculo, la determinación de impuestos y los derivados de todo el proceso de nómina dando la confianza que la información que se le proporciona es veraz y con total cumplimiento a la ley.</p>\n<!-- /wp:paragraph -->', 'Contratación, pago de nómina, impuestos, prestaciones y otros', '', 'publish', 'closed', 'closed', '', 'contratacion-pago-de-nomina-impuestos-prestaciones-y-otros', '', '', '2018-12-18 23:46:02', '2018-12-18 23:46:02', '', 0, 'http://presco.gomserver.net/cms/?p=34', 0, 'post', '', 0),
(35, 1, '2018-12-18 23:45:56', '2018-12-18 23:45:56', '', 'contratacion', '', 'inherit', 'closed', 'closed', '', 'contratacion', '', '', '2018-12-18 23:45:56', '2018-12-18 23:45:56', '', 34, 'http://presco.gomserver.net/cms/wp-content/uploads/2018/12/contratacion.jpg', 0, 'attachment', 'image/jpeg', 0),
(36, 1, '2018-12-18 23:46:02', '2018-12-18 23:46:02', '<!-- wp:paragraph -->\n<p>En PRESCO le ofrecemos el servicio completo o parcial relacionado al proceso de pagos de nómina, incluyendo los salarios, bonificaciones, compensaciones y deducciones. Realizamos la compilación y manejo de información y contratos de los trabajadores. Nuestro servicio le permite contar con profesionistas especializados en el cálculo, la determinación de impuestos y los derivados de todo el proceso de nómina dando la confianza que la información que se le proporciona es veraz y con total cumplimiento a la ley.</p>\n<!-- /wp:paragraph -->', 'Contratación, pago de nómina, impuestos, prestaciones y otros', '', 'inherit', 'closed', 'closed', '', '34-revision-v1', '', '', '2018-12-18 23:46:02', '2018-12-18 23:46:02', '', 34, 'http://presco.gomserver.net/cms/34-revision-v1/', 0, 'revision', '', 0),
(37, 1, '2018-12-18 23:47:15', '2018-12-18 23:47:15', '<!-- wp:paragraph -->\n<p>En PRESCO capacitamos a nuestro personal en materia de seguridad laboral, y curso de desarrollo del personal offshore como, Seguridad Con El H2S Avanzado, Brigada De Búsqueda Evacuación Y Rescate, Huet,T Bosiet, Helicopter Landing Officer, entre muchos otros más.</p>\n<!-- /wp:paragraph -->', 'Cursos y Certificaciones con alianzas estratégicas', '', 'publish', 'closed', 'closed', '', 'cursos-certificados-de-opito-mediante-alianza-falck-safety-services-y-otros', '', '', '2018-12-27 23:30:22', '2018-12-27 23:30:22', '', 0, 'http://presco.gomserver.net/cms/?p=37', 0, 'post', '', 0),
(38, 1, '2018-12-18 23:46:43', '2018-12-18 23:46:43', '', 'cursos', '', 'inherit', 'closed', 'closed', '', 'cursos', '', '', '2018-12-18 23:46:43', '2018-12-18 23:46:43', '', 37, 'http://presco.gomserver.net/cms/wp-content/uploads/2018/12/cursos.jpg', 0, 'attachment', 'image/jpeg', 0),
(39, 1, '2018-12-18 23:47:15', '2018-12-18 23:47:15', '<!-- wp:paragraph -->\n<p>En PRESCO capacitamos a nuestro personal en materia de seguridad laboral, y curso de desarrollo del personal offshore como, Seguridad Con El H2S Avanzado, Brigada De Búsqueda Evacuación Y Rescate, Huet,T Bosiet, Helicopter Landing Officer, entre muchos otros más.</p>\n<!-- /wp:paragraph -->', 'Cursos Certificados de Opito mediante alianza Falck Safety Services y otros', '', 'inherit', 'closed', 'closed', '', '37-revision-v1', '', '', '2018-12-18 23:47:15', '2018-12-18 23:47:15', '', 37, 'http://presco.gomserver.net/cms/37-revision-v1/', 0, 'revision', '', 0),
(41, 1, '2018-12-18 23:48:27', '2018-12-18 23:48:27', '<!-- wp:paragraph -->\n<p>En PRESCO capacitamos a nuestro personal en materia de seguridad laboral, y curso de desarrollo del personal offshore como, Seguridad Con El H2S Avanzado, Brigada De Búsqueda Evacuación Y Rescate, Huet,T Bosiet, Helicopter Landing Officer, entre muchos otros más.</p>\n<!-- /wp:paragraph -->', 'Cursos Certificados de Opito mediante alianza Falck Safety Services y otros', '', 'inherit', 'closed', 'closed', '', '37-revision-v1', '', '', '2018-12-18 23:48:27', '2018-12-18 23:48:27', '', 37, 'http://presco.gomserver.net/cms/37-revision-v1/', 0, 'revision', '', 0),
(40, 1, '2018-12-18 23:48:15', '2018-12-18 23:48:15', '<!-- wp:paragraph -->\n<p>En PRESCO capacitamos a nuestro personal en materia de seguridad laboral, y curso de desarrollo del personal offshore como, Seguridad Con El H2S Avanzado, Brigada De Búsqueda Evacuación Y Rescate, Huet,T Bosiet, Helicopter Landing Officer, entre muchos otros más.2</p>\n<!-- /wp:paragraph -->', 'Cursos Certificados de Opito mediante alianza Falck Safety Services y otros', '', 'inherit', 'closed', 'closed', '', '37-revision-v1', '', '', '2018-12-18 23:48:15', '2018-12-18 23:48:15', '', 37, 'http://presco.gomserver.net/cms/37-revision-v1/', 0, 'revision', '', 0),
(42, 1, '2018-12-18 23:49:20', '2018-12-18 23:49:20', '<!-- wp:paragraph -->\n<p>Ofrecemos un servicio eficaz de traslado y transporte que optimiza los recursos y el tiempo de todos nuestros clientes.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Ofrecemos servicio logístico para movimiento de personal a muelles y embarcaciones, además de ofrecer hospedaje ya que contamos con convenios con diversos hoteles dentro y fuera de la ciudad.</p>\n<!-- /wp:paragraph -->', 'Logística de Personal', '', 'publish', 'closed', 'closed', '', 'logistica-de-personal', '', '', '2018-12-27 22:44:34', '2018-12-27 22:44:34', '', 0, 'http://presco.gomserver.net/cms/?p=42', 0, 'post', '', 0),
(43, 1, '2018-12-18 23:49:08', '2018-12-18 23:49:08', '', 'logistica', '', 'inherit', 'closed', 'closed', '', 'logistica', '', '', '2018-12-18 23:49:08', '2018-12-18 23:49:08', '', 42, 'http://presco.gomserver.net/cms/wp-content/uploads/2018/12/logistica.jpg', 0, 'attachment', 'image/jpeg', 0),
(44, 1, '2018-12-18 23:49:20', '2018-12-18 23:49:20', '<!-- wp:paragraph -->\n<p>Ofrecemos un servicio eficaz de traslado y transporte que optimiza los recursos y el tiempo de todos nuestros clientes Ofrecemos servicio logístico para movimiento de personal a muelles y embarcaciones, además de ofrecer hospedaje ya que contamos con convenios con diversos hoteles dentro y fuera de la ciudad.</p>\n<!-- /wp:paragraph -->', 'Logística de Personal', '', 'inherit', 'closed', 'closed', '', '42-revision-v1', '', '', '2018-12-18 23:49:20', '2018-12-18 23:49:20', '', 42, 'http://presco.gomserver.net/cms/42-revision-v1/', 0, 'revision', '', 0),
(46, 1, '2018-12-18 23:50:51', '2018-12-18 23:50:51', '<!-- wp:paragraph -->\n<p>Ofrecemos un servicio eficaz de traslado y transporte que optimiza los recursos y el tiempo de todos nuestros clientes Ofrecemos servicio logístico para movimiento de personal a muelles y embarcaciones, además de ofrecer hospedaje ya que contamos con convenios con diversos hoteles dentro y fuera de la ciudad.</p>\n<!-- /wp:paragraph -->', 'Logística de Personal', '', 'inherit', 'closed', 'closed', '', '42-revision-v1', '', '', '2018-12-18 23:50:51', '2018-12-18 23:50:51', '', 42, 'http://presco.gomserver.net/cms/42-revision-v1/', 0, 'revision', '', 0),
(45, 1, '2018-12-18 23:50:16', '2018-12-18 23:50:16', '<!-- wp:paragraph -->\n<p>Ofrecemos un servicio eficaz de traslado y transporte que optimiza los recursos y el tiempo de todos nuestros clientes Ofrecemos servicio logístico para movimiento de personal a muelles y embarcaciones, además de ofrecer hospedaje ya que contamos con convenios con diversos hoteles dentro y fuera de la ciudad. 2</p>\n<!-- /wp:paragraph -->', 'Logística de Personal', '', 'inherit', 'closed', 'closed', '', '42-revision-v1', '', '', '2018-12-18 23:50:16', '2018-12-18 23:50:16', '', 42, 'http://presco.gomserver.net/cms/42-revision-v1/', 0, 'revision', '', 0),
(47, 1, '2018-12-18 23:57:36', '2018-12-18 23:57:36', '<!-- wp:paragraph -->\n<p>Contamos con un amplio catálogo de productos de la más alta calidad. Suministramos todo lo necesario para las operaciones de su personal, como: <strong>overoles, calzado de seguridad, EPP, uniformes, blancos y herramientas</strong>. Todos nuestros productos están certificados y cumplen con la normatividad vigente.</p>\n<!-- /wp:paragraph -->', 'Uniformes, EPP y Herramientas', '', 'publish', 'closed', 'closed', '', 'uniformes-epp-y-herramientas', '', '', '2018-12-19 00:03:32', '2018-12-19 00:03:32', '', 0, 'http://presco.gomserver.net/cms/?p=47', 0, 'post', '', 0),
(48, 1, '2018-12-18 23:57:26', '2018-12-18 23:57:26', '', 'icoUniforme', '', 'inherit', 'closed', 'closed', '', 'icouniforme', '', '', '2018-12-18 23:57:26', '2018-12-18 23:57:26', '', 47, 'http://presco.gomserver.net/cms/wp-content/uploads/2018/12/icoUniforme.png', 0, 'attachment', 'image/png', 0),
(49, 1, '2018-12-18 23:57:36', '2018-12-18 23:57:36', '<!-- wp:paragraph -->\n<p>Contamos con un amplio catálogo de productos de la más alta calidad. Suministramos todo lo necesario para las operaciones de su personal, como:&nbsp;<strong>overoles, calzado de seguridad, EPP, uniformes, blancos y herramientas</strong>. Todos nuestros productos están certificados y cumplen con la normatividad vigente.</p>\n<!-- /wp:paragraph -->', 'Uniformes, EPP y Herramientas', '', 'inherit', 'closed', 'closed', '', '47-revision-v1', '', '', '2018-12-18 23:57:36', '2018-12-18 23:57:36', '', 47, 'http://presco.gomserver.net/cms/47-revision-v1/', 0, 'revision', '', 0),
(50, 1, '2018-12-18 23:58:24', '2018-12-18 23:58:24', '<!-- wp:paragraph -->\n<p>También contamos con un inventario extenso en <strong>productos de acero</strong>, en el cual podemos ofrecer <strong>acero estructural, placas, tuberías &amp; conexiones</strong>. A demás material <strong>certificado en ABS.</strong></p>\n<!-- /wp:paragraph -->', 'Suministro de Acero', '', 'publish', 'closed', 'closed', '', 'suministro-de-acero', '', '', '2018-12-19 21:09:26', '2018-12-19 21:09:26', '', 0, 'http://presco.gomserver.net/cms/?p=50', 0, 'post', '', 0),
(51, 1, '2018-12-18 23:58:19', '2018-12-18 23:58:19', '', 'icoSuministro', '', 'inherit', 'closed', 'closed', '', 'icosuministro', '', '', '2018-12-18 23:58:19', '2018-12-18 23:58:19', '', 50, 'http://presco.gomserver.net/cms/wp-content/uploads/2018/12/icoSuministro.png', 0, 'attachment', 'image/png', 0),
(52, 1, '2018-12-18 23:58:24', '2018-12-18 23:58:24', '<!-- wp:paragraph -->\n<p>También contamos con un inventario extenso en&nbsp;<strong>productos de acero</strong>, en el cual podemos ofrecer&nbsp;<strong>acero estructural, placas, tuberías &amp; conexiones</strong>. A demás material&nbsp;<strong>certificado en ABS.</strong></p>\n<!-- /wp:paragraph -->', 'Suministro de Acero', '', 'inherit', 'closed', 'closed', '', '50-revision-v1', '', '', '2018-12-18 23:58:24', '2018-12-18 23:58:24', '', 50, 'http://presco.gomserver.net/cms/50-revision-v1/', 0, 'revision', '', 0),
(53, 1, '2018-12-19 00:02:35', '2018-12-19 00:02:35', '<!-- wp:paragraph -->\n<p>También contamos con un inventario extenso en <strong>productos de acero</strong>, en el cual podemos ofrecer <strong>acero estructural, placas, tuberías &amp; conexiones</strong>. A demás material <strong>certificado en ABS. 2</strong></p>\n<!-- /wp:paragraph -->', 'Suministro de Acero', '', 'inherit', 'closed', 'closed', '', '50-revision-v1', '', '', '2018-12-19 00:02:35', '2018-12-19 00:02:35', '', 50, 'http://presco.gomserver.net/cms/50-revision-v1/', 0, 'revision', '', 0),
(54, 1, '2018-12-19 00:03:32', '2018-12-19 00:03:32', '<!-- wp:paragraph -->\n<p>Contamos con un amplio catálogo de productos de la más alta calidad. Suministramos todo lo necesario para las operaciones de su personal, como: <strong>overoles, calzado de seguridad, EPP, uniformes, blancos y herramientas</strong>. Todos nuestros productos están certificados y cumplen con la normatividad vigente.</p>\n<!-- /wp:paragraph -->', 'Uniformes, EPP y Herramientas', '', 'inherit', 'closed', 'closed', '', '47-revision-v1', '', '', '2018-12-19 00:03:32', '2018-12-19 00:03:32', '', 47, 'http://presco.gomserver.net/cms/47-revision-v1/', 0, 'revision', '', 0),
(55, 1, '2018-12-19 00:09:52', '2018-12-19 00:09:52', '<!-- wp:paragraph -->\n<p>Trabajar con las mayores empresas nacionales e internacionales nos impulsa a cumplir con los más altos estándares de calidad y tener procesos de mejora continua.</p>\n<!-- /wp:paragraph -->', 'Certificaciones', '', 'publish', 'closed', 'closed', '', 'certificaciones', '', '', '2018-12-19 00:11:36', '2018-12-19 00:11:36', '', 0, 'http://presco.gomserver.net/cms/?p=55', 0, 'post', '', 0),
(56, 1, '2018-12-19 00:09:52', '2018-12-19 00:09:52', '<!-- wp:paragraph -->\n<p>Trabajar con las mayores empresas nacionales e internacionales nos impulsa a cumplir con los más altos estándares de calidad y tener procesos de mejora continua.</p>\n<!-- /wp:paragraph -->', 'Certificaciones', '', 'inherit', 'closed', 'closed', '', '55-revision-v1', '', '', '2018-12-19 00:09:52', '2018-12-19 00:09:52', '', 55, 'http://presco.gomserver.net/cms/55-revision-v1/', 0, 'revision', '', 0),
(58, 1, '2018-12-19 00:11:36', '2018-12-19 00:11:36', '<!-- wp:paragraph -->\n<p>Trabajar con las mayores empresas nacionales e internacionales nos impulsa a cumplir con los más altos estándares de calidad y tener procesos de mejora continua.</p>\n<!-- /wp:paragraph -->', 'Certificaciones', '', 'inherit', 'closed', 'closed', '', '55-revision-v1', '', '', '2018-12-19 00:11:36', '2018-12-19 00:11:36', '', 55, 'http://presco.gomserver.net/cms/55-revision-v1/', 0, 'revision', '', 0),
(57, 1, '2018-12-19 00:11:26', '2018-12-19 00:11:26', '<!-- wp:paragraph -->\n<p>Trabajar con las mayores empresas nacionales e internacionales nos impulsa a cumplir con los más altos estándares de calidad y tener procesos de mejora continua.2</p>\n<!-- /wp:paragraph -->', 'Certificaciones', '', 'inherit', 'closed', 'closed', '', '55-revision-v1', '', '', '2018-12-19 00:11:26', '2018-12-19 00:11:26', '', 55, 'http://presco.gomserver.net/cms/55-revision-v1/', 0, 'revision', '', 0),
(59, 1, '2018-12-19 00:13:40', '2018-12-19 00:13:40', '<!-- wp:paragraph -->\n<p><strong>Certificación en los Sistemas de Gestión:</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>ISO 9001:2015 CALIDAD</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>ISO 14001:2015 MEDIO AMBIENTE</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>OHSAS 18001:2007 SEGURIDAD Y SALUD OCUPACIONAL</p>\n<!-- /wp:paragraph -->', 'Certificación 1', '', 'publish', 'closed', 'closed', '', 'certificacion-1', '', '', '2018-12-19 00:13:40', '2018-12-19 00:13:40', '', 0, 'http://presco.gomserver.net/cms/?p=59', 0, 'post', '', 0),
(60, 1, '2018-12-19 00:13:23', '2018-12-19 00:13:23', '', 'certificacion1', '', 'inherit', 'closed', 'closed', '', 'certificacion1', '', '', '2018-12-19 00:13:23', '2018-12-19 00:13:23', '', 59, 'http://presco.gomserver.net/cms/wp-content/uploads/2018/12/certificacion1.png', 0, 'attachment', 'image/png', 0),
(61, 1, '2018-12-19 00:13:40', '2018-12-19 00:13:40', '<!-- wp:paragraph -->\n<p><strong>Certificación en los Sistemas de Gestión:</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>ISO 9001:2015 CALIDAD</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>ISO 14001:2015 MEDIO AMBIENTE</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>OHSAS 18001:2007 SEGURIDAD Y SALUD OCUPACIONAL</p>\n<!-- /wp:paragraph -->', 'Certificación 1', '', 'inherit', 'closed', 'closed', '', '59-revision-v1', '', '', '2018-12-19 00:13:40', '2018-12-19 00:13:40', '', 59, 'http://presco.gomserver.net/cms/59-revision-v1/', 0, 'revision', '', 0),
(62, 1, '2018-12-19 00:20:38', '2018-12-19 00:20:38', '<!-- wp:paragraph -->\n<p>TRACE International, Inc. es una organización empresarial contra el soborno reconocido a nivel mundial y proveedor líder de soluciones de gestión de riesgos de terceros.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Certificación 2', '', 'publish', 'closed', 'closed', '', 'certificacion-2', '', '', '2018-12-19 19:15:38', '2018-12-19 19:15:38', '', 0, 'http://presco.gomserver.net/cms/?p=62', 0, 'post', '', 0),
(64, 1, '2018-12-19 00:20:25', '2018-12-19 00:20:25', '', 'certificacion2', '', 'inherit', 'closed', 'closed', '', 'certificacion2', '', '', '2018-12-19 00:20:25', '2018-12-19 00:20:25', '', 62, 'http://presco.gomserver.net/cms/wp-content/uploads/2018/12/certificacion2.png', 0, 'attachment', 'image/png', 0),
(98, 1, '2018-12-19 19:15:37', '2018-12-19 19:15:37', '<!-- wp:paragraph -->\n<p>TRACE International, Inc. es una organización empresarial contra el soborno reconocido a nivel mundial y proveedor líder de soluciones de gestión de riesgos de terceros.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Certificación 2', '', 'inherit', 'closed', 'closed', '', '62-revision-v1', '', '', '2018-12-19 19:15:37', '2018-12-19 19:15:37', '', 62, 'http://presco.gomserver.net/cms/62-revision-v1/', 0, 'revision', '', 0),
(65, 1, '2018-12-19 00:20:38', '2018-12-19 00:20:38', '<!-- wp:paragraph -->\n<p>ISN proporciona una base de datos de gestión de contratistas en línea, ISNetworld, que está diseñada para cumplir con los requisitos de registro internos y gubernamentales y con los requisitos normativos. ISN recopila información de salud y seguridad, de contratación, de calidad y normativa. Los expertos en áreas específicas de ISN revisan y verifican esta información para evaluar la exactitud, relevancia y vigencia de los datos. El contacto de los clientes de contratación con contratistas y proveedores seguros, confiables y sostenibles de todo el mundo permite que estas organizaciones utilicen ISN como parte integral de sus sistemas administrativos. Para obtener más información</p>\n<!-- /wp:paragraph -->', 'Certificación 2', '', 'inherit', 'closed', 'closed', '', '62-revision-v1', '', '', '2018-12-19 00:20:38', '2018-12-19 00:20:38', '', 62, 'http://presco.gomserver.net/cms/62-revision-v1/', 0, 'revision', '', 0),
(66, 1, '2018-12-19 00:21:40', '2018-12-19 00:21:40', '<!-- wp:paragraph -->\n<p>ISN proporciona una base de datos de gestión de contratistas en línea, ISNetworld, que está diseñada para cumplir con los requisitos de registro internos y gubernamentales y con los requisitos normativos. ISN recopila información de salud y seguridad, de contratación, de calidad y normativa. Los expertos en áreas específicas de ISN revisan y verifican esta información para evaluar la exactitud, relevancia y vigencia de los datos. El contacto de los clientes de contratación con contratistas y proveedores seguros, confiables y sostenibles de todo el mundo permite que estas organizaciones utilicen ISN como parte integral de sus sistemas administrativos. Para obtener más información</p>\n<!-- /wp:paragraph -->', 'Certificación 3', '', 'publish', 'closed', 'closed', '', 'certificacion-3', '', '', '2018-12-19 19:15:55', '2018-12-19 19:15:55', '', 0, 'http://presco.gomserver.net/cms/?p=66', 0, 'post', '', 0),
(67, 1, '2018-12-19 00:21:36', '2018-12-19 00:21:36', '', 'certificacion3', '', 'inherit', 'closed', 'closed', '', 'certificacion3', '', '', '2018-12-19 00:21:36', '2018-12-19 00:21:36', '', 66, 'http://presco.gomserver.net/cms/wp-content/uploads/2018/12/certificacion3.png', 0, 'attachment', 'image/png', 0),
(68, 1, '2018-12-19 00:21:40', '2018-12-19 00:21:40', '<!-- wp:paragraph -->\n<p>La norma mexicana para la igualdad laboral y no discriminación (NMX-R025-SCFI-2015) establece los requisitos para que los centros de trabajo públicos, privados y sociales, de cualquier actividad y tamaño, integren, implementen y ejecuten dentro de sus procesos de gestión y de recursos humanos, prácticas para la igualdad laboral y no discriminación que favorezcan el desarrollo integral de las y los trabajadores</p>\n<!-- /wp:paragraph -->', 'Certificación 3', '', 'inherit', 'closed', 'closed', '', '66-revision-v1', '', '', '2018-12-19 00:21:40', '2018-12-19 00:21:40', '', 66, 'http://presco.gomserver.net/cms/66-revision-v1/', 0, 'revision', '', 0),
(69, 1, '2018-12-19 00:23:39', '2018-12-19 00:23:39', '<!-- wp:paragraph -->\n<p>La norma mexicana para la igualdad laboral y no discriminación (NMX-R025-SCFI-2015) establece los requisitos para que los centros de trabajo públicos, privados y sociales, de cualquier actividad y tamaño, integren, implementen y ejecuten dentro de sus procesos de gestión y de recursos humanos, prácticas para la igualdad laboral y no discriminación que favorezcan el desarrollo integral de las y los trabajadores</p>\n<!-- /wp:paragraph -->', 'Certificación 4', '', 'publish', 'closed', 'closed', '', 'certificacion-4', '', '', '2018-12-19 19:16:13', '2018-12-19 19:16:13', '', 0, 'http://presco.gomserver.net/cms/?p=69', 0, 'post', '', 0),
(70, 1, '2018-12-19 00:23:33', '2018-12-19 00:23:33', '', 'certificacion4', '', 'inherit', 'closed', 'closed', '', 'certificacion4', '', '', '2018-12-19 00:23:33', '2018-12-19 00:23:33', '', 69, 'http://presco.gomserver.net/cms/wp-content/uploads/2018/12/certificacion4.png', 0, 'attachment', 'image/png', 0),
(71, 1, '2018-12-19 00:23:39', '2018-12-19 00:23:39', '<!-- wp:paragraph -->\n<p>Número D-U-N-S D&amp;B es una secuencia de identificación de nueve dígitos distintiva de D&amp;B, el cual lo enlaza a información de calidad sobre productos y servicios originados exclusivamente en D&amp;B. Este código tiende a convertirse en el estándar universal en todo el comercio electrónico, incluyendo transacciones por Internet.</p>\n<!-- /wp:paragraph -->', 'Certificación 4', '', 'inherit', 'closed', 'closed', '', '69-revision-v1', '', '', '2018-12-19 00:23:39', '2018-12-19 00:23:39', '', 69, 'http://presco.gomserver.net/cms/69-revision-v1/', 0, 'revision', '', 0),
(72, 1, '2018-12-19 00:25:39', '2018-12-19 00:25:39', '<!-- wp:paragraph -->\n<p> <br>Contamos con una sólida experiencia en el <strong>suministro de personal costa afuera para empresas nacionales e internacionales</strong> del sector energético. Continuamente estamos publicando nuevas ofertas y oportunidades para integrarte a nuestro equipo. </p>\n<!-- /wp:paragraph -->', 'Bolsa de Trabajo', '', 'publish', 'closed', 'closed', '', 'reclutamiento', '', '', '2018-12-31 04:56:14', '2018-12-31 04:56:14', '', 0, 'http://presco.gomserver.net/cms/?p=72', 0, 'post', '', 0),
(165, 1, '2018-12-27 22:47:57', '2018-12-27 22:47:57', '<!-- wp:paragraph -->\n<p>Éstas son nuestras oportunidades para que te unas a nosotros.</p>\n<!-- /wp:paragraph -->', 'Bolsa de Trabajo', '', 'inherit', 'closed', 'closed', '', '72-revision-v1', '', '', '2018-12-27 22:47:57', '2018-12-27 22:47:57', '', 72, 'http://presco.gomserver.net/cms/72-revision-v1/', 0, 'revision', '', 0),
(73, 1, '2018-12-19 00:25:39', '2018-12-19 00:25:39', '<!-- wp:paragraph -->\n<p>Siempre creciendo y que estes de nuestro lado.&nbsp;<br>Éstas son nuestras oportunidades para que te unas a nosotros.</p>\n<!-- /wp:paragraph -->', 'Reclutamiento', '', 'inherit', 'closed', 'closed', '', '72-revision-v1', '', '', '2018-12-19 00:25:39', '2018-12-19 00:25:39', '', 72, 'http://presco.gomserver.net/cms/72-revision-v1/', 0, 'revision', '', 0),
(74, 1, '2018-12-19 00:27:36', '2018-12-19 00:27:36', '<!-- wp:paragraph -->\n<p>Siempre creciendo y que estes de nuestro lado. <br>Éstas son nuestras oportunidades para que te unas a nosotros. 2</p>\n<!-- /wp:paragraph -->', 'Reclutamiento', '', 'inherit', 'closed', 'closed', '', '72-revision-v1', '', '', '2018-12-19 00:27:36', '2018-12-19 00:27:36', '', 72, 'http://presco.gomserver.net/cms/72-revision-v1/', 0, 'revision', '', 0),
(75, 1, '2018-12-19 00:28:02', '2018-12-19 00:28:02', '<!-- wp:paragraph -->\n<p>Siempre creciendo y que estes de nuestro lado. <br>Éstas son nuestras oportunidades para que te unas a nosotros.</p>\n<!-- /wp:paragraph -->', 'Reclutamiento', '', 'inherit', 'closed', 'closed', '', '72-revision-v1', '', '', '2018-12-19 00:28:02', '2018-12-19 00:28:02', '', 72, 'http://presco.gomserver.net/cms/72-revision-v1/', 0, 'revision', '', 0),
(76, 1, '2018-12-19 00:29:51', '2018-12-19 00:29:51', '<!-- wp:paragraph -->\n<p>Contamos con una sólida experiencia en el suministro de personal costa afuera para empresas nacionales e internacionales del sector energético.</p>\n<!-- /wp:paragraph -->', 'Ver ofertas de trabajo', '', 'publish', 'closed', 'closed', '', 'ver-ofertas-de-trabajo', '', '', '2018-12-27 22:57:24', '2018-12-27 22:57:24', '', 0, 'http://presco.gomserver.net/cms/?p=76', 0, 'post', '', 0),
(77, 1, '2018-12-19 00:29:46', '2018-12-19 00:29:46', '', 'icoOfertas', '', 'inherit', 'closed', 'closed', '', 'icoofertas', '', '', '2018-12-19 00:29:46', '2018-12-19 00:29:46', '', 76, 'http://presco.gomserver.net/cms/wp-content/uploads/2018/12/icoOfertas.png', 0, 'attachment', 'image/png', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(78, 1, '2018-12-19 00:29:51', '2018-12-19 00:29:51', '<!-- wp:paragraph -->\n<p>Contamos con una sólida experiencia en el suministro de personal Costa Afuera para empresas nacionales e internacionales del sector energético.</p>\n<!-- /wp:paragraph -->', 'Ver ofertas de trabajo', '', 'inherit', 'closed', 'closed', '', '76-revision-v1', '', '', '2018-12-19 00:29:51', '2018-12-19 00:29:51', '', 76, 'http://presco.gomserver.net/cms/76-revision-v1/', 0, 'revision', '', 0),
(81, 1, '2018-12-19 00:31:13', '2018-12-19 00:31:13', '<!-- wp:paragraph -->\n<p>Continuamente estamos publicando nuevas ofertas y oportunidades para integrarte a nuestro equipo. Sube tu solicitud y nos mantendremos en contacto.</p>\n<!-- /wp:paragraph -->', 'Sube tu CV', '', 'publish', 'closed', 'closed', '', 'sube-tu-cv', '', '', '2018-12-19 00:37:28', '2018-12-19 00:37:28', '', 0, 'http://presco.gomserver.net/cms/?p=81', 0, 'post', '', 0),
(82, 1, '2018-12-19 00:31:06', '2018-12-19 00:31:06', '', 'icoSube', '', 'inherit', 'closed', 'closed', '', 'icosube', '', '', '2018-12-19 00:31:06', '2018-12-19 00:31:06', '', 81, 'http://presco.gomserver.net/cms/wp-content/uploads/2018/12/icoSube.png', 0, 'attachment', 'image/png', 0),
(83, 1, '2018-12-19 00:31:13', '2018-12-19 00:31:13', '<!-- wp:paragraph -->\n<p>Continuamente estamos publicando nuevas ofertas y oportunidades para integrarte a nuestro equipo. Sube tu solicitud y nos mantendremos en contacto.</p>\n<!-- /wp:paragraph -->', 'Sube tu CV', '', 'inherit', 'closed', 'closed', '', '81-revision-v1', '', '', '2018-12-19 00:31:13', '2018-12-19 00:31:13', '', 81, 'http://presco.gomserver.net/cms/81-revision-v1/', 0, 'revision', '', 0),
(84, 1, '2018-12-19 00:35:03', '2018-12-19 00:35:03', '<!-- wp:paragraph -->\n<p>Contamos con una sólida experiencia en el suministro de personal Costa Afuera para empresas nacionales e internacionales del sector energético. 2</p>\n<!-- /wp:paragraph -->', 'Ver ofertas de trabajo', '', 'inherit', 'closed', 'closed', '', '76-revision-v1', '', '', '2018-12-19 00:35:03', '2018-12-19 00:35:03', '', 76, 'http://presco.gomserver.net/cms/76-revision-v1/', 0, 'revision', '', 0),
(85, 1, '2018-12-19 00:35:23', '2018-12-19 00:35:23', '<!-- wp:paragraph -->\n<p>Contamos con una sólida experiencia en el suministro de personal Costa Afuera para empresas nacionales e internacionales del sector energético.</p>\n<!-- /wp:paragraph -->', 'Ver ofertas de trabajo 2', '', 'inherit', 'closed', 'closed', '', '76-revision-v1', '', '', '2018-12-19 00:35:23', '2018-12-19 00:35:23', '', 76, 'http://presco.gomserver.net/cms/76-revision-v1/', 0, 'revision', '', 0),
(86, 1, '2018-12-19 00:35:33', '2018-12-19 00:35:33', '<!-- wp:paragraph -->\n<p>Contamos con una sólida experiencia en el suministro de personal Costa Afuera para empresas nacionales e internacionales del sector energético.</p>\n<!-- /wp:paragraph -->', 'Ver ofertas de trabajo', '', 'inherit', 'closed', 'closed', '', '76-revision-v1', '', '', '2018-12-19 00:35:33', '2018-12-19 00:35:33', '', 76, 'http://presco.gomserver.net/cms/76-revision-v1/', 0, 'revision', '', 0),
(88, 1, '2018-12-19 00:37:28', '2018-12-19 00:37:28', '<!-- wp:paragraph -->\n<p>Continuamente estamos publicando nuevas ofertas y oportunidades para integrarte a nuestro equipo. Sube tu solicitud y nos mantendremos en contacto.</p>\n<!-- /wp:paragraph -->', 'Sube tu CV', '', 'inherit', 'closed', 'closed', '', '81-revision-v1', '', '', '2018-12-19 00:37:28', '2018-12-19 00:37:28', '', 81, 'http://presco.gomserver.net/cms/81-revision-v1/', 0, 'revision', '', 0),
(87, 1, '2018-12-19 00:37:09', '2018-12-19 00:37:09', '<!-- wp:paragraph -->\n<p>Continuamente estamos publicando nuevas ofertas y oportunidades para integrarte a nuestro equipo. Sube tu solicitud y nos mantendremos en contacto.2</p>\n<!-- /wp:paragraph -->', 'Sube tu CV2', '', 'inherit', 'closed', 'closed', '', '81-revision-v1', '', '', '2018-12-19 00:37:09', '2018-12-19 00:37:09', '', 81, 'http://presco.gomserver.net/cms/81-revision-v1/', 0, 'revision', '', 0),
(89, 1, '2018-12-19 00:42:14', '2018-12-19 00:42:14', '<!-- wp:html -->\n<ul class=\"Contacto-List\">\n                                <li class=\"Contacto-icoDireccionList\">\n                                    <p>\n                                        Calle 47, No. 80 Col. Tecolutla, C.P. 24140 Ciudad del Carmen, Campeche, Mexico.\n                                    </p>\n                                </li>\n                                <li class=\"Contacto-icoTelefonoList\">\n                                    +52 01 (938) 286 1356\n                                </li>\n                                <li class=\"Contacto-icoEmailList\">\n                                    <p>Clientes: <a href=\"mailto:ventas@presco.mx\">ventas@presco.mx</a></p>\n                                    <p>Proveedores: <a href=\"mailto:compras@presco.mx\">compras@presco.mx</a></p>\n                                </li>\n                            </ul>\n<!-- /wp:html -->', 'Datos de contacto', '', 'publish', 'closed', 'closed', '', 'contactanos', '', '', '2018-12-19 00:43:55', '2018-12-19 00:43:55', '', 0, 'http://presco.gomserver.net/cms/?p=89', 0, 'post', '', 0),
(90, 1, '2018-12-19 00:42:14', '2018-12-19 00:42:14', '<!-- wp:html -->\n<ul class=\"Contacto-List\">\n                                <li class=\"Contacto-icoDireccionList\">\n                                    <p>\n                                        Calle 47, No. 80 Col. Tecolutla, C.P. 24140 Ciudad del Carmen, Campeche, Mexico.\n                                    </p>\n                                </li>\n                                <li class=\"Contacto-icoTelefonoList\">\n                                    +52 01 (938) 286 1356\n                                </li>\n                                <li class=\"Contacto-icoEmailList\">\n                                    <p>Clientes: <a href=\"mailto:ventas@presco.mx\">ventas@presco.mx</a></p>\n                                    <p>Proveedores: <a href=\"mailto:compras@presco.mx\">compras@presco.mx</a></p>\n                                </li>\n                            </ul>\n<!-- /wp:html -->', 'Contactanos', '', 'inherit', 'closed', 'closed', '', '89-revision-v1', '', '', '2018-12-19 00:42:14', '2018-12-19 00:42:14', '', 89, 'http://presco.gomserver.net/cms/89-revision-v1/', 0, 'revision', '', 0),
(93, 1, '2018-12-19 00:46:15', '2018-12-19 00:46:15', '<!-- wp:paragraph -->\n<p>Nuestros ejecutivos le brindaran servicio y asesoría hasta su empresa, con rapidez puntualidad y profesionalismo. Si desea más información no dude en contactarnos.</p>\n<!-- /wp:paragraph -->', 'Contáctanos', '', 'publish', 'closed', 'closed', '', 'contactanos-2', '', '', '2018-12-27 23:20:11', '2018-12-27 23:20:11', '', 0, 'http://presco.gomserver.net/cms/?p=93', 0, 'post', '', 0),
(94, 1, '2018-12-19 00:46:15', '2018-12-19 00:46:15', '<!-- wp:paragraph -->\n<p>Nuestros ejecutivos le brindaran servicio y asesoría hasta su empresa, con rapidez puntualidad y profesionalismo.Si desea más información no dude en contactarnos.</p>\n<!-- /wp:paragraph -->', 'Contáctanos', '', 'inherit', 'closed', 'closed', '', '93-revision-v1', '', '', '2018-12-19 00:46:15', '2018-12-19 00:46:15', '', 93, 'http://presco.gomserver.net/cms/93-revision-v1/', 0, 'revision', '', 0),
(95, 1, '2018-12-19 00:47:37', '2018-12-19 00:47:37', '<!-- wp:paragraph -->\n<p>Nuestros ejecutivos le brindaran servicio y asesoría hasta su empresa, con rapidez puntualidad y profesionalismo.Si desea más información no dude en contactarnos.2</p>\n<!-- /wp:paragraph -->', 'Contáctanos', '', 'inherit', 'closed', 'closed', '', '93-revision-v1', '', '', '2018-12-19 00:47:37', '2018-12-19 00:47:37', '', 93, 'http://presco.gomserver.net/cms/93-revision-v1/', 0, 'revision', '', 0),
(92, 1, '2018-12-19 00:43:53', '2018-12-19 00:43:53', '<!-- wp:html -->\n<ul class=\"Contacto-List\">\n                                <li class=\"Contacto-icoDireccionList\">\n                                    <p>\n                                        Calle 47, No. 80 Col. Tecolutla, C.P. 24140 Ciudad del Carmen, Campeche, Mexico.\n                                    </p>\n                                </li>\n                                <li class=\"Contacto-icoTelefonoList\">\n                                    +52 01 (938) 286 1356\n                                </li>\n                                <li class=\"Contacto-icoEmailList\">\n                                    <p>Clientes: <a href=\"mailto:ventas@presco.mx\">ventas@presco.mx</a></p>\n                                    <p>Proveedores: <a href=\"mailto:compras@presco.mx\">compras@presco.mx</a></p>\n                                </li>\n                            </ul>\n<!-- /wp:html -->', 'Datos de contacto', '', 'inherit', 'closed', 'closed', '', '89-revision-v1', '', '', '2018-12-19 00:43:53', '2018-12-19 00:43:53', '', 89, 'http://presco.gomserver.net/cms/89-revision-v1/', 0, 'revision', '', 0),
(96, 1, '2018-12-19 00:47:47', '2018-12-19 00:47:47', '<!-- wp:paragraph -->\n<p>Nuestros ejecutivos le brindaran servicio y asesoría hasta su empresa, con rapidez puntualidad y profesionalismo.Si desea más información no dude en contactarnos.</p>\n<!-- /wp:paragraph -->', 'Contáctanos', '', 'inherit', 'closed', 'closed', '', '93-revision-v1', '', '', '2018-12-19 00:47:47', '2018-12-19 00:47:47', '', 93, 'http://presco.gomserver.net/cms/93-revision-v1/', 0, 'revision', '', 0),
(99, 1, '2018-12-19 19:15:53', '2018-12-19 19:15:53', '<!-- wp:paragraph -->\n<p>ISN proporciona una base de datos de gestión de contratistas en línea, ISNetworld, que está diseñada para cumplir con los requisitos de registro internos y gubernamentales y con los requisitos normativos. ISN recopila información de salud y seguridad, de contratación, de calidad y normativa. Los expertos en áreas específicas de ISN revisan y verifican esta información para evaluar la exactitud, relevancia y vigencia de los datos. El contacto de los clientes de contratación con contratistas y proveedores seguros, confiables y sostenibles de todo el mundo permite que estas organizaciones utilicen ISN como parte integral de sus sistemas administrativos. Para obtener más información</p>\n<!-- /wp:paragraph -->', 'Certificación 3', '', 'inherit', 'closed', 'closed', '', '66-revision-v1', '', '', '2018-12-19 19:15:53', '2018-12-19 19:15:53', '', 66, 'http://presco.gomserver.net/cms/66-revision-v1/', 0, 'revision', '', 0),
(100, 1, '2018-12-19 19:16:12', '2018-12-19 19:16:12', '<!-- wp:paragraph -->\n<p>La norma mexicana para la igualdad laboral y no discriminación (NMX-R025-SCFI-2015) establece los requisitos para que los centros de trabajo públicos, privados y sociales, de cualquier actividad y tamaño, integren, implementen y ejecuten dentro de sus procesos de gestión y de recursos humanos, prácticas para la igualdad laboral y no discriminación que favorezcan el desarrollo integral de las y los trabajadores</p>\n<!-- /wp:paragraph -->', 'Certificación 4', '', 'inherit', 'closed', 'closed', '', '69-revision-v1', '', '', '2018-12-19 19:16:12', '2018-12-19 19:16:12', '', 69, 'http://presco.gomserver.net/cms/69-revision-v1/', 0, 'revision', '', 0),
(101, 1, '2018-12-19 19:17:24', '2018-12-19 19:17:24', '<!-- wp:paragraph -->\n<p>Número D-U-N-S D&amp;B es una secuencia de identificación de nueve dígitos distintiva de D&amp;B, el cual lo enlaza a información de calidad sobre productos y servicios originados exclusivamente en D&amp;B. Este código tiende a convertirse en el estándar universal en todo el comercio electrónico, incluyendo transacciones por Internet.</p>\n<!-- /wp:paragraph -->', 'Certificación 5', '', 'publish', 'closed', 'closed', '', 'certificacion-5', '', '', '2018-12-19 19:19:49', '2018-12-19 19:19:49', '', 0, 'http://presco.gomserver.net/cms/?p=101', 0, 'post', '', 0),
(104, 1, '2018-12-19 19:19:43', '2018-12-19 19:19:43', '', 'duns', '', 'inherit', 'closed', 'closed', '', 'duns', '', '', '2018-12-19 19:19:43', '2018-12-19 19:19:43', '', 101, 'http://presco.gomserver.net/cms/wp-content/uploads/2018/12/duns.png', 0, 'attachment', 'image/png', 0),
(103, 1, '2018-12-19 19:17:24', '2018-12-19 19:17:24', '<!-- wp:paragraph -->\n<p>Número D-U-N-S D&amp;B es una secuencia de identificación de nueve dígitos distintiva de D&amp;B, el cual lo enlaza a información de calidad sobre productos y servicios originados exclusivamente en D&amp;B. Este código tiende a convertirse en el estándar universal en todo el comercio electrónico, incluyendo transacciones por Internet.</p>\n<!-- /wp:paragraph -->', 'Certificación 5', '', 'inherit', 'closed', 'closed', '', '101-revision-v1', '', '', '2018-12-19 19:17:24', '2018-12-19 19:17:24', '', 101, 'http://presco.gomserver.net/cms/101-revision-v1/', 0, 'revision', '', 0),
(105, 1, '2018-12-19 20:19:06', '2018-12-19 20:19:06', '', 'We develop integral solutions for human resources, personnel supply, protective equipment and commercialization of industrial textiles.', '', 'publish', 'closed', 'closed', '', 'we-develop-integral-solutions-for-human-resources-supply-of-personal-protective-equipment-and-commercialization-of-textiles', '', '', '2018-12-28 01:39:57', '2018-12-28 01:39:57', '', 0, 'http://presco.gomserver.net/cms/?p=105', 0, 'post', '', 0),
(106, 1, '2018-12-19 20:19:06', '2018-12-19 20:19:06', '', 'We develop integral solutions for human resources, supply of personal protective  equipment and commercialization of textiles.', '', 'inherit', 'closed', 'closed', '', '105-revision-v1', '', '', '2018-12-19 20:19:06', '2018-12-19 20:19:06', '', 105, 'http://presco.gomserver.net/cms/105-revision-v1/', 0, 'revision', '', 0),
(107, 1, '2018-12-19 20:22:31', '2018-12-19 20:22:31', '<!-- wp:paragraph -->\n<p>We are a <strong>100% mexican company</strong>  specialized to <strong>provide integral solutions for human resources, supply of personal, protective equipment and commercialization of industrial textiles.</strong></p>\n<!-- /wp:paragraph -->', 'About us', '', 'publish', 'closed', 'closed', '', 'about-us', '', '', '2018-12-28 01:50:23', '2018-12-28 01:50:23', '', 0, 'http://presco.gomserver.net/cms/?p=107', 0, 'post', '', 0),
(108, 1, '2018-12-19 20:22:31', '2018-12-19 20:22:31', '<!-- wp:paragraph -->\n<p>We are a<strong> 100% mexican company</strong>  specialized to <strong>provide integral solutions forhuman resources, supply of personal protective equipment and commercializationof textiles.</strong></p>\n<!-- /wp:paragraph -->', 'About us', '', 'inherit', 'closed', 'closed', '', '107-revision-v1', '', '', '2018-12-19 20:22:31', '2018-12-19 20:22:31', '', 107, 'http://presco.gomserver.net/cms/107-revision-v1/', 0, 'revision', '', 0),
(109, 1, '2018-12-19 20:25:41', '2018-12-19 20:25:41', '<!-- wp:paragraph -->\n<p>Currently our headquarter is located in <strong>Ciudad del Carmen, Campeche </strong>in order to provide services in the <strong>energy sector</strong>, tourismand export sector.</p>\n<!-- /wp:paragraph -->', 'Texto 1 lista', '', 'publish', 'closed', 'closed', '', 'texto-1-lista-2', '', '', '2018-12-19 20:25:42', '2018-12-19 20:25:42', '', 0, 'http://presco.gomserver.net/cms/?p=109', 0, 'post', '', 0),
(110, 1, '2018-12-19 20:25:41', '2018-12-19 20:25:41', '<!-- wp:paragraph -->\n<p>Currently our headquarter is located in <strong>Ciudad del Carmen, Campeche </strong>in order to provide services in the <strong>energy sector</strong>, tourismand export sector.</p>\n<!-- /wp:paragraph -->', 'Texto 1 lista', '', 'inherit', 'closed', 'closed', '', '109-revision-v1', '', '', '2018-12-19 20:25:41', '2018-12-19 20:25:41', '', 109, 'http://presco.gomserver.net/cms/109-revision-v1/', 0, 'revision', '', 0),
(111, 1, '2018-12-19 20:27:26', '2018-12-19 20:27:26', '<!-- wp:paragraph -->\n<p>We have <strong>a wide experience in the market</strong> accompanied bythe vision and support of CEMZA, as well as the resources and alternativesnecessary to meet the requirements of our clients.</p>\n<!-- /wp:paragraph -->', 'Texto 2 lista', '', 'publish', 'closed', 'closed', '', 'texto-2-lista-2', '', '', '2018-12-28 01:46:34', '2018-12-28 01:46:34', '', 0, 'http://presco.gomserver.net/cms/?p=111', 0, 'post', '', 0),
(112, 1, '2018-12-19 20:27:26', '2018-12-19 20:27:26', '<!-- wp:paragraph -->\n<p>We have <strong>9 years of experience in the market</strong> accompanied bythe vision and support of CEMZA, as well as the resources and alternativesnecessary to meet the requirements of our clients.</p>\n<!-- /wp:paragraph -->', 'Texto 2 lista', '', 'inherit', 'closed', 'closed', '', '111-revision-v1', '', '', '2018-12-19 20:27:26', '2018-12-19 20:27:26', '', 111, 'http://presco.gomserver.net/cms/111-revision-v1/', 0, 'revision', '', 0),
(113, 1, '2018-12-19 20:34:25', '2018-12-19 20:34:25', '<!-- wp:paragraph -->\n<p>We have the personnel, capacity and resources to meet the\nneeds of the industry.</p>\n<!-- /wp:paragraph -->', 'Services', '', 'publish', 'closed', 'closed', '', 'our-services', '', '', '2018-12-28 01:43:01', '2018-12-28 01:43:01', '', 0, 'http://presco.gomserver.net/cms/?p=113', 0, 'post', '', 0),
(114, 1, '2018-12-19 20:34:25', '2018-12-19 20:34:25', '<!-- wp:paragraph -->\n<p>We have the personnel, capacity and resources to meet the\nneeds of the industry.</p>\n<!-- /wp:paragraph -->', 'Our services', '', 'inherit', 'closed', 'closed', '', '113-revision-v1', '', '', '2018-12-19 20:34:25', '2018-12-19 20:34:25', '', 113, 'http://presco.gomserver.net/cms/113-revision-v1/', 0, 'revision', '', 0),
(115, 1, '2018-12-19 20:41:46', '2018-12-19 20:41:46', '<!-- wp:paragraph -->\n<p>In PRESCO we seek to be your ally in the search andefficiently supply operational, administrative and executive talent, through:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list -->\n<ul><li>Selective and massive recruitment</li><li>Efficient selection according to position</li><li>Specialized executive HeadHunting</li></ul>\n<!-- /wp:list -->', 'Recruitment and selection', '', 'publish', 'closed', 'closed', '', 'recruitment-and-selection', '', '', '2018-12-19 20:42:44', '2018-12-19 20:42:44', '', 0, 'http://presco.gomserver.net/cms/?p=115', 0, 'post', '', 0),
(116, 1, '2018-12-19 20:41:46', '2018-12-19 20:41:46', '<!-- wp:paragraph -->\n<p>In PRESCO we seek to be your ally in the search andefficiently supply operational, administrative and executive talent, through:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list -->\n<ul><li>Selective and massive recruitment</li><li>Efficient selection according to position</li><li>Specialized executive HeadHunting</li></ul>\n<!-- /wp:list -->', 'Recruitment and selection', '', 'inherit', 'closed', 'closed', '', '115-revision-v1', '', '', '2018-12-19 20:41:46', '2018-12-19 20:41:46', '', 115, 'http://presco.gomserver.net/cms/115-revision-v1/', 0, 'revision', '', 0),
(117, 1, '2018-12-19 20:44:37', '2018-12-19 20:44:37', '<!-- wp:paragraph -->\n<p>\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\nIn PRESCO we offer you a complete or partial\nservice related to the payroll process, including salaries, bonuses,\ncompensations and deductions. We compile and manage information and work\ncontracts. Our service allows you to have professionals specialized in the\ncalculation, determination of taxes and derivatives of the entire payroll\nprocess giving you the confidence that the information provided is true and in\nfull compliance with the law.\n\n\n\n</p>\n<!-- /wp:paragraph -->', 'Hiring, payroll, taxes, benefits and others', '', 'publish', 'closed', 'closed', '', 'hiring-payroll-taxes-benefits-and-others', '', '', '2018-12-19 20:44:38', '2018-12-19 20:44:38', '', 0, 'http://presco.gomserver.net/cms/?p=117', 0, 'post', '', 0),
(118, 1, '2018-12-19 20:44:37', '2018-12-19 20:44:37', '<!-- wp:paragraph -->\n<p>\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\nIn PRESCO we offer you a complete or partial\nservice related to the payroll process, including salaries, bonuses,\ncompensations and deductions. We compile and manage information and work\ncontracts. Our service allows you to have professionals specialized in the\ncalculation, determination of taxes and derivatives of the entire payroll\nprocess giving you the confidence that the information provided is true and in\nfull compliance with the law.\n\n\n\n</p>\n<!-- /wp:paragraph -->', 'Hiring, payroll, taxes, benefits and others', '', 'inherit', 'closed', 'closed', '', '117-revision-v1', '', '', '2018-12-19 20:44:37', '2018-12-19 20:44:37', '', 117, 'http://presco.gomserver.net/cms/117-revision-v1/', 0, 'revision', '', 0),
(119, 1, '2018-12-19 20:46:11', '2018-12-19 20:46:11', '<!-- wp:paragraph -->\n<p>At PRESCO we train our personnel in work safety and offshore personnel development, such as: Security with the Advanced H2S, Evacuation and Rescue Search Brigade, Huet, T Bosiet, Helicopter Landing Officer, among many others. </p>\n<!-- /wp:paragraph -->', 'Courses and Certifications with strategic alliances', '', 'publish', 'closed', 'closed', '', 'certified-opito-courses-through-our-partnership-with-falck-safety-services-and-others', '', '', '2018-12-28 01:44:50', '2018-12-28 01:44:50', '', 0, 'http://presco.gomserver.net/cms/?p=119', 0, 'post', '', 0),
(180, 1, '2018-12-28 01:44:00', '2018-12-28 01:44:00', '<!-- wp:paragraph -->\n<p>At PRESCO we train our personnel in work safety and offshore personnel development, such as: Security with the Advanced H2S, Evacuation and Rescue Search Brigade, Huet, T Bosiet, Helicopter Landing Officer, among many others. </p>\n<!-- /wp:paragraph -->', 'Courses and Certifications with strategic alliances', '', 'inherit', 'closed', 'closed', '', '119-revision-v1', '', '', '2018-12-28 01:44:00', '2018-12-28 01:44:00', '', 119, 'http://presco.gomserver.net/cms/119-revision-v1/', 0, 'revision', '', 0),
(120, 1, '2018-12-19 20:46:11', '2018-12-19 20:46:11', '<!-- wp:paragraph -->\n<p>\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\nAt PRESCO we train our personnel in work safety and\noffshore personnel development, such as: Security with the Advanced H2S, Evacuation\nand Rescue Search Brigade, Huet, T Bosiet, Helicopter Landing Officer, among\nmany others.\n\n\n\n</p>\n<!-- /wp:paragraph -->', 'Certified OPITO courses through our partnership with falck safety services and others', '', 'inherit', 'closed', 'closed', '', '119-revision-v1', '', '', '2018-12-19 20:46:11', '2018-12-19 20:46:11', '', 119, 'http://presco.gomserver.net/cms/119-revision-v1/', 0, 'revision', '', 0),
(121, 1, '2018-12-19 20:47:39', '2018-12-19 20:47:39', '<!-- wp:paragraph -->\n<p>\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\nWe offer an efficient service of transfer and\ntransportation that optimizes the client’s time and resources. We offer\nlogistic service for personnel moves to docks and vessels, in addition to\noffering lodging since we count on agreements with diverse hotels inside and\noutside the city.\n\n\n\n</p>\n<!-- /wp:paragraph -->', 'Personnel logistics', '', 'publish', 'closed', 'closed', '', 'personnel-logistics', '', '', '2018-12-19 20:47:40', '2018-12-19 20:47:40', '', 0, 'http://presco.gomserver.net/cms/?p=121', 0, 'post', '', 0),
(122, 1, '2018-12-19 20:47:39', '2018-12-19 20:47:39', '<!-- wp:paragraph -->\n<p>\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\nWe offer an efficient service of transfer and\ntransportation that optimizes the client’s time and resources. We offer\nlogistic service for personnel moves to docks and vessels, in addition to\noffering lodging since we count on agreements with diverse hotels inside and\noutside the city.\n\n\n\n</p>\n<!-- /wp:paragraph -->', 'Personnel logistics', '', 'inherit', 'closed', 'closed', '', '121-revision-v1', '', '', '2018-12-19 20:47:39', '2018-12-19 20:47:39', '', 121, 'http://presco.gomserver.net/cms/121-revision-v1/', 0, 'revision', '', 0),
(123, 1, '2018-12-19 20:50:01', '0000-00-00 00:00:00', '<!-- wp:paragraph -->\n<p>\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\nWe have a wide catalog of products of the highest\nquality. All our products are certified and meet with current regulations.\n\n\n\n</p>\n<!-- /wp:paragraph -->', 'EPP, uniforms and tools supply', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-12-19 20:50:01', '2018-12-19 20:50:01', '', 0, 'http://presco.gomserver.net/cms/?p=123', 0, 'post', '', 0),
(159, 1, '2018-12-27 22:37:55', '2018-12-27 22:37:55', '<!-- wp:paragraph -->\n<p>Contamos con el personal, capacidad y recursos para atender las necesidades de la industria.</p>\n<!-- /wp:paragraph -->', 'Servicios', '', 'inherit', 'closed', 'closed', '', '27-revision-v1', '', '', '2018-12-27 22:37:55', '2018-12-27 22:37:55', '', 27, 'http://presco.gomserver.net/cms/27-revision-v1/', 0, 'revision', '', 0),
(125, 1, '2018-12-19 21:07:01', '2018-12-19 21:07:01', '<!-- wp:paragraph -->\n<p>We have a wide catalog of products of the highest quality.\nAll our products are certified and meet with current regulations.</p>\n<!-- /wp:paragraph -->', 'PPE, uniforms and tools supply', '', 'publish', 'closed', 'closed', '', 'epp-uniforms-and-tools-supply', '', '', '2018-12-28 01:07:33', '2018-12-28 01:07:33', '', 0, 'http://presco.gomserver.net/cms/?p=125', 0, 'post', '', 0),
(126, 1, '2018-12-19 21:07:01', '2018-12-19 21:07:01', '<!-- wp:paragraph -->\n<p>We have a wide catalog of products of the highest quality.\nAll our products are certified and meet with current regulations.</p>\n<!-- /wp:paragraph -->', 'EPP, uniforms and tools supply', '', 'inherit', 'closed', 'closed', '', '125-revision-v1', '', '', '2018-12-19 21:07:01', '2018-12-19 21:07:01', '', 125, 'http://presco.gomserver.net/cms/125-revision-v1/', 0, 'revision', '', 0),
(127, 1, '2018-12-19 21:10:20', '2018-12-19 21:10:20', '<!-- wp:paragraph -->\n<p>We also have an extensive inventory of steel products, inwhich we can offer structural <strong>steel, plates, pipes &amp; connections, as wellas ABS certified material.</strong></p>\n<!-- /wp:paragraph -->', 'Steel Supply', '', 'publish', 'closed', 'closed', '', 'steel-supply', '', '', '2018-12-19 21:10:21', '2018-12-19 21:10:21', '', 0, 'http://presco.gomserver.net/cms/?p=127', 0, 'post', '', 0),
(128, 1, '2018-12-19 21:09:25', '2018-12-19 21:09:25', '<!-- wp:paragraph -->\n<p>También contamos con un inventario extenso en <strong>productos de acero</strong>, en el cual podemos ofrecer <strong>acero estructural, placas, tuberías &amp; conexiones</strong>. A demás material <strong>certificado en ABS.</strong></p>\n<!-- /wp:paragraph -->', 'Suministro de Acero', '', 'inherit', 'closed', 'closed', '', '50-revision-v1', '', '', '2018-12-19 21:09:25', '2018-12-19 21:09:25', '', 50, 'http://presco.gomserver.net/cms/50-revision-v1/', 0, 'revision', '', 0),
(129, 1, '2018-12-19 21:10:20', '2018-12-19 21:10:20', '<!-- wp:paragraph -->\n<p>We also have an extensive inventory of steel products, inwhich we can offer structural <strong>steel, plates, pipes &amp; connections, as wellas ABS certified material.</strong></p>\n<!-- /wp:paragraph -->', 'Steel Supply', '', 'inherit', 'closed', 'closed', '', '127-revision-v1', '', '', '2018-12-19 21:10:20', '2018-12-19 21:10:20', '', 127, 'http://presco.gomserver.net/cms/127-revision-v1/', 0, 'revision', '', 0),
(130, 1, '2018-12-19 21:13:42', '2018-12-19 21:13:42', '<!-- wp:paragraph -->\n<p>Working with the largest national and international companies encourages us to comply with the highest quality standards and have continuous improvement processes.</p>\n<!-- /wp:paragraph -->', 'Certifications', '', 'publish', 'closed', 'closed', '', 'certifications', '', '', '2018-12-19 21:13:44', '2018-12-19 21:13:44', '', 0, 'http://presco.gomserver.net/cms/?p=130', 0, 'post', '', 0),
(131, 1, '2018-12-19 21:13:42', '2018-12-19 21:13:42', '<!-- wp:paragraph -->\n<p>Working with the largest national and international companies encourages us to comply with the highest quality standards and have continuous improvement processes.</p>\n<!-- /wp:paragraph -->', 'Certifications', '', 'inherit', 'closed', 'closed', '', '130-revision-v1', '', '', '2018-12-19 21:13:42', '2018-12-19 21:13:42', '', 130, 'http://presco.gomserver.net/cms/130-revision-v1/', 0, 'revision', '', 0),
(132, 1, '2018-12-19 21:16:44', '2018-12-19 21:16:44', '<!-- wp:paragraph -->\n<p><strong>Certification in Management Systems:</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>ISO 9001: 2015 QUALITY</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>ISO 14001: 2015 ENVIRONMENT</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>OHSAS 18001: 2007 OCCUPATIONAL HEALTH AND SAFETY</p>\n<!-- /wp:paragraph -->', 'Certification 1', '', 'publish', 'closed', 'closed', '', 'certification-1', '', '', '2018-12-19 21:16:56', '2018-12-19 21:16:56', '', 0, 'http://presco.gomserver.net/cms/?p=132', 0, 'post', '', 0),
(133, 1, '2018-12-19 21:15:41', '2018-12-19 21:15:41', '<!-- wp:paragraph -->\n<p><strong>Certificación en los Sistemas de Gestión:</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>ISO 9001:2015 CALIDAD</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>ISO 14001:2015 MEDIO AMBIENTE</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>OHSAS 18001:2007 SEGURIDAD Y SALUD OCUPACIONAL</p>\n<!-- /wp:paragraph -->', 'Certification 1', '', 'inherit', 'closed', 'closed', '', '59-autosave-v1', '', '', '2018-12-19 21:15:41', '2018-12-19 21:15:41', '', 59, 'http://presco.gomserver.net/cms/59-autosave-v1/', 0, 'revision', '', 0),
(134, 1, '2018-12-19 21:16:44', '2018-12-19 21:16:44', '<!-- wp:paragraph -->\n<p><strong>Certification in Management Systems:</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>ISO 9001: 2015 QUALITY</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>ISO 14001: 2015 ENVIRONMENT</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>OHSAS 18001: 2007 OCCUPATIONAL HEALTH AND SAFETY</p>\n<!-- /wp:paragraph -->', 'Certification 1', '', 'inherit', 'closed', 'closed', '', '132-revision-v1', '', '', '2018-12-19 21:16:44', '2018-12-19 21:16:44', '', 132, 'http://presco.gomserver.net/cms/132-revision-v1/', 0, 'revision', '', 0),
(135, 1, '2018-12-19 21:18:28', '2018-12-19 21:18:28', '<!-- wp:paragraph -->\n<p>TRACE International, Inc. is a globally recognizedanti-bribery business organization and leading provider of third party riskmanagement solutions.</p>\n<!-- /wp:paragraph -->', 'Certification 2', '', 'publish', 'closed', 'closed', '', 'certification-2', '', '', '2018-12-19 21:18:31', '2018-12-19 21:18:31', '', 0, 'http://presco.gomserver.net/cms/?p=135', 0, 'post', '', 0),
(136, 1, '2018-12-19 21:18:28', '2018-12-19 21:18:28', '<!-- wp:paragraph -->\n<p>TRACE International, Inc. is a globally recognizedanti-bribery business organization and leading provider of third party riskmanagement solutions.</p>\n<!-- /wp:paragraph -->', 'Certification 2', '', 'inherit', 'closed', 'closed', '', '135-revision-v1', '', '', '2018-12-19 21:18:28', '2018-12-19 21:18:28', '', 135, 'http://presco.gomserver.net/cms/135-revision-v1/', 0, 'revision', '', 0),
(137, 1, '2018-12-19 21:20:03', '2018-12-19 21:20:03', '<!-- wp:paragraph -->\n<p>\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\nISN provides an online contractor management\ndatabase, ISNetworld, which is designed to meet internal and government\nregistration requirements and regulatory requirements. ISN collects health and\nsafety, contracting, quality and regulatory information. Experts in specific\nareas of ISN review and verify this information to assess the accuracy,\nrelevance and validity of the data. The contact of contracting clients with reliable,\nreliable and sustainable contractors and suppliers from all over the world\nallows these organizations to use ISN as an integral part of their\nadministrative systems.\n\n\n\n</p>\n<!-- /wp:paragraph -->', 'Certification 3', '', 'publish', 'closed', 'closed', '', 'certification-3', '', '', '2018-12-19 21:20:05', '2018-12-19 21:20:05', '', 0, 'http://presco.gomserver.net/cms/?p=137', 0, 'post', '', 0),
(138, 1, '2018-12-19 21:20:03', '2018-12-19 21:20:03', '<!-- wp:paragraph -->\n<p>\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\nISN provides an online contractor management\ndatabase, ISNetworld, which is designed to meet internal and government\nregistration requirements and regulatory requirements. ISN collects health and\nsafety, contracting, quality and regulatory information. Experts in specific\nareas of ISN review and verify this information to assess the accuracy,\nrelevance and validity of the data. The contact of contracting clients with reliable,\nreliable and sustainable contractors and suppliers from all over the world\nallows these organizations to use ISN as an integral part of their\nadministrative systems.\n\n\n\n</p>\n<!-- /wp:paragraph -->', 'Certification 3', '', 'inherit', 'closed', 'closed', '', '137-revision-v1', '', '', '2018-12-19 21:20:03', '2018-12-19 21:20:03', '', 137, 'http://presco.gomserver.net/cms/137-revision-v1/', 0, 'revision', '', 0),
(139, 1, '2018-12-19 21:21:17', '2018-12-19 21:21:17', '<!-- wp:paragraph -->\n<p>\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\nThe Mexican norm for labor equality and\nnon-discrimination (NMX-R-025-SCFI-2015) establishes the requirements for\npublic, private and social work centers, of any activity and size, to\nintegrate, implement and execute within their processes of management and human\nresources, practices for labor equality and non-discrimination that favor the\nintegral development of workers.\n\n\n\n</p>\n<!-- /wp:paragraph -->', 'Certification 4', '', 'publish', 'closed', 'closed', '', 'certification-4', '', '', '2018-12-19 21:21:20', '2018-12-19 21:21:20', '', 0, 'http://presco.gomserver.net/cms/?p=139', 0, 'post', '', 0),
(140, 1, '2018-12-19 21:21:17', '2018-12-19 21:21:17', '<!-- wp:paragraph -->\n<p>\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\nThe Mexican norm for labor equality and\nnon-discrimination (NMX-R-025-SCFI-2015) establishes the requirements for\npublic, private and social work centers, of any activity and size, to\nintegrate, implement and execute within their processes of management and human\nresources, practices for labor equality and non-discrimination that favor the\nintegral development of workers.\n\n\n\n</p>\n<!-- /wp:paragraph -->', 'Certification 4', '', 'inherit', 'closed', 'closed', '', '139-revision-v1', '', '', '2018-12-19 21:21:17', '2018-12-19 21:21:17', '', 139, 'http://presco.gomserver.net/cms/139-revision-v1/', 0, 'revision', '', 0),
(141, 1, '2018-12-19 21:24:51', '2018-12-19 21:24:51', '<!-- wp:paragraph -->\n<p>Number D-U-N-S D &amp; B is an identification sequence of\nnine\n\nglobally recognized and distinctive digits of D\n&amp; B, which links it to quality information about products and services\noriginated exclusively in D &amp; B. This code tends to become the universal\nstandard in all electronic commerce, including Internet transactions.\n\n\n\n</p>\n<!-- /wp:paragraph -->', 'Certification 5', '', 'publish', 'closed', 'closed', '', 'certification-5', '', '', '2018-12-19 21:24:52', '2018-12-19 21:24:52', '', 0, 'http://presco.gomserver.net/cms/?p=141', 0, 'post', '', 0),
(142, 1, '2018-12-19 21:24:51', '2018-12-19 21:24:51', '<!-- wp:paragraph -->\n<p>Number D-U-N-S D &amp; B is an identification sequence of\nnine\n\nglobally recognized and distinctive digits of D\n&amp; B, which links it to quality information about products and services\noriginated exclusively in D &amp; B. This code tends to become the universal\nstandard in all electronic commerce, including Internet transactions.\n\n\n\n</p>\n<!-- /wp:paragraph -->', 'Certification 5', '', 'inherit', 'closed', 'closed', '', '141-revision-v1', '', '', '2018-12-19 21:24:51', '2018-12-19 21:24:51', '', 141, 'http://presco.gomserver.net/cms/141-revision-v1/', 0, 'revision', '', 0),
(143, 1, '2018-12-19 21:33:28', '2018-12-19 21:33:28', '<!-- wp:paragraph -->\n<p>We have solid experience in the <strong>offshore personnel supply for national and international</strong> companies in the energy sector. We are continuously publishing new offers and opportunities to join our team.</p>\n<!-- /wp:paragraph -->', 'Talent Hunting', '', 'publish', 'closed', 'closed', '', 'talent-hunting', '', '', '2018-12-31 04:58:10', '2018-12-31 04:58:10', '', 0, 'http://presco.gomserver.net/cms/?p=143', 0, 'post', '', 0),
(144, 1, '2018-12-19 21:33:28', '2018-12-19 21:33:28', '<!-- wp:paragraph -->\n<p>Always growing and being on our side. <br>These are the job opportunities for you to join us.</p>\n<!-- /wp:paragraph -->', 'Talent Hunting', '', 'inherit', 'closed', 'closed', '', '143-revision-v1', '', '', '2018-12-19 21:33:28', '2018-12-19 21:33:28', '', 143, 'http://presco.gomserver.net/cms/143-revision-v1/', 0, 'revision', '', 0),
(145, 1, '2018-12-19 21:35:14', '2018-12-19 21:35:14', '<!-- wp:paragraph -->\n<p>\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\nWe have solid experience in the supply of offshore\npersonnel for national and international companies in the energy sector.\n\n\n\n</p>\n<!-- /wp:paragraph -->', 'Job vacancies', '', 'publish', 'closed', 'closed', '', 'job-vacancies', '', '', '2018-12-19 21:35:39', '2018-12-19 21:35:39', '', 0, 'http://presco.gomserver.net/cms/?p=145', 0, 'post', '', 0),
(146, 1, '2018-12-19 21:35:14', '2018-12-19 21:35:14', '<!-- wp:paragraph -->\n<p>\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\nWe have solid experience in the supply of offshore\npersonnel for national and international companies in the energy sector.\n\n\n\n</p>\n<!-- /wp:paragraph -->', 'Job vacancies', '', 'inherit', 'closed', 'closed', '', '145-revision-v1', '', '', '2018-12-19 21:35:14', '2018-12-19 21:35:14', '', 145, 'http://presco.gomserver.net/cms/145-revision-v1/', 0, 'revision', '', 0),
(147, 1, '2018-12-19 21:39:15', '2018-12-19 21:39:15', '<!-- wp:paragraph -->\n<p>We are continuously publishing new offers and opportunities\nto join our team. Upload your request and we will keep in touch.</p>\n<!-- /wp:paragraph -->', 'Upload your resume', '', 'publish', 'closed', 'closed', '', 'upload-your-resume', '', '', '2018-12-19 21:39:17', '2018-12-19 21:39:17', '', 0, 'http://presco.gomserver.net/cms/?p=147', 0, 'post', '', 0),
(148, 1, '2018-12-19 21:39:15', '2018-12-19 21:39:15', '<!-- wp:paragraph -->\n<p>We are continuously publishing new offers and opportunities\nto join our team. Upload your request and we will keep in touch.</p>\n<!-- /wp:paragraph -->', 'Upload your resume', '', 'inherit', 'closed', 'closed', '', '147-revision-v1', '', '', '2018-12-19 21:39:15', '2018-12-19 21:39:15', '', 147, 'http://presco.gomserver.net/cms/147-revision-v1/', 0, 'revision', '', 0),
(149, 1, '2018-12-19 21:44:33', '2018-12-19 21:44:33', '<!-- wp:list {\"className\":\"Contacto-List\"} -->\n<ul class=\"Contacto-List\"><li class=\"Contacto-icoDireccionList\">\n                                    <p>\n                                        Calle 47, No. 80 Col. Tecolutla, C.P. 24140 Ciudad del Carmen, Campeche, Mexico.\n                                    </p>\n                                </li><li class=\"Contacto-icoTelefonoList\">\n                                    +52 01 (938) 286 1356\n                                </li><li class=\"Contacto-icoEmailList\">\n                                    <p>Clientes: <a href=\"mailto:ventas@presco.mx\">ventas@presco.mx</a></p>\n                                    <p>Proveedores: <a href=\"mailto:compras@presco.mx\">compras@presco.mx</a></p>\n                                </li></ul>\n<!-- /wp:list -->', 'Datos de contacto', '', 'publish', 'closed', 'closed', '', 'datos-de-contacto', '', '', '2018-12-19 21:45:42', '2018-12-19 21:45:42', '', 0, 'http://presco.gomserver.net/cms/?p=149', 0, 'post', '', 0),
(151, 1, '2018-12-19 21:44:52', '2018-12-19 21:44:52', '<!-- wp:list {\"className\":\"Contacto-List\"} -->\n<ul class=\"Contacto-List\"><li>                                    <p>                                        Calle 47, No. 80 Col. Tecolutla, C.P. 24140 Ciudad del Carmen, Campeche, Mexico.                                    </p>                                </li><li>                                    +52 01 (938) 286 1356                                </li><li>                                    <p>Clientes2: <a href=\"mailto:ventas@presco.mx\">ventas@presco.mx</a></p>                                    <p>Proveedores: <a href=\"mailto:compras@presco.mx\">compras@presco.mx</a></p>                                </li></ul>\n<!-- /wp:list -->', 'Datos de contacto', '', 'inherit', 'closed', 'closed', '', '149-revision-v1', '', '', '2018-12-19 21:44:52', '2018-12-19 21:44:52', '', 149, 'http://presco.gomserver.net/cms/149-revision-v1/', 0, 'revision', '', 0),
(150, 1, '2018-12-19 21:44:33', '2018-12-19 21:44:33', '<!-- wp:list {\"className\":\"Contacto-List\"} -->\n<ul class=\"Contacto-List\"><li class=\"Contacto-icoDireccionList\">\n                                    <p>\n                                        Calle 47, No. 80 Col. Tecolutla, C.P. 24140 Ciudad del Carmen, Campeche, Mexico.\n                                    </p>\n                                </li><li class=\"Contacto-icoTelefonoList\">\n                                    +52 01 (938) 286 1356\n                                </li><li class=\"Contacto-icoEmailList\">\n                                    <p>Clientes: <a href=\"mailto:ventas@presco.mx\">ventas@presco.mx</a></p>\n                                    <p>Proveedores: <a href=\"mailto:compras@presco.mx\">compras@presco.mx</a></p>\n                                </li></ul>\n<!-- /wp:list -->', 'Datos de contacto', '', 'inherit', 'closed', 'closed', '', '149-revision-v1', '', '', '2018-12-19 21:44:33', '2018-12-19 21:44:33', '', 149, 'http://presco.gomserver.net/cms/149-revision-v1/', 0, 'revision', '', 0),
(152, 1, '2018-12-19 21:45:41', '2018-12-19 21:45:41', '<!-- wp:list {\"className\":\"Contacto-List\"} -->\n<ul class=\"Contacto-List\"><li class=\"Contacto-icoDireccionList\">\n                                    <p>\n                                        Calle 47, No. 80 Col. Tecolutla, C.P. 24140 Ciudad del Carmen, Campeche, Mexico.\n                                    </p>\n                                </li><li class=\"Contacto-icoTelefonoList\">\n                                    +52 01 (938) 286 1356\n                                </li><li class=\"Contacto-icoEmailList\">\n                                    <p>Clientes: <a href=\"mailto:ventas@presco.mx\">ventas@presco.mx</a></p>\n                                    <p>Proveedores: <a href=\"mailto:compras@presco.mx\">compras@presco.mx</a></p>\n                                </li></ul>\n<!-- /wp:list -->', 'Datos de contacto', '', 'inherit', 'closed', 'closed', '', '149-revision-v1', '', '', '2018-12-19 21:45:41', '2018-12-19 21:45:41', '', 149, 'http://presco.gomserver.net/cms/149-revision-v1/', 0, 'revision', '', 0),
(153, 1, '2018-12-19 21:46:54', '2018-12-19 21:46:54', '<!-- wp:paragraph -->\n<p>\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\nOur executives will provide service and advice to\nyour company, with promptness and professionalism. If you want more\ninformation, don’t hesitate to contact us.\n\n\n\n</p>\n<!-- /wp:paragraph -->', 'Contact Us', '', 'publish', 'closed', 'closed', '', 'contact-us', '', '', '2018-12-19 21:46:56', '2018-12-19 21:46:56', '', 0, 'http://presco.gomserver.net/cms/?p=153', 0, 'post', '', 0),
(154, 1, '2018-12-19 21:46:54', '2018-12-19 21:46:54', '<!-- wp:paragraph -->\n<p>\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\nOur executives will provide service and advice to\nyour company, with promptness and professionalism. If you want more\ninformation, don’t hesitate to contact us.\n\n\n\n</p>\n<!-- /wp:paragraph -->', 'Contact Us', '', 'inherit', 'closed', 'closed', '', '153-revision-v1', '', '', '2018-12-19 21:46:54', '2018-12-19 21:46:54', '', 153, 'http://presco.gomserver.net/cms/153-revision-v1/', 0, 'revision', '', 0),
(160, 1, '2018-12-27 22:42:11', '2018-12-27 22:42:11', '<!-- wp:paragraph -->\n<p>Ofrecemos un servicio eficaz de traslado y transporte que optimiza los recursos y el tiempo de todos nuestros clientes.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Ofrecemos servicio logístico para movimiento de personal a muelles y embarcaciones, además de ofrecer hospedaje ya que contamos con convenios con diversos hoteles dentro y fuera de la ciudad.</p>\n<!-- /wp:paragraph -->', 'Logística de Personal', '', 'inherit', 'closed', 'closed', '', '42-revision-v1', '', '', '2018-12-27 22:42:11', '2018-12-27 22:42:11', '', 42, 'http://presco.gomserver.net/cms/42-revision-v1/', 0, 'revision', '', 0),
(158, 1, '2018-12-27 22:37:04', '2018-12-27 22:37:04', '<!-- wp:paragraph -->\n<p>Contamos con una <strong>amplia experiencia en el mercado</strong> acompañado de la visión y soporte de CEMZA, así como los recursos y alternativas necesarias para atender los requerimientos de nuestros clientes.</p>\n<!-- /wp:paragraph -->', 'Texto 2 lista', '', 'inherit', 'closed', 'closed', '', '21-revision-v1', '', '', '2018-12-27 22:37:04', '2018-12-27 22:37:04', '', 21, 'http://presco.gomserver.net/cms/21-revision-v1/', 0, 'revision', '', 0),
(161, 1, '2018-12-27 22:45:01', '2018-12-27 22:45:01', '<!-- wp:paragraph -->\n<p>En PRESCO buscamos ser tu aliado en la búsqueda y suministro eficientemente talento operativo, administrativo y ejecutivo, a través de:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list -->\n<ul><li>Reclutamiento selectivo y masivo</li><li>Selección eficiente acorde a puesto</li><li>HeadHunting ejecutivo especializado</li></ul>\n<!-- /wp:list -->', 'Reclutamiento y Selección de Personal', '', 'inherit', 'closed', 'closed', '', '31-revision-v1', '', '', '2018-12-27 22:45:01', '2018-12-27 22:45:01', '', 31, 'http://presco.gomserver.net/cms/31-revision-v1/', 0, 'revision', '', 0),
(166, 1, '2018-12-27 22:57:23', '2018-12-27 22:57:23', '<!-- wp:paragraph -->\n<p>Contamos con una sólida experiencia en el suministro de personal costa afuera para empresas nacionales e internacionales del sector energético.</p>\n<!-- /wp:paragraph -->', 'Ver ofertas de trabajo', '', 'inherit', 'closed', 'closed', '', '76-revision-v1', '', '', '2018-12-27 22:57:23', '2018-12-27 22:57:23', '', 76, 'http://presco.gomserver.net/cms/76-revision-v1/', 0, 'revision', '', 0),
(163, 1, '2018-12-27 22:45:48', '2018-12-27 22:45:48', '<!-- wp:paragraph -->\n<p>En PRESCO buscamos ser tu aliado en la búsqueda y suministro eficiente de talento operativo, administrativo y ejecutivo a través de:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list -->\n<ul><li>Reclutamiento selectivo y masivo</li><li>Selección eficiente acorde a puesto</li><li>HeadHunting ejecutivo especializado</li></ul>\n<!-- /wp:list -->', 'Reclutamiento y Selección de Personal', '', 'inherit', 'closed', 'closed', '', '31-revision-v1', '', '', '2018-12-27 22:45:48', '2018-12-27 22:45:48', '', 31, 'http://presco.gomserver.net/cms/31-revision-v1/', 0, 'revision', '', 0),
(167, 1, '2018-12-27 23:10:55', '2018-12-27 23:10:55', '<!-- wp:paragraph -->\n<p>Somos una <strong>empresa 100% mexicana</strong> especializada en el <strong>desarrollo de soluciones integrales para el capital humano, suministro de equipo de protección personal y comercialización de textiles.</strong></p>\n<!-- /wp:paragraph -->', 'Acerca de Nosotros', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2018-12-27 23:10:55', '2018-12-27 23:10:55', '', 13, 'http://presco.gomserver.net/cms/13-revision-v1/', 0, 'revision', '', 0),
(170, 1, '2018-12-27 23:20:10', '2018-12-27 23:20:10', '<!-- wp:paragraph -->\n<p>Nuestros ejecutivos le brindaran servicio y asesoría hasta su empresa, con rapidez puntualidad y profesionalismo. Si desea más información no dude en contactarnos.</p>\n<!-- /wp:paragraph -->', 'Contáctanos', '', 'inherit', 'closed', 'closed', '', '93-revision-v1', '', '', '2018-12-27 23:20:10', '2018-12-27 23:20:10', '', 93, 'http://presco.gomserver.net/cms/93-revision-v1/', 0, 'revision', '', 0),
(169, 1, '2018-12-27 23:14:05', '2018-12-27 23:14:05', '<!-- wp:paragraph -->\n<p>Somos una <strong>empresa 100% mexicana</strong> especializada en el <strong>desarrollo de soluciones integrales para el capital humano, suministro de equipo de protección personal y comercialización de textiles industriales.</strong></p>\n<!-- /wp:paragraph -->', 'Acerca de Nosotros', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2018-12-27 23:14:05', '2018-12-27 23:14:05', '', 13, 'http://presco.gomserver.net/cms/13-revision-v1/', 0, 'revision', '', 0),
(173, 1, '2018-12-28 01:04:35', '2018-12-28 01:04:35', '<!-- wp:paragraph -->\n<p>We are a<strong> 100% mexican company</strong>  specialized to <strong>provide integral solutions forhuman resources, supply of personal protective equipment and commercialization of industrial textiles.</strong></p>\n<!-- /wp:paragraph -->', 'About us', '', 'inherit', 'closed', 'closed', '', '107-revision-v1', '', '', '2018-12-28 01:04:35', '2018-12-28 01:04:35', '', 107, 'http://presco.gomserver.net/cms/107-revision-v1/', 0, 'revision', '', 0),
(172, 1, '2018-12-27 23:25:28', '2018-12-27 23:25:28', '<!-- wp:paragraph -->\n<p>En PRESCO capacitamos a nuestro personal en materia de seguridad laboral, y curso de desarrollo del personal offshore como, Seguridad Con El H2S Avanzado, Brigada De Búsqueda Evacuación Y Rescate, Huet,T Bosiet, Helicopter Landing Officer, entre muchos otros más.</p>\n<!-- /wp:paragraph -->', 'Cursos y Certificaciones con alianzas estratégicas', '', 'inherit', 'closed', 'closed', '', '37-revision-v1', '', '', '2018-12-27 23:25:28', '2018-12-27 23:25:28', '', 37, 'http://presco.gomserver.net/cms/37-revision-v1/', 0, 'revision', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(176, 1, '2018-12-28 01:39:55', '2018-12-28 01:39:55', '', 'We develop integral solutions for human resources, personnel supply, protective equipment and commercialization of industrial textiles.', '', 'inherit', 'closed', 'closed', '', '105-revision-v1', '', '', '2018-12-28 01:39:55', '2018-12-28 01:39:55', '', 105, 'http://presco.gomserver.net/cms/105-revision-v1/', 0, 'revision', '', 0),
(175, 1, '2018-12-28 01:07:32', '2018-12-28 01:07:32', '<!-- wp:paragraph -->\n<p>We have a wide catalog of products of the highest quality.\nAll our products are certified and meet with current regulations.</p>\n<!-- /wp:paragraph -->', 'PPE, uniforms and tools supply', '', 'inherit', 'closed', 'closed', '', '125-revision-v1', '', '', '2018-12-28 01:07:32', '2018-12-28 01:07:32', '', 125, 'http://presco.gomserver.net/cms/125-revision-v1/', 0, 'revision', '', 0),
(177, 1, '2018-12-28 01:41:35', '2018-12-28 01:41:35', '<!-- wp:paragraph -->\n<p>We are a <strong>100% mexican company</strong>  specialized to <strong>provide integral solutions for human resources, personnel supply, protective equipment and commercialization of industrial textiles.</strong></p>\n<!-- /wp:paragraph -->', 'About us', '', 'inherit', 'closed', 'closed', '', '107-revision-v1', '', '', '2018-12-28 01:41:35', '2018-12-28 01:41:35', '', 107, 'http://presco.gomserver.net/cms/107-revision-v1/', 0, 'revision', '', 0),
(179, 1, '2018-12-28 01:42:59', '2018-12-28 01:42:59', '<!-- wp:paragraph -->\n<p>We have the personnel, capacity and resources to meet the\nneeds of the industry.</p>\n<!-- /wp:paragraph -->', 'Services', '', 'inherit', 'closed', 'closed', '', '113-revision-v1', '', '', '2018-12-28 01:42:59', '2018-12-28 01:42:59', '', 113, 'http://presco.gomserver.net/cms/113-revision-v1/', 0, 'revision', '', 0),
(181, 1, '2018-12-28 01:45:26', '2018-12-28 01:45:26', '<!-- wp:paragraph -->\n<p>These are the job opportunities for you to join us.</p>\n<!-- /wp:paragraph -->', 'Talent Hunting', '', 'inherit', 'closed', 'closed', '', '143-revision-v1', '', '', '2018-12-28 01:45:26', '2018-12-28 01:45:26', '', 143, 'http://presco.gomserver.net/cms/143-revision-v1/', 0, 'revision', '', 0),
(182, 1, '2018-12-28 01:46:33', '2018-12-28 01:46:33', '<!-- wp:paragraph -->\n<p>We have <strong>a wide experience in the market</strong> accompanied bythe vision and support of CEMZA, as well as the resources and alternativesnecessary to meet the requirements of our clients.</p>\n<!-- /wp:paragraph -->', 'Texto 2 lista', '', 'inherit', 'closed', 'closed', '', '111-revision-v1', '', '', '2018-12-28 01:46:33', '2018-12-28 01:46:33', '', 111, 'http://presco.gomserver.net/cms/111-revision-v1/', 0, 'revision', '', 0),
(185, 1, '2018-12-28 18:58:30', '2018-12-28 18:58:30', '<!-- wp:paragraph -->\n<p>Somos una <strong>empresa 100% mexicana</strong> especializada en el <strong>desarrollo de soluciones integrales para el capital humano, suministro de equipo de protección personal y comercialización de textiles industriales.</strong></p>\n<!-- /wp:paragraph -->', 'Acerca de Nosotros', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2018-12-28 18:58:30', '2018-12-28 18:58:30', '', 13, 'http://presco.gomserver.net/cms/13-revision-v1/', 0, 'revision', '', 0),
(184, 1, '2018-12-28 01:50:22', '2018-12-28 01:50:22', '<!-- wp:paragraph -->\n<p>We are a <strong>100% mexican company</strong>  specialized to <strong>provide integral solutions for human resources, supply of personal, protective equipment and commercialization of industrial textiles.</strong></p>\n<!-- /wp:paragraph -->', 'About us', '', 'inherit', 'closed', 'closed', '', '107-revision-v1', '', '', '2018-12-28 01:50:22', '2018-12-28 01:50:22', '', 107, 'http://presco.gomserver.net/cms/107-revision-v1/', 0, 'revision', '', 0),
(186, 1, '2018-12-31 04:26:38', '2018-12-31 04:26:38', '<!-- wp:paragraph -->\n<p> <br>Contamos con una sólida experiencia en el <strong>suministro de personal costa afuera para empresas nacionales e internacionales</strong> del sector energético. Continuamente estamos publicando nuevas ofertas y oportunidades para integrarte a nuestro equipo. 2</p>\n<!-- /wp:paragraph -->', 'Bolsa de Trabajo', '', 'inherit', 'closed', 'closed', '', '72-revision-v1', '', '', '2018-12-31 04:26:38', '2018-12-31 04:26:38', '', 72, 'http://presco.gomserver.net/cms/72-revision-v1/', 0, 'revision', '', 0),
(188, 1, '2018-12-31 04:56:10', '2018-12-31 04:56:10', '<!-- wp:paragraph -->\n<p> <br>Contamos con una sólida experiencia en el <strong>suministro de personal costa afuera para empresas nacionales e internacionales</strong> del sector energético. Continuamente estamos publicando nuevas ofertas y oportunidades para integrarte a nuestro equipo. </p>\n<!-- /wp:paragraph -->', 'Bolsa de Trabajo', '', 'inherit', 'closed', 'closed', '', '72-revision-v1', '', '', '2018-12-31 04:56:10', '2018-12-31 04:56:10', '', 72, 'http://presco.gomserver.net/cms/72-revision-v1/', 0, 'revision', '', 0),
(190, 1, '2018-12-31 04:58:06', '2018-12-31 04:58:06', '<!-- wp:paragraph -->\n<p>We have solid experience in the <strong>offshore personnel supply for national and international</strong> companies in the energy sector. We are continuously publishing new offers and opportunities to join our team.</p>\n<!-- /wp:paragraph -->', 'Talent Hunting', '', 'inherit', 'closed', 'closed', '', '143-revision-v1', '', '', '2018-12-31 04:58:06', '2018-12-31 04:58:06', '', 143, 'http://presco.gomserver.net/cms/143-revision-v1/', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Volcado de datos para la tabla `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Sin categoría', 'sin-categoria', 0),
(2, 'Inicio', 'inicio', 0),
(3, 'Acerca de Nosotros', 'acerca-de-nosotros', 0),
(4, 'Nuestros servicios', 'nuestros-servicios', 0),
(5, 'Productos', 'productos', 0),
(6, 'Certificaciones', 'certificaciones', 0),
(7, 'Reclutamiento', 'reclutamiento', 0),
(8, 'About us', 'about-us', 0),
(9, 'Our services', 'our-services', 0),
(10, 'Products', 'products', 0),
(11, 'Certifications', 'certifications', 0),
(12, 'Talent Hunting', 'talent-hunting', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Volcado de datos para la tabla `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(13, 1, 0),
(8, 2, 0),
(27, 1, 0),
(19, 3, 0),
(21, 3, 0),
(55, 1, 0),
(31, 4, 0),
(34, 4, 0),
(37, 4, 0),
(42, 4, 0),
(47, 5, 0),
(50, 5, 0),
(72, 1, 0),
(59, 6, 0),
(62, 6, 0),
(66, 6, 0),
(69, 6, 0),
(89, 1, 0),
(76, 7, 0),
(81, 7, 0),
(93, 1, 0),
(107, 1, 0),
(101, 6, 0),
(105, 2, 0),
(113, 1, 0),
(109, 8, 0),
(111, 8, 0),
(123, 1, 0),
(115, 9, 0),
(117, 9, 0),
(119, 9, 0),
(121, 9, 0),
(130, 1, 0),
(125, 10, 0),
(127, 10, 0),
(143, 1, 0),
(132, 11, 0),
(135, 11, 0),
(137, 11, 0),
(139, 11, 0),
(141, 11, 0),
(149, 1, 0),
(145, 12, 0),
(147, 12, 0),
(153, 1, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Volcado de datos para la tabla `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 12),
(2, 2, 'category', '', 0, 2),
(3, 3, 'category', '', 0, 2),
(4, 4, 'category', '', 0, 4),
(5, 5, 'category', '', 0, 2),
(6, 6, 'category', '', 0, 5),
(7, 7, 'category', '', 0, 2),
(8, 8, 'category', '', 0, 2),
(9, 9, 'category', '', 0, 4),
(10, 10, 'category', '', 0, 2),
(11, 11, 'category', '', 0, 5),
(12, 12, 'category', '', 0, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Volcado de datos para la tabla `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'presco'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', 'wp496_privacy'),
(15, 1, 'show_welcome_panel', '1'),
(25, 1, 'session_tokens', 'a:1:{s:64:\"b107c751f01559dac8d420080384bdce635b98859fd88c2d4e9fa2a5e026c4fd\";a:4:{s:10:\"expiration\";i:1548017489;s:2:\"ip\";s:15:\"187.154.218.145\";s:2:\"ua\";s:120:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36\";s:5:\"login\";i:1547844689;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '191'),
(18, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:13:\"187.154.218.0\";}'),
(20, 1, 'wp_user-settings', 'libraryContent=browse'),
(21, 1, 'wp_user-settings-time', '1545173004'),
(22, 1, 'enable_custom_fields', '1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_users`
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
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Volcado de datos para la tabla `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'presco', '$P$BhHR38SqUiWW.5vZqP33cRQWHcGKpB/', 'presco', 'desarrollo@gomultimedios.com', '', '2018-12-13 21:18:41', '', 0, 'presco');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indices de la tabla `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indices de la tabla `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indices de la tabla `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Indices de la tabla `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indices de la tabla `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indices de la tabla `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indices de la tabla `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indices de la tabla `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indices de la tabla `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indices de la tabla `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indices de la tabla `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=941;

--
-- AUTO_INCREMENT de la tabla `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=330;

--
-- AUTO_INCREMENT de la tabla `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=191;

--
-- AUTO_INCREMENT de la tabla `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT de la tabla `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
