-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 07-03-2019 a las 13:54:00
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
-- Base de datos: `gomserve_prescohoston`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `hoston_commentmeta`
--

CREATE TABLE `hoston_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `hoston_comments`
--

CREATE TABLE `hoston_comments` (
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
-- Estructura de tabla para la tabla `hoston_links`
--

CREATE TABLE `hoston_links` (
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
-- Estructura de tabla para la tabla `hoston_options`
--

CREATE TABLE `hoston_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Volcado de datos para la tabla `hoston_options`
--

INSERT INTO `hoston_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://presco-houston.gomserver.net/cms', 'yes'),
(2, 'home', 'http://presco-houston.gomserver.net/cms', 'yes'),
(3, 'blogname', 'Presco houston', 'yes'),
(4, 'blogdescription', 'Presco houston', 'yes'),
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
(40, 'template', 'prescohouston', 'yes'),
(41, 'stylesheet', 'prescohouston', 'yes'),
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
(79, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
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
(91, '	hoston_page_for_privacy_policy', '3', 'yes'),
(92, 'show_comments_cookies_opt_in', '', 'yes'),
(93, 'initial_db_version', '43764', 'yes'),
(94, 'hoston_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(95, 'fresh_site', '0', 'yes'),
(96, 'WPLANG', 'es_MX', 'yes'),
(97, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'sidebars_widgets', 'a:5:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:14:\"recent-posts-2\";i:1;s:8:\"search-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-1\";a:0:{}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}s:13:\"array_version\";i:3;}', 'yes'),
(156, 'current_theme', 'Presco houston', 'yes'),
(157, 'theme_mods_prescohouston', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(158, 'theme_switched', '', 'yes'),
(103, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'cron', 'a:6:{i:1551989114;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1551998159;a:1:{s:18:\"ai1wm_cleanup_cron\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1552021514;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1552066490;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1552066705;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes'),
(113, 'theme_mods_twentynineteen', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1545845794;s:4:\"data\";a:2:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}}}}', 'yes'),
(124, 'auto_core_update_notified', 'a:4:{s:4:\"type\";s:7:\"success\";s:5:\"email\";s:28:\"desarrollo@gomultimedios.com\";s:7:\"version\";s:5:\"5.0.3\";s:9:\"timestamp\";i:1547170379;}', 'no'),
(394, 'ai1wm_secret_key', 'zHzsgpgmzB2n', 'yes'),
(395, 'ai1wm_status', 'a:2:{s:4:\"type\";s:8:\"download\";s:7:\"message\";s:293:\"<a href=\"http://presco-houston.gomserver.net/cms/wp-content/ai1wm-backups/presco-houston.gomserver.net-cms-20190118-231604-459.wpress\" class=\"ai1wm-button-green ai1wm-emphasize\" title=\"presco-houston.gomserver.net\"><span>Download presco-houston.gomserver&hellip;</span><em>Size: 14 MB</em></a>\";}', 'yes'),
(400, 'ai1wm_updater', 'a:0:{}', 'yes'),
(192, 'category_children', 'a:0:{}', 'yes'),
(134, 'can_compress_scripts', '0', 'no'),
(143, 'new_admin_email', 'desarrollo@gomultimedios.com', 'yes'),
(160, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1551988170;s:7:\"checked\";a:1:{s:13:\"prescohouston\";s:1:\"1\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(321, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:2:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:57:\"https://downloads.wordpress.org/release/wordpress-5.1.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:57:\"https://downloads.wordpress.org/release/wordpress-5.1.zip\";s:10:\"no_content\";s:68:\"https://downloads.wordpress.org/release/wordpress-5.1-no-content.zip\";s:11:\"new_bundled\";s:69:\"https://downloads.wordpress.org/release/wordpress-5.1-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:3:\"5.1\";s:7:\"version\";s:3:\"5.1\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.0\";s:15:\"partial_version\";s:0:\"\";}i:1;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:57:\"https://downloads.wordpress.org/release/wordpress-5.1.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:57:\"https://downloads.wordpress.org/release/wordpress-5.1.zip\";s:10:\"no_content\";s:68:\"https://downloads.wordpress.org/release/wordpress-5.1-no-content.zip\";s:11:\"new_bundled\";s:69:\"https://downloads.wordpress.org/release/wordpress-5.1-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:3:\"5.1\";s:7:\"version\";s:3:\"5.1\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.0\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}}s:12:\"last_checked\";i:1551988169;s:15:\"version_checked\";s:5:\"5.0.3\";s:12:\"translations\";a:0:{}}', 'no'),
(380, '_transient_twentysixteen_categories', '2', 'yes'),
(387, 'recently_activated', 'a:0:{}', 'yes'),
(720, '_site_transient_timeout_theme_roots', '1551989970', 'no'),
(721, '_site_transient_theme_roots', 'a:1:{s:13:\"prescohouston\";s:7:\"/themes\";}', 'no'),
(722, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1551988171;s:7:\"checked\";a:3:{s:19:\"akismet/akismet.php\";s:3:\"4.1\";s:51:\"all-in-one-wp-migration/all-in-one-wp-migration.php\";s:4:\"6.83\";s:9:\"hello.php\";s:5:\"1.7.1\";}s:8:\"response\";a:2:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.1.1\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.1.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:3:\"5.1\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:51:\"all-in-one-wp-migration/all-in-one-wp-migration.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:37:\"w.org/plugins/all-in-one-wp-migration\";s:4:\"slug\";s:23:\"all-in-one-wp-migration\";s:6:\"plugin\";s:51:\"all-in-one-wp-migration/all-in-one-wp-migration.php\";s:11:\"new_version\";s:4:\"6.86\";s:3:\"url\";s:54:\"https://wordpress.org/plugins/all-in-one-wp-migration/\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/plugin/all-in-one-wp-migration.6.86.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:76:\"https://ps.w.org/all-in-one-wp-migration/assets/icon-256x256.png?rev=2031177\";s:2:\"1x\";s:76:\"https://ps.w.org/all-in-one-wp-migration/assets/icon-128x128.png?rev=2031177\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:79:\"https://ps.w.org/all-in-one-wp-migration/assets/banner-1544x500.png?rev=2031177\";s:2:\"1x\";s:78:\"https://ps.w.org/all-in-one-wp-migration/assets/banner-772x250.png?rev=2031177\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:3:\"5.1\";s:12:\"requires_php\";s:6:\"5.2.17\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:1:{s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:3:\"1.6\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/plugin/hello-dolly.1.6.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=969907\";s:2:\"1x\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=969907\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:65:\"https://ps.w.org/hello-dolly/assets/banner-772x250.png?rev=478342\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `hoston_postmeta`
--

CREATE TABLE `hoston_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Volcado de datos para la tabla `hoston_postmeta`
--

