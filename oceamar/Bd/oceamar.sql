-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 07-03-2019 a las 17:15:45
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
-- Base de datos: `gomserve_oceamar`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ocmrwp_commentmeta`
--

CREATE TABLE `ocmrwp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ocmrwp_comments`
--

CREATE TABLE `ocmrwp_comments` (
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
-- Estructura de tabla para la tabla `ocmrwp_links`
--

CREATE TABLE `ocmrwp_links` (
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
-- Estructura de tabla para la tabla `ocmrwp_options`
--

CREATE TABLE `ocmrwp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Volcado de datos para la tabla `ocmrwp_options`
--

INSERT INTO `ocmrwp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://oceamar.gomserver.net', 'yes'),
(2, 'home', 'http://oceamar.gomserver.net', 'yes'),
(3, 'blogname', 'Ocearmar', 'yes'),
(4, 'blogdescription', 'Otro sitio realizado con WordPress', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'apemontero@gmail.com', 'yes'),
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
(23, 'date_format', 'j F, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'j F, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:90:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:0:{}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '-6', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'oceamar', 'yes'),
(41, 'stylesheet', 'oceamar', 'yes'),
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
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '0', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'initial_db_version', '38590', 'yes'),
(93, 'ocmrwp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(94, 'fresh_site', '0', 'yes'),
(95, 'WPLANG', 'es_MX', 'yes'),
(96, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(97, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'sidebars_widgets', 'a:2:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:13:\"array_version\";i:3;}', 'yes'),
(102, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'cron', 'a:6:{i:1542613351;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1542616951;a:2:{s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1542627142;a:1:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1542660172;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1542663284;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes'),
(287, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(132, 'can_compress_scripts', '0', 'no'),
(1321, '_site_transient_timeout_theme_roots', '1542611599', 'no'),
(1322, '_site_transient_theme_roots', 'a:1:{s:7:\"oceamar\";s:7:\"/themes\";}', 'no'),
(135, 'theme_mods_twentyseventeen', 'a:1:{s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1530045955;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}}}}', 'yes'),
(136, 'current_theme', 'Theme OCEARMAR', 'yes'),
(137, 'theme_mods_oceamar', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(138, 'theme_switched', '', 'yes'),
(318, 'category_children', 'a:0:{}', 'yes'),
(420, 'auto_core_update_notified', 'a:4:{s:4:\"type\";s:7:\"success\";s:5:\"email\";s:20:\"apemontero@gmail.com\";s:7:\"version\";s:5:\"4.9.8\";s:9:\"timestamp\";i:1533263924;}', 'no'),
(740, 'recently_activated', 'a:0:{}', 'yes'),
(1304, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1542609799;s:7:\"checked\";a:1:{s:7:\"oceamar\";s:3:\"0.1\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(1303, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/es_MX/wordpress-4.9.8.zip\";s:6:\"locale\";s:5:\"es_MX\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/es_MX/wordpress-4.9.8.zip\";s:10:\"no_content\";b:0;s:11:\"new_bundled\";b:0;s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"4.9.8\";s:7:\"version\";s:5:\"4.9.8\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"4.7\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1542609798;s:15:\"version_checked\";s:5:\"4.9.8\";s:12:\"translations\";a:0:{}}', 'no'),
(1323, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1542609800;s:7:\"checked\";a:1:{s:19:\"akismet/akismet.php\";s:5:\"4.0.8\";}s:8:\"response\";a:1:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:3:\"4.1\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:54:\"https://downloads.wordpress.org/plugin/akismet.4.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:3:\"5.0\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:0:{}}', 'no');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ocmrwp_postmeta`
--