INSERT INTO `hoston_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(13, 9, '_edit_lock', '1547849831:1'),
(9, 1, '_hoston_trash_meta_status', 'publish'),
(10, 1, '_hoston_trash_meta_time', '1545845900'),
(11, 1, '_hoston_desired_post_slug', 'hola-mundo'),
(146, 107, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:337;s:6:\"height\";i:82;s:4:\"file\";s:18:\"2018/12/logo-1.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"logo-1-150x82.png\";s:5:\"width\";i:150;s:6:\"height\";i:82;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"logo-1-300x73.png\";s:5:\"width\";i:300;s:6:\"height\";i:73;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(20, 15, '_edit_lock', '1547849698:1'),
(24, 19, '_edit_lock', '1547849784:1'),
(150, 108, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:187;s:6:\"height\";i:187;s:4:\"file\";s:22:\"2018/12/machines-1.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"machines-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(33, 24, '_edit_lock', '1547849807:1'),
(51, 38, '_edit_lock', '1547849848:1'),
(154, 109, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:272;s:6:\"height\";i:130;s:4:\"file\";s:22:\"2018/12/garments-1.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"garments-1-150x130.png\";s:5:\"width\";i:150;s:6:\"height\";i:130;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(59, 44, '_edit_lock', '1547849895:1'),
(158, 110, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:272;s:6:\"height\";i:130;s:4:\"file\";s:21:\"2018/12/fabrics-1.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"fabrics-1-150x130.png\";s:5:\"width\";i:150;s:6:\"height\";i:130;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(66, 49, '_edit_lock', '1547849978:1'),
(162, 111, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:272;s:6:\"height\";i:130;s:4:\"file\";s:20:\"2018/12/fibers-1.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"fibers-1-150x130.png\";s:5:\"width\";i:150;s:6:\"height\";i:130;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(80, 60, '_edit_lock', '1547850032:1'),
(75, 54, '_edit_lock', '1547850000:1'),
(81, 61, '_hoston_attached_file', '2018/12/galeria1.jpg'),
(82, 61, '_hoston_attachment_metadata', 'a:5:{s:5:\"width\";i:1105;s:6:\"height\";i:662;s:4:\"file\";s:20:\"2018/12/galeria1.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"galeria1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"galeria1-300x180.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"galeria1-768x460.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:460;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:21:\"galeria1-1024x613.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:613;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(83, 62, '_hoston_attached_file', '2018/12/galeria2.jpg'),
(84, 62, '_hoston_attachment_metadata', 'a:5:{s:5:\"width\";i:1105;s:6:\"height\";i:762;s:4:\"file\";s:20:\"2018/12/galeria2.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"galeria2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"galeria2-300x207.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:207;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"galeria2-768x530.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:530;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:21:\"galeria2-1024x706.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:706;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(85, 63, '_hoston_attached_file', '2018/12/galeria3.jpg'),
(86, 63, '_hoston_attachment_metadata', 'a:5:{s:5:\"width\";i:1105;s:6:\"height\";i:686;s:4:\"file\";s:20:\"2018/12/galeria3.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"galeria3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"galeria3-300x186.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:186;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"galeria3-768x477.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:477;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:21:\"galeria3-1024x636.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:636;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(87, 64, '_hoston_attached_file', '2018/12/galeria4.jpg'),
(88, 64, '_hoston_attachment_metadata', 'a:5:{s:5:\"width\";i:1105;s:6:\"height\";i:753;s:4:\"file\";s:20:\"2018/12/galeria4.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"galeria4-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"galeria4-300x204.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:204;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"galeria4-768x523.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:523;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:21:\"galeria4-1024x698.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:698;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(89, 65, '_hoston_attached_file', '2018/12/galeria5.jpg'),
(90, 65, '_hoston_attachment_metadata', 'a:5:{s:5:\"width\";i:1105;s:6:\"height\";i:734;s:4:\"file\";s:20:\"2018/12/galeria5.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"galeria5-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"galeria5-300x199.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:199;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"galeria5-768x510.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:510;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:21:\"galeria5-1024x680.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:680;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(91, 66, '_hoston_attached_file', '2018/12/galeria6.jpg'),
(92, 66, '_hoston_attachment_metadata', 'a:5:{s:5:\"width\";i:1105;s:6:\"height\";i:641;s:4:\"file\";s:20:\"2018/12/galeria6.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"galeria6-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"galeria6-300x174.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:174;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"galeria6-768x446.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:446;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:21:\"galeria6-1024x594.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:594;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(93, 67, '_hoston_attached_file', '2018/12/galeria7.jpg'),
(94, 67, '_hoston_attachment_metadata', 'a:5:{s:5:\"width\";i:1105;s:6:\"height\";i:734;s:4:\"file\";s:20:\"2018/12/galeria7.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"galeria7-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"galeria7-300x199.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:199;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"galeria7-768x510.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:510;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:21:\"galeria7-1024x680.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:680;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(95, 68, '_hoston_attached_file', '2018/12/galeria8.jpg'),
(96, 68, '_hoston_attachment_metadata', 'a:5:{s:5:\"width\";i:1105;s:6:\"height\";i:734;s:4:\"file\";s:20:\"2018/12/galeria8.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"galeria8-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"galeria8-300x199.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:199;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"galeria8-768x510.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:510;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:21:\"galeria8-1024x680.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:680;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(97, 69, '_hoston_attached_file', '2018/12/galeria9.jpg'),
(98, 69, '_hoston_attachment_metadata', 'a:5:{s:5:\"width\";i:1105;s:6:\"height\";i:734;s:4:\"file\";s:20:\"2018/12/galeria9.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"galeria9-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"galeria9-300x199.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:199;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"galeria9-768x510.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:510;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:21:\"galeria9-1024x680.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:680;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(99, 70, '_hoston_attached_file', '2018/12/galeria10.jpg'),
(100, 70, '_hoston_attachment_metadata', 'a:5:{s:5:\"width\";i:1105;s:6:\"height\";i:734;s:4:\"file\";s:21:\"2018/12/galeria10.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"galeria10-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"galeria10-300x199.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:199;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:21:\"galeria10-768x510.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:510;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:22:\"galeria10-1024x680.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:680;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(101, 71, '_hoston_attached_file', '2018/12/galeria11.jpg'),
(102, 71, '_hoston_attachment_metadata', 'a:5:{s:5:\"width\";i:1105;s:6:\"height\";i:734;s:4:\"file\";s:21:\"2018/12/galeria11.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"galeria11-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"galeria11-300x199.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:199;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:21:\"galeria11-768x510.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:510;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:22:\"galeria11-1024x680.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:680;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(103, 72, '_hoston_attached_file', '2018/12/galeria12.jpg'),
(104, 72, '_hoston_attachment_metadata', 'a:5:{s:5:\"width\";i:1105;s:6:\"height\";i:734;s:4:\"file\";s:21:\"2018/12/galeria12.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"galeria12-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"galeria12-300x199.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:199;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:21:\"galeria12-768x510.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:510;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:22:\"galeria12-1024x680.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:680;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(111, 61, '_edit_lock', '1545858838:1'),
(120, 81, '_edit_lock', '1547850049:1'),
(135, 98, '_hoston_attached_file', '2018/12/icoFacebook.png'),
(126, 86, '_edit_lock', '1547850066:1'),
(134, 97, '_edit_lock', '1545867509:1'),
(136, 98, '_hoston_attachment_metadata', 'a:5:{s:5:\"width\";i:35;s:6:\"height\";i:35;s:4:\"file\";s:23:\"2018/12/icoFacebook.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(137, 97, '_hoston_trash_meta_status', 'draft'),
(138, 97, '_hoston_trash_meta_time', '1545867658'),
(139, 97, '_hoston_desired_post_slug', ''),
(145, 107, '_wp_attached_file', '2018/12/logo-1.png'),
(153, 109, '_wp_attached_file', '2018/12/garments-1.png'),
(149, 108, '_wp_attached_file', '2018/12/machines-1.jpg'),
(157, 110, '_wp_attached_file', '2018/12/fabrics-1.png'),
(161, 111, '_wp_attached_file', '2018/12/fibers-1.png'),
(140, 104, '_edit_lock', '1547849420:1'),
(148, 9, '_thumbnail_id', '107'),
(152, 19, '_thumbnail_id', '108'),
(156, 38, '_thumbnail_id', '109'),
(160, 44, '_thumbnail_id', '110'),
(164, 49, '_thumbnail_id', '111');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `hoston_posts`
--

CREATE TABLE `hoston_posts` (
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
-- Volcado de datos para la tabla `hoston_posts`
--

INSERT INTO `hoston_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2018-12-26 17:05:13', '2018-12-26 17:05:13', '<!-- wp:paragraph -->\n<p>Bienvenido a WordPress. Esta es tu primera entrada. Edítala o bórrala, ¡luego empieza a escribir!</p>\n<!-- /wp:paragraph -->', '¡Hola mundo!', '', 'trash', 'open', 'open', '', 'hola-mundo__trashed', '', '', '2018-12-26 17:38:20', '2018-12-26 17:38:20', '', 0, 'http://presco-houston.gomserver.net/cms/?p=1', 0, 'post', '', 0),
(30, 1, '2018-12-26 18:42:51', '2018-12-26 18:42:51', '<!-- wp:paragraph -->\n<p>We offer a wide range of services such as CM&amp;T and Full Package, the supply of linen products and FR and NON FR clothing according with the NFPA 2112 standards.2</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:html -->\n<p class=\"u-desaparecer aparecerSlideUp\">Presco is a 100% Mexican company specialized in exporting products and supplying services. Our goal is to facilitate the business of our clients by building relationships of multi-enterprise value and dedicate ourselfs in stablishing strategic alliances with companies all around the globe in order to meet and comply with the requirements of our international clients. In addition, we supply underwear for Nuclear Plants located in the United States.2</p>\n<!-- /wp:html -->', 'About us', '', 'inherit', 'closed', 'closed', '', '24-revision-v1', '', '', '2018-12-26 18:42:51', '2018-12-26 18:42:51', '', 24, 'http://presco-houston.gomserver.net/cms/24-revision-v1/', 0, 'revision', '', 0),
(27, 1, '2018-12-26 18:18:50', '2018-12-26 18:18:50', '<!-- wp:html -->\n<div class=\"Nosotros-Txt u-desaparecer aparecerSlideUp\">\n<p>We offer a wide range of services such as CM&amp;T and Full Package, the supply of linen products and FR and NON FR clothing according with the NFPA 2112 standards.</p>\n</div>\n<!-- /wp:html -->\n\n<!-- wp:html -->\n<div class=\"Nosotros-Txt2 u-desaparecer aparecerSlideUp\">\n<p>Presco is a 100% Mexican company specialized in exporting products and supplying services. Our goal is to facilitate the business of our clients by building relationships of multi-enterprise value and dedicate ourselfs in stablishing strategic alliances with companies all around the globe in order to meet and comply with the requirements of our international clients. In addition, we supply underwear for Nuclear Plants located in the United States.</p>\n</div>\n<!-- /wp:html -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'About us', '', 'inherit', 'closed', 'closed', '', '24-revision-v1', '', '', '2018-12-26 18:18:50', '2018-12-26 18:18:50', '', 24, 'http://presco-houston.gomserver.net/cms/24-revision-v1/', 0, 'revision', '', 0),
(29, 1, '2018-12-26 18:34:36', '2018-12-26 18:34:36', '<!-- wp:html -->\n<div class=\"Nosotros-Txt u-desaparecer aparecerSlideUp\">\n<p>We offer a wide range of services such as CM&amp;T and Full Package, the supply of linen products and FR and NON FR clothing according with the NFPA 2112 standards.2</p>\n</div>\n<!-- /wp:html -->\n\n<!-- wp:html -->\n<p class=\"u-desaparecer aparecerSlideUp\">Presco is a 100% Mexican company specialized in exporting products and supplying services. Our goal is to facilitate the business of our clients by building relationships of multi-enterprise value and dedicate ourselfs in stablishing strategic alliances with companies all around the globe in order to meet and comply with the requirements of our international clients. In addition, we supply underwear for Nuclear Plants located in the United States.2</p>\n<!-- /wp:html -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'About us', '', 'inherit', 'closed', 'closed', '', '24-revision-v1', '', '', '2018-12-26 18:34:36', '2018-12-26 18:34:36', '', 24, 'http://presco-houston.gomserver.net/cms/24-revision-v1/', 0, 'revision', '', 0),
(32, 1, '2018-12-26 18:50:19', '2018-12-26 18:50:19', '<!-- wp:paragraph -->\n<p>We offer a wide range of services such as CM&amp;T and Full Package, the supply of linen products and FR and NON FR clothing according with the NFPA 2112 standards.2</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Presco is a 100% Mexican company specialized in exporting products and supplying services. Our goal is to facilitate the business of our clients by building relationships of multi-enterprise value and dedicate ourselfs in stablishing strategic alliances with companies all around the globe in order to meet and comply with the requirements of our international clients. In addition, we supply underwear for Nuclear Plants located in the United States.2</p>\n<!-- /wp:paragraph -->', 'About us', '', 'inherit', 'closed', 'closed', '', '24-revision-v1', '', '', '2018-12-26 18:50:19', '2018-12-26 18:50:19', '', 24, 'http://presco-houston.gomserver.net/cms/24-revision-v1/', 0, 'revision', '', 0),
(33, 1, '2018-12-26 18:54:00', '2018-12-26 18:54:00', '<!-- wp:paragraph -->\n<p>We offer a wide range of services such as CM&amp;T and Full Package, the supply of linen products and FR and NON FR clothing according with the NFPA 2112 standards.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Presco is a 100% Mexican company specialized in exporting products and supplying services. Our goal is to facilitate the business of our clients by building relationships of multi-enterprise value and dedicate ourselfs in stablishing strategic alliances with companies all around the globe in order to meet and comply with the requirements of our international clients. In addition, we supply underwear for Nuclear Plants located in the United States.</p>\n<!-- /wp:paragraph -->', 'About us', '', 'inherit', 'closed', 'closed', '', '24-revision-v1', '', '', '2018-12-26 18:54:00', '2018-12-26 18:54:00', '', 24, 'http://presco-houston.gomserver.net/cms/24-revision-v1/', 0, 'revision', '', 0),
(34, 1, '2018-12-26 19:09:39', '2018-12-26 19:09:39', '<!-- wp:paragraph -->\n<p>We offer a wide range of services such as CM&amp;T and Full Package, the supply of linen products and FR and NON FR clothing according with the NFPA 2112 standards.2</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Presco is a 100% Mexican company specialized in exporting products and supplying services. Our goal is to facilitate the business of our clients by building relationships of multi-enterprise value and dedicate ourselfs in stablishing strategic alliances with companies all around the globe in order to meet and comply with the requirements of our international clients. In addition, we supply underwear for Nuclear Plants located in the United States.2</p>\n<!-- /wp:paragraph -->', 'About us', '', 'inherit', 'closed', 'closed', '', '24-revision-v1', '', '', '2018-12-26 19:09:39', '2018-12-26 19:09:39', '', 24, 'http://presco-houston.gomserver.net/cms/24-revision-v1/', 0, 'revision', '', 0),
(35, 1, '2018-12-26 19:09:56', '2018-12-26 19:09:56', '<!-- wp:paragraph -->\n<p>We offer a wide range of services such as CM&amp;T and Full Package, the supply of linen products and FR and NON FR clothing according with the NFPA 2112 standards.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Presco is a 100% Mexican company specialized in exporting products and supplying services. Our goal is to facilitate the business of our clients by building relationships of multi-enterprise value and dedicate ourselfs in stablishing strategic alliances with companies all around the globe in order to meet and comply with the requirements of our international clients. In addition, we supply underwear for Nuclear Plants located in the United States.</p>\n<!-- /wp:paragraph -->', 'About us', '', 'inherit', 'closed', 'closed', '', '24-revision-v1', '', '', '2018-12-26 19:09:56', '2018-12-26 19:09:56', '', 24, 'http://presco-houston.gomserver.net/cms/24-revision-v1/', 0, 'revision', '', 0),
(7, 1, '2018-12-26 17:38:20', '2018-12-26 17:38:20', '<!-- wp:paragraph -->\n<p>Bienvenido a WordPress. Esta es tu primera entrada. Edítala o bórrala, ¡luego empieza a escribir!</p>\n<!-- /wp:paragraph -->', '¡Hola mundo!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2018-12-26 17:38:20', '2018-12-26 17:38:20', '', 1, 'http://presco-houston.gomserver.net/cms/1-revision-v1/', 0, 'revision', '', 0),
(9, 1, '2018-12-26 17:44:02', '2018-12-26 17:44:02', '<!-- wp:paragraph -->\n<p>We are a mexican company specialized in exporting products and supplying services.</p>\n<!-- /wp:paragraph -->', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2019-01-18 22:16:36', '2019-01-18 22:16:36', '', 0, 'http://presco-houston.gomserver.net/cms/?p=9', 0, 'post', '', 0),
(107, 1, '2019-01-18 22:16:30', '2019-01-18 22:16:30', '', 'logo', '', 'inherit', 'closed', 'closed', '', 'logo', '', '', '2019-01-18 22:16:30', '2019-01-18 22:16:30', '', 9, 'http://presco-houston.gomserver.net/cms/wp-content/uploads/2018/12/logo-1.png', 0, 'attachment', 'image/png', 0),
(11, 1, '2018-12-26 17:44:02', '2018-12-26 17:44:02', '<!-- wp:paragraph -->\n<p>We are a mexican company specialized in exporting products and supplying services.</p>\n<!-- /wp:paragraph -->', 'Home', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2018-12-26 17:44:02', '2018-12-26 17:44:02', '', 9, 'http://presco-houston.gomserver.net/cms/9-revision-v1/', 0, 'revision', '', 0),
(12, 1, '2018-12-26 17:44:47', '2018-12-26 17:44:47', '<!-- wp:paragraph -->\n<p>We are a mexican company specialized in exporting products and supplying services.2</p>\n<!-- /wp:paragraph -->', 'Home', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2018-12-26 17:44:47', '2018-12-26 17:44:47', '', 9, 'http://presco-houston.gomserver.net/cms/9-revision-v1/', 0, 'revision', '', 0),
(14, 1, '2018-12-26 17:45:31', '2018-12-26 17:45:31', '<!-- wp:paragraph -->\n<p>We are a mexican company specialized in exporting products and supplying services.</p>\n<!-- /wp:paragraph -->', 'Home', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2018-12-26 17:45:31', '2018-12-26 17:45:31', '', 9, 'http://presco-houston.gomserver.net/cms/9-revision-v1/', 0, 'revision', '', 0),
(15, 1, '2018-12-26 17:49:03', '2018-12-26 17:49:03', '<!-- wp:paragraph -->\n<p>Presco develops it’s own products, through a mexican textile factory, with an approximate capacity of 192,000 units per month.</p>\n<!-- /wp:paragraph -->', 'Our Services', '', 'publish', 'closed', 'closed', '', 'our-services', '', '', '2018-12-26 17:51:03', '2018-12-26 17:51:03', '', 0, 'http://presco-houston.gomserver.net/cms/?p=15', 0, 'post', '', 0),
(16, 1, '2018-12-26 17:49:03', '2018-12-26 17:49:03', '<!-- wp:paragraph -->\n<p>Presco develops it’s own products, through a mexican textile factory, with an approximate capacity of 192,000 units per month.</p>\n<!-- /wp:paragraph -->', 'Our Services', '', 'inherit', 'closed', 'closed', '', '15-revision-v1', '', '', '2018-12-26 17:49:03', '2018-12-26 17:49:03', '', 15, 'http://presco-houston.gomserver.net/cms/15-revision-v1/', 0, 'revision', '', 0),
(17, 1, '2018-12-26 17:50:48', '2018-12-26 17:50:48', '<!-- wp:paragraph -->\n<p>Presco develops it’s own products, through a mexican textile factory, with an approximate capacity of 192,000 units per month.2</p>\n<!-- /wp:paragraph -->', 'Our Services', '', 'inherit', 'closed', 'closed', '', '15-revision-v1', '', '', '2018-12-26 17:50:48', '2018-12-26 17:50:48', '', 15, 'http://presco-houston.gomserver.net/cms/15-revision-v1/', 0, 'revision', '', 0),
(18, 1, '2018-12-26 17:51:03', '2018-12-26 17:51:03', '<!-- wp:paragraph -->\n<p>Presco develops it’s own products, through a mexican textile factory, with an approximate capacity of 192,000 units per month.</p>\n<!-- /wp:paragraph -->', 'Our Services', '', 'inherit', 'closed', 'closed', '', '15-revision-v1', '', '', '2018-12-26 17:51:03', '2018-12-26 17:51:03', '', 15, 'http://presco-houston.gomserver.net/cms/15-revision-v1/', 0, 'revision', '', 0),
(19, 1, '2018-12-26 17:52:20', '2018-12-26 17:52:20', '<!-- wp:list -->\n<ul><li>1, 2 and 3 needles.</li><li>Flat, overlock, lock stitch, button, snap, etc.</li><li>Automatic machines for pockets sewing.d) Finish machinery.</li><li>Embroidery equipment.</li></ul>\n<!-- /wp:list -->', 'Sewing machines', '', 'publish', 'closed', 'closed', '', 'sewing-machines', '', '', '2019-01-18 22:17:56', '2019-01-18 22:17:56', '', 0, 'http://presco-houston.gomserver.net/cms/?p=19', 0, 'post', '', 0),
(108, 1, '2019-01-18 22:17:51', '2019-01-18 22:17:51', '', 'machines', '', 'inherit', 'closed', 'closed', '', 'machines', '', '', '2019-01-18 22:17:51', '2019-01-18 22:17:51', '', 19, 'http://presco-houston.gomserver.net/cms/wp-content/uploads/2018/12/machines-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(21, 1, '2018-12-26 17:52:20', '2018-12-26 17:52:20', '<!-- wp:list -->\n<ul><li>1, 2 and 3 needles.</li><li>Flat, overlock, lock stitch, button, snap, etc.</li><li>Automatic machines for pockets sewing.d) Finish machinery.</li><li>Embroidery equipment.</li></ul>\n<!-- /wp:list -->', 'Sewing machines', '', 'inherit', 'closed', 'closed', '', '19-revision-v1', '', '', '2018-12-26 17:52:20', '2018-12-26 17:52:20', '', 19, 'http://presco-houston.gomserver.net/cms/19-revision-v1/', 0, 'revision', '', 0),
(22, 1, '2018-12-26 17:53:19', '2018-12-26 17:53:19', '<!-- wp:list -->\n<ul><li>1, 2 and 3 needles.</li><li>Flat, overlock, lock stitch, button, snap, etc.</li><li>Automatic machines for pockets sewing.d) Finish machinery.</li><li>Embroidery equipment.2</li></ul>\n<!-- /wp:list -->', 'Sewing machines', '', 'inherit', 'closed', 'closed', '', '19-revision-v1', '', '', '2018-12-26 17:53:19', '2018-12-26 17:53:19', '', 19, 'http://presco-houston.gomserver.net/cms/19-revision-v1/', 0, 'revision', '', 0),
(23, 1, '2018-12-26 17:55:28', '2018-12-26 17:55:28', '<!-- wp:list -->\n<ul><li>1, 2 and 3 needles.</li><li>Flat, overlock, lock stitch, button, snap, etc.</li><li>Automatic machines for pockets sewing.d) Finish machinery.</li><li>Embroidery equipment.</li></ul>\n<!-- /wp:list -->', 'Sewing machines', '', 'inherit', 'closed', 'closed', '', '19-revision-v1', '', '', '2018-12-26 17:55:28', '2018-12-26 17:55:28', '', 19, 'http://presco-houston.gomserver.net/cms/19-revision-v1/', 0, 'revision', '', 0),
(24, 1, '2018-12-26 18:18:04', '2018-12-26 18:18:04', '<!-- wp:paragraph -->\n<p>We offer a wide range of services such as CM&amp;T and Full Package, the supply of linen products and FR and NON FR clothing according with the NFPA 2112 standards.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Presco is a 100% Mexican company specialized in exporting products and supplying services. Our goal is to facilitate the business of our clients by building relationships of multi-enterprise value and dedicate ourselfs in stablishing strategic alliances with companies all around the globe in order to meet and comply with the requirements of our international clients. In addition, we supply underwear for Nuclear Plants located in the United States.</p>\n<!-- /wp:paragraph -->', 'About us', '', 'publish', 'closed', 'closed', '', 'about-us', '', '', '2018-12-26 19:13:50', '2018-12-26 19:13:50', '', 0, 'http://presco-houston.gomserver.net/cms/?p=24', 0, 'post', '', 0),
(31, 1, '2018-12-26 18:47:23', '2018-12-26 18:47:23', '', 'About us', '', 'inherit', 'closed', 'closed', '', '24-revision-v1', '', '', '2018-12-26 18:47:23', '2018-12-26 18:47:23', '', 24, 'http://presco-houston.gomserver.net/cms/24-revision-v1/', 0, 'revision', '', 0),
(25, 1, '2018-12-26 18:18:04', '2018-12-26 18:18:04', '<!-- wp:html -->\n<div class=\"Nosotros-Txt u-desaparecer aparecerSlideUp\">\n<p>We offer a wide range of services such as CM&amp;T and Full Package, the supply of linen products and FR and NON FR clothing according with the NFPA 2112 standards.</p>\n</div>\n<!-- /wp:html -->\n\n<!-- wp:html -->\n<div class=\"Nosotros-Txt2 u-desaparecer aparecerSlideUp\">\n<p>Presco is a 100% Mexican company specialized in exporting products and supplying services. Our goal is to facilitate the business of our clients by building relationships of multi-enterprise value and dedicate ourselfs in stablishing strategic alliances with companies all around the globe in order to meet and comply with the requirements of our international clients. In addition, we supply underwear for Nuclear Plants located in the United States.</p>\n</div>\n<!-- /wp:html -->', 'About us', '', 'inherit', 'closed', 'closed', '', '24-revision-v1', '', '', '2018-12-26 18:18:04', '2018-12-26 18:18:04', '', 24, 'http://presco-houston.gomserver.net/cms/24-revision-v1/', 0, 'revision', '', 0),
(37, 1, '2018-12-26 19:13:50', '2018-12-26 19:13:50', '<!-- wp:paragraph -->\n<p>We offer a wide range of services such as CM&amp;T and Full Package, the supply of linen products and FR and NON FR clothing according with the NFPA 2112 standards.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Presco is a 100% Mexican company specialized in exporting products and supplying services. Our goal is to facilitate the business of our clients by building relationships of multi-enterprise value and dedicate ourselfs in stablishing strategic alliances with companies all around the globe in order to meet and comply with the requirements of our international clients. In addition, we supply underwear for Nuclear Plants located in the United States.</p>\n<!-- /wp:paragraph -->', 'About us', '', 'inherit', 'closed', 'closed', '', '24-revision-v1', '', '', '2018-12-26 19:13:50', '2018-12-26 19:13:50', '', 24, 'http://presco-houston.gomserver.net/cms/24-revision-v1/', 0, 'revision', '', 0),
(36, 1, '2018-12-26 19:12:53', '2018-12-26 19:12:53', '<!-- wp:paragraph -->\n<p>We offer a wide range of services such as CM&amp;T and Full Package, the supply of linen products and FR and NON FR clothing according with the NFPA 2112 standards.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Presco is a 100% Mexican company specialized in exporting products and supplying services. Our goal is to facilitate the business of our clients by building relationships of multi-enterprise value and dedicate ourselfs in stablishing strategic alliances with companies all around the globe in order to meet and comply with the requirements of our international clients. In addition, we supply underwear for Nuclear Plants located in the United States.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Presco is a 100% Mexican company specialized in exporting products and supplying services.</p>\n<!-- /wp:paragraph -->', 'About us', '', 'inherit', 'closed', 'closed', '', '24-revision-v1', '', '', '2018-12-26 19:12:53', '2018-12-26 19:12:53', '', 24, 'http://presco-houston.gomserver.net/cms/24-revision-v1/', 0, 'revision', '', 0),
(28, 1, '2018-12-26 18:31:00', '2018-12-26 18:31:00', '<!-- wp:html -->\n<div class=\"Nosotros-Txt u-desaparecer aparecerSlideUp\">\n<p>We offer a wide range of services such as CM&amp;T and Full Package, the supply of linen products and FR and NON FR clothing according with the NFPA 2112 standards.</p>\n</div>\n<!-- /wp:html -->\n\n<!-- wp:html -->\n<p class=\"u-desaparecer aparecerSlideUp\">Presco is a 100% Mexican company specialized in exporting products and supplying services. Our goal is to facilitate the business of our clients by building relationships of multi-enterprise value and dedicate ourselfs in stablishing strategic alliances with companies all around the globe in order to meet and comply with the requirements of our international clients. In addition, we supply underwear for Nuclear Plants located in the United States.</p>\n<!-- /wp:html -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'About us', '', 'inherit', 'closed', 'closed', '', '24-revision-v1', '', '', '2018-12-26 18:31:00', '2018-12-26 18:31:00', '', 24, 'http://presco-houston.gomserver.net/cms/24-revision-v1/', 0, 'revision', '', 0),
(38, 1, '2018-12-26 19:34:19', '2018-12-26 19:34:19', '<!-- wp:list -->\n<ul><li>FR Shirts</li><li>FR Jeans</li><li>FR Coveralls</li><li>FR Trousers</li><li>Underwear</li></ul>\n<!-- /wp:list -->', 'Garments: FR & NON FR', '', 'publish', 'closed', 'closed', '', 'garments-fr-non-fr', '', '', '2019-01-18 22:19:50', '2019-01-18 22:19:50', '', 0, 'http://presco-houston.gomserver.net/cms/?p=38', 0, 'post', '', 0),
(109, 1, '2019-01-18 22:19:46', '2019-01-18 22:19:46', '', 'garments', '', 'inherit', 'closed', 'closed', '', 'garments', '', '', '2019-01-18 22:19:46', '2019-01-18 22:19:46', '', 38, 'http://presco-houston.gomserver.net/cms/wp-content/uploads/2018/12/garments-1.png', 0, 'attachment', 'image/png', 0),
(40, 1, '2018-12-26 19:34:19', '2018-12-26 19:34:19', '<!-- wp:list -->\n<ul><li>FR Shirts</li><li>FR Jeans</li><li>FR Coveralls</li><li>FR Trousers</li><li>Underwear</li></ul>\n<!-- /wp:list -->', 'Garments: FR & NON FR', '', 'inherit', 'closed', 'closed', '', '38-revision-v1', '', '', '2018-12-26 19:34:19', '2018-12-26 19:34:19', '', 38, 'http://presco-houston.gomserver.net/cms/38-revision-v1/', 0, 'revision', '', 0),
(41, 1, '2018-12-26 19:36:25', '2018-12-26 19:36:25', '<!-- wp:list -->\n<ul><li>FR Shirts</li><li>FR Jeans</li><li>FR Coveralls</li><li>FR Trousers</li><li>Underwear2</li></ul>\n<!-- /wp:list -->', 'Garments: FR & NON FR', '', 'inherit', 'closed', 'closed', '', '38-revision-v1', '', '', '2018-12-26 19:36:25', '2018-12-26 19:36:25', '', 38, 'http://presco-houston.gomserver.net/cms/38-revision-v1/', 0, 'revision', '', 0),
(42, 1, '2018-12-26 19:36:28', '2018-12-26 19:36:28', '<!-- wp:list -->\n<ul><li>FR Shirts</li><li>FR Jeans</li><li>FR Coveralls</li><li>FR Trousers</li><li>Underwear2</li></ul>\n<!-- /wp:list -->', 'Garments: FR & NON FR2', '', 'inherit', 'closed', 'closed', '', '38-revision-v1', '', '', '2018-12-26 19:36:28', '2018-12-26 19:36:28', '', 38, 'http://presco-houston.gomserver.net/cms/38-revision-v1/', 0, 'revision', '', 0),
(43, 1, '2018-12-26 19:36:45', '2018-12-26 19:36:45', '<!-- wp:list -->\n<ul><li>FR Shirts</li><li>FR Jeans</li><li>FR Coveralls</li><li>FR Trousers</li><li>Underwear</li></ul>\n<!-- /wp:list -->', 'Garments: FR & NON FR', '', 'inherit', 'closed', 'closed', '', '38-revision-v1', '', '', '2018-12-26 19:36:45', '2018-12-26 19:36:45', '', 38, 'http://presco-houston.gomserver.net/cms/38-revision-v1/', 0, 'revision', '', 0),
(44, 1, '2018-12-26 19:37:37', '2018-12-26 19:37:37', '<!-- wp:list -->\n<ul><li>Twill</li><li>Denim</li><li>Warp Knit</li></ul>\n<!-- /wp:list -->', 'Fabrics', '', 'publish', 'closed', 'closed', '', 'fabrics', '', '', '2019-01-18 22:20:33', '2019-01-18 22:20:33', '', 0, 'http://presco-houston.gomserver.net/cms/?p=44', 0, 'post', '', 0),
(110, 1, '2019-01-18 22:20:30', '2019-01-18 22:20:30', '', 'fabrics', '', 'inherit', 'closed', 'closed', '', 'fabrics-2', '', '', '2019-01-18 22:20:30', '2019-01-18 22:20:30', '', 44, 'http://presco-houston.gomserver.net/cms/wp-content/uploads/2018/12/fabrics-1.png', 0, 'attachment', 'image/png', 0),
(46, 1, '2018-12-26 19:37:37', '2018-12-26 19:37:37', '<!-- wp:list -->\n<ul><li>Twill</li><li>Denim</li><li>Warp Knit</li></ul>\n<!-- /wp:list -->', 'Fabrics', '', 'inherit', 'closed', 'closed', '', '44-revision-v1', '', '', '2018-12-26 19:37:37', '2018-12-26 19:37:37', '', 44, 'http://presco-houston.gomserver.net/cms/44-revision-v1/', 0, 'revision', '', 0),
(48, 1, '2018-12-26 19:39:28', '2018-12-26 19:39:28', '<!-- wp:list -->\n<ul><li>Twill</li><li>Denim</li><li>Warp Knit</li></ul>\n<!-- /wp:list -->', 'Fabrics', '', 'inherit', 'closed', 'closed', '', '44-revision-v1', '', '', '2018-12-26 19:39:28', '2018-12-26 19:39:28', '', 44, 'http://presco-houston.gomserver.net/cms/44-revision-v1/', 0, 'revision', '', 0),
(47, 1, '2018-12-26 19:37:43', '2018-12-26 19:37:43', '<!-- wp:list -->\n<ul><li>Twill</li><li>Denim</li><li>Warp Knit2</li></ul>\n<!-- /wp:list -->', 'Fabrics2', '', 'inherit', 'closed', 'closed', '', '44-revision-v1', '', '', '2018-12-26 19:37:43', '2018-12-26 19:37:43', '', 44, 'http://presco-houston.gomserver.net/cms/44-revision-v1/', 0, 'revision', '', 0),
(49, 1, '2018-12-26 19:40:13', '2018-12-26 19:40:13', '<!-- wp:list -->\n<ul><li>Nylon</li><li>Polyester</li><li>Cotton</li></ul>\n<!-- /wp:list -->', 'Fibers', '', 'publish', 'closed', 'closed', '', 'fibers', '', '', '2019-01-18 22:21:04', '2019-01-18 22:21:04', '', 0, 'http://presco-houston.gomserver.net/cms/?p=49', 0, 'post', '', 0),
(111, 1, '2019-01-18 22:20:58', '2019-01-18 22:20:58', '', 'fibers', '', 'inherit', 'closed', 'closed', '', 'fibers-2', '', '', '2019-01-18 22:20:58', '2019-01-18 22:20:58', '', 49, 'http://presco-houston.gomserver.net/cms/wp-content/uploads/2018/12/fibers-1.png', 0, 'attachment', 'image/png', 0),
(51, 1, '2018-12-26 19:40:13', '2018-12-26 19:40:13', '<!-- wp:list -->\n<ul><li>Nylon</li><li>Polyester</li><li>Cotton</li></ul>\n<!-- /wp:list -->', 'Fibers', '', 'inherit', 'closed', 'closed', '', '49-revision-v1', '', '', '2018-12-26 19:40:13', '2018-12-26 19:40:13', '', 49, 'http://presco-houston.gomserver.net/cms/49-revision-v1/', 0, 'revision', '', 0),
(53, 1, '2018-12-26 19:42:13', '2018-12-26 19:42:13', '<!-- wp:list -->\n<ul><li>Nylon</li><li>Polyester</li><li>Cotton</li></ul>\n<!-- /wp:list -->', 'Fibers', '', 'inherit', 'closed', 'closed', '', '49-revision-v1', '', '', '2018-12-26 19:42:13', '2018-12-26 19:42:13', '', 49, 'http://presco-houston.gomserver.net/cms/49-revision-v1/', 0, 'revision', '', 0),
(52, 1, '2018-12-26 19:41:20', '2018-12-26 19:41:20', '<!-- wp:list -->\n<ul><li>Nylon</li><li>Polyester</li><li>Cotton2</li></ul>\n<!-- /wp:list -->', 'Fibers2', '', 'inherit', 'closed', 'closed', '', '49-revision-v1', '', '', '2018-12-26 19:41:20', '2018-12-26 19:41:20', '', 49, 'http://presco-houston.gomserver.net/cms/49-revision-v1/', 0, 'revision', '', 0),
(54, 1, '2018-12-26 19:55:26', '2018-12-26 19:55:26', '<!-- wp:paragraph -->\n<p><strong>Download our catalogue (PDF 4.5 MB.)</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><a href=\"#\">Download</a></p>\n<!-- /wp:paragraph -->', 'Catalogue', '', 'publish', 'closed', 'closed', '', 'catalogue', '', '', '2018-12-26 20:16:29', '2018-12-26 20:16:29', '', 0, 'http://presco-houston.gomserver.net/cms/?p=54', 0, 'post', '', 0),
(57, 1, '2018-12-26 20:00:14', '2018-12-26 20:00:14', '<!-- wp:paragraph -->\n<p><strong>Download our catalogue (PDF 4.5 MB.)</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><a href=\"#\">Download</a></p>\n<!-- /wp:paragraph -->', 'Catalogue', '', 'inherit', 'closed', 'closed', '', '54-revision-v1', '', '', '2018-12-26 20:00:14', '2018-12-26 20:00:14', '', 54, 'http://presco-houston.gomserver.net/cms/54-revision-v1/', 0, 'revision', '', 0),
(55, 1, '2018-12-26 19:55:26', '2018-12-26 19:55:26', '<!-- wp:paragraph -->\n<p><strong>Download our catalogue (PDF 4.5 MB.)</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:verse -->\n<pre class=\"wp-block-verse\"><a href=\"#\" target=\"_blank\" rel=\"noreferrer noopener\" aria-label=\" (opens in a new tab)\">Download</a></pre>\n<!-- /wp:verse -->', 'Catalogue', '', 'inherit', 'closed', 'closed', '', '54-revision-v1', '', '', '2018-12-26 19:55:26', '2018-12-26 19:55:26', '', 54, 'http://presco-houston.gomserver.net/cms/54-revision-v1/', 0, 'revision', '', 0),
(58, 1, '2018-12-26 20:16:16', '2018-12-26 20:16:16', '<!-- wp:paragraph -->\n<p><strong>Download our catalogue2 (PDF 4.5 MB.)</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><a href=\"#\">Download</a></p>\n<!-- /wp:paragraph -->', 'Catalogue', '', 'inherit', 'closed', 'closed', '', '54-revision-v1', '', '', '2018-12-26 20:16:16', '2018-12-26 20:16:16', '', 54, 'http://presco-houston.gomserver.net/cms/54-revision-v1/', 0, 'revision', '', 0),
(59, 1, '2018-12-26 20:16:29', '2018-12-26 20:16:29', '<!-- wp:paragraph -->\n<p><strong>Download our catalogue (PDF 4.5 MB.)</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><a href=\"#\">Download</a></p>\n<!-- /wp:paragraph -->', 'Catalogue', '', 'inherit', 'closed', 'closed', '', '54-revision-v1', '', '', '2018-12-26 20:16:29', '2018-12-26 20:16:29', '', 54, 'http://presco-houston.gomserver.net/cms/54-revision-v1/', 0, 'revision', '', 0),
(60, 1, '2018-12-26 20:27:36', '2018-12-26 20:27:36', '<!-- hoston:gallery {\"ids\":[61,62,63,64,65,66,67,68,69,70,71,72],\"columns\":1,\"imageCrop\":false} -->\r\n<ul class=\"wp-block-gallery columns-1\"><li class=\"blocks-gallery-item\"><figure><img src=\"http://presco-houston.gomserver.net/cms/wp-content/uploads/2018/12/galeria1.jpg\" alt=\"\" data-id=\"61\" data-link=\"http://presco-houston.gomserver.net/cms/gallery/galeria1/\" class=\"wp-image-61\"/></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"http://presco-houston.gomserver.net/cms/wp-content/uploads/2018/12/galeria2.jpg\" alt=\"\" data-id=\"62\" data-link=\"http://presco-houston.gomserver.net/cms/gallery/galeria2/\" class=\"wp-image-62\"/></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"http://presco-houston.gomserver.net/cms/wp-content/uploads/2018/12/galeria3.jpg\" alt=\"\" data-id=\"63\" data-link=\"http://presco-houston.gomserver.net/cms/gallery/galeria3/\" class=\"wp-image-63\"/></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"http://presco-houston.gomserver.net/cms/wp-content/uploads/2018/12/galeria4.jpg\" alt=\"\" data-id=\"64\" data-link=\"http://presco-houston.gomserver.net/cms/gallery/galeria4/\" class=\"wp-image-64\"/></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"http://presco-houston.gomserver.net/cms/wp-content/uploads/2018/12/galeria5.jpg\" alt=\"\" data-id=\"65\" data-link=\"http://presco-houston.gomserver.net/cms/gallery/galeria5/\" class=\"wp-image-65\"/></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"http://presco-houston.gomserver.net/cms/wp-content/uploads/2018/12/galeria6.jpg\" alt=\"\" data-id=\"66\" data-link=\"http://presco-houston.gomserver.net/cms/gallery/galeria6/\" class=\"wp-image-66\"/></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"http://presco-houston.gomserver.net/cms/wp-content/uploads/2018/12/galeria7.jpg\" alt=\"\" data-id=\"67\" data-link=\"http://presco-houston.gomserver.net/cms/gallery/galeria7/\" class=\"wp-image-67\"/></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"http://presco-houston.gomserver.net/cms/wp-content/uploads/2018/12/galeria8.jpg\" alt=\"\" data-id=\"68\" data-link=\"http://presco-houston.gomserver.net/cms/gallery/galeria8/\" class=\"wp-image-68\"/></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"http://presco-houston.gomserver.net/cms/wp-content/uploads/2018/12/galeria9.jpg\" alt=\"\" data-id=\"69\" data-link=\"http://presco-houston.gomserver.net/cms/gallery/galeria9/\" class=\"wp-image-69\"/></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"http://presco-houston.gomserver.net/cms/wp-content/uploads/2018/12/galeria10.jpg\" alt=\"\" data-id=\"70\" data-link=\"http://presco-houston.gomserver.net/cms/gallery/galeria10/\" class=\"wp-image-70\"/></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"http://presco-houston.gomserver.net/cms/wp-content/uploads/2018/12/galeria11.jpg\" alt=\"\" data-id=\"71\" data-link=\"http://presco-houston.gomserver.net/cms/gallery/galeria11/\" class=\"wp-image-71\"/></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"http://presco-houston.gomserver.net/cms/wp-content/uploads/2018/12/galeria12.jpg\" alt=\"\" data-id=\"72\" data-link=\"http://presco-houston.gomserver.net/cms/gallery/galeria12/\" class=\"wp-image-72\"/></figure></li></ul>\r\n<!-- /wp:gallery -->', 'Gallery', '', 'publish', 'closed', 'closed', '', 'gallery', '', '', '2018-12-26 21:17:05', '2018-12-26 21:17:05', '', 0, 'http://presco-houston.gomserver.net/cms/?p=60', 0, 'post', '', 0),
(61, 1, '2018-12-26 20:24:51', '2018-12-26 20:24:51', '', 'galeria1', '', 'inherit', 'closed', 'closed', '', 'galeria1', '', '', '2018-12-26 20:24:51', '2018-12-26 20:24:51', '', 60, 'http://presco-houston.gomserver.net/cms/wp-content/uploads/2018/12/galeria1.jpg', 0, 'attachment', 'image/jpeg', 0),
(62, 1, '2018-12-26 20:24:55', '2018-12-26 20:24:55', '', 'galeria2', '', 'inherit', 'closed', 'closed', '', 'galeria2', '', '', '2018-12-26 20:24:55', '2018-12-26 20:24:55', '', 60, 'http://presco-houston.gomserver.net/cms/wp-content/uploads/2018/12/galeria2.jpg', 0, 'attachment', 'image/jpeg', 0),
(63, 1, '2018-12-26 20:24:57', '2018-12-26 20:24:57', '', 'galeria3', '', 'inherit', 'closed', 'closed', '', 'galeria3', '', '', '2018-12-26 20:24:57', '2018-12-26 20:24:57', '', 60, 'http://presco-houston.gomserver.net/cms/wp-content/uploads/2018/12/galeria3.jpg', 0, 'attachment', 'image/jpeg', 0),
(64, 1, '2018-12-26 20:25:00', '2018-12-26 20:25:00', '', 'galeria4', '', 'inherit', 'closed', 'closed', '', 'galeria4', '', '', '2018-12-26 20:25:00', '2018-12-26 20:25:00', '', 60, 'http://presco-houston.gomserver.net/cms/wp-content/uploads/2018/12/galeria4.jpg', 0, 'attachment', 'image/jpeg', 0),
(65, 1, '2018-12-26 20:25:03', '2018-12-26 20:25:03', '', 'galeria5', '', 'inherit', 'closed', 'closed', '', 'galeria5', '', '', '2018-12-26 20:25:03', '2018-12-26 20:25:03', '', 60, 'http://presco-houston.gomserver.net/cms/wp-content/uploads/2018/12/galeria5.jpg', 0, 'attachment', 'image/jpeg', 0),
(66, 1, '2018-12-26 20:25:06', '2018-12-26 20:25:06', '', 'galeria6', '', 'inherit', 'closed', 'closed', '', 'galeria6', '', '', '2018-12-26 20:25:06', '2018-12-26 20:25:06', '', 60, 'http://presco-houston.gomserver.net/cms/wp-content/uploads/2018/12/galeria6.jpg', 0, 'attachment', 'image/jpeg', 0),
(67, 1, '2018-12-26 20:25:08', '2018-12-26 20:25:08', '', 'galeria7', '', 'inherit', 'closed', 'closed', '', 'galeria7', '', '', '2018-12-26 20:25:08', '2018-12-26 20:25:08', '', 60, 'http://presco-houston.gomserver.net/cms/wp-content/uploads/2018/12/galeria7.jpg', 0, 'attachment', 'image/jpeg', 0),
(68, 1, '2018-12-26 20:25:11', '2018-12-26 20:25:11', '', 'galeria8', '', 'inherit', 'closed', 'closed', '', 'galeria8', '', '', '2018-12-26 20:25:11', '2018-12-26 20:25:11', '', 60, 'http://presco-houston.gomserver.net/cms/wp-content/uploads/2018/12/galeria8.jpg', 0, 'attachment', 'image/jpeg', 0),
(69, 1, '2018-12-26 20:25:13', '2018-12-26 20:25:13', '', 'galeria9', '', 'inherit', 'closed', 'closed', '', 'galeria9', '', '', '2018-12-26 20:25:13', '2018-12-26 20:25:13', '', 60, 'http://presco-houston.gomserver.net/cms/wp-content/uploads/2018/12/galeria9.jpg', 0, 'attachment', 'image/jpeg', 0),
(70, 1, '2018-12-26 20:25:16', '2018-12-26 20:25:16', '', 'galeria10', '', 'inherit', 'closed', 'closed', '', 'galeria10', '', '', '2018-12-26 20:25:16', '2018-12-26 20:25:16', '', 60, 'http://presco-houston.gomserver.net/cms/wp-content/uploads/2018/12/galeria10.jpg', 0, 'attachment', 'image/jpeg', 0),
(71, 1, '2018-12-26 20:25:18', '2018-12-26 20:25:18', '', 'galeria11', '', 'inherit', 'closed', 'closed', '', 'galeria11', '', '', '2018-12-26 20:25:18', '2018-12-26 20:25:18', '', 60, 'http://presco-houston.gomserver.net/cms/wp-content/uploads/2018/12/galeria11.jpg', 0, 'attachment', 'image/jpeg', 0),
(72, 1, '2018-12-26 20:25:20', '2018-12-26 20:25:20', '', 'galeria12', '', 'inherit', 'closed', 'closed', '', 'galeria12', '', '', '2018-12-26 20:25:20', '2018-12-26 20:25:20', '', 60, 'http://presco-houston.gomserver.net/cms/wp-content/uploads/2018/12/galeria12.jpg', 0, 'attachment', 'image/jpeg', 0),
(76, 1, '2018-12-26 20:37:40', '2018-12-26 20:37:40', '<!-- wp:html -->\n<ul class=\"wp-block-gallery columns-1 is-cropped\"><li class=\"blocks-gallery-item\"><img src=\"http://presco-houston.gomserver.net/cms/wp-content/uploads/2018/12/galeria1-1024x613.jpg\" alt=\"\" data-id=\"61\" data-link=\"http://presco-houston.gomserver.net/cms/?attachment_id=61\" class=\"wp-image-61\"/></li><li class=\"blocks-gallery-item\"><img src=\"http://presco-houston.gomserver.net/cms/wp-content/uploads/2018/12/galeria2-1024x706.jpg\" alt=\"\" data-id=\"62\" data-link=\"http://presco-houston.gomserver.net/cms/?attachment_id=62\" class=\"wp-image-62\"/></li><li class=\"blocks-gallery-item\"><img src=\"http://presco-houston.gomserver.net/cms/wp-content/uploads/2018/12/galeria3-1024x636.jpg\" alt=\"\" data-id=\"63\" data-link=\"http://presco-houston.gomserver.net/cms/?attachment_id=63\" class=\"wp-image-63\"/></li><li class=\"blocks-gallery-item\"><img src=\"http://presco-houston.gomserver.net/cms/wp-content/uploads/2018/12/galeria4-1024x698.jpg\" alt=\"\" data-id=\"64\" data-link=\"http://presco-houston.gomserver.net/cms/?attachment_id=64\" class=\"wp-image-64\"/></li><li class=\"blocks-gallery-item\"><img src=\"http://presco-houston.gomserver.net/cms/wp-content/uploads/2018/12/galeria5-1024x680.jpg\" alt=\"\" data-id=\"65\" data-link=\"http://presco-houston.gomserver.net/cms/?attachment_id=65\" class=\"wp-image-65\"/></li><li class=\"blocks-gallery-item\"><img src=\"http://presco-houston.gomserver.net/cms/wp-content/uploads/2018/12/galeria6-1024x594.jpg\" alt=\"\" data-id=\"66\" data-link=\"http://presco-houston.gomserver.net/cms/?attachment_id=66\" class=\"wp-image-66\"/></li><li class=\"blocks-gallery-item\"><img src=\"http://presco-houston.gomserver.net/cms/wp-content/uploads/2018/12/galeria7-1024x680.jpg\" alt=\"\" data-id=\"67\" data-link=\"http://presco-houston.gomserver.net/cms/?attachment_id=67\" class=\"wp-image-67\"/></li><li class=\"blocks-gallery-item\"><img src=\"http://presco-houston.gomserver.net/cms/wp-content/uploads/2018/12/galeria8-1024x680.jpg\" alt=\"\" data-id=\"68\" data-link=\"http://presco-houston.gomserver.net/cms/?attachment_id=68\" class=\"wp-image-68\"/></li><li class=\"blocks-gallery-item\"><img src=\"http://presco-houston.gomserver.net/cms/wp-content/uploads/2018/12/galeria9-1024x680.jpg\" alt=\"\" data-id=\"69\" data-link=\"http://presco-houston.gomserver.net/cms/?attachment_id=69\" class=\"wp-image-69\"/></li><li class=\"blocks-gallery-item\"><img src=\"http://presco-houston.gomserver.net/cms/wp-content/uploads/2018/12/galeria10-1024x680.jpg\" alt=\"\" data-id=\"70\" data-link=\"http://presco-houston.gomserver.net/cms/?attachment_id=70\" class=\"wp-image-70\"/></li><li class=\"blocks-gallery-item\"><img src=\"http://presco-houston.gomserver.net/cms/wp-content/uploads/2018/12/galeria11-1024x680.jpg\" alt=\"\" data-id=\"71\" data-link=\"http://presco-houston.gomserver.net/cms/?attachment_id=71\" class=\"wp-image-71\"/></li><li class=\"blocks-gallery-item\"><img src=\"http://presco-houston.gomserver.net/cms/wp-content/uploads/2018/12/galeria12-1024x680.jpg\" alt=\"\" data-id=\"72\" data-link=\"http://presco-houston.gomserver.net/cms/?attachment_id=72\" class=\"wp-image-72\"/></li></ul>\n<!-- /wp:html -->', 'Gallery', '', 'inherit', 'closed', 'closed', '', '60-revision-v1', '', '', '2018-12-26 20:37:40', '2018-12-26 20:37:40', '', 60, 'http://presco-houston.gomserver.net/cms/60-revision-v1/', 0, 'revision', '', 0),
(73, 1, '2018-12-26 20:27:36', '2018-12-26 20:27:36', '<!-- hoston:gallery {\"ids\":[61,62,63,64,65,66,67,68,69,70,71,72],\"columns\":1} -->\r\n<ul class=\"wp-block-gallery columns-1 is-cropped\"><li class=\"blocks-gallery-item\"><figure><img src=\"http://presco-houston.gomserver.net/cms/wp-content/uploads/2018/12/galeria1-1024x613.jpg\" alt=\"\" data-id=\"61\" data-link=\"http://presco-houston.gomserver.net/cms/?attachment_id=61\" class=\"wp-image-61\"/></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"http://presco-houston.gomserver.net/cms/wp-content/uploads/2018/12/galeria2-1024x706.jpg\" alt=\"\" data-id=\"62\" data-link=\"http://presco-houston.gomserver.net/cms/?attachment_id=62\" class=\"wp-image-62\"/></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"http://presco-houston.gomserver.net/cms/wp-content/uploads/2018/12/galeria3-1024x636.jpg\" alt=\"\" data-id=\"63\" data-link=\"http://presco-houston.gomserver.net/cms/?attachment_id=63\" class=\"wp-image-63\"/></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"http://presco-houston.gomserver.net/cms/wp-content/uploads/2018/12/galeria4-1024x698.jpg\" alt=\"\" data-id=\"64\" data-link=\"http://presco-houston.gomserver.net/cms/?attachment_id=64\" class=\"wp-image-64\"/></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"http://presco-houston.gomserver.net/cms/wp-content/uploads/2018/12/galeria5-1024x680.jpg\" alt=\"\" data-id=\"65\" data-link=\"http://presco-houston.gomserver.net/cms/?attachment_id=65\" class=\"wp-image-65\"/></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"http://presco-houston.gomserver.net/cms/wp-content/uploads/2018/12/galeria6-1024x594.jpg\" alt=\"\" data-id=\"66\" data-link=\"http://presco-houston.gomserver.net/cms/?attachment_id=66\" class=\"wp-image-66\"/></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"http://presco-houston.gomserver.net/cms/wp-content/uploads/2018/12/galeria7-1024x680.jpg\" alt=\"\" data-id=\"67\" data-link=\"http://presco-houston.gomserver.net/cms/?attachment_id=67\" class=\"wp-image-67\"/></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"http://presco-houston.gomserver.net/cms/wp-content/uploads/2018/12/galeria8-1024x680.jpg\" alt=\"\" data-id=\"68\" data-link=\"http://presco-houston.gomserver.net/cms/?attachment_id=68\" class=\"wp-image-68\"/></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"http://presco-houston.gomserver.net/cms/wp-content/uploads/2018/12/galeria9-1024x680.jpg\" alt=\"\" data-id=\"69\" data-link=\"http://presco-houston.gomserver.net/cms/?attachment_id=69\" class=\"wp-image-69\"/></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"http://presco-houston.gomserver.net/cms/wp-content/uploads/2018/12/galeria10-1024x680.jpg\" alt=\"\" data-id=\"70\" data-link=\"http://presco-houston.gomserver.net/cms/?attachment_id=70\" class=\"wp-image-70\"/></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"http://presco-houston.gomserver.net/cms/wp-content/uploads/2018/12/galeria11-1024x680.jpg\" alt=\"\" data-id=\"71\" data-link=\"http://presco-houston.gomserver.net/cms/?attachment_id=71\" class=\"wp-image-71\"/></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"http://presco-houston.gomserver.net/cms/wp-content/uploads/2018/12/galeria12-1024x680.jpg\" alt=\"\" data-id=\"72\" data-link=\"http://presco-houston.gomserver.net/cms/?attachment_id=72\" class=\"wp-image-72\"/></figure></li></ul>\r\n<!-- /wp:gallery -->', 'Gallery', '', 'inherit', 'closed', 'closed', '', '60-revision-v1', '', '', '2018-12-26 20:27:36', '2018-12-26 20:27:36', '', 60, 'http://presco-houston.gomserver.net/cms/60-revision-v1/', 0, 'revision', '', 0),
(78, 1, '2018-12-26 21:04:41', '2018-12-26 21:04:41', '<!-- hoston:gallery {\"ids\":[61,62,63,64,65,66,67,68,69,70,71,72],\"columns\":1,\"imageCrop\":false} -->\r\n<ul class=\"wp-block-gallery columns-1\"><li class=\"blocks-gallery-item\"><figure><img src=\"http://presco-houston.gomserver.net/cms/wp-content/uploads/2018/12/galeria1-1024x613.jpg\" alt=\"\" data-id=\"61\" data-link=\"http://presco-houston.gomserver.net/cms/gallery/galeria1/\" class=\"wp-image-61\"/></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"http://presco-houston.gomserver.net/cms/wp-content/uploads/2018/12/galeria2-1024x706.jpg\" alt=\"\" data-id=\"62\" data-link=\"http://presco-houston.gomserver.net/cms/gallery/galeria2/\" class=\"wp-image-62\"/></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"http://presco-houston.gomserver.net/cms/wp-content/uploads/2018/12/galeria3-1024x636.jpg\" alt=\"\" data-id=\"63\" data-link=\"http://presco-houston.gomserver.net/cms/gallery/galeria3/\" class=\"wp-image-63\"/></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"http://presco-houston.gomserver.net/cms/wp-content/uploads/2018/12/galeria4-1024x698.jpg\" alt=\"\" data-id=\"64\" data-link=\"http://presco-houston.gomserver.net/cms/gallery/galeria4/\" class=\"wp-image-64\"/></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"http://presco-houston.gomserver.net/cms/wp-content/uploads/2018/12/galeria5-1024x680.jpg\" alt=\"\" data-id=\"65\" data-link=\"http://presco-houston.gomserver.net/cms/gallery/galeria5/\" class=\"wp-image-65\"/></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"http://presco-houston.gomserver.net/cms/wp-content/uploads/2018/12/galeria6-1024x594.jpg\" alt=\"\" data-id=\"66\" data-link=\"http://presco-houston.gomserver.net/cms/gallery/galeria6/\" class=\"wp-image-66\"/></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"http://presco-houston.gomserver.net/cms/wp-content/uploads/2018/12/galeria7-1024x680.jpg\" alt=\"\" data-id=\"67\" data-link=\"http://presco-houston.gomserver.net/cms/gallery/galeria7/\" class=\"wp-image-67\"/></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"http://presco-houston.gomserver.net/cms/wp-content/uploads/2018/12/galeria8-1024x680.jpg\" alt=\"\" data-id=\"68\" data-link=\"http://presco-houston.gomserver.net/cms/gallery/galeria8/\" class=\"wp-image-68\"/></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"http://presco-houston.gomserver.net/cms/wp-content/uploads/2018/12/galeria9-1024x680.jpg\" alt=\"\" data-id=\"69\" data-link=\"http://presco-houston.gomserver.net/cms/gallery/galeria9/\" class=\"wp-image-69\"/></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"http://presco-houston.gomserver.net/cms/wp-content/uploads/2018/12/galeria10-1024x680.jpg\" alt=\"\" data-id=\"70\" data-link=\"http://presco-houston.gomserver.net/cms/gallery/galeria10/\" class=\"wp-image-70\"/></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"http://presco-houston.gomserver.net/cms/wp-content/uploads/2018/12/galeria11-1024x680.jpg\" alt=\"\" data-id=\"71\" data-link=\"http://presco-houston.gomserver.net/cms/gallery/galeria11/\" class=\"wp-image-71\"/></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"http://presco-houston.gomserver.net/cms/wp-content/uploads/2018/12/galeria12-1024x680.jpg\" alt=\"\" data-id=\"72\" data-link=\"http://presco-houston.gomserver.net/cms/gallery/galeria12/\" class=\"wp-image-72\"/></figure></li></ul>\r\n<!-- /wp:gallery -->', 'Gallery', '', 'inherit', 'closed', 'closed', '', '60-revision-v1', '', '', '2018-12-26 21:04:41', '2018-12-26 21:04:41', '', 60, 'http://presco-houston.gomserver.net/cms/60-revision-v1/', 0, 'revision', '', 0);
INSERT INTO `hoston_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(80, 1, '2018-12-26 21:13:46', '2018-12-26 21:13:46', '<!-- hoston:gallery {\"ids\":[61,62,63,64,65,66,67,68,69,70,71,72],\"columns\":1,\"imageCrop\":false} -->\r\n<ul class=\"wp-block-gallery columns-1\"><li class=\"blocks-gallery-item\"><figure><img src=\"http://presco-houston.gomserver.net/cms/wp-content/uploads/2018/12/galeria1.jpg\" alt=\"\" data-id=\"61\" data-link=\"http://presco-houston.gomserver.net/cms/gallery/galeria1/\" class=\"wp-image-61\"/></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"http://presco-houston.gomserver.net/cms/wp-content/uploads/2018/12/galeria2.jpg\" alt=\"\" data-id=\"62\" data-link=\"http://presco-houston.gomserver.net/cms/gallery/galeria2/\" class=\"wp-image-62\"/></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"http://presco-houston.gomserver.net/cms/wp-content/uploads/2018/12/galeria3.jpg\" alt=\"\" data-id=\"63\" data-link=\"http://presco-houston.gomserver.net/cms/gallery/galeria3/\" class=\"wp-image-63\"/></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"http://presco-houston.gomserver.net/cms/wp-content/uploads/2018/12/galeria4.jpg\" alt=\"\" data-id=\"64\" data-link=\"http://presco-houston.gomserver.net/cms/gallery/galeria4/\" class=\"wp-image-64\"/></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"http://presco-houston.gomserver.net/cms/wp-content/uploads/2018/12/galeria5.jpg\" alt=\"\" data-id=\"65\" data-link=\"http://presco-houston.gomserver.net/cms/gallery/galeria5/\" class=\"wp-image-65\"/></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"http://presco-houston.gomserver.net/cms/wp-content/uploads/2018/12/galeria6.jpg\" alt=\"\" data-id=\"66\" data-link=\"http://presco-houston.gomserver.net/cms/gallery/galeria6/\" class=\"wp-image-66\"/></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"http://presco-houston.gomserver.net/cms/wp-content/uploads/2018/12/galeria7.jpg\" alt=\"\" data-id=\"67\" data-link=\"http://presco-houston.gomserver.net/cms/gallery/galeria7/\" class=\"wp-image-67\"/></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"http://presco-houston.gomserver.net/cms/wp-content/uploads/2018/12/galeria8.jpg\" alt=\"\" data-id=\"68\" data-link=\"http://presco-houston.gomserver.net/cms/gallery/galeria8/\" class=\"wp-image-68\"/></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"http://presco-houston.gomserver.net/cms/wp-content/uploads/2018/12/galeria9.jpg\" alt=\"\" data-id=\"69\" data-link=\"http://presco-houston.gomserver.net/cms/gallery/galeria9/\" class=\"wp-image-69\"/></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"http://presco-houston.gomserver.net/cms/wp-content/uploads/2018/12/galeria10.jpg\" alt=\"\" data-id=\"70\" data-link=\"http://presco-houston.gomserver.net/cms/gallery/galeria10/\" class=\"wp-image-70\"/></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"http://presco-houston.gomserver.net/cms/wp-content/uploads/2018/12/galeria11.jpg\" alt=\"\" data-id=\"71\" data-link=\"http://presco-houston.gomserver.net/cms/gallery/galeria11/\" class=\"wp-image-71\"/></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"http://presco-houston.gomserver.net/cms/wp-content/uploads/2018/12/galeria12.jpg\" alt=\"\" data-id=\"72\" data-link=\"http://presco-houston.gomserver.net/cms/gallery/galeria12/\" class=\"wp-image-72\"/></figure></li></ul>\r\n<!-- /wp:gallery -->', 'Gallery', '', 'inherit', 'closed', 'closed', '', '60-revision-v1', '', '', '2018-12-26 21:13:46', '2018-12-26 21:13:46', '', 60, 'http://presco-houston.gomserver.net/cms/60-revision-v1/', 0, 'revision', '', 0),
(77, 1, '2018-12-26 20:39:49', '2018-12-26 20:39:49', '<!-- hoston:gallery {\"ids\":[61,62,63,64,65,66,67,68,69,70,71,72],\"columns\":1} -->\r\n<ul class=\"wp-block-gallery columns-1 is-cropped\"><li class=\"blocks-gallery-item\"><figure><img src=\"http://presco-houston.gomserver.net/cms/wp-content/uploads/2018/12/galeria1-1024x613.jpg\" alt=\"\" data-id=\"61\" data-link=\"http://presco-houston.gomserver.net/cms/gallery/galeria1/\" class=\"wp-image-61\"/></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"http://presco-houston.gomserver.net/cms/wp-content/uploads/2018/12/galeria2-1024x706.jpg\" alt=\"\" data-id=\"62\" data-link=\"http://presco-houston.gomserver.net/cms/gallery/galeria2/\" class=\"wp-image-62\"/></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"http://presco-houston.gomserver.net/cms/wp-content/uploads/2018/12/galeria3-1024x636.jpg\" alt=\"\" data-id=\"63\" data-link=\"http://presco-houston.gomserver.net/cms/gallery/galeria3/\" class=\"wp-image-63\"/></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"http://presco-houston.gomserver.net/cms/wp-content/uploads/2018/12/galeria4-1024x698.jpg\" alt=\"\" data-id=\"64\" data-link=\"http://presco-houston.gomserver.net/cms/gallery/galeria4/\" class=\"wp-image-64\"/></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"http://presco-houston.gomserver.net/cms/wp-content/uploads/2018/12/galeria5-1024x680.jpg\" alt=\"\" data-id=\"65\" data-link=\"http://presco-houston.gomserver.net/cms/gallery/galeria5/\" class=\"wp-image-65\"/></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"http://presco-houston.gomserver.net/cms/wp-content/uploads/2018/12/galeria6-1024x594.jpg\" alt=\"\" data-id=\"66\" data-link=\"http://presco-houston.gomserver.net/cms/gallery/galeria6/\" class=\"wp-image-66\"/></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"http://presco-houston.gomserver.net/cms/wp-content/uploads/2018/12/galeria7-1024x680.jpg\" alt=\"\" data-id=\"67\" data-link=\"http://presco-houston.gomserver.net/cms/gallery/galeria7/\" class=\"wp-image-67\"/></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"http://presco-houston.gomserver.net/cms/wp-content/uploads/2018/12/galeria8-1024x680.jpg\" alt=\"\" data-id=\"68\" data-link=\"http://presco-houston.gomserver.net/cms/gallery/galeria8/\" class=\"wp-image-68\"/></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"http://presco-houston.gomserver.net/cms/wp-content/uploads/2018/12/galeria9-1024x680.jpg\" alt=\"\" data-id=\"69\" data-link=\"http://presco-houston.gomserver.net/cms/gallery/galeria9/\" class=\"wp-image-69\"/></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"http://presco-houston.gomserver.net/cms/wp-content/uploads/2018/12/galeria10-1024x680.jpg\" alt=\"\" data-id=\"70\" data-link=\"http://presco-houston.gomserver.net/cms/gallery/galeria10/\" class=\"wp-image-70\"/></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"http://presco-houston.gomserver.net/cms/wp-content/uploads/2018/12/galeria11-1024x680.jpg\" alt=\"\" data-id=\"71\" data-link=\"http://presco-houston.gomserver.net/cms/gallery/galeria11/\" class=\"wp-image-71\"/></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"http://presco-houston.gomserver.net/cms/wp-content/uploads/2018/12/galeria12-1024x680.jpg\" alt=\"\" data-id=\"72\" data-link=\"http://presco-houston.gomserver.net/cms/gallery/galeria12/\" class=\"wp-image-72\"/></figure></li></ul>\r\n<!-- /wp:gallery -->', 'Gallery', '', 'inherit', 'closed', 'closed', '', '60-revision-v1', '', '', '2018-12-26 20:39:49', '2018-12-26 20:39:49', '', 60, 'http://presco-houston.gomserver.net/cms/60-revision-v1/', 0, 'revision', '', 0),
(81, 1, '2018-12-26 23:08:56', '2018-12-26 23:08:56', '<!-- wp:paragraph -->\n<p>We want to work together. <br>If you want more information, do not doubt to contact us:</p>\n<!-- /wp:paragraph -->', 'Contact us', '', 'publish', 'closed', 'closed', '', 'contact-us', '', '', '2018-12-26 23:10:57', '2018-12-26 23:10:57', '', 0, 'http://presco-houston.gomserver.net/cms/?p=81', 0, 'post', '', 0),
(82, 1, '2018-12-26 23:08:56', '2018-12-26 23:08:56', '<!-- wp:paragraph -->\n<p>We want to work together.&nbsp;<br>If you want more information, do not doubt to contact us:</p>\n<!-- /wp:paragraph -->', 'Contact us', '', 'inherit', 'closed', 'closed', '', '81-revision-v1', '', '', '2018-12-26 23:08:56', '2018-12-26 23:08:56', '', 81, 'http://presco-houston.gomserver.net/cms/81-revision-v1/', 0, 'revision', '', 0),
(83, 1, '2018-12-26 23:09:00', '2018-12-26 23:09:00', '<!-- wp:paragraph -->\n<p>We want to work together. <br>If you want more information, do not doubt to contact us2:</p>\n<!-- /wp:paragraph -->', 'Contact us', '', 'inherit', 'closed', 'closed', '', '81-revision-v1', '', '', '2018-12-26 23:09:00', '2018-12-26 23:09:00', '', 81, 'http://presco-houston.gomserver.net/cms/81-revision-v1/', 0, 'revision', '', 0),
(84, 1, '2018-12-26 23:09:24', '2018-12-26 23:09:24', '<!-- wp:paragraph -->\n<p>We want to work together. <br>If you want more information, do not doubt to contact us2:</p>\n<!-- /wp:paragraph -->', 'Contact us2', '', 'inherit', 'closed', 'closed', '', '81-revision-v1', '', '', '2018-12-26 23:09:24', '2018-12-26 23:09:24', '', 81, 'http://presco-houston.gomserver.net/cms/81-revision-v1/', 0, 'revision', '', 0),
(85, 1, '2018-12-26 23:09:37', '2018-12-26 23:09:37', '<!-- wp:paragraph -->\n<p>We want to work together. <br>If you want more information, do not doubt to contact us:</p>\n<!-- /wp:paragraph -->', 'Contact us', '', 'inherit', 'closed', 'closed', '', '81-revision-v1', '', '', '2018-12-26 23:09:37', '2018-12-26 23:09:37', '', 81, 'http://presco-houston.gomserver.net/cms/81-revision-v1/', 0, 'revision', '', 0),
(86, 1, '2018-12-26 23:14:33', '2018-12-26 23:14:33', '<!-- wp:html -->\r\n<ul class=\"Contacto-List\">\r\n                                <li class=\"Contacto-icoDireccionList\">\r\n                                        11111 Katy Fwy, Houston, TX 77043, USA.\r\n                                </li>\r\n                                <li class=\"Contacto-icoTelefonoList\">\r\n                                    <p><strong>Call us today:</strong></p>\r\n                                    <p>\r\n                                        <strong>In US:</strong><br>\r\n                                        Cellphone: +1-346-2700095\r\n                                    </p>\r\n\r\n                                    <p>\r\n                                        <strong>In MEXICO:</strong><br>\r\n                                        Office. (938) 2861356\r\n                                    </p>\r\n                                </li>\r\n                                <li class=\"Contacto-icoEmailList\">\r\n                                    <a href=\"mailto:sales@presco.mx\">sales@presco.mx</a>\r\n                                </li>\r\n                            </ul>\r\n<!-- /wp:html -->', 'Contact data', '', 'publish', 'closed', 'closed', '', 'contact-data', '', '', '2018-12-28 01:14:56', '2018-12-28 01:14:56', '', 0, 'http://presco-houston.gomserver.net/cms/?p=86', 0, 'post', '', 0),
(102, 1, '2018-12-28 01:14:56', '2018-12-28 01:14:56', '<!-- wp:html -->\r\n<ul class=\"Contacto-List\">\r\n                                <li class=\"Contacto-icoDireccionList\">\r\n                                        11111 Katy Fwy, Houston, TX 77043, USA.\r\n                                </li>\r\n                                <li class=\"Contacto-icoTelefonoList\">\r\n                                    <p><strong>Call us today:</strong></p>\r\n                                    <p>\r\n                                        <strong>In US:</strong><br>\r\n                                        Cellphone: +1-346-2700095\r\n                                    </p>\r\n\r\n                                    <p>\r\n                                        <strong>In MEXICO:</strong><br>\r\n                                        Office. (938) 2861356\r\n                                    </p>\r\n                                </li>\r\n                                <li class=\"Contacto-icoEmailList\">\r\n                                    <a href=\"mailto:sales@presco.mx\">sales@presco.mx</a>\r\n                                </li>\r\n                            </ul>\r\n<!-- /wp:html -->', 'Contact data', '', 'inherit', 'closed', 'closed', '', '86-revision-v1', '', '', '2018-12-28 01:14:56', '2018-12-28 01:14:56', '', 86, 'http://presco-houston.gomserver.net/cms/86-revision-v1/', 0, 'revision', '', 0),
(87, 1, '2018-12-26 23:14:33', '2018-12-26 23:14:33', '<!-- wp:html -->\r\n<ul class=\"Contacto-List\">\r\n                                <li class=\"Contacto-icoDireccionList\">\r\n                                        11111 Katy Fwy, Houston, TX 77043, USA.\r\n                                </li>\r\n                                <li class=\"Contacto-icoTelefonoList\">\r\n                                    <p><strong>Call us today:</strong></p>\r\n                                    <p>\r\n                                        <strong>In US:</strong><br />\r\n                                        Cellphone: +1-346-2700095\r\n                                    </p>\r\n\r\n                                    <p>\r\n                                        <strong>In MEXICO:</strong><br />\r\n                                        Mobile. +01 938-160-8216 <br />\r\n                                        Office. (938) 2861356\r\n                                    </p>\r\n                                </li>\r\n                                <li class=\"Contacto-icoEmailList\">\r\n                                    <a href=\"mailto:sales@presco.mx\">sales@presco.mx</a>\r\n                                </li>\r\n                            </ul>\r\n<!-- /wp:html -->', 'Contact data', '', 'inherit', 'closed', 'closed', '', '86-revision-v1', '', '', '2018-12-26 23:14:33', '2018-12-26 23:14:33', '', 86, 'http://presco-houston.gomserver.net/cms/86-revision-v1/', 0, 'revision', '', 0),
(101, 1, '2018-12-26 23:41:19', '2018-12-26 23:41:19', '<!-- wp:html -->\r\n<ul class=\"Contacto-List\">\r\n                                <li class=\"Contacto-icoDireccionList\">\r\n                                        11111 Katy Fwy, Houston, TX 77043, USA.\r\n                                </li>\r\n                                <li class=\"Contacto-icoTelefonoList\">\r\n                                    <p><strong>Call us today:</strong></p>\r\n                                    <p>\r\n                                        <strong>In US:</strong><br>\r\n                                        Cellphone: +1-346-2700095\r\n                                    </p>\r\n\r\n                                    <p>\r\n                                        <strong>In MEXICO:</strong><br>\r\n                                        Mobile. +01 938-160-8216 <br>\r\n                                        Office. (938) 2861356\r\n                                    </p>\r\n                                </li>\r\n                                <li class=\"Contacto-icoEmailList\">\r\n                                    <a href=\"mailto:sales@presco.mx\">sales@presco.mx</a>\r\n                                </li>\r\n                            </ul>\r\n<!-- /wp:html -->', 'Contact data', '', 'inherit', 'closed', 'closed', '', '86-revision-v1', '', '', '2018-12-26 23:41:19', '2018-12-26 23:41:19', '', 86, 'http://presco-houston.gomserver.net/cms/86-revision-v1/', 0, 'revision', '', 0),
(95, 1, '2018-12-26 23:23:15', '2018-12-26 23:23:15', '<!-- wp:html -->\r\n<ul class=\"Contacto-List\">\r\n                                <li class=\"Contacto-icoDireccionList\">\r\n                                        11111 Katy Fwy, Houston, TX 77043, USA.2\r\n                                </li>\r\n                                <li class=\"Contacto-icoTelefonoList\">\r\n                                    <p><strong>Call us today:</strong></p>\r\n                                    <p>\r\n                                        <strong>In US:</strong><br />\r\n                                        Cellphone: +1-346-2700095\r\n                                    </p>\r\n\r\n                                    <p>\r\n                                        <strong>In MEXICO:</strong><br />\r\n                                        Mobile. +01 938-160-8216 <br />\r\n                                        Office. (938) 2861356\r\n                                    </p>\r\n                                </li>\r\n                                <li class=\"Contacto-icoEmailList\">\r\n                                    <a href=\"mailto:sales@presco.mx\">sales@presco.mx</a>\r\n                                </li>\r\n                            </ul>\r\n<!-- /wp:html -->', 'Contact data', '', 'inherit', 'closed', 'closed', '', '86-revision-v1', '', '', '2018-12-26 23:23:15', '2018-12-26 23:23:15', '', 86, 'http://presco-houston.gomserver.net/cms/86-revision-v1/', 0, 'revision', '', 0),
(94, 1, '2018-12-26 23:22:46', '2018-12-26 23:22:46', '<!-- wp:html -->\r\n<ul class=\"Contacto-List\">\r\n                                <li class=\"Contacto-icoDireccionList\">\r\n                                        11111 Katy Fwy, Houston, TX 77043, USA.\r\n                                </li>\r\n                                <li class=\"Contacto-icoTelefonoList\">\r\n                                    <p><strong>Call us today:</strong></p>\r\n                                    <p>\r\n                                        <strong>In US:</strong><br />\r\n                                        Cellphone: +1-346-2700095\r\n                                    </p>\r\n\r\n                                    <p>\r\n                                        <strong>In MEXICO:</strong><br />\r\n                                        Mobile. +01 938-160-8216 <br />\r\n                                        Office. (938) 2861356\r\n                                    </p>\r\n                                </li>\r\n                                <li class=\"Contacto-icoEmailList\">\r\n                                    <a href=\"mailto:sales@presco.mx\">sales@presco.mx</a>\r\n                                </li>\r\n                            </ul>\r\n<!-- /wp:html -->\r\n\r\n<!-- wp:html -->\r\n<ul class=\"Contacto-List\">\r\n                                <li class=\"Contacto-icoDireccionList\">\r\n                                        11111 Katy Fwy, Houston, TX 77043, USA.2\r\n                                </li>\r\n                                <li class=\"Contacto-icoTelefonoList\">\r\n                                    <p><strong>Attention 24 hours a day:</strong></p>\r\n                                    <p>\r\n                                        <strong>In US:</strong><br />\r\n                                        Cellphone: +1-346-2700095\r\n                                    </p>\r\n\r\n                                    <p>\r\n                                        <strong>In MEXICO:</strong><br />\r\n                                        Mobile. +01 938-160-8216 <br />\r\n                                        Office. (938) 2861356\r\n                                    </p>\r\n                                </li>\r\n                                <li class=\"Contacto-icoEmailList\">\r\n                                    <a href=\"mailto:sales@presco.mx\">sales@presco.mx</a>\r\n                                </li>\r\n                            </ul>\r\n<!-- /wp:html -->', 'Contact data', '', 'inherit', 'closed', 'closed', '', '86-revision-v1', '', '', '2018-12-26 23:22:46', '2018-12-26 23:22:46', '', 86, 'http://presco-houston.gomserver.net/cms/86-revision-v1/', 0, 'revision', '', 0),
(96, 1, '2018-12-26 23:26:09', '2018-12-26 23:26:09', '<!-- wp:html -->\r\n<ul class=\"Contacto-List\">\r\n                                <li class=\"Contacto-icoDireccionList\">\r\n                                        11111 Katy Fwy, Houston, TX 77043, USA.\r\n                                </li>\r\n                                <li class=\"Contacto-icoTelefonoList\">\r\n                                    <p><strong>Call us today:</strong></p>\r\n                                    <p>\r\n                                        <strong>In US:</strong><br />\r\n                                        Cellphone: +1-346-2700095\r\n                                    </p>\r\n\r\n                                    <p>\r\n                                        <strong>In MEXICO:</strong><br />\r\n                                        Mobile. +01 938-160-8216 <br />\r\n                                        Office. (938) 2861356\r\n                                    </p>\r\n                                </li>\r\n                                <li class=\"Contacto-icoEmailList\">\r\n                                    <a href=\"mailto:sales@presco.mx\">sales@presco.mx</a>\r\n                                </li>\r\n                            </ul>\r\n<!-- /wp:html -->', 'Contact data', '', 'inherit', 'closed', 'closed', '', '86-revision-v1', '', '', '2018-12-26 23:26:09', '2018-12-26 23:26:09', '', 86, 'http://presco-houston.gomserver.net/cms/86-revision-v1/', 0, 'revision', '', 0),
(97, 1, '2018-12-26 23:40:58', '2018-12-26 23:40:58', '<!-- wp:html -->\n<a href=\"https://www.facebook.com/profile.php?id=100011444957724\"><img src=\"http://presco-houston.gomserver.net/cms/wp-content/uploads/2018/12/icoFacebook.png\" alt=\"\" class=\"wp-image-98\" width=\"35\" height=\"35\"/></a>\n<!-- /wp:html -->', 'Redes sociales', '', 'trash', 'closed', 'closed', '', '__trashed', '', '', '2018-12-26 23:40:58', '2018-12-26 23:40:58', '', 0, 'http://presco-houston.gomserver.net/cms/?p=97', 0, 'post', '', 0),
(98, 1, '2018-12-26 23:33:52', '2018-12-26 23:33:52', '', 'icoFacebook', '', 'inherit', 'closed', 'closed', '', 'icofacebook', '', '', '2018-12-26 23:33:52', '2018-12-26 23:33:52', '', 97, 'http://presco-houston.gomserver.net/cms/wp-content/uploads/2018/12/icoFacebook.png', 0, 'attachment', 'image/png', 0),
(99, 1, '2018-12-26 23:35:43', '2018-12-26 23:35:43', '<!-- wp:image {\"id\":98,\"align\":\"left\"} -->\n<div class=\"wp-block-image\"><figure class=\"alignleft\"><img src=\"http://presco-houston.gomserver.net/cms/wp-content/uploads/2018/12/icoFacebook.png\" alt=\"\" class=\"wp-image-98\"/></figure></div>\n<!-- /wp:image -->', 'Untitled Reusable Block', '', 'publish', 'closed', 'closed', '', 'untitled-reusable-block', '', '', '2018-12-26 23:35:43', '2018-12-26 23:35:43', '', 0, 'http://presco-houston.gomserver.net/cms/untitled-reusable-block/', 0, 'wp_block', '', 0),
(100, 1, '2018-12-26 23:40:58', '2018-12-26 23:40:58', '<!-- wp:html -->\n<a href=\"https://www.facebook.com/profile.php?id=100011444957724\"><img src=\"http://presco-houston.gomserver.net/cms/wp-content/uploads/2018/12/icoFacebook.png\" alt=\"\" class=\"wp-image-98\" width=\"35\" height=\"35\"/></a>\n<!-- /wp:html -->', 'Redes sociales', '', 'inherit', 'closed', 'closed', '', '97-revision-v1', '', '', '2018-12-26 23:40:58', '2018-12-26 23:40:58', '', 97, 'http://presco-houston.gomserver.net/cms/97-revision-v1/', 0, 'revision', '', 0),
(104, 1, '2019-01-18 22:10:09', '2019-01-18 22:10:09', '', 'prueba', '', 'publish', 'closed', 'closed', '', 'prueba', '', '', '2019-01-18 22:10:09', '2019-01-18 22:10:09', '', 0, 'http://presco-houston.gomserver.net/cms/?p=104', 0, 'post', '', 0),
(106, 1, '2019-01-18 22:10:09', '2019-01-18 22:10:09', '', 'prueba', '', 'inherit', 'closed', 'closed', '', '104-revision-v1', '', '', '2019-01-18 22:10:09', '2019-01-18 22:10:09', '', 104, 'http://presco-houston.gomserver.net/cms/104-revision-v1/', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `hoston_termmeta`
--

CREATE TABLE `hoston_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `hoston_terms`
--

CREATE TABLE `hoston_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Volcado de datos para la tabla `hoston_terms`
--

INSERT INTO `hoston_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Sin categoría', 'sin-categoria', 0),
(2, 'Our Services', 'our-services', 0),
(3, 'Products', 'products', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `hoston_term_relationships`
--

CREATE TABLE `hoston_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Volcado de datos para la tabla `hoston_term_relationships`
--

INSERT INTO `hoston_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(9, 1, 0),
(24, 1, 0),
(15, 2, 0),
(19, 2, 0),
(54, 1, 0),
(38, 3, 0),
(44, 3, 0),
(49, 3, 0),
(60, 1, 0),
(81, 1, 0),
(86, 1, 0),
(97, 1, 0),
(104, 1, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `hoston_term_taxonomy`
--

CREATE TABLE `hoston_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Volcado de datos para la tabla `hoston_term_taxonomy`
--

INSERT INTO `hoston_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 7),
(2, 2, 'category', '', 0, 2),
(3, 3, 'category', '', 0, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `hoston_usermeta`
--

CREATE TABLE `hoston_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Volcado de datos para la tabla `hoston_usermeta`
--

INSERT INTO `hoston_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'prescohouston'),
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
(12, 1, 'hoston_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'hoston_user_level', '10'),
(14, 1, 'dismissed_hoston_pointers', 'wp496_privacy'),
(15, 1, 'show_welcome_panel', '1'),
(21, 1, 'session_tokens', 'a:2:{s:64:\"dbec798fa10aa00250d284249ce8f4306d00b428e9b62c8e028aa0d37606b8e9\";a:4:{s:10:\"expiration\";i:1548018537;s:2:\"ip\";s:15:\"187.154.218.145\";s:2:\"ua\";s:120:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36\";s:5:\"login\";i:1547845737;}s:64:\"00affb9052303eacc79823f7c3b408acd68230758ae87a9f0d91f68edd21c7e7\";a:4:{s:10:\"expiration\";i:1548023718;s:2:\"ip\";s:15:\"187.154.218.145\";s:2:\"ua\";s:120:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36\";s:5:\"login\";i:1547850918;}}'),
(17, 1, 'hoston_dashboard_quick_press_last_post_id', '103'),
(18, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:13:\"187.154.218.0\";}'),
(19, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(20, 1, 'metaboxhidden_nav-menus', 'a:2:{i:0;s:12:\"add-post_tag\";i:1;s:15:\"add-post_format\";}'),
(22, 1, 'hoston_user-settings', 'libraryContent=browse'),
(23, 1, 'hoston_user-settings-time', '1545846478'),
(24, 1, 'dismissed_wp_pointers', 'wp496_privacy');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `hoston_users`
--

CREATE TABLE `hoston_users` (
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
-- Volcado de datos para la tabla `hoston_users`
--

INSERT INTO `hoston_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'prescohouston', '$P$BSRz5L/UuennFqhejnpCf7WVXJZTgM.', 'prescohouston', 'desarrollo@gomultimedios.com', '', '2018-12-26 17:05:13', '', 0, 'prescohouston');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `hoston_commentmeta`
--
ALTER TABLE `hoston_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indices de la tabla `hoston_comments`
--
ALTER TABLE `hoston_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indices de la tabla `hoston_links`
--
ALTER TABLE `hoston_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indices de la tabla `hoston_options`
--
ALTER TABLE `hoston_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Indices de la tabla `hoston_postmeta`
--
ALTER TABLE `hoston_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indices de la tabla `hoston_posts`
--
ALTER TABLE `hoston_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indices de la tabla `hoston_termmeta`
--
ALTER TABLE `hoston_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indices de la tabla `hoston_terms`
--
ALTER TABLE `hoston_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indices de la tabla `hoston_term_relationships`
--
ALTER TABLE `hoston_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indices de la tabla `hoston_term_taxonomy`
--
ALTER TABLE `hoston_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indices de la tabla `hoston_usermeta`
--
ALTER TABLE `hoston_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indices de la tabla `hoston_users`
--
ALTER TABLE `hoston_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `hoston_commentmeta`
--
ALTER TABLE `hoston_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `hoston_comments`
--
ALTER TABLE `hoston_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `hoston_links`
--
ALTER TABLE `hoston_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `hoston_options`
--
ALTER TABLE `hoston_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=723;

--
-- AUTO_INCREMENT de la tabla `hoston_postmeta`
--
ALTER TABLE `hoston_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=165;

--
-- AUTO_INCREMENT de la tabla `hoston_posts`
--
ALTER TABLE `hoston_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=112;

--
-- AUTO_INCREMENT de la tabla `hoston_termmeta`
--
ALTER TABLE `hoston_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `hoston_terms`
--
ALTER TABLE `hoston_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `hoston_term_taxonomy`
--
ALTER TABLE `hoston_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `hoston_usermeta`
--
ALTER TABLE `hoston_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT de la tabla `hoston_users`
--
ALTER TABLE `hoston_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