CREATE TABLE `ocmrwp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Volcado de datos para la tabla `ocmrwp_postmeta`
--

INSERT INTO `ocmrwp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(3, 5, '_edit_last', '1'),
(4, 5, '_edit_lock', '1530231025:1'),
(16, 10, '_edit_lock', '1530232087:1'),
(15, 10, '_edit_last', '1'),
(25, 16, '_edit_last', '1'),
(26, 16, '_edit_lock', '1530209925:1'),
(32, 18, '_edit_lock', '1530224437:1'),
(31, 18, '_edit_last', '1'),
(45, 24, '_edit_last', '1'),
(46, 24, '_edit_lock', '1530052152:1'),
(50, 26, '_edit_lock', '1530052192:1'),
(49, 26, '_edit_last', '1'),
(54, 28, '_edit_lock', '1530052210:1'),
(53, 28, '_edit_last', '1'),
(58, 30, '_edit_lock', '1530052267:1'),
(57, 30, '_edit_last', '1'),
(62, 32, '_edit_lock', '1530052548:1'),
(61, 32, '_edit_last', '1'),
(66, 34, '_edit_lock', '1530232551:1'),
(65, 34, '_edit_last', '1'),
(78, 39, '_edit_lock', '1530233363:1'),
(77, 39, '_edit_last', '1'),
(90, 45, '_edit_lock', '1530233395:1'),
(89, 45, '_edit_last', '1'),
(94, 47, '_edit_lock', '1530233451:1'),
(93, 47, '_edit_last', '1'),
(98, 49, '_edit_lock', '1530233489:1'),
(97, 49, '_edit_last', '1'),
(114, 57, '_edit_lock', '1530233855:1'),
(101, 51, '_edit_last', '1'),
(105, 53, '_edit_last', '1'),
(104, 51, '_edit_lock', '1530233520:1'),
(109, 55, '_edit_last', '1'),
(108, 53, '_edit_lock', '1530233568:1'),
(113, 57, '_edit_last', '1'),
(112, 55, '_edit_lock', '1530233569:1'),
(719, 257, '_thumbnail_id', '85'),
(723, 259, '_edit_lock', '1530309329:1'),
(717, 257, '_edit_last', '1'),
(627, 212, '_thumbnail_id', '218'),
(718, 257, '_edit_lock', '1530309287:1'),
(630, 210, '_thumbnail_id', '217'),
(714, 255, '_thumbnail_id', '76'),
(633, 225, '_edit_last', '1'),
(634, 225, '_edit_lock', '1530305998:1'),
(635, 225, '_thumbnail_id', '215'),
(712, 255, '_edit_last', '1'),
(638, 227, '_edit_last', '1'),
(639, 227, '_edit_lock', '1530306078:1'),
(640, 227, '_thumbnail_id', '222'),
(713, 255, '_edit_lock', '1530308326:1'),
(643, 229, '_edit_last', '1'),
(644, 229, '_edit_lock', '1530306130:1'),
(645, 229, '_thumbnail_id', '219'),
(709, 253, '_thumbnail_id', '86'),
(648, 231, '_edit_last', '1'),
(649, 231, '_edit_lock', '1530306217:1'),
(650, 231, '_thumbnail_id', '220'),
(707, 253, '_edit_last', '1'),
(653, 233, '_edit_last', '1'),
(654, 233, '_edit_lock', '1530306294:1'),
(655, 233, '_thumbnail_id', '221'),
(708, 253, '_edit_lock', '1530308299:1'),
(658, 235, '_edit_last', '1'),
(659, 235, '_edit_lock', '1530307525:1'),
(660, 235, '_thumbnail_id', '223'),
(704, 251, '_thumbnail_id', '77'),
(663, 237, '_edit_last', '1'),
(664, 237, '_edit_lock', '1530307820:1'),
(665, 237, '_thumbnail_id', '80'),
(702, 251, '_edit_last', '1'),
(668, 239, '_edit_last', '1'),
(669, 239, '_edit_lock', '1530308098:1'),
(703, 251, '_edit_lock', '1530308268:1'),
(672, 241, '_edit_last', '1'),
(673, 241, '_edit_lock', '1530307888:1'),
(674, 241, '_thumbnail_id', '79'),
(699, 249, '_thumbnail_id', '82'),
(677, 243, '_edit_last', '1'),
(678, 243, '_edit_lock', '1530307969:1'),
(679, 243, '_thumbnail_id', '78'),
(697, 249, '_edit_last', '1'),
(682, 245, '_edit_last', '1'),
(683, 245, '_edit_lock', '1530308032:1'),
(684, 245, '_thumbnail_id', '83'),
(698, 249, '_edit_lock', '1530308184:1'),
(694, 247, '_thumbnail_id', '81'),
(689, 239, '_thumbnail_id', '75'),
(693, 247, '_edit_lock', '1530308145:1'),
(692, 247, '_edit_last', '1'),
(583, 215, '_wp_attached_file', '2018/06/servicios-g.jpg'),
(584, 215, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:327;s:6:\"height\";i:270;s:4:\"file\";s:23:\"2018/06/servicios-g.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"servicios-g-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"servicios-g-300x248.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:248;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"portada_galeria\";a:4:{s:4:\"file\";s:23:\"servicios-g-260x140.jpg\";s:5:\"width\";i:260;s:6:\"height\";i:140;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(585, 216, '_wp_attached_file', '2018/06/servicios-h.jpg'),
(586, 216, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:686;s:6:\"height\";i:270;s:4:\"file\";s:23:\"2018/06/servicios-h.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"servicios-h-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"servicios-h-300x118.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:118;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"portada_galeria\";a:4:{s:4:\"file\";s:23:\"servicios-h-260x140.jpg\";s:5:\"width\";i:260;s:6:\"height\";i:140;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(587, 217, '_wp_attached_file', '2018/06/servicios-a.jpg'),
(588, 217, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:666;s:6:\"height\";i:274;s:4:\"file\";s:23:\"2018/06/servicios-a.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"servicios-a-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"servicios-a-300x123.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:123;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"portada_galeria\";a:4:{s:4:\"file\";s:23:\"servicios-a-260x140.jpg\";s:5:\"width\";i:260;s:6:\"height\";i:140;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(589, 218, '_wp_attached_file', '2018/06/servicios-b.jpg'),
(590, 218, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:667;s:6:\"height\";i:259;s:4:\"file\";s:23:\"2018/06/servicios-b.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"servicios-b-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"servicios-b-300x116.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:116;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"portada_galeria\";a:4:{s:4:\"file\";s:23:\"servicios-b-260x140.jpg\";s:5:\"width\";i:260;s:6:\"height\";i:140;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(591, 219, '_wp_attached_file', '2018/06/servicios-c.jpg'),
(592, 219, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:331;s:6:\"height\";i:551;s:4:\"file\";s:23:\"2018/06/servicios-c.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"servicios-c-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"servicios-c-180x300.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"portada_galeria\";a:4:{s:4:\"file\";s:23:\"servicios-c-260x140.jpg\";s:5:\"width\";i:260;s:6:\"height\";i:140;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(593, 220, '_wp_attached_file', '2018/06/servicios-d.jpg'),
(594, 220, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:342;s:6:\"height\";i:280;s:4:\"file\";s:23:\"2018/06/servicios-d.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"servicios-d-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"servicios-d-300x246.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:246;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"portada_galeria\";a:4:{s:4:\"file\";s:23:\"servicios-d-260x140.jpg\";s:5:\"width\";i:260;s:6:\"height\";i:140;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(595, 221, '_wp_attached_file', '2018/06/servicios-e.jpg'),
(596, 221, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:343;s:6:\"height\";i:276;s:4:\"file\";s:23:\"2018/06/servicios-e.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"servicios-e-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"servicios-e-300x241.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:241;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"portada_galeria\";a:4:{s:4:\"file\";s:23:\"servicios-e-260x140.jpg\";s:5:\"width\";i:260;s:6:\"height\";i:140;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(597, 222, '_wp_attached_file', '2018/06/servicios-f.jpg'),
(598, 222, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:327;s:6:\"height\";i:270;s:4:\"file\";s:23:\"2018/06/servicios-f.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"servicios-f-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"servicios-f-300x248.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:248;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"portada_galeria\";a:4:{s:4:\"file\";s:23:\"servicios-f-260x140.jpg\";s:5:\"width\";i:260;s:6:\"height\";i:140;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(599, 39, '_thumbnail_id', '217'),
(624, 223, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:686;s:6:\"height\";i:278;s:4:\"file\";s:24:\"2018/06/servicios-hv.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"servicios-hv-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:24:\"servicios-hv-300x122.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:122;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"portada_galeria\";a:4:{s:4:\"file\";s:24:\"servicios-hv-260x140.jpg\";s:5:\"width\";i:260;s:6:\"height\";i:140;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(602, 45, '_thumbnail_id', '218'),
(623, 223, '_wp_attached_file', '2018/06/servicios-hv.jpg'),
(605, 47, '_thumbnail_id', '222'),
(620, 57, '_thumbnail_id', '223'),
(608, 49, '_thumbnail_id', '215'),
(617, 55, '_thumbnail_id', '221'),
(611, 51, '_thumbnail_id', '219'),
(614, 53, '_thumbnail_id', '220'),
(186, 74, '_wp_attached_file', '2018/06/logo-schlumberger.png'),
(187, 74, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:247;s:6:\"height\";i:79;s:4:\"file\";s:29:\"2018/06/logo-schlumberger.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:28:\"logo-schlumberger-150x79.png\";s:5:\"width\";i:150;s:6:\"height\";i:79;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(188, 75, '_wp_attached_file', '2018/06/logo-pico.png'),
(189, 75, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:183;s:6:\"height\";i:79;s:4:\"file\";s:21:\"2018/06/logo-pico.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"logo-pico-150x79.png\";s:5:\"width\";i:150;s:6:\"height\";i:79;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(190, 76, '_wp_attached_file', '2018/06/logo-seadrill.png'),
(191, 76, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:247;s:6:\"height\";i:79;s:4:\"file\";s:25:\"2018/06/logo-seadrill.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"logo-seadrill-150x79.png\";s:5:\"width\";i:150;s:6:\"height\";i:79;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(192, 77, '_wp_attached_file', '2018/06/logo-abs.png'),
(193, 77, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:247;s:6:\"height\";i:79;s:4:\"file\";s:20:\"2018/06/logo-abs.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"logo-abs-150x79.png\";s:5:\"width\";i:150;s:6:\"height\";i:79;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(194, 78, '_wp_attached_file', '2018/06/logo-allseas.png'),
(195, 78, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:222;s:6:\"height\";i:79;s:4:\"file\";s:24:\"2018/06/logo-allseas.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"logo-allseas-150x79.png\";s:5:\"width\";i:150;s:6:\"height\";i:79;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(196, 79, '_wp_attached_file', '2018/06/logo-amec.png'),
(197, 79, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:203;s:6:\"height\";i:137;s:4:\"file\";s:21:\"2018/06/logo-amec.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"logo-amec-150x137.png\";s:5:\"width\";i:150;s:6:\"height\";i:137;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(198, 80, '_wp_attached_file', '2018/06/logo-baker.png'),
(199, 80, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:255;s:6:\"height\";i:86;s:4:\"file\";s:22:\"2018/06/logo-baker.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"logo-baker-150x86.png\";s:5:\"width\";i:150;s:6:\"height\";i:86;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(200, 81, '_wp_attached_file', '2018/06/logo-ch.png'),
(201, 81, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:109;s:6:\"height\";i:81;s:4:\"file\";s:19:\"2018/06/logo-ch.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(202, 82, '_wp_attached_file', '2018/06/logo-cosl.png'),
(203, 82, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:199;s:6:\"height\";i:80;s:4:\"file\";s:21:\"2018/06/logo-cosl.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"logo-cosl-150x80.png\";s:5:\"width\";i:150;s:6:\"height\";i:80;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(204, 83, '_wp_attached_file', '2018/06/logo-grupo-r.png'),
(205, 83, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:195;s:6:\"height\";i:79;s:4:\"file\";s:24:\"2018/06/logo-grupo-r.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"logo-grupo-r-150x79.png\";s:5:\"width\";i:150;s:6:\"height\";i:79;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(206, 84, '_wp_attached_file', '2018/06/logo-halliburton.png'),
(207, 84, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:286;s:6:\"height\";i:79;s:4:\"file\";s:28:\"2018/06/logo-halliburton.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:27:\"logo-halliburton-150x79.png\";s:5:\"width\";i:150;s:6:\"height\";i:79;s:9:\"mime-type\";s:9:\"image/png\";}s:15:\"portada_galeria\";a:4:{s:4:\"file\";s:27:\"logo-halliburton-260x79.png\";s:5:\"width\";i:260;s:6:\"height\";i:79;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(208, 85, '_wp_attached_file', '2018/06/logo-nabors.png'),
(209, 85, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:221;s:6:\"height\";i:79;s:4:\"file\";s:23:\"2018/06/logo-nabors.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"logo-nabors-150x79.png\";s:5:\"width\";i:150;s:6:\"height\";i:79;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(210, 86, '_wp_attached_file', '2018/06/logo-oceane.png'),
(211, 86, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:247;s:6:\"height\";i:79;s:4:\"file\";s:23:\"2018/06/logo-oceane.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"logo-oceane-150x79.png\";s:5:\"width\";i:150;s:6:\"height\";i:79;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(230, 91, '_edit_last', '1'),
(231, 91, '_edit_lock', '1530123375:1'),
(232, 91, '_thumbnail_id', '80'),
(238, 93, '_edit_lock', '1530123439:1'),
(237, 93, '_edit_last', '1'),
(239, 93, '_thumbnail_id', '75'),
(243, 95, '_edit_lock', '1530123491:1'),
(242, 95, '_edit_last', '1'),
(244, 95, '_thumbnail_id', '79'),
(248, 97, '_edit_lock', '1530123530:1'),
(247, 97, '_edit_last', '1'),
(249, 97, '_thumbnail_id', '78'),
(253, 99, '_edit_lock', '1530123611:1'),
(252, 99, '_edit_last', '1'),
(254, 99, '_thumbnail_id', '83'),
(258, 101, '_edit_lock', '1530123649:1'),
(257, 101, '_edit_last', '1'),
(259, 101, '_thumbnail_id', '81'),
(263, 103, '_edit_lock', '1530123677:1'),
(262, 103, '_edit_last', '1'),
(264, 103, '_thumbnail_id', '82'),
(268, 105, '_edit_lock', '1530123714:1'),
(267, 105, '_edit_last', '1'),
(269, 105, '_thumbnail_id', '77'),
(273, 107, '_edit_lock', '1530123799:1'),
(272, 107, '_edit_last', '1'),
(274, 107, '_thumbnail_id', '86'),
(278, 109, '_edit_lock', '1530123830:1'),
(277, 109, '_edit_last', '1'),
(279, 109, '_thumbnail_id', '76'),
(283, 111, '_edit_lock', '1530123870:1'),
(282, 111, '_edit_last', '1'),
(284, 111, '_thumbnail_id', '85'),
(288, 113, '_edit_lock', '1530123901:1'),
(287, 113, '_edit_last', '1'),
(289, 113, '_thumbnail_id', '84'),
(293, 115, '_edit_lock', '1530125915:1'),
(292, 115, '_edit_last', '1'),
(294, 115, '_thumbnail_id', '74'),
(298, 117, '_edit_lock', '1530309593:1'),
(297, 117, '_edit_last', '1'),
(310, 123, '_edit_lock', '1530137599:1'),
(309, 123, '_edit_last', '1'),
(314, 125, '_edit_lock', '1530137672:1'),
(313, 125, '_edit_last', '1'),
(318, 127, '_edit_lock', '1530137711:1'),
(317, 127, '_edit_last', '1'),
(322, 129, '_edit_lock', '1530137735:1'),
(321, 129, '_edit_last', '1'),
(326, 133, '_edit_lock', '1530204035:1'),
(325, 133, '_edit_last', '1'),
(335, 137, '_edit_last', '1'),
(336, 137, '_edit_lock', '1530209559:1'),
(337, 139, '_edit_last', '1'),
(338, 139, '_edit_lock', '1530206455:1'),
(339, 141, '_menu_item_type', 'post_type'),
(340, 141, '_menu_item_menu_item_parent', '0'),
(341, 141, '_menu_item_object_id', '139'),
(342, 141, '_menu_item_object', 'page'),
(343, 141, '_menu_item_target', ''),
(344, 141, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(345, 141, '_menu_item_xfn', ''),
(346, 141, '_menu_item_url', ''),
(348, 142, '_menu_item_type', 'post_type'),
(349, 142, '_menu_item_menu_item_parent', '0'),
(350, 142, '_menu_item_object_id', '137'),
(351, 142, '_menu_item_object', 'page'),
(352, 142, '_menu_item_target', ''),
(353, 142, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(354, 142, '_menu_item_xfn', ''),
(355, 142, '_menu_item_url', ''),
(378, 157, '_edit_last', '1'),
(379, 157, '_edit_lock', '1530212008:1'),
(383, 159, '_edit_lock', '1530220286:1'),
(382, 159, '_edit_last', '1'),
(468, 164, '_wp_attached_file', '2018/06/dos_bocas.jpg'),
(469, 164, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:750;s:6:\"height\";i:468;s:4:\"file\";s:21:\"2018/06/dos_bocas.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"dos_bocas-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"dos_bocas-300x187.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:187;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"portada_galeria\";a:4:{s:4:\"file\";s:21:\"dos_bocas-260x140.jpg\";s:5:\"width\";i:260;s:6:\"height\";i:140;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(467, 163, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:850;s:6:\"height\";i:500;s:4:\"file\";s:25:\"2018/06/coatzacoalcos.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:25:\"coatzacoalcos-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:25:\"coatzacoalcos-300x176.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:176;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:25:\"coatzacoalcos-768x452.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:452;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"portada_galeria\";a:4:{s:4:\"file\";s:25:\"coatzacoalcos-260x140.jpg\";s:5:\"width\";i:260;s:6:\"height\";i:140;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(466, 163, '_wp_attached_file', '2018/06/coatzacoalcos.jpg'),
(465, 162, '_edit_lock', '1530227546:1'),
(464, 162, '_edit_last', '1'),
(470, 165, '_wp_attached_file', '2018/06/fronteras.jpg'),
(471, 165, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:275;s:6:\"height\";i:206;s:4:\"file\";s:21:\"2018/06/fronteras.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"fronteras-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"portada_galeria\";a:4:{s:4:\"file\";s:21:\"fronteras-260x140.jpg\";s:5:\"width\";i:260;s:6:\"height\";i:140;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(472, 166, '_wp_attached_file', '2018/06/progreso.jpg'),
(473, 166, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:497;s:4:\"file\";s:20:\"2018/06/progreso.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"progreso-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"progreso-300x186.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:186;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"progreso-768x477.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:477;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"portada_galeria\";a:4:{s:4:\"file\";s:20:\"progreso-260x140.jpg\";s:5:\"width\";i:260;s:6:\"height\";i:140;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(474, 167, '_wp_attached_file', '2018/06/seybaplaya.jpg'),
(475, 167, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1024;s:6:\"height\";i:768;s:4:\"file\";s:22:\"2018/06/seybaplaya.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"seybaplaya-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"seybaplaya-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:22:\"seybaplaya-768x576.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:23:\"seybaplaya-1024x768.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"portada_galeria\";a:4:{s:4:\"file\";s:22:\"seybaplaya-260x140.jpg\";s:5:\"width\";i:260;s:6:\"height\";i:140;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(476, 168, '_wp_attached_file', '2018/06/tampico.jpg'),
(477, 168, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:750;s:6:\"height\";i:468;s:4:\"file\";s:19:\"2018/06/tampico.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"tampico-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"tampico-300x187.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:187;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"portada_galeria\";a:4:{s:4:\"file\";s:19:\"tampico-260x140.jpg\";s:5:\"width\";i:260;s:6:\"height\";i:140;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(478, 169, '_wp_attached_file', '2018/06/tuxpan.jpg'),
(479, 169, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1200;s:6:\"height\";i:812;s:4:\"file\";s:18:\"2018/06/tuxpan.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"tuxpan-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"tuxpan-300x203.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:203;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:18:\"tuxpan-768x520.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:520;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:19:\"tuxpan-1024x693.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:693;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"portada_galeria\";a:4:{s:4:\"file\";s:18:\"tuxpan-260x140.jpg\";s:5:\"width\";i:260;s:6:\"height\";i:140;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(480, 170, '_wp_attached_file', '2018/06/veracruz.jpg'),
(481, 170, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:703;s:6:\"height\";i:442;s:4:\"file\";s:20:\"2018/06/veracruz.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"veracruz-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"veracruz-300x189.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:189;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"portada_galeria\";a:4:{s:4:\"file\";s:20:\"veracruz-260x140.jpg\";s:5:\"width\";i:260;s:6:\"height\";i:140;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(482, 171, '_wp_attached_file', '2018/06/altamira.jpg'),
(483, 171, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:700;s:6:\"height\";i:430;s:4:\"file\";s:20:\"2018/06/altamira.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"altamira-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"altamira-300x184.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:184;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"portada_galeria\";a:4:{s:4:\"file\";s:20:\"altamira-260x140.jpg\";s:5:\"width\";i:260;s:6:\"height\";i:140;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(484, 172, '_wp_attached_file', '2018/06/carmen.jpg'),
(485, 172, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:500;s:4:\"file\";s:18:\"2018/06/carmen.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"carmen-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"carmen-300x188.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:188;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:18:\"carmen-768x480.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:480;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"portada_galeria\";a:4:{s:4:\"file\";s:18:\"carmen-260x140.jpg\";s:5:\"width\";i:260;s:6:\"height\";i:140;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:3:\"3.5\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:7:\"DSC-S40\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1193414780\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:3:\"7.6\";s:3:\"iso\";s:2:\"80\";s:13:\"shutter_speed\";s:6:\"0.0025\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(486, 162, '_thumbnail_id', '163'),
(494, 175, '_thumbnail_id', '169'),
(493, 175, '_edit_last', '1'),
(499, 179, '_edit_lock', '1530229721:1'),
(498, 179, '_edit_last', '1'),
(497, 175, '_edit_lock', '1530227874:1'),
(502, 179, '_thumbnail_id', '168'),
(506, 182, '_edit_lock', '1530229637:1'),
(505, 182, '_edit_last', '1'),
(507, 182, '_thumbnail_id', '171'),
(513, 184, '_edit_lock', '1530229968:1'),
(512, 184, '_edit_last', '1'),
(514, 184, '_thumbnail_id', '164'),
(518, 186, '_edit_lock', '1530230045:1'),
(517, 186, '_edit_last', '1'),
(519, 186, '_thumbnail_id', '165'),
(523, 188, '_edit_lock', '1530230101:1'),
(522, 188, '_edit_last', '1'),
(524, 188, '_thumbnail_id', '172'),
(528, 190, '_edit_lock', '1530230175:1'),
(527, 190, '_edit_last', '1'),
(529, 190, '_thumbnail_id', '167'),
(533, 192, '_edit_lock', '1530230990:1'),
(532, 192, '_edit_last', '1'),
(534, 192, '_thumbnail_id', '166'),
(538, 194, '_edit_lock', '1530232039:1'),
(537, 194, '_edit_last', '1'),
(542, 196, '_edit_lock', '1530232327:1'),
(541, 196, '_edit_last', '1'),
(548, 198, '_edit_lock', '1530232399:1'),
(547, 198, '_edit_last', '1'),
(556, 202, '_edit_lock', '1530232454:1'),
(551, 200, '_edit_last', '1'),
(555, 202, '_edit_last', '1'),
(554, 200, '_edit_lock', '1530232426:1'),
(560, 204, '_edit_lock', '1530232475:1'),
(559, 204, '_edit_last', '1'),
(564, 206, '_edit_lock', '1530232555:1'),
(563, 206, '_edit_last', '1'),
(568, 208, '_edit_lock', '1530232645:1'),
(567, 208, '_edit_last', '1'),
(572, 210, '_edit_lock', '1530305881:1'),
(571, 210, '_edit_last', '1'),
(577, 212, '_edit_lock', '1530233844:1'),
(576, 212, '_edit_last', '1'),
(722, 259, '_edit_last', '1'),
(724, 259, '_thumbnail_id', '84'),
(728, 261, '_edit_lock', '1530313237:1'),
(727, 261, '_edit_last', '1'),
(729, 261, '_thumbnail_id', '74'),
(732, 263, '_edit_last', '1'),
(739, 266, '_edit_lock', '1530313828:1'),
(735, 263, '_edit_lock', '1530312940:1'),
(738, 266, '_edit_last', '1'),
(743, 268, '_edit_lock', '1530313894:1'),
(742, 268, '_edit_last', '1'),
(747, 270, '_edit_lock', '1530314009:1'),
(746, 270, '_edit_last', '1'),
(753, 272, '_edit_lock', '1530314056:1'),
(752, 272, '_edit_last', '1'),
(757, 274, '_edit_lock', '1530314101:1'),
(756, 274, '_edit_last', '1'),
(761, 276, '_edit_lock', '1530314134:1'),
(760, 276, '_edit_last', '1'),
(765, 278, '_edit_lock', '1530314178:1'),
(764, 278, '_edit_last', '1'),
(769, 280, '_edit_lock', '1530314208:1'),
(768, 280, '_edit_last', '1'),
(773, 282, '_edit_lock', '1530314344:1'),
(772, 282, '_edit_last', '1'),
(779, 284, '_edit_lock', '1534783631:1'),
(778, 284, '_edit_last', '1'),
(785, 286, '_edit_lock', '1530314737:1'),
(784, 286, '_edit_last', '1'),
(786, 286, '_thumbnail_id', '217'),
(792, 289, '_thumbnail_id', '218'),
(791, 289, '_edit_last', '1'),
(799, 292, '_edit_lock', '1530314912:1'),
(795, 289, '_edit_lock', '1530314852:1'),
(798, 292, '_edit_last', '1'),
(800, 292, '_thumbnail_id', '222'),
(804, 294, '_edit_lock', '1530315060:1'),
(803, 294, '_edit_last', '1'),
(805, 294, '_thumbnail_id', '215'),
(811, 296, '_edit_lock', '1530315135:1'),
(810, 296, '_edit_last', '1'),
(812, 296, '_thumbnail_id', '219'),
(816, 298, '_edit_lock', '1530315223:1'),
(815, 298, '_edit_last', '1'),
(817, 298, '_thumbnail_id', '220'),
(821, 300, '_edit_lock', '1530316508:1'),
(820, 300, '_edit_last', '1'),
(822, 300, '_thumbnail_id', '221'),
(828, 302, '_edit_lock', '1530318178:1'),
(827, 302, '_edit_last', '1'),
(829, 302, '_thumbnail_id', '223'),
(833, 304, '_edit_lock', '1530318830:1'),
(832, 304, '_edit_last', '1'),
(834, 304, '_thumbnail_id', '171'),
(838, 306, '_edit_lock', '1530318703:1'),
(837, 306, '_edit_last', '1'),
(839, 306, '_thumbnail_id', '168'),
(843, 308, '_thumbnail_id', '169'),
(842, 308, '_edit_last', '1'),
(848, 310, '_edit_lock', '1530319315:1'),
(847, 310, '_edit_last', '1'),
(846, 308, '_edit_lock', '1530318719:1'),
(849, 310, '_thumbnail_id', '163'),
(853, 312, '_edit_lock', '1530319315:1'),
(852, 312, '_edit_last', '1'),
(854, 312, '_thumbnail_id', '164'),
(858, 314, '_thumbnail_id', '165'),
(857, 314, '_edit_last', '1'),
(868, 319, '_edit_last', '1'),
(861, 314, '_edit_lock', '1530319319:1'),
(869, 319, '_edit_lock', '1530318785:1'),
(870, 319, '_thumbnail_id', '172'),
(874, 321, '_edit_lock', '1530318837:1'),
(873, 321, '_edit_last', '1'),
(875, 321, '_thumbnail_id', '167'),
(879, 323, '_edit_lock', '1530318926:1'),
(878, 323, '_edit_last', '1'),
(880, 323, '_thumbnail_id', '166'),
(889, 329, '_edit_last', '1'),
(890, 329, '_edit_lock', '1530379755:1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ocmrwp_posts`
--

CREATE TABLE `ocmrwp_posts` (
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
-- Volcado de datos para la tabla `ocmrwp_posts`
--

INSERT INTO `ocmrwp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(5, 1, '2018-06-26 15:36:24', '2018-06-26 21:36:24', 'Oceamar es una Agencia Offshore que se enfoca en atender las necesidades relacionadas a la industria marítima y petrolera ofreciendo un servicio integral y especializado.', 'Acerca de', '', 'publish', 'open', 'open', '', 'nosotros', '', '', '2018-06-28 16:26:07', '2018-06-28 22:26:07', '', 0, 'http://oceamar.gomserver.net/?p=5', 0, 'post', '', 0),
(6, 1, '2018-06-26 15:36:24', '2018-06-26 21:36:24', 'Oceamar es una Agencia Offshore que se enfoca en atender las necesidades relacionadas a la industria marítima y petrolera ofreciendo un servicio integral y especializado.', 'Nosotros', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2018-06-26 15:36:24', '2018-06-26 21:36:24', '', 5, 'http://oceamar.gomserver.net/2018/06/26/5-revision-v1/', 0, 'revision', '', 0),
(8, 1, '2018-06-26 15:40:02', '2018-06-26 21:40:02', 'Oceamar es una Agencia Offshore que se enfoca en atender las necesidades relacionadas a la industria marítima y petrolera ofreciendo un servicio integral y especializado.', 'Nosotros', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2018-06-26 15:40:02', '2018-06-26 21:40:02', '', 5, 'http://oceamar.gomserver.net/2018/06/26/5-revision-v1/', 0, 'revision', '', 0),
(7, 1, '2018-06-26 15:37:54', '2018-06-26 21:37:54', 'Alex Preez Montero Oceamar es una Agencia Offshore que se enfoca en atender las necesidades relacionadas a la industria marítima y petrolera ofreciendo un servicio integral y especializado.', 'Nosotros', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2018-06-26 15:37:54', '2018-06-26 21:37:54', '', 5, 'http://oceamar.gomserver.net/2018/06/26/5-revision-v1/', 0, 'revision', '', 0),
(9, 1, '2018-06-26 15:41:36', '2018-06-26 21:41:36', 'Oceamar es una Agencia Offshore que se enfoca en atender las necesidades relacionadas a la industria marítima y petrolera ofreciendo un servicio integral y especializado.', 'Acerca de', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2018-06-26 15:41:36', '2018-06-26 21:41:36', '', 5, 'http://oceamar.gomserver.net/2018/06/26/5-revision-v1/', 0, 'revision', '', 0),
(10, 1, '2018-06-26 15:55:24', '2018-06-26 21:55:24', 'Somos una agencia dedicada a la atención de barcos y plataformas offshore.', 'Nosotros', '', 'publish', 'open', 'open', '', 'nosotros-2', '', '', '2018-06-28 16:24:38', '2018-06-28 22:24:38', '', 0, 'http://oceamar.gomserver.net/?p=10', 0, 'post', '', 0),
(11, 1, '2018-06-26 15:55:24', '2018-06-26 21:55:24', '<h1>Somos una agencia dedicada a la atención de barcos y plataformas offshore.</h1>', 'Nosotros', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2018-06-26 15:55:24', '2018-06-26 21:55:24', '', 10, 'http://oceamar.gomserver.net/2018/06/26/10-revision-v1/', 0, 'revision', '', 0),
(12, 1, '2018-06-26 15:59:40', '2018-06-26 21:59:40', 'Somos una agencia dedicada a la atención de barcos y plataformas offshore.', 'Nosotros', '', 'inherit', 'closed', 'closed', '', '10-autosave-v1', '', '', '2018-06-26 15:59:40', '2018-06-26 21:59:40', '', 10, 'http://oceamar.gomserver.net/2018/06/26/10-autosave-v1/', 0, 'revision', '', 0),
(13, 1, '2018-06-26 15:59:57', '2018-06-26 21:59:57', 'Somos una agencia dedicada a la atención de barcos y plataformas offshore.', 'Nosotros', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2018-06-26 15:59:57', '2018-06-26 21:59:57', '', 10, 'http://oceamar.gomserver.net/2018/06/26/10-revision-v1/', 0, 'revision', '', 0),
(15, 1, '2018-06-26 16:00:50', '2018-06-26 22:00:50', 'Somos una agencia dedicada a la atención de barcos y plataformas offshore.', 'Nosotros', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2018-06-26 16:00:50', '2018-06-26 22:00:50', '', 10, 'http://oceamar.gomserver.net/2018/06/26/10-revision-v1/', 0, 'revision', '', 0),
(14, 1, '2018-06-26 16:00:37', '2018-06-26 22:00:37', 'Somos una agencia dedicada a la atención de barcos y plataformas offshore. para el mundo mundial', 'Nosotros', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2018-06-26 16:00:37', '2018-06-26 22:00:37', '', 10, 'http://oceamar.gomserver.net/2018/06/26/10-revision-v1/', 0, 'revision', '', 0),
(16, 1, '2018-06-26 16:01:56', '2018-06-26 22:01:56', 'Somos una empresa comprometida al proporcionar Agenciamiento Consignatario a través de servicios marítimos, portuarios y de logística, en busca de otorgar atención de calidad y de excelencia, para el desarrollo de nuestros clientes, colaboradores, proveedores y comunidad.', 'Visión', '', 'publish', 'open', 'open', '', 'vision', '', '', '2018-06-28 12:21:05', '2018-06-28 18:21:05', '', 0, 'http://oceamar.gomserver.net/?p=16', 0, 'post', '', 0),
(17, 1, '2018-06-26 16:01:56', '2018-06-26 22:01:56', 'Somos una empresa comprometida al proporcionar Agenciamiento Consignatario a través de servicios marítimos, portuarios y de logística, en busca de otorgar atención de calidad y de excelencia, para el desarrollo de nuestros clientes, colaboradores, proveedores y comunidad.', 'Visión', '', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2018-06-26 16:01:56', '2018-06-26 22:01:56', '', 16, 'http://oceamar.gomserver.net/2018/06/26/16-revision-v1/', 0, 'revision', '', 0),
(18, 1, '2018-06-26 16:03:04', '2018-06-26 22:03:04', 'Ser la agencia naviera mexicana de mayor confiabilidad, prestigio y proyección, tanto a nivel nacional como internacional, con una operación sustentable en los servicios de agenciamiento en puertos, logística y marinos.', 'Misión', '', 'publish', 'open', 'open', '', 'mision', '', '', '2018-06-28 16:20:33', '2018-06-28 22:20:33', '', 0, 'http://oceamar.gomserver.net/?p=18', 0, 'post', '', 0),
(19, 1, '2018-06-26 16:03:04', '2018-06-26 22:03:04', 'Ser la agencia naviera mexicana de mayor confiabilidad, prestigio y proyección, tanto a nivel nacional como internacional, con una operación sustentable en los servicios de agenciamiento en puertos, logística y marinos.', 'Misión', '', 'inherit', 'closed', 'closed', '', '18-revision-v1', '', '', '2018-06-26 16:03:04', '2018-06-26 22:03:04', '', 18, 'http://oceamar.gomserver.net/2018/06/26/18-revision-v1/', 0, 'revision', '', 0),
(23, 1, '2018-06-26 16:09:50', '2018-06-26 22:09:50', 'Ser la agencia naviera mexicana de mayor confiabilidad, prestigio y proyección, tanto a nivel nacional como internacional, con una operación sustentable en los servicios de agenciamiento en puertos, logística y marinos.', 'Misión', '', 'inherit', 'closed', 'closed', '', '18-revision-v1', '', '', '2018-06-26 16:09:50', '2018-06-26 22:09:50', '', 18, 'http://oceamar.gomserver.net/2018/06/26/18-revision-v1/', 0, 'revision', '', 0),
(20, 1, '2018-06-26 16:08:28', '2018-06-26 22:08:28', 'xx Ser la agencia naviera mexicana de mayor confiabilidad, prestigio y proyección, tanto a nivel nacional como internacional, con una operación sustentable en los servicios de agenciamiento en puertos, logística y marinos.', 'Misión', '', 'inherit', 'closed', 'closed', '', '18-revision-v1', '', '', '2018-06-26 16:08:28', '2018-06-26 22:08:28', '', 18, 'http://oceamar.gomserver.net/2018/06/26/18-revision-v1/', 0, 'revision', '', 0),
(22, 1, '2018-06-26 16:09:38', '2018-06-26 22:09:38', 'Somos una empresa comprometida al proporcionar Agenciamiento Consignatario a través de servicios marítimos, portuarios y de logística, en busca de otorgar atención de calidad y de excelencia, para el desarrollo de nuestros clientes, colaboradores, proveedores y comunidad.', 'Visión', '', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2018-06-26 16:09:38', '2018-06-26 22:09:38', '', 16, 'http://oceamar.gomserver.net/2018/06/26/16-revision-v1/', 0, 'revision', '', 0),
(21, 1, '2018-06-26 16:08:48', '2018-06-26 22:08:48', 'bbbb Somos una empresa comprometida al proporcionar Agenciamiento Consignatario a través de servicios marítimos, portuarios y de logística, en busca de otorgar atención de calidad y de excelencia, para el desarrollo de nuestros clientes, colaboradores, proveedores y comunidad.', 'Visión', '', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2018-06-26 16:08:48', '2018-06-26 22:08:48', '', 16, 'http://oceamar.gomserver.net/2018/06/26/16-revision-v1/', 0, 'revision', '', 0),
(24, 1, '2018-06-26 16:29:36', '2018-06-26 22:29:36', 'Nos imponemos metas desafiantes que requieren gran atención a los detalles, tanto en los proyectos más complejos como en el trabajo diario. El profesionalismo y la responsabilidad están implícitos en este principio.', 'Compromiso', '', 'publish', 'open', 'open', '', 'compromiso', '', '', '2018-06-28 16:26:07', '2018-06-28 22:26:07', '', 0, 'http://oceamar.gomserver.net/?p=24', 0, 'post', '', 0),
(25, 1, '2018-06-26 16:29:36', '2018-06-26 22:29:36', 'Nos imponemos metas desafiantes que requieren gran atención a los detalles, tanto en los proyectos más complejos como en el trabajo diario. El profesionalismo y la responsabilidad están implícitos en este principio.', 'Compromiso', '', 'inherit', 'closed', 'closed', '', '24-revision-v1', '', '', '2018-06-26 16:29:36', '2018-06-26 22:29:36', '', 24, 'http://oceamar.gomserver.net/2018/06/26/24-revision-v1/', 0, 'revision', '', 0),
(26, 1, '2018-06-26 16:31:53', '2018-06-26 22:31:53', 'Pensar siempre en nuevas ideas para mejorar, aún cuando las condiciones parezcan satisfactorias. Estar abiertos al mejoramiento continuo.', 'Innovación', '', 'publish', 'open', 'open', '', 'innovacion', '', '', '2018-06-28 16:26:06', '2018-06-28 22:26:06', '', 0, 'http://oceamar.gomserver.net/?p=26', 0, 'post', '', 0),
(27, 1, '2018-06-26 16:31:53', '2018-06-26 22:31:53', 'Pensar siempre en nuevas ideas para mejorar, aún cuando las condiciones parezcan satisfactorias. Estar abiertos al mejoramiento continuo.', 'Innovación', '', 'inherit', 'closed', 'closed', '', '26-revision-v1', '', '', '2018-06-26 16:31:53', '2018-06-26 22:31:53', '', 26, 'http://oceamar.gomserver.net/2018/06/26/26-revision-v1/', 0, 'revision', '', 0),
(28, 1, '2018-06-26 16:32:26', '2018-06-26 22:32:26', 'Promovemos altos estándares de comportamiento ético que van más allá de cualquier código o regulación. De este principio se desprenden los valores de lealtad y cooperación hacia todos los accionistas y la conciencia social y ambiental.', 'Integridad', '', 'publish', 'open', 'open', '', 'integridad', '', '', '2018-06-28 16:26:06', '2018-06-28 22:26:06', '', 0, 'http://oceamar.gomserver.net/?p=28', 0, 'post', '', 0),
(29, 1, '2018-06-26 16:32:26', '2018-06-26 22:32:26', 'Promovemos altos estándares de comportamiento ético que van más allá de cualquier código o regulación. De este principio se desprenden los valores de lealtad y cooperación hacia todos los accionistas y la conciencia social y ambiental.', 'Integridad', '', 'inherit', 'closed', 'closed', '', '28-revision-v1', '', '', '2018-06-26 16:32:26', '2018-06-26 22:32:26', '', 28, 'http://oceamar.gomserver.net/2018/06/26/28-revision-v1/', 0, 'revision', '', 0),
(30, 1, '2018-06-26 16:32:51', '2018-06-26 22:32:51', 'Realizar y cumplir nuestras tareas, nunca rendirse y ver los desafíos como oportunidades y superarlos.', 'Tenacidad', '', 'publish', 'open', 'open', '', 'tenacidad', '', '', '2018-06-28 16:24:37', '2018-06-28 22:24:37', '', 0, 'http://oceamar.gomserver.net/?p=30', 0, 'post', '', 0),
(31, 1, '2018-06-26 16:32:51', '2018-06-26 22:32:51', 'Realizar y cumplir nuestras tareas, nunca rendirse y ver los desafíos como oportunidades y superarlos.', 'Tenacidad', '', 'inherit', 'closed', 'closed', '', '30-revision-v1', '', '', '2018-06-26 16:32:51', '2018-06-26 22:32:51', '', 30, 'http://oceamar.gomserver.net/2018/06/26/30-revision-v1/', 0, 'revision', '', 0),
(32, 1, '2018-06-26 16:33:45', '2018-06-26 22:33:45', 'Cumplir las necesidades del cliente en tiempo y forma pactados, respetando todos los requisitos legales y aplicables a nuestra operación.', 'Confiabilidad', '', 'publish', 'open', 'open', '', 'confiabilidad', '', '', '2018-06-28 16:26:07', '2018-06-28 22:26:07', '', 0, 'http://oceamar.gomserver.net/?p=32', 0, 'post', '', 0),
(33, 1, '2018-06-26 16:33:45', '2018-06-26 22:33:45', 'Cumplir las necesidades del cliente en tiempo y forma pactados, respetando todos los requisitos legales y aplicables a nuestra operación.', 'Confiabilidad', '', 'inherit', 'closed', 'closed', '', '32-revision-v1', '', '', '2018-06-26 16:33:45', '2018-06-26 22:33:45', '', 32, 'http://oceamar.gomserver.net/2018/06/26/32-revision-v1/', 0, 'revision', '', 0),
(34, 1, '2018-06-26 16:40:11', '2018-06-26 22:40:11', 'Dentro de nuestra oferta integral se encuentran los siguientes servicios:', 'Servicios', '', 'publish', 'open', 'open', '', 'servicios', '', '', '2018-06-28 16:24:38', '2018-06-28 22:24:38', '', 0, 'http://oceamar.gomserver.net/?p=34', 0, 'post', '', 0),
(35, 1, '2018-06-26 16:40:11', '2018-06-26 22:40:11', 'Dentro de nuestra oferta integral se encuentran los siguientes servicios:', 'Servicios', '', 'inherit', 'closed', 'closed', '', '34-revision-v1', '', '', '2018-06-26 16:40:11', '2018-06-26 22:40:11', '', 34, 'http://oceamar.gomserver.net/2018/06/26/34-revision-v1/', 0, 'revision', '', 0),
(37, 1, '2018-06-26 16:40:49', '2018-06-26 22:40:49', 'Dentro de nuestra oferta integral se encuentran los siguientes servicios:', 'Servicios', '', 'inherit', 'closed', 'closed', '', '34-revision-v1', '', '', '2018-06-26 16:40:49', '2018-06-26 22:40:49', '', 34, 'http://oceamar.gomserver.net/2018/06/26/34-revision-v1/', 0, 'revision', '', 0),
(36, 1, '2018-06-26 16:40:35', '2018-06-26 22:40:35', 'Dentro de nuestra oferta integral se encuentran los siguientes servicios: holaaaa aqui estoy', 'Servicios xx', '', 'inherit', 'closed', 'closed', '', '34-revision-v1', '', '', '2018-06-26 16:40:35', '2018-06-26 22:40:35', '', 34, 'http://oceamar.gomserver.net/2018/06/26/34-revision-v1/', 0, 'revision', '', 0),
(39, 1, '2018-06-26 17:02:21', '2018-06-26 23:02:21', '<ul>\r\n 	<li>Agencia naviera</li>\r\n 	<li>Agencia consignataria</li>\r\n 	<li>Agencia protectora</li>\r\n 	<li>Buquetanques</li>\r\n 	<li>Granelera</li>\r\n 	<li>Entre otros</li>\r\n</ul>', 'Agenciamiento', '', 'publish', 'open', 'open', '', 'agenciamiento', '', '', '2018-06-28 18:51:25', '2018-06-29 00:51:25', '', 0, 'http://oceamar.gomserver.net/?p=39', 0, 'post', '', 0),
(40, 1, '2018-06-26 17:02:21', '2018-06-26 23:02:21', '<ul>\r\n 	<li>Agencia naviera</li>\r\n 	<li>Agencia consignataria</li>\r\n 	<li>Agencia protectora</li>\r\n 	<li>Buquetanques</li>\r\n 	<li>Granelera</li>\r\n 	<li>Entre otros</li>\r\n</ul>', 'Agenciamiento', '', 'inherit', 'closed', 'closed', '', '39-revision-v1', '', '', '2018-06-26 17:02:21', '2018-06-26 23:02:21', '', 39, 'http://oceamar.gomserver.net/2018/06/26/39-revision-v1/', 0, 'revision', '', 0),
(42, 1, '2018-06-26 17:05:59', '2018-06-26 23:05:59', '<ul>\r\n 	<li>Agencia naviera</li>\r\n 	<li>Agencia consignataria</li>\r\n 	<li>Agencia protectora</li>\r\n 	<li>Buquetanques</li>\r\n 	<li>Granelera</li>\r\n 	<li>Entre otros</li>\r\n</ul>', 'Agenciamiento', '', 'inherit', 'closed', 'closed', '', '39-revision-v1', '', '', '2018-06-26 17:05:59', '2018-06-26 23:05:59', '', 39, 'http://oceamar.gomserver.net/2018/06/26/39-revision-v1/', 0, 'revision', '', 0),
(41, 1, '2018-06-26 17:05:03', '2018-06-26 23:05:03', '<ul>\r\n 	<li>Agencia naviera x</li>\r\n 	<li>Agencia consignataria x</li>\r\n 	<li>Agencia protectora x</li>\r\n 	<li>Buquetanques x</li>\r\n 	<li>Granelera x</li>\r\n 	<li>Entre otros x</li>\r\n</ul>', 'Agenciamiento xx', '', 'inherit', 'closed', 'closed', '', '39-revision-v1', '', '', '2018-06-26 17:05:03', '2018-06-26 23:05:03', '', 39, 'http://oceamar.gomserver.net/2018/06/26/39-revision-v1/', 0, 'revision', '', 0),
(45, 1, '2018-06-26 17:34:49', '2018-06-26 23:34:49', '<ul>\r\n 	<li>Aduanales</li>\r\n 	<li>migratorios</li>\r\n 	<li>Agencia protectora</li>\r\n 	<li>Permisos de navegación</li>\r\n 	<li>Asesoría legal</li>\r\n</ul>', 'Trámites', '', 'publish', 'open', 'open', '', 'tramites', '', '', '2018-06-28 18:52:13', '2018-06-29 00:52:13', '', 0, 'http://oceamar.gomserver.net/?p=45', 0, 'post', '', 0),
(46, 1, '2018-06-26 17:34:49', '2018-06-26 23:34:49', '<ul>\r\n 	<li>Aduanales</li>\r\n 	<li>migratorios</li>\r\n 	<li>Agencia protectora</li>\r\n 	<li>Permisos de navegación</li>\r\n 	<li>Asesoría legal</li>\r\n</ul>', 'Trámites', '', 'inherit', 'closed', 'closed', '', '45-revision-v1', '', '', '2018-06-26 17:34:49', '2018-06-26 23:34:49', '', 45, 'http://oceamar.gomserver.net/2018/06/26/45-revision-v1/', 0, 'revision', '', 0),
(47, 1, '2018-06-26 17:35:23', '2018-06-26 23:35:23', '<ul>\r\n 	<li>Marítima, aérea y terrestre de materiales, personal y equipos</li>\r\n</ul>', 'Logística', '', 'publish', 'open', 'open', '', 'logistica', '', '', '2018-06-28 18:53:09', '2018-06-29 00:53:09', '', 0, 'http://oceamar.gomserver.net/?p=47', 0, 'post', '', 0),
(48, 1, '2018-06-26 17:35:23', '2018-06-26 23:35:23', '<ul>\r\n 	<li>Marítima, aérea y terrestre de materiales, personal y equipos</li>\r\n</ul>', 'Logística', '', 'inherit', 'closed', 'closed', '', '47-revision-v1', '', '', '2018-06-26 17:35:23', '2018-06-26 23:35:23', '', 47, 'http://oceamar.gomserver.net/2018/06/26/47-revision-v1/', 0, 'revision', '', 0),
(49, 1, '2018-06-26 17:36:03', '2018-06-26 23:36:03', '<ul>\r\n 	<li>Materiales diversos</li>\r\n 	<li>Embarcaciones</li>\r\n 	<li>Equipos especializados</li>\r\n</ul>', 'Importación y exportación', '', 'publish', 'open', 'open', '', 'importacion-y-exportacion', '', '', '2018-06-28 18:53:36', '2018-06-29 00:53:36', '', 0, 'http://oceamar.gomserver.net/?p=49', 0, 'post', '', 0),
(50, 1, '2018-06-26 17:36:03', '2018-06-26 23:36:03', '<ul>\r\n 	<li>Materiales diversos</li>\r\n 	<li>Embarcaciones</li>\r\n 	<li>Equipos especializados</li>\r\n</ul>', 'Importación y exportación', '', 'inherit', 'closed', 'closed', '', '49-revision-v1', '', '', '2018-06-26 17:36:03', '2018-06-26 23:36:03', '', 49, 'http://oceamar.gomserver.net/2018/06/26/49-revision-v1/', 0, 'revision', '', 0),
(51, 1, '2018-06-26 17:36:33', '2018-06-26 23:36:33', '<ul>\r\n 	<li>Cambios de guardia</li>\r\n 	<li>Subcontratación</li>\r\n 	<li>Transportación marítima</li>\r\n 	<li>Transportación terrestre</li>\r\n</ul>', 'Personal', '', 'publish', 'open', 'open', '', 'personal', '', '', '2018-06-28 18:54:19', '2018-06-29 00:54:19', '', 0, 'http://oceamar.gomserver.net/?p=51', 0, 'post', '', 0),
(52, 1, '2018-06-26 17:36:33', '2018-06-26 23:36:33', '<ul>\r\n 	<li>Cambios de guardia</li>\r\n 	<li>Subcontratación</li>\r\n 	<li>Transportación marítima</li>\r\n 	<li>Transportación terrestre</li>\r\n</ul>', 'Personal', '', 'inherit', 'closed', 'closed', '', '51-revision-v1', '', '', '2018-06-26 17:36:33', '2018-06-26 23:36:33', '', 51, 'http://oceamar.gomserver.net/2018/06/26/51-revision-v1/', 0, 'revision', '', 0),
(53, 1, '2018-06-26 17:37:19', '2018-06-26 23:37:19', '<ul>\r\n 	<li>Muellaje</li>\r\n 	<li>Almacenamiento</li>\r\n 	<li>Maniobras logísticas</li>\r\n 	<li>Limpieza de tanques</li>\r\n</ul>', 'Shorebase', '', 'publish', 'open', 'open', '', 'shorebase', '', '', '2018-06-28 18:54:39', '2018-06-29 00:54:39', '', 0, 'http://oceamar.gomserver.net/?p=53', 0, 'post', '', 0),
(54, 1, '2018-06-26 17:37:19', '2018-06-26 23:37:19', '<ul>\r\n 	<li>Muellaje</li>\r\n 	<li>Almacenamiento</li>\r\n 	<li>Maniobras logísticas</li>\r\n 	<li>Limpieza de tanques</li>\r\n</ul>', 'Shorebase', '', 'inherit', 'closed', 'closed', '', '53-revision-v1', '', '', '2018-06-26 17:37:19', '2018-06-26 23:37:19', '', 53, 'http://oceamar.gomserver.net/2018/06/26/53-revision-v1/', 0, 'revision', '', 0),
(55, 1, '2018-06-26 17:37:49', '2018-06-26 23:37:49', '<ul>\r\n 	<li>Recolección de residuos peligrosos, basura, aguas grises y aguas negras</li>\r\n 	<li>Suminitro de diesel, agua y lubricates</li>\r\n 	<li>Catering</li>\r\n 	<li>Equipos de seguridad</li>\r\n</ul>', 'Servicios portuarios', '', 'publish', 'open', 'open', '', 'servicios-portuarios', '', '', '2018-06-28 18:54:50', '2018-06-29 00:54:50', '', 0, 'http://oceamar.gomserver.net/?p=55', 0, 'post', '', 0),
(56, 1, '2018-06-26 17:37:49', '2018-06-26 23:37:49', '<ul>\r\n 	<li>Recolección de residuos peligrosos, basura, aguas grises y aguas negras</li>\r\n 	<li>Suminitro de diesel, agua y lubricates</li>\r\n 	<li>Catering</li>\r\n 	<li>Equipos de seguridad</li>\r\n</ul>', 'Servicios portuarios', '', 'inherit', 'closed', 'closed', '', '55-revision-v1', '', '', '2018-06-26 17:37:49', '2018-06-26 23:37:49', '', 55, 'http://oceamar.gomserver.net/2018/06/26/55-revision-v1/', 0, 'revision', '', 0),
(57, 1, '2018-06-26 17:38:21', '2018-06-26 23:38:21', '<ul>\r\n 	<li>Hiabs</li>\r\n 	<li>Grúas</li>\r\n 	<li>Planas</li>\r\n 	<li>Montacargas</li>\r\n 	<li>Contenedores</li>\r\n</ul>', 'Renta de equipos', '', 'publish', 'open', 'open', '', 'renta-de-equipos', '', '', '2018-06-28 18:58:14', '2018-06-29 00:58:14', '', 0, 'http://oceamar.gomserver.net/?p=57', 0, 'post', '', 0),
(58, 1, '2018-06-26 17:38:21', '2018-06-26 23:38:21', '<ul>\r\n 	<li>Hiabs</li>\r\n 	<li>Grúas</li>\r\n 	<li>Planas</li>\r\n 	<li>Montacargas</li>\r\n 	<li>Contenedores</li>\r\n</ul>', 'Renta de equipos', '', 'inherit', 'closed', 'closed', '', '57-revision-v1', '', '', '2018-06-26 17:38:21', '2018-06-26 23:38:21', '', 57, 'http://oceamar.gomserver.net/2018/06/26/57-revision-v1/', 0, 'revision', '', 0),
(60, 1, '2018-06-26 17:39:50', '2018-06-26 23:39:50', '<ul>\r\n 	<li>Hiabs</li>\r\n 	<li>Grúas</li>\r\n 	<li>Planas</li>\r\n 	<li>Montacargas</li>\r\n 	<li>Contenedores</li>\r\n</ul>', 'Renta de equipos', '', 'inherit', 'closed', 'closed', '', '57-revision-v1', '', '', '2018-06-26 17:39:50', '2018-06-26 23:39:50', '', 57, 'http://oceamar.gomserver.net/2018/06/26/57-revision-v1/', 0, 'revision', '', 0),
(59, 1, '2018-06-26 17:39:11', '2018-06-26 23:39:11', '<ul>\r\n 	<li>Hiabs</li>\r\n 	<li>Grúas</li>\r\n 	<li>Planas</li>\r\n 	<li>Montacargas</li>\r\n 	<li>Contenedores</li>\r\n 	<li>otros lugares</li>\r\n 	<li>el mismo</li>\r\n 	<li>pero es otro</li>\r\n</ul>', 'Renta de equipos', '', 'inherit', 'closed', 'closed', '', '57-revision-v1', '', '', '2018-06-26 17:39:11', '2018-06-26 23:39:11', '', 57, 'http://oceamar.gomserver.net/2018/06/26/57-revision-v1/', 0, 'revision', '', 0),
(223, 1, '2018-06-28 18:58:07', '2018-06-29 00:58:07', '', 'servicios-hv', '', 'inherit', 'open', 'closed', '', 'servicios-hv', '', '', '2018-06-28 18:58:07', '2018-06-29 00:58:07', '', 57, 'http://oceamar.gomserver.net/wp-content/uploads/2018/06/servicios-hv.jpg', 0, 'attachment', 'image/jpeg', 0),
(225, 1, '2018-06-29 15:01:50', '2018-06-29 21:01:50', '<ul>\r\n 	<li>Diversos materiais</li>\r\n 	<li>Embarcações</li>\r\n 	<li>Equipamentos espe</li>\r\n</ul>', 'Importação e Exportação:', '', 'publish', 'open', 'open', '', 'importacao-e-exportacao', '', '', '2018-06-29 15:01:50', '2018-06-29 21:01:50', '', 0, 'http://oceamar.gomserver.net/?p=225', 0, 'post', '', 0),
(226, 1, '2018-06-29 15:01:50', '2018-06-29 21:01:50', '<ul>\r\n 	<li>Diversos materiais</li>\r\n 	<li>Embarcações</li>\r\n 	<li>Equipamentos espe</li>\r\n</ul>', 'Importação e Exportação:', '', 'inherit', 'closed', 'closed', '', '225-revision-v1', '', '', '2018-06-29 15:01:50', '2018-06-29 21:01:50', '', 225, 'http://oceamar.gomserver.net/2018/06/29/225-revision-v1/', 0, 'revision', '', 0),
(215, 1, '2018-06-28 18:49:50', '2018-06-29 00:49:50', '', 'servicios-g', '', 'inherit', 'open', 'closed', '', 'servicios-g', '', '', '2018-06-28 18:49:50', '2018-06-29 00:49:50', '', 0, 'http://oceamar.gomserver.net/wp-content/uploads/2018/06/servicios-g.jpg', 0, 'attachment', 'image/jpeg', 0),
(216, 1, '2018-06-28 18:49:51', '2018-06-29 00:49:51', '', 'servicios-h', '', 'inherit', 'open', 'closed', '', 'servicios-h', '', '', '2018-06-28 18:49:51', '2018-06-29 00:49:51', '', 0, 'http://oceamar.gomserver.net/wp-content/uploads/2018/06/servicios-h.jpg', 0, 'attachment', 'image/jpeg', 0),
(217, 1, '2018-06-28 18:49:53', '2018-06-29 00:49:53', '', 'servicios-a', '', 'inherit', 'open', 'closed', '', 'servicios-a', '', '', '2018-06-28 18:49:53', '2018-06-29 00:49:53', '', 0, 'http://oceamar.gomserver.net/wp-content/uploads/2018/06/servicios-a.jpg', 0, 'attachment', 'image/jpeg', 0),
(218, 1, '2018-06-28 18:49:54', '2018-06-29 00:49:54', '', 'servicios-b', '', 'inherit', 'open', 'closed', '', 'servicios-b', '', '', '2018-06-28 18:49:54', '2018-06-29 00:49:54', '', 0, 'http://oceamar.gomserver.net/wp-content/uploads/2018/06/servicios-b.jpg', 0, 'attachment', 'image/jpeg', 0),
(219, 1, '2018-06-28 18:49:55', '2018-06-29 00:49:55', '', 'servicios-c', '', 'inherit', 'open', 'closed', '', 'servicios-c', '', '', '2018-06-28 18:49:55', '2018-06-29 00:49:55', '', 0, 'http://oceamar.gomserver.net/wp-content/uploads/2018/06/servicios-c.jpg', 0, 'attachment', 'image/jpeg', 0),
(220, 1, '2018-06-28 18:49:56', '2018-06-29 00:49:56', '', 'servicios-d', '', 'inherit', 'open', 'closed', '', 'servicios-d', '', '', '2018-06-28 18:49:56', '2018-06-29 00:49:56', '', 0, 'http://oceamar.gomserver.net/wp-content/uploads/2018/06/servicios-d.jpg', 0, 'attachment', 'image/jpeg', 0),
(221, 1, '2018-06-28 18:49:57', '2018-06-29 00:49:57', '', 'servicios-e', '', 'inherit', 'open', 'closed', '', 'servicios-e', '', '', '2018-06-28 18:49:57', '2018-06-29 00:49:57', '', 0, 'http://oceamar.gomserver.net/wp-content/uploads/2018/06/servicios-e.jpg', 0, 'attachment', 'image/jpeg', 0),
(222, 1, '2018-06-28 18:49:58', '2018-06-29 00:49:58', '', 'servicios-f', '', 'inherit', 'open', 'closed', '', 'servicios-f', '', '', '2018-06-28 18:49:58', '2018-06-29 00:49:58', '', 0, 'http://oceamar.gomserver.net/wp-content/uploads/2018/06/servicios-f.jpg', 0, 'attachment', 'image/jpeg', 0),
(74, 1, '2018-06-26 18:54:00', '2018-06-27 00:54:00', '', 'logo-schlumberger', '', 'inherit', 'open', 'closed', '', 'logo-schlumberger', '', '', '2018-06-26 18:54:00', '2018-06-27 00:54:00', '', 0, 'http://oceamar.gomserver.net/wp-content/uploads/2018/06/logo-schlumberger.png', 0, 'attachment', 'image/png', 0),
(75, 1, '2018-06-26 18:54:07', '2018-06-27 00:54:07', '', 'logo-pico', '', 'inherit', 'open', 'closed', '', 'logo-pico', '', '', '2018-06-26 18:54:07', '2018-06-27 00:54:07', '', 0, 'http://oceamar.gomserver.net/wp-content/uploads/2018/06/logo-pico.png', 0, 'attachment', 'image/png', 0),
(76, 1, '2018-06-26 18:54:08', '2018-06-27 00:54:08', '', 'logo-seadrill', '', 'inherit', 'open', 'closed', '', 'logo-seadrill', '', '', '2018-06-26 18:54:08', '2018-06-27 00:54:08', '', 0, 'http://oceamar.gomserver.net/wp-content/uploads/2018/06/logo-seadrill.png', 0, 'attachment', 'image/png', 0),
(77, 1, '2018-06-26 18:54:09', '2018-06-27 00:54:09', '', 'logo-abs', '', 'inherit', 'open', 'closed', '', 'logo-abs', '', '', '2018-06-26 18:54:09', '2018-06-27 00:54:09', '', 0, 'http://oceamar.gomserver.net/wp-content/uploads/2018/06/logo-abs.png', 0, 'attachment', 'image/png', 0),
(78, 1, '2018-06-26 18:54:10', '2018-06-27 00:54:10', '', 'logo-allseas', '', 'inherit', 'open', 'closed', '', 'logo-allseas', '', '', '2018-06-26 18:54:10', '2018-06-27 00:54:10', '', 0, 'http://oceamar.gomserver.net/wp-content/uploads/2018/06/logo-allseas.png', 0, 'attachment', 'image/png', 0),
(79, 1, '2018-06-26 18:54:11', '2018-06-27 00:54:11', '', 'logo-amec', '', 'inherit', 'open', 'closed', '', 'logo-amec', '', '', '2018-06-26 18:54:11', '2018-06-27 00:54:11', '', 0, 'http://oceamar.gomserver.net/wp-content/uploads/2018/06/logo-amec.png', 0, 'attachment', 'image/png', 0),
(80, 1, '2018-06-26 18:54:12', '2018-06-27 00:54:12', '', 'logo-baker', '', 'inherit', 'open', 'closed', '', 'logo-baker', '', '', '2018-06-26 18:54:12', '2018-06-27 00:54:12', '', 0, 'http://oceamar.gomserver.net/wp-content/uploads/2018/06/logo-baker.png', 0, 'attachment', 'image/png', 0),
(81, 1, '2018-06-26 18:54:13', '2018-06-27 00:54:13', '', 'logo-ch', '', 'inherit', 'open', 'closed', '', 'logo-ch', '', '', '2018-06-26 18:54:13', '2018-06-27 00:54:13', '', 0, 'http://oceamar.gomserver.net/wp-content/uploads/2018/06/logo-ch.png', 0, 'attachment', 'image/png', 0),
(82, 1, '2018-06-26 18:54:14', '2018-06-27 00:54:14', '', 'logo-cosl', '', 'inherit', 'open', 'closed', '', 'logo-cosl', '', '', '2018-06-26 18:54:14', '2018-06-27 00:54:14', '', 0, 'http://oceamar.gomserver.net/wp-content/uploads/2018/06/logo-cosl.png', 0, 'attachment', 'image/png', 0),
(83, 1, '2018-06-26 18:54:15', '2018-06-27 00:54:15', '', 'logo-grupo-r', '', 'inherit', 'open', 'closed', '', 'logo-grupo-r', '', '', '2018-06-26 18:54:15', '2018-06-27 00:54:15', '', 0, 'http://oceamar.gomserver.net/wp-content/uploads/2018/06/logo-grupo-r.png', 0, 'attachment', 'image/png', 0),
(84, 1, '2018-06-26 18:54:16', '2018-06-27 00:54:16', '', 'logo-halliburton', '', 'inherit', 'open', 'closed', '', 'logo-halliburton', '', '', '2018-06-26 18:54:16', '2018-06-27 00:54:16', '', 0, 'http://oceamar.gomserver.net/wp-content/uploads/2018/06/logo-halliburton.png', 0, 'attachment', 'image/png', 0),
(85, 1, '2018-06-26 18:54:18', '2018-06-27 00:54:18', '', 'logo-nabors', '', 'inherit', 'open', 'closed', '', 'logo-nabors', '', '', '2018-06-26 18:54:18', '2018-06-27 00:54:18', '', 0, 'http://oceamar.gomserver.net/wp-content/uploads/2018/06/logo-nabors.png', 0, 'attachment', 'image/png', 0),
(86, 1, '2018-06-26 18:54:19', '2018-06-27 00:54:19', '', 'logo-oceane', '', 'inherit', 'open', 'closed', '', 'logo-oceane', '', '', '2018-06-26 18:54:19', '2018-06-27 00:54:19', '', 0, 'http://oceamar.gomserver.net/wp-content/uploads/2018/06/logo-oceane.png', 0, 'attachment', 'image/png', 0),
(91, 1, '2018-06-27 12:02:41', '2018-06-27 18:02:41', 'Shorebase management for FSV Lady Ione during Allseas Project, providing all services such as warehousing, hauling, lifting, mud transfering, crew changing, vessel tank cleaning as well as garbage collection (2017).', 'Baker Hughes', '', 'publish', 'open', 'open', '', 'baker-hughes', '', '', '2018-06-28 16:26:07', '2018-06-28 22:26:07', '', 0, 'http://oceamar.gomserver.net/?p=91', 0, 'post', '', 0),
(92, 1, '2018-06-27 12:02:41', '2018-06-27 18:02:41', 'Shorebase management for FSV Lady Ione during Allseas Project, providing all services such as warehousing, hauling, lifting, mud transfering, crew changing, vessel tank cleaning as well as garbage collection (2017).', 'Baker Hughes', '', 'inherit', 'closed', 'closed', '', '91-revision-v1', '', '', '2018-06-27 12:02:41', '2018-06-27 18:02:41', '', 91, 'http://oceamar.gomserver.net/2018/06/27/91-revision-v1/', 0, 'revision', '', 0),
(93, 1, '2018-06-27 12:19:08', '2018-06-27 18:19:08', 'Supply of diesel, water and consumables in Seybaplaya for the PICO IV platform (2016-2017).', 'Pico', '', 'publish', 'open', 'open', '', 'pico', '', '', '2018-06-28 16:24:38', '2018-06-28 22:24:38', '', 0, 'http://oceamar.gomserver.net/?p=93', 0, 'post', '', 0),
(94, 1, '2018-06-27 12:19:08', '2018-06-27 18:19:08', 'Supply of diesel, water and consumables in Seybaplaya for the PICO IV platform (2016-2017).', 'Pico', '', 'inherit', 'closed', 'closed', '', '93-revision-v1', '', '', '2018-06-27 12:19:08', '2018-06-27 18:19:08', '', 93, 'http://oceamar.gomserver.net/2018/06/27/93-revision-v1/', 0, 'revision', '', 0),
(95, 1, '2018-06-27 12:20:28', '2018-06-27 18:20:28', 'Shorebase for A-FRAME and ROV mobilization for Pelagic Research whose end user was BHP BILLITON. Services include port expenses, work permits, specialized work permits toward the captaincy, lifting equipment for materials as well as warehousing containers (2016).', 'Amec foster wheeler', '', 'publish', 'open', 'open', '', 'amec-foster-wheeler', '', '', '2018-06-28 16:26:07', '2018-06-28 22:26:07', '', 0, 'http://oceamar.gomserver.net/?p=95', 0, 'post', '', 0),
(96, 1, '2018-06-27 12:20:28', '2018-06-27 18:20:28', 'Shorebase for A-FRAME and ROV mobilization for Pelagic Research whose end user was BHP BILLITON. Services include port expenses, work permits, specialized work permits toward the captaincy, lifting equipment for materials as well as warehousing containers (2016).', 'Amec foster wheeler', '', 'inherit', 'closed', 'closed', '', '95-revision-v1', '', '', '2018-06-27 12:20:28', '2018-06-27 18:20:28', '', 95, 'http://oceamar.gomserver.net/2018/06/27/95-revision-v1/', 0, 'revision', '', 0),
(97, 1, '2018-06-27 12:21:07', '2018-06-27 18:21:07', 'Shipping agency and logistics of all vessels involved in Brownsville, Tuxpan and Tampico sharing traffic operations with those from TRION field between end-users PEMEX/BHP BILLITON (2017).', 'Allseas', '', 'publish', 'open', 'open', '', 'allseas', '', '', '2018-06-28 16:26:07', '2018-06-28 22:26:07', '', 0, 'http://oceamar.gomserver.net/?p=97', 0, 'post', '', 0),
(98, 1, '2018-06-27 12:21:07', '2018-06-27 18:21:07', 'Shipping agency and logistics of all vessels involved in Brownsville, Tuxpan and Tampico sharing traffic operations with those from TRION field between end-users PEMEX/BHP BILLITON (2017).', 'Allseas', '', 'inherit', 'closed', 'closed', '', '97-revision-v1', '', '', '2018-06-27 12:21:07', '2018-06-27 18:21:07', '', 97, 'http://oceamar.gomserver.net/2018/06/27/97-revision-v1/', 0, 'revision', '', 0),
(99, 1, '2018-06-27 12:21:31', '2018-06-27 18:21:31', 'Ship agency, logistical services, warehousing and maritime complementary maritime for Cantarell I and Cantarell II (2016).', 'Grupo R', '', 'publish', 'open', 'open', '', 'grupo-r', '', '', '2018-06-28 16:26:07', '2018-06-28 22:26:07', '', 0, 'http://oceamar.gomserver.net/?p=99', 0, 'post', '', 0),
(100, 1, '2018-06-27 12:21:31', '2018-06-27 18:21:31', 'Ship agency, logistical services, warehousing and maritime complementary maritime for Cantarell I and Cantarell II (2016).', 'Grupo R', '', 'inherit', 'closed', 'closed', '', '99-revision-v1', '', '', '2018-06-27 12:21:31', '2018-06-27 18:21:31', '', 99, 'http://oceamar.gomserver.net/2018/06/27/99-revision-v1/', 0, 'revision', '', 0),
(101, 1, '2018-06-27 12:23:04', '2018-06-27 18:23:04', 'Shipping and consignee agency for vessels in a geophysical studies project (2016-2017).', 'GeoHidra', '', 'publish', 'open', 'open', '', 'geohidra', '', '', '2018-06-28 16:26:07', '2018-06-28 22:26:07', '', 0, 'http://oceamar.gomserver.net/?p=101', 0, 'post', '', 0),
(102, 1, '2018-06-27 12:23:04', '2018-06-27 18:23:04', 'Shipping and consignee agency for vessels in a geophysical studies project (2016-2017).', 'GeoHidra', '', 'inherit', 'closed', 'closed', '', '101-revision-v1', '', '', '2018-06-27 12:23:04', '2018-06-27 18:23:04', '', 101, 'http://oceamar.gomserver.net/2018/06/27/101-revision-v1/', 0, 'revision', '', 0),
(103, 1, '2018-06-27 12:23:37', '2018-06-27 18:23:37', 'Ship agency, logistical services, warehousing and maritime complementary maritime (2016-2017).', 'Cosl', '', 'publish', 'open', 'open', '', 'cosl', '', '', '2018-06-28 16:26:07', '2018-06-28 22:26:07', '', 0, 'http://oceamar.gomserver.net/?p=103', 0, 'post', '', 0),
(104, 1, '2018-06-27 12:23:37', '2018-06-27 18:23:37', 'Ship agency, logistical services, warehousing and maritime complementary maritime (2016-2017).', 'Cosl', '', 'inherit', 'closed', 'closed', '', '103-revision-v1', '', '', '2018-06-27 12:23:37', '2018-06-27 18:23:37', '', 103, 'http://oceamar.gomserver.net/2018/06/27/103-revision-v1/', 0, 'revision', '', 0),
(105, 1, '2018-06-27 12:24:09', '2018-06-27 18:24:09', 'Clearance and customs formalities for vessels and equipment (crane). Project duration 30-45 days to rig up the TAMAULIPAS platform (2017).', 'ABS Group', '', 'publish', 'open', 'open', '', 'abs-group', '', '', '2018-06-28 16:26:07', '2018-06-28 22:26:07', '', 0, 'http://oceamar.gomserver.net/?p=105', 0, 'post', '', 0),
(106, 1, '2018-06-27 12:24:09', '2018-06-27 18:24:09', 'Clearance and customs formalities for vessels and equipment (crane). Project duration 30-45 days to rig up the TAMAULIPAS platform (2017).', 'ABS Group', '', 'inherit', 'closed', 'closed', '', '105-revision-v1', '', '', '2018-06-27 12:24:09', '2018-06-27 18:24:09', '', 105, 'http://oceamar.gomserver.net/2018/06/27/105-revision-v1/', 0, 'revision', '', 0),
(107, 1, '2018-06-27 12:24:51', '2018-06-27 18:24:51', 'Navegation Permits for foreign vessels such as Ocean Intervention, Clearance and Port Expenses for Coastal and Ocean navigation, Customs formalities, Immigration proceedings for foreign crew, Materials logistics, Lifting devices, Provision of personnel onboard (2017-2018).', 'Oceaneering', '', 'publish', 'open', 'open', '', 'oceaneering', '', '', '2018-06-28 16:24:38', '2018-06-28 22:24:38', '', 0, 'http://oceamar.gomserver.net/?p=107', 0, 'post', '', 0),
(108, 1, '2018-06-27 12:24:51', '2018-06-27 18:24:51', 'Navegation Permits for foreign vessels such as Ocean Intervention, Clearance and Port Expenses for Coastal and Ocean navigation, Customs formalities, Immigration proceedings for foreign crew, Materials logistics, Lifting devices, Provision of personnel onboard (2017-2018).', 'Oceaneering', '', 'inherit', 'closed', 'closed', '', '107-revision-v1', '', '', '2018-06-27 12:24:51', '2018-06-27 18:24:51', '', 107, 'http://oceamar.gomserver.net/2018/06/27/107-revision-v1/', 0, 'revision', '', 0),
(109, 1, '2018-06-27 12:26:07', '2018-06-27 18:26:07', 'Ship Agency and logistical portuary services (Docking and warehousing) as well as port and custom brokerage before the authorities for PSV, OSV and others naval artifacts (2015-2017).', 'Seadrill', '', 'publish', 'open', 'open', '', 'seadrill', '', '', '2018-06-28 16:24:38', '2018-06-28 22:24:38', '', 0, 'http://oceamar.gomserver.net/?p=109', 0, 'post', '', 0),
(110, 1, '2018-06-27 12:26:07', '2018-06-27 18:26:07', 'Ship Agency and logistical portuary services (Docking and warehousing) as well as port and custom brokerage before the authorities for PSV, OSV and others naval artifacts (2015-2017).', 'Seadrill', '', 'inherit', 'closed', 'closed', '', '109-revision-v1', '', '', '2018-06-27 12:26:07', '2018-06-27 18:26:07', '', 109, 'http://oceamar.gomserver.net/2018/06/27/109-revision-v1/', 0, 'revision', '', 0),
(111, 1, '2018-06-27 12:26:46', '2018-06-27 18:26:46', 'Agency services and dismantling of platforms 807 and 801 in Seybaplaya (2015-2017).', 'Nabors', '', 'publish', 'open', 'open', '', 'nabors', '', '', '2018-06-28 16:24:38', '2018-06-28 22:24:38', '', 0, 'http://oceamar.gomserver.net/?p=111', 0, 'post', '', 0),
(112, 1, '2018-06-27 12:26:46', '2018-06-27 18:26:46', 'Agency services and dismantling of platforms 807 and 801 in Seybaplaya (2015-2017).', 'Nabors', '', 'inherit', 'closed', 'closed', '', '111-revision-v1', '', '', '2018-06-27 12:26:46', '2018-06-27 18:26:46', '', 111, 'http://oceamar.gomserver.net/2018/06/27/111-revision-v1/', 0, 'revision', '', 0),
(113, 1, '2018-06-27 12:27:15', '2018-06-27 18:27:15', 'Agency for decomissioning and ocean departure of well stimulator vessels HOS Hawke and HOS Sailor (2014-2017).\r\nArrivals and departures in coastal and ocean navigations of Stim Star vessel for well completion (2014-2017).', 'Halliburton', '', 'publish', 'open', 'open', '', 'halliburton', '', '', '2018-06-28 16:26:06', '2018-06-28 22:26:06', '', 0, 'http://oceamar.gomserver.net/?p=113', 0, 'post', '', 0),
(114, 1, '2018-06-27 12:27:15', '2018-06-27 18:27:15', 'Agency for decomissioning and ocean departure of well stimulator vessels HOS Hawke and HOS Sailor (2014-2017).\r\nArrivals and departures in coastal and ocean navigations of Stim Star vessel for well completion (2014-2017).', 'Halliburton', '', 'inherit', 'closed', 'closed', '', '113-revision-v1', '', '', '2018-06-27 12:27:15', '2018-06-27 18:27:15', '', 113, 'http://oceamar.gomserver.net/2018/06/27/113-revision-v1/', 0, 'revision', '', 0),
(115, 1, '2018-06-27 12:28:01', '2018-06-27 18:28:01', 'Consignee ship agency for Punta Delgada and Bourbon Liberty (2014-2017).', 'Schlumberger', '', 'publish', 'open', 'open', '', 'schlumberger', '', '', '2018-06-28 16:24:38', '2018-06-28 22:24:38', '', 0, 'http://oceamar.gomserver.net/?p=115', 0, 'post', '', 0),
(116, 1, '2018-06-27 12:28:01', '2018-06-27 18:28:01', 'Consignee ship agency for Punta Delgada and Bourbon Liberty (2014-2017).', 'Schlumberger', '', 'inherit', 'closed', 'closed', '', '115-revision-v1', '', '', '2018-06-27 12:28:01', '2018-06-27 18:28:01', '', 115, 'http://oceamar.gomserver.net/2018/06/27/115-revision-v1/', 0, 'revision', '', 0),
(117, 1, '2018-06-27 15:10:30', '2018-06-27 21:10:30', 'En Oceamar nos interesa facilitar las operaciones de nuestros clientes por lo que estamos disponibles 24/7.\r\n\r\n<b>Operamos en todos los puertos del Golfo de México </b>con personal altamente calificado para garantizar la calidad y la seguridad en cada uno de los servicios que ofrecemos.', 'Contáctanos', '', 'publish', 'open', 'open', '', 'contactanos', '', '', '2018-06-28 16:26:07', '2018-06-28 22:26:07', '', 0, 'http://oceamar.gomserver.net/?p=117', 0, 'post', '', 0),
(118, 1, '2018-06-27 15:10:30', '2018-06-27 21:10:30', 'En Oceamar nos interesa facilitar las operaciones de nuestros clientes por lo que estamos disponibles 24/7.\r\n\r\n<b>Operamos en todos los puertos del Golfo de México </b>con personal altamente calificado para garantizar la calidad y la seguridad en cada uno de los servicios que ofrecemos.', 'Contáctanos', '', 'inherit', 'closed', 'closed', '', '117-revision-v1', '', '', '2018-06-27 15:10:30', '2018-06-27 21:10:30', '', 117, 'http://oceamar.gomserver.net/2018/06/27/117-revision-v1/', 0, 'revision', '', 0),
(120, 1, '2018-06-27 15:13:47', '2018-06-27 21:13:47', 'En Oceamar nos interesa facilitar las operaciones de nuestros clientes por lo que estamos disponibles 24/7.\r\n\r\n<b>Operamos en todos los puertos del Golfo de México </b>con personal altamente calificado para garantizar la calidad y la seguridad en cada uno de los servicios que ofrecemos.', 'Contáctanos', '', 'inherit', 'closed', 'closed', '', '117-revision-v1', '', '', '2018-06-27 15:13:47', '2018-06-27 21:13:47', '', 117, 'http://oceamar.gomserver.net/2018/06/27/117-revision-v1/', 0, 'revision', '', 0),
(119, 1, '2018-06-27 15:12:58', '2018-06-27 21:12:58', '000En Oceamar nos interesa facilitar las operaciones de nuestros clientes por lo que estamos disponibles 24/7.\r\n\r\n<b>000Operamos en todos los puertos del Golfo de México </b>con personal altamente calificado para garantizar la calidad y la seguridad en cada uno de los servicios que ofrecemos.', 'Contáctanos', '', 'inherit', 'closed', 'closed', '', '117-revision-v1', '', '', '2018-06-27 15:12:58', '2018-06-27 21:12:58', '', 117, 'http://oceamar.gomserver.net/2018/06/27/117-revision-v1/', 0, 'revision', '', 0),
(121, 1, '2018-06-27 15:15:59', '2018-06-27 21:15:59', 'En Oceamar nos interesa facilitar las operaciones de nuestros clientes por lo que estamos disponibles 24/7.\r\n\r\n<b>Operamos en todos los puertos del Golfo de México </b>con personal altamente calificado para garantizar la calidad y la seguridad en cada uno de los servicios que ofrecemos.', 'Contáctanosxx', '', 'inherit', 'closed', 'closed', '', '117-revision-v1', '', '', '2018-06-27 15:15:59', '2018-06-27 21:15:59', '', 117, 'http://oceamar.gomserver.net/2018/06/27/117-revision-v1/', 0, 'revision', '', 0),
(122, 1, '2018-06-27 15:16:14', '2018-06-27 21:16:14', 'En Oceamar nos interesa facilitar las operaciones de nuestros clientes por lo que estamos disponibles 24/7.\r\n\r\n<b>Operamos en todos los puertos del Golfo de México </b>con personal altamente calificado para garantizar la calidad y la seguridad en cada uno de los servicios que ofrecemos.', 'Contáctanos', '', 'inherit', 'closed', 'closed', '', '117-revision-v1', '', '', '2018-06-27 15:16:14', '2018-06-27 21:16:14', '', 117, 'http://oceamar.gomserver.net/2018/06/27/117-revision-v1/', 0, 'revision', '', 0),
(123, 1, '2018-06-27 16:13:43', '2018-06-27 22:13:43', 'Houston 11111 Katy freeway, suite 910 Houston, Texas, USA\r\n\r\nCel: +1 (346) 932 7894', 'Houston', '', 'publish', 'open', 'open', '', 'houston', '', '', '2018-06-28 16:26:06', '2018-06-28 22:26:06', '', 0, 'http://oceamar.gomserver.net/?p=123', 0, 'post', '', 0),
(124, 1, '2018-06-27 16:13:43', '2018-06-27 22:13:43', 'Houston 11111 Katy freeway, suite 910 Houston, Texas, USA\r\n\r\nCel: +1 (346) 932 7894', 'Houston', '', 'inherit', 'closed', 'closed', '', '123-revision-v1', '', '', '2018-06-27 16:13:43', '2018-06-27 22:13:43', '', 123, 'http://oceamar.gomserver.net/2018/06/27/123-revision-v1/', 0, 'revision', '', 0),
(125, 1, '2018-06-27 16:16:07', '2018-06-27 22:16:07', 'Progreso Calle 84 N° 121 Col. Centro Progreso, Yucatán, México\r\n\r\nTel: (+52) 1 (999) 193 9985', 'Progreso', '', 'publish', 'open', 'open', '', 'progreso', '', '', '2018-06-28 16:24:38', '2018-06-28 22:24:38', '', 0, 'http://oceamar.gomserver.net/?p=125', 0, 'post', '', 0),
(126, 1, '2018-06-27 16:16:07', '2018-06-27 22:16:07', 'Progreso Calle 84 N° 121 Col. Centro Progreso, Yucatán, México\r\n\r\nTel: (+52) 1 (999) 193 9985', 'Progreso', '', 'inherit', 'closed', 'closed', '', '125-revision-v1', '', '', '2018-06-27 16:16:07', '2018-06-27 22:16:07', '', 125, 'http://oceamar.gomserver.net/2018/06/27/125-revision-v1/', 0, 'revision', '', 0),
(127, 1, '2018-06-27 16:17:25', '2018-06-27 22:17:25', 'Calle Esmeralda #613, Fracc. Chairel\r\n\r\nC.P. 89219. Tampico, Tamaulipas.\r\n\r\nTel: +52 (833) 132 46 94\r\n\r\nCel: +52 1 (833) 265 2091', 'Tampico', '', 'publish', 'open', 'open', '', 'tampico', '', '', '2018-06-28 16:24:37', '2018-06-28 22:24:37', '', 0, 'http://oceamar.gomserver.net/?p=127', 0, 'post', '', 0),
(128, 1, '2018-06-27 16:17:25', '2018-06-27 22:17:25', 'Calle Esmeralda #613, Fracc. Chairel\r\n\r\nC.P. 89219. Tampico, Tamaulipas.\r\n\r\nTel: +52 (833) 132 46 94\r\n\r\nCel: +52 1 (833) 265 2091', 'Tampico', '', 'inherit', 'closed', 'closed', '', '127-revision-v1', '', '', '2018-06-27 16:17:25', '2018-06-27 22:17:25', '', 127, 'http://oceamar.gomserver.net/2018/06/27/127-revision-v1/', 0, 'revision', '', 0),
(129, 1, '2018-06-27 16:17:54', '2018-06-27 22:17:54', 'Av. Madrid Mza. 17 Lt 14 Fracc. Residencial Paraíso.\r\n\r\nCP: 86600 Paraíso, Tabasco, México', 'Puertos Dos Bocas', '', 'publish', 'open', 'open', '', 'puertos-dos-bocas', '', '', '2018-06-28 16:24:38', '2018-06-28 22:24:38', '', 0, 'http://oceamar.gomserver.net/?p=129', 0, 'post', '', 0),
(130, 1, '2018-06-27 16:17:54', '2018-06-27 22:17:54', 'Av. Madrid Mza. 17 Lt 14 Fracc. Residencial Paraíso.\r\n\r\nCP: 86600 Paraíso, Tabasco, México', 'Puertos Dos Bocas', '', 'inherit', 'closed', 'closed', '', '129-revision-v1', '', '', '2018-06-27 16:17:54', '2018-06-27 22:17:54', '', 129, 'http://oceamar.gomserver.net/2018/06/27/129-revision-v1/', 0, 'revision', '', 0),
(133, 1, '2018-06-27 16:18:36', '2018-06-27 22:18:36', 'Av. Castellot N° 57 Col. Playa Norte C.P. 24120 Cd. Del Carmen, Campeche, México\r\n\r\nTel: (+52) (938) 384 1951\r\n\r\nCel: (52) 1 (938) 152 9897', 'Ciudad del Carmen', '', 'publish', 'open', 'open', '', 'ciudad-del-carmen', '', '', '2018-06-28 16:26:07', '2018-06-28 22:26:07', '', 0, 'http://oceamar.gomserver.net/?p=133', 0, 'post', '', 0),
(134, 1, '2018-06-27 16:18:36', '2018-06-27 22:18:36', 'Av. Castellot N° 57 Col. Playa Norte C.P. 24120 Cd. Del Carmen, Campeche, México\r\n\r\nTel: (+52) (938) 384 1951\r\n\r\nCel: (52) 1 (938) 152 9897', 'Ciudad del Carmen', '', 'inherit', 'closed', 'closed', '', '133-revision-v1', '', '', '2018-06-27 16:18:36', '2018-06-27 22:18:36', '', 133, 'http://oceamar.gomserver.net/2018/06/27/133-revision-v1/', 0, 'revision', '', 0),
(137, 1, '2018-06-28 10:43:34', '2018-06-28 16:43:34', '', 'Ingles', '', 'publish', 'closed', 'closed', '', 'ingles', '', '', '2018-06-28 10:43:34', '2018-06-28 16:43:34', '', 0, 'http://oceamar.gomserver.net/?page_id=137', 0, 'page', '', 0),
(138, 1, '2018-06-28 10:43:34', '2018-06-28 16:43:34', '', 'Ingles', '', 'inherit', 'closed', 'closed', '', '137-revision-v1', '', '', '2018-06-28 10:43:34', '2018-06-28 16:43:34', '', 137, 'http://oceamar.gomserver.net/2018/06/28/137-revision-v1/', 0, 'revision', '', 0),
(139, 1, '2018-06-28 10:43:49', '2018-06-28 16:43:49', '', 'Portugues', '', 'publish', 'closed', 'closed', '', 'portugues', '', '', '2018-06-28 10:43:49', '2018-06-28 16:43:49', '', 0, 'http://oceamar.gomserver.net/?page_id=139', 0, 'page', '', 0),
(140, 1, '2018-06-28 10:43:49', '2018-06-28 16:43:49', '', 'Portugues', '', 'inherit', 'closed', 'closed', '', '139-revision-v1', '', '', '2018-06-28 10:43:49', '2018-06-28 16:43:49', '', 139, 'http://oceamar.gomserver.net/2018/06/28/139-revision-v1/', 0, 'revision', '', 0),
(141, 1, '2018-06-28 11:01:34', '2018-06-28 17:01:34', ' ', '', '', 'publish', 'closed', 'closed', '', '141', '', '', '2018-06-28 11:01:34', '2018-06-28 17:01:34', '', 0, 'http://oceamar.gomserver.net/?p=141', 2, 'nav_menu_item', '', 0),
(142, 1, '2018-06-28 11:01:34', '2018-06-28 17:01:34', ' ', '', '', 'publish', 'closed', 'closed', '', '142', '', '', '2018-06-28 11:01:34', '2018-06-28 17:01:34', '', 0, 'http://oceamar.gomserver.net/?p=142', 1, 'nav_menu_item', '', 0),
(157, 1, '2018-06-28 12:54:39', '2018-06-28 18:54:39', '<p class=\"text-left\">Somos uma empresa comprometida em fornecer Agenciamento de Consignação através de serviços logísticos marítimos, portuários e integrais, em busca de atenção de qualidade e excelência, para o desenvolvimento de nossos clientes, colaboradores, fornecedores e comunidade.</p>', 'Missão', '', 'publish', 'open', 'open', '', 'missao', '', '', '2018-06-28 12:54:39', '2018-06-28 18:54:39', '', 0, 'http://oceamar.gomserver.net/?p=157', 0, 'post', '', 0);
INSERT INTO `ocmrwp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(158, 1, '2018-06-28 12:54:39', '2018-06-28 18:54:39', '<p class=\"text-left\">Somos uma empresa comprometida em fornecer Agenciamento de Consignação através de serviços logísticos marítimos, portuários e integrais, em busca de atenção de qualidade e excelência, para o desenvolvimento de nossos clientes, colaboradores, fornecedores e comunidade.</p>', 'Missão', '', 'inherit', 'closed', 'closed', '', '157-revision-v1', '', '', '2018-06-28 12:54:39', '2018-06-28 18:54:39', '', 157, 'http://oceamar.gomserver.net/2018/06/28/157-revision-v1/', 0, 'revision', '', 0),
(159, 1, '2018-06-28 12:56:36', '2018-06-28 18:56:36', 'Ser a agência marítima mexicana de maior confiabilidade, prestígio e projeção, tanto nacional como internacionalmente, com uma operação sustentável em serviços portuários, logísticos e marítimos.', 'Visão', '', 'publish', 'open', 'open', '', 'visao', '', '', '2018-06-28 12:56:36', '2018-06-28 18:56:36', '', 0, 'http://oceamar.gomserver.net/?p=159', 0, 'post', '', 0),
(160, 1, '2018-06-28 12:56:36', '2018-06-28 18:56:36', 'Ser a agência marítima mexicana de maior confiabilidade, prestígio e projeção, tanto nacional como internacionalmente, com uma operação sustentável em serviços portuários, logísticos e marítimos.', 'Visão', '', 'inherit', 'closed', 'closed', '', '159-revision-v1', '', '', '2018-06-28 12:56:36', '2018-06-28 18:56:36', '', 159, 'http://oceamar.gomserver.net/2018/06/28/159-revision-v1/', 0, 'revision', '', 0),
(162, 1, '2018-06-28 16:56:17', '2018-06-28 22:56:17', '<strong>Coatzacoalcos Veracruz, México.</strong> Latitud Longitud 18°08′09″ Norte 94°27′48″ Oeste. Altitud: 10 m s. n. m.', 'Coatzacoalcos', '', 'publish', 'open', 'open', '', 'coatzacoalcos', '', '', '2018-06-28 17:05:53', '2018-06-28 23:05:53', '', 0, 'http://oceamar.gomserver.net/?p=162', 0, 'post', '', 0),
(163, 1, '2018-06-28 16:53:54', '2018-06-28 22:53:54', '', 'coatzacoalcos', '', 'inherit', 'open', 'closed', '', 'coatzacoalcos', '', '', '2018-06-28 16:53:54', '2018-06-28 22:53:54', '', 162, 'http://oceamar.gomserver.net/wp-content/uploads/2018/06/coatzacoalcos.jpg', 0, 'attachment', 'image/jpeg', 0),
(164, 1, '2018-06-28 16:53:55', '2018-06-28 22:53:55', '', 'dos_bocas', '', 'inherit', 'open', 'closed', '', 'dos_bocas', '', '', '2018-06-28 16:53:55', '2018-06-28 22:53:55', '', 162, 'http://oceamar.gomserver.net/wp-content/uploads/2018/06/dos_bocas.jpg', 0, 'attachment', 'image/jpeg', 0),
(165, 1, '2018-06-28 16:53:56', '2018-06-28 22:53:56', '', 'fronteras', '', 'inherit', 'open', 'closed', '', 'fronteras', '', '', '2018-06-28 16:53:56', '2018-06-28 22:53:56', '', 162, 'http://oceamar.gomserver.net/wp-content/uploads/2018/06/fronteras.jpg', 0, 'attachment', 'image/jpeg', 0),
(166, 1, '2018-06-28 16:53:58', '2018-06-28 22:53:58', '', 'progreso', '', 'inherit', 'open', 'closed', '', 'progreso-2', '', '', '2018-06-28 16:53:58', '2018-06-28 22:53:58', '', 162, 'http://oceamar.gomserver.net/wp-content/uploads/2018/06/progreso.jpg', 0, 'attachment', 'image/jpeg', 0),
(167, 1, '2018-06-28 16:53:59', '2018-06-28 22:53:59', '', 'seybaplaya', '', 'inherit', 'open', 'closed', '', 'seybaplaya', '', '', '2018-06-28 16:53:59', '2018-06-28 22:53:59', '', 162, 'http://oceamar.gomserver.net/wp-content/uploads/2018/06/seybaplaya.jpg', 0, 'attachment', 'image/jpeg', 0),
(168, 1, '2018-06-28 16:54:01', '2018-06-28 22:54:01', '', 'tampico', '', 'inherit', 'open', 'closed', '', 'tampico-2', '', '', '2018-06-28 16:54:01', '2018-06-28 22:54:01', '', 162, 'http://oceamar.gomserver.net/wp-content/uploads/2018/06/tampico.jpg', 0, 'attachment', 'image/jpeg', 0),
(169, 1, '2018-06-28 16:54:02', '2018-06-28 22:54:02', '', 'tuxpan', '', 'inherit', 'open', 'closed', '', 'tuxpan', '', '', '2018-06-28 16:54:02', '2018-06-28 22:54:02', '', 162, 'http://oceamar.gomserver.net/wp-content/uploads/2018/06/tuxpan.jpg', 0, 'attachment', 'image/jpeg', 0),
(170, 1, '2018-06-28 16:54:04', '2018-06-28 22:54:04', '', 'veracruz', '', 'inherit', 'open', 'closed', '', 'veracruz', '', '', '2018-06-28 16:54:04', '2018-06-28 22:54:04', '', 162, 'http://oceamar.gomserver.net/wp-content/uploads/2018/06/veracruz.jpg', 0, 'attachment', 'image/jpeg', 0),
(171, 1, '2018-06-28 16:54:06', '2018-06-28 22:54:06', '', 'altamira', '', 'inherit', 'open', 'closed', '', 'altamira', '', '', '2018-06-28 16:54:06', '2018-06-28 22:54:06', '', 162, 'http://oceamar.gomserver.net/wp-content/uploads/2018/06/altamira.jpg', 0, 'attachment', 'image/jpeg', 0),
(172, 1, '2018-06-28 16:54:07', '2018-06-28 22:54:07', '', 'carmen', '', 'inherit', 'open', 'closed', '', 'carmen', '', '', '2018-06-28 16:54:07', '2018-06-28 22:54:07', '', 162, 'http://oceamar.gomserver.net/wp-content/uploads/2018/06/carmen.jpg', 0, 'attachment', 'image/jpeg', 0),
(173, 1, '2018-06-28 16:56:17', '2018-06-28 22:56:17', 'Coatzacoalcos Veracruz, México. Latitud Longitud 18°08′09″ Norte 94°27′48″ Oeste. Altitud: 10 m s. n. m.', 'Coatzacoalcos', '', 'inherit', 'closed', 'closed', '', '162-revision-v1', '', '', '2018-06-28 16:56:17', '2018-06-28 22:56:17', '', 162, 'http://oceamar.gomserver.net/2018/06/28/162-revision-v1/', 0, 'revision', '', 0),
(174, 1, '2018-06-28 17:05:53', '2018-06-28 23:05:53', '<strong>Coatzacoalcos Veracruz, México.</strong> Latitud Longitud 18°08′09″ Norte 94°27′48″ Oeste. Altitud: 10 m s. n. m.', 'Coatzacoalcos', '', 'inherit', 'closed', 'closed', '', '162-revision-v1', '', '', '2018-06-28 17:05:53', '2018-06-28 23:05:53', '', 162, 'http://oceamar.gomserver.net/2018/06/28/162-revision-v1/', 0, 'revision', '', 0),
(175, 1, '2018-06-28 17:16:44', '2018-06-28 23:16:44', '<strong>Tuxpan de Rodriguez Cano, Veracruz, México.</strong> Latitud Longitud 20°57′31″Norte 97°22′51″Oeste. Altitud: 10 m s. n. m.', 'Tuxpan', '', 'publish', 'open', 'open', '', 'tuxpan', '', '', '2018-06-28 17:16:44', '2018-06-28 23:16:44', '', 0, 'http://oceamar.gomserver.net/?p=175', 0, 'post', '', 0),
(176, 1, '2018-06-28 17:16:44', '2018-06-28 23:16:44', '<strong>Tuxpan de Rodriguez Cano, Veracruz, México.</strong> Latitud Longitud 20°57′31″Norte 97°22′51″Oeste. Altitud: 10 m s. n. m.', 'Tuxpan', '', 'inherit', 'closed', 'closed', '', '175-revision-v1', '', '', '2018-06-28 17:16:44', '2018-06-28 23:16:44', '', 175, 'http://oceamar.gomserver.net/2018/06/28/175-revision-v1/', 0, 'revision', '', 0),
(179, 1, '2018-06-28 17:47:15', '2018-06-28 23:47:15', '<strong>Altamira Tamaulipas, México.</strong> Latitud Longitud 22°23′45″ Norte 97° 56° 13° Oeste. Altitud 10 m s. n. m.', 'Tampico', '', 'publish', 'open', 'open', '', 'tampico-2', '', '', '2018-06-28 17:49:53', '2018-06-28 23:49:53', '', 0, 'http://oceamar.gomserver.net/?p=179', 0, 'post', '', 0),
(180, 1, '2018-06-28 17:47:15', '2018-06-28 23:47:15', '<strong>Altamira Tamaulipas, México.</strong> Latitud Longitud 22°23′45″ Norte 97° 56° 13° Oeste. Altitud 10 m s. n. m.', 'Tampico', '', 'inherit', 'closed', 'closed', '', '179-revision-v1', '', '', '2018-06-28 17:47:15', '2018-06-28 23:47:15', '', 179, 'http://oceamar.gomserver.net/2018/06/28/179-revision-v1/', 0, 'revision', '', 0),
(182, 1, '2018-06-28 17:49:06', '2018-06-28 23:49:06', '<strong>Altamira Tamaulipas, México.</strong> Latitud Longitud 22°23′45″ Norte 97° 56° 13° Oeste. Altitud 10 m s. n. m.', 'Altamira', '', 'publish', 'open', 'open', '', 'altamira', '', '', '2018-06-28 17:49:06', '2018-06-28 23:49:06', '', 0, 'http://oceamar.gomserver.net/?p=182', 0, 'post', '', 0),
(183, 1, '2018-06-28 17:49:06', '2018-06-28 23:49:06', '<strong>Altamira Tamaulipas, México.</strong> Latitud Longitud 22°23′45″ Norte 97° 56° 13° Oeste. Altitud 10 m s. n. m.', 'Altamira', '', 'inherit', 'closed', 'closed', '', '182-revision-v1', '', '', '2018-06-28 17:49:06', '2018-06-28 23:49:06', '', 182, 'http://oceamar.gomserver.net/2018/06/28/182-revision-v1/', 0, 'revision', '', 0),
(184, 1, '2018-06-28 17:51:56', '2018-06-28 23:51:56', '<strong>Dos Bocas Tabasco, México.</strong> Latitud Longitud 18°26′05″ Norte 93°12′06″ Oeste. Altitud: 1 m s. n. m.', 'Dos Bocas', '', 'publish', 'open', 'open', '', 'dos-bocas', '', '', '2018-06-28 17:51:56', '2018-06-28 23:51:56', '', 0, 'http://oceamar.gomserver.net/?p=184', 0, 'post', '', 0),
(185, 1, '2018-06-28 17:51:56', '2018-06-28 23:51:56', '<strong>Dos Bocas Tabasco, México.</strong> Latitud Longitud 18°26′05″ Norte 93°12′06″ Oeste. Altitud: 1 m s. n. m.', 'Dos Bocas', '', 'inherit', 'closed', 'closed', '', '184-revision-v1', '', '', '2018-06-28 17:51:56', '2018-06-28 23:51:56', '', 184, 'http://oceamar.gomserver.net/2018/06/28/184-revision-v1/', 0, 'revision', '', 0),
(186, 1, '2018-06-28 17:56:02', '2018-06-28 23:56:02', '<strong>Frontera Tabasco, México.</strong> Latitud Longitud 18°32′01″ Norte 92°38′49″ Oeste. Altitud 1 m s. n. m.', 'Frontera', '', 'publish', 'open', 'open', '', 'frontera', '', '', '2018-06-28 17:56:02', '2018-06-28 23:56:02', '', 0, 'http://oceamar.gomserver.net/?p=186', 0, 'post', '', 0),
(187, 1, '2018-06-28 17:56:02', '2018-06-28 23:56:02', '<strong>Frontera Tabasco, México.</strong> Latitud Longitud 18°32′01″ Norte 92°38′49″ Oeste. Altitud 1 m s. n. m.', 'Frontera', '', 'inherit', 'closed', 'closed', '', '186-revision-v1', '', '', '2018-06-28 17:56:02', '2018-06-28 23:56:02', '', 186, 'http://oceamar.gomserver.net/2018/06/28/186-revision-v1/', 0, 'revision', '', 0),
(188, 1, '2018-06-28 17:57:18', '2018-06-28 23:57:18', '<strong>Ciudad Del Carmen Campeche, México.</strong> Latitud Longitud 18°38\'36″ Norte 91°49\'51″ Oeste Altitud: 2 m s. n. m.', 'Carmen', '', 'publish', 'open', 'open', '', 'carmen', '', '', '2018-06-28 17:57:18', '2018-06-28 23:57:18', '', 0, 'http://oceamar.gomserver.net/?p=188', 0, 'post', '', 0),
(189, 1, '2018-06-28 17:57:18', '2018-06-28 23:57:18', '<strong>Ciudad Del Carmen Campeche, México.</strong> Latitud Longitud 18°38\'36″ Norte 91°49\'51″ Oeste Altitud: 2 m s. n. m.', 'Carmen', '', 'inherit', 'closed', 'closed', '', '188-revision-v1', '', '', '2018-06-28 17:57:18', '2018-06-28 23:57:18', '', 188, 'http://oceamar.gomserver.net/2018/06/28/188-revision-v1/', 0, 'revision', '', 0),
(190, 1, '2018-06-28 17:57:57', '2018-06-28 23:57:57', '<strong>Seybaplaya Campeche, México</strong> Latitud Longitud 19°38′22″ Norte 90°41′18″ Oeste. Altitud 4 m s. n. m.', 'Seybaplaya', '', 'publish', 'open', 'open', '', 'seybaplaya', '', '', '2018-06-28 17:57:57', '2018-06-28 23:57:57', '', 0, 'http://oceamar.gomserver.net/?p=190', 0, 'post', '', 0),
(191, 1, '2018-06-28 17:57:57', '2018-06-28 23:57:57', '<strong>Seybaplaya Campeche, México</strong> Latitud Longitud 19°38′22″ Norte 90°41′18″ Oeste. Altitud 4 m s. n. m.', 'Seybaplaya', '', 'inherit', 'closed', 'closed', '', '190-revision-v1', '', '', '2018-06-28 17:57:57', '2018-06-28 23:57:57', '', 190, 'http://oceamar.gomserver.net/2018/06/28/190-revision-v1/', 0, 'revision', '', 0),
(192, 1, '2018-06-28 17:59:32', '2018-06-28 23:59:32', '<strong>Progreso Yucatán, México.</strong> Latitud longitud 21°16′58″ Norte 89°39′49″ Oeste. Altitud: 0 m s. n. m.', 'Progreso', '', 'publish', 'open', 'open', '', 'progreso-2', '', '', '2018-06-28 17:59:32', '2018-06-28 23:59:32', '', 0, 'http://oceamar.gomserver.net/?p=192', 0, 'post', '', 0),
(193, 1, '2018-06-28 17:59:32', '2018-06-28 23:59:32', '<strong>Progreso Yucatán, México.</strong> Latitud longitud 21°16′58″ Norte 89°39′49″ Oeste. Altitud: 0 m s. n. m.', 'Progreso', '', 'inherit', 'closed', 'closed', '', '192-revision-v1', '', '', '2018-06-28 17:59:32', '2018-06-28 23:59:32', '', 192, 'http://oceamar.gomserver.net/2018/06/28/192-revision-v1/', 0, 'revision', '', 0),
(194, 1, '2018-06-28 18:14:15', '2018-06-29 00:14:15', 'A Oceamar é uma Agência Offshore que se concentra em atender nas necessidades relacionadas com indústria marítima e petrolífera, oferecendo um serviço abrangente e especializado. A Oceamar opera em todos os portos do Golfo do México com pessoal altamente qualificado para garantir qualidade e segurança em cada um dos serviços que oferecemos.', 'Acerca de', '', 'publish', 'open', 'open', '', 'acerca-de', '', '', '2018-06-28 18:14:15', '2018-06-29 00:14:15', '', 0, 'http://oceamar.gomserver.net/?p=194', 0, 'post', '', 0),
(195, 1, '2018-06-28 18:14:15', '2018-06-29 00:14:15', 'A Oceamar é uma Agência Offshore que se concentra em atender nas necessidades relacionadas com indústria marítima e petrolífera, oferecendo um serviço abrangente e especializado. A Oceamar opera em todos os portos do Golfo do México com pessoal altamente qualificado para garantir qualidade e segurança em cada um dos serviços que oferecemos.', 'Acerca de', '', 'inherit', 'closed', 'closed', '', '194-revision-v1', '', '', '2018-06-28 18:14:15', '2018-06-29 00:14:15', '', 194, 'http://oceamar.gomserver.net/2018/06/28/194-revision-v1/', 0, 'revision', '', 0),
(196, 1, '2018-06-28 18:31:11', '2018-06-29 00:31:11', 'Somos uma agência dedicada à atenção de embarcações e plataformas offshore.', 'Sobre Oceamar', '', 'publish', 'open', 'open', '', 'sobre-oceamar', '', '', '2018-06-28 18:32:42', '2018-06-29 00:32:42', '', 0, 'http://oceamar.gomserver.net/?p=196', 0, 'post', '', 0),
(197, 1, '2018-06-28 18:31:11', '2018-06-29 00:31:11', 'Somos uma agência dedicada à atenção de embarcações e plataformas offshore.', 'Sobre Oceamar', '', 'inherit', 'closed', 'closed', '', '196-revision-v1', '', '', '2018-06-28 18:31:11', '2018-06-29 00:31:11', '', 196, 'http://oceamar.gomserver.net/2018/06/28/196-revision-v1/', 0, 'revision', '', 0),
(198, 1, '2018-06-28 18:35:21', '2018-06-29 00:35:21', 'Sempre pense em novas idéias para melhorar, mesmo quando as condições parecem satisfatórias. Esteja aberto a melhorias contínuas.', 'Inovação', '', 'publish', 'open', 'open', '', 'inovacao', '', '', '2018-06-28 18:35:21', '2018-06-29 00:35:21', '', 0, 'http://oceamar.gomserver.net/?p=198', 0, 'post', '', 0),
(199, 1, '2018-06-28 18:35:21', '2018-06-29 00:35:21', 'Sempre pense em novas idéias para melhorar, mesmo quando as condições parecem satisfatórias. Esteja aberto a melhorias contínuas.', 'Inovação', '', 'inherit', 'closed', 'closed', '', '198-revision-v1', '', '', '2018-06-28 18:35:21', '2018-06-29 00:35:21', '', 198, 'http://oceamar.gomserver.net/2018/06/28/198-revision-v1/', 0, 'revision', '', 0),
(200, 1, '2018-06-28 18:36:05', '2018-06-29 00:36:05', 'Nós impomos metas desafiadoras que exigem grande atenção aos detalhes, tanto nos projetos mais complexos quanto no trabalho diário. Profissionalismo e responsabilidade estão implícitos neste principio.', 'Compromisso', '', 'publish', 'open', 'open', '', 'compromisso', '', '', '2018-06-28 18:36:05', '2018-06-29 00:36:05', '', 0, 'http://oceamar.gomserver.net/?p=200', 0, 'post', '', 0),
(201, 1, '2018-06-28 18:36:05', '2018-06-29 00:36:05', 'Nós impomos metas desafiadoras que exigem grande atenção aos detalhes, tanto nos projetos mais complexos quanto no trabalho diário. Profissionalismo e responsabilidade estão implícitos neste principio.', 'Compromisso', '', 'inherit', 'closed', 'closed', '', '200-revision-v1', '', '', '2018-06-28 18:36:05', '2018-06-29 00:36:05', '', 200, 'http://oceamar.gomserver.net/2018/06/28/200-revision-v1/', 0, 'revision', '', 0),
(202, 1, '2018-06-28 18:36:33', '2018-06-29 00:36:33', 'Atender as necessidades do cliente de maneira oportuna e acordada, respeitando todos os requisitos legais e aplicáveis à nossa operação.', 'Confiabilidade', '', 'publish', 'open', 'open', '', 'confiabilidade', '', '', '2018-06-28 18:36:33', '2018-06-29 00:36:33', '', 0, 'http://oceamar.gomserver.net/?p=202', 0, 'post', '', 0),
(203, 1, '2018-06-28 18:36:33', '2018-06-29 00:36:33', 'Atender as necessidades do cliente de maneira oportuna e acordada, respeitando todos os requisitos legais e aplicáveis à nossa operação.', 'Confiabilidade', '', 'inherit', 'closed', 'closed', '', '202-revision-v1', '', '', '2018-06-28 18:36:33', '2018-06-29 00:36:33', '', 202, 'http://oceamar.gomserver.net/2018/06/28/202-revision-v1/', 0, 'revision', '', 0),
(204, 1, '2018-06-28 18:36:54', '2018-06-29 00:36:54', 'Realizar e cumprir nossas tarefas, nunca desistir e ver desafios como oportunidades e superá-los.', 'Tenacidade', '', 'publish', 'open', 'open', '', 'tenacidade', '', '', '2018-06-28 18:36:54', '2018-06-29 00:36:54', '', 0, 'http://oceamar.gomserver.net/?p=204', 0, 'post', '', 0),
(205, 1, '2018-06-28 18:36:54', '2018-06-29 00:36:54', 'Realizar e cumprir nossas tarefas, nunca desistir e ver desafios como oportunidades e superá-los.', 'Tenacidade', '', 'inherit', 'closed', 'closed', '', '204-revision-v1', '', '', '2018-06-28 18:36:54', '2018-06-29 00:36:54', '', 204, 'http://oceamar.gomserver.net/2018/06/28/204-revision-v1/', 0, 'revision', '', 0),
(206, 1, '2018-06-28 18:37:25', '2018-06-29 00:37:25', 'Promovemos altos padrões de comportamento ético que vão além de qualquer código ou regulamento. Os valores de lealdade e cooperação para com todos os acionistas e consciência social e ambiental emergem deste princípio.', 'Integridade', '', 'publish', 'open', 'open', '', 'integridade', '', '', '2018-06-28 18:37:25', '2018-06-29 00:37:25', '', 0, 'http://oceamar.gomserver.net/?p=206', 0, 'post', '', 0),
(207, 1, '2018-06-28 18:37:25', '2018-06-29 00:37:25', 'Promovemos altos padrões de comportamento ético que vão além de qualquer código ou regulamento. Os valores de lealdade e cooperação para com todos os acionistas e consciência social e ambiental emergem deste princípio.', 'Integridade', '', 'inherit', 'closed', 'closed', '', '206-revision-v1', '', '', '2018-06-28 18:37:25', '2018-06-29 00:37:25', '', 206, 'http://oceamar.gomserver.net/2018/06/28/206-revision-v1/', 0, 'revision', '', 0),
(208, 1, '2018-06-28 18:38:51', '2018-06-29 00:38:51', 'Dentro da nossa oferta abrangente, estão os seguintes serviços:', 'Serviços', '', 'publish', 'open', 'open', '', 'servicos', '', '', '2018-06-28 18:38:51', '2018-06-29 00:38:51', '', 0, 'http://oceamar.gomserver.net/?p=208', 0, 'post', '', 0),
(209, 1, '2018-06-28 18:38:51', '2018-06-29 00:38:51', 'Dentro da nossa oferta abrangente, estão os seguintes serviços:', 'Serviços', '', 'inherit', 'closed', 'closed', '', '208-revision-v1', '', '', '2018-06-28 18:38:51', '2018-06-29 00:38:51', '', 208, 'http://oceamar.gomserver.net/2018/06/28/208-revision-v1/', 0, 'revision', '', 0),
(210, 1, '2018-06-28 18:40:44', '2018-06-29 00:40:44', '<div class=\"col-xs-6\">\r\n<ul class=\"ul_line sp_top\">\r\n 	<li>Agenciamento Marítimo</li>\r\n 	<li>Consignação</li>\r\n 	<li>Agência Protetora</li>\r\n</ul>\r\n</div>', 'Agência', '', 'publish', 'open', 'open', '', 'agencia', '', '', '2018-06-28 19:00:28', '2018-06-29 01:00:28', '', 0, 'http://oceamar.gomserver.net/?p=210', 0, 'post', '', 0),
(211, 1, '2018-06-28 18:40:44', '2018-06-29 00:40:44', '<div class=\"col-xs-6\">\r\n<ul class=\"ul_line sp_top\">\r\n 	<li>Agenciamento Marítimo</li>\r\n 	<li>Consignação</li>\r\n 	<li>Agência Protetora</li>\r\n</ul>\r\n</div>', 'Agência', '', 'inherit', 'closed', 'closed', '', '210-revision-v1', '', '', '2018-06-28 18:40:44', '2018-06-29 00:40:44', '', 210, 'http://oceamar.gomserver.net/2018/06/28/210-revision-v1/', 0, 'revision', '', 0),
(212, 1, '2018-06-28 18:42:02', '2018-06-29 00:42:02', '<div class=\"col-xs-6\">\r\n<ul class=\"ul_line sp_top\">\r\n 	<li>Alfândega</li>\r\n 	<li>Migração</li>\r\n 	<li>Autorizações de Navegação</li>\r\n 	<li>Assessoria Legal</li>\r\n</ul>\r\n</div>', 'Procedimentos', '', 'publish', 'open', 'open', '', 'procedimentos', '', '', '2018-06-28 18:59:42', '2018-06-29 00:59:42', '', 0, 'http://oceamar.gomserver.net/?p=212', 0, 'post', '', 0),
(213, 1, '2018-06-28 18:42:02', '2018-06-29 00:42:02', '<div class=\"col-xs-6\">\r\n<ul class=\"ul_line sp_top\">\r\n 	<li>Alfândega</li>\r\n 	<li>Migração</li>\r\n 	<li>Autorizações de Navegação</li>\r\n 	<li>Assessoria Legal</li>\r\n</ul>\r\n</div>', 'Procedimentos', '', 'inherit', 'closed', 'closed', '', '212-revision-v1', '', '', '2018-06-28 18:42:02', '2018-06-29 00:42:02', '', 212, 'http://oceamar.gomserver.net/2018/06/28/212-revision-v1/', 0, 'revision', '', 0),
(227, 1, '2018-06-29 15:03:22', '2018-06-29 21:03:22', '<ul>\r\n 	<li>Materiais Marítimos, Aéreos e Terrestres, pessoal e equipamento.</li>\r\n</ul>', 'Logística', '', 'publish', 'open', 'open', '', 'logistica-2', '', '', '2018-06-29 15:03:22', '2018-06-29 21:03:22', '', 0, 'http://oceamar.gomserver.net/?p=227', 0, 'post', '', 0),
(228, 1, '2018-06-29 15:03:22', '2018-06-29 21:03:22', '<ul>\r\n 	<li>Materiais Marítimos, Aéreos e Terrestres, pessoal e equipamento.</li>\r\n</ul>', 'Logística', '', 'inherit', 'closed', 'closed', '', '227-revision-v1', '', '', '2018-06-29 15:03:22', '2018-06-29 21:03:22', '', 227, 'http://oceamar.gomserver.net/2018/06/29/227-revision-v1/', 0, 'revision', '', 0),
(229, 1, '2018-06-29 15:04:24', '2018-06-29 21:04:24', '<ul class=\"sp_top\">\r\n 	<li>Mudanças de guarda</li>\r\n 	<li>Subcontratação</li>\r\n 	<li>Transporte terrestre</li>\r\n 	<li>Transporte aéreo</li>\r\n 	<li>Transporte marítimo</li>\r\n</ul>', 'Pessoal', '', 'publish', 'open', 'open', '', 'pessoal', '', '', '2018-06-29 15:04:24', '2018-06-29 21:04:24', '', 0, 'http://oceamar.gomserver.net/?p=229', 0, 'post', '', 0),
(230, 1, '2018-06-29 15:04:24', '2018-06-29 21:04:24', '<ul class=\"sp_top\">\r\n 	<li>Mudanças de guarda</li>\r\n 	<li>Subcontratação</li>\r\n 	<li>Transporte terrestre</li>\r\n 	<li>Transporte aéreo</li>\r\n 	<li>Transporte marítimo</li>\r\n</ul>', 'Pessoal', '', 'inherit', 'closed', 'closed', '', '229-revision-v1', '', '', '2018-06-29 15:04:24', '2018-06-29 21:04:24', '', 229, 'http://oceamar.gomserver.net/2018/06/29/229-revision-v1/', 0, 'revision', '', 0),
(231, 1, '2018-06-29 15:05:31', '2018-06-29 21:05:31', '<ul>\r\n 	<li>Expedição</li>\r\n 	<li>Armazenamento</li>\r\n 	<li>Manobras logísticas</li>\r\n 	<li>Limpeza de tanques</li>\r\n</ul>', 'Instalações em terra', '', 'publish', 'open', 'open', '', 'instalacoes-em-terra', '', '', '2018-06-29 15:05:31', '2018-06-29 21:05:31', '', 0, 'http://oceamar.gomserver.net/?p=231', 0, 'post', '', 0),
(232, 1, '2018-06-29 15:05:31', '2018-06-29 21:05:31', '<ul>\r\n 	<li>Expedição</li>\r\n 	<li>Armazenamento</li>\r\n 	<li>Manobras logísticas</li>\r\n 	<li>Limpeza de tanques</li>\r\n</ul>', 'Instalações em terra', '', 'inherit', 'closed', 'closed', '', '231-revision-v1', '', '', '2018-06-29 15:05:31', '2018-06-29 21:05:31', '', 231, 'http://oceamar.gomserver.net/2018/06/29/231-revision-v1/', 0, 'revision', '', 0),
(233, 1, '2018-06-29 15:07:05', '2018-06-29 21:07:05', '<ul>\r\n 	<li>Coleta de Resíduos Perigosos e Lixo</li>\r\n 	<li>Coleta de água cinza, esgoto, diesel, água e Lubrificantes</li>\r\n 	<li>Catering</li>\r\n 	<li>Equipamentos de segurança</li>\r\n</ul>\r\n&nbsp;', 'Serviços Portuários', '', 'publish', 'open', 'open', '', 'servicos-portuarios', '', '', '2018-06-29 15:07:05', '2018-06-29 21:07:05', '', 0, 'http://oceamar.gomserver.net/?p=233', 0, 'post', '', 0),
(234, 1, '2018-06-29 15:07:05', '2018-06-29 21:07:05', '<ul>\r\n 	<li>Coleta de Resíduos Perigosos e Lixo</li>\r\n 	<li>Coleta de água cinza, esgoto, diesel, água e Lubrificantes</li>\r\n 	<li>Catering</li>\r\n 	<li>Equipamentos de segurança</li>\r\n</ul>\r\n&nbsp;', 'Serviços Portuários', '', 'inherit', 'closed', 'closed', '', '233-revision-v1', '', '', '2018-06-29 15:07:05', '2018-06-29 21:07:05', '', 233, 'http://oceamar.gomserver.net/2018/06/29/233-revision-v1/', 0, 'revision', '', 0),
(235, 1, '2018-06-29 15:08:04', '2018-06-29 21:08:04', '<div class=\"col-xs-6\">\r\n<ul class=\"ul_line sp_top\">\r\n 	<li>Gruas</li>\r\n 	<li>carreta rebaixadas</li>\r\n 	<li>Empilhadeiras</li>\r\n 	<li>Hiabs</li>\r\n 	<li>Contêineres</li>\r\n</ul>\r\n</div>', 'Aluguel de Equipamentos', '', 'publish', 'open', 'open', '', 'aluguel-de-equipamentos', '', '', '2018-06-29 15:08:04', '2018-06-29 21:08:04', '', 0, 'http://oceamar.gomserver.net/?p=235', 0, 'post', '', 0),
(236, 1, '2018-06-29 15:08:04', '2018-06-29 21:08:04', '<div class=\"col-xs-6\">\r\n<ul class=\"ul_line sp_top\">\r\n 	<li>Gruas</li>\r\n 	<li>carreta rebaixadas</li>\r\n 	<li>Empilhadeiras</li>\r\n 	<li>Hiabs</li>\r\n 	<li>Contêineres</li>\r\n</ul>\r\n</div>', 'Aluguel de Equipamentos', '', 'inherit', 'closed', 'closed', '', '235-revision-v1', '', '', '2018-06-29 15:08:04', '2018-06-29 21:08:04', '', 235, 'http://oceamar.gomserver.net/2018/06/29/235-revision-v1/', 0, 'revision', '', 0),
(237, 1, '2018-06-29 15:32:24', '2018-06-29 21:32:24', 'Gerenciamento de instalações em terra para FSV Lady Ione durante o Project Allseas, fornecendo todos os serviços como armazenagem, transporte, içamento, transferência de lama, mudança de tripulação, limpeza de tanques de navios e coleta de lixo (2017).', 'Baker Hughes', '', 'publish', 'open', 'open', '', 'baker-hughes-2', '', '', '2018-06-29 15:32:24', '2018-06-29 21:32:24', '', 0, 'http://oceamar.gomserver.net/?p=237', 0, 'post', '', 0),
(238, 1, '2018-06-29 15:32:24', '2018-06-29 21:32:24', 'Gerenciamento de instalações em terra para FSV Lady Ione durante o Project Allseas, fornecendo todos os serviços como armazenagem, transporte, içamento, transferência de lama, mudança de tripulação, limpeza de tanques de navios e coleta de lixo (2017).', 'Baker Hughes', '', 'inherit', 'closed', 'closed', '', '237-revision-v1', '', '', '2018-06-29 15:32:24', '2018-06-29 21:32:24', '', 237, 'http://oceamar.gomserver.net/2018/06/29/237-revision-v1/', 0, 'revision', '', 0),
(239, 1, '2018-06-29 15:33:06', '2018-06-29 21:33:06', 'Fornecimento de diesel, água e consumíveis em Seybaplaya para a plataforma PICO IV (2016-2017)', 'Pico', '', 'publish', 'open', 'open', '', 'pico-2', '', '', '2018-06-29 15:36:58', '2018-06-29 21:36:58', '', 0, 'http://oceamar.gomserver.net/?p=239', 0, 'post', '', 0),
(240, 1, '2018-06-29 15:33:06', '2018-06-29 21:33:06', 'Fornecimento de diesel, água e consumíveis em Seybaplaya para a plataforma PICO IV (2016-2017)', 'Pico', '', 'inherit', 'closed', 'closed', '', '239-revision-v1', '', '', '2018-06-29 15:33:06', '2018-06-29 21:33:06', '', 239, 'http://oceamar.gomserver.net/2018/06/29/239-revision-v1/', 0, 'revision', '', 0),
(241, 1, '2018-06-29 15:33:43', '2018-06-29 21:33:43', 'Instalações em terra para mobilização de A-FRAME e ROV para a Pelágicas Investigação cujo usuário final era BHP BILLITON. Os serviços incluem despesas portuárias, autorizações de trabalho, autorizações de trabalho especializadas para a capitania, equipamentos de elevação para materiais, bem como recipientes de armazenamento (2016).', 'Amec foster', '', 'publish', 'open', 'open', '', 'amec-foster', '', '', '2018-06-29 15:33:43', '2018-06-29 21:33:43', '', 0, 'http://oceamar.gomserver.net/?p=241', 0, 'post', '', 0),
(242, 1, '2018-06-29 15:33:43', '2018-06-29 21:33:43', 'Instalações em terra para mobilização de A-FRAME e ROV para a Pelágicas Investigação cujo usuário final era BHP BILLITON. Os serviços incluem despesas portuárias, autorizações de trabalho, autorizações de trabalho especializadas para a capitania, equipamentos de elevação para materiais, bem como recipientes de armazenamento (2016).', 'Amec foster', '', 'inherit', 'closed', 'closed', '', '241-revision-v1', '', '', '2018-06-29 15:33:43', '2018-06-29 21:33:43', '', 241, 'http://oceamar.gomserver.net/2018/06/29/241-revision-v1/', 0, 'revision', '', 0),
(243, 1, '2018-06-29 15:34:25', '2018-06-29 21:34:25', 'Agência marítima e logística de todas as embarcações envolvidas em Brownsville, Tuxpan e Tampico compartilhando operações de tráfego com aquelas do campo TRION entre usuários finais PEMEX / BHP BILLITON (2017).', 'Allseas', '', 'publish', 'open', 'open', '', 'allseas-2', '', '', '2018-06-29 15:34:25', '2018-06-29 21:34:25', '', 0, 'http://oceamar.gomserver.net/?p=243', 0, 'post', '', 0),
(244, 1, '2018-06-29 15:34:25', '2018-06-29 21:34:25', 'Agência marítima e logística de todas as embarcações envolvidas em Brownsville, Tuxpan e Tampico compartilhando operações de tráfego com aquelas do campo TRION entre usuários finais PEMEX / BHP BILLITON (2017).', 'Allseas', '', 'inherit', 'closed', 'closed', '', '243-revision-v1', '', '', '2018-06-29 15:34:25', '2018-06-29 21:34:25', '', 243, 'http://oceamar.gomserver.net/2018/06/29/243-revision-v1/', 0, 'revision', '', 0),
(245, 1, '2018-06-29 15:35:46', '2018-06-29 21:35:46', 'Ship agency, logistical services, warehousing and maritime complementary maritime for Cantarell I and Cantarell II (2016).', 'Grupo R', '', 'publish', 'open', 'open', '', 'grupo-r-2', '', '', '2018-06-29 15:35:46', '2018-06-29 21:35:46', '', 0, 'http://oceamar.gomserver.net/?p=245', 0, 'post', '', 0),
(246, 1, '2018-06-29 15:35:46', '2018-06-29 21:35:46', 'Ship agency, logistical services, warehousing and maritime complementary maritime for Cantarell I and Cantarell II (2016).', 'Grupo R', '', 'inherit', 'closed', 'closed', '', '245-revision-v1', '', '', '2018-06-29 15:35:46', '2018-06-29 21:35:46', '', 245, 'http://oceamar.gomserver.net/2018/06/29/245-revision-v1/', 0, 'revision', '', 0),
(247, 1, '2018-06-29 15:37:56', '2018-06-29 21:37:56', 'Agência de navegaçãoe consignatário para embarcações em projeto de estudos geofísicos (2016-2017).', 'Geohidra', '', 'publish', 'open', 'open', '', 'geohidra-2', '', '', '2018-06-29 15:37:56', '2018-06-29 21:37:56', '', 0, 'http://oceamar.gomserver.net/?p=247', 0, 'post', '', 0),
(248, 1, '2018-06-29 15:37:56', '2018-06-29 21:37:56', 'Agência de navegaçãoe consignatário para embarcações em projeto de estudos geofísicos (2016-2017).', 'Geohidra', '', 'inherit', 'closed', 'closed', '', '247-revision-v1', '', '', '2018-06-29 15:37:56', '2018-06-29 21:37:56', '', 247, 'http://oceamar.gomserver.net/2018/06/29/247-revision-v1/', 0, 'revision', '', 0),
(249, 1, '2018-06-29 15:38:41', '2018-06-29 21:38:41', 'Agência de navios, serviços logísticos, armazenagem marítima e marítima complementar (2016-2017).', 'Cosl', '', 'publish', 'open', 'open', '', 'cosl-2', '', '', '2018-06-29 15:38:41', '2018-06-29 21:38:41', '', 0, 'http://oceamar.gomserver.net/?p=249', 0, 'post', '', 0),
(250, 1, '2018-06-29 15:38:41', '2018-06-29 21:38:41', 'Agência de navios, serviços logísticos, armazenagem marítima e marítima complementar (2016-2017).', 'Cosl', '', 'inherit', 'closed', 'closed', '', '249-revision-v1', '', '', '2018-06-29 15:38:41', '2018-06-29 21:38:41', '', 249, 'http://oceamar.gomserver.net/2018/06/29/249-revision-v1/', 0, 'revision', '', 0),
(251, 1, '2018-06-29 15:39:44', '2018-06-29 21:39:44', 'Procedimento de autorização e aduaneiro para embarcações e equipamentos (guindaste). Duração do projeto 30 a 45 dias para montagem da plataforma TAMAULIPAS (2017).', 'ABS Group', '', 'publish', 'open', 'open', '', 'abs-group-2', '', '', '2018-06-29 15:39:44', '2018-06-29 21:39:44', '', 0, 'http://oceamar.gomserver.net/?p=251', 0, 'post', '', 0),
(252, 1, '2018-06-29 15:39:44', '2018-06-29 21:39:44', 'Procedimento de autorização e aduaneiro para embarcações e equipamentos (guindaste). Duração do projeto 30 a 45 dias para montagem da plataforma TAMAULIPAS (2017).', 'ABS Group', '', 'inherit', 'closed', 'closed', '', '251-revision-v1', '', '', '2018-06-29 15:39:44', '2018-06-29 21:39:44', '', 251, 'http://oceamar.gomserver.net/2018/06/29/251-revision-v1/', 0, 'revision', '', 0),
(253, 1, '2018-06-29 15:40:36', '2018-06-29 21:40:36', 'Permissões de navegação para embarcações estrangeiras, como Intervenção Marítima, Autorização e Despesas Portuárias para Navegação Costeira e Oceânica, Trâmites Aduaneiras, Procedimentos de Imigração para tripulação estrangeira, Logística de materiais, Dispositivos de elevação, Provisão de pessoal a bordo (2017-2018).', 'Oceaneering', '', 'publish', 'open', 'open', '', 'oceaneering-2', '', '', '2018-06-29 15:40:36', '2018-06-29 21:40:36', '', 0, 'http://oceamar.gomserver.net/?p=253', 0, 'post', '', 0),
(254, 1, '2018-06-29 15:40:36', '2018-06-29 21:40:36', 'Permissões de navegação para embarcações estrangeiras, como Intervenção Marítima, Autorização e Despesas Portuárias para Navegação Costeira e Oceânica, Trâmites Aduaneiras, Procedimentos de Imigração para tripulação estrangeira, Logística de materiais, Dispositivos de elevação, Provisão de pessoal a bordo (2017-2018).', 'Oceaneering', '', 'inherit', 'closed', 'closed', '', '253-revision-v1', '', '', '2018-06-29 15:40:36', '2018-06-29 21:40:36', '', 253, 'http://oceamar.gomserver.net/2018/06/29/253-revision-v1/', 0, 'revision', '', 0),
(255, 1, '2018-06-29 15:41:04', '2018-06-29 21:41:04', 'Agência de Navios e serviços logísticos portuários (Docking e armazenagem), bem como corretagem portuária e personalizada perante as autoridades de PSV, OSV e outros artefatos navais (2015-2017).', 'Seadrill', '', 'publish', 'open', 'open', '', 'seadrill-2', '', '', '2018-06-29 15:41:04', '2018-06-29 21:41:04', '', 0, 'http://oceamar.gomserver.net/?p=255', 0, 'post', '', 0),
(256, 1, '2018-06-29 15:41:04', '2018-06-29 21:41:04', 'Agência de Navios e serviços logísticos portuários (Docking e armazenagem), bem como corretagem portuária e personalizada perante as autoridades de PSV, OSV e outros artefatos navais (2015-2017).', 'Seadrill', '', 'inherit', 'closed', 'closed', '', '255-revision-v1', '', '', '2018-06-29 15:41:04', '2018-06-29 21:41:04', '', 255, 'http://oceamar.gomserver.net/2018/06/29/255-revision-v1/', 0, 'revision', '', 0),
(257, 1, '2018-06-29 15:57:05', '2018-06-29 21:57:05', 'Serviços de agência e desmantelamento de plataformas 807 e 801 em Seybaplaya (2015-2017).', 'Nabors', '', 'publish', 'open', 'open', '', 'nabors-2', '', '', '2018-06-29 15:57:05', '2018-06-29 21:57:05', '', 0, 'http://oceamar.gomserver.net/?p=257', 0, 'post', '', 0),
(258, 1, '2018-06-29 15:57:05', '2018-06-29 21:57:05', 'Serviços de agência e desmantelamento de plataformas 807 e 801 em Seybaplaya (2015-2017).', 'Nabors', '', 'inherit', 'closed', 'closed', '', '257-revision-v1', '', '', '2018-06-29 15:57:05', '2018-06-29 21:57:05', '', 257, 'http://oceamar.gomserver.net/2018/06/29/257-revision-v1/', 0, 'revision', '', 0),
(259, 1, '2018-06-29 15:57:39', '2018-06-29 21:57:39', 'Agência de descomissionamento e partida dos navios HOS Hawke e HOS Sailor (2014-2017).\r\nChegadas e partidas em navegações costeiras e oceânicas do navio Stim Star para finalização do poço (2014-2017).', 'Halliburton', '', 'publish', 'open', 'open', '', 'halliburton-2', '', '', '2018-06-29 15:57:39', '2018-06-29 21:57:39', '', 0, 'http://oceamar.gomserver.net/?p=259', 0, 'post', '', 0),
(260, 1, '2018-06-29 15:57:39', '2018-06-29 21:57:39', 'Agência de descomissionamento e partida dos navios HOS Hawke e HOS Sailor (2014-2017).\r\nChegadas e partidas em navegações costeiras e oceânicas do navio Stim Star para finalização do poço (2014-2017).', 'Halliburton', '', 'inherit', 'closed', 'closed', '', '259-revision-v1', '', '', '2018-06-29 15:57:39', '2018-06-29 21:57:39', '', 259, 'http://oceamar.gomserver.net/2018/06/29/259-revision-v1/', 0, 'revision', '', 0),
(261, 1, '2018-06-29 15:58:31', '2018-06-29 21:58:31', 'Agência de navios consignatários para Punta Delgada e Bourbon Liberty (2014-2017).', 'Schlumberger', '', 'publish', 'open', 'open', '', 'schlumberger-2', '', '', '2018-06-29 15:58:31', '2018-06-29 21:58:31', '', 0, 'http://oceamar.gomserver.net/?p=261', 0, 'post', '', 0),
(262, 1, '2018-06-29 15:58:31', '2018-06-29 21:58:31', 'Agência de navios consignatários para Punta Delgada e Bourbon Liberty (2014-2017).', 'Schlumberger', '', 'inherit', 'closed', 'closed', '', '261-revision-v1', '', '', '2018-06-29 15:58:31', '2018-06-29 21:58:31', '', 261, 'http://oceamar.gomserver.net/2018/06/29/261-revision-v1/', 0, 'revision', '', 0),
(263, 1, '2018-06-29 16:03:31', '2018-06-29 22:03:31', 'Na Oceamar estamos interessados em facilitar as operações de nossos clientes, por isso estamos disponíveis 24 horas por dia, 7 dias por semana.\r\n\r\n<strong>Operamos em todos os portos do Golfo do México</strong> com pessoal altamente qualificado para garantir qualidade e segurança em cada um dos serviços que oferecemos.', 'Contato', '', 'publish', 'open', 'open', '', 'contato', '', '', '2018-06-29 16:09:28', '2018-06-29 22:09:28', '', 0, 'http://oceamar.gomserver.net/?p=263', 0, 'post', '', 0),
(264, 1, '2018-06-29 16:03:31', '2018-06-29 22:03:31', '<strong>Na Oceamar estamos interessados em facilitar as operações de nossos clientes, por isso estamos disponíveis 24 horas por dia, 7 dias por semana.</strong>\r\n\r\n<strong>Operamos em todos os portos do Golfo do México</strong> com pessoal altamente qualificado para garantir qualidade e segurança em cada um dos serviços que oferecemos.', 'Contato', '', 'inherit', 'closed', 'closed', '', '263-revision-v1', '', '', '2018-06-29 16:03:31', '2018-06-29 22:03:31', '', 263, 'http://oceamar.gomserver.net/2018/06/29/263-revision-v1/', 0, 'revision', '', 0),
(265, 1, '2018-06-29 16:09:28', '2018-06-29 22:09:28', 'Na Oceamar estamos interessados em facilitar as operações de nossos clientes, por isso estamos disponíveis 24 horas por dia, 7 dias por semana.\r\n\r\n<strong>Operamos em todos os portos do Golfo do México</strong> com pessoal altamente qualificado para garantir qualidade e segurança em cada um dos serviços que oferecemos.', 'Contato', '', 'inherit', 'closed', 'closed', '', '263-revision-v1', '', '', '2018-06-29 16:09:28', '2018-06-29 22:09:28', '', 263, 'http://oceamar.gomserver.net/2018/06/29/263-revision-v1/', 0, 'revision', '', 0),
(266, 1, '2018-06-29 17:11:32', '2018-06-29 23:11:32', 'Oceamar is an Offshore Agency that focuses on meeting the needs related to the maritime and oil industry offering a comprehensive and specialized service. Oceamar operates in all the ports of the Gulf of Mexico with highly qualified personnel to guarantee quality and safety in each of the services that we offer.', 'Acerca de', '', 'publish', 'open', 'open', '', 'acerca-de-2', '', '', '2018-06-29 17:11:32', '2018-06-29 23:11:32', '', 0, 'http://oceamar.gomserver.net/?p=266', 0, 'post', '', 0),
(267, 1, '2018-06-29 17:11:32', '2018-06-29 23:11:32', 'Oceamar is an Offshore Agency that focuses on meeting the needs related to the maritime and oil industry offering a comprehensive and specialized service. Oceamar operates in all the ports of the Gulf of Mexico with highly qualified personnel to guarantee quality and safety in each of the services that we offer.', 'Acerca de', '', 'inherit', 'closed', 'closed', '', '266-revision-v1', '', '', '2018-06-29 17:11:32', '2018-06-29 23:11:32', '', 266, 'http://oceamar.gomserver.net/2018/06/29/266-revision-v1/', 0, 'revision', '', 0),
(268, 1, '2018-06-29 17:13:16', '2018-06-29 23:13:16', 'We are an agency dedicated to the attention of offshore vessels and platforms.', 'About Us', '', 'publish', 'open', 'open', '', 'about-us', '', '', '2018-06-29 17:13:16', '2018-06-29 23:13:16', '', 0, 'http://oceamar.gomserver.net/?p=268', 0, 'post', '', 0),
(269, 1, '2018-06-29 17:13:16', '2018-06-29 23:13:16', 'We are an agency dedicated to the attention of offshore vessels and platforms.', 'About Us', '', 'inherit', 'closed', 'closed', '', '268-revision-v1', '', '', '2018-06-29 17:13:16', '2018-06-29 23:13:16', '', 268, 'http://oceamar.gomserver.net/2018/06/29/268-revision-v1/', 0, 'revision', '', 0),
(270, 1, '2018-06-29 17:14:38', '2018-06-29 23:14:38', '<p class=\"text-left\">We are a company committed to providing Consignment Agency through maritime, port and integral logistics services, in seek of providing quality care and excellence, for the development of our customers, collaborators, suppliers and community.</p>', 'Mission', '', 'publish', 'open', 'open', '', 'mission', '', '', '2018-06-29 17:15:27', '2018-06-29 23:15:27', '', 0, 'http://oceamar.gomserver.net/?p=270', 0, 'post', '', 0),
(271, 1, '2018-06-29 17:14:38', '2018-06-29 23:14:38', '<p class=\"text-left\">We are a company committed to providing Consignment Agency through maritime, port and integral logistics services, in seek of providing quality care and excellence, for the development of our customers, collaborators, suppliers and community.</p>', 'Mission', '', 'inherit', 'closed', 'closed', '', '270-revision-v1', '', '', '2018-06-29 17:14:38', '2018-06-29 23:14:38', '', 270, 'http://oceamar.gomserver.net/2018/06/29/270-revision-v1/', 0, 'revision', '', 0),
(272, 1, '2018-06-29 17:16:18', '2018-06-29 23:16:18', '<p class=\"text-left\">To be a Mexican Shipping Agency with the highest reliability, prestige and projection, both nationally and internationally, with a sustainable operation in ports, logistics and maritime services.</p>', 'Vision', '', 'publish', 'open', 'open', '', 'vision-2', '', '', '2018-06-29 17:16:18', '2018-06-29 23:16:18', '', 0, 'http://oceamar.gomserver.net/?p=272', 0, 'post', '', 0),
(273, 1, '2018-06-29 17:16:18', '2018-06-29 23:16:18', '<p class=\"text-left\">To be a Mexican Shipping Agency with the highest reliability, prestige and projection, both nationally and internationally, with a sustainable operation in ports, logistics and maritime services.</p>', 'Vision', '', 'inherit', 'closed', 'closed', '', '272-revision-v1', '', '', '2018-06-29 17:16:18', '2018-06-29 23:16:18', '', 272, 'http://oceamar.gomserver.net/2018/06/29/272-revision-v1/', 0, 'revision', '', 0),
(274, 1, '2018-06-29 17:17:19', '2018-06-29 23:17:19', 'Always think of new ideas to improve, even if the conditions seem satisfactory. Be open to continuous improvement.', 'Innovation', '', 'publish', 'open', 'open', '', 'innovation', '', '', '2018-06-29 17:17:19', '2018-06-29 23:17:19', '', 0, 'http://oceamar.gomserver.net/?p=274', 0, 'post', '', 0),
(275, 1, '2018-06-29 17:17:19', '2018-06-29 23:17:19', 'Always think of new ideas to improve, even if the conditions seem satisfactory. Be open to continuous improvement.', 'Innovation', '', 'inherit', 'closed', 'closed', '', '274-revision-v1', '', '', '2018-06-29 17:17:19', '2018-06-29 23:17:19', '', 274, 'http://oceamar.gomserver.net/2018/06/29/274-revision-v1/', 0, 'revision', '', 0),
(276, 1, '2018-06-29 17:17:53', '2018-06-29 23:17:53', 'We impose challenging goals that require great attention to detail, both in the most complex projects as in the daily work. Professionalism and responsibility are implicit in this principle.', 'Commitment', '', 'publish', 'open', 'open', '', 'commitment', '', '', '2018-06-29 17:17:53', '2018-06-29 23:17:53', '', 0, 'http://oceamar.gomserver.net/?p=276', 0, 'post', '', 0),
(277, 1, '2018-06-29 17:17:53', '2018-06-29 23:17:53', 'We impose challenging goals that require great attention to detail, both in the most complex projects as in the daily work. Professionalism and responsibility are implicit in this principle.', 'Commitment', '', 'inherit', 'closed', 'closed', '', '276-revision-v1', '', '', '2018-06-29 17:17:53', '2018-06-29 23:17:53', '', 276, 'http://oceamar.gomserver.net/2018/06/29/276-revision-v1/', 0, 'revision', '', 0),
(278, 1, '2018-06-29 17:18:20', '2018-06-29 23:18:20', 'To meet customer’s needs in a timely and agreed manner, respecting all legal requirements and applicable to our operation.', 'Reliability', '', 'publish', 'open', 'open', '', 'reliability', '', '', '2018-06-29 17:18:20', '2018-06-29 23:18:20', '', 0, 'http://oceamar.gomserver.net/?p=278', 0, 'post', '', 0),
(279, 1, '2018-06-29 17:18:20', '2018-06-29 23:18:20', 'To meet customer’s needs in a timely and agreed manner, respecting all legal requirements and applicable to our operation.', 'Reliability', '', 'inherit', 'closed', 'closed', '', '278-revision-v1', '', '', '2018-06-29 17:18:20', '2018-06-29 23:18:20', '', 278, 'http://oceamar.gomserver.net/2018/06/29/278-revision-v1/', 0, 'revision', '', 0),
(280, 1, '2018-06-29 17:19:07', '2018-06-29 23:19:07', 'To carry out and fulfill our tasks, never give up and see the challenges as opportunities and overcome them.', 'Tenacity', '', 'publish', 'open', 'open', '', 'tenacity', '', '', '2018-06-29 17:19:07', '2018-06-29 23:19:07', '', 0, 'http://oceamar.gomserver.net/?p=280', 0, 'post', '', 0),
(281, 1, '2018-06-29 17:19:07', '2018-06-29 23:19:07', 'To carry out and fulfill our tasks, never give up and see the challenges as opportunities and overcome them.', 'Tenacity', '', 'inherit', 'closed', 'closed', '', '280-revision-v1', '', '', '2018-06-29 17:19:07', '2018-06-29 23:19:07', '', 280, 'http://oceamar.gomserver.net/2018/06/29/280-revision-v1/', 0, 'revision', '', 0),
(282, 1, '2018-06-29 17:19:23', '2018-06-29 23:19:23', 'We promote high standards of ethical behavior that go beyond any code or regulation. From this principle the loyalty and cooperation values emerge towards all shareholders and social and environmental awareness', 'Integrity', '', 'publish', 'open', 'open', '', 'integrity', '', '', '2018-06-29 17:19:43', '2018-06-29 23:19:43', '', 0, 'http://oceamar.gomserver.net/?p=282', 0, 'post', '', 0),
(283, 1, '2018-06-29 17:19:23', '2018-06-29 23:19:23', 'We promote high standards of ethical behavior that go beyond any code or regulation. From this principle the loyalty and cooperation values emerge towards all shareholders and social and environmental awareness', 'Integrity', '', 'inherit', 'closed', 'closed', '', '282-revision-v1', '', '', '2018-06-29 17:19:23', '2018-06-29 23:19:23', '', 282, 'http://oceamar.gomserver.net/2018/06/29/282-revision-v1/', 0, 'revision', '', 0),
(284, 1, '2018-06-29 17:21:55', '2018-06-29 23:21:55', 'Within our comprehensive offer are the following services', 'Services', '', 'publish', 'open', 'open', '', 'services', '', '', '2018-06-29 17:22:06', '2018-06-29 23:22:06', '', 0, 'http://oceamar.gomserver.net/?p=284', 0, 'post', '', 0),
(285, 1, '2018-06-29 17:21:55', '2018-06-29 23:21:55', 'Within our comprehensive offer are the following services', 'Services', '', 'inherit', 'closed', 'closed', '', '284-revision-v1', '', '', '2018-06-29 17:21:55', '2018-06-29 23:21:55', '', 284, 'http://oceamar.gomserver.net/2018/06/29/284-revision-v1/', 0, 'revision', '', 0),
(286, 1, '2018-06-29 17:22:46', '2018-06-29 23:22:46', '<ul>\r\n 	<li>Shipping Agency</li>\r\n 	<li>Consignee Agency</li>\r\n 	<li>Protective Agency</li>\r\n</ul>', 'Agency', '', 'publish', 'open', 'open', '', 'agency', '', '', '2018-06-29 17:27:33', '2018-06-29 23:27:33', '', 0, 'http://oceamar.gomserver.net/?p=286', 0, 'post', '', 0),
(288, 1, '2018-06-29 17:27:33', '2018-06-29 23:27:33', '<ul>\r\n 	<li>Shipping Agency</li>\r\n 	<li>Consignee Agency</li>\r\n 	<li>Protective Agency</li>\r\n</ul>', 'Agency', '', 'inherit', 'closed', 'closed', '', '286-revision-v1', '', '', '2018-06-29 17:27:33', '2018-06-29 23:27:33', '', 286, 'http://oceamar.gomserver.net/2018/06/29/286-revision-v1/', 0, 'revision', '', 0),
(287, 1, '2018-06-29 17:22:46', '2018-06-29 23:22:46', '<div class=\"col-xs-6\">\r\n<ul class=\"ul_line sp_top\">\r\n 	<li>Shipping Agency</li>\r\n 	<li>Consignee Agency</li>\r\n 	<li>Protective Agency</li>\r\n</ul>\r\n</div>', 'Agency', '', 'inherit', 'closed', 'closed', '', '286-revision-v1', '', '', '2018-06-29 17:22:46', '2018-06-29 23:22:46', '', 286, 'http://oceamar.gomserver.net/2018/06/29/286-revision-v1/', 0, 'revision', '', 0),
(289, 1, '2018-06-29 17:29:03', '2018-06-29 23:29:03', '<ul>\r\n 	<li>Customs</li>\r\n 	<li>Immigration</li>\r\n 	<li>Navigation Permits</li>\r\n 	<li>Legal Advice</li>\r\n</ul>', 'Procedures', '', 'publish', 'open', 'open', '', '289', '', '', '2018-06-29 17:29:38', '2018-06-29 23:29:38', '', 0, 'http://oceamar.gomserver.net/?p=289', 0, 'post', '', 0),
(290, 1, '2018-06-29 17:29:03', '2018-06-29 23:29:03', '<ul>\r\n 	<li>Customs</li>\r\n 	<li>Immigration</li>\r\n 	<li>Navigation Permits</li>\r\n 	<li>Legal Advice</li>\r\n</ul>', '', '', 'inherit', 'closed', 'closed', '', '289-revision-v1', '', '', '2018-06-29 17:29:03', '2018-06-29 23:29:03', '', 289, 'http://oceamar.gomserver.net/2018/06/29/289-revision-v1/', 0, 'revision', '', 0),
(291, 1, '2018-06-29 17:29:38', '2018-06-29 23:29:38', '<ul>\r\n 	<li>Customs</li>\r\n 	<li>Immigration</li>\r\n 	<li>Navigation Permits</li>\r\n 	<li>Legal Advice</li>\r\n</ul>', 'Procedures', '', 'inherit', 'closed', 'closed', '', '289-revision-v1', '', '', '2018-06-29 17:29:38', '2018-06-29 23:29:38', '', 289, 'http://oceamar.gomserver.net/2018/06/29/289-revision-v1/', 0, 'revision', '', 0),
(292, 1, '2018-06-29 17:30:47', '2018-06-29 23:30:47', '<ul>\r\n 	<li>Roadfreight, airfreight and seafreight transportation of materials, personnel and equipment</li>\r\n</ul>', 'Logistics', '', 'publish', 'open', 'open', '', 'logistics', '', '', '2018-06-29 17:30:47', '2018-06-29 23:30:47', '', 0, 'http://oceamar.gomserver.net/?p=292', 0, 'post', '', 0),
(293, 1, '2018-06-29 17:30:47', '2018-06-29 23:30:47', '<ul>\r\n 	<li>Roadfreight, airfreight and seafreight transportation of materials, personnel and equipment</li>\r\n</ul>', 'Logistics', '', 'inherit', 'closed', 'closed', '', '292-revision-v1', '', '', '2018-06-29 17:30:47', '2018-06-29 23:30:47', '', 292, 'http://oceamar.gomserver.net/2018/06/29/292-revision-v1/', 0, 'revision', '', 0),
(294, 1, '2018-06-29 17:31:33', '2018-06-29 23:31:33', '<ul>\r\n 	<li>Vessels and naval artifacts</li>\r\n 	<li>Miscellaneous materials</li>\r\n 	<li>Specialized equipment</li>\r\n</ul>', 'Import and Export', '', 'publish', 'open', 'open', '', 'import-and-export', '', '', '2018-06-29 17:32:56', '2018-06-29 23:32:56', '', 0, 'http://oceamar.gomserver.net/?p=294', 0, 'post', '', 0),
(295, 1, '2018-06-29 17:31:33', '2018-06-29 23:31:33', '<ul>\r\n 	<li>Vessels and naval artifacts</li>\r\n 	<li>Miscellaneous materials</li>\r\n 	<li>Specialized equipment</li>\r\n</ul>', 'Import and Export', '', 'inherit', 'closed', 'closed', '', '294-revision-v1', '', '', '2018-06-29 17:31:33', '2018-06-29 23:31:33', '', 294, 'http://oceamar.gomserver.net/2018/06/29/294-revision-v1/', 0, 'revision', '', 0);
INSERT INTO `ocmrwp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(296, 1, '2018-06-29 17:34:30', '2018-06-29 23:34:30', '<ul>\r\n 	<li>Crew change</li>\r\n 	<li>Personnel outsourcing</li>\r\n 	<li>Personnel land transportation</li>\r\n 	<li>Personnel air transportation</li>\r\n 	<li>Personnel maritime transportation</li>\r\n</ul>', 'Personnel', '', 'publish', 'open', 'open', '', 'personnel', '', '', '2018-06-29 17:34:30', '2018-06-29 23:34:30', '', 0, 'http://oceamar.gomserver.net/?p=296', 0, 'post', '', 0),
(297, 1, '2018-06-29 17:34:30', '2018-06-29 23:34:30', '<ul>\r\n 	<li>Crew change</li>\r\n 	<li>Personnel outsourcing</li>\r\n 	<li>Personnel land transportation</li>\r\n 	<li>Personnel air transportation</li>\r\n 	<li>Personnel maritime transportation</li>\r\n</ul>', 'Personnel', '', 'inherit', 'closed', 'closed', '', '296-revision-v1', '', '', '2018-06-29 17:34:30', '2018-06-29 23:34:30', '', 296, 'http://oceamar.gomserver.net/2018/06/29/296-revision-v1/', 0, 'revision', '', 0),
(298, 1, '2018-06-29 17:35:57', '2018-06-29 23:35:57', '<ul>\r\n 	<li>Wharfage</li>\r\n 	<li>Storage</li>\r\n 	<li>Logistic maneuvers</li>\r\n 	<li>Tank cleaning</li>\r\n</ul>', 'Shorebase', '', 'publish', 'open', 'open', '', 'shorebase-2', '', '', '2018-06-29 17:35:57', '2018-06-29 23:35:57', '', 0, 'http://oceamar.gomserver.net/?p=298', 0, 'post', '', 0),
(299, 1, '2018-06-29 17:35:57', '2018-06-29 23:35:57', '<ul>\r\n 	<li>Wharfage</li>\r\n 	<li>Storage</li>\r\n 	<li>Logistic maneuvers</li>\r\n 	<li>Tank cleaning</li>\r\n</ul>', 'Shorebase', '', 'inherit', 'closed', 'closed', '', '298-revision-v1', '', '', '2018-06-29 17:35:57', '2018-06-29 23:35:57', '', 298, 'http://oceamar.gomserver.net/2018/06/29/298-revision-v1/', 0, 'revision', '', 0),
(300, 1, '2018-06-29 17:36:39', '2018-06-29 23:36:39', '<ul>\r\n 	<li>Hazardous Waste and Garbage Collection</li>\r\n 	<li>Gray water collection, sewage, diesel supply, water and Lubricants</li>\r\n 	<li>Catering</li>\r\n 	<li>Safety equipment</li>\r\n</ul>', 'Port Services', '', 'publish', 'open', 'open', '', 'port-services', '', '', '2018-06-29 17:57:01', '2018-06-29 23:57:01', '', 0, 'http://oceamar.gomserver.net/?p=300', 0, 'post', '', 0),
(301, 1, '2018-06-29 17:36:39', '2018-06-29 23:36:39', '<ul>\r\n 	<li>Hazardous Waste and Garbage Collection</li>\r\n 	<li>Gray water collection, sewage, diesel supply, water and Lubricants</li>\r\n 	<li>Catering</li>\r\n 	<li>Safety equipment</li>\r\n</ul>', 'Port Services', '', 'inherit', 'closed', 'closed', '', '300-revision-v1', '', '', '2018-06-29 17:36:39', '2018-06-29 23:36:39', '', 300, 'http://oceamar.gomserver.net/2018/06/29/300-revision-v1/', 0, 'revision', '', 0),
(302, 1, '2018-06-29 17:58:41', '2018-06-29 23:58:41', '<ul>\r\n 	<li>Cranes</li>\r\n 	<li>Lowboy</li>\r\n 	<li>Forklifts</li>\r\n 	<li>Hiabs</li>\r\n 	<li>Containers and CCU´s</li>\r\n</ul>', 'Equipment Rental', '', 'publish', 'open', 'open', '', 'equipment-rental', '', '', '2018-06-29 17:58:41', '2018-06-29 23:58:41', '', 0, 'http://oceamar.gomserver.net/?p=302', 0, 'post', '', 0),
(303, 1, '2018-06-29 17:58:41', '2018-06-29 23:58:41', '<ul>\r\n 	<li>Cranes</li>\r\n 	<li>Lowboy</li>\r\n 	<li>Forklifts</li>\r\n 	<li>Hiabs</li>\r\n 	<li>Containers and CCU´s</li>\r\n</ul>', 'Equipment Rental', '', 'inherit', 'closed', 'closed', '', '302-revision-v1', '', '', '2018-06-29 17:58:41', '2018-06-29 23:58:41', '', 302, 'http://oceamar.gomserver.net/2018/06/29/302-revision-v1/', 0, 'revision', '', 0),
(304, 1, '2018-06-29 18:27:06', '2018-06-30 00:27:06', '<strong>Altamira Tamaulipas, México</strong>. Latitude Lenght 22°23′45″ North 97° 56° 13° West. Altitude 10 m s. n. m.', 'Altamira', '', 'publish', 'open', 'open', '', 'altamira-2', '', '', '2018-06-29 18:33:48', '2018-06-30 00:33:48', '', 0, 'http://oceamar.gomserver.net/?p=304', 0, 'post', '', 0),
(305, 1, '2018-06-29 18:27:06', '2018-06-30 00:27:06', 'Altamira Tamaulipas, México. Latitude Lenght 22°23′45″ North 97° 56° 13° West. Altitude 10 m s. n. m.', 'Altamira', '', 'inherit', 'closed', 'closed', '', '304-revision-v1', '', '', '2018-06-29 18:27:06', '2018-06-30 00:27:06', '', 304, 'http://oceamar.gomserver.net/2018/06/29/304-revision-v1/', 0, 'revision', '', 0),
(306, 1, '2018-06-29 18:28:11', '2018-06-30 00:28:11', '<strong>Tampico Tamaulipas, México.</strong> Latitude Lenght 22°15′19″ North 97°52′07″ West. Altitude: 30 m s. n. m.', 'Tampico', '', 'publish', 'open', 'open', '', 'tampico-3', '', '', '2018-06-29 18:34:03', '2018-06-30 00:34:03', '', 0, 'http://oceamar.gomserver.net/?p=306', 0, 'post', '', 0),
(307, 1, '2018-06-29 18:28:11', '2018-06-30 00:28:11', 'Tampico Tamaulipas, México. Latitude Lenght 22°15′19″ North 97°52′07″ West. Altitude: 30 m s. n. m.', 'Tampico', '', 'inherit', 'closed', 'closed', '', '306-revision-v1', '', '', '2018-06-29 18:28:11', '2018-06-30 00:28:11', '', 306, 'http://oceamar.gomserver.net/2018/06/29/306-revision-v1/', 0, 'revision', '', 0),
(308, 1, '2018-06-29 18:28:58', '2018-06-30 00:28:58', '<strong>Tuxpan de Rodriguez Cano, Veracruz, México</strong>. Latitude Lenght 20°57′31″ North 97°22′51″ West. Altitude: 10 m s. n. m.', 'Tuxpan', '', 'publish', 'open', 'open', '', 'tuxpan-2', '', '', '2018-06-29 18:34:19', '2018-06-30 00:34:19', '', 0, 'http://oceamar.gomserver.net/?p=308', 0, 'post', '', 0),
(309, 1, '2018-06-29 18:28:58', '2018-06-30 00:28:58', 'Tuxpan de Rodriguez Cano, Veracruz, México. Latitude Lenght 20°57′31″ North 97°22′51″ West. Altitude: 10 m s. n. m.', 'Tuxpan', '', 'inherit', 'closed', 'closed', '', '308-revision-v1', '', '', '2018-06-29 18:28:58', '2018-06-30 00:28:58', '', 308, 'http://oceamar.gomserver.net/2018/06/29/308-revision-v1/', 0, 'revision', '', 0),
(310, 1, '2018-06-29 18:29:54', '2018-06-30 00:29:54', '<strong>Coatzacoalcos Veracruz, México.</strong> Latitude Lenght 18°08′09″ North 94°27′48″ West. Altitude: 10 m s. n. m.', 'Coatzacoalcos', '', 'publish', 'open', 'open', '', 'coatzacoalcos-2', '', '', '2018-06-29 18:44:07', '2018-06-30 00:44:07', '', 0, 'http://oceamar.gomserver.net/?p=310', 0, 'post', '', 0),
(311, 1, '2018-06-29 18:29:54', '2018-06-30 00:29:54', 'Coatzacoalcos Veracruz, México. Latitude Lenght 18°08′09″ North 94°27′48″ West. Altitude: 10 m s. n. m.', 'Coatzacoalcos', '', 'inherit', 'closed', 'closed', '', '310-revision-v1', '', '', '2018-06-29 18:29:54', '2018-06-30 00:29:54', '', 310, 'http://oceamar.gomserver.net/2018/06/29/310-revision-v1/', 0, 'revision', '', 0),
(312, 1, '2018-06-29 18:31:30', '2018-06-30 00:31:30', '<strong>Dos Bocas Tabasco, México.</strong> Latitude Lenght 18°26′05″ North 93°12′06″ West. Altitude: 1 m s. n. m.', 'Dos Bocas', '', 'publish', 'open', 'open', '', 'dos-bocas-2', '', '', '2018-06-29 18:44:13', '2018-06-30 00:44:13', '', 0, 'http://oceamar.gomserver.net/?p=312', 0, 'post', '', 0),
(313, 1, '2018-06-29 18:31:30', '2018-06-30 00:31:30', 'Dos Bocas Tabasco, México. Latitude Lenght 18°26′05″ North 93°12′06″ West. Altitude: 1 m s. n. m.', 'Dos Bocas', '', 'inherit', 'closed', 'closed', '', '312-revision-v1', '', '', '2018-06-29 18:31:30', '2018-06-30 00:31:30', '', 312, 'http://oceamar.gomserver.net/2018/06/29/312-revision-v1/', 0, 'revision', '', 0),
(314, 1, '2018-06-29 18:32:44', '2018-06-30 00:32:44', '<strong>Frontera Tabasco, México.</strong> Latitude Lenght 18°32′01″ North 92°38′49″ West. Altitude 1 m s. n. m.', 'Frontera', '', 'publish', 'open', 'open', '', 'frontera-2', '', '', '2018-06-29 18:44:18', '2018-06-30 00:44:18', '', 0, 'http://oceamar.gomserver.net/?p=314', 0, 'post', '', 0),
(315, 1, '2018-06-29 18:32:44', '2018-06-30 00:32:44', 'Frontera Tabasco, México. Latitude Lenght 18°32′01″ North 92°38′49″ West. Altitude 1 m s. n. m.', 'Frontera', '', 'inherit', 'closed', 'closed', '', '314-revision-v1', '', '', '2018-06-29 18:32:44', '2018-06-30 00:32:44', '', 314, 'http://oceamar.gomserver.net/2018/06/29/314-revision-v1/', 0, 'revision', '', 0),
(316, 1, '2018-06-29 18:33:48', '2018-06-30 00:33:48', '<strong>Altamira Tamaulipas, México</strong>. Latitude Lenght 22°23′45″ North 97° 56° 13° West. Altitude 10 m s. n. m.', 'Altamira', '', 'inherit', 'closed', 'closed', '', '304-revision-v1', '', '', '2018-06-29 18:33:48', '2018-06-30 00:33:48', '', 304, 'http://oceamar.gomserver.net/2018/06/29/304-revision-v1/', 0, 'revision', '', 0),
(317, 1, '2018-06-29 18:34:03', '2018-06-30 00:34:03', '<strong>Tampico Tamaulipas, México.</strong> Latitude Lenght 22°15′19″ North 97°52′07″ West. Altitude: 30 m s. n. m.', 'Tampico', '', 'inherit', 'closed', 'closed', '', '306-revision-v1', '', '', '2018-06-29 18:34:03', '2018-06-30 00:34:03', '', 306, 'http://oceamar.gomserver.net/2018/06/29/306-revision-v1/', 0, 'revision', '', 0),
(318, 1, '2018-06-29 18:34:19', '2018-06-30 00:34:19', '<strong>Tuxpan de Rodriguez Cano, Veracruz, México</strong>. Latitude Lenght 20°57′31″ North 97°22′51″ West. Altitude: 10 m s. n. m.', 'Tuxpan', '', 'inherit', 'closed', 'closed', '', '308-revision-v1', '', '', '2018-06-29 18:34:19', '2018-06-30 00:34:19', '', 308, 'http://oceamar.gomserver.net/2018/06/29/308-revision-v1/', 0, 'revision', '', 0),
(319, 1, '2018-06-29 18:35:19', '2018-06-30 00:35:19', '<strong>Ciudad Del Carmen Campeche, México.</strong> Latitude Lenght 18°38\'36″ North 91°49\'51″ West. Altitude: 2 m s. n. m.', 'Carmen', '', 'publish', 'open', 'open', '', 'carmen-2', '', '', '2018-06-29 18:35:19', '2018-06-30 00:35:19', '', 0, 'http://oceamar.gomserver.net/?p=319', 0, 'post', '', 0),
(320, 1, '2018-06-29 18:35:19', '2018-06-30 00:35:19', '<strong>Ciudad Del Carmen Campeche, México.</strong> Latitude Lenght 18°38\'36″ North 91°49\'51″ West. Altitude: 2 m s. n. m.', 'Carmen', '', 'inherit', 'closed', 'closed', '', '319-revision-v1', '', '', '2018-06-29 18:35:19', '2018-06-30 00:35:19', '', 319, 'http://oceamar.gomserver.net/2018/06/29/319-revision-v1/', 0, 'revision', '', 0),
(321, 1, '2018-06-29 18:36:13', '2018-06-30 00:36:13', '<strong>Seybaplaya Campeche, México.</strong> Latitude Lenght 19°38′22″ North 90°41′18″ West. Altitude 4 m s. n. m.', 'Seybaplaya', '', 'publish', 'open', 'open', '', 'seybaplaya-2', '', '', '2018-06-29 18:36:13', '2018-06-30 00:36:13', '', 0, 'http://oceamar.gomserver.net/?p=321', 0, 'post', '', 0),
(322, 1, '2018-06-29 18:36:13', '2018-06-30 00:36:13', '<strong>Seybaplaya Campeche, México.</strong> Latitude Lenght 19°38′22″ North 90°41′18″ West. Altitude 4 m s. n. m.', 'Seybaplaya', '', 'inherit', 'closed', 'closed', '', '321-revision-v1', '', '', '2018-06-29 18:36:13', '2018-06-30 00:36:13', '', 321, 'http://oceamar.gomserver.net/2018/06/29/321-revision-v1/', 0, 'revision', '', 0),
(323, 1, '2018-06-29 18:37:01', '2018-06-30 00:37:01', '<strong>Progreso Yucatán, México.</strong> Latitude Lenght 21°16′58″ North 89°39′49″ West. Altitude: 0 m s. n. m.', 'Progreso', '', 'publish', 'open', 'open', '', 'progreso-3', '', '', '2018-06-29 18:37:01', '2018-06-30 00:37:01', '', 0, 'http://oceamar.gomserver.net/?p=323', 0, 'post', '', 0),
(324, 1, '2018-06-29 18:37:01', '2018-06-30 00:37:01', '<strong>Progreso Yucatán, México.</strong> Latitude Lenght 21°16′58″ North 89°39′49″ West. Altitude: 0 m s. n. m.', 'Progreso', '', 'inherit', 'closed', 'closed', '', '323-revision-v1', '', '', '2018-06-29 18:37:01', '2018-06-30 00:37:01', '', 323, 'http://oceamar.gomserver.net/2018/06/29/323-revision-v1/', 0, 'revision', '', 0),
(325, 1, '2018-06-29 18:38:56', '2018-06-30 00:38:56', '<strong>Coatzacoalcos Veracruz, México.</strong> Latitude Lenght 18°08′09″ North 94°27′48″ West. Altitude: 10 m s. n. m.', 'Coatzacoalcos', '', 'inherit', 'closed', 'closed', '', '310-autosave-v1', '', '', '2018-06-29 18:38:56', '2018-06-30 00:38:56', '', 310, 'http://oceamar.gomserver.net/2018/06/29/310-autosave-v1/', 0, 'revision', '', 0),
(326, 1, '2018-06-29 18:44:07', '2018-06-30 00:44:07', '<strong>Coatzacoalcos Veracruz, México.</strong> Latitude Lenght 18°08′09″ North 94°27′48″ West. Altitude: 10 m s. n. m.', 'Coatzacoalcos', '', 'inherit', 'closed', 'closed', '', '310-revision-v1', '', '', '2018-06-29 18:44:07', '2018-06-30 00:44:07', '', 310, 'http://oceamar.gomserver.net/2018/06/29/310-revision-v1/', 0, 'revision', '', 0),
(327, 1, '2018-06-29 18:44:13', '2018-06-30 00:44:13', '<strong>Dos Bocas Tabasco, México.</strong> Latitude Lenght 18°26′05″ North 93°12′06″ West. Altitude: 1 m s. n. m.', 'Dos Bocas', '', 'inherit', 'closed', 'closed', '', '312-revision-v1', '', '', '2018-06-29 18:44:13', '2018-06-30 00:44:13', '', 312, 'http://oceamar.gomserver.net/2018/06/29/312-revision-v1/', 0, 'revision', '', 0),
(328, 1, '2018-06-29 18:44:18', '2018-06-30 00:44:18', '<strong>Frontera Tabasco, México.</strong> Latitude Lenght 18°32′01″ North 92°38′49″ West. Altitude 1 m s. n. m.', 'Frontera', '', 'inherit', 'closed', 'closed', '', '314-revision-v1', '', '', '2018-06-29 18:44:18', '2018-06-30 00:44:18', '', 314, 'http://oceamar.gomserver.net/2018/06/29/314-revision-v1/', 0, 'revision', '', 0),
(329, 1, '2018-06-29 18:47:57', '2018-06-30 00:47:57', 'At Oceamar, we are interested in facilitating the operations of our customers, therefore we are available 24/7.\r\n\r\n<strong>We operate in all ports of the Gulf of Mexico</strong> with highly qualified personnel to guarantee the quality and safety in each of the services we offer.', 'Contact', '', 'publish', 'open', 'open', '', 'contact', '', '', '2018-06-29 18:47:57', '2018-06-30 00:47:57', '', 0, 'http://oceamar.gomserver.net/?p=329', 0, 'post', '', 0),
(330, 1, '2018-06-29 18:47:57', '2018-06-30 00:47:57', 'At Oceamar, we are interested in facilitating the operations of our customers, therefore we are available 24/7.\r\n\r\n<strong>We operate in all ports of the Gulf of Mexico</strong> with highly qualified personnel to guarantee the quality and safety in each of the services we offer.', 'Contact', '', 'inherit', 'closed', 'closed', '', '329-revision-v1', '', '', '2018-06-29 18:47:57', '2018-06-30 00:47:57', '', 329, 'http://oceamar.gomserver.net/2018/06/29/329-revision-v1/', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ocmrwp_termmeta`
--

CREATE TABLE `ocmrwp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ocmrwp_terms`
--

CREATE TABLE `ocmrwp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Volcado de datos para la tabla `ocmrwp_terms`
--

INSERT INTO `ocmrwp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Sin categoría', 'sin-categoria', 0),
(2, 'Nosotros', 'nosotros', 0),
(3, 'Acerca', 'acerca', 0),
(4, 'Visión', 'vision', 0),
(5, 'Misión', 'mision', 0),
(6, 'Valores', 'valores', 0),
(8, 'Servicios', 'servicios', 0),
(10, 'Trámites', 'tramites', 0),
(9, 'Agenciamiento', 'agenciamiento', 0),
(11, 'Logística', 'logistica', 0),
(12, 'Importación y exportación', 'importacion-exportacion', 0),
(13, 'Personal', 'personal', 0),
(14, 'Shorebase', 'shorebase', 0),
(15, 'Servicios portuarios', 'servicios-portuarios', 0),
(16, 'Renta de equipos', 'renta-equipos', 0),
(17, 'Clientes', 'clientes', 0),
(18, 'Contacto', 'contacto', 0),
(19, 'Ubicaciones', 'ubicaciones', 0),
(20, 'Menu versiones', 'menu-versiones', 0),
(21, 'Versión portugués', 'version-portugues', 0),
(22, 'Versión español', 'version-espanol', 0),
(23, 'Puerto Coatzacoalcos', 'puerto-coatzacoalcos', 0),
(24, 'Puerto Tuxpan', 'puerto-tuxpan', 0),
(25, 'Puerto Tampico', 'puerto-tampico', 0),
(26, 'Puerto Altamira', 'puerto-altamira', 0),
(27, 'Puerto Dos Bocas', 'puerto-dos-bocas', 0),
(28, 'Puerto Frontera', 'puerto-frontera', 0),
(29, 'Puerto Carmen', 'puerto-carmen', 0),
(30, 'Puerto Seybaplaya', 'puerto-seybaplaya', 0),
(31, 'Puerto Progreso', 'puerto-progreso', 0),
(32, 'Versión ingles', 'version-ingles', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ocmrwp_term_relationships`
--

CREATE TABLE `ocmrwp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Volcado de datos para la tabla `ocmrwp_term_relationships`
--

INSERT INTO `ocmrwp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(10, 2, 0),
(5, 3, 0),
(24, 6, 0),
(16, 4, 0),
(18, 5, 0),
(30, 6, 0),
(26, 6, 0),
(28, 6, 0),
(32, 6, 0),
(34, 8, 0),
(39, 9, 0),
(51, 13, 0),
(45, 10, 0),
(47, 11, 0),
(49, 12, 0),
(53, 14, 0),
(55, 15, 0),
(57, 16, 0),
(93, 17, 0),
(91, 17, 0),
(95, 17, 0),
(97, 17, 0),
(99, 17, 0),
(101, 17, 0),
(103, 17, 0),
(105, 17, 0),
(107, 17, 0),
(109, 17, 0),
(111, 17, 0),
(113, 17, 0),
(115, 17, 0),
(142, 20, 0),
(117, 18, 0),
(123, 19, 0),
(125, 19, 0),
(127, 19, 0),
(129, 19, 0),
(133, 19, 0),
(141, 20, 0),
(16, 22, 0),
(157, 21, 0),
(157, 5, 0),
(159, 21, 0),
(159, 4, 0),
(18, 22, 0),
(45, 22, 0),
(30, 22, 0),
(127, 22, 0),
(53, 22, 0),
(55, 22, 0),
(34, 22, 0),
(109, 22, 0),
(115, 22, 0),
(57, 22, 0),
(129, 22, 0),
(125, 22, 0),
(93, 22, 0),
(51, 22, 0),
(107, 22, 0),
(10, 22, 0),
(111, 22, 0),
(47, 22, 0),
(28, 22, 0),
(26, 22, 0),
(49, 22, 0),
(123, 22, 0),
(113, 22, 0),
(99, 22, 0),
(101, 22, 0),
(103, 22, 0),
(117, 22, 0),
(32, 22, 0),
(24, 22, 0),
(133, 22, 0),
(91, 22, 0),
(95, 22, 0),
(97, 22, 0),
(39, 22, 0),
(5, 22, 0),
(105, 22, 0),
(162, 22, 0),
(162, 23, 0),
(175, 24, 0),
(175, 22, 0),
(179, 22, 0),
(184, 22, 0),
(182, 22, 0),
(182, 26, 0),
(179, 25, 0),
(184, 27, 0),
(186, 22, 0),
(186, 28, 0),
(188, 22, 0),
(188, 29, 0),
(190, 22, 0),
(190, 30, 0),
(192, 31, 0),
(192, 22, 0),
(194, 21, 0),
(194, 3, 0),
(198, 21, 0),
(196, 21, 0),
(196, 2, 0),
(198, 6, 0),
(200, 6, 0),
(200, 21, 0),
(202, 21, 0),
(202, 6, 0),
(204, 21, 0),
(204, 6, 0),
(206, 21, 0),
(206, 6, 0),
(208, 21, 0),
(208, 8, 0),
(210, 21, 0),
(210, 9, 0),
(212, 21, 0),
(212, 10, 0),
(225, 21, 0),
(225, 12, 0),
(227, 21, 0),
(227, 11, 0),
(229, 21, 0),
(229, 13, 0),
(231, 21, 0),
(231, 14, 0),
(233, 21, 0),
(233, 15, 0),
(235, 21, 0),
(235, 16, 0),
(237, 21, 0),
(237, 17, 0),
(239, 17, 0),
(239, 21, 0),
(241, 17, 0),
(241, 21, 0),
(243, 21, 0),
(243, 17, 0),
(245, 17, 0),
(245, 21, 0),
(247, 17, 0),
(247, 21, 0),
(249, 21, 0),
(249, 17, 0),
(251, 21, 0),
(251, 17, 0),
(253, 17, 0),
(253, 21, 0),
(255, 17, 0),
(255, 21, 0),
(257, 21, 0),
(257, 17, 0),
(259, 21, 0),
(259, 17, 0),
(261, 17, 0),
(261, 21, 0),
(263, 18, 0),
(263, 21, 0),
(266, 3, 0),
(266, 32, 0),
(268, 32, 0),
(268, 2, 0),
(270, 32, 0),
(270, 5, 0),
(272, 32, 0),
(272, 4, 0),
(274, 6, 0),
(274, 32, 0),
(276, 32, 0),
(276, 6, 0),
(278, 32, 0),
(278, 6, 0),
(280, 32, 0),
(280, 6, 0),
(282, 32, 0),
(282, 6, 0),
(284, 32, 0),
(284, 8, 0),
(286, 32, 0),
(286, 9, 0),
(289, 10, 0),
(289, 32, 0),
(292, 32, 0),
(292, 11, 0),
(294, 32, 0),
(294, 12, 0),
(296, 32, 0),
(296, 13, 0),
(298, 32, 0),
(298, 14, 0),
(300, 32, 0),
(300, 15, 0),
(302, 32, 0),
(302, 16, 0),
(304, 32, 0),
(304, 26, 0),
(306, 32, 0),
(306, 25, 0),
(308, 24, 0),
(308, 32, 0),
(310, 32, 0),
(310, 23, 0),
(312, 32, 0),
(312, 27, 0),
(314, 28, 0),
(314, 32, 0),
(319, 32, 0),
(319, 29, 0),
(321, 32, 0),
(321, 30, 0),
(323, 31, 0),
(323, 32, 0),
(329, 32, 0),
(329, 18, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ocmrwp_term_taxonomy`
--

CREATE TABLE `ocmrwp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Volcado de datos para la tabla `ocmrwp_term_taxonomy`
--

INSERT INTO `ocmrwp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 0),
(2, 2, 'category', '', 0, 3),
(3, 3, 'category', '', 0, 3),
(4, 4, 'category', '', 0, 3),
(5, 5, 'category', '', 0, 3),
(6, 6, 'category', '', 0, 15),
(10, 10, 'category', '', 0, 3),
(8, 8, 'category', '', 0, 3),
(9, 9, 'category', '', 0, 3),
(11, 11, 'category', '', 0, 3),
(12, 12, 'category', '', 0, 3),
(13, 13, 'category', '', 0, 3),
(14, 14, 'category', '', 0, 3),
(15, 15, 'category', '', 0, 3),
(16, 16, 'category', '', 0, 3),
(17, 17, 'category', '', 0, 26),
(18, 18, 'category', '', 0, 3),
(19, 19, 'category', '', 0, 5),
(20, 20, 'nav_menu', '', 0, 2),
(21, 21, 'post_tag', '', 0, 32),
(22, 22, 'post_tag', '', 0, 46),
(23, 23, 'category', '', 0, 2),
(24, 24, 'category', '', 0, 2),
(25, 25, 'category', '', 0, 2),
(26, 26, 'category', '', 0, 2),
(27, 27, 'category', '', 0, 2),
(28, 28, 'category', '', 0, 2),
(29, 29, 'category', '', 0, 2),
(30, 30, 'category', '', 0, 2),
(31, 31, 'category', '', 0, 2),
(32, 32, 'post_tag', '', 0, 28);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ocmrwp_usermeta`
--

CREATE TABLE `ocmrwp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Volcado de datos para la tabla `ocmrwp_usermeta`
--

INSERT INTO `ocmrwp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', '0ceamar_4dmin'),
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
(12, 1, 'ocmrwp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'ocmrwp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', 'wp496_privacy'),
(15, 1, 'show_welcome_panel', '1'),
(17, 1, 'ocmrwp_dashboard_quick_press_last_post_id', '331'),
(18, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:12:\"189.128.81.0\";}'),
(19, 1, 'ocmrwp_user-settings', 'libraryContent=browse&editor=tinymce'),
(20, 1, 'ocmrwp_user-settings-time', '1530315044'),
(21, 1, 'meta-box-order_post', 'a:3:{s:4:\"side\";s:51:\"submitdiv,categorydiv,tagsdiv-post_tag,postimagediv\";s:6:\"normal\";s:71:\"postexcerpt,trackbacksdiv,postcustom,commentstatusdiv,slugdiv,authordiv\";s:8:\"advanced\";s:0:\"\";}'),
(22, 1, 'screen_layout_post', '2'),
(23, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(24, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:\"add-post_tag\";}'),
(25, 1, 'session_tokens', 'a:1:{s:64:\"626dff98767d5dc83be4703fc7be2d1258d6c588edd641694bc0b992ba874570\";a:4:{s:10:\"expiration\";i:1534956546;s:2:\"ip\";s:14:\"189.128.81.138\";s:2:\"ua\";s:121:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36\";s:5:\"login\";i:1534783746;}}');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ocmrwp_users`
--

CREATE TABLE `ocmrwp_users` (
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
-- Volcado de datos para la tabla `ocmrwp_users`
--

INSERT INTO `ocmrwp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, '0ceamar_4dmin', '$P$B29w1KEUve38/WH/038r07SRzSAGXQ/', '0ceamar_4dmin', 'apemontero@gmail.com', '', '2018-06-26 20:42:30', '', 0, '0ceamar_4dmin');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `ocmrwp_commentmeta`
--
ALTER TABLE `ocmrwp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indices de la tabla `ocmrwp_comments`
--
ALTER TABLE `ocmrwp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indices de la tabla `ocmrwp_links`
--
ALTER TABLE `ocmrwp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indices de la tabla `ocmrwp_options`
--
ALTER TABLE `ocmrwp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Indices de la tabla `ocmrwp_postmeta`
--
ALTER TABLE `ocmrwp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indices de la tabla `ocmrwp_posts`
--
ALTER TABLE `ocmrwp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indices de la tabla `ocmrwp_termmeta`
--
ALTER TABLE `ocmrwp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indices de la tabla `ocmrwp_terms`
--
ALTER TABLE `ocmrwp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indices de la tabla `ocmrwp_term_relationships`
--
ALTER TABLE `ocmrwp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indices de la tabla `ocmrwp_term_taxonomy`
--
ALTER TABLE `ocmrwp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indices de la tabla `ocmrwp_usermeta`
--
ALTER TABLE `ocmrwp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indices de la tabla `ocmrwp_users`
--
ALTER TABLE `ocmrwp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `ocmrwp_commentmeta`
--
ALTER TABLE `ocmrwp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `ocmrwp_comments`
--
ALTER TABLE `ocmrwp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `ocmrwp_links`
--
ALTER TABLE `ocmrwp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `ocmrwp_options`
--
ALTER TABLE `ocmrwp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1324;

--
-- AUTO_INCREMENT de la tabla `ocmrwp_postmeta`
--
ALTER TABLE `ocmrwp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=891;

--
-- AUTO_INCREMENT de la tabla `ocmrwp_posts`
--
ALTER TABLE `ocmrwp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=331;

--
-- AUTO_INCREMENT de la tabla `ocmrwp_termmeta`
--
ALTER TABLE `ocmrwp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `ocmrwp_terms`
--
ALTER TABLE `ocmrwp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT de la tabla `ocmrwp_term_taxonomy`
--
ALTER TABLE `ocmrwp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT de la tabla `ocmrwp_usermeta`
--
ALTER TABLE `ocmrwp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT de la tabla `ocmrwp_users`
--
ALTER TABLE `ocmrwp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
